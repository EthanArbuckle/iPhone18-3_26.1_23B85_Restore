unint64_t sub_224AA2E7C()
{
  v1 = *(v0 + 40);
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](0);
  v2 = sub_224DAFEA8();
  return sub_224AA27D0(v2);
}

unint64_t sub_224AA2EE8(unint64_t result, void *a2, uint64_t a3)
{
  v4 = result;
  if (result >> 62)
  {
    result = sub_224DAF838();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA5DCC0](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 24);
        ObjectType = swift_getObjectType();
        v13[3] = type metadata accessor for ProcessMonitor();
        v13[4] = &off_28382AA58;
        v13[0] = a2;
        v10 = *(v8 + 32);
        v11 = a2;
        v10(v13, a3, ObjectType, v8);

        swift_unknownObjectRelease();
        result = __swift_destroy_boxed_opaque_existential_1(v13);
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_224AA3038(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  if (v3)
  {
    v5 = *(v2 + 72);

    v3(a2);

    sub_224A3D418(v3);
  }
}

void sub_224AA30D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  v9 = __swift_project_boxed_opaque_existential_1((*(a1 + qword_2813548D0) + 24), *(*(a1 + qword_2813548D0) + 48));
  v10 = *v9;
  v11 = *(*v9 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  os_unfair_lock_lock(*(v11 + 16));
  v12 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes;
  swift_beginAccess();
  v13 = *(v10 + v12);
  v14 = *(v11 + 16);

  os_unfair_lock_unlock(v14);
  v15 = sub_224A33924(a2, v13);

  v16 = *(a1 + qword_2813548C8);
  if (v16)
  {
    v30 = v5;
    v31 = v4;
    v17 = __swift_project_boxed_opaque_existential_1((v16 + 16), *(v16 + 40));
    v18 = *v17;
    v19 = *(*v17 + 24);
    v20 = *(v19 + 16);

    os_unfair_lock_lock(v20);
    v21 = swift_beginAccess();
    v22 = *(v18 + 32);
    MEMORY[0x28223BE20](v21);
    *(&v30 - 2) = a2;

    sub_224AA3B30(sub_224C4E570, (&v30 - 4), v22);
    v24 = v23;

    os_unfair_lock_unlock(*(v19 + 16));

    if ((v15 & 1) != 0 || v24)
    {

      return;
    }

    v4 = v31;
    v5 = v30;
  }

  else if (v15)
  {
    return;
  }

  v25 = qword_2813549E8;
  swift_beginAccess();
  v26 = *(a1 + v25);
  if (*(v26 + 16) && (v27 = sub_224A89A08(a2), (v28 & 1) != 0))
  {
    v29 = *(*(v26 + 56) + 8 * v27);
  }

  else
  {
    v29 = 0;
  }

  swift_endAccess();
  (*(v5 + 16))(v8, a2, v4);
  swift_beginAccess();
  sub_224AA33D8(0, v8);
  swift_endAccess();
  if (v29)
  {
    sub_224CDD264(v29, a2);
  }

  sub_224AA2B10();
}

void sub_224AA33EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = a2;
  v89 = a3;
  v87 = a1;
  v5 = v3;
  v6 = sub_224DAB7C8();
  v85 = *(v6 - 8);
  v86 = v6;
  v7 = *(v85 + 64);
  MEMORY[0x28223BE20](v6);
  v84 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(*(v3 + qword_2813548C0) + 16));
  v9 = qword_2813549E0;
  v10 = *(v3 + qword_2813549E0);
  if (v10)
  {
    v11 = v10;
    v12 = sub_224DAB228();
    v13 = sub_224DAF268();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_224A2F000, v12, v13, "Timer invalidated.", v14, 2u);
      MEMORY[0x22AA5EED0](v14, -1, -1);
    }

    [v11 invalidate];
    v15 = *(v5 + v9);
    *(v5 + v9) = 0;
  }

  v90 = v9;
  v16 = qword_2813549E8;
  swift_beginAccess();
  v17 = *(v5 + v16);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;
  v23 = *(v5 + v16);
  swift_bridgeObjectRetain_n();
  v24 = 0;
  v25 = MEMORY[0x277D84F98];
  if (v21)
  {
    while (1)
    {
      v26 = v24;
LABEL_13:
      v27 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v28 = *(*(v17 + 56) + ((v26 << 9) | (8 * v27)));

      v25 = v28;
      if (!v21)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v26 >= v22)
    {
      break;
    }

    v21 = *(v18 + 8 * v26);
    ++v24;
    if (v21)
    {
      v24 = v26;
      goto LABEL_13;
    }
  }

  v29 = 0;
  v18 = v25 + 64;
  v30 = *(v25 + 64);
  v31 = 1 << *(v25 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v4 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  v33 = v32 & v30;
  v34 = (v31 + 63) >> 6;
  while (v33)
  {
LABEL_23:
    v36 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    if (*(*(*(v25 + 56) + ((v29 << 9) | (8 * v36))) + 24) > 0)
    {

      sub_224DAF9B8();
      v37 = *(aBlock[0] + 16);
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
    }
  }

  while (1)
  {
    v35 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v35 >= v34)
    {

      v18 = aBlock[0];
      if ((aBlock[0] & 0x8000000000000000) != 0 || (aBlock[0] & 0x4000000000000000) != 0)
      {
        goto LABEL_39;
      }

      v38 = *(aBlock[0] + 16);
      if (!v38)
      {
        goto LABEL_40;
      }

      goto LABEL_28;
    }

    v33 = *(v18 + 8 * v35);
    ++v29;
    if (v33)
    {
      v29 = v35;
      goto LABEL_23;
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  v38 = sub_224DAF838();
  if (v38)
  {
LABEL_28:
    aBlock[0] = v4;
    sub_224ADA204(0, v38 & ~(v38 >> 63), 0);
    if (v38 < 0)
    {
      __break(1u);
      return;
    }

    v39 = 0;
    v40 = aBlock[0];
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v41 = *(MEMORY[0x22AA5DCC0](v39, v18) + 16);
        swift_unknownObjectRelease();
      }

      else
      {
        v41 = *(*(v18 + 8 * v39 + 32) + 16);
      }

      aBlock[0] = v40;
      v43 = *(v40 + 16);
      v42 = *(v40 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_224ADA204((v42 > 1), v43 + 1, 1);
        v40 = aBlock[0];
      }

      ++v39;
      *(v40 + 16) = v43 + 1;
      *(v40 + 8 * v43 + 32) = v41;
    }

    while (v38 != v39);
  }

  else
  {
LABEL_40:

    v40 = MEMORY[0x277D84F90];
  }

  v44 = *(v40 + 16);
  if (v44)
  {
    v45 = *(v40 + 32);
    v46 = v44 - 1;
    if (v44 != 1)
    {
      v47 = (v40 + 40);
      do
      {
        v48 = *v47++;
        v49 = v48;
        if (v48 < v45)
        {
          v45 = v49;
        }

        --v46;
      }

      while (v46);
    }

    v50 = v45 + *(v5 + 16);
    BSContinuousMachTimeNow();
    v52 = v50 - v51;
  }

  else
  {

    v52 = 0.0;
  }

  v53 = *(v5 + qword_2813549F0);
  if (!v53)
  {
LABEL_63:
    if (!v44)
    {
      return;
    }

    goto LABEL_64;
  }

  swift_beginAccess();
  v54 = *(v53 + 56);

  v56 = sub_224CD72D4(v55);

  v57 = *(v56 + 16);
  if (!v57)
  {

    goto LABEL_63;
  }

  v58 = *(v56 + 32);
  v59 = v57 - 1;
  if (v59)
  {
    v60 = (v56 + 40);
    do
    {
      v61 = *v60++;
      v62 = v61;
      if (v61 < v58)
      {
        v58 = v62;
      }

      --v59;
    }

    while (v59);
  }

  v63 = v58 + *(v53 + qword_27D6F6238);
  BSContinuousMachTimeNow();
  v65 = v63 - v64;
  if (v65 >= v52)
  {
    v66 = v52;
  }

  else
  {
    v66 = v65;
  }

  if (v44)
  {
    v52 = v66;
  }

  else
  {
    v52 = v65;
  }

LABEL_64:
  if (v52 <= 0.0)
  {
    v52 = 0.0;
  }

  v67 = sub_224DAB228();
  v68 = sub_224DAF268();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 134349056;
    *(v69 + 4) = v52;
    _os_log_impl(&dword_224A2F000, v67, v68, "Scheduled timer in %{public}fs", v69, 0xCu);
    MEMORY[0x22AA5EED0](v69, -1, -1);
  }

  v70 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
  v71 = sub_224DAEDE8();
  v72 = [v70 initWithIdentifier_];

  v73 = v90;
  v74 = *(v5 + v90);
  *(v5 + v90) = v72;

  v75 = *(v5 + v73);
  if (v75)
  {
    sub_224AC319C();
    v77 = v85;
    v76 = v86;
    v78 = v84;
    (*(v85 + 104))(v84, *MEMORY[0x277D851B8], v86);
    v79 = v75;
    v80 = sub_224DAF428();
    (*(v77 + 8))(v78, v76);
    v81 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = v88;
    aBlock[5] = v81;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A3837C;
    aBlock[3] = v89;
    v82 = _Block_copy(aBlock);

    [v79 scheduleWithFireInterval:v80 leewayInterval:v82 queue:v52 handler:0.0];
    _Block_release(v82);
  }
}

void sub_224AA3B30(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v15 = *(*(a3 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v9)))));
      v13 = v15;
      v14 = a1(&v15);
      if (v3)
      {
        break;
      }

      if (v14)
      {
        goto LABEL_12;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
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

      if (v12 >= v10)
      {
LABEL_12:

        return;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_224AA3C94()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA3D14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7110, &qword_224DB4998);
  result = sub_224DAFB98();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 56) + (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      sub_224DAFE68();
      MEMORY[0x22AA5E1E0](0);
      result = sub_224DAFEA8();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 56) + v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_224AA3F94()
{
  result = qword_28135B798;
  if (!qword_28135B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B798);
  }

  return result;
}

uint64_t sub_224AA3FE8()
{
  v1 = sub_224DAB7C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  sub_224DAF938();
  MEMORY[0x22AA5D210](0x736C6F72746E6F63, 0xEA0000000000203ALL);
  v6 = *v0;
  v7 = 0xE500000000000000;
  if (v6 == 1)
  {
    v8 = 0x6573556E69;
  }

  else
  {
    v8 = 7105633;
  }

  if (v6 != 1)
  {
    v7 = 0xE300000000000000;
  }

  if (*v0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*v0)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  MEMORY[0x22AA5D210](v9, v10);

  MEMORY[0x22AA5D210](0xD000000000000010, 0x8000000224DCBCC0);
  v11 = v0[1];
  v12 = 0xE500000000000000;
  if (v11 == 1)
  {
    v13 = 0x6573556E69;
  }

  else
  {
    v13 = 7105633;
  }

  if (v11 != 1)
  {
    v12 = 0xE300000000000000;
  }

  if (v0[1])
  {
    v14 = v13;
  }

  else
  {
    v14 = 1701736302;
  }

  if (v0[1])
  {
    v15 = v12;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x22AA5D210](v14, v15);

  MEMORY[0x22AA5D210](0x687370616E73203BLL, 0xED0000203A73746FLL);
  v16 = v0[2];
  v17 = 0xE500000000000000;
  if (v16 == 1)
  {
    v18 = 0x6573556E69;
  }

  else
  {
    v18 = 7105633;
  }

  if (v16 != 1)
  {
    v17 = 0xE300000000000000;
  }

  if (v0[2])
  {
    v19 = v18;
  }

  else
  {
    v19 = 1701736302;
  }

  if (v0[2])
  {
    v20 = v17;
  }

  else
  {
    v20 = 0xE400000000000000;
  }

  MEMORY[0x22AA5D210](v19, v20);

  MEMORY[0x22AA5D210](0x696C656D6974203BLL, 0xED0000203A73656ELL);
  v21 = v0[3];
  v22 = 0xE500000000000000;
  if (v21 == 1)
  {
    v23 = 0x6573556E69;
  }

  else
  {
    v23 = 7105633;
  }

  if (v21 != 1)
  {
    v22 = 0xE300000000000000;
  }

  if (v0[3])
  {
    v24 = v23;
  }

  else
  {
    v24 = 1701736302;
  }

  if (v0[3])
  {
    v25 = v22;
  }

  else
  {
    v25 = 0xE400000000000000;
  }

  MEMORY[0x22AA5D210](v24, v25);

  MEMORY[0x22AA5D210](0xD000000000000013, 0x8000000224DCBCE0);
  v26 = v0[4];
  v27 = 0xE500000000000000;
  if (v26 == 1)
  {
    v28 = 0x6573556E69;
  }

  else
  {
    v28 = 7105633;
  }

  if (v26 != 1)
  {
    v27 = 0xE300000000000000;
  }

  if (v0[4])
  {
    v29 = v28;
  }

  else
  {
    v29 = 1701736302;
  }

  if (v0[4])
  {
    v30 = v27;
  }

  else
  {
    v30 = 0xE400000000000000;
  }

  MEMORY[0x22AA5D210](v29, v30);

  MEMORY[0x22AA5D210](0xD000000000000012, 0x8000000224DCBD00);
  v31 = v0[5];
  v32 = 0xE500000000000000;
  if (v31 == 1)
  {
    v33 = 0x6573556E69;
  }

  else
  {
    v33 = 7105633;
  }

  if (v31 != 1)
  {
    v32 = 0xE300000000000000;
  }

  if (v0[5])
  {
    v34 = v33;
  }

  else
  {
    v34 = 1701736302;
  }

  if (v0[5])
  {
    v35 = v32;
  }

  else
  {
    v35 = 0xE400000000000000;
  }

  MEMORY[0x22AA5D210](v34, v35);

  MEMORY[0x22AA5D210](0xD000000000000012, 0x8000000224DCBD20);
  v36 = v0[6];
  v37 = 0xE500000000000000;
  if (v36 == 1)
  {
    v38 = 0x6573556E69;
  }

  else
  {
    v38 = 7105633;
  }

  if (v36 != 1)
  {
    v37 = 0xE300000000000000;
  }

  if (v0[6])
  {
    v39 = v38;
  }

  else
  {
    v39 = 1701736302;
  }

  if (v0[6])
  {
    v40 = v37;
  }

  else
  {
    v40 = 0xE400000000000000;
  }

  MEMORY[0x22AA5D210](v39, v40);

  MEMORY[0x22AA5D210](0x69726F697270203BLL, 0xEC000000203A7974);
  v41 = &v0[*(type metadata accessor for FileReaperProtectionConfiguration(0) + 44)];
  sub_224DAB838();
  sub_224DAFA48();
  (*(v2 + 8))(v5, v1);
  return v43[0];
}

