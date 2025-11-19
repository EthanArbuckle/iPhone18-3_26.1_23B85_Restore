id HFEvent.iconColor.getter()
{
  v1 = v0;
  v2 = sub_20DD64784();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = sub_20DD649D4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v1, v10);
  if ((*(v11 + 88))(v14, v10) == *MEMORY[0x277D17970])
  {
    (*(v11 + 96))(v14, v10);
    (*(v3 + 32))(v9, v14, v2);
    (*(v3 + 16))(v7, v9, v2);
    v15 = (*(v3 + 88))(v7, v2);
    if (v15 == *MEMORY[0x277D17770] || v15 == *MEMORY[0x277D17780])
    {
      v17 = *(v3 + 8);
      v17(v7, v2);
      v18 = [objc_opt_self() systemCyanColor];
      v17(v9, v2);
      return v18;
    }

    else
    {
      v20 = [objc_opt_self() labelColor];
      v21 = *(v3 + 8);
      v21(v9, v2);
      v21(v7, v2);
      return v20;
    }
  }

  else
  {
    v19 = [objc_opt_self() labelColor];
    (*(v11 + 8))(v14, v10);
    return v19;
  }
}

uint64_t sub_20DA83E48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D38, &unk_20DD96E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20DA83EB0()
{
  result = qword_27C8435F0;
  if (!qword_27C8435F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C8435F0);
  }

  return result;
}

void __swiftcall HFStaticItem.init(results:)(HFStaticItem *__return_ptr retstr, Swift::OpaquePointer results)
{
  v2 = results._rawValue + 64;
  v3 = 1 << *(results._rawValue + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(results._rawValue + 8);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  if (v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v11 >= v6)
    {

      v32 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      sub_20D9CA5EC(v8);

      v33 = sub_20DD64DB4();

      [v32 initWithResults_];

      return;
    }

    v5 = *&v2[8 * v11];
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v12 = __clz(__rbit64(v5)) | (v11 << 6);
    v13 = *(*(results._rawValue + 6) + 8 * v12);
    sub_20D9D7174(*(results._rawValue + 7) + 32 * v12, &v38);
    v37 = v13;
    sub_20DA8422C(&v37, v35);
    v14 = *&v35[0];
    sub_20D9D77C8((v35 + 8), v36);
    v15 = sub_20DD64EB4();
    v17 = v16;
    sub_20D9D7174(v36, v35);
    v18 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_20D9CB170(v15, v17);
    v22 = v8[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      break;
    }

    v26 = v21;
    if (v8[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v20;
        sub_20D9D256C();
        v20 = v31;
      }
    }

    else
    {
      sub_20D9CC5C4(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_20D9CB170(v15, v17);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }
    }

    v5 &= v5 - 1;
    if (v26)
    {
      v9 = v20;

      v10 = (v8[7] + 32 * v9);
      __swift_destroy_boxed_opaque_existential_0(v10);
      sub_20D9D77C8(v35, v10);

      __swift_destroy_boxed_opaque_existential_0(v36);
      sub_20DA8429C(&v37);
      v7 = v11;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v8[(v20 >> 6) + 8] |= 1 << v20;
      v28 = (v8[6] + 16 * v20);
      *v28 = v15;
      v28[1] = v17;
      sub_20D9D77C8(v35, (v8[7] + 32 * v20));

      __swift_destroy_boxed_opaque_existential_0(v36);
      sub_20DA8429C(&v37);
      v29 = v8[2];
      v24 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v24)
      {
        goto LABEL_23;
      }

      v8[2] = v30;
      v7 = v11;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v11 = v7;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_20DD659E4();
  __break(1u);
}

uint64_t sub_20DA8422C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C845130, &unk_20DD96BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DA8429C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C845130, &unk_20DD96BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HFMatterSnapshotContainer.device(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20DD64354();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D50, &qword_20DD94250);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - v10;
  v12 = sub_20DD65334();
  if ((v13 & 1) != 0 || !v12)
  {
    v16 = sub_20DD64294();
    v17 = *(*(v16 - 8) + 56);

    return v17(a1, 1, 1, v16);
  }

  else
  {
    v14 = v12;
    v15 = *(v1 + OBJC_IVAR___HFMatterSnapshotContainer_internalContainer);
    if (v15)
    {
      (*(v4 + 16))(v11, v15 + OBJC_IVAR____TtCE4HomeCSo25HFMatterSnapshotContainerP33_B7E3F95BF7FF115BC363C826A52F413717InternalContainer_snapshot, v3);
      (*(v4 + 56))(v11, 0, 1, v3);
    }

    else
    {
      (*(v4 + 56))(v11, 1, 1, v3);
    }

    if ((*(v4 + 48))(v11, 1, v3))
    {
      sub_20DA846C4(v11);
    }

    else
    {
      (*(v4 + 16))(v7, v11, v3);
      sub_20DA846C4(v11);
      v19 = sub_20DD642E4();
      (*(v4 + 8))(v7, v3);
      if (*(v19 + 16))
      {
        v20 = sub_20D9CB2A8(v14);
        if (v21)
        {
          v22 = v20;
          v23 = *(v19 + 56);
          v24 = sub_20DD64294();
          v25 = *(v24 - 8);
          (*(v25 + 16))(a1, v23 + *(v25 + 72) * v22, v24);

          return (*(v25 + 56))(a1, 0, 1, v24);
        }
      }
    }

    v26 = sub_20DD64294();
    return (*(*(v26 - 8) + 56))(a1, 1, 1, v26);
  }
}

uint64_t sub_20DA846C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D50, &qword_20DD94250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DA8474C()
{
  sub_20DD650F4();
  *(v0 + 24) = sub_20DD650E4();
  v2 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA847E0, v2, v1);
}

uint64_t sub_20DA847E0()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = [swift_getObjCClassFromMetadata() fetchCurrent];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_20DA849C8(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_20DA84A34, 0, 0);
}

uint64_t sub_20DA84A34()
{
  sub_20DD650F4();
  *(v0 + 32) = sub_20DD650E4();
  v2 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA84AC8, v2, v1);
}

uint64_t sub_20DA84AC8()
{
  v1 = v0[4];
  v2 = v0[2];

  v0[5] = [v2 fetchCurrent];

  return MEMORY[0x2822009F8](sub_20DA84B50, 0, 0);
}

uint64_t sub_20DA84B50()
{
  v1 = v0[3];
  v2 = v0[5];
  if (v1)
  {
    v1[2](v0[3], v0[5]);

    _Block_release(v1);
  }

  else
  {
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_20DA84C08()
{
  v1 = OBJC_IVAR____TtCE4HomeCSo25HFMatterSnapshotContainerP33_B7E3F95BF7FF115BC363C826A52F413717InternalContainer_snapshot;
  v2 = sub_20DD64354();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *_sSo25HFMatterSnapshotContainerC4HomeE12fetchCurrentAByFZ_0()
{
  v0 = sub_20DD64354();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = [objc_allocWithZone(HFMatterSnapshotContainer) init];
  sub_20DD63C84();
  v9 = sub_20DD63C64();
  sub_20DD63BF4();

  v10 = *(v1 + 32);
  v10(v5, v7, v0);
  v11 = _s17InternalContainerCMa();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v10((v14 + OBJC_IVAR____TtCE4HomeCSo25HFMatterSnapshotContainerP33_B7E3F95BF7FF115BC363C826A52F413717InternalContainer_snapshot), v5, v0);
  v15 = *&v8[OBJC_IVAR___HFMatterSnapshotContainer_internalContainer];
  *&v8[OBJC_IVAR___HFMatterSnapshotContainer_internalContainer] = v14;

  return v8;
}

uint64_t _s17InternalContainerCMa()
{
  result = qword_27C844D50;
  if (!qword_27C844D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20DA84E80()
{
  result = sub_20DD64354();
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

unint64_t type metadata accessor for HFMatterSnapshotContainer()
{
  result = qword_27C844D60;
  if (!qword_27C844D60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C844D60);
  }

  return result;
}

uint64_t sub_20DA84F5C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9D77C4;

  return sub_20DA849C8(v2, v3);
}

HFMatterColors __swiftcall HFMatterColors.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_20DA85110(uint64_t a1)
{
  v3 = sub_20DD63744();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v43 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v34 - v8;
  v9 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v34 = v1;
    v46 = MEMORY[0x277D84F90];
    sub_20DD65774();
    v11 = -1 << *(a1 + 32);
    v42 = a1 + 56;
    result = sub_20DD65514();
    v12 = result;
    v13 = 0;
    v45 = *(a1 + 36);
    v39 = (v4 + 1);
    v40 = v4 + 2;
    v35 = a1 + 64;
    v38 = xmmword_20DD967E0;
    v41 = a1;
    v36 = v9;
    v37 = v4;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v42 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_27;
      }

      if (v45 != *(a1 + 36))
      {
        goto LABEL_28;
      }

      v16 = *(a1 + 48) + v4[9] * v12;
      v17 = v4[2];
      v18 = v44;
      v17(v44, v16, v3);
      v17(v43, v18, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
      v19 = swift_allocObject();
      *(v19 + 16) = v38;
      if (qword_27C842500 != -1)
      {
        swift_once();
      }

      *(v19 + 32) = qword_27C844D88;
      v20 = qword_27C842508;

      if (v20 != -1)
      {
        swift_once();
      }

      *(v19 + 40) = qword_27C844D90;
      v21 = qword_27C842510;

      if (v21 != -1)
      {
        swift_once();
      }

      *(v19 + 48) = qword_27C844D98;
      v22 = sub_20DD64D44();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();

      sub_20DD64D34();
      v25 = v3;
      (*v39)(v44, v3);
      sub_20DD65754();
      v26 = *(v46 + 16);
      sub_20DD65784();
      sub_20DD65794();
      result = sub_20DD65764();
      a1 = v41;
      v14 = 1 << *(v41 + 32);
      if (v12 >= v14)
      {
        goto LABEL_29;
      }

      v27 = *(v42 + 8 * v15);
      if ((v27 & (1 << v12)) == 0)
      {
        goto LABEL_30;
      }

      if (v45 != *(v41 + 36))
      {
        goto LABEL_31;
      }

      v28 = v27 & (-2 << (v12 & 0x3F));
      if (v28)
      {
        v14 = __clz(__rbit64(v28)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v3 = v25;
        v4 = v37;
      }

      else
      {
        v29 = v15 << 6;
        v30 = v15 + 1;
        v31 = (v35 + 8 * v15);
        v3 = v25;
        v4 = v37;
        while (v30 < (v14 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_20D9EF46C(v12, v45, 0);
            a1 = v41;
            v14 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        result = sub_20D9EF46C(v12, v45, 0);
        a1 = v41;
      }

LABEL_4:
      ++v13;
      v12 = v14;
      if (v13 == v36)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

void sub_20DA85578(uint64_t a1)
{
  v1 = a1;
  v19 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
    sub_20D9EC18C(&qword_280E01F00, &qword_280E01F10, off_277DEFBE0);
    sub_20DD65284();
    v1 = v14;
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_20DD655F4() || (sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0), swift_dynamicCast(), (v11 = v13) == 0))
    {
LABEL_21:
      sub_20D9C51CC();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x20F325F00]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20DD65014();
      }

      sub_20DD65054();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_20DA857FC()
{
  type metadata accessor for MediaStateFetchManager();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DA8, &qword_20DD96840);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x277D84FA0];
  *(v0 + 16) = result;
  qword_27C844D78 = v0;
  return result;
}

uint64_t MediaStateFetchManager.fetchUpdates(items:in:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_20DA858D8, 0, 0);
}

uint64_t sub_20DA858D8()
{
  v15 = v0;
  v1 = v0[2];
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = v0[2];
    }

    if (!sub_20DD655B4())
    {
      goto LABEL_12;
    }
  }

  else if (!*(v1 + 16))
  {
LABEL_12:
    v12 = v0[1];

    return v12();
  }

  v3 = v0[4];
  v4 = sub_20DA85E50(v0[2]);
  v5 = *(v3 + 16);
  *(swift_task_alloc() + 16) = v4;
  os_unfair_lock_lock((v5 + 24));
  sub_20DA86338((v5 + 16), &v14);
  os_unfair_lock_unlock((v5 + 24));
  v6 = v14;

  if (!*(v6 + 16))
  {

    goto LABEL_12;
  }

  *(swift_task_alloc() + 16) = v6;
  os_unfair_lock_lock((v5 + 24));
  sub_20DA86354();
  os_unfair_lock_unlock((v5 + 24));
  v7 = v0[3];

  v8 = sub_20DA85110(v6);
  v0[6] = v8;

  v0[7] = sub_20DD653F4();
  v9 = *(MEMORY[0x277CCE638] + 4);
  v13 = (*MEMORY[0x277CCE638] + MEMORY[0x277CCE638]);
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_20DA85AEC;

  return v13(v8);
}

uint64_t sub_20DA85AEC()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20DA85C2C, 0, 0);
  }

  else
  {
    v4 = v3[6];
    v5 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_20DA85C2C()
{
  v21 = v0;
  v1 = *(v0 + 48);

  if (qword_27C842518 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v3 = sub_20DD64C44();
  __swift_project_value_buffer(v3, qword_27C84C6A8);
  v4 = v2;
  v5 = sub_20DD64C24();
  v6 = sub_20DD65364();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 72);
  if (v7)
  {
    v9 = *(v0 + 40);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136315394;
    v13 = sub_20DD65B04();
    v15 = sub_20D9E0B38(v13, v14, &v20);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_20D9BF000, v5, v6, "%s: Failed to fetch updates for media devices with error: %@", v10, 0x16u);
    sub_20D9D76EC(v11, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x20F327D10](v12, -1, -1);
    MEMORY[0x20F327D10](v10, -1, -1);
  }

  else
  {
  }

  v18 = *(v0 + 8);

  return v18();
}

size_t sub_20DA85E50(uint64_t a1)
{
  v2 = sub_20DD63744();
  v3 = *(v2 - 8);
  v36 = v2;
  v37 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DA85578(a1);
  v8 = v7;
  v38 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20DD655B4())
  {
    v10 = MEMORY[0x277D84F90];
    if (i)
    {
      v11 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x20F326680](v11, v8);
        }

        else
        {
          if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v13 = *&v8[8 * v11 + 32];
        }

        v14 = v13;
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if ([v13 isHomePod] & 1) != 0 || objc_msgSend(v14, sel_isAppleTV) || (objc_msgSend(v14, sel_isHomePodMediaSystem))
        {
          sub_20DD65754();
          v12 = *(v38 + 16);
          sub_20DD65784();
          sub_20DD65794();
          sub_20DD65764();
        }

        else
        {
        }

        ++v11;
        if (v15 == i)
        {
          v16 = v38;
          v10 = MEMORY[0x277D84F90];
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v16 = MEMORY[0x277D84F90];
LABEL_18:

    v38 = v10;
    if ((v16 & 0x8000000000000000) == 0 && (v16 & 0x4000000000000000) == 0)
    {
      v17 = *(v16 + 16);
      if (!v17)
      {
        break;
      }

      goto LABEL_21;
    }

    v17 = sub_20DD655B4();
    if (!v17)
    {
      break;
    }

LABEL_21:
    v18 = 0;
    v35 = v16 & 0xC000000000000001;
    v8 = v6;
    while (1)
    {
      if (v35)
      {
        v19 = MEMORY[0x20F326680](v18, v16);
      }

      else
      {
        if (v18 >= *(v16 + 16))
        {
          goto LABEL_32;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      v6 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v21 = [v19 accessories];
      sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
      sub_20D9EC18C(&qword_27C843840, &qword_27C844290, 0x277CD1650);
      v22 = sub_20DD651E4();

      sub_20DA134FC(v22);
      ++v18;
      if (v6 == v17)
      {
        v6 = v8;
        v23 = v38;
        v10 = MEMORY[0x277D84F90];
        goto LABEL_36;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v23 = v10;
LABEL_36:

  if (v23 >> 62)
  {
    v24 = sub_20DD655B4();
    if (!v24)
    {
      goto LABEL_48;
    }

LABEL_38:
    v38 = v10;
    result = sub_20DA4B068(0, v24 & ~(v24 >> 63), 0);
    if ((v24 & 0x8000000000000000) == 0)
    {
      v26 = 0;
      v27 = v38;
      do
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x20F326680](v26, v23);
        }

        else
        {
          v28 = *(v23 + 8 * v26 + 32);
        }

        v29 = v28;
        v30 = [v28 uniqueIdentifier];
        sub_20DD63714();

        v38 = v27;
        v32 = *(v27 + 16);
        v31 = *(v27 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_20DA4B068(v31 > 1, v32 + 1, 1);
          v27 = v38;
        }

        ++v26;
        *(v27 + 16) = v32 + 1;
        (*(v37 + 32))(v27 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v32, v6, v36);
      }

      while (v24 != v26);

      goto LABEL_49;
    }

    __break(1u);
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_38;
    }

LABEL_48:

    v27 = MEMORY[0x277D84F90];
LABEL_49:
    v33 = sub_20D9F9514(v27);

    return v33;
  }

  return result;
}

uint64_t sub_20DA862B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) <= *(a2 + 16) >> 3)
  {

    sub_20D9E9E58(v4);
    result = a2;
  }

  else
  {

    result = sub_20DA87A78(v4, a2);
  }

  *a3 = result;
  return result;
}

uint64_t sub_20DA86354()
{
  v1 = *(v0 + 16);

  return sub_20D9DD5A0(v2);
}

uint64_t static Collection<>.mediaStateInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20DD967E0;
  if (qword_27C842500 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27C844D88;
  v1 = qword_27C842508;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_27C844D90;
  v2 = qword_27C842510;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = qword_27C844D98;

  return v0;
}

Swift::Void __swiftcall MediaStateFetchManager.resetFetchedItems()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  if (*(*(v1 + 16) + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DA0, &qword_20DD967F8);
    sub_20DD65544();
    *(v1 + 16) = v2;
  }

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t MediaStateFetchManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MediaStateFetchManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_20DA86614(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_20DA866D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  sub_20DD64EB4();
  v5 = sub_20DD64D24();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = sub_20DD64D14();
  *a3 = result;
  return result;
}

uint64_t sub_20DA86760()
{
  v0 = sub_20DD64C44();
  __swift_allocate_value_buffer(v0, qword_27C84C6A8);
  __swift_project_value_buffer(v0, qword_27C84C6A8);
  return sub_20DD64C34();
}

uint64_t sub_20DA86820(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_20DA86950(a1, a2, &qword_280E02100, 0x277CD1970, &unk_280E020F0, sub_20D9F8670, sub_20DA884DC);
}

uint64_t sub_20DA868B8(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_20DA86950(a1, a2, &qword_27C843BB0, 0x277CD1B68, &qword_27C843930, sub_20D9F8684, sub_20DA88778);
}

