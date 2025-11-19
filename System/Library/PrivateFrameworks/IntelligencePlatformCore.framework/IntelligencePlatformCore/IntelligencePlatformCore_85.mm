unint64_t sub_1C4B9B178()
{
  result = qword_1EC0C2620;
  if (!qword_1EC0C2620)
  {
    sub_1C4572308(&qword_1EC0B84F0, &unk_1C4F0CF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2620);
  }

  return result;
}

unint64_t sub_1C4B9B1DC()
{
  result = qword_1EC0C4158;
  if (!qword_1EC0C4158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4158);
  }

  return result;
}

uint64_t sub_1C4B9B230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 16);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C4B9B28C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C4168, &qword_1C4F57A58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B9B2FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 32);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t VectorSearchSimilarityMetric.toVectorDatabaseMetric()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_1C4EFC318();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  (*(v8 + 16))(v2, v3, v5);
  v11 = (*(v8 + 88))(v2, v5);
  if (v11 == *MEMORY[0x1E69DF588])
  {
    v12 = MEMORY[0x1E69DF528];
LABEL_7:
    v13 = *v12;
    v14 = sub_1C4EFC2D8();
    sub_1C43FBCE0(v14);
    return (*(v15 + 104))(a1, v13);
  }

  if (v11 == *MEMORY[0x1E69DF590])
  {
    v12 = MEMORY[0x1E69DF518];
    goto LABEL_7;
  }

  if (v11 == *MEMORY[0x1E69DF580])
  {
    v12 = MEMORY[0x1E69DF520];
    goto LABEL_7;
  }

  result = sub_1C4F02928();
  __break(1u);
  return result;
}

void *sub_1C4B9B4F8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v8 = OBJC_IVAR____TtCO24IntelligencePlatformCore8VectorDB17EmbeddingDatabase_config;
  sub_1C4B9E0CC(a2, v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore8VectorDB17EmbeddingDatabase_config);
  v2[2] = a1;

  sub_1C4B9B6CC();
  if (v3)
  {
    sub_1C4B9E130(a2);
  }

  else
  {
    if (v16)
    {
      sub_1C441D670(&v15, v17);
      sub_1C442E860(v17, v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore8VectorDB17EmbeddingDatabase_assetLoader);
      v12 = v2[2];
      sub_1C4EFC248();

      sub_1C4B9E130(a2);
      sub_1C440962C(v17);
      return v4;
    }

    sub_1C4420C3C(&v15, &qword_1EC0C41F8, qword_1C4F57F98);
    sub_1C4B9B1DC();
    swift_allocError();
    *v14 = 0xD00000000000002ALL;
    *(v14 + 8) = 0x80000001C4FB4410;
    *(v14 + 16) = 1;
    swift_willThrow();

    sub_1C4B9E130(a2);
  }

  v9 = v2[2];

  sub_1C4B9E130(v2 + v8);
  v10 = *(*v2 + 48);
  v11 = *(*v2 + 52);
  swift_deallocPartialClassInstance();
  return v4;
}

void sub_1C4B9B6CC()
{
  sub_1C43FE96C();
  v2 = v0;
  v67 = v3;
  v4 = type metadata accessor for VectorDB.Config(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v61 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v61 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v61 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v61 - v26;
  if (*v2 == 1)
  {
    v62 = v1;
    v28 = *(v2 + 56);
    if (!v28)
    {
      *(v67 + 32) = 0;
      *v67 = 0u;
      *(v67 + 16) = 0u;
      goto LABEL_15;
    }

    v61 = v25;
    v29 = *(v2 + 48);
    v30 = v29 == 0xD000000000000015 && 0x80000001C4FB4440 == v28;
    if (v30 || (sub_1C4403880() & 1) != 0)
    {
      sub_1C4B9E0CC(v2, v27);
      v31 = type metadata accessor for NLContextualEmbeddingAssetLoader(0);
      sub_1C441E43C(v31);
      v32 = v62;
      v33 = sub_1C4B97CAC();
      if (!v32)
      {
        v34 = &off_1F43FF7C0;
LABEL_12:
        v64 = v23;
        v65 = v34;
LABEL_13:
        *&v63 = v33;
        sub_1C441D670(&v63, v66);
        sub_1C441D670(v66, v67);
      }
    }

    else
    {
      v36 = v29 == 0x646465626D456C6ELL && v28 == 0xEB00000000676E69;
      if (v36 || (sub_1C4403880() & 1) != 0)
      {
        sub_1C4B9E0CC(v2, v23);
        v37 = type metadata accessor for NLEmbeddingAssetLoader(0);
        v38 = *(v37 + 48);
        v39 = *(v37 + 52);
        swift_allocObject();
        v40 = v62;
        v33 = sub_1C4B98740();
        if (v40)
        {
          goto LABEL_15;
        }

        v64 = v37;
        v65 = &off_1F43FF760;
        goto LABEL_13;
      }

      v41 = v29 == 0x64696C637565 && v28 == 0xE600000000000000;
      if (v41 || (sub_1C4403880() & 1) != 0)
      {
        sub_1C4B9E0CC(v2, v20);
        v42 = type metadata accessor for EuclidEmbeddingAssetLoader(0);
        sub_1C441E43C(v42);
        v43 = v62;
        v33 = sub_1C4B98EA0(v20);
        if (v43)
        {
          goto LABEL_15;
        }

        v34 = &off_1F43FF700;
        goto LABEL_12;
      }

      v44 = v29 == 0x6173726576696E75 && v28 == 0xED0000747865546CLL;
      if (v44 || (sub_1C4403880() & 1) != 0)
      {
        sub_1C4B9E0CC(v2, v17);
        v45 = type metadata accessor for UniversalEmbeddingAssetLoader(0);
        sub_1C441E43C(v45);
        v46 = v62;
        v33 = sub_1C4B99FC0();
        if (v46)
        {
          goto LABEL_15;
        }

        v34 = &off_1F43FF6A0;
        goto LABEL_12;
      }

      v47 = v29 == 0xD000000000000010 && 0x80000001C4FB4460 == v28;
      if (v47 || (sub_1C4403880() & 1) != 0)
      {
        sub_1C4B9E0CC(v2, v14);
        v48 = type metadata accessor for AddressEmbeddingAssetLoader(0);
        sub_1C441E43C(v48);
        v49 = v62;
        v33 = sub_1C4B97484(v14);
        if (v49)
        {
          goto LABEL_15;
        }

        v34 = &off_1F43FF820;
        goto LABEL_12;
      }

      v50 = v29 == 0x7974706D65 && v28 == 0xE500000000000000;
      if (v50 || (sub_1C4403880() & 1) != 0)
      {
        sub_1C4B9E0CC(v2, v11);
        v51 = type metadata accessor for DefaultEmptyAssetLoader(0);
        sub_1C441E43C(v51);
        v52 = v62;
        v33 = sub_1C4B96F7C(v11);
        if (v52)
        {
          goto LABEL_15;
        }

        v34 = &off_1F43FF880;
        goto LABEL_12;
      }

      if (qword_1EDDFECD0 != -1)
      {
        sub_1C4400FC0();
        swift_once();
      }

      v53 = sub_1C4F00978();
      sub_1C442B738(v53, qword_1EDE2DF70);
      v54 = sub_1C4F00968();
      v55 = sub_1C4F01CB8();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_1C43F8000, v54, v55, "VectorDBArtifact: DefaultEmptyAssetLoader is being used by default.", v56, 2u);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      v57 = v61;
      sub_1C4B9E0CC(v2, v61);
      v58 = type metadata accessor for DefaultEmptyAssetLoader(0);
      sub_1C441E43C(v58);
      v59 = v62;
      v60 = sub_1C4B96F7C(v57);
      if (!v59)
      {
        *(v67 + 24) = v54;
        *(v67 + 32) = &off_1F43FF880;
        *v67 = v60;
      }
    }
  }

  else
  {
    sub_1C4B9E0CC(v2, v7);
    v35 = type metadata accessor for GenericEmbeddingAssetLoader(0);
    sub_1C441E43C(v35);
    v33 = sub_1C4B96558(v7);
    if (!v1)
    {
      v34 = &off_1F43FF8E0;
      goto LABEL_12;
    }
  }

LABEL_15:
  sub_1C43FBC80();
}

uint64_t sub_1C4B9BC50()
{
  v1 = v0;
  v2 = *(v0 + 16);

  sub_1C4EFC268();

  v3 = *(v1 + 16);

  sub_1C4B9E130(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore8VectorDB17EmbeddingDatabase_config);
  sub_1C440962C((v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore8VectorDB17EmbeddingDatabase_assetLoader));
  return v1;
}

uint64_t sub_1C4B9BCB4()
{
  sub_1C4B9BC50();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4B9BD0C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4B9BD2C, 0, 0);
}

uint64_t sub_1C4B9BD2C()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtCO24IntelligencePlatformCore8VectorDB17EmbeddingDatabase_assetLoader;
  v0[4] = OBJC_IVAR____TtCO24IntelligencePlatformCore8VectorDB17EmbeddingDatabase_assetLoader;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  sub_1C4409678((v1 + v2), v3);
  v5 = *(sub_1C43FCFC0() + 72);
  sub_1C4404280();
  v11 = (v6 + *v6);
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1C4B9BE58;

  return v11(v3, v4);
}

uint64_t sub_1C4B9BE58()
{
  v2 = *(*v1 + 40);
  v5 = *v1;

  if (v0)
  {
    sub_1C43FBDA0();

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4B9BF84, 0, 0);
  }
}

uint64_t sub_1C4B9BF84()
{
  v1 = (v0[3] + v0[4]);
  v2 = v1[3];
  v3 = v1[4];
  sub_1C4409678(v1, v2);
  v4 = *(sub_1C43FCFC0() + 64);
  sub_1C4404280();
  v11 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_1C4B9C0AC;
  v9 = v0[2];

  return v11(v9, v2, v3);
}

uint64_t sub_1C4B9C0AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 64) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1C4B9C1FC, 0, 0);
  }
}

uint64_t sub_1C4B9C1FC()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = *(v0[3] + 16);
  v4 = sub_1C4EFC238();

  if (!v1)
  {
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDE2DF70);
    v7 = sub_1C4F00968();
    v15 = sub_1C4F01CC8();
    if (os_log_type_enabled(v7, v15))
    {
      v16 = sub_1C43FD084();
      *v16 = 134217984;
      *(v16 + 4) = v4;
      sub_1C43FF718(&dword_1C43F8000, v17, v15, "VectorDBArtifact: %ld embeddings inserted.");
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    goto LABEL_10;
  }

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2DF70);
  v6 = sub_1C43FCFC0();
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CD8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_1C43FD084();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    sub_1C43FF718(&dword_1C43F8000, v13, v8, "VectorDBArtifact: %@");
    sub_1C4420C3C(v10, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

LABEL_10:
    goto LABEL_12;
  }

LABEL_12:
  sub_1C43FBDA0();

  return v18();
}

uint64_t sub_1C4B9C420(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_1C4EFC308() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_1C4EFC2C8();
  v2[5] = v4;
  v5 = *(v4 - 8);
  sub_1C4404280();
  v2[6] = v6;
  v8 = *(v7 + 64) + 15;
  v2[7] = swift_task_alloc();
  v9 = sub_1C4EFF0C8();
  v2[8] = v9;
  v10 = *(v9 - 8);
  sub_1C4404280();
  v2[9] = v11;
  v13 = *(v12 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4B9C560, 0, 0);
}

uint64_t sub_1C4B9C560()
{
  v1 = 0;
  v56 = v0[3];
  v57 = *(v0[2] + 16);
  v53 = (v56 + OBJC_IVAR____TtCO24IntelligencePlatformCore8VectorDB17EmbeddingDatabase_assetLoader);
  v52 = *MEMORY[0x1E69DF560];
  v54 = v0[6];
  v55 = v0[9];
  v49 = v54 + 8;
  v50 = (v55 + 8);
  v51 = *MEMORY[0x1E69DF5E0];
  while (v57 != v1)
  {
    v2 = v0[7];
    v4 = v0[4];
    v3 = v0[5];
    v5 = v1;
    (*(v55 + 16))(v0[10], v0[2] + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v1, v0[8]);
    v7 = v53[3];
    v6 = v53[4];
    sub_1C4409678(v53, v7);
    (*(v6 + 16))(v7, v6);
    sub_1C456902C(&qword_1EC0C41C0, &qword_1C4F57D70);
    v8 = (sub_1C456902C(&qword_1EC0C41C8, &qword_1C4F57D78) - 8);
    v9 = *(*v8 + 72);
    v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C4F0D130;
    v12 = v11 + v10;
    v13 = v8[14];
    v14 = sub_1C4EFC2E8();
    sub_1C43FBCE0(v14);
    (*(v15 + 104))(v12, v52);
    *(v12 + v13) = sub_1C4EFF0A8();
    v16 = sub_1C4EFC338();
    sub_1C43FBCE0(v16);
    (*(v17 + 104))(v12 + v13, v51, v16);
    sub_1C440BAA8(v12 + v13, 0, 1, v16);
    sub_1C4EFC2B8();
    v18 = *(v56 + 16);
    sub_1C456902C(&qword_1EC0C41D0, &qword_1C4F57D80);
    v19 = *(v54 + 72);
    v20 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1C4F0D130;
    (*(v54 + 16))(v21 + v20, v2, v3);
    v22 = sub_1C4EFC208();
    v23 = v0[10];
    v24 = v0[8];
    v25 = v22;
    v1 = v5 + 1;
    (*(v54 + 8))(v0[7], v0[5]);

    v34 = sub_1C4430230(v26, v27, v28, v29, v30, v31, v32, v33, v48, v49, v50);
    v35(v34);
    sub_1C49D3B9C(v25);
  }

  v36 = *(v56 + 16);
  v37 = sub_1C4EFC228();

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v38 = sub_1C4F00978();
  sub_1C442B738(v38, qword_1EDE2DF70);
  v39 = sub_1C4F00968();
  v40 = sub_1C4F01CC8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = sub_1C43FD084();
    *v41 = 134217984;
    *(v41 + 4) = v37;
    sub_1C43FF718(&dword_1C43F8000, v42, v40, "VectorDBArtifact: %ld embeddings deleted.");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v43 = v0[10];
  v44 = v0[7];
  v45 = v0[4];

  sub_1C43FBDA0();

  return v46();
}

