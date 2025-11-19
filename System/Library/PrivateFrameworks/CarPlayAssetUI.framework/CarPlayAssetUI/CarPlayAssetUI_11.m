uint64_t sub_242D279B4(uint64_t a1, uint64_t a2, const char *a3, void *a4)
{
  if (qword_27ECEF4D0 != -1)
  {
    swift_once();
  }

  v8 = sub_242F039D0();
  __swift_project_value_buffer(v8, qword_27ED5D310);
  v9 = sub_242F039B0();
  v10 = sub_242F05720();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_242C53000, v9, v10, a3, v11, 2u);
    MEMORY[0x245D287D0](v11, -1, -1);
  }

  v12 = (a1 + *a4);
  result = swift_beginAccess();
  v14 = *v12;
  if (*v12)
  {
    memset(v15, 0, sizeof(v15));
    v16 = 2;

    v14(a2, v15);
    return sub_242C655DC(v14);
  }

  return result;
}

uint64_t sub_242D27B14(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void (**a5)(uint64_t))
{
  v98 = a5;
  v102 = a4;
  v105 = a3;
  v8 = 0x32656E6F7ALL;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780);
  MEMORY[0x28223BE20](v9 - 8);
  v99 = &v86 - v10;
  v11 = sub_242F03960();
  v95 = *(v11 - 8);
  v96 = v11;
  MEMORY[0x28223BE20](v11);
  v104 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Zone();
  MEMORY[0x28223BE20](v13 - 8);
  v106 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v97 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v88 = &v86 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v89 = &v86 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v101 = &v86 - v23;
  MEMORY[0x28223BE20](v22);
  v94 = &v86 - v24;
  v107 = type metadata accessor for RequestContentModel();
  v103 = *(v107 - 8);
  v25 = MEMORY[0x28223BE20](v107);
  v87 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v90 = &v86 - v27;
  KeyPath = swift_getKeyPath();
  v29 = swift_getKeyPath();
  v109 = a1;
  v93 = KeyPath;
  v92 = v29;
  v91 = sub_242F03A70();
  v108 = v30;
  v31 = *v30;
  v33 = *v30 + 16;
  v32 = *v33;
  v100 = a2;
  if (a2)
  {
    v34 = 0x32656E6F7ALL;
  }

  else
  {
    v34 = 0x31656E6F7ALL;
  }

  if (v32)
  {
    v5 = 0x32656E6F7ALL;
    v35 = 0;
    while (1)
    {
      v36 = v31[v35 + 32] ? 0x32656E6F7ALL : 0x31656E6F7ALL;
      if (v36 == v34)
      {
        break;
      }

      v37 = sub_242F06110();
      swift_bridgeObjectRelease_n();
      if (v37)
      {
        goto LABEL_14;
      }

      if (v32 == ++v35)
      {
        goto LABEL_12;
      }
    }

    swift_bridgeObjectRelease_n();
LABEL_14:
    if (__OFADD__(v35, 1))
    {
      goto LABEL_68;
    }

    v38 = *v33;
    if (v35 + 1 != *v33)
    {
      v32 = (v35 + 33);
      do
      {
        v8 = (v32 - 32);
        if ((v32 - 32) >= v38)
        {
          __break(1u);
          goto LABEL_63;
        }

        if (v32[v31])
        {
          v69 = 0x32656E6F7ALL;
        }

        else
        {
          v69 = 0x31656E6F7ALL;
        }

        if (v69 == v34)
        {
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v70 = sub_242F06110();
          swift_bridgeObjectRelease_n();
          if ((v70 & 1) == 0)
          {
            if (v8 != v35)
            {
              if (v35 < 0)
              {
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                v33 = sub_242C83A00(0, *(v33 + 2) + 1, 1, v33);
                *v35 = v33;
LABEL_21:
                v49 = *(v33 + 2);
                v48 = *(v33 + 3);
                if (v49 >= v48 >> 1)
                {
                  v33 = sub_242C83A00((v48 > 1), v49 + 1, 1, v33);
                  *v35 = v33;
                }

                v35 = v102;
                *(v33 + 2) = v49 + 1;
                v33[v49 + 32] = v100 & 1;
                (v32)(v110, 0);

                sub_242D39AFC(v90, type metadata accessor for RequestContentModel);
                v5 = v104;
                v32 = v105;
                goto LABEL_25;
              }

              if (v35 >= *v33)
              {
                goto LABEL_66;
              }

              if (v8 >= *v33)
              {
                goto LABEL_67;
              }

              v71 = v31[v35 + 32];
              v8 = v32[v31];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v108 = v31;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v31 = sub_242D37E80(v31);
              }

              v31[v35 + 32] = v8;
              v32[v31] = v71;
              *v108 = v31;
            }

            ++v35;
          }
        }

        v33 = v31 + 16;
        v38 = *(v31 + 2);
        v68 = v32 - 31;
        ++v32;
      }

      while (v68 != v38);
    }
  }

  else
  {
LABEL_12:
    v35 = *v33;
  }

  v39 = *(*v108 + 2);
  if (v39 < v35)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
    goto LABEL_26;
  }

  sub_242D3A188(v35, v39, sub_242C83A00, sub_242D3A0E4);
  v91(v110, 0);

  v32 = v105;
  v40 = v94;
  sub_242CA321C(v105, v94, &qword_27ECF2EC8);
  v41 = *(v103 + 48);
  v42 = (v41)(v40, 1, v107);
  v108 = v41;
  if (v42 == 1)
  {
    sub_242C6D138(v40, &qword_27ECF2EC8);
    v35 = v102;
    v5 = v104;
  }

  else
  {
    v43 = v40;
    v44 = v90;
    sub_242D39C68(v43, v90, type metadata accessor for RequestContentModel);
    v45 = RequestContentModel.isFocusable.getter();
    v5 = v104;
    if (v45)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v32 = sub_242F03A70();
      v35 = v46;
      v33 = *v46;
      v47 = swift_isUniquelyReferenced_nonNull_native();
      *v35 = v33;
      if ((v47 & 1) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_21;
    }

    sub_242D39AFC(v44, type metadata accessor for RequestContentModel);
    v35 = v102;
  }

LABEL_25:
  v33 = v106;
  v8 = v101;
  if (qword_27ECEF0A8 != -1)
  {
    goto LABEL_64;
  }

LABEL_26:
  v50 = sub_242F039A0();
  __swift_project_value_buffer(v50, qword_27ED5D270);
  sub_242CA321C(v32, v8, &qword_27ECF2EC8);
  sub_242D39B5C(v35, v33, type metadata accessor for Zone);

  sub_242F03950();
  v51 = sub_242F03980();
  LODWORD(v94) = sub_242F05780();

  if ((sub_242F05840() & 1) == 0)
  {

    (*(v95 + 8))(v5, v96);
    sub_242D39AFC(v33, type metadata accessor for Zone);
    sub_242C6D138(v8, &qword_27ECF2EC8);
    goto LABEL_59;
  }

  v93 = v51;
  v52 = swift_slowAlloc();
  v53 = swift_slowAlloc();
  v110[0] = v53;
  *v52 = 136315650;
  v54 = v89;
  sub_242CA321C(v8, v89, &qword_27ECF2EC8);
  v55 = v108;
  if ((v108)(v54, 1, v107) == 1)
  {
    sub_242C6D138(v54, &qword_27ECF2EC8);
    v56 = v88;
LABEL_31:

    v59 = 0x8000000242F5A1F0;
    v57 = 0xD000000000000015;
    goto LABEL_32;
  }

  v57 = RequestContentModel.displayName.getter();
  v59 = v58;
  sub_242D39AFC(v54, type metadata accessor for RequestContentModel);
  v56 = v88;
  if (!v59)
  {
    goto LABEL_31;
  }

LABEL_32:
  sub_242C6D138(v101, &qword_27ECF2EC8);
  v60 = sub_242C8FD38(v57, v59, v110);

  *(v52 + 4) = v60;
  *(v52 + 12) = 2080;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  v61 = v111;
  if (*(v111 + 16) && (v62 = sub_242CE5568(v106), (v63 & 1) != 0))
  {
    sub_242D39B5C(*(v61 + 56) + *(v103 + 72) * v62, v56, type metadata accessor for RequestContentModel);
    v64 = 0;
  }

  else
  {
    v64 = 1;
  }

  v65 = v107;
  (*(v103 + 56))(v56, v64, 1, v107);
  if ((v55)(v56, 1, v65))
  {
    sub_242C6D138(v56, &qword_27ECF2EC8);
  }

  else
  {
    v73 = v87;
    sub_242D39B5C(v56, v87, type metadata accessor for RequestContentModel);
    sub_242C6D138(v56, &qword_27ECF2EC8);
    v67 = RequestContentModel.displayName.getter();
    v66 = v74;
    sub_242D39AFC(v73, type metadata accessor for RequestContentModel);
    if (v66)
    {
      v35 = v102;
      goto LABEL_58;
    }
  }

  v66 = 0x8000000242F5A1F0;
  v35 = v102;
  v67 = 0xD000000000000015;
LABEL_58:
  sub_242D39AFC(v106, type metadata accessor for Zone);
  v75 = sub_242C8FD38(v67, v66, v110);

  *(v52 + 14) = v75;
  *(v52 + 22) = 2080;
  v76 = sub_242C8FD38(v34, 0xE500000000000000, v110);

  *(v52 + 24) = v76;
  v77 = v104;
  v78 = sub_242F03940();
  v79 = v93;
  _os_signpost_emit_with_name_impl(&dword_242C53000, v93, v94, v78, "RequestContent transition started: ", "newContent: %s activeContent: %s, ZoneRegion: %s", v52, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x245D287D0](v53, -1, -1);
  MEMORY[0x245D287D0](v52, -1, -1);

  (*(v95 + 8))(v77, v96);
  v32 = v105;
LABEL_59:
  v80 = *v98;
  if (*v98)
  {

    v80(v81);
    sub_242C655DC(v80);
  }

  v82 = v99;
  sub_242CA321C(v35, v99, &qword_27ECFC780);
  v83 = v97;
  sub_242CA321C(v32, v97, &qword_27ECF2EC8);
  swift_getKeyPath();
  swift_getKeyPath();
  v84 = sub_242F03A70();
  sub_242E080E0(v83, v82);
  v84(v110, 0);

  LOBYTE(v110[0]) = v100 & 1;
  return sub_242D28F38(v110, 0);
}

uint64_t sub_242D2883C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v48 = a6;
  v53 = a4;
  v51 = a3;
  v9 = type metadata accessor for RequestContentModel();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v44 - v13;
  v15 = sub_242F03960();
  v49 = *(v15 - 8);
  v50 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Zone();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ECEF0A8 != -1)
  {
    swift_once();
  }

  v21 = sub_242F039A0();
  __swift_project_value_buffer(v21, qword_27ED5D270);
  sub_242D39B5C(a2, v20, type metadata accessor for Zone);

  sub_242F03950();
  v22 = sub_242F03980();
  v23 = sub_242F05780();

  v24 = sub_242F05840();
  v52 = a1;
  if ((v24 & 1) == 0)
  {

    (*(v49 + 8))(v17, v50);
    sub_242D39AFC(v20, type metadata accessor for Zone);
    v30 = v51;
    goto LABEL_17;
  }

  v45 = v23;
  v46 = a5;
  v25 = swift_slowAlloc();
  v44 = swift_slowAlloc();
  v55[0] = v44;
  *v25 = 136315394;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  v26 = v54;
  if (*(v54 + 16) && (v27 = sub_242CE5568(v20), (v28 & 1) != 0))
  {
    sub_242D39B5C(*(v26 + 56) + *(v10 + 72) * v27, v14, type metadata accessor for RequestContentModel);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  (*(v10 + 56))(v14, v29, 1, v9);
  if ((*(v10 + 48))(v14, 1, v9))
  {
    sub_242C6D138(v14, &qword_27ECF2EC8);
    a5 = v46;
  }

  else
  {
    v33 = v47;
    sub_242D39B5C(v14, v47, type metadata accessor for RequestContentModel);
    sub_242C6D138(v14, &qword_27ECF2EC8);
    v32 = RequestContentModel.displayName.getter();
    v31 = v34;
    sub_242D39AFC(v33, type metadata accessor for RequestContentModel);
    a5 = v46;
    if (v31)
    {
      goto LABEL_13;
    }
  }

  v31 = 0x8000000242F5A1F0;
  v32 = 0xD000000000000015;
LABEL_13:
  sub_242D39AFC(v20, type metadata accessor for Zone);
  v35 = sub_242C8FD38(v32, v31, v55);

  *(v25 + 4) = v35;
  *(v25 + 12) = 2080;
  v30 = v51;
  if (v51)
  {
    v36 = 0x32656E6F7ALL;
  }

  else
  {
    v36 = 0x31656E6F7ALL;
  }

  v37 = sub_242C8FD38(v36, 0xE500000000000000, v55);

  *(v25 + 14) = v37;
  v38 = sub_242F03940();
  _os_signpost_emit_with_name_impl(&dword_242C53000, v22, v45, v38, "RequestContent transition ended: ", "activeContent: %s, ZoneRegion: %s", v25, 0x16u);
  v39 = v44;
  swift_arrayDestroy();
  MEMORY[0x245D287D0](v39, -1, -1);
  MEMORY[0x245D287D0](v25, -1, -1);

  (*(v49 + 8))(v17, v50);
LABEL_17:
  LOBYTE(v55[0]) = v30 & 1;
  sub_242D28F38(v55, 1);
  v40 = v53;
  result = swift_beginAccess();
  v42 = *(v40 + 16);
  if (v42)
  {

    v42(v43);
    result = sub_242C655DC(v42);
  }

  if (a5)
  {
    return a5(result);
  }

  return result;
}

uint64_t sub_242D28E70(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = (result + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillAppear);
    swift_beginAccess();
    v4 = *v3;
    sub_242C5573C(*v3);

    if (v4)
    {
      memset(v5, 0, sizeof(v5));
      v6 = 2;
      v4(a1, v5);
      return sub_242C655DC(v4);
    }
  }

  return result;
}

uint64_t sub_242D28F38(char *a1, char a2)
{
  v3 = *a1;
  if (qword_27ECEF4D0 != -1)
  {
    swift_once();
  }

  v4 = sub_242F039D0();
  __swift_project_value_buffer(v4, qword_27ED5D310);
  v5 = sub_242F039B0();
  v6 = sub_242F05720();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315394;
    if (a2)
    {
      v9 = 0x64656C74746573;
    }

    else
    {
      v9 = 0x64657472617473;
    }

    v10 = sub_242C8FD38(v9, 0xE700000000000000, &v26);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_242F04F90();
    v13 = sub_242C8FD38(v11, v12, &v26);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_242C53000, v5, v6, "RequestContent - %s transition on zone: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D287D0](v8, -1, -1);
    MEMORY[0x245D287D0](v7, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  v14 = v26;
  if (!*(v26 + 16))
  {
    goto LABEL_14;
  }

  v15 = sub_242CE561C(v3);
  if ((v16 & 1) == 0)
  {
    goto LABEL_14;
  }

  v17 = *(*(v14 + 56) + 8 * v15);

  if (a2)
  {
    v19 = v17 - 1;
    if (!__OFSUB__(v17, 1))
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_14:

    swift_getKeyPath();
    swift_getKeyPath();
    sub_242F03A80();

    v20 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v20;
    sub_242CDF440(1, v3, isUniquelyReferenced_nonNull_native);
    v22 = v26;
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = v22;
    goto LABEL_18;
  }

  v19 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
LABEL_16:
    if (v19 <= 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_242F03A80();

      sub_242D37DC0(v3);
      swift_getKeyPath();
      swift_getKeyPath();

      goto LABEL_19;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_242F03A80();

    v23 = v26;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v23;
    sub_242CDF440(v19, v3, v24);
    v25 = v26;
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = v25;
LABEL_18:

LABEL_19:
    sub_242F03A90();
    return sub_242D14B80();
  }

  __break(1u);
  return result;
}

uint64_t ClusterTransitionCoordinator.startAppearanceTransition(to:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F88);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v35 = &v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_242F03BB0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  if (qword_27ECEF4D0 != -1)
  {
    swift_once();
  }

  v16 = sub_242F039D0();
  __swift_project_value_buffer(v16, qword_27ED5D310);
  v37 = *(v10 + 16);
  v37(v15, a1, v9);
  v17 = sub_242F039B0();
  v18 = sub_242F05720();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34 = a1;
    v21 = v20;
    v38 = v20;
    *v19 = 136315138;
    v37(v13, v15, v9);
    v22 = sub_242F04F90();
    v33 = v8;
    v23 = v10;
    v25 = v24;
    (*(v23 + 8))(v15, v9);
    v26 = sub_242C8FD38(v22, v25, &v38);
    v10 = v23;
    v8 = v33;

    *(v19 + 4) = v26;
    _os_log_impl(&dword_242C53000, v17, v18, "AppearanceTransition Start - to: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v21);
    v27 = v21;
    a1 = v34;
    MEMORY[0x245D287D0](v27, -1, -1);
    MEMORY[0x245D287D0](v19, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v15, v9);
  }

  v28 = type metadata accessor for ClusterTransitionCoordinator.AppearanceTransition(0);
  v29 = v37;
  v37(&v8[*(v28 + 20)], a1, v9);
  sub_242F03710();
  (*(*(v28 - 8) + 56))(v8, 0, 1, v28);
  sub_242D16D54(v8);
  v30 = v35;
  v29(v35, a1, v9);
  (*(v10 + 56))(v30, 0, 1, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242CA321C(v30, v36, &qword_27ECF2F88);

  sub_242F03A90();
  return sub_242C6D138(v30, &qword_27ECF2F88);
}

uint64_t ClusterTransitionCoordinator.endAppearanceTransition(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_242F03BB0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  if (qword_27ECEF4D0 != -1)
  {
    swift_once();
  }

  v14 = sub_242F039D0();
  __swift_project_value_buffer(v14, qword_27ED5D310);
  v15 = *(v8 + 16);
  v15(v13, a1, v7);
  v16 = sub_242F039B0();
  v17 = sub_242F05720();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = v2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v30 = v6;
    v21 = v20;
    v32 = v20;
    *v19 = 136315138;
    v15(v11, v13, v7);
    v22 = sub_242F04F90();
    v24 = v23;
    (*(v8 + 8))(v13, v7);
    v25 = sub_242C8FD38(v22, v24, &v32);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_242C53000, v16, v17, "AppearanceTransition End - to: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v21);
    v26 = v21;
    v6 = v30;
    MEMORY[0x245D287D0](v26, -1, -1);
    MEMORY[0x245D287D0](v19, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v27 = type metadata accessor for ClusterTransitionCoordinator.AppearanceTransition(0);
  (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
  return sub_242D16D54(v6);
}

uint64_t sub_242D29B10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = *(a1 + *(type metadata accessor for Component() + 36));
  if (*(v7 + 16))
  {
    v8 = type metadata accessor for Slot();
    sub_242CA321C(v7 + *(v8 + 36) + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), v6, &qword_27ECF0B08);
    v9 = type metadata accessor for Instrument();
    if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
    {
      sub_242C6D138(v6, &qword_27ECF0B08);
    }

    else
    {
      memcpy(v19, &v6[*(v9 + 20)], sizeof(v19));
      sub_242CF6BA4(v19, &v18);
      sub_242D39AFC(v6, type metadata accessor for Instrument);
      memcpy(v20, v19, sizeof(v20));
      if (sub_242C9E788(v20) == 6)
      {
        v10 = sub_242C556B4(v20);
        v12 = *(v10 + 16);
        v11 = *(v10 + 24);

        sub_242CF6C60(v19);
        if (v11)
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2748);
          v14 = *(v13 + 48);
          *a2 = v12;
          a2[1] = v11;
          sub_242D39B5C(a1, a2 + v14, type metadata accessor for Component);
          return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
        }
      }

      else
      {
        sub_242CF6C60(v19);
      }
    }
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2748);
  return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
}

uint64_t ClusterTransitionCoordinator.LayoutTransition.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_242F03720();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ClusterTransitionCoordinator.LayoutTransition.description.getter()
{
  v1 = sub_242F03720();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3028);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3030);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v26 = 0x203A74756F79614CLL;
  v27 = 0xE800000000000000;
  v17 = type metadata accessor for ClusterTransitionCoordinator.LayoutTransition(0);
  sub_242CA321C(v0 + *(v17 + 24), v10, &qword_27ECF2F98);
  v18 = type metadata accessor for Layout();
  if ((*(*(v18 - 8) + 48))(v10, 1, v18) == 1)
  {
    sub_242C6D138(v10, &qword_27ECF2F98);
    v19 = 1;
  }

  else
  {
    sub_242CA321C(v10, v16, &qword_27ECF3028);
    sub_242D39AFC(v10, type metadata accessor for Layout);
    v19 = 0;
  }

  (*(v5 + 56))(v16, v19, 1, v4);
  sub_242CA321C(v16, v14, &qword_27ECF3030);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    v20 = 0x8000000242F5A210;
    v21 = 0xD000000000000028;
  }

  else
  {
    sub_242CF6B3C(v14, v7, &qword_27ECF3028);
    (*(v24 + 16))(v3, v7, v25);
    v21 = sub_242F04F90();
    v20 = v22;
    sub_242C6D138(v7, &qword_27ECF3028);
  }

  sub_242C6D138(v16, &qword_27ECF3030);
  MEMORY[0x245D26660](v21, v20);

  return v26;
}

