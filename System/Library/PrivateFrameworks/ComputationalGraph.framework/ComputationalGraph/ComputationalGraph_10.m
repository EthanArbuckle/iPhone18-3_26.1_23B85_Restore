void sub_1C6ED21E8()
{
  v1 = *(v0 + *(*v0 + 176));
  os_unfair_lock_lock(v1 + 7);
  sub_1C6EDA98C(&v1[4], &v2);
  os_unfair_lock_unlock(v1 + 7);
}

void sub_1C6ED22A0()
{
  v1 = *(v0 + *(*v0 + 176));
  os_unfair_lock_lock((v1 + 28));
  sub_1C6EDA86C(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = 0;
  *(v1 + 24) = -1;

  os_unfair_lock_unlock((v1 + 28));
}

uint64_t *sub_1C6ED2308()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v52 - v5;
  v7 = sub_1C6EE41A0();
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(v0 + v2[21]);
  if (v66 != 1)
  {
    goto LABEL_3;
  }

  LODWORD(v64) = *(v0 + v2[19]);
  v10 = v2[10];
  v11 = v2[11];
  v12 = v2[12];
  LODWORD(v67) = 8;
  type metadata accessor for FileStore.FileContainer.Flags();
  swift_getWitnessTable();
  v13 = &v64;
  if ((sub_1C6EE5620() & 1) == 0)
  {
    type metadata accessor for FileStore.FileContainer.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v50 = xmmword_1C6EE91C0;
    *(v50 + 16) = 1;
    swift_willThrow();
  }

  else
  {
LABEL_3:
    v58 = v7;
    v60 = v6;
    if (qword_1EDEF8F70 != -1)
    {
      swift_once();
    }

    v59 = qword_1EDEF8F78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C6EEA170;
    v15 = v2[10];
    v16 = v2[12];
    v55 = *(*v1 + 104);
    v53 = v15;
    v17 = sub_1C6EBF184(v15, v16);
    v52 = v2;
    v19 = v18;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v20 = sub_1C6DF10E0();
    *(v14 + 64) = v20;
    *(v14 + 32) = v17;
    *(v14 + 40) = v19;
    v57 = *(*v1 + 128);
    sub_1C6DF1088();
    v21 = v58;
    v22 = sub_1C6EE5460();
    *(v14 + 96) = MEMORY[0x1E69E6158];
    *(v14 + 104) = v20;
    *(v14 + 72) = v22;
    *(v14 + 80) = v23;
    v56 = *(*v1 + 136);
    v24 = sub_1C6EE5460();
    *(v14 + 136) = MEMORY[0x1E69E6158];
    *(v14 + 144) = v20;
    *(v14 + 112) = v24;
    *(v14 + 120) = v25;
    v64 = 0;
    v65 = 0xE000000000000000;
    v54 = *(v16 + 56);
    v54(&v67, v15);
    v26 = sub_1C6ED5458(qword_1C6EF7808[v67]);
    MEMORY[0x1CCA57F60](v26);

    v27 = v64;
    v28 = v65;
    *(v14 + 176) = MEMORY[0x1E69E6158];
    *(v14 + 184) = v20;
    *(v14 + 152) = v27;
    *(v14 + 160) = v28;
    sub_1C6EE4EE0();
    sub_1C6EE4730();

    v29 = v61;
    v30 = *(v61 + 16);
    v30(v63, v1 + v57, v21);
    v31 = v60;
    v30(v60, v1 + v56, v21);
    v32 = v21;
    v33 = v53;
    (*(v29 + 56))(v31, 0, 1, v32);
    (v54)(&v64, v33, v16);
    v34 = qword_1C6EF7808[v64];
    v35 = sub_1C6ED28FC();
    v36 = v62;
    v37 = sub_1C6EDC924(sub_1C6EDA840, v1, v35);

    v38 = sub_1C6E0B8E0(v37);

    v39 = type metadata accessor for ResourceReader();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    v42 = swift_allocObject();
    v43 = v38;
    v13 = v42;
    v44 = sub_1C6E36AAC(v63, v31, v34, v66, v43);
    if (!v36)
    {
      v13 = v44;
      v45 = swift_allocObject();
      swift_weakInit();
      v46 = swift_allocObject();
      *(v46 + 2) = v33;
      *(v46 + 3) = v52[11];
      *(v46 + 4) = v16;
      *(v46 + 5) = v45;
      v47 = (v13 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver);
      v48 = *(v13 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver);
      v49 = *(v13 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver + 8);
      *v47 = sub_1C6EDA860;
      v47[1] = v46;

      sub_1C6E41D54(v48);
    }
  }

  return v13;
}

uint64_t sub_1C6ED28FC()
{
  v1 = *(*(*v0 + 96) + 48);
  v2 = *(*v0 + 80);
  v3 = v0 + *(*v0 + 104);
  v4 = v1(v2);
  v5 = sub_1C6E0B8E0(v4);

  return v5;
}

uint64_t sub_1C6ED2988()
{
  v1 = v0;
  v55 = *MEMORY[0x1E69E9840];
  v46 = sub_1C6EE4020();
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v47 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6EE41A0();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1E69E7CD0];
  v9 = [objc_opt_self() defaultManager];
  v43[1] = *(*v0 + 128);
  v10 = sub_1C6EE4100();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9A40, &unk_1C6EE65A0);
  v11 = swift_allocObject();
  v49 = xmmword_1C6EE6590;
  *(v11 + 16) = xmmword_1C6EE6590;
  v12 = *MEMORY[0x1E695DB78];
  *(v11 + 32) = *MEMORY[0x1E695DB78];
  type metadata accessor for URLResourceKey(0);
  v48 = v12;
  v13 = sub_1C6EE4C90();

  v52 = 0;
  v14 = [v9 contentsOfDirectoryAtURL:v10 includingPropertiesForKeys:v13 options:0 error:&v52];

  v15 = v52;
  if (!v14)
  {
    v31 = v52;
    v32 = sub_1C6EE4050();

    swift_willThrow();
    v19 = v32;
    if (qword_1EDEF8F80 == -1)
    {
LABEL_11:
      sub_1C6EE4ED0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1C6EE6B40;
      sub_1C6DF1088();
      v34 = sub_1C6EE5460();
      v36 = v35;
      v37 = MEMORY[0x1E69E6158];
      *(v33 + 56) = MEMORY[0x1E69E6158];
      v38 = sub_1C6DF10E0();
      *(v33 + 64) = v38;
      *(v33 + 32) = v34;
      *(v33 + 40) = v36;
      v52 = 0;
      v53 = 0xE000000000000000;
      swift_getErrorValue();
      sub_1C6EE5480();
      v39 = v52;
      v40 = v53;
      *(v33 + 96) = v37;
      *(v33 + 104) = v38;
      *(v33 + 72) = v39;
      *(v33 + 80) = v40;
      sub_1C6EE4730();

      goto LABEL_12;
    }

LABEL_14:
    swift_once();
    goto LABEL_11;
  }

  v16 = sub_1C6EE4CA0();
  v17 = v15;

  v45 = *(v16 + 16);
  if (v45)
  {
    v43[0] = v1;
    v18 = 0;
    v19 = 0;
    v44 = v16 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v43[2] = v51 + 16;
    v20 = (v2 + 8);
    v21 = (v51 + 8);
    while (v18 < *(v16 + 16))
    {
      v22 = v5;
      (*(v51 + 16))(v8, v44 + *(v51 + 72) * v18, v5);
      inited = swift_initStackObject();
      *(inited + 16) = v49;
      v24 = v48;
      *(inited + 32) = v48;
      v25 = v24;
      sub_1C6ED9D4C(inited);
      swift_setDeallocating();
      sub_1C6DFFC0C(inited + 32);
      v26 = v47;
      sub_1C6EE40C0();

      v27 = sub_1C6EE3FF0();
      (*v20)(v26, v46);
      if (v27 != 2 && (v27 & 1) != 0)
      {
        v52 = sub_1C6EE40E0();
        v53 = v28;
        v29 = sub_1C6EE4BF0();
        sub_1C6E032E0(&v52, v29, v30);
      }

      v5 = v22;
      (*v21)(v8, v22);
      if (v45 == ++v18)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:

LABEL_12:
  result = v54;
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C6ED2F94(char a1)
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](a1 & 1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6ED3014(char a1)
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](a1 & 1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6ED3078()
{
  sub_1C6EE5580();
  sub_1C6ED2F6C(v2, *v0);
  return sub_1C6EE55A0();
}

BOOL sub_1C6ED30B8(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_1C6ED2FDC(*a1, *a2);
}

uint64_t sub_1C6ED30D0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1C6ED3014(*v1);
}

uint64_t sub_1C6ED30E4(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_1C6ED2FEC(a1, *v2);
}

uint64_t sub_1C6ED30F8(uint64_t a1, void *a2)
{
  sub_1C6EE5580();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_1C6ED2FEC(v8, *v2);
  return sub_1C6EE55A0();
}

uint64_t FileStore.__allocating_init(containersDirectory:resourcesDirectory:modelsDirectory:)(uint64_t a1, uint64_t a2, char *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  FileStore.init(containersDirectory:resourcesDirectory:modelsDirectory:)(a1, a2, a3);
  return v9;
}

uint64_t FileStore.ImportMethod.hashValue.getter()
{
  v1 = *v0;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6ED3244()
{
  sub_1C6EE5580();
  FileStore.ImportMethod.hash(into:)();
  return sub_1C6EE55A0();
}

void sub_1C6ED3280()
{
  v1 = *v0;
  v2 = sub_1C6EE41A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  type metadata accessor for FileStore.FileContainer.Flags();
  sub_1C6EE5470();
  swift_allocObject();
  sub_1C6EE4CC0();
  *v10 = 1;
  sub_1C6EE4D50();
  swift_getWitnessTable();
  sub_1C6EE5040();
  v11 = *(sub_1C6ED1770() + 16);

  if (!v11)
  {
    v18 |= 4u;
  }

  v12 = *(sub_1C6ED5670() + 16);

  if (!v12)
  {
    v18 |= 8u;
  }

  v13 = [objc_opt_self() defaultManager];
  sub_1C6ED4D78();
  sub_1C6EE4170();
  (*(v3 + 8))(v6, v2);
  v14 = sub_1C6EE4A60();

  v15 = [v13 fileExistsAtPath_];

  v16 = v18;
  if (v15)
  {
    v16 = v18 | 0x10;
    v18 |= 0x10u;
  }

  sub_1C6ED5300(v16);
}

Swift::Void __swiftcall FileStore.eraseAll()()
{
  v73 = *MEMORY[0x1E69E9840];
  v1 = sub_1C6EE41A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v64 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1C6DEDFB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9910, &unk_1C6EF6B80);
  v5 = *(v2 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v61 = xmmword_1C6EE6590;
  *(v7 + 16) = xmmword_1C6EE6590;
  v63 = v2;
  v8 = v2 + 16;
  v9 = *(v2 + 16);
  v65 = v0;
  v9(v7 + v6, v0 + qword_1EDEF6920, v1);
  v71 = v7;
  v66 = v5;
  v10 = swift_allocObject();
  *(v10 + 16) = v61;
  v60 = v8;
  v59 = v9;
  v9(v10 + v6, v65 + qword_1EDEF6938, v1);
  v72 = v10;
  v11 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 56; i += 8)
  {
    v13 = *&v69[i];
    v14 = *(v13 + 16);
    v15 = v11[2];
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    v17 = *&v69[i];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v16 <= v11[3] >> 1)
    {
      if (!*(v13 + 16))
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v19 = v15 + v14;
      }

      else
      {
        v19 = v15;
      }

      v11 = sub_1C6DEE840(isUniquelyReferenced_nonNull_native, v19, 1, v11, &qword_1EC1F9910, &unk_1C6EF6B80, MEMORY[0x1E6968FB0]);
      if (!*(v13 + 16))
      {
LABEL_2:

        if (v14)
        {
          goto LABEL_27;
        }

        continue;
      }
    }

    if ((v11[3] >> 1) - v11[2] < v14)
    {
      goto LABEL_28;
    }

    swift_arrayInitWithCopy();

    if (v14)
    {
      v20 = v11[2];
      v21 = __OFADD__(v20, v14);
      v22 = v20 + v14;
      if (v21)
      {
        goto LABEL_29;
      }

      v11[2] = v22;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9918, &qword_1C6EF6FA0);
  swift_arrayDestroy();
  v23 = v11[2];
  if (v23)
  {
    v58 = objc_opt_self();
    v24 = v11 + v6;
    v57 = (v63 + 8);
    v25 = MEMORY[0x1E69E6158];
    v26 = &dword_1C6DE9000;
    v54 = xmmword_1C6EE6B40;
    v27 = v1;
    v28 = v64;
    v56 = v1;
    do
    {
      v34 = v26;
      v65 = v23;
      v59(v28, v24, v27);
      if (qword_1EDEF8F80 != -1)
      {
        swift_once();
      }

      v35 = qword_1EDEF8F88;
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v36 = swift_allocObject();
      *(v36 + 16) = v61;
      v63 = sub_1C6DF1088();
      v37 = sub_1C6EE5460();
      v39 = v38;
      *(v36 + 56) = v25;
      v40 = sub_1C6DF10E0();
      *(v36 + 64) = v40;
      *(v36 + 32) = v37;
      *(v36 + 40) = v39;
      sub_1C6EE4EE0();
      v41 = v34;
      v64 = v35;
      sub_1C6EE4730();

      v42 = [v58 defaultManager];
      v43 = sub_1C6EE4100();
      v67 = 0;
      LODWORD(v39) = [v42 removeItemAtURL:v43 error:&v67];

      v44 = v67;
      if (v39)
      {
        v29 = swift_allocObject();
        *(v29 + 16) = v61;
        v30 = v44;
        v31 = v56;
        v32 = sub_1C6EE5460();
        *(v29 + 56) = MEMORY[0x1E69E6158];
        *(v29 + 64) = v40;
        *(v29 + 32) = v32;
        *(v29 + 40) = v33;
        sub_1C6EE4EE0();
        sub_1C6EE4730();
      }

      else
      {
        v45 = v67;
        v46 = sub_1C6EE4050();

        swift_willThrow();
        v55 = sub_1C6EE4EC0();
        v47 = swift_allocObject();
        *(v47 + 16) = v54;
        v31 = v56;
        v48 = sub_1C6EE5460();
        v49 = MEMORY[0x1E69E6158];
        *(v47 + 56) = MEMORY[0x1E69E6158];
        *(v47 + 64) = v40;
        *(v47 + 32) = v48;
        *(v47 + 40) = v50;
        v67 = 0;
        v68 = 0xE000000000000000;
        swift_getErrorValue();
        sub_1C6EE5480();
        v51 = v67;
        v52 = v68;
        *(v47 + 96) = v49;
        *(v47 + 104) = v40;
        *(v47 + 72) = v51;
        *(v47 + 80) = v52;
        sub_1C6EE4730();
      }

      v26 = v41;
      (*v57)(v28, v31);
      v24 += v66;
      v23 = v65 - 1;
      v27 = v31;
      v25 = MEMORY[0x1E69E6158];
    }

    while (v65 != 1);
  }

  v53 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C6ED3B5C()
{
  v1 = *v0;
  v2 = sub_1C6EE4090();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[2] = 0x656E6961746E6F63;
  v10[3] = 0xEA00000000002D72;
  v7 = *(v1 + 80);
  v8 = *(*(v1 + 96) + 24);
  sub_1C6EE51C0();
  MEMORY[0x1CCA57F60](v10[0], v10[1]);

  (*(v3 + 104))(v6, *MEMORY[0x1E6968F58], v2);
  sub_1C6DF0C68();
  sub_1C6EE4190();
  (*(v3 + 8))(v6, v2);
}

uint64_t *sub_1C6ED3D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char *a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  swift_allocObject();
  return sub_1C6DEEE64(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1C6ED3DA8()
{
  v5 = *(v0 + *(*v0 + 152));
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  type metadata accessor for FileStore.FileContainer.Flags();
  swift_getWitnessTable();
  return sub_1C6EE5620() & 1;
}

uint64_t sub_1C6ED3E70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for FileStore.FileContainer();
  swift_getWitnessTable();
  return sub_1C6EE4A20() & 1;
}

uint64_t FileStore.deinit()
{
  v1 = qword_1EDEF6918;
  v2 = sub_1C6EE41A0();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_1EDEF6920, v2);
  v3(v0 + qword_1EDEF6938, v2);
  v4 = *(v0 + qword_1EDEF6928);

  return v0;
}

