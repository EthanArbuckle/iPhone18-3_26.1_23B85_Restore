uint64_t sub_1D19F122C()
{
  v1 = v0[36];
  v2 = v0[34];
  v1[3] = sub_1D1741B10(0, &qword_1EC647538, 0x1E696F680);
  *v1 = v2;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1D19F12B0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 320) = v2;
  if (v2)
  {
    v3 = sub_1D19F153C;
  }

  else
  {
    v3 = sub_1D19F40C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19F13C0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  if (v2)
  {
    v3 = sub_1D19F15A8;
  }

  else
  {
    v3 = sub_1D19F40C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19F14D0()
{
  v1 = *(v0 + 312);
  swift_willThrow();
  v2 = *(v0 + 312);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D19F153C()
{
  v1 = *(v0 + 320);
  swift_willThrow();
  v2 = *(v0 + 320);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D19F15A8()
{
  v1 = *(v0 + 328);
  swift_willThrow();
  v2 = *(v0 + 328);
  v3 = *(v0 + 8);

  return v3();
}

id sub_1D19F165C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1D19F16C4(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(void, void), uint64_t *a6)
{
  v10 = *(a1 + *a3);

  a5(*(a1 + *a4), *(a1 + *a4 + 8));
  v11 = *a6;

  JUMPOUT(0x1D3893750);
}

void sub_1D19F17C0(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19F1808(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D19F1838(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D19F0CEC(a1, a2);
}

uint64_t sub_1D19F18F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648B70, &qword_1D1E90DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D19F1960()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D17C4CF0;

  return sub_1D19F0A0C(v2, v3, v5, v4);
}

uint64_t sub_1D19F1A20()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D17C4CF0;

  return sub_1D1A07F54(v2, v3, v5);
}

uint64_t sub_1D19F1AE0(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19F1B04, 0, 0);
}

uint64_t sub_1D19F1B04()
{
  v1 = v0;
  v2 = *(v0 + 88);
  v3 = [*(v1 + 72) getNewMode];
  v4 = [v3 unsignedCharValue];

  v106 = v2 + OBJC_IVAR____TtC13HomeDataModel21MockRVCRunModeCluster_lastKnownEndpointID;
  if (*(v2 + OBJC_IVAR____TtC13HomeDataModel21MockRVCRunModeCluster_lastKnownEndpointID + 2))
  {
    v5 = 0xE700000000000000;
    v6 = 0x6E776F6E6B6E75;
  }

  else
  {
    *(v1 + 144) = *(v2 + OBJC_IVAR____TtC13HomeDataModel21MockRVCRunModeCluster_lastKnownEndpointID);
    sub_1D19F3EEC();
    v6 = sub_1D1E6865C();
    v5 = v7;
  }

  *(v1 + 96) = v5;
  v8 = *(v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v9 = swift_allocObject();
  v101 = xmmword_1D1E73A90;
  *(v9 + 16) = xmmword_1D1E73A90;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v102 = sub_1D1757D20();
  *(v9 + 64) = v102;
  v10 = MEMORY[0x1E69E7508];
  v104 = v6;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  v11 = MEMORY[0x1E69E7558];
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = v4;

  sub_1D1E66A8C();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (*(v106 + 2))
    {
      v14 = 0;
    }

    else
    {
      v14 = *v106;
    }

    v15 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
    swift_beginAccess();
    v16 = *&v13[v15];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v13[v15] = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_1D177EEB4(0, *(v16 + 2) + 1, 1, v16);
      *&v13[v15] = v16;
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    if (v19 >= v18 >> 1)
    {
      v16 = sub_1D177EEB4((v18 > 1), v19 + 1, 1, v16);
    }

    *(v16 + 2) = v19 + 1;
    v20 = &v16[8 * v19];
    *(v20 + 16) = v14;
    v20[34] = 25;
    *(v20 + 9) = 0;
    *&v13[v15] = v16;
    swift_endAccess();
  }

  v21 = *(v1 + 88) + OBJC_IVAR____TtC13HomeDataModel21MockRVCRunModeCluster_commandObserver;
  v22 = *v21;
  if (*v21)
  {
    v23 = *(v1 + 80);
    v24 = *(v21 + 8);

    v22(0, v23, v4);
    sub_1D17169C0(v22);
  }

  v103 = v5;
  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = v25;
    sub_1D19F6AB0(*(v1 + 80));
  }

  v27 = *(v1 + 88);
  v28 = *(v27 + OBJC_IVAR____TtC13HomeDataModel21MockRVCRunModeCluster_changeToModeBlock + 8);
  (*(v27 + OBJC_IVAR____TtC13HomeDataModel21MockRVCRunModeCluster_changeToModeBlock))(v4);
  v29 = sub_1D19EDFE4();
  v30 = v29;
  v105 = v4;
  if (v29 >> 62)
  {
LABEL_43:
    v31 = sub_1D1E6873C();
    if (v31)
    {
      goto LABEL_19;
    }

LABEL_44:

    v63 = swift_allocObject();
    v39 = 0;
    *(v63 + 16) = -256;
    v44 = v105;
    v43 = v104;
    goto LABEL_45;
  }

  v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
    goto LABEL_44;
  }

LABEL_19:
  v32 = 0;
  while (1)
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x1D3891EF0](v32, v30);
    }

    else
    {
      if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v33 = *(v30 + 8 * v32 + 32);
    }

    v34 = v33;
    v35 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v36 = *(v1 + 72);
    sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
    v37 = [v34 mode];
    v38 = [v36 getNewMode];
    LOBYTE(v36) = sub_1D1E684FC();

    if (v36)
    {
      break;
    }

    ++v32;
    if (v35 == v31)
    {
      goto LABEL_44;
    }
  }

  v107 = swift_allocObject();
  *(v107 + 16) = -256;
  v39 = v34;
  v40 = [v39 modeTags];
  v41 = sub_1D1E67C1C();

  v42 = sub_1D1A0569C(v41);

  v43 = v104;
  if (!v42)
  {

    v44 = v105;
    v63 = v107;
    goto LABEL_45;
  }

  v108 = v39;
  v44 = v105;
  if (v42 >> 62)
  {
    v45 = sub_1D1E6873C();
    if (v45)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v45 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v45)
    {
LABEL_31:
      v109 = MEMORY[0x1E69E7CC0];
      v46 = sub_1D178D930(0, v45 & ~(v45 >> 63), 0);
      if (v45 < 0)
      {
        __break(1u);
        return MEMORY[0x1EEE6DDE0](v46, v47, v48, v49, v50, v51, v52, v53);
      }

      v54 = 0;
      v55 = v109;
      do
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          v56 = MEMORY[0x1D3891EF0](v54, v42);
        }

        else
        {
          v56 = *(v42 + 8 * v54 + 32);
        }

        v57 = v56;
        v58 = [v56 value];
        v59 = [v58 unsignedShortValue];

        v61 = *(v109 + 16);
        v60 = *(v109 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_1D178D930((v60 > 1), v61 + 1, 1);
        }

        ++v54;
        *(v109 + 16) = v61 + 1;
        v62 = v109 + 4 * v61;
        *(v62 + 32) = v59;
        *(v62 + 34) = 0;
      }

      while (v45 != v54);

      v44 = v105;
      v43 = v104;
      goto LABEL_74;
    }
  }

  v55 = MEMORY[0x1E69E7CC0];
LABEL_74:
  v94 = *(v55 + 16);
  v95 = (v55 + 34);
  v96 = v94 + 1;
  v63 = v107;
  v39 = v108;
  do
  {
    if (!--v96)
    {
LABEL_82:

      *(v107 + 16) = 0;
      goto LABEL_45;
    }

    v97 = v95;
    v95 += 4;
  }

  while ((*v97 & 1) != 0 || *(v97 - 1) != 16385);
  v98 = (v55 + 34);
  v99 = v94 + 1;
  while (--v99)
  {
    v100 = v98;
    v98 += 4;
    if ((*v100 & 1) == 0 && *(v100 - 1) == 0x4000)
    {
      goto LABEL_82;
    }
  }

  *(v107 + 16) = 1;
LABEL_45:
  *(v1 + 104) = v39;
  *(v1 + 112) = v63;
  v64 = swift_allocObject();
  *(v1 + 120) = v64;
  *(v64 + 16) = 0;
  if (*(v106 + 2))
  {
    v65 = 0;
    goto LABEL_58;
  }

  v66 = *v106;
  v65 = swift_unknownObjectWeakLoadStrong();
  if (v65)
  {
    v67 = v65;
    v68 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
    swift_beginAccess();
    v69 = *&v67[v68];
    if (!*(v69 + 16) || (v70 = sub_1D171D15C(v66), (v71 & 1) == 0))
    {
      swift_endAccess();

      v65 = 0;
      goto LABEL_58;
    }

    v72 = *(*(v69 + 56) + 16 * v70);
    swift_endAccess();

    if (*(v72 + 16) && (v73 = sub_1D171D278(24), (v74 & 1) != 0))
    {
      v75 = *(*(v72 + 56) + 16 * v73);
      swift_unknownObjectRetain();

      type metadata accessor for MockRVCOperationalStateCluster();
      v65 = swift_dynamicCastClass();
      if (v65)
      {
LABEL_57:
        *(v64 + 16) = v65;
        goto LABEL_58;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v65 = 0;
    goto LABEL_57;
  }

LABEL_58:
  v76 = *(v63 + 16);
  v77 = v76 >> 8 > 0xFE || v65 == 0;
  if (v77 || v76 > 0xFF || *(v63 + 16) != 1 || (v82 = v65, v83 = sub_1D19EFF44(), v82, (v83 & 0x100) != 0))
  {
    v78 = *(v1 + 88);
    v79 = swift_task_alloc();
    *(v1 + 128) = v79;
    *(v79 + 16) = v78;
    *(v79 + 24) = v44;
    *(v79 + 32) = v63;
    *(v79 + 40) = v64;
    *(v79 + 48) = v43;
    *(v79 + 56) = v103;
    v80 = *(MEMORY[0x1E69E88D0] + 4);
    v81 = swift_task_alloc();
    *(v1 + 136) = v81;
    v53 = sub_1D1741B10(0, &qword_1EC647528, 0x1E696F698);
    *v81 = v1;
    v81[1] = sub_1D19F2554;
    v51 = sub_1D19F3F40;
    v46 = (v1 + 64);
    v49 = 0xD000000000000038;
    v50 = 0x80000001D1EC2630;
    v47 = 0;
    v48 = 0;
    v52 = v79;

    return MEMORY[0x1EEE6DDE0](v46, v47, v48, v49, v50, v51, v52, v53);
  }

  v84 = v1;
  v85 = swift_allocObject();
  *(v85 + 16) = v101;
  v86 = MEMORY[0x1E69E6158];
  *(v85 + 56) = MEMORY[0x1E69E6158];
  *(v85 + 64) = v102;
  *(v85 + 32) = v43;
  *(v85 + 40) = v103;
  *(v1 + 146) = v83;
  type metadata accessor for MTROperationalStateErrorState(0);
  v87 = sub_1D1E6789C();
  *(v85 + 96) = v86;
  *(v85 + 104) = v102;
  *(v85 + 72) = v87;
  *(v85 + 80) = v88;
  sub_1D1E66A8C();

  v89 = [objc_allocWithZone(MEMORY[0x1E696F698]) init];
  v90 = sub_1D1E691BC();
  [v89 setStatus_];

  v91 = sub_1D1E677EC();
  [v89 setStatusText_];

  v92 = *(v84 + 8);

  return v92(v89);
}

uint64_t sub_1D19F2554()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D19F2688, 0, 0);
}

uint64_t sub_1D19F2688()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  v3 = *(v0 + 64);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1D19F2704(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19F2728, 0, 0);
}

uint64_t sub_1D19F2728()
{
  v1 = *(v0 + 64);
  v2 = [*(v0 + 48) getNewMode];
  v3 = [v2 unsignedCharValue];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D1E73A90;
  v5 = (v1 + OBJC_IVAR____TtC13HomeDataModel23MockRVCCleanModeCluster_lastKnownEndpointID);
  v6 = *(v1 + OBJC_IVAR____TtC13HomeDataModel23MockRVCCleanModeCluster_lastKnownEndpointID);
  v7 = *(v1 + OBJC_IVAR____TtC13HomeDataModel23MockRVCCleanModeCluster_lastKnownEndpointID + 2);
  v8 = MEMORY[0x1E69E7660];
  *(v4 + 56) = MEMORY[0x1E69E75F8];
  *(v4 + 64) = v8;
  if (v7)
  {
    v6 = 1;
  }

  *(v4 + 32) = v6;
  v9 = MEMORY[0x1E69E7558];
  *(v4 + 96) = MEMORY[0x1E69E7508];
  *(v4 + 104) = v9;
  *(v4 + 72) = v3;
  sub_1D1E66A8C();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (*(v5 + 2))
    {
      v12 = 0;
    }

    else
    {
      v12 = *v5;
    }

    v13 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
    swift_beginAccess();
    v14 = *&v11[v13];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v11[v13] = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_1D177EEB4(0, *(v14 + 2) + 1, 1, v14);
      *&v11[v13] = v14;
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    if (v17 >= v16 >> 1)
    {
      v14 = sub_1D177EEB4((v16 > 1), v17 + 1, 1, v14);
    }

    *(v14 + 2) = v17 + 1;
    v18 = &v14[8 * v17];
    *(v18 + 16) = v12;
    v18[34] = 26;
    *(v18 + 9) = 0;
    *&v11[v13] = v14;
    swift_endAccess();
  }

  v19 = *(v0 + 64) + OBJC_IVAR____TtC13HomeDataModel23MockRVCCleanModeCluster_commandObserver;
  v20 = *v19;
  if (*v19)
  {
    v21 = *(v0 + 56);
    v22 = *(v19 + 8);

    v20(0, v21, v3);
    sub_1D17169C0(v20);
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    sub_1D19F6AB0(*(v0 + 56));
  }

  v25 = *(v0 + 64);
  v26 = swift_task_alloc();
  *(v0 + 72) = v26;
  *(v26 + 16) = v25;
  *(v26 + 24) = v3;
  v27 = *(MEMORY[0x1E69E88D0] + 4);
  v28 = swift_task_alloc();
  *(v0 + 80) = v28;
  v29 = sub_1D1741B10(0, &qword_1EC647510, 0x1E696F668);
  *v28 = v0;
  v28[1] = sub_1D19F2A74;

  return MEMORY[0x1EEE6DDE0](v0 + 40, 0, 0, 0xD000000000000038, 0x80000001D1EC2630, sub_1D19F3D18, v26, v29);
}

uint64_t sub_1D19F2A74()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D19F2B8C, 0, 0);
}

uint64_t sub_1D19F2BA8(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D19F2BC8, 0, 0);
}

uint64_t sub_1D19F2BC8()
{
  v1 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D1E739C0;
  v3 = v1 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID;
  v4 = *(v1 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID);
  v5 = *(v1 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID + 2);
  v6 = MEMORY[0x1E69E7660];
  *(v2 + 56) = MEMORY[0x1E69E75F8];
  *(v2 + 64) = v6;
  if (v5)
  {
    v4 = 1;
  }

  *(v2 + 32) = v4;
  sub_1D1E66A8C();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (*(v3 + 2))
    {
      v9 = 0;
    }

    else
    {
      v9 = *v3;
    }

    v10 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
    swift_beginAccess();
    v11 = *&v8[v10];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v8[v10] = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1D177EEB4(0, *(v11 + 2) + 1, 1, v11);
      *&v8[v10] = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1D177EEB4((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[8 * v14];
    *(v15 + 16) = v9;
    v15[34] = 24;
    *(v15 + 9) = 3;
    *&v8[v10] = v11;
    swift_endAccess();
  }

  v16 = v0[11] + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_commandObserver;
  v17 = *v16;
  if (*v16)
  {
    v18 = v0[10];
    v19 = *(v16 + 8);
    v0[5] = MEMORY[0x1E69E7508];
    *(v0 + 16) = 1;

    v17(3, v18, v0 + 2);
    sub_1D17169C0(v17);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    sub_1D19F6AB0(v0[10]);
  }

  v22 = v0[11];
  v23 = swift_task_alloc();
  v0[12] = v23;
  *(v23 + 16) = v22;
  *(v23 + 24) = 1;
  v24 = *(MEMORY[0x1E69E88D0] + 4);
  v25 = swift_task_alloc();
  v0[13] = v25;
  v26 = sub_1D1741B10(0, &qword_1EC647538, 0x1E696F680);
  *v25 = v0;
  v25[1] = sub_1D19F2EE8;

  return MEMORY[0x1EEE6DDE0](v0 + 9, 0, 0, 0xD000000000000031, 0x80000001D1EC2590, sub_1D19F3BF8, v23, v26);
}

uint64_t sub_1D19F2EE8()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D19F40C8, 0, 0);
}

uint64_t sub_1D19F3000(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D19F3020, 0, 0);
}

uint64_t sub_1D19F3020()
{
  v1 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D1E739C0;
  v3 = v1 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID;
  v4 = *(v1 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID);
  v5 = *(v1 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID + 2);
  v6 = MEMORY[0x1E69E7660];
  *(v2 + 56) = MEMORY[0x1E69E75F8];
  *(v2 + 64) = v6;
  if (v5)
  {
    v4 = 1;
  }

  *(v2 + 32) = v4;
  sub_1D1E66A8C();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (*(v3 + 2))
    {
      v9 = 0;
    }

    else
    {
      v9 = *v3;
    }

    v10 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
    swift_beginAccess();
    v11 = *&v8[v10];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v8[v10] = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1D177EEB4(0, *(v11 + 2) + 1, 1, v11);
      *&v8[v10] = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1D177EEB4((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[8 * v14];
    *(v15 + 16) = v9;
    v15[34] = 24;
    *(v15 + 9) = 0;
    *&v8[v10] = v11;
    swift_endAccess();
  }

  v16 = v0[11] + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_commandObserver;
  v17 = *v16;
  if (*v16)
  {
    v18 = v0[10];
    v19 = *(v16 + 8);
    v0[5] = MEMORY[0x1E69E7508];
    *(v0 + 16) = 2;

    v17(0, v18, v0 + 2);
    sub_1D17169C0(v17);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    sub_1D19F6AB0(v0[10]);
  }

  v22 = v0[11];
  v23 = swift_task_alloc();
  v0[12] = v23;
  *(v23 + 16) = v22;
  *(v23 + 24) = 2;
  v24 = *(MEMORY[0x1E69E88D0] + 4);
  v25 = swift_task_alloc();
  v0[13] = v25;
  v26 = sub_1D1741B10(0, &qword_1EC647538, 0x1E696F680);
  *v25 = v0;
  v25[1] = sub_1D19F2EE8;

  return MEMORY[0x1EEE6DDE0](v0 + 9, 0, 0, 0xD000000000000030, 0x80000001D1EC2530, sub_1D19F39F8, v23, v26);
}

uint64_t sub_1D19F333C(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D19F335C, 0, 0);
}

uint64_t sub_1D19F335C()
{
  v1 = v0[11];
  if (*(v1 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_supportsGoHomeCommand) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1D1E739C0;
    v3 = (v1 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID);
    v4 = *(v1 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID);
    v5 = *(v1 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID + 2);
    v6 = MEMORY[0x1E69E7660];
    *(v2 + 56) = MEMORY[0x1E69E75F8];
    *(v2 + 64) = v6;
    if (v5)
    {
      v4 = 1;
    }

    *(v2 + 32) = v4;
    sub_1D1E66A8C();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      if (*(v3 + 2))
      {
        v9 = 0;
      }

      else
      {
        v9 = *v3;
      }

      v10 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
      swift_beginAccess();
      v11 = *&v8[v10];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v8[v10] = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_1D177EEB4(0, *(v11 + 2) + 1, 1, v11);
        *&v8[v10] = v11;
      }

      v14 = *(v11 + 2);
      v13 = *(v11 + 3);
      if (v14 >= v13 >> 1)
      {
        v11 = sub_1D177EEB4((v13 > 1), v14 + 1, 1, v11);
      }

      *(v11 + 2) = v14 + 1;
      v15 = &v11[8 * v14];
      *(v15 + 16) = v9;
      v15[34] = 24;
      *(v15 + 9) = 128;
      *&v8[v10] = v11;
      swift_endAccess();
    }

    v16 = v0[11] + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_commandObserver;
    v17 = *v16;
    if (*v16)
    {
      v18 = v0[10];
      v19 = *(v16 + 8);
      v20 = objc_allocWithZone(MEMORY[0x1E695DFB0]);

      v21 = [v20 init];
      v0[5] = sub_1D1741B10(0, &qword_1EC648B78, 0x1E695DFB0);
      v0[2] = v21;
      v17(128, v18, v0 + 2);
      sub_1D17169C0(v17);
      __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    }

    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      sub_1D19F6AB0(v0[10]);
    }

    v24 = v0[11];
    v25 = swift_task_alloc();
    v0[12] = v25;
    *(v25 + 16) = v24;
    v26 = *(MEMORY[0x1E69E88D0] + 4);
    v27 = swift_task_alloc();
    v0[13] = v27;
    v28 = sub_1D1741B10(0, &qword_1EC647538, 0x1E696F680);
    *v27 = v0;
    v27[1] = sub_1D19F3714;

    return MEMORY[0x1EEE6DDE0](v0 + 9, 0, 0, 0xD000000000000031, 0x80000001D1EC24D0, sub_1D19F3848, v25, v28);
  }

  else
  {
    v29 = [objc_allocWithZone(MEMORY[0x1E696F680]) init];
    v30 = v0[1];

    return v30(v29);
  }
}

uint64_t sub_1D19F3714()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D19F382C, 0, 0);
}

uint64_t sub_1D19F386C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D17C4CF0;

  return sub_1D19F055C(v2, v3, v5, v4);
}

uint64_t sub_1D19F392C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1A0803C(a1, v4, v5, v7);
}

uint64_t objectdestroyTm_4()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D19F3B38()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D17C4CF0;

  return sub_1D19F02BC(v2, v3, v5, v4);
}

uint64_t sub_1D19F3C50()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1D17C4CF0;

  return sub_1D19EF5CC(v2, v3, v4, v5, v6);
}

unint64_t sub_1D19F3D48(uint64_t a1, int a2)
{
  v4[0] = *(v2 + 16);
  v5 = 2;
  return sub_1D1B0DAF8(v4, a2);
}

uint64_t objectdestroy_162Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D19F3DE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1D17C4BFC;

  return sub_1D19EE818(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_101Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1D19F3EEC()
{
  result = qword_1EC648B98;
  if (!qword_1EC648B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648B98);
  }

  return result;
}