uint64_t sub_242D2A2D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_242F03720();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void ClusterTransitionCoordinator.startLayoutTransition(to:fadeInNewLayout:fadeOutOldLayout:)(uint64_t a1, int a2, int a3)
{
  v4 = v3;
  v161 = a2;
  v162 = a3;
  v6 = sub_242F03960();
  v157 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v156 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for Layout();
  v173 = *(v167 - 8);
  v8 = MEMORY[0x28223BE20](v167);
  v154 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v155 = &v148 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F90);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v159 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v160 = &v148 - v14;
  v165 = type metadata accessor for PopoverModel(0);
  MEMORY[0x28223BE20](v165);
  v164 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC8);
  MEMORY[0x28223BE20](v16 - 8);
  v166 = &v148 - v17;
  v172 = type metadata accessor for RequestContentModel();
  v175 = *(v172 - 8);
  v18 = MEMORY[0x28223BE20](v172);
  v178 = (&v148 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v174 = &v148 - v20;
  v168 = type metadata accessor for Zone();
  v21 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v177 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98);
  v24 = MEMORY[0x28223BE20](v23);
  v163 = &v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v158 = (&v148 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v148 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v176 = &v148 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v148 - v33;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  if ((v183 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242F03A80();

    if ((v183 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_242F03A80();

      if (v183 != 1)
      {
        v149 = v6;
        v151 = a1;
        sub_242CA321C(a1, v30, &qword_27ECF2F98);
        v44 = *(v173 + 48);
        v45 = v167;
        v173 += 48;
        v150 = v44;
        v46 = v44(v30, 1, v167);
        v152 = v4;
        if (v46 == 1)
        {
          sub_242C6D138(v30, &qword_27ECF2F98);
LABEL_50:
          v107 = MEMORY[0x277D84F90];
LABEL_51:
          v179[0] = v107;
          KeyPath = swift_getKeyPath();
          swift_getKeyPath();
          sub_242F03A80();

          v109 = v183;
          v110 = *(v183 + 16);
          if (v110)
          {
            v111 = v183 + 31;
            while (v110 <= *(v109 + 16))
            {
              v112 = *(v111 + v110);
              v113 = sub_242D3861C(v179, v112);
              v114 = *(v179[0] + 16);
              if (v114 < v113)
              {
                goto LABEL_63;
              }

              --v110;
              sub_242D3A188(v113, v114, sub_242C83A00, sub_242D3A0E4);
              KeyPath = v179;
              sub_242D37FCC(0, 0, v112);
              if (!v110)
              {
                goto LABEL_56;
              }
            }

            __break(1u);
LABEL_63:
            __break(1u);
          }

          else
          {
LABEL_56:

            if (qword_27ECEF4D0 != -1)
            {
              swift_once();
            }

            v115 = sub_242F039D0();
            __swift_project_value_buffer(v115, qword_27ED5D310);
            v116 = sub_242F05700();

            v117 = sub_242F039B0();

            if (os_log_type_enabled(v117, v116))
            {
              v118 = swift_slowAlloc();
              v119 = swift_slowAlloc();
              *&v183 = v119;
              *v118 = 136315394;
              swift_getKeyPath();
              swift_getKeyPath();
              sub_242F03A80();

              v120 = MEMORY[0x245D26920](*&v193[0], &type metadata for Zone.ZoneRegion);
              v122 = v121;

              v123 = sub_242C8FD38(v120, v122, &v183);

              *(v118 + 4) = v123;
              *(v118 + 12) = 2080;
              swift_beginAccess();

              v125 = MEMORY[0x245D26920](v124, &type metadata for Zone.ZoneRegion);
              v127 = v126;

              v128 = sub_242C8FD38(v125, v127, &v183);

              *(v118 + 14) = v128;
              _os_log_impl(&dword_242C53000, v117, v116, "Original focusable zones %s. New focusable zones: %s", v118, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x245D287D0](v119, -1, -1);
              MEMORY[0x245D287D0](v118, -1, -1);
            }

            swift_beginAccess();
            v129 = v179[0];
            swift_getKeyPath();
            swift_getKeyPath();
            v180[0] = v129;

            v178 = v129;

            sub_242F03A90();
            swift_getKeyPath();
            swift_getKeyPath();
            v130 = type metadata accessor for ClusterTransitionCoordinator.LayoutTransition(0);
            v131 = v160;
            sub_242F03A80();

            v132 = v151;
            sub_242CA321C(v151, v131 + v130[6], &qword_27ECF2F98);
            sub_242F03710();
            *(v131 + v130[7]) = v161 & 1;
            *(v131 + v130[8]) = v162 & 1;
            (*(*(v130 - 1) + 56))(v131, 0, 1, v130);
            swift_getKeyPath();
            swift_getKeyPath();
            sub_242CA321C(v131, v159, &qword_27ECF2F90);

            sub_242F03A90();
            sub_242D16044();
            sub_242C6D138(v131, &qword_27ECF2F90);
            KeyPath = v158;
            sub_242CA321C(v132, v158, &qword_27ECF2F98);
            if (v150(KeyPath, 1, v167) == 1)
            {
              sub_242C6D138(KeyPath, &qword_27ECF2F98);
LABEL_70:
              v146 = v176;
              v147 = v163;
              sub_242CA321C(v151, v176, &qword_27ECF2F98);
              swift_getKeyPath();
              swift_getKeyPath();
              sub_242CA321C(v146, v147, &qword_27ECF2F98);

              sub_242F03A90();
              sub_242C6D138(v146, &qword_27ECF2F98);

              return;
            }
          }

          v133 = v155;
          sub_242D39C68(KeyPath, v155, type metadata accessor for Layout);
          if (qword_27ECEF0A8 != -1)
          {
            swift_once();
          }

          v134 = sub_242F039A0();
          __swift_project_value_buffer(v134, qword_27ED5D270);
          v135 = v154;
          sub_242D39B5C(v133, v154, type metadata accessor for Layout);
          v136 = v156;
          sub_242F03950();
          v137 = sub_242F03980();
          v138 = sub_242F05780();
          if (sub_242F05840())
          {
            v139 = swift_slowAlloc();
            v140 = swift_slowAlloc();
            v180[0] = v140;
            *v139 = 136315138;
            v141 = sub_242F036F0();
            v143 = v142;
            sub_242D39AFC(v135, type metadata accessor for Layout);
            v144 = sub_242C8FD38(v141, v143, v180);

            *(v139 + 4) = v144;
            v145 = sub_242F03940();
            _os_signpost_emit_with_name_impl(&dword_242C53000, v137, v138, v145, "Layout transition started.", "Target Layout: %s", v139, 0xCu);
            __swift_destroy_boxed_opaque_existential_2Tm(v140);
            MEMORY[0x245D287D0](v140, -1, -1);
            MEMORY[0x245D287D0](v139, -1, -1);

            (*(v157 + 8))(v136, v149);
          }

          else
          {

            (*(v157 + 8))(v136, v149);
            sub_242D39AFC(v135, type metadata accessor for Layout);
          }

          sub_242D39AFC(v133, type metadata accessor for Layout);
          goto LABEL_70;
        }

        v47 = *&v30[*(v45 + 24)];

        sub_242D39AFC(v30, type metadata accessor for Layout);
        v48 = *(v47 + 16);
        if (!v48)
        {

          goto LABEL_50;
        }

        v49 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v148 = v47;
        v50 = v47 + v49;
        v51 = v174;
        v170 = *(v21 + 72);
        v171 = (v175 + 56);
        v169 = (v175 + 48);
        v153 = MEMORY[0x277D84F90];
        v52 = v166;
        v53 = v172;
        v54 = v177;
        while (1)
        {
          sub_242D39B5C(v50, v54, type metadata accessor for Zone);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_242F03A80();

          v55 = v183;
          if (*(v183 + 16))
          {
            v56 = sub_242CE5568(v54);
            if (v57)
            {
              sub_242D39B5C(*(v55 + 56) + *(v175 + 72) * v56, v52, type metadata accessor for RequestContentModel);
              v58 = 0;
            }

            else
            {
              v58 = 1;
            }
          }

          else
          {
            v58 = 1;
          }

          (*v171)(v52, v58, 1, v53);

          if ((*v169)(v52, 1, v53) != 1)
          {
            break;
          }

          sub_242D39AFC(v54, type metadata accessor for Zone);
          sub_242C6D138(v52, &qword_27ECF2EC8);
LABEL_14:
          v50 += v170;
          if (!--v48)
          {

            v107 = v153;
            goto LABEL_51;
          }
        }

        sub_242D39C68(v52, v51, type metadata accessor for RequestContentModel);
        sub_242D39B5C(v51, v178, type metadata accessor for RequestContentModel);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            v81 = v164;
            sub_242D39C68(v178, v164, type metadata accessor for PopoverModel);
            v82 = *(v81 + *(v165 + 20));
            v83 = v81;
            v53 = v172;
            sub_242D39AFC(v83, type metadata accessor for PopoverModel);
            sub_242D39AFC(v51, type metadata accessor for RequestContentModel);
            if (v82)
            {
              goto LABEL_40;
            }

            goto LABEL_28;
          }

          sub_242D39AFC(v178, type metadata accessor for RequestContentModel);
LABEL_27:
          sub_242D39AFC(v51, type metadata accessor for RequestContentModel);
LABEL_28:
          sub_242D39AFC(v54, type metadata accessor for Zone);
          goto LABEL_14;
        }

        if (EnumCaseMultiPayload != 2)
        {
          if (EnumCaseMultiPayload == 3)
          {
            v60 = *(v178 + 5);

            v61 = v60;
            v54 = v177;
            v51 = v174;
            sub_242C655DC(v61);
            sub_242D39AFC(v51, type metadata accessor for RequestContentModel);
LABEL_40:
            v102 = v54;
            v103 = *(v54 + *(v168 + 40));
            sub_242D39AFC(v102, type metadata accessor for Zone);
            if (v103 != 2)
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v104 = v153;
              }

              else
              {
                v104 = sub_242C83A00(0, *(v153 + 2) + 1, 1, v153);
              }

              v106 = *(v104 + 2);
              v105 = *(v104 + 3);
              if (v106 >= v105 >> 1)
              {
                v104 = sub_242C83A00((v105 > 1), v106 + 1, 1, v104);
              }

              *(v104 + 2) = v106 + 1;
              v153 = v104;
              v104[v106 + 32] = v103 & 1;
              v51 = v174;
            }

            v54 = v177;
            goto LABEL_14;
          }

          goto LABEL_27;
        }

        v62 = v178[7];
        v63 = v178[5];
        v189 = v178[6];
        v190 = v62;
        v64 = v178[7];
        v191 = v178[8];
        v65 = v178[3];
        v66 = v178[1];
        v185 = v178[2];
        v186 = v65;
        v67 = v178[3];
        v68 = v178[5];
        v187 = v178[4];
        v188 = v68;
        v69 = v178[1];
        v183 = *v178;
        v184 = v69;
        v70 = v178[8];
        v193[6] = v64;
        v193[7] = v70;
        v193[2] = v67;
        v193[3] = v187;
        v193[4] = v63;
        v193[5] = v189;
        v192 = *(v178 + 18);
        v194 = *(v178 + 18);
        v193[0] = v66;
        v193[1] = v185;
        v71 = sub_242D3A260(v193);
        v72 = sub_242C578A0(v193);
        if (v71 > 1)
        {
          if (v71 == 2)
          {
            v73 = &type metadata for NotificationModel.FancyModel;
            v181 = &type metadata for NotificationModel.FancyModel;
            v74 = sub_242D3A370();
            v182 = v74;
            v84 = swift_allocObject();
            v180[0] = v84;
            v85 = *(v72 + 112);
            v87 = *(v72 + 64);
            v86 = *(v72 + 80);
            v84[7] = *(v72 + 96);
            v84[8] = v85;
            v84[5] = v87;
            v84[6] = v86;
            v88 = *(v72 + 48);
            v90 = *v72;
            v89 = *(v72 + 16);
            v84[3] = *(v72 + 32);
            v84[4] = v88;
            v84[1] = v90;
            v84[2] = v89;
            goto LABEL_39;
          }

          v73 = &type metadata for NotificationModel.InferredNotificationModel;
          v181 = &type metadata for NotificationModel.InferredNotificationModel;
          v74 = sub_242D3A26C();
          v182 = v74;
          v91 = swift_allocObject();
          v180[0] = v91;
          v93 = *(v72 + 96);
          v92 = *(v72 + 112);
          v94 = *(v72 + 80);
          *(v91 + 144) = *(v72 + 128);
          *(v91 + 112) = v93;
          *(v91 + 128) = v92;
          *(v91 + 96) = v94;
        }

        else
        {
          if (!v71)
          {
            v73 = &type metadata for NotificationModel.MinimalNotificationModel;
            v181 = &type metadata for NotificationModel.MinimalNotificationModel;
            v74 = sub_242D3A3C4();
            v182 = v74;
            v75 = swift_allocObject();
            v180[0] = v75;
            v76 = *(v72 + 96);
            v78 = *(v72 + 48);
            v77 = *(v72 + 64);
            v75[6] = *(v72 + 80);
            v75[7] = v76;
            v75[4] = v78;
            v75[5] = v77;
            v80 = *(v72 + 16);
            v79 = *(v72 + 32);
            v75[1] = *v72;
            v75[2] = v80;
            v75[3] = v79;
            goto LABEL_39;
          }

          v73 = &type metadata for NotificationModel.ModalAlertModel;
          v181 = &type metadata for NotificationModel.ModalAlertModel;
          v74 = sub_242D3A418();
          v182 = v74;
          v91 = swift_allocObject();
          v180[0] = v91;
        }

        *(v91 + 16) = *v72;
        v95 = *(v72 + 64);
        v97 = *(v72 + 16);
        v96 = *(v72 + 32);
        *(v91 + 64) = *(v72 + 48);
        *(v91 + 80) = v95;
        *(v91 + 32) = v97;
        *(v91 + 48) = v96;
LABEL_39:
        v98 = v73;
        __swift_project_boxed_opaque_existential_2Tm(v180, v73);
        v99 = *(v74 + 8);
        v100 = *(v99 + 8);
        sub_242D3A2C0(&v184, v179);
        v101 = v100(v98, v99);
        __swift_destroy_boxed_opaque_existential_2Tm(v180);
        sub_242D3A31C(&v183);
        v51 = v174;
        sub_242D39AFC(v174, type metadata accessor for RequestContentModel);
        v52 = v166;
        v53 = v172;
        v54 = v177;
        if (v101)
        {
          goto LABEL_40;
        }

        goto LABEL_28;
      }
    }
  }

  if (qword_27ECEF4D0 != -1)
  {
    swift_once();
  }

  v35 = sub_242F039D0();
  __swift_project_value_buffer(v35, qword_27ED5D310);
  sub_242CA321C(a1, v34, &qword_27ECF2F98);
  v36 = sub_242F039B0();
  v37 = sub_242F05720();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v183 = v39;
    *v38 = 136315138;
    sub_242CA321C(v34, v176, &qword_27ECF2F98);
    v40 = sub_242F04F90();
    v42 = v41;
    sub_242C6D138(v34, &qword_27ECF2F98);
    v43 = sub_242C8FD38(v40, v42, &v183);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_242C53000, v36, v37, "In an active transition. Preventing layout change to: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v39);
    MEMORY[0x245D287D0](v39, -1, -1);
    MEMORY[0x245D287D0](v38, -1, -1);
  }

  else
  {

    sub_242C6D138(v34, &qword_27ECF2F98);
  }
}

Swift::Void __swiftcall ClusterTransitionCoordinator.endLayoutTransition()()
{
  v0 = sub_242F03960();
  v48 = *(v0 - 8);
  v49 = v0;
  MEMORY[0x28223BE20](v0);
  v47 = &v42[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v42[-v3];
  v5 = type metadata accessor for Layout();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v45 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v46 = &v42[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F90);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v50 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v51 = &v42[-v14];
  MEMORY[0x28223BE20](v13);
  v16 = &v42[-v15];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  v17 = type metadata accessor for ClusterTransitionCoordinator.LayoutTransition(0);
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v16, 1, v17);
  sub_242C6D138(v16, &qword_27ECF2F90);
  if (v19 == 1)
  {
    if (qword_27ECEF4D0 != -1)
    {
      swift_once();
    }

    v20 = sub_242F039D0();
    __swift_project_value_buffer(v20, qword_27ED5D310);
    v21 = sub_242F039B0();
    v22 = sub_242F05720();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_242C53000, v21, v22, "No layout transition to end.", v23, 2u);
      MEMORY[0x245D287D0](v23, -1, -1);
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242F03A80();

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_242C6D138(v4, &qword_27ECF2F98);
    }

    else
    {
      v24 = v46;
      sub_242D39C68(v4, v46, type metadata accessor for Layout);
      if (qword_27ECEF0A8 != -1)
      {
        swift_once();
      }

      v25 = sub_242F039A0();
      __swift_project_value_buffer(v25, qword_27ED5D270);
      v26 = v45;
      sub_242D39B5C(v24, v45, type metadata accessor for Layout);
      v27 = v47;
      sub_242F03950();
      v28 = sub_242F03980();
      v29 = sub_242F05780();
      if (sub_242F05840())
      {
        v30 = swift_slowAlloc();
        v43 = v29;
        v31 = v30;
        v32 = swift_slowAlloc();
        v52 = v32;
        *v31 = 136315138;
        v33 = sub_242F036F0();
        v34 = v26;
        v36 = v35;
        v44 = type metadata accessor for Layout;
        sub_242D39AFC(v34, type metadata accessor for Layout);
        v37 = sub_242C8FD38(v33, v36, &v52);

        *(v31 + 4) = v37;
        v38 = sub_242F03940();
        _os_signpost_emit_with_name_impl(&dword_242C53000, v28, v43, v38, "Layout transition ended.", "Active Layout: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_2Tm(v32);
        MEMORY[0x245D287D0](v32, -1, -1);
        MEMORY[0x245D287D0](v31, -1, -1);

        (*(v48 + 8))(v27, v49);
        v39 = v24;
        v40 = v44;
      }

      else
      {

        (*(v48 + 8))(v27, v49);
        sub_242D39AFC(v26, type metadata accessor for Layout);
        v39 = v24;
        v40 = type metadata accessor for Layout;
      }

      sub_242D39AFC(v39, v40);
    }

    v41 = v51;
    (*(v18 + 56))(v51, 1, 1, v17);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242CA321C(v41, v50, &qword_27ECF2F90);

    sub_242F03A90();
    sub_242D16044();
    sub_242C6D138(v41, &qword_27ECF2F90);
  }
}

uint64_t ClusterTransitionCoordinator.AppearanceTransition.description.getter()
{
  sub_242F05A80();
  MEMORY[0x245D26660](0xD00000000000001ELL, 0x8000000242F5A280);
  type metadata accessor for ClusterTransitionCoordinator.AppearanceTransition(0);
  sub_242F03BB0();
  sub_242F05C20();
  return 0;
}