uint64_t sub_224AA43B0(ValueMetadata *a1)
{
  v3 = v1;
  v89 = *MEMORY[0x277D85DE8];
  v74 = type metadata accessor for UnpairedRelationshipURLProposer();
  v5 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB8C8();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  inited = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 416);
  *inited = v13;
  (*(v9 + 104))(inited, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_224DAB8F8();
  v16 = *(v9 + 8);
  v15 = v9 + 8;
  v16(inited, v8);
  if ((v13 & 1) == 0)
  {
    goto LABEL_16;
  }

  v73 = v7;
  v77 = sub_224DAA508();
  v78 = sub_224DAA4F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F36D0, &qword_224DBEBE0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_224DBEA10;
  sub_224A3317C(v3 + 248, v86);
  *(inited + 7) = &type metadata for ExtensionURLProposer;
  *(inited + 8) = &off_2838358D0;
  *(inited + 4) = swift_allocObject();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F61E8, &qword_224DBEBE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F61F0, &qword_224DBEBF0);
  swift_dynamicCast();
  v17 = *(v3 + 296);
  *(inited + 12) = &type metadata for ArchiveURLProtector;
  *(inited + 13) = &off_283832768;
  v18 = swift_allocObject();
  *(inited + 9) = v18;
  *&v76 = type metadata accessor for MobileTimelineService();
  *(v18 + 40) = v76;
  *(v18 + 48) = &off_283836FE0;
  *(v18 + 16) = v17;
  *(v18 + 56) = BYTE3(a1->Kind);
  v19 = *(v3 + 320);
  *(inited + 17) = &type metadata for ArchiveURLProtector;
  *(inited + 18) = &off_283832768;
  v20 = swift_allocObject();
  *(inited + 14) = v20;
  *(v20 + 40) = type metadata accessor for MobileSnapshotService();
  *(v20 + 48) = &off_283836950;
  *(v20 + 16) = v19;
  *(v20 + 56) = BYTE2(a1->Kind);
  v21 = *(v3 + 288);
  *(inited + 22) = &type metadata for PlaceholderURLProtector;
  *(inited + 23) = &off_2838308C0;
  v22 = swift_allocObject();
  *(inited + 19) = v22;
  *(v22 + 40) = type metadata accessor for MobilePlaceholderService();
  *(v22 + 48) = &off_283833AF0;
  *(v22 + 16) = v21;
  *(v22 + 56) = BYTE1(a1->Kind);
  sub_224A3317C(v3 + 248, v86);
  *(inited + 27) = &type metadata for RelevanceURLProtector;
  *(inited + 28) = &off_2838337F0;
  *(inited + 24) = swift_allocObject();
  swift_retain_n();

  swift_dynamicCast();
  *(inited + 32) = &type metadata for SnapshotURLProtector;
  *(inited + 33) = &off_283836B40;
  v23 = swift_allocObject();
  *(inited + 29) = v23;
  v24 = MEMORY[0x277CFA098];
  v25 = v78;
  v23[5] = v77;
  v23[6] = v24;
  v23[2] = v25;
  v23[7] = 0x6F687370616E732FLL;
  v23[8] = 0xEB000000002F7374;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F61F8, &qword_224DBEBF8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_224DB30F0;
  v26 = *(v3 + 200);
  *(v15 + 56) = type metadata accessor for WidgetRendererServer();
  *(v15 + 64) = &off_2838328C0;
  *(v15 + 32) = v26;
  *(v15 + 96) = v76;
  *(v15 + 104) = &off_283836FF8;
  *(v15 + 72) = v17;
  *(inited + 37) = &type metadata for ClientSnapshotURLProvider;
  *(inited + 38) = &off_2838297A8;
  v27 = swift_allocObject();
  *(inited + 34) = v27;
  sub_224A3317C(v3 + 208, v27 + 24);
  v28 = *(v3 + 328);
  *(v27 + 88) = sub_224A3B79C(0, &qword_281350988, 0x277CFA310);
  *(v27 + 96) = &off_283829768;
  *(v27 + 104) = &off_283829780;
  *(v27 + 64) = v28;
  v2 = a1;
  v29 = BYTE4(a1->Kind);
  *(v27 + 16) = v15;
  *(v27 + 112) = v29;
  sub_224A3317C(v3 + 248, v86);

  v30 = v26;
  v31 = v28;
  v76 = *(v3 + 304);
  swift_unknownObjectRetain();
  v32 = sub_224CCF1F8();
  *&v86[40] = v76;
  v87 = v32;
  v88 = 1;
  sub_224CCF8C0(v86, &v83);
  v8 = sub_224AD99F4(1, 8, 1, inited);
  v81 = &type metadata for WidgetCacheKeyURLProtector;
  v82 = &off_28382BF00;
  *&v80 = swift_allocObject();
  sub_224CCF8C0(&v83, v80 + 16);
  v8[2] = 8;
  sub_224A36F98(&v80, (v8 + 39));
  sub_224CCF91C(&v83);
  sub_224CCF970(v3 + 120, &v80);
  if (!v81)
  {
    sub_224A3311C(&v80, &qword_27D6F5590, &qword_224DBEC00);
    v37 = a1;
    a1 = &type metadata for ArchiveURLProtector;
    v39 = *(v3 + 384);
    if (v39)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  sub_224A36F98(&v80, &v83);
  v33 = v73;
  sub_224A3317C(&v83, v73);
  v34 = v74;
  v35 = v33 + *(v74 + 20);
  sub_224DAA108();
  v15 = v8[2];
  v36 = v8[3];
  inited = (v15 + 1);
  if (v15 >= v36 >> 1)
  {
    v8 = sub_224AD99F4((v36 > 1), v15 + 1, 1, v8);
  }

  v37 = a1;
  a1 = &type metadata for ArchiveURLProtector;
  __swift_destroy_boxed_opaque_existential_1(&v83);
  v81 = v34;
  v82 = &off_28382F3C8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v80);
  sub_224CCF9E0(v33, boxed_opaque_existential_1, type metadata accessor for UnpairedRelationshipURLProposer);
  v8[2] = inited;
  sub_224A36F98(&v80, &v8[5 * v15 + 4]);
  sub_224CCFA48(v33, type metadata accessor for UnpairedRelationshipURLProposer);
  v39 = *(v3 + 384);
  if (!v39)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_6:
  v81 = type metadata accessor for LiveControlService();
  v82 = &off_283831020;
  *&v80 = v39;
  Kind = v37->Kind;
  v84 = &type metadata for ArchiveURLProtector;
  v85 = &off_283832768;
  v41 = swift_allocObject();
  *&v83 = v41;
  sub_224A36F98(&v80, v41 + 16);
  *(v41 + 56) = Kind;
  v79 = v8;
  inited = v8[2];
  v15 = v8[3];

  if (inited < v15 >> 1)
  {
    v42 = &off_283832768;
    v43 = &type metadata for ArchiveURLProtector;
    goto LABEL_8;
  }

LABEL_17:
  v8 = sub_224AD99F4((v15 > 1), (inited + 1), 1, v8);
  v79 = v8;
  v43 = v84;
  v42 = v85;
LABEL_8:
  v44 = __swift_mutable_project_boxed_opaque_existential_1(&v83, v43);
  v45 = *(v43[-1].Description + 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v72 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v48 + 16))(v47);
  sub_224A5C064(inited, v47, &v79, v43, v42);
  __swift_destroy_boxed_opaque_existential_1(&v83);
  v50 = v8[2];
  v49 = v8[3];
  if (v50 >= v49 >> 1)
  {
    v8 = sub_224AD99F4((v49 > 1), v50 + 1, 1, v8);
  }

  v84 = &type metadata for PreviewControlServiceProtector;
  v85 = &off_28382F580;
  *&v83 = 0xD000000000000011;
  *(&v83 + 1) = 0x8000000224DCDC50;
  v8[2] = v50 + 1;
  sub_224A36F98(&v83, &v8[5 * v50 + 4]);
  v51 = *(v3 + 336);
  if (!v51)
  {
    __break(1u);
  }

  v81 = type metadata accessor for MobileActivityService();
  v82 = &off_28382E3E8;
  *&v80 = v51;
  v52 = BYTE5(v2->Kind);
  v84 = a1;
  v53 = &off_283832768;
  v85 = &off_283832768;
  v54 = swift_allocObject();
  *&v83 = v54;
  sub_224A36F98(&v80, v54 + 16);
  *(v54 + 56) = v52;
  v79 = v8;
  v55 = v8[3];

  if ((v50 + 2) > (v55 >> 1))
  {
    v8 = sub_224AD99F4((v55 > 1), v50 + 2, 1, v8);
    v79 = v8;
    a1 = v84;
    v53 = v85;
  }

  v56 = __swift_mutable_project_boxed_opaque_existential_1(&v83, a1);
  v57 = *(a1[-1].Description + 8);
  MEMORY[0x28223BE20](v56);
  v59 = &v72 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v60 + 16))(v59);
  sub_224A5C064(v50 + 1, v59, &v79, a1, v53);
  __swift_destroy_boxed_opaque_existential_1(&v83);
  v61 = type metadata accessor for FileReaper();
  v62 = *(v3 + 88);
  v63 = *(v3 + 96);
  v64 = __swift_project_boxed_opaque_existential_1((v3 + 64), v62);
  v65 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v67 = &v72 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v68 + 16))(v67);
  *&v83 = v78;
  v69 = sub_224C738B8(v67, &v83, v8, 0, 0, v61, v62, v77, v63, MEMORY[0x277CFA098]);
  sub_224CCF91C(v86);
  v70 = *MEMORY[0x277D85DE8];
  return v69;
}

uint64_t sub_224AA4ED0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224AA4F08()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_224AA4F40()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_224AA4F80()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_224AA4FC8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t type metadata accessor for UnpairedRelationshipURLProposer()
{
  result = qword_281353018;
  if (!qword_281353018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_224AA5064()
{
  result = sub_224AA50E8();
  if (v1 <= 0x3F)
  {
    result = sub_224DA9688();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_224AA50E8()
{
  result = qword_281351740;
  if (!qword_281351740)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281351740);
  }

  return result;
}

uint64_t type metadata accessor for MobileTimelineService()
{
  result = qword_281358080;
  if (!qword_281358080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MobileSnapshotService()
{
  result = qword_2813582F8;
  if (!qword_2813582F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224AA51E4(void *a1)
{
  v3 = *(sub_224DA9878() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_224AA5258(a1, v4, v5);
}

void sub_224AA5258(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 invalidate];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 40);
    if (v5)
    {
      v6 = *(Strong + 48);

      v5(a3);

      sub_224A3D418(v5);
    }

    else
    {
    }
  }

  else
  {
    if (qword_281351498 != -1)
    {
      swift_once();
    }

    v7 = sub_224DAB258();
    __swift_project_value_buffer(v7, qword_281364E20);
    v8 = sub_224DAB228();
    v9 = sub_224DAF298();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_224A2F000, v8, v9, "Wake manager unexpectedly deallocated", v10, 2u);
      MEMORY[0x22AA5EED0](v10, -1, -1);
    }
  }
}

void sub_224AA53D0(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224AA54FC(a3 & 1, a1);
  }

  else
  {
    if (qword_281351498 != -1)
    {
      swift_once();
    }

    v5 = sub_224DAB258();
    __swift_project_value_buffer(v5, qword_281364E20);
    v6 = sub_224DAB228();
    v7 = sub_224DAF298();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_224A2F000, v6, v7, "Work scheduler unexpectedly deallocated", v8, 2u);
      MEMORY[0x22AA5EED0](v8, -1, -1);
    }
  }
}

uint64_t sub_224AA54FC(char a1, uint64_t a2)
{
  v4 = sub_224DAB7B8();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_224DAB848();
  v55 = *(v57 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DA9878();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = 0;
  v62 = 0xE000000000000000;
  sub_224DAF938();

  aBlock = 0xD000000000000016;
  v62 = 0x8000000224DCA040;
  if (a1)
  {
    v14 = 1701536119;
  }

  else
  {
    v14 = 0x656B61776E6F6ELL;
  }

  if (a1)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  MEMORY[0x22AA5D210](v14, v15);

  v16 = aBlock;
  v17 = v62;
  v18 = type metadata accessor for PushFoundation.KeepAliveTransaction();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = PushFoundation.KeepAliveTransaction.init(reason:)(v16, v17);
  if (qword_281351498 != -1)
  {
    swift_once();
  }

  v22 = sub_224DAB258();
  __swift_project_value_buffer(v22, qword_281364E20);
  (*(v10 + 16))(v13, a2, v9);
  v23 = sub_224DAB228();
  v24 = sub_224DAF2A8();
  v25 = os_log_type_enabled(v23, v24);
  v52 = v21;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock = v27;
    *v26 = 136446466;
    if (a1)
    {
      v28 = 1701536087;
    }

    else
    {
      v28 = 0x656B61776E6F4ELL;
    }

    v29 = sub_224A33F74(v28, v15, &aBlock);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    if (qword_28135C420 != -1)
    {
      swift_once();
    }

    v30 = qword_28135C428;
    v31 = sub_224DA9778();
    v32 = [v30 stringFromDate_];

    v33 = sub_224DAEE18();
    v35 = v34;

    (*(v10 + 8))(v13, v9);
    v36 = sub_224A33F74(v33, v35, &aBlock);

    *(v26 + 14) = v36;
    _os_log_impl(&dword_224A2F000, v23, v24, "%{public}s event fired for date: %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v27, -1, -1);
    MEMORY[0x22AA5EED0](v26, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v37 = v53;
  v38 = *(v53 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v40 = v38 + 32;
    do
    {
      sub_224A3317C(v40, &aBlock);
      v41 = v64;
      v42 = v65;
      __swift_project_boxed_opaque_existential_1(&aBlock, v64);
      (*(v42 + 3))(v41, v42);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v40 += 40;
      --v39;
    }

    while (v39);
  }

  v43 = *(v37 + 64);
  v44 = swift_allocObject();
  v45 = v52;
  *(v44 + 16) = v37;
  *(v44 + 24) = v45;
  v65 = sub_224AA68B4;
  v66 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v62 = 1107296256;
  v63 = sub_224A39F40;
  v64 = &block_descriptor_24;
  v46 = _Block_copy(&aBlock);

  v47 = v54;
  sub_224DAB7E8();
  v60 = MEMORY[0x277D84F90];
  sub_224AA686C(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v48 = v56;
  v49 = v59;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v47, v48, v46);
  _Block_release(v46);

  (*(v58 + 8))(v48, v49);
  (*(v55 + 8))(v47, v57);
}

uint64_t sub_224AA5BB8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_224AA5C1C()
{
  v46 = type metadata accessor for SimpleWorkScheduler.Work(0);
  v44 = *(v46 - 8);
  v1 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v43 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52D0, &qword_224DBB850);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = sub_224DA9878();
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = *(v41 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DA9808();
  v14 = *(v0 + 16);
  v15 = *(v14 + 16);

  os_unfair_lock_lock(v15);
  v40 = v13;
  sub_224AA6078(v0, v13, &v47);
  os_unfair_lock_unlock(*(v14 + 16));

  v16 = 0;
  v18 = (v47 + 64);
  v17 = *(v47 + 64);
  v45 = v47;
  v19 = 1 << *(v47 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v17;
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
    v23 = v16;
LABEL_13:
    v26 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v27 = v26 | (v23 << 6);
    v28 = *(*(v45 + 48) + 8 * v27);
    v29 = v43;
    sub_224C17A48(*(v45 + 56) + *(v44 + 72) * v27, v43, type metadata accessor for SimpleWorkScheduler.Work);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52D8, &qword_224DBB858);
    v31 = *(v30 + 48);
    *v7 = v28;
    sub_224C1798C(v29, v7 + v31);
    (*(*(v30 - 8) + 56))(v7, 0, 1, v30);
    v25 = v23;
LABEL_14:
    sub_224AA67AC(v7, v9);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52D8, &qword_224DBB858);
    if ((*(*(v32 - 8) + 48))(v9, 1, v32) == 1)
    {

      (*(v41 + 8))(v40, v42);
      return;
    }

    v33 = &v9[*(v32 + 48)];
    v34 = v33 + *(v46 + 24);
    v36 = *v34;
    v35 = *(v34 + 8);

    v37 = sub_224C17AB0(v33, type metadata accessor for SimpleWorkScheduler.Work);
    v36(v37);

    v16 = v25;
  }

  if (v22 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24 - 1;
  while (1)
  {
    v23 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v23 >= v22)
    {
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52D8, &qword_224DBB858);
      (*(*(v38 - 8) + 56))(v7, 1, 1, v38);
      v21 = 0;
      goto LABEL_14;
    }

    v21 = v18[v23];
    ++v16;
    if (v21)
    {
      goto LABEL_13;
    }
  }

  __break(1u);

  os_unfair_lock_unlock(*(v25 + 16));
  __break(1u);
}