uint64_t objectdestroy_111Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1D19F4004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648B70, &qword_1D1E90DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D19F40F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 >= 7)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D19F412C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D19F4178(uint64_t result, unsigned int a2)
{
  if (a2 > 6)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1D19F41AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D17417AC(v1, v21);
  if (v22 <= 2u)
  {
    if (v22)
    {
      if (v22 == 1)
      {
        v5 = sub_1D1E6821C();
      }

      else
      {
        v5 = sub_1D1E685DC();
      }
    }

    else
    {
      v5 = sub_1D1E67D2C();
    }

    v13 = v5;
    result = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    a1[3] = result;
    *a1 = v13;
  }

  else if (v22 > 4u)
  {
    if (v22 == 5)
    {
      v6 = *&v21[0];
      v7 = *(*&v21[0] + 16);
      if (v7)
      {
        v20 = MEMORY[0x1E69E7CC0];
        sub_1D178D5F4(0, v7, 0);
        v8 = v20;
        v9 = v6 + 32;
        do
        {
          v10 = sub_1D17417AC(v9, &v17);
          sub_1D19F41AC(v19, v10);
          sub_1D17805D8(&v17);
          v20 = v8;
          v12 = *(v8 + 16);
          v11 = *(v8 + 24);
          if (v12 >= v11 >> 1)
          {
            sub_1D178D5F4((v11 > 1), v12 + 1, 1);
            v8 = v20;
          }

          *(v8 + 16) = v12 + 1;
          sub_1D16EEE38(v19, (v8 + 32 * v12 + 32));
          v9 += 40;
          --v7;
        }

        while (v7);
      }

      else
      {

        v8 = MEMORY[0x1E69E7CC0];
      }

      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648BA8, &unk_1D1E90B60);
      a1[3] = result;
      *a1 = v8;
    }

    else
    {
      a1[3] = MEMORY[0x1E6969080];
      *a1 = v21[0];
    }
  }

  else if (v22 == 3)
  {
    v4 = v21[0];
    a1[3] = MEMORY[0x1E69E6158];
    *a1 = v4;
  }

  else
  {
    sub_1D16EEE38(v21, &v17);
    v14 = v18;
    v15 = __swift_project_boxed_opaque_existential_1(&v17, v18);
    a1[3] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v15, v14);
    return __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  return result;
}

uint64_t sub_1D19F43EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D18CA7C0(a1, &v23);
  if (*(&v24 + 1))
  {
    sub_1D16EEE38(&v23, v26);
    sub_1D1741970(v26, v22);
    if (swift_dynamicCast())
    {
      goto LABEL_3;
    }

    if (!swift_dynamicCast())
    {
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v26);
        v3 = LOBYTE(v18[0]);
        goto LABEL_4;
      }

      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v26);
        v3 = LOWORD(v18[0]);
        goto LABEL_4;
      }

      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v26);
        v3 = LODWORD(v18[0]);
        goto LABEL_4;
      }

      if (swift_dynamicCast())
      {
LABEL_3:
        __swift_destroy_boxed_opaque_existential_1(v26);
        v3 = *&v18[0];
LABEL_4:
        *&v23 = v3;
        v4 = 2;
        goto LABEL_8;
      }

      if (!swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_1(v26);
          v23 = v18[0];
          v4 = 3;
        }

        else
        {
          if (swift_dynamicCast())
          {
            __swift_destroy_boxed_opaque_existential_1(v26);
            LOBYTE(v23) = v18[0];
            v25 = 0;
            goto LABEL_9;
          }

          if (swift_dynamicCast())
          {
            __swift_destroy_boxed_opaque_existential_1(v26);
            v23 = v18[0];
            v4 = 6;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648300, &qword_1D1E8BEE8);
            if (swift_dynamicCast())
            {
              v8 = *(v21 + 16);
              if (v8)
              {
                v9 = MEMORY[0x1E69E7CC0];
                v10 = v21 + 32;
                do
                {
                  sub_1D1741970(v10, v20);
                  sub_1D1741970(v20, &v23);
                  sub_1D19F43EC(v18, &v23);
                  sub_1D1741A30(&v23, &qword_1EC649700, &qword_1D1E6E910);
                  __swift_destroy_boxed_opaque_existential_1(v20);
                  if (v19 == 255)
                  {
                    sub_1D1741A30(v18, &qword_1EC648B70, &qword_1D1E90DF0);
                  }

                  else
                  {
                    v23 = v18[0];
                    v24 = v18[1];
                    v25 = v19;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v9 = sub_1D177ED98(0, *(v9 + 2) + 1, 1, v9);
                    }

                    v12 = *(v9 + 2);
                    v11 = *(v9 + 3);
                    v13 = v12 + 1;
                    if (v12 >= v11 >> 1)
                    {
                      v17 = sub_1D177ED98((v11 > 1), v12 + 1, 1, v9);
                      v13 = v12 + 1;
                      v9 = v17;
                    }

                    *(v9 + 2) = v13;
                    v14 = &v9[40 * v12];
                    v15 = v23;
                    v16 = v24;
                    v14[64] = v25;
                    *(v14 + 2) = v15;
                    *(v14 + 3) = v16;
                  }

                  v10 += 32;
                  --v8;
                }

                while (v8);
              }

              else
              {

                v9 = MEMORY[0x1E69E7CC0];
              }

              __swift_destroy_boxed_opaque_existential_1(v26);
              *&v23 = v9;
              v4 = 5;
            }

            else
            {
              sub_1D16EEE38(v26, &v23);
              v4 = 4;
            }
          }
        }

LABEL_8:
        v25 = v4;
LABEL_9:
        result = __swift_destroy_boxed_opaque_existential_1(v22);
        v7 = v24;
        *a2 = v23;
        *(a2 + 16) = v7;
        v6 = v25;
        goto LABEL_10;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v26);
    *&v23 = *&v18[0];
    v4 = 1;
    goto LABEL_8;
  }

  result = sub_1D1741A30(&v23, &qword_1EC649700, &qword_1D1E6E910);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v6 = -1;