void sub_1C4B9CB28()
{
  sub_1C43FE96C();
  v49 = v2;
  v50 = v0;
  v4 = v3;
  v48 = v5;
  v6 = sub_1C4EFC328();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = (v13 - v12);
  v15 = sub_1C4EFC308();
  v16 = sub_1C43FCDF8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v23 = v22 - v21;
  sub_1C4B9B6CC();
  if (!v1)
  {
    v51 = v18;
    v44 = v23;
    v62 = v15;
    v52 = v9;
    if (v58)
    {
      v56 = v6;
      v46 = 0;
      sub_1C441D670(&v57, v59);
      sub_1C456902C(&qword_1EC0B9450, &unk_1C4F3E870);
      v24 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v55 = *(v51 + 72);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1C4F0D130;
      v26 = v60;
      v27 = v61;
      sub_1C4409678(v59, v60);
      v28 = *(v27 + 16);
      v45 = v25;
      v54 = v24;
      v28(v26, v27);
      v29 = *(type metadata accessor for VectorDB.Config(0) + 44);
      v47 = v4;
      v30 = *(v4 + v29);
      if (v30)
      {
        v31 = *(v30 + 16);
        v32 = MEMORY[0x1E69E7CC0];
        if (v31)
        {
          *&v57 = MEMORY[0x1E69E7CC0];
          sub_1C459EF20();
          v32 = v57;
          v53 = *MEMORY[0x1E69DF5B8];
          v33 = v52 + 104;
          v34 = *(v52 + 104);
          v51 += 32;
          v52 = v34;
          v35 = (v30 + 40);
          v36 = v44;
          do
          {
            v37 = *(v35 - 1);
            v38 = *v35;
            *v14 = 0;
            v14[1] = 0;
            v39 = v33;
            (v52)(v14, v53, v56);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4EFC2F8();
            *&v57 = v32;
            v40 = *(v32 + 16);
            if (v40 >= *(v32 + 24) >> 1)
            {
              sub_1C459EF20();
              v32 = v57;
            }

            *(v32 + 16) = v40 + 1;
            (*v51)(v32 + v54 + v40 * v55, v36, v62);
            v35 += 2;
            --v31;
            v33 = v39;
          }

          while (v31);
        }
      }

      else
      {
        v32 = MEMORY[0x1E69E7CC0];
      }

      *&v57 = v45;
      v42 = sub_1C49D4C44(v32);
      v43 = v57;
      MEMORY[0x1EEE9AC00](v42);
      *(&v44 - 4) = v59;
      *(&v44 - 3) = v43;
      *(&v44 - 2) = v47;
      sub_1C4C82CC8();

      sub_1C440962C(v59);
    }

    else
    {
      sub_1C4420C3C(&v57, &qword_1EC0C41F8, qword_1C4F57F98);
      sub_1C4B9B1DC();
      swift_allocError();
      *v41 = 0xD00000000000002ALL;
      *(v41 + 8) = 0x80000001C4FB4410;
      *(v41 + 16) = 1;
      swift_willThrow();
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4B9CF60(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C4EFC2D8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1C4EF98F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C4EFC2A8();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  (*(v10 + 16))(v13, a1, v9, v16);
  v18 = a2[3];
  v17 = a2[4];
  sub_1C4409678(a2, v18);
  (*(v17 + 88))(v18, v17);
  v19 = a2[3];
  v20 = a2[4];
  sub_1C4409678(a2, v19);
  v21 = *(v20 + 80);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v21(v19, v20);
  v22 = *(a4 + 1);
  sub_1C4EFC298();
  v23 = sub_1C4EFC288();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  return sub_1C4EFC218();
}

uint64_t sub_1C4B9D198(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F636E45657375 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x506564756C636E69 && a2 == 0xEE0064616F6C7961;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E69646465626D65 && a2 == 0xEF6E6D756C6F4367;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x80000001C4F919C0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D756C6F4379656BLL && a2 == 0xEA0000000000736ELL;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000017 && 0x80000001C4FB43D0 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E69646465626D65 && a2 == 0xEF6769666E6F4367;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD00000000000001ALL && 0x80000001C4FB3F10 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C4F02938();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4B9D438(char a1)
{
  result = 0x646F636E45657375;
  switch(a1)
  {
    case 1:
      result = 0x506564756C636E69;
      break;
    case 2:
    case 6:
      result = 0x6E69646465626D65;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x6D756C6F4379656BLL;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4B9D544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B9D198(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B9D56C(uint64_t a1)
{
  v2 = sub_1C4B9D918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B9D5A8(uint64_t a1)
{
  v2 = sub_1C4B9D918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VectorDB.Config.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = sub_1C456902C(&qword_1EC0C4170, &unk_1C4F57A60);
  sub_1C43FCDF8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FE61C();
  v12 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B9D918();
  sub_1C4F02BF8();
  v13 = *v4;
  sub_1C43FBF44();
  sub_1C4F027A8();
  if (!v2)
  {
    v14 = v4[1];
    sub_1C43FBF44();
    sub_1C4F027A8();
    v15 = *(v4 + 1);
    v16 = *(v4 + 2);
    sub_1C43FBF44();
    sub_1C4F02798();
    v17 = *(v4 + 3);
    v18 = *(v4 + 4);
    sub_1C43FBF44();
    sub_1C4F02798();
    v23 = *(v4 + 5);
    sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C4B9DF70(&qword_1EDDDBC60);
    sub_1C43FC428();
    sub_1C4F027E8();
    v24 = *(v4 + 3);
    v26 = *(v4 + 8);
    sub_1C4B9D96C();
    sub_1C43FBF44();
    sub_1C4F02778();
    v19 = type metadata accessor for VectorDB.Config(0);
    v20 = *(v19 + 40);
    type metadata accessor for VectorDB.EmbeddingConfig(0);
    sub_1C441267C();
    sub_1C4B9D9E0(v21);
    sub_1C43FC428();
    sub_1C4F02778();
    v25 = *&v4[*(v19 + 44)];
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D0B4(&qword_1EDDFA578);
    sub_1C43FC428();
    sub_1C4F02778();
  }

  return (*(v8 + 8))(v3, v6);
}

unint64_t sub_1C4B9D918()
{
  result = qword_1EDDF08C8;
  if (!qword_1EDDF08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF08C8);
  }

  return result;
}

unint64_t sub_1C4B9D96C()
{
  result = qword_1EDDDBE28;
  if (!qword_1EDDDBE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBE28);
  }

  return result;
}

unint64_t sub_1C4B9D9E0(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void VectorDB.Config.init(from:)()
{
  sub_1C43FE96C();
  v2 = v1;
  v29 = v3;
  v4 = *(*(sub_1C456902C(&qword_1EC0C4168, &qword_1C4F57A58) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = sub_1C456902C(&qword_1EC0C4178, &qword_1C4F57A70);
  sub_1C43FCDF8(v8);
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v30 = type metadata accessor for VectorDB.Config(0);
  v14 = sub_1C43FBCE0(v30);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v21 = v2[3];
  v20 = v2[4];
  v32 = v2;
  sub_1C4409678(v2, v21);
  sub_1C4B9D918();
  v31 = v13;
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v32);
  }

  else
  {
    v22 = v29;
    LOBYTE(v33) = 0;
    sub_1C44178E4();
    *v19 = sub_1C4F02688() & 1;
    LOBYTE(v33) = 1;
    *(v19 + 1) = sub_1C4F02688() & 1;
    LOBYTE(v33) = 2;
    sub_1C44178E4();
    *(v19 + 8) = sub_1C4F02678();
    *(v19 + 16) = v23;
    LOBYTE(v33) = 3;
    sub_1C44178E4();
    *(v19 + 24) = sub_1C4F02678();
    *(v19 + 32) = v24;
    sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C4B9DF70(&qword_1EDDFEA60);
    sub_1C440B46C();
    sub_1C4F026C8();
    *(v19 + 40) = v33;
    sub_1C4B9E008();
    sub_1C4F02658();
    v25 = v34;
    *(v19 + 48) = v33;
    *(v19 + 64) = v25;
    type metadata accessor for VectorDB.EmbeddingConfig(0);
    LOBYTE(v33) = 6;
    sub_1C441267C();
    sub_1C4B9D9E0(v26);
    sub_1C440B46C();
    sub_1C4F02658();
    sub_1C4B9E05C(v7, v19 + *(v30 + 40));
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D0B4(&qword_1EDDFEA58);
    sub_1C440B46C();
    sub_1C4F02658();
    v27 = sub_1C4400FEC();
    v28(v27);
    *(v19 + *(v30 + 44)) = v33;
    sub_1C4B9E0CC(v19, v22);
    sub_1C440962C(v32);
    sub_1C4B9E130(v19);
  }

  sub_1C43FBC80();
}

unint64_t sub_1C4B9DF70(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v4 = v3;
    sub_1C4572308(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C4B9D9E0(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C4B9E008()
{
  result = qword_1EDDF08D0;
  if (!qword_1EDDF08D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF08D0);
  }

  return result;
}

uint64_t sub_1C4B9E05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C4168, &qword_1C4F57A58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B9E0CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VectorDB.Config(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B9E130(uint64_t a1)
{
  v2 = type metadata accessor for VectorDB.Config(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4B9E18C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69646465626D65 && a2 == 0xEE006C65646F4D67;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261506C65646F6DLL && a2 == 0xEF73726574656D61)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4B9E264(char a1)
{
  if (a1)
  {
    return 0x7261506C65646F6DLL;
  }

  else
  {
    return 0x6E69646465626D65;
  }
}

void sub_1C4B9E2B4()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0C4188, &unk_1C4F57D30);
  sub_1C43FCDF8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FE61C();
  v10 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C4B9F3E8();
  sub_1C4F02BF8();
  sub_1C4F02798();
  if (!v0)
  {
    sub_1C456902C(qword_1EC0C0740, &qword_1C4F0D000);
    sub_1C4B9F490(&qword_1EDDFA5E0);
    sub_1C43FC428();
    sub_1C4F02778();
  }

  (*(v6 + 8))(v1, v4);
  sub_1C43FBC80();
}

uint64_t sub_1C4B9E450(uint64_t *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C41A8, &qword_1C4F57D48);
  sub_1C43FCDF8(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B9F3E8();
  sub_1C4F02BC8();
  if (!v1)
  {
    v7 = sub_1C4F02678();
    sub_1C456902C(qword_1EC0C0740, &qword_1C4F0D000);
    sub_1C4B9F490(&qword_1EDDFCEF0);
    sub_1C4F02658();
    v9 = sub_1C44069E0();
    v10(v9);
  }

  sub_1C440962C(a1);
  return v7;
}

uint64_t sub_1C4B9E650(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69736E656D6964 && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C4FB43F0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4B9E728(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6F69736E656D6964;
  }
}

uint64_t sub_1C4B9E768(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C4190, &qword_1C4F57D40);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B9F43C();
  sub_1C4F02BF8();
  v14 = *v3;
  v18[15] = 0;
  sub_1C4F027D8();
  if (!v2)
  {
    v15 = *(type metadata accessor for VectorDB.EmbeddingConfig(0) + 20);
    v18[14] = 1;
    sub_1C4EFC318();
    sub_1C4413914();
    sub_1C4B9D9E0(v16);
    sub_1C4F027E8();
  }

  return (*(v7 + 8))(v12, v5);
}

void sub_1C4B9E900()
{
  sub_1C43FE96C();
  v3 = v2;
  v31 = v4;
  v33 = sub_1C4EFC318();
  v5 = sub_1C43FCDF8(v33);
  v30 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v34 = sub_1C456902C(&qword_1EC0C41B0, &qword_1C4F57D50);
  sub_1C43FCDF8(v34);
  v32 = v9;
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = type metadata accessor for VectorDB.EmbeddingConfig(0);
  v16 = sub_1C43FBCE0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v21 = (v20 - v19);
  v22 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C4B9F43C();
  sub_1C4F02BC8();
  if (!v0)
  {
    v29 = v15;
    v23 = v32;
    v24 = v33;
    v25 = v34;
    *v21 = sub_1C4F026B8();
    sub_1C4413914();
    sub_1C4B9D9E0(v26);
    v28 = v1;
    sub_1C4F026C8();
    (*(v23 + 8))(v14, v25);
    (*(v30 + 32))(v21 + *(v29 + 20), v28, v24);
    sub_1C4B9F4F8(v21, v31);
  }

  sub_1C440962C(v3);
  sub_1C43FBC80();
}

_BYTE *storeEnumTagSinglePayload for VectorDB(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C4B9EC90()
{
  result = type metadata accessor for VectorDB.Config(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1C4B9ED38()
{
  sub_1C4B9EEB8(319, &qword_1EDDFEA68, type metadata accessor for ViewDatabaseArtifact.Property, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C4B9EE68();
    if (v1 <= 0x3F)
    {
      sub_1C4B9EEB8(319, qword_1EDDFCFC0, type metadata accessor for VectorDB.EmbeddingConfig, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C45C2BC8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C4B9EE68()
{
  if (!qword_1EDDFEAF8[0])
  {
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, qword_1EDDFEAF8);
    }
  }
}

void sub_1C4B9EEB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1C4B9EF44()
{
  result = sub_1C4EFC318();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VectorDB.Config.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4B9F0B0()
{
  result = qword_1EC0C4180;
  if (!qword_1EC0C4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4180);
  }

  return result;
}

uint64_t sub_1C4B9F124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B9E18C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B9F14C(uint64_t a1)
{
  v2 = sub_1C4B9F3E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B9F188(uint64_t a1)
{
  v2 = sub_1C4B9F3E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4B9F1C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4B9E450(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void sub_1C4B9F1F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C4B9E2B4();
}

uint64_t sub_1C4B9F214(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4B9F268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B9E650(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B9F290(uint64_t a1)
{
  v2 = sub_1C4B9F43C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B9F2CC(uint64_t a1)
{
  v2 = sub_1C4B9F43C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C4B9F33C()
{
  result = qword_1EDDF08B8;
  if (!qword_1EDDF08B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF08B8);
  }

  return result;
}

unint64_t sub_1C4B9F394()
{
  result = qword_1EDDF08C0;
  if (!qword_1EDDF08C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF08C0);
  }

  return result;
}

unint64_t sub_1C4B9F3E8()
{
  result = qword_1EDDF08E8[0];
  if (!qword_1EDDF08E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF08E8);
  }

  return result;
}

unint64_t sub_1C4B9F43C()
{
  result = qword_1EC0C4198;
  if (!qword_1EC0C4198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4198);
  }

  return result;
}

unint64_t sub_1C4B9F490(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    sub_1C4572308(qword_1EC0C0740, &qword_1C4F0D000);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C4B9F4F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VectorDB.EmbeddingConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *sub_1C4B9F56C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4B9F64C()
{
  result = qword_1EC0C41D8;
  if (!qword_1EC0C41D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C41D8);
  }

  return result;
}

unint64_t sub_1C4B9F6A4()
{
  result = qword_1EC0C41E0;
  if (!qword_1EC0C41E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C41E0);
  }

  return result;
}

unint64_t sub_1C4B9F6FC()
{
  result = qword_1EC0C41E8;
  if (!qword_1EC0C41E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C41E8);
  }

  return result;
}

unint64_t sub_1C4B9F754()
{
  result = qword_1EC0C41F0;
  if (!qword_1EC0C41F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C41F0);
  }

  return result;
}

unint64_t sub_1C4B9F7AC()
{
  result = qword_1EDDF08D8;
  if (!qword_1EDDF08D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF08D8);
  }

  return result;
}

unint64_t sub_1C4B9F804()
{
  result = qword_1EDDF08E0;
  if (!qword_1EDDF08E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF08E0);
  }

  return result;
}

uint64_t sub_1C4B9F878(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1C4B9F894(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1C4B9F8D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C4FB4480 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4B9F9A8(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6D614E656C626174;
  }
}

uint64_t sub_1C4B9F9E8(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v17 = a4;
  v6 = sub_1C456902C(&qword_1EC0C4208, &qword_1C4F58130);
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v16 - v12;
  v14 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B9FE34();
  sub_1C4F02BF8();
  v20 = 0;
  sub_1C4F02798();
  if (!v4)
  {
    v19 = v17 & 1;
    v18 = 1;
    sub_1C4B9FEDC();
    sub_1C4F027E8();
  }

  return (*(v9 + 8))(v13, v6);
}

uint64_t sub_1C4B9FB6C(uint64_t *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C4200, &qword_1C4F58128);
  v4 = sub_1C43FCDF8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B9FE34();
  sub_1C4F02BC8();
  if (!v1)
  {
    v7 = sub_1C4F02678();
    sub_1C4B9FE88();
    sub_1C4F026C8();
    v9 = sub_1C44069E0();
    v10(v9);
  }

  sub_1C440962C(a1);
  return v7;
}

uint64_t sub_1C4B9FD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B9F8D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B9FD68(uint64_t a1)
{
  v2 = sub_1C4B9FE34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B9FDA4(uint64_t a1)
{
  v2 = sub_1C4B9FE34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4B9FDE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C4B9FB6C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

unint64_t sub_1C4B9FE34()
{
  result = qword_1EDDEAEF8[0];
  if (!qword_1EDDEAEF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDEAEF8);
  }

  return result;
}

unint64_t sub_1C4B9FE88()
{
  result = qword_1EDDE8378;
  if (!qword_1EDDE8378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE8378);
  }

  return result;
}

unint64_t sub_1C4B9FEDC()
{
  result = qword_1EC0C4210;
  if (!qword_1EC0C4210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4210);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VectorSearch.Config.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4BA0020()
{
  result = qword_1EC0C4218;
  if (!qword_1EC0C4218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4218);
  }

  return result;
}

unint64_t sub_1C4BA0078()
{
  result = qword_1EDDEAEE8;
  if (!qword_1EDDEAEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAEE8);
  }

  return result;
}

unint64_t sub_1C4BA00D0()
{
  result = qword_1EDDEAEF0;
  if (!qword_1EDDEAEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAEF0);
  }

  return result;
}

uint64_t sub_1C4BA0124(uint64_t *a1)
{
  v2 = *(sub_1C4F001E8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B090(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1C4BA4B30(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_1C4BA01F4(uint64_t a1)
{
  sub_1C43FEAE0(a1);
  if (v1)
  {
    sub_1C456902C(&qword_1EC0BAB68, &qword_1C4F58C20);
    sub_1C4404D2C();
  }

  sub_1C44061B0();
  sub_1C442D4B8();
  sub_1C4BA7C88(v3, v4, v5, v6, v7, v8);
  if (v2)
  {
    result = sub_1C4407D24();
    __break(1u);
  }

  else
  {

    return v10;
  }

  return result;
}

uint64_t sub_1C4BA02EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1C43FEAE0(a1);
  if (v4)
  {
    sub_1C456902C(v7, v8);
    sub_1C4404D2C();
  }

  sub_1C44061B0();
  sub_1C442D4B8();
  a4();
  if (v5)
  {
    result = sub_1C4407D24();
    __break(1u);
  }

  else
  {

    return v10;
  }

  return result;
}

uint64_t sub_1C4BA03C0(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    sub_1C456902C(a2, a3);
    v6 = sub_1C4404D2C();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v8 = v6;
  a4(a1, 1, &v8);
  return v8;
}

uint64_t sub_1C4BA044C(uint64_t a1)
{
  sub_1C43FEAE0(a1);
  if (v1)
  {
    sub_1C456902C(&qword_1EC0BAB60, &unk_1C4F16C80);
    sub_1C4404D2C();
  }

  sub_1C44061B0();
  sub_1C442D4B8();
  sub_1C4BA7C88(v3, v4, v5, v6, v7, v8);
  if (v2)
  {
    result = sub_1C4407D24();
    __break(1u);
  }

  else
  {

    return v10;
  }

  return result;
}

uint64_t sub_1C4BA056C(uint64_t a1)
{
  sub_1C43FEAE0(a1);
  if (v1)
  {
    sub_1C456902C(&qword_1EC0BAB08, &qword_1C4F16C18);
    sub_1C4404D2C();
  }

  sub_1C44061B0();
  sub_1C442D4B8();
  sub_1C4BA7C88(v3, v4, v5, v6, v7, v8);
  if (v2)
  {
    result = sub_1C4407D24();
    __break(1u);
  }

  else
  {

    return v10;
  }

  return result;
}

uint64_t sub_1C4BA0614(uint64_t a1)
{
  sub_1C43FEAE0(a1);
  if (v1)
  {
    sub_1C456902C(&qword_1EC0BAB10, &qword_1C4F16C20);
    sub_1C4404D2C();
  }

  sub_1C44061B0();
  sub_1C442D4B8();
  sub_1C4BA7C88(v3, v4, v5, v6, v7, v8);
  if (v2)
  {
    result = sub_1C4407D24();
    __break(1u);
  }

  else
  {

    return v10;
  }

  return result;
}

uint64_t sub_1C4BA06BC(uint64_t a1)
{
  sub_1C43FEAE0(a1);
  if (v1)
  {
    sub_1C456902C(&qword_1EC0BAB50, &unk_1C4F16C70);
    sub_1C4404D2C();
  }

  sub_1C44061B0();
  sub_1C442D4B8();
  sub_1C4BA7C88(v3, v4, v5, v6, v7, v8);
  if (v2)
  {
    result = sub_1C4407D24();
    __break(1u);
  }

  else
  {

    return v10;
  }

  return result;
}

void VersionInfo.AllInfo.fetchAll()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v21;
  a20 = v22;
  v137 = sub_1C4F001E8();
  v23 = sub_1C43FCDF8(v137);
  v118 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v136 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = *(sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0) - 8);
  v28 = *(v135 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v113 - v30;
  v134 = sub_1C456902C(&qword_1EC0BA810, &qword_1C4F14738);
  v32 = sub_1C43FBCE0(v134);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBD08();
  v143 = (v35 - v36);
  MEMORY[0x1EEE9AC00](v37);
  v133 = &v113 - v38;
  v39 = *(v20 + 8);
  v40 = *(v20 + 16);
  v41 = *(v20 + 24);
  v42 = *(v20 + 32);
  v43 = *(v20 + 40);
  v44 = *(v20 + 48);
  v120 = *(v20 + 56);
  v45 = *(v20 + 72);
  v116 = *(v20 + 64);
  v121 = v45;
  v46 = *(v20 + 88);
  v115 = *(v20 + 80);
  v114 = v46;
  v117 = *(v20 + 96);
  v122 = *(v20 + 112);
  v47 = MEMORY[0x1E69E7CC8];
  if (v39)
  {
    v48 = *v20;
    v147 = MEMORY[0x1E69E6158];
    v144 = v48;
    v145 = v39;
    sub_1C443548C();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_isUniquelyReferenced_nonNull_native();
    v149 = v47;
    sub_1C43FC964();
    sub_1C46601FC();
    v49 = v149;
    if (!v41)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v49 = MEMORY[0x1E69E7CC8];
  if (v41)
  {
LABEL_3:
    v147 = MEMORY[0x1E69E6158];
    v144 = v40;
    v145 = v41;
    sub_1C443548C();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C441EFC4();
    sub_1C46601FC();
    v49 = v149;
  }

LABEL_4:
  v50 = v31;
  if (v43)
  {
    v147 = MEMORY[0x1E69E6158];
    v144 = v42;
    v145 = v43;
    sub_1C443548C();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C441EFC4();
    sub_1C43FC964();
    sub_1C46601FC();
    v49 = v149;
  }

  v119 = v49;
  v51 = *(v44 + 16);
  if (v51)
  {
    v144 = MEMORY[0x1E69E7CC0];
    sub_1C440476C();
    sub_1C459DBF8();
    v142 = v144;
    v52 = sub_1C4702074(v44);
    v53 = v44 + 64;
    v126 = 0x80000001C4F879A0;
    v125 = 0x80000001C4F87980;
    sub_1C43FBDF0();
    v124 = v54;
    sub_1C43FBDF0();
    v123 = v58;
    v128 = v55;
    v127 = v44 + 72;
    v130 = v31;
    v132 = v44;
    v129 = v51;
    v131 = v44 + 64;
    while ((v52 & 0x8000000000000000) == 0 && v52 < 1 << *(v44 + 32))
    {
      v59 = v52 >> 6;
      if ((*(v53 + 8 * (v52 >> 6)) & (1 << v52)) == 0)
      {
        goto LABEL_53;
      }

      if (*(v44 + 36) != v55)
      {
        goto LABEL_54;
      }

      v140 = v57;
      v141 = v55;
      v138 = v56;
      v60 = v50;
      v61 = v134;
      v62 = *(v134 + 48);
      v139 = v52 & 0x3F;
      v63 = *(v44 + 56);
      v64 = v133;
      *v133 = *(*(v44 + 48) + v52);
      sub_1C446C964(v63 + *(v135 + 72) * v52, &v64[v62], &unk_1EC0B84E0, qword_1C4F0D2D0);
      v65 = v143;
      *v143 = *v64;
      v66 = *(v61 + 48);
      sub_1C45B69E4(&v64[v62], &v65[v66]);
      v67 = 0xE600000000000000;
      v68 = 0x6C6F6F547069;
      switch(*v65)
      {
        case 1:
          v68 = 0xD000000000000018;
          v70 = &a9;
          goto LABEL_17;
        case 2:
          sub_1C44053E4();
          v68 = v72 + 5;
          v70 = &a10;
          goto LABEL_17;
        case 3:
          sub_1C44053E4();
          v68 = v71 + 3;
          v70 = &a11;
          goto LABEL_17;
        case 4:
          goto LABEL_18;
        case 5:
          v67 = 0xE300000000000000;
          v68 = 7368801;
          goto LABEL_18;
        default:
          sub_1C44053E4();
          v68 = v69 - 4;
          v70 = &v150;
LABEL_17:
          v67 = *(v70 - 32);
LABEL_18:
          sub_1C446C964(&v143[v66], v60, &unk_1EC0B84E0, qword_1C4F0D2D0);
          v73 = sub_1C4EF9CD8();
          if (sub_1C44157D4(v60, 1, v73) == 1)
          {
            sub_1C4420C3C(v60, &unk_1EC0B84E0, qword_1C4F0D2D0);
            v74 = 0;
            v75 = 0xE000000000000000;
          }

          else
          {
            v74 = sub_1C4EF9B18();
            v75 = v76;
            (*(*(v73 - 8) + 8))(v60, v73);
          }

          sub_1C4420C3C(v143, &qword_1EC0BA810, &qword_1C4F14738);
          v77 = v142;
          v144 = v142;
          v78 = *(v142 + 16);
          if (v78 >= *(v142 + 24) >> 1)
          {
            sub_1C459DBF8();
            v77 = v144;
          }

          *(v77 + 16) = v78 + 1;
          v79 = (v77 + 32 * v78);
          v79[4] = v68;
          v79[5] = v67;
          v79[6] = v74;
          v79[7] = v75;
          v44 = v132;
          v80 = 1 << *(v132 + 32);
          if (v52 >= v80)
          {
            goto LABEL_55;
          }

          v53 = v131;
          v81 = *(v131 + 8 * v59);
          if ((v81 & (1 << v52)) == 0)
          {
            goto LABEL_56;
          }

          v142 = v77;
          if (*(v132 + 36) != v141)
          {
            goto LABEL_57;
          }

          v82 = v81 & (-2 << v139);
          if (v82)
          {
            v80 = __clz(__rbit64(v82)) | v52 & 0x7FFFFFFFFFFFFFC0;
            v50 = v130;
            goto LABEL_33;
          }

          v83 = v59 << 6;
          v84 = v59 + 1;
          v85 = (v127 + 8 * v59);
          v50 = v130;
          break;
      }

      while (v84 < (v80 + 63) >> 6)
      {
        v87 = *v85++;
        v86 = v87;
        v83 += 64;
        ++v84;
        if (v87)
        {
          sub_1C440951C(v52, v141, v138 & 1);
          v80 = __clz(__rbit64(v86)) + v83;
          goto LABEL_33;
        }
      }

      sub_1C440951C(v52, v141, v138 & 1);
LABEL_33:
      v56 = 0;
      v57 = v140 + 1;
      v52 = v80;
      v55 = v128;
      if (v140 + 1 == v129)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
  }

  else
  {
LABEL_36:
    sub_1C44178F8();
    v92 = sub_1C4BA02EC(v88, v89, v90, v91);
    v147 = sub_1C456902C(qword_1EC0C0740, &qword_1C4F0D000);
    v144 = v92;
    sub_1C443548C();
    v93 = v119;
    swift_isUniquelyReferenced_nonNull_native();
    v149 = v93;
    sub_1C44053E4();
    sub_1C46601FC();
    v94 = v149;
    v144 = 0;
    v145 = 0xE000000000000000;
    if (v120)
    {
      v95 = 1702195828;
    }

    else
    {
      v95 = 0x65736C6166;
    }

    if (v120)
    {
      v96 = 0xE400000000000000;
    }

    else
    {
      v96 = 0xE500000000000000;
    }

    MEMORY[0x1C6940010](v95, v96);

    v147 = MEMORY[0x1E69E6158];
    sub_1C443548C();
    swift_isUniquelyReferenced_nonNull_native();
    v149 = v94;
    sub_1C43FC964();
    sub_1C46601FC();
    v97 = v149;
    if (v121)
    {
      v144 = v116;
      v145 = v121;
      v146 = v115;
      v147 = v114;
      v148 = v117;
      VersionInfo.GitInfo.fetchAll()();
      v99 = v98;
      v147 = sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
      v144 = v99;
      sub_1C443548C();
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C441EFC4();
      sub_1C43FC964();
      sub_1C46601FC();
      v97 = v149;
    }

    v100 = v122;
    v101 = *(v122 + 16);
    v102 = MEMORY[0x1E69E7CC0];
    if (v101)
    {
      v141 = v97;
      v144 = MEMORY[0x1E69E7CC0];
      sub_1C440476C();
      sub_1C44CD9C0();
      v102 = v144;
      v103 = *(v118 + 16);
      v104 = v100 + ((*(v118 + 80) + 32) & ~*(v118 + 80));
      v142 = *(v118 + 72);
      v143 = v103;
      v105 = (v118 + 8);
      do
      {
        v106 = v136;
        v107 = v137;
        (v143)(v136, v104, v137);
        v108 = sub_1C4F001C8();
        v110 = v109;
        (*v105)(v106, v107);
        v144 = v102;
        v111 = *(v102 + 16);
        if (v111 >= *(v102 + 24) >> 1)
        {
          sub_1C44CD9C0();
          v102 = v144;
        }

        *(v102 + 16) = v111 + 1;
        v112 = v102 + 16 * v111;
        *(v112 + 32) = v108;
        *(v112 + 40) = v110;
        v104 += v142;
        --v101;
      }

      while (v101);
    }

    v147 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    v144 = v102;
    sub_1C443548C();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C441EFC4();
    sub_1C43FC964();
    sub_1C46601FC();
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C4BA1184()
{
  sub_1C44867F4();
  v0 = sub_1C4F01E88();
  v1 = sub_1C4F01108();
  v2 = [v0 objectForInfoDictionaryKey_];

  if (v2)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C4420C3C(v7, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    return 0;
  }
}

uint64_t sub_1C4BA1290@<X0>(uint64_t a1@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_self() defaultManager];
  v3 = sub_1C4F01108();
  *&v16 = 0;
  v4 = [v2 attributesOfItemAtPath:v3 error:&v16];

  v5 = v16;
  if (!v4)
  {
    v12 = v16;
    v13 = sub_1C4EF97A8();

    swift_willThrow();
    goto LABEL_6;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_1C4BA91B0(&unk_1EDDF03F0, type metadata accessor for FileAttributeKey);
  v6 = sub_1C4F00ED8();
  v7 = v5;

  if (!v6)
  {
LABEL_6:
    v16 = 0u;
    v17 = 0u;
    goto LABEL_7;
  }

  sub_1C465CB00(*MEMORY[0x1E696A350], v6);

  if (!*(&v17 + 1))
  {
LABEL_7:
    sub_1C4420C3C(&v16, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    v11 = sub_1C4EF9CD8();
    v10 = a1;
    v9 = 1;
    goto LABEL_8;
  }

  v8 = sub_1C4EF9CD8();
  v9 = swift_dynamicCast() ^ 1;
  v10 = a1;
  v11 = v8;
LABEL_8:
  result = sub_1C440BAA8(v10, v9, 1, v11);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

IntelligencePlatformCore::VersionInfo::Component_optional __swiftcall VersionInfo.Component.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C4F025D8();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VersionInfo.Component.rawValue.getter()
{
  result = 0x6C6F6F547069;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      return result;
    case 5:
      result = 7368801;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

unint64_t sub_1C4BA161C@<X0>(unint64_t *a1@<X8>)
{
  result = VersionInfo.Component.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C4BA16F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4BA9108();

  return MEMORY[0x1EEE693C8](a1, a2, v4);
}

uint64_t sub_1C4BA1748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C4BA9108();

  return MEMORY[0x1EEE693D0](a1, a4, a2, a5, v10, a3);
}

uint64_t static VersionInfo.modificationDate(for:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  *a1;
  sub_1C4BA1290(a2);
}

void static VersionInfo.modificationDates.getter()
{
  sub_1C43FBD3C();
  v1 = *(*(sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v27 - v3;
  v5 = sub_1C4EF9CD8();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  v13 = (v11 - v12);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4410A24();
  sub_1C4BA7F70();
  v15 = sub_1C4F00F28();
  v16 = 0;
  v33 = (v8 + 32);
  v30 = v8;
  v31 = (v8 + 16);
  v27[5] = v8 + 40;
  v28 = (v8 + 8);
  v27[3] = "encePlatformLibrary";
  v27[4] = "igencePlatformInternals";
  v27[1] = "m.app/Intelligence Platform";
  v27[2] = "/usr/local/bin/iptool";
  v27[0] = "bundleShortVersionString";
  v29 = v4;
  while (1)
  {
    v34 = byte_1F43D9C00[v16 + 32];
    sub_1C4BA1290(v4);

    if (sub_1C44157D4(v4, 1, v5) == 1)
    {
      sub_1C4420C3C(v4, &unk_1EC0B84E0, qword_1C4F0D2D0);
      goto LABEL_13;
    }

    v32 = *v33;
    v32(v0, v4, v5);
    v17 = v13;
    (*v31)(v13, v0, v5);
    swift_isUniquelyReferenced_nonNull_native();
    v35 = v15;
    v18 = sub_1C457B5A0(v34);
    if (__OFADD__(v15[2], (v19 & 1) == 0))
    {
      break;
    }

    v20 = v18;
    v21 = v19;
    sub_1C456902C(&qword_1EC0C4220, &qword_1C4F58258);
    if (sub_1C4F02458())
    {
      v22 = sub_1C457B5A0(v34);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_17;
      }

      v20 = v22;
    }

    v15 = v35;
    if (v21)
    {
      v13 = v17;
      (*(v30 + 40))(v35[7] + *(v30 + 72) * v20, v17, v5);
    }

    else
    {
      v35[(v20 >> 6) + 8] |= 1 << v20;
      *(v15[6] + v20) = v34;
      v13 = v17;
      v32(v15[7] + *(v30 + 72) * v20, v17, v5);
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_16;
      }

      v15[2] = v26;
    }

    (*v28)(v0, v5);
    v4 = v29;
LABEL_13:
    if (++v16 == 6)
    {
      sub_1C43FE9F0();
      return;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  sub_1C4F029F8();
  __break(1u);
}

uint64_t VersionInfo.GitInfo.commitHash.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t VersionInfo.GitInfo.branch.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t static VersionInfo.GitInfo.WorkingTreeStatus.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_1C4F02938();
}

uint64_t sub_1C4BA1DD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E61656C63 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974726964 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4BA1EA0(char a1)
{
  if (a1)
  {
    return 0x7974726964;
  }

  else
  {
    return 0x6E61656C63;
  }
}

uint64_t sub_1C4BA1EC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000023 && 0x80000001C4FB46F0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4BA1F64(uint64_t a1)
{
  v2 = sub_1C4BA806C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BA1FA0(uint64_t a1)
{
  v2 = sub_1C4BA806C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4BA1FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BA1DD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4BA200C(uint64_t a1)
{
  v2 = sub_1C4BA7FC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BA2048(uint64_t a1)
{
  v2 = sub_1C4BA7FC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4BA2088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BA1EC8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4BA20B4(uint64_t a1)
{
  v2 = sub_1C4BA8018();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BA20F0(uint64_t a1)
{
  v2 = sub_1C4BA8018();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VersionInfo.GitInfo.WorkingTreeStatus.encode(to:)()
{
  sub_1C43FE96C();
  v38 = v1;
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0C4228, &qword_1C4F58260);
  v5 = sub_1C43FCDF8(v4);
  v36 = v6;
  v37 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = sub_1C456902C(&qword_1EC0C4230, &qword_1C4F58268);
  v13 = sub_1C43FCDF8(v12);
  v33 = v14;
  v34 = v13;
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v32 = &v31 - v18;
  v19 = sub_1C456902C(&qword_1EC0C4238, &qword_1C4F58270);
  sub_1C43FCDF8(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v31 - v25;
  v27 = v0[1];
  v35 = *v0;
  v28 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C4BA7FC4();
  sub_1C4F02BF8();
  if (v27)
  {
    sub_1C4BA8018();
    sub_1C4F02718();
    v29 = v37;
    sub_1C4F02798();
    (*(v36 + 8))(v11, v29);
  }

  else
  {
    sub_1C4BA806C();
    v30 = v32;
    sub_1C4F02718();
    (*(v33 + 8))(v30, v34);
  }

  (*(v21 + 8))(v26, v19);
  sub_1C43FBC80();
}

void VersionInfo.GitInfo.WorkingTreeStatus.init(from:)()
{
  sub_1C43FE96C();
  v66 = v0;
  v2 = v1;
  v62 = v3;
  v65 = sub_1C456902C(&qword_1EC0C4258, &qword_1C4F58278);
  sub_1C43FCDF8(v65);
  v63 = v4;
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v57 - v8;
  v10 = sub_1C456902C(&qword_1EC0C4260, &qword_1C4F58280);
  sub_1C43FCDF8(v10);
  v61 = v11;
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - v15;
  v17 = sub_1C456902C(&qword_1EC0C4268, &unk_1C4F58288);
  sub_1C43FCDF8(v17);
  v64 = v18;
  v20 = *(v19 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  v22 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C4BA7FC4();
  v23 = v66;
  sub_1C4F02BC8();
  if (v23)
  {
    goto LABEL_8;
  }

  v58 = v10;
  v59 = v16;
  v66 = v9;
  v24 = v65;
  v25 = sub_1C4F026E8();
  sub_1C4570934(v25, 0);
  v60 = v2;
  if (v27 == v28 >> 1)
  {
LABEL_7:
    v37 = sub_1C4F022E8();
    swift_allocError();
    v39 = v38;
    v40 = *(sub_1C456902C(&qword_1EC0B7410, &qword_1C4F06F90) + 48);
    *v39 = &type metadata for VersionInfo.GitInfo.WorkingTreeStatus;
    sub_1C4F025F8();
    sub_1C4F022D8();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = *(v64 + 8);
    v42 = sub_1C440E2DC();
    v43(v42);
    v2 = v60;
LABEL_8:
    v44 = v2;
LABEL_9:
    sub_1C440962C(v44);
    sub_1C43FBC80();
    return;
  }

  if (v27 < (v28 >> 1))
  {
    v67 = *(v26 + v27);
    v29 = sub_1C4570928(v27 + 1);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    v34 = v63;
    if (v31 == v33 >> 1)
    {
      if (v67)
      {
        sub_1C4BA8018();
        v35 = v66;
        sub_1C4414FB4();
        v36 = v64;
        v61 = v29;
        v50 = sub_1C4F02678();
        v52 = v51;
        swift_unknownObjectRelease();
        (*(v34 + 8))(v35, v24);
        v53 = *(v36 + 8);
        v54 = sub_1C440E2DC();
        v55(v54);
      }

      else
      {
        sub_1C4BA806C();
        v45 = v59;
        sub_1C4414FB4();
        v46 = v64;
        swift_unknownObjectRelease();
        (*(v61 + 8))(v45, v58);
        v47 = *(v46 + 8);
        v48 = sub_1C440E2DC();
        v49(v48);
        v50 = 0;
        v52 = 0;
      }

      v44 = v60;
      v56 = v62;
      *v62 = v50;
      v56[1] = v52;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t VersionInfo.GitInfo.workingTreeStatus.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

BOOL VersionInfo.GitInfo.isClean.getter()
{
  v1 = *(v0 + 40);

  if (!v1)
  {
  }

  return v1 == 0;
}

void VersionInfo.GitInfo.fetchAll()()
{
  sub_1C43FBD3C();
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[5];
  v6 = MEMORY[0x1E69E6158];
  if (v5)
  {
    v7 = v0[4];
    sub_1C456902C(&qword_1EC0B9260, &qword_1C4F0ED88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    *(inited + 32) = 0x7974726964;
    *(inited + 40) = 0xE500000000000000;
    sub_1C456902C(&qword_1EC0B8530, qword_1C4F0CF70);
    *(swift_initStackObject() + 16) = xmmword_1C4F0D130;
    sub_1C43FBDF0();
    v9[4] = 0xD000000000000023;
    v9[5] = v10;
    v9[6] = v7;
    v9[7] = v5;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    *(inited + 48) = sub_1C4F00F28();
    sub_1C456902C(qword_1EC0C0740, &qword_1C4F0D000);
    v11 = sub_1C4F00F28();
    v12 = sub_1C456902C(&qword_1EC0BDD98, &qword_1C4F32040);
  }

  else
  {
    v18[1] = 0xE500000000000000;
    v11 = 0x6E61656C63;
    v12 = MEMORY[0x1E69E6158];
  }

  v18[3] = v12;
  v18[0] = v11;
  sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1C4F0D480;
  *(v13 + 32) = 0x614874696D6D6F63;
  *(v13 + 40) = 0xEA00000000006873;
  *(v13 + 48) = v2;
  *(v13 + 56) = v1;
  *(v13 + 72) = v6;
  *(v13 + 80) = 0x68636E617262;
  *(v13 + 88) = 0xE600000000000000;
  *(v13 + 96) = v4;
  *(v13 + 104) = v3;
  sub_1C43FBDF0();
  v14[15] = v6;
  v14[16] = 0xD000000000000011;
  v14[17] = v15;
  sub_1C442B870(v18, v13 + 144);
  *(v13 + 176) = 0x6E61656C437369;
  *(v13 + 184) = 0xE700000000000000;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v5)
  {
    v16 = 0xE500000000000000;
    v17 = 0x65736C6166;
  }

  else
  {

    v16 = 0xE400000000000000;
    v17 = 1702195828;
  }

  MEMORY[0x1C6940010](v17, v16);

  *(v13 + 216) = v6;
  *(v13 + 192) = 0;
  *(v13 + 200) = 0xE000000000000000;
  sub_1C4F00F28();
  sub_1C440962C(v18);
  sub_1C43FE9F0();
}

uint64_t sub_1C4BA2C18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614874696D6D6F63 && a2 == 0xEA00000000006873;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x68636E617262 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x80000001C4FB4720 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C4BA2D34(char a1)
{
  if (!a1)
  {
    return 0x614874696D6D6F63;
  }

  if (a1 == 1)
  {
    return 0x68636E617262;
  }

  return 0xD000000000000011;
}

uint64_t sub_1C4BA2DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BA2C18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4BA2DD8(uint64_t a1)
{
  v2 = sub_1C4BA80C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BA2E14(uint64_t a1)
{
  v2 = sub_1C4BA80C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VersionInfo.GitInfo.encode(to:)()
{
  sub_1C43FE96C();
  v25 = v1;
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0C4270, &qword_1C4F58298);
  sub_1C43FCDF8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v13 = *v0;
  v12 = v0[1];
  v14 = v0[2];
  v23 = v0[3];
  v24 = v14;
  v15 = v0[4];
  v21 = v0[5];
  v22 = v15;
  v16 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C4BA80C0();
  sub_1C4F02BF8();
  LOBYTE(v26) = 0;
  v17 = v25;
  sub_1C4F02798();
  if (!v17)
  {
    v18 = v21;
    v19 = v22;
    LOBYTE(v26) = 1;
    sub_1C4F02798();
    v26 = v19;
    v27 = v18;
    sub_1C4BA8114();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F027E8();
  }

  (*(v6 + 8))(v11, v4);
  sub_1C43FBC80();
}

void VersionInfo.GitInfo.init(from:)()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C4288, &qword_1C4F582A0);
  sub_1C43FCDF8(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C4BA80C0();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v2);
  }

  else
  {
    v10 = sub_1C4409E6C();
    v17 = v11;
    LOBYTE(v18) = 1;
    v15 = sub_1C4409E6C();
    v16 = v12;
    sub_1C4BA8168();
    sub_1C4F026C8();
    v13 = sub_1C43FBF04();
    v14(v13);
    *v4 = v10;
    v4[1] = v17;
    v4[2] = v15;
    v4[3] = v16;
    v4[4] = v18;
    v4[5] = v19;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C(v2);
  }

  sub_1C43FBC80();
}

void static VersionInfo.gitInfo.getter(uint64_t a1@<X8>)
{
  sub_1C4BA32C0(v6);
  v2 = *(&v6[0] + 1);
  if (*(&v6[0] + 1) == 1)
  {
    v3 = 0;
    v2 = 0;
    v4 = 0uLL;
    v5 = 0uLL;
  }

  else
  {
    v4 = v6[1];
    v5 = v6[2];
    v3 = *&v6[0];
  }

  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
}

void sub_1C4BA32C0(_OWORD *a1@<X8>)
{
  v3 = sub_1C4EF98F8();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBD08();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4410A24();
  sub_1C44867F4();
  v13 = sub_1C4F01E88();
  v14 = sub_1C4486838(0xD000000000000014, 0x80000001C4FB4760, 0x7473696C70, 0xE500000000000000, v13);

  if (v14)
  {
    sub_1C4EF98C8();

    (*(v6 + 32))(v1, v11, v3);
    v19 = sub_1C4EF9938();
    v21 = v20;
    v22 = objc_autoreleasePoolPush();
    sub_1C4BA46D4(a1);
    objc_autoreleasePoolPop(v22);
    sub_1C4434000(v19, v21);
    (*(v6 + 8))(v1, v3);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v15 = sub_1C4F00978();
    sub_1C442B738(v15, qword_1EDDFECB8);
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CD8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1C43F8000, v16, v17, "VersionInfo+AutoFill.plist not found!", v18, 2u);
      MEMORY[0x1C6942830](v18, -1, -1);
    }

    *a1 = xmmword_1C4F0D7C0;
    a1[1] = 0u;
    a1[2] = 0u;
  }
}

void static VersionInfo.featureFlags.getter()
{
  sub_1C43FBD3C();
  v1 = sub_1C4F001E8();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBD08();
  v22 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4410A24();
  v10 = sub_1C4F001B8();
  v11 = 0;
  v12 = *(v10 + 16);
  v21 = (v4 + 32);
  v23 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v12 == v11)
    {

      v25 = v23;

      sub_1C4BA0124(&v25);

      sub_1C43FE9F0();
      return;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v14 = *(v4 + 72);
    (*(v4 + 16))(v0, v10 + v13 + v14 * v11, v1);
    if (sub_1C4F001D8())
    {
      v20 = *v21;
      (*v21)(v22, v0, v1);
      v15 = v23;
      v25 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = *(v23 + 16);
        sub_1C459E780();
        v15 = v25;
      }

      v17 = *(v15 + 16);
      v18 = v17 + 1;
      if (v17 >= *(v15 + 24) >> 1)
      {
        v24 = v17 + 1;
        v19 = *(v15 + 16);
        sub_1C459E780();
        v18 = v24;
        v17 = v19;
        v15 = v25;
      }

      ++v11;
      *(v15 + 16) = v18;
      v23 = v15;
      v20(v15 + v13 + v17 * v14, v22, v1);
    }

    else
    {
      (*(v4 + 8))(v0, v1);
      ++v11;
    }
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_1C4BA3844()
{
  v0 = sub_1C4F001C8();
  v2 = v1;
  if (v0 == sub_1C4F001C8() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1C4F02938();
  }

  return v5 & 1;
}

uint64_t VersionInfo.AllInfo.bundleVersion.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t VersionInfo.AllInfo.bundleShortVersionString.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t VersionInfo.AllInfo.friendlyName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t VersionInfo.AllInfo.gitInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1C4BA81BC(v2, v3);
}

void VersionInfo.AllInfo.init()(uint64_t a1@<X8>)
{
  sub_1C441CE34();
  *a1 = sub_1C4BA1184();
  *(a1 + 8) = v2;
  *(a1 + 16) = sub_1C4BA1184();
  *(a1 + 24) = v3;
  sub_1C442BFBC();
  *(a1 + 32) = sub_1C4BA1184();
  *(a1 + 40) = v4;
  static VersionInfo.modificationDates.getter();
  sub_1C465DFB8(v5, v6, v7, v8, v9, v10, v11, v12, v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24, v25, v26, v27, vars0, vars8);
  v14 = v13;

  *(a1 + 48) = v14;
  *(a1 + 56) = 0;
  sub_1C4BA32C0(&v20);
  v15 = v21;
  if (v21 == 1)
  {
    v16 = 0;
    v17 = 0;
    v15 = 0uLL;
    v18 = 0uLL;
  }

  else
  {
    v16 = v20;
    v18 = v22;
    v17 = v23;
  }

  *(a1 + 64) = v16;
  *(a1 + 72) = v15;
  *(a1 + 88) = v18;
  *(a1 + 104) = v17;
  static VersionInfo.featureFlags.getter();
  *(a1 + 112) = v19;
}

uint64_t sub_1C4BA3A6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6556656C646E7562 && a2 == 0xED00006E6F697372;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x80000001C4FB44C0 == a2;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x796C646E65697266 && a2 == 0xEC000000656D614ELL;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001C4FB44A0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x67756265447369 && a2 == 0xE700000000000000;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F666E49746967 && a2 == 0xE700000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x4665727574616566 && a2 == 0xEC0000007367616CLL)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4BA3CB8(char a1)
{
  result = 0x6556656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0x796C646E65697266;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x67756265447369;
      break;
    case 5:
      result = 0x6F666E49746967;
      break;
    case 6:
      result = 0x4665727574616566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4BA3DAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4BA3E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BA3A6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4BA3E28(uint64_t a1)
{
  v2 = sub_1C4BA820C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BA3E64(uint64_t a1)
{
  v2 = sub_1C4BA820C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VersionInfo.AllInfo.encode(to:)()
{
  sub_1C43FE96C();
  v39 = v1;
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0C4298, &qword_1C4F582A8);
  sub_1C43FCDF8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = *v0;
  v13 = v0[1];
  v14 = v0[2];
  v37 = v0[3];
  v38 = v14;
  v15 = v0[4];
  v35 = v0[5];
  v36 = v15;
  v16 = v0[6];
  v46 = *(v0 + 56);
  v17 = v0[9];
  v28 = v0[8];
  v29 = v17;
  v18 = v0[10];
  v33 = v0[11];
  v34 = v16;
  v19 = v0[13];
  v32 = v0[12];
  v30 = v18;
  v31 = v19;
  v20 = v0[14];
  v21 = v3[3];
  v22 = v3[4];
  v23 = v3;
  v25 = v24;
  sub_1C4409678(v23, v21);
  sub_1C4BA820C();
  sub_1C4F02BF8();
  LOBYTE(v40) = 0;
  v26 = v39;
  sub_1C4F02738();
  if (!v26)
  {
    v27 = v34;
    LOBYTE(v40) = 1;
    sub_1C440FCC4();
    sub_1C4F02738();
    LOBYTE(v40) = 2;
    sub_1C440FCC4();
    sub_1C4F02738();
    v40 = v27;
    sub_1C456902C(&qword_1EC0C42A8, &qword_1C4F582B0);
    sub_1C4BA8260();
    sub_1C4433878();
    sub_1C440FCC4();
    sub_1C4F027E8();
    LOBYTE(v40) = 4;
    sub_1C440FCC4();
    sub_1C4F027A8();
    v40 = v28;
    v41 = v29;
    v42 = v30;
    v43 = v33;
    v44 = v32;
    v45 = v31;
    sub_1C4BA81BC(v28, v29);
    sub_1C4BA8378();
    sub_1C4433878();
    sub_1C440FCC4();
    sub_1C4F02778();
    sub_1C4BA83CC(v40, v41);
    v40 = v20;
    sub_1C456902C(&qword_1EC0C42C8, &qword_1C4F582B8);
    sub_1C4BA8588(&qword_1EC0C42D0, &qword_1EDDFA170);
    sub_1C4433878();
    sub_1C440FCC4();
    sub_1C4F027E8();
  }

  (*(v6 + 8))(v11, v25);
  sub_1C43FBC80();
}

void VersionInfo.AllInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v12 = v11;
  v14 = v13;
  v38 = sub_1C456902C(&qword_1EC0C42D8, &qword_1C4F582C0);
  sub_1C43FCDF8(v38);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v18 = v12[4];
  sub_1C4409678(v12, v12[3]);
  sub_1C4BA820C();
  sub_1C4F02BC8();
  if (v10)
  {
    sub_1C440962C(v12);
  }

  else
  {
    sub_1C440389C();
    v30 = sub_1C4F02618();
    v34 = v19;
    sub_1C440389C();
    v20 = sub_1C4F02618();
    v33 = v21;
    LOBYTE(v40) = 2;
    sub_1C440389C();
    v29 = sub_1C4F02618();
    v31 = v22;
    sub_1C456902C(&qword_1EC0C42A8, &qword_1C4F582B0);
    sub_1C4BA841C();
    sub_1C440389C();
    sub_1C4F026C8();
    v28 = v40;
    LOBYTE(v40) = 4;
    sub_1C440389C();
    v27 = sub_1C4F02688();
    LOBYTE(v39[0]) = 5;
    sub_1C4BA8534();
    sub_1C440389C();
    sub_1C4F02658();
    v25 = v40;
    v26 = v41;
    v32 = v42;
    v36 = v44;
    v37 = v43;
    v35 = v45;
    sub_1C456902C(&qword_1EC0C42C8, &qword_1C4F582B8);
    v55 = 6;
    sub_1C4BA8588(&qword_1EC0C42F8, &qword_1EDDFF9A8);
    sub_1C440389C();
    sub_1C4F026C8();
    v23 = sub_1C4412694();
    v24(v23);
    v39[0] = v30;
    v39[1] = v34;
    v39[2] = v20;
    v39[3] = v33;
    v39[4] = v29;
    v39[5] = v31;
    v39[6] = v28;
    LOBYTE(v39[7]) = v27 & 1;
    v39[8] = v25;
    v39[9] = v26;
    v39[10] = v32;
    v39[11] = v37;
    v39[12] = v36;
    v39[13] = v35;
    v39[14] = a10;
    memcpy(v14, v39, 0x78uLL);
    sub_1C4BA8614(v39, &v40);
    sub_1C440962C(v12);
    v40 = v30;
    v41 = v34;
    v42 = v20;
    v43 = v33;
    v44 = v29;
    v45 = v31;
    v46 = v28;
    v47 = v27 & 1;
    v48 = v25;
    v49 = v26;
    v50 = v32;
    v51 = v37;
    v52 = v36;
    v53 = v35;
    v54 = a10;
    sub_1C494BFA0(&v40);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4BA46D4@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_1C4EF96B8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1C4EF96A8();
  sub_1C4BA915C();
  sub_1C4EF9698();
  if (v1)
  {

    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDDFECB8);
    v7 = sub_1C4F00968();
    v8 = sub_1C4F01CD8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      MEMORY[0x1C6942830](v9, -1, -1);
    }

    *a1 = xmmword_1C4F0D7C0;
    a1[1] = 0u;
    a1[2] = 0u;
  }

  else
  {

    *a1 = v11;
    a1[1] = v12;
    a1[2] = v13;
  }

  return result;
}

uint64_t sub_1C4BA4868(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F666E49746967 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4BA48F8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0C43B8, &qword_1C4F58CB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4BA92BC();
  sub_1C4F02BC8();
  if (!v2)
  {
    sub_1C4BA8534();
    sub_1C4F02658();
    (*(v6 + 8))(v9, v5);
    v11 = v14[1];
    v12 = v14[2];
    *a2 = v14[0];
    a2[1] = v11;
    a2[2] = v12;
  }

  return sub_1C440962C(a1);
}

uint64_t sub_1C4BA4A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BA4868(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4BA4AA0(uint64_t a1)
{
  v2 = sub_1C4BA92BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BA4ADC(uint64_t a1)
{
  v2 = sub_1C4BA92BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4BA4B30(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_1C4F02828();
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
        sub_1C4F001E8();
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1C4F001E8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C4BA4F80(v8, v9, a1, v4);
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
    return sub_1C4BA4C60(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C4BA4C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C4F001E8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v41 - v16;
  v43 = a2;
  if (a3 != a2)
  {
    v18 = v15;
    v19 = *a4;
    v21 = *(v14 + 16);
    v20 = v14 + 16;
    v22 = *(v20 + 56);
    v52 = (v20 - 8);
    v53 = v21;
    v54 = v20;
    v49 = (v20 + 16);
    v50 = v19;
    v23 = v19 + v22 * (a3 - 1);
    v48 = -v22;
    v24 = a1 - a3;
    v42 = v22;
    v25 = v19 + v22 * a3;
    while (2)
    {
      v46 = v23;
      v47 = a3;
      v44 = v25;
      v45 = v24;
      v26 = v23;
      while (1)
      {
        v27 = v53;
        v53(v17, v25, v8);
        v27(v18, v26, v8);
        v28 = sub_1C4F001C8();
        v29 = v17;
        v30 = v18;
        v32 = v31;
        if (v28 == sub_1C4F001C8() && v32 == v33)
        {
          break;
        }

        v35 = sub_1C4F02938();

        v36 = *v52;
        (*v52)(v30, v8);
        result = (v36)(v29, v8);
        v18 = v30;
        v17 = v29;
        if (v35)
        {
          if (!v50)
          {
            __break(1u);
            return result;
          }

          v37 = *v49;
          v38 = v51;
          (*v49)(v51, v25, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v37)(v26, v38, v8);
          v26 += v48;
          v25 += v48;
          if (!__CFADD__(v24++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v40 = *v52;
      (*v52)(v30, v8);
      result = (v40)(v29, v8);
      v18 = v30;
      v17 = v29;
LABEL_14:
      a3 = v47 + 1;
      v23 = v46 + v42;
      v24 = v45 - 1;
      v25 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C4BA4F80(uint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v147 = a1;
  v8 = sub_1C4F001E8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v152 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v165 = &v143 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v143 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v161 = &v143 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v160 = &v143 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v143 - v23;
  v158 = v24;
  v159 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v170 = *v147;
    if (!v170)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v166 = v25;
  v143 = a4;
  v29 = 0;
  v170 = v24 + 16;
  v168 = (v24 + 32);
  v169 = (v24 + 8);
  v30 = MEMORY[0x1E69E7CC0];
  v162 = v8;
  v154 = v16;
  v144 = v26;
  v146 = &v143 - v23;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v149 = v29;
    if (v29 + 1 < v28)
    {
      v164 = v28;
      v145 = v30;
      v33 = v27;
      v34 = *v159;
      v35 = *(v24 + 72);
      v36 = v26;
      v157 = v29 + 1;
      v37 = v29;
      v38 = &v34[v35 * (v29 + 1)];
      v39 = *(v24 + 16);
      v39(v33, v38, v8);
      v40 = &v34[v35 * v37];
      v41 = v146;
      v156 = v39;
      v39(v36, v40, v8);
      LODWORD(v163) = sub_1C4BA3844();
      if (v5)
      {
        v142 = *v169;
        (*v169)(v36, v8);
        (v142)(v41, v8);
LABEL_124:

        return;
      }

      v148 = 0;
      v30 = v169;
      v42 = *v169;
      (*v169)(v36, v8);
      v155 = v42;
      (v42)(v41, v8);
      v43 = v149 + 2;
      v44 = &v34[v35 * (v149 + 2)];
      v32 = v157;
      v45 = v35;
      v167 = v35;
      v46 = v164;
      while (1)
      {
        v47 = v43;
        if (v32 + 1 >= v46)
        {
          break;
        }

        v48 = v32;
        v49 = v162;
        v5 = v156;
        (v156)(v160, v44, v162);
        v5(v161, v38, v49);
        v50 = sub_1C4F001C8();
        v52 = v51;
        if (v50 == sub_1C4F001C8() && v52 == v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = sub_1C4F02938();
        }

        v56 = v162;
        v30 = v155;
        (v155)(v161, v162);
        (v30)(v160, v56);
        v45 = v167;
        v44 += v167;
        v38 += v167;
        v32 = v48 + 1;
        v43 = v47 + 1;
        v46 = v164;
        if ((v163 ^ v55))
        {
          goto LABEL_16;
        }
      }

      v32 = v46;
LABEL_16:
      if (v163)
      {
        v31 = v149;
        if (v32 < v149)
        {
          goto LABEL_149;
        }

        v5 = v148;
        if (v149 >= v32)
        {
          v24 = v158;
          v30 = v145;
          v8 = v162;
          v16 = v154;
          goto LABEL_39;
        }

        if (v46 >= v47)
        {
          v57 = v47;
        }

        else
        {
          v57 = v46;
        }

        v58 = v45 * (v57 - 1);
        v59 = v45 * v57;
        v60 = v149;
        v61 = v149 * v45;
        v62 = v32;
        do
        {
          if (v60 != --v62)
          {
            v63 = *v159;
            if (!*v159)
            {
              goto LABEL_154;
            }

            v64 = v162;
            v164 = *v168;
            v164(v152, &v63[v61], v162);
            v65 = v61 < v58 || &v63[v61] >= &v63[v59];
            if (v65)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v61 != v58)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v164(&v63[v58], v152, v64);
            v5 = v148;
            v45 = v167;
          }

          ++v60;
          v58 -= v45;
          v59 -= v45;
          v61 += v45;
        }

        while (v60 < v62);
      }

      else
      {
        v5 = v148;
      }

      v24 = v158;
      v30 = v145;
      v8 = v162;
      v16 = v154;
      v31 = v149;
    }

LABEL_39:
    v66 = v159[1];
    if (v32 < v66)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_146;
      }

      if (v32 - v31 < v143)
      {
        break;
      }
    }

LABEL_62:
    if (v32 < v31)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v132 = *(v30 + 2);
      sub_1C458A358();
      v30 = v133;
    }

    v89 = *(v30 + 2);
    v88 = *(v30 + 3);
    v90 = v89 + 1;
    v157 = v32;
    if (v89 >= v88 >> 1)
    {
      sub_1C458A358();
      v30 = v134;
    }

    *(v30 + 2) = v90;
    v91 = v30 + 32;
    v92 = &v30[16 * v89 + 32];
    v93 = v157;
    *v92 = v149;
    *(v92 + 1) = v93;
    v167 = *v147;
    if (!v167)
    {
      goto LABEL_155;
    }

    if (v89)
    {
      while (1)
      {
        v94 = v90 - 1;
        v95 = &v91[16 * v90 - 16];
        v96 = &v30[16 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v97 = *(v30 + 4);
          v98 = *(v30 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_82:
          if (v100)
          {
            goto LABEL_132;
          }

          v112 = *v96;
          v111 = *(v96 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_135;
          }

          v116 = *(v95 + 1);
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_140;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v90 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v90 < 2)
        {
          goto LABEL_134;
        }

        v119 = *v96;
        v118 = *(v96 + 1);
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_97:
        if (v115)
        {
          goto LABEL_137;
        }

        v121 = *v95;
        v120 = *(v95 + 1);
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_139;
        }

        if (v122 < v114)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v94 - 1 >= v90)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
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
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v159)
        {
          goto LABEL_152;
        }

        v126 = v30;
        v127 = &v91[16 * v94 - 16];
        v30 = *v127;
        v128 = &v91[16 * v94];
        v129 = *(v128 + 1);
        sub_1C4BA5B3C(&(*v159)[*(v158 + 72) * *v127], &(*v159)[*(v158 + 72) * *v128], &(*v159)[*(v158 + 72) * v129], v167);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v129 < v30)
        {
          goto LABEL_127;
        }

        v130 = *(v126 + 2);
        if (v94 > v130)
        {
          goto LABEL_128;
        }

        *v127 = v30;
        *(v127 + 1) = v129;
        if (v94 >= v130)
        {
          goto LABEL_129;
        }

        v90 = v130 - 1;
        sub_1C461950C(v128 + 16, v130 - 1 - v94, &v91[16 * v94]);
        v30 = v126;
        *(v126 + 2) = v130 - 1;
        v131 = v130 > 2;
        v16 = v154;
        if (!v131)
        {
          goto LABEL_111;
        }
      }

      v101 = &v91[16 * v90];
      v102 = *(v101 - 8);
      v103 = *(v101 - 7);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_130;
      }

      v106 = *(v101 - 6);
      v105 = *(v101 - 5);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_131;
      }

      v108 = *(v96 + 1);
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_133;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_136;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = *(v95 + 1);
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_144;
        }

        if (v99 < v125)
        {
          v94 = v90 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v24 = v158;
    v28 = v159[1];
    v29 = v157;
    v8 = v162;
    v26 = v144;
    v27 = v146;
    if (v157 >= v28)
    {
      goto LABEL_114;
    }
  }

  v67 = (v31 + v143);
  if (__OFADD__(v31, v143))
  {
    goto LABEL_147;
  }

  if (v67 >= v66)
  {
    v67 = v159[1];
  }

  if (v67 < v31)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v30 = sub_1C46194F4(v30);
LABEL_116:
    v135 = v30 + 16;
    v136 = *(v30 + 2);
    while (v136 >= 2)
    {
      if (!*v159)
      {
        goto LABEL_153;
      }

      v137 = v30;
      v30 += 16 * v136;
      v138 = *v30;
      v139 = &v135[2 * v136];
      v140 = *(v139 + 1);
      sub_1C4BA5B3C(&(*v159)[*(v158 + 72) * *v30], &(*v159)[*(v158 + 72) * *v139], &(*v159)[*(v158 + 72) * v140], v170);
      if (v5)
      {
        break;
      }

      if (v140 < v138)
      {
        goto LABEL_141;
      }

      if (v136 - 2 >= *v135)
      {
        goto LABEL_142;
      }

      *v30 = v138;
      *(v30 + 1) = v140;
      v141 = *v135 - v136;
      if (*v135 < v136)
      {
        goto LABEL_143;
      }

      v136 = *v135 - 1;
      sub_1C461950C(v139 + 16, v141, v139);
      *v135 = v136;
      v30 = v137;
    }

    goto LABEL_124;
  }

  if (v32 == v67)
  {
    goto LABEL_62;
  }

  v145 = v30;
  v148 = v5;
  v68 = *v159;
  v69 = *(v24 + 72);
  v167 = *(v24 + 16);
  v70 = &v68[v69 * (v32 - 1)];
  v163 = -v69;
  v164 = v68;
  v71 = (v31 - v32);
  v150 = v69;
  v151 = v67;
  v72 = &v68[v32 * v69];
  v73 = v166;
LABEL_48:
  v156 = v70;
  v157 = v32;
  v153 = v72;
  v155 = v71;
  while (1)
  {
    v74 = v167;
    (v167)(v73, v72, v8);
    v74(v16, v70, v8);
    v75 = v16;
    v76 = sub_1C4F001C8();
    v77 = v8;
    v79 = v78;
    if (v76 == sub_1C4F001C8() && v79 == v80)
    {

      v87 = *v169;
      (*v169)(v75, v77);
      (v87)(v73, v77);
      v8 = v77;
      v16 = v75;
      goto LABEL_60;
    }

    v82 = v73;
    v83 = sub_1C4F02938();

    v84 = *v169;
    (*v169)(v75, v77);
    (v84)(v82, v77);
    v8 = v77;
    v16 = v75;
    if ((v83 & 1) == 0)
    {
      v73 = v166;
LABEL_60:
      v32 = v157 + 1;
      v70 = &v156[v150];
      v71 = v155 - 1;
      v72 = &v153[v150];
      if (v157 + 1 == v151)
      {
        v32 = v151;
        v5 = v148;
        v30 = v145;
        v31 = v149;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v164)
    {
      break;
    }

    v85 = *v168;
    v86 = v165;
    (*v168)(v165, v72, v77);
    swift_arrayInitWithTakeFrontToBack();
    v85(v70, v86, v77);
    v70 += v163;
    v72 += v163;
    v65 = __CFADD__(v71++, 1);
    v73 = v166;
    if (v65)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

uint64_t sub_1C4BA5B3C(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1C4F001E8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v71 = &v65 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v65 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v22 = a2 - a1 == 0x8000000000000000 && v21 == -1;
  if (v22)
  {
    goto LABEL_72;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_73;
  }

  v25 = (a2 - a1) / v21;
  v78 = a1;
  v77 = a4;
  v73 = (v18 + 8);
  v74 = (v18 + 16);
  v26 = v23 / v21;
  if (v25 < v23 / v21)
  {
    v69 = &v65 - v19;
    v71 = v16;
    sub_1C459CA94(a1, (a2 - a1) / v21, a4);
    v72 = (a4 + v25 * v21);
    v76 = v72;
    v27 = a4;
    v28 = v21;
    v68 = v8;
    v70 = a3;
    while (1)
    {
      if (v27 >= v72 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v30 = a1;
      v31 = *v74;
      v32 = v69;
      v33 = a2;
      (*v74)(v69, a2, v8);
      v75 = v27;
      v34 = v71;
      v31();
      v35 = sub_1C4F001C8();
      v37 = v36;
      if (v35 == sub_1C4F001C8() && v37 == v38)
      {

        v45 = *v73;
        (*v73)(v34, v8);
        v45(v32, v8);
      }

      else
      {
        v40 = sub_1C4F02938();

        v41 = *v73;
        (*v73)(v34, v8);
        v41(v32, v8);
        if (v40)
        {
          v42 = v33;
          a2 = v33 + v28;
          v43 = v30;
          if (v30 < v33 || v30 >= a2)
          {
            v8 = v68;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v70;
          }

          else
          {
            a3 = v70;
            v8 = v68;
            if (v30 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v75;
          goto LABEL_40;
        }
      }

      v27 = v75 + v28;
      v43 = v30;
      v46 = v30 < v75 || v30 >= v27;
      a2 = v33;
      if (v46)
      {
        v8 = v68;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v70;
      }

      else
      {
        a3 = v70;
        v8 = v68;
        if (v30 != v75)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v77 = v27;
LABEL_40:
      a1 = v43 + v28;
      v78 = a1;
    }
  }

  sub_1C459CA94(a2, v23 / v21, a4);
  v75 = a4;
  v47 = a4 + v26 * v21;
  v48 = -v21;
  v49 = v47;
  v69 = -v21;
LABEL_42:
  v70 = a2;
  v68 = a2 + v48;
  v50 = a3;
  v66 = v49;
  while (1)
  {
    if (v47 <= v75)
    {
      v78 = v70;
      v76 = v49;
      goto LABEL_70;
    }

    if (v70 <= a1)
    {
      break;
    }

    v67 = v49;
    v51 = v47 + v48;
    v52 = *v74;
    (*v74)(v71, v47 + v48, v8);
    (v52)(v72, v68, v8);
    v53 = sub_1C4F001C8();
    v55 = v54;
    if (v53 == sub_1C4F001C8() && v55 == v56)
    {
      v58 = 0;
    }

    else
    {
      v58 = sub_1C4F02938();
    }

    v59 = (v50 + v69);
    v60 = *v73;
    (*v73)(v72, v8);
    v60(v71, v8);
    if (v58)
    {
      v62 = v50 < v70 || v59 >= v70;
      a3 = v59;
      if (v62)
      {
        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v49 = v67;
        v48 = v69;
      }

      else
      {
        v64 = v67;
        v63 = v68;
        v49 = v67;
        v22 = v50 == v70;
        a2 = v68;
        v48 = v69;
        if (!v22)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v63;
          v49 = v64;
        }
      }

      goto LABEL_42;
    }

    if (v50 < v47 || v59 >= v47)
    {
      swift_arrayInitWithTakeFrontToBack();
      v50 = v59;
      v47 = v51;
      v49 = v51;
      v48 = v69;
    }

    else
    {
      v49 = v51;
      v22 = v47 == v50;
      v50 = v59;
      v47 = v51;
      v48 = v69;
      if (!v22)
      {
        swift_arrayInitWithTakeBackToFront();
        v50 = v59;
        v47 = v51;
        v49 = v51;
      }
    }
  }

  v78 = v70;
  v76 = v66;
LABEL_70:
  sub_1C4BEB42C(&v78, &v77, &v76);
  return 1;
}

void sub_1C4BA6144(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 64); ; i += 5)
  {
    if (v27 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1C4F029F8();
      __break(1u);
      goto LABEL_23;
    }

    v6 = *i;
    v30 = *(i - 1);
    v8 = *(i - 4);
    v7 = *(i - 3);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    if (!v7)
    {
      goto LABEL_17;
    }

    v9 = *a3;
    v11 = sub_1C445FAA8(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C456902C(&qword_1EC0C4388, &unk_1C4F58BC0);
      sub_1C4F02468();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    v21 = v19[7] + 24 * v11;
    *v21 = v30;
    *(v21 + 16) = v6;
    v22 = v19[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_21;
    }

    v19[2] = v24;
    ++v4;
    a2 = 1;
  }

  sub_1C46792AC(v14);
  v16 = *a3;
  v17 = sub_1C445FAA8(v8, v7);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_22;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v25 = swift_allocError();
  swift_willThrow();
  v26 = v25;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001BLL, 0x80000001C4F8C0A0);
  sub_1C4F02438();
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  sub_1C4F024A8();
  __break(1u);
}

void sub_1C4BA6464(uint64_t a1, char a2, uint64_t *a3)
{
  v47 = a3;
  v6 = sub_1C4EFF428();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0B8FD0, &qword_1C4F0EAB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v39 - v14;
  v44 = *(a1 + 16);
  if (!v44)
  {
LABEL_13:

    return;
  }

  v39 = v3;
  v40 = v6;
  v15 = 0;
  v43 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v16 = *(v12 + 48);
  v41 = v7;
  v42 = v16;
  v46 = (v7 + 32);
  while (1)
  {
    if (v15 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C4F029F8();
      __break(1u);
      goto LABEL_22;
    }

    v17 = v13;
    v18 = v45;
    sub_1C446C964(v43 + *(v13 + 72) * v15, v45, &qword_1EC0B8FD0, &qword_1C4F0EAB0);
    v19 = *v46;
    (*v46)(v48, v18, v6);
    v20 = *(v18 + v42);
    v21 = *v47;
    sub_1C457B070();
    v24 = v23;
    v25 = v21[2];
    v26 = (v22 & 1) == 0;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_19;
    }

    v27 = v22;
    if (v21[3] < v25 + v26)
    {
      break;
    }

    if (a2)
    {
      if (v22)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C456902C(&qword_1EC0BF738, &unk_1C4F3A690);
      sub_1C4F02468();
      if (v27)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v32 = v48;
    v33 = *v47;
    *(*v47 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v6 = v40;
    v19((v33[6] + *(v41 + 72) * v24), v32, v40);
    *(v33[7] + 8 * v24) = v20;
    v34 = v33[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_20;
    }

    ++v15;
    v33[2] = v36;
    a2 = 1;
    v13 = v17;
    if (v44 == v15)
    {
      goto LABEL_13;
    }
  }

  v28 = v47;
  sub_1C467A544();
  v29 = *v28;
  sub_1C457B070();
  if ((v27 & 1) != (v31 & 1))
  {
    goto LABEL_21;
  }

  v24 = v30;
  if ((v27 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v37 = swift_allocError();
  swift_willThrow();

  v51 = v37;
  v38 = v37;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*(v41 + 8))(v48, v40);

    return;
  }

LABEL_22:
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001BLL, 0x80000001C4F8C0A0);
  sub_1C4F02438();
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  sub_1C4F024A8();
  __break(1u);
}

void sub_1C4BA68D0(uint64_t a1, char a2, uint64_t *a3)
{
  v46 = a3;
  v6 = sub_1C4EFF0C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0B8FC0, &unk_1C4F0EA98);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v39 - v14;
  v43 = *(a1 + 16);
  if (!v43)
  {
LABEL_13:

    return;
  }

  v39 = v3;
  v40 = v7;
  v15 = 0;
  v42 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v41 = *(v12 + 48);
  v45 = (v7 + 32);
  while (1)
  {
    if (v15 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C4F029F8();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v13;
    v17 = v44;
    sub_1C446C964(v42 + *(v13 + 72) * v15, v44, &qword_1EC0B8FC0, &unk_1C4F0EA98);
    v18 = *v45;
    v19 = v6;
    (*v45)(v47, v17, v6);
    v20 = *(v17 + v41);
    v21 = *v46;
    sub_1C44E3664();
    v24 = v23;
    v25 = v21[2];
    v26 = (v22 & 1) == 0;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_19;
    }

    v27 = v22;
    if (v21[3] < v25 + v26)
    {
      break;
    }

    if (a2)
    {
      if (v22)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C456902C(&qword_1EC0C24B0, &unk_1C4F58B90);
      sub_1C4F02468();
      if (v27)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v32 = v47;
    v33 = *v46;
    *(*v46 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v6 = v19;
    v18((v33[6] + *(v40 + 72) * v24), v32, v19);
    *(v33[7] + 8 * v24) = v20;
    v34 = v33[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_20;
    }

    ++v15;
    v33[2] = v36;
    a2 = 1;
    v13 = v16;
    if (v43 == v15)
    {
      goto LABEL_13;
    }
  }

  v28 = v46;
  sub_1C467A7C4();
  v29 = *v28;
  sub_1C44E3664();
  if ((v27 & 1) != (v31 & 1))
  {
    goto LABEL_21;
  }

  v24 = v30;
  if ((v27 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v37 = swift_allocError();
  swift_willThrow();
  v50 = v37;
  v38 = v37;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v40 + 8))(v47, v19);

    return;
  }

LABEL_22:
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001BLL, 0x80000001C4F8C0A0);
  sub_1C4F02438();
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  sub_1C4F024A8();
  __break(1u);
}

void sub_1C4BA6D48(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v27 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C4F029F8();
      __break(1u);
      goto LABEL_22;
    }

    v29 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v12 = sub_1C445FAA8(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v15 = v11;
    if (v10[3] < v13 + v14)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
      sub_1C4F02468();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v20 = (v19[6] + 16 * v12);
    *v20 = v7;
    v20[1] = v6;
    v21 = (v19[7] + 16 * v12);
    *v21 = v9;
    v21[1] = v8;
    v22 = v19[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    v19[2] = v24;
    v4 = v29 + 1;
    a2 = 1;
  }

  sub_1C467AA84();
  v16 = *a3;
  v17 = sub_1C445FAA8(v7, v6);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v12 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v25 = swift_allocError();
  swift_willThrow();
  v26 = v25;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001BLL, 0x80000001C4F8C0A0);
  sub_1C4F02438();
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  sub_1C4F024A8();
  __break(1u);
}

void sub_1C4BA703C(uint64_t a1, char a2, void *a3)
{
  v30 = *(a1 + 16);
  if (!v30)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 80)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C4F029F8();
      __break(1u);
      goto LABEL_22;
    }

    sub_1C446C964(i, &v37, &qword_1EC0B9090, &unk_1C4F58BD0);
    v8 = v37;
    v7 = v38;
    v35 = v37;
    v36 = v38;
    v32 = v39;
    v33 = v40;
    v34[0] = v41[0];
    *(v34 + 9) = *(v41 + 9);
    v9 = *a3;
    v11 = sub_1C445FAA8(v37, v38);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C456902C(&qword_1EC0C0928, &unk_1C4F3F540);
      sub_1C4F02468();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    v21 = (v19[7] + (v11 << 6));
    v22 = v32;
    v23 = v33;
    v24 = v34[0];
    *(v21 + 41) = *(v34 + 9);
    v21[1] = v23;
    v21[2] = v24;
    *v21 = v22;
    v25 = v19[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_20;
    }

    ++v5;
    v19[2] = v27;
    a2 = 1;
    if (v30 == v5)
    {

      return;
    }
  }

  sub_1C467AC18(v14);
  v16 = *a3;
  v17 = sub_1C445FAA8(v8, v7);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v28 = swift_allocError();
  swift_willThrow();

  v42 = v28;
  v29 = v28;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1C4420C3C(&v32, &qword_1EC0B9AE0, &qword_1C4F16C40);

    return;
  }

LABEL_22:
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001BLL, 0x80000001C4F8C0A0);
  sub_1C4F02438();
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  sub_1C4F024A8();
  __break(1u);
}

void sub_1C4BA7380(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v35 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v35 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C4F029F8();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = sub_1C445FAA8(v7, v6);
    v18 = v9[2];
    v19 = (v10 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_19;
    }

    v21 = v10;
    if (v9[3] < v20)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1C456902C(&qword_1EC0B9800, &qword_1C4F0FAE0);
      sub_1C4F02468();
      if (v21)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v25 = *a3;
    *(*a3 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v26 = (v25[6] + 16 * v17);
    *v26 = v7;
    v26[1] = v6;
    *(v25[7] + 8 * v17) = v8;
    v27 = v25[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_20;
    }

    v25[2] = v29;
    ++v4;
    a2 = 1;
  }

  sub_1C467B328(v20, a2 & 1, v11, v12, v13, v14, v15, v16, v32, v33, *v34, v34[4]);
  v22 = *a3;
  v23 = sub_1C445FAA8(v7, v6);
  if ((v21 & 1) != (v24 & 1))
  {
    goto LABEL_21;
  }

  v17 = v23;
  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v30 = swift_allocError();
  swift_willThrow();
  v31 = v30;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001BLL, 0x80000001C4F8C0A0);
  sub_1C4F02438();
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  sub_1C4F024A8();
  __break(1u);
}

void sub_1C4BA7654(uint64_t a1, char a2, void *a3)
{
  v26 = *(a1 + 16);
  if (!v26)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 56)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C4F029F8();
      __break(1u);
      goto LABEL_22;
    }

    sub_1C446C964(i, &v31, &qword_1EC0C43A0, &qword_1C4F58C10);
    v8 = v31;
    v7 = v32;
    v29 = v31;
    v30 = v32;
    sub_1C441D670(v33, v28);
    v9 = *a3;
    v11 = sub_1C445FAA8(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C456902C(&qword_1EC0C43A8, &qword_1C4F58C18);
      sub_1C4F02468();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    sub_1C441D670(v28, v19[7] + 40 * v11);
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    ++v5;
    v19[2] = v23;
    a2 = 1;
    if (v26 == v5)
    {

      return;
    }
  }

  sub_1C467B488(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_1C445FAA8(v8, v7);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v24 = swift_allocError();
  swift_willThrow();
  v34 = v24;
  v25 = v24;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1C440962C(v28);

    return;
  }

LABEL_22:
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001BLL, 0x80000001C4F8C0A0);
  sub_1C4F02438();
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  sub_1C4F024A8();
  __break(1u);
}

void sub_1C4BA7970(uint64_t a1, char a2, void *a3)
{
  v26 = *(a1 + 16);
  if (!v26)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C4F029F8();
      __break(1u);
      goto LABEL_22;
    }

    sub_1C446C964(i, &v31, &qword_1EC0B9278, &unk_1C4F0EDA0);
    v8 = v31;
    v7 = v32;
    v29 = v31;
    v30 = v32;
    sub_1C44482AC(&v33, v28);
    v9 = *a3;
    v11 = sub_1C445FAA8(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
      sub_1C4F02468();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    sub_1C44482AC(v28, (v19[7] + 32 * v11));
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    ++v5;
    v19[2] = v23;
    a2 = 1;
    if (v26 == v5)
    {

      return;
    }
  }

  sub_1C467B4B0(v14);
  v16 = *a3;
  v17 = sub_1C445FAA8(v8, v7);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v24 = swift_allocError();
  swift_willThrow();
  v34 = v24;
  v25 = v24;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1C440962C(v28);

    return;
  }

LABEL_22:
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001BLL, 0x80000001C4F8C0A0);
  sub_1C4F02438();
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  sub_1C4F024A8();
  __break(1u);
}

void sub_1C4BA7C88(uint64_t a1, char a2, void *a3, void (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v7 = 0;
  v31 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v31 == v7)
    {

      return;
    }

    if (v7 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C4F029F8();
      __break(1u);
      goto LABEL_22;
    }

    v9 = *(i - 2);
    v10 = *(i - 1);
    v11 = *i;
    v12 = *a3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C445FAA8(v9, v10);
    v15 = v12[2];
    v16 = (v13 & 1) == 0;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_19;
    }

    v17 = v13;
    if (v12[3] < v15 + v16)
    {
      break;
    }

    if (a2)
    {
      if (v13)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1C456902C(a5, a6);
      sub_1C4F02468();
      if (v17)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v21 = *a3;
    *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    v22 = (v21[6] + 16 * v14);
    *v22 = v9;
    v22[1] = v10;
    *(v21[7] + 8 * v14) = v11;
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v21[2] = v25;
    ++v7;
    a2 = 1;
  }

  a4();
  v18 = *a3;
  v19 = sub_1C445FAA8(v9, v10);
  if ((v17 & 1) != (v20 & 1))
  {
    goto LABEL_21;
  }

  v14 = v19;
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v26 = swift_allocError();
  swift_willThrow();
  v27 = v26;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001BLL, 0x80000001C4F8C0A0);
  sub_1C4F02438();
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  sub_1C4F024A8();
  __break(1u);
}

unint64_t sub_1C4BA7F70()
{
  result = qword_1EDDF8F28;
  if (!qword_1EDDF8F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8F28);
  }

  return result;
}

unint64_t sub_1C4BA7FC4()
{
  result = qword_1EC0C4240;
  if (!qword_1EC0C4240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4240);
  }

  return result;
}

unint64_t sub_1C4BA8018()
{
  result = qword_1EC0C4248;
  if (!qword_1EC0C4248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4248);
  }

  return result;
}

unint64_t sub_1C4BA806C()
{
  result = qword_1EC0C4250;
  if (!qword_1EC0C4250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4250);
  }

  return result;
}

unint64_t sub_1C4BA80C0()
{
  result = qword_1EC0C4278;
  if (!qword_1EC0C4278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4278);
  }

  return result;
}

unint64_t sub_1C4BA8114()
{
  result = qword_1EC0C4280;
  if (!qword_1EC0C4280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4280);
  }

  return result;
}

unint64_t sub_1C4BA8168()
{
  result = qword_1EC0C4290;
  if (!qword_1EC0C4290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4290);
  }

  return result;
}

uint64_t sub_1C4BA81BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

unint64_t sub_1C4BA820C()
{
  result = qword_1EC0C42A0;
  if (!qword_1EC0C42A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C42A0);
  }

  return result;
}

unint64_t sub_1C4BA8260()
{
  result = qword_1EC0C42B0;
  if (!qword_1EC0C42B0)
  {
    sub_1C4572308(&qword_1EC0C42A8, &qword_1C4F582B0);
    sub_1C4BA8324();
    sub_1C448F040(&qword_1EC0BFE40, &qword_1EDDFCD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C42B0);
  }

  return result;
}

unint64_t sub_1C4BA8324()
{
  result = qword_1EC0C42B8;
  if (!qword_1EC0C42B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C42B8);
  }

  return result;
}

unint64_t sub_1C4BA8378()
{
  result = qword_1EC0C42C0;
  if (!qword_1EC0C42C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C42C0);
  }

  return result;
}

