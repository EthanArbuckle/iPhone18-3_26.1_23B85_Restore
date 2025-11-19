uint64_t sub_2480F5DD4(uint64_t a1)
{
  v2 = sub_2481242C8();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = *(a1 + 16);
  v11 = *(a1 + 32);
  v37 = *(a1 + 24);
  v12 = v3[2];
  v12(&v31 - v8, a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid, v2);
  v13 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName);
  v35 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName + 8);
  v36 = v13;
  v14 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory);
  v33 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory + 8);
  v34 = v14;
  v12(v7, a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID, v2);
  v15 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell);
  v31 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell + 8);
  v32 = v15;
  v16 = OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_memberships;
  swift_beginAccess();
  v17 = *(a1 + v16);
  v18 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases);
  v19 = type metadata accessor for UserRecord(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  *(v22 + 16) = v10;
  *(v22 + 24) = v37;
  *(v22 + 32) = v11;
  v23 = v3[4];
  v23(v22 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid, v9, v2);
  v24 = (v22 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName);
  v25 = v35;
  *v24 = v36;
  v24[1] = v25;
  v26 = (v22 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory);
  v27 = v33;
  *v26 = v34;
  v26[1] = v27;
  v23(v22 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID, v7, v2);
  v28 = (v22 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell);
  v29 = v31;
  *v28 = v32;
  v28[1] = v29;
  *(v22 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_memberships) = v17;
  *(v22 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases) = v18;

  return v22;
}

uint64_t sub_2480F6060(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2481242C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v30 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v26 = a1;
  v11 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_28;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (result)
  {
    v13 = 0;
    v14 = *(a2 + 16);
    v28 = (v5 + 8);
    v29 = (v5 + 16);
    v24 = (v5 + 40);
    v25 = "99998888-7777-6666-5555-4444";
    v27 = result;
    while (2)
    {
      v31 = v11 + 8 * v13;
      v32 = v11 & 0xC000000000000001;
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x24C1C6EA0](v13, v11);
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          break;
        }

        v15 = *(v11 + 8 * v13 + 32);
      }

      v33 = v13 + 1;
      v16 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_uuid;
      swift_beginAccess();
      (*v29)(v10, v15 + v16, v4);

      v17 = 0;
      do
      {
        if (v14 == v17)
        {
          result = (*v28)(v10, v4);
          goto LABEL_6;
        }

        v18 = v17 + 1;
        v19 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17;
        sub_2480FFF88(&qword_27EE87C68, MEMORY[0x277CC95F0]);
        v20 = sub_248124468();
        v17 = v18;
      }

      while ((v20 & 1) == 0);
      (*v28)(v10, v4);
      if (v32)
      {
        v21 = MEMORY[0x24C1C6EA0](v13, v11);
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v21 = *(v31 + 32);
      }

      sub_2480EB9B0(0xD00000000000001CLL, v25 | 0x8000000000000000, *(v21 + 16), v30);

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v11 < 0 || (v11 & 0x4000000000000000) != 0)
      {
        v11 = sub_2480F39B4(v11);
      }

      if (v13 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v22 = *((v11 & 0xFFFFFFFFFFFFFF8) + 8 * v13 + 0x20);
        v23 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_uuid;
        swift_beginAccess();
        (*v24)(v22 + v23, v30, v4);
        result = swift_endAccess();
        *v26 = v11;
LABEL_6:
        v13 = v33;
        if (v33 == v27)
        {
          return result;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    result = sub_2481247E8();
    if (result < 0)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_2480F63FC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2481242C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v30 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v26 = a1;
  v11 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_28;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (result)
  {
    v13 = 0;
    v14 = *(a2 + 16);
    v28 = (v5 + 8);
    v29 = (v5 + 16);
    v24 = (v5 + 40);
    v25 = "ctoryInternal11GroupRecord";
    v27 = result;
    while (2)
    {
      v31 = v11 + 8 * v13;
      v32 = v11 & 0xC000000000000001;
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x24C1C6EA0](v13, v11);
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          break;
        }

        v15 = *(v11 + 8 * v13 + 32);
      }

      v33 = v13 + 1;
      v16 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_uuid;
      swift_beginAccess();
      (*v29)(v10, v15 + v16, v4);

      v17 = 0;
      do
      {
        if (v14 == v17)
        {
          result = (*v28)(v10, v4);
          goto LABEL_6;
        }

        v18 = v17 + 1;
        v19 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17;
        sub_2480FFF88(&qword_27EE87C68, MEMORY[0x277CC95F0]);
        v20 = sub_248124468();
        v17 = v18;
      }

      while ((v20 & 1) == 0);
      (*v28)(v10, v4);
      if (v32)
      {
        v21 = MEMORY[0x24C1C6EA0](v13, v11);
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v21 = *(v31 + 32);
      }

      sub_2480EB9B0(0xD00000000000001CLL, v25 | 0x8000000000000000, *(v21 + 16), v30);

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v11 < 0 || (v11 & 0x4000000000000000) != 0)
      {
        v11 = sub_2480F39B4(v11);
      }

      if (v13 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v22 = *((v11 & 0xFFFFFFFFFFFFFF8) + 8 * v13 + 0x20);
        v23 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_uuid;
        swift_beginAccess();
        (*v24)(v22 + v23, v30, v4);
        result = swift_endAccess();
        *v26 = v11;
LABEL_6:
        v13 = v33;
        if (v33 == v27)
        {
          return result;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    result = sub_2481247E8();
    if (result < 0)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

BOOL sub_2480F6798(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_2481242C8() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_2480FFF88(&qword_27EE87C68, MEMORY[0x277CC95F0]);
  }

  while ((sub_248124468() & 1) == 0);
  return v4 != v5;
}

size_t sub_2480F68A4@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v103 = a2;
  v104 = a7;
  v100 = a6;
  v102 = a5;
  v107 = a8;
  v108 = a4;
  v11 = sub_2481242C8();
  v106 = *(v11 - 8);
  v12 = *(v106 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v94 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v94 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = (&v94 - v22);
  v24 = sub_2480F9374(a1, a3, sub_2480FA6CC);
  if (v8)
  {
    if (qword_27EE879F8 != -1)
    {
      swift_once();
    }

    v25 = sub_2481242F8();
    __swift_project_value_buffer(v25, qword_27EE87CC8);
    MEMORY[0x24C1C7A20](v8);
    v26 = sub_2481242D8();
    v27 = sub_248124628();

    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_22;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v109[0] = v29;
    *v28 = 136446210;
    v110 = v8;
    MEMORY[0x24C1C7A20](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
    v30 = sub_2481244A8();
    v32 = sub_24810C31C(v30, v31, v109);

    *(v28 + 4) = v32;
    v33 = "Failed to build record store: failed to merge system and local users: %{public}s";
    goto LABEL_21;
  }

  v34 = v24;
  v35 = v107;
  v97 = v21;
  v98 = v23;
  v96 = v15;
  v105 = a3;
  v99 = v18;
  v36 = 0;
  v37 = sub_2480F9374(v103, v108, sub_2480FA33C);
  if (v34 >> 62)
  {
    v38 = sub_2481247E8();
  }

  else
  {
    v38 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = v35;
  v103 = v11;
  if (v38)
  {
    v101 = v37;
    v95 = 0;
    v110 = MEMORY[0x277D84F90];
    sub_248124788();
    if (v38 < 0)
    {
      __break(1u);
      goto LABEL_35;
    }

    v40 = 0;
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x24C1C6EA0](v40, v34);
      }

      else
      {
        v41 = *(v34 + 8 * v40 + 32);
      }

      ++v40;
      sub_2480F5DD4(v41);
      swift_beginAccess();

      sub_2480F8F5C(v42);
      swift_endAccess();

      sub_248124768();
      v43 = v110[2];
      sub_248124798();
      sub_2481247A8();
      sub_248124778();
    }

    while (v38 != v40);

    v44 = v110;
    v36 = v95;
    v39 = v107;
    v11 = v103;
    v37 = v101;
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
  }

  sub_2480F956C(v44, v37);
  v45 = v102;
  v46 = v98;
  if (v36)
  {

    if (qword_27EE879F8 == -1)
    {
LABEL_19:
      v47 = sub_2481242F8();
      __swift_project_value_buffer(v47, qword_27EE87CC8);
      MEMORY[0x24C1C7A20](v36);
      v26 = sub_2481242D8();
      v27 = sub_248124628();

      if (!os_log_type_enabled(v26, v27))
      {
LABEL_22:

        return swift_willThrow();
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v109[0] = v29;
      *v28 = 136446210;
      v110 = v36;
      MEMORY[0x24C1C7A20](v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
      v48 = sub_2481244A8();
      v50 = sub_24810C31C(v48, v49, v109);

      *(v28 + 4) = v50;
      v33 = "Failed to build record store: failed to validate group memberships: %{public}s";
LABEL_21:
      _os_log_impl(&dword_2480DF000, v26, v27, v33, v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x24C1C7B90](v29, -1, -1);
      MEMORY[0x24C1C7B90](v28, -1, -1);
      goto LABEL_22;
    }

LABEL_35:
    swift_once();
    goto LABEL_19;
  }

  v101 = *(v106 + 16);
  v102 = v106 + 16;
  v101(v98, v45, v11);

  sub_2480F7EE4(v52, v37, v46, v39);
  sub_2480F9E64(v44, v37);

  v53 = *v39;
  if (v53 >> 62)
  {
    result = sub_2481247E8();
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_38;
  }

  v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v54)
  {
    while (1)
    {
      v46 = (v53 & 0xC000000000000001);
      if ((v53 & 0xC000000000000001) != 0 || v54 <= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      v54 = result;
      if (!result)
      {
        goto LABEL_40;
      }
    }

    v55 = 0;
    do
    {
      if (v46)
      {
        v56 = MEMORY[0x24C1C6EA0](v55, v53);
        v57 = v56;
      }

      else
      {
        v57 = *(v53 + 8 * v55 + 32);
      }

      MEMORY[0x28223BE20](v56);
      *(&v94 - 2) = v107;
      *(&v94 - 1) = v55;
      *(v57 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_isMutable) = sub_2480FABB4(sub_2480FF900, (&v94 - 4), v105) & 1;

      ++v55;
    }

    while (v54 != v55);
  }

LABEL_40:
  v58 = v107;
  v59 = *(v107 + 8);
  v98 = (v107 + 8);
  if (v59 >> 62)
  {
    v46 = v59;
    result = sub_2481247E8();
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_55;
    }

    __break(1u);
    goto LABEL_54;
  }

  v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v60)
  {
    while ((v59 & 0xC000000000000001) == 0 && v60 > *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      v60 = result;
      v59 = v46;
      v58 = v107;
      if (!result)
      {
        goto LABEL_56;
      }
    }

    v61 = 0;
    do
    {
      if ((v59 & 0xC000000000000001) != 0)
      {
        v63 = MEMORY[0x24C1C6EA0](v61, v59);
        v64 = v63;
      }

      else
      {
        v64 = v59[v61 + 4];
      }

      MEMORY[0x28223BE20](v63);
      *(&v94 - 2) = v58;
      *(&v94 - 1) = v61;
      v65 = sub_2480FABB4(sub_2480FF920, (&v94 - 4), v108);
      if (v65)
      {
        v62 = 1;
      }

      else
      {
        MEMORY[0x28223BE20](v65);
        *(&v94 - 2) = v58;
        *(&v94 - 1) = v61;
        v62 = sub_2480FACF0(sub_2480FF940, (&v94 - 4), v104);
      }

      ++v61;
      *(v64 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_isMutable) = v62 & 1;
    }

    while (v60 != v61);
  }

LABEL_56:
  if (v100)
  {
    v95 = 0;
    v66 = v105;
    if (v105 >> 62)
    {
      v92 = v105;
      v93 = sub_2481247E8();
      v66 = v92;
      v67 = v93;
    }

    else
    {
      v67 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v68 = v108;
    v69 = v99;
    v70 = v97;
    v71 = MEMORY[0x277D84F90];
    if (v67)
    {
      v72 = v66;
      v109[0] = MEMORY[0x277D84F90];
      result = sub_2480FC404(0, v67 & ~(v67 >> 63), 0);
      if (v67 < 0)
      {
        __break(1u);
        goto LABEL_88;
      }

      v71 = v109[0];
      v73 = v72;
      v74 = v103;
      v75 = v96;
      if ((v72 & 0xC000000000000001) != 0)
      {
        v76 = 0;
        do
        {
          v77 = MEMORY[0x24C1C6EA0](v76, v73);
          v101(v70, v77 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid, v74);
          swift_unknownObjectRelease();
          v109[0] = v71;
          v79 = *(v71 + 16);
          v78 = *(v71 + 24);
          if (v79 >= v78 >> 1)
          {
            sub_2480FC404(v78 > 1, v79 + 1, 1);
            v71 = v109[0];
          }

          ++v76;
          *(v71 + 16) = v79 + 1;
          (*(v106 + 32))(v71 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v79, v70, v74);
          v73 = v105;
        }

        while (v67 != v76);
      }

      else
      {
        v80 = (v72 + 32);
        do
        {
          v101(v75, *v80 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid, v74);
          v109[0] = v71;
          v82 = *(v71 + 16);
          v81 = *(v71 + 24);
          if (v82 >= v81 >> 1)
          {
            sub_2480FC404(v81 > 1, v82 + 1, 1);
            v75 = v96;
            v71 = v109[0];
          }

          *(v71 + 16) = v82 + 1;
          (*(v106 + 32))(v71 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v82, v75, v74);
          ++v80;
          --v67;
        }

        while (v67);
      }

      v58 = v107;
      v68 = v108;
      v69 = v99;
    }

    if (v68 >> 62)
    {
      v83 = sub_2481247E8();
    }

    else
    {
      v83 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v84 = MEMORY[0x277D84F90];
    if (!v83)
    {
LABEL_84:
      sub_2480F6060(v58, v71);

      sub_2480F63FC(v98, v84);

      return sub_2480E975C();
    }

    v109[0] = MEMORY[0x277D84F90];
    result = sub_2480FC404(0, v83 & ~(v83 >> 63), 0);
    if ((v83 & 0x8000000000000000) == 0)
    {
      v85 = 0;
      v84 = v109[0];
      v86 = v108 & 0xC000000000000001;
      do
      {
        if (v86)
        {
          v87 = MEMORY[0x24C1C6EA0](v85, v108);
          v101(v69, v87 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v103);
          swift_unknownObjectRelease();
        }

        else
        {
          v101(v69, *(v108 + 8 * v85 + 32) + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v103);
        }

        v109[0] = v84;
        v89 = *(v84 + 16);
        v88 = *(v84 + 24);
        v90 = v106;
        if (v89 >= v88 >> 1)
        {
          sub_2480FC404(v88 > 1, v89 + 1, 1);
          v90 = v106;
          v84 = v109[0];
        }

        ++v85;
        *(v84 + 16) = v89 + 1;
        v91 = v84 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v89;
        v69 = v99;
        (*(v90 + 32))(v91, v99, v103);
      }

      while (v83 != v85);
      v58 = v107;
      goto LABEL_84;
    }

LABEL_88:
    __break(1u);
  }

  return result;
}

uint64_t sub_2480F75A0()
{
  v0 = sub_2481242F8();
  __swift_allocate_value_buffer(v0, qword_27EE87CC8);
  __swift_project_value_buffer(v0, qword_27EE87CC8);
  return sub_2481242E8();
}

unint64_t sub_2480F7620()
{
  v1 = v0;
  v63 = sub_2481242C8();
  v2 = *(v63 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v63);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v57 - v8;
  MEMORY[0x28223BE20](v7);
  v62 = &v57 - v10;
  v11 = type metadata accessor for RecordStoreBuilderError();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2480FFF24(v1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v20 = v62;
        v19 = v63;
        (*(v2 + 32))(v62, v14, v63);
        v65 = 0;
        v66 = 0xE000000000000000;
        sub_2481246E8();

        v65 = 0xD00000000000001CLL;
        v66 = 0x8000000248129000;
        sub_2480FFF88(&qword_27EE87D58, MEMORY[0x277CC95F0]);
        v34 = sub_248124938();
        MEMORY[0x24C1C6C90](v34);

LABEL_15:
        v30 = v65;
        (*(v2 + 8))(v20, v19);
        return v30;
      }

      v22 = *v14;
      v23 = *(v14 + 1);
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_2481246E8();

      v65 = 0xD00000000000001CLL;
      v66 = 0x8000000248129020;
      MEMORY[0x24C1C6C90](v22, v23);
    }

    else
    {
      v32 = *v14;
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_2481246E8();

      v65 = 0xD00000000000001ALL;
      v66 = 0x8000000248129040;
      LODWORD(v64) = v32;
      v33 = sub_248124938();
      MEMORY[0x24C1C6C90](v33);
    }

    return v65;
  }

  else
  {
    if (EnumCaseMultiPayload <= 4)
    {
      v16 = *v14;
      v17 = *(v14 + 1);
      if (EnumCaseMultiPayload == 3)
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CF0, &qword_248126320);
        v20 = v62;
        v19 = v63;
        (*(v2 + 32))(v62, &v14[*(v18 + 48)], v63);
        v65 = 0;
        v66 = 0xE000000000000000;
        sub_2481246E8();
        v21 = "Invalid primary group id in user ";
      }

      else
      {
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CF0, &qword_248126320);
        v20 = v62;
        v19 = v63;
        (*(v2 + 32))(v62, &v14[*(v35 + 48)], v63);
        v65 = 0;
        v66 = 0xE000000000000000;
        sub_2481246E8();
        v21 = "Invalid group membership in user ";
      }

      MEMORY[0x24C1C6C90](0xD000000000000021, (v21 - 32) | 0x8000000000000000);
      MEMORY[0x24C1C6C90](v16, v17);

      MEMORY[0x24C1C6C90](0x2070756F7267203ALL, 0xE800000000000000);
      sub_2480FFF88(&qword_27EE87D58, MEMORY[0x277CC95F0]);
      v36 = sub_248124938();
      MEMORY[0x24C1C6C90](v36);

      MEMORY[0x24C1C6C90](0x6F6E2073656F6420, 0xEF74736978652074);
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CF8, &qword_248126328) + 48);
      v25 = *(v2 + 32);
      v27 = v62;
      v26 = v63;
      v25(v62, v14, v63);
      v25(v9, &v14[v24], v26);
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_2481246E8();
      MEMORY[0x24C1C6C90](0xD00000000000001ELL, 0x8000000248128F80);
      sub_2480FFF88(&qword_27EE87D58, MEMORY[0x277CC95F0]);
      v28 = sub_248124938();
      MEMORY[0x24C1C6C90](v28);

      MEMORY[0x24C1C6C90](0x2070756F7267203ALL, 0xE800000000000000);
      v29 = sub_248124938();
      MEMORY[0x24C1C6C90](v29);

      MEMORY[0x24C1C6C90](0x6F6E2073656F6420, 0xEF74736978652074);
      v30 = v65;
      v31 = *(v2 + 8);
      v31(v9, v26);
      v31(v27, v26);
    }

    else
    {
      v37 = *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87D00, &qword_248126330) + 48)];
      (*(v2 + 32))(v6, v14, v63);
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_2481246E8();

      v65 = 0xD000000000000017;
      v66 = 0x8000000248128F40;
      sub_2480FFF88(&qword_27EE87D58, MEMORY[0x277CC95F0]);
      v38 = sub_248124938();
      MEMORY[0x24C1C6C90](v38);

      MEMORY[0x24C1C6C90](0xD000000000000013, 0x8000000248128F60);
      v39 = *(v37 + 16);
      if (v39)
      {
        v58 = v6;
        v64 = MEMORY[0x277D84F90];
        sub_2480FC3E4(0, v39, 0);
        v40 = v64;
        v59 = v2;
        v42 = v2 + 16;
        v41 = *(v2 + 16);
        v43 = *(v2 + 80);
        v57 = v37;
        v44 = v37 + ((v43 + 32) & ~v43);
        v60 = *(v42 + 56);
        v61 = v41;
        do
        {
          v45 = v62;
          v46 = v63;
          v61(v62, v44, v63);
          v47 = sub_248124278();
          v49 = v48;
          (*(v42 - 8))(v45, v46);
          v64 = v40;
          v51 = *(v40 + 16);
          v50 = *(v40 + 24);
          if (v51 >= v50 >> 1)
          {
            sub_2480FC3E4((v50 > 1), v51 + 1, 1);
            v40 = v64;
          }

          *(v40 + 16) = v51 + 1;
          v52 = v40 + 16 * v51;
          *(v52 + 32) = v47;
          *(v52 + 40) = v49;
          v44 += v60;
          --v39;
        }

        while (v39);

        v6 = v58;
        v2 = v59;
      }

      else
      {

        v40 = MEMORY[0x277D84F90];
      }

      v64 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87B30, &qword_248126410);
      sub_2480FFFD0();
      v53 = sub_248124458();
      v55 = v54;

      MEMORY[0x24C1C6C90](v53, v55);

      v30 = v65;
      (*(v2 + 8))(v6, v63);
    }
  }

  return v30;
}

