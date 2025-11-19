uint64_t sub_1D5459B24()
{
  OUTLINED_FUNCTION_160();
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[28];

  swift_willThrow();

  OUTLINED_FUNCTION_55();
  v10 = v0[39];

  return v9();
}

uint64_t sub_1D5459BD4@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v4 = sub_1D56131C8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v16 = *(v15 + 16);
  OUTLINED_FUNCTION_94_20();
  v17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v22, v24);
    v18 = v25;
    v19 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    (*(v7 + 104))(v12, *MEMORY[0x1E6976988], v4);
    v20 = sub_1D5159364(v12, v18, v19);
    (*(v7 + 8))(v12, v4);
    *a2 = v20;
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_1D4E50004(v22, &unk_1EC7ED400, &qword_1D5620CF0);
    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    sub_1D5615B68();
    OUTLINED_FUNCTION_45_3();
    sub_1D5616138();
    MEMORY[0x1DA6EAC70](0xD00000000000005BLL, 0x80000001D5680D50);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

void sub_1D5459E64()
{
  OUTLINED_FUNCTION_47();
  v67 = v1;
  v68 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v71 = (&v61 - v7);
  OUTLINED_FUNCTION_70_0();
  v8 = sub_1D5614828();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1D56131C8();
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_59_0();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v61 - v27;
  if (sub_1D5454C34())
  {
    v69 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
    v70 = v0;
    v29 = v20[13];
    v65 = *MEMORY[0x1E6976988];
    v64 = v29;
    v29(v28);
    v63 = v20[2];
    v63(v25, v28, v17);
    v66 = v11;
    v62 = *(v11 + 16);
    v62(v16, v67, v8);
    sub_1D4ECAE44();
    v67 = v30;
    v61 = v20[1];
    (v61)(v28, v17);
    v31 = v8;
    v32 = v71;
    sub_1D4F39AB0(v68, v71, &unk_1EC7F2BE0, &qword_1D56250F0);
    OUTLINED_FUNCTION_57(v32, 1, v31);
    if (v33)
    {
      sub_1D4E50004(v71, &unk_1EC7F2BE0, &qword_1D56250F0);
      v35 = 0;
    }

    else
    {
      v64(v28, v65, v17);
      v63(v25, v28, v17);
      v62(v16, v71, v31);
      sub_1D4ECAE44();
      v35 = v34;
      (v61)(v28, v17);
      v36 = *(v66 + 8);
      v37 = OUTLINED_FUNCTION_71();
      v38(v37);
    }

    v39 = v67;
    v40 = [v69 movePlaylistEntry:v67 afterEntry:v35];

    v72 = 0x8000000000000010;
    v41 = swift_unknownObjectRetain();
    sub_1D51B12F0(v41, &v72, &v73);
    v43 = v73;
    v42 = v74;
    v45 = v75;
    v44 = v76;
    v75 = v76;

    sub_1D4FEEE2C(v44);
    v46 = v70;
    sub_1D545CFA0(&v73);
    if (*(v46 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler))
    {
      v71 = *(v46 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler);
      v47 = qword_1EC7E8DF0;
      v69 = *(v46 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler + 8);

      if (v47 != -1)
      {
        OUTLINED_FUNCTION_1_176();
      }

      v48 = sub_1D560C758();
      OUTLINED_FUNCTION_62_4(v48, qword_1EC87C140);
      v49 = v70;

      sub_1D4FEEE2C(v44);
      v50 = sub_1D560C738();
      v51 = sub_1D56156E8();

      sub_1D4FEEE48(v44);
      if (os_log_type_enabled(v50, v51))
      {
        OUTLINED_FUNCTION_144();
        v68 = v43;
        v52 = OUTLINED_FUNCTION_34_61();
        v67 = v40;
        v72 = v52;
        *v43 = 136446466;
        v53 = sub_1D4F636B4();
        sub_1D4E6835C(v53, v54, &v72);
        OUTLINED_FUNCTION_124_10();
        *(v43 + 4) = v17;
        OUTLINED_FUNCTION_60_29();
        v73 = v68;
        v74 = v42;
        v75 = v45;
        v76 = v44;
        v55 = sub_1D51B1128();
        sub_1D4E6835C(v55, v56, &v72);
        OUTLINED_FUNCTION_124_10();
        *(v43 + 14) = v17;
        OUTLINED_FUNCTION_51_35(&dword_1D4E3F000, v57, v58, "%{public}s Invoked delta handler for move for revision: %{public}s.");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_122();
        v43 = v68;
        OUTLINED_FUNCTION_122();
      }

      if (sub_1D54550D4())
      {
        v73 = v43;
        v74 = v42;
        v75 = v45;
        v76 = v44;
        v59 = sub_1D53A5948(&v73);
        sub_1D53A48AC(v59);
      }

      v73 = v43;
      v74 = v42;
      v75 = v45;
      v76 = v44;

      v60 = v71;
      (v71)(&v73, sub_1D545D560, v49);
      swift_unknownObjectRelease();
      sub_1D4EA7420(v60);

      sub_1D4FEEE48(v44);
    }

    else
    {
      sub_1D545CE40();

      swift_unknownObjectRelease();
      sub_1D4FEEE48(v44);
    }

    sub_1D4FEEE48(v44);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_53_9();
    v61 = 474;
    OUTLINED_FUNCTION_3_180();
    __break(1u);
  }
}

uint64_t sub_1D545A47C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAD88, &qword_1D561DB70);
  v2 = sub_1D5614828();
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D561C050;
  (*(v4 + 16))(v8 + v7, a1, v2);
  sub_1D545A568();
  swift_setDeallocating();
  return sub_1D4EFF29C();
}

void sub_1D545A568()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v4 = v3;
  v81 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_4(v81);
  v83 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_115();
  v80 = sub_1D5613158();
  v9 = OUTLINED_FUNCTION_4(v80);
  v70 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v79 = v14 - v13;
  OUTLINED_FUNCTION_70_0();
  v15 = sub_1D56131C8();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  v82 = v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_2();
  v87 = v23;
  OUTLINED_FUNCTION_70_0();
  v66 = sub_1D5614828();
  v24 = OUTLINED_FUNCTION_4(v66);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  v30 = v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_2();
  v33 = v32;
  if (sub_1D5454C34())
  {
    v34 = *(v4 + 16);
    if (v34)
    {
      v90 = MEMORY[0x1E69E7CC0];
      v86 = v34;
      sub_1D5615CB8();
      v35 = v26 + 16;
      v76 = *(v26 + 16);
      v36 = v4 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      v75 = *(v35 + 56);
      v74 = *MEMORY[0x1E6976988];
      v72 = (v18 + 16);
      v73 = (v18 + 104);
      v71 = (v70 + 8);
      v69 = (v35 - 8);
      v68 = (v83 + 8);
      v67 = (v18 + 8);
      v85 = v33;
      v77 = v15;
      v78 = v1;
      do
      {
        v76(v85, v36, v66);
        (*v73)(v87, v74, v15);
        (*v72)(v82, v87, v15);
        v37 = OUTLINED_FUNCTION_258();
        (v76)(v37);
        sub_1D56132E8();
        sub_1D56132C8();
        v38 = sub_1D5159818();
        (*v71)(v79, v80);
        sub_1D560EC98();
        v84 = *v69;
        (*v69)(v30, v66);
        v39 = sub_1D4F42FA4(v38, v82);
        (*v68)(v1, v81);
        v40 = objc_allocWithZone(MEMORY[0x1E6977640]);
        v41 = sub_1D5614BA8();

        v15 = v77;
        [v40 initWithIdentifierSet:v39 modelObjectType:v38 storageDictionary:v41];
        swift_unknownObjectRelease();

        v42 = *v67;
        (*v67)(v82, v77);
        v42(v87, v77);
        v84(v85, v66);
        sub_1D5615C88();
        v43 = *(v90 + 16);
        sub_1D5615CC8();
        OUTLINED_FUNCTION_99();
        v1 = v78;
        sub_1D5615CD8();
        sub_1D5615C98();
        v36 += v75;
        --v86;
      }

      while (v86);
    }

    v44 = *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
    sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    OUTLINED_FUNCTION_143_5();
    v45 = sub_1D5615158();

    v46 = [v44 removePlaylistEntries_];

    v89 = 0x8000000000000018;
    v47 = swift_unknownObjectRetain();
    sub_1D51B12F0(v47, &v89, &v90);
    v48 = v90;
    v49 = v91;
    v51 = v92;
    v50 = v93;
    v92 = v93;

    sub_1D4FEEE2C(v50);
    sub_1D545CFA0(&v90);
    v52 = *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler);
    if (v52)
    {
      v53 = *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler + 8);
      v88 = v48;
      v90 = v48;
      v91 = v49;
      v92 = v51;
      v93 = v50;
      v54 = OUTLINED_FUNCTION_258();
      sub_1D4EA73A4(v54);

      v52(&v90, sub_1D545EC18, v2);

      if (qword_1EC7E8DF0 != -1)
      {
        OUTLINED_FUNCTION_1_176();
      }

      v55 = sub_1D560C758();
      OUTLINED_FUNCTION_62_4(v55, qword_1EC87C140);

      sub_1D4FEEE2C(v50);
      v56 = sub_1D560C738();
      v57 = sub_1D56156E8();

      sub_1D4FEEE48(v50);
      if (os_log_type_enabled(v56, v57))
      {
        v58 = OUTLINED_FUNCTION_144();
        v89 = swift_slowAlloc();
        *v58 = 136446466;
        v59 = sub_1D4F636B4();
        sub_1D4E6835C(v59, v60, &v89);
        OUTLINED_FUNCTION_124_10();
        *(v58 + 4) = v46;
        *(v58 + 12) = 2082;
        v90 = v88;
        v91 = v49;
        v92 = v51;
        v93 = v50;
        v61 = sub_1D51B1128();
        sub_1D4E6835C(v61, v62, &v89);
        OUTLINED_FUNCTION_124_10();
        *(v58 + 14) = v46;
        _os_log_impl(&dword_1D4E3F000, v56, v57, "%{public}s Invoked delta handler for remove with revision: %{public}s", v58, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_122();
        OUTLINED_FUNCTION_122();
      }

      if (sub_1D54550D4())
      {
        v90 = v88;
        v91 = v49;
        v92 = v51;
        v93 = v50;
        v63 = sub_1D53A5948(&v90);
        sub_1D53A48AC(v63);
        swift_unknownObjectRelease();
        v64 = OUTLINED_FUNCTION_258();
        sub_1D4EA7420(v64);

        sub_1D4FEEE48(v50);

        sub_1D4FEEE48(v50);

LABEL_15:
        OUTLINED_FUNCTION_46();
        return;
      }

      swift_unknownObjectRelease();
      v65 = OUTLINED_FUNCTION_258();
      sub_1D4EA7420(v65);
    }

    else
    {
      sub_1D545CE40();

      swift_unknownObjectRelease();
    }

    sub_1D4FEEE48(v50);

    sub_1D4FEEE48(v50);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_53_9();
  OUTLINED_FUNCTION_3_180();
  __break(1u);
}

unint64_t sub_1D545AE18()
{
  v1 = v0;
  if ((sub_1D5454C34() & 1) == 0)
  {
    OUTLINED_FUNCTION_95_1();
    result = OUTLINED_FUNCTION_3_180();
    __break(1u);
    return result;
  }

  v2 = [*(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController) removeAllPlaylistEntries];
  v39 = 0x8000000000000020;
  v3 = swift_unknownObjectRetain();
  sub_1D51B12F0(v3, &v39, &v40);
  v5 = v40;
  v4 = v41;
  v7 = v42;
  v6 = v43;
  v42 = v43;

  sub_1D4FEEE2C(v6);
  sub_1D545CFA0(&v40);
  v8 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler + 8);
    v40 = v5;
    v41 = v4;
    v42 = v7;
    v43 = v6;
    v10 = OUTLINED_FUNCTION_123_2();
    sub_1D4EA73A4(v10);

    v8(&v40, sub_1D545EC18, v1);

    if (qword_1EC7E8DF0 != -1)
    {
      OUTLINED_FUNCTION_1_176();
    }

    v38 = v5;
    v11 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v11, qword_1EC87C140);

    sub_1D4FEEE2C(v6);
    v12 = sub_1D560C738();
    v13 = sub_1D56156E8();

    sub_1D4FEEE48(v6);
    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_144();
      v39 = OUTLINED_FUNCTION_34_61();
      *v2 = 136446466;
      v14 = sub_1D4F636B4();
      v22 = OUTLINED_FUNCTION_89_20(v14, v15, v16, v17, v18, v19, v20, v21, v36);

      *(v2 + 4) = v22;
      OUTLINED_FUNCTION_60_29();
      v40 = v38;
      v41 = v4;
      v42 = v7;
      v43 = v6;
      v23 = sub_1D51B1128();
      v31 = OUTLINED_FUNCTION_89_20(v23, v24, v25, v26, v27, v28, v29, v30, v37);

      *(v2 + 14) = v31;
      OUTLINED_FUNCTION_51_35(&dword_1D4E3F000, v32, v33, "%{public}s Invoked delta handler for remove with revision: %{public}s");
      OUTLINED_FUNCTION_87_19();
      OUTLINED_FUNCTION_37_46();
      OUTLINED_FUNCTION_122();
    }

    if (sub_1D54550D4())
    {
      v40 = v38;
      v41 = v4;
      v42 = v7;
      v43 = v6;
      v34 = sub_1D53A5948(&v40);
      sub_1D53A48AC(v34);
      swift_unknownObjectRelease();
      sub_1D4EA7420(v8);

      OUTLINED_FUNCTION_57_37();
      sub_1D4FEEE48(v6);
    }

    swift_unknownObjectRelease();
    sub_1D4EA7420(v8);
  }

  else
  {
    sub_1D545CE40();

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_57_37();

  return sub_1D4FEEE48(v6);
}

uint64_t sub_1D545B198()
{
  OUTLINED_FUNCTION_60();
  v1[19] = v0;
  sub_1D56153C8();
  v1[20] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[21] = v2;
  v1[22] = v3;
  v4 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D545B218()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0[19] + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D545B314;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6A78, &unk_1D56661B0);
  OUTLINED_FUNCTION_25_6(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_20_88();
  [v1 undoPreviousTransactionWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D545B314()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  OUTLINED_FUNCTION_79_22();
  v5 = *(v4 + 176);
  v7 = *(v6 + 168);
  if (v8)
  {
    v9 = sub_1D545EC1C;
  }

  else
  {
    v9 = sub_1D545B430;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1D545B430()
{
  v73 = v0;
  v5 = v0[18];
  v6 = v0[19];
  v7 = *(sub_1D5454C48() + 16);

  if (v7)
  {
    v8 = v0[19];
    v9 = sub_1D5454D80();
    v10 = *(sub_1D5454C48() + 16);

    if (v9 < v10)
    {
      v11 = v0[19];
      v12 = *(sub_1D5454C48() + 16);

      --v12;
      v13 = sub_1D5454D80();
      v14 = __OFSUB__(v12, v13);
      v15 = v12 - v13;
      if (v14)
      {
        __break(1u);
      }

      else
      {
        v16 = v0[19];
        v17 = sub_1D5454C48();
        if ((v15 & 0x8000000000000000) == 0)
        {
          if (v15 < *(v17 + 16))
          {
            v18 = v0[19];
            v19 = v17 + 24 * v15;
            v4 = *(v19 + 40);
            v3 = *(v19 + 48);

            sub_1D4FEEE2C(v3);

            KeyPath = swift_getKeyPath();
            v2 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel___observationRegistrar;
            v0[10] = v18;
            OUTLINED_FUNCTION_0_236();
            sub_1D4E41400(v20, v21);
            OUTLINED_FUNCTION_131_1();
            sub_1D560C4C8();

            v0[10] = v18;
            swift_getKeyPath();
            OUTLINED_FUNCTION_72_28();
            sub_1D560C4E8();

            v22 = *(v18 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsOffset);
            v14 = __OFADD__(v22, 1);
            v23 = v22 + 1;
            if (!v14)
            {
              v24 = v0[19];
              *(v18 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsOffset) = v23;
              v0[10] = v24;
              swift_getKeyPath();
              OUTLINED_FUNCTION_72_28();
              sub_1D560C4D8();

              v25 = [v5 musicKit_transactionDetails_referenceIdentifier];
              if (!v25)
              {
                OUTLINED_FUNCTION_95_1();
                OUTLINED_FUNCTION_11_28();
                return OUTLINED_FUNCTION_19_79();
              }

              v26 = v25;
              v28 = v0[19];
              v27 = v0[20];

              v29 = sub_1D5614D68();
              v31 = v30;

              v32 = sub_1D5454E10();
              v33 = *(v32 + 16);
              v34 = 16 * v33;
              do
              {
                if (!v33)
                {

                  goto LABEL_22;
                }

                v35 = v33;
                v36 = v34;
                v37 = v32 + v34;
                if (*(v37 + 16) == v29 && *(v37 + 24) == v31)
                {
                  break;
                }

                v39 = sub_1D5616168();
                v34 = v36 - 16;
                v33 = v35 - 1;
              }

              while ((v39 & 1) == 0);

              v40 = v0[19];
              if (v35 >= 2)
              {
                result = sub_1D5454E10();
                if ((v35 - 2) >= *(result + 16))
                {
                  __break(1u);
                  return result;
                }

                v42 = v0[19];
                v43 = *(result + v36);
                v44 = *(result + v36 + 8);
              }

              sub_1D5454FFC();
LABEL_22:
              v48 = v0[19];
              KeyPath = *(v48 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler);
              if (!KeyPath)
              {
                v65 = v0[19];
                sub_1D545CE40();
                goto LABEL_31;
              }

              v49 = *(v48 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler + 8);
              OUTLINED_FUNCTION_40_13();
              v50 = swift_allocObject();
              *(v50 + 16) = v3;
              v68 = v50;
              sub_1D4EA73A4(KeyPath);
              swift_unknownObjectRetain();
              v66 = v3;
              sub_1D4FEEE2C(v3);
              sub_1D51B12F0(v5, &v68, &v69);
              v4 = v70;
              v3 = v71;
              v2 = v72;
              v67 = v69;

              KeyPath(&v69, sub_1D545EC18, v48);

              if (qword_1EC7E8DF0 != -1)
              {
                goto LABEL_39;
              }

              goto LABEL_24;
            }

LABEL_38:
            __break(1u);
LABEL_39:
            OUTLINED_FUNCTION_1_176();
LABEL_24:
            v51 = v0[19];
            v52 = sub_1D560C758();
            OUTLINED_FUNCTION_62_4(v52, qword_1EC87C140);

            sub_1D4FEEE2C(v2);
            v53 = sub_1D560C738();
            v54 = sub_1D56156E8();

            sub_1D4FEEE48(v2);
            if (os_log_type_enabled(v53, v54))
            {
              v55 = v0[19];
              v56 = OUTLINED_FUNCTION_144();
              v68 = swift_slowAlloc();
              *v56 = 136446466;
              v57 = sub_1D4F636B4();
              sub_1D4E6835C(v57, v58, &v68);
              OUTLINED_FUNCTION_86_22();
              *(v56 + 4) = KeyPath;
              *(v56 + 12) = 2082;
              v69 = v67;
              v70 = v4;
              v71 = v3;
              v72 = v2;
              v59 = sub_1D51B1128();
              sub_1D4E6835C(v59, v60, &v68);
              OUTLINED_FUNCTION_86_22();
              *(v56 + 14) = KeyPath;
              OUTLINED_FUNCTION_113_13(&dword_1D4E3F000, v61, v62, "%{public}s Invoked delta handler for undo with revision: %{public}s.");
              OUTLINED_FUNCTION_87_19();
              OUTLINED_FUNCTION_37_46();
              OUTLINED_FUNCTION_122();
            }

            v63 = v0[19];
            if (sub_1D54550D4())
            {
              v69 = v67;
              v70 = v4;
              v71 = v3;
              v72 = v2;
              v64 = sub_1D53A5948(&v69);
              sub_1D53A48AC(v64);
              sub_1D4EA7420(KeyPath);

              sub_1D4FEEE48(v2);
            }

            else
            {
              sub_1D4EA7420(KeyPath);

              sub_1D4FEEE48(v2);
            }

            v3 = v66;
LABEL_31:

            sub_1D4FEEE48(v3);
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_22_1();
            goto LABEL_32;
          }

LABEL_37:
          __break(1u);
          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_37;
    }
  }

  v45 = v0[20];

  sub_1D545D564();
  swift_allocError();
  *v46 = 0;
  swift_willThrow();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_55();
LABEL_32:

  return v47();
}

uint64_t *sub_1D545BA58(uint64_t a1, uint64_t a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;
    v8 = OUTLINED_FUNCTION_143_5();

    return sub_1D4F23514(v8, v9);
  }

  else if (a2)
  {
    swift_unknownObjectRetain();

    return sub_1D4F23510(v6, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D545BAE8()
{
  OUTLINED_FUNCTION_60();
  v1[19] = v0;
  sub_1D56153C8();
  v1[20] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[21] = v2;
  v1[22] = v3;
  v4 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D545BB68()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0[19] + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D545BC64;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6A78, &unk_1D56661B0);
  OUTLINED_FUNCTION_25_6(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_20_88();
  [v1 redoNextTransactionWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D545BC64()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  OUTLINED_FUNCTION_79_22();
  v5 = *(v4 + 176);
  v7 = *(v6 + 168);
  if (v8)
  {
    v9 = sub_1D545C388;
  }

  else
  {
    v9 = sub_1D545BD80;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1D545BD80()
{
  v84 = v0;
  v6 = v0[19];
  v5 = v0[20];

  v78 = v0[18];
  if (sub_1D5454D80() < 1 || (v7 = v0[19], v8 = sub_1D5454D80(), v9 = *(sub_1D5454C48() + 16), , v9 < v8))
  {
    sub_1D545D564();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_55();
    goto LABEL_30;
  }

  v12 = v0[19];
  v13 = sub_1D5454E10();
  v14 = *(v13 + 16);
  v15 = 16 * v14;
  v16 = &selRef_musicKit_changeDetails_type;
  while (1)
  {
    if (!v14)
    {

      goto LABEL_17;
    }

    v4 = v14;
    v3 = v15;
    if (v14 > *(v13 + 16))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v18 = *(v13 + v15 + 16);
    v17 = *(v13 + v15 + 24);

    v2 = [v78 musicKit_transactionDetails_identifier];
    v19 = sub_1D5614D68();
    KeyPath = v20;

    if (v18 == v19 && v17 == KeyPath)
    {
      break;
    }

    v22 = sub_1D5616168();

    v15 = v3 - 16;
    v14 = v4 - 1;
    if (v22)
    {
      goto LABEL_15;
    }
  }

LABEL_15:

  v23 = v0[19];
  v24 = sub_1D5454E10();
  if (v4 > *(v24 + 16))
  {
    goto LABEL_38;
  }

  v25 = v0[19];
  v26 = *(v24 + v3 + 16);
  v27 = *(v24 + v3 + 24);

  sub_1D5454FFC();
LABEL_17:
  v28 = v0[19];
  KeyPath = swift_getKeyPath();
  v16 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel___observationRegistrar;
  v0[10] = v28;
  OUTLINED_FUNCTION_0_236();
  sub_1D4E41400(v29, v30);
  OUTLINED_FUNCTION_131_1();
  sub_1D560C4C8();

  v0[10] = v28;
  swift_getKeyPath();
  sub_1D560C4E8();

  v31 = *(v28 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsOffset);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    goto LABEL_34;
  }

  v34 = v0[19];
  *(v28 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsOffset) = v33;
  v0[10] = v34;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_131_1();
  sub_1D560C4D8();

  v35 = *(sub_1D5454C48() + 16);

  v36 = sub_1D5454D80();
  v16 = v35 - 1 - v36;
  if (__OFSUB__(v35 - 1, v36))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v37 = v0[19];
  v38 = sub_1D5454C48();
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v16 >= *(v38 + 16))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    OUTLINED_FUNCTION_1_176();
    goto LABEL_23;
  }

  v39 = v0[19];
  v40 = v38 + 24 * v16;
  KeyPath = *(v40 + 40);
  v16 = *(v40 + 48);

  sub_1D4FEEE2C(v16);

  v41 = v39 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler;
  v42 = *(v39 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler);
  v43 = v0[19];
  if (!v42)
  {
    v72 = v0[19];
    sub_1D545CE40();
    goto LABEL_29;
  }

  v44 = *(v41 + 8);
  OUTLINED_FUNCTION_40_13();
  v45 = swift_allocObject();
  *(v45 + 16) = v16;
  v79 = v45 | 0x4000000000000000;
  sub_1D4EA73A4(v42);
  swift_unknownObjectRetain();
  sub_1D4FEEE2C(v16);
  sub_1D51B12F0(v78, &v79, &v80);
  v4 = v81;
  v3 = v82;
  v2 = v83;
  v77 = v80;

  v76 = v42;
  v42(&v80, sub_1D545EC18, v43);

  if (qword_1EC7E8DF0 != -1)
  {
    goto LABEL_39;
  }

LABEL_23:
  v46 = v0[19];
  v47 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v47, qword_1EC87C140);

  sub_1D4FEEE2C(v2);
  v48 = sub_1D560C738();
  v49 = sub_1D56156E8();

  sub_1D4FEEE48(v2);
  if (os_log_type_enabled(v48, v49))
  {
    v50 = v0[19];
    v51 = OUTLINED_FUNCTION_144();
    v79 = swift_slowAlloc();
    *v51 = 136446466;
    v52 = sub_1D4F636B4();
    OUTLINED_FUNCTION_89_20(v52, v53, v54, v55, v56, v57, v58, v59, v74);
    OUTLINED_FUNCTION_86_22();
    *(v51 + 4) = KeyPath;
    *(v51 + 12) = 2082;
    v80 = v77;
    v81 = v4;
    v82 = v3;
    v83 = v2;
    v60 = sub_1D51B1128();
    OUTLINED_FUNCTION_89_20(v60, v61, v62, v63, v64, v65, v66, v67, v75);
    OUTLINED_FUNCTION_86_22();
    *(v51 + 14) = KeyPath;
    OUTLINED_FUNCTION_113_13(&dword_1D4E3F000, v68, v69, "%{public}s Invoked delta handler for redo with revision: %{public}s.");
    OUTLINED_FUNCTION_87_19();
    OUTLINED_FUNCTION_37_46();
    OUTLINED_FUNCTION_122();
  }

  v70 = v0[19];
  if (sub_1D54550D4())
  {
    v80 = v77;
    v81 = v4;
    v82 = v3;
    v83 = v2;
    v71 = sub_1D53A5948(&v80);
    sub_1D53A48AC(v71);
    sub_1D4EA7420(v76);

    sub_1D4FEEE48(v2);
  }

  else
  {
    sub_1D4EA7420(v76);

    sub_1D4FEEE48(v2);
  }

LABEL_29:

  sub_1D4FEEE48(v16);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_22_1();
LABEL_30:

  return v11();
}

uint64_t sub_1D545C388()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);

  swift_willThrow();
  swift_willThrow();
  v3 = *(v0 + 184);
  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D545C400()
{
  OUTLINED_FUNCTION_60();
  v1[24] = v2;
  v1[25] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  v1[26] = OUTLINED_FUNCTION_127();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  v1[27] = OUTLINED_FUNCTION_127();
  v9 = sub_1D560E728();
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  v1[28] = OUTLINED_FUNCTION_127();
  v12 = sub_1D560D9A8();
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  v1[29] = OUTLINED_FUNCTION_127();
  v15 = sub_1D560D838();
  v1[30] = v15;
  OUTLINED_FUNCTION_69(v15);
  v1[31] = v16;
  v18 = *(v17 + 64);
  v1[32] = OUTLINED_FUNCTION_167();
  v1[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D545C550, 0, 0);
}

uint64_t sub_1D545C550()
{
  v1 = v0[25];
  if (sub_1D5454C34())
  {
    v2 = v0[25];
    if (sub_1D54550D4())
    {
      sub_1D53A48AC(2u);
    }

    v3 = *(v0[25] + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = sub_1D545C6D4;
    v4 = swift_continuation_init();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED410, &qword_1D5625108);
    OUTLINED_FUNCTION_24_66(v5);
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    v0[12] = sub_1D4F40510;
    v0[13] = &block_descriptor_74;
    v0[14] = v4;
    [v3 commitWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    OUTLINED_FUNCTION_95_1();
    return OUTLINED_FUNCTION_3_180();
  }
}

uint64_t sub_1D545C6D4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 272) = v4;
  if (v4)
  {
    v5 = sub_1D545CAF4;
  }

  else
  {
    v5 = sub_1D545C7D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D545C7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_342();
  OUTLINED_FUNCTION_335();
  v21 = *(v20 + 264);
  v22 = *(v20 + 248);
  v65 = v21;
  v66 = *(v20 + 240);
  v62 = *(v20 + 232);
  v64 = *(v20 + 224);
  v23 = *(v20 + 216);
  v68 = *(v20 + 208);
  v69 = *(v20 + 200);
  v70 = *(v20 + 256);
  v24 = *(v20 + 184);
  v63 = [v24 legacyIdentifierSet];
  sub_1D560D968();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
  v25 = sub_1D560DB08();
  OUTLINED_FUNCTION_4(v25);
  v27 = v26;
  v29 = *(v28 + 72);
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1D5621D90;
  v32 = v31 + v30;
  v33 = *(v27 + 104);
  v33(v32, *MEMORY[0x1E6975040], v25);
  v33(v32 + v29, *MEMORY[0x1E6975030], v25);
  sub_1D560E718();
  sub_1D560D9E8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  sub_1D4F40E88(v63, v62, v64, v23, v65);
  (*(v22 + 16))(v70, v65, v66);
  v71 = v24;
  v67 = [v24 underlyingObject];
  sub_1D54549E4(v68);
  sub_1D5614898();
  v38 = OUTLINED_FUNCTION_82();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, v69);
  v40 = *(v20 + 208);
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(*(v20 + 208), &unk_1EC7F1990, &unk_1D561CEF0);
    *(v20 + 144) = 0u;
    *(v20 + 160) = 0u;
    *(v20 + 176) = 0;
  }

  else
  {
    v41 = MEMORY[0x1E69773A0];
    *(v20 + 168) = v69;
    *(v20 + 176) = v41;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v20 + 144));
    (*(*(v69 - 8) + 32))(boxed_opaque_existential_0, v40, v69);
  }

  v44 = *(v20 + 256);
  v43 = *(v20 + 264);
  v46 = *(v20 + 240);
  v45 = *(v20 + 248);
  v48 = *(v20 + 224);
  v47 = *(v20 + 232);
  v49 = *(v20 + 208);
  v50 = *(v20 + 216);
  v51 = *(v20 + 192);
  v52 = *(v20 + 200);
  sub_1D56144C8();
  sub_1D5454C14();
  sub_1D54527DC();

  (*(v45 + 8))(v43, v46);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_341();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, v62, v63, v64, v65, v67, v68, v69, v71, a18, a19, a20);
}