uint64_t sub_1C4BA83CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1C4BA841C()
{
  result = qword_1EC0C42E0;
  if (!qword_1EC0C42E0)
  {
    sub_1C4572308(&qword_1EC0C42A8, &qword_1C4F582B0);
    sub_1C4BA84E0();
    sub_1C448F040(&qword_1EC0C42F0, &unk_1EDDFCD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C42E0);
  }

  return result;
}

unint64_t sub_1C4BA84E0()
{
  result = qword_1EC0C42E8;
  if (!qword_1EC0C42E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C42E8);
  }

  return result;
}

unint64_t sub_1C4BA8534()
{
  result = qword_1EDDF8F50;
  if (!qword_1EDDF8F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8F50);
  }

  return result;
}

uint64_t sub_1C4BA8588(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C42C8, &qword_1C4F582B8);
    sub_1C4BA91B0(a2, MEMORY[0x1E69A9D80]);
    result = sub_1C44254A0();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4BA8650()
{
  result = qword_1EDDF8F20;
  if (!qword_1EDDF8F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8F20);
  }

  return result;
}

unint64_t sub_1C4BA86A8()
{
  result = qword_1EC0C4300;
  if (!qword_1EC0C4300)
  {
    sub_1C4572308(&qword_1EC0C4308, &qword_1C4F583E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4300);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VersionInfo.Component(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4BA87FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4BA884C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C4BA88A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C4BA88C4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C4BA88DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4BA891C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VersionInfo.AllInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VersionInfo.GitInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VersionInfo.GitInfo.WorkingTreeStatus.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4BA8C3C()
{
  result = qword_1EC0C4310;
  if (!qword_1EC0C4310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4310);
  }

  return result;
}

unint64_t sub_1C4BA8C94()
{
  result = qword_1EC0C4318;
  if (!qword_1EC0C4318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4318);
  }

  return result;
}

unint64_t sub_1C4BA8CEC()
{
  result = qword_1EC0C4320;
  if (!qword_1EC0C4320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4320);
  }

  return result;
}