uint64_t sub_2480F7EE4@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v98 = a3;
  v97 = a4;
  v115 = sub_2481242C8();
  v100 = *(v115 - 8);
  v6 = *(v100 + 64);
  v7 = MEMORY[0x28223BE20](v115);
  v111 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v105 = &v96 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v113 = &v96 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v96 - v13;
  v15 = sub_2480F33D8(MEMORY[0x277D84F90]);
  v99 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_68;
  }

  v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v112 = a1;
  v106 = a2;
  if (v16)
  {
    v17 = 0;
    v18 = a2 & 0xC000000000000001;
    v110 = a2 & 0xFFFFFFFFFFFFFF8;
    v114 = (v100 + 16);
    v109 = (v100 + 8);
    while (1)
    {
      if (v18)
      {
        v23 = MEMORY[0x24C1C6EA0](v17, a2);
        a1 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v17 >= *(v110 + 16))
        {
          goto LABEL_63;
        }

        v23 = *(a2 + 8 * v17 + 32);

        a1 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_62:
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
          v16 = sub_2481247E8();
          goto LABEL_3;
        }
      }

      a2 = *v114;
      (*v114)(v14, v23 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v115);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v116 = v15;
      v25 = sub_2480F1D2C(v14);
      v27 = v15[2];
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_64;
      }

      v31 = v26;
      if (v15[3] < v30)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v38 = v25;
      sub_2480F2BFC();
      v25 = v38;
      v15 = v116;
      if (v31)
      {
LABEL_5:
        v19 = v15[7];
        v20 = v15;
        v21 = *(v19 + 8 * v25);
        *(v19 + 8 * v25) = v23;

        v15 = v20;

        (*v109)(v14, v115);
        goto LABEL_6;
      }

LABEL_16:
      v15[(v25 >> 6) + 8] |= 1 << v25;
      v33 = v100;
      v34 = v15[6] + *(v100 + 72) * v25;
      v108 = v25;
      v35 = v115;
      (a2)(v34, v14, v115);
      *(v15[7] + 8 * v108) = v23;

      (*(v33 + 8))(v14, v35);
      v36 = v15[2];
      v29 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v29)
      {
        goto LABEL_67;
      }

      v15[2] = v37;
LABEL_6:
      ++v17;
      v22 = a1 == v16;
      a2 = v106;
      a1 = v112;
      if (v22)
      {
        goto LABEL_23;
      }
    }

    sub_2480F1F4C(v30, isUniquelyReferenced_nonNull_native);
    v25 = sub_2480F1D2C(v14);
    if ((v31 & 1) != (v32 & 1))
    {
      goto LABEL_73;
    }

LABEL_15:
    v15 = v116;
    if (v31)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_23:
  if (a1 >> 62)
  {
    v107 = sub_2481247E8();
  }

  else
  {
    v107 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = MEMORY[0x277D84F90];
  v114 = v15;
  if (v107)
  {
    v116 = MEMORY[0x277D84F90];
    v40 = v107;
    sub_248124788();
    if ((v40 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_71;
    }

    v41 = 0;
    v104 = a1 & 0xC000000000000001;
    v102 = (v100 + 8);
    v103 = (v100 + 16);
    v101 = (v100 + 32);
    do
    {
      if (v104)
      {
        v42 = MEMORY[0x24C1C6EA0](v41, a1);
      }

      else
      {
        v42 = *(a1 + 8 * v41 + 32);
      }

      v43 = v115;
      v14 = *(v42 + 16);
      v44 = *(v42 + 32);
      v110 = *(v42 + 24);
      v45 = *v103;
      (*v103)(v113, v42 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid, v115);
      v46 = *(v42 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName + 8);
      v109 = *(v42 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName);
      v47 = v43;
      a1 = *(v42 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory);
      v48 = *(v42 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory + 8);
      a2 = v105;
      v45(v105, v42 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID, v47);
      v15 = v114;
      if (!v114[2])
      {
        goto LABEL_65;
      }

      v49 = sub_2480F1D2C(a2);
      if ((v50 & 1) == 0)
      {
        goto LABEL_66;
      }

      ++v41;
      v51 = *(v15[7] + 8 * v49);
      v52 = a2;
      LODWORD(v108) = v14;
      v53 = *v102;

      v54 = v52;
      v55 = v115;
      v53(v54, v115);
      v56 = *(v51 + 32);

      v58 = *(v42 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell);
      v57 = *(v42 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell + 8);

      v59 = type metadata accessor for RecordStore.UserStoreRecord(0);
      v60 = *(v59 + 48);
      v61 = *(v59 + 52);
      v62 = swift_allocObject();
      *(v62 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_isMutable) = 0;
      *(v62 + 16) = v108;
      *(v62 + 24) = v110;
      *(v62 + 32) = v44;
      (*v101)(v62 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_uuid, v113, v55);
      v63 = (v62 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_fullName);
      *v63 = v109;
      v63[1] = v46;
      v64 = (v62 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_homeDirectory);
      *v64 = a1;
      v64[1] = v48;
      *(v62 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_primaryGroupID) = v56;
      v65 = (v62 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_shell);
      *v65 = v58;
      v65[1] = v57;
      sub_248124768();
      v66 = v116[2];
      sub_248124798();
      sub_2481247A8();
      sub_248124778();
      a1 = v112;
    }

    while (v107 != v41);
    v67 = v116;
    a2 = v106;
    v68 = v99;
    v39 = MEMORY[0x277D84F90];
  }

  else
  {
    v67 = MEMORY[0x277D84F90];
    v68 = v99;
  }

  v69 = &OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_memberNames;
  v107 = v67;
  if (!v68)
  {
    v70 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v70)
    {
      goto LABEL_38;
    }

LABEL_59:

    v86 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_51;
    }

LABEL_60:
    v87 = sub_2481247E8();
    if (!v87)
    {
      goto LABEL_61;
    }

LABEL_52:
    if (v87 >= 1)
    {
      v88 = 0;
      do
      {
        if ((v86 & 0xC000000000000001) != 0)
        {
          v89 = MEMORY[0x24C1C6EA0](v88, v86);
        }

        else
        {
          v89 = *(v86 + 8 * v88 + 32);
        }

        ++v88;
        v90 = *v69;
        swift_beginAccess();
        sub_2480FC8E0((v89 + v90));
        swift_endAccess();
      }

      while (v87 != v88);
      goto LABEL_61;
    }

    goto LABEL_72;
  }

  v70 = sub_2481247E8();
  if (!v70)
  {
    goto LABEL_59;
  }

LABEL_38:
  v117 = v39;
  sub_248124788();
  if (v70 < 0)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    result = sub_248124D08();
    __break(1u);
    return result;
  }

  v71 = 0;
  v112 = a2 & 0xC000000000000001;
  v109 = v70;
  v110 = v100 + 16;
  v108 = v100 + 32;
  while (1)
  {
    if (v112)
    {
      v78 = MEMORY[0x24C1C6EA0](v71, a2);
    }

    else
    {
      v78 = *(a2 + 8 * v71 + 32);
    }

    v79 = *(v78 + 32);
    v81 = *(v78 + 40);
    v80 = *(v78 + 48);
    (*v110)(v111, v78 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v115);

    v82 = sub_2480F893C(v78, v114, a1);
    v69 = *(v82 + 16);
    if (v69)
    {
      break;
    }

    v72 = MEMORY[0x277D84F90];
LABEL_41:
    v71 = (v71 + 1);
    v73 = type metadata accessor for RecordStore.GroupStoreRecord(0);
    v74 = *(v73 + 48);
    v75 = *(v73 + 52);
    v76 = swift_allocObject();
    *(v76 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_isMutable) = 0;
    *(v76 + 16) = v79;
    *(v76 + 24) = v81;
    *(v76 + 32) = v80;
    (*v108)(v76 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_uuid, v111, v115);
    v69 = &OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_memberNames;
    *(v76 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_memberNames) = v72;
    sub_248124768();
    v77 = *(v117 + 16);
    sub_248124798();
    sub_2481247A8();
    sub_248124778();
    if (v109 == v71)
    {
      goto LABEL_50;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C90, &qword_248126248);
  v72 = swift_allocObject();
  v83 = _swift_stdlib_malloc_size(v72);
  v84 = v83 - 32;
  if (v83 < 32)
  {
    v84 = v83 - 17;
  }

  v72[2] = v69;
  v72[3] = 2 * (v84 >> 4);
  v85 = sub_2480FEBE0(&v116, v72 + 4, v69, v82);

  sub_2480FF960();
  if (v85 == v69)
  {
    goto LABEL_41;
  }

  __break(1u);
LABEL_50:

  v86 = v117;
  if (v117 >> 62)
  {
    goto LABEL_60;
  }

LABEL_51:
  v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v87)
  {
    goto LABEL_52;
  }

LABEL_61:
  v91 = v100;
  v92 = v113;
  v93 = v98;
  v94 = v115;
  (*(v100 + 16))(v113, v98, v115);
  sub_2480E89BC(v107, v86, v92, v97);
  return (*(v91 + 8))(v93, v94);
}

