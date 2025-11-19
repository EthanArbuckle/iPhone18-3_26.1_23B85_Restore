uint64_t sub_1D1A057A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1D178D5B4(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1D1741970(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D178D5B4((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 4 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1D1A058B4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1E6873C())
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1D178D4BC(0, i & ~(i >> 63), 0);
    v4 = v8;
    if (v2)
    {
      v2 = sub_1D1E6873C();
      if (!v2)
      {
        return v4;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return v4;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v5 = MEMORY[0x1D3891EF0](0, a1);
LABEL_10:
  v6 = v5;
  sub_1D1E6822C();

  return 0;
}

uint64_t sub_1D1A05A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = a7;
  v49 = a8;
  v43 = a6;
  v42 = a5;
  v46 = a3;
  v47 = a4;
  v44 = a1;
  v45 = a2;
  v8 = sub_1D1E674FC();
  v53 = *(v8 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D1E6753C();
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D1E6755C();
  v41 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  v23 = sub_1D1E6750C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1741B10(0, &qword_1EC642608, 0x1E69E9610);
  (*(v24 + 104))(v27, *MEMORY[0x1E69E7F98], v23);
  v40 = sub_1D1E683CC();
  (*(v24 + 8))(v27, v23);
  sub_1D1E6754C();
  sub_1D1E6756C();
  v28 = *(v16 + 8);
  v28(v20, v15);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  v31 = v44;
  v32 = v45;
  v30[2] = v29;
  v30[3] = v31;
  v33 = v46;
  v34 = v47;
  v30[4] = v32;
  v30[5] = v33;
  v30[6] = v34;
  aBlock[4] = v48;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1845F94;
  aBlock[3] = v49;
  v35 = _Block_copy(aBlock);

  sub_1D1E6751C();
  v54 = MEMORY[0x1E69E7CC0];
  sub_1D1A08FB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648EA0, &unk_1D1EB0F00);
  sub_1D1A09008();
  v36 = v50;
  sub_1D1E6868C();
  v37 = v40;
  MEMORY[0x1D38919D0](v22, v14, v36, v35);
  _Block_release(v35);

  (*(v53 + 8))(v36, v8);
  (*(v51 + 8))(v14, v52);
  v28(v22, v41);
}

void sub_1D1A05FE8(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC13HomeDataModel21MockRVCRunModeCluster_attributeStates;
    swift_beginAccess();
    v15 = *&v7[v8];

    a4(&v15);
    v9 = *&v7[v8];
    *&v7[v8] = v15;

    if ((v7[OBJC_IVAR____TtC13HomeDataModel21MockRVCRunModeCluster_lastKnownEndpointID + 2] & 1) == 0)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = *(v10 + OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_attributeWaitingState);
        v14 = MEMORY[0x1EEE9AC00](v10);
        v12 = *(*v11 + *MEMORY[0x1E69E6B68] + 16);
        v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v11 + v13));
        sub_1D1A09280(v11 + v12);
        os_unfair_lock_unlock((v11 + v13));
      }
    }

    (a2)(0);
  }

  else
  {
    a2();
  }
}

void sub_1D1A061B4(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC13HomeDataModel23MockRVCCleanModeCluster_attributeStates;
    swift_beginAccess();
    v15 = *&v7[v8];

    a4(&v15);
    v9 = *&v7[v8];
    *&v7[v8] = v15;

    if ((v7[OBJC_IVAR____TtC13HomeDataModel23MockRVCCleanModeCluster_lastKnownEndpointID + 2] & 1) == 0)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = *(v10 + OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_attributeWaitingState);
        v14 = MEMORY[0x1EEE9AC00](v10);
        v12 = *(*v11 + *MEMORY[0x1E69E6B68] + 16);
        v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v11 + v13));
        sub_1D1A09280(v11 + v12);
        os_unfair_lock_unlock((v11 + v13));
      }
    }

    (a2)(0);
  }

  else
  {
    a2();
  }
}

void sub_1D1A06380(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_attributeStates;
    swift_beginAccess();
    v15 = *&v7[v8];

    a4(&v15);
    v9 = *&v7[v8];
    *&v7[v8] = v15;

    if ((v7[OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID + 2] & 1) == 0)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = *(v10 + OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_attributeWaitingState);
        v14 = MEMORY[0x1EEE9AC00](v10);
        v12 = *(*v11 + *MEMORY[0x1E69E6B68] + 16);
        v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v11 + v13));
        sub_1D1A09280(v11 + v12);
        os_unfair_lock_unlock((v11 + v13));
      }
    }

    (a2)(0);
  }

  else
  {
    a2();
  }
}

void sub_1D1A0654C(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_attributeStates;
    swift_beginAccess();
    v15 = *&v7[v8];

    a4(&v15);
    v9 = *&v7[v8];
    *&v7[v8] = v15;

    if ((v7[OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_lastKnownEndpointID + 2] & 1) == 0)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = *(v10 + OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_attributeWaitingState);
        v14 = MEMORY[0x1EEE9AC00](v10);
        v12 = *(*v11 + *MEMORY[0x1E69E6B68] + 16);
        v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v11 + v13));
        sub_1D1A09280(v11 + v12);
        os_unfair_lock_unlock((v11 + v13));
      }
    }

    (a2)(0);
  }

  else
  {
    a2();
  }
}

void sub_1D1A06718(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC13HomeDataModel23MockLevelControlCluster_attributeStates;
    swift_beginAccess();
    v15 = *&v7[v8];

    a4(&v15);
    v9 = *&v7[v8];
    *&v7[v8] = v15;

    if ((v7[OBJC_IVAR____TtC13HomeDataModel23MockLevelControlCluster_lastKnownEndpointID + 2] & 1) == 0)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = *(v10 + OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_attributeWaitingState);
        v14 = MEMORY[0x1EEE9AC00](v10);
        v12 = *(*v11 + *MEMORY[0x1E69E6B68] + 16);
        v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v11 + v13));
        sub_1D1A09280(v11 + v12);
        os_unfair_lock_unlock((v11 + v13));
      }
    }

    (a2)(0);
  }

  else
  {
    a2();
  }
}

void sub_1D1A068E4(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC13HomeDataModel23MockColorControlCluster_attributeStates;
    swift_beginAccess();
    v15 = *&v7[v8];

    a4(&v15);
    v9 = *&v7[v8];
    *&v7[v8] = v15;

    if ((v7[OBJC_IVAR____TtC13HomeDataModel23MockColorControlCluster_lastKnownEndpointID + 2] & 1) == 0)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = *(v10 + OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_attributeWaitingState);
        v14 = MEMORY[0x1EEE9AC00](v10);
        v12 = *(*v11 + *MEMORY[0x1E69E6B68] + 16);
        v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v11 + v13));
        sub_1D1A09280(v11 + v12);
        os_unfair_lock_unlock((v11 + v13));
      }
    }

    (a2)(0);
  }

  else
  {
    a2();
  }
}

void sub_1D1A06AB0(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC13HomeDataModel22MockServiceAreaCluster_attributeStates;
    swift_beginAccess();
    v15 = *&v7[v8];

    a4(&v15);
    v9 = *&v7[v8];
    *&v7[v8] = v15;

    if ((v7[OBJC_IVAR____TtC13HomeDataModel22MockServiceAreaCluster_lastKnownEndpointID + 2] & 1) == 0)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = *(v10 + OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_attributeWaitingState);
        v14 = MEMORY[0x1EEE9AC00](v10);
        v12 = *(*v11 + *MEMORY[0x1E69E6B68] + 16);
        v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v11 + v13));
        sub_1D19F4074(v11 + v12);
        os_unfair_lock_unlock((v11 + v13));
      }
    }

    (a2)(0);
  }

  else
  {
    a2();
  }
}

uint64_t sub_1D1A06C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648EA8, &qword_1D1E91460);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  (*(v6 + 16))(&v14 - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;

  sub_1D1A05A9C(sub_1D1A0913C, v11, sub_1D1A09158, v12, &unk_1F4D76EC0, &unk_1F4D76EE8, sub_1D1A08F98, &block_descriptor_69);
}

unint64_t sub_1D1A06E2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D178D5D4(0, v2, 0);
    v3 = v15;
    v5 = (a2 + 32);
    v6 = *(v15 + 16);
    v7 = 40 * v6;
    do
    {
      v9 = *v5++;
      v8 = v9;
      v16 = v3;
      v10 = *(v3 + 24);
      v11 = v6 + 1;
      if (v6 >= v10 >> 1)
      {
        sub_1D178D5D4((v10 > 1), v6 + 1, 1);
        v3 = v16;
      }

      *(v3 + 16) = v11;
      v12 = v3 + v7;
      *(v12 + 32) = v8;
      v13 = v17;
      *(v12 + 56) = v18;
      *(v12 + 40) = v13;
      *(v12 + 64) = 2;
      v7 += 40;
      v6 = v11;
      --v2;
    }

    while (v2);
  }

  *&v17 = v3;
  v19 = 5;
  return sub_1D1B0DAF8(&v17, 2);
}

uint64_t sub_1D1A070DC(void *a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    a2 = sub_1D1E67C1C();
  }

  v5[6] = a2;
  v10 = a1;
  v11 = a3;
  a5;
  v12 = swift_task_alloc();
  v5[7] = v12;
  *v12 = v5;
  v12[1] = sub_1D19EE938;

  return sub_1D1A087E0(v10, a2);
}

uint64_t sub_1D1A071FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E98, &unk_1D1E91420);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  (*(v6 + 16))(&v15 - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  v13 = a3;
  sub_1D1A05A9C(sub_1D1A08F28, v11, sub_1D1A08F44, v12, &unk_1F4D76EC0, &unk_1F4D76EE8, sub_1D1A08F98, &block_descriptor_69);
}

uint64_t sub_1D1A07558(void *a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    a2 = sub_1D1E67C1C();
  }

  v5[6] = a2;
  v10 = a1;
  v11 = a3;
  a5;
  v12 = swift_task_alloc();
  v5[7] = v12;
  *v12 = v5;
  v12[1] = sub_1D19F40A0;

  return sub_1D1A08BA0(v10, a2);
}

uint64_t sub_1D1A07678(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A0769C, 0, 0);
}

uint64_t sub_1D1A0769C()
{
  v20 = v0;
  sub_1D17419CC(*(v0 + 168), v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 144);
    *(v0 + 184) = v1;
    v2 = *(v0 + 152);
    if (v2 == 2)
    {
      v3 = *(v0 + 176);
      v4 = [objc_allocWithZone(MEMORY[0x1E696F6B0]) init];
      *(v0 + 192) = v4;
      sub_1D18F95E0(v1);
      v5 = sub_1D1E67BFC();

      [v4 setNewAreas_];

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_1D1A07994;
      v6 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647D18, &qword_1D1E88FC0);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1D17AFE50;
      *(v0 + 104) = &block_descriptor_32;
      *(v0 + 112) = v6;
      [v3 selectAreasWithParams:v4 expectedValues:0 expectedValueInterval:0 completion:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    v11 = *(v0 + 176);
    v18 = &type metadata for StaticRVCClusterGroup.Command;
    v19 = sub_1D18FA450();
    v16 = v1;
    v17 = v2;
    sub_1D19EDF88();
    swift_allocError();
    v13 = v12;
    sub_1D19637F0(v1, v2);
    sub_1D19F67F8(v11, &off_1EEC1E678, &v16, v13);
    swift_willThrow();
    sub_1D19630E4(v1, v2);
  }

  else
  {
    v7 = *(v0 + 176);
    sub_1D17419CC(*(v0 + 168), v0 + 80);
    sub_1D19EDF88();
    swift_allocError();
    v9 = v8;
    v10 = swift_unknownObjectRetain();
    sub_1D19F67F8(v10, &off_1EEC1E678, (v0 + 80), v9);
    swift_willThrow();
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D1A07994()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1D1A07B44;
  }

  else
  {
    v3 = sub_1D1A07AA4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1A07AA4()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[20];
  v4 = v0[18];
  v3[3] = sub_1D1741B10(0, &qword_1EC647D20, 0x1E696F6B8);

  sub_1D19630E4(v2, 2);
  *v3 = v4;
  v5 = v0[1];

  return v5();
}

uint64_t sub_1D1A07B44()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  swift_willThrow();

  sub_1D19630E4(v3, 2);
  v4 = v0[25];
  v5 = v0[1];

  return v5();
}

id sub_1D1A07BF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockServiceAreaCluster();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D1A07CAC()
{
  v1 = OBJC_IVAR____TtC13HomeDataModel22MockServiceAreaCluster_attributeStates;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

void sub_1D1A07D54(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D1A07D9C(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel22MockServiceAreaCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D1A07DCC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return sub_1D1A07678(a1, a2);
}

uint64_t sub_1D1A07E8C()
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

  return sub_1D1A07558(v2, v3, v4, v5, v6);
}

uint64_t sub_1D1A07F54(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1D17C4CF0;

  return v7();
}

uint64_t sub_1D1A0803C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1D17C4BFC;

  return v8();
}

uint64_t sub_1D1A08124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1D1A08410(a3, v25 - v11);
  v13 = sub_1D1E67E7C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D1741A30(v12, &unk_1EC6442C0, &qword_1D1E741A0);
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

  sub_1D1E67E6C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1D1E67D4C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1D1E678CC() + 32;
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

    sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);

    return v23;
  }

LABEL_8:
  sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);
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

uint64_t sub_1D1A08410(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1A08480(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D1A08578;

  return v7(a1);
}

uint64_t sub_1D1A08578()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D1A08670(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D1A08480(a1, v5);
}

uint64_t sub_1D1A08728(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4BFC;

  return sub_1D1A08480(a1, v5);
}

uint64_t sub_1D1A087E0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A08804, 0, 0);
}

uint64_t sub_1D1A08804()
{
  v1 = *(v0 + 72);
  v2 = [*(v0 + 56) getNewAreas];
  v3 = sub_1D1E67C1C();

  v4 = sub_1D1A057A8(v3);
  *(v0 + 80) = v4;

  v5 = v1 + OBJC_IVAR____TtC13HomeDataModel22MockServiceAreaCluster_commandObserver;
  v6 = *(v1 + OBJC_IVAR____TtC13HomeDataModel22MockServiceAreaCluster_commandObserver);
  if (v6)
  {
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v5 + 8);

    v10 = [v8 getNewAreas];
    v11 = sub_1D1E67C1C();

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648300, &qword_1D1E8BEE8);
    *(v0 + 16) = v11;
    *(v0 + 40) = v12;
    v6(0, v7, v0 + 16);
    sub_1D19EDFDC(v6);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v13 = *(v0 + 72);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_1D19F6AB0(*(v0 + 64));
  }

  v16 = *(v0 + 72);
  if (!v4)
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v17 = swift_task_alloc();
  *(v0 + 88) = v17;
  *(v17 + 16) = v16;
  *(v17 + 24) = v4;
  v18 = *(MEMORY[0x1E69E88D0] + 4);
  v19 = swift_task_alloc();
  *(v0 + 96) = v19;
  v20 = sub_1D1741B10(0, &qword_1EC647D20, 0x1E696F6B8);
  *v19 = v0;
  v19[1] = sub_1D1A08A40;

  return MEMORY[0x1EEE6DDE0](v0 + 48, 0, 0, 0xD000000000000037, 0x80000001D1EC3030, sub_1D1A09134, v17, v20);
}

uint64_t sub_1D1A08A40()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1A08B84, 0, 0);
}

uint64_t sub_1D1A08BA0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A08BC4, 0, 0);
}

uint64_t sub_1D1A08BC4()
{
  v1 = *(v0 + 72);
  v2 = [*(v0 + 56) skippedArea];
  *(v0 + 80) = v2;
  v3 = v1 + OBJC_IVAR____TtC13HomeDataModel22MockServiceAreaCluster_commandObserver;
  v4 = *(v1 + OBJC_IVAR____TtC13HomeDataModel22MockServiceAreaCluster_commandObserver);
  if (v4)
  {
    v5 = *(v0 + 64);
    v6 = *(v3 + 8);
    v7 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    *(v0 + 16) = v2;
    *(v0 + 40) = v7;
    sub_1D18AFEFC(v4);
    v8 = v2;
    v4(2, v5, v0 + 16);
    sub_1D19EDFDC(v4);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v9 = *(v0 + 72);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_1D19F6AB0(*(v0 + 64));
  }

  v12 = *(v0 + 72);
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *(v13 + 16) = v12;
  *(v13 + 24) = v2;
  v14 = *(MEMORY[0x1E69E88D0] + 4);
  v15 = swift_task_alloc();
  *(v0 + 96) = v15;
  v16 = sub_1D1741B10(0, &qword_1EC647D10, 0x1E696F6C8);
  *v15 = v0;
  v15[1] = sub_1D1A08DA0;

  return MEMORY[0x1EEE6DDE0](v0 + 48, 0, 0, 0xD000000000000030, 0x80000001D1EC2FF0, sub_1D1A08F20, v13, v16);
}

uint64_t sub_1D1A08DA0()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1A08EB8, 0, 0);
}

uint64_t sub_1D1A08EB8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1D1A08F44()
{
  v2[0] = [*(v0 + 16) unsignedIntegerValue];
  v3 = 2;
  return sub_1D1B0DAF8(v2, 3);
}

unint64_t sub_1D1A08FB0()
{
  result = qword_1EE07A040;
  if (!qword_1EE07A040)
  {
    sub_1D1E674FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A040);
  }

  return result;
}

unint64_t sub_1D1A09008()
{
  result = qword_1EE079E30;
  if (!qword_1EE079E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC648EA0, &unk_1D1EB0F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE079E30);
  }

  return result;
}

uint64_t sub_1D1A0906C()
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

  return sub_1D1A070DC(v2, v3, v4, v5, v6);
}

uint64_t block_copy_helper_108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_65Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1A092C4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for EndpointPath(0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = sub_1D1E66A7C();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A093B4, 0, 0);
}

uint64_t sub_1D1A093B4()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];
  v6 = *(v5 + *(v0[7] + 20));
  sub_1D1A0AF34(v5, v4, type metadata accessor for EndpointPath);
  (*(v2 + 32))(v1, v4, v3);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_1D1A094A8;
  v8 = v0[11];

  return sub_1D1A0A508(v6, v8);
}

uint64_t sub_1D1A094A8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[12];
  v6 = v3[11];
  v7 = v3[10];
  v8 = v3[9];
  v10 = *v2;
  v4[13] = a1;

  (*(v7 + 8))(v6, v8);

  return MEMORY[0x1EEE6DFA0](sub_1D1A09610, 0, 0);
}

uint64_t sub_1D1A09610()
{
  if (v0[13])
  {
    v1 = v0[6];
    v2 = v0[7];
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[13];
    ObjectType = swift_getObjectType();
    v7 = *(v3 + 48);
    v8 = *(v4 + *(v2 + 24));
    swift_unknownObjectRetain();
    v9 = v7(v1, v8, v1, ObjectType, v3);
    swift_unknownObjectRelease_n();
  }

  else
  {
    v9 = 0;
  }

  v10 = v0[11];
  v11 = v0[8];

  v12 = v0[1];

  return v12(v9);
}

uint64_t sub_1D1A09704(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for EndpointPath(0);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = sub_1D1E66A7C();
  v1[8] = v4;
  v5 = *(v4 - 8);
  v1[9] = v5;
  v6 = *(v5 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A097F4, 0, 0);
}

uint64_t sub_1D1A097F4()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = *(v5 + *(v0[6] + 20));
  sub_1D1A0AF34(v5, v4, type metadata accessor for EndpointPath);
  (*(v2 + 32))(v1, v4, v3);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_1D1A098E4;
  v8 = v0[10];

  return sub_1D1A0A508(v6, v8);
}

uint64_t sub_1D1A098E4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[11];
  v6 = v3[10];
  v7 = v3[9];
  v8 = v3[8];
  v10 = *v2;
  v4[12] = a1;

  (*(v7 + 8))(v6, v8);

  return MEMORY[0x1EEE6DFA0](sub_1D1A09A4C, 0, 0);
}

