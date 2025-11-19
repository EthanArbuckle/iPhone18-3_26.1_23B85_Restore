uint64_t sub_1D5198218(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_59();
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_59();
    if (swift_weakLoadStrong())
    {
      v5 = OUTLINED_FUNCTION_0_6();
      a3(v5);
    }
  }

  return result;
}

void sub_1D51982A0()
{
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_118_7();
  OUTLINED_FUNCTION_59();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    OUTLINED_FUNCTION_59();
    if (swift_weakLoadStrong())
    {
      sub_1D5198820(v2, v0);
    }
  }

  OUTLINED_FUNCTION_63_5();
}

uint64_t sub_1D5198334()
{
  type metadata accessor for UploadedVideo();
  sub_1D51AE1F4(&qword_1EC7F1490, type metadata accessor for UploadedVideo);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v1 = v2;
  sub_1D5196BF8(&v1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v1 = v2;
  sub_1D5196D9C(&v1);
  sub_1D51A7330();
  return sub_1D51970A0();
}

uint64_t sub_1D51984D8()
{
  type metadata accessor for UploadedAudio();
  sub_1D51AE1F4(&qword_1EC7F1478, type metadata accessor for UploadedAudio);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v1 = v2;
  sub_1D5196BF8(&v1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v1 = v2;
  sub_1D5196D9C(&v1);
  sub_1D51A7330();
  return sub_1D51970A0();
}

uint64_t sub_1D519867C()
{
  type metadata accessor for TVEpisode();
  sub_1D51AE1F4(&qword_1EC7F1468, type metadata accessor for TVEpisode);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v1 = v2;
  sub_1D5196BF8(&v1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v1 = v2;
  sub_1D5196D9C(&v1);
  sub_1D51A7330();
  return sub_1D51970A0();
}

uint64_t sub_1D5198820(uint64_t a1, void (*a2)(void))
{
  a2(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v2 = OUTLINED_FUNCTION_140_6();
  sub_1D5196BF8(v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v3 = OUTLINED_FUNCTION_140_6();
  sub_1D5196D9C(v3);
  v4 = OUTLINED_FUNCTION_61();
  sub_1D51A73E8(v4);
  return sub_1D51970A0();
}

uint64_t sub_1D519894C()
{
  sub_1D560EEA8();
  sub_1D51AE1F4(&qword_1EC7F1448, MEMORY[0x1E69754E8]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v1 = v2;
  sub_1D5196BF8(&v1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v1 = v2;
  sub_1D5196D9C(&v1);
  sub_1D51A7330();
  return sub_1D51970A0();
}

uint64_t sub_1D5198AF0()
{
  type metadata accessor for MusicMovie();
  sub_1D51AE1F4(&qword_1EC7F1438, type metadata accessor for MusicMovie);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v1 = v2;
  sub_1D5196BF8(&v1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v1 = v2;
  sub_1D5196D9C(&v1);
  sub_1D51A7330();
  return sub_1D51970A0();
}

uint64_t MusicPlayer.GenericItemState.deinit()
{
  v1 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState__playabilityStatus;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1340, &qword_1D563FDE8);
  OUTLINED_FUNCTION_14(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState__previewCapabilityStatus;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1350, &qword_1D563FE38);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState__isPlaying;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1360, &unk_1D563FE88);
  OUTLINED_FUNCTION_14(v8);
  (*(v9 + 8))(v0 + v7);
  v10 = *(v0 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver);

  sub_1D4E50004(v0 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemState, &qword_1EC7E9F98, &qword_1D561C420);
  return v0;
}

uint64_t MusicPlayer.GenericItemState.__deallocating_deinit()
{
  MusicPlayer.GenericItemState.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D5198E08@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MusicPlayer.GenericItemState();
  result = sub_1D560C838();
  *a1 = result;
  return result;
}

uint64_t MusicPlayer.state(for:)()
{
  OUTLINED_FUNCTION_147();
  v1 = type metadata accessor for GenericMusicItem();
  v2 = OUTLINED_FUNCTION_22(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_51();
  v5 = OUTLINED_FUNCTION_127_0();
  sub_1D51A1FBC(v5, v0);
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  if (qword_1EDD5E6F8 != -1)
  {
    OUTLINED_FUNCTION_72_16();
  }

  v6 = type metadata accessor for MusicPlayer.GenericItemState();
  v7 = OUTLINED_FUNCTION_2_19(v6);

  OUTLINED_FUNCTION_134_5(v8, &v16, v9, v10, v11, v12, v13, v14, v16, *(&v16 + 1), v17, *(&v17 + 1), v18, v19, v20, v21, v22, v23, vars0, vars8);
  return v7;
}

uint64_t MusicPlayer.state(for:container:)(uint64_t a1)
{
  v3 = type metadata accessor for GenericMusicItem();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_51();
  sub_1D51A1FBC(a1, v1);
  v23 = v3;
  OUTLINED_FUNCTION_60_13();
  v24 = sub_1D51AE1F4(v7, v8);
  __swift_allocate_boxed_opaque_existential_0(v22);
  v9 = OUTLINED_FUNCTION_143_5();
  sub_1D51A1FBC(v9, v10);
  if (qword_1EDD5E6F8 != -1)
  {
    OUTLINED_FUNCTION_72_16();
  }

  v11 = type metadata accessor for MusicPlayer.GenericItemState();
  v12 = OUTLINED_FUNCTION_2_19(v11);

  OUTLINED_FUNCTION_134_5(v13, v22, v14, v15, v16, v17, v18, v19, v21, v22[0], v22[1], v22[2], v23, v24, v25, v26, v27, v28, v29, v30);
  return v12;
}

uint64_t InternalMusicPlayer.state(for:)()
{
  v1 = type metadata accessor for GenericMusicItem();
  v2 = OUTLINED_FUNCTION_22(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_24_42();
  v8 = OUTLINED_FUNCTION_128();
  sub_1D51A1FBC(v8, v9);
  v10 = type metadata accessor for MusicPlayer.GenericItemState();
  v11 = OUTLINED_FUNCTION_2_19(v10);

  sub_1D519607C(v7, &v18, v0, v12, v13, v14, v15, v16, 0, 0, 0, 0, 0, v19, v20, v21, v22, v23, vars0, vars8);
  return v11;
}

uint64_t InternalMusicPlayer.state(for:container:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for GenericMusicItem();
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_51();
  sub_1D51A1FBC(a1, v2);
  v24 = v5;
  OUTLINED_FUNCTION_60_13();
  v25 = sub_1D51AE1F4(v9, v10);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  sub_1D51A1FBC(a2, boxed_opaque_existential_0);
  v12 = type metadata accessor for MusicPlayer.GenericItemState();
  v13 = OUTLINED_FUNCTION_2_19(v12);

  OUTLINED_FUNCTION_134_5(v14, v23, v15, v16, v17, v18, v19, v20, v22, v23[0], v23[1], v23[2], v24, v25, v26, v27, v28, v29, v30, v31);
  return v13;
}

uint64_t type metadata accessor for MusicPlayer.GenericItemState()
{
  result = qword_1EC7F1378;
  if (!qword_1EC7F1378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5199208()
{
  sub_1D5199458(319, &qword_1EC7F1388, &qword_1EC7F1390, &qword_1D563FEF8);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1D5199458(319, &qword_1EC7F1398, &qword_1EC7F13A0, &qword_1D563FF00);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1D5199458(319, &qword_1EC7F13A8, &qword_1EC7F13B0, &qword_1D563FF08);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1D5199458(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_143_5();
    v5 = sub_1D560C928();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D51994A8()
{
  OUTLINED_FUNCTION_47();
  v111 = v0;
  v114 = v4;
  v115 = v5;
  v7 = v6;
  v9 = v8;
  v10 = sub_1D560D258();
  v11 = OUTLINED_FUNCTION_4(v10);
  v113 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_2();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v106 - v18;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_145();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_163_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_77();
  v22 = v7[3];
  v23 = v7[4];
  v24 = OUTLINED_FUNCTION_134_0();
  __swift_project_boxed_opaque_existential_1(v24, v25);
  OUTLINED_FUNCTION_82();
  if (sub_1D5612EF8())
  {
    v120 = 1;
    if (qword_1EDD544A0 != -1)
    {
      OUTLINED_FUNCTION_1_100();
    }

    v112 = v10;
    v26 = sub_1D560C758();
    v107 = __swift_project_value_buffer(v26, qword_1EDD76AD8);
    v27 = sub_1D560C738();
    v28 = sub_1D56156E8();
    v29 = os_log_type_enabled(v27, v28);
    v106 = v3;
    v108 = v9;
    if (v29)
    {
      OUTLINED_FUNCTION_142();
      v30 = OUTLINED_FUNCTION_52_19();
      v119[0] = v30;
      *v22 = 136446210;
      sub_1D51AA4E4();
      v33 = sub_1D4E6835C(v31, v32, v119);

      *(v22 + 4) = v33;
      _os_log_impl(&dword_1D4E3F000, v27, v28, "%{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_46_6();
    }

    v34 = v7[3];
    v35 = v7[4];
    v36 = OUTLINED_FUNCTION_134_0();
    __swift_project_boxed_opaque_existential_1(v36, v37);
    OUTLINED_FUNCTION_82();
    sub_1D5612F18();
    v38 = *(v113 + 88);
    v39 = v38(v2, v112);
    v40 = v39;
    v41 = *MEMORY[0x1E6974E38];
    v42 = MEMORY[0x1E6974E48];
    if (v39 == *MEMORY[0x1E6974E38])
    {
      v43 = v115;
      if (sub_1D51AA67C(v7, v114 & 0xFF010101))
      {
        LOBYTE(v44) = 2;
LABEL_65:
        v120 = v44;
        OUTLINED_FUNCTION_129_3();
        goto LABEL_80;
      }

      v45 = OUTLINED_FUNCTION_120_5();
      if (sub_1D51AA6C4(v45, v46))
      {
LABEL_14:
        LOBYTE(v44) = 3;
        goto LABEL_65;
      }

      if (v43)
      {
        v52 = [v43 capabilities] & 1;
      }

      else
      {
        LOBYTE(v52) = 0;
      }

      v69 = v7[3];
      v70 = v7[4];
      v71 = OUTLINED_FUNCTION_134_0();
      __swift_project_boxed_opaque_existential_1(v71, v72);
      OUTLINED_FUNCTION_45_0();
      sub_1D5612F18();
      v73 = v112;
      if (v38(v19, v112) == v40)
      {
        OUTLINED_FUNCTION_2_100();
        if (sub_1D5612FC8())
        {
          v19 = v114;
          if (!((v114 >> 16) & 1 | v52 & 1))
          {
            goto LABEL_64;
          }

          goto LABEL_52;
        }

        v19 = v114;
        v110 = (v114 >> 16) & 1;
        OUTLINED_FUNCTION_2_100();
        if (!(v110 & 1 | ((sub_1D5612F78() & 1) == 0) | v52 & 1))
        {
LABEL_64:
          LOBYTE(v44) = 5;
          goto LABEL_65;
        }
      }

      else
      {
        (*(v113 + 8))(v19, v73);
        v19 = v114;
        if ((v114 & 0x10000) == 0)
        {
          goto LABEL_64;
        }
      }

LABEL_52:
      v74 = v115;
      if (sub_1D51AA76C(v7, v19 & 0x101))
      {
        goto LABEL_14;
      }

      if (v74)
      {
        v75 = ([v74 capabilities] & 1) == 0;
      }

      else
      {
        v75 = 1;
      }

      v78 = v7[3];
      v79 = v7[4];
      v80 = OUTLINED_FUNCTION_134_0();
      __swift_project_boxed_opaque_existential_1(v80, v81);
      v19 = v109;
      OUTLINED_FUNCTION_45_0();
      sub_1D5612F18();
      v82 = v38(v19, v112);
      if (v82 == v40)
      {
        OUTLINED_FUNCTION_2_100();
        sub_1D5612F58();
        OUTLINED_FUNCTION_129_3();
        if ((v83 & 1) != 0 || (OUTLINED_FUNCTION_2_100(), (sub_1D5612F98() & v75 & 1) == 0))
        {
LABEL_76:
          sub_1D51AA978(v7, v119);
          v44 = LOBYTE(v119[0]);
          if (LOBYTE(v119[0]) == 11)
          {
            v84 = OUTLINED_FUNCTION_81_15();
            sub_1D51AAA94(v84, v85);
            v44 = LOBYTE(v119[0]);
          }

          goto LABEL_78;
        }

        goto LABEL_73;
      }

      v19 = v108;
      if (v82 == *v42)
      {
        if (!v75)
        {
          goto LABEL_76;
        }

        goto LABEL_73;
      }

      if (v82 == *MEMORY[0x1E6974E40])
      {
        goto LABEL_76;
      }

      while (1)
      {
LABEL_85:
        OUTLINED_FUNCTION_149_2();
        OUTLINED_FUNCTION_75_12();
        v100 = v7[3];
        v101 = v7[4];
        v102 = OUTLINED_FUNCTION_134_0();
        __swift_project_boxed_opaque_existential_1(v102, v103);
        OUTLINED_FUNCTION_45_0();
        sub_1D5612F18();
        OUTLINED_FUNCTION_124_5();
        v104 = OUTLINED_FUNCTION_73_10();
        v105(v104);
        OUTLINED_FUNCTION_133_3();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
        OUTLINED_FUNCTION_137_5();
        MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
        OUTLINED_FUNCTION_148_6();
        __break(1u);
      }
    }

    if (v39 != *MEMORY[0x1E6974E48])
    {
      if (v39 != *MEMORY[0x1E6974E40])
      {
        goto LABEL_85;
      }

      OUTLINED_FUNCTION_81_15();
      sub_1D51AAB58(v47);
      v44 = LOBYTE(v119[0]);
      v19 = v108;
      if (LOBYTE(v119[0]) != 11)
      {
LABEL_78:
        v120 = v44;
LABEL_79:
        if (v44 != 10)
        {
LABEL_80:
          sub_1D4E628D4(v7, v119);
          sub_1D4E628D4(v7, v118);
          v86 = v107;
          v87 = sub_1D560C738();
          v88 = sub_1D56156E8();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v117 = swift_slowAlloc();
            *v89 = 136446722;
            v116[0] = v44;
            v90 = sub_1D5614DB8();
            sub_1D4E6835C(v90, v91, &v117);
            OUTLINED_FUNCTION_82();

            *(v89 + 4) = v86;
            *(v89 + 12) = 2082;
            sub_1D4E628D4(v119, v116);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
            sub_1D5614DB8();
            __swift_destroy_boxed_opaque_existential_1(v119);
            v92 = OUTLINED_FUNCTION_71();
            v95 = sub_1D4E6835C(v92, v93, v94);

            *(v89 + 14) = v95;
            *(v89 + 22) = 2082;
            __swift_project_boxed_opaque_existential_1(v118, v118[3]);
            OUTLINED_FUNCTION_82();
            sub_1D5612F18();
            sub_1D5614DB8();
            __swift_destroy_boxed_opaque_existential_1(v118);
            v96 = OUTLINED_FUNCTION_71();
            v99 = sub_1D4E6835C(v96, v97, v98);

            *(v89 + 24) = v99;
            _os_log_impl(&dword_1D4E3F000, v87, v88, "Playability status is %{public}s for item: %{public}s for playableItemKind %{public}s.", v89, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_122();
            OUTLINED_FUNCTION_122();
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(v119);
            __swift_destroy_boxed_opaque_existential_1(v118);
          }
        }

LABEL_83:
        OUTLINED_FUNCTION_59();
        *v19 = v120;
        goto LABEL_84;
      }

      v48 = OUTLINED_FUNCTION_81_4();
      if (sub_1D51AA67C(v48, v49))
      {
        goto LABEL_58;
      }

      v50 = OUTLINED_FUNCTION_81_4();
      goto LABEL_60;
    }

    if (v115)
    {
      v19 = [v115 capabilities] & 1;
    }

    else
    {
      v19 = 0;
    }

    v53 = v7[3];
    v54 = v7[4];
    v55 = OUTLINED_FUNCTION_134_0();
    __swift_project_boxed_opaque_existential_1(v55, v56);
    OUTLINED_FUNCTION_82();
    sub_1D5612F18();
    if (v38(v1, v112) == v41)
    {
      OUTLINED_FUNCTION_2_100();
      if (sub_1D5612FC8())
      {
        if ((v114 >> 16) & 1 | v19 & 1)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v60 = (v114 >> 16) & 1;
        OUTLINED_FUNCTION_2_100();
        if (v60 & 1 | ((sub_1D5612F78() & 1) == 0) | v19 & 1)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      v57 = *(v113 + 8);
      v58 = OUTLINED_FUNCTION_98();
      v59(v58);
      if ((v114 & 0x10000) != 0)
      {
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_2_100();
    if ((sub_1D5612FB8() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_100();
      if (sub_1D5612F48())
      {
        v120 = 10;
        OUTLINED_FUNCTION_129_3();
        goto LABEL_83;
      }

      goto LABEL_64;
    }

LABEL_30:
    OUTLINED_FUNCTION_2_100();
    if ((sub_1D5612FB8() & 1) == 0)
    {
      OUTLINED_FUNCTION_81_15();
      sub_1D51AAB58(v61);
      v44 = LOBYTE(v119[0]);
      if (LOBYTE(v119[0]) != 11)
      {
        v120 = v119[0];
        OUTLINED_FUNCTION_129_3();
        goto LABEL_79;
      }
    }

    if (v115)
    {
      v62 = ([v115 capabilities] & 1) == 0;
    }

    else
    {
      v62 = 1;
    }

    v63 = v7[3];
    v64 = v7[4];
    v65 = OUTLINED_FUNCTION_134_0();
    __swift_project_boxed_opaque_existential_1(v65, v66);
    v19 = v110;
    OUTLINED_FUNCTION_45_0();
    sub_1D5612F18();
    v67 = v38(v19, v112);
    if (v67 == v41)
    {
      OUTLINED_FUNCTION_2_100();
      sub_1D5612F58();
      OUTLINED_FUNCTION_129_3();
      if (v68)
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_2_100();
      if ((sub_1D5612F98() & v62 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v19 = v108;
      if (v67 != v40)
      {
        if (v67 != *MEMORY[0x1E6974E40])
        {
          goto LABEL_85;
        }

        goto LABEL_57;
      }

      if (!v62)
      {
LABEL_57:
        v76 = OUTLINED_FUNCTION_120_5();
        if (sub_1D51AA67C(v76, v77))
        {
LABEL_58:
          LOBYTE(v44) = 2;
          goto LABEL_74;
        }

        v50 = OUTLINED_FUNCTION_120_5();
LABEL_60:
        if ((sub_1D51AA6C4(v50, v51) & 1) == 0)
        {
          v120 = 10;
          goto LABEL_83;
        }

        LOBYTE(v44) = 3;
LABEL_74:
        v120 = v44;
        goto LABEL_80;
      }
    }

    OUTLINED_FUNCTION_2_100();
    if ((sub_1D5612FB8() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_100();
      if ((sub_1D5612F48() & 1) == 0)
      {
LABEL_73:
        LOBYTE(v44) = 7;
        goto LABEL_74;
      }
    }

    goto LABEL_57;
  }

  *v9 = 9;
LABEL_84:
  OUTLINED_FUNCTION_46();
}

void *sub_1D5199F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v161 = a3;
  v162 = a2;
  v163 = a1;
  v160 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v154 = &v141 - v7;
  v157 = sub_1D560DB08();
  v159 = *(v157 - 8);
  v8 = v159[8];
  v9 = MEMORY[0x1EEE9AC00](v157);
  v143 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v147 = &v141 - v11;
  v146 = sub_1D560D838();
  v145 = *(v146 - 8);
  v12 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v144 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_1D560E728();
  v150 = *(v156 - 8);
  v14 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v158 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UploadedVideo();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v142 = &v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v153 = &v141 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v148 = &v141 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v155 = &v141 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v152 = &v141 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v151 = &v141 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v141 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v141 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1420, &qword_1D56400B0);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v141 - v40;
  v42 = qword_1EDD5D728;
  LOBYTE(v166[0]) = 4;
  sub_1D560C8B8();
  v43 = v4 + v42;
  v44 = v16;
  (*(v38 + 32))(v43, v41, v37);
  v45 = qword_1EDD5D738;
  LOBYTE(v166[0]) = 0;
  sub_1D560C8B8();
  (*(v33 + 32))(v4 + v45, v36, v32);
  *(v4 + *(*v4 + 144)) = 0;
  *(v4 + *(*v4 + 152)) = 0;
  sub_1D51A1FBC(v163, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1480, &qword_1D5640260);
  v46 = swift_dynamicCast();
  v47 = &qword_1EDD54000;
  v149 = v16;
  if (v46)
  {
    __swift_destroy_boxed_opaque_existential_1(v166);
    sub_1D51AE1F4(&qword_1EDD57488, type metadata accessor for UploadedVideo);
    v48 = v144;
    sub_1D560EC98();
    sub_1D560D588();
    (*(v145 + 8))(v48, v146);
    v49 = v159[13];
    v50 = v147;
    v49(v147, *MEMORY[0x1E6975040], v157);
    sub_1D51AE1F4(&qword_1EDD5D748, MEMORY[0x1E6975358]);
    v51 = sub_1D5614FC8();
    if (v51 == 2)
    {
      MEMORY[0x1EEE9AC00](v51);
      *(&v141 - 2) = v50;
      v52 = v50;
      sub_1D4F257A8();
      v54 = v53;
      v55 = v149;
    }

    else
    {
      v54 = v51;
      v55 = v44;
      v52 = v50;
    }

    v56 = v159[1];
    v57 = v157;
    ++v159;
    v56(v52, v157);
    v44 = v55;
    if (v54)
    {
      goto LABEL_9;
    }

    v58 = v143;
    v49(v143, *MEMORY[0x1E6975030], v57);
    v59 = sub_1D5614FC8();
    if (v59 == 2)
    {
      MEMORY[0x1EEE9AC00](v59);
      *(&v141 - 2) = v58;
      sub_1D4F257A8();
    }

    v60 = v59;
    v56(v58, v157);
    if (v60)
    {
LABEL_9:
      (*(v150 + 8))(v158, v156);
      v47 = &qword_1EDD54000;
    }

    else
    {
      v47 = &qword_1EDD54000;
      if (qword_1EDD544A0 != -1)
      {
        swift_once();
      }

      v61 = sub_1D560C758();
      __swift_project_value_buffer(v61, qword_1EDD76AD8);
      v62 = v142;
      sub_1D51A1FBC(v163, v142);
      v63 = sub_1D560C738();
      v64 = sub_1D56156C8();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v166[0] = v66;
        *v65 = 136446210;
        sub_1D51A1FBC(v62, v155);
        v67 = sub_1D5614DB8();
        v69 = v68;
        sub_1D51A34D0(v62, type metadata accessor for UploadedVideo);
        v70 = sub_1D4E6835C(v67, v69, v166);

        *(v65 + 4) = v70;
        v47 = &qword_1EDD54000;
        _os_log_impl(&dword_1D4E3F000, v63, v64, "The correct playability status cannot be guaranteed as the input item %{public}s has not been mapped.", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v66);
        v71 = v66;
        v44 = v149;
        MEMORY[0x1DA6ED200](v71, -1, -1);
        MEMORY[0x1DA6ED200](v65, -1, -1);
      }

      else
      {

        sub_1D51A34D0(v62, type metadata accessor for UploadedVideo);
      }

      (*(v150 + 8))(v158, v156);
    }
  }

  v166[3] = v44;
  v166[4] = sub_1D51AE1F4(&qword_1EC7EB6E8, type metadata accessor for UploadedVideo);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v166);
  v73 = v163;
  sub_1D51A1FBC(v163, boxed_opaque_existential_0);
  sub_1D51A1FBC(v73, v4 + *(*v4 + 120));
  sub_1D4EC76A8(v162, v4 + *(*v4 + 128));
  *(v4 + *(*v4 + 136)) = InternalMusicPlayer.queue(for:)(&unk_1F50A3B50);
  if (qword_1EDD55F58 != -1)
  {
    swift_once();
  }

  v74 = qword_1EDD55F60;
  swift_getKeyPath();
  swift_getKeyPath();
  v158 = v74;
  sub_1D560C8F8();

  v157 = LOBYTE(v165[0]);
  LODWORD(v150) = BYTE1(v165[0]);
  LODWORD(v156) = BYTE2(v165[0]);
  v75 = BYTE3(v165[0]);
  v76 = BYTE4(v165[0]);
  v159 = v165[1];
  if (v47[148] != -1)
  {
    swift_once();
  }

  v77 = sub_1D560C758();
  v78 = __swift_project_value_buffer(v77, qword_1EDD76AD8);
  v79 = v163;
  v80 = v151;
  sub_1D51A1FBC(v163, v151);
  v81 = v79;
  v82 = v152;
  sub_1D51A1FBC(v81, v152);
  sub_1D4E628D4(v166, v165);
  v83 = sub_1D560C738();
  v84 = sub_1D56156E8();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v146 = v75;
    v86 = v80;
    v87 = v85;
    v144 = swift_slowAlloc();
    v164 = v144;
    *v87 = 136446722;
    v88 = sub_1D5616458();
    v147 = v78;
    v90 = v89;
    v145 = v76;
    sub_1D51A34D0(v86, type metadata accessor for UploadedVideo);
    v91 = sub_1D4E6835C(v88, v90, &v164);

    *(v87 + 4) = v91;
    *(v87 + 12) = 2082;
    sub_1D51A1FBC(v82, v155);
    v92 = sub_1D5614DB8();
    v94 = v93;
    sub_1D51A34D0(v82, type metadata accessor for UploadedVideo);
    v95 = sub_1D4E6835C(v92, v94, &v164);

    *(v87 + 14) = v95;
    *(v87 + 22) = 2082;
    v75 = v146;
    __swift_project_boxed_opaque_existential_1(v165, v165[3]);
    v76 = v145;
    sub_1D51AD5D8();
    v97 = v96;
    v99 = v98;
    __swift_destroy_boxed_opaque_existential_1(v165);
    v100 = sub_1D4E6835C(v97, v99, &v164);

    *(v87 + 24) = v100;
    _os_log_impl(&dword_1D4E3F000, v83, v84, "Initial playability information for %{public}s with ID %{public}s: %{public}s", v87, 0x20u);
    v101 = v144;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v101, -1, -1);
    MEMORY[0x1DA6ED200](v87, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v165);
    sub_1D51A34D0(v82, type metadata accessor for UploadedVideo);
    sub_1D51A34D0(v80, type metadata accessor for UploadedVideo);
  }

  v102 = v153;
  v103 = 256;
  if (!v150)
  {
    v103 = 0;
  }

  v104 = v103 | v157;
  v105 = 0x10000;
  if (!v156)
  {
    v105 = 0;
  }

  v106 = v104 | v105 | (v75 << 24) | (v76 << 32);
  sub_1D51994A8();
  v107 = v165[0];
  if (LOBYTE(v165[0]) != 10)
  {
    v102 = v148;
    sub_1D51A1FBC(v163, v148);
    v108 = sub_1D560C738();
    v118 = sub_1D56156E8();
    if (os_log_type_enabled(v108, v118))
    {
      v119 = swift_slowAlloc();
      v157 = v106;
      v111 = v119;
      v112 = swift_slowAlloc();
      v165[0] = v112;
      *v111 = 136446466;
      sub_1D51A1FBC(v102, v155);
      v120 = sub_1D5614DB8();
      v121 = v107;
      v123 = v122;
      sub_1D51A34D0(v102, type metadata accessor for UploadedVideo);
      v124 = sub_1D4E6835C(v120, v123, v165);
      v107 = v121;

      *(v111 + 4) = v124;
      *(v111 + 12) = 2082;
      LOBYTE(v164) = v121;
      v125 = sub_1D5614DB8();
      v127 = sub_1D4E6835C(v125, v126, v165);

      *(v111 + 14) = v127;
      _os_log_impl(&dword_1D4E3F000, v108, v118, "Initial item state for item, %{public}s, returned unplayable with reason %{public}s", v111, 0x16u);
      swift_arrayDestroy();
      goto LABEL_32;
    }

LABEL_33:

    sub_1D51A34D0(v102, type metadata accessor for UploadedVideo);
    goto LABEL_34;
  }

  sub_1D51A1FBC(v163, v102);
  v108 = sub_1D560C738();
  v109 = sub_1D56156E8();
  if (!os_log_type_enabled(v108, v109))
  {
    goto LABEL_33;
  }

  v110 = swift_slowAlloc();
  v157 = v106;
  v111 = v110;
  v112 = swift_slowAlloc();
  v165[0] = v112;
  *v111 = 136446210;
  sub_1D51A1FBC(v102, v155);
  v113 = sub_1D5614DB8();
  v114 = v107;
  v116 = v115;
  sub_1D51A34D0(v102, type metadata accessor for UploadedVideo);
  v117 = sub_1D4E6835C(v113, v116, v165);
  v107 = v114;

  *(v111 + 4) = v117;
  _os_log_impl(&dword_1D4E3F000, v108, v109, "Initial item state for item, %{public}s, returned playable.", v111, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v112);
LABEL_32:
  MEMORY[0x1DA6ED200](v112, -1, -1);
  MEMORY[0x1DA6ED200](v111, -1, -1);

LABEL_34:
  swift_beginAccess();
  LOBYTE(v164) = v107;
  sub_1D560C8B8();
  swift_endAccess();
  v128 = v159;
  sub_1D51A4F48();
  sub_1D51A5414();
  v129 = *(v4 + *(*v4 + 136));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  sub_1D51ADFE8(&qword_1EDD5D2E0, &unk_1EC7F2AD0, &unk_1D5640100);
  v165[0] = sub_1D560C938();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1290, &qword_1D563F8C0);
  sub_1D51ADFE8(&unk_1EDD5D890, &qword_1EC7F1290, &qword_1D563F8C0);
  v130 = sub_1D560C948();

  v131 = *(*v4 + 152);
  v132 = *(v4 + v131);
  *(v4 + v131) = v130;

  type metadata accessor for UserStateViewModel();
  sub_1D51AE1F4(&qword_1EDD55F50, type metadata accessor for UserStateViewModel);
  v165[0] = sub_1D560C838();
  swift_allocObject();
  swift_weakInit();
  sub_1D560C898();
  v133 = sub_1D560C948();

  v134 = *(*v4 + 144);
  v135 = *(v4 + v134);
  *(v4 + v134) = v133;

  v136 = sub_1D5615458();
  v137 = v154;
  __swift_storeEnumTagSinglePayload(v154, 1, 1, v136);
  v138 = swift_allocObject();
  swift_weakInit();

  v139 = swift_allocObject();
  v139[2] = 0;
  v139[3] = 0;
  v139[4] = v138;
  sub_1D51ECB60(0, 0, v137, &unk_1D56402A8, v139);

  sub_1D4E50004(v162, &qword_1EC7EEC40, &unk_1D561C070);
  sub_1D51A34D0(v163, type metadata accessor for UploadedVideo);
  __swift_destroy_boxed_opaque_existential_1(v166);
  return v4;
}

void *sub_1D519B478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v161 = a3;
  v162 = a2;
  v163 = a1;
  v160 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v154 = &v141 - v7;
  v157 = sub_1D560DB08();
  v159 = *(v157 - 8);
  v8 = v159[8];
  v9 = MEMORY[0x1EEE9AC00](v157);
  v143 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v147 = &v141 - v11;
  v146 = sub_1D560D838();
  v145 = *(v146 - 8);
  v12 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v144 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_1D560E728();
  v150 = *(v156 - 8);
  v14 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v158 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UploadedAudio();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v142 = &v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v153 = &v141 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v148 = &v141 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v155 = &v141 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v152 = &v141 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v151 = &v141 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v141 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v141 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1420, &qword_1D56400B0);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v141 - v40;
  v42 = qword_1EDD5D728;
  LOBYTE(v166[0]) = 4;
  sub_1D560C8B8();
  v43 = v4 + v42;
  v44 = v16;
  (*(v38 + 32))(v43, v41, v37);
  v45 = qword_1EDD5D738;
  LOBYTE(v166[0]) = 0;
  sub_1D560C8B8();
  (*(v33 + 32))(v4 + v45, v36, v32);
  *(v4 + *(*v4 + 144)) = 0;
  *(v4 + *(*v4 + 152)) = 0;
  sub_1D51A1FBC(v163, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1480, &qword_1D5640260);
  v46 = swift_dynamicCast();
  v47 = &qword_1EDD54000;
  v149 = v16;
  if (v46)
  {
    __swift_destroy_boxed_opaque_existential_1(v166);
    sub_1D51AE1F4(&qword_1EDD57500, type metadata accessor for UploadedAudio);
    v48 = v144;
    sub_1D560EC98();
    sub_1D560D588();
    (*(v145 + 8))(v48, v146);
    v49 = v159[13];
    v50 = v147;
    v49(v147, *MEMORY[0x1E6975040], v157);
    sub_1D51AE1F4(&qword_1EDD5D748, MEMORY[0x1E6975358]);
    v51 = sub_1D5614FC8();
    if (v51 == 2)
    {
      MEMORY[0x1EEE9AC00](v51);
      *(&v141 - 2) = v50;
      v52 = v50;
      sub_1D4F257A8();
      v54 = v53;
      v55 = v149;
    }

    else
    {
      v54 = v51;
      v55 = v44;
      v52 = v50;
    }

    v56 = v159[1];
    v57 = v157;
    ++v159;
    v56(v52, v157);
    v44 = v55;
    if (v54)
    {
      goto LABEL_9;
    }

    v58 = v143;
    v49(v143, *MEMORY[0x1E6975030], v57);
    v59 = sub_1D5614FC8();
    if (v59 == 2)
    {
      MEMORY[0x1EEE9AC00](v59);
      *(&v141 - 2) = v58;
      sub_1D4F257A8();
    }

    v60 = v59;
    v56(v58, v157);
    if (v60)
    {
LABEL_9:
      (*(v150 + 8))(v158, v156);
      v47 = &qword_1EDD54000;
    }

    else
    {
      v47 = &qword_1EDD54000;
      if (qword_1EDD544A0 != -1)
      {
        swift_once();
      }

      v61 = sub_1D560C758();
      __swift_project_value_buffer(v61, qword_1EDD76AD8);
      v62 = v142;
      sub_1D51A1FBC(v163, v142);
      v63 = sub_1D560C738();
      v64 = sub_1D56156C8();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v166[0] = v66;
        *v65 = 136446210;
        sub_1D51A1FBC(v62, v155);
        v67 = sub_1D5614DB8();
        v69 = v68;
        sub_1D51A34D0(v62, type metadata accessor for UploadedAudio);
        v70 = sub_1D4E6835C(v67, v69, v166);

        *(v65 + 4) = v70;
        v47 = &qword_1EDD54000;
        _os_log_impl(&dword_1D4E3F000, v63, v64, "The correct playability status cannot be guaranteed as the input item %{public}s has not been mapped.", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v66);
        v71 = v66;
        v44 = v149;
        MEMORY[0x1DA6ED200](v71, -1, -1);
        MEMORY[0x1DA6ED200](v65, -1, -1);
      }

      else
      {

        sub_1D51A34D0(v62, type metadata accessor for UploadedAudio);
      }

      (*(v150 + 8))(v158, v156);
    }
  }

  v166[3] = v44;
  v166[4] = sub_1D51AE1F4(&qword_1EC7EB6F0, type metadata accessor for UploadedAudio);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v166);
  v73 = v163;
  sub_1D51A1FBC(v163, boxed_opaque_existential_0);
  sub_1D51A1FBC(v73, v4 + *(*v4 + 120));
  sub_1D4EC76A8(v162, v4 + *(*v4 + 128));
  *(v4 + *(*v4 + 136)) = InternalMusicPlayer.queue(for:)(&unk_1F50A3B28);
  if (qword_1EDD55F58 != -1)
  {
    swift_once();
  }

  v74 = qword_1EDD55F60;
  swift_getKeyPath();
  swift_getKeyPath();
  v158 = v74;
  sub_1D560C8F8();

  v157 = LOBYTE(v165[0]);
  LODWORD(v150) = BYTE1(v165[0]);
  LODWORD(v156) = BYTE2(v165[0]);
  v75 = BYTE3(v165[0]);
  v76 = BYTE4(v165[0]);
  v159 = v165[1];
  if (v47[148] != -1)
  {
    swift_once();
  }

  v77 = sub_1D560C758();
  v78 = __swift_project_value_buffer(v77, qword_1EDD76AD8);
  v79 = v163;
  v80 = v151;
  sub_1D51A1FBC(v163, v151);
  v81 = v79;
  v82 = v152;
  sub_1D51A1FBC(v81, v152);
  sub_1D4E628D4(v166, v165);
  v83 = sub_1D560C738();
  v84 = sub_1D56156E8();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v146 = v75;
    v86 = v80;
    v87 = v85;
    v144 = swift_slowAlloc();
    v164 = v144;
    *v87 = 136446722;
    v88 = sub_1D5616458();
    v147 = v78;
    v90 = v89;
    v145 = v76;
    sub_1D51A34D0(v86, type metadata accessor for UploadedAudio);
    v91 = sub_1D4E6835C(v88, v90, &v164);

    *(v87 + 4) = v91;
    *(v87 + 12) = 2082;
    sub_1D51A1FBC(v82, v155);
    v92 = sub_1D5614DB8();
    v94 = v93;
    sub_1D51A34D0(v82, type metadata accessor for UploadedAudio);
    v95 = sub_1D4E6835C(v92, v94, &v164);

    *(v87 + 14) = v95;
    *(v87 + 22) = 2082;
    v75 = v146;
    __swift_project_boxed_opaque_existential_1(v165, v165[3]);
    v76 = v145;
    sub_1D51AD5D8();
    v97 = v96;
    v99 = v98;
    __swift_destroy_boxed_opaque_existential_1(v165);
    v100 = sub_1D4E6835C(v97, v99, &v164);

    *(v87 + 24) = v100;
    _os_log_impl(&dword_1D4E3F000, v83, v84, "Initial playability information for %{public}s with ID %{public}s: %{public}s", v87, 0x20u);
    v101 = v144;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v101, -1, -1);
    MEMORY[0x1DA6ED200](v87, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v165);
    sub_1D51A34D0(v82, type metadata accessor for UploadedAudio);
    sub_1D51A34D0(v80, type metadata accessor for UploadedAudio);
  }

  v102 = v153;
  v103 = 256;
  if (!v150)
  {
    v103 = 0;
  }

  v104 = v103 | v157;
  v105 = 0x10000;
  if (!v156)
  {
    v105 = 0;
  }

  v106 = v104 | v105 | (v75 << 24) | (v76 << 32);
  sub_1D51994A8();
  v107 = v165[0];
  if (LOBYTE(v165[0]) != 10)
  {
    v102 = v148;
    sub_1D51A1FBC(v163, v148);
    v108 = sub_1D560C738();
    v118 = sub_1D56156E8();
    if (os_log_type_enabled(v108, v118))
    {
      v119 = swift_slowAlloc();
      v157 = v106;
      v111 = v119;
      v112 = swift_slowAlloc();
      v165[0] = v112;
      *v111 = 136446466;
      sub_1D51A1FBC(v102, v155);
      v120 = sub_1D5614DB8();
      v121 = v107;
      v123 = v122;
      sub_1D51A34D0(v102, type metadata accessor for UploadedAudio);
      v124 = sub_1D4E6835C(v120, v123, v165);
      v107 = v121;

      *(v111 + 4) = v124;
      *(v111 + 12) = 2082;
      LOBYTE(v164) = v121;
      v125 = sub_1D5614DB8();
      v127 = sub_1D4E6835C(v125, v126, v165);

      *(v111 + 14) = v127;
      _os_log_impl(&dword_1D4E3F000, v108, v118, "Initial item state for item, %{public}s, returned unplayable with reason %{public}s", v111, 0x16u);
      swift_arrayDestroy();
      goto LABEL_32;
    }

LABEL_33:

    sub_1D51A34D0(v102, type metadata accessor for UploadedAudio);
    goto LABEL_34;
  }

  sub_1D51A1FBC(v163, v102);
  v108 = sub_1D560C738();
  v109 = sub_1D56156E8();
  if (!os_log_type_enabled(v108, v109))
  {
    goto LABEL_33;
  }

  v110 = swift_slowAlloc();
  v157 = v106;
  v111 = v110;
  v112 = swift_slowAlloc();
  v165[0] = v112;
  *v111 = 136446210;
  sub_1D51A1FBC(v102, v155);
  v113 = sub_1D5614DB8();
  v114 = v107;
  v116 = v115;
  sub_1D51A34D0(v102, type metadata accessor for UploadedAudio);
  v117 = sub_1D4E6835C(v113, v116, v165);
  v107 = v114;

  *(v111 + 4) = v117;
  _os_log_impl(&dword_1D4E3F000, v108, v109, "Initial item state for item, %{public}s, returned playable.", v111, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v112);
LABEL_32:
  MEMORY[0x1DA6ED200](v112, -1, -1);
  MEMORY[0x1DA6ED200](v111, -1, -1);

LABEL_34:
  swift_beginAccess();
  LOBYTE(v164) = v107;
  sub_1D560C8B8();
  swift_endAccess();
  v128 = v159;
  sub_1D51A4F48();
  sub_1D51A54E4();
  v129 = *(v4 + *(*v4 + 136));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  sub_1D51ADFE8(&qword_1EDD5D2E0, &unk_1EC7F2AD0, &unk_1D5640100);
  v165[0] = sub_1D560C938();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1290, &qword_1D563F8C0);
  sub_1D51ADFE8(&unk_1EDD5D890, &qword_1EC7F1290, &qword_1D563F8C0);
  v130 = sub_1D560C948();

  v131 = *(*v4 + 152);
  v132 = *(v4 + v131);
  *(v4 + v131) = v130;

  type metadata accessor for UserStateViewModel();
  sub_1D51AE1F4(&qword_1EDD55F50, type metadata accessor for UserStateViewModel);
  v165[0] = sub_1D560C838();
  swift_allocObject();
  swift_weakInit();
  sub_1D560C898();
  v133 = sub_1D560C948();

  v134 = *(*v4 + 144);
  v135 = *(v4 + v134);
  *(v4 + v134) = v133;

  v136 = sub_1D5615458();
  v137 = v154;
  __swift_storeEnumTagSinglePayload(v154, 1, 1, v136);
  v138 = swift_allocObject();
  swift_weakInit();

  v139 = swift_allocObject();
  v139[2] = 0;
  v139[3] = 0;
  v139[4] = v138;
  sub_1D51ECB60(0, 0, v137, &unk_1D5640270, v139);

  sub_1D4E50004(v162, &qword_1EC7EEC40, &unk_1D561C070);
  sub_1D51A34D0(v163, type metadata accessor for UploadedAudio);
  __swift_destroy_boxed_opaque_existential_1(v166);
  return v4;
}

void *sub_1D519C9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v149 = a3;
  v150 = a2;
  v151 = a1;
  v145 = 0;
  v148 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v142 = &v132 - v7;
  v152 = type metadata accessor for TVEpisode();
  v8 = *(*(v152 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v152);
  v132 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v141 = &v132 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v133 = &v132 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v144 = &v132 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v140 = &v132 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v139 = &v132 - v19;
  v146 = sub_1D560DB08();
  v137 = *(v146 - 8);
  v20 = *(v137 + 64);
  v21 = MEMORY[0x1EEE9AC00](v146);
  v134 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v136 = &v132 - v23;
  v147 = sub_1D560D838();
  v135 = *(v147 - 8);
  v24 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v26 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D560E728();
  v138 = *(v27 - 8);
  v28 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v143 = &v132 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v132 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1420, &qword_1D56400B0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v132 - v38;
  v40 = qword_1EDD5D728;
  LOBYTE(v155[0]) = 4;
  sub_1D560C8B8();
  v41 = v4 + v40;
  v42 = v146;
  (*(v36 + 32))(v41, v39, v35);
  v43 = qword_1EDD5D738;
  LOBYTE(v155[0]) = 0;
  sub_1D560C8B8();
  v44 = v4 + v43;
  v45 = v143;
  (*(v31 + 32))(v44, v34, v30);
  *(v4 + *(*v4 + 144)) = 0;
  *(v4 + *(*v4 + 152)) = 0;
  sub_1D51AE1F4(&qword_1EDD54508, type metadata accessor for TVEpisode);
  sub_1D560EC98();
  sub_1D560D588();
  v46 = v26;
  v47 = v136;
  (*(v135 + 8))(v46, v147);
  v48 = v137;
  v49 = *(v137 + 104);
  v49(v47, *MEMORY[0x1E6975040], v42);
  sub_1D51AE1F4(&qword_1EDD5D748, MEMORY[0x1E6975358]);
  v147 = v27;
  v50 = sub_1D5614FC8();
  if (v50 == 2)
  {
    MEMORY[0x1EEE9AC00](v50);
    *(&v132 - 2) = v47;
    v51 = v4;
    v52 = v45;
    v53 = v145;
    sub_1D4F257A8();
    v55 = v54;
    v145 = v53;
    v45 = v52;
    v4 = v51;
    v42 = v146;
  }

  else
  {
    v55 = v50;
  }

  v56 = *(v48 + 8);
  v56(v47, v42);
  v57 = v151;
  if ((v55 & 1) == 0)
  {
    v58 = v134;
    v49(v134, *MEMORY[0x1E6975030], v42);
    v59 = v58;
    v60 = sub_1D5614FC8();
    if (v60 == 2)
    {
      MEMORY[0x1EEE9AC00](v60);
      *(&v132 - 2) = v58;
      sub_1D4F257A8();
      v59 = v134;
    }

    v61 = v60;
    v56(v59, v42);
    if ((v61 & 1) == 0)
    {
      if (qword_1EDD544A0 != -1)
      {
        swift_once();
      }

      v62 = sub_1D560C758();
      __swift_project_value_buffer(v62, qword_1EDD76AD8);
      v63 = v132;
      sub_1D51A1FBC(v57, v132);
      v64 = sub_1D560C738();
      v65 = sub_1D56156C8();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v155[0] = v67;
        *v66 = 136446210;
        sub_1D51A1FBC(v63, v144);
        v68 = sub_1D5614DB8();
        v70 = v69;
        sub_1D51A34D0(v63, type metadata accessor for TVEpisode);
        v71 = sub_1D4E6835C(v68, v70, v155);

        *(v66 + 4) = v71;
        _os_log_impl(&dword_1D4E3F000, v64, v65, "The correct playability status cannot be guaranteed as the input item %{public}s has not been mapped.", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v67);
        MEMORY[0x1DA6ED200](v67, -1, -1);
        MEMORY[0x1DA6ED200](v66, -1, -1);

        (*(v138 + 8))(v143, v147);
        goto LABEL_14;
      }

      sub_1D51A34D0(v63, type metadata accessor for TVEpisode);
    }
  }

  (*(v138 + 8))(v45, v147);
LABEL_14:
  v72 = v139;
  v155[3] = v152;
  v155[4] = sub_1D51AE1F4(&qword_1EC7EB6F8, type metadata accessor for TVEpisode);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v155);
  sub_1D51A1FBC(v57, boxed_opaque_existential_0);
  sub_1D51A1FBC(v57, v4 + *(*v4 + 120));
  sub_1D4EC76A8(v150, v4 + *(*v4 + 128));
  *(v4 + *(*v4 + 136)) = InternalMusicPlayer.queue(for:)(&unk_1F50A3B00);
  if (qword_1EDD55F58 != -1)
  {
    swift_once();
  }

  v74 = qword_1EDD55F60;
  swift_getKeyPath();
  swift_getKeyPath();
  v146 = v74;
  sub_1D560C8F8();

  v75 = LOBYTE(v154[0]);
  LODWORD(v143) = BYTE1(v154[0]);
  LODWORD(v145) = BYTE2(v154[0]);
  v147 = v154[1];
  if (qword_1EDD544A0 != -1)
  {
    swift_once();
  }

  v76 = sub_1D560C758();
  v77 = __swift_project_value_buffer(v76, qword_1EDD76AD8);
  sub_1D51A1FBC(v57, v72);
  v78 = v140;
  sub_1D51A1FBC(v57, v140);
  sub_1D4E628D4(v155, v154);
  v79 = sub_1D560C738();
  LODWORD(v139) = sub_1D56156E8();
  if (os_log_type_enabled(v79, v139))
  {
    v80 = swift_slowAlloc();
    v138 = v77;
    v81 = v80;
    v136 = swift_slowAlloc();
    v153 = v136;
    *v81 = 136446722;
    v137 = v75;
    v82 = sub_1D5616458();
    v83 = v72;
    v84 = v82;
    v86 = v85;
    sub_1D51A34D0(v83, type metadata accessor for TVEpisode);
    v87 = sub_1D4E6835C(v84, v86, &v153);

    *(v81 + 4) = v87;
    *(v81 + 12) = 2082;
    sub_1D51A1FBC(v78, v144);
    v88 = sub_1D5614DB8();
    v90 = v89;
    sub_1D51A34D0(v78, type metadata accessor for TVEpisode);
    v91 = sub_1D4E6835C(v88, v90, &v153);

    *(v81 + 14) = v91;
    *(v81 + 22) = 2082;
    __swift_project_boxed_opaque_existential_1(v154, v154[3]);
    sub_1D51AD5D8();
    v93 = v92;
    v95 = v94;
    __swift_destroy_boxed_opaque_existential_1(v154);
    v96 = sub_1D4E6835C(v93, v95, &v153);
    v57 = v151;

    *(v81 + 24) = v96;
    _os_log_impl(&dword_1D4E3F000, v79, v139, "Initial playability information for %{public}s with ID %{public}s: %{public}s", v81, 0x20u);
    v97 = v136;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v97, -1, -1);
    MEMORY[0x1DA6ED200](v81, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v154);
    sub_1D51A34D0(v78, type metadata accessor for TVEpisode);
    sub_1D51A34D0(v72, type metadata accessor for TVEpisode);
  }

  v98 = v141;
  sub_1D51994A8();
  v99 = v154[0];
  if (LOBYTE(v154[0]) != 10)
  {
    v98 = v133;
    sub_1D51A1FBC(v57, v133);
    v100 = sub_1D560C738();
    v110 = sub_1D56156E8();
    if (os_log_type_enabled(v100, v110))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v154[0] = v103;
      *v102 = 136446466;
      sub_1D51A1FBC(v98, v144);
      v111 = sub_1D5614DB8();
      v112 = v98;
      v114 = v113;
      sub_1D51A34D0(v112, type metadata accessor for TVEpisode);
      v115 = sub_1D4E6835C(v111, v114, v154);

      *(v102 + 4) = v115;
      *(v102 + 12) = 2082;
      LOBYTE(v153) = v99;
      v116 = sub_1D5614DB8();
      v118 = sub_1D4E6835C(v116, v117, v154);

      *(v102 + 14) = v118;
      v57 = v151;
      _os_log_impl(&dword_1D4E3F000, v100, v110, "Initial item state for item, %{public}s, returned unplayable with reason %{public}s", v102, 0x16u);
      swift_arrayDestroy();
      goto LABEL_26;
    }

LABEL_27:

    sub_1D51A34D0(v98, type metadata accessor for TVEpisode);
    goto LABEL_28;
  }

  sub_1D51A1FBC(v57, v98);
  v100 = sub_1D560C738();
  v101 = sub_1D56156E8();
  if (!os_log_type_enabled(v100, v101))
  {
    goto LABEL_27;
  }

  v102 = swift_slowAlloc();
  v103 = swift_slowAlloc();
  v154[0] = v103;
  *v102 = 136446210;
  sub_1D51A1FBC(v98, v144);
  v104 = sub_1D5614DB8();
  v105 = v98;
  v107 = v106;
  sub_1D51A34D0(v105, type metadata accessor for TVEpisode);
  v108 = v104;
  v57 = v151;
  v109 = sub_1D4E6835C(v108, v107, v154);

  *(v102 + 4) = v109;
  _os_log_impl(&dword_1D4E3F000, v100, v101, "Initial item state for item, %{public}s, returned playable.", v102, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v103);
LABEL_26:
  MEMORY[0x1DA6ED200](v103, -1, -1);
  MEMORY[0x1DA6ED200](v102, -1, -1);

LABEL_28:
  swift_beginAccess();
  LOBYTE(v153) = v99;
  sub_1D560C8B8();
  swift_endAccess();
  v119 = v147;
  sub_1D51A4F48();
  sub_1D51A55B4();
  v120 = *(v4 + *(*v4 + 136));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  sub_1D51ADFE8(&qword_1EDD5D2E0, &unk_1EC7F2AD0, &unk_1D5640100);
  v154[0] = sub_1D560C938();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1290, &qword_1D563F8C0);
  sub_1D51ADFE8(&unk_1EDD5D890, &qword_1EC7F1290, &qword_1D563F8C0);
  v121 = sub_1D560C948();

  v122 = *(*v4 + 152);
  v123 = *(v4 + v122);
  *(v4 + v122) = v121;

  type metadata accessor for UserStateViewModel();
  sub_1D51AE1F4(&qword_1EDD55F50, type metadata accessor for UserStateViewModel);
  v154[0] = sub_1D560C838();
  swift_allocObject();
  swift_weakInit();
  sub_1D560C898();
  v124 = sub_1D560C948();

  v125 = *(*v4 + 144);
  v126 = *(v4 + v125);
  *(v4 + v125) = v124;

  v127 = sub_1D5615458();
  v128 = v142;
  __swift_storeEnumTagSinglePayload(v142, 1, 1, v127);
  v129 = swift_allocObject();
  swift_weakInit();

  v130 = swift_allocObject();
  v130[2] = 0;
  v130[3] = 0;
  v130[4] = v129;
  sub_1D51ECB60(0, 0, v128, &unk_1D5640230, v130);

  sub_1D4E50004(v150, &qword_1EC7EEC40, &unk_1D561C070);
  sub_1D51A34D0(v57, type metadata accessor for TVEpisode);
  __swift_destroy_boxed_opaque_existential_1(v155);
  return v4;
}

NSObject *sub_1D519DE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v168 = a3;
  v169 = a2;
  v172 = a1;
  v159 = 0;
  isa = v3->isa;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v164 = &v151 - v6;
  v173 = sub_1D5613838();
  v171 = *(v173 - 8);
  v7 = *(v171 + 64);
  v8 = MEMORY[0x1EEE9AC00](v173);
  v151 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v163 = &v151 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v162 = &v151 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v165 = &v151 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v166 = &v151 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v160 = &v151 - v18;
  v156 = sub_1D560DB08();
  v157 = *(v156 - 8);
  v19 = *(v157 + 64);
  v20 = MEMORY[0x1EEE9AC00](v156);
  v152 = &v151 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v153 = &v151 - v22;
  v155 = sub_1D560D838();
  v154 = *(v155 - 8);
  v23 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v25 = &v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_1D560E728();
  v161 = *(v170 - 8);
  v26 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v28 = &v151 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v151 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1420, &qword_1D56400B0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v151 - v37;
  v39 = qword_1EDD5D728;
  LOBYTE(v176[0]) = 4;
  sub_1D560C8B8();
  (*(v35 + 32))(v3 + v39, v38, v34);
  v40 = qword_1EDD5D738;
  LOBYTE(v176[0]) = 0;
  sub_1D560C8B8();
  v41 = v153;
  (*(v30 + 32))(v3 + v40, v33, v29);
  *(&v3->isa + *(v3->isa + 18)) = 0;
  v42 = *(v3->isa + 19);
  v158 = v3;
  *(&v3->isa + v42) = 0;
  sub_1D560EC98();
  sub_1D560D588();
  v43 = v25;
  v44 = v156;
  v45 = v28;
  (*(v154 + 8))(v43, v155);
  v46 = v157;
  v47 = *(v157 + 104);
  v47(v41, *MEMORY[0x1E6975040], v44);
  sub_1D51AE1F4(&qword_1EDD5D748, MEMORY[0x1E6975358]);
  v48 = sub_1D5614FC8();
  if (v48 == 2)
  {
    MEMORY[0x1EEE9AC00](v48);
    *(&v151 - 2) = v41;
    sub_1D4F257A8();
  }

  v49 = v48;
  v50 = *(v46 + 8);
  v50(v41, v44);
  if (v49)
  {
    goto LABEL_7;
  }

  v51 = v152;
  v47(v152, *MEMORY[0x1E6975030], v44);
  v52 = v51;
  v53 = sub_1D5614FC8();
  if (v53 == 2)
  {
    MEMORY[0x1EEE9AC00](v53);
    *(&v151 - 2) = v51;
    sub_1D4F257A8();
  }

  v54 = v53;
  v50(v52, v44);
  if (v54)
  {
LABEL_7:
    (*(v161 + 8))(v45, v170);
    v55 = v173;
    v56 = v171;
    v57 = v158;
  }

  else
  {
    v159 = v45;
    if (qword_1EDD544A0 != -1)
    {
      swift_once();
    }

    v58 = sub_1D560C758();
    __swift_project_value_buffer(v58, qword_1EDD76AD8);
    v59 = v171;
    v60 = *(v171 + 16);
    v61 = v151;
    v55 = v173;
    v60(v151, v172, v173);
    v62 = sub_1D560C738();
    v63 = sub_1D56156C8();
    v64 = os_log_type_enabled(v62, v63);
    v57 = v158;
    if (v64)
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v176[0] = v66;
      *v65 = 136446210;
      v60(v165, v61, v173);
      v67 = sub_1D5614DB8();
      v69 = v68;
      (*(v59 + 8))(v61, v173);
      v70 = sub_1D4E6835C(v67, v69, v176);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_1D4E3F000, v62, v63, "The correct playability status cannot be guaranteed as the input item %{public}s has not been mapped.", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x1DA6ED200](v66, -1, -1);
      v71 = v65;
      v55 = v173;
      MEMORY[0x1DA6ED200](v71, -1, -1);
    }

    else
    {

      (*(v59 + 8))(v61, v55);
    }

    (*(v161 + 8))(v159, v170);
    v56 = v59;
  }

  v176[3] = v55;
  v176[4] = MEMORY[0x1E6976BD0];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v176);
  v73 = *(v56 + 16);
  v74 = v172;
  (v73)(boxed_opaque_existential_0, v172, v55);
  (v73)(v57 + *(v57->isa + 15), v74, v55);
  sub_1D4EC76A8(v169, v57 + *(v57->isa + 16));
  *(&v57->isa + *(v57->isa + 17)) = InternalMusicPlayer.queue(for:)(&unk_1F50A3AD8);
  if (qword_1EDD55F58 != -1)
  {
    swift_once();
  }

  v75 = qword_1EDD55F60;
  swift_getKeyPath();
  swift_getKeyPath();
  v161 = v75;
  sub_1D560C8F8();

  v155 = LOBYTE(v175[0]);
  LODWORD(v153) = BYTE1(v175[0]);
  LODWORD(v154) = BYTE2(v175[0]);
  v157 = BYTE3(v175[0]);
  v156 = BYTE4(v175[0]);
  v170 = v175[1];
  if (qword_1EDD544A0 != -1)
  {
    swift_once();
  }

  v76 = sub_1D560C758();
  __swift_project_value_buffer(v76, qword_1EDD76AD8);
  v77 = v160;
  v78 = v172;
  (v73)(v160, v172, v55);
  v79 = v166;
  (v73)(v166, v78, v55);
  sub_1D4E628D4(v176, v175);
  v80 = sub_1D560C738();
  v81 = sub_1D56156E8();
  v158 = v80;
  v82 = os_log_type_enabled(v80, v81);
  v159 = v73;
  if (v82)
  {
    v83 = v77;
    v84 = v56;
    v85 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    v174 = v152;
    *v85 = 136446722;
    v86 = sub_1D5616458();
    LODWORD(v151) = v81;
    v87 = v86;
    v88 = v73;
    v90 = v89;
    v91 = *(v84 + 8);
    v91(v83, v173);
    v92 = sub_1D4E6835C(v87, v90, &v174);

    *(v85 + 4) = v92;
    *(v85 + 12) = 2082;
    v93 = v166;
    (v88)(v165, v166, v173);
    v94 = sub_1D5614DB8();
    v96 = v95;
    v166 = v91;
    v91(v93, v173);
    v55 = v173;
    v97 = sub_1D4E6835C(v94, v96, &v174);

    *(v85 + 14) = v97;
    *(v85 + 22) = 2082;
    __swift_project_boxed_opaque_existential_1(v175, v175[3]);
    sub_1D51ACC3C();
    v99 = v98;
    v101 = v100;
    __swift_destroy_boxed_opaque_existential_1(v175);
    v102 = sub_1D4E6835C(v99, v101, &v174);

    *(v85 + 24) = v102;
    v103 = v158;
    _os_log_impl(&dword_1D4E3F000, v158, v151, "Initial playability information for %{public}s with ID %{public}s: %{public}s", v85, 0x20u);
    v104 = v152;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v104, -1, -1);
    MEMORY[0x1DA6ED200](v85, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v175);
    v105 = *(v56 + 8);
    v105(v79, v55);
    v166 = v105;
    v105(v77, v55);
  }

  v106 = v163;
  v107 = 256;
  if (!v153)
  {
    v107 = 0;
  }

  v108 = v107 | v155;
  v109 = 0x10000;
  if (!v154)
  {
    v109 = 0;
  }

  v110 = (v108 | v109 | (v157 << 24) | (v156 << 32));
  sub_1D51994A8();
  LODWORD(v111) = LOBYTE(v175[0]);
  v112 = v162;
  if (LOBYTE(v175[0]) == 10)
  {
    LODWORD(v163) = 10;
    v113 = v159;
    (v159)(v106, v172, v55);
    v114 = sub_1D560C738();
    v115 = sub_1D56156E8();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v160 = v110;
      v117 = v116;
      v118 = swift_slowAlloc();
      v175[0] = v118;
      *v117 = 136446210;
      (v113)(v165, v106, v55);
      v119 = sub_1D5614DB8();
      v121 = v120;
      (v166)(v106, v55);
      v122 = sub_1D4E6835C(v119, v121, v175);

      *(v117 + 4) = v122;
      _os_log_impl(&dword_1D4E3F000, v114, v115, "Initial item state for item, %{public}s, returned playable.", v117, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v118);
      MEMORY[0x1DA6ED200](v118, -1, -1);
      MEMORY[0x1DA6ED200](v117, -1, -1);
    }

    else
    {

      (v166)(v106, v55);
    }

    LOBYTE(v111) = v163;
  }

  else
  {
    v123 = v159;
    (v159)(v162, v172, v55);
    v124 = sub_1D560C738();
    v125 = sub_1D56156E8();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      LODWORD(v163) = v111;
      v111 = v55;
      v127 = v126;
      v128 = swift_slowAlloc();
      v160 = v110;
      v129 = v128;
      v175[0] = v128;
      *v127 = 136446466;
      (v123)(v165, v112, v111);
      v130 = sub_1D5614DB8();
      v132 = v131;
      v133 = v111;
      LOBYTE(v111) = v163;
      (v166)(v112, v133);
      v134 = sub_1D4E6835C(v130, v132, v175);

      *(v127 + 4) = v134;
      *(v127 + 12) = 2082;
      LOBYTE(v174) = v111;
      v135 = sub_1D5614DB8();
      v137 = sub_1D4E6835C(v135, v136, v175);

      *(v127 + 14) = v137;
      _os_log_impl(&dword_1D4E3F000, v124, v125, "Initial item state for item, %{public}s, returned unplayable with reason %{public}s", v127, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6ED200](v129, -1, -1);
      MEMORY[0x1DA6ED200](v127, -1, -1);
    }

    else
    {

      (v166)(v112, v55);
    }
  }

  swift_beginAccess();
  LOBYTE(v174) = v111;
  sub_1D560C8B8();
  swift_endAccess();
  v138 = v170;
  sub_1D51A4F48();
  sub_1D51A5824();
  v139 = *(&v57->isa + *(v57->isa + 17));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  sub_1D51ADFE8(&qword_1EDD5D2E0, &unk_1EC7F2AD0, &unk_1D5640100);
  v175[0] = sub_1D560C938();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1290, &qword_1D563F8C0);
  sub_1D51ADFE8(&unk_1EDD5D890, &qword_1EC7F1290, &qword_1D563F8C0);
  v140 = sub_1D560C948();

  v141 = *(v57->isa + 19);
  v142 = *(&v57->isa + v141);
  *(&v57->isa + v141) = v140;

  type metadata accessor for UserStateViewModel();
  sub_1D51AE1F4(&qword_1EDD55F50, type metadata accessor for UserStateViewModel);
  v175[0] = sub_1D560C838();
  swift_allocObject();
  swift_weakInit();
  sub_1D560C898();
  v143 = sub_1D560C948();

  v144 = *(v57->isa + 18);
  v145 = *(&v57->isa + v144);
  *(&v57->isa + v144) = v143;

  v146 = sub_1D5615458();
  v147 = v164;
  __swift_storeEnumTagSinglePayload(v164, 1, 1, v146);
  v148 = swift_allocObject();
  swift_weakInit();

  v149 = swift_allocObject();
  v149[2] = 0;
  v149[3] = 0;
  v149[4] = v148;
  sub_1D51ECB60(0, 0, v147, &unk_1D56401F8, v149);

  sub_1D4E50004(v169, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v171 + 8))(v172, v173);
  __swift_destroy_boxed_opaque_existential_1(v176);
  return v57;
}