uint64_t ClusterTransitionCoordinator.AppearanceTransition.targetAppearance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClusterTransitionCoordinator.AppearanceTransition(0) + 20);
  v4 = sub_242F03BB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static ClusterTransitionCoordinator.AppearanceTransition.== infix(_:_:)()
{
  if ((sub_242F03700() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ClusterTransitionCoordinator.AppearanceTransition(0);

  return sub_242F03BA0();
}

uint64_t sub_242D2C14C()
{
  sub_242F05A80();
  MEMORY[0x245D26660](0xD00000000000001ELL, 0x8000000242F5A280);
  sub_242F03BB0();
  sub_242F05C20();
  return 0;
}

uint64_t sub_242D2C1EC()
{
  if ((sub_242F03700() & 1) == 0)
  {
    return 0;
  }

  return sub_242F03BA0();
}

uint64_t ClusterTransitionCoordinator.ComponentTransition.description.getter()
{
  v1 = sub_242F03720();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = 0x203A6D657449;
  v8[1] = 0xE600000000000000;
  v5 = type metadata accessor for ClusterTransitionCoordinator.ComponentTransition(0);
  (*(v2 + 16))(v4, v0 + *(v5 + 20), v1);
  v6 = sub_242F04F90();
  MEMORY[0x245D26660](v6);

  return v8[0];
}

uint64_t static ClusterTransitionCoordinator.ComponentTransition.== infix(_:_:)()
{
  if ((sub_242F03700() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ClusterTransitionCoordinator.ComponentTransition(0);
  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
  return sub_242F04EE0() & 1;
}

uint64_t sub_242D2C484(uint64_t a1)
{
  v3 = sub_242F03720();
  MEMORY[0x28223BE20](v3);
  v8[0] = 0x203A6D657449;
  v8[1] = 0xE600000000000000;
  (*(v5 + 16))(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + *(a1 + 20), v3);
  v6 = sub_242F04F90();
  MEMORY[0x245D26660](v6);

  return v8[0];
}

uint64_t sub_242D2C584()
{
  if ((sub_242F03700() & 1) == 0)
  {
    return 0;
  }

  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
  return sub_242F04EE0() & 1;
}

uint64_t sub_242D2C624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v110 = a2;
  v111 = a3;
  v105 = sub_242F03720();
  v98 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v97 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  MEMORY[0x28223BE20](v4 - 8);
  v96 = &v93 - v5;
  v102 = sub_242F03960();
  v6 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v104 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Component();
  v8 = MEMORY[0x28223BE20](v99);
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v101 = &v93 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v100 = &v93 - v14;
  MEMORY[0x28223BE20](v13);
  v103 = &v93 - v15;
  v16 = type metadata accessor for ClusterTransitionCoordinator.ComponentTransition(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v106 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31C8);
  MEMORY[0x28223BE20](v19);
  v21 = &v93 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31D0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  *&v107 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v108 = &v93 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v93 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v93 - v30;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v33 = result;
  v94 = v10;
  v95 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  v109 = v33;
  sub_242F03A80();

  v34 = v117;
  if (*(v117 + 16) && (v35 = sub_242CE5568(v110), (v36 & 1) != 0))
  {
    sub_242D39B5C(*(v34 + 56) + v17[9] * v35, v31, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = v17[7];
  v38(v31, v37, 1, v16);
  sub_242D39B5C(v111, v29, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
  v38(v29, 0, 1, v16);
  v39 = *(v19 + 48);
  sub_242CA321C(v31, v21, &qword_27ECF31D0);
  sub_242CA321C(v29, &v21[v39], &qword_27ECF31D0);
  v40 = v17[6];
  if (v40(v21, 1, v16) != 1)
  {
    v83 = v108;
    sub_242CA321C(v21, v108, &qword_27ECF31D0);
    if (v40(&v21[v39], 1, v16) != 1)
    {
      v86 = v106;
      sub_242D39C68(&v21[v39], v106, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
      if (sub_242F03700())
      {
        sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
        v87 = sub_242F04EE0();
        sub_242D39AFC(v86, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
        sub_242C6D138(v29, &qword_27ECF31D0);
        sub_242C6D138(v31, &qword_27ECF31D0);
        sub_242D39AFC(v83, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
        sub_242C6D138(v21, &qword_27ECF31D0);
        if (v87)
        {
          goto LABEL_9;
        }
      }

      sub_242D39AFC(v86, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
      sub_242C6D138(v29, &qword_27ECF31D0);
      sub_242C6D138(v31, &qword_27ECF31D0);
      sub_242D39AFC(v83, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
      v85 = v21;
      v84 = &qword_27ECF31D0;
LABEL_19:
      sub_242C6D138(v85, v84);
    }

    sub_242C6D138(v29, &qword_27ECF31D0);
    sub_242C6D138(v31, &qword_27ECF31D0);
    sub_242D39AFC(v83, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
LABEL_18:
    v84 = &qword_27ECF31C8;
    v85 = v21;
    goto LABEL_19;
  }

  sub_242C6D138(v29, &qword_27ECF31D0);
  sub_242C6D138(v31, &qword_27ECF31D0);
  if (v40(&v21[v39], 1, v16) != 1)
  {
    goto LABEL_18;
  }

  sub_242C6D138(v21, &qword_27ECF31D0);
LABEL_9:
  swift_getKeyPath();
  swift_getKeyPath();
  v41 = v109;
  sub_242F03A80();

  v42 = v107;
  v43 = v110;
  sub_242D37C00(v110, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition, sub_242ED0740, sub_242D02B84, v107);
  sub_242C6D138(v42, &qword_27ECF31D0);
  v44 = v117;
  swift_getKeyPath();
  swift_getKeyPath();
  v115 = v44;

  sub_242F03A90();
  sub_242D150A0();
  v45 = *(v41 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels);
  if (!*(v45 + 16))
  {
  }

  v46 = sub_242CE5568(v43);
  if ((v47 & 1) == 0)
  {
  }

  v48 = (*(v45 + 56) + 112 * v46);
  v50 = v48[1];
  v49 = v48[2];
  v117 = *v48;
  v118 = v50;
  v119 = v49;
  v51 = *(v48 + 89);
  v53 = v48[4];
  v52 = v48[5];
  v120 = v48[3];
  *v121 = v53;
  *&v121[16] = v52;
  *&v121[25] = v51;
  v110 = *(&v117 + 1);
  v111 = v117;
  v54 = *(&v118 + 1);
  v108 = v118;
  v55 = v119;
  v56 = v120;
  v107 = *&v121[8];
  v57 = v53;
  v58 = *&v121[24];
  v59 = v51 >> 56;
  v60 = HIBYTE(v51);
  sub_242CA321C(&v117, &v115, &qword_27ECF21A8);
  v61 = sub_242D1162C(v110, v108, v54, v55, *(&v55 + 1), v56, *(&v56 + 1), v57, v107, *(&v107 + 1), v58, v59, v60);
  MEMORY[0x28223BE20](v61);
  sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component);
  sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  swift_getKeyPath();
  v63 = v100;
  sub_242F03A80();

  v64 = v103;
  sub_242D39C68(v63, v103, type metadata accessor for Component);
  if (qword_27ECEF0A8 != -1)
  {
    swift_once();
  }

  v65 = sub_242F039A0();
  __swift_project_value_buffer(v65, qword_27ED5D270);
  v66 = v101;
  sub_242D39B5C(v64, v101, type metadata accessor for Component);
  v67 = v94;
  sub_242D39B5C(v64, v94, type metadata accessor for Component);
  v68 = v104;
  sub_242F03950();
  v69 = sub_242F03980();
  v70 = sub_242F05780();
  v71 = sub_242F05840();
  v72 = v95;
  if (v71)
  {
    LODWORD(v110) = v70;
    v111 = v69;
    v73 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v114 = v108;
    *v73 = 136315394;
    v74 = v96;
    sub_242CA321C(v66, v96, &qword_27ECF23E8);
    v75 = v66;
    (*(v98 + 16))(v97, v74, v105);
    v76 = sub_242F04F90();
    v78 = v77;
    sub_242C6D138(v74, &qword_27ECF23E8);
    sub_242D39AFC(v75, type metadata accessor for Component);
    v79 = sub_242C8FD38(v76, v78, &v114);

    *(v73 + 4) = v79;
    *(v73 + 12) = 2080;
    Component.stableIdentifier.getter(&v115);
    if (v116)
    {
      v112 = v115;
      v113 = v116;
      v80 = sub_242F04F90();
      v82 = v81;
      sub_242D39AFC(v67, type metadata accessor for Component);
    }

    else
    {
      v82 = 0x8000000242F5A160;
      sub_242D39AFC(v67, type metadata accessor for Component);
      v80 = 0xD00000000000002DLL;
    }

    v88 = v111;
    v89 = sub_242C8FD38(v80, v82, &v114);

    *(v73 + 14) = v89;
    v90 = v104;
    v91 = sub_242F03940();
    _os_signpost_emit_with_name_impl(&dword_242C53000, v88, v110, v91, "Dynamic Content area transition animation settled.", "Current Component: %s. Current Instrument kind: %s", v73, 0x16u);
    v92 = v108;
    swift_arrayDestroy();
    MEMORY[0x245D287D0](v92, -1, -1);
    MEMORY[0x245D287D0](v73, -1, -1);

    (*(v72 + 8))(v90, v102);
    return sub_242D39AFC(v103, type metadata accessor for Component);
  }

  else
  {

    (*(v72 + 8))(v68, v102);
    sub_242D39AFC(v67, type metadata accessor for Component);
    sub_242D39AFC(v66, type metadata accessor for Component);
    return sub_242D39AFC(v64, type metadata accessor for Component);
  }
}

uint64_t ClusterTransitionCoordinator.ListDirection.init(iterateDirection:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008);
  v5 = *(*(v4 - 8) + 56);
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  return v5(a2, v6, 2, v4);
}

uint64_t sub_242D2D564(uint64_t a1)
{
  v2 = v1;
  v21 = a1;
  v4 = type metadata accessor for Component();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  v28[16] = v8;
  v11 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component);
  v28[17] = v11;
  v12 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component);
  v28[18] = v12;
  swift_getKeyPath();
  v28[12] = v4;
  v28[13] = v11;
  v28[14] = v12;
  swift_getKeyPath();
  sub_242D39B5C(a1, v10, type metadata accessor for Component);

  sub_242F03A90();
  v28[8] = v4;
  v28[9] = v11;
  v28[10] = v12;
  swift_getKeyPath();
  v28[4] = v4;
  v28[5] = v11;
  v28[6] = v12;
  swift_getKeyPath();
  sub_242F03A80();

  v13 = *(*v2 + 144);
  swift_beginAccess();
  v14 = *(v2 + v13);
  v28[2] = v7;

  v15 = sub_242CDAC68(sub_242D3E1B8, v28, v14);
  v17 = v16;

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v15;
  }

  sub_242D39AFC(v7, type metadata accessor for Component);
  v25 = v4;
  v26 = v11;
  v27 = v12;
  swift_getKeyPath();
  v22 = v4;
  v23 = v11;
  v24 = v12;
  swift_getKeyPath();
  v28[20] = v18;

  sub_242F03A90();
  return sub_242D39AFC(v21, type metadata accessor for Component);
}

uint64_t sub_242D2D864(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v74 = a3;
  v84 = a1;
  v85 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v77 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v73 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v73 - v13;
  v83 = type metadata accessor for Component();
  v79 = *(v83 - 8);
  v15 = MEMORY[0x28223BE20](v83);
  v75 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = &v73 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v76 = &v73 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v73 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2ED8);
  v81 = *(v23 - 8);
  v82 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v73 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31C0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v73 - v28;
  v30 = (v3 + *(*v3 + 112));
  *v30 = 0;
  v30[1] = 0;
  v31 = (v3 + *(*v3 + 120));
  *v31 = 0;
  v31[1] = 0;
  v32 = (v3 + *(*v3 + 128));
  *v32 = 0;
  v32[1] = 0;
  v33 = (v3 + *(*v3 + 136));
  *v33 = 0;
  v33[1] = 0;
  *(v3 + *(*v3 + 152)) = 0;
  v34 = *(*v3 + 168);
  v87 = 0;
  sub_242F03A40();
  (*(v27 + 32))(v3 + v34, v29, v26);
  v35 = *(*v3 + 184);
  LOBYTE(v87) = 0;
  sub_242F03A40();
  v36 = v82;
  v37 = *(v81 + 32);
  v37(v3 + v35, v25, v82);
  v38 = *(*v3 + 192);
  LOBYTE(v87) = 0;
  sub_242F03A40();
  v37(v3 + v38, v25, v36);
  v39 = *(*v3 + 200);
  v40 = sub_242F04A90();
  v78 = v3;
  *(v3 + v39) = v40;
  v80 = *(v84 + 16);
  if (!v80)
  {
    goto LABEL_21;
  }

  v41 = v79;
  v81 = *(v79 + 48);
  v82 = v79 + 48;
  v42 = (v81)(v85, 1, v83);
  v43 = v41;
  if (v42 != 1)
  {
    v44 = 0;
    while (1)
    {
      if (v80 == v44)
      {
        goto LABEL_19;
      }

      if (v44 >= *(v84 + 16))
      {
        break;
      }

      v45 = v43;
      sub_242D39B5C(v84 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v44, v22, type metadata accessor for Component);
      sub_242CA321C(v22, v14, &qword_27ECF23E8);
      sub_242CA321C(v85, v8, &qword_27ECF2730);
      if ((v81)(v8, 1, v83) == 1)
      {
        goto LABEL_18;
      }

      ++v44;
      sub_242CA321C(v8, v12, &qword_27ECF23E8);
      sub_242D39AFC(v8, type metadata accessor for Component);
      sub_242F03720();
      sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
      v46 = sub_242F04EE0();
      sub_242C6D138(v12, &qword_27ECF23E8);
      sub_242C6D138(v14, &qword_27ECF23E8);
      sub_242D39AFC(v22, type metadata accessor for Component);
      v43 = v45;
      if (v46)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v72 = 0;
    for (i = 0; ; i = 0)
    {
      sub_242F05C60();
      __break(1u);
LABEL_21:
      v72 = 0;
    }
  }

LABEL_8:
  v47 = v43;
  v48 = v78;
  v49 = v84;
  *(v78 + *(*v78 + 144)) = v84;
  swift_beginAccess();
  v86 = v49;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2338);
  sub_242F03A40();
  swift_endAccess();
  v50 = v77;
  sub_242CA321C(v85, v77, &qword_27ECF2730);
  v51 = v83;
  if ((v81)(v50, 1, v83) == 1)
  {
    v52 = v76;
    if (!*(v49 + 16))
    {
      goto LABEL_17;
    }

    sub_242D39B5C(v49 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v76, type metadata accessor for Component);

    if ((v81)(v50, 1, v51) != 1)
    {
      sub_242C6D138(v50, &qword_27ECF2730);
    }
  }

  else
  {

    v52 = v76;
    sub_242D39C68(v50, v76, type metadata accessor for Component);
  }

  swift_beginAccess();
  sub_242D39B5C(v52, v73, type metadata accessor for Component);
  sub_242F03A40();
  sub_242D39AFC(v52, type metadata accessor for Component);
  v53 = swift_endAccess();
  v54 = (v48 + *(*v48 + 160));
  v55 = v74;
  v56 = v74[3];
  v54[2] = v74[2];
  v54[3] = v56;
  v54[4] = v55[4];
  v57 = v55[1];
  *v54 = *v55;
  v54[1] = v57;
  MEMORY[0x28223BE20](v53);
  *(&v73 - 4) = v51;
  v58 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component);
  *(&v73 - 3) = v58;
  v59 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v73 - 4) = v51;
  *(&v73 - 3) = v58;
  i = v59;
  swift_getKeyPath();
  v61 = v75;
  sub_242F03A80();

  v62 = *(*v48 + 144);
  v63 = swift_beginAccess();
  v64 = *(v48 + v62);
  MEMORY[0x28223BE20](v63);
  i = v61;

  v65 = sub_242CDAC68(sub_242D3E1B8, (&v73 - 4), v64);
  v67 = v66;

  if (v67)
  {
    v65 = 0;
  }

  v68 = sub_242D39AFC(v61, type metadata accessor for Component);
  MEMORY[0x28223BE20](v68);
  *(&v73 - 4) = v51;
  *(&v73 - 3) = v58;
  v69 = swift_getKeyPath();
  MEMORY[0x28223BE20](v69);
  *(&v73 - 4) = v51;
  *(&v73 - 3) = v58;
  i = v59;
  swift_getKeyPath();
  v86 = v65;

  sub_242F03A90();
  sub_242C6D138(v85, &qword_27ECF2730);
  return v48;
}

uint64_t sub_242D2E420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a1;
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3020);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for Component();
  v39 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v11;
  v14 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component);
  v55 = v14;
  v15 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component);
  v56 = v15;
  swift_getKeyPath();
  v51 = v10;
  v52 = v14;
  v53 = v15;
  swift_getKeyPath();
  sub_242F03A80();

  v48 = v10;
  v49 = v14;
  v50 = v15;
  swift_getKeyPath();
  v45 = v10;
  v46 = v14;
  v47 = v15;
  swift_getKeyPath();
  v41 = v3;
  sub_242F03A80();

  v44 = v13;
  v16 = sub_242CDAC68(sub_242D3E1B8, v43, v57);
  LOBYTE(v3) = v17;

  if (v3)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  sub_242D39AFC(v13, type metadata accessor for Component);
  sub_242CA321C(v42, v9, &qword_27ECF3020);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008);
  result = (*(*(v19 - 8) + 48))(v9, 2, v19);
  if (!result)
  {
    v26 = sub_242CF6B3C(v9, v6, &qword_27ECF23E8);
    MEMORY[0x28223BE20](v26);
    *(&v39 - 4) = v10;
    *(&v39 - 3) = v14;
    *(&v39 - 2) = v15;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v39 - 4) = v10;
    *(&v39 - 3) = v14;
    *(&v39 - 2) = v15;
    swift_getKeyPath();
    sub_242F03A80();

    v29 = v57;
    MEMORY[0x28223BE20](v28);
    *(&v39 - 2) = v6;
    sub_242CE8B5C(sub_242D3E1D4, v29, v40);

    return sub_242C6D138(v6, &qword_27ECF23E8);
  }

  if (result == 1)
  {
    v21 = __OFSUB__(v18, 1);
    v22 = v18 - 1;
    if (!v21)
    {
      MEMORY[0x28223BE20](result);
      *(&v39 - 4) = v10;
      *(&v39 - 3) = v14;
      *(&v39 - 2) = v15;
      v23 = swift_getKeyPath();
      MEMORY[0x28223BE20](v23);
      *(&v39 - 4) = v10;
      *(&v39 - 3) = v14;
      *(&v39 - 2) = v15;
      swift_getKeyPath();
      if ((v22 & 0x8000000000000000) == 0)
      {
        sub_242F03A80();

        if (v22 < *(v57 + 16))
        {
          v24 = v39;
          v25 = v40;
          sub_242D39B5C(v57 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v39 + 72) * v22, v40, type metadata accessor for Component);

          return (*(v24 + 56))(v25, 0, 1, v10);
        }

        goto LABEL_24;
      }

      sub_242F03A80();

      v37 = *(v57 + 16);
      if (v37)
      {
        v35 = v39;
        v36 = v57 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v39 + 72) * (v37 - 1);
        goto LABEL_20;
      }

LABEL_21:

      return (*(v39 + 56))(v40, 1, 1, v10);
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v30 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    goto LABEL_23;
  }

  MEMORY[0x28223BE20](result);
  *(&v39 - 4) = v10;
  *(&v39 - 3) = v14;
  *(&v39 - 2) = v15;
  v31 = swift_getKeyPath();
  MEMORY[0x28223BE20](v31);
  *(&v39 - 4) = v10;
  *(&v39 - 3) = v14;
  *(&v39 - 2) = v15;
  swift_getKeyPath();
  sub_242F03A80();

  v32 = *(v57 + 16);

  MEMORY[0x28223BE20](v33);
  *(&v39 - 4) = v10;
  *(&v39 - 3) = v14;
  *(&v39 - 2) = v15;
  v34 = swift_getKeyPath();
  MEMORY[0x28223BE20](v34);
  *(&v39 - 4) = v10;
  *(&v39 - 3) = v14;
  *(&v39 - 2) = v15;
  swift_getKeyPath();
  if (v30 >= v32)
  {
    sub_242F03A80();

    if (!*(v57 + 16))
    {
      goto LABEL_21;
    }

    v35 = v39;
    v36 = v57 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
LABEL_20:
    v38 = v40;
    sub_242D39B5C(v36, v40, type metadata accessor for Component);

    return (*(v35 + 56))(v38, 0, 1, v10);
  }

  sub_242F03A80();

  if (v30 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v30 < *(v57 + 16))
  {
    v35 = v39;
    v36 = v57 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v39 + 72) * v30;
    goto LABEL_20;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_242D2ECD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v210 = a1;
  v209 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  v226 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v211 = &v197 - v6;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31A0);
  MEMORY[0x28223BE20](v221);
  v220 = &v197 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31A8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v213 = &v197 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v214 = &v197 - v12;
  MEMORY[0x28223BE20](v11);
  v225 = &v197 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3170);
  MEMORY[0x28223BE20](v14 - 8);
  v200 = &v197 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v197 - v17;
  v19 = type metadata accessor for Component();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v208 = &v197 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v197 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v202 = (&v197 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v199 = &v197 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v198 = &v197 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v215 = &v197 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v229 = &v197 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v207 = &v197 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v201 = &v197 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v227 = &v197 - v41;
  MEMORY[0x28223BE20](v40);
  v43 = &v197 - v42;
  sub_242CA321C(a2, v18, &qword_27ECF2730);
  v222 = v20;
  v44 = *(v20 + 48);
  v212 = v19;
  v45 = v44(v18, 1, v19);
  v206 = v3 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
  v228 = v5;
  v203 = v25;
  if (v45 == 1)
  {
    v46 = sub_242C6D138(v18, &qword_27ECF2730);
LABEL_7:
    MEMORY[0x28223BE20](v46);
    v66 = &v197;
    v67 = v212;
    *(&v197 - 4) = v212;
    v68 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component);
    *(&v197 - 3) = v68;
    v69 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component);
    *(&v197 - 2) = v69;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v197 - 4) = v67;
    *(&v197 - 3) = v68;
    v205 = v68;
    v204 = v69;
    *(&v197 - 2) = v69;
    swift_getKeyPath();
    sub_242F03A80();

    v71 = v231;
    v72 = *(v231 + 16);
    v223 = *(*v3 + 144);
    v224 = v3;
    swift_beginAccess();
    v219 = v72;
    if (v72)
    {
      v73 = 0;
      v227 = (v226 + 56);
      v74 = (v226 + 48);
      v75 = v214;
      v218 = v71;
      while (1)
      {
        if (v73 >= *(v71 + 16))
        {
          __break(1u);
          goto LABEL_56;
        }

        v72 = v74;
        v78 = v5;
        v79 = (*(v222 + 80) + 32) & ~*(v222 + 80);
        v80 = *(v222 + 72);
        v226 = v73;
        v81 = v71 + v79 + v80 * v73;
        v82 = v229;
        sub_242D39B5C(v81, v229, type metadata accessor for Component);
        v83 = v225;
        sub_242CA321C(v82, v225, &qword_27ECF23E8);
        v84 = *v227;
        v85 = 1;
        (*v227)(v83, 0, 1, v78);
        v86 = *(v224 + v223);
        v87 = *(v86 + 16);
        v217 = v79;
        v216 = v80;
        if (v87)
        {
          v88 = v215;
          sub_242D39B5C(v86 + v79 + (v87 - 1) * v80, v215, type metadata accessor for Component);
          sub_242CA321C(v88, v75, &qword_27ECF23E8);
          sub_242D39AFC(v88, type metadata accessor for Component);
          v85 = 0;
        }

        v89 = v228;
        v84(v75, v85, 1, v228);
        v90 = *(v221 + 48);
        v91 = v83;
        v66 = v83;
        v92 = v220;
        sub_242CA321C(v91, v220, &qword_27ECF31A8);
        sub_242CA321C(v75, v92 + v90, &qword_27ECF31A8);
        v74 = v72;
        v93 = *v72;
        if ((*v72)(v92, 1, v89) == 1)
        {
          break;
        }

        v94 = v213;
        sub_242CA321C(v92, v213, &qword_27ECF31A8);
        if (v93(v92 + v90, 1, v89) == 1)
        {
          v95 = v214;
          sub_242C6D138(v214, &qword_27ECF31A8);
          sub_242C6D138(v225, &qword_27ECF31A8);
          v96 = v94;
          v75 = v95;
          sub_242C6D138(v96, &qword_27ECF23E8);
          v77 = v92;
LABEL_10:
          sub_242C6D138(v77, &qword_27ECF31A0);
          sub_242D39AFC(v229, type metadata accessor for Component);
          goto LABEL_11;
        }

        v97 = v211;
        v72 = &qword_27ECF31A8;
        v66 = &unk_242F17EF0;
        sub_242CF6B3C(v92 + v90, v211, &qword_27ECF23E8);
        sub_242F03720();
        sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
        v98 = sub_242F04EE0();
        sub_242C6D138(v97, &qword_27ECF23E8);
        v99 = v214;
        sub_242C6D138(v214, &qword_27ECF31A8);
        sub_242C6D138(v225, &qword_27ECF31A8);
        v100 = v94;
        v75 = v99;
        sub_242C6D138(v100, &qword_27ECF23E8);
        sub_242C6D138(v92, &qword_27ECF31A8);
        sub_242D39AFC(v229, type metadata accessor for Component);
        if (v98)
        {
          goto LABEL_32;
        }

LABEL_11:
        v73 = v226 + 1;
        v5 = v228;
        v71 = v218;
        if (v219 == (v226 + 1))
        {
          goto LABEL_20;
        }
      }

      sub_242C6D138(v75, &qword_27ECF31A8);
      sub_242C6D138(v66, &qword_27ECF31A8);
      v76 = v93(v92 + v90, 1, v89) == 1;
      v77 = v92;
      if (v76)
      {
        sub_242C6D138(v92, &qword_27ECF31A8);
        sub_242D39AFC(v229, type metadata accessor for Component);
LABEL_32:

        v129 = v198;
        sub_242D39B5C(v210, v198, type metadata accessor for Component);
        v130 = v223;
        v3 = v224;
        swift_beginAccess();
        v131 = *(v3 + v130);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + v130) = v131;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v131 = sub_242C83620(0, v131[2] + 1, 1, v131);
          *(v3 + v223) = v131;
        }

        v133 = v216;
        v135 = v131[2];
        v134 = v131[3];
        if (v135 >= v134 >> 1)
        {
          v131 = sub_242C83620(v134 > 1, v135 + 1, 1, v131);
        }

        v131[2] = v135 + 1;
        sub_242D39C68(v129, v131 + v217 + v135 * v133, type metadata accessor for Component);
        v136 = v223;
        *(v3 + v223) = v131;
        v137 = swift_endAccess();
        MEMORY[0x28223BE20](v137);
        v138 = v212;
        v139 = v205;
        *(&v197 - 4) = v212;
        *(&v197 - 3) = v139;
        v140 = v204;
        *(&v197 - 2) = v204;
        v141 = swift_getKeyPath();
        MEMORY[0x28223BE20](v141);
        *(&v197 - 4) = v138;
        *(&v197 - 3) = v139;
        *(&v197 - 2) = v140;
        swift_getKeyPath();
        v142 = v199;
        sub_242F03A80();

        v144 = *(v3 + v136);
        MEMORY[0x28223BE20](v143);
        *(&v197 - 2) = v142;

        v145 = sub_242CDAC68(sub_242D3E1B8, (&v197 - 4), v144);
        v147 = v146;

        if (v147)
        {
          v148 = 0;
        }

        else
        {
          v148 = v145;
        }

        v149 = sub_242D39AFC(v142, type metadata accessor for Component);
        MEMORY[0x28223BE20](v149);
        *(&v197 - 4) = v138;
        *(&v197 - 3) = v139;
        *(&v197 - 2) = v140;
        v150 = swift_getKeyPath();
        MEMORY[0x28223BE20](v150);
        *(&v197 - 4) = v138;
        *(&v197 - 3) = v139;
        *(&v197 - 2) = v140;
        swift_getKeyPath();
        v231 = v148;

        v151 = sub_242F03A90();
        MEMORY[0x28223BE20](v151);
        *(&v197 - 4) = v138;
        *(&v197 - 3) = v139;
        *(&v197 - 2) = v140;
        v152 = swift_getKeyPath();
        MEMORY[0x28223BE20](v152);
        *(&v197 - 4) = v138;
        *(&v197 - 3) = v139;
        *(&v197 - 2) = v140;
        swift_getKeyPath();
        result = sub_242F03A70();
        v155 = v226;
        if (*(*v154 + 16) > v226)
        {
          v156 = result;
          v157 = v200;
          sub_242D39B5C(v210, v200, type metadata accessor for Component);
          sub_242D37EF8(v155 + 1, v155 + 1, v157);
          v156(&v231, 0);

          goto LABEL_49;
        }

        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      goto LABEL_10;
    }

LABEL_20:

    v66 = v202;
    sub_242D39B5C(v210, v202, type metadata accessor for Component);
    v101 = v223;
    v71 = v224;
    swift_beginAccess();
    v72 = *(v71 + v101);
    v102 = swift_isUniquelyReferenced_nonNull_native();
    *(v71 + v101) = v72;
    if ((v102 & 1) == 0)
    {
LABEL_56:
      v72 = sub_242C83620(0, v72[2] + 1, 1, v72);
      *(v71 + v223) = v72;
    }

    v104 = v72[2];
    v103 = v72[3];
    if (v104 >= v103 >> 1)
    {
      v72 = sub_242C83620(v103 > 1, v104 + 1, 1, v72);
    }

    v72[2] = v104 + 1;
    v229 = (*(v222 + 80) + 32) & ~*(v222 + 80);
    v228 = *(v222 + 72);
    sub_242D39C68(v66, v72 + v229 + v228 * v104, type metadata accessor for Component);
    v105 = v223;
    v106 = v224;
    *(v224 + v223) = v72;
    v107 = swift_endAccess();
    MEMORY[0x28223BE20](v107);
    v108 = v212;
    v109 = v205;
    *(&v197 - 4) = v212;
    *(&v197 - 3) = v109;
    v110 = v204;
    *(&v197 - 2) = v204;
    v111 = swift_getKeyPath();
    MEMORY[0x28223BE20](v111);
    *(&v197 - 4) = v108;
    *(&v197 - 3) = v109;
    *(&v197 - 2) = v110;
    swift_getKeyPath();
    v112 = v203;
    sub_242F03A80();

    v114 = *(v106 + v105);
    MEMORY[0x28223BE20](v113);
    *(&v197 - 2) = v112;

    v115 = sub_242CDAC68(sub_242D3E1B8, (&v197 - 4), v114);
    LOBYTE(v105) = v116;

    if (v105)
    {
      v117 = 0;
    }

    else
    {
      v117 = v115;
    }

    v118 = sub_242D39AFC(v112, type metadata accessor for Component);
    MEMORY[0x28223BE20](v118);
    *(&v197 - 4) = v108;
    *(&v197 - 3) = v109;
    *(&v197 - 2) = v110;
    v119 = swift_getKeyPath();
    MEMORY[0x28223BE20](v119);
    *(&v197 - 4) = v108;
    *(&v197 - 3) = v109;
    *(&v197 - 2) = v110;
    swift_getKeyPath();
    v231 = v117;

    sub_242F03A90();
    v120 = sub_242D39B5C(v210, v208, type metadata accessor for Component);
    MEMORY[0x28223BE20](v120);
    *(&v197 - 4) = v108;
    *(&v197 - 3) = v109;
    *(&v197 - 2) = v110;
    v121 = swift_getKeyPath();
    MEMORY[0x28223BE20](v121);
    *(&v197 - 4) = v108;
    *(&v197 - 3) = v109;
    *(&v197 - 2) = v110;
    swift_getKeyPath();
    v122 = sub_242F03A70();
    v124 = v123;
    v125 = *v123;
    v126 = swift_isUniquelyReferenced_nonNull_native();
    *v124 = v125;
    if ((v126 & 1) == 0)
    {
      v125 = sub_242C83620(0, v125[2] + 1, 1, v125);
      *v124 = v125;
    }

    v128 = v125[2];
    v127 = v125[3];
    if (v128 >= v127 >> 1)
    {
      v125 = sub_242C83620(v127 > 1, v128 + 1, 1, v125);
      *v124 = v125;
    }

    v125[2] = v128 + 1;
    sub_242D39C68(v208, v125 + v229 + v128 * v228, type metadata accessor for Component);
    v122(&v231, 0);

    v3 = v224;
    goto LABEL_49;
  }

  sub_242D39C68(v18, v43, type metadata accessor for Component);
  v47 = *(*v3 + 144);
  v48 = swift_beginAccess();
  v49 = *(v3 + v47);
  MEMORY[0x28223BE20](v48);
  *(&v197 - 2) = v43;

  v50 = v209;
  v51 = sub_242CDAC68(sub_242D3E1B8, (&v197 - 4), v49);
  v53 = v52;
  v54 = v50;

  if (v53)
  {
    v209 = v50;
    v46 = sub_242D39AFC(v43, type metadata accessor for Component);
    goto LABEL_7;
  }

  v223 = v51;
  MEMORY[0x28223BE20](v55);
  v56 = v212;
  *(&v197 - 4) = v212;
  v57 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component);
  *(&v197 - 3) = v57;
  v58 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component);
  *(&v197 - 2) = v58;
  v59 = swift_getKeyPath();
  MEMORY[0x28223BE20](v59);
  *(&v197 - 4) = v56;
  *(&v197 - 3) = v57;
  v224 = v58;
  *(&v197 - 2) = v58;
  swift_getKeyPath();
  sub_242F03A80();

  v61 = v231;
  MEMORY[0x28223BE20](v60);
  *(&v197 - 2) = v43;
  v62 = v54;
  v63 = sub_242CDAC68(sub_242D3DE28, (&v197 - 4), v61);
  v65 = v64;

  if (v65)
  {
    v209 = v62;
    v46 = sub_242D39AFC(v43, type metadata accessor for Component);
    v5 = v228;
    goto LABEL_7;
  }

  result = swift_beginAccess();
  v158 = v223;
  if (*(*(v3 + v47) + 16) < v223)
  {
    goto LABEL_58;
  }

  v228 = v43;
  v229 = v63;
  if (v223 < 0)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v159 = v200;
  sub_242D39B5C(v210, v200, type metadata accessor for Component);
  sub_242D37EF8(v158, v158, v159);
  v160 = swift_endAccess();
  MEMORY[0x28223BE20](v160);
  v161 = v212;
  *(&v197 - 4) = v212;
  *(&v197 - 3) = v57;
  v162 = v224;
  *(&v197 - 2) = v224;
  v163 = v162;
  v164 = swift_getKeyPath();
  MEMORY[0x28223BE20](v164);
  *(&v197 - 4) = v161;
  *(&v197 - 3) = v57;
  *(&v197 - 2) = v163;
  swift_getKeyPath();
  v165 = v227;
  sub_242F03A80();

  v167 = *(v3 + v47);
  MEMORY[0x28223BE20](v166);
  *(&v197 - 2) = v165;

  v168 = sub_242CDAC68(sub_242D3E1B8, (&v197 - 4), v167);
  v170 = v169;

  if (v170)
  {
    v171 = 0;
  }

  else
  {
    v171 = v168;
  }

  v172 = sub_242D39AFC(v165, type metadata accessor for Component);
  MEMORY[0x28223BE20](v172);
  *(&v197 - 4) = v161;
  *(&v197 - 3) = v57;
  v173 = v224;
  *(&v197 - 2) = v224;
  v174 = swift_getKeyPath();
  MEMORY[0x28223BE20](v174);
  *(&v197 - 4) = v161;
  *(&v197 - 3) = v57;
  *(&v197 - 2) = v173;
  swift_getKeyPath();
  v231 = v171;

  v175 = sub_242F03A90();
  MEMORY[0x28223BE20](v175);
  *(&v197 - 4) = v161;
  *(&v197 - 3) = v57;
  *(&v197 - 2) = v173;
  v176 = swift_getKeyPath();
  MEMORY[0x28223BE20](v176);
  *(&v197 - 4) = v161;
  *(&v197 - 3) = v57;
  *(&v197 - 2) = v173;
  swift_getKeyPath();
  result = sub_242F03A70();
  v178 = v229;
  if (*(*v177 + 16) < v229)
  {
    goto LABEL_60;
  }

  if (v229 < 0)
  {
LABEL_61:
    __break(1u);
    return result;
  }

  v179 = result;
  v180 = v200;
  sub_242D39B5C(v210, v200, type metadata accessor for Component);
  sub_242D37EF8(v178, v178, v180);
  v179(&v231, 0);

  sub_242D39AFC(v228, type metadata accessor for Component);