uint64_t sub_1D1A09A4C()
{
  if (v0[12])
  {
    v1 = v0[4];
    v2 = v0[12];
    ObjectType = swift_getObjectType();
    v4 = (*(v1 + 16))(ObjectType, v1);
    if (v4)
    {
      v5 = v0[5];
      v6 = v4;
      v7 = [v4 accessories];

      sub_1D190A1D0();
      v8 = sub_1D1E67C1C();

      v9 = swift_task_alloc();
      *(v9 + 16) = v5;
      v10 = sub_1D174A6C4(sub_1D1A0AF9C, v9, v8);
      swift_unknownObjectRelease();

      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v10 = 0;
LABEL_6:
  v11 = v0[10];
  v12 = v0[7];

  v13 = v0[1];

  return v13(v10);
}

uint64_t MatterDevice.attributeListForCluster(path:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClusterPath(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643378, &qword_1D1E717E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D1E739C0;
  sub_1D1A0AF34(a1, v10, type metadata accessor for ClusterPath);
  v12 = *&v10[*(type metadata accessor for EndpointPath(0) + 24)];
  LOBYTE(v7) = v10[*(v7 + 28)];
  sub_1D19B0B70(v10);
  *(v11 + 32) = v12;
  *(v11 + 34) = 0;
  *(v11 + 35) = v7;
  *(v11 + 36) = 65531;
  *(v11 + 40) = 0;
  (*(a3 + 120))(v15, v11, a2, a3);

  v13 = sub_1D19C52F0(a1, v15[0], v15[1]);

  return v13;
}

uint64_t MatterDevice.primaryDeviceType.getter@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643378, &qword_1D1E717E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D1E739C0;
  *(v4 + 32) = 0x10000;
  *(v4 + 40) = 0;
  (*(a1 + 120))(&v6);

  AttributeValueSet.primaryDeviceType.getter(a2);
}

uint64_t MatterDevice.readAllSupportedAttributes()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643378, &qword_1D1E717E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D1E739C0;
  *(v4 + 32) = 0x10000;
  *(v4 + 40) = 1;
  v40 = a1;
  v41 = a2;
  v39 = *(a2 + 120);
  v39(&v49);

  v5 = v49;
  v6 = v50;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D1E739C0;
  *(v7 + 32) = 0x10000;
  *(v7 + 40) = 1;
  v55 = v7;
  v46 = v5;
  v49 = v5;
  v50 = v6;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;

  result = DescriptorClusterDecoder.endpointIDs.getter();
  v9 = 0;
  v43 = result + 56;
  v10 = 1 << *(result + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(result + 56);
  v42 = (v10 + 63) >> 6;
  v44 = result;
  v45 = v6;
LABEL_6:
  while (v12)
  {
LABEL_11:
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v15 = *(*(result + 48) + ((v9 << 7) | (2 * v14)));
    if (v15)
    {
      v49 = v46;
      v50 = v6;
      v47 = v15;
      v51 = v15;
      v52 = 0;
      v53 = 0;
      v54 = 0;

      result = DescriptorClusterDecoder.availableClusterKinds.getter();
      v16 = 0;
      v17 = result + 56;
      v48 = result;
      v18 = 1 << *(result + 32);
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v20 = v19 & *(result + 56);
      v21 = (v18 + 63) >> 6;
      while (v20)
      {
LABEL_21:
        v23 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v24 = v23 | (v16 << 6);
        v25 = *(v48 + 48);
        v26 = *(v25 + v24);
        v27 = 40;
        switch(*(v25 + v24))
        {
          case 1:
            goto LABEL_50;
          case 2:
            v27 = 47;
            goto LABEL_50;
          case 3:
            v27 = 46;
            goto LABEL_50;
          case 4:
            v27 = 50;
            goto LABEL_50;
          case 5:
            v27 = 51;
            goto LABEL_50;
          case 6:
            v27 = 54;
            goto LABEL_50;
          case 7:
            v27 = 64;
            goto LABEL_50;
          case 8:
            v27 = 65;
            goto LABEL_50;
          case 9:
            v27 = 62;
            goto LABEL_50;
          case 0xA:
            v27 = 3;
            goto LABEL_50;
          case 0xB:
            v27 = 6;
            goto LABEL_50;
          case 0xC:
            v27 = 8;
            goto LABEL_50;
          case 0xD:
            v27 = 69;
            goto LABEL_50;
          case 0xE:
            v27 = 80;
            goto LABEL_50;
          case 0xF:
            v27 = 59;
            goto LABEL_50;
          case 0x10:
            v27 = 96;
            goto LABEL_50;
          case 0x11:
            v27 = 768;
            goto LABEL_50;
          case 0x12:
            v27 = 512;
            goto LABEL_50;
          case 0x13:
            v27 = 513;
            goto LABEL_50;
          case 0x14:
            v27 = 514;
            goto LABEL_50;
          case 0x15:
            v27 = 516;
            goto LABEL_50;
          case 0x16:
            v27 = 257;
            goto LABEL_50;
          case 0x17:
            v27 = 258;
            goto LABEL_50;
          case 0x18:
            v27 = 97;
            goto LABEL_50;
          case 0x19:
            v27 = 84;
            goto LABEL_50;
          case 0x1A:
            v27 = 85;
            goto LABEL_50;
          case 0x1B:
            v27 = 336;
            goto LABEL_50;
          case 0x1C:
            v27 = 323615747;
            goto LABEL_50;
          case 0x1D:
            v27 = 323615749;
LABEL_50:
            if (qword_1EC6422F0 != -1)
            {
              result = swift_once();
            }

            v28 = off_1EC6493A0;
            if (*(off_1EC6493A0 + 2))
            {
              v29 = *(off_1EC6493A0 + 5);
              sub_1D1E6920C();
              sub_1D1E6924C();
              result = sub_1D1E6926C();
              v30 = -1 << v28[32];
              v31 = result & ~v30;
              if ((*&v28[((v31 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v31))
              {
                v32 = ~v30;
LABEL_55:
                v33 = 40;
                switch(*(*(v28 + 6) + v31))
                {
                  case 1:
                    goto LABEL_109;
                  case 2:
                    if (v27 == 47)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 3:
                    if (v27 == 46)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 4:
                    if (v27 == 50)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 5:
                    if (v27 == 51)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 6:
                    if (v27 == 54)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 7:
                    if (v27 == 64)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 8:
                    if (v27 == 65)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 9:
                    if (v27 == 62)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0xA:
                    if (v27 == 3)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0xB:
                    if (v27 == 6)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0xC:
                    if (v27 == 8)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0xD:
                    if (v27 == 69)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0xE:
                    if (v27 == 80)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0xF:
                    if (v27 == 59)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x10:
                    if (v27 == 96)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x11:
                    if (v27 == 768)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x12:
                    if (v27 == 512)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x13:
                    if (v27 == 513)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x14:
                    if (v27 == 514)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x15:
                    if (v27 == 516)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x16:
                    if (v27 == 257)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x17:
                    if (v27 == 258)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x18:
                    if (v27 == 97)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x19:
                    if (v27 == 84)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x1A:
                    if (v27 == 85)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x1B:
                    if (v27 == 336)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x1C:
                    if (v27 == 323615747)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x1D:
                    v33 = 323615749;
LABEL_109:
                    if (v33 != v27)
                    {
                      goto LABEL_110;
                    }

LABEL_113:
                    v34 = v55;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v34 = sub_1D177E09C(0, *(v34 + 2) + 1, 1, v34);
                    }

                    v36 = *(v34 + 2);
                    v35 = *(v34 + 3);
                    if (v36 >= v35 >> 1)
                    {
                      v34 = sub_1D177E09C((v35 > 1), v36 + 1, 1, v34);
                    }

                    *(v34 + 2) = v36 + 1;
                    v37 = &v34[12 * v36];
                    *(v37 + 16) = v47;
                    v37[34] = 0;
                    v37[35] = v26;
                    *(v37 + 9) = 0;
                    v37[40] = 1;
                    v55 = v34;
                    if (v26 == 19)
                    {
                      v38 = swift_allocObject();
                      *(v38 + 16) = xmmword_1D1E739C0;
                      *(v38 + 32) = 150994944;
                      *(v38 + 40) = 1;
                    }

                    else
                    {
                      v38 = MEMORY[0x1E69E7CC0];
                    }

                    result = sub_1D17A4684(v38);
                    continue;
                  default:
LABEL_110:
                    v31 = (v31 + 1) & v32;
                    if (((*&v28[((v31 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v31) & 1) == 0)
                    {
                      continue;
                    }

                    goto LABEL_55;
                }
              }
            }

            break;
          default:
            continue;
        }
      }

      while (1)
      {
        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v22 >= v21)
        {

          v6 = v45;

          result = v44;
          goto LABEL_6;
        }

        v20 = *(v17 + 8 * v22);
        ++v16;
        if (v20)
        {
          v16 = v22;
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_125;
    }
  }

  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v42)
    {

      (v39)(v55, v40, v41);
    }

    v12 = *(v43 + 8 * v13);
    ++v9;
    if (v12)
    {
      v9 = v13;
      goto LABEL_11;
    }
  }

LABEL_125:
  __break(1u);
  return result;
}

uint64_t sub_1D1A0A508(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = sub_1D1E66A7C();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[7] = v7;
  *v7 = v2;
  v7[1] = sub_1D1A0A610;

  return sub_1D1E3766C(a2);
}

uint64_t sub_1D1A0A610(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A0A710, 0, 0);
}

uint64_t sub_1D1A0A710()
{
  v27 = v0;
  v1 = v0[8];
  if (!v1 || (v2 = HMHome.device(for:)(v0[2]), v4 = v3, v1, !v2))
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v6 = v0[5];
    v5 = v0[6];
    v8 = v0[3];
    v7 = v0[4];
    v9 = sub_1D1E6709C();
    __swift_project_value_buffer(v9, qword_1EE07A0B0);
    (*(v6 + 16))(v5, v8, v7);
    v10 = sub_1D1E6707C();
    v11 = sub_1D1E6833C();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[5];
    v13 = v0[6];
    v15 = v0[4];
    if (v12)
    {
      v16 = v0[2];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 134218242;
      *(v17 + 4) = v16;
      *(v17 + 12) = 2080;
      sub_1D1886B8C();
      v19 = sub_1D1E68FAC();
      v21 = v20;
      (*(v14 + 8))(v13, v15);
      v22 = sub_1D1B1312C(v19, v21, &v26);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_1D16EC000, v10, v11, "Couldn't find matter device for '%llu in %s'", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1D3893640](v18, -1, -1);
      MEMORY[0x1D3893640](v17, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    v2 = 0;
    v4 = 0;
  }

  v23 = v0[6];

  v24 = v0[1];

  return v24(v2, v4);
}

uint64_t dispatch thunk of MatterDevice.performCommand(path:commandID:commandFields:expectedValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 80);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1D1A0AB6C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1D1A0AB6C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of MatterDevice.wait(forAttributeValues:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *(a3 + 128);
  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D17C4BFC;
  v12.n128_f64[0] = a4;

  return v14(a1, a2, a3, v12);
}

uint64_t dispatch thunk of MatterDevice.perform(commandGroups:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 136);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D1A0AFF8;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1D1A0AF34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A0AF9C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = sub_1D1E682DC();
  return (v4 == *(v2 + *(type metadata accessor for EndpointPath(0) + 20))) & ~v5;
}

id MTRDevice.identifier.getter()
{
  v1 = [v0 hdm_getNodeID];
  v2 = [v1 unsignedLongLongValue];

  return v2;
}

id MTRDevice.add(_:)(uint64_t a1)
{
  if (qword_1EC6422A8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC6BE160;

  return [v1 addDelegate:a1 queue:v3];
}

uint64_t MTRDevice.readValues(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v49 = a2;
    v48 = MEMORY[0x1EEE9AC00](a1);
    v50 = v2;
    v46[2] = v2;
    v47 = MEMORY[0x1EEE9AC00](v48);
    v5 = v47;
    debug_assert(_:_:file:line:)(sub_1D1A104A8, v6, sub_1D1A10508, v46, "/Library/Caches/com.apple.xbs/Sources/Home/HomeDataModel/Matter/MatterDevice/MTRDevice+MatterDevice.swift", 105, 2, 30);
    *&v53 = MEMORY[0x1E69E7CC0];
    sub_1D1E6899C();
    v7 = objc_opt_self();
    v8 = (v5 + 40);
    do
    {
      v12 = *(v8 - 5);
      v13 = *(v8 - 1);
      v14 = *v8;
      if (*(v8 - 6))
      {
        v15 = 0;
      }

      else
      {
        v16 = *(v8 - 4);
        v15 = sub_1D1E692AC();
      }

      v17 = 0;
      switch(v12)
      {
        case 30:
          break;
        default:
          v17 = sub_1D1E692CC();
          break;
      }

      if (v14)
      {
        v9 = 0;
      }

      else
      {
        v9 = sub_1D1E692CC();
      }

      v10 = [v7 requestPathWithEndpointID:v15 clusterID:v17 attributeID:v9];

      sub_1D1E6896C();
      v11 = *(v53 + 16);
      sub_1D1E689AC();
      sub_1D1E689BC();
      sub_1D1E6897C();
      v8 += 12;
      --v4;
    }

    while (v4);
    sub_1D1741B10(0, &qword_1EC648EB0, 0x1E696F580);
    v18 = sub_1D1E67BFC();

    v19 = v50;
    v20 = [v50 readAttributePaths_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v21 = sub_1D1E67C1C();

    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = 0;
      v24 = MEMORY[0x1E69E7CC0];
      while (v23 < *(v21 + 16))
      {
        v25 = *(v21 + 32 + 8 * v23);

        v26 = [v19 hdm_getNodeID];
        v27 = [v26 unsignedLongLongValue];

        sub_1D18F8630(v25, v27, v51);

        if (*(&v51[0] + 1))
        {
          v53 = v51[0];
          v54 = v51[1];
          v55 = v51[2];
          v56 = v52;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_1D177DF74(0, *(v24 + 2) + 1, 1, v24);
          }

          v29 = *(v24 + 2);
          v28 = *(v24 + 3);
          if (v29 >= v28 >> 1)
          {
            v24 = sub_1D177DF74((v28 > 1), v29 + 1, 1, v24);
          }

          *(v24 + 2) = v29 + 1;
          v30 = &v24[56 * v29];
          v31 = v53;
          v32 = v54;
          v33 = v55;
          *(v30 + 10) = v56;
          *(v30 + 3) = v32;
          *(v30 + 4) = v33;
          *(v30 + 2) = v31;
        }

        else
        {
          sub_1D1741A30(v51, &unk_1EC64A350, &qword_1D1E914C0);
        }

        ++v23;
        v19 = v50;
        if (v22 == v23)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
LABEL_28:

      if (qword_1EE07A0A8 == -1)
      {
        goto LABEL_29;
      }
    }

    swift_once();
LABEL_29:
    v41 = sub_1D1E6709C();
    __swift_project_value_buffer(v41, qword_1EE07A0B0);
    sub_1D1A0B8B8(v19, v24);
    v42 = [v19 hdm_getNodeID];
    v43 = [v42 unsignedLongLongValue];

    return sub_1D18F3358(v43, v24, v49);
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v34 = sub_1D1E6709C();
  __swift_project_value_buffer(v34, qword_1EE07A0B0);
  v35 = v2;
  v36 = sub_1D1E6707C();
  v37 = sub_1D1E6833C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    v39 = [v35 hdm_getNodeID];
    v40 = [v39 unsignedLongLongValue];

    *(v38 + 4) = v40;
    _os_log_impl(&dword_1D16EC000, v36, v37, "Requested to readValues(for: []) on device:%llu with empty paths which is not supported", v38, 0xCu);
    MEMORY[0x1D3893640](v38, -1, -1);
  }

  else
  {

    v36 = v35;
  }

  if (qword_1EC642248 != -1)
  {
    swift_once();
  }

  v45 = unk_1EC6BE120;
  *a2 = qword_1EC6BE118;
  a2[1] = v45;
}

uint64_t sub_1D1A0B79C(void *a1, uint64_t a2)
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD00000000000002BLL, 0x80000001D1EC31A0);
  v4 = [a1 hdm_getNodeID];
  [v4 unsignedLongLongValue];

  v5 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v5);

  MEMORY[0x1D3890F70](0xD000000000000065, 0x80000001D1EC31D0);
  v6 = MEMORY[0x1D3891260](a2, &type metadata for MatterAttributeRequestPath);
  MEMORY[0x1D3890F70](v6);

  return 0;
}

void sub_1D1A0B8B8(void *a1, uint64_t a2)
{
  if (qword_1EE07B280 != -1)
  {
LABEL_30:
    swift_once();
  }

  if (byte_1EE07B288 == 1)
  {
    v3 = [a1 hdm_containingHome];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 accessories];

      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v6 = sub_1D1E67C1C();

      v51 = a2;
      if (v6 >> 62)
      {
        a2 = sub_1D1E6873C();
        if (a2)
        {
          goto LABEL_6;
        }
      }

      else
      {
        a2 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (a2)
        {
LABEL_6:
          v7 = 0;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v8 = MEMORY[0x1D3891EF0](v7, v6);
            }

            else
            {
              if (v7 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_29;
              }

              v8 = *(v6 + 8 * v7 + 32);
            }

            v9 = v8;
            v10 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

            v11 = sub_1D1E682DC();
            v13 = v12;
            v14 = [a1 hdm_getNodeID];
            v15 = [v14 unsignedLongLongValue];

            if ((v13 & 1) == 0 && v11 == v15)
            {
              break;
            }

            ++v7;
            if (v10 == a2)
            {
              goto LABEL_32;
            }
          }

          v16 = qword_1EE07A0A8;
          v17 = v9;
          v18 = v17;
          if (v16 != -1)
          {
            swift_once();
          }

          v19 = sub_1D1E6709C();
          __swift_project_value_buffer(v19, qword_1EE07A0B0);
          v49 = v18;
          a2 = v51;

          v20 = a1;
          v21 = sub_1D1E6707C();
          v22 = sub_1D1E6835C();

          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            v56[0] = v24;
            *v23 = 134349570;
            *(v23 + 4) = *(v51 + 16);

            *(v23 + 12) = 2050;
            v25 = [v20 hdm_getNodeID];
            v26 = [v25 unsignedLongLongValue];

            *(v23 + 14) = v26;
            *(v23 + 22) = 2080;
            v27 = [v49 name];
            v28 = sub_1D1E6781C();
            v30 = v29;

            v31 = sub_1D1B1312C(v28, v30, v56);

            *(v23 + 24) = v31;
            _os_log_impl(&dword_1D16EC000, v21, v22, "Successfully read %{public}ld values from device %{public}llu (named: %s)", v23, 0x20u);
            __swift_destroy_boxed_opaque_existential_1(v24);
            MEMORY[0x1D3893640](v24, -1, -1);
            MEMORY[0x1D3893640](v23, -1, -1);
          }

          else
          {
          }

          v32 = v49;
          v33 = *(v51 + 16);
          if (!v33)
          {
            goto LABEL_25;
          }

LABEL_34:
          v50 = v32;
          v34 = a2 + 32;
          if (qword_1EE07A0A8 != -1)
          {
            swift_once();
          }

          v35 = sub_1D1E6709C();
          v36 = qword_1EE07A0B0;
          v52 = v35;
          do
          {
            __swift_project_value_buffer(v35, v36);
            sub_1D18F5324(v34, v56);
            v37 = a1;
            v38 = sub_1D1E6707C();
            v39 = sub_1D1E6832C();
            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              v41 = swift_slowAlloc();
              v55 = v41;
              *v40 = 134218242;
              v42 = [v37 hdm_getNodeID];
              v43 = v36;
              v44 = [v42 unsignedLongLongValue];

              *(v40 + 4) = v44;
              *(v40 + 12) = 2080;
              sub_1D18F5324(v56, v54);
              v45 = sub_1D1E6789C();
              v47 = v46;
              sub_1D18F5380(v56);
              v48 = sub_1D1B1312C(v45, v47, &v55);

              *(v40 + 14) = v48;
              v36 = v43;
              v35 = v52;
              _os_log_impl(&dword_1D16EC000, v38, v39, "%llu: %s", v40, 0x16u);
              __swift_destroy_boxed_opaque_existential_1(v41);
              MEMORY[0x1D3893640](v41, -1, -1);
              MEMORY[0x1D3893640](v40, -1, -1);
            }

            else
            {

              sub_1D18F5380(v56);
            }

            v34 += 56;
            --v33;
          }

          while (v33);

          return;
        }
      }

LABEL_32:

      a2 = v51;
    }

    sub_1D1A10370(a1, a2);
    v32 = 0;
    v33 = *(a2 + 16);
    if (!v33)
    {
LABEL_25:

      return;
    }

    goto LABEL_34;
  }

  sub_1D1A10370(a1, a2);
}