uint64_t sub_1D545CAF4()
{
  OUTLINED_FUNCTION_160();
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  swift_willThrow();

  OUTLINED_FUNCTION_55();
  v9 = v0[34];

  return v8();
}

void sub_1D545CBA4()
{
  OUTLINED_FUNCTION_47();
  v28 = sub_1D5613558();
  v1 = OUTLINED_FUNCTION_4(v28);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1D560E728();
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6A90, &qword_1D56662E8);
  OUTLINED_FUNCTION_4(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6A98, &qword_1D56662F0);
  *v0 = 0;
  (*(v15 + 104))(v0, *MEMORY[0x1E69769E0], v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
  v19 = sub_1D560DB08();
  OUTLINED_FUNCTION_4(v19);
  v21 = v20;
  v23 = *(v22 + 72);
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D5621D90;
  v26 = v25 + v24;
  v27 = *(v21 + 104);
  v27(v26, *MEMORY[0x1E6975040], v19);
  v27(v26 + v23, *MEMORY[0x1E6975030], v19);
  sub_1D560E718();
  (*(v3 + 104))(v8, *MEMORY[0x1E6976A60], v28);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_101_14();
  sub_1D5613208();
  sub_1D560DAC8();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D545CE40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_59_0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
  v14 = [v13 currentTrackList];
  sub_1D545CBA4();
  v15 = *(v4 + 16);
  v16 = OUTLINED_FUNCTION_61();
  v17(v16);
  sub_1D5452744(v9);
  [v13 isUndoAvailable];
  sub_1D54528C0();
  [v13 isRedoAvailable];
  sub_1D54528E0();

  return (*(v4 + 8))(v12, v1);
}

uint64_t sub_1D545CFA0(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (sub_1D5454D80() >= 1)
  {
    v5 = sub_1D5454C48();
    v6 = sub_1D5454D80();
    sub_1D516A93C(v6, v5);
    sub_1D54527FC(v7);
  }

  sub_1D5452830();
  swift_getKeyPath();

  sub_1D4FEEE2C(v4);
  OUTLINED_FUNCTION_0_236();
  sub_1D4E41400(v8, v9);
  OUTLINED_FUNCTION_94_20();
  sub_1D560C4C8();

  swift_getKeyPath();
  OUTLINED_FUNCTION_94_20();
  sub_1D560C4E8();

  v10 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsHistory;
  swift_beginAccess();
  sub_1D4EFF64C();
  v11 = *(*(v1 + v10) + 16);
  sub_1D4EFF884(v11);
  v12 = *(v1 + v10);
  *(v12 + 16) = v11 + 1;
  v13 = (v12 + 24 * v11);
  v13[4] = v3;
  v13[5] = v2;
  v13[6] = v4;
  *(v1 + v10) = v12;
  swift_endAccess();
  swift_getKeyPath();
  sub_1D560C4D8();
}

uint64_t sub_1D545D148()
{
  OUTLINED_FUNCTION_0_236();
  sub_1D4E41400(v0, v1);
  OUTLINED_FUNCTION_101_14();
  return sub_1D560C4B8();
}

id sub_1D545D1EC(void *a1, void *a2, void *a3, void *a4)
{
  OUTLINED_FUNCTION_101_14();
  v10 = [v8 v9];

  return v10;
}

id sub_1D545D25C(uint64_t a1, void *a2, void *a3)
{
  sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
  v6 = sub_1D5615158();

  v7 = [v3 initWithInitialItemList:v6 library:a2 authorProfile:a3];

  return v7;
}

void sub_1D545D2F4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  sub_1D54535B8(a1, a2);
}

uint64_t type metadata accessor for MusicLibraryPlaylistViewModel()
{
  result = qword_1EDD5ABA8;
  if (!qword_1EDD5ABA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D545D360(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v15 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_43_1(v11);
  *v12 = v13;
  v12[1] = sub_1D4F69064;

  return sub_1D54554F4(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D545D45C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t sub_1D545D4B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D545D510@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  return sub_1D5459BD4(v1[3], a1);
}

uint64_t sub_1D545D538@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  return sub_1D5459BD4(v1[3], a1);
}

unint64_t sub_1D545D564()
{
  result = qword_1EC7F6A80;
  if (!qword_1EC7F6A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6A80);
  }

  return result;
}

void sub_1D545D5C0()
{
  sub_1D545E884();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1D545E8E4();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_1D560C508();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of MusicLibraryPlaylistViewModel.beginEditing()()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_58_0();
  v6 = (*(v0 + 1248) + **(v0 + 1248));
  v1 = *(*(v0 + 1248) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_43_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_26_12(v3);

  return v6();
}

uint64_t dispatch thunk of MusicLibraryPlaylistViewModel.append<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_58_0();
  v12 = (*(v6 + 1256) + **(v6 + 1256));
  v7 = *(*(v6 + 1256) + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_43_1(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_26_12(v9);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MusicLibraryPlaylistViewModel.append<A, B>(_:)()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_58_0();
  v7 = (*(v0 + 1264) + **(v0 + 1264));
  v1 = *(*(v0 + 1264) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_43_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_26_12(v3);
  v5 = OUTLINED_FUNCTION_45_3();

  return v7(v5);
}

uint64_t dispatch thunk of MusicLibraryPlaylistViewModel.insert<A>(_:after:)()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_58_0();
  v7 = (*(v0 + 1272) + **(v0 + 1272));
  v1 = *(*(v0 + 1272) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_43_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_26_12(v3);
  v5 = OUTLINED_FUNCTION_15_2();

  return v7(v5);
}

uint64_t dispatch thunk of MusicLibraryPlaylistViewModel.insert<A, B>(_:after:)()
{
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_58_0();
  v6 = (*(v0 + 1280) + **(v0 + 1280));
  v1 = *(*(v0 + 1280) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_43_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_26_12(v3);
  OUTLINED_FUNCTION_94_20();

  return v6();
}

uint64_t dispatch thunk of MusicLibraryPlaylistViewModel.remove(_:)()
{
  return (*(*v0 + 1296))();
}

{
  return (*(*v0 + 1304))();
}

uint64_t dispatch thunk of MusicLibraryPlaylistViewModel.undo()()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_58_0();
  v6 = (*(v0 + 1320) + **(v0 + 1320));
  v1 = *(*(v0 + 1320) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_43_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_26_12(v3);

  return v6();
}

uint64_t dispatch thunk of MusicLibraryPlaylistViewModel.redo()()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_58_0();
  v6 = (*(v0 + 1328) + **(v0 + 1328));
  v1 = *(*(v0 + 1328) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_43_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_26_12(v3);

  return v6();
}

uint64_t dispatch thunk of MusicLibraryPlaylistViewModel.save()()
{
  OUTLINED_FUNCTION_80();
  v1 = v0;
  OUTLINED_FUNCTION_58_0();
  v8 = (*(v2 + 1336) + **(v2 + 1336));
  v3 = *(*(v2 + 1336) + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_43_1(v4);
  *v5 = v6;
  v5[1] = sub_1D4F69338;

  return v8(v1);
}

void sub_1D545E884()
{
  if (!qword_1EDD53B78)
  {
    sub_1D5614828();
    v0 = sub_1D560DAB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD53B78);
    }
  }
}

void sub_1D545E8E4()
{
  if (!qword_1EDD52A70)
  {
    sub_1D5614898();
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD52A70);
    }
  }
}

uint64_t sub_1D545EB20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC7F6A30, &qword_1D561C4C0);
    OUTLINED_FUNCTION_143_5();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_20_88()
{
  v1[12] = sub_1D545EC20;
  v1[13] = v0;
  v1[14] = v2;
}

void OUTLINED_FUNCTION_23_69()
{
  v1[12] = sub_1D4FE2404;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_25_62()
{
  *(v0 + 24) = sub_1D5457DD4;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_28_64()
{

  return sub_1D560C4C8();
}

uint64_t OUTLINED_FUNCTION_34_61()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_37_46()
{

  JUMPOUT(0x1DA6ED200);
}

void OUTLINED_FUNCTION_51_35(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_57_37()
{
  sub_1D4FEEE48(v0);
}

uint64_t OUTLINED_FUNCTION_70_25(uint64_t a1, uint64_t a2)
{
  result = a2;
  v4 = *(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_87_19()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_89_20(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return sub_1D4E6835C(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_106_14(unsigned __int8 *a1, uint64_t *a2)
{
  result = *a1;
  v3 = *a2;
  return result;
}

void OUTLINED_FUNCTION_113_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_115_11()
{
}

unint64_t sub_1D545EDFC()
{
  result = qword_1EC7F6AC0;
  if (!qword_1EC7F6AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6AC0);
  }

  return result;
}

void __swiftcall MigratedArtist.init(id:name:)(MusicKitInternal::MigratedArtist *__return_ptr retstr, Swift::String id, Swift::String name)
{
  retstr->artworkImageFilePath.value._countAndFlagsBits = 0;
  retstr->artworkImageFilePath.value._object = 0;
  retstr->id = id;
  retstr->name = name;
}

uint64_t MigratedArtist.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t MigratedArtist.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_71();
}

uint64_t MigratedArtist.artworkImageFilePath.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_71();
}

uint64_t MigratedArtist.artworkImageFilePath.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t static MigratedArtist.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (v10 || (sub_1D5616168() & 1) != 0)
  {
    v11 = v2 == v6 && v4 == v7;
    if (v11 || (sub_1D5616168() & 1) != 0)
    {
      if (v5)
      {
        if (v8)
        {
          if (v3 == v9 && v5 == v8)
          {
            return 1;
          }

          OUTLINED_FUNCTION_71();
          if (sub_1D5616168())
          {
            return 1;
          }
        }
      }

      else if (!v8)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t MigratedArtist.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1D5614E28();
  sub_1D5614E28();
  if (!v6)
  {
    return sub_1D56162F8();
  }

  sub_1D56162F8();

  return sub_1D5614E28();
}

uint64_t MigratedArtist.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5614E28();
  sub_1D56162F8();
  if (v6)
  {
    sub_1D5614E28();
  }

  return sub_1D5616328();
}

uint64_t sub_1D545F160()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[2];
  sub_1D56162D8();
  MigratedArtist.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D545F1B8@<X0>(uint64_t *a1@<X8>)
{
  result = MigratedArtist.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MigratedArtist.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_0_237();
  OUTLINED_FUNCTION_2_177();
  MEMORY[0x1DA6EAC70]();
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1DA6EAC70]();

  OUTLINED_FUNCTION_2_177();
  MEMORY[0x1DA6EAC70](v3, v4);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1DA6EAC70]();

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v6;
}

uint64_t MigratedArtist.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  OUTLINED_FUNCTION_0_237();
  OUTLINED_FUNCTION_2_177();
  MEMORY[0x1DA6EAC70]();
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1DA6EAC70]();

  OUTLINED_FUNCTION_2_177();
  MEMORY[0x1DA6EAC70](v3, v4);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1DA6EAC70]();

  if (v6)
  {
    sub_1D5615B68();

    MEMORY[0x1DA6EAC70](v5, v6);
    OUTLINED_FUNCTION_1_5();
    MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D568C210);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v8;
}

unint64_t sub_1D545F3E8()
{
  result = qword_1EC7F6AC8;
  if (!qword_1EC7F6AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6AC8);
  }

  return result;
}

void __swiftcall PlaybackPosition.init(rawStorageDictionary:)(MusicKitInternal::PlaybackPosition_optional *__return_ptr retstr, Swift::OpaquePointer rawStorageDictionary)
{
  sub_1D545F650();
  v3 = sub_1D5614C68();

  sub_1D4ED0A3C(0, v3);
  if (v16)
  {
    OUTLINED_FUNCTION_0_238();
    OUTLINED_FUNCTION_2_178();
    if (v5)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    sub_1D50B8C70(v15);
    v6 = 0.0;
  }

  sub_1D4ED0A3C(1, v3);
  if (v16)
  {
    v7 = (OUTLINED_FUNCTION_0_238() & v14);
  }

  else
  {
    sub_1D50B8C70(v15);
    v7 = 0;
  }

  sub_1D4ED0A3C(2, v3);
  if (v16)
  {
    if ((OUTLINED_FUNCTION_0_238() & v14) != 0)
    {
      v8 = 256;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    sub_1D50B8C70(v15);
    v8 = 0;
  }

  sub_1D4ED0A3C(3, v3);
  if (v16)
  {
    OUTLINED_FUNCTION_0_238();
    OUTLINED_FUNCTION_2_178();
    if (v5)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    sub_1D50B8C70(v15);
    v10 = 0;
  }

  sub_1D4ED0A3C(4, v3);
  if (v16)
  {
    OUTLINED_FUNCTION_0_238();
    OUTLINED_FUNCTION_2_178();
    if (v5)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v11;
    }
  }

  else
  {
    sub_1D50B8C70(v15);
    v12 = 0.0;
  }

  sub_1D4ED0A3C(5, v3);

  if (v16)
  {
    OUTLINED_FUNCTION_0_238();
    OUTLINED_FUNCTION_2_178();
    if (v5)
    {
      v13 = 0.0;
    }
  }

  else
  {
    sub_1D50B8C70(v15);
    v13 = 0.0;
  }

  retstr->value.bookmarkTime = v6;
  *&retstr->value.hasBeenPlayed = v8 | v7;
  retstr->value.playCount = v10;
  retstr->value.startTime = v12;
  retstr->value.stopTime = v13;
}

unint64_t sub_1D545F650()
{
  result = qword_1EDD56BA8;
  if (!qword_1EDD56BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56BA8);
  }

  return result;
}

uint64_t PlaybackPosition.convertToLegacyModelStorageDictionary(for:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = v0[2];
  v6 = v0[3];
  v5 = v0[4];
  sub_1D4ECC7E8();
  v67 = sub_1D5614BD8();
  v14 = OUTLINED_FUNCTION_1_177(v67, v7, v8, v9, v10, v11, v12, v13, v61, v1);
  v15 = sub_1D4EC8DB8(v14, 0);
  v23 = OUTLINED_FUNCTION_1_177(v15, v16, v17, v18, v19, v20, v21, v22, v62, v2);
  v24 = sub_1D4EC8DB8(v23, 1);
  v32 = OUTLINED_FUNCTION_1_177(v24, v25, v26, v27, v28, v29, v30, v31, v63, v3);
  v33 = sub_1D4EC8DB8(v32, 2);
  v41 = OUTLINED_FUNCTION_1_177(v33, v34, v35, v36, v37, v38, v39, v40, v64, v4);
  v42 = sub_1D4EC8DB8(v41, 3);
  v50 = OUTLINED_FUNCTION_1_177(v42, v43, v44, v45, v46, v47, v48, v49, v65, v6);
  v51 = sub_1D4EC8DB8(v50, 4);
  v59 = OUTLINED_FUNCTION_1_177(v51, v52, v53, v54, v55, v56, v57, v58, v66, v5);
  sub_1D4EC8DB8(v59, 5);
  return v67;
}

uint64_t PlaybackPosition.LegacyModelPlaybackPositionPropertyKey.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D5615EF8();

  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t PlaybackPosition.LegacyModelPlaybackPositionPropertyKey.rawValue.getter()
{
  result = 0xD00000000000002BLL;
  switch(*v0)
  {
    case 1:
    case 3:
      result = 0xD00000000000002CLL;
      break;
    case 2:
      result = 0xD000000000000039;
      break;
    case 4:
      result = 0xD000000000000028;
      break;
    case 5:
      result = 0xD000000000000027;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D545F8DC@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return PlaybackPosition.LegacyModelPlaybackPositionPropertyKey.init(rawValue:)(a1);
}

unint64_t sub_1D545F8E8@<X0>(unint64_t *a1@<X8>)
{
  result = PlaybackPosition.LegacyModelPlaybackPositionPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PlaybackPosition.legacyModelAttributeType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6976598];
  v3 = sub_1D56126B8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_1D545F988()
{
  result = qword_1EDD56B98;
  if (!qword_1EDD56B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56B98);
  }

  return result;
}

unint64_t sub_1D545F9E4()
{
  result = qword_1EDD56B90;
  if (!qword_1EDD56B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56B90);
  }

  return result;
}

uint64_t sub_1D545FA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D545FB8C();

  return MEMORY[0x1EEDD1388](a1, a2, a3, v6);
}

_BYTE *_s38LegacyModelPlaybackPositionPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D545FB8C()
{
  result = qword_1EC7F6AD0;
  if (!qword_1EC7F6AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6AD0);
  }

  return result;
}

uint64_t sub_1D545FBE0()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE60, &qword_1D5635158);
  v1[3] = v2;
  OUTLINED_FUNCTION_69(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_127();
  v6 = sub_1D560D428();
  v1[6] = v6;
  OUTLINED_FUNCTION_69(v6);
  v1[7] = v7;
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_127();
  v10 = sub_1D560CD48();
  v1[9] = v10;
  OUTLINED_FUNCTION_69(v10);
  v1[10] = v11;
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_127();
  v14 = sub_1D560D348();
  v1[12] = v14;
  OUTLINED_FUNCTION_69(v14);
  v1[13] = v15;
  v17 = *(v16 + 64);
  v1[14] = OUTLINED_FUNCTION_127();
  v18 = sub_1D560D388();
  v1[15] = v18;
  OUTLINED_FUNCTION_69(v18);
  v1[16] = v19;
  v21 = *(v20 + 64);
  v1[17] = OUTLINED_FUNCTION_127();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0) - 8) + 64);
  v1[18] = OUTLINED_FUNCTION_127();
  v23 = sub_1D560F148();
  v1[19] = v23;
  OUTLINED_FUNCTION_69(v23);
  v1[20] = v24;
  v26 = *(v25 + 64);
  v1[21] = OUTLINED_FUNCTION_127();
  v27 = sub_1D560EBD8();
  v1[22] = v27;
  OUTLINED_FUNCTION_69(v27);
  v1[23] = v28;
  v30 = *(v29 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50) - 8) + 64);
  v1[26] = OUTLINED_FUNCTION_127();
  v32 = sub_1D560D9A8();
  v1[27] = v32;
  OUTLINED_FUNCTION_69(v32);
  v1[28] = v33;
  v35 = *(v34 + 64);
  v1[29] = OUTLINED_FUNCTION_127();
  v36 = sub_1D560D838();
  v1[30] = v36;
  OUTLINED_FUNCTION_69(v36);
  v1[31] = v37;
  v39 = *(v38 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v40 = sub_1D5610088();
  v1[35] = v40;
  OUTLINED_FUNCTION_69(v40);
  v1[36] = v41;
  v43 = *(v42 + 64);
  v1[37] = OUTLINED_FUNCTION_127();

  return MEMORY[0x1EEE6DFA0](sub_1D545FFDC, 0, 0);
}

