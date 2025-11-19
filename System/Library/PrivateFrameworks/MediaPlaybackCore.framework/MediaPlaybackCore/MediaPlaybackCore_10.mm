uint64_t sub_1C5D5AC2C()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D5AC90()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v0();
}

void sub_1C5D5AD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v22 = a3;
  sub_1C5D3A084();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C60166C0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C5C64D74(0, &qword_1ED7DCE50);
  *v12 = sub_1C6016FD0();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v13 = sub_1C60166F0();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v14 = *(a2 + 48);

    v15 = sub_1C6016AF0();

    (*(v6 + 16))(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v5);
    v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v17 = (v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    (*(v6 + 32))(v18 + v16, v8, v5);
    v19 = v22;
    *(v18 + v17) = v22;
    *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
    aBlock[4] = sub_1C5D5D9DC;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C5D2C434;
    aBlock[3] = &block_descriptor_223;
    v20 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v14 loadAssetValuesFor:v19 keys:v15 completion:v20];
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C5D5B010(void *a1)
{
  if (a1)
  {
    v2 = a1;
    sub_1C5DBAF48();
    sub_1C5D3A084();
    sub_1C6016BB0();
  }

  else if (sub_1C5D4AFF0())
  {
    sub_1C5D3A084();
    sub_1C6016BC0();
  }

  else
  {
    if (qword_1EC1A9680 != -1)
    {
      swift_once();
    }

    v3 = qword_1EC1BE470;
    sub_1C5D3A084();
    v4 = v3;
    sub_1C6016BB0();
  }
}

void sub_1C5D5B104(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6015060();
  v127 = *(v4 - 8);
  v128 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v126 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    swift_unknownObjectRetain();
    sub_1C5D4D248();
    swift_unknownObjectRelease();
  }

  if (*(a1 + 25) == 1)
  {
    LOBYTE(v6) = *(a2 + 272);
    if (v6)
    {
      v7 = sub_1C5DDBEF8();
      if ((v7 & 0xC000) != 0x8000 || (v7 & 0x3FFEu) > 5)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = 0x25u >> v7;
      }
    }

    v9 = v6 & 1;
    sub_1C5D57CD8();
    swift_beginAccess();
    sub_1C5C84D90(a2 + 144, v138);
    if (!*(&v138[1] + 1))
    {
      __break(1u);
      goto LABEL_118;
    }

    __swift_project_boxed_opaque_existential_0(v138, *(&v138[1] + 1));
    sub_1C5D3F6F8();
    v11 = v10;
    v139 = v12;
    v129 = v13;
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_0(v138);
    sub_1C5CDAF64(a2 + 80, v133);
    v125 = __swift_project_boxed_opaque_existential_0(v133, *(&v133[1] + 1));
    *&v138[0] = 0;
    *(&v138[0] + 1) = 0xE000000000000000;
    sub_1C6017540();
    v136 = v138[0];
    MEMORY[0x1C69534E0](0xD000000000000023, 0x80000001C604C090);
    LOBYTE(v138[0]) = v9;
    sub_1C6017650();
    MEMORY[0x1C69534E0](0x3D65726F66656220, 0xE800000000000000);
    if (*a1)
    {
      v16 = [*a1 contentItemID];
      v17 = sub_1C6016940();
      v19 = v18;

      v20 = MEMORY[0x1E69E6158];
    }

    else
    {
      v17 = 0;
      v19 = 0;
      v20 = 0;
      *&v138[1] = 0;
    }

    *&v138[0] = v17;
    *(&v138[0] + 1) = v19;
    *(&v138[1] + 1) = v20;
    DefaultStringInterpolation.appendInterpolation(describing:default:)(v138, 7104878, 0xE300000000000000);
    sub_1C5CBCF4C(v138);
    MEMORY[0x1C69534E0](0x3D726574666120, 0xE700000000000000);
    if (v11)
    {
      v21 = [v11 contentItemID];
      v22 = sub_1C6016940();
      v24 = v23;

      v25 = MEMORY[0x1E69E6158];
    }

    else
    {
      v22 = 0;
      v24 = 0;
      v25 = 0;
      v134[2] = 0;
    }

    v134[0] = v22;
    v134[1] = v24;
    v135 = v25;
    DefaultStringInterpolation.appendInterpolation(describing:default:)(v134, 7104878, 0xE300000000000000);
    sub_1C5CBCF4C(v134);
    v137[0] = v136;
    sub_1C5D5CCE4(v137);
    memcpy(v138, v137, 0xD9uLL);
    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(v133);
    v26 = *(a1 + 16);
    v27 = v139;
    *a1 = v11;
    *(a1 + 8) = v27;
    *(a1 + 16) = v129;
    *(a1 + 24) = v15 & 1;
    *(a1 + 25) = HIBYTE(v15) & 1;

    swift_unknownObjectRelease();
  }

  v28 = *(a2 + 136);
  sub_1C5DABCEC(v133);
  if (!*(&v133[1] + 1))
  {
    sub_1C5D5D294();
    goto LABEL_49;
  }

  v125 = v28;
  sub_1C5C6BEFC(v133, v137);
  v29 = *(&v137[1] + 1);
  v30 = *&v137[2];
  __swift_project_boxed_opaque_existential_0(v137, *(&v137[1] + 1));
  v31 = (*(v30 + 24))(v29, v30);
  v32 = [v31 avPlayerItem];

  v33 = *(&v137[1] + 1);
  v34 = *&v137[2];
  __swift_project_boxed_opaque_existential_0(v137, *(&v137[1] + 1));
  v35 = (*(v34 + 40))(v33, v34);
  v36 = [v35 avPlayerItem];

  v37 = *(a1 + 8);
  if (sub_1C5C6AA20(v37))
  {
    v34 = v32;
    sub_1C5C8CEE0(0, (v37 & 0xC000000000000001) == 0, v37);
    if ((v37 & 0xC000000000000001) != 0)
    {

      v38 = MEMORY[0x1C6954040](0, v37);
    }

    else
    {
      v38 = *(v37 + 32);
      swift_unknownObjectRetain();
    }

    v139 = [v38 avPlayerItem];
    swift_unknownObjectRelease();
  }

  else
  {
    v139 = 0;
  }

  v39 = *(a1 + 8);

  sub_1C5DDBB38(1, v39);
  if (v41 == v42 >> 1)
  {
    swift_unknownObjectRelease();
    v129 = 0;
    if (v32)
    {
      goto LABEL_28;
    }

LABEL_36:
    if (!v139)
    {
      goto LABEL_30;
    }

LABEL_37:
    if (v36)
    {
      goto LABEL_38;
    }

LABEL_42:
    if (v139)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  if (v41 >= (v42 >> 1))
  {
    __break(1u);
    goto LABEL_116;
  }

  v49 = *(v40 + 8 * v41);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v129 = [v49 avPlayerItem];
  swift_unknownObjectRelease();
  if (!v32)
  {
    goto LABEL_36;
  }

LABEL_28:
  if (!v139)
  {
    goto LABEL_37;
  }

  sub_1C5C64D74(0, &qword_1ED7DCEA8);
  v43 = v32;
  v44 = v139;
  v45 = sub_1C60172D0();

  if ((v45 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_30:
  if (!v36)
  {
    if (!v129)
    {
      goto LABEL_48;
    }

    goto LABEL_42;
  }

  if (!v129 || (sub_1C5C64D74(0, &qword_1ED7DCEA8), v46 = v36, v47 = v129, v48 = sub_1C60172D0(), v47, v46, (v48 & 1) == 0))
  {
LABEL_38:
    if (!v139 || (sub_1C5C64D74(0, &qword_1ED7DCEA8), v50 = v139, v51 = v36, v52 = sub_1C60172D0(), v50, v51, (v52 & 1) == 0))
    {
LABEL_44:
      if (*(a2 + 216) != 1)
      {
        sub_1C5D58914();
        v124 = sub_1C5C64D74(0, &qword_1ED7DCCF0);
        sub_1C6016940();
        v122 = v56;
        v134[0] = 2;
        *&v133[0] = 0;
        *(&v133[0] + 1) = 0xE000000000000000;
        sub_1C6017540();

        *&v133[0] = 0x697469736E617254;
        *(&v133[0] + 1) = 0xEB00000000206E6FLL;
        v123 = v36;
        v58 = *(&v137[1] + 1);
        v57 = *&v137[2];
        __swift_project_boxed_opaque_existential_0(v137, *(&v137[1] + 1));
        v59 = (*(v57 + 8))(v58, v57);
        MEMORY[0x1C69534E0](v59);

        MEMORY[0x1C69534E0](0xD000000000000022, 0x80000001C604C060);
        sub_1C6016880();
        _s3__C4CodeOMa_6();
        sub_1C5D5CE80(&qword_1ED7DCDE0, _s3__C4CodeOMa_6);
        v60 = sub_1C6017280();

        sub_1C5DAE024();

        goto LABEL_47;
      }

LABEL_45:

LABEL_47:
      v32 = v129;
      goto LABEL_48;
    }

LABEL_43:
    v53 = *(&v137[1] + 1);
    v54 = *&v137[2];
    __swift_project_boxed_opaque_existential_0(v137, *(&v137[1] + 1));
    (*(v54 + 56))(v53, v54);
    if (v55 == 1)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v32 = v47;
LABEL_48:

  __swift_destroy_boxed_opaque_existential_0(v137);
LABEL_49:
  *(a2 + 248) = 1;
  if (!*(a2 + 272))
  {
    v34 = *(a2 + 256);
    v36 = *(a2 + 264);
    if ((*(v34 + 72) & 1) == 0 || (v37 = *(a1 + 8), !sub_1C5C6AA20(v37)))
    {

      goto LABEL_99;
    }

    sub_1C5C8CEE0(0, (v37 & 0xC000000000000001) == 0, v37);
    if ((v37 & 0xC000000000000001) == 0)
    {
      v64 = *(v37 + 32);
      sub_1C5D5CE58(v34, v36, 0);
      swift_unknownObjectRetain();
      goto LABEL_56;
    }

LABEL_116:
    sub_1C5D5CE58(v34, v36, 0);

    v64 = MEMORY[0x1C6954040](0, v37);

LABEL_56:
    v65 = [v64 avPlayerItem];
    v66 = *(v34 + 16);
    if (v66)
    {
      v67 = [v66 &selRef_artworkIdentifier + 2];
      v68 = v67;
      if (v65)
      {
        if (v67)
        {
          sub_1C5C64D74(0, &qword_1ED7DCEA8);
          v69 = sub_1C60172D0();

          if (v69)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        }
      }

      else
      {
        v65 = v67;
        if (!v67)
        {
LABEL_98:
          swift_unknownObjectRelease();
LABEL_99:
          v115 = *(a1 + 16);
          if (v115)
          {
            v116 = v115;
            sub_1C5D4C330();
            sub_1C5D5CE30(v34, v36, 0);
          }

          else if (sub_1C5C6AA20(*(a1 + 8)) || (*(a1 + 24) & 1) == 0 || *(a1 + 16))
          {
            sub_1C5D5CE30(v34, v36, 0);
          }

          else
          {
            v134[0] = MEMORY[0x1E69E7CC0];
            swift_beginAccess();
            sub_1C5C84D90(a2 + 144, v137);
            if (!*(&v137[1] + 1))
            {
LABEL_122:
              __break(1u);
              return;
            }

            v117 = __swift_project_boxed_opaque_existential_0(v137, *(&v137[1] + 1));
            sub_1C5D41300(*v117);
            __swift_destroy_boxed_opaque_existential_0(v137);
            sub_1C5D575E0(0xD000000000000024, 0x80000001C604BFD0);
            v119 = *(v34 + 32);
            v118 = *(v34 + 40);

            v120 = sub_1C5DBA6A0(v119, v118);

            sub_1C5D4C330();
            sub_1C5D5CE30(v34, v36, 0);
          }

          goto LABEL_105;
        }
      }
    }

    else if (!v65)
    {
      goto LABEL_98;
    }

LABEL_97:
    sub_1C5D4C198(v64);
    sub_1C5D4EA04(v34);
    goto LABEL_98;
  }

  if (*(a2 + 216))
  {
    __swift_project_boxed_opaque_existential_0((a2 + 80), *(a2 + 104));
    *&v137[0] = 0;
    *(&v137[0] + 1) = 0xE000000000000000;
    sub_1C6017540();
    v133[0] = v137[0];
    v61 = *(a1 + 16);
    v62 = *(a1 + 24);
    v63 = *(a1 + 25);
    v137[0] = *a1;
    *&v137[1] = v61;
    BYTE8(v137[1]) = v62;
    BYTE9(v137[1]) = v63;
    sub_1C6017650();
    MEMORY[0x1C69534E0](0xD000000000000039, 0x80000001C604C020);
    sub_1C5D5CCE4(v133);
    memcpy(v137, v133, 0xD9uLL);
    sub_1C5DBBF0C();
  }

  else
  {

    sub_1C5D57DA4(v70);

    v71 = *(a1 + 24);

    sub_1C5DE3834(v72, v71, 0);

    sub_1C5D4BFC4(v73);
  }

  if (sub_1C5C6AA20(*(a1 + 8)))
  {
    goto LABEL_105;
  }

  v74 = *(a1 + 16);
  if ((*(a1 + 24) & 1) == 0)
  {
    if (!v74)
    {
      sub_1C5DE3834(0, 0, 3);
      goto LABEL_105;
    }

LABEL_80:
    *&v133[0] = 0;
    *(&v133[0] + 1) = 0xE000000000000000;
    v92 = v74;
    v93 = v74;
    sub_1C6017540();

    *&v133[0] = 0xD000000000000015;
    *(&v133[0] + 1) = 0x80000001C604C000;
    v94 = v126;
    sub_1C6015050();
    v95 = sub_1C6015030();
    v97 = v96;
    (*(v127 + 8))(v94, v128);
    MEMORY[0x1C69534E0](v95, v97);

    sub_1C5DDC60C(0, 0, v74, *&v133[0], *(&v133[0] + 1), 0, 0, 0.0);

    swift_beginAccess();
    sub_1C5C84D90(a2 + 144, v133);
    if (*(&v133[1] + 1))
    {
      v139 = v74;
      __swift_project_boxed_opaque_existential_0(v133, *(&v133[1] + 1));
      sub_1C5C84D90(a2 + 144, v134);
      if (v135)
      {
        v98 = __swift_project_boxed_opaque_existential_0(v134, v135);
        v99 = *(*v98 + 184);
        v100 = *(*v98 + 185);
        v101 = *(*v98 + 187);
        v102 = *(*v98 + 188);
        v103 = *(*v98 + 189);
        __swift_destroy_boxed_opaque_existential_0(v134);
        v111 = 0x10000000000;
        if (!v103)
        {
          v111 = 0;
        }

        v112 = 0x100000000;
        if (!v102)
        {
          v112 = 0;
        }

        v113 = 0x1000000;
        if (!v101)
        {
          v113 = 0;
        }

        v114 = 256;
        if (!v100)
        {
          v114 = 0;
        }

        sub_1C5D3EF18(v114 | v99 | v113 | v112 | v111 | 0x10000, v104, v105, v106, v107, v108, v109, v110, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);

        goto LABEL_91;
      }

      goto LABEL_119;
    }

LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  if (v74)
  {
    goto LABEL_80;
  }

  if ((*(a1 + 25) & 1) == 0)
  {
    goto LABEL_111;
  }

  if (sub_1C5DDBEF8() == 32770)
  {
    swift_beginAccess();
    sub_1C5C84D90(a2 + 144, v133);
    if (*(&v133[1] + 1))
    {
      __swift_project_boxed_opaque_existential_0(v133, *(&v133[1] + 1));
      sub_1C5C84D90(a2 + 144, v134);
      if (v135)
      {
        v75 = __swift_project_boxed_opaque_existential_0(v134, v135);
        v76 = *(*v75 + 184);
        v77 = *(*v75 + 185);
        v78 = *(*v75 + 187);
        v79 = *(*v75 + 188);
        v80 = *(*v75 + 189);
        __swift_destroy_boxed_opaque_existential_0(v134);
        v88 = 0x10000000000;
        if (!v80)
        {
          v88 = 0;
        }

        v89 = 0x100000000;
        if (!v79)
        {
          v89 = 0;
        }

        v90 = 0x1000000;
        if (!v78)
        {
          v90 = 0;
        }

        v91 = 256;
        if (!v77)
        {
          v91 = 0;
        }

        sub_1C5D3EF18(v91 | v76 | v90 | v89 | v88 | 0x10000, v81, v82, v83, v84, v85, v86, v87, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);
LABEL_91:
        __swift_destroy_boxed_opaque_existential_0(v133);
        goto LABEL_105;
      }

      goto LABEL_121;
    }

LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (*(a1 + 24) == 1 && !*(a1 + 16))
  {
LABEL_111:
    sub_1C5D575E0(0xD000000000000024, 0x80000001C604BFD0);
  }

LABEL_105:
  *(a2 + 248) = 0;
  if (!*a1 && *(a1 + 24) == 1)
  {
    sub_1C5D4D248();
  }
}

uint64_t sub_1C5D5C16C(char a1)
{
  v2 = sub_1C60162D0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C60162C0();

  v6 = sub_1C60162B0();
  v7 = sub_1C6016F30();

  if (os_log_type_enabled(v6, v7))
  {
    v21 = v2;
    v8 = 0xEB000000006D6574;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136446466;
    if (a1)
    {
      v11 = 0x6564656563637553;
    }

    else
    {
      v11 = 0x64656C696146;
    }

    if (a1)
    {
      v12 = 0xE900000000000064;
    }

    else
    {
      v12 = 0xE600000000000000;
    }

    v13 = sub_1C5C6AB10(v11, v12, &v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v15 = [Strong avPlayerItem], swift_unknownObjectRelease(), v15))
    {
      v16 = sub_1C5DBCDF8();
      v8 = v17;
    }

    else
    {
      v16 = 0x49746E6572727563;
    }

    v19 = sub_1C5C6AB10(v16, v8, &v22);

    *(v9 + 14) = v19;
    _os_log_impl(&dword_1C5C61000, v6, v7, "[ALC] - %{public}s to seek to sourceTime on %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6956920](v10, -1, -1);
    MEMORY[0x1C6956920](v9, -1, -1);

    return (*(v3 + 8))(v5, v21);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1C5D5C454(void *a1)
{
  v2 = [a1 gaplessInfo];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C6016860();

  return v3;
}

uint64_t sub_1C5D5C4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_146();
  v10 = v9 - v8;
  (*(v7 + 16))(v9 - v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OUTLINED_FUNCTION_303();
    sub_1C5DD2FB4(v13, v14, v12, a4, a5);
    swift_unknownObjectRelease();
  }

  return (*(v7 + 8))(v10, a4);
}

void sub_1C5D5C5D4()
{
  OUTLINED_FUNCTION_131();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1C6015060();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_146();
  v15 = v14 - v13;
  if (*(v1 + 249))
  {
    goto LABEL_41;
  }

  if (*(v1 + 216) == 1)
  {
    goto LABEL_41;
  }

  v16 = *(v1 + 32);
  if (!v16)
  {
    goto LABEL_41;
  }

  v61 = v12;
  v62 = v5;
  v63 = v7;
  v17 = *(v1 + 56);
  swift_unknownObjectRetain();
  v64 = v17;
  v18 = [v17 targetContentItemID];
  v66 = v16;
  if (v18)
  {
    v17 = v18;
    v19 = sub_1C6016940();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v67 = v9;
  v22 = [v9 contentItemID];
  sub_1C6016940();
  OUTLINED_FUNCTION_80_3();

  if (!v21)
  {

LABEL_21:
    sub_1C5CDAF64(v1 + 80, &v70);
    __swift_project_boxed_opaque_existential_0(&v70, v72);
    OUTLINED_FUNCTION_85_3();
    v78 = 0;
    v79 = v32;
    sub_1C6017540();
    v68[0] = v78;
    v68[1] = v79;
    MEMORY[0x1C69534E0](0xD000000000000032, 0x80000001C604BF20);
    v33 = [v9 contentItemID];
    v34 = sub_1C6016940();
    v36 = v35;

    MEMORY[0x1C69534E0](v34, v36);

    MEMORY[0x1C69534E0](0xD000000000000017, 0x80000001C604BF60);
    v37 = [v64 targetContentItemID];
    if (v37)
    {
      v38 = v37;
      v39 = sub_1C6016940();
      v41 = v40;
    }

    else
    {
      v41 = 0xE300000000000000;
      v39 = 7104878;
    }

    MEMORY[0x1C69534E0](v39, v41);

    MEMORY[0x1C69534E0](0xD00000000000001ELL, 0x80000001C604BF80);
    v42 = [v67 contentItemID];
    v43 = sub_1C6016940();
    v45 = v44;

    MEMORY[0x1C69534E0](v43, v45);

    OUTLINED_FUNCTION_92_0(v68[0]);
    sub_1C5DBBF0C();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v70);
    goto LABEL_41;
  }

  if (v19 == v17 && v21 == v9)
  {
  }

  else
  {
    v24 = OUTLINED_FUNCTION_68_4();

    if ((v24 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v25 = [v9 contentItemID];
  v26 = sub_1C6016940();
  v28 = v27;

  v29 = [v66 contentItemID];
  sub_1C6016940();
  OUTLINED_FUNCTION_80_3();

  if (v26 == v25 && v28 == &selRef_addTarget_action_usingExtendedStatus_)
  {
  }

  else
  {
    v31 = OUTLINED_FUNCTION_68_4();

    if ((v31 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if ((v62 & 1) != 0 || (v46 = [v9 avPlayerItem]) == 0)
  {
    if (v3)
    {
      v53 = [v9 avPlayerItem];
      if (v53)
      {
        v54 = v53;
        v55 = sub_1C5D62DEC();

        if (swift_unknownObjectWeakLoadStrong())
        {
          v71 = xmmword_1C60311B0;
          v70 = v9;
          v72 = 0;
          v73 = v55;
          v76 = xmmword_1C60379B0;
          v77 = 1;
          swift_unknownObjectRetain();

          sub_1C5DCEC3C(&v70);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }
      }
    }

    *(v1 + 249) = 1;
    if (v62)
    {
      [v66 time];
    }
  }

  else
  {
    v47 = v46;
    v65 = sub_1C5D62DEC();

    [v9 time];
    v49 = v48;
    sub_1C6015050();
    v50 = sub_1C6015030();
    v52 = v51;
    (*(v61 + 8))(v15, v10);
    LOBYTE(v78) = 0;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v70 = 1;
      *&v71 = v9;
      *(&v71 + 1) = v49;
      v72 = 0;
      v73 = v63;
      v74 = v50;
      v75 = v52;
      *&v76 = 0;
      *(&v76 + 1) = v65 & 0xFFFFFFFFFFFFFF8 | 0x7000000000000002;
      v77 = 1;
      swift_unknownObjectRetain();

      sub_1C5DCEC3C(&v70);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_bridgeObjectRelease_n();
    }

    else
    {
    }

    *(v1 + 249) = 1;
  }

  OUTLINED_FUNCTION_16_11((v1 + 80), *(v1 + 104));
  v78 = 0;
  v79 = v56;
  swift_unknownObjectRetain();
  sub_1C6017540();

  OUTLINED_FUNCTION_89();
  v78 = 0xD00000000000002BLL;
  v79 = v57;
  sub_1C5D5CCF8();
  v58 = swift_allocObject();
  v59 = MEMORY[0x1E69E63B0];
  *(v58 + 16) = xmmword_1C60311E0;
  v60 = OUTLINED_FUNCTION_13_11(v58, v59);
  MEMORY[0x1C69534E0](v60);

  OUTLINED_FUNCTION_92_0(v78);
  sub_1C5DBBF0C();

  sub_1C5D4C924(0);
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_31();
  sub_1C5C84D90(v1 + 144, v68);
  if (v69)
  {
    __swift_project_boxed_opaque_existential_0(v68, v69);
    swift_unknownObjectRetain();
    sub_1C5D41AB0(0, 0, v66);
    swift_unknownObjectRelease_n();
    __swift_destroy_boxed_opaque_existential_0(v68);
    *(v1 + 249) = 0;
LABEL_41:
    OUTLINED_FUNCTION_130();
    return;
  }

  __break(1u);
}

void sub_1C5D5CCF8()
{
  if (!qword_1ED7DCB08)
  {
    sub_1C5C74680(255, &qword_1ED7DCAC0);
    v0 = sub_1C60177E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7DCB08);
    }
  }
}

void sub_1C5D5CD60()
{
  if (!qword_1ED7DFD78)
  {
    sub_1C5C74680(255, qword_1ED7DFD80);
    v0 = sub_1C6017350();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7DFD78);
    }
  }
}

void sub_1C5D5CDC8()
{
  if (!qword_1ED7DE918)
  {
    sub_1C5C74680(255, qword_1ED7DE920);
    v0 = sub_1C6017350();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7DE918);
    }
  }
}

uint64_t sub_1C5D5CE30(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1C5D5CE58(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1C5D5CE80(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C5D5CEDC()
{
  if (!qword_1EC1A8898)
  {
    sub_1C5C74680(255, qword_1ED7DE920);
    sub_1C5C74680(255, &qword_1ED7DCAE0);
    v0 = sub_1C6017A60();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A8898);
    }
  }
}

void sub_1C5D5CF6C(void *a1, id a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

void sub_1C5D5CF8C()
{
  if (!qword_1ED7DC288)
  {
    sub_1C6016630();
    v0 = sub_1C6016B80();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7DC288);
    }
  }
}

void sub_1C5D5CFEC()
{
  if (!qword_1ED7DCB58)
  {
    sub_1C5D5D69C(255, &unk_1ED7DCF20);
    v0 = sub_1C60177E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7DCB58);
    }
  }
}

unint64_t sub_1C5D5D054()
{
  result = qword_1ED7DCF00;
  if (!qword_1ED7DCF00)
  {
    sub_1C5C67580(255, &qword_1ED7DCF10, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7DCF00);
  }

  return result;
}

id sub_1C5D5D0D8(id result, uint64_t a2, void *a3)
{
  if (result)
  {
    swift_unknownObjectRetain();

    return sub_1C5D45E64(a3);
  }

  return result;
}

void sub_1C5D5D118(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    swift_unknownObjectRelease();

    sub_1C5D45E74(a3);
  }
}

id sub_1C5D5D1DC(double a1)
{
  v2 = *(v1 + 32);
  LODWORD(a1) = 1.0;
  if (*(v1 + 24))
  {
    *&a1 = 0.0;
  }

  result = [*(v1 + 16) setVolume_];
  if (v2)
  {
    return v2(result);
  }

  return result;
}

void sub_1C5D5D22C()
{
  if (!qword_1EC1AB558)
  {
    v0 = sub_1C6017690();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AB558);
    }
  }
}

