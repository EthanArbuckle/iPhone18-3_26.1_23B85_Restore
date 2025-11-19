uint64_t sub_1A335D910(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3292050;

  return sub_1A335BC6C(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1A335DAD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A335DB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1A335DB78(uint64_t a1)
{
  v4 = *(type metadata accessor for VisualIdentity(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1A3292C58;

  return sub_1A32D5A14(a1, v7, v8, v1 + v5, v9, v10);
}

void sub_1A335DCA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__contact);
  *(v1 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__contact) = v2;
  v4 = v2;
}

uint64_t sub_1A335DD38(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1A3292C58;

  return sub_1A3358804(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1A335DE28(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A335DED4(unint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = HIDWORD(a1);
  *a5 = a4;
  v9 = a1 & 1;
  *(a5 + 8) = a1 & 1;
  *(a5 + 12) = HIDWORD(a1);
  v10 = a2 & 1;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  v11 = qword_1EB0C2300;
  v12 = a4;
  v17 = a3;
  v13 = v12;
  if (v11 != -1)
  {
    swift_once();
  }

  v18 = xmmword_1EB0ED408;
  v19 = *&qword_1EB0ED418;
  v20 = xmmword_1EB0ED428;
  v14 = type metadata accessor for LazyPosterSnapshot(0);
  v15 = swift_allocObject();
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 48) = 0;
  sub_1A34C99D0();
  v16 = swift_allocObject();
  *(v16 + 40) = v18;
  *(v16 + 16) = v9;
  *(v16 + 20) = v8;
  *(v16 + 24) = v10;
  *(v16 + 32) = v17;
  *(v16 + 56) = v19;
  *(v16 + 72) = v20;
  *(v16 + 88) = a4;
  *(v15 + 16) = &unk_1A34E95C0;
  *(v15 + 24) = v16;
  *(a5 + 56) = v14;
  *(a5 + 64) = &off_1F161E320;

  *(a5 + 32) = v15;
}

uint64_t sub_1A335E050@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 12);
  __swift_project_boxed_opaque_existential_1((v1 + 32), v6);
  v9 = *(v7 + 8);
  v10 = v5;
  result = v9(v6, v7);
  *a1 = v3 | (v8 << 32);
  a1[1] = v4;
  a1[2] = v10;
  a1[3] = result;
  a1[4] = v12;
  a1[12] = 0x1800000000000000;
  return result;
}

uint64_t sub_1A335E0F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A335E180;

  return sub_1A335E27C();
}

uint64_t sub_1A335E180(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1A335E29C()
{
  v1 = v0[14];
  v2 = v1[7];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (v4)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1A33606A4;
    *(v8 + 24) = v7;
    v0[12] = sub_1A33606D0;
    v0[13] = v8;
    v0[8] = MEMORY[0x1E69E9820];
    v0[9] = 1107296256;
    v0[10] = sub_1A343A864;
    v0[11] = &block_descriptor_9;
    v9 = _Block_copy(v0 + 8);
    v10 = v5;
    sub_1A34C9010();

    v11 = [v6 imageWithActions_];

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }

    else
    {
      v0[18] = v7;
      v0[19] = v11;
      v0[17] = sub_1A33606A4;
      v13 = v11;
      v14 = swift_task_alloc();
      v0[20] = v14;
      *v14 = v0;
      v14[1] = sub_1A335E7D0;

      return sub_1A33C59DC(v13);
    }
  }

  else
  {
    v15 = v0[14];
    v16 = *(v15 + 8);
    v17 = *(v15 + 16);
    v18 = *(v15 + 24);
    v19 = *(v15 + 12);
    *(v0 + 1) = xmmword_1A34E9520;
    v0[4] = 0;
    *(v0 + 40) = 0;
    *(v0 + 3) = vdupq_n_s64(1uLL);
    v20 = swift_task_alloc();
    v0[15] = v20;
    *v20 = v0;
    v20[1] = sub_1A335E5D0;

    return sub_1A32C16CC((v0 + 2), 0, v16 | (v19 << 32), v17, v18);
  }

  return result;
}

uint64_t sub_1A335E5D0(uint64_t a1)
{
  *(*v1 + 128) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A335E6D0, 0, 0);
}

uint64_t sub_1A335E6D0()
{
  v1 = v0[16];
  if (v1)
  {
    v0[18] = 0;
    v0[19] = v1;
    v0[17] = 0;
    v2 = v1;
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    v3[1] = sub_1A335E7D0;

    return sub_1A33C59DC(v2);
  }

  else
  {
    v5 = v0[1];
    v6 = MEMORY[0x1E69E7CC0];

    return v5(v6);
  }
}

uint64_t sub_1A335E7D0(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A335E8D0, 0, 0);
}

uint64_t sub_1A335E8D0()
{
  v1 = v0[19];
  v2 = v0[17];

  sub_1A32142B0(v2);
  v3 = v0[21];
  v4 = v0[1];

  return v4(v3);
}

BOOL sub_1A335E954(uint64_t a1)
{
  sub_1A31EE4BC(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAD00);
  if (swift_dynamicCast())
  {
    v10[0] = v4;
    v10[1] = v5;
    v10[2] = v6;
    v10[3] = v7;
    v11 = v8;
    v2 = sub_1A3443820(BYTE8(v4) | (HIDWORD(v4) << 32), v5, *(&v5 + 1), *(v1 + 8) | (*(v1 + 12) << 32), *(v1 + 16), *(v1 + 24));
    sub_1A335D9D0(v10);
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    v4 = 0u;
    v5 = 0u;
    sub_1A336063C(&v4);
    return 1;
  }

  return v2;
}

void sub_1A335EA28(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - v6;
  sub_1A344331C();
  if (v2)
  {

    return;
  }

  if (!v10)
  {

    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v42 = a1;
  v11 = HIDWORD(v8);
  v54 = v8;
  v41 = v8 & 1;
  v43 = v8 & 1;
  v44 = HIDWORD(v8);
  v12 = v9;
  v40 = v9 & 1;
  v45 = v9 & 1;
  v46 = v10;
  v13 = v10;
  v14 = a1;
  v15 = v13;
  v16 = [v14 watchWallpaperImageData];
  if (!v16)
  {
    goto LABEL_11;
  }

  v37 = v11;
  v38 = v14;
  v39 = v15;
  v17 = v16;
  v18 = sub_1A34C9690();
  v20 = v19;

  v21 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1A31EC1E0(v18, v20);
  v22 = sub_1A34C9680();
  v23 = [v21 initWithData_];

  sub_1A31EC234(v18, v20);
  if (!v23)
  {
    sub_1A31EC234(v18, v20);
    v15 = v39;
    v14 = v38;
LABEL_11:
    if (qword_1EB0C2300 != -1)
    {
      swift_once();
    }

    v53[0] = xmmword_1EB0ED408;
    v53[1] = *&qword_1EB0ED418;
    v53[2] = xmmword_1EB0ED428;
    v34 = type metadata accessor for AsyncPosterSnapshot(0);
    swift_allocObject();
    v35 = sub_1A32C6834(v54 & 0xFFFFFFFF00000001, v12 & 1, v15, v53, a1);

    v48 = v34;
    v49 = &off_1F161E330;
    v47 = v35;
    goto LABEL_14;
  }

  v54 = v20;
  v24 = qword_1EB0C2300;
  v25 = v23;
  if (v24 != -1)
  {
    swift_once();
  }

  v50 = xmmword_1EB0ED408;
  v51 = *&qword_1EB0ED418;
  v52 = xmmword_1EB0ED428;
  v26 = type metadata accessor for DynamicPosterSnapshot(0);
  v27 = swift_allocObject();
  sub_1A34C99D0();
  *(v27 + 16) = v25;
  *(v27 + 24) = 0;
  v28 = sub_1A34CD4A0();
  (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
  sub_1A34CD450();
  v38 = v38;
  v36 = v25;
  sub_1A34C9010();
  v29 = sub_1A34CD440();
  v30 = swift_allocObject();
  v31 = MEMORY[0x1E69E85E0];
  v32 = v51;
  *(v30 + 56) = v50;
  *(v30 + 16) = v29;
  *(v30 + 24) = v31;
  *(v30 + 32) = v41;
  *(v30 + 36) = v37;
  *(v30 + 40) = v40;
  *(v30 + 48) = v39;
  *(v30 + 72) = v32;
  *(v30 + 88) = v52;
  *(v30 + 104) = a1;
  *(v30 + 112) = v27;
  sub_1A32C0B38(0, 0, v7, &unk_1A34E9598, v30);
  v33 = v36;

  v48 = v26;
  v49 = &off_1F161E340;
  sub_1A31EC234(v18, v54);

  v47 = v27;
LABEL_14:
  sub_1A335DA24(&v42, a2);
  sub_1A335D9D0(&v42);
}

uint64_t sub_1A335EEB8(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A335EED8, 0, 0);
}

uint64_t sub_1A335EED8()
{
  v1 = *(v0 + 72);
  sub_1A3360270();
  v2 = *(v1 + 16);
  v3 = *(v1 + 8) | (*(v1 + 12) << 32);
  v4 = *(v1 + 24);
  sub_1A32F70B8(v3, v2, v4, 0, 0xF000000000000000, 0);
  *(v0 + 80) = v5;
  *(v0 + 16) = xmmword_1A34E9530;
  *(v0 + 32) = 0x4064A00000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = vdupq_n_s64(1uLL);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_1A335F044;

  return sub_1A32C16CC(v0 + 16, 0, v3, v2, v4);
}

uint64_t sub_1A335F044(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A335F144, 0, 0);
}

uint64_t sub_1A335F144()
{
  v1 = *(v0 + 96);
  [*(v0 + 64) setWallpaper_];
  if (v1 && (v2 = UIImageHEICRepresentation(v1)) != 0)
  {
    v3 = v2;
    v4 = sub_1A34C9690();
    v6 = v5;

    v7 = sub_1A34C9680();
    sub_1A31EC234(v4, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + 80);
  [*(v0 + 64) setWatchWallpaperImageData_];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1A335F234()
{
  v2 = v0[7];
  v3 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (v4)
  {
    v4 = sub_1A34CC5C0();
  }

  v5 = *(v1 + 8);

  return v5(v4);
}

uint64_t sub_1A335F2CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3292050;

  return sub_1A335EEB8(a1);
}

void sub_1A335F360(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v37 - v6;
  v41 = 0;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  v10 = a1;
  v11 = sub_1A3443CF8();
  if (v2)
  {

    return;
  }

  if (!v13)
  {

LABEL_11:
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v14 = HIDWORD(v11);
  LODWORD(v15) = v11 & 1;
  v42 = v11 & 1;
  v43 = HIDWORD(v11);
  LODWORD(v16) = v12 & 1;
  v44 = v12 & 1;
  v45 = v13;
  v55 = v13;
  v17 = [v9 watchPosterImageData];
  if (!v17)
  {
LABEL_13:
    if (qword_1EB0C2300 != -1)
    {
      swift_once();
    }

    v52 = xmmword_1EB0ED408;
    v53 = *&qword_1EB0ED418;
    v54 = xmmword_1EB0ED428;
    v33 = type metadata accessor for LazyPosterSnapshot(0);
    v34 = swift_allocObject();
    *(v34 + 32) = 0;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    sub_1A34C99D0();
    v35 = swift_allocObject();
    *(v35 + 40) = v52;
    v36 = v54;
    *(v35 + 56) = v53;
    *(v35 + 16) = v15;
    *(v35 + 20) = v14;
    *(v35 + 24) = v16;
    *(v35 + 32) = v55;
    *(v35 + 72) = v36;
    *(v35 + 88) = 0;
    *(v34 + 16) = &unk_1A34E95B0;
    *(v34 + 24) = v35;
    v47 = v33;
    v48 = &off_1F161E320;

    v46 = v34;
    goto LABEL_16;
  }

  v39 = v16;
  v40 = v15;
  v18 = v17;
  v16 = sub_1A34C9690();
  v15 = v19;

  v20 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1A31EC1E0(v16, v15);
  v21 = sub_1A34C9680();
  v22 = [v20 initWithData_];

  sub_1A31EC234(v16, v15);
  if (!v22)
  {
    sub_1A31EC234(v16, v15);
    LOBYTE(v15) = v40;
    LOBYTE(v16) = v39;
    goto LABEL_13;
  }

  v38 = v14;
  v23 = qword_1EB0C2300;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v49 = xmmword_1EB0ED408;
  v50 = *&qword_1EB0ED418;
  v51 = xmmword_1EB0ED428;
  v25 = type metadata accessor for DynamicPosterSnapshot(0);
  v26 = swift_allocObject();
  sub_1A34C99D0();
  *(v26 + 16) = v24;
  *(v26 + 24) = 0;
  v27 = sub_1A34CD4A0();
  (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
  sub_1A34CD450();
  v37 = v24;
  sub_1A34C9010();
  v28 = sub_1A34CD440();
  v29 = swift_allocObject();
  v30 = MEMORY[0x1E69E85E0];
  v31 = v50;
  *(v29 + 56) = v49;
  *(v29 + 16) = v28;
  *(v29 + 24) = v30;
  *(v29 + 32) = v40;
  *(v29 + 36) = v38;
  *(v29 + 40) = v39;
  *(v29 + 48) = v55;
  *(v29 + 72) = v31;
  *(v29 + 88) = v51;
  *(v29 + 104) = 0;
  *(v29 + 112) = v26;
  sub_1A32C0B38(0, 0, v7, &unk_1A34E95B8, v29);
  v32 = v37;

  v47 = v25;
  v48 = &off_1F161E340;

  sub_1A31EC234(v16, v15);
  v46 = v26;
LABEL_16:
  sub_1A335DA24(&v41, a2);
  sub_1A335D9D0(&v41);
}

uint64_t sub_1A335F824(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A335F844, 0, 0);
}

uint64_t sub_1A335F844()
{
  v1 = [objc_allocWithZone(CNUIPRSPosterConfigurationAttributes) initWithCNConfiguration_];
  v2 = [v1 extensionIdentifier];
  if (!v2)
  {

    goto LABEL_17;
  }

  v3 = v2;
  v4 = sub_1A34CD110();
  v6 = v5;

  if (!v6)
  {
LABEL_17:

LABEL_18:
    v11 = v0[13];
    *(v11 + 32) = 0;
    *v11 = 0u;
    *(v11 + 16) = 0u;
    v12 = v0[1];

    return v12();
  }

  if (v4 == 0xD00000000000002ELL && 0x80000001A350EED0 == v6)
  {

    goto LABEL_22;
  }

  v8 = sub_1A34CDE30();

  if (v8)
  {
LABEL_22:

    v14 = swift_task_alloc();
    v0[15] = v14;
    *v14 = v0;
    v14[1] = sub_1A335FC44;
    v15 = v0[14];

    return sub_1A33638F4((v0 + 2), v15);
  }

  if (v4 == 0xD000000000000028 && 0x80000001A350EF00 == v6)
  {
  }

  else
  {
    v10 = sub_1A34CDE30();

    if ((v10 & 1) == 0)
    {
      if (v4 == 0xD00000000000002CLL && 0x80000001A350EE80 == v6)
      {

LABEL_30:
        v19 = v0[13];
        v19[3] = &type metadata for MonogramAvatarSource;
        v19[4] = &off_1F1629A00;
        v20 = swift_allocObject();
        *v19 = v20;
        v21 = swift_task_alloc();
        v0[18] = v21;
        *v21 = v0;
        v21[1] = sub_1A335FFE8;
        v22 = v0[14];

        return sub_1A345EDE8(v20 + 16, v22);
      }

      v18 = sub_1A34CDE30();

      if (v18)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }
  }

  v16 = swift_task_alloc();
  v0[16] = v16;
  *v16 = v0;
  v16[1] = sub_1A335FE20;
  v17 = v0[14];

  return sub_1A341CA78(v17);
}

uint64_t sub_1A335FC44()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A335FD74, 0, 0);
  }
}

uint64_t sub_1A335FD74()
{
  v1 = *(v0 + 104);
  v1[3] = &type metadata for PhotosAvatarSource;
  v1[4] = &off_1F1622140;
  v2 = swift_allocObject();
  *v1 = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v3;
  v4 = *(v0 + 64);
  *(v2 + 48) = *(v0 + 48);
  *(v2 + 64) = v4;
  *(v2 + 80) = *(v0 + 80);
  *(v2 + 96) = *(v0 + 96);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1A335FE20(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 136) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A335FF6C, 0, 0);
  }
}

uint64_t sub_1A335FF6C()
{
  v1 = v0[17];
  v2 = v0[13];
  v2[3] = type metadata accessor for MemojiAvatarSource();
  v2[4] = &off_1F1627328;
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1A335FFE8()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1A3360114;
  }

  else
  {
    v2 = sub_1A33600FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A3360114()
{
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 104));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3360178(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 32) | (*(v1 + 36) << 32);
  v9 = *(v1 + 104);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1A3292C58;

  return sub_1A32C3814(a1, v4, v5, v8, v6, v7, v1 + 56, v9);
}

unint64_t sub_1A3360270()
{
  result = qword_1EB0C84C0;
  if (!qword_1EB0C84C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0C84C0);
  }

  return result;
}

uint64_t sub_1A33602BC()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16) | (*(v0 + 20) << 32);
  v5 = *(v0 + 88);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A33606E0;

  return sub_1A32C5864(v4, v2, v3, v0 + 40, v5);
}

uint64_t sub_1A3360384(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 32) | (*(v1 + 36) << 32);
  v9 = *(v1 + 104);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1A3292050;

  return sub_1A32C3814(a1, v4, v5, v8, v6, v7, v1 + 56, v9);
}

uint64_t sub_1A336047C()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16) | (*(v0 + 20) << 32);
  v5 = *(v0 + 88);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A32C6EA0;

  return sub_1A32C5864(v4, v2, v3, v0 + 40, v5);
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1A58F1010);
  }

  return result;
}

uint64_t sub_1A3360594(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A33605DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A336063C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C84B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A33606E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 152) = a3;
  *(v4 + 160) = a4;
  *(v4 + 192) = a2;
  *(v4 + 144) = a1;
  v5 = sub_1A34C9650();
  *(v4 + 168) = v5;
  *(v4 + 176) = *(v5 - 8);
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A33607D8, 0, 0);
}

uint64_t sub_1A33607D8()
{
  v1 = *(v0 + 160);
  v2 = [objc_allocWithZone(MEMORY[0x1E69C07E8]) initWithConfigurationType_];
  [v2 setOptions_];
  if (v1)
  {
    v3 = objc_allocWithZone(MEMORY[0x1E69C0808]);
    v4 = sub_1A34CD0E0();
    v5 = [v3 initWithAssetUUID_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1A34DAA30;
    *(v6 + 32) = v5;
    sub_1A31EC194(0, &qword_1EB0C84D8);
    v7 = v5;
    v8 = sub_1A34CD350();

    [v2 setMedia_];
  }

  v9 = [v2 userInfo];
  if (v9)
  {
    v10 = v9;
    sub_1A34CCF90();
  }

  else
  {
    sub_1A33EA2AC(MEMORY[0x1E69E7CC0]);
  }

  v12 = *(v0 + 176);
  v11 = *(v0 + 184);
  v13 = *(v0 + 168);
  v14 = *(v0 + 192);
  v15 = *(v0 + 144);
  *(v0 + 120) = 0xD000000000000025;
  *(v0 + 128) = 0x80000001A350EF60;
  sub_1A34CDA40();
  *(v0 + 80) = MEMORY[0x1E69E6370];
  *(v0 + 56) = v14;
  sub_1A31FA144((v0 + 56), (v0 + 88));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1A33F0D38((v0 + 88), v0 + 16, isUniquelyReferenced_nonNull_native);
  sub_1A32F7584(v0 + 16);
  v17 = sub_1A34CCF70();

  [v2 setUserInfo_];

  v18 = [*(v15 + 24) assetDirectory];
  sub_1A34C9620();

  v19 = sub_1A34C9600();
  (*(v12 + 8))(v11, v13);
  *(v0 + 136) = 0;
  LODWORD(v13) = [v2 saveToURL:v19 error:v0 + 136];

  v20 = *(v0 + 136);
  if (v13)
  {
    v21 = v20;
  }

  else
  {
    v23 = v20;
    sub_1A34C9580();

    swift_willThrow();
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1A3360B90(uint64_t a1)
{
  v4 = *v1;
  v6 = *(v1 + 8);
  v5 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3292C58;

  return sub_1A33606E4(a1, v4, v6, v5);
}

uint64_t sub_1A3360C40(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 200) = a2;
  *(v3 + 144) = a1;
  *(v3 + 152) = a3;
  v4 = sub_1A34C9650();
  *(v3 + 160) = v4;
  *(v3 + 168) = *(v4 - 8);
  *(v3 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A3360D04, 0, 0);
}

uint64_t sub_1A3360D04()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 200);
  v6 = [*(*(v0 + 144) + 24) assetDirectory];
  sub_1A34C9620();

  v7 = sub_1A34C9600();
  *(v0 + 184) = v7;
  (*(v2 + 8))(v1, v4);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1A3360E8C;
  v8 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C84D0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1A3361084;
  *(v0 + 104) = &block_descriptor_10;
  *(v0 + 112) = v8;
  [v3 exportAsWallpaperToURL:v7 isMeContact:v5 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1A3360E8C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1A3361008;
  }

  else
  {
    v2 = sub_1A3360F9C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A3360F9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3361008()
{
  v1 = *(v0 + 184);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A3361084(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69B0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_1A3361130(uint64_t a1)
{
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3292050;

  return sub_1A3360C40(a1, v4, v5);
}

uint64_t sub_1A33611DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a2;
  v6[9] = a4;
  v6[7] = a1;
  v10 = swift_task_alloc();
  v6[10] = v10;
  *v10 = v6;
  v10[1] = sub_1A33612C0;

  return sub_1A3382E84(0xD00000000000002ELL, 0x80000001A350EED0, a3, a5, a6);
}

uint64_t sub_1A33612C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v5;
  v8 = *v5;
  v7[11] = a2;
  v7[12] = a3;
  v7[13] = a4;

  if (v4)
  {
    v9 = v8[1];

    return v9();
  }

  else
  {
    v7[14] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A3361414, 0, 0);
  }
}

uint64_t sub_1A3361414()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[8];
  v0[2] = v5;
  v0[3] = v1;
  v0[4] = v3;
  v0[5] = v4;
  v0[6] = v2;
  v6 = v5;

  v7 = v2;
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_1A3361508;

  return sub_1A3446BB4((v0 + 2));
}

uint64_t sub_1A3361508(uint64_t a1, char a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 104);
  v9 = *(*v4 + 64);
  *(*v4 + 128) = v3;

  if (v3)
  {

    v10 = sub_1A3361760;
  }

  else
  {
    *(v7 + 136) = a1;
    *(v7 + 144) = a3;
    *(v7 + 152) = a2 & 1;
    v10 = sub_1A33616CC;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1A33616CC()
{
  v1 = *(v0 + 104);
  sub_1A335DED4(*(v0 + 136) & 0xFFFFFFFF00000001, *(v0 + 152), *(v0 + 144), *(v0 + 64), *(v0 + 56));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A3361760()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A33617D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 248) = a4;
  *(v5 + 256) = a5;
  *(v5 + 97) = a3;
  *(v5 + 232) = a1;
  *(v5 + 240) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A33617FC, 0, 0);
}