uint64_t sub_224AA6078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v75 = a3;
  v83 = a2;
  v82 = type metadata accessor for SimpleWorkScheduler.Work(0);
  v86 = *(v82 - 8);
  v4 = *(v86 + 64);
  v5 = MEMORY[0x28223BE20](v82);
  v87 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v76 = &v74 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v74 - v10;
  MEMORY[0x28223BE20](v9);
  v79 = &v74 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52D0, &qword_224DBB850);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v84 = (&v74 - v18);
  swift_beginAccess();
  v74 = a1;
  v19 = *(a1 + 24);
  v20 = *(v19 + 64);
  v78 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v80 = v19;

  v25 = 0;
  v26 = MEMORY[0x277D84F98];
  v77 = MEMORY[0x277D84F98];
  v81 = v11;
  v85 = v17;
  while (v23)
  {
    v27 = v25;
LABEL_13:
    v30 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v31 = v30 | (v27 << 6);
    v32 = v79;
    v33 = *(*(v80 + 48) + 8 * v31);
    sub_224C17A48(*(v80 + 56) + *(v86 + 72) * v31, v79, type metadata accessor for SimpleWorkScheduler.Work);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52D8, &qword_224DBB858);
    v35 = *(v34 + 48);
    v36 = v85;
    *v85 = v33;
    v17 = v36;
    sub_224C1798C(v32, &v36[v35]);
    (*(*(v34 - 8) + 56))(v17, 0, 1, v34);
    v29 = v27;
LABEL_14:
    v37 = v17;
    v38 = v84;
    sub_224AA67AC(v37, v84);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52D8, &qword_224DBB858);
    if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
    {

      v72 = *(v74 + 24);
      *(v74 + 24) = v26;

      *v75 = v77;
      return result;
    }

    v40 = v29;
    v41 = *v38;
    sub_224C1798C(v38 + *(v39 + 48), v11);
    v42 = *(v82 + 20);
    sub_224DA9878();
    sub_224C179F0();
    if (sub_224DAEDB8())
    {
      sub_224C17A48(v11, v87, type metadata accessor for SimpleWorkScheduler.Work);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = v26;
      v45 = sub_224B31510(v41);
      v46 = v26[2];
      v47 = (v44 & 1) == 0;
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_40;
      }

      v49 = v44;
      if (v26[3] >= v48)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_224B2898C();
        }

        v17 = v85;
        v26 = v88;
        if ((v49 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_25:
        v55 = v87;
        v56 = v26[7] + *(v86 + 72) * v45;
        goto LABEL_26;
      }

      sub_224B160D8(v48, isUniquelyReferenced_nonNull_native);
      v50 = sub_224B31510(v41);
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_44;
      }

      v45 = v50;
      v17 = v85;
      v26 = v88;
      if (v49)
      {
        goto LABEL_25;
      }

LABEL_20:
      v26[(v45 >> 6) + 8] |= 1 << v45;
      *(v26[6] + 8 * v45) = v41;
      sub_224C1798C(v87, v26[7] + *(v86 + 72) * v45);
      v11 = v81;
      sub_224C17AB0(v81, type metadata accessor for SimpleWorkScheduler.Work);
      v52 = v26[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_41;
      }

      v26[2] = v54;
      v25 = v40;
    }

    else
    {
      sub_224C17A48(v11, v76, type metadata accessor for SimpleWorkScheduler.Work);
      v58 = v77;
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v88 = v58;
      v61 = sub_224B31510(v41);
      v62 = v58[2];
      v63 = (v60 & 1) == 0;
      v64 = v62 + v63;
      if (__OFADD__(v62, v63))
      {
        goto LABEL_42;
      }

      v65 = v60;
      if (v58[3] >= v64)
      {
        v17 = v85;
        if ((v59 & 1) == 0)
        {
          v71 = v61;
          sub_224B2898C();
          v61 = v71;
        }
      }

      else
      {
        sub_224B160D8(v64, v59);
        v66 = sub_224B31510(v41);
        v17 = v85;
        if ((v65 & 1) != (v67 & 1))
        {
          goto LABEL_44;
        }

        v61 = v66;
      }

      v68 = v88;
      v77 = v88;
      if (v65)
      {
        v56 = v88[7] + *(v86 + 72) * v61;
        v55 = v76;
LABEL_26:
        sub_224C17B18(v55, v56);
        v11 = v81;
        sub_224C17AB0(v81, type metadata accessor for SimpleWorkScheduler.Work);
        v25 = v40;
      }

      else
      {
        v88[(v61 >> 6) + 8] |= 1 << v61;
        *(v68[6] + 8 * v61) = v41;
        sub_224C1798C(v76, v68[7] + *(v86 + 72) * v61);
        v11 = v81;
        sub_224C17AB0(v81, type metadata accessor for SimpleWorkScheduler.Work);
        v69 = v68[2];
        v53 = __OFADD__(v69, 1);
        v70 = v69 + 1;
        if (v53)
        {
          goto LABEL_43;
        }

        v68[2] = v70;
        v25 = v40;
      }
    }
  }

  if (v24 <= v25 + 1)
  {
    v28 = v25 + 1;
  }

  else
  {
    v28 = v24;
  }

  v29 = v28 - 1;
  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v24)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52D8, &qword_224DBB858);
      (*(*(v57 - 8) + 56))(v17, 1, 1, v57);
      v23 = 0;
      goto LABEL_14;
    }

    v23 = *(v78 + 8 * v27);
    ++v25;
    if (v23)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224AA67AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52D0, &qword_224DBB850);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224AA6824(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224AA686C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224AA68B4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_224A962BC();
  return sub_224A9C084();
}

uint64_t sub_224AA68E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3B10, &unk_224DC3D00);
  v38 = a2;
  result = sub_224DAFB98();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_224DAFE68();
      sub_224DAEE78();
      result = sub_224DAFEA8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_224AA6BA0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_224AA6C68@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_224DAEE18();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_224AA6CB0()
{
  v1 = (type metadata accessor for PushEvent() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = v1[7];
  v7 = sub_224DA9878();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_224AA6DA0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA6DE8()
{
  v1 = type metadata accessor for IncomingMessage(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);
  swift_unknownObjectRelease();
  v7 = (v0 + v3);
  v8 = *(v0 + v3 + 8);
  if (v8 >> 60 != 15)
  {
    sub_224A78024(*v7, v8);
  }

  v9 = v1[5];
  v10 = sub_224DAE0D8();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  v11 = *(v7 + v1[6] + 8);

  v12 = v1[7];
  v13 = sub_224DAE178();
  (*(*(v13 - 8) + 8))(v7 + v12, v13);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_224AA6F60()
{
  v1 = sub_224DAC5E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_224AA7028()
{
  v1 = sub_224DABD48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AA70EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA712C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA7168()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_224AA71A0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AA7224()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA725C()
{
  v1 = sub_224DACC88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_224AA7344()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AA7384()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AA73C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA7404()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA744C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_224AA749C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AA74DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA754C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA758C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t get_enum_tag_for_layout_string_10ChronoCore20LiveControlServicing_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_224AA7620(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_224DAFE58();
  return sub_224B0C92C(a1, v4);
}

uint64_t sub_224AA76F8()
{
  v1 = sub_224DA9688();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AA7780()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA77C4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AA7800()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA788C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA78D0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA790C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_224DAA428();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_224AA7A08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_224DAA428();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_224AA7B10()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = v5 + *(v3 + 64);
  v7 = *(sub_224DAF728() - 8);
  v8 = *(v7 + 80);
  v9 = (v6 + v8) & ~v8;
  v10 = *(v7 + 64);
  (*(v3 + 8))(v0 + v5, v2);
  v11 = *(v1 - 8);
  if (!(*(v11 + 48))(v0 + v9, 1, v1))
  {
    (*(v11 + 8))(v0 + v9, v1);
  }

  v12 = (v10 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v12);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v4 | v8 | 7);
}

uint64_t sub_224AA7CC4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_224AA7CFC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA7D34()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AA7D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_224DA9878();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_224AA7E10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_224DA9878();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224AA7EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224DA9878();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_224DAC378();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_224AA7FA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_224DA9878();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_224DAC378();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_224AA809C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA80D4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA810C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA8144()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  v3 = *(v0 + 48);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AA8194()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);
  swift_unknownObjectRelease();

  v4 = *(v0 + 64);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_224AA81EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA822C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);
  swift_unknownObjectRelease();
  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_224AA8294()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);
  swift_unknownObjectRelease();
  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_224AA8304()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 80);
  swift_unknownObjectRelease();
  v5 = *(v0 + 96);

  v6 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_224AA837C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AA8410()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AA8460()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AA84A8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA84E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224AA8534()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA8580()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AA85D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA8610()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();
  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AA8660()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA86C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_224AA877C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224AA883C()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA8874()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA88B8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA88F0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA8948()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AA8990()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AA89E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224AA8A30()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA8A68()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  v2 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_224AA8AB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA8B08()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224AA8B54()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA8BA4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA8C20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA8C58()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA8C90()
{
  v1 = sub_224DABCC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_224AA8D80()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AA8DC0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AA8E30()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA8E68()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA8EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4858, &unk_224DB8140);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_224AA8F18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4858, &unk_224DB8140);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_224AA8F98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA8FD0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA9008()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA9040()
{
  v1 = sub_224DABCC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = *(v0 + v5);

  v12 = *(v0 + v6);

  v13 = *(v0 + v7);

  v14 = *(v0 + v8);

  v15 = *(v0 + v9 + 8);

  v16 = *(v0 + v10);

  return MEMORY[0x2821FE8E8](v0, v10 + 8, v3 | 7);
}