uint64_t sub_20DA86950(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t (*a6)(unint64_t *, unint64_t, uint64_t *, uint64_t), unint64_t *a7)
{
  v72 = a4;
  v70 = a3;
  v8 = a2;
  v90 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v8 = MEMORY[0x277D84FA0];
    goto LABEL_63;
  }

  v9 = a1;
  v69 = a6;
  v68 = a7;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    v7 = sub_20D9D7510(0, v70, v72);
    sub_20D9EC18C(a5, v70, v72);
    sub_20DD65284();
    v9 = v85;
    v12 = v86;
    v13 = v87;
    v14 = v88;
    v15 = v89;
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v12 = a1 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a1 + 56);

    v14 = 0;
  }

  v80 = v9;
  v81 = v12;
  v82 = v13;
  v83 = v14;
  v71 = v13;
  v19 = (v13 + 64) >> 6;
  v77 = (v8 + 56);
  v84 = v15;
  v74 = v12;
  v75 = v9;
  for (i = v19; ; v19 = i)
  {
    if (v9 < 0)
    {
      v27 = sub_20DD655F4();
      if (!v27)
      {
        goto LABEL_62;
      }

      v78 = v27;
      sub_20D9D7510(0, v70, v72);
      swift_dynamicCast();
      v25 = v79;
      v23 = v14;
      v7 = v15;
      if (!v79)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v20 = v15;
      v21 = v14;
      if (v15)
      {
LABEL_20:
        v7 = (v20 - 1) & v20;
        v25 = *(*(v9 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
        v26 = v25;
        v23 = v21;
      }

      else
      {
        v22 = v19 <= v14 + 1 ? v14 + 1 : v19;
        v23 = v22 - 1;
        v24 = v14;
        while (1)
        {
          v21 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_66;
          }

          if (v21 >= v19)
          {
            break;
          }

          v20 = *(v12 + 8 * v21);
          ++v24;
          if (v20)
          {
            goto LABEL_20;
          }
        }

        v25 = 0;
        v7 = 0;
      }

      v80 = v9;
      v81 = v12;
      v82 = v71;
      v83 = v23;
      v84 = v7;
      if (!v25)
      {
        goto LABEL_62;
      }
    }

    v28 = *(v8 + 40);
    v29 = v25;
    v30 = sub_20DD65444();
    v31 = -1 << *(v8 + 32);
    v15 = v30 & ~v31;
    v9 = v15 >> 6;
    v21 = 1 << v15;
    if (((1 << v15) & v77[v15 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v14 = v23;
    v15 = v7;
    v12 = v74;
    v9 = v75;
  }

  v32 = ~v31;
  v33 = sub_20D9D7510(0, v70, v72);
  v34 = *(*(v8 + 48) + 8 * v15);
  v76 = v33;
  while (1)
  {
    v35 = sub_20DD65454();

    if (v35)
    {
      break;
    }

    v15 = (v15 + 1) & v32;
    v9 = v15 >> 6;
    v21 = 1 << v15;
    if (((1 << v15) & v77[v15 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v34 = *(*(v8 + 48) + 8 * v15);
  }

  v37 = *(v8 + 32);
  v67 = ((1 << v37) + 63) >> 6;
  v11 = 8 * v67;
  if ((v37 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v68 = &v67;
    MEMORY[0x28223BE20](v36);
    v39 = &v67 - ((v38 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v39, v77, v38);
    v40 = *&v39[8 * v9] & ~v21;
    v41 = *(v8 + 16);
    v70 = v39;
    *&v39[8 * v9] = v40;
    v42 = (v41 - 1);
    v15 = v74;
    v43 = v75;
    v44 = i;
LABEL_33:
    v72 = v42;
    while (v43 < 0)
    {
      v45 = sub_20DD655F4();
      if (!v45)
      {
        goto LABEL_61;
      }

      v78 = v45;
      swift_dynamicCast();
      v46 = v79;
      if (!v79)
      {
        goto LABEL_61;
      }

LABEL_50:
      v51 = *(v8 + 40);
      v52 = sub_20DD65444();
      v53 = v8;
      v54 = -1 << *(v8 + 32);
      v55 = v52 & ~v54;
      v56 = v55 >> 6;
      v9 = 1 << v55;
      if (((1 << v55) & v77[v55 >> 6]) != 0)
      {
        v57 = ~v54;
        while (1)
        {
          v58 = *(*(v53 + 48) + 8 * v55);
          v59 = sub_20DD65454();

          if (v59)
          {
            break;
          }

          v55 = (v55 + 1) & v57;
          v56 = v55 >> 6;
          v9 = 1 << v55;
          if (((1 << v55) & v77[v55 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v60 = v70[v56];
        v70[v56] = v60 & ~v9;
        v8 = v53;
        v15 = v74;
        v43 = v75;
        v42 = v72;
        v44 = i;
        if ((v60 & v9) != 0)
        {
          v42 = (v72 - 1);
          if (__OFSUB__(v72, 1))
          {
            __break(1u);
          }

          if (v72 == 1)
          {

            v8 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v8 = v53;
        v15 = v74;
        v43 = v75;
        v42 = v72;
        v44 = i;
      }
    }

    if (v7)
    {
      v21 = v23;
LABEL_48:
      v49 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v46 = *(*(v43 + 48) + ((v21 << 9) | (8 * v49)));
      v50 = v46;
      v48 = v21;
LABEL_49:
      v80 = v43;
      v81 = v15;
      v82 = v71;
      v83 = v48;
      v23 = v48;
      v84 = v7;
      if (!v46)
      {
LABEL_61:
        v8 = v69(v70, v67, v42, v8);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v44 <= v23 + 1)
    {
      v47 = v23 + 1;
    }

    else
    {
      v47 = v44;
    }

    v48 = v47 - 1;
    while (1)
    {
      v21 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v21 >= v44)
      {
        v46 = 0;
        v7 = 0;
        goto LABEL_49;
      }

      v7 = *(v15 + 8 * v21);
      ++v23;
      if (v7)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v63 = v11;

    v64 = v8;
    v65 = v63;
    if (swift_stdlib_isStackAllocationSafe())
    {

      v8 = v64;
      continue;
    }

    break;
  }

  v66 = swift_slowAlloc();
  memcpy(v66, v77, v65);
  v8 = (v68)(v66, v67, v64, v15, &v80);

  MEMORY[0x20F327D10](v66, -1, -1);
LABEL_62:
  sub_20D9C51CC();
LABEL_63:
  v61 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_20DA87014(uint64_t a1, uint64_t a2)
{
  v98 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D40, &unk_20DD94230);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v69 - v10);
  v12 = sub_20DD63FE4();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v89 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v69 - v17);
  MEMORY[0x28223BE20](v16);
  v84 = (&v69 - v20);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_54;
  }

  v70 = v11;
  v72 = v9;
  v22 = a1 + 64;
  v21 = *(a1 + 64);
  v23 = -1 << *(a1 + 32);
  v83 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v91 = (v24 & v21);
  v76 = (63 - v23) >> 6;
  v90 = v19 + 16;
  v81 = (v19 + 48);
  v82 = (v19 + 56);
  v80 = (v19 + 32);
  v86 = (a2 + 56);
  v71 = v19;
  v92 = (v19 + 8);

  v26 = 0;
  v73 = a1;
  for (i = a1 + 64; ; v22 = i)
  {
    v27 = v91;
    v28 = v26;
    if (v91)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v70;
      (*(v71 + 16))(v70, *(a1 + 48) + *(v71 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v76 <= (v26 + 1) ? v26 + 1 : v76;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v76)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v70;
    }

    v78 = *v82;
    v78(v32, v33, 1, v12);
    v93 = a1;
    v94 = v22;
    v95 = v83;
    v96 = v30;
    v97 = v2;
    v77 = *v81;
    if (v77(v32, 1, v12) == 1)
    {
      sub_20D9D76EC(v32, &qword_27C843D40, &unk_20DD94230);
      goto LABEL_52;
    }

    v75 = *v80;
    v75(v84, v32, v12);
    v34 = *(a2 + 40);
    v74 = sub_20DA893C4(&qword_27C844380, MEMORY[0x277D15B60]);
    v35 = sub_20DD64E24();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) != 0)
    {
      break;
    }

    (*v92)(v84, v12);
LABEL_22:
    v26 = v30;
    v91 = v2;
  }

  v69 = v92 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85 = ~v36;
  v37 = *(v71 + 72);
  v87 = *(v71 + 16);
  v88 = v37;
  while (1)
  {
    v87(v18, *(a2 + 48) + v88 * v26, v12);
    v38 = sub_20DA893C4(&qword_27C8434C0, MEMORY[0x277D15B60]);
    v39 = sub_20DD64E64();
    v91 = *v92;
    v91(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v85;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) == 0)
    {
      a1 = v73;
      v91(v84, v12);
      goto LABEL_22;
    }
  }

  v85 = v38;
  v40 = (v91)(v84, v12);
  v41 = *(a2 + 32);
  v69 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v69;
  a1 = v73;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v70 = &v69;
    MEMORY[0x28223BE20](v40);
    v43 = &v69 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v86, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = *(a2 + 16);
    v84 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v72;
    v47 = i;
    v48 = v76;
LABEL_26:
    v71 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v87(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v88, v12);
      v53 = 0;
LABEL_39:
      v78(v26, v53, 1, v12);
      v93 = a1;
      v94 = v47;
      v95 = v83;
      v96 = v30;
      v97 = v2;
      if (v77(v26, 1, v12) == 1)
      {
        sub_20D9D76EC(v26, &qword_27C843D40, &unk_20DD94230);
        a2 = sub_20D9F86AC(v84, v69, v71, a2);
        goto LABEL_52;
      }

      v75(v89, v26, v12);
      v54 = *(a2 + 40);
      v55 = sub_20DD64E24();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v86[v58 >> 6]) != 0)
      {
        v87(v18, *(v56 + 48) + v58 * v88, v12);
        v59 = sub_20DD64E64();
        v91(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v86[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v87(v18, *(v56 + 48) + v58 * v88, v12);
            v61 = sub_20DD64E64();
            v91(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v91(v89, v12);
        v62 = v84[v28];
        v84[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
        if ((v62 & v22) != 0)
        {
          v46 = v71 - 1;
          if (__OFSUB__(v71, 1))
          {
            __break(1u);
          }

          if (v71 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v91(v89, v12);
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v65 = v25;

    v84 = a2;
    v66 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v67 = v84;

      a2 = v67;
      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v86, v66);
  a2 = sub_20DA88A1C(v68, v69, v84, v26, &v93);

  MEMORY[0x20F327D10](v68, -1, -1);
LABEL_52:
  sub_20D9C51CC();
LABEL_54:
  v63 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_20DA87A78(uint64_t a1, uint64_t a2)
{
  v98 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v69 - v10);
  v12 = sub_20DD63744();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v89 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v69 - v17);
  MEMORY[0x28223BE20](v16);
  v84 = (&v69 - v20);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_54;
  }

  v70 = v11;
  v72 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v83 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v91 = (v24 & v21);
  v76 = (63 - v23) >> 6;
  v90 = v19 + 16;
  v81 = (v19 + 48);
  v82 = (v19 + 56);
  v80 = (v19 + 32);
  v86 = (a2 + 56);
  v71 = v19;
  v92 = (v19 + 8);

  v26 = 0;
  v73 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v91;
    v28 = v26;
    if (v91)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v70;
      (*(v71 + 16))(v70, *(a1 + 48) + *(v71 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v76 <= (v26 + 1) ? v26 + 1 : v76;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v76)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v70;
    }

    v78 = *v82;
    v78(v32, v33, 1, v12);
    v93 = a1;
    v94 = v22;
    v95 = v83;
    v96 = v30;
    v97 = v2;
    v77 = *v81;
    if (v77(v32, 1, v12) == 1)
    {
      sub_20D9D76EC(v32, &unk_27C843A70, &qword_20DD94260);
      goto LABEL_52;
    }

    v75 = *v80;
    v75(v84, v32, v12);
    v34 = *(a2 + 40);
    v74 = sub_20DA893C4(&qword_280E02290, MEMORY[0x277CC95F0]);
    v35 = sub_20DD64E24();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) != 0)
    {
      break;
    }

    (*v92)(v84, v12);
LABEL_22:
    v26 = v30;
    v91 = v2;
  }

  v69 = v92 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85 = ~v36;
  v37 = *(v71 + 72);
  v87 = *(v71 + 16);
  v88 = v37;
  while (1)
  {
    v87(v18, *(a2 + 48) + v88 * v26, v12);
    v38 = sub_20DA893C4(&qword_280E02288, MEMORY[0x277CC95F0]);
    v39 = sub_20DD64E64();
    v91 = *v92;
    v91(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v85;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) == 0)
    {
      a1 = v73;
      v91(v84, v12);
      goto LABEL_22;
    }
  }

  v85 = v38;
  v40 = (v91)(v84, v12);
  v41 = *(a2 + 32);
  v69 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v69;
  a1 = v73;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v70 = &v69;
    MEMORY[0x28223BE20](v40);
    v43 = &v69 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v86, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = *(a2 + 16);
    v84 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v72;
    v47 = i;
    v48 = v76;
LABEL_26:
    v71 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v87(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v88, v12);
      v53 = 0;
LABEL_39:
      v78(v26, v53, 1, v12);
      v93 = a1;
      v94 = v47;
      v95 = v83;
      v96 = v30;
      v97 = v2;
      if (v77(v26, 1, v12) == 1)
      {
        sub_20D9D76EC(v26, &unk_27C843A70, &qword_20DD94260);
        a2 = sub_20D9F8BD4(v84, v69, v71, a2);
        goto LABEL_52;
      }

      v75(v89, v26, v12);
      v54 = *(a2 + 40);
      v55 = sub_20DD64E24();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v86[v58 >> 6]) != 0)
      {
        v87(v18, *(v56 + 48) + v58 * v88, v12);
        v59 = sub_20DD64E64();
        v91(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v86[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v87(v18, *(v56 + 48) + v58 * v88, v12);
            v61 = sub_20DD64E64();
            v91(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v91(v89, v12);
        v62 = v84[v28];
        v84[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
        if ((v62 & v22) != 0)
        {
          v46 = v71 - 1;
          if (__OFSUB__(v71, 1))
          {
            __break(1u);
          }

          if (v71 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v91(v89, v12);
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v65 = v25;

    v84 = a2;
    v66 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v67 = v84;

      a2 = v67;
      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v86, v66);
  a2 = sub_20DA88EF0(v68, v69, v84, v26, &v93);

  MEMORY[0x20F327D10](v68, -1, -1);
LABEL_52:
  sub_20D9C51CC();
LABEL_54:
  v63 = *MEMORY[0x277D85DE8];
  return a2;
}

void sub_20DA884DC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v34 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_20DD655F4())
          {
            goto LABEL_30;
          }

          sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
          swift_dynamicCast();
          v12 = v35;
          if (!v35)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_20D9F8670(a1, a2, v31, a3);
            return;
          }
        }

        v18 = *(a3 + 40);
        v19 = sub_20DD65444();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
        v24 = *(*(a3 + 48) + 8 * v21);
        v25 = sub_20DD65454();

        if (v25)
        {
          break;
        }

        v26 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          v27 = *(*(a3 + 48) + 8 * v21);
          v28 = sub_20DD65454();

          if (v28)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:

      v29 = a1[v22];
      a1[v22] = v29 & ~v23;
      v5 = a5;
    }

    while ((v29 & v23) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v31 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_20DA88778(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v34 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_20DD655F4())
          {
            goto LABEL_29;
          }

          sub_20D9D7510(0, &qword_27C843BB0, 0x277CD1B68);
          swift_dynamicCast();
          v12 = v35;
          if (!v35)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            sub_20D9F8684(a1, a2, v31, a3);
            return;
          }
        }

        v18 = *(a3 + 40);
        v19 = sub_20DD65444();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_20D9D7510(0, &qword_27C843BB0, 0x277CD1B68);
        v24 = *(*(a3 + 48) + 8 * v21);
        v25 = sub_20DD65454();

        if (v25)
        {
          break;
        }

        v26 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          v27 = *(*(a3 + 48) + 8 * v21);
          v28 = sub_20DD65454();

          if (v28)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:

      v29 = a1[v22];
      a1[v22] = v29 & ~v23;
      v5 = a5;
    }

    while ((v29 & v23) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v31 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_20DA88A1C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D40, &unk_20DD94230);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_20DD63FE4();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_20D9D76EC(v12, &qword_27C843D40, &unk_20DD94230);
          v48 = v64;

          return sub_20D9F86AC(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_20DA893C4(&qword_27C844380, MEMORY[0x277D15B60]);
        v38 = sub_20DD64E24();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_20DA893C4(&qword_27C8434C0, MEMORY[0x277D15B60]);
        v46 = sub_20DD64E64();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_20DA88EF0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_20DD63744();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_20D9D76EC(v12, &unk_27C843A70, &qword_20DD94260);
          v48 = v64;

          return sub_20D9F8BD4(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_20DA893C4(&qword_280E02290, MEMORY[0x277CC95F0]);
        v38 = sub_20DD64E24();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_20DA893C4(&qword_280E02288, MEMORY[0x277CC95F0]);
        v46 = sub_20DD64E64();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_20DA893C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20DA8940C(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_20D9C3ED4(a1, a2);
}

uint64_t sub_20DA89464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_20D9D7558(a3, v24 - v10, &qword_27C8443F0, &qword_20DD93820);
  v12 = sub_20DD65114();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20D9D76EC(v11, &qword_27C8443F0, &qword_20DD93820);
  }

  else
  {
    sub_20DD65104();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_20DD65094();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_20DD64EF4() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844F40, &qword_20DD953C0);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844F40, &qword_20DD953C0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_20DA89720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_20D9D7558(a3, v24 - v10, &qword_27C8443F0, &qword_20DD93820);
  v12 = sub_20DD65114();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20D9D76EC(v11, &qword_27C8443F0, &qword_20DD93820);
  }

  else
  {
    sub_20DD65104();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_20DD65094();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_20DD64EF4() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_20DA899CC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_20DA89A38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_20DA89B14(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v18 - v13;
  sub_20D9D7558(a1, &v18 - v13, a5, a6);
  v15 = *a2;
  v16 = *a7;
  swift_beginAccess();
  sub_20DA89D04(v14, v15 + v16, a5, a6);
  return swift_endAccess();
}

uint64_t sub_20DA89C08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_20D9D7558(v4 + v8, a4, a2, a3);
}

uint64_t sub_20DA89C90(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_20DA89D04(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_20DA89D04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_20DA89DCC()
{
  v1 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20DA89E10(char a1)
{
  v3 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_20DA8FD3C();
}

uint64_t (*sub_20DA89E64(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20DA89EC8;
}

uint64_t sub_20DA89EC8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_20DA8FD3C();
  }

  return result;
}

uint64_t sub_20DA89EFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844AF0, &qword_20DD96860);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21[-v3];
  v5 = type metadata accessor for HFHomeActivityState();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v21[-v11];
  v13 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  swift_beginAccess();
  result = 0;
  v15 = *(v0 + v13);
  if (v15 != 2)
  {
    if (v15)
    {
      v16 = OBJC_IVAR___HFActivityStateManager_currentHomeActivityState;
      swift_beginAccess();
      sub_20D9D7558(v0 + v16, v4, &qword_27C844AF0, &qword_20DD96860);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        sub_20D9D76EC(v4, &qword_27C844AF0, &qword_20DD96860);
        swift_storeEnumTagMultiPayload();
        v17 = HFHomeActivityState.title.getter();
        v18 = v10;
      }

      else
      {
        sub_20DA900E8(v4, v12, type metadata accessor for HFHomeActivityState);
        v17 = HFHomeActivityState.title.getter();
        v18 = v12;
      }

      sub_20DA90088(v18, type metadata accessor for HFHomeActivityState);
    }

    else
    {
      v19 = sub_20DD64E74();
      v20 = HFLocalizedString(v19);

      v17 = sub_20DD64EB4();
    }

    return v17;
  }

  return result;
}

uint64_t sub_20DA8A198()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844AF0, &qword_20DD96860);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v20[-v6];
  v8 = type metadata accessor for HFHomeActivityState();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  swift_beginAccess();
  v14 = *(v0 + v13);
  if (v14 != 2 && (v14 & 1) != 0)
  {
    v15 = OBJC_IVAR___HFActivityStateManager_currentHomeActivityState;
    swift_beginAccess();
    sub_20D9D7558(v0 + v15, v7, &qword_27C844AF0, &qword_20DD96860);
    v16 = *(v9 + 48);
    if (v16(v7, 1, v8) == 1)
    {
      v17 = v7;
    }

    else
    {
      sub_20DA900E8(v7, v12, type metadata accessor for HFHomeActivityState);
      HFHomeActivityState.mainState.getter(v5);
      if (v16(v5, 1, v8) != 1)
      {
        v19 = HFHomeActivityState.symbolName.getter();
        sub_20DA90088(v12, type metadata accessor for HFHomeActivityState);
        sub_20DA90088(v5, type metadata accessor for HFHomeActivityState);
        return v19;
      }

      sub_20DA90088(v12, type metadata accessor for HFHomeActivityState);
      v17 = v5;
    }

    sub_20D9D76EC(v17, &qword_27C844AF0, &qword_20DD96860);
  }

  return 0;
}

uint64_t sub_20DA8A42C()
{
  v90 = sub_20DD63554();
  v89 = *(v90 - 8);
  v1 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v87 = &v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_20DD63574();
  v86 = *(v88 - 8);
  v3 = *(v86 + 64);
  MEMORY[0x28223BE20](v88);
  v85 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v95 = &v82 - v7;
  v8 = sub_20DD636C4();
  v96 = *(v8 - 8);
  v97 = v8;
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v8);
  v84 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HoldState(0);
  v99 = *(v11 - 8);
  v100 = v11;
  v12 = *(v99 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v92 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v91 = &v82 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE0, &qword_20DD96878);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v98 = &v82 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DD0, &unk_20DD96868);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v94 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v93 = &v82 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v101 = &v82 - v26;
  MEMORY[0x28223BE20](v25);
  v102 = &v82 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844AF0, &qword_20DD96860);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v82 - v30;
  v32 = type metadata accessor for HFHomeActivityState();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v82 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v82 - v39;
  MEMORY[0x28223BE20](v38);
  v103 = &v82 - v41;
  v42 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  swift_beginAccess();
  v43 = 0;
  v44 = *(v0 + v42);
  if (v44 != 2)
  {
    if ((v44 & 1) == 0)
    {
      v49 = sub_20DD64E74();
      v50 = HFLocalizedString(v49);

      v43 = sub_20DD64EB4();
      return v43;
    }

    v45 = OBJC_IVAR___HFActivityStateManager_currentHomeActivityState;
    swift_beginAccess();
    sub_20D9D7558(v0 + v45, v31, &qword_27C844AF0, &qword_20DD96860);
    if ((*(v33 + 48))(v31, 1, v32) == 1)
    {
      v46 = &qword_27C844AF0;
      v47 = &qword_20DD96860;
      v48 = v31;
LABEL_5:
      sub_20D9D76EC(v48, v46, v47);
      return 0;
    }

    v52 = v103;
    sub_20DA900E8(v31, v103, type metadata accessor for HFHomeActivityState);
    v53 = OBJC_IVAR___HFActivityStateManager_holdState;
    swift_beginAccess();
    v54 = v102;
    sub_20D9D7558(v0 + v53, v102, &unk_27C844DD0, &unk_20DD96868);
    sub_20DA90020(v52, v40, type metadata accessor for HFHomeActivityState);
    if ((swift_getEnumCaseMultiPayload() & 0xFFFFFFFC) != 4)
    {
      sub_20DA90088(v40, type metadata accessor for HFHomeActivityState);
      v43 = HFHomeActivityState.transitionalStateETA.getter();
      sub_20D9D76EC(v54, &unk_27C844DD0, &unk_20DD96868);
      sub_20DA90088(v52, type metadata accessor for HFHomeActivityState);
      return v43;
    }

    sub_20DA90020(v52, v37, type metadata accessor for HFHomeActivityState);
    if ((swift_getEnumCaseMultiPayload() & 0xFFFFFFFC) != 4)
    {
      sub_20DA90088(v37, type metadata accessor for HFHomeActivityState);
      sub_20D9D76EC(v54, &unk_27C844DD0, &unk_20DD96868);
      sub_20DA90088(v52, type metadata accessor for HFHomeActivityState);
      return 0;
    }

    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
    v82 = *(v55 - 8);
    v56 = *(v82 + 56);
    v57 = v101;
    v83 = v55;
    v56(v101, 1, 1);
    v58 = v99;
    v59 = v100;
    (*(v99 + 56))(v57, 0, 1, v100);
    v60 = *(v16 + 48);
    v61 = v98;
    sub_20D9D7558(v54, v98, &unk_27C844DD0, &unk_20DD96868);
    sub_20D9D7558(v57, v61 + v60, &unk_27C844DD0, &unk_20DD96868);
    v62 = *(v58 + 48);
    if (v62(v61, 1, v59) == 1)
    {
      sub_20D9D76EC(v57, &unk_27C844DD0, &unk_20DD96868);
      if (v62(v61 + v60, 1, v59) == 1)
      {
        sub_20D9D76EC(v61, &unk_27C844DD0, &unk_20DD96868);
LABEL_24:
        sub_20D9D76EC(v54, &unk_27C844DD0, &unk_20DD96868);
        sub_20DA90088(v52, type metadata accessor for HFHomeActivityState);
        return 0;
      }
    }

    else
    {
      v63 = v93;
      sub_20D9D7558(v61, v93, &unk_27C844DD0, &unk_20DD96868);
      if (v62(v61 + v60, 1, v59) != 1)
      {
        v70 = v61 + v60;
        v71 = v91;
        sub_20DA900E8(v70, v91, type metadata accessor for HoldState);
        v72 = _s4Home9HoldStateO2eeoiySbAC_ACtFZ_0(v63, v71);
        sub_20DA90088(v71, type metadata accessor for HoldState);
        sub_20D9D76EC(v101, &unk_27C844DD0, &unk_20DD96868);
        sub_20DA90088(v63, type metadata accessor for HoldState);
        sub_20D9D76EC(v61, &unk_27C844DD0, &unk_20DD96868);
        if (v72)
        {
          goto LABEL_24;
        }

LABEL_19:
        v64 = v94;
        sub_20D9D7558(v54, v94, &unk_27C844DD0, &unk_20DD96868);
        if (v62(v64, 1, v59) == 1)
        {
          sub_20D9D76EC(v54, &unk_27C844DD0, &unk_20DD96868);
          sub_20DA90088(v52, type metadata accessor for HFHomeActivityState);
          sub_20D9D76EC(v64, &unk_27C844DD0, &unk_20DD96868);
          v65 = v95;
          (*(v96 + 56))(v95, 1, 1, v97);
        }

        else
        {
          v66 = v92;
          sub_20DA90020(v64, v92, type metadata accessor for HoldState);
          v67 = (*(v82 + 48))(v66, 1, v83);
          v69 = v96;
          v68 = v97;
          v65 = v95;
          if (v67 == 1)
          {
            (*(v96 + 56))(v95, 1, 1, v97);
            sub_20DA90088(v66, type metadata accessor for HoldState);
          }

          else
          {
            (*(v96 + 32))(v95, v66, v97);
            (*(v69 + 56))(v65, 0, 1, v68);
          }

          sub_20DA90088(v64, type metadata accessor for HoldState);
          if ((*(v69 + 48))(v65, 1, v68) != 1)
          {
            v73 = v84;
            (*(v69 + 32))(v84, v65, v68);
            v74 = sub_20DD64E74();
            v75 = HFLocalizedString(v74);

            sub_20DD64EB4();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
            v76 = swift_allocObject();
            *(v76 + 16) = xmmword_20DD93A70;
            v77 = v85;
            sub_20DD63564();
            v78 = v87;
            sub_20DD63544();
            v79 = sub_20DD636A4();
            v81 = v80;
            (*(v89 + 8))(v78, v90);
            (*(v86 + 8))(v77, v88);
            *(v76 + 56) = MEMORY[0x277D837D0];
            *(v76 + 64) = sub_20DA52BE8();
            *(v76 + 32) = v79;
            *(v76 + 40) = v81;
            v43 = sub_20DD64EC4();

            (*(v69 + 8))(v73, v68);
            sub_20D9D76EC(v102, &unk_27C844DD0, &unk_20DD96868);
            sub_20DA90088(v103, type metadata accessor for HFHomeActivityState);
            return v43;
          }

          sub_20D9D76EC(v54, &unk_27C844DD0, &unk_20DD96868);
          sub_20DA90088(v103, type metadata accessor for HFHomeActivityState);
        }

        v46 = &unk_27C843810;
        v47 = &qword_20DD93F00;
        v48 = v65;
        goto LABEL_5;
      }

      sub_20D9D76EC(v101, &unk_27C844DD0, &unk_20DD96868);
      sub_20DA90088(v63, type metadata accessor for HoldState);
    }

    sub_20D9D76EC(v61, &qword_27C844DE0, &qword_20DD96878);
    goto LABEL_19;
  }

  return v43;
}