uint64_t sub_1A33617FC()
{
  v28 = v0;
  sub_1A31EC194(0, &qword_1EB0C01B0);
  v1 = sub_1A3374D20();
  *(v0 + 264) = v1;
  v2 = *(v0 + 256);
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (v3 && (v5 = v1, v6 = sub_1A34CD0E0(), v7 = [v5 fetchAssetWithID_], *(v0 + 272) = v7, v6, v7))
  {
    v8 = v7;
    v9 = swift_task_alloc();
    *(v0 + 280) = v9;
    *v9 = v0;
    v9[1] = sub_1A3361D70;
    v10 = *(v0 + 97);

    return sub_1A3383328(0xD00000000000002ELL, 0x80000001A350EED0, v10, v8);
  }

  else
  {
    if (qword_1EB0C1248 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 256);
    v13 = sub_1A34CA250();
    __swift_project_value_buffer(v13, qword_1EB0ECF90);
    sub_1A336351C(v12, v0 + 104);
    v14 = sub_1A34CA230();
    v15 = sub_1A34CD640();
    sub_1A3363554(v12);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v16 = 136315138;
      if (v3)
      {
        *(v0 + 208) = v4;
        *(v0 + 216) = v3;

        v18 = sub_1A34CD170();
        v20 = v19;
      }

      else
      {
        v18 = 7104878;
        v20 = 0xE300000000000000;
      }

      v21 = sub_1A31EE23C(v18, v20, &v27);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1A31E6000, v14, v15, "Unable to fetch photos asset with ID: %s, falling back to creating new poster", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1A58F1010](v17, -1, -1);
      MEMORY[0x1A58F1010](v16, -1, -1);
    }

    v22 = swift_task_alloc();
    *(v0 + 328) = v22;
    *v22 = v0;
    v22[1] = sub_1A3361FE0;
    v23 = *(v0 + 240);
    v24 = *(v0 + 248);
    v25 = *(v0 + 97);
    v26 = *(v0 + 232);

    return sub_1A33611DC(v26, v23, v25, v24, v4, v3);
  }
}

uint64_t sub_1A3361D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v5;
  *(v7 + 288) = a2;
  *(v7 + 296) = a3;
  *(v7 + 304) = a4;
  *(v7 + 312) = v4;

  if (v4)
  {

    v8 = sub_1A3362570;
  }

  else
  {
    *(v7 + 320) = a1;
    v8 = sub_1A3361EA4;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1A3361EA4()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 240);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = sub_1A3444DEC(v2, v1);
  v7 = sub_1A34CD0E0();
  v8 = [v4 finalizedConfiguration:v6 forExtensionIdentifier:v7];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = sub_1A3444DEC(*(v0 + 296), *(v0 + 304));
  }

  v10 = sub_1A3444A44(v9, 0);
  v11 = *(v0 + 304);
  v13 = *(v0 + 264);
  v12 = *(v0 + 272);
  sub_1A335DED4(v10 & 0xFFFFFFFF00000001, v14 & 1, v15, v5, *(v0 + 232));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1A3361FE0()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1A33622D0;
  }

  else
  {
    v2 = sub_1A33620F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A33620F4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3362158()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_1A3362814;
  }

  else
  {
    v2 = sub_1A336226C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A336226C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A33622D0()
{
  v29 = v0;

  v1 = *(v0 + 336);
  *(v0 + 344) = v1;
  if (qword_1EB0C1248 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 256);
  v3 = sub_1A34CA250();
  __swift_project_value_buffer(v3, qword_1EB0ECF90);
  sub_1A336351C(v2, v0 + 16);
  v4 = v1;
  v5 = sub_1A34CA230();
  v6 = sub_1A34CD640();
  sub_1A3363554(v2);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 256);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315394;
    v10 = *(v7 + 24);
    if (v10)
    {
      *(v0 + 192) = *(*(v0 + 256) + 16);
      *(v0 + 200) = v10;

      v11 = sub_1A34CD170();
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    v14 = sub_1A31EE23C(v11, v13, &v28);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    *(v0 + 224) = v1;
    v15 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69B0);
    v16 = sub_1A34CD170();
    v18 = sub_1A31EE23C(v16, v17, &v28);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_1A31E6000, v5, v6, "Error creating photos poster from asset: %s error: %s, falling back to creating new poster", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58F1010](v9, -1, -1);
    MEMORY[0x1A58F1010](v8, -1, -1);
  }

  v19 = *(v0 + 256);
  v21 = *(v19 + 16);
  v20 = *(v19 + 24);
  v22 = swift_task_alloc();
  *(v0 + 352) = v22;
  *v22 = v0;
  v22[1] = sub_1A3362158;
  v23 = *(v0 + 240);
  v24 = *(v0 + 248);
  v25 = *(v0 + 97);
  v26 = *(v0 + 232);

  return sub_1A33611DC(v26, v23, v25, v24, v21, v20);
}

uint64_t sub_1A3362570()
{
  v30 = v0;
  v1 = *(v0 + 272);

  v2 = *(v0 + 312);
  *(v0 + 344) = v2;
  if (qword_1EB0C1248 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 256);
  v4 = sub_1A34CA250();
  __swift_project_value_buffer(v4, qword_1EB0ECF90);
  sub_1A336351C(v3, v0 + 16);
  v5 = v2;
  v6 = sub_1A34CA230();
  v7 = sub_1A34CD640();
  sub_1A3363554(v3);

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 256);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136315394;
    v11 = *(v8 + 24);
    if (v11)
    {
      *(v0 + 192) = *(*(v0 + 256) + 16);
      *(v0 + 200) = v11;

      v12 = sub_1A34CD170();
      v14 = v13;
    }

    else
    {
      v14 = 0xE300000000000000;
      v12 = 7104878;
    }

    v15 = sub_1A31EE23C(v12, v14, &v29);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;
    *(v0 + 224) = v2;
    v16 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69B0);
    v17 = sub_1A34CD170();
    v19 = sub_1A31EE23C(v17, v18, &v29);

    *(v9 + 14) = v19;
    _os_log_impl(&dword_1A31E6000, v6, v7, "Error creating photos poster from asset: %s error: %s, falling back to creating new poster", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58F1010](v10, -1, -1);
    MEMORY[0x1A58F1010](v9, -1, -1);
  }

  v20 = *(v0 + 256);
  v22 = *(v20 + 16);
  v21 = *(v20 + 24);
  v23 = swift_task_alloc();
  *(v0 + 352) = v23;
  *v23 = v0;
  v23[1] = sub_1A3362158;
  v24 = *(v0 + 240);
  v25 = *(v0 + 248);
  v26 = *(v0 + 97);
  v27 = *(v0 + 232);

  return sub_1A33611DC(v27, v24, v26, v25, v22, v21);
}

uint64_t sub_1A3362814()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3362878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a2;
  v4[9] = a4;
  v4[7] = a1;
  v6 = swift_task_alloc();
  v4[10] = v6;
  *v6 = v4;
  v6[1] = sub_1A336294C;

  return sub_1A3382E84(0xD00000000000002ELL, 0x80000001A350EED0, a3, 0, 0);
}

uint64_t sub_1A336294C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v5;
  v8 = *v5;
  v7[11] = a2;
  v7[12] = a3;
  v7[13] = a4;

  if (v4)
  {
    v9 = v8[1];

    return v9();
  }

  else
  {
    v7[14] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A3362AA0, 0, 0);
  }
}

uint64_t sub_1A3362AA0()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[8];
  v0[2] = v5;
  v0[3] = v1;
  v0[4] = v3;
  v0[5] = v4;
  v0[6] = v2;
  v6 = v5;

  v7 = v2;
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_1A3362B94;

  return sub_1A3446BB4((v0 + 2));
}

uint64_t sub_1A3362B94(uint64_t a1, char a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 104);
  v9 = *(*v4 + 64);
  *(*v4 + 128) = v3;

  if (v3)
  {

    v10 = sub_1A3363DE4;
  }

  else
  {
    *(v7 + 136) = a1;
    *(v7 + 144) = a3;
    *(v7 + 152) = a2 & 1;
    v10 = sub_1A3363DE0;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

void sub_1A3362D58()
{
  if ((*(v0 + 80) & 1) != 0 || (v2 = *(v0 + 64), v1 = *(v0 + 72), v4 = *(v0 + 48), v3 = *(v0 + 56), (v5 = [*v0 CGImage]) == 0))
  {
    v8 = *v0;
    v9 = *(v0 + 40);
    if (!v9)
    {
LABEL_15:

      *(v0 + 8) = v8;
      return;
    }
  }

  else
  {
    v6 = v5;
    v15.origin.x = v4;
    v15.origin.y = v3;
    v15.size.width = v2;
    v15.size.height = v1;
    v7 = CGImageCreateWithImageInRect(v5, v15);
    if (!v7)
    {
      v7 = v6;
    }

    v8 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

    v9 = *(v0 + 40);
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  v10 = *(v0 + 32);
  [v8 size];
  [v8 size];
  [v8 size];
  [v8 size];
  [v8 scale];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DAA10;
  *(inited + 32) = v10;
  *(inited + 40) = v9;

  v12 = sub_1A3398A04(inited, v8);
  swift_setDeallocating();
  sub_1A3363584(inited + 32);
  if (v12 >> 62)
  {
    if (!sub_1A34CD9B0())
    {
      goto LABEL_14;
    }
  }

  else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:

    goto LABEL_15;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1A58EF310](0, v12);
    goto LABEL_13;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 32);
LABEL_13:
    v14 = v13;

    v8 = v14;
    goto LABEL_14;
  }

  __break(1u);
}

__n128 sub_1A3362FA0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  result = *(v1 + 48);
  v4 = *(v1 + 64);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1A3362FB4(uint64_t a1)
{
  sub_1A31EE4BC(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAD00);
  if (!swift_dynamicCast())
  {
    return 1;
  }

  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  v2 = *(v1 + 24);
  if (v2)
  {
    if (!*(&v11 + 1) || (*(v1 + 16) != v6 || v2 != *(&v11 + 1)) && (sub_1A34CDE30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (*(&v11 + 1))
  {
LABEL_10:
    sub_1A3363554(&v5);
    return 1;
  }

  if (*v1 != v5)
  {
    goto LABEL_10;
  }

  if (*(v1 + 40))
  {
    if (!*(&v7 + 1) || *(v1 + 32) != v7 && (sub_1A34CDE30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (*(&v7 + 1))
  {
    goto LABEL_10;
  }

  v4 = (*(v1 + 80) & v9);
  if ((*(v1 + 80) & 1) == 0 && (v9 & 1) == 0)
  {
    v4 = CGRectEqualToRect(*(v1 + 48), v8);
  }

  sub_1A3363554(&v5);
  return v4 ^ 1u;
}

uint64_t sub_1A336310C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_1A34CC5C0();
  *a1 = result;
  a1[1] = 0;
  a1[4] = 0;
  a1[12] = 0x1000000000000000;
  return result;
}

uint64_t sub_1A3363148()
{
  v2 = *(v0 + 8);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A335E180;

  return sub_1A33C59DC(v2);
}

double sub_1A33631F4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A336336C(a1, v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1A3363254()
{
  v2 = *v0;
  v3 = *(v0 + 40);
  if (v3)
  {
    v4 = sub_1A3398E74(*(v0 + 32), v3, *v0);
    if (!v4)
    {
      v5 = v2;
      v6 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = v2;
  }

  v6 = v4;
LABEL_6:
  v7 = sub_1A34CC5C0();

  v8 = *(v1 + 8);

  return v8(v7);
}

uint64_t sub_1A33632F4(void *a1)
{
  if ((*(v1 + 80) & 1) == 0)
  {
    [a1 setCropRect_];
  }

  v3 = *(v2 + 8);

  return v3();
}

void sub_1A336336C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 imageData];
  if (!v4)
  {

LABEL_6:
    v22 = 0;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    goto LABEL_7;
  }

  v5 = v4;
  v6 = sub_1A34C9690();
  v8 = v7;

  v9 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1A31EC1E0(v6, v8);
  v10 = sub_1A34C9680();
  v11 = [v9 initWithData_];

  sub_1A31EC234(v6, v8);
  if (!v11)
  {

    sub_1A31EC234(v6, v8);
    goto LABEL_6;
  }

  [a1 cropRect];
  *&v24 = v11;
  *(&v24 + 1) = v11;
  v25 = 0u;
  v26 = 0u;
  *&v27 = v12;
  *(&v27 + 1) = v13;
  *&v28 = v14;
  *(&v28 + 1) = v15;
  v29 = 0;
  v16 = v11;
  sub_1A3362D58();

  sub_1A31EC234(v6, v8);
  v32 = 0u;
  v33 = v27;
  v34 = v28;
  v35 = 0;
  v30 = v24;
  v31 = 0u;
  v37 = 0;
  v36[3] = v27;
  v36[4] = v28;
  v36[0] = v24;
  memset(&v36[1], 0, 32);
  sub_1A336351C(&v30, &v23);
  sub_1A3363554(v36);
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v21 = v34;
  v22 = v35;
LABEL_7:
  *a2 = v17;
  *(a2 + 16) = v18;
  *(a2 + 32) = v19;
  *(a2 + 48) = v20;
  *(a2 + 64) = v21;
  *(a2 + 80) = v22;
}

uint64_t sub_1A33635D8(uint64_t a1)
{
  *(v1 + 408) = a1;
  v2 = swift_task_alloc();
  *(v1 + 416) = v2;
  *v2 = v1;
  v2[1] = sub_1A336368C;

  return sub_1A3446544(v1 + 280, 257);
}

uint64_t sub_1A336368C()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_1A33638DC;
  }

  else
  {
    v2 = sub_1A33637A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A33637A0()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 296);
  *(v0 + 344) = *(v0 + 280);
  *(v0 + 360) = v2;
  *(v0 + 385) = *(v0 + 321);
  *(v0 + 376) = *(v0 + 312);
  v3 = *(v0 + 344);
  *&v11 = v3;
  *(&v11 + 1) = v3;
  v12 = *(v0 + 352);
  v13 = *(v0 + 368);
  v14 = *(v0 + 384);
  v15 = *(v0 + 400);

  v4 = v3;
  sub_1A3362D58();
  sub_1A3363C94(v0 + 344);
  *(v0 + 136) = 0uLL;
  *(v0 + 152) = v13;
  *(v0 + 168) = v14;
  *(v0 + 184) = v15;
  *(v0 + 104) = v11;
  *(v0 + 120) = v12;
  *(v0 + 48) = 0uLL;
  *(v0 + 64) = v13;
  *(v0 + 80) = v14;
  *(v0 + 96) = v15;
  *(v0 + 16) = v11;
  *(v0 + 32) = v12;
  sub_1A336351C(v0 + 104, v0 + 192);
  sub_1A3363554(v0 + 16);
  v5 = *(v0 + 120);
  *v1 = *(v0 + 104);
  *(v1 + 16) = v5;
  v6 = *(v0 + 136);
  v7 = *(v0 + 152);
  v8 = *(v0 + 168);
  *(v1 + 80) = *(v0 + 184);
  *(v1 + 48) = v7;
  *(v1 + 64) = v8;
  *(v1 + 32) = v6;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1A33638F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 280) = a1;
  *(v2 + 288) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A3363914, 0, 0);
}

uint64_t sub_1A3363914()
{
  v1 = *(*(v0 + 288) + 24);
  v2 = objc_allocWithZone(CNUIPhotosPosterConfigurationReader);
  v3 = v1;
  v4 = [v2 initWithPosterConfiguration_];
  v5 = [v4 fullExtentPreviewImageData];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1A34C9690();
    v9 = v8;

    v10 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    sub_1A32F74C0(v7, v9);
    sub_1A31EC1E0(v7, v9);
    v11 = sub_1A34C9680();
    v12 = [v10 initWithData_];

    sub_1A31EC234(v7, v9);
    if (v12)
    {
      v13 = *(v0 + 280);
      *&v22 = v12;
      *(&v22 + 1) = v12;
      v14 = v12;
      sub_1A3362D58();
      sub_1A31EC234(v7, v9);
      sub_1A31EC234(v7, v9);
      *(v0 + 136) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 168) = 0u;
      *(v0 + 184) = 1;
      *(v0 + 104) = v22;
      *(v0 + 120) = 0u;
      *(v0 + 96) = 1;
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
      *(v0 + 80) = 0u;
      *(v0 + 16) = v22;
      *(v0 + 32) = 0u;
      sub_1A336351C(v0 + 104, v0 + 192);
      sub_1A3363554(v0 + 16);
      v15 = *(v0 + 120);
      *v13 = *(v0 + 104);
      *(v13 + 16) = v15;
      v16 = *(v0 + 136);
      v17 = *(v0 + 152);
      v18 = *(v0 + 168);
      *(v13 + 80) = *(v0 + 184);
      *(v13 + 48) = v17;
      *(v13 + 64) = v18;
      *(v13 + 32) = v16;
      v19 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_1A31EC234(v7, v9);
  }

  else
  {

    v7 = 0;
    v9 = 0xF000000000000000;
  }

  sub_1A3363B78();
  swift_allocError();
  *v20 = 0;
  swift_willThrow();
  sub_1A31EEE60(v7, v9);
  v19 = *(v0 + 8);
LABEL_7:

  return v19();
}

unint64_t sub_1A3363B78()
{
  result = qword_1EB0C84C8;
  if (!qword_1EB0C84C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C84C8);
  }

  return result;
}

uint64_t sub_1A3363BE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1A3363C2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A3363CF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1A3363D54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

BOOL sub_1A3363DE8(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v35 = a1[4];
  v36 = v3;
  v4 = a1[1];
  v32[0] = *a1;
  v32[1] = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v33 = a1[2];
  v34 = v5;
  v8 = a2[1];
  v38[0] = *a2;
  v38[1] = v8;
  v9 = a2[3];
  v10 = a2[5];
  v41 = a2[4];
  v42 = v10;
  v11 = a2[3];
  v12 = *a2;
  v13 = a2[1];
  v39 = a2[2];
  v40 = v11;
  v14 = a1[5];
  v29 = v35;
  v30 = v14;
  v25 = v7;
  v26 = v6;
  v27 = v33;
  v28 = v2;
  v15 = a2[5];
  v22 = v41;
  v23 = v15;
  v37 = *(a1 + 12);
  v43 = *(a2 + 12);
  v31 = *(a1 + 12);
  v24 = *(a2 + 12);
  v18 = v12;
  v19 = v13;
  v20 = v39;
  v21 = v9;
  sub_1A31FA9C4(v32, v46);
  sub_1A31FA9C4(v38, v46);
  v16 = _s14ContactsUICore12MonogramViewV6RecipeV2eeoiySbAE_AEtFZ_0(&v25, &v18);
  v44[4] = v22;
  v44[5] = v23;
  v45 = v24;
  v44[0] = v18;
  v44[1] = v19;
  v44[2] = v20;
  v44[3] = v21;
  sub_1A31FB84C(v44);
  v46[4] = v29;
  v46[5] = v30;
  v47 = v31;
  v46[0] = v25;
  v46[1] = v26;
  v46[2] = v27;
  v46[3] = v28;
  sub_1A31FB84C(v46);
  return v16;
}

uint64_t sub_1A3363F10(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC14ContactsUICore13MonogramLayer_spec];
  v3 = *&v1[OBJC_IVAR____TtC14ContactsUICore13MonogramLayer_spec + 80];
  v35 = *&v1[OBJC_IVAR____TtC14ContactsUICore13MonogramLayer_spec + 64];
  v36 = v3;
  v37 = *&v1[OBJC_IVAR____TtC14ContactsUICore13MonogramLayer_spec + 96];
  v4 = *&v1[OBJC_IVAR____TtC14ContactsUICore13MonogramLayer_spec + 16];
  v31 = *&v1[OBJC_IVAR____TtC14ContactsUICore13MonogramLayer_spec];
  v32 = v4;
  v5 = *&v1[OBJC_IVAR____TtC14ContactsUICore13MonogramLayer_spec + 48];
  v33 = *&v1[OBJC_IVAR____TtC14ContactsUICore13MonogramLayer_spec + 32];
  v34 = v5;
  v38[0] = v31;
  v38[1] = v4;
  v39 = v37;
  v38[2] = v33;
  v38[3] = v5;
  v38[4] = v35;
  v38[5] = v3;
  v6 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = v6;
  *(v2 + 12) = *(a1 + 96);
  v7 = *(a1 + 80);
  *(v2 + 4) = *(a1 + 64);
  *(v2 + 5) = v7;
  v8 = *(a1 + 48);
  *(v2 + 2) = *(a1 + 32);
  *(v2 + 3) = v8;
  sub_1A3364984(&v31, v48);
  sub_1A33649BC(v38);
  v9 = *(v2 + 3);
  v10 = *(v2 + 5);
  v43 = *(v2 + 4);
  v44 = v10;
  v11 = *(v2 + 1);
  v40[0] = *v2;
  v40[1] = v11;
  v12 = *(v2 + 3);
  v14 = *v2;
  v13 = *(v2 + 1);
  v41 = *(v2 + 2);
  v42 = v12;
  v15 = *(v2 + 5);
  v28 = v43;
  v29 = v15;
  v24 = v14;
  v25 = v13;
  v45 = *(v2 + 12);
  v30 = *(v2 + 12);
  v26 = v41;
  v27 = v9;
  v21 = v35;
  v22 = v36;
  v23 = v37;
  v17 = v31;
  v18 = v32;
  v19 = v33;
  v20 = v34;
  sub_1A3364984(&v31, v48);
  sub_1A3364984(v40, v48);
  LOBYTE(v2) = _s14ContactsUICore12MonogramViewV6RecipeV2eeoiySbAE_AEtFZ_0(&v24, &v17);
  v46[4] = v21;
  v46[5] = v22;
  v47 = v23;
  v46[0] = v17;
  v46[1] = v18;
  v46[2] = v19;
  v46[3] = v20;
  sub_1A31FB84C(v46);
  v48[4] = v28;
  v48[5] = v29;
  v49 = v30;
  v48[0] = v24;
  v48[1] = v25;
  v48[2] = v26;
  v48[3] = v27;
  sub_1A31FB84C(v48);
  if ((v2 & 1) == 0)
  {
    [v1 setNeedsDisplay];
  }

  return sub_1A33649BC(&v31);
}

id sub_1A336409C(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC14ContactsUICore13MonogramLayer_spec];
  v3 = *(a1 + 80);
  *(v2 + 4) = *(a1 + 64);
  *(v2 + 5) = v3;
  *(v2 + 12) = *(a1 + 96);
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = v4;
  v5 = *(a1 + 48);
  *(v2 + 2) = *(a1 + 32);
  *(v2 + 3) = v5;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for MonogramLayer();
  v6 = objc_msgSendSuper2(&v14, sel_init);
  v7 = [objc_opt_self() standardPreferences];
  v8 = sub_1A34CD0E0();
  v9 = [v7 userHasOptedInToPreference_];

  if (v9)
  {
    v10 = [objc_opt_self() orangeColor];
    v11 = [v10 CGColor];

    [v6 setBackgroundColor_];
  }

  v12 = v6;
  [v12 setOpaque_];
  [v12 setRendersAsynchronously_];
  [v12 setNeedsDisplayOnBoundsChange_];

  [v12 setNeedsDisplay];
  return v12;
}