LABEL_10:
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1D19F4834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *MEMORY[0x1E696F568];
  v6 = sub_1D1E6781C();
  if (!*(a1 + 16))
  {

    goto LABEL_11;
  }

  v8 = sub_1D171D2F0(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_11:

    goto LABEL_14;
  }

  sub_1D1741970(*(a1 + 56) + 32 * v8, &v98);
  sub_1D16EEE38(&v98, v105);
  v11 = *MEMORY[0x1E696F550];
  v12 = sub_1D1E6781C();
  if (!*(a1 + 16))
  {

    goto LABEL_13;
  }

  v14 = sub_1D171D2F0(v12, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_13:

    result = __swift_destroy_boxed_opaque_existential_1(v105);
    goto LABEL_14;
  }

  sub_1D1741970(*(a1 + 56) + 32 * v14, &v98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v105);
    goto LABEL_11;
  }

  v17 = v103[0];
  v18 = v103[1];
  sub_1D1741970(v105, v104);
  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    v19 = v98;
    v20 = *MEMORY[0x1E696F508];
    if (sub_1D1E6781C() == v17 && v21 == v18)
    {

LABEL_19:
      v26 = [v19 BOOLValue];

      __swift_destroy_boxed_opaque_existential_1(v105);
      __swift_destroy_boxed_opaque_existential_1(v104);

      *a2 = v26;
      *(a2 + 32) = 0;
      return result;
    }

    v24 = v18;
    v25 = sub_1D1E6904C();

    if (v25)
    {

      goto LABEL_19;
    }

    v27 = *MEMORY[0x1E696F540];
    if (sub_1D1E6781C() == v17 && v28 == v24)
    {

LABEL_25:
      v30 = [v19 integerValue];

      __swift_destroy_boxed_opaque_existential_1(v105);
      __swift_destroy_boxed_opaque_existential_1(v104);

      *a2 = v30;
      v23 = 1;
      goto LABEL_15;
    }

    v29 = sub_1D1E6904C();

    if (v29)
    {

      goto LABEL_25;
    }

    v31 = *MEMORY[0x1E696F560];
    v32 = sub_1D1E6781C();
    v2 = v33;
    if (v32 == v17 && v33 == v24)
    {

LABEL_31:
      v35 = [v19 unsignedIntegerValue];

      __swift_destroy_boxed_opaque_existential_1(v105);
      __swift_destroy_boxed_opaque_existential_1(v104);

      *a2 = v35;
      v23 = 2;
      goto LABEL_15;
    }

    v34 = sub_1D1E6904C();

    if (v34)
    {

      goto LABEL_31;
    }

    v18 = v24;
  }

  if (swift_dynamicCast())
  {
    v2 = *(&v98 + 1);
    v36 = v98;
    v37 = *MEMORY[0x1E696F558];
    if (sub_1D1E6781C() == v17 && v38 == v18)
    {

LABEL_38:
      __swift_destroy_boxed_opaque_existential_1(v105);

      v40 = 3;
LABEL_102:
      __swift_destroy_boxed_opaque_existential_1(v104);

      *a2 = v36;
      *(a2 + 8) = v2;
      *(a2 + 24) = v11;
      *(a2 + 32) = v40;
      return result;
    }

    v39 = sub_1D1E6904C();

    if (v39)
    {
      goto LABEL_38;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648308, &unk_1D1E8DD70);
  if (!swift_dynamicCast())
  {
    goto LABEL_94;
  }

  v41 = v102;
  v42 = *MEMORY[0x1E696F4F8];
  v43 = sub_1D1E6781C();
  v2 = v44;
  if (v43 == v17 && v44 == v18)
  {

    goto LABEL_46;
  }

  v45 = v18;
  v46 = sub_1D1E6904C();

  if ((v46 & 1) == 0)
  {

    v18 = v45;
LABEL_94:
    v90 = *MEMORY[0x1E696F548];
    if (sub_1D1E6781C() == v17 && v91 == v18)
    {

LABEL_98:
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      __swift_destroy_boxed_opaque_existential_1(v105);
      v40 = 4;
      v36 = a1;
      goto LABEL_102;
    }

    v92 = sub_1D1E6904C();

    if (v92)
    {
      goto LABEL_98;
    }

    __swift_destroy_boxed_opaque_existential_1(v105);

    result = sub_1D1741A30(v103, &qword_1EC646238, &qword_1D1E7E8D0);
LABEL_14:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v23 = -1;
LABEL_15:
    *(a2 + 32) = v23;
    return result;
  }

LABEL_46:
  v47 = *(v41 + 16);
  if (v47)
  {
    *&v95 = MEMORY[0x1E69E7CC0];
    sub_1D178D898(0, v47, 0);
    v48 = v95;
    v93 = *MEMORY[0x1E696F520];
    v49 = 32;
    while (1)
    {
      v50 = v41;
      v51 = *(v41 + v49);
      v52 = sub_1D1E6781C();
      v54 = v53;
      if (!*(v51 + 16))
      {
        break;
      }

      v55 = v52;

      v56 = sub_1D171D2F0(v55, v54);
      v58 = v57;

      if ((v58 & 1) == 0)
      {
        break;
      }

      sub_1D1741970(*(v51 + 56) + 32 * v56, &v98);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      if (!swift_dynamicCast())
      {
        goto LABEL_53;
      }

      v59 = v101;
LABEL_54:
      *&v95 = v48;
      v61 = v48[2];
      v60 = v48[3];
      if (v61 >= v60 >> 1)
      {
        sub_1D178D898((v60 > 1), v61 + 1, 1);
        v48 = v95;
      }

      v48[2] = v61 + 1;
      v48[v61 + 4] = v59;
      v49 += 8;
      --v47;
      v41 = v50;
      if (!v47)
      {

        goto LABEL_59;
      }
    }

LABEL_53:
    v59 = 0;
    v101 = 0;
    goto LABEL_54;
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_59:
  v62 = v48[2];
  v2 = MEMORY[0x1E69E7CC0];
  if (v62)
  {
    v101 = MEMORY[0x1E69E7CC0];
    sub_1D178D858(0, v62, 0);
    v2 = v101;
    v63 = v48 + 4;
    while (1)
    {
      v65 = *v63++;
      v64 = v65;
      if (!v65)
      {
        goto LABEL_67;
      }

      v66 = sub_1D1E6781C();
      v68 = v67;
      if (!*(v64 + 16))
      {
        break;
      }

      v69 = v66;

      v70 = sub_1D171D2F0(v69, v68);
      v72 = v71;

      if ((v72 & 1) == 0)
      {
        break;
      }

      sub_1D1741970(*(v64 + 56) + 32 * v70, &v98);

      if (!swift_dynamicCast())
      {
        goto LABEL_67;
      }

      v73 = v95;
LABEL_68:
      v101 = v2;
      v75 = *(v2 + 16);
      v74 = *(v2 + 24);
      if (v75 >= v74 >> 1)
      {
        v94 = v73;
        sub_1D178D858((v74 > 1), v75 + 1, 1);
        v73 = v94;
        v2 = v101;
      }

      *(v2 + 16) = v75 + 1;
      *(v2 + 16 * v75 + 32) = v73;
      if (!--v62)
      {
        goto LABEL_71;
      }
    }

LABEL_67:
    v73 = 0uLL;
    v95 = 0u;
    goto LABEL_68;
  }

LABEL_71:
  v11 = sub_1D1785354(v2);

  if (*(v11 + 16))
  {
    v76 = *(v11 + 40);
    sub_1D1E6920C();
    sub_1D1E6922C();
    v77 = sub_1D1E6926C();
    v78 = -1 << *(v11 + 32);
    v79 = v77 & ~v78;
    if ((*(v11 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79))
    {
      v80 = ~v78;
      while (*(*(v11 + 48) + 16 * v79 + 8))
      {
        v79 = (v79 + 1) & v80;
        if (((*(v11 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v105);
      goto LABEL_104;
    }

LABEL_76:
    v81 = *(v11 + 16);

    if (v81 > 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v105);

LABEL_104:
      __swift_destroy_boxed_opaque_existential_1(v104);

      goto LABEL_14;
    }
  }

  else
  {
  }

  v82 = v48[2];
  if (!v82)
  {
    v36 = MEMORY[0x1E69E7CC0];
LABEL_101:

    __swift_destroy_boxed_opaque_existential_1(v105);
    v40 = 5;
    goto LABEL_102;
  }

  v83 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  v11 = 40;
  while (v83 < v48[2])
  {
    if (v48[v83 + 4])
    {

      sub_1D19F4834(&v98, v84);
    }

    else
    {
      v98 = 0u;
      v99 = 0u;
      v100 = -1;
    }

    v97 = v100;
    v95 = v98;
    v96 = v99;
    if (v100 == 255)
    {
      result = sub_1D1741A30(&v95, &qword_1EC648B70, &qword_1D1E90DF0);
    }

    else
    {
      v98 = v95;
      v99 = v96;
      v100 = v97;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D177ED98(0, *(v36 + 16) + 1, 1, v36);
        v36 = result;
      }

      v86 = *(v36 + 16);
      v85 = *(v36 + 24);
      v2 = v86 + 1;
      if (v86 >= v85 >> 1)
      {
        result = sub_1D177ED98((v85 > 1), v86 + 1, 1, v36);
        v36 = result;
      }

      *(v36 + 16) = v2;
      v87 = v36 + 40 * v86;
      v88 = v98;
      v89 = v99;
      *(v87 + 64) = v100;
      *(v87 + 32) = v88;
      *(v87 + 48) = v89;
    }

    if (v82 == ++v83)
    {
      goto LABEL_101;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D19F52EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D1741970(a1, a2);
  *(a2 + 32) = 4;
  return result;
}

unint64_t sub_1D19F531C()
{
  sub_1D17417AC(v0, v89);
  if (v90 <= 2u)
  {
    if (v90)
    {
      if (v90 != 1)
      {
        v56 = *&v89[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D1E6F900;
        v58 = *MEMORY[0x1E696F550];
        *(inited + 32) = sub_1D1E6781C();
        *(inited + 40) = v59;
        v60 = *MEMORY[0x1E696F560];
        *(inited + 72) = sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
        *(inited + 48) = v60;
        v61 = *MEMORY[0x1E696F568];
        *(inited + 80) = sub_1D1E6781C();
        *(inited + 88) = v62;
        v63 = v60;
        v64 = sub_1D1E685DC();
        v65 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
        *(inited + 96) = v64;
        *(inited + 120) = v65;
        *(inited + 128) = 0xD000000000000011;
        *(inited + 168) = MEMORY[0x1E69E6810];
        *(inited + 136) = 0x80000001D1EBE020;
        *(inited + 144) = v56;
LABEL_23:
        v11 = sub_1D18D6538(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
LABEL_26:
        swift_arrayDestroy();
        return v11;
      }

      v12 = *&v89[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1D1E6F900;
      v14 = *MEMORY[0x1E696F550];
      *(v13 + 32) = sub_1D1E6781C();
      *(v13 + 40) = v15;
      v16 = *MEMORY[0x1E696F540];
      *(v13 + 72) = sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
      *(v13 + 48) = v16;
      v17 = *MEMORY[0x1E696F568];
      *(v13 + 80) = sub_1D1E6781C();
      *(v13 + 88) = v18;
      v19 = v16;
      v20 = sub_1D1E6821C();
      v21 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
      *(v13 + 96) = v20;
      *(v13 + 120) = v21;
      *(v13 + 128) = 0xD000000000000011;
      *(v13 + 168) = MEMORY[0x1E69E6530];
      *(v13 + 136) = 0x80000001D1EBE020;
      *(v13 + 144) = v12;
    }

    else
    {
      v47 = v89[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1D1E6F900;
      v48 = *MEMORY[0x1E696F550];
      *(v13 + 32) = sub_1D1E6781C();
      *(v13 + 40) = v49;
      v50 = *MEMORY[0x1E696F508];
      *(v13 + 72) = sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
      *(v13 + 48) = v50;
      v51 = *MEMORY[0x1E696F568];
      *(v13 + 80) = sub_1D1E6781C();
      *(v13 + 88) = v52;
      v53 = v50;
      v54 = sub_1D1E67D2C();
      v55 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
      *(v13 + 96) = v54;
      *(v13 + 120) = v55;
      *(v13 + 128) = 0xD000000000000011;
      *(v13 + 136) = 0x80000001D1EBE020;
      *(v13 + 168) = MEMORY[0x1E69E6370];
      *(v13 + 144) = v47;
    }

    v11 = sub_1D18D6538(v13);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
    goto LABEL_19;
  }

  if (v90 <= 4u)
  {
    if (v90 != 3)
    {
      sub_1D16EEE38(v89, v87);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
      v66 = swift_initStackObject();
      *(v66 + 16) = xmmword_1D1E6F900;
      v67 = *MEMORY[0x1E696F550];
      *(v66 + 32) = sub_1D1E6781C();
      *(v66 + 40) = v68;
      v69 = *MEMORY[0x1E696F548];
      *(v66 + 72) = sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
      *(v66 + 48) = v69;
      v70 = *MEMORY[0x1E696F568];
      *(v66 + 80) = sub_1D1E6781C();
      *(v66 + 88) = v71;
      sub_1D1741970(v87, v66 + 96);
      *(v66 + 128) = 0xD000000000000011;
      *(v66 + 136) = 0x80000001D1EBE020;
      sub_1D1741970(v87, v66 + 144);
      v72 = v69;
      v11 = sub_1D18D6538(v66);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
      swift_arrayDestroy();
      __swift_destroy_boxed_opaque_existential_1(v87);
      return v11;
    }

    v2 = *(&v89[0] + 1);
    v1 = *&v89[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D1E6F900;
    v4 = *MEMORY[0x1E696F550];
    *(v3 + 32) = sub_1D1E6781C();
    *(v3 + 40) = v5;
    v6 = *MEMORY[0x1E696F558];
    v7 = sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
    *(v3 + 72) = v7;
    *(v3 + 48) = v6;
    v8 = *MEMORY[0x1E696F568];
    *(v3 + 80) = sub_1D1E6781C();
    *(v3 + 88) = v9;
    v10 = v6;
    *(v3 + 96) = sub_1D1E677EC();
    *(v3 + 120) = v7;
    *(v3 + 128) = 0xD000000000000011;
    *(v3 + 168) = MEMORY[0x1E69E6158];
    *(v3 + 136) = 0x80000001D1EBE020;
    *(v3 + 144) = __PAIR128__(v2, v1);
    v11 = sub_1D18D6538(v3);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
LABEL_19:
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v11;
  }

  if (v90 != 5)
  {
    v73 = v89[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E6F900;
    v74 = *MEMORY[0x1E696F550];
    *(inited + 32) = sub_1D1E6781C();
    *(inited + 40) = v75;
    v76 = *MEMORY[0x1E696F538];
    *(inited + 72) = sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
    *(inited + 48) = v76;
    v77 = *MEMORY[0x1E696F568];
    *(inited + 80) = sub_1D1E6781C();
    *(inited + 88) = v78;
    v79 = v76;
    v80 = sub_1D1E6688C();
    v81 = sub_1D1741B10(0, &qword_1EC647ED0, 0x1E695DEF0);
    *(inited + 96) = v80;
    *(inited + 120) = v81;
    *(inited + 128) = 0xD000000000000011;
    *(inited + 168) = MEMORY[0x1E6969080];
    *(inited + 136) = 0x80000001D1EBE020;
    *(inited + 144) = v73;
    goto LABEL_23;
  }

  v22 = *&v89[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1D1E6F900;
  v24 = *MEMORY[0x1E696F550];
  *(v23 + 32) = sub_1D1E6781C();
  *(v23 + 40) = v25;
  v26 = *MEMORY[0x1E696F4F8];
  *(v23 + 72) = sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
  *(v23 + 48) = v26;
  v27 = *MEMORY[0x1E696F568];
  *(v23 + 80) = sub_1D1E6781C();
  *(v23 + 88) = v28;
  v29 = *(v22 + 16);
  if (!v29)
  {
    v82 = v26;
    v31 = MEMORY[0x1E69E7CC0];
LABEL_25:
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648BC0, &qword_1D1E90B80);
    *(v23 + 96) = v31;
    *(v23 + 120) = v83;
    *(v23 + 128) = 0xD000000000000011;
    *(v23 + 136) = 0x80000001D1EBE020;
    *(v23 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648BC8, &qword_1D1E90B88);
    *(v23 + 144) = v22;
    v11 = sub_1D18D6538(v23);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
    goto LABEL_26;
  }

  v84 = v23;
  v88 = MEMORY[0x1E69E7CC0];
  v30 = v26;
  sub_1D178D950(0, v29, 0);
  v31 = v88;
  v32 = *MEMORY[0x1E696F520];
  v85 = v22;
  v33 = v22 + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648BB0, &qword_1D1E90B70);
  while (1)
  {
    sub_1D17417AC(v33, v87);
    v34 = sub_1D1E6781C();
    v36 = v35;
    v86[0] = v34;
    v86[1] = v35;
    v37 = sub_1D19F531C();
    v86[2] = v37;
    v38 = sub_1D1E68BCC();

    result = sub_1D171D2F0(v34, v36);
    if (v40)
    {
      break;
    }

    v38[(result >> 6) + 8] |= 1 << result;
    v41 = (v38[6] + 16 * result);
    *v41 = v34;
    v41[1] = v36;
    *(v38[7] + 8 * result) = v37;
    v42 = v38[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_29;
    }

    v38[2] = v44;

    sub_1D1741A30(v86, &qword_1EC648BB8, &qword_1D1E90B78);
    sub_1D17805D8(v87);
    v88 = v31;
    v46 = *(v31 + 16);
    v45 = *(v31 + 24);
    if (v46 >= v45 >> 1)
    {
      sub_1D178D950((v45 > 1), v46 + 1, 1);
      v31 = v88;
    }

    *(v31 + 16) = v46 + 1;
    *(v31 + 8 * v46 + 32) = v38;
    v33 += 40;
    if (!--v29)
    {
      v22 = v85;
      v23 = v84;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1D19F5CA8(uint64_t a1, uint64_t a2)
{
  sub_1D17417AC(a1, v6);
  sub_1D17417AC(a2, v8);
  if (v7 <= 2u)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        sub_1D17417AC(v6, v5);
        if (v9 != 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1D17417AC(v6, v5);
        if (v9 != 2)
        {
          goto LABEL_22;
        }
      }

      v3 = v5[0] == v8[0];
    }

    else
    {
      sub_1D17417AC(v6, v5);
      if (v9)
      {
        goto LABEL_22;
      }

      v3 = LOBYTE(v5[0]) ^ LOBYTE(v8[0]) ^ 1;
    }

LABEL_26:
    sub_1D17805D8(v6);
    return v3 & 1;
  }

  if (v7 > 4u)
  {
    if (v7 == 5)
    {
      sub_1D17417AC(v6, v5);
      if (v9 == 5)
      {
        v3 = sub_1D1779E84(v5[0], v8[0]);

LABEL_25:

        goto LABEL_26;
      }

      goto LABEL_21;
    }

LABEL_22:
    sub_1D1741A30(v6, &qword_1EC643118, &qword_1D1E71570);
    v3 = 0;
    return v3 & 1;
  }

  if (v7 == 3)
  {
    sub_1D17417AC(v6, v5);
    if (v9 == 3)
    {
      if (v5[0] == v8[0] && v5[1] == v8[1])
      {
        v3 = 1;
      }

      else
      {
        v3 = sub_1D1E6904C();
      }

      goto LABEL_25;
    }

LABEL_21:

    goto LABEL_22;
  }

  if (v9 != 4)
  {
    goto LABEL_22;
  }

  sub_1D17805D8(v8);
  sub_1D17805D8(v6);
  v3 = 1;
  return v3 & 1;
}

uint64_t sub_1D19F5E80(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x1E69E7CC0];
  v26 = *(a1 + 16);
  sub_1D178D5B4(0, v1, 0);
  v2 = v27;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_1D1E6869C();
  v7 = v26;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(a1 + 48) + result);
    v13 = *(a1 + 36);
    v15 = *(v27 + 16);
    v14 = *(v27 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = *(a1 + 36);
      v25 = result;
      sub_1D178D5B4((v14 > 1), v15 + 1, 1);
      v7 = v26;
      v13 = v24;
      result = v25;
    }

    v16 = dword_1D1E90EC0[v12];
    *(v27 + 16) = v15 + 1;
    *(v27 + 4 * v15 + 32) = v16;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v17 = *(v4 + 8 * v10);
    if ((v17 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_1D1716920(result, v13, 0);
          v7 = v26;
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_1D1716920(result, v13, 0);
      v7 = v26;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1D19F60C0(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D1E6873C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1D178D5D4(0, v2 & ~(v2 >> 63), 0);
    v35 = v41;
    if (v34)
    {
      v3 = sub_1D1E686DC();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_1D1E6869C();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v10 = v38;
        v9 = v39;
        v11 = v40;
        v12 = v1;
        sub_1D17909A0(v38, v39, v40, v1);
        v14 = v13;
        v15 = [v13 unsignedIntegerValue];

        v16 = v35;
        v41 = v35;
        v18 = *(v35 + 16);
        v17 = *(v35 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1D178D5D4((v17 > 1), v18 + 1, 1);
          v16 = v41;
        }

        *(v16 + 16) = v18 + 1;
        v19 = v16 + 40 * v18;
        *(v19 + 32) = v15;
        v20 = v36;
        *(v19 + 56) = v37;
        *(v19 + 40) = v20;
        *(v19 + 64) = 2;
        v35 = v16;
        if (v34)
        {
          if (!v11)
          {
            goto LABEL_40;
          }

          v1 = v12;
          if (sub_1D1E686FC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648D88, &unk_1D1E90E10);
          v7 = sub_1D1E681AC();
          sub_1D1E687AC();
          v7(&v36, 0);
          if (v6 == v33)
          {
LABEL_32:
            sub_1D1716920(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_41;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v12;
          v21 = 1 << *(v12 + 32);
          if (v10 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v10 >> 6;
          v23 = *(v32 + 8 * (v10 >> 6));
          if (((v23 >> v10) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v12 + 36) != v9)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v10 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v10 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_1D1716920(v10, v9, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_1D1716920(v10, v9, 0);
          }

LABEL_31:
          v30 = *(v1 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_1D19F6430(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v26 = *(a1 + 16);
  sub_1D178D5D4(0, v1, 0);
  v2 = v29;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1D1E6869C();
  v7 = v26;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(a1 + 48) + 4 * result);
    v13 = *(a1 + 36);
    v15 = *(v29 + 16);
    v14 = *(v29 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = *(a1 + 36);
      v25 = result;
      sub_1D178D5D4((v14 > 1), v15 + 1, 1);
      v7 = v26;
      v13 = v24;
      result = v25;
    }

    *(v29 + 16) = v15 + 1;
    v16 = v29 + 40 * v15;
    *(v16 + 32) = v12;
    *(v16 + 56) = v28;
    *(v16 + 40) = v27;
    *(v16 + 64) = 2;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v17 = *(v4 + 8 * v10);
    if ((v17 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 64 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_1D1716920(result, v13, 0);
          v7 = v26;
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_1D1716920(result, v13, 0);
      v7 = v26;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

double sub_1D19F6680@<D0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = (*(a3 + 16))(a2, a3);
  if (*(v6 + 16) && (v7 = sub_1D171D4E0(a1), (v8 & 1) != 0))
  {
    sub_1D17417AC(*(v6 + 56) + 40 * v7, a4);
  }

  else
  {

    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = -1;
  }

  return result;
}

uint64_t sub_1D19F6730(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_1D1741C08(a1, v11, &qword_1EC648B70, &qword_1D1E90DF0);
  v8 = (*(a4 + 32))(v10, a3, a4);
  sub_1D1B0DAF8(v11, a2);
  v8(v10, 0);
  return sub_1D1741A30(a1, &qword_1EC648B70, &qword_1D1E90DF0);
}

uint64_t sub_1D19F67F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  sub_1D17419CC(a3, (a4 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D1E73A90;
  ObjectType = swift_getObjectType();
  v8 = *(a2 + 112);
  swift_unknownObjectRetain();
  v8(v17, ObjectType, a2);
  v9 = sub_1D1E6789C();
  v11 = v10;
  v12 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1D1757D20();
  *(v6 + 64) = v13;
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  sub_1D17419CC(a3, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  v14 = sub_1D1E678BC();
  *(v6 + 96) = v12;
  *(v6 + 104) = v13;
  *(v6 + 72) = v14;
  *(v6 + 80) = v15;
  sub_1D1E66A8C();
  swift_unknownObjectRelease();

  return __swift_destroy_boxed_opaque_existential_1(a3);
}

uint64_t sub_1D19F6954(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[3] = AssociatedTypeWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
  a2(v11);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_1D19F6A1C(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7CD0];
  v2 = (*(a2 + 16))();
  sub_1D19305E0(v2);
  if (qword_1EC642288 != -1)
  {
    swift_once();
  }

  sub_1D19305E0(v3);
  return v5;
}

void sub_1D19F6AB0(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = v1;
      v48 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
      v4 = (a1 + 32);
      v5 = MEMORY[0x1E69E7CA0];
      v51 = *MEMORY[0x1E696F500];
      v49 = *MEMORY[0x1E696F520];
      while (1)
      {
        v6 = *v4;
        v7 = sub_1D1E6781C();
        v9 = v8;
        if (!*(v6 + 16) || (v10 = v7, , v11 = sub_1D171D2F0(v10, v9), v13 = v12, , (v13 & 1) == 0) || (sub_1D1741970(*(v6 + 56) + 32 * v11, v55), sub_1D1741B10(0, &qword_1EC650120, 0x1E696F570), (swift_dynamicCast() & 1) == 0))
        {

          return;
        }

        v14 = *&v53[0];
        v15 = [v14 cluster];
        v16 = [v15 unsignedIntValue];

        ClusterKind.init(rawValue:)(v16);
        if (LOBYTE(v55[0]) == 30)
        {
          goto LABEL_24;
        }

        v17 = sub_1D1E6781C();
        if (!*(v6 + 16))
        {

LABEL_24:

LABEL_25:

          return;
        }

        v19 = sub_1D171D2F0(v17, v18);
        v21 = v20;

        if ((v21 & 1) == 0)
        {
          goto LABEL_24;
        }

        sub_1D1741970(*(v6 + 56) + 32 * v19, v55);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_25;
        }

        sub_1D19F4834(*&v53[0], v53);
        if (v54 == 255)
        {

          sub_1D1741A30(v53, &qword_1EC648B70, &qword_1D1E90DF0);
          return;
        }

        v55[0] = v53[0];
        v55[1] = v53[1];
        v56 = v54;
        v22 = [v14 attribute];
        v23 = [v22 unsignedIntValue];
        v24 = [v14 cluster];
        v25 = [v24 unsignedIntValue];

        ClusterKind.init(rawValue:)(v25);
        v26 = v53[0];
        if (LOBYTE(v53[0]) == 30)
        {

          goto LABEL_32;
        }

        v27 = [v14 endpoint];

        v28 = [v27 unsignedShortValue];
        swift_beginAccess();
        v29 = *(v3 + v48);
        if (!*(v29 + 16) || (v30 = sub_1D171D15C(v28), (v31 & 1) == 0))
        {
          swift_endAccess();
          goto LABEL_30;
        }

        v32 = (*(v29 + 56) + 16 * v30);
        v33 = *v32;
        v34 = v32[1];
        if (!*(*v32 + 16))
        {

          swift_endAccess();
          sub_1D1791518(v33);
          v47 = v22;
          v22 = v14;
          goto LABEL_31;
        }

        v35 = sub_1D171D278(v26);
        if ((v36 & 1) == 0)
        {
          break;
        }

        v37 = (*(v33 + 56) + 16 * v35);
        v50 = v22;
        v38 = v4;
        v39 = v2;
        v40 = v3;
        v41 = v5;
        v42 = *v37;
        v43 = v37[1];

        swift_unknownObjectRetain();
        swift_endAccess();
        sub_1D1791518(v33);
        ObjectType = swift_getObjectType();
        sub_1D17417AC(v55, v53);
        v45 = (*(v43 + 32))(v52, ObjectType, v43);
        sub_1D1B0DAF8(v53, v23);
        v45(v52, 0);
        v5 = v41;
        v3 = v40;
        v46 = v39;

        swift_unknownObjectRelease();
        sub_1D17805D8(v55);
        v4 = v38 + 1;
        v2 = v46 - 1;
        if (!v2)
        {
          return;
        }
      }

      swift_endAccess();
      sub_1D1791518(v33);
LABEL_30:
      v47 = v14;
LABEL_31:

LABEL_32:
      sub_1D17805D8(v55);
    }
  }
}

uint64_t sub_1D19F6F80()
{
  v16 = *(v0 + OBJC_IVAR____TtC13HomeDataModel21MockDescriptorCluster_otherAttributeStates);

  sub_1D19F7104();
  sub_1D19F60C0(v1);
  v3 = v2;

  v12[0] = v3;
  LOBYTE(v13) = 5;
  sub_1D1B0DAF8(v12, 3);
  v4 = sub_1D19F77D8();
  v5 = sub_1D19F6430(v4);

  v12[0] = v5;
  LOBYTE(v13) = 5;
  sub_1D1B0DAF8(v12, 1);
  v6 = *(v0 + OBJC_IVAR____TtC13HomeDataModel21MockDescriptorCluster_deviceTypeValues);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648D78, &qword_1D1E90E08);
  v12[3] = v7;
  v8 = sub_1D19FC698();
  v13 = v8;
  v12[0] = v6;
  __swift_project_boxed_opaque_existential_1(v12, v7);
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = sub_1D19F52EC;
  v11[5] = 0;

  v14[0] = sub_1D18CE91C(sub_1D19FC6FC, v11, v7, &type metadata for MockMatterAttributeValue, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  v15 = 5;
  __swift_destroy_boxed_opaque_existential_1(v12);
  sub_1D1B0DAF8(v14, 0);
  return v16;
}

void sub_1D19F7104()
{
  v69 = *MEMORY[0x1E69E9840];
  if (*(v0 + OBJC_IVAR____TtC13HomeDataModel21MockDescriptorCluster__endpointID) || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
      goto LABEL_66;
    }

LABEL_59:
    v58 = *MEMORY[0x1E69E9840];
    return;
  }

  v2 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
  v3 = Strong;
  swift_beginAccess();
  v63 = v3;
  v4 = *&v3[v2];
  v5 = v4[2];
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v68 = MEMORY[0x1E69E7CC0];
    v65 = v4;

    sub_1D1E6899C();
    v7 = v65 + 8;
    v8 = -1 << *(v65 + 32);
    v9 = sub_1D1E6869C();
    v10 = v65;
    v11 = 0;
    v64 = v65 + 9;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v10 + 32))
    {
      v13 = v9 >> 6;
      if ((v7[v9 >> 6] & (1 << v9)) == 0)
      {
        goto LABEL_61;
      }

      v14 = *(v10 + 9);
      v15 = *(v10[6] + 2 * v9);
      sub_1D1E692AC();
      sub_1D1E6896C();
      v16 = *(v68 + 16);
      sub_1D1E689AC();
      sub_1D1E689BC();
      sub_1D1E6897C();
      v10 = v65;
      v12 = 1 << *(v65 + 32);
      if (v9 >= v12)
      {
        goto LABEL_62;
      }

      v17 = v7[v13];
      if ((v17 & (1 << v9)) == 0)
      {
        goto LABEL_63;
      }

      if (v14 != *(v65 + 9))
      {
        goto LABEL_64;
      }

      v18 = v17 & (-2 << (v9 & 0x3F));
      if (v18)
      {
        v12 = __clz(__rbit64(v18)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v13 << 6;
        v20 = v13 + 1;
        v21 = &v64[v13];
        while (v20 < (v12 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1D1716920(v9, v14, 0);
            v10 = v65;
            v12 = __clz(__rbit64(v22)) + v19;
            goto LABEL_8;
          }
        }

        sub_1D1716920(v9, v14, 0);
        v10 = v65;
      }

LABEL_8:
      ++v11;
      v9 = v12;
      if (v11 == v5)
      {

        v6 = v68;
        goto LABEL_22;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_22:
  v24 = sub_1D17845AC(v6);

  if ((v24 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1E69E7CD0];
    v68 = MEMORY[0x1E69E7CD0];
    sub_1D1E686EC();
    v27 = sub_1D1E6877C();
    if (v27)
    {
      v28 = v27;
      sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
      v29 = v28;
      do
      {
        v66 = v29;
        swift_dynamicCast();
        v30 = v67;
        if ([v67 integerValue])
        {
          v31 = v26[2];
          if (v26[3] <= v31)
          {
            sub_1D1939A58(v31 + 1);
          }

          v26 = v68;
          v32 = *(v68 + 40);
          v33 = sub_1D1E684EC();
          v34 = v68 + 56;
          v35 = -1 << *(v68 + 32);
          v36 = v33 & ~v35;
          v37 = v36 >> 6;
          if (((-1 << v36) & ~*(v68 + 56 + 8 * (v36 >> 6))) != 0)
          {
            v38 = __clz(__rbit64((-1 << v36) & ~*(v68 + 56 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v39 = 0;
            v40 = (63 - v35) >> 6;
            do
            {
              if (++v37 == v40 && (v39 & 1) != 0)
              {
                __break(1u);
                goto LABEL_60;
              }

              v41 = v37 == v40;
              if (v37 == v40)
              {
                v37 = 0;
              }

              v39 |= v41;
              v42 = *(v34 + 8 * v37);
            }

            while (v42 == -1);
            v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          }

          *(v34 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
          *(v26[6] + 8 * v38) = v30;
          ++v26[2];
        }

        else
        {
        }

        v29 = sub_1D1E6877C();
      }

      while (v29);
    }

    goto LABEL_58;
  }

  v43 = *(v24 + 32);
  v44 = ((1 << v43) + 63) >> 6;
  if ((v43 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v61 = swift_slowAlloc();
      sub_1D19FA910(v61, v44, v24, sub_1D19F779C);

      MEMORY[0x1D3893640](v61, -1, -1);
LABEL_58:

      goto LABEL_59;
    }
  }

  v65 = &v62;
  MEMORY[0x1EEE9AC00](v25);
  v46 = &v62 - ((v45 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v46, v45);
  v47 = 0;
  v48 = 0;
  v49 = 1 << *(v24 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & *(v24 + 56);
  v52 = (v49 + 63) >> 6;
  while (v51)
  {
    v53 = __clz(__rbit64(v51));
    v51 &= v51 - 1;
LABEL_53:
    v56 = v53 | (v48 << 6);
    if ([*(*(v24 + 48) + 8 * v56) integerValue])
    {
      *&v46[(v56 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v56;
      if (__OFADD__(v47++, 1))
      {
        __break(1u);
LABEL_57:
        sub_1D19E16A8(v46, v44, v47, v24);
        goto LABEL_58;
      }
    }
  }

  v54 = v48;
  while (1)
  {
    v48 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    if (v48 >= v52)
    {
      goto LABEL_57;
    }

    v55 = *(v24 + 56 + 8 * v48);
    ++v54;
    if (v55)
    {
      v53 = __clz(__rbit64(v55));
      v51 = (v55 - 1) & v55;
      goto LABEL_53;
    }
  }

LABEL_65:
  __break(1u);
LABEL_66:
  if (!sub_1D1E6873C())
  {
    goto LABEL_59;
  }

  v59 = *MEMORY[0x1E69E9840];
  v60 = MEMORY[0x1E69E7CC0];

  sub_1D179C284(v60);
}

uint64_t sub_1D19F77D8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + OBJC_IVAR____TtC13HomeDataModel21MockDescriptorCluster__endpointID);
    v4 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
    swift_beginAccess();
    v5 = *&v2[v4];
    if (*(v5 + 16))
    {
      v6 = sub_1D171D15C(v3);
      if (v7)
      {
        v8 = *(*(v5 + 56) + 16 * v6);
        swift_endAccess();

        v10 = sub_1D19F5E80(v9);

        v11 = sub_1D17845DC(v10);

        return v11;
      }
    }

    swift_endAccess();
  }

  return MEMORY[0x1E69E7CD0];
}

char sub_1D19F78C4()
{
  v0 = sub_1D19F77D8();
  v1 = v0;
  v2 = v0 + 56;
  v3 = 1 << *(v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v0 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      LOBYTE(v7) = ClusterKind.init(rawValue:)(*(*(v1 + 48) + ((v8 << 8) | (4 * v10))));
      if (v20 != 30)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
    if ((v7 & 1) == 0)
    {
      v7 = sub_1D177DE5C(0, *(v9 + 16) + 1, 1, v9);
      v9 = v7;
    }

    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    v14 = v12 + 1;
    if (v12 >= v13 >> 1)
    {
      v19 = v12 + 1;
      v15 = v9;
      v16 = *(v9 + 16);
      v7 = sub_1D177DE5C((v13 > 1), v12 + 1, 1, v15);
      v12 = v16;
      v14 = v19;
      v9 = v7;
    }

    *(v9 + 16) = v14;
    *(v9 + v12 + 32) = v20;
  }

  while (v5);
LABEL_6:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      v17 = sub_1D17846C4(v9);

      LOBYTE(v7) = v17;
      return v7;
    }

    v5 = *(v2 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_4;
    }
  }

  __break(1u);
  return v7;
}

void sub_1D19F7BB0(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19F7C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = v4;
  v5[9] = a4;
  v5[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D19FC8A0, 0, 0);
}

uint64_t sub_1D19F7C30(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19F7C54, 0, 0);
}

uint64_t sub_1D19F7C54()
{
  sub_1D17419CC(*(v0 + 104), v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 112);
    v2 = *(v0 + 144);
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = *(MEMORY[0x1E69E8920] + 4);
    v5 = swift_task_alloc();
    *(v0 + 128) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
    *v5 = v0;
    v5[1] = sub_1D19F7E3C;
    v7 = *(v0 + 96);

    return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000010, 0x80000001D1EC2AC0, sub_1D19FC5F8, v3, v6);
  }

  else
  {
    v8 = *(v0 + 112);
    sub_1D17419CC(*(v0 + 104), v0 + 56);
    sub_1D19EDF88();
    swift_allocError();
    v10 = v9;
    v11 = swift_unknownObjectRetain();
    sub_1D19F67F8(v11, &off_1EEC1E4A8, (v0 + 56), v10);
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1D19F7E3C()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19FC89C, 0, 0);
  }

  else
  {
    v4 = v3[15];

    v5 = v3[1];

    return v5();
  }
}

void sub_1D19F7F78(uint64_t a1, char a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648D68, &qword_1D1E90DF8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  v11 = [objc_allocWithZone(MEMORY[0x1E696F638]) init];
  if ((a2 - 1) <= 3u)
  {
    v12 = qword_1D1E90F38[(a2 - 1)];
  }

  v13 = sub_1D1E685DC();
  [v11 setIdentifyTime_];

  (*(v7 + 16))(v10, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v10, v6);
  aBlock[4] = sub_1D19FC8B4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1C40BA8;
  aBlock[3] = &block_descriptor_350;
  v16 = _Block_copy(aBlock);

  [a3 identifyWithParams:v11 expectedValues:0 expectedValueInterval:0 completion:v16];
  _Block_release(v16);
}

void sub_1D19F8268(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1D1E6655C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1D19F8434(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13HomeDataModel19MockIdentifyCluster_containingDevice);
  *(v1 + OBJC_IVAR____TtC13HomeDataModel19MockIdentifyCluster_containingDevice) = a1;
  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1D19F8448(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel19MockIdentifyCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D19F8478(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D19F7C30(a1, a2);
}

void sub_1D19F8658(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19F86A0(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel25MockDiagnosticLogsCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D19F86D0()
{
  v1 = OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_attributeStates;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!*(v2 + 16) || (v3 = sub_1D171D4E0(0), (v4 & 1) == 0))
  {
    memset(v10, 0, sizeof(v10));
    v11 = -1;
    goto LABEL_7;
  }

  sub_1D17417AC(*(v2 + 56) + 40 * v3, v10);
  if (v11 == 255)
  {
LABEL_7:
    sub_1D1741A30(v10, &qword_1EC648B70, &qword_1D1E90DF0);
    return 0;
  }

  sub_1D17417AC(v10, v8);
  sub_1D1741A30(v10, &qword_1EC648B70, &qword_1D1E90DF0);
  v7 = v9;
  v6[0] = v8[0];
  v6[1] = v8[1];
  if (!v9)
  {
    return LOBYTE(v6[0]);
  }

  sub_1D17805D8(v6);
  return 0;
}

uint64_t sub_1D19F896C(void *a1, int a2, void *a3, uint64_t a4, void *a5, void *aBlock, int a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t))
{
  v14 = _Block_copy(aBlock);
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    a4 = sub_1D1E67C1C();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = a3;
  v17 = a5;
  v18 = a1;
  a9(a4, a8, v15);
}

uint64_t sub_1D19F8AAC(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19F8AD0, 0, 0);
}

uint64_t sub_1D19F8AD0()
{
  sub_1D17419CC(*(v0 + 104), v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 112);
    v2 = *(v0 + 144);
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = *(MEMORY[0x1E69E8920] + 4);
    v5 = swift_task_alloc();
    *(v0 + 128) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
    *v5 = v0;
    v5[1] = sub_1D19F8CB8;
    v7 = *(v0 + 96);

    return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000010, 0x80000001D1EC2AC0, sub_1D19FC5A0, v3, v6);
  }

  else
  {
    v8 = *(v0 + 112);
    sub_1D17419CC(*(v0 + 104), v0 + 56);
    sub_1D19EDF88();
    swift_allocError();
    v10 = v9;
    v11 = swift_unknownObjectRetain();
    sub_1D19F67F8(v11, &off_1EEC1E3A8, (v0 + 56), v10);
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1D19F8CB8()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19F8DF4, 0, 0);
  }

  else
  {
    v4 = v3[15];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1D19F8DF4()
{
  v1 = v0[15];

  v2 = v0[17];
  v3 = v0[1];

  return v3();
}

void sub_1D19F8E58(uint64_t a1, char a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648D68, &qword_1D1E90DF8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &aBlock - v9;
  v11 = *(v7 + 16);
  v7 += 16;
  v11(&aBlock - v9, a1, v6);
  v12 = (*(v7 + 64) + 16) & ~*(v7 + 64);
  v13 = swift_allocObject();
  (*(v7 + 16))(v13 + v12, v10, v6);
  if (a2)
  {
    v20 = sub_1D19FC8B4;
    v21 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_1D1C40BA8;
    v19 = &block_descriptor_319;
    v14 = _Block_copy(&aBlock);

    v15 = &selRef_offWithParams_expectedValues_expectedValueInterval_completion_;
  }

  else
  {
    v20 = sub_1D19FC5AC;
    v21 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_1D1C40BA8;
    v19 = &block_descriptor_313;
    v14 = _Block_copy(&aBlock);

    v15 = &selRef_onWithParams_expectedValues_expectedValueInterval_completion_;
  }

  [a3 *v15];
  _Block_release(v14);
}

void sub_1D19F9204(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19F924C(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D19F927C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return sub_1D19F8AAC(a1, a2);
}

void sub_1D19F942C(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19F9474(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel20MockBasicInfoCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

void sub_1D19F962C(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19F9674(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel23MockLevelControlCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D19F96A4(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19F96C8, 0, 0);
}

uint64_t sub_1D19F96C8()
{
  sub_1D17419CC(*(v0 + 104), v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 112);
    v2 = *(v0 + 144);
    v3 = *(v0 + 148);
    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *(v4 + 16) = v2;
    *(v4 + 20) = v3;
    *(v4 + 24) = v1;
    v5 = *(MEMORY[0x1E69E8920] + 4);
    v6 = swift_task_alloc();
    *(v0 + 128) = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
    *v6 = v0;
    v6[1] = sub_1D19F7E3C;
    v8 = *(v0 + 96);

    return MEMORY[0x1EEE6DE38](v8, 0, 0, 0xD000000000000010, 0x80000001D1EC2AC0, sub_1D19FA86C, v4, v7);
  }

  else
  {
    v9 = *(v0 + 112);
    sub_1D17419CC(*(v0 + 104), v0 + 56);
    sub_1D19EDF88();
    swift_allocError();
    v11 = v10;
    v12 = swift_unknownObjectRetain();
    sub_1D19F67F8(v12, &off_1EEC1E228, (v0 + 56), v11);
    swift_willThrow();
    v13 = *(v0 + 8);

    return v13();
  }
}

void sub_1D19F98B8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648D68, &qword_1D1E90DF8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &aBlock - v9;
  if (BYTE4(a2) == 1)
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E696F5E0]) init];
    v16 = sub_1D1E692AC();
    [v11 setEnhancedHue_];

    v17 = sub_1D1E691BC();
    [v11 setSaturation_];

    (*(v7 + 16))(v10, a1, v6);
    v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v19 = swift_allocObject();
    (*(v7 + 32))(v19 + v18, v10, v6);
    v28 = sub_1D19FC8B4;
    v29 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_1D1C40BA8;
    v27 = &block_descriptor_31;
    v15 = _Block_copy(&aBlock);

    [a3 enhancedMoveToHueAndSaturationWithParams:v11 expectedValues:0 expectedValueInterval:0 completion:v15];
    goto LABEL_5;
  }

  if (BYTE4(a2) == 3)
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E696F5F0]) init];
    v12 = sub_1D1E692AC();
    [v11 setColorTemperatureMireds_];

    (*(v7 + 16))(v10, a1, v6);
    v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v14 = swift_allocObject();
    (*(v7 + 32))(v14 + v13, v10, v6);
    v28 = sub_1D19FC8B4;
    v29 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_1D1C40BA8;
    v27 = &block_descriptor_285;
    v15 = _Block_copy(&aBlock);

    [a3 moveToColorTemperatureWithParams:v11 expectedValues:0 expectedValueInterval:0 completion:v15];
LABEL_5:
    _Block_release(v15);

    return;
  }

  v27 = &type metadata for StaticColorControlCluster.Command;
  v28 = sub_1D18FA3FC();
  LODWORD(aBlock) = a2;
  BYTE4(aBlock) = BYTE4(a2);
  sub_1D19EDF88();
  v20 = swift_allocError();
  v22 = v21;
  v23 = swift_unknownObjectRetain();
  sub_1D19F67F8(v23, &off_1EEC1E228, &aBlock, v22);
  aBlock = v20;
  sub_1D1E67D5C();
}

uint64_t sub_1D19F9C90(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648D68, &qword_1D1E90DF8);
    return sub_1D1E67D5C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648D68, &qword_1D1E90DF8);
    return sub_1D1E67D6C();
  }
}

unint64_t sub_1D19F9D60(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v5[0] = a2;
  v6 = 2;
  sub_1D1B0DAF8(v5, 0);
  v5[0] = a3;
  v6 = 2;
  return sub_1D1B0DAF8(v5, 1);
}

uint64_t sub_1D19F9E18(void *a1, int a2, void *a3, uint64_t a4, void *a5, void *aBlock, int a7, uint64_t a8, void (*a9)(id, uint64_t, uint64_t, uint64_t))
{
  v14 = _Block_copy(aBlock);
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    a4 = sub_1D1E67C1C();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = a3;
  v17 = a5;
  v18 = a1;
  a9(v16, a4, a8, v15);
}

void sub_1D19FA044(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19FA08C(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel23MockColorControlCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D19FA0BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D19F96A4(a1, a2);
}

void sub_1D19FA29C(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19FA2E4(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel22MockPowerSourceCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

void sub_1D19FA4EC(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19FA534(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel19MockDoorLockCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D19FA564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = v4;
  v5[9] = a4;
  v5[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D19FA588, 0, 0);
}

uint64_t sub_1D19FA588()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_1D17419CC(v0[7], (v0 + 2));
  sub_1D19EDF88();
  swift_allocError();
  v4 = v3;
  v5 = swift_unknownObjectRetain();
  sub_1D19F67F8(v5, v2, v0 + 2, v4);
  swift_willThrow();
  v6 = v0[1];

  return v6();
}

id sub_1D19FA690(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1D19FA6F8(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(void, void), uint64_t *a6)
{
  v10 = *(a1 + *a3);

  a5(*(a1 + *a4), *(a1 + *a4 + 8));
  v11 = *a6;

  JUMPOUT(0x1D3893750);
}

void sub_1D19FA7F4(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19FA83C(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel24MockAppleDoorLockCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_1D19FA910(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    sub_1D19FAEA0(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1D19FAA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(void))
{
  v37 = a4;
  v38 = a8;
  v31 = a2;
  v32 = a7;
  v33 = a1;
  v9 = a6(0);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  result = MEMORY[0x1EEE9AC00](v9 - 8);
  v34 = 0;
  v35 = &v31 - v12;
  v13 = 0;
  v39 = a3;
  v16 = *(a3 + 56);
  v15 = a3 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v40 = (v19 - 1) & v19;
LABEL_11:
    v24 = v38;
    v25 = v35;
    v26 = v21 | (v13 << 6);
    sub_1D19FC720(*(v39 + 48) + *(v36 + 72) * v26, v35, v38);
    v27 = v41;
    v28 = v37(v25);
    result = sub_1D19FC788(v25, v24);
    v41 = v27;
    if (v27)
    {
      return result;
    }

    v19 = v40;
    if (v28)
    {
      *(v33 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_16:
        v30 = v39;

        return v32(v33, v31, v34, v30);
      }
    }
  }

  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_16;
    }

    v23 = *(v15 + 8 * v13);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v40 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D19FAD58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v20 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v21 = *(*(a3 + 48) + v17);
    result = a4(&v21);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v20 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_1D19E119C(v20, a2, v7, a3);
      }
    }
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
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1D19FAEA0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1D19E16A8(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1D19FB048(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v20 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v21 = *(*(a3 + 48) + v17);
    result = a4(&v21);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v20 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_1D19E1A90(v20, a2, v7, a3);
      }
    }
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
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D19FB190(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v36 = a4;
  v30 = a2;
  v31 = a1;
  v39 = sub_1D1E66A7C();
  v6 = *(*(v39 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v39);
  v37 = a3;
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v34 = v8 + 16;
  v35 = v8;
  v32 = 0;
  v33 = (v8 + 8);
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v19 = v18 | (v10 << 6);
    v20 = v39;
    v21 = v38;
LABEL_11:
    (*(v35 + 16))(v21, *(v37 + 48) + *(v35 + 72) * v19, v20);
    v24 = v36(v21);
    v25 = v21;
    if (v4)
    {
      return (*v33)(v21, v20);
    }

    v26 = v24;
    result = (*v33)(v25, v20);
    if (v26)
    {
      *(v31 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        v28 = v37;

        return sub_1D19E13B0(v31, v30, v32, v28);
      }
    }
  }

  v22 = v10;
  v20 = v39;
  v21 = v38;
  while (1)
  {
    v10 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v23 = *(v12 + 8 * v10);
    ++v22;
    if (v23)
    {
      v16 = (v23 - 1) & v23;
      v19 = __clz(__rbit64(v23)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D19FB4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v30 = a2;
  v31 = a8;
  v37 = a4;
  v38 = a6;
  v32 = a1;
  v39 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  result = MEMORY[0x1EEE9AC00](v9 - 8);
  v35 = &v30 - v12;
  v13 = 0;
  v40 = a3;
  v14 = *(a3 + 56);
  v33 = 0;
  v34 = a3 + 56;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v41 = (v17 - 1) & v17;
LABEL_11:
    v22 = v39;
    v23 = v35;
    v24 = v19 | (v13 << 6);
    v25 = v38;
    sub_1D1741C08(*(v40 + 48) + *(v36 + 72) * v24, v35, v38, v39);
    v26 = v42;
    v27 = v37(v23);
    result = sub_1D1741A30(v23, v25, v22);
    v42 = v26;
    if (v26)
    {
      return result;
    }

    v17 = v41;
    if (v27)
    {
      *(v32 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
LABEL_16:
        v29 = v40;

        return v31(v32, v30, v33, v29);
      }
    }
  }

  v20 = v13;
  while (1)
  {
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v13 >= v18)
    {
      goto LABEL_16;
    }

    v21 = *(v34 + 8 * v13);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v41 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D19FB700(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC13HomeDataModel19MockIdentifyCluster_containingDevice);
  if (v3)
  {
    if (*(a1 + OBJC_IVAR____TtC13HomeDataModel19MockIdentifyCluster_lastKnownEndpointID + 2))
    {
      v4 = 0;
    }

    else
    {
      v4 = *(a1 + OBJC_IVAR____TtC13HomeDataModel19MockIdentifyCluster_lastKnownEndpointID);
    }

    v5 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
    swift_beginAccess();
    v6 = *&v3[v5];
    v7 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v3[v5] = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_1D177EEB4(0, *(v6 + 2) + 1, 1, v6);
      *&v3[v5] = v6;
    }

    v10 = *(v6 + 2);
    v9 = *(v6 + 3);
    if (v10 >= v9 >> 1)
    {
      v6 = sub_1D177EEB4((v9 > 1), v10 + 1, 1, v6);
    }

    *(v6 + 2) = v10 + 1;
    v11 = &v6[8 * v10];
    *(v11 + 16) = v4;
    v11[34] = 10;
    *(v11 + 9) = 0;
    *&v3[v5] = v6;
    swift_endAccess();
  }

  return (*(a2 + 16))(a2, 0);
}

uint64_t sub_1D19FB838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v24 = a2;
    if (*(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_lastKnownEndpointID + 2))
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_lastKnownEndpointID);
    }

    v11 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
    swift_beginAccess();
    v12 = *&v9[v11];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v9[v11] = v12;
    v14 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1D177EEB4(0, *(v12 + 2) + 1, 1, v12);
      *&v9[v11] = v12;
    }

    v16 = *(v12 + 2);
    v15 = *(v12 + 3);
    if (v16 >= v15 >> 1)
    {
      v12 = sub_1D177EEB4((v15 > 1), v16 + 1, 1, v12);
    }

    *(v12 + 2) = v16 + 1;
    v17 = &v12[8 * v16];
    *(v17 + 16) = v10;
    v17[34] = 11;
    *(v17 + 9) = 1;
    *&v9[v11] = v12;
    swift_endAccess();

    a3 = v14;
    a2 = v24;
  }

  v18 = *(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_commandObserver);
  if (v18)
  {
    v19 = *(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_commandObserver + 8);

    v18(1, a1, 1);
    sub_1D17169C0(v18);
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    sub_1D19F6AB0(a1);
  }

  v22 = swift_allocObject();
  *(v22 + 16) = 1;
  sub_1D1A05F58(a2, a3, sub_1D19FC8B8, v22);
}

uint64_t sub_1D19FBA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v24 = a2;
    if (*(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_lastKnownEndpointID + 2))
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_lastKnownEndpointID);
    }

    v11 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
    swift_beginAccess();
    v12 = *&v9[v11];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v9[v11] = v12;
    v14 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1D177EEB4(0, *(v12 + 2) + 1, 1, v12);
      *&v9[v11] = v12;
    }

    v16 = *(v12 + 2);
    v15 = *(v12 + 3);
    if (v16 >= v15 >> 1)
    {
      v12 = sub_1D177EEB4((v15 > 1), v16 + 1, 1, v12);
    }

    *(v12 + 2) = v16 + 1;
    v17 = &v12[8 * v16];
    *(v17 + 16) = v10;
    v17[34] = 11;
    *(v17 + 9) = 0;
    *&v9[v11] = v12;
    swift_endAccess();

    a3 = v14;
    a2 = v24;
  }

  v18 = *(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_commandObserver);
  if (v18)
  {
    v19 = *(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_commandObserver + 8);

    v18(0, a1, 0);
    sub_1D17169C0(v18);
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    sub_1D19F6AB0(a1);
  }

  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  sub_1D1A05F58(a2, a3, sub_1D19FC8B8, v22);
}

uint64_t sub_1D19FBC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D19F86D0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v26 = a1;
    v27 = a2;
    if (*(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_lastKnownEndpointID + 2))
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_lastKnownEndpointID);
    }

    v12 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
    swift_beginAccess();
    v13 = *&v10[v12];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v10[v12] = v13;
    v15 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1D177EEB4(0, *(v13 + 2) + 1, 1, v13);
      *&v10[v12] = v13;
    }

    v17 = *(v13 + 2);
    v16 = *(v13 + 3);
    if (v17 >= v16 >> 1)
    {
      v13 = sub_1D177EEB4((v16 > 1), v17 + 1, 1, v13);
    }

    *(v13 + 2) = v17 + 1;
    v18 = &v13[8 * v17];
    *(v18 + 16) = v11;
    v18[34] = 11;
    *(v18 + 9) = 2;
    *&v10[v12] = v13;
    swift_endAccess();

    a3 = v15;
    a1 = v26;
    a2 = v27;
  }

  v19 = v8 ^ 1;
  v20 = *(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_commandObserver);
  if (v20)
  {
    v21 = *(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_commandObserver + 8);

    v20(2, a1, v19 & 1);
    sub_1D17169C0(v20);
  }

  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    sub_1D19F6AB0(a1);
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v19 & 1;
  sub_1D1A05F58(a2, a3, sub_1D19FC5B0, v24);
}