NSObject *sub_1D519F420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v168 = a3;
  v169 = a2;
  v172 = a1;
  v159 = 0;
  isa = v3->isa;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v164 = &v151 - v6;
  v173 = sub_1D5614898();
  v171 = *(v173 - 8);
  v7 = *(v171 + 64);
  v8 = MEMORY[0x1EEE9AC00](v173);
  v151 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v163 = &v151 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v162 = &v151 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v165 = &v151 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v166 = &v151 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v160 = &v151 - v18;
  v156 = sub_1D560DB08();
  v157 = *(v156 - 8);
  v19 = *(v157 + 64);
  v20 = MEMORY[0x1EEE9AC00](v156);
  v152 = &v151 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v153 = &v151 - v22;
  v155 = sub_1D560D838();
  v154 = *(v155 - 8);
  v23 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v25 = &v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_1D560E728();
  v161 = *(v170 - 8);
  v26 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v28 = &v151 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v151 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1420, &qword_1D56400B0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v151 - v37;
  v39 = qword_1EDD5D728;
  LOBYTE(v176[0]) = 4;
  sub_1D560C8B8();
  (*(v35 + 32))(v3 + v39, v38, v34);
  v40 = qword_1EDD5D738;
  LOBYTE(v176[0]) = 0;
  sub_1D560C8B8();
  v41 = v153;
  (*(v30 + 32))(v3 + v40, v33, v29);
  *(&v3->isa + *(v3->isa + 18)) = 0;
  v42 = *(v3->isa + 19);
  v158 = v3;
  *(&v3->isa + v42) = 0;
  sub_1D560EC98();
  sub_1D560D588();
  v43 = v25;
  v44 = v156;
  v45 = v28;
  (*(v154 + 8))(v43, v155);
  v46 = v157;
  v47 = *(v157 + 104);
  v47(v41, *MEMORY[0x1E6975040], v44);
  sub_1D51AE1F4(&qword_1EDD5D748, MEMORY[0x1E6975358]);
  v48 = sub_1D5614FC8();
  if (v48 == 2)
  {
    MEMORY[0x1EEE9AC00](v48);
    *(&v151 - 2) = v41;
    sub_1D4F257A8();
  }

  v49 = v48;
  v50 = *(v46 + 8);
  v50(v41, v44);
  if (v49)
  {
    goto LABEL_7;
  }

  v51 = v152;
  v47(v152, *MEMORY[0x1E6975030], v44);
  v52 = v51;
  v53 = sub_1D5614FC8();
  if (v53 == 2)
  {
    MEMORY[0x1EEE9AC00](v53);
    *(&v151 - 2) = v51;
    sub_1D4F257A8();
  }

  v54 = v53;
  v50(v52, v44);
  if (v54)
  {
LABEL_7:
    (*(v161 + 8))(v45, v170);
    v55 = v173;
    v56 = v171;
    v57 = v158;
  }

  else
  {
    v159 = v45;
    if (qword_1EDD544A0 != -1)
    {
      swift_once();
    }

    v58 = sub_1D560C758();
    __swift_project_value_buffer(v58, qword_1EDD76AD8);
    v59 = v171;
    v60 = *(v171 + 16);
    v61 = v151;
    v55 = v173;
    v60(v151, v172, v173);
    v62 = sub_1D560C738();
    v63 = sub_1D56156C8();
    v64 = os_log_type_enabled(v62, v63);
    v57 = v158;
    if (v64)
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v176[0] = v66;
      *v65 = 136446210;
      v60(v165, v61, v173);
      v67 = sub_1D5614DB8();
      v69 = v68;
      (*(v59 + 8))(v61, v173);
      v70 = sub_1D4E6835C(v67, v69, v176);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_1D4E3F000, v62, v63, "The correct playability status cannot be guaranteed as the input item %{public}s has not been mapped.", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x1DA6ED200](v66, -1, -1);
      v71 = v65;
      v55 = v173;
      MEMORY[0x1DA6ED200](v71, -1, -1);
    }

    else
    {

      (*(v59 + 8))(v61, v55);
    }

    (*(v161 + 8))(v159, v170);
    v56 = v59;
  }

  v176[3] = v55;
  v176[4] = MEMORY[0x1E69773C8];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v176);
  v73 = *(v56 + 16);
  v74 = v172;
  (v73)(boxed_opaque_existential_0, v172, v55);
  (v73)(v57 + *(v57->isa + 15), v74, v55);
  sub_1D4EC76A8(v169, v57 + *(v57->isa + 16));
  *(&v57->isa + *(v57->isa + 17)) = InternalMusicPlayer.queue(for:)(&unk_1F50A3AB0);
  if (qword_1EDD55F58 != -1)
  {
    swift_once();
  }

  v75 = qword_1EDD55F60;
  swift_getKeyPath();
  swift_getKeyPath();
  v161 = v75;
  sub_1D560C8F8();

  v155 = LOBYTE(v175[0]);
  LODWORD(v153) = BYTE1(v175[0]);
  LODWORD(v154) = BYTE2(v175[0]);
  v157 = BYTE3(v175[0]);
  v156 = BYTE4(v175[0]);
  v170 = v175[1];
  if (qword_1EDD544A0 != -1)
  {
    swift_once();
  }

  v76 = sub_1D560C758();
  __swift_project_value_buffer(v76, qword_1EDD76AD8);
  v77 = v160;
  v78 = v172;
  (v73)(v160, v172, v55);
  v79 = v166;
  (v73)(v166, v78, v55);
  sub_1D4E628D4(v176, v175);
  v80 = sub_1D560C738();
  v81 = sub_1D56156E8();
  v158 = v80;
  v82 = os_log_type_enabled(v80, v81);
  v159 = v73;
  if (v82)
  {
    v83 = v77;
    v84 = v56;
    v85 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    v174 = v152;
    *v85 = 136446722;
    v86 = sub_1D5616458();
    LODWORD(v151) = v81;
    v87 = v86;
    v88 = v73;
    v90 = v89;
    v91 = *(v84 + 8);
    v91(v83, v173);
    v92 = sub_1D4E6835C(v87, v90, &v174);

    *(v85 + 4) = v92;
    *(v85 + 12) = 2082;
    v93 = v166;
    (v88)(v165, v166, v173);
    v94 = sub_1D5614DB8();
    v96 = v95;
    v166 = v91;
    v91(v93, v173);
    v55 = v173;
    v97 = sub_1D4E6835C(v94, v96, &v174);

    *(v85 + 14) = v97;
    *(v85 + 22) = 2082;
    __swift_project_boxed_opaque_existential_1(v175, v175[3]);
    sub_1D51ACC3C();
    v99 = v98;
    v101 = v100;
    __swift_destroy_boxed_opaque_existential_1(v175);
    v102 = sub_1D4E6835C(v99, v101, &v174);

    *(v85 + 24) = v102;
    v103 = v158;
    _os_log_impl(&dword_1D4E3F000, v158, v151, "Initial playability information for %{public}s with ID %{public}s: %{public}s", v85, 0x20u);
    v104 = v152;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v104, -1, -1);
    MEMORY[0x1DA6ED200](v85, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v175);
    v105 = *(v56 + 8);
    v105(v79, v55);
    v166 = v105;
    v105(v77, v55);
  }

  v106 = v163;
  v107 = 256;
  if (!v153)
  {
    v107 = 0;
  }

  v108 = v107 | v155;
  v109 = 0x10000;
  if (!v154)
  {
    v109 = 0;
  }

  v110 = (v108 | v109 | (v157 << 24) | (v156 << 32));
  sub_1D51994A8();
  LODWORD(v111) = LOBYTE(v175[0]);
  v112 = v162;
  if (LOBYTE(v175[0]) == 10)
  {
    LODWORD(v163) = 10;
    v113 = v159;
    (v159)(v106, v172, v55);
    v114 = sub_1D560C738();
    v115 = sub_1D56156E8();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v160 = v110;
      v117 = v116;
      v118 = swift_slowAlloc();
      v175[0] = v118;
      *v117 = 136446210;
      (v113)(v165, v106, v55);
      v119 = sub_1D5614DB8();
      v121 = v120;
      (v166)(v106, v55);
      v122 = sub_1D4E6835C(v119, v121, v175);

      *(v117 + 4) = v122;
      _os_log_impl(&dword_1D4E3F000, v114, v115, "Initial item state for item, %{public}s, returned playable.", v117, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v118);
      MEMORY[0x1DA6ED200](v118, -1, -1);
      MEMORY[0x1DA6ED200](v117, -1, -1);
    }

    else
    {

      (v166)(v106, v55);
    }

    LOBYTE(v111) = v163;
  }

  else
  {
    v123 = v159;
    (v159)(v162, v172, v55);
    v124 = sub_1D560C738();
    v125 = sub_1D56156E8();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      LODWORD(v163) = v111;
      v111 = v55;
      v127 = v126;
      v128 = swift_slowAlloc();
      v160 = v110;
      v129 = v128;
      v175[0] = v128;
      *v127 = 136446466;
      (v123)(v165, v112, v111);
      v130 = sub_1D5614DB8();
      v132 = v131;
      v133 = v111;
      LOBYTE(v111) = v163;
      (v166)(v112, v133);
      v134 = sub_1D4E6835C(v130, v132, v175);

      *(v127 + 4) = v134;
      *(v127 + 12) = 2082;
      LOBYTE(v174) = v111;
      v135 = sub_1D5614DB8();
      v137 = sub_1D4E6835C(v135, v136, v175);

      *(v127 + 14) = v137;
      _os_log_impl(&dword_1D4E3F000, v124, v125, "Initial item state for item, %{public}s, returned unplayable with reason %{public}s", v127, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6ED200](v129, -1, -1);
      MEMORY[0x1DA6ED200](v127, -1, -1);
    }

    else
    {

      (v166)(v112, v55);
    }
  }

  swift_beginAccess();
  LOBYTE(v174) = v111;
  sub_1D560C8B8();
  swift_endAccess();
  v138 = v170;
  sub_1D51A4F48();
  sub_1D51A5824();
  v139 = *(&v57->isa + *(v57->isa + 17));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  sub_1D51ADFE8(&qword_1EDD5D2E0, &unk_1EC7F2AD0, &unk_1D5640100);
  v175[0] = sub_1D560C938();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1290, &qword_1D563F8C0);
  sub_1D51ADFE8(&unk_1EDD5D890, &qword_1EC7F1290, &qword_1D563F8C0);
  v140 = sub_1D560C948();

  v141 = *(v57->isa + 19);
  v142 = *(&v57->isa + v141);
  *(&v57->isa + v141) = v140;

  type metadata accessor for UserStateViewModel();
  sub_1D51AE1F4(&qword_1EDD55F50, type metadata accessor for UserStateViewModel);
  v175[0] = sub_1D560C838();
  swift_allocObject();
  swift_weakInit();
  sub_1D560C898();
  v143 = sub_1D560C948();

  v144 = *(v57->isa + 18);
  v145 = *(&v57->isa + v144);
  *(&v57->isa + v144) = v143;

  v146 = sub_1D5615458();
  v147 = v164;
  __swift_storeEnumTagSinglePayload(v164, 1, 1, v146);
  v148 = swift_allocObject();
  swift_weakInit();

  v149 = swift_allocObject();
  v149[2] = 0;
  v149[3] = 0;
  v149[4] = v148;
  sub_1D51ECB60(0, 0, v147, &unk_1D56401C0, v149);

  sub_1D4E50004(v169, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v171 + 8))(v172, v173);
  __swift_destroy_boxed_opaque_existential_1(v176);
  return v57;
}