unint64_t sub_1C4BA8D44()
{
  result = qword_1EC0C4328;
  if (!qword_1EC0C4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4328);
  }

  return result;
}

unint64_t sub_1C4BA8D9C()
{
  result = qword_1EC0C4330;
  if (!qword_1EC0C4330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4330);
  }

  return result;
}

unint64_t sub_1C4BA8DF4()
{
  result = qword_1EC0C4338;
  if (!qword_1EC0C4338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4338);
  }

  return result;
}

unint64_t sub_1C4BA8E4C()
{
  result = qword_1EC0C4340;
  if (!qword_1EC0C4340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4340);
  }

  return result;
}

unint64_t sub_1C4BA8EA4()
{
  result = qword_1EC0C4348;
  if (!qword_1EC0C4348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4348);
  }

  return result;
}

unint64_t sub_1C4BA8EFC()
{
  result = qword_1EC0C4350;
  if (!qword_1EC0C4350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4350);
  }

  return result;
}

unint64_t sub_1C4BA8F54()
{
  result = qword_1EC0C4358;
  if (!qword_1EC0C4358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4358);
  }

  return result;
}

unint64_t sub_1C4BA8FAC()
{
  result = qword_1EC0C4360;
  if (!qword_1EC0C4360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4360);
  }

  return result;
}

