uint64_t sub_1AB2F9CE8(int *a1)
{
  v2 = v1;
  v66 = *MEMORY[0x1E69E9840];
  v51 = sub_1AB45F604();
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v5 = &v46[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = sub_1AB45F764();
  v54 = *(v55 - 8);
  v6 = MEMORY[0x1EEE9AC00](v55);
  v49 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v46[-v8];
  v9 = *a1;
  v10 = *(a1 + 4);
  v11 = *(a1 + 4);
  v48 = *(a1 + 3);
  v56 = v11;
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v12 = v64;
  v13 = v65;
  __swift_project_boxed_opaque_existential_1Tm(v63, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AB4D4720;
  v57 = sub_1AB0168A8(0, 25, 0, MEMORY[0x1E69E7CC0]);
  v15._object = 0x80000001AB509700;
  v15._countAndFlagsBits = 0xD000000000000018;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  if (v10)
  {
    v16 = 0;
    memset(v62, 0, 24);
  }

  else
  {
    LODWORD(v62[0]) = v9;
    v16 = MEMORY[0x1E69E72F0];
  }

  v62[3] = v16;
  sub_1AB01522C(v62, v58);
  v59 = 0u;
  v60 = 0u;
  sub_1AB0169C4(v58, &v59);
  v61 = 0;
  v17 = v57;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = v2;
  v47 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_1AB0168A8(0, *(v17 + 2) + 1, 1, v17);
  }

  v20 = *(v17 + 2);
  v19 = *(v17 + 3);
  if (v20 >= v19 >> 1)
  {
    v17 = sub_1AB0168A8((v19 > 1), v20 + 1, 1, v17);
  }

  *(v17 + 2) = v20 + 1;
  v21 = &v17[40 * v20];
  v22 = v59;
  v23 = v60;
  v21[64] = v61;
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  v57 = v17;
  sub_1AB014AC0(v62, &unk_1EB437E60);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  *(v14 + 32) = v57;
  Logger.info(_:)(v14, v12, v13);

  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  if (v56)
  {
    v25 = v10;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    sub_1AB2FB9D4();
    swift_allocError();
    *v26 = 0;
    return swift_willThrow();
  }

  v63[0] = v48;
  v63[1] = v56;
  v28 = v50;
  v29 = v51;
  (*(v50 + 104))(v5, *MEMORY[0x1E6968F70], v51);
  sub_1AB0273A8();
  v30 = v53;
  v31 = v49;
  sub_1AB45F754();
  (*(v28 + 8))(v5, v29);
  v32 = v54;
  v33 = v52;
  v34 = v55;
  (*(v54 + 32))(v52, v31, v55);
  v35 = objc_opt_self();
  v36 = [v35 defaultManager];
  sub_1AB45F6E4();
  v37 = sub_1AB460514();

  v38 = [v36 fileExistsAtPath_];

  if (v38)
  {
    v39 = [v35 defaultManager];
    v40 = sub_1AB45F654();
    v63[0] = 0;
    v41 = [v39 removeItemAtURL:v40 error:v63];

    if (!v41)
    {
      v45 = v63[0];
      sub_1AB45F594();

      swift_willThrow();
      return (*(v32 + 8))(v33, v34);
    }

    v42 = v63[0];
  }

  v43 = *(v30 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore + 24);
  v44 = *(v30 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore + 32);
  __swift_project_boxed_opaque_existential_1Tm((v30 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore), v43);
  (*(v44 + 48))(v47, v43, v44);
  return (*(v32 + 8))(v33, v34);
}

uint64_t JetPackAssetDiskCache._allCachedAssets.getter()
{
  v1[43] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E40);
  v1[44] = swift_task_alloc();
  v2 = type metadata accessor for JetPackAsset(0);
  v1[45] = v2;
  v1[46] = *(v2 - 8);
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB2FA40C, 0, 0);
}

uint64_t sub_1AB2FA40C()
{
  v45 = v0;
  v1 = (*(v0 + 344) + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  result = (*(v3 + 24))(v2, v3);
  v5 = result;
  v42 = *(result + 16);
  if (v42)
  {
    v6 = 0;
    v7 = result + 32;
    v38 = *(v0 + 368);
    v41 = (v0 + 280);
    v8 = MEMORY[0x1E69E7CC0];
    v39 = result;
    while (v6 < *(v5 + 16))
    {
      v11 = *(v0 + 352);
      v10 = *(v0 + 360);
      v13 = *(v7 + 16);
      v12 = *(v7 + 32);
      v14 = *v7;
      *(v0 + 64) = *(v7 + 48);
      *(v0 + 32) = v13;
      *(v0 + 48) = v12;
      *(v0 + 16) = v14;
      v15 = *(v7 + 16);
      v43[0] = *v7;
      v43[1] = v15;
      v43[2] = *(v7 + 32);
      v44 = *(v7 + 48);
      sub_1AB1F602C(v0 + 16, v0 + 72);
      sub_1AB05B578(v43, v11);
      if ((*(v38 + 48))(v11, 1, v10) == 1)
      {
        sub_1AB014AC0(*(v0 + 352), &qword_1EB437E40);
        if (qword_1EB435780 != -1)
        {
          swift_once();
        }

        sub_1AB4622E4();
        v16 = *(v0 + 152);
        v40 = *(v0 + 160);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 128), v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1AB4D4720;
        v18 = sub_1AB0168A8(0, 25, 0, MEMORY[0x1E69E7CC0]);
        if (("Retrieve Cached Asset" & 0x2F00000000000000) != 0x2000000000000000)
        {
          *(v0 + 272) = MEMORY[0x1E69E6158];
          *(v0 + 248) = 0xD000000000000018;
          *(v0 + 256) = 0x80000001AB509660;
          *(v0 + 168) = 0u;
          *(v0 + 184) = 0u;
          sub_1AB0169C4(v0 + 248, v0 + 168);
          *(v0 + 200) = 0;
          v20 = *(v18 + 2);
          v19 = *(v18 + 3);
          if (v20 >= v19 >> 1)
          {
            v18 = sub_1AB0168A8((v19 > 1), v20 + 1, 1, v18);
          }

          *(v18 + 2) = v20 + 1;
          v21 = &v18[40 * v20];
          v22 = *(v0 + 168);
          v23 = *(v0 + 184);
          v21[64] = *(v0 + 200);
          *(v21 + 2) = v22;
          *(v21 + 3) = v23;
        }

        if (*(v0 + 20))
        {
          v24 = v0 + 280;
          *v41 = 0uLL;
          *(v0 + 296) = 0uLL;
        }

        else
        {
          v31 = *(v0 + 16);
          *(v0 + 304) = MEMORY[0x1E69E72F0];
          *(v0 + 280) = v31;
          v24 = v0 + 280;
        }

        sub_1AB01522C(v24, v0 + 312);
        *(v0 + 208) = 0u;
        *(v0 + 224) = 0u;
        sub_1AB0169C4(v0 + 312, v0 + 208);
        *(v0 + 240) = 0;
        v33 = *(v18 + 2);
        v32 = *(v18 + 3);
        if (v33 >= v32 >> 1)
        {
          v18 = sub_1AB0168A8((v32 > 1), v33 + 1, 1, v18);
        }

        *(v18 + 2) = v33 + 1;
        v34 = &v18[40 * v33];
        v35 = *(v0 + 208);
        v36 = *(v0 + 224);
        v34[64] = *(v0 + 240);
        *(v34 + 2) = v35;
        *(v34 + 3) = v36;
        sub_1AB014AC0(v41, &unk_1EB437E60);
        *(v17 + 32) = v18;
        Logger.error(_:)(v17, v16, v40);
        sub_1AB2EF2C4(v0 + 16);

        result = __swift_destroy_boxed_opaque_existential_1Tm(v0 + 128);
        v5 = v39;
      }

      else
      {
        v26 = *(v0 + 384);
        v25 = *(v0 + 392);
        v27 = *(v0 + 376);
        v28 = *(v0 + 352);
        sub_1AB2EF2C4(v0 + 16);
        sub_1AB05DC04(v28, v27, type metadata accessor for JetPackAsset);
        sub_1AB05DC04(v27, v26, type metadata accessor for JetPackAsset);
        sub_1AB05DC04(v26, v25, type metadata accessor for JetPackAsset);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1AB2B11C4(0, v8[2] + 1, 1, v8);
        }

        v30 = v8[2];
        v29 = v8[3];
        if (v30 >= v29 >> 1)
        {
          v8 = sub_1AB2B11C4(v29 > 1, v30 + 1, 1, v8);
        }

        v9 = *(v0 + 392);
        v8[2] = v30 + 1;
        result = sub_1AB05DC04(v9, v8 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v30, type metadata accessor for JetPackAsset);
      }

      ++v6;
      v7 += 56;
      if (v42 == v6)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_24:

    v37 = *(v0 + 8);

    return v37(v8);
  }

  return result;
}

uint64_t sub_1AB2FA9CC()
{
  v35 = v0;
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  sub_1AB4622E4();
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  *(v0 + 96) = MEMORY[0x1E69E6158];
  strcpy((v0 + 72), "Emptying cache");
  *(v0 + 87) = -18;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  sub_1AB0169C4(v0 + 72, v5 + 32);
  *(v5 + 64) = 0;
  *(v4 + 32) = v5;
  Logger.info(_:)(v4, v3, v2);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v6 = *(v1 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore + 24);
  v7 = *(v1 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore + 32);
  __swift_project_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore), v6);
  v8 = (*(v7 + 24))(v6, v7);
  sub_1AB4622E4();
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v9);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AB4D4720;
  *&v33[0] = sub_1AB0168A8(0, 23, 0, MEMORY[0x1E69E7CC0]);
  v12._countAndFlagsBits = 0x20646E756F46;
  v12._object = 0xE600000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  v13 = *(v8 + 16);
  *(v0 + 152) = MEMORY[0x1E69E6530];
  *(v0 + 128) = v13;
  sub_1AB01522C(v0 + 128, v0 + 168);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  sub_1AB0169C4(v0 + 168, v0 + 72);
  *(v0 + 104) = 0;
  v14 = *&v33[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1AB0168A8(0, *(*&v33[0] + 16) + 1, 1, *&v33[0]);
  }

  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1AB0168A8((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v17 = &v14[40 * v16];
  v18 = *(v0 + 72);
  v19 = *(v0 + 88);
  v17[64] = *(v0 + 104);
  *(v17 + 2) = v18;
  *(v17 + 3) = v19;
  *&v33[0] = v14;
  sub_1AB014AC0(v0 + 128, &unk_1EB437E60);
  v20._object = 0x80000001AB509680;
  v20._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  *(v11 + 32) = v14;
  Logger.info(_:)(v11, v9, v10);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v21 = *(v8 + 16);
  if (v21)
  {
    v22 = v21 - 1;
    v23 = MEMORY[0x1E69E7CC0];
    for (i = 32; ; i += 56)
    {
      v26 = *(v8 + i + 16);
      v25 = *(v8 + i + 32);
      v27 = *(v8 + i);
      *(v0 + 64) = *(v8 + i + 48);
      *(v0 + 32) = v26;
      *(v0 + 48) = v25;
      *(v0 + 16) = v27;
      v28 = *(v8 + i + 16);
      v33[0] = *(v8 + i);
      v33[1] = v28;
      v33[2] = *(v8 + i + 32);
      v34 = *(v8 + i + 48);
      sub_1AB1F602C(v0 + 16, v0 + 72);
      sub_1AB2F9CE8(v33);
      sub_1AB2EF2C4(v0 + 16);
      if (!v22)
      {
        break;
      }

      --v22;
    }

    if (*(v23 + 16))
    {
      goto LABEL_13;
    }

LABEL_20:

    v31 = *(v0 + 8);
    goto LABEL_16;
  }

  v23 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_20;
  }

LABEL_13:
  sub_1AB1BA4A4();
  swift_allocError();
  v30 = v29;
  if (!*(v23 + 16))
  {
    sub_1AB40BED8("JetEngine/CompoundError.swift", 0x1DuLL, 2, 0x15uLL);
  }

  *v30 = v23;
  swift_willThrow();
  v31 = *(v0 + 8);
LABEL_16:

  return v31();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JetPackAssetDiskCache._beginTransaction()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore + 32);
  __swift_project_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore), v1);
  (*(v2 + 64))(v1, v2);
}

Swift::Void __swiftcall JetPackAssetDiskCache._endTransaction()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore + 32);
  __swift_project_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore), v1);
  (*(v2 + 72))(v1, v2);
}

uint64_t sub_1AB2FB290(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v6 = *(a1 + 3);
  v7 = *(a1 + 5);
  v5[0] = v1;
  v5[1] = v2;
  v5[2] = v3;
  return sub_1AB2F9CE8(v5);
}

uint64_t JetPackAssetDiskCache.deinit()
{
  v1 = OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_assetsURL;
  v2 = sub_1AB45F764();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore);
  return v0;
}

uint64_t sub_1AB2FB69C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027554;

  return JetPackAssetDiskCache._cache(_:)(a1, a2);
}

uint64_t sub_1AB2FB748(uint64_t a1)
{
  v2 = a1 + *(type metadata accessor for JetPackAsset(0) + 24);
  if ((*(v2 + 4) & 1) != 0 || (JetPackAssetDiskCache._evict(cacheID:)(*v2), !v3))
  {
    v4 = *(v1 + 8);
  }

  else
  {
    v4 = *(v1 + 8);
  }

  return v4();
}

uint64_t sub_1AB2FB7EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AB027554;

  return JetPackAssetDiskCache._empty()();
}

uint64_t sub_1AB2FB87C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AB200878;

  return JetPackAssetDiskCache._allCachedAssets.getter();
}

uint64_t sub_1AB2FB90C()
{
  v1 = (*v0 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  return (*(v3 + 64))(v2, v3);
}

uint64_t sub_1AB2FB974()
{
  v1 = (*v0 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  return (*(v3 + 72))(v2, v3);
}

unint64_t sub_1AB2FB9D4()
{
  result = qword_1EB43A8F8;
  if (!qword_1EB43A8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A8F8);
  }

  return result;
}

unint64_t sub_1AB2FBA2C()
{
  result = qword_1EB43A900;
  if (!qword_1EB43A900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A900);
  }

  return result;
}

unint64_t sub_1AB2FBB00()
{
  result = qword_1EB43A908;
  if (!qword_1EB43A908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A908);
  }

  return result;
}

ValueMetadata *actionTableFromUserInfo(_:)(uint64_t a1)
{
  result = sub_1AB3098DC(0xD000000000000023, 0x80000001AB500830, a1);
  if (!result)
  {
    return &type metadata for EmptyActionKindTable;
  }

  return result;
}

uint64_t decodeActionModel<A, B>(using:container:forKey:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CodeByKind();
  sub_1AB461B04();
  swift_getWitnessTable();
  sub_1AB461A54();
  if (v1)
  {
    sub_1AB461A04();
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v5 = sub_1AB462214();
    sub_1AB309E20(0xD000000000000027, 0x80000001AB4FFF70, v5, &v13);

    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    sub_1AB014A58(&v13, v10, &qword_1EB436EC0);
    v6 = v11;
    if (v11)
    {
      v7 = v12;
      __swift_project_boxed_opaque_existential_1Tm(v10, v11);
      MetatypeMetadata = swift_getMetatypeMetadata();
      (*(v7 + 8))(MetatypeMetadata, v1, v6, v7);

      sub_1AB014AC0(&v13, &qword_1EB436EC0);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v10);
    }

    else
    {
      sub_1AB014AC0(&v13, &qword_1EB436EC0);

      result = sub_1AB014AC0(v10, &qword_1EB436EC0);
    }

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else if (*(&v14 + 1))
  {
    sub_1AB01494C(&v13, a1);
    return (*(*(v3 - 8) + 8))(&v13, v3);
  }

  else
  {
    v9 = sub_1AB461354();
    result = (*(*(v9 - 8) + 8))(&v13, v9);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t encodeActionModel<A, B>(_:using:container:forKey:)(uint64_t a1)
{
  sub_1AB014A58(a1, &v4, &qword_1EB43A788);
  if (!v5)
  {
    return sub_1AB014AC0(&v4, &qword_1EB43A788);
  }

  sub_1AB0149B0(&v4, v6);
  sub_1AB01494C(v6, v3);
  CodeByKind.init(wrappedValue:)(v3, &v4);
  sub_1AB461C14();
  v1 = type metadata accessor for CodeByKind();
  swift_getWitnessTable();
  sub_1AB461BF4();
  (*(*(v1 - 8) + 8))(&v4, v1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

unint64_t sub_1AB2FBFD8()
{
  result = sub_1AB1DA514(MEMORY[0x1E69E7CC0]);
  qword_1EB46C310 = result;
  return result;
}

uint64_t sub_1AB2FC000()
{
  if (qword_1EB435DA0 != -1)
  {
    swift_once();
  }
}

double ComponentModel.contextMenu.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t ComponentTypes.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43A910);
  swift_getTupleTypeMetadata2();
  v7 = sub_1AB4609A4();
  v8 = sub_1AB06D700(v7, a1, v6, a2);

  a3[2] = v8;
  return result;
}

uint64_t ComponentTypes.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43A910);
  swift_getTupleTypeMetadata2();
  v9 = sub_1AB4609A4();
  v10 = sub_1AB06D700(v9, a3, v8, a4);

  a5[2] = v10;
  return result;
}

uint64_t ComponentTypes.registering(_:toKind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a4 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v12 = *(v5 + 16);
  *a5 = *v5;
  *(a5 + 16) = v12;
  (*(v13 + 16))(v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v10);
  v16[1] = a1;
  v16[2] = a2;
  v16[3] = a3;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43A910);
  sub_1AB4603C4();
  return sub_1AB460424();
}

void ComponentTypes.makeInstance(ofKind:byDeserializing:using:)(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v70 = a1;
  v57 = a3;
  v5 = sub_1AB4616B4();
  v56 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - v9;
  v11 = *a2;
  v12 = *v3;
  v58 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A910);
  sub_1AB460414();
  v13 = v64;
  if (v64)
  {
    v15 = v65;
    v14 = v66;
    goto LABEL_3;
  }

  v55 = v10;
  v54 = v7;
  if (!v12)
  {
    goto LABEL_14;
  }

  v18 = (*(v58 + 16))(v12);
  sub_1AB4608B4();
  if (!*(v18 + 16))
  {

    goto LABEL_13;
  }

  v19 = sub_1AB014DB4(v64, v65);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_13:

LABEL_14:
    sub_1AB4608B4();
    v30 = v64;
    v31 = v65;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A918) | 0x6000000000000000;
    sub_1AB163664();
    swift_allocError();
    *v33 = v30;
    v33[1] = v31;
    v33[2] = v32;
    v33[3] = 0;
LABEL_15:
    swift_willThrow();
    return;
  }

  v22 = *(*(v18 + 56) + 16 * v19);

  v23 = dynamic_cast_existential_2_conditional(v22);
  if (v23)
  {
    v13 = v23;
    v15 = v24;
    v14 = v25;
LABEL_3:
    sub_1AB0B9254(v70, v61);
    v60[0] = v11;
    v16 = *(v14 + 8);
    *&v67 = v13;
    *(&v67 + 1) = v15;
    v68 = v14;
    __swift_allocate_boxed_opaque_existential_0(&v64);

    v17 = v59;
    v16(v61, v60, v13, v14);
    if (v17)
    {
      __swift_deallocate_boxed_opaque_existential_2(&v64);
    }

    else
    {
      v59 = v67;
      v26 = v67;
      v27 = __swift_project_boxed_opaque_existential_1Tm(&v64, v67);
      v28 = v57;
      *(v57 + 24) = v59;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v28);
      (*(*(v26 - 8) + 16))(boxed_opaque_existential_0, v27, v26);
      __swift_destroy_boxed_opaque_existential_1Tm(&v64);
    }

    return;
  }

  v36 = dynamic_cast_existential_2_conditional(v22);
  v37 = v59;
  if (!v36)
  {
    sub_1AB163664();
    swift_allocError();
    v47 = MEMORY[0x1E69E7CC0];
    *v48 = v22;
    v48[1] = v47;
    v48[2] = 0;
    v48[3] = 0;
    goto LABEL_15;
  }

  v38 = v34;
  v39 = v35;
  sub_1AB0B9254(v70, &v64);
  v61[0] = v11;

  v68 = _sSD9JetEngines17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v61);
  v69 = MEMORY[0x1E69E7CC0];
  v60[3] = &type metadata for _JSONObjectDecoder;
  v60[4] = sub_1AB0BB6F8();
  v60[0] = swift_allocObject();
  sub_1AB0BB74C(&v64, v60[0] + 16);
  *&v62 = v36;
  *(&v62 + 1) = v38;
  v63 = v39;
  __swift_allocate_boxed_opaque_existential_0(v61);
  sub_1AB460E14();
  if (v37)
  {
    sub_1AB0BCB6C(&v64);
    __swift_deallocate_boxed_opaque_existential_2(v61);
    v64 = v37;
    v40 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    v41 = v55;
    if (swift_dynamicCast())
    {

      v42 = v56;
      v43 = v54;
      (*(v56 + 32))(v54, v41, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439F50);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1AB4D4720;
      *(v44 + 32) = swift_allocError();
      (*(v42 + 16))(v45, v43, v5);
      sub_1AB163664();
      swift_allocError();
      *v46 = v36;
      v46[1] = v44;
      v46[2] = 0;
      v46[3] = 0;
      swift_willThrow();
      (*(v42 + 8))(v43, v5);
    }
  }

  else
  {
    v59 = v62;
    v49 = v62;
    v50 = __swift_project_boxed_opaque_existential_1Tm(v61, v62);
    v51 = v57;
    *(v57 + 24) = v59;
    v52 = __swift_allocate_boxed_opaque_existential_0(v51);
    (*(*(v49 - 8) + 16))(v52, v50, v49);
    sub_1AB0BCB6C(&v64);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
  }
}

uint64_t sub_1AB2FCA20()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

JetEngine::PreferenceNamespace __swiftcall PreferenceNamespace.appending(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = v1;
  v7 = *v2;
  v6 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AB4D47F0;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *(v8 + 48) = countAndFlagsBits;
  *(v8 + 56) = object;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590);
  sub_1AB027E20();
  v9 = sub_1AB460484();
  v11 = v10;

  *v5 = v9;
  v5[1] = v11;
  result.rawValue._object = v13;
  result.rawValue._countAndFlagsBits = v12;
  return result;
}

uint64_t PreferenceNamespace.description.getter()
{
  v1 = *v0;

  return v1;
}

JetEngine::PreferenceNamespace __swiftcall PreferenceNamespace.init(subsystem:)(Swift::String subsystem)
{
  object = subsystem._object;
  countAndFlagsBits = subsystem._countAndFlagsBits;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  *(v5 + 32) = countAndFlagsBits;
  *(v5 + 40) = object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590);
  sub_1AB027E20();
  v6 = sub_1AB460484();
  v8 = v7;

  *v4 = v6;
  v4[1] = v8;
  result.rawValue._object = v10;
  result.rawValue._countAndFlagsBits = v9;
  return result;
}

uint64_t static PreferenceNamespace.jetEngine.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ED4D19D8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *algn_1ED4D19E8;
  *a1 = qword_1ED4D19E0;
  a1[1] = v2;
}

JetEngine::PreferenceNamespace __swiftcall PreferenceNamespace.init()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590);
  sub_1AB027E20();
  v2 = sub_1AB460484();
  *v1 = v2;
  v1[1] = v3;
  result.rawValue._object = v3;
  result.rawValue._countAndFlagsBits = v2;
  return result;
}

JetEngine::PreferenceNamespace __swiftcall PreferenceNamespace.init(components:)(Swift::OpaquePointer components)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590);
  sub_1AB027E20();
  v3 = sub_1AB460484();
  v5 = v4;

  *v2 = v3;
  v2[1] = v5;
  result.rawValue._object = v7;
  result.rawValue._countAndFlagsBits = v6;
  return result;
}

JetEngine::PreferenceNamespace __swiftcall PreferenceNamespace.init(subsystem:category:)(Swift::String subsystem, Swift::String category)
{
  object = category._object;
  countAndFlagsBits = category._countAndFlagsBits;
  v5 = subsystem._object;
  v6 = subsystem._countAndFlagsBits;
  v7 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AB4D47F0;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = countAndFlagsBits;
  *(v8 + 56) = object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590);
  sub_1AB027E20();
  v9 = sub_1AB460484();
  v11 = v10;

  *v7 = v9;
  v7[1] = v11;
  result.rawValue._object = v13;
  result.rawValue._countAndFlagsBits = v12;
  return result;
}

JetEngine::PreferenceNamespace __swiftcall PreferenceNamespace.init(subsystem:category:version:)(Swift::String subsystem, Swift::String category, Swift::Int version)
{
  object = category._object;
  countAndFlagsBits = category._countAndFlagsBits;
  v6 = subsystem._object;
  v7 = subsystem._countAndFlagsBits;
  v8 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AB4D4190;
  *(v9 + 32) = v7;
  *(v9 + 40) = v6;
  *(v9 + 48) = countAndFlagsBits;
  *(v9 + 56) = object;
  *(v9 + 64) = sub_1AB461C44();
  *(v9 + 72) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590);
  sub_1AB027E20();
  v11 = sub_1AB460484();
  v13 = v12;

  *v8 = v11;
  v8[1] = v13;
  result.rawValue._object = v15;
  result.rawValue._countAndFlagsBits = v14;
  return result;
}

JetEngine::PreferenceNamespace __swiftcall PreferenceNamespace.appending(_:)(Swift::Int a1)
{
  v3 = v1;
  v5 = *v2;
  v4 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AB4D47F0;
  *(v6 + 32) = v5;
  *(v6 + 40) = v4;

  *(v6 + 48) = sub_1AB461C44();
  *(v6 + 56) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590);
  sub_1AB027E20();
  v8 = sub_1AB460484();
  v10 = v9;

  *v3 = v8;
  v3[1] = v10;
  result.rawValue._object = v12;
  result.rawValue._countAndFlagsBits = v11;
  return result;
}