uint64_t sub_1D51A09C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v167 = a3;
  v168 = a2;
  v174 = a1;
  v159 = 0;
  v166 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v164 = &v151 - v7;
  v175 = sub_1D560EEA8();
  v173 = *(v175 - 8);
  v8 = *(v173 + 64);
  v9 = MEMORY[0x1EEE9AC00](v175);
  v153 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v163 = (&v151 - v12);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v154 = &v151 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v165 = &v151 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v162 = &v151 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v161 = &v151 - v19;
  v20 = sub_1D560DB08();
  v170 = *(v20 - 8);
  v171 = v20;
  v21 = *(v170 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v155 = &v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v157 = &v151 - v24;
  v169 = sub_1D560D838();
  isa = v169[-1].isa;
  v25 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v169);
  v27 = &v151 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_1D560E728();
  v160 = *(v172 - 8);
  v28 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v30 = (&v151 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  v31 = *(v158 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v34 = &v151 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1420, &qword_1D56400B0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v151 - v38;
  v40 = qword_1EDD5D728;
  LOBYTE(v178[0]) = 4;
  sub_1D560C8B8();
  (*(v36 + 32))(v3 + v40, v39, v35);
  v41 = qword_1EDD5D738;
  LOBYTE(v178[0]) = 0;
  sub_1D560C8B8();
  v42 = v3 + v41;
  v43 = v174;
  (*(v31 + 32))(v42, v34, v158);
  *(v4 + *(*v4 + 144)) = 0;
  v44 = *(*v4 + 152);
  v158 = v4;
  *(v4 + v44) = 0;
  v45 = v43;
  sub_1D560EC98();
  sub_1D560D588();
  (*(isa + 1))(v27, v169);
  v46 = v170;
  v47 = *(v170 + 104);
  v48 = v157;
  v47(v157, *MEMORY[0x1E6975040], v171);
  sub_1D51AE1F4(&qword_1EDD5D748, MEMORY[0x1E6975358]);
  v49 = v48;
  v169 = v30;
  v50 = sub_1D5614FC8();
  if (v50 == 2)
  {
    MEMORY[0x1EEE9AC00](v50);
    *(&v151 - 2) = v48;
    sub_1D4F257A8();
  }

  v51 = v50;
  v52 = v46 + 8;
  v53 = *(v46 + 8);
  v54 = v171;
  v170 = v52;
  v53(v49, v171);
  if (v51)
  {
    goto LABEL_7;
  }

  v55 = v155;
  v47(v155, *MEMORY[0x1E6975030], v54);
  v56 = v55;
  v57 = sub_1D5614FC8();
  if (v57 == 2)
  {
    MEMORY[0x1EEE9AC00](v57);
    *(&v151 - 2) = v55;
    sub_1D4F257A8();
  }

  v58 = v57;
  v53(v56, v171);
  if (v58)
  {
LABEL_7:
    (*(v160 + 8))(v169, v172);
    v59 = v175;
    v60 = v173;
    v61 = v45;
    v62 = v158;
  }

  else
  {
    if (qword_1EDD544A0 != -1)
    {
      swift_once();
    }

    v63 = sub_1D560C758();
    __swift_project_value_buffer(v63, qword_1EDD76AD8);
    v64 = v173;
    v65 = *(v173 + 16);
    v66 = v153;
    v59 = v175;
    v65(v153, v174, v175);
    v67 = sub_1D560C738();
    v68 = sub_1D56156C8();
    v69 = os_log_type_enabled(v67, v68);
    v62 = v158;
    if (v69)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v178[0] = v71;
      *v70 = 136446210;
      v65(v165, v66, v175);
      v72 = sub_1D5614DB8();
      v74 = v73;
      (*(v64 + 8))(v66, v175);
      v75 = sub_1D4E6835C(v72, v74, v178);

      *(v70 + 4) = v75;
      _os_log_impl(&dword_1D4E3F000, v67, v68, "The correct playability status cannot be guaranteed as the input item %{public}s has not been mapped.", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x1DA6ED200](v71, -1, -1);
      v76 = v70;
      v59 = v175;
      MEMORY[0x1DA6ED200](v76, -1, -1);
    }

    else
    {

      (*(v64 + 8))(v66, v59);
    }

    (*(v160 + 8))(v169, v172);
    v61 = v174;
    v60 = v64;
  }

  v178[3] = v59;
  v178[4] = MEMORY[0x1E69754D0];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v178);
  v78 = *(v60 + 16);
  v78(boxed_opaque_existential_0, v61, v59);
  v78((v62 + *(*v62 + 120)), v61, v59);
  sub_1D4EC76A8(v168, v62 + *(*v62 + 128));
  *(v62 + *(*v62 + 136)) = InternalMusicPlayer.queue(for:)(&unk_1F50A3A88);
  if (qword_1EDD55F58 != -1)
  {
    swift_once();
  }

  v79 = qword_1EDD55F60;
  swift_getKeyPath();
  swift_getKeyPath();
  v171 = v79;
  sub_1D560C8F8();

  v157 = LOBYTE(v177[0]);
  LODWORD(v155) = BYTE1(v177[0]);
  LODWORD(isa) = BYTE2(v177[0]);
  v159 = BYTE3(v177[0]);
  v158 = BYTE4(v177[0]);
  v172 = v177[1];
  if (qword_1EDD544A0 != -1)
  {
    swift_once();
  }

  v80 = sub_1D560C758();
  v81 = __swift_project_value_buffer(v80, qword_1EDD76AD8);
  v82 = v161;
  v78(v161, v61, v59);
  v83 = v162;
  v78(v162, v61, v59);
  sub_1D4E628D4(v178, v177);
  v160 = v81;
  v84 = sub_1D560C738();
  LODWORD(v153) = sub_1D56156E8();
  v169 = v84;
  v85 = os_log_type_enabled(v84, v153);
  v170 = v78;
  if (v85)
  {
    v86 = v78;
    v87 = v82;
    v88 = v60;
    v89 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    v176 = v152;
    *v89 = 136446722;
    v90 = sub_1D5616458();
    v92 = v91;
    v93 = *(v88 + 8);
    v93(v87, v175);
    v94 = sub_1D4E6835C(v90, v92, &v176);

    *(v89 + 4) = v94;
    *(v89 + 12) = 2082;
    v86(v165, v83, v175);
    v95 = sub_1D5614DB8();
    v97 = v96;
    v162 = v93;
    v93(v83, v175);
    v59 = v175;
    v98 = sub_1D4E6835C(v95, v97, &v176);

    *(v89 + 14) = v98;
    *(v89 + 22) = 2082;
    __swift_project_boxed_opaque_existential_1(v177, v177[3]);
    sub_1D51ACC3C();
    v100 = v99;
    v102 = v101;
    __swift_destroy_boxed_opaque_existential_1(v177);
    v103 = sub_1D4E6835C(v100, v102, &v176);

    *(v89 + 24) = v103;
    v61 = v174;
    v104 = v169;
    _os_log_impl(&dword_1D4E3F000, v169, v153, "Initial playability information for %{public}s with ID %{public}s: %{public}s", v89, 0x20u);
    v105 = v152;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v105, -1, -1);
    MEMORY[0x1DA6ED200](v89, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v177);
    v106 = *(v60 + 8);
    v106(v83, v59);
    v162 = v106;
    v106(v82, v59);
  }

  v107 = v163;
  v108 = 256;
  if (!v155)
  {
    v108 = 0;
  }

  v109 = v108 | v157;
  v110 = 0x10000;
  if (!isa)
  {
    v110 = 0;
  }

  v111 = (v109 | v110 | (v159 << 24) | (v158 << 32));
  sub_1D51994A8();
  LODWORD(v112) = LOBYTE(v177[0]);
  if (LOBYTE(v177[0]) == 10)
  {
    LODWORD(v169) = 10;
    v113 = v170;
    (v170)(v107, v61, v59);
    v114 = sub_1D560C738();
    v115 = sub_1D56156E8();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v177[0] = v163;
      *v116 = 136446210;
      v117 = v107;
      v113(v165, v107, v59);
      v118 = sub_1D5614DB8();
      v120 = v119;
      v170 = (v173 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      (v162)(v117, v59);
      v121 = sub_1D4E6835C(v118, v120, v177);

      *(v116 + 4) = v121;
      _os_log_impl(&dword_1D4E3F000, v114, v115, "Initial item state for item, %{public}s, returned playable.", v116, 0xCu);
      v122 = v163;
      __swift_destroy_boxed_opaque_existential_1(v163);
      MEMORY[0x1DA6ED200](v122, -1, -1);
      MEMORY[0x1DA6ED200](v116, -1, -1);
    }

    else
    {

      v170 = (v173 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      (v162)(v107, v59);
    }

    LOBYTE(v112) = v169;
  }

  else
  {
    v163 = v111;
    v123 = v154;
    v124 = v170;
    (v170)(v154, v61, v59);
    v125 = sub_1D560C738();
    v126 = sub_1D56156E8();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      LODWORD(v169) = v112;
      v112 = v59;
      v128 = v127;
      v129 = swift_slowAlloc();
      v177[0] = v129;
      *v128 = 136446466;
      v124(v165, v123, v112);
      v130 = sub_1D5614DB8();
      v132 = v131;
      v170 = (v173 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v133 = v112;
      LOBYTE(v112) = v169;
      (v162)(v123, v133);
      v134 = sub_1D4E6835C(v130, v132, v177);

      *(v128 + 4) = v134;
      *(v128 + 12) = 2082;
      LOBYTE(v176) = v112;
      v135 = sub_1D5614DB8();
      v137 = sub_1D4E6835C(v135, v136, v177);

      *(v128 + 14) = v137;
      _os_log_impl(&dword_1D4E3F000, v125, v126, "Initial item state for item, %{public}s, returned unplayable with reason %{public}s", v128, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6ED200](v129, -1, -1);
      MEMORY[0x1DA6ED200](v128, -1, -1);
    }

    else
    {

      v170 = (v173 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      (v162)(v123, v59);
    }
  }

  swift_beginAccess();
  LOBYTE(v176) = v112;
  sub_1D560C8B8();
  swift_endAccess();
  v138 = v172;
  sub_1D51A4F48();
  sub_1D51A5684();
  v139 = *(v62 + *(*v62 + 136));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  sub_1D51ADFE8(&qword_1EDD5D2E0, &unk_1EC7F2AD0, &unk_1D5640100);
  v177[0] = sub_1D560C938();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1290, &qword_1D563F8C0);
  sub_1D51ADFE8(&unk_1EDD5D890, &qword_1EC7F1290, &qword_1D563F8C0);
  v140 = sub_1D560C948();

  v141 = *(*v62 + 152);
  v142 = *(v62 + v141);
  *(v62 + v141) = v140;

  type metadata accessor for UserStateViewModel();
  sub_1D51AE1F4(&qword_1EDD55F50, type metadata accessor for UserStateViewModel);
  v177[0] = sub_1D560C838();
  swift_allocObject();
  swift_weakInit();
  sub_1D560C898();
  v143 = sub_1D560C948();

  v144 = *(*v62 + 144);
  v145 = *(v62 + v144);
  *(v62 + v144) = v143;

  v146 = sub_1D5615458();
  v147 = v164;
  __swift_storeEnumTagSinglePayload(v164, 1, 1, v146);
  v148 = swift_allocObject();
  swift_weakInit();

  v149 = swift_allocObject();
  v149[2] = 0;
  v149[3] = 0;
  v149[4] = v148;
  sub_1D51ECB60(0, 0, v147, &unk_1D5640188, v149);

  sub_1D4E50004(v168, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v173 + 8))(v174, v175);
  __swift_destroy_boxed_opaque_existential_1(v178);
  return v62;
}