uint64_t sub_2480F893C(void *a1, uint64_t a2, unint64_t a3)
{
  v52 = a2;
  v64 = a1;
  v4 = sub_2481242C8();
  v55 = *(v4 - 8);
  v5 = v55[8];
  v6 = MEMORY[0x28223BE20](v4);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - v8;
  v65 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_36:
    v10 = sub_2481247E8();
  }

  else
  {
    v10 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  v56 = a3;
  if (v10)
  {
    v12 = 0;
    v58 = a3 & 0xFFFFFFFFFFFFFF8;
    v59 = a3 & 0xC000000000000001;
    v57 = a3 + 32;
    v62 = v55 + 2;
    v63 = OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid;
    v13 = (v55 + 1);
    v54 = v10;
    while (1)
    {
      if (v59)
      {
        v14 = MEMORY[0x24C1C6EA0](v12, a3);
        v15 = __OFADD__(v12++, 1);
        if (v15)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v12 >= *(v58 + 16))
        {
          __break(1u);
          goto LABEL_36;
        }

        v14 = *(v57 + 8 * v12);

        v15 = __OFADD__(v12++, 1);
        if (v15)
        {
LABEL_20:
          __break(1u);
LABEL_21:
          v27 = v65;
          v11 = MEMORY[0x277D84F90];
          if ((v65 & 0x8000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_37;
        }
      }

      v16 = OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_memberships;
      swift_beginAccess();
      v17 = *(v14 + v16);
      if (*(v17 + 16))
      {
        v60 = v14;
        v61 = v12;
        v18 = *(v17 + 40);
        sub_2480FFF88(&qword_27EE87A58, MEMORY[0x277CC95F0]);

        v19 = sub_248124438();
        v20 = -1 << *(v17 + 32);
        v21 = v19 & ~v20;
        if ((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
        {
          v22 = ~v20;
          v23 = v55[9];
          v24 = v55[2];
          while (1)
          {
            v24(v9, *(v17 + 48) + v23 * v21, v4);
            sub_2480FFF88(&qword_27EE87C68, MEMORY[0x277CC95F0]);
            v25 = sub_248124468();
            (*v13)(v9, v4);
            if (v25)
            {
              break;
            }

            v21 = (v21 + 1) & v22;
            if (((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          sub_248124768();
          v26 = *(v65 + 16);
          sub_248124798();
          sub_2481247A8();
          sub_248124778();
        }

        else
        {
LABEL_14:
        }

        a3 = v56;
        v10 = v54;
        v12 = v61;
        if (v61 == v54)
        {
          goto LABEL_21;
        }
      }

      else
      {

        if (v12 == v10)
        {
          goto LABEL_21;
        }
      }
    }
  }

  v27 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

LABEL_24:
  if ((v27 & 0x4000000000000000) != 0)
  {
LABEL_37:
    v28 = sub_2481247E8();
    if (!v28)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v28 = *(v27 + 16);
    if (!v28)
    {
      goto LABEL_38;
    }
  }

  v65 = v11;
  result = sub_2480FC3E4(0, v28 & ~(v28 >> 63), 0);
  if (v28 < 0)
  {
    goto LABEL_54;
  }

  v30 = 0;
  v11 = v65;
  do
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x24C1C6EA0](v30, v27);
    }

    else
    {
      v31 = *(v27 + 8 * v30 + 32);
    }

    v32 = *(v31 + 24);
    v33 = *(v31 + 32);

    v65 = v11;
    v35 = *(v11 + 16);
    v34 = *(v11 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_2480FC3E4((v34 > 1), v35 + 1, 1);
      v11 = v65;
    }

    ++v30;
    *(v11 + 16) = v35 + 1;
    v36 = v11 + 16 * v35;
    *(v36 + 32) = v32;
    *(v36 + 40) = v33;
  }

  while (v28 != v30);
LABEL_38:

  v63 = sub_2480FF968(v11);

  v37 = *(v64 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_nestedGroups);
  v65 = MEMORY[0x277D84FA0];
  v38 = 1 << *(v37 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v37 + 56);
  v41 = (v38 + 63) >> 6;
  v64 = v55 + 2;
  v42 = (v55 + 1);
  result = swift_bridgeObjectRetain_n();
  v43 = 0;
  if (v40)
  {
    while (1)
    {
      v44 = v43;
      v45 = v53;
LABEL_46:
      result = (v55[2])(v45, *(v37 + 48) + v55[9] * (__clz(__rbit64(v40)) | (v44 << 6)), v4);
      v46 = v52;
      if (!*(v52 + 16))
      {
        break;
      }

      result = sub_2480F1D2C(v45);
      if ((v47 & 1) == 0)
      {
        goto LABEL_53;
      }

      v40 &= v40 - 1;
      v48 = *(*(v46 + 56) + 8 * result);

      v50 = sub_2480F893C(v49, v46, v56);

      sub_2480F916C(v50);
      result = (*v42)(v45, v4);
      v43 = v44;
      if (!v40)
      {
        goto LABEL_42;
      }
    }
  }

  else
  {
LABEL_42:
    v45 = v53;
    while (1)
    {
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v44 >= v41)
      {

        return sub_2480F9270(v65, v63);
      }

      v40 = *(v37 + 56 + 8 * v44);
      ++v43;
      if (v40)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_2480F8F5C(uint64_t a1)
{
  v2 = sub_2481242C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v24 - v9;
  result = MEMORY[0x28223BE20](v8);
  v13 = v24 - v12;
  v14 = 0;
  v25 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[1] = v3 + 32;
  v24[2] = v3 + 16;
  v24[0] = v3 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v3 + 16))(v13, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), v2);
      (*(v3 + 32))(v7, v13, v2);
      sub_2480FD3BC(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2480F916C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_2480FD69C(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_2480F9270(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_2480FD69C(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2480F9374(unint64_t a1, unint64_t a2, void (*a3)(uint64_t, uint64_t *))
{
  v18 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v17 = a2;
  if (!v6)
  {
LABEL_15:
    if (v17 >> 62)
    {
      goto LABEL_29;
    }

    v12 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      return v18;
    }

LABEL_17:
    for (i = 0; ; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x24C1C6EA0](i, v17);
        v15 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      else
      {
        if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_29:
          v12 = sub_2481247E8();
          if (!v12)
          {
            return v18;
          }

          goto LABEL_17;
        }

        v14 = *(v17 + 8 * i + 32);

        v15 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_26;
        }
      }

      a3(v14, &v18);
      if (v3)
      {
        goto LABEL_27;
      }

      if (v15 == v12)
      {
        return v18;
      }
    }
  }

LABEL_3:
  v7 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1C6EA0](v7, a1);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a1 + 8 * v7 + 32);

      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        v10 = a2;
        v11 = sub_2481247E8();
        a2 = v10;
        v6 = v11;
        v17 = v10;
        if (!v11)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    a3(v8, &v18);
    if (v3)
    {
      break;
    }

    ++v7;
    if (v9 == v6)
    {
      goto LABEL_15;
    }
  }

LABEL_27:
}

uint64_t sub_2480F956C(uint64_t a1, unint64_t a2)
{
  v93 = sub_2481242C8();
  v85 = *(v93 - 8);
  v4 = *(v85 + 64);
  v5 = MEMORY[0x28223BE20](v93);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v83 = &v72 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v77 = &v72 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v72 - v12;
  v14 = sub_2480F33D8(MEMORY[0x277D84F90]);
  v89 = a2;
  if (a2 >> 62)
  {
    goto LABEL_74;
  }

  v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v80 = a1;
  v84 = v7;
  v90 = v15;
  if (v15)
  {
    v16 = 0;
    v87 = v89 & 0xFFFFFFFFFFFFFF8;
    v88 = (v89 & 0xC000000000000001);
    v91 = v85 + 16;
    v86 = (v85 + 8);
    do
    {
      if (v88)
      {
        v18 = MEMORY[0x24C1C6EA0](v16, v89);
        v7 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (v16 >= *(v87 + 16))
        {
          goto LABEL_69;
        }

        v18 = *(v89 + 8 * v16 + 32);

        v7 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          v15 = sub_2481247E8();
          goto LABEL_3;
        }
      }

      v19 = *v91;
      (*v91)(v13, v18 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v93);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v92 = v14;
      v22 = sub_2480F1D2C(v13);
      v23 = v14[2];
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_70;
      }

      v26 = v21;
      if (v14[3] >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v14 = v92;
          if (v21)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_2480F2BFC();
          v14 = v92;
          if (v26)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_2480F1F4C(v25, isUniquelyReferenced_nonNull_native);
        v27 = sub_2480F1D2C(v13);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_77;
        }

        v22 = v27;
        v14 = v92;
        if (v26)
        {
LABEL_5:
          v17 = v14[7];
          a1 = *(v17 + 8 * v22);
          *(v17 + 8 * v22) = v18;

          (*v86)(v13, v93);
          goto LABEL_6;
        }
      }

      v14[(v22 >> 6) + 8] |= 1 << v22;
      v29 = v85;
      a1 = v93;
      v19(v14[6] + *(v85 + 72) * v22, v13, v93);
      *(v14[7] + 8 * v22) = v18;

      (*(v29 + 8))(v13, a1);
      v30 = v14[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_71;
      }

      v14[2] = v32;
LABEL_6:
      ++v16;
    }

    while (v7 != v90);
  }

  if (v80 >> 62)
  {
    v33 = sub_2481247E8();
  }

  else
  {
    v33 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = v78;
  v13 = v89;
  if (!v33)
  {
LABEL_50:
    if (v90)
    {
      v52 = 0;
      v57 = v13 & 0xC000000000000001;
      v7 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v57)
        {
          a1 = MEMORY[0x24C1C6EA0](v52, v13);
          v59 = (v52 + 1);
          if (__OFADD__(v52, 1))
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v52 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_72;
          }

          a1 = *(v13 + 8 * v52 + 32);

          v59 = (v52 + 1);
          if (__OFADD__(v52, 1))
          {
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }
        }

        sub_2480FB3A0(a1, v14, v7);
        if (v34)
        {
          break;
        }

        ++v52;
        if (v59 == v90)
        {
        }
      }
    }
  }

  v35 = 0;
  v76 = v80 & 0xC000000000000001;
  v74 = v80 & 0xFFFFFFFFFFFFFF8;
  v73 = v80 + 32;
  v88 = (v85 + 16);
  v36 = (v85 + 8);
  v82 = v85 + 32;
  v86 = (v85 + 8);
  v75 = v33;
  while (1)
  {
    if (v76)
    {
      v37 = MEMORY[0x24C1C6EA0](v35, v80);
      a1 = v77;
      v31 = __OFADD__(v35, 1);
      v38 = v35 + 1;
      if (v31)
      {
        goto LABEL_73;
      }
    }

    else
    {
      a1 = v77;
      if (v35 >= *(v74 + 16))
      {
        __break(1u);
LABEL_77:
        result = sub_248124D08();
        __break(1u);
        return result;
      }

      v37 = *(v73 + 8 * v35);

      v31 = __OFADD__(v35, 1);
      v38 = v35 + 1;
      if (v31)
      {
        goto LABEL_73;
      }
    }

    v39 = OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID;
    v87 = *v88;
    (v87)(a1, v37 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID, v93);
    if (!v14[2])
    {
      v66 = *v36;
LABEL_66:
      v67 = v93;
      v66(a1, v93);

      type metadata accessor for RecordStoreBuilderError();
      sub_2480FFF88(&qword_27EE87CE8, type metadata accessor for RecordStoreBuilderError);
      swift_allocError();
      v69 = v68;
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CF0, &qword_248126320) + 48);
      v71 = *(v37 + 32);
      *v69 = *(v37 + 24);
      v69[1] = v71;
      (v87)(v69 + v70, v37 + v39, v67);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    v79 = v38;
    v40 = sub_2480F1D2C(a1);
    v41 = *v36;
    if ((v42 & 1) == 0)
    {
      v66 = *v36;
      goto LABEL_66;
    }

    v43 = *(v14[7] + 8 * v40);

    v41(a1, v93);

    v44 = OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_memberships;
    swift_beginAccess();
    v81 = v37;
    v45 = *(v37 + v44);
    v47 = *(v45 + 56);
    v7 = (v45 + 56);
    v46 = v47;
    v48 = 1 << *(*(v37 + v44) + 32);
    v49 = v48 < 64 ? ~(-1 << v48) : -1;
    a1 = v49 & v46;
    v50 = (v48 + 63) >> 6;
    v91 = *(v37 + v44);

    v51 = 0;
    if (a1)
    {
      break;
    }

    while (1)
    {
LABEL_42:
      v13 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        __break(1u);
        goto LABEL_68;
      }

      if (v13 >= v50)
      {
        break;
      }

      a1 = *&v7[8 * v13];
      ++v51;
      if (a1)
      {
        v52 = v41;
        goto LABEL_46;
      }
    }

    v34 = v78;
    v35 = v79;
    v13 = v89;
    if (v79 == v75)
    {
      goto LABEL_50;
    }
  }

  while (1)
  {
    v52 = v41;
    v13 = v51;
LABEL_46:
    v53 = v85;
    v54 = v83;
    v55 = v93;
    (v87)(v83, *(v91 + 48) + *(v85 + 72) * (__clz(__rbit64(a1)) | (v13 << 6)), v93);
    v56 = *(v53 + 32);
    v57 = v84;
    v56(v84, v54, v55);
    if (!v14[2])
    {
      break;
    }

    sub_2480F1D2C(v57);
    if ((v58 & 1) == 0)
    {
      break;
    }

    a1 &= a1 - 1;
    v36 = v86;
    v41 = v52;
    (v52)(v57, v93);
    v51 = v13;
    if (!a1)
    {
      goto LABEL_42;
    }
  }

LABEL_61:

  type metadata accessor for RecordStoreBuilderError();
  sub_2480FFF88(&qword_27EE87CE8, type metadata accessor for RecordStoreBuilderError);
  swift_allocError();
  v61 = v60;
  v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CF0, &qword_248126320) + 48);
  v63 = *(v81 + 32);
  *v61 = *(v81 + 24);
  v61[1] = v63;
  v64 = v93;
  (v87)(v61 + v62, v57, v93);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  return (v52)(v57, v64);
}

uint64_t sub_2480F9E64(unint64_t a1, unint64_t a2)
{
  v2 = a1;
  v49 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_35:
    v3 = sub_2481247E8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
    v8 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_18;
  }

  v4 = 0;
  while ((v2 & 0xC000000000000001) == 0)
  {
    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v5 = *(v2 + 8 * v4 + 32);

    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_14;
    }

LABEL_10:
    if (*(*(v5 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases) + 16))
    {
      sub_248124768();
      v7 = *(v49 + 16);
      sub_248124798();
      sub_2481247A8();
      sub_248124778();
    }

    else
    {
    }

    ++v4;
    if (v6 == v3)
    {
      goto LABEL_15;
    }
  }

  v5 = MEMORY[0x24C1C6EA0](v4, v2);
  v6 = v4 + 1;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  v8 = v49;
  if (v49 < 0)
  {
LABEL_36:
    v9 = sub_2481247E8();
    if (!v9)
    {
      goto LABEL_37;
    }

LABEL_20:
    v10 = 0;
    v2 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x24C1C6EA0](v10, v8);
        v16 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v10 >= *(v8 + 16))
        {
          goto LABEL_34;
        }

        v15 = *(v8 + 8 * v10 + 32);

        v16 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      v17 = *(v48 + 24);
      if (*(v17 + 16))
      {
        v18 = *(v15 + 24);
        v19 = *(v15 + 32);

        v20 = sub_2480F1E00(v18, v19);
        v22 = v21;

        if (v22)
        {
          v12 = 0;
          v11 = *(*(v17 + 56) + 8 * v20);
        }

        else
        {
          v11 = 0;
          v12 = 1;
        }
      }

      else
      {
        v11 = 0;
        v12 = 1;
      }

      v13 = *(v15 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases);

      sub_2480FBE50(v14, (v48 + 24), v11, v12);

      ++v10;
      if (v16 == v9)
      {
        goto LABEL_37;
      }
    }
  }

LABEL_18:
  if ((v8 & 0x4000000000000000) != 0)
  {
    goto LABEL_36;
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    goto LABEL_20;
  }

LABEL_37:

  v50 = MEMORY[0x277D84F90];
  v23 = a2;
  if (!(a2 >> 62))
  {
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_39;
    }

LABEL_54:
    v31 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_70;
    }

    goto LABEL_55;
  }

  while (2)
  {
    v24 = sub_2481247E8();
    v23 = a2;
    if (!v24)
    {
      goto LABEL_54;
    }

LABEL_39:
    v25 = 0;
    v26 = v23 & 0xC000000000000001;
    v27 = v23 & 0xFFFFFFFFFFFFFF8;
LABEL_42:
    if (v26)
    {
      v29 = MEMORY[0x24C1C6EA0](v25);
      v30 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }

    if (v25 >= *(v27 + 16))
    {
      __break(1u);
      continue;
    }

    break;
  }

  v29 = *(v23 + 8 * v25 + 32);

  v30 = v25 + 1;
  if (!__OFADD__(v25, 1))
  {
LABEL_45:
    if (*(*(v29 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases) + 16))
    {
      sub_248124768();
      v28 = *(v50 + 16);
      sub_248124798();
      sub_2481247A8();
      sub_248124778();
    }

    else
    {
    }

    ++v25;
    v23 = a2;
    if (v30 == v24)
    {
      goto LABEL_50;
    }

    goto LABEL_42;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  v31 = v50;
  if (v50 < 0)
  {
    goto LABEL_70;
  }

LABEL_55:
  if ((v31 & 0x4000000000000000) != 0)
  {
    goto LABEL_70;
  }

  v32 = *(v31 + 16);
  if (!v32)
  {
    goto LABEL_71;
  }

  while (2)
  {
    v33 = 0;
    while (2)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x24C1C6EA0](v33, v31);
        v39 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        goto LABEL_63;
      }

      if (v33 >= *(v31 + 16))
      {
        goto LABEL_69;
      }

      v38 = *(v31 + 8 * v33 + 32);

      v39 = v33 + 1;
      if (!__OFADD__(v33, 1))
      {
LABEL_63:
        v40 = *(v48 + 48);
        if (*(v40 + 16) && (v41 = *(v38 + 40), v42 = *(v38 + 48), , v43 = sub_2480F1E00(v41, v42), v45 = v44, , (v45 & 1) != 0))
        {
          v35 = 0;
          v34 = *(*(v40 + 56) + 8 * v43);
        }

        else
        {
          v34 = 0;
          v35 = 1;
        }

        v36 = *(v38 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases);

        sub_2480FBE50(v37, (v48 + 48), v34, v35);

        ++v33;
        if (v39 == v32)
        {
          goto LABEL_71;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    v32 = sub_2481247E8();
    if (v32)
    {
      continue;
    }

    break;
  }

LABEL_71:
}