uint64_t sub_1D19FBE24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = [a1 level];
  v10 = [v9 unsignedCharValue];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v27 = a2;
    v28 = a4;
    if (*(v5 + OBJC_IVAR____TtC13HomeDataModel23MockLevelControlCluster_lastKnownEndpointID + 2))
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v5 + OBJC_IVAR____TtC13HomeDataModel23MockLevelControlCluster_lastKnownEndpointID);
    }

    v14 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
    swift_beginAccess();
    v15 = *&v12[v14];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v12[v14] = v15;
    v17 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1D177EEB4(0, *(v15 + 2) + 1, 1, v15);
      *&v12[v14] = v15;
    }

    v19 = *(v15 + 2);
    v18 = *(v15 + 3);
    if (v19 >= v18 >> 1)
    {
      v15 = sub_1D177EEB4((v18 > 1), v19 + 1, 1, v15);
    }

    *(v15 + 2) = v19 + 1;
    v20 = &v15[8 * v19];
    *(v20 + 16) = v13;
    v20[34] = 12;
    *(v20 + 9) = 0;
    *&v12[v14] = v15;
    swift_endAccess();

    a3 = v17;
    a2 = v27;
    a4 = v28;
  }

  v21 = *(v5 + OBJC_IVAR____TtC13HomeDataModel23MockLevelControlCluster_commandObserver);
  if (v21)
  {
    v22 = *(v5 + OBJC_IVAR____TtC13HomeDataModel23MockLevelControlCluster_commandObserver + 8);

    v21(0, a2, v10);
    sub_1D17169C0(v21);
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    sub_1D19F6AB0(a2);
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v10;
  sub_1D1A05F88(a3, a4, sub_1D19FC558, v25);
}

uint64_t sub_1D19FC040(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = [a1 colorTemperatureMireds];
  v10 = [v9 unsignedShortValue];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v27 = a2;
    v28 = a4;
    if (*(v5 + OBJC_IVAR____TtC13HomeDataModel23MockColorControlCluster_lastKnownEndpointID + 2))
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v5 + OBJC_IVAR____TtC13HomeDataModel23MockColorControlCluster_lastKnownEndpointID);
    }

    v14 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
    swift_beginAccess();
    v15 = *&v12[v14];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v12[v14] = v15;
    v17 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1D177EEB4(0, *(v15 + 2) + 1, 1, v15);
      *&v12[v14] = v15;
    }

    v19 = *(v15 + 2);
    v18 = *(v15 + 3);
    if (v19 >= v18 >> 1)
    {
      v15 = sub_1D177EEB4((v18 > 1), v19 + 1, 1, v15);
    }

    *(v15 + 2) = v19 + 1;
    v20 = &v15[8 * v19];
    *(v20 + 16) = v13;
    v20[34] = 17;
    *(v20 + 9) = 10;
    *&v12[v14] = v15;
    swift_endAccess();

    a3 = v17;
    a2 = v27;
    a4 = v28;
  }

  v21 = *(v5 + OBJC_IVAR____TtC13HomeDataModel23MockColorControlCluster_commandObserver);
  if (v21)
  {
    v22 = *(v5 + OBJC_IVAR____TtC13HomeDataModel23MockColorControlCluster_commandObserver + 8);
    v29[3] = MEMORY[0x1E69E75F8];
    LOWORD(v29[0]) = v10;

    v21(10, a2, v29);
    sub_1D17169C0(v21);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    sub_1D19F6AB0(a2);
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v10;
  sub_1D1A05FB8(a3, a4, sub_1D19FC510, v25);
}