LABEL_49:
  v181 = *(*v3 + 144);
  v182 = swift_beginAccess();
  if (*(*(v3 + v181) + 16) == 1)
  {
    v183 = v201;
    sub_242D39B5C(v210, v201, type metadata accessor for Component);
    v182 = sub_242D2D564(v183);
  }

  MEMORY[0x28223BE20](v182);
  v184 = v212;
  *(&v197 - 4) = v212;
  v185 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component);
  *(&v197 - 3) = v185;
  v186 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component);
  *(&v197 - 2) = v186;
  v187 = swift_getKeyPath();
  MEMORY[0x28223BE20](v187);
  *(&v197 - 4) = v184;
  *(&v197 - 3) = v185;
  *(&v197 - 2) = v186;
  swift_getKeyPath();
  v188 = v207;
  sub_242F03A80();

  v190 = *(v3 + v181);
  MEMORY[0x28223BE20](v189);
  *(&v197 - 2) = v188;

  v191 = sub_242CDAC68(sub_242D3E1B8, (&v197 - 4), v190);
  v193 = v192;

  if (v193)
  {
    v194 = 0;
  }

  else
  {
    v194 = v191;
  }

  v195 = sub_242D39AFC(v188, type metadata accessor for Component);
  MEMORY[0x28223BE20](v195);
  *(&v197 - 4) = v184;
  *(&v197 - 3) = v185;
  *(&v197 - 2) = v186;
  v196 = swift_getKeyPath();
  MEMORY[0x28223BE20](v196);
  *(&v197 - 4) = v184;
  *(&v197 - 3) = v185;
  *(&v197 - 2) = v186;
  swift_getKeyPath();
  v230 = v194;

  return sub_242F03A90();
}

uint64_t sub_242D30948(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  sub_242CA321C(a1, v11 - v8, &qword_27ECF23E8);
  sub_242CA321C(a2, v7, &qword_27ECF23E8);
  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
  LOBYTE(a2) = sub_242F04EE0();
  sub_242C6D138(v7, &qword_27ECF23E8);
  sub_242C6D138(v9, &qword_27ECF23E8);
  return a2 & 1;
}

uint64_t sub_242D30AAC(uint64_t a1, uint64_t a2, int a3)
{
  v70 = a3;
  v82 = a2;
  v85 = a1;
  v73 = sub_242F042C0();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730);
  MEMORY[0x28223BE20](v5 - 8);
  v76 = &v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3020);
  v80 = *(v7 - 8);
  v81 = v7;
  MEMORY[0x28223BE20](v7);
  v77 = &v69 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3188);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v79 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v84 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v69 - v17;
  v78 = type metadata accessor for Component();
  v19 = *(v78 - 8);
  v20 = MEMORY[0x28223BE20](v78);
  v74 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v69 = &v69 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v69 - v24;
  v26 = *(*v3 + 144);
  swift_beginAccess();
  v83 = v3;
  v75 = v26;
  v27 = *(v3 + v26);
  v28 = *(v27 + 16);

  v30 = 0;
  do
  {
    if (v28 == v30)
    {
    }

    if (v30 >= *(v27 + 16))
    {
      __break(1u);
      goto LABEL_22;
    }

    sub_242D39B5C(v27 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v30++, v25, type metadata accessor for Component);
    sub_242CA321C(v25, v18, &qword_27ECF23E8);
    sub_242CA321C(v85, v16, &qword_27ECF23E8);
    sub_242F03720();
    sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
    v31 = sub_242F04EE0();
    sub_242C6D138(v16, &qword_27ECF23E8);
    sub_242C6D138(v18, &qword_27ECF23E8);
    result = sub_242D39AFC(v25, type metadata accessor for Component);
  }

  while ((v31 & 1) == 0);

  v33 = v83;
  v32 = v84;
  v34 = v85;
  sub_242D316E0(v82, v83, v85, v84);
  v35 = v79;
  sub_242CA321C(v32, v79, &qword_27ECF3188);
  if ((*(v80 + 48))(v35, 1, v81) == 1)
  {
    v36 = sub_242C6D138(v35, &qword_27ECF3188);
    MEMORY[0x28223BE20](v36);
    *(&v69 - 2) = v34;
    v37 = v75;
    swift_beginAccess();
    result = sub_242D382EC(sub_242D3E1B8, (&v69 - 4));
    v38 = *(*(v33 + v37) + 16);
    if (v38 >= result)
    {
      sub_242D3A188(result, v38, sub_242C83620, sub_242D39EC4);
      v39 = swift_endAccess();
      MEMORY[0x28223BE20](v39);
      v40 = v78;
      *(&v69 - 4) = v78;
      v41 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component);
      *(&v69 - 3) = v41;
      v42 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component);
      *(&v69 - 2) = v42;
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v69 - 4) = v40;
      *(&v69 - 3) = v41;
      *(&v69 - 2) = v42;
      swift_getKeyPath();
      v44 = v74;
      sub_242F03A80();

      v46 = *(v33 + v37);
      MEMORY[0x28223BE20](v45);
      *(&v69 - 2) = v44;

      v47 = sub_242CDAC68(sub_242D3E1B8, (&v69 - 4), v46);
      v49 = v48;

      if (v49)
      {
        v50 = 0;
      }

      else
      {
        v50 = v47;
      }

      v51 = sub_242D39AFC(v44, type metadata accessor for Component);
      MEMORY[0x28223BE20](v51);
      *(&v69 - 4) = v40;
      *(&v69 - 3) = v41;
      *(&v69 - 2) = v42;
      v52 = swift_getKeyPath();
      MEMORY[0x28223BE20](v52);
      *(&v69 - 4) = v40;
      *(&v69 - 3) = v41;
      *(&v69 - 2) = v42;
      swift_getKeyPath();
      v86[0] = v50;

      v53 = sub_242F03A90();
      v54 = MEMORY[0x28223BE20](v53);
      *(&v69 - 2) = v85;
      MEMORY[0x28223BE20](v54);
      *(&v69 - 4) = v40;
      *(&v69 - 3) = v41;
      *(&v69 - 2) = v42;
      v55 = swift_getKeyPath();
      MEMORY[0x28223BE20](v55);
      *(&v69 - 4) = v40;
      *(&v69 - 3) = v41;
      *(&v69 - 2) = v42;
      swift_getKeyPath();
      v56 = sub_242F03A70();
      v58 = v57;
      result = sub_242D382EC(sub_242D3E1B8, (&v69 - 4));
      v59 = *(*v58 + 16);
      if (v59 >= result)
      {
        sub_242D3A188(result, v59, sub_242C83620, sub_242D39EC4);
        v56(v86, 0);

        return sub_242C6D138(v84, &qword_27ECF3188);
      }

      goto LABEL_23;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v60 = v77;
  sub_242CF6B3C(v35, v77, &qword_27ECF3020);
  v61 = v76;
  sub_242D3554C(v60, v76);
  if ((*(v19 + 48))(v61, 1, v78) == 1)
  {
    sub_242C6D138(v60, &qword_27ECF3020);
    sub_242C6D138(v32, &qword_27ECF3188);
    return sub_242C6D138(v61, &qword_27ECF2730);
  }

  else
  {
    v62 = v69;
    v63 = sub_242D39C68(v61, v69, type metadata accessor for Component);
    if (*(v33 + *(*v33 + 152)))
    {

      sub_242F04BD0();
    }

    v64 = v70;
    if (v70)
    {
    }

    MEMORY[0x28223BE20](v63);
    *(&v69 - 4) = v34;
    v65 = v64 & 1;
    *(&v69 - 24) = v64 & 1;
    *(&v69 - 2) = v33;
    *(&v69 - 1) = v62;
    v66 = swift_allocObject();
    swift_weakInit();
    v67 = swift_allocObject();
    *(v67 + 16) = v66;
    *(v67 + 24) = v65;

    v68 = v71;
    sub_242F042A0();
    sub_242F03D40();

    (*(v72 + 8))(v68, v73);
    sub_242C6D138(v60, &qword_27ECF3020);
    sub_242C6D138(v32, &qword_27ECF3188);

    return sub_242D39AFC(v62, type metadata accessor for Component);
  }
}

uint64_t sub_242D316E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v50 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v51 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v47 - v14;
  v16 = type metadata accessor for Component();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v47 - v21;
  sub_242CA321C(a1, v15, &qword_27ECF2730);
  v23 = *(v17 + 48);
  v24 = v23(v15, 1, v16);
  v47[1] = a2;
  if (v24 == 1)
  {
    sub_242C6D138(v15, &qword_27ECF2730);
LABEL_5:
    v28 = v48;
    v29 = v49;
    goto LABEL_6;
  }

  sub_242D39C68(v15, v22, type metadata accessor for Component);
  v25 = *(*a2 + 144);
  v26 = swift_beginAccess();
  v27 = *(a2 + v25);
  MEMORY[0x28223BE20](v26);
  v47[-2] = v22;

  sub_242CE8B5C(sub_242D3E1B8, v27, v13);

  LODWORD(v27) = v23(v13, 1, v16);
  sub_242C6D138(v13, &qword_27ECF2730);
  if (v27 == 1)
  {
    sub_242D39AFC(v22, type metadata accessor for Component);
    goto LABEL_5;
  }

  v29 = v49;
  sub_242CA321C(v22, v49, &qword_27ECF23E8);
  v41 = v48;
  v42 = v51;
  sub_242CA321C(v48, v51, &qword_27ECF23E8);
  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
  v43 = sub_242F04EE0();
  sub_242C6D138(v42, &qword_27ECF23E8);
  sub_242C6D138(v29, &qword_27ECF23E8);
  if ((v43 & 1) == 0)
  {
    v44 = v50;
    sub_242CA321C(v22, v50, &qword_27ECF23E8);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008);
    (*(*(v45 - 8) + 56))(v44, 0, 2, v45);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3020);
    (*(*(v46 - 8) + 56))(v44, 0, 1, v46);
    return sub_242D39AFC(v22, type metadata accessor for Component);
  }

  sub_242D39AFC(v22, type metadata accessor for Component);
  v28 = v41;
LABEL_6:
  v30 = sub_242CA321C(v28, v29, &qword_27ECF23E8);
  MEMORY[0x28223BE20](v30);
  v47[-4] = v16;
  v31 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component);
  v47[-3] = v31;
  v32 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component);
  v47[-2] = v32;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v47[-4] = v16;
  v47[-3] = v31;
  v47[-2] = v32;
  swift_getKeyPath();
  sub_242F03A80();

  v34 = v51;
  sub_242CA321C(v20, v51, &qword_27ECF23E8);
  sub_242D39AFC(v20, type metadata accessor for Component);
  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
  v35 = sub_242F04EE0();
  sub_242C6D138(v34, &qword_27ECF23E8);
  sub_242C6D138(v29, &qword_27ECF23E8);
  if (v35)
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008);
    v37 = v50;
    (*(*(v36 - 8) + 56))(v50, 2, 2, v36);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3020);
    return (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  }

  else
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3020);
    return (*(*(v40 - 8) + 56))(v50, 1, 1, v40);
  }
}

uint64_t sub_242D31E98(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v74 = a4;
  v7 = sub_242F03720();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v67[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Component();
  v11 = MEMORY[0x28223BE20](v10);
  v72 = &v67[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v73 = &v67[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v67[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v67[-v18];
  if (qword_27ECEF4C0 != -1)
  {
    swift_once();
  }

  v20 = sub_242F039D0();
  __swift_project_value_buffer(v20, qword_27ED5D2E0);
  sub_242D39B5C(a1, v19, type metadata accessor for Component);
  v21 = sub_242F039B0();
  v22 = sub_242F056E0();
  v23 = os_log_type_enabled(v21, v22);
  v76 = a2;
  v77 = a1;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v80 = v69;
    *v24 = 136446466;
    sub_242D39B5C(v19, v17, type metadata accessor for Component);
    sub_242D39AFC(v19, type metadata accessor for Component);
    v78 = 0;
    v79 = 0xE000000000000000;
    v68 = v22;
    sub_242F05A80();

    v78 = 0x6E656E6F706D6F43;
    v79 = 0xEA00000000002874;
    (*(v70 + 16))(v9, v17, v71);
    v25 = sub_242F04F90();
    MEMORY[0x245D26660](v25);

    MEMORY[0x245D26660](0x3D656D616E203A29, 0xE800000000000000);
    MEMORY[0x245D26660](*&v17[*(v10 + 24)], *&v17[*(v10 + 24) + 8]);
    v26 = v78;
    v27 = v79;
    sub_242D39AFC(v17, type metadata accessor for Component);
    v28 = sub_242C8FD38(v26, v27, &v80);

    *(v24 + 4) = v28;
    *(v24 + 12) = 1026;
    *(v24 + 14) = v76 & 1;
    _os_log_impl(&dword_242C53000, v21, v68, "Removing carousel item with id %{public}s. Animated: %{BOOL,public}d", v24, 0x12u);
    v29 = v69;
    __swift_destroy_boxed_opaque_existential_2Tm(v69);
    MEMORY[0x245D287D0](v29, -1, -1);
    v30 = v24;
    a1 = v77;
    MEMORY[0x245D287D0](v30, -1, -1);
  }

  else
  {
    sub_242D39AFC(v19, type metadata accessor for Component);
  }

  sub_242D39B5C(v74, v17, type metadata accessor for Component);
  v31 = sub_242D2D564(v17);
  MEMORY[0x28223BE20](v31);
  *&v67[-16] = a1;
  v32 = *(*a3 + 144);
  swift_beginAccess();
  v33 = v75;
  result = sub_242D382EC(sub_242D3E1B8, &v67[-32]);
  v35 = *(*(a3 + v32) + 16);
  if (v35 < result)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v75 = v33;
  sub_242D3A188(result, v35, sub_242C83620, sub_242D39EC4);
  v36 = swift_endAccess();
  MEMORY[0x28223BE20](v36);
  *&v67[-32] = v10;
  v37 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component);
  *&v67[-24] = v37;
  v38 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component);
  *&v67[-16] = v38;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *&v67[-32] = v10;
  *&v67[-24] = v37;
  *&v67[-16] = v38;
  swift_getKeyPath();
  v40 = v73;
  sub_242F03A80();

  v42 = *(a3 + v32);
  MEMORY[0x28223BE20](v41);
  *&v67[-16] = v40;

  v43 = v75;
  v44 = sub_242CDAC68(sub_242D3E1B8, &v67[-32], v42);
  v46 = v45;
  v75 = v43;

  if (v46)
  {
    v47 = 0;
  }

  else
  {
    v47 = v44;
  }

  v48 = sub_242D39AFC(v40, type metadata accessor for Component);
  MEMORY[0x28223BE20](v48);
  *&v67[-32] = v10;
  *&v67[-24] = v37;
  *&v67[-16] = v38;
  v49 = swift_getKeyPath();
  MEMORY[0x28223BE20](v49);
  *&v67[-32] = v10;
  *&v67[-24] = v37;
  *&v67[-16] = v38;
  swift_getKeyPath();
  v78 = v47;

  v50 = sub_242F03A90();
  v74 = v67;
  v51 = MEMORY[0x28223BE20](v50);
  *&v67[-16] = v77;
  MEMORY[0x28223BE20](v51);
  *&v67[-32] = v10;
  *&v67[-24] = v37;
  *&v67[-16] = v38;
  v52 = swift_getKeyPath();
  MEMORY[0x28223BE20](v52);
  *&v67[-32] = v10;
  *&v67[-24] = v37;
  *&v67[-16] = v38;
  swift_getKeyPath();
  v53 = sub_242F03A70();
  v55 = v54;
  result = sub_242D382EC(sub_242D3E1B8, &v67[-32]);
  v56 = *(*v55 + 16);
  if (v56 < result)
  {
    goto LABEL_17;
  }

  sub_242D3A188(result, v56, sub_242C83620, sub_242D39EC4);
  v53(&v78, 0);

  v58 = 0;
  v59 = v76;
  if (v76)
  {
    v58 = *(a3 + *(*a3 + 160) + 48) ^ 1;
  }

  MEMORY[0x28223BE20](v57);
  *&v67[-32] = v10;
  *&v67[-24] = v37;
  *&v67[-16] = v38;
  v60 = swift_getKeyPath();
  MEMORY[0x28223BE20](v60);
  *&v67[-32] = v10;
  *&v67[-24] = v37;
  *&v67[-16] = v38;
  swift_getKeyPath();
  LOBYTE(v78) = v58 & 1;

  v61 = sub_242F03A90();
  MEMORY[0x28223BE20](v61);
  *&v67[-32] = v10;
  *&v67[-24] = v37;
  *&v67[-16] = v38;
  v62 = swift_getKeyPath();
  MEMORY[0x28223BE20](v62);
  *&v67[-32] = v10;
  *&v67[-24] = v37;
  *&v67[-16] = v38;
  swift_getKeyPath();
  LOBYTE(v78) = v59 & 1;

  v63 = sub_242F03A90();
  MEMORY[0x28223BE20](v63);
  *&v67[-32] = v10;
  *&v67[-24] = v37;
  *&v67[-16] = v38;
  v64 = swift_getKeyPath();
  MEMORY[0x28223BE20](v64);
  *&v67[-32] = v10;
  *&v67[-24] = v37;
  *&v67[-16] = v38;
  swift_getKeyPath();
  v65 = v72;
  sub_242F03A80();

  v66 = *(a3 + *(*a3 + 112));
  if (v66)
  {

    v66(v65);
    sub_242C655DC(v66);
  }

  return sub_242D39AFC(v65, type metadata accessor for Component);
}

uint64_t sub_242D32994(uint64_t a1, int a2)
{
  v3 = v2;
  v61 = sub_242F042C0();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v64 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730);
  MEMORY[0x28223BE20](v11 - 8);
  v67 = &v56 - v12;
  v13 = type metadata accessor for Component();
  v66 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v62 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3020);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - v22;
  if (qword_27ECEF4C0 != -1)
  {
    swift_once();
  }

  v24 = sub_242F039D0();
  __swift_project_value_buffer(v24, qword_27ED5D2E0);
  sub_242CA321C(a1, v23, &qword_27ECF3020);
  v25 = sub_242F039B0();
  v26 = sub_242F056E0();
  v27 = os_log_type_enabled(v25, v26);
  v65 = a2;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v56 = v13;
    v29 = v28;
    v30 = swift_slowAlloc();
    v58 = v2;
    v31 = v30;
    v68 = v30;
    *v29 = 136446466;
    v57 = v17;
    sub_242CA321C(v23, v21, &qword_27ECF3020);
    sub_242C6D138(v23, &qword_27ECF3020);
    v32 = sub_242D36B28();
    v34 = v33;
    v17 = v57;
    v35 = v65;
    sub_242C6D138(v21, &qword_27ECF3020);
    v36 = sub_242C8FD38(v32, v34, &v68);

    *(v29 + 4) = v36;
    *(v29 + 12) = 1026;
    *(v29 + 14) = v35 & 1;
    _os_log_impl(&dword_242C53000, v25, v26, "Rotating carousel item with direction %{public}s. Animated: %{BOOL,public}d", v29, 0x12u);
    __swift_destroy_boxed_opaque_existential_2Tm(v31);
    v37 = v31;
    v3 = v58;
    MEMORY[0x245D287D0](v37, -1, -1);
    v38 = v29;
    v13 = v56;
    MEMORY[0x245D287D0](v38, -1, -1);
  }

  else
  {
    sub_242C6D138(v23, &qword_27ECF3020);
  }

  v39 = v67;
  sub_242D3554C(a1, v67);
  if ((*(v66 + 48))(v39, 1, v13) == 1)
  {
    return sub_242C6D138(v39, &qword_27ECF2730);
  }

  sub_242D39C68(v39, v17, type metadata accessor for Component);
  v41 = v63;
  v42 = sub_242CA321C(v17, v63, &qword_27ECF23E8);
  MEMORY[0x28223BE20](v42);
  *(&v56 - 4) = v13;
  v43 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component);
  *(&v56 - 3) = v43;
  v44 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component);
  *(&v56 - 2) = v44;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v56 - 4) = v13;
  *(&v56 - 3) = v43;
  *(&v56 - 2) = v44;
  swift_getKeyPath();
  v46 = v62;
  sub_242F03A80();

  v47 = v64;
  sub_242CA321C(v46, v64, &qword_27ECF23E8);
  sub_242D39AFC(v46, type metadata accessor for Component);
  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
  v48 = sub_242F04EE0();
  sub_242C6D138(v47, &qword_27ECF23E8);
  sub_242C6D138(v41, &qword_27ECF23E8);
  if (v48)
  {
    v49 = v17;
  }

  else
  {
    if (*(v3 + *(*v3 + 152)))
    {

      sub_242F04BD0();
    }

    v50 = v65;
    if (v65)
    {
    }

    v51 = v60;
    v52 = sub_242F042B0();
    MEMORY[0x28223BE20](v52);
    *(&v56 - 4) = v17;
    v53 = v50 & 1;
    *(&v56 - 24) = v53;
    *(&v56 - 2) = v3;
    v54 = swift_allocObject();
    swift_weakInit();
    v55 = swift_allocObject();
    *(v55 + 16) = v54;
    *(v55 + 24) = v53;

    sub_242F03D40();
    (*(v59 + 8))(v51, v61);

    v49 = v17;
  }

  return sub_242D39AFC(v49, type metadata accessor for Component);
}