uint64_t sub_1C5D5D294()
{
  v1 = OUTLINED_FUNCTION_68();
  v2(v1);
  OUTLINED_FUNCTION_105();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_1C5D5D2E8()
{
  if (!qword_1ED7DD8A8)
  {
    sub_1C5C74680(255, qword_1ED7DD8B0);
    v0 = sub_1C6017350();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7DD8A8);
    }
  }
}

void *sub_1C5D5D350(void *result, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, unint64_t a9)
{
  switch((a9 >> 58) & 0x3C | (a9 >> 1) & 3)
  {
    case 0uLL:
    case 2uLL:
    case 0x10uLL:
    case 0x17uLL:
    case 0x20uLL:
    case 0x24uLL:
      goto LABEL_22;
    case 1uLL:

      goto LABEL_22;
    case 3uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0x11uLL:
    case 0x1FuLL:
    case 0x22uLL:
      swift_unknownObjectRelease();
      goto LABEL_22;
    case 4uLL:
    case 5uLL:
    case 6uLL:
      swift_unknownObjectRelease();

      goto LABEL_22;
    case 0xAuLL:
    case 0xBuLL:
    case 0xFuLL:
    case 0x12uLL:
    case 0x19uLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x21uLL:
      swift_unknownObjectRelease();
      goto LABEL_22;
    case 0x13uLL:
      swift_unknownObjectRelease();

      goto LABEL_22;
    case 0x14uLL:
    case 0x18uLL:
      swift_unknownObjectRelease();
      sub_1C5D5D56C(a3, a4);
      goto LABEL_22;
    case 0x15uLL:
      swift_unknownObjectRelease();
      sub_1C5D5D56C(a5, a6);
      goto LABEL_22;
    case 0x16uLL:
      swift_unknownObjectRelease();
      sub_1C5D5D56C(a2, a3);
      sub_1C5D5D584(a4);
LABEL_22:

    case 0x1AuLL:
      swift_unknownObjectRelease();

      goto LABEL_14;
    case 0x1DuLL:

      goto LABEL_10;
    case 0x1EuLL:

      swift_unknownObjectRelease();
LABEL_10:

      result = swift_unknownObjectRelease();
      break;
    case 0x23uLL:

LABEL_14:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C5D5D56C(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

void sub_1C5D5D584(id a1)
{
  if (a1 >= 0xC)
  {
  }
}

void sub_1C5D5D630()
{
  if (!qword_1EC1A9230)
  {
    sub_1C5D5D69C(255, &qword_1EC1A9470);
    v0 = sub_1C60177E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A9230);
    }
  }
}

void sub_1C5D5D69C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_100();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1C5D5D6F0()
{
  if (!qword_1EC1A9460)
  {
    sub_1C5D2AA10(255, qword_1ED7DF160);
    v0 = sub_1C6016B80();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A9460);
    }
  }
}

void sub_1C5D5D758()
{
  if (!qword_1EC1A9468)
  {
    sub_1C5D2AA10(255, &qword_1ED7DC870);
    v0 = sub_1C6016B80();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A9468);
    }
  }
}

void sub_1C5D5D7C0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C60168A0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1C5D5D838()
{
  if (!qword_1ED7DCAD0)
  {
    sub_1C5C74680(255, &qword_1ED7DCAE0);
    v0 = sub_1C6017350();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7DCAD0);
    }
  }
}

uint64_t objectdestroy_144Tm(uint64_t a1)
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

void sub_1C5D5D900()
{
  if (!qword_1EC1A8D78)
  {
    v0 = sub_1C6016BD0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A8D78);
    }
  }
}

uint64_t sub_1C5D5D960()
{
  OUTLINED_FUNCTION_68();
  sub_1C5D5D900();

  return sub_1C5D59C00(v0);
}

void sub_1C5D5D9DC()
{
  OUTLINED_FUNCTION_68();
  sub_1C5D3A084();
  OUTLINED_FUNCTION_60_5();

  sub_1C5D5B010(v0);
}

void sub_1C5D5DA7C()
{
  if (!qword_1ED7DCED0)
  {
    sub_1C5D2AA10(255, qword_1ED7DF160);
    sub_1C5C74680(255, &qword_1ED7DCAE0);
    v0 = sub_1C6016BD0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7DCED0);
    }
  }
}

uint64_t objectdestroy_219Tm(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_105();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v1 + v4);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, v5 + 8, v3 | 7);
}

void sub_1C5D5DBB8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C5D5DA7C();
  OUTLINED_FUNCTION_60_5();
  v4 = OUTLINED_FUNCTION_303();

  sub_1C5D5A33C(v4, v5, a3, v6, v7);
}

_BYTE *storeEnumTagSinglePayload for AssetSlidingQueueController.SkipType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C5D5DD44()
{
  result = qword_1EC1AB560;
  if (!qword_1EC1AB560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB560);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_15()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_38_5()
{

  JUMPOUT(0x1C69534E0);
}

void *OUTLINED_FUNCTION_40_5(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char __src, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char __dst)
{

  return memcpy(&__dst, &__src, 0xD9uLL);
}

void *OUTLINED_FUNCTION_58_5()
{
  v2 = *(v0 + 104);

  return __swift_project_boxed_opaque_existential_0((v0 + 80), v2);
}

uint64_t OUTLINED_FUNCTION_64_5(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_1C5C84D90(v3 + 144, va);
}

uint64_t OUTLINED_FUNCTION_66_6(uint64_t a1)
{
  *(v1 + 48) = a1;

  return sub_1C6016C00();
}

uint64_t OUTLINED_FUNCTION_67_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return sub_1C5C84D90(v9 + 144, va);
}

uint64_t OUTLINED_FUNCTION_68_4()
{

  return sub_1C6017860();
}

uint64_t OUTLINED_FUNCTION_72_2(uint64_t a1, ...)
{
  va_start(va, a1);

  return __swift_destroy_boxed_opaque_existential_0(va);
}

id OUTLINED_FUNCTION_90_1()
{

  return [v0 (v1 + 810)];
}

uint64_t OUTLINED_FUNCTION_91_1(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_1C5C84D90(v1 + 144, va);
}

void *OUTLINED_FUNCTION_92_0@<X0>(uint64_t a1@<X8>)
{
  v1[15] = a1;
  v1[16] = v2;
  sub_1C5D5CCE4((v1 + 15));

  return memcpy(v1 + 53, v1 + 15, 0xD9uLL);
}

unint64_t sub_1C5D5E098(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      OUTLINED_FUNCTION_151();
      sub_1C6017540();

      OUTLINED_FUNCTION_11();
      v13 = v10 + 27;
      v7 = (a1 & 1) == 0;
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_151();
      sub_1C6017540();

      OUTLINED_FUNCTION_11();
      v13 = v8 + 16;
      MEMORY[0x1C69534E0](a1, a2);
      return v13;
    case 3:
      return 0xD00000000000002CLL;
    default:
      OUTLINED_FUNCTION_151();
      sub_1C6017540();
      MEMORY[0x1C69534E0](0xD000000000000037, 0x80000001C604D410);
      v5 = sub_1C5D11E0C();
      v6 = MEMORY[0x1C6953600](a1, v5);
      MEMORY[0x1C69534E0](v6);

      MEMORY[0x1C69534E0](0xD000000000000013, 0x80000001C604D450);
      v7 = (a2 & 1) == 0;
LABEL_6:
      if (v7)
      {
        v11 = 0x65736C6166;
      }

      else
      {
        v11 = 1702195828;
      }

      if (v7)
      {
        v12 = 0xE500000000000000;
      }

      else
      {
        v12 = 0xE400000000000000;
      }

      MEMORY[0x1C69534E0](v11, v12);

      return v13;
  }
}