uint64_t sub_1D19FC278(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = [a1 enhancedHue];
  v11 = [v10 unsignedShortValue];

  v12 = [a1 saturation];
  v13 = [v12 unsignedShortValue];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v30 = v13;
    v31 = a4;
    if (*(v5 + OBJC_IVAR____TtC13HomeDataModel23MockColorControlCluster_lastKnownEndpointID + 2))
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v5 + OBJC_IVAR____TtC13HomeDataModel23MockColorControlCluster_lastKnownEndpointID);
    }

    v17 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
    swift_beginAccess();
    v18 = *&v15[v17];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v15[v17] = v18;
    v20 = a2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_1D177EEB4(0, *(v18 + 2) + 1, 1, v18);
      *&v15[v17] = v18;
    }

    v22 = *(v18 + 2);
    v21 = *(v18 + 3);
    if (v22 >= v21 >> 1)
    {
      v18 = sub_1D177EEB4((v21 > 1), v22 + 1, 1, v18);
    }

    *(v18 + 2) = v22 + 1;
    v23 = &v18[8 * v22];
    *(v23 + 16) = v16;
    v23[34] = 17;
    *(v23 + 9) = 67;
    *&v15[v17] = v18;
    swift_endAccess();

    a4 = v31;
    a2 = v20;
    v13 = v30;
  }

  v24 = *(v5 + OBJC_IVAR____TtC13HomeDataModel23MockColorControlCluster_commandObserver);
  if (v24)
  {
    v25 = *(v5 + OBJC_IVAR____TtC13HomeDataModel23MockColorControlCluster_commandObserver + 8);
    v32[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648D70, &qword_1D1E90E00);
    LOWORD(v32[0]) = v11;
    WORD1(v32[0]) = v13;

    v24(67, a2, v32);
    sub_1D17169C0(v24);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    sub_1D19F6AB0(a2);
  }

  v28 = swift_allocObject();
  *(v28 + 16) = v11;
  *(v28 + 18) = v13;
  sub_1D1A05FB8(a3, a4, sub_1D19FC504, v28);
}

unint64_t sub_1D19FC510()
{
  v2[0] = *(v0 + 16);
  v3 = 2;
  return sub_1D1B0DAF8(v2, 7);
}

unint64_t sub_1D19FC558()
{
  v2[0] = *(v0 + 16);
  v3 = 2;
  return sub_1D1B0DAF8(v2, 0);
}

unint64_t sub_1D19FC5B4()
{
  v2[0] = *(v0 + 16);
  v2[32] = 0;
  return sub_1D1B0DAF8(v2, 0);
}

uint64_t objectdestroyTm_5()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648D68, &qword_1D1E90DF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

unint64_t sub_1D19FC698()
{
  result = qword_1EC648D80;
  if (!qword_1EC648D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC648D78, &qword_1D1E90E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648D80);
  }

  return result;
}

uint64_t sub_1D19FC720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D19FC788(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D19FC7E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D19FC830(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D19FC8C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1D178D5B4(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1D1E6869C();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(a1 + 48) + 4 * result);
    v13 = *(a1 + 36);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_1D178D5B4((v14 > 1), v15 + 1, 1);
      v7 = v25;
      v13 = v23;
      result = v24;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + 4 * v15 + 32) = v12;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1D1716920(result, v13, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1D1716920(result, v13, 0);
      v7 = v25;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D19FCADC()
{
  v1 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_delegates;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648DF0, &qword_1D1E91108);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_unknownObjectWeakAssign();
  MEMORY[0x1D3891220](v2);
  if (*((*(v0 + v1) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + v1) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v4 = *((*(v0 + v1) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1D1E67C5C();
  }

  sub_1D1E67CAC();
  return swift_endAccess();
}

uint64_t sub_1D19FCBC8(uint64_t a1, unsigned __int16 a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
  swift_beginAccess();
  v6 = *&v3[v5];
  if (*(v6 + 16) && (v7 = sub_1D171D15C(a2), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + 16 * v7);
    v10 = *v9;
    v11 = v9[1];
    swift_bridgeObjectRetain_n();

    swift_endAccess();
    result = sub_1D1791518(v10);
    v13 = 0;
    v14 = 1 << *(v10 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v10 + 64);
    v17 = (v14 + 63) >> 6;
    do
    {
      if (!v16)
      {
        while (1)
        {
          v18 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v18 >= v17)
          {

            return 0;
          }

          v16 = *(v10 + 64 + 8 * v18);
          ++v13;
          if (v16)
          {
            v13 = v18;
            goto LABEL_12;
          }
        }

        __break(1u);
        return result;
      }

      v18 = v13;
LABEL_12:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v20 = *(*(v10 + 56) + ((v18 << 10) | (16 * v19)));
      result = swift_dynamicCastUnknownClass();
    }

    while (!result);
    swift_unknownObjectRetain();

    v21 = swift_dynamicCastUnknownClass();
    if (v21)
    {
      ObjectType = swift_getObjectType();
      v23 = swift_conformsToProtocol2();
      if (!v23)
      {
        return v21;
      }

      v24 = v23;
      v25 = *(v23 + 72);
      swift_unknownObjectRetain();
      v26 = v3;
      v25(v3, ObjectType, v24);
      (*(v24 + 96))(a2, ObjectType, v24);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
    return 0;
  }

  return v21;
}

uint64_t sub_1D19FCDD8@<X0>(unsigned int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v59 = *(v7 + 16);
  v60 = v7;
  v9 = v59(v8, v7);
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  (*(v11 + 24))(v66, v10, v11);
  v12 = LOBYTE(v66[0]);
  v13 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedReads;
  swift_beginAccess();
  v57 = a1;
  if (!*(v4 + v13))
  {
    goto LABEL_6;
  }

  v14 = a1 | (v9 << 32) | (v12 << 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v63 = *(v4 + v13);
  v16 = v63;
  *(v4 + v13) = 0x8000000000000000;
  v17 = sub_1D171D848(v14, 0);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_38;
  }

  LOBYTE(v11) = v18;
  if (v16[3] >= v22)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    sub_1D1729400(v22, isUniquelyReferenced_nonNull_native);
    v16 = v63;
    v17 = sub_1D171D848(v14, 0);
    if ((v11 & 1) != (v23 & 1))
    {
      sub_1D1E690FC();
      __break(1u);
LABEL_6:
      v24 = 0;
      goto LABEL_12;
    }
  }

  *(v4 + v13) = v16;
  if (v11)
  {
    goto LABEL_10;
  }

LABEL_9:
  v25 = v17;
  sub_1D19DBA0C(v17, v14, 0, 0, v16);
  v17 = v25;
LABEL_10:
  while (1)
  {
    v26 = v16[7];
    v27 = *(v26 + 8 * v17);
    v21 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v21)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    v56 = v17;
    sub_1D1739610();
    v17 = v56;
    v16 = v63;
    *(v4 + v13) = v63;
    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  *(v26 + 8 * v17) = v28;
  v24 = sub_1D17421C8;
LABEL_12:
  swift_endAccess();
  v29 = v59(v8, v60);
  v30 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
  swift_beginAccess();
  v31 = *(v4 + v30);
  if (!*(v31 + 16) || (v32 = sub_1D171D15C(v29), (v33 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_21;
  }

  v34 = *(*(v31 + 56) + 16 * v32);
  swift_endAccess();
  v35 = a2[3];
  v36 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v35);
  v37 = *(v36 + 24);

  v37(v66, v35, v36);
  if (!*(v34 + 16) || (v38 = sub_1D171D278(v66[0]), (v39 & 1) == 0))
  {

    goto LABEL_21;
  }

  v40 = (*(v34 + 56) + 16 * v38);
  v41 = *v40;
  v42 = v40[1];
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  v44 = (*(v42 + 16))(ObjectType, v42);
  if (*(v44 + 16))
  {
    v45 = sub_1D171D4E0(v57);
    if (v46)
    {
      sub_1D17417AC(*(v44 + 56) + 40 * v45, v66);

LABEL_30:
      if (v57 == 65531)
      {
        v54 = sub_1D19F6A1C(ObjectType, v42);
        v55 = sub_1D19FC8C0(v54);

        *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A50, &unk_1D1E910D0);
        swift_unknownObjectRelease();
        *a3 = v55;
        goto LABEL_34;
      }

      sub_1D1741C08(v66, v61, &qword_1EC648B70, &qword_1D1E90DF0);
      if (v62 != 255)
      {
        v63 = v61[0];
        v64 = v61[1];
        v65 = v62;
        sub_1D19F41AC(a3);
        swift_unknownObjectRelease();
        sub_1D17805D8(&v63);
        goto LABEL_34;
      }

      swift_unknownObjectRelease();
      sub_1D1741A30(v66, &qword_1EC648B70, &qword_1D1E90DF0);
      sub_1D1741A30(v61, &qword_1EC648B70, &qword_1D1E90DF0);
      goto LABEL_21;
    }
  }

  memset(v66, 0, sizeof(v66));
  v67 = -1;
  if (qword_1EC642288 != -1)
  {
    swift_once();
  }

  v48 = qword_1EC6BE130;
  if (!*(qword_1EC6BE130 + 16))
  {
    goto LABEL_30;
  }

  sub_1D171D4E0(v57);
  if ((v49 & 1) == 0)
  {
    goto LABEL_30;
  }

  if (*(v48 + 16))
  {
    v50 = sub_1D171D4E0(v57);
    if (v51)
    {
      sub_1D17417AC(*(v48 + 56) + 40 * v50, &v63);
      *(a3 + 24) = &type metadata for MockMatterAttributeValue;
      v52 = swift_allocObject();
      *a3 = v52;
      v53 = v64;
      *(v52 + 16) = v63;
      *(v52 + 32) = v53;
      *(v52 + 48) = v65;
      swift_unknownObjectRelease();
LABEL_34:
      sub_1D1741A30(v66, &qword_1EC648B70, &qword_1D1E90DF0);
      return sub_1D17169C0(v24);
    }
  }

  swift_unknownObjectRelease();
  sub_1D1741A30(v66, &qword_1EC648B70, &qword_1D1E90DF0);
LABEL_21:
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return sub_1D17169C0(v24);
}

uint64_t sub_1D19FD350@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  v6 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedReads;
  swift_beginAccess();
  if (!*(v2 + v6))
  {
    goto LABEL_6;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  *&v185 = *(v4 + v6);
  *(v4 + v6) = 0x8000000000000000;
  v9 = sub_1D171D848(a1, 1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    goto LABEL_186;
  }

  LOBYTE(v3) = v10;
  if (v8[3] >= v14)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_195;
    }
  }

  else
  {
    sub_1D1729400(v14, isUniquelyReferenced_nonNull_native);
    v8 = v185;
    v9 = sub_1D171D848(a1, 1);
    if ((v3 & 1) != (v15 & 1))
    {
      sub_1D1E690FC();
      __break(1u);
LABEL_6:
      v151 = 0;
      goto LABEL_12;
    }
  }

  *(v4 + v6) = v8;
  if (v3)
  {
    goto LABEL_10;
  }

LABEL_9:
  v3 = v9;
  sub_1D19DBA0C(v9, a1, 1, 0, v8);

  v9 = v3;
LABEL_10:
  v16 = v8[7];
  v17 = *(v16 + 8 * v9);
  v13 = __OFADD__(v17, 1);
  v18 = v17 + 1;
  if (v13)
  {
    goto LABEL_187;
  }

  *(v16 + 8 * v9) = v18;
  v151 = sub_1D17421C8;
LABEL_12:
  swift_endAccess();
  v153 = *(a1 + 16);
  if (v153)
  {
    v19 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
    swift_beginAccess();
    v20 = a1 + 32;
    v6 = 0;
    v3 = 0;
    v21 = 0;
    v22 = MEMORY[0x1E69E7CC8];
    v167 = v4;
    v160 = v19;
    v150 = a1 + 32;
    while (1)
    {
      v154 = v21;
      v23 = (v20 + 12 * v21);
      v159 = *(v23 + 3);
      v161 = *(v23 + 1);
      v166 = *(v23 + 8);
      if (v23[1])
      {
        v178 = v3;
        v24 = *(*(v4 + v19) + 16);

        *&v191 = sub_1D177DD60(0, v24 + 1, 0, MEMORY[0x1E69E7CC0]);

        sub_1D17A4414(v25);
        sub_1D17A4328(&unk_1F4D5FF90);

        v26 = v191;
        v27 = MEMORY[0x1D38917C0](*(v191 + 16), MEMORY[0x1E69E75F8], MEMORY[0x1E69E7608]);
        a1 = v27;
        v28 = *(v26 + 16);
        v170 = v6;
        if (v28)
        {
          v29 = v22;
          v30 = 0;
          v31 = v27 + 56;
          do
          {
            while (1)
            {
              v32 = *(v26 + 32 + 2 * v30++);
              v33 = MEMORY[0x1D3892820](*(a1 + 40), v32, 2);
              v34 = -1 << *(a1 + 32);
              v35 = v33 & ~v34;
              if ((*(v31 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
              {
                break;
              }

LABEL_22:
              v37 = swift_isUniquelyReferenced_nonNull_native();
              *&v191 = a1;
              sub_1D1940EF8(v32, v35, v37);
              a1 = v191;
              if (v30 == v28)
              {
                goto LABEL_25;
              }

              v31 = v191 + 56;
            }

            v36 = ~v34;
            while (*(*(a1 + 48) + 2 * v35) != v32)
            {
              v35 = (v35 + 1) & v36;
              if (((*(v31 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
              {
                goto LABEL_22;
              }
            }
          }

          while (v30 != v28);
LABEL_25:

          v4 = v167;
          v19 = v160;
          v22 = v29;
          v6 = v170;
        }

        else
        {
        }

        v38 = *(a1 + 16);
        v3 = v178;
        if (v38)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643130, &qword_1D1E81F40);
          v6 = swift_allocObject();
          v39 = _swift_stdlib_malloc_size(v6);
          *(v6 + 16) = v38;
          *(v6 + 24) = (v39 - 32 + ((v39 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
          a1 = sub_1D1805608(&v191, (v6 + 32), v38, a1);
          v9 = sub_1D1716918();
          if (a1 != v38)
          {
            goto LABEL_194;
          }

          v9 = v6;
          v6 = v170;
        }

        else
        {

          v9 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        a1 = *v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643130, &qword_1D1E81F40);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1D1E739C0;
        *(v9 + 32) = a1;
      }

      v155 = *(v9 + 16);
      if (v155)
      {
        break;
      }

LABEL_168:

      v21 = v154 + 1;
      v20 = v150;
      if (v154 + 1 == v153)
      {
        goto LABEL_171;
      }
    }

    v40 = 0;
    v156 = v9 + 32;
    v157 = v9;
    while (1)
    {
      if (v40 >= *(v9 + 16))
      {
        goto LABEL_185;
      }

      v158 = v40;
      v182 = *(v156 + 2 * v40);
      a1 = v159;
      if (v159 != 30)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433F8, &unk_1D1E910E0);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1D1E739C0;
        *(v9 + 32) = v159;
        goto LABEL_47;
      }

      swift_beginAccess();
      v41 = *(v4 + v19);
      if (!*(v41 + 16))
      {
        break;
      }

      v42 = sub_1D171D15C(v182);
      if ((v43 & 1) == 0)
      {
        break;
      }

      v44 = *(*(v41 + 56) + 16 * v42);
      swift_endAccess();
      if (!*(v44 + 16))
      {
        goto LABEL_46;
      }

      v45 = sub_1D171D278(0);
      if ((v46 & 1) == 0)
      {
        goto LABEL_46;
      }

      a1 = *(*(v44 + 56) + 16 * v45);
      type metadata accessor for MockDescriptorCluster();
      if (!swift_dynamicCastClass())
      {
        goto LABEL_46;
      }

      swift_unknownObjectRetain();
      v47 = sub_1D19F78C4();
      swift_unknownObjectRelease();
      a1 = *(v47 + 16);
      if (!a1)
      {

        goto LABEL_46;
      }

      v162 = sub_1D18043F4(*(v47 + 16), 0);
      v48 = sub_1D18085B0(&v191, v162 + 4, a1, v47);
      sub_1D1716918();
      if (v48 != a1)
      {
LABEL_198:
        __break(1u);
LABEL_199:
        sub_1D1E690FC();
        __break(1u);
LABEL_200:
        sub_1D1E690FC();
        __break(1u);
LABEL_201:
        type metadata accessor for MTRAttributeIDType(0);
        result = sub_1D1E690FC();
        __break(1u);
        return result;
      }

      v9 = v162;
LABEL_47:
      v164 = *(v9 + 16);
      if (v164)
      {
        v49 = 0;
        v165 = v9 + 32;
        v163 = v9;
        while (1)
        {
          if (v49 >= *(v9 + 16))
          {
            goto LABEL_184;
          }

          v168 = v49;
          v181 = *(v165 + v49);
          if ((v166 & 1) == 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433F0, &unk_1D1E71870);
            v9 = swift_allocObject();
            *(v9 + 16) = xmmword_1D1E739C0;
            *(v9 + 32) = v161;
            goto LABEL_66;
          }

          swift_beginAccess();
          v50 = *(v4 + v19);
          if (!*(v50 + 16))
          {
            break;
          }

          v51 = sub_1D171D15C(v182);
          if ((v52 & 1) == 0)
          {
            break;
          }

          v53 = (*(v50 + 56) + 16 * v51);
          v54 = *v53;
          a1 = v53[1];
          if (!*(*v53 + 16) || (v55 = sub_1D171D278(v181), (v56 & 1) == 0))
          {

            goto LABEL_65;
          }

          v179 = v3;
          v57 = (*(v54 + 56) + 16 * v55);
          v58 = *v57;
          v59 = v57[1];

          swift_unknownObjectRetain();
          swift_endAccess();
          sub_1D1791518(v54);
          ObjectType = swift_getObjectType();
          v61 = (*(v59 + 16))(ObjectType, v59);
          v9 = swift_unknownObjectRelease();
          v62 = *(v61 + 16);
          v171 = v6;
          if (v62)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433F0, &unk_1D1E71870);
            v63 = swift_allocObject();
            v64 = _swift_stdlib_malloc_size(v63);
            v65 = v64 - 32;
            if (v64 < 32)
            {
              v65 = v64 - 29;
            }

            *(v63 + 16) = v62;
            *(v63 + 24) = 2 * (v65 >> 2);
            a1 = v63;
            v3 = sub_1D1805808(&v191, (v63 + 32), v62, v61);
            v6 = *(&v191 + 1);

            v9 = sub_1D1716918();
            if (v3 != v62)
            {
              goto LABEL_191;
            }

            v4 = v167;
            v19 = v160;
            v6 = v171;
            v66 = a1;
          }

          else
          {
            v66 = MEMORY[0x1E69E7CC0];
          }

          if (qword_1EC642288 != -1)
          {
            v145 = v66;
            v9 = swift_once();
            v66 = v145;
          }

          v132 = qword_1EC6BE130;
          v3 = *(qword_1EC6BE130 + 16);
          if (v3)
          {
            v175 = v66;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433F0, &unk_1D1E71870);
            v133 = swift_allocObject();
            v134 = _swift_stdlib_malloc_size(v133);
            v135 = v134 - 32;
            if (v134 < 32)
            {
              v135 = v134 - 29;
            }

            *(v133 + 16) = v3;
            *(v133 + 24) = 2 * (v135 >> 2);
            v184 = v133;
            v136 = sub_1D1805808(&v191, (v133 + 32), v3, v132);
            a1 = *(&v192 + 1);
            v6 = v193;

            v9 = sub_1D1716918();
            if (v136 != v3)
            {
              goto LABEL_192;
            }

            v4 = v167;
            v19 = v160;
            v6 = v171;
            v66 = v175;
          }

          else
          {
            v184 = MEMORY[0x1E69E7CC0];
          }

          a1 = *(v184 + 16);
          v3 = *(v66 + 16);
          v137 = v3 + a1;
          if (__OFADD__(v3, a1))
          {
            goto LABEL_188;
          }

          v138 = v66;
          v9 = swift_isUniquelyReferenced_nonNull_native();
          v139 = v138;
          if (!v9 || v137 > *(v138 + 24) >> 1)
          {
            if (v3 <= v137)
            {
              v140 = v3 + a1;
            }

            else
            {
              v140 = v3;
            }

            v9 = sub_1D177DE70(v9, v140, 1, v138);
            v139 = v9;
          }

          v3 = v179;
          v176 = v139;
          if (*(v184 + 16))
          {
            v141 = *(v139 + 16);
            if ((*(v139 + 24) >> 1) - v141 < a1)
            {
              goto LABEL_193;
            }

            memcpy((v139 + 4 * v141 + 32), (v184 + 32), 4 * a1);

            v142 = v176;
            v143 = *(v176 + 16);
            if (a1)
            {
              v13 = __OFADD__(v143, a1);
              v143 += a1;
              if (v13)
              {
                __break(1u);
                goto LABEL_198;
              }

              *(v176 + 16) = v143;
            }
          }

          else
          {

            if (a1)
            {
              goto LABEL_189;
            }

            v142 = v176;
            v143 = *(v176 + 16);
          }

          v144 = *(v142 + 24) >> 1;
          if (v144 <= v143)
          {
            v9 = sub_1D177DE70(1, v143 + 1, 1, v142);
            v142 = v9;
            v143 = *(v9 + 16);
            if (*(v9 + 24) >> 1 <= v143)
            {
              goto LABEL_190;
            }
          }

          else if (v144 <= v143)
          {
            goto LABEL_190;
          }

          *(v142 + 4 * v143 + 32) = dword_1F4D5FFD8;
          *(v142 + 16) = v143 + 1;
          a1 = v142;

          v9 = a1;
LABEL_66:
          v177 = *(v9 + 16);
          if (v177)
          {
            a1 = 0;
            v173 = v9 + 32;
            v174 = v9;
            while (1)
            {
              if (a1 >= *(v9 + 16))
              {
                __break(1u);
LABEL_173:
                __break(1u);
LABEL_174:
                __break(1u);
LABEL_175:
                __break(1u);
LABEL_176:
                __break(1u);
LABEL_177:
                __break(1u);
LABEL_178:
                __break(1u);
                goto LABEL_179;
              }

              v183 = *(v173 + 4 * a1);
              swift_beginAccess();
              v69 = *(v4 + v19);
              v180 = v3;
              if (!*(v69 + 16))
              {
                break;
              }

              v70 = sub_1D171D15C(v182);
              if ((v71 & 1) == 0)
              {
                break;
              }

              v172 = v6;
              v72 = (*(v69 + 56) + 16 * v70);
              v73 = *v72;
              v74 = v72[1];
              if (!*(*v72 + 16) || (v75 = sub_1D171D278(v181), (v76 & 1) == 0))
              {

                swift_endAccess();
                sub_1D1791518(v73);
                v6 = v172;
                goto LABEL_81;
              }

              v77 = (*(v73 + 56) + 16 * v75);
              v3 = *v77;
              v78 = v77[1];

              swift_unknownObjectRetain();
              swift_endAccess();
              sub_1D1791518(v73);
              v6 = v172;
              if (!v3)
              {
                goto LABEL_81;
              }

              v79 = swift_getObjectType();
              swift_unknownObjectRetain();
              sub_1D19F6680(v183, v79, v78, &v185);
              swift_unknownObjectRelease();
              if (v187 != 255)
              {
                v191 = v185;
                v192 = v186;
                LOBYTE(v193) = v187;
                sub_1D19F41AC(&v188);
                sub_1D17805D8(&v191);
                v4 = v167;
                goto LABEL_85;
              }

              sub_1D1741A30(&v185, &qword_1EC648B70, &qword_1D1E90DF0);
              if (v183 != 65531)
              {
                v80 = 0uLL;
                v4 = v167;
LABEL_84:
                v188 = v80;
                v189 = v80;
                goto LABEL_85;
              }

              v122 = swift_getObjectType();
              swift_unknownObjectRetain();
              v3 = sub_1D19F6A1C(v122, v78);
              swift_unknownObjectRelease();
              v6 = *(v3 + 16);
              v4 = v167;
              if (v6)
              {
                *&v191 = MEMORY[0x1E69E7CC0];
                sub_1D178D5B4(0, v6, 0);
                v123 = v191;
                v124 = -1 << *(v3 + 32);
                v9 = sub_1D1E6869C();
                v125 = v9;
                v169 = v22;
                while ((v125 & 0x8000000000000000) == 0 && v125 < 1 << *(v3 + 32))
                {
                  v126 = v3 + 56;
                  v4 = 1 << v125;
                  if ((*(v3 + 56 + 8 * (v125 >> 6)) & (1 << v125)) == 0)
                  {
                    goto LABEL_180;
                  }

                  v127 = *(*(v3 + 48) + 4 * v125);
                  v128 = *(v3 + 36);
                  *&v191 = v123;
                  v130 = *(v123 + 16);
                  v129 = *(v123 + 24);
                  if (v130 >= v129 >> 1)
                  {
                    v149 = v128;
                    v9 = sub_1D178D5B4((v129 > 1), v130 + 1, 1);
                    v128 = v149;
                    v126 = v3 + 56;
                    v123 = v191;
                  }

                  *(v123 + 16) = v130 + 1;
                  *(v123 + 4 * v130 + 32) = v127;
                  if (v125 >= -(-1 << *(v3 + 32)))
                  {
                    goto LABEL_181;
                  }

                  if ((*(v126 + 8 * (v125 >> 6)) & v4) == 0)
                  {
                    goto LABEL_182;
                  }

                  if (v128 != *(v3 + 36))
                  {
                    goto LABEL_183;
                  }

                  v9 = sub_1D1E686BC();
                  v125 = v9;
                  --v6;
                  v22 = v169;
                  if (!v6)
                  {

                    v4 = v167;
                    v19 = v160;
                    goto LABEL_133;
                  }
                }

LABEL_179:
                __break(1u);
LABEL_180:
                __break(1u);
LABEL_181:
                __break(1u);
LABEL_182:
                __break(1u);
LABEL_183:
                __break(1u);
LABEL_184:
                __break(1u);
LABEL_185:
                __break(1u);
LABEL_186:
                __break(1u);
LABEL_187:
                __break(1u);
LABEL_188:
                __break(1u);
LABEL_189:
                __break(1u);
LABEL_190:
                __break(1u);
LABEL_191:
                __break(1u);
LABEL_192:
                __break(1u);
LABEL_193:
                __break(1u);
LABEL_194:
                __break(1u);
LABEL_195:
                v148 = v9;
                sub_1D1739610();
                v9 = v148;
                v8 = v185;
                *(v4 + v6) = v185;
                if ((v3 & 1) == 0)
                {
                  goto LABEL_9;
                }

                goto LABEL_10;
              }

              v123 = MEMORY[0x1E69E7CC0];
LABEL_133:
              *(&v189 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A50, &unk_1D1E910D0);
              *&v188 = v123;
              v6 = v172;
LABEL_85:
              v190[0] = v188;
              v190[1] = v189;
              sub_1D1741C08(v190, &v191, &qword_1EC645D58, &unk_1D1E7E530);
              sub_1D17169C0(v6);
              v6 = swift_isUniquelyReferenced_nonNull_native();
              *&v185 = v22;
              v82 = sub_1D171D15C(v182);
              v83 = v22[2];
              v84 = (v81 & 1) == 0;
              v9 = v83 + v84;
              if (__OFADD__(v83, v84))
              {
                goto LABEL_173;
              }

              LOBYTE(v3) = v81;
              if (v22[3] >= v9)
              {
                if (v6)
                {
                  v87 = v185;
                  if (v81)
                  {
                    goto LABEL_94;
                  }
                }

                else
                {
                  sub_1D17395FC();
                  v87 = v185;
                  if (v3)
                  {
                    goto LABEL_94;
                  }
                }
              }

              else
              {
                sub_1D17293EC(v9, v6);
                v85 = sub_1D171D15C(v182);
                if ((v3 & 1) != (v86 & 1))
                {
                  goto LABEL_199;
                }

                v82 = v85;
                v87 = v185;
                if (v3)
                {
                  goto LABEL_94;
                }
              }

              v9 = sub_1D18D9B40(MEMORY[0x1E69E7CC0]);
              v87[(v82 >> 6) + 8] |= 1 << v82;
              *(v87[6] + 2 * v82) = v182;
              *(v87[7] + 8 * v82) = v9;
              v88 = v87[2];
              v13 = __OFADD__(v88, 1);
              v89 = v88 + 1;
              if (v13)
              {
                goto LABEL_176;
              }

              v87[2] = v89;
LABEL_94:
              v90 = v87;
              v91 = v87[7];
              sub_1D17169C0(v180);
              v92 = *(v91 + 8 * v82);
              v6 = swift_isUniquelyReferenced_nonNull_native();
              *&v185 = *(v91 + 8 * v82);
              v93 = v185;
              *(v91 + 8 * v82) = 0x8000000000000000;
              v95 = sub_1D171D278(v181);
              v96 = *(v93 + 16);
              v97 = (v94 & 1) == 0;
              v9 = v96 + v97;
              if (__OFADD__(v96, v97))
              {
                goto LABEL_174;
              }

              LOBYTE(v3) = v94;
              if (*(v93 + 24) >= v9)
              {
                if ((v6 & 1) == 0)
                {
                  sub_1D17395E8();
                  v93 = v185;
                }
              }

              else
              {
                sub_1D1729150(v9, v6);
                v93 = v185;
                v98 = sub_1D171D278(v181);
                if ((v3 & 1) != (v99 & 1))
                {
                  goto LABEL_200;
                }

                v95 = v98;
              }

              v100 = *(v91 + 8 * v82);
              *(v91 + 8 * v82) = v93;

              v101 = *(v91 + 8 * v82);
              v22 = v90;
              if ((v3 & 1) == 0)
              {
                v9 = sub_1D18D9B68(MEMORY[0x1E69E7CC0]);
                v101[(v95 >> 6) + 8] |= 1 << v95;
                *(v101[6] + v95) = v181;
                *(v101[7] + 8 * v95) = v9;
                v102 = v101[2];
                v13 = __OFADD__(v102, 1);
                v103 = v102 + 1;
                if (v13)
                {
                  goto LABEL_177;
                }

                v101[2] = v103;
              }

              v104 = v101[7];
              if (!*(&v192 + 1))
              {
                sub_1D1741A30(&v191, &qword_1EC645D58, &unk_1D1E7E530);
                v112 = *(v104 + 8 * v95);
                v113 = sub_1D171D4E0(v183);
                if (v114)
                {
                  v115 = v113;
                  v116 = *(v104 + 8 * v95);
                  v117 = swift_isUniquelyReferenced_nonNull_native();
                  v118 = *(v104 + 8 * v95);
                  *&v188 = v118;
                  *(v104 + 8 * v95) = 0x8000000000000000;
                  if (!v117)
                  {
                    sub_1D173946C();
                    v118 = v188;
                  }

                  sub_1D1742194((*(v118 + 56) + 32 * v115), &v185);
                  sub_1D1750920(v115, v118);
                  v119 = *(v104 + 8 * v95);
                  *(v104 + 8 * v95) = v118;
                }

                else
                {
                  v185 = 0u;
                  v186 = 0u;
                }

                sub_1D1741A30(&v185, &qword_1EC645D58, &unk_1D1E7E530);
                goto LABEL_70;
              }

              sub_1D1742194(&v191, &v185);
              v105 = *(v104 + 8 * v95);
              v6 = swift_isUniquelyReferenced_nonNull_native();
              *&v188 = *(v104 + 8 * v95);
              v106 = v188;
              *(v104 + 8 * v95) = 0x8000000000000000;
              v9 = sub_1D171D4E0(v183);
              v108 = *(v106 + 16);
              v109 = (v107 & 1) == 0;
              v13 = __OFADD__(v108, v109);
              v110 = v108 + v109;
              if (v13)
              {
                goto LABEL_175;
              }

              LOBYTE(v3) = v107;
              if (*(v106 + 24) < v110)
              {
                sub_1D1728EBC(v110, v6);
                v9 = sub_1D171D4E0(v183);
                if ((v3 & 1) != (v111 & 1))
                {
                  goto LABEL_201;
                }

LABEL_113:
                v6 = v188;
                if ((v3 & 1) == 0)
                {
                  goto LABEL_114;
                }

                goto LABEL_68;
              }

              if (v6)
              {
                goto LABEL_113;
              }

              v131 = v9;
              sub_1D173946C();
              v9 = v131;
              v6 = v188;
              if ((v3 & 1) == 0)
              {
LABEL_114:
                *(v6 + 8 * (v9 >> 6) + 64) |= 1 << v9;
                *(*(v6 + 48) + 4 * v9) = v183;
                v9 = sub_1D1742194(&v185, (*(v6 + 56) + 32 * v9));
                v120 = *(v6 + 16);
                v13 = __OFADD__(v120, 1);
                v121 = v120 + 1;
                if (v13)
                {
                  goto LABEL_178;
                }

                *(v6 + 16) = v121;
                goto LABEL_69;
              }

LABEL_68:
              v67 = (*(v6 + 56) + 32 * v9);
              __swift_destroy_boxed_opaque_existential_1(v67);
              sub_1D1742194(&v185, v67);
LABEL_69:
              v68 = *(v104 + 8 * v95);
              *(v104 + 8 * v95) = v6;

LABEL_70:
              ++a1;
              swift_unknownObjectRelease();
              sub_1D1741A30(v190, &qword_1EC645D58, &unk_1D1E7E530);
              v3 = sub_1D18F3798;
              v6 = sub_1D18F3768;
              v9 = v174;
              if (a1 == v177)
              {

                v3 = sub_1D18F3798;
                v6 = sub_1D18F3768;
                goto LABEL_50;
              }
            }

            swift_endAccess();
LABEL_81:
            v185 = 0u;
            v186 = 0u;
            v187 = -1;
            sub_1D1741A30(&v185, &qword_1EC648B70, &qword_1D1E90DF0);
            if (v183 == 65531)
            {
              v188 = 0u;
              v189 = 0u;
              goto LABEL_85;
            }

            v80 = 0uLL;
            goto LABEL_84;
          }

LABEL_50:
          v49 = v168 + 1;
          v9 = v163;
          if (v168 + 1 == v164)
          {
            goto LABEL_33;
          }
        }

        v54 = 0;
        a1 = 0;
LABEL_65:
        sub_1D1791518(v54);
        swift_endAccess();
        v9 = MEMORY[0x1E69E7CC0];
        goto LABEL_66;
      }

LABEL_33:

      v9 = v157;
      v40 = v158 + 1;
      if (v158 + 1 == v155)
      {
        goto LABEL_168;
      }
    }

    swift_endAccess();
LABEL_46:
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_47;
  }

  v6 = 0;
  v3 = 0;
  v22 = MEMORY[0x1E69E7CC8];
LABEL_171:
  v146 = *(v4 + OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_nodeID);
  sub_1D17169C0(v151);
  sub_1D17169C0(v6);
  result = sub_1D17169C0(v3);
  *a2 = v146;
  a2[1] = v22;
  return result;
}

unint64_t sub_1D19FE700(void *a1, unsigned int a2)
{
  v3 = v2;
  v7 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v79 = *(v6 + 16);
  v80 = v6;
  v8 = v79(v7, v6);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 24))(&v87, v9, v10);
  v11 = v87;
  v12 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedReads;
  swift_beginAccess();
  v78 = a2;
  if (!*(v3 + v12))
  {
    goto LABEL_6;
  }

  v13 = a2 | (v8 << 32) | (v11 << 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v84 = *(v3 + v12);
  v15 = v84;
  *(v3 + v12) = 0x8000000000000000;
  v16 = sub_1D171D848(v13, 2);
  v18 = v15[2];
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_41;
  }

  LOBYTE(v9) = v17;
  if (v15[3] >= v21)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    sub_1D1729400(v21, isUniquelyReferenced_nonNull_native);
    v15 = v84;
    v16 = sub_1D171D848(v13, 2);
    if ((v9 & 1) != (v22 & 1))
    {
      sub_1D1E690FC();
      __break(1u);
LABEL_6:
      v23 = 0;
      goto LABEL_12;
    }
  }

  *(v3 + v12) = v15;
  if (v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  v9 = v16;
  sub_1D19DBA0C(v16, v13, 2, 0, v15);
  v16 = v9;
LABEL_10:
  while (1)
  {
    v24 = v15[7];
    v25 = *(v24 + 8 * v16);
    v20 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v20)
    {
      break;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    v76 = v16;
    sub_1D1739610();
    v16 = v76;
    v15 = v84;
    *(v3 + v12) = v84;
    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  *(v24 + 8 * v16) = v26;
  v23 = sub_1D17421C8;
LABEL_12:
  swift_endAccess();
  v27 = v79(v7, v80);
  v28 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
  swift_beginAccess();
  v29 = *(v3 + v28);
  if (!*(v29 + 16) || (v30 = sub_1D171D15C(v27), (v31 & 1) == 0))
  {
    swift_endAccess();
    v47 = v23;
LABEL_22:
    sub_1D17169C0(v47);
    return 0;
  }

  v77 = v23;
  v32 = (*(v29 + 56) + 16 * v30);
  v33 = *v32;
  v34 = v32[1];
  v36 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  v37 = *(v35 + 24);

  v37(&v84, v36, v35);
  if (!*(v33 + 16) || (v38 = sub_1D171D278(v84), (v39 & 1) == 0))
  {
    swift_endAccess();
    sub_1D1791518(v33);
LABEL_21:
    v47 = v77;
    goto LABEL_22;
  }

  v40 = (*(v33 + 56) + 16 * v38);
  v42 = *v40;
  v41 = v40[1];
  swift_unknownObjectRetain();
  swift_endAccess();
  sub_1D1791518(v33);
  ObjectType = swift_getObjectType();
  v44 = (*(v41 + 16))(ObjectType, v41);
  if (*(v44 + 16) && (v45 = sub_1D171D4E0(v78), (v46 & 1) != 0))
  {
    sub_1D17417AC(*(v44 + 56) + 40 * v45, &v87);
  }

  else
  {

    v87 = 0u;
    v88 = 0u;
    v89 = -1;
  }

  sub_1D1741C08(&v87, &v84, &qword_1EC648B70, &qword_1D1E90DF0);
  v49 = v86;
  sub_1D1741A30(&v84, &qword_1EC648B70, &qword_1D1E90DF0);
  if (v49 != 255)
  {
    goto LABEL_25;
  }

  if (qword_1EC642288 != -1)
  {
    swift_once();
  }

  v53 = qword_1EC6BE130;
  if (*(qword_1EC6BE130 + 16) && (sub_1D171D4E0(v78), (v54 & 1) != 0))
  {
    if (*(v53 + 16) && (v55 = sub_1D171D4E0(v78), (v56 & 1) != 0))
    {
      sub_1D17417AC(*(v53 + 56) + 40 * v55, &v84);
      sub_1D1741A30(&v87, &qword_1EC648B70, &qword_1D1E90DF0);
    }

    else
    {
      sub_1D1741A30(&v87, &qword_1EC648B70, &qword_1D1E90DF0);
      v84 = 0u;
      v85 = 0u;
      v86 = -1;
    }

    v87 = v84;
    v88 = v85;
    v52 = v86;
  }

  else
  {
LABEL_25:
    if (v78 != 65531)
    {
      goto LABEL_37;
    }

    v50 = sub_1D19F6A1C(ObjectType, v41);
    v51 = sub_1D19F6430(v50);

    sub_1D1741A30(&v87, &qword_1EC648B70, &qword_1D1E90DF0);
    *&v87 = v51;
    v52 = 5;
  }

  v89 = v52;
LABEL_37:
  sub_1D1741C08(&v87, &v81, &qword_1EC648B70, &qword_1D1E90DF0);
  if (v83 == 255)
  {
    sub_1D1741A30(&v87, &qword_1EC648B70, &qword_1D1E90DF0);
    swift_unknownObjectRelease();
    sub_1D1741A30(&v81, &qword_1EC648B70, &qword_1D1E90DF0);
    goto LABEL_21;
  }

  v84 = v81;
  v85 = v82;
  v86 = v83;
  v79(v7, v80);
  v57 = sub_1D1E692AC();
  v58 = a1[3];
  v59 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v58);
  (*(v59 + 24))(&v81, v58, v59);
  v60 = dword_1D1E91114[v81];
  v61 = sub_1D1E692CC();
  v62 = sub_1D1E692CC();
  v63 = [objc_opt_self() attributePathWithEndpointID:v57 clusterID:v61 attributeID:v62];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E6F900;
  v65 = *MEMORY[0x1E696F500];
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v66;
  *(inited + 72) = sub_1D1741B10(0, &qword_1EC650120, 0x1E696F570);
  *(inited + 48) = v63;
  v67 = *MEMORY[0x1E696F520];
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v68;
  v69 = v63;
  v70 = sub_1D19F531C();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  *(inited + 96) = v70;
  *(inited + 120) = v71;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x80000001D1EBE020;
  sub_1D19F41AC(&v81);
  v72 = *(&v82 + 1);
  v73 = __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
  *(inited + 168) = v72;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 144));
  (*(*(v72 - 8) + 16))(boxed_opaque_existential_1, v73, v72);
  __swift_destroy_boxed_opaque_existential_1(&v81);
  v75 = sub_1D18D6538(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
  swift_arrayDestroy();
  swift_unknownObjectRelease();

  sub_1D17805D8(&v84);
  sub_1D1741A30(&v87, &qword_1EC648B70, &qword_1D1E90DF0);
  sub_1D17169C0(v77);
  return v75;
}