uint64_t sub_1D545FFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *(v18 + 272);
  v48 = *(v18 + 280);
  v20 = *(v18 + 240);
  v21 = *(v18 + 248);
  v23 = *(v18 + 224);
  v22 = *(v18 + 232);
  v25 = *(v18 + 208);
  v24 = *(v18 + 216);
  v26 = *(v18 + 16);
  v27 = v26[4];
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v28 = *(v27 + 8);
  sub_1D560EC98();
  sub_1D560D828();
  v29 = *(v21 + 8);
  *(v18 + 304) = v29;
  *(v18 + 312) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v19, v20);
  v30 = sub_1D560D8B8();
  (*(v23 + 8))(v22, v24);
  sub_1D4EC980C(v30);

  if (__swift_getEnumTagSinglePayload(v25, 1, v48) == 1)
  {
    sub_1D4E6C9CC(*(v18 + 208), &qword_1EC7EA358, &unk_1D561DF50);
    return sub_1D5615E08();
  }

  else
  {
    v32 = *(v18 + 16);
    (*(*(v18 + 288) + 32))(*(v18 + 296), *(v18 + 208), *(v18 + 280));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2D8, &unk_1D561DFF0);
    v33 = sub_1D560BB98();
    OUTLINED_FUNCTION_69(v33);
    v35 = *(v34 + 72);
    v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v38 = swift_allocObject();
    *(v18 + 320) = v38;
    *(v38 + 16) = xmmword_1D5621D90;
    sub_1D560BB28();
    sub_1D560BB28();
    *(v18 + 392) = *(type metadata accessor for MusicCatalogTracklistIdentifiersRequest() + 24);
    v39 = *(MEMORY[0x1E6974D00] + 4);
    v40 = swift_task_alloc();
    *(v18 + 328) = v40;
    *v40 = v18;
    v40[1] = sub_1D54602D8;

    return MEMORY[0x1EEDCE258](v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_1D54602D8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 328);
  v9 = *v3;
  v4[42] = a1;
  v4[43] = a2;
  v4[44] = v2;

  if (v2)
  {
    v6 = v4[40];

    v7 = sub_1D5460D7C;
  }

  else
  {
    v7 = sub_1D54603F8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1D54603F8()
{
  OUTLINED_FUNCTION_32_5();
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 264);
  v4 = *(v0 + 240);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 16);
  v8 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v9 = *(v8 + 8);
  sub_1D560EC98();
  sub_1D560D7A8();
  v2(v3, v4);
  if (__swift_getEnumTagSinglePayload(v6, 1, v5) == 1)
  {
    v11 = *(v0 + 304);
    v10 = *(v0 + 312);
    v12 = *(v0 + 256);
    v13 = *(v0 + 240);
    v14 = *(v0 + 16);
    sub_1D4E6C9CC(*(v0 + 144), &unk_1EC7F1970, &qword_1D561F4A0);
    v15 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v16 = *(v15 + 8);
    sub_1D560EC98();
    v17 = sub_1D560D808();
    v19 = v18;
    v11(v12, v13);
    if (!v19)
    {
      sub_1D5615E08();
      OUTLINED_FUNCTION_16_5();
      return;
    }

    v20 = *(v0 + 344);
    v21 = *(v0 + 392);
    v22 = *(v0 + 320);
    v23 = *(v0 + 296);
    v24 = *(v0 + 200);
    v25 = *(v0 + 72);
    v26 = *(v0 + 16);

    sub_1D5610058();
    OUTLINED_FUNCTION_6_138();
    MEMORY[0x1DA6EAC70](v17, v19);

    OUTLINED_FUNCTION_3_181();
    sub_1D560EB98();
  }

  else
  {
    v27 = *(v0 + 344);
    v52 = *(v0 + 392);
    v53 = *(v0 + 336);
    v28 = *(v0 + 320);
    v29 = *(v0 + 296);
    v30 = *(v0 + 200);
    v32 = *(v0 + 160);
    v31 = *(v0 + 168);
    v33 = *(v0 + 152);
    v51 = *(v0 + 72);
    v34 = *(v0 + 16);
    (*(v32 + 32))(v31, *(v0 + 144), v33);
    sub_1D5610058();
    OUTLINED_FUNCTION_6_138();
    v35 = sub_1D560F138();
    MEMORY[0x1DA6EAC70](v35);

    OUTLINED_FUNCTION_3_181();
    sub_1D560EB88();

    (*(v32 + 8))(v31, v33);
  }

  v54 = *(v0 + 392);
  v36 = *(v0 + 136);
  v38 = *(v0 + 104);
  v37 = *(v0 + 112);
  v40 = *(v0 + 88);
  v39 = *(v0 + 96);
  v41 = *(v0 + 72);
  v42 = *(v0 + 80);
  v43 = *(v0 + 16);
  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 200), *(v0 + 176));
  (*(v38 + 104))(v37, *MEMORY[0x1E6974E78], v39);
  sub_1D560D368();
  v44 = *(v42 + 16);
  *(v0 + 360) = v44;
  *(v0 + 368) = (v42 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v44(v40, v43 + v54, v41);
  sub_1D560D2B8();
  v45 = *(MEMORY[0x1E6974EB0] + 4);
  v46 = swift_task_alloc();
  *(v0 + 376) = v46;
  *v46 = v0;
  v46[1] = sub_1D54607CC;
  v47 = *(v0 + 136);
  v48 = *(v0 + 64);
  OUTLINED_FUNCTION_16_5();

  MEMORY[0x1EEDCE5B0](v49);
}

uint64_t sub_1D54607CC()
{
  v2 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_1D5460E6C;
  }

  else
  {
    v3 = sub_1D54608E0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D54608E0()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 392);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v64 = *(v0 + 64);
  v68 = *(v0 + 40);
  v72 = *(v0 + 384);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  v8 = sub_1D560B9C8();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1D560B9B8();
  v1(v4, v7 + v3, v5);
  sub_1D560B988();
  v11 = sub_1D5612208();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1D56121F8();

  sub_1D560B968();
  v14 = sub_1D560D418();
  v16 = v15;
  sub_1D5460FE0();
  sub_1D560B948();
  sub_1D4E55E1C(v14, v16);
  if (v72)
  {
    v17 = *(v0 + 184);
    v65 = *(v0 + 176);
    v69 = *(v0 + 200);
    v18 = *(v0 + 128);
    v19 = *(v0 + 136);
    v20 = *(v0 + 120);
    v21 = *(v0 + 56);
    v22 = *(v0 + 64);
    v23 = *(v0 + 48);

    (*(v21 + 8))(v22, v23);
    (*(v18 + 8))(v19, v20);
    (*(v17 + 8))(v69, v65);
    v24 = *(v0 + 272);
    v26 = *(v0 + 256);
    v25 = *(v0 + 264);
    v27 = *(v0 + 232);
    v28 = *(v0 + 200);
    v29 = *(v0 + 208);
    v30 = *(v0 + 192);
    v31 = *(v0 + 168);
    v56 = *(v0 + 144);
    v58 = *(v0 + 136);
    v60 = *(v0 + 112);
    v62 = *(v0 + 88);
    v66 = *(v0 + 64);
    v70 = *(v0 + 40);
    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    v50 = *(v0 + 280);
    v51 = *(v0 + 296);
    v52 = *(v0 + 272);
    v53 = *(v0 + 264);
    v54 = *(v0 + 256);
    v55 = *(v0 + 232);
    v57 = *(v0 + 208);
    v48 = *(v0 + 200);
    v49 = *(v0 + 288);
    v59 = *(v0 + 192);
    v46 = *(v0 + 184);
    v47 = *(v0 + 176);
    v61 = *(v0 + 168);
    v63 = *(v0 + 144);
    v43 = *(v0 + 128);
    v44 = *(v0 + 120);
    v45 = *(v0 + 136);
    v67 = *(v0 + 112);
    v71 = *(v0 + 88);
    v34 = *(v0 + 56);
    v35 = *(v0 + 40);
    v41 = *(v0 + 48);
    v42 = *(v0 + 64);
    v37 = *(v0 + 24);
    v36 = *(v0 + 32);
    v38 = *(v0 + 16);
    sub_1D56123B8();
    *(swift_task_alloc() + 16) = v38;
    v39 = sub_1D50DDF14();

    (*(v36 + 8))(v35, v37);
    (*(v34 + 8))(v42, v41);
    (*(v43 + 8))(v45, v44);
    (*(v46 + 8))(v48, v47);
    (*(v49 + 8))(v51, v50);

    v40 = *(v0 + 8);

    return v40(v39);
  }
}

uint64_t sub_1D5460D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_32_5();
  v19 = *(v18 + 352);
  v20 = OUTLINED_FUNCTION_1_178();
  v21(v20);

  v22 = *(v18 + 8);
  OUTLINED_FUNCTION_16_5();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1D5460E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_32_5();
  v19 = v18[25];
  v20 = v18[22];
  v21 = v18[23];
  (*(v18[16] + 8))(v18[17], v18[15]);
  (*(v21 + 8))(v19, v20);
  v22 = v18[48];
  v23 = OUTLINED_FUNCTION_1_178();
  v24(v23);

  v25 = v18[1];
  OUTLINED_FUNCTION_16_5();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t type metadata accessor for MusicCatalogTracklistIdentifiersRequest()
{
  result = qword_1EDD59730;
  if (!qword_1EDD59730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D5460FE0()
{
  result = qword_1EC7EFEA0;
  if (!qword_1EC7EFEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EFE60, &qword_1D5635158);
    sub_1D5461414(&qword_1EC7EC6A8, MEMORY[0x1E6976480]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFEA0);
  }

  return result;
}

uint64_t sub_1D5461094@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v24 - v5;
  v7 = sub_1D5610088();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - v13;
  if (*(a1 + 40) != 1)
  {
    goto LABEL_6;
  }

  sub_1D5612468();
  sub_1D560FFA8();
  sub_1D5461414(&qword_1EDD53350, MEMORY[0x1E6975BC8]);
  v15 = sub_1D5614D18();
  v16 = *(v8 + 8);
  v16(v12, v7);
  v16(v14, v7);
  if (v15)
  {
    goto LABEL_6;
  }

  sub_1D5612468();
  sub_1D560FE38();
  v17 = sub_1D5614D18();
  v16(v12, v7);
  v16(v14, v7);
  if (v17)
  {
    goto LABEL_6;
  }

  sub_1D5612468();
  sub_1D560FE48();
  v18 = sub_1D5614D18();
  v16(v12, v7);
  v16(v14, v7);
  if (v18 & 1) != 0 || (sub_1D5612468(), sub_1D560FDF8(), v19 = sub_1D5614D18(), v16(v12, v7), v16(v14, v7), (v19))
  {
LABEL_6:
    sub_1D5612448();
    sub_1D5612468();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
    v20 = v25;
    sub_1D560F128();
    v21 = 0;
  }

  else
  {
    v21 = 1;
    v20 = v25;
  }

  v22 = sub_1D560F148();
  return __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
}

uint64_t sub_1D5461414(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5461484()
{
  result = sub_1D5461510();
  if (v1 <= 0x3F)
  {
    result = sub_1D560CD48();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D5461510()
{
  result = qword_1EDD59478[0];
  if (!qword_1EDD59478[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDD59478);
  }

  return result;
}

uint64_t MusicDataRequest.configuration.setter(uint64_t a1)
{
  v2 = sub_1D560CD48();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  type metadata accessor for MusicRequestConfiguration();
  sub_1D4E48388();
  sub_1D560E6C8();
  (*(v5 + 16))(v10, v12, v2);
  sub_1D560D2B8();
  sub_1D4F581B8(a1);
  return (*(v5 + 8))(v12, v2);
}

uint64_t MusicDataRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D560CD48();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  sub_1D560D2A8();
  sub_1D560CCE8();
  (*(v5 + 8))(v9, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v17 = type metadata accessor for MusicRequestConfiguration();
  v18 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v16, v18 ^ 1u, 1, v17);
  sub_1D4F73F78(v16, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v17) == 1)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    if (__swift_getEnumTagSinglePayload(v14, 1, v17) != 1)
    {
      sub_1D4FEF060(v14);
    }
  }

  else
  {
    sub_1D4E56C6C(v14, a1);
  }

  return sub_1D4FEF060(v16);
}

uint64_t sub_1D54618A4(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4F5A490(a1, v5);
  return MusicDataRequest.configuration.setter(v5);
}

void (*MusicDataRequest.configuration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = OUTLINED_FUNCTION_2_179();
  v3[4] = OUTLINED_FUNCTION_2_179();
  v7 = type metadata accessor for MusicRequestConfiguration();
  v3[5] = v7;
  v8 = *(*(v7 - 8) + 64);
  v3[6] = OUTLINED_FUNCTION_2_179();
  v9 = OUTLINED_FUNCTION_2_179();
  v3[7] = v9;
  MusicDataRequest.configuration.getter(v9);
  return sub_1D5461A20;
}

void sub_1D5461A20(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v6 = (*a1)[4];
  v5 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    sub_1D4F5A490((*a1)[7], v3);
    sub_1D4E48388();
    sub_1D560E6C8();
    v11 = OUTLINED_FUNCTION_178();
    v12(v11);
    sub_1D560D2B8();
    (*(v8 + 8))(v6, v9);
    sub_1D4F581B8(v3);
  }

  else
  {
    sub_1D4E48388();
    sub_1D560E6C8();
    v13 = OUTLINED_FUNCTION_178();
    v14(v13);
    sub_1D560D2B8();
    (*(v8 + 8))(v6, v9);
  }

  sub_1D4F581B8(v4);
  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t EditorialElementLink.Feature.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t EditorialElementLink.Feature.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1D5615C08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4E628D4(a1, v21);
  v10 = sub_1D50F8E84(v21);
  if (!v2)
  {
    v12 = v10;
    v13 = v11;
    sub_1D5163C98(v10, v11, v21);
    v14 = v21[0];
    if (LOBYTE(v21[0]) == 7)
    {
      v15 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1D5616348();
      v21[0] = 0;
      v21[1] = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD000000000000040, 0x80000001D568E760);
      MEMORY[0x1DA6EAC70](v12, v13);

      MEMORY[0x1DA6EAC70](11810, 0xE200000000000000);
      sub_1D5615BF8();
      v16 = sub_1D5615C18();
      swift_allocError();
      v18 = v17;
      (*(v6 + 16))(v17, v9, v5);
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B00], v16);
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
    }

    else
    {

      *a2 = v14;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EditorialElementLink.Feature.encode(to:)(void *a1)
{
  *v1;
  sub_1D50F8F30(a1);
}

unint64_t sub_1D5461F84()
{
  result = qword_1EC7F6AD8;
  if (!qword_1EC7F6AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F6AE0, &qword_1D5666838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6AD8);
  }

  return result;
}

unint64_t sub_1D5461FEC()
{
  result = qword_1EC7F6AE8;
  if (!qword_1EC7F6AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6AE8);
  }

  return result;
}

_BYTE *_s7FeatureOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

int *sub_1D546214C@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v2 = sub_1D5611C78();
  v3 = OUTLINED_FUNCTION_4(v2);
  v74 = v4;
  v75 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v73 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v66 - v10;
  v12 = sub_1D5611218();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v72 = v18;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v71 = &v66 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v66 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v66 - v25;
  v27 = sub_1D560C0A8();
  v28 = OUTLINED_FUNCTION_4(v27);
  v70 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13();
  v77 = v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v66 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB0A8, &qword_1D561DE58);
  v78 = v1;
  sub_1D5610708();
  sub_1D56111F8();
  v38 = *(v15 + 8);
  v37 = v15 + 8;
  v36 = v38;
  v39 = v26;
  v40 = v27;
  v41 = v12;
  v38(v39, v12);
  if (__swift_getEnumTagSinglePayload(v11, 1, v40) == 1)
  {
    sub_1D534D7FC(v11);
    v43 = v73;
    v42 = v74;
    *v73 = 0x6C72557465737361;
    *(v43 + 1) = 0xE800000000000000;
    v44 = v75;
    (*(v42 + 104))(v43, *MEMORY[0x1E69763E0], v75);
    sub_1D50F96EC();
    swift_allocError();
    (*(v42 + 16))(v45, v43, v44);
    swift_willThrow();
    return (*(v42 + 8))(v43, v44);
  }

  else
  {
    v47 = v70;
    v73 = *(v70 + 32);
    v74 = v70 + 32;
    (v73)(v35, v11, v40);
    sub_1D5610708();
    v68 = sub_1D56111C8();
    v69 = v36;
    v49 = v48;
    v75 = v37;
    v69(v24, v41);
    v50 = 0.0;
    v51 = v47;
    if ((v49 & 1) == 0)
    {
      v50 = v68 / 1000.0;
    }

    (*(v47 + 16))(v77, v35, v40);
    v67 = v40;
    v68 = v35;
    v52 = v71;
    sub_1D5610708();
    v53 = sub_1D56111E8();
    v55 = v54;
    v56 = v69;
    v69(v52, v41);
    v66 = v41;
    if (v55)
    {
      v57 = 0;
    }

    else
    {
      v57 = v53;
    }

    v71 = v57;
    v58 = v72;
    sub_1D5610708();
    v59 = sub_1D56111D8();
    v61 = v60;
    v56(v58, v66);
    if (v61)
    {
      v62 = 0;
    }

    else
    {
      v62 = v59;
    }

    v63 = sub_1D5610718();
    v64 = v67;
    (*(v51 + 8))(v68, v67);
    v65 = v76;
    (v73)(v76, v77, v64);
    result = type metadata accessor for VideoArtwork.FileAsset();
    *(v65 + result[5]) = v71;
    *(v65 + result[6]) = v62;
    *(v65 + result[7]) = v50;
    *(v65 + result[8]) = v63;
  }

  return result;
}

int *sub_1D5462674()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v14 - v3;
  v5 = sub_1D5611218();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1D560C0A8();
  (*(*(v7 - 8) + 16))(v4, v0, v7);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
  result = type metadata accessor for VideoArtwork.FileAsset();
  v9 = *(v0 + result[7]) * 1000.0;
  if (COERCE__INT64(fabs(v9)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 < 9.22337204e18)
  {
    v10 = result;
    v11 = *(v0 + result[5]);
    v12 = *(v0 + result[6]);
    sub_1D5611208();
    v13 = *(v0 + v10[8]);

    return sub_1D56106F8();
  }

LABEL_7:
  __break(1u);
  return result;
}

void static LegacyModelCodablePlaylistEntryReaction.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  v7 = sub_1D560C328();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB578, &unk_1D5644D10);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_19_0();
  v22 = *(v21 + 56);
  sub_1D4F39AB0(v6, v1, &qword_1EC7EA3B8, &unk_1D561E370);
  sub_1D4F39AB0(v4, v1 + v22, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_10(v1);
  if (!v23)
  {
    sub_1D4F39AB0(v1, v2, &qword_1EC7EA3B8, &unk_1D561E370);
    OUTLINED_FUNCTION_10(v1 + v22);
    if (!v23)
    {
      (*(v10 + 32))(v0, v1 + v22, v7);
      OUTLINED_FUNCTION_0_239();
      sub_1D5462E7C(v24);
      v25 = sub_1D5614D18();
      v26 = *(v10 + 8);
      v27 = OUTLINED_FUNCTION_116();
      v26(v27);
      (v26)(v2, v7);
      sub_1D4E50004(v1, &qword_1EC7EA3B8, &unk_1D561E370);
      if ((v25 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    (*(v10 + 8))(v2, v7);
LABEL_9:
    sub_1D4E50004(v1, &qword_1EC7EB578, &unk_1D5644D10);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_10(v1 + v22);
  if (!v23)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v1, &qword_1EC7EA3B8, &unk_1D561E370);
LABEL_12:
  v28 = *(type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Attributes(0) + 20);
  v29 = (v6 + v28);
  v30 = *(v6 + v28 + 8);
  v31 = (v4 + v28);
  v32 = v31[1];
  if (v30 && v32 && (*v29 != *v31 || v30 != v32))
  {
    sub_1D5616168();
  }

LABEL_10:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5462B28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

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

uint64_t sub_1D5462BEC(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_1D5462C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5462B28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5462C48(uint64_t a1)
{
  v2 = sub_1D5462E28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5462C84(uint64_t a1)
{
  v2 = sub_1D5462E28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LegacyModelCodablePlaylistEntryReaction.Attributes.encode(to:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6B18, &qword_1D5666980);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_150_1();
  OUTLINED_FUNCTION_102_1();
  sub_1D5462E28();
  OUTLINED_FUNCTION_132();
  sub_1D560C328();
  OUTLINED_FUNCTION_0_239();
  sub_1D5462E7C(v9);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_7_6();
  sub_1D5616068();
  if (!v1)
  {
    v10 = (v0 + *(type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Attributes(0) + 20));
    v11 = *v10;
    v12 = v10[1];
    OUTLINED_FUNCTION_7_3();
    sub_1D5616028();
  }

  return (*(v5 + 8))(v2, v3);
}

unint64_t sub_1D5462E28()
{
  result = qword_1EC7F6B20;
  if (!qword_1EC7F6B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6B20);
  }

  return result;
}

unint64_t sub_1D5462E7C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t LegacyModelCodablePlaylistEntryReaction.Attributes.hash(into:)()
{
  v1 = sub_1D560C328();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_118_1();
  sub_1D4F39AB0(v0, v0, &qword_1EC7EA3B8, &unk_1D561E370);
  v14 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v14, v15, v1);
  if (v16)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v4 + 32))(v9, v0, v1);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_239();
    sub_1D5462E7C(v17);
    sub_1D5614CB8();
    (*(v4 + 8))(v9, v1);
  }

  OUTLINED_FUNCTION_62_38();
  v19 = (v0 + v18);
  if (!v19[1])
  {
    return OUTLINED_FUNCTION_36();
  }

  v20 = *v19;
  OUTLINED_FUNCTION_27();
  return sub_1D5614E28();
}

uint64_t LegacyModelCodablePlaylistEntryReaction.Attributes.hashValue.getter()
{
  v2 = sub_1D560C328();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_118_1();
  sub_1D56162D8();
  v12 = OUTLINED_FUNCTION_71();
  sub_1D4F39AB0(v12, v13, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_5_1(v0);
  if (v14)
  {
    sub_1D56162F8();
  }

  else
  {
    v15 = *(v5 + 32);
    v16 = OUTLINED_FUNCTION_116();
    v17(v16);
    sub_1D56162F8();
    OUTLINED_FUNCTION_0_239();
    sub_1D5462E7C(v18);
    sub_1D5614CB8();
    (*(v5 + 8))(v1, v2);
  }

  OUTLINED_FUNCTION_62_38();
  v20 = (v0 + v19);
  if (v20[1])
  {
    v21 = *v20;
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  return sub_1D5616328();
}

void LegacyModelCodablePlaylistEntryReaction.Attributes.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_45();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6B28, &unk_1D5666988);
  OUTLINED_FUNCTION_4(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_114();
  v12 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Attributes(0);
  v13 = OUTLINED_FUNCTION_14(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D5462E28();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    sub_1D560C328();
    OUTLINED_FUNCTION_0_239();
    sub_1D5462E7C(v20);
    OUTLINED_FUNCTION_189();
    sub_1D5615F78();
    sub_1D4F39A1C(v1, v18, &qword_1EC7EA3B8, &unk_1D561E370);
    OUTLINED_FUNCTION_7_3();
    v21 = sub_1D5615F38();
    v23 = v22;
    v24 = OUTLINED_FUNCTION_37_47();
    v25(v24);
    v26 = (v18 + *(v12 + 20));
    *v26 = v21;
    v26[1] = v23;
    sub_1D5464FEC();
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1D5465040(v18, type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Attributes);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5463544(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1D560C328();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v17 - v12;
  sub_1D56162D8();
  sub_1D4F39AB0(v4, v13, &qword_1EC7EA3B8, &unk_1D561E370);
  if (__swift_getEnumTagSinglePayload(v13, 1, v5) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_1D56162F8();
    sub_1D5462E7C(&qword_1EDD5CF60);
    sub_1D5614CB8();
    (*(v6 + 8))(v9, v5);
  }

  v14 = (v4 + *(a2 + 20));
  if (v14[1])
  {
    v15 = *v14;
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  return sub_1D5616328();
}

uint64_t LegacyModelCodablePlaylistEntryReaction.Relationships.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0x72506C6169636F73;
  }

  else
  {
    result = 0x7473696C79616C70;
  }

  *v0;
  return result;
}

uint64_t sub_1D5463838@<X0>(uint64_t *a1@<X8>)
{
  result = LegacyModelCodablePlaylistEntryReaction.Relationships.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D546387C(uint64_t a1)
{
  v2 = sub_1D54640F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D54638B8(uint64_t a1)
{
  v2 = sub_1D54640F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static LegacyModelCodablePlaylistEntryReaction.Relationships.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v5 = v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  OUTLINED_FUNCTION_4(v61);
  v56 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v54 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v55 = v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1BD8, &unk_1D56429B0);
  OUTLINED_FUNCTION_14(v57);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v58 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
  OUTLINED_FUNCTION_4(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_45();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC0, &unk_1D5623B30);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_16_0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6B30, &qword_1D5666998);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v54 - v35;
  v37 = *(v34 + 56);
  v59 = v5;
  sub_1D4F39AB0(v5, &v54 - v35, &qword_1EC7ECCC0, &unk_1D5623B30);
  v60 = v3;
  sub_1D4F39AB0(v3, &v36[v37], &qword_1EC7ECCC0, &unk_1D5623B30);
  OUTLINED_FUNCTION_10(v36);
  if (!v38)
  {
    sub_1D4F39AB0(v36, v0, &qword_1EC7ECCC0, &unk_1D5623B30);
    OUTLINED_FUNCTION_10(&v36[v37]);
    if (!v38)
    {
      (*(v22 + 32))(v1, &v36[v37], v20);
      sub_1D5463E10();
      v42 = sub_1D5614D18();
      v43 = *(v22 + 8);
      v43(v1, v20);
      v43(v0, v20);
      sub_1D4E50004(v36, &qword_1EC7ECCC0, &unk_1D5623B30);
      if ((v42 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    (*(v22 + 8))(v0, v20);
LABEL_9:
    v39 = &qword_1EC7F6B30;
    v40 = &qword_1D5666998;
    v41 = v36;
LABEL_20:
    sub_1D4E50004(v41, v39, v40);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_10(&v36[v37]);
  if (!v38)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v36, &qword_1EC7ECCC0, &unk_1D5623B30);
LABEL_11:
  v44 = *(type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships(0) + 20);
  v45 = v58;
  v46 = *(v57 + 48);
  sub_1D4F39AB0(v59 + v44, v58, &qword_1EC7EA7E0, &unk_1D5623AB0);
  sub_1D4F39AB0(v60 + v44, v45 + v46, &qword_1EC7EA7E0, &unk_1D5623AB0);
  v47 = v61;
  OUTLINED_FUNCTION_57(v45, 1, v61);
  if (!v38)
  {
    v48 = v55;
    sub_1D4F39AB0(v45, v55, &qword_1EC7EA7E0, &unk_1D5623AB0);
    OUTLINED_FUNCTION_5_1(v45 + v46);
    if (!v49)
    {
      v50 = v56;
      v51 = v45 + v46;
      v52 = v54;
      (*(v56 + 32))(v54, v51, v47);
      sub_1D51F9AC8();
      sub_1D5614D18();
      v53 = *(v50 + 8);
      v53(v52, v47);
      v53(v48, v47);
      sub_1D4E50004(v45, &qword_1EC7EA7E0, &unk_1D5623AB0);
      goto LABEL_21;
    }

    (*(v56 + 8))(v48, v47);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_5_1(v45 + v46);
  if (!v38)
  {
LABEL_19:
    v39 = &qword_1EC7F1BD8;
    v40 = &unk_1D56429B0;
    v41 = v45;
    goto LABEL_20;
  }

  sub_1D4E50004(v45, &qword_1EC7EA7E0, &unk_1D5623AB0);
LABEL_21:
  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D5463E10()
{
  result = qword_1EC7F6B38;
  if (!qword_1EC7F6B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
    sub_1D5463ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6B38);
  }

  return result;
}

void sub_1D5463ECC()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v2))
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECCE0, &qword_1D5622EE8);
    sub_1D5462E7C(v1);
    atomic_store(OUTLINED_FUNCTION_44_1(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

uint64_t LegacyModelCodablePlaylistEntryReaction.Relationships.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6B50, &qword_1D56669A0);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_102_1();
  sub_1D54640F0();
  OUTLINED_FUNCTION_132();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
  OUTLINED_FUNCTION_17_86();
  sub_1D5464ED0();
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_62_3();
  if (!v0)
  {
    v8 = *(type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships(0) + 20);
    OUTLINED_FUNCTION_7_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
    OUTLINED_FUNCTION_17_86();
    sub_1D5464144();
    OUTLINED_FUNCTION_62_3();
  }

  return (*(v4 + 8))(v1, v2);
}

unint64_t sub_1D54640F0()
{
  result = qword_1EC7F6B58;
  if (!qword_1EC7F6B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6B58);
  }

  return result;
}

void sub_1D5464144()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v1))
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA800, &unk_1D5622EC0);
    sub_1D54641A8();
    atomic_store(OUTLINED_FUNCTION_44_1(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

void sub_1D54641A8()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v1))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA770, &unk_1D561F1C0);
    sub_1D5462E7C(&qword_1EDD530F8);
    sub_1D5462E7C(&qword_1EDD53100);
    atomic_store(OUTLINED_FUNCTION_9_47(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

void LegacyModelCodablePlaylistEntryReaction.Relationships.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v31 = v5;
  v32 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v30 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
  OUTLINED_FUNCTION_4(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_114();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC0, &unk_1D5623B30);
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_118_1();
  v24 = OUTLINED_FUNCTION_116();
  sub_1D4F39AB0(v24, v25, &qword_1EC7ECCC0, &unk_1D5623B30);
  v26 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v26, v27, v14);
  if (v28)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v16 + 32))(v2, v0, v14);
    sub_1D56162F8();
    sub_1D4F8B0D4();
    sub_1D5614CB8();
    (*(v16 + 8))(v2, v14);
  }

  v29 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships(0);
  sub_1D4F39AB0(v0 + *(v29 + 20), v1, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_57(v1, 1, v32);
  if (v28)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v31 + 32))(v30, v1, v32);
    sub_1D56162F8();
    sub_1D4F8B20C();
    sub_1D5614CB8();
    (*(v31 + 8))(v30, v32);
  }

  OUTLINED_FUNCTION_46();
}