uint64_t get_enum_tag_for_layout_string_17MediaPlaybackCore16CoordinatorEventO(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_17MediaPlaybackCore11PlayerEventO6SourceO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5D5E2C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 73))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 72);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5D5E304(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C5D5E3BC(void *a1)
{
  if (a1 && (v2 = sub_1C6017210(), v4 = v3, v6 = v5, type metadata accessor for CMClock(), v8 = v7, v9 = sub_1C6016E20(), v18 = v9, MEMORY[0x1C6953990](v2, v4, v6, &v18, v8, MEMORY[0x1E69E7EA8]), v9, OUTLINED_FUNCTION_0_32(), (sub_1C6017200() & 1) != 0))
  {
    OUTLINED_FUNCTION_0_32();
    v10 = (sub_1C6016810() & 1) == 0;
  }

  else
  {
    v10 = 1;
  }

  type metadata accessor for EventTime();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_0_32();
  sub_1C5C8A6E0(v12, v13, v14, v10, v15, v16);

  return v11;
}

unint64_t sub_1C5D5E4F0(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_1C5D5E518@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C5D5E4F0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C5D5E544@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5D5E500(*v1);
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for EventTime.TimeType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C5D5E650()
{
  result = qword_1EC1AB568;
  if (!qword_1EC1AB568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB568);
  }

  return result;
}

BOOL sub_1C5D5E6A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (v2 == 2)
  {
    return 1;
  }

  if (!*(a2 + 64))
  {
    v7 = *(a1 + 16);
    v8 = *(a2 + 16);
    if (*(a1 + 64))
    {
      if (v7 == v8)
      {
        return 1;
      }
    }

    else if (v7 == v8 || (~*&v7 & 0x7FF0000000000000) == 0 && (*(a1 + 16) & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v8 & 0x7FF0000000000000) == 0 && (*(a2 + 16) & 0xFFFFFFFFFFFFFLL) != 0)
    {
      return 1;
    }

    return 0;
  }

  if (*(a2 + 64) != 1)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  result = v3 == v4 || v2 == 0;
  if (!v2 && v3 != v4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C5D5E764()
{
  if (*(v0 + 64))
  {
    if (*(v0 + 64) != 1)
    {
      return 0x6173726576696E75;
    }

    OUTLINED_FUNCTION_151();
    sub_1C6017540();
    OUTLINED_FUNCTION_1_25();
    OUTLINED_FUNCTION_0_32();
    sub_1C6016D10();
    v1 = 0x74736F68202D2073;
    v2 = 0xED00003A656D6954;
    goto LABEL_9;
  }

  v3 = *(v0 + 16);
  if ((~v3 & 0x7FF0000000000000) != 0 || (v3 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    OUTLINED_FUNCTION_151();
    sub_1C6017540();
    OUTLINED_FUNCTION_1_25();
    OUTLINED_FUNCTION_0_32();
    sub_1C6016D10();
    v1 = 0x5474736F68202D20;
    v2 = 0xEC0000003A656D69;
LABEL_9:
    MEMORY[0x1C69534E0](v1, v2);
    sub_1C6017220();
    OUTLINED_FUNCTION_0_32();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_151();
  sub_1C6017540();
  MEMORY[0x1C69534E0](0xD000000000000013, 0x80000001C604D510);
  sub_1C6017220();
LABEL_10:
  sub_1C6016D10();
  MEMORY[0x1C69534E0](115, 0xE100000000000000);
  return v5;
}

uint64_t sub_1C5D5E930(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C5D5E978(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 72) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 0;
      *(a1 + 56) = 2 * -a2;
      *(a1 + 64) = 0;
      return result;
    }

    *(a1 + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5D5E9F0(uint64_t result, char a2)
{
  v2 = (((a2 & 0x3F) << 58) | (2 * (a2 & 0x3F))) & 0xF000000000000007 | *(result + 64) & 0xFFFFFFFFFFFFFF8;
  *(result + 56) &= 1uLL;
  *(result + 64) = v2;
  return result;
}

void sub_1C5D5EA9C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 13) | (*(a1 + 15) << 16);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26) | (*(a1 + 30) << 32);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  switch((*(a1 + 64) >> 58) & 0x3C | (*(a1 + 64) >> 1) & 3)
  {
    case 0:
    case 1:
      OUTLINED_FUNCTION_25_9();
      goto LABEL_205;
    case 3:
      OUTLINED_FUNCTION_3_22();
      if (v56 != 3)
      {
        goto LABEL_205;
      }

      goto LABEL_123;
    case 4:
      OUTLINED_FUNCTION_3_22();
      if (v98 != 4)
      {
        goto LABEL_205;
      }

      goto LABEL_87;
    case 5:
      OUTLINED_FUNCTION_3_22();
      if (v99 != 5)
      {
        goto LABEL_205;
      }

LABEL_87:
      v52 = *(v97 + 16);
      OUTLINED_FUNCTION_24_12();
      goto LABEL_88;
    case 7:
      OUTLINED_FUNCTION_3_22();
      if (v60 != 7)
      {
        goto LABEL_205;
      }

      goto LABEL_123;
    case 8:
      OUTLINED_FUNCTION_3_22();
      if (v72 != 8)
      {
        goto LABEL_205;
      }

      goto LABEL_123;
    case 9:
      OUTLINED_FUNCTION_3_22();
      if (v73 != 9)
      {
        goto LABEL_205;
      }

      goto LABEL_123;
    case 0xALL:
      OUTLINED_FUNCTION_3_22();
      if (v108 == 10)
      {
        goto LABEL_98;
      }

      goto LABEL_205;
    case 0xBLL:
      OUTLINED_FUNCTION_3_22();
      if (v107 != 11)
      {
        goto LABEL_205;
      }

LABEL_98:
      *&v109 = v3 | (v106 << 32) | (v4 << 40);
      v52 = *(v105 + 16);
      v110 = *(v105 + 8);
      OUTLINED_FUNCTION_24_12();
      swift_getObjectType();
      sub_1C5DEA0B4();
      v112 = v111;
      swift_getObjectType();
      sub_1C5DEA0B4();
      OUTLINED_FUNCTION_40_6();
      if (v22 && v112 == v113)
      {

        if (v110 != v109)
        {
          goto LABEL_205;
        }

        goto LABEL_136;
      }

      v115 = OUTLINED_FUNCTION_20_14();

      if ((v115 & 1) != 0 && v110 == v109)
      {
        goto LABEL_136;
      }

      goto LABEL_205;
    case 0xCLL:
      OUTLINED_FUNCTION_3_22();
      if (v43 != 12)
      {
        goto LABEL_205;
      }

      goto LABEL_123;
    case 0x11:
      OUTLINED_FUNCTION_3_22();
      if (v61 != 17)
      {
        goto LABEL_205;
      }

      goto LABEL_123;
    case 0x12:
      OUTLINED_FUNCTION_26_8();
      if (v51 == 18)
      {
        goto LABEL_46;
      }

      goto LABEL_205;
    case 0x13:
      OUTLINED_FUNCTION_3_22();
      if (v29 != 19)
      {
        goto LABEL_205;
      }

      v179 = v28;
      v30 = v27[1];
      v174 = v27[2];
      v171 = v27[3];
      OUTLINED_FUNCTION_24_12();
      swift_getObjectType();
      sub_1C5DEA0B4();
      v32 = v31;
      swift_getObjectType();
      sub_1C5DEA0B4();
      OUTLINED_FUNCTION_39_5();
      if (v22 && v32 == v33)
      {
      }

      else
      {
        OUTLINED_FUNCTION_38_6();
        v35 = OUTLINED_FUNCTION_71();

        if ((v35 & 1) == 0)
        {
          goto LABEL_205;
        }
      }

      v153 = (v3 | (v179 << 32) | (v4 << 40)) == v30 && v5 == v174;
      if (!v153 && (sub_1C6017860() & 1) == 0)
      {
        goto LABEL_205;
      }

      type metadata accessor for EventTime();
      v119 = v6 | (v7 << 8) | (v8 << 16);
      goto LABEL_150;
    case 0x14:
      OUTLINED_FUNCTION_3_22();
      if (v76 != 20)
      {
        goto LABEL_205;
      }

      v77 = *&v3;
      v78 = *(v74 + 8);
      v180 = v75;
      v183 = *(v74 + 16);
      v175 = *(v74 + 24);
      v79 = *(v74 + 12);
      v171 = *(v74 + 32);
      swift_getObjectType();
      sub_1C5DEA0B4();
      v81 = v80;
      swift_getObjectType();
      sub_1C5DEA0B4();
      OUTLINED_FUNCTION_39_5();
      if (v22 && v81 == v82)
      {
      }

      else
      {
        OUTLINED_FUNCTION_38_6();
        v84 = OUTLINED_FUNCTION_71();

        if ((v84 & 1) == 0)
        {
          goto LABEL_205;
        }
      }

      if (v78 != v77 || ((v180 ^ v79) & 1) != 0 || (sub_1C5D5F6BC(v5, v6 | (v7 << 8) | (v8 << 16), v183, v175) & 1) == 0)
      {
        goto LABEL_205;
      }

      type metadata accessor for EventTime();
      v119 = v9;
LABEL_150:
      v120 = v171;
      goto LABEL_137;
    case 0x15:
      OUTLINED_FUNCTION_3_22();
      if (v86 != 21)
      {
        goto LABEL_205;
      }

      v87 = *&v3;
      v88 = *(v85 + 8);
      v89 = *(v85 + 16);
      v90 = *(v85 + 24);
      v176 = *(v85 + 32);
      v172 = *(v85 + 40);
      v181 = *(v85 + 25);
      v169 = *(v85 + 48);
      swift_getObjectType();
      sub_1C5DEA0B4();
      v92 = v91;
      swift_getObjectType();
      sub_1C5DEA0B4();
      OUTLINED_FUNCTION_39_5();
      if (v22 && v92 == v93)
      {

        v96 = *&v5;
        if (v88 != v87)
        {
          goto LABEL_205;
        }
      }

      else
      {
        OUTLINED_FUNCTION_38_6();
        v95 = OUTLINED_FUNCTION_71();

        if ((v95 & 1) == 0)
        {
          goto LABEL_205;
        }

        v96 = *&v5;
        if (v88 != v87)
        {
          goto LABEL_205;
        }
      }

      if (v6)
      {
        if ((v90 & 1) == 0)
        {
          goto LABEL_205;
        }
      }

      else if ((v90 & 1) != 0 || v89 != v96)
      {
        goto LABEL_205;
      }

      if ((v7 ^ v181) & 1) == 0 && (sub_1C5D5F6BC(v9, v10, v176, v172))
      {
        type metadata accessor for EventTime();
        v119 = v11;
        v120 = v169;
        goto LABEL_137;
      }

      goto LABEL_205;
    case 0x16:
      OUTLINED_FUNCTION_3_22();
      if (v123 != 22)
      {
        goto LABEL_205;
      }

      v182 = v122;
      v177 = v121[2];
      v170 = v121[3];
      v168 = v121[4];
      OUTLINED_FUNCTION_24_12();
      v173 = *(v124 + 8);
      swift_getObjectType();
      sub_1C5DEA0B4();
      v126 = v125;
      swift_getObjectType();
      sub_1C5DEA0B4();
      OUTLINED_FUNCTION_40_6();
      if (v22 && v126 == v127)
      {

        v130 = v5;
      }

      else
      {
        v129 = OUTLINED_FUNCTION_20_14();

        v130 = v5;
        if ((v129 & 1) == 0)
        {
          goto LABEL_205;
        }
      }

      if ((sub_1C5D5F6BC(v3 | (v182 << 32) | (v4 << 40), v130, v173, v177) & 1) == 0 || !sub_1C5DD4324(v6 | (v7 << 8) | (v8 << 16), v170))
      {
        goto LABEL_205;
      }

      type metadata accessor for EventTime();
      v119 = v9;
      v120 = v168;
      goto LABEL_137;
    case 0x17:
      OUTLINED_FUNCTION_3_22();
      if (v117 != 23)
      {
        goto LABEL_205;
      }

      v118 = *v116;
      OUTLINED_FUNCTION_24_12();
      type metadata accessor for EventTime();
      v119 = v1;
      v120 = v118;
      goto LABEL_137;
    case 0x18:
      OUTLINED_FUNCTION_3_22();
      if (v16 != 24 || *v12 != COERCE_DOUBLE(v13 & 0xFFFFFFFF000000FFLL | ((*&v15 & 0xFFFFFFLL) << 8) | (v14 << 32)))
      {
        goto LABEL_205;
      }

      v17 = *(v12 + 24);
      v18 = *(v12 + 32);
      v178 = *(v12 + 16);
      swift_getObjectType();
      sub_1C5DEA0B4();
      v20 = v19;
      swift_getObjectType();
      sub_1C5DEA0B4();
      OUTLINED_FUNCTION_39_5();
      v22 = v22 && v20 == v21;
      if (v22)
      {
      }

      else
      {
        OUTLINED_FUNCTION_38_6();
        v23 = OUTLINED_FUNCTION_71();

        if ((v23 & 1) == 0)
        {
          goto LABEL_205;
        }
      }

      type metadata accessor for EventTime();
      if (!sub_1C5D5E6A4(v9, v18))
      {
        goto LABEL_205;
      }

      v158 = v6 | (v7 << 8) | (v8 << 16);
      if (v158 == 2 || v158 == 1 || (v17 - 1) <= 1 || !v158 || !v17)
      {
        goto LABEL_205;
      }

      if (v5 == v178 && v158 == v17)
      {
        goto LABEL_205;
      }

LABEL_26:
      OUTLINED_FUNCTION_43_8();

      sub_1C6017860();
      return;
    case 0x19:
      OUTLINED_FUNCTION_3_22();
      if (v54 != 25 || *(v53 + 8) != *&v3)
      {
        goto LABEL_205;
      }

      OUTLINED_FUNCTION_24_12();
      v52 = *(v55 + 16);
      goto LABEL_88;
    case 0x1ALL:
      OUTLINED_FUNCTION_3_22();
      if (v132 != 26 || *(v131 + 8) != *&v3)
      {
        goto LABEL_205;
      }

      OUTLINED_FUNCTION_24_12();
      v134 = *(v133 + 48);
      swift_getObjectType();
      sub_1C5DEA0B4();
      v136 = v135;
      swift_getObjectType();
      sub_1C5DEA0B4();
      OUTLINED_FUNCTION_40_6();
      if (v22 && v136 == v137)
      {
      }

      else
      {
        v139 = OUTLINED_FUNCTION_71();

        if ((v139 & 1) == 0)
        {
          goto LABEL_205;
        }
      }

      type metadata accessor for EventTime();
      v119 = v11;
      v120 = v134;
      goto LABEL_137;
    case 0x1BLL:
      OUTLINED_FUNCTION_26_8();
      if (v26 != 27)
      {
        goto LABEL_205;
      }

LABEL_46:
      if (((v25 ^ *v24) & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_205;
    case 0x1CLL:
      OUTLINED_FUNCTION_3_22();
      if (v50 != 28)
      {
        goto LABEL_205;
      }

      OUTLINED_FUNCTION_21_13();
      if (!v22)
      {
        goto LABEL_205;
      }

LABEL_47:
      v52 = *(v24 + 2);
LABEL_88:
      swift_getObjectType();
      sub_1C5DEA0B4();
      v101 = v100;
      swift_getObjectType();
      sub_1C5DEA0B4();
      OUTLINED_FUNCTION_40_6();
      if (v22 && v101 == v102)
      {
        goto LABEL_94;
      }

      v104 = OUTLINED_FUNCTION_20_14();

      if ((v104 & 1) == 0)
      {
        goto LABEL_205;
      }

      goto LABEL_136;
    case 0x1DLL:
      OUTLINED_FUNCTION_25_9();
      if (v40 == 29 && (v10 != *(v39 + 40) || v11 != *(v39 + 48)))
      {
        goto LABEL_26;
      }

      goto LABEL_205;
    case 0x1ELL:
      OUTLINED_FUNCTION_3_22();
      if (v63 != 30)
      {
        goto LABEL_205;
      }

      v64 = v62;
      OUTLINED_FUNCTION_24_12();
      v67 = *v65;
      v66 = v65[1];
      v52 = v65[2];
      if (v1)
      {
        swift_getObjectType();
        v68 = sub_1C5DEA0B4();
        v70 = v69;
        if (!v67)
        {
          if (v69)
          {
            goto LABEL_204;
          }

          goto LABEL_188;
        }

        v71 = v68;
      }

      else
      {
        if (!v67)
        {
          goto LABEL_188;
        }

        v70 = 0;
        v71 = 0;
      }

      swift_getObjectType();
      v154 = sub_1C5DEA0B4();
      if (v70)
      {
        if (!v155)
        {
          goto LABEL_204;
        }

        if (v71 == v154 && v70 == v155)
        {
        }

        else
        {
          v157 = OUTLINED_FUNCTION_71();

          if ((v157 & 1) == 0)
          {
            goto LABEL_205;
          }
        }
      }

      else if (v155)
      {
        goto LABEL_204;
      }

LABEL_188:
      if (v3 | (v64 << 32) | (v4 << 40))
      {
        swift_getObjectType();
        v159 = sub_1C5DEA0B4();
        v161 = v160;
        if (!v66)
        {
          if (!v160)
          {
            goto LABEL_136;
          }

          goto LABEL_204;
        }

        v162 = v159;
      }

      else
      {
        if (!v66)
        {
          goto LABEL_136;
        }

        v161 = 0;
        v162 = 0;
      }

      swift_getObjectType();
      v163 = sub_1C5DEA0B4();
      if (v161)
      {
        if (v164)
        {
          if (v162 == v163 && v161 == v164)
          {
LABEL_94:
          }

          else
          {
            v166 = OUTLINED_FUNCTION_71();

            if ((v166 & 1) == 0)
            {
              goto LABEL_205;
            }
          }

LABEL_136:
          type metadata accessor for EventTime();
          v119 = v5;
          v120 = v52;
          goto LABEL_137;
        }
      }

      else if (!v164)
      {
        goto LABEL_136;
      }

LABEL_204:

LABEL_205:
      OUTLINED_FUNCTION_43_8();
      return;
    case 0x1FLL:
      OUTLINED_FUNCTION_3_22();
      if (v38 != 31)
      {
        goto LABEL_205;
      }

      goto LABEL_123;
    case 0x20:
      OUTLINED_FUNCTION_26_8();
      if (v151 == 32 && *v58 == COERCE_FLOAT(v149 | (v150 << 8)))
      {
        goto LABEL_133;
      }

      goto LABEL_205;
    case 0x22:
      OUTLINED_FUNCTION_3_22();
      if (v140 != 34)
      {
        goto LABEL_205;
      }

LABEL_123:
      v141 = v37;
      v142 = *(v36 + 8);
      OUTLINED_FUNCTION_24_12();
      swift_getObjectType();
      v143 = sub_1C5DEA0B4();
      v145 = v144;
      swift_getObjectType();
      if (v143 == sub_1C5DEA0B4() && v145 == v146)
      {
      }

      else
      {
        v148 = OUTLINED_FUNCTION_71();

        if ((v148 & 1) == 0)
        {
          goto LABEL_205;
        }
      }

      type metadata accessor for EventTime();
      v119 = v3 | (v141 << 32) | (v4 << 40);
      v120 = v142;
      goto LABEL_137;
    case 0x23:
      OUTLINED_FUNCTION_3_22();
      if (v44 != 35)
      {
        goto LABEL_205;
      }

      OUTLINED_FUNCTION_21_13();
      if (!v22)
      {
        goto LABEL_205;
      }

      v47 = v45[2];
      v48 = v45[3];
      if (v5)
      {
        if (!v47)
        {
          goto LABEL_205;
        }

        v49 = (v3 | (v46 << 32) | (v4 << 40)) == v45[1] && v5 == v47;
        if (!v49 && (sub_1C6017860() & 1) == 0)
        {
          goto LABEL_205;
        }
      }

      else if (v47)
      {
        goto LABEL_205;
      }

      v152 = v6 | (v7 << 8) | (v8 << 16);
LABEL_134:
      type metadata accessor for EventTime();
      v119 = v152;
      v120 = v48;
LABEL_137:
      sub_1C5D5E6A4(v119, v120);
      goto LABEL_205;
    case 0x24:
      OUTLINED_FUNCTION_3_22();
      if (v57 != 36)
      {
        goto LABEL_205;
      }

      OUTLINED_FUNCTION_21_13();
      if (!v22)
      {
        goto LABEL_205;
      }

LABEL_133:
      v152 = v3 | (v59 << 32) | (v4 << 40);
      v48 = *(v58 + 8);
      goto LABEL_134;
    default:
      goto LABEL_205;
  }
}

uint64_t sub_1C5D5F6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 2)
  {
    return a4 == 2;
  }

  if (a2 == 1)
  {
    return a4 == 1;
  }

  if ((a4 - 1) < 2)
  {
    return 0;
  }

  v4 = (a2 | a4) == 0;
  if (!a2 || !a4)
  {
    return v4;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  return sub_1C6017860();
}

uint64_t sub_1C5D5F72C()
{
  v1 = *v0;
  v2 = *(v0 + 1) | (v0[3] << 16);
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = v0[12];
  v6 = *(v0 + 13) | (v0[15] << 16);
  v7 = v0[24];
  v8 = *(v0 + 8);
  switch((v8 >> 58) & 0x3C | (v8 >> 1) & 3)
  {
    case 1uLL:
      OUTLINED_FUNCTION_28_7();
      OUTLINED_FUNCTION_8_17();
      sub_1C6017540();
      v191 = v189;
      MEMORY[0x1C69534E0](0x6944726579616C70, 0xEF203A6C69614664);
      if (v8)
      {
        swift_getErrorValue();
        *(&v190 + 1) = v159;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v189);
        (*(*(v159 - 8) + 16))(boxed_opaque_existential_0);
      }

      else
      {
        v189 = 0u;
        v190 = 0u;
      }

      DefaultStringInterpolation.appendInterpolation(describing:default:)(&v189, 7104878, 0xE300000000000000);
      sub_1C5CBCF4C(&v189);
      v87 = OUTLINED_FUNCTION_1_26();
      MEMORY[0x1C69534E0](v87);
      goto LABEL_100;
    case 2uLL:
      OUTLINED_FUNCTION_9_17();
      sub_1C6017540();
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_5_22();
      v31 = v30 | 0x20;
      v33 = v32 | 0x8000000000000000;
      goto LABEL_70;
    case 3uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0x11uLL:
    case 0x1FuLL:
    case 0x22uLL:
      OUTLINED_FUNCTION_0_33();
      sub_1C6017540();
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_13_12();
      MEMORY[0x1C69534E0]();
      swift_getObjectType();
      *&v191 = v3;
      sub_1C6017830();
      goto LABEL_54;
    case 4uLL:
    case 5uLL:
      OUTLINED_FUNCTION_28_7();
      OUTLINED_FUNCTION_8_17();
      OUTLINED_FUNCTION_17_10();
      sub_1C6017540();
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_13_12();
      MEMORY[0x1C69534E0]();
      swift_getObjectType();
      OUTLINED_FUNCTION_10_16();
      sub_1C6017830();
      OUTLINED_FUNCTION_15_12();
      swift_getErrorValue();
      goto LABEL_68;
    case 6uLL:
      OUTLINED_FUNCTION_28_7();
      OUTLINED_FUNCTION_8_17();
      OUTLINED_FUNCTION_17_10();
      sub_1C6017540();
      OUTLINED_FUNCTION_11_11();
      v51 = OUTLINED_FUNCTION_6_19();
      MEMORY[0x1C69534E0](v51);
      swift_getObjectType();
      OUTLINED_FUNCTION_10_16();
      sub_1C6017830();
      OUTLINED_FUNCTION_15_12();
      swift_getErrorValue();
      goto LABEL_68;
    case 0xAuLL:
      OUTLINED_FUNCTION_28_7();
      OUTLINED_FUNCTION_7_18();
      sub_1C6017540();
      OUTLINED_FUNCTION_11_11();
      v22 = OUTLINED_FUNCTION_6_19();
      goto LABEL_52;
    case 0xBuLL:
      OUTLINED_FUNCTION_28_7();
      OUTLINED_FUNCTION_7_18();
      sub_1C6017540();
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_13_12();
LABEL_52:
      MEMORY[0x1C69534E0](v22);
      swift_getObjectType();
      OUTLINED_FUNCTION_10_16();
      sub_1C6017830();
      MEMORY[0x1C69534E0](2108704, 0xE300000000000000);
      sub_1C6016D10();
      OUTLINED_FUNCTION_41_4();
      goto LABEL_70;
    case 0xFuLL:
      OUTLINED_FUNCTION_7_18();
      sub_1C6017540();
      OUTLINED_FUNCTION_11_11();
      v34 = OUTLINED_FUNCTION_6_19();
      MEMORY[0x1C69534E0](v34);
      swift_getObjectType();
      OUTLINED_FUNCTION_10_16();
      sub_1C6017830();
      MEMORY[0x1C69534E0](0x6C706D6F63202D20, 0xED00002064657465);
      if (v1)
      {
        v35 = 1702195828;
      }

      else
      {
        v35 = 0x65736C6166;
      }

      if (v1)
      {
        v36 = 0xE400000000000000;
      }

      else
      {
        v36 = 0xE500000000000000;
      }

      MEMORY[0x1C69534E0](v35, v36);

      goto LABEL_69;
    case 0x10uLL:
      OUTLINED_FUNCTION_18_11();
      *&v189 = v19 + 16;
      *(&v189 + 1) = v18;
      sub_1C5D5EA28();
      v20 = sub_1C5D5E764();
      MEMORY[0x1C69534E0](v20);

      goto LABEL_72;
    case 0x12uLL:
      OUTLINED_FUNCTION_7_18();
      sub_1C6017540();
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_13_12();
      MEMORY[0x1C69534E0]();
      if (v1)
      {
        v52 = 1702195828;
      }

      else
      {
        v52 = 0x65736C6166;
      }

      if (v1)
      {
        v53 = 0xE400000000000000;
      }

      else
      {
        v53 = 0xE500000000000000;
      }

      MEMORY[0x1C69534E0](v52, v53);

      v54 = 0x203A6D657469202CLL;
      v55 = 0xE800000000000000;
      goto LABEL_67;
    case 0x13uLL:
      OUTLINED_FUNCTION_27_11();
      v65 = v64;
      sub_1C6017540();
      OUTLINED_FUNCTION_11_11();
      v66 = OUTLINED_FUNCTION_6_19();
      MEMORY[0x1C69534E0](v66);
      swift_getObjectType();
      OUTLINED_FUNCTION_30_11();
      v67 = OUTLINED_FUNCTION_23_9();
      MEMORY[0x1C69534E0](v67, 0xEA00000000003A6ELL);
      MEMORY[0x1C69534E0](v4 | (v5 << 32) | (v6 << 40), v65);
      goto LABEL_54;
    case 0x14uLL:
      v38 = *(v0 + 2);
      OUTLINED_FUNCTION_27_11();
      v41 = v40 | (v39 << 16);
      sub_1C6017540();
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_13_12();
      MEMORY[0x1C69534E0]();
      swift_getObjectType();
      OUTLINED_FUNCTION_30_11();
      v42 = OUTLINED_FUNCTION_12_16();
      MEMORY[0x1C69534E0](v42);
      OUTLINED_FUNCTION_35_8();
      sub_1C6016D30();
      OUTLINED_FUNCTION_13_12();
      MEMORY[0x1C69534E0]();
      if (v5)
      {
        v43 = 1702195828;
      }

      else
      {
        v43 = 0x65736C6166;
      }

      if (v5)
      {
        v44 = 0xE400000000000000;
      }

      else
      {
        v44 = 0xE500000000000000;
      }

      MEMORY[0x1C69534E0](v43, v44);

      OUTLINED_FUNCTION_22_11();
      OUTLINED_FUNCTION_42_7();
      if (v41 == 1)
      {
        goto LABEL_102;
      }

      if (v41 == 2)
      {
        goto LABEL_39;
      }

      v126 = v38;
      OUTLINED_FUNCTION_4_23();
      *&v191 = v127;
      *(&v191 + 1) = v128;
      if (v41)
      {
        v129 = v41;
      }

      else
      {
        sub_1C5D5D56C(v38, 0);
        v129 = 0xE400000000000000;
        v126 = 1280070990;
      }

      MEMORY[0x1C69534E0](v126, v129);

      goto LABEL_118;
    case 0x15uLL:
      v45 = *(v0 + 4);
      OUTLINED_FUNCTION_37_4();
      OUTLINED_FUNCTION_9_17();
      v47 = v46;
      v49 = v48;
      sub_1C6017540();
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_13_12();
      MEMORY[0x1C69534E0]();
      swift_getObjectType();
      OUTLINED_FUNCTION_31_5();
      v50 = OUTLINED_FUNCTION_12_16();
      MEMORY[0x1C69534E0](v50);
      OUTLINED_FUNCTION_35_8();
      sub_1C6016D30();
      OUTLINED_FUNCTION_13_12();
      MEMORY[0x1C69534E0]();
      *&v191 = v47;
      BYTE8(v191) = v7 & 1;
      sub_1C5C67444(0, &unk_1EC1A93F0);
      sub_1C6017650();
      OUTLINED_FUNCTION_13_12();
      MEMORY[0x1C69534E0]();
      OUTLINED_FUNCTION_36_5();

      OUTLINED_FUNCTION_22_11();
      OUTLINED_FUNCTION_42_7();
      if (v49 == 1)
      {
LABEL_102:
        OUTLINED_FUNCTION_14_16();
      }

      else if (v49 == 2)
      {
LABEL_39:
        OUTLINED_FUNCTION_19_14();
      }

      else
      {
        v130 = v45;
        OUTLINED_FUNCTION_4_23();
        *&v191 = v132;
        *(&v191 + 1) = v133;
        if (v131)
        {
          v134 = v131;
        }

        else
        {
          sub_1C5D5D56C(v45, 0);
          v134 = 0xE400000000000000;
          v130 = 1280070990;
        }

        MEMORY[0x1C69534E0](v130, v134);
      }

LABEL_118:
      OUTLINED_FUNCTION_36_5();

      v140 = OUTLINED_FUNCTION_1_26();
      MEMORY[0x1C69534E0](v140);
      break;
    case 0x16uLL:
      OUTLINED_FUNCTION_37_4();
      v62 = v61;
      *&v189 = 0;
      *(&v189 + 1) = 0xE000000000000000;
      OUTLINED_FUNCTION_17_10();
      sub_1C6017540();
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_13_12();
      MEMORY[0x1C69534E0]();
      swift_getObjectType();
      OUTLINED_FUNCTION_31_5();
      v63 = OUTLINED_FUNCTION_22_11();
      MEMORY[0x1C69534E0](v63, v62);
      if (v3 == 1)
      {
        OUTLINED_FUNCTION_14_16();
      }

      else if (v3 == 2)
      {
        OUTLINED_FUNCTION_19_14();
      }

      else
      {
        v135 = v4 | (v5 << 32) | (v6 << 40);
        OUTLINED_FUNCTION_4_23();
        *&v191 = v137;
        *(&v191 + 1) = v138;
        if (v136)
        {
          v139 = v136;
        }

        else
        {
          sub_1C5D5D56C(v135, 0);
          v139 = 0xE400000000000000;
          v135 = 1280070990;
        }

        MEMORY[0x1C69534E0](v135, v139);
      }

      OUTLINED_FUNCTION_36_5();

      v141 = OUTLINED_FUNCTION_23_9();
      MEMORY[0x1C69534E0](v141, v62 + 9);
      v142 = sub_1C5DD43F0();
      MEMORY[0x1C69534E0](v142);

      goto LABEL_54;
    case 0x17uLL:
      OUTLINED_FUNCTION_18_11();
      *&v189 = v69 + 15;
      *(&v189 + 1) = v68;
      break;
    case 0x18uLL:
      v24 = *(v0 + 2);
      OUTLINED_FUNCTION_27_11();
      v27 = v26 | (v25 << 16);
      sub_1C6017540();
      OUTLINED_FUNCTION_11_11();
      v28 = OUTLINED_FUNCTION_6_19();
      MEMORY[0x1C69534E0](v28);
      sub_1C6016D10();
      v29 = OUTLINED_FUNCTION_16_12();
      MEMORY[0x1C69534E0](v29);
      swift_getObjectType();
      OUTLINED_FUNCTION_30_11();
      OUTLINED_FUNCTION_33_3();
      if (v27 == 1)
      {
        OUTLINED_FUNCTION_14_16();
      }

      else if (v27 == 2)
      {
        OUTLINED_FUNCTION_19_14();
      }

      else
      {
        v122 = v24;
        OUTLINED_FUNCTION_4_23();
        *&v191 = v123;
        *(&v191 + 1) = v124;
        if (v27)
        {
          v125 = v27;
        }

        else
        {
          sub_1C5D5D56C(v24, 0);
          v125 = 0xE400000000000000;
          v122 = 1280070990;
        }

        MEMORY[0x1C69534E0](v122, v125);
      }

      OUTLINED_FUNCTION_36_5();

      MEMORY[0x1C69534E0](0x53656D6974202D5DLL, 0xED00003A706D6174);
      break;
    case 0x19uLL:
      OUTLINED_FUNCTION_28_7();
      OUTLINED_FUNCTION_7_18();
      sub_1C6017540();
      OUTLINED_FUNCTION_11_11();
      v23 = OUTLINED_FUNCTION_6_19();
      MEMORY[0x1C69534E0](v23);
      OUTLINED_FUNCTION_35_8();
      sub_1C6016D30();
      goto LABEL_66;
    case 0x1AuLL:
      OUTLINED_FUNCTION_37_4();
      OUTLINED_FUNCTION_27_11();
      v82 = v81 | (v80 << 16);
      v84 = v83;

      sub_1C6017540();
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_13_12();
      MEMORY[0x1C69534E0]();
      OUTLINED_FUNCTION_35_8();
      sub_1C6016D30();
      v85 = OUTLINED_FUNCTION_16_12();
      MEMORY[0x1C69534E0](v85);
      swift_getObjectType();
      OUTLINED_FUNCTION_31_5();
      OUTLINED_FUNCTION_33_3();
      MEMORY[0x1C69534E0](v84, v82);
      MEMORY[0x1C69534E0](0x636974726170202CLL, 0xEF203A746E617069);
      OUTLINED_FUNCTION_36_5();

      OUTLINED_FUNCTION_41_4();
      goto LABEL_70;
    case 0x1BuLL:
      OUTLINED_FUNCTION_7_18();
      sub_1C6017540();
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_13_12();
      MEMORY[0x1C69534E0]();
      if (v1)
      {
        v15 = 1702195828;
      }

      else
      {
        v15 = 0x65736C6166;
      }

      if (v1)
      {
        v16 = 0xE400000000000000;
      }

      else
      {
        v16 = 0xE500000000000000;
      }

      v17 = v16;
      goto LABEL_65;
    case 0x1CuLL:
      OUTLINED_FUNCTION_2_21();
      sub_1C6017540();
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_13_12();
      MEMORY[0x1C69534E0]();
      type metadata accessor for Description();
      v15 = sub_1C5DCA478(v1 & 0xFFFFFFFF000000FFLL | ((*&v2 & 0xFFFFFFLL) << 8) | (v3 << 32));
LABEL_65:
      MEMORY[0x1C69534E0](v15, v17);

LABEL_66:
      v54 = OUTLINED_FUNCTION_16_12();
LABEL_67:
      MEMORY[0x1C69534E0](v54, v55);
      swift_getObjectType();
      OUTLINED_FUNCTION_10_16();
LABEL_68:
      sub_1C6017830();
      goto LABEL_69;
    case 0x1DuLL:
      v146 = *(v0 + 5);
      v150 = *(v0 + 6);
      v154 = *(v0 + 4);
      v72 = *(v0 + 2);
      v73 = v0[56];
      v74 = v4 | (v5 << 32) | (v6 << 40);
      OUTLINED_FUNCTION_9_17();
      sub_1C6017540();
      v191 = v189;
      OUTLINED_FUNCTION_5_22();
      MEMORY[0x1C69534E0](v75 - 2, v76 | 0x8000000000000000);
      if (v1)
      {
        v77 = 1702195828;
      }

      else
      {
        v77 = 0x65736C6166;
      }

      if (v1)
      {
        v78 = 0xE400000000000000;
      }

      else
      {
        v78 = 0xE500000000000000;
      }

      MEMORY[0x1C69534E0](v77, v78);

      MEMORY[0x1C69534E0](0x20726F6620, 0xE500000000000000);
      if (v74)
      {
        ObjectType = swift_getObjectType();
      }

      else
      {
        ObjectType = 0;
        *(&v189 + 1) = 0;
        *&v190 = 0;
      }

      *(&v190 + 1) = ObjectType;
      v106 = swift_unknownObjectRetain();
      OUTLINED_FUNCTION_32_4(v106, v107, v108, v109, v110, v111, v112, v113, v143, v146, v150, v154, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v74);
      sub_1C5CBCF4C(&v189);
      MEMORY[0x1C69534E0](0x69737361505B2029, 0xEB000000003A6576);
      if (v73)
      {
        v114 = 1702195828;
      }

      else
      {
        v114 = 0x65736C6166;
      }

      if (v73)
      {
        v115 = 0xE400000000000000;
      }

      else
      {
        v115 = 0xE500000000000000;
      }

      MEMORY[0x1C69534E0](v114, v115);

      v192.value = MEMORY[0x1C69534E0](2108704, 0xE300000000000000);
      v192.is_nil = v72;
      DefaultStringInterpolation.appendInterpolation(time:)(v192);
      MEMORY[0x1C69534E0](540945696, 0xE400000000000000);
      sub_1C5D5CCF8();
      v116 = swift_allocObject();
      v117 = MEMORY[0x1E69E63B0];
      *(v116 + 16) = xmmword_1C60311E0;
      v118 = MEMORY[0x1E69E6438];
      *(v116 + 56) = v117;
      *(v116 + 64) = v118;
      *(v116 + 32) = v156;
      v119 = sub_1C6016960();
      MEMORY[0x1C69534E0](v119);

      MEMORY[0x1C69534E0](0x69746E656469205DLL, 0xED00003A72656966);
      MEMORY[0x1C69534E0](v148, v152);
      v120 = OUTLINED_FUNCTION_1_26();
      MEMORY[0x1C69534E0](v120);
      goto LABEL_100;
    case 0x1EuLL:
      v57 = v1 & 0xFFFFFFFF000000FFLL | ((*&v2 & 0xFFFFFFLL) << 8);
      OUTLINED_FUNCTION_2_21();
      sub_1C6017540();
      v191 = v189;
      OUTLINED_FUNCTION_5_22();
      MEMORY[0x1C69534E0](v58 | 1, v59 | 0x8000000000000000);
      if (v57 | (v3 << 32))
      {
        v60 = swift_getObjectType();
      }

      else
      {
        v60 = 0;
        *(&v189 + 1) = 0;
        *&v190 = 0;
      }

      *(&v190 + 1) = v60;
      v88 = swift_unknownObjectRetain();
      OUTLINED_FUNCTION_32_4(v88, v89, v90, v91, v92, v93, v94, v95, v143, v145, v149, v153, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v57);
      sub_1C5CBCF4C(&v189);
      MEMORY[0x1C69534E0](540945696, 0xE400000000000000);
      if (v8)
      {
        v96 = swift_getObjectType();
      }

      else
      {
        v96 = 0;
        *(&v189 + 1) = 0;
        *&v190 = 0;
      }

      *&v189 = v8;
      *(&v190 + 1) = v96;
      v97 = swift_unknownObjectRetain();
      OUTLINED_FUNCTION_32_4(v97, v98, v99, v100, v101, v102, v103, v104, v144, v147, v151, v155, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v189);
      sub_1C5CBCF4C(&v189);
      v105 = OUTLINED_FUNCTION_1_26();
      MEMORY[0x1C69534E0](v105);
LABEL_100:
      v121 = sub_1C5D5E764();
      MEMORY[0x1C69534E0](v121);

      return v191;
    case 0x20uLL:
      OUTLINED_FUNCTION_9_17();
      sub_1C6017540();
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_13_12();
      goto LABEL_58;
    case 0x21uLL:
      OUTLINED_FUNCTION_28_7();
      OUTLINED_FUNCTION_7_18();
      sub_1C6017540();
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_13_12();
      MEMORY[0x1C69534E0]();
      swift_getObjectType();
      OUTLINED_FUNCTION_10_16();
      sub_1C6017830();
      v21 = OUTLINED_FUNCTION_12_16();
LABEL_58:
      MEMORY[0x1C69534E0](v21);
      OUTLINED_FUNCTION_35_8();
      sub_1C6016D30();
LABEL_69:
      v31 = OUTLINED_FUNCTION_1_26();
      goto LABEL_70;
    case 0x23uLL:
      OUTLINED_FUNCTION_37_4();
      if (v11)
      {
        OUTLINED_FUNCTION_7_18();
        sub_1C6017540();
        OUTLINED_FUNCTION_11_11();
        OUTLINED_FUNCTION_13_12();
        MEMORY[0x1C69534E0]();
        type metadata accessor for Description();
        v12 = sub_1C5DCAB54(v1);
        MEMORY[0x1C69534E0](v12);

        v13 = OUTLINED_FUNCTION_23_9();
        MEMORY[0x1C69534E0](v13, v14 + 9);
        MEMORY[0x1C69534E0](v4 | (v5 << 32) | (v6 << 40), v3);
      }

      else
      {
        *&v189 = 0xD00000000000001CLL;
        *(&v189 + 1) = 0x80000001C604D560;
        type metadata accessor for Description();
        v86 = sub_1C5DCAB54(v1);
        MEMORY[0x1C69534E0](v86);
      }

      v31 = 0x53656D6974202D20;
      v33 = 0xEE00203A706D6174;
LABEL_70:
      MEMORY[0x1C69534E0](v31, v33);
      break;
    case 0x24uLL:
      OUTLINED_FUNCTION_9_17();
      sub_1C6017540();
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_13_12();
      MEMORY[0x1C69534E0]();
      LOBYTE(v191) = v1;
      BYTE3(v191) = BYTE2(v2);
      *(&v191 + 1) = v2;
      DWORD1(v191) = v3;
      type metadata accessor for RenderingMode();
      sub_1C6017650();
LABEL_54:
      v56 = OUTLINED_FUNCTION_1_26();
      MEMORY[0x1C69534E0](v56);
      break;
    default:
      OUTLINED_FUNCTION_9_17();
      sub_1C6017540();

      OUTLINED_FUNCTION_18_11();
      *&v189 = v10 + 10;
      *(&v189 + 1) = v9;
      break;
  }

  v70 = sub_1C5D5E764();
  MEMORY[0x1C69534E0](v70);
LABEL_72:

  return v189;
}

uint64_t sub_1C5D60B4C(uint64_t a1, unint64_t a2)
{
  if (a2 == 1)
  {
    return 0x726579616C70;
  }

  if (a2 == 2)
  {
    return 1919251317;
  }

  OUTLINED_FUNCTION_4_23();
  v7 = v5;
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    sub_1C5D5D56C(a1, 0);
    v6 = 0xE400000000000000;
    a1 = 1280070990;
  }

  MEMORY[0x1C69534E0](a1, v6);

  return v7;
}

unint64_t sub_1C5D60C10()
{
  result = qword_1ED7DCAC0;
  if (!qword_1ED7DCAC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED7DCAC0);
  }

  return result;
}