uint64_t sub_1D51A1F64(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v5 = v4(v3);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return a2;
}

uint64_t sub_1D51A1FBC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v5 = v4(v3);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return a2;
}

void *sub_1D51A2014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v149 = a3;
  v150 = a2;
  v151 = a1;
  v145 = 0;
  v148 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v142 = &v132 - v7;
  v152 = type metadata accessor for MusicMovie();
  v8 = *(*(v152 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v152);
  v132 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v141 = &v132 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v133 = &v132 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v144 = &v132 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v140 = &v132 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v139 = &v132 - v19;
  v146 = sub_1D560DB08();
  v137 = *(v146 - 8);
  v20 = *(v137 + 64);
  v21 = MEMORY[0x1EEE9AC00](v146);
  v134 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v136 = &v132 - v23;
  v147 = sub_1D560D838();
  v135 = *(v147 - 8);
  v24 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v26 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D560E728();
  v138 = *(v27 - 8);
  v28 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v143 = &v132 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v132 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1420, &qword_1D56400B0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v132 - v38;
  v40 = qword_1EDD5D728;
  LOBYTE(v155[0]) = 4;
  sub_1D560C8B8();
  v41 = v4 + v40;
  v42 = v146;
  (*(v36 + 32))(v41, v39, v35);
  v43 = qword_1EDD5D738;
  LOBYTE(v155[0]) = 0;
  sub_1D560C8B8();
  v44 = v4 + v43;
  v45 = v143;
  (*(v31 + 32))(v44, v34, v30);
  *(v4 + *(*v4 + 144)) = 0;
  *(v4 + *(*v4 + 152)) = 0;
  sub_1D51AE1F4(&qword_1EDD59308, type metadata accessor for MusicMovie);
  sub_1D560EC98();
  sub_1D560D588();
  v46 = v26;
  v47 = v136;
  (*(v135 + 8))(v46, v147);
  v48 = v137;
  v49 = *(v137 + 104);
  v49(v47, *MEMORY[0x1E6975040], v42);
  sub_1D51AE1F4(&qword_1EDD5D748, MEMORY[0x1E6975358]);
  v147 = v27;
  v50 = sub_1D5614FC8();
  if (v50 == 2)
  {
    MEMORY[0x1EEE9AC00](v50);
    *(&v132 - 2) = v47;
    v51 = v4;
    v52 = v45;
    v53 = v145;
    sub_1D4F257A8();
    v55 = v54;
    v145 = v53;
    v45 = v52;
    v4 = v51;
    v42 = v146;
  }

  else
  {
    v55 = v50;
  }

  v56 = *(v48 + 8);
  v56(v47, v42);
  v57 = v151;
  if ((v55 & 1) == 0)
  {
    v58 = v134;
    v49(v134, *MEMORY[0x1E6975030], v42);
    v59 = v58;
    v60 = sub_1D5614FC8();
    if (v60 == 2)
    {
      MEMORY[0x1EEE9AC00](v60);
      *(&v132 - 2) = v58;
      sub_1D4F257A8();
      v59 = v134;
    }

    v61 = v60;
    v56(v59, v42);
    if ((v61 & 1) == 0)
    {
      if (qword_1EDD544A0 != -1)
      {
        swift_once();
      }

      v62 = sub_1D560C758();
      __swift_project_value_buffer(v62, qword_1EDD76AD8);
      v63 = v132;
      sub_1D51A1FBC(v57, v132);
      v64 = sub_1D560C738();
      v65 = sub_1D56156C8();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v155[0] = v67;
        *v66 = 136446210;
        sub_1D51A1FBC(v63, v144);
        v68 = sub_1D5614DB8();
        v70 = v69;
        sub_1D51A34D0(v63, type metadata accessor for MusicMovie);
        v71 = sub_1D4E6835C(v68, v70, v155);

        *(v66 + 4) = v71;
        _os_log_impl(&dword_1D4E3F000, v64, v65, "The correct playability status cannot be guaranteed as the input item %{public}s has not been mapped.", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v67);
        MEMORY[0x1DA6ED200](v67, -1, -1);
        MEMORY[0x1DA6ED200](v66, -1, -1);

        (*(v138 + 8))(v143, v147);
        goto LABEL_14;
      }

      sub_1D51A34D0(v63, type metadata accessor for MusicMovie);
    }
  }

  (*(v138 + 8))(v45, v147);
LABEL_14:
  v72 = v139;
  v155[3] = v152;
  v155[4] = sub_1D51AE1F4(&unk_1EC7EB700, type metadata accessor for MusicMovie);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v155);
  sub_1D51A1FBC(v57, boxed_opaque_existential_0);
  sub_1D51A1FBC(v57, v4 + *(*v4 + 120));
  sub_1D4EC76A8(v150, v4 + *(*v4 + 128));
  *(v4 + *(*v4 + 136)) = InternalMusicPlayer.queue(for:)(&unk_1F50A3A60);
  if (qword_1EDD55F58 != -1)
  {
    swift_once();
  }

  v74 = qword_1EDD55F60;
  swift_getKeyPath();
  swift_getKeyPath();
  v146 = v74;
  sub_1D560C8F8();

  v75 = LOBYTE(v154[0]);
  LODWORD(v143) = BYTE1(v154[0]);
  LODWORD(v145) = BYTE2(v154[0]);
  v147 = v154[1];
  if (qword_1EDD544A0 != -1)
  {
    swift_once();
  }

  v76 = sub_1D560C758();
  v77 = __swift_project_value_buffer(v76, qword_1EDD76AD8);
  sub_1D51A1FBC(v57, v72);
  v78 = v140;
  sub_1D51A1FBC(v57, v140);
  sub_1D4E628D4(v155, v154);
  v79 = sub_1D560C738();
  LODWORD(v139) = sub_1D56156E8();
  if (os_log_type_enabled(v79, v139))
  {
    v80 = swift_slowAlloc();
    v138 = v77;
    v81 = v80;
    v136 = swift_slowAlloc();
    v153 = v136;
    *v81 = 136446722;
    v137 = v75;
    v82 = sub_1D5616458();
    v83 = v72;
    v84 = v82;
    v86 = v85;
    sub_1D51A34D0(v83, type metadata accessor for MusicMovie);
    v87 = sub_1D4E6835C(v84, v86, &v153);

    *(v81 + 4) = v87;
    *(v81 + 12) = 2082;
    sub_1D51A1FBC(v78, v144);
    v88 = sub_1D5614DB8();
    v90 = v89;
    sub_1D51A34D0(v78, type metadata accessor for MusicMovie);
    v91 = sub_1D4E6835C(v88, v90, &v153);

    *(v81 + 14) = v91;
    *(v81 + 22) = 2082;
    __swift_project_boxed_opaque_existential_1(v154, v154[3]);
    sub_1D51AD5D8();
    v93 = v92;
    v95 = v94;
    __swift_destroy_boxed_opaque_existential_1(v154);
    v96 = sub_1D4E6835C(v93, v95, &v153);
    v57 = v151;

    *(v81 + 24) = v96;
    _os_log_impl(&dword_1D4E3F000, v79, v139, "Initial playability information for %{public}s with ID %{public}s: %{public}s", v81, 0x20u);
    v97 = v136;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v97, -1, -1);
    MEMORY[0x1DA6ED200](v81, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v154);
    sub_1D51A34D0(v78, type metadata accessor for MusicMovie);
    sub_1D51A34D0(v72, type metadata accessor for MusicMovie);
  }

  v98 = v141;
  sub_1D51994A8();
  v99 = v154[0];
  if (LOBYTE(v154[0]) != 10)
  {
    v98 = v133;
    sub_1D51A1FBC(v57, v133);
    v100 = sub_1D560C738();
    v110 = sub_1D56156E8();
    if (os_log_type_enabled(v100, v110))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v154[0] = v103;
      *v102 = 136446466;
      sub_1D51A1FBC(v98, v144);
      v111 = sub_1D5614DB8();
      v112 = v98;
      v114 = v113;
      sub_1D51A34D0(v112, type metadata accessor for MusicMovie);
      v115 = sub_1D4E6835C(v111, v114, v154);

      *(v102 + 4) = v115;
      *(v102 + 12) = 2082;
      LOBYTE(v153) = v99;
      v116 = sub_1D5614DB8();
      v118 = sub_1D4E6835C(v116, v117, v154);

      *(v102 + 14) = v118;
      v57 = v151;
      _os_log_impl(&dword_1D4E3F000, v100, v110, "Initial item state for item, %{public}s, returned unplayable with reason %{public}s", v102, 0x16u);
      swift_arrayDestroy();
      goto LABEL_26;
    }

LABEL_27:

    sub_1D51A34D0(v98, type metadata accessor for MusicMovie);
    goto LABEL_28;
  }

  sub_1D51A1FBC(v57, v98);
  v100 = sub_1D560C738();
  v101 = sub_1D56156E8();
  if (!os_log_type_enabled(v100, v101))
  {
    goto LABEL_27;
  }

  v102 = swift_slowAlloc();
  v103 = swift_slowAlloc();
  v154[0] = v103;
  *v102 = 136446210;
  sub_1D51A1FBC(v98, v144);
  v104 = sub_1D5614DB8();
  v105 = v98;
  v107 = v106;
  sub_1D51A34D0(v105, type metadata accessor for MusicMovie);
  v108 = v104;
  v57 = v151;
  v109 = sub_1D4E6835C(v108, v107, v154);

  *(v102 + 4) = v109;
  _os_log_impl(&dword_1D4E3F000, v100, v101, "Initial item state for item, %{public}s, returned playable.", v102, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v103);
LABEL_26:
  MEMORY[0x1DA6ED200](v103, -1, -1);
  MEMORY[0x1DA6ED200](v102, -1, -1);

LABEL_28:
  swift_beginAccess();
  LOBYTE(v153) = v99;
  sub_1D560C8B8();
  swift_endAccess();
  v119 = v147;
  sub_1D51A4F48();
  sub_1D51A5754();
  v120 = *(v4 + *(*v4 + 136));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  sub_1D51ADFE8(&qword_1EDD5D2E0, &unk_1EC7F2AD0, &unk_1D5640100);
  v154[0] = sub_1D560C938();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1290, &qword_1D563F8C0);
  sub_1D51ADFE8(&unk_1EDD5D890, &qword_1EC7F1290, &qword_1D563F8C0);
  v121 = sub_1D560C948();

  v122 = *(*v4 + 152);
  v123 = *(v4 + v122);
  *(v4 + v122) = v121;

  type metadata accessor for UserStateViewModel();
  sub_1D51AE1F4(&qword_1EDD55F50, type metadata accessor for UserStateViewModel);
  v154[0] = sub_1D560C838();
  swift_allocObject();
  swift_weakInit();
  sub_1D560C898();
  v124 = sub_1D560C948();

  v125 = *(*v4 + 144);
  v126 = *(v4 + v125);
  *(v4 + v125) = v124;

  v127 = sub_1D5615458();
  v128 = v142;
  __swift_storeEnumTagSinglePayload(v142, 1, 1, v127);
  v129 = swift_allocObject();
  swift_weakInit();

  v130 = swift_allocObject();
  v130[2] = 0;
  v130[3] = 0;
  v130[4] = v129;
  sub_1D51ECB60(0, 0, v128, &unk_1D5640150, v130);

  sub_1D4E50004(v150, &qword_1EC7EEC40, &unk_1D561C070);
  sub_1D51A34D0(v57, type metadata accessor for MusicMovie);
  __swift_destroy_boxed_opaque_existential_1(v155);
  return v4;
}

uint64_t sub_1D51A34D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

NSObject *sub_1D51A3528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v168 = a3;
  v169 = a2;
  v172 = a1;
  v159 = 0;
  isa = v3->isa;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v164 = &v151 - v6;
  v173 = sub_1D5613AF8();
  v171 = *(v173 - 8);
  v7 = *(v171 + 64);
  v8 = MEMORY[0x1EEE9AC00](v173);
  v151 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v163 = &v151 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v162 = &v151 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v165 = &v151 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v166 = &v151 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v160 = &v151 - v18;
  v156 = sub_1D560DB08();
  v157 = *(v156 - 8);
  v19 = *(v157 + 64);
  v20 = MEMORY[0x1EEE9AC00](v156);
  v152 = &v151 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v153 = &v151 - v22;
  v155 = sub_1D560D838();
  v154 = *(v155 - 8);
  v23 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v25 = &v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_1D560E728();
  v161 = *(v170 - 8);
  v26 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v28 = &v151 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v151 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1420, &qword_1D56400B0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v151 - v37;
  v39 = qword_1EDD5D728;
  LOBYTE(v176[0]) = 4;
  sub_1D560C8B8();
  (*(v35 + 32))(v3 + v39, v38, v34);
  v40 = qword_1EDD5D738;
  LOBYTE(v176[0]) = 0;
  sub_1D560C8B8();
  v41 = v153;
  (*(v30 + 32))(v3 + v40, v33, v29);
  *(&v3->isa + *(v3->isa + 18)) = 0;
  v42 = *(v3->isa + 19);
  v158 = v3;
  *(&v3->isa + v42) = 0;
  sub_1D560EC98();
  sub_1D560D588();
  v43 = v25;
  v44 = v156;
  v45 = v28;
  (*(v154 + 8))(v43, v155);
  v46 = v157;
  v47 = *(v157 + 104);
  v47(v41, *MEMORY[0x1E6975040], v44);
  sub_1D51AE1F4(&qword_1EDD5D748, MEMORY[0x1E6975358]);
  v48 = sub_1D5614FC8();
  if (v48 == 2)
  {
    MEMORY[0x1EEE9AC00](v48);
    *(&v151 - 2) = v41;
    sub_1D4F257A8();
  }

  v49 = v48;
  v50 = *(v46 + 8);
  v50(v41, v44);
  if (v49)
  {
    goto LABEL_7;
  }

  v51 = v152;
  v47(v152, *MEMORY[0x1E6975030], v44);
  v52 = v51;
  v53 = sub_1D5614FC8();
  if (v53 == 2)
  {
    MEMORY[0x1EEE9AC00](v53);
    *(&v151 - 2) = v51;
    sub_1D4F257A8();
  }

  v54 = v53;
  v50(v52, v44);
  if (v54)
  {
LABEL_7:
    (*(v161 + 8))(v45, v170);
    v55 = v173;
    v56 = v171;
    v57 = v158;
  }

  else
  {
    v159 = v45;
    if (qword_1EDD544A0 != -1)
    {
      swift_once();
    }

    v58 = sub_1D560C758();
    __swift_project_value_buffer(v58, qword_1EDD76AD8);
    v59 = v171;
    v60 = *(v171 + 16);
    v61 = v151;
    v55 = v173;
    v60(v151, v172, v173);
    v62 = sub_1D560C738();
    v63 = sub_1D56156C8();
    v64 = os_log_type_enabled(v62, v63);
    v57 = v158;
    if (v64)
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v176[0] = v66;
      *v65 = 136446210;
      v60(v165, v61, v173);
      v67 = sub_1D5614DB8();
      v69 = v68;
      (*(v59 + 8))(v61, v173);
      v70 = sub_1D4E6835C(v67, v69, v176);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_1D4E3F000, v62, v63, "The correct playability status cannot be guaranteed as the input item %{public}s has not been mapped.", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x1DA6ED200](v66, -1, -1);
      v71 = v65;
      v55 = v173;
      MEMORY[0x1DA6ED200](v71, -1, -1);
    }

    else
    {

      (*(v59 + 8))(v61, v55);
    }

    (*(v161 + 8))(v159, v170);
    v56 = v59;
  }

  v176[3] = v55;
  v176[4] = MEMORY[0x1E6976D10];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v176);
  v73 = *(v56 + 16);
  v74 = v172;
  (v73)(boxed_opaque_existential_0, v172, v55);
  (v73)(v57 + *(v57->isa + 15), v74, v55);
  sub_1D4EC76A8(v169, v57 + *(v57->isa + 16));
  *(&v57->isa + *(v57->isa + 17)) = InternalMusicPlayer.queue(for:)(&unk_1F50A3A38);
  if (qword_1EDD55F58 != -1)
  {
    swift_once();
  }

  v75 = qword_1EDD55F60;
  swift_getKeyPath();
  swift_getKeyPath();
  v161 = v75;
  sub_1D560C8F8();

  v155 = LOBYTE(v175[0]);
  LODWORD(v153) = BYTE1(v175[0]);
  LODWORD(v154) = BYTE2(v175[0]);
  v157 = BYTE3(v175[0]);
  v156 = BYTE4(v175[0]);
  v170 = v175[1];
  if (qword_1EDD544A0 != -1)
  {
    swift_once();
  }

  v76 = sub_1D560C758();
  __swift_project_value_buffer(v76, qword_1EDD76AD8);
  v77 = v160;
  v78 = v172;
  (v73)(v160, v172, v55);
  v79 = v166;
  (v73)(v166, v78, v55);
  sub_1D4E628D4(v176, v175);
  v80 = sub_1D560C738();
  v81 = sub_1D56156E8();
  v158 = v80;
  v82 = os_log_type_enabled(v80, v81);
  v159 = v73;
  if (v82)
  {
    v83 = v77;
    v84 = v56;
    v85 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    v174 = v152;
    *v85 = 136446722;
    v86 = sub_1D5616458();
    LODWORD(v151) = v81;
    v87 = v86;
    v88 = v73;
    v90 = v89;
    v91 = *(v84 + 8);
    v91(v83, v173);
    v92 = sub_1D4E6835C(v87, v90, &v174);

    *(v85 + 4) = v92;
    *(v85 + 12) = 2082;
    v93 = v166;
    (v88)(v165, v166, v173);
    v94 = sub_1D5614DB8();
    v96 = v95;
    v166 = v91;
    v91(v93, v173);
    v55 = v173;
    v97 = sub_1D4E6835C(v94, v96, &v174);

    *(v85 + 14) = v97;
    *(v85 + 22) = 2082;
    __swift_project_boxed_opaque_existential_1(v175, v175[3]);
    sub_1D51ACC3C();
    v99 = v98;
    v101 = v100;
    __swift_destroy_boxed_opaque_existential_1(v175);
    v102 = sub_1D4E6835C(v99, v101, &v174);

    *(v85 + 24) = v102;
    v103 = v158;
    _os_log_impl(&dword_1D4E3F000, v158, v151, "Initial playability information for %{public}s with ID %{public}s: %{public}s", v85, 0x20u);
    v104 = v152;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v104, -1, -1);
    MEMORY[0x1DA6ED200](v85, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v175);
    v105 = *(v56 + 8);
    v105(v79, v55);
    v166 = v105;
    v105(v77, v55);
  }

  v106 = v163;
  v107 = 256;
  if (!v153)
  {
    v107 = 0;
  }

  v108 = v107 | v155;
  v109 = 0x10000;
  if (!v154)
  {
    v109 = 0;
  }

  v110 = (v108 | v109 | (v157 << 24) | (v156 << 32));
  sub_1D51994A8();
  LODWORD(v111) = LOBYTE(v175[0]);
  v112 = v162;
  if (LOBYTE(v175[0]) == 10)
  {
    LODWORD(v163) = 10;
    v113 = v159;
    (v159)(v106, v172, v55);
    v114 = sub_1D560C738();
    v115 = sub_1D56156E8();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v160 = v110;
      v117 = v116;
      v118 = swift_slowAlloc();
      v175[0] = v118;
      *v117 = 136446210;
      (v113)(v165, v106, v55);
      v119 = sub_1D5614DB8();
      v121 = v120;
      (v166)(v106, v55);
      v122 = sub_1D4E6835C(v119, v121, v175);

      *(v117 + 4) = v122;
      _os_log_impl(&dword_1D4E3F000, v114, v115, "Initial item state for item, %{public}s, returned playable.", v117, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v118);
      MEMORY[0x1DA6ED200](v118, -1, -1);
      MEMORY[0x1DA6ED200](v117, -1, -1);
    }

    else
    {

      (v166)(v106, v55);
    }

    LOBYTE(v111) = v163;
  }

  else
  {
    v123 = v159;
    (v159)(v162, v172, v55);
    v124 = sub_1D560C738();
    v125 = sub_1D56156E8();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      LODWORD(v163) = v111;
      v111 = v55;
      v127 = v126;
      v128 = swift_slowAlloc();
      v160 = v110;
      v129 = v128;
      v175[0] = v128;
      *v127 = 136446466;
      (v123)(v165, v112, v111);
      v130 = sub_1D5614DB8();
      v132 = v131;
      v133 = v111;
      LOBYTE(v111) = v163;
      (v166)(v112, v133);
      v134 = sub_1D4E6835C(v130, v132, v175);

      *(v127 + 4) = v134;
      *(v127 + 12) = 2082;
      LOBYTE(v174) = v111;
      v135 = sub_1D5614DB8();
      v137 = sub_1D4E6835C(v135, v136, v175);

      *(v127 + 14) = v137;
      _os_log_impl(&dword_1D4E3F000, v124, v125, "Initial item state for item, %{public}s, returned unplayable with reason %{public}s", v127, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6ED200](v129, -1, -1);
      MEMORY[0x1DA6ED200](v127, -1, -1);
    }

    else
    {

      (v166)(v112, v55);
    }
  }

  swift_beginAccess();
  LOBYTE(v174) = v111;
  sub_1D560C8B8();
  swift_endAccess();
  v138 = v170;
  sub_1D51A4F48();
  sub_1D51A5824();
  v139 = *(&v57->isa + *(v57->isa + 17));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  sub_1D51ADFE8(&qword_1EDD5D2E0, &unk_1EC7F2AD0, &unk_1D5640100);
  v175[0] = sub_1D560C938();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1290, &qword_1D563F8C0);
  sub_1D51ADFE8(&unk_1EDD5D890, &qword_1EC7F1290, &qword_1D563F8C0);
  v140 = sub_1D560C948();

  v141 = *(v57->isa + 19);
  v142 = *(&v57->isa + v141);
  *(&v57->isa + v141) = v140;

  type metadata accessor for UserStateViewModel();
  sub_1D51AE1F4(&qword_1EDD55F50, type metadata accessor for UserStateViewModel);
  v175[0] = sub_1D560C838();
  swift_allocObject();
  swift_weakInit();
  sub_1D560C898();
  v143 = sub_1D560C948();

  v144 = *(v57->isa + 18);
  v145 = *(&v57->isa + v144);
  *(&v57->isa + v144) = v143;

  v146 = sub_1D5615458();
  v147 = v164;
  __swift_storeEnumTagSinglePayload(v164, 1, 1, v146);
  v148 = swift_allocObject();
  swift_weakInit();

  v149 = swift_allocObject();
  v149[2] = 0;
  v149[3] = 0;
  v149[4] = v148;
  sub_1D51ECB60(0, 0, v147, &unk_1D5640118, v149);

  sub_1D4E50004(v169, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v171 + 8))(v172, v173);
  __swift_destroy_boxed_opaque_existential_1(v176);
  return v57;
}