JetEngine::PreferenceNamespace __swiftcall PreferenceNamespace.appending(_:)(JetEngine::PreferenceNamespace a1)
{
  v3 = v1;
  v5 = *a1.rawValue._countAndFlagsBits;
  v4 = *(a1.rawValue._countAndFlagsBits + 8);
  v7 = *v2;
  v6 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AB4D47F0;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *(v8 + 48) = v5;
  *(v8 + 56) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590);
  sub_1AB027E20();
  v9 = sub_1AB460484();
  v11 = v10;

  *v3 = v9;
  v3[1] = v11;
  result.rawValue._object = v13;
  result.rawValue._countAndFlagsBits = v12;
  return result;
}

uint64_t static PreferenceNamespace.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1AB461DA4();
  }
}

uint64_t ActionOutcome.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

unint64_t sub_1AB2FD2D4()
{
  result = qword_1EB43A920;
  if (!qword_1EB43A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A920);
  }

  return result;
}

double sub_1AB2FD33C(double a1, double a2, double a3, double a4)
{
  v6 = a1;
  v7 = a1 / a3;
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v7;
  }

  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a2 / a4;
  }

  v10 = sub_1AB460544();
  v12 = v11;
  if (v10 == sub_1AB460544() && v12 == v13)
  {
  }

  else
  {
    v14 = sub_1AB461DA4();

    if ((v14 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (v6 == a2)
  {
    return floor(v6);
  }

LABEL_12:
  v15 = sub_1AB460544();
  v17 = v16;
  if (v15 == sub_1AB460544() && v17 == v18)
  {

    return floor(v6);
  }

  v19 = sub_1AB461DA4();

  if (v19)
  {
    return floor(v6);
  }

  v20 = sub_1AB460544();
  v22 = v21;
  if (v20 == sub_1AB460544() && v22 == v23)
  {

LABEL_20:
    v6 = a3;
    return floor(v6);
  }

  v24 = sub_1AB461DA4();

  if (v24)
  {
    goto LABEL_20;
  }

  v26 = v9 * a3;
  v27 = sub_1AB460544();
  v29 = v28;
  if (v27 == sub_1AB460544() && v29 == v30)
  {

    goto LABEL_26;
  }

  v31 = sub_1AB461DA4();

  if (v31)
  {
LABEL_26:
    if (v8 >= v9)
    {
      v6 = v26;
    }

    return floor(v6);
  }

  if (v8 < v9)
  {
    v6 = v26;
  }

  return floor(v6);
}

uint64_t sub_1AB2FD5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A940);
  a3[4] = &off_1F200D628;
  *a3 = a1;
  a3[1] = a2;
}

uint64_t AMSMetricsIdentifierFieldsProvider.addMetricsFields(into:using:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v97 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v93 = (&v89 - v6);
  v98 = sub_1AB4601C4();
  v92 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v94 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v89 - v9;
  v11 = *a2;
  v12 = sub_1AB0BA124(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A928);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  v14 = (v13 + 24);
  v99 = v13;
  *(v13 + 16) = v12;
  v15 = sub_1AB1A5BB8(0xD000000000000040, 0x80000001AB505E40, v11);
  if (v15 == 2)
  {
    v16 = *(v3 + 88);
  }

  else
  {
    v16 = v15;
  }

  v17 = sub_1AB1A6FD0(0xD000000000000029, 0x80000001AB505DD0, v11);
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = *(v3 + 80);
  }

  if (*v3 != 1)
  {
    *&v100 = v11;
    v40 = sub_1AB2FEA70(&v100);
    goto LABEL_14;
  }

  v95 = v18;
  v96 = v14;
  v19 = *(v3 + 8);
  if (v19)
  {
    v20 = *(v3 + 16);
    if (v20)
    {
      swift_unknownObjectRetain();

      v21 = sub_1AB080F70(0xD000000000000019, 0x80000001AB4FF760, v11);
      if (v22)
      {
        v91 = v19;
        (*(v3 + 96))(&v100, v21);

        if (*(&v101 + 1))
        {

          sub_1AB0149B0(&v100, &v112);
          v23 = dispatch_group_create();
          dispatch_group_enter(v23);
          sub_1AB01494C(&v112, &v108);
          sub_1AB2FFADC(v3, &v100);
          v24 = swift_allocObject();
          sub_1AB0149B0(&v108, v24 + 16);
          *(v24 + 56) = v20;
          v25 = v104;
          *(v24 + 128) = v103;
          *(v24 + 144) = v25;
          *(v24 + 160) = v105;
          v26 = v101;
          *(v24 + 64) = v100;
          *(v24 + 80) = v26;
          v27 = v102[1];
          *(v24 + 96) = v102[0];
          *(v24 + 112) = v27;
          *(v24 + 176) = v91;
          *(v24 + 184) = v16 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437538);
          v28 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
          v29 = swift_allocObject();
          *(v29 + 16) = 0;
          *(v28 + 16) = v29;
          *(v28 + 24) = MEMORY[0x1E69E7CC0];
          *(v28 + 32) = 0;
          v30 = sub_1AB460BE4();
          (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
          v31 = swift_allocObject();
          v31[2] = 0;
          v31[3] = 0;
          v31[4] = &unk_1AB4E9E40;
          v31[5] = v24;
          v95 = v28;
          v31[6] = v28;
          swift_unknownObjectRetain();

          sub_1AB39BBA8(0, 0, v10, &unk_1AB4E9E48, v31);

          v32 = swift_allocObject();
          v33 = v99;
          *(v32 + 16) = v99;
          *(v32 + 24) = v23;
          v34 = swift_allocObject();
          *(v34 + 16) = v23;
          v35 = sub_1AB016760(0, &qword_1ED4D2060);
          v36 = v92;
          v37 = v94;
          v38 = v98;
          (*(v92 + 104))(v94, *MEMORY[0x1E69E7F98], v98);
          v93 = v23;

          v39 = sub_1AB461164();
          (*(v36 + 8))(v37, v38);
          v109 = v35;
          v110 = &protocol witness table for OS_dispatch_queue;
          *&v108 = v39;
          *&v100 = sub_1AB2FFCB8;
          *(&v100 + 1) = v32;
          *&v101 = sub_1AB2FFCC0;
          *(&v101 + 1) = v34;
          sub_1AB01494C(&v108, v102);
          BYTE8(v103) = 0;

          sub_1AB1942DC(&v100);
          swift_unknownObjectRelease();

          sub_1AB014AC0(&v100, &unk_1EB4377E0);
          __swift_destroy_boxed_opaque_existential_1Tm(&v112);
          __swift_destroy_boxed_opaque_existential_1Tm(&v108);
          v14 = v96;
          goto LABEL_46;
        }

        swift_unknownObjectRelease();
        sub_1AB014AC0(&v100, &qword_1EB43A930);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }

  *&v100 = v11;
  v94 = sub_1AB2FEA70(&v100);
  v41 = *(v3 + 96);
  v42 = sub_1AB080F70(0xD000000000000019, 0x80000001AB4FF760, v11);
  v41(&v112, v42);

  if (!*(&v113 + 1))
  {
    sub_1AB014AC0(&v112, &qword_1EB43A930);
    v33 = v99;
    v18 = v95;
    v14 = v96;
LABEL_44:
    v40 = v94;
    goto LABEL_45;
  }

  sub_1AB0149B0(&v112, &v100);
  v43 = [*(v3 + 64) bundleIdentifier];
  v33 = v99;
  v18 = v95;
  v14 = v96;
  if (!v43)
  {
LABEL_43:
    __swift_destroy_boxed_opaque_existential_1Tm(&v100);
    goto LABEL_44;
  }

  v44 = v43;
  v45 = sub_1AB460544();
  v47 = v46;

  if (v45 != 0x6C7070612E6D6F63 || v47 != 0xEF64656D61672E65)
  {
    v48 = sub_1AB461DA4();

    if (v48)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

LABEL_24:
  if (v18 >> 62)
  {
LABEL_69:
    v49 = sub_1AB4618F4();
    v40 = v94;
    if (!v49)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v49 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v40 = v94;
    if (!v49)
    {
      goto LABEL_65;
    }
  }

  v50 = 0;
  v91 = v49;
  v92 = v18 & 0xC000000000000001;
  v90 = v18 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v92)
    {
      v51 = MEMORY[0x1AC59C990](v50, v18);
      v52 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v50 >= *(v90 + 16))
      {
        goto LABEL_68;
      }

      v51 = *(v18 + 8 * v50 + 32);
      v52 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_67;
      }
    }

    if (qword_1EB432E98 != -1)
    {
      v66 = v51;
      swift_once();
      v51 = v66;
    }

    v53 = qword_1EB432EA0;
    v98 = v51;
    v54 = [v51 name];
    v55 = sub_1AB460544();
    v57 = v56;

    v58 = [v53 name];
    v59 = sub_1AB460544();
    v61 = v60;

    if (v55 == v59 && v57 == v61)
    {
      break;
    }

    v63 = sub_1AB461DA4();

    v14 = v96;
    v62 = v98;
    if (v63)
    {
      goto LABEL_40;
    }

LABEL_27:

    ++v50;
    v40 = v94;
    v18 = v95;
    if (v52 == v91)
    {
      goto LABEL_65;
    }
  }

  v14 = v96;
  v62 = v98;
LABEL_40:
  v64 = [v62 crossDeviceSync];
  if (v64 != [v53 crossDeviceSync])
  {
    goto LABEL_27;
  }

  v65 = [v62 isActiveITunesAccountRequired];
  if (v65 != [v53 isActiveITunesAccountRequired])
  {
    goto LABEL_27;
  }

  v85 = *&v102[0];
  __swift_project_boxed_opaque_existential_1Tm(&v100, *(&v101 + 1));
  if (qword_1EB435648 != -1)
  {
    swift_once();
  }

  v86 = qword_1EB435650;
  *(&v113 + 1) = type metadata accessor for Unstable.Accounts();
  v114 = &protocol witness table for Unstable.Accounts;
  *&v112 = v86;
  v87 = *(v85 + 24);
  sub_1AB016760(0, &qword_1EB434418);

  v88 = v98;
  v40 = v94;
  v87(v98, &v112);

  __swift_destroy_boxed_opaque_existential_1Tm(&v112);
  v18 = v95;
LABEL_65:
  __swift_destroy_boxed_opaque_existential_1Tm(&v100);
LABEL_14:
  v33 = v99;
LABEL_45:
  os_unfair_lock_lock(v14);

  v67 = sub_1AB45F9B4();
  v68 = v93;
  (*(*(v67 - 8) + 56))(v93, 1, 1, v67);
  v69 = sub_1AB19BCE8(v18, v68, 1, 0);
  sub_1AB014AC0(v68, &qword_1EB4395E0);
  *(v33 + 16) = v69;
  os_unfair_lock_unlock(v14);

LABEL_46:
  v18 = &v112;
  os_unfair_lock_lock(v14);
  v70 = *(v33 + 16);

  os_unfair_lock_unlock(v14);
  v71 = 0;
  v72 = v70 + 64;
  v73 = 1 << *(v70 + 32);
  v74 = -1;
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  v75 = v74 & *(v70 + 64);
  v76 = (v73 + 63) >> 6;
  v98 = v70;
  if (!v75)
  {
LABEL_50:
    while (1)
    {
      v14 = (&v71->_os_unfair_lock_opaque + 1);
      if (__OFADD__(v71, 1))
      {
        break;
      }

      if (v14 >= v76)
      {
      }

      v75 = *(v72 + 8 * v14);
      v71 = (v71 + 1);
      if (v75)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  while (1)
  {
    while (1)
    {
      v14 = v71;
LABEL_53:
      v77 = __clz(__rbit64(v75));
      v75 &= v75 - 1;
      v78 = v77 | (v14 << 6);
      sub_1AB02B4BC(*(v70 + 48) + 40 * v78, &v100);
      sub_1AB0165C4(*(v70 + 56) + 32 * v78, v102 + 8);
      v112 = v100;
      v113 = v101;
      v114 = *&v102[0];
      sub_1AB014B78((v102 + 8), v115);
      sub_1AB014A58(&v112, &v108, &qword_1EB438C58);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_1AB014AC0(&v112, &qword_1EB438C58);
      __swift_destroy_boxed_opaque_existential_1Tm(v111);
      v71 = v14;
      if (!v75)
      {
        goto LABEL_50;
      }
    }

    v79 = v106;
    v80 = v107;
    __swift_destroy_boxed_opaque_existential_1Tm(v111);
    v81 = *(v97 + 24);
    v82 = *(v97 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v97, v81);
    v83 = v116;
    (*(v82 + 16))(v115, v79, v80, v81, v82);
    sub_1AB014AC0(&v112, &qword_1EB438C58);
    v116 = v83;
    if (v83)
    {
      break;
    }

    v71 = v14;
    v70 = v98;
    v18 = &v112;
    if (!v75)
    {
      goto LABEL_50;
    }
  }
}

uint64_t sub_1AB2FE34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 96) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  *(v6 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB2FE3F4, 0, 0);
}

uint64_t sub_1AB2FE3F4()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1Tm(v4, v5);
  v7 = *(v3 + 64);
  *(v0 + 16) = v2;
  v8 = sub_1AB45F9B4();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v14 = (*(v6 + 8) + **(v6 + 8));
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_1AB2FE5A0;
  v10 = *(v0 + 64);
  v11 = *(v0 + 96);
  v12 = *(v0 + 40);

  return v14(v12, v3 + 24, v7, v0 + 16, v11, v10, v5, v6);
}

uint64_t sub_1AB2FE5A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    sub_1AB014AC0(*(v4 + 64), &qword_1EB4395E0);
    v5 = sub_1AB2FE764;
  }

  else
  {
    v6 = *(v4 + 64);
    *(v4 + 88) = a1;
    sub_1AB014AC0(v6, &qword_1EB4395E0);
    v5 = sub_1AB2FE6F4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AB2FE6F4()
{
  **(v0 + 24) = *(v0 + 88);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB2FE764()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1AB2FE7C8(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v5 = *a1;
  os_unfair_lock_lock((a2 + 24));

  *(a2 + 16) = v5;

  os_unfair_lock_unlock((a2 + 24));

  dispatch_group_leave(a3);
}

void sub_1AB2FE830(uint64_t a1, NSObject *a2)
{
  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED4D1FC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  v21 = sub_1AB0168A8(0, 40, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001AB509880;
  v5._countAndFlagsBits = 0xD000000000000027;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  swift_getErrorValue();
  v20[3] = v19;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_0, v18, v19);
  sub_1AB014A58(v20, v14, &unk_1EB437E60);
  v15 = 0u;
  v16 = 0u;
  sub_1AB0169C4(v14, &v15);
  v17 = 0;
  v7 = v21;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AB0168A8(0, *(v7 + 2) + 1, 1, v7);
    v21 = v7;
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[40 * v9];
  v11 = v15;
  v12 = v16;
  v10[64] = v17;
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  v21 = v7;
  sub_1AB014AC0(v20, &unk_1EB437E60);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v4 + 32) = v21;
  *&v15 = v3;
  LOBYTE(v20[0]) = 0;
  OSLogger.log(contentsOf:withLevel:)(v4, v20);

  dispatch_group_leave(a2);
}

id sub_1AB2FEA70(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = [objc_allocWithZone(MEMORY[0x1E698CA20]) init];
  v5 = *(v1 + 6);
  v6 = *(v1 + 7);
  __swift_project_boxed_opaque_existential_1Tm(v1 + 3, v5);
  (*(v6 + 8))(v21, v5, v6);
  v7 = v21[0];
  [v4 setAccount_];

  [v4 setClientInfo_];
  [v4 setIsActiveITunesAccountRequired_];
  v8 = *(v2 + 2);
  if (v8 && (v9 = sub_1AB080F70(0xD000000000000019, 0x80000001AB4FF760, v3), v10) && (v20 = 0, sub_1AB3ACFF8(v9, v10, &v20, v8, v21), , v21[1]))
  {
    v11 = v22;
    v12 = *&v21[4];
    v13 = sub_1AB460514();
    [v4 setDomain_];

    sub_1AB014AC0(v21, &qword_1EB439238);
    if (v11)
    {
      v12 = v2[9];
    }

    [v4 setResetInterval_];
  }

  else
  {
    sub_1AB080F70(0xD00000000000002BLL, 0x80000001AB505DA0, v3);
    if (v14)
    {
      v15 = sub_1AB460514();
    }

    else
    {
      v15 = 0;
    }

    [v4 setDomain_];

    v16 = sub_1AB1A5740(0xD000000000000032, 0x80000001AB505E00, v3);
    if (v17)
    {
      v18 = v2[9];
    }

    else
    {
      v18 = *&v16;
    }

    [v4 setResetInterval_];
  }

  return v4;
}

uint64_t AMSMetricsIdentifierFieldsProvider.init(accountProvider:process:bag:shouldMigrate:eventRecorder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  sub_1AB01494C(a1, v17);
  if (qword_1EB4334F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EB4334F8;
  sub_1AB01494C(v17, v16);
  *(a6 + 8) = v11;
  *(a6 + 16) = 0;
  *a6 = a4 & 1;
  sub_1AB01494C(v16, a6 + 24);
  *(a6 + 64) = a2;
  *(a6 + 72) = 0x416DA9C000000000;
  *(a6 + 80) = v12;
  *(a6 + 88) = 0;
  *(a6 + 96) = sub_1AB2FD5D8;
  *(a6 + 104) = 0;
  *&v15 = v11;
  swift_unknownObjectRetain_n();

  v13 = sub_1AB3AF064(&v15);
  swift_unknownObjectRelease();
  sub_1AB014AC0(a5, &qword_1EB43A938);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v17);
  *(a6 + 16) = v13;
  return result;
}

uint64_t AMSMetricsIdentifierFieldsProvider.init(accountProvider:process:bag:shouldMigrate:resetInterval:eventRecorder:keys:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v15 = *a3;
  sub_1AB01494C(a1, v20);
  sub_1AB01494C(v20, v19);
  *(a7 + 8) = v15;
  *(a7 + 16) = 0;
  *a7 = a4;
  sub_1AB01494C(v19, a7 + 24);
  *(a7 + 64) = a2;
  *(a7 + 72) = a8;
  *(a7 + 80) = a6;
  *(a7 + 88) = 0;
  *(a7 + 96) = sub_1AB2FD5D8;
  *(a7 + 104) = 0;
  if (v15)
  {
    *&v18 = v15;
    swift_unknownObjectRetain_n();
    v16 = sub_1AB3AF064(&v18);
    swift_unknownObjectRelease();
    sub_1AB014AC0(a5, &qword_1EB43A938);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v20);
    *(a7 + 16) = v16;
  }

  else
  {
    sub_1AB014AC0(a5, &qword_1EB43A938);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    return __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  return result;
}

uint64_t AMSMetricsIdentifierFieldsProvider.init(accountProvider:process:bag:shouldMigrate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  sub_1AB01494C(a1, v15);
  if (qword_1EB4334F0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EB4334F8;
  sub_1AB01494C(v15, v14);
  *(a5 + 8) = v9;
  *(a5 + 16) = 0;
  *a5 = a4 & 1;
  sub_1AB01494C(v14, a5 + 24);
  *(a5 + 64) = a2;
  *(a5 + 72) = 0x416DA9C000000000;
  *(a5 + 80) = v10;
  *(a5 + 88) = 0;
  *(a5 + 96) = sub_1AB2FD5D8;
  *(a5 + 104) = 0;
  *&v13 = v9;
  swift_unknownObjectRetain_n();

  v11 = sub_1AB3AF064(&v13);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v15);
  *(a5 + 16) = v11;
  return result;
}

uint64_t AMSMetricsIdentifierFieldsProvider.init(accountProvider:process:bag:shouldMigrate:resetInterval:keys:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v13 = *a3;
  sub_1AB01494C(a1, v18);
  sub_1AB01494C(v18, v17);
  *(a6 + 8) = v13;
  *(a6 + 16) = 0;
  *a6 = a4;
  sub_1AB01494C(v17, a6 + 24);
  *(a6 + 64) = a2;
  *(a6 + 72) = a7;
  *(a6 + 80) = a5;
  *(a6 + 88) = 0;
  *(a6 + 96) = sub_1AB2FD5D8;
  *(a6 + 104) = 0;
  if (v13)
  {
    *&v16 = v13;
    swift_unknownObjectRetain_n();
    v14 = sub_1AB3AF064(&v16);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v18);
    *(a6 + 16) = v14;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    return __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  return result;
}

uint64_t AMSMetricsIdentifierFieldsProvider.init(accounts:clientInfo:resetInterval:keys:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v12[3] = type metadata accessor for Unstable.Accounts();
  v12[4] = &protocol witness table for Unstable.Accounts;
  v12[0] = a1;
  sub_1AB01494C(v12, v11);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  sub_1AB01494C(v11, a4 + 24);
  *(a4 + 64) = a2;
  *(a4 + 72) = a5;
  *(a4 + 80) = a3;
  *(a4 + 88) = 0;
  *(a4 + 96) = sub_1AB2FD5D8;
  *(a4 + 104) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t sub_1AB2FFB14(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 176);
  v6 = *(v1 + 184);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AB027460;

  return sub_1AB2FE34C(a1, v1 + 16, v4, v1 + 64, v5, v6);
}

uint64_t sub_1AB2FFBDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AB027460;

  return sub_1AB398CE4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1AB2FFCC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AB2FFD10(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

unint64_t sub_1AB2FFD6C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  qword_1EB43A960 = sub_1AB303A6C();
  result = sub_1AB303AB8();
  qword_1EB43A968 = result;
  qword_1EB43A948 = v0;
  return result;
}

uint64_t static MediaArtwork._nullCachedImagesKey.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_1EB435DA8 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_1AB01494C(&qword_1EB43A948, v1);
}

uint64_t MediaArtwork.init(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB01494C(a1, v20);
  v4 = v21;
  v5 = v22;
  __swift_project_boxed_opaque_existential_1Tm(v20, v21);
  v6 = (*(v5 + 24))(v4, v5);
  v7 = v21;
  v8 = v22;
  __swift_project_boxed_opaque_existential_1Tm(v20, v21);
  v9 = (*(v8 + 32))(v7, v8);
  LOBYTE(v8) = v10;
  v11 = v21;
  v12 = v22;
  __swift_project_boxed_opaque_existential_1Tm(v20, v21);
  v13 = (*(v12 + 40))(v11, v12);
  v14 = v21;
  v15 = v22;
  __swift_project_boxed_opaque_existential_1Tm(v20, v21);
  v16 = (*(v15 + 48))(v14, v15);
  v18 = v17;
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  *a2 = v6;
  *(a2 + 8) = v9;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v13;
  *(a2 + 32) = v16;
  *(a2 + 40) = v18;
  return sub_1AB0149B0(a1, a2 + 48);
}

uint64_t MediaArtwork.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = &_s20_AppleServicesSourceVN;
  v5 = &off_1EE764B50;
  *&v3 = a1;
  return MediaArtwork.init(_:)(&v3, a2);
}

uint64_t MediaArtwork.init(urlTemplate:sourceImageSize:colors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v9 = &_s20_AppleServicesSourceVN;
  v10 = &off_1EE764B50;
  *&v8 = sub_1AB34C8AC(a1, a2, a3, a5, a6);
  return MediaArtwork.init(_:)(&v8, a4);
}

uint64_t MediaArtwork.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = _s10_URLSourceVMa();
  v10 = &off_1EE764B00;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v8);
  v5 = sub_1AB45F764();
  v6 = *(v5 - 8);
  (*(v6 + 16))(boxed_opaque_existential_0, a1, v5);
  MediaArtwork.init(_:)(&v8, a2);
  return (*(v6 + 8))(a1, v5);
}

uint64_t MediaArtwork.init()@<X0>(uint64_t a1@<X8>)
{
  v3 = &_s12_EmptySourceVN;
  v4 = &off_1EE764AB0;
  return MediaArtwork.init(_:)(&v2, a1);
}