uint64_t sub_1D19FEEC8(uint64_t a1, __int16 a2)
{
  *(v3 + 552) = a2;
  *(v3 + 424) = a1;
  *(v3 + 432) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D19FEEEC, 0, 0);
}

uint64_t sub_1D19FEEEC()
{
  v67 = v0;
  v1 = *(*(v0 + 424) + 16);
  *(v0 + 440) = v1;
  if (!v1)
  {
LABEL_17:
    v33 = *(v0 + 8);
    v34 = MEMORY[0x1E69E7CC0];

    return v33(v34);
  }

  v2 = 0;
  v3 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
  *(v0 + 448) = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
  *(v0 + 456) = v3;
  v4 = *MEMORY[0x1E696F530];
  *(v0 + 464) = *MEMORY[0x1E696F510];
  *(v0 + 472) = v4;
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v0 + 480) = v2;
    v7 = *(*(v0 + 424) + 8 * v2 + 32);
    *(v0 + 488) = v7;
    v8 = *(v7 + 16);
    *(v0 + 496) = v8;
    if (v8)
    {
      break;
    }

LABEL_4:
    if (++v2 == v1)
    {
      goto LABEL_17;
    }
  }

  v10 = 0;
  while (1)
  {
    *(v0 + 504) = v10;
    *(v0 + 512) = v5;
    *(v0 + 554) = 0;
    sub_1D17419CC(v9 + 40 * v10 + 32, v0 + 272);
    v11 = *(v0 + 296);
    v12 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), v11);
    (*(v12 + 40))(&v66, v11, v12);
    v13 = v66;
    v14 = *(v0 + 296);
    v15 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), v14);
    v16 = (*(v15 + 24))(v14, v15);
    if ((v16 & 0x100000000) == 0)
    {
      v17 = v16;
      v18 = *(v0 + 296);
      v19 = *(v0 + 304);
      __swift_project_boxed_opaque_existential_1((v0 + 272), v18);
      if (((*(v19 + 32))(v18, v19) & 0x100000000) == 0)
      {
        break;
      }
    }

LABEL_15:
    v31 = *(v0 + 496);
    v32 = *(v0 + 504) + 1;
    __swift_destroy_boxed_opaque_existential_1((v0 + 272));
    if (v32 == v31)
    {
      v6 = *(v0 + 488);

      v2 = *(v0 + 480);
      v1 = *(v0 + 440);
      goto LABEL_4;
    }

    v10 = *(v0 + 504) + 1;
    v9 = *(v0 + 488);
  }

  v20 = *(v0 + 448);
  v21 = *(v0 + 432);
  swift_beginAccess();
  v22 = *(v21 + v20);
  if (!*(v22 + 16) || (v23 = sub_1D171D15C(*(v0 + 552)), (v24 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_15;
  }

  v25 = (*(v22 + 56) + 16 * v23);
  v27 = *v25;
  v26 = v25[1];
  if (!*(*v25 + 16) || (v28 = v13, v29 = sub_1D171D278(v13), (v30 & 1) == 0))
  {

    swift_endAccess();
    sub_1D1791518(v27);
    goto LABEL_15;
  }

  v64 = *(v0 + 432);
  v36 = (*(v27 + 56) + 16 * v29);
  *(v0 + 520) = *v36;
  v37 = v36[1];
  v60 = *(v0 + 552);

  swift_unknownObjectRetain();
  swift_endAccess();
  sub_1D1791518(v27);
  ObjectType = swift_getObjectType();
  v62 = *(v37 + 72);
  swift_unknownObjectRetain();
  v39 = v64;
  v62(v64, ObjectType, v37);
  swift_unknownObjectRelease();
  v59 = *(v37 + 96);
  swift_unknownObjectRetain();
  v63 = ObjectType;
  v65 = v37;
  v59(v60, ObjectType, v37);
  swift_unknownObjectRelease();
  v40 = sub_1D1E692AC();
  v41 = dword_1D1E91114[v13];
  v42 = *(v0 + 456);
  v43 = *(v0 + 432);
  v44 = sub_1D1E692CC();
  v45 = sub_1D1E692CC();
  *(v0 + 528) = [objc_opt_self() commandPathWithEndpointID:v40 clusterID:v44 commandID:v45];

  swift_beginAccess();
  v46 = *(v43 + v42);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v43 + v42) = v46;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v57 = *(v0 + 456);
    v58 = *(v0 + 432);
    v46 = sub_1D177EEB4(0, *(v46 + 2) + 1, 1, v46);
    *(v58 + v57) = v46;
  }

  v49 = *(v46 + 2);
  v48 = *(v46 + 3);
  if (v49 >= v48 >> 1)
  {
    v46 = sub_1D177EEB4((v48 > 1), v49 + 1, 1, v46);
  }

  v50 = *(v0 + 456);
  v51 = *(v0 + 432);
  v52 = *(v0 + 552);
  *(v46 + 2) = v49 + 1;
  v53 = &v46[8 * v49];
  *(v53 + 16) = v52;
  v53[34] = v28;
  *(v53 + 9) = v17;
  *(v51 + v50) = v46;
  swift_endAccess();
  v54 = *(v65 + 120);
  v61 = (v54 + *v54);
  v55 = v54[1];
  v56 = swift_task_alloc();
  *(v0 + 536) = v56;
  *v56 = v0;
  v56[1] = sub_1D19FF478;

  return v61(v0 + 312, v0 + 272, v63, v65);
}