uint64_t sub_1C5D60C6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5D60CD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_1C5D60D24(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_14()
{

  return sub_1C6017860();
}

void OUTLINED_FUNCTION_36_5()
{

  JUMPOUT(0x1C69534E0);
}

void OUTLINED_FUNCTION_42_7()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t sub_1C5D60EE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 121;
    *(result + 8) = 0;
    if (a3 >= 0x79)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C5D60F84(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C5D60FC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5D61014(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  v2 = (v5 | v6) == 0;
  if (!v5 || !v6)
  {
    return v2;
  }

  if (*(a1 + 24) == *(a2 + 24) && v5 == v6)
  {
    return 1;
  }

  return sub_1C6017860();
}

BOOL sub_1C5D61098(double a1, double a2)
{
  swift_getObjectType();
  v4 = sub_1C5DEA0B4();
  v6 = v5;
  swift_getObjectType();
  if (v4 == sub_1C5DEA0B4() && v6 == v7)
  {

    return a1 == a2;
  }

  v9 = sub_1C6017860();

  result = 0;
  if (v9)
  {
    return a1 == a2;
  }

  return result;
}

BOOL sub_1C5D6116C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, unint64_t a8)
{
  result = 0;
  switch(a4 >> 61)
  {
    case 1uLL:
      if (a8 >> 61 == 1)
      {
        goto LABEL_11;
      }

      return 0;
    case 2uLL:
      if (a8 >> 61 == 2)
      {
        goto LABEL_11;
      }

      return 0;
    case 3uLL:
      if (a8 >> 61 != 3)
      {
        return 0;
      }

      if ((a5 ^ a1))
      {
        return 0;
      }

      type metadata accessor for RouteMetadata();
      if ((sub_1C5D61014(a2, a6) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    case 4uLL:
      return result;
    case 5uLL:
      if (a8 >> 61 != 5)
      {
        return 0;
      }

      type metadata accessor for EventTime();
      if (!sub_1C5D5E6A4(a4 & 0x1FFFFFFFFFFFFFFFLL, a8 & 0x1FFFFFFFFFFFFFFFLL))
      {
        return 0;
      }

      result = (a1 | a5) == 0;
      if (a1 && a5)
      {
        swift_unknownObjectRetain();
        sub_1C5D45E64(a7);
        v20 = sub_1C5D61098(*&a2, *&a6);
        swift_unknownObjectRelease();
        sub_1C5D45E74(a7);
        return v20;
      }

      return result;
    case 6uLL:
      if (a8 >> 61 == 6)
      {
        goto LABEL_25;
      }

      return 0;
    case 7uLL:
      if (a8 >> 61 != 7)
      {
        return 0;
      }

LABEL_25:
      type metadata accessor for EventTime();
      v17 = a1;
      v18 = a5;
      return sub_1C5D5E6A4(v17, v18);
    default:
      if (a8 >> 61)
      {
        return 0;
      }

LABEL_11:
      v16 = a1 == a5 && a2 == a6;
      if (!v16 && (sub_1C6017860() & 1) == 0)
      {
        return 0;
      }

LABEL_16:
      type metadata accessor for EventTime();
      v17 = a3;
      v18 = a7;
      return sub_1C5D5E6A4(v17, v18);
  }
}

uint64_t sub_1C5D61370(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x1FFFF3 && *(a1 + 67))
    {
      v2 = *a1 + 2097139;
    }

    else if ((((*(a1 + 66) >> 4) | (16 * ((*(a1 + 64) >> 2) & 0x3F80 | (*(a1 + 64) >> 1) | (((*(a1 + 66) >> 1) & 7) << 14)))) ^ 0x1FFFFFu) >= 0x1FFFF3)
    {
      v2 = -1;
    }

    else
    {
      v2 = ((*(a1 + 66) >> 4) | (16 * ((*(a1 + 64) >> 2) & 0x3F80 | (*(a1 + 64) >> 1) | (((*(a1 + 66) >> 1) & 7) << 14)))) ^ 0x1FFFFF;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5D613D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x1FFFF4)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 - 2097140;
    if (a3 > 0x1FFFF3)
    {
      *(result + 67) = 1;
    }
  }

  else
  {
    if (a3 > 0x1FFFF3)
    {
      *(result + 67) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 4) & 0x1FFFF) - (a2 << 17);
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 66) = (v3 >> 13) & 0xFE;
      *(result + 64) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_1C5D61470(uint64_t a1)
{
  v2 = *(a1 + 64);
  result = a1 + 64;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0xF;
  *result = v2;
  return result;
}

uint64_t sub_1C5D6148C(uint64_t a1, int a2)
{
  v3 = *(a1 + 64);
  result = a1 + 64;
  v4 = (v3 | (*(result + 2) << 16)) & 0x1010101 | (a2 << 20);
  *result = v3 & 0x101;
  *(result + 2) = BYTE2(v4);
  return result;
}

uint64_t sub_1C5D614C0(unsigned int *a1, float *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 8);
  v6 = *(a1 + 9) | (*(a1 + 11) << 16);
  v7 = *(a1 + 2);
  v8 = *(a1 + 24);
  v9 = *(a1 + 25) | ((*(a1 + 29) | (*(a1 + 31) << 16)) << 32);
  v10 = *(a1 + 4);
  v11 = *(a1 + 5);
  switch(*(a1 + 66) >> 4)
  {
    case 1:
      OUTLINED_FUNCTION_2_22();
      if (v54 != 0x100000)
      {
        goto LABEL_121;
      }

      v26 = *(v53 + 24);
      v82 = *(v53 + 16);
      v55 = *(v53 + 8);
      swift_getObjectType();
      v56 = sub_1C5DEA0B4();
      v58 = v57;
      swift_getObjectType();
      if (v56 == sub_1C5DEA0B4() && v58 == v59)
      {

        if ((v5 & 1) != (v55 & 1))
        {
          goto LABEL_121;
        }

        goto LABEL_68;
      }

      v61 = OUTLINED_FUNCTION_12_17();

      v34 = 0;
      if ((v61 & 1) != 0 && ((v5 ^ v55) & 1) == 0)
      {
        goto LABEL_68;
      }

      return v34 & 1;
    case 2:
      if (((*(a2 + 66) << 16) & 0xF00000) != 0x200000)
      {
        goto LABEL_121;
      }

      v34 = 0;
      if (*a2 != *&v3 || ((v8 ^ *(a2 + 24)) & 1) != 0)
      {
        return v34 & 1;
      }

      v49 = *(a2 + 4);
      v50 = *(a2 + 5);
LABEL_51:
      if (v10 != v49 || v11 != v50)
      {
        goto LABEL_94;
      }

      goto LABEL_97;
    case 3:
      if (((*(a2 + 66) << 16) & 0xF00000) == 0x300000 && *a2 == COERCE_DOUBLE(v3 | (v4 << 32)))
      {
        v51 = *(a2 + 3);
        v49 = *(a2 + 4);
        v50 = *(a2 + 5);
        switch(v8 | (v9 << 8))
        {
          case 0uLL:
            if (!v51)
            {
              goto LABEL_51;
            }

            goto LABEL_121;
          case 1uLL:
            if (v51 != 1)
            {
              goto LABEL_121;
            }

            goto LABEL_51;
          case 2uLL:
            if (v51 != 2)
            {
              goto LABEL_121;
            }

            goto LABEL_51;
          case 3uLL:
            if (v51 != 3)
            {
              goto LABEL_121;
            }

            goto LABEL_51;
          case 4uLL:
            if (v51 != 4)
            {
              goto LABEL_121;
            }

            goto LABEL_51;
          case 5uLL:
            if (v51 != 5)
            {
              goto LABEL_121;
            }

            goto LABEL_51;
          case 6uLL:
            if (v51 != 6)
            {
              goto LABEL_121;
            }

            goto LABEL_51;
          case 7uLL:
            if (v51 != 7)
            {
              goto LABEL_121;
            }

            goto LABEL_51;
          case 8uLL:
            if (v51 != 8)
            {
              goto LABEL_121;
            }

            goto LABEL_51;
          case 9uLL:
            if (v51 != 9)
            {
              goto LABEL_121;
            }

            goto LABEL_51;
          case 0xAuLL:
            if (v51 != 10)
            {
              goto LABEL_121;
            }

            goto LABEL_51;
          case 0xBuLL:
            if (v51 != 11)
            {
              goto LABEL_121;
            }

            goto LABEL_51;
          default:
            if (v51 < 0xC)
            {
              goto LABEL_121;
            }

            goto LABEL_51;
        }
      }

      goto LABEL_121;
    case 4:
      OUTLINED_FUNCTION_2_22();
      if (v39 != 0x400000 || *v35 != v36)
      {
        goto LABEL_121;
      }

      goto LABEL_60;
    case 5:
      OUTLINED_FUNCTION_2_22();
      if (v65 != 5242880 || (v63 | (v64 << 32)) != *v62)
      {
        goto LABEL_121;
      }

      v66 = *(v62 + 8);
      v67 = v7 == *(v62 + 16) && (v8 | (v9 << 8)) == *(v62 + 24);
      if (!v67 && (sub_1C6017860() & 1) == 0)
      {
        goto LABEL_121;
      }

      v34 = v5 ^ v66 ^ 1;
      return v34 & 1;
    case 6:
      OUTLINED_FUNCTION_2_22();
      if (v68 == 6291456)
      {
        goto LABEL_50;
      }

      goto LABEL_121;
    case 7:
      OUTLINED_FUNCTION_2_22();
      if (v52 != 7340032)
      {
        goto LABEL_121;
      }

      goto LABEL_50;
    case 8:
      OUTLINED_FUNCTION_2_22();
      if (v73 == 0x800000)
      {
        goto LABEL_59;
      }

      goto LABEL_121;
    case 9:
      OUTLINED_FUNCTION_2_22();
      if (v48 != 9437184)
      {
        goto LABEL_121;
      }

LABEL_50:
      v10 = v44 | (v47 << 32);
      v11 = v5 & 0xFFFFFFFF000000FFLL | ((*&v45 & 0xFFFFFFLL) << 8) | (v46 << 32);
      v49 = *v43;
      v50 = v43[1];
      goto LABEL_51;
    case 10:
      OUTLINED_FUNCTION_2_22();
      if (v72 != 10485760)
      {
        goto LABEL_121;
      }

LABEL_59:
      if (*v35 != COERCE_DOUBLE(v70 | (v71 << 32)))
      {
        goto LABEL_121;
      }

LABEL_60:
      if ((v5 & 0xFFFFFFFF000000FFLL | ((*&v37 & 0xFFFFFFLL) << 8) | (v38 << 32)) != *(v35 + 8) || v7 != *(v35 + 16))
      {
        goto LABEL_94;
      }

      goto LABEL_97;
    case 11:
      OUTLINED_FUNCTION_2_22();
      if (v24 != 11534336)
      {
        goto LABEL_121;
      }

      v25 = v5 & 0xFFFFFFFF000000FFLL | ((*&v22 & 0xFFFFFFLL) << 8) | (v23 << 32);
      v26 = v21[3];
      v82 = v21[2];
      v27 = v21[1];
      swift_getObjectType();
      v28 = sub_1C5DEA0B4();
      v30 = v29;
      swift_getObjectType();
      if (v28 == sub_1C5DEA0B4() && v30 == v31)
      {

        if (v25 != v27)
        {
          goto LABEL_121;
        }
      }

      else
      {
        v33 = OUTLINED_FUNCTION_12_17();

        v34 = 0;
        if ((v33 & 1) == 0 || v25 != v27)
        {
          return v34 & 1;
        }
      }

LABEL_68:
      if (v7 != v82 || (v8 | (v9 << 8)) != v26)
      {
        goto LABEL_94;
      }

      goto LABEL_97;
    case 12:
      OUTLINED_FUNCTION_2_22();
      if (v42 != 12582912 || (v40 | (v41 << 32)) != *v35)
      {
        goto LABEL_121;
      }

      goto LABEL_60;
    default:
      if (((*(a2 + 66) << 16) & 0xF00000) != 0)
      {
        goto LABEL_121;
      }

      LODWORD(v12) = v5 | (v6 << 8);
      v13 = *a2;
      v14 = *(a2 + 2);
      v15 = *(a2 + 3);
      v16 = a2[2];
      if (v3 | (v4 << 32))
      {
        swift_getObjectType();
        v17 = sub_1C5DEA0B4();
        v19 = v18;
        if (!v13)
        {
          if (!v18)
          {
            goto LABEL_89;
          }

          goto LABEL_87;
        }

        v20 = v17;
      }

      else
      {
        if (!v13)
        {
          goto LABEL_89;
        }

        v19 = 0;
        v20 = 0;
      }

      swift_getObjectType();
      v76 = sub_1C5DEA0B4();
      if (!v19)
      {
        if (!v77)
        {
          goto LABEL_89;
        }

LABEL_87:

        goto LABEL_121;
      }

      if (!v77)
      {
        goto LABEL_87;
      }

      if (v20 == v76 && v19 == v77)
      {

LABEL_89:
        if (v16 == v12)
        {
          goto LABEL_90;
        }

LABEL_121:
        v34 = 0;
        return v34 & 1;
      }

      v79 = OUTLINED_FUNCTION_12_17();

      v34 = 0;
      if ((v79 & 1) == 0 || v16 != v12)
      {
        return v34 & 1;
      }

LABEL_90:
      if (v7 == v14 && (v8 | (v9 << 8)) == v15)
      {
LABEL_97:
        v34 = 1;
        return v34 & 1;
      }

LABEL_94:

      return sub_1C6017860();
  }
}

uint64_t sub_1C5D61A88()
{
  v1 = v0[2];
  switch(*(v0 + 66) >> 4)
  {
    case 2:
    case 3:
      v1 = v0[4];
      break;
    case 4:
    case 8:
    case 10:
    case 12:
      v1 = v0[1];
      break;
    case 6:
    case 7:
    case 9:
      v1 = *v0;
      break;
    default:
      break;
  }

  return v1;
}

uint64_t sub_1C5D61B14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5D61A88();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C5D61B3C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 33);
  v9 = *(v1 + 34);
  v10 = *(v1 + 35) | (*(v1 + 39) << 32);
  v11 = *(v1 + 40);
  v12 = *(v1 + 41);
  v13 = *(v1 + 42);
  v14 = *(v1 + 43) | (*(v1 + 47) << 32);
  v15 = *(v1 + 48);
  v16 = *(v1 + 49);
  v17 = *(v1 + 50);
  v18 = *(v1 + 51) | (*(v1 + 55) << 32);
  v19 = *(v1 + 56);
  v20 = *(v1 + 64);
  v21 = *(v1 + 66);
  v22 = *(v1 + 65);
  v23 = v3;
  v24 = v5;
  switch(v21 >> 4)
  {
    case 2u:
    case 3u:
      v4 = v7 | (v8 << 8) | (v9 << 16) | (v10 << 24);
      v23 = v11 | (v12 << 8) | (v13 << 16) | (v14 << 24);
      v6 = v19;
      v7 = v20;
      v8 = v22;
      v9 = v21;
      v24 = v15 | (v16 << 8) | (v17 << 16) | (v18 << 24);
      break;
    case 4u:
    case 8u:
    case 0xAu:
    case 0xCu:
      v24 = v6;
      v6 = v7 | (v8 << 8) | (v9 << 16) | (v10 << 24);
      v23 = v5;
      v4 = v3;
      v7 = v11;
      v8 = v12;
      v9 = v13;
      break;
    case 6u:
    case 7u:
    case 9u:
      break;
    default:
      v24 = v7 | (v8 << 8) | (v9 << 16) | (v10 << 24);
      v23 = v6;
      v6 = v11 | (v12 << 8) | (v13 << 16) | (v14 << 24);
      v4 = v5;
      v7 = v15;
      v8 = v16;
      v9 = v17;
      break;
  }

  result = sub_1C5C74C28(v24);
  *a1 = v4;
  *(a1 + 8) = v23;
  *(a1 + 16) = v24;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7 & 1;
  *(a1 + 33) = v8 & 1;
  *(a1 + 34) = v9 & 1;
  return result;
}