void sub_1C6ED3FE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v61 = a1;
  v66 = *MEMORY[0x1E69E9840];
  v5 = sub_1C6EE41A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDEF8F88;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C6EE6590;
  v57 = sub_1C6DF1088();
  v12 = sub_1C6EE5460();
  v14 = v13;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v62 = sub_1C6DF10E0();
  *(v11 + 64) = v62;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  sub_1C6EE4EE0();
  v60 = v10;
  sub_1C6EE4730();

  v15 = [objc_opt_self() defaultManager];
  v58 = a2;
  sub_1C6EE4130();
  v16 = sub_1C6EE4100();
  (*(v6 + 8))(v9, v5);
  v64 = 0;
  LODWORD(v14) = [v15 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:&v64];

  v17 = v64;
  if (!v14)
  {
    v30 = v64;
    sub_1C6EE4050();

    swift_willThrow();
    v28 = MEMORY[0x1E69E6158];
    v29 = v62;
    goto LABEL_7;
  }

  v18 = sub_1C6EE3F30();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = v17;
  sub_1C6EE3F20();
  v22 = *(v3 + 80);
  v23 = *(v3 + 96);
  v24 = *(v23 + 16);
  v25 = v59;
  v26 = sub_1C6EE3F10();
  if (!v25)
  {
    v37 = v27;
    v59 = v26;

    v38 = swift_allocObject();
    v55 = xmmword_1C6EE6B40;
    *(v38 + 16) = xmmword_1C6EE6B40;
    v39 = sub_1C6EBF184(v22, v23);
    v40 = MEMORY[0x1E69E6158];
    v41 = v62;
    *(v38 + 56) = MEMORY[0x1E69E6158];
    *(v38 + 64) = v41;
    *(v38 + 32) = v39;
    *(v38 + 40) = v42;
    v43 = v37 >> 62;
    v64 = 0;
    v65 = 0xE000000000000000;
    v56 = v37;
    if ((v37 >> 62) > 1)
    {
      v44 = 0;
      if (v43 != 2)
      {
        goto LABEL_18;
      }

      v46 = *(v59 + 16);
      v45 = *(v59 + 24);
      v44 = v45 - v46;
      if (!__OFSUB__(v45, v46))
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    else if (!v43)
    {
      v44 = BYTE6(v37);
LABEL_18:
      v47 = [objc_opt_self() stringFromByteCount:v44 countStyle:1];
      v48 = sub_1C6EE4A90();
      v50 = v49;

      MEMORY[0x1CCA57F60](v48, v50);

      v51 = v64;
      v52 = v65;
      *(v38 + 96) = v40;
      *(v38 + 104) = v41;
      *(v38 + 72) = v51;
      *(v38 + 80) = v52;
      sub_1C6EE4EE0();
      sub_1C6EE4730();

      v53 = v59;
      v54 = v56;
      sub_1C6EE4230();
      sub_1C6DF1134(v53, v54);
      goto LABEL_8;
    }

    if (__OFSUB__(HIDWORD(v59), v59))
    {
      __break(1u);
    }

    v44 = HIDWORD(v59) - v59;
    goto LABEL_18;
  }

  v28 = MEMORY[0x1E69E6158];
  v29 = v62;
LABEL_7:
  sub_1C6EE4EC0();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1C6EE6B40;
  v32 = sub_1C6EBF184(*(v3 + 80), *(v3 + 96));
  *(v31 + 56) = v28;
  *(v31 + 64) = v29;
  *(v31 + 32) = v32;
  *(v31 + 40) = v33;
  v64 = 0;
  v65 = 0xE000000000000000;
  swift_getErrorValue();
  sub_1C6EE5480();
  v34 = v64;
  v35 = v65;
  *(v31 + 96) = v28;
  *(v31 + 104) = v29;
  *(v31 + 72) = v34;
  *(v31 + 80) = v35;
  sub_1C6EE4730();

  swift_willThrow();
LABEL_8:
  v36 = *MEMORY[0x1E69E9840];
}

char *sub_1C6ED45C0()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 160);
  v4 = *&v0[v3];
  if (*(v4 + OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_isRetained) == 1)
  {
    v5 = qword_1EDEF66B0;
    v6 = v4;
    if (v5 != -1)
    {
      v16 = v6;
      swift_once();
      v6 = v16;
    }

    v7 = qword_1EDEF66C0;
    MEMORY[0x1EEE9AC00](v6);
    os_unfair_lock_lock((v7 + 24));
    sub_1C6EDA70C((v7 + 16));
    os_unfair_lock_unlock((v7 + 24));
  }

  else
  {
    v8 = v4;
  }

  if (*(v4 + OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_isPresenter) == 1)
  {
    [objc_opt_self() removeFilePresenter_];
  }

  (*(*(*(v2 + 80) - 8) + 8))(&v1[*(*v1 + 104)]);
  v9 = *&v1[*(*v1 + 112) + 8];

  v10 = *(*v1 + 120);
  v11 = sub_1C6EE41A0();
  v12 = *(*(v11 - 8) + 8);
  v12(&v1[v10], v11);
  v12(&v1[*(*v1 + 128)], v11);
  v12(&v1[*(*v1 + 136)], v11);
  v13 = *&v1[*(*v1 + 144)];

  v14 = *&v1[*(*v1 + 176)];

  return v1;
}

uint64_t sub_1C6ED4884(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

id sub_1C6ED48E0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = sub_1C6EE41A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(a1 + 8);
  if (v14 == 255)
  {
    v30 = v10;
    v16 = v31;
    sub_1C6ED4BC0(a2, &v33, &v32);
    if (!v16)
    {
      v29 = a3;
      v31 = 0;
      v15 = v32;
      *a1 = v32;
      *(a1 + 8) = 0;
      v20 = objc_opt_self();
      sub_1C6EDA9C0(v15, 0);

      v28 = [v20 defaultManager];
      sub_1C6ED4D78();
      sub_1C6EE4160();
      (*(v8 + 8))(v12, v30);
      v21 = sub_1C6EE4A60();

      v22 = v28;
      v23 = [v28 fileExistsAtPath_];

      if (v23)
      {
        v24 = v6[10];
        v25 = v6[11];
        v26 = v6[12];
        type metadata accessor for FileStore.FileContainer.Flags();
        sub_1C6EE5470();
        swift_allocObject();
        sub_1C6EE4CC0();
        *v27 = 16;
        sub_1C6EE4D50();
        swift_getWitnessTable();
        sub_1C6EE5040();
        sub_1C6ED5300(v32);
      }

      sub_1C6EDA884(v15, 0);
      a3 = v29;
      goto LABEL_10;
    }

    v17 = v33;
    *a1 = v33;
    *(a1 + 8) = 1;
    v18 = v17;
LABEL_6:
    swift_willThrow();
    return sub_1C6EDA9A8(v13, v14);
  }

  v15 = *a1;
  if (v14)
  {
    goto LABEL_6;
  }

LABEL_10:
  *a3 = v15;
  return sub_1C6EDA9A8(v13, v14);
}

uint64_t sub_1C6ED4BC0@<X0>(void *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = *a1;
  v8 = sub_1C6EE41A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v7[12] + 64);
  v14 = v7[10];
  v15 = a1 + v7[13];
  v13(v20, v14);
  sub_1C6ED4D78();
  v16 = sub_1C6ED4ED8(v20, a1, &off_1F468DE78, v12);
  if (v3)
  {
    (*(v9 + 8))(v12, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v3;
  }

  else
  {
    v18 = v16;
    (*(v9 + 8))(v12, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a3 = v18;
  }

  return result;
}

uint64_t sub_1C6ED4D78()
{
  v1 = *v0;
  v2 = sub_1C6EE4090();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 120);
  strcpy(v9, "features_store");
  v9[15] = -18;
  (*(v3 + 104))(v6, *MEMORY[0x1E6968F68], v2);
  sub_1C6DF0C68();
  sub_1C6EE4190();
  (*(v3 + 8))(v6, v2);
}

uint64_t sub_1C6ED4ED8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45[0] = v45 - v8;
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v50 = qword_1EDEF8F88;
  v45[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C6EE65B0;
  v10 = sub_1C6EE41A0();
  v45[1] = sub_1C6DF1088();
  v11 = sub_1C6EE5460();
  v13 = v12;
  v14 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v15 = sub_1C6DF10E0();
  *(v9 + 64) = v15;
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  v51 = 0;
  v52 = 0xE000000000000000;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 32))(v16, v17);
  sub_1C6EE4DD0();
  v18 = v51;
  v19 = v52;
  *(v9 + 96) = v14;
  *(v9 + 104) = v15;
  v48 = v15;
  *(v9 + 72) = v18;
  *(v9 + 80) = v19;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = (*(v21 + 24))(v20, v21);
  v23 = MEMORY[0x1E69E65A8];
  *(v9 + 136) = MEMORY[0x1E69E6530];
  *(v9 + 144) = v23;
  *(v9 + 112) = v22;
  sub_1C6EE4EE0();
  sub_1C6EE4730();

  sub_1C6ECEDD8(a1, &v51);
  v24 = *(v10 - 8);
  v25 = v45[0];
  (*(v24 + 16))(v45[0], a4, v10);
  (*(v24 + 56))(v25, 0, 1, v10);
  v26 = type metadata accessor for FeaturesStore(0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = v46;
  swift_unknownObjectRetain();
  v30 = v29;
  v31 = v49;
  sub_1C6EC69F8(&v51, v30, v47, v25);
  v33 = v32;
  if (v31)
  {
    sub_1C6EE4ED0();
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1C6EE6B40;
    v35 = sub_1C6EE5460();
    v36 = v48;
    *(v34 + 56) = v14;
    *(v34 + 64) = v36;
    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    v51 = 0;
    v52 = 0xE000000000000000;
    swift_getErrorValue();
    sub_1C6EE5480();
    v38 = v51;
    v39 = v52;
    *(v34 + 96) = v14;
    *(v34 + 104) = v36;
    *(v34 + 72) = v38;
    *(v34 + 80) = v39;
    sub_1C6EE4730();

    swift_willThrow();
  }

  else
  {
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1C6EE6590;
    v41 = sub_1C6EE5460();
    v42 = v48;
    *(v40 + 56) = MEMORY[0x1E69E6158];
    *(v40 + 64) = v42;
    *(v40 + 32) = v41;
    *(v40 + 40) = v43;
    sub_1C6EE4EE0();
    sub_1C6EE4730();
  }

  return v33;
}

void sub_1C6ED5300(int a1)
{
  v3 = *(*v1 + 152);
  v9 = *(v1 + v3);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 96);
  type metadata accessor for FileStore.FileContainer.Flags();
  swift_getWitnessTable();
  if ((sub_1C6EE5620() & 1) == 0)
  {
    v7 = *(v1 + v3) | a1;
    *(v1 + v3) = v7;
    v8 = *(v1 + *(*v1 + 160));
    sub_1C6ED6DC0(v7, v1 + *(*v1 + 120));
  }
}

uint64_t sub_1C6ED5458(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0xD000000000000012;
      }

      goto LABEL_8;
    }

    return 7105633;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x5047646E41757063;
      }

LABEL_8:
      v5[4] = v1;
      v5[5] = v2;
      sub_1C6EE51B0();

      strcpy(v5, "unknown value ");
      HIBYTE(v5[1]) = -18;
      v4 = sub_1C6EE5460();
      MEMORY[0x1CCA57F60](v4);

      return v5[0];
    }

    return 0x796C6E4F757063;
  }
}

uint64_t sub_1C6ED557C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for FileStore.FileContainer.Flags();
    sub_1C6EE5470();
    swift_allocObject();
    sub_1C6EE4CC0();
    *v1 = 8;
    sub_1C6EE4D50();
    swift_getWitnessTable();
    sub_1C6EE5040();
    sub_1C6ED5300(v2);
  }

  return result;
}

uint64_t sub_1C6ED5670()
{
  v0 = sub_1C6ED28FC();
  v1 = sub_1C6ED56EC();
  if (*(v1 + 16) <= *(v0 + 16) >> 3)
  {
    sub_1C6E038DC(v1);
  }

  else
  {
    v0 = sub_1C6E04178(v1, v0);
  }

  return v0;
}

uint64_t sub_1C6ED56EC()
{
  v1 = v0;
  v55 = *MEMORY[0x1E69E9840];
  v46 = sub_1C6EE4020();
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v47 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6EE41A0();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1E69E7CD0];
  v9 = [objc_opt_self() defaultManager];
  v43[1] = *(*v0 + 136);
  v10 = sub_1C6EE4100();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9A40, &unk_1C6EE65A0);
  v11 = swift_allocObject();
  v49 = xmmword_1C6EE6590;
  *(v11 + 16) = xmmword_1C6EE6590;
  v12 = *MEMORY[0x1E695DB78];
  *(v11 + 32) = *MEMORY[0x1E695DB78];
  type metadata accessor for URLResourceKey(0);
  v48 = v12;
  v13 = sub_1C6EE4C90();

  v52 = 0;
  v14 = [v9 contentsOfDirectoryAtURL:v10 includingPropertiesForKeys:v13 options:0 error:&v52];

  v15 = v52;
  if (!v14)
  {
    v31 = v52;
    v32 = sub_1C6EE4050();

    swift_willThrow();
    v19 = v32;
    if (qword_1EDEF8F80 == -1)
    {
LABEL_11:
      sub_1C6EE4ED0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1C6EE6B40;
      sub_1C6DF1088();
      v34 = sub_1C6EE5460();
      v36 = v35;
      v37 = MEMORY[0x1E69E6158];
      *(v33 + 56) = MEMORY[0x1E69E6158];
      v38 = sub_1C6DF10E0();
      *(v33 + 64) = v38;
      *(v33 + 32) = v34;
      *(v33 + 40) = v36;
      v52 = 0;
      v53 = 0xE000000000000000;
      swift_getErrorValue();
      sub_1C6EE5480();
      v39 = v52;
      v40 = v53;
      *(v33 + 96) = v37;
      *(v33 + 104) = v38;
      *(v33 + 72) = v39;
      *(v33 + 80) = v40;
      sub_1C6EE4730();

      goto LABEL_12;
    }

LABEL_14:
    swift_once();
    goto LABEL_11;
  }

  v16 = sub_1C6EE4CA0();
  v17 = v15;

  v45 = *(v16 + 16);
  if (v45)
  {
    v43[0] = v1;
    v18 = 0;
    v19 = 0;
    v44 = v16 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v43[2] = v51 + 16;
    v20 = (v2 + 8);
    v21 = (v51 + 8);
    while (v18 < *(v16 + 16))
    {
      v22 = v5;
      (*(v51 + 16))(v8, v44 + *(v51 + 72) * v18, v5);
      inited = swift_initStackObject();
      *(inited + 16) = v49;
      v24 = v48;
      *(inited + 32) = v48;
      v25 = v24;
      sub_1C6ED9D4C(inited);
      swift_setDeallocating();
      sub_1C6DFFC0C(inited + 32);
      v26 = v47;
      sub_1C6EE40C0();

      v27 = sub_1C6EE3FF0();
      (*v20)(v26, v46);
      if (v27 != 2 && (v27 & 1) != 0)
      {
        v52 = sub_1C6EE40E0();
        v53 = v28;
        v29 = sub_1C6EE4BF0();
        sub_1C6E032E0(&v52, v29, v30);
      }

      v5 = v22;
      (*v21)(v8, v22);
      if (v45 == ++v18)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:

LABEL_12:
  result = v54;
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1C6ED5CC0(uint64_t a1, uint64_t a2)
{
  v3 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_1C6EE51C0();
  v4 = sub_1C6EDCBA0(v6, v7, a2);

  return (v4 & 1) == 0;
}

uint64_t sub_1C6ED5D58(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v3 = *a2;
  v4 = sub_1C6EE4090();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6EE41A0();
  v23 = *(v9 - 8);
  v24 = v9;
  v10 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = v3[16];
  v13 = v3[11];
  v14 = v3[12];
  v15 = v3[10];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(AssociatedConformanceWitness + 8);
  sub_1C6EE51C0();
  (*(v5 + 104))(v8, *MEMORY[0x1E6968F70], v4);
  sub_1C6DF0C68();
  sub_1C6EE4190();
  (*(v5 + 8))(v8, v4);

  v18 = *(a2 + *(*a2 + 144));
  v25[3] = v13;
  v25[4] = AssociatedConformanceWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v22, v13);
  sub_1C6E31184(v25, v12);
  (*(v23 + 8))(v12, v24);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_1C6ED6024(uint64_t a1)
{
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 96);
  type metadata accessor for FileStore.FileContainer.Flags();
  sub_1C6EE5470();
  swift_allocObject();
  sub_1C6EE4CC0();
  *v5 = 0x80000000;
  sub_1C6EE4D50();
  swift_getWitnessTable();
  sub_1C6EE5040();
  *(a1 + *(*a1 + 152)) = v11;
  v6 = *(*a1 + 120);
  __src = v11;
  v7 = sub_1C6ED9F98(&__src, &v13 + 4);
  v9 = v8;
  sub_1C6E2B91C(v7, v8 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000031, 0x80000001C6EFDB50);

  return sub_1C6DF1134(v7, v9 & 0xFFFFFFFFFFFFFFLL);
}

void sub_1C6ED61A4(void (*a1)(void), uint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if ((v2[OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_options] & 4) == 0)
  {
    a1();
LABEL_13:
    v14 = *MEMORY[0x1E69E9840];
    return;
  }

  v4 = v3;
  v5 = a1;
  if (qword_1EDEF66B0 != -1)
  {
    a1 = swift_once();
  }

  v7 = qword_1EDEF66C0;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v7 + 6);
  sub_1C6EDA7A8(&v7[4]);
  os_unfair_lock_unlock(v7 + 6);
  if (v3)
  {
    goto LABEL_13;
  }

  v16 = 1;
  v17[0] = 0;
  if (v2[OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_isPresenter])
  {
    v4 = v2;
  }

  v8 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) initWithFilePresenter_];
  swift_unknownObjectRelease();
  v9 = sub_1C6EE4100();
  v10 = swift_allocObject();
  v10[2] = &v16;
  v10[3] = v5;
  v10[4] = a2;
  v10[5] = v17;
  v11 = swift_allocObject();
  v11[2] = sub_1C6EDAD50;
  v11[3] = v10;
  aBlock[4] = sub_1C6EDAD80;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6ED7D7C;
  aBlock[3] = &block_descriptor_63;
  v12 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v8 coordinateWritingItemAtURL:v9 options:1 error:aBlock byAccessor:v12];
  _Block_release(v12);

  v13 = aBlock[0];
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  if (v13)
  {
    swift_willThrow();

    goto LABEL_13;
  }

  if (v17[0])
  {
    swift_willThrow();

    goto LABEL_13;
  }

  if ((v16 & 1) == 0)
  {

    goto LABEL_13;
  }

  __break(1u);
}

void sub_1C6ED64E0(int a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  type metadata accessor for FileStore.FileContainer.Flags();
  sub_1C6EE5470();
  swift_allocObject();
  sub_1C6EE4CC0();
  *v6 = a1;
  sub_1C6EE4D50();
  swift_getWitnessTable();
  sub_1C6EE5040();
  sub_1C6ED5300(v7);
}