id ActivityStateManager.init(home:)(void *a1)
{
  v3 = OBJC_IVAR___HFActivityStateManager_currentHomeActivityState;
  v4 = type metadata accessor for HFHomeActivityState();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = OBJC_IVAR___HFActivityStateManager_holdState;
  v6 = type metadata accessor for HoldState(0);
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  v7 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  v1[OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable] = 2;
  *&v1[OBJC_IVAR___HFActivityStateManager_home] = a1;
  v8 = a1;
  v9 = [v8 residentDevices];
  sub_20D9D7510(0, &qword_27C844E08, 0x277CD1D68);
  v10 = sub_20DD64FD4();

  v29 = MEMORY[0x277D84F90];
  if (v10 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    v25 = v7;
    v26 = v1;
    v27 = v8;
    v8 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x20F326680](v8, v10);
      }

      else
      {
        if (v8 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v12 = *(v10 + 8 * v8 + 32);
      }

      v13 = v12;
      v7 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ([v12 hf_isReachable])
      {
        sub_20DD65754();
        v14 = *(v29 + 16);
        sub_20DD65784();
        sub_20DD65794();
        v1 = &v29;
        sub_20DD65764();
      }

      else
      {
      }

      ++v8;
      if (v7 == i)
      {
        v15 = v29;
        v1 = v26;
        v8 = v27;
        v7 = v25;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_18:

  if (v15 < 0 || (v15 & 0x4000000000000000) != 0)
  {
    v16 = sub_20DD655B4();
  }

  else
  {
    v16 = *(v15 + 16);
  }

  swift_beginAccess();
  v1[v7] = v16 != 0;
  v28.receiver = v1;
  v28.super_class = type metadata accessor for ActivityStateManager(0);
  v17 = objc_msgSendSuper2(&v28, sel_init);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 sharedDispatcher];
  [v20 addHomeObserver_];

  v21 = [v18 sharedDispatcher];
  [v21 addResidentDeviceObserver_];

  v22 = [v18 sharedDispatcher];
  [v22 addHomeManagerObserver_];

  v23 = [objc_opt_self() defaultCenter];
  [v23 addObserver:v19 selector:sel_fetchActivityState name:*MEMORY[0x277D76758] object:0];

  return v19;
}

uint64_t sub_20DA8B628()
{
  v1 = v0[5];
  v2 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 == 2 || (v3 & 1) == 0)
  {
    v9 = v0[1];

    return v9();
  }

  else
  {
    v4 = v0[5];
    v5 = swift_task_alloc();
    v0[6] = v5;
    *(v5 + 16) = v4;
    v6 = *(MEMORY[0x277D85A40] + 4);
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_20DA8B784;
    v8 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v7, 0, 0, 0xD00000000000001ELL, 0x800000020DD9A580, sub_20DA92850, v5, v8);
  }
}

uint64_t sub_20DA8B784()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_20DA8B8B8;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_20DA8B8A0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DA8B8B8()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

void sub_20DA8B91C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844F30, &qword_20DD96A18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  if (qword_27C842520 != -1)
  {
    swift_once();
  }

  v9 = sub_20DD64C44();
  __swift_project_value_buffer(v9, qword_27C844DB0);
  v10 = a2;
  v11 = sub_20DD64C24();
  v12 = sub_20DD65384();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v4;
    aBlock[0] = v29;
    *v13 = 136315650;
    *(v13 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, aBlock);
    v28 = v12;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_20D9E0B38(0xD00000000000001ELL, 0x800000020DD9A580, aBlock);
    *(v13 + 22) = 2080;
    v14 = [*&v10[OBJC_IVAR___HFActivityStateManager_home] hf_displayName];
    v15 = v8;
    v16 = a1;
    v17 = sub_20DD64EB4();
    v19 = v18;

    v20 = sub_20D9E0B38(v17, v19, aBlock);

    *(v13 + 24) = v20;
    a1 = v16;
    v8 = v15;
    _os_log_impl(&dword_20D9BF000, v11, v28, "%s - %s: Fetching home activity state for home: %s", v13, 0x20u);
    v21 = v29;
    swift_arrayDestroy();
    v4 = v30;
    MEMORY[0x20F327D10](v21, -1, -1);
    MEMORY[0x20F327D10](v13, -1, -1);
  }

  v22 = *&v10[OBJC_IVAR___HFActivityStateManager_home];
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v8, a1, v4);
  v24 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  (*(v5 + 32))(v25 + v24, v8, v4);
  aBlock[4] = sub_20DA9403C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20DA8CC94;
  aBlock[3] = &block_descriptor_100;
  v26 = _Block_copy(aBlock);

  [v22 fetchCurrentHomeActivityState_];
  _Block_release(v26);
}

void sub_20DA8BCE4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v137 = a3;
  v136 = a2;
  v139 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DD0, &unk_20DD96868);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v135 = &v114 - v12;
  v138 = sub_20DD636C4();
  v140 = *(v138 - 8);
  v13 = *(v140 + 64);
  MEMORY[0x28223BE20](v138);
  v123 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HoldState(0);
  v132 = *(v15 - 8);
  v133 = v15;
  v16 = *(v132 + 64);
  MEMORY[0x28223BE20](v15);
  v134 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20DD63554();
  v129 = *(v18 - 8);
  v130 = v18;
  v19 = *(v129 + 64);
  MEMORY[0x28223BE20](v18);
  v127 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_20DD63574();
  v126 = *(v128 - 8);
  v21 = *(v126 + 64);
  MEMORY[0x28223BE20](v128);
  v125 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for HFHomeActivityState();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v131 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v124 = &v114 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v114 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v114 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v114 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v114 - v42;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v45 = Strong;
  if (a5)
  {
    v46 = a5;
    if (qword_27C842520 != -1)
    {
      swift_once();
    }

    v47 = sub_20DD64C44();
    __swift_project_value_buffer(v47, qword_27C844DB0);
    v48 = a5;
    v49 = v45;
    v50 = sub_20DD64C24();
    v51 = sub_20DD65364();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v122 = a7;
      v55 = v54;
      v141[0] = v54;
      *v52 = 136315906;
      *(v52 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, v141);
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_20D9E0B38(0xD00000000000001ELL, 0x800000020DD9A580, v141);
      *(v52 + 22) = 2080;
      v56 = [*&v49[OBJC_IVAR___HFActivityStateManager_home] hf_displayName];
      v57 = sub_20DD64EB4();
      v59 = v58;

      v60 = sub_20D9E0B38(v57, v59, v141);

      *(v52 + 24) = v60;
      *(v52 + 32) = 2112;
      v61 = a5;
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 34) = v62;
      *v53 = v62;
      _os_log_impl(&dword_20D9BF000, v50, v51, "%s - %s: Error fetching home activity state for home: %s, error: %@", v52, 0x2Au);
      sub_20D9D76EC(v53, &unk_27C843630, &qword_20DD94080);
      MEMORY[0x20F327D10](v53, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v55, -1, -1);
      MEMORY[0x20F327D10](v52, -1, -1);
    }

    v141[0] = a5;
    v63 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844F30, &qword_20DD96A18);
    sub_20DD650A4();
    sub_20DA902F8(a5);

    return;
  }

  v121 = a4;
  v122 = a7;
  if (qword_27C842520 != -1)
  {
    swift_once();
  }

  v64 = sub_20DD64C44();
  __swift_project_value_buffer(v64, qword_27C844DB0);
  sub_20D9D7558(v137, v43, &unk_27C843810, &qword_20DD93F00);
  sub_20D9D7558(v121, v41, &unk_27C843810, &qword_20DD93F00);
  v65 = v45;
  v66 = sub_20DD64C24();
  v67 = sub_20DD65384();
  v120 = v65;

  if (os_log_type_enabled(v66, v67))
  {
    v118 = v67;
    v68 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v141[0] = v117;
    *v68 = 136316674;
    *(v68 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, v141);
    *(v68 + 12) = 2080;
    *(v68 + 14) = sub_20D9E0B38(0xD00000000000001ELL, 0x800000020DD9A580, v141);
    *(v68 + 22) = 2080;
    (*(v140 + 56))(v38, 1, 1, v138);
    v119 = v66;
    if (v139 > 3)
    {
      if (v139 > 5)
      {
        if (v139 == 6 || v139 == 7)
        {
          goto LABEL_14;
        }
      }

      else if (v139 == 5)
      {
LABEL_14:
        sub_20DA47868(v38, v26);
LABEL_23:
        swift_storeEnumTagMultiPayload();
        v72 = HFHomeActivityState.title.getter();
        v74 = v73;
        sub_20DA90088(v26, type metadata accessor for HFHomeActivityState);
        v75 = sub_20D9E0B38(v72, v74, v141);

        *(v68 + 24) = v75;
        *(v68 + 32) = 2080;
        v76 = [*&v120[OBJC_IVAR___HFActivityStateManager_home] hf_displayName];
        v77 = sub_20DD64EB4();
        v79 = v78;

        v80 = sub_20D9E0B38(v77, v79, v141);

        *(v68 + 34) = v80;
        *(v68 + 42) = 2080;
        if (v136)
        {
          v81 = 1702195828;
        }

        else
        {
          v81 = 0x65736C6166;
        }

        if (v136)
        {
          v82 = 0xE400000000000000;
        }

        else
        {
          v82 = 0xE500000000000000;
        }

        v83 = sub_20D9E0B38(v81, v82, v141);

        *(v68 + 44) = v83;
        *(v68 + 52) = 2080;
        sub_20D9D7558(v43, v35, &unk_27C843810, &qword_20DD93F00);
        v84 = v140;
        v85 = *(v140 + 48);
        v86 = v138;
        if (v85(v35, 1, v138) == 1)
        {
          sub_20D9D76EC(v35, &unk_27C843810, &qword_20DD93F00);
          v87 = 0xE400000000000000;
          v88 = 1701736270;
        }

        else
        {
          v89 = v125;
          sub_20DD63564();
          v116 = v85;
          v90 = v127;
          sub_20DD63544();
          v115 = sub_20DD636A4();
          v87 = v91;
          v92 = v90;
          v85 = v116;
          (*(v129 + 8))(v92, v130);
          v93 = v89;
          v88 = v115;
          (*(v126 + 8))(v93, v128);
          (*(v84 + 8))(v35, v86);
        }

        v70 = v86;
        sub_20D9D76EC(v43, &unk_27C843810, &qword_20DD93F00);
        v94 = sub_20D9E0B38(v88, v87, v141);

        *(v68 + 54) = v94;
        *(v68 + 62) = 2080;
        v95 = v124;
        sub_20D9D7558(v41, v124, &unk_27C843810, &qword_20DD93F00);
        v96 = v85(v95, 1, v86);
        v97 = 1701736270;
        if (v96 == 1)
        {
          sub_20D9D76EC(v95, &unk_27C843810, &qword_20DD93F00);
          v98 = 0xE400000000000000;
          v69 = v134;
          v71 = v140;
        }

        else
        {
          v99 = v125;
          sub_20DD63564();
          v100 = v127;
          sub_20DD63544();
          v97 = sub_20DD636A4();
          v98 = v101;
          (*(v129 + 8))(v100, v130);
          (*(v126 + 8))(v99, v128);
          v71 = v140;
          (*(v140 + 8))(v95, v70);
          v69 = v134;
        }

        sub_20D9D76EC(v41, &unk_27C843810, &qword_20DD93F00);
        v102 = sub_20D9E0B38(v97, v98, v141);

        *(v68 + 64) = v102;
        v103 = v119;
        _os_log_impl(&dword_20D9BF000, v119, v118, "%s - %s: Fetched new activity state: %s for home: %s, isActivityStateHoldActive: %s , activityStateHoldEnd: %s, transitionalStateEnd: %s", v68, 0x48u);
        v104 = v117;
        swift_arrayDestroy();
        MEMORY[0x20F327D10](v104, -1, -1);
        MEMORY[0x20F327D10](v68, -1, -1);

        goto LABEL_36;
      }
    }

    sub_20D9D76EC(v38, &unk_27C843810, &qword_20DD93F00);
    goto LABEL_23;
  }

  sub_20D9D76EC(v41, &unk_27C843810, &qword_20DD93F00);
  sub_20D9D76EC(v43, &unk_27C843810, &qword_20DD93F00);
  v69 = v134;
  v70 = v138;
  v71 = v140;
LABEL_36:
  v105 = 1;
  if (v136)
  {
    v106 = v131;
    sub_20D9D7558(v137, v131, &unk_27C843810, &qword_20DD93F00);
    if ((*(v71 + 48))(v106, 1, v70) == 1)
    {
      sub_20D9D76EC(v106, &unk_27C843810, &qword_20DD93F00);
      v105 = 1;
    }

    else
    {
      v107 = *(v71 + 32);
      v108 = v123;
      v107(v123, v106, v70);
      v107(v69, v108, v70);
      v105 = 0;
    }
  }

  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
  (*(*(v109 - 8) + 56))(v69, v105, 1, v109);
  v110 = v135;
  sub_20DA90020(v69, v135, type metadata accessor for HoldState);
  (*(v132 + 56))(v110, 0, 1, v133);
  v111 = OBJC_IVAR___HFActivityStateManager_holdState;
  v112 = v120;
  swift_beginAccess();
  sub_20DA89D04(v110, &v112[v111], &unk_27C844DD0, &unk_20DD96868);
  swift_endAccess();
  sub_20DA8D0C8(v139, v121);
  v113 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  swift_beginAccess();
  v112[v113] = 1;
  sub_20DA8FD3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844F30, &qword_20DD96A18);
  sub_20DD650B4();

  sub_20DA90088(v69, type metadata accessor for HoldState);
}

uint64_t sub_20DA8CC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v20 = *(a1 + 32);
  v19 = *(a1 + 40);
  if (a4)
  {
    sub_20DD63674();
    v21 = sub_20DD636C4();
    (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
  }

  else
  {
    v22 = sub_20DD636C4();
    (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  }

  if (a5)
  {
    sub_20DD63674();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = sub_20DD636C4();
  (*(*(v24 - 8) + 56))(v16, v23, 1, v24);

  v25 = a6;
  v20(a2, a3, v18, v16, a6);

  sub_20D9D76EC(v16, &unk_27C843810, &qword_20DD93F00);
  return sub_20D9D76EC(v18, &unk_27C843810, &qword_20DD93F00);
}

uint64_t sub_20DA8D020(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20DA8021C;

  return sub_20DA8B608();
}

uint64_t sub_20DA8D0C8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for HFHomeActivityState();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844AF0, &qword_20DD96860);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v20 - v16;
  sub_20D9D7558(a2, v13, &unk_27C843810, &qword_20DD93F00);
  if (a1 <= 3)
  {
    goto LABEL_11;
  }

  if (a1 > 5)
  {
    if (a1 == 6 || a1 == 7)
    {
      goto LABEL_4;
    }

LABEL_11:
    sub_20D9D76EC(v13, &unk_27C843810, &qword_20DD93F00);
    goto LABEL_12;
  }

  if (a1 == 4)
  {
    goto LABEL_11;
  }

LABEL_4:
  sub_20DA47868(v13, v9);
LABEL_12:
  swift_storeEnumTagMultiPayload();
  sub_20DA900E8(v9, v17, type metadata accessor for HFHomeActivityState);
  (*(v6 + 56))(v17, 0, 1, v5);
  v18 = OBJC_IVAR___HFActivityStateManager_currentHomeActivityState;
  swift_beginAccess();
  sub_20DA89D04(v17, v2 + v18, &qword_27C844AF0, &qword_20DD96860);
  return swift_endAccess();
}

uint64_t sub_20DA8D3EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v20 - v3;
  if (qword_27C842520 != -1)
  {
    swift_once();
  }

  v5 = sub_20DD64C44();
  __swift_project_value_buffer(v5, qword_27C844DB0);
  v6 = v0;
  v7 = sub_20DD64C24();
  v8 = sub_20DD65384();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, &v21);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20D9E0B38(0xD000000000000014, 0x800000020DD9A740, &v21);
    *(v9 + 22) = 2080;
    v11 = [*&v6[OBJC_IVAR___HFActivityStateManager_home] hf_displayName];
    v12 = sub_20DD64EB4();
    v14 = v13;

    v15 = sub_20D9E0B38(v12, v14, &v21);

    *(v9 + 24) = v15;
    _os_log_impl(&dword_20D9BF000, v7, v8, "%s - %s: App entering foreground. Updating home activity state for home: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v10, -1, -1);
    MEMORY[0x20F327D10](v9, -1, -1);
  }

  v16 = sub_20DD65114();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v6;
  v18 = v6;
  sub_20DA89720(0, 0, v4, &unk_20DD969A8, v17);
}

