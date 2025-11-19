id sub_21910DA38(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_2186C6148(0, &unk_280E8E710);
  v2 = sub_219BF5924();

  v3 = v1(v2);

  return v3;
}

void sub_21910DAC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21910DB2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21910DB8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 72);
  v11 = *(v1 + 80);
  v12 = *(v1 + 64);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_2187608D4;

  return sub_219106658(v10, v11, a1, v4, v5, v6, v7, v8, v9, v12);
}

BOOL sub_21910DC7C(uint64_t a1)
{
  v2 = *a1;
  v3 = (*(a1 + 16))(*(v1 + 16));
  v4 = v3;
  if (v3 != 2)
  {
    v2(v3 & 1);
  }

  return v4 == 2;
}

unint64_t sub_21910DCEC(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_22:
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = sub_219BF7214();
  }

  else
  {
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v20 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x21CECE0F0](v3, a1);
    }

    else
    {
      if (v3 >= *(v18 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = [v4 identifier];
    v7 = sub_219BF5414();
    v9 = v8;

    v10 = [a2 identifier];
    v11 = sub_219BF5414();
    v13 = v12;

    if (v7 == v11 && v9 == v13)
    {
      break;
    }

    v15 = sub_219BF78F4();

    if (v15)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_21;
    }
  }

  return v3;
}

uint64_t sub_21910DE88(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_mainTabManager);
  v6 = [*(v5 + 72) _children];
  sub_2186C6148(0, &qword_280E8DAD8);
  v7 = sub_219BF5924();

  sub_2186DEF40(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C146A0;
  v9 = *(v2 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_hiddenTabElement);
  *(v8 + 32) = v9;
  v10 = v9;
  v11 = sub_21941AD48(v7, v8);

  if (v11)
  {
    [*(v5 + 72) _setSelectedElement_];
    v12 = swift_allocObject();
    *(v12 + 16) = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
    sub_219BE6F64();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a1;
    v14[4] = a2;
    v14[5] = v12;

    sub_219BE20F4();

    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    result = swift_beginAccess();
    if (*(v12 + 16))
    {
      v16 = *(v12 + 16);
      sub_219BE1A04();

      __swift_destroy_boxed_opaque_existential_1(v21);

      return 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v17 = sub_218D20388(a1, a2);
    v19 = v18;
    v20 = sub_2191096A4(v17, v18);
    sub_218AEED68(v17, v19);
    return v20;
  }

  return result;
}

unint64_t sub_21910E130(unint64_t *a1, void *a2)
{
  v5 = a2;
  v7 = *a1;
  result = sub_21910DCEC(*a1, a2);
  if (v2)
  {
    return result;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_219BF7214();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = a1;
  v33 = result;
  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v10 == sub_219BF7214())
      {
        return v33;
      }
    }

    else if (v10 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v33;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CECE0F0](v10, v7);
      goto LABEL_17;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v12 = *(v7 + 8 * v10 + 32);
LABEL_17:
    v4 = v12;
    v13 = [v12 identifier];
    v14 = sub_219BF5414();
    v16 = v15;

    v3 = v5;
    v17 = [v5 identifier];
    v18 = sub_219BF5414();
    v20 = v19;

    if (v14 == v18 && v16 == v20)
    {
LABEL_8:

LABEL_9:
      v5 = v3;
      goto LABEL_10;
    }

    v21 = sub_219BF78F4();

    if (v21)
    {
      goto LABEL_9;
    }

    v5 = v3;
    if (v33 != v10)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x21CECE0F0](v33, v7);
        v23 = MEMORY[0x21CECE0F0](v10, v7);
      }

      else
      {
        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v24 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v33 >= v24)
        {
          goto LABEL_53;
        }

        if (v10 >= v24)
        {
          goto LABEL_54;
        }

        v25 = *(v7 + 32 + 8 * v10);
        v22 = *(v7 + 32 + 8 * v33);
        v23 = v25;
      }

      v26 = v23;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
      {
        v7 = sub_2194B7E54(v7);
        v27 = (v7 >> 62) & 1;
      }

      else
      {
        LODWORD(v27) = 0;
      }

      v28 = v7 & 0xFFFFFFFFFFFFFF8;
      v29 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20);
      *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20) = v26;

      if ((v7 & 0x8000000000000000) != 0 || v27)
      {
        v7 = sub_2194B7E54(v7);
        v28 = v7 & 0xFFFFFFFFFFFFFF8;
        if ((v10 & 0x8000000000000000) != 0)
        {
LABEL_44:
          __break(1u);
          return v33;
        }
      }

      else if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v10 >= *(v28 + 16))
      {
        goto LABEL_51;
      }

      v30 = v28 + 8 * v10;
      v31 = *(v30 + 32);
      *(v30 + 32) = v22;

      *v32 = v7;
    }

    v11 = __OFADD__(v33++, 1);
    if (v11)
    {
      goto LABEL_50;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return sub_219BF7214();
}

uint64_t sub_21910E440(void *a1)
{
  if (qword_280EE6048 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62748);
  v3 = a1;
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446210;
    v8 = [v3 _identifier];
    v9 = sub_219BF5414();
    v11 = v10;

    v12 = sub_2186D1058(v9, v11, &v18);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_2186C1000, v4, v5, "Sidebar did select element %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  v13 = [v3 _identifier];
  v14 = sub_219BF5414();
  v16 = v15;

  sub_219105BBC(v14, v16);
}

void sub_21910E61C(uint64_t a1, void *a2)
{
  sub_218A2D984(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v88 = &v75 - v8;
  sub_218950928();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9);
  v84 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v75 - v14;
  sub_218950ACC();
  v85 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE6048 != -1)
  {
    v72 = v17;
    swift_once();
    v17 = v72;
  }

  v91 = v17;
  v20 = sub_219BE5434();
  __swift_project_value_buffer(v20, qword_280F62748);
  v21 = a2;

  v22 = sub_219BE5414();
  v23 = sub_219BF6214();

  LODWORD(v90) = v23;
  v24 = os_log_type_enabled(v22, v23);
  v25 = a1;
  v26 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v86 = v15;
  v83 = v25;
  if (v24)
  {
    v27 = swift_slowAlloc();
    v81 = v11;
    v28 = v27;
    v89 = swift_slowAlloc();
    *&v105[0] = v89;
    *v28 = 136446466;
    v29 = v7;
    v30 = v19;
    v31 = v10;
    v32 = [v21 _identifier];
    v33 = sub_219BF5414();
    v82 = v21;
    v34 = v33;
    v36 = v35;

    v10 = v31;
    v19 = v30;
    v7 = v29;
    v37 = sub_2186D1058(v34, v36, v105);

    *(v28 + 4) = v37;
    *(v28 + 12) = 2082;
    v38 = v25;
    v39 = v82;
    v40 = MEMORY[0x21CECC6D0](v38, MEMORY[0x277D837D0]);
    v42 = sub_2186D1058(v40, v41, v105);

    *(v28 + 14) = v42;
    v26 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    _os_log_impl(&dword_2186C1000, v22, v90, "Sidebar did reorder group %{public}s, order %{public}s", v28, 0x16u);
    v43 = v89;
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v43, -1, -1);
    v11 = v81;
    MEMORY[0x21CECF960](v28, -1, -1);
  }

  else
  {

    v39 = v21;
  }

  *&v105[0] = *(v87 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_blueprintProvider);
  sub_2187486B4(0);
  sub_2186D584C(&unk_280EE5550, sub_2187486B4);
  sub_219BE7B94();
  v44 = v39;
  v45 = [v39 v26[359]];
  sub_219BF5414();

  v46 = v88;
  v47 = v91;
  sub_219BEB354();

  v89 = *(v11 + 48);
  v90 = v11 + 48;
  if (v89(v46, 1, v10) == 1)
  {
    (*(v85 + 8))(v19, v47);
    sub_21910DB2C(v46, sub_218A2D984);
    return;
  }

  v79 = *(v11 + 32);
  v80 = v11 + 32;
  v79(v86, v46, v10);
  sub_219BE6934();
  v105[2] = v101;
  v105[3] = v102;
  v105[4] = v103;
  v48 = v104;
  v106 = v104;
  v105[0] = v99;
  v105[1] = v100;
  v49 = sub_2189C3F04(v105);
  if (v48 <= 3)
  {
    if (v48 > 1)
    {
      v70 = v86;
      if (v48 != 2)
      {
        MEMORY[0x28223BE20](v49);
        *(&v75 - 2) = v70;
        sub_218F8B4E4(sub_219113B50, (&v75 - 4), v83);
        __swift_project_boxed_opaque_existential_1((v87 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_shortcutService), *(v87 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_shortcutService + 24));
        v71 = off_282A3DCD0;
        type metadata accessor for ShortcutService();
        v71();

        (*(v85 + 8))(v19, v91);
LABEL_43:
        (*(v11 + 8))(v70, v10);
        return;
      }

LABEL_37:
      (*(v85 + 8))(v19, v47);
      goto LABEL_43;
    }

LABEL_36:
    v70 = v86;
    goto LABEL_37;
  }

  if (v48 >= 8)
  {
    if (v48 == 8)
    {
      (*(v85 + 8))(v19, v47);
LABEL_42:
      v70 = v86;
      goto LABEL_43;
    }

    goto LABEL_36;
  }

  v50 = [v44 _parent];
  if (!v50)
  {
    (*(v85 + 8))(v19, v47);
    (*(v11 + 8))(v86, v10);
    return;
  }

  v98 = MEMORY[0x277D84F90];
  v76 = v50;
  v51 = [v50 _children];
  sub_2186C6148(0, &qword_280E8DAD8);
  v52 = sub_219BF5924();

  v81 = v11;
  if (v52 >> 62)
  {
    v53 = sub_219BF7214();
    v54 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    if (v53)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

  v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v54 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  if (!v53)
  {
LABEL_41:

    v73 = *(v87 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_subscriptionController);
    v74 = sub_219BF5904();

    [v73 reorderSubscriptionOrderForOrderedIdentifiers_];

    (*(v85 + 8))(v19, v91);
    v11 = v81;
    goto LABEL_42;
  }

LABEL_13:
  if (v53 >= 1)
  {
    v55 = 0;
    v88 = (v52 & 0xC000000000000001);
    v77 = 0;
    v78 = (v81 + 8);
    v82 = v53;
    v83 = v52;
    while (1)
    {
      v56 = v88 ? MEMORY[0x21CECE0F0](v55, v52) : *(v52 + 8 * v55 + 32);
      v57 = v56;
      type metadata accessor for FloatingTabGroup();
      v58 = swift_dynamicCastClass();
      if (v58)
      {
        break;
      }

LABEL_16:
      if (v53 == ++v55)
      {
        goto LABEL_41;
      }
    }

    v59 = v54[359];
    v60 = v58;
    v61 = [v58 v59];
    sub_219BF5414();

    sub_219BEB354();

    if (v89(v7, 1, v10) == 1)
    {

      sub_21910DB2C(v7, sub_218A2D984);
      v54 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
      v52 = v83;
LABEL_31:
      v53 = v82;
      goto LABEL_16;
    }

    v62 = v84;
    v79(v84, v7, v10);
    sub_219BE6934();
    v101 = v94;
    v102 = v95;
    v103 = v96;
    v63 = v97;
    v104 = v97;
    v99 = v92;
    v100 = v93;
    sub_2189C3F04(&v99);
    if (v63 > 3)
    {
      if (v63 < 8)
      {
        v64 = [v60 _displayOrder];
        v65 = sub_219BF5924();

        MEMORY[0x28223BE20](v66);
        *(&v75 - 2) = v62;
        v67 = v77;
        v68 = sub_218F8B4E4(sub_2191135A4, (&v75 - 4), v65);
        v77 = v67;

        v69 = v68;
        v62 = v84;
        sub_2191ED3E8(v69);
LABEL_26:

        v54 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
        v52 = v83;
LABEL_30:
        (*v78)(v62, v10);
        goto LABEL_31;
      }

      if (v63 == 8)
      {
        goto LABEL_26;
      }
    }

    v54 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    v52 = v83;

    goto LABEL_30;
  }

  __break(1u);
}

uint64_t sub_21910F088(uint64_t a1, uint64_t a2)
{
  if (![*(v2 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_featureAvailability) useOfflineMode] || (__swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_offlineProvider), *(v2 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_offlineProvider + 24)), (sub_219BEED44() & 1) == 0))
  {
    sub_218950928();
    sub_219BE6934();
    v13[3] = v10;
    v13[4] = v11;
    v14 = v12;
    v13[0] = v7;
    v13[1] = v8;
    v13[2] = v9;
    sub_2189C3F04(v13);
    if (v12 <= 3u)
    {
      if (v12 >= 3u)
      {
        v6 = &unk_282A25768;
        return sub_21910B594(v6, a2, v2);
      }
    }

    else
    {
      if (v12 - 4 < 4)
      {
        v6 = &unk_282A25790;
        return sub_21910B594(v6, a2, v2);
      }

      if (v12 - 9 >= 2)
      {
        v6 = &unk_282A257B8;
        return sub_21910B594(v6, a2, v2);
      }
    }

    v6 = MEMORY[0x277D84F90];
    return sub_21910B594(v6, a2, v2);
  }

  v4 = MEMORY[0x277D84F90];

  return sub_21910B594(v4, a2, v2);
}

double sub_21910F1F0(void *a1)
{
  v2 = 20.0;
  if ([a1 userInterfaceIdiom] == 5)
  {
    v3 = 20.0;
  }

  else
  {
    v3 = 28.0;
  }

  if ([a1 userInterfaceIdiom] != 5)
  {
    v2 = 22.0;
  }

  v4 = objc_opt_self();
  v5 = [v4 defaultMetrics];
  [v5 scaledValueForValue:a1 compatibleWithTraitCollection:v3];
  v7 = v6;

  v8 = [v4 defaultMetrics];
  [v8 scaledValueForValue:a1 compatibleWithTraitCollection:v2];

  return v7;
}