uint64_t sub_1A3364228(void *a1)
{
  sub_1A31EE354(a1, v24);
  v3 = type metadata accessor for MonogramLayer();
  if (swift_dynamicCast())
  {
    v4 = v23;
    v6 = *&v23[OBJC_IVAR____TtC14ContactsUICore13MonogramLayer_spec + 16];
    v5 = *&v23[OBJC_IVAR____TtC14ContactsUICore13MonogramLayer_spec + 32];
    v21[0] = *&v23[OBJC_IVAR____TtC14ContactsUICore13MonogramLayer_spec];
    v21[1] = v6;
    v21[2] = v5;
    v8 = *&v23[OBJC_IVAR____TtC14ContactsUICore13MonogramLayer_spec + 64];
    v7 = *&v23[OBJC_IVAR____TtC14ContactsUICore13MonogramLayer_spec + 80];
    v9 = *&v23[OBJC_IVAR____TtC14ContactsUICore13MonogramLayer_spec + 48];
    v22 = *&v23[OBJC_IVAR____TtC14ContactsUICore13MonogramLayer_spec + 96];
    v21[4] = v8;
    v21[5] = v7;
    v21[3] = v9;
    memmove(&v1[OBJC_IVAR____TtC14ContactsUICore13MonogramLayer_spec], &v23[OBJC_IVAR____TtC14ContactsUICore13MonogramLayer_spec], 0x68uLL);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1A3364984(v21, v20);
    v10 = sub_1A34CDE10();
    v19.receiver = v1;
    v19.super_class = v3;
    v11 = objc_msgSendSuper2(&v19, sel_initWithLayer_, v10);
    swift_unknownObjectRelease();
    v12 = [objc_opt_self() standardPreferences];
    v13 = sub_1A34CD0E0();
    v14 = [v12 userHasOptedInToPreference_];

    if (v14)
    {
      v15 = [objc_opt_self() orangeColor];
      v16 = [v15 CGColor];

      [v11 setBackgroundColor_];
    }

    v17 = v11;
    [v17 setOpaque_];
    [v17 setRendersAsynchronously_];
    [v17 setNeedsDisplayOnBoundsChange_];

    [v17 setNeedsDisplay];
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v17;
  }

  else
  {
    result = sub_1A34CDC10();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A3364558(void *a1)
{
  v3 = sub_1A34CAB90();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A34CB0B0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = [objc_opt_self() standardPreferences];
  v9 = sub_1A34CD0E0();
  v10 = [v8 userHasOptedInToPreference_];

  if (v10)
  {
    [v1 setBackgroundColor_];
  }

  v11 = a1;
  sub_1A34CB0A0();
  sub_1A34CAB00();
  v12 = *&v1[OBJC_IVAR____TtC14ContactsUICore13MonogramLayer_spec + 40];
  v13 = *&v1[OBJC_IVAR____TtC14ContactsUICore13MonogramLayer_spec + 64];
  v24[0] = *&v1[OBJC_IVAR____TtC14ContactsUICore13MonogramLayer_spec + 48];
  v24[1] = v13;
  v25 = v1[OBJC_IVAR____TtC14ContactsUICore13MonogramLayer_spec + 80];
  sub_1A34C9010();
  sub_1A32ACBE8(v24, &v23);
  [v1 bounds];
  v17 = v16;
  v19 = v18;
  if (v15 >= v14)
  {
    v20 = v14;
  }

  else
  {
    v20 = v15;
  }

  v23.a = 1.0;
  v23.b = 0.0;
  v23.c = 0.0;
  v23.d = 1.0;
  v23.tx = 0.0;
  v23.ty = 0.0;
  CGAffineTransformScale(&v22, &v23, v20 / v12, v20 / v12);
  CGAffineTransformTranslate(&v23, &v22, v17, v19);
  sub_1A34CBCE0();
  sub_1A32ABEC0(v24);
  sub_1A34CC500();
  sub_1A34CAB80();

  sub_1A34CAB30();

  sub_1A32ABEC0(&v22);

  return (*(v4 + 8))(v6, v3);
}

id sub_1A33648AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MonogramLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A33649F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3364A40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A3364AC8()
{
  swift_getKeyPath();
  sub_1A34CBEE0();
}

uint64_t sub_1A3364B40()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 7);
  v5 = *(v0 + 8);
  v6 = *(v0 + 9);
  v7 = *(v0 + 80);
  v8 = *(v0 + 11);
  v9 = v0[1];
  v20 = *v0;
  v21 = v9;
  v22 = v1;
  v10 = objc_allocWithZone(type metadata accessor for PosterRenderingViewController());
  sub_1A3454F78(v2 | (v8 << 32), v3, v4, &v20);
  v12 = v11;
  *&v20 = v5;
  *(&v20 + 1) = v6;
  LOBYTE(v21) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBC50);
  sub_1A34CC930();
  v13 = v12 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_isReady;
  v14 = *(v12 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_isReady);
  v15 = *(v12 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_isReady + 8);
  *v13 = v17;
  *(v13 + 8) = v18;
  *(v13 + 16) = v19;
  sub_1A3366240(v14, v15);
  return v12;
}

__n128 sub_1A3364C2C(uint64_t a1)
{
  v18 = *(v1 + 16);
  v19 = *v1;
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = a1 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_configuration;
  v8 = *(a1 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_configuration);
  v9 = *(a1 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_configuration + 8);
  v10 = *(a1 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_configuration + 16);
  *v7 = v4;
  v11 = *(v1 + 44);
  v12 = *(v7 + 4);
  *(v7 + 4) = v11;
  *(v7 + 8) = v5;
  *(v7 + 16) = v6;
  if (sub_1A3443820(v8 | (v12 << 32), v9, v10, v4 | (v11 << 32), v5, v6))
  {
    sub_1A3456714();
    sub_1A3456864();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBC50);
  sub_1A34CC930();
  v13 = a1 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_isReady;
  v14 = *(a1 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_isReady);
  v15 = *(a1 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_isReady + 8);
  *v13 = v20;
  *(v13 + 8) = v21;
  *(v13 + 16) = v22;
  sub_1A3366240(v14, v15);
  v16 = a1 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_layoutPreferences;
  result = v19;
  *v16 = v19;
  *(v16 + 16) = v18;
  *(v16 + 32) = v3;
  return result;
}

uint64_t sub_1A3364D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A33661EC();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A3364DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A33661EC();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A3364E48()
{
  sub_1A33661EC();
  sub_1A34CB940();
  __break(1u);
}

uint64_t sub_1A3364E70()
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6CD8);
  MEMORY[0x1EEE9AC00](v56);
  v47 = &v46 - v1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C84E8);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v46 - v2;
  v3 = sub_1A34CC610();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C84F0);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v46 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C84F8);
  MEMORY[0x1EEE9AC00](v60);
  v7 = &v46 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8500);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v46 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8508);
  MEMORY[0x1EEE9AC00](v58);
  v10 = &v46 - v9;
  v11 = sub_1A34CB0B0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v0[3];
  v16 = v0[5];
  v17 = v0[6];
  *&v80[16] = v0[4];
  *&v80[32] = v16;
  v81 = v17;
  v18 = v0[1];
  v19 = v0[2];
  v77 = *v0;
  v78 = v18;
  v79 = v19;
  *v80 = v15;
  v83 = *v0;
  v84 = *(v0 + 8);
  v54 = v7;
  if (v84 != 1)
  {
    sub_1A34C9010();
    sub_1A34CD650();
    v31 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A3288FDC(&v83, &qword_1EB0C8510);
    (*(v12 + 8))(v14, v11);
    if (v71 != 1)
    {
      goto LABEL_3;
    }

LABEL_8:
    v68 = *&v80[8];
    v69 = *&v80[24];
    LOBYTE(v70[0]) = v80[40];
    *(v70 + 8) = v78;
    v82 = v81;
    v62 = v81;
    v32 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
    sub_1A34CC760();
    v62 = v68;
    v63 = v69;
    v64 = v70[0];
    *&v65 = *&v70[1];
    *(&v65 + 1) = v32;
    v66 = v71;
    v67 = v72;
    sub_1A3365E88();
    sub_1A34CC1F0();
    v73 = v64;
    v74 = v65;
    v75 = v66;
    v76 = v67;
    v71 = v62;
    v72 = v63;
    sub_1A3365F68(&v71);
    v33 = sub_1A34CCC80();
    v35 = v34;
    v36 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8520) + 36)];
    sub_1A336575C(&v77, v36);
    v37 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8530) + 36));
    *v37 = v33;
    v37[1] = v35;
    v38 = sub_1A34CCCF0();
    v62 = v82;
    sub_1A34CC740();
    v39 = v61;
    v40 = v59;
    v41 = &v10[*(v58 + 36)];
    *v41 = v38;
    v41[8] = v39;
    sub_1A328D790(v10, v40, &qword_1EB0C8508);
    swift_storeEnumTagMultiPayload();
    sub_1A3365C8C();
    sub_1A3365EDC();
    sub_1A34CB3E0();
    v42 = v10;
    v43 = &qword_1EB0C8508;
    return sub_1A3288FDC(v42, v43);
  }

  if (v83)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(&v79 + 1))
  {
    v20 = v80[0];
    v21 = *(&v79 + 1);
    sub_1A34CC5C0();
    v23 = v48;
    v22 = v49;
    v24 = v50;
    (*(v49 + 104))(v48, *MEMORY[0x1E6981630], v50);
    v25 = sub_1A34CC680();

    (*(v22 + 8))(v23, v24);
    v26 = 30.0;
    if (v20)
    {
      v26 = 0.0;
    }

    v71 = v25;
    LOWORD(v72) = 257;
    *(&v72 + 1) = v26;
    LOBYTE(v73) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8518);
    sub_1A3365C00();
    v27 = v51;
    sub_1A34CC1F0();

    sub_1A328D790(v27, v55, &qword_1EB0C84F0);
    swift_storeEnumTagMultiPayload();
    sub_1A3365B74();
    sub_1A32F637C();
    v28 = v54;
    sub_1A34CB3E0();

    v29 = v27;
    v30 = &qword_1EB0C84F0;
  }

  else
  {
    LOBYTE(v62) = 0;
    sub_1A34CC730();
    sub_1A32F60D0();
    v44 = v47;
    sub_1A34CC1F0();

    sub_1A328D790(v44, v55, &qword_1EB0C6CD8);
    swift_storeEnumTagMultiPayload();
    sub_1A3365B74();
    sub_1A32F637C();
    v28 = v54;
    sub_1A34CB3E0();
    v29 = v44;
    v30 = &qword_1EB0C6CD8;
  }

  sub_1A3288FDC(v29, v30);
  sub_1A328D790(v28, v59, &qword_1EB0C84F8);
  swift_storeEnumTagMultiPayload();
  sub_1A3365C8C();
  sub_1A3365EDC();
  sub_1A34CB3E0();
  v42 = v28;
  v43 = &qword_1EB0C84F8;
  return sub_1A3288FDC(v42, v43);
}

uint64_t sub_1A336575C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A34CC610();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C84F0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-v10];
  v20 = *(a1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC740();
  if (v24)
  {
    v12 = 1;
  }

  else
  {
    v13 = *(a1 + 40);
    v12 = 1;
    if (v13)
    {
      v19 = *(a1 + 48);
      v14 = v13;
      sub_1A34CC5C0();
      (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
      v15 = sub_1A34CC680();

      (*(v5 + 8))(v7, v4);
      v16 = 30.0;
      if (v19)
      {
        v16 = 0.0;
      }

      v20 = v15;
      v21 = 257;
      v22 = v16;
      v23 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8518);
      sub_1A3365C00();
      sub_1A34CC1F0();

      sub_1A3365F98(v11, a2);
      v12 = 0;
    }
  }

  return (*(v9 + 56))(a2, v12, 1, v8);
}

uint64_t sub_1A3365A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A33660D8();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A3365A84()
{
  sub_1A32B4C78();
  sub_1A34CB0E0();
  return v1;
}

double sub_1A3365AE4()
{
  sub_1A3365B20();
  sub_1A34CB0E0();
  return v1;
}

unint64_t sub_1A3365B20()
{
  result = qword_1EB0C0960;
  if (!qword_1EB0C0960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0960);
  }

  return result;
}

unint64_t sub_1A3365B74()
{
  result = qword_1EB0C0A78;
  if (!qword_1EB0C0A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C84F0);
    sub_1A3365C00();
    sub_1A32FD328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0A78);
  }

  return result;
}

unint64_t sub_1A3365C00()
{
  result = qword_1EB0C0B60;
  if (!qword_1EB0C0B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8518);
    sub_1A31F08D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0B60);
  }

  return result;
}

unint64_t sub_1A3365C8C()
{
  result = qword_1EB0C0AF0;
  if (!qword_1EB0C0AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8508);
    sub_1A3365D44();
    sub_1A3284D0C(&qword_1EB0C0930, &qword_1EB0C5F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0AF0);
  }

  return result;
}

unint64_t sub_1A3365D44()
{
  result = qword_1EB0C0C40;
  if (!qword_1EB0C0C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8520);
    sub_1A3365DFC();
    sub_1A3284D0C(&qword_1EB0C0978, &qword_1EB0C8530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0C40);
  }

  return result;
}

unint64_t sub_1A3365DFC()
{
  result = qword_1EB0C0F10;
  if (!qword_1EB0C0F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8528);
    sub_1A3365E88();
    sub_1A32FD328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0F10);
  }

  return result;
}

unint64_t sub_1A3365E88()
{
  result = qword_1EB0C23A8;
  if (!qword_1EB0C23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C23A8);
  }

  return result;
}

unint64_t sub_1A3365EDC()
{
  result = qword_1EB0C0890;
  if (!qword_1EB0C0890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C84F8);
    sub_1A3365B74();
    sub_1A32F637C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0890);
  }

  return result;
}

uint64_t sub_1A3365F98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C84F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A3366048()
{
  result = qword_1EB0C0898;
  if (!qword_1EB0C0898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8538);
    sub_1A3365C8C();
    sub_1A3365EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0898);
  }

  return result;
}

unint64_t sub_1A33660D8()
{
  result = qword_1EB0C8540;
  if (!qword_1EB0C8540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8540);
  }

  return result;
}

double sub_1A3366130()
{
  sub_1A3365B20();
  sub_1A34CB0E0();
  return v1;
}

uint64_t sub_1A3366170()
{
  swift_getKeyPath();
  sub_1A34CBEE0();
}

unint64_t sub_1A33661EC()
{
  result = qword_1EB0C23A0;
  if (!qword_1EB0C23A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C23A0);
  }

  return result;
}

uint64_t sub_1A3366240(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1A3366284(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_1A34CCAE0();
      v5 = sub_1A34CD3A0();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(v5 + v7, v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = v5 + v10 + v7;
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v12 = sub_1A34CCAE0();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

uint64_t sub_1A33663E0()
{
  v1 = sub_1A34CB0B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  sub_1A34C9010();
  if ((v6 & 1) == 0)
  {
    sub_1A34CD650();
    v7 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

double sub_1A3366520()
{
  v1 = sub_1A34CB0B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    return *(v0 + 16);
  }

  sub_1A34C9010();
  sub_1A34CD650();
  v7 = sub_1A34CBA30();
  sub_1A34CA210();

  sub_1A34CB0A0();
  swift_getAtKeyPath();
  sub_1A32141EC(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

uint64_t sub_1A336666C()
{
  v1 = sub_1A34CB0B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 32);
  if (*(v0 + 40) == 1)
  {
  }

  else
  {
    sub_1A34C9010();
    sub_1A34CD650();
    v6 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A336F738(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

uint64_t sub_1A33667BC@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(sub_1A336666C() + 16);

  if (v2 != 1)
  {
    goto LABEL_5;
  }

  v3 = sub_1A336666C();
  if (!*(v3 + 16))
  {

LABEL_5:
    v6 = sub_1A33663E0();
    swift_getKeyPath();
    sub_1A336F77C(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    sub_1A34C99A0();

    v4 = *(v6 + 40);

    goto LABEL_6;
  }

  v4 = *(v3 + 32);

LABEL_6:
  *a1 = v4;
  return result;
}

uint64_t sub_1A33668A0@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = sub_1A34CAD20();
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VisualIdentitySuggestionListItem(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8720);
  v9 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8728);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8730);
  MEMORY[0x1EEE9AC00](v27);
  v17 = &v25 - v16;
  sub_1A3370908(v1, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisualIdentitySuggestionListItem);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_1A3370970(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for VisualIdentitySuggestionListItem);
  v31 = v1;
  type metadata accessor for VisualIdentityPreview();
  sub_1A336F77C(&qword_1EB0C2268, type metadata accessor for VisualIdentityPreview);
  sub_1A34CC790();
  sub_1A34CAD10();
  sub_1A3284D0C(&unk_1EB0C0530, &qword_1EB0C8720);
  sub_1A336F77C(&qword_1EB0C0998, MEMORY[0x1E697C248]);
  v20 = v26;
  v21 = v28;
  sub_1A34CBEA0();
  (*(v29 + 8))(v5, v21);
  (*(v9 + 8))(v11, v20);
  v15[*(v13 + 44)] = 0;
  sub_1A33667BC(&v32);
  v22 = 1.0;
  if (v32 == 1)
  {
    v22 = sub_1A3366520();
  }

  sub_1A329D98C(v15, v17, &qword_1EB0C8728);
  v23 = &v17[*(v27 + 36)];
  *v23 = v22;
  *(v23 + 4) = 0;
  sub_1A3370A40(&unk_1EB0C0BB0, &qword_1EB0C8730, &unk_1A34EA570, sub_1A3370AC4);
  sub_1A34CC1F0();
  return sub_1A3288FDC(v17, &qword_1EB0C8730);
}

uint64_t sub_1A3366D84(uint64_t a1)
{
  sub_1A33663E0();
  v2 = type metadata accessor for VisualIdentitySuggestionListItem(0);
  sub_1A3359340(a1 + *(v2 + 28), 0);
}

uint64_t sub_1A3366DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for VisualIdentitySuggestionListItem(0) + 28);
  v5 = type metadata accessor for VisualIdentityPreview();
  sub_1A3370908(a1 + v4, a2 + v5[7], type metadata accessor for VisualIdentity);
  type metadata accessor for VisualIdentityEditorViewModel();
  sub_1A336F77C(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  *a2 = sub_1A34CA600();
  *(a2 + 8) = v6 & 1;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  result = swift_getKeyPath();
  *(a2 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + v5[10]) = 0;
  v8 = v5[11];
  *(a2 + v5[8]) = 1;
  v9 = a2 + v8;
  *(a2 + v5[9]) = 0;
  *v9 = 0;
  *(v9 + 8) = 1;
  return result;
}

uint64_t sub_1A3366EF8@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_1A34CB0B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v1 + 40);
  v7 = v1[4];
  v22 = v7;
  if (v23 == 1)
  {

    v8 = *(v7 + 16);

    if (v8 == 1)
    {

      if (*(v7 + 16))
      {
LABEL_4:
        v9 = *(v7 + 32);

        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  else
  {
    sub_1A34C9010();
    sub_1A34CD650();
    v11 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A3288FDC(&v22, &qword_1EB0C8710);
    v12 = *(v4 + 8);
    v12(v6, v3);
    v13 = *(v20 + 16);

    if (v13 == 1)
    {
      sub_1A34C9010();
      sub_1A34CD650();
      v14 = sub_1A34CBA30();
      sub_1A34CA210();

      sub_1A34CB0A0();
      swift_getAtKeyPath();
      sub_1A3288FDC(&v22, &qword_1EB0C8710);
      v12(v6, v3);
      v7 = v20;
      if (*(v20 + 16))
      {
        goto LABEL_4;
      }

LABEL_7:
    }
  }

  v21 = *(v1 + 8);
  v15 = *v1;
  v20 = *v1;
  v16 = v21;
  sub_1A34C9010();
  if ((v16 & 1) == 0)
  {
    sub_1A34CD650();
    v17 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A3288FDC(&v20, &qword_1EB0C6E58);
    (*(v4 + 8))(v6, v3);
    v15 = v19;
  }

  swift_getKeyPath();
  v19 = v15;
  sub_1A336F77C(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v9 = *(v15 + 40);

LABEL_11:
  *a1 = v9;
  return result;
}

uint64_t sub_1A3367278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a1;
  v81 = a2;
  v3 = sub_1A34CB0B0();
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v66 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C86B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v79 = &v66 - v6;
  v7 = sub_1A34CB160();
  v74 = *(v7 - 8);
  v75 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A34CB730();
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A34CCC60();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C86C0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v66 - v16;
  v18 = type metadata accessor for ScaledRoundedRectangle();
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C86C8);
  MEMORY[0x1EEE9AC00](v22);
  v78 = &v66 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C86D0);
  MEMORY[0x1EEE9AC00](v24);
  v77 = &v66 - v25;
  v80 = v2;
  sub_1A3366EF8(&v83);
  if (v83)
  {
    v26 = 0.25;
  }

  else
  {
    v26 = 0.5;
  }

  v27 = *(v19 + 28);
  v28 = *MEMORY[0x1E697F468];
  v29 = sub_1A34CB200();
  (*(*(v29 - 8) + 104))(v21 + v27, v28, v29);
  *v21 = v26;
  if (qword_1EB0C0398 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v11, qword_1EB0ECEF0);
  (*(v12 + 16))(v14, v30, v11);
  if (sub_1A34CB750())
  {
    v31 = 0.5;
  }

  else
  {
    v31 = 1.0;
  }

  (*(v12 + 32))(v17, v14, v11);
  *&v17[*(v15 + 36)] = v31;
  v32 = v21;
  v33 = v78;
  sub_1A3370970(v32, v78, type metadata accessor for ScaledRoundedRectangle);
  sub_1A329D98C(v17, v33 + *(v22 + 52), &qword_1EB0C86C0);
  *(v33 + *(v22 + 56)) = 256;
  v34 = sub_1A34CCC80();
  v69 = v35;
  v36 = v77;
  v37 = &v77[*(v24 + 36)];
  v38 = v70;
  sub_1A34CB740();
  v39 = v73;
  sub_1A34CB150();
  sub_1A336F77C(&qword_1ED8534B0, MEMORY[0x1E697C8D0]);
  sub_1A336F77C(&qword_1EB0C0938, MEMORY[0x1E697C4E8]);
  v40 = v72;
  v41 = v75;
  sub_1A34CBE70();
  (*(v74 + 8))(v39, v41);
  (*(v71 + 8))(v38, v40);
  sub_1A34CBB60();
  v42 = sub_1A34CBB40();
  v43 = v79;
  (*(*(v42 - 8) + 56))(v79, 1, 1, v42);
  v44 = sub_1A34CBB90();
  sub_1A3288FDC(v43, &qword_1EB0C86B8);
  KeyPath = swift_getKeyPath();
  v46 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C86D8) + 36)];
  *v46 = KeyPath;
  v46[1] = v44;
  v47 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C86E0) + 36)];
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C54D8) + 28);
  v49 = *MEMORY[0x1E69816C8];
  v50 = sub_1A34CC670();
  (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
  *v47 = swift_getKeyPath();
  v51 = swift_getKeyPath();
  v52 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C86E8) + 36)];
  v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8F90) + 28);
  v54 = *MEMORY[0x1E697DBB8];
  v55 = sub_1A34CA5D0();
  (*(*(v55 - 8) + 104))(v52 + v53, v54, v55);
  *v52 = v51;
  v56 = sub_1A34CC500();
  *&v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C86F0) + 36)] = v56;
  v57 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C86F8) + 36)];
  v58 = v69;
  *v57 = v34;
  v57[1] = v58;
  sub_1A329D98C(v33, v36, &qword_1EB0C86C8);
  v59 = v80;
  sub_1A3366EF8(&v83);
  if (v83 == 1)
  {
    v84 = *(v59 + 24);
    v60 = *(v59 + 16);
    v83 = v60;
    if ((v84 & 1) == 0)
    {
      sub_1A34C9010();
      sub_1A34CD650();
      v61 = sub_1A34CBA30();
      sub_1A34CA210();

      v62 = v66;
      sub_1A34CB0A0();
      swift_getAtKeyPath();
      sub_1A3288FDC(&v83, &qword_1EB0C8700);
      (*(v67 + 8))(v62, v68);
      v60 = v82;
    }
  }

  else
  {
    v60 = 0x3FF0000000000000;
  }

  v63 = v81;
  sub_1A329D98C(v36, v81, &qword_1EB0C86D0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8708);
  v65 = v63 + *(result + 36);
  *v65 = v60;
  *(v65 + 8) = 0;
  return result;
}