uint64_t sub_242D3321C(uint64_t a1, int a2, uint64_t a3)
{
  v46 = a2;
  v5 = sub_242F03720();
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Component();
  v9 = MEMORY[0x28223BE20](v8);
  v45 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v40[-v12];
  MEMORY[0x28223BE20](v11);
  v15 = &v40[-v14];
  if (qword_27ECEF4C0 != -1)
  {
    swift_once();
  }

  v16 = sub_242F039D0();
  __swift_project_value_buffer(v16, qword_27ED5D2E0);
  sub_242D39B5C(a1, v15, type metadata accessor for Component);
  v17 = sub_242F039B0();
  v18 = sub_242F056E0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v43 = a1;
    v20 = v19;
    v42 = swift_slowAlloc();
    v49 = v42;
    *v20 = 136446466;
    sub_242D39B5C(v15, v13, type metadata accessor for Component);
    sub_242D39AFC(v15, type metadata accessor for Component);
    v47 = 0;
    v48 = 0xE000000000000000;
    v41 = v18;
    sub_242F05A80();

    v47 = 0x6E656E6F706D6F43;
    v48 = 0xEA00000000002874;
    (*(v44 + 16))(v7, v13, v5);
    v21 = sub_242F04F90();
    MEMORY[0x245D26660](v21);

    MEMORY[0x245D26660](0x3D656D616E203A29, 0xE800000000000000);
    MEMORY[0x245D26660](*&v13[*(v8 + 24)], *&v13[*(v8 + 24) + 8]);
    v22 = v47;
    v23 = v48;
    sub_242D39AFC(v13, type metadata accessor for Component);
    v24 = sub_242C8FD38(v22, v23, &v49);

    *(v20 + 4) = v24;
    *(v20 + 12) = 1026;
    v25 = v46;
    *(v20 + 14) = v46 & 1;
    _os_log_impl(&dword_242C53000, v17, v41, "Starting carousel rotation to %{public}s. Animated: %{BOOL,public}d", v20, 0x12u);
    v26 = v42;
    __swift_destroy_boxed_opaque_existential_2Tm(v42);
    MEMORY[0x245D287D0](v26, -1, -1);
    v27 = v20;
    a1 = v43;
    MEMORY[0x245D287D0](v27, -1, -1);
  }

  else
  {
    sub_242D39AFC(v15, type metadata accessor for Component);

    v25 = v46;
  }

  sub_242D39B5C(a1, v13, type metadata accessor for Component);
  v28 = sub_242D2D564(v13);
  v29 = v25;
  if (v25)
  {
    v30 = *(a3 + *(*a3 + 160) + 48) ^ 1;
  }

  else
  {
    v30 = 0;
  }

  MEMORY[0x28223BE20](v28);
  *&v40[-32] = v8;
  v31 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component);
  *&v40[-24] = v31;
  v32 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component);
  *&v40[-16] = v32;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *&v40[-32] = v8;
  *&v40[-24] = v31;
  *&v40[-16] = v32;
  swift_getKeyPath();
  LOBYTE(v47) = v30 & 1;

  v34 = sub_242F03A90();
  MEMORY[0x28223BE20](v34);
  *&v40[-32] = v8;
  *&v40[-24] = v31;
  *&v40[-16] = v32;
  v35 = swift_getKeyPath();
  MEMORY[0x28223BE20](v35);
  *&v40[-32] = v8;
  *&v40[-24] = v31;
  *&v40[-16] = v32;
  swift_getKeyPath();
  LOBYTE(v47) = v29 & 1;

  result = sub_242F03A90();
  if (*(a3 + *(*a3 + 160) + 64) == 1)
  {
    MEMORY[0x28223BE20](result);
    *&v40[-32] = v8;
    *&v40[-24] = v31;
    *&v40[-16] = v32;
    v37 = swift_getKeyPath();
    MEMORY[0x28223BE20](v37);
    *&v40[-32] = v8;
    *&v40[-24] = v31;
    *&v40[-16] = v32;
    swift_getKeyPath();
    v38 = v45;
    sub_242F03A80();

    v39 = *(a3 + *(*a3 + 112));
    if (v39)
    {

      v39(v38);
      sub_242C655DC(v39);
    }

    return sub_242D39AFC(v38, type metadata accessor for Component);
  }

  return result;
}

uint64_t sub_242D3391C(uint64_t a1, char a2)
{
  v3 = type metadata accessor for Component();
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    MEMORY[0x28223BE20](result);
    *(&v12 - 4) = v3;
    v8 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component);
    *(&v12 - 3) = v8;
    v9 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component);
    *(&v12 - 2) = v9;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v12 - 4) = v3;
    *(&v12 - 3) = v8;
    *(&v12 - 2) = v9;
    swift_getKeyPath();
    sub_242F03A80();

    v11 = 0.0;
    if (a2)
    {
      v11 = *(v7 + *(*v7 + 160) + 72);
    }

    sub_242D36974(v5, v11);

    return sub_242D39AFC(v5, type metadata accessor for Component);
  }

  return result;
}

uint64_t sub_242D33B3C(char a1)
{
  v2 = v1;
  v4 = sub_242F04B60();
  MEMORY[0x28223BE20](v4);
  if (qword_27ECEF4C0 != -1)
  {
    swift_once();
  }

  v5 = sub_242F039D0();
  __swift_project_value_buffer(v5, qword_27ED5D2E0);
  v6 = sub_242F039B0();
  v7 = sub_242F056E0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67240192;
    *(v8 + 4) = a1 & 1;
    _os_log_impl(&dword_242C53000, v6, v7, "Showing carousel decorations. Animated: %{BOOL,public}d", v8, 8u);
    MEMORY[0x245D287D0](v8, -1, -1);
  }

  v9 = *(*v2 + 152);
  if (*(v2 + v9))
  {

    sub_242F04BD0();
  }

  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1 & 1;
  *(v12 + 32) = v10;
  aBlock[4] = sub_242D3DD44;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_242DEA248;
  aBlock[3] = &block_descriptor_319;
  _Block_copy(aBlock);
  sub_242D3DC24(&qword_27ECFC050, MEMORY[0x277D85198]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECFC610);
  sub_242D3DC6C();
  sub_242F05930();
  sub_242F04BE0();
  swift_allocObject();
  v13 = sub_242F04BC0();

  swift_beginAccess();
  *(v10 + 16) = v13;

  *(v2 + v9) = v13;

  sub_242D3DCD0();
  result = sub_242F05750();
  if (*(v2 + v9))
  {
    v15 = result;

    sub_242F05770();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_242D33ED8(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_242F042C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = v5;
    if (a2)
    {
      v17 = *(result + *(*result + 200));
    }

    else
    {
      v17 = 0;
    }

    v10 = swift_allocObject();
    v11 = swift_weakInit();
    v16 = &v16;
    MEMORY[0x28223BE20](v11);
    *(&v16 - 2) = v10;
    v12 = a2 & 1;
    *(&v16 - 8) = a2 & 1;
    v13 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    v14 = *(a3 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v14;
    *(v15 + 32) = v12;
    swift_retain_n();

    sub_242F042A0();
    sub_242F03D40();
    (*(v6 + 8))(v8, v18);
  }

  return result;
}

uint64_t sub_242D34164(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Component();
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v20 = v6;
    v21 = v2;
    if (a2)
    {
      v9 = *(result + *(*result + 160) + 48) ^ 1;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x28223BE20](result);
    *(&v19 - 4) = v4;
    v10 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component);
    *(&v19 - 3) = v10;
    v11 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component);
    *(&v19 - 2) = v11;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v19 - 4) = v4;
    *(&v19 - 3) = v10;
    *(&v19 - 2) = v11;
    swift_getKeyPath();
    v22 = v9 & 1;

    v13 = sub_242F03A90();
    MEMORY[0x28223BE20](v13);
    *(&v19 - 4) = v4;
    *(&v19 - 3) = v10;
    *(&v19 - 2) = v11;
    v14 = swift_getKeyPath();
    MEMORY[0x28223BE20](v14);
    *(&v19 - 4) = v4;
    *(&v19 - 3) = v10;
    *(&v19 - 2) = v11;
    swift_getKeyPath();
    v22 = a2 & 1;

    v15 = sub_242F03A90();
    if (*(v8 + *(*v8 + 160) + 64))
    {
    }

    v16 = *(v8 + *(*v8 + 112));
    if (!v16)
    {
    }

    else
    {
      MEMORY[0x28223BE20](v15);
      *(&v19 - 4) = v4;
      *(&v19 - 3) = v10;
      *(&v19 - 2) = v11;
      v17 = swift_getKeyPath();
      MEMORY[0x28223BE20](v17);
      *(&v19 - 4) = v4;
      *(&v19 - 3) = v10;
      *(&v19 - 2) = v11;
      swift_getKeyPath();

      v18 = v20;
      sub_242F03A80();

      v16(v18);
      sub_242C655DC(v16);

      return sub_242D39AFC(v18, type metadata accessor for Component);
    }
  }

  return result;
}

uint64_t sub_242D3456C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v6 = result;

      if (sub_242F04BB0())
      {
        if (qword_27ECEF4C0 != -1)
        {
          swift_once();
        }

        v7 = sub_242F039D0();
        __swift_project_value_buffer(v7, qword_27ED5D2E0);
        v8 = sub_242F039B0();
        v9 = sub_242F056E0();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 67240192;
          *(v10 + 4) = a3 & 1;
          _os_log_impl(&dword_242C53000, v8, v9, "Previous carousel decorations showing was cancelled. Animated: %{BOOL,public}d", v10, 8u);
          MEMORY[0x245D287D0](v10, -1, -1);
        }
      }

      else
      {
        if (qword_27ECEF4C0 != -1)
        {
          swift_once();
        }

        v11 = sub_242F039D0();
        __swift_project_value_buffer(v11, qword_27ED5D2E0);
        v12 = sub_242F039B0();
        v13 = sub_242F056E0();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 67240192;
          *(v14 + 4) = a3 & 1;
          _os_log_impl(&dword_242C53000, v12, v13, "Finished showing carousel decorations. Animated: %{BOOL,public}d", v14, 8u);
          MEMORY[0x245D287D0](v14, -1, -1);
        }

        v15 = *(*v6 + 144);
        swift_beginAccess();
        if (*(*(v6 + v15) + 16))
        {
          v16 = *(v6 + *(*v6 + 160) + 72);
        }

        else
        {
          v16 = 0.0;
        }

        sub_242D347D8(v16);
      }
    }
  }

  return result;
}

uint64_t sub_242D347D8(double a1)
{
  v2 = v1;
  v4 = sub_242F04BA0();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = sub_242F04B60();
  MEMORY[0x28223BE20](v9);
  if (qword_27ECEF4C0 != -1)
  {
    swift_once();
  }

  v10 = sub_242F039D0();
  __swift_project_value_buffer(v10, qword_27ED5D2E0);
  v11 = sub_242F039B0();
  v12 = sub_242F056E0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134349056;
    *(v13 + 4) = a1;
    _os_log_impl(&dword_242C53000, v11, v12, "Hiding carousel decorations. Delay: %{public}f", v13, 0xCu);
    MEMORY[0x245D287D0](v13, -1, -1);
  }

  v27 = v8;

  v14 = *(*v2 + 152);
  if (*(v2 + v14))
  {

    sub_242F04BD0();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  *(v17 + 32) = a1;
  aBlock[4] = sub_242D3DC00;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_242DEA248;
  aBlock[3] = &block_descriptor;
  _Block_copy(aBlock);
  v30 = MEMORY[0x277D84F90];
  sub_242D3DC24(&qword_27ECFC050, MEMORY[0x277D85198]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECFC610);
  sub_242D3DC6C();
  sub_242F05930();
  sub_242F04BE0();
  swift_allocObject();
  v18 = sub_242F04BC0();

  swift_beginAccess();
  *(v15 + 16) = v18;

  *(v2 + v14) = v18;

  sub_242D3DCD0();
  v19 = sub_242F05750();
  v20 = v26;
  sub_242F04B90();
  v21 = v27;
  sub_242F04BF0();
  v22 = v29;
  v23 = *(v28 + 8);
  result = v23(v20, v29);
  if (*(v2 + v14))
  {

    sub_242F05740();

    v23(v21, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_242D34C64(double a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_242F042C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    v11 = *(a3 + 16);
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    *(v12 + 32) = a1;
    swift_retain_n();

    sub_242F042A0();
    sub_242F03D40();
    (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_242D34EA8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MEMORY[0x28223BE20](result);
    type metadata accessor for Component();
    sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component);
    sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    swift_getKeyPath();

    v2 = sub_242F03A90();
    MEMORY[0x28223BE20](v2);
    v3 = swift_getKeyPath();
    MEMORY[0x28223BE20](v3);
    swift_getKeyPath();
    return sub_242F03A90();
  }

  return result;
}

uint64_t sub_242D350C0(double a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Component();
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a3)
    {
      v9 = result;

      if (sub_242F04BB0())
      {
        if (qword_27ECEF4C0 != -1)
        {
          swift_once();
        }

        v10 = sub_242F039D0();
        __swift_project_value_buffer(v10, qword_27ED5D2E0);
        v11 = sub_242F039B0();
        v12 = sub_242F056E0();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_242C53000, v11, v12, "Previous carousel decorations hiding was cancelled", v13, 2u);
          MEMORY[0x245D287D0](v13, -1, -1);
        }
      }

      else
      {
        if (qword_27ECEF4C0 != -1)
        {
          swift_once();
        }

        v14 = sub_242F039D0();
        __swift_project_value_buffer(v14, qword_27ED5D2E0);
        v15 = sub_242F039B0();
        v16 = sub_242F056E0();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 134349056;
          *(v17 + 4) = a1;
          _os_log_impl(&dword_242C53000, v15, v16, "Finished hiding carousel decorations. Delay: %{public}f", v17, 0xCu);
          MEMORY[0x245D287D0](v17, -1, -1);
        }

        if ((*(v9 + *(*v9 + 160) + 64) & 1) == 0)
        {
          v18 = sub_242F039B0();
          v19 = sub_242F056E0();
          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            *v20 = 134349056;
            *(v20 + 4) = a1;
            _os_log_impl(&dword_242C53000, v18, v19, "Animation settled after %{public}f.", v20, 0xCu);
            MEMORY[0x245D287D0](v20, -1, -1);
          }

          v22 = *(v9 + *(*v9 + 120));
          if (v22)
          {
            v26 = &v26;
            MEMORY[0x28223BE20](v21);
            *(&v26 - 4) = v5;
            v23 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component);
            *(&v26 - 3) = v23;
            v24 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component);
            *(&v26 - 2) = v24;
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            *(&v26 - 4) = v5;
            *(&v26 - 3) = v23;
            *(&v26 - 2) = v24;
            swift_getKeyPath();

            sub_242F03A80();

            v22(v7);

            sub_242C655DC(v22);

            return sub_242D39AFC(v7, type metadata accessor for Component);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_242D3554C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v137 = a1;
  v127 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3170);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v125 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  MEMORY[0x28223BE20](v7 - 8);
  v136 = &v125 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3020);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v125 - v10;
  v12 = type metadata accessor for Component();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v133 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v135 = &v125 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v128 = &v125 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v130 = &v125 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v125 - v23;
  v144 = v22;
  v25 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component);
  v145 = v25;
  v26 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component);
  v146 = v26;
  swift_getKeyPath();
  v141 = v12;
  v142 = v25;
  v143 = v26;
  swift_getKeyPath();
  sub_242F03A80();

  v27 = *(v147[0] + 16);

  if (v27 < 2)
  {
    return (*(v13 + 56))(v127, 1, 1, v12);
  }

  v129 = v6;
  v131 = v13;
  MEMORY[0x28223BE20](v28);
  *(&v125 - 4) = v12;
  *(&v125 - 3) = v25;
  *(&v125 - 2) = v26;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v125 - 4) = v12;
  *(&v125 - 3) = v25;
  *(&v125 - 2) = v26;
  swift_getKeyPath();
  sub_242F03A80();

  MEMORY[0x28223BE20](v30);
  *(&v125 - 4) = v12;
  *(&v125 - 3) = v25;
  *(&v125 - 2) = v26;
  v31 = swift_getKeyPath();
  MEMORY[0x28223BE20](v31);
  v139 = v25;
  v140 = v12;
  *(&v125 - 4) = v12;
  *(&v125 - 3) = v25;
  v138 = v26;
  *(&v125 - 2) = v26;
  swift_getKeyPath();
  sub_242F03A80();

  v33 = v147[0];
  MEMORY[0x28223BE20](v32);
  *(&v125 - 2) = v24;
  v34 = sub_242CDAC68(sub_242D3E1B8, (&v125 - 4), v33);
  v36 = v35;

  if (v36)
  {
    v37 = 0;
  }

  else
  {
    v37 = v34;
  }

  sub_242D39AFC(v24, type metadata accessor for Component);
  sub_242CA321C(v137, v11, &qword_27ECF3020);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008);
  result = (*(*(v38 - 8) + 48))(v11, 2, v38);
  if (result)
  {
    if (result == 1)
    {
      v40 = -1;
    }

    else
    {
      v40 = 1;
    }

    v44 = v139;
    v43 = v140;
    v45 = v138;
    goto LABEL_13;
  }

  v41 = v136;
  v42 = sub_242CF6B3C(v11, v136, &qword_27ECF23E8);
  MEMORY[0x28223BE20](v42);
  v44 = v139;
  v43 = v140;
  *(&v125 - 4) = v140;
  *(&v125 - 3) = v44;
  v45 = v138;
  *(&v125 - 2) = v138;
  v46 = swift_getKeyPath();
  MEMORY[0x28223BE20](v46);
  *(&v125 - 4) = v43;
  *(&v125 - 3) = v44;
  *(&v125 - 2) = v45;
  swift_getKeyPath();
  sub_242F03A80();

  v48 = v147[0];
  MEMORY[0x28223BE20](v47);
  *(&v125 - 2) = v41;
  v49 = sub_242CDAC68(sub_242D3B610, (&v125 - 4), v48);
  v51 = v50;

  if (v51)
  {
    result = sub_242C6D138(v41, &qword_27ECF23E8);
    v40 = 0;
    goto LABEL_13;
  }

  v113 = v37;
  v114 = __OFSUB__(v49, v37);
  v115 = v49 - v37;
  v116 = v114;
  if (v115 < 0 != v114)
  {
    if (v116)
    {
      goto LABEL_99;
    }

    MEMORY[0x28223BE20](result);
    *(&v125 - 4) = v43;
    *(&v125 - 3) = v44;
    *(&v125 - 2) = v45;
    v117 = swift_getKeyPath();
    MEMORY[0x28223BE20](v117);
    *(&v125 - 4) = v43;
    *(&v125 - 3) = v44;
    *(&v125 - 2) = v45;
    swift_getKeyPath();
    sub_242F03A80();

    v118 = *(v147[0] + 16);

    v119 = v49 + v118;
    if (__OFADD__(v49, v118))
    {
      goto LABEL_101;
    }

    v114 = __OFSUB__(v119, v113);
    v120 = v119 - v113;
    if (v114)
    {
      goto LABEL_103;
    }

    v121 = v115;
    if (v115 < 0)
    {
LABEL_83:
      v121 = -v115;
      if (__OFSUB__(0, v115))
      {
        goto LABEL_104;
      }
    }
  }

  else
  {
    if (v116)
    {
      goto LABEL_100;
    }

    MEMORY[0x28223BE20](result);
    *(&v125 - 4) = v43;
    *(&v125 - 3) = v44;
    *(&v125 - 2) = v45;
    v122 = swift_getKeyPath();
    MEMORY[0x28223BE20](v122);
    *(&v125 - 4) = v43;
    *(&v125 - 3) = v44;
    *(&v125 - 2) = v45;
    swift_getKeyPath();
    sub_242F03A80();

    v123 = *(v147[0] + 16);

    v121 = v115 - v123;
    if (__OFSUB__(v115, v123))
    {
      goto LABEL_102;
    }

    v120 = v115;
    v115 -= v123;
    if (v121 < 0)
    {
      goto LABEL_83;
    }
  }

  v124 = v120;
  if (v120 < 0)
  {
    v124 = -v120;
    if (__OFSUB__(0, v120))
    {
      goto LABEL_105;
    }
  }

  if (v121 >= v124)
  {
    v40 = v120;
  }

  else
  {
    v40 = v115;
  }

  result = sub_242C6D138(v136, &qword_27ECF23E8);
  v37 = v113;