uint64_t sub_1D19FF478()
{
  v2 = *(*v1 + 536);
  v5 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = sub_1D19FFC7C;
  }

  else
  {
    v3 = sub_1D19FF58C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19FF58C()
{
  v80 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 512);
  v3 = *(v0 + 464);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v5;
  v6 = sub_1D1741B10(0, &qword_1EC648DE0, 0x1E696F600);
  *(inited + 48) = v1;
  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x80000001D1EBE020;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  v7 = swift_allocObject();
  *(inited + 96) = v7;
  sub_1D1741C08(v0 + 312, v7 + 16, &qword_1EC645D58, &unk_1D1E7E530);
  v8 = v1;
  v9 = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + 512);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1D177D340(0, v11[2] + 1, 1, *(v0 + 512));
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1D177D340((v12 > 1), v13 + 1, 1, v11);
  }

  v14 = *(v0 + 528);
  v15 = *(v0 + 520);
  swift_unknownObjectRelease();

  sub_1D1741A30(v0 + 312, &qword_1EC645D58, &unk_1D1E7E530);
  v11[2] = v13 + 1;
  v11[v13 + 4] = v9;
  v16 = *(v0 + 554);
  while (1)
  {
    v17 = *(v0 + 496);
    v18 = *(v0 + 504) + 1;
    __swift_destroy_boxed_opaque_existential_1((v0 + 272));
    if (v18 == v17)
    {
      break;
    }

    v25 = *(v0 + 504) + 1;
    v24 = *(v0 + 488);
LABEL_13:
    *(v0 + 504) = v25;
    *(v0 + 512) = v11;
    *(v0 + 554) = v16 & 1;
    sub_1D17419CC(v24 + 40 * v25 + 32, v0 + 272);
    v26 = *(v0 + 296);
    v27 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), v26);
    (*(v27 + 40))(&v79, v26, v27);
    v28 = v79;
    v29 = *(v0 + 296);
    v30 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), v29);
    v31 = (*(v30 + 24))(v29, v30);
    if ((v31 & 0x100000000) == 0)
    {
      v32 = v31;
      v33 = *(v0 + 296);
      v34 = *(v0 + 304);
      __swift_project_boxed_opaque_existential_1((v0 + 272), v33);
      if (((*(v34 + 32))(v33, v34) & 0x100000000) == 0)
      {
        v35 = *(v0 + 448);
        v36 = *(v0 + 432);
        swift_beginAccess();
        v37 = *(v36 + v35);
        if (*(v37 + 16) && (v38 = sub_1D171D15C(*(v0 + 552)), (v39 & 1) != 0))
        {
          v40 = (*(v37 + 56) + 16 * v38);
          v42 = *v40;
          v41 = v40[1];
          if (*(*v40 + 16))
          {
            v43 = sub_1D171D278(v28);
            if (v44)
            {
              v76 = v28;
              v47 = *(v0 + 432);
              v48 = (*(v42 + 56) + 16 * v43);
              *(v0 + 520) = *v48;
              v49 = v48[1];
              v50 = *(v0 + 552);

              swift_unknownObjectRetain();
              swift_endAccess();
              sub_1D1791518(v42);
              ObjectType = swift_getObjectType();
              v52 = *(v49 + 72);
              swift_unknownObjectRetain();
              v53 = v47;
              v52(v47, ObjectType, v49);
              swift_unknownObjectRelease();
              v54 = *(v49 + 96);
              swift_unknownObjectRetain();
              v77 = ObjectType;
              v55 = ObjectType;
              v56 = v49;
              v54(v50, v55, v49);
              swift_unknownObjectRelease();
              v57 = sub_1D1E692AC();
              v58 = dword_1D1E91114[v28];
              v59 = *(v0 + 456);
              v60 = *(v0 + 432);
              v61 = sub_1D1E692CC();
              v62 = sub_1D1E692CC();
              *(v0 + 528) = [objc_opt_self() commandPathWithEndpointID:v57 clusterID:v61 commandID:v62];

              swift_beginAccess();
              v63 = *(v60 + v59);
              v64 = swift_isUniquelyReferenced_nonNull_native();
              *(v60 + v59) = v63;
              if ((v64 & 1) == 0)
              {
                v74 = *(v0 + 456);
                v75 = *(v0 + 432);
                v63 = sub_1D177EEB4(0, *(v63 + 2) + 1, 1, v63);
                *(v75 + v74) = v63;
              }

              v66 = *(v63 + 2);
              v65 = *(v63 + 3);
              if (v66 >= v65 >> 1)
              {
                v63 = sub_1D177EEB4((v65 > 1), v66 + 1, 1, v63);
              }

              v67 = *(v0 + 456);
              v68 = *(v0 + 432);
              v69 = *(v0 + 552);
              *(v63 + 2) = v66 + 1;
              v70 = &v63[8 * v66];
              *(v70 + 16) = v69;
              v70[34] = v76;
              *(v70 + 9) = v32;
              *(v68 + v67) = v63;
              swift_endAccess();
              v71 = *(v56 + 120);
              v78 = (v71 + *v71);
              v72 = v71[1];
              v73 = swift_task_alloc();
              *(v0 + 536) = v73;
              *v73 = v0;
              v73[1] = sub_1D19FF478;

              return v78(v0 + 312, v0 + 272, v77, v56);
            }
          }

          swift_endAccess();
          sub_1D1791518(v42);
        }

        else
        {
          swift_endAccess();
        }
      }
    }
  }

  v19 = *(v0 + 488);

  if ((v16 & 1) == 0)
  {
    v20 = *(v0 + 480) + 5;
    v21 = 1 - *(v0 + 440);
    while (v21 + v20 != 5)
    {
      *(v0 + 480) = v20 - 4;
      v22 = *(*(v0 + 424) + 8 * v20);
      *(v0 + 488) = v22;
      v23 = *(v22 + 16);
      *(v0 + 496) = v23;
      ++v20;
      if (v23)
      {

        v16 = 0;
        v25 = 0;
        goto LABEL_13;
      }
    }
  }

  v45 = *(v0 + 8);

  return v45(v11);
}

uint64_t sub_1D19FFC7C()
{
  v80 = v0;
  v1 = *(v0 + 544);
  v2 = *(v0 + 528);
  v3 = *(v0 + 512);
  v4 = *(v0 + 464);
  v5 = *(v0 + 472);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v7;
  *(inited + 72) = sub_1D1741B10(0, &qword_1EC648DE0, 0x1E696F600);
  *(inited + 48) = v2;
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v8;
  swift_getErrorValue();
  v9 = *(v0 + 392);
  v10 = *(v0 + 400);
  *(inited + 120) = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 96));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v9, v10);
  v12 = v2;
  v13 = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + 512);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1D177D340(0, v15[2] + 1, 1, *(v0 + 512));
  }

  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1D177D340((v16 > 1), v17 + 1, 1, v15);
  }

  v18 = *(v0 + 528);
  v19 = *(v0 + 520);

  swift_unknownObjectRelease();
  v15[2] = v17 + 1;
  v15[v17 + 4] = v13;
  v20 = *(v0 + 496);
  v21 = *(v0 + 504) + 1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  v22 = *(v0 + 488);
  if (v21 == v20)
  {
LABEL_6:

    v23 = *(v0 + 8);

    return v23(v15);
  }

  while (1)
  {
    v27 = *(v0 + 504);
    *(v0 + 504) = v27 + 1;
    *(v0 + 512) = v15;
    *(v0 + 554) = 1;
    sub_1D17419CC(v22 + 40 * v27 + 72, v0 + 272);
    v28 = *(v0 + 296);
    v29 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), v28);
    (*(v29 + 40))(&v79, v28, v29);
    v30 = v79;
    v31 = *(v0 + 296);
    v32 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), v31);
    v33 = (*(v32 + 24))(v31, v32);
    if ((v33 & 0x100000000) != 0)
    {
      goto LABEL_11;
    }

    v34 = v33;
    v35 = *(v0 + 296);
    v36 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), v35);
    if (((*(v36 + 32))(v35, v36) & 0x100000000) != 0)
    {
      goto LABEL_11;
    }

    v37 = *(v0 + 448);
    v38 = *(v0 + 432);
    swift_beginAccess();
    v39 = *(v38 + v37);
    if (*(v39 + 16))
    {
      v40 = sub_1D171D15C(*(v0 + 552));
      if (v41)
      {
        break;
      }
    }

    swift_endAccess();
LABEL_11:
    v25 = *(v0 + 496);
    v26 = *(v0 + 504) + 1;
    __swift_destroy_boxed_opaque_existential_1((v0 + 272));
    v22 = *(v0 + 488);
    if (v26 == v25)
    {
      goto LABEL_6;
    }
  }

  v42 = (*(v39 + 56) + 16 * v40);
  v44 = *v42;
  v43 = v42[1];
  if (!*(*v42 + 16) || (v45 = sub_1D171D278(v30), (v46 & 1) == 0))
  {

    swift_endAccess();
    sub_1D1791518(v44);
    goto LABEL_11;
  }

  v76 = v30;
  v47 = *(v0 + 432);
  v48 = (*(v44 + 56) + 16 * v45);
  *(v0 + 520) = *v48;
  v49 = v48[1];
  v50 = *(v0 + 552);

  swift_unknownObjectRetain();
  swift_endAccess();
  sub_1D1791518(v44);
  ObjectType = swift_getObjectType();
  v52 = *(v49 + 72);
  swift_unknownObjectRetain();
  v53 = v47;
  v52(v47, ObjectType, v49);
  swift_unknownObjectRelease();
  v54 = *(v49 + 96);
  swift_unknownObjectRetain();
  v77 = ObjectType;
  v55 = ObjectType;
  v56 = v49;
  v54(v50, v55, v49);
  swift_unknownObjectRelease();
  v57 = sub_1D1E692AC();
  v58 = dword_1D1E91114[v30];
  v59 = *(v0 + 456);
  v60 = *(v0 + 432);
  v61 = sub_1D1E692CC();
  v62 = sub_1D1E692CC();
  *(v0 + 528) = [objc_opt_self() commandPathWithEndpointID:v57 clusterID:v61 commandID:v62];

  swift_beginAccess();
  v63 = *(v60 + v59);
  v64 = swift_isUniquelyReferenced_nonNull_native();
  *(v60 + v59) = v63;
  if ((v64 & 1) == 0)
  {
    v74 = *(v0 + 456);
    v75 = *(v0 + 432);
    v63 = sub_1D177EEB4(0, *(v63 + 2) + 1, 1, v63);
    *(v75 + v74) = v63;
  }

  v66 = *(v63 + 2);
  v65 = *(v63 + 3);
  if (v66 >= v65 >> 1)
  {
    v63 = sub_1D177EEB4((v65 > 1), v66 + 1, 1, v63);
  }

  v67 = *(v0 + 456);
  v68 = *(v0 + 432);
  v69 = *(v0 + 552);
  *(v63 + 2) = v66 + 1;
  v70 = &v63[8 * v66];
  *(v70 + 16) = v69;
  v70[34] = v76;
  *(v70 + 9) = v34;
  *(v68 + v67) = v63;
  swift_endAccess();
  v71 = *(v56 + 120);
  v78 = (v71 + *v71);
  v72 = v71[1];
  v73 = swift_task_alloc();
  *(v0 + 536) = v73;
  *v73 = v0;
  v73[1] = sub_1D19FF478;

  return v78(v0 + 312, v0 + 272, v77, v56);
}

unint64_t sub_1D1A0030C(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *(a1 + *(type metadata accessor for EndpointPath(0) + 24));
  v8 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (!*(v9 + 16))
  {
    return swift_endAccess();
  }

  v10 = sub_1D171D15C(v7);
  if ((v11 & 1) == 0)
  {
    return swift_endAccess();
  }

  v12 = *(*(v9 + 56) + 16 * v10);
  swift_endAccess();
  result = type metadata accessor for ClusterPath(0);
  if (*(v12 + 16))
  {
    result = sub_1D171D278(*(a1 + *(result + 20)));
    if (v14)
    {
      v15 = (*(v12 + 56) + 16 * result);
      v16 = *v15;
      v17 = v15[1];
      sub_1D1741970(a3, v20);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      if (swift_dynamicCast())
      {
        sub_1D19F4834(v19[0], v20);
      }

      else
      {
        sub_1D1741970(a3, v19);
        sub_1D19F43EC(v19, v20);
        sub_1D1741A30(v19, &qword_1EC649700, &qword_1D1E6E910);
      }

      ObjectType = swift_getObjectType();
      sub_1D19F6730(v20, a2, ObjectType, v17);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D1A0048C@<X0>(unsigned __int8 *a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v5 = *a1;
  if ((a2 & 0x10000) != 0)
  {
    v16 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_metadata;
    swift_beginAccess();
    v17 = *(v3 + v16);
    if (*(v17 + 16) && (v18 = sub_1D171D63C(v5), (v19 & 1) != 0))
    {
      sub_1D1741970(*(v17 + 56) + 32 * v18, a3);
    }

    else
    {
      *a3 = 0u;
      a3[1] = 0u;
    }

    return swift_endAccess();
  }

  else
  {
    v6 = a2;
    v7 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
    swift_beginAccess();
    v8 = *(v3 + v7);
    if (*(v8 + 16) && (v9 = sub_1D171D15C(v6), (v10 & 1) != 0))
    {
      v11 = (*(v8 + 56) + 16 * v9);
      v13 = *v11;
      v12 = v11[1];
      if (*(v12 + 16))
      {

        v14 = sub_1D171D63C(v5);
        if (v15)
        {
          sub_1D1741970(*(v12 + 56) + 32 * v14, a3);
        }

        else
        {
          *a3 = 0u;
          a3[1] = 0u;
        }
      }

      else
      {
        *a3 = 0u;
        a3[1] = 0u;
      }

      swift_endAccess();
      return sub_1D1791518(v13);
    }

    else
    {
      result = swift_endAccess();
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  return result;
}

uint64_t sub_1D1A005F0(unsigned __int8 *a1, int a2, uint64_t a3)
{
  v4 = *a1;
  if ((a2 & 0x10000) != 0)
  {
    sub_1D1741C08(a3, v10, &qword_1EC649700, &qword_1D1E6E910);
    swift_beginAccess();
    sub_1D1B0D8E4(v10, v4);
  }

  else
  {
    v5 = a2;
    swift_beginAccess();
    v6 = sub_1D1C76F54(v10, v5);
    if (*v7)
    {
      sub_1D1741C08(a3, v9, &qword_1EC649700, &qword_1D1E6E910);
      sub_1D1B0D8E4(v9, v4);
    }

    (v6)(v10, 0);
  }

  return swift_endAccess();
}

id sub_1D1A0073C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D1A008B8(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1D1A00914(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_containingHome;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1D1A009AC;
}

void sub_1D1A009AC(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[5] + (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1D1A00A60(uint64_t a1, int a2)
{
  *(v3 + 56) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D1A00A84, 0, 0);
}

uint64_t sub_1D1A00A84()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v1 + *(type metadata accessor for EndpointPath(0) + 24));
  v4 = *(v1 + *(type metadata accessor for ClusterPath(0) + 20));
  v5 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
  swift_beginAccess();
  v6 = *(v2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v5) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1D177EEB4(0, *(v6 + 2) + 1, 1, v6);
    *(v2 + v5) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1D177EEB4((v8 > 1), v9 + 1, 1, v6);
  }

  v10 = *(v0 + 56);
  *(v6 + 2) = v9 + 1;
  v11 = &v6[8 * v9];
  *(v11 + 16) = v3;
  v11[34] = v4;
  *(v11 + 9) = v10;
  *(v2 + v5) = v6;
  swift_endAccess();
  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_1D1A00BD4(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_delegates;
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_1D1DA0A54((v1 + v3), a1);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D1A00C48(uint64_t a1, __int16 a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D1A00CEC;

  return sub_1D19FEEC8(a1, a2);
}

uint64_t sub_1D1A00CEC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1D1A00DEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648DE8, &unk_1D1E910F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E72CC0;
  *(inited + 32) = 65532;
  *(inited + 40) = 0;
  *(inited + 72) = 2;
  *(inited + 80) = 65533;
  *(inited + 88) = 0;
  *(inited + 120) = 2;
  *(inited + 128) = 65529;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643128, &unk_1D1E71580);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D1E739C0;
  *(v1 + 32) = 0;
  *(v1 + 64) = 2;
  *(inited + 136) = v1;
  *(inited + 168) = 5;
  *(inited + 176) = 65528;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D1E739C0;
  *(v2 + 32) = 0;
  *(v2 + 64) = 2;
  *(inited + 184) = v2;
  *(inited + 216) = 5;
  v3 = sub_1D18D640C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6460C8, &qword_1D1E91100);
  result = swift_arrayDestroy();
  qword_1EC6BE130 = v3;
  return result;
}

uint64_t sub_1D1A00F34()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D1E6920C();
  if (!v2)
  {
    v3 = 0;
LABEL_6:
    MEMORY[0x1D3892850](v3);
    sub_1D1E6924C();
    sub_1D1E6923C();
    v4 = dword_1D1E91114[v1 << 8 >> 56];
    sub_1D1E6924C();
    return sub_1D1E6926C();
  }

  if (v2 != 1)
  {
    v3 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1D3892850](1);
  sub_1D1770648(v6, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1A00FF8(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  if (!v5)
  {
    v7 = 0;
LABEL_8:
    MEMORY[0x1D3892850](v7);
    sub_1D1E6924C();
    sub_1D1E6923C();
    v8 = dword_1D1E91114[v4 << 8 >> 56];
    return sub_1D1E6924C();
  }

  if (v5 != 1)
  {
    v7 = 2;
    goto LABEL_8;
  }

  MEMORY[0x1D3892850](1);

  return sub_1D1770648(a1, v4);
}

uint64_t sub_1D1A010A4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D1E6920C();
  if (!v2)
  {
    v3 = 0;
LABEL_6:
    MEMORY[0x1D3892850](v3);
    sub_1D1E6924C();
    sub_1D1E6923C();
    v4 = dword_1D1E91114[v1 << 8 >> 56];
    sub_1D1E6924C();
    return sub_1D1E6926C();
  }

  if (v2 != 1)
  {
    v3 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1D3892850](1);
  sub_1D1770648(v6, v1);
  return sub_1D1E6926C();
}

unint64_t sub_1D1A01168()
{
  result = qword_1EC648DD8;
  if (!qword_1EC648DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648DD8);
  }

  return result;
}

BOOL sub_1D1A011BC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v3 == 1)
    {
      v6 = *a1;
      if (v5 == 1)
      {
        v7 = sub_1D177A2B8(v6, *a2);
        sub_1D1741808(v4, 1);
        sub_1D1741808(v2, 1);
        sub_1D174181C(v2, 1);
        sub_1D174181C(v4, 1);
        return v7 & 1;
      }

      goto LABEL_14;
    }

    if (v5 == 2)
    {
      sub_1D174181C(*a1, 2);
      v9 = v4;
      v10 = 2;
      goto LABEL_9;
    }

LABEL_14:
    sub_1D1741808(v4, v5);
    sub_1D174181C(v2, v3);
    sub_1D174181C(v4, v5);
    return 0;
  }

  if (*(a2 + 8))
  {
    goto LABEL_14;
  }

  sub_1D174181C(*a1, 0);
  v9 = v4;
  v10 = 0;
LABEL_9:
  sub_1D174181C(v9, v10);
  return v2 == v4 && WORD2(v2) == WORD2(v4) && dword_1D1E91114[v2 << 8 >> 56] == dword_1D1E91114[v4 << 8 >> 56];
}

uint64_t _s12WaitingStateVMa()
{
  result = qword_1EC648DF8;
  if (!qword_1EC648DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D1A01368()
{
  sub_1D1A013EC();
  if (v0 <= 0x3F)
  {
    sub_1D1A01460();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D1A013EC()
{
  if (!qword_1EC648E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC648E10, &unk_1D1E911A8);
    v0 = sub_1D1E6769C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC648E08);
    }
  }
}

void sub_1D1A01460()
{
  if (!qword_1EC648E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC646FC0, &qword_1D1E840F0);
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC648E18);
    }
  }
}

uint64_t sub_1D1A014C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D1E68A6C();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A015C4, 0, 0);
}

uint64_t sub_1D1A015C4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1D1E68A8C();
  v7 = sub_1D1A054B8(&qword_1EC648E60, MEMORY[0x1E69E8848]);
  sub_1D1E6910C();
  sub_1D1A054B8(&qword_1EC648E68, MEMORY[0x1E69E8838]);
  sub_1D1E68A5C();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1D1A01754;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1D1A01754()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1A05510, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1D1A01910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D1E68A2C();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A01A10, 0, 0);
}

uint64_t sub_1D1A01A10()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1D1E68A4C();
  v7 = sub_1D1A054B8(&qword_1EC648E30, MEMORY[0x1E69E8820]);
  sub_1D1E6910C();
  sub_1D1A054B8(&qword_1EC648E38, MEMORY[0x1E69E87E8]);
  sub_1D1E68A5C();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1D1A01BA0;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1D1A01BA0()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1A01D5C, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1D1A01D5C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1D1A01E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v24 - v13;
  sub_1D1741C08(a1, v24 - v13, &unk_1EC6442C0, &qword_1D1E741A0);
  v15 = sub_1D1E67E7C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D1741A30(v14, &unk_1EC6442C0, &qword_1D1E741A0);
    if (*(a3 + 16))
    {
LABEL_3:
      v17 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v18 = sub_1D1E67D4C();
      v20 = v19;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D1E67E6C();
    (*(v16 + 8))(v14, v15);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
  v20 = 0;
LABEL_6:
  v21 = *v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v22 = (v20 | v18);
  if (v20 | v18)
  {
    v25[0] = 0;
    v25[1] = 0;
    v22 = v25;
    v25[2] = v18;
    v25[3] = v20;
  }

  v24[1] = 1;
  v24[2] = v22;
  v24[3] = v21;
  swift_task_create();
}