uint64_t sub_1D51A4AC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F98, &qword_1D561C420);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D51A4B38()
{
  type metadata accessor for UploadedVideo();
  sub_1D51AE1F4(&qword_1EC7F1490, type metadata accessor for UploadedVideo);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D51A4C08()
{
  type metadata accessor for UploadedAudio();
  sub_1D51AE1F4(&qword_1EC7F1478, type metadata accessor for UploadedAudio);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D51A4CD8()
{
  type metadata accessor for TVEpisode();
  sub_1D51AE1F4(&qword_1EC7F1468, type metadata accessor for TVEpisode);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D51A4DA8()
{
  sub_1D560EEA8();
  sub_1D51AE1F4(&qword_1EC7F1448, MEMORY[0x1E69754E8]);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D51A4E78()
{
  type metadata accessor for MusicMovie();
  sub_1D51AE1F4(&qword_1EC7F1438, type metadata accessor for MusicMovie);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

void sub_1D51A4F48()
{
  OUTLINED_FUNCTION_47();
  v61 = v3;
  v62 = v4;
  v6 = v5;
  v65 = v7;
  v8 = sub_1D560D238();
  v9 = OUTLINED_FUNCTION_4(v8);
  v63 = v10;
  v64 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_163_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_77();
  v14 = sub_1D560D258();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v58 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_145();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - v23;
  v25 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1D5612F18();
  v26 = *(v17 + 104);
  v57 = *MEMORY[0x1E6974E38];
  v26(v2);
  v27 = sub_1D560D248();
  v59 = v17;
  v28 = *(v17 + 8);
  v28(v2, v14);
  v56 = v24;
  v60 = v14;
  v28(v24, v14);
  if ((v27 & 1) == 0)
  {
    goto LABEL_5;
  }

  v29 = v28;
  v30 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1D5612F08();
  v32 = v63;
  v31 = v64;
  (*(v63 + 104))(v0, *MEMORY[0x1E6974E18], v64);
  v33 = sub_1D560D228();
  v34 = *(v32 + 8);
  v35 = OUTLINED_FUNCTION_98();
  v34(v35);
  (v34)(v1, v31);
  if ((v33 & 1) == 0)
  {
LABEL_5:
    v39 = 4;
    goto LABEL_6;
  }

  v36 = v62;
  v37 = OUTLINED_FUNCTION_81_4();
  if (sub_1D51AA67C(v37, v38))
  {
    v39 = 0;
LABEL_6:
    *v65 = v39;
    OUTLINED_FUNCTION_46();
    return;
  }

  v40 = v6;
  v41 = OUTLINED_FUNCTION_81_4();
  if (sub_1D51AA6C4(v41, v42))
  {
    v39 = 1;
    goto LABEL_6;
  }

  if (v36)
  {
    v43 = ([v36 capabilities] & 1) == 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = v60;
  v45 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  v46 = v58;
  OUTLINED_FUNCTION_0_6();
  sub_1D5612F18();
  v47 = (*(v59 + 88))(v46, v44);
  if (v47 == v57)
  {
    v48 = v40[3];
    v49 = v40[4];
    OUTLINED_FUNCTION_69_15(v40);
    if (sub_1D5612F58())
    {
      goto LABEL_20;
    }

    v50 = v40[3];
    v51 = v40[4];
    OUTLINED_FUNCTION_69_15(v40);
    if ((sub_1D5612F98() & v43 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_18:
    v52 = 3;
    v53 = MEMORY[0x1E69ADEF8];
    goto LABEL_21;
  }

  if (v47 == *MEMORY[0x1E6974E48])
  {
    if (v43)
    {
      goto LABEL_18;
    }

LABEL_20:
    v52 = 2;
    v53 = MEMORY[0x1E69ADEA8];
LABEL_21:
    if (sub_1D51AABEC(v53))
    {
      v39 = v52;
    }

    else
    {
      v39 = 5;
    }

    goto LABEL_6;
  }

  if (v47 == *MEMORY[0x1E6974E40])
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_153();
  sub_1D5615B68();
  OUTLINED_FUNCTION_75_12();
  v54 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  v55 = v56;
  OUTLINED_FUNCTION_0_6();
  sub_1D5612F18();
  sub_1D5615D48();
  v29(v55, v44);
  MEMORY[0x1DA6EAC70](0xD000000000000019, 0x80000001D5686E70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  OUTLINED_FUNCTION_148_6();
  __break(1u);
}

uint64_t sub_1D51A5414()
{
  type metadata accessor for UploadedVideo();
  sub_1D51AE1F4(&qword_1EC7F1490, type metadata accessor for UploadedVideo);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D51A54E4()
{
  type metadata accessor for UploadedAudio();
  sub_1D51AE1F4(&qword_1EC7F1478, type metadata accessor for UploadedAudio);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D51A55B4()
{
  type metadata accessor for TVEpisode();
  sub_1D51AE1F4(&qword_1EC7F1468, type metadata accessor for TVEpisode);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D51A5684()
{
  sub_1D560EEA8();
  sub_1D51AE1F4(&qword_1EC7F1448, MEMORY[0x1E69754E8]);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D51A5754()
{
  type metadata accessor for MusicMovie();
  sub_1D51AE1F4(&qword_1EC7F1438, type metadata accessor for MusicMovie);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

void sub_1D51A5824()
{
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_118_7();
  v0(0);
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_6_58();
  sub_1D560C908();
  OUTLINED_FUNCTION_63_5();
}

void sub_1D51A58AC()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v4 = sub_1D560C988();
  v5 = OUTLINED_FUNCTION_4(v4);
  v28 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v27 = sub_1D560C9B8();
  v9 = OUTLINED_FUNCTION_4(v27);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  sub_1D4ECC7A8(0, &qword_1EDD5F060, 0x1E69E9610);
  v17 = sub_1D5615738();
  OUTLINED_FUNCTION_40_13();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_59();
  swift_weakLoadStrong();
  swift_weakInit();

  v29[4] = v3;
  v29[5] = v18;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  OUTLINED_FUNCTION_62_21();
  v29[2] = v19;
  v29[3] = v1;
  v20 = _Block_copy(v29);

  sub_1D560C9A8();
  v29[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_61_20();
  sub_1D51AE1F4(v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0108, &unk_1D563C2C0);
  OUTLINED_FUNCTION_67_19(&qword_1EDD5D060);
  OUTLINED_FUNCTION_135_7();
  v23 = OUTLINED_FUNCTION_146_3();
  MEMORY[0x1DA6EB530](v23);
  _Block_release(v20);

  v24 = *(v28 + 8);
  v25 = OUTLINED_FUNCTION_134_0();
  v26(v25);
  (*(v11 + 8))(v16, v27);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51A5B1C(uint64_t a1, void (*a2)(void))
{
  OUTLINED_FUNCTION_59();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_1D51A5B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16_0();
  v10 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  OUTLINED_FUNCTION_40_13();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_59();
  swift_weakLoadStrong();
  swift_weakInit();

  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  sub_1D51ECB60(0, 0, v4, a4, v12);
}

uint64_t sub_1D51A5CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_28_40();
  Strong = swift_weakLoadStrong();
  *(v10 + 64) = Strong;
  if (Strong)
  {
    if (qword_1EDD55F58 != -1)
    {
      OUTLINED_FUNCTION_32_4();
    }

    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_27_39();

    OUTLINED_FUNCTION_3_98();
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_87_11(v17);
    v20 = 256;
    if (!v11)
    {
      v20 = 0;
    }

    v21 = v20 | KeyPath;
    v22 = 0x10000;
    if (!v12)
    {
      v22 = 0;
    }

    *v18 = v19;
    OUTLINED_FUNCTION_11_69(v18, v21 | v22 | (v13 << 24) | (v14 << 32));
    OUTLINED_FUNCTION_25_3();

    return sub_1D51A75BC(v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_25_3();

    return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }
}

uint64_t sub_1D51A5E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_28_40();
  Strong = swift_weakLoadStrong();
  *(v10 + 64) = Strong;
  if (Strong)
  {
    if (qword_1EDD55F58 != -1)
    {
      OUTLINED_FUNCTION_32_4();
    }

    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_27_39();

    OUTLINED_FUNCTION_3_98();
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_87_11(v17);
    v20 = 256;
    if (!v11)
    {
      v20 = 0;
    }

    v21 = v20 | KeyPath;
    v22 = 0x10000;
    if (!v12)
    {
      v22 = 0;
    }

    *v18 = v19;
    OUTLINED_FUNCTION_11_69(v18, v21 | v22 | (v13 << 24) | (v14 << 32));
    OUTLINED_FUNCTION_25_3();

    return sub_1D51A78C0(v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_25_3();

    return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }
}

uint64_t sub_1D51A5F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_28_40();
  Strong = swift_weakLoadStrong();
  *(v10 + 64) = Strong;
  if (Strong)
  {
    if (qword_1EDD55F58 != -1)
    {
      OUTLINED_FUNCTION_32_4();
    }

    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_27_39();

    OUTLINED_FUNCTION_3_98();
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_87_11(v17);
    v20 = 256;
    if (!v11)
    {
      v20 = 0;
    }

    v21 = v20 | KeyPath;
    v22 = 0x10000;
    if (!v12)
    {
      v22 = 0;
    }

    *v18 = v19;
    OUTLINED_FUNCTION_11_69(v18, v21 | v22 | (v13 << 24) | (v14 << 32));
    OUTLINED_FUNCTION_25_3();

    return sub_1D51A7BC4(v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_25_3();

    return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }
}

uint64_t sub_1D51A60FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_28_40();
  Strong = swift_weakLoadStrong();
  *(v10 + 64) = Strong;
  if (Strong)
  {
    if (qword_1EDD55F58 != -1)
    {
      OUTLINED_FUNCTION_32_4();
    }

    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_27_39();

    OUTLINED_FUNCTION_3_98();
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_87_11(v17);
    v20 = 256;
    if (!v11)
    {
      v20 = 0;
    }

    v21 = v20 | KeyPath;
    v22 = 0x10000;
    if (!v12)
    {
      v22 = 0;
    }

    *v18 = v19;
    OUTLINED_FUNCTION_11_69(v18, v21 | v22 | (v13 << 24) | (v14 << 32));
    OUTLINED_FUNCTION_25_3();

    return sub_1D51A7EC8(v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_25_3();

    return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }
}

uint64_t sub_1D51A6270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_28_40();
  Strong = swift_weakLoadStrong();
  *(v10 + 64) = Strong;
  if (Strong)
  {
    if (qword_1EDD55F58 != -1)
    {
      OUTLINED_FUNCTION_32_4();
    }

    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_27_39();

    OUTLINED_FUNCTION_3_98();
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_87_11(v17);
    v20 = 256;
    if (!v11)
    {
      v20 = 0;
    }

    v21 = v20 | KeyPath;
    v22 = 0x10000;
    if (!v12)
    {
      v22 = 0;
    }

    *v18 = v19;
    OUTLINED_FUNCTION_11_69(v18, v21 | v22 | (v13 << 24) | (v14 << 32));
    OUTLINED_FUNCTION_25_3();

    return sub_1D51A8144(v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_25_3();

    return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }
}

uint64_t sub_1D51A63E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_28_40();
  Strong = swift_weakLoadStrong();
  *(v10 + 64) = Strong;
  if (Strong)
  {
    if (qword_1EDD55F58 != -1)
    {
      OUTLINED_FUNCTION_32_4();
    }

    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_27_39();

    OUTLINED_FUNCTION_3_98();
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_87_11(v17);
    v20 = 256;
    if (!v11)
    {
      v20 = 0;
    }

    v21 = v20 | KeyPath;
    v22 = 0x10000;
    if (!v12)
    {
      v22 = 0;
    }

    *v18 = v19;
    OUTLINED_FUNCTION_11_69(v18, v21 | v22 | (v13 << 24) | (v14 << 32));
    OUTLINED_FUNCTION_25_3();

    return sub_1D51A83C0(v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_25_3();

    return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }
}

uint64_t sub_1D51A6538()
{
  OUTLINED_FUNCTION_80();
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v8 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v8;

  v5 = *(v8 + 64) == 0;
  v6 = *(v8 + 8);

  return v6(v5);
}

uint64_t sub_1D51A6688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_28_40();
  Strong = swift_weakLoadStrong();
  *(v10 + 64) = Strong;
  if (Strong)
  {
    if (qword_1EDD55F58 != -1)
    {
      OUTLINED_FUNCTION_32_4();
    }

    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_27_39();

    OUTLINED_FUNCTION_3_98();
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_87_11(v17);
    v20 = 256;
    if (!v11)
    {
      v20 = 0;
    }

    v21 = v20 | KeyPath;
    v22 = 0x10000;
    if (!v12)
    {
      v22 = 0;
    }

    *v18 = v19;
    OUTLINED_FUNCTION_11_69(v18, v21 | v22 | (v13 << 24) | (v14 << 32));
    OUTLINED_FUNCTION_25_3();

    return sub_1D51A8678(v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_25_3();

    return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }
}

uint64_t sub_1D51A67FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_28_40();
  Strong = swift_weakLoadStrong();
  *(v10 + 64) = Strong;
  if (Strong)
  {
    if (qword_1EDD55F58 != -1)
    {
      OUTLINED_FUNCTION_32_4();
    }

    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_27_39();

    OUTLINED_FUNCTION_3_98();
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_87_11(v17);
    v20 = 256;
    if (!v11)
    {
      v20 = 0;
    }

    v21 = v20 | KeyPath;
    v22 = 0x10000;
    if (!v12)
    {
      v22 = 0;
    }

    *v18 = v19;
    OUTLINED_FUNCTION_11_69(v18, v21 | v22 | (v13 << 24) | (v14 << 32));
    OUTLINED_FUNCTION_25_3();

    return sub_1D51A897C(v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_25_3();

    return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }
}

uint64_t sub_1D51A6970()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 56) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_15_56();

    return v6(v5);
  }
}

uint64_t sub_1D51A6A28()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  sub_1D51A96E4();

  v3 = OUTLINED_FUNCTION_7_74();

  return v4(v3);
}

uint64_t sub_1D51A6AAC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 56) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_15_56();

    return v6(v5);
  }
}

uint64_t sub_1D51A6B64()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  sub_1D51A9898();

  v3 = OUTLINED_FUNCTION_7_74();

  return v4(v3);
}

uint64_t sub_1D51A6BE8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 56) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_15_56();

    return v6(v5);
  }
}

uint64_t sub_1D51A6CA0()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  sub_1D51A9A4C();

  v3 = OUTLINED_FUNCTION_7_74();

  return v4(v3);
}

uint64_t sub_1D51A6D24()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 56) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_15_56();

    return v6(v5);
  }
}

uint64_t sub_1D51A6DDC()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  sub_1D51A9C00();

  v3 = OUTLINED_FUNCTION_7_74();

  return v4(v3);
}

uint64_t sub_1D51A6E60()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 56) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_15_56();

    return v6(v5);
  }
}

uint64_t sub_1D51A6F18()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  sub_1D51A9DB8();

  v3 = OUTLINED_FUNCTION_7_74();

  return v4(v3);
}

uint64_t sub_1D51A6F9C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 56) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_15_56();

    return v6(v5);
  }
}

uint64_t sub_1D51A7054()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  sub_1D51A9F70();

  v3 = OUTLINED_FUNCTION_7_74();

  return v4(v3);
}

uint64_t sub_1D51A70D8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 56) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_15_56();

    return v6(v5);
  }
}

uint64_t sub_1D51A7190()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  sub_1D51AA178();

  v3 = OUTLINED_FUNCTION_7_74();

  return v4(v3);
}

uint64_t sub_1D51A7214()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 56) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_15_56();

    return v6(v5);
  }
}

uint64_t sub_1D51A72CC()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  sub_1D51AA32C();

  v3 = OUTLINED_FUNCTION_7_74();

  return v4(v3);
}

void sub_1D51A7330()
{
  OUTLINED_FUNCTION_64_4();
  v0(0);
  v1 = OUTLINED_FUNCTION_61();
  sub_1D51AE1F4(v1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  OUTLINED_FUNCTION_63_5();
}

uint64_t sub_1D51A73E8(void (*a1)(void))
{
  a1(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  return v2;
}

void sub_1D51A7484()
{
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_118_7();
  v0(0);
  v1 = OUTLINED_FUNCTION_61();
  sub_1D51AE1F4(v1, v2);
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_6_58();
  sub_1D560C908();
  OUTLINED_FUNCTION_63_5();
}

void sub_1D51A7528()
{
  OUTLINED_FUNCTION_64_4();
  v0(0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D560C908();
  OUTLINED_FUNCTION_63_5();
}

uint64_t sub_1D51A75BC(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D51A7608, 0, 0);
}

uint64_t sub_1D51A7808()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_33_35();
  OUTLINED_FUNCTION_128();
  sub_1D51A8BF8();
  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D51A78C0(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D51A790C, 0, 0);
}

uint64_t sub_1D51A7B0C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_33_35();
  OUTLINED_FUNCTION_128();
  sub_1D51A8BF8();
  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D51A7BC4(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D51A7C10, 0, 0);
}

uint64_t sub_1D51A7E10()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_33_35();
  OUTLINED_FUNCTION_128();
  sub_1D51A8BF8();
  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D51A7EC8(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D51A7F14, 0, 0);
}

uint64_t sub_1D51A80BC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_33_35();
  OUTLINED_FUNCTION_66_13();
  OUTLINED_FUNCTION_128();
  sub_1D51A8F28();
  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D51A8144(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D51A8190, 0, 0);
}

uint64_t sub_1D51A8338()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_33_35();
  OUTLINED_FUNCTION_65_18();
  OUTLINED_FUNCTION_128();
  sub_1D51A8F28();
  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D51A83C0(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D51A840C, 0, 0);
}

uint64_t sub_1D51A85B4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_33_35();
  v0 = OUTLINED_FUNCTION_128();
  sub_1D51A92E8(v0);
  v1 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D51A861C()
{
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D51A8678(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D51A86C4, 0, 0);
}

uint64_t sub_1D51A88C4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_33_35();
  OUTLINED_FUNCTION_128();
  sub_1D51A8BF8();
  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D51A897C(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D51A89C8, 0, 0);
}

uint64_t sub_1D51A8B70()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_33_35();
  OUTLINED_FUNCTION_64_14();
  OUTLINED_FUNCTION_128();
  sub_1D51A8F28();
  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

void sub_1D51A8BF8()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v29 = v8;
  v9 = v8;
  v11 = v10(0);
  OUTLINED_FUNCTION_14(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  if (v9 == 10)
  {
    if (qword_1EDD544A0 != -1)
    {
      OUTLINED_FUNCTION_1_100();
    }

    v15 = sub_1D560C758();
    __swift_project_value_buffer(v15, qword_1EDD76AD8);
    OUTLINED_FUNCTION_0_6();

    v16 = sub_1D560C738();
    v17 = sub_1D56156E8();

    if (os_log_type_enabled(v16, v17))
    {
      v28 = v2;
      v18 = OUTLINED_FUNCTION_142();
      v30 = swift_slowAlloc();
      *v18 = 136446210;
      v4 = *(*v5 + 120);
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_150_6();
      v19 = sub_1D5614DB8();
      OUTLINED_FUNCTION_132_6(v19, v20);
      OUTLINED_FUNCTION_145_3();
      v7 = v7;

      *(v18 + 4) = v11;
      _os_log_impl(&dword_1D4E3F000, v16, v17, "Updated item state for item, %{public}s, returned playable.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      OUTLINED_FUNCTION_122();
      v2 = v28;
LABEL_10:
      OUTLINED_FUNCTION_122();
    }
  }

  else
  {
    if (qword_1EDD544A0 != -1)
    {
      OUTLINED_FUNCTION_1_100();
    }

    v21 = sub_1D560C758();
    __swift_project_value_buffer(v21, qword_1EDD76AD8);
    OUTLINED_FUNCTION_0_6();

    v16 = sub_1D560C738();
    v22 = sub_1D56156E8();

    if (os_log_type_enabled(v16, v22))
    {
      v23 = swift_slowAlloc();
      swift_slowAlloc();
      *v23 = 136446466;
      v4 = *(*v5 + 120);
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_150_6();
      v24 = sub_1D5614DB8();
      OUTLINED_FUNCTION_132_6(v24, v25);
      OUTLINED_FUNCTION_145_3();

      *(v23 + 4) = v11;
      *(v23 + 12) = 2082;
      v26 = sub_1D5614DB8();
      OUTLINED_FUNCTION_132_6(v26, v27);
      OUTLINED_FUNCTION_145_3();
      v7 = v7;

      *(v23 + 14) = v11;
      _os_log_impl(&dword_1D4E3F000, v16, v22, "Updated item state for item, %{public}s, returned unplayable with reason %{public}s", v23, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_122();
      goto LABEL_10;
    }
  }

  v4(v29);
  v2(v7);
  OUTLINED_FUNCTION_46();
}

void sub_1D51A8F28()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v33 = v2;
  v4 = v3;
  v5 = v3;
  v7 = v6(0);
  OUTLINED_FUNCTION_4(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  if (v5 == 10)
  {
    LODWORD(v32) = v4;
    if (qword_1EDD544A0 != -1)
    {
      OUTLINED_FUNCTION_1_100();
    }

    v15 = sub_1D560C758();
    __swift_project_value_buffer(v15, qword_1EDD76AD8);
    OUTLINED_FUNCTION_206_0();

    v16 = sub_1D560C738();
    v17 = sub_1D56156E8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_142();
      v31 = swift_slowAlloc();
      v35 = v31;
      *v18 = 136446210;
      v19 = *(*v1 + 120);
      OUTLINED_FUNCTION_59();
      (*(v9 + 16))(v14, v1 + v19, v7);
      v20 = sub_1D5614DB8();
      OUTLINED_FUNCTION_132_6(v20, v21);
      OUTLINED_FUNCTION_145_3();

      *(v18 + 4) = v14;
      _os_log_impl(&dword_1D4E3F000, v16, v17, "Updated item state for item, %{public}s, returned playable.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      OUTLINED_FUNCTION_46_6();
      OUTLINED_FUNCTION_122();
    }
  }

  else
  {
    v32 = v9;
    if (qword_1EDD544A0 != -1)
    {
      OUTLINED_FUNCTION_1_100();
    }

    v22 = sub_1D560C758();
    __swift_project_value_buffer(v22, qword_1EDD76AD8);
    OUTLINED_FUNCTION_206_0();

    v16 = sub_1D560C738();
    v23 = sub_1D56156E8();

    if (os_log_type_enabled(v16, v23))
    {
      v24 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35 = v31;
      *v24 = 136446466;
      v25 = *(*v1 + 120);
      OUTLINED_FUNCTION_59();
      (*(v32 + 16))(v14, v1 + v25, v7);
      v26 = sub_1D5614DB8();
      OUTLINED_FUNCTION_132_6(v26, v27);
      OUTLINED_FUNCTION_145_3();

      *(v24 + 4) = v14;
      *(v24 + 12) = 2082;
      v34 = v4;
      v28 = sub_1D5614DB8();
      OUTLINED_FUNCTION_132_6(v28, v29);
      OUTLINED_FUNCTION_145_3();

      *(v24 + 14) = v14;
      _os_log_impl(&dword_1D4E3F000, v16, v23, "Updated item state for item, %{public}s, returned unplayable with reason %{public}s", v24, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_46_6();
      OUTLINED_FUNCTION_122();
    }
  }

  sub_1D51A5824();
  sub_1D51A5824();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51A92E8(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  v5 = sub_1D560EEA8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 == 10)
  {
    if (qword_1EDD544A0 != -1)
    {
      swift_once();
    }

    v10 = sub_1D560C758();
    __swift_project_value_buffer(v10, qword_1EDD76AD8);

    v11 = sub_1D560C738();
    v12 = sub_1D56156E8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      *v13 = 136446210;
      v14 = *(*v2 + 120);
      swift_beginAccess();
      (*(v6 + 16))(v9, v2 + v14, v5);
      v15 = sub_1D5614DB8();
      v17 = sub_1D4E6835C(v15, v16, &v34);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1D4E3F000, v11, v12, "Updated item state for item, %{public}s, returned playable.", v13, 0xCu);
      v18 = v32;
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1DA6ED200](v18, -1, -1);
      v19 = v13;
LABEL_10:
      MEMORY[0x1DA6ED200](v19, -1, -1);
    }
  }

  else
  {
    if (qword_1EDD544A0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D560C758();
    __swift_project_value_buffer(v20, qword_1EDD76AD8);

    v11 = sub_1D560C738();
    v21 = sub_1D56156E8();

    if (os_log_type_enabled(v11, v21))
    {
      v22 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      *v22 = 136446466;
      v23 = *(*v2 + 120);
      swift_beginAccess();
      (*(v6 + 16))(v9, v2 + v23, v5);
      v24 = sub_1D5614DB8();
      v26 = sub_1D4E6835C(v24, v25, &v34);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      v33 = a1;
      v27 = sub_1D5614DB8();
      v29 = sub_1D4E6835C(v27, v28, &v34);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_1D4E3F000, v11, v21, "Updated item state for item, %{public}s, returned unplayable with reason %{public}s", v22, 0x16u);
      v30 = v32;
      swift_arrayDestroy();
      MEMORY[0x1DA6ED200](v30, -1, -1);
      v19 = v22;
      goto LABEL_10;
    }
  }

  sub_1D51A4DA8();
  return sub_1D51A5684();
}