LABEL_13:
  v52 = v37 + v40;
  v53 = __OFADD__(v37, v40);
  if (__OFADD__(v37, v40))
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v126 = v40;
  if ((v52 & 0x8000000000000000) == 0)
  {
    MEMORY[0x28223BE20](result);
    *(&v125 - 4) = v43;
    *(&v125 - 3) = v44;
    *(&v125 - 2) = v45;
    v54 = swift_getKeyPath();
    MEMORY[0x28223BE20](v54);
    *(&v125 - 4) = v43;
    *(&v125 - 3) = v44;
    *(&v125 - 2) = v45;
    swift_getKeyPath();
    sub_242F03A80();

    v55 = *(v147[0] + 16);

    if (v52 < v55)
    {
      goto LABEL_66;
    }

    v137 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      goto LABEL_98;
    }

    MEMORY[0x28223BE20](result);
    *(&v125 - 4) = v43;
    *(&v125 - 3) = v44;
    *(&v125 - 2) = v45;
    v56 = swift_getKeyPath();
    MEMORY[0x28223BE20](v56);
    *(&v125 - 4) = v43;
    *(&v125 - 3) = v44;
    *(&v125 - 2) = v45;
    swift_getKeyPath();
    sub_242F03A80();

    v57 = *(v147[0] + 16);

    if (v137 == v57)
    {
      goto LABEL_66;
    }

    v52 = v137 - v57;
  }

  v134 = v3;
  v58 = v131;
  while (1)
  {
    MEMORY[0x28223BE20](result);
    *(&v125 - 4) = v43;
    *(&v125 - 3) = v44;
    *(&v125 - 2) = v45;
    v59 = swift_getKeyPath();
    MEMORY[0x28223BE20](v59);
    *(&v125 - 4) = v43;
    *(&v125 - 3) = v44;
    *(&v125 - 2) = v45;
    swift_getKeyPath();
    v136 = v52;
    v137 = v37;
    if ((v52 & 0x8000000000000000) != 0)
    {
      break;
    }

    result = sub_242F03A70();
    v61 = *v60;
    v62 = *(*v60 + 16);
    if (!v62)
    {
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v63 = result;
    v64 = v60;
    v65 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    sub_242D39B5C(v61 + v65, v135, type metadata accessor for Component);
    v66 = v62 - 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v64 = v61;
    if (!isUniquelyReferenced_nonNull_native || v66 > v61[3] >> 1)
    {
      if (v61[2] <= v66)
      {
        v68 = v66;
      }

      else
      {
        v68 = v61[2];
      }

      v61 = sub_242C83620(isUniquelyReferenced_nonNull_native, v68, 1, v61);
      *v64 = v61;
    }

    sub_242D39AFC(v61 + v65, type metadata accessor for Component);
    v69 = *(v58 + 72);
    if (v69 > 0 || v61 + v65 >= v61 + v65 + v69 + (v61[2] - 1) * v69)
    {
      v70 = v140;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v70 = v140;
      if (v69)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v132 = v65;
    --v61[2];
    *v64 = v61;
    v63(v147, 0);

    v95 = sub_242D39B5C(v135, v133, type metadata accessor for Component);
    MEMORY[0x28223BE20](v95);
    v97 = v138;
    v96 = v139;
    *(&v125 - 4) = v70;
    *(&v125 - 3) = v96;
    *(&v125 - 2) = v97;
    v98 = swift_getKeyPath();
    MEMORY[0x28223BE20](v98);
    *(&v125 - 4) = v70;
    *(&v125 - 3) = v96;
    *(&v125 - 2) = v97;
    swift_getKeyPath();
    v99 = sub_242F03A70();
    v101 = v100;
    v102 = *v100;
    v103 = swift_isUniquelyReferenced_nonNull_native();
    *v101 = v102;
    if ((v103 & 1) == 0)
    {
      v102 = sub_242C83620(0, v102[2] + 1, 1, v102);
      *v101 = v102;
    }

    v104 = v131;
    v105 = v137;
    v107 = v102[2];
    v106 = v102[3];
    if (v107 >= v106 >> 1)
    {
      v102 = sub_242C83620(v106 > 1, v107 + 1, 1, v102);
      *v101 = v102;
    }

    v44 = v139;
    v102[2] = v107 + 1;
    sub_242D39C68(v133, v102 + v132 + v107 * v69, type metadata accessor for Component);
    v99(v147, 0);

    result = sub_242D39AFC(v135, type metadata accessor for Component);
    v114 = __OFSUB__(v105, 1);
    v37 = v105 - 1;
    if (v114)
    {
      goto LABEL_91;
    }

    v108 = -1;
    v58 = v104;
LABEL_23:
    v52 = v136 + v108;
    v43 = v140;
    v45 = v138;
    if (!(v136 + v108))
    {
      goto LABEL_63;
    }
  }

  result = sub_242F03A70();
  v44 = *v71;
  if (!*(*v71 + 16))
  {
    goto LABEL_92;
  }

  v72 = result;
  v43 = v71;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v43 = v44;
  if (result)
  {
    v73 = v44[2];
    if (!v73)
    {
      goto LABEL_62;
    }

LABEL_39:
    v74 = v73 - 1;
    v132 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v75 = *(v58 + 72);
    v76 = v128;
    sub_242D39C68(v44 + v132 + v75 * (v73 - 1), v128, type metadata accessor for Component);
    v44[2] = v74;
    *v43 = v44;
    v77 = v76;
    v78 = v130;
    v79 = v138;
    sub_242D39C68(v77, v130, type metadata accessor for Component);
    v72(v147, 0);

    MEMORY[0x28223BE20](v80);
    v82 = v139;
    v81 = v140;
    *(&v125 - 4) = v140;
    *(&v125 - 3) = v82;
    *(&v125 - 2) = v79;
    v83 = swift_getKeyPath();
    MEMORY[0x28223BE20](v83);
    *(&v125 - 4) = v81;
    *(&v125 - 3) = v82;
    *(&v125 - 2) = v79;
    swift_getKeyPath();
    v84 = sub_242F03A70();
    v86 = v85;
    sub_242D39B5C(v78, v129, type metadata accessor for Component);
    v87 = *v86;
    v88 = *(*v86 + 16);
    v89 = swift_isUniquelyReferenced_nonNull_native();
    *v86 = v87;
    if (!v89 || v88 >= v87[3] >> 1)
    {
      if (v87[2] <= v88 + 1)
      {
        v90 = v88 + 1;
      }

      else
      {
        v90 = v87[2];
      }

      v87 = sub_242C83620(v89, v90, 1, v87);
      *v86 = v87;
    }

    v91 = v137;
    v92 = v87 + v132;
    swift_arrayDestroy();
    v93 = v87[2];
    if (v75 < 0 || v75 >= v93 * v75)
    {
      swift_arrayInitWithTakeFrontToBack();
      ++v87[2];
      v94 = v129;
      if (v75 <= 0)
      {
LABEL_59:
        sub_242C6D138(v94, &qword_27ECF3170);
        *v86 = v87;
        v84(v147, 0);

        result = sub_242D39AFC(v130, type metadata accessor for Component);
        v114 = __OFADD__(v91, 1);
        v37 = v91 + 1;
        v58 = v131;
        if (v114)
        {
          goto LABEL_93;
        }

        v108 = 1;
        v44 = v139;
        goto LABEL_23;
      }
    }

    else
    {
      if (!v75)
      {
        v87[2] = v93 + 1;
        v94 = v129;
        goto LABEL_59;
      }

      swift_arrayInitWithTakeBackToFront();
      ++v87[2];
      v94 = v129;
    }

    sub_242D39B5C(v94, v92, type metadata accessor for Component);
    goto LABEL_59;
  }

  result = sub_242D37E58(v44);
  v44 = result;
  *v43 = result;
  v73 = *(result + 16);
  if (v73)
  {
    goto LABEL_39;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  v52 = v37 + v126;
  v53 = __OFADD__(v37, v126);
LABEL_66:
  if (v53)
  {
    goto LABEL_95;
  }

  MEMORY[0x28223BE20](result);
  *(&v125 - 4) = v43;
  *(&v125 - 3) = v44;
  *(&v125 - 2) = v45;
  v109 = swift_getKeyPath();
  MEMORY[0x28223BE20](v109);
  *(&v125 - 4) = v43;
  *(&v125 - 3) = v44;
  *(&v125 - 2) = v45;
  swift_getKeyPath();
  v110 = v52;
  sub_242F03A80();

  if ((v52 & 0x8000000000000000) != 0)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (v52 < *(v147[0] + 16))
  {
    v111 = v131;
    v112 = v127;
    sub_242D39B5C(v147[0] + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v131 + 72) * v110, v127, type metadata accessor for Component);

    return (*(v111 + 56))(v112, 0, 1, v43);
  }

LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

uint64_t sub_242D3685C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_242CA321C(a1, &v7 - v3, &qword_27ECF23E8);
  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
  v5 = sub_242F04EE0();
  sub_242C6D138(v4, &qword_27ECF23E8);
  return v5 & 1;
}

uint64_t sub_242D36974(uint64_t a1, double a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(v2 + *(*v2 + 160) + 64) == 1)
  {
    if (qword_27ECEF4C0 != -1)
    {
      swift_once();
    }

    v7 = sub_242F039D0();
    __swift_project_value_buffer(v7, qword_27ED5D2E0);
    v8 = sub_242F039B0();
    v9 = sub_242F056E0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_242C53000, v8, v9, "Animation settled immidiately.", v10, 2u);
      MEMORY[0x245D287D0](v10, -1, -1);
    }

    v5 = *v3;
    v11 = *(v3 + *(*v3 + 120));
    if (v11)
    {

      v11(a1);
      sub_242C655DC(v11);
      v5 = *v3;
    }
  }

  v12 = *(v5 + 144);
  swift_beginAccess();
  v13 = 0.0;
  if (*(*(v3 + v12) + 16))
  {
    v13 = a2;
  }

  return sub_242D347D8(v13);
}

uint64_t sub_242D36B28()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  MEMORY[0x28223BE20](v2);
  v4 = v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3020);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  sub_242CA321C(v1, v12 - v6, &qword_27ECF3020);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008);
  v9 = (*(*(v8 - 8) + 48))(v7, 2, v8);
  if (v9)
  {
    if (v9 == 1)
    {
      return 28789;
    }

    else
    {
      return 1853321060;
    }
  }

  else
  {
    sub_242CF6B3C(v7, v4, &qword_27ECF23E8);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    MEMORY[0x245D26660](0x2874736574736166, 0xE800000000000000);
    sub_242F05C20();
    MEMORY[0x245D26660](41, 0xE100000000000000);
    v11 = v12[0];
    sub_242C6D138(v4, &qword_27ECF23E8);
    return v11;
  }
}

uint64_t sub_242D36D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v10 = v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_242D36F2C(v10, v8, a3, v6, a2);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_242D36E9C(v12, v8, a3, v6, a2);
  result = MEMORY[0x245D287D0](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

void *sub_242D36E9C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, __int128 *), uint64_t a5)
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
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_242D36F2C(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

uint64_t sub_242D36F2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, __int128 *), uint64_t a5)
{
  v43 = a5;
  v45 = a4;
  v37 = a2;
  v38 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780);
  v44 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - v8;
  v39 = 0;
  v10 = 0;
  v46 = a3;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v41 = a3 + 64;
  v42 = v15;
  if (v14)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v47 = (v14 - 1) & v14;
LABEL_10:
      v19 = v16 | (v10 << 6);
      v20 = v46;
      sub_242CA321C(v46[6] + *(v44 + 72) * v19, v9, &qword_27ECFC780);
      v21 = v20[7];
      v40 = v19;
      v22 = (v21 + 112 * v19);
      v23 = *v22;
      v24 = v22[2];
      v60[1] = v22[1];
      v60[2] = v24;
      v60[0] = v23;
      v25 = v22[3];
      v26 = v22[4];
      v27 = v22[5];
      *(v61 + 9) = *(v22 + 89);
      v60[4] = v26;
      v61[0] = v27;
      v60[3] = v25;
      v28 = v22[1];
      v54 = *v22;
      v55 = v28;
      v29 = v22[2];
      v30 = v22[3];
      *(v59 + 9) = *(v22 + 89);
      v31 = v22[5];
      v58 = v22[4];
      v59[0] = v31;
      v56 = v29;
      v57 = v30;
      sub_242CA321C(v60, &v48, &qword_27ECF21A8);
      v32 = v62;
      v33 = v45(v9, &v54);
      v62 = v32;
      if (v32)
      {
        v52 = v58;
        v53[0] = v59[0];
        *(v53 + 9) = *(v59 + 9);
        v48 = v54;
        v49 = v55;
        v50 = v56;
        v51 = v57;
        sub_242C6D138(&v48, &qword_27ECF21A8);
        return sub_242C6D138(v9, &qword_27ECFC780);
      }

      v34 = v33;
      v52 = v58;
      v53[0] = v59[0];
      *(v53 + 9) = *(v59 + 9);
      v48 = v54;
      v49 = v55;
      v50 = v56;
      v51 = v57;
      sub_242C6D138(&v48, &qword_27ECF21A8);
      result = sub_242C6D138(v9, &qword_27ECFC780);
      if (v34)
      {
        *(v38 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
        if (__OFADD__(v39++, 1))
        {
          break;
        }
      }

      v11 = v41;
      v15 = v42;
      v14 = v47;
      if (!v47)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    return sub_242D377A4(v38, v37, v39, v46);
  }

  else
  {
LABEL_5:
    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        return sub_242D377A4(v38, v37, v39, v46);
      }

      v18 = *(v11 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v47 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_242D37270(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF21F8);
  result = sub_242F05CB0();
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
  v12 = result + 64;
  v34 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 32 * v16);
    v22 = v21[1];
    v37 = *v21;
    v36 = *(v21 + 16);
    v35 = v21[3];
    sub_242F06390();

    sub_242F04DD0();
    result = sub_242F063E0();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    v32 = *(v9 + 56) + 32 * v26;
    *v32 = v37;
    *(v32 + 8) = v22;
    *(v32 + 16) = v36;
    *(v32 + 24) = v35;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v34;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_242D374E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0050);
  result = sub_242F05CB0();
  v8 = a2;
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
  v12 = result + 64;
  v39 = a2;
  v40 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v41 = (v10 - 1) & v10;
LABEL_16:
    v16 = 24 * (v13 | (v11 << 6));
    v17 = *(v4 + 48) + v16;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v4 + 56) + v16;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    v25 = v9;
    sub_242F06390();
    sub_242C7CE5C(v18, v19, v20);
    sub_242C7CE74(v22, v23, v24);
    Theme.ColorID.rawValue.getter();
    sub_242F04DD0();

    result = sub_242F063E0();
    v9 = v25;
    v26 = -1 << *(v25 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v12 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = 24 * v29;
    v35 = *(v25 + 48) + v34;
    *v35 = v18;
    *(v35 + 8) = v19;
    *(v35 + 16) = v20;
    v36 = *(v25 + 56) + v34;
    *v36 = v22;
    *(v36 + 8) = v23;
    *(v36 + 16) = v24;
    ++*(v25 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v40;
    v10 = v41;
    v8 = v39;
    if (!v5)
    {
      return v9;
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

    if (v11 >= v8)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v41 = (v15 - 1) & v15;
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

uint64_t sub_242D377A4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780);
  v49 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v52 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v44 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2B48);
  result = sub_242F05CB0();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v45 = a1;
  v46 = result;
  v44 = a2;
  v47 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v50 = (v14 - 1) & v14;
LABEL_16:
    v20 = v17 | (v15 << 6);
    v21 = a4[6];
    v22 = v48;
    v51 = *(v49 + 72);
    sub_242CA321C(v21 + v51 * v20, v48, &qword_27ECFC780);
    v23 = (a4[7] + 112 * v20);
    v25 = v23[1];
    v24 = v23[2];
    v54 = *v23;
    v55 = v25;
    v56 = v24;
    v27 = v23[4];
    v26 = v23[5];
    v28 = v23[3];
    *(v59 + 9) = *(v23 + 89);
    v58 = v27;
    v59[0] = v26;
    v57 = v28;
    sub_242CF6B3C(v22, v52, &qword_27ECFC780);
    v13 = v46;
    sub_242F06390();
    sub_242CA321C(&v54, &v53, &qword_27ECF21A8);
    sub_242F03720();
    sub_242D3DC24(&qword_27ECF2258, MEMORY[0x277CC95F0]);
    sub_242F04D90();
    result = sub_242F063E0();
    v29 = -1 << *(v13 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      a4 = v47;
      a2 = v44;
      a1 = v45;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v16 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    a4 = v47;
    a2 = v44;
    a1 = v45;
LABEL_26:
    *(v16 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    result = sub_242CF6B3C(v52, *(v13 + 48) + v32 * v51, &qword_27ECFC780);
    v37 = (*(v13 + 56) + 112 * v32);
    v38 = *(v59 + 9);
    v40 = v58;
    v39 = v59[0];
    v37[3] = v57;
    v37[4] = v40;
    v37[5] = v39;
    *(v37 + 89) = v38;
    v42 = v55;
    v41 = v56;
    *v37 = v54;
    v37[1] = v42;
    v37[2] = v41;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v14 = v50;
    if (!a3)
    {
      return v13;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v50 = (v19 - 1) & v19;
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

uint64_t sub_242D37C00@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = sub_242CE5568(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v29 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v17 = v29;
    }

    v18 = *(v17 + 48);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780);
    sub_242C6D138(v18 + *(*(v19 - 8) + 72) * v15, &qword_27ECFC780);
    v20 = *(v17 + 56);
    v21 = a2(0);
    v28 = *(v21 - 8);
    sub_242D39C68(v20 + *(v28 + 72) * v15, a6, a3);
    a4(v15, v17);
    *v11 = v17;
    v22 = *(v28 + 56);
    v23 = a6;
    v24 = 0;
    v25 = v21;
  }

  else
  {
    v26 = a2(0);
    v22 = *(*(v26 - 8) + 56);
    v25 = v26;
    v23 = a6;
    v24 = 1;
  }

  return v22(v23, v24, 1, v25);
}

uint64_t sub_242D37DC0(char a1)
{
  v2 = v1;
  v3 = sub_242CE561C(a1 & 1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_242D0301C();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_242ED0A70(v8, v7);
  *v2 = v7;
  return v9;
}

unint64_t sub_242D37EF8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_242C83620(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_242D380A0(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

char *sub_242D37FCC(char *result, uint64_t a2, char a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_242C83A00(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_242D3822C(v7, a2, 1, a3 & 1);
  *v3 = v5;
  return result;
}

unint64_t sub_242D380A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for Component();
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_242C6D138(a4, &qword_27ECF3170);
  }

  if (v17 < 1)
  {
    return sub_242C6D138(a4, &qword_27ECF3170);
  }

  result = sub_242D39B5C(a4, v15, type metadata accessor for Component);
  if (v12 >= v17)
  {
    return sub_242C6D138(a4, &qword_27ECF3170);
  }

LABEL_23:
  __break(1u);
  return result;
}

char *sub_242D3822C(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = &result[v7 + 32];
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + a2);
      if (&v8[a3] != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4 & 1;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_242D382EC(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for Component();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v16 = *v2;
  result = sub_242CDAC68(a1, a2, *v2);
  if (!v3)
  {
    v44 = 0;
    if (v18)
    {
      return *(v16 + 16);
    }

    v39 = v15;
    v40 = a1;
    v36 = v13;
    v37 = v10;
    v35 = v2;
    v43 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v43;
      }

      v38 = v7;
      while (v19 < v20)
      {
        v22 = v16;
        v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v41;
        v24 = *(v7 + 72);
        v42 = v24 * v19;
        v25 = v39;
        sub_242D39B5C(v23 + v24 * v19, v39, type metadata accessor for Component);
        v26 = a2;
        v27 = v44;
        v28 = v40(v25);
        result = sub_242D39AFC(v25, type metadata accessor for Component);
        v44 = v27;
        if (v27)
        {
          return result;
        }

        if (v28)
        {
          a2 = v26;
          v7 = v38;
          v16 = v22;
        }

        else
        {
          v29 = v43;
          if (v19 == v43)
          {
            a2 = v26;
            v7 = v38;
            v16 = v22;
          }

          else
          {
            if ((v43 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v30 = *v21;
            if (v43 >= *v21)
            {
              goto LABEL_27;
            }

            v31 = v24 * v43;
            result = sub_242D39B5C(v23 + v24 * v43, v36, type metadata accessor for Component);
            if (v19 >= v30)
            {
              goto LABEL_28;
            }

            v32 = v42;
            sub_242D39B5C(v23 + v42, v37, type metadata accessor for Component);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_242D37E58(v22);
            }

            a2 = v26;
            v33 = v16 + v41;
            result = sub_242D3A00C(v37, v16 + v41 + v31);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_29;
            }

            result = sub_242D3A00C(v36, v33 + v32);
            *v35 = v16;
            v7 = v38;
            v29 = v43;
          }

          v43 = v29 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v43;
        }
      }

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

    __break(1u);
  }

  return result;
}

uint64_t sub_242D3861C(uint64_t *a1, char a2)
{
  v4 = *a1;
  result = sub_242D12740(*a1, a2 & 1);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    return *(v4 + 16);
  }

  if (!__OFADD__(result, 1))
  {
    v9 = (v4 + 16);
    v8 = *(v4 + 16);
    if (result + 1 == v8)
    {
      return v7;
    }

    if (a2)
    {
      v10 = 0x32656E6F7ALL;
    }

    else
    {
      v10 = 0x31656E6F7ALL;
    }

    for (i = result + 33; ; ++i)
    {
      v13 = i - 32;
      if (i - 32 >= v8)
      {
        break;
      }

      if (*(v4 + i))
      {
        v14 = 0x32656E6F7ALL;
      }

      else
      {
        v14 = 0x31656E6F7ALL;
      }

      if (v14 == v10)
      {
        result = swift_bridgeObjectRelease_n();
      }

      else
      {
        v15 = sub_242F06110();
        result = swift_bridgeObjectRelease_n();
        if ((v15 & 1) == 0)
        {
          if (v13 != v7)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_28;
            }

            if (v7 >= *v9)
            {
              goto LABEL_29;
            }

            if (v13 >= *v9)
            {
              goto LABEL_30;
            }

            v16 = *(v4 + 32 + v7);
            v17 = *(v4 + i);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_242D37E80(v4);
              v4 = result;
            }

            *(v4 + v7 + 32) = v17;
            *(v4 + i) = v16;
            *a1 = v4;
          }

          ++v7;
        }
      }

      v9 = (v4 + 16);
      v8 = *(v4 + 16);
      v12 = i - 31;
      if (v12 == v8)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s14CarPlayAssetUI28ClusterTransitionCoordinatorC13ListDirectionO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for ClusterTransitionCoordinator.ListDirection(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3160);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  v14 = *(v11 + 56);
  sub_242D39B5C(a1, &v20 - v12, type metadata accessor for ClusterTransitionCoordinator.ListDirection);
  sub_242D39B5C(a2, &v13[v14], type metadata accessor for ClusterTransitionCoordinator.ListDirection);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008);
  v16 = *(*(v15 - 8) + 48);
  v17 = v16(v13, 2, v15);
  if (!v17)
  {
    sub_242D39B5C(v13, v9, type metadata accessor for ClusterTransitionCoordinator.ListDirection);
    if (!v16(&v13[v14], 2, v15))
    {
      sub_242CF6B3C(&v13[v14], v6, &qword_27ECF23E8);
      sub_242F03720();
      sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
      v18 = sub_242F04EE0();
      sub_242C6D138(v6, &qword_27ECF23E8);
      sub_242C6D138(v9, &qword_27ECF23E8);
      sub_242D39AFC(v13, type metadata accessor for ClusterTransitionCoordinator.ListDirection);
      return v18 & 1;
    }

    sub_242C6D138(v9, &qword_27ECF23E8);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v13[v14], 2, v15) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v13[v14], 2, v15) != 2)
  {
LABEL_9:
    sub_242C6D138(v13, &qword_27ECF3160);
    v18 = 0;
    return v18 & 1;
  }

  sub_242D39AFC(v13, type metadata accessor for ClusterTransitionCoordinator.ListDirection);
  v18 = 1;
  return v18 & 1;
}