uint64_t sub_1C6ED65EC()
{
  type metadata accessor for FileStore.FileContainer.Flags();
  swift_getWitnessTable();
  if (sub_1C6EE5620())
  {
    v0 = sub_1C6ED8FB0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v2 = *(v0 + 2);
    v1 = *(v0 + 3);
    if (v2 >= v1 >> 1)
    {
      v0 = sub_1C6ED8FB0((v1 > 1), v2 + 1, 1, v0);
    }

    *(v0 + 2) = v2 + 1;
    v3 = &v0[16 * v2];
    *(v3 + 4) = 0xD000000000000010;
    *(v3 + 5) = 0x80000001C6EFDC40;
  }

  else
  {
    v0 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1C6EE5620())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_1C6ED8FB0(0, *(v0 + 2) + 1, 1, v0);
    }

    v5 = *(v0 + 2);
    v4 = *(v0 + 3);
    if (v5 >= v4 >> 1)
    {
      v0 = sub_1C6ED8FB0((v4 > 1), v5 + 1, 1, v0);
    }

    *(v0 + 2) = v5 + 1;
    v6 = &v0[16 * v5];
    *(v6 + 4) = 0x4672657355736168;
    *(v6 + 5) = 0xEF73657275746165;
  }

  if (sub_1C6EE5620())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_1C6ED8FB0(0, *(v0 + 2) + 1, 1, v0);
    }

    v8 = *(v0 + 2);
    v7 = *(v0 + 3);
    if (v8 >= v7 >> 1)
    {
      v0 = sub_1C6ED8FB0((v7 > 1), v8 + 1, 1, v0);
    }

    *(v0 + 2) = v8 + 1;
    v9 = &v0[16 * v8];
    strcpy(v9 + 32, "hasAllPackages");
    v9[47] = -18;
  }

  if (sub_1C6EE5620())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_1C6ED8FB0(0, *(v0 + 2) + 1, 1, v0);
    }

    v11 = *(v0 + 2);
    v10 = *(v0 + 3);
    if (v11 >= v10 >> 1)
    {
      v0 = sub_1C6ED8FB0((v10 > 1), v11 + 1, 1, v0);
    }

    *(v0 + 2) = v11 + 1;
    v12 = &v0[16 * v11];
    strcpy(v12 + 32, "hasAllModels");
    v12[45] = 0;
    *(v12 + 23) = -5120;
  }

  if (sub_1C6EE5620())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_1C6ED8FB0(0, *(v0 + 2) + 1, 1, v0);
    }

    v14 = *(v0 + 2);
    v13 = *(v0 + 3);
    if (v14 >= v13 >> 1)
    {
      v0 = sub_1C6ED8FB0((v13 > 1), v14 + 1, 1, v0);
    }

    *(v0 + 2) = v14 + 1;
    v15 = &v0[16 * v14];
    *(v15 + 4) = 0xD000000000000010;
    *(v15 + 5) = 0x80000001C6EFDC20;
  }

  if (sub_1C6EE5620())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_1C6ED8FB0(0, *(v0 + 2) + 1, 1, v0);
    }

    v17 = *(v0 + 2);
    v16 = *(v0 + 3);
    if (v17 >= v16 >> 1)
    {
      v0 = sub_1C6ED8FB0((v16 > 1), v17 + 1, 1, v0);
    }

    *(v0 + 2) = v17 + 1;
    v18 = &v0[16 * v17];
    *(v18 + 4) = 0xD000000000000013;
    *(v18 + 5) = 0x80000001C6EFDC00;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A50, &qword_1C6EE90D0);
  sub_1C6EDA944(&qword_1EDEF67C8, &unk_1EC1F9A50, &qword_1C6EE90D0);
  v19 = sub_1C6EE4A10();
  v21 = v20;

  MEMORY[0x1CCA57F60](v19, v21);

  MEMORY[0x1CCA57F60](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_1C6ED6AE0(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  return sub_1C6ED65EC();
}

uint64_t sub_1C6ED6AF4()
{
  swift_getWitnessTable();

  return sub_1C6EE5620();
}

uint64_t sub_1C6ED6B54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB8](a1, a2, WitnessTable);
}

uint64_t sub_1C6ED6BBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB0](a1, a2, WitnessTable);
}

uint64_t sub_1C6ED6C24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB90](a1, a2, WitnessTable);
}

uint64_t sub_1C6ED6C8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB98](a1, a2, WitnessTable);
}

uint64_t sub_1C6ED6D1C@<X0>(unsigned int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = nullsub_1(*a1, a2[2], a2[3], a2[4]);
  *a3 = result;
  *(a3 + 4) = 0;
  return result;
}

uint64_t sub_1C6ED6D58()
{
  swift_getWitnessTable();

  return sub_1C6EE5040();
}

void sub_1C6ED6DC0(int a1, uint64_t a2)
{
  v12[1] = *(v2 + 80);
  v13 = *(v2 + 96);
  v14 = a2;
  v15 = a1;
  sub_1C6ED6FD4(sub_1C6ED9AB4, v12);
  if (v3)
  {
    if (qword_1EDEF8F80 != -1)
    {
      swift_once();
    }

    sub_1C6EE4EC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C6EE6B40;
    v5 = sub_1C6EE40E0();
    v7 = v6;
    v8 = MEMORY[0x1E69E6158];
    *(v4 + 56) = MEMORY[0x1E69E6158];
    v9 = sub_1C6DF10E0();
    *(v4 + 64) = v9;
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    v16 = 0;
    v17 = 0xE000000000000000;
    swift_getErrorValue();
    sub_1C6EE5480();
    v10 = v16;
    v11 = v17;
    *(v4 + 96) = v8;
    *(v4 + 104) = v9;
    *(v4 + 72) = v10;
    *(v4 + 80) = v11;
    sub_1C6EE4730();

    swift_willThrow();
  }
}

uint64_t sub_1C6ED6F44(uint64_t a1, int a2)
{
  __src = a2;
  v2 = sub_1C6ED9F98(&__src, &v7 + 4);
  v4 = v3;
  sub_1C6E2B91C(v2, v3 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000031, 0x80000001C6EFDB50);

  return sub_1C6DF1134(v2, v4 & 0xFFFFFFFFFFFFFFLL);
}

void sub_1C6ED6FD4(void (*a1)(void), uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if ((v2[OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_options] & 4) == 0)
  {
    a1();
LABEL_12:
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  v5 = 0;
  v14 = 1;
  v15[0] = 0;
  if (v2[OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_isPresenter])
  {
    v5 = v2;
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) initWithFilePresenter_];
  swift_unknownObjectRelease();
  v7 = sub_1C6EE4100();
  v8 = swift_allocObject();
  v8[2] = &v14;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = v15;
  v9 = swift_allocObject();
  v9[2] = sub_1C6ED9ADC;
  v9[3] = v8;
  aBlock[4] = sub_1C6ED9AE0;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6ED7D7C;
  aBlock[3] = &block_descriptor_1;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v6 coordinateWritingItemAtURL:v7 options:0 error:aBlock byAccessor:v10];
  _Block_release(v10);

  v11 = aBlock[0];
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  if (v11)
  {
    swift_willThrow();

    goto LABEL_12;
  }

  if (v15[0])
  {
    swift_willThrow();

    goto LABEL_12;
  }

  if ((v14 & 1) == 0)
  {

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_1C6ED72CC()
{
  v0 = sub_1C6EE42C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  sub_1C6ED73F0(&v11 - v6);
  sub_1C6ED73F0(v5);
  v8 = sub_1C6EE4280();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8 & 1;
}

uint64_t sub_1C6ED73F0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9868, &unk_1C6EF6B40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v23 - v5;
  v7 = sub_1C6EE4020();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9A40, &unk_1C6EE65A0);
  inited = swift_initStackObject();
  v23 = xmmword_1C6EE6590;
  *(inited + 16) = xmmword_1C6EE6590;
  v14 = *MEMORY[0x1E695DAA8];
  *(inited + 32) = *MEMORY[0x1E695DAA8];
  v15 = v14;
  sub_1C6ED9D4C(inited);
  swift_setDeallocating();
  sub_1C6DFFC0C(inited + 32);
  sub_1C6EE40C0();

  sub_1C6EE4000();
  (*(v8 + 8))(v11, v7);
  v16 = sub_1C6EE42C0();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v6, 1, v16) != 1)
  {
    return (*(v17 + 32))(a1, v6, v16);
  }

  sub_1C6EDA890(v6, &qword_1EC1F9868, &unk_1C6EF6B40);
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  sub_1C6EE4EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v18 = swift_allocObject();
  *(v18 + 16) = v23;
  v19 = sub_1C6EE4080();
  v21 = v20;
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = sub_1C6DF10E0();
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  sub_1C6EE4730();

  return sub_1C6EE4250();
}

uint64_t sub_1C6ED77F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1C6ED72CC() & 1;
}

uint64_t sub_1C6ED7838()
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6ED78A4()
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

void *sub_1C6ED791C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1C6ED7948@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1C6ED79F8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C6ED7A28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1C6ED9F40(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1C6ED7A68(void *a1, uint64_t a2)
{
  v24 = sub_1C6EE41A0();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_containerURL;
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *a1;
  v12 = v25;
  v14 = sub_1C6DF0598(a2 + v9);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v13;
  if (v12[3] >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_13;
    }

    *a1 = v12;
    if ((v13 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1C6DF07F0(result, isUniquelyReferenced_nonNull_native);
    v12 = v25;
    result = sub_1C6DF0598(a2 + v9);
    if ((v2 & 1) != (v18 & 1))
    {
      result = sub_1C6EE5500();
      __break(1u);
      return result;
    }

    v14 = result;
    *a1 = v12;
    if ((v2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  while (1)
  {
    v20 = v12[7];
    v21 = *(v20 + 8 * v14);
    v22 = __OFSUB__(v21, 1);
    v23 = v21 - 1;
    if (!v22)
    {
      break;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    result = sub_1C6E0A9A4();
    v12 = v25;
    *a1 = v25;
    if ((v2 & 1) == 0)
    {
LABEL_8:
      v19 = *(v5 + 16);
      v5 += 16;
      v19(v8, a2 + v9, v24);
      result = sub_1C6DF0BB0(v14, v8, 0, v12);
    }
  }

  *(v20 + 8 * v14) = v23;
  return result;
}

uint64_t sub_1C6ED7C34(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1C6EE4FE0();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00]();
  v14 = &v16 - v13;
  a3(v12);
  (*(*(a6 - 8) + 56))(v14, 0, 1, a6);
  return (*(v10 + 40))(a2, v14, v9);
}

uint64_t sub_1C6ED7D7C(uint64_t a1)
{
  v2 = sub_1C6EE41A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1C6EE4150();
  v8(v6);
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1C6ED7E60(unint64_t result, uint64_t a2)
{
  v2 = *result;
  if (*(*result + 16))
  {
    v4 = OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_containerURL;
    result = sub_1C6DF0598(a2 + OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_containerURL);
    if ((v5 & 1) != 0 && *(*(v2 + 56) + 8 * result) >= 2)
    {
      if (qword_1EDEF8F80 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1C6EE6B40;
      v7 = sub_1C6EE40E0();
      v9 = v8;
      *(v6 + 56) = MEMORY[0x1E69E6158];
      *(v6 + 64) = sub_1C6DF10E0();
      v10 = MEMORY[0x1E69E6530];
      *(v6 + 32) = v7;
      *(v6 + 40) = v9;
      v11 = MEMORY[0x1E69E65A8];
      *(v6 + 96) = v10;
      *(v6 + 104) = v11;
      v12 = *(v2 + 16);
      if (v12)
      {
        v13 = sub_1C6DF0598(a2 + v4);
        if (v14)
        {
          v12 = *(*(v2 + 56) + 8 * v13);
        }

        else
        {
          v12 = 0;
        }
      }

      *(v6 + 72) = v12;
      sub_1C6EE4EE0();
      sub_1C6EE4730();

      sub_1C6EDA690();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

void sub_1C6ED8100()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  [v0 setQualityOfService_];
  v1 = sub_1C6EE4A60();
  [v0 setName_];

  qword_1EDEF6138 = v0;
}

uint64_t sub_1C6ED8204()
{
  if ((*(*(v0 + 16) + OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_options) & 0x10) != 0)
  {
    if (qword_1EDEF8F80 != -1)
    {
      swift_once();
      v7 = *(v0 + 16);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1C6EE6590;
    v3 = sub_1C6EE40E0();
    v5 = v4;
    *(v2 + 56) = MEMORY[0x1E69E6158];
    *(v2 + 64) = sub_1C6DF10E0();
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    sub_1C6EE4EE0();
    sub_1C6EE4730();

    sub_1C6EDA690();
    swift_allocError();
    swift_willThrow();
    v1 = *(v0 + 8);
  }

  else
  {
    v1 = *(v0 + 8);
  }

  return v1();
}

uint64_t sub_1C6ED84FC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1C6ED85A4;

  return sub_1C6ED81E4();
}

uint64_t sub_1C6ED85A4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_1C6EE4040();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

id sub_1C6ED8758()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C6ED87FC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1C6EDAD20;

  return v7();
}

uint64_t sub_1C6ED88E4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1C6ED89CC;

  return v8();
}

uint64_t sub_1C6ED89CC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C6ED8AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A70, &qword_1C6EF75A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1C6EDA3BC(a3, v25 - v11);
  v13 = sub_1C6EE4DC0();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C6EDA890(v12, &unk_1EC1F9A70, &qword_1C6EF75A8);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1C6EE4DB0();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1C6EE4D70();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1C6EE4B10() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1C6EDA890(a3, &unk_1EC1F9A70, &qword_1C6EF75A8);

    return v23;
  }

LABEL_8:
  sub_1C6EDA890(a3, &unk_1EC1F9A70, &qword_1C6EF75A8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C6ED8DAC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C6ED8EA4;

  return v7(a1);
}

uint64_t sub_1C6ED8EA4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_1C6ED8FB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A60, &qword_1C6EE6950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_3(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1C6ED915C()
{
  result = qword_1EC1F9A00;
  if (!qword_1EC1F9A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9A00);
  }

  return result;
}

unint64_t sub_1C6ED91B4()
{
  result = qword_1EC1F9A08;
  if (!qword_1EC1F9A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9A08);
  }

  return result;
}

unint64_t sub_1C6ED920C()
{
  result = qword_1EC1F9A10;
  if (!qword_1EC1F9A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9A10);
  }

  return result;
}

unint64_t sub_1C6ED9264()
{
  result = qword_1EC1F9A18;
  if (!qword_1EC1F9A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9A18);
  }

  return result;
}

char *sub_1C6ED92D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A20, &qword_1C6EF6B50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_3(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1C6ED93D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AC0, &qword_1C6EE6A50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_3(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C6ED94DC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    v13 = _swift_stdlib_malloc_size_3(v12);
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
    v12 = MEMORY[0x1E69E7CC0];
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

char *sub_1C6ED95D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AD0, &qword_1C6EE6C30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_3(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C6ED96DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F79D0, &qword_1C6EE6C40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_3(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

size_t sub_1C6ED98CC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size_3(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_1C6ED9AB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 56);
  return sub_1C6ED6F44(*(v0 + 40), *(v0 + 48));
}

uint64_t sub_1C6ED9AE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1C6ED9B08(uint64_t a1)
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
    sub_1C6EE5110();
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
  result = sub_1C6EE51F0();
  *v1 = result;
  return result;
}

uint64_t sub_1C6ED9BA8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C6EE5110();
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
      result = sub_1C6EE5110();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C6EDA944(&qword_1EC1F9A98, &qword_1EC1F9A90, &qword_1C6EF7610);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9A90, &qword_1C6EF7610);
            v9 = sub_1C6EC1168(v13, i, a3);
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
        type metadata accessor for RequestEventProcessor();
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

uint64_t sub_1C6ED9D4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9A48, &qword_1C6EF75A0);
    v3 = sub_1C6EE5180();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_1C6EE4A90();
      sub_1C6EE5580();
      v29 = v7;
      sub_1C6EE4B30();
      v9 = sub_1C6EE55A0();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_1C6EE4A90();
        v20 = v19;
        if (v18 == sub_1C6EE4A90() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_1C6EE54B0();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1C6ED9F40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_1C6ED9F78(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6ED9F98(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C6EDA050()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C6EDA0FC;

  return sub_1C6ED84FC(v2, v3);
}

uint64_t sub_1C6EDA0FC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C6EDA1F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C6EDAD24;

  return sub_1C6ED87FC(v2, v3, v5);
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C6EDA2F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C6EDAD28;

  return sub_1C6ED88E4(a1, v4, v5, v7);
}

uint64_t sub_1C6EDA3BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A70, &qword_1C6EF75A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6EDA42C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C6EDAD38;

  return sub_1C6ED8DAC(a1, v5);
}

uint64_t sub_1C6EDA4E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C6EDA59C;

  return sub_1C6ED8DAC(a1, v5);
}

uint64_t sub_1C6EDA59C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1C6EDA690()
{
  result = qword_1EDEF66A8;
  if (!qword_1EDEF66A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF66A8);
  }

  return result;
}

BOOL sub_1C6EDA728(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1C6ED5CC0(a1, v1[5]);
}

uint64_t sub_1C6EDA768(uint64_t *a1, uint64_t *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1C6ED3E70(a1, a2) & 1;
}

void *sub_1C6EDA7C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  result = (*(v0 + 24))(&v5);
  *v1 = 0;
  return result;
}

uint64_t sub_1C6EDA840@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_1C6EDA860()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  return sub_1C6ED557C();
}

void sub_1C6EDA86C(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1C6EDA884(a1, a2 & 1);
  }
}