unint64_t sub_1C5D61CD4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9) | (*(v0 + 11) << 16);
  v3 = v0[3];
  v4 = *(v0 + 2);
  v5 = *(v0 + 24);
  v6 = *(v0 + 5);
  switch(*(v0 + 66) >> 4)
  {
    case 1:
      OUTLINED_FUNCTION_49();
      sub_1C6017540();
      OUTLINED_FUNCTION_7_19();
      OUTLINED_FUNCTION_4_24();
      OUTLINED_FUNCTION_5_23();
      MEMORY[0x1C69534E0]();
      OUTLINED_FUNCTION_13_13();
      OUTLINED_FUNCTION_14_17();
      OUTLINED_FUNCTION_11_12();
      MEMORY[0x1C69534E0]();
      swift_getObjectType();
      OUTLINED_FUNCTION_17_11();
      OUTLINED_FUNCTION_11_12();
      goto LABEL_15;
    case 2:
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1C6017540();
      OUTLINED_FUNCTION_7_19();
      OUTLINED_FUNCTION_5_23();
      MEMORY[0x1C69534E0]();
      sub_1C6016D30();
      MEMORY[0x1C69534E0](32, 0xE100000000000000);
      if (v1 & 0xFFFFFFFF000000FFLL | ((*&v2 & 0xFFFFFFLL) << 8) | (v3 << 32))
      {
        sub_1C6017540();
        OUTLINED_FUNCTION_18_12();
        swift_getObjectType();
        sub_1C6017830();
        MEMORY[0x1C69534E0](32, 0xE100000000000000);
      }

      MEMORY[0x1C69534E0](0, 0xE000000000000000);

      OUTLINED_FUNCTION_5_23();
      MEMORY[0x1C69534E0](v26);
      if (v5)
      {
        v27 = 1702195828;
      }

      else
      {
        v27 = 0x65736C6166;
      }

      if (v5)
      {
        v28 = 0xE400000000000000;
      }

      else
      {
        v28 = 0xE500000000000000;
      }

      v29 = v28;
      goto LABEL_34;
    case 3:
      OUTLINED_FUNCTION_9_18();
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1C6017540();
      OUTLINED_FUNCTION_7_19();
      OUTLINED_FUNCTION_5_23();
      MEMORY[0x1C69534E0]();
      sub_1C6016D10();
      MEMORY[0x1C69534E0](8307, 0xE200000000000000);
      if (v1 | (v3 << 32))
      {
        sub_1C6017540();
        OUTLINED_FUNCTION_18_12();
        swift_getObjectType();
        sub_1C6017830();
        MEMORY[0x1C69534E0](32, 0xE100000000000000);
      }

      MEMORY[0x1C69534E0](0, 0xE000000000000000);

      MEMORY[0x1C69534E0](0x6E6F73616572202DLL, 0xEA0000000000203ALL);
      v27 = sub_1C5DD43F0();
LABEL_34:
      MEMORY[0x1C69534E0](v27, v29);

      MEMORY[0x1C69534E0](0x746E656469202D20, 0xEE003A7265696669);
      goto LABEL_35;
    case 4:
      OUTLINED_FUNCTION_49();
      sub_1C6017540();
      OUTLINED_FUNCTION_7_19();
      OUTLINED_FUNCTION_4_24();
      OUTLINED_FUNCTION_5_23();
      MEMORY[0x1C69534E0]();
      v15 = OUTLINED_FUNCTION_10_17();
      MEMORY[0x1C69534E0](v15, v4);
      OUTLINED_FUNCTION_15_13();
      OUTLINED_FUNCTION_11_12();
      MEMORY[0x1C69534E0]();
      sub_1C6016D30();
      goto LABEL_37;
    case 5:
      OUTLINED_FUNCTION_49();
      sub_1C6017540();
      OUTLINED_FUNCTION_7_19();
      OUTLINED_FUNCTION_5_23();
      MEMORY[0x1C69534E0]();
      OUTLINED_FUNCTION_13_13();
      OUTLINED_FUNCTION_8_18();
      v20 = OUTLINED_FUNCTION_10_17();
      sub_1C5C970F4(v20);
      OUTLINED_FUNCTION_5_23();
LABEL_15:
      MEMORY[0x1C69534E0]();
      if (v1)
      {
        v13 = 1702195828;
      }

      else
      {
        v13 = 0x65736C6166;
      }

      if (v1)
      {
        v21 = 0xE400000000000000;
      }

      else
      {
        v21 = 0xE500000000000000;
      }

      v14 = v21;
      goto LABEL_22;
    case 6:
      OUTLINED_FUNCTION_1_27();
      sub_1C6017540();

      OUTLINED_FUNCTION_6_20();
      v18 = v22 | 1;
      goto LABEL_24;
    case 7:
      OUTLINED_FUNCTION_1_27();
      sub_1C6017540();

      OUTLINED_FUNCTION_6_20();
      v18 = v19 + 2;
      goto LABEL_24;
    case 8:
    case 10:
      OUTLINED_FUNCTION_9_18();
      OUTLINED_FUNCTION_49();
      sub_1C6017540();
      OUTLINED_FUNCTION_7_19();
      OUTLINED_FUNCTION_5_23();
      MEMORY[0x1C69534E0](0xD000000000000022);
      v23 = OUTLINED_FUNCTION_10_17();
      MEMORY[0x1C69534E0](v23, v4);
      OUTLINED_FUNCTION_11_12();
      MEMORY[0x1C69534E0]();
      sub_1C6016D10();
      v24 = 115;
      v25 = 0xE100000000000000;
      goto LABEL_36;
    case 9:
      OUTLINED_FUNCTION_1_27();
      sub_1C6017540();

      OUTLINED_FUNCTION_6_20();
LABEL_24:
      v32 = v18;
      v33 = v17;
LABEL_35:
      v24 = OUTLINED_FUNCTION_10_17();
      v25 = v6;
LABEL_36:
      MEMORY[0x1C69534E0](v24, v25);
      goto LABEL_37;
    case 11:
      OUTLINED_FUNCTION_49();
      sub_1C6017540();
      OUTLINED_FUNCTION_7_19();
      OUTLINED_FUNCTION_4_24();
      OUTLINED_FUNCTION_5_23();
      MEMORY[0x1C69534E0]();
      OUTLINED_FUNCTION_13_13();
      OUTLINED_FUNCTION_11_12();
      MEMORY[0x1C69534E0]();
      swift_getObjectType();
      OUTLINED_FUNCTION_17_11();
      MEMORY[0x1C69534E0](0x636E617473696420, 0xEA00000000003A65);
      LOBYTE(v36) = v1;
      BYTE3(v36) = BYTE2(v2);
      *(&v36 + 1) = v2;
      HIDWORD(v36) = v3;
      v13 = sub_1C60177D0();
LABEL_22:
      MEMORY[0x1C69534E0](v13, v14);

      goto LABEL_37;
    case 12:
      OUTLINED_FUNCTION_1_27();
      sub_1C6017540();
      OUTLINED_FUNCTION_7_19();
      OUTLINED_FUNCTION_4_24();
      OUTLINED_FUNCTION_5_23();
      MEMORY[0x1C69534E0]();
      MEMORY[0x1C69534E0](v6, v4);
      OUTLINED_FUNCTION_8_18();
      v16 = OUTLINED_FUNCTION_10_17();
      sub_1C5C970F4(v16);
LABEL_37:
      result = v32;
      break;
    default:
      v7 = *v0 | (v0[1] << 32);
      v8 = v5 | ((*(v0 + 25) | ((*(v0 + 29) | (*(v0 + 31) << 16)) << 32)) << 8);
      OUTLINED_FUNCTION_49();
      sub_1C6017540();
      v36 = v32;
      v37 = v33;
      OUTLINED_FUNCTION_4_24();
      MEMORY[0x1C69534E0](v9 | 8, v10 | 0x8000000000000000);
      MEMORY[0x1C69534E0](v4, v8);
      v11 = OUTLINED_FUNCTION_14_17();
      MEMORY[0x1C69534E0](v11, 0xE800000000000000);
      if (v7)
      {
        ObjectType = swift_getObjectType();
      }

      else
      {
        ObjectType = 0;
        v33 = 0;
        v34 = 0;
      }

      v35 = ObjectType;
      v32 = v7;
      swift_unknownObjectRetain();
      DefaultStringInterpolation.appendInterpolation(describing:default:)(&v32, 7104878, 0xE300000000000000);
      sub_1C5CBCF4C(&v32);
      MEMORY[0x1C69534E0](0, 0xE000000000000000);

      v31 = OUTLINED_FUNCTION_15_13();
      MEMORY[0x1C69534E0](v31, 0xE800000000000000);
      sub_1C6016D30();
      result = v36;
      break;
  }

  return result;
}

void OUTLINED_FUNCTION_8_18()
{

  JUMPOUT(0x1C69534E0);
}

void OUTLINED_FUNCTION_18_12()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t sub_1C5D62508()
{
  v0 = sub_1C6017720();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1C5D62554(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C5D62604@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5D62508();
  *a1 = result;
  return result;
}

unint64_t sub_1C5D62634@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C5D62554(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WaitingReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C5D62740()
{
  result = qword_1EC1AB570;
  if (!qword_1EC1AB570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB570);
  }

  return result;
}

uint64_t sub_1C5D62794(void *a1)
{
  v1 = a1;
  v2 = AVAsset.isExternalContent.getter();

  return v2 & 1;
}

uint64_t AVAsset.isExternalContent.getter()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_1EC1AB578);
  swift_endAccess();
  if (v1)
  {
    sub_1C6017390();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    sub_1C5CBCF4C(v6);
    return 0;
  }

  return result;
}

void sub_1C5D62898(void *a1)
{
  v1 = a1;
  AVAsset.isExternalContent.setter();
}

void AVAsset.isExternalContent.setter()
{
  v1 = sub_1C6016B90();
  swift_beginAccess();
  objc_setAssociatedObject(v0, &unk_1EC1AB578, v1, 3);
  swift_endAccess();
}

unint64_t sub_1C5D62968()
{
  v1 = [v0 reasonForWaitingToPlay];
  if (v1)
  {
    v2 = v1;
    v3 = AVPlayerWaitingReason.description.getter();

    return v3;
  }

  else
  {
    if (qword_1EC1A9770 != -1)
    {
      OUTLINED_FUNCTION_3_23();
    }

    return AVPlayerWaitingReason.description.getter();
  }
}

unint64_t AVPlayerWaitingReason.description.getter()
{
  sub_1C6016940();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_4_25();
  v3 = v3 && v0 == v2;
  if (v3)
  {

    goto LABEL_35;
  }

  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_344();

  if (v1)
  {
LABEL_35:
    OUTLINED_FUNCTION_2_23();
    return v15 - 6;
  }

  sub_1C6016940();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_4_25();
  if (v3 && v0 == v4)
  {

    goto LABEL_38;
  }

  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_344();

  if (v1)
  {
LABEL_38:
    OUTLINED_FUNCTION_2_23();
    return v17 - 7;
  }

  sub_1C6016940();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_4_25();
  if (v3 && v0 == v6)
  {

    goto LABEL_40;
  }

  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_344();

  if (v1)
  {
LABEL_40:
    OUTLINED_FUNCTION_2_23();
    return v18 - 2;
  }

  sub_1C6016940();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_4_25();
  if (v3 && v0 == v8)
  {

    return 0xD000000000000025;
  }

  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_344();

  if (v1)
  {
    return 0xD000000000000025;
  }

  sub_1C6016940();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_4_25();
  if (v3 && v0 == v10)
  {

    return 0xD000000000000025;
  }

  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_344();

  if (v1)
  {
    return 0xD000000000000025;
  }

  if (qword_1EC1A9770 != -1)
  {
    OUTLINED_FUNCTION_3_23();
  }

  v12 = 0x6E776F6E6B6E75;
  sub_1C6016940();
  if (v1 != OUTLINED_FUNCTION_1_28() || v0 != v13)
  {
    sub_1C6017860();
  }

  return v12;
}

uint64_t sub_1C5D62C74()
{
  result = sub_1C6016900();
  qword_1EC1BE4D8 = result;
  return result;
}

uint64_t sub_1C5D62CAC()
{
  sub_1C6016940();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_4_25();
  v3 = v3 && v0 == v2;
  if (v3)
  {

    return 1;
  }

  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_344();

  if (v1)
  {
    return 1;
  }

  sub_1C6016940();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_4_25();
  if (v3 && v0 == v4)
  {

    return 2;
  }

  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_344();

  if (v1)
  {
    return 2;
  }

  v6 = sub_1C6016940();
  v8 = v7;
  if (v6 == sub_1C6016940() && v8 == v9)
  {

    return 0;
  }

  else
  {
    v11 = sub_1C6017860();

    if (v11)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1C5D62DEC()
{
  v1 = v0;
  v2 = sub_1C6015020();
  OUTLINED_FUNCTION_25();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v92 - v9;
  v11 = [v0 timebase];
  [v0 currentTime];
  v12 = v112[0];
  v13 = LODWORD(v112[1]);
  v14 = HIDWORD(v112[1]);
  v15 = v113;
  if (v11)
  {
    v96 = v8;
    v97 = v4;
    v98 = v2;
    v103 = v10;
    sub_1C6015010();
    type metadata accessor for CMClock();
    v107 = v16;
    v17 = 1;
    v105 = v11;
    v18 = v13;
    v102 = v1;
    v108 = v11;
    while (1)
    {
      v109 = sub_1C6016E20();
      v112[0] = v109;
      v101 = v18;
      v100 = v14;
      v106 = v18 | (v14 << 32);
      v19 = MEMORY[0x1C6953990](v12);
      v21 = v20;
      v23 = v22;
      if ((sub_1C6017200() & 1) == 0 || (OUTLINED_FUNCTION_22_12(), (sub_1C6016810() & 1) == 0))
      {
        v39 = OUTLINED_FUNCTION_2_24();
        v40(v39);
        OUTLINED_FUNCTION_18_13();

        OUTLINED_FUNCTION_17_12();
        v38 = 1;
LABEL_18:
        v37 = v105;
        goto LABEL_21;
      }

      v104 = v15;
      v24 = [v1 timebase];
      if (!v24)
      {
        OUTLINED_FUNCTION_18_13();
        v24 = v25;
      }

      type metadata accessor for CMTimebase();
      sub_1C5D67B38(&qword_1EC1A93D8, type metadata accessor for CMTimebase);
      if (sub_1C60152A0())
      {
        v77 = OUTLINED_FUNCTION_2_24();
        v78(v77);

        OUTLINED_FUNCTION_18_13();
        OUTLINED_FUNCTION_17_12();

        v38 = 0;
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_17_12();
      v112[0] = v26;
      v99 = v12;
      v27 = MEMORY[0x1C6953990](v12, v106, v104, v112, v107, MEMORY[0x1E69E7EA8]);
      v29 = v28;
      v31 = v30;
      OUTLINED_FUNCTION_22_12();
      sub_1C6017220();
      v33 = v32;
      sub_1C6017220();
      if (vabdd_f64(v33, v34) < 0.001)
      {
        v81 = OUTLINED_FUNCTION_2_24();
        v82(v81);

        OUTLINED_FUNCTION_18_13();
        OUTLINED_FUNCTION_17_12();

        goto LABEL_20;
      }

      if (v17 == 101)
      {
        break;
      }

      sub_1C6014FD0();
      if (v35 < -0.5)
      {
        break;
      }

      v1 = v102;
      [v102 currentTime];
      v12 = v112[0];
      v18 = LODWORD(v112[1]);
      v14 = HIDWORD(v112[1]);
      v15 = v113;
      OUTLINED_FUNCTION_17_12();

      ++v17;
      v105 = v24;
    }

    if (MSVDeviceOSIsInternalInstall())
    {
      v94 = HIDWORD(v29);
      v93 = HIDWORD(v21);
      sub_1C5C67580(0, &qword_1ED7DCB60, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C6039A80;
      strcpy(v112, "loopCount: ");
      HIDWORD(v112[1]) = -352321536;
      v110 = v17;
      v43 = sub_1C60177D0();
      MEMORY[0x1C69534E0](v43);

      v44 = v112[1];
      v45 = inited;
      *(inited + 32) = v112[0];
      *(v45 + 40) = v44;
      strcpy(v112, "startTime: ");
      HIDWORD(v112[1]) = -352321536;
      v92 = sub_1C5D67B38(&qword_1EC1A91D8, MEMORY[0x1E6969530]);
      v46 = sub_1C60177D0();
      MEMORY[0x1C69534E0](v46);

      v47 = v112[1];
      v48 = inited;
      *(inited + 48) = v112[0];
      *(v48 + 56) = v47;
      strcpy(v112, "currentTime: ");
      HIWORD(v112[1]) = -4864;
      v49 = v96;
      sub_1C6015010();
      v50 = sub_1C60177D0();
      v92 = v51;
      MEMORY[0x1C69534E0](v50);

      (*(v97 + 8))(v49, v98);
      v52 = v112[1];
      v53 = inited;
      *(inited + 64) = v112[0];
      v53[9] = v52;
      v110 = 0;
      v111 = 0xE000000000000000;
      MEMORY[0x1C69534E0](0x203A656D69547661, 0xE800000000000000);
      v112[0] = v99;
      v112[1] = __PAIR64__(v100, v101);
      v113 = v104;
      type metadata accessor for CMTime();
      v101 = v54;
      sub_1C6017650();
      OUTLINED_FUNCTION_11_13();
      v53[10] = v55;
      v53[11] = v56;
      OUTLINED_FUNCTION_26_9();
      v57 = OUTLINED_FUNCTION_41_5();
      MEMORY[0x1C69534E0](v57, 0xEB00000000203A31);
      v112[0] = v19;
      v112[1] = __PAIR64__(v93, v21);
      v113 = v23;
      sub_1C6017650();
      OUTLINED_FUNCTION_11_13();
      v53[12] = v58;
      v53[13] = v59;
      OUTLINED_FUNCTION_26_9();
      v60 = OUTLINED_FUNCTION_41_5();
      MEMORY[0x1C69534E0](v60);
      v112[0] = v27;
      v112[1] = __PAIR64__(v94, v29);
      v113 = v31;
      sub_1C6017650();
      OUTLINED_FUNCTION_11_13();
      v53[14] = v61;
      v53[15] = v62;
      v112[0] = 0;
      v112[1] = 0xE000000000000000;
      MEMORY[0x1C69534E0](0x65736162656D6974, 0xEB00000000203A31);
      OUTLINED_FUNCTION_18_13();
      v110 = v63;
      OUTLINED_FUNCTION_34_8();
      v64 = v112[1];
      v53[16] = v112[0];
      v53[17] = v64;
      v112[0] = 0;
      v112[1] = 0xE000000000000000;
      MEMORY[0x1C69534E0](0x65736162656D6974, 0xEB00000000203A32);
      v110 = v24;
      OUTLINED_FUNCTION_34_8();
      v65 = v112[1];
      v53[18] = v112[0];
      v53[19] = v65;
      v66 = objc_opt_self();
      v67 = *MEMORY[0x1E69B1340];
      v68 = sub_1C6016900();
      v69 = sub_1C6016900();
      v70 = sub_1C6016900();
      v71 = sub_1C5D1517C(v53);
      swift_setDeallocating();
      sub_1C5D67838();
      sub_1C5DC9604(v67, v68, v69, v70, 0, v71, 0, v66);
    }

    v72 = sub_1C6016E20();
    sub_1C6016E30();
    OUTLINED_FUNCTION_18_13();

    OUTLINED_FUNCTION_17_12();
    v75 = OUTLINED_FUNCTION_2_24();
    v76(v75);
LABEL_20:
    v38 = 0;
    v37 = v105;
  }

  else
  {
    v37 = 0;
    v38 = 1;
  }

LABEL_21:
  sub_1C5D643DC();
  sub_1C6017220();
  sub_1C6017220();
  type metadata accessor for EventTime();
  swift_allocObject();
  v85 = OUTLINED_FUNCTION_22_12();
  v90 = sub_1C5C8A6E0(v85, v86, v87, v38, v88, v89);

  return v90;
}

void sub_1C5D63784()
{
  OUTLINED_FUNCTION_247();
  v1 = sub_1C6016990();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_40_7();
  v2 = [v0 errorLog];
  if (!v2)
  {
    goto LABEL_20;
  }

  v3 = v2;
  v4 = [v2 events];
  sub_1C5C64D74(0, &qword_1EC1AB5C8);
  OUTLINED_FUNCTION_303();
  v5 = sub_1C6016B10();

  v6 = sub_1C5C8FEE4(v5);

  if (v6 < 1 || (v7 = sub_1C5D678BC(v3), v8 >> 60 != 15) && (v9 = v7, v10 = v8, [v3 extendedLogDataStringEncoding], sub_1C6016980(), sub_1C6016950(), v12 = v11, sub_1C5CB6098(v9, v10), v12))
  {

LABEL_20:
    OUTLINED_FUNCTION_237();
    return;
  }

  v29 = v3;
  v13 = [v3 events];
  v14 = sub_1C6016B10();

  v15 = sub_1C5C6AA20(v14);
  v16 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v15 == v16)
    {

      OUTLINED_FUNCTION_8_19(v28, &qword_1ED7DCF10, MEMORY[0x1E69E6158]);
      sub_1C5D5D054();
      sub_1C60168D0();

      goto LABEL_20;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1C6954040](v16, v14);
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v17 = *(v14 + 8 * v16 + 32);
    }

    v18 = v17;
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    v20 = sub_1C5D67920(v17, &selRef_errorComment);
    v22 = v21;

    ++v16;
    if (v22)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_28_8();
        sub_1C5D0DB30();
        v30 = v26;
      }

      v24 = *(v30 + 16);
      v23 = *(v30 + 24);
      if (v24 >= v23 >> 1)
      {
        OUTLINED_FUNCTION_128(v23);
        sub_1C5D0DB30();
        v30 = v27;
      }

      *(v30 + 16) = v24 + 1;
      v25 = v30 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      v16 = v19;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

char *sub_1C5D63A80()
{
  v4 = [v0 loadedTimeRanges];
  sub_1C5C64D74(0, &unk_1ED7DCCE0);
  v5 = sub_1C6016B10();

  v6 = sub_1C5C8FEE4(v5);
  if (v6)
  {
    v7 = v6;
    v30 = MEMORY[0x1E69E7CC0];
    result = OUTLINED_FUNCTION_47_3(v6, v6 & ~(v6 >> 63));
    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v9 = 0;
    v10 = v30;
    OUTLINED_FUNCTION_20_15();
    if ((v5 & 0xC000000000000001) == 0)
    {
      goto LABEL_5;
    }

LABEL_4:
    v11 = OUTLINED_FUNCTION_303();
    for (i = MEMORY[0x1C6954040](v11); ; i = *(v5 + 8 * v9 + 32))
    {
      v13 = i;
      [i (v2 + 998)];

      v15 = v30[1].n128_u64[0];
      v14 = v30[1].n128_u64[1];
      if (v15 >= v14 >> 1)
      {
        v16 = OUTLINED_FUNCTION_128(v14);
        OUTLINED_FUNCTION_46_3(v16);
      }

      v30[1].n128_u64[0] = v15 + 1;
      OUTLINED_FUNCTION_12_18((v30 + v15 * v3), v31, v33, v35);
      if (v1 == v9)
      {
        break;
      }

      ++v9;
      if ((v5 & 0xC000000000000001) != 0)
      {
        goto LABEL_4;
      }

LABEL_5:
      ;
    }
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v17 = v10[1].n128_i64[0];
  if (v17)
  {
    v18 = v10 + 2;
    v19 = MEMORY[0x1E69E7CC0];
    do
    {
      v32 = *v18;
      v34 = v18[1];
      v36 = v18[2];
      if (sub_1C6016810())
      {
        sub_1C6016E50();
        if (sub_1C6016810())
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = OUTLINED_FUNCTION_28_8();
            sub_1C5D0F238(v20, v21, v22);
          }

          v24 = *(v19 + 16);
          v23 = *(v19 + 24);
          if (v24 >= v23 >> 1)
          {
            v25 = OUTLINED_FUNCTION_128(v23);
            sub_1C5D0F238(v25, v24 + 1, 1);
          }

          *(v19 + 16) = v24 + 1;
          OUTLINED_FUNCTION_12_18((v19 + 48 * v24), v32, v34, v36);
        }
      }

      v18 += 3;
      --v17;
    }

    while (v17);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v26 = *(v19 + 16);
  if (v26)
  {
    v27 = v19 + 72;
    v28 = 0.0;
    do
    {
      v27 += 48;
      sub_1C6017220();
      v28 = v28 + v29;
      --v26;
    }

    while (v26);
  }
}

char *sub_1C5D63D4C(SEL *a1)
{
  v5 = [v1 *a1];
  sub_1C5C64D74(0, &unk_1ED7DCCE0);
  v6 = sub_1C6016B10();

  v7 = sub_1C5C8FEE4(v6);
  if (v7)
  {
    v8 = v7;
    v29 = MEMORY[0x1E69E7CC0];
    result = OUTLINED_FUNCTION_47_3(v7, v7 & ~(v7 >> 63));
    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v10 = 0;
    v11 = v29;
    OUTLINED_FUNCTION_20_15();
    if ((v6 & 0xC000000000000001) == 0)
    {
      goto LABEL_5;
    }

LABEL_4:
    v12 = OUTLINED_FUNCTION_303();
    for (i = MEMORY[0x1C6954040](v12); ; i = *(v6 + 8 * v10 + 32))
    {
      v14 = i;
      [i (v3 + 998)];

      v29 = v11;
      v16 = v11[1].n128_u64[0];
      v15 = v11[1].n128_u64[1];
      if (v16 >= v15 >> 1)
      {
        OUTLINED_FUNCTION_46_3((v15 > 1));
      }

      v11[1].n128_u64[0] = v16 + 1;
      OUTLINED_FUNCTION_12_18((v11 + v16 * v4), v30, v32, v34);
      if (v2 == v10)
      {
        break;
      }

      ++v10;
      if ((v6 & 0xC000000000000001) != 0)
      {
        goto LABEL_4;
      }

LABEL_5:
      ;
    }
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v17 = v11[1].n128_i64[0];
  if (v17)
  {
    v18 = v11 + 2;
    v19 = MEMORY[0x1E69E7CC0];
    do
    {
      v31 = *v18;
      v33 = v18[1];
      v35 = v18[2];
      if (sub_1C6016810())
      {
        sub_1C6016E50();
        if (sub_1C6016810())
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = OUTLINED_FUNCTION_28_8();
            sub_1C5D0F238(v20, v21, v22);
          }

          v24 = *(v19 + 16);
          v23 = *(v19 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_1C5D0F238((v23 > 1), v24 + 1, 1);
          }

          *(v19 + 16) = v24 + 1;
          OUTLINED_FUNCTION_12_18((v19 + 48 * v24), v31, v33, v35);
        }
      }

      v18 += 3;
      --v17;
    }

    while (v17);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v25 = *(v19 + 16);
  if (v25)
  {
    v26 = v19 + 32;
    v27 = -1.0;
    do
    {
      sub_1C6016E50();
      sub_1C6017220();
      if (v27 <= v28)
      {
        v27 = v28;
      }

      v26 += 48;
      --v25;
    }

    while (v25);
  }
}

char *sub_1C5D63FF0(SEL *a1)
{
  v5 = [v1 *a1];
  sub_1C5C64D74(0, &unk_1ED7DCCE0);
  OUTLINED_FUNCTION_34_4();
  v6 = sub_1C6016B10();

  v7 = sub_1C5C8FEE4(v6);
  if (v7)
  {
    v8 = v7;
    v40 = MEMORY[0x1E69E7CC0];
    result = OUTLINED_FUNCTION_47_3(v7, v7 & ~(v7 >> 63));
    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v10 = 0;
    v11 = v40;
    OUTLINED_FUNCTION_20_15();
    if ((v6 & 0xC000000000000001) == 0)
    {
      goto LABEL_5;
    }

LABEL_4:
    for (i = MEMORY[0x1C6954040](v10, v6); ; i = *(v6 + 8 * v10 + 32))
    {
      v13 = i;
      [i (v3 + 998)];

      v15 = v40[1].n128_u64[0];
      v14 = v40[1].n128_u64[1];
      if (v15 >= v14 >> 1)
      {
        OUTLINED_FUNCTION_46_3((v14 > 1));
      }

      v40[1].n128_u64[0] = v15 + 1;
      OUTLINED_FUNCTION_12_18((v40 + v15 * v4), v41, v43, v45);
      if (v2 == v10)
      {
        break;
      }

      ++v10;
      if ((v6 & 0xC000000000000001) != 0)
      {
        goto LABEL_4;
      }

LABEL_5:
      ;
    }
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v16 = v11[1].n128_i64[0];
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v18 = v11 + 2;
    v19 = MEMORY[0x1E69E7CC0];
    do
    {
      v44 = v18[1];
      v46 = v18[2];
      v42 = *v18;
      if (sub_1C6016E70())
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = OUTLINED_FUNCTION_28_8();
          sub_1C5D0F238(v20, v21, v22);
        }

        v24 = *(v19 + 16);
        v23 = *(v19 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1C5D0F238((v23 > 1), v24 + 1, 1);
        }

        *(v19 + 16) = v24 + 1;
        OUTLINED_FUNCTION_12_18((v19 + 48 * v24), v42, v44, v46);
      }

      v18 += 3;
      --v16;
    }

    while (v16);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v25 = *(v19 + 16);
  if (v25)
  {
    sub_1C5C66A1C(0, v25, 0);
    v26 = v17;
    sub_1C5D67AD4(0, &qword_1ED7DCB08, sub_1C5D60C10, MEMORY[0x1E69E6F90]);
    v27 = 32;
    v28 = MEMORY[0x1E69E6438];
    do
    {
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1C6035C00;
      sub_1C6017220();
      v30 = MEMORY[0x1E69E63B0];
      *(v29 + 56) = MEMORY[0x1E69E63B0];
      *(v29 + 64) = v28;
      *(v29 + 32) = v31;
      sub_1C6016E50();
      sub_1C6017220();
      *(v29 + 96) = v30;
      *(v29 + 104) = v28;
      *(v29 + 72) = v32;
      v33 = sub_1C6016960();
      v35 = v34;
      v37 = *(v26 + 16);
      v36 = *(v26 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1C5C66A1C((v36 > 1), v37 + 1, 1);
      }

      *(v26 + 16) = v37 + 1;
      v38 = v26 + 16 * v37;
      *(v38 + 32) = v33;
      *(v38 + 40) = v35;
      v27 += 48;
      --v25;
    }

    while (v25);
  }

  OUTLINED_FUNCTION_8_19(v39, &qword_1ED7DCF10, MEMORY[0x1E69E6158]);
  sub_1C5D5D054();
  sub_1C60168D0();

  return OUTLINED_FUNCTION_255();
}

void sub_1C5D643DC()
{
  OUTLINED_FUNCTION_247();
  v1 = sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v24 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_146();
  v6 = v5 - v4;
  v7 = sub_1C60167E0();
  OUTLINED_FUNCTION_25();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_40_7();
  (*(v9 + 104))(v0, *MEMORY[0x1E69D3968], v7);
  sub_1C5D67B38(&qword_1ED7DCF48, MEMORY[0x1E69D3970]);
  v11 = sub_1C6015290();
  (*(v9 + 8))(v0, v7);
  if (v11)
  {
    if (sub_1C6016E80())
    {
      sub_1C6017150();

      OUTLINED_FUNCTION_23_10();
      if (sub_1C6017200())
      {
        v23 = v1;
        sub_1C60162C0();
        v12 = v0;
        v13 = sub_1C60162B0();
        v14 = sub_1C6016F30();

        if (os_log_type_enabled(v13, v14))
        {
          v20 = v14;
          v15 = OUTLINED_FUNCTION_21();
          v21 = OUTLINED_FUNCTION_21();
          v25 = v21;
          *v15 = 136446722;
          v16 = sub_1C5DBCDF8();
          v22 = sub_1C5C6AB10(v16, v17, &v25);

          *(v15 + 4) = v22;
          *(v15 + 12) = 2050;
          sub_1C6017220();
          *(v15 + 14) = v18;
          *(v15 + 22) = 2050;
          OUTLINED_FUNCTION_23_10();
          sub_1C6017220();
          *(v15 + 24) = v19;
          _os_log_impl(&dword_1C5C61000, v13, v20, "[AVPlayerItem - %{public}s]: Converting targetTime to sourceTime. %{public}f -> %{public}f", v15, 0x20u);
          __swift_destroy_boxed_opaque_existential_0(v21);
          OUTLINED_FUNCTION_4();
          OUTLINED_FUNCTION_4();
        }

        (*(v24 + 8))(v6, v23);
      }
    }
  }

  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_237();
}

id AVPlayerItem.init(url:contentItemID:isVideoContent:prefersSeekOverSkip:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_1C6014EA0();
  v10 = sub_1C6016900();

  v11 = [v8 initWithUrl:v9 contentItemID:v10 isVideoContent:a4 & 1 prefersSeekOverSkip:a5 & 1];

  sub_1C6014F20();
  OUTLINED_FUNCTION_6_1();
  (*(v12 + 8))(a1);
  return v11;
}

{
  v6 = v5;
  v10 = sub_1C6014EA0();
  v11 = [v6 initWithURL_];

  v12 = v11;
  v13 = sub_1C6016900();

  [v12 setContentItemID_];

  [v12 setIsVideoContent_];
  [v12 setPrefersSeekOverSkip_];

  sub_1C6014F20();
  OUTLINED_FUNCTION_6_1();
  (*(v14 + 8))(a1);
  return v12;
}

id sub_1C5D64908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v8 = sub_1C6014F20();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6014EC0();
  v11 = sub_1C6016940();
  return AVPlayerItem.init(url:contentItemID:isVideoContent:prefersSeekOverSkip:)(v10, v11, v12, a5, a6);
}