uint64_t _s14CarPlayAssetUI28ClusterTransitionCoordinatorC06LayoutF0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Layout();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3168);
  v15 = MEMORY[0x28223BE20](v14);
  v42 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  if ((sub_242F03700() & 1) == 0)
  {
    goto LABEL_16;
  }

  v37 = v11;
  v38 = v7;
  v19 = type metadata accessor for ClusterTransitionCoordinator.LayoutTransition(0);
  v20 = *(v19 + 20);
  v21 = *(v14 + 48);
  v39 = v19;
  v40 = a1;
  sub_242CA321C(a1 + v20, v18, &qword_27ECF2F98);
  v41 = a2;
  sub_242CA321C(a2 + v20, &v18[v21], &qword_27ECF2F98);
  v22 = *(v5 + 48);
  if (v22(v18, 1, v4) == 1)
  {
    if (v22(&v18[v21], 1, v4) == 1)
    {
      sub_242C6D138(v18, &qword_27ECF2F98);
      goto LABEL_9;
    }

LABEL_7:
    v23 = v18;
LABEL_15:
    sub_242C6D138(v23, &qword_27ECF3168);
    goto LABEL_16;
  }

  sub_242CA321C(v18, v13, &qword_27ECF2F98);
  if (v22(&v18[v21], 1, v4) == 1)
  {
    sub_242D39AFC(v13, type metadata accessor for Layout);
    goto LABEL_7;
  }

  v24 = &v18[v21];
  v25 = v38;
  sub_242D39C68(v24, v38, type metadata accessor for Layout);
  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
  v26 = sub_242F04EE0();
  sub_242D39AFC(v25, type metadata accessor for Layout);
  sub_242D39AFC(v13, type metadata accessor for Layout);
  sub_242C6D138(v18, &qword_27ECF2F98);
  if ((v26 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v28 = v39;
  v27 = v40;
  v29 = *(v39 + 24);
  v30 = *(v14 + 48);
  v31 = v42;
  sub_242CA321C(v40 + v29, v42, &qword_27ECF2F98);
  sub_242CA321C(v41 + v29, v31 + v30, &qword_27ECF2F98);
  if (v22(v31, 1, v4) != 1)
  {
    v32 = v37;
    sub_242CA321C(v31, v37, &qword_27ECF2F98);
    if (v22((v31 + v30), 1, v4) != 1)
    {
      v35 = v38;
      sub_242D39C68(v31 + v30, v38, type metadata accessor for Layout);
      sub_242F03720();
      sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
      v36 = sub_242F04EE0();
      sub_242D39AFC(v35, type metadata accessor for Layout);
      sub_242D39AFC(v32, type metadata accessor for Layout);
      sub_242C6D138(v31, &qword_27ECF2F98);
      if ((v36 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    sub_242D39AFC(v32, type metadata accessor for Layout);
    goto LABEL_14;
  }

  if (v22((v31 + v30), 1, v4) != 1)
  {
LABEL_14:
    v23 = v31;
    goto LABEL_15;
  }

  sub_242C6D138(v31, &qword_27ECF2F98);
LABEL_19:
  if (*(v27 + *(v28 + 28)) == *(v41 + *(v28 + 28)))
  {
    v33 = *(v27 + *(v28 + 32)) ^ *(v41 + *(v28 + 32)) ^ 1;
    return v33 & 1;
  }

LABEL_16:
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_242D39100(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_242D1CB90(a1, v5, v1 + v4, v6);
}

uint64_t sub_242D391AC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_242D1DB74(a1, v4, v5);
}

uint64_t sub_242D3922C(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = (result + 64);
    do
    {
      v5 = v3;
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *(v4 - 3);
      v9 = *v4;
      v10 = *(v4 - 4);
      v11 = v8;
      v12 = v6;
      v13 = v7;
      v14 = v9;
      sub_242CF6A84(v10, v8, v6, v7, v9);
      sub_242D20B28(&v10);
      result = sub_242CF6AD8(v10, v11, v12, v13, v14);
      if (v1)
      {
        break;
      }

      v3 = v5 - 1;
      v4 += 40;
    }

    while (v5);
  }

  return result;
}

void sub_242D392D8(uint64_t *a1, unint64_t a2, int a3)
{
  v56 = a3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008);
  v5 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3020);
  MEMORY[0x28223BE20](v7 - 8);
  v53 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - v10;
  v66 = type metadata accessor for Component();
  v68 = *(v66 - 8);
  v12 = MEMORY[0x28223BE20](v66);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v52 = &v49 - v16;
  MEMORY[0x28223BE20](v15);
  v51 = &v49 - v17;
  v18 = a1[1];
  v65 = *a1;
  if (qword_27ECEF4D0 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v19 = sub_242F039D0();
    __swift_project_value_buffer(v19, qword_27ED5D310);

    v20 = sub_242F039B0();
    v21 = sub_242F05720();

    v22 = os_log_type_enabled(v20, v21);
    v58 = a2;
    v64 = v11;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v69[0] = v24;
      *v23 = 136315138;
      if (v18)
      {
        v70[0] = v65;
        v70[1] = v18;

        v25 = sub_242F04F90();
        v27 = v26;
      }

      else
      {
        v27 = 0x8000000242F5A160;
        v25 = 0xD00000000000002DLL;
      }

      v28 = sub_242C8FD38(v25, v27, v69);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_242C53000, v20, v21, "Updating carousels active item to %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v24);
      MEMORY[0x245D287D0](v24, -1, -1);
      MEMORY[0x245D287D0](v23, -1, -1);

      a2 = v58;
    }

    else
    {
    }

    if (!(a2 >> 62))
    {
      v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        return;
      }

      goto LABEL_10;
    }

    v11 = sub_242F059B0();
    if (!v11)
    {
      break;
    }

LABEL_10:
    v29 = 0;
    v60 = a2 & 0xFFFFFFFFFFFFFF8;
    v61 = a2 & 0xC000000000000001;
    v59 = a2 + 32;
    v50 = (v5 + 56);
    v57 = v11;
    while (v61)
    {
      v30 = MEMORY[0x245D270D0](v29, a2);
      v31 = __OFADD__(v29, 1);
      v32 = v29 + 1;
      if (v31)
      {
        goto LABEL_40;
      }

LABEL_16:
      v63 = v32;
      v33 = *(*v30 + 144);
      swift_beginAccess();
      v34 = v30;
      v35 = *(v30 + v33);
      v36 = *(v35 + 16);
      if (v36)
      {
        v62 = v34;
        v67 = v35 + ((*(v68 + 80) + 32) & ~*(v68 + 80));

        a2 = 0;
        while (1)
        {
          if (a2 >= *(v35 + 16))
          {
            goto LABEL_41;
          }

          sub_242D39B5C(v67 + *(v68 + 72) * a2, v14, type metadata accessor for Component);
          v37 = *&v14[*(v66 + 36)];
          if (!*(v37 + 16))
          {
            break;
          }

          v5 = v14;
          v11 = v18;
          v38 = type metadata accessor for Slot();
          v39 = v64;
          sub_242CA321C(v37 + *(v38 + 36) + ((*(*(v38 - 8) + 80) + 32) & ~*(*(v38 - 8) + 80)), v64, &qword_27ECF0B08);
          v40 = type metadata accessor for Instrument();
          if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
          {
            sub_242C6D138(v39, &qword_27ECF0B08);
            v41 = 0xEB00000000746567;
            v42 = 0x6469577974706D45;
          }

          else
          {
            memcpy(v70, (v39 + *(v40 + 20)), sizeof(v70));
            sub_242CF6BA4(v70, v69);
            sub_242D39AFC(v39, type metadata accessor for Instrument);
            memcpy(v69, v70, sizeof(v69));
            v42 = Instrument.Kind.name.getter();
            v41 = v43;
            sub_242CF6C60(v70);
            v14 = v5;
            if (!v41)
            {
              break;
            }
          }

          if (v18)
          {
            v14 = v5;
            if (v42 == v65 && v41 == v18)
            {
              goto LABEL_35;
            }

            v44 = sub_242F06110();

            if (v44)
            {
              goto LABEL_36;
            }

            goto LABEL_20;
          }

          v14 = v5;
LABEL_19:

LABEL_20:
          ++a2;
          sub_242D39AFC(v14, type metadata accessor for Component);
          if (v36 == a2)
          {

            goto LABEL_37;
          }
        }

        if (!v18)
        {

LABEL_35:

LABEL_36:

          v45 = v52;
          sub_242D39C68(v14, v52, type metadata accessor for Component);
          v46 = v51;
          sub_242D39C68(v45, v51, type metadata accessor for Component);
          v47 = v54;
          sub_242CA321C(v46, v54, &qword_27ECF23E8);
          v48 = v53;
          sub_242CF6B3C(v47, v53, &qword_27ECF23E8);
          (*v50)(v48, 0, 2, v55);
          sub_242D32994(v48, v56 & 1);

          sub_242C6D138(v48, &qword_27ECF3020);
          sub_242D39AFC(v46, type metadata accessor for Component);
LABEL_37:
          v11 = v57;
          a2 = v58;
          goto LABEL_12;
        }

        goto LABEL_19;
      }

LABEL_12:
      v29 = v63;
      if (v63 == v11)
      {
        return;
      }
    }

    if (v29 >= *(v60 + 16))
    {
      goto LABEL_42;
    }

    v30 = *(v59 + 8 * v29);

    v31 = __OFADD__(v29, 1);
    v32 = v29 + 1;
    if (!v31)
    {
      goto LABEL_16;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }
}

uint64_t sub_242D39AFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_242D39B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242D39C68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_242D39CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Zone();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_242D39D34(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = [objc_opt_self() standardUserDefaults];
  if (v2)
  {
    v6[0] = v1;
    v6[1] = v2;
    v4 = sub_242F06100();
    sub_242D3E0BC(v6);
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_242F04F00();
  [v3 setObject:v4 forKey:v5];

  swift_unknownObjectRelease();
}

void sub_242D39DFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = [objc_opt_self() standardUserDefaults];
  if (v2)
  {
    v6[0] = v1;
    v6[1] = v2;
    v4 = sub_242F06100();
    sub_242D3E0BC(v6);
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_242F04F00();
  [v3 setObject:v4 forKey:v5];

  swift_unknownObjectRelease();
}

unint64_t sub_242D39EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for Component();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_242D3A00C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Component();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_242D3A0E4(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_242D3A188(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t sub_242D3A26C()
{
  result = qword_27ECF3038;
  if (!qword_27ECF3038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3038);
  }

  return result;
}

unint64_t sub_242D3A370()
{
  result = qword_27ECF3040;
  if (!qword_27ECF3040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3040);
  }

  return result;
}

unint64_t sub_242D3A3C4()
{
  result = qword_27ECF3048;
  if (!qword_27ECF3048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3048);
  }

  return result;
}

unint64_t sub_242D3A418()
{
  result = qword_27ECF3050;
  if (!qword_27ECF3050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3050);
  }

  return result;
}

uint64_t keypath_get_104Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_242CA321C(v4 + v5, a3, &qword_27ECF2EC8);
}