void sub_1A3367C1C(uint64_t a1, double a2)
{
  v5 = sub_1A34CA8A0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v49 - v10;
  v11 = sub_1A34CCAB0();
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A34CCAE0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v49 - v18;
  if (*(a1 + 16))
  {
    v50 = *(a1 + 16);
    v51 = v8;
    v52 = v6;
    v53 = v5;
    v54 = v2;
    v21 = *(v14 + 16);
    v21(&v49 - v18, a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13, v19);
    sub_1A34CA9B0();
    sub_1A336F77C(&qword_1ED8542D8, MEMORY[0x1E697E3C0]);
    sub_1A34CD5B0();
    sub_1A34CD5E0();
    if (sub_1A34CD5D0() == 2)
    {
      v22 = type metadata accessor for PlaceholderGridLayout.Cache(0);
      v23 = v22[5];
      v24 = v54;
      (v21)(v16, v54 + v23, v13);
      v25 = v24;
      sub_1A336F77C(&qword_1EB0C8718, MEMORY[0x1E697D750]);
      LOBYTE(v24) = sub_1A34CD040();
      v49 = *(v14 + 8);
      v49(v16, v13);
      if ((v24 & 1) != 0 && *(v25 + v22[6]) == a2)
      {
        v49(v20, v13);
      }

      else
      {
        (*(v14 + 24))(v25 + v23, v20, v13);
        *(v25 + v22[6]) = a2;
        v26 = COERCE_DOUBLE(sub_1A34CCAD0());
        if (v27)
        {
          v28 = 0.0;
        }

        else
        {
          v28 = v26;
        }

        *(v25 + v22[7]) = v28;
        v29 = v58;
        sub_1A34CCAC0();
        v31 = v55;
        v30 = v56;
        v32 = (*(v55 + 88))(v29, v56);
        if (v32 == *MEMORY[0x1E697D728])
        {
          (*(v31 + 96))(v29, v30);
          v33 = *v29;
          v34 = v52;
        }

        else
        {
          v34 = v52;
          if (v32 == *MEMORY[0x1E697D748] || v32 == *MEMORY[0x1E697D730])
          {
            v35 = v58;
            (*(v31 + 96))(v58, v30);
            v33 = *v35;
          }

          else
          {
            (*(v31 + 8))(v58, v30);
            v33 = 0.0;
          }
        }

        v36 = (a2 - (v50 + -1.0) * v28) / v50;
        v37 = v57;
        sub_1A34CA9C0();
        v38 = v51;
        sub_1A34CA9C0();
        if (v33 <= v36)
        {
          v33 = v36;
        }

        *(v25 + v22[8]) = v33;
        v60 = 0;
        v59 = 1;
        sub_1A34CA880();
        v39 = (v25 + v22[9]);
        *v39 = v40;
        v39[1] = v41;
        *(v25 + v22[10]) = v28 + v33 + *(v25 + 8);
        v60 = 0;
        v59 = 1;
        sub_1A34CA880();
        v43 = v42;
        v45 = v44;
        v46 = *(v34 + 8);
        v47 = v53;
        v46(v38, v53);
        v46(v37, v47);
        v49(v20, v13);
        v48 = (v25 + v22[11]);
        *v48 = v43;
        v48[1] = v45;
      }
    }

    else
    {
      (*(v14 + 8))(v20, v13);
    }
  }
}

unint64_t sub_1A3368210()
{
  v1 = sub_1A34CB0B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    v6 = v5 >> 8;
    v7 = (v5 >> 16) & 1;
  }

  else
  {
    sub_1A34C9010();
    sub_1A34CD650();
    v8 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A32141EC(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v11[13];
    LOBYTE(v6) = v11[14];
    LODWORD(v7) = v11[15];
  }

  if (v7)
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 0xFFFF00FE | (v6 << 8) | v5 & 1;
}

uint64_t sub_1A336837C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A34CB0B0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1A328D790(v2 + *(a1 + 56), &v15 - v10, &qword_1EB0C5478);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A34CB5F0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1A34CD650();
    v14 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1A3368580(uint64_t a1)
{
  v3 = sub_1A34CB0B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 60);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
  }

  else
  {
    sub_1A34C9010();
    sub_1A34CD650();
    v9 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A336F738(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v11[1];
  }

  return v8;
}

uint64_t sub_1A33686E0@<X0>(_OWORD *a1@<X8>)
{
  v2 = sub_1A34CCAB0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a1 = xmmword_1A34E9D60;
  a1[1] = xmmword_1A34E9D70;
  v6 = type metadata accessor for PlaceholderGridLayout.Cache(0);
  *v5 = 0;
  (*(v3 + 104))(v5, *MEMORY[0x1E697D728], v2);
  result = sub_1A34CCAF0();
  *(a1 + v6[6]) = 0;
  *(a1 + v6[7]) = 0;
  *(a1 + v6[8]) = 0;
  v8 = (a1 + v6[9]);
  *v8 = 0;
  v8[1] = 0;
  *(a1 + v6[10]) = 0;
  v9 = (a1 + v6[11]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

double sub_1A3368838(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 10.0;
  }

  else
  {
    v3 = *&a1;
  }

  sub_1A3367C1C(*v2, v3);
  type metadata accessor for PlaceholderGridLayout.Cache(0);
  return v3;
}

void (*sub_1A33688B4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A34CA400();
  return sub_1A32F7C20;
}

BOOL sub_1A3368940(uint64_t a1)
{
  v1 = sub_1A3368580(a1);
  v2 = sub_1A33663E0();
  swift_getKeyPath();
  sub_1A336F77C(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v3 = *(v2 + 40);

  v4 = *(v1 + 16);
  v5 = (v1 + 32);
  do
  {
    v6 = v4;
    if (v4-- == 0)
    {
      break;
    }

    v8 = *v5++;
  }

  while (v3 != v8);
  v9 = v6 != 0;

  return v9;
}

uint64_t sub_1A3368A28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC740();
  return v1;
}

uint64_t sub_1A3368A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for VisualIdentityEditorViewModel();
  sub_1A336F77C(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  *a6 = sub_1A34CA600();
  *(a6 + 8) = v12 & 1;
  *(a6 + 16) = swift_getKeyPath();
  *(a6 + 24) = 0;
  v13 = type metadata accessor for VisualIdentitySuggestionSection();
  v14 = v13[14];
  *(a6 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
  swift_storeEnumTagMultiPayload();
  v15 = a6 + v13[15];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = a6 + v13[16];
  sub_1A34CC730();
  *v16 = a4;
  *(v16 + 8) = a5;
  v17 = v13[18];
  (*(*(a4 - 8) + 56))(a6 + v17, 1, 1, a4);
  v18 = v13[19];
  (*(*(a5 - 8) + 56))(a6 + v18, 1, 1, a5);
  *(a6 + v13[17]) = a1;
  v19 = sub_1A34CD890();
  (*(*(v19 - 8) + 40))(a6 + v17, a2, v19);
  v20 = sub_1A34CD890();
  return (*(*(v20 - 8) + 40))(a6 + v18, a3, v20);
}

uint64_t sub_1A3368CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X6>, uint64_t a7@<X8>, double a8@<D0>)
{
  v66 = a5;
  v67 = a4;
  v64 = a3;
  v63 = a2;
  v62 = a1;
  v68 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8558);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8560);
  v10 = sub_1A336F2D8();
  v59 = a6[2];
  v11 = a6[4];
  v60 = a6 + 5;
  v61 = a6;
  v86 = v59;
  v87 = &type metadata for PlaceholderButtonStyle;
  v88 = v11;
  v89 = v10;
  swift_getOpaqueTypeMetadata2();
  sub_1A34CD890();
  v58 = a6[3];
  swift_getTupleTypeMetadata2();
  sub_1A34CCDA0();
  sub_1A3284D0C(&qword_1EB0C10D8, &qword_1EB0C8560);
  sub_1A34CA8E0();
  sub_1A34CB970();
  sub_1A34CAC30();
  sub_1A34CD890();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8568);
  swift_getTupleTypeMetadata2();
  sub_1A34CCDA0();
  swift_getWitnessTable();
  sub_1A34CCD30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8570);
  sub_1A34CAC30();
  sub_1A34CAC30();
  sub_1A34CB3F0();
  swift_getTupleTypeMetadata2();
  sub_1A34CCDA0();
  swift_getWitnessTable();
  v12 = sub_1A34CC8A0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - v14;
  v16 = sub_1A34CAC30();
  v53 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  v50 = sub_1A34CAC30();
  v55 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v47 - v19;
  v52 = sub_1A34CAC30();
  v56 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v47 - v20;
  v51 = sub_1A34CAC30();
  v57 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v54 = &v47 - v23;
  *&v24 = v11;
  *(&v24 + 1) = *v60;
  *&v25 = v59;
  *(&v25 + 1) = v58;
  v69 = v25;
  v70 = v24;
  v71 = v65;
  v72 = v62;
  v73 = v63;
  v74 = v64;
  v75 = v66;
  v76 = a8;
  v77 = v67;
  sub_1A34CB280();
  sub_1A34CC890();
  v26 = v61;
  if (sub_1A3368940(v61))
  {
    v27 = 1.0;
  }

  else
  {
    v27 = 0.5;
  }

  sub_1A34CCE10();
  v29 = v28;
  v31 = v30;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1A58ED730](v12, WitnessTable, 1.0, v27, v29, v31);
  (*(v13 + 8))(v15, v12);
  sub_1A3368940(v26);
  sub_1A34CCC80();
  v84 = WitnessTable;
  v85 = MEMORY[0x1E697E070];
  v33 = swift_getWitnessTable();
  v34 = v47;
  sub_1A34CC2D0();
  (*(v53 + 8))(v18, v16);
  v35 = v26;
  sub_1A3368940(v26);
  v82 = v33;
  v83 = MEMORY[0x1E697E040];
  v36 = v50;
  v37 = swift_getWitnessTable();
  v38 = v48;
  sub_1A34CC360();
  (*(v55 + 8))(v34, v36);
  sub_1A3368940(v35);
  v80 = v37;
  v81 = MEMORY[0x1E697E5C0];
  v39 = v52;
  v40 = swift_getWitnessTable();
  v41 = v49;
  sub_1A34CC290();
  (*(v56 + 8))(v38, v39);
  v78 = v40;
  v79 = MEMORY[0x1E697DD90];
  v42 = v51;
  v43 = swift_getWitnessTable();
  v44 = v54;
  sub_1A3345BC8(v41, v42, v43);
  v45 = *(v57 + 8);
  v45(v41, v42);
  sub_1A3345BC8(v44, v42, v43);
  return (v45)(v44, v42);
}

uint64_t sub_1A336961C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11)
{
  v139 = a6;
  v146 = a5;
  v158 = a4;
  v157 = a3;
  v156 = a2;
  v142 = a1;
  v155 = a9;
  v161 = a11;
  v160 = a10;
  v13 = sub_1A34CB4A0();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v138 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A336F2D8();
  v181 = a7;
  v182 = &type metadata for PlaceholderButtonStyle;
  v183 = a10;
  v184 = v15;
  swift_getOpaqueTypeMetadata2();
  sub_1A34CB970();
  sub_1A34CAC30();
  sub_1A34CD890();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8568);
  swift_getTupleTypeMetadata2();
  v16 = sub_1A34CCDA0();
  WitnessTable = swift_getWitnessTable();
  v134 = v16;
  v131 = WitnessTable;
  v18 = sub_1A34CCD30();
  v135 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v132 = &v123 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8570);
  v154 = v18;
  v20 = sub_1A34CAC30();
  v137 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v136 = &v123 - v21;
  v163 = v22;
  v23 = sub_1A34CAC30();
  v141 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v133 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v140 = &v123 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8560);
  sub_1A34CD890();
  swift_getTupleTypeMetadata2();
  v27 = sub_1A34CCDA0();
  v28 = v142;
  sub_1A3284D0C(&qword_1EB0C10D8, &qword_1EB0C8560);
  v150 = v27;
  v29 = sub_1A34CA8E0();
  v124 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v123 = &v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v128 = &v123 - v32;
  v127 = sub_1A34CD890();
  v143 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v126 = &v123 - v33;
  v130 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v129 = &v123 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = v29;
  v36 = a7;
  v148 = v23;
  v153 = sub_1A34CB3F0();
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v151 = &v123 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v147 = &v123 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8580);
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v123 - v42;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8558);
  MEMORY[0x1EEE9AC00](v145);
  v149 = &v123 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v123 - v46;
  v181 = v36;
  v182 = a8;
  v48 = v160;
  v183 = v160;
  v49 = v161;
  v184 = v161;
  v125 = type metadata accessor for VisualIdentitySuggestionSection();
  v50 = sub_1A3368210();
  v144 = v36;
  if (v50 >= 0x10000)
  {
    *v43 = sub_1A34CB110();
    *(v43 + 1) = 0x4014000000000000;
    v43[16] = 0;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8590);
    v51 = v28;
    v55 = v36;
    v52 = a8;
    sub_1A336A928(v28, v156, v157, v158, v55, a8, v48, v49, &v43[*(v54 + 44)]);
    sub_1A34CBB20();
    sub_1A34CBB70();
    v56 = sub_1A34CBBC0();

    KeyPath = swift_getKeyPath();
    v58 = &v43[*(v40 + 36)];
    *v58 = KeyPath;
    v58[1] = v56;
    sub_1A329D98C(v43, v47, &qword_1EB0C8580);
    v53 = 0;
  }

  else
  {
    v51 = v28;
    v52 = a8;
    v53 = 1;
  }

  v59 = (*(v41 + 56))(v47, v53, 1, v40);
  v60 = v158[2];
  v61 = v163;
  v62 = v148;
  v63 = v159;
  v64 = v143;
  v162 = v47;
  if (!v60)
  {
    v65 = v51;
    v66 = &v51[*(v125 + 76)];
    v67 = v126;
    v68 = v127;
    (*(v143 + 16))(v126, v66, v127);
    v69 = v130;
    if ((*(v130 + 48))(v67, 1, v52) != 1)
    {
      (*(v69 + 32))(v129, v67, v52);
      v106 = swift_allocObject();
      v107 = v144;
      v106[2] = v144;
      v106[3] = v52;
      v108 = v160;
      v109 = v161;
      v106[4] = v160;
      v106[5] = v109;
      v110 = v123;
      v106[6] = v146;

      v158 = &v123;
      MEMORY[0x1EEE9AC00](v111);
      *(&v123 - 6) = v107;
      *(&v123 - 5) = v52;
      *(&v123 - 4) = v108;
      *(&v123 - 3) = v109;
      v121 = v65;
      v122 = v129;
      sub_1A336B7E0(sub_1A336F92C, (&v123 - 8), v110);

      v112 = sub_1A3284D0C(&qword_1EB0C10D0, &qword_1EB0C8560);
      v161 = v52;
      v113 = swift_getWitnessTable();
      v168 = v112;
      v169 = v113;
      v114 = swift_getWitnessTable();
      v115 = v128;
      sub_1A3345BC8(v110, v63, v114);
      v116 = *(v124 + 8);
      v116(v110, v63);
      sub_1A3345BC8(v115, v63, v114);
      v117 = swift_getWitnessTable();
      v118 = sub_1A3284D0C(&qword_1EB0C10E0, &qword_1EB0C8570);
      v166 = v117;
      v167 = v118;
      v119 = swift_getWitnessTable();
      v120 = sub_1A336F77C(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
      v164 = v119;
      v165 = v120;
      swift_getWitnessTable();
      v89 = v147;
      sub_1A342B9B8(v110, v63);
      v116(v110, v63);
      v116(v128, v63);
      v90 = v162;
      (*(v130 + 8))(v129, v161);
      goto LABEL_8;
    }

    v70 = v67;
    v51 = v65;
    v59 = (*(v64 + 8))(v70, v68);
  }

  MEMORY[0x1EEE9AC00](v59);
  *(&v123 - 10) = v144;
  *(&v123 - 9) = v52;
  v71 = v161;
  *(&v123 - 8) = v160;
  *(&v123 - 7) = v71;
  v72 = v156;
  *(&v123 - 6) = v51;
  *(&v123 - 5) = v72;
  *(&v123 - 4) = v157;
  *(&v123 - 3) = v73;

  sub_1A34CB280();
  v74 = v131;
  sub_1A336CF14();
  v121 = v74;
  v75 = v132;
  sub_1A34CCD20();
  v76 = v154;
  v77 = swift_getWitnessTable();
  v78 = v136;
  sub_1A34CC340();
  (*(v135 + 8))(v75, v76);
  v79 = sub_1A3284D0C(&qword_1EB0C10E0, &qword_1EB0C8570);
  v180[6] = v77;
  v180[7] = v79;
  v80 = swift_getWitnessTable();
  v81 = v133;
  sub_1A34CC1F0();
  (*(v137 + 8))(v78, v61);
  v82 = sub_1A336F77C(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
  v180[4] = v80;
  v180[5] = v82;
  v83 = swift_getWitnessTable();
  v84 = v140;
  sub_1A3345BC8(v81, v62, v83);
  v85 = *(v141 + 8);
  v85(v81, v62);
  sub_1A3345BC8(v84, v62, v83);
  v86 = sub_1A3284D0C(&qword_1EB0C10D0, &qword_1EB0C8560);
  v87 = swift_getWitnessTable();
  v180[2] = v86;
  v180[3] = v87;
  v88 = v159;
  swift_getWitnessTable();
  v89 = v147;
  sub_1A342BAB0(v81, v88, v62);
  v90 = v162;
  v85(v81, v62);
  v85(v84, v62);
LABEL_8:
  v91 = v149;
  sub_1A328D790(v90, v149, &qword_1EB0C8558);
  v181 = v91;
  v92 = v152;
  v93 = v151;
  v94 = v89;
  v95 = v153;
  (*(v152 + 16))(v151, v89, v153);
  v182 = v93;
  v180[0] = v145;
  v180[1] = v95;
  v178 = sub_1A336F7C4();
  v96 = sub_1A3284D0C(&qword_1EB0C10D0, &qword_1EB0C8560);
  v97 = swift_getWitnessTable();
  v176 = v96;
  v177 = v97;
  v98 = swift_getWitnessTable();
  v99 = swift_getWitnessTable();
  v100 = sub_1A3284D0C(&qword_1EB0C10E0, &qword_1EB0C8570);
  v174 = v99;
  v175 = v100;
  v101 = swift_getWitnessTable();
  v102 = sub_1A336F77C(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
  v172 = v101;
  v173 = v102;
  v103 = swift_getWitnessTable();
  v170 = v98;
  v171 = v103;
  v179 = swift_getWitnessTable();
  sub_1A33D22C4(&v181, 2uLL, v180);
  v104 = *(v92 + 8);
  v104(v94, v95);
  sub_1A3288FDC(v162, &qword_1EB0C8558);
  v104(v93, v95);
  return sub_1A3288FDC(v91, &qword_1EB0C8558);
}

uint64_t sub_1A336A928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v62 = a4;
  v69 = a3;
  v67 = a2;
  v74 = a9;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5988);
  MEMORY[0x1EEE9AC00](v73);
  v64 = &v54 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8598);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v54 - v15;
  v16 = sub_1A34CAD20();
  v65 = *(v16 - 8);
  v66 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a5;
  v76 = a6;
  v77 = a7;
  v78 = a8;
  v61 = a8;
  v18 = type metadata accessor for VisualIdentitySuggestionSection();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v54 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C85A0);
  v58 = *(v22 - 8);
  v59 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v55 = &v54 - v23;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C85A8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v54 - v24;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C85B0);
  MEMORY[0x1EEE9AC00](v70);
  v60 = &v54 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C85B8);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v68 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v54 - v29;
  if (sub_1A3368210())
  {
    v75 = v67;
    v76 = v69;
    sub_1A328A95C();

    v31 = sub_1A34CBE30();
    v33 = v32;
    v75 = v31;
    v76 = v32;
    v35 = v34 & 1;
    LOBYTE(v77) = v34 & 1;
    v78 = v36;
    v37 = v64;
    sub_1A34CC1F0();
    sub_1A328A9B0(v31, v33, v35);

    sub_1A328D790(v37, v72, &qword_1EB0C5988);
    swift_storeEnumTagMultiPayload();
    sub_1A336F93C();
    sub_1A336FB70();
    sub_1A34CB3E0();
    sub_1A3288FDC(v37, &qword_1EB0C5988);
  }

  else
  {
    (*(v19 + 16))(v21, a1, v18);
    v38 = (*(v19 + 80) + 48) & ~*(v19 + 80);
    v39 = swift_allocObject();
    *(v39 + 2) = a5;
    *(v39 + 3) = a6;
    v64 = v30;
    v40 = v61;
    *(v39 + 4) = a7;
    *(v39 + 5) = v40;
    v41 = (*(v19 + 32))(&v39[v38], v21, v18);
    MEMORY[0x1EEE9AC00](v41);
    *(&v54 - 8) = a5;
    *(&v54 - 7) = a6;
    *(&v54 - 6) = a7;
    *(&v54 - 5) = v40;
    v42 = v67;
    *(&v54 - 4) = a1;
    *(&v54 - 3) = v42;
    v30 = v64;
    v43 = v62;
    *(&v54 - 2) = v69;
    *(&v54 - 1) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C85E8);
    sub_1A336FCE4();
    v44 = v55;
    sub_1A34CC790();
    v45 = v63;
    sub_1A34CAD10();
    sub_1A3284D0C(&qword_1EB0C85D0, &qword_1EB0C85A0);
    sub_1A336F77C(&qword_1EB0C0998, MEMORY[0x1E697C248]);
    v46 = v56;
    v47 = v59;
    v48 = v66;
    sub_1A34CBEA0();
    (*(v65 + 8))(v45, v48);
    (*(v58 + 8))(v44, v47);
    *(v46 + *(v57 + 36)) = 0;
    sub_1A336F9F8();
    v49 = v60;
    sub_1A34CC1F0();
    sub_1A3288FDC(v46, &qword_1EB0C85A8);
    sub_1A328D790(v49, v72, &qword_1EB0C85B0);
    swift_storeEnumTagMultiPayload();
    sub_1A336F93C();
    sub_1A336FB70();
    sub_1A34CB3E0();
    sub_1A3288FDC(v49, &qword_1EB0C85B0);
  }

  v50 = v68;
  sub_1A328D790(v30, v68, &qword_1EB0C85B8);
  v51 = v74;
  sub_1A328D790(v50, v74, &qword_1EB0C85B8);
  v52 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C85E0) + 48);
  *v52 = 0;
  *(v52 + 8) = 1;
  sub_1A3288FDC(v30, &qword_1EB0C85B8);
  return sub_1A3288FDC(v50, &qword_1EB0C85B8);
}

uint64_t sub_1A336B160()
{
  sub_1A34CCCF0();
  sub_1A34CCCD0();

  sub_1A34CA900();
}