uint64_t sub_20DA8D6E4()
{
  v1 = v0[5];
  v2 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 == 2 || (v3 & 1) == 0)
  {
    v9 = v0[1];

    return v9();
  }

  else
  {
    v4 = v0[5];
    v5 = swift_task_alloc();
    v0[6] = v5;
    *(v5 + 16) = v4;
    v6 = *(MEMORY[0x277D85A40] + 4);
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_20DA8D840;
    v8 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v7, 0, 0, 0xD00000000000001ELL, 0x800000020DD9A580, sub_20DA94138, v5, v8);
  }
}

uint64_t sub_20DA8D840()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_20DA94134;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_20DA94114;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DA8D9A4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for HFHomeActivityState();
  v2[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA8DA70, 0, 0);
}

uint64_t sub_20DA8DA70()
{
  v34 = v0;
  if (qword_27C842520 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_20DD64C44();
  __swift_project_value_buffer(v2, qword_27C844DB0);
  v3 = v1;
  v4 = sub_20DD64C24();
  v5 = sub_20DD65384();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v8 = 136315906;
    *(v8 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, &v33);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_20D9E0B38(0xD00000000000001CLL, 0x800000020DD9A5C0, &v33);
    *(v8 + 22) = 2080;
    v10 = sub_20DD636C4();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    if (v7 > 3)
    {
      if (v7 > 5)
      {
        if (v7 == 6 || v7 == 7)
        {
          goto LABEL_7;
        }
      }

      else if (v7 != 4)
      {
LABEL_7:
        sub_20DA47868(v0[10], v0[12]);
LABEL_15:
        v11 = v0[11];
        v12 = v0[12];
        v13 = v0[9];
        swift_storeEnumTagMultiPayload();
        v14 = HFHomeActivityState.title.getter();
        v16 = v15;
        sub_20DA90088(v12, type metadata accessor for HFHomeActivityState);
        v17 = sub_20D9E0B38(v14, v16, &v33);

        *(v8 + 24) = v17;
        *(v8 + 32) = 2080;
        v18 = [*(v13 + OBJC_IVAR___HFActivityStateManager_home) hf_displayName];
        v19 = sub_20DD64EB4();
        v21 = v20;

        v22 = sub_20D9E0B38(v19, v21, &v33);

        *(v8 + 34) = v22;
        _os_log_impl(&dword_20D9BF000, v4, v5, "%s - %s: Updating home activity state to: %s for home: %s", v8, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x20F327D10](v9, -1, -1);
        MEMORY[0x20F327D10](v8, -1, -1);
        goto LABEL_16;
      }
    }

    sub_20D9D76EC(v0[10], &unk_27C843810, &qword_20DD93F00);
    goto LABEL_15;
  }

LABEL_16:

  v23 = v0[12];
  v24 = v0[10];
  v25 = v0[8];
  v26 = *(v0[9] + OBJC_IVAR___HFActivityStateManager_home);
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v25;
  v0[6] = sub_20DA92858;
  v0[7] = v28;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_20DA899CC;
  v0[5] = &block_descriptor_14;
  v29 = _Block_copy(v0 + 2);
  v30 = v0[7];

  [v26 changeHomeActivityState:v25 completionHandler:v29];
  _Block_release(v29);

  v31 = v0[1];

  return v31();
}

void sub_20DA8DF54(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v47 - v7;
  v9 = type metadata accessor for HFHomeActivityState();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (a1)
    {
      v15 = a1;
      if (qword_27C842520 != -1)
      {
        swift_once();
      }

      v16 = sub_20DD64C44();
      __swift_project_value_buffer(v16, qword_27C844DB0);
      v17 = a1;
      v18 = v14;
      v19 = sub_20DD64C24();
      v20 = sub_20DD65364();

      if (!os_log_type_enabled(v19, v20))
      {
        goto LABEL_23;
      }

      v21 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = v48;
      *v21 = 136316162;
      *(v21 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, &v49);
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_20D9E0B38(0xD00000000000001CLL, 0x800000020DD9A5C0, &v49);
      *(v21 + 22) = 2080;
      v22 = sub_20DD636C4();
      (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
      if (a3 > 3)
      {
        if (a3 > 5)
        {
          if (a3 == 6 || a3 == 7)
          {
            goto LABEL_9;
          }
        }

        else if (a3 != 4)
        {
LABEL_9:
          sub_20DA47868(v8, v12);
LABEL_22:
          v35 = v47;
          v34 = v48;
          swift_storeEnumTagMultiPayload();
          v36 = HFHomeActivityState.title.getter();
          v38 = v37;
          sub_20DA90088(v12, type metadata accessor for HFHomeActivityState);
          v39 = sub_20D9E0B38(v36, v38, &v49);

          *(v21 + 24) = v39;
          *(v21 + 32) = 2080;
          v40 = [*&v18[OBJC_IVAR___HFActivityStateManager_home] hf_displayName];
          v41 = sub_20DD64EB4();
          v43 = v42;

          v44 = sub_20D9E0B38(v41, v43, &v49);

          *(v21 + 34) = v44;
          *(v21 + 42) = 2112;
          v45 = a1;
          v46 = _swift_stdlib_bridgeErrorToNSError();
          *(v21 + 44) = v46;
          *v35 = v46;
          _os_log_impl(&dword_20D9BF000, v19, v20, "%s - %s: Error updating home activity state to: %s, for home: %s, error: %@", v21, 0x34u);
          sub_20D9D76EC(v35, &unk_27C843630, &qword_20DD94080);
          MEMORY[0x20F327D10](v35, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x20F327D10](v34, -1, -1);
          MEMORY[0x20F327D10](v21, -1, -1);
LABEL_23:

          sub_20DA902F8(a1);
          return;
        }
      }

      sub_20D9D76EC(v8, &unk_27C843810, &qword_20DD93F00);
      goto LABEL_22;
    }

    if (qword_27C842520 != -1)
    {
      swift_once();
    }

    v23 = sub_20DD64C44();
    __swift_project_value_buffer(v23, qword_27C844DB0);
    v24 = v14;
    v25 = sub_20DD64C24();
    v26 = sub_20DD65384();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v49 = v28;
      *v27 = 136315650;
      *(v27 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, &v49);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_20D9E0B38(0xD00000000000001CLL, 0x800000020DD9A5C0, &v49);
      *(v27 + 22) = 2080;
      v29 = [*&v24[OBJC_IVAR___HFActivityStateManager_home] hf_displayName];
      v30 = sub_20DD64EB4();
      v32 = v31;

      v33 = sub_20D9E0B38(v30, v32, &v49);

      *(v27 + 24) = v33;
      _os_log_impl(&dword_20D9BF000, v25, v26, "%s - %s: Successfully updated home activity state for home: %s", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v28, -1, -1);
      MEMORY[0x20F327D10](v27, -1, -1);
    }
  }
}

uint64_t sub_20DA8E7A0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_20DA814E0;

  return sub_20DA8D9A4(a1);
}

uint64_t sub_20DA8E85C()
{
  v1[14] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844AF0, &qword_20DD96860) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v3 = type metadata accessor for HFHomeActivityState();
  v1[16] = v3;
  v4 = *(v3 - 8);
  v1[17] = v4;
  v5 = *(v4 + 64) + 15;
  v1[18] = swift_task_alloc();
  v6 = type metadata accessor for HoldState(0);
  v1[19] = v6;
  v7 = *(v6 - 8);
  v1[20] = v7;
  v8 = *(v7 + 64) + 15;
  v1[21] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE0, &qword_20DD96878);
  v1[22] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DD0, &unk_20DD96868) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA8EA30, 0, 0);
}

uint64_t sub_20DA8EA30()
{
  v68 = v0;
  if (qword_27C842520 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_20DD64C44();
  __swift_project_value_buffer(v2, qword_27C844DB0);
  v3 = v1;
  v4 = sub_20DD64C24();
  v5 = sub_20DD65384();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v67 = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, &v67);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_20D9E0B38(0xD00000000000001DLL, 0x800000020DD9A5E0, &v67);
    *(v7 + 22) = 2080;
    v9 = [*(v6 + OBJC_IVAR___HFActivityStateManager_home) hf_displayName];
    v10 = sub_20DD64EB4();
    v12 = v11;

    v13 = sub_20D9E0B38(v10, v12, &v67);

    *(v7 + 24) = v13;
    _os_log_impl(&dword_20D9BF000, v4, v5, "%s - %s: Updating home activity hold state for home: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v8, -1, -1);
    MEMORY[0x20F327D10](v7, -1, -1);
  }

  v14 = v0[25];
  v16 = v0[22];
  v15 = v0[23];
  v17 = v0[19];
  v18 = v0[20];
  v19 = v0[14];
  v20 = OBJC_IVAR___HFActivityStateManager_holdState;
  swift_beginAccess();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  (*(v18 + 56))(v14, 0, 1, v17);
  v22 = *(v16 + 48);
  sub_20D9D7558(v19 + v20, v15, &unk_27C844DD0, &unk_20DD96868);
  sub_20D9D7558(v14, v15 + v22, &unk_27C844DD0, &unk_20DD96868);
  v23 = *(v18 + 48);
  if (v23(v15, 1, v17) == 1)
  {
    v24 = v0[19];
    sub_20D9D76EC(v0[25], &unk_27C844DD0, &unk_20DD96868);
    v25 = &qword_27C844000;
    if (v23(v15 + v22, 1, v24) == 1)
    {
      sub_20D9D76EC(v0[23], &unk_27C844DD0, &unk_20DD96868);
      goto LABEL_12;
    }

LABEL_10:
    v30 = v0[23];
    v31 = &qword_27C844DE0;
    v32 = &qword_20DD96878;
LABEL_14:
    sub_20D9D76EC(v30, v31, v32);
    goto LABEL_15;
  }

  v26 = v0[19];
  sub_20D9D7558(v0[23], v0[24], &unk_27C844DD0, &unk_20DD96868);
  v27 = v23(v15 + v22, 1, v26);
  v28 = v0[24];
  v29 = v0[25];
  if (v27 == 1)
  {
    sub_20D9D76EC(v0[25], &unk_27C844DD0, &unk_20DD96868);
    sub_20DA90088(v28, type metadata accessor for HoldState);
    v25 = &qword_27C844000;
    goto LABEL_10;
  }

  v33 = v0[23];
  v34 = v0[21];
  sub_20DA900E8(v15 + v22, v34, type metadata accessor for HoldState);
  v35 = _s4Home9HoldStateO2eeoiySbAC_ACtFZ_0(v28, v34);
  sub_20DA90088(v34, type metadata accessor for HoldState);
  sub_20D9D76EC(v29, &unk_27C844DD0, &unk_20DD96868);
  sub_20DA90088(v28, type metadata accessor for HoldState);
  sub_20D9D76EC(v33, &unk_27C844DD0, &unk_20DD96868);
  v25 = &qword_27C844000;
  if ((v35 & 1) == 0)
  {
LABEL_15:
    v41 = v0[14];
    v42 = sub_20DD64C24();
    v43 = sub_20DD65384();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = v0[14];
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v67 = v46;
      *v45 = 136315650;
      *(v45 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, &v67);
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_20D9E0B38(0xD00000000000001DLL, 0x800000020DD9A5E0, &v67);
      *(v45 + 22) = 2080;
      v47 = [*(v44 + v25[448]) hf_displayName];
      v48 = sub_20DD64EB4();
      v50 = v49;

      v51 = sub_20D9E0B38(v48, v50, &v67);

      *(v45 + 24) = v51;
      _os_log_impl(&dword_20D9BF000, v42, v43, "%s - %s: Cancelling home activity hold state for home: %s", v45, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v46, -1, -1);
      MEMORY[0x20F327D10](v45, -1, -1);
    }

    v52 = *(v0[14] + v25[448]);
    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v0[6] = sub_20DA92878;
    v0[7] = v53;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_20DA899CC;
    v0[5] = &block_descriptor_9;
    v54 = _Block_copy(v0 + 2);
    v55 = v0[7];

    [v52 cancelHomeActivityStateHoldWithCompletionHandler_];
    _Block_release(v54);
    v57 = v0[24];
    v56 = v0[25];
    v58 = v0[23];
    v59 = v0[21];
    v60 = v0[18];
    v61 = v0[15];

    v62 = v0[1];

    return v62();
  }

LABEL_12:
  v36 = v0[16];
  v37 = v0[17];
  v39 = v0[14];
  v38 = v0[15];
  v40 = OBJC_IVAR___HFActivityStateManager_currentHomeActivityState;
  swift_beginAccess();
  sub_20D9D7558(v39 + v40, v38, &qword_27C844AF0, &qword_20DD96860);
  if ((*(v37 + 48))(v38, 1, v36) == 1)
  {
    v30 = v0[15];
    v31 = &qword_27C844AF0;
    v32 = &qword_20DD96860;
    goto LABEL_14;
  }

  sub_20DA900E8(v0[15], v0[18], type metadata accessor for HFHomeActivityState);
  v64 = HFHomeActivityState.hm_homeActivityState.getter();
  v65 = swift_task_alloc();
  v0[26] = v65;
  *v65 = v0;
  v65[1] = sub_20DA8F268;
  v66 = v0[14];

  return sub_20DA8D9A4(v64);
}

uint64_t sub_20DA8F268()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_20DA8F444;
  }

  else
  {
    v3 = sub_20DA8F37C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DA8F37C()
{
  sub_20DA90088(v0[18], type metadata accessor for HFHomeActivityState);
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[21];
  v5 = v0[18];
  v6 = v0[15];

  v7 = v0[1];

  return v7();
}

uint64_t sub_20DA8F444()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[21];
  v5 = v0[15];
  sub_20DA90088(v0[18], type metadata accessor for HFHomeActivityState);

  v6 = v0[1];
  v7 = v0[27];

  return v6();
}

void sub_20DA8F510(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DD0, &unk_20DD96868);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v45 - v4;
  v6 = type metadata accessor for HoldState(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a1)
    {
      v13 = a1;
      if (qword_27C842520 != -1)
      {
        swift_once();
      }

      v14 = sub_20DD64C44();
      __swift_project_value_buffer(v14, qword_27C844DB0);
      v15 = a1;
      v16 = v12;
      v17 = sub_20DD64C24();
      v18 = sub_20DD65364();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v49[0] = v48;
        *v19 = 136315906;
        *(v19 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, v49);
        *(v19 + 12) = 2080;
        *(v19 + 14) = sub_20D9E0B38(0xD00000000000001DLL, 0x800000020DD9A5E0, v49);
        *(v19 + 22) = 2080;
        v21 = [*&v16[OBJC_IVAR___HFActivityStateManager_home] hf_displayName];
        v22 = sub_20DD64EB4();
        v24 = v23;

        v25 = sub_20D9E0B38(v22, v24, v49);

        *(v19 + 24) = v25;
        *(v19 + 32) = 2112;
        v26 = a1;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 34) = v27;
        *v20 = v27;
        _os_log_impl(&dword_20D9BF000, v17, v18, "%s - %s: Error canceling home activity state hold for home: %s, error: %@", v19, 0x2Au);
        sub_20D9D76EC(v20, &unk_27C843630, &qword_20DD94080);
        MEMORY[0x20F327D10](v20, -1, -1);
        v28 = v48;
        swift_arrayDestroy();
        MEMORY[0x20F327D10](v28, -1, -1);
        MEMORY[0x20F327D10](v19, -1, -1);
      }

      sub_20DA902F8(a1);
    }

    else
    {
      if (qword_27C842520 != -1)
      {
        swift_once();
      }

      v29 = sub_20DD64C44();
      __swift_project_value_buffer(v29, qword_27C844DB0);
      v30 = v12;
      v31 = sub_20DD64C24();
      v32 = sub_20DD65384();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v49[0] = v48;
        *v33 = 136315650;
        *(v33 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, v49);
        v47 = v32;
        *(v33 + 12) = 2080;
        *(v33 + 14) = sub_20D9E0B38(0xD00000000000001DLL, 0x800000020DD9A5E0, v49);
        *(v33 + 22) = 2080;
        v34 = [*&v30[OBJC_IVAR___HFActivityStateManager_home] hf_displayName];
        v35 = sub_20DD64EB4();
        v46 = v31;
        v36 = v30;
        v37 = v35;
        v39 = v38;

        v40 = sub_20D9E0B38(v37, v39, v49);

        *(v33 + 24) = v40;
        v30 = v36;
        v41 = v46;
        _os_log_impl(&dword_20D9BF000, v46, v47, "%s - %s: Successfully cancelled home activity state hold for home: %s", v33, 0x20u);
        v42 = v48;
        swift_arrayDestroy();
        MEMORY[0x20F327D10](v42, -1, -1);
        MEMORY[0x20F327D10](v33, -1, -1);
      }

      else
      {
      }

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
      (*(*(v43 - 8) + 56))(v10, 1, 1, v43);
      sub_20DA900E8(v10, v5, type metadata accessor for HoldState);
      (*(v7 + 56))(v5, 0, 1, v6);
      v44 = OBJC_IVAR___HFActivityStateManager_holdState;
      swift_beginAccess();
      sub_20DA89D04(v5, &v30[v44], &unk_27C844DD0, &unk_20DD96868);
      swift_endAccess();
    }
  }
}

uint64_t sub_20DA8FC94(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20DA814E0;

  return sub_20DA8E85C();
}

uint64_t sub_20DA8FD3C()
{
  v1 = sub_20DD64D74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20DD64D94();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D9D7510(0, &unk_280E020E0, 0x277D85C78);
  v11 = sub_20DD653C4();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_20DA940EC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20DA89A38;
  aBlock[3] = &block_descriptor_106;
  v13 = _Block_copy(aBlock);
  v14 = v0;

  sub_20DD64D84();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20DA93250(&qword_280E02168, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844F20, &unk_20DD96990);
  sub_20DA93C1C();
  sub_20DD65504();
  MEMORY[0x20F326330](0, v10, v5, v13);
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_20DA90020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20DA90088(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20DA900E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_20DA90150()
{
  v0 = [objc_opt_self() sharedDispatcher];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3[4] = sub_20DA940F4;
  v3[5] = v1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_20DA2E46C;
  v3[3] = &block_descriptor_110;
  v2 = _Block_copy(v3);

  [v0 dispatchHomeObserverMessage:v2 sender:0];
  _Block_release(v2);
}

void sub_20DA90258(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([a1 respondsToSelector_])
    {
      v4 = *&v3[OBJC_IVAR___HFActivityStateManager_home];
      [a1 homeDidUpdateActivityState_];
    }
  }
}

uint64_t sub_20DA902F8(void *a1)
{
  v3 = sub_20DD64D74();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20DD64D94();
  v8 = *(v19 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D9D7510(0, &unk_280E020E0, 0x277D85C78);
  v12 = sub_20DD653C4();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = a1;
  aBlock[4] = sub_20DA93C14;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20DA89A38;
  aBlock[3] = &block_descriptor_29;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  v16 = a1;

  sub_20DD64D84();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20DA93250(&qword_280E02168, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844F20, &unk_20DD96990);
  sub_20DA93C1C();
  sub_20DD65504();
  MEMORY[0x20F326330](0, v11, v7, v14);
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  return (*(v8 + 8))(v11, v19);
}

void sub_20DA905C8(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() sharedDispatcher];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a2;
  v8[4] = sub_20DA93C80;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_20DA2E46C;
  v8[3] = &block_descriptor_36;
  v6 = _Block_copy(v8);
  v7 = a2;

  [v3 dispatchHomeObserverMessage:v6 sender:0];
  _Block_release(v6);
}

void sub_20DA906F8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([a1 respondsToSelector_])
    {
      v4 = *&v3[OBJC_IVAR___HFActivityStateManager_home];
      swift_unknownObjectRetain();
      v5 = v4;
      v6 = sub_20DD63494();
      [a1 home:v5 failedToUpdateActivityStateWithError:v6];

      swift_unknownObjectRelease();
      v3 = v6;
    }
  }
}

uint64_t sub_20DA907CC(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v127 = a3;
  v126 = a2;
  v123 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DD0, &unk_20DD96868);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v124 = &v102 - v11;
  v12 = sub_20DD636C4();
  v13 = *(v12 - 8);
  v128 = v12;
  v129 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v108 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844AF0, &qword_20DD96860);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v121 = &v102 - v18;
  v19 = sub_20DD63554();
  v115 = *(v19 - 8);
  v116 = v19;
  v20 = *(v115 + 64);
  MEMORY[0x28223BE20](v19);
  v113 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_20DD63574();
  v112 = *(v114 - 8);
  v22 = *(v112 + 64);
  MEMORY[0x28223BE20](v114);
  v111 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for HFHomeActivityState();
  v120 = *(v125 - 8);
  v24 = *(v120 + 64);
  MEMORY[0x28223BE20](v125);
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v117 = &v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v118 = &v102 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v110 = &v102 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v109 = &v102 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v102 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v102 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v102 - v43;
  if (qword_27C842520 != -1)
  {
    swift_once();
  }

  v45 = sub_20DD64C44();
  __swift_project_value_buffer(v45, qword_27C844DB0);
  v122 = a4;
  sub_20D9D7558(a4, v44, &unk_27C843810, &qword_20DD93F00);
  v119 = a5;
  sub_20D9D7558(a5, v42, &unk_27C843810, &qword_20DD93F00);
  v46 = v123;
  v47 = sub_20DD64C24();
  v48 = sub_20DD65384();

  if (!os_log_type_enabled(v47, v48))
  {

    sub_20D9D76EC(v42, &unk_27C843810, &qword_20DD93F00);
    sub_20D9D76EC(v44, &unk_27C843810, &qword_20DD93F00);
    v51 = v128;
    v52 = v129;
    v53 = v119;
    goto LABEL_29;
  }

  v107 = v44;
  v104 = v48;
  v105 = v47;
  v49 = swift_slowAlloc();
  v103 = swift_slowAlloc();
  v130[0] = v103;
  *v49 = 136316674;
  *(v49 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, v130);
  *(v49 + 12) = 2080;
  *(v49 + 14) = sub_20D9E0B38(0xD000000000000056, 0x800000020DD9A600, v130);
  *(v49 + 22) = 2080;
  (*(v129 + 56))(v39, 1, 1, v128);
  v106 = v6;
  if (v126 <= 3)
  {
    v50 = v107;
    goto LABEL_15;
  }

  v50 = v107;
  if (v126 > 5)
  {
    if (v126 == 6 || v126 == 7)
    {
      goto LABEL_7;
    }

LABEL_15:
    sub_20D9D76EC(v39, &unk_27C843810, &qword_20DD93F00);
    goto LABEL_16;
  }

  if (v126 != 5)
  {
    goto LABEL_15;
  }