uint64_t MediaArtwork.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v113 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A970);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v112 - v6;
  v8 = _s10_URLSourceVMa();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = a1;
  sub_1AB0B9254(a1, v115);
  sub_1AB014A58(v115, v118, &qword_1EB436BA0);
  v14 = v119;
  if (!v119)
  {

    sub_1AB066D84(v115);
    sub_1AB014AC0(v118, &qword_1EB436BA0);
    goto LABEL_5;
  }

  v15 = v120;
  __swift_project_boxed_opaque_existential_1Tm(v118, v119);
  LOBYTE(v15) = (*(v15 + 128))(v14, v15);
  sub_1AB066D84(v115);
  __swift_destroy_boxed_opaque_existential_1Tm(v118);
  if (v15)
  {

LABEL_5:
    v16 = v113;
    *(v113 + 72) = &_s12_EmptySourceVN;
    *(v16 + 80) = &off_1EE764AB0;
    sub_1AB01494C(v16 + 48, v115);
    v17 = v116;
    __swift_project_boxed_opaque_existential_1Tm(v115, v116);
    v18 = (*(*(&v17 + 1) + 24))(v17, *(&v17 + 1));
    v19 = v116;
    __swift_project_boxed_opaque_existential_1Tm(v115, v116);
    v20 = (*(*(&v19 + 1) + 32))(v19, *(&v19 + 1));
    v22 = v21;
    v23 = v116;
    __swift_project_boxed_opaque_existential_1Tm(v115, v116);
    v24 = (*(*(&v23 + 1) + 40))(v23, *(&v23 + 1));
    v25 = v116;
    __swift_project_boxed_opaque_existential_1Tm(v115, v116);
    v26 = (*(*(&v25 + 1) + 48))(v25, *(&v25 + 1));
    v28 = v27;
    sub_1AB066D84(v13);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v115);
    *v16 = v18;
    *(v16 + 8) = v20;
    *(v16 + 16) = v22 & 1;
    *(v16 + 24) = v24;
    *(v16 + 32) = v26;
    *(v16 + 40) = v28;
    return result;
  }

  v30 = v13;
  sub_1AB0B9254(v13, v115);
  v118[0] = v12;

  sub_1AB34A774(v115, v7);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {

    sub_1AB3037E0(v7, v11);
    v50 = v113;
    *(v113 + 72) = v8;
    *(v50 + 80) = &off_1EE764B00;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v50 + 48));
    sub_1AB303844(v11, boxed_opaque_existential_0);
    sub_1AB01494C(v50 + 48, v115);
    v52 = v116;
    __swift_project_boxed_opaque_existential_1Tm(v115, v116);
    v112 = (*(*(&v52 + 1) + 24))(v52, *(&v52 + 1));
    v53 = v116;
    __swift_project_boxed_opaque_existential_1Tm(v115, v116);
    v54 = (*(*(&v53 + 1) + 32))(v53, *(&v53 + 1));
    v56 = v55;
    v57 = v116;
    __swift_project_boxed_opaque_existential_1Tm(v115, v116);
    v58 = (*(*(&v57 + 1) + 40))(v57, *(&v57 + 1));
    v59 = v116;
    __swift_project_boxed_opaque_existential_1Tm(v115, v116);
    v60 = (*(*(&v59 + 1) + 48))(v59, *(&v59 + 1));
    v62 = v61;
    sub_1AB066D84(v30);
    sub_1AB3038A8(v11);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v115);
    *v50 = v112;
    *(v50 + 8) = v54;
    *(v50 + 16) = v56 & 1;
    *(v50 + 24) = v58;
    goto LABEL_19;
  }

  sub_1AB014AC0(v7, &qword_1EB43A970);
  JSONObject.subscript.getter(0x646E696B24, 0xE500000000000000, v115);
  sub_1AB014A58(v115, v118, &qword_1EB436BA0);
  v31 = v119;
  if (!v119)
  {
    sub_1AB066D84(v115);
    sub_1AB014AC0(v118, &qword_1EB436BA0);
    goto LABEL_17;
  }

  v32 = v120;
  __swift_project_boxed_opaque_existential_1Tm(v118, v119);
  v33 = (*(v32 + 24))(v31, v32);
  v35 = v34;
  sub_1AB066D84(v115);
  __swift_destroy_boxed_opaque_existential_1Tm(v118);
  if (!v35)
  {
LABEL_17:
    sub_1AB0B9254(v13, v115);
    v118[0] = v12;
    v63 = sub_1AB34BE64(v115);
    if (!v63)
    {
      sub_1AB163664();
      swift_allocError();
      v75 = MEMORY[0x1E69E7CC0];
      *v74 = &type metadata for MediaArtwork;
LABEL_21:
      v74[1] = v75;
      v74[2] = 0;
      v74[3] = 0;
      swift_willThrow();
      return sub_1AB066D84(v13);
    }

    v50 = v113;
    *(v113 + 72) = &_s20_AppleServicesSourceVN;
    *(v50 + 80) = &off_1EE764B50;
    *(v50 + 48) = v63;
    sub_1AB01494C(v50 + 48, v115);
    v64 = v116;
    __swift_project_boxed_opaque_existential_1Tm(v115, v116);
    v65 = (*(*(&v64 + 1) + 24))(v64, *(&v64 + 1));
    v66 = v116;
    __swift_project_boxed_opaque_existential_1Tm(v115, v116);
    v67 = (*(*(&v66 + 1) + 32))(v66, *(&v66 + 1));
    v69 = v68;
    v70 = v116;
    __swift_project_boxed_opaque_existential_1Tm(v115, v116);
    v71 = (*(*(&v70 + 1) + 40))(v70, *(&v70 + 1));
    v72 = v116;
    __swift_project_boxed_opaque_existential_1Tm(v115, v116);
    v60 = (*(*(&v72 + 1) + 48))(v72, *(&v72 + 1));
    v62 = v73;
    sub_1AB066D84(v30);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v115);
    *v50 = v65;
    *(v50 + 8) = v67;
    *(v50 + 16) = v69 & 1;
    *(v50 + 24) = v71;
LABEL_19:
    *(v50 + 32) = v60;
    *(v50 + 40) = v62;
    return result;
  }

  v36 = sub_1AB3D93E4(0xD000000000000027, 0x80000001AB5098B0, v12);
  if (!v36)
  {
LABEL_23:

    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A978) | 0x8000000000000000;
    sub_1AB163664();
    swift_allocError();
    *v77 = v33;
    v77[1] = v35;
    v77[2] = v76;
    v77[3] = 0;
    swift_willThrow();
    return sub_1AB066D84(v13);
  }

  v37 = v36;
  if (!*(v36 + 16) || (v38 = sub_1AB014DB4(v33, v35), (v39 & 1) == 0))
  {

    goto LABEL_23;
  }

  v40 = v38;

  v41 = *(*(v37 + 56) + 16 * v40);

  v42 = dynamic_cast_existential_2_conditional(v41);
  if (v42)
  {
    v45 = v42;
    v46 = v43;
    v47 = v44;
    sub_1AB0B9254(v13, v118);
    v121 = v12;
    v48 = *(v46 + 8);
    *&v116 = v45;
    *(&v116 + 1) = v46;
    v117 = v47;
    __swift_allocate_boxed_opaque_existential_0(v115);
    v49 = v114;
    v48(v118, &v121, v45, v46);
    if (v49)
    {
      sub_1AB066D84(v13);
      return __swift_deallocate_boxed_opaque_existential_2(v115);
    }

    v83 = v116;
    v84 = v117;
    v85 = __swift_project_boxed_opaque_existential_1Tm(v115, v116);
    v86 = v113;
    *(v113 + 72) = v83;
    *(v86 + 80) = v84;
    v87 = __swift_allocate_boxed_opaque_existential_0((v86 + 48));
    (*(*(v83 - 8) + 16))(v87, v85, v83);
    sub_1AB01494C(v86 + 48, v118);
    v88 = v119;
    v89 = v120;
    __swift_project_boxed_opaque_existential_1Tm(v118, v119);
    *&v114 = (*(v89 + 24))(v88, v89);
    v90 = v119;
    v91 = v120;
    __swift_project_boxed_opaque_existential_1Tm(v118, v119);
    v92 = (*(v91 + 32))(v90, v91);
    v94 = v93;
    v95 = v119;
    goto LABEL_30;
  }

  v78 = dynamic_cast_existential_2_conditional(v41);
  if (!v78)
  {

    sub_1AB163664();
    swift_allocError();
    v75 = MEMORY[0x1E69E7CC0];
    *v74 = v41;
    goto LABEL_21;
  }

  v117 = v80;
  v118[0] = v12;
  *&v116 = v78;
  *(&v116 + 1) = v79;
  v81 = v78;
  __swift_allocate_boxed_opaque_existential_0(v115);
  v82 = v114;
  JSONObject.decode<A>(_:using:)(v81, v118);
  if (v82)
  {
    sub_1AB066D84(v13);

    return __swift_deallocate_boxed_opaque_existential_2(v115);
  }

  v114 = v116;
  v96 = v116;
  v97 = __swift_project_boxed_opaque_existential_1Tm(v115, v116);
  v86 = v113;
  *(v113 + 72) = v114;
  v98 = __swift_allocate_boxed_opaque_existential_0((v86 + 48));
  (*(*(v96 - 8) + 16))(v98, v97, v96);
  sub_1AB01494C(v86 + 48, v118);
  v99 = v119;
  v100 = v120;
  __swift_project_boxed_opaque_existential_1Tm(v118, v119);
  *&v114 = (*(v100 + 24))(v99, v100);
  v101 = v119;
  v102 = v120;
  __swift_project_boxed_opaque_existential_1Tm(v118, v119);
  v92 = (*(v102 + 32))(v101, v102);
  v94 = v103;
  v95 = v119;
LABEL_30:
  v104 = v120;
  __swift_project_boxed_opaque_existential_1Tm(v118, v95);
  v105 = (*(v104 + 40))(v95, v104);
  v106 = v30;
  v107 = v119;
  v108 = v120;
  __swift_project_boxed_opaque_existential_1Tm(v118, v119);
  v109 = (*(v108 + 48))(v107, v108);
  v111 = v110;
  sub_1AB066D84(v106);
  __swift_destroy_boxed_opaque_existential_1Tm(v118);
  *v86 = v114;
  *(v86 + 8) = v92;
  *(v86 + 16) = v94 & 1;
  *(v86 + 24) = v105;
  *(v86 + 32) = v109;
  *(v86 + 40) = v111;
  return __swift_destroy_boxed_opaque_existential_1Tm(v115);
}

uint64_t MediaArtwork.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v45 = sub_1AB4616A4();
  v44[3] = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44[2] = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A980);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436EC8);
  MEMORY[0x1EEE9AC00](v46);
  v44[1] = v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A970);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v44 - v8;
  v10 = _s10_URLSourceVMa();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB01494C(a1, &v48);
  sub_1AB34BB2C(&v48);
  if (v2)
  {

    sub_1AB01494C(a1, &v48);
    sub_1AB34AA80(&v48, v9);
    v56 = a1;
    (*(v11 + 56))(v9, 0, 1, v10);
    sub_1AB3037E0(v9, v13);
    *(&v54 + 1) = v10;
    v55 = &off_1EE764B00;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v53);
    sub_1AB303844(v13, boxed_opaque_existential_0);
    sub_1AB01494C(&v53, &v48);
    v27 = v49;
    __swift_project_boxed_opaque_existential_1Tm(&v48, v49);
    v28 = (*(*(&v27 + 1) + 24))(v27, *(&v27 + 1));
    v29 = v49;
    __swift_project_boxed_opaque_existential_1Tm(&v48, v49);
    v30 = (*(*(&v29 + 1) + 32))(v29, *(&v29 + 1));
    v32 = v31;
    v33 = v49;
    __swift_project_boxed_opaque_existential_1Tm(&v48, v49);
    v34 = (*(*(&v33 + 1) + 40))(v33, *(&v33 + 1));
    v35 = *(&v49 + 1);
    v36 = v49;
    __swift_project_boxed_opaque_existential_1Tm(&v48, v49);
    v37 = (*(v35 + 48))(v36, v35);
    v39 = v38;
    sub_1AB3038A8(v13);
    __swift_destroy_boxed_opaque_existential_1Tm(&v48);
    *&v50 = v28;
    *(&v50 + 1) = v30;
    LOBYTE(v51) = v32 & 1;
    *(&v51 + 1) = v34;
    *&v52 = v37;
    *(&v52 + 1) = v39;
    a1 = v56;
  }

  else
  {
    *(&v54 + 1) = &_s12_EmptySourceVN;
    v55 = &off_1EE764AB0;
    sub_1AB01494C(&v53, &v48);
    v14 = v49;
    __swift_project_boxed_opaque_existential_1Tm(&v48, v49);
    v15 = (*(*(&v14 + 1) + 24))(v14, *(&v14 + 1));
    v16 = v49;
    __swift_project_boxed_opaque_existential_1Tm(&v48, v49);
    v17 = (*(*(&v16 + 1) + 32))(v16, *(&v16 + 1));
    v19 = v18;
    v20 = v49;
    __swift_project_boxed_opaque_existential_1Tm(&v48, v49);
    v21 = (*(*(&v20 + 1) + 40))(v20, *(&v20 + 1));
    v22 = v49;
    __swift_project_boxed_opaque_existential_1Tm(&v48, v49);
    v23 = (*(*(&v22 + 1) + 48))(v22, *(&v22 + 1));
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_1Tm(&v48);
    *&v50 = v15;
    *(&v50 + 1) = v17;
    LOBYTE(v51) = v19 & 1;
    *(&v51 + 1) = v21;
    *&v52 = v23;
    *(&v52 + 1) = v25;
  }

  v40 = v53;
  v41 = v47;
  *(v47 + 32) = v52;
  *(v41 + 48) = v40;
  *(v41 + 64) = v54;
  *(v41 + 80) = v55;
  v42 = v51;
  *v41 = v50;
  *(v41 + 16) = v42;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t MediaArtwork.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1AB4616D4();
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436EB8);
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = _s10_URLSourceVMa();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB01494C(v1 + 48, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A978);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A8E8);
  if (swift_dynamicCast())
  {
    v14 = v44;
    sub_1AB0149B0(&v45, v50);
    sub_1AB01494C(v50, v48);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (!swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {

          __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
          sub_1AB462254();
          __swift_project_boxed_opaque_existential_1Tm(v50, v51);
          __swift_mutable_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
          sub_1AB461E74();
          __swift_destroy_boxed_opaque_existential_1Tm(&v45);
        }

        else
        {
          __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
          v25 = sub_1AB462264();
          v26 = sub_1AB30A3A0(0xD000000000000027, 0x80000001AB5098B0, v25);

          if (v26 && (MEMORY[0x1EEE9AC00](v27), *(&v41 - 2) = v50, v28 = v42, sub_1AB2F4A9C(sub_1AB303904, (&v41 - 4), v26), v30 = v29, v42 = v28, , v30))
          {
            __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
            sub_1AB179C3C();
            sub_1AB462274();
            v45 = xmmword_1AB4E9720;
            LOBYTE(v46) = 1;
            v31 = v42;
            sub_1AB461BB4();

            if (!v31)
            {
              __swift_project_boxed_opaque_existential_1Tm(v50, v51);
              sub_1AB460434();
            }

            (*(v41 + 8))(v10, v8);
          }

          else
          {
            __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
            sub_1AB462234();
            *&v45 = 0;
            *(&v45 + 1) = 0xE000000000000000;
            sub_1AB4615D4();

            *&v45 = 0xD000000000000017;
            *(&v45 + 1) = 0x80000001AB509460;
            __swift_project_boxed_opaque_existential_1Tm(v50, v51);
            swift_getDynamicType();
            v32 = sub_1AB462314();
            MEMORY[0x1AC59BA20](v32);

            MEMORY[0x1AC59BA20](62, 0xE100000000000000);
            v33 = v7;
            sub_1AB461694();
            v34 = sub_1AB4616E4();
            swift_allocError();
            v36 = v35;
            v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4372B8) + 48);
            __swift_project_boxed_opaque_existential_1Tm(v50, v51);
            DynamicType = swift_getDynamicType();
            v36[3] = swift_getMetatypeMetadata();
            *v36 = DynamicType;
            v39 = v7;
            v40 = v43;
            (*(v14 + 16))(v36 + v37, v39, v43);
            (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6B30], v34);
            swift_willThrow();
            (*(v14 + 8))(v33, v40);
          }
        }

        goto LABEL_6;
      }

      sub_1AB3038A8(v13);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB462254();
    __swift_project_boxed_opaque_existential_1Tm(v50, v51);
    __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
    sub_1AB461E74();
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    return __swift_destroy_boxed_opaque_existential_1Tm(v50);
  }

  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1AB014AC0(&v45, &qword_1EB43A8F0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462234();
  v50[0] = 0;
  v50[1] = 0xE000000000000000;
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD000000000000014, 0x80000001AB509930);
  __swift_project_boxed_opaque_existential_1Tm((v1 + 48), *(v1 + 72));
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB509950);
  sub_1AB461694();
  v16 = sub_1AB4616E4();
  swift_allocError();
  v18 = v17;
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4372B8) + 48);
  v20 = *(v2 + 72);
  v21 = __swift_project_boxed_opaque_existential_1Tm((v2 + 48), v20);
  v18[3] = v20;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_0, v21, v20);
  v23 = v43;
  v24 = v44;
  (*(v44 + 16))(v18 + v19, v7, v43);
  (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B30], v16);
  swift_willThrow();
  return (*(v24 + 8))(v7, v23);
}

uint64_t MediaArtwork.isEmpty.getter()
{
  sub_1AB01494C(v0 + 48, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A978);
  return swift_dynamicCast();
}

uint64_t MediaArtwork.subscript.getter(uint64_t a1)
{
  v3 = v1[9];
  v4 = v1[10];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 6, v3);
  return (*(v4 + 56))(a1, v3, v4);
}

void MediaArtwork.resize(_:croppedTo:)(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  sub_1AB30395C(v4, a2);
  v9 = v4[9];
  v10 = v4[10];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 6, v9);
  if ((*(v10 + 48))(v9, v10) > 0.0)
  {
    v11 = v4[9];
    v12 = v4[10];
    __swift_project_boxed_opaque_existential_1Tm(v4 + 6, v11);
    (*(v12 + 48))(v11, v12);
    if (v13 > 0.0)
    {
      v14 = v4[9];
      v15 = v4[10];
      __swift_project_boxed_opaque_existential_1Tm(v4 + 6, v14);
      v16 = (*(v15 + 48))(v14, v15);
      a3 = sub_1AB2FD33C(a3, a4, v16, v17);
      a4 = v18;
    }
  }

  *(a2 + 32) = a3;
  *(a2 + 40) = a4;

  objc_storeStrong((a2 + 24), a1);
}

void MediaArtwork.format(_:withQuality:)(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1AB30395C(v4, a4);
  objc_storeStrong(a4, a1);
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
}

uint64_t MediaArtwork.init(_partiallyFrom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB01494C(a1, &v12);
  MediaArtwork.init(from:)(&v12, v7);
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v12 = v7[0];
  v13 = v7[1];
  v4 = v9;
  *(a2 + 32) = v8;
  *(a2 + 48) = v4;
  *(a2 + 64) = v16;
  *(a2 + 80) = v17;
  v5 = v13;
  *a2 = v12;
  *(a2 + 16) = v5;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void MediaArtwork._cachedImagesKey(withScale:)(CGFloat a1)
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1Tm((v1 + 48), v3);
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  if (a1 <= 0.0)
  {
    sub_1AB41C4F4("JetEngine/MediaArtworkSourceConfiguration.swift", 47, 2, 58, sub_1AB303994);
  }

  CGAffineTransformMakeScale(&v16, a1, a1);
  v17.width = v9;
  v17.height = v10;
  v11 = CGSizeApplyAffineTransform(v17, &v16);
  *&v16.a = v5;
  v16.b = v6;
  LOBYTE(v16.c) = v7;
  *&v16.d = v8;
  *&v16.tx = v11;
  v12 = *(v4 + 64);
  v13 = v5;
  v14 = v8;
  v12(&v16, v3, v4);
  a = v16.a;
}

uint64_t MediaArtwork._resource(withScale:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>)
{
  v28 = a1;
  v5 = *(v2 + 72);
  v4 = *(v2 + 80);
  v27[2] = __swift_project_boxed_opaque_existential_1Tm((v2 + 48), v5);
  v7 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v29 = a2;
  if (a2 <= 0.0)
  {
    sub_1AB41C4F4("JetEngine/MediaArtworkSourceConfiguration.swift", 47, 2, 58, sub_1AB303B10);
  }

  CGAffineTransformMakeScale(&v30, a2, a2);
  v31.width = v10;
  v31.height = v11;
  v12 = CGSizeApplyAffineTransform(v31, &v30);
  *&v30.a = v7;
  v30.b = v6;
  LOBYTE(v30.c) = v8;
  *&v30.d = v9;
  *&v30.tx = v12;
  v13 = *(v4 + 72);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1AB461354();
  v27[1] = v27;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v27 - v17;
  v19 = v7;
  v20 = v9;
  v13(&v30, v5, v4);
  a = v30.a;

  v22 = *(AssociatedTypeWitness - 8);
  if ((*(v22 + 48))(v18, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v16 + 8))(v18, v15);
    v24 = v28;
    *(v28 + 32) = 0;
    *v24 = 0u;
    v24[1] = 0u;
  }

  else
  {
    v25 = v28;
    *(v28 + 24) = AssociatedTypeWitness;
    v25[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
    return (*(v22 + 32))(boxed_opaque_existential_0, v18, AssociatedTypeWitness);
  }

  return result;
}

uint64_t MediaArtwork.init(urlTemplate:sourceImageSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_1AB1DAFE0(MEMORY[0x1E69E7CC0]);
  v13 = &_s20_AppleServicesSourceVN;
  v14 = &off_1EE764B50;
  *&v12 = sub_1AB34C8AC(a1, a2, v10, a4, a5);
  return MediaArtwork.init(_:)(&v12, a3);
}