uint64_t sub_1A336B210()
{
  type metadata accessor for VisualIdentitySuggestionSection();
  sub_1A34C9010();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC740();
  sub_1A34CC750();
}

uint64_t sub_1A336B2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v33[1] = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8600);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v33 - v18;
  v33[2] = a5;
  v33[3] = a6;
  v33[4] = a7;
  v33[5] = a8;
  type metadata accessor for VisualIdentitySuggestionSection();
  if (sub_1A3368A28())
  {
    v20 = 0x4014000000000000;
  }

  else
  {
    v20 = 0x4008000000000000;
  }

  *v19 = sub_1A34CB110();
  *(v19 + 1) = v20;
  v19[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8608);
  sub_1A336B478(a2, a3, a1, a5, a6, a7, a8, &v19[*(v21 + 44)]);
  v22 = sub_1A34CBAC0();
  sub_1A34CA460();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1A329D98C(v19, a9, &qword_1EB0C8600);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C85E8);
  v32 = a9 + *(result + 36);
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_1A336B478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v52 = a6;
  v53 = a7;
  v50 = a4;
  v51 = a5;
  v54 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C54D0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v45 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8610);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v45 - v23;
  v55 = a1;
  v56 = a2;
  sub_1A328A95C();

  v25 = sub_1A34CBE30();
  v46 = v26;
  v47 = v25;
  v48 = v27;
  v49 = v28;
  v29 = sub_1A34CC5E0();
  v30 = (v14 + *(v12 + 44));
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C54D8) + 28);
  v32 = *MEMORY[0x1E69816C8];
  v33 = sub_1A34CC670();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = swift_getKeyPath();
  *v14 = v29;
  v55 = v50;
  v56 = v51;
  v57 = v52;
  v58 = v53;
  type metadata accessor for VisualIdentitySuggestionSection();
  if (sub_1A3368A28())
  {
    v34 = 1.57079633;
  }

  else
  {
    v34 = 0.0;
  }

  sub_1A34CCE10();
  v36 = v35;
  v38 = v37;
  sub_1A329D98C(v14, v21, &qword_1EB0C54D0);
  v39 = &v21[*(v16 + 44)];
  *v39 = v34;
  *(v39 + 1) = v36;
  *(v39 + 2) = v38;
  sub_1A329D98C(v21, v24, &qword_1EB0C8610);
  sub_1A328D790(v24, v18, &qword_1EB0C8610);
  v41 = v46;
  v40 = v47;
  *a8 = v47;
  *(a8 + 8) = v41;
  v42 = v48 & 1;
  *(a8 + 16) = v48 & 1;
  *(a8 + 24) = v49;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8618);
  sub_1A328D790(v18, a8 + *(v43 + 48), &qword_1EB0C8610);
  sub_1A3285BB4(v40, v41, v42);

  sub_1A3288FDC(v24, &qword_1EB0C8610);
  sub_1A3288FDC(v18, &qword_1EB0C8610);
  sub_1A328A9B0(v40, v41, v42);
}

uint64_t sub_1A336B7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A336F2D8();
  swift_getOpaqueTypeMetadata2();
  sub_1A34CD890();
  swift_getTupleTypeMetadata2();
  v6 = sub_1A34CCDA0();
  v7 = sub_1A336FDC0();
  WitnessTable = swift_getWitnessTable();
  return sub_1A336B8E8(a1, a2, &type metadata for PlaceholderGridLayout, v6, v7, WitnessTable, a3);
}

uint64_t sub_1A336B8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A34CA6A0();
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  sub_1A34CA6B0();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return sub_1A34CA8F0();
}

uint64_t sub_1A336BA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v67 = a2;
  v74 = a1;
  v70 = a7;
  Description = a4[-1].Description;
  MEMORY[0x1EEE9AC00](a1);
  v71 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v59 - v13;
  v14 = sub_1A336F2D8();
  WitnessTable = a3;
  v78 = &type metadata for PlaceholderButtonStyle;
  v79 = a5;
  v80 = v14;
  v75 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v60 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v61 = &v59 - v18;
  v19 = sub_1A34CD890();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v59 - v21;
  v23 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = OpaqueTypeMetadata2;
  v66 = sub_1A34CD890();
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v28 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v63 = &v59 - v30;
  WitnessTable = a3;
  v78 = a4;
  v73 = a4;
  v76 = a5;
  v79 = a5;
  v80 = a6;
  v69 = a6;
  v31 = type metadata accessor for VisualIdentitySuggestionSection();
  (*(v20 + 16))(v22, v74 + *(v31 + 72), v19);
  v32 = *(v23 + 48);
  v74 = a3;
  if (v32(v22, 1, a3) == 1)
  {
    (*(v20 + 8))(v22, v19);
    (*(v65 + 56))(v28, 1, 1, v62);
    WitnessTable = v74;
    v78 = &type metadata for PlaceholderButtonStyle;
    v79 = v76;
    v80 = v75;
    swift_getOpaqueTypeConformance2();
  }

  else
  {
    v33 = v26;
    v34 = v74;
    (*(v23 + 32))(v26, v22, v74);
    type metadata accessor for VisualIdentityEditorViewModel();
    sub_1A336F77C(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    v35 = sub_1A34CA600();
    v37 = v36;
    KeyPath = swift_getKeyPath();
    v39 = swift_getKeyPath();
    WitnessTable = v35;
    LOBYTE(v78) = v37 & 1;
    v79 = KeyPath;
    LOBYTE(v80) = 0;
    v81 = v39;
    v82 = 0;
    v40 = v60;
    v41 = v75;
    v42 = v76;
    sub_1A34CBEB0();

    (*(v23 + 8))(v33, v34);
    WitnessTable = v34;
    v78 = &type metadata for PlaceholderButtonStyle;
    v79 = v42;
    v80 = v41;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v44 = v61;
    v45 = v62;
    sub_1A3345BC8(v40, v62, OpaqueTypeConformance2);
    v46 = v65;
    v47 = *(v65 + 8);
    v47(v40, v45);
    sub_1A3345BC8(v44, v45, OpaqueTypeConformance2);
    v47(v44, v45);
    (*(v46 + 32))(v28, v40, v45);
    (*(v46 + 56))(v28, 0, 1, v45);
  }

  v48 = v63;
  sub_1A34480D0(v28, v63);
  v49 = v64;
  v50 = *(v64 + 8);
  v51 = v66;
  v50(v28, v66);
  v52 = v68;
  v53 = v73;
  v54 = v69;
  sub_1A3345BC8(v67, v73, v69);
  (*(v49 + 16))(v28, v48, v51);
  v85[0] = v28;
  v56 = v71;
  v55 = Description;
  (Description)[2](v71, v52, v53);
  v85[1] = v56;
  v84[0] = v51;
  v84[1] = v53;
  WitnessTable = v74;
  v78 = &type metadata for PlaceholderButtonStyle;
  v79 = v76;
  v80 = v75;
  v83 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v78 = v54;
  sub_1A33D22C4(v85, 2uLL, v84);
  v57 = v55[1];
  v57(v52, v53);
  v50(v48, v51);
  v57(v56, v53);
  return (v50)(v28, v51);
}

uint64_t sub_1A336C27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, ValueMetadata *a5@<X6>, ValueMetadata *a6@<X7>, uint64_t a7@<X8>, void (*a8)(void, void))
{
  v95 = a5;
  v84 = a3;
  v85 = a2;
  v94 = a1;
  v89 = a7;
  v82 = a8;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8568);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v88 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v74 - v12;
  v13 = sub_1A336F2D8();
  v98 = a4;
  v99 = &type metadata for PlaceholderButtonStyle;
  v100 = a6;
  v101 = v13;
  v93 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v77 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v76 = &v74 - v15;
  sub_1A34CB970();
  v78 = OpaqueTypeMetadata2;
  v16 = sub_1A34CAC30();
  v81 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v79 = &v74 - v20;
  v21 = sub_1A34CD890();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v74 - v23;
  v25 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v16;
  v86 = sub_1A34CD890();
  v83 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v31 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v92 = &v74 - v33;
  v98 = a4;
  v99 = v95;
  v95 = a6;
  v100 = a6;
  v101 = v82;
  v34 = type metadata accessor for VisualIdentitySuggestionSection();
  (*(v22 + 16))(v24, v94 + *(v34 + 72), v21);
  v35 = *(v25 + 48);
  v94 = a4;
  if (v35(v24, 1, a4) == 1)
  {
    (*(v22 + 8))(v24, v21);
    (*(v81 + 56))(v31, 1, 1, v29);
    v98 = v94;
    v99 = &type metadata for PlaceholderButtonStyle;
    v100 = v95;
    v101 = v93;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v37 = sub_1A336F77C(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    v108[2] = OpaqueTypeConformance2;
    v108[3] = v37;
    swift_getWitnessTable();
  }

  else
  {
    v74 = v25;
    v38 = *(v25 + 32);
    v75 = v28;
    v82 = v18;
    v39 = v94;
    v38(v28, v24, v94);
    type metadata accessor for VisualIdentityEditorViewModel();
    sub_1A336F77C(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    v40 = sub_1A34CA600();
    v42 = v41;
    KeyPath = swift_getKeyPath();
    v44 = swift_getKeyPath();
    v98 = v40;
    LOBYTE(v99) = v42 & 1;
    v100 = KeyPath;
    LOBYTE(v101) = 0;
    v102 = v44;
    v103 = 0;
    v45 = v76;
    v46 = v95;
    v47 = v29;
    v48 = v93;
    sub_1A34CBEB0();

    v98 = v39;
    v99 = &type metadata for PlaceholderButtonStyle;
    v100 = v46;
    v101 = v48;
    v49 = swift_getOpaqueTypeConformance2();
    v50 = v82;
    v51 = v78;
    sub_1A34CC1F0();
    (*(v77 + 8))(v45, v51);
    (*(v74 + 8))(v75, v39);
    v52 = sub_1A336F77C(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    v96 = v49;
    v97 = v52;
    WitnessTable = swift_getWitnessTable();
    v54 = v79;
    sub_1A3345BC8(v50, v47, WitnessTable);
    v55 = v81;
    v56 = *(v81 + 8);
    v56(v50, v47);
    sub_1A3345BC8(v54, v47, WitnessTable);
    v56(v54, v47);
    (*(v55 + 32))(v31, v50, v47);
    v29 = v47;
    (*(v55 + 56))(v31, 0, 1, v47);
  }

  v80 = v29;
  sub_1A34480D0(v31, v92);
  v57 = v83;
  v82 = *(v83 + 8);
  v58 = v86;
  v82(v31, v86);
  v98 = sub_1A32A9108(v84, v85);
  v99 = v59;
  v100 = v60;
  v101 = v61;

  v62 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB0C8628);
  sub_1A34C9780();
  type metadata accessor for VisualIdentitySuggestionListItem(0);
  sub_1A3284D0C(&unk_1EB0C0080, qword_1EB0C8628);
  sub_1A336F77C(&qword_1EB0C1588, type metadata accessor for VisualIdentitySuggestionListItem);
  sub_1A336F77C(&unk_1EB0C27E8, type metadata accessor for VisualIdentity);
  v63 = v87;
  sub_1A34CC9D0();
  v64 = v92;
  (*(v57 + 16))(v31, v92, v58);
  v108[0] = v31;
  v65 = v90;
  v66 = v88;
  v67 = v91;
  (*(v90 + 16))(v88, v63, v91);
  v108[1] = v66;
  v107[0] = v58;
  v107[1] = v67;
  v98 = v94;
  v99 = &type metadata for PlaceholderButtonStyle;
  v100 = v95;
  v101 = v93;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = sub_1A336F77C(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
  v105 = v68;
  v106 = v69;
  v104 = swift_getWitnessTable();
  v98 = swift_getWitnessTable();
  v99 = sub_1A336FE44();
  sub_1A33D22C4(v108, 2uLL, v107);
  v70 = *(v65 + 8);
  v70(v63, v67);
  v71 = v64;
  v72 = v82;
  v82(v71, v58);
  v70(v66, v67);
  return v72(v62, v58);
}

uint64_t sub_1A336CE2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for VisualIdentitySuggestionListItem(0);
  sub_1A3370908(a1, a2 + *(v4 + 28), type metadata accessor for VisualIdentity);
  type metadata accessor for VisualIdentityEditorViewModel();
  sub_1A336F77C(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  v5 = sub_1A34CA600();
  v7 = v6;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = v5;
  *(a2 + 8) = v7 & 1;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A336CF14()
{
  sub_1A34CB4A0();
  sub_1A336F77C(&unk_1EB0C07A8, MEMORY[0x1E697FCB0]);
  return sub_1A34CE040();
}

uint64_t sub_1A336CF94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8558);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8560);
  v3 = a1;
  v4 = a1[2];
  v5 = a1[4];
  v6 = v3;
  v126 = v3;
  v153 = v4;
  v154 = &type metadata for PlaceholderButtonStyle;
  v155 = v5;
  v156 = sub_1A336F2D8();
  swift_getOpaqueTypeMetadata2();
  sub_1A34CD890();
  v7 = v6[3];
  swift_getTupleTypeMetadata2();
  sub_1A34CCDA0();
  sub_1A3284D0C(&qword_1EB0C10D8, &qword_1EB0C8560);
  sub_1A34CA8E0();
  sub_1A34CB970();
  sub_1A34CAC30();
  sub_1A34CD890();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8568);
  swift_getTupleTypeMetadata2();
  sub_1A34CCDA0();
  swift_getWitnessTable();
  sub_1A34CCD30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8570);
  sub_1A34CAC30();
  sub_1A34CAC30();
  sub_1A34CB3F0();
  swift_getTupleTypeMetadata2();
  sub_1A34CCDA0();
  swift_getWitnessTable();
  v123 = sub_1A34CC8A0();
  v124 = sub_1A34CAC30();
  v114 = sub_1A34CAC30();
  v115 = sub_1A34CAC30();
  v8 = sub_1A34CAC30();
  v110 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v101 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v100 = &v88 - v11;
  v117 = v12;
  v116 = sub_1A34CD890();
  v113 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v111 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v112 = &v88 - v15;
  v92 = v7;
  v91 = sub_1A34CD890();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v88 - v16;
  v106 = sub_1A34CCAB0();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = (&v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_1A34CCAE0();
  v122 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v103 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v121 = &v88 - v21;
  v120 = v4;
  v119 = sub_1A34CD890();
  v107 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v97 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v88 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8578);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v88 - v27;
  v29 = sub_1A34CB5F0();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v108;
  v34 = *(sub_1A33663E0() + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_suggestionStore);
  sub_1A34C9010();

  v152 = v34;
  swift_getAtKeyPath();

  v99 = v153;
  v102 = v154;
  v125 = v155;
  v35 = sub_1A3368210();
  if ((v35 & 0xFF00) == 0x200)
  {
    v36 = (sub_1A3368210() & 1) != 0 && *(v125 + 16) < 0xCuLL;
  }

  else
  {
    v36 = (v35 >> 8) & 1;
  }

  sub_1A336837C(v126, v32);
  v37 = *(v26 + 48);
  *v28 = v36;
  (*(v30 + 32))(&v28[v37], v32, v29);
  v38 = (*(v30 + 88))(&v28[v37], v29);
  v39 = *MEMORY[0x1E697FF38];
  v109 = v18;
  if ((v36 & 1) == 0)
  {
    if (v38 == v39)
    {
      v40 = 10.0;
      v41 = 4;
      goto LABEL_15;
    }

    v40 = 18.0;
    v41 = 4;
    if (v38 == *MEMORY[0x1E697FF40])
    {
      goto LABEL_15;
    }

LABEL_14:
    sub_1A3288FDC(v28, &qword_1EB0C8578);
    v40 = 10.0;
    goto LABEL_15;
  }

  if (v38 != v39)
  {
    v40 = 20.0;
    v41 = 3;
    if (v38 == *MEMORY[0x1E697FF40])
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v40 = 17.0;
  v41 = 3;
LABEL_15:
  v42 = v107;
  v43 = *(v107 + 16);
  v95 = *(v126 + 18);
  v44 = v119;
  v96 = v43;
  v43(v25, v33 + v95, v119);
  v45 = *(v120 - 8);
  v94 = *(v45 + 48);
  v93 = v45 + 48;
  v46 = v94(v25, 1) != 1;
  v47 = *(v42 + 8);
  v47(v25, v44);
  v48 = v41 - v46;
  v49 = v33;
  if (sub_1A3368A28() & 1) != 0 || (v50 = sub_1A3368210(), v51 = v48, (v50))
  {
    v51 = *(v125 + 16);
  }

  v98 = v51;
  v107 = v48;
  v52 = 70.0;
  if (v36)
  {
    v52 = 100.0;
  }

  v53 = v104;
  *v104 = v52;
  v53[1] = INFINITY;
  (*(v105 + 104))(v53, *MEMORY[0x1E697D748], v106);
  v54 = v121;
  sub_1A34CCAF0();
  v55 = v103;
  v56 = v109;
  (*(v122 + 16))(v103, v54, v109);
  v57 = sub_1A3366284(v55, v41);
  v58 = MEMORY[0x1E697E5C0];
  v59 = MEMORY[0x1E697DD90];
  v60 = v49;
  if (!*(v125 + 16) && (v61 = v49 + v95, v62 = v97, v63 = v119, v96(v97, v61, v119), v64 = v58, v65 = (v94)(v62, 1, v120), v47(v62, v63), v66 = v65 == 1, v58 = v64, v66) && (v67 = v90, v68 = v89, v69 = v91, (*(v90 + 16))(v89, v60 + *(v126 + 19), v91), v70 = (*(*(v92 - 8) + 48))(v68, 1), (*(v67 + 8))(v68, v69), v66 = v70 == 1, v58 = v64, v66))
  {
    (*(v122 + 8))(v121, v56);

    v71 = v111;
    v72 = v64;
    (*(v110 + 56))(v111, 1, 1, v117);
    WitnessTable = swift_getWitnessTable();
    v134 = MEMORY[0x1E697E070];
    v131 = swift_getWitnessTable();
    v73 = MEMORY[0x1E697E040];
    v132 = MEMORY[0x1E697E040];
    v129 = swift_getWitnessTable();
    v130 = v72;
    v127 = swift_getWitnessTable();
    v128 = v59;
    swift_getWitnessTable();
  }

  else
  {
    v74 = v101;
    sub_1A3368CF8(v99, v102, v125, v98, v57, v126, v101, v40);

    (*(v122 + 8))(v121, v56);
    v150 = swift_getWitnessTable();
    v151 = MEMORY[0x1E697E070];
    v148 = swift_getWitnessTable();
    v149 = MEMORY[0x1E697E040];
    v146 = swift_getWitnessTable();
    v147 = v58;
    v144 = swift_getWitnessTable();
    v145 = v59;
    v75 = v117;
    v76 = swift_getWitnessTable();
    v77 = v59;
    v78 = v100;
    sub_1A3345BC8(v74, v75, v76);
    v79 = v110;
    v80 = *(v110 + 8);
    v80(v74, v75);
    sub_1A3345BC8(v78, v75, v76);
    v81 = v78;
    v59 = v77;
    v73 = MEMORY[0x1E697E040];
    v80(v81, v75);
    v71 = v111;
    (*(v79 + 32))(v111, v74, v75);
    (*(v79 + 56))(v71, 0, 1, v75);
  }

  v82 = v112;
  sub_1A34480D0(v71, v112);
  v83 = *(v113 + 8);
  v84 = v71;
  v85 = v116;
  v83(v84, v116);
  v142 = swift_getWitnessTable();
  v143 = MEMORY[0x1E697E070];
  v140 = swift_getWitnessTable();
  v141 = v73;
  v138 = swift_getWitnessTable();
  v139 = MEMORY[0x1E697E5C0];
  v136 = swift_getWitnessTable();
  v137 = v59;
  v135 = swift_getWitnessTable();
  v86 = swift_getWitnessTable();
  sub_1A3345BC8(v82, v85, v86);
  return (v83)(v82, v85);
}

uint64_t sub_1A336E08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = *(a1 + 24);
  v42 = sub_1A34CD890();
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v33 - v5;
  v6 = *(a1 + 16);
  v36 = sub_1A34CD890();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v33 - v7;
  v8 = *(a1 + 32);
  v40 = v6;
  *&v9 = v6;
  v43 = v4;
  *(&v9 + 1) = v4;
  v35 = v8;
  v49 = v8;
  v48 = v9;
  v10 = type metadata accessor for VisualIdentitySuggestionSection();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v37 = &v33 - v15;
  v16 = sub_1A34CD890();
  v45 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v44 = &v33 - v20;
  v21 = *(sub_1A33663E0() + 16);

  v22 = sub_1A3335BF0(*(v2 + 16), v21);

  if (v22)
  {
    v23 = v38;
    (*(v34 + 16))(v38, v2 + *(a1 + 56), v36);
    v24 = v41;
    (*(v39 + 16))(v41, v2 + *(a1 + 60), v42);
    v25 = sub_1A34C9010();
    sub_1A3368A88(v25, v23, v24, v40, v43, v13);
    WitnessTable = swift_getWitnessTable();
    v27 = v37;
    sub_1A3345BC8(v13, v10, WitnessTable);
    v28 = *(v11 + 8);
    v28(v13, v10);
    sub_1A3345BC8(v27, v10, WitnessTable);
    v28(v27, v10);
    (*(v11 + 32))(v18, v13, v10);
    (*(v11 + 56))(v18, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v18, 1, 1, v10);
    swift_getWitnessTable();
  }

  v29 = v44;
  sub_1A34480D0(v18, v44);
  v30 = *(v45 + 8);
  v30(v18, v16);
  v47 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  sub_1A3345BC8(v29, v16, v31);
  return (v30)(v29, v16);
}

uint64_t sub_1A336E5A4()
{
  sub_1A336E6EC();
  sub_1A34CB0E0();
  return v1 | (v2 << 16);
}

uint64_t sub_1A336E5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A336F200();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A336E65C()
{
  sub_1A336E698();
  sub_1A34CB0E0();
  return v1;
}

unint64_t sub_1A336E698()
{
  result = qword_1EB0C0948;
  if (!qword_1EB0C0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0948);
  }

  return result;
}