uint64_t sub_1D51A96E4()
{
  v1 = type metadata accessor for UploadedVideo();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*v0 + 120);
  swift_beginAccess();
  sub_1D51A1FBC(v0 + v5, v4);
  v6 = *(v0 + *(*v0 + 136));
  LODWORD(v5) = sub_1D51AAEA4(v4, v0 + *(*v0 + 128)) & 1;
  sub_1D51A7330();
  if (v5 != (v7 & 1))
  {
    sub_1D51A7484();
  }

  return sub_1D51A34D0(v4, type metadata accessor for UploadedVideo);
}

uint64_t sub_1D51A9898()
{
  v1 = type metadata accessor for UploadedAudio();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*v0 + 120);
  swift_beginAccess();
  sub_1D51A1FBC(v0 + v5, v4);
  v6 = *(v0 + *(*v0 + 136));
  LODWORD(v5) = sub_1D51AB158(v4, v0 + *(*v0 + 128)) & 1;
  sub_1D51A7330();
  if (v5 != (v7 & 1))
  {
    sub_1D51A7484();
  }

  return sub_1D51A34D0(v4, type metadata accessor for UploadedAudio);
}

uint64_t sub_1D51A9A4C()
{
  v1 = type metadata accessor for TVEpisode();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*v0 + 120);
  swift_beginAccess();
  sub_1D51A1FBC(v0 + v5, v4);
  v6 = *(v0 + *(*v0 + 136));
  LODWORD(v5) = sub_1D51AB40C(v4, v0 + *(*v0 + 128)) & 1;
  sub_1D51A7330();
  if (v5 != (v7 & 1))
  {
    sub_1D51A7484();
  }

  return sub_1D51A34D0(v4, type metadata accessor for TVEpisode);
}

uint64_t sub_1D51A9C00()
{
  v1 = sub_1D5613838();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*v0 + 120);
  swift_beginAccess();
  (*(v2 + 16))(v5, v0 + v6, v1);
  LODWORD(v6) = sub_1D51AB820(v5, v0 + *(*v0 + 128), *(v0 + *(*v0 + 136)), MEMORY[0x1E6976BE8], MEMORY[0x1E6976BD0]) & 1;
  if (v6 != (sub_1D51A73E8(MEMORY[0x1E6976BE8]) & 1))
  {
    sub_1D51A7528();
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1D51A9DB8()
{
  v1 = sub_1D5614898();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*v0 + 120);
  swift_beginAccess();
  (*(v2 + 16))(v5, v0 + v6, v1);
  LODWORD(v6) = sub_1D51AB820(v5, v0 + *(*v0 + 128), *(v0 + *(*v0 + 136)), MEMORY[0x1E69773E0], MEMORY[0x1E69773C8]) & 1;
  if (v6 != (sub_1D51A73E8(MEMORY[0x1E69773E0]) & 1))
  {
    sub_1D51A7528();
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1D51A9F70()
{
  v1 = sub_1D560EEA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*v0 + 120);
  swift_beginAccess();
  (*(v2 + 16))(v5, v0 + v6, v1);
  LODWORD(v6) = sub_1D51AB820(v5, v0 + *(*v0 + 128), *(v0 + *(*v0 + 136)), MEMORY[0x1E69754E8], MEMORY[0x1E69754D0]) & 1;
  sub_1D51A7330();
  if (v6 != (v7 & 1))
  {
    sub_1D51A7484();
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1D51AA178()
{
  v1 = type metadata accessor for MusicMovie();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*v0 + 120);
  swift_beginAccess();
  sub_1D51A1FBC(v0 + v5, v4);
  v6 = *(v0 + *(*v0 + 136));
  LODWORD(v5) = sub_1D51ABD24(v4, v0 + *(*v0 + 128)) & 1;
  sub_1D51A7330();
  if (v5 != (v7 & 1))
  {
    sub_1D51A7484();
  }

  return sub_1D51A34D0(v4, type metadata accessor for MusicMovie);
}

uint64_t sub_1D51AA32C()
{
  v1 = sub_1D5613AF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*v0 + 120);
  swift_beginAccess();
  (*(v2 + 16))(v5, v0 + v6, v1);
  LODWORD(v6) = sub_1D51AB820(v5, v0 + *(*v0 + 128), *(v0 + *(*v0 + 136)), MEMORY[0x1E6976D28], MEMORY[0x1E6976D10]) & 1;
  if (v6 != (sub_1D51A73E8(MEMORY[0x1E6976D28]) & 1))
  {
    sub_1D51A7528();
  }

  return (*(v2 + 8))(v5, v1);
}

void sub_1D51AA4E4()
{
  OUTLINED_FUNCTION_64_4();
  v0 = [objc_opt_self() sharedMonitor];
  OUTLINED_FUNCTION_9_0();
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0x726F7774656E200ALL, 0xEF203A657079546BLL);
  [v0 networkType];
  type metadata accessor for ICEnvironmentNetworkType();
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v6 = v1;
  v2 = [v0 isNetworkConstrained];
  v3 = v2 == 0;
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v4, v5);

  MEMORY[0x1DA6EAC70](0xD00000000000001ALL, v6);

  OUTLINED_FUNCTION_63_5();
}

uint64_t sub_1D51AA67C(void *a1, int a2)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = OUTLINED_FUNCTION_69_15(a1);
  return MEMORY[0x1DA6E8D10](v5) & ((a2 & 0xFF000000) == 0x2000000);
}

uint64_t sub_1D51AA6C4(void *a1, char a2)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = OUTLINED_FUNCTION_206_0();
  if (MEMORY[0x1DA6E8D10](v5, v4) & 1) == 0 || (a2)
  {
    return 0;
  }

  sub_1D5612AE8();
  sub_1D5612AD8();
  v6 = sub_1D5612AB8();

  v7 = a1[3];
  v8 = a1[4];
  v9 = OUTLINED_FUNCTION_128();
  __swift_project_boxed_opaque_existential_1(v9, v10);
  OUTLINED_FUNCTION_0_6();
  if (v6)
  {
    v11 = sub_1D5612F38();
  }

  else
  {
    v11 = sub_1D5612FA8();
  }

  return v11 & 1;
}

BOOL sub_1D51AA76C(uint64_t a1, __int16 a2)
{
  v4 = (a2 & 0x100) == 0;
  v5 = sub_1D560EEA8();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_77();
  sub_1D4E628D4(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  if (!swift_dynamicCast())
  {
    sub_1D4E628D4(a1, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
    if (swift_dynamicCast())
    {
      sub_1D4E48324(v16, v19);
      __swift_project_boxed_opaque_existential_1(v19, v19[3]);
      OUTLINED_FUNCTION_50_19();
      sub_1D560D078();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
      if (swift_dynamicCast())
      {
        v12 = *(v8 + 8);
        v13 = OUTLINED_FUNCTION_61();
        v14(v13);
        __swift_destroy_boxed_opaque_existential_1(v19);
        return v4;
      }

      __swift_destroy_boxed_opaque_existential_1(v19);
    }

    else
    {
      v17 = 0;
      memset(v16, 0, sizeof(v16));
      sub_1D4E50004(v16, &qword_1EC7EC520, &unk_1D5621050);
    }

    return 0;
  }

  (*(v8 + 8))(v2, v5);
  return v4;
}

void sub_1D51AA978(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [objc_opt_self() sharedMonitor];
  v5 = [v4 networkType];

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_50_19();
  if (sub_1D5612F58())
  {
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    OUTLINED_FUNCTION_50_19();
    v8 = sub_1D5612FC8();
    v9 = 10;
    if ((v8 & 1) != 0 && !v5)
    {
      sub_1D4ECC7A8(0, &qword_1EC7F1428, 0x1E69E4498);
      v10 = sub_1D5372774();
      v11 = [v10 hasOfflinePlaybackKeys];

      if (v11)
      {
        v9 = 10;
      }

      else
      {
        v9 = 11;
      }
    }
  }

  else
  {
    v9 = 11;
  }

  *a2 = v9;
}

void sub_1D51AAA94(void *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_50_19();
  if (sub_1D5612F78() & 1) != 0 || (v5 = a1[4], __swift_project_boxed_opaque_existential_1(a1, a1[3]), OUTLINED_FUNCTION_50_19(), (sub_1D5612F68()))
  {
    sub_1D51AAB58(&v8);
    v6 = v8;
    if (v8 == 11)
    {
      v6 = 10;
    }
  }

  else
  {
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    OUTLINED_FUNCTION_206_0();
    if (sub_1D5612F88())
    {
      v6 = 8;
    }

    else
    {
      v6 = 1;
    }
  }

  *a2 = v6;
}

void sub_1D51AAB58(char *a1@<X8>)
{
  v2 = [objc_opt_self() sharedMonitor];
  v3 = [v2 networkType];

  if (ICEnvironmentNetworkTypeIsCellular() && (sub_1D51AAC54(), (v4 & 1) == 0))
  {
    v5 = 4;
  }

  else if (v3)
  {
    v5 = 11;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

id sub_1D51AABEC(void *a1)
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v3 = result;
    v4 = [result effectiveBoolValueForSetting_];

    return (v4 == 2);
  }

  return result;
}

void sub_1D51AAC54()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_147();
  v2 = sub_1D560D238();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_163_1();
  MEMORY[0x1EEE9AC00](v8);
  v9 = objc_opt_self();
  v10 = [v9 standardUserDefaults];
  [v10 preferredMusicLowBandwidthResolution];

  v11 = [v9 standardUserDefaults];
  [v11 preferredVideoLowBandwidthResolution];

  v12 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_1D5612F08();
  (*(v5 + 104))(v1, *MEMORY[0x1E6974E20], v2);
  OUTLINED_FUNCTION_61();
  sub_1D560D228();
  v13 = *(v5 + 8);
  v14 = OUTLINED_FUNCTION_98();
  v13(v14);
  v15 = OUTLINED_FUNCTION_134_0();
  v13(v15);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51AADF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A6950(a2, a3, a4);
}

uint64_t sub_1D51AAEA4(uint64_t a1, uint64_t a2)
{
  v19[3] = type metadata accessor for UploadedVideo();
  v19[4] = sub_1D51AE1F4(&qword_1EC7EB6E8, type metadata accessor for UploadedVideo);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  sub_1D51A1FBC(a1, boxed_opaque_existential_0);
  sub_1D4E628D4(v19, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v14, v18);
    sub_1D5267BA4(v18, a2, v5, v6, v7, v8, v9, v10, v14, *(&v14 + 1), v15, *(&v15 + 1), v16, v17[0], v17[1], v17[2], v17[3], v17[4], v18[0], v18[1]);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    sub_1D4E50004(&v14, &qword_1EC7EEC40, &unk_1D561C070);
    v12 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v12 & 1;
}

uint64_t sub_1D51AAFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A5C80(a2, a3, a4);
}

uint64_t sub_1D51AB0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A6A8C(a2, a3, a4);
}

uint64_t sub_1D51AB158(uint64_t a1, uint64_t a2)
{
  v19[3] = type metadata accessor for UploadedAudio();
  v19[4] = sub_1D51AE1F4(&qword_1EC7EB6F0, type metadata accessor for UploadedAudio);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  sub_1D51A1FBC(a1, boxed_opaque_existential_0);
  sub_1D4E628D4(v19, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v14, v18);
    sub_1D5267BA4(v18, a2, v5, v6, v7, v8, v9, v10, v14, *(&v14 + 1), v15, *(&v15 + 1), v16, v17[0], v17[1], v17[2], v17[3], v17[4], v18[0], v18[1]);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    sub_1D4E50004(&v14, &qword_1EC7EEC40, &unk_1D561C070);
    v12 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v12 & 1;
}

uint64_t sub_1D51AB2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A5DF4(a2, a3, a4);
}

uint64_t sub_1D51AB35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A6BC8(a2, a3, a4);
}

uint64_t sub_1D51AB40C(uint64_t a1, uint64_t a2)
{
  v19[3] = type metadata accessor for TVEpisode();
  v19[4] = sub_1D51AE1F4(&qword_1EC7EB6F8, type metadata accessor for TVEpisode);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  sub_1D51A1FBC(a1, boxed_opaque_existential_0);
  sub_1D4E628D4(v19, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v14, v18);
    sub_1D5267BA4(v18, a2, v5, v6, v7, v8, v9, v10, v14, *(&v14 + 1), v15, *(&v15 + 1), v16, v17[0], v17[1], v17[2], v17[3], v17[4], v18[0], v18[1]);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    sub_1D4E50004(&v14, &qword_1EC7EEC40, &unk_1D561C070);
    v12 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v12 & 1;
}

uint64_t sub_1D51AB560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A5F68(a2, a3, a4);
}

uint64_t sub_1D51AB610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A6D04(a2, a3, a4);
}

uint64_t sub_1D51AB6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A60DC(a2, a3, a4);
}

uint64_t sub_1D51AB770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A6E40(a2, a3, a4);
}

uint64_t sub_1D51AB820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = a4(0);
  v23[3] = v7;
  v23[4] = a5;
  __swift_allocate_boxed_opaque_existential_0(v23);
  OUTLINED_FUNCTION_24_0(v7);
  (*(v8 + 16))();
  sub_1D4E628D4(v23, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v18, v22);
    sub_1D5267BA4(v22, a2, v9, v10, v11, v12, v13, v14, v18, *(&v18 + 1), v19, *(&v19 + 1), v20, v21[0], v21[1], v21[2], v21[3], v21[4], v22[0], v22[1]);
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_1D4E50004(&v18, &qword_1EC7EEC40, &unk_1D561C070);
    v16 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v16 & 1;
}

uint64_t sub_1D51AB95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A6250(a2, a3, a4);
}

uint64_t sub_1D51ABA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51ABABC;

  return sub_1D51A6F7C(a2, a3, a4);
}

uint64_t sub_1D51ABABC()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  *v4 = v2 & 1;
  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_1D51ABBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A63C4(a2, a3, a4);
}

uint64_t sub_1D51ABC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A70B8(a2, a3, a4);
}

uint64_t sub_1D51ABD24(uint64_t a1, uint64_t a2)
{
  v19[3] = type metadata accessor for MusicMovie();
  v19[4] = sub_1D51AE1F4(&unk_1EC7EB700, type metadata accessor for MusicMovie);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  sub_1D51A1FBC(a1, boxed_opaque_existential_0);
  sub_1D4E628D4(v19, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v14, v18);
    sub_1D5267BA4(v18, a2, v5, v6, v7, v8, v9, v10, v14, *(&v14 + 1), v15, *(&v15 + 1), v16, v17[0], v17[1], v17[2], v17[3], v17[4], v18[0], v18[1]);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    sub_1D4E50004(&v14, &qword_1EC7EEC40, &unk_1D561C070);
    v12 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v12 & 1;
}

uint64_t sub_1D51ABE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A6668(a2, a3, a4);
}

void sub_1D51ABF28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D5197F48();
}

void sub_1D51ABF70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_64_14();
  sub_1D51982A0();
}

uint64_t sub_1D51AC02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A71F4(a2, a3, a4);
}

uint64_t sub_1D51AC0DC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D51AC16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A67DC(a2, a3, a4);
}

uint64_t sub_1D51AC21C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1D51AC2DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D5197F48();
}

uint64_t sub_1D51AC3D4()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D51AC464()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1D51AC524()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D5197F48();
}

uint64_t sub_1D51AC61C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D51AC6AC()
{
  OUTLINED_FUNCTION_60();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1D51AC794()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1D51AC854()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D5197F48();
}

void sub_1D51AC89C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_65_18();
  sub_1D51982A0();
}

uint64_t sub_1D51AC958()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D51AC9E8()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1D51ACAA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D5197F48();
}

void sub_1D51ACAF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_66_13();
  sub_1D51982A0();
}

uint64_t sub_1D51ACBAC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1D51ACC3C()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  OUTLINED_FUNCTION_147();
  v2 = sub_1D560D258();
  v44 = OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_70_0();
  v5 = sub_1D560D238();
  v43 = OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5();
  v8 = OUTLINED_FUNCTION_70_0();
  v9 = v1(v8);
  OUTLINED_FUNCTION_4(v9);
  v45 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31();
  v15 = *(v14 + 16);
  OUTLINED_FUNCTION_6_58();
  v16();
  OUTLINED_FUNCTION_153();
  sub_1D5615B68();

  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_20_49();
  sub_1D5612F98();
  OUTLINED_FUNCTION_94_12();
  v19 = v18 | 0x65750000u;
  if (v17)
  {
    v20 = 0x65736C6166;
  }

  else
  {
    v20 = v19;
  }

  if (v17)
  {
    v21 = 0xE500000000000000;
  }

  else
  {
    v21 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v20, v21);

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_20_49();
  sub_1D5612F88();
  OUTLINED_FUNCTION_119_6();

  OUTLINED_FUNCTION_51_21();

  OUTLINED_FUNCTION_70_12();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_67(v22);
  sub_1D5612FB8();
  OUTLINED_FUNCTION_119_6();

  OUTLINED_FUNCTION_51_21();

  OUTLINED_FUNCTION_70_12();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v24 = OUTLINED_FUNCTION_10_67(v23);
  MEMORY[0x1DA6E8D10](v24);
  OUTLINED_FUNCTION_94_12();
  OUTLINED_FUNCTION_119_6();

  OUTLINED_FUNCTION_51_21();

  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_67(v25);
  sub_1D5612F38();
  OUTLINED_FUNCTION_94_12();
  OUTLINED_FUNCTION_119_6();

  OUTLINED_FUNCTION_51_21();

  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_67(v26);
  sub_1D5612F58();
  OUTLINED_FUNCTION_94_12();
  OUTLINED_FUNCTION_119_6();

  OUTLINED_FUNCTION_51_21();

  sub_1D5615B68();
  OUTLINED_FUNCTION_33_9();
  MEMORY[0x1DA6EAC70](0xD000000000000034, 0x80000001D5686CD0);
  OUTLINED_FUNCTION_20_49();
  sub_1D5612FC8();
  OUTLINED_FUNCTION_94_12();
  OUTLINED_FUNCTION_119_6();

  OUTLINED_FUNCTION_51_21();

  sub_1D5615B68();

  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_10_67(v27);
  sub_1D5612F78();
  OUTLINED_FUNCTION_119_6();

  OUTLINED_FUNCTION_51_21();

  sub_1D5615B68();

  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_10_67(v28);
  sub_1D5612F68();
  OUTLINED_FUNCTION_94_12();
  OUTLINED_FUNCTION_119_6();

  OUTLINED_FUNCTION_51_21();

  OUTLINED_FUNCTION_106_7();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_67(v29);
  sub_1D5612F48();
  OUTLINED_FUNCTION_119_6();

  OUTLINED_FUNCTION_51_21();

  OUTLINED_FUNCTION_106_7();
  sub_1D5615B68();
  OUTLINED_FUNCTION_33_9();
  OUTLINED_FUNCTION_117_2();
  OUTLINED_FUNCTION_20_49();
  sub_1D5612F08();
  sub_1D5615D48();
  v30 = OUTLINED_FUNCTION_73_10();
  v31(v30);
  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  OUTLINED_FUNCTION_70_12();
  sub_1D5615B68();
  OUTLINED_FUNCTION_33_9();
  OUTLINED_FUNCTION_117_2();
  OUTLINED_FUNCTION_20_49();
  sub_1D5612F18();
  sub_1D5615D48();
  v32 = OUTLINED_FUNCTION_73_10();
  v33(v32);
  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  OUTLINED_FUNCTION_70_12();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_67(v34);
  v35 = sub_1D5612FA8();
  v36 = (v35 & 1) == 0;
  if (v35)
  {
    v37 = 1702195828;
  }

  else
  {
    v37 = 0x65736C6166;
  }

  if (v36)
  {
    v38 = 0xE500000000000000;
  }

  else
  {
    v38 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v37, v38);

  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_67(v39);
  sub_1D5612EF8();
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  v40 = *(v45 + 8);
  v41 = OUTLINED_FUNCTION_61();
  v42(v41);
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51AD390()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1D51AD450()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D5197F48();
}

uint64_t sub_1D51AD548()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1D51AD5D8()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v55 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_147();
  v8 = sub_1D560D258();
  v53 = OUTLINED_FUNCTION_4(v8);
  v54 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5();
  v52 = v13 - v12;
  OUTLINED_FUNCTION_70_0();
  v14 = sub_1D560D238();
  v50 = OUTLINED_FUNCTION_4(v14);
  v51 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5();
  v49 = v19 - v18;
  v20 = OUTLINED_FUNCTION_70_0();
  v21 = v7(v20);
  OUTLINED_FUNCTION_14(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_16_0();
  sub_1D51A1FBC(v0, v7);
  OUTLINED_FUNCTION_153();
  sub_1D5615B68();

  OUTLINED_FUNCTION_10_23();
  sub_1D51AE1F4(v4, v2);
  OUTLINED_FUNCTION_19_48();
  sub_1D5612F98();
  OUTLINED_FUNCTION_94_12();
  v27 = v26 | 0x65750000u;
  if (v25)
  {
    v28 = 0x65736C6166;
  }

  else
  {
    v28 = v27;
  }

  if (v25)
  {
    v29 = 0xE500000000000000;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v28, v29);

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_19_48();
  v30 = sub_1D5612F88();
  OUTLINED_FUNCTION_82_14(v30);
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  OUTLINED_FUNCTION_70_12();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_9_68(v31);
  v32 = sub_1D5612FB8();
  OUTLINED_FUNCTION_82_14(v32);
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  OUTLINED_FUNCTION_70_12();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v34 = OUTLINED_FUNCTION_9_68(v33);
  v35 = MEMORY[0x1DA6E8D10](v34);
  OUTLINED_FUNCTION_82_14(v35);
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  OUTLINED_FUNCTION_70_12();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_9_68(v36);
  v37 = sub_1D5612F38();
  OUTLINED_FUNCTION_82_14(v37);
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  OUTLINED_FUNCTION_70_12();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_9_68(v38);
  v39 = sub_1D5612F58();
  OUTLINED_FUNCTION_82_14(v39);
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  sub_1D5615B68();
  OUTLINED_FUNCTION_33_9();
  MEMORY[0x1DA6EAC70](0xD000000000000034, 0x80000001D5686CD0);
  OUTLINED_FUNCTION_19_48();
  v40 = sub_1D5612FC8();
  OUTLINED_FUNCTION_82_14(v40);
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  OUTLINED_FUNCTION_106_7();
  sub_1D5615B68();

  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_9_68(v41);
  v42 = sub_1D5612F78();
  OUTLINED_FUNCTION_82_14(v42);
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  OUTLINED_FUNCTION_106_7();
  sub_1D5615B68();

  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_9_68(v43);
  v44 = sub_1D5612F68();
  OUTLINED_FUNCTION_82_14(v44);
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  OUTLINED_FUNCTION_106_7();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_9_68(v45);
  v46 = sub_1D5612F48();
  OUTLINED_FUNCTION_82_14(v46);
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  OUTLINED_FUNCTION_106_7();
  sub_1D5615B68();
  OUTLINED_FUNCTION_33_9();
  OUTLINED_FUNCTION_117_2();
  OUTLINED_FUNCTION_19_48();
  sub_1D5612F08();
  sub_1D5615D48();
  (*(v51 + 8))(v49, v50);
  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  OUTLINED_FUNCTION_70_12();
  sub_1D5615B68();
  OUTLINED_FUNCTION_33_9();
  OUTLINED_FUNCTION_117_2();
  OUTLINED_FUNCTION_19_48();
  sub_1D5612F18();
  sub_1D5615D48();
  (*(v54 + 8))(v52, v53);
  OUTLINED_FUNCTION_22_30();

  OUTLINED_FUNCTION_70_12();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_9_68(v47);
  sub_1D5612FA8();
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_9_68(v48);
  sub_1D5612EF8();
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  sub_1D51A34D0(v7, v55);
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51ADCE0()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1D51ADDA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D5197F48();
}

uint64_t sub_1D51ADE98()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D51ADF28()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D51ADFE8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_143_5();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D51AE02C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D5197F48();
}

uint64_t objectdestroy_41Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D51AE164()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D51AE1F4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_143_5();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D51AE238()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t OUTLINED_FUNCTION_28_40()
{
  v2 = *(v0 + 56);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_33_35()
{
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 160);
  v5 = *(v0 + 161);
}

void OUTLINED_FUNCTION_34_34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_51_21()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_67_19(unint64_t *a1)
{

  return sub_1D51ADFE8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_71_13()
{

  return sub_1D51A34D0(v0, type metadata accessor for GenericMusicItem);
}

uint64_t OUTLINED_FUNCTION_72_16()
{

  return swift_once();
}

void OUTLINED_FUNCTION_75_12()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_81_15()
{
  result = v0;
  v3 = *(v1 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_103_10()
{
  v2 = *(v0 - 168);

  return sub_1D4EC76A8(v2, v0 - 128);
}

void OUTLINED_FUNCTION_109_10()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_119_6()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_124_5()
{
  v2 = *(v0 - 256);

  return sub_1D5615D48();
}

uint64_t OUTLINED_FUNCTION_125_7()
{
}

uint64_t OUTLINED_FUNCTION_132_6(uint64_t a1, unint64_t a2)
{

  return sub_1D4E6835C(a1, a2, (v2 - 88));
}

void OUTLINED_FUNCTION_133_3()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_134_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_1D519607C(v20, a2, v21, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_135_7()
{

  return sub_1D56159E8();
}

uint64_t OUTLINED_FUNCTION_148_6()
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_149_2()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0xE000000000000000;

  return sub_1D5615B68();
}

uint64_t OUTLINED_FUNCTION_150_6()
{

  return sub_1D51A1FBC(v0 + v1, v2);
}

uint64_t *OUTLINED_FUNCTION_151_4(uint64_t a1)
{
  *(v1 + 48) = a1;

  return __swift_allocate_boxed_opaque_existential_0((v1 + 16));
}

uint64_t OUTLINED_FUNCTION_152_3(uint64_t a1, uint64_t a2)
{

  return sub_1D51A1FBC(v3 + v2, a2);
}

uint64_t *OUTLINED_FUNCTION_153_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[5] = a1;
  v2[6] = a2;

  return __swift_allocate_boxed_opaque_existential_0(v2 + 2);
}

uint64_t MusicCollaborativePlaylist.StartCollaborationRequest.init(playlist:invitationMode:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_1D5614898();
  OUTLINED_FUNCTION_14(v6);
  (*(v7 + 32))(a3, a1);
  result = type metadata accessor for MusicCollaborativePlaylist.StartCollaborationRequest();
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t type metadata accessor for MusicCollaborativePlaylist.StartCollaborationRequest()
{
  result = qword_1EC7F14A0;
  if (!qword_1EC7F14A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicCollaborativePlaylist.StartCollaborationRequest.playlist.getter()
{
  v1 = sub_1D5614898();
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_104();

  return v5(v4, v0);
}

uint64_t MusicCollaborativePlaylist.StartCollaborationRequest.invitationMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MusicCollaborativePlaylist.StartCollaborationRequest();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t MusicCollaborativePlaylist.StartCollaborationRequest.response()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0) - 8) + 64);
  v2[4] = OUTLINED_FUNCTION_127();
  v4 = sub_1D560E728();
  v2[5] = v4;
  OUTLINED_FUNCTION_69(v4);
  v2[6] = v5;
  v7 = *(v6 + 64);
  v2[7] = OUTLINED_FUNCTION_127();
  v8 = sub_1D560D9A8();
  v2[8] = v8;
  OUTLINED_FUNCTION_69(v8);
  v2[9] = v9;
  v11 = *(v10 + 64);
  v2[10] = OUTLINED_FUNCTION_127();
  v12 = sub_1D560D838();
  v2[11] = v12;
  OUTLINED_FUNCTION_69(v12);
  v2[12] = v13;
  v15 = *(v14 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEFC8, &unk_1D562FAE0) - 8) + 64);
  v2[15] = OUTLINED_FUNCTION_127();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0) - 8) + 64);
  v2[16] = OUTLINED_FUNCTION_127();
  v18 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1D51AEADC()
{
  v1 = v0[15];
  v2 = v0[3];
  Playlist.collaboration.getter();
  type metadata accessor for Playlist.Collaboration();
  v3 = OUTLINED_FUNCTION_104();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    v5 = v0[16];
    sub_1D4E50004(v0[15], &qword_1EC7EEFC8, &unk_1D562FAE0);
    v6 = sub_1D560C0A8();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  }

  else
  {
    if (qword_1EC7E8FA0 != -1)
    {
      swift_once();
    }

    v8 = v0[15];
    v7 = v0[16];
    v9 = sub_1D560C0A8();
    sub_1D51AFB08(qword_1EDD5F0F8, type metadata accessor for Playlist.Collaboration);
    sub_1D51AFB08(&qword_1EC7F0CA8, type metadata accessor for Playlist.Collaboration);
    sub_1D560EC28();
    sub_1D51AF858(v8);
    if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
    {
      sub_1D4E50004(v0[16], &unk_1EC7E9CA8, &unk_1D561D1D0);
      sub_1D4F763B4();
      swift_allocError();
      *v14 = 0;
      swift_willThrow();
      v16 = v0[15];
      v15 = v0[16];
      v18 = v0[13];
      v17 = v0[14];
      v19 = v0[10];
      v20 = v0[7];
      v21 = v0[4];

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_25_3();

      __asm { BRAA            X1, X16 }
    }
  }

  sub_1D4E50004(v0[16], &unk_1EC7E9CA8, &unk_1D561D1D0);
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_1D51AED94;
  v11 = v0[3];
  OUTLINED_FUNCTION_25_3();

  return MusicCollaborativePlaylist.StartCollaborationRequest._response()();
}