void MTRDevice.readValue(for:in:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  (*(v7 + 16))(v6, v7);
  v8 = sub_1D1E692AC();
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  (*(v10 + 24))(&v114, v9, v10);
  v11 = dword_1D1E91564[v114];
  v12 = sub_1D1E692CC();
  v13 = MTRDevice.getAttributeData(path:attributeID:)(a2);
  if (!v13)
  {
    goto LABEL_5;
  }

  v14 = v13;
  if (!*(v13 + 16))
  {

LABEL_5:

    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v15 = v8;
  v16 = v12;
  v17 = sub_1D1E692CC();
  v18 = [objc_opt_self() attributePathWithEndpointID:v15 clusterID:v16 attributeID:v17];
  v108 = v15;

  v107 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  v20 = *MEMORY[0x1E696F500];
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v21;
  *(inited + 72) = sub_1D1741B10(0, &qword_1EC650120, 0x1E696F570);
  *(inited + 48) = v18;
  v22 = *MEMORY[0x1E696F520];
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v23;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  *(inited + 96) = v14;
  v106 = v18;

  sub_1D18D6538(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
  swift_arrayDestroy();
  v24 = objc_allocWithZone(MEMORY[0x1E696F578]);
  v25 = sub_1D1A10510();
  v26 = a2[3];
  v27 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v26);
  (*(v27 + 24))(&v114, v26, v27);
  v28 = sub_1D1A38104(a1, &v114);
  v105 = v28;
  v30 = v29;
  memset(v117, 0, sizeof(v117));
  v109 = v29;
  if (v25)
  {
    v31 = [v25 error];
    if (v31)
    {
      v32 = v31;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v33 = sub_1D1E6709C();
      __swift_project_value_buffer(v33, qword_1EE07A0B0);
      sub_1D17419CC(a2, &v114);

      v34 = v32;
      v35 = sub_1D1E6707C();
      v36 = sub_1D1E6833C();

      if (os_log_type_enabled(v35, v36))
      {
        v103 = v25;
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v102 = a3;
        v39 = swift_slowAlloc();
        *&v111 = v39;
        *v37 = 136315650;
        *(v37 + 4) = sub_1D1B1312C(v105, v30, &v111);
        *(v37 + 12) = 2080;
        v40 = v116;
        __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
        v41 = *(v40 + 8);
        v42 = sub_1D1E68FAC();
        v44 = v43;
        __swift_destroy_boxed_opaque_existential_1(&v114);
        v45 = sub_1D1B1312C(v42, v44, &v111);

        *(v37 + 14) = v45;
        *(v37 + 22) = 2112;
        v46 = v34;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 24) = v47;
        *v38 = v47;
        _os_log_impl(&dword_1D16EC000, v35, v36, "Got error trying to read attribute (%s) for ClusterPath (%s): %@", v37, 0x20u);
        sub_1D1741A30(v38, &unk_1EC644000, &unk_1D1E75B00);
        MEMORY[0x1D3893640](v38, -1, -1);
        swift_arrayDestroy();
        v48 = v39;
        a3 = v102;
        MEMORY[0x1D3893640](v48, -1, -1);
        v49 = v37;
        v25 = v103;
        MEMORY[0x1D3893640](v49, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v114);
      }
    }

    else
    {
      if ([v25 value])
      {
        sub_1D1E6866C();
        swift_unknownObjectRelease();
      }

      else
      {
        v111 = 0u;
        v112 = 0u;
      }

      v104 = v25;
      v114 = v111;
      v115 = v112;
      sub_1D1757A78(&v114, v117);
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v62 = sub_1D1E6709C();
      __swift_project_value_buffer(v62, qword_1EE07A0B0);
      sub_1D17419CC(a2, &v114);

      v63 = sub_1D1E6707C();
      v64 = sub_1D1E6835C();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v113[0] = v66;
        *v65 = 136315650;
        v67 = v116;
        __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
        v68 = *(v67 + 8);
        v69 = sub_1D1E68FAC();
        v71 = v70;
        __swift_destroy_boxed_opaque_existential_1(&v114);
        v72 = sub_1D1B1312C(v69, v71, v113);

        *(v65 + 4) = v72;
        *(v65 + 12) = 2080;
        *(v65 + 14) = sub_1D1B1312C(v105, v109, v113);
        *(v65 + 22) = 2080;
        swift_beginAccess();
        sub_1D1741C08(v117, &v111, &qword_1EC649700, &qword_1D1E6E910);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
        v73 = sub_1D1E6789C();
        v75 = sub_1D1B1312C(v73, v74, v113);

        *(v65 + 24) = v75;
        _os_log_impl(&dword_1D16EC000, v63, v64, "MTRDevice decodedAttribute: %s (attribute:%s) result: %s", v65, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v66, -1, -1);
        MEMORY[0x1D3893640](v65, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v114);
      }

      v25 = v104;
    }
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v50 = sub_1D1E6709C();
    __swift_project_value_buffer(v50, qword_1EE07A0B0);
    sub_1D17419CC(a2, &v114);

    v51 = sub_1D1E6707C();
    v52 = sub_1D1E6833C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v111 = v54;
      *v53 = 136315394;
      *(v53 + 4) = sub_1D1B1312C(v105, v30, &v111);
      *(v53 + 12) = 2080;
      v55 = a3;
      v56 = v116;
      __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
      v57 = *(v56 + 8);
      v58 = sub_1D1E68FAC();
      v60 = v59;
      __swift_destroy_boxed_opaque_existential_1(&v114);
      v61 = sub_1D1B1312C(v58, v60, &v111);
      a3 = v55;

      *(v53 + 14) = v61;
      _os_log_impl(&dword_1D16EC000, v51, v52, "Failed to create MTRAttributeReport for attribute (%s) ClusterPath (%s)", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v54, -1, -1);
      MEMORY[0x1D3893640](v53, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v114);
    }

    v25 = 0;
  }

  swift_beginAccess();
  sub_1D1741C08(v117, &v114, &qword_1EC649700, &qword_1D1E6E910);
  if (!*(&v115 + 1))
  {
    sub_1D1741A30(&v114, &qword_1EC649700, &qword_1D1E6E910);
    v76 = *MEMORY[0x1E696F568];
    v77 = sub_1D1E6781C();
    if (*(v14 + 16))
    {
      v79 = sub_1D171D2F0(v77, v78);
      v81 = v80;

      if (v81)
      {
        sub_1D1741970(*(v14 + 56) + 32 * v79, &v114);

LABEL_35:
        sub_1D1757A78(&v114, v117);
        if (qword_1EE07A0A8 != -1)
        {
          swift_once();
        }

        v82 = sub_1D1E6709C();
        __swift_project_value_buffer(v82, qword_1EE07A0B0);
        sub_1D17419CC(a2, &v114);

        v83 = sub_1D1E6707C();
        v84 = sub_1D1E6835C();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = v25;
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v110 = v87;
          *v86 = 136315650;
          v88 = v116;
          __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
          v89 = *(v88 + 8);
          v90 = sub_1D1E68FAC();
          v92 = v91;
          __swift_destroy_boxed_opaque_existential_1(&v114);
          v93 = sub_1D1B1312C(v90, v92, &v110);

          *(v86 + 4) = v93;
          *(v86 + 12) = 2080;
          v94 = sub_1D1B1312C(v105, v109, &v110);

          *(v86 + 14) = v94;
          *(v86 + 22) = 2080;
          sub_1D1741C08(v117, &v111, &qword_1EC649700, &qword_1D1E6E910);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
          v95 = sub_1D1E6789C();
          v97 = sub_1D1B1312C(v95, v96, &v110);

          *(v86 + 24) = v97;
          _os_log_impl(&dword_1D16EC000, v83, v84, "MTRDevice decodedAttribute: Attempting manual decode %s (attribute:%s) result: %s", v86, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1D3893640](v87, -1, -1);
          v98 = v86;
          v25 = v85;
          MEMORY[0x1D3893640](v98, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(&v114);
        }

        goto LABEL_40;
      }
    }

    else
    {
    }

    v114 = 0u;
    v115 = 0u;
    goto LABEL_35;
  }

  sub_1D1741A30(&v114, &qword_1EC649700, &qword_1D1E6E910);
LABEL_40:
  sub_1D1741C08(v117, &v111, &qword_1EC649700, &qword_1D1E6E910);
  if (*(&v112 + 1))
  {
    sub_1D16EEE38(&v111, &v114);
    v99 = *(&v115 + 1);
    v100 = __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
    *(a3 + 24) = v99;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    (*(*(v99 - 8) + 16))(boxed_opaque_existential_1, v100, v99);

    __swift_destroy_boxed_opaque_existential_1(&v114);
  }

  else
  {

    sub_1D1741A30(&v111, &qword_1EC649700, &qword_1D1E6E910);
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  sub_1D1741A30(v117, &qword_1EC649700, &qword_1D1E6E910);
}

uint64_t MTRDevice.getAttributeData(path:attributeID:)(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 16))(v4, v5);
  v6 = sub_1D1E692AC();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 24))(&v15, v7, v8);
  v9 = dword_1D1E91564[v15];
  v10 = sub_1D1E692CC();
  v11 = sub_1D1E692CC();
  v12 = [v2 readAttributeWithEndpointID:v6 clusterID:v10 attributeID:v11 params:0];

  if (v12)
  {
    v13 = sub_1D1E675FC();
  }

  else
  {

    return 0;
  }

  return v13;
}

id MTRDevice.cluster<A>(of:endpointID:)()
{
  v1 = sub_1D1E692AC();
  if (qword_1EC6422A8 != -1)
  {
    swift_once();
  }

  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDevice:v0 endpointID:v1 queue:qword_1EC6BE160];

  return v2;
}

uint64_t MTRDevice.writeAttribute(path:attributeID:value:)(uint64_t a1, int a2, void *a3)
{
  v4 = v3;
  v38 = a2;
  v7 = type metadata accessor for ClusterPath(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + *(type metadata accessor for EndpointPath(0) + 24));
  v13 = sub_1D1E692AC();
  v14 = dword_1D1E91564[*(a1 + *(v8 + 28))];
  v15 = sub_1D1E692CC();
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v16 = sub_1D1E6709C();
  __swift_project_value_buffer(v16, qword_1EE07A0B0);
  sub_1D18F61D4(a1, v11);
  sub_1D1741970(a3, v41);
  v17 = sub_1D1E6707C();
  v18 = sub_1D1E6835C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v40 = v20;
    *v19 = 136315906;
    *(v19 + 4) = sub_1D1B1312C(0xD000000000000027, 0x80000001D1EC30E0, &v40);
    v37 = v13;
    *(v19 + 12) = 2080;
    v21 = ClusterPath.description.getter();
    v36 = v15;
    v22 = v4;
    v24 = v23;
    sub_1D19B0B70(v11);
    v25 = sub_1D1B1312C(v21, v24, &v40);

    *(v19 + 14) = v25;
    *(v19 + 22) = 1024;
    *(v19 + 24) = v38;
    *(v19 + 28) = 2080;
    sub_1D1741970(v41, v39);
    v26 = sub_1D1E6789C();
    v28 = v27;
    __swift_destroy_boxed_opaque_existential_1(v41);
    v29 = sub_1D1B1312C(v26, v28, &v40);
    v4 = v22;
    v15 = v36;

    *(v19 + 30) = v29;
    _os_log_impl(&dword_1D16EC000, v17, v18, "%s path: %s attributeID: %u value: %s", v19, 0x26u);
    v13 = v37;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v20, -1, -1);
    MEMORY[0x1D3893640](v19, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_1D19B0B70(v11);
  }

  v30 = sub_1D1E692CC();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v31 = sub_1D1E6903C();
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  v32 = qword_1EC649398;
  if (qword_1EC649398)
  {
    v33 = qword_1EC649398;
  }

  else
  {
    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v33 = sub_1D1E684DC();
    v32 = 0;
  }

  v34 = v32;
  [v4 writeAttributeWithEndpointID:v13 clusterID:v15 attributeID:v30 value:v31 expectedValueInterval:v33 timedWriteTimeout:0];

  return swift_unknownObjectRelease();
}

uint64_t MTRDevice.clientData(key:endpointID:)@<X0>(_BYTE *a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v3 = 0xEB00000000656D61;
  v4 = 0x4E79616C70736944;
  v5 = *a1;
  if ((a2 & 0x10000) != 0)
  {
    if (*a1 > 4u)
    {
      v24 = 0x746169636F737341;
      v25 = 0xEE00657079546465;
      v26 = 0x496564756C636E49;
      v27 = 0xEF7375746174536ELL;
      if (v5 != 8)
      {
        v26 = 0x6564644165746144;
        v27 = 0xE900000000000064;
      }

      if (v5 != 7)
      {
        v24 = v26;
        v25 = v27;
      }

      v28 = 0xD000000000000017;
      v29 = 0x80000001D1EB8390;
      if (v5 != 5)
      {
        v28 = 0x657A6953656C6954;
        v29 = 0xE800000000000000;
      }

      if (*a1 <= 6u)
      {
        v16 = v28;
      }

      else
      {
        v16 = v24;
      }

      if (v5 <= 6)
      {
        v17 = v29;
      }

      else
      {
        v17 = v25;
      }
    }

    else
    {
      v12 = 0x6E6564496E6F6349;
      v13 = 0xEE00726569666974;
      v14 = 0xE800000000000000;
      v15 = 0x657469726F766146;
      if (v5 != 3)
      {
        v15 = 0x61446E4F776F6853;
        v14 = 0xEF6472616F626873;
      }

      if (v5 != 2)
      {
        v12 = v15;
        v13 = v14;
      }

      if (*a1)
      {
        v4 = 0x44496D6F6F52;
        v3 = 0xE600000000000000;
      }

      if (*a1 <= 1u)
      {
        v16 = v4;
      }

      else
      {
        v16 = v12;
      }

      if (v5 <= 1)
      {
        v17 = v3;
      }

      else
      {
        v17 = v13;
      }
    }

    sub_1D1A110EC(v16, v17, a3);
  }

  else
  {
    if (*a1 > 4u)
    {
      v18 = 0x746169636F737341;
      v19 = 0xEE00657079546465;
      v20 = 0x496564756C636E49;
      v21 = 0xEF7375746174536ELL;
      if (v5 != 8)
      {
        v20 = 0x6564644165746144;
        v21 = 0xE900000000000064;
      }

      if (v5 != 7)
      {
        v18 = v20;
        v19 = v21;
      }

      v22 = 0xD000000000000017;
      v23 = 0x80000001D1EB8390;
      if (v5 != 5)
      {
        v22 = 0x657A6953656C6954;
        v23 = 0xE800000000000000;
      }

      if (*a1 <= 6u)
      {
        v10 = v22;
      }

      else
      {
        v10 = v18;
      }

      if (*a1 <= 6u)
      {
        v11 = v23;
      }

      else
      {
        v11 = v19;
      }
    }

    else
    {
      v6 = 0x6E6564496E6F6349;
      v7 = 0xEE00726569666974;
      v8 = 0xE800000000000000;
      v9 = 0x657469726F766146;
      if (v5 != 3)
      {
        v9 = 0x61446E4F776F6853;
        v8 = 0xEF6472616F626873;
      }

      if (v5 != 2)
      {
        v6 = v9;
        v7 = v8;
      }

      if (*a1)
      {
        v4 = 0x44496D6F6F52;
        v3 = 0xE600000000000000;
      }

      if (*a1 <= 1u)
      {
        v10 = v4;
      }

      else
      {
        v10 = v6;
      }

      if (*a1 <= 1u)
      {
        v11 = v3;
      }

      else
      {
        v11 = v7;
      }
    }

    sub_1D1A10F50(a2, v10, v11, a3);
  }
}

uint64_t MTRDevice.setClientData(key:endpointID:value:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xEB00000000656D61;
  v4 = 0x4E79616C70736944;
  v5 = *a1;
  if ((a2 & 0x10000) != 0)
  {
    if (*a1 > 4u)
    {
      v24 = 0x746169636F737341;
      v25 = 0xEE00657079546465;
      v26 = 0x496564756C636E49;
      v27 = 0xEF7375746174536ELL;
      if (v5 != 8)
      {
        v26 = 0x6564644165746144;
        v27 = 0xE900000000000064;
      }

      if (v5 != 7)
      {
        v24 = v26;
        v25 = v27;
      }

      v28 = 0xD000000000000017;
      v29 = 0x80000001D1EB8390;
      if (v5 != 5)
      {
        v28 = 0x657A6953656C6954;
        v29 = 0xE800000000000000;
      }

      if (*a1 <= 6u)
      {
        v16 = v28;
      }

      else
      {
        v16 = v24;
      }

      if (v5 <= 6)
      {
        v17 = v29;
      }

      else
      {
        v17 = v25;
      }
    }

    else
    {
      v12 = 0x6E6564496E6F6349;
      v13 = 0xEE00726569666974;
      v14 = 0xE800000000000000;
      v15 = 0x657469726F766146;
      if (v5 != 3)
      {
        v15 = 0x61446E4F776F6853;
        v14 = 0xEF6472616F626873;
      }

      if (v5 != 2)
      {
        v12 = v15;
        v13 = v14;
      }

      if (*a1)
      {
        v4 = 0x44496D6F6F52;
        v3 = 0xE600000000000000;
      }

      if (*a1 <= 1u)
      {
        v16 = v4;
      }

      else
      {
        v16 = v12;
      }

      if (v5 <= 1)
      {
        v17 = v3;
      }

      else
      {
        v17 = v13;
      }
    }

    sub_1D1A1165C(v16, v17, a3);
  }

  else
  {
    if (*a1 > 4u)
    {
      v18 = 0x746169636F737341;
      v19 = 0xEE00657079546465;
      v20 = 0x496564756C636E49;
      v21 = 0xEF7375746174536ELL;
      if (v5 != 8)
      {
        v20 = 0x6564644165746144;
        v21 = 0xE900000000000064;
      }

      if (v5 != 7)
      {
        v18 = v20;
        v19 = v21;
      }

      v22 = 0xD000000000000017;
      v23 = 0x80000001D1EB8390;
      if (v5 != 5)
      {
        v22 = 0x657A6953656C6954;
        v23 = 0xE800000000000000;
      }

      if (*a1 <= 6u)
      {
        v10 = v22;
      }

      else
      {
        v10 = v18;
      }

      if (*a1 <= 6u)
      {
        v11 = v23;
      }

      else
      {
        v11 = v19;
      }
    }

    else
    {
      v6 = 0x6E6564496E6F6349;
      v7 = 0xEE00726569666974;
      v8 = 0xE800000000000000;
      v9 = 0x657469726F766146;
      if (v5 != 3)
      {
        v9 = 0x61446E4F776F6853;
        v8 = 0xEF6472616F626873;
      }

      if (v5 != 2)
      {
        v6 = v9;
        v7 = v8;
      }

      if (*a1)
      {
        v4 = 0x44496D6F6F52;
        v3 = 0xE600000000000000;
      }

      if (*a1 <= 1u)
      {
        v10 = v4;
      }

      else
      {
        v10 = v6;
      }

      if (*a1 <= 1u)
      {
        v11 = v3;
      }

      else
      {
        v11 = v7;
      }
    }

    sub_1D1A113E8(a2, v10, v11, a3);
  }
}

uint64_t MTRDevice.wait(forAttributeValues:timeout:)(uint64_t a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 24) = a2;
  *(v3 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A0D830, 0, 0);
}

uint64_t sub_1D1A0D830()
{
  v26 = v0;
  v1 = [objc_allocWithZone(type metadata accessor for DiscardingMatterDelegate()) init];
  v0[5] = v1;
  v2 = qword_1EC6422A8;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = v0[2];
  v5 = qword_1EC6BE160;
  v6 = *(v4 + 16);
  if (v6)
  {
    v23 = qword_1EC6BE160;
    v24 = v3;
    v7 = sub_1D1808600(v6, 0);
    v8 = sub_1D1805A20(&v25, (v7 + 32), v6, v4);

    result = sub_1D1716918();
    if (v8 != v6)
    {
      __break(1u);
      return result;
    }

    v4 = v0[2];
    v5 = v23;
    v3 = v24;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v10 = v0[4];
  v11 = v0[3];
  sub_1D18F9C6C(v7);

  v12 = sub_1D1E67BFC();

  [v10 addDelegate:v3 queue:v5 interestedPathsForAttributes:v12 interestedPathsForEvents:0];

  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v4;
  v13[4] = v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB8, &qword_1D1E840E8);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v0[6] = v17;

  v18 = v10;
  swift_defaultActor_initialize();
  *(v17 + 16) = 0;
  v19 = *(*v17 + 112);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
  (*(*(v20 - 8) + 56))(&v17[v19], 1, 1, v20);
  v21 = &v17[*(*v17 + 120)];
  *v21 = 0;
  *(v21 + 1) = 0;
  *(v17 + 14) = &unk_1D1E914D8;
  *(v17 + 15) = v13;
  v22 = swift_task_alloc();
  v0[7] = v22;
  *v22 = v0;
  v22[1] = sub_1D1A0DB30;

  return sub_1D19D7D10(sub_1D19D7D10);
}

uint64_t sub_1D1A0DB30()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1D1A0DCC4;
  }

  else
  {
    v3 = sub_1D1A0DC44;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1A0DC44()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  [v3 removeDelegate_];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D1A0DCC4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  [v3 removeDelegate_];

  v4 = v0[1];
  v5 = v0[8];

  return v4();
}

uint64_t sub_1D1A0DD44(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a1;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 16) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D1A0DD6C, 0, 0);
}

uint64_t sub_1D1A0DD6C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  v9 = *(v0 + 24);
  swift_weakInit();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1D1A0DEA8;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000021, 0x80000001D1EC3170, sub_1D1A10C18, v4, v7);
}

uint64_t sub_1D1A0DEA8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1D1A0E028;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1D1A0DFC4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1A0DFC4()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1A0E028()
{
  v1 = v0[6];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_1D1A0E094(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v46 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v45 = &v43 - v11;
  v12 = sub_1D1E66A7C();
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v43 - v19;
  sub_1D18A7CD8(a3);
  sub_1D1741B10(0, &qword_1EC650120, 0x1E696F570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  sub_1D1A10C28();
  v21 = sub_1D1E675DC();

  if (qword_1EC6422A8 != -1)
  {
    swift_once();
  }

  v22 = qword_1EC6BE160;
  (*(v17 + 16))(v20, a1, v16);
  v23 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v24 = swift_allocObject();
  (*(v17 + 32))(v24 + v23, v20, v16);
  aBlock[4] = sub_1D1A10C90;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1C40BA8;
  aBlock[3] = &block_descriptor_37_0;
  v25 = _Block_copy(aBlock);

  v26 = [a2 waitForAttributeValues:v21 timeout:v22 queue:v25 completion:a5];
  _Block_release(v25);

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v27 = sub_1D1E6709C();
  __swift_project_value_buffer(v27, qword_1EE07A0B0);
  v28 = v26;
  v29 = sub_1D1E6707C();
  v30 = sub_1D1E6835C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v31 = 136315394;
    v33 = [v28 UUID];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v34 = v44;
    v35 = sub_1D1E68FAC();
    v37 = v36;
    (*(v43 + 8))(v15, v34);
    v38 = sub_1D1B1312C(v35, v37, aBlock);

    *(v31 + 4) = v38;
    *(v31 + 12) = 2048;
    *(v31 + 14) = a5;
    _os_log_impl(&dword_1D16EC000, v29, v30, "Starting to wait with value waiter: %s with timeout %f", v31, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1D3893640](v32, -1, -1);
    MEMORY[0x1D3893640](v31, -1, -1);
  }

  v39 = sub_1D1E67E7C();
  v40 = v45;
  (*(*(v39 - 8) + 56))(v45, 1, 1, v39);
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = 0;
  v41[4] = v46;
  v41[5] = v28;

  sub_1D17C7B2C(0, 0, v40, &unk_1D1E91558, v41);
}

uint64_t sub_1D1A0E5F8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
    return sub_1D1E67D5C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
    return sub_1D1E67D6C();
  }
}

uint64_t sub_1D1A0E66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A0E690, 0, 0);
}

uint64_t sub_1D1A0E690()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = Strong;

    return MEMORY[0x1EEE6DFA0](sub_1D1A0E75C, v3, 0);
  }

  else
  {
    **(v0 + 40) = 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1D1A0E75C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v2 + 128);
  *(v2 + 128) = v1;
  v4 = v1;
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1D1A0E7DC, 0, 0);
}

uint64_t MTRDevice.performCommand(path:commandID:commandFields:expectedValues:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D1A10DD4;

  return (sub_1D1A106BC)(a1, a2, a3);
}