unint64_t sub_1A336E6EC()
{
  result = qword_1EB0C0950;
  if (!qword_1EB0C0950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0950);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisualIdentitySuggestionSectionStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for VisualIdentitySuggestionSectionStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void sub_1A336E874()
{
  sub_1A32BAFB8(319, &qword_1EB0C1178, type metadata accessor for VisualIdentityEditorViewModel);
  if (v0 <= 0x3F)
  {
    sub_1A33706D0(319, &qword_1EB0C1168, &type metadata for VisualIdentitySuggestionSectionStyle, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A32BAFB8(319, &qword_1ED8534C8, MEMORY[0x1E697FF50]);
      if (v2 <= 0x3F)
      {
        sub_1A336F124();
        if (v3 <= 0x3F)
        {
          sub_1A33706D0(319, &qword_1ED853490, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1A336F188();
            if (v5 <= 0x3F)
            {
              sub_1A34CD890();
              if (v6 <= 0x3F)
              {
                sub_1A34CD890();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A336EA10(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1A34CB5F0() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(a3 + 24);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  v12 = *(v8 - 8);
  if (v11)
  {
    v13 = v11 - 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v12 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v13 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v9 + 64);
  if (v11)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  v20 = *(v6 + 80);
  v21 = *(v10 + 80);
  v22 = *(v12 + 80);
  v23 = *(v12 + 64);
  if (v14)
  {
    v24 = v23;
  }

  else
  {
    v24 = v23 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v25 = v20 & 0xF8;
  v26 = v25 | 7;
  v27 = v7 + 24;
  v28 = v21 + 8;
  v29 = v19 + v22;
  if (a2 <= v17)
  {
    goto LABEL_44;
  }

  v30 = v24 + ((v29 + ((v28 + ((((v27 + ((v25 + 32) & ~v26)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v21)) & ~v22);
  v31 = 8 * v30;
  if (v30 <= 3)
  {
    v33 = ((a2 - v17 + ~(-1 << v31)) >> v31) + 1;
    if (HIWORD(v33))
    {
      v32 = *(a1 + v30);
      if (!v32)
      {
        goto LABEL_44;
      }

      goto LABEL_31;
    }

    if (v33 > 0xFF)
    {
      v32 = *(a1 + v30);
      if (!*(a1 + v30))
      {
        goto LABEL_44;
      }

      goto LABEL_31;
    }

    if (v33 < 2)
    {
LABEL_44:
      v37 = ((((v27 + (((a1 & 0xFFFFFFFFFFFFFFF8) + v26 + 25) & ~v26)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
      if ((v16 & 0x80000000) == 0)
      {
        v38 = *v37;
        if (*v37 >= 0xFFFFFFFF)
        {
          LODWORD(v38) = -1;
        }

        return (v38 + 1);
      }

      v40 = (v37 + v28) & ~v21;
      if (v13 == v17)
      {
        if (v11 < 2)
        {
          return 0;
        }

        v41 = (*(v10 + 48))(v40);
      }

      else
      {
        v41 = (*(*(v8 - 8) + 48))((v29 + v40) & ~v22, v14, v8);
      }

      if (v41 >= 2)
      {
        return v41 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v32 = *(a1 + v30);
  if (!*(a1 + v30))
  {
    goto LABEL_44;
  }

LABEL_31:
  v34 = (v32 - 1) << v31;
  if (v30 > 3)
  {
    v34 = 0;
  }

  if (v30)
  {
    if (v30 <= 3)
    {
      v35 = v30;
    }

    else
    {
      v35 = 4;
    }

    if (v35 > 2)
    {
      if (v35 == 3)
      {
        v36 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v36 = *a1;
      }
    }

    else if (v35 == 1)
    {
      v36 = *a1;
    }

    else
    {
      v36 = *a1;
    }
  }

  else
  {
    v36 = 0;
  }

  return v17 + (v36 | v34) + 1;
}

void sub_1A336ED2C(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_1A34CB5F0() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a4 + 24);
  v15 = *(v14 - 8);
  v16 = *(v15 + 84);
  v17 = *(*(*(a4 + 16) - 8) + 64);
  v18 = *(v9 + 80);
  v19 = *(v11 + 80);
  v20 = *(v15 + 80);
  v21 = v16 - 1;
  if (!v16)
  {
    v21 = 0;
  }

  if (v13 <= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v13;
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v23 = 0x7FFFFFFF;
  }

  else
  {
    v23 = v22;
  }

  if (!v12)
  {
    ++v17;
  }

  v24 = v18 & 0xF8 | 7;
  v25 = v10 + 24;
  v26 = (v19 + 8 + ((((v10 + 24 + (((v18 & 0xF8) + 32) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v19;
  v27 = v17 + v20;
  v28 = (v17 + v20 + v26) & ~v20;
  if (v16)
  {
    v29 = *(v15 + 64);
  }

  else
  {
    v29 = *(v15 + 64) + 1;
  }

  v30 = v28 + v29;
  if (a3 <= v23)
  {
    goto LABEL_31;
  }

  if (v30 <= 3)
  {
    v31 = ((a3 - v23 + ~(-1 << (8 * v30))) >> (8 * v30)) + 1;
    if (HIWORD(v31))
    {
      v8 = 4;
      if (v23 >= a2)
      {
        goto LABEL_41;
      }

      goto LABEL_32;
    }

    if (v31 < 0x100)
    {
      v32 = 1;
    }

    else
    {
      v32 = 2;
    }

    if (v31 >= 2)
    {
      v8 = v32;
    }

    else
    {
      v8 = 0;
    }

LABEL_31:
    if (v23 >= a2)
    {
      goto LABEL_41;
    }

    goto LABEL_32;
  }

  v8 = 1;
  if (v23 >= a2)
  {
LABEL_41:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *(a1 + v30) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_48;
      }

      *(a1 + v30) = 0;
    }

    else if (v8)
    {
      *(a1 + v30) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    if (!a2)
    {
      return;
    }

LABEL_48:
    v36 = ((((v25 + (((a1 & 0xFFFFFFFFFFFFFFF8) + v24 + 25) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    if ((v22 & 0x80000000) != 0)
    {
      v38 = (v36 + v19 + 8) & ~v19;
      if (v13 == v23)
      {
        if (v12 >= 2)
        {
          v39 = *(v11 + 56);

          v39(v38, a2 + 1);
        }
      }

      else
      {
        v40 = *(v15 + 56);
        v41 = (v27 + v38) & ~v20;

        v40(v41, a2 + 1, v16, v14);
      }
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v37 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v37 = a2 - 1;
      }

      *v36 = v37;
    }

    return;
  }

LABEL_32:
  v33 = ~v23 + a2;
  if (v30 >= 4)
  {
    bzero(a1, v30);
    *a1 = v33;
    v34 = 1;
    if (v8 > 1)
    {
      goto LABEL_68;
    }

    goto LABEL_65;
  }

  v34 = (v33 >> (8 * v30)) + 1;
  if (!v30)
  {
LABEL_64:
    if (v8 > 1)
    {
      goto LABEL_68;
    }

    goto LABEL_65;
  }

  v35 = v33 & ~(-1 << (8 * v30));
  bzero(a1, v30);
  if (v30 == 3)
  {
    *a1 = v35;
    *(a1 + 2) = BYTE2(v35);
    goto LABEL_64;
  }

  if (v30 == 2)
  {
    *a1 = v35;
    if (v8 > 1)
    {
LABEL_68:
      if (v8 == 2)
      {
        *(a1 + v30) = v34;
      }

      else
      {
        *(a1 + v30) = v34;
      }

      return;
    }
  }

  else
  {
    *a1 = v33;
    if (v8 > 1)
    {
      goto LABEL_68;
    }
  }

LABEL_65:
  if (v8)
  {
    *(a1 + v30) = v34;
  }
}

void sub_1A336F124()
{
  if (!qword_1EB0C1138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8548);
    v0 = sub_1A34CA5F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C1138);
    }
  }
}

void sub_1A336F188()
{
  if (!qword_1EB0C0068)
  {
    type metadata accessor for VisualIdentitySuggestionStore(255);
    v0 = sub_1A34CDFB0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C0068);
    }
  }
}

unint64_t sub_1A336F200()
{
  result = qword_1EB0C8550;
  if (!qword_1EB0C8550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8548);
    sub_1A336F284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8550);
  }

  return result;
}

unint64_t sub_1A336F284()
{
  result = qword_1ED853678;
  if (!qword_1ED853678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED853678);
  }

  return result;
}

unint64_t sub_1A336F2D8()
{
  result = qword_1EB0C2178;
  if (!qword_1EB0C2178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2178);
  }

  return result;
}

uint64_t sub_1A336F32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v17 - v13;
  v12();
  sub_1A3345BC8(v11, a4, a6);
  v15 = *(v8 + 8);
  v15(v11, a4);
  sub_1A3345BC8(v14, a4, a6);
  return (v15)(v14, a4);
}

uint64_t sub_1A336F460(CGFloat a1, CGFloat a2, double a3, CGFloat a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1A34CA8A0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v21[-v17];
  sub_1A34CA9B0();
  sub_1A336F77C(&qword_1ED8542D8, MEMORY[0x1E697E3C0]);
  sub_1A34CD5B0();
  sub_1A34CD5E0();
  result = sub_1A34CD5D0();
  if (result == 2)
  {
    sub_1A3367C1C(a7, a3);
    sub_1A34CA9C0();
    sub_1A34CA9C0();
    type metadata accessor for PlaceholderGridLayout.Cache(0);
    sub_1A34CCDC0();
    v22 = 0;
    v21[0] = 0;
    sub_1A34CA890();
    v23.origin.x = a1;
    v23.origin.y = a2;
    v23.size.width = a3;
    v23.size.height = a4;
    CGRectGetMidY(v23);
    sub_1A34CCE20();
    v22 = 0;
    v21[0] = 0;
    sub_1A34CA890();
    v20 = *(v13 + 8);
    v20(v15, v12);
    return (v20)(v18, v12);
  }

  return result;
}

uint64_t sub_1A336F738(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1A336F77C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A336F7C4()
{
  result = qword_1EB0C0D08;
  if (!qword_1EB0C0D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8558);
    sub_1A336F848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0D08);
  }

  return result;
}

unint64_t sub_1A336F848()
{
  result = qword_1EB0C0D10;
  if (!qword_1EB0C0D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8580);
    sub_1A3284D0C(&qword_1EB0C04C8, &qword_1EB0C8588);
    sub_1A3284D0C(&unk_1ED8534A0, &unk_1EB0C8FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0D10);
  }

  return result;
}

unint64_t sub_1A336F93C()
{
  result = qword_1EB0C85C0;
  if (!qword_1EB0C85C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C85B0);
    sub_1A336F9F8();
    sub_1A336F77C(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C85C0);
  }

  return result;
}

unint64_t sub_1A336F9F8()
{
  result = qword_1EB0C85C8;
  if (!qword_1EB0C85C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C85A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C85A0);
    sub_1A34CAD20();
    sub_1A3284D0C(&qword_1EB0C85D0, &qword_1EB0C85A0);
    sub_1A336F77C(&qword_1EB0C0998, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1A3284D0C(&qword_1EB0C0790, &qword_1EB0C58B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C85C8);
  }

  return result;
}

unint64_t sub_1A336FB70()
{
  result = qword_1EB0C85D8;
  if (!qword_1EB0C85D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5988);
    sub_1A336F77C(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C85D8);
  }

  return result;
}

uint64_t sub_1A336FC2C()
{
  type metadata accessor for VisualIdentitySuggestionSection();

  return sub_1A336B160();
}

unint64_t sub_1A336FCE4()
{
  result = qword_1EB0C85F0;
  if (!qword_1EB0C85F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C85E8);
    sub_1A3284D0C(&qword_1EB0C85F8, &qword_1EB0C8600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C85F0);
  }

  return result;
}

unint64_t sub_1A336FDC0()
{
  result = qword_1EB0C8620;
  if (!qword_1EB0C8620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8620);
  }

  return result;
}

unint64_t sub_1A336FE44()
{
  result = qword_1EB0C0400;
  if (!qword_1EB0C0400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8568);
    sub_1A336F77C(&qword_1EB0C1588, type metadata accessor for VisualIdentitySuggestionListItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0400);
  }

  return result;
}

void sub_1A336FF00()
{
  sub_1A32BAFB8(319, &qword_1EB0C1178, type metadata accessor for VisualIdentityEditorViewModel);
  if (v0 <= 0x3F)
  {
    sub_1A336F188();
    if (v1 <= 0x3F)
    {
      sub_1A34CD890();
      if (v2 <= 0x3F)
      {
        sub_1A34CD890();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A336FFD8(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v6 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v13;
  }

  v14 = *(v4 + 80);
  v15 = *(v8 + 80);
  v16 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v16;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_39;
  }

  v18 = v16 + ((v13 + v15 + ((v14 + 24) & ~v14)) & ~v15);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v21 < 2)
    {
LABEL_39:
      v25 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v11 & 0x80000000) == 0)
      {
        v26 = *(v25 + 16);
        if (v26 >= 0xFFFFFFFF)
        {
          LODWORD(v26) = -1;
        }

        return (v26 + 1);
      }

      v28 = (v25 + v14 + 24) & ~v14;
      if (v6 == v12)
      {
        if (v5 < 2)
        {
          return 0;
        }

        v29 = (*(v4 + 48))(v28);
      }

      else
      {
        v29 = (*(v8 + 48))((v28 + v13 + v15) & ~v15, v9, v7);
      }

      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_39;
  }

LABEL_26:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = v18;
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v12 + (v24 | v22) + 1;
}

void sub_1A3370258(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  if (v8)
  {
    v11 = v8 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v9 - 8);
  v13 = *(v10 + 84);
  v14 = *(v7 + 80);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  v17 = v13 - 1;
  if (!v13)
  {
    v17 = 0;
  }

  if (v11 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  if (v8)
  {
    v20 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v20 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  if (v13)
  {
    v21 = v16;
  }

  else
  {
    v21 = v16 + 1;
  }

  v22 = ((v20 + v15 + ((v14 + 24) & ~v14)) & ~v15) + v21;
  v23 = a3 >= v19;
  v24 = a3 - v19;
  if (v24 == 0 || !v23)
  {
LABEL_30:
    if (v19 < a2)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  if (v22 > 3)
  {
    v6 = 1;
    if (v19 < a2)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  v25 = ((v24 + ~(-1 << (8 * v22))) >> (8 * v22)) + 1;
  if (!HIWORD(v25))
  {
    if (v25 < 0x100)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    if (v25 >= 2)
    {
      v6 = v26;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_30;
  }

  v6 = 4;
  if (v19 < a2)
  {
LABEL_31:
    v27 = ~v19 + a2;
    if (v22 < 4)
    {
      v28 = (v27 >> (8 * v22)) + 1;
      if (v22)
      {
        v29 = v27 & ~(-1 << (8 * v22));
        bzero(a1, v22);
        if (v22 != 3)
        {
          if (v22 == 2)
          {
            *a1 = v29;
            if (v6 > 1)
            {
LABEL_67:
              if (v6 == 2)
              {
                *(a1 + v22) = v28;
              }

              else
              {
                *(a1 + v22) = v28;
              }

              return;
            }
          }

          else
          {
            *a1 = v27;
            if (v6 > 1)
            {
              goto LABEL_67;
            }
          }

          goto LABEL_64;
        }

        *a1 = v29;
        *(a1 + 2) = BYTE2(v29);
      }

      if (v6 > 1)
      {
        goto LABEL_67;
      }
    }

    else
    {
      bzero(a1, v22);
      *a1 = v27;
      v28 = 1;
      if (v6 > 1)
      {
        goto LABEL_67;
      }
    }

LABEL_64:
    if (v6)
    {
      *(a1 + v22) = v28;
    }

    return;
  }

LABEL_40:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    }

    *(a1 + v22) = 0;
  }

  else if (v6)
  {
    *(a1 + v22) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_47;
  }

  if (!a2)
  {
    return;
  }

LABEL_47:
  v30 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v18 & 0x80000000) != 0)
  {
    v32 = (v30 + v14 + 24) & ~v14;
    if (v11 == v19)
    {
      if (v8 >= 2)
      {
        v33 = *(v7 + 56);
        v34 = a2 + 1;

        v33(v32, v34);
      }
    }

    else
    {
      v35 = *(v12 + 56);
      v36 = (v32 + v20 + v15) & ~v15;
      v37 = a2 + 1;

      v35(v36, v37, v13, v9);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v31 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v31 = a2 - 1;
    }

    *(v30 + 16) = v31;
  }
}

void sub_1A33705DC()
{
  sub_1A32BAFB8(319, &qword_1EB0C1178, type metadata accessor for VisualIdentityEditorViewModel);
  if (v0 <= 0x3F)
  {
    sub_1A33706D0(319, &qword_1EB0C1128, MEMORY[0x1E69E63B0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A336F124();
      if (v2 <= 0x3F)
      {
        type metadata accessor for VisualIdentity(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A33706D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A3370720(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1A3370768(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1A33707EC()
{
  result = qword_1EB0C86B0;
  if (!qword_1EB0C86B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C86B0);
  }

  return result;
}

unint64_t sub_1A3370878()
{
  result = qword_1EB0C2288;
  if (!qword_1EB0C2288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2288);
  }

  return result;
}

uint64_t sub_1A3370908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3370970(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A33709D8()
{
  v1 = *(type metadata accessor for VisualIdentitySuggestionListItem(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A3366D84(v2);
}

uint64_t sub_1A3370A40(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3370AC4()
{
  result = qword_1EB0C0E08;
  if (!qword_1EB0C0E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8720);
    sub_1A34CAD20();
    sub_1A3284D0C(&unk_1EB0C0530, &qword_1EB0C8720);
    sub_1A336F77C(&qword_1EB0C0998, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1A3284D0C(&qword_1EB0C0790, &qword_1EB0C58B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0E08);
  }

  return result;
}

void sub_1A3370C64()
{
  sub_1A34CCAE0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1A3370D0C()
{
  result = qword_1EB0C8750;
  if (!qword_1EB0C8750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C86D0);
    sub_1A3284D0C(&qword_1EB0C8758, &qword_1EB0C86C8);
    sub_1A3284D0C(&qword_1EB0C8760, &qword_1EB0C86F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8750);
  }

  return result;
}

unint64_t sub_1A3370DF0()
{
  result = qword_1EB0C0AA8;
  if (!qword_1EB0C0AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8768);
    sub_1A3370A40(&unk_1EB0C0BB0, &qword_1EB0C8730, &unk_1A34EA570, sub_1A3370AC4);
    sub_1A336F77C(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0AA8);
  }

  return result;
}

uint64_t sub_1A3370EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x80000001A350F0F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A34CDE30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A3370F90(uint64_t a1)
{
  v2 = sub_1A337116C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3370FCC(uint64_t a1)
{
  v2 = sub_1A337116C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContactLikeness.Metadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8770);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A32F74C0(v7, v8);
  sub_1A337116C();
  sub_1A34CDFA0();
  v10 = v7;
  v11 = v8;
  sub_1A32ABF84();
  sub_1A34CDD70();
  sub_1A31EEE60(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A337116C()
{
  result = qword_1EB0C8778;
  if (!qword_1EB0C8778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8778);
  }

  return result;
}

uint64_t ContactLikeness.Metadata.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8780);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A337116C();
  sub_1A34CDF90();
  if (!v2)
  {
    sub_1A32ABE6C();
    sub_1A34CDCE0();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A33713A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A3371400(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

unint64_t sub_1A3371470()
{
  result = qword_1EB0C8788;
  if (!qword_1EB0C8788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8788);
  }

  return result;
}

unint64_t sub_1A33714C8()
{
  result = qword_1EB0C8790;
  if (!qword_1EB0C8790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8790);
  }

  return result;
}

unint64_t sub_1A3371520()
{
  result = qword_1EB0C8798;
  if (!qword_1EB0C8798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8798);
  }

  return result;
}

uint64_t type metadata accessor for ContactCardLabeledPropertyView()
{
  result = qword_1EB0C1748;
  if (!qword_1EB0C1748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A33715E8()
{
  sub_1A31EF4D8();
  if (v0 <= 0x3F)
  {
    sub_1A337169C();
    if (v1 <= 0x3F)
    {
      sub_1A3371700();
      if (v2 <= 0x3F)
      {
        sub_1A3371764();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A337169C()
{
  if (!qword_1EB0C0060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5C80);
    v0 = sub_1A34CD890();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C0060);
    }
  }
}

unint64_t sub_1A3371700()
{
  result = qword_1EB0C1328;
  if (!qword_1EB0C1328)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB0C1328);
  }

  return result;
}

void sub_1A3371764()
{
  if (!qword_1EB0C09F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C87A8);
    sub_1A34CB970();
    v0 = sub_1A34CAC30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C09F0);
    }
  }
}

uint64_t sub_1A33717F4@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C4C68);
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C87B0);
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C87B8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  *v10 = sub_1A34CB110();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C87C0) + 44)];
  v46 = v1;
  sub_1A3371F28(v1, v11);
  v10[*(v8 + 36)] = 0;
  v12 = type metadata accessor for ContactCardLabeledPropertyView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1A3206628(v1, &v46 - v15);
  v16 = *(v13 + 80);
  v17 = swift_allocObject();
  sub_1A3206690(&v46 - v15, v17 + ((v16 + 16) & ~v16));
  v18 = sub_1A3374118();
  sub_1A34CBF50();

  sub_1A3288FDC(v10, &qword_1EB0C87B8);
  v19 = sub_1A34CB7E0();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A34CB7D0();
  v54 = v8;
  v55 = v18;
  swift_getOpaqueTypeConformance2();
  v23 = v47;
  sub_1A34CC140();
  (*(v20 + 8))(v22, v19);
  v24 = (v48[1])(v7, v23);
  MEMORY[0x1EEE9AC00](v24);
  sub_1A3206628(v46, &v46 - v15);
  sub_1A34CD450();
  v25 = sub_1A34CD440();
  v26 = (v16 + 32) & ~v16;
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E85E0];
  *(v27 + 16) = v25;
  *(v27 + 24) = v28;
  sub_1A3206690(&v46 - v15, v27 + v26);
  v29 = sub_1A34CD4A0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = &v46 - v32;
  sub_1A34CD460();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v47 = sub_1A34CAAB0();
    v48 = &v46;
    v46 = *(v47 - 8);
    MEMORY[0x1EEE9AC00](v47);
    v35 = &v46 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_1A34CDAD0();

    v54 = 0xD000000000000040;
    v55 = 0x80000001A350F110;
    v53 = 90;
    v36 = sub_1A34CDDF0();
    MEMORY[0x1A58EEA30](v36);

    v38 = MEMORY[0x1EEE9AC00](v37);
    (*(v30 + 16))(&v46 - v32, v33, v29, v38);
    sub_1A34CAAA0();
    (*(v30 + 8))(v33, v29);
    v39 = v51;
    (*(v49 + 32))(v51, v52, v50);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C4C70);
    return (*(v46 + 32))(v39 + *(v40 + 36), v35, v47);
  }

  else
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C4C78);
    v43 = v51;
    v44 = (v51 + *(v42 + 36));
    v45 = sub_1A34CA8D0();
    (*(v30 + 32))(&v44[*(v45 + 20)], &v46 - v32, v29);
    *v44 = &unk_1A34EA8E8;
    *(v44 + 1) = v27;
    return (*(v49 + 32))(v43, v52, v50);
  }
}

uint64_t sub_1A3371F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_1A34CB800();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C87D0);
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v44 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C87D8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C87E0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C87E8);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v44 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v44 - v25;
  *v16 = sub_1A34CB290();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C87F0);
  sub_1A3372400(a1, &v16[*(v27 + 44)]);
  sub_1A34CCC90();
  v28 = 1;
  sub_1A34CADA0();
  sub_1A329D98C(v16, v23, &qword_1EB0C87E0);
  v29 = &v23[*(v18 + 44)];
  v30 = v53;
  *(v29 + 4) = v52;
  *(v29 + 5) = v30;
  *(v29 + 6) = v54;
  v31 = v49;
  *v29 = v48;
  *(v29 + 1) = v31;
  v32 = v51;
  *(v29 + 2) = v50;
  *(v29 + 3) = v32;
  sub_1A329D98C(v23, v26, &qword_1EB0C87E8);
  v33 = (a1 + *(type metadata accessor for ContactCardLabeledPropertyView() + 24));
  v34 = v33[3];
  v35 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v36 = (*(v35 + 48))(v34, v35);
  if (v36)
  {
    v37 = v36;
    sub_1A34CB7F0();
    v38 = v46;
    v39 = v7 + *(v46 + 36);
    sub_1A34CB8D0();
    *&v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8800) + 36)] = 256;
    *v7 = v37;
    sub_1A33742D8(v7, v13);
    v28 = 0;
    v40 = v38;
  }

  else
  {
    v40 = v46;
  }

  (*(v45 + 56))(v13, v28, 1, v40);
  sub_1A328D790(v26, v20, &qword_1EB0C87E8);
  sub_1A328D790(v13, v10, &qword_1EB0C87D8);
  v41 = v47;
  sub_1A328D790(v20, v47, &qword_1EB0C87E8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C87F8);
  sub_1A328D790(v10, v41 + *(v42 + 48), &qword_1EB0C87D8);
  sub_1A3288FDC(v13, &qword_1EB0C87D8);
  sub_1A3288FDC(v26, &qword_1EB0C87E8);
  sub_1A3288FDC(v10, &qword_1EB0C87D8);
  return sub_1A3288FDC(v20, &qword_1EB0C87E8);
}

uint64_t sub_1A3372400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for DetailsBodyText();
  v41 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8808);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8810);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  *v16 = sub_1A34CB110();
  *(v16 + 1) = 0;
  v17 = 1;
  v16[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8818);
  sub_1A3372848(a1, &v16[*(v18 + 44)]);
  v19 = (a1 + *(type metadata accessor for ContactCardLabeledPropertyView() + 24));
  v21 = v19[3];
  v20 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v21);
  if (((*(v20 + 24))(v21, v20) & 1) == 0)
  {
    v22 = v19[3];
    v23 = v19[4];
    __swift_project_boxed_opaque_existential_1(v19, v22);
    v24 = (*(v23 + 16))(v22, v23);
    v39 = v25;
    v40 = v24;
    v26 = v19[3];
    v27 = v19[4];
    __swift_project_boxed_opaque_existential_1(v19, v26);
    LOBYTE(v27) = (*(v27 + 96))(v26, v27);
    v28 = v19[3];
    v29 = v19[4];
    __swift_project_boxed_opaque_existential_1(v19, v28);
    v30 = (*(v29 + 56))(v28, v29);
    *v5 = swift_getKeyPath();
    v5[264] = 0;
    *(v5 + 34) = swift_getKeyPath();
    v5[280] = 0;
    v31 = v3[6];
    *&v5[v31] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7C70);
    swift_storeEnumTagMultiPayload();
    v32 = &v5[v3[7]];
    v33 = v39;
    *v32 = v40;
    *(v32 + 1) = v33;
    v5[v3[9]] = v27 & 1;
    v5[v3[8]] = v30 & 1;
    sub_1A337439C(v5, v10);
    v17 = 0;
  }

  (*(v41 + 56))(v10, v17, 1, v3);
  sub_1A328D790(v16, v13, &qword_1EB0C8810);
  v34 = v42;
  sub_1A328D790(v10, v42, &qword_1EB0C8808);
  v35 = v43;
  sub_1A328D790(v13, v43, &qword_1EB0C8810);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8820);
  sub_1A328D790(v34, v35 + *(v36 + 48), &qword_1EB0C8808);
  sub_1A3288FDC(v10, &qword_1EB0C8808);
  sub_1A3288FDC(v16, &qword_1EB0C8810);
  sub_1A3288FDC(v34, &qword_1EB0C8808);
  return sub_1A3288FDC(v13, &qword_1EB0C8810);
}