uint64_t MediaArtwork.url(withScale:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>)
{
  MediaArtwork._resource(withScale:)(v7, a2);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A990);
    v3 = sub_1AB45F764();
    v4 = swift_dynamicCast();
    return (*(*(v3 - 8) + 56))(a1, v4 ^ 1u, 1, v3);
  }

  else
  {
    sub_1AB014AC0(v7, &qword_1EB43A988);
    v6 = sub_1AB45F764();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t _s9JetEngine12MediaArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v40[0] = *a1;
  v40[1] = v4;
  v41 = v5;
  v42 = v6;
  v43 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v36[0] = *a2;
  v36[1] = v7;
  v37 = v8;
  v38 = v9;
  v39 = *(a2 + 32);
  v10 = v40[0];
  v11 = v6;
  v12 = v36[0];
  v13 = v9;
  LOBYTE(v6) = _s9JetEngine31MediaArtworkSourceConfigurationV2eeoiySbAC_ACtFZ_0(v40, v36);
  v14 = v36[0];

  v15 = v40[0];
  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1AB01494C(a1 + 48, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A978);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A590);
  if (!swift_dynamicCast())
  {
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    sub_1AB014AC0(v34, &qword_1EB43A998);
LABEL_6:
    v31 = 0;
    return v31 & 1;
  }

  sub_1AB0149B0(v34, v40);
  v16 = v42;
  v33[2] = v43;
  v33[1] = __swift_project_boxed_opaque_existential_1Tm(v40, v42);
  v17 = __swift_project_boxed_opaque_existential_1Tm((a2 + 48), *(a2 + 72));
  v33[3] = v33;
  v18 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  (*(v24 + 16))(v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  v25 = sub_1AB461354();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v33 - v27;
  v29 = swift_dynamicCast();
  v30 = *(v18 + 56);
  if (v29)
  {
    v30(v28, 0, 1, v16);
    (*(v18 + 32))(v20, v28, v16);
    v31 = sub_1AB460504();
    (*(v18 + 8))(v20, v16);
  }

  else
  {
    v30(v28, 1, 1, v16);
    (*(v26 + 8))(v28, v25);
    v31 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  return v31 & 1;
}

uint64_t sub_1AB3037E0(uint64_t a1, uint64_t a2)
{
  v4 = _s10_URLSourceVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB303844(uint64_t a1, uint64_t a2)
{
  v4 = _s10_URLSourceVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB3038A8(uint64_t a1)
{
  v2 = _s10_URLSourceVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1AB303904(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_project_boxed_opaque_existential_1Tm(*(v1 + 16), *(*(v1 + 16) + 24));
  return v2 == swift_getDynamicType();
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1AB3039C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1AB303A08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AB303A6C()
{
  result = qword_1ED4D1D80;
  if (!qword_1ED4D1D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED4D1D80);
  }

  return result;
}

unint64_t sub_1AB303AB8()
{
  result = qword_1EB43A9A0;
  if (!qword_1EB43A9A0)
  {
    sub_1AB303A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A9A0);
  }

  return result;
}

uint64_t sub_1AB303B24@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (!*(*a1 + 16))
  {
    goto LABEL_11;
  }

  v5 = sub_1AB014DB4(0x707954746E657665, 0xE900000000000065);
  if ((v6 & 1) == 0 || (sub_1AB0165C4(*(v4 + 56) + 32 * v5, &v17), v7 = MEMORY[0x1E69E6158], (swift_dynamicCast() & 1) == 0))
  {
LABEL_10:

LABEL_11:
    *a2 = v4;
    a2[1] = v3;
  }

  if (v20 != __PAIR128__(0xEA00000000007265, 0x646E655265676170))
  {
    v8 = sub_1AB461DA4();

    if (v8)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_7:
  if (*(v4 + 16) && (v9 = sub_1AB014DB4(0x7571655265676170, 0xEF656D6954747365), (v10 & 1) != 0))
  {
    sub_1AB0165C4(*(v4 + 56) + 32 * v9, &v20);
    sub_1AB014B78(&v20, &v17);
    sub_1AB0165C4(&v17, &v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v4;
    sub_1AB01AE18(&v20, 0x6D6954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    __swift_destroy_boxed_opaque_existential_1Tm(&v17);
    *a2 = v22;
    a2[1] = v3;
  }

  else
  {

    if (qword_1EB435768 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v13 = v18;
    v16 = v19;
    __swift_project_boxed_opaque_existential_1Tm(&v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1AB4D4720;
    v21 = v7;
    *&v20 = 0xD00000000000004ELL;
    *(&v20 + 1) = 0x80000001AB5099A0;
    *(v15 + 48) = 0u;
    *(v15 + 32) = 0u;
    sub_1AB0169C4(&v20, v15 + 32);
    *(v15 + 64) = 0;
    *(v14 + 32) = v15;
    Logger.error(_:)(v14, v13, v16);

    __swift_destroy_boxed_opaque_existential_1Tm(&v17);
    *a2 = v4;
    a2[1] = v3;
  }
}

BOOL sub_1AB303E54(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1AB461354();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
    v6 = sub_1AB462184();
    v7 = swift_getEnumCaseMultiPayload() != 1;
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  else
  {
    (*(v2 + 8))(v5, a1);
    return 0;
  }

  return v7;
}

BOOL sub_1AB303FC8(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1AB461354();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
    v6 = sub_1AB462184();
    v7 = swift_getEnumCaseMultiPayload() == 1;
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  else
  {
    (*(v2 + 8))(v5, a1);
    return 0;
  }

  return v7;
}

uint64_t sub_1AB30413C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, a2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(v5 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return v10(v8, a2);
    }

    v12 = v2;
  }

  else
  {
    v10(v2, a2);
    v12 = v8;
  }

  v10(v12, a2);
  (*(*(*(a2 + 16) - 8) + 16))(v2, a1);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AB3042A8(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43ABB0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v8 = &v17 - v7;
  v9 = *(a2 - 8);
  (*(v9 + 16))(&v17 - v7, v2, a2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *(v9 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return v11(v8, a2);
    }

    v11(v2, a2);
    if (a1)
    {
      v14 = a1;
      goto LABEL_8;
    }

    (*(*(*(a2 + 16) - 8) + 56))(v2, 1, 1, *(a2 + 16));
LABEL_11:
    sub_1AB461354();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
    sub_1AB462184();
    goto LABEL_12;
  }

  v11(v2, a2);
  if (!a1)
  {
    v15 = *(a2 + 16);
    v16 = *(v15 - 8);
    (*(v16 + 32))(v2, v8, v15);
    (*(v16 + 56))(v2, 0, 1, v15);
    goto LABEL_11;
  }

  v13 = a1;
  (*(*(*(a2 + 16) - 8) + 8))(v8, *(a2 + 16));
LABEL_8:
  *v2 = a1;
  sub_1AB461354();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
  sub_1AB462184();
LABEL_12:
  swift_storeEnumTagMultiPayload();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AB3045E8(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v46 = *v1;
  v3 = *(v46 + 10);
  v55 = type metadata accessor for _AsyncSequenceMultiplexer.NewAsyncIteratorBuffer();
  v4 = sub_1AB461354();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v38 - v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
  v6 = sub_1AB460DB4();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v38 - v7;
  v8 = sub_1AB460D74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v38 - v10;
  v43 = sub_1AB460D44();
  v40 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v12 = (&v38 - v11);
  v13 = sub_1AB460DC4();
  v44 = *(v13 - 8);
  v45 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v39 = sub_1AB461354();
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v38 - v20;
  v22 = *(v46 + 13);
  v23 = *(v55 - 8);
  v24 = *(v23 + 56);
  v42 = v23 + 56;
  v41 = v24;
  (v24)(v2 + v22, 1, 1, v19);
  *(v2 + *(*v2 + 112)) = 1;
  (*(v9 + 56))(v21, 1, 1, v8);
  *v12 = 1;
  (*(v40 + 104))(v12, *MEMORY[0x1E69E8788], v43);
  v25 = v38;
  v56 = v3;
  v57 = v21;
  nullsub_1(v3);
  v43 = v15;
  v26 = v39;
  sub_1AB460DD4();
  v27 = v25;
  v28 = *(v25 + 16);
  v46 = v21;
  v28(v17, v21, v26);
  if ((*(v9 + 48))(v17, 1, v8) == 1)
  {
    result = (*(v25 + 8))(v17, v26);
    __break(1u);
  }

  else
  {
    v29 = *(v9 + 32);
    v30 = v47;
    v29(v47, v17, v8);
    v29(v2 + *(*v2 + 88), v30, v8);
    v31 = v48;
    v32 = v45;
    v33 = v43;
    sub_1AB460C44();
    (*(v44 + 8))(v33, v32);
    (*(v49 + 32))(v2 + *(*v2 + 96), v31, v50);
    v34 = v51;
    v35 = v55;
    (*(v23 + 32))(v51, v52, v55);
    v41(v34, 0, 1, v35);
    v36 = *(*v2 + 104);
    swift_beginAccess();
    (*(v53 + 40))(v2 + v36, v34, v54);
    swift_endAccess();
    (*(v27 + 8))(v46, v26);
    return v2;
  }

  return result;
}

uint64_t sub_1AB304C8C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
  v4 = sub_1AB460D74();
  v5 = sub_1AB461354();
  (*(*(v5 - 8) + 8))(a2, v5);
  v8 = *(v4 - 8);
  (*(v8 + 16))(a2, a1, v4);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, v4);
}

uint64_t sub_1AB304DA8(uint64_t a1)
{
  v13 = a1;
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v12 - v4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
  v6 = sub_1AB460D34();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  (*(v3 + 16))(v5, v13, v2, v8);
  sub_1AB460D74();
  sub_1AB460D54();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AB304F80(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
  sub_1AB460D74();
  return sub_1AB460D64();
}

uint64_t sub_1AB30501C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = *v2;
  v42 = *(*(*v2 + 80) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v36 - v4;
  v40 = v5;
  v6 = type metadata accessor for _AsyncSequenceMultiplexer.NewAsyncIteratorBuffer();
  v7 = sub_1AB461354();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v13 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  v20 = *(v3 + 104);
  swift_beginAccess();
  v21 = *(v8 + 16);
  v38 = v2;
  v21(v12, v2 + v20, v7);
  if ((*(v13 + 48))(v12, 1, v6) == 1)
  {
    (*(v8 + 8))(v12, v7);
    v22 = 1;
    v23 = v40;
LABEL_10:
    v32 = v39;
    v30 = v42;
    return (*(v30 + 56))(v32, v22, 1, v23);
  }

  (*(v13 + 32))(v19, v12, v6);
  v24 = v37;
  (*(v13 + 56))(v37, 1, 1, v6);
  v25 = v38;
  swift_beginAccess();
  (*(v8 + 40))(v25 + v20, v24, v7);
  swift_endAccess();
  (*(v13 + 16))(v16, v19, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v23 = v40;
    if (EnumCaseMultiPayload != 1)
    {
      (*(v13 + 8))(v19, v6);
      v22 = 1;
      goto LABEL_10;
    }

    sub_1AB461354();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
    sub_1AB462184();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v38;
      v41 = *v16;
      v28 = v41;
      sub_1AB460D74();
      sub_1AB460D64();
      *(v27 + *(*v27 + 112)) = 0;
      swift_willThrow();
      return (*(v13 + 8))(v19, v6);
    }

    if ((*(v42 + 48))(v16, 1, v23) == 1)
    {
      v33 = v38;
      v41 = 0;
      sub_1AB460D74();
      v30 = v42;
      sub_1AB460D64();
      (*(v13 + 8))(v19, v6);
      *(v33 + *(*v33 + 112)) = 0;
      v22 = 1;
      v32 = v39;
      return (*(v30 + 56))(v32, v22, 1, v23);
    }

    v37 = *(v42 + 32);
    v34 = v36;
    (v37)(v36, v16, v23);
    v35 = v38;
    v41 = 0;
    sub_1AB460D74();
    sub_1AB460D64();
    (*(v13 + 8))(v19, v6);
    *(v35 + *(*v35 + 112)) = 0;
    v31 = v39;
    (v37)(v39, v34, v23);
    v30 = v42;
  }

  else
  {
    (*(v13 + 8))(v19, v6);
    v30 = v42;
    v31 = v39;
    v23 = v40;
    (*(v42 + 32))(v39, v16, v40);
  }

  v32 = v31;
  v22 = 0;
  return (*(v30 + 56))(v32, v22, 1, v23);
}

uint64_t _AsyncSequenceMultiplexer.AsyncIterator.next()(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*v1 + 80);
  v2[7] = v3;
  v4 = sub_1AB461354();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB3057A8, 0, 0);
}

uint64_t sub_1AB3057A8(uint64_t a1)
{
  sub_1AB30501C(a1, v1[10]);
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[7];
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v5 = v1[6];
    (*(v1[9] + 8))(v2, v1[8]);
    if (*(v5 + *(*v5 + 112)) == 1)
    {
      swift_beginAccess();
      v6 = swift_task_alloc();
      v1[13] = v6;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
      v7 = sub_1AB460DB4();
      *v6 = v1;
      v6[1] = sub_1AB305A40;
      v8 = v1[5];

      return MEMORY[0x1EEE6DB98](v8, v7);
    }

    (*(v1[11] + 56))(v1[5], 1, 1, v1[7]);
  }

  else
  {
    v9 = v1[12];
    v10 = v1[5];
    v11 = *(v3 + 32);
    v11(v9, v2, v4);
    v11(v10, v9, v4);
    (*(v3 + 56))(v10, 0, 1, v4);
  }

  v12 = v1[1];

  return v12();
}

uint64_t sub_1AB305A40()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB305B94, 0, 0);
  }

  else
  {
    swift_endAccess();

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AB305B94()
{
  swift_endAccess();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _AsyncSequenceMultiplexer.AsyncIterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v6 = *(*v3 + 80);
  v4[10] = v6;
  v7 = sub_1AB461354();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v8 = sub_1AB460AE4();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v4[16] = v8;
  v4[17] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1AB305D78, v8, v10);
}

uint64_t sub_1AB305D78(uint64_t a1)
{
  sub_1AB30501C(a1, v1[13]);
  v2 = v1[13];
  v3 = v1[14];
  v4 = v1[10];
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v5 = v1[9];
    (*(v1[12] + 8))(v2, v1[11]);
    if (*(v5 + *(*v5 + 112)) == 1)
    {
      swift_beginAccess();
      v6 = swift_task_alloc();
      v1[18] = v6;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
      v7 = sub_1AB460DB4();
      *v6 = v1;
      v6[1] = sub_1AB306014;
      v8 = v1[7];
      v9 = v1[8];
      v10 = v1[6];

      return MEMORY[0x1EEE6DB90](v10, v8, v9, v7, v1 + 5);
    }

    (*(v1[14] + 56))(v1[6], 1, 1, v1[10]);
  }

  else
  {
    v11 = v1[15];
    v12 = v1[6];
    v13 = *(v3 + 32);
    v13(v11, v2, v4);
    v13(v12, v11, v4);
    (*(v3 + 56))(v12, 0, 1, v4);
  }

  v14 = v1[1];

  return v14();
}

uint64_t sub_1AB306014()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v2 + 128);
    v5 = *(v2 + 136);

    return MEMORY[0x1EEE6DFA0](sub_1AB306160, v4, v5);
  }

  else
  {
    swift_endAccess();

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_1AB306160()
{
  swift_endAccess();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _AsyncSequenceMultiplexer.AsyncIterator.deinit()
{
  v1 = *(*v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
  v2 = sub_1AB460D74();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 96);
  v4 = sub_1AB460DB4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 104);
  type metadata accessor for _AsyncSequenceMultiplexer.NewAsyncIteratorBuffer();
  v6 = sub_1AB461354();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t _AsyncSequenceMultiplexer.AsyncIterator.__deallocating_deinit()
{
  _AsyncSequenceMultiplexer.AsyncIterator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1AB3063BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AB027460;

  return _AsyncSequenceMultiplexer.AsyncIterator.next()(a1);
}

uint64_t sub_1AB306458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1AB1A2810;

  return _AsyncSequenceMultiplexer.AsyncIterator.next(isolation:)(a1, a2, a3);
}

uint64_t sub_1AB306510()
{
  swift_weakInit();
  swift_weakAssign();
}

uint64_t _AsyncSequenceMultiplexer.__allocating_init()()
{
  v0 = swift_allocObject();
  _AsyncSequenceMultiplexer.init()();
  return v0;
}

uint64_t _AsyncSequenceMultiplexer.init()()
{
  v1 = type metadata accessor for _AsyncSequenceMultiplexer.NewAsyncIteratorBuffer();
  type metadata accessor for _AsyncSequenceMultiplexer.WeakAsyncIterator();
  sub_1AB460A64();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v3 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v5 = &v15 - v4;
  v6 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  swift_storeEnumTagMultiPayload();
  v10 = sub_1AB4609A4();
  v11 = *(TupleTypeMetadata2 + 48);
  (*(v6 + 32))(v5, v9, v1);
  *&v5[v11] = v10;
  v12 = sub_1AB02FFC0();
  (*(v3 + 8))(v5, TupleTypeMetadata2);
  *(v0 + 16) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43A9A8);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  *(v0 + 24) = v13;
  return v0;
}

uint64_t _AsyncSequenceMultiplexer.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  _AsyncSequenceMultiplexer.init()();
  v11 = swift_allocObject();
  v11[2] = *(v5 + 80);
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a1;
  v11[6] = a2;

  _AsyncSequenceMultiplexer.yield<A>(contentsOf:)();

  return v10;
}

uint64_t _AsyncSequenceMultiplexer.yield<A>(contentsOf:)()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock((v1 + 24));
  sub_1AB3089E0((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t _AsyncSequenceMultiplexer.deinit()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock((v1 + 24));
  if (*(v1 + 16))
  {
    sub_1AB460CA4();
  }

  os_unfair_lock_unlock((v1 + 24));

  return v0;
}

uint64_t _AsyncSequenceMultiplexer.__deallocating_deinit()
{
  _AsyncSequenceMultiplexer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1AB3069DC(void (*a1)(uint64_t))
{
  v3 = v1[2];
  v5[2] = *(*v1 + 80);
  type metadata accessor for _AsyncSequenceMultiplexer.NewAsyncIteratorBuffer();
  type metadata accessor for _AsyncSequenceMultiplexer.WeakAsyncIterator();
  sub_1AB460A64();

  swift_getTupleTypeMetadata2();
  sub_1AB1AA5AC(a1, v5, v3);

  return v6;
}

uint64_t sub_1AB306AA8(uint64_t a1)
{
  v3 = *(v1 + 16);
  type metadata accessor for _AsyncSequenceMultiplexer.NewAsyncIteratorBuffer();
  v4 = type metadata accessor for _AsyncSequenceMultiplexer.WeakAsyncIterator();
  sub_1AB460A64();
  v5 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v3 + v6));
  sub_1AB309318(v3 + v5, &v15);
  os_unfair_lock_unlock((v3 + v6));

  v7 = v15;
  if (sub_1AB4609F4())
  {
    v8 = 0;
    v9 = v7 + 32;
    do
    {
      v10 = sub_1AB4609D4();
      sub_1AB460974();
      if (v10)
      {
        v11 = *(v4 - 8);
        (*(v11 + 16))(&v15, v9, v4);
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v14[0] = sub_1AB461644();
        v11 = *(v4 - 8);
        (*(v11 + 16))(&v15, v14, v4);
        swift_unknownObjectRelease();
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_10:
          __break(1u);
        }
      }

      (*(v11 + 32))(v14, &v15, v4);
      if (swift_weakLoadStrong())
      {
        sub_1AB304DA8(a1);
      }

      (*(v11 + 8))(v14, v4);
      v9 += 8;
      ++v8;
    }

    while (v12 != sub_1AB4609F4());
  }
}

uint64_t sub_1AB306D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for _AsyncSequenceMultiplexer.NewAsyncIteratorBuffer();
  type metadata accessor for _AsyncSequenceMultiplexer.WeakAsyncIterator();
  sub_1AB460A64();
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1AB460FC4();
  sub_1AB30413C(a2, v6);
  *a3 = *(a1 + v7);
}

uint64_t sub_1AB306E84(void *a1)
{
  v3 = *(v1 + 16);
  type metadata accessor for _AsyncSequenceMultiplexer.NewAsyncIteratorBuffer();
  v4 = type metadata accessor for _AsyncSequenceMultiplexer.WeakAsyncIterator();
  sub_1AB460A64();
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v3 + v5));
  sub_1AB309374(&v14);
  os_unfair_lock_unlock((v3 + v5));

  v6 = v14;
  if (sub_1AB4609F4())
  {
    v7 = 0;
    v8 = v6 + 32;
    do
    {
      v9 = sub_1AB4609D4();
      sub_1AB460974();
      if (v9)
      {
        v10 = *(v4 - 8);
        (*(v10 + 16))(&v14, v8, v4);
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v13[0] = sub_1AB461644();
        v10 = *(v4 - 8);
        (*(v10 + 16))(&v14, v13, v4);
        swift_unknownObjectRelease();
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_10:
          __break(1u);
        }
      }

      (*(v10 + 32))(v13, &v14, v4);
      if (swift_weakLoadStrong())
      {
        sub_1AB304F80(a1);
      }

      (*(v10 + 8))(v13, v4);
      v8 += 8;
      ++v7;
    }

    while (v11 != sub_1AB4609F4());
  }
}

uint64_t sub_1AB307128@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  type metadata accessor for _AsyncSequenceMultiplexer.WeakAsyncIterator();
  *a2 = sub_1AB4602B4();
  v4 = type metadata accessor for _AsyncSequenceMultiplexer.NewAsyncIteratorBuffer();
  sub_1AB460A64();
  swift_getTupleTypeMetadata2();
  sub_1AB461FA4();
  return sub_1AB3042A8(a1, v4);
}

uint64_t sub_1AB3071E4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - v13;
  if (*a1)
  {

    __break(1u);
  }

  else
  {
    v15 = sub_1AB460BE4();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = *(v11 + 80);
    v17[5] = a5;
    v17[6] = a6;
    v17[7] = a3;
    v17[8] = a4;
    v17[9] = v16;

    v18 = sub_1AB307C44(0, 0, v14, &unk_1AB4EA228, v17);
    result = sub_1AB057E84(v14);
    *a1 = v18;
  }

  return result;
}

uint64_t sub_1AB307394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v13;
  v8[13] = a6;
  v8[14] = a7;
  v8[11] = a4;
  v8[12] = a5;
  v8[17] = *(a7 - 8);
  v8[18] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[19] = AssociatedTypeWitness;
  v8[20] = *(AssociatedTypeWitness - 8);
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  sub_1AB461354();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v10 = swift_getAssociatedTypeWitness();
  v8[25] = v10;
  v8[26] = *(v10 - 8);
  v8[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB3075C0, 0, 0);
}

uint64_t sub_1AB3075C0()
{
  (*(v0 + 88))();
  sub_1AB460D24();
  swift_beginAccess();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 224) = AssociatedConformanceWitness;
  v2 = swift_task_alloc();
  *(v0 + 232) = v2;
  *v2 = v0;
  v2[1] = sub_1AB3076E8;
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);

  return MEMORY[0x1EEE6D8D0](v4, 0, 0, v5, v3, AssociatedConformanceWitness);
}

uint64_t sub_1AB3076E8()
{

  if (v0)
  {
    v1 = sub_1AB307A6C;
  }

  else
  {
    v1 = sub_1AB3077F8;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1AB3077F8()
{
  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[14];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[26] + 8))(v0[27], v0[25]);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1AB306E84(0);
    }

    goto LABEL_9;
  }

  (*(v2 + 32))(v0[18], v1, v3);
  if (!swift_weakLoadStrong())
  {
    v13 = v0[26];
    v12 = v0[27];
    v14 = v0[25];
    (*(v0[17] + 8))(v0[18], v0[14]);
    (*(v13 + 8))(v12, v14);
LABEL_9:

    v15 = v0[1];

    return v15();
  }

  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[14];
  sub_1AB306AA8(v4);

  (*(v5 + 8))(v4, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[28] = AssociatedConformanceWitness;
  v8 = swift_task_alloc();
  v0[29] = v8;
  *v8 = v0;
  v8[1] = sub_1AB3076E8;
  v9 = v0[25];
  v11 = v0[22];
  v10 = v0[23];

  return MEMORY[0x1EEE6D8D0](v10, 0, 0, v11, v9, AssociatedConformanceWitness);
}

uint64_t sub_1AB307A6C()
{
  v1 = *(v0[20] + 32);
  v1(v0[21], v0[22], v0[19]);
  swift_getAssociatedConformanceWitness();
  v2 = sub_1AB461D54();
  v3 = v0[21];
  if (v2)
  {
    v4 = v2;
    (*(v0[20] + 8))(v0[21], v0[19]);
  }

  else
  {
    v5 = v0[19];
    v4 = swift_allocError();
    v1(v6, v3, v5);
  }

  (*(v0[26] + 8))(v0[27], v0[25]);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = v4;
    sub_1AB306E84(v4);
  }

  else
  {
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1AB307C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1AB232DAC(a3, v25 - v10);
  v12 = sub_1AB460BE4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1AB057E84(v11);
  }

  else
  {
    sub_1AB460BD4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1AB460AE4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1AB460614() + 32;
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

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

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

uint64_t _AsyncSequenceMultiplexer.makeAsyncIterator()()
{
  v1 = *(v0 + 16);
  type metadata accessor for _AsyncSequenceMultiplexer.NewAsyncIteratorBuffer();
  type metadata accessor for _AsyncSequenceMultiplexer.WeakAsyncIterator();
  sub_1AB460A64();
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_1AB308ABC(v1 + v2, &v5);
  os_unfair_lock_unlock((v1 + v3));

  return v5;
}

uint64_t sub_1AB307FCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for _AsyncSequenceMultiplexer.NewAsyncIteratorBuffer();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  type metadata accessor for _AsyncSequenceMultiplexer.AsyncIterator();
  (*(v5 + 16))(v7, a1, v4);
  swift_allocObject();
  v8 = sub_1AB3045E8(v7);
  result = sub_1AB303E54(v4);
  if ((result & 1) == 0)
  {
    result = sub_1AB303FC8(v4);
    if ((result & 1) == 0)
    {

      sub_1AB306510();
      type metadata accessor for _AsyncSequenceMultiplexer.WeakAsyncIterator();
      sub_1AB460A64();
      swift_getTupleTypeMetadata2();
      result = sub_1AB460A14();
    }
  }

  *a2 = v8;
  return result;
}

unint64_t _AsyncSequenceMultiplexer.debugDescription.getter()
{
  v1 = *(v0 + 16);
  type metadata accessor for _AsyncSequenceMultiplexer.NewAsyncIteratorBuffer();
  type metadata accessor for _AsyncSequenceMultiplexer.WeakAsyncIterator();
  sub_1AB460A64();

  swift_getTupleTypeMetadata2();
  sub_1AB308818(sub_1AB308AF0, v1, MEMORY[0x1E69E6158], v4);

  if (v4[1])
  {
    return v4[0];
  }

  sub_1AB4615D4();

  v3 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v3);

  MEMORY[0x1AC59BA20](0x2979737562283ELL, 0xE700000000000000);
  return 0xD000000000000013;
}

void sub_1AB3082BC(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _AsyncSequenceMultiplexer.NewAsyncIteratorBuffer();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v32 - v11);
  (*(v13 + 16))(&v32 - v11, a1, v9, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1AB4615D4();

      v32 = 0xD000000000000013;
      v33 = 0x80000001AB509A20;
      v27 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v27);

      v28 = 0x297974706D65283ELL;
      v29 = 0xE800000000000000;
LABEL_10:
      MEMORY[0x1AC59BA20](v28, v29);
      goto LABEL_11;
    }

    sub_1AB461354();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
    sub_1AB462184();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = *v12;
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1AB4615D4();

      v32 = 0xD000000000000013;
      v33 = 0x80000001AB509A20;
      v16 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v16);

      MEMORY[0x1AC59BA20](0x6873696E6966283ELL, 0xEC000000203A6465);
      v17 = sub_1AB45F584();
      v18 = AMSLogableError();

      v19 = sub_1AB460544();
      v21 = v20;

      MEMORY[0x1AC59BA20](v19, v21);

      MEMORY[0x1AC59BA20](41, 0xE100000000000000);

LABEL_11:
      v25 = v32;
      v26 = v33;
      goto LABEL_12;
    }

    if ((*(v6 + 48))(v12, 1, a2) == 1)
    {
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1AB4615D4();

      v32 = 0xD000000000000013;
      v33 = 0x80000001AB509A20;
      v30 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v30);

      v28 = 0x6873696E6966283ELL;
      v29 = 0xEB00000000296465;
      goto LABEL_10;
    }

    (*(v6 + 32))(v8, v12, a2);
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB509A20);
    v31 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v31);

    v23 = 0x6873696E6966283ELL;
    v24 = 0xEC000000203A6465;
  }

  else
  {
    (*(v6 + 32))(v8, v12, a2);
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB509A20);
    v22 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v22);

    v23 = 0x203A7473616C283ELL;
    v24 = 0xE800000000000000;
  }

  MEMORY[0x1AC59BA20](v23, v24);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  v25 = v32;
  v26 = v33;
  (*(v6 + 8))(v8, a2);
LABEL_12:
  *a3 = v25;
  a3[1] = v26;
}

uint64_t sub_1AB3087B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = _AsyncSequenceMultiplexer.makeAsyncIterator()();

  *a1 = v2;
  return result;
}

void sub_1AB3088A4(os_unfair_lock_t lock@<X1>, uint64_t a2@<X0>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X5>, void *a5@<X6>, uint64_t a6@<X8>)
{
  if (os_unfair_lock_trylock(lock))
  {
    a3(a2);
    if (v6)
    {
      os_unfair_lock_unlock(lock);
      *a5 = v6;
    }

    else
    {
      (*(*(a4 - 8) + 56))(a6, 0, 1, a4);
      os_unfair_lock_unlock(lock);
    }
  }

  else
  {
    (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }
}

uint64_t sub_1AB308A5C@<X0>(uint64_t (*a1)(uint64_t)@<X1>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for _AsyncSequenceMultiplexer.NewAsyncIteratorBuffer();
  result = a1(v4);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1AB308BB4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
  result = sub_1AB460D74();
  if (v1 <= 0x3F)
  {
    result = sub_1AB460DB4();
    if (v2 <= 0x3F)
    {
      type metadata accessor for _AsyncSequenceMultiplexer.NewAsyncIteratorBuffer();
      result = sub_1AB461354();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1AB308D2C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB308D68()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1AB461354();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
    result = sub_1AB462184();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AB308E14(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = v4;
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > v4)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_31;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v11 < 2)
    {
LABEL_31:
      v13 = *(a1 + v6);
      if (v13 >= 3)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_31;
  }

LABEL_20:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 254;
}

void sub_1AB308F70(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 <= 8)
  {
    v7 = 8;
  }

  if (v7 + 1 > v6)
  {
    v6 = v7 + 1;
  }

  v8 = v6 + 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 253) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v8 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v6 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_44:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_30:
      a1[v6] = -a2;
      return;
    }

LABEL_29:
    if (!a2)
    {
      return;
    }

    goto LABEL_30;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_29;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_30;
  }
}

uint64_t sub_1AB309174(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AB027460;

  return sub_1AB307394(a1, v6, v7, v8, v10, v9, v4, v5);
}

uint64_t sub_1AB309260(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027460;

  return sub_1AB019F3C(a1, v4);
}

BOOL sub_1AB309334()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
  }

  return Strong == 0;
}