uint64_t sub_1D51AED94(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v20 = *v2;

  if (v1)
  {
    v7 = v4[15];
    v6 = v4[16];
    v9 = v4[13];
    v8 = v4[14];
    v10 = v4[10];
    v11 = v4[7];
    v12 = v4[4];

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_25_3();

    __asm { BRAA            X1, X16 }
  }

  v4[18] = a1;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1D51AEF1C()
{
  v26 = v0[16];
  v27 = v0[15];
  v18 = v0[14];
  v19 = v0[18];
  v1 = v0[12];
  v23 = v0[13];
  v24 = v0[11];
  v21 = v0[9];
  v22 = v0[8];
  v16 = v0[7];
  v17 = v0[10];
  v2 = v0[6];
  v20 = v0[5];
  v3 = v0[4];
  v25 = v0[2];
  sub_1D560D968();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
  v4 = sub_1D560DB08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D5621D90;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v9, *MEMORY[0x1E6975040], v4);
  v10(v9 + v6, *MEMORY[0x1E6975030], v4);
  sub_1D560E718();
  v11 = *MEMORY[0x1E6974FD8];
  v12 = sub_1D560D9E8();
  OUTLINED_FUNCTION_14(v12);
  (*(v13 + 104))(v3, v11, v12);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v12);
  sub_1D560F7D8();
  sub_1D4E50004(v3, &unk_1EC7EBF30, &qword_1D561C8C0);
  (*(v2 + 8))(v16, v20);
  (*(v21 + 8))(v17, v22);
  (*(v1 + 16))(v23, v18, v24);
  sub_1D56144C8();
  (*(v1 + 8))(v18, v24);

  OUTLINED_FUNCTION_55();

  return v14();
}

uint64_t MusicCollaborativePlaylist.StartCollaborationRequest._response()()
{
  v1[22] = v0;
  v2 = sub_1D5614898();
  v1[23] = v2;
  OUTLINED_FUNCTION_69(v2);
  v1[24] = v3;
  v5 = *(v4 + 64);
  v1[25] = OUTLINED_FUNCTION_127();
  v6 = sub_1D56131C8();
  v1[26] = v6;
  OUTLINED_FUNCTION_69(v6);
  v1[27] = v7;
  v9 = *(v8 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D51AF328()
{
  v1 = v0;
  v2 = v0 + 2;
  v18 = v0 + 18;
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[26];
  v6 = v0[27];
  v9 = v0 + 24;
  v7 = v0[24];
  v8 = v9[1];
  v11 = v1[22];
  v10 = v1[23];
  (*(v6 + 104))(v3, *MEMORY[0x1E6976988], v5);
  (*(v6 + 16))(v4, v3, v5);
  (*(v7 + 16))(v8, v11, v10);
  sub_1D4ECAE6C();
  v13 = v12;
  v1[30] = v12;
  (*(v6 + 8))(v3, v5);
  if (*(v11 + *(type metadata accessor for MusicCollaborativePlaylist.StartCollaborationRequest() + 20)))
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  v15 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryStartCollaborationChangeRequest) initWithPlaylist:v13 sharingMode:v14];
  v1[31] = v15;
  v1[2] = v1;
  v1[7] = v18;
  v1[3] = sub_1D51AF544;
  v16 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC870, &qword_1D5640300);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1D4F772C0;
  v1[13] = &block_descriptor_12;
  v1[14] = v16;
  [v15 performWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1D51AF544()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_1D51AF7B4;
  }

  else
  {
    v3 = sub_1D51AF654;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D51AF654()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[25];
  v6 = v0[21];
  v7 = __swift_project_boxed_opaque_existential_1(v0 + 18, v6);
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_127();
  (*(v8 + 16))(v10, v7, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  v11 = sub_1D5616158();

  (*(v8 + 8))(v10, v6);

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_1D51AF7B4()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[28];
  v6 = v0[25];
  swift_willThrow();

  OUTLINED_FUNCTION_55();
  v8 = v0[32];

  return v7();
}

uint64_t sub_1D51AF858(uint64_t a1)
{
  v2 = type metadata accessor for Playlist.Collaboration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static MusicCollaborativePlaylist.StartCollaborationRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0())
  {
    started = type metadata accessor for MusicCollaborativePlaylist.StartCollaborationRequest();
    v5 = *(a1 + *(started + 20)) ^ *(a2 + *(started + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t MusicCollaborativePlaylist.StartCollaborationRequest.hash(into:)()
{
  sub_1D5614898();
  OUTLINED_FUNCTION_1_101();
  sub_1D51AFB08(v1, v2);
  OUTLINED_FUNCTION_104();
  sub_1D5614CB8();
  started = type metadata accessor for MusicCollaborativePlaylist.StartCollaborationRequest();
  return MEMORY[0x1DA6EC0D0](*(v0 + *(started + 20)));
}

uint64_t MusicCollaborativePlaylist.StartCollaborationRequest.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614898();
  OUTLINED_FUNCTION_1_101();
  sub_1D51AFB08(v1, v2);
  sub_1D5614CB8();
  started = type metadata accessor for MusicCollaborativePlaylist.StartCollaborationRequest();
  MEMORY[0x1DA6EC0D0](*(v0 + *(started + 20)));
  return sub_1D5616328();
}

uint64_t sub_1D51AFA20(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  sub_1D5614898();
  sub_1D51AFB08(&qword_1EC7EB6C8, MEMORY[0x1E69773E0]);
  sub_1D5614CB8();
  MEMORY[0x1DA6EC0D0](*(v2 + *(a2 + 20)));
  return sub_1D5616328();
}

uint64_t sub_1D51AFB08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D51AFB78()
{
  result = sub_1D5614898();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D51AFBEC@<X0>(uint64_t a1@<X8>)
{
  v131 = a1;
  v145 = sub_1D5611C78();
  v2 = OUTLINED_FUNCTION_4(v145);
  v136 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_0();
  v135 = v6;
  OUTLINED_FUNCTION_70_0();
  v7 = sub_1D56140F8();
  v8 = OUTLINED_FUNCTION_4(v7);
  v129 = v9;
  v130 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v128 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F14B0, &qword_1D56403B0);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v142 = v17;
  OUTLINED_FUNCTION_70_0();
  v144 = type metadata accessor for VideoArtwork.FileAsset();
  v18 = OUTLINED_FUNCTION_4(v144);
  v141 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_0();
  v147 = v22;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB0A8, &qword_1D561DE58);
  OUTLINED_FUNCTION_4(v143);
  v148 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v124 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  v146 = v33;
  OUTLINED_FUNCTION_70_0();
  v137 = sub_1D560C0A8();
  v34 = OUTLINED_FUNCTION_4(v137);
  v133 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13();
  v127 = v38;
  MEMORY[0x1EEE9AC00](v39);
  v132 = &v124 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v124 - v45;
  v47 = sub_1D5611238();
  v48 = OUTLINED_FUNCTION_4(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13();
  v126 = v53;
  v55 = MEMORY[0x1EEE9AC00](v54);
  v57 = &v124 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v59 = &v124 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v60);
  v140 = v61;
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_13_3();
  v139 = v65;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE40, &qword_1D561F370);
  v134 = v1;
  sub_1D5610708();
  sub_1D56111A8();
  v66 = *(v50 + 8);
  v66(v59, v47);
  if (__swift_getEnumTagSinglePayload(v46, 1, v60) == 1)
  {
    sub_1D4E50004(v46, &qword_1EC7EB5B8, &unk_1D56206A0);
    v68 = v135;
    v67 = v136;
    *v135 = 0x4677656976657270;
    v68[1] = 0xEC000000656D6172;
    v69 = *MEMORY[0x1E69763E0];
    v70 = OUTLINED_FUNCTION_7_75();
    v71(v70);
    sub_1D50F96EC();
    v72 = OUTLINED_FUNCTION_12_57();
    v74 = OUTLINED_FUNCTION_5_76(v72, v73);
    v75(v74);
    swift_willThrow();
    return (*(v67 + 8))(v68, v59);
  }

  else
  {
    (*(v140 + 32))(v139, v46, v60);
    sub_1D5610708();
    v125 = v60;
    v77 = v146;
    sub_1D56111B8();
    v66(v57, v47);
    v78 = v137;
    if (__swift_getEnumTagSinglePayload(v77, 1, v137) == 1)
    {
      sub_1D4E50004(v146, &unk_1EC7E9CA8, &unk_1D561D1D0);
      v80 = v135;
      v79 = v136;
      *v135 = 0x6F65646976;
      v80[1] = 0xE500000000000000;
      v81 = *MEMORY[0x1E69763E0];
      v82 = OUTLINED_FUNCTION_7_75();
      v83(v82);
      sub_1D50F96EC();
      v84 = OUTLINED_FUNCTION_12_57();
      v86 = OUTLINED_FUNCTION_5_76(v84, v85);
      v87(v86);
      swift_willThrow();
      (*(v79 + 8))(v80, v78);
      return (*(v140 + 8))(v139, v125);
    }

    else
    {
      v88 = v132;
      v135 = *(v133 + 32);
      v136 = v133 + 32;
      (v135)(v132, v146, v78);
      v89 = v126;
      sub_1D5610708();
      v90 = sub_1D5611228();
      v66(v89, v47);
      if (v90)
      {
        v91 = *(v90 + 16);
        v124 = v90;
        if (v91)
        {
          v93 = *(v148 + 16);
          v92 = v148 + 16;
          v94 = *(v148 + 80);
          OUTLINED_FUNCTION_43_3();
          v96 = v90 + v95;
          v145 = *(v92 + 56);
          v146 = v97;
          v148 = v92;
          v98 = (v92 - 8);
          v99 = MEMORY[0x1E69E7CC0];
          v101 = v143;
          v100 = v144;
          v102 = v142;
          do
          {
            v146(v28, v96, v101);
            v103 = v149;
            sub_1D546214C(v102);
            if (v103)
            {

              (*v98)(v28, v101);
              __swift_storeEnumTagSinglePayload(v102, 1, 1, v100);
              sub_1D4E50004(v102, &unk_1EC7F14B0, &qword_1D56403B0);
              v149 = 0;
            }

            else
            {
              (*v98)(v28, v101);
              OUTLINED_FUNCTION_64_0();
              __swift_storeEnumTagSinglePayload(v104, v105, v106, v100);
              sub_1D51B0B94(v102, v147);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v149 = 0;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v112 = *(v99 + 16);
                sub_1D4F00444();
                v99 = v113;
              }

              v108 = *(v99 + 16);
              if (v108 >= *(v99 + 24) >> 1)
              {
                sub_1D4F00444();
                v99 = v114;
              }

              *(v99 + 16) = v108 + 1;
              v109 = *(v141 + 80);
              OUTLINED_FUNCTION_43_3();
              sub_1D51B0B94(v147, v99 + v110 + *(v111 + 72) * v108);
              v101 = v143;
              v100 = v144;
              v102 = v142;
            }

            v96 += v145;
            --v91;
          }

          while (v91);
        }

        else
        {
          v99 = MEMORY[0x1E69E7CC0];
        }

        v88 = v132;
      }

      else
      {
        v99 = 0;
      }

      v115 = v139;
      v116 = v128;
      sub_1D5610758();
      v117 = v133;
      v118 = v127;
      v119 = v137;
      (*(v133 + 16))(v127, v88, v137);
      v120 = MEMORY[0x1E69E7CC0];
      if (v99)
      {
        v120 = v99;
      }

      v148 = v120;
      v121 = sub_1D5610718();
      (*(v117 + 8))(v88, v119);
      (*(v140 + 8))(v115, v125);
      v122 = v131;
      (*(v129 + 32))(v131, v116, v130);
      v123 = type metadata accessor for VideoArtwork();
      result = (v135)(v122 + v123[5], v118, v119);
      *(v122 + v123[6]) = v148;
      *(v122 + v123[7]) = v121;
    }
  }

  return result;
}

uint64_t sub_1D51B0578@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v82 = v7;
  OUTLINED_FUNCTION_70_0();
  v8 = sub_1D5611238();
  v9 = OUTLINED_FUNCTION_4(v8);
  v83 = v10;
  v84 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v80 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v81 = v78 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v86 = v20;
  OUTLINED_FUNCTION_70_0();
  v91 = sub_1D5611218();
  v21 = OUTLINED_FUNCTION_14(v91);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_0();
  v90 = v24;
  OUTLINED_FUNCTION_70_0();
  v25 = type metadata accessor for VideoArtwork.FileAsset();
  v26 = OUTLINED_FUNCTION_4(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v32 = v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB0A8, &qword_1D561DE58);
  OUTLINED_FUNCTION_4(v89);
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  v39 = v78 - v38;
  v79 = type metadata accessor for VideoArtwork();
  v40 = *(v79 + 24);
  v85 = v1;
  v41 = *(v1 + v40);
  v42 = *(v41 + 16);
  if (v42)
  {
    v78[1] = a1;
    v92 = MEMORY[0x1E69E7CC0];
    sub_1D4F04414();
    v43 = v92;
    v44 = *(v28 + 80);
    OUTLINED_FUNCTION_43_3();
    v46 = v41 + v45;
    v47 = *(v28 + 72);
    v87 = v34 + 32;
    v88 = v47;
    v48 = v86;
    while (1)
    {
      sub_1D51B0AD4(v46, v32);
      v49 = sub_1D560C0A8();
      OUTLINED_FUNCTION_14(v49);
      (*(v50 + 16))(v48, v32, v49);
      OUTLINED_FUNCTION_64_0();
      result = __swift_storeEnumTagSinglePayload(v51, v52, v53, v49);
      v55 = *&v32[v25[7]] * 1000.0;
      if (COERCE__INT64(fabs(v55)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v55 <= -9.22337204e18)
      {
        goto LABEL_11;
      }

      if (v55 >= 9.22337204e18)
      {
        goto LABEL_12;
      }

      v56 = *&v32[v25[5]];
      v57 = *&v32[v25[6]];
      sub_1D5611208();
      v58 = *&v32[v25[8]];

      sub_1D56106F8();
      sub_1D51B0B38(v32);
      v92 = v43;
      v59 = *(v43 + 16);
      if (v59 >= *(v43 + 24) >> 1)
      {
        sub_1D4F04414();
        v48 = v86;
        v43 = v92;
      }

      *(v43 + 16) = v59 + 1;
      v60 = *(v34 + 80);
      OUTLINED_FUNCTION_43_3();
      (*(v34 + 32))(v43 + v61 + *(v34 + 72) * v59, v39, v89);
      v46 += v88;
      if (!--v42)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_9:
    v62 = v85;
    sub_1D5613F28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
    v67 = v79;
    v68 = *(v79 + 20);
    v69 = sub_1D560C0A8();
    OUTLINED_FUNCTION_14(v69);
    (*(v70 + 16))(v86, v62 + v68, v69);
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v69);
    v74 = v81;
    sub_1D5611198();
    v76 = v83;
    v75 = v84;
    (*(v83 + 16))(v80, v74, v84);
    v77 = *(v62 + *(v67 + 28));

    sub_1D56106F8();
    return (*(v76 + 8))(v74, v75);
  }

  return result;
}

uint64_t sub_1D51B0AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoArtwork.FileAsset();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D51B0B38(uint64_t a1)
{
  v2 = type metadata accessor for VideoArtwork.FileAsset();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D51B0B94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoArtwork.FileAsset();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t MusicLibraryPlaylistViewModel.Revision.sourceAction.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return sub_1D4FEEE2C(v2);
}

uint64_t static MusicLibraryPlaylistViewModel.Revision.SourceAction.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (!v4)
  {
    if (!(v3 >> 62))
    {
      v5 = *(v2 + 16);
      v6 = *(v3 + 16);
      goto LABEL_7;
    }

LABEL_23:
    sub_1D4FEEE2C(v3);
    sub_1D4FEEE2C(v2);
    sub_1D4FEEE48(v2);
    sub_1D4FEEE48(v3);
    v7 = 0;
    return v7 & 1;
  }

  if (v4 == 1)
  {
    if (v3 >> 62 == 1)
    {
      v5 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
LABEL_7:
      v15 = v6;
      v16 = v5;
      sub_1D4FEEE2C(v3);
      sub_1D4FEEE2C(v2);
      v7 = static MusicLibraryPlaylistViewModel.Revision.SourceAction.== infix(_:_:)(&v16, &v15);
      sub_1D4FEEE48(v2);
      sub_1D4FEEE48(v3);
      return v7 & 1;
    }

    goto LABEL_23;
  }

  switch(__ROR8__(v2 ^ 0x8000000000000000, 3))
  {
    case 1:
      OUTLINED_FUNCTION_0_124();
      if (v3 != v12)
      {
        goto LABEL_23;
      }

      sub_1D4FEEE48(v2);
      v8 = 0x8000000000000008;
      goto LABEL_22;
    case 2:
      OUTLINED_FUNCTION_0_124();
      v10 = v11 + 8;
      goto LABEL_20;
    case 3:
      if (v3 != 0x8000000000000018)
      {
        goto LABEL_23;
      }

      sub_1D4FEEE48(*a1);
      v8 = 0x8000000000000018;
      goto LABEL_22;
    case 4:
      OUTLINED_FUNCTION_0_124();
      v10 = v9 + 24;
      goto LABEL_20;
    case 5:
      if (v3 != 0x8000000000000028)
      {
        goto LABEL_23;
      }

      sub_1D4FEEE48(*a1);
      v8 = 0x8000000000000028;
      goto LABEL_22;
    case 6:
      OUTLINED_FUNCTION_0_124();
      v10 = v13 + 40;
LABEL_20:
      if (v3 != v10)
      {
        goto LABEL_23;
      }

      sub_1D4FEEE48(v2);
      v8 = v10;
LABEL_22:
      sub_1D4FEEE48(v8);
      v7 = 1;
      break;
    default:
      if (v3 != 0x8000000000000000)
      {
        goto LABEL_23;
      }

      sub_1D4FEEE48(*a1);
      v8 = 0x8000000000000000;
      goto LABEL_22;
  }

  return v7 & 1;
}

uint64_t MusicLibraryPlaylistViewModel.Revision.SourceAction.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 >> 62;
  if (!v4)
  {
    v7 = *(v3 + 16);
    v6 = 6;
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v6 = 7;
LABEL_5:
    MEMORY[0x1DA6EC0D0](v6);
    return MusicLibraryPlaylistViewModel.Revision.SourceAction.hash(into:)(a1);
  }

  switch(__ROR8__(v3 ^ 0x8000000000000000, 3))
  {
    case 1:
      v9 = 1;
      break;
    case 2:
      v9 = 2;
      break;
    case 3:
      v9 = 3;
      break;
    case 4:
      v9 = 4;
      break;
    case 5:
      v9 = 5;
      break;
    case 6:
      v9 = 8;
      break;
    default:
      v9 = 0;
      break;
  }

  return MEMORY[0x1DA6EC0D0](v9);
}

uint64_t MusicLibraryPlaylistViewModel.Revision.SourceAction.hashValue.getter()
{
  v2[9] = *v0;
  sub_1D56162D8();
  MusicLibraryPlaylistViewModel.Revision.SourceAction.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t sub_1D51B0F00()
{
  v2[9] = *v0;
  sub_1D56162D8();
  MusicLibraryPlaylistViewModel.Revision.SourceAction.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t static MusicLibraryPlaylistViewModel.Revision.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_1D5616168()) && (sub_1D4EFB508(), (v7))
  {
    v10 = v4;
    v11 = v3;
    sub_1D4FEEE2C(v3);
    sub_1D4FEEE2C(v4);
    v8 = static MusicLibraryPlaylistViewModel.Revision.SourceAction.== infix(_:_:)(&v11, &v10);
    sub_1D4FEEE48(v4);
    sub_1D4FEEE48(v3);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t MusicLibraryPlaylistViewModel.Revision.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_1D5614E28();
  sub_1D4F09260();
  return MusicLibraryPlaylistViewModel.Revision.SourceAction.hash(into:)(a1);
}

uint64_t MusicLibraryPlaylistViewModel.Revision.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D4F09260();
  MusicLibraryPlaylistViewModel.Revision.SourceAction.hash(into:)(v6);
  return sub_1D5616328();
}

uint64_t sub_1D51B10D0()
{
  v1 = v0[3];
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = v1;
  sub_1D56162D8();
  MusicLibraryPlaylistViewModel.Revision.hash(into:)(v3);
  return sub_1D5616328();
}

uint64_t sub_1D51B1128()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F14E0, &qword_1D5640628);
  sub_1D51B199C();
  sub_1D56155F8();

  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5686EE0);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  MEMORY[0x1DA6EAC70](10, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0x6E6F697369766552;
}

uint64_t sub_1D51B12A4()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = v0[3];
  return sub_1D51B1128();
}

uint64_t sub_1D51B12F0@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F14D0, &qword_1D5640620);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v44 - v8;
  v10 = type metadata accessor for MusicLibraryPlaylistViewModel.Delta();
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *a2;
  v13 = [a1 musicKit_transactionDetails_identifier];
  v14 = sub_1D5614D68();
  v47 = v15;
  v48 = v14;

  v16 = [a1 musicKit_transactionDetails_changes];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED5E0, &unk_1D56257D0);
  v17 = sub_1D5615168();

  v18 = sub_1D4E62628(v17);
  v19 = 0;
  v51 = MEMORY[0x1E69E7CC0];
  while (v18 != v19)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1DA6EB9B0](v19, v17);
    }

    else
    {
      if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v20 = *(v17 + 8 * v19 + 32);
      v21 = swift_unknownObjectRetain();
    }

    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v40 = MEMORY[0x1DA6EB9B0](0, v19);
      goto LABEL_19;
    }

    sub_1D4FE5098(v21, v22, v23, v24, v25, v26, v27, v28, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_1D51B1934(v9);
      ++v19;
    }

    else
    {
      v44 = a1;
      sub_1D4FE7234(v9, v50);
      v29 = a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = *(v51 + 16);
        sub_1D4F01FBC();
        v51 = v34;
      }

      v30 = *(v51 + 16);
      if (v30 >= *(v51 + 24) >> 1)
      {
        sub_1D4F01FBC();
        v51 = v35;
      }

      v31 = v50;
      v32 = v51;
      *(v51 + 16) = v30 + 1;
      sub_1D4FE7234(v31, v32 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v30);
      ++v19;
      a3 = v29;
      a1 = v44;
    }
  }

  v36 = [a1 musicKit_transactionDetails_changes];
  v37 = sub_1D5615168();

  v38 = sub_1D4F0B2D8(v37);

  if (v38 != 1)
  {
LABEL_22:
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v39 = [a1 musicKit_transactionDetails_changes];
  v19 = sub_1D5615168();

  if (!sub_1D4E62628(v19))
  {

    goto LABEL_22;
  }

  sub_1D4F0B2FC(0, (v19 & 0xC000000000000001) == 0, v19);
  if ((v19 & 0xC000000000000001) != 0)
  {
    goto LABEL_27;
  }

  v40 = *(v19 + 32);
  swift_unknownObjectRetain();
LABEL_19:

  v41 = [v40 musicKit_changeDetails_type];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v41 == 5)
  {
    sub_1D4FEEE48(v49);
    result = swift_allocObject();
    *(result + 16) = 0x8000000000000020;
    goto LABEL_24;
  }

LABEL_23:
  result = v49;
LABEL_24:
  v43 = v47;
  *a3 = v48;
  a3[1] = v43;
  a3[2] = v51;
  a3[3] = result;
  return result;
}

unint64_t sub_1D51B170C()
{
  result = qword_1EC7F14C0;
  if (!qword_1EC7F14C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F14C0);
  }

  return result;
}

unint64_t sub_1D51B1764()
{
  result = qword_1EC7F14C8;
  if (!qword_1EC7F14C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F14C8);
  }

  return result;
}

uint64_t sub_1D51B17B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1D51B17F8(uint64_t result, int a2, int a3)
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