uint64_t sub_1A3372848@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8828);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8830);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8838);
  v11 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  sub_1A3372D9C(a1, v10);
  v55 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E80);
  sub_1A3374408();
  sub_1A3284D0C(&unk_1EB0C0510, &unk_1EB0C9E80);
  v53 = v15;
  sub_1A34CBEC0();
  sub_1A3288FDC(v10, &qword_1EB0C8830);
  v16 = type metadata accessor for ContactCardLabeledPropertyView();
  v17 = (a1 + *(v16 + 24));
  v18 = v17[3];
  v19 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v18);
  if ((*(v19 + 64))(v18, v19))
  {
    sub_1A328D790(a1 + *(v16 + 28), v7, &qword_1EB0C87A0);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C87A0);
  (*(*(v21 - 8) + 56))(v7, v20, 1, v21);
  v22 = v17[3];
  v23 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v22);
  (*(v23 + 72))(v22, v23);
  v24 = v7;
  if (v25)
  {
    sub_1A33736D4(&v56);

    v26 = v57;
    v27 = v58;
    v28 = v59;
    v49 = v56;
    sub_1A3285BB4(v56, v57, v58);
  }

  else
  {
    v49 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  v30 = v17[3];
  v29 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v30);
  v31 = (*(v29 + 88))(v30, v29);
  v47 = v31 & 1;
  v48 = v31;
  v32 = v11;
  v33 = *(v11 + 16);
  v34 = v54;
  v35 = v50;
  v33(v54, v53, v50);
  v46 = v24;
  v36 = v24;
  v37 = v51;
  sub_1A328D790(v36, v51, &qword_1EB0C8828);
  v38 = v52;
  v33(v52, v34, v35);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8850);
  sub_1A328D790(v37, &v38[v39[12]], &qword_1EB0C8828);
  v40 = &v38[v39[16]];
  v41 = v49;
  *v40 = v49;
  v40[1] = v26;
  v40[2] = v27;
  v40[3] = v28;
  v42 = &v38[v39[20]];
  sub_1A334071C(v41, v26, v27, v28);
  sub_1A3340760(v41, v26, v27, v28);
  *v42 = 0;
  v43 = v48;
  v42[8] = v47;
  v42[9] = (v43 & 1) == 0;
  sub_1A3288FDC(v46, &qword_1EB0C8828);
  v44 = *(v32 + 8);
  v44(v53, v35);
  sub_1A3340760(v41, v26, v27, v28);
  sub_1A3288FDC(v37, &qword_1EB0C8828);
  return (v44)(v54, v35);
}

uint64_t sub_1A3372D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8848);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8868);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v27 - v7;
  v9 = type metadata accessor for DetailsLabelText();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a1 + *(type metadata accessor for ContactCardLabeledPropertyView() + 24));
  v14 = v12[3];
  v13 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v14);
  v15 = (*(v13 + 80))(v14, v13);
  v16 = sub_1A3373108();
  v18 = v17;
  KeyPath = swift_getKeyPath();
  if (v15)
  {
    *v5 = KeyPath;
    v5[264] = 0;
    v20 = *(v9 + 20);
    *&v5[v20] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
    swift_storeEnumTagMultiPayload();
    v21 = &v5[*(v9 + 24)];
    *v21 = v16;
    v21[1] = v18;
    v22 = swift_getKeyPath();
    v23 = &v5[*(v3 + 36)];
    *v23 = v22;
    v23[1] = v15;
    sub_1A328D790(v5, v8, &qword_1EB0C8848);
    swift_storeEnumTagMultiPayload();
    sub_1A3374548();
    sub_1A33747D4(&qword_1EB0C2770, type metadata accessor for DetailsLabelText);
    sub_1A34CB3E0();
    return sub_1A3288FDC(v5, &qword_1EB0C8848);
  }

  else
  {
    *v11 = KeyPath;
    v11[264] = 0;
    v25 = *(v9 + 20);
    *&v11[v25] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
    swift_storeEnumTagMultiPayload();
    v26 = &v11[*(v9 + 24)];
    *v26 = v16;
    v26[1] = v18;
    sub_1A337481C(v11, v8);
    swift_storeEnumTagMultiPayload();
    sub_1A3374548();
    sub_1A33747D4(&qword_1EB0C2770, type metadata accessor for DetailsLabelText);
    sub_1A34CB3E0();
    return sub_1A3374880(v11);
  }
}

uint64_t sub_1A3373108()
{
  v1 = (v0 + *(type metadata accessor for ContactCardLabeledPropertyView() + 24));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 40))(v2, v3);
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  if ((v4 & 1) == 0)
  {
    return (*(v6 + 8))(v5, v6);
  }

  v7 = (*(v6 + 32))(v5, v6);
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6C20);
  if (v9)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A34DCA90;
    v11 = v1[3];
    v12 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v11);
    *(inited + 32) = (*(v12 + 8))(v11, v12);
    *(inited + 40) = v13;
    *(inited + 48) = v7;
    *(inited + 56) = v9;
    v14 = sub_1A3332448(inited, 0, 0, 0xD000000000000017, 0x80000001A350F180);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5A80);
    swift_arrayDestroy();
  }

  else
  {
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_1A34DAA10;
    v17 = v1[3];
    v18 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v17);
    *(v16 + 32) = (*(v18 + 8))(v17, v18);
    *(v16 + 40) = v19;
    v14 = sub_1A3332448(v16, v7, 0, 0xD000000000000019, 0x80000001A350F160);
    swift_setDeallocating();
    sub_1A3288FDC(v16 + 32, &qword_1EB0C5A80);
  }

  return v14;
}

uint64_t sub_1A3373368(uint64_t a1)
{
  v2 = type metadata accessor for ContactCardLabeledPropertyView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v9[0] = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0x4549465F59504F43, 0xEA0000000000444CLL);
  v9[1] = v5;
  sub_1A3206628(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1A3206690(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_1A328A95C();
  return sub_1A34CC7C0();
}

void sub_1A33734B4(uint64_t a1)
{
  v2 = [objc_opt_self() generalPasteboard];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8858);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A34DAA10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9E90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DAA10;
  *(inited + 32) = sub_1A34CD110();
  *(inited + 40) = v5;
  v6 = (a1 + *(type metadata accessor for ContactCardLabeledPropertyView() + 24));
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = (*(v8 + 16))(v7, v8);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  v11 = sub_1A33E9E68(inited);
  swift_setDeallocating();
  sub_1A3288FDC(inited + 32, &qword_1EB0C9EA0);
  *(v3 + 32) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8860);
  v12 = sub_1A34CD350();

  sub_1A33EA3E8(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OptionsKey(0);
  sub_1A33747D4(&qword_1EB0C5060, type metadata accessor for OptionsKey);
  v13 = sub_1A34CCF70();

  [v2 setItems:v12 options:v13];
}

uint64_t sub_1A33736D4@<X0>(uint64_t *a1@<X8>)
{
  v51 = a1;
  v49 = sub_1A34CA5D0();
  v1 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v46 - v5;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8098);
  MEMORY[0x1EEE9AC00](v50);
  v8 = (&v46 - v7);
  v9 = sub_1A34C93B0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A34CD180();
  v14 = v13;
  if (qword_1EB0C1E28 != -1)
  {
    swift_once();
  }

  sub_1A33328A8(qword_1EB0ED2D8, v12, v14, v11);

  v15 = sub_1A34CBE20();
  v17 = v16;
  v19 = v18;
  if (qword_1EB0C1DE8 != -1)
  {
    swift_once();
  }

  v20 = sub_1A34CBE10();
  v46 = v21;
  v47 = v20;
  v23 = v22;
  v48 = v24;
  sub_1A328A9B0(v15, v17, v19 & 1);

  sub_1A31ECC30(v6);
  v25 = v49;
  (*(v1 + 104))(v3, *MEMORY[0x1E697DBA8], v49);
  v26 = sub_1A34CA5C0();
  v27 = *(v1 + 8);
  v27(v3, v25);
  if (v26)
  {
    [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.25 green:0.25 blue:0.25 alpha:1.0];
    v28 = sub_1A34CC440();
  }

  else
  {
    v28 = sub_1A34CC500();
  }

  v29 = v28;
  v27(v6, v25);
  v30 = *(v50 + 36);
  v31 = *MEMORY[0x1E6981D98];
  v32 = sub_1A34CCD00();
  (*(*(v32 - 8) + 104))(v8 + v30, v31, v32);
  *v8 = v29;
  sub_1A3284D0C(&qword_1EB0C07C8, &qword_1EB0C8098);
  v33 = v47;
  v34 = v8;
  v35 = v23;
  v36 = v46;
  v37 = sub_1A34CBDF0();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_1A328A9B0(v33, v36, v35 & 1);

  result = sub_1A3288FDC(v34, &qword_1EB0C8098);
  v45 = v51;
  *v51 = v37;
  v45[1] = v39;
  *(v45 + 16) = v41 & 1;
  v45[3] = v43;
  return result;
}

uint64_t sub_1A3373AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  sub_1A34CD450();
  v3[3] = sub_1A34CD440();
  v5 = sub_1A34CD3E0();
  v3[4] = v5;
  v3[5] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A3373B8C, v5, v4);
}

uint64_t sub_1A3373B8C()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for ContactCardLabeledPropertyView() + 24));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v7 = (*(v4 + 104) + **(v4 + 104));
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1A3373CC0;

  return v7(v3, v4);
}

uint64_t sub_1A3373CC0()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1A3373DE0, v3, v2);
}

uint64_t sub_1A3373DE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3373E40@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C87A8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (v16 - v2);
  v4 = sub_1A34CC5E0();
  if (qword_1EB0C1E30 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB0ED2E0;
  KeyPath = swift_getKeyPath();
  v7 = qword_1EB0C1DE8;
  sub_1A34C9010();
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB0ED298;
  v9 = swift_getKeyPath();
  v10 = (v3 + *(v1 + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C54D8) + 28);
  v12 = *MEMORY[0x1E69816C8];
  v13 = sub_1A34CC670();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = swift_getKeyPath();
  *v3 = v4;
  v3[1] = KeyPath;
  v3[2] = v5;
  v3[3] = v9;
  v3[4] = v8;
  sub_1A34C9010();
  v16[2] = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000024, 0x80000001A350F1A0);
  v16[3] = v14;
  sub_1A33748DC();
  sub_1A328A95C();
  sub_1A34CC0A0();

  return sub_1A3288FDC(v3, &qword_1EB0C87A8);
}

uint64_t sub_1A33740A4()
{
  v1 = type metadata accessor for ContactCardLabeledPropertyView();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 28) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

unint64_t sub_1A3374118()
{
  result = qword_1EB0C0CE0;
  if (!qword_1EB0C0CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C87B8);
    sub_1A3284D0C(&qword_1EB0C04D0, &qword_1EB0C87C8);
    sub_1A3284D0C(&qword_1EB0C0790, &qword_1EB0C58B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0CE0);
  }

  return result;
}

uint64_t sub_1A33741FC()
{
  v2 = *(type metadata accessor for ContactCardLabeledPropertyView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3292050;

  return sub_1A3373AF4(v4, v5, v0 + v3);
}

uint64_t sub_1A33742D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C87D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3374348@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A34CAFD0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A337439C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailsBodyText();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A3374408()
{
  result = qword_1EB0C05E0;
  if (!qword_1EB0C05E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8830);
    sub_1A337448C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C05E0);
  }

  return result;
}

unint64_t sub_1A337448C()
{
  result = qword_1EB0C08F0;
  if (!qword_1EB0C08F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8840);
    sub_1A3374548();
    sub_1A33747D4(&qword_1EB0C2770, type metadata accessor for DetailsLabelText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C08F0);
  }

  return result;
}

unint64_t sub_1A3374548()
{
  result = qword_1EB0C0F50;
  if (!qword_1EB0C0F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8848);
    sub_1A33747D4(&qword_1EB0C2770, type metadata accessor for DetailsLabelText);
    sub_1A3284D0C(&qword_1EB0C0688, &unk_1EB0C93C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0F50);
  }

  return result;
}

void sub_1A3374630()
{
  v1 = *(type metadata accessor for ContactCardLabeledPropertyView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1A33734B4(v2);
}

uint64_t sub_1A33746B4(uint64_t a1)
{
  v2 = sub_1A34CC670();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1A34CAE10();
}

uint64_t sub_1A337477C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A34CAE80();
  *a1 = result;
  return result;
}

uint64_t sub_1A33747D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A337481C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailsLabelText();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3374880(uint64_t a1)
{
  v2 = type metadata accessor for DetailsLabelText();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A33748DC()
{
  result = qword_1EB0C0A70;
  if (!qword_1EB0C0A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C87A8);
    sub_1A3374994();
    sub_1A3284D0C(&qword_1EB0C0680, &qword_1EB0C54D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0A70);
  }

  return result;
}

unint64_t sub_1A3374994()
{
  result = qword_1EB0C0B50;
  if (!qword_1EB0C0B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8870);
    sub_1A3374A4C();
    sub_1A3284D0C(&unk_1ED8534A0, &unk_1EB0C8FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0B50);
  }

  return result;
}

unint64_t sub_1A3374A4C()
{
  result = qword_1EB0C0D30;
  if (!qword_1EB0C0D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8878);
    sub_1A3284D0C(&qword_1EB0C0688, &unk_1EB0C93C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0D30);
  }

  return result;
}

uint64_t sub_1A3374B04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1A3374B4C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1A3374B9C()
{
  if (qword_1EB0C1360 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB0ED0E0;
  v1 = type metadata accessor for SensitiveContentAnalysisManager();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC14ContactsUICore31SensitiveContentAnalysisManager_entitlementVerifier] = v0;
  v3 = objc_allocWithZone(MEMORY[0x1E697B678]);
  swift_retain_n();
  v4 = [v3 init];
  *&v2[OBJC_IVAR____TtC14ContactsUICore31SensitiveContentAnalysisManager_sensitivityAnalyzer] = v4;
  v7.receiver = v2;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  qword_1EB0ED0F0 = v5;
  return result;
}

id sub_1A3374D20()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v0 = [swift_getObjCClassFromMetadata() photoLibraryWithError_];
  if (v0)
  {
    v1 = v4[0];
  }

  else
  {
    v2 = v4[0];
    sub_1A34C9580();

    swift_willThrow();
  }

  return v0;
}

id sub_1A3374DDC()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCAD0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C89F0);
  sub_1A34CBA20();
  [v2 setDelegate_];

  [v2 setSourceType_];
  v3 = v2;
  v4 = sub_1A34CD0E0();
  [v3 setAccessibilityIdentifier_];

  [v3 _setImagePickerSavingOptions_];
  v5 = [v3 _properties];
  if (v5)
  {
    v6 = v5;
    sub_1A34CCF90();
  }

  else
  {
    sub_1A33EA2AC(MEMORY[0x1E69E7CC0]);
  }

  *&v21 = sub_1A34CD110();
  *(&v21 + 1) = v7;
  sub_1A34CDA40();
  v8 = MEMORY[0x1E69E6370];
  v22 = MEMORY[0x1E69E6370];
  LOBYTE(v21) = 1;
  sub_1A31FA144(&v21, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1A33F0D38(v20, v23, isUniquelyReferenced_nonNull_native);
  sub_1A32F7584(v23);
  *&v21 = sub_1A34CD110();
  *(&v21 + 1) = v10;
  sub_1A34CDA40();
  v22 = v8;
  LOBYTE(v21) = 1;
  sub_1A31FA144(&v21, v20);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A33F0D38(v20, v23, v11);
  sub_1A32F7584(v23);
  *&v21 = sub_1A34CD110();
  *(&v21 + 1) = v12;
  sub_1A34CDA40();
  v22 = v8;
  LOBYTE(v21) = 1;
  sub_1A31FA144(&v21, v20);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A33F0D38(v20, v23, v13);
  sub_1A32F7584(v23);
  if (*(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8978) + 36) + 1) == 1)
  {
    *&v21 = sub_1A34CD110();
    *(&v21 + 1) = v14;
    sub_1A34CDA40();
    v22 = v8;
    LOBYTE(v21) = 1;
    sub_1A31FA144(&v21, v20);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A33F0D38(v20, v23, v15);
    sub_1A32F7584(v23);
    *&v21 = sub_1A34CD110();
    *(&v21 + 1) = v16;
    sub_1A34CDA40();
    v22 = v8;
    LOBYTE(v21) = 1;
    sub_1A31FA144(&v21, v20);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A33F0D38(v20, v23, v17);
    sub_1A32F7584(v23);
  }

  v18 = sub_1A34CCF70();

  [v3 _setProperties_];

  return v3;
}

uint64_t sub_1A33751DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[56] = a4;
  v5[57] = a5;
  v5[58] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8978);
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  sub_1A34CD450();
  v5[62] = sub_1A34CD440();
  v7 = sub_1A34CD3E0();
  v5[63] = v7;
  v5[64] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A33752C8, v7, v6);
}