uint64_t Dictionary<>.init(_partiallyFrom:)(void *a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v5 = sub_1AB461354();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436EC8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v40 = sub_1AB4602A4();
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v12 = sub_1AB462214();
  sub_1AB309E20(0xD000000000000027, 0x80000001AB4FFF70, v12, v39);

  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB179C3C();
  sub_1AB462224();
  v30 = v7;
  v25 = a1;
  v31 = v11;
  v32 = v8;
  v13 = sub_1AB461AE4();
  v35 = a2;
  v28 = sub_1AB4603C4();
  sub_1AB460344();
  v26 = v13;
  v14 = *(v13 + 16);
  if (v14)
  {
    v27 = v35 - 8;
    v15 = (v26 + 48);
    v29 = v9;
    do
    {
      v16 = *(v15 - 2);
      v17 = *(v15 - 1);
      v18 = *v15;
      if (v18 == 1)
      {
        sub_1AB179C90(*(v15 - 2), *(v15 - 1), 1);

        v34 = v16;
        v19 = v17;
      }

      else
      {
        v36 = *(v15 - 2);
        v34 = sub_1AB461C44();
        v19 = v20;
      }

      v36 = v16;
      v37 = v17;
      v38 = v18;
      v21 = v30;
      v22 = v35;
      sub_1AB461AC4();
      sub_1AB179CA0(v16, v17, v18);
      (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
      v36 = v34;
      v37 = v19;
      sub_1AB460424();
      v9 = v29;
      v15 += 24;
      --v14;
    }

    while (v14);
  }

  (*(v9 + 8))(v31, v32);
  sub_1AB014AC0(v39, &qword_1EB436EC0);
  v23 = v40;
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return v23;
}

uint64_t sub_1AB3098DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AB461864();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_1AB34A738(a1, a2, v9);
  if (*(a3 + 16) && (v10 = sub_1AB0BB4FC(v9), (v11 & 1) != 0))
  {
    sub_1AB0165C4(*(a3 + 56) + 32 * v10, v40);
    (*(v7 + 8))(v9, v6);
    sub_1AB0165C4(v40, &v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43ABD8);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      return v38[0];
    }

    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v13 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1AB4D47F0;
    v39 = sub_1AB0168A8(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v15._object = 0x80000001AB5023A0;
    v15._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    v38[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43ABE0);
    v38[0] = a1;
    v38[1] = a2;
    sub_1AB014A58(v38, v34, &unk_1EB437E60);
    v35 = 0u;
    v36 = 0u;

    sub_1AB0169C4(v34, &v35);
    v37 = 0;
    v16 = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1AB0168A8(0, *(v16 + 2) + 1, 1, v16);
      v39 = v16;
    }

    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1AB0168A8((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[40 * v18];
    v20 = v35;
    v21 = v36;
    v19[64] = v37;
    *(v19 + 2) = v20;
    *(v19 + 3) = v21;
    v39 = v16;
    sub_1AB014AC0(v38, &unk_1EB437E60);
    v22._countAndFlagsBits = 96;
    v22._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    *(v14 + 32) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v23 = swift_allocObject();
    v33 = xmmword_1AB4D4720;
    *(v23 + 16) = xmmword_1AB4D4720;
    v24 = MEMORY[0x1E69E6158];
    *(&v36 + 1) = MEMORY[0x1E69E6158];
    *&v35 = 0xD000000000000027;
    *(&v35 + 1) = 0x80000001AB501060;
    *(v23 + 48) = 0u;
    *(v23 + 32) = 0u;
    sub_1AB0169C4(&v35, v23 + 32);
    *(v23 + 64) = 0;
    *(v14 + 40) = v23;
    v25 = sub_1AB461094();
    if (os_log_type_enabled(v13, v25))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v26 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v26[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v26 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v28 = swift_allocObject();
      *(v28 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v35 = v14;
      *(&v35 + 1) = sub_1AB0223E4;
      *&v36 = v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v29 = sub_1AB460484();
      v31 = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v32 = swift_allocObject();
      *(v32 + 16) = v33;
      *(v32 + 56) = v24;
      *(v32 + 64) = sub_1AB016854();
      *(v32 + 32) = v29;
      *(v32 + 40) = v31;
      sub_1AB45FF14();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }

  return 0;
}

double sub_1AB309E20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1AB461864();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1AB34A74C(a1, a2, v11);
  if (*(a3 + 16) && (v12 = sub_1AB0BB4FC(v11), (v13 & 1) != 0))
  {
    sub_1AB0165C4(*(a3 + 56) + 32 * v12, v42);
    (*(v9 + 8))(v11, v8);
    sub_1AB0165C4(v42, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43ABE8);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      sub_1AB0149B0(&v38, a4);
      return result;
    }

    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    sub_1AB014AC0(&v38, &qword_1EB436EC0);
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v15 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1AB4D47F0;
    v37 = sub_1AB0168A8(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v17._object = 0x80000001AB5023A0;
    v17._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    v41[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43ABF0);
    v41[0] = a1;
    v41[1] = a2;
    sub_1AB014A58(v41, v36, &unk_1EB437E60);
    v38 = 0u;
    v39 = 0u;

    sub_1AB0169C4(v36, &v38);
    LOBYTE(v40) = 0;
    v18 = v37;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1AB0168A8(0, *(v18 + 2) + 1, 1, v18);
      v37 = v18;
    }

    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1AB0168A8((v19 > 1), v20 + 1, 1, v18);
    }

    *(v18 + 2) = v20 + 1;
    v21 = &v18[40 * v20];
    v22 = v38;
    v23 = v39;
    v21[64] = v40;
    *(v21 + 2) = v22;
    *(v21 + 3) = v23;
    v37 = v18;
    sub_1AB014AC0(v41, &unk_1EB437E60);
    v24._countAndFlagsBits = 96;
    v24._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v24);
    *(v16 + 32) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v25 = swift_allocObject();
    v35 = xmmword_1AB4D4720;
    *(v25 + 16) = xmmword_1AB4D4720;
    v26 = MEMORY[0x1E69E6158];
    *(&v39 + 1) = MEMORY[0x1E69E6158];
    *&v38 = 0xD000000000000027;
    *(&v38 + 1) = 0x80000001AB501060;
    *(v25 + 48) = 0u;
    *(v25 + 32) = 0u;
    sub_1AB0169C4(&v38, v25 + 32);
    *(v25 + 64) = 0;
    *(v16 + 40) = v25;
    v27 = sub_1AB461094();
    if (os_log_type_enabled(v15, v27))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v28 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v28[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v28 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v30 = swift_allocObject();
      *(v30 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v38 = v16;
      *(&v38 + 1) = sub_1AB0223E4;
      *&v39 = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v31 = sub_1AB460484();
      v33 = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v34 = swift_allocObject();
      *(v34 + 16) = v35;
      *(v34 + 56) = v26;
      *(v34 + 64) = sub_1AB016854();
      *(v34 + 32) = v31;
      *(v34 + 40) = v33;
      sub_1AB45FF14();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v42);
  }

  else
  {
    (*(v9 + 8))(v11, v8);
  }

  *(a4 + 32) = 0;
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t sub_1AB30A3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AB461864();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_1AB34A760(a1, a2, v9);
  if (*(a3 + 16) && (v10 = sub_1AB0BB4FC(v9), (v11 & 1) != 0))
  {
    sub_1AB0165C4(*(a3 + 56) + 32 * v10, v40);
    (*(v7 + 8))(v9, v6);
    sub_1AB0165C4(v40, &v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43ABC8);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      return v38[0];
    }

    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v13 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1AB4D47F0;
    v39 = sub_1AB0168A8(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v15._object = 0x80000001AB5023A0;
    v15._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    v38[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43ABD0);
    v38[0] = a1;
    v38[1] = a2;
    sub_1AB014A58(v38, v34, &unk_1EB437E60);
    v35 = 0u;
    v36 = 0u;

    sub_1AB0169C4(v34, &v35);
    v37 = 0;
    v16 = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1AB0168A8(0, *(v16 + 2) + 1, 1, v16);
      v39 = v16;
    }

    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1AB0168A8((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[40 * v18];
    v20 = v35;
    v21 = v36;
    v19[64] = v37;
    *(v19 + 2) = v20;
    *(v19 + 3) = v21;
    v39 = v16;
    sub_1AB014AC0(v38, &unk_1EB437E60);
    v22._countAndFlagsBits = 96;
    v22._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    *(v14 + 32) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v23 = swift_allocObject();
    v33 = xmmword_1AB4D4720;
    *(v23 + 16) = xmmword_1AB4D4720;
    v24 = MEMORY[0x1E69E6158];
    *(&v36 + 1) = MEMORY[0x1E69E6158];
    *&v35 = 0xD000000000000027;
    *(&v35 + 1) = 0x80000001AB501060;
    *(v23 + 48) = 0u;
    *(v23 + 32) = 0u;
    sub_1AB0169C4(&v35, v23 + 32);
    *(v23 + 64) = 0;
    *(v14 + 40) = v23;
    v25 = sub_1AB461094();
    if (os_log_type_enabled(v13, v25))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v26 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v26[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v26 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v28 = swift_allocObject();
      *(v28 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v35 = v14;
      *(&v35 + 1) = sub_1AB0223E4;
      *&v36 = v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v29 = sub_1AB460484();
      v31 = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v32 = swift_allocObject();
      *(v32 + 16) = v33;
      *(v32 + 56) = v24;
      *(v32 + 64) = sub_1AB016854();
      *(v32 + 32) = v29;
      *(v32 + 40) = v31;
      sub_1AB45FF14();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }

  return 0;
}

uint64_t Bool.init(_partiallyFrom:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  __swift_project_boxed_opaque_existential_1Tm(v4, v5);
  if (sub_1AB461E04())
  {
    v2 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v4, v5);
    v2 = sub_1AB461DC4();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2 & 1;
}

uint64_t sub_1AB30AAD4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Bool.init(_partiallyFrom:)(a1);
  *a2 = result & 1;
  return result;
}

uint64_t Array<A>.init(_partiallyFrom:)(void *a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v9 = sub_1AB4602B4();
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v2 = sub_1AB462214();
  sub_1AB309E20(0xD000000000000027, 0x80000001AB4FFF70, v2, v8);

  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB4621F4();
  __swift_project_boxed_opaque_existential_1Tm(v6, v7);
  sub_1AB461C74();
  if ((v3 & 1) == 0)
  {
    sub_1AB460A64();
    sub_1AB460984();
  }

  __swift_project_boxed_opaque_existential_1Tm(v6, v7);
  while ((sub_1AB461C94() & 1) == 0)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    sub_1AB461C84();
    sub_1AB460A64();
    sub_1AB460A14();
    __swift_project_boxed_opaque_existential_1Tm(v6, v7);
  }

  sub_1AB014AC0(v8, &qword_1EB436EC0);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  v4 = v9;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

unint64_t sub_1AB30AF20()
{
  result = qword_1EB43ABB8;
  if (!qword_1EB43ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43ABB8);
  }

  return result;
}

unint64_t sub_1AB30AF74()
{
  sub_1AB4615D4();

  v0 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v0);

  return 0xD00000000000002CLL;
}

uint64_t sub_1AB30B000@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Array<A>.init(_partiallyFrom:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AB30B030@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Dictionary<>.init(_partiallyFrom:)(a1, *(a2 + 24), *(a3 - 8));
  *a4 = result;
  return result;
}

uint64_t sub_1AB30B074(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC00);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB03D130();
  sub_1AB462274();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438CC0);
  sub_1AB03D184(&qword_1EB438CC8, sub_1AB235C90);
  sub_1AB461BF4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AB30B208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1937335659 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AB461DA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AB30B290(uint64_t a1)
{
  v2 = sub_1AB03D130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB30B2CC(uint64_t a1)
{
  v2 = sub_1AB03D130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1AB30B338()
{
  result = qword_1EB43AC08;
  if (!qword_1EB43AC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43AC08);
  }

  return result;
}

uint64_t XPSamplingFieldsProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3[8] = a1;
  v3[9] = v4;
  v3[10] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1AB30B4F4, 0, 0);
}

uint64_t sub_1AB30B4F4()
{
  v34 = v0;
  v1 = *(v0 + 10);
  v2 = *(v0 + 8);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = v5;
  if (!v1)
  {

    goto LABEL_9;
  }

  if (!*(v5 + 16) || (v7 = sub_1AB014DB4(0x707954746E657665, 0xE900000000000065), (v8 & 1) == 0) || (sub_1AB0165C4(*(v6 + 56) + 32 * v7, (v0 + 2)), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_24;
  }

  v9 = sub_1AB07EF00(*(v0 + 6));

  if (v9)
  {
LABEL_9:
    sub_1AB1A6678(0xD00000000000002ALL, 0x80000001AB502C00, *(v0 + 9), &v31);
    if (!*(&v31 + 1))
    {
      goto LABEL_24;
    }

    v30 = *(&v31 + 1);
    v10 = v31;
    v11 = v32;
    v12 = v33;
    v13 = *(v0 + 8);
    v14 = MEMORY[0x1E69E63B0];
    *(v0 + 5) = MEMORY[0x1E69E63B0];
    *(v0 + 2) = v11;
    v15 = v2[3];
    v16 = v2[4];
    __swift_mutable_project_boxed_opaque_existential_1(v13, v15);
    (*(v16 + 16))(v0 + 2, 0xD000000000000019, 0x80000001AB4FEBA0, v15, v16);
    v17 = *(v0 + 8);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
    *(v0 + 5) = v14;
    v0[2] = v12 * 1000.0;
    v18 = v2[3];
    v19 = v2[4];
    __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    (*(v19 + 16))(v0 + 2, 0xD000000000000011, 0x80000001AB4FEBC0, v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v20 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v20[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v20 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      if ((os_variant_has_internal_content() & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if ((os_unfair_lock_opaque_low & 1) == 0)
    {
LABEL_23:
      sub_1AB158004(v10, v30);
      goto LABEL_24;
    }

    if (qword_1ED4D1D40 != -1)
    {
      swift_once();
    }

    v22 = sub_1AB026D00(v10, v30);
    if (v22 == 2 || (v22 & 1) == 0)
    {
      goto LABEL_23;
    }

    os_unfair_lock_lock(v20 + 5);
    v23 = LOBYTE(v20[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v20 + 5);
    if (v23 == 2)
    {
      if ((os_variant_has_internal_content() & 1) == 0)
      {
LABEL_22:
        v24 = 0;
LABEL_29:
        v27 = *(v0 + 8);
        *(v0 + 5) = MEMORY[0x1E69E6370];
        sub_1AB158004(v10, v30);
        *(v0 + 16) = v24 & 1;
        v29 = v2[3];
        v28 = v2[4];
        __swift_mutable_project_boxed_opaque_existential_1(v27, v29);
        (*(v28 + 16))(v0 + 2, 0xD000000000000010, 0x80000001AB4FEB80, v29, v28);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
        goto LABEL_24;
      }
    }

    else if ((v23 & 1) == 0)
    {
      goto LABEL_22;
    }

    v24 = sub_1AB026D00(v10, v30);
    goto LABEL_29;
  }

LABEL_24:
  v25 = *(v0 + 1);

  return v25();
}

uint64_t sub_1AB30B96C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AB30B9C8(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = *(a2 + 16);

    v3(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AB30BA34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377B0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v12 - v5);
  v7 = *(*a1 + 96);
  swift_beginAccess();
  sub_1AB014A58(a1 + v7, v6, &unk_1EB4377B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    *a2 = *v6;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43ACB0);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1AB014AC0(v6, &unk_1EB4377B0);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43ACB0);
      return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
    }

    sub_1AB054064(v6, a2, type metadata accessor for JSSource);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43ACB0);
  }

  swift_storeEnumTagMultiPayload();
  return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
}

uint64_t sub_1AB30BC40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437810);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v12 - v5);
  v7 = *(*a1 + 96);
  swift_beginAccess();
  sub_1AB014A58(a1 + v7, v6, &unk_1EB437810);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    *a2 = *v6;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43ACC0);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1AB014AC0(v6, &unk_1EB437810);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43ACC0);
      return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
    }

    sub_1AB054064(v6, a2, type metadata accessor for JSPackageIndex);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43ACC0);
  }

  swift_storeEnumTagMultiPayload();
  return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
}

uint64_t sub_1AB30BE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 88))();
  v13 = &type metadata for SyncTaskScheduler;
  v14 = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43ACA0);
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  *(v5 + 64) = 0;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v5;
  v10[0] = sub_1AB315314;
  v10[1] = v8;
  v10[2] = sub_1AB315320;
  v10[3] = v5;
  sub_1AB01494C(v12, v11);
  v11[40] = 0;
  swift_retain_n();

  sub_1AB1953D0(v10);

  sub_1AB014AC0(v10, &qword_1EB439D20);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v5;
}

void sub_1AB30BFDC(uint64_t *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43ACA8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-v9];
  v11 = swift_beginAccess();
  v12 = *a1;
  if (!*a1)
  {
    goto LABEL_6;
  }

  v13 = *(v12 + 16);

  os_unfair_lock_lock(v13 + 4);
  sub_1AB30BA34(v12, v10);
  if (v2)
  {
    os_unfair_lock_unlock(v13 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v13 + 4);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43ACB0);
    if ((*(*(v14 - 8) + 48))(v10, 1, v14) != 1)
    {
      sub_1AB014A58(v10, v7, &qword_1EB43ACA8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        sub_1AB014AC0(v7, &qword_1EB43ACB0);
        v11 = sub_1AB014AC0(v10, &qword_1EB43ACA8);
LABEL_6:
        v15 = (*(*a2 + 88))(v11);
        swift_beginAccess();
        *a1 = v15;

        return;
      }

      sub_1AB014AC0(v7, &qword_1EB43ACB0);
    }

    sub_1AB014AC0(v10, &qword_1EB43ACA8);
  }
}

void sub_1AB30C23C(uint64_t *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43ACB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-v9];
  v11 = swift_beginAccess();
  v12 = *a1;
  if (!*a1)
  {
    goto LABEL_6;
  }

  v13 = *(v12 + 16);

  os_unfair_lock_lock(v13 + 4);
  sub_1AB30BC40(v12, v10);
  if (v2)
  {
    os_unfair_lock_unlock(v13 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v13 + 4);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43ACC0);
    if ((*(*(v14 - 8) + 48))(v10, 1, v14) != 1)
    {
      sub_1AB014A58(v10, v7, &qword_1EB43ACB8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        sub_1AB014AC0(v7, qword_1EB43ACC0);
        v11 = sub_1AB014AC0(v10, &qword_1EB43ACB8);
LABEL_6:
        v15 = (*(*a2 + 88))(v11);
        swift_beginAccess();
        *a1 = v15;

        return;
      }

      sub_1AB014AC0(v7, qword_1EB43ACC0);
    }

    sub_1AB014AC0(v10, &qword_1EB43ACB8);
  }
}

uint64_t sub_1AB30C49C(uint64_t *a1, uint64_t a2)
{
  v4 = swift_beginAccess();
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_4;
  }

  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6 + 4);
  swift_beginAccess();
  v7 = *(v5 + 24);
  if (*(v5 + 32) - 2 < 2)
  {
    v8 = v7;
    os_unfair_lock_unlock(v6 + 4);

    sub_1AB3154C4(v7, 1);
LABEL_4:
    v5 = (*(*a2 + 88))(v4);
    swift_beginAccess();
    *a1 = v5;

    return v5;
  }

  if (*(v5 + 32))
  {
    v10 = v7;
    os_unfair_lock_unlock(v6 + 4);
    sub_1AB3154C4(v7, 0);
  }

  else
  {
    os_unfair_lock_unlock(v6 + 4);
  }

  return v5;
}

uint64_t JetpackLoader.init(jetpackURL:keyURL:bundleOutputURL:artifactStoreURL:bag:urlSession:urlEncoder:process:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, void (*a6)(uint64_t, char *, uint64_t)@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  v174 = a7;
  v144 = a6;
  v171 = a4;
  v172 = a3;
  v173 = a1;
  v177 = a9;
  v161 = sub_1AB4605C4();
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v159 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v157 = &v138 - v14;
  v149 = sub_1AB4601C4();
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377C0);
  MEMORY[0x1EEE9AC00](v146);
  v17 = &v138 - v16;
  v18 = sub_1AB45F764();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v151 = &v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v150 = &v138 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v168 = &v138 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v167 = &v138 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v166 = &v138 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v165 = &v138 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v170 = &v138 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v176 = &v138 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v175 = &v138 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v169 = &v138 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v138 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  v153 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v155 = &v138 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v164 = &v138 - v45;
  v154 = v46;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v138 - v48;
  v145 = *a5;
  v162 = a2;
  sub_1AB014A58(a2, &v138 - v48, &unk_1EB4395B0);
  v50 = (*(v19 + 48))(v49, 1, v18);
  v163 = v19;
  if (v50 == 1)
  {
    v51 = a8;
    v52 = v41;
    v143 = 0;
    v53 = *(v19 + 16);
    v54 = v174;
  }

  else
  {
    (*(v19 + 32))(v41, v49, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A210);
    v55 = v41;
    v51 = a8;
    v56 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438100) - 8);
    v57 = (*(*v56 + 80) + 32) & ~*(*v56 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1AB4D4720;
    v59 = v56[14];
    *(v58 + v57) = 0;
    v53 = *(v163 + 16);
    v53(v58 + v57 + v59, v55, v18);
    v143 = sub_1AB1DAE04(v58);
    swift_setDeallocating();
    v54 = v174;
    sub_1AB014AC0(v58 + v57, &qword_1EB438100);
    swift_deallocClassInstance();
    v52 = v55;
    (*(v163 + 8))(v55, v18);
  }

  v60 = v169;
  v53(v169, v173, v18);
  v53(v175, v172, v18);
  v53(v176, v171, v18);
  v156 = v51;
  if (v54)
  {
    v61 = v54;
    swift_unknownObjectRelease();
    v174 = v61;
    v142 = v61;
  }

  else
  {
    *&v178[0] = v145;
    v62 = v51;
    v142 = sub_1AB291F04(v60, v178, v51);

    swift_unknownObjectRelease();
  }

  v53(v52, v60, v18);
  v53(v17, v52, v18);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AA0);
  v63 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  v65 = v163;
  v66 = *(v163 + 8);
  v145 = v163 + 8;
  v146 = v66;
  v66(v52, v18);
  v63[2] = v64;
  sub_1AB017FB8(v17, v63 + *(*v63 + 96), &unk_1EB4377C0);
  v67 = v176;
  v53(v52, v176, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437658);
  swift_allocObject();
  v68 = sub_1AB03356C();
  type metadata accessor for RemoteJetpackFetcher();
  v69 = swift_allocObject();
  v70 = v142;
  *(v69 + 16) = v144;
  *(v69 + 24) = v70;
  *(v69 + 32) = 0;
  *(v69 + 40) = 0;
  *(v69 + 48) = 4;
  *(v69 + 56) = 1;
  *(v69 + 64) = v68;
  v71 = *(v65 + 32);
  v142 = (v65 + 32);
  v144 = v71;
  v71(v69 + OBJC_IVAR____TtC9JetEngine20RemoteJetpackFetcher_artifactStoreURL, v52, v18);
  v72 = swift_allocObject();
  *(v72 + 16) = sub_1AB314F3C;
  *(v72 + 24) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AA8);
  v73 = swift_allocObject();
  *(v73 + 16) = v63;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC10);
  v74 = swift_allocObject();
  v74[2] = v73;
  v74[3] = sub_1AB2114E8;
  v74[4] = v72;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC18);
  v139 = swift_allocObject();
  *(v139 + 16) = v74;
  v152 = v52;
  v53(v52, v175, v18);
  v75 = v170;
  v53(v170, v67, v18);
  v76 = v165;
  v53(v165, v52, v18);
  v77 = v166;
  v53(v166, v75, v18);
  v78 = v164;
  (*(v65 + 56))(v164, 1, 1, v18);
  v79 = v167;
  v53(v167, v76, v18);
  v80 = v168;
  v53(v168, v77, v18);
  v81 = type metadata accessor for JetpackLoader();
  sub_1AB014A58(v78, v177 + *(v81 + 28), &unk_1EB4395B0);
  v82 = v150;
  v53(v150, v80, v18);
  sub_1AB19E6E0(&qword_1ED4D1AF0, MEMORY[0x1E6968FB0]);
  sub_1AB461564();
  sub_1AB015664();
  v83 = v148;
  v84 = v147;
  v85 = v149;
  (*(v148 + 104))(v147, *MEMORY[0x1E69E7F98], v149);
  v86 = sub_1AB461164();
  (*(v83 + 8))(v84, v85);
  type metadata accessor for PersistentPipelineBackoff();
  v87 = swift_allocObject();
  v88 = v178[1];
  *(v87 + 16) = v178[0];
  *(v87 + 32) = v88;
  *(v87 + 48) = v179;
  *(v87 + 56) = sub_1AB19D508;
  *(v87 + 64) = 0;
  v89 = swift_allocObject();
  v89[2] = v87;
  v89[3] = &off_1F201B9B8;
  v89[4] = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC20);
  v90 = swift_allocObject();
  *(v90 + 16) = v139;
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = sub_1AB314F90;
  v91[4] = v89;
  v53(v82, v79, v18);
  v92 = v151;
  v53(v151, v80, v18);
  type metadata accessor for UnpackJetpackPhase();
  v93 = swift_allocObject();
  *(v93 + 16) = v143;
  v94 = v144;
  v144(v93 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_bundleOutputURL, v82, v18);
  v94(v93 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_artifactStoreURL, v92, v18);
  *(v93 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_verifySignature) = 0;
  v95 = swift_allocObject();
  *(v95 + 16) = sub_1AB314FA0;
  *(v95 + 24) = v93;
  v96 = swift_allocObject();
  *(v96 + 16) = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC28);
  v97 = swift_allocObject();
  v97[2] = v96;
  v97[3] = sub_1AB2F46AC;
  v97[4] = v95;
  v98 = swift_allocObject();
  *(v98 + 16) = 0;
  v99 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v100 = swift_allocObject();
  *(v100 + 16) = v99;
  *(v100 + 24) = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC30);
  v101 = swift_allocObject();
  *(v101 + 16) = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC38);
  v102 = swift_allocObject();
  v102[2] = v101;
  v102[3] = sub_1AB314FA8;
  v102[4] = v100;
  v103 = v164;
  v104 = v155;
  sub_1AB014A58(v164, v155, &unk_1EB4395B0);
  v105 = (*(v153 + 80) + 16) & ~*(v153 + 80);
  v106 = swift_allocObject();
  sub_1AB017FB8(v104, v106 + v105, &unk_1EB4395B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC40);
  v107 = swift_allocObject();
  *(v107 + 16) = v102;
  v108 = swift_allocObject();
  v108[2] = v107;
  v108[3] = sub_1AB314FB0;
  v108[4] = v106;
  v109 = swift_allocObject();
  *(v109 + 16) = v108;
  v110 = v177;
  *v177 = v109;
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_1AB465FA0;
  *(v111 + 32) = 0;
  *(v111 + 40) = 0;
  v112 = swift_allocObject();
  *(v112 + 16) = sub_1AB2988D0;
  *(v112 + 24) = v111;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC48);
  v113 = swift_allocObject();
  *(v113 + 16) = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC50);
  v114 = swift_allocObject();
  v114[2] = v113;
  v114[3] = sub_1AB314FB4;
  v114[4] = v112;
  v115 = swift_allocObject();
  *(v115 + 16) = sub_1AB450BAC;
  *(v115 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC58);
  v116 = swift_allocObject();
  *(v116 + 16) = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC60);
  v117 = swift_allocObject();
  v117[2] = v116;
  v117[3] = sub_1AB314FBC;
  v117[4] = v115;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC68);
  v118 = swift_allocObject();
  *(v118 + 16) = v117;
  v110[1] = v118;

  v119 = v157;
  sub_1AB460594();
  v120 = v146;
  v146(v166, v18);
  v120(v165, v18);
  v120(v168, v18);
  v120(v167, v18);
  sub_1AB014AC0(v103, &unk_1EB4395B0);
  v122 = v160 + 32;
  v121 = *(v160 + 32);
  v123 = v159;
  v124 = v161;
  v121(v159, v119, v161);
  v125 = (*(v122 + 48) + 16) & ~*(v122 + 48);
  v126 = swift_allocObject();
  v121((v126 + v125), v123, v124);
  v127 = swift_allocObject();
  *(v127 + 16) = sub_1AB314FC4;
  *(v127 + 24) = v126;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC70);
  v128 = swift_allocObject();
  *(v128 + 16) = v118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439630);
  v129 = swift_allocObject();
  v129[2] = v128;
  v129[3] = sub_1AB2D1550;
  v129[4] = v127;
  v130 = swift_allocObject();
  *(v130 + 16) = sub_1AB1A9F18;
  *(v130 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439638);
  v131 = swift_allocObject();
  *(v131 + 16) = v129;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439640);
  v132 = swift_allocObject();
  v132[2] = v131;
  v132[3] = sub_1AB1A9F9C;
  v132[4] = v130;
  v133 = swift_allocObject();
  *(v133 + 16) = sub_1AB3138AC;
  *(v133 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439648);
  v134 = swift_allocObject();
  *(v134 + 16) = v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC78);
  v135 = swift_allocObject();
  v135[2] = v134;
  v135[3] = sub_1AB314FC8;
  v135[4] = v133;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC80);
  v136 = swift_allocObject();
  *(v136 + 16) = v135;
  v177[2] = v136;

  v120(v171, v18);
  v120(v172, v18);
  sub_1AB014AC0(v162, &unk_1EB4395B0);
  v120(v173, v18);
  v120(v170, v18);
  v120(v152, v18);
  v120(v176, v18);
  v120(v175, v18);
  return (v120)(v169, v18);
}