id sub_1C5D649C8()
{
  v0 = AVPlayerItem.avPlayerItem.getter();

  return v0;
}

id sub_1C5D64A18(void *a1)
{
  v2 = sub_1C6014F20();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  AVPlayerItem.url.getter();

  v7 = sub_1C6014EA0();
  (*(v3 + 8))(v5, v2);

  return v7;
}

void AVPlayerItem.url.getter()
{
  v1 = [v0 asset];
  objc_opt_self();
  OUTLINED_FUNCTION_34_4();
  v2 = [swift_dynamicCastObjCClassUnconditional() URL];

  sub_1C6014EC0();
}

uint64_t AVPlayerItem.contentItemID.getter()
{
  OUTLINED_FUNCTION_7_20();
  v0 = OUTLINED_FUNCTION_108();
  v2 = objc_getAssociatedObject(v0, v1);
  swift_endAccess();
  if (v2)
  {
    OUTLINED_FUNCTION_32_5();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
  }

  OUTLINED_FUNCTION_4_26(v3, v4, v5, v6, v7, v8, v9, v10, v16, v18, v20, v22, v24);
  if (v11)
  {
    if (OUTLINED_FUNCTION_9_19())
    {
      return v17;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_35();
    OUTLINED_FUNCTION_31_6(v13, v14, sub_1C5C67580, v15, v17, v19, v21, v23, v25, v26);
  }

  return 0x4449206F4ELL;
}

uint64_t AVPlayerItem.title.getter()
{
  OUTLINED_FUNCTION_7_20();
  v0 = OUTLINED_FUNCTION_108();
  v2 = objc_getAssociatedObject(v0, v1);
  swift_endAccess();
  if (v2)
  {
    OUTLINED_FUNCTION_32_5();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
  }

  OUTLINED_FUNCTION_4_26(v3, v4, v5, v6, v7, v8, v9, v10, v16, v18, v20, v22, v24);
  if (v11)
  {
    if (OUTLINED_FUNCTION_9_19())
    {
      return v17;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_35();
    OUTLINED_FUNCTION_31_6(v13, v14, sub_1C5C67580, v15, v17, v19, v21, v23, v25, v26);
  }

  return 0;
}

void sub_1C5D64DB4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1C6016940();
  OUTLINED_FUNCTION_36_6();
  v6 = a1;
  v7 = OUTLINED_FUNCTION_29_11();
  a4(v7);
}

void sub_1C5D64E24()
{
  v0 = sub_1C6016900();

  OUTLINED_FUNCTION_7_20();
  v1 = OUTLINED_FUNCTION_108();
  objc_setAssociatedObject(v1, v2, v0, 3);
  swift_endAccess();
}

void sub_1C5D64E8C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_19_15(a1);
  v6 = [v4 *v5];
  sub_1C6016940();
  OUTLINED_FUNCTION_36_6();

  *v1 = v2;
  v1[1] = v3;
}

void sub_1C5D64ED8(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  v7 = sub_1C6016900();
  [v6 *a5];
}

uint64_t sub_1C5D64F3C(void *a1)
{
  v1 = a1;
  v2 = AVPlayerItem.isVideoContent.getter();

  return v2 & 1;
}

void sub_1C5D64F7C(void *a1)
{
  v1 = a1;
  AVPlayerItem.isVideoContent.setter();
}

id sub_1C5D6503C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    OUTLINED_FUNCTION_108();
    v7 = sub_1C6016900();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1C5D650C4()
{
  OUTLINED_FUNCTION_15_14();
  v0 = OUTLINED_FUNCTION_108();
  v2 = objc_getAssociatedObject(v0, v1);
  swift_endAccess();
  if (v2)
  {
    OUTLINED_FUNCTION_32_5();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
  }

  OUTLINED_FUNCTION_4_26(v3, v4, v5, v6, v7, v8, v9, v10, v16, v18, v20, v22, v24);
  if (v11)
  {
    if (OUTLINED_FUNCTION_9_19())
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_35();
    OUTLINED_FUNCTION_31_6(v13, v14, sub_1C5C67580, v15, v17, v19, v21, v23, v25, v26);
    return 0;
  }
}

void sub_1C5D651A0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    sub_1C6016940();
    OUTLINED_FUNCTION_36_6();
  }

  v6 = a1;
  v7 = OUTLINED_FUNCTION_29_11();
  a4(v7);
}

uint64_t sub_1C5D65220(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1C6016900();
  }

  else
  {
    v2 = 0;
  }

  OUTLINED_FUNCTION_7_20();
  v3 = OUTLINED_FUNCTION_108();
  objc_setAssociatedObject(v3, v4, v2, 3);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void sub_1C5D65298(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_19_15(a1);
  v4 = [v2 *v3];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1C6016940();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *v1 = v6;
  v1[1] = v8;
}

void sub_1C5D652F8(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*(a1 + 8))
  {
    v7 = sub_1C6016900();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t sub_1C5D65388(void *a1)
{
  v1 = a1;
  v2 = AVPlayerItem.isFullyDownloaded.getter();

  return v2 & 1;
}

uint64_t AVPlayerItem.isFullyDownloaded.getter()
{
  v1 = v0;
  v2 = sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_40_7();
  v6 = [v0 asset];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = [v7 URL];
    sub_1C6014EC0();

    LOBYTE(v8) = sub_1C6014E20();
    (*(v4 + 8))(v0, v2);
    if (v8)
    {
      return 1;
    }
  }

  else
  {
  }

  v9 = &selRef_currentThread;
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_27_12();
  if ((sub_1C6016810() & 1) == 0)
  {
    return 0;
  }

  v10 = [v0 loadedTimeRanges];
  sub_1C5C64D74(0, &unk_1ED7DCCE0);
  sub_1C6016B10();

  v11 = sub_1C5C6AA20();

  if (!v11)
  {
    return 0;
  }

  [v1 time];
  v13 = v12 + 15.0;
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_27_12();
  sub_1C6017220();
  if (v14 <= v13)
  {
    return 1;
  }

  sub_1C5D63A80();
  v16 = v15 + 0.25;
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_27_12();
  sub_1C6017220();
  if (v17 < v16)
  {
    return 1;
  }

  sub_1C5D67920(v1, &selRef_currentStableVariantID);
  if (v18)
  {

    sub_1C5D63A80();
    v20 = v19 + 1.0;
    OUTLINED_FUNCTION_13_14();
    OUTLINED_FUNCTION_27_12();
    sub_1C6017220();
    if (v21 < v20)
    {
      return 1;
    }

    sub_1C5D63D4C(&selRef_loadedTimeRanges);
    v23 = v22;
    OUTLINED_FUNCTION_13_14();
    OUTLINED_FUNCTION_27_12();
    sub_1C6017220();
    if (vabdd_f64(v23, v24) < 1.0)
    {
      return 1;
    }
  }

  v26 = [v1 loadedTimeRanges];
  v27 = sub_1C6016B10();

  v28 = sub_1C5C8FEE4(v27);
  if (v28)
  {
    v29 = v28;
    v50 = MEMORY[0x1E69E7CC0];
    result = OUTLINED_FUNCTION_47_3(v28, v28 & ~(v28 >> 63));
    if (v29 < 0)
    {
      __break(1u);
      return result;
    }

    v30 = 0;
    v31 = v50;
    if ((v27 & 0xC000000000000001) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    for (i = MEMORY[0x1C6954040](v30, v27); ; i = *(v27 + 8 * v30 + 32))
    {
      v33 = i;
      [i CMTimeRangeValue];

      v50 = v31;
      v35 = v31[1].n128_u64[0];
      v34 = v31[1].n128_u64[1];
      if (v35 >= v34 >> 1)
      {
        v36 = OUTLINED_FUNCTION_128(v34);
        sub_1C5D0F238(v36, v35 + 1, 1);
      }

      v31[1].n128_u64[0] = v35 + 1;
      OUTLINED_FUNCTION_12_18(&v31[3 * v35], v51, v53, v55);
      if (v29 - 1 == v30)
      {
        break;
      }

      ++v30;
      if ((v27 & 0xC000000000000001) != 0)
      {
        goto LABEL_17;
      }

LABEL_18:
      ;
    }

    v9 = &selRef_currentThread;
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
  }

  v37 = v31[1].n128_i64[0];
  if (v37)
  {
    v38 = v31 + 2;
    v39 = MEMORY[0x1E69E7CC0];
    do
    {
      v54 = v38[1];
      v56 = v38[2];
      v52 = *v38;
      sub_1C6016E50();
      sub_1C6017220();
      v41 = v40;
      [v1 v9[176]];
      sub_1C6017220();
      if (vabdd_f64(v41, v42) < 0.25)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = OUTLINED_FUNCTION_28_8();
          sub_1C5D0F238(v43, v44, v45);
        }

        v47 = *(v39 + 16);
        v46 = *(v39 + 24);
        if (v47 >= v46 >> 1)
        {
          v48 = OUTLINED_FUNCTION_128(v46);
          OUTLINED_FUNCTION_46_3(v48);
        }

        *(v39 + 16) = v47 + 1;
        OUTLINED_FUNCTION_12_18((v39 + 48 * v47), v52, v54, v56);
        v9 = &selRef_currentThread;
      }

      v38 += 3;
      --v37;
    }

    while (v37);
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
  }

  v49 = *(v39 + 16);

  return v49 != 0;
}

uint64_t sub_1C5D65854(void *a1)
{
  v1 = a1;
  v2 = AVPlayerItem.prefersSeekOverSkip.getter();

  return v2 & 1;
}

uint64_t sub_1C5D65894()
{
  OUTLINED_FUNCTION_15_14();
  v0 = OUTLINED_FUNCTION_108();
  v2 = objc_getAssociatedObject(v0, v1);
  swift_endAccess();
  if (v2)
  {
    OUTLINED_FUNCTION_32_5();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
  }

  OUTLINED_FUNCTION_4_26(v3, v4, v5, v6, v7, v8, v9, v10, v16, v18, v20, v22, v24);
  if (v11)
  {
    result = OUTLINED_FUNCTION_9_19();
    if (result)
    {
      return HIBYTE(v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_35();
    OUTLINED_FUNCTION_31_6(v13, v14, sub_1C5C67580, v15, v17, v19, v21, v23, v25, v26);
    return 0;
  }

  return result;
}

void sub_1C5D6594C(void *a1)
{
  v1 = a1;
  AVPlayerItem.prefersSeekOverSkip.setter();
}

void sub_1C5D659AC()
{
  v0 = sub_1C6016B90();
  OUTLINED_FUNCTION_7_20();
  v1 = OUTLINED_FUNCTION_108();
  objc_setAssociatedObject(v1, v2, v0, 3);
  swift_endAccess();
}

double sub_1C5D65A08(void *a1)
{
  v1 = a1;
  AVPlayerItem.time.getter();
  v3 = v2;

  return v3;
}

uint64_t AVPlayerItem.time.getter()
{
  [v0 currentTime];
  sub_1C5D643DC();

  return sub_1C6017220();
}

id sub_1C5D65AA8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1C6016900();

  return v5;
}

uint64_t AVPlayerItem.description.getter()
{
  v3 = v0;
  v4 = [v0 asset];
  v5 = [v4 loggingIdentifier];

  v6 = [v3 title];
  sub_1C6016940();
  OUTLINED_FUNCTION_44_7();

  v7 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v7 = v1 & 0xFFFFFFFFFFFFLL;
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  if (v7)
  {
    v27.receiver = v3;
    v27.super_class = MEMORY[0x1E69880B0];
    v8 = objc_msgSendSuper2(&v27, sel_description);
    sub_1C6016940();
    OUTLINED_FUNCTION_44_7();
    OUTLINED_FUNCTION_35_9();

    MEMORY[0x1C69534E0](32, 0xE100000000000000);
    ObjectType = swift_getObjectType();
    v25[0] = v5;
    v9 = swift_unknownObjectRetain();
    OUTLINED_FUNCTION_33_4(v9, v10);
    OUTLINED_FUNCTION_0_35();
    sub_1C5D67A20(v25, v12, v11 + 8, v13, sub_1C5C67580);
    MEMORY[0x1C69534E0](23328, 0xE200000000000000);
    v14 = [v3 contentItemID];
    sub_1C6016940();
    OUTLINED_FUNCTION_44_7();
    OUTLINED_FUNCTION_35_9();

    MEMORY[0x1C69534E0](8285, 0xE200000000000000);
    v15 = [v3 title];
  }

  else
  {
    v24.receiver = v3;
    v24.super_class = MEMORY[0x1E69880B0];
    v16 = objc_msgSendSuper2(&v24, sel_description);
    sub_1C6016940();
    OUTLINED_FUNCTION_44_7();
    OUTLINED_FUNCTION_35_9();

    MEMORY[0x1C69534E0](32, 0xE100000000000000);
    ObjectType = swift_getObjectType();
    v25[0] = v5;
    v17 = swift_unknownObjectRetain();
    OUTLINED_FUNCTION_33_4(v17, v18);
    OUTLINED_FUNCTION_0_35();
    sub_1C5D67A20(v25, v20, v19 + 8, v21, sub_1C5C67580);
    MEMORY[0x1C69534E0](23328, 0xE200000000000000);
    v15 = [v3 contentItemID];
  }

  v22 = v15;
  sub_1C6016940();
  OUTLINED_FUNCTION_36_6();

  MEMORY[0x1C69534E0](v3, v1);

  MEMORY[0x1C69534E0](93, 0xE100000000000000);
  swift_unknownObjectRelease();
  return v28;
}

double sub_1C5D65DE0(void *a1)
{
  v1 = a1;
  v2 = AVPlayerItem.transitionPlaybackEndStateSourceTime.getter();

  return v2;
}

void sub_1C5D65E28(void *a1)
{
  v1 = a1;
  AVPlayerItem.transitionPlaybackEndStateSourceTime.setter();
}

double sub_1C5D65E8C(void *a1)
{
  v1 = a1;
  v2 = AVPlayerItem.transitionPlaybackEndStateTargetTime.getter();

  return v2;
}

double sub_1C5D65ED4()
{
  OUTLINED_FUNCTION_15_14();
  v0 = OUTLINED_FUNCTION_108();
  v2 = objc_getAssociatedObject(v0, v1);
  swift_endAccess();
  if (v2)
  {
    OUTLINED_FUNCTION_32_5();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
  }

  OUTLINED_FUNCTION_4_26(v3, v4, v5, v6, v7, v8, v9, v10, v16, v18, v20, v22, v24);
  if (v11)
  {
    if (OUTLINED_FUNCTION_9_19())
    {
      return *&v19;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_35();
    OUTLINED_FUNCTION_31_6(v13, v14, sub_1C5C67580, v15, v17, v19, v21, v23, v25, v26);
  }

  return 0.0;
}

void sub_1C5D65F8C(void *a1)
{
  v1 = a1;
  AVPlayerItem.transitionPlaybackEndStateTargetTime.setter();
}

void sub_1C5D65FF0()
{
  v0 = sub_1C6016D00();
  OUTLINED_FUNCTION_7_20();
  v1 = OUTLINED_FUNCTION_108();
  objc_setAssociatedObject(v1, v2, v0, 3);
  swift_endAccess();
}

uint64_t sub_1C5D6604C()
{
  OUTLINED_FUNCTION_7_20();
  v0 = OUTLINED_FUNCTION_108();
  v2 = objc_getAssociatedObject(v0, v1);
  swift_endAccess();
  if (v2)
  {
    OUTLINED_FUNCTION_32_5();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
  }

  OUTLINED_FUNCTION_4_26(v3, v4, v5, v6, v7, v8, v9, v10, v17, v19, v21, v23, v25);
  if (v11)
  {
    sub_1C5C64D74(0, &qword_1ED7DCCD0);
    if (OUTLINED_FUNCTION_9_19())
    {
      [v20 doubleValue];
      sub_1C5D67CC0(v12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_35();
    OUTLINED_FUNCTION_31_6(v13, v14, sub_1C5C67580, v15, v18, v20, v22, v24, v26, v27);
  }

  return OUTLINED_FUNCTION_255();
}

void sub_1C5D66168(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) != 0 || (sub_1C6017200() & 1) == 0)
  {
    v6 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_303();
    sub_1C6017220();
    v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  swift_beginAccess();
  objc_setAssociatedObject(v4, &unk_1EC1AB588, v6, 3);
  swift_endAccess();
}

void sub_1C5D66228()
{
  OUTLINED_FUNCTION_247();
  v2 = v1;
  v31 = v3;
  v4 = sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_146();
  v10 = v9 - v8;
  sub_1C5D2D8C8();
  v12 = v11;
  OUTLINED_FUNCTION_25();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_40_7();
  if (v2)
  {
    v16 = [v0 currentTime];
    v31 = v32[2];
  }

  MEMORY[0x1C6952D20](v16);
  OUTLINED_FUNCTION_1();
  sub_1C6016250();
  (*(v14 + 8))(v0, v12);
  v17 = v0;
  v18 = sub_1C60162B0();
  v19 = sub_1C6016F30();

  if (os_log_type_enabled(v18, v19))
  {
    v30 = v4;
    v20 = swift_slowAlloc();
    v21 = OUTLINED_FUNCTION_21();
    v32[0] = v21;
    *v20 = 136446466;
    v22 = sub_1C5DBCDF8();
    v24 = sub_1C5C6AB10(v22, v23, v32);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2048;
    v25 = v31;
    OUTLINED_FUNCTION_255();
    v26 = sub_1C6017200();
    v27 = 0;
    if (v26)
    {
      OUTLINED_FUNCTION_255();
      sub_1C6017220();
    }

    *(v20 + 14) = v27;
    _os_log_impl(&dword_1C5C61000, v18, v19, "[EST:%{public}s)] setting expected start time=%f", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();

    (*(v6 + 8))(v10, v30);
  }

  else
  {

    (*(v6 + 8))(v10, v4);
    v25 = v31;
  }

  v28 = OUTLINED_FUNCTION_255();
  sub_1C5D66168(v28, v29, v25, 0);
  OUTLINED_FUNCTION_237();
}

void sub_1C5D664F0()
{
  OUTLINED_FUNCTION_247();
  v1 = sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_146();
  v7 = v6 - v5;
  sub_1C5D2D8C8();
  v9 = v8;
  OUTLINED_FUNCTION_25();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_146();
  v15 = v14 - v13;
  sub_1C5D66168(0, 0, 0, 1);
  MEMORY[0x1C6952D20]();
  OUTLINED_FUNCTION_1();
  sub_1C6016250();
  (*(v11 + 8))(v15, v9);
  v16 = v0;
  v17 = sub_1C60162B0();
  v18 = sub_1C6016F30();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = OUTLINED_FUNCTION_21();
    v24 = v20;
    *v19 = 136446210;
    v21 = sub_1C5DBCDF8();
    v23 = sub_1C5C6AB10(v21, v22, &v24);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1C5C61000, v17, v18, "[EST:%{public}s)] clearing expected start time", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();
  }

  (*(v3 + 8))(v7, v1);
  OUTLINED_FUNCTION_237();
}

uint64_t AVPlayerItem.loadCurrentTrackAudioFormat()()
{
  v1[12] = v0;
  OUTLINED_FUNCTION_6_21();
  sub_1C5D67AD4(0, v2, v3, MEMORY[0x1E69E6720]);
  v1[13] = swift_task_alloc();
  v4 = sub_1C60170C0();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = sub_1C6016C10();
  v1[18] = sub_1C6016C00();
  v6 = sub_1C6016BA0();
  v1[19] = v6;
  v1[20] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C5D66854, v6, v5);
}

uint64_t sub_1C5D66854()
{
  *(v0 + 168) = sub_1C5D67920(*(v0 + 96), &selRef_currentStableVariantID);
  *(v0 + 176) = v1;
  if (!v1)
  {
LABEL_18:

    v24 = *(v0 + 8);

    return v24(0);
  }

  v2 = [*(v0 + 96) tracks];
  sub_1C5C64D74(0, &qword_1ED7DCE68);
  OUTLINED_FUNCTION_34_4();
  v3 = sub_1C6016B10();

  v4 = sub_1C5C6AA20();
  v12 = v4;
  for (i = 0; ; ++i)
  {
    if (v12 == i)
    {

      goto LABEL_18;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1C6954040](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v4 = *(v3 + 8 * i + 32);
    }

    v14 = v4;
    *(v0 + 184) = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v15 = [v4 assetTrack];
    if (!v15)
    {
      goto LABEL_14;
    }

    v16 = v15;
    v17 = [v15 mediaType];

    v18 = sub_1C6016940();
    v20 = v19;
    if (v18 == sub_1C6016940() && v20 == v21)
    {
      break;
    }

    v23 = sub_1C6017860();

    if (v23)
    {
      goto LABEL_22;
    }

LABEL_14:
  }

LABEL_22:

  v4 = [v14 assetTrack];
  *(v0 + 192) = v4;
  if (!v4)
  {
LABEL_28:
    __break(1u);
    return MEMORY[0x1EEE68148](v4, v5, v6, v7, v8, v9, v10, v11);
  }

  sub_1C5D6797C(0, &qword_1EC1AB598, &qword_1EC1AB5A8, type metadata accessor for AVMediaCharacteristic);
  v26 = sub_1C6015220();
  *(v0 + 200) = v26;
  sub_1C5D6797C(0, &qword_1EC1AB5B0, &qword_1EC1AB5B8, type metadata accessor for CMFormatDescription);
  v27 = sub_1C6015210();
  *(v0 + 208) = v27;
  v28 = sub_1C6016C00();
  *(v0 + 216) = v28;
  v29 = swift_task_alloc();
  *(v0 + 224) = v29;
  *v29 = v0;
  v29[1] = sub_1C5D66C0C;
  v6 = v0 + 16;
  v11 = MEMORY[0x1E69E85E0];
  v4 = (v0 + 64);
  v5 = v0 + 72;
  v7 = v26;
  v8 = v27;
  v9 = v0 + 16;
  v10 = v28;

  return MEMORY[0x1EEE68148](v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C5D66C0C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_101();
  *v3 = v2;
  *v3 = *v1;
  v2[29] = v0;

  if (v0)
  {

    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_1C5D67278;
  }

  else
  {
    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_1C5D66DA0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1C5D66DA0()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  if (sub_1C5C6AA20())
  {
    v3 = v1;
    sub_1C5C8CEE0(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_39;
    }

    v4 = v2[4];
LABEL_4:
    v5 = v4;
    v6 = *(v0 + 120);
    v7 = *(v0 + 128);
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);

    v39 = sub_1C6016900();
    v38 = sub_1C6016900();
    sub_1C60170D0();
    v10 = sub_1C60170B0();
    (*(v6 + 8))(v7, v9);
    v40 = v5;
    sub_1C60170F0();
    v11 = sub_1C6016800();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v11);
    v13 = *(v0 + 104);
    if (EnumTagSinglePayload == 1)
    {
      OUTLINED_FUNCTION_6_21();
      sub_1C5D67A20(v13, v14, v15, MEMORY[0x1E69E6720], sub_1C5D67AD4);
      v16 = 4294901760;
    }

    else
    {
      v16 = sub_1C60167F0();
      (*(*(v11 - 8) + 8))(v13, v11);
    }

    v19 = v3;
    v2 = v40;
    result = sub_1C60170A0();
    v3 = &unk_1C6035000;
    if (*(v0 + 56))
    {
      v21 = 0;
      v22 = 0;
LABEL_14:
      v24 = sub_1C60170E0();
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = (v24 + 40);
        do
        {
          if (v22 < *(v26 + 5))
          {
            v27 = *(v26 - 1);
            if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              v4 = MEMORY[0x1C6954040](0, v2);
              goto LABEL_4;
            }

            if (v27 <= -9.22337204e18)
            {
              goto LABEL_37;
            }

            if (v27 >= 9.22337204e18)
            {
              goto LABEL_38;
            }

            v10 = *v26;
            v16 = *(v26 + 8);
            v22 = *(v26 + 5);
            v21 = v27;
          }

          v26 += 6;
          --v25;
        }

        while (v25);
      }

      if (sub_1C5D137F0(v10, &unk_1F453C010) || sub_1C5D137F0(v16, &unk_1F453C050) || (*(v0 + 80) = v39, v28 = swift_task_alloc(), *(v28 + 16) = v0 + 80, v29 = sub_1C5C6F540(sub_1C5C6F658, v28, v19), , v29))
      {

        v30 = 1;
      }

      else
      {
        *(v0 + 88) = v38;
        v35 = swift_task_alloc();
        *(v35 + 16) = v0 + 88;
        v30 = sub_1C5C6F540(sub_1C5CD70E8, v35, v19);
      }

      v36 = *(v0 + 192);
      v37 = *(v0 + 184);
      v31 = sub_1C5D137F0(v10, &unk_1F453C090);
      v32 = 1;
      if (v31)
      {
        v32 = 2;
      }

      if (v30 || v22 > 2)
      {
        v33 = 4;
      }

      else
      {
        v33 = v32;
      }

      sub_1C5C64D74(0, &qword_1EC1AB5C0);
      v18 = sub_1C5D6730C(v33, v10, v30, v22 > 2, v16, v21);

      goto LABEL_32;
    }

    v23 = *(v0 + 16);
    if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v23 > -9.22337204e18)
    {
      if (v23 < 9.22337204e18)
      {
        v22 = *(v0 + 44);
        v21 = v23;
        goto LABEL_14;
      }

LABEL_42:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_42;
  }

  v17 = *(v0 + 184);

  v18 = 0;
LABEL_32:

  v34 = *(v0 + 8);

  return v34(v18);
}