LABEL_7:
  sub_20DA47868(v39, v26);
LABEL_16:
  v123 = v42;
  swift_storeEnumTagMultiPayload();
  v54 = HFHomeActivityState.title.getter();
  v56 = v55;
  sub_20DA90088(v26, type metadata accessor for HFHomeActivityState);
  v57 = sub_20D9E0B38(v54, v56, v130);

  *(v49 + 24) = v57;
  *(v49 + 32) = 2080;
  v58 = [v46 hf_displayName];
  v59 = sub_20DD64EB4();
  v61 = v60;

  v62 = sub_20D9E0B38(v59, v61, v130);

  *(v49 + 34) = v62;
  *(v49 + 42) = 2080;
  if (v127)
  {
    v63 = 1702195828;
  }

  else
  {
    v63 = 0x65736C6166;
  }

  if (v127)
  {
    v64 = 0xE400000000000000;
  }

  else
  {
    v64 = 0xE500000000000000;
  }

  v65 = sub_20D9E0B38(v63, v64, v130);

  *(v49 + 44) = v65;
  *(v49 + 52) = 2080;
  v66 = v109;
  sub_20D9D7558(v50, v109, &unk_27C843810, &qword_20DD93F00);
  v67 = v128;
  v68 = v129;
  v69 = *(v129 + 48);
  if (v69(v66, 1, v128) == 1)
  {
    sub_20D9D76EC(v66, &unk_27C843810, &qword_20DD93F00);
    v70 = 0xE400000000000000;
    v71 = 1701736270;
  }

  else
  {
    v72 = v111;
    sub_20DD63564();
    v73 = v113;
    sub_20DD63544();
    v71 = sub_20DD636A4();
    v70 = v74;
    v75 = v73;
    v50 = v107;
    (*(v115 + 8))(v75, v116);
    (*(v112 + 8))(v72, v114);
    (*(v68 + 8))(v66, v67);
  }

  sub_20D9D76EC(v50, &unk_27C843810, &qword_20DD93F00);
  v76 = sub_20D9E0B38(v71, v70, v130);

  *(v49 + 54) = v76;
  *(v49 + 62) = 2080;
  v77 = v110;
  sub_20D9D7558(v123, v110, &unk_27C843810, &qword_20DD93F00);
  v51 = v67;
  if (v69(v77, 1, v67) == 1)
  {
    sub_20D9D76EC(v77, &unk_27C843810, &qword_20DD93F00);
    v78 = 0xE400000000000000;
    v6 = v106;
    v52 = v129;
    v53 = v119;
    v79 = 1701736270;
  }

  else
  {
    v80 = v111;
    sub_20DD63564();
    v81 = v113;
    sub_20DD63544();
    v79 = sub_20DD636A4();
    v78 = v82;
    (*(v115 + 8))(v81, v116);
    (*(v112 + 8))(v80, v114);
    v52 = v129;
    (*(v129 + 8))(v77, v51);
    v6 = v106;
    v53 = v119;
  }

  sub_20D9D76EC(v123, &unk_27C843810, &qword_20DD93F00);
  v83 = sub_20D9E0B38(v79, v78, v130);

  *(v49 + 64) = v83;
  v84 = v105;
  _os_log_impl(&dword_20D9BF000, v105, v104, "%s - %s: ActivityStateManager received new activity state: %s, for home: %s, isActivityStateHoldActive: %s, activityStateHoldEndDate: %s, transitionalStateEnd: %s", v49, 0x48u);
  v85 = v103;
  swift_arrayDestroy();
  MEMORY[0x20F327D10](v85, -1, -1);
  MEMORY[0x20F327D10](v49, -1, -1);

LABEL_29:
  v86 = v118;
  sub_20D9D7558(v53, v118, &unk_27C843810, &qword_20DD93F00);
  v88 = v121;
  v87 = v122;
  if (v126 > 3)
  {
    if (v126 > 5)
    {
      if (v126 == 6 || v126 == 7)
      {
        goto LABEL_32;
      }
    }

    else if (v126 == 5)
    {
LABEL_32:
      sub_20DA47868(v86, v121);
      goto LABEL_40;
    }
  }

  sub_20D9D76EC(v86, &unk_27C843810, &qword_20DD93F00);
LABEL_40:
  v89 = v125;
  swift_storeEnumTagMultiPayload();
  (*(v120 + 56))(v88, 0, 1, v89);
  v90 = OBJC_IVAR___HFActivityStateManager_currentHomeActivityState;
  swift_beginAccess();
  sub_20DA89D04(v88, v6 + v90, &qword_27C844AF0, &qword_20DD96860);
  swift_endAccess();
  if (v127)
  {
    v91 = v87;
    v92 = v117;
    sub_20D9D7558(v91, v117, &unk_27C843810, &qword_20DD93F00);
    if ((*(v52 + 48))(v92, 1, v51) != 1)
    {
      v95 = *(v52 + 32);
      v96 = v108;
      v95(v108, v92, v51);
      v94 = v124;
      v95(v124, v96, v51);
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
      (*(*(v97 - 8) + 56))(v94, 0, 1, v97);
      goto LABEL_45;
    }

    sub_20D9D76EC(v92, &unk_27C843810, &qword_20DD93F00);
  }

  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
  v94 = v124;
  (*(*(v93 - 8) + 56))(v124, 1, 1, v93);
LABEL_45:
  v98 = type metadata accessor for HoldState(0);
  (*(*(v98 - 8) + 56))(v94, 0, 1, v98);
  v99 = OBJC_IVAR___HFActivityStateManager_holdState;
  swift_beginAccess();
  sub_20DA89D04(v94, v6 + v99, &unk_27C844DD0, &unk_20DD96868);
  swift_endAccess();
  v100 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  swift_beginAccess();
  *(v6 + v100) = 1;
  return sub_20DA8FD3C();
}

id ActivityStateManager.__deallocating_deinit()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedDispatcher];
  [v2 removeHomeObserver_];

  v3 = [v1 sharedDispatcher];
  [v3 removeHomeManagerObserver_];

  v4 = [v1 sharedDispatcher];
  [v4 removeResidentDeviceObserver_];

  v5 = [objc_opt_self() defaultCenter];
  [v5 removeObserver_];

  v7.receiver = v0;
  v7.super_class = type metadata accessor for ActivityStateManager(0);
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id ActivityStateManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t HoldState.hash(into:)()
{
  v1 = sub_20DD636C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HoldState(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DA90020(v0, v9, type metadata accessor for HoldState);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    return MEMORY[0x20F3269D0](1);
  }

  (*(v2 + 32))(v5, v9, v1);
  MEMORY[0x20F3269D0](0);
  sub_20DA93250(&qword_27C844E10, MEMORY[0x277CC9578]);
  sub_20DD64E34();
  return (*(v2 + 8))(v5, v1);
}

uint64_t HoldState.hashValue.getter()
{
  v1 = v0;
  v2 = sub_20DD636C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HoldState(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD65A64();
  sub_20DA90020(v1, v10, type metadata accessor for HoldState);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    MEMORY[0x20F3269D0](1);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x20F3269D0](0);
    sub_20DA93250(&qword_27C844E10, MEMORY[0x277CC9578]);
    sub_20DD64E34();
    (*(v3 + 8))(v6, v2);
  }

  return sub_20DD65AA4();
}

uint64_t sub_20DA91FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20DD636C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DA90020(v2, v12, type metadata accessor for HoldState);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    return MEMORY[0x20F3269D0](1);
  }

  (*(v5 + 32))(v9, v12, v4);
  MEMORY[0x20F3269D0](0);
  sub_20DA93250(&qword_27C844E10, MEMORY[0x277CC9578]);
  sub_20DD64E34();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_20DA921CC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_20DD636C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD65A64();
  sub_20DA90020(v4, v13, type metadata accessor for HoldState);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    MEMORY[0x20F3269D0](1);
  }

  else
  {
    (*(v6 + 32))(v10, v13, v5);
    MEMORY[0x20F3269D0](0);
    sub_20DA93250(&qword_27C844E10, MEMORY[0x277CC9578]);
    sub_20DD64E34();
    (*(v6 + 8))(v10, v5);
  }

  return sub_20DD65AA4();
}

uint64_t sub_20DA923EC()
{
  v0 = sub_20DD64C44();
  __swift_allocate_value_buffer(v0, qword_27C844DB0);
  __swift_project_value_buffer(v0, qword_27C844DB0);
  return sub_20DD64C34();
}

uint64_t static Logger.homeActivityStateLogger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27C842520 != -1)
  {
    swift_once();
  }

  v2 = sub_20DD64C44();
  v3 = __swift_project_value_buffer(v2, qword_27C844DB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _s4Home9HoldStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20DD636C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HoldState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844F38, &qword_20DD96A20);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20DA90020(a1, &v24 - v16, type metadata accessor for HoldState);
  sub_20DA90020(a2, &v17[v18], type metadata accessor for HoldState);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
  v20 = *(*(v19 - 8) + 48);
  if (v20(v17, 1, v19) != 1)
  {
    sub_20DA90020(v17, v12, type metadata accessor for HoldState);
    if (v20(&v17[v18], 1, v19) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v21 = sub_20DD63664();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_20DA90088(v17, type metadata accessor for HoldState);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v20(&v17[v18], 1, v19) != 1)
  {
LABEL_6:
    sub_20D9D76EC(v17, &qword_27C844F38, &qword_20DD96A20);
    v21 = 0;
    return v21 & 1;
  }

  sub_20DA90088(v17, type metadata accessor for HoldState);
  v21 = 1;
  return v21 & 1;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20DA92880()
{
  if (qword_27C842520 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v1 = sub_20DD64C44();
    __swift_project_value_buffer(v1, qword_27C844DB0);
    v2 = v0;
    v3 = sub_20DD64C24();
    v4 = sub_20DD65384();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v47[0] = v6;
      *v5 = 136315650;
      *(v5 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, v47);
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_20D9E0B38(0xD00000000000001CLL, 0x800000020DD9A790, v47);
      *(v5 + 22) = 2080;
      v7 = [*(v2 + OBJC_IVAR___HFActivityStateManager_home) hf_displayName];
      v8 = sub_20DD64EB4();
      v10 = v9;

      v11 = sub_20D9E0B38(v8, v10, v47);

      *(v5 + 24) = v11;
      _os_log_impl(&dword_20D9BF000, v3, v4, "%s - %s: Resident status was updated. Updating home activity state for: %s", v5, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v6, -1, -1);
      MEMORY[0x20F327D10](v5, -1, -1);
    }

    v44 = *(v2 + OBJC_IVAR___HFActivityStateManager_home);
    v0 = [v44 residentDevices];
    sub_20D9D7510(0, &qword_27C844E08, 0x277CD1D68);
    v12 = sub_20DD64FD4();

    v47[0] = MEMORY[0x277D84F90];
    if (v12 >> 62)
    {
      break;
    }

    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_21;
    }

LABEL_6:
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x20F326680](v14, v12);
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if ([v15 hf_isReachable])
      {
        sub_20DD65754();
        v18 = *(v47[0] + 16);
        sub_20DD65784();
        sub_20DD65794();
        v0 = v47;
        sub_20DD65764();
      }

      else
      {
      }

      ++v14;
      if (v17 == v13)
      {
        v19 = v47[0];
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v13 = sub_20DD655B4();
  if (v13)
  {
    goto LABEL_6;
  }

LABEL_21:
  v19 = MEMORY[0x277D84F90];
LABEL_22:

  if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
  {
    v20 = sub_20DD655B4();
  }

  else
  {
    v20 = *(v19 + 16);
  }

  v21 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  if (v20 < 1)
  {
    swift_beginAccess();
    *(v2 + v21) = 0;
    sub_20DA8FD3C();
    v34 = v2;
    v35 = sub_20DD64C24();
    v36 = sub_20DD65364();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v46 = v38;
      *v37 = 136315650;
      *(v37 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, &v46);
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_20D9E0B38(0xD00000000000001CLL, 0x800000020DD9A790, &v46);
      *(v37 + 22) = 2080;
      v39 = [v44 hf_displayName];
      v40 = sub_20DD64EB4();
      v42 = v41;

      v43 = sub_20D9E0B38(v40, v42, &v46);

      *(v37 + 24) = v43;
      _os_log_impl(&dword_20D9BF000, v35, v36, "%s - %s: Cannot update home activity state. No reachable residents found for home: %s.", v37, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v38, -1, -1);
      MEMORY[0x20F327D10](v37, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v22 = *(v2 + v21);
    if (v22 != 2 && (v22 & 1) == 0)
    {
      v23 = v2;
      v24 = sub_20DD64C24();
      v25 = sub_20DD65364();

      if (os_log_type_enabled(v24, v25))
      {
        v45 = v2;
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v46 = v27;
        *v26 = 136315650;
        *(v26 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, &v46);
        *(v26 + 12) = 2080;
        *(v26 + 14) = sub_20D9E0B38(0xD00000000000001CLL, 0x800000020DD9A790, &v46);
        *(v26 + 22) = 2080;
        v28 = [v44 hf_displayName];
        v29 = sub_20DD64EB4();
        v31 = v30;

        v32 = sub_20D9E0B38(v29, v31, &v46);

        *(v26 + 24) = v32;
        _os_log_impl(&dword_20D9BF000, v24, v25, "%s - %s: Resident became available. Updating home activity state for home: %s.", v26, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F327D10](v27, -1, -1);
        v33 = v26;
        v2 = v45;
        MEMORY[0x20F327D10](v33, -1, -1);
      }

      *(v2 + v21) = 1;
      sub_20DA8FD3C();
      sub_20DA8D3EC();
    }
  }
}

void sub_20DA92F24(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  if (a1)
  {
    v8 = qword_27C842520;
    v9 = a1;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = sub_20DD64C44();
    __swift_project_value_buffer(v10, qword_27C844DB0);
    v11 = v9;
    v12 = sub_20DD64C24();
    v13 = sub_20DD65384();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136315650;
      *(v14 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, &v25);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_20D9E0B38(0xD000000000000027, 0x800000020DD9A760, &v25);
      *(v14 + 22) = 2080;
      v16 = [v11 hf_displayName];
      v17 = sub_20DD64EB4();
      v19 = v18;

      v20 = sub_20D9E0B38(v17, v19, &v25);

      *(v14 + 24) = v20;
      _os_log_impl(&dword_20D9BF000, v12, v13, "%s - %s: Home was changed. Fetching activity state for home: %s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v15, -1, -1);
      MEMORY[0x20F327D10](v14, -1, -1);
    }

    v21 = sub_20DD65114();
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v2;
    v23 = v2;
    sub_20DA89720(0, 0, v7, &unk_20DD96A08, v22);
  }
}

uint64_t sub_20DA93250(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_beginAccess();
  return sub_20D9D7558(v8 + v9, a5, a3, a4);
}

void sub_20DA93310()
{
  sub_20DA93AF8(319, &qword_27C844EF8, type metadata accessor for HFHomeActivityState);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_20DA93AF8(319, &qword_27C844F00, type metadata accessor for HoldState);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of ActivityStateManager.fetchHomeActivityStateStatus()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xD8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9C76B4;

  return v6();
}

uint64_t dispatch thunk of ActivityStateManager.updateHomeActivityState(to:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x100);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D9D77C4;

  return v8(a1);
}

uint64_t dispatch thunk of ActivityStateManager.updateHomeActivityHoldState()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x108);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9D77C4;

  return v6();
}

void sub_20DA93AF8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20DD65494();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20DA93B74()
{
  sub_20DA93BCC();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_20DA93BCC()
{
  if (!qword_27C844F18)
  {
    v0 = sub_20DD636C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C844F18);
    }
  }
}

unint64_t sub_20DA93C1C()
{
  result = qword_280E02158;
  if (!qword_280E02158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C844F20, &unk_20DD96990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E02158);
  }

  return result;
}

void sub_20DA93C80(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_20DA906F8(a1);
}

uint64_t sub_20DA93C88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D9D77C4;

  return sub_20DA8D6C4(a1, v4, v5, v6);
}

uint64_t sub_20DA93D3C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9D77C4;

  return sub_20DA8FC94(v2, v3);
}

uint64_t sub_20DA93DE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20D9D77C4;

  return sub_20DA8E7A0(v2, v3, v4);
}

uint64_t objectdestroy_45Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20DA93EDC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9C76B4;

  return sub_20DA8D020(v2, v3);
}

uint64_t sub_20DA93F88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D9D77C4;

  return sub_20DA8D6C4(a1, v4, v5, v6);
}

void sub_20DA9403C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844F30, &qword_20DD96A18) - 8);
  v12 = *(v5 + 16);
  v13 = v5 + ((*(v11 + 80) + 24) & ~*(v11 + 80));

  sub_20DA8BCE4(a1, a2, a3, a4, a5, v12, v13);
}

id HFTileResizable.tileSize.getter()
{
  v1 = [v0 hf_tileSize];

  return v1;
}

id HFTileResizable.set(tileSize:)(uint64_t a1)
{
  v2 = [v1 hf:a1 setTileSize:?];

  return v2;
}

uint64_t MatterAccessoryLikeItem.currentStateActionBuilders(for:)(uint64_t a1)
{
  v97 = a1;
  v113 = sub_20DD63D84();
  v95 = *(v113 - 8);
  v2 = *(v95 + 64);
  MEMORY[0x28223BE20](v113);
  v112 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_20DD644C4();
  v96 = *(v116 - 8);
  v4 = *(v96 + 64);
  MEMORY[0x28223BE20](v116);
  v111 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_20DD644D4();
  v101 = *(v110 - 8);
  v6 = *(v101 + 64);
  MEMORY[0x28223BE20](v110);
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C845070, &unk_20DD96A30);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v98 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v109 = &v90 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A50, &qword_20DD940D8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v99 = &v90 - v16;
  v100 = sub_20DD64054();
  v17 = *(v100 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v100);
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v108 = &v90 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v90 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v90 - v28;
  v30 = sub_20DD64294();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable);
  v36 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  v115 = v35;
  sub_20D9FA458(v35 + v36, v29);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    v37 = &qword_27C843A20;
    v38 = &qword_20DD940B0;
    v39 = v29;