uint64_t JetpackLoader.init(jetpackURL:keyURLs:bundleOutputURL:artifactStoreURL:bag:urlSession:urlEncoder:process:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  v128 = a6;
  v152 = a4;
  v149 = a3;
  v129 = a2;
  v151 = a9;
  v13 = sub_1AB4605C4();
  v142 = *(v13 - 8);
  v143 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v140 = v14;
  v141 = v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v138 = v121 - v16;
  v126 = sub_1AB4601C4();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v123 = v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  v132 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v134 = v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v147 = v121 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377C0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v121 - v23;
  v25 = sub_1AB45F764();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v127 = v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v124 = v121 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v146 = v121 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v150 = v121 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v145 = v121 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v144 = v121 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v148 = v121 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = v121 - v41;
  v43 = *a5;
  v139 = a8;
  if (a7)
  {
    v44 = a7;
    swift_unknownObjectRelease();
    v137 = v44;
    v45 = v44;
  }

  else
  {
    *&v153[0] = v43;
    v45 = sub_1AB291F04(a1, v153, a8);
    swift_unknownObjectRelease();
    v137 = 0;
  }

  v46 = *(v26 + 16);
  v46(v42, a1, v25);
  v46(v24, v42, v25);
  v136 = a1;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AA0);
  v47 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  v49 = *(v26 + 8);
  v130 = v26 + 8;
  v131 = v49;
  v49(v42, v25);
  v47[2] = v48;
  sub_1AB017FB8(v24, v47 + *(*v47 + 96), &unk_1EB4377C0);
  v46(v42, v152, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437658);
  swift_allocObject();
  v50 = sub_1AB03356C();
  type metadata accessor for RemoteJetpackFetcher();
  v51 = swift_allocObject();
  *(v51 + 16) = v128;
  *(v51 + 24) = v45;
  *(v51 + 32) = 0;
  *(v51 + 40) = 0;
  *(v51 + 48) = 4;
  *(v51 + 56) = 1;
  *(v51 + 64) = v50;
  v52 = *(v26 + 32);
  v121[2] = v26 + 32;
  v122 = v52;
  v52(v51 + OBJC_IVAR____TtC9JetEngine20RemoteJetpackFetcher_artifactStoreURL, v42, v25);
  v53 = swift_allocObject();
  *(v53 + 16) = sub_1AB315788;
  *(v53 + 24) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AA8);
  v54 = swift_allocObject();
  *(v54 + 16) = v47;
  v121[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC10);
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = sub_1AB315798;
  v55[4] = v53;
  v121[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC18);
  v56 = swift_allocObject();
  *(v56 + 16) = v55;
  v135 = v42;
  v46(v42, v149, v25);
  v57 = v148;
  v46(v148, v152, v25);
  v58 = v144;
  v46(v144, v42, v25);
  v59 = v145;
  v46(v145, v57, v25);
  v60 = v147;
  (*(v26 + 56))(v147, 1, 1, v25);
  v46(v150, v58, v25);
  v61 = v146;
  v46(v146, v59, v25);
  v62 = type metadata accessor for JetpackLoader();
  sub_1AB014A58(v60, v151 + *(v62 + 28), &unk_1EB4395B0);
  v63 = v124;
  v46(v124, v61, v25);
  sub_1AB19E6E0(&qword_1ED4D1AF0, MEMORY[0x1E6968FB0]);
  v64 = v56;
  v128 = v56;

  sub_1AB461564();
  sub_1AB015664();
  v65 = v125;
  v66 = v123;
  v67 = v126;
  (*(v125 + 104))(v123, *MEMORY[0x1E69E7F98], v126);
  v68 = sub_1AB461164();
  (*(v65 + 8))(v66, v67);
  type metadata accessor for PersistentPipelineBackoff();
  v69 = swift_allocObject();
  v70 = v153[1];
  *(v69 + 16) = v153[0];
  *(v69 + 32) = v70;
  *(v69 + 48) = v154;
  *(v69 + 56) = sub_1AB19D508;
  *(v69 + 64) = 0;
  v71 = swift_allocObject();
  v71[2] = v69;
  v71[3] = &off_1F201B9B8;
  v71[4] = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC20);
  v72 = swift_allocObject();
  *(v72 + 16) = v64;
  v73 = swift_allocObject();
  v73[2] = v72;
  v73[3] = sub_1AB315764;
  v73[4] = v71;
  v46(v63, v150, v25);
  v74 = v127;
  v46(v127, v61, v25);
  type metadata accessor for UnpackJetpackPhase();
  v75 = swift_allocObject();
  *(v75 + 16) = v129;
  v76 = v63;
  v77 = v122;
  v122(v75 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_bundleOutputURL, v76, v25);
  v77(v75 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_artifactStoreURL, v74, v25);
  *(v75 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_verifySignature) = 0;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_1AB31578C;
  *(v78 + 24) = v75;
  v79 = swift_allocObject();
  *(v79 + 16) = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC28);
  v80 = swift_allocObject();
  v80[2] = v79;
  v80[3] = sub_1AB2F4A10;
  v80[4] = v78;
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  v82 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v83 = swift_allocObject();
  *(v83 + 16) = v82;
  *(v83 + 24) = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC30);
  v84 = swift_allocObject();
  *(v84 + 16) = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC38);
  v85 = swift_allocObject();
  v85[2] = v84;
  v85[3] = sub_1AB31579C;
  v85[4] = v83;
  v86 = v147;
  v87 = v134;
  sub_1AB014A58(v147, v134, &unk_1EB4395B0);
  v88 = (*(v132 + 80) + 16) & ~*(v132 + 80);
  v89 = swift_allocObject();
  sub_1AB017FB8(v87, v89 + v88, &unk_1EB4395B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC40);
  v90 = swift_allocObject();
  *(v90 + 16) = v85;
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = sub_1AB315790;
  v91[4] = v89;
  v92 = swift_allocObject();
  *(v92 + 16) = v91;
  v93 = v151;
  *v151 = v92;
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1AB465FA0;
  *(v94 + 32) = 0;
  *(v94 + 40) = 0;
  v95 = swift_allocObject();
  *(v95 + 16) = sub_1AB315768;
  *(v95 + 24) = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC48);
  v96 = swift_allocObject();
  *(v96 + 16) = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC50);
  v97 = swift_allocObject();
  v97[2] = v96;
  v97[3] = sub_1AB3157A0;
  v97[4] = v95;
  v98 = swift_allocObject();
  *(v98 + 16) = sub_1AB450BAC;
  *(v98 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC58);
  v99 = swift_allocObject();
  *(v99 + 16) = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC60);
  v100 = swift_allocObject();
  v100[2] = v99;
  v100[3] = sub_1AB3157A4;
  v100[4] = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC68);
  v101 = swift_allocObject();
  *(v101 + 16) = v100;
  v93[1] = v101;

  v102 = v138;
  sub_1AB460594();
  v103 = v131;
  v131(v145, v25);
  v103(v144, v25);
  v103(v146, v25);
  v103(v150, v25);
  sub_1AB014AC0(v86, &unk_1EB4395B0);
  v104 = v141;
  v106 = v142 + 32;
  v105 = *(v142 + 32);
  v107 = v143;
  v105(v141, v102, v143);
  v108 = (*(v106 + 48) + 16) & ~*(v106 + 48);
  v109 = swift_allocObject();
  v105((v109 + v108), v104, v107);
  v110 = swift_allocObject();
  *(v110 + 16) = sub_1AB315794;
  *(v110 + 24) = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC70);
  v111 = swift_allocObject();
  *(v111 + 16) = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439630);
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = sub_1AB3157A8;
  v112[4] = v110;
  v113 = swift_allocObject();
  *(v113 + 16) = sub_1AB1A9F18;
  *(v113 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439638);
  v114 = swift_allocObject();
  *(v114 + 16) = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439640);
  v115 = swift_allocObject();
  v115[2] = v114;
  v115[3] = sub_1AB3157AC;
  v115[4] = v113;
  v116 = swift_allocObject();
  *(v116 + 16) = sub_1AB3138AC;
  *(v116 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439648);
  v117 = swift_allocObject();
  *(v117 + 16) = v115;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC78);
  v118 = swift_allocObject();
  v118[2] = v117;
  v118[3] = sub_1AB3157B0;
  v118[4] = v116;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC80);
  v119 = swift_allocObject();
  *(v119 + 16) = v118;
  v151[2] = v119;

  v103(v152, v25);
  v103(v149, v25);
  v103(v136, v25);
  v103(v148, v25);
  return (v103)(v135, v25);
}

uint64_t JetpackLoader.init(filePipeline:keyURLs:bundleOutputURL:artifactStoreURL:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t *a5@<X8>)
{
  v113 = a4;
  v114 = a3;
  v99 = a2;
  v116 = a5;
  v6 = sub_1AB4605C4();
  v110 = *(v6 - 8);
  v111 = v6;
  v109 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v108 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v107 = &v93 - v9;
  v97 = sub_1AB4601C4();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  v104 = *(v12 - 8);
  v103 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v102 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v115 = &v93 - v15;
  v16 = sub_1AB45F764();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v98 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v94 = &v93 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v93 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v93 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v93 - v28;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v93 - v32;
  v95 = *a1;
  v112 = v17;
  v34 = *(v17 + 16);
  v106 = &v93 - v32;
  v34(&v93 - v32, v114, v16, v31);
  v105 = v29;
  (v34)(v29, v113, v16);
  v35 = v115;
  (*(v17 + 56))(v115, 1, 1, v16);
  v36 = v26;
  v101 = v26;
  (v34)(v26, v33, v16);
  v37 = v23;
  (v34)(v23, v29, v16);
  v38 = type metadata accessor for JetpackLoader();
  sub_1AB014A58(v35, v116 + *(v38 + 28), &unk_1EB4395B0);
  v39 = v94;
  v100 = v23;
  (v34)(v94, v23, v16);
  sub_1AB19E6E0(&qword_1ED4D1AF0, MEMORY[0x1E6968FB0]);
  sub_1AB461564();
  sub_1AB015664();
  v40 = v96;
  v41 = v97;
  (*(v96 + 104))(v11, *MEMORY[0x1E69E7F98], v97);
  v42 = sub_1AB461164();
  (*(v40 + 8))(v11, v41);
  type metadata accessor for PersistentPipelineBackoff();
  v43 = swift_allocObject();
  v44 = v118;
  *(v43 + 16) = v117;
  *(v43 + 32) = v44;
  *(v43 + 48) = v119;
  *(v43 + 56) = sub_1AB19D508;
  *(v43 + 64) = 0;
  v45 = swift_allocObject();
  v45[2] = v43;
  v45[3] = &off_1F201B9B8;
  v45[4] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC20);
  v46 = swift_allocObject();
  *(v46 + 16) = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC10);
  v47 = swift_allocObject();
  v47[2] = v46;
  v47[3] = sub_1AB315764;
  v47[4] = v45;
  (v34)(v39, v36, v16);
  v48 = v98;
  (v34)(v98, v37, v16);
  type metadata accessor for UnpackJetpackPhase();
  v49 = swift_allocObject();
  *(v49 + 16) = v99;
  v50 = *(v112 + 32);
  v50(v49 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_bundleOutputURL, v39, v16);
  v50(v49 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_artifactStoreURL, v48, v16);
  *(v49 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_verifySignature) = 0;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_1AB31578C;
  *(v51 + 24) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC18);
  v52 = swift_allocObject();
  *(v52 + 16) = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC28);
  v53 = swift_allocObject();
  v53[2] = v52;
  v53[3] = sub_1AB2F4A10;
  v53[4] = v51;
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  v55 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v56 = swift_allocObject();
  *(v56 + 16) = v55;
  *(v56 + 24) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC30);
  v57 = swift_allocObject();
  *(v57 + 16) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC38);
  v58 = swift_allocObject();
  v58[2] = v57;
  v58[3] = sub_1AB31579C;
  v58[4] = v56;
  v59 = v102;
  sub_1AB014A58(v115, v102, &unk_1EB4395B0);
  v60 = (*(v104 + 80) + 16) & ~*(v104 + 80);
  v61 = swift_allocObject();
  sub_1AB017FB8(v59, v61 + v60, &unk_1EB4395B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC40);
  v62 = swift_allocObject();
  *(v62 + 16) = v58;
  v63 = swift_allocObject();
  v63[2] = v62;
  v63[3] = sub_1AB315790;
  v63[4] = v61;
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  v65 = v116;
  *v116 = v64;
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1AB465FA0;
  *(v66 + 32) = 0;
  *(v66 + 40) = 0;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_1AB315768;
  *(v67 + 24) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC48);
  v68 = swift_allocObject();
  *(v68 + 16) = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC50);
  v69 = swift_allocObject();
  v69[2] = v68;
  v69[3] = sub_1AB3157A0;
  v69[4] = v67;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_1AB450BAC;
  *(v70 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC58);
  v71 = swift_allocObject();
  *(v71 + 16) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC60);
  v72 = swift_allocObject();
  v72[2] = v71;
  v72[3] = sub_1AB3157A4;
  v72[4] = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC68);
  v73 = swift_allocObject();
  *(v73 + 16) = v72;
  v65[1] = v73;

  v74 = v107;
  sub_1AB460594();
  v75 = *(v112 + 8);
  v75(v105, v16);
  v75(v106, v16);
  v75(v100, v16);
  v75(v101, v16);
  sub_1AB014AC0(v115, &unk_1EB4395B0);
  v76 = v111;
  v77 = v110 + 32;
  v78 = *(v110 + 32);
  v79 = v108;
  v78(v108, v74, v111);
  v80 = (*(v77 + 48) + 16) & ~*(v77 + 48);
  v81 = swift_allocObject();
  v78((v81 + v80), v79, v76);
  v82 = swift_allocObject();
  *(v82 + 16) = sub_1AB315794;
  *(v82 + 24) = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC70);
  v83 = swift_allocObject();
  *(v83 + 16) = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439630);
  v84 = swift_allocObject();
  v84[2] = v83;
  v84[3] = sub_1AB3157A8;
  v84[4] = v82;
  v85 = swift_allocObject();
  *(v85 + 16) = sub_1AB1A9F18;
  *(v85 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439638);
  v86 = swift_allocObject();
  *(v86 + 16) = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439640);
  v87 = swift_allocObject();
  v87[2] = v86;
  v87[3] = sub_1AB3157AC;
  v87[4] = v85;
  v88 = swift_allocObject();
  *(v88 + 16) = sub_1AB3138AC;
  *(v88 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439648);
  v89 = swift_allocObject();
  *(v89 + 16) = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC78);
  v90 = swift_allocObject();
  v90[2] = v89;
  v90[3] = sub_1AB3157B0;
  v90[4] = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC80);
  v91 = swift_allocObject();
  *(v91 + 16) = v90;
  v116[2] = v91;

  v75(v113, v16);
  return (v75)(v114, v16);
}

uint64_t JetpackLoader.init(jetpackURL:keyURLs:bundleOutputURL:artifactStoreURL:bag:urlSession:urlEncoder:process:verifySignature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>, unsigned __int8 a10)
{
  v145 = a6;
  v147 = a4;
  v150 = a3;
  v130 = a2;
  v151 = a9;
  v131 = a10;
  v14 = sub_1AB4605C4();
  v142 = *(v14 - 8);
  v143 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v140 = v15;
  v141 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v139 = &v118 - v17;
  v128 = sub_1AB4601C4();
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v125 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  v132 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v134 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v149 = &v118 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377C0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v118 - v24;
  v26 = sub_1AB45F764();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v129 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v126 = &v118 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v148 = &v118 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v118 - v34;
  v36 = *a5;
  v138 = a8;
  if (a7)
  {
    v37 = a7;
    swift_unknownObjectRelease();
    v137 = v37;
    v144 = v37;
  }

  else
  {
    *&v152[0] = v36;
    v144 = sub_1AB291F04(a1, v152, a8);
    swift_unknownObjectRelease();
    v137 = 0;
  }

  v38 = *(v27 + 16);
  v38(v35, a1, v26);
  v38(v25, v35, v26);
  v146 = a1;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AA0);
  v39 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  v41 = *(v27 + 8);
  v135 = v27 + 8;
  v136 = v41;
  v41(v35, v26);
  v39[2] = v40;
  sub_1AB017FB8(v25, v39 + *(*v39 + 96), &unk_1EB4377C0);
  v42 = v35;
  v43 = v27;
  v44 = v35;
  v45 = v147;
  v38(v42, v147, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437658);
  swift_allocObject();
  v46 = sub_1AB03356C();
  type metadata accessor for RemoteJetpackFetcher();
  v47 = swift_allocObject();
  v48 = v144;
  *(v47 + 16) = v145;
  *(v47 + 24) = v48;
  *(v47 + 32) = 0;
  *(v47 + 40) = 0;
  *(v47 + 48) = 4;
  *(v47 + 56) = 1;
  *(v47 + 64) = v46;
  v49 = *(v43 + 32);
  v122 = v43 + 32;
  v123 = v49;
  v119 = v44;
  v49(v47 + OBJC_IVAR____TtC9JetEngine20RemoteJetpackFetcher_artifactStoreURL, v44, v26);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1AB315788;
  *(v50 + 24) = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AA8);
  v51 = swift_allocObject();
  *(v51 + 16) = v39;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC10);
  v52 = v45;
  v53 = swift_allocObject();
  v53[2] = v51;
  v53[3] = sub_1AB315798;
  v53[4] = v50;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC18);
  v54 = swift_allocObject();
  *(v54 + 16) = v53;
  v55 = v54;
  v56 = v149;
  v38(v149, v146, v26);
  (*(v43 + 56))(v56, 0, 1, v26);
  v38(v44, v150, v26);
  v57 = v148;
  v38(v148, v52, v26);
  v58 = type metadata accessor for JetpackLoader();
  sub_1AB014A58(v56, v151 + *(v58 + 28), &unk_1EB4395B0);
  v59 = v126;
  v38(v126, v57, v26);
  sub_1AB19E6E0(&qword_1ED4D1AF0, MEMORY[0x1E6968FB0]);
  v145 = v145;
  v144 = v144;
  v60 = v55;
  v124 = v55;

  sub_1AB461564();
  sub_1AB015664();
  v61 = v127;
  v62 = v125;
  v63 = v128;
  (*(v127 + 104))(v125, *MEMORY[0x1E69E7F98], v128);
  v64 = sub_1AB461164();
  (*(v61 + 8))(v62, v63);
  type metadata accessor for PersistentPipelineBackoff();
  v65 = swift_allocObject();
  v66 = v152[1];
  *(v65 + 16) = v152[0];
  *(v65 + 32) = v66;
  *(v65 + 48) = v153;
  *(v65 + 56) = sub_1AB19D508;
  *(v65 + 64) = 0;
  v67 = swift_allocObject();
  v67[2] = v65;
  v67[3] = &off_1F201B9B8;
  v67[4] = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC20);
  v68 = swift_allocObject();
  *(v68 + 16) = v60;
  v69 = swift_allocObject();
  v69[2] = v68;
  v69[3] = sub_1AB315764;
  v69[4] = v67;
  v70 = v119;
  v38(v59, v119, v26);
  v71 = v129;
  v38(v129, v57, v26);
  type metadata accessor for UnpackJetpackPhase();
  v72 = swift_allocObject();
  *(v72 + 16) = v130;
  v73 = v59;
  v74 = v123;
  v123(v72 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_bundleOutputURL, v73, v26);
  v74(v72 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_artifactStoreURL, v71, v26);
  *(v72 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_verifySignature) = v131 & 1;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_1AB31578C;
  *(v75 + 24) = v72;
  v76 = swift_allocObject();
  *(v76 + 16) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC28);
  v77 = swift_allocObject();
  v77[2] = v76;
  v77[3] = sub_1AB2F4A10;
  v77[4] = v75;
  v78 = swift_allocObject();
  *(v78 + 16) = 0;
  v79 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v80 = swift_allocObject();
  *(v80 + 16) = v79;
  *(v80 + 24) = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC30);
  v81 = swift_allocObject();
  *(v81 + 16) = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC38);
  v82 = swift_allocObject();
  v82[2] = v81;
  v82[3] = sub_1AB31579C;
  v82[4] = v80;
  v83 = v149;
  v84 = v134;
  sub_1AB014A58(v149, v134, &unk_1EB4395B0);
  v85 = (*(v132 + 80) + 16) & ~*(v132 + 80);
  v86 = swift_allocObject();
  sub_1AB017FB8(v84, v86 + v85, &unk_1EB4395B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC40);
  v87 = swift_allocObject();
  *(v87 + 16) = v82;
  v88 = swift_allocObject();
  v88[2] = v87;
  v88[3] = sub_1AB315790;
  v88[4] = v86;
  v89 = swift_allocObject();
  *(v89 + 16) = v88;
  v90 = v151;
  *v151 = v89;
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_1AB465FA0;
  *(v91 + 32) = 0;
  *(v91 + 40) = 0;
  v92 = swift_allocObject();
  *(v92 + 16) = sub_1AB315768;
  *(v92 + 24) = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC48);
  v93 = swift_allocObject();
  *(v93 + 16) = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC50);
  v94 = swift_allocObject();
  v94[2] = v93;
  v94[3] = sub_1AB3157A0;
  v94[4] = v92;
  v95 = swift_allocObject();
  *(v95 + 16) = sub_1AB450BAC;
  *(v95 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC58);
  v96 = swift_allocObject();
  *(v96 + 16) = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC60);
  v97 = swift_allocObject();
  v97[2] = v96;
  v97[3] = sub_1AB3157A4;
  v97[4] = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC68);
  v98 = swift_allocObject();
  *(v98 + 16) = v97;
  v90[1] = v98;

  v99 = v139;
  sub_1AB460594();

  v100 = v136;
  v136(v147, v26);
  v100(v150, v26);
  v100(v146, v26);
  v100(v148, v26);
  v100(v70, v26);
  sub_1AB014AC0(v83, &unk_1EB4395B0);
  v101 = v141;
  v103 = v142 + 32;
  v102 = *(v142 + 32);
  v104 = v143;
  v102(v141, v99, v143);
  v105 = (*(v103 + 48) + 16) & ~*(v103 + 48);
  v106 = swift_allocObject();
  v102((v106 + v105), v101, v104);
  v107 = swift_allocObject();
  *(v107 + 16) = sub_1AB315794;
  *(v107 + 24) = v106;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC70);
  v108 = swift_allocObject();
  *(v108 + 16) = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439630);
  v109 = swift_allocObject();
  v109[2] = v108;
  v109[3] = sub_1AB3157A8;
  v109[4] = v107;
  v110 = swift_allocObject();
  *(v110 + 16) = sub_1AB1A9F18;
  *(v110 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439638);
  v111 = swift_allocObject();
  *(v111 + 16) = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439640);
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = sub_1AB3157AC;
  v112[4] = v110;
  v113 = swift_allocObject();
  *(v113 + 16) = sub_1AB3138AC;
  *(v113 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439648);
  v114 = swift_allocObject();
  *(v114 + 16) = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC78);
  v115 = swift_allocObject();
  v115[2] = v114;
  v115[3] = sub_1AB3157B0;
  v115[4] = v113;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC80);
  v116 = swift_allocObject();
  *(v116 + 16) = v115;
  v90[2] = v116;
}