id sub_21910F2D8(void *a1)
{
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  v45 = v5;
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950928();
  v11 = v10;
  v46 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950ACC();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v1;
  *&v54[0] = *(v1 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_blueprintProvider);
  sub_2187486B4(0);
  sub_2186D584C(&unk_280EE5550, sub_2187486B4);
  sub_219BE7B94();
  v19 = [a1 _identifier];
  sub_219BF5414();

  v20 = v15;
  sub_219BEB244();
  v21 = v46;

  if ((*(v21 + 48))(v9, 1, v11) != 1)
  {
    v41 = v18;
    v22 = v16;
    (*(v21 + 32))(v13, v9, v11);
    v23 = v21;
    v24 = [a1 _identifier];
    sub_219BF5414();

    v25 = v47;
    sub_219BE6A64();

    v26 = v44;
    v27 = v25;
    v28 = v45;
    v29 = v11;
    if ((*(v44 + 48))(v27, 1, v45) == 1)
    {
      (*(v23 + 8))(v13, v11);
      (*(v22 + 8))(v41, v20);
      sub_21910DB2C(v47, sub_218A7BA30);
      return 0;
    }

    v30 = v13;
    v31 = v43;
    (*(v26 + 32))(v43, v47, v28);
    v32 = v30;
    sub_219BE6934();
    v54[3] = v51;
    v54[4] = v52;
    v33 = v53;
    v55 = v53;
    v54[0] = v48;
    v54[1] = v49;
    v54[2] = v50;
    sub_2189C3F04(v54);
    if (v33 <= 3)
    {
      if (v33 >= 3)
      {
        sub_2186DEF40(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_219C146A0;
        *(v39 + 32) = sub_219108BB4(v31);
        sub_2186C6148(0, &qword_27CC16388);
        v35 = sub_219BF5904();

        v36 = [objc_opt_self() configurationWithActions_];
        goto LABEL_8;
      }
    }

    else
    {
      if ((v33 - 4) < 4)
      {
        sub_2186DEF40(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_219C146A0;
        *(v34 + 32) = sub_219109114(v31);
        sub_2186C6148(0, &qword_27CC16388);
        v35 = sub_219BF5904();

        v36 = [objc_opt_self() configurationWithActions_];
LABEL_8:
        v37 = v36;

        (*(v26 + 8))(v31, v28);
        (*(v23 + 8))(v32, v29);
        (*(v22 + 8))(v41, v20);
        return v37;
      }

      if ((v33 - 9) >= 2)
      {
        sub_2186DEF40(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_219C146A0;
        *(v40 + 32) = sub_219108E64(v31);
        sub_2186C6148(0, &qword_27CC16388);
        v35 = sub_219BF5904();

        v36 = [objc_opt_self() configurationWithActions_];
        goto LABEL_8;
      }
    }

    (*(v26 + 8))(v31, v28);
    (*(v23 + 8))(v32, v29);
    (*(v22 + 8))(v41, v20);
    return 0;
  }

  (*(v16 + 8))(v18, v15);
  sub_21910DB2C(v9, sub_218A2D984);
  return 0;
}

id sub_21910FAD4(void *a1)
{
  v3 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v3 - 8);
  v57 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_219BE89F4();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v56 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v6 - 8);
  v59 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  v60 = v8;
  v62 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v61 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950928();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950ACC();
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v1;
  aBlock = *&v1[OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_blueprintProvider];
  sub_2187486B4(0);
  sub_2186D584C(&unk_280EE5550, sub_2187486B4);
  sub_219BE7B94();
  v63 = a1;
  v23 = [a1 _identifier];
  sub_219BF5414();

  v24 = v19;
  v25 = v14;
  v26 = v15;
  sub_219BEB244();

  if ((*(v15 + 48))(v12, 1, v25) == 1)
  {
    (*(v20 + 8))(v22, v24);
    sub_21910DB2C(v12, sub_218A2D984);
    return 0;
  }

  v53 = v20;
  (*(v15 + 32))(v17, v12, v25);
  v27 = [v63 _identifier];
  sub_219BF5414();

  v28 = v59;
  sub_219BE6A64();

  v29 = v62;
  v30 = v60;
  if ((*(v62 + 48))(v28, 1, v60) == 1)
  {
    (*(v26 + 8))(v17, v25);
    (*(v53 + 8))(v22, v24);
    sub_21910DB2C(v28, sub_218A7BA30);
    return 0;
  }

  v52 = v22;
  v49 = v26;
  v50 = v25;
  (*(v29 + 32))(v61, v28, v30);
  (*(v54 + 104))(v56, *MEMORY[0x277D6E0D8], v55);
  v31 = v58;
  v32 = *&v58[OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_tracker];
  v67 = sub_219BDD274();
  v68 = sub_2186D584C(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  aBlock = v32;
  v70 = 0u;
  v71 = 0u;
  v72 = 1;
  sub_219BE8314();
  swift_allocObject();

  v33 = v63;
  sub_219BE82F4();
  v34 = v57;
  sub_219BE5FC4();
  v35 = sub_218F38D50();
  sub_21910DB2C(v34, type metadata accessor for FollowingModel);
  v51 = v24;
  if (v35)
  {

    v36 = sub_219BE5994();
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  v37 = v52;
  v38 = sub_2191093C8(v31, v61);
  v39 = v53;
  if (v36 >> 62)
  {
    v40 = sub_219BF7214();
  }

  else
  {
    v40 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(v40 | v38))
  {

    (*(v62 + 8))(v61, v30);
    (*(v49 + 8))(v17, v50);
    (*(v39 + 8))(v37, v51);
    return 0;
  }

  result = [v33 _identifier];
  v63 = result;
  if (result)
  {
    v42 = swift_allocObject();
    *(v42 + 16) = v38;
    v43 = swift_allocObject();
    *(v43 + 16) = v36;
    v58 = objc_opt_self();
    v68 = sub_218FBA998;
    v69 = v42;
    aBlock = MEMORY[0x277D85DD0];
    v65 = 1107296256;
    v66 = sub_21910D9E8;
    v67 = &block_descriptor_83;
    v44 = _Block_copy(&aBlock);
    v59 = v38;

    v68 = sub_2191135CC;
    v69 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v65 = 1107296256;
    v66 = sub_21910DA38;
    v67 = &block_descriptor_86;
    v45 = _Block_copy(&aBlock);

    v46 = v63;
    v47 = [v58 configurationWithIdentifier:v63 previewProvider:v44 actionProvider:v45];

    _Block_release(v45);
    _Block_release(v44);

    (*(v62 + 8))(v61, v60);
    (*(v49 + 8))(v17, v50);
    (*(v53 + 8))(v52, v51);
    return v47;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2191104B8(void *a1)
{
  v3 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v83[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_219BF2634();
  v87 = *(v6 - 8);
  v88 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v86 = &v83[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v85 = &v83[-v10];
  MEMORY[0x28223BE20](v9);
  v89 = &v83[-v11];
  sub_218950ACC();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v83[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v83[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218950B84();
  v92 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v90 = &v83[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23 && (v24 = v23, sub_2194EDD04(v23)))
  {
    v25 = qword_280EE6048;
    v26 = a1;
    if (v25 != -1)
    {
      swift_once();
    }

    v27 = sub_219BE5434();
    __swift_project_value_buffer(v27, qword_280F62748);
    v28 = v26;
    v29 = sub_219BE5414();
    v30 = sub_219BF6214();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v93 = v32;
      *v31 = 136446210;
      v33 = [v24 identifier];
      v34 = sub_219BF5414();
      v36 = v35;

      v37 = sub_2186D1058(v34, v36, &v93);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_2186C1000, v29, v30, "Attemping to select top level tab with identifier: (%{public}s). Selection is allowed", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x21CECF960](v32, -1, -1);
      MEMORY[0x21CECF960](v31, -1, -1);
    }

    else
    {
    }

    v52 = 1;
  }

  else
  {
    v93 = *(v1 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_blueprintProvider);
    sub_2187486B4(0);
    sub_2186D584C(&unk_280EE5550, sub_2187486B4);
    sub_219BE7B94();
    v38 = [a1 identifier];
    sub_219BF5414();
    v91 = v21;

    sub_219BEB1C4();
    v39 = v91;

    (*(v14 + 8))(v16, v13);
    v40 = v92;
    if ((*(v39 + 48))(v19, 1, v92) == 1)
    {
      sub_21910DB2C(v19, sub_218A7BA30);
      if (qword_280EE6048 != -1)
      {
        swift_once();
      }

      v41 = sub_219BE5434();
      __swift_project_value_buffer(v41, qword_280F62748);
      v42 = a1;
      v43 = sub_219BE5414();
      v44 = sub_219BF6214();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v93 = v46;
        *v45 = 136446210;
        v47 = [v42 identifier];
        v48 = sub_219BF5414();
        v50 = v49;

        v51 = sub_2186D1058(v48, v50, &v93);

        *(v45 + 4) = v51;
        _os_log_impl(&dword_2186C1000, v43, v44, "Attemping to select tab with identifier (%{public}s). Unknown item. Selection is prevented.", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v46);
        MEMORY[0x21CECF960](v46, -1, -1);
        MEMORY[0x21CECF960](v45, -1, -1);
      }

      v52 = 0;
    }

    else
    {
      (*(v39 + 32))(v90, v19, v40);
      sub_219BE5FC4();
      v53 = v89;
      sub_219103324(v5, v89);
      sub_21910DB2C(v5, type metadata accessor for FollowingModel);
      if (qword_280EE6048 != -1)
      {
        swift_once();
      }

      v54 = sub_219BE5434();
      __swift_project_value_buffer(v54, qword_280F62748);
      v55 = v87;
      v56 = v88;
      v57 = *(v87 + 16);
      v58 = v85;
      v57(v85, v53, v88);
      v59 = v86;
      v57(v86, v53, v56);
      v60 = a1;
      v61 = sub_219BE5414();
      v62 = sub_219BF6214();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v93 = v64;
        *v63 = 136446722;
        v65 = [v60 identifier];
        v66 = sub_219BF5414();
        v84 = v62;
        v67 = v66;
        v69 = v68;

        v70 = sub_2186D1058(v67, v69, &v93);

        *(v63 + 4) = v70;
        *(v63 + 12) = 2082;
        v71 = sub_219BF2614();
        if (v71)
        {
          v72 = 0x6465776F6C6C61;
        }

        else
        {
          v72 = 0x65746E6576657270;
        }

        if (v71)
        {
          v73 = 0xE700000000000000;
        }

        else
        {
          v73 = 0xE900000000000064;
        }

        v74 = *(v55 + 8);
        v74(v58, v56);
        v75 = sub_2186D1058(v72, v73, &v93);

        *(v63 + 14) = v75;
        *(v63 + 22) = 2082;
        v76 = sub_219BF2604();
        v78 = v77;
        v74(v59, v56);
        v79 = sub_2186D1058(v76, v78, &v93);

        *(v63 + 24) = v79;
        _os_log_impl(&dword_2186C1000, v61, v84, "Attemping to select tab with identifier (%{public}s). Selection is %{public}s. Content Availability: %{public}s", v63, 0x20u);
        swift_arrayDestroy();
        v80 = v64;
        v40 = v92;
        MEMORY[0x21CECF960](v80, -1, -1);
        v81 = v63;
        v53 = v89;
        MEMORY[0x21CECF960](v81, -1, -1);
      }

      else
      {

        v74 = *(v55 + 8);
        v74(v59, v56);
        v74(v58, v56);
      }

      v52 = sub_219BF2614();
      v74(v53, v56);
      (*(v91 + 8))(v90, v40);
    }
  }

  return v52 & 1;
}

uint64_t sub_219110E84(void *a1)
{
  sub_218747BDC(0);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDC104();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v51 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950ACC();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(v1 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_blueprintProvider);
  v59 = v52;
  sub_2187486B4(0);
  v21 = v20;
  v57 = sub_2186D584C(&unk_280EE5550, sub_2187486B4);
  v58 = v21;
  sub_219BE7B94();
  v53 = a1;
  v22 = [a1 identifier];
  sub_219BF5414();

  v23 = v16;
  v24 = v17;
  sub_219BEB1C4();

  v25 = *(v9 + 8);
  v25(v11, v8);
  if ((*(v17 + 48))(v14, 1, v23) == 1)
  {
    sub_21910DB2C(v14, sub_218A7BA30);
    if (qword_280EE6048 != -1)
    {
      swift_once();
    }

    v26 = sub_219BE5434();
    __swift_project_value_buffer(v26, qword_280F62748);
    v27 = v53;
    v28 = sub_219BE5414();
    v29 = sub_219BF6214();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v59 = v31;
      *v30 = 136446210;
      v32 = [v27 identifier];
      v33 = sub_219BF5414();
      v35 = v34;

      v36 = sub_2186D1058(v33, v35, &v59);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_2186C1000, v28, v29, "Attemping to drag tab with identifier (%{public}s). Unknown item. drag is prevented.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x21CECF960](v31, -1, -1);
      MEMORY[0x21CECF960](v30, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  (*(v17 + 32))(v19, v14, v23);
  v37 = v52;
  v59 = v52;
  sub_219BE7B94();
  v38 = v54;
  sub_219BEB2F4();
  v25(v11, v8);
  v40 = v55;
  v39 = v56;
  if ((*(v55 + 48))(v38, 1, v56) == 1)
  {
    v41 = v24;
    v42 = v23;
    sub_21910DB2C(v38, sub_218747BDC);
    if (qword_280EE6048 != -1)
    {
      swift_once();
    }

    v43 = sub_219BE5434();
    __swift_project_value_buffer(v43, qword_280F62748);
    v44 = sub_219BE5414();
    v45 = sub_219BF6214();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2186C1000, v44, v45, "failed to get index path of tab item", v46, 2u);
      MEMORY[0x21CECF960](v46, -1, -1);
    }

    (*(v41 + 8))(v19, v42);
    return MEMORY[0x277D84F90];
  }

  v48 = v51;
  (*(v40 + 32))(v51, v38, v39);
  v59 = v37;
  v49 = sub_219BEB6B4();
  (*(v40 + 8))(v48, v39);
  (*(v24 + 8))(v19, v23);
  return v49;
}

uint64_t sub_219111524()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1((*(result + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 88), *(*(result + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 112));
    sub_219BDD154();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2191115B4(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  sub_2191134B0(0);
  MEMORY[0x28223BE20](v3 - 8);
  v113 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2D984(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v98 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v103 = &v96 - v8;
  sub_218950928();
  v110 = v9;
  v111 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v101 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v114 = &v96 - v12;
  sub_2191134E4(0, &unk_280EE5130, MEMORY[0x277D6DA48]);
  v108 = v13;
  v109 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v99 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v104 = &v96 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v96 - v18;
  sub_218A7BA30(0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v102 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v96 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v96 - v26;
  sub_218950B84();
  v29 = v28;
  v116 = *(v28 - 1);
  v30 = MEMORY[0x28223BE20](v28);
  v100 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v112 = &v96 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v106 = &v96 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v96 - v36;
  sub_218950ACC();
  v39 = v38;
  v117 = *(v38 - 8);
  v40 = MEMORY[0x28223BE20](v38);
  v115 = &v96 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v105 = &v96 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = &v96 - v44;
  *&v125 = *(v1 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_blueprintProvider);
  sub_2187486B4(0);
  sub_2186D584C(&unk_280EE5550, sub_2187486B4);
  sub_219BE7B94();
  v46 = sub_219BE9844();
  v107 = v2;
  v47 = *(*(v2 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_mainTabManager) + 32);

  if (v46 == v47)
  {
    v97 = v19;
    sub_219BEB1C4();
    v48 = v116;
    if ((*(v116 + 48))(v27, 1, v29) != 1)
    {
      (*(v48 + 32))(v37, v27, v29);
      v75 = *(v117 + 16);
      v114 = v45;
      v75(v105, v45, v39);
      (*(v48 + 16))(v106, v37, v29);
      v115 = type metadata accessor for FollowingModel();
      sub_2187490E4();
      sub_2186D584C(&qword_280EDC630, type metadata accessor for FollowingModel);

      v76 = v97;
      sub_219BE7584();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        (*(v109 + 8))(v76, v108);
        (*(v48 + 8))(v37, v29);
        return (*(v117 + 8))(v114, v39);
      }

      __swift_project_boxed_opaque_existential_1((*(Strong + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 88), *(*(Strong + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 112));
      sub_218FF1B14(v76, 0);
      (*(v109 + 8))(v76, v108);
      (*(v48 + 8))(v37, v29);
      (*(v117 + 8))(v114, v39);
      return swift_unknownObjectRelease();
    }

    sub_21910DB2C(v27, sub_218A7BA30);
  }

  v49 = sub_219BE9844();
  v50 = [v49 _identifier];

  sub_219BF5414();
  sub_219BEB1C4();

  v51 = v116;
  v52 = *(v116 + 48);
  v53 = v29;
  if ((v52)(v25, 1, v29) != 1)
  {
    v97 = v52;
    v54 = v112;
    (*(v51 + 32))(v112, v25, v29);
    sub_219BE5F84();
    v55 = v29;
    v56 = v103;
    sub_219BEB244();
    v57 = v56;

    v58 = v111;
    v59 = v110;
    if ((*(v111 + 48))(v57, 1, v110) == 1)
    {
      v114 = v45;
      (*(v51 + 8))(v54, v55);
      sub_21910DB2C(v57, sub_218A2D984);
      v53 = v55;
      v52 = v97;
      goto LABEL_8;
    }

    (*(v58 + 32))(v114, v57, v59);
    (*(v117 + 16))(v105, v45, v39);
    v65 = *(v51 + 16);
    v113 = v55;
    v65(v106, v54, v55);
    v115 = type metadata accessor for FollowingModel();
    sub_2187490E4();
    sub_2186D584C(&qword_280EDC630, type metadata accessor for FollowingModel);

    sub_219BE7584();
    sub_219BE6934();
    v130 = v124;
    v128 = v122;
    v129 = v123;
    v125 = v119;
    v126 = v120;
    v127 = v121;
    if (v124 == 1)
    {
      v66 = swift_unknownObjectWeakLoadStrong();
      if (v66)
      {
        __swift_project_boxed_opaque_existential_1((*(v66 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 88), *(*(v66 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 112));
        v67 = v104;
        sub_218FF1B14(v104, 0);
        sub_2189C3F04(&v125);
LABEL_22:
        (*(v109 + 8))(v67, v108);
        (*(v58 + 8))(v114, v59);
        (*(v51 + 8))(v112, v113);
        (*(v117 + 8))(v45, v39);
        return swift_unknownObjectRelease();
      }

      sub_2189C3F04(&v125);
    }

    else
    {
      sub_2189C3F04(&v125);
      v78 = swift_unknownObjectWeakLoadStrong();
      if (v78)
      {
        __swift_project_boxed_opaque_existential_1((*(v78 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 88), *(*(v78 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 112));
        v67 = v104;
        sub_218FF1B14(v104, 1);
        goto LABEL_22;
      }
    }

    (*(v109 + 8))(v104, v108);
    (*(v58 + 8))(v114, v59);
    (*(v51 + 8))(v112, v113);
    return (*(v117 + 8))(v45, v39);
  }

  v114 = v45;
  sub_21910DB2C(v25, sub_218A7BA30);
LABEL_8:
  sub_219BE9854();
  v60 = v117;
  v61 = v115;
  if (!*(&v126 + 1))
  {
    (*(v117 + 8))(v114, v39);
    sub_218806FD0(&v125);
    v62 = v113;
    (*(v60 + 56))(v113, 1, 1, v39);
    return sub_21910DB2C(v62, sub_2191134B0);
  }

  v62 = v113;
  v63 = swift_dynamicCast();
  (*(v60 + 56))(v62, v63 ^ 1u, 1, v39);
  if ((*(v60 + 48))(v62, 1, v39) == 1)
  {
    (*(v60 + 8))(v114, v39);
    return sub_21910DB2C(v62, sub_2191134B0);
  }

  (*(v60 + 32))(v61, v62, v39);
  v68 = sub_219BE9844();
  v69 = [v68 _identifier];
  v113 = v53;
  v70 = v69;

  sub_219BF5414();
  v71 = v113;
  v72 = v52;
  v73 = v102;
  sub_219BEB1C4();

  if ((v72)(v73, 1, v71) == 1)
  {
    v74 = *(v60 + 8);
    v74(v115, v39);
    v74(v114, v39);
    return sub_21910DB2C(v73, sub_218A7BA30);
  }

  v79 = v116;
  v80 = v100;
  (*(v116 + 32))(v100, v73, v71);
  sub_219BE5F84();
  v81 = v71;
  v82 = v98;
  sub_219BEB244();
  v83 = v82;

  v84 = v111;
  v85 = v82;
  v86 = v110;
  v87 = (*(v111 + 48))(v85, 1, v110);
  v88 = v114;
  if (v87 == 1)
  {
    (*(v79 + 8))(v80, v81);
    v89 = *(v60 + 8);
    v89(v115, v39);
    v89(v88, v39);
    return sub_21910DB2C(v83, sub_218A2D984);
  }

  (*(v84 + 32))(v101, v83, v86);
  (*(v60 + 16))(v105, v115, v39);
  (*(v79 + 16))(v106, v80, v81);
  type metadata accessor for FollowingModel();
  sub_2187490E4();
  sub_2186D584C(&qword_280EDC630, type metadata accessor for FollowingModel);

  sub_219BE7584();
  sub_219BE6934();
  v130 = v124;
  v128 = v122;
  v129 = v123;
  v125 = v119;
  v126 = v120;
  v127 = v121;
  if (v124 == 1)
  {
    v90 = swift_unknownObjectWeakLoadStrong();
    v91 = v114;
    if (v90)
    {
      __swift_project_boxed_opaque_existential_1((*(v90 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 88), *(*(v90 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 112));
      v92 = v99;
      sub_218FF1B14(v99, 0);
      sub_2189C3F04(&v125);
LABEL_35:
      (*(v109 + 8))(v92, v108);
      (*(v111 + 8))(v101, v110);
      (*(v79 + 8))(v100, v113);
      v94 = *(v60 + 8);
      v94(v115, v39);
      v94(v91, v39);
      return swift_unknownObjectRelease();
    }

    sub_2189C3F04(&v125);
  }

  else
  {
    sub_2189C3F04(&v125);
    v93 = swift_unknownObjectWeakLoadStrong();
    v91 = v114;
    if (v93)
    {
      __swift_project_boxed_opaque_existential_1((*(v93 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 88), *(*(v93 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 112));
      v92 = v99;
      sub_218FF1B14(v99, 1);
      goto LABEL_35;
    }
  }

  (*(v109 + 8))(v99, v108);
  (*(v111 + 8))(v101, v110);
  (*(v79 + 8))(v100, v113);
  v95 = *(v60 + 8);
  v95(v115, v39);
  return (v95)(v91, v39);
}

id sub_21911295C()
{
  sub_218950928();
  sub_219BE6934();
  v35[2] = v32[3];
  v35[3] = v32[4];
  v35[4] = v32[5];
  v36 = v33;
  v35[0] = v32[1];
  v35[1] = v32[2];
  sub_2189C3F04(v35);
  v0 = 0;
  if (v33 <= 5u)
  {
    if (v33 <= 2u)
    {
      if (v33 >= 2u)
      {
        sub_219BE6944();
        sub_2197EBBA8(v34);

        sub_218967CDC(v34);
        v1 = type metadata accessor for FloatingTabGroup();
        v2 = objc_allocWithZone(v1);
        v2[OBJC_IVAR____TtC7NewsUI216FloatingTabGroup_allowsReorderingWhileOnline] = 0;
        v3 = sub_219BF53D4();

        v4 = sub_219BF53D4();

        sub_2186C6148(0, &qword_280E8DAD8);
        v5 = sub_219BF5904();
        v6 = objc_msgSendSuper2(&v25, sel_initWithIdentifier_title_image_children_, v3, v4, 0, v5, v2, v1);
LABEL_15:
        v17 = v6;
        v11 = 0;
LABEL_20:

        v0 = v17;
        [v0 _setTabBarPlacement_];
        [v0 _setAllowsReordering_];

        return v0;
      }

      return v0;
    }

    if (v33 == 3)
    {
      sub_219BE6944();
      sub_2197EC19C(v34);

      sub_218967CDC(v34);
      v18 = type metadata accessor for FloatingTabGroup();
      v19 = objc_allocWithZone(v18);
      v11 = 1;
      v19[OBJC_IVAR____TtC7NewsUI216FloatingTabGroup_allowsReorderingWhileOnline] = 1;
      v3 = sub_219BF53D4();

      v4 = sub_219BF53D4();

      sub_2186C6148(0, &qword_280E8DAD8);
      v5 = sub_219BF5904();
      v26.receiver = v19;
      v26.super_class = v18;
      v12 = objc_msgSendSuper2(&v26, sel_initWithIdentifier_title_image_children_, v3, v4, 0, v5);
    }

    else
    {
      sub_219BE6944();
      if (v33 == 4)
      {
        sub_2197EC3FC(v34);

        sub_218967CDC(v34);
        v9 = type metadata accessor for FloatingTabGroup();
        v10 = objc_allocWithZone(v9);
        v11 = 1;
        v10[OBJC_IVAR____TtC7NewsUI216FloatingTabGroup_allowsReorderingWhileOnline] = 1;
        v3 = sub_219BF53D4();

        v4 = sub_219BF53D4();

        sub_2186C6148(0, &qword_280E8DAD8);
        v5 = sub_219BF5904();
        v27.receiver = v10;
        v27.super_class = v9;
        v12 = objc_msgSendSuper2(&v27, sel_initWithIdentifier_title_image_children_, v3, v4, 0, v5);
      }

      else
      {
        sub_2197EC528(v34);

        sub_218967CDC(v34);
        v22 = type metadata accessor for FloatingTabGroup();
        v23 = objc_allocWithZone(v22);
        v11 = 1;
        v23[OBJC_IVAR____TtC7NewsUI216FloatingTabGroup_allowsReorderingWhileOnline] = 1;
        v3 = sub_219BF53D4();

        v4 = sub_219BF53D4();

        sub_2186C6148(0, &qword_280E8DAD8);
        v5 = sub_219BF5904();
        v28.receiver = v23;
        v28.super_class = v22;
        v12 = objc_msgSendSuper2(&v28, sel_initWithIdentifier_title_image_children_, v3, v4, 0, v5);
      }
    }

LABEL_19:
    v17 = v12;
    goto LABEL_20;
  }

  if (v33 <= 7u)
  {
    sub_219BE6944();
    if (v33 == 6)
    {
      sub_2197EC2D0(v34);

      sub_218967CDC(v34);
      v13 = type metadata accessor for FloatingTabGroup();
      v14 = objc_allocWithZone(v13);
      v11 = 1;
      v14[OBJC_IVAR____TtC7NewsUI216FloatingTabGroup_allowsReorderingWhileOnline] = 1;
      v3 = sub_219BF53D4();

      v4 = sub_219BF53D4();

      sub_2186C6148(0, &qword_280E8DAD8);
      v5 = sub_219BF5904();
      v29.receiver = v14;
      v29.super_class = v13;
      v12 = objc_msgSendSuper2(&v29, sel_initWithIdentifier_title_image_children_, v3, v4, 0, v5);
    }

    else
    {
      sub_2197EC65C(v34);

      sub_218967CDC(v34);
      v20 = type metadata accessor for FloatingTabGroup();
      v21 = objc_allocWithZone(v20);
      v11 = 1;
      v21[OBJC_IVAR____TtC7NewsUI216FloatingTabGroup_allowsReorderingWhileOnline] = 1;
      v3 = sub_219BF53D4();

      v4 = sub_219BF53D4();

      sub_2186C6148(0, &qword_280E8DAD8);
      v5 = sub_219BF5904();
      v30.receiver = v21;
      v30.super_class = v20;
      v12 = objc_msgSendSuper2(&v30, sel_initWithIdentifier_title_image_children_, v3, v4, 0, v5);
    }

    goto LABEL_19;
  }

  if (v33 == 8)
  {
    sub_219BE6944();
    sub_2197ECBE4(v34);

    sub_218967CDC(v34);
    v15 = type metadata accessor for FloatingTabGroup();
    v16 = objc_allocWithZone(v15);
    v16[OBJC_IVAR____TtC7NewsUI216FloatingTabGroup_allowsReorderingWhileOnline] = 0;
    v3 = sub_219BF53D4();

    v4 = sub_219BF53D4();

    sub_2186C6148(0, &qword_280E8DAD8);
    v5 = sub_219BF5904();
    v31.receiver = v16;
    v31.super_class = v15;
    v6 = objc_msgSendSuper2(&v31, sel_initWithIdentifier_title_image_children_, v3, v4, 0, v5, v25.receiver, v25.super_class);
    goto LABEL_15;
  }

  if (v33 == 9)
  {
    sub_219BE6944();
    sub_2197EC7A0(v34);

    sub_218967CDC(v34);
    v7 = type metadata accessor for FloatingTabGroup();
    v8 = objc_allocWithZone(v7);
    v8[OBJC_IVAR____TtC7NewsUI216FloatingTabGroup_allowsReorderingWhileOnline] = 0;
    v3 = sub_219BF53D4();

    v4 = sub_219BF53D4();

    sub_2186C6148(0, &qword_280E8DAD8);
    v5 = sub_219BF5904();
    v32[0].receiver = v8;
    v32[0].super_class = v7;
    v6 = [(objc_super *)v32 initWithIdentifier:v3 title:v4 image:0 children:v5, v25.receiver, v25.super_class];
    goto LABEL_15;
  }

  return v0;
}

void *sub_2191130BC(void *a1)
{
  v2 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  sub_219BE5FC4();
  sub_218F382AC(v17);
  sub_21910DB2C(v4, type metadata accessor for FollowingModel);
  v5 = v18;
  if (!v18)
  {
    sub_21910DB2C(v17, sub_219113244);
LABEL_8:
    [a1 _setBadgeValue_];
    return a1;
  }

  v6 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v7 = (*(v6 + 64))(v5, v6);
  v10 = sub_2190D8F20(v7, v9, v8 & 0x1FF);
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_1(v17);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    goto LABEL_8;
  }

  v14 = sub_219BF53D4();

  [a1 _setBadgeValue_];

  return a1;
}

unint64_t sub_219113278()
{
  result = qword_280ED75D0;
  if (!qword_280ED75D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280ED75D0);
  }

  return result;
}

uint64_t objectdestroy_8Tm_1()
{
  sub_218950B84();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2191133C0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  sub_218950B84();
  v5 = *(v2 + 16);
  v6 = v2 + ((*(*(v4 - 8) + 80) + 24) & ~*(*(v4 - 8) + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_219113448(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2191134E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel();
    v8[2] = sub_2187490E4();
    v8[3] = sub_2186D584C(&qword_280EDC630, type metadata accessor for FollowingModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_219113604(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for FollowingModel();
    v7 = sub_2186D584C(&qword_280EDC630, type metadata accessor for FollowingModel);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2191136D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_218950B84();
  v11 = *(v5 + 16);
  v12 = v5 + ((*(*(v10 - 8) + 80) + 24) & ~*(*(v10 - 8) + 80));

  return a5(a1, a2, a3, a4, v11, v12);
}

uint64_t objectdestroy_104Tm()
{
  sub_218950B84();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_219113808(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_218950B84();
  v5 = v2 + ((*(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80));

  return a2(a1, v5);
}

uint64_t sub_2191138D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21911396C()
{
  result = qword_280E902C8;
  if (!qword_280E902C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E902C8);
  }

  return result;
}

void sub_2191139C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t objectdestroy_133Tm()
{

  return swift_deallocObject();
}

uint64_t sub_219113BA8(uint64_t a1)
{
  sub_219113DF8();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_2189DADA8();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 88), *(v1 + 112));
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v9 + 8))(v11, v8);
  v12 = v16[1];
  (*(v5 + 16))(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;

  sub_219BDD154();
}

void sub_219113DF8()
{
  if (!qword_27CC16398)
  {
    sub_2189520BC();
    sub_218952110();
    v0 = sub_219BE75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC16398);
    }
  }
}

uint64_t sub_219113E74(uint64_t a1)
{
  sub_219113DF8();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2193967C0(a1, v1 + v5, v6);
}

void *sub_219113F5C()
{
  v1 = OBJC_IVAR___TSAppDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_219114008(uint64_t a1)
{
  v3 = OBJC_IVAR___TSAppDelegate_window;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_219114060(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___TSAppDelegate_window;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_219114120()
{
  v1 = v0 + OBJC_IVAR___TSAppDelegate____lazy_storage___menuManager;
  v2 = *(v0 + OBJC_IVAR___TSAppDelegate____lazy_storage___menuManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___TSAppDelegate____lazy_storage___menuManager);
LABEL_5:
    v6 = v2;
    return v3;
  }

  sub_2186C6E00(v9);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_2186C709C(0, &qword_280EE59F0);
  result = sub_219BE1DF4();
  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
    v5 = *v1;
    *v1 = v7;
    *(v1 + 8) = v8;
    v3 = v7;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_219114200()
{
  v1 = (v0 + OBJC_IVAR___TSAppDelegate____lazy_storage___commandCenter);
  if (*(v0 + OBJC_IVAR___TSAppDelegate____lazy_storage___commandCenter))
  {
    v2 = *(v0 + OBJC_IVAR___TSAppDelegate____lazy_storage___commandCenter);
LABEL_5:
    swift_unknownObjectRetain();
    return v2;
  }

  sub_2186C6E00(v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  v2 = v4;
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
    *v1 = v4;
    v1[1] = v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_2191142D8()
{
  v1 = OBJC_IVAR___TSAppDelegate____lazy_storage___tracker;
  if (*(v0 + OBJC_IVAR___TSAppDelegate____lazy_storage___tracker))
  {
    v2 = *(v0 + OBJC_IVAR___TSAppDelegate____lazy_storage___tracker);
LABEL_5:

    return v2;
  }

  sub_2186C6E00(v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    __swift_destroy_boxed_opaque_existential_1(v4);
    *(v0 + v1) = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id AppDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AppDelegate.createBridgedAppResolver()()
{
  sub_2186C6E00(v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v0 = sub_219BE1DA4();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}

uint64_t AppDelegate.createSceneContainer()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_219BE6224();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C72B8();
  (*(v3 + 104))(v5, *MEMORY[0x277D6D550], v2);
  v6 = sub_219BE6B24();

  (*(v3 + 8))(v5, v2);
  result = sub_219BE3354();
  a1[3] = result;
  *a1 = v6;
  return result;
}

uint64_t AppDelegate.createCarPlaySceneContainer()@<X0>(uint64_t *a1@<X8>)
{
  sub_2186C72B8();
  v2 = sub_219BE6B04();

  result = sub_219BE3354();
  a1[3] = result;
  *a1 = v2;
  return result;
}

uint64_t sub_219114720()
{
  v0 = sub_219BE2C14();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D6CE30], v0);
  sub_219BE27A4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2191148D4(void (*a1)(uint64_t, uint64_t))
{
  sub_2186C6E00(v7);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_2186C709C(0, &unk_280EE7300);
  result = sub_219BE1E34();
  if (v6)
  {
    sub_2186CB1F0(&v5, v8);
    __swift_destroy_boxed_opaque_existential_1(v7);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    a1(v3, v4);
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219114A08(void *a1)
{
  if (a1 && [a1 delegate])
  {
    type metadata accessor for SceneDelegate();
    if (swift_dynamicCastClass())
    {
      sub_2187B13AC(v3);
      __swift_project_boxed_opaque_existential_1(v3, v4);
      sub_21874E6B8(0, &unk_280EE7420, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC78]);
      result = sub_219BE1E24();
      if (result)
      {
        v2 = result;
        swift_unknownObjectRelease();
LABEL_9:
        __swift_destroy_boxed_opaque_existential_1(v3);
        return v2;
      }

      goto LABEL_11;
    }

    swift_unknownObjectRelease();
  }

  sub_2186C6E00(v3);
  __swift_project_boxed_opaque_existential_1(v3, v4);
  sub_21874E6B8(0, &unk_280EE7420, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC78]);
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    goto LABEL_9;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_219114CFC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_219BE2C84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D6CE80])
  {
    return a2(1);
  }

  if (v8 == *MEMORY[0x277D6CE88])
  {
    return a2(0);
  }

  if (v8 == *MEMORY[0x277D6CE78])
  {
    return a2(2);
  }

  a2(1);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219114E8C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  sub_2186C7030(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_2186C709C(0, &qword_280E8B580);
  sub_219BF7484();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();

  return a2(2);
}

void AppDelegate.application(_:handle:completionHandler:)(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = a2;
    sub_2186C6E00(v14);
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    sub_2186C709C(0, qword_280EC8AA0);
    sub_219BE1E34();
    if (v13)
    {
      sub_2186CB1F0(&v12, v15);
      __swift_destroy_boxed_opaque_existential_1(v14);
      __swift_project_boxed_opaque_existential_1(v15, v15[3]);
      sub_218EE90C0(v8, a3, a4);

      __swift_destroy_boxed_opaque_existential_1(v15);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_219BF61F4();
    sub_2186C6148(0, &qword_280E8D790);
    v10 = sub_219BF6F44();
    sub_219BE5314();

    v11 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:6 userActivity:0];
    a3();
  }
}

uint64_t sub_219115358(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_219BE2874();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D6CD50])
  {
    v9 = 1;
    return a2(v9);
  }

  if (v8 == *MEMORY[0x277D6CD58])
  {
    v9 = 0;
    return a2(v9);
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_2191154E4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_219BF61F4();
  sub_2186C7030(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_2186C709C(0, &qword_280E8B580);
  sub_219BF7484();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_2186C6148(0, &qword_280E8D790);
  v4 = sub_219BF6F44();
  sub_219BE5314();

  return a2(2);
}

id AppDelegate.forwardingTarget(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_219114120();
  if (a1)
  {
    v6 = result;
    v7 = [result canPerformAction:a1 withSender:v2];

    if (v7)
    {
      v8 = *&v2[OBJC_IVAR___TSAppDelegate____lazy_storage___menuManager];
      *(a2 + 24) = swift_getObjectType();
      *a2 = v8;

      return v8;
    }

    else
    {
      v11.receiver = v2;
      v11.super_class = type metadata accessor for AppDelegate();
      result = objc_msgSendSuper2(&v11, sel_forwardingTargetForSelector_, a1);
      if (result)
      {
        sub_219BF70B4();
        result = swift_unknownObjectRelease();
      }

      else
      {
        v9 = 0u;
        v10 = 0u;
      }

      *a2 = v9;
      *(a2 + 16) = v10;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void AppDelegate.buildMenu(with:)(uint64_t a1)
{
  v2 = sub_219114120();
  [v2 buildMenuWithBuilder_];
}

Swift::Void __swiftcall AppDelegate.validate(_:)(UICommand a1)
{
  v1 = sub_219114120();
  swift_getObjectType();
  sub_219114200();
  v2 = sub_2191142D8();
  v3[3] = sub_219BDD274();
  v3[4] = sub_2187A5670(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  v3[0] = v2;
  sub_219BE6734();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t AppDelegate.canPerformAction(_:withSender:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_219114120();
  sub_218FECC68(a2, v23);
  v6 = v24;
  if (v24)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_219BF78D4();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v5 canPerformAction:a1 withSender:v11];

  swift_unknownObjectRelease();
  if (v12)
  {
    return 1;
  }

  sub_218FECC68(a2, v23);
  v14 = v24;
  if (v24)
  {
    v15 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v16 = *(v14 - 8);
    MEMORY[0x28223BE20](v15);
    v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v18);
    v19 = sub_219BF78D4();
    (*(v16 + 8))(v18, v14);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    v19 = 0;
  }

  v20 = type metadata accessor for AppDelegate();
  v22.receiver = v2;
  v22.super_class = v20;
  v21 = objc_msgSendSuper2(&v22, sel_canPerformAction_withSender_, a1, v19);
  swift_unknownObjectRelease();
  return v21;
}

void sub_219115F30(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v33 = a2;
  sub_21874E6B8(0, &qword_280EE59D8, MEMORY[0x277D6D700], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = v30 - v3;
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 connectedScenes];

  v6 = sub_2186C6148(0, &qword_280E8DA50);
  sub_218F86FB4();
  v7 = sub_219BF5D44();

  v30[2] = v7;
  v34 = v6;
  if ((v7 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_219BF71C4();
    sub_219BF5D94();
    v8 = v38;
    v9 = v39;
    v10 = v40;
    v11 = v41;
    v12 = v42;
  }

  else
  {
    v13 = -1 << *(v7 + 32);
    v9 = v7 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v7 + 56);

    v11 = 0;
    v8 = v7;
  }

  v30[1] = v10;
  v16 = (v10 + 64) >> 6;
  v35 = v8;
  while (v8 < 0)
  {
    v22 = sub_219BF7244();
    if (!v22)
    {
LABEL_27:
      v17 = 0;
LABEL_28:
      sub_21892DE98();

      sub_219114A08(v17);
      v28 = sub_219BE6914();
      v29 = v31;
      (*(*(v28 - 8) + 56))(v31, 1, 1, v28);
      sub_219BE25C4();

      sub_21874546C(v29, &qword_280EE59D8, MEMORY[0x277D6D700], MEMORY[0x277D83D88], sub_21874E6B8);
      return;
    }

    v36 = v22;
    swift_dynamicCast();
    v17 = v37;
    v20 = v11;
    v21 = v12;
    if (!v37)
    {
      goto LABEL_28;
    }

LABEL_20:
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = v17;
    }

    sub_2186C6148(0, &unk_280E8D980);
    v25 = sub_219BF6F14();
    v26 = v25;
    if (!v23)
    {
      if (!v25)
      {
        goto LABEL_28;
      }

      goto LABEL_9;
    }

    if (!v25)
    {
      v26 = v23;
LABEL_9:

      v17 = v26;
      goto LABEL_10;
    }

    sub_2186C6148(0, &qword_280E8E700);
    v27 = sub_219BF6DD4();

    if (v27)
    {
      goto LABEL_28;
    }

LABEL_10:
    v8 = v35;

    v11 = v20;
    v12 = v21;
  }

  v18 = v11;
  v19 = v12;
  v20 = v11;
  if (v12)
  {
LABEL_16:
    v21 = (v19 - 1) & v19;
    v17 = *(*(v8 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v17)
    {
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v16)
    {
      goto LABEL_27;
    }

    v19 = *(v9 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_219116344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(v10[0]) = 1;

  sub_219BE2114();

  sub_2186C6E00(v10);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_219116A84();
  if (sub_219BE1E24())
  {
    v5 = __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x28223BE20](v5);
    sub_219BE2C84();
    sub_219BE3204();
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a3;

    v7 = sub_219BE2E54();
    sub_219BE2F74();

    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;

    v9 = sub_219BE2E54();
    sub_219BE2FD4();
  }

  else
  {
    __break(1u);
  }
}

void sub_21911654C(void *a1, uint64_t a2, void (**a3)(void, void))
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    _Block_copy(a3);
    v7 = a1;
    sub_2186C6E00(v13);
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_2186C709C(0, qword_280EC8AA0);
    sub_219BE1E34();
    if (v12)
    {
      sub_2186CB1F0(&v11, v14);
      __swift_destroy_boxed_opaque_existential_1(v13);
      v8 = *__swift_project_boxed_opaque_existential_1(v14, v14[3]);
      _Block_copy(a3);
      sub_218EE9D84(v6, v8, a3);
      _Block_release(a3);

      __swift_destroy_boxed_opaque_existential_1(v14);
      _Block_release(a3);
    }

    else
    {
      _Block_release(a3);
      _Block_release(a3);
      __break(1u);
    }
  }

  else
  {
    _Block_copy(a3);
    sub_219BF61F4();
    sub_2186C6148(0, &qword_280E8D790);
    v9 = sub_219BF6F44();
    sub_219BE5314();

    v10 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:6 userActivity:0];
    (a3)[2](a3, v10);

    _Block_release(a3);
  }
}

uint64_t sub_219116748(uint64_t a1, uint64_t a2)
{
  LOBYTE(v11[0]) = 1;

  sub_219BE2114();

  sub_2186C6E00(v11);
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_219BE2A24();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x28223BE20](v6);
    sub_219BE2874();
    sub_219BE3204();
    sub_2186C6148(0, &qword_280E8E3B0);
    v7 = sub_219BF66A4();
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;

    sub_219BE2F74();

    v9 = sub_219BF66A4();
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;

    sub_219BE2FD4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_219116A84()
{
  if (!qword_280EE4460)
  {
    sub_2186CF9A8();
    v0 = sub_219BE96B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4460);
    }
  }
}

void sub_219116B54(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_219116BCC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7NewsUI226AudioTemplateSceneDelegate____lazy_storage___resolver;
  swift_beginAccess();
  sub_2186C6EE0(v1 + v3, &v5);
  if (v6)
  {
    return sub_21875F93C(&v5, a1);
  }

  sub_219117EEC(&v5);
  sub_219116C94();
  sub_219BE3334();

  sub_218718690(a1, &v5);
  swift_beginAccess();
  sub_2187186F4(&v5, v1 + v3);
  return swift_endAccess();
}

void sub_219116C94()
{
  v1 = OBJC_IVAR____TtC7NewsUI226AudioTemplateSceneDelegate____lazy_storage___container;
  if (*(v0 + OBJC_IVAR____TtC7NewsUI226AudioTemplateSceneDelegate____lazy_storage___container))
  {
    goto LABEL_5;
  }

  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    ObjectType = swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (v5)
    {
      (*(v5 + 16))(v7, ObjectType, v5);
      swift_unknownObjectRelease();
      sub_219BE3354();
      swift_dynamicCast();
      *(v0 + v1) = v6;

LABEL_5:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_219116DD4()
{
  v1 = (v0 + OBJC_IVAR____TtC7NewsUI226AudioTemplateSceneDelegate____lazy_storage___commandCenter);
  if (*(v0 + OBJC_IVAR____TtC7NewsUI226AudioTemplateSceneDelegate____lazy_storage___commandCenter))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7NewsUI226AudioTemplateSceneDelegate____lazy_storage___commandCenter);
LABEL_5:
    swift_unknownObjectRetain();
    return v2;
  }

  sub_219116BCC(v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  v2 = v4;
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
    *v1 = v4;
    v1[1] = v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_219116FD8(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5[3] = sub_2186C6148(0, &unk_27CC16500);
  v5[4] = &off_282A36270;
  v5[0] = a2;
  sub_2186C709C(0, &unk_27CC0DF60);
  v3 = a2;
  sub_219BE1BA4();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

void sub_21911708C(char a1, void *a2)
{
  sub_2186E7C18(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D839B0];
  *(v4 + 16) = xmmword_219C09BA0;
  v6 = MEMORY[0x277D839F0];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = a1;
  sub_2186C6148(0, &qword_280E8D790);
  v7 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  if (a2)
  {
    v8 = a2;
    sub_219BF61F4();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_219C09BA0;
    sub_2186C709C(0, &qword_280E8B580);
    sub_219BF7484();
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_2186FC3BC();
    *(v9 + 32) = 0;
    *(v9 + 40) = 0xE000000000000000;
    v10 = sub_219BF6F44();
    sub_219BE5314();
  }
}

void sub_21911726C()
{
  sub_218CFB62C();
  MEMORY[0x28223BE20](v0 - 8);
  v26 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BF1324();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BF1C74();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF2A04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219117E9C(0, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  sub_2186C6148(0, &qword_280E8D790);
  v15 = sub_219BF6F74();
  sub_219BF6214();
  sub_219BE5314();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    (*(v7 + 104))(v9, *MEMORY[0x277D33A70], v6);
    (*(v21 + 104))(v5, *MEMORY[0x277D33570], v22);
    v27 = 0u;
    v28 = 0u;
    (*(v23 + 104))(v24, *MEMORY[0x277D33290], v25);
    sub_219BF2564();
    sub_219116DD4();
    swift_getObjectType();
    sub_219BEAC34();
    v18 = v26;
    (*(v12 + 16))(v26, v14, v11);
    (*(v12 + 56))(v18, 0, 1, v11);
    sub_219BE7094();
    swift_unknownObjectRelease();

    sub_218EEDC0C(v18);
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v19 = sub_219BF6F74();
    sub_219BF61F4();
    sub_219BE5314();
  }
}

void sub_219117800(void *a1)
{
  v2 = v1;
  if (qword_280E8D808 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  v4 = OBJC_IVAR____TtC7NewsUI226AudioTemplateSceneDelegate_audioTemplateController;
  v5 = *(v2 + OBJC_IVAR____TtC7NewsUI226AudioTemplateSceneDelegate_audioTemplateController);
  if (v5)
  {

    sub_219BF61F4();
    sub_2186E7C18(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_219C09BA0;
    v27 = v5;
    type metadata accessor for AudioCPListTemplateController();

    v7 = sub_219BF5484();
    v9 = v8;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_2186FC3BC();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    sub_219BE5314();
  }

  v10 = *(v2 + OBJC_IVAR____TtC7NewsUI226AudioTemplateSceneDelegate_interfaceController);
  *(v2 + OBJC_IVAR____TtC7NewsUI226AudioTemplateSceneDelegate_interfaceController) = a1;

  v11 = a1;
  sub_219116BCC(&v27);
  __swift_project_boxed_opaque_existential_1(&v27, v30);
  type metadata accessor for AudioCPListTemplateController();
  *(swift_allocObject() + 16) = v11;
  v12 = v11;
  v13 = sub_219BE1E04();

  __swift_destroy_boxed_opaque_existential_1(&v27);
  if (v13)
  {
    *(v2 + v4) = v13;
    swift_retain_n();

    v14 = *(v13 + 16);
    v31 = sub_21911708C;
    v32 = 0;
    v27 = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_219116B54;
    v30 = &block_descriptor_97;
    v15 = _Block_copy(&v27);
    v16 = v14;
    [v12 setRootTemplate:v16 animated:1 completion:v15];
    _Block_release(v15);

    v17 = objc_opt_self();
    v18 = [v17 sharedTemplate];
    [v18 setUpNextButtonEnabled_];

    v19 = [v17 sharedTemplate];
    [v19 setAlbumArtistButtonEnabled_];

    v20 = [v17 sharedTemplate];
    sub_219117E9C(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_219C146A0;
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = objc_allocWithZone(MEMORY[0x277CBB138]);
    v31 = sub_219117E94;
    v32 = v22;
    v27 = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_218B66540;
    v30 = &block_descriptor_7_3;
    v24 = _Block_copy(&v27);

    v25 = [v23 initWithHandler_];
    _Block_release(v24);

    *(v21 + 32) = v25;
    sub_2186C6148(0, &unk_27CC164F0);
    v26 = sub_219BF5904();

    [v20 updateNowPlayingButtons_];
  }

  else
  {
    sub_219BF61F4();
    sub_2186C6148(0, &qword_280E8D790);
    v26 = sub_219BF6F44();
    sub_219BE5314();
  }
}

void sub_219117D54()
{
  v1 = OBJC_IVAR____TtC7NewsUI226AudioTemplateSceneDelegate_interfaceController;
  if (!*(v0 + OBJC_IVAR____TtC7NewsUI226AudioTemplateSceneDelegate_interfaceController))
  {
    if (qword_280E8D808 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_219BE5314();
  }

  v2 = OBJC_IVAR____TtC7NewsUI226AudioTemplateSceneDelegate_audioTemplateController;
  if (!*(v0 + OBJC_IVAR____TtC7NewsUI226AudioTemplateSceneDelegate_audioTemplateController))
  {
    if (qword_280E8D808 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_219BE5314();
  }

  *(v0 + v2) = 0;

  v3 = *(v0 + v1);
  *(v0 + v1) = 0;
}

void sub_219117E9C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_219117EEC(uint64_t a1)
{
  sub_2186E7C18(0, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SearchExpandRequest()
{
  result = qword_280ED0630;
  if (!qword_280ED0630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219117FF0()
{
  result = type metadata accessor for SearchFeedGapLocation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21911809C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v42 = sub_219BF1214();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E26F88();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - v7;
  v9 = sub_219BF1934();
  v41 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v44 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191189DC(0, &qword_280E8C9A8, MEMORY[0x277D844C8]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219118988();
  v16 = v45;
  sub_219BF7B34();
  if (v16)
  {
    v23 = a1;
  }

  else
  {
    v45 = a1;
    v17 = v13;
    v18 = v42;
    v19 = v43;
    v47 = 0;
    sub_218E2735C(&qword_280E90808, MEMORY[0x277D33478]);
    v20 = v15;
    sub_219BF7734();
    v46 = 1;
    sub_218E2735C(&qword_280E90948, MEMORY[0x277D33218]);
    v21 = v8;
    v22 = v18;
    sub_219BF76E4();
    v37 = v20;
    v25 = v19;
    v26 = v44;
    (*(v41 + 16))(v25, v44, v9);
    v36 = v9;
    v27 = v38;
    sub_218E2712C(v21, v38);
    v28 = *(v40 + 48);
    if (v28(v27, 1, v22) == 1)
    {
      sub_219BF1204();
      sub_218E27190(v21);
      (*(v41 + 8))(v26, v36);
      v29 = v28(v27, 1, v22);
      v30 = v39;
      v31 = v40;
      v32 = v29 == 1;
      v33 = v27;
      v34 = v45;
      if (!v32)
      {
        sub_218E27190(v33);
      }
    }

    else
    {
      sub_218E27190(v21);
      (*(v41 + 8))(v26, v36);
      v30 = v39;
      v31 = v40;
      (*(v40 + 32))(v39, v27, v22);
      v34 = v45;
    }

    v35 = type metadata accessor for NewFollowTodayFeedGroupConfigData();
    (*(v31 + 32))(v43 + *(v35 + 20), v30, v22);
    (*(v17 + 8))(v37, v12);
    v23 = v34;
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_2191185A4(void *a1)
{
  sub_2191189DC(0, &qword_280E8C308, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219118988();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF1934();
  sub_218E2735C(&qword_280E90810, MEMORY[0x277D33478]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for NewFollowTodayFeedGroupConfigData();
    v9[14] = 1;
    sub_219BF1214();
    sub_218E2735C(&qword_280E90950, MEMORY[0x277D33218]);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2191187B4()
{
  if (*v0)
  {
    return 0x4372616365646973;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_2191187FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4372616365646973 && a2 == 0xED00006769666E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_219BF78F4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2191188E0(uint64_t a1)
{
  v2 = sub_219118988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21911891C(uint64_t a1)
{
  v2 = sub_219118988();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219118988()
{
  result = qword_280EA3008[0];
  if (!qword_280EA3008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA3008);
  }

  return result;
}

void sub_2191189DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219118988();
    v7 = a3(a1, &type metadata for NewFollowTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219118A54()
{
  result = qword_27CC16570;
  if (!qword_27CC16570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16570);
  }

  return result;
}

unint64_t sub_219118AAC()
{
  result = qword_280EA2FF8;
  if (!qword_280EA2FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA2FF8);
  }

  return result;
}

unint64_t sub_219118B04()
{
  result = qword_280EA3000;
  if (!qword_280EA3000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA3000);
  }

  return result;
}

uint64_t sub_219118B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v7 = sub_219BED174();
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BED1D4();
  v10 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BED184();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  sub_2187D9028();
  (*(v14 + 104))(v16, *MEMORY[0x277D851D0], v13);

  v18 = sub_219BF66E4();
  (*(v14 + 8))(v16, v13);
  v19 = swift_allocObject();
  v19[2] = v22;
  v19[3] = sub_2187A913C;
  v19[4] = v17;
  aBlock[4] = sub_2191194FC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_98;
  v20 = _Block_copy(aBlock);

  sub_219BED1A4();
  v25 = MEMORY[0x277D84F90];
  sub_218A72744();
  sub_21874E71C(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v12, v9, v20);
  _Block_release(v20);

  (*(v24 + 8))(v9, v7);
  (*(v10 + 8))(v12, v23);
}

uint64_t sub_219118F08(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v41 = a3;
  v42 = a2;
  v40 = a1;
  v43 = sub_219BDBD34();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_219BDBD64();
  v6 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for MyMagazinesIssue(0);
  v45 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21874E71C(0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v38 = &v36 - v11;
  v36 = type metadata accessor for MyMagazinesState(0);
  MEMORY[0x28223BE20](v36);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x277D84F90];
  v13 = 4;
  sub_218C35030(0, 4, 0);
  v14 = v48;
  v44 = (v6 + 8);
  v15 = (v3 + 8);
  do
  {
    v16 = v46;
    sub_219BDBD54();
    sub_219BDBD44();
    v17 = *v44;
    (*v44)(v16, v47);
    sub_219BE2EB4();
    v18 = sub_219BE2EC4();

    (*v15)(v5, v43);
    sub_218A5DAA4(v18, v9);

    v48 = v14;
    v20 = *(v14 + 16);
    v19 = *(v14 + 24);
    v21 = v20 + 1;
    if (v20 >= v19 >> 1)
    {
      sub_218C35030(v19 > 1, v20 + 1, 1);
      v14 = v48;
    }

    *(v14 + 16) = v21;
    v22 = v14 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    sub_218C00790(v9, v22 + *(v45 + 72) * v20);
    --v13;
  }

  while (v13);
  v23 = v38;
  sub_218C007F4(v22, v38);
  (*(v45 + 56))(v23, 0, 1, v39);
  sub_218B67200(v14, v22, 1, (2 * v21) | 1);
  v25 = v24;

  v26 = v37;
  sub_219119508(v23, v37);
  v27 = v36;
  *(v26 + *(v36 + 20)) = v25;
  *(v26 + *(v27 + 24)) = 0;
  sub_219BE1A64();

  sub_21911959C(v26);
  sub_21870F424(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  v29 = v46;
  sub_219BDBD54();
  v30 = sub_219BDBD44();
  v32 = v31;
  v17(v29, v47);
  *(inited + 32) = v30;
  *(inited + 40) = v32;
  v33 = sub_2194AD74C(inited);
  swift_setDeallocating();
  sub_2189AD3D8(inited + 32);
  v48 = v33;
  sub_219BE1A64();

  return v42(v34);
}

uint64_t sub_219119418()
{
  sub_21870F424(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_219119494()
{
  sub_21870F424(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219119508(uint64_t a1, uint64_t a2)
{
  sub_21874E71C(0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21911959C(uint64_t a1)
{
  v2 = type metadata accessor for MyMagazinesState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PuzzleSetting()
{
  result = qword_27CC16578;
  if (!qword_27CC16578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219119644()
{
  result = sub_219BF1F44();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2191196B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  sub_21911A6BC(0, &unk_27CC24B50, MEMORY[0x277D33690], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  v10 = sub_219BF1F44();
  v38 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PuzzleSetting();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[0] = a1;
  v43[1] = a2;
  sub_218751558(a3, &v44);
  if (a1 == 1819242338 && a2 == 0xE400000000000000 || (sub_219BF78F4() & 1) != 0)
  {
    sub_21911A654(v43, v42, sub_21911A5EC);

    sub_21870AD58();
    if (swift_dynamicCast())
    {
      v17 = v40[0];
      v18 = sub_219BF5B24();

      *v16 = v18 & 1;
LABEL_6:
      swift_storeEnumTagMultiPayload();
      v19 = v39;
      sub_21911A720(v16, v39);
      (*(v14 + 56))(v19, 0, 1, v13);
      return sub_21911A58C(v43, sub_21911A5EC);
    }
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_219BF78F4() & 1) != 0)
  {
    sub_21911A654(v43, v42, sub_21911A5EC);

    if (swift_dynamicCast())
    {
      v21 = v40[1];
      *v16 = v40[0];
      *(v16 + 1) = v21;
      goto LABEL_6;
    }
  }

  else if (a1 == 1970169197 && a2 == 0xE400000000000000 || (sub_219BF78F4() & 1) != 0)
  {
    sub_21911A654(v43, v42, sub_21911A5EC);

    sub_21911A6BC(0, &qword_27CC0C7A0, sub_218A19674, MEMORY[0x277D83940]);
    v23 = v22;
    if (swift_dynamicCast())
    {
      v24 = v40[0];
      sub_21911A6BC(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_219C09BA0;
      *(inited + 32) = 0x736D657469;
      v26 = inited + 32;
      *(inited + 72) = v23;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = v24;
      sub_218831A70(inited);
      swift_setDeallocating();
      sub_21911A58C(v26, sub_2188317B0);
      sub_219BF1EE4();
      v27 = v38;
      if ((*(v38 + 48))(v9, 1, v10) != 1)
      {
        v37 = *(v27 + 32);
        v37(v12, v9, v10);
        v37(v16, v12, v10);
        goto LABEL_6;
      }

      sub_218CD5BC0(v9);
    }

    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v28 = sub_219BE5434();
    __swift_project_value_buffer(v28, qword_280F625E0);
    sub_21911A654(v43, v42, sub_21911A5EC);
    v29 = sub_219BE5414();
    v30 = sub_219BF61F4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41 = v32;
      *v31 = 136315138;
      sub_21911A654(v42, v40, sub_21911A5EC);

      v33 = sub_219BF5484();
      v35 = v34;
      sub_21911A58C(v42, sub_21911A5EC);
      v36 = sub_2186D1058(v33, v35, &v41);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_2186C1000, v29, v30, "Failed parsing PuzzleSetting. Invalid menu entry: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x21CECF960](v32, -1, -1);
      MEMORY[0x21CECF960](v31, -1, -1);
    }

    else
    {

      sub_21911A58C(v42, sub_21911A5EC);
    }
  }

  sub_21911A58C(v43, sub_21911A5EC);
  return (*(v14 + 56))(v39, 1, 1, v13);
}

uint64_t sub_219119E10()
{
  v1 = sub_219BF1F44();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PuzzleSetting();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21911A654(v0, v7, type metadata accessor for PuzzleSetting);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x21CECE850](1);
      return sub_219BF7AC4();
    }

    else
    {
      (*(v2 + 32))(v4, v7, v1);
      MEMORY[0x21CECE850](2);
      sub_21911A0E0(&qword_27CC0C790, MEMORY[0x277D33690]);
      sub_219BF52F4();
      return (*(v2 + 8))(v4, v1);
    }
  }

  else
  {
    MEMORY[0x21CECE850](0);
    sub_219BF5524();
  }
}

uint64_t sub_21911A014()
{
  sub_219BF7AA4();
  sub_219119E10();
  return sub_219BF7AE4();
}

uint64_t sub_21911A058()
{
  sub_219BF7AA4();
  sub_219119E10();
  return sub_219BF7AE4();
}

uint64_t sub_21911A0E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21911A128(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1F44();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PuzzleSetting();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = (&v34 - v14);
  sub_21911A528();
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v19[*(v17 + 56)];
  sub_21911A654(a1, v19, type metadata accessor for PuzzleSetting);
  sub_21911A654(a2, v20, type metadata accessor for PuzzleSetting);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_21911A654(v19, v15, type metadata accessor for PuzzleSetting);
    v25 = *v15;
    v24 = v15[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v25 == *v20 && v24 == *(v20 + 1))
      {
      }

      else
      {
        v33 = sub_219BF78F4();

        if ((v33 & 1) == 0)
        {
          v30 = type metadata accessor for PuzzleSetting;
          goto LABEL_11;
        }
      }

      sub_21911A58C(v19, type metadata accessor for PuzzleSetting);
      v23 = 1;
      return v23 & 1;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_21911A654(v19, v10, type metadata accessor for PuzzleSetting);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v26 = v34;
      v27 = v20;
      v28 = v35;
      (*(v34 + 32))(v6, v27, v35);
      v23 = MEMORY[0x21CEC8C70](v10, v6);
      v29 = *(v26 + 8);
      v29(v6, v28);
      v29(v10, v28);
      sub_21911A58C(v19, type metadata accessor for PuzzleSetting);
      return v23 & 1;
    }

    (*(v34 + 8))(v10, v35);
    goto LABEL_10;
  }

  sub_21911A654(v19, v13, type metadata accessor for PuzzleSetting);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_10:
    v30 = sub_21911A528;
LABEL_11:
    sub_21911A58C(v19, v30);
    v23 = 0;
    return v23 & 1;
  }

  v22 = *v13 ^ *v20;
  sub_21911A58C(v19, type metadata accessor for PuzzleSetting);
  v23 = v22 ^ 1;
  return v23 & 1;
}

void sub_21911A528()
{
  if (!qword_27CC16590)
  {
    type metadata accessor for PuzzleSetting();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC16590);
    }
  }
}

uint64_t sub_21911A58C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21911A5EC()
{
  if (!qword_27CC16598)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC16598);
    }
  }
}

uint64_t sub_21911A654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21911A6BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21911A720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleSetting();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21911A82C(void *a1)
{

  v2 = sub_219BF53D4();

  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v4, &v5);
    sub_218C6194C();
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21911A900@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21911B104(0, &unk_280E8CE10, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TrendingTodayFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21911B04C();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_21911B168(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_21911B0A0(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21911ABAC(uint64_t a1)
{
  v2 = sub_21911B04C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21911ABE8(uint64_t a1)
{
  v2 = sub_21911B04C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21911AC64(void *a1)
{
  sub_21911B104(0, &qword_280E8C5A0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21911B04C();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_21911B168(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21911AEC4(uint64_t a1)
{
  result = sub_21911B168(&qword_280EC6248, type metadata accessor for TrendingTodayFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21911AF1C(uint64_t a1)
{
  v2 = sub_21911B168(&qword_280EC6278, type metadata accessor for TrendingTodayFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_21911AFA0(void *a1)
{
  a1[1] = sub_21911B168(&qword_280EC6278, type metadata accessor for TrendingTodayFeedGroup);
  a1[2] = sub_21911B168(&qword_280EC6250, type metadata accessor for TrendingTodayFeedGroup);
  result = sub_21911B168(&qword_280EC6260, type metadata accessor for TrendingTodayFeedGroup);
  a1[3] = result;
  return result;
}

unint64_t sub_21911B04C()
{
  result = qword_280EC6290[0];
  if (!qword_280EC6290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC6290);
  }

  return result;
}

uint64_t sub_21911B0A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrendingTodayFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21911B104(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21911B04C();
    v7 = a3(a1, &type metadata for TrendingTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21911B168(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21911B1C4()
{
  result = qword_27CC165D0;
  if (!qword_27CC165D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC165D0);
  }

  return result;
}

unint64_t sub_21911B21C()
{
  result = qword_280EC6280;
  if (!qword_280EC6280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6280);
  }

  return result;
}

unint64_t sub_21911B274()
{
  result = qword_280EC6288;
  if (!qword_280EC6288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6288);
  }

  return result;
}

uint64_t sub_21911B2D8(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v87 = a3;
  v88 = a2;
  v84 = a1;
  v3 = sub_219BE6DF4();
  v85 = *(v3 - 8);
  v86 = v3;
  MEMORY[0x28223BE20](v3);
  v82 = v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21911C26C(0, &qword_280EE4B18, MEMORY[0x277D6DF88]);
  v83 = v5;
  v81 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v80 = v78 - v6;
  v7 = type metadata accessor for AudioFeedGapLocation(0);
  MEMORY[0x28223BE20](v7 - 8);
  v78[0] = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_219BF0BD4();
  v93 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v10 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953904();
  v12 = v11;
  v90 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v101 = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AudioFeedGroup();
  v94 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v78 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v78 - v21;
  sub_218BE3944();
  MEMORY[0x28223BE20](v23 - 8);
  sub_21911C26C(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v91 = v24;
  v79 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = v78 - v25;
  v27 = sub_21911C224(&qword_280EE57F0, sub_218953904);
  v28 = sub_21911C224(&qword_280EE5800, sub_218953904);
  v100 = v12;
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v12, v27, v28);
  v29 = type metadata accessor for AudioFeedSectionDescriptor();
  v30 = type metadata accessor for AudioFeedModel(0);
  v31 = sub_21911C224(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor);
  v32 = sub_21911C224(&qword_280EDCBF0, type metadata accessor for AudioFeedModel);
  v98 = v26;
  v33 = v78[1];
  v78[2] = v32;
  sub_219BEB2D4();
  v34 = v33[2];
  v35 = v34 >> 61;
  v78[5] = v29;
  v78[4] = v30;
  v78[3] = v31;
  v89 = v34;
  if ((v34 >> 61) > 1)
  {
    if (v35 != 2)
    {
      v36 = v97;
      v37 = v100;
      if (v35 == 3)
      {
        v38 = *((v89 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v39 = *(v38 + 16);
        if (v39)
        {
          v40 = *((v89 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v95 = v33[3];
          v96 = v40;
          v41 = v38 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
          v42 = *(v94 + 72);
          ++v93;
          v94 = v42;
          v92 = (v90 + 8);
          do
          {
            sub_21909E61C(v41, v17);
            v99 = __swift_project_boxed_opaque_existential_1(v33 + 4, v33[7]);
            type metadata accessor for AudioFeedServiceConfig();
            sub_21911C224(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);
            v43 = v101;
            sub_219BEE7A4();
            sub_218AB609C(v17, v95, v10, v43);
            sub_21911C360(v17, type metadata accessor for AudioFeedGroup);
            (*v93)(v10, v36);
            sub_219BEB1E4();
            v37 = v100;
            (*v92)(v43, v100);
            v41 += v94;
            --v39;
          }

          while (v39);
        }
      }

      goto LABEL_14;
    }

LABEL_13:
    sub_21911C3C0();
    v52 = swift_projectBox();
    sub_21909E61C(v52, v22);
    __swift_project_boxed_opaque_existential_1(v33 + 4, v33[7]);
    v53 = v33[3];
    type metadata accessor for AudioFeedServiceConfig();
    sub_21911C224(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);

    sub_219BEE7A4();
    v54 = v101;
    sub_218AB609C(v22, v53, v10, v101);
    v93[1](v10, v97);
    sub_219BEB1E4();

    v37 = v100;
    (*(v90 + 8))(v54, v100);
    sub_21911C360(v22, type metadata accessor for AudioFeedGroup);
    goto LABEL_14;
  }

  if (!v35)
  {
    goto LABEL_13;
  }

  v44 = v34 & 0x1FFFFFFFFFFFFFFFLL;
  v45 = *(v44 + 16);
  v46 = *(v45 + 16);
  v37 = v100;
  if (v46)
  {
    v47 = v33;
    v99 = *(v44 + 24);
    v96 = v33[3];
    v48 = v45 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
    v95 = *(v94 + 72);
    v49 = v93 + 1;
    v50 = (v90 + 8);
    do
    {
      sub_21909E61C(v48, v20);
      __swift_project_boxed_opaque_existential_1(v47 + 4, v47[7]);
      type metadata accessor for AudioFeedServiceConfig();
      sub_21911C224(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);
      sub_219BEE7A4();
      v51 = v101;
      sub_218AB609C(v20, v96, v10, v101);
      sub_21911C360(v20, type metadata accessor for AudioFeedGroup);
      (*v49)(v10, v97);
      sub_219BEB1E4();
      v37 = v100;
      (*v50)(v51, v100);
      v48 += v95;
      --v46;
    }

    while (v46);
  }

LABEL_14:
  type metadata accessor for AudioFeedServiceConfig();
  sub_21911C224(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);
  sub_219BEF3D4();
  if (sub_219BEF394())
  {
    v55 = sub_219BEE854();
    v57 = v85;
    v56 = v86;
    if (v55)
    {
      v58 = swift_allocObject();
      sub_21911C44C(0, &qword_280E91AF0, MEMORY[0x277D32188]);
      swift_allocObject();
      v59 = v37;

      *(v58 + 16) = sub_219BEE874();
      v60 = v78[0];
      *v78[0] = v58;
      v61 = *MEMORY[0x277D33068];
      sub_21911C44C(0, &qword_280E90A18, MEMORY[0x277D33098]);
      (*(*(v62 - 8) + 104))(v60, v61, v62);
      v63 = v101;
      sub_219AD0160(v60, v101);
      sub_21911C360(v60, type metadata accessor for AudioFeedGapLocation);
      sub_219BEB1E4();
      (*(v90 + 8))(v63, v59);
    }
  }

  else
  {
    v64 = swift_allocObject();
    sub_21911C44C(0, &qword_280E91AF0, MEMORY[0x277D32188]);
    swift_allocObject();
    v65 = v37;

    *(v64 + 16) = sub_219BEE874();
    v66 = v78[0];
    *v78[0] = v64;
    v67 = *MEMORY[0x277D33090];
    sub_21911C44C(0, &qword_280E90A18, MEMORY[0x277D33098]);
    (*(*(v68 - 8) + 104))(v66, v67, v68);
    v69 = v101;
    sub_219AD0160(v66, v101);
    sub_21911C360(v66, type metadata accessor for AudioFeedGapLocation);
    sub_219BEB1E4();
    (*(v90 + 8))(v69, v65);
    v57 = v85;
    v56 = v86;
  }

  sub_219BEEFF4();

  sub_219BEEFE4();
  v70 = sub_219BEEFC4();

  v71 = 0;
  if (v70)
  {
    v71 = sub_219BEDC74();
  }

  else
  {
    v103 = 0;
    v104 = 0;
  }

  v72 = v88;
  v73 = v91;
  v74 = v98;
  v102 = v70;
  v105 = v71;
  sub_219BEB2C4();

  v75 = v82;
  (*(v57 + 104))(v82, *MEMORY[0x277D6D868], v56);
  sub_21911C224(&qword_280EBC458, type metadata accessor for AudioFeedSectionDescriptor);
  v76 = v80;
  sub_219BE85E4();
  (*(v57 + 8))(v75, v56);
  v72(v76);

  (*(v81 + 8))(v76, v83);
  return (*(v79 + 8))(v74, v73);
}

unint64_t sub_21911C140()
{
  result = qword_280EA3D50;
  if (!qword_280EA3D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA3D50);
  }

  return result;
}

uint64_t sub_21911C224(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21911C26C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioFeedSectionDescriptor();
    v8[1] = type metadata accessor for AudioFeedModel(255);
    v8[2] = sub_21911C224(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor);
    v8[3] = sub_21911C224(&qword_280EDCBF0, type metadata accessor for AudioFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21911C360(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21911C3C0()
{
  if (!qword_280EDCC30[0])
  {
    type metadata accessor for AudioFeedGroup();
    sub_21911C44C(255, &qword_280E91B18, MEMORY[0x277D32170]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_280EDCC30);
    }
  }
}

void sub_21911C44C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AudioFeedServiceConfig();
    v7 = sub_21911C224(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21911C4F8()
{
  v1 = v0;
  v2 = type metadata accessor for CuratedAudioFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PaywallAudioFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup();
  MEMORY[0x28223BE20](AudioFeedGroup - 8);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for ForYouAudioFeedGroup();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for AudioFeedGroup();
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21909E61C(v1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21911F6D4(v16, v7, type metadata accessor for PaywallAudioFeedGroup);
      v18 = *v7;

      v19 = type metadata accessor for PaywallAudioFeedGroup;
      v20 = v7;
    }

    else
    {
      sub_21911F6D4(v16, v4, type metadata accessor for CuratedAudioFeedGroup);
      v18 = sub_219BED784();
      v19 = type metadata accessor for CuratedAudioFeedGroup;
      v20 = v4;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_21911F6D4(v16, v10, type metadata accessor for UpNextAudioFeedGroup);
    v18 = *v10;

    v19 = type metadata accessor for UpNextAudioFeedGroup;
    v20 = v10;
  }

  else
  {
    sub_21911F6D4(v16, v13, type metadata accessor for ForYouAudioFeedGroup);
    v18 = *v13;

    v19 = type metadata accessor for ForYouAudioFeedGroup;
    v20 = v13;
  }

  sub_21911F73C(v20, v19);
  return v18;
}

uint64_t sub_21911C7E4()
{
  v1 = v0;
  v2 = type metadata accessor for CuratedAudioFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup();
  MEMORY[0x28223BE20](AudioFeedGroup);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ForYouAudioFeedGroup();
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AudioFeedGroup();
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21909E61C(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_21911F6D4(v13, v7, type metadata accessor for UpNextAudioFeedGroup);
      v15 = sub_219BED794();
      v16 = type metadata accessor for UpNextAudioFeedGroup;
      v17 = v7;
    }

    else
    {
      sub_21911F6D4(v13, v10, type metadata accessor for ForYouAudioFeedGroup);
      v15 = sub_219BED794();
      v16 = type metadata accessor for ForYouAudioFeedGroup;
      v17 = v10;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_21911F6D4(v13, v4, type metadata accessor for CuratedAudioFeedGroup);
    v15 = sub_219BED794();
    v16 = type metadata accessor for CuratedAudioFeedGroup;
    v17 = v4;
LABEL_8:
    sub_21911F73C(v17, v16);
    return v15;
  }

  sub_21911F73C(v13, type metadata accessor for AudioFeedGroup);
  return 0;
}

uint64_t sub_21911CA8C()
{
  v1 = v0;
  v2 = type metadata accessor for CuratedAudioFeedGroup();
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AudioFeedGroup();
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21909E61C(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21911F73C(v7, type metadata accessor for AudioFeedGroup);
      return 3;
    }

    else
    {
      sub_21911F6D4(v7, v4, type metadata accessor for CuratedAudioFeedGroup);

      v10 = sub_219BF7614();

      if (v10 == 1)
      {
        v11 = 5;
      }

      else
      {
        v11 = 4;
      }

      if (v10)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      sub_21911F73C(v4, type metadata accessor for CuratedAudioFeedGroup);
      return v12;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_21911F73C(v7, type metadata accessor for AudioFeedGroup);
    return 1;
  }

  else
  {
    sub_21911F73C(v7, type metadata accessor for AudioFeedGroup);
    return 2;
  }
}

uint64_t sub_21911CC78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = type metadata accessor for CuratedAudioFeedGroup();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PaywallAudioFeedGroup();
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup();
  MEMORY[0x28223BE20](AudioFeedGroup);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ForYouAudioFeedGroup();
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AudioFeedGroup();
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21909E61C(v2, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21911F6D4(v17, v8, type metadata accessor for PaywallAudioFeedGroup);
      v21 = *(v6 + 24);
      v22 = sub_219BEF554();
      (*(*(v22 - 8) + 16))(v25, &v8[v21], v22);
      v19 = type metadata accessor for PaywallAudioFeedGroup;
      v20 = v8;
    }

    else
    {
      sub_21911F6D4(v17, v5, type metadata accessor for CuratedAudioFeedGroup);
      sub_219BED7A4();
      v19 = type metadata accessor for CuratedAudioFeedGroup;
      v20 = v5;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_21911F6D4(v17, v11, type metadata accessor for UpNextAudioFeedGroup);
    sub_219BED7A4();
    v19 = type metadata accessor for UpNextAudioFeedGroup;
    v20 = v11;
  }

  else
  {
    sub_21911F6D4(v17, v14, type metadata accessor for ForYouAudioFeedGroup);
    sub_219BED7A4();
    v19 = type metadata accessor for ForYouAudioFeedGroup;
    v20 = v14;
  }

  return sub_21911F73C(v20, v19);
}

double sub_21911CFBC()
{
  v1 = v0;
  v2 = type metadata accessor for CuratedAudioFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PaywallAudioFeedGroup();
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup();
  MEMORY[0x28223BE20](AudioFeedGroup);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ForYouAudioFeedGroup();
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AudioFeedGroup();
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21909E61C(v1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21911F6D4(v16, v7, type metadata accessor for PaywallAudioFeedGroup);
      v19 = *&v7[*(v5 + 28)];
      v20 = type metadata accessor for PaywallAudioFeedGroup;
      v21 = v7;
    }

    else
    {
      sub_21911F6D4(v16, v4, type metadata accessor for CuratedAudioFeedGroup);
      sub_219BED7B4();
      v19 = v23;
      v20 = type metadata accessor for CuratedAudioFeedGroup;
      v21 = v4;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_21911F6D4(v16, v10, type metadata accessor for UpNextAudioFeedGroup);
    sub_219BED7B4();
    v19 = v22;
    v20 = type metadata accessor for UpNextAudioFeedGroup;
    v21 = v10;
  }

  else
  {
    sub_21911F6D4(v16, v13, type metadata accessor for ForYouAudioFeedGroup);
    sub_219BED7B4();
    v19 = v18;
    v20 = type metadata accessor for ForYouAudioFeedGroup;
    v21 = v13;
  }

  sub_21911F73C(v21, v20);
  return v19;
}

uint64_t sub_21911D2CC()
{
  v1 = v0;
  v2 = type metadata accessor for CuratedAudioFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup();
  MEMORY[0x28223BE20](AudioFeedGroup);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ForYouAudioFeedGroup();
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AudioFeedGroup();
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21909E61C(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_21911F6D4(v13, v7, type metadata accessor for UpNextAudioFeedGroup);
      v15 = sub_219BED7E4();
      v16 = type metadata accessor for UpNextAudioFeedGroup;
      v17 = v7;
    }

    else
    {
      sub_21911F6D4(v13, v10, type metadata accessor for ForYouAudioFeedGroup);
      v15 = sub_219BED7E4();
      v16 = type metadata accessor for ForYouAudioFeedGroup;
      v17 = v10;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_21911F6D4(v13, v4, type metadata accessor for CuratedAudioFeedGroup);
    v15 = sub_219BED7E4();
    v16 = type metadata accessor for CuratedAudioFeedGroup;
    v17 = v4;
LABEL_8:
    sub_21911F73C(v17, v16);
    return v15;
  }

  sub_21911F73C(v13, type metadata accessor for AudioFeedGroup);
  return MEMORY[0x277D84F90];
}

unint64_t sub_21911D564()
{
  v1 = v0;
  v2 = type metadata accessor for CuratedAudioFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup();
  MEMORY[0x28223BE20](AudioFeedGroup);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ForYouAudioFeedGroup();
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AudioFeedGroup();
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21909E61C(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_21911F6D4(v13, v7, type metadata accessor for UpNextAudioFeedGroup);
      v15 = sub_219BED804();
      v16 = type metadata accessor for UpNextAudioFeedGroup;
      v17 = v7;
    }

    else
    {
      sub_21911F6D4(v13, v10, type metadata accessor for ForYouAudioFeedGroup);
      v15 = sub_219BED804();
      v16 = type metadata accessor for ForYouAudioFeedGroup;
      v17 = v10;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_21911F6D4(v13, v4, type metadata accessor for CuratedAudioFeedGroup);
    v15 = sub_219BED804();
    v16 = type metadata accessor for CuratedAudioFeedGroup;
    v17 = v4;
LABEL_8:
    sub_21911F73C(v17, v16);
    return v15;
  }

  sub_21911F73C(v13, type metadata accessor for AudioFeedGroup);
  return sub_2194AE6E8(MEMORY[0x277D84F90]);
}

uint64_t sub_21911D804@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21911CA8C();
  *a1 = result;
  return result;
}

uint64_t sub_21911D844(uint64_t a1)
{
  v2 = sub_218786358(&qword_280EDCD30, type metadata accessor for AudioFeedGroup);

  return MEMORY[0x282191918](a1, v2);
}

uint64_t sub_21911D8C0()
{
  sub_218786358(qword_280EDCD40, type metadata accessor for AudioFeedGroup);

  return sub_219BF1174();
}

uint64_t sub_21911D948(uint64_t a1)
{
  v2 = sub_218786358(qword_280EDCD40, type metadata accessor for AudioFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_21911D9B8()
{
  v1 = v0;
  v2 = type metadata accessor for CuratedAudioFeedGroup();
  MEMORY[0x28223BE20](v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AudioFeedGroup();
  MEMORY[0x28223BE20](v5);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21909E61C(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21911F73C(v7, type metadata accessor for AudioFeedGroup);
      return 0x6C6C6177796150;
    }

    else
    {
      sub_21911F6D4(v7, v4, type metadata accessor for CuratedAudioFeedGroup);
      v11[0] = 0x2064657461727543;
      v11[1] = 0xE900000000000028;
      MEMORY[0x21CECC330](*&v4[*(v2 + 20)], *&v4[*(v2 + 20) + 8]);
      MEMORY[0x21CECC330](41, 0xE100000000000000);
      v10 = v11[0];
      sub_21911F73C(v4, type metadata accessor for CuratedAudioFeedGroup);
      return v10;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_21911F73C(v7, type metadata accessor for AudioFeedGroup);
    return 0x7478654E207055;
  }

  else
  {
    sub_21911F73C(v7, type metadata accessor for AudioFeedGroup);
    return 0x756F5920726F46;
  }
}

uint64_t sub_21911DBD8()
{
  v1 = v0;
  v2 = type metadata accessor for CuratedAudioFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AudioFeedGroup();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21909E61C(v1, v7);
  if (swift_getEnumCaseMultiPayload() > 2)
  {
    sub_21911F6D4(v7, v4, type metadata accessor for CuratedAudioFeedGroup);
    v9 = sub_219BED774();
    sub_21911F73C(v4, type metadata accessor for CuratedAudioFeedGroup);
    return v9;
  }

  else
  {
    sub_21911F73C(v7, type metadata accessor for AudioFeedGroup);
    return 0;
  }
}

uint64_t sub_21911DD34()
{
  sub_218786358(&qword_280EDCD08, type metadata accessor for AudioFeedGroup);

  return sub_219BE2324();
}

uint64_t sub_21911DDA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CuratedAudioFeedGroup();
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup();
  MEMORY[0x28223BE20](AudioFeedGroup);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ForYouAudioFeedGroup();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AudioFeedGroup();
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21909E61C(v2, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return sub_21911F73C(v15, type metadata accessor for AudioFeedGroup);
    }

    sub_21911F6D4(v15, v6, type metadata accessor for CuratedAudioFeedGroup);
    *(a1 + 24) = v4;
    *(a1 + 32) = sub_218786358(&qword_280ECB800, type metadata accessor for CuratedAudioFeedGroup);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    v18 = v6;
    v19 = type metadata accessor for CuratedAudioFeedGroup;
  }

  else if (EnumCaseMultiPayload)
  {
    sub_21911F6D4(v15, v9, type metadata accessor for UpNextAudioFeedGroup);
    *(a1 + 24) = AudioFeedGroup;
    *(a1 + 32) = sub_218786358(&qword_27CC0F158, type metadata accessor for UpNextAudioFeedGroup);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    v18 = v9;
    v19 = type metadata accessor for UpNextAudioFeedGroup;
  }

  else
  {
    sub_21911F6D4(v15, v12, type metadata accessor for ForYouAudioFeedGroup);
    *(a1 + 24) = v10;
    *(a1 + 32) = sub_218786358(&qword_280ECEB18, type metadata accessor for ForYouAudioFeedGroup);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    v18 = v12;
    v19 = type metadata accessor for ForYouAudioFeedGroup;
  }

  return sub_21911F6D4(v18, boxed_opaque_existential_1, v19);
}

uint64_t sub_21911E0DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CuratedAudioFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup();
  MEMORY[0x28223BE20](AudioFeedGroup);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ForYouAudioFeedGroup();
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AudioFeedGroup();
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21909E61C(v2, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v19 = sub_219BF1904();
      (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
      return sub_21911F73C(v15, type metadata accessor for AudioFeedGroup);
    }

    sub_21911F6D4(v15, v6, type metadata accessor for CuratedAudioFeedGroup);
    sub_219BED874();
    v17 = type metadata accessor for CuratedAudioFeedGroup;
    v18 = v6;
  }

  else if (EnumCaseMultiPayload)
  {
    sub_21911F6D4(v15, v9, type metadata accessor for UpNextAudioFeedGroup);
    sub_219BED874();
    v17 = type metadata accessor for UpNextAudioFeedGroup;
    v18 = v9;
  }

  else
  {
    sub_21911F6D4(v15, v12, type metadata accessor for ForYouAudioFeedGroup);
    sub_219BED874();
    v17 = type metadata accessor for ForYouAudioFeedGroup;
    v18 = v12;
  }

  sub_21911F73C(v18, v17);
  v21 = sub_219BF1904();
  return (*(*(v21 - 8) + 56))(a1, 0, 1, v21);
}

uint64_t sub_21911E3F8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AudioHScrollBlueprintAnimator();
  sub_218786358(qword_280EB1620, type metadata accessor for AudioHScrollBlueprintAnimator);
  sub_219BE7284();
  v2 = sub_219BE72A4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_21911E4C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = type metadata accessor for CuratedAudioFeedGroup();
  MEMORY[0x28223BE20](v28);
  v26 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup();
  MEMORY[0x28223BE20](AudioFeedGroup);
  v25 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ForYouAudioFeedGroup();
  MEMORY[0x28223BE20](v31);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21911F61C(0, &qword_27CC165D8, MEMORY[0x277D844C8]);
  v8 = v7;
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - v9;
  v11 = type metadata accessor for AudioFeedGroup();
  MEMORY[0x28223BE20](v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21911F574();
  v14 = v32;
  sub_219BF7B34();
  if (!v14)
  {
    v32 = a1;
    v15 = v30;
    v24[0] = v13;
    v24[1] = v11;
    v36 = 0;
    sub_21911F5C8();
    sub_219BF7734();
    v16 = v10;
    v17 = v15;
    if (v37)
    {
      if (v37 != 1)
      {
        v35 = 1;
        sub_218786358(&qword_280ECB808, type metadata accessor for CuratedAudioFeedGroup);
        v20 = v26;
        sub_219BF7734();
        v21 = v29;
        (*(v15 + 8))(v16, v8);
        v19 = v24[0];
        sub_21911F6D4(v20, v24[0], type metadata accessor for CuratedAudioFeedGroup);
LABEL_10:
        swift_storeEnumTagMultiPayload();
        sub_21911F6D4(v19, v21, type metadata accessor for AudioFeedGroup);
        v22 = v32;
        return __swift_destroy_boxed_opaque_existential_1(v22);
      }

      v34 = 1;
      sub_218786358(&qword_27CC0F130, type metadata accessor for UpNextAudioFeedGroup);
      v18 = v25;
      sub_219BF7734();
      (*(v17 + 8))(v10, v8);
      v19 = v24[0];
      sub_21911F6D4(v18, v24[0], type metadata accessor for UpNextAudioFeedGroup);
    }

    else
    {
      v33 = 1;
      sub_218786358(&qword_280ECEB20, type metadata accessor for ForYouAudioFeedGroup);
      sub_219BF7734();
      (*(v15 + 8))(v10, v8);
      v19 = v24[0];
      sub_21911F6D4(v6, v24[0], type metadata accessor for ForYouAudioFeedGroup);
    }

    v21 = v29;
    goto LABEL_10;
  }

  v22 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_21911EA20(void *a1)
{
  v2 = v1;
  v30 = type metadata accessor for CuratedAudioFeedGroup();
  MEMORY[0x28223BE20](v30);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup();
  MEMORY[0x28223BE20](AudioFeedGroup);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ForYouAudioFeedGroup();
  MEMORY[0x28223BE20](v28);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AudioFeedGroup();
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21911F61C(0, &qword_27CC165F0, MEMORY[0x277D84538]);
  v13 = *(v12 - 8);
  v33 = v12;
  v34 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21911F574();
  sub_219BF7B44();
  sub_21909E61C(v2, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21911F73C(v11, type metadata accessor for AudioFeedGroup);
      v21 = sub_219BEE394();
      sub_218786358(&qword_27CC0B9E0, MEMORY[0x277D31FD8]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D31FD0], v21);
      swift_willThrow();
      return (*(v34 + 8))(v15, v33);
    }

    v26 = v31;
    sub_21911F6D4(v11, v31, type metadata accessor for CuratedAudioFeedGroup);
    v42 = 2;
    v41 = 0;
    sub_21911F680();
    v27 = v32;
    v17 = v33;
    sub_219BF7834();
    if (!v27)
    {
      v40 = 1;
      sub_218786358(&qword_280ECB818, type metadata accessor for CuratedAudioFeedGroup);
      sub_219BF7834();
    }

    v19 = type metadata accessor for CuratedAudioFeedGroup;
    v20 = v26;
    goto LABEL_14;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_21911F6D4(v11, v8, type metadata accessor for ForYouAudioFeedGroup);
    v36 = 0;
    sub_21911F680();
    v18 = v32;
    v17 = v33;
    sub_219BF7834();
    if (!v18)
    {
      v35 = 1;
      sub_218786358(&qword_280ECEB30, type metadata accessor for ForYouAudioFeedGroup);
      sub_219BF7834();
    }

    v19 = type metadata accessor for ForYouAudioFeedGroup;
    v20 = v8;
LABEL_14:
    sub_21911F73C(v20, v19);
    return (*(v34 + 8))(v15, v17);
  }

  sub_21911F6D4(v11, v6, type metadata accessor for UpNextAudioFeedGroup);
  v39 = 1;
  v38 = 0;
  sub_21911F680();
  v24 = v32;
  v25 = v33;
  sub_219BF7834();
  if (!v24)
  {
    v37 = 1;
    sub_218786358(&qword_27CC0F138, type metadata accessor for UpNextAudioFeedGroup);
    sub_219BF7834();
  }

  sub_21911F73C(v6, type metadata accessor for UpNextAudioFeedGroup);
  return (*(v34 + 8))(v15, v25);
}

uint64_t sub_21911F010()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21911F0AC()
{
  sub_219BF5524();
}

uint64_t sub_21911F134()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21911F1CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21911FA08();
  *a1 = result;
  return result;
}

void sub_21911F1FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7478654E7075;
  if (v2 != 1)
  {
    v5 = 0x64657461727563;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x756F59726F66;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21911F254(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7478654E7075;
  if (v2 != 1)
  {
    v5 = 0x64657461727563;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x756F59726F66;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x7478654E7075;
  if (*a2 != 1)
  {
    v8 = 0x64657461727563;
    v3 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x756F59726F66;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_21911F408@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_21911F468@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_21911F4CC(uint64_t a1)
{
  v2 = sub_21911F574();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21911F508(uint64_t a1)
{
  v2 = sub_21911F574();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21911F574()
{
  result = qword_27CC165E0;
  if (!qword_27CC165E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC165E0);
  }

  return result;
}

unint64_t sub_21911F5C8()
{
  result = qword_27CC165E8;
  if (!qword_27CC165E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC165E8);
  }

  return result;
}

void sub_21911F61C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21911F574();
    v7 = a3(a1, &type metadata for AudioFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21911F680()
{
  result = qword_27CC165F8;
  if (!qword_27CC165F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC165F8);
  }

  return result;
}

uint64_t sub_21911F6D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21911F73C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21911F7C0()
{
  result = qword_27CC16600;
  if (!qword_27CC16600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16600);
  }

  return result;
}

void sub_21911F85C()
{
  if (!qword_27CC16610)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC16610);
    }
  }
}

unint64_t sub_21911F8B0()
{
  result = qword_27CC16618;
  if (!qword_27CC16618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16618);
  }

  return result;
}

unint64_t sub_21911F908()
{
  result = qword_27CC16620;
  if (!qword_27CC16620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16620);
  }

  return result;
}

unint64_t sub_21911F960()
{
  result = qword_27CC16628;
  if (!qword_27CC16628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16628);
  }

  return result;
}

unint64_t sub_21911F9B4()
{
  result = qword_27CC16630;
  if (!qword_27CC16630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16630);
  }

  return result;
}

uint64_t sub_21911FA08()
{
  v0 = sub_219BF7614();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

id sub_21911FAD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21911FCF4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21911FB04()
{
  sub_2189698E4();
  MEMORY[0x28223BE20](v0);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF0A14();
  v3 = sub_219BF2204();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return 0;
  }

  v5 = (*(v4 + 88))(v2, v3);
  if (v5 == *MEMORY[0x277D337A0] || v5 == *MEMORY[0x277D33798])
  {
    return 1;
  }

  if (v5 == *MEMORY[0x277D33790])
  {
    return 0;
  }

  result = sub_219BF78E4();
  __break(1u);
  return result;
}

uint64_t sub_21911FC4C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_219BEAA24();
    sub_219BF0AC4();
    sub_219BE6FD4();

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21911FCF4()
{
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI235FeedPuzzleRevealStateCommandHandler_puzzleHistoryService), *(v0 + OBJC_IVAR____TtC7NewsUI235FeedPuzzleRevealStateCommandHandler_puzzleHistoryService + 24));
  v1 = [sub_219BF0AA4() identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v2 = sub_219BF3424();

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 usedReveal];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 BOOLValue];

    v2 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_21911FE2C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_21911FEF4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_21911FFF4(void *a1)
{
  v3 = v1;
  sub_219120A44(0, &qword_27CC16658, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219120930();
  sub_219BF7B44();
  LOBYTE(v12) = 0;
  sub_219BF77F4();
  if (!v2)
  {
    v12 = *(v3 + 16);
    HIBYTE(v11) = 1;
    sub_2189684CC();
    sub_219BF7834();
    v12 = *(v3 + 24);
    HIBYTE(v11) = 2;
    sub_2186DD55C(0, &qword_280E8F0F0, type metadata accessor for LegacyAudioConfigArticle, MEMORY[0x277D83940]);
    sub_219120AA8(&qword_27CC114B0, &qword_27CC114B8);
    sub_219BF7834();
    LOBYTE(v12) = 3;
    sub_219BF77B4();
    type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig();
    LOBYTE(v12) = 4;
    sub_219BDBD34();
    sub_219120B6C(&qword_280EE9CA0, MEMORY[0x277CC9578]);
    sub_219BF77E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2191202D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_2186DD55C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  sub_219120A44(0, &qword_27CC16648, MEMORY[0x277D844C8]);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig();
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219120930();
  v12 = v21;
  sub_219BF7B34();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v9;
  LOBYTE(v23) = 0;
  *v11 = sub_219BF76F4();
  *(v11 + 1) = v13;
  v22 = 1;
  sub_218968414();
  sub_219BF7734();
  *(v11 + 2) = v23;
  sub_2186DD55C(0, &qword_280E8F0F0, type metadata accessor for LegacyAudioConfigArticle, MEMORY[0x277D83940]);
  v22 = 2;
  sub_219120AA8(&qword_27CC114A0, qword_280EC1758);
  sub_219BF7734();
  *(v11 + 3) = v23;
  LOBYTE(v23) = 3;
  v14 = sub_219BF76B4();
  v17 = 0;
  *(v11 + 4) = v14;
  v11[40] = v15 & 1;
  sub_219BDBD34();
  LOBYTE(v23) = 4;
  sub_219120B6C(&unk_280EE9C70, MEMORY[0x277CC9578]);
  sub_219BF76E4();
  MEMORY[8](v8, v20);
  sub_218A5DD60(v5, &v11[*(v21 + 32)]);
  sub_219120984(v11, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2191209E8(v11);
}

uint64_t sub_2191207C0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x73656C6369747261;
  v4 = 7107700;
  if (v1 != 3)
  {
    v4 = 0x61636F4C72657375;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73746F6C73;
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

uint64_t sub_219120860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219120CCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219120888(uint64_t a1)
{
  v2 = sub_219120930();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2191208C4(uint64_t a1)
{
  v2 = sub_219120930();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219120930()
{
  result = qword_27CC16650;
  if (!qword_27CC16650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16650);
  }

  return result;
}

uint64_t sub_219120984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2191209E8(uint64_t a1)
{
  v2 = type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219120A44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219120930();
    v7 = a3(a1, &type metadata for LegacyAudioEditorialHeroFeedGroupConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219120AA8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_2186DD55C(255, &qword_280E8F0F0, type metadata accessor for LegacyAudioConfigArticle, MEMORY[0x277D83940]);
    sub_219120B6C(a2, type metadata accessor for LegacyAudioConfigArticle);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219120B6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219120BC8()
{
  result = qword_27CC16660;
  if (!qword_27CC16660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16660);
  }

  return result;
}

unint64_t sub_219120C20()
{
  result = qword_27CC16668;
  if (!qword_27CC16668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16668);
  }

  return result;
}

unint64_t sub_219120C78()
{
  result = qword_27CC16670;
  if (!qword_27CC16670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16670);
  }

  return result;
}

uint64_t sub_219120CCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746F6C73 && a2 == 0xE500000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656C6369747261 && a2 == 0xE800000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107700 && a2 == 0xE300000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61636F4C72657375 && a2 == 0xEF7972697078456CLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t type metadata accessor for MySportsTopicTagFeedGroupKnobs()
{
  result = qword_280EAC318;
  if (!qword_280EAC318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219120EFC()
{
  sub_2189AD5C8();
  if (v0 <= 0x3F)
  {
    sub_2186F9548();
    if (v1 <= 0x3F)
    {
      sub_2186F95C4();
      if (v2 <= 0x3F)
      {
        sub_2186ECA28();
        if (v3 <= 0x3F)
        {
          sub_218D525A0();
          if (v4 <= 0x3F)
          {
            sub_219BEF244();
            if (v5 <= 0x3F)
            {
              sub_2190E9EE0();
              if (v6 <= 0x3F)
              {
                sub_218D528A0();
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

uint64_t sub_21912106C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v85 = a8;
  v86 = a7;
  v87 = a6;
  v88 = a5;
  v89 = a4;
  v90 = a3;
  sub_219123FEC(0, &qword_280E916D0, MEMORY[0x277D324F0]);
  MEMORY[0x28223BE20](v29 - 8);
  v79 = v78 - v30;
  v81 = sub_219BEF244();
  v31 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219123FEC(0, &qword_280E91A70, sub_2189AD5C8);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = v78 - v34;
  sub_2189AD5C8();
  v37 = v36;
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v40 = v78 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a1;
  sub_219124040(a1, v35, &qword_280E91A70, sub_2189AD5C8);
  v41 = *(v38 + 48);
  if (v41(v35, 1, v37) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877C9D8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    sub_219BEE974();
    if (v41(v35, 1, v37) != 1)
    {
      sub_2191240AC(v35, &qword_280E91A70, sub_2189AD5C8);
    }
  }

  else
  {
    (*(v38 + 32))(v40, v35, v37);
  }

  (*(v38 + 32))(a9, v40, v37);
  v42 = v89;
  v43 = v87;
  if (a2)
  {
    v44 = a2;
  }

  else
  {
    v95 = 1;
    sub_2186F9548();
    swift_allocObject();
    v44 = sub_219BEF534();
  }

  v45 = v90;
  v46 = type metadata accessor for MySportsTopicTagFeedGroupKnobs();
  *(a9 + v46[6]) = v44;
  if (v45)
  {

    v47 = v45;
  }

  else
  {
    v95 = 5;
    sub_2186F9548();
    swift_allocObject();

    v47 = sub_219BEF534();
  }

  *(a9 + v46[5]) = v47;
  if (v42)
  {

    v48 = v42;
  }

  else
  {
    LOBYTE(v95) = 1;
    sub_2186F95C4();
    swift_allocObject();

    v48 = sub_219BEF534();
  }

  *(a9 + v46[7]) = v48;
  v49 = v88;
  if (v88)
  {

    v50 = v49;
  }

  else
  {
    v95 = 0;
    sub_2186ECA28();
    swift_allocObject();

    v50 = sub_219BEF534();
  }

  *(a9 + v46[8]) = v50;
  if (v43)
  {

    v51 = v43;
  }

  else
  {
    v95 = 0x40E5180000000000;
    sub_2186ECA28();
    swift_allocObject();

    v51 = sub_219BEF534();
  }

  *(a9 + v46[9]) = v51;
  v52 = v86;
  if (v86)
  {

    v53 = v52;
  }

  else
  {
    v95 = 30;
    sub_2186F9548();
    swift_allocObject();

    v53 = sub_219BEF534();
  }

  *(a9 + v46[10]) = v53;
  v54 = v85;
  if (v85)
  {

    v55 = v54;
  }

  else
  {
    LOBYTE(v95) = 1;
    sub_218D525A0();
    swift_allocObject();

    v55 = sub_219BEF534();
  }

  *(a9 + v46[11]) = v55;
  if (a10)
  {

    v56 = a10;
  }

  else
  {
    v95 = 1;
    sub_2186F9548();
    swift_allocObject();

    v56 = sub_219BEF534();
  }

  *(a9 + v46[12]) = v56;
  if (a11)
  {

    v57 = a11;
  }

  else
  {
    v95 = 5;
    sub_2186F9548();
    swift_allocObject();

    v57 = sub_219BEF534();
  }

  *(a9 + v46[13]) = v57;
  if (a12)
  {

    v58 = a12;
  }

  else
  {
    LOBYTE(v95) = 1;
    sub_2186F95C4();
    swift_allocObject();

    v58 = sub_219BEF534();
  }

  *(a9 + v46[14]) = v58;
  if (a13)
  {

    v59 = a13;
  }

  else
  {
    v95 = 1;
    sub_2186F9548();
    swift_allocObject();

    v59 = sub_219BEF534();
  }

  v84 = a19;
  v92 = a17;
  v93 = a18;
  v91 = a16;
  v94 = a15;
  *(a9 + v46[15]) = v59;
  if (a14)
  {

    v60 = a14;
  }

  else
  {
    v95 = 0x7FFFFFFFFFFFFFFFLL;
    sub_2186F9548();
    swift_allocObject();

    v60 = sub_219BEF534();
  }

  v78[3] = a12;
  v78[4] = a11;
  v78[5] = a10;
  *(a9 + v46[16]) = v60;
  v61 = v94;
  v78[2] = a13;
  v78[1] = a14;
  if (v94)
  {

    v63 = v91;
    v62 = v92;
    v64 = v93;
  }

  else
  {
    sub_218D554B0();
    swift_allocObject();

    v61 = sub_219BEF274();
    sub_218D55534();
    swift_allocObject();
    v63 = sub_219BEF274();
    v95 = 0;
    sub_218D556B4();
    swift_allocObject();
    v62 = sub_219BEF534();
    LOBYTE(v95) = 1;
    sub_2186F95C4();
    swift_allocObject();
    v64 = sub_219BEF534();
  }

  v65 = (a9 + v46[17]);
  *v65 = v61;
  v65[1] = v63;
  v65[2] = v62;
  v65[3] = v64;
  v66 = v79;
  sub_219124040(v84, v79, &qword_280E916D0, MEMORY[0x277D324F0]);
  v67 = *(v31 + 48);
  v68 = v81;
  if (v67(v66, 1, v81) == 1)
  {
    sub_218D55834(v94);
    v69 = v80;
    sub_219BEF1C4();
    if (v67(v66, 1, v68) != 1)
    {
      sub_2191240AC(v66, &qword_280E916D0, MEMORY[0x277D324F0]);
    }
  }

  else
  {
    v69 = v80;
    (*(v31 + 32))(v80, v66, v68);
    sub_218D55834(v94);
  }

  (*(v31 + 32))(a9 + v46[18], v69, v68);
  if (a20)
  {
    v70 = a20;
  }

  else
  {
    v95 = 0x7FFFFFFFFFFFFFFFLL;
    sub_2186F9548();
    swift_allocObject();
    v70 = sub_219BEF534();
  }

  *(a9 + v46[19]) = v70;
  v82 = a2;
  if (a21)
  {

    v71 = a21;
  }

  else
  {
    sub_2190E9EE0();
    swift_allocObject();

    v71 = sub_219BEEE04();
  }

  *(a9 + v46[20]) = v71;
  if (a22)
  {

    v72 = a22;
  }

  else
  {
    LOBYTE(v95) = 1;
    sub_218D528A0();
    swift_allocObject();

    v72 = sub_219BEF534();
  }

  *(a9 + v46[21]) = v72;
  if (a23)
  {

    v73 = a23;
  }

  else
  {
    v95 = 6;
    sub_2186F9548();
    swift_allocObject();

    v73 = sub_219BEF534();
  }

  v74 = a25;
  *(a9 + v46[22]) = v73;
  if (a24)
  {

    v75 = a24;
  }

  else
  {
    v95 = 0x4059000000000000;
    sub_2186ECA28();
    swift_allocObject();

    v75 = sub_219BEF534();
  }

  v76 = a26;
  *(a9 + v46[23]) = v75;
  if (a25)
  {
  }

  else
  {
    v95 = 0;
    sub_2186ECA28();
    swift_allocObject();

    v74 = sub_219BEF534();
  }

  *(a9 + v46[24]) = v74;
  if (!a26)
  {
    LOBYTE(v95) = 1;
    sub_2186F95C4();
    swift_allocObject();
    v76 = sub_219BEF534();
  }

  sub_218D558FC(v94);

  sub_2191240AC(v84, &qword_280E916D0, MEMORY[0x277D324F0]);
  result = sub_2191240AC(v83, &qword_280E91A70, sub_2189AD5C8);
  *(a9 + v46[25]) = v76;
  return result;
}

uint64_t sub_219121D30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v133 = sub_219BEF244();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v126 = v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8();
  v131 = v4;
  v124 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v125 = v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for MySportsTopicTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v130);
  v7 = v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219123FEC(0, &qword_280E916D0, MEMORY[0x277D324F0]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v136 = v93 - v12;
  sub_219123FEC(0, &qword_280E91A70, sub_2189AD5C8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v123 = v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v135 = v93 - v16;
  sub_2191241C0(0, &qword_280E8CB28, MEMORY[0x277D844C8]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = v93 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219124108();
  v22 = v134;
  sub_219BF7B34();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v96 = v11;
  v99 = 0;
  v100 = v19;
  v134 = v7;
  v102 = a1;
  LOBYTE(v145) = 0;
  sub_21877C9D8(&qword_280E91A88, sub_2189AD5C8);
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v145) = 2;
  sub_21877C9D8(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v118 = v160;
  LOBYTE(v145) = 1;
  sub_219BF7674();
  v117 = v159;
  sub_2186F95C4();
  v25 = v24;
  LOBYTE(v145) = 3;
  v105 = sub_21877C9D8(&qword_280E913F8, sub_2186F95C4);
  sub_219BF7674();
  v116 = v158;
  sub_2186ECA28();
  v27 = v26;
  LOBYTE(v145) = 4;
  v104 = sub_21877C9D8(&qword_280E913D8, sub_2186ECA28);
  sub_219BF7674();
  v97 = v157;
  LOBYTE(v145) = 5;
  sub_219BF7674();
  v115 = v156;
  LOBYTE(v145) = 6;
  sub_219BF7674();
  v114 = v155;
  sub_218D525A0();
  v29 = v28;
  LOBYTE(v145) = 7;
  sub_21877C9D8(&qword_280E914F8, sub_218D525A0);
  v93[0] = v29;
  sub_219BF7674();
  v113 = v154;
  LOBYTE(v145) = 8;
  sub_219BF7674();
  v112 = v153;
  LOBYTE(v145) = 9;
  sub_219BF7674();
  v111 = v152;
  LOBYTE(v145) = 10;
  sub_219BF7674();
  v110 = v151;
  LOBYTE(v145) = 11;
  sub_219BF7674();
  v109 = v150;
  LOBYTE(v145) = 12;
  sub_219BF7674();
  v108 = v149;
  LOBYTE(v144) = 13;
  sub_218D553FC();
  sub_219BF7674();
  v129 = v145;
  v120 = v146;
  v121 = v147;
  v122 = v148;
  LOBYTE(v144) = 14;
  sub_21877C9D8(&qword_280E916D8, MEMORY[0x277D324F0]);
  sub_219BF7674();
  LOBYTE(v143) = 15;
  sub_219BF7674();
  v107 = v144;
  sub_2190E9EE0();
  v31 = v30;
  LOBYTE(v142) = 16;
  sub_21877C9D8(&qword_280E917B0, sub_2190E9EE0);
  v93[1] = v31;
  sub_219BF7674();
  v106 = v143;
  sub_218D528A0();
  v33 = v32;
  LOBYTE(v141) = 17;
  sub_21877C9D8(&qword_280E914A8, sub_218D528A0);
  v93[2] = v33;
  sub_219BF7674();
  v95 = v142;
  LOBYTE(v140) = 18;
  sub_219BF7674();
  v128 = v141;
  LOBYTE(v139) = 19;
  sub_219BF7674();
  v119 = v140;
  LOBYTE(v138) = 20;
  v103 = v27;
  sub_219BF7674();
  v94 = v139;
  LOBYTE(v137) = 21;
  v101 = v18;
  v104 = v25;
  sub_219BF7674();
  v105 = v138;
  v34 = v123;
  sub_219124040(v135, v123, &qword_280E91A70, sub_2189AD5C8);
  v35 = v124;
  v36 = *(v124 + 48);
  v37 = v131;
  if (v36(v34, 1, v131) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877C9D8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v38 = v125;
    sub_219BEE974();
    v39 = v36(v34, 1, v37);
    v40 = v130;
    v41 = v134;
    if (v39 != 1)
    {
      sub_2191240AC(v34, &qword_280E91A70, sub_2189AD5C8);
    }
  }

  else
  {
    v38 = v125;
    (*(v35 + 32))(v125, v34, v37);
    v40 = v130;
    v41 = v134;
  }

  (*(v35 + 32))(v41, v38, v37);
  v42 = v117;
  v43 = v110;
  if (v118)
  {
    v44 = v118;
  }

  else
  {
    v137 = 1;
    swift_allocObject();
    v44 = sub_219BEF534();
  }

  *&v41[v40[6]] = v44;
  if (v42)
  {

    v45 = v42;
  }

  else
  {
    v137 = 5;
    swift_allocObject();

    v45 = sub_219BEF534();
  }

  *&v41[v40[5]] = v45;
  v46 = v116;
  if (v116)
  {

    v47 = v46;
  }

  else
  {
    LOBYTE(v137) = 1;
    swift_allocObject();

    v47 = sub_219BEF534();
  }

  *&v41[v40[7]] = v47;
  v48 = v97;
  if (v97)
  {

    v49 = v48;
  }

  else
  {
    v137 = 0;
    swift_allocObject();

    v49 = sub_219BEF534();
  }

  *&v41[v40[8]] = v49;
  v50 = v115;
  if (v115)
  {

    v51 = v50;
  }

  else
  {
    v137 = 0x40E5180000000000;
    swift_allocObject();

    v51 = sub_219BEF534();
  }

  *&v41[v40[9]] = v51;
  v52 = v114;
  if (v114)
  {

    v53 = v52;
  }

  else
  {
    v137 = 30;
    swift_allocObject();

    v53 = sub_219BEF534();
  }

  *&v41[v40[10]] = v53;
  v54 = v113;
  if (v113)
  {

    v55 = v54;
  }

  else
  {
    LOBYTE(v137) = 1;
    swift_allocObject();

    v55 = sub_219BEF534();
  }

  *&v41[v40[11]] = v55;
  v56 = v112;
  if (v112)
  {

    v57 = v56;
  }

  else
  {
    v137 = 1;
    swift_allocObject();

    v57 = sub_219BEF534();
  }

  *&v41[v40[12]] = v57;
  v58 = v111;
  if (v111)
  {

    v59 = v58;
  }

  else
  {
    v137 = 5;
    swift_allocObject();

    v59 = sub_219BEF534();
  }

  *&v41[v40[13]] = v59;
  v60 = v109;
  if (v43)
  {

    v61 = v43;
  }

  else
  {
    LOBYTE(v137) = 1;
    swift_allocObject();

    v61 = sub_219BEF534();
  }

  *&v41[v40[14]] = v61;
  v62 = v108;
  if (v60)
  {

    v63 = v60;
  }

  else
  {
    v137 = 1;
    swift_allocObject();

    v63 = sub_219BEF534();
  }

  *&v41[v40[15]] = v63;
  v98 = v21;
  if (v62)
  {

    v64 = v62;
  }

  else
  {
    v137 = 0x7FFFFFFFFFFFFFFFLL;
    swift_allocObject();

    v64 = sub_219BEF534();
  }

  v65 = v135;
  *&v41[v40[16]] = v64;
  v66 = v133;
  v67 = v129;
  if (v129)
  {

    v68 = v120;
    v69 = v121;
    v70 = v122;
  }

  else
  {
    sub_218D554B0();
    swift_allocObject();

    v67 = sub_219BEF274();
    sub_218D55534();
    swift_allocObject();
    v68 = sub_219BEF274();
    v137 = 0;
    sub_218D556B4();
    swift_allocObject();
    v69 = sub_219BEF534();
    LOBYTE(v137) = 1;
    swift_allocObject();
    v40 = v130;
    v70 = sub_219BEF534();
  }

  v71 = &v134[v40[17]];
  *v71 = v67;
  v71[1] = v68;
  v71[2] = v69;
  v71[3] = v70;
  v72 = v96;
  sub_219124040(v136, v96, &qword_280E916D0, MEMORY[0x277D324F0]);
  v73 = v132;
  v74 = *(v132 + 48);
  if (v74(v72, 1, v66) == 1)
  {
    sub_218D55834(v129);
    v75 = v126;
    sub_219BEF1C4();
    v76 = v74(v72, 1, v66) == 1;
    v77 = v72;
    v78 = v65;
    if (!v76)
    {
      sub_2191240AC(v77, &qword_280E916D0, MEMORY[0x277D324F0]);
    }
  }

  else
  {
    v79 = *(v73 + 32);
    v75 = v126;
    v79(v126, v72, v66);
    sub_218D55834(v129);
    v78 = v65;
  }

  v80 = v134;
  (*(v132 + 32))(&v134[v40[18]], v75, v66);
  v81 = v94;
  if (v107)
  {
    v82 = v107;
  }

  else
  {
    v137 = 0x7FFFFFFFFFFFFFFFLL;
    swift_allocObject();
    v82 = sub_219BEF534();
  }

  *(v80 + v40[19]) = v82;
  v83 = v106;
  if (v106)
  {

    v84 = v83;
  }

  else
  {
    swift_allocObject();

    v84 = sub_219BEEE04();
  }

  *(v80 + v40[20]) = v84;
  v85 = v95;
  if (v95)
  {

    v86 = v85;
  }

  else
  {
    LOBYTE(v137) = 1;
    swift_allocObject();

    v86 = sub_219BEF534();
  }

  *(v80 + v40[21]) = v86;
  v87 = v128;
  if (v128)
  {

    v88 = v87;
  }

  else
  {
    v137 = 6;
    swift_allocObject();

    v88 = sub_219BEF534();
  }

  v89 = v101;
  v90 = v105;
  *(v80 + v40[22]) = v88;
  v91 = v119;
  if (v119)
  {

    v92 = v91;
  }

  else
  {
    v137 = 0x4059000000000000;
    swift_allocObject();

    v92 = sub_219BEF534();
  }

  *(v80 + v40[23]) = v92;
  if (v81)
  {
  }

  else
  {
    v137 = 0;
    swift_allocObject();

    v81 = sub_219BEF534();
  }

  *(v80 + v40[24]) = v81;
  if (!v90)
  {
    LOBYTE(v137) = 1;
    swift_allocObject();
    v90 = sub_219BEF534();
  }

  sub_218D558FC(v129);

  sub_2191240AC(v136, &qword_280E916D0, MEMORY[0x277D324F0]);
  sub_2191240AC(v78, &qword_280E91A70, sub_2189AD5C8);
  (*(v100 + 8))(v98, v89);
  *(v80 + v40[25]) = v90;
  sub_21912415C(v80, v127);
  return __swift_destroy_boxed_opaque_existential_1(v102);
}

unint64_t sub_21912340C(char a1)
{
  result = 0x73656C7572;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6F43657269707865;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x6E69576863746566;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x6564724F74726F73;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
    case 19:
      result = 0xD000000000000017;
      break;
    case 11:
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x726F5365726F6373;
      break;
    case 14:
      result = 0x676E6970756F7267;
      break;
    case 15:
      result = 0xD000000000000018;
      break;
    case 16:
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 20:
      result = 0xD000000000000016;
      break;
    case 21:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_219123670(void *a1)
{
  v3 = v1;
  sub_2191241C0(0, &qword_27CC16678, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219124108();
  sub_219BF7B44();
  LOBYTE(v24) = 0;
  sub_2189AD5C8();
  sub_21877C9D8(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for MySportsTopicTagFeedGroupKnobs();
    *&v24 = *(v3 + v10[5]);
    v26 = 1;
    sub_2186F9548();
    v12 = v11;
    sub_21877C9D8(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    *&v24 = *(v3 + v10[6]);
    v26 = 2;
    sub_219BF7834();
    v22[4] = v12;
    v23 = v10;
    *&v24 = *(v3 + v10[7]);
    v26 = 3;
    sub_2186F95C4();
    v14 = v13;
    v15 = sub_21877C9D8(&qword_280E91400, sub_2186F95C4);
    sub_219BF7834();
    v22[2] = v15;
    v22[3] = v14;
    *&v24 = *(v3 + v23[8]);
    v26 = 4;
    sub_2186ECA28();
    v17 = v16;
    v18 = sub_21877C9D8(&qword_280E913E0, sub_2186ECA28);
    sub_219BF7834();
    *&v24 = *(v3 + v23[9]);
    v26 = 5;
    sub_219BF7834();
    v22[0] = v18;
    v22[1] = v17;
    *&v24 = *(v3 + v23[10]);
    v26 = 6;
    sub_219BF7834();
    *&v24 = *(v3 + v23[11]);
    v26 = 7;
    sub_218D525A0();
    sub_21877C9D8(&qword_280E91500, sub_218D525A0);
    sub_219BF7834();
    *&v24 = *(v3 + v23[12]);
    v26 = 8;
    sub_219BF7834();
    *&v24 = *(v3 + v23[13]);
    v26 = 9;
    sub_219BF7834();
    *&v24 = *(v3 + v23[14]);
    v26 = 10;
    sub_219BF7834();
    *&v24 = *(v3 + v23[15]);
    v26 = 11;
    sub_219BF7834();
    *&v24 = *(v3 + v23[16]);
    v26 = 12;
    sub_219BF7834();
    v19 = (v3 + v23[17]);
    v20 = v19[1];
    v24 = *v19;
    v25 = v20;
    v26 = 13;
    sub_218D552D0();
    sub_219BF7834();
    LOBYTE(v24) = 14;
    sub_219BEF244();
    sub_21877C9D8(&unk_280E916E0, MEMORY[0x277D324F0]);
    sub_219BF7834();
    *&v24 = *(v3 + v23[19]);
    v26 = 15;
    sub_219BF7834();
    *&v24 = *(v3 + v23[20]);
    v26 = 16;
    sub_2190E9EE0();
    sub_21877C9D8(&qword_27CC16680, sub_2190E9EE0);
    sub_219BF7834();
    *&v24 = *(v3 + v23[21]);
    v26 = 17;
    sub_218D528A0();
    sub_21877C9D8(&qword_280E914B0, sub_218D528A0);
    sub_219BF7834();
    *&v24 = *(v3 + v23[22]);
    v26 = 18;
    sub_219BF7834();
    *&v24 = *(v3 + v23[23]);
    v26 = 19;
    sub_219BF7834();
    *&v24 = *(v3 + v23[24]);
    v26 = 20;
    sub_219BF7834();
    *&v24 = *(v3 + v23[25]);
    v26 = 21;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219123F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21912433C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219123F38(uint64_t a1)
{
  v2 = sub_219124108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219123F74(uint64_t a1)
{
  v2 = sub_219124108();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_219123FEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_219124040(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_219123FEC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2191240AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_219123FEC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_219124108()
{
  result = qword_280EAC348;
  if (!qword_280EAC348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAC348);
  }

  return result;
}

uint64_t sub_21912415C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MySportsTopicTagFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2191241C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219124108();
    v7 = a3(a1, &type metadata for MySportsTopicTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219124238()
{
  result = qword_27CC16688;
  if (!qword_27CC16688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16688);
  }

  return result;
}

unint64_t sub_219124290()
{
  result = qword_280EAC338;
  if (!qword_280EAC338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAC338);
  }

  return result;
}

unint64_t sub_2191242E8()
{
  result = qword_280EAC340;
  if (!qword_280EAC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAC340);
  }

  return result;
}

uint64_t sub_21912433C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43657269707865 && a2 == 0xED0000746E65746ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CF3AA0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E69576863746566 && a2 == 0xEB00000000776F64 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CE9C20 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6564724F74726F73 && a2 == 0xE900000000000072 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CF5060 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CF5080 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CF5000 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219CF5020 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219CF5040 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x726F5365726F6373 && a2 == 0xEC000000676E6974 || (sub_219BF78F4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x676E6970756F7267 && a2 == 0xED000073656C7552 || (sub_219BF78F4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000219D0C1B0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000219D0C1D0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CF4FA0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000219CF9890 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219D0C1F0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219D0C210 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219D0C230 == a2)
  {

    return 21;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 21;
    }

    else
    {
      return 22;
    }
  }
}

id sub_219124A14()
{
  v1 = OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController____lazy_storage___closeBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController____lazy_storage___closeBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController____lazy_storage___closeBarButtonItem);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:v0 action:sel_dismissVC];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_219124BF4()
{
  v1 = v0;
  v35.receiver = v0;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_blueprintViewController];
  [v0 addChildViewController_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  v7 = [v2 view];
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [v1 view];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame_];
  v19 = sub_219BF65B4();
  sub_218725F94();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_219C146A0;
  *(v20 + 32) = sub_219124A14();
  sub_2186C6148(0, &qword_280E8E5D0);
  v21 = sub_219BF5904();

  [v19 setLeftBarButtonItems_];

  sub_219BE8654();
  sub_219BE8664();
  v22 = sub_219BE7BC4();

  [v22 setAllowsSelectionDuringEditing_];

  sub_219BE8664();
  v23 = sub_219BE7BC4();

  [v23 setContentInsetAdjustmentBehavior_];

  v24 = &v1[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_pickerType];
  if (*&v1[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_pickerType + 8] <= 2uLL)
  {
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_searchModule], *&v1[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_searchModule + 24]);
    v25 = v24[1];
    v33 = *v24;
    v34 = v25;
    sub_218DB964C(v33, v25);
    v26 = sub_2195080B4(&v33);
    sub_218EC2854(v33, v34);
    v27 = *&v1[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_searchController];
    *&v1[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_searchController] = v26;
    v28 = v26;

    v29 = [v28 searchResultsController];
    if (v29)
    {
      v30 = v29;
      type metadata accessor for SearchViewController();
      if (swift_dynamicCastClass())
      {
        sub_218DA2DEC();
        v31 = v30;
      }

      else
      {
        v31 = v28;
        v28 = v30;
      }
    }
  }

  sub_219124F5C();
  v32 = [v1 traitCollection];
  sub_219126C94();
}

void sub_219124F5C()
{
  v1 = sub_219BF65B4();
  [v1 setLargeTitleDisplayMode_];

  v2 = sub_219BF65B4();
  v3 = *&v0[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_searchController];
  [v2 setSearchController_];

  v4 = sub_219BF65B4();
  [v4 setHidesSearchBarWhenScrolling_];

  v5 = sub_219BF65B4();
  [v5 setPreferredSearchBarPlacement_];

  v6 = sub_219BF65B4();
  v7 = [v6 searchController];

  if (v7)
  {
    [v7 setHidesNavigationBarDuringPresentation_];
  }

  v8 = sub_219BF65B4();
  v9 = [v8 searchController];

  if (v9)
  {
    [v9 setObscuresBackgroundDuringPresentation_];
  }

  v10 = sub_219BF65B4();
  v11 = [v10 searchController];

  if (v11)
  {
    v12 = [v11 searchBar];

    [v12 setDelegate_];
  }

  v13 = [v0 navigationController];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 navigationBar];

    [v15 setPrefersLargeTitles_];
  }
}

uint64_t sub_2191251F4(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_218747BDC(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = v2;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_viewWillAppear_, a1 & 1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v8 = sub_219BDC104();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_219BEA2C4();
    swift_unknownObjectRelease();
  }

  sub_219BE8664();
  v9 = sub_219BE7BC4();

  v10 = sub_219BDC104();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_219BF63E4();

  return sub_218A1C0F4(v7);
}

uint64_t sub_219125620()
{
  v19 = sub_219BEB384();
  v0 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BEB394();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_219BE8644();
  sub_2189DA200();
  v10 = &v6[*(v9 + 48)];
  v11 = *(v9 + 64);
  sub_219BE66B4();
  v12 = *MEMORY[0x277D6D9C8];
  v13 = sub_219BE73A4();
  (*(*(v13 - 8) + 104))(&v6[v11], v12, v13);
  v14 = sub_219BE6C74();
  v15 = MEMORY[0x277D6D7C0];
  v10[3] = v14;
  v10[4] = v15;
  __swift_allocate_boxed_opaque_existential_1(v10);
  sub_219BE6C24();
  (*(v4 + 104))(v6, *MEMORY[0x277D6EC90], v3);
  v16 = v19;
  (*(v0 + 104))(v2, *MEMORY[0x277D6ECA8], v19);
  sub_219BE6BD4();

  (*(v0 + 8))(v2, v16);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_219125934(uint64_t *a1, uint64_t a2)
{
  v4 = sub_219BEB384();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x28223BE20](v4);
  v62 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_219BEB394();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[5];
  if (!v8)
  {
    goto LABEL_33;
  }

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = a1[4] & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_33;
  }

  v10 = a1[7];
  if (!v10)
  {
    goto LABEL_33;
  }

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = a1[6] & 0xFFFFFFFFFFFFLL;
  }

  if (v11 && *(a2 + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_useAlternateTitle) == 1)
  {
    v70 = a1[4];
    v71 = v8;
    v68 = 28252;
    v69 = 0xE200000000000000;
    v66 = 10;
    v67 = 0xE100000000000000;
    sub_219126B3C();
    sub_219126B90();
    sub_219BF5ED4();
    v12 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v13 = sub_219BF53D4();

    v14 = [v12 initWithString_];

    v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v16 = sub_219BF53D4();
    v17 = [v15 initWithString_];

    sub_2186C6148(0, &unk_280E8E330);
    sub_218725F94();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_219C146A0;
    *(v18 + 32) = v17;
    v19 = v14;
    v20 = v17;
    v21 = sub_219BF6774();
    v22 = sub_219BF65B4();
    v23 = [v21 string];
  }

  else
  {
LABEL_33:
    if (a1[1])
    {
      v24 = *a1;
      v25 = a1[1];
    }

    else
    {
      v24 = 0;
      v25 = 0xE000000000000000;
    }

    v70 = v24;
    v71 = v25;
    v68 = 28252;
    v69 = 0xE200000000000000;
    v66 = 10;
    v67 = 0xE100000000000000;
    sub_219126B3C();
    sub_219126B90();

    sub_219BF5ED4();

    v26 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v27 = sub_219BF53D4();

    v28 = [v26 initWithString_];

    v29 = objc_allocWithZone(MEMORY[0x277CCA898]);

    v30 = sub_219BF53D4();

    v31 = [v29 initWithString_];

    sub_2186C6148(0, &unk_280E8E330);
    sub_218725F94();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_219C146A0;
    *(v32 + 32) = v31;
    v19 = v28;
    v20 = v31;
    v21 = sub_219BF6774();
    v22 = sub_219BF65B4();
    v23 = [v21 string];
  }

  v33 = v23;
  if (!v33)
  {
    sub_219BF5414();
    v33 = sub_219BF53D4();
  }

  [v22 setTitle_];

  v34 = sub_219BF65B4();
  [v34 _setSupportsTwoLineLargeTitles_];

  v35 = *(a2 + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_searchController);
  if (v35)
  {
    v36 = [v35 searchBar];
    if (v36)
    {
      v37 = v36;
      if (!a1[14])
      {
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v39 = [objc_opt_self() bundleForClass_];
        sub_219BDB5E4();
      }

      v40 = sub_219BF53D4();

      [v37 setPlaceholder_];
    }
  }

  v41 = a1[12];
  if (v41)
  {
    v42 = *(v41 + 16);
    if (!v42)
    {
LABEL_29:
      type metadata accessor for Localized();
      v45 = swift_getObjCClassFromMetadata();
      v46 = [objc_opt_self() bundleForClass_];
      sub_219BDB5E4();

      sub_219BE8644();
      sub_2189DA200();
      v48 = &v7[*(v47 + 48)];
      v49 = *(v47 + 64);
      sub_219BE66B4();
      v50 = *MEMORY[0x277D6D9C8];
      v51 = sub_219BE73A4();
      (*(*(v51 - 8) + 104))(&v7[v49], v50, v51);
      v52 = sub_219BE6C74();
      v53 = MEMORY[0x277D6D7C0];
      v48[3] = v52;
      v48[4] = v53;
      __swift_allocate_boxed_opaque_existential_1(v48);
      sub_219BE6C24();
      v44 = MEMORY[0x277D6EC90];
      goto LABEL_30;
    }

    v43 = v41 + 88;
    while (!*v43 || !*(*v43 + 16))
    {
      v43 += 344;
      if (!--v42)
      {
        goto LABEL_29;
      }
    }
  }

  sub_219BE8644();
  v44 = MEMORY[0x277D6EC88];
LABEL_30:
  v54 = v61;
  v55 = v63;
  (*(v61 + 104))(v7, *v44, v63);
  v57 = v64;
  v56 = v65;
  v58 = v62;
  (*(v64 + 104))(v62, *MEMORY[0x277D6ECA8], v65);
  sub_219BE6BD4();

  (*(v57 + 8))(v58, v56);
  return (*(v54 + 8))(v7, v55);
}

uint64_t sub_2191261EC()
{
  v19 = sub_219BEB384();
  v0 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BEB394();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  if (qword_27CC08A20 != -1)
  {
    swift_once();
  }

  v7 = qword_27CCD9078;
  v8 = sub_219BE9334();
  v9 = MEMORY[0x277D6E550];
  v6[3] = v8;
  v6[4] = v9;
  *v6 = v7;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();

  v12 = [v11 bundleForClass_];
  sub_219BDB5E4();

  v13 = sub_219BF54E4();
  v15 = v14;

  v6[5] = v13;
  v6[6] = v15;
  (*(v4 + 104))(v6, *MEMORY[0x277D6EC80], v3);
  v16 = v19;
  (*(v0 + 104))(v2, *MEMORY[0x277D6ECB0], v19);
  sub_219BE6BD4();

  (*(v0 + 8))(v2, v16);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2191264E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a3, v5);
  result = (*(v6 + 88))(v8, v5);
  if (result == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v8, v5);
LABEL_3:
    v10 = *(*(v3 + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    return (*(v10 + 40))(ObjectType, v10);
  }

  if (result == *MEMORY[0x277D6E928])
  {
    v12 = *(v3 + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_pickerType);
    v13 = *(v3 + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_pickerType + 8);
    v14 = *(*(v3 + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_eventHandler) + 40);
    v15 = swift_getObjectType();
    v18[0] = v12;
    v18[1] = v13;
    v16 = *(v14 + 32);
    sub_218DB964C(v12, v13);
    v16(v18, v15, v14);
    return sub_218EC2854(v12, v13);
  }

  else
  {
    if (result == *MEMORY[0x277D6E948] || result == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (result != *MEMORY[0x277D6E958])
    {
      if (result == *MEMORY[0x277D6E970])
      {
        goto LABEL_3;
      }

      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

uint64_t sub_219126720(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 48))(a2, ObjectType, v4);
}

void sub_219126854(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_searchController);
  if (v2)
  {
    v10 = v2;
    v4 = [v10 searchResultsController];
    if (v4)
    {
      v5 = v4;
      v6 = swift_dynamicCastObjCProtocolConditional();
      if (v6 && (v7 = v6, ([v6 respondsToSelector_] & 1) != 0))
      {
        v8 = v5;
        v9 = sub_219BF53D4();
        [v7 searchBar:a1 textDidChange:v9];
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_2191269F4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_searchController);
  if (v2)
  {
    v8 = v2;
    v4 = [v8 searchResultsController];
    if (v4)
    {
      v5 = v4;
      v6 = swift_dynamicCastObjCProtocolConditional();
      if (v6)
      {
        v7 = v6;
        if ([v6 respondsToSelector_])
        {
          [v7 searchBarCancelButtonClicked_];
        }
      }
    }

    else
    {
    }
  }
}

unint64_t sub_219126B3C()
{
  result = qword_27CC166F0;
  if (!qword_27CC166F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC166F0);
  }

  return result;
}

unint64_t sub_219126B90()
{
  result = qword_27CC166F8;
  if (!qword_27CC166F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC166F8);
  }

  return result;
}

void sub_219126BE4()
{
  *(v0 + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_searchController) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_selectionProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_postPurchaseOnboardingTransitionDelegate);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController____lazy_storage___closeBarButtonItem) = 0;
  sub_219BF7514();
  __break(1u);
}

void sub_219126C94()
{
  v1 = &v0[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_styler];
  sub_218718690(&v0[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_styler], v14);
  v2 = __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = *(*__swift_project_boxed_opaque_existential_1((*v2 + 16), *(*v2 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme);
    [v4 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v14);
    v6 = __swift_project_boxed_opaque_existential_1(v1, *(v1 + 3));
    sub_219BE8664();
    v7 = sub_219BE7BC4();

    v8 = *(*__swift_project_boxed_opaque_existential_1((*v6 + 16), *(*v6 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme);
    [v7 setBackgroundColor_];

    v9 = __swift_project_boxed_opaque_existential_1(v1, *(v1 + 3));
    v10 = sub_219BF65B4();
    v11 = *v9;
    if (sub_219BED0C4())
    {
      v12 = [objc_opt_self() clearColor];
    }

    else
    {
      v12 = *(*__swift_project_boxed_opaque_existential_1((v11 + 16), *(v11 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme);
    }

    v13 = v12;
    sub_219BEDA04();

    [v10 setBackButtonDisplayMode_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219126E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v342 = a4;
  v348 = a2;
  v349 = a3;
  v338 = a1;
  v350 = a5;
  v311 = type metadata accessor for TopResultSearchFeedGroup();
  v5 = MEMORY[0x28223BE20](v311);
  v308 = &v293 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v334 = (&v293 - v7);
  v309 = type metadata accessor for SportsSearchFeedGroup();
  v8 = MEMORY[0x28223BE20](v309);
  v306 = &v293 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v333 = (&v293 - v10);
  v307 = type metadata accessor for SavedRecipesSearchFeedGroup();
  v11 = MEMORY[0x28223BE20](v307);
  v304 = &v293 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v332 = &v293 - v13;
  v305 = type metadata accessor for RecipesSearchFeedGroup();
  v14 = MEMORY[0x28223BE20](v305);
  v303 = &v293 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v331 = &v293 - v16;
  v336 = type metadata accessor for TopicsSearchFeedGroup();
  v17 = MEMORY[0x28223BE20](v336);
  v335 = &v293 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v330 = &v293 - v19;
  v302 = type metadata accessor for ChannelsSearchFeedGroup();
  v20 = MEMORY[0x28223BE20](v302);
  v301 = &v293 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v329 = &v293 - v22;
  v355 = type metadata accessor for SearchModel(0);
  v337 = *(v355 - 8);
  v23 = MEMORY[0x28223BE20](v355);
  v353 = &v293 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v293 - v25;
  sub_2189539F0();
  v354 = v27;
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v300 = &v293 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v298 = &v293 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v299 = &v293 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v297 = &v293 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v294 = &v293 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v296 = &v293 - v40;
  MEMORY[0x28223BE20](v39);
  v295 = &v293 - v41;
  sub_218AF3B00();
  v43 = MEMORY[0x28223BE20](v42 - 8);
  v317 = &v293 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v315 = &v293 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v316 = &v293 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v314 = &v293 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v313 = &v293 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v312 = &v293 - v54;
  MEMORY[0x28223BE20](v53);
  v310 = &v293 - v55;
  v351 = sub_219BF1904();
  v347 = *(v351 - 8);
  MEMORY[0x28223BE20](v351);
  v345 = &v293 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v352 = type metadata accessor for SearchSectionDescriptor();
  v57 = MEMORY[0x28223BE20](v352);
  v328 = &v293 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v321 = (&v293 - v60);
  v61 = MEMORY[0x28223BE20](v59);
  v324 = &v293 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v326 = (&v293 - v64);
  v65 = MEMORY[0x28223BE20](v63);
  v325 = &v293 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v327 = (&v293 - v68);
  v69 = MEMORY[0x28223BE20](v67);
  v322 = &v293 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v323 = (&v293 - v72);
  v73 = MEMORY[0x28223BE20](v71);
  v319 = &v293 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v320 = (&v293 - v76);
  v77 = MEMORY[0x28223BE20](v75);
  v318 = &v293 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v81 = (&v293 - v80);
  v82 = MEMORY[0x28223BE20](v79);
  v84 = &v293 - v83;
  MEMORY[0x28223BE20](v82);
  v86 = (&v293 - v85);
  v87 = type metadata accessor for ArticlesSearchFeedGroup();
  v88 = MEMORY[0x28223BE20](v87);
  v90 = &v293 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v88);
  v92 = &v293 - v91;
  v93 = type metadata accessor for SearchFeedGroup();
  MEMORY[0x28223BE20](v93);
  v95 = &v293 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v342[1];
  v339 = *v342;
  v344 = v96;
  v97 = v342[3];
  v343 = v342[2];
  v340 = v97;
  v341 = v342[4];
  LODWORD(v342) = *(v342 + 40);
  sub_219129F18(v338, v95, type metadata accessor for SearchFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v331 = v87;
    v338 = v92;
    v332 = v84;
    v333 = v86;
    v124 = v335;
    v334 = v81;
    v125 = v336;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v126 = v329;
        sub_218EDF99C(v95, v329, type metadata accessor for ChannelsSearchFeedGroup);
        v127 = v301;
        sub_219129F18(v126, v301, type metadata accessor for ChannelsSearchFeedGroup);
        sub_219129F80(0, &qword_280EC9DD8, type metadata accessor for ChannelsSearchFeedGroup);
        v128 = swift_allocObject();
        sub_218EDF99C(v127, v128 + *(*v128 + 88), type metadata accessor for ChannelsSearchFeedGroup);
        v129 = v128 + *(*v128 + 96);
        v130 = v344;
        *v129 = v339;
        *(v129 + 8) = v130;
        v131 = v340;
        *(v129 + 16) = v343;
        *(v129 + 24) = v131;
        *(v129 + 32) = v341;
        *(v129 + 40) = v342;
        v132 = v334;
        *v334 = v128;
        swift_storeEnumTagMultiPayload();
        v133 = *(v126 + *(v302 + 20));
        v134 = *v346;

        v346 = v128;

        v135 = v345;
        sub_219BED874();
        v136 = sub_2190B8EF8();
        v138 = v137;
        v139 = sub_219BF18F4();
        MEMORY[0x28223BE20](v139);
        v140 = v349;
        *(&v293 - 6) = v348;
        *(&v293 - 5) = v133;
        *(&v293 - 4) = v134;
        *(&v293 - 3) = v140;
        *(&v293 - 2) = v136;
        *(&v293 - 1) = v138;
        v141 = sub_218DDFE70(sub_21912A070, (&v293 - 8), v139);

        (*(v347 + 8))(v135, v351);
        sub_219129F18(v132, v318, type metadata accessor for SearchSectionDescriptor);
        v142 = v141[2];
        if (v142)
        {
          v356 = MEMORY[0x277D84F90];
          sub_218C34C50(0, v142, 0);
          v143 = v356;
          v144 = *(v337 + 80);
          v351 = v141;
          v145 = v141 + ((v144 + 32) & ~v144);
          v146 = *(v337 + 72);
          v147 = v296;
          do
          {
            sub_219129F18(v145, v26, type metadata accessor for SearchModel);
            sub_219129F18(v26, v353, type metadata accessor for SearchModel);
            sub_219129E78(&qword_280EDF480, type metadata accessor for SearchModel);
            sub_219BE5FB4();
            sub_21912A000(v26, type metadata accessor for SearchModel);
            v356 = v143;
            v149 = *(v143 + 16);
            v148 = *(v143 + 24);
            if (v149 >= v148 >> 1)
            {
              sub_218C34C50(v148 > 1, v149 + 1, 1);
              v143 = v356;
            }

            *(v143 + 16) = v149 + 1;
            (*(v28 + 32))(v143 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v149, v147, v354);
            v145 += v146;
            --v142;
          }

          while (v142);

          v132 = v334;
        }

        else
        {

          v143 = MEMORY[0x277D84F90];
        }

        v280 = sub_219129E78(&qword_280EE5D08, sub_2189539F0);
        v281 = sub_219129E78(&unk_280EE5D10, sub_2189539F0);
        MEMORY[0x21CEB9170](v143, v354, v280, v281);
        sub_219129E78(qword_280EC3630, type metadata accessor for SearchSectionDescriptor);
        sub_219129E78(&qword_280EDF480, type metadata accessor for SearchModel);
        sub_219BE6924();

        sub_21912A000(v132, type metadata accessor for SearchSectionDescriptor);
        v278 = type metadata accessor for ChannelsSearchFeedGroup;
        v279 = &v356;
      }

      else
      {
        v198 = v330;
        sub_218EDF99C(v95, v330, type metadata accessor for TopicsSearchFeedGroup);
        v199 = v124;
        sub_219129F18(v198, v124, type metadata accessor for TopicsSearchFeedGroup);
        sub_219129F80(0, &qword_280EC9E08, type metadata accessor for TopicsSearchFeedGroup);
        v200 = swift_allocObject();
        sub_218EDF99C(v199, v200 + *(*v200 + 88), type metadata accessor for TopicsSearchFeedGroup);
        v201 = v200 + *(*v200 + 96);
        v202 = v344;
        *v201 = v339;
        *(v201 + 8) = v202;
        v203 = v340;
        *(v201 + 16) = v343;
        *(v201 + 24) = v203;
        *(v201 + 32) = v341;
        *(v201 + 40) = v342;
        v204 = v320;
        *v320 = v200;
        swift_storeEnumTagMultiPayload();
        v205 = *(v198 + *(v125 + 20));
        v206 = *v346;

        v346 = v200;

        v207 = v345;
        sub_219BED874();
        v208 = sub_2190B8EF8();
        v210 = v209;
        v211 = sub_219BF18F4();
        MEMORY[0x28223BE20](v211);
        v212 = v349;
        *(&v293 - 6) = v348;
        *(&v293 - 5) = v205;
        *(&v293 - 4) = v206;
        *(&v293 - 3) = v212;
        *(&v293 - 2) = v208;
        *(&v293 - 1) = v210;
        v213 = sub_218DDFE70(sub_21912A070, (&v293 - 8), v211);

        (*(v347 + 8))(v207, v351);
        sub_219129F18(v204, v319, type metadata accessor for SearchSectionDescriptor);
        v214 = v213[2];
        if (v214)
        {
          v356 = MEMORY[0x277D84F90];
          sub_218C34C50(0, v214, 0);
          v215 = v356;
          v216 = *(v337 + 80);
          v351 = v213;
          v217 = v213 + ((v216 + 32) & ~v216);
          v218 = *(v337 + 72);
          v219 = v294;
          do
          {
            sub_219129F18(v217, v26, type metadata accessor for SearchModel);
            sub_219129F18(v26, v353, type metadata accessor for SearchModel);
            sub_219129E78(&qword_280EDF480, type metadata accessor for SearchModel);
            sub_219BE5FB4();
            sub_21912A000(v26, type metadata accessor for SearchModel);
            v356 = v215;
            v220 = v219;
            v222 = *(v215 + 16);
            v221 = *(v215 + 24);
            if (v222 >= v221 >> 1)
            {
              sub_218C34C50(v221 > 1, v222 + 1, 1);
              v215 = v356;
            }

            *(v215 + 16) = v222 + 1;
            (*(v28 + 32))(v215 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v222, v220, v354);
            v217 += v218;
            --v214;
            v219 = v220;
          }

          while (v214);

          v204 = v320;
        }

        else
        {

          v215 = MEMORY[0x277D84F90];
        }

        v282 = sub_219129E78(&qword_280EE5D08, sub_2189539F0);
        v283 = sub_219129E78(&unk_280EE5D10, sub_2189539F0);
        MEMORY[0x21CEB9170](v215, v354, v282, v283);
        sub_219129E78(qword_280EC3630, type metadata accessor for SearchSectionDescriptor);
        sub_219129E78(&qword_280EDF480, type metadata accessor for SearchModel);
        sub_219BE6924();

        sub_21912A000(v204, type metadata accessor for SearchSectionDescriptor);
        v278 = type metadata accessor for TopicsSearchFeedGroup;
        v279 = &v357;
      }
    }

    else
    {
      v174 = v345;
      v175 = v338;
      sub_218EDF99C(v95, v338, type metadata accessor for ArticlesSearchFeedGroup);
      sub_219129F18(v175, v90, type metadata accessor for ArticlesSearchFeedGroup);
      sub_219129F80(0, &qword_280EC9DE8, type metadata accessor for ArticlesSearchFeedGroup);
      v176 = swift_allocObject();
      sub_218EDF99C(v90, v176 + *(*v176 + 88), type metadata accessor for ArticlesSearchFeedGroup);
      v177 = v176 + *(*v176 + 96);
      v178 = v344;
      *v177 = v339;
      *(v177 + 8) = v178;
      v179 = v340;
      *(v177 + 16) = v343;
      *(v177 + 24) = v179;
      *(v177 + 32) = v341;
      *(v177 + 40) = v342;
      v180 = v333;
      *v333 = v176;
      swift_storeEnumTagMultiPayload();
      v181 = *(v175 + *(v331 + 20));
      v182 = *v346;

      sub_219BED874();
      v183 = sub_2190B8EF8();
      v185 = v184;
      v186 = sub_219BF18F4();
      MEMORY[0x28223BE20](v186);
      v187 = v349;
      *(&v293 - 6) = v348;
      *(&v293 - 5) = v181;
      *(&v293 - 4) = v182;
      *(&v293 - 3) = v187;
      *(&v293 - 2) = v183;
      *(&v293 - 1) = v185;
      v188 = sub_218DDFE70(sub_21912A0A0, (&v293 - 8), v186);

      v189 = v180;
      (*(v347 + 8))(v174, v351);
      sub_219129F18(v180, v332, type metadata accessor for SearchSectionDescriptor);
      v190 = v188[2];
      v191 = v353;
      if (v190)
      {
        v356 = MEMORY[0x277D84F90];
        sub_218C34C50(0, v190, 0);
        v192 = v356;
        v193 = *(v337 + 80);
        v349 = v188;
        v194 = v188 + ((v193 + 32) & ~v193);
        v351 = *(v337 + 72);
        v195 = v295;
        do
        {
          sub_219129F18(v194, v26, type metadata accessor for SearchModel);
          sub_219129F18(v26, v191, type metadata accessor for SearchModel);
          sub_219129E78(&qword_280EDF480, type metadata accessor for SearchModel);
          sub_219BE5FB4();
          sub_21912A000(v26, type metadata accessor for SearchModel);
          v356 = v192;
          v197 = *(v192 + 16);
          v196 = *(v192 + 24);
          if (v197 >= v196 >> 1)
          {
            sub_218C34C50(v196 > 1, v197 + 1, 1);
            v192 = v356;
          }

          *(v192 + 16) = v197 + 1;
          (*(v28 + 32))(v192 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v197, v195, v354);
          v194 += v351;
          --v190;
        }

        while (v190);

        v189 = v333;
      }

      else
      {

        v192 = MEMORY[0x277D84F90];
      }

      v276 = sub_219129E78(&qword_280EE5D08, sub_2189539F0);
      v277 = sub_219129E78(&unk_280EE5D10, sub_2189539F0);
      MEMORY[0x21CEB9170](v192, v354, v276, v277);
      sub_219129E78(qword_280EC3630, type metadata accessor for SearchSectionDescriptor);
      sub_219129E78(&qword_280EDF480, type metadata accessor for SearchModel);
      sub_219BE6924();
      sub_21912A000(v189, type metadata accessor for SearchSectionDescriptor);
      v278 = type metadata accessor for ArticlesSearchFeedGroup;
      v279 = &v362;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v150 = v333;
      sub_218EDF99C(v95, v333, type metadata accessor for SportsSearchFeedGroup);
      v151 = v306;
      sub_219129F18(v150, v306, type metadata accessor for SportsSearchFeedGroup);
      sub_219129F80(0, &qword_280EC9E18, type metadata accessor for SportsSearchFeedGroup);
      v152 = swift_allocObject();
      sub_218EDF99C(v151, v152 + *(*v152 + 88), type metadata accessor for SportsSearchFeedGroup);
      v153 = v152 + *(*v152 + 96);
      v154 = v344;
      *v153 = v339;
      *(v153 + 8) = v154;
      v155 = v340;
      *(v153 + 16) = v343;
      *(v153 + 24) = v155;
      *(v153 + 32) = v341;
      *(v153 + 40) = v342;
      v156 = v326;
      *v326 = v152;
      swift_storeEnumTagMultiPayload();
      v157 = *(v150 + *(v309 + 20));
      v158 = *v346;

      v346 = v152;

      v159 = v345;
      sub_219BED874();
      v160 = sub_2190B8EF8();
      v162 = v161;
      v163 = sub_219BF18F4();
      MEMORY[0x28223BE20](v163);
      v164 = v349;
      *(&v293 - 6) = v348;
      *(&v293 - 5) = v157;
      *(&v293 - 4) = v158;
      *(&v293 - 3) = v164;
      *(&v293 - 2) = v160;
      *(&v293 - 1) = v162;
      v165 = sub_218DDFE70(sub_21912A070, (&v293 - 8), v163);

      (*(v347 + 8))(v159, v351);
      sub_219129F18(v156, v324, type metadata accessor for SearchSectionDescriptor);
      v166 = v165[2];
      if (v166)
      {
        v356 = MEMORY[0x277D84F90];
        sub_218C34C50(0, v166, 0);
        v167 = v356;
        v168 = *(v337 + 80);
        v349 = v165;
        v169 = v165 + ((v168 + 32) & ~v168);
        v351 = *(v337 + 72);
        v170 = v353;
        v171 = v298;
        do
        {
          sub_219129F18(v169, v26, type metadata accessor for SearchModel);
          sub_219129F18(v26, v170, type metadata accessor for SearchModel);
          sub_219129E78(&qword_280EDF480, type metadata accessor for SearchModel);
          sub_219BE5FB4();
          sub_21912A000(v26, type metadata accessor for SearchModel);
          v356 = v167;
          v173 = *(v167 + 16);
          v172 = *(v167 + 24);
          if (v173 >= v172 >> 1)
          {
            sub_218C34C50(v172 > 1, v173 + 1, 1);
            v167 = v356;
          }

          *(v167 + 16) = v173 + 1;
          (*(v28 + 32))(v167 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v173, v171, v354);
          v169 += v351;
          --v166;
        }

        while (v166);
      }

      else
      {

        v167 = MEMORY[0x277D84F90];
      }

      v286 = sub_219129E78(&qword_280EE5D08, sub_2189539F0);
      v287 = sub_219129E78(&unk_280EE5D10, sub_2189539F0);
      MEMORY[0x21CEB9170](v167, v354, v286, v287);
      sub_219129E78(qword_280EC3630, type metadata accessor for SearchSectionDescriptor);
      sub_219129E78(&qword_280EDF480, type metadata accessor for SearchModel);
      sub_219BE6924();

      sub_21912A000(v326, type metadata accessor for SearchSectionDescriptor);
      v278 = type metadata accessor for SportsSearchFeedGroup;
      v279 = &v360;
    }

    else
    {
      v249 = v334;
      sub_218EDF99C(v95, v334, type metadata accessor for TopResultSearchFeedGroup);
      v250 = v308;
      sub_219129F18(v249, v308, type metadata accessor for TopResultSearchFeedGroup);
      sub_219129F80(0, &qword_280EC9DC8, type metadata accessor for TopResultSearchFeedGroup);
      v251 = swift_allocObject();
      sub_218EDF99C(v250, v251 + *(*v251 + 88), type metadata accessor for TopResultSearchFeedGroup);
      v252 = v251 + *(*v251 + 96);
      v253 = v344;
      *v252 = v339;
      *(v252 + 8) = v253;
      v254 = v340;
      *(v252 + 16) = v343;
      *(v252 + 24) = v254;
      *(v252 + 32) = v341;
      *(v252 + 40) = v342;
      v255 = v321;
      *v321 = v251;
      swift_storeEnumTagMultiPayload();
      v256 = v249 + *(v311 + 20);
      v257 = *v256;
      LOBYTE(v250) = v256[8];
      v258 = v345;
      v342 = *v346;

      v346 = v251;

      sub_219BED874();
      sub_218725F94();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_219C146A0;
      *(inited + 32) = v257;
      swift_unknownObjectRetain();
      v260 = sub_2190B8EF8();
      v262 = v261;
      v263 = sub_219BF18F4();
      MEMORY[0x28223BE20](v263);
      *(&v293 - 6) = v348;
      *(&v293 - 5) = inited;
      v264 = v349;
      *(&v293 - 4) = v342;
      *(&v293 - 3) = v264;
      *(&v293 - 2) = v260;
      *(&v293 - 1) = v262;
      if (v250)
      {
        v265 = sub_219129E4C;
      }

      else
      {
        v265 = sub_219129EC0;
      }

      v266 = sub_218DDFE70(v265, (&v293 - 8), v263);

      swift_setDeallocating();
      swift_arrayDestroy();

      (*(v347 + 8))(v258, v351);
      sub_219129F18(v255, v328, type metadata accessor for SearchSectionDescriptor);
      v267 = v266[2];
      if (v267)
      {
        v356 = MEMORY[0x277D84F90];
        sub_218C34C50(0, v267, 0);
        v268 = v356;
        v269 = *(v337 + 80);
        v351 = v266;
        v270 = v266 + ((v269 + 32) & ~v269);
        v271 = *(v337 + 72);
        v272 = v300;
        do
        {
          sub_219129F18(v270, v26, type metadata accessor for SearchModel);
          sub_219129F18(v26, v353, type metadata accessor for SearchModel);
          sub_219129E78(&qword_280EDF480, type metadata accessor for SearchModel);
          sub_219BE5FB4();
          sub_21912A000(v26, type metadata accessor for SearchModel);
          v356 = v268;
          v273 = v272;
          v275 = *(v268 + 16);
          v274 = *(v268 + 24);
          if (v275 >= v274 >> 1)
          {
            sub_218C34C50(v274 > 1, v275 + 1, 1);
            v268 = v356;
          }

          *(v268 + 16) = v275 + 1;
          (*(v28 + 32))(v268 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v275, v273, v354);
          v270 += v271;
          --v267;
          v272 = v273;
        }

        while (v267);

        v255 = v321;
      }

      else
      {

        v268 = MEMORY[0x277D84F90];
      }

      v290 = sub_219129E78(&qword_280EE5D08, sub_2189539F0);
      v291 = sub_219129E78(&unk_280EE5D10, sub_2189539F0);
      MEMORY[0x21CEB9170](v268, v354, v290, v291);
      sub_219129E78(qword_280EC3630, type metadata accessor for SearchSectionDescriptor);
      sub_219129E78(&qword_280EDF480, type metadata accessor for SearchModel);
      sub_219BE6924();

      sub_21912A000(v255, type metadata accessor for SearchSectionDescriptor);
      v278 = type metadata accessor for TopResultSearchFeedGroup;
      v279 = &v361;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v99 = v331;
    sub_218EDF99C(v95, v331, type metadata accessor for RecipesSearchFeedGroup);
    v100 = v303;
    sub_219129F18(v99, v303, type metadata accessor for RecipesSearchFeedGroup);
    sub_219129F80(0, &qword_280EC9DF8, type metadata accessor for RecipesSearchFeedGroup);
    v101 = swift_allocObject();
    sub_218EDF99C(v100, v101 + *(*v101 + 88), type metadata accessor for RecipesSearchFeedGroup);
    v102 = v101 + *(*v101 + 96);
    v103 = v344;
    *v102 = v339;
    *(v102 + 8) = v103;
    v104 = v340;
    *(v102 + 16) = v343;
    *(v102 + 24) = v104;
    *(v102 + 32) = v341;
    *(v102 + 40) = v342;
    v105 = v323;
    *v323 = v101;
    swift_storeEnumTagMultiPayload();
    v106 = v345;
    v107 = v347;
    v342 = *(v99 + *(v305 + 20));
    v108 = *v346;

    v346 = v101;

    sub_219BED874();
    v109 = sub_2190B8EF8();
    v111 = v110;
    v112 = sub_219BF18F4();
    MEMORY[0x28223BE20](v112);
    v113 = v342;
    *(&v293 - 6) = v348;
    *(&v293 - 5) = v113;
    v114 = v349;
    *(&v293 - 4) = v108;
    *(&v293 - 3) = v114;
    *(&v293 - 2) = v109;
    *(&v293 - 1) = v111;
    v115 = sub_218DDFE70(sub_21912A088, (&v293 - 8), v112);

    (*(v107 + 8))(v106, v351);
    sub_219129F18(v105, v322, type metadata accessor for SearchSectionDescriptor);
    v116 = v115[2];
    if (v116)
    {
      v356 = MEMORY[0x277D84F90];
      sub_218C34C50(0, v116, 0);
      v117 = v356;
      v118 = *(v337 + 80);
      v351 = v115;
      v119 = v115 + ((v118 + 32) & ~v118);
      v120 = *(v337 + 72);
      v121 = v297;
      do
      {
        sub_219129F18(v119, v26, type metadata accessor for SearchModel);
        sub_219129F18(v26, v353, type metadata accessor for SearchModel);
        sub_219129E78(&qword_280EDF480, type metadata accessor for SearchModel);
        sub_219BE5FB4();
        sub_21912A000(v26, type metadata accessor for SearchModel);
        v356 = v117;
        v123 = *(v117 + 16);
        v122 = *(v117 + 24);
        if (v123 >= v122 >> 1)
        {
          sub_218C34C50(v122 > 1, v123 + 1, 1);
          v117 = v356;
        }

        *(v117 + 16) = v123 + 1;
        (*(v28 + 32))(v117 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v123, v121, v354);
        v119 += v120;
        --v116;
      }

      while (v116);
    }

    else
    {

      v117 = MEMORY[0x277D84F90];
    }

    v284 = sub_219129E78(&qword_280EE5D08, sub_2189539F0);
    v285 = sub_219129E78(&unk_280EE5D10, sub_2189539F0);
    MEMORY[0x21CEB9170](v117, v354, v284, v285);
    sub_219129E78(qword_280EC3630, type metadata accessor for SearchSectionDescriptor);
    sub_219129E78(&qword_280EDF480, type metadata accessor for SearchModel);
    sub_219BE6924();

    sub_21912A000(v323, type metadata accessor for SearchSectionDescriptor);
    v278 = type metadata accessor for RecipesSearchFeedGroup;
    v279 = &v358;
  }

  else
  {
    v223 = v95;
    v224 = v332;
    sub_218EDF99C(v223, v332, type metadata accessor for SavedRecipesSearchFeedGroup);
    v225 = v304;
    sub_219129F18(v224, v304, type metadata accessor for SavedRecipesSearchFeedGroup);
    sub_219129F80(0, &qword_280EC9E28, type metadata accessor for SavedRecipesSearchFeedGroup);
    v226 = swift_allocObject();
    sub_218EDF99C(v225, v226 + *(*v226 + 88), type metadata accessor for SavedRecipesSearchFeedGroup);
    v227 = v226 + *(*v226 + 96);
    v228 = v344;
    *v227 = v339;
    *(v227 + 8) = v228;
    v229 = v340;
    *(v227 + 16) = v343;
    *(v227 + 24) = v229;
    *(v227 + 32) = v341;
    *(v227 + 40) = v342;
    v230 = v327;
    *v327 = v226;
    swift_storeEnumTagMultiPayload();

    v343 = v226;

    v231 = v345;
    sub_219BED874();
    v232 = sub_219BF18C4();
    v347 = *(v347 + 8);
    (v347)(v231, v351);
    v233 = *v346;
    sub_219BED874();
    v234 = sub_2190B8EF8();
    v236 = v235;
    v237 = sub_219BF18F4();
    v346 = &v293;
    MEMORY[0x28223BE20](v237);
    v238 = v349;
    *(&v293 - 6) = v348;
    *(&v293 - 5) = v232;
    *(&v293 - 4) = v233;
    *(&v293 - 3) = v238;
    *(&v293 - 2) = v234;
    *(&v293 - 1) = v236;
    v239 = sub_218DDFE70(sub_219129EEC, (&v293 - 8), v237);

    (v347)(v231, v351);
    sub_219129F18(v230, v325, type metadata accessor for SearchSectionDescriptor);
    v240 = v239[2];
    if (v240)
    {
      v356 = MEMORY[0x277D84F90];
      sub_218C34C50(0, v240, 0);
      v241 = v356;
      v242 = *(v337 + 80);
      v351 = v239;
      v243 = v239 + ((v242 + 32) & ~v242);
      v244 = *(v337 + 72);
      v245 = v299;
      do
      {
        sub_219129F18(v243, v26, type metadata accessor for SearchModel);
        sub_219129F18(v26, v353, type metadata accessor for SearchModel);
        sub_219129E78(&qword_280EDF480, type metadata accessor for SearchModel);
        sub_219BE5FB4();
        sub_21912A000(v26, type metadata accessor for SearchModel);
        v356 = v241;
        v246 = v245;
        v248 = *(v241 + 16);
        v247 = *(v241 + 24);
        if (v248 >= v247 >> 1)
        {
          sub_218C34C50(v247 > 1, v248 + 1, 1);
          v241 = v356;
        }

        *(v241 + 16) = v248 + 1;
        (*(v28 + 32))(v241 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v248, v246, v354);
        v243 += v244;
        --v240;
        v245 = v246;
      }

      while (v240);
    }

    else
    {

      v241 = MEMORY[0x277D84F90];
    }

    v288 = sub_219129E78(&qword_280EE5D08, sub_2189539F0);
    v289 = sub_219129E78(&unk_280EE5D10, sub_2189539F0);
    MEMORY[0x21CEB9170](v241, v354, v288, v289);
    sub_219129E78(qword_280EC3630, type metadata accessor for SearchSectionDescriptor);
    sub_219129E78(&qword_280EDF480, type metadata accessor for SearchModel);
    sub_219BE6924();

    sub_21912A000(v327, type metadata accessor for SearchSectionDescriptor);
    v278 = type metadata accessor for SavedRecipesSearchFeedGroup;
    v279 = &v359;
  }

  return sub_21912A000(*(v279 - 32), v278);
}

uint64_t sub_219129E78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219129F18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_219129F80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for SearchFeedSectionData();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21912A000(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21912A0B8(uint64_t a1)
{
  v2 = v1;
  sub_21912A4CC();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MagazineFeedRouteModel();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[5];
  ObjectType = swift_getObjectType();
  sub_218D66554(a1, ObjectType, v11);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21912A588(v6, sub_21912A4CC);
    return 0;
  }

  else
  {
    sub_21912A524(v6, v10);
    __swift_project_boxed_opaque_existential_1(v2 + 6, v2[9]);
    v14 = sub_21896DA1C(v10);
    sub_21912A588(v10, type metadata accessor for MagazineFeedRouteModel);
    return v14;
  }
}

uint64_t sub_21912A268()
{
  v1 = sub_219BDF074();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE1544();
  v4 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE1524();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 88);
  v13 = *(v11 + 32);
  sub_219BE9924();
  (*(v4 + 104))(v6, *MEMORY[0x277D2F3B8], v14);
  sub_218E68C9C(v11, v3);
  sub_219BE1514();
  sub_218EC0E6C();
  sub_219BDD1F4();
  (*(v8 + 8))(v10, v7);
  return sub_219BDD134();
}

void sub_21912A4CC()
{
  if (!qword_27CC11948)
  {
    type metadata accessor for MagazineFeedRouteModel();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC11948);
    }
  }
}

uint64_t sub_21912A524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineFeedRouteModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21912A588(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_21912A5E8(char a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if (a1)
    {
      goto LABEL_5;
    }

    v4 = OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_blueprintViewController;
    sub_219BE86E4();
    result = [*&v3[v4] view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    swift_getObjectType();
    v6 = sub_219BE9E14();
    swift_unknownObjectRelease();

    if (v6)
    {
LABEL_5:
      *(swift_allocObject() + 16) = v3;
      swift_unknownObjectRetain();
      sub_219BE3494();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21912A700(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_21912C298(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v48 - v5;
  sub_21912C298(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v48 - v7;
  sub_21912C298(0, &qword_280E91A38, sub_2186E9484, v3);
  MEMORY[0x28223BE20](v8 - 8);
  v50 = &v48 - v9;
  sub_21912C2FC(0, &unk_280E92620, MEMORY[0x277D31C68]);
  v49 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v48 = &v48 - v12;
  v13 = sub_219BF2AB4();
  v64 = *(v13 - 8);
  v65 = v13;
  MEMORY[0x28223BE20](v13);
  v63 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F97D4(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_219BEF554();
  v60 = *(v62 - 8);
  v18 = MEMORY[0x28223BE20](v62);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - v21;
  v23 = type metadata accessor for ArticleListSavedFeedGroupConfigData();
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + OBJC_IVAR____TtC7NewsUI232ArticleListSavedFeedGroupEmitter_formatService + 24);
  v51 = *(a1 + OBJC_IVAR____TtC7NewsUI232ArticleListSavedFeedGroupEmitter_formatService + 32);
  v52 = v26;
  v53 = __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI232ArticleListSavedFeedGroupEmitter_formatService), v26);
  sub_2186E90E8();
  v57 = v25;
  sub_219BEDD14();
  v58 = v22;
  sub_219BEDCC4();
  v59 = v20;
  sub_219BEDCC4();
  v27 = sub_219BEE5D4();
  v28 = *(*(v27 - 8) + 56);
  v61 = v17;
  v28(v17, 1, 1, v27);
  (*(v11 + 16))(v48, v55, v49);
  v29 = OBJC_IVAR____TtC7NewsUI232ArticleListSavedFeedGroupEmitter_knobs;
  sub_2186E9484();
  v31 = v30;
  v32 = *(v30 - 8);
  v33 = v50;
  (*(v32 + 16))(v50, a1 + v29, v30);
  (*(v32 + 56))(v33, 0, 1, v31);
  v34 = v56;
  v35 = sub_219BF35D4();
  (*(*(v35 - 8) + 56))(v54, 1, 1, v35);
  sub_21912C2FC(0, &qword_280E90078, MEMORY[0x277D33F88]);
  swift_allocObject();
  sub_219BF38E4();
  v36 = sub_219BF2774();
  (*(*(v36 - 8) + 56))(v34, 1, 1, v36);
  v37 = qword_280E8D7A8;
  *MEMORY[0x277D30B90];
  if (v37 != -1)
  {
    swift_once();
  }

  qword_280F616E0;
  v38 = v63;
  sub_219BF2A84();
  v40 = v57;
  v39 = v58;
  v41 = v59;
  v42 = v61;
  v43 = sub_218F0AF50(v57, 0x73656C6369747261, 0xE800000000000000, v58, v59, MEMORY[0x277D84F90], v61, v38, v52, v51);
  (*(v64 + 8))(v38, v65);
  sub_21912C400(v42, sub_2186F97D4);
  v44 = *(v60 + 8);
  v45 = v62;
  v44(v41, v62);
  v44(v39, v45);
  v46 = sub_219BF1934();
  (*(*(v46 - 8) + 8))(v40, v46);
  return v43;
}

uint64_t sub_21912AE80(uint64_t a1)
{
  v2 = sub_219BED8D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = type metadata accessor for FormatGroupFeedGroupEmitterCursor();
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + OBJC_IVAR____TtC7NewsUI233FormatGroupFeedGroupEmitterCursor_formatGroup, v5, v2);
  v9[3] = v6;
  v9[0] = v7;
  sub_21912C298(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21912AFF4()
{
  type metadata accessor for FormatGroupFeedGroupEmitterCursor();
  sub_219BE3204();

  v1 = sub_219BE2E54();
  sub_21912C1B0(0, qword_280EE2A50, type metadata accessor for FormatGroupFeedGroupEmitterCursor, type metadata accessor for SavedFeedPool);
  sub_219BE2F64();

  v2 = swift_allocObject();
  *(v2 + 16) = sub_21912C0DC;
  *(v2 + 24) = v0;

  v3 = sub_219BE2E54();
  sub_21912C1B0(0, &qword_280EDBC90, type metadata accessor for SavedFeedGroup, type metadata accessor for FormatGroupFeedGroupEmitterCursor);
  sub_219BE2F64();

  v4 = sub_219BE2E54();
  sub_21912C11C();
  sub_219BE2F64();

  v5 = sub_219BE2E54();
  v6 = sub_219BE3054();

  return v6;
}

uint64_t sub_21912B20C()
{
  sub_219BEF0C4();

  v0 = sub_219BE2E54();
  sub_21912C1B0(0, qword_280EE2A50, type metadata accessor for FormatGroupFeedGroupEmitterCursor, type metadata accessor for SavedFeedPool);
  v1 = sub_219BE2F74();

  return v1;
}

uint64_t sub_21912B2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a1;

  v6 = sub_219BE2E54();
  sub_21912C1B0(0, &qword_280EDBC90, type metadata accessor for SavedFeedGroup, type metadata accessor for FormatGroupFeedGroupEmitterCursor);
  v7 = sub_219BE2F74();

  return v7;
}

uint64_t sub_21912B3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = sub_219BDBD64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*a1 + 16);
  if (v11 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_3;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_21912C1B0(0, &qword_280EDBC90, type metadata accessor for SavedFeedGroup, type metadata accessor for FormatGroupFeedGroupEmitterCursor);
    v24[1] = v3;
    v13 = *(v12 + 48);
    sub_219BDBD54();
    v14 = sub_219BDBD44();
    v16 = v15;
    (*(v8 + 8))(v10, v7);
    v17 = OBJC_IVAR____TtC7NewsUI233FormatGroupFeedGroupEmitterCursor_formatGroup;
    v18 = type metadata accessor for ArticleListSavedFeedGroup();
    v19 = *(v18 + 20);
    v20 = sub_219BED8D4();
    (*(*(v20 - 8) + 16))(a3 + v19, a2 + v17, v20);
    *a3 = v14;
    a3[1] = v16;
    *(a3 + *(v18 + 24)) = v11;
    *(a3 + v13) = a2;
  }

  v22 = sub_219BEEDD4();
  sub_2186E92EC(&qword_280E917E0, MEMORY[0x277D32430]);
  swift_allocError();
  (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D323A8], v22);
  return swift_willThrow();
}

uint64_t sub_21912B630(uint64_t a1)
{
  sub_21912C11C();
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21912C1B0(0, &qword_280EDBC90, type metadata accessor for SavedFeedGroup, type metadata accessor for FormatGroupFeedGroupEmitterCursor);
  v6 = *(a1 + *(v5 + 48));
  sub_21912C1B0(0, &qword_27CC16700, type metadata accessor for SavedFeedGroup, sub_21880702C);
  v8 = &v4[*(v7 + 48)];
  sub_21912C398(a1, v4, type metadata accessor for SavedFeedGroup);
  *(v8 + 3) = type metadata accessor for FormatGroupFeedGroupEmitterCursor();
  *v8 = v6;
  swift_storeEnumTagMultiPayload();
  sub_21912C298(0, &qword_280EE6C68, sub_21912C11C, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_21912B7C8(uint64_t a1)
{
  sub_21912C11C();
  MEMORY[0x28223BE20](v2);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD00000000000002CLL, 0x8000000219CE0FA0);
  v9 = a1;
  sub_218A450F0();
  sub_219BF7484();
  v5 = v8;
  *v4 = v7;
  v4[1] = v5;
  swift_storeEnumTagMultiPayload();
  sub_21912C298(0, &qword_280EE6C68, sub_21912C11C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21912B920()
{
  v1 = OBJC_IVAR____TtC7NewsUI232ArticleListSavedFeedGroupEmitter_config;
  sub_2186E90E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21912C400(v0 + OBJC_IVAR____TtC7NewsUI232ArticleListSavedFeedGroupEmitter_knobs, type metadata accessor for ArticleListSavedFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI232ArticleListSavedFeedGroupEmitter_formatService);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArticleListSavedFeedGroupEmitter()
{
  result = qword_280EA7108;
  if (!qword_280EA7108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21912BA44()
{
  sub_2186E90E8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ArticleListSavedFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_21912BB18()
{
  sub_219BED8D4();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_21880702C();
  v1 = sub_219BE2F64();

  return v1;
}

uint64_t sub_21912BBE4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI232ArticleListSavedFeedGroupEmitter_config;
  sub_2186E90E8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21912BC60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI232ArticleListSavedFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for ArticleListSavedFeedGroupKnobs();
  a1[4] = sub_2186E92EC(&qword_280EADB00, type metadata accessor for ArticleListSavedFeedGroupKnobs);
  a1[5] = sub_2186E92EC(&qword_27CC16708, type metadata accessor for ArticleListSavedFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_21912C398(v3 + v4, boxed_opaque_existential_1, type metadata accessor for ArticleListSavedFeedGroupKnobs);
}

uint64_t sub_21912BD64@<X0>(uint64_t *a1@<X8>)
{
  sub_21912C298(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E90E8();
  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_21912C400(inited + 32, sub_2188317B0);
  sub_21912C460(0);
  a1[3] = v5;
  a1[4] = sub_2186E92EC(&unk_280EE77C8, sub_21912C460);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_21912BEEC()
{
  sub_2186E92EC(&qword_280EA7120, type metadata accessor for ArticleListSavedFeedGroupEmitter);

  return sub_219BE2324();
}

void sub_21912C11C()
{
  if (!qword_280E91708)
  {
    type metadata accessor for SavedFeedGroup();
    sub_2186E92EC(&qword_280EDBD58, type metadata accessor for SavedFeedGroup);
    v0 = sub_219BEF1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91708);
    }
  }
}

void sub_21912C1B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_21912C248@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = v2;
  a2[1] = v3;
}

void sub_21912C298(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21912C2FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SavedFeedServiceConfig();
    v7 = sub_2186E92EC(&qword_280EC6CF0, type metadata accessor for SavedFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21912C398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21912C400(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for DateRangeTagFeedGroupKnobs()
{
  result = qword_280EBB998;
  if (!qword_280EBB998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}