LABEL_18:
    sub_20D9D76EC(v39, v37, v38);
    sub_20D9D7510(0, &qword_27C8439F0, 0x277CBEB98);
    v67 = MEMORY[0x20F326340](MEMORY[0x277D84F90]);
    v68 = [objc_opt_self() futureWithResult_];

    return v68;
  }

  v104 = v21;
  v114 = v25;
  v91 = v8;
  v92 = v31;
  v40 = *(v31 + 32);
  v94 = v30;
  v40(v34, v29, v30);
  v93 = v34;
  v41 = sub_20DD64284();
  v42 = v41;
  v43 = v41 + 64;
  v44 = 1 << *(v41 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v41 + 64);
  v47 = (v44 + 63) >> 6;
  v102 = v17 + 16;
  v106 = (v101 + 48);
  v107 = (v17 + 32);
  v105 = (v17 + 8);

  v49 = 0;
  v50 = v100;
  v103 = v17;
  if (v46)
  {
    while (1)
    {
      v51 = v49;
LABEL_10:
      v52 = v42;
      v53 = *(v42 + 56) + *(v17 + 72) * (__clz(__rbit64(v46)) | (v51 << 6));
      v54 = v108;
      (*(v17 + 16))(v108, v53, v50);
      v55 = *(v17 + 32);
      v56 = v104;
      v55(v104, v54, v50);
      v57 = v109;
      sub_20DD63F74();
      if ((*v106)(v57, 1, v110) != 1)
      {
        break;
      }

      v46 &= v46 - 1;
      sub_20D9D76EC(v57, &unk_27C845070, &unk_20DD96A30);
      result = (*v105)(v56, v50);
      v49 = v51;
      v42 = v52;
      v17 = v103;
      if (!v46)
      {
        goto LABEL_7;
      }
    }

    sub_20D9D76EC(v57, &unk_27C845070, &unk_20DD96A30);
    v60 = v99;
    v55(v99, v56, v50);
    v58 = 0;
    v59 = v101;
    v17 = v103;
LABEL_14:
    (*(v17 + 56))(v60, v58, 1, v50);

    v61 = (*(v17 + 48))(v60, 1, v50);
    v62 = v114;
    v63 = v94;
    v64 = v93;
    if (v61 == 1)
    {
      (*(v92 + 8))(v93, v94);
      v37 = &qword_27C843A50;
      v38 = &qword_20DD940D8;
      v39 = v60;
      goto LABEL_18;
    }

    (*v107)(v114, v60, v50);
    v65 = v98;
    sub_20DD63F74();
    v66 = v110;
    if ((*v106)(v65, 1, v110) == 1)
    {
      (*v105)(v62, v50);
      (*(v92 + 8))(v64, v63);
      v37 = &unk_27C845070;
      v38 = &unk_20DD96A30;
      v39 = v65;
      goto LABEL_18;
    }

    (*(v59 + 32))(v91, v65, v66);
    sub_20DD64484();
    v109 = sub_20DA94DBC();
    v69 = sub_20DD64FF4();

    v117 = MEMORY[0x277D84F90];
    v70 = *(v69 + 16);
    if (v70)
    {
      v108 = OBJC_IVAR___HFMatterAccessoryRepresentable_accessory;
      v107 = *(v96 + 16);
      v71 = *(v96 + 80);
      v104 = v69;
      v72 = v69 + ((v71 + 32) & ~v71);
      v73 = *(v96 + 72);
      v74 = (v95 + 8);
      v75 = (v96 + 8);
      v106 = MEMORY[0x277D84F90];
      v76 = v111;
      do
      {
        v77 = v116;
        (v107)(v76, v72, v116);
        v78 = v112;
        sub_20DD64014();
        sub_20DD63D74();
        (*v74)(v78, v113);
        v79 = *&v108[v115];
        v80 = sub_20DD63E14();

        (*v75)(v76, v77);
        if (v80)
        {
          v81 = v80;
          MEMORY[0x20F325F00]();
          if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v82 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_20DD65014();
          }

          sub_20DD65054();

          v106 = v117;
        }

        v72 += v73;
        --v70;
      }

      while (v70);

      v59 = v101;
      v62 = v114;
      v63 = v94;
      v64 = v93;
    }

    else
    {
    }

    v83 = *(v115 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory);
    v84 = objc_allocWithZone(HFMatterCommandActionBuilder);
    sub_20D9D7510(0, &qword_27C843BB0, 0x277CD1B68);
    v85 = v83;
    v86 = sub_20DD64FB4();

    v87 = [v84 initWithHome:v97 commands:v86 accessory:v85 enforceExecutionOrder:1];

    v88 = [objc_opt_self() setWithObject_];
    v89 = [objc_opt_self() futureWithResult_];

    (*(v59 + 8))(v91, v110);
    (*v105)(v62, v100);
    (*(v92 + 8))(v64, v63);
    return v89;
  }

  else
  {
LABEL_7:
    while (1)
    {
      v51 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v51 >= v47)
      {

        v58 = 1;
        v59 = v101;
        v60 = v99;
        goto LABEL_14;
      }

      v46 = *(v43 + 8 * v51);
      ++v49;
      if (v46)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_20DA94DBC()
{
  result = qword_27C845080;
  if (!qword_27C845080)
  {
    sub_20DD644C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C845080);
  }

  return result;
}

Home::DashboardStaticSectionListItemType_optional __swiftcall DashboardStaticSectionListItemType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20DA94F84()
{
  v1 = (v0 + OBJC_IVAR___HFDashboardStaticSectionListItem_uuidString);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_20DA95048(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___HFDashboardStaticSectionListItem_uuidString);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_20DA950A8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___HFDashboardStaticSectionListItem_uuidString);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

id DashboardStaticSectionListItem.init(results:type:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v2[OBJC_IVAR___HFDashboardStaticSectionListItem_sectionType] = v3;
  v4 = 0xED00006E6F697463;
  v5 = 0x655373656E656373;
  if (v3 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000020DD98860;
  }

  v6 = v3 == 0;
  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x53736172656D6163;
  }

  if (v6)
  {
    v4 = 0xEE006E6F69746365;
  }

  v8 = &v2[OBJC_IVAR___HFDashboardStaticSectionListItem_uuidString];
  *v8 = v7;
  v8[1] = v4;
  v9 = sub_20DD64DB4();

  v12.receiver = v2;
  v12.super_class = type metadata accessor for DashboardStaticSectionListItem();
  v10 = objc_msgSendSuper2(&v12, sel_initWithResults_, v9);

  return v10;
}

id DashboardStaticSectionListItem.__allocating_init(results:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_20DD64DB4();

  v3 = [v1 initWithResults_];

  return v3;
}

id DashboardStaticSectionListItem.__allocating_init(resultsBlock:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v9[4] = a1;
  v9[5] = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_20DA954A8;
  v9[3] = &block_descriptor_15;
  v6 = _Block_copy(v9);
  v7 = [v5 initWithResultsBlock_];
  _Block_release(v6);

  return v7;
}

id sub_20DA954A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id DashboardStaticSectionListItem.__allocating_init(resultsAndItemBlock:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v9[4] = a1;
  v9[5] = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_20DA055A4;
  v9[3] = &block_descriptor_3;
  v6 = _Block_copy(v9);
  v7 = [v5 initWithResultsAndItemBlock_];
  _Block_release(v6);

  return v7;
}

void sub_20DA95650(int a1, int a2, void *aBlock)
{
  _Block_copy(aBlock);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

id DashboardStaticSectionListItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardStaticSectionListItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_20DA956C4()
{
  result = qword_27C845100;
  if (!qword_27C845100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C845100);
  }

  return result;
}

id static HFServiceItem.serviceItem(for:valueSource:)(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() serviceItemForService:a1 valueSource:a2];
  if (result)
  {
    return swift_dynamicCastUnknownClassUnconditional();
  }

  return result;
}

id HFTransformItem.transformedSourceItem.getter()
{
  sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
  v1 = [v0 sourceItem];

  return v1;
}

id sub_20DA9592C()
{
  sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
  v1 = [*v0 transformedSourceItem];

  return v1;
}

uint64_t sub_20DA9598C()
{
  sub_20DA97288();
}

uint64_t sub_20DA959B4(uint64_t a1)
{
  v3 = qword_27C845110;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_20DA95A6C()
{
  v0 = sub_20DA97278();

  return v0;
}

id ConfigurableTransformItem.init(sourceItem:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  *(v1 + qword_27C845110) = MEMORY[0x277D84F90];
  *(v1 + qword_27C845108) = a1;
  v4 = *((v3 & v2) + 0x50);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ConfigurableTransformItem();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_20DA95B48(uint64_t a1)
{
  v2 = *&v1[qword_27C845108];
  sub_20DA95CA0(a1);
  type metadata accessor for HFItemUpdateOption(0);
  sub_20DA972E4();
  v3 = sub_20DD64DB4();

  v4 = [v2 updateWithOptions_];

  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v10[4] = sub_20DA9733C;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_20DA055A4;
  v10[3] = &block_descriptor_16;
  v6 = _Block_copy(v10);
  v7 = v1;

  v8 = [v4 flatMap_];

  _Block_release(v6);
  return v8;
}

uint64_t sub_20DA95CA0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C845290, &qword_20DD96CE0);
    v1 = sub_20DD65884();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = __clz(__rbit64(v4)) | (v8 << 6);
    sub_20D9D7288(*(a1 + 48) + 40 * v11, &v28);
    sub_20D9D7174(*(a1 + 56) + 32 * v11, v30 + 8);
    v26[0] = v30[0];
    v26[1] = v30[1];
    v27 = v31;
    *&v25[5] = v28;
    *&v25[7] = v29;
    v23[4] = v28;
    v23[5] = v29;
    v24 = *&v30[0];
    type metadata accessor for HFItemUpdateOption(0);
    swift_dynamicCast();
    sub_20D9D77C8((v26 + 8), &v25[1]);
    v12 = v25[0];
    sub_20D9D77C8(&v25[1], v23);
    sub_20D9D77C8(v23, v25);
    v13 = *(v1 + 40);
    sub_20DD64EB4();
    sub_20DD65A64();
    sub_20DD64F24();
    v14 = sub_20DD65AA4();

    v15 = -1 << *(v1 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v6 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v6 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v6 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v12;
    result = sub_20D9D77C8(v25, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_20DA95F88(void *a1, void *a2)
{
  [a1 mutableCopy];
  sub_20DD654E4();
  swift_unknownObjectRelease();
  sub_20D9D7510(0, &unk_27C845280, off_277DEFDC8);
  swift_dynamicCast();
  (*((*MEMORY[0x277D85000] & *a2) + 0x90))();
  [v5 copy];
  sub_20DD654E4();
  swift_unknownObjectRelease();
  sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
  swift_dynamicCast();
  v3 = [objc_opt_self() futureWithResult_];

  return v3;
}

id sub_20DA960D8(void *a1)
{
  v2 = sub_20DD64DC4();
  v3 = a1;
  v4 = sub_20DA95B48(v2);

  return v4;
}

void sub_20DA96160(void *a1)
{
  v2 = v1;
  v4 = &unk_27C845000;
  v5 = qword_27C845110;
  swift_beginAccess();
  if (!*(*(v2 + v5) + 16))
  {
    return;
  }

  v70 = a1;
  v6 = [a1 results];
  v7 = sub_20DD64DC4();

  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v71 = v2;
    v86 = MEMORY[0x277D84F90];
    sub_20DA4B0EC(0, v8, 0);
    v10 = v86;
    v11 = v7 + 64;
    v12 = -1 << *(v7 + 32);
    v13 = sub_20DD65514();
    v14 = 0;
    v15 = *(v7 + 36);
    v73 = v8;
    v75 = v15;
    do
    {
      if (v13 < 0 || v13 >= 1 << *(v7 + 32))
      {
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
        __break(1u);
        goto LABEL_61;
      }

      v18 = v13 >> 6;
      if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_56;
      }

      if (v15 != *(v7 + 36))
      {
        goto LABEL_57;
      }

      v19 = v11;
      sub_20D9D7288(*(v7 + 48) + 40 * v13, &v81);
      sub_20D9D7174(*(v7 + 56) + 32 * v13, v83 + 8);
      v78[0] = v81;
      v78[1] = v82;
      v79 = *&v83[0];
      sub_20D9D77C8((v83 + 8), v80);
      sub_20D9D7288(v78, v77);
      swift_dynamicCast();
      v20 = sub_20DD64E74();

      sub_20D9D7174(v80, v84 + 8);
      *&v84[0] = v20;
      sub_20D9D76EC(v78, &unk_27C845120, &unk_20DD96B90);
      v86 = v10;
      v22 = *(v10 + 16);
      v21 = *(v10 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_20DA4B0EC((v21 > 1), v22 + 1, 1);
        v10 = v86;
      }

      *(v10 + 16) = v22 + 1;
      v23 = v10 + 40 * v22;
      v24 = v84[0];
      v25 = v84[1];
      *(v23 + 64) = v85;
      *(v23 + 32) = v24;
      *(v23 + 48) = v25;
      v16 = 1 << *(v7 + 32);
      if (v13 >= v16)
      {
        goto LABEL_58;
      }

      v26 = *(v19 + 8 * v18);
      if ((v26 & (1 << v13)) == 0)
      {
        goto LABEL_59;
      }

      v11 = v19;
      v15 = v75;
      if (v75 != *(v7 + 36))
      {
        goto LABEL_60;
      }

      v27 = v26 & (-2 << (v13 & 0x3F));
      if (v27)
      {
        v16 = __clz(__rbit64(v27)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v17 = v73;
      }

      else
      {
        v28 = v18 << 6;
        v29 = v18 + 1;
        v17 = v73;
        v30 = (v7 + 72 + 8 * v18);
        while (v29 < (v16 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            sub_20D9EF46C(v13, v75, 0);
            v16 = __clz(__rbit64(v31)) + v28;
            goto LABEL_5;
          }
        }

        sub_20D9EF46C(v13, v75, 0);
      }

LABEL_5:
      ++v14;
      v13 = v16;
    }

    while (v14 != v17);

    v9 = MEMORY[0x277D84F90];
    v2 = v71;
    v4 = &unk_27C845000;
    if (!*(v10 + 16))
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v10 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8434B0, &qword_20DD93B60);
    v33 = sub_20DD65884();
    goto LABEL_25;
  }

LABEL_24:
  v33 = MEMORY[0x277D84F98];
LABEL_25:
  *&v81 = v33;
  v7 = 0;
  sub_20DA9735C(v10, 1, &v81);

  v34 = v81;
  v35 = v4[34];
  swift_beginAccess();
  v36 = *(v2 + v35);
  v37 = *(v36 + 16);
  if (v37)
  {

    v38 = (v36 + 40);
    do
    {
      v40 = *(v38 - 1);
      v39 = *v38;
      *&v81 = v34;

      v40(v78, &v81);

      v34 = *&v78[0];
      v38 += 2;
      --v37;
    }

    while (v37);
  }

  v41 = *(v34 + 16);
  if (v41)
  {
    sub_20DA4B0CC(0, v41, 0);
    v76 = v9;
    v42 = v34 + 64;
    v43 = -1 << *(v34 + 32);
    v44 = sub_20DD65514();
    v45 = 0;
    v46 = *(v34 + 36);
    v72 = v41;
    v74 = v46;
    while ((v44 & 0x8000000000000000) == 0 && v44 < 1 << *(v34 + 32))
    {
      v48 = v44 >> 6;
      if ((*(v42 + 8 * (v44 >> 6)) & (1 << v44)) == 0)
      {
        goto LABEL_62;
      }

      if (v46 != *(v34 + 36))
      {
        goto LABEL_63;
      }

      v49 = v42;
      v50 = *(*(v34 + 48) + 8 * v44);
      sub_20D9D7174(*(v34 + 56) + 32 * v44, v78 + 8);
      *&v84[0] = v50;
      sub_20D9D77C8((v78 + 8), (v84 + 8));
      v51 = sub_20DD64EB4();
      v53 = v52;
      sub_20D9D7174(v84 + 8, &v82);
      *&v81 = v51;
      *(&v81 + 1) = v53;
      v54 = v50;
      sub_20D9D76EC(v84, &unk_27C845130, &unk_20DD96BA0);
      v56 = *(v76 + 16);
      v55 = *(v76 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_20DA4B0CC((v55 > 1), v56 + 1, 1);
      }

      *(v76 + 16) = v56 + 1;
      v57 = (v76 + 48 * v56);
      v58 = v81;
      v59 = v83[0];
      v57[3] = v82;
      v57[4] = v59;
      v57[2] = v58;
      v7 = 1 << *(v34 + 32);
      if (v44 >= v7)
      {
        goto LABEL_64;
      }

      v42 = v49;
      v60 = *(v49 + 8 * v48);
      if ((v60 & (1 << v44)) == 0)
      {
        goto LABEL_65;
      }

      v46 = v74;
      if (v74 != *(v34 + 36))
      {
        goto LABEL_66;
      }

      v61 = v60 & (-2 << (v44 & 0x3F));
      if (v61)
      {
        v7 = __clz(__rbit64(v61)) | v44 & 0x7FFFFFFFFFFFFFC0;
        v47 = v72;
      }

      else
      {
        v62 = v48 << 6;
        v63 = v48 + 1;
        v47 = v72;
        v64 = (v34 + 72 + 8 * v48);
        while (v63 < (v7 + 63) >> 6)
        {
          v66 = *v64++;
          v65 = v66;
          v62 += 64;
          ++v63;
          if (v66)
          {
            sub_20D9EF46C(v44, v74, 0);
            v7 = __clz(__rbit64(v65)) + v62;
            goto LABEL_32;
          }
        }

        sub_20D9EF46C(v44, v74, 0);
      }

LABEL_32:
      ++v45;
      v44 = v7;
      if (v45 == v47)
      {

        goto LABEL_50;
      }
    }

LABEL_61:
    __break(1u);
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

    __break(1u);
  }

  else
  {

    v76 = MEMORY[0x277D84F90];
LABEL_50:
    v67 = sub_20DA0B894(v76);

    if (*(v67 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8434A8, &qword_20DD93B58);
      v68 = sub_20DD65884();
    }

    else
    {
      v68 = MEMORY[0x277D84F98];
    }

    *&v81 = v68;
    sub_20DA97618(v67, 1, &v81);

    v69 = sub_20DD64DB4();

    [v70 setResults_];
  }
}

id ConfigurableTransformItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConfigurableTransformItem.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ConfigurableTransformItem();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20DA969F0(uint64_t a1)
{
  v2 = *(a1 + qword_27C845110);
}

id sub_20DA96A3C()
{
  v1 = *v0;
  v2 = sub_20DA97278();

  return v2;
}

uint64_t sub_20DA96A74()
{
  v1 = v0 + qword_27C845140;
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

id SelectableTransformItem.__allocating_init(sourceItem:selectionControllerContainer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_20DA97954(a1, a2, a3);
  swift_unknownObjectRelease();
  return v8;
}

id SelectableTransformItem.init(sourceItem:selectionControllerContainer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_20DA97954(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

void sub_20DA96B38(void *a1)
{
  sub_20DA96160(a1);
  v3 = &v1[qword_27C845140];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v4 = *(v3 + 1);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 8))(ObjectType, v4);
  v8 = v7;
  swift_unknownObjectRelease();
  if (!v6)
  {
    return;
  }

  v9 = swift_getObjectType();
  v10 = (*(v8 + 32))(v1, v9, v8);
  v11 = [v1 latestResults];
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v11;
  v13 = sub_20DD64DC4();

  v14 = sub_20DD64EB4();
  if (!*(v13 + 16))
  {

    goto LABEL_10;
  }

  v16 = sub_20D9CB170(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_20D9D7174(*(v13 + 56) + 32 * v16, v33);

  sub_20D9D7510(0, &qword_27C8433B0, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v20 = 0;
    v21 = 0;
    v19 = 0;
    goto LABEL_12;
  }

  v19 = v31[0];
  v20 = [v31[0] integerValue];
  v21 = 1;
LABEL_12:
  v22 = HFPrimaryStateFromBOOL(v10 & 1);
  sub_20DD64EB4();
  v31[1] = v23;
  sub_20DD65684();
  v32 = sub_20D9D7510(0, &qword_27C8433B0, 0x277CCABB0);
  v31[0] = sub_20DD65434();
  v24 = [a1 results];
  v25 = sub_20DD64DC4();

  v30 = v25;
  if (v32)
  {
    sub_20D9D77C8(v31, v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D0DFC(v29, v33, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_20D9D76EC(v31, &unk_27C843A80, &qword_20DD94100);
    sub_20DA2769C(v33, v29);
    sub_20D9D76EC(v29, &unk_27C843A80, &qword_20DD94100);
  }

  sub_20D9D4298(v33);
  v27 = sub_20DD64DB4();

  [a1 setResults_];

  if (v20 == v22)
  {
    v28 = v21;
  }

  else
  {
    v28 = 0;
  }

  if ((v28 & 1) == 0)
  {
    [a1 setOutcomeType_];
  }

  swift_unknownObjectRelease();
}

id SelectableTransformItem.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x98);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SelectableTransformItem();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_20DA96F9C(uint64_t a1)
{
  v1 = [*(a1 + qword_27C845108) accessoryRepresentableObject];

  return v1;
}

id sub_20DA96FE0()
{
  v1 = [*(v0 + qword_27C845108) accessoryRepresentableObject];

  return v1;
}

id sub_20DA97020(uint64_t a1)
{
  v1 = [*(a1 + qword_27C845108) homeKitObject];

  return v1;
}

id sub_20DA97064()
{
  v1 = [*(v0 + qword_27C845108) homeKitObject];

  return v1;
}

id AccessoryRepresentableSelectableTransformItem.__allocating_init(sourceItem:selectionControllerContainer:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(v3);
  *&v6[qword_27C845140 + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a3;
  swift_unknownObjectWeakAssign();
  *&v6[qword_27C845110] = MEMORY[0x277D84F90];
  *&v6[qword_27C845108] = a1;
  v7 = a1;
  v10.receiver = v6;
  v10.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C845148, &qword_20DD96BB0);
  v8 = objc_msgSendSuper2(&v10, sel_init);

  swift_unknownObjectRelease();
  return v8;
}

id AccessoryRepresentableSelectableTransformItem.init(sourceItem:selectionControllerContainer:)(void *a1, uint64_t a2, uint64_t a3)
{
  *&v3[qword_27C845140 + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a3;
  swift_unknownObjectWeakAssign();
  *&v3[qword_27C845110] = MEMORY[0x277D84F90];
  *&v3[qword_27C845108] = a1;
  v5 = a1;
  v8.receiver = v3;
  v8.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C845148, &qword_20DD96BB0);
  v6 = objc_msgSendSuper2(&v8, sel_init);

  swift_unknownObjectRelease();
  return v6;
}

id AccessoryRepresentableSelectableTransformItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryRepresentableSelectableTransformItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20DA97288()
{
  v1 = qword_27C845110;
  swift_beginAccess();
  return *(v0 + v1);
}

unint64_t sub_20DA972E4()
{
  result = qword_27C842880;
  if (!qword_27C842880)
  {
    type metadata accessor for HFItemUpdateOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C842880);
  }

  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20DA9735C(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  sub_20D9D7558(result + 32, &v37, &qword_27C8452C0, &qword_20DD96DA0);
  v7 = v37;
  sub_20D9D77C8(v38, v36);
  v8 = *a3;
  result = sub_20D9CB1D0(v7);
  v10 = v8[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v14) = v9;
  if (v8[3] < v13)
  {
    sub_20D9CC2F4(v13, v5 & 1);
    v15 = *a3;
    result = sub_20D9CB1D0(v7);
    if ((v14 & 1) == (v16 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    type metadata accessor for HFItemResultKey(0);
    result = sub_20DD659E4();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v17 = *a3;
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_11:
    v17[(result >> 6) + 8] |= 1 << result;
    *(v17[6] + 8 * result) = v7;
    result = sub_20D9D77C8(v36, (v17[7] + 32 * result));
    v21 = v17[2];
    v12 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v12)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v17[2] = v22;
    if (--v3)
    {
      goto LABEL_14;
    }

    return result;
  }

  v20 = result;
  sub_20D9D23EC();
  result = v20;
  v17 = *a3;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v18 = result;

  v19 = (v17[7] + 32 * v18);
  __swift_destroy_boxed_opaque_existential_0(v19);
  result = sub_20D9D77C8(v36, v19);
  if (--v3)
  {
LABEL_14:
    v6 += 72;
    v7 = &qword_27C8452C0;
    v14 = &qword_20DD96DA0;
    while (1)
    {
      sub_20D9D7558(v6, &v37, &qword_27C8452C0, &qword_20DD96DA0);
      v5 = v37;
      sub_20D9D77C8(v38, v36);
      v25 = *a3;
      result = sub_20D9CB1D0(v5);
      v27 = v25[2];
      v28 = (v26 & 1) == 0;
      v12 = __OFADD__(v27, v28);
      v29 = v27 + v28;
      if (v12)
      {
        goto LABEL_23;
      }

      v30 = v26;
      if (v25[3] < v29)
      {
        sub_20D9CC2F4(v29, 1);
        v31 = *a3;
        result = sub_20D9CB1D0(v5);
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      v33 = *a3;
      if (v30)
      {
        v23 = result;

        v24 = (v33[7] + 32 * v23);
        __swift_destroy_boxed_opaque_existential_0(v24);
        result = sub_20D9D77C8(v36, v24);
      }

      else
      {
        v33[(result >> 6) + 8] |= 1 << result;
        *(v33[6] + 8 * result) = v5;
        result = sub_20D9D77C8(v36, (v33[7] + 32 * result));
        v34 = v33[2];
        v12 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v12)
        {
          goto LABEL_24;
        }

        v33[2] = v35;
      }

      v6 += 40;
      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t sub_20DA97618(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  sub_20D9D7558(result + 32, &v45, &unk_27C845270, &unk_20DD96CD0);
  v42 = v45;
  v43 = v46;
  v44 = v47;
  sub_20D9D77C8(v48, v41);
  v7 = *a3;
  result = sub_20D9CB264(&v42);
  v9 = v7[2];
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v13) = v8;
  if (v7[3] < v12)
  {
    sub_20D9CD30C(v12, v5 & 1);
    v14 = *a3;
    result = sub_20D9CB264(&v42);
    if ((v13 & 1) == (v15 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_20DD659E4();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v16 = *a3;
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_11:
    v16[(result >> 6) + 8] |= 1 << result;
    v21 = v16[6] + 40 * result;
    v22 = v42;
    v23 = v43;
    *(v21 + 32) = v44;
    *v21 = v22;
    *(v21 + 16) = v23;
    result = sub_20D9D77C8(v41, (v16[7] + 32 * result));
    v24 = v16[2];
    v11 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v11)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v16[2] = v25;
    v19 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v20 = result;
  sub_20D9D2924();
  result = v20;
  v16 = *a3;
  if ((v13 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = result;
  sub_20D9D4298(&v42);
  v18 = (v16[7] + 32 * v17);
  __swift_destroy_boxed_opaque_existential_0(v18);
  result = sub_20D9D77C8(v41, v18);
  v19 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v6 += 104;
    v5 = &unk_27C845270;
    v13 = &unk_20DD96CD0;
    while (1)
    {
      sub_20D9D7558(v6, &v45, &unk_27C845270, &unk_20DD96CD0);
      v42 = v45;
      v43 = v46;
      v44 = v47;
      sub_20D9D77C8(v48, v41);
      v28 = *a3;
      result = sub_20D9CB264(&v42);
      v30 = v28[2];
      v31 = (v29 & 1) == 0;
      v11 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v11)
      {
        goto LABEL_23;
      }

      v3 = v29;
      if (v28[3] < v32)
      {
        sub_20D9CD30C(v32, 1);
        v33 = *a3;
        result = sub_20D9CB264(&v42);
        if ((v3 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      v35 = *a3;
      if (v3)
      {
        v26 = result;
        sub_20D9D4298(&v42);
        v27 = (v35[7] + 32 * v26);
        __swift_destroy_boxed_opaque_existential_0(v27);
        result = sub_20D9D77C8(v41, v27);
      }

      else
      {
        v35[(result >> 6) + 8] |= 1 << result;
        v36 = v35[6] + 40 * result;
        v37 = v42;
        v38 = v43;
        *(v36 + 32) = v44;
        *v36 = v37;
        *(v36 + 16) = v38;
        result = sub_20D9D77C8(v41, (v35[7] + 32 * result));
        v39 = v35[2];
        v11 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v11)
        {
          goto LABEL_24;
        }

        v35[2] = v40;
      }

      v6 += 72;
      if (!--v19)
      {
        return result;
      }
    }
  }

  return result;
}

id sub_20DA97954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + qword_27C845140 + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = a3;
  swift_unknownObjectWeakAssign();

  return ConfigurableTransformItem.init(sourceItem:)(a1);
}

uint64_t type metadata accessor for AccessoryRepresentableSelectableTransformItem()
{
  result = qword_27C845258;
  if (!qword_27C845258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_20DA97D40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(MEMORY[0x277D2C900]) init];
  if (a3)
  {
    a3 = sub_20DD64E74();
  }

  [v9 setDescriptor_];

  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = v9;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20DD96D60;
  v11[5] = v10;

  v12 = v9;

  sub_20D9D6B40(0, 0, a1, 0, 0, &unk_20DD96D68, v11);

  return v12;
}

id _s4Home14NAFutureHelperO6future8priority10descriptor4withSo0B0CyxGScPSg_SSSgxyYaYbKYActRlzClFZ(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8452A0, &qword_20DD96CE8);
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a3)
  {
    a3 = sub_20DD64E74();
  }

  [v11 setDescriptor_];

  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a6;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = v11;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20DD96CF8;
  v13[5] = v12;

  v14 = v11;

  sub_20D9D6B40(0, 0, a1, 0, 0, &unk_20DD95DF0, v13);

  return v14;
}

id NAFuture.asGeneric()()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();

  return v0;
}

id sub_20DA98020()
{
  v0 = NAFuture.asGeneric()();

  return v0;
}

uint64_t sub_20DA98054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31[2] = a1;
  v31[3] = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v31 - v16;
  *&v35 = a4;
  *(&v35 + 1) = a5;
  v31[0] = a5;
  v31[1] = a6;
  v34[0] = a6;
  v34[1] = a7;
  if (*(a7 + 16))
  {
    v18 = *(a7 + 24);
    v19 = *(a7 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v20 = sub_20DD65094();
    v22 = v21;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v20 = 0;
    v22 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_20DA9A680(a3, v17);
  v24 = sub_20DD65114();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v17, 1, v24) == 1)
  {
    sub_20D9C7BC4(v17);
  }

  else
  {
    sub_20DD65104();
    (*(v25 + 8))(v17, v24);
  }

  if (!a2)
  {
    swift_unknownObjectRetain();

    if (v22 | v20)
    {
      v33[0] = 0;
      v33[1] = 0;
      v30 = v33;
      v33[2] = v20;
      v33[3] = v22;
      if (a4 == 1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v30 = 0;
      if (a4 == 1)
      {
LABEL_14:
        v28 = swift_task_create();
        if ((isCurrentExecutorWithFlags & 1) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    v32[1] = 6;
    v32[2] = v30;
    v32[3] = a4;
    v32[4] = v31[0];
    goto LABEL_14;
  }

  v26 = sub_20DD64EF4();
  v27 = *(v26 + 16);
  sub_20DA99F6C(v26 + 32, &v35, v34, v32);

  v28 = v32[0];
  if (isCurrentExecutorWithFlags)
  {
LABEL_9:
    swift_task_immediate();
  }

LABEL_10:

  swift_unknownObjectRelease();
  return v28;
}

uint64_t static Task<>.executeOnMainActor(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_20DD65114();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_20DD650F4();

  v11 = sub_20DD650E4();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a3;
  v12[5] = a1;
  v12[6] = a2;
  v14 = sub_20DA98054(0, 0, v9, 0, 0, &unk_20DD96D08, v12, a3);

  sub_20D9C7BC4(v9);
  return v14;
}

uint64_t sub_20DA98460(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_20DD650F4();
  v4[3] = sub_20DD650E4();
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_20DA98580;

  return v10(a1);
}

uint64_t sub_20DA98580()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_20DD65094();
  if (v2)
  {
    v8 = sub_20DA9A818;
  }

  else
  {
    v8 = sub_20DA9A81C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_20DA986DC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_20DD650F4();
  v4[3] = sub_20DD650E4();
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_20DA987FC;

  return v10(a1);
}

uint64_t sub_20DA987FC()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_20DD65094();
  if (v2)
  {
    v8 = sub_20DA989BC;
  }

  else
  {
    v8 = sub_20DA98958;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_20DA98958()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20DA989BC()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t static NAFutureHelper.continuation<A>(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_20DA98A40, 0, 0);
}

uint64_t sub_20DA98A40()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_20DA98B30;
  v4 = *(v0 + 32);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000010, 0x800000020DD9AA20, sub_20DA9A128, v1, v4);
}

uint64_t sub_20DA98B30()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_20DA98C68;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_20DA98C4C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DA98C68()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

void sub_20DA98CCC(uint64_t a1, void *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8443A0, &qword_20DD94E00);
  v6 = sub_20DD650C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_20DA9A5BC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20DA98F98;
  aBlock[3] = &block_descriptor_17;
  v13 = _Block_copy(aBlock);

  v14 = [a2 addCompletionBlock_];
  _Block_release(v13);
}

id sub_20DA98EAC(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8443A0, &qword_20DD94E00);
    sub_20DD650C4();
    return sub_20DD650A4();
  }

  if (a1)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8443A0, &qword_20DD94E00);
    sub_20DD650C4();
    return sub_20DD650B4();
  }

  else
  {
    result = [objc_opt_self() na_genericError];
    if (result)
    {
      goto LABEL_3;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20DA98F98(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_20DA99018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return MEMORY[0x2822009F8](sub_20DA9903C, 0, 0);
}

uint64_t sub_20DA9903C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v6 = *(MEMORY[0x277D85A10] + 4);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_20DA9914C;
  v8 = *(v0 + 48);

  return MEMORY[0x282200830](v0 + 16, &unk_20DD96D88, v3, sub_20DA9A814, v5, 0, 0, v8);
}

uint64_t sub_20DA9914C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_20DA99300;
  }

  else
  {
    v6 = *(v2 + 56);
    v5 = *(v2 + 64);

    v4 = sub_20DA99270;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DA99270()
{
  v1 = *(v0 + 16);
  if (([*(v0 + 40) isCancelled] & 1) == 0)
  {
    [*(v0 + 40) finishWithResult_];
  }

  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20DA99300()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];

  v4 = [v3 isCancelled];
  v5 = v0[10];
  if (v4)
  {
  }

  else
  {
    v6 = v0[5];
    v7 = v0[10];
    v8 = sub_20DD63494();
    [v6 finishWithError_];
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_20DA993CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_20D9D77C4;

  return sub_20DA99018(a1, v4, v5, v7, v9, v8, v6);
}

id static NAFutureHelper.futureOnMainActor<A>(descriptor:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8452A0, &qword_20DD96CE8);
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = a2;
  v15 = v13;
  if (v14)
  {
    v16 = sub_20DD64E74();
  }

  else
  {
    v16 = 0;
  }

  [v15 setDescriptor_];

  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = v15;
  v18 = sub_20DD65114();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  sub_20DD650F4();

  v19 = v15;

  v20 = sub_20DD650E4();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = &unk_20DD96D20;
  v21[5] = v17;
  sub_20D9D6B40(0, 0, v12, 0, 0, &unk_20DD96D30, v21);

  sub_20D9C7BC4(v12);
  return v19;
}

uint64_t sub_20DA996A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[7] = sub_20DD650F4();
  v5[8] = sub_20DD650E4();
  v7 = sub_20DD65094();
  v5[9] = v7;
  v5[10] = v6;

  return MEMORY[0x2822009F8](sub_20DA99748, v7, v6);
}

uint64_t sub_20DA99748()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v5;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v3;
  v7 = sub_20DD650E4();
  *(v0 + 104) = v7;
  v8 = *(MEMORY[0x277D85A10] + 4);
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_20DA99874;
  v10 = *(v0 + 48);
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200830](v0 + 16, &unk_20DD96D78, v4, sub_20DA9A5B8, v6, v7, v11, v10);
}

uint64_t sub_20DA99874()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v11 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_20DA99A48;
  }

  else
  {
    v8 = v2[12];
    v7 = v2[13];
    v9 = v2[11];

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_20DA999AC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20DA999AC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);

  v3 = *(v0 + 16);
  if (([v2 isCancelled] & 1) == 0)
  {
    [*(v0 + 40) finishWithResult_];
  }

  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20DA99A48()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[5];

  v6 = [v5 isCancelled];
  v7 = v0[15];
  if (v6)
  {
  }

  else
  {
    v8 = v0[5];
    v9 = v0[15];
    v10 = sub_20DD63494();
    [v8 finishWithError_];
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_20DA99B2C(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v2[3] = sub_20DD650F4();
  v2[4] = sub_20DD650E4();
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_20DA3FE3C;

  return v7();
}

id static NAFutureHelper.future(priority:descriptor:with:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a4;
  v10[5] = a5;

  v11 = sub_20DA97D40(a1, a2, a3, &unk_20DD96D40, v10);

  return v11;
}

uint64_t sub_20DA99CE0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_20DA99DC8;

  return v7();
}