void LegacyModelCodablePlaylistEntryReaction.Relationships.hashValue.getter()
{
  OUTLINED_FUNCTION_47();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  OUTLINED_FUNCTION_4(v4);
  v29 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_19_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
  OUTLINED_FUNCTION_4(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_108();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC0, &unk_1D5623B30);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_118_1();
  sub_1D56162D8();
  v23 = OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_63_25(v23, v24);
  v25 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v25, v26, v13);
  if (v27)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v15 + 32))(v3, v0, v13);
    sub_1D56162F8();
    sub_1D4F8B0D4();
    sub_1D5614CB8();
    (*(v15 + 8))(v3, v13);
  }

  v28 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships(0);
  sub_1D4F39AB0(v0 + *(v28 + 20), v2, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_57(v2, 1, v4);
  if (v27)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v29 + 32))(v1, v2, v4);
    sub_1D56162F8();
    sub_1D4F8B20C();
    sub_1D5614CB8();
    (*(v29 + 8))(v1, v4);
  }

  sub_1D5616328();
  OUTLINED_FUNCTION_46();
}

void LegacyModelCodablePlaylistEntryReaction.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_114();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC0, &unk_1D5623B30);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v25 = v14;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6B80, &qword_1D56669A8);
  OUTLINED_FUNCTION_4(v26);
  v24 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_45();
  v19 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships(0);
  v20 = OUTLINED_FUNCTION_14(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  v23 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1D54640F0();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
    OUTLINED_FUNCTION_19_80();
    sub_1D5464ED0();
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_45_42();
    sub_1D4F39A1C(v25, v1, &qword_1EC7ECCC0, &unk_1D5623B30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_19_80();
    sub_1D5464144();
    OUTLINED_FUNCTION_45_42();
    (*(v24 + 8))(v3, v26);
    sub_1D4F39A1C(v2, v1 + *(v19 + 20), &qword_1EC7EA7E0, &unk_1D5623AB0);
    sub_1D5464FEC();
    __swift_destroy_boxed_opaque_existential_1(v5);
    sub_1D5465040(v1, type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5464B84(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC0, &unk_1D5623B30);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v22 - v17;
  sub_1D56162D8();
  sub_1D4F39AB0(v2, v18, &qword_1EC7ECCC0, &unk_1D5623B30);
  if (__swift_getEnumTagSinglePayload(v18, 1, v10) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    sub_1D56162F8();
    sub_1D4F8B0D4();
    sub_1D5614CB8();
    (*(v11 + 8))(v14, v10);
  }

  sub_1D4F39AB0(v2 + *(v24 + 20), v9, &qword_1EC7EA7E0, &unk_1D5623AB0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v19 = v22;
    v20 = v23;
    (*(v23 + 32))(v22, v9, v3);
    sub_1D56162F8();
    sub_1D4F8B20C();
    sub_1D5614CB8();
    (*(v20 + 8))(v19, v3);
  }

  return sub_1D5616328();
}

void sub_1D5464ED0()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v1))
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
    sub_1D5464F34();
    atomic_store(OUTLINED_FUNCTION_44_1(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

void sub_1D5464F34()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v1))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECCE0, &qword_1D5622EE8);
    sub_1D5462E7C(&unk_1EC7F6B70);
    sub_1D5462E7C(&unk_1EC7F6B78);
    atomic_store(OUTLINED_FUNCTION_9_47(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

uint64_t sub_1D5464FEC()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_71();
  v7(v6);
  return v0;
}

uint64_t sub_1D5465040(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D54650A0(uint64_t a1)
{
  v2 = sub_1D546515C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D54650DC(uint64_t a1)
{
  v2 = sub_1D546515C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D546515C()
{
  result = qword_1EC7F6BA0;
  if (!qword_1EC7F6BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6BA0);
  }

  return result;
}

uint64_t sub_1D5465234(uint64_t a1)
{
  v2 = sub_1D54653EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5465270(uint64_t a1)
{
  v2 = sub_1D54653EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D54652F0()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_4(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_108();
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2();
  sub_1D56163D8();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D54653EC()
{
  result = qword_1EC7F6BB0;
  if (!qword_1EC7F6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6BB0);
  }

  return result;
}

uint64_t LegacyModelCodablePlaylistEntryReaction.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t LegacyModelCodablePlaylistEntryReaction.attributes.getter()
{
  v0 = *(OUTLINED_FUNCTION_61_35() + 20);
  OUTLINED_FUNCTION_23_70();
  return sub_1D5464FEC();
}

uint64_t LegacyModelCodablePlaylistEntryReaction.views.getter()
{
  result = OUTLINED_FUNCTION_61_35();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t LegacyModelCodablePlaylistEntryReaction.meta.getter()
{
  result = OUTLINED_FUNCTION_61_35();
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_1D54655B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  v0 = *(sub_1D5610088() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561C050;
  result = sub_1D560FF88();
  qword_1EC7F6AF8 = v3;
  return result;
}

uint64_t sub_1D5465694()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7F6B00);
  v1 = __swift_project_value_buffer(v0, qword_1EC7F6B00);
  v2 = *MEMORY[0x1E6976818];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static LegacyModelCodablePlaylistEntryReaction.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E96A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EC7F6B00);
  OUTLINED_FUNCTION_24_0(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

void static LegacyModelCodablePlaylistEntryReaction.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v4 = OUTLINED_FUNCTION_106_0();
  v5 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships(v4);
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC8, &qword_1D5622EE0);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6BB8, &qword_1D56669C8);
  OUTLINED_FUNCTION_14(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_150_1();
  v20 = *v1 == *v0 && v1[1] == v0[1];
  if (v20 || (sub_1D5616168() & 1) != 0)
  {
    v21 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction(0);
    v22 = v21[5];
    static LegacyModelCodablePlaylistEntryReaction.Attributes.== infix(_:_:)();
    if (v23)
    {
      v31 = v11;
      v24 = v21[6];
      v25 = *(v16 + 48);
      OUTLINED_FUNCTION_63_25(v1 + v24, v2);
      OUTLINED_FUNCTION_63_25(v0 + v24, v2 + v25);
      OUTLINED_FUNCTION_57(v2, 1, v5);
      if (v20)
      {
        OUTLINED_FUNCTION_57(v2 + v25, 1, v5);
        if (v20)
        {
          sub_1D4E50004(v2, &qword_1EC7ECCC8, &qword_1D5622EE0);
LABEL_17:
          if (*(v1 + v21[7]) == *(v0 + v21[7]))
          {
            v30 = *(v1 + v21[8]) ^ *(v0 + v21[8]) ^ 1u;
          }

          goto LABEL_19;
        }
      }

      else
      {
        sub_1D4F39AB0(v2, v3, &qword_1EC7ECCC8, &qword_1D5622EE0);
        OUTLINED_FUNCTION_57(v2 + v25, 1, v5);
        if (!v26)
        {
          sub_1D5467B04();
          static LegacyModelCodablePlaylistEntryReaction.Relationships.== infix(_:_:)();
          v29 = v28;
          sub_1D5465040(v31, type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships);
          sub_1D5465040(v3, type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships);
          sub_1D4E50004(v2, &qword_1EC7ECCC8, &qword_1D5622EE0);
          if ((v29 & 1) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_17;
        }

        OUTLINED_FUNCTION_4_140();
        sub_1D5465040(v3, v27);
      }

      sub_1D4E50004(v2, &qword_1EC7F6BB8, &qword_1D56669C8);
    }
  }

LABEL_19:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5465A70(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5465B0C(uint64_t a1)
{
  v2 = sub_1D5465DBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5465B48(uint64_t a1)
{
  v2 = sub_1D5465DBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LegacyModelCodablePlaylistEntryReaction.encode(to:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6BC0, &qword_1D56669D0);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_150_1();
  OUTLINED_FUNCTION_102_1();
  sub_1D5465DBC();
  OUTLINED_FUNCTION_132();
  v15 = *v0;
  v18 = v0[1];
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_61_0();
  sub_1D56160C8();
  if (!v1)
  {
    v9 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction(0);
    v10 = v9[5];
    type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Attributes(0);
    OUTLINED_FUNCTION_21_76();
    sub_1D5462E7C(v11);
    OUTLINED_FUNCTION_7_6();
    sub_1D56160C8();
    v12 = v9[6];
    type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships(0);
    OUTLINED_FUNCTION_20_89();
    sub_1D5462E7C(v13);
    OUTLINED_FUNCTION_7_6();
    sub_1D5616068();
    v16 = *(v0 + v9[7]);
    sub_1D5465E10();
    OUTLINED_FUNCTION_61_0();
    sub_1D5616068();
    v17 = *(v0 + v9[8]);
    sub_1D5465E64();
    OUTLINED_FUNCTION_61_0();
    sub_1D5616068();
  }

  return (*(v5 + 8))(v2, v3);
}

unint64_t sub_1D5465DBC()
{
  result = qword_1EC7F6BC8;
  if (!qword_1EC7F6BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6BC8);
  }

  return result;
}

unint64_t sub_1D5465E10()
{
  result = qword_1EC7F6BE0;
  if (!qword_1EC7F6BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6BE0);
  }

  return result;
}

unint64_t sub_1D5465E64()
{
  result = qword_1EC7F6BE8;
  if (!qword_1EC7F6BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6BE8);
  }

  return result;
}

void LegacyModelCodablePlaylistEntryReaction.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v2 = sub_1D560C328();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_118_1();
  v15 = *v0;
  v16 = v0[1];
  sub_1D5614E28();
  v17 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction(0);
  v18 = v0 + v17[5];
  OUTLINED_FUNCTION_63_25(v18, v0);
  v19 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v19, v20, v2);
  if (v21)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v5 + 32))(v10, v0, v2);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_239();
    sub_1D5462E7C(v22);
    sub_1D5614CB8();
    (*(v5 + 8))(v10, v2);
  }

  OUTLINED_FUNCTION_62_38();
  v24 = (v18 + v23);
  if (v24[1])
  {
    v25 = *v24;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v26 = v0 + v17[6];
  sub_1D4F8566C();
  v27 = *(v1 + v17[7]);
  sub_1D56162F8();
  v28 = *(v1 + v17[8]);
  sub_1D56162F8();
  OUTLINED_FUNCTION_46();
}

uint64_t LegacyModelCodablePlaylistEntryReaction.hashValue.getter()
{
  sub_1D56162D8();
  LegacyModelCodablePlaylistEntryReaction.hash(into:)();
  return sub_1D5616328();
}

void LegacyModelCodablePlaylistEntryReaction.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC8, &qword_1D5622EE0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v29 = v8;
  v9 = OUTLINED_FUNCTION_70_0();
  v30 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Attributes(v9);
  v10 = OUTLINED_FUNCTION_14(v30);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6BF0, &unk_1D56669D8);
  OUTLINED_FUNCTION_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_114();
  v17 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction(0);
  v18 = OUTLINED_FUNCTION_14(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  v21 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D5465DBC();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    sub_1D4F89C9C();
    sub_1D5615FD8();
    *v1 = v31;
    v1[1] = v32;
    OUTLINED_FUNCTION_21_76();
    sub_1D5462E7C(v22);
    sub_1D5615FD8();
    v23 = v17[5];
    sub_1D5467B04();
    type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships(0);
    OUTLINED_FUNCTION_20_89();
    sub_1D5462E7C(v24);
    sub_1D5615F78();
    sub_1D4F39A1C(v29, v1 + v17[6], &qword_1EC7ECCC8, &qword_1D5622EE0);
    sub_1D5467B58();
    OUTLINED_FUNCTION_128_1();
    *(v1 + v17[7]) = 2;
    sub_1D5467BAC();
    OUTLINED_FUNCTION_128_1();
    v25 = OUTLINED_FUNCTION_51_1();
    v26(v25);
    *(v1 + v17[8]) = 2;
    sub_1D5464FEC();
    __swift_destroy_boxed_opaque_existential_1(v3);
    v27 = OUTLINED_FUNCTION_116();
    sub_1D5465040(v27, v28);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D54665B8()
{
  sub_1D56162D8();
  LegacyModelCodablePlaylistEntryReaction.hash(into:)();
  return sub_1D5616328();
}

void Playlist.Entry.Reaction.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v142 = v4;
  v6 = v5;
  v8 = v7;
  v138 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v126 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v137 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  v124 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC8, &qword_1D5622EE0);
  v26 = OUTLINED_FUNCTION_22(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13();
  v134 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v131 = &v122 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC0, &unk_1D5623B30);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  v123 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_3();
  v139 = v41;
  v42 = OUTLINED_FUNCTION_70_0();
  v130 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction(v42);
  v43 = OUTLINED_FUNCTION_14(v130);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5();
  v140 = v47 - v46;
  OUTLINED_FUNCTION_70_0();
  v48 = type metadata accessor for PlaylistEntryReactionPropertyProvider();
  v49 = OUTLINED_FUNCTION_14(v48);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5();
  v54 = v53 - v52;
  v55 = sub_1D560C328();
  OUTLINED_FUNCTION_146_0(v54, v56, v57, v55);
  v58 = v48[6];
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  v133 = v58;
  OUTLINED_FUNCTION_146_0(v54 + v58, v59, v60, v132);
  v61 = v48[7];
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  v136 = v61;
  OUTLINED_FUNCTION_146_0(v54 + v61, v62, v63, v135);
  if (qword_1EC7E8D88 != -1)
  {
    swift_once();
  }

  v64 = sub_1D560D9A8();
  __swift_project_value_buffer(v64, qword_1EC7EF490);
  v65 = v48[9];
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6C18, &unk_1D56669E8);
  OUTLINED_FUNCTION_22_71();
  sub_1D5462E7C(v67);
  v143 = v6;
  v125 = v1;
  sub_1D5610668();
  v68 = v54 + v48[10];
  sub_1D5610658();
  v69 = sub_1D5610618();
  v128 = v70;
  v129 = v69;
  v127 = sub_1D56105C8();
  v71 = sub_1D56105F8();
  v72 = sub_1D56105E8();
  v73 = v8;
  v74 = sub_1D56105A8();
  if (qword_1EC7E9860 != -1)
  {
    swift_once();
  }

  v75 = qword_1EC87C790;
  v141 = v3;
  if (qword_1EC87C790 >> 62)
  {
    sub_1D560CDE8();

    v121 = sub_1D5615E18();

    v75 = v121;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v76 = (v54 + v48[5]);
  *(v54 + v48[8]) = v75;
  v77 = (v54 + v48[11]);
  v78 = v128;
  *v77 = v129;
  v77[1] = v78;
  *(v54 + v48[12]) = v127;
  *(v54 + v48[13]) = v71;
  *(v54 + v48[14]) = v72;
  *(v54 + v48[15]) = v74;
  v79 = v140;
  sub_1D5610648();
  v80 = v130;
  v81 = v79 + *(v130 + 20);
  sub_1D5467C00(v81, v54);
  OUTLINED_FUNCTION_62_38();
  v83 = (v81 + v82);
  v84 = v83[1];
  *v76 = *v83;
  v76[1] = v84;
  v85 = *(v80 + 24);
  v86 = v131;
  sub_1D4F39AB0(v79 + v85, v131, &qword_1EC7ECCC8, &qword_1D5622EE0);
  v87 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships(0);
  OUTLINED_FUNCTION_5_1(v86);
  if (v95)
  {

    sub_1D4E50004(v86, &qword_1EC7ECCC8, &qword_1D5622EE0);
    v88 = 1;
    v89 = v141;
  }

  else
  {
    v90 = v123;
    sub_1D4F39AB0(v86, v123, &qword_1EC7ECCC0, &unk_1D5623B30);

    OUTLINED_FUNCTION_4_140();
    sub_1D5465040(v86, v91);
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
    v93 = OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_57(v93, v94, v92);
    v89 = v141;
    if (v95)
    {
      sub_1D4E50004(v90, &qword_1EC7ECCC0, &unk_1D5623B30);
      v88 = 1;
    }

    else
    {
      v96 = sub_1D560CD98();
      OUTLINED_FUNCTION_46_39(v96);
      sub_1D5614828();
      OUTLINED_FUNCTION_18_84();
      sub_1D5462E7C(v97);
      v89 = v141;
      sub_1D5612358();
      v98 = v73;
      v73 = v131;
      sub_1D4E50004(v98, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_24_0(v92);
      (*(v99 + 8))(v90, v92);
      v88 = 0;
    }
  }

  v100 = v143;
  v101 = v139;
  __swift_storeEnumTagSinglePayload(v139, v88, 1, v132);
  sub_1D4E68940(v101, v54 + v133, &qword_1EC7EC450, &unk_1D5621060);
  v102 = v134;
  sub_1D4F39AB0(v79 + v85, v134, &qword_1EC7ECCC8, &qword_1D5622EE0);
  OUTLINED_FUNCTION_5_1(v102);
  if (v95)
  {
    v103 = &qword_1EC7ECCC8;
    v104 = &qword_1D5622EE0;
    v105 = v102;
LABEL_19:
    sub_1D4E50004(v105, v103, v104);
    v118 = 1;
    v114 = v137;
    goto LABEL_20;
  }

  v106 = v102 + *(v87 + 20);
  v107 = v126;
  sub_1D4F39AB0(v106, v126, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_4_140();
  sub_1D5465040(v102, v108);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  OUTLINED_FUNCTION_57(v107, 1, v109);
  if (v110)
  {
    v103 = &qword_1EC7EA7E0;
    v104 = &unk_1D5623AB0;
    v105 = v107;
    goto LABEL_19;
  }

  v111 = sub_1D560CD98();
  OUTLINED_FUNCTION_46_39(v111);
  type metadata accessor for SocialProfile();
  v112 = v107;
  sub_1D5462E7C(&qword_1EDD57510);
  OUTLINED_FUNCTION_10_1();
  sub_1D5462E7C(v113);
  v114 = v137;
  v79 = v140;
  sub_1D5612368();
  v115 = v73;
  v73 = v131;
  sub_1D4E50004(v115, &qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_24_0(v109);
  v117 = v112;
  v100 = v143;
  (*(v116 + 8))(v117, v109);
  v118 = 0;
LABEL_20:
  __swift_storeEnumTagSinglePayload(v114, v118, 1, v135);
  sub_1D4E68940(v114, v54 + v136, &qword_1EC7EA778, &qword_1D5622E60);
  v144[3] = v48;
  v144[4] = sub_1D5462E7C(&qword_1EC7F4D58);
  __swift_allocate_boxed_opaque_existential_0(v144);
  sub_1D5464FEC();
  Playlist.Entry.Reaction.init(propertyProvider:)(v144, v138);

  OUTLINED_FUNCTION_24_0(v89);
  (*(v119 + 8))(v100, v89);
  OUTLINED_FUNCTION_24_0(v66);
  (*(v120 + 8))(v73, v66);
  sub_1D5465040(v79, type metadata accessor for LegacyModelCodablePlaylistEntryReaction);
  sub_1D5465040(v54, type metadata accessor for PlaylistEntryReactionPropertyProvider);
  OUTLINED_FUNCTION_46();
}

void Playlist.Entry.Reaction.convertToLegacyModelCodableResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_47();
  v140 = v0;
  v126 = v5;
  v127 = v6;
  v125 = v7;
  v136 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v135 = v13;
  OUTLINED_FUNCTION_70_0();
  v14 = sub_1D5610088();
  v15 = OUTLINED_FUNCTION_22(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v132 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  v130 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  v129 = v29;
  OUTLINED_FUNCTION_70_0();
  v30 = sub_1D5612B78();
  v31 = OUTLINED_FUNCTION_4(v30);
  v133 = v32;
  v134 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v131 = v36 - v35;
  v37 = OUTLINED_FUNCTION_70_0();
  v139 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction(v37);
  v38 = OUTLINED_FUNCTION_14(v139);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13();
  v138 = v41;
  MEMORY[0x1EEE9AC00](v42);
  v128 = v120 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_9();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_22(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_114();
  v122 = sub_1D5613578();
  v52 = OUTLINED_FUNCTION_4(v122);
  v124 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5();
  v121 = v57 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  OUTLINED_FUNCTION_22(v58);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_16_0();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC0, &unk_1D5623B30);
  OUTLINED_FUNCTION_22(v62);
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13_3();
  v123 = v66;
  v67 = OUTLINED_FUNCTION_70_0();
  v68 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships(v67);
  v69 = OUTLINED_FUNCTION_14(v68);
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_5();
  v137 = v73 - v72;
  v74 = OUTLINED_FUNCTION_70_0();
  v75 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Attributes(v74);
  v76 = OUTLINED_FUNCTION_14(v75);
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  if (qword_1EC7E8D50 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  v79 = sub_1D5462E7C(&qword_1EC7EF4A8);
  v80 = sub_1D5462E7C(&qword_1EC7EF4B0);
  OUTLINED_FUNCTION_44_41();
  v81 = Playlist.Entry.Reaction.value.getter();
  v82 = (v2 + *(v75 + 20));
  *v82 = v81;
  v82[1] = v83;
  if (qword_1EC7E8D60 != -1)
  {
    swift_once();
  }

  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  OUTLINED_FUNCTION_44_41();
  OUTLINED_FUNCTION_57(v1, 1, v84);
  if (v85)
  {
    sub_1D4E50004(v1, &qword_1EC7EC450, &unk_1D5621060);
    v91 = 1;
    v88 = v123;
  }

  else
  {
    sub_1D5614828();
    OUTLINED_FUNCTION_18_84();
    sub_1D5462E7C(v86);
    v120[1] = v80;
    v120[0] = v1;
    v87 = v121;
    v120[2] = v79;
    sub_1D5467A88(v121);
    v88 = v123;
    v89 = v120[0];
    sub_1D560DA78();
    (*(v124 + 8))(v87, v122);
    OUTLINED_FUNCTION_24_0(v84);
    (*(v90 + 8))(v89, v84);
    v91 = 0;
  }

  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
  __swift_storeEnumTagSinglePayload(v88, v91, 1, v92);
  if (qword_1EC7E8D68 != -1)
  {
    swift_once();
  }

  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_44_41();
  OUTLINED_FUNCTION_5_1(v3);
  if (v85)
  {
    sub_1D4E50004(v3, &qword_1EC7EA778, &qword_1D5622E60);
    v97 = 1;
  }

  else
  {
    type metadata accessor for SocialProfile();
    sub_1D5462E7C(&qword_1EDD57510);
    OUTLINED_FUNCTION_10_1();
    sub_1D5462E7C(v94);
    v95 = v121;
    sub_1D4F1ABE8(v121);
    sub_1D560DA98();
    (*(v124 + 8))(v95, v122);
    OUTLINED_FUNCTION_24_0(v93);
    (*(v96 + 8))(v3, v93);
    v97 = 0;
  }

  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  __swift_storeEnumTagSinglePayload(v4, v97, 1, v98);
  v99 = v137;
  sub_1D4F39A1C(v88, v137, &qword_1EC7ECCC0, &unk_1D5623B30);
  sub_1D4F39A1C(v4, v99 + *(v68 + 20), &qword_1EC7EA7E0, &unk_1D5623AB0);
  v100 = v139;
  v102 = *v140;
  v101 = v140[1];
  v103 = v139[5];
  OUTLINED_FUNCTION_23_70();
  v127 = v104;
  v105 = v128;
  sub_1D5464FEC();
  v106 = v100[6];
  v126 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships;
  sub_1D5464FEC();
  __swift_storeEnumTagSinglePayload(v105 + v106, 0, 1, v68);
  *v105 = v102;
  v105[1] = v101;
  *(v105 + v100[7]) = 1;
  *(v105 + v100[8]) = 1;
  v107 = *(type metadata accessor for Playlist.Entry.Reaction() + 20);

  v108 = v129;
  sub_1D5611A28();
  v109 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v108, 0, 1, v109);
  v110 = sub_1D5611C98();
  OUTLINED_FUNCTION_146_0(v130, v111, v112, v110);
  v113 = v131;
  sub_1D5612B38();
  v129 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction;
  sub_1D5464FEC();
  v130 = v2;
  sub_1D5611A98();
  v114 = sub_1D5611A88();
  v124 = v115;
  v125 = v114;
  v117 = v133;
  v116 = v134;
  v118 = v135;
  (*(v133 + 16))(v135, v113, v134);
  __swift_storeEnumTagSinglePayload(v118, 0, 1, v116);
  v123 = sub_1D5611A38();
  v122 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  OUTLINED_FUNCTION_22_71();
  sub_1D5462E7C(v119);
  sub_1D5610628();
  (*(v117 + 8))(v113, v116);
  sub_1D5465040(v105, v129);
  sub_1D5465040(v137, v126);
  sub_1D5465040(v130, v127);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5467A88@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6976A78];
  v3 = sub_1D5613578();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D5467B04()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_71();
  v7(v6);
  return v0;
}

unint64_t sub_1D5467B58()
{
  result = qword_1EC7F6C08;
  if (!qword_1EC7F6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6C08);
  }

  return result;
}

unint64_t sub_1D5467BAC()
{
  result = qword_1EC7F6C10;
  if (!qword_1EC7F6C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6C10);
  }

  return result;
}