uint64_t sub_1D51B1848(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D51B189C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1D51B18FC(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_1D51B1934(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F14D0, &qword_1D5640620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D51B199C()
{
  result = qword_1EC7F14E8;
  if (!qword_1EC7F14E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F14E0, &qword_1D5640628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F14E8);
  }

  return result;
}

uint64_t type metadata accessor for UploadedAudioPropertyProvider()
{
  result = qword_1EC7F14F0;
  if (!qword_1EC7F14F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D51B1A74()
{
  sub_1D4E518A0(319, &qword_1EDD5F070);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D51B2080(319, &qword_1EDD5F190, MEMORY[0x1E6976F68], MEMORY[0x1E69E6720]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1D51B2080(319, qword_1EDD57D80, type metadata accessor for AssetFlavors, MEMORY[0x1E69E6720]);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_1D51B2080(319, &qword_1EDD533B8, MEMORY[0x1E6975930], MEMORY[0x1E69E6720]);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_1D51B2080(319, &qword_1EDD5F220, MEMORY[0x1E6975D60], MEMORY[0x1E69E6720]);
    if (v7 > 0x3F)
    {
      return v3;
    }

    sub_1D4E518A0(319, &qword_1EDD52730);
    if (v8 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
    if (v9 > 0x3F)
    {
      return v3;
    }

    sub_1D51B2080(319, &qword_1EDD53188, MEMORY[0x1E6975E48], MEMORY[0x1E69E6720]);
    if (v11 > 0x3F)
    {
      return v10;
    }

    sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
    if (v12 > 0x3F)
    {
      return v3;
    }

    sub_1D51B2080(319, &qword_1EDD5CF48, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v14 > 0x3F)
    {
      return v13;
    }

    sub_1D51B2080(319, &qword_1EDD53050, MEMORY[0x1E6976600], MEMORY[0x1E69E6720]);
    if (v15 > 0x3F)
    {
      return v3;
    }

    sub_1D51B2080(319, &qword_1EDD53128, MEMORY[0x1E6976028], MEMORY[0x1E69E6720]);
    if (v16 > 0x3F)
    {
      return v3;
    }

    sub_1D51B2080(319, &qword_1EDD52ED0, MEMORY[0x1E69768E8], MEMORY[0x1E69E6720]);
    if (v17 > 0x3F)
    {
      return v3;
    }

    sub_1D51B2080(319, &qword_1EDD52EB0, MEMORY[0x1E6976A18], MEMORY[0x1E69E6720]);
    if (v18 > 0x3F)
    {
      return v3;
    }

    sub_1D51B2080(319, &qword_1EDD52A40, MEMORY[0x1E69774A0], MEMORY[0x1E69E6720]);
    if (v19 > 0x3F)
    {
      return v3;
    }

    sub_1D51B2080(319, &qword_1EDD53158, MEMORY[0x1E6975E88], MEMORY[0x1E69E6720]);
    if (v20 > 0x3F)
    {
      return v3;
    }

    sub_1D51B2080(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v21 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD53BB0, &qword_1EC7EA448, &unk_1D561D110);
    if (v22 > 0x3F)
    {
      return v3;
    }

    sub_1D51B2080(319, qword_1EDD5DAA8, type metadata accessor for CuratorRelationshipProvider, MEMORY[0x1E69E6720]);
    if (v23 > 0x3F)
    {
      return v3;
    }

    sub_1D51B2080(319, &qword_1EDD5D050, MEMORY[0x1E6974D30], MEMORY[0x1E69E62F8]);
    if (v24 > 0x3F)
    {
      return v3;
    }

    v3 = sub_1D560D838();
    if (v25 > 0x3F)
    {
      return v3;
    }

    v3 = sub_1D5610088();
    if (v26 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1D4E5CF94();
      v1 = v27;
      if (v28 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_1D51B2080(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D51B212C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v322 = v20;
  v323 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_3();
  v309 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  v37 = OUTLINED_FUNCTION_22(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_22(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13_3();
  v310 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13_3();
  v313 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v58);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_13_3();
  v314 = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v63);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13_3();
  v316 = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v68);
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13_3();
  v318 = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v73);
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_13_3();
  v317 = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  OUTLINED_FUNCTION_22(v78);
  v80 = *(v79 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_13_3();
  v319 = v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C8, &unk_1D5632130);
  OUTLINED_FUNCTION_22(v83);
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_13_3();
  v320 = v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v89 = OUTLINED_FUNCTION_22(v88);
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_13();
  v311 = v92;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_135();
  v312 = v94;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v305 - v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v99 = OUTLINED_FUNCTION_22(v98);
  v101 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_13();
  v315 = v102;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v103);
  v105 = &v305 - v104;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v106);
  v108 = *(v107 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v109);
  v111 = &v305 - v110;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v112);
  v114 = *(v113 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v115);
  v117 = &v305 - v116;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  OUTLINED_FUNCTION_22(v118);
  v120 = *(v119 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v121);
  v123 = &v305 - v122;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v124);
  v126 = *(v125 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v127);
  v129 = &v305 - v128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  OUTLINED_FUNCTION_117_6();
  v130 = swift_dynamicCastClass();
  if (!v130)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000024, 0x80000001D567EB40);
    v327 = v25;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v304 = 45;
    goto LABEL_173;
  }

  v131 = v130;
  v132 = qword_1EC7E8E38;
  v324 = v25;

  if (v132 != -1)
  {
    OUTLINED_FUNCTION_90_13();
  }

  *&v325 = qword_1EC87C180;
  v327 = v131;
  v133 = sub_1D4EC5794(&qword_1EC7F1528, &qword_1EC7ECD68, &qword_1D5622F58);
  if (sub_1D5614D18())
  {
    v134 = v322;
    v135 = v322[1];
    if (!v135)
    {
      v137 = 0;
      v136 = 0;
      goto LABEL_20;
    }

LABEL_6:
    v136 = *v134;

    v137 = MEMORY[0x1E69E6158];
LABEL_20:

    v153 = v323;
    *v323 = v136;
    v153[1] = v135;
    v153[2] = 0;
    v153[3] = v137;
    goto LABEL_43;
  }

  v321 = v133;
  v138 = qword_1EC7E8E40;

  if (v138 != -1)
  {
    OUTLINED_FUNCTION_89_10();
  }

  OUTLINED_FUNCTION_0_125(qword_1EC87C188);
  v139 = sub_1D5614D18();

  if (v139)
  {
    v140 = type metadata accessor for UploadedAudioPropertyProvider();
    v141 = OUTLINED_FUNCTION_51_3(*(v140 + 20));
    sub_1D4E69910(v141, v129, v142, v143);
    sub_1D56140F8();
    OUTLINED_FUNCTION_1(v129);
    if (!v284)
    {
      goto LABEL_54;
    }

    v144 = &qword_1EC7E9CA0;
    v145 = &unk_1D561A0C0;
    v146 = v129;
LABEL_33:
    sub_1D4E50004(v146, v144, v145);
    v325 = 0u;
    v326 = 0u;
LABEL_42:
    v175 = v326;
    v176 = v323;
    *v323 = v325;
    *(v176 + 1) = v175;
    goto LABEL_43;
  }

  v147 = qword_1EC7E8E48;

  if (v147 != -1)
  {
    OUTLINED_FUNCTION_86_13();
  }

  OUTLINED_FUNCTION_0_125(qword_1EC87C190);
  v148 = sub_1D5614D18();

  if (v148)
  {
    v149 = type metadata accessor for UploadedAudioPropertyProvider();
    v150 = OUTLINED_FUNCTION_51_3(*(v149 + 24));
    sub_1D4E69910(v150, v123, v151, v152);
    type metadata accessor for AssetFlavors();
    OUTLINED_FUNCTION_1(v123);
    if (!v284)
    {
      OUTLINED_FUNCTION_72_3();
      OUTLINED_FUNCTION_57_19();
      sub_1D51B91B4(v123, v160, v161);
LABEL_41:

      goto LABEL_42;
    }

    v144 = &qword_1EC7ECC88;
    v145 = &unk_1D56310F0;
    v146 = v123;
    goto LABEL_33;
  }

  v154 = qword_1EC7E8E50;

  if (v154 != -1)
  {
    OUTLINED_FUNCTION_85_9();
  }

  OUTLINED_FUNCTION_0_125(qword_1EC87C198);
  v155 = sub_1D5614D18();

  if (v155)
  {
    v156 = type metadata accessor for UploadedAudioPropertyProvider();
    v157 = OUTLINED_FUNCTION_51_3(*(v156 + 28));
    sub_1D4E69910(v157, v117, v158, v159);
    sub_1D560F928();
    OUTLINED_FUNCTION_1(v117);
    if (!v284)
    {
      goto LABEL_54;
    }

    v144 = &qword_1EC7EDB98;
    v145 = L"X\b\a";
    v146 = v117;
    goto LABEL_33;
  }

  v162 = qword_1EC7E8E58;

  if (v162 != -1)
  {
    OUTLINED_FUNCTION_39_23();
  }

  OUTLINED_FUNCTION_0_125(qword_1EC87C1A0);
  v163 = sub_1D5614D18();

  if (v163)
  {
    v164 = type metadata accessor for UploadedAudioPropertyProvider();
    v165 = OUTLINED_FUNCTION_51_3(*(v164 + 32));
    sub_1D4E69910(v165, v111, v166, v167);
    v168 = sub_1D56106B8();
    OUTLINED_FUNCTION_57(v111, 1, v168);
    if (!v284)
    {
      *(&v326 + 1) = v168;
      __swift_allocate_boxed_opaque_existential_0(&v325);
      v174 = *(*(v168 - 8) + 32);
LABEL_40:
      v174();
      goto LABEL_41;
    }

    v144 = &qword_1EC7EC478;
    v145 = &unk_1D56299D0;
    v146 = v111;
    goto LABEL_33;
  }

  v169 = qword_1EC7E8E60;

  if (v169 != -1)
  {
    OUTLINED_FUNCTION_40();
  }

  OUTLINED_FUNCTION_0_125(qword_1EC87C1A8);
  sub_1D5614D18();
  OUTLINED_FUNCTION_104_11();
  if ((v169 & 1) == 0)
  {
    v177 = qword_1EC7E8E68;

    if (v177 != -1)
    {
      OUTLINED_FUNCTION_16_55();
    }

    OUTLINED_FUNCTION_0_125(qword_1EC87C1B0);
    sub_1D5614D18();
    OUTLINED_FUNCTION_104_11();
    if (v177)
    {
      v178 = *(v322 + *(type metadata accessor for UploadedAudioPropertyProvider() + 40));
      if (v178)
      {
        v179 = &qword_1EC7EC480;
        v180 = &unk_1D56222E0;
LABEL_49:
        v181 = __swift_instantiateConcreteTypeFromMangledNameV2(v179, v180);

LABEL_60:

        v188 = v323;
        *v323 = v178;
        v188[1] = 0;
        v188[2] = 0;
        v188[3] = v181;
        goto LABEL_43;
      }

      goto LABEL_59;
    }

    v182 = qword_1EC7E8E70;

    if (v182 != -1)
    {
      OUTLINED_FUNCTION_81_16();
    }

    OUTLINED_FUNCTION_0_125(qword_1EC87C1B8);
    sub_1D5614D18();
    OUTLINED_FUNCTION_104_11();
    if (v182)
    {
      v183 = type metadata accessor for UploadedAudioPropertyProvider();
      v184 = OUTLINED_FUNCTION_51_3(*(v183 + 44));
      sub_1D4E69910(v184, v105, v185, v186);
      sub_1D5610978();
      OUTLINED_FUNCTION_1(v105);
      if (v284)
      {

        v144 = &qword_1EC7EAC98;
        v145 = &unk_1D561DA80;
        v146 = v105;
        goto LABEL_33;
      }

      goto LABEL_54;
    }

    *&v325 = sub_1D4F84A88();
    v327 = v131;
    v187 = sub_1D5614D18();

    if (v187)
    {
      v178 = *(v322 + *(type metadata accessor for UploadedAudioPropertyProvider() + 48));
      if (v178)
      {
        v179 = &qword_1EC7EC9E8;
        v180 = &qword_1D562B870;
        goto LABEL_49;
      }

LABEL_59:
      v181 = 0;
      goto LABEL_60;
    }

    v190 = qword_1EC7E8E78;

    if (v190 != -1)
    {
      OUTLINED_FUNCTION_79_8();
    }

    OUTLINED_FUNCTION_0_125(qword_1EC87C1C0);
    sub_1D5614D18();
    OUTLINED_FUNCTION_104_11();
    if (v190)
    {
      v191 = type metadata accessor for UploadedAudioPropertyProvider();
      v192 = OUTLINED_FUNCTION_51_3(*(v191 + 52));
      sub_1D4E69910(v192, v97, v193, v194);
      sub_1D560C328();
      OUTLINED_FUNCTION_1(v97);
      if (!v284)
      {
        goto LABEL_54;
      }

      v144 = &qword_1EC7EA3B8;
      v145 = &unk_1D561E370;
      v146 = v97;
      goto LABEL_33;
    }

    v195 = qword_1EC7E8E80;

    if (v195 != -1)
    {
      OUTLINED_FUNCTION_78_13();
    }

    OUTLINED_FUNCTION_0_125(qword_1EC87C1C8);
    sub_1D5614D18();
    OUTLINED_FUNCTION_104_11();
    if (v195)
    {
      v196 = type metadata accessor for UploadedAudioPropertyProvider();
      v197 = OUTLINED_FUNCTION_51_3(*(v196 + 56));
      v198 = v320;
      sub_1D4E69910(v197, v320, v199, v200);
      v201 = sub_1D56128E8();
      OUTLINED_FUNCTION_1_9(v201);
      if (!v284)
      {
        goto LABEL_54;
      }

      v144 = &qword_1EC7EF5C8;
      v145 = &unk_1D5632130;
    }

    else
    {
      v202 = qword_1EC7E8E88;

      if (v202 != -1)
      {
        OUTLINED_FUNCTION_77_7();
      }

      OUTLINED_FUNCTION_0_125(qword_1EC87C1D0);
      sub_1D5614D18();
      OUTLINED_FUNCTION_104_11();
      if (v202)
      {
        v203 = type metadata accessor for UploadedAudioPropertyProvider();
        v204 = OUTLINED_FUNCTION_51_3(*(v203 + 60));
        v198 = v319;
        sub_1D4E69910(v204, v319, v205, v206);
        v207 = sub_1D5610CB8();
        OUTLINED_FUNCTION_1_9(v207);
        if (!v284)
        {
          goto LABEL_54;
        }

        v144 = &qword_1EC7EF5D0;
        v145 = &unk_1D5632140;
      }

      else
      {
        v208 = qword_1EC7E8E90;

        if (v208 != -1)
        {
          OUTLINED_FUNCTION_76_10();
        }

        OUTLINED_FUNCTION_0_125(qword_1EC87C1D8);
        sub_1D5614D18();
        OUTLINED_FUNCTION_104_11();
        if ((v208 & 1) == 0)
        {
          v214 = qword_1EC7E8E98;

          if (v214 != -1)
          {
            OUTLINED_FUNCTION_75_13();
          }

          OUTLINED_FUNCTION_0_125(qword_1EC87C1E0);
          sub_1D5614D18();
          OUTLINED_FUNCTION_104_11();
          if (v214)
          {
            v215 = type metadata accessor for UploadedAudioPropertyProvider();
            v216 = OUTLINED_FUNCTION_51_3(*(v215 + 68));
            sub_1D4E69910(v216, v318, v217, v218);
            v219 = sub_1D56134E8();
            OUTLINED_FUNCTION_1_9(v219);
            if (!v284)
            {
              goto LABEL_54;
            }

            v144 = &qword_1EC7EC528;
            v145 = &unk_1D5621070;
            v146 = v318;
            goto LABEL_33;
          }

          v220 = qword_1EC7E8EA0;

          if (v220 != -1)
          {
            OUTLINED_FUNCTION_74_14();
          }

          OUTLINED_FUNCTION_0_125(qword_1EC87C1E8);
          sub_1D5614D18();
          OUTLINED_FUNCTION_109_1();
          if (v220)
          {
            v221 = type metadata accessor for UploadedAudioPropertyProvider();
            v222 = OUTLINED_FUNCTION_51_3(*(v221 + 72));
            sub_1D4E69910(v222, v316, v223, v224);
            v225 = sub_1D5614A78();
            OUTLINED_FUNCTION_1_9(v225);
            if (!v284)
            {
              goto LABEL_54;
            }

            v144 = &qword_1EC7EF5D8;
            v145 = &unk_1D5632160;
            v146 = v316;
            goto LABEL_33;
          }

          v226 = qword_1EC7E8EA8;

          if (v226 != -1)
          {
            OUTLINED_FUNCTION_73_11();
          }

          OUTLINED_FUNCTION_0_125(qword_1EC87C1F0);
          sub_1D5614D18();
          OUTLINED_FUNCTION_109_1();
          if (v226)
          {
            v227 = type metadata accessor for UploadedAudioPropertyProvider();
            v228 = OUTLINED_FUNCTION_51_3(*(v227 + 76));
            sub_1D4E69910(v228, v315, v229, v230);
            v231 = sub_1D5610978();
            OUTLINED_FUNCTION_1_9(v231);
            if (!v284)
            {
              goto LABEL_54;
            }

            v144 = &qword_1EC7EAC98;
            v145 = &unk_1D561DA80;
            v146 = v315;
            goto LABEL_33;
          }

          v232 = qword_1EC7E8EB0;

          if (v232 != -1)
          {
            OUTLINED_FUNCTION_72_17();
          }

          OUTLINED_FUNCTION_0_125(qword_1EC87C1F8);
          sub_1D5614D18();
          OUTLINED_FUNCTION_109_1();
          if (v232)
          {
            v233 = type metadata accessor for UploadedAudioPropertyProvider();
            v234 = OUTLINED_FUNCTION_51_3(*(v233 + 80));
            sub_1D4E69910(v234, v314, v235, v236);
            v237 = sub_1D56109F8();
            OUTLINED_FUNCTION_1_9(v237);
            if (!v284)
            {
              goto LABEL_54;
            }

            v144 = &qword_1EC7EB5C0;
            v145 = &unk_1D56223C0;
            v146 = v314;
            goto LABEL_33;
          }

          v238 = qword_1EC7E8EB8;

          if (v238 != -1)
          {
            OUTLINED_FUNCTION_38_25();
          }

          OUTLINED_FUNCTION_0_125(qword_1EC87C200);
          sub_1D5614D18();
          OUTLINED_FUNCTION_109_1();
          if (v238)
          {
            v239 = type metadata accessor for UploadedAudioPropertyProvider();
            v240 = OUTLINED_FUNCTION_51_3(*(v239 + 84));
            sub_1D4E69910(v240, v313, v241, v242);
            v243 = sub_1D560C0A8();
            OUTLINED_FUNCTION_1_9(v243);
            if (!v284)
            {
              goto LABEL_54;
            }

            v144 = &unk_1EC7E9CA8;
            v145 = &unk_1D561D1D0;
            v146 = v313;
            goto LABEL_33;
          }

          v244 = qword_1EC7E8EC0;

          if (v244 != -1)
          {
            OUTLINED_FUNCTION_70_13();
          }

          OUTLINED_FUNCTION_0_125(qword_1EC87C208);
          sub_1D5614D18();
          OUTLINED_FUNCTION_109_1();
          if (v244)
          {
            v245 = type metadata accessor for UploadedAudioPropertyProvider();
            v246 = OUTLINED_FUNCTION_51_3(*(v245 + 88));
            sub_1D4E69910(v246, v312, v247, v248);
            v249 = sub_1D560C328();
            OUTLINED_FUNCTION_1_9(v249);
            if (!v284)
            {
              goto LABEL_54;
            }

            v144 = &qword_1EC7EA3B8;
            v145 = &unk_1D561E370;
            v146 = v312;
            goto LABEL_33;
          }

          v250 = qword_1EC7E8EC8;

          if (v250 != -1)
          {
            OUTLINED_FUNCTION_12();
          }

          OUTLINED_FUNCTION_0_125(qword_1EC87C210);
          sub_1D5614D18();
          OUTLINED_FUNCTION_109_1();
          if (v250)
          {
            v251 = *(type metadata accessor for UploadedAudioPropertyProvider() + 92);
LABEL_126:
            v134 = (v322 + v251);
            v135 = v134[1];
            if (!v135)
            {
              v136 = 0;
              v137 = 0;
              goto LABEL_20;
            }

            goto LABEL_6;
          }

          v252 = qword_1EC7E8ED0;

          if (v252 != -1)
          {
            OUTLINED_FUNCTION_91_11();
          }

          OUTLINED_FUNCTION_0_125(qword_1EC87C218);
          sub_1D5614D18();
          OUTLINED_FUNCTION_109_1();
          if ((v252 & 1) == 0)
          {
            v111 = qword_1EC7E8ED8;

            if (v111 != -1)
            {
              goto LABEL_174;
            }

            while (1)
            {
              OUTLINED_FUNCTION_0_125(qword_1EC87C220);
              sub_1D5614D18();
              OUTLINED_FUNCTION_109_1();
              if (v111)
              {
                v251 = *(type metadata accessor for UploadedAudioPropertyProvider() + 100);
                goto LABEL_126;
              }

              v258 = qword_1EC7E8EE0;

              if (v258 != -1)
              {
                OUTLINED_FUNCTION_37_3();
              }

              OUTLINED_FUNCTION_0_125(qword_1EC7F0858);
              sub_1D5614D18();
              OUTLINED_FUNCTION_109_1();
              if (v258)
              {
                v259 = type metadata accessor for UploadedAudioPropertyProvider();
                v260 = OUTLINED_FUNCTION_51_3(*(v259 + 104));
                sub_1D4E69910(v260, v310, v261, v262);
                v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
                OUTLINED_FUNCTION_1_9(v263);
                if (!v284)
                {
                  goto LABEL_54;
                }

                v144 = &off_1EC7EB5B0;
                v145 = &unk_1D5632170;
                v146 = v310;
                goto LABEL_33;
              }

              v264 = qword_1EC7E8EE8;

              if (v264 != -1)
              {
                OUTLINED_FUNCTION_36_26();
              }

              OUTLINED_FUNCTION_0_125(qword_1EC7F0860);
              sub_1D5614D18();
              OUTLINED_FUNCTION_109_1();
              if (v264)
              {
                v265 = type metadata accessor for UploadedAudioPropertyProvider();
                v266 = OUTLINED_FUNCTION_51_3(*(v265 + 108));
                v267 = v306;
                sub_1D4E69910(v266, v306, v268, v269);
                type metadata accessor for CuratorRelationshipProvider();
                v270 = OUTLINED_FUNCTION_104();
                OUTLINED_FUNCTION_57(v270, 1, v271);
                if (v284)
                {

                  v144 = &qword_1EC7ECC80;
                  v145 = &unk_1D5622EA0;
                  v272 = &a14;
                }

                else
                {
                  v279 = OUTLINED_FUNCTION_145_0(&a14);
                  OUTLINED_FUNCTION_108_0(v279, v280, v281, &a15);
                  OUTLINED_FUNCTION_7_76();
                  sub_1D51B9214(v267, v282);
                  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
                  OUTLINED_FUNCTION_1_9(v283);
                  if (!v284)
                  {
                    OUTLINED_FUNCTION_72_3();
                    OUTLINED_FUNCTION_15_1();
                    v174 = *(v295 + 32);
                    v296 = &a15;
                    goto LABEL_171;
                  }

                  v144 = &qword_1EC7EA790;
                  v145 = &unk_1D561FB10;
                  v272 = &a15;
                }

LABEL_167:
                v146 = *(v272 - 32);
                goto LABEL_33;
              }

              v273 = off_1EC7E8EF0;

              if (v273 != -1)
              {
                OUTLINED_FUNCTION_35_6();
              }

              OUTLINED_FUNCTION_0_125(qword_1EC7F0868);
              sub_1D5614D18();
              OUTLINED_FUNCTION_109_1();
              if (v273)
              {
                v274 = type metadata accessor for UploadedAudioPropertyProvider();
                v275 = OUTLINED_FUNCTION_51_3(*(v274 + 108));
                OUTLINED_FUNCTION_108_0(v275, v276, v277, &a16);
                v278 = type metadata accessor for CuratorRelationshipProvider();
                OUTLINED_FUNCTION_1_9(v278);
                if (v284)
                {

                  v144 = &qword_1EC7ECC80;
                  v145 = &unk_1D5622EA0;
                  v272 = &a16;
                  goto LABEL_167;
                }

                v290 = v273[5];
                v291 = v307;
                OUTLINED_FUNCTION_108_0(v307 + v290, &qword_1EC7EA788, &unk_1D56223A0, &a18);
                OUTLINED_FUNCTION_7_76();
                sub_1D51B9214(v291, v292);
                v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
                OUTLINED_FUNCTION_1_9(v293);
                if (v294)
                {

                  v144 = &qword_1EC7EA788;
                  v145 = &unk_1D56223A0;
                  v272 = &a18;
                  goto LABEL_167;
                }

                OUTLINED_FUNCTION_72_3();
                OUTLINED_FUNCTION_15_1();
                v174 = *(v302 + 32);
                v296 = &a18;
LABEL_171:
                v303 = *(v296 - 32);
                goto LABEL_40;
              }

              v111 = off_1EC7E8EF8;

              if (v111 != -1)
              {
                OUTLINED_FUNCTION_33_4();
              }

              OUTLINED_FUNCTION_0_125(qword_1EC7F0870);
              sub_1D5614D18();
              OUTLINED_FUNCTION_109_1();
              if (v111)
              {
                break;
              }

              OUTLINED_FUNCTION_30();
              sub_1D5615B68();
              OUTLINED_FUNCTION_16_6();
              MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
              v327 = v324;
              sub_1D560CDE8();
              sub_1D5615D48();
              OUTLINED_FUNCTION_33_0();
              OUTLINED_FUNCTION_28();
              v304 = 104;
LABEL_173:
              v305 = v304;
              OUTLINED_FUNCTION_17_13();
              __break(1u);
LABEL_174:
              OUTLINED_FUNCTION_87_12();
            }

            v285 = type metadata accessor for UploadedAudioPropertyProvider();
            v286 = OUTLINED_FUNCTION_51_3(*(v285 + 108));
            OUTLINED_FUNCTION_108_0(v286, v287, v288, &a17);
            v289 = type metadata accessor for CuratorRelationshipProvider();
            OUTLINED_FUNCTION_1_9(v289);
            if (v284)
            {

              v144 = &qword_1EC7ECC80;
              v145 = &unk_1D5622EA0;
              v272 = &a17;
              goto LABEL_167;
            }

            v297 = *(v111 + 24);
            v298 = v308;
            sub_1D4E69910(v308 + v297, v309, &qword_1EC7EA780, &unk_1D561FB20);
            OUTLINED_FUNCTION_7_76();
            sub_1D51B9214(v298, v299);
            v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
            OUTLINED_FUNCTION_1_9(v300);
            if (v301)
            {

              v144 = &qword_1EC7EA780;
              v145 = &unk_1D561FB20;
              v146 = v309;
              goto LABEL_33;
            }

            goto LABEL_54;
          }

          v253 = type metadata accessor for UploadedAudioPropertyProvider();
          v254 = OUTLINED_FUNCTION_51_3(*(v253 + 96));
          sub_1D4E69910(v254, v311, v255, v256);
          v257 = sub_1D560C328();
          OUTLINED_FUNCTION_1_9(v257);
          if (v284)
          {

            v144 = &qword_1EC7EA3B8;
            v145 = &unk_1D561E370;
            v146 = v311;
            goto LABEL_33;
          }

LABEL_54:
          OUTLINED_FUNCTION_72_3();
          OUTLINED_FUNCTION_15_1();
          v174 = *(v189 + 32);
          goto LABEL_40;
        }

        v209 = type metadata accessor for UploadedAudioPropertyProvider();
        v210 = OUTLINED_FUNCTION_51_3(*(v209 + 64));
        v198 = v317;
        sub_1D4E69910(v210, v317, v211, v212);
        v213 = sub_1D5613198();
        OUTLINED_FUNCTION_1_9(v213);
        if (!v284)
        {
          goto LABEL_54;
        }

        v144 = &qword_1EC7EC530;
        v145 = &unk_1D5632150;
      }
    }

    v146 = v198;
    goto LABEL_33;
  }

  v170 = 0;
  v171 = 0;
  v172 = v322 + *(type metadata accessor for UploadedAudioPropertyProvider() + 36);
  if ((v172[8] & 1) == 0)
  {
    v171 = *v172;
    v170 = MEMORY[0x1E69E63B0];
  }

  v173 = v323;
  *v323 = v171;
  v173[1] = 0;
  v173[2] = 0;
  v173[3] = v170;
LABEL_43:
  OUTLINED_FUNCTION_46();
}