uint64_t sub_1C5D67278()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

id sub_1C5D6730C(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = sub_1C6016900();

  v14 = [v12 initWithTier:a1 codec:a2 spatialized:a3 & 1 multiChannel:a4 & 1 channelLayout:a5 sampleRate:a6 stableVariantID:v13];

  return v14;
}

uint64_t sub_1C5D673D0(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v6 = a1;

  return sub_1C5E3A9D0(&unk_1C6039AA8, v5);
}

uint64_t sub_1C5D6744C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1C6016C10();
  v2[4] = sub_1C6016C00();
  v4 = sub_1C6016BA0();

  return MEMORY[0x1EEE6DFA0](sub_1C5D674E4, v4, v3);
}

uint64_t sub_1C5D674E4()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1C5D67594;

  return AVPlayerItem.loadCurrentTrackAudioFormat()();
}

uint64_t sub_1C5D67594(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *v2;
  OUTLINED_FUNCTION_101();
  *v8 = v7;

  v9 = *(v5 + 40);
  if (v3)
  {
    v10 = sub_1C6014D30();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v7 + 8);

  return v11();
}

uint64_t sub_1C5D6772C()
{
  sub_1C6017130();
  if (sub_1C6016E80())
  {
    sub_1C6017140();
  }

  if ((sub_1C6017200() & 1) == 0)
  {
    return 0;
  }

  sub_1C6017220();
  return v0;
}

uint64_t sub_1C5D677E4(void (*a1)(void))
{
  a1(0);
  swift_arrayDestroy();
  v1 = OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1C5D67838()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1C5D6787C()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C5D678BC(void *a1)
{
  v1 = [a1 extendedLogData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C6014F60();

  return v3;
}

uint64_t sub_1C5D67920(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1C6016940();
  }

  return OUTLINED_FUNCTION_255();
}

void sub_1C5D6797C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C5C64D74(255, &qword_1EC1AB5A0);
    sub_1C5D67AD4(255, a3, a4, MEMORY[0x1E69E62F8]);
    v7 = sub_1C6015200();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1C5D67A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  OUTLINED_FUNCTION_6_1();
  (*(v6 + 8))(a1);
  return a1;
}

void sub_1C5D67AD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C5D67B38(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_34_4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5D67B7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C5D3C278;
  v2 = OUTLINED_FUNCTION_255();

  return v3(v2);
}

void OUTLINED_FUNCTION_8_19(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E62F8];

  sub_1C5C67580(0, a2, a3, v4);
}

char *OUTLINED_FUNCTION_46_3(char *a1)
{

  return sub_1C5D0F238(a1, v1, 1);
}

uint64_t sub_1C5D67CC0(double a1)
{
  if (a1 == INFINITY)
  {
    v1 = MEMORY[0x1E6960C88];
  }

  else if (a1 == -INFINITY)
  {
    v1 = MEMORY[0x1E6960C80];
  }

  else
  {
    if (a1 != 0.0)
    {
      return sub_1C6017210();
    }

    v1 = MEMORY[0x1E6960CC0];
  }

  return *v1;
}

uint64_t DefaultStringInterpolation.appendInterpolation(describing:default:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C5CC5960(a1, &v6);
  if (v7)
  {
    sub_1C5C70758(&v6, &v8);
    __swift_project_boxed_opaque_existential_0(&v8, v9);
    sub_1C6017830();
    return __swift_destroy_boxed_opaque_existential_0(&v8);
  }

  else
  {
    sub_1C5CBCF4C(&v6);
    return MEMORY[0x1C69534E0](a2, a3);
  }
}

Swift::Void __swiftcall DefaultStringInterpolation.appendInterpolation(time:)(Swift::Double_optional time)
{
  if (v1)
  {

    JUMPOUT(0x1C69534E0);
  }

  v2 = *&time.is_nil;
  sub_1C5D5CCF8();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E63B0];
  *(v3 + 16) = xmmword_1C60311E0;
  v5 = MEMORY[0x1E69E6438];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = v2;
  OUTLINED_FUNCTION_1_29();
  v6 = sub_1C6016960();
  MEMORY[0x1C69534E0](v6);
}

Swift::Void __swiftcall DefaultStringInterpolation.appendInterpolation(time:)(CMTime_optional time)
{
  if (time.is_nil)
  {
    goto LABEL_13;
  }

  if ((sub_1C6016810() & 1) == 0 || (OUTLINED_FUNCTION_0_36(), (sub_1C6017200() & 1) == 0))
  {
    OUTLINED_FUNCTION_0_36();
    if (sub_1C6017200())
    {
      OUTLINED_FUNCTION_0_36();
      if ((sub_1C6017160() & 1) == 0)
      {
        OUTLINED_FUNCTION_0_36();
        if ((sub_1C6017170() & 1) == 0)
        {
          OUTLINED_FUNCTION_0_36();
          if ((sub_1C6017180() & 1) == 0)
          {
            return;
          }
        }
      }
    }

LABEL_13:

    JUMPOUT(0x1C69534E0);
  }

  sub_1C5D5CCF8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C60311E0;
  OUTLINED_FUNCTION_0_36();
  sub_1C6017220();
  v2 = MEMORY[0x1E69E6438];
  *(v1 + 56) = MEMORY[0x1E69E63B0];
  *(v1 + 64) = v2;
  *(v1 + 32) = v3;
  OUTLINED_FUNCTION_1_29();
  v4 = sub_1C6016960();
  MEMORY[0x1C69534E0](v4);
}

uint64_t sub_1C5D67FFC()
{
  result = sub_1C6017350();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1C5D680CC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *v1;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v9 = sub_1C6017350();
  OUTLINED_FUNCTION_5_18();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  v15 = *((v7 & v5) + 0x60);
  __swift_storeEnumTagSinglePayload(&v2[v15], 1, 1, v8);
  v16 = &v2[*((*v6 & *v2) + 0x68)];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v17 = *(v8 - 8);
  (*(v17 + 16))(v14, a1, v8);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v8);
  swift_beginAccess();
  (*(v11 + 40))(&v2[v15], v14, v9);
  swift_endAccess();
  v21.receiver = v2;
  v21.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v21, sel_init);
  (*(v17 + 8))(a1, v8);
  return v18;
}

uint64_t sub_1C5D682D4(uint64_t a1)
{
  sub_1C6016460();
  if (sub_1C6016450())
  {
    sub_1C6016460();
    result = sub_1C6016450();
    if (result)
    {
      __break(1u);
LABEL_10:
      __break(1u);
      return result;
    }
  }

  sub_1C6016460();
  if ((sub_1C6016450() & 1) == 0)
  {
    sub_1C6016460();
    result = sub_1C6016450();
    if (!a1 || (result & 1) != 0)
    {
      goto LABEL_10;
    }
  }

  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  sub_1C5CC5960(v1 + v4, v8);
  v5 = v9;
  result = sub_1C5CBCF4C(v8);
  if (!v5)
  {
    v6 = [objc_opt_self() defaultController];
    v7 = [v6 addReclamationEventObserver_];

    v9 = sub_1C5D688A4();
    v8[0] = v7;
    swift_beginAccess();
    sub_1C5CD8498(v8, v1 + v4);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1C5D68420()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  swift_beginAccess();
  sub_1C5CC5960(v0 + v1, &v4);
  v2 = *(&v5 + 1);
  result = sub_1C5CBCF4C(&v4);
  if (v2)
  {
    v4 = 0u;
    v5 = 0u;
    swift_beginAccess();
    sub_1C5CD8498(&v4, v0 + v1);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1C5D684D0()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  OUTLINED_FUNCTION_5_18();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v13 - v5;
  v9 = *((v8 & v7) + 0x60);
  swift_beginAccess();
  result = __swift_getEnumTagSinglePayload(&v0[v9], 1, v1);
  if (!result)
  {
    (*(v3 + 16))(v6, &v0[v9], v1);
    sub_1C6014F90();
    v12 = v11;
    type metadata accessor for EventTime();
    swift_allocObject();
    v13[1] = sub_1C5C8A6E0(0, 0, 0, 1, v12, v12);
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0xE000000000000000;
    sub_1C6016430();

    return (*(v3 + 8))(v6, v1);
  }

  return result;
}

void sub_1C5D68694(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1C5D684D0();
}

uint64_t sub_1C5D68744(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v4 = sub_1C6017350();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  v5 = &a1[*((*v2 & *a1) + 0x68)];

  return sub_1C5CBCF4C(v5);
}

unint64_t sub_1C5D688A4()
{
  result = qword_1ED7DCD28;
  if (!qword_1ED7DCD28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7DCD28);
  }

  return result;
}

uint64_t sub_1C5D688E8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_18();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ResourceReclamationSubscription();
  (*(v5 + 16))(v8, a1, a2);
  v10 = sub_1C5D68098(v8);
  v13[3] = v9;
  v13[4] = swift_getWitnessTable();
  v13[0] = v10;
  sub_1C6016420();
  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t sub_1C5D68A0C()
{
  OUTLINED_FUNCTION_5_18();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 16))(v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AVError();
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v5[1];
    sub_1C5D68B18();
    sub_1C6014D00();

    return v5[0] == -11912;
  }

  return result;
}

unint64_t sub_1C5D68B18()
{
  result = qword_1EC1A8E50;
  if (!qword_1EC1A8E50)
  {
    type metadata accessor for AVError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1A8E50);
  }

  return result;
}

void sub_1C5D68BBC(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = [v2 preferredMusicLowBandwidthResolution];
  v4 = [v2 preferredMusicHighBandwidthResolution];
  v5 = [v2 spatialAudioPreference];
  v6 = [v2 preferredMusicDownloadResolution];
  v7 = [v2 prefersSpatialDownloads];

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t sub_1C5D68C88(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    v2 = *(a1 + 32) ^ *(a2 + 32) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1C5D68D90()
{
  v1 = *(v0 + OBJC_IVAR___AudioQualityPreferenceConfigurationObserver_preferenceChangeClosure);
  sub_1C5D5DDC8(v1, *(v0 + OBJC_IVAR___AudioQualityPreferenceConfigurationObserver_preferenceChangeClosure + 8));
  return v1;
}

uint64_t sub_1C5D68E78(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___AudioQualityPreferenceConfigurationObserver_preferenceChangeClosure);
  v4 = *(v2 + OBJC_IVAR___AudioQualityPreferenceConfigurationObserver_preferenceChangeClosure);
  *v3 = a1;
  v3[1] = a2;
  return sub_1C5C74C18(v4);
}

id sub_1C5D68E98(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v11 = a2;
  *&v8 = MEMORY[0x1E69E9820];
  *(&v8 + 1) = 1107296256;
  *&v9 = sub_1C5DBC798;
  *(&v9 + 1) = &block_descriptor_15;
  v3 = _Block_copy(&v8);

  [v2 setPreferenceChangeClosure_];
  _Block_release(v3);
  sub_1C5D68BBC(&v8);
  v4 = v10;
  v5 = &v2[OBJC_IVAR___AudioQualityPreferenceConfigurationObserver_preferenceSnapshot];
  v6 = v9;
  *v5 = v8;
  *(v5 + 1) = v6;
  v5[32] = v4;
  return [v2 setupPreferenceChangeObserver];
}

void sub_1C5D6900C()
{
  [v0 setPreferenceChangeClosure_];
  OUTLINED_FUNCTION_0_37(OBJC_IVAR___AudioQualityPreferenceConfigurationObserver_preferenceSnapshot);
  if (*&v0[OBJC_IVAR___AudioQualityPreferenceConfigurationObserver_preferenceChangeSubscription])
  {

    sub_1C6016490();
  }
}

id sub_1C5D690CC()
{
  if (*&v0[OBJC_IVAR___AudioQualityPreferenceConfigurationObserver_preferenceChangeSubscription])
  {

    sub_1C6016490();
  }

  v2.receiver = v0;
  v2.super_class = AudioQualityPreferenceConfigurationObserver;
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5D691AC()
{
  v1 = v0;
  v2 = sub_1C6017080();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultCenter];
  v7 = [objc_opt_self() standardUserDefaults];
  sub_1C6017090();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C5D6961C();
  v8 = sub_1C6016600();

  (*(v3 + 8))(v5, v2);
  *(v1 + OBJC_IVAR___AudioQualityPreferenceConfigurationObserver_preferenceChangeSubscription) = v8;
}

void sub_1C5D69354()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong checkForAudioQualityPreferenceChanges];
}

void sub_1C5D693F4()
{
  sub_1C5D68BBC(&v12);
  v1 = v12;
  v2 = v13;
  v3 = v14;
  v4 = &v0[OBJC_IVAR___AudioQualityPreferenceConfigurationObserver_preferenceSnapshot];
  v5 = v0[OBJC_IVAR___AudioQualityPreferenceConfigurationObserver_preferenceSnapshot + 32];
  if (v5 == 2 || (v10 = v13, v11 = v12, v6 = *(v4 + 1), v15[0] = *v4, v15[1] = v6, v16 = v5 & 1, v7 = sub_1C5D68C88(v15, &v12), v2 = v10, v1 = v11, (v7 & 1) == 0))
  {
    *v4 = v1;
    *(v4 + 1) = v2;
    v4[32] = v3;
    v8 = [v0 preferenceChangeClosure];
    if (v8)
    {
      v9 = v8;
      (*(v8 + 2))();

      _Block_release(v9);
    }
  }
}

id AudioQualityPreferenceConfigurationObserver.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  *&v0[OBJC_IVAR___AudioQualityPreferenceConfigurationObserver_preferenceChangeSubscription] = 0;
  v1 = OUTLINED_FUNCTION_0_37(OBJC_IVAR___AudioQualityPreferenceConfigurationObserver_preferenceSnapshot);
  v2 = &v0[OBJC_IVAR___AudioQualityPreferenceConfigurationObserver_preferenceChangeClosure];
  *v2 = 0;
  *(v2 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = AudioQualityPreferenceConfigurationObserver;
  return objc_msgSendSuper2(&v4, sel_init, v1);
}

unint64_t type metadata accessor for AudioQualityPreferenceConfigurationObserver()
{
  result = qword_1EC1AB648;
  if (!qword_1EC1AB648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC1AB648);
  }

  return result;
}

unint64_t sub_1C5D6961C()
{
  result = qword_1ED7DCDF8;
  if (!qword_1ED7DCDF8)
  {
    sub_1C6017080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7DCDF8);
  }

  return result;
}

uint64_t sub_1C5D6968C(uint64_t a1)
{
  result = sub_1C5DBCB3C(*(v1 + 72), a1);
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    sub_1C5CC5960(v1 + 24, &v38);
    if (*(&v39 + 1))
    {
      sub_1C5C70758(&v38, &aBlock);
      v3 = *(v1 + 16);
      __swift_project_boxed_opaque_existential_0(&aBlock, v35);
      [v3 removeTimeObserver_];
      swift_unknownObjectRelease();
      v38 = 0u;
      v39 = 0u;
      swift_beginAccess();
      sub_1C5CD8498(&v38, v1 + 24);
      swift_endAccess();
      result = __swift_destroy_boxed_opaque_existential_0(&aBlock);
    }

    else
    {
      result = sub_1C5CBCF4C(&v38);
    }

    v4 = *(v1 + 72);
    v5 = *(v4 + 16);
    if (v5)
    {
      v23 = v1;
      *&v38 = MEMORY[0x1E69E7CC0];

      sub_1C60175F0();
      v32 = objc_opt_self();
      v27 = *MEMORY[0x1E6960CC0];
      v25 = *(MEMORY[0x1E6960CC0] + 12);
      v26 = *(MEMORY[0x1E6960CC0] + 8);
      v24 = *(MEMORY[0x1E6960CC0] + 16);
      v31 = *MEMORY[0x1E6960C80];
      v29 = *(MEMORY[0x1E6960C80] + 12);
      v30 = *(MEMORY[0x1E6960C80] + 8);
      v28 = *(MEMORY[0x1E6960C80] + 16);
      v6 = *MEMORY[0x1E6960C88];
      v7 = 32;
      v9 = *(MEMORY[0x1E6960C88] + 8);
      v8 = *(MEMORY[0x1E6960C88] + 12);
      v10 = *(MEMORY[0x1E6960C88] + 16);
      do
      {
        v11 = *(v4 + v7);
        v12 = v6;
        LODWORD(v13) = v9;
        LODWORD(v14) = v8;
        v15 = v10;
        if (v11 != INFINITY)
        {
          v12 = v31;
          LODWORD(v14) = v29;
          LODWORD(v13) = v30;
          v15 = v28;
          if (v11 != -INFINITY)
          {
            v12 = v27;
            LODWORD(v14) = v25;
            LODWORD(v13) = v26;
            v15 = v24;
            if (v11 != 0.0)
            {
              v12 = sub_1C6017210();
              v14 = HIDWORD(v13);
            }
          }
        }

        *&aBlock = v12;
        *(&aBlock + 1) = __PAIR64__(v14, v13);
        v34 = v15;
        v16 = [v32 valueWithCMTime_];
        sub_1C60175D0();
        sub_1C6017600();
        sub_1C6017610();
        sub_1C60175E0();
        v7 += 8;
        --v5;
      }

      while (v5);

      v17 = *(v23 + 16);
      sub_1C5C64D74(0, &unk_1ED7DCCE0);
      v18 = sub_1C6016AF0();

      sub_1C5C64D74(0, &qword_1ED7DCE50);
      v19 = sub_1C6016FD0();
      v20 = swift_allocObject();
      swift_weakInit();
      v36 = sub_1C5D6A9F8;
      v37 = v20;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v34 = sub_1C5DBC798;
      v35 = &block_descriptor_16;
      v21 = _Block_copy(&aBlock);

      v22 = [v17 addBoundaryTimeObserverForTimes:v18 queue:v19 usingBlock:v21];
      _Block_release(v21);

      sub_1C6017390();
      swift_unknownObjectRelease();
      swift_beginAccess();
      sub_1C5CD8498(&aBlock, v23 + 24);
      return swift_endAccess();
    }
  }

  return result;
}