uint64_t sub_224AA9140(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48A0, &qword_224DB8208);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224AA91B8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48A0, &qword_224DB8208);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_224AA9244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224DABCC8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_224AA9300(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_224DABCC8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_224AA93B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_224DABCC8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = sub_224DAC918();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[8]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_224AA9520(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_224DABCC8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = sub_224DAC918();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = a2;
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[7];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

uint64_t sub_224AA9678()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AA96B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA96F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA9734()
{
  v1 = sub_224DAC5E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AA97F8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AA9840()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA9878()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_224A78024(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224AA98C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AA99A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA99D8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA9A10()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AA9A58()
{
  v1 = sub_224DAC4D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AA9B28()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA9B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224DAC268();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for TimelineFilenameMigrator.Action(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_224AA9C58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_224DAC268();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for TimelineFilenameMigrator.Action(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_224AA9D54()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AA9D94()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AA9DDC()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  }

  v3 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_224AA9E44()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AA9E94()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AA9ED4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA9F0C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_224AA9F94()
{
  v1 = sub_224DA9878();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_224DAC268();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 16);

  v14 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v15 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v10 | 7);
}

uint64_t sub_224AAA114()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAA14C()
{
  v1 = sub_224DA9878();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_224DAC268();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 2);

  v13 = *(v0 + 3);

  v14 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);
  (*(v7 + 8))(&v0[v9], v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_224AAA2D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAA308()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_224AAA3FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AAA4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224DA9908();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_224AAA58C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_224DA9908();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_224AAA644()
{
  v1 = (type metadata accessor for HandlerItem() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  v7 = sub_224DA9908();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = *(v0 + v3 + v1[7] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_224AAA750()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAA788()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAA7C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AAA808()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAA844()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AAA990()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAA9C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAAA00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_224AAAA78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_224AAAAF4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AAAB44()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AAAB84()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AAABC4()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224AAAC04()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAAC3C()
{
  v1 = sub_224DA9908();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_224AAAD24()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAAD5C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_224AAADBC()
{
  v1 = sub_224DAC268();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  v11 = *(v0 + v6);

  v12 = *(v0 + v7);

  v13 = *(v0 + v8);

  if (*(v0 + v9 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v9));
  }

  v14 = (v9 + 47) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v0 + v14);

  v17 = *(v0 + v15 + 8);

  return MEMORY[0x2821FE8E8](v0, v15 + 16, v3 | 7);
}

uint64_t sub_224AAAF10()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224AAAF60()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_224AAAFC8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  v7 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_224AAB038()
{
  v1 = sub_224DAC268();
  v2 = *(v1 - 8);
  v19 = *(v2 + 80);
  v3 = (v19 + 32) & ~v19;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);

  v11 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  v12 = *(v0 + v5 + 8);

  v13 = *(v0 + v6);

  v14 = *(v0 + v7);

  v15 = *(v0 + v8);

  __swift_destroy_boxed_opaque_existential_1((v0 + v9));
  v16 = (v9 + 47) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v16 + 8);

  return MEMORY[0x2821FE8E8](v0, v16 + 16, v19 | 7);
}

uint64_t sub_224AAB1A8()
{
  v1 = sub_224DAC268();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_224AAB294()
{
  v1 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  v2 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_224AAB2EC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AAB334()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_224AAB41C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_224AAB51C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AAB574()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AAB5BC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AAB5FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAB63C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAB748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_224DA9688();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_224AAB7F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_224DA9688();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224AAB8C8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAB918(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_224DAB018();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_224DAD9C8();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_224DA9878();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_224DAAC58();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_224AABAA0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_224DAB018();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_224DAD9C8();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_224DA9878();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_224DAAC58();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_224AABC38()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AABC70()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AABCB0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AABCE8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AABD20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for _HostFilterableChange();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v84 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v79 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v80 = &v79 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v79 - v15;
  v17 = sub_224DAB258();
  v18 = *(v17 - 8);
  v19 = *(v18 + 8);
  v20 = MEMORY[0x28223BE20](v17);
  v85 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v79 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v81 = &v79 - v26;
  result = MEMORY[0x28223BE20](v25);
  v29 = &v79 - v28;
  v86 = v3;
  v87 = a2;
  v82 = v12;
  v83 = v24;
  if ((a1 & 4) != 0)
  {
    (*(v18 + 2))(&v79 - v28, v3 + qword_281365438, v17);
    sub_224C4E30C(a2, v16, type metadata accessor for _HostFilterableChange);
    v30 = sub_224DAB228();
    v31 = sub_224DAF278();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v88 = v33;
      *v32 = 136446210;
      v79 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
      v34 = sub_224DAFD28();
      v36 = v35;
      sub_224C4E374(v16, type metadata accessor for _HostFilterableChange);
      v37 = sub_224A33F74(v34, v36, &v88);
      v17 = v79;

      *(v32 + 4) = v37;
      _os_log_impl(&dword_224A2F000, v30, v31, "Publishing activation state changed with host: %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x22AA5EED0](v33, -1, -1);
      v38 = v32;
      v3 = v86;
      MEMORY[0x22AA5EED0](v38, -1, -1);
    }

    else
    {

      sub_224C4E374(v16, type metadata accessor for _HostFilterableChange);
    }

    (*(v18 + 1))(v29, v17);
    v39 = *(v3 + qword_28135C9F8);
    a2 = v87;
    result = sub_224DAB348();
    v12 = v82;
    v24 = v83;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  v40 = v81;
  (*(v18 + 2))(v81, v3 + qword_281365438, v17);
  v41 = v80;
  sub_224C4E30C(a2, v80, type metadata accessor for _HostFilterableChange);
  v42 = sub_224DAB228();
  v43 = sub_224DAF278();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v88 = v45;
    *v44 = 136446210;
    v79 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
    v46 = sub_224DAFD28();
    v48 = v47;
    sub_224C4E374(v41, type metadata accessor for _HostFilterableChange);
    v49 = sub_224A33F74(v46, v48, &v88);
    v17 = v79;

    *(v44 + 4) = v49;
    _os_log_impl(&dword_224A2F000, v42, v43, "Publishing configurations changed with host: %{public}s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x22AA5EED0](v45, -1, -1);
    v50 = v44;
    v3 = v86;
    MEMORY[0x22AA5EED0](v50, -1, -1);

    (*(v18 + 1))(v81, v17);
  }

  else
  {

    sub_224C4E374(v41, type metadata accessor for _HostFilterableChange);
    (*(v18 + 1))(v40, v17);
  }

  v51 = *(v3 + qword_28135CA00);
  a2 = v87;
  result = sub_224DAB348();
  v12 = v82;
  v24 = v83;
  if ((a1 & 1) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      return result;
    }

    goto LABEL_18;
  }

LABEL_14:
  (*(v18 + 2))(v24, v3 + qword_281365438, v17);
  sub_224C4E30C(a2, v12, type metadata accessor for _HostFilterableChange);
  v52 = v24;
  v53 = v12;
  v54 = sub_224DAB228();
  v55 = sub_224DAF278();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v81 = v18;
    v58 = v57;
    v88 = v57;
    *v56 = 136446210;
    v80 = a1;
    a1 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
    v59 = sub_224DAFD28();
    v61 = v60;
    sub_224C4E374(v53, type metadata accessor for _HostFilterableChange);
    v62 = sub_224A33F74(v59, v61, &v88);
    v17 = a1;
    LOBYTE(a1) = v80;

    *(v56 + 4) = v62;
    _os_log_impl(&dword_224A2F000, v54, v55, "Publishing host changed with host: %{public}s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
    v63 = v58;
    v18 = v81;
    MEMORY[0x22AA5EED0](v63, -1, -1);
    v64 = v56;
    v3 = v86;
    MEMORY[0x22AA5EED0](v64, -1, -1);
  }

  else
  {

    sub_224C4E374(v12, type metadata accessor for _HostFilterableChange);
  }

  (*(v18 + 1))(v52, v17);
  v65 = *(v3 + qword_28135CA10);
  a2 = v87;
  result = sub_224DAB348();
  if ((a1 & 8) != 0)
  {
LABEL_18:
    (*(v18 + 2))(v85, v3 + qword_281365438, v17);
    sub_224C4E30C(a2, v84, type metadata accessor for _HostFilterableChange);
    v66 = sub_224DAB228();
    v67 = sub_224DAF278();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = v18;
      v70 = swift_slowAlloc();
      v88 = v70;
      *v68 = 136446210;
      v71 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      v72 = v84;
      sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
      v73 = sub_224DAFD28();
      v75 = v74;
      sub_224C4E374(v72, type metadata accessor for _HostFilterableChange);
      v76 = sub_224A33F74(v73, v75, &v88);

      *(v68 + 4) = v76;
      _os_log_impl(&dword_224A2F000, v66, v67, "Publishing orphans changed with host: %{public}s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v70);
      MEMORY[0x22AA5EED0](v70, -1, -1);
      v77 = v68;
      v3 = v86;
      MEMORY[0x22AA5EED0](v77, -1, -1);

      (*(v69 + 1))(v85, v71);
    }

    else
    {

      sub_224C4E374(v84, type metadata accessor for _HostFilterableChange);
      (*(v18 + 1))(v85, v17);
    }

    v78 = *(v3 + qword_28135CA08);
    return sub_224DAB348();
  }

  return result;
}

uint64_t sub_224AAC748()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAC780()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AAC7C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AAC808()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v1 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_224AAC850()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_224AAC8A0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAC8E8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

uint64_t sub_224AAC90C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  v1 = v0[23];

  return MEMORY[0x2821FE8E8](v0, 200, 7);
}

uint64_t sub_224AAC97C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAC9B4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224AACA28()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AACA60()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AACAA0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AACAD8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_224AACB28()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AACC20(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_224AACCDC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224AACD88()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AACDC8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AACE00()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AACE38()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AACE88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AACF1C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AACF7C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_224DAB848();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 44)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_224AAD020(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_224DAB848();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 44)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224AAD0C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileReaperProtectionConfiguration(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224AAD12C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for FileReaperProtectionConfiguration(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_224AAD1C8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAD204()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_224AAD254()
{
  v1 = sub_224DAC5E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_224AAD330()
{
  v1 = sub_224DAC5E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AAD3F8()
{
  v1 = sub_224DA9688();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AAD4BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAD4FC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAD534()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAD56C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAD5A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAD628()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAD660()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AAD6B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AAD788()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAD7C0()
{
  v1 = sub_224DAC528();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AAD8A4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAD8F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AAD97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224DACE38();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_224AADA38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_224DACE38();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_224AADAF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C48, &qword_224DBD308);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AADBB0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AADBF0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AADC58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_224DAE738();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_224AADD04(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_224DAE738();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224AADDAC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  if (v0[8])
  {
    v1 = v0[9];
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_224AADDF4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AADE2C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AADE64()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AADEAC()
{
  v1 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  if (v0[10])
  {
    v2 = v0[11];
  }

  v3 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_224AADF04()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_224AADF3C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AADFCC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AAE00C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAE044()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AAE114()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAE14C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAE18C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAE1C4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAE1FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AAE348()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAE388(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DA9688();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224AAE3F4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_224DA9688();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_224AAE474()
{
  v1 = (type metadata accessor for AppTokenInfo(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 3);
  swift_unknownObjectRelease();
  sub_224A78024(*(v0 + 5), *(v0 + 6));
  v7 = sub_224DAE0D8();
  (*(*(v7 - 8) + 8))(&v0[v3], v7);
  v8 = *&v0[v3 + 8 + v1[7]];

  v9 = v1[8];
  v10 = sub_224DA9878();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(&v0[v3 + v9], 1, v10))
  {
    (*(v11 + 8))(&v0[v3 + v9], v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_224AAE5F4()
{
  v1 = type metadata accessor for IncomingMessage(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);
  swift_unknownObjectRelease();
  v7 = (v0 + v3);
  v8 = *(v0 + v3 + 8);
  if (v8 >> 60 != 15)
  {
    sub_224A78024(*v7, v8);
  }

  v9 = v1[5];
  v10 = sub_224DAE0D8();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  v11 = *(v7 + v1[6] + 8);

  v12 = v1[7];
  v13 = sub_224DAE178();
  (*(*(v13 - 8) + 8))(v7 + v12, v13);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_224AAE754()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  sub_224A78024(v0[5], v0[6]);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224AAE79C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAE7EC()
{
  v1 = sub_224DAB728();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_224AAE89C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAE8D4()
{
  v1 = *(type metadata accessor for FileReaperScenario(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = type metadata accessor for FileReaperProtectionConfiguration(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 4, v6))
  {
    v7 = *(v6 + 44);
    v8 = sub_224DAB848();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  v9 = (v3 + v4) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v9 + 16);

  return MEMORY[0x2821FE8E8](v0, v9 + 24, v2 | 7);
}

uint64_t sub_224AAEA10()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAEA48()
{
  v1 = sub_224DAC268();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AAEB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_224DA9F08();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_224AAEBB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_224DA9F08();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224AAEC5C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAEC94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_224DA9F08();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_224AAED40(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_224DA9F08();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224AAEDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_224AAEEB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_224AAEF7C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AAEFCC()
{
  v1 = sub_224DAE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AAF094(char a1)
{
  if (a1)
  {
    return 0x6974617669746361;
  }

  else
  {
    return 0x72756769666E6F63;
  }
}

uint64_t sub_224AAF100()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAF13C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAF174()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAF1AC()
{
  v1 = sub_224DAC268();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5);

  v10 = *(v0 + v6);

  v11 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v3 | 7);
}

uint64_t sub_224AAF2B8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AAF300()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAF338()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224AAF390()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAF444@<X0>(uint64_t *a1@<X8>)
{
  result = sub_224DAB618();
  *a1 = result;
  return result;
}

uint64_t sub_224AAF500@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224DAB5A8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_224AAF558@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224DAB588();
  *a1 = result & 1;
  return result;
}

uint64_t sub_224AAF678@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224DAB708();
  *a1 = result & 1;
  return result;
}

uint64_t sub_224AAF6D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224DAB6D8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_224AAF750@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224DAB5C8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_224AAF80C()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_224AAF868(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAE8B8();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 6)
  {
    return v5 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224AAF8D4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 5);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_224DAE8B8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_224AAF968()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAF9A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AAF9E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAFA20(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3390, &qword_224DB35B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 252)
  {
    v12 = *(a1 + a3[5]);
    if (v12 <= 3)
    {
      v13 = 3;
    }

    else
    {
      v13 = *(a1 + a3[5]);
    }

    v14 = v13 - 3;
    if (v12 >= 3)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6140, qword_224DBB6B0);
    v16 = *(v15 - 8);
    if (*(v16 + 84) == a2)
    {
      v8 = v15;
      v9 = *(v16 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F63D0, &unk_224DC00D0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[8];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_224AAFBBC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3390, &qword_224DB35B8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 252)
  {
    *(a1 + a4[5]) = a2 + 3;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6140, qword_224DBB6B0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F63D0, &unk_224DC00D0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_224AAFD50()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAFD88()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAFDD0()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAFE08()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AAFE60()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AAFEA8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAFEF8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AAFF40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAFFD8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AB0014()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AB004C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AB0084()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AB00BC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AB00FC()
{
  sub_224A78024(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AB0134()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AB0178()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AB01D4()
{
  v1 = sub_224DAB728();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_224AB0298()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AB02F8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AB0330()
{
  v1 = sub_224DAC2B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 2);

  v9 = *(v0 + 3);

  v10 = *(v0 + 4);

  (*(v2 + 8))(&v0[v4], v1);
  v11 = *&v0[v5];

  v12 = *&v0[v6 + 8];

  v13 = *&v0[v7];

  return MEMORY[0x2821FE8E8](v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_224AB0454()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AB048C()
{
  v1 = sub_224DAC2B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_224AB057C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AB05BC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AB06F0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AB0738()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AB0778()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AB07C0()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AB0808()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AB0858()
{
  v1 = sub_224DA9398();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AB0938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_224AB0A0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_224AB0AD0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AB0B10()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AB0B48()
{
  v1 = sub_224DABE18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AB0C64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_224DAB6B8();
  *a1 = result;
  return result;
}

uint64_t sub_224AB0CE4()
{
  v1 = sub_224DAC268();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5);

  __swift_destroy_boxed_opaque_existential_1((v0 + v6));
  __swift_destroy_boxed_opaque_existential_1((v0 + v7));

  return MEMORY[0x2821FE8E8](v0, v7 + 40, v3 | 7);
}

uint64_t sub_224AB0DE4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AB0E24()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AB0E6C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AB0EBC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_224AB0EF4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AB0F50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_224DAE0D8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_224DAE178();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[7];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_224AB1088(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_224DAE0D8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v13 = sub_224DAE178();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_224AB11B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224DAE0D8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_224AB12E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_224DAE0D8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_224AB141C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AB148C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_224AB14D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AB1508()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AB1548()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AB1580(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_224AB15F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_224AB1678()
{
  v1 = sub_224DA9878();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AB174C()
{
  v1 = sub_224DA9908();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_224DA9878();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v17 = v3 | v8;
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = (v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  v14 = *(v7 + 8);
  v14(v0 + v9, v6);
  v14(v0 + v11, v6);

  v15 = *(v0 + v12 + 16);

  return MEMORY[0x2821FE8E8](v0, v12 + 24, v17 | 7);
}

uint64_t sub_224AB18F8()
{
  v1 = sub_224DA9878();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_224DA9908();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + v7 + 24) & ~v10;
  v16 = v3 | v10;
  v17 = *(v9 + 64);
  v12 = *(v0 + 16);

  v13 = *(v2 + 8);
  v13(v0 + v4, v1);
  v13(v0 + v6, v1);

  v14 = *(v0 + v7 + 16);

  (*(v9 + 8))(v0 + v11, v8);

  return MEMORY[0x2821FE8E8](v0, v11 + v17, v16 | 7);
}

uint64_t sub_224AB1A98()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AB1AE0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AB1B18()
{
  v1 = sub_224DAAE38();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AB1BE4()
{
  v1 = sub_224DAAE38();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  sub_224B92BE0(*(v0 + 32), *(v0 + 40));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AB1CC4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AB1CFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

_OWORD *sub_224AB1DE0(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

id CHDSerializeNSUserActivity(void *a1, void *a2)
{
  v3 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  [v3 setNeedsSave:0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __CHDSerializeNSUserActivity_block_invoke;
  v6[3] = &unk_27853F098;
  v6[4] = &v13;
  v6[5] = &v7;
  [v3 _createUserActivityDataWithOptions:0 completionHandler:v6];
  if (a2)
  {
    *a2 = v8[5];
  }

  v4 = v14[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);

  return v4;
}

void sub_224AB229C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __CHDSerializeNSUserActivity_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void CHDRegisterForTemporaryFolder()
{
  v8 = *MEMORY[0x277D85DE8];
  _set_user_dir_suffix();
  v0 = NSTemporaryDirectory();
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = 0;
  v2 = [v1 removeItemAtPath:v0 error:&v5];
  v3 = v5;

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = v0;
      _os_log_impl(&dword_224A2F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Successfully cleared temporary directory (%@) contents on startup.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    CHDRegisterForTemporaryFolder_cold_1(v3);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void CHDJetsamSetElevatedInactivePriority()
{
  getpid();
  v0 = memorystatus_control();
  if (v0)
  {
    v1 = v0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      CHDJetsamSetElevatedInactivePriority_cold_1(v1);
    }
  }
}

void ProactiveSuggestionClientModelLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!ProactiveSuggestionClientModelLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __ProactiveSuggestionClientModelLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_27853F0D8;
    v3 = 0;
    ProactiveSuggestionClientModelLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ProactiveSuggestionClientModelLibraryCore_frameworkLibrary)
  {
    ProactiveSuggestionClientModelLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

void __CHDForwardEntriesToProactive_block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277D86220];
  v5 = *(a1 + 32);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    v7 = 138412290;
    v8 = v3;
    _os_signpost_emit_with_name_impl(&dword_224A2F000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, v5, "ProactiveReporting", "Reporting Timeline finished. <error?>=%@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __ProactiveSuggestionClientModelLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ProactiveSuggestionClientModelLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getATXInfoTimelineEntryRelevanceClass_block_invoke(uint64_t a1)
{
  ProactiveSuggestionClientModelLibrary();
  result = objc_getClass("ATXInfoTimelineEntryRelevance");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getATXInfoTimelineEntryRelevanceClass_block_invoke_cold_1();
  }

  getATXInfoTimelineEntryRelevanceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getATXInfoTimelineEntryClass_block_invoke(uint64_t a1)
{
  ProactiveSuggestionClientModelLibrary();
  result = objc_getClass("ATXInfoTimelineEntry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getATXInfoTimelineEntryClass_block_invoke_cold_1();
  }

  getATXInfoTimelineEntryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getATXInfoTimelineDonationClientClass_block_invoke(uint64_t a1)
{
  ProactiveSuggestionClientModelLibrary();
  result = objc_getClass("ATXInfoTimelineDonationClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getATXInfoTimelineDonationClientClass_block_invoke_cold_1();
  }

  getATXInfoTimelineDonationClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_224AB2958()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364F10);
  __swift_project_value_buffer(v0, qword_281364F10);
  return sub_224DAB238();
}

uint64_t sub_224AB29D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  __swift_allocate_value_buffer(v2, qword_27D6F7180);
  __swift_project_value_buffer(v2, qword_27D6F7180);
  sub_224DA9FF8();
  return sub_224DAA228();
}

uint64_t sub_224AB2AC0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

void sub_224AB2B00(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_224DAA428();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  sub_224DAC288();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_224AB4294(v13);
    return;
  }

  v45 = v15;
  (*(v15 + 32))(v18, v13, v14);
  v19 = v18;
  v20 = v2[5];
  v21 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v20);
  v22 = *(v21 + 16);
  v44 = v19;
  v23 = v22(v19, v20, v21);
  if (v23)
  {
    v24 = sub_224A7B208(v23);

    v46 = a2;
    MEMORY[0x28223BE20](v25);
    *(&v41 - 2) = &v46;

    v26 = sub_224B449EC(sub_224AB42FC, (&v41 - 4), v24);

    if (v26)
    {
      (*(v45 + 8))(v44, v14);

      return;
    }

    v43 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB2780;
    *(inited + 32) = a2;
    v46 = v24;
    v30 = a2;
    sub_224B42630(inited);
  }

  else
  {
    v43 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_224DB2780;
    *(v27 + 32) = a2;
    v28 = a2;
  }

  v31 = objc_allocWithZone(MEMORY[0x277CFA290]);
  sub_224DAF5D8();
  v32 = sub_224DAEFF8();

  v33 = [v31 initWithControlItems_];

  v34 = [objc_opt_self() allPredicate];
  [v33 setReplicationPredicate_];

  [v33 setExpirationTimeout_];
  (*(v6 + 104))(v9, *MEMORY[0x277CFA040], v5);
  v36 = v3[5];
  v35 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v36);
  v46 = v33;
  v37 = *(v35 + 8);
  v42 = v5;
  v38 = *(v37 + 56);
  v39 = v33;
  v40 = v44;
  v38(&v46, v9, v44, v36, v37);

  (*(v6 + 8))(v9, v42);
  (*(v45 + 8))(v40, v43);
}

void sub_224AB2FC8(char *a1)
{
  v2 = v1;
  v4 = sub_224DAA428();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  sub_224DAC288();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_224AB4294(v12);
    return;
  }

  v34 = v8;
  v35 = v4;
  (*(v14 + 32))(v17, v12, v13);
  v18 = v1[5];
  v19 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v18);
  v20 = (*(v19 + 16))(v17, v18, v19);
  if (!v20)
  {
    v23 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_5;
    }

LABEL_9:
    v24 = sub_224DAF838();
    goto LABEL_6;
  }

  v21 = sub_224A7B208(v20);

  MEMORY[0x28223BE20](v22);
  *(&v34 - 2) = a1;
  v23 = sub_224A4ECE8(sub_224AB43B8, (&v34 - 4), v21);
  if (v23 >> 62)
  {
    goto LABEL_9;
  }

LABEL_5:
  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v25 = v35;
  if (v24 < 1)
  {

    v28 = 0;
  }

  else
  {
    v26 = objc_allocWithZone(MEMORY[0x277CFA1F0]);
    sub_224DAF5D8();
    v27 = sub_224DAEFF8();

    v28 = [v26 initWithControlItems_];
  }

  v29 = v34;
  (*(v5 + 104))(v34, *MEMORY[0x277CFA038], v25);
  v30 = v2[5];
  v31 = v2;
  v32 = v25;
  v33 = v31[6];
  __swift_project_boxed_opaque_existential_1(v31 + 2, v30);
  v36 = v28;
  (*(*(v33 + 8) + 56))(&v36, v29, v17, v30);
  (*(v5 + 8))(v29, v32);
  (*(v14 + 8))(v17, v13);
}

BOOL sub_224AB33A0(id *a1)
{
  v1 = [*a1 controlIdentity];
  v2 = sub_224DAC2A8();
  sub_224AB43D8();
  v3 = sub_224DAF6A8();

  return (v3 & 1) == 0;
}

uint64_t sub_224AB3420(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 16))(a1, v3, v4);
}

uint64_t sub_224AB3480(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 24))(a1, v3, v4);
}

uint64_t sub_224AB34E0(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 32))(a1, v3, v4) & 1;
}

uint64_t sub_224AB3554(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(*(v4 + 8) + 32))(a1, v3);
}

uint64_t sub_224AB35B4(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(*(v4 + 8) + 40))(a1, v3);
}

uint64_t sub_224AB3614(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(*(v4 + 8) + 48))(a1, v3);
}

uint64_t sub_224AB3674(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = v6;
  return (*(*(v8 + 8) + 56))(&v10, a2, a3, v7);
}

uint64_t sub_224AB36F8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  return (*(*(v6 + 8) + 64))(a1, a2, v5);
}

uint64_t sub_224AB3768(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(*(v4 + 8) + 72))(a1, v3);
}

uint64_t sub_224AB37C8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  return (*(*(v6 + 8) + 80))(a1, a2, v5);
}

uint64_t sub_224AB3838()
{
  v2 = **v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F2FA0, &unk_224DB2AB0);
  return sub_224DAEE28();
}

uint64_t sub_224AB389C()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  v4 = *(*(v3 + 8) + 8);
  return sub_224DA9F68();
}

uint64_t sub_224AB392C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224AB394C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_224AB39C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_224DAA668();
}

BOOL sub_224AB3A38(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_224AB3A68(uint64_t a1, id *a2)
{
  result = sub_224DAEDF8();
  *a2 = 0;
  return result;
}

uint64_t sub_224AB3AE0(uint64_t a1, id *a2)
{
  v3 = sub_224DAEE08();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_224AB3B60@<X0>(uint64_t *a1@<X8>)
{
  sub_224DAEE18();
  v2 = sub_224DAEDE8();

  *a1 = v2;
  return result;
}

uint64_t sub_224AB3BA4()
{
  v1 = *v0;
  v2 = sub_224DAEE18();
  v3 = MEMORY[0x22AA5D270](v2);

  return v3;
}

uint64_t sub_224AB3BE0()
{
  v1 = *v0;
  sub_224DAEE18();
  sub_224DAEE78();
}

uint64_t sub_224AB3C34()
{
  v1 = *v0;
  sub_224DAEE18();
  sub_224DAFE68();
  sub_224DAEE78();
  v2 = sub_224DAFEA8();

  return v2;
}

BOOL sub_224AB3CC4(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_224AB3D30@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_224AB3D40(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_224DAEE18();
  v6 = v5;
  if (v4 == sub_224DAEE18() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_224DAFD88();
  }

  return v9 & 1;
}

uint64_t sub_224AB3E20(uint64_t a1, uint64_t a2)
{
  result = sub_224AB3E78(qword_281352A68, a2, type metadata accessor for PreviewControlConfigurationService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224AB3E78(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_224AB3EC0(uint64_t a1, uint64_t a2)
{
  result = sub_224AB3E78(&qword_281352A40, a2, type metadata accessor for PreviewControlConfigurationService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224AB3F18(uint64_t a1, uint64_t a2)
{
  result = sub_224AB3E78(&unk_281352A58, a2, type metadata accessor for PreviewControlConfigurationService);
  *(a1 + 8) = result;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_224AB3FB8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_224DAA688();
}

uint64_t sub_224AB4004()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_224DAA678();
}

uint64_t sub_224AB405C()
{
  sub_224DAFE68();
  v1 = *v0;
  swift_getWitnessTable();
  sub_224DAA678();
  return sub_224DAFEA8();
}

uint64_t sub_224AB40C4(uint64_t a1)
{
  v2 = sub_224AB3E78(&qword_281350A08, 255, type metadata accessor for FileAttributeKey);
  v3 = sub_224AB3E78(&qword_27D6F31A0, 255, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_224AB4188@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_224DAEDE8();

  *a2 = v5;
  return result;
}

uint64_t sub_224AB41D0(uint64_t a1)
{
  v2 = sub_224AB3E78(&qword_27D6F31A8, 255, type metadata accessor for URLResourceKey);
  v3 = sub_224AB3E78(&unk_27D6F31B0, 255, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_224AB4294(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224AB42FC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_224DAF5D8();
  return sub_224DAF6A8() & 1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_224AB43D8()
{
  result = qword_281350A50;
  if (!qword_281350A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281350A50);
  }

  return result;
}

void sub_224AB44D8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_224AB4824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_224AB4BC8();
  result = sub_224DAF6F8();
  *a4 = result;
  return result;
}

uint64_t sub_224AB48B8()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364F58);
  __swift_project_value_buffer(v0, qword_281364F58);
  return sub_224DAB238();
}

uint64_t sub_224AB49D0(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_224DAB258();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_224DAB268();
}

uint64_t sub_224AB4B00()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364F88);
  __swift_project_value_buffer(v0, qword_281364F88);
  return sub_224DAB238();
}

unint64_t sub_224AB4BC8()
{
  result = qword_2813507C8;
  if (!qword_2813507C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813507C8);
  }

  return result;
}

uint64_t sub_224AB4C84(uint64_t a1, uint64_t *a2)
{
  v3 = sub_224DAB258();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_224DAB238();
}

uint64_t sub_224AB4CFC()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364F28);
  __swift_project_value_buffer(v0, qword_281364F28);
  return sub_224DAB238();
}

uint64_t sub_224AB4D7C()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364EB0);
  __swift_project_value_buffer(v0, qword_281364EB0);
  return sub_224DAB238();
}

uint64_t sub_224AB4E00()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364EC8);
  __swift_project_value_buffer(v0, qword_281364EC8);
  return sub_224DAB238();
}

uint64_t sub_224AB4E80()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364E80);
  __swift_project_value_buffer(v0, qword_281364E80);
  return sub_224DAB238();
}

uint64_t sub_224AB4F00()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364E98);
  __swift_project_value_buffer(v0, qword_281364E98);
  return sub_224DAB238();
}

uint64_t sub_224AB4FBC()
{
  v1 = *v0;
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](v1);
  return sub_224DAFEA8();
}

uint64_t sub_224AB5004()
{
  v1 = *v0;
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](v1);
  return sub_224DAFEA8();
}

uint64_t sub_224AB5048()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32D8, &qword_224DC1AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB30F0;
  v1 = *MEMORY[0x277CEE9F0];
  *(inited + 32) = sub_224DAEE18();
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000026;
  *(inited + 56) = 0x8000000224DC4F30;
  v3 = *MEMORY[0x277CEE9E8];
  *(inited + 64) = sub_224DAEE18();
  *(inited + 72) = v4;
  *(inited + 80) = 0xD00000000000002ALL;
  *(inited + 88) = 0x8000000224DC4F60;
  v5 = sub_224D9FE14(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32E0, &unk_224DB65F0);
  result = swift_arrayDestroy();
  off_27D6F3280 = v5;
  return result;
}

uint64_t sub_224AB5144()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_224DB30F0;
  v1 = *MEMORY[0x277CEE9F0];
  *(v0 + 32) = sub_224DAEE18();
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CEE9E8];
  result = sub_224DAEE18();
  *(v0 + 48) = result;
  *(v0 + 56) = v5;
  qword_27D6F3288 = v0;
  return result;
}

uint64_t sub_224AB51C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAB8C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v2[5];
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = sub_224DAB8F8();
  result = (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v12 = v2[41];

  v13 = sub_224CBD748(a1, v12);

  if ((v13 & 1) == 0)
  {
    v14 = v2[17];
    v15 = v2[18];
    __swift_project_boxed_opaque_existential_1(v2 + 14, v14);
    v16 = (*(v15 + 16))(v14, v15);
    v17 = v16 + 56;
    v18 = 1 << *(v16 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v16 + 56);
    result = swift_beginAccess();
    v21 = 0;
    v22 = (v18 + 63) >> 6;
    v34 = v16;
    while (v20)
    {
      v23 = v20;
LABEL_13:
      v20 = (v23 - 1) & v23;
      v25 = v2[8];
      if (*(v25 + 16))
      {
        v26 = *(v16 + 48) + ((v21 << 10) | (16 * __clz(__rbit64(v23))));
        v28 = *v26;
        v27 = *(v26 + 8);

        v29 = sub_224A3A40C(v28, v27);
        if (v30)
        {
          v31 = (*(v25 + 56) + 16 * v29);
          v32 = *v31;
          v33 = v31[1];
          swift_unknownObjectRetain();

          sub_224AB5474(v28, v27, v32);

          v16 = v34;
          result = swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= v22)
      {
      }

      v23 = *(v17 + 8 * v24);
      ++v21;
      if (v23)
      {
        v21 = v24;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_224AB5474(void (**a1)(_BYTE *, uint64_t), uint64_t a2, uint64_t a3)
{
  v73[1] = a3;
  v6 = sub_224DAE178();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v75 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v74 = v73 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v73 - v13;
  v15 = sub_224DAB8C8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v3 + 40);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15);
  v21 = v20;
  LOBYTE(v20) = sub_224DAB8F8();
  v23 = *(v16 + 8);
  v22 = v16 + 8;
  v23(v19, v15);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_33:
    swift_once();
    goto LABEL_22;
  }

  v24 = sub_224ABD130(a1, a2);
  v25 = *(v3 + 320);
  if (v25)
  {

    v26 = sub_224CBD15C(v24, v25);

    if (v26)
    {
      swift_bridgeObjectRelease_n();
      return 0;
    }

    v28 = *(v3 + 320);
  }

  else
  {
  }

  *(v3 + 320) = v24;

  v29 = v7[13];
  v29(v14, *MEMORY[0x277CF9EC0], v6);
  if (*(v24 + 16) && (v30 = sub_224B0B2F8(v14), (v31 & 1) != 0))
  {
    v32 = *(*(v24 + 56) + 8 * v30);

    v22 = sub_224ABE690(v33);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v34 = v7[1];
  v34(v14, v6);
  v35 = v74;
  v29(v74, *MEMORY[0x277CF9EC8], v6);
  if (*(v24 + 16))
  {
    v36 = sub_224B0B2F8(v35);
    if (v37)
    {
      v38 = *(*(v24 + 56) + 8 * v36);

      v14 = sub_224ABE690(v39);
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    v35 = v74;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v34(v35, v6);
  v40 = v75;
  v29(v75, *MEMORY[0x277CF9ED0], v6);
  if (*(v24 + 16) && (v41 = sub_224B0B2F8(v40), v40 = v75, (v42 & 1) != 0))
  {
    v43 = *(*(v24 + 56) + 8 * v41);

    a1 = sub_224ABE690(v43);
    v40 = v75;
  }

  else
  {

    a1 = MEMORY[0x277D84F90];
  }

  v34(v40, v6);
  v44 = off_283832840[0];
  type metadata accessor for APSPushConnection();
  v44();
  if (qword_27D6F2CF0 != -1)
  {
    goto LABEL_33;
  }

LABEL_22:
  v45 = sub_224DAB258();
  __swift_project_value_buffer(v45, qword_27D6F71E0);

  v46 = sub_224DAB228();
  v47 = sub_224DAF268();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = v22;
    v50 = swift_slowAlloc();
    v76 = v50;
    *v48 = 136380675;
    v51 = MEMORY[0x22AA5D380](v14, MEMORY[0x277D837D0]);
    v53 = v52;

    v54 = sub_224A33F74(v51, v53, &v76);

    *(v48 + 4) = v54;
    _os_log_impl(&dword_224A2F000, v46, v47, "Normal topics: %{private}s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    v55 = v50;
    v22 = v49;
    MEMORY[0x22AA5EED0](v55, -1, -1);
    MEMORY[0x22AA5EED0](v48, -1, -1);
  }

  else
  {
  }

  v56 = sub_224DAB228();
  v57 = sub_224DAF268();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = v22;
    v60 = swift_slowAlloc();
    v76 = v60;
    *v58 = 136380675;
    v61 = MEMORY[0x22AA5D380](v59, MEMORY[0x277D837D0]);
    v63 = v62;

    v64 = sub_224A33F74(v61, v63, &v76);

    *(v58 + 4) = v64;
    _os_log_impl(&dword_224A2F000, v56, v57, "Opportunistic topics: %{private}s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x22AA5EED0](v60, -1, -1);
    MEMORY[0x22AA5EED0](v58, -1, -1);
  }

  else
  {
  }

  v65 = sub_224DAB228();
  v66 = sub_224DAF268();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v76 = v68;
    *v67 = 136380675;
    v69 = MEMORY[0x22AA5D380](a1, MEMORY[0x277D837D0]);
    v71 = v70;

    v72 = sub_224A33F74(v69, v71, &v76);

    *(v67 + 4) = v72;
    _os_log_impl(&dword_224A2F000, v65, v66, "Non-waking topics: %{private}s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v68);
    MEMORY[0x22AA5EED0](v68, -1, -1);
    MEMORY[0x22AA5EED0](v67, -1, -1);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_224AB5C14()
{
  if (*(v0 + 312))
  {

    sub_224DAB328();
  }

  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 64);

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  __swift_destroy_boxed_opaque_existential_1((v0 + 192));
  __swift_destroy_boxed_opaque_existential_1((v0 + 232));
  sub_224A3311C(v0 + 272, &qword_27D6F32C0, &qword_224DB3220);
  v5 = *(v0 + 312);

  v6 = *(v0 + 320);

  v7 = *(v0 + 328);

  return v0;
}

uint64_t sub_224AB5CE4()
{
  sub_224AB5C14();

  return swift_deallocClassInstance();
}

uint64_t sub_224AB5D3C(uint64_t a1)
{
  sub_224AB5E58();
  sub_224DA9E78();
  sub_224DA9E68();
  sub_224DA9E28();

  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4730, &unk_224DBAF00);
  sub_224A33088(&qword_281351010, &unk_27D6F4730, &unk_224DBAF00);
  v2 = sub_224DAB488();

  v3 = *(a1 + 312);
  *(a1 + 312) = v2;
}

uint64_t sub_224AB5E58()
{
  v1 = v0;
  v2 = sub_224DAB8C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[5];
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_224DAB8F8();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v10 = v1[17];
    v11 = v1[18];
    __swift_project_boxed_opaque_existential_1(v1 + 14, v10);
    result = (*(v11 + 16))(v10, v11);
    v13 = result;
    v14 = 0;
    v15 = result + 56;
    v16 = 1 << *(result + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(result + 56);
    v19 = (v16 + 63) >> 6;
    *&v12 = 136446210;
    v26 = v12;
    v27 = result;
    v28 = v1;
    if (v18)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v20 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v20 >= v19)
      {
      }

      v18 = *(v15 + 8 * v20);
      ++v14;
      if (v18)
      {
        while (1)
        {
          v21 = __clz(__rbit64(v18));
          v18 &= v18 - 1;
          v22 = *(v13 + 48) + ((v20 << 10) | (16 * v21));
          v23 = *v22;
          v24 = *(v22 + 8);

          sub_224ABC050(v23, v24, 1);
          sub_224AB5474(v23, v24, v25);
          swift_unknownObjectRelease();

          v14 = v20;
          if (!v18)
          {
            break;
          }

LABEL_11:
          v20 = v14;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224AB61F4()
{
  v0 = sub_224DAB7B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DAB848();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(result + 40);
    aBlock[4] = sub_224AC2358;
    aBlock[5] = result;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_66;
    v14 = result;
    v11 = _Block_copy(aBlock);

    sub_224DAB7E8();
    v16 = MEMORY[0x277D84F90];
    sub_224AC22E8(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    v13 = v5;
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v9, v4, v11);
    _Block_release(v11);
    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v13);
  }

  return result;
}

uint64_t sub_224AB64E0(uint64_t a1)
{
  v2 = *MEMORY[0x277CEE9E8];
  v3 = sub_224DAEE18();
  v5 = v4;
  swift_beginAccess();
  v6 = *(a1 + 64);
  if (*(v6 + 16))
  {
    v7 = *(a1 + 64);

    v8 = sub_224A3A40C(v3, v5);
    v10 = v9;

    if (v10)
    {
      v11 = (*(v6 + 56) + 16 * v8);
      v12 = *v11;
      v13 = v11[1];
      swift_unknownObjectRetain();

      v14 = sub_224DAEE18();
      sub_224AB5474(v14, v15, v12);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_224AB65D4(uint64_t a1, int a2)
{
  v20 = a2;
  v4 = sub_224DAB7B8();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_224DAB848();
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_224DAC5E8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v21 = *(v2 + 40);
  (*(v13 + 16))(&v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v12);
  v15 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  (*(v13 + 32))(v16 + v15, &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v12);
  *(v16 + v15 + v14) = v20;
  aBlock[4] = sub_224AC2264;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_62;
  v17 = _Block_copy(aBlock);

  sub_224DAB7E8();
  v25 = MEMORY[0x277D84F90];
  sub_224AC22E8(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v11, v7, v17);
  _Block_release(v17);
  (*(v24 + 8))(v7, v4);
  (*(v22 + 8))(v11, v23);
}

uint64_t sub_224AB6978(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_224DAC5E8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  return sub_224AB6BD8(a2, a3);
}

uint64_t sub_224AB6BD8(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v153) = a2;
  v141 = sub_224DAC4A8();
  v138 = *(v141 - 8);
  v5 = *(v138 + 64);
  MEMORY[0x28223BE20](v141);
  v137 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAC4D8();
  v139 = *(v7 - 8);
  v140 = v7;
  v8 = *(v139 + 64);
  MEMORY[0x28223BE20](v7);
  v145 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_224DAC4F8();
  v133 = *(v136 - 8);
  v10 = *(v133 + 64);
  MEMORY[0x28223BE20](v136);
  v132 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_224DAC528();
  v134 = *(v135 - 8);
  v12 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v144 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_224DAC538();
  v14 = *(*(v142 - 8) + 64);
  MEMORY[0x28223BE20](v142);
  v143 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_224DAC5E8();
  v157 = *(v155 - 8);
  v16 = *(v157 + 64);
  v17 = MEMORY[0x28223BE20](v155);
  v19 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v147 = &v131 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v148 = &v131 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v150 = &v131 - v25;
  MEMORY[0x28223BE20](v24);
  v146 = &v131 - v26;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32F8, &qword_224DB3230);
  v27 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v29 = &v131 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v149 = &v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v131 - v35;
  MEMORY[0x28223BE20](v34);
  v156 = &v131 - v37;
  v38 = sub_224DAB8C8();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = (&v131 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = v3[5];
  *v42 = v43;
  (*(v39 + 104))(v42, *MEMORY[0x277D85200], v38);
  v44 = v43;
  LOBYTE(v43) = sub_224DAB8F8();
  (*(v39 + 8))(v42, v38);
  if ((v43 & 1) == 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  if ((sub_224ABC724() & 1) == 0)
  {
    if (qword_27D6F2CF0 == -1)
    {
LABEL_10:
      v60 = sub_224DAB258();
      __swift_project_value_buffer(v60, qword_27D6F71E0);
      v61 = v157;
      v62 = v155;
      (*(v157 + 16))(v19, a1, v155);
      v63 = sub_224DAB228();
      v64 = sub_224DAF288();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v158 = v66;
        *v65 = 136446210;
        v67 = sub_224DAC588();
        v69 = v68;
        (*(v61 + 8))(v19, v62);
        v70 = sub_224A33F74(v67, v69, &v158);

        *(v65 + 4) = v70;
        _os_log_impl(&dword_224A2F000, v63, v64, "Subscription is invalid: %{public}s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v66);
        MEMORY[0x22AA5EED0](v66, -1, -1);
        MEMORY[0x22AA5EED0](v65, -1, -1);
      }

      else
      {

        (*(v61 + 8))(v19, v62);
      }

      sub_224AC1F7C();
      swift_allocError();
      *v76 = 1;
      return swift_willThrow();
    }

LABEL_43:
    swift_once();
    goto LABEL_10;
  }

  v45 = v3[17];
  v46 = v3[18];
  v131 = v3;
  __swift_project_boxed_opaque_existential_1(v3 + 14, v45);
  v154 = a1;
  v47 = sub_224DAC588();
  (*(v46 + 48))(v47);

  if ((v153 & 1) == 0 && (*(v157 + 48))(v156, 1, v155) == 1)
  {
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v48 = sub_224DAB258();
    __swift_project_value_buffer(v48, qword_27D6F71E0);
    v49 = v157;
    v50 = v147;
    v51 = v155;
    (*(v157 + 16))(v147, v154, v155);
    v52 = sub_224DAB228();
    v53 = sub_224DAF288();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v158 = v55;
      *v54 = 136446210;
      v56 = sub_224DAC588();
      v58 = v57;
      (*(v49 + 8))(v50, v51);
      v59 = sub_224A33F74(v56, v58, &v158);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_224A2F000, v52, v53, "Cannot update subscription for subscription %{public}s as no subscription exists", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x22AA5EED0](v55, -1, -1);
      MEMORY[0x22AA5EED0](v54, -1, -1);
    }

    else
    {

      (*(v49 + 8))(v50, v51);
    }

    sub_224AC1F7C();
    swift_allocError();
    *v125 = 1;
    swift_willThrow();
    return sub_224A3311C(v156, &qword_27D6F3BB0, &unk_224DB8CF0);
  }

  v71 = v157;
  v72 = *(v157 + 16);
  v73 = v155;
  v72(v36, v154, v155);
  (*(v71 + 56))(v36, 0, 1, v73);
  v74 = *(v151 + 48);
  sub_224A3796C(v156, v29, &qword_27D6F3BB0, &unk_224DB8CF0);
  sub_224A3796C(v36, &v29[v74], &qword_27D6F3BB0, &unk_224DB8CF0);
  v75 = *(v71 + 48);
  if (v75(v29, 1, v73) == 1)
  {
    sub_224A3311C(v36, &qword_27D6F3BB0, &unk_224DB8CF0);
    if (v75(&v29[v74], 1, v73) == 1)
    {
      sub_224A3311C(v29, &qword_27D6F3BB0, &unk_224DB8CF0);
LABEL_28:
      if (qword_27D6F2CF0 != -1)
      {
        swift_once();
      }

      v104 = sub_224DAB258();
      __swift_project_value_buffer(v104, qword_27D6F71E0);
      v105 = v148;
      v72(v148, v154, v73);
      v106 = sub_224DAB228();
      v107 = v73;
      v108 = sub_224DAF2A8();
      v109 = os_log_type_enabled(v106, v108);
      v110 = v157;
      if (v109)
      {
        v111 = v105;
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v158 = v113;
        *v112 = 136446210;
        v114 = sub_224DAC588();
        v116 = v115;
        (*(v110 + 8))(v111, v107);
        v117 = sub_224A33F74(v114, v116, &v158);

        *(v112 + 4) = v117;
        _os_log_impl(&dword_224A2F000, v106, v108, "Subscription has not changed: %{public}s", v112, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v113);
        MEMORY[0x22AA5EED0](v113, -1, -1);
        MEMORY[0x22AA5EED0](v112, -1, -1);
      }

      else
      {

        (*(v110 + 8))(v105, v107);
      }

      return sub_224A3311C(v156, &qword_27D6F3BB0, &unk_224DB8CF0);
    }
  }

  else
  {
    v78 = v149;
    sub_224A3796C(v29, v149, &qword_27D6F3BB0, &unk_224DB8CF0);
    if (v75(&v29[v74], 1, v73) != 1)
    {
      v153 = v72;
      v100 = v157;
      v101 = &v29[v74];
      v102 = v146;
      (*(v157 + 32))(v146, v101, v73);
      sub_224AC22E8(&qword_27D6F3300, MEMORY[0x277CF9A78]);
      LODWORD(v151) = sub_224DAEDD8();
      v103 = *(v100 + 8);
      v103(v102, v73);
      sub_224A3311C(v36, &qword_27D6F3BB0, &unk_224DB8CF0);
      v103(v78, v73);
      v72 = v153;
      sub_224A3311C(v29, &qword_27D6F3BB0, &unk_224DB8CF0);
      if (v151)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    sub_224A3311C(v36, &qword_27D6F3BB0, &unk_224DB8CF0);
    (*(v157 + 8))(v78, v73);
  }

  sub_224A3311C(v29, &qword_27D6F32F8, &qword_224DB3230);
LABEL_20:
  if (qword_27D6F2CF0 != -1)
  {
    swift_once();
  }

  v79 = sub_224DAB258();
  __swift_project_value_buffer(v79, qword_27D6F71E0);
  v80 = v150;
  v72(v150, v154, v73);
  v81 = sub_224DAB228();
  v82 = v73;
  v83 = sub_224DAF2A8();
  v84 = os_log_type_enabled(v81, v83);
  v85 = v157;
  if (v84)
  {
    v86 = v80;
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v158 = v88;
    *v87 = 136446210;
    v89 = sub_224DAC588();
    v91 = v90;
    (*(v85 + 8))(v86, v82);
    v92 = sub_224A33F74(v89, v91, &v158);

    *(v87 + 4) = v92;
    _os_log_impl(&dword_224A2F000, v81, v83, "Creating new subscription to subscription: %{public}s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v88);
    MEMORY[0x22AA5EED0](v88, -1, -1);
    MEMORY[0x22AA5EED0](v87, -1, -1);
  }

  else
  {

    (*(v85 + 8))(v80, v82);
  }

  v93 = v152;
  v94 = v131[17];
  v95 = v131[18];
  __swift_project_boxed_opaque_existential_1(v131 + 14, v94);
  (*(v95 + 32))(v154, v94, v95);
  v96 = sub_224DAC548();
  v98 = v97;
  sub_224ABC050(v96, v97, 1);
  if (v93)
  {

    return sub_224A3311C(v156, &qword_27D6F3BB0, &unk_224DB8CF0);
  }

  v118 = v99;
  sub_224AB5474(v96, v98, v99);
  v119 = v143;
  sub_224DAC558();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v120 = v139;
    v121 = v140;
    (*(v139 + 32))(v145, v119, v140);
    v122 = v137;
    sub_224DAC498();
    v123 = v138;
    v124 = v141;
    if ((*(v138 + 88))(v122, v141) == *MEMORY[0x277CF9A50])
    {

      (*(v123 + 8))(v122, v124);
      sub_224ABCA10(v154, v118);
      (*(v120 + 8))(v145, v121);
LABEL_40:
      swift_unknownObjectRelease();
      return sub_224A3311C(v156, &qword_27D6F3BB0, &unk_224DB8CF0);
    }
  }

  else
  {
    v126 = v134;
    v127 = v135;
    (*(v134 + 32))(v144, v119, v135);
    v128 = v132;
    sub_224DAC4E8();
    v129 = v133;
    v130 = v136;
    if ((*(v133 + 88))(v128, v136) == *MEMORY[0x277CF9A60])
    {

      (*(v129 + 8))(v128, v130);
      sub_224ABCA10(v154, v118);
      (*(v126 + 8))(v144, v127);
      goto LABEL_40;
    }
  }

  result = sub_224DAFD78();
  __break(1u);
  return result;
}

uint64_t sub_224AB7D1C(uint64_t a1)
{
  v3 = sub_224DAB7B8();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB848();
  v19 = *(v7 - 8);
  v20 = v7;
  v8 = *(v19 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAC5E8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v18[1] = *(v1 + 40);
  (*(v12 + 16))(v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  (*(v12 + 32))(v15 + v14, v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  aBlock[4] = sub_224AC2200;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_56;
  v16 = _Block_copy(aBlock);

  sub_224DAB7E8();
  v22 = MEMORY[0x277D84F90];
  sub_224AC22E8(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v10, v6, v16);
  _Block_release(v16);
  (*(v21 + 8))(v6, v3);
  (*(v19 + 8))(v10, v20);
}

uint64_t sub_224AB80B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DAC5E8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  return sub_224AB8304(a2);
}

uint64_t sub_224AB8304(uint64_t a1)
{
  v2 = v1;
  v130 = sub_224DAC4A8();
  v129 = *(v130 - 8);
  v4 = *(v129 + 64);
  MEMORY[0x28223BE20](v130);
  v128 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_224DAC4D8();
  v143 = *(v146 - 8);
  v6 = *(v143 + 64);
  v7 = MEMORY[0x28223BE20](v146);
  v134 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v141 = &v122 - v10;
  MEMORY[0x28223BE20](v9);
  v136 = (&v122 - v11);
  v12 = sub_224DAC5E8();
  v137 = *(v12 - 8);
  v138 = v12;
  v13 = *(v137 + 8);
  v14 = MEMORY[0x28223BE20](v12);
  v132 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v131 = &v122 - v16;
  v127 = sub_224DAC4F8();
  v126 = *(v127 - 8);
  v17 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v19 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_224DAC528();
  v142 = *(v145 - 8);
  v20 = *(v142 + 64);
  v21 = MEMORY[0x28223BE20](v145);
  v133 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v140 = &v122 - v24;
  MEMORY[0x28223BE20](v23);
  v135 = (&v122 - v25);
  v144 = sub_224DAC538();
  v26 = *(*(v144 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v144);
  v139 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v122 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v122 - v33;
  v35 = sub_224DAB8C8();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = (&v122 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = v2[5];
  *v39 = v40;
  (*(v36 + 104))(v39, *MEMORY[0x277D85200], v35);
  v41 = v40;
  v42 = sub_224DAB8F8();
  (*(v36 + 8))(v39, v35);
  if ((v42 & 1) == 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  v43 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  v149 = a1;
  v44 = sub_224DAC588();
  a1 = v149;
  (*(v43 + 40))(v44);

  sub_224A3311C(v34, &qword_27D6F3BB0, &unk_224DB8CF0);
  v45 = sub_224DAC548();
  v34 = v46;
  v47 = v147;
  sub_224ABC050(v45, v46, 0);
  if (v47)
  {
  }

  v39 = v48;
  v122 = v49;
  v147 = v2;
  sub_224DAC558();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v125 = v39;
  v124 = 0;
  v123 = v45;
  if (EnumCaseMultiPayload != 1)
  {
    (*(v142 + 32))(v135, v30, v145);
    sub_224DAC4E8();
    v67 = v126;
    v68 = v127;
    if ((*(v126 + 88))(v19, v127) == *MEMORY[0x277CF9A60])
    {
      (*(v67 + 8))(v19, v68);
      v69 = v137;
      v70 = v138;
      v71 = v131;
      if (qword_27D6F2CF0 != -1)
      {
        swift_once();
      }

      v72 = sub_224DAB258();
      __swift_project_value_buffer(v72, qword_27D6F71E0);
      v69[2](v71, a1, v70);
      v73 = v71;
      v74 = sub_224DAB228();
      v75 = sub_224DAF268();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v148[0] = v136;
        *v76 = 136380675;
        sub_224AC22E8(&qword_27D6F32F0, MEMORY[0x277CF9A78]);
        v77 = sub_224DAFD28();
        v79 = v78;
        (v69[1])(v73, v70);
        v80 = sub_224A33F74(v77, v79, v148);

        *(v76 + 4) = v80;
        _os_log_impl(&dword_224A2F000, v74, v75, "Unsubscribing from token push: %{private}s", v76, 0xCu);
        v81 = v136;
        __swift_destroy_boxed_opaque_existential_1(v136);
        a1 = v149;
        MEMORY[0x22AA5EED0](v81, -1, -1);
        v82 = v76;
        v39 = v125;
        MEMORY[0x22AA5EED0](v82, -1, -1);
      }

      else
      {

        (v69[1])(v73, v70);
      }

      v84 = v146;
      sub_224ABE324(a1);
      (*(v142 + 8))(v135, v145);
      v83 = v143;
      goto LABEL_18;
    }

LABEL_36:
    result = sub_224DAFD78();
    __break(1u);
    return result;
  }

  (*(v143 + 32))(v136, v30, v146);
  v52 = v128;
  sub_224DAC498();
  v53 = v129;
  v54 = v130;
  if ((*(v129 + 88))(v52, v130) != *MEMORY[0x277CF9A50])
  {
    goto LABEL_36;
  }

  (*(v53 + 8))(v52, v54);
  v30 = v137;
  v19 = v138;
  v42 = v132;
  if (qword_27D6F2CF0 != -1)
  {
LABEL_35:
    swift_once();
  }

  v55 = sub_224DAB258();
  __swift_project_value_buffer(v55, qword_27D6F71E0);
  (*(v30 + 2))(v42, a1, v19);
  v56 = v42;
  v57 = v30;
  v58 = sub_224DAB228();
  v59 = sub_224DAF268();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v148[0] = v135;
    *v60 = 136380675;
    sub_224AC22E8(&qword_27D6F32F0, MEMORY[0x277CF9A78]);
    v61 = sub_224DAFD28();
    v63 = v62;
    (*(v57 + 1))(v56, v19);
    v64 = sub_224A33F74(v61, v63, v148);

    *(v60 + 4) = v64;
    _os_log_impl(&dword_224A2F000, v58, v59, "Unsubscribing from token push: %{private}s", v60, 0xCu);
    v65 = v135;
    __swift_destroy_boxed_opaque_existential_1(v135);
    a1 = v149;
    MEMORY[0x22AA5EED0](v65, -1, -1);
    v66 = v60;
    v39 = v125;
    MEMORY[0x22AA5EED0](v66, -1, -1);
  }

  else
  {

    (*(v57 + 1))(v56, v19);
  }

  sub_224ABE324(a1);
  v83 = v143;
  v84 = v146;
  (*(v143 + 8))(v136, v146);
LABEL_18:
  v85 = v123;
  v86 = v147;
  sub_224AB5474(v123, v34, v39);
  v87 = v86[17];
  v88 = v86[18];
  __swift_project_boxed_opaque_existential_1(v86 + 14, v87);
  if ((*(v88 + 56))(v85, v34, v87, v88))
  {
  }

  else
  {
    swift_beginAccess();
    sub_224B07378(0, 0, v85, v34);
    swift_endAccess();
  }

  v89 = v141;
  v90 = v139;
  sub_224DAC558();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v83 + 32))(v89, v90, v84);
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v91 = sub_224DAB258();
    __swift_project_value_buffer(v91, qword_27D6F71E0);
    v92 = v134;
    (*(v83 + 16))(v134, v89, v84);
    v93 = sub_224DAB228();
    v94 = sub_224DAF2A8();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v148[0] = v96;
      *v95 = 136446210;
      v97 = sub_224DAC4C8();
      v99 = v98;
      v100 = v92;
      v101 = *(v83 + 8);
      v101(v100, v146);
      v102 = sub_224A33F74(v97, v99, v148);
      v84 = v146;

      *(v95 + 4) = v102;
      _os_log_impl(&dword_224A2F000, v93, v94, "Unsubscribing from widget ID: %{public}s", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v96);
      v103 = v96;
      v89 = v141;
      MEMORY[0x22AA5EED0](v103, -1, -1);
      MEMORY[0x22AA5EED0](v95, -1, -1);
    }

    else
    {

      v119 = v92;
      v101 = *(v83 + 8);
      v101(v119, v84);
    }

    v120 = v147[4];
    sub_224DAB348();
    swift_unknownObjectRelease();
    return (v101)(v89, v84);
  }

  else
  {
    v104 = v142;
    v105 = v140;
    v106 = v145;
    (*(v142 + 32))(v140, v90, v145);
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v107 = sub_224DAB258();
    __swift_project_value_buffer(v107, qword_27D6F71E0);
    v108 = v133;
    (*(v104 + 16))(v133, v105, v106);
    v109 = sub_224DAB228();
    v110 = sub_224DAF2A8();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = v108;
      v113 = swift_slowAlloc();
      v148[0] = v113;
      *v111 = 136446210;
      v114 = sub_224DAC518();
      v116 = v115;
      v117 = *(v104 + 8);
      v117(v112, v145);
      v118 = sub_224A33F74(v114, v116, v148);
      v106 = v145;

      *(v111 + 4) = v118;
      _os_log_impl(&dword_224A2F000, v109, v110, "Unsubscribing from control ID: %{public}s", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v113);
      MEMORY[0x22AA5EED0](v113, -1, -1);
      MEMORY[0x22AA5EED0](v111, -1, -1);
    }

    else
    {

      v117 = *(v104 + 8);
      v117(v108, v106);
    }

    v121 = v147[4];
    sub_224DAB348();
    swift_unknownObjectRelease();
    return (v117)(v140, v106);
  }
}

uint64_t sub_224AB92B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v5 = sub_224DAC4A8();
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = *(v67 + 64);
  MEMORY[0x28223BE20](v5);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAC4D8();
  v69 = *(v8 - 8);
  v70 = v8;
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v8);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAC4F8();
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v11);
  v59 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAC528();
  v63 = *(v14 - 8);
  v64 = v14;
  v15 = *(v63 + 64);
  MEMORY[0x28223BE20](v14);
  v60 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_224DAC538();
  v17 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v59 - v22;
  v24 = sub_224DAC5E8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_224DAB8C8();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = (&v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = v4[5];
  *v33 = v34;
  (*(v30 + 104))(v33, *MEMORY[0x277D85200], v29);
  v35 = v34;
  LOBYTE(v34) = sub_224DAB8F8();
  (*(v30 + 8))(v33, v29);
  if ((v34 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v36 = v4[17];
  v37 = v4[18];
  __swift_project_boxed_opaque_existential_1(v4 + 14, v36);
  (*(v37 + 48))(v72, v73, v36, v37);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_224A3311C(v23, &qword_27D6F3BB0, &unk_224DB8CF0);
    v38 = sub_224DAE438();
    return (*(*(v38 - 8) + 56))(v74, 1, 1, v38);
  }

  v40 = v24;
  v73 = v25;
  (*(v25 + 32))(v28, v23, v24);
  sub_224DAC558();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v72 = v24;
    v41 = v69;
    v42 = v66;
    v43 = v19;
    v44 = v70;
    (*(v69 + 32))(v66, v43, v70);
    v45 = v65;
    sub_224DAC498();
    v47 = v67;
    v46 = v68;
    if ((*(v67 + 88))(v45, v68) == *MEMORY[0x277CF9A50])
    {
      (*(v47 + 8))(v45, v46);
      v48 = v4[28];
      __swift_project_boxed_opaque_existential_1(v4 + 24, v4[27]);
      v49 = sub_224DAC588();
      (*(v48 + 64))(v49);

      (*(v41 + 8))(v42, v44);
      return (*(v73 + 8))(v28, v72);
    }

    goto LABEL_11;
  }

  v50 = v63;
  v51 = v60;
  v52 = v19;
  v53 = v64;
  (*(v63 + 32))(v60, v52, v64);
  v54 = v59;
  sub_224DAC4E8();
  v56 = v61;
  v55 = v62;
  if ((*(v61 + 88))(v54, v62) != *MEMORY[0x277CF9A60])
  {
LABEL_11:
    result = sub_224DAFD78();
    __break(1u);
    return result;
  }

  (*(v56 + 8))(v54, v55);
  v57 = v4[28];
  __swift_project_boxed_opaque_existential_1(v4 + 24, v4[27]);
  v58 = sub_224DAC588();
  (*(v57 + 64))(v58);

  (*(v50 + 8))(v51, v53);
  return (*(v73 + 8))(v28, v40);
}

uint64_t sub_224AB99E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 328);
  *(a1 + 328) = a2;

  sub_224AB51C0(v2);
}

uint64_t sub_224AB9A2C(void *a1)
{
  v2 = v1;
  v95 = a1;
  v79 = type metadata accessor for IncomingMessage(0);
  v80 = *(v79 - 8);
  v3 = *(v80 + 64);
  v4 = MEMORY[0x28223BE20](v79);
  v82 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v5;
  MEMORY[0x28223BE20](v4);
  v83 = (&v78 - v6);
  v89 = sub_224DAE438();
  v87 = *(v89 - 8);
  v7 = *(v87 + 64);
  MEMORY[0x28223BE20](v89);
  v84 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F38C0, &qword_224DB31E8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  *&v86 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v94 = &v78 - v13;
  v14 = sub_224DAC5E8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v91 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v78 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v90 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v93 = &v78 - v25;
  v26 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3298, &qword_224DB31F8);
  v92 = v2;
  v88 = v26;
  result = sub_224DAF3E8();
  v85 = 0;
  v28 = v97;
  v96 = *(v97 + 16);
  if (v96)
  {
    v29 = 0;
    v30 = v97 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v31 = (v15 + 8);
    while (v29 < *(v28 + 16))
    {
      v32 = v30 + *(v15 + 72) * v29;
      v33 = v15;
      v34 = *(v15 + 16);
      v35 = v14;
      v34(v20, v32, v14);
      v36 = sub_224DAC5D8();
      if (v36)
      {
        v37 = v36;
        sub_224AC21B4();
        v38 = sub_224DAF6A8();

        if (v38)
        {

          v39 = v93;
          v14 = v35;
          v15 = v33;
          (*(v33 + 32))(v93, v20, v14);
          v40 = 0;
          goto LABEL_9;
        }
      }

      ++v29;
      v14 = v35;
      result = (*v31)(v20, v35);
      v15 = v33;
      if (v96 == v29)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v40 = 1;
    v39 = v93;
LABEL_9:
    (*(v15 + 56))(v39, v40, 1, v14);
    v41 = v90;
    sub_224A3796C(v39, v90, &qword_27D6F3BB0, &unk_224DB8CF0);
    v42 = (*(v15 + 48))(v41, 1, v14);
    v44 = v91;
    v43 = v92;
    v45 = v94;
    if (v42 == 1)
    {
      sub_224A3311C(v39, &qword_27D6F3BB0, &unk_224DB8CF0);
      return sub_224A3311C(v41, &qword_27D6F3BB0, &unk_224DB8CF0);
    }

    (*(v15 + 32))(v91, v41, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3290, &qword_224DB31F0);
    v46 = sub_224DAF3E8();
    v47 = v97;
    MEMORY[0x28223BE20](v46);
    *(&v78 - 2) = v44;
    sub_224AFD7EC(sub_224AC20A8, v47, v45);

    v48 = v86;
    sub_224A3796C(v45, v86, &unk_27D6F38C0, &qword_224DB31E8);
    v49 = v87;
    v50 = v89;
    if ((*(v87 + 48))(v48, 1, v89) == 1)
    {
      sub_224A3311C(v45, &unk_27D6F38C0, &qword_224DB31E8);
      sub_224A3311C(v39, &qword_27D6F3BB0, &unk_224DB8CF0);
      v51 = v48;
      v52 = &unk_27D6F38C0;
      v53 = &qword_224DB31E8;
    }

    else
    {
      v54 = v84;
      (*(v49 + 32))(v84, v48, v50);
      v55 = sub_224DAC548();
      v57 = v56;
      swift_beginAccess();
      v58 = *(v43 + 64);
      if (*(v58 + 16))
      {
        v96 = v15;

        v59 = sub_224A3A40C(v55, v57);
        v61 = v60;

        if (v61)
        {
          v62 = *(v58 + 56);
          v90 = "rono.PushNotifications.dev";
          v86 = *(v62 + 16 * v59);
          swift_unknownObjectRetain();

          v63 = sub_224DAE428();
          v65 = v64;
          v66 = v49;
          v67 = v79;
          v68 = *(v79 + 20);
          v69 = v95;
          v70 = v83;
          sub_224DAE0E8();
          v71 = v67[7];
          v72 = *MEMORY[0x277CF9EC8];
          v73 = sub_224DAE178();
          (*(*(v73 - 8) + 104))(v70 + v71, v72, v73);
          *v70 = v63;
          v70[1] = v65;
          v74 = (v70 + v67[6]);
          *v74 = 0;
          v74[1] = 0;
          *(v70 + v67[8]) = 1;
          v75 = v82;
          sub_224AC1DB0(v70, v82, type metadata accessor for IncomingMessage);
          v76 = (*(v80 + 80) + 40) & ~*(v80 + 80);
          v77 = swift_allocObject();
          *(v77 + 16) = v92;
          *(v77 + 24) = v86;
          sub_224AC20C8(v75, v77 + v76, type metadata accessor for IncomingMessage);
          swift_unknownObjectRetain();

          _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0xD000000000000015, (v90 | 0x8000000000000000), v88, sub_224AC2130, v77, 0.0);
          swift_unknownObjectRelease();

          sub_224AC1F14(v70, type metadata accessor for IncomingMessage);
          (*(v66 + 8))(v84, v89);
          sub_224A3311C(v94, &unk_27D6F38C0, &qword_224DB31E8);
          sub_224A3311C(v93, &qword_27D6F3BB0, &unk_224DB8CF0);
          return (*(v96 + 8))(v44, v14);
        }

        v15 = v96;
      }

      else
      {
      }

      (*(v49 + 8))(v54, v50);
      sub_224A3311C(v94, &unk_27D6F38C0, &qword_224DB31E8);
      v52 = &qword_27D6F3BB0;
      v53 = &unk_224DB8CF0;
      v51 = v93;
    }

    sub_224A3311C(v51, v52, v53);
    return (*(v15 + 8))(v44, v14);
  }

  return result;
}

uint64_t sub_224ABA3B0()
{
  v0 = sub_224DAE418();
  v2 = v1;
  if (v0 == sub_224DAC588() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_224DAFD88();
  }

  return v4 & 1;
}

void sub_224ABA44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v199 = a3;
  v210[1] = *MEMORY[0x277D85DE8];
  v171 = sub_224DAC4D8();
  v170 = *(v171 - 8);
  v6 = *(v170 + 64);
  MEMORY[0x28223BE20](v171);
  v169 = v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_224DAC528();
  v167 = *(v168 - 8);
  v8 = *(v167 + 64);
  MEMORY[0x28223BE20](v168);
  v166 = v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_224DAC538();
  v10 = *(*(v172 - 8) + 64);
  MEMORY[0x28223BE20](v172);
  v173 = v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for PushEvent();
  v176 = *(v177 - 8);
  v12 = *(v176 + 64);
  v13 = MEMORY[0x28223BE20](v177);
  v175 = v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v174 = v160 - v15;
  MEMORY[0x28223BE20](v14);
  v181 = v160 - v16;
  v180 = sub_224DAE0D8();
  v179 = *(v180 - 8);
  v17 = *(v179 + 64);
  MEMORY[0x28223BE20](v180);
  v178 = v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_224DAC5E8();
  v187 = *(v197 - 8);
  v19 = *(v187 + 64);
  MEMORY[0x28223BE20](v197);
  v21 = v160 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_224DAE438();
  v195 = *(v191 - 8);
  v22 = *(v195 + 64);
  v23 = MEMORY[0x28223BE20](v191);
  v182 = v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v206 = v160 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F38C0, &qword_224DB31E8);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v186 = v160 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v189 = v160 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v185 = v160 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v198 = v160 - v35;
  v183 = type metadata accessor for IncomingMessage(0);
  v36 = *(*(v183 - 8) + 64);
  MEMORY[0x28223BE20](v183);
  v38 = v160 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_224DAB8C8();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v43 = (v160 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = v3[5];
  *v43 = v44;
  (*(v40 + 104))(v43, *MEMORY[0x277D85200], v39);
  v45 = v44;
  v46 = sub_224DAB8F8();
  (*(v40 + 8))(v43, v39);
  if ((v46 & 1) == 0)
  {
    goto LABEL_116;
  }

  v196 = sub_224ABE998(a1);
  if (v47)
  {
    v46 = v47;
    v161 = a1;
    v162 = a2;
    v194 = v3;
    if (qword_27D6F2CF0 != -1)
    {
      goto LABEL_119;
    }

    while (1)
    {
      v48 = sub_224DAB258();
      v49 = __swift_project_value_buffer(v48, qword_27D6F71E0);
      v50 = v199;
      sub_224AC1DB0(v199, v38, type metadata accessor for IncomingMessage);

      v184 = v49;
      v51 = sub_224DAB228();
      v52 = sub_224DAF2A8();

      v53 = os_log_type_enabled(v51, v52);
      v54 = v197;
      v165 = v21;
      v160[1] = v12;
      v192 = v46;
      if (v53)
      {
        v55 = v46;
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *&v209 = v57;
        *v56 = 136446466;
        v58 = sub_224D75864();
        v60 = v59;
        sub_224AC1F14(v38, type metadata accessor for IncomingMessage);
        v61 = sub_224A33F74(v58, v60, &v209);

        *(v56 + 4) = v61;
        *(v56 + 12) = 2082;
        *(v56 + 14) = sub_224A33F74(v196, v55, &v209);
        _os_log_impl(&dword_224A2F000, v51, v52, "Received message: %{public}s for environment: %{public}s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v57, -1, -1);
        v50 = v199;
        MEMORY[0x22AA5EED0](v56, -1, -1);
      }

      else
      {

        sub_224AC1F14(v38, type metadata accessor for IncomingMessage);
      }

      v12 = v194;
      v67 = v198;
      v68 = *(v50 + 8);
      if (v68 >> 60 == 15)
      {

        v63 = sub_224DAB228();
        v64 = sub_224DAF288();
        if (!os_log_type_enabled(v63, v64))
        {
          goto LABEL_15;
        }

        v65 = swift_slowAlloc();
        *v65 = 0;
        v66 = "Incoming message does not provide a token";
LABEL_14:
        _os_log_impl(&dword_224A2F000, v63, v64, v66, v65, 2u);
        MEMORY[0x22AA5EED0](v65, -1, -1);
        goto LABEL_15;
      }

      v21 = *v50;
      v69 = v194[27];
      v70 = v194[28];
      __swift_project_boxed_opaque_existential_1(v194 + 24, v69);
      v71 = *(v70 + 56);
      sub_224A77FD0(v21, v68);
      v72 = v71(v196, v192, v69, v70);
      v73 = *(v72 + 16);
      v205 = v21;
      v202 = v73;
      v193 = v68;
      if (!v73)
      {

        v100 = 1;
        v46 = v191;
        v76 = v195;
        v101 = v189;
        v102 = v186;
LABEL_89:
        (*(v76 + 56))(v101, v100, 1, v46);
        sub_224A3796C(v101, v102, &unk_27D6F38C0, &qword_224DB31E8);
        if ((*(v76 + 48))(v102, 1, v46) == 1)
        {
          sub_224A3311C(v101, &unk_27D6F38C0, &qword_224DB31E8);
          sub_224AC1D9C(v205, v68);
          sub_224A3311C(v102, &unk_27D6F38C0, &qword_224DB31E8);
          v105 = v187;
          (*(v187 + 56))(v67, 1, 1, v54);
        }

        else
        {
          v106 = v67;
          v107 = v182;
          (*(v76 + 32))(v182, v102, v46);
          v108 = *(v12 + 136);
          v109 = v12;
          v110 = v76;
          v111 = v46;
          v112 = *(v109 + 144);
          __swift_project_boxed_opaque_existential_1((v109 + 112), v108);
          v113 = sub_224DAE418();
          (*(v112 + 48))(v113);

          sub_224AC1D9C(v205, v193);
          v114 = v107;
          v67 = v106;
          (*(v110 + 8))(v114, v111);
          sub_224A3311C(v189, &unk_27D6F38C0, &qword_224DB31E8);
          v105 = v187;
        }

        v115 = v165;
        v116 = v199;
        v117 = v185;
        v118 = v192;
        sub_224A3796C(v67, v185, &qword_27D6F3BB0, &unk_224DB8CF0);
        if ((*(v105 + 48))(v117, 1, v54) == 1)
        {

          sub_224A3311C(v117, &qword_27D6F3BB0, &unk_224DB8CF0);
          v119 = sub_224DAB228();
          v120 = sub_224DAF288();
          if (os_log_type_enabled(v119, v120))
          {
            v121 = swift_slowAlloc();
            *v121 = 0;
            _os_log_impl(&dword_224A2F000, v119, v120, "Incoming message does not belong to a subscription", v121, 2u);
            MEMORY[0x22AA5EED0](v121, -1, -1);
          }

          goto LABEL_113;
        }

        (*(v105 + 32))(v115, v117, v54);
        v122 = v196;
        v123 = v194;
        sub_224AC04BC(v115, v196, v118);
        LOBYTE(v122) = sub_224AB5474(v122, v118, v161);

        if (v122)
        {
          sub_224AC0A2C();
        }

        v124 = v183;
        if (*(v116 + *(v183 + 32)) == 1)
        {
          v125 = v178;
          sub_224DAC598();
          v126 = *(v124 + 20);
          v127 = sub_224DAE078();
          (*(v179 + 8))(v125, v180);
          if (v127)
          {
            v128 = v173;
            sub_224DAC558();
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload == 1)
            {
              v130 = v170;
              v131 = v169;
              v132 = v171;
              (*(v170 + 32))(v169, v128, v171);
              v133 = sub_224DAC4B8();
            }

            else
            {
              v130 = v167;
              v131 = v166;
              v132 = v168;
              (*(v167 + 32))(v166, v128, v168);
              v133 = sub_224DAC508();
            }

            v139 = v133;
            v140 = v181;
            v141 = v181 + *(v177 + 20);
            sub_224DA9868();
            (*(v130 + 8))(v131, v132);
            *v140 = v139;
            *(v140 + 8) = EnumCaseMultiPayload == 1;
            v142 = v174;
            sub_224AC1DB0(v140, v174, type metadata accessor for PushEvent);
            v143 = sub_224DAB228();
            v144 = sub_224DAF2A8();
            if (os_log_type_enabled(v143, v144))
            {
              v145 = swift_slowAlloc();
              v146 = swift_slowAlloc();
              *v145 = 136446210;
              *&v209 = 0;
              *(&v209 + 1) = 0xE000000000000000;
              v210[0] = v146;
              sub_224DAF938();
              MEMORY[0x22AA5D210](0x6D617473656D6974, 0xEB00000000203A70);
              v147 = *(v177 + 20);
              sub_224DA9878();
              sub_224AC22E8(&qword_27D6F32B8, MEMORY[0x277CC9578]);
              v148 = sub_224DAFD28();
              MEMORY[0x22AA5D210](v148);

              MEMORY[0x22AA5D210](0x54746E657665203BLL, 0xED0000203A657079);
              v149 = *(v142 + 8);
              v207 = *v142;
              v208 = v149;
              sub_224DAFA48();
              MEMORY[0x22AA5D210](59, 0xE100000000000000);
              v151 = *(&v209 + 1);
              v150 = v209;
              sub_224AC1F14(v142, type metadata accessor for PushEvent);
              v152 = sub_224A33F74(v150, v151, v210);
              v123 = v194;

              *(v145 + 4) = v152;
              _os_log_impl(&dword_224A2F000, v143, v144, "Publishing event: %{public}s", v145, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v146);
              MEMORY[0x22AA5EED0](v146, -1, -1);
              MEMORY[0x22AA5EED0](v145, -1, -1);
            }

            else
            {

              sub_224AC1F14(v142, type metadata accessor for PushEvent);
            }

            v153 = v176;
            v154 = v123[6];
            v155 = v181;
            v156 = v175;
            sub_224AC1DB0(v181, v175, type metadata accessor for PushEvent);
            v157 = (*(v153 + 80) + 24) & ~*(v153 + 80);
            v158 = swift_allocObject();
            *(v158 + 16) = v123;
            sub_224AC20C8(v156, v158 + v157, type metadata accessor for PushEvent);

            _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0xD000000000000010, 0x8000000224DC4EE0, v154, sub_224AC1E18, v158, 0.0);

            sub_224AC1F14(v155, type metadata accessor for PushEvent);
            (*(v187 + 8))(v115, v54);
            goto LABEL_113;
          }

          v134 = sub_224DAB228();
          v135 = sub_224DAF288();
          if (os_log_type_enabled(v134, v135))
          {
            v136 = v105;
            v137 = swift_slowAlloc();
            *v137 = 0;
            v138 = "Incoming message topic does not match subscription topic";
LABEL_106:
            _os_log_impl(&dword_224A2F000, v134, v135, v138, v137, 2u);
            MEMORY[0x22AA5EED0](v137, -1, -1);

            (*(v136 + 8))(v115, v54);
LABEL_113:
            sub_224A3311C(v67, &qword_27D6F3BB0, &unk_224DB8CF0);
            goto LABEL_114;
          }
        }

        else
        {
          v134 = sub_224DAB228();
          v135 = sub_224DAF288();
          if (os_log_type_enabled(v134, v135))
          {
            v136 = v105;
            v137 = swift_slowAlloc();
            *v137 = 0;
            v138 = "Incoming message does not indicate content changed.";
            goto LABEL_106;
          }
        }

        (*(v105 + 8))(v115, v54);
        goto LABEL_113;
      }

      v74 = v68;
      v75 = 0;
      v76 = v195;
      v204 = v72 + ((*(v195 + 80) + 32) & ~*(v195 + 80));
      v203 = v195 + 16;
      if (v21)
      {
        v77 = 0;
      }

      else
      {
        v77 = v74 == 0xC000000000000000;
      }

      v78 = !v77;
      v190 = v78;
      v38 = (v74 >> 62);
      v79 = __OFSUB__(HIDWORD(v21), v21);
      v164 = v79;
      v163 = HIDWORD(v21) - v21;
      v188 = BYTE6(v74);
      v200 = (v195 + 8);
      v46 = v191;
      v201 = v72;
      while (v75 < *(v72 + 16))
      {
        (*(v76 + 16))(v206, v204 + *(v76 + 72) * v75, v46);
        v80 = sub_224DAE428();
        v12 = v80;
        v21 = v81;
        v82 = v81 >> 62;
        if (v81 >> 62 == 3)
        {
          if (v80)
          {
            v83 = 0;
          }

          else
          {
            v83 = v81 == 0xC000000000000000;
          }

          v85 = !v83 || v38 < 3;
          if (((v85 | v190) & 1) == 0)
          {

            v103 = 0;
            v104 = 0xC000000000000000;
            goto LABEL_86;
          }

          v86 = 0;
          v87 = v205;
          if (v38 <= 1)
          {
LABEL_55:
            v91 = v188;
            if (v38)
            {
              v91 = v163;
              if (v164)
              {
                goto LABEL_117;
              }
            }

            goto LABEL_61;
          }
        }

        else
        {
          if (v82 <= 1)
          {
            v87 = v205;
            if (!v82)
            {
              v86 = BYTE6(v81);
              if (v38 <= 1)
              {
                goto LABEL_55;
              }

              goto LABEL_59;
            }

            LODWORD(v86) = HIDWORD(v80) - v80;
            if (__OFSUB__(HIDWORD(v80), v80))
            {
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
            }

            v86 = v86;
            goto LABEL_54;
          }

          v87 = v205;
          if (v82 == 2)
          {
            v89 = *(v80 + 16);
            v88 = *(v80 + 24);
            v90 = __OFSUB__(v88, v89);
            v86 = v88 - v89;
            if (v90)
            {
              goto LABEL_121;
            }

LABEL_54:
            if (v38 <= 1)
            {
              goto LABEL_55;
            }

            goto LABEL_59;
          }

          v86 = 0;
          if (v38 <= 1)
          {
            goto LABEL_55;
          }
        }

LABEL_59:
        if (v38 != 2)
        {
          if (!v86)
          {
            goto LABEL_84;
          }

LABEL_28:
          sub_224A78024(v80, v81);
          goto LABEL_29;
        }

        v93 = *(v87 + 16);
        v92 = *(v87 + 24);
        v90 = __OFSUB__(v92, v93);
        v91 = v92 - v93;
        if (v90)
        {
          goto LABEL_118;
        }

LABEL_61:
        if (v86 != v91)
        {
          goto LABEL_28;
        }

        if (v86 < 1)
        {
LABEL_84:

          v103 = v12;
          v104 = v21;
LABEL_86:
          sub_224A78024(v103, v104);
LABEL_87:
          v101 = v189;
          (*(v76 + 32))(v189, v206, v46);
          v100 = 0;
          v12 = v194;
LABEL_88:
          v102 = v186;
          v68 = v193;
          goto LABEL_89;
        }

        if (v82 > 1)
        {
          if (v82 == 2)
          {
            v94 = *(v80 + 16);
            v95 = *(v80 + 24);
            v96 = sub_224DA93E8();
            if (v96)
            {
              v97 = sub_224DA9408();
              if (__OFSUB__(v94, v97))
              {
                goto LABEL_124;
              }

              v96 += v94 - v97;
            }

            if (__OFSUB__(v95, v94))
            {
              goto LABEL_123;
            }

            sub_224DA93F8();
            sub_224CFE1EC(v96, v205, v193, &v209);
            sub_224A78024(v12, v21);
            v54 = v197;
            v67 = v198;
            v76 = v195;
            if (v209)
            {
              goto LABEL_81;
            }

            goto LABEL_29;
          }

          *(&v209 + 6) = 0;
          *&v209 = 0;
        }

        else
        {
          if (v82)
          {
            if (v80 >> 32 < v80)
            {
              goto LABEL_122;
            }

            v98 = sub_224DA93E8();
            if (v98)
            {
              v99 = sub_224DA9408();
              if (__OFSUB__(v12, v99))
              {
                goto LABEL_125;
              }

              v98 += v12 - v99;
            }

            sub_224DA93F8();
            sub_224CFE1EC(v98, v205, v193, &v209);
            sub_224A78024(v12, v21);
            v67 = v198;
            v46 = v191;
            v76 = v195;
            if (v209)
            {
LABEL_81:

              goto LABEL_87;
            }

            goto LABEL_29;
          }

          *&v209 = v80;
          WORD4(v209) = v81;
          BYTE10(v209) = BYTE2(v81);
          BYTE11(v209) = BYTE3(v81);
          BYTE12(v209) = BYTE4(v81);
          BYTE13(v209) = BYTE5(v81);
        }

        sub_224CFE1EC(&v209, v87, v193, &v207);
        sub_224A78024(v12, v21);
        if (v207)
        {
          goto LABEL_81;
        }

LABEL_29:
        ++v75;
        (*v200)(v206, v46);
        v72 = v201;
        if (v202 == v75)
        {

          v100 = 1;
          v12 = v194;
          v101 = v189;
          goto LABEL_88;
        }
      }

      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      swift_once();
    }
  }

  if (qword_27D6F2CF0 != -1)
  {
    swift_once();
  }

  v62 = sub_224DAB258();
  __swift_project_value_buffer(v62, qword_27D6F71E0);
  v63 = sub_224DAB228();
  v64 = sub_224DAF288();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    v66 = "Incoming message arrived on an unknown connection";
    goto LABEL_14;
  }

LABEL_15:

LABEL_114:
  v159 = *MEMORY[0x277D85DE8];
}