uint64_t sub_1D5467C00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D5467CBC()
{
  result = qword_1EC7F6C40;
  if (!qword_1EC7F6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6C40);
  }

  return result;
}

unint64_t sub_1D5467D14()
{
  result = qword_1EC7F6C48;
  if (!qword_1EC7F6C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6C48);
  }

  return result;
}

unint64_t sub_1D5467D6C()
{
  result = qword_1EC7F6C50;
  if (!qword_1EC7F6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6C50);
  }

  return result;
}

unint64_t sub_1D5467DC4()
{
  result = qword_1EC7F6C58;
  if (!qword_1EC7F6C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F6C60, &qword_1D5666BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6C58);
  }

  return result;
}

unint64_t sub_1D5467E74()
{
  result = qword_1EC7F6C70;
  if (!qword_1EC7F6C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6C70);
  }

  return result;
}

unint64_t sub_1D5467ECC()
{
  result = qword_1EC7F6C78;
  if (!qword_1EC7F6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6C78);
  }

  return result;
}

void sub_1D54681E4()
{
  type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Attributes(319);
  if (v0 <= 0x3F)
  {
    sub_1D54683BC(319, &qword_1EC7F6CA0, type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships);
    if (v1 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EC7F6CA8);
      if (v2 <= 0x3F)
      {
        sub_1D4E518A0(319, &qword_1EC7F6CB0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D546830C()
{
  sub_1D54683BC(319, &qword_1EDD5CF48, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD5F070);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D54683BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5468438()
{
  sub_1D4E6D600(319, &qword_1EC7F6CD8, &qword_1EC7ECCB8, &unk_1D5622ED0);
  if (v0 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD530C0, &qword_1EC7EA800, &unk_1D5622EC0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *sub_1D546850C(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for LegacyModelCodablePlaylistEntryReaction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D54686B4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D5468794()
{
  result = qword_1EC7F6CE0;
  if (!qword_1EC7F6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6CE0);
  }

  return result;
}

unint64_t sub_1D54687EC()
{
  result = qword_1EC7F6CE8;
  if (!qword_1EC7F6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6CE8);
  }

  return result;
}

unint64_t sub_1D5468844()
{
  result = qword_1EC7F6CF0;
  if (!qword_1EC7F6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6CF0);
  }

  return result;
}

unint64_t sub_1D546889C()
{
  result = qword_1EC7F6CF8;
  if (!qword_1EC7F6CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6CF8);
  }

  return result;
}

unint64_t sub_1D54688F4()
{
  result = qword_1EC7F6D00;
  if (!qword_1EC7F6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6D00);
  }

  return result;
}

unint64_t sub_1D546894C()
{
  result = qword_1EC7F6D08;
  if (!qword_1EC7F6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6D08);
  }

  return result;
}

unint64_t sub_1D54689A4()
{
  result = qword_1EC7F6D10;
  if (!qword_1EC7F6D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6D10);
  }

  return result;
}

unint64_t sub_1D54689FC()
{
  result = qword_1EC7F6D18;
  if (!qword_1EC7F6D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6D18);
  }

  return result;
}

unint64_t sub_1D5468A54()
{
  result = qword_1EC7F6D20;
  if (!qword_1EC7F6D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6D20);
  }

  return result;
}

unint64_t sub_1D5468AAC()
{
  result = qword_1EC7F6D28;
  if (!qword_1EC7F6D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6D28);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_46_39(uint64_t a1)
{
  *(v2 - 232) = v1;
  __swift_storeEnumTagSinglePayload(*(v2 - 288), 1, 1, a1);
  return 0;
}

uint64_t OUTLINED_FUNCTION_61_35()
{

  return type metadata accessor for LegacyModelCodablePlaylistEntryReaction(0);
}

uint64_t OUTLINED_FUNCTION_62_38()
{
  result = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Attributes(0);
  v1 = *(result + 20);
  return result;
}

uint64_t sub_1D5468BEC()
{
  v0 = sub_1D560F8F8();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_59_0();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v33 - v16;
  v18 = sub_1D560F928();
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  v27 = type metadata accessor for UploadedAudioPropertyProvider();
  sub_1D4F43D5C(v33[1] + *(v27 + 28), v17, &qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_57(v17, 1, v18);
  if (v28)
  {
    sub_1D4E7661C(v17, &qword_1EC7EDB98, L"X\b\a");
  }

  else
  {
    (*(v21 + 32))(v26, v17, v18);
    sub_1D560F908();
    (*(v3 + 104))(v8, *MEMORY[0x1E6975910], v0);
    OUTLINED_FUNCTION_61();
    v29 = sub_1D560F8E8();
    v30 = *(v3 + 8);
    v30(v8, v0);
    v30(v11, v0);
    if (v29)
    {
      v31 = sub_1D560F918();
      (*(v21 + 8))(v26, v18);
      if (v31)
      {
        return 1;
      }
    }

    else
    {
      (*(v21 + 8))(v26, v18);
    }
  }

  return 0;
}

uint64_t sub_1D5468E98()
{
  v0 = *(type metadata accessor for UploadedAudioPropertyProvider() + 116);
  sub_1D560D768();
  if (!v1)
  {
    sub_1D560D628();
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D5468EF8()
{
  v1 = sub_1D56106B8();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v32 = v8 - v7;
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE730, &unk_1D562C598) - 8);
  v10 = *(*v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  v15 = OUTLINED_FUNCTION_22(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_59_0();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v31 - v22;
  v24 = *(type metadata accessor for UploadedAudioPropertyProvider() + 32);
  (*(v4 + 104))(v23, *MEMORY[0x1E6975D58], v1);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v1);
  v25 = v9[14];
  sub_1D4F43D5C(v0 + v24, v13, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4F43D5C(v23, &v13[v25], &qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_57(v13, 1, v1);
  if (!v27)
  {
    sub_1D4F43D5C(v13, v20, &qword_1EC7EC478, &unk_1D56299D0);
    OUTLINED_FUNCTION_57(&v13[v25], 1, v1);
    if (!v27)
    {
      v28 = v32;
      (*(v4 + 32))(v32, &v13[v25], v1);
      sub_1D52FCF44();
      OUTLINED_FUNCTION_61();
      v26 = sub_1D5614D18();
      v29 = *(v4 + 8);
      v29(v28, v1);
      sub_1D4E7661C(v23, &qword_1EC7EC478, &unk_1D56299D0);
      v29(v20, v1);
      sub_1D4E7661C(v13, &qword_1EC7EC478, &unk_1D56299D0);
      return v26 & 1;
    }

    sub_1D4E7661C(v23, &qword_1EC7EC478, &unk_1D56299D0);
    (*(v4 + 8))(v20, v1);
LABEL_9:
    sub_1D4E7661C(v13, &qword_1EC7EE730, &unk_1D562C598);
    v26 = 0;
    return v26 & 1;
  }

  sub_1D4E7661C(v23, &qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_57(&v13[v25], 1, v1);
  if (!v27)
  {
    goto LABEL_9;
  }

  sub_1D4E7661C(v13, &qword_1EC7EC478, &unk_1D56299D0);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_1D5469250()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_2_180();
  OUTLINED_FUNCTION_9_92(*(v5 + 72));
  v6 = sub_1D5614A78();
  OUTLINED_FUNCTION_57(v0, 1, v6);
  if (v7)
  {
    sub_1D4E7661C(v0, &qword_1EC7EF5D8, &unk_1D5632160);
    v8 = 0;
  }

  else
  {
    v8 = sub_1D5614A58();
    OUTLINED_FUNCTION_24_0(v6);
    (*(v9 + 8))(v0, v6);
  }

  return v8 & 1;
}

BOOL sub_1D5469340()
{
  v1 = v0;
  v2 = sub_1D5614A48();
  v3 = OUTLINED_FUNCTION_4(v2);
  v41 = v4;
  v42 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  v40 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1D5614A78();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v18 = (v17 - v16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  v20 = OUTLINED_FUNCTION_22(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_59_0();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v39 - v27;
  v29 = *(type metadata accessor for UploadedAudioPropertyProvider() + 72);
  sub_1D4F43D5C(v1 + v29, v28, &qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_57(v28, 1, v10);
  if (v30)
  {
    goto LABEL_3;
  }

  v31 = sub_1D5614A58();
  v39 = *(v13 + 8);
  v39(v28, v10);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

  sub_1D4F43D5C(v1 + v29, v25, &qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_57(v25, 1, v10);
  if (v30)
  {
    v28 = v25;
LABEL_3:
    sub_1D4E7661C(v28, &qword_1EC7EF5D8, &unk_1D5632160);
    return 0;
  }

  (*(v13 + 32))(v18, v25, v10);
  sub_1D5614A68();
  v33 = v40;
  v32 = v41;
  v34 = v42;
  (*(v41 + 104))(v40, *MEMORY[0x1E6977490], v42);
  v35 = sub_1D5614A38();
  v36 = *(v32 + 8);
  v36(v33, v34);
  v37 = OUTLINED_FUNCTION_61();
  (v36)(v37);
  v39(v18, v10);
  return (v35 & 1) != 0;
}

uint64_t sub_1D5469648(uint64_t (*a1)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_2_180();
  sub_1D4F43D5C(v1 + *(v8 + 28), v2, &qword_1EC7EDB98, L"X\b\a");
  v9 = sub_1D560F928();
  v10 = OUTLINED_FUNCTION_57(v2, 1, v9);
  if (v11)
  {
    sub_1D4E7661C(v2, &qword_1EC7EDB98, L"X\b\a");
    v12 = 0;
  }

  else
  {
    v12 = a1(v10);
    OUTLINED_FUNCTION_24_0(v9);
    v14 = *(v13 + 8);
    v15 = OUTLINED_FUNCTION_61();
    v16(v15);
  }

  return v12 & 1;
}

uint64_t sub_1D5469754()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_2_180();
  OUTLINED_FUNCTION_9_92(*(v5 + 60));
  v6 = sub_1D5610CB8();
  OUTLINED_FUNCTION_57(v0, 1, v6);
  if (v7)
  {
    sub_1D4E7661C(v0, &qword_1EC7EF5D0, &unk_1D5632140);
    v8 = 0;
  }

  else
  {
    v8 = sub_1D5610CA8();
    OUTLINED_FUNCTION_24_0(v6);
    (*(v9 + 8))(v0, v6);
  }

  return v8 & 1;
}

void MusicLibraryMapping.SectionedRequest.init(mappingSections:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_24_67();
  v100 = v10;
  v11 = _s10FrozenItemVMa();
  OUTLINED_FUNCTION_1_0();
  v93 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v99 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v82 - v18;
  OUTLINED_FUNCTION_1_0();
  v21 = v20;
  v82[2] = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23_71();
  v96 = a3;
  v24 = type metadata accessor for MappingSectionWrapper();
  OUTLINED_FUNCTION_1_0();
  v92 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13();
  v88 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v94 = v82 - v31;
  OUTLINED_FUNCTION_1_0();
  v89 = v32;
  v34 = *(v33 + 64);
  v36 = MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_12_95(v36, v37, v38, v39, v40, v41, v42, v43, v82[0]);
  v82[1] = v44;
  MEMORY[0x1EEE9AC00](v45);
  v97 = v82 - v46;
  *(a4 + 8) = 0;
  *a4 = a1;

  v95 = v24;
  v47 = sub_1D56151C8();
  v107 = v47;
  v101 = sub_1D56152D8();
  v98 = sub_1D56151C8();
  v106 = v98;

  v48 = sub_1D5615178();

  v105 = v48;
  v90 = a1;
  v91 = a2;
  if (v48 != sub_1D5615208())
  {
    v50 = v48;
    v82[0] = a4;
    v83 = *(v96 + 32);
    v84 = v96 + 32;
    v86 = v89 + 16;
    v82[5] = v92 + 16;
    v82[4] = v89 + 8;
    v98 = (v21 + 16);
    v51 = (v93 + 16);
    v52 = (v93 + 8);
    v82[3] = v92 + 8;
    v53 = v90;
    v54 = v91;
    v85 = v11;
    while (1)
    {
      v55 = v50;
      v56 = sub_1D56151E8();
      v93 = v55;
      sub_1D56151A8();
      v92 = v86 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      if (v56)
      {
        v57 = *(v89 + 80);
        OUTLINED_FUNCTION_43_3();
        v60 = v53 + v58 + *(v59 + 72) * v93;
        v93 = *(v59 + 16);
        (v93)(v97, v60, v54);
        v61 = v85;
      }

      else
      {
        sub_1D5615BB8();
        OUTLINED_FUNCTION_22_72(&v108);
        v61 = v85;
        if (!v76)
        {
LABEL_20:
          __break(1u);
          return;
        }

        v104 = v79;
        v93 = *v86;
        (v93)(v97, &v104, v54);
        swift_unknownObjectRelease();
      }

      sub_1D56152C8();
      (v93)(v87, v97, v54);
      v62 = v94;
      v63 = OUTLINED_FUNCTION_71_15();
      sub_1D5038760(v63, v64, v65);
      OUTLINED_FUNCTION_195(&v111);
      v66(v88, v62, v95);
      sub_1D56152D8();
      sub_1D5615218();
      v104 = sub_1D56151C8();
      v67 = v83(v54, v96);
      v68 = OUTLINED_FUNCTION_7_127();
      v69(v68, v54);

      v70 = sub_1D5615178();

      v103 = v70;
      v71 = sub_1D5615208();
      while (v70 != v71)
      {
        v72 = sub_1D56151E8();
        sub_1D56151A8();
        if (v72)
        {
          v73 = *(v21 + 80);
          OUTLINED_FUNCTION_43_3();
          (*(v21 + 16))(v4, v67 + v74 + *(v21 + 72) * v70, AssociatedTypeWitness);
        }

        else
        {
          sub_1D5615BB8();
          OUTLINED_FUNCTION_22_72(&v109);
          if (!v76)
          {
            __break(1u);
            goto LABEL_20;
          }

          v102 = v75;
          (*v98)(v4, &v102, AssociatedTypeWitness);
          swift_unknownObjectRelease();
        }

        sub_1D56152C8();
        sub_1D5015F48(v4, AssociatedTypeWitness, v100, v19);
        (*v51)(v99, v19, v61);
        sub_1D5615218();
        (*v52)(v19, v61);
        v71 = sub_1D5615208();
        v70 = v103;
      }

      v103 = v104;
      sub_1D56152D8();
      sub_1D5615218();
      OUTLINED_FUNCTION_195(&v110);
      v77(v94, v95);
      v53 = v90;
      v54 = v91;
      v78 = sub_1D5615208();
      v50 = v105;
      if (v105 == v78)
      {

        v49 = v106;
        v47 = v107;
        a4 = v82[0];
        goto LABEL_19;
      }
    }
  }

  v49 = v98;
LABEL_19:
  *(a4 + 16) = v47;
  v105 = MEMORY[0x1E69E7CC0];
  v80 = type metadata accessor for MusicLibraryMapping.SectionedRequest();
  v81 = *(v80 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6D30, &qword_1D5667500);
  sub_1D5612878();
  *(a4 + *(v80 + 48)) = v49;
}

void MusicLibraryMapping.SectionedRequest.init<>(mappingSections:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = _s10FrozenItemVMa();
  OUTLINED_FUNCTION_1_0();
  v109 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  v111 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v91 - v19;
  OUTLINED_FUNCTION_1_0();
  v22 = v21;
  v91[2] = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_23_71();
  v102 = a3;
  v105 = _s10FrozenItemVMa();
  OUTLINED_FUNCTION_1_0();
  v103 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v104 = v91 - v29;
  OUTLINED_FUNCTION_1_0();
  v31 = v30;
  v33 = *(v32 + 64);
  v35 = MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_12_95(v35, v36, v37, v38, v39, v40, v41, v42, v91[0]);
  v91[1] = v43;
  MEMORY[0x1EEE9AC00](v44);
  v106 = v12;
  v107 = v91 - v45;
  *(a5 + 8) = 0;
  *a5 = a1;
  v46 = sub_1D56152D8();

  v113 = v46;
  v119 = sub_1D56151C8();

  v47 = sub_1D5615178();

  v118 = v47;
  v108 = a2;
  if (v47 != sub_1D5615208())
  {
    v91[0] = a5;
    v100 = a4;
    v96 = *(a4 + 32);
    v97 = a4 + 32;
    v99 = (v31 + 16);
    v95 = v103 + 16;
    v92 = v31;
    v94 = v31 + 8;
    v110 = (v22 + 16);
    v49 = (v109 + 16);
    v50 = (v109 + 8);
    v93 = v103 + 8;
    v109 = MEMORY[0x1E69E7CC0];
    v51 = v108;
    v52 = a1;
    v98 = a1;
    while (1)
    {
      OUTLINED_FUNCTION_20_5();
      v53 = sub_1D56151E8();
      sub_1D56151A8();
      v103 = v99 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      if (v53)
      {
        v54 = *(v92 + 80);
        OUTLINED_FUNCTION_43_3();
        v57 = v52 + v55 + *(v56 + 72) * v47;
        v58 = *(v56 + 16);
        v59 = v107;
        v58(v107, v57, v51);
      }

      else
      {
        sub_1D5615BB8();
        OUTLINED_FUNCTION_22_72(v120);
        if (!v82)
        {
LABEL_24:
          __break(1u);
          return;
        }

        *&v116 = v85;
        v58 = *v99;
        v59 = v107;
        (*v99)(v107, &v116, v51);
        swift_unknownObjectRelease();
      }

      sub_1D56152C8();
      v58(v101, v59, v51);
      v60 = OUTLINED_FUNCTION_20_5();
      sub_1D5015F48(v60, v61, v102, v62);
      v117 = v105;
      __swift_allocate_boxed_opaque_existential_0(&v116);
      OUTLINED_FUNCTION_195(&v123);
      v63();
      v64 = v109;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = *(v64 + 16);
        sub_1D4F02E2C();
        v64 = v87;
      }

      v66 = *(v64 + 16);
      v65 = *(v64 + 24);
      v109 = v64;
      if (v66 >= v65 >> 1)
      {
        sub_1D4F02E2C();
        v109 = v88;
      }

      v67 = v109;
      *(v109 + 16) = v66 + 1;
      sub_1D4E519A8(&v116, (v67 + 32 * v66 + 32));
      *&v116 = sub_1D56151C8();
      v68 = v108;
      v69 = v96(v108, v100);
      v70 = OUTLINED_FUNCTION_7_127();
      v71 = v106;
      v72(v70, v68);

      v73 = sub_1D5615178();

      v115 = v73;
      OUTLINED_FUNCTION_71_15();
      v74 = sub_1D5615208();
      while (v73 != v74)
      {
        OUTLINED_FUNCTION_71_15();
        v75 = sub_1D56151E8();
        sub_1D56151A8();
        if (v75)
        {
          v76 = *(v22 + 80);
          OUTLINED_FUNCTION_43_3();
          (*(v22 + 16))(v5, v69 + v77 + *(v22 + 72) * v73, AssociatedTypeWitness);
        }

        else
        {
          sub_1D5615BB8();
          OUTLINED_FUNCTION_22_72(&v121);
          if (!v82)
          {
            __break(1u);
            goto LABEL_24;
          }

          v114 = v81;
          (*v110)(v5, &v114, AssociatedTypeWitness);
          swift_unknownObjectRelease();
        }

        sub_1D56152C8();
        sub_1D5015F48(v5, AssociatedTypeWitness, AssociatedConformanceWitness, v20);
        v78 = *v49;
        v79 = OUTLINED_FUNCTION_59_2();
        v80(v79);
        sub_1D5615218();
        (*v50)(v20, v71);
        OUTLINED_FUNCTION_71_15();
        v74 = sub_1D5615208();
        v73 = v115;
      }

      v115 = v116;
      sub_1D56152D8();
      sub_1D5615218();
      OUTLINED_FUNCTION_195(&v122);
      v83(v104, v105);
      v52 = v98;
      v51 = v108;
      v84 = sub_1D5615208();
      v47 = v118;
      if (v118 == v84)
      {

        a5 = v91[0];
        v48 = v109;
        goto LABEL_23;
      }
    }
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_23:
  type metadata accessor for MappingSectionWrapper();
  *(a5 + 16) = sub_1D56151C8();
  *&v116 = v48;
  OUTLINED_FUNCTION_4_32();
  v89 = type metadata accessor for MusicLibraryMapping.SectionedRequest();
  v90 = *(v89 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6D30, &qword_1D5667500);
  sub_1D5612878();
  *(a5 + *(v89 + 48)) = v119;
}

uint64_t MusicLibraryMapping.SectionedRequest.response<>()(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D546A8F0, 0, 0);
}

uint64_t sub_1D546A8F0()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1D546A99C;
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);

  return sub_1D546AAF4(v4, v0 + 16, v2);
}

uint64_t sub_1D546A99C()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v2 + 88) = v0;

  sub_1D4E6C9CC(v2 + 16, &qword_1EC7F0FE8, &qword_1D5652AB0);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D546AADC, 0, 0);
  }

  else
  {
    v8 = *(v6 + 8);

    return v8();
  }
}

uint64_t sub_1D546AAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[44] = a3;
  v4[45] = v3;
  v4[42] = a1;
  v4[43] = a2;
  v5 = *(a3 + 16);
  v4[46] = v5;
  v4[47] = *(a3 + 24);
  v6 = type metadata accessor for MappingSectionWrapper();
  v4[48] = v6;
  v7 = sub_1D56158D8();
  v4[49] = v7;
  v8 = *(v7 - 8);
  v4[50] = v8;
  v9 = *(v8 + 64) + 15;
  v4[51] = swift_task_alloc();
  v10 = *(v5 - 8);
  v4[52] = v10;
  v11 = *(v10 + 64) + 15;
  v4[53] = swift_task_alloc();
  v12 = type metadata accessor for MusicLibraryMapping.MappedSection();
  v4[54] = v12;
  v13 = *(v12 - 8);
  v4[55] = v13;
  v14 = *(v13 + 64) + 15;
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[58] = AssociatedTypeWitness;
  v16 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v4[59] = swift_task_alloc();
  v4[60] = swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for MusicLibraryMapping.MappedItem();
  v4[61] = v17;
  v18 = *(v17 - 8);
  v4[62] = v18;
  v19 = *(v18 + 64) + 15;
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v20 = swift_getAssociatedTypeWitness();
  v4[65] = v20;
  v21 = sub_1D56158D8();
  v4[66] = v21;
  v22 = *(v21 - 8);
  v4[67] = v22;
  v23 = *(v22 + 64) + 15;
  v4[68] = swift_task_alloc();
  swift_getAssociatedConformanceWitness();
  v24 = sub_1D560CAB8();
  v4[69] = v24;
  v25 = *(v24 - 8);
  v4[70] = v25;
  v26 = *(v25 + 64) + 15;
  v4[71] = swift_task_alloc();
  v27 = *(v20 - 8);
  v4[72] = v27;
  v28 = *(v27 + 64) + 15;
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v29 = _s10FrozenItemVMa();
  v4[75] = v29;
  v30 = *(v29 - 8);
  v4[76] = v30;
  v4[77] = *(v30 + 64);
  v4[78] = swift_task_alloc();
  v31 = *(v6 - 8);
  v4[79] = v31;
  v32 = *(v31 + 64) + 15;
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v4[83] = swift_getTupleTypeMetadata2();
  v33 = sub_1D56158D8();
  v4[84] = v33;
  v34 = *(v33 - 8);
  v4[85] = v34;
  v35 = *(v34 + 64) + 15;
  v4[86] = swift_task_alloc();
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D546B080, 0, 0);
}