uint64_t sub_2480FA33C(uint64_t a1, unint64_t *a2)
{
  v25 = a1;
  v4 = *a2;
  v24 = &v25;
  v5 = sub_2480FABB4(sub_2480FFA4C, v23, v4);
  if (v5)
  {
    type metadata accessor for RecordStoreBuilderError();
    sub_2480FFF88(&qword_27EE87CE8, type metadata accessor for RecordStoreBuilderError);
    swift_allocError();
    *v6 = *(a1 + 32);
LABEL_3:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v7 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases);
  MEMORY[0x28223BE20](v5);
  v22 = &v25;

  v8 = sub_2480FAA5C(sub_2480FFA6C, v21, v7);

  if (v8 & 1) != 0 || (MEMORY[0x28223BE20](v9), v22 = &v25, v10 = sub_2480FABB4(sub_2480FFA8C, v21, v4), (v10))
  {
    type metadata accessor for RecordStoreBuilderError();
    sub_2480FFF88(&qword_27EE87CE8, type metadata accessor for RecordStoreBuilderError);
    swift_allocError();
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    *v13 = v11;
    v13[1] = v12;
    swift_storeEnumTagMultiPayload();

    return swift_willThrow();
  }

  MEMORY[0x28223BE20](v10);
  v22 = &v25;
  if (sub_2480FABB4(sub_2480FFAB4, v21, v4))
  {
    type metadata accessor for RecordStoreBuilderError();
    sub_2480FFF88(&qword_27EE87CE8, type metadata accessor for RecordStoreBuilderError);
    swift_allocError();
    v16 = v15;
    v17 = OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid;
    v18 = sub_2481242C8();
    (*(*(v18 - 8) + 16))(v16, a1 + v17, v18);
    goto LABEL_3;
  }

  MEMORY[0x24C1C6CC0](v19);
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v20 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_248124558();
  }

  return sub_248124588();
}

uint64_t sub_2480FA6CC(uint64_t a1, unint64_t *a2)
{
  v25 = a1;
  v4 = *a2;
  v24 = &v25;
  v5 = sub_2480FABB4(sub_2480FFC00, v23, v4);
  if (v5)
  {
    type metadata accessor for RecordStoreBuilderError();
    sub_2480FFF88(&qword_27EE87CE8, type metadata accessor for RecordStoreBuilderError);
    swift_allocError();
    *v6 = *(a1 + 16);
LABEL_3:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v7 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases);
  MEMORY[0x28223BE20](v5);
  v22 = &v25;

  v8 = sub_2480FAA5C(sub_2480FFC20, v21, v7);

  if (v8 & 1) != 0 || (MEMORY[0x28223BE20](v9), v22 = &v25, v10 = sub_2480FABB4(sub_2480FFC40, v21, v4), (v10))
  {
    type metadata accessor for RecordStoreBuilderError();
    sub_2480FFF88(&qword_27EE87CE8, type metadata accessor for RecordStoreBuilderError);
    swift_allocError();
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    *v13 = v11;
    v13[1] = v12;
    swift_storeEnumTagMultiPayload();

    return swift_willThrow();
  }

  MEMORY[0x28223BE20](v10);
  v22 = &v25;
  if (sub_2480FABB4(sub_2480FFC68, v21, v4))
  {
    type metadata accessor for RecordStoreBuilderError();
    sub_2480FFF88(&qword_27EE87CE8, type metadata accessor for RecordStoreBuilderError);
    swift_allocError();
    v16 = v15;
    v17 = OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid;
    v18 = sub_2481242C8();
    (*(*(v18 - 8) + 16))(v16, a1 + v17, v18);
    goto LABEL_3;
  }

  MEMORY[0x24C1C6CC0](v19);
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v20 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_248124558();
  }

  return sub_248124588();
}

uint64_t sub_2480FAA5C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(a3 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
      v14 = v13[1];
      v18[0] = *v13;
      v18[1] = v14;

      v15 = v19(v18);
      if (v3)
      {

        return v17 & 1;
      }

      v16 = v15;

      if (v16)
      {
        break;
      }

      v8 &= v8 - 1;
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v17 = 1;
    return v17 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        v17 = 0;
        return v17 & 1;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2480FABB4(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x24C1C6EA0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_2481247E8();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_2480FACF0(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v25 = a1;
  v26 = sub_2481242C8();
  v6 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v23 = v7 + 16;
  v24 = v7;
  v22 = (v7 + 8);
  v27 = a3;

  v16 = 0;
  while (v13)
  {
    v17 = v26;
LABEL_11:
    (*(v24 + 16))(v9, *(v27 + 48) + *(v24 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v17);
    v19 = v25(v9);
    if (v3)
    {
      (*v22)(v9, v17);

      return a2 & 1;
    }

    v20 = v19;
    v13 &= v13 - 1;
    result = (*v22)(v9, v17);
    if (v20)
    {
      a2 = 1;
LABEL_15:

      return a2 & 1;
    }
  }

  v17 = v26;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      a2 = 0;
      goto LABEL_15;
    }

    v13 = *(v10 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_2480FAF08(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C90, &qword_248126248);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2481262D0;
  v6 = *(a1 + 48);
  *(inited + 32) = *(a1 + 40);
  *(inited + 40) = v6;

  v7 = sub_2480FFAD8(inited, v4);
  swift_setDeallocating();
  sub_2480FFB58(inited + 32);
  v8 = *(a2 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2481262D0;
  v10 = *(a2 + 48);
  *(v9 + 32) = *(a2 + 40);
  *(v9 + 40) = v10;

  v11 = sub_2480FFAD8(v9, v8);
  swift_setDeallocating();
  sub_2480FFB58(v9 + 32);
  LOBYTE(a2) = sub_2480FB1B8(v11, v7);

  return (a2 & 1) == 0;
}

BOOL sub_2480FB060(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C90, &qword_248126248);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2481262D0;
  v6 = *(a1 + 32);
  *(inited + 32) = *(a1 + 24);
  *(inited + 40) = v6;

  v7 = sub_2480FFAD8(inited, v4);
  swift_setDeallocating();
  sub_2480FFB58(inited + 32);
  v8 = *(a2 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2481262D0;
  v10 = *(a2 + 32);
  *(v9 + 32) = *(a2 + 24);
  *(v9 + 40) = v10;

  v11 = sub_2480FFAD8(v9, v8);
  swift_setDeallocating();
  sub_2480FFB58(v9 + 32);
  LOBYTE(a2) = sub_2480FB1B8(v11, v7);

  return (a2 & 1) == 0;
}

uint64_t sub_2480FB1B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v26 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v6 + 40);
      sub_248124D58();

      sub_2481244D8();
      v20 = sub_248124D88();
      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      if ((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v6 + 48) + 16 * v22);
          v25 = *v24 == v18 && v24[1] == v17;
          if (v25 || (sub_248124B38() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v26;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2480FB3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v64 = a2;
  v7 = sub_2481242C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v63 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v49 - v12;
  v60 = OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid;
  if (sub_2480F6798(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, a3))
  {
    v13 = type metadata accessor for RecordStoreBuilderError();
    sub_2480FFF88(&qword_27EE87CE8, type metadata accessor for RecordStoreBuilderError);
    result = swift_allocError();
    if (*(a3 + 16))
    {
      v16 = v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87D00, &qword_248126330) + 48);
      v63 = v13;
      v64 = v17;
      v19 = *(v8 + 16);
      v18 = v8 + 16;
      v20 = (*(v18 + 64) + 32) & ~*(v18 + 64);
      v19(v16, a3 + v20, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C98, &qword_248126250);
      v21 = *(v18 + 56);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_2481262D0;
      v19(v22 + v20, a1 + v60, v7);
      v65 = a3;

      sub_2480FEAB4(v22);
      *(v16 + v64) = v65;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    goto LABEL_27;
  }

  v52 = a3;
  v23 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_nestedGroups);
  v24 = v23 + 56;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v23 + 56);
  v28 = (v25 + 63) >> 6;
  v62 = v8 + 16;
  v54 = v8 + 32;
  v55 = a1;
  v53 = (v8 + 8);
  v56 = v23;

  v29 = 0;
  v51 = xmmword_2481262D0;
  v49 = v28;
  v50 = v8;
  v61 = v7;
  if (!v27)
  {
LABEL_8:
    v31 = v63;
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30 >= v28)
      {
      }

      v27 = *(v24 + 8 * v30);
      ++v29;
      if (v27)
      {
        v59 = v4;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  while (1)
  {
    v59 = v4;
    v30 = v29;
    v31 = v63;
LABEL_13:
    v32 = v57;
    v33 = *(v8 + 16);
    v33(v57, *(v56 + 48) + *(v8 + 72) * (__clz(__rbit64(v27)) | (v30 << 6)), v7);
    (*(v8 + 32))(v31, v32, v7);
    if (!*(v64 + 16) || (v34 = sub_2480F1D2C(v31), (v35 & 1) == 0))
    {
      type metadata accessor for RecordStoreBuilderError();
      sub_2480FFF88(&qword_27EE87CE8, type metadata accessor for RecordStoreBuilderError);
      swift_allocError();
      v45 = v44;
      v46 = v31;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CF8, &qword_248126328) + 48);
      v48 = v61;
      v33(v45, v55 + v60, v61);
      v33(&v45[v47], v46, v48);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return (*v53)(v46, v48);
    }

    v36 = *(*(v64 + 56) + 8 * v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C98, &qword_248126250);
    v37 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v51;
    v33((v38 + v37), v55 + v60, v61);
    v39 = v52;
    v40 = v52[2];
    v58 = v36;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || (v41 = v39[3] >> 1, v42 = v39, v41 <= v40))
    {
      result = sub_2480F4FC4(result, v40 + 1, 1, v39);
      v42 = result;
      v41 = *(result + 24) >> 1;
    }

    if (v41 <= v42[2])
    {
      goto LABEL_26;
    }

    v7 = v61;
    swift_arrayInitWithCopy();

    ++v42[2];
    v43 = v59;
    sub_2480FB3A0(v58, v64, v42);
    v4 = v43;
    if (v43)
    {
      break;
    }

    v27 &= v27 - 1;
    (*v53)(v63, v7);

    v29 = v30;
    v28 = v49;
    v8 = v50;
    if (!v27)
    {
      goto LABEL_8;
    }
  }

  (*v53)(v63, v7);
}