unint64_t sub_1C4BA9004()
{
  result = qword_1EC0C4368;
  if (!qword_1EC0C4368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4368);
  }

  return result;
}

unint64_t sub_1C4BA905C()
{
  result = qword_1EC0C4370;
  if (!qword_1EC0C4370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4370);
  }

  return result;
}

unint64_t sub_1C4BA90B4()
{
  result = qword_1EC0C4378;
  if (!qword_1EC0C4378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4378);
  }

  return result;
}

unint64_t sub_1C4BA9108()
{
  result = qword_1EC0C4390;
  if (!qword_1EC0C4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4390);
  }

  return result;
}

unint64_t sub_1C4BA915C()
{
  result = qword_1EDDF8F30;
  if (!qword_1EDDF8F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8F30);
  }

  return result;
}

uint64_t sub_1C4BA91B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4BA91F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4BA924C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1C4BA92BC()
{
  result = qword_1EDDF8F48;
  if (!qword_1EDDF8F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8F48);
  }

  return result;
}

_BYTE *sub_1C4BA9310(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C4BA93C0()
{
  result = qword_1EC0C43C0;
  if (!qword_1EC0C43C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C43C0);
  }

  return result;
}

unint64_t sub_1C4BA9418()
{
  result = qword_1EDDF8F38;
  if (!qword_1EDDF8F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8F38);
  }

  return result;
}