uint64_t sub_20DA99DC8()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20DA99EF8, 0, 0);
  }
}

uint64_t sub_20DA99EF8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_20DA99F6C@<X0>(uint64_t result@<X0>, __int128 *a2@<X5>, uint64_t *a3@<X6>, uint64_t *a4@<X8>)
{
  if (result)
  {
    v5 = *a3;
    v6 = a3[1];
    v7 = *a2;
    swift_unknownObjectRetain();

    result = swift_task_create();
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20DA9A060(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20D9D77C4;

  return sub_20DA986DC(a1, v4, v5, v7);
}

uint64_t sub_20DA9A130(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D9C76B4;

  return sub_20DA996A8(a1, v5, v7, v6, v4);
}

uint64_t sub_20DA9A1F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D9D77C4;

  return sub_20DA98460(a1, v4, v5, v7);
}

uint64_t sub_20DA9A2B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_20D9D7010;

  return sub_20DA99CE0(v2, v3, v5);
}

uint64_t getEnumTagSinglePayload for NAFutureHelper(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for NAFutureHelper(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_20DA9A43C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20D9D77C4;

  return sub_20D9CAFD8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_20DA9A504(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D9D77C4;

  return sub_20DA99B2C(a1, v5);
}

id sub_20DA9A5BC(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8443A0, &qword_20DD94E00);
  v6 = *(*(sub_20DD650C4() - 8) + 80);

  return sub_20DA98EAC(a1, a2);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20DA9A680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DA9A6F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D9D77C4;

  return sub_20D9D4460(a1, v5);
}

id sub_20DA9A7A4()
{
  v1 = *(v0 + 24);
  result = [v1 isFinished];
  if ((result & 1) == 0)
  {
    result = [v1 isCancelled];
    if ((result & 1) == 0)
    {

      return [v1 cancel];
    }
  }

  return result;
}

id _sSo15HFAccessoryItemC4HomeE14iconDescriptor3forSo011HFImageIconE0CSo11HMAccessoryC_tF_0(void *a1)
{
  v53 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A38, &unk_20DD940C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v50 = &v42 - v3;
  v4 = sub_20DD641A4();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v42 - v8;
  v9 = sub_20DD645F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20DD64604();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *MEMORY[0x277D76A20];
  v44 = objc_opt_self();
  v20 = [v44 configurationWithTextStyle:v19 scale:3];
  sub_20DD645C4();
  sub_20DD645B4();
  v47 = *(v15 + 8);
  v48 = v14;
  v47(v18, v14);
  sub_20DD645E4();
  v21 = *(v10 + 8);
  v46 = v9;
  v21(v13, v9);
  v22 = objc_allocWithZone(HFImageIconDescriptor);
  v23 = v20;
  v24 = sub_20DD64E74();
  v25 = v53;

  v26 = [v22 initWithSystemImageNamed:v24 configuration:v23];

  if ([v25 hf_isMatterOnlyAccessory] && (v27 = objc_allocWithZone(type metadata accessor for MatterAccessoryRepresentable()), (v28 = MatterAccessoryRepresentable.init(accessory:)(v25)) != 0))
  {
    v29 = v28;
    v53 = v26;
    v30 = v50;
    sub_20D9F1C2C(v50);
    v31 = v52;
    v32 = v51;
    if ((*(v51 + 48))(v30, 1, v52) == 1)
    {

      sub_20DA9ADB0(v30);
      return v53;
    }

    else
    {
      v34 = *(v32 + 32);
      v43 = v29;
      v35 = v49;
      v34();
      (*(v32 + 16))(v45, v35, v31);
      sub_20DD645D4();
      sub_20DD645B4();
      v50 = sub_20DD645E4();
      v21(v13, v46);
      sub_20DD64174();
      v36 = sub_20DD64D64();

      v37 = [v44 configurationWithHierarchicalColor_];

      v38 = [v23 configurationByApplyingConfiguration_];
      v39 = objc_allocWithZone(HFImageIconDescriptor);
      v40 = sub_20DD64E74();

      v41 = [v39 initWithSystemImageNamed:v40 configuration:v38];

      v47(v18, v48);
      (*(v32 + 8))(v35, v52);
      return v41;
    }
  }

  else
  {
  }

  return v26;
}

uint64_t sub_20DA9ADB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A38, &unk_20DD940C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DA9AE18(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D38, &unk_20DD96E60);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v33 - v7;
  v9 = *(v6 + 56);
  *(&v33 - v7) = a1;
  v10 = sub_20DD64674();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v8[v9], v2, v10);
  v12 = (*(v11 + 88))(&v8[v9], v10);
  if (v12 == *MEMORY[0x277D17670])
  {
    if (!a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_20DD93A70;
      v14 = *MEMORY[0x277CD0EB0];
      *(v13 + 32) = sub_20DD64EB4();
      *(v13 + 40) = v15;
LABEL_14:
      (*(v11 + 8))(&v8[v9], v10);
      return v13;
    }

    goto LABEL_20;
  }

  if (v12 == *MEMORY[0x277D17658])
  {
    if (!a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_20DD96300;
      v16 = *MEMORY[0x277CD0E20];
      *(v13 + 32) = sub_20DD64EB4();
      *(v13 + 40) = v17;
      v18 = *MEMORY[0x277CD0E30];
      *(v13 + 48) = sub_20DD64EB4();
      *(v13 + 56) = v19;
      v20 = *MEMORY[0x277CD0F58];
      *(v13 + 64) = sub_20DD64EB4();
      *(v13 + 72) = v21;
      v22 = *MEMORY[0x277CD0E58];
      *(v13 + 80) = sub_20DD64EB4();
      *(v13 + 88) = v23;
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  if (v12 == *MEMORY[0x277D17678])
  {
    if (!a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_20DD94280;
      v24 = *MEMORY[0x277CD0ED8];
      *(v13 + 32) = sub_20DD64EB4();
      *(v13 + 40) = v25;
      v26 = MEMORY[0x277CD0EE8];
LABEL_13:
      v29 = *v26;
      *(v13 + 48) = sub_20DD64EB4();
      *(v13 + 56) = v30;
      goto LABEL_14;
    }
  }

  else if (v12 == *MEMORY[0x277D17680])
  {
    if (a1 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_20DD94280;
      v27 = *MEMORY[0x277CD0F30];
      *(v13 + 32) = sub_20DD64EB4();
      *(v13 + 40) = v28;
      v26 = MEMORY[0x277CD0E60];
      goto LABEL_13;
    }
  }

  else if (v12 == *MEMORY[0x277D17668] || (v12 == *MEMORY[0x277D17660] ? (v32 = a1 == 0) : (v32 = 0), v32))
  {
    (*(v11 + 8))(&v8[v9], v10);
    return MEMORY[0x277D84F90];
  }

LABEL_20:
  sub_20D9D76EC(v8, &qword_27C844D38, &unk_20DD96E60);
  return MEMORY[0x277D84F90];
}

id ActivityEventStatusItem.__allocating_init(home:room:valueSource:targetKind:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v23 = a1;
  v24 = a3;
  v8 = sub_20DD636C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(v5);
  v14 = OBJC_IVAR____TtC4Home23ActivityEventStatusItem_midnightToday;
  v15 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  v16 = [v15 hf_startOfDay];

  sub_20DD63674();
  (*(v9 + 32))(&v13[v14], v12, v8);
  *&v13[OBJC_IVAR____TtC4Home23ActivityEventStatusItem_targetKind] = a4;
  v17 = type metadata accessor for ActivityLogCoordinator();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = v23;
  *&v13[OBJC_IVAR____TtC4Home23ActivityEventStatusItem_activityLogCoordinator] = ActivityLogCoordinator.init(home:targetKind:)(v20, a4);
  v25.receiver = v13;
  v25.super_class = v5;
  v21 = objc_msgSendSuper2(&v25, sel_initWithHome_room_valueSource_, v20, a2, v24);

  swift_unknownObjectRelease();
  return v21;
}

id ActivityEventStatusItem.init(home:room:valueSource:targetKind:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = a1;
  v9 = sub_20DD636C4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC4Home23ActivityEventStatusItem_midnightToday;
  v15 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  v16 = [v15 hf_startOfDay];

  sub_20DD63674();
  (*(v10 + 32))(&v5[v14], v13, v9);
  *&v5[OBJC_IVAR____TtC4Home23ActivityEventStatusItem_targetKind] = a4;
  v17 = type metadata accessor for ActivityLogCoordinator();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = v25;
  *&v5[OBJC_IVAR____TtC4Home23ActivityEventStatusItem_activityLogCoordinator] = ActivityLogCoordinator.init(home:targetKind:)(v20, a4);
  v21 = type metadata accessor for ActivityEventStatusItem(0);
  v26.receiver = v5;
  v26.super_class = v21;
  v22 = objc_msgSendSuper2(&v26, sel_initWithHome_room_valueSource_, v20, a2, a3);

  swift_unknownObjectRelease();
  return v22;
}

void ActivityEventStatusItem.init(home:room:valueSource:)()
{
  v1 = sub_20DD636C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC4Home23ActivityEventStatusItem_midnightToday;
  v7 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  v8 = [v7 hf_startOfDay];

  sub_20DD63674();
  (*(v2 + 32))(v0 + v6, v5, v1);
  sub_20DD65814();
  __break(1u);
}

uint64_t sub_20DA9B814(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v63 - v7;
  v9 = sub_20DD64C44();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    __break(1u);
    return result;
  }

  v15 = HFItemUpdateOptionFastInitialUpdate;
  v67 = HFItemUpdateOptionFastInitialUpdate;
  type metadata accessor for HFItemUpdateOption(0);
  sub_20DA972E4();
  v16 = v15;
  sub_20DD65684();
  v17 = *(a1 + 16);
  v65 = v9;
  v64 = v10;
  v63 = ObjectType;
  if (v17 && (v18 = sub_20D9CB264(v68), (v19 & 1) != 0))
  {
    sub_20D9D7174(*(a1 + 56) + 32 * v18, v69);
    sub_20D9D4298(v68);
    sub_20D9D7510(0, &qword_27C8433B0, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v20 = v67;
      v21 = [(__CFString *)v67 BOOLValue];

      goto LABEL_8;
    }
  }

  else
  {
    sub_20D9D4298(v68);
  }

  v21 = 0;
LABEL_8:
  v22 = [v2 home];
  v23 = [v2 home];
  v24 = [v23 currentUser];

  v25 = [v22 homeAccessControlForUser_];
  v66 = [v25 isRemoteAccessAllowed];

  v26 = [v2 home];
  v27 = [v26 homeLocationStatus];

  v28 = [v2 home];
  v29 = *&v2[OBJC_IVAR____TtC4Home23ActivityEventStatusItem_targetKind];
  v30 = [v28 activityLogAvailableForTargetKind_];

  if (!v30)
  {
    goto LABEL_14;
  }

  v31 = [v2 home];
  v32 = [v31 isEventLogEnabled];

  v33 = v66;
  if (v27 == 1)
  {
    v33 = 1;
  }

  if (v32 && (v33 & 1) != 0)
  {
    v34 = sub_20DD65114();
    (*(*(v34 - 8) + 56))(v8, 1, 1, v34);
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    *(v36 + 32) = v21;
    v37 = v63;
    *(v36 + 40) = v35;
    *(v36 + 48) = v37;
    v38 = [objc_allocWithZone(MEMORY[0x277D2C900]) init];
    [v38 setDescriptor_];
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = &unk_20DD96DB0;
    v39[5] = v36;
    v39[6] = v38;
    v40 = swift_allocObject();
    v40[2] = 0;
    v40[3] = 0;
    v40[4] = &unk_20DD93AA0;
    v40[5] = v39;

    v41 = v38;

    sub_20D9D6B40(0, 0, v8, 0, 0, &unk_20DD95DF0, v40);

    sub_20D9D76EC(v8, &qword_27C8443F0, &qword_20DD93820);
  }

  else
  {
LABEL_14:
    if (qword_27C842480 != -1)
    {
      swift_once();
    }

    v42 = qword_27C84C658;
    sub_20DD64C54();
    v43 = v2;
    v44 = sub_20DD64C24();
    v45 = sub_20DD65384();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v68[0] = v47;
      *v46 = 67110146;
      v48 = [v43 home];
      v49 = [v48 activityLogAvailableForTargetKind_];

      *(v46 + 4) = v49;
      *(v46 + 8) = 1024;
      v50 = [v43 home];
      LODWORD(v48) = [v50 isEventLogEnabled];

      *(v46 + 10) = v48;
      *(v46 + 14) = 1024;
      *(v46 + 16) = v66;
      *(v46 + 20) = 1024;
      v51 = [v43 home];
      LODWORD(v50) = [v51 userSupportsActivityLog];

      *(v46 + 22) = v50;
      *(v46 + 26) = 2080;
      v52 = [v43 home];
      v53 = [v52 homeLocationStatus];

      v69[0] = v53;
      type metadata accessor for HMHomeLocation(0);
      v54 = sub_20DD64ED4();
      v56 = sub_20D9E0B38(v54, v55, v68);

      *(v46 + 28) = v56;
      _os_log_impl(&dword_20D9BF000, v44, v45, "Hiding activity status, available %{BOOL}d enabled %{BOOL}d remoteAccess %{BOOL}d. userSupportsActivityLog = %{BOOL}d. atHome %s", v46, 0x24u);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x20F327D10](v47, -1, -1);
      MEMORY[0x20F327D10](v46, -1, -1);
    }

    else
    {
    }

    (*(v64 + 8))(v14, v65);
    sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8433D0, &unk_20DD95640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20DD93A70;
    *(inited + 32) = @"hidden";
    v58 = sub_20D9D7510(0, &qword_27C8433B0, 0x277CCABB0);
    v59 = @"hidden";
    v60 = sub_20DD65424();
    *(inited + 64) = v58;
    *(inited + 40) = v60;
    v61 = sub_20D9D4AFC(inited);
    swift_setDeallocating();
    sub_20D9D76EC(inited + 32, &qword_27C8452C0, &qword_20DD96DA0);
    v62 = HFItemUpdateOutcome.init(results:)(v61);
    v41 = [objc_opt_self() futureWithResult_];
  }

  return v41;
}