void sub_1D546B080()
{
  v1 = dynamic_cast_existential_1_conditional(v0[65]);
  v0[89] = v1;
  v0[90] = v2;
  if (!v1)
  {
    v87 = v0[58];
    v88 = v0[44];
    sub_1D5615B68();

    OUTLINED_FUNCTION_6_139();
    v89 = OUTLINED_FUNCTION_29_57();
    MEMORY[0x1DA6EAC70](v89);

    OUTLINED_FUNCTION_10_115();
    v90 = OUTLINED_FUNCTION_30_64();
    MEMORY[0x1DA6EAC70](v90);

    MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D568E7F0);
    v91 = OUTLINED_FUNCTION_31_53();
    MEMORY[0x1DA6EAC70](v91);

    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    goto LABEL_25;
  }

  v3 = dynamic_cast_existential_1_conditional(v0[65]);
  v0[91] = v3;
  v0[92] = v4;
  if (!v3)
  {
    v92 = v0[65];
    sub_1D5615B68();
    OUTLINED_FUNCTION_9_119();
    v93 = OUTLINED_FUNCTION_31_53();
    MEMORY[0x1DA6EAC70](v93);

    MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D5685CB0);
    goto LABEL_25;
  }

  v5 = v0[75];
  v6 = v0[48];
  v8 = v0[44];
  v7 = v0[45];
  v141 = [objc_allocWithZone(MEMORY[0x1E69776B8]) init];
  v0[93] = v141;
  v140 = [objc_allocWithZone(MEMORY[0x1E69776B8]) init];
  v0[94] = v140;
  v9 = *(v7 + 16);
  v10 = sub_1D5615208();
  v11 = *(v7 + *(v8 + 48));
  OUTLINED_FUNCTION_4_32();
  sub_1D56152D8();
  if (v10 != sub_1D5615208())
  {
LABEL_25:
    OUTLINED_FUNCTION_5_85();
    OUTLINED_FUNCTION_56();
    return;
  }

  v12 = objc_opt_self();
  v13 = [v12 sharedCloudController];
  v14 = [v13 isUpdateInProgress];

  if (!v14 || (v15 = [v12 sharedCloudController], v16 = objc_msgSend(v15, sel_isInitialImport), v15, !v16))
  {
    v94 = v0[85];
    v162 = v0[83];
    v95 = v0[79];
    v96 = v0[48];
    v0[31] = v9;
    v97 = sub_1D56152D8();
    OUTLINED_FUNCTION_0_1();
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x1DA6EAE20](v97, WitnessTable);
    v0[32] = v0[30];
    OUTLINED_FUNCTION_4_32();
    sub_1D5615E58();
    sub_1D5615E28();
    v99 = (v94 + 32);
    v100 = (v95 + 32);
    OUTLINED_FUNCTION_4_32();
    sub_1D5615E48();
    while (1)
    {
      v101 = v0[87];
      v102 = v0[86];
      v103 = v0[84];
      v104 = v0[83];
      sub_1D5615E38();
      (*v99)(v102, v101, v103);
      if (__swift_getEnumTagSinglePayload(v102, 1, v104) == 1)
      {
        break;
      }

      v105 = v0[86];
      v106 = v0[81];
      v107 = v0[47];
      v109 = v0[45];
      v108 = v0[46];
      v110 = v0[43];
      v111 = *v105;
      v112 = (*v100)(v106, v105 + *(v162 + 48), v0[48]);
      v113 = MEMORY[0x1DA6EC3C0](v112);
      sub_1D546C788(v141, v106, v140, v109, v111, v110, v108, v107);
      v114 = v0[81];
      v115 = v0[48];
      objc_autoreleasePoolPop(v113);
      v116 = OUTLINED_FUNCTION_15_87();
      v117(v116);
    }

    v118 = v0[54];
    v119 = v0[24];

    sub_1D54724B4();
    v120 = [objc_opt_self() defaultUnpersonalizedRequest];
    v121 = sub_1D546CC1C(v120, v141, v140);
    v0[95] = v121;
    OUTLINED_FUNCTION_4_32();
    v122 = sub_1D56151C8();
    v0[96] = v122;
    v0[33] = v122;
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_1D546BD1C;
    v123 = swift_continuation_init();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7F6D50, qword_1D5667538);
    OUTLINED_FUNCTION_34_2(v124);
    v0[11] = 1107296256;
    v0[12] = sub_1D5472870;
    v0[13] = &block_descriptor_34_0;
    v0[14] = v123;
    [v121 performWithCompletionHandler_];
    OUTLINED_FUNCTION_56();

    goto _swift_continuation_await;
  }

  v161 = v0[85];
  v139 = v0[83];
  v17 = v0[79];
  v132 = v0[77];
  v18 = v0[76];
  v19 = v0[72];
  v20 = v0[70];
  v164 = v0[67];
  v21 = v0[62];
  v22 = v0[54];
  v23 = v0[55];
  v155 = v0[52];
  v24 = v0[48];
  v133 = v0[45];
  v169 = sub_1D56151C8();
  v0[38] = v9;
  OUTLINED_FUNCTION_4_32();
  v25 = sub_1D56152D8();
  OUTLINED_FUNCTION_0_1();
  v26 = swift_getWitnessTable();
  MEMORY[0x1DA6EAE20](v25, v26);
  v0[39] = v0[37];
  OUTLINED_FUNCTION_2_59();
  sub_1D5615E58();
  sub_1D5615E28();
  v138 = (v17 + 32);
  v159 = (v18 + 16);
  v147 = v18;
  v145 = (v19 + 16);
  v146 = (v19 + 32);
  v143 = (v21 + 8);
  v144 = (v21 + 16);
  v142 = (v19 + 8);
  v136 = (v23 + 16);
  v137 = (v155 + 16);
  v134 = (v17 + 8);
  v135 = (v23 + 8);
  OUTLINED_FUNCTION_2_59();
  sub_1D5615E48();
  v27 = 0;
  v156 = 0;
  while (1)
  {
    v28 = v0[88];
    v29 = v0[87];
    v30 = v0[84];
    v31 = v0[83];
    sub_1D5615E38();
    v32 = OUTLINED_FUNCTION_15_87();
    v33(v32);
    if (__swift_getEnumTagSinglePayload(v28, 1, v31) == 1)
    {
      v126 = v0[46];
      v127 = v0[47];
      v128 = v0[42];
      v129 = v0[27];

      sub_1D52B33FC(v169, v27, 0, v128);
      OUTLINED_FUNCTION_3_182();
      v149 = v0[68];
      v151 = v0[64];
      v154 = v0[63];
      v157 = v0[59];
      v158 = v0[57];
      v160 = v0[56];
      v163 = v0[53];
      v167 = v0[51];

      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_56();

      __asm { BRAA            X1, X16 }
    }

    v34 = v0[88];
    v35 = v0[75];
    v36 = v0[61];
    v37 = *v34;
    (*v138)(v0[82], &v34[*(v139 + 48)], v0[48]);
    v38 = sub_1D56151C8();
    v170 = v38;
    sub_1D5615328();
    v39 = v0[40];

    v40 = sub_1D5615178();

    v168 = v40;
    if (v40 != sub_1D5615208())
    {
      break;
    }

    v152 = v38;
LABEL_22:
    v80 = v0[82];
    v82 = v0[56];
    v81 = v0[57];
    v84 = v0[53];
    v83 = v0[54];
    v85 = v0[47];
    v166 = v0[48];
    v86 = v0[46];

    (*v137)(v84, v80, v86);
    sub_1D500EE5C(v84, v152, v81);
    (*v136)(v82, v81, v83);
    OUTLINED_FUNCTION_24_67();
    sub_1D56152D8();
    sub_1D5615218();
    (*v135)(v81, v83);
    (*v134)(v80, v166);
  }

  v165 = *(v133 + 8);
  v41 = v147;
  while (1)
  {
    v42 = v0[75];
    v43 = sub_1D56151E8();
    sub_1D56151A8();
    if (v43)
    {
      v44 = v0[78];
      v45 = v0[75];
      v46 = *(v41 + 80);
      OUTLINED_FUNCTION_43_3();
      v48 = v39 + v47 + *(v41 + 72) * v40;
      (*(v41 + 16))();
    }

    else
    {
      v76 = v0[75];
      v74 = sub_1D5615BB8();
      if (v132 != 8)
      {
        goto LABEL_36;
      }

      v77 = v74;
      v78 = v0[78];
      v79 = v0[75];
      v0[41] = v77;
      (*v159)(v78, (v0 + 41), v79);
      swift_unknownObjectRelease();
    }

    v49 = v0[78];
    v50 = v0[75];
    v51 = v0[43];
    sub_1D56152C8();
    OUTLINED_FUNCTION_2_59();
    v55 = sub_1D5016040(v52, v53, v54);
    v56 = OUTLINED_FUNCTION_7_127();
    v57(v56, v50);
    if (!v55)
    {
      goto LABEL_18;
    }

    v58 = v0[71];
    v59 = v0[69];
    v60 = v0[68];
    v61 = v0[65];
    sub_1D560CAC8();
    sub_1D560CAA8();
    v62 = OUTLINED_FUNCTION_15_87();
    v63(v62);
    if (__swift_getEnumTagSinglePayload(v60, 1, v61) != 1)
    {
      break;
    }

    v64 = v0[68];
    v65 = v0[66];

    v66 = OUTLINED_FUNCTION_7_127();
    v67(v66, v65);
LABEL_18:
    v75 = v0[75];
    v40 = v168;
    if (v168 == sub_1D5615208())
    {
      v152 = v170;
      goto LABEL_22;
    }
  }

  v68 = v0[74];
  v69 = v0[73];
  v70 = v0[65];
  v71 = v0[64];
  v72 = v0[61];
  v150 = v0[60];
  v153 = v0[63];
  v73 = v0[59];
  v148 = v0[58];
  (*v146)(v68, v0[68], v70);
  (*v145)(v69, v68, v70);
  sub_1D560CAD8();
  sub_1D52FB70C(v69, v73, v148, v71);
  (*v144)(v153, v71, v72);
  OUTLINED_FUNCTION_4_32();
  sub_1D56152D8();
  sub_1D5615218();

  (*v143)(v71, v72);
  v74 = (*v142)(v68, v70);
  v27 = v156 + 1;
  if (!__OFADD__(v156, 1))
  {
    ++v156;
    v41 = v147;
    goto LABEL_18;
  }

  __break(1u);
LABEL_36:
  __break(1u);
_swift_continuation_await:
  MEMORY[0x1EEE6DEC8](v74);
}

uint64_t sub_1D546BD1C()
{
  OUTLINED_FUNCTION_60();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 776) = v5;
  if (v5)
  {
    v6 = *(v2 + 768);

    v7 = sub_1D546C468;
  }

  else
  {
    v7 = sub_1D546BE2C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1D546BE2C()
{
  v69 = v0;
  v50 = v0[34];
  v1 = [v50 results];
  v2 = [v1 numberOfSections];

  v52 = v2;
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = v0[55];
    v47 = (v4 + 16);
    v48 = v0[52] + 16;
    v46 = (v4 + 8);
    while (v52 != v3)
    {
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v5 = v0[61];
      v57 = *(v0 + 23);
      v63 = *(v0 + 91);
      v60 = *(v0 + 89);
      v0[35] = sub_1D56151C8();
      v6 = [v50 results];
      v7 = [v6 sectionAtIndex_];

      v8 = [v50 results];
      v9 = swift_allocObject();
      *(v9 + 16) = v57;
      *(v9 + 32) = v3;
      *(v9 + 40) = v50;
      *(v9 + 48) = v63;
      *(v9 + 64) = v60;
      *(v9 + 80) = v0 + 35;
      v10 = v50;
      v11 = OUTLINED_FUNCTION_20_5();
      sub_1D4EA7420(v11);
      v12 = swift_allocObject();
      *(v12 + 16) = sub_1D5472814;
      *(v12 + 24) = v9;
      v0[22] = sub_1D5472874;
      v0[23] = v12;
      v0[18] = MEMORY[0x1E69E9820];
      v0[19] = 1107296256;
      v0[20] = sub_1D546E24C;
      v0[21] = &block_descriptor_44;
      v13 = _Block_copy(v0 + 18);
      v14 = v0[23];

      [v8 enumerateItemIdentifiersInSectionAtIndex:v3 usingBlock:v13];

      _Block_release(v13);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if (v13)
      {
        goto LABEL_13;
      }

      v15 = v0[51];
      v16 = v0[48];
      v0[36] = v7;
      swift_unknownObjectRetain();
      v17 = swift_dynamicCast();
      if (!v17)
      {
        v42 = v0[50];
        v41 = v0[51];
        v43 = v0[49];
        v44 = OUTLINED_FUNCTION_32_58(v17, v18, v19, v0[48]);
        v45(v44);
        sub_1D5615E08();
        return;
      }

      v20 = v0[80];
      v21 = v0[79];
      v22 = v0[57];
      v55 = v0[56];
      v64 = v3;
      v23 = v0[53];
      v24 = v0[54];
      v25 = v0[51];
      v26 = v0[48];
      v27 = v0[46];
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
      (*(v21 + 32))(v20, v25, v26);
      v28 = OUTLINED_FUNCTION_7_127();
      v29(v28, v20, v27);
      sub_1D500EE5C(v23, v0[35], v22);
      (*v47)(v55, v22, v24);
      OUTLINED_FUNCTION_24_67();
      sub_1D56152D8();

      OUTLINED_FUNCTION_59_2();
      sub_1D5615218();
      swift_unknownObjectRelease();
      (*v46)(v22, v24);
      (*(v21 + 8))(v20, v26);
      v30 = v0[35];

      v3 = v64 + 1;
    }

    v31 = v0[95];
    v32 = v0[94];
    v33 = v0[93];
    v65 = v0[47];
    v61 = v0[46];
    v34 = v0[42];
    v58 = v0[33];
    v35 = [v50 results];

    v36 = [v35 totalItemCount];
    sub_1D52B33FC(v58, v36, 1, v67);
    v37 = OUTLINED_FUNCTION_20_5();
    sub_1D4EA7420(v37);
    v38 = v67[1];
    v39 = v68;
    *v34 = v67[0];
    *(v34 + 8) = v38;
    *(v34 + 16) = v39;
    OUTLINED_FUNCTION_3_182();
    v49 = v0[68];
    v51 = v0[64];
    v53 = v0[63];
    v54 = v0[59];
    v56 = v0[57];
    v59 = v0[56];
    v62 = v0[53];
    v66 = v0[51];

    OUTLINED_FUNCTION_22_1();

    v40();
  }
}

uint64_t sub_1D546C468()
{
  v1 = v0[97];
  v2 = v0[95];
  v3 = v0[94];
  v4 = v0[93];
  v5 = v0[88];
  v6 = v0[87];
  v7 = v0[86];
  v8 = v0[82];
  v9 = v0[81];
  v13 = v0[80];
  v14 = v0[78];
  v15 = v0[74];
  v16 = v0[73];
  v17 = v0[71];
  v18 = v0[68];
  v19 = v0[64];
  v20 = v0[63];
  v21 = v0[59];
  v22 = v0[57];
  v23 = v0[56];
  v24 = v0[53];
  v25 = v0[51];
  swift_willThrow();

  v10 = v0[1];
  v11 = v0[97];

  return v10();
}

uint64_t MusicLibraryMapping.SectionedRequest.response<>(revisionID:requester:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D546C69C;
  OUTLINED_FUNCTION_2_59();

  return sub_1D546AAF4(v2, v3, v4);
}

uint64_t sub_1D546C69C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_8();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

void sub_1D546C788(void *a1, uint64_t a2, void *a3, uint64_t a4, void (**a5)(char *, uint64_t *, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v31 = a6;
  v29 = a5;
  v35 = a3;
  v36 = a4;
  v34 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = _s10FrozenItemVMa();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v30 = &v28 - v18;
  type metadata accessor for MappingSectionWrapper();
  [v34 appendSection_];
  swift_unknownObjectRelease();
  [v35 appendSection_];
  swift_unknownObjectRelease();
  v32 = a7;
  v33 = a8;
  v19 = *(v36 + *(type metadata accessor for MusicLibraryMapping.SectionedRequest() + 48));
  sub_1D56152D8();
  sub_1D5615328();
  v20 = v37;

  v21 = sub_1D5615178();

  v38 = v21;
  v29 = (v13 + 16);
  while (1)
  {
    v22 = sub_1D5615208();
    v23 = v38;
    if (v38 == v22)
    {

      return;
    }

    v24 = sub_1D56151E8();
    sub_1D56151A8();
    if (v24)
    {
      v25 = v30;
      (*(v13 + 16))(v30, v20 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v23, v12);
      goto LABEL_5;
    }

    v27 = sub_1D5615BB8();
    if (v28 != 8)
    {
      break;
    }

    v37 = v27;
    v25 = v30;
    (*v29)(v30, &v37, v12);
    swift_unknownObjectRelease();
LABEL_5:
    sub_1D56152C8();
    v26 = (*(v13 + 32))(v17, v25, v12);
    v23 = MEMORY[0x1DA6EC3C0](v26);
    sub_1D546CB14(v17, v36, v31, v35, v34);
    if (v9)
    {
      goto LABEL_11;
    }

    v9 = 0;
    objc_autoreleasePoolPop(v23);
    (*(v13 + 8))(v17, v12);
  }

  __break(1u);
LABEL_11:
  objc_autoreleasePoolPop(v23);
  __break(1u);
}

void sub_1D546CB14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = _s10FrozenItemVMa();
  v9 = sub_1D5016040(v7, a3, v8);
  if (v9)
  {
    v10 = v9;
    v11 = sub_1D55F45E8();
    [a4 appendItem_];
    [a5 appendItem_];
  }
}

id sub_1D546CC1C(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUnpersonalizedRequest:a1 unpersonalizedContentDescriptors:a2 representedObjects:a3];

  return v6;
}

uint64_t sub_1D546CC84(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v165 = a8;
  v176 = a7;
  v167 = a6;
  v159 = a2;
  v185 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v180 = &v141 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v183 = type metadata accessor for MusicLibraryMapping.MappedItem();
  v181 = *(v183 - 8);
  v14 = *(v181 + 64);
  v15 = MEMORY[0x1EEE9AC00](v183);
  v177 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v179 = &v141 - v17;
  v18 = sub_1D5613158();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v164 = &v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_1D5613558();
  v161 = *(v162 - 8);
  v21 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v163 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v155 = &v141 - v25;
  v26 = sub_1D560E728();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v154 = &v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1D560D9A8();
  v150 = *(v151 - 8);
  v29 = *(v150 + 64);
  v30 = MEMORY[0x1EEE9AC00](v151);
  v157 = &v141 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v153 = &v141 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v148 = &v141 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v147 = &v141 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v175 = &v141 - v39;
  v40 = sub_1D560D838();
  v192 = *(v40 - 8);
  v193 = v40;
  v41 = *(v192 + 64);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v170 = &v141 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v158 = &v141 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v146 = &v141 - v46;
  v47 = sub_1D560D9E8();
  v190 = *(v47 - 8);
  v191 = v47;
  v48 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v189 = &v141 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = swift_getAssociatedTypeWitness();
  v174 = sub_1D56158D8();
  v188 = *(v174 - 8);
  v51 = *(v188 + 64);
  v52 = MEMORY[0x1EEE9AC00](v174);
  v156 = &v141 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v152 = &v141 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v145 = &v141 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v60 = &v141 - v59;
  MEMORY[0x1EEE9AC00](v58);
  v195 = &v141 - v61;
  v171 = sub_1D560CB48();
  v169 = *(v171 - 8);
  v62 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v184 = &v141 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = AssociatedConformanceWitness;
  v64 = swift_getAssociatedConformanceWitness();
  v65 = sub_1D560CAB8();
  v66 = *(v65 - 8);
  v67 = *(v66 + 64);
  v68 = MEMORY[0x1EEE9AC00](v65);
  v70 = &v141 - v69;
  v194 = *(v50 - 8);
  v71 = *(v194 + 64);
  v72 = MEMORY[0x1EEE9AC00](v68);
  v172 = &v141 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x1EEE9AC00](v72);
  v144 = &v141 - v75;
  MEMORY[0x1EEE9AC00](v74);
  v173 = &v141 - v76;
  v77 = sub_1D560C4A8();
  v186 = *(v77 - 8);
  v187 = v77;
  v78 = *(v186 + 64);
  v79 = MEMORY[0x1EEE9AC00](v77);
  v149 = &v141 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v82 = &v141 - v81;
  sub_1D560C498();
  v160 = a5;
  v83 = [a5 representedObjectResults];
  v185 = v82;
  v84 = sub_1D560C478();
  v85 = [v83 itemAtIndexPath_];

  v182 = AssociatedTypeWitness;
  v166 = v64;
  sub_1D560CAE8();
  v86 = swift_dynamicCastClass();
  if (!v86)
  {
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v168 = v86;
  sub_1D560CAC8();
  v87 = (*(v66 + 88))(v70, v65);
  if (v87 == *MEMORY[0x1E6974C60])
  {
    v143 = v85;
    (*(v66 + 96))(v70, v65);
    v88 = v171;
    v89 = v174;
    v90 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v169 + 32))(v184, v70, v88);
    v91 = v188;
    v92 = &v70[v90];
    v93 = v195;
    (*(v188 + 32))(v195, v92, v89);
    v94 = *(v91 + 16);
    v94(v60, v93, v89);
    if (__swift_getEnumTagSinglePayload(v60, 1, v50) == 1)
    {
      (*(v91 + 8))(v60, v89);
      v95 = v194;
      v96 = v147;
      v97 = v145;
    }

    else
    {
      v95 = v194;
      v100 = v144;
      (*(v194 + 32))(v144, v60, v50);
      v101 = v146;
      sub_1D560EC98();
      v102 = sub_1D560D7E8();
      (*(v192 + 8))(v101, v193);
      (*(v95 + 8))(v100, v50);
      v96 = v147;
      v97 = v145;
      if ((v102 & 1) == 0)
      {
        v103 = MEMORY[0x1E6974FD0];
        goto LABEL_10;
      }
    }

    v103 = MEMORY[0x1E6974FD8];
LABEL_10:
    (*(v190 + 104))(v189, *v103, v191);
    v94(v97, v195, v89);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v97, 1, v50);
    v105 = v175;
    if (EnumTagSinglePayload == 1)
    {
      (*(v188 + 8))(v97, v89);
      v106 = v151;
      __swift_storeEnumTagSinglePayload(v96, 1, 1, v151);
      sub_1D560CB28();
      if (__swift_getEnumTagSinglePayload(v96, 1, v106) != 1)
      {
        sub_1D4E6C9CC(v96, &qword_1EC7F6DF0, &qword_1D561D1E0);
      }
    }

    else
    {
      v107 = v146;
      sub_1D560EC98();
      (*(v95 + 8))(v97, v50);
      sub_1D560D828();
      (*(v192 + 8))(v107, v193);
      v106 = v151;
      __swift_storeEnumTagSinglePayload(v96, 0, 1, v151);
      (*(v150 + 32))(v105, v96, v106);
      __swift_storeEnumTagSinglePayload(v105, 0, 1, v106);
    }

    v108 = v105;
    v109 = v148;
    sub_1D547279C(v108, v148);
    v110 = __swift_getEnumTagSinglePayload(v109, 1, v106);
    v111 = v153;
    v142 = v94;
    if (v110 == 1)
    {
      sub_1D560E358();
      if (__swift_getEnumTagSinglePayload(v109, 1, v106) != 1)
      {
        sub_1D4E6C9CC(v109, &qword_1EC7F6DF0, &qword_1D561D1E0);
      }
    }

    else
    {
      (*(v150 + 32))(v153, v109, v106);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
    v112 = sub_1D560DB08();
    v113 = *(v112 - 8);
    v114 = *(v113 + 72);
    v115 = (*(v113 + 80) + 32) & ~*(v113 + 80);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_1D5621D90;
    v117 = v116 + v115;
    v118 = *(v113 + 104);
    v118(v117, *MEMORY[0x1E6975040], v112);
    v118(v117 + v114, *MEMORY[0x1E6975030], v112);
    v119 = v154;
    sub_1D560E718();
    v120 = v155;
    v121 = v191;
    (*(v190 + 16))(v155, v189, v191);
    __swift_storeEnumTagSinglePayload(v120, 0, 1, v121);
    v122 = swift_unknownObjectRetain();
    v123 = v158;
    sub_1D4F40E88(v122, v111, v119, v120, v158);
    (*(v192 + 16))(v170, v123, v193);
    (*(v186 + 16))(v149, v185, v187);
    v124 = [v160 results];
    v125 = [v124 itemAtIndexPathBlock];

    *(swift_allocObject() + 16) = v125;
    v126 = v152;
    v127 = v174;
    v142(v152, v195, v174);
    if (__swift_getEnumTagSinglePayload(v126, 1, v50) == 1)
    {
      (*(v188 + 8))(v126, v127);
      v199 = 0;
      v197 = 0u;
      v198 = 0u;
    }

    else
    {
      *(&v198 + 1) = v50;
      v199 = v166;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v197);
      (*(v194 + 32))(boxed_opaque_existential_0, v126, v50);
    }

    sub_1D560E358();
    (*(v161 + 104))(v163, *MEMORY[0x1E6976A50], v162);
    v129 = sub_1D5613568();
    v130 = *(v129 + 48);
    v131 = *(v129 + 52);
    swift_allocObject();
    v132 = sub_1D5613538();
    v196[3] = v129;
    v196[4] = MEMORY[0x1E6976A68];
    v196[0] = v132;

    v133 = v184;
    sub_1D560CB38();
    *(&v198 + 1) = v165;
    v199 = a9;
    __swift_allocate_boxed_opaque_existential_0(&v197);
    sub_1D56132D8();
    sub_1D4E628D4(&v197, v196);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
    v134 = v156;
    if (swift_dynamicCast())
    {

      (*(v192 + 8))(v123, v193);
      sub_1D4E6C9CC(v175, &qword_1EC7F6DF0, &qword_1D561D1E0);
      (*(v190 + 8))(v189, v191);
      (*(v188 + 8))(v195, v127);
      (*(v169 + 8))(v133, v171);
      __swift_storeEnumTagSinglePayload(v134, 0, 1, v50);
      v98 = v194;
      v99 = v173;
      (*(v194 + 32))(v173, v134, v50);
      __swift_destroy_boxed_opaque_existential_1(&v197);
      goto LABEL_23;
    }

    __swift_storeEnumTagSinglePayload(v134, 1, 1, v50);
    (*(v188 + 8))(v134, v127);
    goto LABEL_27;
  }

  if (v87 == *MEMORY[0x1E6974C58])
  {
    (*(v66 + 96))(v70, v65);
    v98 = v194;
    v99 = v173;
    (*(v194 + 32))(v173, v70, v50);
LABEL_23:
    v135 = v172;
    (*(v98 + 16))(v172, v99, v50);
    v136 = v180;
    sub_1D560CAD8();
    v137 = v179;
    sub_1D52FB70C(v135, v136, v182, v179);
    v138 = v181;
    v139 = v183;
    (*(v181 + 16))(v177, v137, v183);
    sub_1D56152D8();
    sub_1D5615218();
    swift_unknownObjectRelease();
    (*(v138 + 8))(v137, v139);
    (*(v98 + 8))(v99, v50);
    return (*(v186 + 8))(v185, v187);
  }