uint64_t sub_1A33752C8()
{
  if (*(*(v0 + 448) + 16) && (v1 = sub_1A31FA5B8(*MEMORY[0x1E69DDE10]), (v2 & 1) != 0) && (sub_1A31EE354(*(*(v0 + 448) + 56) + 32 * v1, v0 + 272), sub_1A31EC194(0, &qword_1EB0C00D0), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(v0 + 480);
    v5 = *(v0 + 456);
    v4 = *(v0 + 464);
    v6 = *(v0 + 432);
    *(v0 + 520) = v6;
    v7 = sub_1A343A8B0();
    *(v0 + 528) = v7;
    *(v0 + 568) = 1;
    v8 = OBJC_IVAR____TtCV14ContactsUICoreP33_E066430AB25D5268401BEB757E69D30410CameraView11Coordinator_request;
    *(v0 + 536) = OBJC_IVAR____TtCV14ContactsUICoreP33_E066430AB25D5268401BEB757E69D30410CameraView11Coordinator_request;
    swift_beginAccess();
    sub_1A3376874(v5 + v8, v3);
    LODWORD(v4) = *(v3 + *(v4 + 36));
    v9 = v7;
    sub_1A3288FDC(v3, &unk_1EB0C8978);
    if (v4 == 1)
    {
      sub_1A31EC194(0, &qword_1EB0C01B0);
      v10 = sub_1A3374D20();
      *(v0 + 544) = v10;
      *(v0 + 552) = 0;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 416;
      *(v0 + 24) = sub_1A33759AC;
      v20 = v10;
      v21 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8988);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1A337618C;
      *(v0 + 104) = &block_descriptor_11;
      *(v0 + 112) = v21;
      [v20 createAssetFromImage:v6 completionHandler:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    if (*(*(v0 + 448) + 16) && (v22 = sub_1A31FA5B8(*MEMORY[0x1E69DDDE0]), (v23 & 1) != 0) && (sub_1A31EE354(*(*(v0 + 448) + 56) + 32 * v22, v0 + 304), type metadata accessor for CGRect(0), (swift_dynamicCast() & 1) != 0))
    {
      v24 = *(v0 + 336);
      v25 = *(v0 + 344);
      v26 = *(v0 + 352);
      v27 = *(v0 + 360);
      *(v0 + 568) = 0;
    }

    else
    {
      v26 = 0;
      v25 = 0;
      v24 = 0;
      v27 = 0;
    }

    v28 = *(v0 + 528);
    v30 = *(v0 + 464);
    v29 = *(v0 + 472);
    sub_1A3376874(*(v0 + 456) + *(v0 + 536), v29);
    v31 = *(v0 + 568);
    *(v0 + 144) = v28;
    *(v0 + 152) = 0;
    *(v0 + 160) = 0;
    *(v0 + 168) = v24;
    v42 = v24;
    *(v0 + 176) = v25;
    *(v0 + 184) = v26;
    *(v0 + 192) = v27;
    *(v0 + 200) = v31;
    v32 = swift_task_alloc();
    *(v32 + 16) = v0 + 144;
    v33 = *(v29 + *(v30 + 40));
    v34 = swift_task_alloc();
    *(v34 + 16) = sub_1A3376E60;
    *(v34 + 24) = v32;
    v35 = *(*v33 + *MEMORY[0x1E69E6B68] + 16);
    v36 = (*(*v33 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v33 + v36));
    sub_1A3376E68(v33 + v35);
    v40 = v25;
    v41 = v26;
    v37 = *(v0 + 528);
    v38 = *(v0 + 520);
    v39 = *(v0 + 472);
    os_unfair_lock_unlock((v33 + v36));

    sub_1A3288FDC(v39, &unk_1EB0C8978);
    *(v0 + 208) = v37;
    *(v0 + 216) = 0;
    *(v0 + 224) = 0;
    *(v0 + 232) = v42;
    *(v0 + 240) = v40;
    *(v0 + 248) = v41;
    *(v0 + 256) = v27;
    *(v0 + 264) = v31;
    sub_1A3363C94(v0 + 208);
  }

  else
  {

    v11 = *(v0 + 488);
    v13 = *(v0 + 456);
    v12 = *(v0 + 464);
    v14 = OBJC_IVAR____TtCV14ContactsUICoreP33_E066430AB25D5268401BEB757E69D30410CameraView11Coordinator_request;
    swift_beginAccess();
    sub_1A3376874(v13 + v14, v11);
    v15 = *(v11 + *(v12 + 40));
    v16 = *(*v15 + *MEMORY[0x1E69E6B68] + 16);
    v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v15 + v17));
    sub_1A329A478(v15 + v16);
    os_unfair_lock_unlock((v15 + v17));
    sub_1A3288FDC(*(v0 + 488), &unk_1EB0C8978);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1A33759AC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 560) = v2;
  v3 = *(v1 + 512);
  v4 = *(v1 + 504);
  if (v2)
  {
    v5 = sub_1A3375D8C;
  }

  else
  {
    v5 = sub_1A3375ADC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

void sub_1A3375ADC()
{

  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v3 = *(v0 + 552);
  if (*(*(v0 + 448) + 16) && (v4 = sub_1A31FA5B8(*MEMORY[0x1E69DDDE0]), (v5 & 1) != 0) && (sub_1A31EE354(*(*(v0 + 448) + 56) + 32 * v4, v0 + 304), type metadata accessor for CGRect(0), (swift_dynamicCast() & 1) != 0))
  {
    v24 = *(v0 + 336);
    v25 = *(v0 + 344);
    v6 = *(v0 + 352);
    v23 = *(v0 + 360);
    *(v0 + 568) = 0;
  }

  else
  {
    v6 = 0;
    v24 = 0;
    v25 = 0;
    v23 = 0;
  }

  v7 = *(v0 + 528);
  v9 = *(v0 + 464);
  v8 = *(v0 + 472);
  sub_1A3376874(*(v0 + 456) + *(v0 + 536), v8);
  v10 = *(v0 + 568);
  *(v0 + 144) = v7;
  *(v0 + 152) = v2;
  *(v0 + 160) = v1;
  *(v0 + 168) = v24;
  *(v0 + 176) = v25;
  *(v0 + 184) = v6;
  v22 = v6;
  *(v0 + 192) = v23;
  *(v0 + 200) = v10;
  v11 = swift_task_alloc();
  *(v11 + 16) = v0 + 144;
  v12 = *(v8 + *(v9 + 40));
  v13 = swift_task_alloc();
  *(v13 + 16) = sub_1A3376E60;
  *(v13 + 24) = v11;
  v14 = v1;
  v15 = *(*v12 + *MEMORY[0x1E69E6B68] + 16);
  v16 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v12 + v16));
  sub_1A3376E68(v12 + v15);
  if (v3)
  {

    os_unfair_lock_unlock((v12 + v16));
  }

  else
  {
    v17 = *(v0 + 528);
    v21 = v2;
    v18 = *(v0 + 520);
    v19 = *(v0 + 472);
    os_unfair_lock_unlock((v12 + v16));

    sub_1A3288FDC(v19, &unk_1EB0C8978);
    *(v0 + 208) = v17;
    *(v0 + 216) = v21;
    *(v0 + 224) = v14;
    *(v0 + 232) = v24;
    *(v0 + 240) = v25;
    *(v0 + 248) = v22;
    *(v0 + 256) = v23;
    *(v0 + 264) = v10;
    sub_1A3363C94(v0 + 208);

    v20 = *(v0 + 8);

    v20();
  }
}

uint64_t sub_1A3375D8C()
{
  v39 = v0;
  v1 = *(v0 + 544);

  swift_willThrow();

  v2 = *(v0 + 560);
  if (qword_1EB0C4750 != -1)
  {
    swift_once();
  }

  v3 = v0 + 144;
  v4 = sub_1A34CA250();
  __swift_project_value_buffer(v4, qword_1EB0EDA70);
  v5 = v2;
  v6 = sub_1A34CA230();
  v7 = sub_1A34CD640();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v38 = v9;
    *v8 = 136315138;
    *(v0 + 440) = v2;
    v10 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69B0);
    v11 = sub_1A34CD170();
    v13 = sub_1A31EE23C(v11, v12, &v38);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1A31E6000, v6, v7, "Error saving captured photo to library: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1A58F1010](v9, -1, -1);
    v14 = v8;
    v3 = v0 + 144;
    MEMORY[0x1A58F1010](v14, -1, -1);
  }

  else
  {
  }

  if (*(*(v0 + 448) + 16) && (v15 = sub_1A31FA5B8(*MEMORY[0x1E69DDDE0]), (v16 & 1) != 0) && (sub_1A31EE354(*(*(v0 + 448) + 56) + 32 * v15, v0 + 304), type metadata accessor for CGRect(0), (swift_dynamicCast() & 1) != 0))
  {
    v17 = *(v0 + 336);
    v18 = *(v0 + 344);
    v19 = *(v0 + 352);
    v20 = *(v0 + 360);
    *(v0 + 568) = 0;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    v17 = 0;
    v20 = 0;
  }

  v21 = *(v0 + 528);
  v23 = *(v0 + 464);
  v22 = *(v0 + 472);
  sub_1A3376874(*(v0 + 456) + *(v0 + 536), v22);
  v24 = *(v0 + 568);
  *(v0 + 144) = v21;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = v17;
  v37 = v17;
  *(v0 + 176) = v18;
  *(v0 + 184) = v19;
  *(v0 + 192) = v20;
  *(v0 + 200) = v24;
  v25 = swift_task_alloc();
  *(v25 + 16) = v3;
  v26 = *(v22 + *(v23 + 40));
  v27 = swift_task_alloc();
  *(v27 + 16) = sub_1A3376E60;
  *(v27 + 24) = v25;
  v28 = *(*v26 + *MEMORY[0x1E69E6B68] + 16);
  v29 = (*(*v26 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v26 + v29));
  sub_1A3376E68(v26 + v28);
  v35 = v18;
  v36 = v19;
  v30 = *(v0 + 528);
  v31 = *(v0 + 520);
  v32 = *(v0 + 472);
  os_unfair_lock_unlock((v26 + v29));

  sub_1A3288FDC(v32, &unk_1EB0C8978);
  *(v0 + 208) = v30;
  *(v0 + 216) = 0;
  *(v0 + 224) = 0;
  *(v0 + 232) = v37;
  *(v0 + 240) = v35;
  *(v0 + 248) = v36;
  *(v0 + 256) = v20;
  *(v0 + 264) = v24;
  sub_1A3363C94(v0 + 208);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1A337618C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69B0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = sub_1A34CD110();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

id sub_1A3376588()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraView.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A337661C()
{
  sub_1A33766AC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A33766AC()
{
  if (!qword_1EB0C1FE0)
  {
    v0 = type metadata accessor for PendingUserInputRequest();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C1FE0);
    }
  }
}

uint64_t getEnumTagSinglePayload for PhotoCaptureRequest(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for PhotoCaptureRequest(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A3376874(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8978);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A33768E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3292050;

  return sub_1A33751DC(a1, v4, v5, v7, v6);
}

void sub_1A33769A8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8978);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7[-v3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C89F0);
  sub_1A34CBA20();
  v5 = v8;
  sub_1A3376874(v1, v4);
  v6 = OBJC_IVAR____TtCV14ContactsUICoreP33_E066430AB25D5268401BEB757E69D30410CameraView11Coordinator_request;
  swift_beginAccess();
  sub_1A337739C(v4, v5 + v6);
  swift_endAccess();
}

uint64_t sub_1A3376A88@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8978);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  sub_1A3376874(v1, &v10 - v4);
  v6 = type metadata accessor for CameraView.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_1A3376874(v5, v7 + OBJC_IVAR____TtCV14ContactsUICoreP33_E066430AB25D5268401BEB757E69D30410CameraView11Coordinator_request);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_1A3288FDC(v5, &unk_1EB0C8978);
  *a1 = v8;
  return result;
}

uint64_t sub_1A3376B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A33770A8(&qword_1EB0C89E8, type metadata accessor for CameraView);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A3376C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A33770A8(&qword_1EB0C89E8, type metadata accessor for CameraView);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A3376C9C()
{
  sub_1A33770A8(&qword_1EB0C89E8, type metadata accessor for CameraView);
  sub_1A34CB940();
  __break(1u);
}

uint64_t sub_1A3376CF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8998);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v5 - v2;
  sub_1A3376874(v0, &v5 - v2);
  v3[*(v1 + 36)] = sub_1A34CBA90();
  sub_1A3376FEC();
  sub_1A34CC1F0();
  return sub_1A3288FDC(v3, &qword_1EB0C8998);
}

uint64_t sub_1A3376DDC(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v8[0] = *a2;
  v8[1] = v2;
  v4 = *a2;
  v3 = a2[1];
  v9[0] = a2[2];
  *(v9 + 9) = *(a2 + 41);
  v6[4] = v4;
  v6[5] = v3;
  v7[0] = a2[2];
  *(v7 + 9) = *(a2 + 41);
  sub_1A3376E8C(v8, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8990);
  return sub_1A34CD400();
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A3376F28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1A3376F70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A3376FEC()
{
  result = qword_1EB0C89A0;
  if (!qword_1EB0C89A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8998);
    sub_1A33770A8(&unk_1EB0C89A8, type metadata accessor for CameraView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C89A0);
  }

  return result;
}

uint64_t sub_1A33770A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8978);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8978);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1A337722C()
{
  sub_1A33766AC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1A3377298()
{
  result = qword_1EB0C89D0;
  if (!qword_1EB0C89D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C89D8);
    sub_1A3376FEC();
    sub_1A33770A8(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C89D0);
  }

  return result;
}

uint64_t sub_1A337739C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8978);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3377410@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A34CB0B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8080);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1A337C5D8(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A34CA7A0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1A34CD650();
    v13 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1A33775F8()
{
  v1 = type metadata accessor for ImageCroppingView();
  v2 = *(v0 + v1[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7EA8);
  sub_1A34CC740();
  v17.a = 1.0;
  v17.b = 0.0;
  v17.c = 0.0;
  v17.d = 1.0;
  v17.tx = 0.0;
  v17.ty = 0.0;
  CGAffineTransformScale(&v19, &v17, 1.0 / v19.a, 1.0 / v19.a);
  tx = v19.tx;
  ty = v19.ty;
  v15 = *&v19.c;
  v16 = *&v19.a;
  v5 = (v0 + v1[6]);
  v7 = v5[1];
  v8 = v5[2];
  v17.a = *v5;
  a = v17.a;
  v17.b = v7;
  v17.c = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8CD0);
  sub_1A34CC740();
  v9 = v19.a;
  v17.a = a;
  v17.b = v7;
  v17.c = v8;
  sub_1A34CC740();
  *&v17.a = v16;
  *&v17.c = v15;
  v17.tx = tx;
  v17.ty = ty;
  CGAffineTransformTranslate(&v19, &v17, v9, v19.b);
  v17 = v19;
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = v2;
  v20.size.height = v2;
  v21 = CGRectApplyAffineTransform(v20, &v17);
  v10 = v0 + v1[10];
  v11 = *(v10 + 8);
  v12 = *(v10 + 48);
  v17.a = *v10;
  v17.b = v11;
  v13 = *(v10 + 32);
  *&v17.c = *(v10 + 16);
  *&v17.tx = v13;
  v18 = v12;
  v19.a = v21.origin.x;
  v19.b = v21.origin.y;
  v19.c = v21.size.width;
  v19.d = v21.size.height;
  LOBYTE(v19.tx) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8D60);
  return sub_1A34CC910();
}

double sub_1A33777BC()
{
  v1 = v0;
  v2 = type metadata accessor for ImageCroppingView();
  v3 = v0 + *(v2 + 32);
  v13[1] = *v3;
  v14 = *(v3 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8D70);
  MEMORY[0x1A58EE120](v13, v4);
  v5 = v13[0];
  v6 = [v13[0] CGImage];
  if (v6)
  {
    v7 = v6;
    Width = CGImageGetWidth(v6);
    Height = CGImageGetHeight(v7);

    v10 = *(v1 + *(v2 + 36));
    result = v10 / Width;
    if (Width == 0 && v10 == 0.0)
    {
      result = -INFINITY;
    }

    v12 = v10 / Height;
    if (Height == 0 && v10 == 0.0)
    {
      v12 = -INFINITY;
    }

    if (result <= v12)
    {
      return v12;
    }
  }

  else
  {

    return 0.0;
  }

  return result;
}

void sub_1A33778D4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImageCroppingView();
  v5 = v1 + v4[8];
  *v45 = *v5;
  *&v45[8] = *(v5 + 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8D70);
  MEMORY[0x1A58EE120](&v39, v6);
  v7 = v39;
  v8 = [v39 CGImage];
  if (v8)
  {
    v9 = v8;
    Width = CGImageGetWidth(v8);
    Height = CGImageGetHeight(v9);

    if ((*(a1 + 32) & 1) != 0 || (v12 = *(a1 + 16), v13 = *(a1 + 24), v49.origin.x = *a1, v49.origin.y = *(a1 + 8), v49.size.width = v12, v49.size.height = v13, CGRectIsEmpty(v49)))
    {
      v50.origin.x = 0.0;
      v50.origin.y = 0.0;
      v50.size.width = Width;
      v50.size.height = Height;
      CGRectGetMidX(v50);
      v51.origin.x = 0.0;
      v51.origin.y = 0.0;
      v51.size.width = Width;
      v51.size.height = Height;
      CGRectGetMidY(v51);
      v14 = v2 + v4[6];
      v15 = *(v14 + 16);
      *v45 = *v14;
      *&v45[16] = v15;
      *&v39 = 0.0;
      v40 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8CD0);
      sub_1A34CC750();
      v16 = sub_1A33777BC();
      v17 = (v2 + v4[7]);
      v18 = *v17;
      v19 = v17[1];
      *v45 = v18;
      *&v45[8] = v19;
      *&v39 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7EA8);
      sub_1A34CC750();
      v20 = v2 + v4[5];
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      v24 = *(v20 + 24);
      v25 = *(v20 + 32);
      v26 = *(v20 + 40);
      *v45 = *v20;
      v21 = *v45;
      *&v45[8] = v22;
      *&v45[16] = v23;
      v46 = v24;
      v47 = v25;
      v48 = v26;
      sub_1A34C9010();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8CE0);
      sub_1A34CC740();
      v39 = v21;
      v40 = v22;
      v41 = v23;
      v42 = v24;
      v43 = v25;
      v44 = v26;
    }

    else
    {
      if (v13 >= v12)
      {
        v27 = v12;
      }

      else
      {
        v27 = v13;
      }

      v28 = *(v2 + v4[9]);
      v29 = (v2 + v4[7]);
      v30 = *v29;
      v31 = v29[1];
      *v45 = v30;
      *&v45[8] = v31;
      *&v39 = v28 / v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7EA8);
      sub_1A34CC750();
      v32 = v2 + v4[5];
      v34 = *(v32 + 8);
      v35 = *(v32 + 16);
      v36 = *(v32 + 24);
      v37 = *(v32 + 32);
      v38 = *(v32 + 40);
      *v45 = *v32;
      v33 = *v45;
      *&v45[8] = v34;
      *&v45[16] = v35;
      v46 = v36;
      v47 = v37;
      v48 = v38;
      sub_1A34C9010();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8CE0);
      sub_1A34CC740();
      v39 = v33;
      v40 = v34;
      v41 = v35;
      v42 = v36;
      v43 = v37;
      v44 = v38;
    }

    sub_1A34CC750();
  }

  else
  {
  }
}

uint64_t sub_1A3377C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v98 = sub_1A34CB100();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1A34CB8C0();
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v87 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8CC8);
  MEMORY[0x1EEE9AC00](v84);
  v80 = &v74 - v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8C90);
  MEMORY[0x1EEE9AC00](v79);
  v7 = &v74 - v6;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8C58);
  MEMORY[0x1EEE9AC00](v83);
  v9 = &v74 - v8;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8C50);
  v89 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v82 = &v74 - v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8C48);
  v92 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v85 = &v74 - v11;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8C38);
  v95 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v86 = &v74 - v12;
  v13 = type metadata accessor for ImageCroppingView();
  v14 = a1 + v13[6];
  v15 = *(v14 + 16);
  v103 = *v14;
  *&v104 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8CD0);
  sub_1A34CC760();
  v16 = v106;
  v17 = v107;
  v18 = (a1 + v13[7]);
  v19 = *v18;
  v20 = v18[1];
  *&v103 = v19;
  *(&v103 + 1) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7EA8);
  sub_1A34CC760();
  v21 = v106;
  v22 = v107;
  v23 = a1 + v13[5];
  v24 = *(v23 + 32);
  v25 = *(v23 + 40);
  v26 = *(v23 + 16);
  v106 = *v23;
  v107 = v26;
  LOBYTE(v108) = v24;
  v109 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8CE0);
  sub_1A34CC740();
  v27 = v105;
  v78 = v103;
  v76 = v104;
  v28 = *(a1 + v13[9]);
  v29 = sub_1A33777BC();
  v81 = a1;
  v30 = sub_1A33777BC();
  *v7 = v16;
  *(v7 + 1) = v17;
  *(v7 + 2) = v21;
  *(v7 + 6) = v22;
  *(v7 + 72) = v76;
  *(v7 + 56) = v78;
  v7[88] = v27;
  *(v7 + 12) = v28;
  *(v7 + 13) = v28;
  *(v7 + 14) = v29;
  *(v7 + 15) = v30 * 5.0;
  sub_1A3378760(a1, &v7[*(v79 + 56)]);
  sub_1A3284D0C(&qword_1EB0C8C88, &unk_1EB0C8C90);
  v77 = v9;
  sub_1A34CC1F0();
  sub_1A3288FDC(v7, &unk_1EB0C8C90);
  v79 = sub_1A34CCC80();
  *&v78 = v31;
  *&v76 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8C70) + 36)];
  sub_1A34CC4D0();
  v75 = sub_1A34CC540();

  sub_1A34CCC80();
  sub_1A34CA760();
  v32 = v106;
  v33 = BYTE8(v106);
  v34 = v107;
  v35 = BYTE8(v107);
  v37 = v108;
  v36 = v109;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8CE8);
  v39 = v80;
  v40 = &v80[*(v38 + 36)];
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8CF0) + 36);
  v42 = *MEMORY[0x1E6981DC0];
  v43 = sub_1A34CCD00();
  (*(*(v43 - 8) + 104))(&v40[v41], v42, v43);
  *v40 = v32;
  v40[8] = v33;
  *(v40 + 2) = v34;
  v40[24] = v35;
  *(v40 + 4) = v37;
  *(v40 + 5) = v36;
  v44 = sub_1A34CCC80();
  v46 = v45;
  v47 = &v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8CF8) + 36)];
  *v47 = v44;
  v47[1] = v46;
  *v39 = v75;
  *(v39 + 8) = 256;
  *(v39 + *(v84 + 36)) = 0;
  sub_1A337C2E4();
  v48 = v76;
  sub_1A34CC1F0();
  sub_1A3288FDC(v39, &qword_1EB0C8CC8);
  v49 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8CA8) + 36));
  v50 = v78;
  *v49 = v79;
  v49[1] = v50;
  v51 = sub_1A34CBA90();
  v52 = v83;
  v53 = v77;
  v77[*(v83 + 36)] = v51;
  *&v103 = sub_1A34CC4E0();
  v54 = v87;
  sub_1A34CB8B0();
  v55 = sub_1A337C070();
  v56 = MEMORY[0x1E69815C0];
  v57 = MEMORY[0x1E6981568];
  v58 = v82;
  sub_1A34CC110();
  (*(v91 + 8))(v54, v93);

  sub_1A3288FDC(v53, &qword_1EB0C8C58);
  v101 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0x444E415F45564F4DLL, 0xEE00454C4143535FLL);
  v102 = v59;
  *&v103 = v52;
  *(&v103 + 1) = v56;
  *&v104 = v55;
  *(&v104 + 1) = v57;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = sub_1A328A95C();
  v62 = MEMORY[0x1E69E6158];
  v63 = v85;
  v64 = v88;
  sub_1A34CC040();

  v65 = v64;
  (*(v89 + 8))(v58, v64);
  v66 = v97;
  v67 = v96;
  v68 = v98;
  (*(v97 + 104))(v96, *MEMORY[0x1E697C438], v98);
  *&v103 = v65;
  *(&v103 + 1) = v62;
  *&v104 = OpaqueTypeConformance2;
  *(&v104 + 1) = v61;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = v86;
  v71 = v90;
  sub_1A34CC260();
  (*(v66 + 8))(v67, v68);
  (*(v92 + 8))(v63, v71);
  v100 = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8C40);
  *&v103 = v71;
  *(&v103 + 1) = v69;
  swift_getOpaqueTypeConformance2();
  sub_1A3284D0C(&qword_1EB0C8CB8, &qword_1EB0C8C40);
  v72 = v94;
  sub_1A34CC380();
  return (*(v95 + 8))(v70, v72);
}

uint64_t sub_1A3378760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ImageCroppingView();
  v5 = v4 - 8;
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v39 = v6;
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1A34CC610();
  v7 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8D68);
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v35 - v11;
  v12 = *(v5 + 40);
  v41 = a1;
  v13 = (a1 + v12);
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[2];
  *&v52 = *v13;
  *(&v52 + 1) = v15;
  *&v53 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8D70);
  MEMORY[0x1A58EE120](&v44);
  v18 = v44;
  v19 = [v44 CGImage];
  if (v19)
  {
    v20 = v19;
    CGImageGetWidth(v19);
    v35 = a2;
    CGImageGetHeight(v20);
    v36 = v10;

    *&v52 = v14;
    *(&v52 + 1) = v15;
    *&v53 = v16;
    MEMORY[0x1A58EE120](&v44, v17);
    sub_1A34CC5C0();
    v21 = v37;
    (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v37);
    v22 = sub_1A34CC680();

    (*(v7 + 8))(v9, v21);
    sub_1A34CCC80();
    sub_1A34CA760();
    v23 = v58;
    v24 = v59;
    v25 = v60;
    v26 = v61;
    v27 = v62;
    v28 = v63;
    v29 = v40;
    sub_1A337C4F8(v41, v40);
    v30 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v31 = swift_allocObject();
    sub_1A337C55C(v29, v31 + v30);
    v51 = v24;
    v50 = v26;
    *&v44 = v22;
    *(&v44 + 1) = v23;
    LOBYTE(v45) = v24;
    *(&v45 + 1) = v25;
    LOBYTE(v46) = v26;
    *(&v46 + 1) = v27;
    *&v47 = v28;
    *(&v47 + 1) = sub_1A337C660;
    v48 = v31;
    v49 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8D78);
    sub_1A337C6EC();
    v32 = v42;
    sub_1A34CC1F0();
    v54 = v46;
    v55 = v47;
    v56 = v48;
    v57 = v49;
    v52 = v44;
    v53 = v45;
    sub_1A3288FDC(&v52, &qword_1EB0C8D78);
    v33 = v35;
    sub_1A337C7FC(v32, v35);
    return (*(v43 + 56))(v33, 0, 1, v36);
  }

  else
  {

    return (*(v43 + 56))(a2, 1, 1, v10);
  }
}