void sub_1C6EDA884(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1C6EDA890(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6EDA908@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1C6ED28FC();
  *a2 = result;
  return result;
}

uint64_t sub_1C6EDA944(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_1C6EDA9A8(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1C6EDA9C0(result, a2 & 1);
  }

  return result;
}

id sub_1C6EDA9C0(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1C6EDA9CC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C6EDAA5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C6EDAB10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6EDAB30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1C6EDAB60(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6EDAB80(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContainerLock.Errors(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ContainerLock.Errors(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1C6EDAC90()
{
  result = qword_1EC1F9BA0;
  if (!qword_1EC1F9BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9BA0);
  }

  return result;
}

uint64_t sub_1C6EDAD84(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x1E69E7CC0];
  sub_1C6E15B90(0, v1, 0);
  v2 = v27;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_1C6EE50D0();
  v7 = result;
  v8 = 0;
  v26 = *(a1 + 36);
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v25 = *v11;
    v24 = *(*(a1 + 56) + 4 * v7);
    v13 = *(v27 + 16);
    v14 = *(v27 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_1C6E15B90((v14 > 1), v13 + 1, 1);
    }

    *(v27 + 16) = v13 + 1;
    v15 = v27 + 24 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    *(v15 + 48) = v24;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1C6EDB7B4(v7, v26, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1C6EDB7B4(v7, v26, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C6EDAFE4()
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EDB050()
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

void sub_1C6EDB0A0(uint64_t a1, char a2, void *a3)
{
  v39 = *(a1 + 16);
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  LODWORD(v8) = *(a1 + 48);
  v9 = *a3;

  v10 = sub_1C6DEC784(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C6E07580(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_1C6DEC784(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1C6EE5500();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_1C6E09DC4();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DA8, &unk_1C6EE89F8);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 4 * v10) = v8;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1C6EE51B0();
    MEMORY[0x1CCA57F60](0xD00000000000001BLL, 0x80000001C6EF8350);
    sub_1C6EE52F0();
    MEMORY[0x1CCA57F60](39, 0xE100000000000000);
    sub_1C6EE5300();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 72);
    v8 = 1;
    while (v8 < *(a1 + 16))
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v26 = *v5;
      v27 = *a3;

      v28 = sub_1C6DEC784(v7, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_1C6E07580(v32, 1);
        v33 = *a3;
        v28 = sub_1C6DEC784(v7, v6);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 4 * v28) = v26;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v35[2] = v38;
      v5 += 6;
      if (v39 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_1C6EDB41C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return;
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1C6E15A50(0, v4, 0);
  if (a2 < 0)
  {
    goto LABEL_23;
  }

  v8 = 0;
  v26 = a2;
  v27 = a1 + 32;
  v9 = v31;
  v24 = 4 * a2;
  v25 = v4;
  while (1)
  {
    v10 = *(v27 + 8 * v8);

    v28 = v9;
    v29 = v8;
    if (!a2)
    {
      break;
    }

    v11 = sub_1C6EE4D00();
    *(v11 + 16) = a2;
    bzero((v11 + 32), v24);
    v12 = *(v10 + 16);
    if (v12)
    {
      goto LABEL_8;
    }

LABEL_17:

    v9 = v28;
    v23 = *(v28 + 16);
    v22 = *(v28 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_1C6E15A50((v22 > 1), v23 + 1, 1);
      v9 = v28;
    }

    v8 = v29 + 1;
    *(v9 + 16) = v23 + 1;
    *(v9 + 8 * v23 + 32) = v11;
    a2 = v26;
    if (v29 + 1 == v25)
    {
      return;
    }
  }

  v11 = MEMORY[0x1E69E7CC0];
  v12 = *(v10 + 16);
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_8:
  v13 = 0;
  v14 = (v10 + 40);
  while (v13 < *(v10 + 16))
  {
    if (v13 < *(v11 + 16))
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      v17 = *(a3 + 16);

      v18 = a3;
      v19 = a4;
      if (v17)
      {
        v20 = sub_1C6DEC784(v15, v16);
        v19 = a4;
        if (v21)
        {
          v19 = *(*(v18 + 56) + 4 * v20);
        }
      }

      if (v13 >= *(v11 + 16))
      {
        goto LABEL_22;
      }

      *(v11 + 32 + 4 * v13) = v19;
      a3 = v18;
    }

    ++v13;
    v14 += 2;
    if (v12 == v13)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_1C6EDB618(uint64_t *a1)
{
  if (*(sub_1C6EDAD84(a1[2]) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7740, &qword_1C6EE68F0);
    v3 = sub_1C6EE5340();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v12 = v3;

  sub_1C6EDB0A0(v4, 1, &v12);
  if (!v1)
  {

    v5 = v12;
    if (*(v12 + 16))
    {
      v7 = *a1;
      v6 = a1[1];

      v8 = sub_1C6DEC784(v7, v6);
      if (v9)
      {
        v10 = *(*(v5 + 56) + 4 * v8);
        return v5;
      }
    }

    else
    {
    }

    sub_1C6EDB760();
    swift_allocError();
    swift_willThrow();
    return v5;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_1C6EDB760()
{
  result = qword_1EC1F9C10;
  if (!qword_1EC1F9C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9C10);
  }

  return result;
}

uint64_t sub_1C6EDB7B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TokenCodeError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for TokenCodeError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1C6EDB8C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t sub_1C6EDB908(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C6EDB960()
{
  result = qword_1EC1F9C18;
  if (!qword_1EC1F9C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9C18);
  }

  return result;
}

uint64_t InterestToken.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t InterestToken.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t InterestToken.deinit()
{
  v1 = v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3(v4);

  v5 = *(v1 + 24);

  return v1;
}

uint64_t InterestToken.__deallocating_deinit()
{
  v1 = v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3(v4);

  v5 = *(v1 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1C6EDBB08(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9878, &qword_1C6EF6B58) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1C6ECE368(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1C6EE10BC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1C6EDBBBC(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9878, &qword_1C6EF6B58);
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = &v31 - v7;
  v8 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1C6E15A30(0, v8, 0);
    v40 = v42;
    v10 = a3 + 56;
    v11 = -1 << *(a3 + 32);
    v12 = sub_1C6EE50D0();
    v13 = 0;
    v32 = a3 + 64;
    v33 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a3 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v37 = v13;
      v16 = *(a3 + 36);
      v17 = a3;
      v18 = (*(a3 + 48) + 16 * v12);
      v19 = v18[1];
      v41[0] = *v18;
      v41[1] = v19;

      v35(v41);
      v38 = v3;
      if (v3)
      {
        goto LABEL_27;
      }

      v20 = v40;
      v42 = v40;
      v22 = *(v40 + 16);
      v21 = *(v40 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1C6E15A30(v21 > 1, v22 + 1, 1);
        v20 = v42;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v40 = v20;
      sub_1C6EE3C44(v39, v20 + v23 + *(v34 + 72) * v22);
      v14 = 1 << *(v17 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v24 = *(v10 + 8 * v15);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      a3 = v17;
      if (v16 != *(v17 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v15 << 6;
        v27 = v15 + 1;
        v28 = (v32 + 8 * v15);
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            sub_1C6DFCC80(v12, v16, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        sub_1C6DFCC80(v12, v16, 0);
      }

LABEL_4:
      v3 = v38;
      v13 = v37 + 1;
      v12 = v14;
      if (v37 + 1 == v33)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:

    __break(1u);
  }

  return result;
}

uint64_t sub_1C6EDBED0(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v46 = MEMORY[0x1E69E7CC0];
  sub_1C6E15B70(0, v6, 0);
  v7 = v46;
  v8 = -1 << *(a1 + 32);
  v43 = a1 + 64;
  result = sub_1C6EE50D0();
  v10 = result;
  v11 = 0;
  v45 = *(a1 + 36);
  v34 = a1 + 72;
  v35 = v6;
  v36 = a1;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v43 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_22;
    }

    if (v45 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v39 = v11;
    v40 = 1 << v10;
    v14 = *(a1 + 56);
    v15 = (*(a1 + 48) + 16 * v10);
    v42 = v7;
    v16 = *v15;
    v17 = v15[1];
    v18 = v14 + 24 * v10;
    v20 = *v18;
    v19 = *(v18 + 8);
    v21 = v5;
    v22 = *(v18 + 16);
    swift_bridgeObjectRetain_n();
    sub_1C6E00CBC(v20, v19, v22);
    sub_1C6E00CBC(v20, v19, v22);

    v23 = sub_1C6E00C60(v20, v19, v22);
    v41 = &v34;
    MEMORY[0x1EEE9AC00](v23);
    *(&v34 - 6) = v16;
    *(&v34 - 5) = v17;
    *(&v34 - 4) = v20;
    *(&v34 - 3) = v19;
    *(&v34 - 16) = v22;
    sub_1C6EE3E68();
    v24 = v44;
    sub_1C6EE4600();
    v44 = v24;
    v7 = v42;

    sub_1C6E00C60(v20, v19, v22);
    v46 = v7;
    v26 = *(v7 + 16);
    v25 = *(v7 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1C6E15B70(v25 > 1, v26 + 1, 1);
      v7 = v46;
    }

    *(v7 + 16) = v26 + 1;
    result = sub_1C6EE3DDC(v21, v7 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v26, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    a1 = v36;
    v12 = 1 << *(v36 + 32);
    if (v10 >= v12)
    {
      goto LABEL_24;
    }

    v27 = *(v43 + 8 * v13);
    if ((v27 & v40) == 0)
    {
      goto LABEL_25;
    }

    if (v45 != *(v36 + 36))
    {
      goto LABEL_26;
    }

    v5 = v21;
    v28 = v27 & (-2 << (v10 & 0x3F));
    if (v28)
    {
      v12 = __clz(__rbit64(v28)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v13 << 6;
      v30 = v13 + 1;
      v31 = (v34 + 8 * v13);
      while (v30 < (v12 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_1C6DFCC80(v10, v45, 0);
          v12 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = sub_1C6DFCC80(v10, v45, 0);
    }

LABEL_4:
    v11 = v39 + 1;
    v10 = v12;
    if (v39 + 1 == v35)
    {
      return v7;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C6EDC2B0(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v39 = a2;
  v37 = sub_1C6EE41A0();
  v5 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v42 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v45 = MEMORY[0x1E69E7CC0];
    v10 = v6;
    sub_1C6E15BD0(0, v8, 0);
    v43 = v45;
    v11 = -1 << *(a3 + 32);
    v41 = a3 + 56;
    v12 = sub_1C6EE50D0();
    v13 = 0;
    v35 = v10 + 32;
    v36 = v10;
    v33 = a3 + 64;
    v34 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a3 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v41 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v17 = *(a3 + 36);
      v18 = a3;
      v19 = (*(a3 + 48) + 16 * v12);
      v20 = v19[1];
      v44[0] = *v19;
      v44[1] = v20;

      v38(v44);
      v40 = v3;
      if (v3)
      {
        goto LABEL_27;
      }

      v21 = v43;
      v45 = v43;
      v23 = *(v43 + 16);
      v22 = *(v43 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1C6E15BD0(v22 > 1, v23 + 1, 1);
        v21 = v45;
      }

      *(v21 + 16) = v23 + 1;
      v24 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v43 = v21;
      (*(v36 + 32))(v21 + v24 + *(v36 + 72) * v23, v42, v37);
      v14 = 1 << *(v18 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v25 = *(v41 + 8 * v16);
      if ((v25 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      a3 = v18;
      if (v17 != *(v18 + 36))
      {
        goto LABEL_26;
      }

      v26 = v25 & (-2 << (v12 & 0x3F));
      if (v26)
      {
        v14 = __clz(__rbit64(v26)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v34;
      }

      else
      {
        v27 = v16 << 6;
        v28 = v16 + 1;
        v15 = v34;
        v29 = (v33 + 8 * v16);
        while (v28 < (v14 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            sub_1C6DFCC80(v12, v17, 0);
            v14 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        sub_1C6DFCC80(v12, v17, 0);
      }

LABEL_4:
      ++v13;
      v12 = v14;
      v3 = v40;
      if (v13 == v15)
      {
        return v43;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:

    __break(1u);
  }

  return result;
}

uint64_t sub_1C6EDC5E4(void (*a1)(void *__return_ptr, void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = a3;
    v61 = MEMORY[0x1E69E7CC0];
    sub_1C6E15B50(0, v3, 0);
    v6 = v61;
    v7 = v5 + 64;
    v8 = -1 << *(v5 + 32);
    result = sub_1C6EE50D0();
    v9 = result;
    v10 = 0;
    v11 = *(v5 + 36);
    v45 = v5 + 72;
    v46 = v3;
    v48 = v5 + 64;
    v49 = v5;
    v47 = v11;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v5 + 32))
    {
      v14 = v9 >> 6;
      if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_25;
      }

      if (v11 != *(v5 + 36))
      {
        goto LABEL_26;
      }

      v51 = v10;
      v15 = *(v5 + 56);
      v16 = (*(v5 + 48) + 16 * v9);
      v18 = *v16;
      v17 = v16[1];
      v19 = v15 + 24 * v9;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      swift_bridgeObjectRetain_n();
      sub_1C6E00CBC(v20, v21, v22);
      sub_1C6E00CBC(v20, v21, v22);

      sub_1C6E00C60(v20, v21, v22);
      v54[0] = v18;
      v54[1] = v17;
      v55 = v20;
      v56 = v21;
      v57 = v22;
      a1(v58, v54, &v53);
      if (v52)
      {
        v41 = v55;
        v42 = v56;
        v43 = v57;

        sub_1C6E00C60(v41, v42, v43);
      }

      v52 = 0;
      v23 = v55;
      v24 = v56;
      v25 = v57;

      result = sub_1C6E00C60(v23, v24, v25);
      v26 = v58[0];
      v27 = v58[1];
      v28 = v59;
      v29 = v60;
      v30 = v6;
      v61 = v6;
      v31 = *(v6 + 16);
      v32 = *(v30 + 24);
      if (v31 >= v32 >> 1)
      {
        v44 = v59;
        result = sub_1C6E15B50((v32 > 1), v31 + 1, 1);
        v28 = v44;
        v30 = v61;
      }

      *(v30 + 16) = v31 + 1;
      v33 = v30 + 40 * v31;
      *(v33 + 32) = v26;
      *(v33 + 40) = v27;
      *(v33 + 48) = v28;
      *(v33 + 64) = v29;
      v5 = v49;
      v12 = 1 << *(v49 + 32);
      if (v9 >= v12)
      {
        goto LABEL_27;
      }

      v7 = v48;
      v34 = *(v48 + 8 * v14);
      if ((v34 & (1 << v9)) == 0)
      {
        goto LABEL_28;
      }

      v6 = v30;
      v11 = v47;
      if (v47 != *(v49 + 36))
      {
        goto LABEL_29;
      }

      v35 = v34 & (-2 << (v9 & 0x3F));
      if (v35)
      {
        v12 = __clz(__rbit64(v35)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v13 = v46;
      }

      else
      {
        v36 = v14 << 6;
        v37 = v14 + 1;
        v13 = v46;
        v38 = (v45 + 8 * v14);
        while (v37 < (v12 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            result = sub_1C6DFCC80(v9, v47, 0);
            v12 = __clz(__rbit64(v39)) + v36;
            goto LABEL_4;
          }
        }

        result = sub_1C6DFCC80(v9, v47, 0);
      }

LABEL_4:
      v10 = v51 + 1;
      v9 = v12;
      if (v51 + 1 == v13)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6EDC924(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = a3;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1C6E15A10(0, v4, 0);
    v36 = v41;
    v7 = v6 + 56;
    v8 = -1 << *(v6 + 32);
    v9 = sub_1C6EE50D0();
    v10 = 0;
    v32 = v6 + 64;
    v33 = v4;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v6 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_23;
      }

      v35 = v10;
      v13 = *(v6 + 36);
      v14 = v6;
      v15 = (*(v6 + 48) + 16 * v9);
      v16 = v15[1];
      v38[0] = *v15;
      v38[1] = v16;

      a1(&v39, v38);
      if (v3)
      {
        goto LABEL_27;
      }

      v17 = v39;
      v18 = v40;
      v19 = v36;
      v41 = v36;
      v21 = *(v36 + 16);
      v20 = *(v36 + 24);
      if (v21 >= v20 >> 1)
      {
        v37 = v39;
        v31 = v40;
        sub_1C6E15A10((v20 > 1), v21 + 1, 1);
        v18 = v31;
        v17 = v37;
        v19 = v41;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v18;
      v6 = v14;
      v11 = 1 << *(v14 + 32);
      if (v9 >= v11)
      {
        goto LABEL_24;
      }

      v23 = *(v7 + 8 * v12);
      if ((v23 & (1 << v9)) == 0)
      {
        goto LABEL_25;
      }

      v36 = v19;
      v24 = v13;
      if (v13 != *(v14 + 36))
      {
        goto LABEL_26;
      }

      v25 = v23 & (-2 << (v9 & 0x3F));
      if (v25)
      {
        v11 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v12 << 6;
        v27 = v12 + 1;
        v28 = (v32 + 8 * v12);
        while (v27 < (v11 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            sub_1C6DFCC80(v9, v24, 0);
            v11 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        sub_1C6DFCC80(v9, v24, 0);
      }

LABEL_4:
      v3 = 0;
      v10 = v35 + 1;
      v9 = v11;
      if (v35 + 1 == v33)
      {
        return v36;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:

    __break(1u);
  }

  return result;
}

uint64_t sub_1C6EDCBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1C6EE5580();
  sub_1C6EE4B30();
  v7 = sub_1C6EE55A0();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1C6EE54B0() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1C6EDCC98(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1C6EE5140();

    return v3 & 1;
  }

  else
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

    v5 = *(a2 + 40);
    sub_1C6EE5580();
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    sub_1C6EE4B30();
    v9 = sub_1C6EE55A0();
    v10 = -1 << *(a2 + 32);
    v11 = v9 & ~v10;
    if ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      v12 = ~v10;
      while (1)
      {
        v13 = *(*(a2 + 48) + 8 * v11);
        v14 = *(v13 + 16) == v7 && *(v13 + 24) == v8;
        if (v14 || (sub_1C6EE54B0() & 1) != 0)
        {
          break;
        }

        v11 = (v11 + 1) & v12;
        if (((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C6EDCDC0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v22 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v22 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v22);
          ++v11;
        }

        while (!v7);
        v11 = v22;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a1 + 40);
      sub_1C6EE5580();

      sub_1C6EE4B30();
      v16 = sub_1C6EE55A0();
      v17 = -1 << *(a1 + 32);
      v18 = v16 & ~v17;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v19 = ~v17;
      while (1)
      {
        v20 = (*(a1 + 48) + 16 * v18);
        v21 = *v20 == v14 && v20[1] == v13;
        if (v21 || (sub_1C6EE54B0() & 1) != 0)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

uint64_t sub_1C6EDCF9C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v22 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v22 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v22);
          ++v11;
        }

        while (!v7);
        v11 = v22;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a1 + 40);
      sub_1C6EE5580();

      sub_1C6EE4B30();
      v16 = sub_1C6EE55A0();
      v17 = -1 << *(a1 + 32);
      v18 = v16 & ~v17;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v19 = ~v17;
      while (1)
      {
        v20 = (*(a1 + 48) + 16 * v18);
        v21 = *v20 == v14 && v20[1] == v13;
        if (v21 || (sub_1C6EE54B0() & 1) != 0)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

uint64_t sub_1C6EDD178(uint64_t a1)
{
  v3 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
  v68 = *(v3 - 8);
  v4 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec);
  if ((sub_1C6E20DC4(v7, a1) & 1) == 0)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v61[1] = v1;
  v67 = *(v7 + 16);
  if (v67)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC8];
    v62 = xmmword_1C6EE65B0;
    v63 = v7;
    v64 = a1;
    while (v8 < *(v7 + 16))
    {
      sub_1C6EE3D74(v7 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v8, v6, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      v10 = *v6;
      v11 = *(v6 + 1);
      v12 = *(v6 + 3);
      v13 = v6[32];

      if (sub_1C6E26E94(v10, v11, v12, v13, a1))
      {
        if (*(a1 + 16) && (v14 = sub_1C6DEC784(v10, v11), (v15 & 1) != 0))
        {
          v16 = *(a1 + 56) + 24 * v14;
          v17 = *(v16 + 8);
          v18 = v9;
          v19 = *(v16 + 16);
          v66 = *v16;
          v20 = v17;
          v21 = v19;
          sub_1C6E00CBC(v66, v17, v19);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v71 = v18;
          v24 = sub_1C6DEC784(v10, v11);
          v25 = *(v18 + 16);
          v26 = (v23 & 1) == 0;
          v27 = v25 + v26;
          if (__OFADD__(v25, v26))
          {
            goto LABEL_31;
          }

          v28 = v23;
          if (*(v18 + 24) >= v27)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1C6E09928();
            }
          }

          else
          {
            sub_1C6E06D1C(v27, isUniquelyReferenced_nonNull_native);
            v29 = sub_1C6DEC784(v10, v11);
            if ((v28 & 1) != (v30 & 1))
            {
              goto LABEL_33;
            }

            v24 = v29;
          }

          v48 = v66;
          v49 = v71;
          if (v28)
          {
            v50 = v71[7] + 24 * v24;
            v51 = *v50;
            v52 = *(v50 + 8);
            v53 = *(v50 + 16);
            *v50 = v66;
            *(v50 + 8) = v20;
            *(v50 + 16) = v21;
            sub_1C6E00C60(v51, v52, v53);

            v7 = v63;
            a1 = v64;
            v9 = v49;
          }

          else
          {
            v71[(v24 >> 6) + 8] |= 1 << v24;
            v54 = (v49[6] + 16 * v24);
            *v54 = v10;
            v54[1] = v11;
            v55 = v49[7] + 24 * v24;
            *v55 = v48;
            *(v55 + 8) = v20;
            *(v55 + 16) = v21;
            v56 = v49[2];
            v57 = __OFADD__(v56, 1);
            v58 = v56 + 1;
            if (v57)
            {
              goto LABEL_32;
            }

            v9 = v49;
            v49[2] = v58;
            v7 = v63;
            a1 = v64;
          }
        }

        else
        {
          v39 = sub_1C6DEC784(v10, v11);
          if (v40)
          {
            v41 = v39;
            v42 = swift_isUniquelyReferenced_nonNull_native();
            v71 = v9;
            if ((v42 & 1) == 0)
            {
              sub_1C6E09928();
              v9 = v71;
            }

            v43 = *(*(v9 + 48) + 16 * v41 + 8);

            v44 = *(v9 + 56) + 24 * v41;
            v45 = *v44;
            v46 = *(v44 + 8);
            v47 = *(v44 + 16);
            sub_1C6ECDDA0(v41, v9);

            sub_1C6E00C60(v45, v46, v47);
          }

          else
          {
          }
        }
      }

      else
      {
        v66 = v9;
        if (qword_1EDEF8F80 != -1)
        {
          swift_once();
        }

        v65 = qword_1EDEF8F88;
        sub_1C6EE4EC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v31 = swift_allocObject();
        *(v31 + 16) = v62;
        v32 = MEMORY[0x1E69E6158];
        *(v31 + 56) = MEMORY[0x1E69E6158];
        v33 = sub_1C6DF10E0();
        *(v31 + 64) = v33;
        *(v31 + 32) = v10;
        *(v31 + 40) = v11;
        v71 = 0;
        v72 = 0xE000000000000000;
        v69 = v12;
        v70 = v13;
        sub_1C6EE52F0();
        v34 = v71;
        v35 = v72;
        *(v31 + 96) = v32;
        *(v31 + 104) = v33;
        *(v31 + 72) = v34;
        *(v31 + 80) = v35;
        v36 = v64;
        v37 = sub_1C6EE49B0();
        *(v31 + 136) = v32;
        *(v31 + 144) = v33;
        *(v31 + 112) = v37;
        *(v31 + 120) = v38;
        a1 = v36;
        sub_1C6EE4730();

        v7 = v63;
        v9 = v66;
      }

      ++v8;
      sub_1C6EE3D14(v6, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      if (v67 == v8)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    result = sub_1C6EE5500();
    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC8];
LABEL_29:
    v60 = sub_1C6EDE398(v9);

    return v60;
  }

  return result;
}

uint64_t sub_1C6EDD694(uint64_t a1)
{
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9878, &qword_1C6EF6B58);
  v97 = *(v100 - 8);
  v2 = *(v97 + 64);
  v3 = MEMORY[0x1EEE9AC00](v100);
  v108 = v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v107 = v96 - v5;
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v99 = (v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v102 = (v96 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v104 = (v96 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8000, &unk_1C6EEA4C0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v98 = v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v101 = v96 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v103 = v96 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = (v96 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7508, &unk_1C6EE6690);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = (v96 - v26);
  v28 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a1;
  sub_1C6EE3BDC(a1 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy, v27, &qword_1EC1F7508, &unk_1C6EE6690);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    v33 = &qword_1EC1F7508;
    v34 = &unk_1C6EE6690;
    v35 = v27;
LABEL_7:
    sub_1C6EE3CB4(v35, v33, v34);
    return 0;
  }

  sub_1C6EE3DDC(v27, v32, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
  v36 = *(v28 + 20);
  sub_1C6EE3BDC(&v32[v36], v23, &qword_1EC1F8000, &unk_1C6EEA4C0);
  v39 = *(v7 + 48);
  v37 = v7 + 48;
  v38 = v39;
  v40 = v32;
  if (v39(v23, 1, v6) == 1)
  {
    sub_1C6EE3D14(v32, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
    v33 = &qword_1EC1F8000;
    v34 = &unk_1C6EEA4C0;
    v35 = v23;
    goto LABEL_7;
  }

  v41 = v6;
  v42 = v37;
  sub_1C6EE3CB4(v23, &qword_1EC1F8000, &unk_1C6EEA4C0);
  v43 = v106;
  sub_1C6EE3BDC(v106 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_retentionTokenVendor, &v114, &qword_1EC1F7F38, &unk_1C6EF7A00);
  if (*(&v115 + 1) == 1)
  {
    sub_1C6EE3D14(v32, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
    v33 = &qword_1EC1F7F38;
    v34 = &unk_1C6EF7A00;
    v35 = &v114;
    goto LABEL_7;
  }

  v117[0] = v114;
  v117[1] = v115;
  v118 = v116;
  sub_1C6EE3698(v117, &v114);
  if (*(&v115 + 1))
  {
    sub_1C6DFCC68(&v114, v111);
    v45 = v112;
    v46 = v113;
    __swift_project_boxed_opaque_existential_1(v111, v112);
    v47 = v103;
    sub_1C6EE3BDC(v40 + v36, v103, &qword_1EC1F8000, &unk_1C6EEA4C0);
    v48 = v38(v47, 1, v6);
    v96[1] = v42;
    if (v48 == 1)
    {
      v49 = v104;
      *v104 = 0;
      v49[1] = 0xE000000000000000;
      v50 = v49 + *(v41 + 20);
      sub_1C6EE4420();
      if (v38(v47, 1, v41) != 1)
      {
        sub_1C6EE3CB4(v47, &qword_1EC1F8000, &unk_1C6EEA4C0);
      }
    }

    else
    {
      v49 = v104;
      sub_1C6EE3DDC(v47, v104, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
    }

    v59 = *v49;
    v60 = v49[1];

    sub_1C6EE3D14(v49, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
    v61 = (*(v46 + 8))(v59, v60, v45, v46);
    v63 = v62;

    if (v63)
    {
      v64 = v101;
      sub_1C6EE3BDC(v40 + v36, v101, &qword_1EC1F8000, &unk_1C6EEA4C0);
      if (v38(v64, 1, v41) == 1)
      {
        v65 = v102;
        *v102 = 0;
        v65[1] = 0xE000000000000000;
        v66 = v65 + *(v41 + 20);
        sub_1C6EE4420();
        if (v38(v64, 1, v41) != 1)
        {
          sub_1C6EE3CB4(v64, &qword_1EC1F8000, &unk_1C6EEA4C0);
        }
      }

      else
      {
        v65 = v102;
        sub_1C6EE3DDC(v64, v102, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
      }

      v68 = *v65;
      v67 = v65[1];

      sub_1C6EE3D14(v65, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
      v69 = *(v105 + 16);
      v70 = *(v105 + 24);
      *&v109 = v68;
      *(&v109 + 1) = v67;
      MEMORY[0x1CCA57F60](43, 0xE100000000000000);
      MEMORY[0x1CCA57F60](v61, v63);

      MEMORY[0x1CCA57F60](43, 0xE100000000000000);
      MEMORY[0x1CCA57F60](v69, v70);
      v71 = v109;
      sub_1C6EE36F4(v117);
      sub_1C6EE3D14(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
      __swift_destroy_boxed_opaque_existential_1(v111);
      return v71;
    }

    else
    {
      sub_1C6EE36F4(v117);
      sub_1C6EE3D14(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
      __swift_destroy_boxed_opaque_existential_1(v111);
      return v61;
    }
  }

  else
  {
    sub_1C6EE3BDC(v43 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_featuresStore, &v109, &qword_1EC1F7F40, &unk_1C6EE94D0);
    if (!v110)
    {
      sub_1C6EE36F4(v117);
      sub_1C6EE3D14(v32, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
      v33 = &qword_1EC1F7F40;
      v34 = &unk_1C6EE94D0;
      v35 = &v109;
      goto LABEL_7;
    }

    sub_1C6DFCC68(&v109, v111);
    v51 = v112;
    v52 = v113;
    __swift_project_boxed_opaque_existential_1(v111, v112);
    v53 = (*(v52 + 8))(v51, v52);
    v54 = v98;
    sub_1C6EE3BDC(&v32[v36], v98, &qword_1EC1F8000, &unk_1C6EEA4C0);
    if (v38(v54, 1, v41) == 1)
    {
      v55 = v99;
      *v99 = 0;
      v55[1] = 0xE000000000000000;
      v56 = v55 + *(v41 + 20);
      sub_1C6EE4420();
      v57 = v38(v54, 1, v41);
      v58 = v100;
      if (v57 != 1)
      {
        sub_1C6EE3CB4(v54, &qword_1EC1F8000, &unk_1C6EEA4C0);
      }
    }

    else
    {
      v55 = v99;
      sub_1C6EE3DDC(v54, v99, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
      v58 = v100;
    }

    v72 = *v55;
    v73 = v55[1];

    sub_1C6EE3D14(v55, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
    v74 = *(v105 + 16);
    v75 = *(v105 + 24);

    v76 = sub_1C6EE38D0(v53, v72, v73, v74, v75);

    MEMORY[0x1EEE9AC00](v77);
    v96[-2] = v111;
    v78 = sub_1C6EDBBBC(sub_1C6EE3BBC, &v96[-4], v76);

    *&v109 = v78;

    sub_1C6EDBB08(&v109);

    v79 = v109;
    v80 = *(v109 + 16);
    if (v80)
    {
      v106 = v40;
      *&v109 = MEMORY[0x1E69E7CC0];
      sub_1C6E15A10(0, v80, 0);
      v81 = v109;
      v82 = (*(v97 + 80) + 32) & ~*(v97 + 80);
      v105 = v79;
      v83 = v79 + v82;
      v84 = *(v97 + 72);
      do
      {
        v85 = v107;
        sub_1C6EE3BDC(v83, v107, &qword_1EC1F9878, &qword_1C6EF6B58);
        v86 = v108;
        sub_1C6EE3C44(v85, v108);
        v88 = *v86;
        v87 = *(v86 + 1);
        v89 = *(v58 + 48);
        v90 = sub_1C6EE42C0();
        (*(*(v90 - 8) + 8))(&v86[v89], v90);
        *&v109 = v81;
        v92 = v81[2];
        v91 = v81[3];
        if (v92 >= v91 >> 1)
        {
          sub_1C6E15A10((v91 > 1), v92 + 1, 1);
          v81 = v109;
        }

        v81[2] = v92 + 1;
        v93 = &v81[2 * v92];
        v93[4] = v88;
        v93[5] = v87;
        v83 += v84;
        --v80;
      }

      while (v80);

      v40 = v106;
    }

    else
    {

      v81 = MEMORY[0x1E69E7CC0];
    }

    if (v81[2])
    {
      v94 = v81[4];
      v95 = v81[5];
    }

    else
    {
      v94 = 0;
    }

    sub_1C6EE36F4(v117);
    sub_1C6EE3D14(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
    __swift_destroy_boxed_opaque_existential_1(v111);
    return v94;
  }
}

uint64_t sub_1C6EDE2E8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9878, &qword_1C6EF6B58) + 48);
  *a3 = v5;
  a3[1] = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v10 = *(v9 + 24);

  return v10(v5, v6, v8, v9);
}

uint64_t sub_1C6EDE398(uint64_t a1)
{
  v2 = v1;
  v121 = MEMORY[0x1E69E7CC0];
  v4 = sub_1C6E0073C();
  v120 = a1;
  v5 = qword_1EDEF8FA0;

  if (v5 != -1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v6 = qword_1EDEF8FA8;
    sub_1C6EE4EB0();
    v7 = MEMORY[0x1E69E7CC0];
    v114 = v6;
    sub_1C6EE4730();
    v119 = MEMORY[0x1E69E7CC8];
    if (*(v4 + 2))
    {
      v109 = 0;
      v8 = (v2 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_graph);
      v105 = MEMORY[0x1E69E7CC0];
      v104 = MEMORY[0x1E69E7CC8];
      v106 = OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_featuresStore;
      v9 = MEMORY[0x1E69E6158];
      v113 = xmmword_1C6EE6590;
      v103 = xmmword_1C6EE6B40;
      v101 = xmmword_1C6EE65B0;
      while (1)
      {
        while (1)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v13 = *(v4 + 2);
            if (!v13)
            {
              goto LABEL_65;
            }
          }

          else
          {
            v4 = sub_1C6ECE340(v4);
            v13 = *(v4 + 2);
            if (!v13)
            {
              goto LABEL_65;
            }
          }

          v14 = v13 - 1;
          v15 = &v4[16 * v14];
          v16 = *(v15 + 4);
          v17 = *(v15 + 5);
          *(v4 + 2) = v14;
          sub_1C6EE4EB0();
          v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
          v18 = swift_allocObject();
          *(v18 + 16) = v113;
          *(v18 + 56) = v9;
          v112 = sub_1C6DF10E0();
          *(v18 + 64) = v112;
          *(v18 + 32) = v16;
          *(v18 + 40) = v17;

          sub_1C6EE4730();

          if (*(v120 + 16))
          {
            sub_1C6DEC784(v16, v17);
            if (v19)
            {
              sub_1C6EE4EB0();
              v20 = swift_allocObject();
              *(v20 + 16) = v113;
              v21 = v112;
              *(v20 + 56) = v9;
              *(v20 + 64) = v21;
              *(v20 + 32) = v16;
              *(v20 + 40) = v17;
              goto LABEL_6;
            }
          }

          v110 = v17;
          v22 = *v8;
          v23 = v16;
          if (*(*v8 + 16))
          {
            break;
          }

LABEL_5:
          sub_1C6EE4EC0();
          v10 = swift_allocObject();
          *(v10 + 16) = v113;
          v11 = v112;
          *(v10 + 56) = v9;
          *(v10 + 64) = v11;
          v12 = v110;
          *(v10 + 32) = v16;
          *(v10 + 40) = v12;
LABEL_6:
          sub_1C6EE4730();

          if (!*(v4 + 2))
          {
            goto LABEL_50;
          }
        }

        v24 = v8[1];
        v25 = *v8;

        v26 = sub_1C6DEC784(v16, v110);
        if ((v27 & 1) == 0)
        {

          goto LABEL_5;
        }

        v28 = *(*(v22 + 56) + 8 * v26);

        v108 = v28;
        v29 = sub_1C6EDD694(v28);
        if (!v30)
        {
          goto LABEL_20;
        }

        v31 = v29;
        v32 = v30;
        sub_1C6EE3BDC(v2 + v106, v116, &qword_1EC1F7F40, &unk_1C6EE94D0);
        v33 = v117;
        if (v117)
        {
          v34 = v118;
          __swift_project_boxed_opaque_existential_1(v116, v117);
          v35 = *(v34 + 16);
          v36 = v34;
          v9 = MEMORY[0x1E69E6158];
          v37 = v35(v31, v32, v33, v36);

          __swift_destroy_boxed_opaque_existential_1(v116);
          if (!v37)
          {
            goto LABEL_20;
          }

          v38 = swift_allocObject();
          *(v38 + 16) = v113;
          v39 = v112;
          *(v38 + 56) = v9;
          *(v38 + 64) = v39;
          v40 = v110;
          *(v38 + 32) = v23;
          *(v38 + 40) = v40;
          sub_1C6EE4EE0();
          sub_1C6EE4730();

          sub_1C6E269D0(v37, 0, 0);

          if (!*(v4 + 2))
          {
            goto LABEL_50;
          }
        }

        else
        {

          sub_1C6EE3CB4(v116, &qword_1EC1F7F40, &unk_1C6EE94D0);
LABEL_20:
          v100 = v8;
          sub_1C6EE4EB0();
          v41 = swift_allocObject();
          *(v41 + 16) = v103;
          v42 = v108;
          v43 = v108[2];
          v44 = v108[3];
          v45 = v112;
          *(v41 + 56) = v9;
          *(v41 + 64) = v45;
          *(v41 + 32) = v43;
          *(v41 + 40) = v44;
          *(v41 + 96) = v9;
          *(v41 + 104) = v45;
          v102 = v23;
          *(v41 + 72) = v23;
          *(v41 + 80) = v110;

          sub_1C6EE4730();

          MEMORY[0x1CCA58080](v46);
          if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v65 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1C6EE4CE0();
          }

          sub_1C6EE4D20();
          v105 = v121;
          v48 = v42[2];
          v47 = v42[3];

          sub_1C6EE26D8(v109);
          v49 = v119;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v116[0] = v49;
          v51 = v48;
          v53 = sub_1C6DEC784(v48, v47);
          v54 = v49[2];
          v55 = (v52 & 1) == 0;
          v56 = v54 + v55;
          if (__OFADD__(v54, v55))
          {
            __break(1u);
LABEL_71:
            result = sub_1C6EE5500();
            __break(1u);
            return result;
          }

          if (v49[3] >= v56)
          {
            v63 = v110;
            if (isUniquelyReferenced_nonNull_native)
            {
              v119 = v49;
              if (v52)
              {
                goto LABEL_29;
              }
            }

            else
            {
              v109 = v53;
              v66 = v52;
              sub_1C6E09914();
              v53 = v109;
              v49 = v116[0];
              v119 = v116[0];
              if (v66)
              {
                goto LABEL_29;
              }
            }
          }

          else
          {
            v57 = v52;
            sub_1C6E06D08(v56, isUniquelyReferenced_nonNull_native);
            v49 = v116[0];
            v58 = sub_1C6DEC784(v51, v47);
            v60 = v59 & 1;
            v61 = v57;
            v62 = v57 & 1;
            v63 = v110;
            if (v62 != v60)
            {
              goto LABEL_71;
            }

            v53 = v58;
            v119 = v49;
            if (v61)
            {
LABEL_29:
              v64 = v53;

              goto LABEL_34;
            }
          }

          v67 = v51;
          v64 = v53;
          sub_1C6E0D444(v53, v67, v47, MEMORY[0x1E69E7CD0], v49);
LABEL_34:
          v104 = v49;
          v68 = v49[7] + 8 * v64;

          sub_1C6E032E0(v116, v102, v63);

          v70 = (*(*v42 + 128))(v69);
          v71 = *(v70 + 16);

          v99 = v70;
          if (v71)
          {
            v73 = 0;
            v74 = v70 + 40;
            v98 = v70 + 40;
LABEL_36:
            v107 = v4;
            v75 = (v74 + 16 * v73);
            while (v73 < v71)
            {
              if (__OFADD__(v73, 1))
              {
                goto LABEL_67;
              }

              v109 = (v73 + 1);
              v4 = &v97;
              v77 = *(v75 - 1);
              v76 = *v75;
              v116[0] = v77;
              v116[1] = v76;
              MEMORY[0x1EEE9AC00](v72);
              v96[2] = v116;

              v78 = v107;

              v79 = sub_1C6EE26E8(sub_1C6EE32AC, v96, v78);

              if ((v79 & 1) == 0)
              {

                v4 = v107;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v4 = sub_1C6ED8FB0(0, *(v4 + 2) + 1, 1, v4);
                }

                v80 = v110;
                v82 = *(v4 + 2);
                v81 = *(v4 + 3);
                if (v82 >= v81 >> 1)
                {
                  v4 = sub_1C6ED8FB0((v81 > 1), v82 + 1, 1, v4);
                }

                *(v4 + 2) = v82 + 1;
                v83 = &v4[16 * v82];
                *(v83 + 4) = v77;
                *(v83 + 5) = v76;
                LODWORD(v107) = sub_1C6EE4EB0();
                v84 = swift_allocObject();
                *(v84 + 16) = v101;
                v85 = MEMORY[0x1E69E6158];
                v86 = v112;
                *(v84 + 56) = MEMORY[0x1E69E6158];
                *(v84 + 64) = v86;
                *(v84 + 32) = v77;
                *(v84 + 40) = v76;
                v9 = v85;
                v87 = v108[2];
                v88 = v108[3];
                *(v84 + 96) = v9;
                *(v84 + 104) = v86;
                *(v84 + 72) = v87;
                *(v84 + 80) = v88;
                *(v84 + 136) = v9;
                *(v84 + 144) = v86;
                *(v84 + 112) = v102;
                *(v84 + 120) = v80;

                sub_1C6EE4730();

                v73 = v109;
                v74 = v98;
                if (v109 != v71)
                {
                  goto LABEL_36;
                }

                goto LABEL_47;
              }

              ++v73;
              v75 += 2;
              v9 = MEMORY[0x1E69E6158];
              if (v109 == v71)
              {
                v4 = v107;
                goto LABEL_47;
              }
            }

            goto LABEL_66;
          }

LABEL_47:

          swift_bridgeObjectRelease_n();
          v89 = *(v4 + 2);
          v109 = sub_1C6EDEE9C;
          v8 = v100;
          if (!v89)
          {
            goto LABEL_50;
          }
        }
      }
    }

    v105 = v7;
    v104 = MEMORY[0x1E69E7CC8];
    v109 = 0;
LABEL_50:
    v116[0] = MEMORY[0x1E69E7CD0];
    sub_1C6EE4EB0();
    sub_1C6EE4730();
    v90 = v105;
    v91 = v105 >> 62 ? sub_1C6EE5110() : *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v91)
    {
      break;
    }

    while (!__OFSUB__(v91--, 1))
    {
      if ((v90 & 0xC000000000000001) != 0)
      {
        v93 = MEMORY[0x1CCA585E0](v91, v90);
      }

      else
      {
        if ((v91 & 0x8000000000000000) != 0)
        {
          goto LABEL_63;
        }

        if (v91 >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }

        v93 = *(v90 + 32 + 8 * v91);
      }

      v115 = v93;
      sub_1C6EDEEAC(&v115, v116, &v120, v2, &v119);

      if (!v91)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
  }

LABEL_61:

  v94 = v120;

  sub_1C6EE26D8(v109);
  return v94;
}

uint64_t sub_1C6EDEEAC(uint64_t **a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v145 = a5;
  v148 = a4;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = (&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  v14 = *a2;

  v15 = sub_1C6EDCC98(v13, v14);

  if (v15)
  {
    if (qword_1EDEF8FA0 != -1)
    {
      swift_once();
    }

    sub_1C6EE4EB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C6EE6590;
    v18 = v13[2];
    v17 = v13[3];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1C6DF10E0();
    *(v16 + 32) = v18;
    *(v16 + 40) = v17;

    sub_1C6EE4730();
  }

  v140 = a2;
  v20 = *a3;

  v22 = sub_1C6E0D454(v21);
  v23 = v22;
  v24 = OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec;
  v25 = *(v13 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec);
  v26 = *(v25 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  v147 = v13;
  v149 = a3;
  *&v146 = v9;
  if (v26)
  {
    v143 = v22;
    v144 = OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec;
    v153 = MEMORY[0x1E69E7CC0];
    sub_1C6E15A10(0, v26, 0);
    v27 = v153;
    v28 = v25 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v29 = *(v9 + 72);
    do
    {
      sub_1C6EE3D74(v28, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      v30 = *v12;
      v31 = v12[1];

      sub_1C6EE3D14(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      v153 = v27;
      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1C6E15A10((v32 > 1), v33 + 1, 1);
        v27 = v153;
      }

      *(v27 + 16) = v33 + 1;
      v34 = v27 + 16 * v33;
      *(v34 + 32) = v30;
      *(v34 + 40) = v31;
      v28 += v29;
      --v26;
    }

    while (v26);
    v13 = v147;
    a3 = v149;
    v24 = v144;
    v23 = v143;
  }

  v35 = sub_1C6E0B8E0(v27);

  v36 = sub_1C6EDCF9C(v23, v35);

  v37 = &off_1C6EE6000;
  if ((v36 & 1) == 0)
  {
    v41 = *(v13 + v24);
    v42 = *(v41 + 16);
    v43 = MEMORY[0x1E69E7CC0];
    if (v42)
    {
      v153 = MEMORY[0x1E69E7CC0];
      sub_1C6E15A10(0, v42, 0);
      v43 = v153;
      v44 = v41 + ((*(v146 + 80) + 32) & ~*(v146 + 80));
      v45 = *(v146 + 72);
      do
      {
        sub_1C6EE3D74(v44, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        v47 = *v12;
        v46 = v12[1];

        sub_1C6EE3D14(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        v153 = v43;
        v49 = *(v43 + 16);
        v48 = *(v43 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1C6E15A10((v48 > 1), v49 + 1, 1);
          v43 = v153;
        }

        *(v43 + 16) = v49 + 1;
        v50 = v43 + 16 * v49;
        *(v50 + 32) = v47;
        *(v50 + 40) = v46;
        v44 += v45;
        --v42;
      }

      while (v42);
      a3 = v149;
    }

    v51 = sub_1C6E0B8E0(v43);

    v52 = *a3;

    v54 = sub_1C6E0D454(v53);
    if (*(v54 + 16) <= *(v51 + 16) >> 3)
    {
      v153 = v51;
      sub_1C6E038DC(v54);

      v55 = v153;
    }

    else
    {
      v55 = sub_1C6E04178(v54, v51);
    }

    if (qword_1EDEF8F80 != -1)
    {
      goto LABEL_69;
    }

    goto LABEL_23;
  }

  v38 = v150;
  v39 = (_TtC18ComputationalGraph26ZipArchivePackageInstaller + 32);
  v40 = (_TtC18ComputationalGraph26ZipArchivePackageInstaller + 32);
  while (1)
  {
    v150 = v38;
    if (v40[500] != -1)
    {
      swift_once();
    }

    *&v146 = v39[501];
    LODWORD(v144) = sub_1C6EE4EB0();
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v96 = swift_allocObject();
    v141 = *(v37 + 180);
    *(v96 + 16) = v141;
    v98 = v13[2];
    v97 = v13[3];
    *(v96 + 56) = MEMORY[0x1E69E6158];
    v143 = sub_1C6DF10E0();
    *(v96 + 64) = v143;
    *(v96 + 32) = v98;
    *(v96 + 40) = v97;
    v55 = *a3;
    v99 = *(*a3 + 16);
    if (v99)
    {
      v138 = v98;
      v100 = sub_1C6E03038(v99, 0);
      v139 = sub_1C6E0D430(&v153, v100 + 4, v99, v55);
      v137 = v97;
      swift_bridgeObjectRetain_n();

      sub_1C6DFCC60();
      if (v139 != v99)
      {
        __break(1u);
        goto LABEL_68;
      }

      v13 = v147;
      a3 = v149;
      v98 = v138;
      v101 = v137;
    }

    else
    {
      swift_bridgeObjectRetain_n();
      v100 = MEMORY[0x1E69E7CC0];
      v101 = v97;
    }

    v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A50, &qword_1C6EE90D0);
    *(v96 + 96) = v139;
    v138 = sub_1C6EE3304();
    *(v96 + 104) = v138;
    *(v96 + 72) = v100;
    sub_1C6EE4730();

    v102 = *a3;
    v103 = *(*v13 + 112);

    v105 = v103(v104);

    sub_1C6EE4EB0();
    v106 = swift_allocObject();
    *(v106 + 16) = v141;
    v107 = v143;
    *(v106 + 56) = MEMORY[0x1E69E6158];
    *(v106 + 64) = v107;
    *(v106 + 32) = v98;
    *(v106 + 40) = v101;
    v55 = *(v105 + 16);
    v144 = v105;
    if (!v55)
    {
      break;
    }

    v108 = sub_1C6E03038(v55, 0);
    v109 = sub_1C6E0D430(&v153, v108 + 4, v55, v105);

    sub_1C6DFCC60();
    if (v109 == v55)
    {
      v13 = v147;
      goto LABEL_48;
    }

LABEL_68:
    __break(1u);
LABEL_69:
    swift_once();
LABEL_23:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v56 = swift_allocObject();
    v146 = xmmword_1C6EE6590;
    *(v56 + 16) = xmmword_1C6EE6590;
    v57 = MEMORY[0x1E69E6158];
    v58 = sub_1C6EE4DF0();
    v60 = v59;
    *(v56 + 56) = v57;
    v61 = sub_1C6DF10E0();
    *(v56 + 64) = v61;
    *(v56 + 32) = v58;
    *(v56 + 40) = v60;
    sub_1C6EE4EE0();
    sub_1C6EE4730();

    v13 = v147;
    v62 = *(v148 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_featureResolver + 8);
    v63 = v150;
    v64 = (*(v148 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_featureResolver))(v55, v147[2], v147[3]);
    v65 = v63;
    if (!v63)
    {
      v69 = v64;

      v71 = sub_1C6E0D454(v70);
      v72 = sub_1C6EDCF9C(v71, v55);

      p_info = _TtC18ComputationalGraph26ZipArchivePackageInstaller.info;
      if (v72)
      {
        if (qword_1EDEF8FA0 == -1)
        {
          goto LABEL_29;
        }

        goto LABEL_71;
      }

      if (qword_1EDEF8FA0 != -1)
      {
        swift_once();
      }

      v150 = qword_1EDEF8FA8;
      LODWORD(v146) = sub_1C6EE4EC0();
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_1C6EE6B40;

      v82 = sub_1C6E0D454(v81);
      sub_1C6EE2CB4(v55, v82);
      v83 = MEMORY[0x1E69E6158];
      v84 = sub_1C6EE4DF0();
      v86 = v85;

      *(v80 + 56) = v83;
      *(v80 + 64) = v61;
      *(v80 + 32) = v84;
      *(v80 + 40) = v86;
      v153 = 0;
      v154 = 0xE000000000000000;

      v88 = sub_1C6E0D454(v87);
      if (*(v88 + 16) <= *(v55 + 16) >> 3)
      {
        *&v151 = v55;

        sub_1C6E038DC(v88);
      }

      else
      {

        sub_1C6E04178(v88, v55);
      }

      v89 = sub_1C6EE4DF0();
      v91 = v90;

      MEMORY[0x1CCA57F60](v89, v91);

      v92 = v153;
      v93 = v154;
      *(v80 + 96) = v83;
      *(v80 + 104) = v61;
      *(v80 + 72) = v92;
      *(v80 + 80) = v93;
LABEL_36:
      sub_1C6EE4730();

      MEMORY[0x1EEE9AC00](v94);
      *(&v137 - 2) = v55;
      v95 = sub_1C6EE3518(v69, sub_1C6EE3368);
      v38 = v65;

      a3 = v149;
      sub_1C6E269D0(v95, 0, 0);

      v13 = v147;
      v39 = _TtC18ComputationalGraph26ZipArchivePackageInstaller.info;
      goto LABEL_37;
    }

    if (qword_1EDEF8FA0 != -1)
    {
      swift_once();
    }

    sub_1C6EE4EC0();
    v66 = swift_allocObject();
    *(v66 + 16) = v146;
    v153 = 0;
    v154 = 0xE000000000000000;
    swift_getErrorValue();
    sub_1C6EE5480();
    v67 = v153;
    v68 = v154;
    *(v66 + 56) = MEMORY[0x1E69E6158];
    *(v66 + 64) = v61;
    *(v66 + 32) = v67;
    *(v66 + 40) = v68;
    v39 = (_TtC18ComputationalGraph26ZipArchivePackageInstaller + 32);
    sub_1C6EE4730();

    v38 = 0;
    a3 = v149;
LABEL_37:
    v40 = _TtC18ComputationalGraph26ZipArchivePackageInstaller.info;
    v37 = &off_1C6EE6000;
  }

  v108 = MEMORY[0x1E69E7CC0];
LABEL_48:
  v110 = v138;
  *(v106 + 96) = v139;
  *(v106 + 104) = v110;
  *(v106 + 72) = v108;
  sub_1C6EE4730();

  v111 = *v145;
  v112 = v148;
  if (!*(*v145 + 16))
  {
    goto LABEL_60;
  }

  v113 = sub_1C6DEC784(v13[2], v13[3]);
  if ((v114 & 1) == 0)
  {
    goto LABEL_60;
  }

  v115 = *(*(v111 + 56) + 8 * v113);
  v116 = v144;

  v117 = sub_1C6E0D454(v116);
  if (*(v117 + 16) <= *(v115 + 16) >> 3)
  {
    v153 = v115;
    sub_1C6E038DC(v117);

    v118 = v153;
    if (!*(v153 + 16))
    {
      goto LABEL_59;
    }
  }

  else
  {
    v118 = sub_1C6E04178(v117, v115);

    if (!*(v118 + 16))
    {
      goto LABEL_59;
    }
  }

  v119 = sub_1C6EE4EC0();
  v120 = swift_allocObject();
  *(v120 + 16) = v141;
  v121 = v13[2];
  v61 = v13[3];
  v122 = v143;
  *(v120 + 56) = MEMORY[0x1E69E6158];
  *(v120 + 64) = v122;
  *(v120 + 32) = v121;
  *(v120 + 40) = v61;
  v55 = *(v118 + 16);
  if (v55)
  {
    LODWORD(v145) = v119;
    v123 = sub_1C6E03038(v55, 0);
    p_info = sub_1C6E0B274(&v153, v123 + 4, v55, v118);
    v65 = v155;
    v69 = v157;

    sub_1C6DFCC60();
    if (p_info == v55)
    {
      v13 = v147;
      goto LABEL_58;
    }

    __break(1u);
LABEL_71:
    swift_once();
LABEL_29:
    v74 = p_info[501];
    v75 = swift_allocObject();
    *(v75 + 16) = v146;

    v76 = MEMORY[0x1E69E6158];
    v77 = sub_1C6EE49B0();
    v79 = v78;

    *(v75 + 56) = v76;
    *(v75 + 64) = v61;
    *(v75 + 32) = v77;
    *(v75 + 40) = v79;
    sub_1C6EE4EE0();
    goto LABEL_36;
  }

  v123 = MEMORY[0x1E69E7CC0];
LABEL_58:
  v124 = v138;
  *(v120 + 96) = v139;
  *(v120 + 104) = v124;
  *(v120 + 72) = v123;
  sub_1C6EE4730();
  v112 = v148;
LABEL_59:

LABEL_60:
  v125 = sub_1C6EDD694(v13);
  if (v126)
  {
    v127 = v125;
    v128 = v126;
    sub_1C6EE3BDC(v112 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_featuresStore, &v151, &qword_1EC1F7F40, &unk_1C6EE94D0);
    if (v152)
    {
      sub_1C6DFCC68(&v151, &v153);
      if ((*(v112 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_readOnly) & 1) == 0)
      {
        sub_1C6EE4EB0();
        v129 = swift_allocObject();
        *(v129 + 16) = v141;
        v130 = MEMORY[0x1E69E6158];
        v131 = v143;
        *(v129 + 56) = MEMORY[0x1E69E6158];
        *(v129 + 64) = v131;
        *(v129 + 32) = v127;
        *(v129 + 40) = v128;

        v132 = v144;
        v133 = sub_1C6EE49A0();
        *(v129 + 96) = v130;
        *(v129 + 104) = v131;
        *(v129 + 72) = v133;
        *(v129 + 80) = v134;
        sub_1C6EE4730();

        v135 = v156;
        v136 = v157;
        __swift_project_boxed_opaque_existential_1(&v153, v156);
        (*(v136 + 32))(v132, v127, v128, v135, v136);
      }

      __swift_destroy_boxed_opaque_existential_1(&v153);
    }

    else
    {

      sub_1C6EE3CB4(&v151, &qword_1EC1F7F40, &unk_1C6EE94D0);
    }
  }

  sub_1C6E269D0(v144, 0, 0);

  sub_1C6E03580(&v153, v13);
}

uint64_t sub_1C6EDFEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v139 = a8;
  v140 = a7;
  v134 = a6;
  v133 = a5;
  v143 = a4;
  *&v148 = a3;
  v145 = a9;
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
  v155 = *(v12 - 8);
  v13 = *(v155 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v153 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v132 - v17);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v152 = &v132 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v151 = &v132 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v149 = &v132 - v23;
  v137 = sub_1C6EE42F0();
  v136 = *(v137 - 8);
  v24 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v135 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec(0);
  v26 = *(*(v141 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v141);
  v138 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v144 = (&v132 - v29);
  v30 = *(a1 + 16);
  v154 = a2;
  v150 = v30;
  v142 = a1;
  if (v30)
  {
    v31 = 0;
    v32 = a1 + 32;
    v33 = MEMORY[0x1E69E7CC8];
    v146 = a1 + 32;
    while (1)
    {
      v38 = (v32 + 16 * v31);
      v40 = *v38;
      v39 = v38[1];
      v41 = *(a2 + 16);

      if (!v41 || (v42 = sub_1C6DEC784(v40, v39), (v43 & 1) == 0))
      {
        if (qword_1EDEF8F80 != -1)
        {
          swift_once();
        }

        sub_1C6EE4EC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v131 = swift_allocObject();
        *(v131 + 16) = xmmword_1C6EE6590;
        *(v131 + 56) = MEMORY[0x1E69E6158];
        *(v131 + 64) = sub_1C6DF10E0();
        *(v131 + 32) = v40;
        *(v131 + 40) = v39;
        sub_1C6EE4730();

        goto LABEL_17;
      }

      v44 = v33;
      v45 = *(*(*(a2 + 56) + 8 * v42) + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec + 8);
      v46 = *(v45 + 16);

      if (!v46)
      {
        break;
      }

      v47 = 0;
      ++v31;
      while (1)
      {
        if (v47 >= *(v45 + 16))
        {
          __break(1u);
          goto LABEL_54;
        }

        sub_1C6EE3D74(v45 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v47, v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        v48 = *v18 == v40 && v18[1] == v39;
        if (v48 || (sub_1C6EE54B0() & 1) != 0)
        {
          break;
        }

        ++v47;
        sub_1C6EE3D14(v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        if (v46 == v47)
        {
          goto LABEL_15;
        }
      }

      v34 = v152;
      sub_1C6EE3DDC(v18, v152, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      v35 = v151;
      sub_1C6EE3DDC(v34, v151, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      v36 = v153;
      sub_1C6EE3D74(v35, v153, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v161[0] = v44;
      sub_1C6E09664(v36, v40, v39, isUniquelyReferenced_nonNull_native);

      sub_1C6EE3D14(v35, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      v33 = v161[0];
      a2 = v154;
      v32 = v146;
      if (v31 == v150)
      {
        goto LABEL_19;
      }
    }

LABEL_15:
    if (qword_1EDEF8F80 != -1)
    {
      goto LABEL_57;
    }

    goto LABEL_16;
  }

  v33 = MEMORY[0x1E69E7CC8];
LABEL_19:
  v161[0] = a2;
  v161[1] = v148;
  v162 = sub_1C6EC180C(v142);
  sub_1C6E269D0(v143, 1, 0);
  v53 = v144;
  v54 = v144 + *(v141 + 24);
  sub_1C6EE4420();
  v153 = v162;
  v55 = v147;
  v56 = sub_1C6EDBED0(v162);
  v147 = v55;
  *v53 = v56;
  v57 = *(v33 + 16);
  if (!v57)
  {
    goto LABEL_22;
  }

  v58 = sub_1C6E030DC(*(v33 + 16), 0);
  v59 = sub_1C6E0B67C(v161, v58 + ((*(v155 + 80) + 32) & ~*(v155 + 80)), v57, v33);

  sub_1C6DFCC60();
  v60 = v149;
  if (v59 != v57)
  {
    __break(1u);
LABEL_22:
    v58 = MEMORY[0x1E69E7CC0];
    v60 = v149;
  }

  v150 = v58;
  v143 = v33;
  v61 = v144;
  v144[1] = v58;
  sub_1C6EE3BDC(v133, v161, &qword_1EC1F7F40, &unk_1C6EE94D0);
  v62 = v138;
  sub_1C6EE3D74(v61, v138, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  sub_1C6EE3BDC(v134, v160, &qword_1EC1F7F38, &unk_1C6EF7A00);
  v63 = type metadata accessor for SubGraphComputation();
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  v40 = swift_allocObject();
  sub_1C6EE3BDC(v161, v40 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_featuresStore, &qword_1EC1F7F40, &unk_1C6EE94D0);
  v66 = (v40 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_graph);
  v67 = v148;
  *v66 = v154;
  v66[1] = v67;
  v68 = (v40 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_featureResolver);
  *v68 = v139;
  v68[1] = a10;
  *(v40 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_readOnly) = v140 & 1;
  sub_1C6EE3BDC(v160, v40 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_retentionTokenVendor, &qword_1EC1F7F38, &unk_1C6EF7A00);

  v69 = v135;
  sub_1C6EE42E0();
  v70 = sub_1C6EE42D0();
  v72 = v71;
  (*(v136 + 8))(v69, v137);
  v73 = v150;
  sub_1C6EE3CB4(v160, &qword_1EC1F7F38, &unk_1C6EF7A00);
  sub_1C6EE3CB4(v161, &qword_1EC1F7F40, &unk_1C6EE94D0);
  v74 = OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy;
  v75 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
  (*(*(v75 - 8) + 56))(v40 + v74, 1, 1, v75);
  *(v40 + 16) = v70;
  *(v40 + 24) = v72;
  sub_1C6EE3DDC(v62, v40 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  v39 = v153;
  v142 = v40;
  v76 = sub_1C6EDD178(v153);

  *v145 = v76;
  v77 = *(v73 + 16);

  v154 = v77;
  if (!v77)
  {
    v152 = MEMORY[0x1E69E7CC8];
LABEL_49:

    v124 = v142;
    swift_setDeallocating();
    v125 = v124[3];

    sub_1C6EE3D14(v124 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
    sub_1C6EE3CB4(v124 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy, &qword_1EC1F7508, &unk_1C6EE6690);
    v126 = *(v124 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_graph);
    v127 = *(v124 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_graph + 8);

    sub_1C6EE3CB4(v124 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_featuresStore, &qword_1EC1F7F40, &unk_1C6EE94D0);
    v128 = *(v124 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_featureResolver + 8);

    sub_1C6EE3CB4(v124 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_retentionTokenVendor, &qword_1EC1F7F38, &unk_1C6EF7A00);

    v129 = *(*v124 + 48);
    v130 = *(*v124 + 52);
    swift_deallocClassInstance();

    v145[1] = v152;
    sub_1C6EE3D14(v144, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  }

  v78 = 0;
  v152 = MEMORY[0x1E69E7CC8];
  v148 = xmmword_1C6EE65B0;
  v151 = v76;
  while (v78 < *(v73 + 16))
  {
    sub_1C6EE3D74(v73 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v78, v60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    v80 = *v60;
    v79 = *(v60 + 8);
    v39 = *(v60 + 24);
    v81 = *(v60 + 32);

    if (sub_1C6E26E94(v80, v79, v39, v81, v76))
    {
      if (*(v76 + 16) && (v82 = sub_1C6DEC784(v80, v79), (v83 & 1) != 0))
      {
        v84 = *(v76 + 56) + 24 * v82;
        v39 = *v84;
        v85 = *(v84 + 16);
        v86 = *v84;
        v146 = *(v84 + 8);
        LODWORD(v153) = v85;
        sub_1C6E00CBC(v86, v146, v85);
        v87 = v152;
        v88 = swift_isUniquelyReferenced_nonNull_native();
        v158 = v87;
        v40 = sub_1C6DEC784(v80, v79);
        v90 = *(v87 + 16);
        v91 = (v89 & 1) == 0;
        v92 = v90 + v91;
        if (__OFADD__(v90, v91))
        {
          goto LABEL_55;
        }

        v93 = v89;
        if (*(v87 + 24) >= v92)
        {
          if ((v88 & 1) == 0)
          {
            sub_1C6E09928();
          }
        }

        else
        {
          sub_1C6E06D1C(v92, v88);
          v94 = sub_1C6DEC784(v80, v79);
          if ((v93 & 1) != (v95 & 1))
          {
            result = sub_1C6EE5500();
            __break(1u);
            return result;
          }

          v40 = v94;
        }

        v73 = v150;
        v112 = v158;
        v152 = v158;
        if (v93)
        {
          v113 = *(v158 + 56) + 24 * v40;
          v114 = *v113;
          v115 = *(v113 + 8);
          v116 = *(v113 + 16);
          v117 = v146;
          *v113 = v39;
          *(v113 + 8) = v117;
          *(v113 + 16) = v153;
          sub_1C6E00C60(v114, v115, v116);

          v76 = v151;
        }

        else
        {
          *(v158 + 8 * (v40 >> 6) + 64) |= 1 << v40;
          v118 = (v112[6] + 16 * v40);
          *v118 = v80;
          v118[1] = v79;
          v119 = v112[7] + 24 * v40;
          v120 = v146;
          *v119 = v39;
          *(v119 + 8) = v120;
          *(v119 + 16) = v153;
          v121 = v112[2];
          v122 = __OFADD__(v121, 1);
          v123 = v121 + 1;
          if (v122)
          {
            goto LABEL_56;
          }

          v112[2] = v123;
          v76 = v151;
        }
      }

      else
      {
        v102 = v152;
        v103 = sub_1C6DEC784(v80, v79);
        if (v104)
        {
          v39 = v103;
          v105 = swift_isUniquelyReferenced_nonNull_native();
          v158 = v102;
          v106 = v102;
          if ((v105 & 1) == 0)
          {
            sub_1C6E09928();
            v106 = v158;
          }

          v107 = *(*(v106 + 48) + 16 * v39 + 8);

          v108 = *(v106 + 56) + 24 * v39;
          v109 = *v108;
          v40 = *(v108 + 8);
          v110 = v106;
          v111 = *(v108 + 16);
          v152 = v110;
          sub_1C6ECDDA0(v39, v110);

          sub_1C6E00C60(v109, v40, v111);
          v76 = v151;
        }

        else
        {
        }
      }
    }

    else
    {
      if (qword_1EDEF8F80 != -1)
      {
        swift_once();
      }

      v153 = qword_1EDEF8F88;
      sub_1C6EE4EC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v96 = swift_allocObject();
      *(v96 + 16) = v148;
      v40 = MEMORY[0x1E69E6158];
      *(v96 + 56) = MEMORY[0x1E69E6158];
      v97 = sub_1C6DF10E0();
      *(v96 + 64) = v97;
      *(v96 + 32) = v80;
      *(v96 + 40) = v79;
      v158 = 0;
      v159 = 0xE000000000000000;
      v156 = v39;
      v157 = v81;
      sub_1C6EE52F0();
      v98 = v158;
      v99 = v159;
      *(v96 + 96) = v40;
      *(v96 + 104) = v97;
      *(v96 + 72) = v98;
      *(v96 + 80) = v99;
      v39 = v151;
      v100 = sub_1C6EE49B0();
      *(v96 + 136) = v40;
      *(v96 + 144) = v97;
      *(v96 + 112) = v100;
      *(v96 + 120) = v101;
      v76 = v39;
      sub_1C6EE4730();

      v60 = v149;
      v73 = v150;
    }

    ++v78;
    sub_1C6EE3D14(v60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    if (v154 == v78)
    {
      goto LABEL_49;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  swift_once();
LABEL_16:
  sub_1C6EE4EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1C6EE6590;
  *(v49 + 56) = MEMORY[0x1E69E6158];
  *(v49 + 64) = sub_1C6DF10E0();
  *(v49 + 32) = v40;
  *(v49 + 40) = v39;
  sub_1C6EE4730();

LABEL_17:
  v51 = v145;
  v52 = MEMORY[0x1E69E7CC8];
  *v145 = MEMORY[0x1E69E7CC8];
  v51[1] = v52;
  return result;
}

uint64_t sub_1C6EE0E30()
{
  v2 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_graph);
  v1 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_graph + 8);

  sub_1C6EE3CB4(v0 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_featuresStore, &qword_1EC1F7F40, &unk_1C6EE94D0);
  v3 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_featureResolver + 8);

  return sub_1C6EE3CB4(v0 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_retentionTokenVendor, &qword_1EC1F7F38, &unk_1C6EF7A00);
}

uint64_t sub_1C6EE0EBC()
{
  v1 = v0[3];

  sub_1C6EE3D14(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  sub_1C6EE3CB4(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy, &qword_1EC1F7508, &unk_1C6EE6690);
  v2 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_graph);
  v3 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_graph + 8);

  sub_1C6EE3CB4(v0 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_featuresStore, &qword_1EC1F7F40, &unk_1C6EE94D0);
  v4 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_featureResolver + 8);

  sub_1C6EE3CB4(v0 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_retentionTokenVendor, &qword_1EC1F7F38, &unk_1C6EF7A00);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SubGraphComputation()
{
  result = qword_1EDEF8AD8;
  if (!qword_1EDEF8AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6EE10BC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C6EE5450();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9878, &qword_1C6EF6B58);
        v6 = sub_1C6EE4D00();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9878, &qword_1C6EF6B58) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C6EE1450(v8, v9, a1, v4);
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
    return sub_1C6EE1200(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C6EE1200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9878, &qword_1C6EF6B58);
  v8 = *(*(v38 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v38);
  v37 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v35 = -v19;
    v36 = v18;
    v21 = a1 - a3;
    v29 = v19;
    v22 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v22;
    v32 = v21;
    v23 = v38;
    while (1)
    {
      sub_1C6EE3BDC(v22, v17, &qword_1EC1F9878, &qword_1C6EF6B58);
      sub_1C6EE3BDC(v20, v13, &qword_1EC1F9878, &qword_1C6EF6B58);
      v24 = *(v23 + 48);
      v25 = sub_1C6EE4270();
      sub_1C6EE3CB4(v13, &qword_1EC1F9878, &qword_1C6EF6B58);
      result = sub_1C6EE3CB4(v17, &qword_1EC1F9878, &qword_1C6EF6B58);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v21 = v32 - 1;
        v22 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v26 = v37;
      sub_1C6EE3C44(v22, v37);
      v23 = v38;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1C6EE3C44(v26, v20);
      v20 += v35;
      v22 += v35;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C6EE1450(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v108 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9878, &qword_1C6EF6B58);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v112 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v120 = &v104 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v122 = &v104 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v121 = &v104 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_99:
    a4 = *v108;
    if (!*v108)
    {
      goto LABEL_139;
    }

    v6 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v109;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v6;
LABEL_102:
      v124 = result;
      v6 = *(result + 16);
      if (v6 >= 2)
      {
        v100 = v7;
        while (*a3)
        {
          v101 = *(result + 16 * v6);
          v102 = result;
          v7 = *(result + 16 * (v6 - 1) + 40);
          sub_1C6EE1D78(*a3 + *(v100 + 72) * v101, *a3 + *(v100 + 72) * *(result + 16 * (v6 - 1) + 32), *a3 + *(v100 + 72) * v7, a4);
          if (v33)
          {
          }

          if (v7 < v101)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v102 = sub_1C6ECCA74(v102);
          }

          if (v6 - 2 >= *(v102 + 2))
          {
            goto LABEL_127;
          }

          v103 = &v102[16 * v6];
          *v103 = v101;
          *(v103 + 1) = v7;
          v124 = v102;
          sub_1C6ECC9E8(v6 - 1);
          result = v124;
          v6 = *(v124 + 16);
          if (v6 <= 1)
          {
          }
        }

        goto LABEL_137;
      }
    }

LABEL_133:
    result = sub_1C6ECCA74(v6);
    goto LABEL_102;
  }

  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v107 = a4;
  v123 = v6;
  v110 = a3;
  v105 = v7;
  while (1)
  {
    v20 = v18 + 1;
    v113 = v19;
    if (v18 + 1 >= v17)
    {
      v32 = v18 + 1;
      v33 = v109;
    }

    else
    {
      v21 = v18;
      v6 = *a3;
      v22 = *(v7 + 72);
      v23 = *a3 + v22 * v20;
      v24 = v121;
      sub_1C6EE3BDC(v23, v121, &qword_1EC1F9878, &qword_1C6EF6B58);
      v25 = v122;
      sub_1C6EE3BDC(v6 + v22 * v21, v122, &qword_1EC1F9878, &qword_1C6EF6B58);
      v26 = *(v123 + 48);
      LODWORD(v118) = sub_1C6EE4270();
      sub_1C6EE3CB4(v25, &qword_1EC1F9878, &qword_1C6EF6B58);
      result = sub_1C6EE3CB4(v24, &qword_1EC1F9878, &qword_1C6EF6B58);
      v106 = v21;
      v27 = v21 + 2;
      v119 = v22;
      v28 = v6 + v22 * (v21 + 2);
      while (v17 != v27)
      {
        v29 = v121;
        sub_1C6EE3BDC(v28, v121, &qword_1EC1F9878, &qword_1C6EF6B58);
        v30 = v122;
        sub_1C6EE3BDC(v23, v122, &qword_1EC1F9878, &qword_1C6EF6B58);
        v31 = *(v123 + 48);
        v6 = sub_1C6EE4270() & 1;
        sub_1C6EE3CB4(v30, &qword_1EC1F9878, &qword_1C6EF6B58);
        result = sub_1C6EE3CB4(v29, &qword_1EC1F9878, &qword_1C6EF6B58);
        ++v27;
        v28 += v119;
        v23 += v119;
        if ((v118 & 1) != v6)
        {
          v32 = v27 - 1;
          goto LABEL_12;
        }
      }

      v32 = v17;
LABEL_12:
      v18 = v106;
      a4 = v107;
      v33 = v109;
      a3 = v110;
      v7 = v105;
      if ((v118 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v32 < v106)
      {
        goto LABEL_130;
      }

      if (v106 < v32)
      {
        v34 = v119 * (v32 - 1);
        v35 = v32 * v119;
        v118 = v32;
        v36 = v32;
        v37 = v106;
        v38 = v106 * v119;
        v6 = v123;
        do
        {
          if (v37 != --v36)
          {
            v39 = *v110;
            if (!*v110)
            {
              goto LABEL_136;
            }

            sub_1C6EE3C44(v39 + v38, v112);
            if (v38 < v34 || v39 + v38 >= (v39 + v35))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v38 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_1C6EE3C44(v112, v39 + v34);
            v6 = v123;
          }

          ++v37;
          v34 -= v119;
          v35 -= v119;
          v38 += v119;
        }

        while (v37 < v36);
        v33 = v109;
        a3 = v110;
        v7 = v105;
        v18 = v106;
        a4 = v107;
        v32 = v118;
      }

      else
      {
LABEL_25:
        v6 = v123;
      }
    }

    v40 = a3[1];
    if (v32 >= v40)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v32, v18))
    {
      goto LABEL_129;
    }

    if (v32 - v18 >= a4)
    {
LABEL_35:
      v41 = v32;
      if (v32 < v18)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v18, a4))
    {
      goto LABEL_131;
    }

    if ((v18 + a4) < v40)
    {
      v40 = v18 + a4;
    }

    if (v40 < v18)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v32 == v40)
    {
      goto LABEL_35;
    }

    v114 = v40;
    v109 = v33;
    v87 = *a3;
    v88 = *(v7 + 72);
    v89 = *a3 + v88 * (v32 - 1);
    v90 = -v88;
    v106 = v18;
    v91 = v18 - v32;
    v111 = v88;
    v119 = v87;
    a4 = v87 + v32 * v88;
LABEL_89:
    v117 = v89;
    v118 = v32;
    v115 = a4;
    v116 = v91;
    v92 = v89;
LABEL_90:
    v93 = v121;
    sub_1C6EE3BDC(a4, v121, &qword_1EC1F9878, &qword_1C6EF6B58);
    v94 = v122;
    sub_1C6EE3BDC(v92, v122, &qword_1EC1F9878, &qword_1C6EF6B58);
    v95 = *(v6 + 48);
    v96 = sub_1C6EE4270();
    sub_1C6EE3CB4(v94, &qword_1EC1F9878, &qword_1C6EF6B58);
    result = sub_1C6EE3CB4(v93, &qword_1EC1F9878, &qword_1C6EF6B58);
    if (v96)
    {
      break;
    }

    v6 = v123;
LABEL_88:
    v32 = v118 + 1;
    v89 = v117 + v111;
    v91 = v116 - 1;
    a4 = v115 + v111;
    if (v118 + 1 != v114)
    {
      goto LABEL_89;
    }

    v33 = v109;
    a3 = v110;
    v7 = v105;
    v18 = v106;
    v41 = v114;
    if (v114 < v106)
    {
      goto LABEL_128;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v19 = v113;
    }

    else
    {
      result = sub_1C6ED92D4(0, *(v113 + 2) + 1, 1, v113);
      v19 = result;
    }

    v43 = *(v19 + 2);
    v42 = *(v19 + 3);
    a4 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_1C6ED92D4((v42 > 1), v43 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = a4;
    v44 = &v19[16 * v43];
    *(v44 + 4) = v18;
    *(v44 + 5) = v41;
    v114 = v41;
    if (!*v108)
    {
      goto LABEL_138;
    }

    if (v43)
    {
      v45 = *v108;
      v6 = v123;
      while (1)
      {
        v46 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v47 = *(v19 + 4);
          v48 = *(v19 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_56:
          if (v50)
          {
            goto LABEL_117;
          }

          v63 = &v19[16 * a4];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_120;
          }

          v69 = &v19[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_124;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v73 = &v19[16 * a4];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_70:
        if (v68)
        {
          goto LABEL_119;
        }

        v76 = &v19[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_122;
        }

        if (v79 < v67)
        {
          goto LABEL_4;
        }

LABEL_77:
        v6 = v46 - 1;
        if (v46 - 1 >= a4)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_132;
        }

        if (!*a3)
        {
          goto LABEL_135;
        }

        v84 = v19;
        a4 = *&v19[16 * v6 + 32];
        v85 = *&v19[16 * v46 + 40];
        sub_1C6EE1D78(*a3 + *(v7 + 72) * a4, *a3 + *(v7 + 72) * *&v19[16 * v46 + 32], *a3 + *(v7 + 72) * v85, v45);
        if (v33)
        {
        }

        if (v85 < a4)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_1C6ECCA74(v84);
        }

        if (v6 >= *(v84 + 2))
        {
          goto LABEL_114;
        }

        v86 = &v84[16 * v6];
        *(v86 + 4) = a4;
        *(v86 + 5) = v85;
        v124 = v84;
        result = sub_1C6ECC9E8(v46);
        v19 = v124;
        a4 = *(v124 + 16);
        v6 = v123;
        if (a4 <= 1)
        {
          goto LABEL_4;
        }
      }

      v51 = &v19[16 * a4 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_115;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_116;
      }

      v58 = &v19[16 * a4];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_118;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_121;
      }

      if (v62 >= v54)
      {
        v80 = &v19[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_125;
        }

        if (v49 < v83)
        {
          v46 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v6 = v123;
LABEL_4:
    v109 = v33;
    v17 = a3[1];
    v18 = v114;
    a4 = v107;
    if (v114 >= v17)
    {
      goto LABEL_99;
    }
  }

  if (v119)
  {
    v97 = v120;
    sub_1C6EE3C44(a4, v120);
    v6 = v123;
    swift_arrayInitWithTakeFrontToBack();
    sub_1C6EE3C44(v97, v92);
    v92 += v90;
    a4 += v90;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_1C6EE1D78(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = a3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9878, &qword_1C6EF6B58);
  v7 = *(*(v47 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v47);
  v46 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = v48 - a2;
  if (v48 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v51 = a1;
  v50 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v18 < 1)
    {
      v27 = a4 + v18;
    }

    else
    {
      v25 = -v14;
      v26 = a4 + v18;
      v27 = a4 + v18;
      v43 = a4;
      v44 = -v14;
      v42 = a1;
      do
      {
        v40 = v27;
        v28 = a2;
        v29 = a2 + v25;
        v45 = v28;
        while (1)
        {
          v31 = v48;
          if (v28 <= a1)
          {
            v51 = v28;
            v49 = v40;
            goto LABEL_60;
          }

          v41 = v27;
          v48 += v25;
          v32 = v26 + v25;
          sub_1C6EE3BDC(v32, v12, &qword_1EC1F9878, &qword_1C6EF6B58);
          v33 = v29;
          v34 = v29;
          v35 = v12;
          v36 = v46;
          sub_1C6EE3BDC(v34, v46, &qword_1EC1F9878, &qword_1C6EF6B58);
          v37 = *(v47 + 48);
          v38 = sub_1C6EE4270();
          v39 = v36;
          v12 = v35;
          sub_1C6EE3CB4(v39, &qword_1EC1F9878, &qword_1C6EF6B58);
          sub_1C6EE3CB4(v35, &qword_1EC1F9878, &qword_1C6EF6B58);
          if (v38)
          {
            break;
          }

          v27 = v32;
          if (v31 < v26 || v48 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v33;
            a1 = v42;
          }

          else
          {
            v29 = v33;
            a1 = v42;
            if (v31 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          v30 = v32 > v43;
          v25 = v44;
          v28 = v45;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_59;
          }
        }

        if (v31 < v45 || v48 >= v45)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v41;
          a1 = v42;
          v25 = v44;
        }

        else
        {
          v27 = v41;
          a1 = v42;
          a2 = v33;
          v25 = v44;
          if (v31 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v43);
    }

LABEL_59:
    v51 = a2;
    v49 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v17;
    v49 = a4 + v17;
    if (v17 >= 1 && a2 < v48)
    {
      v44 = v14;
      do
      {
        sub_1C6EE3BDC(a2, v12, &qword_1EC1F9878, &qword_1C6EF6B58);
        v20 = v46;
        sub_1C6EE3BDC(a4, v46, &qword_1EC1F9878, &qword_1C6EF6B58);
        v21 = *(v47 + 48);
        v22 = sub_1C6EE4270();
        sub_1C6EE3CB4(v20, &qword_1EC1F9878, &qword_1C6EF6B58);
        sub_1C6EE3CB4(v12, &qword_1EC1F9878, &qword_1C6EF6B58);
        if (v22)
        {
          v23 = a2 + v14;
          if (a1 < a2 || a1 >= v23)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v23;
        }

        else
        {
          v24 = a4 + v14;
          if (a1 < a4 || a1 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = v24;
          a4 = v24;
        }

        v14 = v44;
        a1 += v44;
        v51 = a1;
      }

      while (a4 < v45 && a2 < v48);
    }
  }

LABEL_60:
  sub_1C6ECCB6C(&v51, &v50, &v49);
  return 1;
}

uint64_t sub_1C6EE2290(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7788, &unk_1C6EF7A10);
  result = sub_1C6EE5180();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_1C6EE5580();

    sub_1C6EE4B30();
    result = sub_1C6EE55A0();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C6EE24B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7840, &unk_1C6EF7A20);
  result = sub_1C6EE5180();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_1C6EE5580();

    sub_1C6EE4B30();
    result = sub_1C6EE55A0();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C6EE26D8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C6EE26E8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_1C6EE2794(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_1C6E00D18(v9, *(&v9 + 1));
      v10 = a1(&v12);
      sub_1C6DF1134(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

void *sub_1C6EE2844(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_1C6EE3748(v5, a2, a3);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v6;
  }

  return result;
}

void *sub_1C6EE2914(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1C6EE2E78(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1C6EE29A4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1C6EE3370(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1C6EE2A34(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77A8, &qword_1C6EE6960);
  result = sub_1C6EE5340();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 64;
  v37 = v4;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v38 = (v9 - 1) & v9;
LABEL_16:
    v15 = v12 | (v10 << 6);
    v16 = (*(v4 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v4 + 56) + 24 * v15;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v8 + 40);
    v24 = v8;
    sub_1C6EE5580();

    sub_1C6E00CBC(v20, v21, v22);
    sub_1C6EE4B30();
    result = sub_1C6EE55A0();
    v8 = v24;
    v25 = -1 << *(v24 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v11 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v11 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v24 + 48) + 16 * v28);
    *v33 = v17;
    v33[1] = v18;
    v34 = *(v24 + 56) + 24 * v28;
    *v34 = v20;
    *(v34 + 8) = v21;
    *(v34 + 16) = v22;
    ++*(v24 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v37;
    v9 = v38;
    if (!v5)
    {
      return v8;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return v8;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v38 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C6EE2CB4(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1C6EE2E78(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_1C6EE2914(v12, v6, a2, a1);

    MEMORY[0x1CCA59290](v12, -1, -1);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t sub_1C6EE2E78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_1C6EE5580();

      sub_1C6EE4B30();
      v27 = sub_1C6EE55A0();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_1C6EE54B0() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_1C6EE2290(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_1C6EE5580();

      sub_1C6EE4B30();
      v41 = sub_1C6EE55A0();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_1C6EE54B0() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6EE3254(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C6EE54B0() & 1;
  }
}

uint64_t sub_1C6EE32AC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C6EE54B0() & 1;
  }
}

unint64_t sub_1C6EE3304()
{
  result = qword_1EDEF67C0;
  if (!qword_1EDEF67C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1F9A50, &qword_1C6EE90D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF67C0);
  }

  return result;
}

uint64_t sub_1C6EE3370(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *))
{
  v25 = 0;
  v24 = result;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v31 = (v8 - 1) & v8;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = v13;
    v18 = *(a3 + 56) + 24 * v13;
    v19 = *(v18 + 8);
    v21 = *(v18 + 16);
    v28 = *v18;
    v20 = v28;
    v29 = v19;
    v30 = v21;

    sub_1C6E00CBC(v20, v19, v21);
    LOBYTE(v19) = a4(v15, v16, &v28);
    sub_1C6E00C60(v28, v29, v30);

    v8 = v31;
    if (v19)
    {
      *(v24 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return sub_1C6EE2A34(v24, a2, v25, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1C6EE2A34(v24, a2, v25, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v31 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6EE3518(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t *))
{
  v4 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1C6EE3370(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_1C6EE29A4(v11, v6, v4, a2);
  result = MEMORY[0x1CCA59290](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C6EE3748(uint64_t result, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v20 = result;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];

    if (sub_1C6EE4BA0())
    {
      v17 = sub_1C6EE4BB0();

      if (v17)
      {
        *(v20 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v21++, 1))
        {
          __break(1u);
LABEL_17:

          return sub_1C6EE2290(v20, a2, v21, a3);
        }
      }
    }

    else
    {
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_17;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6EE38D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v33 = a4;
  v35 = a2;
  v36 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v30 = ((1 << v9) + 63) >> 6;
  v11 = 8 * v30;

  v34 = a5;

  if (v10 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v29[1] = v29;
    v29[2] = v6;
    MEMORY[0x1EEE9AC00](v12);
    v31 = v29 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v11);
    v32 = 0;
    v11 = 0;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v6 = (v13 + 63) >> 6;
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_13:
      v19 = v16 | (v11 << 6);
      v20 = (*(a1 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];

      if (sub_1C6EE4BA0())
      {
        v23 = sub_1C6EE4BB0();

        if (v23)
        {
          *&v31[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
          if (__OFADD__(v32++, 1))
          {
            __break(1u);
LABEL_18:
            v25 = sub_1C6EE2290(v31, v30, v32, a1);

            goto LABEL_19;
          }
        }
      }

      else
      {
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v6)
      {
        goto LABEL_18;
      }

      v18 = *(a1 + 56 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v28 = swift_slowAlloc();

  v25 = sub_1C6EE2844(v28, v30, a1);

  MEMORY[0x1CCA59290](v28, -1, -1);

LABEL_19:
  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

uint64_t sub_1C6EE3BDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6EE3C44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9878, &qword_1C6EF6B58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6EE3CB4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6EE3D14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6EE3D74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6EE3DDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C6EE3E68()
{
  result = qword_1EDEF8E98[0];
  if (!qword_1EDEF8E98[0])
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEF8E98);
  }

  return result;
}