LABEL_27:
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D546E24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  swift_unknownObjectRetain();
  v8(a2, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t MusicLibraryMapping.SectionedRequest.response<>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[56] = a3;
  v4[57] = v3;
  v4[54] = a1;
  v4[55] = a2;
  v4[58] = *(a2 + 24);
  v4[59] = *(a2 + 16);
  v4[60] = swift_getAssociatedTypeWitness();
  v4[61] = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_24_67();
  v5 = _s10FrozenItemVMa();
  v4[62] = v5;
  v6 = *(v5 - 8);
  v4[63] = v6;
  v4[64] = *(v6 + 64);
  v4[65] = swift_task_alloc();
  OUTLINED_FUNCTION_2_59();
  v7 = _s10FrozenItemVMa();
  v4[66] = v7;
  v8 = sub_1D56158D8();
  v4[67] = v8;
  v9 = *(v8 - 8);
  v4[68] = v9;
  v10 = *(v9 + 64) + 15;
  v4[69] = swift_task_alloc();
  v11 = *(v7 - 8);
  v4[70] = v11;
  v12 = *(v11 + 64) + 15;
  v4[71] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D546E4BC, 0, 0);
}

uint64_t sub_1D546E4BC()
{
  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = dynamic_cast_existential_1_conditional(AssociatedTypeWitness);
  *(v0 + 576) = v4;
  *(v0 + 584) = v5;
  if (!v4)
  {
    v67 = *(v0 + 480);
    v68 = *(v0 + 440);
    OUTLINED_FUNCTION_4_141();
    sub_1D5615B68();

    OUTLINED_FUNCTION_6_139();
    v69 = OUTLINED_FUNCTION_29_57();
    MEMORY[0x1DA6EAC70](v69);

    OUTLINED_FUNCTION_10_115();
    v70 = OUTLINED_FUNCTION_30_64();
    MEMORY[0x1DA6EAC70](v70);

    OUTLINED_FUNCTION_14_89();
    MEMORY[0x1DA6EAC70](v71 | 4, v72 | 0x8000000000000000);
    v73 = OUTLINED_FUNCTION_31_53();
    MEMORY[0x1DA6EAC70](v73);

    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    OUTLINED_FUNCTION_27_69();
    return OUTLINED_FUNCTION_5_85();
  }

  v6 = *(v0 + 472);
  v7 = *(v0 + 448);
  v8 = swift_getAssociatedTypeWitness();
  v9 = dynamic_cast_existential_1_conditional(v8);
  *(v0 + 592) = v9;
  *(v0 + 600) = v10;
  if (!v9)
  {
    v75 = *(v0 + 472);
    v74 = *(v0 + 480);
    v76 = *(v0 + 440);
    OUTLINED_FUNCTION_4_141();
    sub_1D5615B68();

    v77 = OUTLINED_FUNCTION_29_57();
    MEMORY[0x1DA6EAC70](v77);

    OUTLINED_FUNCTION_10_115();
    v78 = OUTLINED_FUNCTION_30_64();
    MEMORY[0x1DA6EAC70](v78);

    MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D568E7F0);
    v79 = OUTLINED_FUNCTION_31_53();
    MEMORY[0x1DA6EAC70](v79);

    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    OUTLINED_FUNCTION_27_69();
    return OUTLINED_FUNCTION_5_85();
  }

  v11 = dynamic_cast_existential_1_conditional(AssociatedTypeWitness);
  *(v0 + 608) = v11;
  *(v0 + 616) = v12;
  if (!v11)
  {
    OUTLINED_FUNCTION_4_141();
    sub_1D5615B68();
    OUTLINED_FUNCTION_9_119();
    v80 = OUTLINED_FUNCTION_29_57();
    MEMORY[0x1DA6EAC70](v80);

    OUTLINED_FUNCTION_14_89();
    MEMORY[0x1DA6EAC70](v81 + 28, v82 | 0x8000000000000000);
    OUTLINED_FUNCTION_27_69();
    return OUTLINED_FUNCTION_5_85();
  }

  v13 = dynamic_cast_existential_1_conditional(v8);
  *(v0 + 624) = v13;
  *(v0 + 632) = v14;
  if (!v13)
  {
    OUTLINED_FUNCTION_4_141();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D568E810);
    v83 = OUTLINED_FUNCTION_30_64();
    MEMORY[0x1DA6EAC70](v83);

    MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D5685CB0);
    OUTLINED_FUNCTION_27_69();
    return OUTLINED_FUNCTION_5_85();
  }

  v15 = *(v0 + 496);
  v17 = *(v0 + 464);
  v16 = *(v0 + 472);
  v18 = *(v0 + 456);
  v19 = *(v0 + 440);
  type metadata accessor for MusicLibraryMapping.MappedSection();
  *(v0 + 384) = sub_1D56151C8();
  v101 = [objc_allocWithZone(MEMORY[0x1E69776B8]) init];
  *(v0 + 640) = v101;
  v100 = [objc_allocWithZone(MEMORY[0x1E69776B8]) init];
  *(v0 + 648) = v100;
  v20 = *(v19 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6D40, &qword_1D5667530);
  sub_1D5612858();
  v21 = *(*(v0 + 392) + 16);

  v22 = *(v18 + *(v19 + 48));
  sub_1D56152D8();
  if (v21 != sub_1D5615208())
  {
    return OUTLINED_FUNCTION_5_85();
  }

  v23 = *(v0 + 560);
  v24 = *(v0 + 504);
  v94 = *(v0 + 512);
  v96 = *(v0 + 456);
  v25 = sub_1D5612858();
  v26 = 0;
  v97 = *(v0 + 400);
  v95 = (v23 + 8);
  while (1)
  {
    v27 = *(v97 + 16);
    if (v26 == v27)
    {
      v28 = 0;
      v29 = 0uLL;
      v30 = 0uLL;
      goto LABEL_11;
    }

    if (v26 >= v27)
    {
      break;
    }

    *(v0 + 232) = v26;
    sub_1D4E5194C(v97 + 32 + 32 * v26, v0 + 240);
    v29 = *(v0 + 232);
    v30 = *(v0 + 248);
    ++v26;
    v28 = *(v0 + 264);
LABEL_11:
    *(v0 + 192) = v29;
    *(v0 + 208) = v30;
    *(v0 + 224) = v28;
    if (!v28)
    {

      sub_1D54724B4();
      v85 = [objc_opt_self() defaultUnpersonalizedRequest];
      v86 = sub_1D546CC1C(v85, v101, v100);
      *(v0 + 656) = v86;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 408;
      *(v0 + 24) = sub_1D546EE30;
      v87 = swift_continuation_init();
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7F6D50, qword_1D5667538);
      OUTLINED_FUNCTION_34_2(v88);
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1D5472870;
      *(v0 + 104) = &block_descriptor_29;
      *(v0 + 112) = v87;
      [v86 performWithCompletionHandler_];
      v25 = v0 + 16;

      return MEMORY[0x1EEE6DEC8](v25);
    }

    v31 = *(v0 + 552);
    v32 = *(v0 + 528);
    sub_1D4E519A8((v0 + 200), (v0 + 352));
    v33 = swift_dynamicCast();
    if ((v33 & 1) == 0)
    {
      v89 = *(v0 + 552);
      v90 = *(v0 + 544);
      v91 = *(v0 + 536);
      v92 = OUTLINED_FUNCTION_32_58(v33, v34, v35, *(v0 + 528));
      v93(v92);
LABEL_35:
      OUTLINED_FUNCTION_14_89();
      return OUTLINED_FUNCTION_5_85();
    }

    v36 = *(v0 + 568);
    v37 = *(v0 + 552);
    v38 = *(v0 + 528);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
    v39 = OUTLINED_FUNCTION_7_127();
    v40(v39, v37, v38);
    v41 = *(v96 + 8);
    *(v0 + 304) = 0;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    v42 = sub_1D5016040(v41, v0 + 272, v38);
    sub_1D4E6C9CC(v0 + 272, &qword_1EC7F0FE8, &qword_1D5652AB0);
    if (!v42)
    {
      (*v95)(*(v0 + 568), *(v0 + 528));
      goto LABEL_35;
    }

    v99 = v26;
    v43 = *(v0 + 496);
    v98 = sub_1D55F45E8();
    [v101 appendSection_];
    [v100 appendSection_];
    sub_1D5615328();
    v44 = *(v0 + 416);

    v45 = sub_1D5615178();

    v102 = v45;
    OUTLINED_FUNCTION_59_2();
    v46 = sub_1D5615208();
    while (v45 != v46)
    {
      v47 = *(v0 + 496);
      OUTLINED_FUNCTION_59_2();
      v48 = sub_1D56151E8();
      sub_1D56151A8();
      if (v48)
      {
        v49 = *(v0 + 520);
        v50 = *(v0 + 496);
        v51 = *(v24 + 80);
        OUTLINED_FUNCTION_43_3();
        v53 = v44 + v52 + *(v24 + 72) * v45;
        (*(v24 + 16))();
      }

      else
      {
        v59 = *(v0 + 496);
        OUTLINED_FUNCTION_20_5();
        v25 = sub_1D5615BB8();
        if (v94 != 8)
        {
          goto LABEL_37;
        }

        v60 = v25;
        v61 = *(v0 + 520);
        v62 = *(v0 + 496);
        *(v0 + 424) = v60;
        (*(v24 + 16))(v61, v0 + 424, v62);
        swift_unknownObjectRelease();
      }

      v54 = *(v0 + 520);
      v55 = *(v0 + 496);
      sub_1D56152C8();
      *(v0 + 344) = 0;
      *(v0 + 312) = 0u;
      *(v0 + 328) = 0u;
      v56 = sub_1D5016040(v41, v0 + 312, v55);
      (*(v24 + 8))(v54, v55);
      sub_1D4E6C9CC(v0 + 312, &qword_1EC7F0FE8, &qword_1D5652AB0);
      if (v56)
      {

        v57 = sub_1D55F45E8();
        [v100 appendItem_];
        [v101 appendItem_];
      }

      v58 = *(v0 + 496);
      v46 = sub_1D5615208();
      v45 = v102;
    }

    v63 = *(v0 + 568);
    v64 = *(v0 + 528);

    v65 = OUTLINED_FUNCTION_7_127();
    v25 = v66(v65, v64);
    v26 = v99;
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return MEMORY[0x1EEE6DEC8](v25);
}

uint64_t sub_1D546EE30()
{
  OUTLINED_FUNCTION_60();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 664) = v5;
  if (v5)
  {
    v6 = sub_1D546F1F4;
  }

  else
  {
    v6 = sub_1D546EF38;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D546EF38()
{
  v34 = v0;
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[56];
  v4 = v0[51];
  v28 = *(v0 + 39);
  v30 = *(v0 + 38);
  v24 = *(v0 + 36);
  v26 = *(v0 + 37);
  v5 = [v4 results];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  *(v6 + 40) = v4;
  *(v6 + 48) = v30;
  *(v6 + 64) = v24;
  *(v6 + 80) = v28;
  *(v6 + 96) = v26;
  *(v6 + 112) = v0 + 48;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D54724F8;
  *(v7 + 24) = v6;
  v0[22] = sub_1D547253C;
  v0[23] = v7;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1D546E24C;
  v0[21] = &block_descriptor_10;
  v8 = _Block_copy(v0 + 18);
  v9 = v0[23];
  v10 = v4;

  [v5 enumerateSectionIdentifiersUsingBlock_];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v12 = v0[82];
    v13 = v0[81];
    v14 = v0[80];
    v27 = v0[71];
    v29 = v0[69];
    v31 = v0[65];
    v23 = v0[58];
    v25 = v0[59];
    v15 = v0[54];
    v16 = v0[48];

    v17 = [v10 results];

    v18 = [v17 totalItemCount];
    sub_1D52B33FC(v16, v18, 1, v32);
    v19 = v32[1];
    v20 = v33;
    *v15 = v32[0];
    *(v15 + 8) = v19;
    *(v15 + 16) = v20;
    v21 = v0[48];

    OUTLINED_FUNCTION_22_1();

    return v22();
  }

  return result;
}

uint64_t sub_1D546F1F4()
{
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[71];
  v6 = v0[69];
  v7 = v0[65];
  swift_willThrow();

  v8 = v0[48];

  v9 = v0[1];
  v10 = v0[83];

  return v9();
}

void sub_1D546F2B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void, void, void), void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v23 = MEMORY[0x1DA6EC3C0]();
  sub_1D546F38C(a4, a1, a5, a6, a7, a8, a2, a9, a10, a11, a12, a13, a14, a15, a16);

  objc_autoreleasePoolPop(v23);
}

uint64_t sub_1D546F38C(void *a1, uint64_t a2, void (*a3)(void, void, void), void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v180 = a8;
  v175 = a7;
  v202 = a6;
  v201 = a5;
  v200 = a4;
  v199 = a3;
  v17 = a13;
  v198 = type metadata accessor for MusicLibraryMapping.MappedSection();
  v197 = *(v198 - 8);
  v18 = *(v197 + 64);
  v19 = MEMORY[0x1EEE9AC00](v198);
  v194 = v158 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v196 = v158 - v22;
  v23 = *(*(a13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v191 = v158 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for MusicLibraryMapping.MappedItem();
  v192 = *(v193 - 8);
  v25 = *(v192 + 64);
  v26 = MEMORY[0x1EEE9AC00](v193);
  v190 = v158 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v189 = v158 - v28;
  v29 = sub_1D5613158();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v179 = v158 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_1D5613558();
  v176 = *(v177 - 8);
  v32 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v177);
  v178 = v158 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v171 = v158 - v36;
  v37 = sub_1D560E728();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v170 = v158 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1D560D9A8();
  v166 = *(v167 - 8);
  v40 = *(v166 + 64);
  v41 = MEMORY[0x1EEE9AC00](v167);
  v173 = v158 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v169 = v158 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v44 - 8);
  v165 = v158 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v164 = v158 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v188 = v158 - v50;
  v51 = sub_1D560D838();
  v210 = *(v51 - 8);
  v211 = v51;
  v52 = *(v210 + 64);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v185 = v158 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v174 = v158 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v163 = v158 - v57;
  v208 = sub_1D560D9E8();
  v207 = *(v208 - 8);
  v58 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v208);
  v206 = v158 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = a14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v205 = sub_1D56158D8();
  v204 = *(v205 - 8);
  v61 = *(v204 + 64);
  v62 = MEMORY[0x1EEE9AC00](v205);
  v172 = v158 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v168 = v158 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v162 = v158 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v161 = v158 - v69;
  MEMORY[0x1EEE9AC00](v68);
  v214 = v158 - v70;
  v186 = sub_1D560CB48();
  v184 = *(v186 - 8);
  v71 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v186);
  v203 = v158 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v183 = sub_1D560CAB8();
  v182 = *(v183 - 8);
  v73 = *(v182 + 64);
  v74 = MEMORY[0x1EEE9AC00](v183);
  v76 = v158 - v75;
  v209 = *(AssociatedTypeWitness - 8);
  v77 = *(v209 + 64);
  v78 = MEMORY[0x1EEE9AC00](v74);
  v187 = v158 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = MEMORY[0x1EEE9AC00](v78);
  v160 = v158 - v81;
  MEMORY[0x1EEE9AC00](v80);
  v215 = v158 - v82;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for MusicLibraryMapping.MappedItem();
  v222 = sub_1D56151C8();
  v83 = [a1 representedObjectResults];
  v84 = a2;
  v213 = [v83 sectionAtIndex_];

  v85 = [a1 results];
  v86 = swift_allocObject();
  v87 = v216;
  *(v86 + 16) = a13;
  *(v86 + 24) = v87;
  v195 = a15;
  *(v86 + 32) = a15;
  *(v86 + 40) = v84;
  v88 = v199;
  *(v86 + 48) = a1;
  *(v86 + 56) = v88;
  v89 = v201;
  *(v86 + 64) = v200;
  *(v86 + 72) = v89;
  *(v86 + 80) = v202;
  *(v86 + 88) = &v222;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_1D5472748;
  *(v90 + 24) = v86;
  v202 = v86;
  v220 = sub_1D5472874;
  v221 = v90;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v219 = sub_1D546E24C;
  *(&v219 + 1) = &block_descriptor_25;
  v91 = _Block_copy(&aBlock);
  v92 = a1;

  v201 = v84;
  [v85 enumerateItemIdentifiersInSectionAtIndex:v84 usingBlock:v91];

  _Block_release(v91);
  LOBYTE(v86) = swift_isEscapingClosureAtFileLocation();

  if (v86)
  {
    __break(1u);
    goto LABEL_26;
  }

  v200 = v92;
  sub_1D560CAE8();
  v93 = swift_dynamicCastClass();
  if (!v93)
  {
LABEL_26:
    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  v94 = v93;
  sub_1D560CAC8();
  v95 = v182;
  v96 = v183;
  v97 = (*(v182 + 88))(v76, v183);
  if (v97 == *MEMORY[0x1E6974C60])
  {
    v158[1] = v94;
    v159 = a13;
    (*(v95 + 96))(v76, v96);
    v98 = v186;
    v99 = v205;
    v100 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v184 + 32))(v203, v76, v98);
    v101 = v204;
    v102 = &v76[v100];
    v103 = v214;
    (*(v204 + 32))(v214, v102, v99);
    v104 = v161;
    v199 = *(v101 + 16);
    v199(v161, v103, v99);
    if (__swift_getEnumTagSinglePayload(v104, 1, AssociatedTypeWitness) == 1)
    {
      (*(v101 + 8))(v104, v99);
      v105 = v209;
      v106 = v162;
    }

    else
    {
      v105 = v209;
      v109 = AssociatedTypeWitness;
      v110 = v160;
      (*(v209 + 32))(v160, v104, v109);
      v183 = v101 + 16;
      v111 = v163;
      sub_1D560EC98();
      v112 = sub_1D560D7E8();
      (*(v210 + 8))(v111, v211);
      v113 = v110;
      AssociatedTypeWitness = v109;
      (*(v105 + 8))(v113, v109);
      v106 = v162;
      if ((v112 & 1) == 0)
      {
        v114 = MEMORY[0x1E6974FD0];
        goto LABEL_11;
      }
    }

    v114 = MEMORY[0x1E6974FD8];
LABEL_11:
    (*(v207 + 104))(v206, *v114, v208);
    v199(v106, v214, v99);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v106, 1, AssociatedTypeWitness);
    v116 = v188;
    if (EnumTagSinglePayload == 1)
    {
      (*(v101 + 8))(v106, v99);
      v117 = v164;
      v118 = v167;
      __swift_storeEnumTagSinglePayload(v164, 1, 1, v167);
      sub_1D560CB28();
      if (__swift_getEnumTagSinglePayload(v117, 1, v118) != 1)
      {
        sub_1D4E6C9CC(v117, &qword_1EC7F6DF0, &qword_1D561D1E0);
      }
    }

    else
    {
      v119 = v163;
      sub_1D560EC98();
      (*(v105 + 8))(v106, AssociatedTypeWitness);
      v120 = v164;
      sub_1D560D828();
      (*(v210 + 8))(v119, v211);
      v118 = v167;
      __swift_storeEnumTagSinglePayload(v120, 0, 1, v167);
      (*(v166 + 32))(v116, v120, v118);
      __swift_storeEnumTagSinglePayload(v116, 0, 1, v118);
    }

    v121 = v116;
    v122 = v165;
    sub_1D547279C(v121, v165);
    v123 = __swift_getEnumTagSinglePayload(v122, 1, v118);
    v124 = v169;
    v183 = a9;
    if (v123 == 1)
    {
      sub_1D560E358();
      if (__swift_getEnumTagSinglePayload(v122, 1, v118) != 1)
      {
        sub_1D4E6C9CC(v122, &qword_1EC7F6DF0, &qword_1D561D1E0);
      }
    }

    else
    {
      (*(v166 + 32))(v169, v122, v118);
    }

    v182 = a11;
    v169 = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
    v125 = sub_1D560DB08();
    v126 = *(v125 - 8);
    v127 = *(v126 + 72);
    v128 = (*(v126 + 80) + 32) & ~*(v126 + 80);
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_1D5621D90;
    v130 = v129 + v128;
    v131 = *(v126 + 104);
    v131(v130, *MEMORY[0x1E6975040], v125);
    v131(v130 + v127, *MEMORY[0x1E6975030], v125);
    v132 = v170;
    sub_1D560E718();
    v133 = v171;
    v134 = v208;
    (*(v207 + 16))(v171, v206, v208);
    __swift_storeEnumTagSinglePayload(v133, 0, 1, v134);
    v135 = swift_unknownObjectRetain();
    v136 = v174;
    sub_1D4F40E88(v135, v124, v132, v133, v174);
    (*(v210 + 16))(v185, v136, v211);
    v137 = [v200 results];
    v138 = [v137 sectionItemAtIndexPathBlock];

    *(swift_allocObject() + 16) = v138;
    v139 = v168;
    v140 = v205;
    v199(v168, v214, v205);
    if (__swift_getEnumTagSinglePayload(v139, 1, AssociatedTypeWitness) == 1)
    {
      (*(v204 + 8))(v139, v140);
      v220 = 0;
      aBlock = 0u;
      v219 = 0u;
      v107 = v209;
    }

    else
    {
      *(&v219 + 1) = AssociatedTypeWitness;
      v220 = AssociatedConformanceWitness;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
      v107 = v209;
      (*(v209 + 32))(boxed_opaque_existential_0, v139, AssociatedTypeWitness);
    }

    sub_1D560E358();
    (*(v176 + 104))(v178, *MEMORY[0x1E6976A50], v177);
    v142 = sub_1D5613568();
    v143 = *(v142 + 48);
    v144 = *(v142 + 52);
    swift_allocObject();
    v145 = sub_1D5613548();
    v217[3] = v142;
    v217[4] = MEMORY[0x1E6976A68];
    v217[0] = v145;

    v146 = v203;
    sub_1D560CB38();
    *(&v219 + 1) = v169;
    v220 = v182;
    __swift_allocate_boxed_opaque_existential_0(&aBlock);
    sub_1D56132D8();
    sub_1D4E628D4(&aBlock, v217);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
    v147 = v172;
    if (swift_dynamicCast())
    {

      (*(v210 + 8))(v136, v211);
      sub_1D4E6C9CC(v188, &qword_1EC7F6DF0, &qword_1D561D1E0);
      (*(v207 + 8))(v206, v208);
      (*(v204 + 8))(v214, v205);
      (*(v184 + 8))(v146, v186);
      __swift_storeEnumTagSinglePayload(v147, 0, 1, AssociatedTypeWitness);
      v108 = v215;
      (*(v107 + 32))(v215, v147, AssociatedTypeWitness);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v17 = v159;
      goto LABEL_24;
    }

    __swift_storeEnumTagSinglePayload(v147, 1, 1, AssociatedTypeWitness);
    (*(v204 + 8))(v147, v205);
    goto LABEL_29;
  }

  if (v97 == *MEMORY[0x1E6974C58])
  {
    (*(v95 + 96))(v76, v96);
    v107 = v209;
    v108 = v215;
    (*(v209 + 32))(v215, v76, AssociatedTypeWitness);
LABEL_24:
    v181 = AssociatedTypeWitness;
    v214 = a12;
    v148 = v187;
    (*(v107 + 16))(v187, v108, AssociatedTypeWitness);
    v149 = v191;
    sub_1D560CAD8();
    v150 = v189;
    sub_1D52FB70C(v148, v149, v17, v189);
    v151 = v192;
    v152 = v190;
    v153 = v193;
    (*(v192 + 16))(v190, v150, v193);
    v154 = v196;
    sub_1D500EE5C(v152, v222, v196);
    v155 = v197;
    v156 = v198;
    (*(v197 + 16))(v194, v154, v198);
    sub_1D56152D8();

    sub_1D5615218();
    swift_unknownObjectRelease();
    (*(v155 + 8))(v154, v156);
    (*(v151 + 8))(v150, v153);
    (*(v107 + 8))(v215, v181);
  }