uint64_t sub_1D1A02010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v20 - v9;
  sub_1D1741C08(a1, v20 - v9, &unk_1EC6442C0, &qword_1D1E741A0);
  v11 = sub_1D1E67E7C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D1741A30(v10, &unk_1EC6442C0, &qword_1D1E741A0);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_1D1E67D4C();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D1E67E6C();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_1D1A0222C(uint64_t a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return sub_1D1A022D0(a1, a2);
}

uint64_t sub_1D1A022D0(uint64_t a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 24) = a2;
  *(v3 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A022F8, 0, 0);
}

uint64_t sub_1D1A022F8()
{
  v1 = *(v0 + 32);
  v2 = sub_1D1A04D34(*(v0 + 16));
  v3 = *(v1 + OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_attributeWaitingState);
  *(v0 + 40) = v3;
  *(swift_task_alloc() + 16) = v2;
  v4 = *v3;
  v5 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  *(v0 + 48) = v5;
  v6 = *(v4 + 48);
  *(v0 + 80) = v6;
  v7 = (v6 + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock(&v3[v7]);
  sub_1D1A05090(&v3[v5]);
  os_unfair_lock_unlock(&v3[v7]);
  v8 = *(v0 + 24);

  sub_1D1E6884C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E10, &unk_1D1E911A8);
  v9 = sub_1D1E6760C();
  v11 = v10;

  MEMORY[0x1D3890F70](v9, v11);

  sub_1D1E66A8C();

  v12 = swift_task_alloc();
  *(v0 + 56) = v12;
  *(v12 + 16) = v3;
  *(v12 + 24) = v8;
  v13 = *(MEMORY[0x1E69E88A0] + 4);
  v14 = swift_task_alloc();
  *(v0 + 64) = v14;
  *v14 = v0;
  v14[1] = sub_1D1A025AC;
  v15 = MEMORY[0x1E69E7CA8] + 8;
  v16 = MEMORY[0x1E69E7CA8] + 8;
  v17 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v14, v15, v16, 0, 0, &unk_1D1E911D0, v12, v17);
}

uint64_t sub_1D1A025AC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1D1A027AC;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1D1A026C8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1A026C8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = (*(v0 + 80) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v3));
  sub_1D1741A30(v2 + v1, &qword_1EC648E20, &unk_1D1E911D8);
  v4 = _s12WaitingStateVMa();
  (*(*(v4 - 8) + 56))(v2 + v1, 1, 1, v4);
  os_unfair_lock_unlock((v2 + v3));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D1A027AC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = (*(v0 + 80) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v3 + v4));
  sub_1D1741A30(v3 + v2, &qword_1EC648E20, &unk_1D1E911D8);
  v5 = _s12WaitingStateVMa();
  (*(*(v5 - 8) + 56))(v3 + v2, 1, 1, v5);
  os_unfair_lock_unlock((v3 + v4));
  v6 = *(v0 + 72);
  v7 = *(v0 + 40);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D1A02898(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E20, &unk_1D1E911D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = _s12WaitingStateVMa();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1741C08(a1, v7, &qword_1EC648E20, &unk_1D1E911D8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC648E20, &unk_1D1E911D8);
    sub_1D1741A30(v7, &qword_1EC648E20, &unk_1D1E911D8);
    v13 = *(v8 + 20);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
    (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
    *a1 = a2;
    (*(v9 + 56))(a1, 0, 1, v8);
  }

  else
  {
    sub_1D1A053A4(v7, v12);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_1D1E6884C();
    MEMORY[0x1D3890F70](0xD000000000000073, 0x80000001D1EC2D60);
    v16 = *v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E10, &unk_1D1E911A8);
    v17 = sub_1D1E6760C();
    MEMORY[0x1D3890F70](v17);

    v18 = v22;
    v19 = v23;
    v22 = 0;
    v23 = 0xE000000000000000;

    sub_1D1E6884C();
    MEMORY[0x1D3890F70](0xD000000000000036, 0x80000001D1EC2DE0);
    v20 = sub_1D1E6760C();
    MEMORY[0x1D3890F70](v20);

    MEMORY[0x1D3890F70](8250, 0xE200000000000000);
    MEMORY[0x1D3890F70](v18, v19);

    sub_1D1E66A8C();

    sub_1D1A05408();
    swift_allocError();
    *v21 = v18;
    v21[1] = v19;
    swift_willThrow();
    return sub_1D1A0545C(v12);
  }
}

uint64_t sub_1D1A02C10(uint64_t a1, uint64_t a2)
{
  v98 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486D8, &qword_1D1E91190);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v82[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E20, &unk_1D1E911D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v82[-v10];
  v12 = _s12WaitingStateVMa();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v82[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D1741C08(a1, v11, &qword_1EC648E20, &unk_1D1E911D8);
  v97 = v13;
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1D1741A30(v11, &qword_1EC648E20, &unk_1D1E911D8);
  }

  v84 = v12;
  v85 = v7;
  v86 = a1;
  v88 = v2;
  sub_1D1A053A4(v11, v16);
  v87 = v16;
  v18 = *v16;
  v19 = *v16 + 64;
  v20 = 1 << *(*v16 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(*v16 + 64);
  v100 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
  v23 = (v20 + 63) >> 6;

  v24 = 0;
  v25 = v98;
  v99 = v23;
  v89 = v19;
  v90 = v18;
  if (!v22)
  {
    goto LABEL_9;
  }

LABEL_13:
  while (2)
  {
    while (1)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v28 = v27 | (v24 << 6);
      v29 = *(*(v18 + 48) + 2 * v28);
      v30 = *(*(v18 + 56) + 8 * v28);
      v31 = v100;
      swift_beginAccess();
      v32 = *(v25 + v31);
      if (*(v32 + 16))
      {
        v33 = sub_1D171D15C(v29);
        if (v34)
        {
          break;
        }
      }

      result = swift_endAccess();
      v23 = v99;
      if (!v22)
      {
        goto LABEL_9;
      }
    }

    v83 = v29;
    v35 = *(*(v32 + 56) + 16 * v33);
    swift_endAccess();
    v36 = v30 + 64;
    v37 = 1 << *(v30 + 32);
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v39 = v38 & *(v30 + 64);
    v40 = (v37 + 63) >> 6;

    v41 = 0;
    v91 = v35;
    v92 = v30;
    v93 = v40;
    if (v39)
    {
LABEL_25:
      while (1)
      {
        v43 = __clz(__rbit64(v39)) | (v41 << 6);
        v44 = *(v30 + 56);
        v45 = *(v30 + 48) + 8 * v43;
        v101 = *v45;
        v114 = *(v45 + 4);
        sub_1D17417AC(v44 + 40 * v43, v105);
        if (v106 == 255)
        {
          break;
        }

        v39 &= v39 - 1;
        v112[0] = v105[0];
        v112[1] = v105[1];
        v113 = v106;
        if (*(v35 + 16) && (v96 = v114, v46 = sub_1D171D278(v114), (v47 & 1) != 0))
        {
          v48 = (*(v35 + 56) + 16 * v46);
          v49 = *v48;
          v50 = v48[1];
          ObjectType = swift_getObjectType();
          v94 = *(v50 + 16);
          swift_unknownObjectRetain();
          v95 = v49;
          v52 = v94(ObjectType, v50);
          if (*(v52 + 16) && (v53 = sub_1D171D4E0(v101), (v54 & 1) != 0))
          {
            sub_1D17417AC(*(v52 + 56) + 40 * v53, v110);
          }

          else
          {

            memset(v110, 0, sizeof(v110));
            v111 = -1;
          }

          v40 = v93;
          sub_1D17417AC(v112, v109);
          sub_1D1741C08(v110, v105, &qword_1EC648B70, &qword_1D1E90DF0);
          sub_1D1741C08(v109, v107, &qword_1EC648B70, &qword_1D1E90DF0);
          if (v106 == 255)
          {
            sub_1D1741A30(v109, &qword_1EC648B70, &qword_1D1E90DF0);
            if (v108 != 255)
            {
              goto LABEL_49;
            }

            swift_unknownObjectRelease();
            sub_1D1741A30(v105, &qword_1EC648B70, &qword_1D1E90DF0);
          }

          else
          {
            sub_1D1741C08(v105, v104, &qword_1EC648B70, &qword_1D1E90DF0);
            if (v108 == 255)
            {

              sub_1D1741A30(v109, &qword_1EC648B70, &qword_1D1E90DF0);
              sub_1D17805D8(v104);
              goto LABEL_50;
            }

            v102[0] = v107[0];
            v102[1] = v107[1];
            v103 = v108;
            LODWORD(v94) = sub_1D19F5CA8(v104, v102);
            sub_1D17805D8(v102);
            sub_1D1741A30(v109, &qword_1EC648B70, &qword_1D1E90DF0);
            sub_1D17805D8(v104);
            sub_1D1741A30(v105, &qword_1EC648B70, &qword_1D1E90DF0);
            if ((v94 & 1) == 0)
            {

              goto LABEL_51;
            }

            swift_unknownObjectRelease();
          }

          sub_1D1741A30(v110, &qword_1EC648B70, &qword_1D1E90DF0);
          sub_1D17805D8(v112);
          v35 = v91;
          v30 = v92;
          if (!v39)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_1D17805D8(v112);
          if (!v39)
          {
            goto LABEL_21;
          }
        }
      }

LABEL_40:

      v19 = v89;
      v18 = v90;
      v25 = v98;
      v23 = v99;
      if (v22)
      {
        continue;
      }

      while (1)
      {
LABEL_9:
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
          return result;
        }

        if (v26 >= v23)
        {
          break;
        }

        v22 = *(v19 + 8 * v26);
        ++v24;
        if (v22)
        {
          v24 = v26;
          goto LABEL_13;
        }
      }

      v55 = v86;
      sub_1D1741A30(v86, &qword_1EC648E20, &unk_1D1E911D8);
      sub_1D1E66A8C();
      v57 = v84;
      v56 = v85;
      v58 = v87;
      sub_1D1741C08(&v87[*(v84 + 20)], v85, &qword_1EC6486D8, &qword_1D1E91190);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
      v60 = *(v59 - 8);
      if ((*(v60 + 48))(v56, 1, v59) == 1)
      {
        sub_1D1A0545C(v58);
        sub_1D1741A30(v56, &qword_1EC6486D8, &qword_1D1E91190);
      }

      else
      {
        sub_1D1E67D6C();
        sub_1D1A0545C(v58);
        (*(v60 + 8))(v56, v59);
      }

      return (*(v97 + 56))(v55, 1, 1, v57);
    }

    else
    {
LABEL_21:
      while (1)
      {
        v42 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        if (v42 >= v40)
        {
          goto LABEL_40;
        }

        v39 = *(v36 + 8 * v42);
        ++v41;
        if (v39)
        {
          v41 = v42;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_49:

LABEL_50:
      sub_1D1741A30(v105, &qword_1EC648E48, &unk_1D1E91230);
LABEL_51:
      v61 = dword_1D1E91310[v114];
      v62 = MTRAttributeNameForID();
      if (v62)
      {
        v63 = v62;
        v64 = sub_1D1E6781C();
        v66 = v65;
      }

      else
      {
        v64 = 0;
        v66 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1D1E74700;
      LOBYTE(v105[0]) = v96;
      v68 = sub_1D1E6789C();
      v70 = v69;
      v71 = MEMORY[0x1E69E6158];
      *(v67 + 56) = MEMORY[0x1E69E6158];
      v72 = sub_1D1757D20();
      v73 = v72;
      *(v67 + 32) = v68;
      *(v67 + 40) = v70;
      *(v67 + 96) = v71;
      *(v67 + 104) = v72;
      v74 = 0x6E776F6E6B6E75;
      if (v66)
      {
        v74 = v64;
      }

      v75 = 0xE700000000000000;
      if (v66)
      {
        v75 = v66;
      }

      *(v67 + 64) = v72;
      *(v67 + 72) = v74;
      *(v67 + 80) = v75;
      sub_1D17417AC(v112, v105);
      v76 = sub_1D1E6789C();
      *(v67 + 136) = v71;
      *(v67 + 144) = v73;
      *(v67 + 112) = v76;
      *(v67 + 120) = v77;
      sub_1D1741C08(v110, v105, &qword_1EC648B70, &qword_1D1E90DF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648B70, &qword_1D1E90DF0);
      v78 = sub_1D1E6789C();
      *(v67 + 176) = v71;
      *(v67 + 184) = v73;
      v79 = MEMORY[0x1E69E75F8];
      *(v67 + 152) = v78;
      *(v67 + 160) = v80;
      v81 = MEMORY[0x1E69E7660];
      *(v67 + 216) = v79;
      *(v67 + 224) = v81;
      *(v67 + 192) = v83;
      sub_1D1E66A8C();
      swift_unknownObjectRelease();

      sub_1D1741A30(v110, &qword_1EC648B70, &qword_1D1E90DF0);
      sub_1D17805D8(v112);
      return sub_1D1A0545C(v87);
    }
  }
}

uint64_t sub_1D1A0354C(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a1;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A035EC, 0, 0);
}

uint64_t sub_1D1A035EC()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_1D1E67E7C();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;

  sub_1D1A02010(v1, &unk_1D1E911F0, v7);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  sub_1D1A02010(v1, &unk_1D1E91200, v8);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v9 = *(MEMORY[0x1E69E8708] + 4);
  v10 = swift_task_alloc();
  v0[6] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E28, &unk_1D1E9CB30);
  *v10 = v0;
  v10[1] = sub_1D1A037F8;
  v12 = v0[2];

  return MEMORY[0x1EEE6DAC8](v0 + 9, 0, 0, v11);
}

uint64_t sub_1D1A037F8()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1D1A03B0C;
  }

  else
  {
    v3 = sub_1D1A0390C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1A0390C()
{
  v1 = **(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E67FFC();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1D1A039F4;
  v3 = *(v0 + 16);

  return sub_1D1A047E0(0, 0);
}

uint64_t sub_1D1A039F4()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v6 = *v0;

  v3 = *(v1 + 40);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1D1A03B0C()
{
  v1 = v0[7];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1A03B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D1A03B90, 0, 0);
}

uint64_t sub_1D1A03B90()
{
  v1 = *(MEMORY[0x1E69E88F0] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1D1A03C68;
  v3 = v0[2];
  v4 = v0[3];
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v3, &unk_1D1E91220, v4, sub_1D1A05378, v4, 0, 0, v5);
}

uint64_t sub_1D1A03C68()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1A03D9C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1D1A03DB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1A03DD4, 0, 0);
}

uint64_t sub_1D1A03DD4()
{
  v1 = *(MEMORY[0x1E69E8920] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1D1A03EAC;
  v3 = v0[2];
  v4 = v0[3];
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x80000001D1EC2D40, sub_1D1A05380, v4, v5);
}

uint64_t sub_1D1A03EAC()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1A05514, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

void sub_1D1A03FE0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v4));
  sub_1D1A05388(a2 + v3);
  os_unfair_lock_unlock((a2 + v4));
}

uint64_t sub_1D1A04078(uint64_t a1, uint64_t a2)
{
  v4 = _s12WaitingStateVMa();
  result = (*(*(v4 - 8) + 48))(a1, 1, v4);
  if (!result)
  {
    v6 = *(v4 + 20);
    sub_1D1741A30(a1 + v6, &qword_1EC6486D8, &qword_1D1E91190);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1 + v6, a2, v7);
    return (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  return result;
}

void sub_1D1A04194(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v13 - v5;
  sub_1D1E66A8C();
  v7 = a1 + *(*a1 + *MEMORY[0x1E69E6B68] + 16);
  v8 = (*(*a1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a1 + v8));
  v9 = _s12WaitingStateVMa();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v7, 1, v9))
  {
    v11 = *(v9 + 20);
    if (!(*(v3 + 48))(v7 + v11, 1, v2))
    {
      (*(v3 + 16))(v6, v7 + v11, v2);
      sub_1D1E67D8C();
      sub_1D1A054B8(&qword_1EC6486C8, MEMORY[0x1E69E8550]);
      v12 = swift_allocError();
      sub_1D1E6759C();
      v13[1] = v12;
      sub_1D1E67D5C();
      (*(v3 + 8))(v6, v2);
    }
  }

  sub_1D1741A30(v7, &qword_1EC648E20, &unk_1D1E911D8);
  (*(v10 + 56))(v7, 1, 1, v9);
  os_unfair_lock_unlock((a1 + v8));
}

uint64_t sub_1D1A04438(double a1)
{
  *(v1 + 16) = a1;
  v2 = sub_1D1E68A4C();
  *(v1 + 24) = v2;
  v3 = *(v2 - 8);
  *(v1 + 32) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A044F8, 0, 0);
}

uint64_t sub_1D1A044F8()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_1D1E693AC();
  v5 = v4;
  sub_1D1E6912C();
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_1D1A045D4;
  v7 = v0[5];

  return sub_1D1A01910(v3, v5, 0, 0, 1);
}

uint64_t sub_1D1A045D4()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *v1;
  v6[7] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1A0477C, 0, 0);
  }

  else
  {
    v7 = v6[5];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_1D1A0477C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1D1A047E0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_1D1E67D4C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D1A04874, v4, v6);
}

uint64_t sub_1D1A04874()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  if (sub_1D1E67FEC())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = *(MEMORY[0x1E69E8708] + 4);
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E28, &unk_1D1E9CB30);
    *v4 = v0;
    v4[1] = sub_1D1A049AC;
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);

    return MEMORY[0x1EEE6DAC8](v0 + 96, v8, v6, v5);
  }
}

uint64_t sub_1D1A049AC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_1D1A04BF8;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_1D1A04AC8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D1A04AC8()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 56);
    if (sub_1D1E67FEC())
    {
      if (v2)
      {
        swift_willThrow();
      }

      v4 = *(v0 + 8);

      return v4();
    }

    *(v0 + 72) = v2;
  }

  v6 = *(MEMORY[0x1E69E8708] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E28, &unk_1D1E9CB30);
  *v7 = v0;
  v7[1] = sub_1D1A049AC;
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);

  return MEMORY[0x1EEE6DAC8](v0 + 96, v11, v9, v8);
}

uint64_t sub_1D1A04BF8()
{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  v2 = v0[7];
  v3 = v0[8];
  if (sub_1D1E67FEC())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[9] = v1;
    v6 = *(MEMORY[0x1E69E8708] + 4);
    v7 = swift_task_alloc();
    v0[10] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E28, &unk_1D1E9CB30);
    *v7 = v0;
    v7[1] = sub_1D1A049AC;
    v9 = v0[3];
    v10 = v0[4];
    v11 = v0[2];

    return MEMORY[0x1EEE6DAC8](v0 + 12, v11, v9, v8);
  }
}

uint64_t sub_1D1A04D34(uint64_t a1)
{
  v37 = sub_1D18DA3B8(MEMORY[0x1E69E7CC0]);
  v39 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (v7 << 9) | (8 * v9);
    v11 = *(*(v39 + 56) + v10);
    v12 = *(*(v39 + 48) + v10);
    swift_bridgeObjectRetain_n();
    v13 = v12;
    v14 = [v13 attribute];
    v15 = [v14 unsignedIntValue];

    v16 = v13;
    v17 = [v16 cluster];
    LODWORD(v14) = [v17 unsignedIntValue];

    ClusterKind.init(rawValue:)(v14);
    v18 = v42[0];
    if (v42[0] == 30)
    {
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v19 = sub_1D18A7A4C(v11);

      sub_1D19F4834(v19, v42);
      v20 = [v16 endpoint];

      v21 = [v20 unsignedShortValue];
      sub_1D1741C08(v42, v41, &qword_1EC648B70, &qword_1D1E90DF0);
      v22 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v37;
      v24 = sub_1D171D15C(v21);
      v25 = v37[2];
      v26 = (v23 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        goto LABEL_23;
      }

      if (v37[3] >= v27)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v23)
          {
            goto LABEL_18;
          }

LABEL_17:
          v30 = v24;
          v31 = sub_1D18DA4D4(MEMORY[0x1E69E7CC0]);
          sub_1D19DD7DC(v30, v21, v31, v37);
          v24 = v30;
          v22 = v37;
          goto LABEL_18;
        }

        v38 = v24;
        v35 = v23;
        sub_1D173B100();
        v24 = v38;
        v22 = v40;
        v37 = v40;
        if ((v35 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v34 = v23;
        sub_1D172C2A4(v27, isUniquelyReferenced_nonNull_native);
        v28 = sub_1D171D15C(v21);
        if ((v34 & 1) != (v29 & 1))
        {
          goto LABEL_24;
        }

        v24 = v28;
        v22 = v37;
        if ((v34 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

LABEL_18:
      v32 = v22[7] + 8 * v24;
      sub_1D1B0EBDC(v41, v15 | (v18 << 32));

      sub_1D1741A30(v42, &qword_1EC648B70, &qword_1D1E90DF0);
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return v37;
    }

    v5 = *(v2 + 8 * v7);
    ++v8;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1A050AC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D17C4BFC;

  return sub_1D1A0354C(v7, a1, a2, v6);
}

uint64_t sub_1D1A0516C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1A03B70(a1, v4, v5, v6);
}

uint64_t sub_1D1A05220()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D17C4CF0;

  return sub_1D1A04438(v4);
}

uint64_t sub_1D1A052DC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D17C4CF0;

  return sub_1D1A03DB4(a1, v1);
}

uint64_t sub_1D1A053A4(uint64_t a1, uint64_t a2)
{
  v4 = _s12WaitingStateVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1A05408()
{
  result = qword_1EC648E40;
  if (!qword_1EC648E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648E40);
  }

  return result;
}

uint64_t sub_1D1A0545C(uint64_t a1)
{
  v2 = _s12WaitingStateVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1A054B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1A05518(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D178D574(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_1D17419CC(i, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643170, &qword_1D1E7A060);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643180, &unk_1D1E71CD0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_1D1742190(v8, v11);
      sub_1D1742190(v11, v10);
      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D178D574((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      sub_1D1742190(v10, v3 + 40 * v6 + 32);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_1D1741A30(v8, &qword_1EC6456C0, &unk_1D1E7A3F0);
    return 0;
  }

  return v3;
}

uint64_t sub_1D1A0569C(uint64_t a1)
{
  v7 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1D1E6899C();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1D1741970(i, v6);
    sub_1D1741B10(0, &qword_1EC647398, 0x1E696F6A8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1D1E6896C();
    v4 = *(v7 + 16);
    sub_1D1E689AC();
    sub_1D1E689BC();
    sub_1D1E6897C();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}