uint64_t JetpackLoader.init(fileURL:keyURLs:bundleOutputURL:artifactStoreURL:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X8>)
{
  v130 = a3;
  v131 = a4;
  v111 = a2;
  v123 = a1;
  v132 = a5;
  v6 = sub_1AB4605C4();
  v121 = *(v6 - 8);
  v122 = v6;
  v120 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v119 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v118 = &v105 - v9;
  v109 = sub_1AB4601C4();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  v114 = *(v11 - 8);
  v113 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v112 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v124 = &v105 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377C0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v105 - v16;
  v18 = sub_1AB45F764();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v110 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v105 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v125 = &v105 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v126 = &v105 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v127 = &v105 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v128 = &v105 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v129 = &v105 - v33;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v105 - v36;
  v38 = *(v19 + 16);
  v38(&v105 - v36, a1, v18, v35);
  (v38)(v17, v37, v18);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AA0);
  v39 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  v41 = *(v19 + 8);
  v115 = v19 + 8;
  v116 = v41;
  v41(v37, v18);
  v39[2] = v40;
  sub_1AB017FB8(v17, v39 + *(*v39 + 96), &unk_1EB4377C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AA8);
  v106 = swift_allocObject();
  *(v106 + 16) = v39;
  v117 = v37;
  (v38)(v37, v130, v18);
  v42 = v129;
  (v38)(v129, v131, v18);
  v43 = v128;
  (v38)(v128, v37, v18);
  v44 = v127;
  (v38)(v127, v42, v18);
  v45 = v124;
  (*(v19 + 56))(v124, 1, 1, v18);
  v46 = v126;
  (v38)(v126, v43, v18);
  v47 = v125;
  (v38)(v125, v44, v18);
  v48 = type metadata accessor for JetpackLoader();
  sub_1AB014A58(v45, v132 + *(v48 + 28), &unk_1EB4395B0);
  v105 = v23;
  (v38)(v23, v47, v18);
  sub_1AB19E6E0(&qword_1ED4D1AF0, MEMORY[0x1E6968FB0]);
  sub_1AB461564();
  sub_1AB015664();
  v49 = v108;
  v50 = v107;
  v51 = v109;
  (*(v108 + 104))(v107, *MEMORY[0x1E69E7F98], v109);
  v52 = sub_1AB461164();
  (*(v49 + 8))(v50, v51);
  type metadata accessor for PersistentPipelineBackoff();
  v53 = swift_allocObject();
  v54 = v134;
  *(v53 + 16) = v133;
  *(v53 + 32) = v54;
  *(v53 + 48) = v135;
  *(v53 + 56) = sub_1AB19D508;
  *(v53 + 64) = 0;
  v55 = swift_allocObject();
  v55[2] = v53;
  v55[3] = &off_1F201B9B8;
  v55[4] = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC20);
  v56 = swift_allocObject();
  *(v56 + 16) = v106;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC10);
  v57 = swift_allocObject();
  v57[2] = v56;
  v57[3] = sub_1AB315764;
  v57[4] = v55;
  v58 = v105;
  (v38)(v105, v46, v18);
  v59 = v110;
  (v38)(v110, v47, v18);
  type metadata accessor for UnpackJetpackPhase();
  v60 = swift_allocObject();
  *(v60 + 16) = v111;
  v61 = *(v19 + 32);
  v61(v60 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_bundleOutputURL, v58, v18);
  v61(v60 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_artifactStoreURL, v59, v18);
  *(v60 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_verifySignature) = 0;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_1AB31578C;
  *(v62 + 24) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC18);
  v63 = swift_allocObject();
  *(v63 + 16) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC28);
  v64 = swift_allocObject();
  v64[2] = v63;
  v64[3] = sub_1AB2F4A10;
  v64[4] = v62;
  v65 = swift_allocObject();
  *(v65 + 16) = 0;
  v66 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v67 = swift_allocObject();
  *(v67 + 16) = v66;
  *(v67 + 24) = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC30);
  v68 = swift_allocObject();
  *(v68 + 16) = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC38);
  v69 = swift_allocObject();
  v69[2] = v68;
  v69[3] = sub_1AB31579C;
  v69[4] = v67;
  v70 = v124;
  v71 = v112;
  sub_1AB014A58(v124, v112, &unk_1EB4395B0);
  v72 = (*(v114 + 80) + 16) & ~*(v114 + 80);
  v73 = swift_allocObject();
  sub_1AB017FB8(v71, v73 + v72, &unk_1EB4395B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC40);
  v74 = swift_allocObject();
  *(v74 + 16) = v69;
  v75 = swift_allocObject();
  v75[2] = v74;
  v75[3] = sub_1AB315790;
  v75[4] = v73;
  v76 = swift_allocObject();
  *(v76 + 16) = v75;
  v77 = v132;
  *v132 = v76;
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1AB465FA0;
  *(v78 + 32) = 0;
  *(v78 + 40) = 0;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_1AB315768;
  *(v79 + 24) = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC48);
  v80 = swift_allocObject();
  *(v80 + 16) = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC50);
  v81 = swift_allocObject();
  v81[2] = v80;
  v81[3] = sub_1AB3157A0;
  v81[4] = v79;
  v82 = swift_allocObject();
  *(v82 + 16) = sub_1AB450BAC;
  *(v82 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC58);
  v83 = swift_allocObject();
  *(v83 + 16) = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC60);
  v84 = swift_allocObject();
  v84[2] = v83;
  v84[3] = sub_1AB3157A4;
  v84[4] = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC68);
  v85 = swift_allocObject();
  *(v85 + 16) = v84;
  v77[1] = v85;

  v86 = v118;
  sub_1AB460594();
  v87 = v116;
  v116(v127, v18);
  v87(v128, v18);
  v87(v125, v18);
  v87(v126, v18);
  sub_1AB014AC0(v70, &unk_1EB4395B0);
  v88 = v122;
  v89 = v121 + 32;
  v90 = *(v121 + 32);
  v91 = v119;
  v90(v119, v86, v122);
  v92 = (*(v89 + 48) + 16) & ~*(v89 + 48);
  v93 = swift_allocObject();
  v90((v93 + v92), v91, v88);
  v94 = swift_allocObject();
  *(v94 + 16) = sub_1AB315794;
  *(v94 + 24) = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC70);
  v95 = swift_allocObject();
  *(v95 + 16) = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439630);
  v96 = swift_allocObject();
  v96[2] = v95;
  v96[3] = sub_1AB3157A8;
  v96[4] = v94;
  v97 = swift_allocObject();
  *(v97 + 16) = sub_1AB1A9F18;
  *(v97 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439638);
  v98 = swift_allocObject();
  *(v98 + 16) = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439640);
  v99 = swift_allocObject();
  v99[2] = v98;
  v99[3] = sub_1AB3157AC;
  v99[4] = v97;
  v100 = swift_allocObject();
  *(v100 + 16) = sub_1AB3138AC;
  *(v100 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439648);
  v101 = swift_allocObject();
  *(v101 + 16) = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC78);
  v102 = swift_allocObject();
  v102[2] = v101;
  v102[3] = sub_1AB3157B0;
  v102[4] = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC80);
  v103 = swift_allocObject();
  *(v103 + 16) = v102;
  v132[2] = v103;

  v87(v131, v18);
  v87(v130, v18);
  v87(v123, v18);
  v87(v129, v18);
  return (v87)(v117, v18);
}

uint64_t JetpackLoader.init(fileURL:keyURLs:bundleOutputURL:artifactStoreURL:verifySignature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v106 = a5;
  v121 = a4;
  v122 = a3;
  v105 = a2;
  v118 = a1;
  v125 = a6;
  v7 = sub_1AB4605C4();
  v116 = *(v7 - 8);
  v117 = v7;
  v115 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v114 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v100 - v10;
  v103 = sub_1AB4601C4();
  v11 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  v110 = *(v13 - 8);
  v109 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v108 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v123 = &v100 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377C0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v100 - v18;
  v20 = sub_1AB45F764();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v104 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v100 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v124 = &v100 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v119 = &v100 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v120 = &v100 - v31;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v100 - v34;
  v36 = *(v21 + 16);
  v36(&v100 - v34, a1, v20, v33);
  (v36)(v19, v35, v20);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AA0);
  v37 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  v39 = *(v21 + 8);
  v111 = v21 + 8;
  v112 = v39;
  v39(v35, v20);
  v37[2] = v38;
  sub_1AB017FB8(v19, v37 + *(*v37 + 96), &unk_1EB4377C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AA8);
  v101 = swift_allocObject();
  *(v101 + 16) = v37;
  v40 = v35;
  v107 = v35;
  (v36)(v35, v122, v20);
  v41 = v120;
  (v36)(v120, v121, v20);
  v42 = v123;
  (*(v21 + 56))(v123, 1, 1, v20);
  v43 = v119;
  (v36)(v119, v40, v20);
  v44 = v124;
  (v36)(v124, v41, v20);
  v45 = type metadata accessor for JetpackLoader();
  sub_1AB014A58(v42, v125 + *(v45 + 28), &unk_1EB4395B0);
  v100 = v25;
  (v36)(v25, v44, v20);
  sub_1AB19E6E0(&qword_1ED4D1AF0, MEMORY[0x1E6968FB0]);
  sub_1AB461564();
  sub_1AB015664();
  v46 = v102;
  v47 = v103;
  (*(v11 + 104))(v102, *MEMORY[0x1E69E7F98], v103);
  v48 = sub_1AB461164();
  (*(v11 + 8))(v46, v47);
  type metadata accessor for PersistentPipelineBackoff();
  v49 = swift_allocObject();
  v50 = v127;
  *(v49 + 16) = v126;
  *(v49 + 32) = v50;
  *(v49 + 48) = v128;
  *(v49 + 56) = sub_1AB19D508;
  *(v49 + 64) = 0;
  v51 = swift_allocObject();
  v51[2] = v49;
  v51[3] = &off_1F201B9B8;
  v51[4] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC20);
  v52 = swift_allocObject();
  *(v52 + 16) = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC10);
  v53 = swift_allocObject();
  v53[2] = v52;
  v53[3] = sub_1AB315764;
  v53[4] = v51;
  v54 = v100;
  (v36)(v100, v43, v20);
  v55 = v104;
  (v36)(v104, v124, v20);
  type metadata accessor for UnpackJetpackPhase();
  v56 = swift_allocObject();
  *(v56 + 16) = v105;
  v57 = *(v21 + 32);
  v57(v56 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_bundleOutputURL, v54, v20);
  v57(v56 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_artifactStoreURL, v55, v20);
  *(v56 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_verifySignature) = v106;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_1AB31578C;
  *(v58 + 24) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC18);
  v59 = swift_allocObject();
  *(v59 + 16) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC28);
  v60 = swift_allocObject();
  v60[2] = v59;
  v60[3] = sub_1AB2F4A10;
  v60[4] = v58;
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  v62 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v63 = swift_allocObject();
  *(v63 + 16) = v62;
  *(v63 + 24) = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC30);
  v64 = swift_allocObject();
  *(v64 + 16) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC38);
  v65 = swift_allocObject();
  v65[2] = v64;
  v65[3] = sub_1AB31579C;
  v65[4] = v63;
  v66 = v108;
  sub_1AB014A58(v123, v108, &unk_1EB4395B0);
  v67 = (*(v110 + 80) + 16) & ~*(v110 + 80);
  v68 = swift_allocObject();
  sub_1AB017FB8(v66, v68 + v67, &unk_1EB4395B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC40);
  v69 = swift_allocObject();
  *(v69 + 16) = v65;
  v70 = swift_allocObject();
  v70[2] = v69;
  v70[3] = sub_1AB315790;
  v70[4] = v68;
  v71 = swift_allocObject();
  *(v71 + 16) = v70;
  v72 = v125;
  *v125 = v71;
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1AB465FA0;
  *(v73 + 32) = 0;
  *(v73 + 40) = 0;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_1AB315768;
  *(v74 + 24) = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC48);
  v75 = swift_allocObject();
  *(v75 + 16) = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC50);
  v76 = swift_allocObject();
  v76[2] = v75;
  v76[3] = sub_1AB3157A0;
  v76[4] = v74;
  v77 = swift_allocObject();
  *(v77 + 16) = sub_1AB450BAC;
  *(v77 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC58);
  v78 = swift_allocObject();
  *(v78 + 16) = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC60);
  v79 = swift_allocObject();
  v79[2] = v78;
  v79[3] = sub_1AB3157A4;
  v79[4] = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC68);
  v80 = swift_allocObject();
  *(v80 + 16) = v79;
  v72[1] = v80;

  v81 = v113;
  sub_1AB460594();
  v82 = v112;
  v112(v120, v20);
  v82(v107, v20);
  v82(v124, v20);
  v82(v119, v20);
  sub_1AB014AC0(v123, &unk_1EB4395B0);
  v83 = v117;
  v84 = v116 + 32;
  v85 = *(v116 + 32);
  v86 = v114;
  v85(v114, v81, v117);
  v87 = (*(v84 + 48) + 16) & ~*(v84 + 48);
  v88 = swift_allocObject();
  v85((v88 + v87), v86, v83);
  v89 = swift_allocObject();
  *(v89 + 16) = sub_1AB315794;
  *(v89 + 24) = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC70);
  v90 = swift_allocObject();
  *(v90 + 16) = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439630);
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = sub_1AB3157A8;
  v91[4] = v89;
  v92 = swift_allocObject();
  *(v92 + 16) = sub_1AB1A9F18;
  *(v92 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439638);
  v93 = swift_allocObject();
  *(v93 + 16) = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439640);
  v94 = swift_allocObject();
  v94[2] = v93;
  v94[3] = sub_1AB3157AC;
  v94[4] = v92;
  v95 = swift_allocObject();
  *(v95 + 16) = sub_1AB3138AC;
  *(v95 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439648);
  v96 = swift_allocObject();
  *(v96 + 16) = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC78);
  v97 = swift_allocObject();
  v97[2] = v96;
  v97[3] = sub_1AB3157B0;
  v97[4] = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC80);
  v98 = swift_allocObject();
  *(v98 + 16) = v97;
  v125[2] = v98;

  v82(v121, v20);
  v82(v122, v20);
  return (v82)(v118, v20);
}

uint64_t JetpackLoader.init(filePipeline:keyURLs:bundleOutputURL:artifactStoreURL:verifySignature:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v96 = a5;
  v107 = a3;
  v108 = a4;
  v94 = a2;
  v106 = a6;
  v7 = sub_1AB4605C4();
  v104 = *(v7 - 8);
  v105 = v7;
  v103 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v102 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v89 - v10;
  v11 = sub_1AB4601C4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1AB45F764();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v92 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v89 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v89 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v89 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  v98 = *(v27 - 8);
  v97 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v95 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v89 - v31;
  v90 = *a1;
  v91 = v16;
  v33 = *(v16 + 56);
  v93 = &v89 - v31;
  v33(&v89 - v31, 1, 1, v15, v30);
  v34 = *(v16 + 16);
  v100 = v26;
  v34(v26, v107, v15);
  v34(v23, v108, v15);
  v35 = type metadata accessor for JetpackLoader();
  sub_1AB014A58(v32, v106 + *(v35 + 28), &unk_1EB4395B0);
  v99 = v23;
  v34(v20, v23, v15);
  sub_1AB19E6E0(&qword_1ED4D1AF0, MEMORY[0x1E6968FB0]);
  sub_1AB461564();
  sub_1AB015664();
  (*(v12 + 104))(v14, *MEMORY[0x1E69E7F98], v11);
  v36 = sub_1AB461164();
  (*(v12 + 8))(v14, v11);
  type metadata accessor for PersistentPipelineBackoff();
  v37 = swift_allocObject();
  v38 = v110;
  *(v37 + 16) = v109;
  *(v37 + 32) = v38;
  *(v37 + 48) = v111;
  *(v37 + 56) = sub_1AB19D508;
  *(v37 + 64) = 0;
  v39 = swift_allocObject();
  v39[2] = v37;
  v39[3] = &off_1F201B9B8;
  v39[4] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC20);
  v40 = swift_allocObject();
  *(v40 + 16) = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC10);
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_1AB315764;
  v41[4] = v39;
  v34(v20, v26, v15);
  v42 = v92;
  v34(v92, v23, v15);
  type metadata accessor for UnpackJetpackPhase();
  v43 = swift_allocObject();
  *(v43 + 16) = v94;
  v44 = v91;
  v45 = *(v91 + 32);
  v45(v43 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_bundleOutputURL, v20, v15);
  v45(v43 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_artifactStoreURL, v42, v15);
  *(v43 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_verifySignature) = v96;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1AB31578C;
  *(v46 + 24) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC18);
  v47 = swift_allocObject();
  *(v47 + 16) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC28);
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = sub_1AB2F4A10;
  v48[4] = v46;
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  v50 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v51 = swift_allocObject();
  *(v51 + 16) = v50;
  *(v51 + 24) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC30);
  v52 = swift_allocObject();
  *(v52 + 16) = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC38);
  v53 = swift_allocObject();
  v53[2] = v52;
  v53[3] = sub_1AB31579C;
  v53[4] = v51;
  v54 = v93;
  v55 = v95;
  sub_1AB014A58(v93, v95, &unk_1EB4395B0);
  v56 = (*(v98 + 80) + 16) & ~*(v98 + 80);
  v57 = swift_allocObject();
  sub_1AB017FB8(v55, v57 + v56, &unk_1EB4395B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC40);
  v58 = swift_allocObject();
  *(v58 + 16) = v53;
  v59 = swift_allocObject();
  v59[2] = v58;
  v59[3] = sub_1AB315790;
  v59[4] = v57;
  v60 = swift_allocObject();
  *(v60 + 16) = v59;
  v61 = v106;
  *v106 = v60;
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1AB465FA0;
  *(v62 + 32) = 0;
  *(v62 + 40) = 0;
  v63 = swift_allocObject();
  *(v63 + 16) = sub_1AB315768;
  *(v63 + 24) = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC48);
  v64 = swift_allocObject();
  *(v64 + 16) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC50);
  v65 = swift_allocObject();
  v65[2] = v64;
  v65[3] = sub_1AB3157A0;
  v65[4] = v63;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_1AB450BAC;
  *(v66 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC58);
  v67 = swift_allocObject();
  *(v67 + 16) = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC60);
  v68 = swift_allocObject();
  v68[2] = v67;
  v68[3] = sub_1AB3157A4;
  v68[4] = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC68);
  v69 = swift_allocObject();
  *(v69 + 16) = v68;
  v61[1] = v69;

  v70 = v101;
  sub_1AB460594();
  v71 = *(v44 + 8);
  v71(v108, v15);
  v71(v107, v15);
  v71(v99, v15);
  v71(v100, v15);
  sub_1AB014AC0(v54, &unk_1EB4395B0);
  v72 = v105;
  v73 = v104 + 32;
  v74 = *(v104 + 32);
  v75 = v102;
  v74(v102, v70, v105);
  v76 = (*(v73 + 48) + 16) & ~*(v73 + 48);
  v77 = swift_allocObject();
  v74((v77 + v76), v75, v72);
  v78 = swift_allocObject();
  *(v78 + 16) = sub_1AB315794;
  *(v78 + 24) = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC70);
  v79 = swift_allocObject();
  *(v79 + 16) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439630);
  v80 = swift_allocObject();
  v80[2] = v79;
  v80[3] = sub_1AB3157A8;
  v80[4] = v78;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_1AB1A9F18;
  *(v81 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439638);
  v82 = swift_allocObject();
  *(v82 + 16) = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439640);
  v83 = swift_allocObject();
  v83[2] = v82;
  v83[3] = sub_1AB3157AC;
  v83[4] = v81;
  v84 = swift_allocObject();
  *(v84 + 16) = sub_1AB3138AC;
  *(v84 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439648);
  v85 = swift_allocObject();
  *(v85 + 16) = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC78);
  v86 = swift_allocObject();
  v86[2] = v85;
  v86[3] = sub_1AB3157B0;
  v86[4] = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AC80);
  v87 = swift_allocObject();
  *(v87 + 16) = v86;
  v61[2] = v87;
}

uint64_t sub_1AB3132D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_1AB45F764();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = (*(**a1 + 88))(v12);
  sub_1AB014A58(a2, v6, &unk_1EB4395B0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1AB014AC0(v6, &unk_1EB4395B0);
  }

  else
  {
    v24 = *(v8 + 32);
    v24(v14, v6, v7);
    v23 = *(v8 + 16);
    v16 = v8;
    v25 = v8;
    v17 = v14;
    v23(v10, v14, v7);
    v26 = v15;
    v18 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v19 = swift_allocObject();
    v20 = v24;
    v24((v19 + v18), v10, v7);
    v23(v10, v17, v7);
    v15 = v26;
    v21 = swift_allocObject();
    v20(v21 + v18, v10, v7);
    v30 = &type metadata for SyncTaskScheduler;
    v31 = &protocol witness table for SyncTaskScheduler;
    v27[0] = sub_1AB315338;
    v27[1] = v19;
    v27[2] = sub_1AB315438;
    v27[3] = v21;
    sub_1AB01494C(v29, v28);
    v28[40] = 0;

    sub_1AB198460(v27);

    sub_1AB014AC0(v27, &unk_1EB439850);
    (*(v25 + 8))(v17, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return v15;
}

uint64_t sub_1AB313638(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9[-v5];
  if (qword_1EB433428 != -1)
  {
    v4 = swift_once();
  }

  v7 = *(qword_1EB46BEF8 + 16);
  MEMORY[0x1EEE9AC00](v4);
  *&v9[-16] = a2;
  os_unfair_lock_lock(v7 + 6);
  sub_1AB3154A8(v6);
  os_unfair_lock_unlock(v7 + 6);
  return sub_1AB014AC0(v6, &unk_1EB4395B0);
}

uint64_t sub_1AB31375C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AC8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-v5];
  if (qword_1EB433428 != -1)
  {
    v4 = swift_once();
  }

  v7 = *(qword_1EB46BEF8 + 16);
  MEMORY[0x1EEE9AC00](v4);
  *&v11[-16] = a2;
  os_unfair_lock_lock(v7 + 6);
  sub_1AB19E6B4(v6);
  os_unfair_lock_unlock(v7 + 6);
  v8 = *(v3 + 48);
  v9 = sub_1AB45F764();
  return (*(*(v9 - 8) + 8))(&v6[v8], v9);
}

uint64_t sub_1AB3138AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for JSSource();
  a2[4] = &protocol witness table for JSSource;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  return sub_1AB1AA4EC(a1, boxed_opaque_existential_0);
}

uint64_t sub_1AB313990(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v32 = a4;
  v31 = sub_1AB4601B4();
  v36 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB4601F4();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB460214();
  v30 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437670);
  v18 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = MEMORY[0x1E69E7CC0];
  *(v18 + 16) = v19;
  *(v18 + 24) = v20;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0;
  ObjectType = swift_getObjectType();
  (*(a3 + 8))(ObjectType, a3);
  sub_1AB460204();
  sub_1AB460234();
  v29 = *(v12 + 8);
  v29(v14, v11);
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = a3;
  v22[5] = v18;
  v23 = v32;
  v22[6] = v32;
  aBlock[4] = sub_1AB31551C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_347;
  v24 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  v23;
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v37 = v20;
  sub_1AB19E6E0(&qword_1ED4D2050, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01649C();
  v25 = v33;
  v26 = v31;
  sub_1AB4614E4();
  MEMORY[0x1AC59C430](v17, v10, v25, v24);
  _Block_release(v24);
  (*(v36 + 8))(v25, v26);
  (*(v34 + 8))(v10, v35);
  v29(v17, v30);

  return v18;
}

void *sub_1AB313DD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v33 = a4;
  v30[0] = a1;
  v36 = sub_1AB4601B4();
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v34 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1AB4601F4();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v32 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB460214();
  v31 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437810);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v30 - v16;
  *(v30 - v16) = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439660);
  v18 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v18[2] = v19;
  sub_1AB017FB8(v17, v18 + *(*v18 + 96), &unk_1EB437810);
  ObjectType = swift_getObjectType();
  (*(a3 + 8))(ObjectType, a3);
  sub_1AB460204();
  sub_1AB460234();
  v21 = v9 + 8;
  v22 = *(v9 + 8);
  v30[1] = v21;
  v22(v11, v8);
  v23 = swift_allocObject();
  v23[2] = v30[0];
  v23[3] = a2;
  v23[4] = a3;
  v23[5] = v18;
  v24 = v33;
  v23[6] = v33;
  aBlock[4] = sub_1AB31560C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_356;
  v25 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  v24;
  v26 = v32;
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1AB19E6E0(&qword_1ED4D2050, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01649C();
  v27 = v34;
  v28 = v36;
  sub_1AB4614E4();
  MEMORY[0x1AC59C430](v14, v26, v27, v25);
  _Block_release(v25);
  (*(v38 + 8))(v27, v28);
  (*(v35 + 8))(v26, v37);
  v22(v14, v31);

  return v18;
}

void *sub_1AB3142BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v33 = a4;
  v30[0] = a1;
  v36 = sub_1AB4601B4();
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v34 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1AB4601F4();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v32 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB460214();
  v31 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377C0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v30 - v16;
  *(v30 - v16) = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AA0);
  v18 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v18[2] = v19;
  sub_1AB017FB8(v17, v18 + *(*v18 + 96), &unk_1EB4377C0);
  ObjectType = swift_getObjectType();
  (*(a3 + 8))(ObjectType, a3);
  sub_1AB460204();
  sub_1AB460234();
  v21 = v9 + 8;
  v22 = *(v9 + 8);
  v30[1] = v21;
  v22(v11, v8);
  v23 = swift_allocObject();
  v23[2] = v30[0];
  v23[3] = a2;
  v23[4] = a3;
  v23[5] = v18;
  v24 = v33;
  v23[6] = v33;
  aBlock[4] = sub_1AB3154E8;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_30;
  v25 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  v24;
  v26 = v32;
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1AB19E6E0(&qword_1ED4D2050, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01649C();
  v27 = v34;
  v28 = v36;
  sub_1AB4614E4();
  MEMORY[0x1AC59C430](v14, v26, v27, v25);
  _Block_release(v25);
  (*(v38 + 8))(v27, v28);
  (*(v35 + 8))(v26, v37);
  v22(v14, v31);

  return v18;
}

uint64_t sub_1AB3147A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  (*(*a1 + 88))();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v14[3] = sub_1AB015664();
  v14[4] = &protocol witness table for OS_dispatch_queue;
  v14[0] = a5;
  v12[0] = sub_1AB3156F0;
  v12[1] = v9;
  v12[2] = sub_1AB315758;
  v12[3] = a4;
  sub_1AB01494C(v14, v13);
  v13[40] = 0;
  swift_retain_n();
  swift_unknownObjectRetain();
  v10 = a5;

  sub_1AB017894(v12);

  sub_1AB014AC0(v12, &unk_1EB437870);
  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