LABEL_29:
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

void sub_1D5470C24(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = MEMORY[0x1DA6EC3C0]();
  sub_1D5470CE4(a1, a4, a5, a2, a6, a7, a8, a9);

  objc_autoreleasePoolPop(v15);
}

uint64_t sub_1D5470CE4(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v167 = a8;
  v166 = a7;
  v170 = a6;
  v169 = a5;
  v160 = a4;
  v188 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v182 = v143 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v185 = type metadata accessor for MusicLibraryMapping.MappedItem();
  v183 = *(v185 - 8);
  v13 = *(v183 + 64);
  v14 = MEMORY[0x1EEE9AC00](v185);
  v179 = v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v181 = v143 - v16;
  v17 = sub_1D5613158();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v165 = v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_1D5613558();
  v162 = *(v163 - 8);
  v20 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v164 = v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v156 = v143 - v24;
  v25 = sub_1D560E728();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v155 = v143 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_1D560D9A8();
  v151 = *(v152 - 8);
  v28 = *(v151 + 64);
  v29 = MEMORY[0x1EEE9AC00](v152);
  v158 = v143 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v154 = v143 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v150 = v143 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v149 = v143 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v178 = v143 - v38;
  v39 = sub_1D560D838();
  v196 = *(v39 - 8);
  v197 = v39;
  v40 = *(v196 + 64);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v174 = v143 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v159 = v143 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v148 = v143 - v45;
  v46 = sub_1D560D9E8();
  v194 = *(v46 - 8);
  v195 = v46;
  v47 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v192 = v143 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = swift_getAssociatedTypeWitness();
  v191 = sub_1D56158D8();
  v187 = *(v191 - 8);
  v50 = *(v187 + 64);
  v51 = MEMORY[0x1EEE9AC00](v191);
  v157 = v143 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v153 = v143 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v146 = v143 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v145 = v143 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v202 = v143 - v59;
  v175 = sub_1D560CB48();
  v173 = *(v175 - 8);
  v60 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v186 = v143 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = AssociatedConformanceWitness;
  v62 = swift_getAssociatedConformanceWitness();
  v63 = sub_1D560CAB8();
  v64 = *(v63 - 8);
  v65 = *(v64 + 64);
  v66 = MEMORY[0x1EEE9AC00](v63);
  v68 = v143 - v67;
  v193 = *(v49 - 8);
  v69 = *(v193 + 64);
  v70 = MEMORY[0x1EEE9AC00](v66);
  v176 = v143 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x1EEE9AC00](v70);
  v144 = v143 - v73;
  MEMORY[0x1EEE9AC00](v72);
  v177 = v143 - v74;
  v75 = sub_1D560C4A8();
  v189 = *(v75 - 8);
  v190 = v75;
  v76 = *(v189 + 64);
  v77 = MEMORY[0x1EEE9AC00](v75);
  v171 = v143 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77);
  v80 = v143 - v79;
  sub_1D560C498();
  v161 = a3;
  v81 = [a3 representedObjectResults];
  v188 = v80;
  v82 = sub_1D560C478();
  v83 = [v81 itemAtIndexPath_];

  v184 = AssociatedTypeWitness;
  v168 = v62;
  sub_1D560CAE8();
  v172 = v83;
  v84 = swift_dynamicCastClass();
  if (!v84)
  {
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v85 = v84;
  sub_1D560CAC8();
  v86 = (*(v64 + 88))(v68, v63);
  if (v86 == *MEMORY[0x1E6974C60])
  {
    (*(v64 + 96))(v68, v63);
    v87 = v175;
    v88 = v191;
    v89 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v173 + 32))(v186, v68, v87);
    v90 = v187;
    v91 = &v68[v89];
    v92 = v202;
    (*(v187 + 32))(v202, v91, v88);
    v93 = v145;
    v147 = *(v90 + 16);
    v147(v145, v92, v88);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v93, 1, v49);
    v95 = v193;
    if (EnumTagSinglePayload == 1)
    {
      (*(v90 + 8))(v93, v88);
      v96 = v146;
    }

    else
    {
      v99 = *(v193 + 32);
      v143[0] = v90 + 16;
      v100 = v144;
      v99(v144, v93, v49);
      v101 = v148;
      sub_1D560EC98();
      v102 = sub_1D560D7E8();
      (*(v196 + 8))(v101, v197);
      (*(v95 + 8))(v100, v49);
      v96 = v146;
      if ((v102 & 1) == 0)
      {
        v103 = MEMORY[0x1E6974FD0];
        goto LABEL_10;
      }
    }

    v103 = MEMORY[0x1E6974FD8];
LABEL_10:
    (*(v194 + 104))(v192, *v103, v195);
    v147(v96, v202, v88);
    v104 = __swift_getEnumTagSinglePayload(v96, 1, v49);
    v105 = v178;
    v143[1] = v85;
    if (v104 == 1)
    {
      (*(v90 + 8))(v96, v88);
      v106 = v149;
      v107 = v152;
      __swift_storeEnumTagSinglePayload(v149, 1, 1, v152);
      sub_1D560CB28();
      if (__swift_getEnumTagSinglePayload(v106, 1, v107) != 1)
      {
        sub_1D4E6C9CC(v106, &qword_1EC7F6DF0, &qword_1D561D1E0);
      }
    }

    else
    {
      v108 = v148;
      sub_1D560EC98();
      (*(v95 + 8))(v96, v49);
      v109 = v149;
      sub_1D560D828();
      (*(v196 + 8))(v108, v197);
      v107 = v152;
      __swift_storeEnumTagSinglePayload(v109, 0, 1, v152);
      (*(v151 + 32))(v105, v109, v107);
      __swift_storeEnumTagSinglePayload(v105, 0, 1, v107);
    }

    v110 = v105;
    v111 = v150;
    sub_1D547279C(v110, v150);
    v112 = __swift_getEnumTagSinglePayload(v111, 1, v107);
    v113 = v154;
    if (v112 == 1)
    {
      sub_1D560E358();
      if (__swift_getEnumTagSinglePayload(v111, 1, v107) != 1)
      {
        sub_1D4E6C9CC(v111, &qword_1EC7F6DF0, &qword_1D561D1E0);
      }
    }

    else
    {
      (*(v151 + 32))(v154, v111, v107);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
    v114 = sub_1D560DB08();
    v115 = *(v114 - 8);
    v116 = *(v115 + 72);
    v117 = (*(v115 + 80) + 32) & ~*(v115 + 80);
    v118 = swift_allocObject();
    *(v118 + 16) = xmmword_1D5621D90;
    v119 = v118 + v117;
    v120 = *(v115 + 104);
    v120(v119, *MEMORY[0x1E6975040], v114);
    v120(v119 + v116, *MEMORY[0x1E6975030], v114);
    v121 = v155;
    sub_1D560E718();
    v122 = v195;
    v123 = v156;
    (*(v194 + 16))(v156, v192, v195);
    __swift_storeEnumTagSinglePayload(v123, 0, 1, v122);
    v124 = swift_unknownObjectRetain();
    v125 = v159;
    sub_1D4F40E88(v124, v113, v121, v123, v159);
    (*(v196 + 16))(v174, v125, v197);
    (*(v189 + 16))(v171, v188, v190);
    v126 = [v161 results];
    v127 = [v126 itemAtIndexPathBlock];

    *(swift_allocObject() + 16) = v127;
    v128 = v153;
    v129 = v191;
    v147(v153, v202, v191);
    if (__swift_getEnumTagSinglePayload(v128, 1, v49) == 1)
    {
      (*(v187 + 8))(v128, v129);
      v201 = 0;
      v199 = 0u;
      v200 = 0u;
      v97 = v193;
    }

    else
    {
      *(&v200 + 1) = v49;
      v201 = v168;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v199);
      v97 = v193;
      (*(v193 + 32))(boxed_opaque_existential_0, v128, v49);
    }

    sub_1D560E358();
    (*(v162 + 104))(v164, *MEMORY[0x1E6976A50], v163);
    v131 = sub_1D5613568();
    v132 = *(v131 + 48);
    v133 = *(v131 + 52);
    swift_allocObject();
    v134 = sub_1D5613538();
    v198[3] = v131;
    v198[4] = MEMORY[0x1E6976A68];
    v198[0] = v134;

    v135 = v186;
    sub_1D560CB38();
    *(&v200 + 1) = v166;
    v201 = v167;
    __swift_allocate_boxed_opaque_existential_0(&v199);
    sub_1D56132D8();
    sub_1D4E628D4(&v199, v198);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
    v136 = v157;
    if (swift_dynamicCast())
    {

      (*(v196 + 8))(v125, v197);
      sub_1D4E6C9CC(v178, &qword_1EC7F6DF0, &qword_1D561D1E0);
      (*(v194 + 8))(v192, v195);
      (*(v187 + 8))(v202, v191);
      (*(v173 + 8))(v135, v175);
      __swift_storeEnumTagSinglePayload(v136, 0, 1, v49);
      v98 = v177;
      (*(v97 + 32))(v177, v136, v49);
      __swift_destroy_boxed_opaque_existential_1(&v199);
      goto LABEL_23;
    }

    __swift_storeEnumTagSinglePayload(v136, 1, 1, v49);
    (*(v187 + 8))(v136, v191);
    goto LABEL_27;
  }

  v97 = v193;
  if (v86 == *MEMORY[0x1E6974C58])
  {
    (*(v64 + 96))(v68, v63);
    v98 = v177;
    (*(v97 + 32))(v177, v68, v49);
LABEL_23:
    v137 = v176;
    (*(v97 + 16))(v176, v98, v49);
    v138 = v182;
    sub_1D560CAD8();
    v139 = v181;
    sub_1D52FB70C(v137, v138, v184, v181);
    v140 = v183;
    v141 = v185;
    (*(v183 + 16))(v179, v139, v185);
    sub_1D56152D8();
    sub_1D5615218();
    swift_unknownObjectRelease();
    (*(v140 + 8))(v139, v141);
    (*(v97 + 8))(v98, v49);
    return (*(v189 + 8))(v188, v190);
  }

LABEL_27:
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D54722E4(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a2, a1);
  sub_1D56159A8();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D5472344(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5472860;

  return MusicLibraryMapping.SectionedRequest.response<>()(a1, a2);
}

uint64_t sub_1D54723EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D5472860;

  return MusicLibraryMapping.SectionedRequest.response<>(revisionID:requester:)();
}

unint64_t sub_1D54724B4()
{
  result = qword_1EC7F6D48;
  if (!qword_1EC7F6D48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7F6D48);
  }

  return result;
}

uint64_t sub_1D547253C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1D547256C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1D56152D8();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 24);
    type metadata accessor for MappingSectionWrapper();
    sub_1D56152D8();
    if (v5 <= 0x3F)
    {
      sub_1D54726E4();
      if (v6 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        _s10FrozenItemVMa();
        sub_1D56152D8();
        sub_1D56152D8();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D54726E4()
{
  if (!qword_1EC7F6DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC7F6D30, &qword_1D5667500);
    v0 = sub_1D5612868();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F6DE0);
    }
  }
}

void sub_1D5472748(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 32);
  v4 = *(v3 + 16);
  sub_1D5470C24(a1, a2, a3, *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80));
}

uint64_t sub_1D547279C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5472814(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  return sub_1D546CC84(a1, a2, a3, *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72));
}

uint64_t OUTLINED_FUNCTION_31_53()
{

  return sub_1D5616458();
}

uint64_t PinnableMusicItem.itemToPin.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_0, v3, a1);
}

double PinnableMusicItem<>.itemToPin.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1D560D078();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D54729B4@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v188 = a1;
  v192 = a5;
  v186 = type metadata accessor for MusicPinPropertyProvider();
  v8 = OUTLINED_FUNCTION_14(v186);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v183 = v11;
  v197 = sub_1D560D838();
  v12 = OUTLINED_FUNCTION_4(v197);
  v189 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v187 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v196 = &v166 - v18;
  v19 = sub_1D5610088();
  v20 = OUTLINED_FUNCTION_4(v19);
  v190 = v21;
  v191 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  v195 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_22(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v29);
  v175 = sub_1D5613838();
  v30 = OUTLINED_FUNCTION_4(v175);
  v174 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v39);
  v177 = sub_1D5614898();
  v40 = OUTLINED_FUNCTION_4(v177);
  v168 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA990, &qword_1D561D220);
  OUTLINED_FUNCTION_22(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_3();
  v182 = v49;
  v181 = sub_1D560EEA8();
  v50 = OUTLINED_FUNCTION_4(v181);
  v170 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A8, &qword_1D561CF10);
  OUTLINED_FUNCTION_22(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v59);
  v179 = sub_1D5613EF8();
  v60 = OUTLINED_FUNCTION_4(v179);
  v172 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v65);
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v166 - v69;
  v71 = sub_1D5613AF8();
  v72 = OUTLINED_FUNCTION_4(v71);
  v74 = v73;
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v78 = &v166 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for MusicPin.Item();
  v79 = OUTLINED_FUNCTION_14(v184);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_13();
  v194 = v82;
  MEMORY[0x1EEE9AC00](v83);
  v193 = &v166 - v84;
  v185 = *a2;
  v85 = a4;
  v86 = *(a4 + 16);
  v87 = a3;
  v88 = a3;
  v89 = v85;
  v90 = v86;
  (v86)(&v198, v88);
  if (!v199)
  {
    sub_1D4E50004(&v198, &qword_1EC7EC500, &unk_1D5621030);
    v100 = OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v100, v101, 1, v71);
LABEL_5:
    sub_1D4E50004(v70, &qword_1EC7EEC30, &unk_1D5620CE0);
    v102 = v90;
    (v90)(&v198, v87, v89);
    if (v199)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
      OUTLINED_FUNCTION_8_127();
      v103 = v180;
      v104 = v179;
      swift_dynamicCast();
      v105 = OUTLINED_FUNCTION_6_140();
      __swift_storeEnumTagSinglePayload(v105, v106, v107, v104);
      v108 = OUTLINED_FUNCTION_105();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v108, v109, v104);
      v111 = v182;
      v99 = v183;
      v112 = v181;
      if (EnumTagSinglePayload != 1)
      {
        v96 = v186;
        v113 = *(v172 + 32);
        v114 = v171;
        v113(v171, v103, v104);
        v115 = OUTLINED_FUNCTION_10_116();
        v113(v115, v114, v104);
        LODWORD(v182) = 1;
        goto LABEL_20;
      }
    }

    else
    {
      sub_1D4E50004(&v198, &qword_1EC7EC500, &unk_1D5621030);
      v103 = v180;
      v116 = OUTLINED_FUNCTION_105();
      __swift_storeEnumTagSinglePayload(v116, v117, 1, v179);
      v111 = v182;
      v99 = v183;
      v112 = v181;
    }

    sub_1D4E50004(v103, &qword_1EC7EA8A8, &qword_1D561CF10);
    v118 = OUTLINED_FUNCTION_7_128();
    v102(v118);
    if (v199)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
      OUTLINED_FUNCTION_8_127();
      v119 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v111, v119 ^ 1u, 1, v112);
      if (__swift_getEnumTagSinglePayload(v111, 1, v112) != 1)
      {
        v96 = v186;
        v120 = *(v170 + 32);
        v121 = v169;
        v120(v169, v111, v112);
        v122 = OUTLINED_FUNCTION_10_116();
        v120(v122, v121, v112);
        LODWORD(v182) = 3;
        goto LABEL_20;
      }
    }

    else
    {
      sub_1D4E50004(&v198, &qword_1EC7EC500, &unk_1D5621030);
      __swift_storeEnumTagSinglePayload(v111, 1, 1, v112);
    }

    sub_1D4E50004(v111, &qword_1EC7EA990, &qword_1D561D220);
    v123 = OUTLINED_FUNCTION_7_128();
    v102(v123);
    if (v199)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
      OUTLINED_FUNCTION_8_127();
      v124 = v178;
      v125 = v177;
      swift_dynamicCast();
      v126 = OUTLINED_FUNCTION_6_140();
      __swift_storeEnumTagSinglePayload(v126, v127, v128, v125);
      v129 = OUTLINED_FUNCTION_105();
      if (__swift_getEnumTagSinglePayload(v129, v130, v125) != 1)
      {
        v96 = v186;
        v131 = *(v168 + 32);
        v132 = v167;
        v131(v167, v124, v125);
        v133 = OUTLINED_FUNCTION_10_116();
        v131(v133, v132, v125);
        LODWORD(v182) = 2;
        goto LABEL_20;
      }
    }

    else
    {
      sub_1D4E50004(&v198, &qword_1EC7EC500, &unk_1D5621030);
      v124 = v178;
      v134 = OUTLINED_FUNCTION_105();
      __swift_storeEnumTagSinglePayload(v134, v135, 1, v177);
    }

    sub_1D4E50004(v124, &unk_1EC7F1990, &unk_1D561CEF0);
    v136 = OUTLINED_FUNCTION_7_128();
    v102(v136);
    if (v199)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
      OUTLINED_FUNCTION_8_127();
      v137 = v176;
      v138 = v175;
      v139 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v137, v139 ^ 1u, 1, v138);
      if (__swift_getEnumTagSinglePayload(v137, 1, v138) != 1)
      {
        v96 = v186;
        v140 = *(v174 + 32);
        v141 = v173;
        v140(v173, v137, v138);
        v142 = OUTLINED_FUNCTION_10_116();
        v140(v142, v141, v138);
        LODWORD(v182) = 3;
        goto LABEL_20;
      }
    }

    else
    {
      sub_1D4E50004(&v198, &qword_1EC7EC500, &unk_1D5621030);
      v137 = v176;
      __swift_storeEnumTagSinglePayload(v176, 1, 1, v175);
    }

    sub_1D4E50004(v137, &qword_1EC7EA978, &qword_1D5652B10);
    result = sub_1D5615E08();
    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  OUTLINED_FUNCTION_8_127();
  swift_dynamicCast();
  v91 = OUTLINED_FUNCTION_6_140();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v71);
  v94 = OUTLINED_FUNCTION_105();
  if (__swift_getEnumTagSinglePayload(v94, v95, v71) == 1)
  {
    goto LABEL_5;
  }

  v96 = v186;
  v97 = *(v74 + 32);
  v97(v78, v70, v71);
  v98 = OUTLINED_FUNCTION_10_116();
  v97(v98, v78, v71);
  LODWORD(v182) = 0;
  v99 = v183;
LABEL_20:
  v143 = v184;
  swift_storeEnumTagMultiPayload();
  v144 = v194;
  sub_1D54738E8(v87, v194, type metadata accessor for MusicPin.Item);
  sub_1D560FE18();
  MusicPin.Item.innerItem.getter(&v198);
  __swift_project_boxed_opaque_existential_1(&v198, v199);
  sub_1D560EC18();
  __swift_destroy_boxed_opaque_existential_1(&v198);
  v186 = sub_1D560FDE8();
  v183 = v145;

  sub_1D54738A0(&qword_1EC7EC830, type metadata accessor for MusicPin.Item);
  v146 = v187;
  sub_1D560EC98();
  sub_1D528F570(v196);
  v147 = v189;
  v187 = *(v189 + 8);
  v187(v146, v197);
  v148 = v96;
  v149 = v96[5];
  sub_1D54738E8(v144, &v99[v149], type metadata accessor for MusicPin.Item);
  __swift_storeEnumTagSinglePayload(&v99[v149], 0, 1, v143);
  sub_1D5614A88();
  v150 = OUTLINED_FUNCTION_3_183();
  v184 = OUTLINED_FUNCTION_3_183();
  v181 = OUTLINED_FUNCTION_3_183();
  v151 = OUTLINED_FUNCTION_3_183();
  *v99 = v185;
  v99[v96[6]] = v182;
  v152 = &v99[v96[7]];
  *v152 = v188;
  v152[8] = 0;
  if (qword_1EC7E9388 != -1)
  {
    swift_once();
  }

  v153 = qword_1EC87C4C0;
  if (qword_1EC87C4C0 >> 62)
  {
    sub_1D560CDE8();

    v165 = sub_1D5615E18();

    v153 = v165;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *&v99[v96[8]] = v153;
  v155 = v196;
  v154 = v197;
  (*(v147 + 16))(&v99[v96[9]], v196, v197);
  v157 = v190;
  v156 = v191;
  v158 = &v99[v96[10]];
  v159 = v195;
  (*(v190 + 16))(v158, v195, v191);
  v160 = &v99[v148[11]];
  v162 = v183;
  v161 = v184;
  *v160 = v186;
  v160[1] = v162;
  *&v99[v148[12]] = v150;
  *&v99[v148[13]] = v161;
  *&v99[v148[14]] = v181;
  *&v99[v148[15]] = v151;
  v199 = v148;
  v200 = sub_1D54738A0(&qword_1EC7F1D58, type metadata accessor for MusicPinPropertyProvider);
  v163 = __swift_allocate_boxed_opaque_existential_0(&v198);
  sub_1D54738E8(v99, v163, type metadata accessor for MusicPinPropertyProvider);
  MusicPin.init(propertyProvider:)(&v198, v192);
  sub_1D5473948(v99, type metadata accessor for MusicPinPropertyProvider);
  v187(v155, v154);
  (*(v157 + 8))(v159, v156);
  sub_1D5473948(v194, type metadata accessor for MusicPin.Item);
  return sub_1D5473948(v193, type metadata accessor for MusicPin.Item);
}

uint64_t sub_1D54738A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D54738E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D5473948(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D54739B8(uint64_t a1, unsigned __int8 a2)
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](a2);
  return sub_1D5616328();
}

uint64_t sub_1D5473A2C()
{
  OUTLINED_FUNCTION_305_0();
  OUTLINED_FUNCTION_312_1();

  return sub_1D5616328();
}

uint64_t sub_1D5473AA0()
{
  sub_1D56162D8();
  OUTLINED_FUNCTION_312_1();

  return sub_1D5616328();
}

uint64_t sub_1D5473B4C()
{
  OUTLINED_FUNCTION_305_0();
  sub_1D5614E28();

  return sub_1D5616328();
}

uint64_t sub_1D5473BD8()
{
  OUTLINED_FUNCTION_305_0();
  OUTLINED_FUNCTION_312_1();

  return sub_1D5616328();
}

uint64_t sub_1D5473C60()
{
  sub_1D56162D8();
  OUTLINED_FUNCTION_312_1();

  return sub_1D5616328();
}

uint64_t sub_1D5473D38(uint64_t a1, char a2)
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](qword_1D5668698[a2]);
  return sub_1D5616328();
}

uint64_t sub_1D5473D88()
{
  OUTLINED_FUNCTION_305_0();
  sub_1D5614E28();

  return sub_1D5616328();
}

uint64_t sub_1D5473EB0()
{
  OUTLINED_FUNCTION_305_0();
  OUTLINED_FUNCTION_312_1();

  return sub_1D5616328();
}

uint64_t sub_1D5473F34()
{
  OUTLINED_FUNCTION_305_0();
  OUTLINED_FUNCTION_312_1();

  return sub_1D5616328();
}

uint64_t sub_1D5473FF8()
{
  OUTLINED_FUNCTION_305_0();
  OUTLINED_FUNCTION_312_1();

  return sub_1D5616328();
}

uint64_t sub_1D547407C()
{
  sub_1D56162D8();
  sub_1D5614E28();

  return sub_1D5616328();
}

uint64_t sub_1D5474114()
{
  OUTLINED_FUNCTION_305_0();
  OUTLINED_FUNCTION_312_1();

  return sub_1D5616328();
}

uint64_t sub_1D54741B8()
{
  OUTLINED_FUNCTION_305_0();
  sub_1D5614E28();

  return sub_1D5616328();
}

uint64_t sub_1D5474224()
{
  OUTLINED_FUNCTION_305_0();
  OUTLINED_FUNCTION_312_1();

  return sub_1D5616328();
}

uint64_t sub_1D5474298()
{
  v0 = sub_1D56162D8();
  OUTLINED_FUNCTION_19_63(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1D5614E28();
  return sub_1D5616328();
}

uint64_t sub_1D54742E4()
{
  sub_1D56162D8();
  OUTLINED_FUNCTION_102();
  sub_1D5614E28();
  return sub_1D5616328();
}

uint64_t sub_1D547432C()
{
  OUTLINED_FUNCTION_305_0();
  OUTLINED_FUNCTION_312_1();

  return sub_1D5616328();
}

uint64_t sub_1D54743D0()
{
  OUTLINED_FUNCTION_305_0();
  OUTLINED_FUNCTION_312_1();

  return sub_1D5616328();
}

uint64_t sub_1D5474480()
{
  v0 = sub_1D56162D8();
  OUTLINED_FUNCTION_19_63(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1D5614E28();
  return sub_1D5616328();
}

uint64_t sub_1D54744E4()
{
  OUTLINED_FUNCTION_305_0();
  OUTLINED_FUNCTION_312_1();

  return sub_1D5616328();
}

uint64_t sub_1D5474574()
{
  OUTLINED_FUNCTION_305_0();
  OUTLINED_FUNCTION_312_1();

  return sub_1D5616328();
}

uint64_t sub_1D5474608()
{
  OUTLINED_FUNCTION_305_0();
  OUTLINED_FUNCTION_312_1();

  return sub_1D5616328();
}

uint64_t sub_1D5474688()
{
  OUTLINED_FUNCTION_305_0();
  sub_1D5614E28();

  return sub_1D5616328();
}