void sub_242D3A544()
{
  sub_242D3B1E4(319, &qword_27ECF3068, &qword_27ECF2FA0);
  if (v0 <= 0x3F)
  {
    sub_242D3B1E4(319, &qword_27ECF3070, &qword_27ECF2FA8);
    if (v1 <= 0x3F)
    {
      sub_242D3B30C(319, &qword_27ECF3078, type metadata accessor for RequestContentModel);
      if (v2 <= 0x3F)
      {
        sub_242D3B194();
        if (v3 <= 0x3F)
        {
          sub_242D3B1E4(319, &qword_27ECF3088, &qword_27ECF2FD0);
          if (v4 <= 0x3F)
          {
            sub_242D3B1E4(319, &qword_27ECF3090, &qword_27ECF2FD8);
            if (v5 <= 0x3F)
            {
              sub_242D3B1E4(319, &qword_27ECF3098, &qword_27ECF2F98);
              if (v6 <= 0x3F)
              {
                sub_242D3B1E4(319, &qword_27ECF30A0, &qword_27ECF2F90);
                if (v7 <= 0x3F)
                {
                  sub_242D3B1E4(319, &qword_27ECF30A8, &qword_27ECF2F88);
                  if (v8 <= 0x3F)
                  {
                    sub_242D3B1E4(319, &qword_27ECF30B0, &qword_27ECF2F80);
                    if (v9 <= 0x3F)
                    {
                      sub_242D3B1E4(319, &qword_27ECF30B8, &qword_27ECF2FE0);
                      if (v10 <= 0x3F)
                      {
                        swift_updateClassMetadata2();
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

void sub_242D3B194()
{
  if (!qword_27ECF3080)
  {
    v0 = sub_242F03AB0();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF3080);
    }
  }
}

void sub_242D3B1E4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_242F03AB0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_242D3B260()
{
  sub_242F03720();
  if (v0 <= 0x3F)
  {
    sub_242D3B30C(319, &qword_27ECF30D0, type metadata accessor for Layout);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_242D3B30C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_242F05860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_242D3B3C8()
{
  sub_242D3B420();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_242D3B420()
{
  if (!qword_27ECF30F8)
  {
    sub_242D3B468();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF30F8);
    }
  }
}

void sub_242D3B468()
{
  if (!qword_27ECF3100)
  {
    type metadata accessor for Component();
    sub_242F03720();
    v0 = type metadata accessor for TaggedValue();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF3100);
    }
  }
}

uint64_t sub_242D3B510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_242F03720();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_242D3B630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_242D3B6A0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, unint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, void *a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, unint64_t a43, unint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  v65 = a65 >> 60;
  if ((a65 >> 60) > 3)
  {
    switch(v65)
    {
      case 4:
        goto LABEL_19;
      case 6:
        goto LABEL_18;
      case 7:

        sub_242D3D334(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
        break;
    }
  }

  else
  {
    if (v65 == 1)
    {
      sub_242D3BB2C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
LABEL_19:

      return;
    }

    if (v65 != 2)
    {
      if (v65 != 3)
      {
        return;
      }

LABEL_18:

      goto LABEL_19;
    }

    sub_242D3CF80(a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
  }
}

void sub_242D3BB2C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, void *a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, unint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, unint64_t a43, unint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  v65 = (a65 >> 57) & 7;
  if (((a65 >> 57) & 7) <= 2)
  {
    if (!v65)
    {

LABEL_20:

      return;
    }

    if (v65 != 1)
    {
      if (v65 == 2)
      {
      }

      return;
    }

LABEL_19:

    goto LABEL_20;
  }

  switch(v65)
  {
    case 3:

      sub_242D3C034(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
      break;
    case 4:
      goto LABEL_19;
    case 5:

      sub_242D3C664(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
      break;
  }
}

uint64_t sub_242D3C034(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  result = a31;
  switch(a68 >> 60)
  {
    case 0uLL:
    case 1uLL:
    case 3uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:

      sub_242C7CEB0(a13, a14, a15);
      sub_242C7CEB0(a16, a17, a18);
      sub_242C7CEB0(a19, a20, a21);

      sub_242C94844(a31, a32, a33);

      goto LABEL_3;
    case 2uLL:

      sub_242C7CEB0(a9, a10, a11);
      sub_242C7CEB0(a12, a13, a14);

      result = sub_242D3C4A8(a15, a16);
      break;
    case 4uLL:
      sub_242D3C4F8(a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
      sub_242C7CEB0(a45, a46, a47);
      sub_242C7CEB0(a48, a49, a50);
      sub_242C7CEB0(a51, a52, a53);
      sub_242C7CEB0(a54, a55, a56);
      sub_242C7CEB0(a57, a58, a59);
      sub_242C7CEB0(a60, a61, a62);
      sub_242C7CEB0(a63, a64, a65);
      sub_242C7CEB0(a66, a67, a68);
LABEL_3:

      break;
    case 5uLL:

      result = sub_242C55484(a14, a15, a16);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_242D3C4A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_242D3C4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  if (a5)
  {

    sub_242C7CEB0(a13, a14, a15);
    sub_242C7CEB0(a16, a17, a18);
    sub_242C7CEB0(a19, a20, a21);

    sub_242C94844(a31, a32, a33);
  }

  return result;
}

uint64_t sub_242D3C664(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, unint64_t a7, uint64_t a8, uint64_t a9, void *a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, unint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33, unint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, unint64_t a43, unint64_t a44)
{
  switch((a44 >> 52) & 8 | (a34 >> 62) | (a44 >> 45) & 4)
  {
    case 0uLL:

      sub_242C6CEC0(a2);
      sub_242D3CBB8(a5, a6, a7, a8, a9, a10, a11);
      sub_242D3CBFC(a13, a14, a15, a16, a17, a18, a19, a20, a21);

      sub_242C6CEC0(a24);
      sub_242D3CBB8(a27, a28, a29, a30, a31, a32, a33);
      v62 = a43;
      v47 = a35;
      v48 = a36;
      v49 = a37;
      v50 = a38;
      v51 = a39;
      v52 = a40;
      v53 = a41;
      v54 = a42;
      goto LABEL_3;
    case 1uLL:
      sub_242D3CBDC(a8, a9, a10, a11);
      goto LABEL_13;
    case 2uLL:
      sub_242D3CBB8(result, a2, a3, a4, a5, a6, a7);

      return sub_242D3CC90(a8, a9, a10, a11, a12);
    case 3uLL:
    case 5uLL:
    case 0xCuLL:
    case 0xDuLL:

      sub_242C6CEC0(a2);
      sub_242D3CBB8(a5, a6, a7, a8, a9, a10, a11);
      v62 = a21;
      v47 = a13;
      v48 = a14;
      v49 = a15;
      v50 = a16;
      v51 = a17;
      v52 = a18;
      v53 = a19;
      v54 = a20;
LABEL_3:

      return sub_242D3CBFC(v47, v48, v49, v50, v51, v52, v53, v54, v62);
    case 4uLL:

      return sub_242D3CBB8(result, a2, a3, a4, a5, a6, a7);
    case 6uLL:
      v64 = a44 & 0xFF7F7FFFFFFFFFFFLL;
      v63 = a34 & 0x3FFFFFFFFFFFFFFFLL;

      return sub_242D3CD20(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v63, a35, a36, a37, a38, a39, a40, a41, a42, a43, v64);
    case 7uLL:

      return sub_242C7CEB0(a6, a7, a8);
    case 8uLL:
    case 9uLL:
    case 0xAuLL:

      return sub_242D3CF38(a18, a19, a20, a21);
    case 0xBuLL:
LABEL_13:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_242D3CBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, unint64_t a7)
{
  if (((a7 >> 38) & 3) == 2)
  {
    return sub_242D3CBDC(a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_242D3CBDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_242C7CEB0(a2, a3, a4);
  }

  return result;
}

uint64_t sub_242D3CBFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, unint64_t a9)
{
  if (result)
  {

    return sub_242D3CBB8(a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t sub_242D3CC90(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if ((a5 >> 62) <= 1)
  {
  }

  if (a5 >> 62 == 2)
  {
  }

  return result;
}

uint64_t sub_242D3CD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, unint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, unint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, unint64_t a44)
{
  if ((a44 & 0x8000000000000000) != 0)
  {

    sub_242C6CEC0(a3);
    sub_242D3CBB8(a6, a7, a8, a9, a10, a11, a12);
    sub_242D3CBFC(a14, a15, a16, a17, a18, a19, a20, a21, a22);

    sub_242C6CEC0(a25);
    sub_242D3CBB8(a28, a29, a30, a31, a32, a33, a34);
    v60 = a44;
    a13 = a36;
    v50 = a37;
    v51 = a38;
    v52 = a39;
    v53 = a40;
    v48 = a41;
    v54 = a42;
    v55 = a43;
  }

  else
  {

    sub_242C6CEC0(a2);
    sub_242D3CBB8(a5, a6, a7, a8, a9, a10, a11);
    v48 = a18;
    v60 = a21;
    v50 = a14;
    v51 = a15;
    v52 = a16;
    v53 = a17;
    v54 = a19;
    v55 = a20;
  }

  return sub_242D3CBFC(a13, v50, v51, v52, v53, v48, v54, v55, v60);
}

uint64_t sub_242D3CF38(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result)
  {
  }

  return result;
}

void sub_242D3CF80(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t a10, char a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a26 != 1)
  {
    sub_242C7F724(a1, a2, a3, a4, a5);
    sub_242C7F724(a7, a8, a9, a10, a11);
    sub_242C7F724(a13, a14, a15, a16, a17);
    sub_242C7F724(a19, a20, a21, a22, a23);

    sub_242D3D21C(a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
  }
}

void sub_242D3D21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a2)
  {

    sub_242C7CEB0(a25, a26, a27);
    sub_242C7CEB0(a28, a29, a30);

    sub_242C7CEB0(a31, a32, a33);
  }
}

void sub_242D3D334(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, char a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, char a19, uint64_t a20, void *a21, uint64_t a22, void *a23, uint64_t a24, char a25)
{
  if (a2)
  {

    sub_242C7F724(a3, a4, a5, a6, a7);
    sub_242C7F724(a9, a10, a11, a12, a13);

    sub_242D3D47C(a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
  }
}

void sub_242D3D47C(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t a10, char a11)
{
  if ((~a5 & 0xFE) != 0)
  {
    sub_242C7F724(a1, a2, a3, a4, a5);

    sub_242C7F724(a7, a8, a9, a10, a11);
  }
}

uint64_t sub_242D3D4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v15 != 2)
    {
      sub_242CD5324(a1, a2, a3, a4, a5);
      sub_242CD53F8(a6, a7, a8, a9, a10);
      sub_242CD54A4(a11, a12);
      goto LABEL_11;
    }

    sub_242CD5324(a1, a2, a3, a4, a5);
    sub_242CD54A4(a6, a7);
    sub_242D3D654(a9, a10);
  }

  else
  {
    if (!v15)
    {
      sub_242CD5324(a1, a2, a3, a4, a5);
      sub_242CD54A4(a6, a7);
      sub_242D3D654(a9, a10);
LABEL_11:
    }

    sub_242CD5324(a1, a2, a3, a4, a5);
    sub_242CD54A4(a6, a7);
  }
}

uint64_t sub_242D3D654(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_242D3D698()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Zone() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for Component() - 8);
  v8 = *(v0 + v6);
  v9 = v0 + ((v6 + *(v7 + 80) + 8) & ~*(v7 + 80));
  v10 = *(v9 + *(v7 + 64));

  return sub_242D23D2C(v0 + v2, v0 + v5, v8, v9, v10);
}

uint64_t sub_242D3D804()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_242D3D8B8()
{
  v1 = *(type metadata accessor for Zone() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + v3);
  v5 = *(v0 + 16);
  v6 = *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8);
  v7 = v0 + (((v3 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_242D2883C(v5, v0 + v2, v4, v6, v8, v9);
}

uint64_t objectdestroy_295Tm()
{
  v1 = *(type metadata accessor for PopoverModel(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_242F03720();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + *(type metadata accessor for Instrument() + 20);
  v22 = *(v6 + 464);
  v23 = *(v6 + 480);
  v20 = *(v6 + 432);
  v21 = *(v6 + 448);
  v18 = *(v6 + 400);
  v19 = *(v6 + 416);
  v16 = *(v6 + 368);
  v17 = *(v6 + 384);
  v14 = *(v6 + 336);
  v15 = *(v6 + 352);
  v12 = *(v6 + 304);
  v13 = *(v6 + 320);
  v10 = *(v6 + 272);
  v11 = *(v6 + 288);
  v8 = *(v6 + 240);
  v9 = *(v6 + 256);
  sub_242D3B6A0(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72), *(v6 + 80), *(v6 + 88), *(v6 + 96), *(v6 + 104), *(v6 + 112), *(v6 + 120), *(v6 + 128), *(v6 + 136), *(v6 + 144), *(v6 + 152), *(v6 + 160), *(v6 + 168), *(v6 + 176), *(v6 + 184), *(v6 + 192), *(v6 + 200), *(v6 + 208), *(v6 + 216), *(v6 + 224), *(v6 + 232), v8, *(&v8 + 1), v9, *(&v9 + 1), v10, *(&v10 + 1), v11, *(&v11 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1), v17, *(&v17 + 1), v18, *(&v18 + 1), v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, SBYTE8(v23), *(v6 + 496));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_242D3DC24(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_242D3DC6C()
{
  result = qword_27ECFC060;
  if (!qword_27ECFC060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ECFC610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC060);
  }

  return result;
}

unint64_t sub_242D3DCD0()
{
  result = qword_27ECFC600;
  if (!qword_27ECFC600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECFC600);
  }

  return result;
}

uint64_t objectdestroy_305Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_242D3DE10(uint64_t a1)
{
  if ((*(a1 + 512) >> 3) > 0x80000000)
  {
    return -(*(a1 + 512) >> 3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242D3DE48(uint64_t a1)
{
  if (((*(a1 + 536) >> 57) & 7u) <= 5)
  {
    return (*(a1 + 536) >> 57) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_242D3DE8C()
{
  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
  return sub_242F04EE0() & 1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_242D3DFC0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for ClusterTransitionCoordinator.ComponentTransition(0) - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_242D2C624(v5, v0 + v2, v6);
}

uint64_t objectdestroy_345Tm()
{

  sub_242D1162C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  return MEMORY[0x2821FE8E8](v0, 121, 7);
}

uint64_t String.capitalizedFirstLetter.getter(uint64_t a1, unint64_t a2)
{

  sub_242CD5FD0(1);

  sub_242D3E450();
  v4 = sub_242F058A0();

  sub_242D3E4A4(1uLL, a1, a2);

  sub_242D3E554();
  sub_242F05040();

  return v4;
}

uint64_t String.sha256.getter()
{
  v0 = sub_242F04F80();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242F04F70();
  v4 = sub_242F04F40();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    return 0;
  }

  countAndFlagsBits = Data.sha256()()._countAndFlagsBits;
  sub_242C6D208(v4, v6);
  return countAndFlagsBits;
}

unint64_t sub_242D3E450()
{
  result = qword_27ECF31E0;
  if (!qword_27ECF31E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF31E0);
  }

  return result;
}

unint64_t sub_242D3E4A4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_242F05020();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_242F05140();
}

unint64_t sub_242D3E554()
{
  result = qword_27ECF31E8;
  if (!qword_27ECF31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF31E8);
  }

  return result;
}

BOOL Array<A>.hasDuplicates.getter()
{
  sub_242F053E0();

  swift_getWitnessTable();
  sub_242F05530();
  v0 = sub_242F05500();

  return v0 != sub_242F05380();
}

uint64_t IterateDirection.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

uint64_t Array.nextElementByLooping(from:direction:where:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a7;
  v13 = sub_242F05860();
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = *a2;
  if (sub_242F05380() <= a1)
  {
    goto LABEL_9;
  }

  LOBYTE(v42) = v16;
  v17 = sub_242D3EA70(a1, &v42, a5);
  v19 = v18;
  v44 = v17;
  *&v40 = v18;
  sub_242F053E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31F0);
  swift_getWitnessTable();
  sub_242D3EB9C();
  sub_242F04EB0();
  v39 = v42;
  v40 = v42;
  v41 = v43;
  sub_242F05900();
  WitnessTable = swift_getWitnessTable();
  v36 = a3;
  v37 = a4;
  sub_242F05180();
  swift_unknownObjectRelease();
  v21 = *(a6 - 8);
  v22 = *(v21 + 48);
  if (v22(v15, 1, a6) != 1)
  {

    v32 = v38;
    (*(v21 + 32))(v38, v15, a6);
    return (*(v21 + 56))(v32, 0, 1, a6);
  }

  if (v19 < 0)
  {
    __break(1u);
LABEL_9:
    result = sub_242F05C60();
    __break(1u);
    return result;
  }

  *&v39 = WitnessTable;
  v23 = sub_242F053F0();
  v25 = v24;
  v27 = v26;
  v33 = 0;
  v28 = v15;
  v30 = v29;

  *&v42 = v23;
  *(&v42 + 1) = v25;
  *&v43 = v27;
  *(&v43 + 1) = v30;
  sub_242F05180();
  swift_unknownObjectRelease();
  result = (v22)(v28, 1, a6);
  if (result != 1)
  {
    return (*(v34 + 8))(v28, v35);
  }

  return result;
}

uint64_t sub_242D3EA70(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v4 = result;
  if (*a2)
  {
    sub_242F053E0();

    swift_getWitnessTable();
    v5 = sub_242F051D0();
    result = sub_242F05380();
    if (!__OFSUB__(result, v4))
    {
      if (result)
      {
        if (result != -1 || v4 != 0x7FFFFFFFFFFFFFFFLL)
        {
          return v5;
        }

        goto LABEL_17;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__OFADD__(result, 1))
  {
    goto LABEL_14;
  }

  result = sub_242F05380();
  if (!result)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v4 != 0x7FFFFFFFFFFFFFFFLL || result != -1)
  {

    return a3;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_242D3EB9C()
{
  result = qword_27ECF31F8;
  if (!qword_27ECF31F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF31F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF31F8);
  }

  return result;
}

uint64_t Array.nextElementByLooping(from:direction:)(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (sub_242F05380() <= a1)
  {
    result = sub_242F05C60();
    __break(1u);
  }

  else
  {
    v7 = v5;
    sub_242D3EA70(a1, &v7, a3);
    sub_242F05400();
  }

  return result;
}

unint64_t sub_242D3ECEC()
{
  result = qword_27ECF3200;
  if (!qword_27ECF3200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3200);
  }

  return result;
}

uint64_t Instrument.RemainingRangeTextConfiguration.restoreAssets(from:)(uint64_t a1)
{
  v4 = *(v1 + 296);
  v5 = sub_242CE6D94(MEMORY[0x277D84F90]);
  v9[2] = a1;
  v6 = sub_242C8A810(v5, sub_242C8B824, v9, v4);
  if (v2)
  {
  }

  v8 = v6;

  *(v1 + 296) = v8;
  return result;
}

uint64_t Instrument.GaugeConfiguration.style.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x228uLL);
  memcpy(a1, v1, 0x228uLL);
  return sub_242D48070(__dst, v4);
}

void *Instrument.GaugeConfiguration.style.setter(const void *a1)
{
  memcpy(v4, v1, 0x228uLL);
  sub_242D480A8(v4);
  return memcpy(v1, a1, 0x228uLL);
}

uint64_t Instrument.GaugeConfiguration.visibilityConfiguration.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 560) = v2;
  return result;
}

void *Instrument.GaugeConfiguration.init(style:rendersLocally:visibilityConfiguration:)@<X0>(void *__src@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  result = memcpy(a4, __src, 0x228uLL);
  *(a4 + 552) = a2;
  *(a4 + 560) = v6;
  return result;
}

uint64_t sub_242D3EFC8()
{
  v1 = 0x4C737265646E6572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C797473;
  }
}

uint64_t sub_242D3F030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242D4B1B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242D3F058(uint64_t a1)
{
  v2 = sub_242D480D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D3F094(uint64_t a1)
{
  v2 = sub_242D480D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.GaugeConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3208);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  memcpy(v14, v1, 0x228uLL);
  v15 = *(v1 + 552);
  v10 = *(v1 + 560);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D48070(v14, v13);
  sub_242D480D8();
  sub_242F064C0();
  memcpy(v13, v14, sizeof(v13));
  v17 = 0;
  sub_242D4812C();
  sub_242F05F20();
  if (v2)
  {
    memcpy(v12, v13, sizeof(v12));
    sub_242D480A8(v12);
  }

  else
  {
    v8 = v10;
    memcpy(v12, v13, sizeof(v12));
    sub_242D480A8(v12);
    LOBYTE(v11) = 1;
    sub_242F05ED0();
    v11 = v8;
    v16 = 2;
    sub_242D48180();

    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Instrument.GaugeConfiguration.hash(into:)(__int128 *a1)
{
  v2 = *(v1 + 560);
  Instrument.GaugeStyle.hash(into:)(a1);
  sub_242F063B0();
  result = MEMORY[0x245D279A0](*(v2 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    result = VisibilityRule.hash(into:)();
    v5 = v4 - 1;
    if (v5)
    {
      v6 = v2 + 168;
      do
      {
        result = VisibilityRule.hash(into:)();
        v6 += 136;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t Instrument.GaugeConfiguration.hashValue.getter()
{
  v1 = *(v0 + 560);
  sub_242F06390();
  Instrument.GaugeStyle.hash(into:)(v6);
  sub_242F063B0();
  MEMORY[0x245D279A0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    VisibilityRule.hash(into:)();
    v3 = v2 - 1;
    if (v3)
    {
      v4 = v1 + 168;
      do
      {
        VisibilityRule.hash(into:)();
        v4 += 136;
        --v3;
      }

      while (v3);
    }
  }

  return sub_242F063E0();
}

uint64_t Instrument.GaugeConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3228);
  v5 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v7 = &v14 - v6;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D480D8();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v8 = v5;
  v9 = a2;
  v21[575] = 0;
  sub_242D481D4();
  v10 = v15;
  sub_242F05E00();
  memcpy(v21, v20, 0x228uLL);
  v17[0] = 1;
  v11 = v8;
  LOBYTE(v8) = sub_242F05DB0();
  v21[574] = 2;
  sub_242D48228();
  sub_242F05E00();
  (*(v11 + 8))(v7, v10);
  v12 = v19;
  memcpy(v16, v21, 0x228uLL);
  LOBYTE(v16[69]) = v8 & 1;
  v16[70] = v19;
  memcpy(v9, v16, 0x238uLL);
  sub_242D4827C(v16, v17);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  memcpy(v17, v21, 0x228uLL);
  v17[552] = v8 & 1;
  v18 = v12;
  return sub_242D482B4(v17);
}

uint64_t sub_242D3F7C0()
{
  v1 = *(v0 + 560);
  sub_242F06390();
  Instrument.GaugeStyle.hash(into:)(v6);
  sub_242F063B0();
  MEMORY[0x245D279A0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    VisibilityRule.hash(into:)();
    v3 = v2 - 1;
    if (v3)
    {
      v4 = v1 + 168;
      do
      {
        VisibilityRule.hash(into:)();
        v4 += 136;
        --v3;
      }

      while (v3);
    }
  }

  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.name.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_242D3DE48(__dst);
  if (v1 <= 2)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        sub_242C65548(__dst);
        return 0x7247206567616D49;
      }

      else
      {
        sub_242C65548(__dst);
        return 0x6C6F626D7953;
      }
    }

    else
    {
      sub_242C65548(__dst);
      return 0x72616C7563726943;
    }
  }

  else if (v1 > 4)
  {
    if (v1 == 5)
    {
      sub_242C65548(__dst);
      return 0x73736572676F7250;
    }

    else
    {
      return 0xD000000000000017;
    }
  }

  else if (v1 == 3)
  {
    sub_242C65548(__dst);
    return 1954047316;
  }

  else
  {
    sub_242C65548(__dst);
    return 0x614C206570616853;
  }
}

uint64_t Instrument.GaugeStyle.description.getter()
{
  memcpy(__dst, v0, 0x228uLL);
  v1 = sub_242D3DE48(__dst);
  if (v1 <= 2)
  {
    if (v1)
    {
      if (v1 != 1)
      {
        sub_242C65548(__dst);
        return 0x6C6F626D7953;
      }

      v8 = *sub_242C65548(__dst);
      *v49 = 0;
      *&v49[8] = 0xE000000000000000;
      if (v8 == 86)
      {
        v9 = 0xEE006567616D6920;
        v10 = 0x746E6174736E6F43;
      }

      else
      {
        LOBYTE(v50) = v8;
        v24 = InstrumentDataIdentifier.rawValue.getter();
        v26 = sub_242EFCF00(v24, v25);
        v9 = v27;

        v10 = v26;
      }

      MEMORY[0x245D26660](v10, v9);

      v4 = *v49;
      v5 = *&v49[8];
      v6 = 0xEB0000000070756FLL;
      v7 = 0x7247206567616D49;
    }

    else
    {
      LOBYTE(v50) = *sub_242C65548(__dst);
      v13 = InstrumentDataIdentifier.rawValue.getter();
      v15 = sub_242EFCF00(v13, v14);
      v17 = v16;

      MEMORY[0x245D26660](v15, v17);

      MEMORY[0x245D26660](41, 0xE100000000000000);
      v4 = 40;
      v5 = 0xE100000000000000;
      v6 = 0xE800000000000000;
      v7 = 0x72616C7563726943;
    }
  }

  else if (v1 > 4)
  {
    if (v1 != 5)
    {
      return 0xD000000000000017;
    }

    v11 = sub_242C65548(__dst);
    memcpy(v49, v11, 0x164uLL);
    v4 = ProgressBarType.description.getter();
    v5 = v12;
    v6 = 0xEC00000072614220;
    v7 = 0x73736572676F7250;
  }

  else if (v1 == 3)
  {
    v2 = sub_242C65548(__dst);
    v50 = 40;
    v51 = 0xE100000000000000;
    memcpy(v49, v2, sizeof(v49));
    v3 = TextDataType.description.getter();
    MEMORY[0x245D26660](v3);

    MEMORY[0x245D26660](41, 0xE100000000000000);
    v4 = v50;
    v5 = v51;
    v6 = 0xE400000000000000;
    v7 = 1954047316;
  }

  else
  {
    v19 = sub_242C65548(__dst);
    v20 = *(v19 + 8);
    v21 = *(v19 + 32);
    v22 = *(v19 + 36);
    *v49 = *v19;
    v49[8] = v20;
    *&v49[16] = *(v19 + 16);
    *&v49[32] = v21;
    v49[36] = v22;
    v4 = ShapeLayerConfiguration.description.getter();
    v5 = v23;
    v6 = 0xEB00000000726579;
    v7 = 0x614C206570616853;
  }

  *v49 = v7;
  *&v49[8] = v6;

  MEMORY[0x245D26660](95, 0xE100000000000000);

  v29 = *v49;
  v28 = *&v49[8];

  v30 = sub_242CD5FD0(1);
  v32 = v31;
  v34 = v33;
  v36 = v35;

  *v49 = v30;
  *&v49[8] = v32;
  *&v49[16] = v34;
  *&v49[24] = v36;
  sub_242D3E450();
  v37 = sub_242F058A0();
  v39 = v38;

  v40 = sub_242D3E4A4(1uLL, v4, v5);
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v54 = v37;
  v55 = v39;
  v50 = v40;
  v51 = v42;
  v52 = v44;
  v53 = v46;
  sub_242D3E554();
  sub_242F05040();

  v47 = v54;
  v48 = v55;
  *v49 = v29;
  *&v49[8] = v28;

  MEMORY[0x245D26660](v47, v48);

  return *v49;
}

uint64_t Instrument.GaugeStyle.rawValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_242D3DE48(__dst);
  if (v1 <= 2)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        sub_242C65548(__dst);
        return 0x6F72476567616D69;
      }

      else
      {
        sub_242C65548(__dst);
        return 0x6C6F626D7973;
      }
    }

    else
    {
      sub_242C65548(__dst);
      return 0x72616C7563726963;
    }
  }

  else if (v1 > 4)
  {
    if (v1 == 5)
    {
      sub_242C65548(__dst);
      return 0x73736572676F7270;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else if (v1 == 3)
  {
    sub_242C65548(__dst);
    return 0x6D656C4574786574;
  }

  else
  {
    sub_242C65548(__dst);
    return 0x79614C6570616873;
  }
}

_BYTE *Instrument.GaugeStyle.CircularConfiguration.init(dataIdentifier:range:iconName:minLabel:minLabelColor:maxLabel:maxLabelColor:tintColors:backgroundTintColors:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, __int128 a12, uint64_t a13)
{
  *a9 = *result;
  *(a9 + 8) = a10;
  *(a9 + 16) = a11;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a12;
  *(a9 + 96) = a13;
  return result;
}

uint64_t Instrument.GaugeStyle.CircularConfiguration.iconName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Instrument.GaugeStyle.CircularConfiguration.minLabel.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Instrument.GaugeStyle.CircularConfiguration.maxLabel.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t Instrument.GaugeStyle.CircularConfiguration.backgroundTintColors.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_242D400A8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E65644961746164;
    v6 = 0x656D614E6E6F6369;
    if (a1 != 2)
    {
      v6 = 0x6C6562614C6E696DLL;
    }

    if (a1)
    {
      v5 = 0x65676E6172;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6C6562614C78616DLL;
    v2 = 0x6F6C6F43746E6974;
    if (a1 != 7)
    {
      v2 = 0xD000000000000014;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6C6562614C6E696DLL;
    if (a1 != 4)
    {
      v3 = 0x6C6562614C78616DLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_242D401F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242D4B2D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242D4021C(uint64_t a1)
{
  v2 = sub_242D482E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D40258(uint64_t a1)
{
  v2 = sub_242D482E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.GaugeStyle.CircularConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3240);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 2);
  v10 = *(v1 + 3);
  v25 = *(v1 + 4);
  v26 = v10;
  v11 = *(v1 + 5);
  v23 = *(v1 + 6);
  v24 = v11;
  v12 = *(v1 + 7);
  v13 = *(v1 + 8);
  v14 = *(v1 + 10);
  v21 = *(v1 + 9);
  v22 = v12;
  v19 = v14;
  v20 = v13;
  v15 = *(v1 + 12);
  v18 = *(v1 + 11);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D482E4();
  sub_242F064C0();
  LOBYTE(v28) = v7;
  v30 = 0;
  sub_242C8AC28();
  v16 = v27;
  sub_242F05F20();
  if (!v16)
  {
    v27 = v15;
    v28 = v8;
    v29 = v9;
    v30 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0878);
    sub_242C953C8(&qword_27ECF0880);
    sub_242F05F20();
    LOBYTE(v28) = 2;
    sub_242F05EC0();
    LOBYTE(v28) = 3;
    sub_242F05EC0();
    v28 = v22;
    v30 = 4;
    sub_242C7C594();
    sub_242F05F20();
    LOBYTE(v28) = 5;
    sub_242F05EC0();
    v28 = v19;
    v30 = 6;
    sub_242F05F20();
    v28 = v18;
    v30 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0830);
    sub_242C94720(&qword_27ECF0838, sub_242C7C594);
    sub_242F05F20();
    v28 = v27;
    v30 = 8;
    sub_242F05F20();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Instrument.GaugeStyle.CircularConfiguration.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *(v0 + 11);
  v4 = *(v0 + 12);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  sub_242C9457C(v1, v2);
  sub_242F04DD0();
  sub_242F04DD0();
  sub_242F04720();
  sub_242F04DD0();
  sub_242F04720();
  MEMORY[0x245D279A0](*(v3 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v3 + 32;
    do
    {
      v6 += 8;

      sub_242F04720();

      --v5;
    }

    while (v5);
  }

  result = MEMORY[0x245D279A0](*(v4 + 16));
  v8 = *(v4 + 16);
  if (v8)
  {
    v9 = v4 + 32;
    do
    {
      v9 += 8;

      sub_242F04720();

      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t Instrument.GaugeStyle.CircularConfiguration.hashValue.getter()
{
  sub_242F06390();
  Instrument.GaugeStyle.CircularConfiguration.hash(into:)();
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.CircularConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3250);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D482E4();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  LOBYTE(v38) = 0;
  sub_242C8AC7C();
  sub_242F05E00();
  v9 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0878);
  LOBYTE(v38) = 1;
  sub_242C953C8(&qword_27ECF08A0);
  sub_242F05E00();
  v10 = v45;
  v11 = v46;
  LOBYTE(v45) = 2;
  v35 = sub_242F05DA0();
  v37 = v12;
  LOBYTE(v45) = 3;
  v13 = sub_242F05DA0();
  v36 = v14;
  v32 = v13;
  LOBYTE(v38) = 4;
  v15 = sub_242C7C540();
  v34 = 0;
  sub_242F05E00();
  v30 = v15;
  v31 = v45;
  LOBYTE(v45) = 5;
  v29 = sub_242F05DA0();
  v33 = v16;
  LOBYTE(v38) = 6;
  sub_242F05E00();
  v30 = v45;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0830);
  LOBYTE(v38) = 7;
  v18 = sub_242C94720(&qword_27ECF0858, sub_242C7C540);
  v28[2] = v17;
  v28[1] = v18;
  sub_242F05E00();
  v19 = v45;
  v58 = 8;
  sub_242F05E00();
  (*(v6 + 8))(v8, v5);
  v20 = v59;
  LOBYTE(v38) = v9;
  *(&v38 + 1) = v10;
  *&v39 = v11;
  *(&v39 + 1) = v35;
  v21 = v37;
  *&v40 = v37;
  *(&v40 + 1) = v32;
  v22 = v36;
  *&v41 = v36;
  v23 = v31;
  *(&v41 + 1) = v31;
  *&v42 = v29;
  *(&v42 + 1) = v33;
  *&v43 = v30;
  *(&v43 + 1) = v19;
  v44 = v59;
  *(a2 + 96) = v59;
  v24 = v43;
  *(a2 + 64) = v42;
  *(a2 + 80) = v24;
  v25 = v39;
  *a2 = v38;
  *(a2 + 16) = v25;
  v26 = v41;
  *(a2 + 32) = v40;
  *(a2 + 48) = v26;
  sub_242D48338(&v38, &v45);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  LOBYTE(v45) = v9;
  v46 = v10;
  v47 = v11;
  v48 = v35;
  v49 = v21;
  v50 = v32;
  v51 = v22;
  v52 = v23;
  v53 = v29;
  v54 = v33;
  v55 = v30;
  v56 = v19;
  v57 = v20;
  return sub_242D48370(&v45);
}

uint64_t sub_242D40F60()
{
  sub_242F06390();
  Instrument.GaugeStyle.CircularConfiguration.hash(into:)();
  return sub_242F063E0();
}

uint64_t sub_242D40FA4()
{
  sub_242F06390();
  Instrument.GaugeStyle.CircularConfiguration.hash(into:)();
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.Alignment.displayValue.getter()
{
  v1 = *v0;
  v2 = 0x676E696461654CLL;
  v3 = 0x676E696C69617254;
  v4 = 7368532;
  if (v1 != 3)
  {
    v4 = 0x6D6F74746F42;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7265746E6543;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t Instrument.GaugeStyle.Alignment.init(rawValue:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x40302010005uLL >> (8 * result);
  if (result >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_242D41194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6769666E6F63 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242D41218(uint64_t a1)
{
  v2 = sub_242D48790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D41254(uint64_t a1)
{
  v2 = sub_242D48790();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_242D41290()
{
  v1 = *v0;
  v2 = 0x72616C7563726963;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x73736572676F7270;
  }

  v4 = 0x6D656C4574786574;
  if (v1 != 3)
  {
    v4 = 0x79614C6570616873;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6F72476567616D69;
  if (v1 != 1)
  {
    v5 = 0x6C6F626D7973;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_242D41388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242D4B5C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242D413B0(uint64_t a1)
{
  v2 = sub_242D483A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D413EC(uint64_t a1)
{
  v2 = sub_242D483A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242D41428(uint64_t a1)
{
  v2 = sub_242D486E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D41464(uint64_t a1)
{
  v2 = sub_242D486E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242D414A0(uint64_t a1)
{
  v2 = sub_242D4849C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D414DC(uint64_t a1)
{
  v2 = sub_242D4849C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242D41528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242D415B0(uint64_t a1)
{
  v2 = sub_242D483F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D415EC(uint64_t a1)
{
  v2 = sub_242D483F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242D41628(uint64_t a1)
{
  v2 = sub_242D484F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D41664(uint64_t a1)
{
  v2 = sub_242D484F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242D416A0(uint64_t a1)
{
  v2 = sub_242D48640();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D416DC(uint64_t a1)
{
  v2 = sub_242D48640();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242D41718(uint64_t a1)
{
  v2 = sub_242D48598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D41754(uint64_t a1)
{
  v2 = sub_242D48598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.GaugeStyle.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3258);
  v81 = *(v2 - 8);
  v82 = v2;
  MEMORY[0x28223BE20](v2);
  v80 = &v68 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3260);
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4);
  v72 = &v68 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3268);
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x28223BE20](v6);
  v77 = &v68 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3270);
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x28223BE20](v8);
  v71 = &v68 - v9;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3278);
  v70 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3280);
  v83 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3288);
  v69 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v68 - v15;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3290);
  v88 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v18 = &v68 - v17;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D483A0();
  v87 = v18;
  sub_242F064C0();
  memcpy(v90, v86, 0x228uLL);
  v19 = sub_242D3DE48(v90);
  if (v19 <= 2)
  {
    v25 = v16;
    v26 = v11;
    v27 = v83;
    v28 = v84;
    v29 = v85;
    if (v19)
    {
      if (v19 == 1)
      {
        v30 = sub_242C65548(v90);
        LOBYTE(v89[0]) = 1;
        sub_242D486E8();
        v31 = v13;
        v32 = v91;
        v33 = v87;
        sub_242F05E40();
        v34 = *v30;
        v35 = *(v30 + 16);
        v36 = *(v30 + 32);
        LOBYTE(v89[3]) = *(v30 + 48);
        v89[1] = v35;
        v89[2] = v36;
        v89[0] = v34;
        sub_242D4873C();
        sub_242F05F20();
        (*(v27 + 8))(v31, v26);
        return (*(v88 + 8))(v33, v32);
      }

      else
      {
        v50 = sub_242C65548(v90);
        LOBYTE(v89[0]) = 2;
        sub_242D48640();
        v51 = v91;
        v52 = v87;
        sub_242F05E40();
        v53 = *(v50 + 16);
        v89[0] = *v50;
        v89[1] = v53;
        v54 = *(v50 + 32);
        v55 = *(v50 + 48);
        v56 = *(v50 + 64);
        LOWORD(v89[5]) = *(v50 + 80);
        v89[3] = v55;
        v89[4] = v56;
        v89[2] = v54;
        sub_242D48694();
        sub_242F05F20();
        (*(v70 + 8))(v28, v29);
        return (*(v88 + 8))(v52, v51);
      }
    }

    else
    {
      v42 = sub_242C65548(v90);
      LOBYTE(v89[0]) = 0;
      sub_242D48790();
      v43 = v91;
      v44 = v87;
      sub_242F05E40();
      v45 = *v42;
      v46 = *(v42 + 32);
      v89[1] = *(v42 + 16);
      v89[2] = v46;
      v89[0] = v45;
      v47 = *(v42 + 48);
      v48 = *(v42 + 64);
      v49 = *(v42 + 80);
      *&v89[6] = *(v42 + 96);
      v89[4] = v48;
      v89[5] = v49;
      v89[3] = v47;
      sub_242D487E4();
      sub_242F05F20();
      (*(v69 + 8))(v25, v14);
      return (*(v88 + 8))(v44, v43);
    }
  }

  else if (v19 > 4)
  {
    v37 = v91;
    v38 = v87;
    if (v19 == 5)
    {
      v39 = sub_242C65548(v90);
      LOBYTE(v89[0]) = 6;
      sub_242D483F4();
      v40 = v80;
      sub_242F05E40();
      memcpy(v89, v39, 0x164uLL);
      sub_242D48448();
      v41 = v82;
      sub_242F05F20();
      (*(v81 + 8))(v40, v41);
    }

    else
    {
      LOBYTE(v89[0]) = 5;
      sub_242D4849C();
      v67 = v72;
      sub_242F05E40();
      (*(v75 + 8))(v67, v76);
    }

    return (*(v88 + 8))(v38, v37);
  }

  else
  {
    v20 = v91;
    if (v19 == 3)
    {
      v21 = sub_242C65548(v90);
      LOBYTE(v89[0]) = 3;
      sub_242D48598();
      v22 = v71;
      v23 = v87;
      sub_242F05E40();
      memcpy(v89, v21, 0x228uLL);
      sub_242D485EC();
      v24 = v74;
      sub_242F05F20();
      (*(v73 + 8))(v22, v24);
      return (*(v88 + 8))(v23, v20);
    }

    else
    {
      v57 = sub_242C65548(v90);
      v58 = *v57;
      LODWORD(v86) = *(v57 + 8);
      v59 = *(v57 + 16);
      v60 = *(v57 + 24);
      v61 = *(v57 + 32);
      v62 = *(v57 + 36);
      LOBYTE(v89[0]) = 4;
      sub_242D484F0();
      v63 = v77;
      v64 = v87;
      sub_242F05E40();
      *&v89[0] = v58;
      BYTE8(v89[0]) = v86;
      *&v89[1] = v59;
      *(&v89[1] + 1) = v60;
      LODWORD(v89[2]) = v61;
      BYTE4(v89[2]) = v62;
      sub_242D48544();
      v65 = v79;
      sub_242F05F20();
      (*(v78 + 8))(v63, v65);
      return (*(v88 + 8))(v64, v91);
    }
  }
}