unint64_t sub_1C4BA9470()
{
  result = qword_1EDDF8F40;
  if (!qword_1EDDF8F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8F40);
  }

  return result;
}

uint64_t sub_1C4BA95AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24IntelligencePlatformCore19ViewAccessAssertion_viewArtifactURL;
  v4 = sub_1C4EF98F8();
  v5 = sub_1C43FBCE0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_1C4BA9674()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore19ViewAccessAssertion_viewArtifactTableName);
  v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore19ViewAccessAssertion_viewArtifactTableName + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4BA9730()
{
  result = sub_1C4EF98F8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1C4BA97E0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore19ViewAccessRequester_viewDb] = a1;
  v6 = OBJC_IVAR____TtC24IntelligencePlatformCore19ViewAccessRequester_artifactURL;
  v7 = sub_1C4EF98F8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a2, v7);
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a2, v7);
  return v9;
}

uint64_t sub_1C4BA99A0()
{
  result = sub_1C4EF98F8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4BA9A54@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v29 = a4;
  v30 = a1;
  v31 = a3;
  v27 = *(a2 - 8);
  v28 = a2;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v24, v20);
  v25 = 1;
  if (sub_1C44157D4(v22, 1, v11) != 1)
  {
    (*(v12 + 32))(v16, v22, v11);
    v30(v16, v9);
    (*(v12 + 8))(v16, v11);
    if (v5)
    {
      return (*(v27 + 32))(v29, v9, v28);
    }

    v25 = 0;
  }

  return sub_1C440BAA8(a5, v25, 1, v31);
}