uint64_t sub_20DA9C044(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 512) = a4;
  *(v4 + 744) = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820) - 8) + 64) + 15;
  *(v4 + 520) = swift_task_alloc();
  v6 = sub_20DD64C44();
  *(v4 + 528) = v6;
  v7 = *(v6 - 8);
  *(v4 + 536) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 544) = swift_task_alloc();
  *(v4 + 552) = swift_task_alloc();
  *(v4 + 560) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00) - 8) + 64) + 15;
  *(v4 + 568) = swift_task_alloc();
  *(v4 + 576) = swift_task_alloc();
  *(v4 + 584) = swift_task_alloc();
  *(v4 + 592) = swift_task_alloc();
  v10 = sub_20DD636C4();
  *(v4 + 600) = v10;
  v11 = *(v10 - 8);
  *(v4 + 608) = v11;
  *(v4 + 616) = *(v11 + 64);
  *(v4 + 624) = swift_task_alloc();
  *(v4 + 632) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA9C224, 0, 0);
}

uint64_t sub_20DA9C224()
{
  v1 = *(v0 + 744);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8433D0, &unk_20DD95640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD95210;
  *(inited + 32) = @"title";
  v3 = @"title";
  v4 = sub_20DD64E74();
  v5 = HFLocalizedString(v4);

  v6 = sub_20DD64EB4();
  v8 = v7;

  v9 = MEMORY[0x277D837D0];
  *(inited + 40) = v6;
  *(inited + 48) = v8;
  *(inited + 64) = v9;
  *(inited + 72) = @"icon";
  v10 = objc_allocWithZone(HFImageIconDescriptor);
  v11 = @"icon";
  v12 = sub_20DD64E74();
  v13 = [v10 initWithSystemImageNamed_];

  v14 = sub_20D9D7510(0, &unk_27C843D70, off_277DEFBA8);
  *(inited + 80) = v13;
  *(inited + 104) = v14;
  *(inited + 112) = @"statusItemCategory";
  v15 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v16 = @"statusItemCategory";
  v17 = [v15 initWithUnsignedInteger_];
  v18 = sub_20D9D7510(0, &qword_27C8433B0, 0x277CCABB0);
  *(v0 + 640) = v18;
  *(inited + 144) = v18;
  *(inited + 120) = v17;
  v19 = sub_20D9D4AFC(inited);
  *(v0 + 648) = v19;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8452C0, &qword_20DD96DA0);
  swift_arrayDestroy();
  if (v1 == 1)
  {
    v20 = sub_20DD65424();
    *(v0 + 448) = v18;
    *(v0 + 424) = v20;
    sub_20D9D77C8((v0 + 424), (v0 + 456));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D0070((v0 + 456), @"hidden", isUniquelyReferenced_nonNull_native);
    sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
    v59 = HFItemUpdateOutcome.init(results:)(v19);
    v22 = *(v0 + 632);
    v23 = *(v0 + 624);
    v24 = *(v0 + 592);
    v25 = *(v0 + 584);
    v26 = *(v0 + 576);
    v27 = *(v0 + 568);
    v28 = *(v0 + 560);
    v29 = *(v0 + 552);
    v30 = *(v0 + 544);
    v31 = *(v0 + 520);

    v32 = *(v0 + 8);

    return v32(v59);
  }

  else
  {
    v34 = *(v0 + 512);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 656) = Strong;
    v36 = *(v0 + 632);
    if (Strong)
    {
      v37 = *(v0 + 608);
      v38 = *(v0 + 600);
      v39 = *(v0 + 592);
      v40 = *(v0 + 584);
      v41 = OBJC_IVAR____TtC4Home23ActivityEventStatusItem_midnightToday;
      v42 = *(v37 + 16);
      *(v0 + 664) = v42;
      *(v0 + 672) = (v37 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v43 = Strong;
      v42(v36, Strong + v41, v38);
      v44 = OBJC_IVAR____TtC4Home23ActivityEventStatusItem_activityLogCoordinator;
      *(v0 + 680) = OBJC_IVAR____TtC4Home23ActivityEventStatusItem_activityLogCoordinator;
      v45 = *(v43 + v44);
      v42(v39, v36, v38);
      v46 = *(v37 + 56);
      *(v0 + 688) = v46;
      *(v0 + 696) = (v37 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v46(v39, 0, 1, v38);
      v46(v40, 1, 1, v38);
      v47 = swift_task_alloc();
      *(v0 + 704) = v47;
      *v47 = v0;
      v47[1] = sub_20DA9C7C0;
      v48 = *(v0 + 592);
      v49 = *(v0 + 584);

      return sub_20DA45D84(v48, v49);
    }

    else
    {
      v50 = *(v0 + 624);
      v51 = *(v0 + 592);
      v52 = *(v0 + 584);
      v53 = *(v0 + 576);
      v54 = *(v0 + 568);
      v55 = *(v0 + 560);
      v57 = *(v0 + 552);
      v58 = *(v0 + 544);
      v60 = *(v0 + 520);

      [objc_opt_self() hf:37 errorWithCode:?];
      swift_willThrow();

      v56 = *(v0 + 8);

      return v56();
    }
  }
}

uint64_t sub_20DA9C7C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 704);
  v5 = *v2;
  *(*v2 + 712) = a1;

  v6 = *(v3 + 592);
  v7 = *(v3 + 584);
  if (v1)
  {

    sub_20D9D76EC(v7, &unk_27C843810, &qword_20DD93F00);
    sub_20D9D76EC(v6, &unk_27C843810, &qword_20DD93F00);
    v8 = sub_20DA9CD34;
  }

  else
  {
    sub_20D9D76EC(v7, &unk_27C843810, &qword_20DD93F00);
    sub_20D9D76EC(v6, &unk_27C843810, &qword_20DD93F00);
    v8 = sub_20DA9C974;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_20DA9C974()
{
  v1 = *(v0 + 712);
  if (v1)
  {
    v2._rawValue = *(v0 + 648);
    v3 = sub_20DD64E74();
    v4 = HFLocalizedString(v3);

    sub_20DD64EB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
    v5 = swift_allocObject();
    v6 = MEMORY[0x277D83B88];
    *(v5 + 16) = xmmword_20DD93A70;
    v7 = MEMORY[0x277D83C10];
    *(v5 + 56) = v6;
    *(v5 + 64) = v7;
    *(v5 + 32) = v1;
    v8 = sub_20DD64E84();
    v10 = v9;

    *(v0 + 232) = v8;
    *(v0 + 256) = MEMORY[0x277D837D0];
    *(v0 + 240) = v10;
    sub_20D9D77C8((v0 + 232), (v0 + 264));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    rawValue = v2._rawValue;
    sub_20D9D0070((v0 + 264), @"description", isUniquelyReferenced_nonNull_native);
    if (v1 <= 40)
    {
      v12 = *(v0 + 672);
      v13 = *(v0 + 664);
      v14 = *(v0 + 632);
      v15 = *(v0 + 624);
      v16 = *(v0 + 616);
      v17 = *(v0 + 608);
      v18 = *(v0 + 600);
      v19 = *(v0 + 520);
      v20 = *(*(v0 + 656) + *(v0 + 680));
      v21 = sub_20DD65114();
      (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
      v13(v15, v14, v18);
      v22 = (*(v17 + 80) + 40) & ~*(v17 + 80);
      v23 = swift_allocObject();
      *(v23 + 2) = 0;
      *(v23 + 3) = 0;
      *(v23 + 4) = v20;
      (*(v17 + 32))(&v23[v22], v15, v18);
      v2._rawValue = rawValue;

      sub_20DA1CB28(0, 0, v19, &unk_20DD96E78, v23);
    }

    v24 = *(v0 + 656);
    v25 = *(v0 + 632);
    v26 = *(v0 + 608);
    v27 = *(v0 + 600);
    sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
    v41 = HFItemUpdateOutcome.init(results:)(v2);

    (*(v26 + 8))(v25, v27);
    v28 = *(v0 + 632);
    v29 = *(v0 + 624);
    v30 = *(v0 + 592);
    v31 = *(v0 + 584);
    v32 = *(v0 + 576);
    v33 = *(v0 + 568);
    v34 = *(v0 + 560);
    v35 = *(v0 + 552);
    v36 = *(v0 + 544);
    v37 = *(v0 + 520);

    v38 = *(v0 + 8);

    return v38(v41);
  }

  else
  {
    v40 = *(*(v0 + 656) + *(v0 + 680));
    *(v0 + 720) = v40;

    return MEMORY[0x2822009F8](sub_20DA9CFF4, v40, 0);
  }
}

uint64_t sub_20DA9CD34()
{
  if (qword_27C842480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 560);
  v2 = qword_27C84C658;
  sub_20DD64C54();
  v3 = sub_20DD64C24();
  v4 = sub_20DD65364();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20D9BF000, v3, v4, "Failed to determine today event count", v5, 2u);
    MEMORY[0x20F327D10](v5, -1, -1);
  }

  v6 = *(v0 + 656);
  v7._rawValue = *(v0 + 648);
  v8 = *(v0 + 632);
  v9 = *(v0 + 608);
  v10 = *(v0 + 600);
  v11 = *(v0 + 560);
  v12 = *(v0 + 536);
  v13 = *(v0 + 528);

  (*(v12 + 8))(v11, v13);
  v14 = sub_20DD64E74();
  v15 = HFLocalizedString(v14);

  v16 = sub_20DD64EB4();
  v18 = v17;

  *(v0 + 192) = MEMORY[0x277D837D0];
  *(v0 + 168) = v16;
  *(v0 + 176) = v18;
  sub_20D9D77C8((v0 + 168), (v0 + 200));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0070((v0 + 200), @"description", isUniquelyReferenced_nonNull_native);
  sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
  v32 = HFItemUpdateOutcome.init(results:)(v7);

  (*(v9 + 8))(v8, v10);
  v20 = *(v0 + 632);
  v21 = *(v0 + 624);
  v22 = *(v0 + 592);
  v23 = *(v0 + 584);
  v24 = *(v0 + 576);
  v25 = *(v0 + 568);
  v26 = *(v0 + 560);
  v27 = *(v0 + 552);
  v28 = *(v0 + 544);
  v29 = *(v0 + 520);

  v30 = *(v0 + 8);

  return v30(v32);
}

uint64_t sub_20DA9CFF4()
{
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[75];
  v4 = v0[71];
  v2(v0[72], 1, 1, v3);
  v2(v4, 1, 1, v3);
  v5 = swift_task_alloc();
  v0[91] = v5;
  *v5 = v0;
  v5[1] = sub_20DA9D0D8;
  v6 = v0[90];
  v7 = v0[72];
  v8 = v0[71];

  return sub_20DA3B25C(v7, v8, 1, 0);
}

uint64_t sub_20DA9D0D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 728);
  v14 = *v2;

  if (v1)
  {
    v6 = v4[90];
    v7 = v4[72];
    v8 = v4[71];

    sub_20D9D76EC(v8, &unk_27C843810, &qword_20DD93F00);
    sub_20D9D76EC(v7, &unk_27C843810, &qword_20DD93F00);
    v9 = sub_20DA9D780;
    v10 = v6;
  }

  else
  {
    v11 = v4[72];
    v12 = v4[71];
    v4[92] = a1;
    sub_20D9D76EC(v12, &unk_27C843810, &qword_20DD93F00);
    sub_20D9D76EC(v11, &unk_27C843810, &qword_20DD93F00);
    v9 = sub_20DA9D280;
    v10 = 0;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t sub_20DA9D280()
{
  if (*(v0 + 736) <= 0)
  {
    if (qword_27C842480 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 544);
    v29 = qword_27C84C658;
    sub_20DD64C54();
    v30 = sub_20DD64C24();
    v31 = sub_20DD65384();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_20D9BF000, v30, v31, "Hiding activity status, no events found", v32, 2u);
      MEMORY[0x20F327D10](v32, -1, -1);
    }

    v33 = *(v0 + 656);
    v34._rawValue = *(v0 + 648);
    v35 = *(v0 + 640);
    v55 = *(v0 + 632);
    v36 = *(v0 + 608);
    v37 = *(v0 + 600);
    v38 = *(v0 + 544);
    v39 = *(v0 + 536);
    v40 = *(v0 + 528);

    (*(v39 + 8))(v38, v40);
    v41 = sub_20DD65424();
    *(v0 + 384) = v35;
    *(v0 + 360) = v41;
    sub_20D9D77C8((v0 + 360), (v0 + 392));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D0070((v0 + 392), @"hidden", isUniquelyReferenced_nonNull_native);
    sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
    v56 = HFItemUpdateOutcome.init(results:)(v34);

    (*(v36 + 8))(v55, v37);
  }

  else
  {
    v1 = *(v0 + 712);
    v2._rawValue = *(v0 + 648);
    v3 = sub_20DD64E74();
    v4 = HFLocalizedString(v3);

    sub_20DD64EB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
    v5 = swift_allocObject();
    v6 = MEMORY[0x277D83B88];
    *(v5 + 16) = xmmword_20DD93A70;
    v7 = MEMORY[0x277D83C10];
    *(v5 + 56) = v6;
    *(v5 + 64) = v7;
    *(v5 + 32) = v1;
    v8 = sub_20DD64E84();
    v10 = v9;

    *(v0 + 232) = v8;
    *(v0 + 256) = MEMORY[0x277D837D0];
    *(v0 + 240) = v10;
    sub_20D9D77C8((v0 + 232), (v0 + 264));
    v11 = swift_isUniquelyReferenced_nonNull_native();
    rawValue = v2._rawValue;
    sub_20D9D0070((v0 + 264), @"description", v11);
    if (v1 <= 40)
    {
      v12 = *(v0 + 672);
      v13 = *(v0 + 664);
      v14 = *(v0 + 632);
      v15 = *(v0 + 624);
      v16 = *(v0 + 616);
      v17 = *(v0 + 608);
      v18 = *(v0 + 600);
      v19 = *(v0 + 520);
      v20 = *(*(v0 + 656) + *(v0 + 680));
      v21 = sub_20DD65114();
      (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
      v13(v15, v14, v18);
      v22 = (*(v17 + 80) + 40) & ~*(v17 + 80);
      v23 = swift_allocObject();
      *(v23 + 2) = 0;
      *(v23 + 3) = 0;
      *(v23 + 4) = v20;
      (*(v17 + 32))(&v23[v22], v15, v18);
      v2._rawValue = rawValue;

      sub_20DA1CB28(0, 0, v19, &unk_20DD96E78, v23);
    }

    v24 = *(v0 + 656);
    v25 = *(v0 + 632);
    v26 = *(v0 + 608);
    v27 = *(v0 + 600);
    sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
    v56 = HFItemUpdateOutcome.init(results:)(v2);

    (*(v26 + 8))(v25, v27);
  }

  v43 = *(v0 + 632);
  v44 = *(v0 + 624);
  v45 = *(v0 + 592);
  v46 = *(v0 + 584);
  v47 = *(v0 + 576);
  v48 = *(v0 + 568);
  v49 = *(v0 + 560);
  v50 = *(v0 + 552);
  v51 = *(v0 + 544);
  v52 = *(v0 + 520);

  v53 = *(v0 + 8);

  return v53(v56);
}