void sub_1D1A0E8C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v22 = a4;
  v23 = a5;
  v21 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648EC0, &qword_1D1E91548);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  if (a6)
  {
    a6 = sub_1D1E675DC();
  }

  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  v14 = qword_1EC6422A8;
  v15 = qword_1EC649398;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_1EC6BE160;
  (*(v10 + 16))(v13, a1, v9);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + v17, v13, v9);
  aBlock[4] = sub_1D1A10B74;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1A0EBD8;
  aBlock[3] = &block_descriptor_26_1;
  v19 = _Block_copy(aBlock);

  [a2 invokeCommandWithEndpointID:v21 clusterID:v22 commandID:v23 commandFields:a6 expectedValues:0 expectedValueInterval:v15 queue:v16 completion:v19];
  _Block_release(v19);
}

uint64_t sub_1D1A0EB48(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648EC0, &qword_1D1E91548);
    return sub_1D1E67D5C();
  }

  else
  {
    if (a1)
    {
      sub_1D18F95CC(a1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648EC0, &qword_1D1E91548);
    return sub_1D1E67D6C();
  }
}

uint64_t sub_1D1A0EBD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v4 = sub_1D1E67C1C();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t MTRDevice.perform(commandGroups:on:)(uint64_t a1, __int16 a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D1A0EC9C, 0, 0);
}

uint64_t sub_1D1A0EC9C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486B0, &qword_1D1E8E2C8);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  *(v0 + 32) = v8;

  v9 = v3;
  swift_defaultActor_initialize();
  *(v8 + 16) = 0;
  v10 = *(*v8 + 112);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486B8, &qword_1D1E8E2E0);
  (*(*(v11 - 8) + 56))(&v8[v10], 1, 1, v11);
  v12 = &v8[*(*v8 + 120)];
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v8 + 14) = &unk_1D1E91500;
  *(v8 + 15) = v4;
  v13 = swift_task_alloc();
  *(v0 + 40) = v13;
  *v13 = v0;
  v13[1] = sub_1D1A0EE44;

  return sub_1D19D8050();
}

uint64_t sub_1D1A0EE44(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_1D1A0EFD4;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_1D1A0EF6C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D1A0EF6C()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[7];

  return v2(v3);
}

uint64_t sub_1D1A0EFD4()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1D1A0F038(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  *(v5 + 648) = a5;
  *(v5 + 672) = a4;
  *(v5 + 640) = a3;
  *(v5 + 632) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A0F064, 0, 0);
}

uint64_t sub_1D1A0F064()
{
  v109 = v0;
  v1 = *(v0 + 640);
  v2 = *(v1 + 16);
  if (v2)
  {
    v103 = MEMORY[0x1E69E7CC0];
    v85 = *(v1 + 16);
    sub_1D178D990(0, v2, 0);
    v3 = v85;
    v4 = 0;
    v5 = v1 + 32;
    v6 = 1;
    v7 = v103;
    v96 = *MEMORY[0x1E696F518];
    v95 = *MEMORY[0x1E696F520];
    v88 = *MEMORY[0x1E696F550];
    v8 = *MEMORY[0x1E696F568];
    v86 = *MEMORY[0x1E696F568];
    v87 = *MEMORY[0x1E696F548];
    v82 = v1 + 32;
    while (1)
    {
      v9 = *(v5 + 8 * v4);
      v104 = MEMORY[0x1E69E7CC0];
      v93 = *(v9 + 16);
      if (v93)
      {
        break;
      }

      v72 = MEMORY[0x1E69E7CC0];
LABEL_41:
      v74 = *(v7 + 16);
      v73 = *(v7 + 24);
      if (v74 >= v73 >> 1)
      {
        v75 = v72;
        v76 = v4;
        v77 = v5;
        sub_1D178D990((v73 > 1), v74 + 1, 1);
        v72 = v75;
        v5 = v77;
        v4 = v76;
        v3 = v85;
      }

      ++v4;
      *(v7 + 16) = v74 + 1;
      *(v7 + 8 * v74 + 32) = v72;
      if (v4 == v3)
      {
        goto LABEL_44;
      }
    }

    v83 = v7;
    v84 = v4;
    v92 = v9 + 32;
    v10 = MEMORY[0x1E69E7CC0];

    v12 = 0;
    v89 = v10;
    v91 = v11;
    while (v12 < *(v11 + 16))
    {
      v94 = v12;
      sub_1D17419CC(v92 + 40 * v12, v0 + 448);
      v13 = *(v0 + 472);
      v14 = *(v0 + 480);
      v10 = __swift_project_boxed_opaque_existential_1((v0 + 448), v13);
      if (((*(v14 + 24))(v13, v14) & 0x100000000) != 0)
      {
        __swift_destroy_boxed_opaque_existential_1((v0 + 448));
      }

      else
      {
        v15 = *(v0 + 672);
        v16 = sub_1D1E692AC();
        v17 = *(v0 + 472);
        v18 = *(v0 + 480);
        __swift_project_boxed_opaque_existential_1((v0 + 448), v17);
        (*(v18 + 40))(&v107, v17, v18);
        v19 = dword_1D1E91564[v107];
        v20 = sub_1D1E692CC();
        v21 = sub_1D1E692CC();
        v22 = [objc_opt_self() commandPathWithEndpointID:v16 clusterID:v20 commandID:v21];

        v23 = *(v0 + 472);
        v24 = *(v0 + 480);
        __swift_project_boxed_opaque_existential_1((v0 + 448), v23);
        (*(v24 + 64))(&v105, v23, v24);
        v25 = v105;
        v90 = v22;
        if (v105)
        {
          v26 = *(v105 + 16);
          if (v26)
          {
            v106 = MEMORY[0x1E69E7CC0];
            v10 = &v106;
            sub_1D178CFB0(0, v26, 0);
            v27 = v106;
            v28 = v25 + 64;
            v29 = -1 << *(v25 + 32);
            v30 = sub_1D1E6869C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BF0, &unk_1D1E7E8B0);
            v31 = 0;
            v97 = v26;
            while ((v30 & 0x8000000000000000) == 0 && v30 < 1 << *(v25 + 32))
            {
              if ((*(v28 + 8 * (v30 >> 6)) & (1 << v30)) == 0)
              {
                goto LABEL_49;
              }

              v100 = v30 >> 6;
              v98 = v31;
              v102 = v27;
              v99 = *(v25 + 36);
              v33 = *(v25 + 56) + 16 * v30;
              v34 = *v33;
              v35 = *(v33 + 8);
              v36 = *(*(v25 + 48) + 8 * v30);
              sub_1D1741AF8(v34, v35);
              sub_1D1741AF8(v34, v35);

              sub_1D1757AE8(v34, v35);
              *(v0 + 112) = sub_1D1E6781C();
              *(v0 + 120) = v37;
              *(v0 + 152) = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
              *(v0 + 128) = v36;
              *(v0 + 160) = sub_1D1E6781C();
              *(v0 + 168) = v38;
              v107 = v34;
              v108 = v35;
              v101 = v36;
              v39 = MatterAttributeDataBuilder.dictionary.getter();
              *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E68, &unk_1D1E717F0);
              *(v0 + 176) = v39;
              v6 = sub_1D1E68BCC();
              sub_1D1741C08(v0 + 112, v0 + 400, &qword_1EC646228, &qword_1D1E8A0C0);
              v41 = *(v0 + 400);
              v40 = *(v0 + 408);

              v10 = v6;
              v42 = sub_1D171D2F0(v41, v40);
              if (v43)
              {
                goto LABEL_50;
              }

              *(v6 + 64 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
              v44 = (*(v6 + 48) + 16 * v42);
              *v44 = v41;
              v44[1] = v40;
              sub_1D16EEE38((v0 + 416), (*(v6 + 56) + 32 * v42));
              v45 = *(v6 + 16);
              v46 = __OFADD__(v45, 1);
              v47 = v45 + 1;
              if (v46)
              {
                goto LABEL_51;
              }

              *(v6 + 16) = v47;
              sub_1D1741C08(v0 + 160, v0 + 400, &qword_1EC646228, &qword_1D1E8A0C0);
              v48 = *(v0 + 400);
              v49 = *(v0 + 408);
              v10 = v6;
              v50 = sub_1D171D2F0(v48, v49);
              if (v51)
              {
                goto LABEL_52;
              }

              *(v6 + 64 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
              v52 = (*(v6 + 48) + 16 * v50);
              *v52 = v48;
              v52[1] = v49;
              sub_1D16EEE38((v0 + 416), (*(v6 + 56) + 32 * v50));
              v53 = *(v6 + 16);
              v46 = __OFADD__(v53, 1);
              v54 = v53 + 1;
              if (v46)
              {
                goto LABEL_53;
              }

              *(v6 + 16) = v54;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
              swift_arrayDestroy();

              sub_1D1757AE8(v34, v35);
              v27 = v102;
              v106 = v102;
              v56 = *(v102 + 16);
              v55 = *(v102 + 24);
              if (v56 >= v55 >> 1)
              {
                sub_1D178CFB0((v55 > 1), v56 + 1, 1);
                v27 = v106;
              }

              *(v27 + 16) = v56 + 1;
              *(v27 + 8 * v56 + 32) = v6;
              v6 = 1;
              v10 = (1 << *(v25 + 32));
              v28 = v25 + 64;
              if (v30 >= v10)
              {
                goto LABEL_54;
              }

              v57 = *(v25 + 64 + 8 * v100);
              if ((v57 & (1 << v30)) == 0)
              {
                goto LABEL_55;
              }

              if (v99 != *(v25 + 36))
              {
                goto LABEL_56;
              }

              v58 = v57 & (-2 << (v30 & 0x3F));
              if (v58)
              {
                v10 = (__clz(__rbit64(v58)) | v30 & 0x7FFFFFFFFFFFFFC0);
                v32 = v97;
              }

              else
              {
                v59 = v100 << 6;
                v60 = (v25 + 72 + 8 * v100);
                v61 = v100 + 1;
                v32 = v97;
                while (v61 < (v10 + 63) >> 6)
                {
                  v63 = *v60++;
                  v62 = v63;
                  v59 += 64;
                  ++v61;
                  if (v63)
                  {
                    sub_1D1716920(v30, v99, 0);
                    v10 = (__clz(__rbit64(v62)) + v59);
                    goto LABEL_13;
                  }
                }

                sub_1D1716920(v30, v99, 0);
              }

LABEL_13:
              v31 = v98 + 1;
              v30 = v10;
              if (v98 + 1 == v32)
              {
                goto LABEL_34;
              }
            }

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
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
            break;
          }

          v27 = MEMORY[0x1E69E7CC0];
LABEL_34:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D1E73A90;
          *(inited + 32) = sub_1D1E6781C();
          *(inited + 40) = v65;
          v66 = sub_1D1E6781C();
          *(inited + 72) = MEMORY[0x1E69E6158];
          *(inited + 48) = v66;
          *(inited + 56) = v67;
          *(inited + 80) = sub_1D1E6781C();
          *(inited + 88) = v68;
          *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
          *(inited + 96) = v27;
          sub_1D18D6538(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
          swift_arrayDestroy();

          v10 = sub_1D1E675DC();
        }

        else
        {
          v10 = 0;
        }

        v69 = [objc_allocWithZone(MEMORY[0x1E696F608]) initWithPath:v90 commandFields:v10 requiredResponse:0];

        v70 = __swift_destroy_boxed_opaque_existential_1((v0 + 448));
        if (v69)
        {
          v10 = &v104;
          MEMORY[0x1D3891220](v70);
          if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v71 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1D1E67C5C();
          }

          sub_1D1E67CAC();
          v89 = v104;
        }
      }

      v12 = v94 + 1;
      v11 = v91;
      if (v94 + 1 == v93)
      {

        v4 = v84;
        v3 = v85;
        v5 = v82;
        v7 = v83;
        v72 = v89;
        goto LABEL_41;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_44:
    v6 = v0 + 616;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643800, &qword_1D1E71F70);
    v10 = sub_1D1E67BFC();
    *(v0 + 656) = v10;

    if (qword_1EC6422A8 == -1)
    {
      goto LABEL_45;
    }
  }

  swift_once();
LABEL_45:
  v78 = *(v0 + 648);
  v79 = qword_1EC6BE160;
  *(v0 + 16) = v0;
  *(v0 + 56) = v6;
  *(v0 + 24) = sub_1D1A0FA60;
  v80 = swift_continuation_init();
  *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648EB8, &qword_1D1E91540);
  *(v0 + 336) = MEMORY[0x1E69E9820];
  *(v0 + 344) = 1107296256;
  *(v0 + 352) = sub_1D1A0FE34;
  *(v0 + 360) = &block_descriptor_33;
  *(v0 + 368) = v80;
  [v78 invokeCommands:v10 queue:v79 completion:v0 + 336];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D1A0FA60()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 664) = v2;
  if (v2)
  {
    v3 = sub_1D1A0FDC0;
  }

  else
  {
    v3 = sub_1D1A0FB70;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1A0FB70()
{
  v16 = v0;
  v1 = *(v0 + 656);
  v2 = *(v0 + 616);
  *(v0 + 512) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648308, &unk_1D1E8DD70);
  *(v0 + 488) = v2;

  sub_1D1741970(v0 + 488, v0 + 520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 624);
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v4 = sub_1D1E6709C();
    __swift_project_value_buffer(v4, qword_1EE07A0B0);
    sub_1D1741970(v0 + 488, v0 + 552);
    v5 = sub_1D1E6707C();
    v6 = sub_1D1E6834C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      sub_1D1741970(v0 + 552, v0 + 584);
      v9 = sub_1D1E678BC();
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1((v0 + 552));
      v12 = sub_1D1B1312C(v9, v11, &v15);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1D16EC000, v5, v6, "Failed to convert results to sendable dictionaries: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1D3893640](v8, -1, -1);
      MEMORY[0x1D3893640](v7, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 552));
    }

    v3 = MEMORY[0x1E69E7CC0];
  }

  **(v0 + 632) = v3;
  __swift_destroy_boxed_opaque_existential_1((v0 + 488));
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D1A0FDC0()
{
  v1 = v0[83];
  v2 = v0[82];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[83];

  return v3();
}

uint64_t sub_1D1A0FE34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    **(*(v4 + 64) + 40) = sub_1D1E67C1C();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

id sub_1D1A0FF20()
{
  v1 = [v0 hdm_getNodeID];
  v2 = [v1 unsignedLongLongValue];

  return v2;
}

id sub_1D1A0FF70()
{
  v1 = [v0 hdm_containingHome];

  return v1;
}

void sub_1D1A0FFA8(void *a1)
{
  [v1 setHdm:a1 containingHome:?];
}

void (*sub_1D1A0FFF0(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 hdm_containingHome];
  return sub_1D1A1004C;
}

void sub_1D1A1004C(id *a1)
{
  v1 = *a1;
  [a1[1] setHdm_containingHome_];
}

uint64_t sub_1D1A100CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D1A00CEC;

  return (sub_1D1A106BC)(a1, a2, a3);
}

id sub_1D1A10198(uint64_t a1)
{
  if (qword_1EC6422A8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC6BE160;

  return [v1 addDelegate:a1 queue:v3];
}

uint64_t sub_1D1A10228(uint64_t a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return MTRDevice.wait(forAttributeValues:timeout:)(a1, a2);
}

uint64_t sub_1D1A102CC(uint64_t a1, __int16 a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D1A10DD4;

  return MTRDevice.perform(commandGroups:on:)(a1, a2);
}

void sub_1D1A10370(void *a1, uint64_t a2)
{

  v4 = a1;
  oslog = sub_1D1E6707C();
  v5 = sub_1D1E6835C();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134349312;
    *(v6 + 4) = *(a2 + 16);

    *(v6 + 12) = 2050;
    v7 = [v4 hdm_getNodeID];
    v8 = [v7 unsignedLongLongValue];

    *(v6 + 14) = v8;
    _os_log_impl(&dword_1D16EC000, oslog, v5, "Successfully read %{public}ld values from device %{public}llu", v6, 0x16u);
    MEMORY[0x1D3893640](v6, -1, -1);
    v9 = oslog;
  }

  else
  {

    v9 = v4;
  }
}

uint64_t sub_1D1A104A8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = (v1 + 35);
  v4 = v2 - 1;
  do
  {
    v5 = v4;
    v6 = (*(v3 - 1) | (*(v3 - 3) == 0)) & (*v3 == 30);
    if (v6)
    {
      break;
    }

    v3 += 12;
    --v4;
  }

  while (v5);
  return v6 ^ 1u;
}

id sub_1D1A10510()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1D1E675DC();

  v7[0] = 0;
  v2 = [v0 initWithResponseValue:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1D1E6656C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1D1A105F8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1A0DD44(v8, a1, a2, v6, v7);
}

uint64_t sub_1D1A106BC(uint64_t a1, int a2, uint64_t a3)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = v3;
  *(v4 + 96) = a2;
  *(v4 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A106E4, 0, 0);
}

uint64_t sub_1D1A106E4()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + *(type metadata accessor for EndpointPath(0) + 24));
  v3 = sub_1D1E692AC();
  *(v0 + 48) = v3;
  v4 = dword_1D1E91564[*(v1 + *(type metadata accessor for ClusterPath(0) + 20))];
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 96);
  v8 = sub_1D1E692CC();
  *(v0 + 56) = v8;
  v9 = sub_1D1E692CC();
  *(v0 + 64) = v9;
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  v10[2] = v5;
  v10[3] = v3;
  v10[4] = v8;
  v10[5] = v9;
  v10[6] = v6;
  v11 = *(MEMORY[0x1E69E8920] + 4);
  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646D70, &qword_1D1E830B8);
  *v12 = v0;
  v12[1] = sub_1D1A10860;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000003CLL, 0x80000001D1EC3130, sub_1D1A10B64, v10, v13);
}

uint64_t sub_1D1A10860()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1D1A109F0;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1D1A1097C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1A1097C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  v3 = *(v0 + 16);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1D1A109F0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);

  v4 = *(v0 + 8);
  v5 = *(v0 + 88);

  return v4();
}

uint64_t sub_1D1A10A70(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v8 = *(v2 + 24);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1A0F038(a1, a2, v6, v8, v7);
}

uint64_t sub_1D1A10B74(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648EC0, &qword_1D1E91548) - 8) + 80);

  return sub_1D1A0EB48(a1, a2);
}

uint64_t block_copy_helper_24_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D1A10C28()
{
  result = qword_1EC648EC8;
  if (!qword_1EC648EC8)
  {
    sub_1D1741B10(255, &qword_1EC650120, 0x1E696F570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648EC8);
  }

  return result;
}

uint64_t sub_1D1A10C90(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0) - 8) + 80);

  return sub_1D1A0E5F8(a1);
}

uint64_t sub_1D1A10D0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4BFC;

  return sub_1D1A0E66C(a1, v4, v5, v7, v6);
}