void sub_1C5D69A68()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 16);

    v2 = [v1 currentItem];

    if (v2)
    {
      v3 = [v2 timebase];
      if (v3)
      {
        v4 = v3;
        sub_1C6016EF0();
        if (sub_1C6017200() & 1) != 0 && (sub_1C6016EF0(), (sub_1C6016810()))
        {
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            sub_1C5D69F34(v4);
          }

          v5 = v4;
        }

        else
        {
          v5 = v2;
          v2 = v4;
        }
      }
    }
  }
}

uint64_t sub_1C5D69B80(uint64_t a1)
{
  v2 = *(v1 + 72);
  *(v1 + 72) = a1;
  sub_1C5D6968C(v2);
}

uint64_t sub_1C5D69BC0(uint64_t a1)
{
  sub_1C5D6A90C();
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_1C6016880();
  *(v1 + 16) = a1;
  *(v1 + 64) = v4;
  *(v1 + 72) = v3;
  return v1;
}

uint64_t sub_1C5D69C30()
{
  swift_beginAccess();
  sub_1C5CC5960(v0 + 24, &v4);
  if (v5)
  {
    sub_1C5C70758(&v4, &v6);
    v1 = *(v0 + 16);
    __swift_project_boxed_opaque_existential_0(&v6, v7);
    v2 = v1;
    [v2 removeTimeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v6);
  }

  else
  {
    sub_1C5CBCF4C(&v4);
  }

  sub_1C5CBCF4C(v0 + 24);

  return v0;
}

uint64_t sub_1C5D69D18()
{
  sub_1C5D69C30();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1C5D69D70(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 56);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    *(v3 + 56) = v5;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a2;
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v3 + 64);
    sub_1C5E36C00();
    *(v3 + 64) = v9;
    swift_endAccess();
    return v5;
  }

  return result;
}

uint64_t sub_1C5D69E48(uint64_t a1)
{
  swift_beginAccess();
  sub_1C5CE2404(a1);
  if (v3)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v1 + 64);
    *(v1 + 64) = 0x8000000000000000;
    sub_1C5D6A964();
    sub_1C6017660();
    sub_1C5D6A90C();
    sub_1C6017680();
    *(v1 + 64) = v5;
  }

  return swift_endAccess();
}

uint64_t sub_1C5D69F34(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = )
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(*(v3 + 56) + ((v10 << 10) | (16 * v11)));
    v13 = a1;

    v12(&v13);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5D6A04C()
{
  result = sub_1C6017350();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C5D6A0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlayerBoundaryTimeSubscription();
  (*(v6 + 16))(v8, a1, a3);

  v10 = sub_1C5D6A240(v8, a2);
  v13[3] = v9;
  v13[4] = swift_getWitnessTable();
  v13[0] = v10;
  sub_1C6016420();
  return __swift_destroy_boxed_opaque_existential_0(v13);
}

char *sub_1C5D6A29C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = sub_1C6017350();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  __swift_storeEnumTagSinglePayload(&v2[*(v5 + 104)], 1, 1, v6);
  v11 = &v2[*(*v2 + 112)];
  *v11 = 0;
  v11[8] = 1;
  *(v2 + 2) = a2;
  (*(*(v6 - 8) + 32))(v10, a1, v6);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v6);
  v12 = *(*v2 + 104);
  swift_beginAccess();
  (*(v8 + 40))(&v2[v12], v10, v7);
  swift_endAccess();
  return v2;
}

uint64_t sub_1C5D6A458(uint64_t a1)
{
  v3 = *v1;
  sub_1C6016460();
  if (sub_1C6016450())
  {
    sub_1C6016460();
    result = sub_1C6016450();
    if (result)
    {
      __break(1u);
LABEL_10:
      __break(1u);
      return result;
    }
  }

  sub_1C6016460();
  result = sub_1C6016450();
  if ((result & 1) == 0)
  {
    sub_1C6016460();
    result = sub_1C6016450();
    if (!a1 || (result & 1) != 0)
    {
      goto LABEL_10;
    }
  }

  v5 = v1 + *(*v1 + 112);
  if (*(v5 + 8))
  {
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = *(v3 + 80);
    v7[3] = *(v3 + 88);
    v7[4] = v6;

    v8 = sub_1C5D69D70(sub_1C5D6A900, v7);

    *v5 = v8;
    *(v5 + 8) = 0;
  }

  return result;
}

uint64_t sub_1C5D6A5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(*result + 104);
    swift_beginAccess();
    if (__swift_getEnumTagSinglePayload(v9 + v10, 1, a3))
    {
    }

    else
    {
      (*(v5 + 16))(v7, v9 + v10, a3);

      v11[1] = a1;
      sub_1C6016430();
      return (*(v5 + 8))(v7, a3);
    }
  }

  return result;
}

uint64_t sub_1C5D6A72C()
{
  v1 = v0 + *(*v0 + 112);
  if ((*(v1 + 8) & 1) == 0)
  {
    result = sub_1C5D69E48(*v1);
    *v1 = 0;
    *(v1 + 8) = 1;
  }

  return result;
}

uint64_t sub_1C5D6A780()
{

  v1 = *(*v0 + 104);
  v2 = sub_1C6017350();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1C5D6A814()
{
  v0 = sub_1C5D6A780();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1C5D6A90C()
{
  result = qword_1ED7DCAB0;
  if (!qword_1ED7DCAB0)
  {
    type metadata accessor for CMTimebase();
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1ED7DCAB0);
  }

  return result;
}

void sub_1C5D6A964()
{
  if (!qword_1ED7DCB90)
  {
    sub_1C5D6A90C();
    v0 = sub_1C6017690();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7DCB90);
    }
  }
}

uint64_t sub_1C5D6AA18(void *a1)
{
  sub_1C5D6C60C(0, &qword_1EC1A92B8, _s3__C6StatusOMa_0);
  v54 = v3;
  v52 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v43 - v4;
  sub_1C5D6C6F4(0, &qword_1EC1A9530, &qword_1EC1A92B8, _s3__C6StatusOMa_0, &qword_1EC1A92C0);
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v43 - v6;
  sub_1C5D6C400();
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5D6C5B4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v50 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5D6C60C(0, &qword_1EC1A92C8, sub_1C5D6C68C);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - v14;
  sub_1C5D6C6F4(0, &qword_1EC1A9540, &qword_1EC1A92C8, sub_1C5D6C68C, &unk_1EC1A92D0);
  v17 = v16;
  v49 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - v18;
  sub_1C5D6C788();
  v21 = v20;
  result = MEMORY[0x1EEE9AC00](v20);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v1[6];
  if (v26)
  {
    if (v26 != a1)
    {
      v48 = v23;
      swift_getKeyPath();
      v44 = v1;
      v27 = v26;
      sub_1C6014E10();

      *(swift_allocObject() + 16) = v27;
      sub_1C5D6C3B0(&unk_1EC1A92D0, &qword_1EC1A92C8, sub_1C5D6C68C);
      v45 = v27;
      sub_1C6016510();

      (*(v13 + 8))(v15, v12);
      v43 = sub_1C5C64D74(0, &qword_1ED7DCE50);
      v28 = sub_1C6016FD0();
      v60 = v28;
      v47 = sub_1C6016FB0();
      v29 = v50;
      __swift_storeEnumTagSinglePayload(v50, 1, 1, v47);
      sub_1C5D6C850();
      v46 = sub_1C5D6C54C();
      sub_1C60165D0();
      sub_1C5D6C8E8(v29);

      (*(v49 + 8))(v19, v17);
      swift_allocObject();
      v30 = v44;
      swift_weakInit();
      sub_1C5D6C974(&qword_1EC1AB650, sub_1C5D6C788);
      v31 = sub_1C6016600();

      (*(v48 + 8))(v25, v21);
      v30[2] = v31;
      v32 = v30;

      swift_getKeyPath();
      v33 = v51;
      v34 = v45;
      sub_1C6014E10();

      *(swift_allocObject() + 16) = v34;
      sub_1C5D6C3B0(&qword_1EC1A92C0, &qword_1EC1A92B8, _s3__C6StatusOMa_0);
      v35 = v34;
      v37 = v53;
      v36 = v54;
      sub_1C6016510();

      (*(v52 + 8))(v33, v36);
      v38 = sub_1C6016FD0();
      v60 = v38;
      __swift_storeEnumTagSinglePayload(v29, 1, 1, v47);
      sub_1C5D6C4C8();
      v40 = v56;
      v39 = v57;
      sub_1C60165D0();
      sub_1C5D6C8E8(v29);

      (*(v55 + 8))(v37, v40);
      swift_allocObject();
      swift_weakInit();
      sub_1C5D6C974(&qword_1EC1AB658, sub_1C5D6C400);
      v41 = v59;
      v42 = sub_1C6016600();

      (*(v58 + 8))(v39, v41);
      v32[3] = v42;
    }
  }

  else if (a1)
  {
    v1[2] = 0;

    v1[3] = 0;
  }

  return result;
}

double sub_1C5D6B28C@<D0>(id a1@<X1>, uint64_t a2@<X8>)
{
  [a1 duration];
  if (sub_1C6016810() & 1) != 0 && ([a1 duration], (sub_1C6017200()))
  {
    v3 = sub_1C5D62DEC();
    *a2 = a1;
    *(a2 + 8) = v3;
    *(a2 + 56) = xmmword_1C6039DF0;

    v4 = a1;
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *&result = 0x1FFFFFFFELL;
    *(a2 + 56) = xmmword_1C6039DE0;
  }

  return result;
}

id sub_1C5D6B354@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = sub_1C5D62DEC();
  if (v4 != 2)
  {
    goto LABEL_2;
  }

  v7 = [a2 error];
  if (v7)
  {
    sub_1C5CB5808();
    type metadata accessor for AVError();
    v8 = v7;
    if (swift_dynamicCast())
    {
      sub_1C5D6C974(&qword_1EC1A8E50, type metadata accessor for AVError);
      sub_1C6014D00();

      if (v15 == -11819)
      {
        goto LABEL_10;
      }
    }

    v9 = v8;
    if (swift_dynamicCast())
    {
      sub_1C5D6C974(&qword_1EC1A8E50, type metadata accessor for AVError);
      sub_1C6014D00();

      if (v15 == -11818)
      {
        goto LABEL_10;
      }
    }

    v8 = v9;
    if (swift_dynamicCast())
    {
      sub_1C5D6C974(&qword_1EC1A8E50, type metadata accessor for AVError);
      sub_1C6014D00();

      v10 = v7;
      if (v15 == -11912)
      {
LABEL_10:

LABEL_2:

        *(a3 + 48) = 0;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *a3 = 0u;
        *(a3 + 56) = xmmword_1C6039DE0;
        return result;
      }
    }

    else
    {
      v10 = v7;
    }
  }

  else
  {
    v10 = 0;
  }

  sub_1C5D63784();
  v13 = sub_1C5D7FA7C(a2, v10, v11, v12);

  *a3 = a2;
  *(a3 + 8) = v13;
  *(a3 + 16) = v5;
  *(a3 + 56) = xmmword_1C6039E00;

  return a2;
}

uint64_t sub_1C5D6B650(const void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C5D6B8CC(a1);
  }

  return result;
}

void sub_1C5D6B6B0(void *a1)
{
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
  v2 = a1;
  sub_1C5D6AA18(v3);
}

uint64_t sub_1C5D6B708(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 32);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    *(v3 + 32) = v5;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a2;
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v3 + 40);
    sub_1C5E36C20();
    *(v3 + 40) = v9;
    swift_endAccess();
    return v5;
  }

  return result;
}

uint64_t sub_1C5D6B7E0(uint64_t a1)
{
  swift_beginAccess();
  sub_1C5CE2404(a1);
  if (v3)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v1 + 40);
    *(v1 + 40) = 0x8000000000000000;
    sub_1C5D6C304();
    sub_1C6017660();
    sub_1C5D6C2B0();
    sub_1C6017680();
    *(v1 + 40) = v5;
  }

  return swift_endAccess();
}

uint64_t sub_1C5D6B8CC(const void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = )
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(*(v3 + 56) + ((v10 << 10) | (16 * v11)));
    memcpy(v13, a1, sizeof(v13));

    v12(v13);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5D6B9F0()
{

  return v0;
}

uint64_t sub_1C5D6BA28()
{
  sub_1C5D6B9F0();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1C5D6BA80()
{
  result = sub_1C6017350();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1C5D6BB2C()
{
  sub_1C5D6C2B0();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = 0;
  v0[5] = sub_1C6016880();
  v0[6] = 0;
  return v0;
}

uint64_t sub_1C5D6BB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlayerItemSubscription();
  (*(v6 + 16))(v8, a1, a3);

  v10 = sub_1C5D6BCC0(v8, a2);
  v13[3] = v9;
  v13[4] = swift_getWitnessTable();
  v13[0] = v10;
  sub_1C6016420();
  return __swift_destroy_boxed_opaque_existential_0(v13);
}

char *sub_1C5D6BD1C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = sub_1C6017350();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  __swift_storeEnumTagSinglePayload(&v2[*(v5 + 104)], 1, 1, v6);
  v11 = &v2[*(*v2 + 112)];
  *v11 = 0;
  v11[8] = 1;
  *(v2 + 2) = a2;
  (*(*(v6 - 8) + 32))(v10, a1, v6);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v6);
  v12 = *(*v2 + 104);
  swift_beginAccess();
  (*(v8 + 40))(&v2[v12], v10, v7);
  swift_endAccess();
  return v2;
}

uint64_t sub_1C5D6BED8(uint64_t a1)
{
  v3 = *v1;
  sub_1C6016460();
  if (sub_1C6016450())
  {
    sub_1C6016460();
    result = sub_1C6016450();
    if (result)
    {
      __break(1u);
LABEL_10:
      __break(1u);
      return result;
    }
  }

  sub_1C6016460();
  result = sub_1C6016450();
  if ((result & 1) == 0)
  {
    sub_1C6016460();
    result = sub_1C6016450();
    if (!a1 || (result & 1) != 0)
    {
      goto LABEL_10;
    }
  }

  v5 = v1 + *(*v1 + 112);
  if (*(v5 + 8))
  {
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = *(v3 + 80);
    v7[3] = *(v3 + 88);
    v7[4] = v6;

    v8 = sub_1C5D6B708(sub_1C5D6C2A4, v7);

    *v5 = v8;
    *(v5 + 8) = 0;
  }

  return result;
}

uint64_t sub_1C5D6C030(const void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &__dst[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(*result + 104);
    swift_beginAccess();
    if (__swift_getEnumTagSinglePayload(v9 + v10, 1, a3))
    {
    }

    else
    {
      (*(v5 + 16))(v7, v9 + v10, a3);

      memcpy(__dst, a1, sizeof(__dst));
      sub_1C6016430();
      return (*(v5 + 8))(v7, a3);
    }
  }

  return result;
}

uint64_t sub_1C5D6C1B8()
{
  v1 = v0 + *(*v0 + 112);
  if ((*(v1 + 8) & 1) == 0)
  {
    result = sub_1C5D6B7E0(*v1);
    *v1 = 0;
    *(v1 + 8) = 1;
  }

  return result;
}

unint64_t sub_1C5D6C2B0()
{
  result = qword_1EC1A9210;
  if (!qword_1EC1A9210)
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EC1A9210);
  }

  return result;
}

void sub_1C5D6C304()
{
  if (!qword_1EC1A9258)
  {
    sub_1C5D6C2B0();
    v0 = sub_1C6017690();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A9258);
    }
  }
}

uint64_t sub_1C5D6C36C(void *__src)
{
  v2 = *(v1 + 16);
  memcpy(__dst, __src, sizeof(__dst));
  return v2(__dst);
}

uint64_t sub_1C5D6C3B0(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1C5D6C60C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C5D6C400()
{
  if (!qword_1EC1A94A0)
  {
    sub_1C5D6C6F4(255, &qword_1EC1A9530, &qword_1EC1A92B8, _s3__C6StatusOMa_0, &qword_1EC1A92C0);
    sub_1C5C64D74(255, &qword_1ED7DCE50);
    sub_1C5D6C4C8();
    sub_1C5D6C54C();
    v0 = sub_1C6016400();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A94A0);
    }
  }
}

unint64_t sub_1C5D6C4C8()
{
  result = qword_1EC1A9538;
  if (!qword_1EC1A9538)
  {
    sub_1C5D6C6F4(255, &qword_1EC1A9530, &qword_1EC1A92B8, _s3__C6StatusOMa_0, &qword_1EC1A92C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1A9538);
  }

  return result;
}

unint64_t sub_1C5D6C54C()
{
  result = qword_1ED7DCE58;
  if (!qword_1ED7DCE58)
  {
    sub_1C5C64D74(255, &qword_1ED7DCE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7DCE58);
  }

  return result;
}

void sub_1C5D6C5B4()
{
  if (!qword_1ED7DCE60)
  {
    sub_1C6016FB0();
    v0 = sub_1C6017350();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7DCE60);
    }
  }
}

void sub_1C5D6C60C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1C5C64D74(255, &qword_1ED7DCEA8);
    a3(255);
    v5 = sub_1C60172C0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C5D6C68C()
{
  if (!qword_1ED7DCEF8)
  {
    sub_1C5C64D74(255, &qword_1ED7DCE68);
    v0 = sub_1C6016B80();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7DCEF8);
    }
  }
}

void sub_1C5D6C6F4(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_1C5D6C60C(255, a3, a4);
    sub_1C5D6C3B0(a5, a3, a4);
    v9 = sub_1C6016300();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C5D6C788()
{
  if (!qword_1EC1A94A8)
  {
    sub_1C5D6C6F4(255, &qword_1EC1A9540, &qword_1EC1A92C8, sub_1C5D6C68C, &unk_1EC1A92D0);
    sub_1C5C64D74(255, &qword_1ED7DCE50);
    sub_1C5D6C850();
    sub_1C5D6C54C();
    v0 = sub_1C6016400();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A94A8);
    }
  }
}

unint64_t sub_1C5D6C850()
{
  result = qword_1EC1A9548;
  if (!qword_1EC1A9548)
  {
    sub_1C5D6C6F4(255, &qword_1EC1A9540, &qword_1EC1A92C8, sub_1C5D6C68C, &unk_1EC1A92D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1A9548);
  }

  return result;
}

uint64_t sub_1C5D6C8E8(uint64_t a1)
{
  sub_1C5D6C5B4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5D6C974(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1C5D6C9EC(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) status];
  *v1 = result;
  return result;
}

uint64_t sub_1C5D6CA34()
{
  result = sub_1C6016900();
  qword_1ED7E1680 = result;
  return result;
}

uint64_t sub_1C5D6CA6C()
{
  v0 = sub_1C6017720();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1C5D6CAB8(char a1)
{
  result = 0xD000000000000023;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000002BLL;
      break;
    case 2:
      result = 0xD000000000000036;
      break;
    case 3:
      result = 0xD00000000000003DLL;
      break;
    case 4:
      result = 0xD00000000000003ELL;
      break;
    case 5:
    case 6:
      result = 0xD000000000000038;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C5D6CB70@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C5CB83B8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C5D6CBA0(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_19_15(a1);
  result = sub_1C5D2AB50(v3, *v2);
  *v1 = result;
  return result;
}

uint64_t sub_1C5D6CBCC(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_19_15(a1);
  result = sub_1C5C93ACC(v3, *v2);
  *v1 = result;
  return result;
}

uint64_t sub_1C5D6CBF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C5CB83A4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C5D6CC2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C5CB838C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C5D6CC68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C5CB83EC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C5D6CCB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5CB8418();
  *a1 = result;
  return result;
}

uint64_t sub_1C5D6CCDC(void *a1, uint64_t a2, void *a3, uint64_t a4, double a5)
{
  v6 = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  if (a3)
  {
    *(v5 + 128) = a5;
    *(v5 + 136) = a3;
    v11 = a1;
    v12 = a3;
  }

  else
  {
    sub_1C5C64D74(0, &qword_1ED7DCE50);
    v13 = a1;
    v14 = sub_1C6016FD0();
    *(v5 + 128) = a5;
    *(v5 + 136) = v14;
    v12 = sub_1C6016FD0();
  }

  *(v5 + 40) = v12;
  *(v5 + 144) = 0x3FFFFFLL;
  sub_1C5D7E40C(a4, v5 + 48);
  type metadata accessor for PlayerBoundaryTimeObserver();
  swift_allocObject();
  v15 = a1;
  v16 = a3;
  v17 = v15;
  v18 = v16;
  *(v5 + 88) = sub_1C5D69BC0(v17);
  OUTLINED_FUNCTION_19_16();
  *(v5 + 96) = sub_1C5D69BC0(v17);
  OUTLINED_FUNCTION_19_16();
  *(v5 + 104) = sub_1C5D69BC0(v17);
  OUTLINED_FUNCTION_19_16();
  *(v5 + 120) = sub_1C5D69BC0(v17);
  type metadata accessor for PlayerItemObserver();
  swift_allocObject();
  v19 = sub_1C5D6BB2C();

  sub_1C5D7E4D8(a4);
  *(v6 + 112) = v19;
  return v6;
}

uint64_t sub_1C5D6CE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_18_14(a1, a2, a3, a4, a5, a6, a7, a8, v19, *__src, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49[0]);
  if (v50)
  {
    __swift_project_boxed_opaque_existential_0(v49, v50);
    OUTLINED_FUNCTION_3_24();
    sub_1C6017540();
    OUTLINED_FUNCTION_86_0();
    OUTLINED_FUNCTION_5_24();
    MEMORY[0x1C69534E0](0xD000000000000021);
    sub_1C6017650();
    *__src = v52;
    v22 = v53;
    v10 = sub_1C5D7E534(__src);
    OUTLINED_FUNCTION_11_14(v10, v11, v12, v13, v14, v15, v16, v17, v20, __src[0], v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49[0], v49[1], v49[2], v50, v51, v52);
    sub_1C5DBBF0C();

    result = __swift_destroy_boxed_opaque_existential_0(v49);
  }

  else
  {
    result = sub_1C5D7E4D8(v49);
  }

  *(v8 + 144) &= ~a1;
  return result;
}

uint64_t sub_1C5D6CF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_18_14(a1, a2, a3, a4, a5, a6, a7, a8, v20, *__src, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50[0]);
  if (v51)
  {
    __swift_project_boxed_opaque_existential_0(v50, v51);
    OUTLINED_FUNCTION_3_24();
    sub_1C6017540();
    OUTLINED_FUNCTION_86_0();
    OUTLINED_FUNCTION_5_24();
    MEMORY[0x1C69534E0](0xD000000000000020);
    sub_1C6017650();
    *__src = v53;
    v23 = v54;
    v10 = sub_1C5D7E534(__src);
    OUTLINED_FUNCTION_11_14(v10, v11, v12, v13, v14, v15, v16, v17, v21, __src[0], v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50[0], v50[1], v50[2], v51, v52, v53);
    sub_1C5DBBF0C();

    result = __swift_destroy_boxed_opaque_existential_0(v50);
  }

  else
  {
    result = sub_1C5D7E4D8(v50);
  }

  v19 = *(v8 + 144);
  if ((a1 & ~v19) != 0)
  {
    *(v8 + 144) = v19 | a1;
  }

  return result;
}