uint64_t sub_2480FB9A4(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v6 = sub_2481242C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *a2;
  if ((*a2 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x24C1C6EA0](a3);
    goto LABEL_5;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
  {
    v14 = *(v13 + 8 * a3 + 32);

LABEL_5:
    v15 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_uuid;
    swift_beginAccess();
    (*(v7 + 16))(v11, v14 + v15, v6);

    v16 = sub_248124298();
    (*(v7 + 8))(v11, v6);
    return v16 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2480FBB38(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_2481242C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a2 + 8);
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x24C1C6EA0](a3);
    goto LABEL_5;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
  {
    v14 = *(v13 + 8 * a3 + 32);

LABEL_5:
    v15 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_uuid;
    swift_beginAccess();
    (*(v7 + 16))(v11, v14 + v15, v6);

    v16 = sub_248124298();
    (*(v7 + 8))(v11, v6);
    return v16 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2480FBCCC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_2481242C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 8);
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x24C1C6EA0](a3);
    goto LABEL_5;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
  {
    v12 = *(v11 + 8 * a3 + 32);

LABEL_5:
    v13 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_uuid;
    swift_beginAccess();
    (*(v6 + 16))(v10, v12 + v13, v5);

    v14 = sub_248124298();
    (*(v6 + 8))(v10, v5);
    return v14 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2480FBE50(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v4 = a2;
  v5 = a1;
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = 0;

  while (v9)
  {
LABEL_11:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = (*(v5 + 48) + ((v11 << 10) | (16 * v13)));
    v16 = *v14;
    v15 = v14[1];
    if (a4)
    {
      v17 = *a2;

      v4 = a2;
      v18 = sub_2480F1E00(v16, v15);
      v20 = v19;

      if (v20)
      {
        v21 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *a2;
        v46 = *a2;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_2480F2C24();
          v4 = a2;
          v23 = v46;
        }

        v24 = *(*(v23 + 48) + 16 * v18 + 8);

        sub_2480FC730(v18, v23);
        *v4 = v23;
      }
    }

    else
    {

      v25 = *v4;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v27 = *v4;
      v47 = v27;
      v28 = sub_2480F1E00(v16, v15);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
        goto LABEL_29;
      }

      v34 = v29;
      if (v27[3] >= v33)
      {
        v4 = a2;
        if (v26)
        {
          v36 = v47;
          if (v29)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v40 = v28;
          sub_2480F2C24();
          v4 = a2;
          v28 = v40;
          v36 = v47;
          if (v34)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_2480F2328(v33, v26);
        v28 = sub_2480F1E00(v16, v15);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_31;
        }

        v4 = a2;
        v36 = v47;
        if (v34)
        {
LABEL_4:
          *(v36[7] + 8 * v28) = a3;

          goto LABEL_5;
        }
      }

      v36[(v28 >> 6) + 8] |= 1 << v28;
      v37 = (v36[6] + 16 * v28);
      *v37 = v16;
      v37[1] = v15;
      *(v36[7] + 8 * v28) = a3;
      v38 = v36[2];
      v32 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v32)
      {
        goto LABEL_30;
      }

      v36[2] = v39;
LABEL_5:
      *v4 = v36;
      v5 = v42;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_248124D08();
  __break(1u);
  return result;
}

uint64_t sub_2480FC104(uint64_t a1, uint64_t a2)
{
  v4 = sub_2481242C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_2480FFF88(&qword_27EE87C68, MEMORY[0x277CC95F0]);
    v22 = sub_248124468();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

size_t sub_2480FC318(size_t a1, int64_t a2, char a3)
{
  result = sub_2480FC554(a1, a2, a3, *v3, &qword_27EE87D20, &unk_248126350, MEMORY[0x277D854C0]);
  *v3 = result;
  return result;
}

size_t sub_2480FC35C(size_t a1, int64_t a2, char a3)
{
  result = sub_2480FC554(a1, a2, a3, *v3, &qword_27EE87D18, &unk_248126340, type metadata accessor for Group);
  *v3 = result;
  return result;
}

size_t sub_2480FC3A0(size_t a1, int64_t a2, char a3)
{
  result = sub_2480FC554(a1, a2, a3, *v3, &qword_27EE87CA0, &qword_248126258, type metadata accessor for User);
  *v3 = result;
  return result;
}

char *sub_2480FC3E4(char *a1, int64_t a2, char a3)
{
  result = sub_2480FC448(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2480FC404(size_t a1, int64_t a2, char a3)
{
  result = sub_2480FC554(a1, a2, a3, *v3, &qword_27EE87C98, &qword_248126250, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

char *sub_2480FC448(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C90, &qword_248126248);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

size_t sub_2480FC554(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_2480FC730(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_248124678() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_248124D58();

      sub_2481244D8();
      v13 = sub_248124D88();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2480FC8E0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2480F3008(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2480FC950(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2480FC950(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_248124928();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_248124578();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2480FCB18(v7, v8, a1, v4);
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
    return sub_2480FCA48(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2480FCA48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_248124B38(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2480FCB18(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2480FD3A8(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2480FD0F4((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_248124B38();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_248124B38();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2480F51C8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2480F51C8((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2480FD0F4((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2480FD3A8(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2480FD31C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_248124B38(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_2480FD0F4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_248124B38() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_248124B38() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2480FD31C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2480FD3A8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2480FD3BC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2481242C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2480FFF88(&qword_27EE87A58, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_248124438();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_2480FFF88(&qword_27EE87C68, MEMORY[0x277CC95F0]);
      v23 = sub_248124468();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2480FDDA8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2480FD69C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_248124D58();
  sub_2481244D8();
  v9 = sub_248124D88();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_248124B38() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2480FE04C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2480FD7EC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2481242C8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87D08, &qword_248126338);
  result = sub_2481246A8();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_2480FFF88(&qword_27EE87A58, MEMORY[0x277CC95F0]);
      result = sub_248124438();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_2480FDB48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CE0, &qword_248126318);
  result = sub_2481246A8();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_248124D58();
      sub_2481244D8();
      result = sub_248124D88();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2480FDDA8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_2481242C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2480FD7EC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2480FE1CC();
      goto LABEL_12;
    }

    sub_2480FE560(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_2480FFF88(&qword_27EE87A58, MEMORY[0x277CC95F0]);
  v15 = sub_248124438();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_2480FFF88(&qword_27EE87C68, MEMORY[0x277CC95F0]);
      v23 = sub_248124468();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_248124CF8();
  __break(1u);
  return result;
}

uint64_t sub_2480FE04C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2480FDB48(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2480FE404();
      goto LABEL_16;
    }

    sub_2480FE87C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_248124D58();
  sub_2481244D8();
  result = sub_248124D88();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_248124B38();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_248124CF8();
  __break(1u);
  return result;
}

void *sub_2480FE1CC()
{
  v1 = v0;
  v2 = sub_2481242C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87D08, &qword_248126338);
  v7 = *v0;
  v8 = sub_248124698();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_2480FE404()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CE0, &qword_248126318);
  v2 = *v0;
  v3 = sub_248124698();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2480FE560(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2481242C8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87D08, &qword_248126338);
  v10 = sub_2481246A8();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_2480FFF88(&qword_27EE87A58, MEMORY[0x277CC95F0]);
      result = sub_248124438();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_2480FE87C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CE0, &qword_248126318);
  result = sub_2481246A8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_248124D58();

      sub_2481244D8();
      result = sub_248124D88();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2480FEAB4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_2480F4FC4(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_2481242C8();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2480FEBE0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

BOOL sub_2480FED38(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = a1[1];
  v3 = *(*a2 + 40);
  v4 = *(*a2 + 48);
  sub_2480FFBAC();
  return sub_248124658() == 0;
}

BOOL sub_2480FEDA4(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = a1[1];
  v3 = *(*a2 + 24);
  v4 = *(*a2 + 32);
  sub_2480FFBAC();
  return sub_248124658() == 0;
}

uint64_t sub_2480FEE10(uint64_t a1, uint64_t a2)
{
  v141 = a1;
  v3 = sub_2481242C8();
  v4 = *(v3 - 8);
  v139 = v3;
  v140 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v132 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v130 = &v128 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v131 = &v128 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v134 = &v128 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v133 = &v128 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v138 = &v128 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v129 = &v128 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v137 = &v128 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v128 - v22;
  v24 = type metadata accessor for RecordStoreBuilderError();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v135 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v136 = &v128 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = (&v128 - v31);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v128 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v128 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = (&v128 - v40);
  MEMORY[0x28223BE20](v39);
  v43 = (&v128 - v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87D68, &qword_248126418);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v48 = &v128 - v47;
  v49 = &v128 + *(v46 + 56) - v47;
  sub_2480FFF24(v141, &v128 - v47);
  v50 = a2;
  v51 = v49;
  sub_2480FFF24(v50, v49);
  v52 = v48;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v56 = v48;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2480FFF24(v48, v41);
        v68 = *v41;
        v69 = v41[1];
        if (swift_getEnumCaseMultiPayload() != 1)
        {

          goto LABEL_37;
        }

        if (v68 == *v51 && v69 == v51[1])
        {
          v70 = v51[1];
        }

        else
        {
          v112 = v51[1];
          v113 = sub_248124B38();

          if ((v113 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        sub_24810009C(v48);
        v85 = 1;
        return v85 & 1;
      }

      sub_2480FFF24(v48, v38);
      v86 = swift_getEnumCaseMultiPayload();
      if (v86 != 2)
      {
        (*(v140 + 8))(v38, v139);
        goto LABEL_37;
      }

      v87 = v140;
      v88 = v51;
      v89 = v139;
      (*(v140 + 32))(v23, v88, v139);
      v85 = sub_248124298();
      v90 = *(v87 + 8);
      v90(v23, v89);
      v90(v38, v89);
    }

    else
    {
      v56 = v48;
      sub_2480FFF24(v48, v43);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_37;
      }

      v85 = *v43 == *v51;
    }

LABEL_43:
    v119 = v56;
LABEL_44:
    sub_24810009C(v119);
    return v85 & 1;
  }

  if (EnumCaseMultiPayload > 4)
  {
    v71 = v139;
    v72 = v51;
    v56 = v52;
    if (EnumCaseMultiPayload != 5)
    {
      v102 = v135;
      sub_2480FFF24(v52, v135);
      v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87D00, &qword_248126330) + 48);
      v104 = *(v102 + v103);
      v105 = swift_getEnumCaseMultiPayload();
      if (v105 != 6)
      {

        (*(v140 + 8))(v102, v71);
        goto LABEL_37;
      }

      v106 = *&v72[v103];
      v107 = v140;
      v108 = v132;
      (*(v140 + 32))(v132, v72, v71);
      v109 = sub_248124298();
      v110 = *(v107 + 8);
      v110(v102, v71);
      if (v109)
      {
        v85 = sub_2480FC104(v104, v106);

        v110(v108, v71);
        goto LABEL_43;
      }

      v110(v108, v71);

LABEL_51:
      sub_24810009C(v56);
      goto LABEL_38;
    }

    v73 = v136;
    sub_2480FFF24(v52, v136);
    v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CF8, &qword_248126328) + 48);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      v111 = *(v140 + 8);
      v111(v73 + v74, v71);
      v111(v73, v71);
      goto LABEL_37;
    }

    v75 = v140;
    v76 = *(v140 + 32);
    v77 = v134;
    v76(v134, v72, v71);
    v78 = (v73 + v74);
    v79 = v73;
    v80 = v131;
    v76(v131, v78, v71);
    v81 = &v72[v74];
    v82 = v130;
    v76(v130, v81, v71);
    v83 = sub_248124298();
    v84 = *(v75 + 8);
    v84(v79, v71);
    if ((v83 & 1) == 0)
    {
      v84(v82, v71);
      v84(v80, v71);
      v84(v77, v71);
      goto LABEL_51;
    }

    v85 = sub_248124298();
    v84(v82, v71);
    v84(v80, v71);
    v84(v77, v71);
    goto LABEL_43;
  }

  v54 = v140;
  v55 = v51;
  if (EnumCaseMultiPayload == 3)
  {
    v56 = v48;
    sub_2480FFF24(v48, v35);
    v58 = *v35;
    v57 = *(v35 + 1);
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CF0, &qword_248126320) + 48);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v61 = *v55;
      v60 = v55[1];
      v62 = *(v54 + 32);
      v63 = &v35[v59];
      v64 = v139;
      v62(v137, v63, v139);
      v65 = v55 + v59;
      v66 = v64;
      v67 = v129;
      v62(v129, v65, v64);
      if (v58 == v61 && v57 == v60)
      {

LABEL_42:
        v115 = v137;
        v116 = sub_248124298();
        v117 = v67;
        v85 = v116;
        v118 = *(v140 + 8);
        v118(v117, v66);
        v118(v115, v66);
        goto LABEL_43;
      }

      v114 = sub_248124B38();

      if (v114)
      {
        goto LABEL_42;
      }

      v125 = *(v140 + 8);
      v125(v67, v66);
      v125(v137, v66);
      goto LABEL_51;
    }

    (*(v54 + 8))(&v35[v59], v139);
  }

  else
  {
    sub_2480FFF24(v48, v32);
    v92 = *v32;
    v91 = v32[1];
    v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CF0, &qword_248126320) + 48);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v141 = v92;
      v94 = *v55;
      v95 = v55[1];
      v96 = v55;
      v97 = *(v54 + 32);
      v98 = v32 + v93;
      v99 = v139;
      v97(v138, v98, v139);
      v100 = v96 + v93;
      v101 = v133;
      v97(v133, v100, v99);
      if (v141 == v94 && v91 == v95)
      {
      }

      else
      {
        v121 = sub_248124B38();

        if ((v121 & 1) == 0)
        {
          v126 = *(v54 + 8);
          v127 = v139;
          v126(v101, v139);
          v126(v138, v127);
          sub_24810009C(v48);
          goto LABEL_38;
        }
      }

      v122 = v138;
      v85 = sub_248124298();
      v123 = *(v54 + 8);
      v124 = v139;
      v123(v101, v139);
      v123(v122, v124);
      v119 = v48;
      goto LABEL_44;
    }

    (*(v54 + 8))(v32 + v93, v139);

    v56 = v48;
  }

LABEL_37:
  sub_248100034(v56);
LABEL_38:
  v85 = 0;
  return v85 & 1;
}

uint64_t sub_2480FF968(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C1C6D90](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2480FD69C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t type metadata accessor for RecordStoreBuilderError()
{
  result = qword_27EE87D28;
  if (!qword_27EE87D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2480FFAD8(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_2480FD69C(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

unint64_t sub_2480FFBAC()
{
  result = qword_27EE87D10;
  if (!qword_27EE87D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87D10);
  }

  return result;
}

uint64_t sub_2480FFC8C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = **(v2 + 16);
  v5 = *a2;
  return sub_248124298() & 1;
}

void sub_2480FFD20()
{
  sub_2481242C8();
  if (v0 <= 0x3F)
  {
    sub_2480FFDD0();
    if (v1 <= 0x3F)
    {
      sub_2480FFE3C();
      if (v2 <= 0x3F)
      {
        sub_2480FFEA4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_2480FFDD0()
{
  if (!qword_27EE87D38)
  {
    sub_2481242C8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EE87D38);
    }
  }
}

void sub_2480FFE3C()
{
  if (!qword_27EE87D40)
  {
    sub_2481242C8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EE87D40);
    }
  }
}

void sub_2480FFEA4()
{
  if (!qword_27EE87D48)
  {
    sub_2481242C8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE87D50, qword_248126378);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EE87D48);
    }
  }
}

uint64_t sub_2480FFF24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordStoreBuilderError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2480FFF88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2480FFFD0()
{
  result = qword_27EE87D60;
  if (!qword_27EE87D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE87B30, &qword_248126410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87D60);
  }

  return result;
}

uint64_t sub_248100034(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87D68, &qword_248126418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24810009C(uint64_t a1)
{
  v2 = type metadata accessor for RecordStoreBuilderError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeLocalUsersAndGroups(andPerform:)(void (*a1)(uint64_t *, void **), uint64_t a2)
{
  if (qword_27EE87A00 != -1)
  {
    v4 = a1;
    v5 = a2;
    swift_once();
    a1 = v4;
    a2 = v5;
  }

  return sub_2480E5C40(a1, a2, qword_27EE87D70);
}

uint64_t updateLocalUsersAndGroups(perform:)(void (*a1)(uint64_t *, void **), uint64_t a2)
{
  if (qword_27EE87A00 != -1)
  {
    swift_once();
  }

  v5[3] = &type metadata for ProviderSideEffects;
  v5[4] = &off_285A49328;
  v5[0] = swift_allocObject();
  sub_2480E628C(qword_27EE87D70, v5[0] + 16);
  sub_248100290(a1, a2, v5);
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_248100248()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_248100290(void (*a1)(uint64_t *, void **), uint64_t a2, void *a3)
{
  v6 = type metadata accessor for RecordManager();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3[3];
  v12 = a3[4];
  v13 = __swift_project_boxed_opaque_existential_1(a3, v11);
  v14 = &v10[*(v7 + 28)];
  v14[3] = v11;
  v14[4] = *(v12 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v13, v11);
  sub_2481242E8();
  if (qword_27EE87A08 != -1)
  {
    swift_once();
  }

  v16 = sub_2481242F8();
  v38 = __swift_project_value_buffer(v16, qword_27EE87DE8);
  v17 = sub_2481242D8();
  v18 = sub_248124638();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2480DF000, v17, v18, "Updating local domain...", v19, 2u);
    MEMORY[0x24C1C7B90](v19, -1, -1);
  }

  HIDWORD(v37) = sub_2480F4840();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = sub_2480E0A38(1);
  v27 = v39;
  v29 = sub_2481044F8(v26, v28, a1, a2, v23);
  if (v27)
  {

    v33 = sub_2481242D8();
    v34 = sub_248124628();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2480DF000, v33, v34, "Failed to update local domain.", v35, 2u);
      MEMORY[0x24C1C7B90](v35, -1, -1);
    }

    swift_willThrow();
    return sub_2481057B8(v10, type metadata accessor for RecordManager);
  }

  else
  {
    v31 = v29;
    v32 = v30;

    sub_2480EC5CC(v31, v32, BYTE4(v37) & 1, v21, v23, v25);
    sub_2481057B8(v10, type metadata accessor for RecordManager);
  }
}

uint64_t sub_24810062C()
{
  v0 = sub_2481242F8();
  __swift_allocate_value_buffer(v0, qword_27EE87DE8);
  __swift_project_value_buffer(v0, qword_27EE87DE8);
  return sub_2481242E8();
}

uint64_t User.uid.setter(int a1)
{
  result = type metadata accessor for User(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t User.primaryGroupUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for User(0) + 28);
  v4 = sub_2481242C8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t User.primaryGroupUUID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for User(0) + 28);
  v4 = sub_2481242C8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t User.fullName.getter()
{
  v1 = (v0 + *(type metadata accessor for User(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t User.fullName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for User(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t User.homeDirectory.getter()
{
  v1 = (v0 + *(type metadata accessor for User(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t User.homeDirectory.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for User(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t User.shell.getter()
{
  v1 = (v0 + *(type metadata accessor for User(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t User.shell.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for User(0) + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t User.memberships.getter()
{
  v1 = *(v0 + *(type metadata accessor for User(0) + 44));
}

uint64_t User.memberships.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for User(0) + 44);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t User.aliases.getter()
{
  v1 = *(v0 + *(type metadata accessor for User(0) + 48));
}

uint64_t User.aliases.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for User(0) + 48);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_248100D10(uint64_t a1, uint64_t a2)
{
  v4 = sub_2481242C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0]);
      v28 = sub_248124438();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_2481039A8(&qword_27EE87C68, MEMORY[0x277CC95F0]);
        v33 = sub_248124468();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2481010C0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_248124D58();

    sub_2481244D8();
    v17 = sub_248124D88();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_248124B38() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t User.hash(into:)(__int128 *a1)
{
  v2 = v1;
  sub_2481242C8();
  sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0]);
  sub_248124448();
  v4 = type metadata accessor for User(0);
  v5 = *(v1 + v4[5]);
  sub_248124D78();
  v6 = (v1 + v4[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_2481244D8();
  v9 = v1 + v4[7];
  sub_248124448();
  v10 = (v2 + v4[8]);
  v11 = *v10;
  v12 = v10[1];
  sub_2481244D8();
  v13 = (v2 + v4[9]);
  v14 = *v13;
  v15 = v13[1];
  sub_2481244D8();
  v16 = (v2 + v4[10]);
  v17 = *v16;
  v18 = v16[1];
  sub_2481244D8();
  sub_2481030B0(a1, *(v2 + v4[11]));
  v19 = *(v2 + v4[12]);

  return sub_248102F54(a1, v19);
}

uint64_t User.hashValue.getter()
{
  v1 = v0;
  sub_248124D58();
  sub_2481242C8();
  sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0]);
  sub_248124448();
  v2 = type metadata accessor for User(0);
  v3 = *(v0 + v2[5]);
  sub_248124D78();
  v4 = (v0 + v2[6]);
  v5 = *v4;
  v6 = v4[1];
  sub_2481244D8();
  v7 = v0 + v2[7];
  sub_248124448();
  v8 = (v1 + v2[8]);
  v9 = *v8;
  v10 = v8[1];
  sub_2481244D8();
  v11 = (v1 + v2[9]);
  v12 = *v11;
  v13 = v11[1];
  sub_2481244D8();
  v14 = (v1 + v2[10]);
  v15 = *v14;
  v16 = v14[1];
  sub_2481244D8();
  sub_2481030B0(v18, *(v1 + v2[11]));
  sub_248102F54(v18, *(v1 + v2[12]));
  return sub_248124D88();
}

uint64_t sub_2481014F8(__int128 *a1, int *a2)
{
  v4 = v2;
  sub_2481242C8();
  sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0]);
  sub_248124448();
  v6 = *(v2 + a2[5]);
  sub_248124D78();
  v7 = (v2 + a2[6]);
  v8 = *v7;
  v9 = v7[1];
  sub_2481244D8();
  v10 = v2 + a2[7];
  sub_248124448();
  v11 = (v4 + a2[8]);
  v12 = *v11;
  v13 = v11[1];
  sub_2481244D8();
  v14 = (v4 + a2[9]);
  v15 = *v14;
  v16 = v14[1];
  sub_2481244D8();
  v17 = (v4 + a2[10]);
  v18 = *v17;
  v19 = v17[1];
  sub_2481244D8();
  sub_2481030B0(a1, *(v4 + a2[11]));
  v20 = *(v4 + a2[12]);

  return sub_248102F54(a1, v20);
}

uint64_t sub_248101628(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_248124D58();
  sub_2481242C8();
  sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0]);
  sub_248124448();
  v5 = *(v2 + a2[5]);
  sub_248124D78();
  v6 = (v2 + a2[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_2481244D8();
  v9 = v2 + a2[7];
  sub_248124448();
  v10 = (v4 + a2[8]);
  v11 = *v10;
  v12 = v10[1];
  sub_2481244D8();
  v13 = (v4 + a2[9]);
  v14 = *v13;
  v15 = v13[1];
  sub_2481244D8();
  v16 = (v4 + a2[10]);
  v17 = *v16;
  v18 = v16[1];
  sub_2481244D8();
  sub_2481030B0(v20, *(v4 + a2[11]));
  sub_248102F54(v20, *(v4 + a2[12]));
  return sub_248124D88();
}

uint64_t _s23DarwinDirectoryInternal4UserV4uuid10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2481242C8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Group.gid.setter(int a1)
{
  result = type metadata accessor for Group(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_248101880(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_2481018E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t Group.fullName.getter()
{
  v1 = (v0 + *(type metadata accessor for Group(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Group.fullName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Group(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Group.nestedGroups.getter()
{
  v1 = *(v0 + *(type metadata accessor for Group(0) + 32));
}

uint64_t Group.nestedGroups.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Group(0) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Group.aliases.getter()
{
  v1 = *(v0 + *(type metadata accessor for Group(0) + 36));
}

uint64_t Group.aliases.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Group(0) + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Group.hash(into:)(__int128 *a1)
{
  sub_2481242C8();
  sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0]);
  sub_248124448();
  v3 = type metadata accessor for Group(0);
  v4 = *(v1 + v3[5]);
  sub_248124D78();
  v5 = (v1 + v3[6]);
  v6 = *v5;
  v7 = v5[1];
  sub_2481244D8();
  v8 = (v1 + v3[7]);
  v9 = *v8;
  v10 = v8[1];
  sub_2481244D8();
  sub_2481030B0(a1, *(v1 + v3[8]));
  v11 = *(v1 + v3[9]);

  return sub_248102F54(a1, v11);
}

uint64_t Group.hashValue.getter()
{
  sub_248124D58();
  sub_2481242C8();
  sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0]);
  sub_248124448();
  v1 = type metadata accessor for Group(0);
  v2 = *(v0 + v1[5]);
  sub_248124D78();
  v3 = (v0 + v1[6]);
  v4 = *v3;
  v5 = v3[1];
  sub_2481244D8();
  v6 = (v0 + v1[7]);
  v7 = *v6;
  v8 = v6[1];
  sub_2481244D8();
  sub_2481030B0(v10, *(v0 + v1[8]));
  sub_248102F54(v10, *(v0 + v1[9]));
  return sub_248124D88();
}

uint64_t sub_248101DA4(int *a1)
{
  sub_248124D58();
  sub_2481242C8();
  sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0]);
  sub_248124448();
  v3 = *(v1 + a1[5]);
  sub_248124D78();
  v4 = (v1 + a1[6]);
  v5 = *v4;
  v6 = v4[1];
  sub_2481244D8();
  v7 = (v1 + a1[7]);
  v8 = *v7;
  v9 = v7[1];
  sub_2481244D8();
  sub_2481030B0(v11, *(v1 + a1[8]));
  sub_248102F54(v11, *(v1 + a1[9]));
  return sub_248124D88();
}

uint64_t sub_248101E94(__int128 *a1, int *a2)
{
  sub_2481242C8();
  sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0]);
  sub_248124448();
  v5 = *(v2 + a2[5]);
  sub_248124D78();
  v6 = (v2 + a2[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_2481244D8();
  v9 = (v2 + a2[7]);
  v10 = *v9;
  v11 = v9[1];
  sub_2481244D8();
  sub_2481030B0(a1, *(v2 + a2[8]));
  v12 = *(v2 + a2[9]);

  return sub_248102F54(a1, v12);
}

uint64_t sub_248101F80(uint64_t a1, int *a2)
{
  sub_248124D58();
  sub_2481242C8();
  sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0]);
  sub_248124448();
  v4 = *(v2 + a2[5]);
  sub_248124D78();
  v5 = (v2 + a2[6]);
  v6 = *v5;
  v7 = v5[1];
  sub_2481244D8();
  v8 = (v2 + a2[7]);
  v9 = *v8;
  v10 = v8[1];
  sub_2481244D8();
  sub_2481030B0(v12, *(v2 + a2[8]));
  sub_248102F54(v12, *(v2 + a2[9]));
  return sub_248124D88();
}

uint64_t sub_248102070(unint64_t a1, unint64_t a2)
{
  v62 = sub_2481242C8();
  v5 = *(v62 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v62);
  v59 = (&v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v61 = &v55 - v9;
  if (a1 >> 62)
  {
    v10 = sub_2481247E8();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v69 = MEMORY[0x277D84F90];
    result = sub_248124788();
    if (v10 < 0)
    {
      __break(1u);
      goto LABEL_39;
    }

    v63 = v5;
    v13 = a2;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = 0;
      do
      {
        v15 = v14 + 1;
        MEMORY[0x24C1C6EA0]();
        sub_248106264();
        swift_unknownObjectRelease();
        sub_248124768();
        v16 = *(v69 + 16);
        sub_248124798();
        sub_2481247A8();
        sub_248124778();
        v14 = v15;
      }

      while (v10 != v15);
    }

    else
    {
      v17 = (a1 + 32);
      do
      {
        v18 = *v17++;
        sub_248106264();
        sub_248124768();
        v19 = *(v69 + 16);
        sub_248124798();
        sub_2481247A8();
        sub_248124778();
        --v10;
      }

      while (v10);
    }

    v11 = v69;
    a2 = v13;
    v5 = v63;
  }

  if (a2 >> 62)
  {
    v20 = sub_2481247E8();
  }

  else
  {
    v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v20)
  {
    return v11;
  }

  v69 = MEMORY[0x277D84F90];
  result = sub_248124788();
  if ((v20 & 0x8000000000000000) == 0)
  {
    v56 = v11;
    v57 = v2;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v21 = 0;
      v58 = (v5 + 32);
      v59 = (v5 + 16);
      v60 = a2;
      v68 = v20;
      do
      {
        v22 = MEMORY[0x24C1C6EA0](v21, a2);
        v67 = *(v22 + 24);
        v23 = *(v22 + 40);
        v66 = *(v22 + 32);
        v24 = v61;
        v25 = v62;
        (*v59)(v61, v22 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_uuid, v62);
        v26 = *(v22 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_fullName + 8);
        v65 = *(v22 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_fullName);
        if (*(v22 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups))
        {
          v27 = *(v22 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups);
        }

        else
        {
          v27 = MEMORY[0x277D84FA0];
        }

        v64 = v27;
        if (*(v22 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases))
        {
          v28 = *(v22 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases);
        }

        else
        {
          v28 = MEMORY[0x277D84FA0];
        }

        v63 = v28;
        ++v21;
        v29 = type metadata accessor for GroupRecord(0);
        v30 = *(v29 + 48);
        v31 = *(v29 + 52);
        v32 = swift_allocObject();
        *(v32 + 32) = v67;
        *(v32 + 40) = v66;
        *(v32 + 48) = v23;
        (*v58)(v32 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v24, v25);
        v33 = v64;
        *(v32 + 16) = v65;
        *(v32 + 24) = v26;
        *(v32 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_nestedGroups) = v33;
        *(v32 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases) = v63;

        v34 = v68;

        swift_unknownObjectRelease();
        sub_248124768();
        v35 = *(v69 + 16);
        sub_248124798();
        a2 = v60;
        sub_2481247A8();
        sub_248124778();
      }

      while (v34 != v21);
    }

    else
    {
      v37 = *(v5 + 16);
      v36 = v5 + 16;
      v38 = (a2 + 32);
      v60 = (v36 + 16);
      v61 = v37;
      v63 = v36;
      do
      {
        v68 = v20;
        v40 = *v38++;
        v39 = v40;
        v67 = *(v40 + 24);
        v41 = *(v40 + 40);
        v66 = *(v40 + 32);
        v42 = v59;
        v43 = v62;
        (v61)(v59, v40 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_uuid, v62);
        v44 = *(v40 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_fullName + 8);
        v65 = *(v40 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_fullName);
        if (*(v40 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups))
        {
          v45 = *(v39 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups);
        }

        else
        {
          v45 = MEMORY[0x277D84FA0];
        }

        v64 = v45;
        v46 = *(v39 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases);
        if (v46)
        {
          v47 = v46;
        }

        else
        {
          v47 = MEMORY[0x277D84FA0];
        }

        v48 = type metadata accessor for GroupRecord(0);
        v49 = *(v48 + 48);
        v50 = *(v48 + 52);
        v51 = swift_allocObject();
        *(v51 + 32) = v67;
        *(v51 + 40) = v66;
        *(v51 + 48) = v41;
        (*v60)(v51 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v42, v43);
        v52 = v64;
        *(v51 + 16) = v65;
        *(v51 + 24) = v44;
        *(v51 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_nestedGroups) = v52;
        *(v51 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases) = v47;

        v53 = v68;

        sub_248124768();
        v54 = *(v69 + 16);
        sub_248124798();
        sub_2481247A8();
        sub_248124778();
        v20 = v53 - 1;
      }

      while (v20);
    }

    return v56;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_2481025F8(uint64_t a1)
{
  v2 = type metadata accessor for User(0);
  v3 = *(*(v2 - 1) + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = *(v5 + 72);
    while (1)
    {
      sub_248105750(v9, v7, type metadata accessor for User);
      v11 = &v7[v2[6]];
      v13 = *v11;
      v12 = *(v11 + 1);
      v14 = v13 & 0xFFFFFFFFFFFFLL;
      if (!((v12 & 0x2000000000000000) != 0 ? HIBYTE(v12) & 0xF : v14))
      {
        break;
      }

      v16 = &v7[v2[8]];
      v18 = *v16;
      v17 = *(v16 + 1);
      v19 = v18 & 0xFFFFFFFFFFFFLL;
      if (!((v17 & 0x2000000000000000) != 0 ? HIBYTE(v17) & 0xF : v19))
      {
        break;
      }

      v21 = &v7[v2[9]];
      v23 = *v21;
      v22 = *(v21 + 1);
      v24 = v23 & 0xFFFFFFFFFFFFLL;
      if (!((v22 & 0x2000000000000000) != 0 ? HIBYTE(v22) & 0xF : v24))
      {
        break;
      }

      v26 = &v7[v2[10]];
      v28 = *v26;
      v27 = *(v26 + 1);
      v29 = v28 & 0xFFFFFFFFFFFFLL;
      v30 = (v27 & 0x2000000000000000) != 0 ? HIBYTE(v27) & 0xF : v29;
      if (!v30 || *&v7[v2[5]] < 0x1F4u)
      {
        break;
      }

      result = sub_2481057B8(v7, type metadata accessor for User);
      v9 += v10;
      if (!--v8)
      {
        return result;
      }
    }

    type metadata accessor for UserValidationError(0);
    sub_2481039A8(&qword_27EE87E50, type metadata accessor for UserValidationError);
    swift_allocError();
    sub_248105750(v7, v31, type metadata accessor for User);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_2481057B8(v7, type metadata accessor for User);
  }

  return result;
}

uint64_t sub_248102874(uint64_t a1)
{
  v2 = type metadata accessor for Group(0);
  v3 = *(*(v2 - 1) + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = *(v5 + 72);
    while (1)
    {
      sub_248105750(v9, v7, type metadata accessor for Group);
      v11 = &v7[v2[6]];
      v13 = *v11;
      v12 = *(v11 + 1);
      v14 = v13 & 0xFFFFFFFFFFFFLL;
      if (!((v12 & 0x2000000000000000) != 0 ? HIBYTE(v12) & 0xF : v14))
      {
        break;
      }

      v16 = &v7[v2[7]];
      v18 = *v16;
      v17 = *(v16 + 1);
      v19 = v18 & 0xFFFFFFFFFFFFLL;
      v20 = (v17 & 0x2000000000000000) != 0 ? HIBYTE(v17) & 0xF : v19;
      if (!v20 || *&v7[v2[5]] < 0x1F4u)
      {
        break;
      }

      result = sub_2481057B8(v7, type metadata accessor for Group);
      v9 += v10;
      if (!--v8)
      {
        return result;
      }
    }

    type metadata accessor for GroupValidationError(0);
    sub_2481039A8(&qword_27EE87E48, type metadata accessor for GroupValidationError);
    swift_allocError();
    sub_248105750(v7, v21, type metadata accessor for Group);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_2481057B8(v7, type metadata accessor for Group);
  }

  return result;
}

uint64_t sub_248102AA0()
{
  v1 = type metadata accessor for User(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UserValidationError(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248105750(v0, v8, type metadata accessor for UserValidationError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2480E63BC(v8, v4, type metadata accessor for User);
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v15 = 0;
      v16 = 0xE000000000000000;
      sub_2481246E8();
      v10 = "User has empty shell, ";
      v11 = 0xD00000000000001FLL;
    }

    else
    {
      v15 = 0;
      v16 = 0xE000000000000000;
      sub_2481246E8();
      if (EnumCaseMultiPayload == 3)
      {
        v10 = "User has an invalid UID, ";
        v11 = 0xD000000000000016;
      }

      else
      {
        v10 = "Duplicate records with id ";
        v11 = 0xD000000000000019;
      }
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload)
  {
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_2481246E8();
    v10 = "User has empty home directory, ";
    v11 = 0xD00000000000001ALL;
LABEL_10:
    v12 = v10 | 0x8000000000000000;
    goto LABEL_11;
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_2481246E8();
  v12 = 0x80000002481290E0;
  v11 = 0xD000000000000015;
LABEL_11:
  MEMORY[0x24C1C6C90](v11, v12);
  sub_2481247B8();
  v13 = v15;
  sub_2481057B8(v4, type metadata accessor for User);
  return v13;
}

uint64_t sub_248102D38()
{
  v1 = type metadata accessor for Group(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GroupValidationError(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248105750(v0, v8, type metadata accessor for GroupValidationError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2480E63BC(v8, v4, type metadata accessor for Group);
  if (EnumCaseMultiPayload)
  {
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_2481246E8();
    if (EnumCaseMultiPayload == 1)
    {
      v10 = "Group has an invalid GID, ";
      v11 = 0xD00000000000001BLL;
    }

    else
    {
      v10 = "User has empty name, ";
      v11 = 0xD00000000000001ALL;
    }

    v12 = v10 | 0x8000000000000000;
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_2481246E8();
    v12 = 0x8000000248129140;
    v11 = 0xD000000000000016;
  }

  MEMORY[0x24C1C6C90](v11, v12);
  sub_2481247B8();
  v13 = v15;
  sub_2481057B8(v4, type metadata accessor for Group);
  return v13;
}

uint64_t sub_248102F54(__int128 *a1, uint64_t a2)
{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  sub_248124D88();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_248124D58();

    sub_2481244D8();
    v15 = sub_248124D88();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x24C1C7510](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2481030B0(__int128 *a1, uint64_t a2)
{
  v4 = sub_2481242C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v26 = a1[2];
  v27 = v9;
  v28 = *(a1 + 8);
  v11 = *a1;
  v10 = a1[1];
  v23[0] = a1;
  v24 = v11;
  v25 = v10;
  v12 = sub_248124D88();
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;
  v23[2] = v5 + 16;
  v23[3] = v12;
  v23[1] = v5 + 8;

  v18 = 0;
  for (i = 0; v15; v18 ^= v22)
  {
    v20 = i;
LABEL_9:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    (*(v5 + 16))(v8, *(a2 + 48) + *(v5 + 72) * (v21 | (v20 << 6)), v4);
    sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0]);
    v22 = sub_248124438();
    result = (*(v5 + 8))(v8, v4);
  }

  while (1)
  {
    v20 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v20 >= v16)
    {

      return MEMORY[0x24C1C7510](v18);
    }

    v15 = *(a2 + 56 + 8 * v20);
    ++i;
    if (v15)
    {
      i = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s23DarwinDirectoryInternal5GroupV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_248124298() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Group(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_248124B38() & 1) == 0)
  {
    return 0;
  }

  v11 = v5[7];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_248124B38() & 1) == 0 || (sub_248100D10(*(a1 + v5[8]), *(a2 + v5[8])) & 1) == 0)
  {
    return 0;
  }

  v16 = v5[9];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);

  return sub_2481010C0(v17, v18);
}

uint64_t sub_2481033CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Group(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v36 = &v36 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for GroupValidationError(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v36 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v36 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87E80, &unk_248126710);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v36 - v25;
  v27 = *(v24 + 56);
  sub_248105750(a1, &v36 - v25, type metadata accessor for GroupValidationError);
  sub_248105750(a2, &v26[v27], type metadata accessor for GroupValidationError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_248105750(v26, v19, type metadata accessor for GroupValidationError);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = &v26[v27];
        v30 = v36;
        sub_2480E63BC(v29, v36, type metadata accessor for Group);
        v31 = _s23DarwinDirectoryInternal5GroupV2eeoiySbAC_ACtFZ_0(v19, v30);
        sub_2481057B8(v30, type metadata accessor for Group);
        v32 = v19;
LABEL_12:
        sub_2481057B8(v32, type metadata accessor for Group);
        sub_2481057B8(v26, type metadata accessor for GroupValidationError);
        return v31 & 1;
      }

      v16 = v19;
    }

    else
    {
      sub_248105750(v26, v16, type metadata accessor for GroupValidationError);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v33 = &v26[v27];
        v34 = v37;
        sub_2480E63BC(v33, v37, type metadata accessor for Group);
        v31 = _s23DarwinDirectoryInternal5GroupV2eeoiySbAC_ACtFZ_0(v16, v34);
        sub_2481057B8(v34, type metadata accessor for Group);
        v32 = v16;
        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_248105750(v26, v21, type metadata accessor for GroupValidationError);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2480E63BC(&v26[v27], v11, type metadata accessor for Group);
      v31 = _s23DarwinDirectoryInternal5GroupV2eeoiySbAC_ACtFZ_0(v21, v11);
      sub_2481057B8(v11, type metadata accessor for Group);
      v32 = v21;
      goto LABEL_12;
    }

    v16 = v21;
  }

  sub_2481057B8(v16, type metadata accessor for Group);
  sub_248105CF4(v26, &qword_27EE87E80, &unk_248126710);
  v31 = 0;
  return v31 & 1;
}

uint64_t _s23DarwinDirectoryInternal4UserV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_248124298() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for User(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_248124B38() & 1) == 0)
  {
    return 0;
  }

  v11 = v5[7];
  if ((sub_248124298() & 1) == 0)
  {
    return 0;
  }

  v12 = v5[8];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v13 == *v15 && v14 == v15[1];
  if (!v16 && (sub_248124B38() & 1) == 0)
  {
    return 0;
  }

  v17 = v5[9];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v18 == *v20 && v19 == v20[1];
  if (!v21 && (sub_248124B38() & 1) == 0)
  {
    return 0;
  }

  v22 = v5[10];
  v23 = *(a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  if ((v23 != *v25 || v24 != v25[1]) && (sub_248124B38() & 1) == 0)
  {
    return 0;
  }

  if ((sub_248100D10(*(a1 + v5[11]), *(a2 + v5[11])) & 1) == 0)
  {
    return 0;
  }

  v26 = v5[12];
  v27 = *(a1 + v26);
  v28 = *(a2 + v26);

  return sub_2481010C0(v27, v28);
}

uint64_t sub_2481039A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_248103A68()
{
  sub_2481242C8();
  if (v0 <= 0x3F)
  {
    sub_248103B28();
    if (v1 <= 0x3F)
    {
      sub_248103BBC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_248103B28()
{
  if (!qword_27EE87E20)
  {
    sub_2481242C8();
    sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0]);
    v0 = sub_2481245F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE87E20);
    }
  }
}

void sub_248103BBC()
{
  if (!qword_27EE87E28)
  {
    v0 = sub_2481245F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE87E28);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2481242C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2481242C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_248103DB8()
{
  sub_2481242C8();
  if (v0 <= 0x3F)
  {
    sub_248103B28();
    if (v1 <= 0x3F)
    {
      sub_248103BBC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_248103E68(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v48 = a2;
  v2 = type metadata accessor for User(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v44 = &v43 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v43 = &v43 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = type metadata accessor for UserValidationError(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v46 = &v43 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v43 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v43 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v43 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87E78, &qword_248126708);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v34 = &v43 - v33;
  v35 = *(v32 + 56);
  sub_248105750(v47, &v43 - v33, type metadata accessor for UserValidationError);
  sub_248105750(v48, &v34[v35], type metadata accessor for UserValidationError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_248105750(v34, v27, type metadata accessor for UserValidationError);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2480E63BC(&v34[v35], v12, type metadata accessor for User);
        v40 = _s23DarwinDirectoryInternal4UserV2eeoiySbAC_ACtFZ_0(v27, v12);
        sub_2481057B8(v12, type metadata accessor for User);
        v41 = v27;
        goto LABEL_20;
      }

      v19 = v27;
    }

    else
    {
      sub_248105750(v34, v29, type metadata accessor for UserValidationError);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_2480E63BC(&v34[v35], v14, type metadata accessor for User);
        v40 = _s23DarwinDirectoryInternal4UserV2eeoiySbAC_ACtFZ_0(v29, v14);
        sub_2481057B8(v14, type metadata accessor for User);
        v41 = v29;
        goto LABEL_20;
      }

      v19 = v29;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_248105750(v34, v24, type metadata accessor for UserValidationError);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v39 = v43;
      sub_2480E63BC(&v34[v35], v43, type metadata accessor for User);
      v40 = _s23DarwinDirectoryInternal4UserV2eeoiySbAC_ACtFZ_0(v24, v39);
      sub_2481057B8(v39, type metadata accessor for User);
      v41 = v24;
LABEL_20:
      sub_2481057B8(v41, type metadata accessor for User);
      sub_2481057B8(v34, type metadata accessor for UserValidationError);
      return v40 & 1;
    }

    v19 = v24;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v19 = v46;
    sub_248105750(v34, v46, type metadata accessor for UserValidationError);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v37 = &v34[v35];
      v38 = v44;
LABEL_13:
      sub_2480E63BC(v37, v38, type metadata accessor for User);
      v40 = _s23DarwinDirectoryInternal4UserV2eeoiySbAC_ACtFZ_0(v19, v38);
      sub_2481057B8(v38, type metadata accessor for User);
      v41 = v19;
      goto LABEL_20;
    }
  }

  else
  {
    sub_248105750(v34, v19, type metadata accessor for UserValidationError);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v37 = &v34[v35];
      v38 = v45;
      goto LABEL_13;
    }
  }

  sub_2481057B8(v19, type metadata accessor for User);
  sub_248105CF4(v34, &qword_27EE87E78, &qword_248126708);
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_248104400(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v5 = result;
    v6 = *result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v2 = sub_2480F301C(v2);
    }

    v7 = 0;
    do
    {
      v8 = v2[2];

      if (v7 >= v8)
      {
        __break(1u);
        goto LABEL_9;
      }

      v9 = v7 + 1;
      v10 = type metadata accessor for User(0);
      v11 = v2 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(*(v10 - 8) + 72) * v7 + *(v10 + 44);
      result = sub_2480F8F5C(a2);
      v7 = v9;
    }

    while (v3 != v9);
    *v5 = v2;
  }

  return result;
}

void (*sub_2481044F8(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *, void **), uint64_t a4, uint64_t a5))(void, void, void)
{
  v183 = a5;
  v185 = a4;
  v186 = a3;
  v210 = sub_2481242C8();
  v192 = *(v210 - 8);
  v6 = *(v192 + 64);
  v7 = MEMORY[0x28223BE20](v210);
  v190 = &v181 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v181 - v9;
  v11 = type metadata accessor for Group(0);
  v197 = *(v11 - 8);
  v12 = *(v197 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v188 = &v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v181 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v181 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v181 - v21;
  v23 = type metadata accessor for User(0);
  v198 = *(v23 - 8);
  v199 = v23;
  v24 = *(v198 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v181 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v181 = &v181 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v189 = &v181 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v181 - v33;
  v196 = v32;
  if (v32 >> 62)
  {
    v35 = sub_2481247E8();
  }

  else
  {
    v35 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = MEMORY[0x277D84F90];
  v208 = v11;
  v193 = v10;
  v182 = v17;
  v191 = v20;
  v195 = a2;
  if (v35)
  {
    v212 = MEMORY[0x277D84F90];
    v209 = v35;
    sub_2480FC3A0(0, v35 & ~(v35 >> 63), 0);
    v37 = v209;
    if (v209 < 0)
    {
      __break(1u);
      goto LABEL_51;
    }

    v184 = v22;
    v36 = v212;
    if ((v196 & 0xC000000000000001) != 0)
    {
      v38 = 0;
      v194 = (v192 + 16);
      do
      {
        v202 = v38;
        v39 = MEMORY[0x24C1C6EA0]();
        v40 = *v194;
        v41 = v210;
        (*v194)(v34, v39 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid, v210);
        LODWORD(v206) = *(v39 + 16);
        v42 = *(v39 + 32);
        v207 = *(v39 + 24);
        v201 = v42;
        v43 = v199;
        v40(&v34[v199[7]], v39 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID, v41);
        v44 = *(v39 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName + 8);
        v205 = *(v39 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName);
        v200 = v44;
        v45 = *(v39 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory + 8);
        v204 = *(v39 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory);
        v46 = *(v39 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell + 8);
        v203 = *(v39 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell);
        v47 = OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_memberships;
        swift_beginAccess();
        v48 = *(v39 + v47);
        v49 = *(v39 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases);
        v50 = v201;

        swift_unknownObjectRelease();
        *&v34[v43[5]] = v206;
        v51 = &v34[v43[6]];
        *v51 = v207;
        *(v51 + 1) = v50;
        v52 = &v34[v43[8]];
        v53 = v200;
        *v52 = v205;
        *(v52 + 1) = v53;
        v54 = &v34[v43[9]];
        v55 = v203;
        *v54 = v204;
        *(v54 + 1) = v45;
        v56 = &v34[v43[10]];
        *v56 = v55;
        *(v56 + 1) = v46;
        *&v34[v43[11]] = v48;
        *&v34[v43[12]] = v49;
        v212 = v36;
        v58 = *(v36 + 16);
        v57 = *(v36 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_2480FC3A0(v57 > 1, v58 + 1, 1);
          v36 = v212;
        }

        v59 = v202 + 1;
        *(v36 + 16) = v58 + 1;
        sub_2480E63BC(v34, v36 + ((*(v198 + 80) + 32) & ~*(v198 + 80)) + *(v198 + 72) * v58, type metadata accessor for User);
        v38 = v59;
      }

      while (v209 != v59);
    }

    else
    {
      v61 = (v196 + 32);
      v200 = *(v192 + 16);
      v201 = (v192 + 16);
      do
      {
        v207 = v61;
        v209 = v37;
        v62 = *v61;
        v63 = v210;
        v64 = v200;
        v200(v27, *v61 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid, v210);
        LODWORD(v204) = *(v62 + 16);
        v65 = *(v62 + 24);
        v205 = *(v62 + 32);
        v206 = v65;
        v66 = v199;
        v64(&v27[v199[7]], v62 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID, v63);
        v68 = *(v62 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName);
        v67 = *(v62 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName + 8);
        v69 = *(v62 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory + 8);
        v203 = *(v62 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory);
        v70 = *(v62 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell + 8);
        v202 = *(v62 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell);
        v71 = OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_memberships;
        swift_beginAccess();
        v72 = *(v62 + v71);
        v73 = *(v62 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases);
        *&v27[v66[5]] = v204;
        v74 = &v27[v66[6]];
        v75 = v205;
        *v74 = v206;
        *(v74 + 1) = v75;
        v76 = &v27[v66[8]];
        *v76 = v68;
        *(v76 + 1) = v67;
        v77 = &v27[v66[9]];
        v78 = v202;
        *v77 = v203;
        *(v77 + 1) = v69;
        v79 = &v27[v66[10]];
        *v79 = v78;
        *(v79 + 1) = v70;
        *&v27[v66[11]] = v72;
        *&v27[v66[12]] = v73;
        v212 = v36;
        v81 = *(v36 + 16);
        v80 = *(v36 + 24);

        if (v81 >= v80 >> 1)
        {
          sub_2480FC3A0(v80 > 1, v81 + 1, 1);
          v36 = v212;
        }

        *(v36 + 16) = v81 + 1;
        sub_2480E63BC(v27, v36 + ((*(v198 + 80) + 32) & ~*(v198 + 80)) + *(v198 + 72) * v81, type metadata accessor for User);
        v61 = v207 + 1;
        v37 = v209 - 1;
      }

      while (v209 != 1);
    }

    v11 = v208;
    v60 = v195;
    v22 = v184;
  }

  else
  {
    v60 = a2;
  }

  v213 = v36;
  v82 = v210;
  v83 = v188;
  if (v60 >> 62)
  {
    v179 = v60;
    v180 = sub_2481247E8();
    v60 = v179;
    v84 = v180;
  }

  else
  {
    v84 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x277D84F90];
  if (!v84)
  {
    goto LABEL_32;
  }

  v85 = v60;
  v211 = MEMORY[0x277D84F90];
  sub_2480FC35C(0, v84 & ~(v84 >> 63), 0);
  if (v84 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v17 = v211;
  v86 = v85;
  if ((v85 & 0xC000000000000001) != 0)
  {
    v87 = 0;
    v205 = (v192 + 16);
    v209 = v84;
    do
    {
      v88 = MEMORY[0x24C1C6EA0](v87, v86);
      (*v205)(v22, v88 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v82);
      v89 = *(v88 + 32);
      v90 = *(v88 + 48);
      v91 = *(v88 + 16);
      v92 = *(v88 + 24);
      v206 = *(v88 + 40);
      v207 = v91;
      v93 = *(v88 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_nestedGroups);
      v94 = *(v88 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases);

      swift_unknownObjectRelease();
      v95 = v208;
      *&v22[v208[5]] = v89;
      v96 = &v22[v95[6]];
      v97 = v207;
      *v96 = v206;
      *(v96 + 1) = v90;
      v98 = &v22[v95[7]];
      *v98 = v97;
      *(v98 + 1) = v92;
      *&v22[v95[8]] = v93;
      *&v22[v95[9]] = v94;
      v211 = v17;
      v100 = v17[2];
      v99 = v17[3];
      if (v100 >= v99 >> 1)
      {
        sub_2480FC35C(v99 > 1, v100 + 1, 1);
        v17 = v211;
      }

      ++v87;
      v17[2] = v100 + 1;
      sub_2480E63BC(v22, v17 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v100, type metadata accessor for Group);
      v82 = v210;
      v86 = v195;
    }

    while (v209 != v87);
  }

  else
  {
    v101 = (v85 + 32);
    v206 = *(v192 + 16);
    v207 = (v192 + 16);
    do
    {
      v209 = v84;
      v102 = *v101;
      v206(v83, *v101 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v82);
      v104 = *(v102 + 40);
      v103 = *(v102 + 48);
      v105 = *(v102 + 16);
      v106 = *(v102 + 24);
      v107 = *(v102 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_nestedGroups);
      v108 = *(v102 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases);
      v109 = v208;
      *(v83 + v208[5]) = *(v102 + 32);
      v110 = (v83 + v109[6]);
      *v110 = v104;
      v110[1] = v103;
      v111 = (v83 + v109[7]);
      *v111 = v105;
      v111[1] = v106;
      *(v83 + v109[8]) = v107;
      *(v83 + v109[9]) = v108;
      v211 = v17;
      v113 = v17[2];
      v112 = v17[3];

      if (v113 >= v112 >> 1)
      {
        sub_2480FC35C(v112 > 1, v113 + 1, 1);
        v17 = v211;
      }

      v17[2] = v113 + 1;
      sub_2480E63BC(v83, v17 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v113, type metadata accessor for Group);
      ++v101;
      v84 = v209 - 1;
    }

    while (v209 != 1);
  }

  v11 = v208;
LABEL_32:
  v212 = v17;
  v114 = v187;
  v186(&v213, &v212);
  v17 = v114;
  if (!v114)
  {
    sub_2481025F8(v213);
    v121 = v212;
    sub_248102874(v212);
    v185 = 0;
    sub_248104400(&v213, v183);
    v123 = v213;
    v124 = *(v213 + 16);
    v125 = MEMORY[0x277D84F90];
    v187 = v121;
    v186 = v213;
    if (v124)
    {
      v211 = MEMORY[0x277D84F90];
      sub_248124788();
      v126 = v123 + ((*(v198 + 80) + 32) & ~*(v198 + 80));
      v194 = *(v198 + 72);
      v188 = (v192 + 32);
      v127 = v199;
      v128 = v181;
      do
      {
        v209 = v124;
        v129 = v189;
        sub_248105750(v126, v189, type metadata accessor for User);
        sub_2480E63BC(v129, v128, type metadata accessor for User);
        v130 = v127[6];
        LODWORD(v207) = *(v128 + v127[5]);
        v131 = v128 + v130;
        v132 = *(v128 + v130);
        v205 = *(v131 + 8);
        v206 = v132;
        v133 = *v188;
        v134 = v193;
        v135 = v210;
        (*v188)(v193, v128, v210);
        v136 = v127[7];
        v137 = (v128 + v127[8]);
        v138 = *v137;
        v203 = v137[1];
        v204 = v138;
        v139 = (v128 + v127[9]);
        v140 = *v139;
        v201 = v139[1];
        v202 = v140;
        v141 = v190;
        v133(v190, v128 + v136, v135);
        v142 = v127[11];
        v143 = (v128 + v127[10]);
        v144 = *v143;
        v195 = v143[1];
        v196 = v144;
        v200 = *(v128 + v142);
        v198 = *(v128 + v127[12]);
        v145 = type metadata accessor for UserRecord(0);
        v146 = *(v145 + 48);
        v147 = *(v145 + 52);
        v148 = swift_allocObject();
        *(v148 + 16) = v207;
        v149 = v205;
        *(v148 + 24) = v206;
        *(v148 + 32) = v149;
        v133((v148 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid), v134, v135);
        v150 = (v148 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName);
        v151 = v203;
        *v150 = v204;
        v150[1] = v151;
        v152 = (v148 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory);
        v153 = v201;
        *v152 = v202;
        v152[1] = v153;
        v133((v148 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID), v141, v135);
        v154 = v209;
        v155 = (v148 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell);
        v156 = v195;
        *v155 = v196;
        v155[1] = v156;
        *(v148 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_memberships) = v200;
        *(v148 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases) = v198;
        sub_248124768();
        v157 = v211[2];
        sub_248124798();
        sub_2481247A8();
        sub_248124778();
        v126 += v194;
        v124 = v154 - 1;
      }

      while (v124);
      v116 = v211;
      v11 = v208;
      v121 = v187;
      v125 = MEMORY[0x277D84F90];
      v158 = *(v187 + 16);
      if (v158)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v116 = MEMORY[0x277D84F90];
      v158 = *(v121 + 16);
      if (v158)
      {
LABEL_43:
        v200 = v116;
        v211 = v125;
        sub_248124788();
        v159 = v121 + ((*(v197 + 80) + 32) & ~*(v197 + 80));
        v202 = *(v197 + 72);
        v201 = (v192 + 32);
        v160 = v182;
        do
        {
          v161 = v191;
          sub_248105750(v159, v191, type metadata accessor for Group);
          sub_2480E63BC(v161, v160, type metadata accessor for Group);
          v162 = *(v11 + 24);
          LODWORD(v209) = *(v160 + *(v11 + 20));
          v163 = v160 + v162;
          v164 = *(v160 + v162);
          v206 = *(v163 + 8);
          v207 = v164;
          v165 = *v201;
          v166 = v193;
          v167 = v210;
          (*v201)(v193, v160, v210);
          v168 = (v160 + v208[7]);
          v169 = *v168;
          v170 = v168[1];
          v205 = *(v160 + v208[8]);
          v171 = *(v160 + v208[9]);
          v203 = v169;
          v204 = v171;
          v172 = type metadata accessor for GroupRecord(0);
          v173 = *(v172 + 48);
          v174 = *(v172 + 52);
          v175 = swift_allocObject();
          *(v175 + 32) = v209;
          v176 = v206;
          *(v175 + 40) = v207;
          *(v175 + 48) = v176;
          v165((v175 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid), v166, v167);
          *(v175 + 16) = v203;
          *(v175 + 24) = v170;
          v177 = v204;
          *(v175 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_nestedGroups) = v205;
          *(v175 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases) = v177;
          sub_248124768();
          v178 = v211[2];
          sub_248124798();
          v11 = v208;
          sub_2481247A8();
          sub_248124778();
          v159 += v202;
          --v158;
        }

        while (v158);

        return v200;
      }
    }

    return v116;
  }

  if (qword_27EE87A08 != -1)
  {
LABEL_52:
    swift_once();
  }

  v115 = sub_2481242F8();
  v116 = __swift_project_value_buffer(v115, qword_27EE87DE8);
  MEMORY[0x24C1C7A20](v17);
  v117 = sub_2481242D8();
  v118 = sub_248124628();

  if (os_log_type_enabled(v117, v118))
  {
    v116 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    *v116 = 138543362;
    MEMORY[0x24C1C7A20](v17);
    v120 = _swift_stdlib_bridgeErrorToNSError();
    *(v116 + 4) = v120;
    *v119 = v120;
    _os_log_impl(&dword_2480DF000, v117, v118, "Failed to update local users and groups: Performer failed: %{public}@", v116, 0xCu);
    sub_248105CF4(v119, &qword_27EE87E40, "C");
    MEMORY[0x24C1C7B90](v119, -1, -1);
    MEMORY[0x24C1C7B90](v116, -1, -1);
  }

  swift_willThrow();
  return v116;
}

uint64_t sub_248105750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2481057B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_248105858(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for RecordManager();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a2;
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  v13 = &v9[*(v6 + 28)];
  v13[3] = v10;
  v13[4] = *(v11 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v12, v10);
  sub_2481242E8();
  if (qword_27EE87A08 != -1)
  {
    swift_once();
  }

  v15 = sub_2481242F8();
  v39 = __swift_project_value_buffer(v15, qword_27EE87DE8);
  v16 = sub_2481242D8();
  v17 = sub_248124638();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2480DF000, v16, v17, "Updating local domain...", v18, 2u);
    MEMORY[0x24C1C7B90](v18, -1, -1);
  }

  v36 = sub_2480F4840();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = sub_2480E0A38(1);
  v27 = sub_2481044F8(v25, v26, sub_248105C04, v37, v22);
  if (v2)
  {

    v31 = sub_2481242D8();
    v32 = sub_248124628();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2480DF000, v31, v32, "Failed to update local domain.", v33, 2u);
      MEMORY[0x24C1C7B90](v33, -1, -1);
    }

    swift_willThrow();
    return sub_2481057B8(v9, type metadata accessor for RecordManager);
  }

  else
  {
    v29 = v27;
    v30 = v28;

    sub_2480EC5CC(v29, v30, v36 & 1, v20, v22, v24);
    sub_2481057B8(v9, type metadata accessor for RecordManager);
  }
}

uint64_t sub_248105C28()
{
  result = type metadata accessor for User(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_248105C90()
{
  result = type metadata accessor for Group(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_248105CF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_248105D78()
{
  sub_2481244D8();
}

uint64_t sub_248105EE8()
{
  sub_2481244D8();
}

uint64_t sub_248106014()
{
  sub_248124D58();
  sub_2481244D8();

  return sub_248124D88();
}

uint64_t sub_248106154()
{
  sub_248124D58();
  sub_2481244D8();

  return sub_248124D88();
}

uint64_t sub_248106264()
{
  v1 = sub_2481242C8();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v9 = *(v0 + 24);
  v10 = *(v0 + 40);
  v38 = *(v0 + 32);
  v11 = v2[2];
  v11(&v31 - v7, v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_uuid, v1);
  v12 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_fullName);
  v13 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_fullName + 8);
  v14 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_homeDirectory + 8);
  v36 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_homeDirectory);
  v37 = v12;
  v34 = v14;
  v35 = v13;
  v11(v6, v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_primaryGroupUUID, v1);
  v15 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_shell);
  v16 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_shell + 8);
  v32 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_memberships);
  v33 = v15;
  v17 = MEMORY[0x277D84FA0];
  if (*(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_aliases))
  {
    v17 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_aliases);
  }

  v31 = v17;
  v18 = type metadata accessor for UserRecord(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  *(v21 + 16) = v9;
  *(v21 + 24) = v38;
  *(v21 + 32) = v10;
  v22 = v2[4];
  v22(v21 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid, v8, v1);
  v23 = (v21 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName);
  v24 = v36;
  v25 = v34;
  v26 = v35;
  *v23 = v37;
  v23[1] = v26;
  v27 = (v21 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory);
  *v27 = v24;
  v27[1] = v25;
  v22(v21 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID, v6, v1);
  v28 = (v21 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell);
  v29 = v32;
  *v28 = v33;
  v28[1] = v16;
  *(v21 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_memberships) = v29;
  *(v21 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases) = v31;

  return v21;
}

unint64_t sub_24810650C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6C6C656873;
    v6 = 0x68737265626D656DLL;
    if (a1 != 8)
    {
      v6 = 0x73657361696C61;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x65726944656D6F68;
    if (a1 != 5)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6E6F6973726576;
    v2 = 1701667182;
    v3 = 1145656661;
    if (a1 != 3)
    {
      v3 = 0x656D614E6C6C7566;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 17481;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_248106640(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_24810650C(*a1);
  v5 = v4;
  if (v3 == sub_24810650C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_248124B38();
  }

  return v8 & 1;
}

uint64_t sub_2481066C8()
{
  v1 = *v0;
  sub_248124D58();
  sub_24810650C(v1);
  sub_2481244D8();

  return sub_248124D88();
}

uint64_t sub_24810672C()
{
  sub_24810650C(*v0);
  sub_2481244D8();
}

uint64_t sub_248106780()
{
  v1 = *v0;
  sub_248124D58();
  sub_24810650C(v1);
  sub_2481244D8();

  return sub_248124D88();
}

uint64_t sub_2481067E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_248109618();
  *a2 = result;
  return result;
}

unint64_t sub_248106810@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24810650C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_248106858@<X0>(_BYTE *a1@<X8>)
{
  result = sub_248109618();
  *a1 = result;
  return result;
}

uint64_t sub_24810688C(uint64_t a1)
{
  v2 = sub_248108FB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2481068C8(uint64_t a1)
{
  v2 = sub_248108FB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248106904()
{
  v1 = *(v0 + 40);

  v2 = OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_uuid;
  v3 = sub_2481242C8();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v5 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_fullName + 8);

  v6 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_homeDirectory + 8);

  v4(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_primaryGroupUUID, v3);
  v7 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_shell + 8);

  v8 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_memberships);

  v9 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_aliases);

  return v0;
}

uint64_t sub_2481069F8()
{
  sub_248106904();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_248106A78()
{
  result = sub_2481242C8();
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

uint64_t sub_248106B50(void *a1)
{
  v2 = v1;
  v4 = sub_2481242C8();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87EF8, &qword_248126910);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248108FB8();
  v14 = v8;
  sub_248124DA8();
  v15 = *(v2 + 16);
  LOBYTE(v42) = 0;
  v16 = v40;
  sub_2481248E8();
  if (v16)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v40 = v7;
  v18 = v9;
  v19 = v39;
  v20 = *(v2 + 24);
  LOBYTE(v42) = 1;
  sub_248124908();
  v21 = *(v2 + 32);
  v22 = *(v2 + 40);
  v38 = v2;
  LOBYTE(v42) = 2;

  v23 = v14;
  sub_2481248C8();

  LOBYTE(v42) = 3;
  sub_248107F7C(&qword_27EE87AE8, MEMORY[0x277CC95F0]);
  sub_2481248F8();
  v24 = v18;
  v25 = *(v38 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_fullName);
  v26 = *(v38 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_fullName + 8);
  LOBYTE(v42) = 4;

  sub_2481248C8();
  v37 = 0;

  v27 = *(v38 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_homeDirectory);
  v28 = *(v38 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_homeDirectory + 8);
  LOBYTE(v42) = 5;

  v29 = v37;
  sub_2481248C8();
  if (v29)
  {
    (*(v24 + 8))(v12, v23);
  }

  else
  {

    v30 = v19;
    v31 = *(v19 + 16);
    v32 = v40;
    v31(v40, v38 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_primaryGroupUUID, v4);
    LOBYTE(v42) = 6;
    sub_2481248F8();
    (*(v30 + 8))(v32, v4);
    v33 = v38;
    v34 = *(v38 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_shell);
    v35 = *(v38 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_shell + 8);
    LOBYTE(v42) = 7;

    sub_2481248C8();

    v42 = *(v33 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_memberships);
    v41 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87ED8, &qword_248126900);
    sub_24810900C(&qword_27EE87F00, &qword_27EE87AE8);
    sub_2481248F8();
    v42 = *(v33 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_aliases);
    v41 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87EE8, &qword_248126908);
    sub_2481090A8(&qword_27EE87F08);
    sub_2481248B8();
    return (*(v24 + 8))(v12, v23);
  }
}

void *sub_2481071C8(uint64_t *a1)
{
  v3 = v1;
  v51 = *v3;
  v52 = v2;
  v5 = sub_2481242C8();
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v47 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87EC8, &qword_2481268F8);
  v12 = *(v49 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v49);
  v15 = v47 - v14;
  v16 = OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_aliases;
  v53 = a1;
  v54 = v3;
  *(v3 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_aliases) = 0;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248108FB8();
  v50 = v15;
  v18 = v52;
  sub_248124D98();
  if (v18)
  {
    v19 = v54;
    v25 = *(v54 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_aliases);

    v26 = *(*v19 + 48);
    v27 = *(*v19 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v9;
    v21 = v16;
    v52 = v5;
    LOBYTE(v56) = 0;
    v22 = sub_248124868();
    v23 = v54;
    v54[2] = v22;
    LOBYTE(v56) = 1;
    v24 = v12;
    *(v23 + 6) = sub_248124888();
    LOBYTE(v56) = 2;
    v23[4] = sub_248124848();
    v23[5] = v29;
    LOBYTE(v56) = 3;
    sub_248107F7C(&qword_27EE87B10, MEMORY[0x277CC95F0]);
    v30 = v52;
    sub_248124878();
    v31 = v30;
    v32 = *(v48 + 32);
    v33 = v48 + 32;
    v32(v23 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_uuid, v11, v31);
    LOBYTE(v56) = 4;
    v34 = sub_248124848();
    v35 = (v23 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_fullName);
    *v35 = v34;
    v35[1] = v36;
    LOBYTE(v56) = 5;
    v47[1] = 0;
    v37 = sub_248124848();
    v47[0] = v33;
    v38 = (v23 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_homeDirectory);
    *v38 = v37;
    v38[1] = v39;
    LOBYTE(v56) = 6;
    v40 = v52;
    sub_248124878();
    v32(v23 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_primaryGroupUUID, v20, v40);
    LOBYTE(v56) = 7;
    v41 = v49;
    v42 = sub_248124848();
    v43 = (v23 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_shell);
    *v43 = v42;
    v43[1] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87ED8, &qword_248126900);
    v55 = 8;
    sub_24810900C(&qword_27EE87EE0, &qword_27EE87B10);
    sub_248124878();
    *(v23 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_memberships) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87EE8, &qword_248126908);
    v55 = 9;
    sub_2481090A8(&qword_27EE87EF0);
    v45 = v50;
    sub_248124838();
    (*(v24 + 8))(v45, v41);
    v19 = v54;
    v46 = *(v54 + v21);
    *(v54 + v21) = v56;
  }

  __swift_destroy_boxed_opaque_existential_0(v53);
  return v19;
}

uint64_t sub_248107994()
{
  *v0;
  *v0;
  *v0;
  sub_2481244D8();
}

uint64_t sub_248107A98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_248109664();
  *a2 = result;
  return result;
}

void sub_248107AC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F6973726576;
  v5 = 0xEC0000007370756FLL;
  v6 = 0x724764657473656ELL;
  if (v2 != 5)
  {
    v6 = 0x73657361696C61;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1145656661;
  if (v2 != 3)
  {
    v8 = 0x656D614E6C6C7566;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE200000000000000;
  v10 = 17481;
  if (v2 != 1)
  {
    v10 = 1701667182;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}