unint64_t MatterMetadataKey.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x746169636F737341;
    v7 = 0x496564756C636E49;
    if (v1 != 8)
    {
      v7 = 0x6564644165746144;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000017;
    if (v1 != 5)
    {
      v8 = 0x657A6953656C6954;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x4E79616C70736944;
    v3 = 0x6E6564496E6F6349;
    v4 = 0x657469726F766146;
    if (v1 != 3)
    {
      v4 = 0x61446E4F776F6853;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x44496D6F6F52;
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
}

double sub_1D1A10F50@<D0>(unsigned __int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  swift_beginAccess();
  v10 = objc_getAssociatedObject(v5, &unk_1EC648ED1);
  swift_endAccess();
  if (v10)
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  sub_1D18CA7C0(v21, &v19);
  if (*(&v20 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648EE0, &qword_1D1E916D0);
    if (swift_dynamicCast())
    {
      if (*(v18 + 16))
      {
        v11 = sub_1D171D15C(a1);
        if (v12)
        {
          v13 = *(*(v18 + 56) + 8 * v11);

          if (*(v13 + 16))
          {
            v14 = sub_1D171D2F0(a2, a3);
            if (v15)
            {
              sub_1D1741970(*(v13 + 56) + 32 * v14, a4);
              sub_1D18B9B30(v21);

              return result;
            }
          }
        }
      }
    }

    v17 = v21;
  }

  else
  {
    sub_1D18B9B30(v21);
    v17 = &v19;
  }

  sub_1D18B9B30(v17);
  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

double sub_1D1A110EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  swift_beginAccess();
  v8 = objc_getAssociatedObject(v4, &unk_1EC648ED0);
  swift_endAccess();
  if (v8)
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  sub_1D18CA7C0(v16, &v14);
  if (*(&v15 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    if (swift_dynamicCast())
    {
      if (*(v13 + 16))
      {
        v9 = sub_1D171D2F0(a1, a2);
        if (v10)
        {
          sub_1D1741970(*(v13 + 56) + 32 * v9, a3);
          sub_1D18B9B30(v16);

          return result;
        }
      }
    }

    v12 = v16;
  }

  else
  {
    sub_1D18B9B30(v16);
    v12 = &v14;
  }

  sub_1D18B9B30(v12);
  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

HomeDataModel::MatterMetadataKey_optional __swiftcall MatterMetadataKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E68C2C();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D1A112BC()
{
  result = qword_1EC648ED8;
  if (!qword_1EC648ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648ED8);
  }

  return result;
}

uint64_t sub_1D1A11310()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1B33174();
  return sub_1D1E6926C();
}

uint64_t sub_1D1A11360()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1B33174();
  return sub_1D1E6926C();
}

unint64_t sub_1D1A113B0@<X0>(unint64_t *a1@<X8>)
{
  result = MatterMetadataKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1D1A113E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = objc_getAssociatedObject(v4, &unk_1EC648ED1);
  swift_endAccess();
  if (v10)
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (!*(&v22 + 1))
  {
    sub_1D18B9B30(&v23);
LABEL_9:
    v11 = sub_1D18D8CF4(MEMORY[0x1E69E7CC0]);
    if (!v11[2])
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648EE0, &qword_1D1E916D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v11 = v19;
  if (!v19[2])
  {
    goto LABEL_12;
  }

LABEL_10:
  v12 = sub_1D171D15C(a1);
  if (v13)
  {
    v14 = *(v11[7] + 8 * v12);
    v20 = v14;

    goto LABEL_13;
  }

LABEL_12:
  v14 = sub_1D18D6538(MEMORY[0x1E69E7CC0]);
  v20 = v14;
LABEL_13:
  sub_1D18CA7C0(a4, &v23);
  if (*(&v24 + 1))
  {
    sub_1D1742194(&v23, &v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1753F18(&v21, a2, a3, isUniquelyReferenced_nonNull_native);
    v16 = v14;
  }

  else
  {
    sub_1D18B9B30(&v23);
    sub_1D174EC88(a2, a3, &v21);
    sub_1D18B9B30(&v21);
    v16 = v20;
  }

  v17 = swift_isUniquelyReferenced_nonNull_native();
  *&v23 = v11;
  sub_1D1753DF4(v16, a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  v18 = sub_1D1E675DC();
  swift_beginAccess();
  objc_setAssociatedObject(v5, &unk_1EC648ED1, v18, 0x301);
  swift_endAccess();
}

void sub_1D1A1165C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = objc_getAssociatedObject(v4, &unk_1EC648ED0);
  swift_endAccess();
  if (v8)
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (*(&v13 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    if (swift_dynamicCast())
    {
      v9 = v16;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1D18B9B30(&v14);
  }

  v9 = sub_1D18D6538(MEMORY[0x1E69E7CC0]);
LABEL_9:
  v16 = v9;
  sub_1D18CA7C0(a3, &v14);
  if (*(&v15 + 1))
  {
    sub_1D1742194(&v14, &v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1753F18(&v12, a1, a2, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_1D18B9B30(&v14);
    sub_1D174EC88(a1, a2, &v12);
    sub_1D18B9B30(&v12);
  }

  v11 = sub_1D1E675DC();

  swift_beginAccess();
  objc_setAssociatedObject(v4, &unk_1EC648ED0, v11, 0x301);
  swift_endAccess();
}

uint64_t sub_1D1A11868()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    swift_dynamicCast();
  }

  v4 = sub_1D1E68C2C();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t MatterTileMetadata.displayName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MatterTileMetadata.iconIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MatterTileMetadata.associatedType.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MatterTileMetadata.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MatterTileMetadata() + 44);

  return sub_1D174A548(v3, a1);
}

uint64_t MatterTileMetadata.init(displayName:iconIdentifier:associatedType:tileSize:favorite:showOnDashboard:includeInStatus:dateAdded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, __int16 a10, uint64_t a11)
{
  v11 = *a7;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v11;
  *(a9 + 49) = a8;
  *(a9 + 50) = a10;
  v12 = a9 + *(type metadata accessor for MatterTileMetadata() + 44);

  return sub_1D19A376C(a11, v12);
}

uint64_t sub_1D1A11AD8()
{
  v1 = *v0;
  v2 = 0x4E79616C70736964;
  v3 = 0x496564756C636E69;
  if (v1 != 6)
  {
    v3 = 0x6564644165746164;
  }

  v4 = 0x657469726F766166;
  if (v1 != 4)
  {
    v4 = 0x61446E4F776F6873;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x746169636F737361;
  if (v1 != 2)
  {
    v5 = 0x657A6953656C6974;
  }

  if (*v0)
  {
    v2 = 0x6E6564496E6F6369;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D1A11C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1A13998(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1A11C38(uint64_t a1)
{
  v2 = sub_1D1A13560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A11C74(uint64_t a1)
{
  v2 = sub_1D1A13560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MatterTileMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648F00, &qword_1D1E916D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A13560();
  sub_1D1E6930C();
  v11 = *v3;
  v12 = v3[1];
  v22[15] = 0;
  sub_1D1E68E0C();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v22[14] = 1;
    sub_1D1E68E0C();
    v15 = v3[4];
    v16 = v3[5];
    v22[13] = 2;
    sub_1D1E68E0C();
    v22[12] = *(v3 + 48);
    v22[11] = 3;
    sub_1D1A135B4();
    sub_1D1E68E5C();
    v17 = *(v3 + 49);
    v22[10] = 4;
    sub_1D1E68E1C();
    v18 = *(v3 + 50);
    v22[9] = 5;
    sub_1D1E68E1C();
    v19 = *(v3 + 51);
    v22[8] = 6;
    sub_1D1E68E1C();
    v20 = *(type metadata accessor for MatterTileMetadata() + 44);
    v22[7] = 7;
    sub_1D1E669FC();
    sub_1D1A13C58(&qword_1EC642EC8, MEMORY[0x1E6969530]);
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MatterTileMetadata.hash(into:)()
{
  v1 = sub_1D1E669FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  if (v0[1])
  {
    v10 = *v0;
    sub_1D1E6922C();
    sub_1D1E678EC();
    if (v0[3])
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1D1E6922C();
    if (v0[5])
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_1D1E6922C();
  if (!v0[3])
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = v0[2];
  sub_1D1E6922C();
  sub_1D1E678EC();
  if (v0[5])
  {
LABEL_4:
    v12 = v0[4];
    sub_1D1E6922C();
    sub_1D1E678EC();
    goto LABEL_8;
  }

LABEL_7:
  sub_1D1E6922C();
LABEL_8:
  if (*(v0 + 48) == 2)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  if (*(v0 + 49) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (*(v0 + 50) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (*(v0 + 51) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v13 = type metadata accessor for MatterTileMetadata();
  sub_1D174A548(v0 + *(v13 + 44), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return sub_1D1E6922C();
  }

  (*(v2 + 32))(v5, v9, v1);
  sub_1D1E6922C();
  sub_1D1A13C58(&qword_1EC642A50, MEMORY[0x1E6969530]);
  sub_1D1E676EC();
  return (*(v2 + 8))(v5, v1);
}

uint64_t MatterTileMetadata.hashValue.getter()
{
  sub_1D1E6920C();
  MatterTileMetadata.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t MatterTileMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v24 - v6;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648F18, &unk_1D1E916E0);
  v8 = *(v27 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v11 = v24 - v10;
  v12 = type metadata accessor for MatterTileMetadata();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D1A13560();
  v28 = v11;
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v25 = v7;
  v38 = 0;
  v18 = v27;
  *v15 = sub_1D1E68C6C();
  *(v15 + 1) = v19;
  v24[1] = v19;
  v37 = 1;
  *(v15 + 2) = sub_1D1E68C6C();
  *(v15 + 3) = v20;
  v36 = 2;
  *(v15 + 4) = sub_1D1E68C6C();
  *(v15 + 5) = v21;
  v34 = 3;
  sub_1D1A13608();
  sub_1D1E68CBC();
  v15[48] = v35;
  v33 = 4;
  v15[49] = sub_1D1E68C7C();
  v32 = 5;
  v15[50] = sub_1D1E68C7C();
  v31 = 6;
  v15[51] = sub_1D1E68C7C();
  sub_1D1E669FC();
  v30 = 7;
  sub_1D1A13C58(&qword_1EC642EB8, MEMORY[0x1E6969530]);
  v22 = v25;
  sub_1D1E68CBC();
  (*(v8 + 8))(v28, v18);
  sub_1D19A376C(v22, &v15[*(v12 + 44)]);
  sub_1D1A1365C(v15, v26);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_1D1A136C0(v15);
}

uint64_t sub_1D1A127AC()
{
  sub_1D1E6920C();
  MatterTileMetadata.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1A127F0()
{
  sub_1D1E6920C();
  MatterTileMetadata.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t MatterTileMetadata.init(device:endpointId:)@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = &v36 - v8;
  ObjectType = swift_getObjectType();
  LOBYTE(v47) = 6;
  v10 = *(a1 + 64);
  v10(v49, &v47, a2 & 0x1FFFF, ObjectType, a1);
  if (!v50)
  {
    sub_1D1741A30(v49, &qword_1EC649700, &qword_1D1E6E910);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v12 = 2;
    goto LABEL_11;
  }

  v11 = sub_1D1E68C2C();

  if (v11 == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (!v11)
  {
    v12 = 0;
  }

LABEL_11:
  v45 = v12;
  LOBYTE(v47) = 0;
  v10(v49, &v47, a2 & 0x1FFFF, ObjectType, a1);
  if (v50)
  {
    v13 = swift_dynamicCast();
    if (v13)
    {
      v14 = v47;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v48;
    }

    else
    {
      v15 = 0;
    }

    v43 = v15;
    v44 = v14;
  }

  else
  {
    sub_1D1741A30(v49, &qword_1EC649700, &qword_1D1E6E910);
    v43 = 0;
    v44 = 0;
  }

  LOBYTE(v47) = 2;
  v10(v49, &v47, a2 & 0x1FFFF, ObjectType, a1);
  if (v50)
  {
    v16 = swift_dynamicCast();
    if (v16)
    {
      v17 = v47;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = v48;
    }

    else
    {
      v18 = 0;
    }

    v41 = v18;
    v42 = v17;
  }

  else
  {
    sub_1D1741A30(v49, &qword_1EC649700, &qword_1D1E6E910);
    v41 = 0;
    v42 = 0;
  }

  LOBYTE(v47) = 7;
  v10(v49, &v47, a2 & 0x1FFFF, ObjectType, a1);
  if (v50)
  {
    v19 = swift_dynamicCast();
    if (v19)
    {
      v20 = v47;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v48;
    }

    else
    {
      v21 = 0;
    }

    v39 = v21;
    v40 = v20;
  }

  else
  {
    sub_1D1741A30(v49, &qword_1EC649700, &qword_1D1E6E910);
    v39 = 0;
    v40 = 0;
  }

  LOBYTE(v47) = 3;
  v10(v49, &v47, a2 & 0x1FFFF, ObjectType, a1);
  if (v50)
  {
    v22 = swift_dynamicCast();
    v23 = v47;
    if (!v22)
    {
      v23 = 2;
    }
  }

  else
  {
    sub_1D1741A30(v49, &qword_1EC649700, &qword_1D1E6E910);
    v23 = 2;
  }

  v38 = v23;
  LOBYTE(v47) = 4;
  v10(v49, &v47, a2 & 0x1FFFF, ObjectType, a1);
  if (v50)
  {
    v24 = swift_dynamicCast();
    v25 = v47;
    if (!v24)
    {
      v25 = 2;
    }
  }

  else
  {
    sub_1D1741A30(v49, &qword_1EC649700, &qword_1D1E6E910);
    v25 = 2;
  }

  v37 = v25;
  LOBYTE(v47) = 8;
  v10(v49, &v47, a2 & 0x1FFFF, ObjectType, a1);
  if (v50)
  {
    if (swift_dynamicCast())
    {
      v26 = v47;
    }

    else
    {
      v26 = 2;
    }
  }

  else
  {
    sub_1D1741A30(v49, &qword_1EC649700, &qword_1D1E6E910);
    v26 = 2;
  }

  LOBYTE(v47) = 9;
  v10(v49, &v47, a2 & 0x1FFFF, ObjectType, a1);
  swift_unknownObjectRelease();
  if (v50)
  {
    v27 = sub_1D1E669FC();
    v28 = v46;
    v29 = swift_dynamicCast();
    (*(*(v27 - 8) + 56))(v28, v29 ^ 1u, 1, v27);
  }

  else
  {
    sub_1D1741A30(v49, &qword_1EC649700, &qword_1D1E6E910);
    v30 = sub_1D1E669FC();
    v28 = v46;
    (*(*(v30 - 8) + 56))(v46, 1, 1, v30);
  }

  v31 = v43;
  *a3 = v44;
  *(a3 + 8) = v31;
  v32 = v41;
  *(a3 + 16) = v42;
  *(a3 + 24) = v32;
  v33 = v39;
  *(a3 + 32) = v40;
  *(a3 + 40) = v33;
  *(a3 + 48) = v45;
  LOBYTE(v33) = v37;
  *(a3 + 49) = v38;
  *(a3 + 50) = v33;
  *(a3 + 51) = v26;
  v34 = type metadata accessor for MatterTileMetadata();
  return sub_1D19A376C(v28, a3 + *(v34 + 44));
}

double MatterTileMetadata.init(accessory:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D1A11868();
  if (v4 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4 & 1;
  }

  v6 = HMAccessory.isFavorite.getter() & 1;
  v7 = HMAccessory.shouldShowInDashboard.getter() & 1;
  v8 = HMAccessory.contributesToHomeStatus.getter() & 1;
  v9 = type metadata accessor for MatterTileMetadata();
  HMAccessory.dateAdded.getter(a2 + *(v9 + 44));

  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 48) = v5;
  *(a2 + 49) = v6;
  *(a2 + 50) = v7;
  *(a2 + 51) = v8;
  return result;
}

double sub_1D1A12EBC()
{
  v0 = type metadata accessor for MatterTileMetadata();
  __swift_allocate_value_buffer(v0, qword_1EC648EE8);
  v1 = __swift_project_value_buffer(v0, qword_1EC648EE8);
  v2 = *(v0 + 44);
  v3 = sub_1D1E669FC();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  result = 0.0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *v1 = 0u;
  *(v1 + 48) = 33686018;
  return result;
}

uint64_t static MatterTileMetadata.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC642290 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MatterTileMetadata();
  v3 = __swift_project_value_buffer(v2, qword_1EC648EE8);

  return sub_1D1A1365C(v3, a1);
}

BOOL _s13HomeDataModel18MatterTileMetadataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v54 - v16;
  v18 = a1[1];
  v19 = *(a2 + 8);
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    if (*a1 != *a2 || v18 != v19)
    {
      v20 = v15;
      v21 = *a1;
      v22 = sub_1D1E6904C();
      v15 = v20;
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  v23 = a1[3];
  v24 = *(a2 + 24);
  if (v23)
  {
    if (!v24)
    {
      return 0;
    }

    if (a1[2] != *(a2 + 16) || v23 != v24)
    {
      v25 = v15;
      v26 = a1[2];
      v27 = sub_1D1E6904C();
      v15 = v25;
      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  v28 = a1[5];
  v29 = *(a2 + 40);
  if (v28)
  {
    if (!v29)
    {
      return 0;
    }

    if (a1[4] != *(a2 + 32) || v28 != v29)
    {
      v30 = v15;
      v31 = a1[4];
      v32 = sub_1D1E6904C();
      v15 = v30;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v29)
  {
    return 0;
  }

  v33 = *(a1 + 48);
  v34 = *(a2 + 48);
  if (v33 == 2)
  {
    if (v34 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v34 == 2)
    {
      return 0;
    }

    v55 = v15;
    if (v33)
    {
      v35 = 0xD000000000000019;
    }

    else
    {
      v35 = 0xD000000000000018;
    }

    if (v33)
    {
      v36 = "HFTileResizableSizeSmall";
    }

    else
    {
      v36 = "40-A849-215882E2F008";
    }

    if (v34)
    {
      v37 = 0xD000000000000019;
    }

    else
    {
      v37 = 0xD000000000000018;
    }

    if (v34)
    {
      v38 = "HFTileResizableSizeSmall";
    }

    else
    {
      v38 = "40-A849-215882E2F008";
    }

    if (v35 == v37 && (v36 | 0x8000000000000000) == (v38 | 0x8000000000000000))
    {

      v15 = v55;
    }

    else
    {
      v39 = sub_1D1E6904C();

      v15 = v55;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v40 = *(a1 + 49);
  v41 = *(a2 + 49);
  if (v40 == 2)
  {
    if (v41 != 2)
    {
      return 0;
    }
  }

  else
  {
    v42 = 0;
    if (v41 == 2 || ((v41 ^ v40) & 1) != 0)
    {
      return v42;
    }
  }

  v43 = *(a1 + 50);
  v44 = *(a2 + 50);
  if (v43 == 2)
  {
    if (v44 != 2)
    {
      return 0;
    }
  }

  else
  {
    v42 = 0;
    if (v44 == 2 || ((v44 ^ v43) & 1) != 0)
    {
      return v42;
    }
  }

  v45 = *(a1 + 51);
  v46 = *(a2 + 51);
  if (v45 == 2)
  {
    if (v46 != 2)
    {
      return 0;
    }

    goto LABEL_57;
  }

  v42 = 0;
  if (v46 != 2 && ((v46 ^ v45) & 1) == 0)
  {
LABEL_57:
    v47 = v15;
    v48 = *(type metadata accessor for MatterTileMetadata() + 44);
    v49 = *(v47 + 48);
    sub_1D174A548(a1 + v48, v17);
    sub_1D174A548(a2 + v48, &v17[v49]);
    v50 = *(v5 + 48);
    if (v50(v17, 1, v4) == 1)
    {
      if (v50(&v17[v49], 1, v4) == 1)
      {
        sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
        return 1;
      }

      goto LABEL_62;
    }

    sub_1D174A548(v17, v12);
    if (v50(&v17[v49], 1, v4) == 1)
    {
      (*(v5 + 8))(v12, v4);
LABEL_62:
      sub_1D1741A30(v17, &qword_1EC642AC0, &qword_1D1E6E810);
      return 0;
    }

    (*(v5 + 32))(v8, &v17[v49], v4);
    sub_1D1A13C58(&qword_1EC642AC8, MEMORY[0x1E6969530]);
    v52 = sub_1D1E6775C();
    v53 = *(v5 + 8);
    v53(v8, v4);
    v53(v12, v4);
    sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
    return (v52 & 1) != 0;
  }

  return v42;
}

uint64_t type metadata accessor for MatterTileMetadata()
{
  result = qword_1EE07D648;
  if (!qword_1EE07D648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D1A13560()
{
  result = qword_1EC648F08;
  if (!qword_1EC648F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F08);
  }

  return result;
}

unint64_t sub_1D1A135B4()
{
  result = qword_1EC648F10;
  if (!qword_1EC648F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F10);
  }

  return result;
}

unint64_t sub_1D1A13608()
{
  result = qword_1EC648F20;
  if (!qword_1EC648F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F20);
  }

  return result;
}

uint64_t sub_1D1A1365C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MatterTileMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1A136C0(uint64_t a1)
{
  v2 = type metadata accessor for MatterTileMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D1A1378C()
{
  sub_1D17BDF80(319, qword_1EE07D1F8);
  if (v0 <= 0x3F)
  {
    sub_1D17BDF80(319, &qword_1EE07B820);
    if (v1 <= 0x3F)
    {
      sub_1D17BDF80(319, &qword_1EE07D1F0);
      if (v2 <= 0x3F)
      {
        sub_1D17B77BC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1D1A13894()
{
  result = qword_1EC648F30;
  if (!qword_1EC648F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F30);
  }

  return result;
}

unint64_t sub_1D1A138EC()
{
  result = qword_1EC648F38;
  if (!qword_1EC648F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F38);
  }

  return result;
}

unint64_t sub_1D1A13944()
{
  result = qword_1EC648F40;
  if (!qword_1EC648F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F40);
  }

  return result;
}

uint64_t sub_1D1A13998(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6564496E6F6369 && a2 == 0xEE00726569666974 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xEE00657079546465 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A6953656C6974 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61446E4F776F6873 && a2 == 0xEF6472616F626873 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x496564756C636E69 && a2 == 0xEF7375746174536ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1D1A13C58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of ContextualLocalizedError.contextualize()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4BFC;

  return v9(a1, a2);
}

id sub_1D1A13DCC()
{
  result = [objc_allocWithZone(type metadata accessor for DiscardingMatterDelegate()) init];
  qword_1EC6BE138 = result;
  return result;
}

uint64_t ExpectedValuesBuilder.set(value:attribute:cluster:endpoint:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = v5;
  v11 = *a3;
  v12 = *a1;
  v29 = *(a1 + 8);
  sub_1D1741AF8(*a1, v29);
  v13 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v5;
  *v7 = 0x8000000000000000;
  v17 = sub_1D171D15C(a4);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v16;
  if (v15[3] >= v20)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_12:
    sub_1D1737DF0();
    goto LABEL_6;
  }

  sub_1D172684C(v20, isUniquelyReferenced_nonNull_native);
  v21 = sub_1D171D15C(a4);
  if ((v6 & 1) != (v22 & 1))
  {
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v17 = v21;
LABEL_6:
  v23 = *v7;

  *v7 = v15;
  if ((v6 & 1) == 0)
  {
    v24 = sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC(v17, a4, v24, v15);
  }

  v25 = v15[7];
  v26 = *(v25 + 8 * v17);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v25 + 8 * v17);
  *(v25 + 8 * v17) = 0x8000000000000000;
  sub_1D1753B88(v12, v29, a2 | (v11 << 32), v27);
  *(v25 + 8 * v17) = v30;
  *a5 = *v7;
}

void *ExpectedValuesBuilder.rawDictionaries.getter()
{
  v2 = *v0;
  v3 = MEMORY[0x1E69E7CC0];
  sub_1D1A1456C(&v2, &v3);
  return v3;
}

uint64_t ExpectedValuesBuilder.init(command:in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = MEMORY[0x1E69E7CC8];
  ExpectedValuesBuilder.addValues(from:in:)(a1, a2, &v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ExpectedValuesBuilder.addValues(from:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 56))(v7, v8);
  if (v9)
  {
    v10 = v9;
    v63 = a3;
    v11 = 0;
    v12 = v9 + 64;
    v13 = 1 << *(v9 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v9 + 64);
    v16 = (v13 + 63) >> 6;
    v64 = v16;
    v65 = v9;
    v66 = v9 + 64;
    while (v15)
    {
LABEL_12:
      v24 = __clz(__rbit64(v15)) | (v11 << 6);
      v25 = (*(v10 + 48) + 8 * v24);
      v69 = *(v25 + 4);
      v70 = *v25;
      v26 = *(v10 + 56) + 16 * v24;
      v27 = *v26;
      v28 = *(v26 + 8);
      sub_1D1741AF8(*v26, v28);
      v68 = v27;
      v67 = v28;
      sub_1D1741AF8(v27, v28);
      v29 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *v4;
      v71 = *v4;
      *v4 = 0x8000000000000000;
      v33 = sub_1D171D15C(a2);
      v34 = v31[2];
      v35 = (v32 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        goto LABEL_35;
      }

      v37 = v32;
      if (v31[3] >= v36)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D1737DF0();
          v31 = v71;
        }
      }

      else
      {
        sub_1D172684C(v36, isUniquelyReferenced_nonNull_native);
        v31 = v71;
        v38 = sub_1D171D15C(a2);
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_40;
        }

        v33 = v38;
      }

      v40 = *v4;

      *v4 = v31;
      if ((v37 & 1) == 0)
      {
        v31[(v33 >> 6) + 8] |= 1 << v33;
        *(v31[6] + 2 * v33) = a2;
        *(v31[7] + 8 * v33) = MEMORY[0x1E69E7CC8];
        v41 = v31[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_37;
        }

        v31[2] = v43;
      }

      v44 = a2;
      v45 = v4;
      v46 = v31[7];
      v47 = *(v46 + 8 * v33);
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v49 = *(v46 + 8 * v33);
      *(v46 + 8 * v33) = 0x8000000000000000;
      v50 = sub_1D171D1A4(v70 | (v69 << 32));
      v52 = v49[2];
      v53 = (v51 & 1) == 0;
      v42 = __OFADD__(v52, v53);
      v54 = v52 + v53;
      if (v42)
      {
        goto LABEL_36;
      }

      v55 = v51;
      if (v49[3] >= v54)
      {
        if ((v48 & 1) == 0)
        {
          v61 = v50;
          sub_1D1737C6C();
          v50 = v61;
        }
      }

      else
      {
        sub_1D1726570(v54, v48);
        v50 = sub_1D171D1A4(v70 | (v69 << 32));
        if ((v55 & 1) != (v56 & 1))
        {
          goto LABEL_39;
        }
      }

      v4 = v45;
      a2 = v44;
      if (v55)
      {
        v17 = v49[7] + 16 * v50;
        v18 = *v17;
        v19 = v68;
        *v17 = v68;
        v20 = *(v17 + 8);
        v21 = v67;
        *(v17 + 8) = v67;
        sub_1D1757AE8(v18, v20);
        v12 = v66;
      }

      else
      {
        v49[(v50 >> 6) + 8] |= 1 << v50;
        v57 = v49[6] + 8 * v50;
        *v57 = v70;
        *(v57 + 4) = v69;
        v58 = v49[7] + 16 * v50;
        v19 = v68;
        *v58 = v68;
        v21 = v67;
        *(v58 + 8) = v67;
        v59 = v49[2];
        v42 = __OFADD__(v59, 1);
        v60 = v59 + 1;
        v12 = v66;
        if (v42)
        {
          goto LABEL_38;
        }

        v49[2] = v60;
      }

      v15 &= v15 - 1;
      v22 = *(v46 + 8 * v33);
      *(v46 + 8 * v33) = v49;

      sub_1D1757AE8(v19, v21);
      v16 = v64;
      v10 = v65;
    }

    while (1)
    {
      v23 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v23 >= v16)
      {

        a3 = v63;
        goto LABEL_31;
      }

      v15 = *(v12 + 8 * v23);
      ++v11;
      if (v15)
      {
        v11 = v23;
        goto LABEL_12;
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
LABEL_39:
    sub_1D1E690FC();
    __break(1u);
LABEL_40:
    result = sub_1D1E690FC();
    __break(1u);
  }

  else
  {
LABEL_31:
    *a3 = *v4;
  }

  return result;
}

void ExpectedValuesBuilder.isEmpty.getter()
{
  v1 = 0;
  v2 = 1 << *(*v0 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(*v0 + 64);
  v5 = (v2 + 63) >> 6;
  if (v4)
  {
    while (1)
    {
      v6 = v1;
LABEL_9:
      v7 = *(*(*v0 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v4)))));
      v8 = 1 << *(v7 + 32);
      v9 = v8 < 64 ? ~(-1 << v8) : -1;
      if ((v9 & *(v7 + 64)) != 0)
      {
        break;
      }

      v4 &= v4 - 1;
      v10 = ((v8 + 63) >> 6) - 1;
      v11 = (v7 + 72);
      while (v10)
      {
        v12 = *v11++;
        --v10;
        if (v12)
        {
          return;
        }
      }

      v1 = v6;
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v6 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v6 >= v5)
      {
        return;
      }

      v4 = *(*v0 + 64 + 8 * v6);
      ++v1;
      if (v4)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D1A1456C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v26 = v2;

  v9 = 0;
LABEL_6:
  if (v6)
  {
    v10 = v9;
LABEL_11:
    v11 = __clz(__rbit64(v6)) | (v10 << 6);
    v12 = *(*(v26 + 48) + 2 * v11);
    v13 = *(*(v26 + 56) + 8 * v11);
    v6 &= v6 - 1;
    v14 = 1 << *(v13 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v13 + 64);
    v17 = (v14 + 63) >> 6;

    v18 = 0;
    while (v16)
    {
      v19 = v18;
LABEL_21:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v21 = v20 | (v19 << 6);
      v22 = *(v13 + 48) + 8 * v21;
      v23 = *v22;
      LOBYTE(v22) = *(v22 + 4);
      v24 = *(v13 + 56) + 16 * v21;
      v25 = *v24;
      LOBYTE(v24) = *(v24 + 8);
      v30 = v23;
      v31 = v22;
      v28 = v25;
      v29 = v24;
      result = sub_1D1A1526C(v12, &v30, &v28, a2);
      if ((result & 1) == 0)
      {

        goto LABEL_23;
      }
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        v9 = v10;
        goto LABEL_6;
      }

      v16 = *(v13 + 64 + 8 * v19);
      ++v18;
      if (v16)
      {
        v18 = v19;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
LABEL_23:
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1D1A14738(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v36 = v2;

  v8 = 0;
  v34 = v7;
  v35 = v3;
LABEL_6:
  if (v6)
  {
    v9 = v8;
LABEL_11:
    v10 = __clz(__rbit64(v6)) | (v9 << 6);
    v38 = *(*(v36 + 48) + 2 * v10);
    v11 = *(*(v36 + 56) + 8 * v10);
    v6 &= v6 - 1;
    v12 = v11 + 64;
    v13 = 1 << *(v11 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v11 + 64);
    v16 = (v13 + 63) >> 6;
    v39 = v11;

    for (i = 0; v15; *a2 = v42)
    {
      v18 = i;
LABEL_20:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(v39 + 48) + 8 * v20);
      v22 = *v21;
      v23 = *(v21 + 4);
      v24 = *(v39 + 56) + 16 * v20;
      v41 = *v24;
      v40 = *(v24 + 8);
      v25 = sub_1D1E692AC();
      v26 = dword_1D1E91A0C[v23];
      v27 = sub_1D1E692CC();
      v28 = sub_1D1E692CC();
      v29 = [objc_opt_self() attributePathWithEndpointID:v25 clusterID:v27 attributeID:v28];

      v30 = MatterAttributeDataBuilder.dictionary.getter();
      v31 = sub_1D18A80B0(v30);

      v32 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = *a2;
      *a2 = 0x8000000000000000;
      sub_1D1755910(v31, v29, isUniquelyReferenced_nonNull_native);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {

        v8 = v9;
        v7 = v34;
        v3 = v35;
        goto LABEL_6;
      }

      v15 = *(v12 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
}

uint64_t ExpectedValuesBuilder.enumerate(_:)(uint64_t (*a1)(void, int *, uint64_t *))
{
  v2 = *v1 + 64;
  v3 = 1 << *(*v1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(*v1 + 64);
  v6 = (v3 + 63) >> 6;
  v29 = *v1;

  v8 = 0;
  v27 = v6;
  v28 = v2;
LABEL_6:
  if (v5)
  {
    v9 = v8;
LABEL_11:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v31 = *(*(v29 + 48) + 2 * v10);
    v11 = *(*(v29 + 56) + 8 * v10);
    v5 &= v5 - 1;
    v12 = v11 + 64;
    v13 = 1 << *(v11 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v11 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v11;

    v17 = 0;
    while (v15)
    {
      v18 = v17;
LABEL_21:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = v19 | (v18 << 6);
      v21 = *(v32 + 48) + 8 * v20;
      v22 = *v21;
      LOBYTE(v21) = *(v21 + 4);
      v23 = *(v32 + 56) + 16 * v20;
      v24 = *v23;
      v25 = *(v23 + 8);
      v35 = v22;
      v36 = v21;
      v33 = v24;
      v34 = v25;
      sub_1D1741AF8(v24, v25);
      v26 = a1(v31, &v35, &v33);
      result = sub_1D1757AE8(v24, v25);
      if ((v26 & 1) == 0)
      {

        goto LABEL_23;
      }
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {

        v8 = v9;
        v6 = v27;
        v2 = v28;
        goto LABEL_6;
      }

      v15 = *(v12 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
LABEL_23:
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t ExpectedValuesBuilder.intersects(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v2 + 64;
  v5 = 1 << *(v2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v2 + 64);
  v8 = (v5 + 63) >> 6;
  v32 = v2;

  v10 = 0;
  v11 = 0;
  v30 = v8;
  v31 = v4;
LABEL_6:
  if (v7)
  {
    v12 = v10;
LABEL_11:
    v13 = 0;
    v14 = __clz(__rbit64(v7)) | (v12 << 6);
    v35 = *(*(v32 + 48) + 2 * v14);
    v15 = *(*(v32 + 56) + 8 * v14);
    v7 &= v7 - 1;
    v17 = v15 + 64;
    v16 = *(v15 + 64);
    v34 = v15;
    v18 = 1 << *(v15 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & v16;
    v21 = (v18 + 63) >> 6;
    do
    {
      v22 = v11;
      if (v20)
      {
        v33 = v11;
        if (!*(v3 + 16))
        {
          break;
        }
      }

      else
      {
        do
        {
          v23 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
            goto LABEL_29;
          }

          if (v23 >= v21)
          {
            v10 = v12;
            v11 = v22;
            v8 = v30;
            v4 = v31;
            goto LABEL_6;
          }

          v20 = *(v17 + 8 * v23);
          ++v13;
        }

        while (!v20);
        v33 = v22;
        v13 = v23;
        if (!*(v3 + 16))
        {
          break;
        }
      }

      v24 = (*(v34 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v20)))));
      v25 = *v24;
      v26 = *(v24 + 4);
      v27 = sub_1D171D15C(v35);
      if ((v28 & 1) == 0)
      {
        break;
      }

      if (!*(*(*(v3 + 56) + 8 * v27) + 16))
      {
        break;
      }

      v20 &= v20 - 1;
      result = sub_1D171D1A4(v25 | (v26 << 32));
      v11 = 1;
    }

    while ((v29 & 1) != 0);
LABEL_27:

    return v33 & 1;
  }

  else
  {
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        v33 = v11;
        goto LABEL_27;
      }

      v7 = *(v4 + 8 * v12);
      ++v10;
      if (v7)
      {
        goto LABEL_11;
      }
    }

LABEL_29:
    __break(1u);
  }

  return result;
}

unint64_t ExpectedValuesBuilder.value(for:cluster:endpoint:)@<X0>(unint64_t result@<X0>, unsigned __int8 *a2@<X1>, unsigned __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  if (*(v6 + 16) && (v7 = result, v8 = *a2, result = sub_1D171D15C(a3), (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * result);

    return sub_1D1914BC0(v7 | (v8 << 32), v10, a4);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = -1;
  }

  return result;
}

uint64_t ExpectedValuesBuilder.set(value:attribute:clusterPath:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = a3[3];
  v11 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v10);
  (*(v11 + 24))(&v35, v10, v11);
  v12 = v35;
  v13 = a3[3];
  v14 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v13);
  v15 = (*(v14 + 16))(v13, v14);
  v16 = v8;
  sub_1D1741AF8(v8, v9);
  v17 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v4;
  *v5 = 0x8000000000000000;
  v21 = sub_1D171D15C(v15);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
    goto LABEL_12;
  }

  LOBYTE(v14) = v20;
  if (v19[3] >= v24)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_12:
    sub_1D1737DF0();
    goto LABEL_6;
  }

  sub_1D172684C(v24, isUniquelyReferenced_nonNull_native);
  v25 = sub_1D171D15C(v15);
  if ((v14 & 1) != (v26 & 1))
  {
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v21 = v25;
LABEL_6:
  v27 = *v5;

  *v5 = v19;
  if ((v14 & 1) == 0)
  {
    v28 = sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC(v21, v15, v28, v19);
  }

  v29 = v19[7];
  v30 = *(v29 + 8 * v21);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v29 + 8 * v21);
  *(v29 + 8 * v21) = 0x8000000000000000;
  sub_1D1753B88(v16, v9, a2 | (v12 << 32), v31);
  *(v29 + 8 * v21) = v34;
  *a4 = *v5;
}

uint64_t ExpectedValuesBuilder.set(value:clusterAttribute:endpoint:)@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = v4;
  v9 = *a2;
  v10 = *(a2 + 4);
  v11 = *a1;
  v28 = *(a1 + 8);
  sub_1D1741AF8(*a1, v28);
  v12 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v4;
  *v6 = 0x8000000000000000;
  v16 = sub_1D171D15C(a3);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v15;
  if (v14[3] >= v19)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_12:
    sub_1D1737DF0();
    goto LABEL_6;
  }

  sub_1D172684C(v19, isUniquelyReferenced_nonNull_native);
  v20 = sub_1D171D15C(a3);
  if ((v5 & 1) != (v21 & 1))
  {
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v16 = v20;
LABEL_6:
  v22 = *v6;

  *v6 = v14;
  if ((v5 & 1) == 0)
  {
    v23 = sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC(v16, a3, v23, v14);
  }

  v24 = v14[7];
  v25 = *(v24 + 8 * v16);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v24 + 8 * v16);
  *(v24 + 8 * v16) = 0x8000000000000000;
  sub_1D1753B88(v11, v28, v9 | (v10 << 32), v26);
  *(v24 + 8 * v16) = v29;
  *a4 = *v6;
}

uint64_t ExpectedValuesBuilder.merge(_:uniquingBlock:)(uint64_t *a1, void (*a2)(void **__return_ptr, uint64_t *, uint64_t *))
{
  v3 = v2;
  v5 = *a1;
  v9 = *v2;
  ExpectedValuesBuilder.isEmpty.getter();
  if (v6)
  {
    v7 = *v2;

    *v3 = v5;
  }

  else
  {
    v9 = v5;
    return sub_1D1A155D0(&v9, v2, a2);
  }

  return result;
}

uint64_t sub_1D1A1526C(uint64_t a1, unsigned int *a2, uint64_t *a3, void **a4)
{
  v5 = *a2;
  v6 = *(a2 + 4);
  v7 = *a3;
  v8 = *(a3 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  v10 = *MEMORY[0x1E696F500];
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v11;
  v12 = sub_1D1E692AC();
  v13 = dword_1D1E91A0C[v6];
  v14 = sub_1D1E692CC();
  v15 = sub_1D1E692CC();
  v16 = [objc_opt_self() attributePathWithEndpointID:v12 clusterID:v14 attributeID:v15];

  *(inited + 72) = sub_1D1741B10(0, &qword_1EC650120, 0x1E696F570);
  *(inited + 48) = v16;
  v17 = *MEMORY[0x1E696F520];
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v18;
  MatterAttributeDataBuilder.dictionary.getter();
  sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
  v19 = sub_1D1E675DC();

  *(inited + 120) = sub_1D1741B10(0, &qword_1EC648F50, 0x1E695DF20);
  *(inited + 96) = v19;
  v20 = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  v21 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1D177D340(0, v21[2] + 1, 1, v21);
    *a4 = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1D177D340((v23 > 1), v24 + 1, 1, v21);
    *a4 = v21;
  }

  v21[2] = v24 + 1;
  v21[v24 + 4] = v20;
  return 1;
}

uint64_t ExpectedValuesBuilder.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1856E34(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1A15530()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1856E34(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1A15580()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1856E34(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1A155D0(uint64_t *a1, uint64_t *a2, void (*a3)(void **__return_ptr, uint64_t *, uint64_t *))
{
  v4 = *a1;
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v84 = v4;

  v10 = 0;
  v82 = v9;
  v83 = v5;
LABEL_6:
  if (v8)
  {
    v11 = v10;
  }

  else
  {
    do
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_55;
      }

      if (v11 >= v9)
      {
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
    }

    while (!v8);
  }

  v85 = v11;
  v12 = __clz(__rbit64(v8)) | (v11 << 6);
  v13 = *(*(v84 + 48) + 2 * v12);
  v14 = *(*(v84 + 56) + 8 * v12);
  v86 = (v8 - 1) & v8;
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v89 = *(*(v84 + 56) + 8 * v12);

  v20 = 0;
  v87 = v19;
  v88 = v15;
  while (v18)
  {
LABEL_22:
    v27 = __clz(__rbit64(v18)) | (v20 << 6);
    v28 = (*(v89 + 48) + 8 * v27);
    v94 = *(v28 + 4);
    v95 = *v28;
    v29 = *(v89 + 56) + 16 * v27;
    v30 = *v29;
    v31 = *(v29 + 8);
    v32 = *a2;
    v93 = *v29;
    v90 = v31;
    if (!*(*a2 + 16) || (v33 = sub_1D171D15C(v13), (v34 & 1) == 0) || (v35 = *(*(v32 + 56) + 8 * v33), !*(v35 + 16)) || (v36 = sub_1D171D1A4(v95 | (v94 << 32)), (v37 & 1) == 0))
    {
      sub_1D1741AF8(v30, v31);
      goto LABEL_29;
    }

    v38 = *(v35 + 56) + 16 * v36;
    v39 = v31;
    v41 = *(v38 + 8);
    v100 = *v38;
    v40 = v100;
    v101 = v41;
    v98 = v30;
    v99 = v39;
    sub_1D1741AF8(v30, v39);
    sub_1D1741AF8(v40, v41);
    if (_s13HomeDataModel015MatterAttributeB7BuilderO2eeoiySbAC_ACtFZ_0(&v100, &v98))
    {
      sub_1D1757AE8(v40, v41);
      v31 = v39;
LABEL_29:
      sub_1D1741AF8(v30, v31);
      v42 = v31;
      v43 = v30;
      goto LABEL_30;
    }

    v98 = v40;
    v99 = v41;
    v96 = v30;
    v97 = v39;
    a3(&v100, &v98, &v96);
    sub_1D1757AE8(v40, v41);
    v43 = v100;
    v42 = v101;
LABEL_30:
    v91 = v43;
    v92 = v42;
    sub_1D1741AF8(v43, v42);
    v44 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100 = *a2;
    v46 = v100;
    *a2 = 0x8000000000000000;
    v48 = sub_1D171D15C(v13);
    v49 = v46[2];
    v50 = (v47 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      goto LABEL_56;
    }

    v52 = v47;
    if (v46[3] >= v51)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D1737DF0();
        v46 = v100;
      }
    }

    else
    {
      sub_1D172684C(v51, isUniquelyReferenced_nonNull_native);
      v46 = v100;
      v53 = sub_1D171D15C(v13);
      if ((v52 & 1) != (v54 & 1))
      {
        goto LABEL_61;
      }

      v48 = v53;
    }

    v55 = *a2;
    *a2 = v46;

    v56 = *a2;
    if ((v52 & 1) == 0)
    {
      v56[(v48 >> 6) + 8] |= 1 << v48;
      *(v56[6] + 2 * v48) = v13;
      *(v56[7] + 8 * v48) = MEMORY[0x1E69E7CC8];
      v57 = v56[2];
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_58;
      }

      v56[2] = v59;
    }

    v60 = v13;
    v61 = a2;
    v62 = v56[7];
    v63 = *(v62 + 8 * v48);
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v100 = *(v62 + 8 * v48);
    v65 = v100;
    *(v62 + 8 * v48) = 0x8000000000000000;
    v66 = sub_1D171D1A4(v95 | (v94 << 32));
    v68 = v65[2];
    v69 = (v67 & 1) == 0;
    v58 = __OFADD__(v68, v69);
    v70 = v68 + v69;
    if (v58)
    {
      goto LABEL_57;
    }

    v71 = v67;
    if (v65[3] >= v70)
    {
      v73 = v93;
      if (v64)
      {
        v74 = v100;
        if (v67)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v79 = v66;
        sub_1D1737C6C();
        v66 = v79;
        v73 = v93;
        v74 = v100;
        if (v71)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_1D1726570(v70, v64);
      v66 = sub_1D171D1A4(v95 | (v94 << 32));
      if ((v71 & 1) != (v72 & 1))
      {
        goto LABEL_60;
      }

      v73 = v93;
      v74 = v100;
      if (v71)
      {
LABEL_15:
        v21 = v74[7] + 16 * v66;
        v22 = *v21;
        *v21 = v91;
        v23 = *(v21 + 8);
        v24 = v92;
        *(v21 + 8) = v92;
        sub_1D1757AE8(v22, v23);
        v25 = v91;
        goto LABEL_16;
      }
    }

    v74[(v66 >> 6) + 8] |= 1 << v66;
    v75 = v74[6] + 8 * v66;
    *v75 = v95;
    *(v75 + 4) = v94;
    v76 = v74[7] + 16 * v66;
    v25 = v91;
    *v76 = v91;
    v24 = v92;
    *(v76 + 8) = v92;
    v77 = v74[2];
    v58 = __OFADD__(v77, 1);
    v78 = v77 + 1;
    if (v58)
    {
      goto LABEL_59;
    }

    v74[2] = v78;
LABEL_16:
    v18 &= v18 - 1;
    *(v62 + 8 * v48) = v74;
    sub_1D1757AE8(v25, v24);
    sub_1D1757AE8(v73, v90);
    a2 = v61;
    v13 = v60;
    v19 = v87;
    v15 = v88;
  }

  while (1)
  {
    v26 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v26 >= v19)
    {

      v10 = v85;
      v8 = v86;
      v9 = v82;
      v5 = v83;
      goto LABEL_6;
    }

    v18 = *(v15 + 8 * v26);
    ++v20;
    if (v18)
    {
      v20 = v26;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  sub_1D1E690FC();
  __break(1u);
LABEL_61:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

unint64_t sub_1D1A15B20()
{
  result = qword_1EC648F48;
  if (!qword_1EC648F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F48);
  }

  return result;
}

uint64_t sub_1D1A15B88(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for MatterCommandError();
  sub_1D1741C08(v2 + *(v9 + 32), v8, &qword_1EC644780, &qword_1D1E91AA0);
  v10 = type metadata accessor for StaticEndpoint();
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    sub_1D1741A30(v8, &qword_1EC644780, &qword_1D1E91AA0);
    v18 = a1;
    v19 = a2;

    MEMORY[0x1D3890F70](0x656D614E6F4E5FLL, 0xE700000000000000);
    v11 = static String.hfLocalized(_:)(v18, v19);
  }

  else
  {
    v12 = &v8[*(v10 + 24)];
    v14 = *v12;
    v13 = *(v12 + 1);

    sub_1D1A1EBC8(v8, type metadata accessor for StaticEndpoint);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D1E739C0;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1D1757D20();
    *(v15 + 32) = v14;
    *(v15 + 40) = v13;
    static String.hfLocalized(_:)(a1, a2);
    v11 = sub_1D1E6784C();
  }

  v16 = v11;

  return v16;
}

uint64_t MatterCommandError.statusText.getter()
{
  v1 = (v0 + *(type metadata accessor for MatterCommandError() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MatterCommandError.endpoint.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MatterCommandError() + 32);

  return sub_1D1A16064(a1, v3);
}

uint64_t _s13HomeDataModel18MatterCommandErrorV9errorCode11clusterPath7command10statusTextA2C0fH0O_AA07ClusterJ0VSo16MTRCommandIDTypeVSSSgtcfC_0@<X0>(__int16 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v11 = *a1;
  v12 = type metadata accessor for MatterCommandError();
  v13 = v12[8];
  v14 = type metadata accessor for StaticEndpoint();
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  *a6 = v11;
  result = sub_1D1A1EB60(a2, &a6[v12[5]], type metadata accessor for ClusterPath);
  *&a6[v12[6]] = a3;
  v16 = &a6[v12[7]];
  *v16 = a4;
  *(v16 + 1) = a5;
  return result;
}

uint64_t type metadata accessor for MatterCommandError()
{
  result = qword_1EC649078;
  if (!qword_1EC649078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1A16064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1A160D8(uint64_t a1)
{
  v2 = sub_1D1A1BBCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A16114(uint64_t a1)
{
  v2 = sub_1D1A1BBCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D1A16150()
{
  v1 = 0x65646F4D6E7572;
  if (*v0 != 1)
  {
    v1 = 0x646F4D6E61656C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1D1A161B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1A1E858(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1A161DC(uint64_t a1)
{
  v2 = sub_1D1A1BB78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A16218(uint64_t a1)
{
  v2 = sub_1D1A1BB78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A16254(uint64_t a1)
{
  v2 = sub_1D1A1BD1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A16290(uint64_t a1)
{
  v2 = sub_1D1A1BD1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A162CC(uint64_t a1)
{
  v2 = sub_1D1A1BC74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A16308(uint64_t a1)
{
  v2 = sub_1D1A1BC74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MatterCommandError.ErrorCode.RVC.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648F58, &qword_1D1E91AA8);
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648F60, &qword_1D1E91AB0);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648F68, &qword_1D1E91AB8);
  v28 = *(v11 - 8);
  v12 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648F70, &qword_1D1E91AC0);
  v15 = *(v34 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v18 = &v27 - v17;
  v19 = *v2;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A1BB78();
  sub_1D1E6930C();
  v21 = (v15 + 8);
  if (v19 >> 14)
  {
    if (v19 >> 14 == 1)
    {
      v38 = 1;
      sub_1D1A1BC74();
      v22 = v34;
      sub_1D1E68DFC();
      v37 = v19 & 0x1FF;
      sub_1D1A1BCC8();
      v23 = v30;
      sub_1D1E68F1C();
      v24 = v29;
    }

    else
    {
      v40 = 2;
      sub_1D1A1BBCC();
      v10 = v31;
      v22 = v34;
      sub_1D1E68DFC();
      v39 = v19 & 0x1FF;
      sub_1D1A1BC20();
      v23 = v33;
      sub_1D1E68F1C();
      v24 = v32;
    }

    (*(v24 + 8))(v10, v23);
    return (*v21)(v18, v22);
  }

  else
  {
    v36 = 0;
    sub_1D1A1BD1C();
    v25 = v34;
    sub_1D1E68DFC();
    v35 = v19;
    sub_1D192CE98();
    sub_1D1E68F1C();
    (*(v28 + 8))(v14, v11);
    return (*v21)(v18, v25);
  }
}

uint64_t MatterCommandError.ErrorCode.RVC.hash(into:)()
{
  v1 = *v0;
  if (!(v1 >> 14))
  {
    MEMORY[0x1D3892850](0);
    if (v1 >> 8)
    {
      if (v1 >> 8 == 1)
      {
        MEMORY[0x1D3892850](1);
        return sub_1D1E6922C();
      }

      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

LABEL_20:
    MEMORY[0x1D3892850](v2);
    return sub_1D1E6922C();
  }

  if (v1 >> 14 == 1)
  {
    MEMORY[0x1D3892850](1);
    if ((v1 & 0x100) == 0)
    {
      v2 = 11;
      goto LABEL_20;
    }

    v3 = v1;
    if (v1 > 4u)
    {
      if (v1 > 7u)
      {
        if (v1 == 8)
        {
          return MEMORY[0x1D3892850](8);
        }

        else if (v1 == 9)
        {
          return MEMORY[0x1D3892850](9);
        }

        else
        {
          return MEMORY[0x1D3892850](10);
        }
      }

      else if (v1 == 5)
      {
        return MEMORY[0x1D3892850](5);
      }

      else if (v1 == 6)
      {
        return MEMORY[0x1D3892850](6);
      }

      else
      {
        return MEMORY[0x1D3892850](7);
      }
    }

    if (v1 > 1u)
    {
      if (v1 != 2)
      {
        if (v1 != 3)
        {
          return MEMORY[0x1D3892850](4);
        }

        return MEMORY[0x1D3892850](3);
      }

      return MEMORY[0x1D3892850](2);
    }
  }

  else
  {
    MEMORY[0x1D3892850](2);
    if ((v1 & 0x100) == 0)
    {
      v2 = 4;
      goto LABEL_20;
    }

    v3 = v1;
    if (v1 > 1u)
    {
      if (v1 != 2)
      {
        return MEMORY[0x1D3892850](3);
      }

      return MEMORY[0x1D3892850](2);
    }
  }

  if (v3)
  {
    return MEMORY[0x1D3892850](1);
  }

  else
  {
    return MEMORY[0x1D3892850](0);
  }
}

uint64_t MatterCommandError.ErrorCode.RVC.hashValue.getter()
{
  v2 = *v0;
  sub_1D1E6920C();
  MatterCommandError.ErrorCode.RVC.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t MatterCommandError.ErrorCode.RVC.init(from:)@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v47 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648FA8, &qword_1D1E91AC8);
  v45 = *(v41 - 8);
  v3 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v46 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648FB0, &qword_1D1E91AD0);
  v6 = *(v5 - 8);
  v43 = v5;
  v44 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648FB8, &qword_1D1E91AD8);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648FC0, &unk_1D1E91AE0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v40 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D1A1BB78();
  v21 = v48;
  sub_1D1E692FC();
  if (!v21)
  {
    v48 = v15;
    v23 = v46;
    v22 = v47;
    v24 = sub_1D1E68DDC();
    v25 = (2 * *(v24 + 16)) | 1;
    v50 = v24;
    v51 = v24 + 32;
    v52 = 0;
    v53 = v25;
    v26 = sub_1D18085C8();
    if (v26 == 3 || v52 != v53 >> 1)
    {
      v30 = sub_1D1E688EC();
      swift_allocError();
      v31 = v18;
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v33 = &type metadata for MatterCommandError.ErrorCode.RVC;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v30 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v30);
      swift_willThrow();
      (*(v48 + 8))(v31, v14);
      swift_unknownObjectRelease();
    }

    else if (v26)
    {
      if (v26 == 1)
      {
        LOBYTE(v54) = 1;
        sub_1D1A1BC74();
        v27 = v9;
        sub_1D1E68C4C();
        v28 = v48;
        sub_1D1A1BDC4();
        v29 = v43;
        sub_1D1E68D7C();
        (*(v44 + 8))(v27, v29);
        (*(v28 + 8))(v18, v14);
        swift_unknownObjectRelease();
        if (HIBYTE(v54))
        {
          v38 = 256;
        }

        else
        {
          v38 = 0;
        }

        *v22 = v38 | v54 | 0x4000;
      }

      else
      {
        LOBYTE(v54) = 2;
        sub_1D1A1BBCC();
        sub_1D1E68C4C();
        v36 = v48;
        sub_1D1A1BD70();
        v37 = v41;
        sub_1D1E68D7C();
        (*(v45 + 8))(v23, v37);
        (*(v36 + 8))(v18, v14);
        swift_unknownObjectRelease();
        if (HIBYTE(v54))
        {
          v39 = 256;
        }

        else
        {
          v39 = 0;
        }

        *v22 = v39 | v54 | 0x8000;
      }
    }

    else
    {
      LOBYTE(v54) = 0;
      sub_1D1A1BD1C();
      sub_1D1E68C4C();
      sub_1D192D278();
      sub_1D1E68D7C();
      (*(v42 + 8))(v13, v10);
      (*(v48 + 8))(v18, v14);
      swift_unknownObjectRelease();
      *v22 = v54;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_1D1A1703C()
{
  v2 = *v0;
  sub_1D1E6920C();
  MatterCommandError.ErrorCode.RVC.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1A1708C()
{
  v2 = *v0;
  sub_1D1E6920C();
  MatterCommandError.ErrorCode.RVC.hash(into:)();
  return sub_1D1E6926C();
}

unint64_t sub_1D1A1710C()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 6518386;
  }

  *v0;
  return result;
}

uint64_t sub_1D1A17144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6518386 && a2 == 0xE300000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC3270 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D1A17228(uint64_t a1)
{
  v2 = sub_1D1A1C028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A17264(uint64_t a1)
{
  v2 = sub_1D1A1C028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A172A0(uint64_t a1)
{
  v2 = sub_1D1A1C0D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A172DC(uint64_t a1)
{
  v2 = sub_1D1A1C0D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A17318(uint64_t a1)
{
  v2 = sub_1D1A1C07C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A17354(uint64_t a1)
{
  v2 = sub_1D1A1C07C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MatterCommandError.ErrorCode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648FD8, &qword_1D1E91AF0);
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648FE0, &qword_1D1E91AF8);
  v23 = *(v6 - 8);
  v24 = v6;
  v7 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648FE8, &qword_1D1E91B00);
  v10 = *(v27 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v13 = &v21 - v12;
  v14 = *v1;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A1C028();
  sub_1D1E6930C();
  if (v14 >> 10 <= 0x3E)
  {
    v29 = 0;
    sub_1D1A1C0D0();
    v19 = v27;
    sub_1D1E68DFC();
    v28 = v14;
    sub_1D1A1C124();
    v20 = v24;
    sub_1D1E68F1C();
    (*(v23 + 8))(v9, v20);
    return (*(v10 + 8))(v13, v19);
  }

  else
  {
    v30 = 1;
    sub_1D1A1C07C();
    v16 = v22;
    v17 = v27;
    sub_1D1E68DFC();
    (*(v25 + 8))(v16, v26);
    return (*(v10 + 8))(v13, v17);
  }
}

uint64_t MatterCommandError.ErrorCode.hash(into:)()
{
  if (*v0 >> 10 > 0x3Eu)
  {
    return MEMORY[0x1D3892850](1);
  }

  MEMORY[0x1D3892850](0);
  return MatterCommandError.ErrorCode.RVC.hash(into:)();
}

uint64_t MatterCommandError.ErrorCode.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  if (v1 >> 10 <= 0x3E)
  {
    MEMORY[0x1D3892850](0);
    MatterCommandError.ErrorCode.RVC.hash(into:)();
  }

  else
  {
    MEMORY[0x1D3892850](1);
  }

  return sub_1D1E6926C();
}

uint64_t MatterCommandError.ErrorCode.init(from:)@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v37 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649010, &qword_1D1E91B08);
  v36 = *(v34 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649018, &qword_1D1E91B10);
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649020, &qword_1D1E91B18);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D1A1C028();
  v17 = v38;
  sub_1D1E692FC();
  if (!v17)
  {
    v18 = v9;
    v33 = v6;
    v38 = v11;
    v19 = v36;
    v20 = v37;
    v21 = sub_1D1E68DDC();
    v22 = (2 * *(v21 + 16)) | 1;
    v40 = v21;
    v41 = v21 + 32;
    v42 = 0;
    v43 = v22;
    v23 = sub_1D18085D0();
    if (v23 == 2 || v42 != v43 >> 1)
    {
      v25 = sub_1D1E688EC();
      swift_allocError();
      v27 = v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v27 = &type metadata for MatterCommandError.ErrorCode;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v38 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else if (v23)
    {
      LOBYTE(v44) = 1;
      sub_1D1A1C07C();
      sub_1D1E68C4C();
      v24 = v38;
      (*(v19 + 8))(v5, v34);
      (*(v24 + 8))(v14, v10);
      swift_unknownObjectRelease();
      *v20 = -1024;
    }

    else
    {
      LOBYTE(v44) = 0;
      sub_1D1A1C0D0();
      sub_1D1E68C4C();
      v30 = v38;
      sub_1D1A1C178();
      v31 = v33;
      sub_1D1E68D7C();
      (*(v35 + 8))(v18, v31);
      (*(v30 + 8))(v14, v10);
      swift_unknownObjectRelease();
      *v20 = v44;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t sub_1D1A17C68()
{
  v1 = *v0;
  sub_1D1E6920C();
  if (v1 >> 10 <= 0x3E)
  {
    MEMORY[0x1D3892850](0);
    MatterCommandError.ErrorCode.RVC.hash(into:)();
  }

  else
  {
    MEMORY[0x1D3892850](1);
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D1A17CDC()
{
  if (*v0 >> 10 > 0x3Eu)
  {
    return MEMORY[0x1D3892850](1);
  }

  MEMORY[0x1D3892850](0);
  return MatterCommandError.ErrorCode.RVC.hash(into:)();
}

uint64_t sub_1D1A17D48()
{
  v1 = *v0;
  sub_1D1E6920C();
  if (v1 >> 10 <= 0x3E)
  {
    MEMORY[0x1D3892850](0);
    MatterCommandError.ErrorCode.RVC.hash(into:)();
  }

  else
  {
    MEMORY[0x1D3892850](1);
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D1A17DF0()
{
  v1 = *v0;
  v2 = 0x646F43726F727265;
  v3 = 0x49646E616D6D6F63;
  v4 = 0x6554737574617473;
  if (v1 != 3)
  {
    v4 = 0x746E696F70646E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5072657473756C63;
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

uint64_t sub_1D1A17EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1A1E984(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1A17EC8(uint64_t a1)
{
  v2 = sub_1D1A1C7F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A17F04(uint64_t a1)
{
  v2 = sub_1D1A1C7F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MatterCommandError.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649030, &qword_1D1E91B20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A1C7F8();
  sub_1D1E6930C();
  v20 = *v3;
  v19[13] = 0;
  sub_1D1A1C84C();
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for MatterCommandError();
    v12 = v11[5];
    v19[12] = 1;
    type metadata accessor for ClusterPath(0);
    sub_1D1A1EC28(&qword_1EC646D88, type metadata accessor for ClusterPath);
    sub_1D1E68F1C();
    v13 = *(v3 + v11[6]);
    v19[11] = 2;
    sub_1D1E68F5C();
    v14 = (v3 + v11[7]);
    v15 = *v14;
    v16 = v14[1];
    v19[10] = 3;
    sub_1D1E68E0C();
    v17 = v11[8];
    v19[9] = 4;
    type metadata accessor for StaticEndpoint();
    sub_1D1A1EC28(&qword_1EC6446D8, type metadata accessor for StaticEndpoint);
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MatterCommandError.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for StaticEndpoint();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v22 - v10;
  v12 = *v1;
  if (v12 >> 10 <= 0x3E)
  {
    MEMORY[0x1D3892850](0);
    v22[7] = v12;
    MatterCommandError.ErrorCode.RVC.hash(into:)();
  }

  else
  {
    MEMORY[0x1D3892850](1);
  }

  v13 = type metadata accessor for MatterCommandError();
  v14 = v1 + v13[5];
  sub_1D1E66A7C();
  sub_1D1A1EC28(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v15 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*&v14[*(v15 + 20)]);
  v16 = *&v14[*(v15 + 24)];
  sub_1D1E6923C();
  v17 = dword_1D1E927BC[v14[*(type metadata accessor for ClusterPath(0) + 20)]];
  sub_1D1E6924C();
  v18 = *(v1 + v13[6]);
  sub_1D1E6924C();
  v19 = (v1 + v13[7]);
  if (v19[1])
  {
    v20 = *v19;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  sub_1D1741C08(v1 + v13[8], v11, &qword_1EC644780, &qword_1D1E91AA0);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    return sub_1D1E6922C();
  }

  sub_1D1A1EB60(v11, v7, type metadata accessor for StaticEndpoint);
  sub_1D1E6922C();
  StaticEndpoint.hash(into:)(a1);
  return sub_1D1A1EBC8(v7, type metadata accessor for StaticEndpoint);
}

uint64_t MatterCommandError.hashValue.getter()
{
  v1 = type metadata accessor for StaticEndpoint();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v20 - v8;
  sub_1D1E6920C();
  v10 = *v0;
  if (v10 >> 10 <= 0x3E)
  {
    MEMORY[0x1D3892850](0);
    v20[3] = v10;
    MatterCommandError.ErrorCode.RVC.hash(into:)();
  }

  else
  {
    MEMORY[0x1D3892850](1);
  }

  v11 = type metadata accessor for MatterCommandError();
  v12 = v0 + v11[5];
  sub_1D1E66A7C();
  sub_1D1A1EC28(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v13 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*&v12[*(v13 + 20)]);
  v14 = *&v12[*(v13 + 24)];
  sub_1D1E6923C();
  v15 = dword_1D1E927BC[v12[*(type metadata accessor for ClusterPath(0) + 20)]];
  sub_1D1E6924C();
  v16 = *(v0 + v11[6]);
  sub_1D1E6924C();
  v17 = (v0 + v11[7]);
  if (v17[1])
  {
    v18 = *v17;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  sub_1D1741C08(v0 + v11[8], v9, &qword_1EC644780, &qword_1D1E91AA0);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1A1EB60(v9, v5, type metadata accessor for StaticEndpoint);
    sub_1D1E6922C();
    StaticEndpoint.hash(into:)(v21);
    sub_1D1A1EBC8(v5, type metadata accessor for StaticEndpoint);
  }

  return sub_1D1E6926C();
}

uint64_t MatterCommandError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = &v31 - v5;
  v6 = type metadata accessor for ClusterPath(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649048, &qword_1D1E91B28);
  v33 = *(v35 - 8);
  v10 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v12 = &v31 - v11;
  v13 = type metadata accessor for MatterCommandError();
  v14 = *(*(v13 - 1) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 32);
  v19 = type metadata accessor for StaticEndpoint();
  v20 = *(*(v19 - 8) + 56);
  v37 = v18;
  v38 = v17;
  v20(&v17[v18], 1, 1, v19);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A1C7F8();
  v34 = v12;
  v22 = v36;
  sub_1D1E692FC();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1D1741A30(v38 + v37, &qword_1EC644780, &qword_1D1E91AA0);
  }

  else
  {
    v36 = v19;
    v23 = v33;
    v43 = 0;
    sub_1D1A1C8A0();
    sub_1D1E68D7C();
    v24 = v38;
    *v38 = v44;
    v42 = 1;
    sub_1D1A1EC28(&qword_1EC646DC0, type metadata accessor for ClusterPath);
    sub_1D1E68D7C();
    sub_1D1A1EB60(v9, v24 + v13[5], type metadata accessor for ClusterPath);
    v41 = 2;
    v25 = v34;
    *(v24 + v13[6]) = sub_1D1E68DBC();
    v40 = 3;
    v26 = sub_1D1E68C6C();
    v27 = (v24 + v13[7]);
    *v27 = v26;
    v27[1] = v28;
    v39 = 4;
    sub_1D1A1EC28(&qword_1EC644740, type metadata accessor for StaticEndpoint);
    v29 = v32;
    sub_1D1E68CBC();
    (*(v23 + 8))(v25, v35);
    sub_1D1A16064(v29, v24 + v37);
    sub_1D1A1EC70(v24, v31, type metadata accessor for MatterCommandError);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1D1A1EBC8(v24, type metadata accessor for MatterCommandError);
  }
}

uint64_t sub_1D1A18D20(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for StaticEndpoint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v22 - v11;
  sub_1D1E6920C();
  v13 = *v2;
  if (v13 >> 10 <= 0x3E)
  {
    MEMORY[0x1D3892850](0);
    v22[3] = v13;
    MatterCommandError.ErrorCode.RVC.hash(into:)();
  }

  else
  {
    MEMORY[0x1D3892850](1);
  }

  v14 = v2 + a2[5];
  sub_1D1E66A7C();
  sub_1D1A1EC28(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v15 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*&v14[*(v15 + 20)]);
  v16 = *&v14[*(v15 + 24)];
  sub_1D1E6923C();
  v17 = dword_1D1E927BC[v14[*(type metadata accessor for ClusterPath(0) + 20)]];
  sub_1D1E6924C();
  v18 = *(v2 + a2[6]);
  sub_1D1E6924C();
  v19 = (v2 + a2[7]);
  if (v19[1])
  {
    v20 = *v19;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  sub_1D1741C08(v2 + a2[8], v12, &qword_1EC644780, &qword_1D1E91AA0);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1A1EB60(v12, v8, type metadata accessor for StaticEndpoint);
    sub_1D1E6922C();
    StaticEndpoint.hash(into:)(v23);
    sub_1D1A1EBC8(v8, type metadata accessor for StaticEndpoint);
  }

  return sub_1D1E6926C();
}

uint64_t MatterCommandError.contextualize()()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(type metadata accessor for ClusterPath(0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for MatterStateSnapshot();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A19194, 0, 0);
}

uint64_t sub_1D1A19194()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for MatterCommandError();
  *(v0 + 72) = v3;
  v4 = *(v3 + 20);
  *(v0 + 88) = v4;
  sub_1D1A1EC70(v2 + v4, v1, type metadata accessor for ClusterPath);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1D1A19264;
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);

  return sub_1D1A19514(v6, v7);
}

uint64_t sub_1D1A19264()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 32);
  v4 = *v0;

  sub_1D1A1EBC8(v2, type metadata accessor for EndpointPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1A19390, 0, 0);
}

uint64_t sub_1D1A19390()
{
  v1 = *(v0 + 40);
  if ((*(*(v0 + 56) + 48))(v1, 1, *(v0 + 48)) == 1)
  {
    sub_1D1741A30(v1, &unk_1EC64F390, &qword_1D1E92B10);
  }

  else
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    v7 = *(v0 + 16);
    sub_1D1A1EB60(v1, v3, type metadata accessor for MatterStateSnapshot);
    sub_1D1A1EC70(v7 + v2, v5, type metadata accessor for ClusterPath);
    sub_1D1A19BD8(v5, v3, v6);
    sub_1D1A1EBC8(v3, type metadata accessor for MatterStateSnapshot);
    sub_1D1A1EBC8(v5, type metadata accessor for EndpointPath);
    sub_1D1A16064(v6, v7 + *(v4 + 32));
  }

  v8 = *(v0 + 64);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  v11 = *(v0 + 24);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D1A19514(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = *(*(type metadata accessor for EndpointPath(0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[6] = v6;
  v7 = swift_task_alloc();
  v2[7] = v7;
  *v7 = v2;
  v7[1] = sub_1D1A19628;

  return sub_1D1A1A7E8(v6, a2);
}

uint64_t sub_1D1A19628()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1A19724, 0, 0);
}

uint64_t sub_1D1A19724()
{
  v29 = v0;
  v1 = v0[5];
  sub_1D1741C08(v0[6], v1, &unk_1EC64F390, &qword_1D1E92B10);
  v2 = type metadata accessor for MatterStateSnapshot();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1D1741A30(v0[5], &unk_1EC64F390, &qword_1D1E92B10);
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v5 = v0[3];
    v4 = v0[4];
    v6 = sub_1D1E6709C();
    __swift_project_value_buffer(v6, qword_1EE07A0B0);
    sub_1D1A1EC70(v5, v4, type metadata accessor for EndpointPath);
    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6833C();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[6];
    v11 = v0[4];
    if (v9)
    {
      v12 = swift_slowAlloc();
      v27 = v10;
      v28 = swift_slowAlloc();
      v13 = v28;
      *v12 = 136446210;
      sub_1D1E66A7C();
      sub_1D1A1EC28(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v14 = sub_1D1E68FAC();
      v16 = v15;
      sub_1D1A1EBC8(v11, type metadata accessor for EndpointPath);
      v17 = sub_1D1B1312C(v14, v16, &v28);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1D16EC000, v7, v8, "MatterCommandError.contextualize failed to find home snapshot for home ID %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1D3893640](v13, -1, -1);
      MEMORY[0x1D3893640](v12, -1, -1);

      v18 = v27;
    }

    else
    {

      sub_1D1A1EBC8(v11, type metadata accessor for EndpointPath);
      v18 = v10;
    }

    sub_1D1741A30(v18, &unk_1EC64F390, &qword_1D1E92B10);
    v21 = 1;
  }

  else
  {
    v19 = v0[5];
    v20 = v0[2];
    sub_1D1741A30(v0[6], &unk_1EC64F390, &qword_1D1E92B10);
    sub_1D1A1EB60(v19, v20, type metadata accessor for MatterStateSnapshot);
    v21 = 0;
  }

  v23 = v0[5];
  v22 = v0[6];
  v24 = v0[4];
  (*(v3 + 56))(v0[2], v21, 1, v2);

  v25 = v0[1];

  return v25();
}

uint64_t MatterCommandError.contextualize(matterSnapshot:)(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v13 - v9;
  v11 = type metadata accessor for MatterCommandError();
  sub_1D1A1EC70(v1 + *(v11 + 20), v6, type metadata accessor for ClusterPath);
  sub_1D1A19BD8(v6, a1, v10);
  sub_1D1A1EBC8(v6, type metadata accessor for EndpointPath);
  return sub_1D1A16064(v10, v1 + *(v11 + 32));
}

uint64_t sub_1D1A19BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v121 = a3;
  v117 = type metadata accessor for EndpointPath(0);
  v5 = *(*(v117 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v117);
  v116 = (&v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v6);
  v115 = &v108 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v111 = &v108 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v110 = &v108 - v12;
  v13 = type metadata accessor for StaticEndpoint();
  v119 = *(v13 - 8);
  v120 = v13;
  v14 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v108 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for StaticMatterDevice();
  v112 = *(v114 - 8);
  v16 = *(v112 + 64);
  v17 = MEMORY[0x1EEE9AC00](v114);
  v109 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v108 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v113 = &v108 - v22;
  v23 = sub_1D1E66A7C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v108 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v108 - v32;
  v34 = type metadata accessor for MatterStateSnapshot();
  v35 = *(v34 + 20);
  v118 = v24;
  v36 = *(v24 + 16);
  v122 = v23;
  v37 = v23;
  v38 = a1;
  v36(v33, a2 + v35, v37);
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v54 = sub_1D1E6709C();
    __swift_project_value_buffer(v54, qword_1EE07A0B0);
    v55 = a1;
    v56 = v116;
    sub_1D1A1EC70(v55, v116, type metadata accessor for EndpointPath);
    v57 = v122;
    v36(v28, v33, v122);
    v58 = sub_1D1E6707C();
    v59 = sub_1D1E6833C();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v123 = v61;
      *v60 = 136446466;
      sub_1D1A1EC28(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v62 = sub_1D1E68FAC();
      v114 = v33;
      v64 = v63;
      sub_1D1A1EBC8(v56, type metadata accessor for EndpointPath);
      v65 = sub_1D1B1312C(v62, v64, &v123);

      *(v60 + 4) = v65;
      *(v60 + 12) = 2082;
      v66 = sub_1D1E68FAC();
      v68 = v67;
      v69 = *(v118 + 8);
      v69(v28, v57);
      v70 = sub_1D1B1312C(v66, v68, &v123);

      *(v60 + 14) = v70;
      _os_log_impl(&dword_1D16EC000, v58, v59, "MatterCommandError.contextualize passed snapshot for wrong home. Expected %{public}s, received %{public}s", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v61, -1, -1);
      MEMORY[0x1D3893640](v60, -1, -1);

      v69(v114, v57);
    }

    else
    {

      v87 = *(v118 + 8);
      v87(v28, v57);
      sub_1D1A1EBC8(v56, type metadata accessor for EndpointPath);
      v87(v33, v57);
    }

    goto LABEL_23;
  }

  v39 = *(a2 + *(v34 + 24));
  v40 = v117;
  if (!*(v39 + 16) || (v41 = sub_1D17420B0(*(a1 + *(v117 + 20))), (v42 & 1) == 0))
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v71 = sub_1D1E6709C();
    __swift_project_value_buffer(v71, qword_1EE07A0B0);
    v72 = v115;
    sub_1D1A1EC70(a1, v115, type metadata accessor for EndpointPath);
    v73 = v33;
    v74 = v33;
    v75 = v122;
    v36(v31, v73, v122);
    v76 = sub_1D1E6707C();
    v77 = sub_1D1E6833C();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v114 = v74;
      v80 = v79;
      v123 = v79;
      *v78 = 134349314;
      v81 = *(v72 + *(v40 + 20));
      sub_1D1A1EBC8(v72, type metadata accessor for EndpointPath);
      *(v78 + 4) = v81;
      *(v78 + 12) = 2082;
      sub_1D1A1EC28(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v82 = sub_1D1E68FAC();
      v84 = v83;
      v85 = *(v118 + 8);
      v85(v31, v75);
      v86 = sub_1D1B1312C(v82, v84, &v123);

      *(v78 + 14) = v86;
      _os_log_impl(&dword_1D16EC000, v76, v77, "MatterCommandError.contextualize failed to find static device for id %{public}llu in home %{public}s", v78, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x1D3893640](v80, -1, -1);
      MEMORY[0x1D3893640](v78, -1, -1);

      v85(v114, v75);
    }

    else
    {
      sub_1D1A1EBC8(v72, type metadata accessor for EndpointPath);

      v88 = *(v118 + 8);
      v88(v31, v75);
      v88(v74, v75);
    }

    goto LABEL_23;
  }

  sub_1D1A1EC70(*(v39 + 56) + *(v112 + 72) * v41, v21, type metadata accessor for StaticMatterDevice);
  v43 = v113;
  sub_1D1A1EB60(v21, v113, type metadata accessor for StaticMatterDevice);
  v44 = *(v43 + *(v114 + 56));
  if (!*(v44 + 16) || (v45 = sub_1D171D15C(*(a1 + *(v40 + 24))), (v46 & 1) == 0))
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v89 = sub_1D1E6709C();
    __swift_project_value_buffer(v89, qword_1EE07A0B0);
    v90 = a1;
    v91 = v110;
    sub_1D1A1EC70(v90, v110, type metadata accessor for EndpointPath);
    v92 = v111;
    sub_1D1A1EC70(v38, v111, type metadata accessor for EndpointPath);
    v93 = v109;
    sub_1D1A1EC70(v43, v109, type metadata accessor for StaticMatterDevice);
    v94 = sub_1D1E6707C();
    v95 = sub_1D1E6833C();
    v96 = os_log_type_enabled(v94, v95);
    v97 = v122;
    if (v96)
    {
      v98 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v123 = v116;
      *v98 = 33686274;
      v99 = v91;
      v100 = *(v91 + *(v40 + 24));
      sub_1D1A1EBC8(v99, type metadata accessor for EndpointPath);
      *(v98 + 4) = v100;
      *(v98 + 6) = 2050;
      v101 = *(v92 + *(v40 + 20));
      sub_1D1A1EBC8(v92, type metadata accessor for EndpointPath);
      *(v98 + 8) = v101;
      *(v98 + 16) = 2080;
      v102 = (v93 + *(v114 + 24));
      v103 = *v102;
      v104 = v102[1];

      sub_1D1A1EBC8(v93, type metadata accessor for StaticMatterDevice);
      v105 = sub_1D1B1312C(v103, v104, &v123);

      *(v98 + 18) = v105;
      _os_log_impl(&dword_1D16EC000, v94, v95, "MatterCommandError.contextualize failed to find endpoint for id %{public}hu in device %{public}llu (%s)", v98, 0x1Au);
      v106 = v116;
      __swift_destroy_boxed_opaque_existential_1(v116);
      MEMORY[0x1D3893640](v106, -1, -1);
      MEMORY[0x1D3893640](v98, -1, -1);

      (*(v118 + 8))(v33, v122);
    }

    else
    {
      sub_1D1A1EBC8(v92, type metadata accessor for EndpointPath);
      sub_1D1A1EBC8(v91, type metadata accessor for EndpointPath);

      sub_1D1A1EBC8(v93, type metadata accessor for StaticMatterDevice);
      (*(v118 + 8))(v33, v97);
    }

    sub_1D1A1EBC8(v43, type metadata accessor for StaticMatterDevice);
LABEL_23:
    v53 = 1;
    v52 = v121;
    v48 = v119;
    return (*(v48 + 56))(v52, v53, 1, v120);
  }

  v47 = *(v44 + 56);
  v48 = v119;
  v49 = v108;
  sub_1D1A1EC70(v47 + *(v119 + 72) * v45, v108, type metadata accessor for StaticEndpoint);
  (*(v118 + 8))(v33, v122);
  sub_1D1A1EBC8(v43, type metadata accessor for StaticMatterDevice);
  v50 = v49;
  v51 = v121;
  sub_1D1A1EB60(v50, v121, type metadata accessor for StaticEndpoint);
  v52 = v51;
  v53 = 0;
  return (*(v48 + 56))(v52, v53, 1, v120);
}

uint64_t sub_1D1A1A7E8(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A1A884, 0, 0);
}

uint64_t sub_1D1A1A884()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[13] = v1;
  if (v1)
  {
    v0[14] = v1[3];
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D1A1AE2C;
    v4 = 0;
  }

  else
  {
    v0[15] = sub_1D1E67E1C();
    v0[16] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1A1A97C;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D1A1A97C()
{
  v1 = *(v0 + 128);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1A1AA14, 0, 0);
}

uint64_t sub_1D1A1AA14()
{
  v1 = *(v0 + 120);
  *(v0 + 136) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A1AAA0, v3, v2);
}

uint64_t sub_1D1A1AAA0()
{
  v1 = *(v0 + 136);

  *(v0 + 144) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1A1AB14, 0, 0);
}

uint64_t sub_1D1A1AB14()
{
  v1 = *(v0 + 120);
  *(v0 + 152) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A1ABA0, v3, v2);
}

uint64_t sub_1D1A1ABA0()
{
  v2 = v0[18];
  v1 = v0[19];

  swift_getKeyPath();
  v0[8] = v2;
  sub_1D1A1EC28(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtC13HomeDataModel9DataModel__homesToMatterSnapshots;
  swift_beginAccess();
  v0[20] = *(v2 + v3);

  return MEMORY[0x1EEE6DFA0](sub_1D1A1ACAC, 0, 0);
}

uint64_t sub_1D1A1ACAC()
{
  if (*(v0[20] + 16))
  {
    v1 = sub_1D1742188(v0[11]);
    if (v2)
    {
      v3 = v1;
      v4 = v0[10];
      v5 = *(v0[20] + 56);
      v6 = type metadata accessor for MatterStateSnapshot();
      v7 = *(v6 - 8);
      sub_1D1A1EC70(v5 + *(v7 + 72) * v3, v4, type metadata accessor for MatterStateSnapshot);

      v8 = 0;
      goto LABEL_7;
    }

    v10 = v0[20];
  }

  else
  {
    v9 = v0[20];
  }

  v6 = type metadata accessor for MatterStateSnapshot();
  v7 = *(v6 - 8);
  v8 = 1;
LABEL_7:
  v11 = v0[12];
  (*(v7 + 56))(v0[10], v8, 1, v6);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D1A1AE2C()
{
  v1 = v0[14];
  swift_getKeyPath();
  v0[9] = v1;
  sub_1D1A1EC28(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v2 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  v0[21] = *(v1 + v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1A1AF34, 0, 0);
}

uint64_t sub_1D1A1AF34()
{
  if (*(v0[21] + 16))
  {
    v1 = sub_1D1742188(v0[11]);
    v2 = v0[12];
    v3 = v0[13];
    if (v4)
    {
      v5 = v1;
      v6 = *(v0[21] + 56);
      v7 = type metadata accessor for HomeState();
      v8 = *(v7 - 8);
      sub_1D1A1EC70(v6 + *(v8 + 72) * v5, v2, type metadata accessor for HomeState);

      (*(v8 + 56))(v2, 0, 1, v7);
    }

    else
    {
      v12 = v0[21];

      v7 = type metadata accessor for HomeState();
      (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
    }
  }

  else
  {
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[21];

    v7 = type metadata accessor for HomeState();
    (*(*(v7 - 8) + 56))(v10, 1, 1, v7);
  }

  v13 = v0[12];
  type metadata accessor for HomeState();
  v14 = 1;
  if (!(*(*(v7 - 8) + 48))(v13, 1, v7))
  {
    sub_1D1A1EC70(v13 + *(v7 + 24), v0[10], type metadata accessor for MatterStateSnapshot);
    v14 = 0;
  }

  sub_1D1741A30(v13, &qword_1EC649148, &qword_1D1E96490);
  v15 = type metadata accessor for MatterStateSnapshot();
  v16 = v0[12];
  (*(*(v15 - 8) + 56))(v0[10], v14, 1, v15);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1D1A1B1DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4BFC;

  return MatterCommandError.contextualize()();
}

uint64_t sub_1D1A1B268(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ClusterPath(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v14 - v11;
  sub_1D1A1EC70(v2 + *(a2 + 20), v8, type metadata accessor for ClusterPath);
  sub_1D1A19BD8(v8, a1, v12);
  sub_1D1A1EBC8(v8, type metadata accessor for EndpointPath);
  return sub_1D1A16064(v12, v2 + *(a2 + 32));
}

uint64_t sub_1D1A1B390()
{
  v5 = *v0;
  v1 = sub_1D1A1B510(v0);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;

  return v3;
}

uint64_t MatterCommandError.errorDescription.getter()
{
  v5 = *v0;
  v1 = sub_1D1A1B510(v0);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;

  return v3;
}

uint64_t sub_1D1A1B448()
{
  v5 = *v0;
  sub_1D1A1B510(v0);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;

  return v3;
}

uint64_t MatterCommandError.failureReason.getter()
{
  v5 = *v0;
  sub_1D1A1B510(v0);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;

  return v3;
}

uint64_t sub_1D1A1B510(uint64_t a1)
{
  v2 = *v1;
  if (v2 >> 10 < 0x3F)
  {
    v7 = *v1;
    if (v2 >> 14)
    {
      if (v2 >> 14 == 1)
      {
        v11 = v2 & 0x1FF;
        return sub_1D196A9CC(a1);
      }

      else
      {
        return sub_1D196B1D4(a1);
      }
    }

    else
    {
      v10 = *v1;
      return sub_1D196A610(a1);
    }
  }

  else
  {
    v9 = MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for MatterCommandError();
    sub_1D1A1EC28(&qword_1EC6474F8, type metadata accessor for MatterCommandError);
    v3 = swift_allocError();
    sub_1D1A1EC70(v9, v4, type metadata accessor for MatterCommandError);
    v5 = sub_1D1A1E548(sub_1D1A1EB58, &v8, v3);

    return v5;
  }
}

uint64_t sub_1D1A1B69C(uint64_t a1)
{
  BYTE8(v4) = 0;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC3290);
  v2 = a1 + *(type metadata accessor for MatterCommandError() + 20);
  *&v4 = *(v2 + *(type metadata accessor for ClusterPath(0) + 20));
  sub_1D1E68ABC();
  return *(&v4 + 1);
}

uint64_t sub_1D1A1B74C()
{
  v0 = static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EBEF10);
  v2 = v1;
  result = static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBEEE0);
  qword_1EC6BE140 = result;
  *algn_1EC6BE148 = v4;
  qword_1EC6BE150 = v0;
  unk_1EC6BE158 = v2;
  return result;
}

uint64_t _s13HomeDataModel18MatterCommandErrorV0F4CodeO3RVCO2eeoiySbAG_AGtFZ_0(_WORD *a1, _WORD *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 14)
  {
    if (v2 >> 14 == 1)
    {
      if ((v3 & 0xC000) == 0x4000)
      {
        if ((v2 & 0x100) != 0)
        {
          v6 = *a1;
          if (v6 <= 4)
          {
            if (*a1 <= 1u)
            {
              if (*a1)
              {
                if ((v3 & 0x100) != 0 && *a2 == 1)
                {
                  return 1;
                }
              }

              else if ((v3 & 0x100) != 0 && !*a2)
              {
                return 1;
              }
            }

            else if (v6 == 2)
            {
              if ((v3 & 0x100) != 0 && *a2 == 2)
              {
                return 1;
              }
            }

            else if (v6 == 3)
            {
              if ((v3 & 0x100) != 0 && *a2 == 3)
              {
                return 1;
              }
            }

            else if ((v3 & 0x100) != 0 && *a2 == 4)
            {
              return 1;
            }
          }

          else if (*a1 > 7u)
          {
            if (v6 == 8)
            {
              if ((v3 & 0x100) != 0 && *a2 == 8)
              {
                return 1;
              }
            }

            else if (v6 == 9)
            {
              if ((v3 & 0x100) != 0 && *a2 == 9)
              {
                return 1;
              }
            }

            else if ((v3 & 0x100) != 0 && *a2 >= 0xAu)
            {
              return 1;
            }
          }

          else if (v6 == 5)
          {
            if ((v3 & 0x100) != 0 && *a2 == 5)
            {
              return 1;
            }
          }

          else if (v6 == 6)
          {
            if ((v3 & 0x100) != 0 && *a2 == 6)
            {
              return 1;
            }
          }

          else if ((v3 & 0x100) != 0 && *a2 == 7)
          {
            return 1;
          }
        }

        else if ((v3 & 0x100) == 0 && *a1 == v3)
        {
          return 1;
        }
      }
    }

    else if ((v3 & 0xC000) == 0x8000)
    {
      if ((v2 & 0x100) != 0)
      {
        if (*a1 > 1u)
        {
          if (*a1 == 2)
          {
            if ((v3 & 0x100) != 0 && *a2 == 2)
            {
              return 1;
            }
          }

          else if ((v3 & 0x100) != 0 && *a2 >= 3u)
          {
            return 1;
          }
        }

        else if (*a1)
        {
          if ((v3 & 0x100) != 0 && *a2 == 1)
          {
            return 1;
          }
        }

        else if ((v3 & 0x100) != 0 && !*a2)
        {
          return 1;
        }
      }

      else if ((v3 & 0x100) == 0 && *a1 == v3)
      {
        return 1;
      }
    }
  }

  else if (v3 < 0x4000)
  {
    v5 = v3 >> 8;
    if (v2 >> 8)
    {
      if (v2 >> 8 == 1)
      {
        if (v5 == 1 && *a1 == v3)
        {
          return 1;
        }
      }

      else if (v5 == 2 && *a1 == v3)
      {
        return 1;
      }
    }

    else if (!v5 && *a1 == v3)
    {
      return 1;
    }
  }

  return 0;
}