uint64_t sub_1AB3148EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  (*(*a1 + 88))();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v14[3] = sub_1AB015664();
  v14[4] = &protocol witness table for OS_dispatch_queue;
  v14[0] = a5;
  v12[0] = sub_1AB31554C;
  v12[1] = v9;
  v12[2] = sub_1AB3155B8;
  v12[3] = a4;
  sub_1AB01494C(v14, v13);
  v13[40] = 0;
  swift_retain_n();
  swift_unknownObjectRetain();
  v10 = a5;

  sub_1AB198248(v12);

  sub_1AB014AC0(v12, &unk_1EB4377D0);
  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

uint64_t sub_1AB314A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  (*(*a1 + 88))();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v14[3] = sub_1AB015664();
  v14[4] = &protocol witness table for OS_dispatch_queue;
  v14[0] = a5;
  v12[0] = sub_1AB315624;
  v12[1] = v9;
  v12[2] = sub_1AB3156AC;
  v12[3] = a4;
  sub_1AB01494C(v14, v13);
  v13[40] = 0;
  swift_retain_n();
  swift_unknownObjectRetain();
  v10 = a5;

  sub_1AB197F6C(v12);

  sub_1AB014AC0(v12, &qword_1EB439E10);
  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

uint64_t sub_1AB314B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  (*(*a1 + 88))();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v14[3] = sub_1AB015664();
  v14[4] = &protocol witness table for OS_dispatch_queue;
  v14[0] = a5;
  v12[0] = sub_1AB315500;
  v12[1] = v9;
  v12[2] = sub_1AB315518;
  v12[3] = a4;
  sub_1AB01494C(v14, v13);
  v13[40] = 0;
  swift_retain_n();
  swift_unknownObjectRetain();
  v10 = a5;

  sub_1AB194D18(v12);

  sub_1AB014AC0(v12, &unk_1EB439840);
  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

uint64_t sub_1AB314CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**a1 + 88))();
  v5 = sub_1AB314D30(a2, a3);

  return v5;
}

uint64_t sub_1AB314D30(uint64_t a1, uint64_t a2)
{
  v13 = &type metadata for SyncTaskScheduler;
  v14 = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437670);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  sub_1AB01494C(v12, v11);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v4;
  sub_1AB0149B0(v11, (v7 + 5));
  v9[0] = sub_1AB315328;
  v9[1] = v7;
  v9[2] = sub_1AB2922AC;
  v9[3] = v4;
  sub_1AB01494C(v12, v10);
  v10[40] = 0;
  swift_retain_n();

  sub_1AB194D18(v9);

  sub_1AB014AC0(v9, &unk_1EB439840);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v4;
}

uint64_t sub_1AB314EAC(uint64_t *a1, id a2, uint64_t a3)
{
  v5 = *a1;
  [a2 lock];
  v6 = sub_1AB30C49C((a3 + 16), v5);
  [a2 unlock];
  return v6;
}

uint64_t type metadata accessor for JetpackLoader()
{
  result = qword_1EB435310;
  if (!qword_1EB435310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1AB45F764();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AB3150EC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1AB3132D4(a1, v4);
}

void sub_1AB315190()
{
  sub_1AB315264(319, &qword_1EB43AC88);
  if (v0 <= 0x3F)
  {
    sub_1AB315264(319, &qword_1EB43AC90);
    if (v1 <= 0x3F)
    {
      sub_1AB3152B0();
      if (v2 <= 0x3F)
      {
        sub_1AB018E60();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1AB315264(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for AnyPipelineTask();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1AB3152B0()
{
  if (!qword_1EB43AC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB439F40);
    v0 = type metadata accessor for AnyPipelineTask();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB43AC98);
    }
  }
}

uint64_t sub_1AB315338(uint64_t a1)
{
  v3 = *(sub_1AB45F764() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1AB313638(a1, v4);
}

uint64_t objectdestroy_26Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t sub_1AB315438(uint64_t a1)
{
  v3 = *(sub_1AB45F764() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1AB31375C(a1, v4);
}

void sub_1AB3154C4(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_1AB3154DC(a1);
  }
}

void sub_1AB31554C(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  v4 = a1[1];
  ObjectType = swift_getObjectType();
  (*(v2 + 16))(ObjectType, v2);
  sub_1AB42F918(v3, v4);
}

uint64_t objectdestroy_337Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB31563C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  (*(v5 + 16))(ObjectType, v5);
  return a2(a1);
}

uint64_t objectdestroy_340Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1AB3156F0(void **a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  ObjectType = swift_getObjectType();
  (*(v2 + 16))(ObjectType, v2);
  sub_1AB42FBFC(v3);
}

uint64_t _chain<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);
  (*(v9 + 16))(v11, a2, a4);
  return _AsyncChainedSequence.init(_:_:)(v15, v11, a3, a4, a5);
}

uint64_t _AsyncChainedSequence.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for _AsyncChainedSequence();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t _AsyncChainedSequence.AsyncIterator.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a3, a1, AssociatedTypeWitness);
  v7 = *(type metadata accessor for _AsyncChainedSequence.AsyncIterator() + 52);
  v8 = swift_getAssociatedTypeWitness();
  return (*(*(v8 - 8) + 32))(a3 + v7, a2, v8);
}

uint64_t _AsyncChainedSequence.AsyncIterator.first.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t _AsyncChainedSequence.AsyncIterator.first.setter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 40);

  return v4(v1, a1, AssociatedTypeWitness);
}

uint64_t _AsyncChainedSequence.AsyncIterator.second.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t _AsyncChainedSequence.AsyncIterator.second.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 40);

  return v6(v2 + v4, a1, AssociatedTypeWitness);
}

uint64_t _AsyncChainedSequence.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[5] = AssociatedTypeWitness;
  v5 = sub_1AB461354();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[9] = v6;
  v3[10] = *(AssociatedTypeWitness - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_task_alloc();
  v3[13] = v9;
  *v9 = v3;
  v9[1] = sub_1AB315FEC;

  return MEMORY[0x1EEE6D8C8](v6, v7, AssociatedConformanceWitness);
}

uint64_t sub_1AB315FEC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1AB316574;
  }

  else
  {
    v2 = sub_1AB316100;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB316100()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[5];
  v4 = *(v2 + 48);
  v0[15] = v4;
  v0[16] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v3) == 1)
  {
    v5 = v0[6];
    v6 = v0[7];
    v7 = *(v6 + 8);
    v0[17] = v7;
    v0[18] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v1, v5);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = swift_task_alloc();
    v0[19] = v10;
    *v10 = v0;
    v10[1] = sub_1AB316330;
    v11 = v0[8];

    return MEMORY[0x1EEE6D8C8](v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v12 = v0[12];
    v13 = v0[2];
    v14 = *(v2 + 32);
    v14(v12, v1, v3);
    v14(v13, v12, v3);
    (*(v0[10] + 56))(v0[2], 0, 1, v0[5]);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1AB316330()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1AB3165FC;
  }

  else
  {
    v2 = sub_1AB316444;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB316444()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  if ((*(v0 + 120))(v1, 1, v2) == 1)
  {
    (*(v0 + 136))(v1, *(v0 + 48));
    v3 = 1;
  }

  else
  {
    v4 = *(v0 + 88);
    v5 = *(v0 + 16);
    v6 = *(*(v0 + 80) + 32);
    v6(v4, v1, v2);
    v6(v5, v4, v2);
    v3 = 0;
  }

  (*(*(v0 + 80) + 56))(*(v0 + 16), v3, 1, *(v0 + 40));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1AB316574()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB3165FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB316684(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027460;

  return _AsyncChainedSequence.AsyncIterator.next()(a1, a2);
}

uint64_t sub_1AB31672C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v6[4] = *(AssociatedTypeWitness - 8);
  v13 = swift_task_alloc();
  v6[5] = v13;
  v14 = swift_task_alloc();
  v6[6] = v14;
  *v14 = v6;
  v14[1] = sub_1AB1A47D4;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v13);
}

uint64_t _AsyncChainedSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  v5 = *(a1 + 24);
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v8 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v11 = v22 - v10;
  v12 = *(a1 + 16);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_getAssociatedTypeWitness();
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v22 - v19;
  (*(v13 + 16))(v16, v3, v12, v18);
  sub_1AB460D24();
  (*(v23 + 16))(v7, v3 + *(a1 + 52), v5);
  sub_1AB460D24();
  return _AsyncChainedSequence.AsyncIterator.init(_:_:)(v20, v11, v24);
}

uint64_t _AsyncChainedSequence.debugDescription.getter()
{
  MEMORY[0x1AC59BA20](0x286E696168635FLL, 0xE700000000000000);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](8236, 0xE200000000000000);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1AB316BFC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1AB316CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _AsyncChainedSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1AB316D20()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AB316DD4(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v5 + 64) + v10;
  if (a2 <= v11)
  {
    goto LABEL_28;
  }

  v13 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((a2 - v11 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v11)
      {
LABEL_28:
        if (v6 >= v9)
        {
          v22 = *(v5 + 48);

          return v22(a1, v6, AssociatedTypeWitness);
        }

        else
        {
          v20 = *(v8 + 48);

          return v20((a1 + v12) & ~v10);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v11 + (v19 | v17) + 1;
}

void sub_1AB317094(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  v13 = *(v7 + 64) + v12;
  v14 = (v13 & ~v12) + *(v9 + 64);
  if (a3 <= v11)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 - v11 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (v11 < a2)
  {
    v16 = ~v11 + a2;
    if (v14 < 4)
    {
      v17 = (v16 >> (8 * v14)) + 1;
      if (v14)
      {
        v20 = v16 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_46:
              if (v15 == 2)
              {
                *&a1[v14] = v17;
              }

              else
              {
                *&a1[v14] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v15)
    {
      a1[v14] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v14] = 0;
  }

  else if (v15)
  {
    a1[v14] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v8 >= v10)
  {
    v22 = *(v7 + 56);

    v22(a1, a2, v8, AssociatedTypeWitness);
  }

  else
  {
    v21 = *(v9 + 56);

    v21(&a1[v13] & ~v12, a2);
  }
}

__n128 JSRequest.route.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t JSRequest.timeoutInterval.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t JSRequest.version.getter()
{
  v1 = *(v0 + 48);
  if (*(v1 + 16) && (v2 = sub_1AB014DB4(0x6E6F697372657624, 0xE800000000000000), (v3 & 1) != 0) && (sub_1AB0165C4(*(v1 + 56) + 32 * v2, v6), swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t JSRequest.version.setter(uint64_t a1)
{
  v2[3] = MEMORY[0x1E69E6810];
  v2[0] = a1;
  return sub_1AB01AD48(v2, 0x6E6F697372657624, 0xE800000000000000);
}

void (*JSRequest.version.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(v1 + 48);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = sub_1AB014DB4(0x6E6F697372657624, 0xE800000000000000);
    if ((v8 & 1) != 0 && (sub_1AB0165C4(*(v5 + 56) + 32 * v7, v4), swift_dynamicCast()))
    {
      v6 = *(v4 + 40);
    }

    else
    {
      v6 = 0;
    }
  }

  *(v4 + 32) = v6;
  return sub_1AB317640;
}

void sub_1AB317640(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3[3] = MEMORY[0x1E69E6810];
  v3[0] = v2;
  sub_1AB01AD48(v3, 0x6E6F697372657624, 0xE800000000000000);

  free(v1);
}

Swift::Void __swiftcall JSRequest.removeOption(withName:)(Swift::String withName)
{
  object = withName._object;
  countAndFlagsBits = withName._countAndFlagsBits;
  if (sub_1AB460784())
  {
    sub_1AB42852C("JetEngine/JSRequest.swift", 25, 2, 106);
  }

  sub_1AB09AE18(countAndFlagsBits, object, v3);
  sub_1AB014AC0(v3, &unk_1EB437E60);
}

void __swiftcall JSRequest.removingOption(withName:)(JetEngine::JSRequest *__return_ptr retstr, Swift::String withName)
{
  object = withName._object;
  countAndFlagsBits = withName._countAndFlagsBits;
  v7 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v12 = *(v2 + 48);
  retstr->route.service._countAndFlagsBits = v7;
  retstr->route.service._object = v6;
  retstr->route.function._countAndFlagsBits = v8;
  retstr->route.function._object = v9;
  retstr->timeoutInterval.value = v10;
  retstr->timeoutInterval.is_nil = v11;
  retstr->options._rawValue = v12;

  if (sub_1AB460784())
  {
    sub_1AB42852C("JetEngine/JSRequest.swift", 25, 2, 106);
  }

  sub_1AB09AE18(countAndFlagsBits, object, v13);
  sub_1AB014AC0(v13, &unk_1EB437E60);
}

void __swiftcall JSRequest.removingAllOptions()(JetEngine::JSRequest *__return_ptr retstr)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);

  retstr->route.service._countAndFlagsBits = v4;
  retstr->route.service._object = v3;
  retstr->route.function._countAndFlagsBits = v6;
  retstr->route.function._object = v5;
  retstr->timeoutInterval.value = v7;
  retstr->timeoutInterval.is_nil = v8;
  retstr->options._rawValue = MEMORY[0x1E69E7CC8];
}

uint64_t sub_1AB3178D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1AB31791C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB3179B8()
{
  v5 = 0;
  MEMORY[0x1AC59F040](&v5, 8);
  v0 = v5;
  v1 = [objc_opt_self() currentContext];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() valueWithBool:(*&v0 & 0x20000) == 0 inContext:v1];

    if (v3)
    {
      return v3;
    }

    __break(1u);
  }

  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB317AA8()
{
  v0 = sub_1AB17DA10(0x20000000000001uLL);
  v1 = [objc_opt_self() currentContext];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() valueWithDouble:v1 inContext:{vcvtd_n_f64_u64(v0, 0x35uLL) + 0.0}];

    if (v3)
    {
      return v3;
    }

    __break(1u);
  }

  result = sub_1AB461884();
  __break(1u);
  return result;
}

id RollItemsMediaActivityTracker.__allocating_init(pipeline:playlist:eventData:topic:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = OBJC_IVAR___JERollItemsMediaActivityTracker_trackerEventData;
  *&v11[OBJC_IVAR___JERollItemsMediaActivityTracker_trackerEventData] = 0;
  *&v11[OBJC_IVAR___JERollItemsMediaActivityTracker_playActivity] = 0;
  *&v11[OBJC_IVAR___JERollItemsMediaActivityTracker_seekActivity] = 0;
  v13 = &v11[OBJC_IVAR___JERollItemsMediaActivityTracker_activity];
  *v13 = 0;
  v13[8] = 1;
  *&v11[OBJC_IVAR___JERollItemsMediaActivityTracker_pipeline] = a1;
  *&v11[OBJC_IVAR___JERollItemsMediaActivityTracker_playlist] = a2;
  *&v11[v12] = a3;
  v14 = &v11[OBJC_IVAR___JERollItemsMediaActivityTracker_topic];
  *v14 = a4;
  *(v14 + 1) = a5;
  v16.receiver = v11;
  v16.super_class = v5;
  return objc_msgSendSuper2(&v16, sel_init);
}

id RollItemsMediaActivityTracker.init(pipeline:playlist:eventData:topic:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR___JERollItemsMediaActivityTracker_trackerEventData;
  *&v5[OBJC_IVAR___JERollItemsMediaActivityTracker_trackerEventData] = 0;
  *&v5[OBJC_IVAR___JERollItemsMediaActivityTracker_playActivity] = 0;
  *&v5[OBJC_IVAR___JERollItemsMediaActivityTracker_seekActivity] = 0;
  v13 = &v5[OBJC_IVAR___JERollItemsMediaActivityTracker_activity];
  *v13 = 0;
  v13[8] = 1;
  *&v5[OBJC_IVAR___JERollItemsMediaActivityTracker_pipeline] = a1;
  *&v5[OBJC_IVAR___JERollItemsMediaActivityTracker_playlist] = a2;
  *&v5[v12] = a3;
  v14 = &v5[OBJC_IVAR___JERollItemsMediaActivityTracker_topic];
  *v14 = a4;
  *(v14 + 1) = a5;
  v16.receiver = v5;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t RollItemsMediaActivityTracker.playStoppedAtOverallPosition(_:type:reason:eventData:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1AB460544();
  v8 = v7;
  v9 = sub_1AB460544();
  sub_1AB317F54(0, a1, v6, v8, v9, v10, a4);
}

void sub_1AB317F54(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    if (a1 != 1)
    {
      v10 = 0;
LABEL_15:
      if (qword_1ED4D1FC0 != -1)
      {
        swift_once();
      }

      v22 = qword_1ED4D1FC8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1AB4D4720;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1AB4D4720;
      *(&v52 + 1) = MEMORY[0x1E69E6158];
      *&v51 = 0xD000000000000024;
      *(&v51 + 1) = 0x80000001AB509D30;
      *(v24 + 48) = 0u;
      *(v24 + 32) = 0u;
      sub_1AB0169C4(&v51, v24 + 32);
      *(v24 + 64) = 0;
      *(v23 + 32) = v24;
      *&v51 = v22;
      v48[0] = 0;
      OSLogger.log(contentsOf:withLevel:)(v23, v48);

      goto LABEL_18;
    }

    v8 = &OBJC_IVAR___JERollItemsMediaActivityTracker_seekActivity;
  }

  else
  {
    v8 = &OBJC_IVAR___JERollItemsMediaActivityTracker_playActivity;
  }

  v9 = *v8;
  v10 = *(v7 + v9);
  *(v7 + v9) = 0;
  if (!v10 || (*(*&v10[OBJC_IVAR___JEMediaActivity_pipelineHandler] + 232) & 1) != 0)
  {
    goto LABEL_15;
  }

  v14 = OBJC_IVAR___JEMediaActivity_playlistItem;
  swift_beginAccess();
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
LABEL_20:
    v25 = *&v10[v14];
    swift_getObjectType();
    swift_unknownObjectRetain();
    v26 = sub_1AB3191D0(a7, v25, v7);
    swift_unknownObjectRelease();
    v51 = 0u;
    v52 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D9850;
    *(inited + 32) = sub_1AB460544();
    *(inited + 40) = v28;
    v29 = sub_1AB2D3B88(a2);
    v30 = MEMORY[0x1E69E76D8];
    *(inited + 72) = MEMORY[0x1E69E76D8];
    *(inited + 48) = v29;
    *(inited + 80) = sub_1AB460544();
    *(inited + 88) = v31;
    *(inited + 120) = v30;
    *(inited + 96) = a2;
    *(inited + 128) = sub_1AB460544();
    *(inited + 136) = v32;
    *(inited + 168) = MEMORY[0x1E69E6158];
    *(inited + 144) = a3;
    *(inited + 152) = a4;
    *(inited + 176) = sub_1AB460544();
    *(inited + 184) = v33;
    *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AC0);
    *(inited + 192) = a5;
    *(inited + 200) = a6;

    v34 = sub_1AB01B220(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0);
    swift_arrayDestroy();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1AB2AFF70(0, v26[2] + 1, 1, v26);
    }

    v36 = v26[2];
    v35 = v26[3];
    if (v36 >= v35 >> 1)
    {
      v26 = sub_1AB2AFF70((v35 > 1), v36 + 1, 1, v26);
    }

    v26[2] = v36 + 1;
    v26[v36 + 4] = v34;
    v37 = OBJC_IVAR___JEMediaActivity_type;
    swift_beginAccess();
    v38 = sub_1AB2D4350(*&v10[v37]);
    v40 = v26[2];
    v39 = v26[3];
    if (v40 >= v39 >> 1)
    {
      v43 = v38;
      v26 = sub_1AB2AFF70((v39 > 1), v40 + 1, 1, v26);
      v38 = v43;
    }

    v26[2] = v40 + 1;
    v26[v40 + 4] = v38;
    v50 = v26;
    sub_1AB2D5948(&v50);
    v41 = sub_1AB2F116C(v50);

    sub_1AB01522C(&v51, v48);
    if (v49)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43A610);
      if (swift_dynamicCast())
      {
        v42 = v47;
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      sub_1AB0167A8(v48);
      v42 = 0;
    }

    sub_1AB2EFFA0(v41, v42, *&v10[v37]);

    sub_1AB0167A8(&v51);
LABEL_18:

    return;
  }

  v16 = v15;
  swift_unknownObjectRetain();
  if ([v16 startOverallPosition] <= a2)
  {
    v17 = [v16 startOverallPosition];
    v18 = [v16 duration];
    if (__CFADD__(v17, v18))
    {
      __break(1u);
      return;
    }

    if (&v18[v17] >= a2)
    {
      swift_unknownObjectRelease();
      goto LABEL_20;
    }
  }

  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v19 = qword_1ED4D1FC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1AB4D4720;
  *(&v52 + 1) = MEMORY[0x1E69E6158];
  *&v51 = 0xD000000000000041;
  *(&v51 + 1) = 0x80000001AB509D60;
  *(v21 + 48) = 0u;
  *(v21 + 32) = 0u;
  sub_1AB0169C4(&v51, v21 + 32);
  *(v21 + 64) = 0;
  *(v20 + 32) = v21;
  *&v51 = v19;
  v48[0] = 0;
  OSLogger.log(contentsOf:withLevel:)(v20, v48);

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall RollItemsMediaActivityTracker.jumpFromOverallPosition(_:fromRollItem:toRollItem:eventData:)(Swift::UInt64 _, JEHLSRollItem *fromRollItem, JEHLSRollItem *toRollItem, Swift::OpaquePointer_optional eventData)
{
  rawValue = eventData.value._rawValue;
  v9 = *(v4 + OBJC_IVAR___JERollItemsMediaActivityTracker_playActivity);
  if (v9)
  {
    v10 = OBJC_IVAR___JEMediaActivity_type;
    swift_beginAccess();
    if (!*(v9 + v10))
    {
      v11 = sub_1AB460544();
      v13 = v12;
      v14 = sub_1AB460544();
      sub_1AB317F54(0, _, v11, v13, v14, v15, rawValue);
    }
  }

  RollItemsMediaActivityTracker.seekStartedAtOverallPosition(_:type:reason:rollItem:eventData:)(_, @"automatic", @"next", fromRollItem, rawValue);
  v16 = [(JEHLSItem *)toRollItem startOverallPosition];
  v17 = sub_1AB460544();
  v19 = v18;
  v20 = sub_1AB460544();
  sub_1AB317F54(1, v16, v17, v19, v20, v21, rawValue);

  _s9JetEngine29RollItemsMediaActivityTrackerC28playStartedAtOverallPosition_4type6reason8rollItem9eventDatays6UInt64V_So07JEMediaF11TriggerTypeaSo0tF15PlayStartReasonaSo09JEHLSRollP0CSaySDySSypGGSgtF_0([(JEHLSItem *)toRollItem startOverallPosition], @"automatic", @"next", toRollItem, rawValue);
}

void RollItemsMediaActivityTracker.seekStartedAtOverallPosition(_:type:reason:rollItem:eventData:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v41 = sub_1AB460544();
  v11 = v10;
  v42 = sub_1AB460544();
  v13 = v12;
  v14 = *(v6 + OBJC_IVAR___JERollItemsMediaActivityTracker_pipeline);
  v15 = *(v6 + OBJC_IVAR___JERollItemsMediaActivityTracker_topic);
  v16 = *(v6 + OBJC_IVAR___JERollItemsMediaActivityTracker_topic + 8);
  v17 = objc_allocWithZone(type metadata accessor for MediaActivity());
  v18 = v14;

  v19 = a4;
  v20 = sub_1AB31931C(1, v19, v18, v15, v16, v17);
  if (v20)
  {
    v21 = v20;
    v22 = sub_1AB3191D0(a5, v19, v6);
    memset(v47, 0, 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D9850;
    *(inited + 32) = sub_1AB460544();
    *(inited + 40) = v24;
    v25 = sub_1AB2D3B88(a1);
    v26 = MEMORY[0x1E69E76D8];
    *(inited + 72) = MEMORY[0x1E69E76D8];
    *(inited + 48) = v25;
    *(inited + 80) = sub_1AB460544();
    *(inited + 88) = v27;
    *(inited + 120) = v26;
    *(inited + 96) = a1;
    *(inited + 128) = sub_1AB460544();
    *(inited + 136) = v28;
    *(inited + 168) = MEMORY[0x1E69E6158];
    *(inited + 144) = v41;
    *(inited + 152) = v11;
    *(inited + 176) = sub_1AB460544();
    *(inited + 184) = v29;
    *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AC0);
    *(inited + 192) = v42;
    *(inited + 200) = v13;

    v30 = sub_1AB01B220(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0);
    swift_arrayDestroy();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1AB2AFF70(0, v22[2] + 1, 1, v22);
    }

    v32 = v22[2];
    v31 = v22[3];
    if (v32 >= v31 >> 1)
    {
      v22 = sub_1AB2AFF70((v31 > 1), v32 + 1, 1, v22);
    }

    v22[2] = v32 + 1;
    v22[v32 + 4] = v30;
    v33 = OBJC_IVAR___JEMediaActivity_type;
    swift_beginAccess();
    v34 = sub_1AB2D3FA0(*&v21[v33]);
    v36 = v22[2];
    v35 = v22[3];
    if (v36 >= v35 >> 1)
    {
      v40 = v34;
      v22 = sub_1AB2AFF70((v35 > 1), v36 + 1, 1, v22);
      v34 = v40;
    }

    v22[2] = v36 + 1;
    v22[v36 + 4] = v34;
    v46 = v22;
    sub_1AB2D5948(&v46);
    v37 = sub_1AB2F116C(v46);

    sub_1AB01522C(v47, v44);
    if (v45)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43A610);
      if (swift_dynamicCast())
      {
        v38 = v43;
      }

      else
      {
        v38 = 0;
      }
    }

    else
    {
      sub_1AB0167A8(v44);
      v38 = 0;
    }

    sub_1AB2EFD58(v37, v38, *&v21[v33]);

    sub_1AB0167A8(v47);
    v39 = *(v6 + OBJC_IVAR___JERollItemsMediaActivityTracker_seekActivity);
    *(v6 + OBJC_IVAR___JERollItemsMediaActivityTracker_seekActivity) = v21;
  }

  else
  {
  }
}