void sub_1C4BA9CC8()
{
  sub_1C43FE96C();
  v1 = v0;
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 40);
  sub_1C44344B8(v3, v1);
  v6(v3, v1, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_1C43FBC80();
}

uint64_t sub_1C4BA9D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v8 = sub_1C4F01F48();
  v12 = *(*(v8 - 8) + 32);
  (v12)((v8 - 8), a4, a1, v8);
  v9 = _s13BookmarkStateVMa();
  v12(a4 + *(v9 + 36), a2, v8);
  v10 = a4 + *(v9 + 40);

  return (v12)(v10, a3, v8);
}

uint64_t sub_1C4BA9EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v7 = sub_1C4F01F48();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2 + v4, v7);
}

uint64_t sub_1C4BA9F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v7 = sub_1C4F01F48();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2 + v4, v7);
}

uint64_t sub_1C4BA9FD8(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = AssociatedTypeWitness;
  v6 = swift_getAssociatedTypeWitness();
  v7 = sub_1C4F01F48();
  sub_1C43FCE64();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4400EA4();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  sub_1C43FCE64();
  v44 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBD08();
  v40 = (v24 - v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v43 = &v39 - v28;
  (*(a2 + 40))(a1, a2, v27);
  if (sub_1C44157D4(v19, 1, v6) == 1)
  {
    v29 = *(v9 + 8);
    v29(v19, v7);
    (*(a2 + 32))(a1, a2);
    v30 = sub_1C44157D4(v15, 1, v6);
    v29(v15, v7);
    if (v30 == 1)
    {
      return 4;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v32 = v19;
    v33 = *(v44 + 32);
    v33(v43, v32, v6);
    (*(a2 + 32))(a1, a2);
    if (sub_1C44157D4(v2, 1, v6) == 1)
    {
      (*(v44 + 8))(v43, v6);
      (*(v9 + 8))(v2, v7);
      return 2;
    }

    else
    {
      v34 = v40;
      v33(v40, v2, v6);
      v35 = *(swift_getAssociatedConformanceWitness() + 24);
      v36 = v43;
      v37 = sub_1C4F010B8();
      v38 = *(v44 + 8);
      v38(v34, v6);
      v38(v36, v6);
      if (v37)
      {
        return 4;
      }

      else
      {
        return 3;
      }
    }
  }
}

void sub_1C4BAA378()
{
  sub_1C43FE96C();
  v61 = v0;
  v3 = v2;
  v5 = v4;
  v55 = v6;
  v56 = v7;
  v57 = v8;
  v58 = v9;
  v11 = v10;
  v13 = v12;
  v54 = v14;
  swift_getAssociatedTypeWitness();
  v15 = sub_1C4F01F48();
  sub_1C43FCE64();
  v59 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBD08();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C4400EA4();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v53 - v25;
  v64 = v13;
  v65 = v11;
  v60 = v5;
  v62 = v5;
  v63 = v3;
  sub_1C456902C(&qword_1EC0BD330, &qword_1C4F2DAF0);
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C442D4C8();
  v27 = v61;
  v33 = sub_1C4BA9A54(v28, v29, v30, v31, v32);
  if (!v27)
  {
    v61 = v26;
    v53[0] = v22;
    v53[1] = v15;
    v64 = v57;
    v65 = v58;
    MEMORY[0x1EEE9AC00](v33);
    sub_1C44204D0();
    *(v34 - 16) = v35;
    *(v34 - 8) = v3;
    sub_1C442D4C8();
    v41 = sub_1C4BA9A54(v36, v37, v38, v39, v40);
    v64 = v55;
    v65 = v56;
    MEMORY[0x1EEE9AC00](v41);
    sub_1C44204D0();
    *(v42 - 16) = v43;
    *(v42 - 8) = v3;
    v44 = v53[0];
    sub_1C442D4C8();
    sub_1C4BA9A54(v45, v46, v47, v48, v49);
    v50 = _s13BookmarkStateVMa();
    v51 = v54;
    v54[3] = v50;
    v51[4] = swift_getWitnessTable();
    v52 = sub_1C4422F90(v51);
    sub_1C4BA9D8C(v61, v1, v44, v52);
  }

  sub_1C43FBC80();
}

void sub_1C4BAA6A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1C4BAA6C4();
}

void sub_1C4BAA6C4()
{
  sub_1C43FE96C();
  v8 = v1;
  v3 = *v2;
  v4 = v2[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 40);
  sub_1C44344B8(v3, v4);
  v7(v3, v4, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v0)
  {
    *v8 = v0;
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4BAA7B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  result = sub_1C4F01F48();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4BAA848(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v10)
  {
    ++v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v11)
  {
    v13 = ((v12 + *(v9 + 80) + ((v12 + *(v9 + 80)) & ~*(v9 + 80))) & ~*(v9 + 80)) + v12;
    v14 = 8 * v13;
    if (v13 > 3)
    {
      goto LABEL_8;
    }

    v16 = ((a2 - v11 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (v15)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v16 <= 0xFF)
      {
        if (v16 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v15 = *(a1 + v13);
        if (!*(a1 + v13))
        {
          goto LABEL_23;
        }

LABEL_15:
        v17 = (v15 - 1) << v14;
        if (v13 > 3)
        {
          v17 = 0;
        }

        if (v13)
        {
          if (v13 > 3)
          {
            LODWORD(v13) = 4;
          }

          switch(v13)
          {
            case 2:
              LODWORD(v13) = *a1;
              break;
            case 3:
              LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v13) = *a1;
              break;
            default:
              LODWORD(v13) = *a1;
              break;
          }
        }

        return v11 + (v13 | v17) + 1;
      }

      v15 = *(a1 + v13);
      if (*(a1 + v13))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v10 < 2)
  {
    return 0;
  }

  v19 = sub_1C44157D4(a1, v10, AssociatedTypeWitness);
  if (v19 >= 2)
  {
    return v19 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1C4BAAA00(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = 0;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v12)
  {
    ++v14;
  }

  v15 = ((v14 + *(v11 + 80) + ((v14 + *(v11 + 80)) & ~*(v11 + 80))) & ~*(v11 + 80)) + v14;
  v16 = 8 * v15;
  if (a3 > v13)
  {
    if (v15 <= 3)
    {
      v17 = ((a3 - v13 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v17))
      {
        v10 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v10 = v18;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  if (v13 >= a2)
  {
    switch(v10)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_28;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_28;
        }

        break;
      case 3:
LABEL_41:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_27;
      default:
LABEL_27:
        if (a2)
        {
LABEL_28:
          if (v12 >= 2)
          {

            sub_1C440BAA8(a1, a2 + 1, v12, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    v19 = ~v13 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> v16) + 1;
      if (v15)
      {
        v21 = v19 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v15 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v15] = v20;
        break;
      case 2:
        *&a1[v15] = v20;
        break;
      case 3:
        goto LABEL_41;
      case 4:
        *&a1[v15] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C4BAAC70(void *a1)
{
  v2 = sub_1C456902C(&qword_1EC0C44C8, &qword_1C4F59058);
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4BAB4E4();
  sub_1C442D4D8();
  return (*(v5 + 8))(v9, v2);
}

uint64_t sub_1C4BAAD9C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001C4FB4900 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4BAAE38(void *a1)
{
  v2 = sub_1C456902C(&qword_1EC0C44C0, &qword_1C4F59050);
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4BAB490();
  sub_1C442D4D8();
  sub_1C4F027B8();
  return (*(v5 + 8))(v9, v2);
}

double sub_1C4BAAF54(uint64_t *a1)
{
  v4 = sub_1C456902C(&qword_1EC0C44B8, &qword_1C4F59048);
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v15 - v10;
  v12 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4BAB490();
  sub_1C4F02BC8();
  if (!v1)
  {
    sub_1C4F02698();
    v2 = v13;
    (*(v7 + 8))(v11, v4);
  }

  sub_1C440962C(a1);
  return v2;
}

uint64_t sub_1C4BAB0A4(uint64_t a1)
{
  v2 = sub_1C4BAB4E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BAB0E0(uint64_t a1)
{
  v2 = sub_1C4BAB4E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4BAB150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BAAD9C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4BAB17C(uint64_t a1)
{
  v2 = sub_1C4BAB490();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BAB1B8(uint64_t a1)
{
  v2 = sub_1C4BAB490();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4BAB1F4(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v4 = sub_1C4BAAF54(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

unint64_t sub_1C4BAB258()
{
  result = qword_1EDDFC1C0;
  if (!qword_1EDDFC1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC1C0);
  }

  return result;
}

unint64_t sub_1C4BAB2B0()
{
  result = qword_1EC0C44A8;
  if (!qword_1EC0C44A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C44A8);
  }

  return result;
}

unint64_t sub_1C4BAB308()
{
  result = qword_1EC0C44B0;
  if (!qword_1EC0C44B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C44B0);
  }

  return result;
}

unint64_t sub_1C4BAB35C(void *a1)
{
  a1[1] = sub_1C4BAB394();
  a1[2] = sub_1C4BAB3E8();
  result = sub_1C4BAB43C();
  a1[3] = result;
  return result;
}

unint64_t sub_1C4BAB394()
{
  result = qword_1EDDFC1C8;
  if (!qword_1EDDFC1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC1C8);
  }

  return result;
}

unint64_t sub_1C4BAB3E8()
{
  result = qword_1EDDFC1D8[0];
  if (!qword_1EDDFC1D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFC1D8);
  }

  return result;
}

unint64_t sub_1C4BAB43C()
{
  result = qword_1EDDFC1D0;
  if (!qword_1EDDFC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC1D0);
  }

  return result;
}

unint64_t sub_1C4BAB490()
{
  result = qword_1EDDF8F18;
  if (!qword_1EDDF8F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8F18);
  }

  return result;
}

unint64_t sub_1C4BAB4E4()
{
  result = qword_1EC0C44D0;
  if (!qword_1EC0C44D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C44D0);
  }

  return result;
}

_BYTE *_s16ViewChangedStateV8BookmarkV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C4BAB610()
{
  result = qword_1EC0C44D8;
  if (!qword_1EC0C44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C44D8);
  }

  return result;
}

unint64_t sub_1C4BAB668()
{
  result = qword_1EC0C44E0;
  if (!qword_1EC0C44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C44E0);
  }

  return result;
}

unint64_t sub_1C4BAB6C0()
{
  result = qword_1EC0C44E8;
  if (!qword_1EC0C44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C44E8);
  }

  return result;
}

unint64_t sub_1C4BAB718()
{
  result = qword_1EDDF8F08;
  if (!qword_1EDDF8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8F08);
  }

  return result;
}

unint64_t sub_1C4BAB770()
{
  result = qword_1EDDF8F10;
  if (!qword_1EDDF8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8F10);
  }

  return result;
}

uint64_t sub_1C4BAB7D4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4BAB814(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1C4BAB878(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v24 = MEMORY[0x1E69E7CC0];
    v23 = *(a1 + 16);
    sub_1C459CF48();
    v4 = sub_1C486C288(a1);
    v5 = v23;
    v6 = 0;
    v7 = a1 + 56;
    v8 = 1;
    v9 = 24;
    v10 = -2;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < v8 << *(a1 + 32))
      {
        v11 = v4 >> 6;
        v12 = v8 << v4;
        if ((*(v7 + 8 * (v4 >> 6)) & (v8 << v4)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_25;
        }

        v13 = *(*(a1 + 48) + v4 * v9);
        v14 = *(v24 + 16);
        if (v14 >= *(v24 + 24) >> 1)
        {
          sub_1C459CF48();
          sub_1C447F324();
        }

        *(v24 + 16) = v14 + 1;
        *(v24 + 8 * v14 + 32) = v13;
        if (v3)
        {
          goto LABEL_29;
        }

        v15 = v8 << *(a1 + 32);
        if (v4 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v7 + 8 * v11);
        if ((v16 & v12) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_28;
        }

        v17 = v16 & (v10 << (v4 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v11 << 6;
          v19 = v11 + 1;
          v20 = (a1 + 64 + 8 * v11);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_1C440951C(v4, v2, 0);
              sub_1C447F324();
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_1C440951C(v4, v2, 0);
          sub_1C447F324();
        }

LABEL_19:
        if (++v6 == v5)
        {
          return;
        }

        v3 = 0;
        v2 = *(a1 + 36);
        v4 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
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
}

uint64_t sub_1C4BABAA8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B0A8(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C4BB1ECC(v6);
  *a1 = v2;
  return result;
}

void sub_1C4BABB14()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v19 = v6;
  v18 = sub_1C456902C(&qword_1EC0B89E8, &unk_1C4F3E630);
  sub_1C43FCDF8(v18);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402A68();
  v12 = 0;
  v13 = *(v3 + 16);
  while (1)
  {
    if (v13 == v12)
    {
      v16 = 1;
      v17 = v19;
      goto LABEL_9;
    }

    sub_1C445FFF0(v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12, v1, &qword_1EC0B89E8, &unk_1C4F3E630);
    v14 = sub_1C4408D00();
    v15 = v5(v14);
    if (v0)
    {
      sub_1C4420C3C(v1, &qword_1EC0B89E8, &unk_1C4F3E630);
      goto LABEL_10;
    }

    if (v15)
    {
      break;
    }

    sub_1C4420C3C(v1, &qword_1EC0B89E8, &unk_1C4F3E630);
    ++v12;
  }

  v17 = v19;
  sub_1C4BB2864(v1, v19);
  v16 = 0;
LABEL_9:
  sub_1C440BAA8(v17, v16, 1, v18);
LABEL_10:
  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C4BABC84(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 40);
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v8 = *(v6 - 1);
    v7 = *v6;
    v11[0] = v8;
    v11[1] = v7;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v9 = a1(v11);
    if (v3)
    {
      break;
    }

    if (v9)
    {
      return v8;
    }

    v6 += 2;
    if (!--v5)
    {
      return 0;
    }
  }

  return v8;
}

void sub_1C4BABE08()
{
  sub_1C43FE96C();
  v22 = v2;
  v4 = v3;
  v6 = v5;
  v21 = v7;
  v20 = v8(0);
  sub_1C43FCDF8(v20);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C4402A68();
  v14 = 0;
  v15 = *(v4 + 16);
  while (1)
  {
    if (v15 == v14)
    {
      v18 = 1;
      v19 = v21;
      goto LABEL_9;
    }

    sub_1C443BF44(v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14, v1);
    v16 = sub_1C4408D00();
    v17 = v6(v16);
    if (v0)
    {
      sub_1C443C070(v1, v22);
      goto LABEL_10;
    }

    if (v17)
    {
      break;
    }

    sub_1C443C070(v1, v22);
    ++v14;
  }

  v19 = v21;
  sub_1C4437D00(v1, v21);
  v18 = 0;
LABEL_9:
  sub_1C440BAA8(v19, v18, 1, v20);
LABEL_10:
  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C4BABFC8()
{
  sub_1C43FE96C();
  v3 = v1;
  v5 = v4;
  v7 = v6;
  sub_1C43FBE94();
  v8 = sub_1C4EFB768();
  v9 = sub_1C43FCDF8(v8);
  v80 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  v13 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v14 = sub_1C43FBD18(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBD08();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v78 - v21;
  if (v7 >> 14)
  {
    v23 = MEMORY[0x1E69E7CD0];
    if (v7 >> 14 != 1)
    {
      v79 = v0;
      swift_unownedRetainStrong();
      v35 = sub_1C4440C6C(v5);
      if (v1)
      {
      }

      else
      {
        v36 = v35;

        v37 = *(v36 + 480);

        sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
        v38 = sub_1C44331AC();
        *(v38 + 16) = xmmword_1C4F0D130;
        v39 = sub_1C4424B10(v79);
        v40 = MEMORY[0x1E69A0138];
        *(v38 + 56) = MEMORY[0x1E69E6158];
        *(v38 + 64) = v40;
        *(v38 + 32) = v39;
        *(v38 + 40) = v41;
        sub_1C4EFB728();
        sub_1C4EFC088();
        (v80[1])(v2, v8);
        sub_1C4EFBC58();
        sub_1C43FCF64();
        sub_1C44112DC(v42, v43, v44, v8);
        sub_1C4EFBBC8();
        v78[1] = v37;
        sub_1C4420C3C(v81, &unk_1EC0BC770, &qword_1C4F10DC0);
        sub_1C4420C3C(v19, &unk_1EC0C06C0, &unk_1C4F10DB0);
        while (1)
        {
          v62 = sub_1C4458EE8();
          if (!v62)
          {
            break;
          }

          sub_1C44091DC();
          sub_1C4EFBBA8();
          v63 = sub_1C4EFBBE8();
          if (v63)
          {
            v64 = MEMORY[0x1EEE9AC00](v63);
            v78[-2] = v62;
            v78[-1] = 0;
            v65 = sqlite3_column_type(v64, 0);
            if (v65 == 5)
            {
              MEMORY[0x1EEE9AC00](v65);
              sub_1C43FD954();
              *(v76 - 16) = sub_1C487BF24;
              *(v76 - 8) = &v78[-4];
              sub_1C441D408();
              v3 = 0;
              goto LABEL_50;
            }

            sub_1C4F02AA8();
          }

          else
          {
            sub_1C446C094();
            sub_1C4EFBB98();
          }

          sub_1C44091DC();
          sub_1C4EFBBA8();
          v66 = sub_1C4EFBBE8();
          if (v66)
          {
            v80 = v78;
            v67 = MEMORY[0x1EEE9AC00](v66);
            v78[-2] = v62;
            v78[-1] = 1;
            v68 = sqlite3_column_type(v67, 1);
            if (v68 == 5)
            {
              MEMORY[0x1EEE9AC00](v68);
              sub_1C43FD954();
              *(v77 - 16) = sub_1C487BDA4;
              *(v77 - 8) = &v78[-4];
              sub_1C444157C();
              v3 = 0;
              goto LABEL_50;
            }

            v81[0] = sub_1C4F011E8();
          }

          else
          {
            sub_1C440CDC4();
            sub_1C4EFBB98();
          }

          sub_1C483BD28();
        }

        v71 = v23;
        if ((v79 & 0x100) != 0)
        {
          sub_1C4BAB878(v23);
          sub_1C443FFF0(v72);

          sub_1C44180B4();
          v74 = v73;

          sub_1C4D40318(v74);
          v71 = v23;
        }

        v81[0] = sub_1C4618944(v71);
        sub_1C4BABAA8(v81);
      }

      goto LABEL_15;
    }

    v82 = MEMORY[0x1E69E7CD0];
    v24 = *(v0 + 16);
    v25 = (v0 + 40);
    if (v24)
    {
      do
      {
        v27 = *(v25 - 1);
        v26 = *v25;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C43FD018();
        sub_1C4BAF42C();
        if (v1)
        {
          goto LABEL_13;
        }

        sub_1C483BD28();

        v25 += 2;
      }

      while (--v24);
    }

    v28 = v82;
    if (v7)
    {
      sub_1C4BAB878(v82);
      sub_1C443FFF0(v29);
      if (v1)
      {
LABEL_13:

        goto LABEL_15;
      }

      sub_1C44180B4();
      v70 = v69;
      v3 = 0;

      sub_1C4D40318(v70);
      v28 = v82;
    }

    v81[0] = sub_1C4618944(v28);
    sub_1C4BABAA8(v81);
    if (v3)
    {
      goto LABEL_51;
    }

    goto LABEL_15;
  }

  swift_unownedRetainStrong();
  v30 = sub_1C4440C6C(v5);

  if (v1)
  {
LABEL_15:
    sub_1C4402144();
    sub_1C43FBC80();
    return;
  }

  v31 = *(v30 + 72);

  sub_1C4EFBC58();
  sub_1C43FCF64();
  sub_1C44112DC(v32, v33, v34, v8);
  sub_1C4EFBBC8();
  v80 = v31;
  sub_1C4420C3C(v81, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4420C3C(v22, &unk_1EC0C06C0, &unk_1C4F10DB0);
  v45 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v46 = sub_1C4458EE8();
    if (!v46)
    {

      goto LABEL_15;
    }

    sub_1C44091DC();
    sub_1C4EFBBA8();
    if (sub_1C4EFBBE8())
    {
      sub_1C442AA00();
      MEMORY[0x1EEE9AC00](v47);
      sub_1C4423838();
      *(v48 - 16) = v46;
      *(v48 - 8) = 0;
      v50 = sqlite3_column_type(v49, 0);
      if (v50 == 5)
      {
        goto LABEL_47;
      }

      v51 = sub_1C4F02AA8();
    }

    else
    {
      sub_1C446C094();
      sub_1C4EFBB98();
      v51 = v81[0];
    }

    sub_1C44091DC();
    sub_1C4EFBBA8();
    if (sub_1C4EFBBE8())
    {
      break;
    }

    sub_1C440CDC4();
    sub_1C4EFBB98();
    v55 = v81[0];
    v19 = v81[1];
LABEL_25:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = *(v45 + 16);
      sub_1C442BC40();
      sub_1C458DF68();
      v45 = v60;
    }

    v57 = *(v45 + 16);
    if (v57 >= *(v45 + 24) >> 1)
    {
      sub_1C442BC40();
      sub_1C458DF68();
      v45 = v61;
    }

    *(v45 + 16) = v57 + 1;
    v58 = (v45 + 24 * v57);
    v58[4] = v51;
    v58[5] = v55;
    v58[6] = v19;
  }

  sub_1C442AA00();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C4423838();
  v50 = sub_1C4414708(v53, v54);
  if (v50 != 5)
  {
    v55 = sub_1C4F011E8();
    v19 = v56;
    v81[0] = v55;
    goto LABEL_25;
  }

LABEL_47:
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FD954();
  *(v75 - 16) = sub_1C487BF24;
  *(v75 - 8) = v19;
  sub_1C444157C();
  v3 = 0;
LABEL_50:
  sub_1C4433888();
  swift_unexpectedError();
  __break(1u);
LABEL_51:

  __break(1u);
}

void sub_1C4BACAD0()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44042B0();
  v10 = sub_1C4EFB768();
  v11 = sub_1C43FCDF8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v43 = v17 - v16;
  swift_unownedRetainStrong();
  v18 = sub_1C4440C6C(v3);

  if (v1)
  {
LABEL_19:
    sub_1C4403810();
    sub_1C43FBC80();
  }

  else
  {
    v47 = v0;
    v48 = *(v18 + 24);

    v19 = v5 + 56;
    v20 = 1 << *(v5 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v5 + 56);
    v23 = (v20 + 63) >> 6;
    v45 = (v13 + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v24 = 0;
    v42 = MEMORY[0x1E69E7CC0];
    v25 = v43;
    v46 = v5;
LABEL_5:
    v26 = v24;
    if (!v22)
    {
      goto LABEL_7;
    }

    do
    {
      v24 = v26;
LABEL_10:
      v27 = *(*(v5 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v22)))));
      sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
      v28 = sub_1C44331AC();
      *(v28 + 16) = xmmword_1C4F0D130;
      *(v28 + 56) = MEMORY[0x1E69E6530];
      *(v28 + 64) = MEMORY[0x1E69A0180];
      *(v28 + 32) = v27;
      sub_1C4EFB728();
      sub_1C4EFC088();
      v29 = v25;
      (*v45)(v25, v10);
      sub_1C43FCF64();
      v31 = v30;
      sub_1C440BAA8(v32, v33, v34, v30);
      sub_1C445EA20();
      sub_1C443474C();
      sub_1C4EFB9A8();
      v22 &= v22 - 1;
      sub_1C4420C3C(v49, &unk_1EC0BC770, &qword_1C4F10DC0);
      sub_1C4420C3C(v47, &unk_1EC0C06C0, &unk_1C4F10DB0);
      v35 = v50;
      if (v50)
      {
        v44 = v49[6];
        v10 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = *(v42 + 16);
          sub_1C458DF68();
          v42 = v40;
        }

        v25 = v29;
        v36 = *(v42 + 16);
        v37 = v36 + 1;
        if (v36 >= *(v42 + 24) >> 1)
        {
          sub_1C458DF68();
          v37 = v36 + 1;
          v42 = v41;
        }

        *(v42 + 16) = v37;
        v38 = (v42 + 24 * v36);
        v38[4] = v27;
        v38[5] = v44;
        v38[6] = v35;
        v5 = v46;
        goto LABEL_5;
      }

      v26 = v24;
      v5 = v46;
      v10 = v31;
      v25 = v29;
    }

    while (v22);
LABEL_7:
    while (1)
    {
      v24 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v24 >= v23)
      {

        goto LABEL_19;
      }

      v22 = *(v19 + 8 * v24);
      ++v26;
      if (v22)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1C4BACEC4()
{
  sub_1C43FE96C();
  v3 = v2;
  v47 = v5;
  v48 = v4;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v42 - v14;
  v16 = sub_1C4EFB768();
  v17 = sub_1C43FCDF8(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  swift_unownedRetainStrong();
  v22 = sub_1C4440C6C(v3);
  if (!v0)
  {
    v23 = v22;
    v44 = v12;
    v45 = v3;

    v24 = *(v23 + 32);

    v46 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v25 = sub_1C44331AC();
    v43 = xmmword_1C4F0D130;
    *(v25 + 16) = xmmword_1C4F0D130;
    v26 = MEMORY[0x1E69A0138];
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = v26;
    v27 = v47;
    *(v25 + 32) = v48;
    *(v25 + 40) = v27;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFB728();
    sub_1C4EFC088();
    v28 = *(v19 + 8);
    v28(v1, v16);
    sub_1C43FCF64();
    sub_1C440BAA8(v29, v30, v31, v16);
    sub_1C445EA20();
    sub_1C443474C();
    sub_1C4EFB9A8();
    v42[0] = v28;
    v42[1] = v24;
    sub_1C4420C3C(v49, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v15, &unk_1EC0C06C0, &unk_1C4F10DB0);
    if (v50)
    {
      swift_unownedRetainStrong();
      v32 = sub_1C4440C6C(v45);

      v33 = *(v32 + 40);

      v34 = sub_1C44331AC();
      *(v34 + 16) = v43;
      *(v34 + 56) = MEMORY[0x1E69E6158];
      *(v34 + 64) = MEMORY[0x1E69A0138];
      v35 = v48;
      *(v34 + 32) = v48;
      *(v34 + 40) = v27;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFB728();
      sub_1C4EFC088();
      (v42[0])(v1, v16);
      v36 = v44;
      sub_1C43FCF64();
      sub_1C440BAA8(v37, v38, v39, v16);
      sub_1C445EA20();
      sub_1C443474C();
      sub_1C4EFB9A8();
      sub_1C4420C3C(v49, &unk_1EC0BC770, &qword_1C4F10DC0);
      sub_1C4420C3C(v36, &unk_1EC0C06C0, &unk_1C4F10DB0);
      if ((v50 & 1) == 0)
      {

        goto LABEL_4;
      }

      sub_1C450B034();
      sub_1C441C114();
      v40 = swift_allocError();
      v41->n128_u64[0] = v35;
      v41->n128_u64[1] = v27;
      v41[1].n128_u64[0] = 0xD000000000000011;
      v41[1].n128_u64[1] = 0x80000001C4FB52E0;
      v41[2].n128_u64[0] = 0xD000000000000016;
      v41[2].n128_u64[1] = 0x80000001C4FB4F00;
      sub_1C4426EA4(v49[0], v40, v41);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

LABEL_4:
  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C4BAD398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C456902C(&qword_1EC0B8838, "nS\t");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = a1;
  sub_1C4BAFAC8(inited, a2, a3, sub_1C4BAF708);
  swift_setDeallocating();
  if (!v3)
  {
    sub_1C4A7EA34(a1);
    sub_1C4BACAD0();
    a3 = v8;
  }

  return a3;
}

uint64_t sub_1C4BAD488(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746567726174 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x61486769666E6F63 && a2 == 0xEA00000000006873;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x69746172656E6567 && a2 == 0xEE00657079546E6FLL;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x79546D6F74737563 && a2 == 0xEA00000000006570;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7247657461647075 && a2 == 0xEB0000000070756FLL;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x536F546574697277 && a2 == 0xED00006D61657274;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7463616669747261 && a2 == 0xEC00000065707954;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7463616669747261 && a2 == 0xEC00000068746150;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7463616669747261 && a2 == 0xED0000656C626154;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000016 && 0x80000001C4FB5390 == a2;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000014 && 0x80000001C4FB53B0 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x6769666E6F63 && a2 == 0xE600000000000000)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_1C4F02938();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}