uint64_t sub_20DA9D79C()
{
  if (qword_27C842480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 552);
  v2 = qword_27C84C658;
  sub_20DD64C54();
  v3 = sub_20DD64C24();
  v4 = sub_20DD65364();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20D9BF000, v3, v4, "Failed to determine if any events exist", v5, 2u);
    MEMORY[0x20F327D10](v5, -1, -1);
  }

  v6 = *(v0 + 656);
  v7._rawValue = *(v0 + 648);
  v8 = *(v0 + 632);
  v9 = *(v0 + 608);
  v10 = *(v0 + 600);
  v11 = *(v0 + 552);
  v12 = *(v0 + 536);
  v13 = *(v0 + 528);

  (*(v12 + 8))(v11, v13);
  v14 = sub_20DD64E74();
  v15 = HFLocalizedString(v14);

  v16 = sub_20DD64EB4();
  v18 = v17;

  *(v0 + 320) = MEMORY[0x277D837D0];
  *(v0 + 296) = v16;
  *(v0 + 304) = v18;
  sub_20D9D77C8((v0 + 296), (v0 + 328));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0070((v0 + 328), @"description", isUniquelyReferenced_nonNull_native);
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

uint64_t sub_20DA9DA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_20DA9DAF8;

  return sub_20DA3CFC4(a5);
}

uint64_t sub_20DA9DAF8(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_20DA9DBF8, 0, 0);
}

uint64_t HMHome.hasCompatibleActivityLogAccessories(targetKind:)(uint64_t a1)
{
  v2 = v1;
  v92 = sub_20DD64674();
  v4 = *(v92 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v92);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v86 - v9;
  if (a1 != 1)
  {
    v89 = v2;
    if (a1)
    {
      goto LABEL_69;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844620, &qword_20DD955A0);
    v19 = *(v4 + 72);
    v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v88 = swift_allocObject();
    v21 = v88 + v20;
    v22 = *(v4 + 104);
    v23 = v92;
    v22(v88 + v20, *MEMORY[0x277D17670], v92);
    v24 = *MEMORY[0x277D17658];
    v90 = v19;
    v22(v21 + v19, v24, v23);
    v22(v21 + 2 * v19, *MEMORY[0x277D17678], v23);
    v26 = *(v4 + 16);
    v25 = v4 + 16;
    v91 = v26;
    v27 = (v25 - 8);
    v28 = MEMORY[0x277D84F90];
    v29 = 3;
    v87 = v21;
    while (1)
    {
      v30 = v92;
      v31 = v25;
      v91(v10, v21, v92);
      v32 = sub_20DA9AE18(0);
      (*v27)(v10, v30);
      v33 = *(v32 + 16);
      v34 = *(v28 + 2);
      v35 = v34 + v33;
      if (__OFADD__(v34, v33))
      {
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v35 <= *(v28 + 3) >> 1)
      {
        if (!*(v32 + 16))
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (v34 <= v35)
        {
          v37 = v34 + v33;
        }

        else
        {
          v37 = v34;
        }

        v28 = sub_20D9E0040(isUniquelyReferenced_nonNull_native, v37, 1, v28);
        if (!*(v32 + 16))
        {
LABEL_6:

          if (v33)
          {
            goto LABEL_64;
          }

          goto LABEL_7;
        }
      }

      if ((*(v28 + 3) >> 1) - *(v28 + 2) < v33)
      {
        goto LABEL_67;
      }

      swift_arrayInitWithCopy();

      if (v33)
      {
        v38 = *(v28 + 2);
        v39 = __OFADD__(v38, v33);
        v40 = v38 + v33;
        if (v39)
        {
          goto LABEL_68;
        }

        *(v28 + 2) = v40;
      }

LABEL_7:
      v21 += v90;
      --v29;
      v25 = v31;
      if (!v29)
      {
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v41 = [v89 hf_allVisibleServices];
        v42 = sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
        sub_20DA6C1EC();
        v43 = sub_20DD651E4();

        v87 = v42;
        v88 = v43;
        if ((v43 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          sub_20DD65564();
          sub_20DD65284();
          v43 = v96;
          v44 = v97;
          v45 = v98;
          v46 = v99;
          v47 = v100;
        }

        else
        {
          v66 = -1 << *(v43 + 32);
          v44 = v43 + 56;
          v45 = ~v66;
          v67 = -v66;
          if (v67 < 64)
          {
            v68 = ~(-1 << v67);
          }

          else
          {
            v68 = -1;
          }

          v47 = v68 & *(v43 + 56);

          v46 = 0;
        }

        v92 = 0;
        v86 = v45;
        v69 = (v45 + 64) >> 6;
        if (v43 < 0)
        {
          goto LABEL_54;
        }

LABEL_48:
        v70 = v46;
        v71 = v47;
        v72 = v46;
        if (v47)
        {
LABEL_52:
          v73 = (v71 - 1) & v71;
          v74 = *(*(v43 + 48) + ((v72 << 9) | (8 * __clz(__rbit64(v71)))));
          if (!v74)
          {
            goto LABEL_59;
          }

          while (1)
          {
            v91 = v74;
            v76 = [v74 serviceType];
            v77 = sub_20DD64EB4();
            v79 = v78;

            v94 = v77;
            v95 = v79;
            MEMORY[0x28223BE20](v80);
            v84 = &v94;
            v81 = v92;
            LOBYTE(v77) = sub_20D9DFE38(sub_20DA9F064, (&v86 - 4), v28);

            if (v77)
            {
              break;
            }

            v92 = v81;

            v46 = v72;
            v47 = v73;
            if ((v43 & 0x8000000000000000) == 0)
            {
              goto LABEL_48;
            }

LABEL_54:
            v75 = sub_20DD655F4();
            if (v75)
            {
              v93 = v75;
              swift_dynamicCast();
              v74 = v94;
              v72 = v46;
              v73 = v47;
              if (v94)
              {
                continue;
              }
            }

            goto LABEL_59;
          }

          sub_20D9C51CC();

LABEL_62:
          v82 = 1;
        }

        else
        {
          while (1)
          {
            v72 = v70 + 1;
            if (__OFADD__(v70, 1))
            {
              goto LABEL_66;
            }

            if (v72 >= v69)
            {
              break;
            }

            v71 = *(v44 + 8 * v72);
            ++v70;
            if (v71)
            {
              goto LABEL_52;
            }
          }

LABEL_59:

          sub_20D9C51CC();
          v82 = 0;
        }

        return v82;
      }
    }
  }

  v11 = v92;
  (*(v4 + 104))(v8, *MEMORY[0x277D17680], v92);
  v91 = sub_20DA9AE18(1);
  (*(v4 + 8))(v8, v11);
  v12 = [v2 hf_allVisibleServices];
  v13 = sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
  sub_20DA6C1EC();
  v14 = sub_20DD651E4();

  v87 = v13;
  v88 = v14;
  if ((v14 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    sub_20DD65284();
    v14 = v96;
    v15 = v97;
    v16 = v98;
    v17 = v99;
    v18 = v100;
  }

  else
  {
    v48 = -1 << *(v14 + 32);
    v15 = v14 + 56;
    v16 = ~v48;
    v49 = -v48;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    else
    {
      v50 = -1;
    }

    v18 = v50 & *(v14 + 56);

    v17 = 0;
  }

  v86 = v16;
  v51 = (v16 + 64) >> 6;
  v92 = v14;
  while (v14 < 0)
  {
    v57 = sub_20DD655F4();
    if (!v57)
    {
      goto LABEL_59;
    }

    v93 = v57;
    swift_dynamicCast();
    v56 = v94;
    v54 = v17;
    v55 = v18;
    if (!v94)
    {
      goto LABEL_59;
    }

LABEL_38:
    v58 = [v56 serviceType];
    v59 = sub_20DD64EB4();
    v61 = v60;

    v94 = v59;
    v95 = v61;
    MEMORY[0x28223BE20](v62);
    v84 = &v94;
    LOBYTE(v58) = sub_20D9DFE38(sub_20DA83EFC, (&v86 - 4), v91);

    if (v58)
    {
      v63 = [v56 accessory];
      if (v63)
      {
        v64 = v63;
        v65 = [v63 supportsAdaptiveTemperatureAutomations];

        if (v65)
        {

          sub_20D9C51CC();

          goto LABEL_62;
        }
      }
    }

    v17 = v54;
    v18 = v55;
    v14 = v92;
  }

  v52 = v17;
  v53 = v18;
  v54 = v17;
  if (v18)
  {
LABEL_34:
    v55 = (v53 - 1) & v53;
    v56 = *(*(v14 + 48) + ((v54 << 9) | (8 * __clz(__rbit64(v53)))));
    if (!v56)
    {
      goto LABEL_59;
    }

    goto LABEL_38;
  }

  while (1)
  {
    v54 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if (v54 >= v51)
    {
      goto LABEL_59;
    }

    v53 = *(v15 + 8 * v54);
    ++v52;
    if (v53)
    {
      goto LABEL_34;
    }
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  v85 = 0;
  v84 = 144;
  result = sub_20DD65814();
  __break(1u);
  return result;
}

uint64_t sub_20DA9E618(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  LOBYTE(a3) = HMHome.hasCompatibleActivityLogAccessories(targetKind:)(a3);

  return a3 & 1;
}

Swift::Bool __swiftcall HMHome.hasActivityLogPrerequisites()()
{
  v0 = [objc_opt_self() sharedDispatcher];
  v1 = [v0 homeManager];

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 hasOptedToHH2];

  return v2;
}

id sub_20DA9E6D8()
{
  v0 = [objc_opt_self() sharedDispatcher];
  v1 = [v0 homeManager];

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 hasOptedToHH2];

  return v2;
}

Swift::Bool __swiftcall HMHome.userSupportsActivityLog()()
{
  v1 = [v0 currentUser];
  v2 = [v0 hf:v1 userIsRestrictedGuest:?];

  return v2 ^ 1;
}

uint64_t sub_20DA9E7B4(void *a1)
{
  v1 = a1;
  v2 = [v1 currentUser];
  v3 = [v1 hf:v2 userIsRestrictedGuest:?];

  return v3 ^ 1;
}

id HMHome.activityLogAvailable(targetKind:)(uint64_t a1)
{
  result = [v1 hasCompatibleActivityLogAccessoriesForTargetKind_];
  if (result)
  {
    result = [v1 hasActivityLogPrerequisites];
    if (result)
    {
      return [v1 userSupportsActivityLog];
    }
  }

  return result;
}

id sub_20DA9E86C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if ([v4 hasCompatibleActivityLogAccessoriesForTargetKind_] && objc_msgSend(v4, sel_hasActivityLogPrerequisites))
  {
    v5 = [v4 userSupportsActivityLog];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id SecurityActivityEventStatusItem.init(home:room:valueSource:)(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_20DA9EC74(a1, a2, a3, 0);

  swift_unknownObjectRelease();
  return v5;
}

id sub_20DA9E980(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id _s4Home23ActivityEventStatusItemC4home4room11valueSourceACSo6HMHomeC_So6HMRoomCSgSo021HFCharacteristicValueI0_ptcfC_0(void *a1, void *a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(v3) initWithHome:a1 room:a2 valueSource:a3];

  swift_unknownObjectRelease();
  return v6;
}

id ClimateActivityEventStatusItem.init(home:room:valueSource:)(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_20DA9EC74(a1, a2, a3, 1);

  swift_unknownObjectRelease();
  return v5;
}

id sub_20DA9EA80(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a4;
  swift_unknownObjectRetain();
  v11 = sub_20DA9EC74(v9, a4, a5, a6);

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_20DA9EB4C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_20D9D7010;

  return sub_20DA9C044(v2, v3, v4, v6);
}

uint64_t objectdestroy_2Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 40);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

id sub_20DA9EC74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v24 = a3;
  v9 = sub_20DD636C4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC4Home23ActivityEventStatusItem_midnightToday;
  v15 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  v16 = [v15 hf_startOfDay];

  sub_20DD63674();
  (*(v10 + 32))(&v6[v14], v13, v9);
  *&v6[OBJC_IVAR____TtC4Home23ActivityEventStatusItem_targetKind] = a4;
  v17 = type metadata accessor for ActivityLogCoordinator();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = a1;
  *&v6[OBJC_IVAR____TtC4Home23ActivityEventStatusItem_activityLogCoordinator] = ActivityLogCoordinator.init(home:targetKind:)(v20, a4);
  v21 = type metadata accessor for ActivityEventStatusItem(0);
  v25.receiver = v6;
  v25.super_class = v21;
  return objc_msgSendSuper2(&v25, sel_initWithHome_room_valueSource_, v20, a2, v24);
}

uint64_t sub_20DA9EE44()
{
  result = sub_20DD636C4();
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

uint64_t sub_20DA9EF64(uint64_t a1)
{
  v4 = *(sub_20DD636C4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20D9C76B4;

  return sub_20DA9DA58(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_20DA9F0A4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47 = a1;
  v48 = a2;
  v6 = sub_20DD64294();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v41 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v46 = &v41 - v11;
  result = MEMORY[0x28223BE20](v10);
  v51 = a3;
  v52 = &v41 - v14;
  v15 = 0;
  v18 = *(a3 + 64);
  v17 = a3 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v49 = v13;
  v50 = v13 + 32;
  v44 = (v13 + 8);
  v45 = v13 + 16;
  v42 = MEMORY[0x277D84F90];
  while (1)
  {
    v23 = v15;
    if (!v21)
    {
      break;
    }

    v24 = v4;
LABEL_10:
    v25 = *(v51 + 56);
    v26 = v49;
    v43 = *(v49 + 72);
    v27 = v46;
    (*(v49 + 16))(v46, v25 + v43 * (__clz(__rbit64(v21)) | (v15 << 6)), v6);
    v28 = *(v26 + 32);
    v29 = v6;
    v30 = v52;
    v31 = v29;
    v28(v52, v27);
    v32 = v47(v30);
    v4 = v24;
    if (v24)
    {
      (*v44)(v52, v31);
      v40 = v42;

      return v40;
    }

    v21 &= v21 - 1;
    if (v32)
    {
      v6 = v31;
      (v28)(v41, v52, v31);
      v33 = v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_20DA4B10C(0, *(v33 + 16) + 1, 1);
        v6 = v31;
        v33 = v53;
      }

      v36 = *(v33 + 16);
      v35 = *(v33 + 24);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v39 = v36 + 1;
        v42 = v36;
        sub_20DA4B10C(v35 > 1, v36 + 1, 1);
        v37 = v39;
        v36 = v42;
        v6 = v31;
        v33 = v53;
      }

      *(v33 + 16) = v37;
      v38 = *(v49 + 80);
      v42 = v33;
      result = (v28)(v33 + ((v38 + 32) & ~v38) + v36 * v43, v41, v6);
    }

    else
    {
      v6 = v31;
      result = (*v44)(v52, v31);
    }
  }

  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v22)
    {

      return v42;
    }

    v21 = *(v17 + 8 * v15);
    ++v23;
    if (v21)
    {
      v24 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20DA9F464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[86] = a3;
  v4 = sub_20DD641A4();
  v3[87] = v4;
  v5 = *(v4 - 8);
  v3[88] = v5;
  v6 = *(v5 + 64) + 15;
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v7 = sub_20DD64294();
  v3[91] = v7;
  v8 = *(v7 - 8);
  v3[92] = v8;
  v9 = *(v8 + 64) + 15;
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v10 = sub_20DD63744();
  v3[96] = v10;
  v11 = *(v10 - 8);
  v3[97] = v11;
  v12 = *(v11 + 64) + 15;
  v3[98] = swift_task_alloc();
  v3[99] = swift_task_alloc();
  v13 = sub_20DD63E94();
  v3[100] = v13;
  v14 = *(v13 - 8);
  v3[101] = v14;
  v15 = *(v14 + 64) + 15;
  v3[102] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C845330, &qword_20DD96E98) - 8) + 64) + 15;
  v3[103] = swift_task_alloc();
  v3[104] = swift_task_alloc();
  v17 = sub_20DD63CA4();
  v3[105] = v17;
  v18 = *(v17 - 8);
  v3[106] = v18;
  v19 = *(v18 + 64) + 15;
  v3[107] = swift_task_alloc();
  v3[108] = swift_task_alloc();
  v3[109] = swift_task_alloc();
  v20 = sub_20DD64354();
  v3[110] = v20;
  v21 = *(v20 - 8);
  v3[111] = v21;
  v22 = *(v21 + 64) + 15;
  v3[112] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA9F77C, 0, 0);
}

uint64_t sub_20DA9F77C()
{
  v1 = v0[86];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[113] = Strong;
  if (Strong)
  {
    v0[114] = sub_20DD63C84();
    v0[115] = sub_20DD650F4();
    v0[116] = sub_20DD650E4();
    v4 = sub_20DD65094();

    return MEMORY[0x2822009F8](sub_20DA9F994, v4, v3);
  }

  else
  {
    v5 = v0[112];
    v6 = v0[109];
    v7 = v0[108];
    v8 = v0[107];
    v9 = v0[104];
    v10 = v0[103];
    v11 = v0[102];
    v14 = v0[99];
    v15 = v0[98];
    v16 = v0[95];
    v17 = v0[94];
    v18 = v0[93];
    v19 = v0[90];
    v20 = v0[89];
    [objc_opt_self() hf:37 errorWithCode:?];
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_20DA9F994()
{
  v1 = v0[116];
  v2 = v0[114];

  v0[117] = sub_20DD63C64();

  return MEMORY[0x2822009F8](sub_20DA9FA08, 0, 0);
}

uint64_t sub_20DA9FA08()
{
  v1 = *(v0 + 920);
  *(v0 + 944) = sub_20DD650E4();
  v3 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA9FA94, v3, v2);
}

uint64_t sub_20DA9FA94()
{
  v1 = v0[118];
  v2 = v0[117];
  v3 = v0[112];

  sub_20DD63BF4();

  return MEMORY[0x2822009F8](sub_20DA9FB10, 0, 0);
}

uint64_t sub_20DA9FB10()
{
  v1 = *(v0 + 920);
  *(v0 + 952) = sub_20DD650E4();
  v3 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA9FB9C, v3, v2);
}

uint64_t sub_20DA9FB9C()
{
  v1 = v0[119];
  v2 = v0[114];

  v0[120] = sub_20DD63C64();

  return MEMORY[0x2822009F8](sub_20DA9FC10, 0, 0);
}

uint64_t sub_20DA9FC10()
{
  v1 = *(v0 + 920);
  *(v0 + 968) = sub_20DD650E4();
  v3 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA9FC9C, v3, v2);
}

uint64_t sub_20DA9FC9C()
{
  v1 = v0[121];
  v2 = v0[120];
  v3 = v0[102];

  sub_20DD63BE4();

  return MEMORY[0x2822009F8](sub_20DA9FD18, 0, 0);
}

uint64_t sub_20DA9FD18()
{
  v1 = v0[106];
  v2 = v0[102];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[97];
  v6 = sub_20DD63E54();
  v7 = sub_20DAA1774(v6);
  (*(v3 + 8))(v2, v4);
  v8 = v7 + 56;
  v9 = -1;
  v10 = -1 << *(v7 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v7 + 56);
  v12 = (63 - v10) >> 6;
  v159 = (v1 + 16);
  v162 = (v1 + 32);
  v151 = (v5 + 8);
  v154 = v1;
  v156 = (v1 + 8);
  v164 = v7;

  v13 = 0;
  v173 = v0;
  for (i = v7 + 56; ; v8 = i)
  {
    if (!v11)
    {
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v14 >= v12)
        {

          v34 = 1;
          goto LABEL_17;
        }

        v11 = *(v8 + 8 * v14);
        ++v13;
        if (v11)
        {
          v13 = v14;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
      return MEMORY[0x2821700F0]();
    }

LABEL_11:
    v169 = v0[113];
    v15 = v0[108];
    v16 = v0[107];
    v17 = v0[105];
    v18 = v0[99];
    v19 = v0[96];
    (*(v154 + 16))(v15, *(v164 + 48) + *(v154 + 72) * (__clz(__rbit64(v11)) | (v13 << 6)), v17);
    v20 = *(v154 + 32);
    v20(v16, v15, v17);
    sub_20DD63C94();
    v166 = sub_20DD636E4();
    v22 = v21;
    v23 = *v151;
    (*v151)(v18, v19);
    v24 = [v169 room];
    if (!v24)
    {

      goto LABEL_5;
    }

    v170 = v20;
    v25 = v0[98];
    v26 = v0[96];
    v27 = v22;
    v28 = v24;
    v29 = [v24 uniqueIdentifier];

    sub_20DD63714();
    v30 = sub_20DD636E4();
    v32 = v31;
    v23(v25, v26);
    if (v166 == v30 && v27 == v32)
    {
      break;
    }

    v33 = sub_20DD65974();

    if (v33)
    {
      goto LABEL_50;
    }

LABEL_5:
    v11 &= v11 - 1;
    v0 = v173;
    (*v156)(v173[107], v173[105]);
  }

LABEL_50:

  v0 = v173;
  v170(v173[104], v173[107], v173[105]);
  v34 = 0;
LABEL_17:
  v35 = v0[106];
  v36 = v0[105];
  v37 = v0[104];
  v38 = *(v35 + 56);
  v38(v37, v34, 1, v36);

  v39 = (*(v35 + 48))(v37, 1, v36);
  v40 = v0[112];
  if (v39 == 1)
  {
    v41 = v0[106];
    v42 = v0[105];
    v43 = v0[103];
    v160 = v0[92];
    v142 = v0[88];
    sub_20D9D76EC(v0[104], &qword_27C845330, &qword_20DD96E98);
    v38(v43, 1, 1, v42);
    v44 = sub_20DD642F4();
    v46 = v45;
    sub_20D9D76EC(v43, &qword_27C845330, &qword_20DD96E98);
    v173[5] = MEMORY[0x277D837D0];
    v173[2] = v44;
    v173[3] = v46;
    sub_20D9D77C8(v173 + 1, v173 + 3);
    v47 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D0070(v173 + 3, @"title", isUniquelyReferenced_nonNull_native);
    v49 = v47;
    v38(v43, 1, 1, v42);
    v50 = sub_20DD64314();
    v52 = v51;
    sub_20D9D76EC(v43, &qword_27C845330, &qword_20DD96E98);
    v173[13] = MEMORY[0x277D837D0];
    v173[10] = v50;
    v173[11] = v52;
    sub_20D9D77C8(v173 + 5, v173 + 7);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D0070(v173 + 7, @"description", v53);
    v38(v43, 1, 1, v42);
    LOBYTE(v50) = sub_20DD64304();
    sub_20D9D76EC(v43, &qword_27C845330, &qword_20DD96E98);
    v173[21] = MEMORY[0x277D839B0];
    *(v173 + 144) = v50 & 1;
    sub_20D9D77C8(v173 + 9, v173 + 11);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v175 = v49;
    v55 = v173;
    sub_20D9D0070(v173 + 11, @"hidden", v54);
    v56 = v175;
    v57 = sub_20DD642E4();
    v58 = 0;
    v60 = v57 + 64;
    v59 = *(v57 + 64);
    v157 = v57;
    v61 = -1 << *(v57 + 32);
    if (-v61 < 64)
    {
      v62 = ~(-1 << -v61);
    }

    else
    {
      v62 = -1;
    }

    v63 = v62 & v59;
    v64 = (63 - v61) >> 6;
    v145 = *MEMORY[0x277D15EE8];
    v167 = (v142 + 8);
    v141 = (v160 + 32);
    v143 = MEMORY[0x277D84F90];
    v149 = v64;
    v152 = v57 + 64;
    if ((v62 & v59) != 0)
    {
      do
      {
LABEL_28:
        while (1)
        {
          v70 = v55[90];
          v71 = v55[87];
          v72 = __clz(__rbit64(v63));
          v63 &= v63 - 1;
          v144 = *(v160 + 72);
          (*(v160 + 16))(v55[95], *(v157 + 56) + v144 * (v72 | (v58 << 6)), v55[91]);
          v73 = sub_20DD64214();
          (*(v142 + 104))(v70, v145, v71);
          v171 = v73;
          if (*(v73 + 16))
          {
            v74 = v55[90];
            v75 = v55[87];
            v76 = *(v171 + 40);
            sub_20DAA2AB0(&qword_27C8435C0, MEMORY[0x277D15F40]);
            v77 = sub_20DD64E24();
            v78 = -1 << *(v171 + 32);
            v79 = v77 & ~v78;
            if ((*(v171 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79))
            {
              break;
            }
          }

LABEL_23:
          v65 = v55[95];
          v66 = v55[91];
          v67 = v55[90];
          v68 = v55[87];

          (*v167)(v67, v68);
          (*(v160 + 8))(v65, v66);
          v60 = v152;
          v56 = v175;
          v64 = v149;
          if (!v63)
          {
            goto LABEL_24;
          }
        }

        v80 = ~v78;
        v81 = *(v142 + 72);
        v82 = *(v142 + 16);
        while (1)
        {
          v83 = v55[90];
          v84 = v55[89];
          v85 = v55[87];
          v82(v84, *(v171 + 48) + v79 * v81, v85);
          sub_20DAA2AB0(&qword_27C8435D0, MEMORY[0x277D15F40]);
          LOBYTE(v83) = sub_20DD64E64();
          v86 = *v167;
          (*v167)(v84, v85);
          if (v83)
          {
            break;
          }

          v79 = (v79 + 1) & v80;
          v55 = v173;
          if (((*(v171 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v87 = v173[95];
        v88 = v173[94];
        v89 = v173[91];
        v90 = v173[90];
        v91 = v173[87];

        v86(v90, v91);
        v92 = *v141;
        (*v141)(v88, v87, v89);
        v93 = v143;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_20DA4B10C(0, *(v143 + 16) + 1, 1);
          v93 = v143;
        }

        v60 = v152;
        v56 = v175;
        v64 = v149;
        v95 = *(v93 + 16);
        v94 = *(v93 + 24);
        if (v95 >= v94 >> 1)
        {
          sub_20DA4B10C(v94 > 1, v95 + 1, 1);
          v93 = v143;
        }

        v96 = v173[94];
        v97 = v173[91];
        *(v93 + 16) = v95 + 1;
        v55 = v173;
        v143 = v93;
        v92(v93 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + v95 * v144, v96, v97);
      }

      while (v63);
    }

LABEL_24:
    while (1)
    {
      v69 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        goto LABEL_52;
      }

      if (v69 >= v64)
      {

        v116 = v143;
        goto LABEL_42;
      }

      v63 = *(v60 + 8 * v69);
      ++v58;
      if (v63)
      {
        v58 = v69;
        goto LABEL_28;
      }
    }
  }

  v98 = v173[109];
  v99 = v173[106];
  v100 = v173[105];
  v101 = v173[103];
  (*v162)(v98, v173[104], v100);
  v102 = *v159;
  (*v159)(v101, v98, v100);
  v38(v101, 0, 1, v100);
  v103 = sub_20DD642F4();
  v105 = v104;
  sub_20D9D76EC(v101, &qword_27C845330, &qword_20DD96E98);
  v173[61] = MEMORY[0x277D837D0];
  v173[58] = v103;
  v173[59] = v105;
  sub_20D9D77C8(v173 + 29, v173 + 31);
  v106 = MEMORY[0x277D84F98];
  v107 = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0070(v173 + 31, @"title", v107);
  v108 = v106;
  v102(v101, v98, v100);
  v38(v101, 0, 1, v100);
  v109 = sub_20DD64314();
  v111 = v110;
  sub_20D9D76EC(v101, &qword_27C845330, &qword_20DD96E98);
  v173[69] = MEMORY[0x277D837D0];
  v173[66] = v109;
  v173[67] = v111;
  sub_20D9D77C8(v173 + 33, v173 + 35);
  v112 = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0070(v173 + 35, @"description", v112);
  v102(v101, v98, v100);
  v38(v101, 0, 1, v100);
  LOBYTE(v109) = sub_20DD64304();
  sub_20D9D76EC(v101, &qword_27C845330, &qword_20DD96E98);
  v173[77] = MEMORY[0x277D839B0];
  *(v173 + 592) = v109 & 1;
  sub_20D9D77C8(v173 + 37, v173 + 39);
  v113 = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0070(v173 + 39, @"hidden", v113);
  v56 = v108;
  v114 = sub_20DD642E4();
  v115 = swift_task_alloc();
  *(v115 + 16) = v98;
  v116 = sub_20DA9F0A4(sub_20DAA2A90, v115, v114);

  v55 = v173;
  (*v156)(v98, v100);
LABEL_42:
  v55[123] = v116;
  v55[122] = v56;
  v55[85] = MEMORY[0x277D84FA0];
  v117 = *(v116 + 16);
  v55[124] = v117;
  if (v117)
  {
    v118 = v55[92];
    v119 = *(v118 + 16);
    v118 += 16;
    v120 = *(v118 + 64);
    *(v55 + 260) = v120;
    v55[125] = *(v118 + 56);
    v55[126] = v119;
    v55[127] = 0;
    v119(v55[93], v116 + ((v120 + 32) & ~v120), v55[91]);
    v121 = *(MEMORY[0x277D163E8] + 4);
    v122 = swift_task_alloc();
    v55[128] = v122;
    *v122 = v55;
    v122[1] = sub_20DAA0E04;
    v123 = v55[93];

    return MEMORY[0x2821700F0]();
  }

  v124._rawValue = v55[122];
  v125 = v55[113];
  v126 = v55;
  v127 = v55[112];
  v128 = v126[111];
  v129 = v126[110];
  v130 = v126[109];
  v146 = v126[108];
  v147 = v126[107];
  v150 = v126[104];
  v153 = v126[103];
  v155 = v126[102];
  v158 = v126[99];
  v161 = v126[98];
  v163 = v126[95];
  v165 = v126[94];
  v168 = v126[93];
  v172 = v126[90];
  v174 = v126[89];
  v131 = v126[85];
  v126[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C845338, &qword_20DD96EA0);
  v126[26] = v131;
  sub_20D9D77C8(v126 + 13, v126 + 15);
  v132 = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0070(v126 + 15, @"representedHomeKitObjects", v132);
  v133 = [objc_allocWithZone(HFImageIconDescriptor) initWithSystemImageNamed_];
  v126[37] = sub_20D9D7510(0, &unk_27C843D70, off_277DEFBA8);
  v126[34] = v133;
  sub_20D9D77C8(v126 + 17, v126 + 19);
  v134 = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0070(v126 + 19, @"icon", v134);
  v126[45] = MEMORY[0x277D839B0];
  *(v126 + 336) = 1;
  sub_20D9D77C8(v126 + 21, v126 + 23);
  v135 = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0070(v126 + 23, @"dependentOnMatterSnapshot", v135);
  v136 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v126[53] = sub_20D9D7510(0, &qword_27C8433B0, 0x277CCABB0);
  v126[50] = v136;
  sub_20D9D77C8(v126 + 25, v126 + 27);
  v137 = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0070(v126 + 27, @"state", v137);
  sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
  v138 = HFItemUpdateOutcome.init(results:)(v124);

  (*(v128 + 8))(v127, v129);

  v139 = v126[1];

  return v139(v138);
}

uint64_t sub_20DAA0E04(uint64_t a1)
{
  v2 = *(*v1 + 1024);
  v3 = *(*v1 + 744);
  v4 = *(*v1 + 736);
  v5 = *(*v1 + 728);
  v7 = *v1;
  *(*v1 + 1032) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_20DAA0F64, 0, 0);
}

uint64_t sub_20DAA0F64()
{
  v41 = v0;
  v1 = *(v0 + 1032);
  if (v1)
  {
    sub_20D9E3550(&v40, v1);
  }

  v2 = *(v0 + 1016) + 1;
  if (v2 == *(v0 + 992))
  {
    v3 = *(v0 + 984);

    v4 = *(v0 + 976);
    v5 = *(v0 + 904);
    v6 = *(v0 + 896);
    v7 = *(v0 + 888);
    v8 = *(v0 + 880);
    v9 = *(v0 + 872);
    v28 = *(v0 + 864);
    v29 = *(v0 + 856);
    v30 = *(v0 + 832);
    v31 = *(v0 + 824);
    v32 = *(v0 + 816);
    v33 = *(v0 + 792);
    v34 = *(v0 + 784);
    v35 = *(v0 + 760);
    v36 = *(v0 + 752);
    v37 = *(v0 + 744);
    v38 = *(v0 + 720);
    v39 = *(v0 + 712);
    v10 = *(v0 + 680);
    *(v0 + 232) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C845338, &qword_20DD96EA0);
    *(v0 + 208) = v10;
    sub_20D9D77C8((v0 + 208), (v0 + 240));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v4;
    sub_20D9D0070((v0 + 240), @"representedHomeKitObjects", isUniquelyReferenced_nonNull_native);
    v12 = v40;
    v13 = [objc_allocWithZone(HFImageIconDescriptor) initWithSystemImageNamed_];
    *(v0 + 296) = sub_20D9D7510(0, &unk_27C843D70, off_277DEFBA8);
    *(v0 + 272) = v13;
    sub_20D9D77C8((v0 + 272), (v0 + 304));
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v40 = v12;
    sub_20D9D0070((v0 + 304), @"icon", v14);
    v15 = v40;
    *(v0 + 360) = MEMORY[0x277D839B0];
    *(v0 + 336) = 1;
    sub_20D9D77C8((v0 + 336), (v0 + 368));
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v40 = v15;
    sub_20D9D0070((v0 + 368), @"dependentOnMatterSnapshot", v16);
    v17 = v40;
    v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(v0 + 424) = sub_20D9D7510(0, &qword_27C8433B0, 0x277CCABB0);
    *(v0 + 400) = v18;
    sub_20D9D77C8((v0 + 400), (v0 + 432));
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v40 = v17;
    sub_20D9D0070((v0 + 432), @"state", v19);
    v20._rawValue = v40;
    sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
    v21 = HFItemUpdateOutcome.init(results:)(v20);

    (*(v7 + 8))(v6, v8);

    v22 = *(v0 + 8);

    return v22(v21);
  }

  else
  {
    *(v0 + 1016) = v2;
    v24 = *(v0 + 736) + 16;
    (*(v0 + 1008))(*(v0 + 744), *(v0 + 984) + ((*(v0 + 1040) + 32) & ~*(v0 + 1040)) + *(v0 + 1000) * v2, *(v0 + 728));
    v25 = *(MEMORY[0x277D163E8] + 4);
    v26 = swift_task_alloc();
    *(v0 + 1024) = v26;
    *v26 = v0;
    v26[1] = sub_20DAA0E04;
    v27 = *(v0 + 744);

    return MEMORY[0x2821700F0]();
  }
}

uint64_t sub_20DAA13A0(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v21 = sub_20DD63744();
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v21);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = sub_20DD641A4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20DD64214();
  (*(v10 + 104))(v13, *MEMORY[0x277D15EE8], v9);
  v15 = sub_20D9EFDCC(v13, v14);

  (*(v10 + 8))(v13, v9);
  if (v15)
  {
    sub_20DD64264();
    sub_20DD63C94();
    v16 = sub_20DD63704();
    v17 = *(v2 + 8);
    v18 = v21;
    v17(v6, v21);
    v17(v8, v18);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

id HFVacuumStatusItem.init(home:room:valueSource:)(void *a1, void *a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHome:a1 room:a2 valueSource:a3];

  swift_unknownObjectRelease();
  return v5;
}

{
  v7.super_class = HFVacuumStatusItem;
  v5 = objc_msgSendSuper2(&v7, sel_initWithHome_room_valueSource_, a1, a2, a3);

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_20DAA1774(uint64_t a1)
{
  v2 = sub_20DD63CA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  v10 = *(a1 + 16);
  v11 = sub_20DAA2AB0(&qword_27C845340, MEMORY[0x277D15480]);
  result = MEMORY[0x20F326190](v10, v2, v11);
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 16;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v9, *(v24 + 56) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      sub_20DAA1988(v7, v9);
      result = (*(v3 + 8))(v7, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20DAA1988(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20DD63CA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_20DAA2AB0(&qword_27C845340, MEMORY[0x277D15480]);
  v36 = a2;
  v13 = sub_20DD64E24();
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
      sub_20DAA2AB0(&qword_27C845348, MEMORY[0x277D15480]);
      v23 = sub_20DD64E64();
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
    sub_20DAA1C68(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_20DAA1C68(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_20DD63CA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v12 <= v11)
  {
    v13 = v11 + 1;
    if (a3)
    {
      sub_20DAA2454(v13);
    }

    else
    {
      sub_20DAA2138(v13);
    }

    v14 = *v3;
    v15 = *(*v3 + 40);
    sub_20DAA2AB0(&qword_27C845340, MEMORY[0x277D15480]);
    v16 = sub_20DD64E24();
    v17 = v14 + 56;
    v33 = v14;
    v18 = -1 << *(v14 + 32);
    a2 = v16 & ~v18;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v19 = ~v18;
      v22 = *(v7 + 16);
      v21 = v7 + 16;
      v20 = v22;
      v23 = *(v21 + 56);
      do
      {
        v20(v10, *(v33 + 48) + v23 * a2, v6);
        sub_20DAA2AB0(&qword_27C845348, MEMORY[0x277D15480]);
        v24 = sub_20DD64E64();
        (*(v21 - 8))(v10, v6);
        if (v24)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v19;
      }

      while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_20DAA1F00();
  }

  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_20DD659D4();
  __break(1u);
  return result;
}

void *sub_20DAA1F00()
{
  v1 = v0;
  v2 = sub_20DD63CA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C845350, &qword_20DD96EA8);
  v7 = *v0;
  v8 = sub_20DD656A4();
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

uint64_t sub_20DAA2138(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20DD63CA4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C845350, &qword_20DD96EA8);
  v10 = sub_20DD656B4();
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
      sub_20DAA2AB0(&qword_27C845340, MEMORY[0x277D15480]);
      result = sub_20DD64E24();
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

uint64_t sub_20DAA2454(uint64_t a1)
{
  v2 = v1;
  v41 = sub_20DD63CA4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C845350, &qword_20DD96EA8);
  result = sub_20DD656B4();
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
      sub_20DAA2AB0(&qword_27C845340, MEMORY[0x277D15480]);
      result = sub_20DD64E24();
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

id _sSo18HFVacuumStatusItemC4HomeE16_subclass_update7optionsSo8NAFutureCySo19HFItemUpdateOutcomeCGSgSDys11AnyHashableVypGSg_tF_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - v2;
  v4 = sub_20DD65114();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  v7 = [objc_allocWithZone(MEMORY[0x277D2C900]) init];
  [v7 setDescriptor_];
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = &unk_20DD96E90;
  v8[5] = v6;
  v8[6] = v7;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_20DD93AA0;
  v9[5] = v8;

  v10 = v7;

  sub_20D9D6B40(0, 0, v3, 0, 0, &unk_20DD95DF0, v9);

  sub_20D9D76EC(v3, &qword_27C8443F0, &qword_20DD93820);
  return v10;
}

uint64_t sub_20DAA29E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20D9D7010;

  return sub_20DA9F464(v2, v3, v4);
}

uint64_t sub_20DAA2AB0(unint64_t *a1, void (*a2)(uint64_t))
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

id HFHomeEnergyManager.__allocating_init(home:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
  type metadata accessor for RealUtilityServices();
  v5 = swift_allocObject();
  v6 = objc_allocWithZone(type metadata accessor for HFHomeEnergyManager());
  v7 = sub_20DAB3898(a1, v4, v5, v6);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id HFHomeEnergyManager.init(home:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
  type metadata accessor for RealUtilityServices();
  v3 = swift_allocObject();
  v4 = objc_allocWithZone(type metadata accessor for HFHomeEnergyManager());
  v5 = sub_20DAB3898(a1, v2, v3, v4);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

id HFHomeEnergyManager.__allocating_init(home:geocoder:utilityService:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = a2[3];
  v8 = a2[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = a3[3];
  v11 = a3[4];
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a3, v10);
  v13 = sub_20DAB3BCC(a1, v9, v12, v3, v7, v10, v8, v11);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v13;
}

id HFHomeEnergyManager.init(home:geocoder:utilityService:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v9 = a2[3];
  v8 = a2[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = a3[3];
  v16 = a3[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a3, v15);
  v18 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = sub_20DAB3A08(a1, v13, v20, v4, v9, v15, v8, v16);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v22;
}

uint64_t sub_20DAA2FD4()
{
  v1 = sub_20DD64C44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D9FF4D0(v0 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_utilityService, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FC0, &qword_20DD945E8);
  type metadata accessor for RealUtilityServices();
  if (swift_dynamicCast())
  {

    sub_20DAB140C();
  }

  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v6 = qword_280E03EB0;
  sub_20DD64C54();
  v7 = v0;
  v8 = sub_20DD64C24();
  v9 = sub_20DD65384();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v12 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_isGridForecastSupported;
    swift_beginAccess();
    v17[15] = *(v7 + v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8453C0, &qword_20DD97158);
    v13 = sub_20DD64ED4();
    v15 = sub_20D9E0B38(v13, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_20D9BF000, v8, v9, "HFHomeEnergyManager-->didSet: isGridForecastSupported: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F327D10](v11, -1, -1);
    MEMORY[0x20F327D10](v10, -1, -1);
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_20DAA3258()
{
  v1 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_isGridForecastSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20DAA329C(char a1)
{
  v3 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_isGridForecastSupported;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_20DAA2FD4();
}

uint64_t (*sub_20DAA32F0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20DAA3354;
}

uint64_t sub_20DAA3354(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_20DAA2FD4();
  }

  return result;
}

void *sub_20DAA33D4()
{
  v1 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_temporaryLocation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_20DAA3480(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_temporaryLocation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_20DAA34D8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_temporaryLocation;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_20DAA35CC()
{
  if (![objc_opt_self() isInternalInstall] || (v1 = objc_msgSend(objc_opt_self(), sel_standardUserDefaults), v2 = objc_msgSend(v1, sel_BOOLForKey_, @"ForceShowHomeEnergyFeatures"), v1, (v2 & 1) == 0))
  {
    v4 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_isGridForecastSupported;
    swift_beginAccess();
    v5 = *(v0 + v4);
    if (v5 == 2)
    {
      if ((sub_20DAA3D58() & 1) == 0)
      {
LABEL_6:
        v3 = 0;
        return v3 & 1;
      }
    }

    else if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    v3 = sub_20DAA36DC();
    return v3 & 1;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_20DAA36DC()
{
  v1 = sub_20DD63744();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = [v6 dictionaryForKey_];

  if (!v7)
  {
    return 1;
  }

  v8 = sub_20DD64DC4();

  v9 = [*(v0 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home) uniqueIdentifier];
  sub_20DD63714();

  v10 = sub_20DD636E4();
  v12 = v11;
  (*(v2 + 8))(v5, v1);
  if (!*(v8 + 16))
  {

    goto LABEL_7;
  }

  v13 = sub_20D9CB170(v10, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_7:

    return 1;
  }

  sub_20D9D7174(*(v8 + 56) + 32 * v13, v18);

  if (swift_dynamicCast())
  {
    return v17[15];
  }

  return 1;
}

uint64_t sub_20DAA3940(char a1)
{
  v2 = v1;
  v4 = sub_20DD63744();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = [v9 standardUserDefaults];
  v11 = [v10 dictionaryForKey_];

  if (v11)
  {
    v12 = sub_20DD64DC4();
  }

  else
  {
    v12 = sub_20D9D4C24(MEMORY[0x277D84F90]);
  }

  v13 = [*(v2 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home) uniqueIdentifier];
  sub_20DD63714();

  v14 = sub_20DD636E4();
  v22[0] = v2;
  v16 = v15;
  (*(v5 + 8))(v8, v4);
  v25 = MEMORY[0x277D839B0];
  LOBYTE(v24) = a1 & 1;
  sub_20D9C29D8(&v24, v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22[1] = v12;
  sub_20D9D01B0(v23, v14, v16, isUniquelyReferenced_nonNull_native);

  v18 = [v9 standardUserDefaults];
  v19 = sub_20DD64DB4();

  [v18 setObject:v19 forKey:@"showHomeEnergy"];

  v20 = [objc_opt_self() defaultCenter];
  if (qword_280E020C8 != -1)
  {
    swift_once();
  }

  [v20 postNotificationName:qword_280E020D0 object:0];

  return sub_20DAB140C();
}

uint64_t (*sub_20DAA3C24(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_20DAA36DC() & 1;
  return sub_20DAA3C70;
}

uint64_t sub_20DAA3D04()
{
  v1 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_isGridForecastSupported;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_20DAA3D58();
  }

  return v2 & 1;
}

uint64_t sub_20DAA3D58()
{
  v1 = sub_20DD63744();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = [v6 dictionaryForKey_];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_20DD64DC4();

  v9 = [*(v0 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home) uniqueIdentifier];
  sub_20DD63714();

  v10 = sub_20DD636E4();
  v12 = v11;
  (*(v2 + 8))(v5, v1);
  if (!*(v8 + 16))
  {

    goto LABEL_7;
  }

  v13 = sub_20D9CB170(v10, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  sub_20D9D7174(*(v8 + 56) + 32 * v13, v18);

  if (swift_dynamicCast())
  {
    return v17[15];
  }

  return 0;
}

void sub_20DAA3F68(char a1)
{
  v3 = sub_20DD63744();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = [v8 standardUserDefaults];
  v10 = [v9 dictionaryForKey_];

  if (v10)
  {
    v11 = sub_20DD64DC4();
  }

  else
  {
    v11 = sub_20D9D4C24(MEMORY[0x277D84F90]);
  }

  v12 = [*(v1 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home) uniqueIdentifier];
  sub_20DD63714();

  v13 = sub_20DD636E4();
  v15 = v14;
  (*(v4 + 8))(v7, v3);
  v22 = MEMORY[0x277D839B0];
  LOBYTE(v21) = a1 & 1;
  sub_20D9C29D8(&v21, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19[1] = v11;
  sub_20D9D01B0(v20, v13, v15, isUniquelyReferenced_nonNull_native);

  v17 = [v8 standardUserDefaults];
  v18 = sub_20DD64DB4();

  [v17 setObject:v18 forKey:@"homeEnergyAvailableCache"];
}

void (*sub_20DAA41D4(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_20DAA3D58() & 1;
  return sub_20DAA4220;
}

uint64_t sub_20DAA4248()
{
  v1[5] = v0;
  v2 = sub_20DD64C44();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DAA4314, 0, 0);
}

uint64_t sub_20DAA4314()
{
  v17 = v0;
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = qword_280E03EB0;
  v0[10] = qword_280E03EB0;
  v3 = v2;
  sub_20DD64C54();
  v4 = sub_20DD64C24();
  v5 = sub_20DD65384();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[7];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_20D9E0B38(0xD000000000000023, 0x800000020DD9AD90, &v16);
    _os_log_impl(&dword_20D9BF000, v4, v5, "%s async call started", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F327D10](v11, -1, -1);
    MEMORY[0x20F327D10](v10, -1, -1);
  }

  v12 = *(v9 + 8);
  v12(v7, v8);
  v0[11] = v12;
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_20DAA44F4;
  v14 = v0[5];

  return sub_20DAA5BA0();
}

uint64_t sub_20DAA44F4()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 104) = v4;
  *v4 = v3;
  v4[1] = sub_20DAA4634;
  v5 = *(v1 + 40);

  return sub_20DAAE8FC();
}

uint64_t sub_20DAA4634(char a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_20DAA4734, 0, 0);
}

uint64_t sub_20DAA4734()
{
  v25 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_isGridForecastSupported;
  swift_beginAccess();
  *(v4 + v5) = v1;
  sub_20DAA2FD4();
  sub_20DAA3F68(v1);
  sub_20DD64C54();
  v6 = sub_20DD64C24();
  v7 = sub_20DD65384();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 112);
    v9 = *(v0 + 88);
    v11 = *(v0 + 56);
    v10 = *(v0 + 64);
    v12 = *(v0 + 48);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_20D9E0B38(0xD000000000000023, 0x800000020DD9AD90, &v24);
    *(v13 + 12) = 1024;
    *(v13 + 14) = v8;
    _os_log_impl(&dword_20D9BF000, v6, v7, "%s async call finished: %{BOOL}d", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x20F327D10](v14, -1, -1);
    MEMORY[0x20F327D10](v13, -1, -1);

    v9(v10, v12);
  }

  else
  {
    v15 = *(v0 + 88);
    v17 = *(v0 + 56);
    v16 = *(v0 + 64);
    v18 = *(v0 + 48);

    v15(v16, v18);
  }

  v20 = *(v0 + 64);
  v19 = *(v0 + 72);

  v21 = *(v0 + 8);
  v22 = *(v0 + 112);

  return v21(v22);
}

uint64_t sub_20DAA4AA8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20DAA4B50;

  return sub_20DAA4248();
}

uint64_t sub_20DAA4B50(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_20DD63494();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

void sub_20DAA4D74(char a1)
{
  v3 = sub_20DD63744();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = objc_opt_self();
    v9 = [v8 standardUserDefaults];
    v10 = *(v1 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_homeElectricitySupportedCache);
    v11 = *(v1 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_homeElectricitySupportedCache + 8);
    v12 = sub_20DD64E74();
    v13 = [v9 dictionaryForKey_];

    if (v13)
    {
      v14 = sub_20DD64DC4();
    }

    else
    {
      v14 = sub_20D9D4C24(MEMORY[0x277D84F90]);
    }

    v15 = [*(v1 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home) uniqueIdentifier];
    sub_20DD63714();

    v16 = sub_20DD636E4();
    v18 = v17;
    (*(v4 + 8))(v7, v3);
    v26 = MEMORY[0x277D839B0];
    LOBYTE(v25) = 1;
    sub_20D9C29D8(&v25, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23[1] = v14;
    sub_20D9D01B0(v24, v16, v18, isUniquelyReferenced_nonNull_native);

    v20 = [v8 standardUserDefaults];
    v21 = sub_20DD64DB4();

    v22 = sub_20DD64E74();
    [v20 setObject:v21 forKey:v22];
  }
}

void (*sub_20DAA5014(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_20DAA4D14() & 1;
  return sub_20DAA5060;
}

uint64_t sub_20DAA50D0()
{
  v1 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedHasEnergySite;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20DAA51A8(void *a1)
{
  v3 = sub_20DD63744();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = [objc_opt_self() standardUserDefaults];
  v9 = (v1 + *a1);
  v10 = *v9;
  v11 = v9[1];
  v12 = sub_20DD64E74();
  v13 = [v8 dictionaryForKey_];

  if (!v13)
  {
    return 0;
  }

  v14 = sub_20DD64DC4();

  v15 = [*(v1 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home) uniqueIdentifier];
  sub_20DD63714();

  v16 = sub_20DD636E4();
  v18 = v17;
  (*(v4 + 8))(v7, v3);
  if (!*(v14 + 16))
  {

    goto LABEL_7;
  }

  v19 = sub_20D9CB170(v16, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  sub_20D9D7174(*(v14 + 56) + 32 * v19, v24);

  if (swift_dynamicCast())
  {
    return v23[15];
  }

  return 0;
}

uint64_t sub_20DAA53D0(char a1)
{
  *(v2 + 80) = v1;
  *(v2 + 120) = a1;
  v3 = sub_20DD63744();
  *(v2 + 88) = v3;
  v4 = *(v3 - 8);
  *(v2 + 96) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  sub_20DD650F4();
  *(v2 + 112) = sub_20DD650E4();
  v7 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DAA54C8, v7, v6);
}

uint64_t sub_20DAA54C8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 120);

  if (v3 != (sub_20DAA519C() & 1))
  {
    v4 = *(v0 + 80);
    v5 = objc_opt_self();
    v6 = [v5 standardUserDefaults];
    v7 = *(v4 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasUtilitySubscriptionCache + 8);
    v27 = *(v4 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasUtilitySubscriptionCache);
    v8 = sub_20DD64E74();
    v9 = [v6 dictionaryForKey_];

    if (v9)
    {
      sub_20DD64DC4();
    }

    else
    {
      sub_20D9D4C24(MEMORY[0x277D84F90]);
    }

    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    v12 = *(v0 + 88);
    v13 = *(v0 + 120);
    v14 = [*(*(v0 + 80) + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home) uniqueIdentifier];
    sub_20DD63714();

    v15 = sub_20DD636E4();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    *(v0 + 40) = MEMORY[0x277D839B0];
    *(v0 + 16) = v13;
    sub_20D9C29D8((v0 + 16), (v0 + 48));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D01B0((v0 + 48), v15, v17, isUniquelyReferenced_nonNull_native);

    v19 = [v5 standardUserDefaults];
    v20 = sub_20DD64DB4();

    v21 = sub_20DD64E74();
    [v19 setObject:v20 forKey:v21];

    v22 = [objc_opt_self() defaultCenter];
    if (qword_280E020B0 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 80);
    [v22 postNotificationName:qword_280E020B8 object:0];

    sub_20DAB140C();
  }

  v24 = *(v0 + 104);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_20DAA580C()
{
  if ([objc_opt_self() isInternalInstall])
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v2 = [v1 BOOLForKey_];

    if (v2)
    {
      goto LABEL_8;
    }
  }

  v3 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_isGridForecastSupported;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 == 2)
  {
    if ((sub_20DAA3D58() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v4 & 1) == 0)
  {
LABEL_9:
    v5 = sub_20DAA519C();
    return v5 & 1;
  }

  if ((sub_20DAA36DC() & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  v5 = 1;
  return v5 & 1;
}

uint64_t sub_20DAA5934()
{
  v1 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasElectricityRatesEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20DAA59DC()
{
  v1 = sub_20DD64C44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v6 = qword_280E03EB0;
  sub_20DD64C54();
  v7 = v0;
  v8 = sub_20DD64C24();
  v9 = sub_20DD65384();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    v11 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasElectricityRatesEnabled;
    swift_beginAccess();
    *(v10 + 4) = *(&v7->isa + v11);

    _os_log_impl(&dword_20D9BF000, v8, v9, "hasElectricityRatesEnabled: %{BOOL}d", v10, 8u);
    MEMORY[0x20F327D10](v10, -1, -1);
  }

  else
  {

    v8 = v7;
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_20DAA5BC0()
{
  v1 = v0[8];
  if (sub_20DAA4D14())
  {
    sub_20D9FF4D0(v0[8] + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_utilityService, (v0 + 2));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FC0, &qword_20DD945E8);
    type metadata accessor for RealUtilityServices();
    if (swift_dynamicCast())
    {
      v2 = v0[7];

      v3 = swift_task_alloc();
      v0[10] = v3;
      *v3 = v0;
      v3[1] = sub_20DAA5F84;
      v4 = v0[8];

      return sub_20DAA6078();
    }

    else
    {
      v8 = v0[1];

      return v8();
    }
  }

  else
  {
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_20DAA5D50;
    v7 = v0[8];

    return sub_20DAA9C7C();
  }
}

uint64_t sub_20DAA5D50(char a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_20DAA5E50, 0, 0);
}

uint64_t sub_20DAA5E50()
{
  if (*(v0 + 88) == 1 && (v1 = *(v0 + 64), sub_20DAA4D74(1), sub_20D9FF4D0(*(v0 + 64) + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_utilityService, v0 + 16), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FC0, &qword_20DD945E8), type metadata accessor for RealUtilityServices(), swift_dynamicCast()))
  {
    v2 = *(v0 + 56);

    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = sub_20DAA5F84;
    v4 = *(v0 + 64);

    return sub_20DAA6078();
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_20DAA5F84()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20DAA6078()
{
  v1[25] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844500, &qword_20DD97000) - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v3 = sub_20DD64C44();
  v1[28] = v3;
  v4 = *(v3 - 8);
  v1[29] = v4;
  v5 = *(v4 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v6 = sub_20DD63744();
  v1[38] = v6;
  v7 = *(v6 - 8);
  v1[39] = v7;
  v8 = *(v7 + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DAA6238, 0, 0);
}

uint64_t sub_20DAA6238()
{
  v1 = v0[41];
  v2 = v0[38];
  v3 = v0[39];
  v4 = *(v0[25] + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home);
  v0[42] = v4;
  v5 = [v4 name];
  v6 = sub_20DD64EB4();
  v8 = v7;

  v0[43] = v6;
  v0[44] = v8;
  v9 = [v4 uniqueIdentifier];
  sub_20DD63714();

  v10 = sub_20DD636E4();
  v12 = v11;
  v0[45] = v10;
  v0[46] = v11;
  v13 = *(v3 + 8);
  v0[47] = v13;
  v0[48] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v1, v2);
  v0[49] = sub_20DD64AE4();
  v14 = *(MEMORY[0x277D07650] + 4);

  v15 = swift_task_alloc();
  v0[50] = v15;
  *v15 = v0;
  v15[1] = sub_20DAA63AC;

  return MEMORY[0x28215C940](v10, v12);
}

uint64_t sub_20DAA63AC(uint64_t a1)
{
  v2 = *(*v1 + 400);
  v4 = *v1;
  *(*v1 + 408) = a1;

  return MEMORY[0x2822009F8](sub_20DAA64AC, 0, 0);
}

uint64_t sub_20DAA64AC()
{
  v57 = v0;
  if (*(v0 + 408))
  {
    v1 = *(v0 + 368);

    *(v0 + 456) = *(v0 + 408);
    v2 = *(v0 + 200);
    v3 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedHasEnergySite;
    swift_beginAccess();
    *(v2 + v3) = 1;
    LOBYTE(v3) = sub_20DD64AA4();
    v4 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasElectricityRatesEnabled;
    swift_beginAccess();
    *(v2 + v4) = v3 & 1;
    if (qword_280E01ED8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 280);
    v6 = *(v0 + 200);
    v7 = qword_280E03EB0;
    *(v0 + 464) = qword_280E03EB0;
    v8 = v7;
    sub_20DD64C54();
    v9 = v6;
    v10 = sub_20DD64C24();
    v11 = sub_20DD65384();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 200);
    if (v12)
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = *(v2 + v4);

      _os_log_impl(&dword_20D9BF000, v10, v11, "hasElectricityRatesEnabled: %{BOOL}d", v14, 8u);
      MEMORY[0x20F327D10](v14, -1, -1);
    }

    else
    {
    }

    v22 = *(v0 + 280);
    v23 = *(v0 + 224);
    v24 = *(v0 + 232);
    v25 = *(v24 + 8);
    *(v0 + 472) = v25;
    *(v0 + 480) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v25(v22, v23);
    sub_20DD64A94();
    v27 = v26;
    if (v26)
    {
    }

    v28 = v27 != 0;
    v29 = swift_task_alloc();
    *(v0 + 488) = v29;
    *v29 = v0;
    v29[1] = sub_20DAA7224;
    v30 = *(v0 + 200);

    return sub_20DAA53D0(v28);
  }

  else if ([*(v0 + 336) hf_currentUserIsOwner])
  {
    v15 = *(MEMORY[0x277D075A8] + 4);
    v16 = swift_task_alloc();
    *(v0 + 416) = v16;
    *v16 = v0;
    v16[1] = sub_20DAA69CC;
    v17 = *(v0 + 392);
    v18 = *(v0 + 360);
    v19 = *(v0 + 368);
    v21 = *(v0 + 344);
    v20 = *(v0 + 352);

    return MEMORY[0x28215C858](v21, v20, v18, v19);
  }

  else
  {
    v31 = *(v0 + 392);
    v32 = *(v0 + 360);
    v33 = *(v0 + 368);
    v34 = *(v0 + 352);

    v35 = sub_20DD64A14();
    v37 = v36;

    *(v0 + 432) = v37;
    if (qword_280E01ED8 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 288);
    v39 = qword_280E03EB0;
    sub_20DD64C54();
    v40 = sub_20DD64C24();
    v41 = sub_20DD65344();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 288);
    v44 = *(v0 + 224);
    v45 = *(v0 + 232);
    if (v42)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v56 = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_20D9E0B38(0xD000000000000011, 0x800000020DD9B490, &v56);
      _os_log_impl(&dword_20D9BF000, v40, v41, "%s Attempting to request to be added to EnergyKit share if needed", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x20F327D10](v47, -1, -1);
      MEMORY[0x20F327D10](v46, -1, -1);
    }

    (*(v45 + 8))(v43, v44);
    v48 = *(v0 + 336);
    v49 = *(v0 + 320);
    sub_20DD649F4();
    *(v0 + 440) = sub_20DD649E4();
    v50 = [v48 uniqueIdentifier];
    sub_20DD63714();

    v51 = *(MEMORY[0x277D07590] + 4);
    v55 = (*MEMORY[0x277D07590] + MEMORY[0x277D07590]);
    v52 = swift_task_alloc();
    *(v0 + 448) = v52;
    *v52 = v0;
    v52[1] = sub_20DAA6F90;
    v53 = *(v0 + 320);

    return v55(v53, v35, v37);
  }
}

uint64_t sub_20DAA69CC(uint64_t a1)
{
  v2 = *(*v1 + 416);
  v3 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 424) = a1;

  return MEMORY[0x2822009F8](sub_20DAA6AEC, 0, 0);
}

uint64_t sub_20DAA6AEC()
{
  v57 = v0;
  v1 = v0[53];
  if (v1)
  {
    v0[57] = v1;
    v2 = v0[25];
    v3 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedHasEnergySite;
    swift_beginAccess();
    *(v2 + v3) = 1;
    LOBYTE(v3) = sub_20DD64AA4();
    v4 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasElectricityRatesEnabled;
    swift_beginAccess();
    *(v2 + v4) = v3 & 1;
    if (qword_280E01ED8 != -1)
    {
      swift_once();
    }

    v5 = v0[35];
    v6 = v0[25];
    v7 = qword_280E03EB0;
    v0[58] = qword_280E03EB0;
    v8 = v7;
    sub_20DD64C54();
    v9 = v6;
    v10 = sub_20DD64C24();
    v11 = sub_20DD65384();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[25];
    if (v12)
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = *(v2 + v4);

      _os_log_impl(&dword_20D9BF000, v10, v11, "hasElectricityRatesEnabled: %{BOOL}d", v14, 8u);
      MEMORY[0x20F327D10](v14, -1, -1);
    }

    else
    {
    }

    v29 = v0[35];
    v30 = v0[28];
    v31 = v0[29];
    v32 = *(v31 + 8);
    v0[59] = v32;
    v0[60] = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32(v29, v30);
    sub_20DD64A94();
    v34 = v33;
    if (v33)
    {
    }

    v35 = v34 != 0;
    v36 = swift_task_alloc();
    v0[61] = v36;
    *v36 = v0;
    v36[1] = sub_20DAA7224;
    v37 = v0[25];

    return sub_20DAA53D0(v35);
  }

  else
  {
    if (qword_280E01ED8 != -1)
    {
      swift_once();
    }

    v15 = v0[44];
    v16 = v0[37];
    v17 = qword_280E03EB0;
    sub_20DD64C54();

    v18 = sub_20DD64C24();
    v19 = sub_20DD65364();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[44];
    if (v20)
    {
      v22 = v0[43];
      v23 = v0[37];
      v24 = v0[28];
      v25 = v0[29];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v56 = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_20D9E0B38(0xD000000000000011, 0x800000020DD9B490, &v56);
      *(v26 + 12) = 2080;
      v28 = sub_20D9E0B38(v22, v21, &v56);

      *(v26 + 14) = v28;
      _os_log_impl(&dword_20D9BF000, v18, v19, "%s Failed to create site for home %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v27, -1, -1);
      MEMORY[0x20F327D10](v26, -1, -1);

      (*(v25 + 8))(v23, v24);
    }

    else
    {
      v39 = v0[37];
      v40 = v0[28];
      v41 = v0[29];
      v42 = v0[44];

      (*(v41 + 8))(v39, v40);
    }

    v44 = v0[40];
    v43 = v0[41];
    v46 = v0[36];
    v45 = v0[37];
    v48 = v0[34];
    v47 = v0[35];
    v50 = v0[32];
    v49 = v0[33];
    v52 = v0[30];
    v51 = v0[31];
    v54 = v0[27];
    v55 = v0[26];

    v53 = v0[1];

    return v53();
  }
}

uint64_t sub_20DAA6F90()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 448);
  v5 = *v1;

  v6 = v2[55];
  v7 = v2[54];
  v8 = v2[48];
  v9 = v2[47];
  v10 = v2[40];
  v11 = v2[38];
  if (v0)
  {

    v9(v10, v11);

    return MEMORY[0x2822009F8](sub_20DAA8288, 0, 0);
  }

  else
  {
    v9(v2[40], v2[38]);

    v13 = v3[40];
    v12 = v3[41];
    v15 = v3[36];
    v14 = v3[37];
    v17 = v3[34];
    v16 = v3[35];
    v19 = v3[32];
    v18 = v3[33];
    v20 = v3[30];
    v21 = v3[31];
    v23 = v3 + 26;
    v22 = v3[26];
    v26 = v23[1];

    v24 = *(v5 + 8);

    return v24();
  }
}

uint64_t sub_20DAA7224()
{
  v1 = *(*v0 + 488);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DAA7320, 0, 0);
}

uint64_t sub_20DAA7320()
{
  v67 = v0;
  v1 = [*(v0 + 336) hf_currentUserIsOwner];
  v2 = *(v0 + 456);
  v3 = *(v0 + 352);
  if (v1)
  {
    v5 = *(v0 + 336);
    v4 = *(v0 + 344);
    v6 = *(v0 + 352);

    sub_20DD64AB4();
    v7 = [v5 location];
    *(v0 + 496) = v7;
    if (v7)
    {
      v8 = v7;
      v9 = *(v0 + 464);
      v10 = *(v0 + 352);
      v11 = *(v0 + 272);

      v12 = v9;
      sub_20DD64C54();
      v13 = sub_20DD64C24();
      v14 = sub_20DD65354();
      v15 = os_log_type_enabled(v13, v14);
      v17 = *(v0 + 472);
      v16 = *(v0 + 480);
      v18 = *(v0 + 272);
      v19 = *(v0 + 224);
      if (v15)
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v66 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_20D9E0B38(0xD000000000000011, 0x800000020DD9B490, &v66);
        _os_log_impl(&dword_20D9BF000, v13, v14, "%s Updating site's location", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x20F327D10](v21, -1, -1);
        MEMORY[0x20F327D10](v20, -1, -1);
      }

      v17(v18, v19);
      v22 = *(v0 + 456);
      v23 = *(MEMORY[0x277D07640] + 4);
      v63 = (*MEMORY[0x277D07640] + MEMORY[0x277D07640]);
      v24 = swift_task_alloc();
      *(v0 + 504) = v24;
      *v24 = v0;
      v24[1] = sub_20DAA77A4;

      return v63(v8);
    }

    v38 = *(v0 + 456);
    v39 = sub_20DD64AC4();
    if (v39)
    {
      v40 = *(v0 + 464);
      v41 = *(v0 + 352);
      v42 = *(v0 + 248);

      v43 = v40;
      sub_20DD64C54();

      v44 = sub_20DD64C24();
      v45 = sub_20DD65364();

      v46 = os_log_type_enabled(v44, v45);
      v48 = *(v0 + 472);
      v47 = *(v0 + 480);
      v49 = *(v0 + 456);
      v50 = *(v0 + 352);
      if (v46)
      {
        v51 = *(v0 + 344);
        v62 = *(v0 + 224);
        v65 = *(v0 + 248);
        v52 = swift_slowAlloc();
        v53 = v48;
        v54 = swift_slowAlloc();
        v66 = v54;
        *v52 = 136315394;
        *(v52 + 4) = sub_20D9E0B38(0xD000000000000011, 0x800000020DD9B490, &v66);
        *(v52 + 12) = 2080;
        v55 = sub_20D9E0B38(v51, v50, &v66);

        *(v52 + 14) = v55;
        _os_log_impl(&dword_20D9BF000, v44, v45, "%s have site.location BUT home.location is nil for home %s", v52, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F327D10](v54, -1, -1);
        MEMORY[0x20F327D10](v52, -1, -1);

        v53(v65, v62);
      }

      else
      {
        v58 = *(v0 + 248);
        v59 = *(v0 + 224);
        v60 = *(v0 + 352);

        v48(v58, v59);
      }

      goto LABEL_10;
    }

    v56 = *(v0 + 456);
    v57 = *(v0 + 352);
  }

  else
  {
    v26 = *(v0 + 352);
  }

LABEL_10:
  v28 = *(v0 + 320);
  v27 = *(v0 + 328);
  v30 = *(v0 + 288);
  v29 = *(v0 + 296);
  v32 = *(v0 + 272);
  v31 = *(v0 + 280);
  v34 = *(v0 + 256);
  v33 = *(v0 + 264);
  v36 = *(v0 + 240);
  v35 = *(v0 + 248);
  v61 = *(v0 + 216);
  v64 = *(v0 + 208);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_20DAA77A4()
{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_20DAA8378;
  }

  else
  {
    v3 = sub_20DAA78B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DAA78B8()
{
  v17 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 464);
  sub_20DD64C54();
  v3 = sub_20DD64C24();
  v4 = sub_20DD65354();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 472);
  v6 = *(v0 + 480);
  v8 = *(v0 + 264);
  v9 = *(v0 + 224);
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_20D9E0B38(0xD000000000000011, 0x800000020DD9B490, &v16);
    _os_log_impl(&dword_20D9BF000, v3, v4, "%s Updating site's timezone", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F327D10](v11, -1, -1);
    MEMORY[0x20F327D10](v10, -1, -1);
  }

  v7(v8, v9);
  v12 = *(v0 + 496);
  v13 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
  *(v0 + 520) = v13;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 192;
  *(v0 + 24) = sub_20DAA7AFC;
  v14 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8453B0, &qword_20DD97008);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_20DAA8B70;
  *(v0 + 104) = &block_descriptor_18;
  *(v0 + 112) = v14;
  [v13 reverseGeocodeLocation:v12 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_20DAA7AFC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 528) = v2;
  if (v2)
  {
    v3 = sub_20DAA8618;
  }

  else
  {
    v3 = sub_20DAA7C0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DAA7C0C()
{
  v47 = v0;
  v1 = *(v0 + 192);

  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_15:

    goto LABEL_16;
  }

  result = sub_20DD655B4();
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x20F326680](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

  v5 = [v4 timeZone];

  if (v5)
  {
    v6 = *(v0 + 208);
    sub_20DD63824();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = *(v0 + 208);
  v8 = *(v0 + 216);
  v10 = sub_20DD63834();
  v11 = *(v10 - 8);
  (*(v11 + 56))(v9, v7, 1, v10);
  sub_20DAB5454(v9, v8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_20D9D76EC(*(v0 + 216), &qword_27C844500, &qword_20DD97000);
LABEL_16:
    v19 = *(v0 + 256);
    v20 = *(v0 + 464);
    sub_20DD64C54();
    v21 = sub_20DD64C24();
    v22 = sub_20DD65364();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 496);
    v25 = *(v0 + 472);
    v26 = *(v0 + 456);
    v27 = *(v0 + 256);
    v28 = *(v0 + 224);
    if (v23)
    {
      v44 = *(v0 + 480);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v46 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_20D9E0B38(0xD000000000000011, 0x800000020DD9B490, &v46);
      _os_log_impl(&dword_20D9BF000, v21, v22, "%s Unable to get timezone", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x20F327D10](v30, -1, -1);
      MEMORY[0x20F327D10](v29, -1, -1);

      v25(v27, v28);
    }

    else
    {

      v25(v27, v28);
    }

    v32 = *(v0 + 320);
    v31 = *(v0 + 328);
    v34 = *(v0 + 288);
    v33 = *(v0 + 296);
    v36 = *(v0 + 272);
    v35 = *(v0 + 280);
    v38 = *(v0 + 256);
    v37 = *(v0 + 264);
    v40 = *(v0 + 240);
    v39 = *(v0 + 248);
    v42 = *(v0 + 216);
    v45 = *(v0 + 208);

    v41 = *(v0 + 8);

    return v41();
  }

  v12 = *(v0 + 456);
  v13 = *(v0 + 216);
  v14 = sub_20DD63804();
  v16 = v15;
  *(v0 + 536) = v15;
  (*(v11 + 8))(v13, v10);
  v17 = *(MEMORY[0x277D07648] + 4);
  v43 = (*MEMORY[0x277D07648] + MEMORY[0x277D07648]);
  v18 = swift_task_alloc();
  *(v0 + 544) = v18;
  *v18 = v0;
  v18[1] = sub_20DAA8068;

  return v43(v14, v16);
}

uint64_t sub_20DAA8068()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v7 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v4 = sub_20DAA88C8;
  }

  else
  {
    v5 = *(v2 + 536);

    v4 = sub_20DAA8184;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DAA8184()
{
  v1 = *(v0 + 456);

  v3 = *(v0 + 320);
  v2 = *(v0 + 328);
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v9 = *(v0 + 256);
  v8 = *(v0 + 264);
  v11 = *(v0 + 240);
  v10 = *(v0 + 248);
  v14 = *(v0 + 216);
  v15 = *(v0 + 208);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_20DAA8288()
{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v10 = v0[30];
  v9 = v0[31];
  v13 = v0[27];
  v14 = v0[26];

  v11 = v0[1];

  return v11();
}

uint64_t sub_20DAA8378()
{
  v36 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 240);
  v3 = *(v0 + 464);
  sub_20DD64C54();
  v4 = v1;
  v5 = sub_20DD64C24();
  v6 = sub_20DD65364();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 496);
  v9 = *(v0 + 472);
  v10 = *(v0 + 456);
  v11 = *(v0 + 240);
  v12 = *(v0 + 224);
  if (v7)
  {
    v33 = *(v0 + 480);
    v13 = swift_slowAlloc();
    v31 = v11;
    v14 = swift_slowAlloc();
    v30 = v9;
    v15 = swift_slowAlloc();
    v35 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_20D9E0B38(0xD000000000000011, 0x800000020DD9B490, &v35);
    *(v13 + 12) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_20D9BF000, v5, v6, "%s Unable to update location. Error: %@", v13, 0x16u);
    sub_20D9D76EC(v14, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x20F327D10](v15, -1, -1);
    MEMORY[0x20F327D10](v13, -1, -1);

    v30(v31, v12);
  }

  else
  {

    v9(v11, v12);
  }

  v19 = *(v0 + 320);
  v18 = *(v0 + 328);
  v21 = *(v0 + 288);
  v20 = *(v0 + 296);
  v23 = *(v0 + 272);
  v22 = *(v0 + 280);
  v25 = *(v0 + 256);
  v24 = *(v0 + 264);
  v27 = *(v0 + 240);
  v26 = *(v0 + 248);
  v32 = *(v0 + 216);
  v34 = *(v0 + 208);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_20DAA8618()
{
  v38 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  swift_willThrow();

  v3 = *(v0 + 528);
  v4 = *(v0 + 240);
  v5 = *(v0 + 464);
  sub_20DD64C54();
  v6 = v3;
  v7 = sub_20DD64C24();
  v8 = sub_20DD65364();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 496);
  v11 = *(v0 + 472);
  v12 = *(v0 + 456);
  v13 = *(v0 + 240);
  v14 = *(v0 + 224);
  if (v9)
  {
    v35 = *(v0 + 480);
    v15 = swift_slowAlloc();
    v33 = v13;
    v16 = swift_slowAlloc();
    v32 = v11;
    v17 = swift_slowAlloc();
    v37 = v17;
    *v15 = 136315394;
    *(v15 + 4) = sub_20D9E0B38(0xD000000000000011, 0x800000020DD9B490, &v37);
    *(v15 + 12) = 2112;
    v18 = v3;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    *v16 = v19;
    _os_log_impl(&dword_20D9BF000, v7, v8, "%s Unable to update location. Error: %@", v15, 0x16u);
    sub_20D9D76EC(v16, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x20F327D10](v17, -1, -1);
    MEMORY[0x20F327D10](v15, -1, -1);

    v32(v33, v14);
  }

  else
  {

    v11(v13, v14);
  }

  v21 = *(v0 + 320);
  v20 = *(v0 + 328);
  v23 = *(v0 + 288);
  v22 = *(v0 + 296);
  v25 = *(v0 + 272);
  v24 = *(v0 + 280);
  v27 = *(v0 + 256);
  v26 = *(v0 + 264);
  v29 = *(v0 + 240);
  v28 = *(v0 + 248);
  v34 = *(v0 + 216);
  v36 = *(v0 + 208);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_20DAA88C8()
{
  v37 = v0;
  v1 = *(v0 + 536);

  v2 = *(v0 + 552);
  v3 = *(v0 + 240);
  v4 = *(v0 + 464);
  sub_20DD64C54();
  v5 = v2;
  v6 = sub_20DD64C24();
  v7 = sub_20DD65364();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 496);
  v10 = *(v0 + 472);
  v11 = *(v0 + 456);
  v12 = *(v0 + 240);
  v13 = *(v0 + 224);
  if (v8)
  {
    v34 = *(v0 + 480);
    v14 = swift_slowAlloc();
    v32 = v12;
    v15 = swift_slowAlloc();
    v31 = v10;
    v16 = swift_slowAlloc();
    v36 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_20D9E0B38(0xD000000000000011, 0x800000020DD9B490, &v36);
    *(v14 + 12) = 2112;
    v17 = v2;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    *v15 = v18;
    _os_log_impl(&dword_20D9BF000, v6, v7, "%s Unable to update location. Error: %@", v14, 0x16u);
    sub_20D9D76EC(v15, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x20F327D10](v16, -1, -1);
    MEMORY[0x20F327D10](v14, -1, -1);

    v31(v32, v13);
  }

  else
  {

    v10(v12, v13);
  }

  v20 = *(v0 + 320);
  v19 = *(v0 + 328);
  v22 = *(v0 + 288);
  v21 = *(v0 + 296);
  v24 = *(v0 + 272);
  v23 = *(v0 + 280);
  v26 = *(v0 + 256);
  v25 = *(v0 + 264);
  v28 = *(v0 + 240);
  v27 = *(v0 + 248);
  v33 = *(v0 + 216);
  v35 = *(v0 + 208);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_20DAA8B70(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A0, &qword_20DD94E00);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_20D9D7510(0, &qword_27C8453B8, 0x277CBFC40);
    **(*(v4 + 64) + 40) = sub_20DD64FD4();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_20DAA8C60(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 184) = a1;
  v3 = sub_20DD63744();
  *(v2 + 48) = v3;
  v4 = *(v3 - 8);
  *(v2 + 56) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  v6 = sub_20DD64C44();
  *(v2 + 72) = v6;
  v7 = *(v6 - 8);
  *(v2 + 80) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DAA8DB0, 0, 0);
}

uint64_t sub_20DAA8DB0()
{
  v46 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 184);
  v3 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasElectricityRatesEnabled;
  *(v0 + 128) = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasElectricityRatesEnabled;
  swift_beginAccess();
  if (v2 != *(v1 + v3))
  {
    if (qword_280E01ED8 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 120);
    v5 = qword_280E03EB0;
    *(v0 + 136) = qword_280E03EB0;
    v6 = v5;
    sub_20DD64C54();
    v7 = sub_20DD64C24();
    v8 = sub_20DD65384();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 120);
    v11 = *(v0 + 72);
    v12 = *(v0 + 80);
    if (v9)
    {
      v13 = *(v0 + 184);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v45 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_20D9E0B38(0xD000000000000021, 0x800000020DD9ADC0, &v45);
      *(v14 + 12) = 1024;
      *(v14 + 14) = v13;
      _os_log_impl(&dword_20D9BF000, v7, v8, "%s to %{BOOL}d", v14, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x20F327D10](v15, -1, -1);
      MEMORY[0x20F327D10](v14, -1, -1);
    }

    v16 = *(v12 + 8);
    v16(v10, v11);
    *(v0 + 144) = v16;
    v17 = *(*(v0 + 40) + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home);
    if ([v17 hf_currentUserIsOwner])
    {
      v19 = *(v0 + 56);
      v18 = *(v0 + 64);
      v20 = *(v0 + 48);
      sub_20DD64AE4();
      v21 = [v17 uniqueIdentifier];
      sub_20DD63714();

      v22 = sub_20DD636E4();
      v24 = v23;
      (*(v19 + 8))(v18, v20);
      v25 = *(MEMORY[0x277D07650] + 4);
      v26 = swift_task_alloc();
      *(v0 + 152) = v26;
      *v26 = v0;
      v26[1] = sub_20DAA91E4;

      return MEMORY[0x28215C940](v22, v24);
    }

    v27 = *(v0 + 96);
    v28 = v6;
    sub_20DD64C54();
    v29 = sub_20DD64C24();
    v30 = sub_20DD65364();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 96);
    v33 = *(v0 + 72);
    v34 = *(v0 + 80);
    if (v31)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v45 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_20D9E0B38(0xD000000000000021, 0x800000020DD9ADC0, &v45);
      _os_log_impl(&dword_20D9BF000, v29, v30, "%s User is not home owner", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x20F327D10](v36, -1, -1);
      MEMORY[0x20F327D10](v35, -1, -1);
    }

    v16(v32, v33);
  }

  v38 = *(v0 + 112);
  v37 = *(v0 + 120);
  v40 = *(v0 + 96);
  v39 = *(v0 + 104);
  v41 = *(v0 + 88);
  v42 = *(v0 + 64);

  v43 = *(v0 + 8);

  return v43(0);
}

uint64_t sub_20DAA91E4(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_20DAA92E4, 0, 0);
}

uint64_t sub_20DAA92E4()
{
  v25 = v0;
  if (*(v0 + 160))
  {
    v1 = *(MEMORY[0x277D07678] + 4);
    v23 = (*MEMORY[0x277D07678] + MEMORY[0x277D07678]);
    v2 = swift_task_alloc();
    *(v0 + 168) = v2;
    *v2 = v0;
    v2[1] = sub_20DAA9530;
    v3 = *(v0 + 184);

    return v23(v3);
  }

  else
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 136);
    sub_20DD64C54();
    v7 = sub_20DD64C24();
    v8 = sub_20DD65364();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 144);
    v11 = *(v0 + 104);
    v12 = *(v0 + 72);
    v13 = *(v0 + 80);
    if (v9)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_20D9E0B38(0xD000000000000021, 0x800000020DD9ADC0, &v24);
      _os_log_impl(&dword_20D9BF000, v7, v8, "%s Couldn't find EnergySite", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x20F327D10](v15, -1, -1);
      MEMORY[0x20F327D10](v14, -1, -1);
    }

    v10(v11, v12);
    v17 = *(v0 + 112);
    v16 = *(v0 + 120);
    v19 = *(v0 + 96);
    v18 = *(v0 + 104);
    v20 = *(v0 + 88);
    v21 = *(v0 + 64);

    v22 = *(v0 + 8);

    return v22(0);
  }
}

uint64_t sub_20DAA9530()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_20DAA97CC;
  }

  else
  {
    v3 = sub_20DAA9644;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DAA9644()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 40);
  v3[*(v0 + 128)] = *(v0 + 184);
  v4 = v1;
  sub_20DD64C54();
  v5 = v3;
  v6 = sub_20DD64C24();
  v7 = sub_20DD65384();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 128);
    v9 = *(v0 + 40);
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v9[v8];

    _os_log_impl(&dword_20D9BF000, v6, v7, "hasElectricityRatesEnabled: %{BOOL}d", v10, 8u);
    MEMORY[0x20F327D10](v10, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 160);
  v12 = *(v0 + 80) + 8;
  (*(v0 + 144))(*(v0 + 112), *(v0 + 72));

  v14 = *(v0 + 112);
  v13 = *(v0 + 120);
  v16 = *(v0 + 96);
  v15 = *(v0 + 104);
  v17 = *(v0 + 88);
  v18 = *(v0 + 64);

  v19 = *(v0 + 8);

  return v19(1);
}

uint64_t sub_20DAA97CC()
{
  v31 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 88);
  v3 = *(v0 + 136);
  sub_20DD64C54();
  v4 = v1;
  v5 = sub_20DD64C24();
  v6 = sub_20DD65364();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 176);
  v9 = *(v0 + 160);
  v10 = *(v0 + 144);
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  v13 = *(v0 + 72);
  if (v7)
  {
    v29 = *(v0 + 144);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v12;
    v16 = swift_slowAlloc();
    v30 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_20D9E0B38(0xD000000000000021, 0x800000020DD9ADC0, &v30);
    *(v14 + 12) = 2112;
    v17 = v8;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    *v15 = v18;
    _os_log_impl(&dword_20D9BF000, v5, v6, "%s Couldn't update rate plan inclusion: %@", v14, 0x16u);
    sub_20D9D76EC(v15, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x20F327D10](v16, -1, -1);
    MEMORY[0x20F327D10](v14, -1, -1);

    v29(v28, v13);
  }

  else
  {
    v19 = *(v0 + 160);

    v10(v12, v13);
  }

  v21 = *(v0 + 112);
  v20 = *(v0 + 120);
  v23 = *(v0 + 96);
  v22 = *(v0 + 104);
  v24 = *(v0 + 88);
  v25 = *(v0 + 64);

  v26 = *(v0 + 8);

  return v26(0);
}

uint64_t sub_20DAA9BC0(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_20DAB5D24;

  return sub_20DAA8C60(a1);
}

uint64_t sub_20DAA9C7C()
{
  v1[2] = v0;
  v2 = sub_20DD64C44();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[7] = v5;
  *v5 = v1;
  v5[1] = sub_20DAA9D74;

  return sub_20DAAF09C();
}

uint64_t sub_20DAA9D74(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v6 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;

  return MEMORY[0x2822009F8](sub_20DAA9E74, 0, 0);
}

uint64_t sub_20DAA9E74()
{
  v1 = (v0[2] + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_utilityService);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = *(v3 + 8);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_20DAA9FAC;
  v8 = v0[8];
  v7 = v0[9];

  return v10(v8, v7, v2, v3);
}

uint64_t sub_20DAA9FAC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v7 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_20DAAA34C;
  }

  else
  {
    v5 = sub_20DAAA0C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20DAAA0C0()
{
  v28 = v0;
  v1 = v0[11];
  if (v1 >> 62)
  {
    v2 = sub_20DD655B4();
    v24 = v0[11];
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v3 = v0[9];
  v4 = v0[6];
  v5 = qword_280E03EB0;
  sub_20DD64C54();

  v6 = sub_20DD64C24();
  v7 = sub_20DD65384();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[9];
  if (v8)
  {
    v10 = v0[8];
    v11 = v0[4];
    v25 = v0[3];
    v26 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_20D9E0B38(0xD000000000000028, 0x800000020DD9ADF0, &v27);
    *(v12 + 12) = 2080;
    v14 = sub_20D9E0B38(v10, v9, &v27);

    *(v12 + 14) = v14;
    *(v12 + 22) = 1024;
    *(v12 + 24) = v2 != 0;
    _os_log_impl(&dword_20D9BF000, v6, v7, "%s %s returning %{BOOL}d", v12, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v13, -1, -1);
    MEMORY[0x20F327D10](v12, -1, -1);

    (*(v11 + 8))(v26, v25);
  }

  else
  {
    v15 = v0[6];
    v16 = v0[3];
    v17 = v0[4];
    v18 = v0[9];

    (*(v17 + 8))(v15, v16);
  }

  v19 = v2 != 0;
  v21 = v0[5];
  v20 = v0[6];

  v22 = v0[1];

  return v22(v19);
}

uint64_t sub_20DAAA34C()
{
  v48 = v0;
  p_cache = &OBJC_METACLASS___HFItemManagerDelegateUpdateRequest.cache;
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[5];
  v5 = qword_280E03EB0;
  sub_20DD64C54();

  v6 = v2;
  v7 = sub_20DD64C24();
  v8 = sub_20DD65364();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  if (v9)
  {
    v11 = v0[8];
    v12 = v0[9];
    v43 = v0[4];
    v44 = v0[3];
    v45 = v0[5];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v47 = v15;
    *v13 = 136315650;
    *(v13 + 4) = sub_20D9E0B38(0xD000000000000028, 0x800000020DD9ADF0, &v47);
    *(v13 + 12) = 2080;
    v16 = v12;
    p_cache = (&OBJC_METACLASS___HFItemManagerDelegateUpdateRequest + 16);
    *(v13 + 14) = sub_20D9E0B38(v11, v16, &v47);
    *(v13 + 22) = 2112;
    v17 = v10;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v14 = v18;
    _os_log_impl(&dword_20D9BF000, v7, v8, "%s %s error: %@", v13, 0x20u);
    sub_20D9D76EC(v14, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v15, -1, -1);
    MEMORY[0x20F327D10](v13, -1, -1);

    (*(v43 + 8))(v45, v44);
  }

  else
  {
    v20 = v0[4];
    v19 = v0[5];
    v21 = v0[3];

    (*(v20 + 8))(v19, v21);
  }

  if (p_cache[475] != -1)
  {
    swift_once();
  }

  v22 = v0[9];
  v23 = v0[6];
  v24 = qword_280E03EB0;
  sub_20DD64C54();

  v25 = sub_20DD64C24();
  v26 = sub_20DD65384();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v0[9];
  if (v27)
  {
    v29 = v0[8];
    v46 = v0[6];
    v30 = v0[3];
    v31 = v0[4];
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v47 = v33;
    *v32 = 136315650;
    *(v32 + 4) = sub_20D9E0B38(0xD000000000000028, 0x800000020DD9ADF0, &v47);
    *(v32 + 12) = 2080;
    v34 = sub_20D9E0B38(v29, v28, &v47);

    *(v32 + 14) = v34;
    *(v32 + 22) = 1024;
    *(v32 + 24) = 0;
    _os_log_impl(&dword_20D9BF000, v25, v26, "%s %s returning %{BOOL}d", v32, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v33, -1, -1);
    MEMORY[0x20F327D10](v32, -1, -1);

    (*(v31 + 8))(v46, v30);
  }

  else
  {
    v35 = v0[6];
    v36 = v0[3];
    v37 = v0[4];
    v38 = v0[9];

    (*(v37 + 8))(v35, v36);
  }

  v40 = v0[5];
  v39 = v0[6];

  v41 = v0[1];

  return v41(0);
}

uint64_t sub_20DAAA934(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20DAB5D24;

  return sub_20DAA9C7C();
}

uint64_t sub_20DAAA9DC()
{
  v1[151] = v0;
  v2 = sub_20DD64C44();
  v1[152] = v2;
  v3 = *(v2 - 8);
  v1[153] = v3;
  v4 = *(v3 + 64) + 15;
  v1[154] = swift_task_alloc();
  v5 = sub_20DD63744();
  v1[155] = v5;
  v6 = *(v5 - 8);
  v1[156] = v6;
  v7 = *(v6 + 64) + 15;
  v1[157] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DAAAAF8, 0, 0);
}

uint64_t sub_20DAAAAF8()
{
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1248);
  v3 = *(v0 + 1240);
  v4 = *(v0 + 1208);
  *(v0 + 1264) = sub_20D9D5FE0(MEMORY[0x277D84F90]);
  *(v0 + 1360) = sub_20DAA4D14() & 1;
  sub_20DD64AE4();
  v5 = [*(v4 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home) uniqueIdentifier];
  sub_20DD63714();

  v6 = sub_20DD636E4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  v9 = *(MEMORY[0x277D07650] + 4);
  v10 = swift_task_alloc();
  *(v0 + 1272) = v10;
  *v10 = v0;
  v10[1] = sub_20DAAAC34;

  return MEMORY[0x28215C940](v6, v8);
}

uint64_t sub_20DAAAC34(uint64_t a1)
{
  v2 = *(*v1 + 1272);
  v4 = *v1;
  *(*v1 + 1280) = a1;

  return MEMORY[0x2822009F8](sub_20DAAAD34, 0, 0);
}

uint64_t sub_20DAAAD34()
{
  v63 = v0;
  v1 = *(v0 + 1264);
  if (*(v0 + 1280))
  {
    v2 = sub_20DD64A24();
    v3 = MEMORY[0x277D837D0];
    *(v0 + 104) = MEMORY[0x277D837D0];
    *(v0 + 80) = v2;
    *(v0 + 88) = v4;
    sub_20D9C29D8((v0 + 80), (v0 + 112));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v1;
    v6 = *(v0 + 136);
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 112, v6);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64) + 15;
    v10 = swift_task_alloc();
    (*(v8 + 16))(v10, v7, v6);
    sub_20DA29604(*v10, v10[1], 0x444965746973, 0xE600000000000000, isUniquelyReferenced_nonNull_native, &v62);
    __swift_destroy_boxed_opaque_existential_0((v0 + 112));

    v11 = v62;
    v12 = sub_20DD64A54();
    v14 = v13;
    *(v0 + 144) = v12;
    *(v0 + 168) = v3;
    *(v0 + 152) = v13;
    sub_20D9C29D8((v0 + 144), (v0 + 176));

    LOBYTE(v3) = swift_isUniquelyReferenced_nonNull_native();
    v62 = v11;
    v15 = *(v0 + 200);
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 176, v15);
    v17 = *(v15 - 8);
    v18 = *(v17 + 64) + 15;
    v19 = swift_task_alloc();
    (*(v17 + 16))(v19, v16, v15);
    sub_20DA29604(*v19, v19[1], 0xD000000000000011, 0x800000020DD9AE40, v3, &v62);
    __swift_destroy_boxed_opaque_existential_0((v0 + 176));

    v20 = v62;
    if (v12 == 0x64657269707865 && v14 == 0xE700000000000000 || (sub_20DD65974() & 1) != 0 || v12 == 0x656E6E6F63736964 && v14 == 0xEC00000064657463)
    {
    }

    else
    {
      v60 = sub_20DD65974();

      if ((v60 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    *(v0 + 1128) = MEMORY[0x277D839B0];
    *(v0 + 1104) = 1;
    sub_20D9C29D8((v0 + 1104), (v0 + 1136));
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v20;
    v22 = *(v0 + 1160);
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 1136, v22);
    v24 = *(v22 - 8);
    v25 = *(v24 + 64) + 15;
    v26 = swift_task_alloc();
    (*(v24 + 16))(v26, v23, v22);
    sub_20DA29938(*v26, 0x6E6F637369447369, 0xEE0064657463656ELL, v21, &v62);
    __swift_destroy_boxed_opaque_existential_0((v0 + 1136));

    v20 = v62;
LABEL_9:
    *(v0 + 1288) = v20;
    v27 = *(v0 + 1208);
    v28 = sub_20DD64A94();
    v30 = v29;
    *(v0 + 1192) = v28;
    *(v0 + 1200) = v29;
    *(v0 + 1296) = v29;
    v31 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedHasEnergySite;
    swift_beginAccess();
    *(v27 + v31) = 1;
    v32 = v30 != 0;
    v33 = swift_task_alloc();
    *(v0 + 1304) = v33;
    *v33 = v0;
    v33[1] = sub_20DAAB4C8;
    v34 = *(v0 + 1208);

    return sub_20DAA53D0(v32);
  }

  *(v0 + 16) = *(v0 + 1360);
  *(v0 + 40) = MEMORY[0x277D839B0];
  sub_20D9C29D8((v0 + 16), (v0 + 48));
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v62 = v1;
  v37 = *(v0 + 72);
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 48, v37);
  v39 = *(v37 - 8);
  v40 = *(v39 + 64) + 15;
  v41 = swift_task_alloc();
  (*(v39 + 16))(v41, v38, v37);
  sub_20DA29938(*v41, 0x726F707075537369, 0xEB00000000646574, v36, &v62);
  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  v42 = v62;
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v43 = *(v0 + 1232);
  v44 = qword_280E03EB0;
  sub_20DD64C54();
  v45 = sub_20DD64C24();
  v46 = sub_20DD65384();
  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 1232);
  v49 = *(v0 + 1224);
  v50 = *(v0 + 1216);
  if (v47)
  {
    v61 = *(v0 + 1232);
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v62 = v52;
    *v51 = 136315394;
    *(v51 + 4) = sub_20D9E0B38(0xD000000000000010, 0x800000020DD9AE20, &v62);
    *(v51 + 12) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442C8, &qword_20DD94B80);
    v53 = sub_20DD64DD4();
    v55 = v54;

    v56 = sub_20D9E0B38(v53, v55, &v62);

    *(v51 + 14) = v56;
    _os_log_impl(&dword_20D9BF000, v45, v46, "%s returning: %s", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v52, -1, -1);
    MEMORY[0x20F327D10](v51, -1, -1);

    (*(v49 + 8))(v61, v50);
  }

  else
  {

    (*(v49 + 8))(v48, v50);
  }

  v57 = *(v0 + 1256);
  v58 = *(v0 + 1232);

  v59 = *(v0 + 8);

  return v59(v42);
}

uint64_t sub_20DAAB4C8()
{
  v1 = *(*v0 + 1304);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DAAB5C4, 0, 0);
}

uint64_t sub_20DAAB5C4()
{
  v85 = v0;
  v1 = *(v0 + 1296);
  if (v1)
  {
    *(v0 + 208) = *(v0 + 1192);
    v2 = *(v0 + 1288);
    v3 = *(v0 + 1280);
    v4 = MEMORY[0x277D837D0];
    *(v0 + 232) = MEMORY[0x277D837D0];
    *(v0 + 216) = v1;
    sub_20D9C29D8((v0 + 208), (v0 + 240));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84 = v2;
    v6 = *(v0 + 264);
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 240, v6);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64) + 15;
    v10 = swift_task_alloc();
    (*(v8 + 16))(v10, v7, v6);
    sub_20DA29604(*v10, v10[1], 0xD000000000000015, 0x800000020DD9AE60, isUniquelyReferenced_nonNull_native, &v84);
    __swift_destroy_boxed_opaque_existential_0((v0 + 240));

    v11 = v84;
    v12 = sub_20DD64A74();
    if (v13)
    {
      *(v0 + 1064) = v4;
      *(v0 + 1040) = v12;
      *(v0 + 1048) = v13;
      sub_20D9C29D8((v0 + 1040), (v0 + 1072));
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v84 = v11;
      v15 = *(v0 + 1096);
      v16 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 1072, v15);
      v17 = *(v15 - 8);
      v18 = *(v17 + 64) + 15;
      v19 = swift_task_alloc();
      (*(v17 + 16))(v19, v16, v15);
      sub_20DA29604(*v19, v19[1], 0xD000000000000013, 0x800000020DD9AF40, v14, &v84);
      __swift_destroy_boxed_opaque_existential_0((v0 + 1072));

      v11 = v84;
    }

    v20 = *(v0 + 1280);
    v21 = sub_20DD64A84();
    if (v22)
    {
      *(v0 + 1000) = v4;
      *(v0 + 976) = v21;
      *(v0 + 984) = v22;
      sub_20D9C29D8((v0 + 976), (v0 + 1008));
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v84 = v11;
      v24 = *(v0 + 1032);
      v25 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 1008, v24);
      v26 = *(v24 - 8);
      v27 = *(v26 + 64) + 15;
      v28 = swift_task_alloc();
      (*(v26 + 16))(v28, v25, v24);
      sub_20DA29604(*v28, v28[1], 0xD000000000000014, 0x800000020DD9AF20, v23, &v84);
      __swift_destroy_boxed_opaque_existential_0((v0 + 1008));

      v11 = v84;
    }

    v29 = *(v0 + 1280);
    v30 = sub_20DD64A64();
    if (v31)
    {
      *(v0 + 936) = v4;
      *(v0 + 912) = v30;
      *(v0 + 920) = v31;
      sub_20D9C29D8((v0 + 912), (v0 + 944));
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v84 = v11;
      v33 = *(v0 + 968);
      v34 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 944, v33);
      v35 = *(v33 - 8);
      v36 = *(v35 + 64) + 15;
      v37 = swift_task_alloc();
      (*(v35 + 16))(v37, v34, v33);
      sub_20DA29604(*v37, v37[1], 0xD000000000000012, 0x800000020DD9AF00, v32, &v84);
      __swift_destroy_boxed_opaque_existential_0((v0 + 944));

      v11 = v84;
    }

    v38 = *(v0 + 1280);
    v39 = sub_20DD64A34();
    if (v40)
    {
      *(v0 + 872) = v4;
      *(v0 + 848) = v39;
      *(v0 + 856) = v40;
      sub_20D9C29D8((v0 + 848), (v0 + 880));
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v84 = v11;
      v42 = *(v0 + 904);
      v43 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 880, v42);
      v44 = *(v42 - 8);
      v45 = *(v44 + 64) + 15;
      v46 = swift_task_alloc();
      (*(v44 + 16))(v46, v43, v42);
      sub_20DA29604(*v46, v46[1], 0x4165636976726573, 0xEE00737365726464, v41, &v84);
      __swift_destroy_boxed_opaque_existential_0((v0 + 880));

      v11 = v84;
    }

    *(v0 + 1312) = v11;
    v47 = *(v0 + 1280);
    v48 = sub_20DD64AD4();
    *(v0 + 1320) = v48;
    *(v0 + 1328) = v49;
    if (v49)
    {
      v50 = v48;
      v51 = v49;
      sub_20DD64BC4();
      v52 = sub_20DD64B94();
      *(v0 + 1336) = v52;
      v53 = *(MEMORY[0x277D18270] + 4);
      v54 = swift_task_alloc();
      *(v0 + 1344) = v54;
      *v54 = v0;
      v54[1] = sub_20DAABEA4;

      return MEMORY[0x282172650](v50, v51, v52);
    }

    v57 = *(v0 + 1280);

    v56 = 1;
  }

  else
  {
    v55 = *(v0 + 1280);

    v11 = *(v0 + 1288);
    v56 = *(v0 + 1360);
  }

  *(v0 + 40) = MEMORY[0x277D839B0];
  *(v0 + 16) = v56;
  sub_20D9C29D8((v0 + 16), (v0 + 48));
  v58 = swift_isUniquelyReferenced_nonNull_native();
  v84 = v11;
  v59 = *(v0 + 72);
  v60 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 48, v59);
  v61 = *(v59 - 8);
  v62 = *(v61 + 64) + 15;
  v63 = swift_task_alloc();
  (*(v61 + 16))(v63, v60, v59);
  sub_20DA29938(*v63, 0x726F707075537369, 0xEB00000000646574, v58, &v84);
  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  v64 = v84;
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v65 = *(v0 + 1232);
  v66 = qword_280E03EB0;
  sub_20DD64C54();
  v67 = sub_20DD64C24();
  v68 = sub_20DD65384();
  v69 = os_log_type_enabled(v67, v68);
  v70 = *(v0 + 1232);
  v71 = *(v0 + 1224);
  v72 = *(v0 + 1216);
  if (v69)
  {
    v83 = *(v0 + 1232);
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v84 = v74;
    *v73 = 136315394;
    *(v73 + 4) = sub_20D9E0B38(0xD000000000000010, 0x800000020DD9AE20, &v84);
    *(v73 + 12) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442C8, &qword_20DD94B80);
    v75 = sub_20DD64DD4();
    v77 = v76;

    v78 = sub_20D9E0B38(v75, v77, &v84);

    *(v73 + 14) = v78;
    _os_log_impl(&dword_20D9BF000, v67, v68, "%s returning: %s", v73, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v74, -1, -1);
    MEMORY[0x20F327D10](v73, -1, -1);

    (*(v71 + 8))(v83, v72);
  }

  else
  {

    (*(v71 + 8))(v70, v72);
  }

  v79 = *(v0 + 1256);
  v80 = *(v0 + 1232);

  v81 = *(v0 + 8);

  return v81(v64);
}

uint64_t sub_20DAABEA4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1344);
  v6 = *v2;
  *(*v2 + 1352) = a1;

  v7 = *(v3 + 1336);
  if (v1)
  {
    v8 = *(v4 + 1328);

    v9 = sub_20DAACCCC;
  }

  else
  {

    v9 = sub_20DAABFF8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_20DAABFF8()
{
  v123 = v0;
  v1 = *(v0 + 1352);
  if (v1)
  {
    v2 = sub_20DD64B34();
    v4 = v3;
    v5 = sub_20DD64B44();
    v118 = v2;
    v120 = v1;
    if (!v6)
    {

      v5 = v2;
      v6 = v4;
    }

    v7 = *(v0 + 1328);
    v8 = *(v0 + 1320);
    v9 = *(v0 + 1312);
    v10 = MEMORY[0x277D837D0];
    *(v0 + 296) = MEMORY[0x277D837D0];
    *(v0 + 272) = v5;
    *(v0 + 280) = v6;
    sub_20D9C29D8((v0 + 272), (v0 + 304));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v122 = v9;
    v12 = *(v0 + 328);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 304, v12);
    v14 = *(v12 - 8);
    v15 = *(v14 + 64) + 15;
    v16 = swift_task_alloc();
    (*(v14 + 16))(v16, v13, v12);
    sub_20DA29604(*v16, v16[1], 0x4E7974696C697475, 0xEB00000000656D61, isUniquelyReferenced_nonNull_native, &v122);
    __swift_destroy_boxed_opaque_existential_0((v0 + 304));

    v17 = v122;
    *(v0 + 360) = v10;
    *(v0 + 336) = v8;
    *(v0 + 344) = v7;
    v18 = v10;
    sub_20D9C29D8((v0 + 336), (v0 + 368));
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v17;
    v20 = *(v0 + 392);
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 368, v20);
    v22 = *(v20 - 8);
    v23 = *(v22 + 64) + 15;
    v24 = swift_task_alloc();
    (*(v22 + 16))(v24, v21, v20);
    sub_20DA29604(*v24, v24[1], 0x497974696C697475, 0xE900000000000044, v19, &v122);
    __swift_destroy_boxed_opaque_existential_0((v0 + 368));

    v25 = v122;
    *(v0 + 424) = v10;
    *(v0 + 400) = v118;
    *(v0 + 408) = v4;
    sub_20D9C29D8((v0 + 400), (v0 + 432));
    LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
    v122 = v25;
    v26 = *(v0 + 456);
    v27 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 432, v26);
    v28 = *(v26 - 8);
    v29 = *(v28 + 64) + 15;
    v30 = swift_task_alloc();
    (*(v28 + 16))(v30, v27, v26);
    sub_20DA29604(*v30, v30[1], 0x4C7974696C697475, 0xEF656D614E676E6FLL, v7, &v122);
    __swift_destroy_boxed_opaque_existential_0((v0 + 432));

    v31 = v122;
    v32 = sub_20DD64B24();
    v33 = sub_20DD64AF4();

    v34 = sub_20DD64B54();
    v36 = v35;

    *(v0 + 488) = v10;
    *(v0 + 464) = v34;
    *(v0 + 472) = v36;
    sub_20D9C29D8((v0 + 464), (v0 + 496));
    LOBYTE(v34) = swift_isUniquelyReferenced_nonNull_native();
    v122 = v31;
    v37 = *(v0 + 520);
    v38 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 496, v37);
    v39 = *(v37 - 8);
    v40 = *(v39 + 64) + 15;
    v41 = swift_task_alloc();
    (*(v39 + 16))(v41, v38, v37);
    sub_20DA29604(*v41, v41[1], 0xD000000000000011, 0x800000020DD9AE80, v34, &v122);
    __swift_destroy_boxed_opaque_existential_0((v0 + 496));

    v42 = v122;
    if ([objc_opt_self() isInternalInstall])
    {
      v43 = [objc_opt_self() standardUserDefaults];
      v44 = sub_20DD64E74();
      v45 = [v43 stringForKey_];

      if (v45)
      {
        v46 = sub_20DD64EB4();
        v48 = v47;

        *(v0 + 808) = v10;
        *(v0 + 784) = v46;
        *(v0 + 792) = v48;
        sub_20D9C29D8((v0 + 784), (v0 + 816));
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v122 = v42;
        v50 = *(v0 + 840);
        v51 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 816, v50);
        v52 = *(v50 - 8);
        v53 = *(v52 + 64) + 15;
        v54 = swift_task_alloc();
        (*(v52 + 16))(v54, v51, v50);
        sub_20DA29604(*v54, v54[1], 0xD000000000000011, 0x800000020DD9AE80, v49, &v122);
        __swift_destroy_boxed_opaque_existential_0((v0 + 816));

        v42 = v122;
      }
    }

    v119 = *(v0 + 1280);
    v55 = sub_20DD64B24();
    v56 = sub_20DD64B04();

    v57 = sub_20DD64B74();
    *(v0 + 552) = v10;
    *(v0 + 528) = v57;
    *(v0 + 536) = v58;
    sub_20D9C29D8((v0 + 528), (v0 + 560));
    LOBYTE(v55) = swift_isUniquelyReferenced_nonNull_native();
    v122 = v42;
    v59 = *(v0 + 584);
    v60 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 560, v59);
    v61 = *(v59 - 8);
    v62 = *(v61 + 64) + 15;
    v63 = swift_task_alloc();
    (*(v61 + 16))(v63, v60, v59);
    sub_20DA29604(*v63, v63[1], 0xD000000000000014, 0x800000020DD9AEA0, v55, &v122);
    __swift_destroy_boxed_opaque_existential_0((v0 + 560));

    v64 = v122;
    v65 = sub_20DD64B64();
    *(v0 + 616) = v18;
    *(v0 + 592) = v65;
    *(v0 + 600) = v66;
    sub_20D9C29D8((v0 + 592), (v0 + 624));
    LOBYTE(v55) = swift_isUniquelyReferenced_nonNull_native();
    v122 = v64;
    v67 = *(v0 + 648);
    v68 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 624, v67);
    v69 = *(v67 - 8);
    v70 = *(v69 + 64) + 15;
    v71 = swift_task_alloc();
    (*(v69 + 16))(v71, v68, v67);
    sub_20DA29604(*v71, v71[1], 0xD000000000000012, 0x800000020DD9AEC0, v55, &v122);
    __swift_destroy_boxed_opaque_existential_0((v0 + 624));

    v72 = v122;
    v73 = sub_20DD64B84();
    *(v0 + 680) = v18;
    *(v0 + 656) = v73;
    *(v0 + 664) = v74;
    sub_20D9C29D8((v0 + 656), (v0 + 688));
    LOBYTE(v55) = swift_isUniquelyReferenced_nonNull_native();
    v122 = v72;
    v75 = *(v0 + 712);
    v76 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 688, v75);
    v77 = *(v75 - 8);
    v78 = *(v77 + 64) + 15;
    v79 = swift_task_alloc();
    (*(v77 + 16))(v79, v76, v75);
    sub_20DA29604(*v79, v79[1], 0xD00000000000001BLL, 0x800000020DD9AEE0, v55, &v122);
    __swift_destroy_boxed_opaque_existential_0((v0 + 688));

    v80 = v122;
    v81 = sub_20DD64B24();
    v82 = sub_20DD64B14();
    v84 = v83;

    *(v0 + 744) = v18;
    *(v0 + 720) = v82;
    *(v0 + 728) = v84;
    sub_20D9C29D8((v0 + 720), (v0 + 752));
    LOBYTE(v81) = swift_isUniquelyReferenced_nonNull_native();
    v122 = v80;
    v85 = *(v0 + 776);
    v86 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 752, v85);
    v87 = *(v85 - 8);
    v88 = *(v87 + 64) + 15;
    v89 = swift_task_alloc();
    (*(v87 + 16))(v89, v86, v85);
    sub_20DA29604(*v89, v89[1], 0x577974696C697475, 0xEE00657469736265, v81, &v122);
    __swift_destroy_boxed_opaque_existential_0((v0 + 752));

    v90 = v122;
  }

  else
  {
    v91 = *(v0 + 1328);
    v92 = *(v0 + 1280);

    v90 = *(v0 + 1312);
  }

  *(v0 + 40) = MEMORY[0x277D839B0];
  *(v0 + 16) = 1;
  sub_20D9C29D8((v0 + 16), (v0 + 48));
  v93 = swift_isUniquelyReferenced_nonNull_native();
  v122 = v90;
  v94 = *(v0 + 72);
  v95 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 48, v94);
  v96 = *(v94 - 8);
  v97 = *(v96 + 64) + 15;
  v98 = swift_task_alloc();
  (*(v96 + 16))(v98, v95, v94);
  sub_20DA29938(*v98, 0x726F707075537369, 0xEB00000000646574, v93, &v122);
  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  v99 = v122;
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v100 = *(v0 + 1232);
  v101 = qword_280E03EB0;
  sub_20DD64C54();
  v102 = sub_20DD64C24();
  v103 = sub_20DD65384();
  v104 = os_log_type_enabled(v102, v103);
  v105 = *(v0 + 1232);
  v106 = *(v0 + 1224);
  v107 = *(v0 + 1216);
  if (v104)
  {
    v121 = *(v0 + 1232);
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v122 = v109;
    *v108 = 136315394;
    *(v108 + 4) = sub_20D9E0B38(0xD000000000000010, 0x800000020DD9AE20, &v122);
    *(v108 + 12) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442C8, &qword_20DD94B80);
    v110 = sub_20DD64DD4();
    v112 = v111;

    v113 = sub_20D9E0B38(v110, v112, &v122);

    *(v108 + 14) = v113;
    _os_log_impl(&dword_20D9BF000, v102, v103, "%s returning: %s", v108, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v109, -1, -1);
    MEMORY[0x20F327D10](v108, -1, -1);

    (*(v106 + 8))(v121, v107);
  }

  else
  {

    (*(v106 + 8))(v105, v107);
  }

  v114 = *(v0 + 1256);
  v115 = *(v0 + 1232);

  v116 = *(v0 + 8);

  return v116(v99);
}

uint64_t sub_20DAACCCC()
{
  v30 = v0;
  v1 = *(v0 + 1280);

  *(v0 + 16) = 1;
  v2 = *(v0 + 1312);
  *(v0 + 40) = MEMORY[0x277D839B0];
  sub_20D9C29D8((v0 + 16), (v0 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v2;
  v4 = *(v0 + 72);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 48, v4);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  (*(v6 + 16))(v8, v5, v4);
  sub_20DA29938(*v8, 0x726F707075537369, 0xEB00000000646574, isUniquelyReferenced_nonNull_native, &v29);
  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  v9 = v29;
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 1232);
  v11 = qword_280E03EB0;
  sub_20DD64C54();
  v12 = sub_20DD64C24();
  v13 = sub_20DD65384();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 1232);
  v16 = *(v0 + 1224);
  v17 = *(v0 + 1216);
  if (v14)
  {
    v28 = *(v0 + 1232);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_20D9E0B38(0xD000000000000010, 0x800000020DD9AE20, &v29);
    *(v18 + 12) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442C8, &qword_20DD94B80);
    v20 = sub_20DD64DD4();
    v22 = v21;

    v23 = sub_20D9E0B38(v20, v22, &v29);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_20D9BF000, v12, v13, "%s returning: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v19, -1, -1);
    MEMORY[0x20F327D10](v18, -1, -1);

    (*(v16 + 8))(v28, v17);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
  }

  v24 = *(v0 + 1256);
  v25 = *(v0 + 1232);

  v26 = *(v0 + 8);

  return v26(v9);
}

uint64_t sub_20DAAD194(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20DAAD23C;

  return sub_20DAAA9DC();
}

uint64_t sub_20DAAD23C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442C8, &qword_20DD94B80);
  v4 = sub_20DD64DB4();

  (v2)[2](v2, v4);

  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_20DAAD3C8()
{
  v1[2] = v0;
  v2 = sub_20DD64C44();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = sub_20DD63744();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DAAD508, 0, 0);
}

uint64_t sub_20DAAD508()
{
  v34 = v0;
  v1 = *(v0[2] + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home);
  v2 = [v1 name];
  v3 = sub_20DD64EB4();
  v5 = v4;

  v0[12] = v3;
  v0[13] = v5;
  if ([v1 hf_currentUserIsAdministrator])
  {
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[9];
    sub_20DD64AE4();
    v9 = [v1 uniqueIdentifier];
    sub_20DD63714();

    v10 = sub_20DD636E4();
    v12 = v11;
    (*(v7 + 8))(v6, v8);
    v13 = *(MEMORY[0x277D07650] + 4);
    v14 = swift_task_alloc();
    v0[14] = v14;
    *v14 = v0;
    v14[1] = sub_20DAAD870;

    return MEMORY[0x28215C940](v10, v12);
  }

  else
  {
    if (qword_280E01ED8 != -1)
    {
      swift_once();
    }

    v15 = v0[6];
    v16 = qword_280E03EB0;
    sub_20DD64C54();

    v17 = sub_20DD64C24();
    v18 = sub_20DD65384();

    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[6];
    v21 = v0[3];
    v22 = v0[4];
    if (v19)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_20D9E0B38(0xD000000000000014, 0x800000020DD9AF60, &v33);
      *(v23 + 12) = 2080;
      v25 = sub_20D9E0B38(v3, v5, &v33);

      *(v23 + 14) = v25;
      _os_log_impl(&dword_20D9BF000, v17, v18, "%s not allowed for home %s because: not admin", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v24, -1, -1);
      MEMORY[0x20F327D10](v23, -1, -1);
    }

    else
    {
    }

    (*(v22 + 8))(v20, v21);
    v26 = v0[11];
    v27 = v0[7];
    v28 = v0[8];
    v30 = v0[5];
    v29 = v0[6];

    v31 = v0[1];

    return v31(0);
  }
}

uint64_t sub_20DAAD870(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_20DAAD970, 0, 0);
}

uint64_t sub_20DAAD970()
{
  v30 = v0;
  if (v0[15])
  {
    v1 = *(MEMORY[0x277D07660] + 4);
    v28 = (*MEMORY[0x277D07660] + MEMORY[0x277D07660]);
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = sub_20DAADC5C;

    return v28();
  }

  else
  {
    if (qword_280E01ED8 != -1)
    {
      swift_once();
    }

    v4 = v0[13];
    v5 = v0[7];
    v6 = qword_280E03EB0;
    sub_20DD64C54();

    v7 = sub_20DD64C24();
    v8 = sub_20DD65364();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[13];
    if (v9)
    {
      v11 = v0[12];
      v12 = v0[7];
      v13 = v0[3];
      v14 = v0[4];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_20D9E0B38(0xD000000000000014, 0x800000020DD9AF60, &v29);
      *(v15 + 12) = 2080;
      v17 = sub_20D9E0B38(v11, v10, &v29);

      *(v15 + 14) = v17;
      _os_log_impl(&dword_20D9BF000, v7, v8, "%s Error fetching Energy Site for %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v16, -1, -1);
      MEMORY[0x20F327D10](v15, -1, -1);

      (*(v14 + 8))(v12, v13);
    }

    else
    {
      v18 = v0[7];
      v19 = v0[3];
      v20 = v0[4];
      v21 = v0[13];

      (*(v20 + 8))(v18, v19);
    }

    v22 = v0[11];
    v23 = v0[7];
    v24 = v0[8];
    v26 = v0[5];
    v25 = v0[6];

    v27 = v0[1];

    return v27(0);
  }
}

uint64_t sub_20DAADC5C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_20DAAE218;
  }

  else
  {
    *(v4 + 152) = a1 & 1;
    v7 = sub_20DAADD88;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20DAADD88()
{
  v31 = v0;
  v1 = *(v0 + 152);
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 104);
  v3 = *(v0 + 64);
  v4 = qword_280E03EB0;
  sub_20DD64C54();

  v5 = sub_20DD64C24();
  v6 = sub_20DD65384();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 104);
  if (v7)
  {
    v9 = *(v0 + 96);
    v29 = *(v0 + 64);
    v11 = *(v0 + 24);
    v10 = *(v0 + 32);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_20D9E0B38(0xD000000000000014, 0x800000020DD9AF60, &v30);
    *(v12 + 12) = 1024;
    *(v12 + 14) = v1;
    *(v12 + 18) = 2080;
    v14 = sub_20D9E0B38(v9, v8, &v30);

    *(v12 + 20) = v14;
    _os_log_impl(&dword_20D9BF000, v5, v6, "%s success: %{BOOL}d for home %s", v12, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v13, -1, -1);
    MEMORY[0x20F327D10](v12, -1, -1);

    (*(v10 + 8))(v29, v11);
    if (!v1)
    {
LABEL_5:
      v15 = *(v0 + 120);

      v16 = *(v0 + 88);
      v17 = *(v0 + 56);
      v18 = *(v0 + 64);
      v20 = *(v0 + 40);
      v19 = *(v0 + 48);

      v21 = *(v0 + 8);

      return v21(0);
    }
  }

  else
  {
    v23 = *(v0 + 64);
    v24 = *(v0 + 24);
    v25 = *(v0 + 32);
    v26 = *(v0 + 104);

    (*(v25 + 8))(v23, v24);
    if (!v1)
    {
      goto LABEL_5;
    }
  }

  v27 = swift_task_alloc();
  *(v0 + 144) = v27;
  *v27 = v0;
  v27[1] = sub_20DAAE080;
  v28 = *(v0 + 16);

  return sub_20DAA53D0(0);
}

uint64_t sub_20DAAE080()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DAAE17C, 0, 0);
}

uint64_t sub_20DAAE17C()
{
  v1 = v0[15];

  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];

  v7 = v0[1];

  return v7(1);
}

uint64_t sub_20DAAE218()
{
  v52 = v0;
  p_cache = &OBJC_METACLASS___HFItemManagerDelegateUpdateRequest.cache;
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[5];
  v5 = qword_280E03EB0;
  sub_20DD64C54();

  v6 = v2;
  v7 = sub_20DD64C24();
  v8 = sub_20DD65364();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  if (v9)
  {
    v11 = v0[12];
    v12 = v0[13];
    v47 = v0[4];
    v48 = v0[3];
    v49 = v0[5];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v51 = v15;
    *v13 = 136315650;
    *(v13 + 4) = sub_20D9E0B38(0xD000000000000014, 0x800000020DD9AF60, &v51);
    *(v13 + 12) = 2080;
    v16 = v12;
    p_cache = (&OBJC_METACLASS___HFItemManagerDelegateUpdateRequest + 16);
    *(v13 + 14) = sub_20D9E0B38(v11, v16, &v51);
    *(v13 + 22) = 2112;
    v17 = v10;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v14 = v18;
    _os_log_impl(&dword_20D9BF000, v7, v8, "%s revokeUtilitySubscription failed for %s error: %@", v13, 0x20u);
    sub_20D9D76EC(v14, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v15, -1, -1);
    MEMORY[0x20F327D10](v13, -1, -1);

    (*(v47 + 8))(v49, v48);
  }

  else
  {
    v20 = v0[4];
    v19 = v0[5];
    v21 = v0[3];

    (*(v20 + 8))(v19, v21);
  }

  if (p_cache[475] != -1)
  {
    swift_once();
  }

  v22 = v0[13];
  v23 = v0[8];
  v24 = qword_280E03EB0;
  sub_20DD64C54();

  v25 = sub_20DD64C24();
  v26 = sub_20DD65384();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v0[13];
  if (v27)
  {
    v29 = v0[12];
    v50 = v0[8];
    v30 = v0[3];
    v31 = v0[4];
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v51 = v33;
    *v32 = 136315650;
    *(v32 + 4) = sub_20D9E0B38(0xD000000000000014, 0x800000020DD9AF60, &v51);
    *(v32 + 12) = 1024;
    *(v32 + 14) = 0;
    *(v32 + 18) = 2080;
    v34 = sub_20D9E0B38(v29, v28, &v51);

    *(v32 + 20) = v34;
    _os_log_impl(&dword_20D9BF000, v25, v26, "%s success: %{BOOL}d for home %s", v32, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v33, -1, -1);
    MEMORY[0x20F327D10](v32, -1, -1);

    (*(v31 + 8))(v50, v30);
  }

  else
  {
    v35 = v0[8];
    v36 = v0[3];
    v37 = v0[4];
    v38 = v0[13];

    (*(v37 + 8))(v35, v36);
  }

  v39 = v0[15];

  v40 = v0[11];
  v41 = v0[7];
  v42 = v0[8];
  v44 = v0[5];
  v43 = v0[6];

  v45 = v0[1];

  return v45(0);
}

uint64_t sub_20DAAE828(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20DAB5D24;

  return sub_20DAAD3C8();
}

uint64_t sub_20DAAE8FC()
{
  v1 = sub_20DD64C44();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_20DAAE9E4;

  return sub_20DAAF09C();
}

uint64_t sub_20DAAE9E4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v6 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  return MEMORY[0x2822009F8](sub_20DAAEAE4, 0, 0);
}

uint64_t sub_20DAAEAE4()
{
  v26 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = sub_20DD638C4();
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v4 = v0[7];
  v5 = v0[4];
  v6 = qword_280E03EB0;
  sub_20DD64C54();

  v7 = sub_20DD64C24();
  v8 = sub_20DD65384();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[7];
  if (v9)
  {
    v11 = v0[6];
    v12 = v0[3];
    v24 = v0[4];
    v13 = v0[2];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_20D9E0B38(0xD000000000000025, 0x800000020DD9AF80, &v25);
    *(v14 + 12) = 2080;
    v16 = sub_20D9E0B38(v11, v10, &v25);

    *(v14 + 14) = v16;
    *(v14 + 22) = 1024;
    *(v14 + 24) = v3 & 1;
    _os_log_impl(&dword_20D9BF000, v7, v8, "%s %s returning %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v15, -1, -1);
    MEMORY[0x20F327D10](v14, -1, -1);

    (*(v12 + 8))(v24, v13);
  }

  else
  {
    v18 = v0[3];
    v17 = v0[4];
    v19 = v0[2];
    v20 = v0[7];

    (*(v18 + 8))(v17, v19);
  }

  v21 = v0[4];

  v22 = v0[1];

  return v22(v3 & 1);
}

uint64_t sub_20DAAEEAC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20DAAEF54;

  return sub_20DAAE8FC();
}

uint64_t sub_20DAAEF54(char a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_20DAAF09C()
{
  v1[8] = v0;
  v2 = sub_20DD63794();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8453A0, &qword_20DD96F18) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v6 = sub_20DD64C44();
  v1[13] = v6;
  v7 = *(v6 - 8);
  v1[14] = v7;
  v8 = *(v7 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DAAF22C, 0, 0);
}

uint64_t sub_20DAAF22C()
{
  v137 = v0;
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = *(v0 + 64);
  v3 = qword_280E03EB0;
  *(v0 + 168) = qword_280E03EB0;
  v4 = v3;
  sub_20DD64C54();
  v5 = v2;
  v6 = sub_20DD64C24();
  v7 = sub_20DD65384();

  v8 = &unk_27C845000;
  if (os_log_type_enabled(v6, v7))
  {
    v132 = v4;
    v9 = *(v0 + 64);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v136 = v11;
    *v10 = 136315906;
    *(v10 + 4) = sub_20D9E0B38(0x69676552656D6F68, 0xEC00000029286E6FLL, &v136);
    *(v10 + 12) = 2080;
    v12 = *(v9 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home);
    v13 = [v12 name];
    v14 = sub_20DD64EB4();
    v16 = v15;

    v17 = sub_20D9E0B38(v14, v16, &v136);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2080;
    v18 = *(v9 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedRegionCode + 8);
    *(v0 + 40) = *(v9 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedRegionCode);
    *(v0 + 48) = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844118, qword_20DD96F20);
    v19 = sub_20DD64ED4();
    v21 = sub_20D9E0B38(v19, v20, &v136);

    *(v10 + 24) = v21;
    *(v10 + 32) = 2080;
    v22 = [v12 location];
    if (v22)
    {

      v23 = 0x800000020DD9AFB0;
      v24 = 0xD000000000000010;
    }

    else
    {
      v23 = 0xEE004C494E207369;
      v24 = 0x20636F4C656D6F68;
    }

    v29 = *(v0 + 160);
    v31 = *(v0 + 104);
    v30 = *(v0 + 112);
    v32 = sub_20D9E0B38(v24, v23, &v136);

    *(v10 + 34) = v32;
    _os_log_impl(&dword_20D9BF000, v6, v7, "%s called for %s: cached: %s, %s", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v11, -1, -1);
    MEMORY[0x20F327D10](v10, -1, -1);

    v28 = *(v30 + 8);
    v28(v29, v31);
    v4 = v132;
    v8 = &unk_27C845000;
  }

  else
  {
    v25 = *(v0 + 160);
    v26 = *(v0 + 104);
    v27 = *(v0 + 112);

    v28 = *(v27 + 8);
    v28(v25, v26);
  }

  v33 = *(v0 + 64);
  v34 = v8[117];
  *(v0 + 176) = v28;
  *(v0 + 184) = v34;
  v35 = &v33[v34];
  v36 = v35[1];
  if (v36)
  {
    v37 = *v35;
    v38 = *(v0 + 152);
    v39 = v4;

    sub_20DD64C54();
    v40 = v33;

    v41 = sub_20DD64C24();
    v42 = sub_20DD65384();

    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 152);
    v45 = *(v0 + 104);
    v46 = *(v0 + 112);
    if (!v43)
    {

      v28(v44, v45);
      v57 = v37;
      goto LABEL_17;
    }

    v129 = *(v0 + 104);
    v47 = *(v0 + 64);
    v133 = v28;
    v48 = swift_slowAlloc();
    v126 = v44;
    v49 = swift_slowAlloc();
    v136 = v49;
    *v48 = 136315650;
    *(v48 + 4) = sub_20D9E0B38(0x69676552656D6F68, 0xEC00000029286E6FLL, &v136);
    *(v48 + 12) = 2080;
    *(v48 + 14) = sub_20D9E0B38(v37, v36, &v136);
    *(v48 + 22) = 2080;
    v50 = [*(v47 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home) name];
    v51 = sub_20DD64EB4();
    v52 = v37;
    v54 = v53;

    v55 = sub_20D9E0B38(v51, v54, &v136);

    *(v48 + 24) = v55;
    _os_log_impl(&dword_20D9BF000, v41, v42, "%s returning cached region code: %s for %s", v48, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v49, -1, -1);
    v56 = v48;
    v57 = v52;
    MEMORY[0x20F327D10](v56, -1, -1);

    v58 = v126;
    v59 = v129;
LABEL_12:
    v133(v58, v59);
LABEL_17:
    v81 = *(v0 + 152);
    v80 = *(v0 + 160);
    v83 = *(v0 + 136);
    v82 = *(v0 + 144);
    v85 = *(v0 + 120);
    v84 = *(v0 + 128);
    v87 = *(v0 + 88);
    v86 = *(v0 + 96);

    v88 = *(v0 + 8);

    return v88(v57, v36);
  }

  v60 = *&v33[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home];
  *(v0 + 192) = v60;
  v61 = [v60 location];
  *(v0 + 200) = v61;
  if (!v61)
  {
    v90 = *(v0 + 88);
    v91 = *(v0 + 96);
    v92 = *(v0 + 72);
    v93 = *(v0 + 80);
    sub_20DD63784();
    sub_20DD63774();
    (*(v93 + 8))(v90, v92);
    v94 = sub_20DD63764();
    v95 = *(v94 - 8);
    v96 = (*(v95 + 48))(v91, 1, v94);
    v97 = *(v0 + 96);
    if (v96 == 1)
    {
      sub_20D9D76EC(*(v0 + 96), &qword_27C8453A0, &qword_20DD96F18);
      v98 = 0;
      v36 = 0xE000000000000000;
    }

    else
    {
      v98 = sub_20DD63754();
      v36 = v105;
      (*(v95 + 8))(v97, v94);
    }

    v106 = *(v0 + 128);
    v107 = *(v0 + 64);
    v108 = *(v0 + 168);
    sub_20DD64C54();
    v109 = v107;

    v110 = sub_20DD64C24();
    v111 = sub_20DD65384();

    if (!os_log_type_enabled(v110, v111))
    {
      v121 = *(v0 + 176);
      v122 = *(v0 + 128);
      v57 = v98;
      v123 = *(v0 + 104);
      v124 = *(v0 + 112);

      v121(v122, v123);
      goto LABEL_17;
    }

    v112 = *(v0 + 192);
    v131 = *(v0 + 128);
    v133 = *(v0 + 176);
    v125 = *(v0 + 112);
    v128 = *(v0 + 104);
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v136 = v114;
    *v113 = 136315650;
    *(v113 + 4) = sub_20D9E0B38(0x69676552656D6F68, 0xEC00000029286E6FLL, &v136);
    *(v113 + 12) = 2080;
    *(v113 + 14) = sub_20D9E0B38(v98, v36, &v136);
    *(v113 + 22) = 2080;
    v115 = [v112 name];
    v116 = sub_20DD64EB4();
    v118 = v117;

    v119 = sub_20D9E0B38(v116, v118, &v136);

    *(v113 + 24) = v119;
    _os_log_impl(&dword_20D9BF000, v110, v111, "%s falling back to device region code: %s for %s", v113, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v114, -1, -1);
    v120 = v113;
    v57 = v98;
    MEMORY[0x20F327D10](v120, -1, -1);

    v59 = v128;
    v58 = v131;
    goto LABEL_12;
  }

  v62 = v61;
  v63 = *(v0 + 144);
  v64 = *(v0 + 64);
  v65 = v4;
  sub_20DD64C54();
  v66 = v64;
  v67 = sub_20DD64C24();
  v68 = sub_20DD65384();

  v69 = os_log_type_enabled(v67, v68);
  v70 = *(v0 + 144);
  v71 = *(v0 + 104);
  v72 = *(v0 + 112);
  if (v69)
  {
    v130 = *(v0 + 144);
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v136 = v74;
    *v73 = 136315394;
    *(v73 + 4) = sub_20D9E0B38(0x69676552656D6F68, 0xEC00000029286E6FLL, &v136);
    *(v73 + 12) = 2080;
    v127 = v71;
    v75 = [v60 name];
    v76 = sub_20DD64EB4();
    v134 = v28;
    v78 = v77;

    v79 = sub_20D9E0B38(v76, v78, &v136);

    *(v73 + 14) = v79;
    _os_log_impl(&dword_20D9BF000, v67, v68, "%s %s has a location. Reverse geocode started...", v73, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v74, -1, -1);
    MEMORY[0x20F327D10](v73, -1, -1);

    v134(v130, v127);
  }

  else
  {

    v28(v70, v71);
  }

  v99 = (*(v0 + 64) + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_geocoder);
  v100 = v99[3];
  v101 = v99[4];
  __swift_project_boxed_opaque_existential_0(v99, v100);
  v102 = *(v101 + 8);
  v135 = (v102 + *v102);
  v103 = v102[1];
  v104 = swift_task_alloc();
  *(v0 + 208) = v104;
  *v104 = v0;
  v104[1] = sub_20DAAFD58;

  return v135(v62, v100, v101);
}

uint64_t sub_20DAAFD58(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v7 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v5 = sub_20DAB04B8;
  }

  else
  {
    v5 = sub_20DAAFE6C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20DAAFE6C()
{
  v79 = v0;
  v1 = *(v0 + 216);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_15:
    v31 = *(v0 + 216);
    v23 = *(v0 + 200);

    goto LABEL_16;
  }

  if (v1 < 0)
  {
    v30 = *(v0 + 216);
  }

  result = sub_20DD655B4();
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x20F326680](0, *(v0 + 216));
    v68 = *(v0 + 216);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 216) + 32);
  }

  v4 = [v3 ISOcountryCode];

  if (!v4)
  {
    v23 = *(v0 + 200);
LABEL_16:

    v33 = *(v0 + 88);
    v32 = *(v0 + 96);
    v34 = *(v0 + 72);
    v35 = *(v0 + 80);
    sub_20DD63784();
    sub_20DD63774();
    (*(v35 + 8))(v33, v34);
    v36 = sub_20DD63764();
    v37 = *(v36 - 8);
    v38 = (*(v37 + 48))(v32, 1, v36);
    v39 = *(v0 + 96);
    if (v38 == 1)
    {
      sub_20D9D76EC(*(v0 + 96), &qword_27C8453A0, &qword_20DD96F18);
      v8 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      v8 = sub_20DD63754();
      v10 = v40;
      (*(v37 + 8))(v39, v36);
    }

    v41 = *(v0 + 128);
    v42 = *(v0 + 64);
    v43 = *(v0 + 168);
    sub_20DD64C54();
    v44 = v42;

    v45 = sub_20DD64C24();
    v46 = sub_20DD65384();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = *(v0 + 192);
      v75 = *(v0 + 128);
      v77 = *(v0 + 176);
      v71 = *(v0 + 112);
      v73 = *(v0 + 104);
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v78 = v49;
      *v48 = 136315650;
      *(v48 + 4) = sub_20D9E0B38(0x69676552656D6F68, 0xEC00000029286E6FLL, &v78);
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_20D9E0B38(v8, v10, &v78);
      *(v48 + 22) = 2080;
      v50 = [v47 name];
      v51 = sub_20DD64EB4();
      v53 = v52;

      v54 = sub_20D9E0B38(v51, v53, &v78);

      *(v48 + 24) = v54;
      _os_log_impl(&dword_20D9BF000, v45, v46, "%s falling back to device region code: %s for %s", v48, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v49, -1, -1);
      MEMORY[0x20F327D10](v48, -1, -1);

      v77(v75, v73);
    }

    else
    {
      v55 = *(v0 + 176);
      v56 = *(v0 + 128);
      v57 = *(v0 + 104);
      v58 = *(v0 + 112);

      v55(v56, v57);
    }

    goto LABEL_22;
  }

  v5 = *(v0 + 168);
  v6 = *(v0 + 136);
  v7 = *(v0 + 64);
  v8 = sub_20DD64EB4();
  v10 = v9;

  v11 = v5;
  sub_20DD64C54();
  v12 = v7;

  v13 = sub_20DD64C24();
  v14 = sub_20DD65384();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 192);
    v74 = *(v0 + 136);
    v76 = *(v0 + 176);
    v70 = *(v0 + 112);
    v72 = *(v0 + 104);
    v69 = *(v0 + 200);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v78 = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_20D9E0B38(0x69676552656D6F68, 0xEC00000029286E6FLL, &v78);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_20D9E0B38(v8, v10, &v78);
    *(v16 + 22) = 2080;
    v18 = [v15 name];
    v19 = sub_20DD64EB4();
    v21 = v20;

    v22 = sub_20D9E0B38(v19, v21, &v78);

    *(v16 + 24) = v22;
    _os_log_impl(&dword_20D9BF000, v13, v14, "%s Reverse geocode succeeded, region code: %s for %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v17, -1, -1);
    MEMORY[0x20F327D10](v16, -1, -1);

    v76(v74, v72);
  }

  else
  {
    v24 = *(v0 + 176);
    v25 = *(v0 + 136);
    v26 = *(v0 + 104);
    v27 = *(v0 + 112);

    v24(v25, v26);
  }

  v28 = (*(v0 + 64) + *(v0 + 184));
  v29 = v28[1];
  *v28 = v8;
  v28[1] = v10;

LABEL_22:
  v60 = *(v0 + 152);
  v59 = *(v0 + 160);
  v62 = *(v0 + 136);
  v61 = *(v0 + 144);
  v64 = *(v0 + 120);
  v63 = *(v0 + 128);
  v66 = *(v0 + 88);
  v65 = *(v0 + 96);

  v67 = *(v0 + 8);

  return v67(v8, v10);
}

uint64_t sub_20DAB04B8()
{
  v80 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 120);
  v3 = *(v0 + 64);
  v4 = *(v0 + 168);
  sub_20DD64C54();
  v5 = v3;
  v6 = v1;
  v7 = sub_20DD64C24();
  v8 = sub_20DD65384();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 224);
    v69 = v9;
    v70 = *(v0 + 200);
    v68 = *(v0 + 192);
    v75 = *(v0 + 120);
    v77 = *(v0 + 176);
    v71 = *(v0 + 112);
    v73 = *(v0 + 104);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v79 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_20D9E0B38(0x69676552656D6F68, 0xEC00000029286E6FLL, &v79);
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v13 = *(v0 + 16);
    v12 = *(v0 + 24);
    v14 = *(v0 + 32);
    v15 = sub_20DD659F4();
    v17 = sub_20D9E0B38(v15, v16, &v79);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2080;
    v18 = [v68 name];
    v19 = sub_20DD64EB4();
    v21 = v20;

    v22 = sub_20D9E0B38(v19, v21, &v79);

    *(v10 + 24) = v22;
    _os_log_impl(&dword_20D9BF000, v7, v8, "%s Reverse geocode error: %s for %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v11, -1, -1);
    MEMORY[0x20F327D10](v10, -1, -1);

    v77(v75, v73);
  }

  else
  {
    v23 = *(v0 + 224);
    v24 = *(v0 + 176);
    v26 = *(v0 + 112);
    v25 = *(v0 + 120);
    v27 = *(v0 + 104);

    v24(v25, v27);
  }

  v28 = *(v0 + 88);
  v29 = *(v0 + 96);
  v30 = *(v0 + 72);
  v31 = *(v0 + 80);
  sub_20DD63784();
  sub_20DD63774();
  (*(v31 + 8))(v28, v30);
  v32 = sub_20DD63764();
  v33 = *(v32 - 8);
  v34 = (*(v33 + 48))(v29, 1, v32);
  v35 = *(v0 + 96);
  if (v34 == 1)
  {
    sub_20D9D76EC(*(v0 + 96), &qword_27C8453A0, &qword_20DD96F18);
    v36 = 0;
    v37 = 0xE000000000000000;
  }

  else
  {
    v36 = sub_20DD63754();
    v37 = v38;
    (*(v33 + 8))(v35, v32);
  }

  v39 = v36;
  v40 = *(v0 + 128);
  v41 = *(v0 + 64);
  v42 = *(v0 + 168);
  sub_20DD64C54();
  v43 = v41;

  v44 = sub_20DD64C24();
  v45 = sub_20DD65384();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = *(v0 + 192);
    v76 = *(v0 + 128);
    v78 = *(v0 + 176);
    v72 = *(v0 + 112);
    v74 = *(v0 + 104);
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v79 = v48;
    *v47 = 136315650;
    *(v47 + 4) = sub_20D9E0B38(0x69676552656D6F68, 0xEC00000029286E6FLL, &v79);
    *(v47 + 12) = 2080;
    *(v47 + 14) = sub_20D9E0B38(v39, v37, &v79);
    *(v47 + 22) = 2080;
    v49 = [v46 name];
    v50 = sub_20DD64EB4();
    v52 = v51;

    v53 = sub_20D9E0B38(v50, v52, &v79);

    *(v47 + 24) = v53;
    _os_log_impl(&dword_20D9BF000, v44, v45, "%s falling back to device region code: %s for %s", v47, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v48, -1, -1);
    MEMORY[0x20F327D10](v47, -1, -1);

    v78(v76, v74);
  }

  else
  {
    v54 = *(v0 + 176);
    v55 = *(v0 + 128);
    v56 = *(v0 + 104);
    v57 = *(v0 + 112);

    v54(v55, v56);
  }

  v59 = *(v0 + 152);
  v58 = *(v0 + 160);
  v61 = *(v0 + 136);
  v60 = *(v0 + 144);
  v63 = *(v0 + 120);
  v62 = *(v0 + 128);
  v65 = *(v0 + 88);
  v64 = *(v0 + 96);

  v66 = *(v0 + 8);

  return v66(v39, v37);
}

uint64_t sub_20DAB0BE0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20DAB0C88;

  return sub_20DAAF09C();
}

uint64_t sub_20DAB0C88()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v4 = sub_20DD64E74();

  (v2)[2](v2, v4);

  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_20DAB0E10(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20DD64C44();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DAB0ED0, 0, 0);
}

uint64_t sub_20DAB0ED0()
{
  v1 = (v0[3] + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_geocoder);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_20DAB1008;
  v7 = v0[2];

  return v9(v7, v2, v3);
}

uint64_t sub_20DAB1008(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {
    v6 = *(v3 + 48);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20DAB1158, 0, 0);
  }
}

uint64_t sub_20DAB1158()
{
  v24 = v2;
  v3 = v2[8];
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_14:
    v18 = v2[8];

    goto LABEL_15;
  }

  if (v3 < 0)
  {
    v17 = v2[8];
  }

  if (!sub_20DD655B4())
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F326680](0, v2[8]);
    v22 = v2[8];
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_21;
    }

    v4 = *(v2[8] + 32);
  }

  v5 = [v4 ISOcountryCode];

  if (!v5)
  {
LABEL_15:
    v0 = 0;
    v1 = 0xE000000000000000;
    goto LABEL_16;
  }

  v0 = sub_20DD64EB4();
  v1 = v6;

  if (qword_280E01ED8 != -1)
  {
LABEL_21:
    swift_once();
  }

  v7 = v2[6];
  v8 = qword_280E03EB0;
  sub_20DD64C54();

  v9 = sub_20DD64C24();
  v10 = sub_20DD65384();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v2[5];
  v12 = v2[6];
  v14 = v2[4];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_20D9E0B38(0xD000000000000015, 0x800000020DD9AFD0, &v23);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_20D9E0B38(v0, v1, &v23);
    _os_log_impl(&dword_20D9BF000, v9, v10, "%s returning country code: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v16, -1, -1);
    MEMORY[0x20F327D10](v15, -1, -1);
  }

  (*(v13 + 8))(v12, v14);
LABEL_16:
  v19 = v2[6];

  v20 = v2[1];

  return v20(v0, v1);
}

uint64_t sub_20DAB140C()
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
  aBlock[4] = sub_20DAB5C98;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20DA89A38;
  aBlock[3] = &block_descriptor_215;
  v13 = _Block_copy(aBlock);
  v14 = v0;

  sub_20DD64D84();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20DAB5CB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844F20, &unk_20DD96990);
  sub_20DA93C1C();
  sub_20DD65504();
  MEMORY[0x20F326330](0, v10, v5, v13);
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

void sub_20DAB16A0()
{
  v0 = [objc_opt_self() sharedDispatcher];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3[4] = sub_20DAB5D10;
  v3[5] = v1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_20DA2E46C;
  v3[3] = &block_descriptor_221;
  v2 = _Block_copy(v3);

  [v0 dispatchHomeObserverMessage:v2 sender:0];
  _Block_release(v2);
}

void sub_20DAB17A8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home);

    if ([a1 respondsToSelector_])
    {
      [a1 homeDidUpdateHomeEnergyManagerEnabled_];
    }
  }
}

uint64_t sub_20DAB1848(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20DAB1868, 0, 0);
}

uint64_t sub_20DAB1868()
{
  sub_20DD64BC4();
  v1 = sub_20DD64B94();
  v0[4] = v1;
  v2 = *(MEMORY[0x277D18270] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_20DA085C0;
  v5 = v0[2];
  v4 = v0[3];

  return MEMORY[0x282172650](v5, v4, v1);
}

uint64_t sub_20DAB1AA0(int a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v2[3] = sub_20DD64EB4();
  v2[4] = v3;

  return MEMORY[0x2822009F8](sub_20DAB1B1C, 0, 0);
}

uint64_t sub_20DAB1B1C()
{
  sub_20DD64BC4();
  v1 = sub_20DD64B94();
  v0[5] = v1;
  v2 = *(MEMORY[0x277D18270] + 4);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_20DAB1BD0;
  v5 = v0[3];
  v4 = v0[4];

  return MEMORY[0x282172650](v5, v4, v1);
}

uint64_t sub_20DAB1BD0(void *a1)
{
  v4 = *(*v2 + 48);
  v5 = *v2;
  *(v5 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20DAB1D4C, 0, 0);
  }

  else
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 16);

    (v7)[2](v7, a1, 0);
    _Block_release(v7);

    v8 = *(v5 + 8);

    return v8();
  }
}

uint64_t sub_20DAB1D4C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  v4 = sub_20DD63494();

  (v3)[2](v3, 0, v4);
  _Block_release(v3);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_20DAB1DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 128) = v22;
  *(v9 + 136) = v8;
  *(v9 + 96) = v20;
  *(v9 + 112) = v21;
  *(v9 + 80) = v19;
  *(v9 + 64) = a7;
  *(v9 + 72) = a8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v12 = sub_20DD64C44();
  *(v9 + 144) = v12;
  v13 = *(v12 - 8);
  *(v9 + 152) = v13;
  v14 = *(v13 + 64) + 15;
  *(v9 + 160) = swift_task_alloc();
  *(v9 + 168) = swift_task_alloc();
  sub_20DD64AE4();
  v15 = *(MEMORY[0x277D07650] + 4);

  v16 = swift_task_alloc();
  *(v9 + 176) = v16;
  *v16 = v9;
  v16[1] = sub_20DAB1F50;

  return MEMORY[0x28215C940](a1, a2);
}

uint64_t sub_20DAB1F50(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = a1;

  return MEMORY[0x2822009F8](sub_20DAB2050, 0, 0);
}

uint64_t sub_20DAB2050()
{
  if (*(v0 + 184))
  {
    v1 = *(MEMORY[0x277D07658] + 4);
    v28 = *MEMORY[0x277D07658] + MEMORY[0x277D07658];
    v2 = swift_task_alloc();
    *(v0 + 192) = v2;
    *v2 = v0;
    v2[1] = sub_20DAB22CC;
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v32 = *(v0 + 128);
    v30 = *(v0 + 96);
    v31 = *(v0 + 112);

    __asm { BR              X8 }
  }

  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 160);
  v12 = *(v0 + 24);
  v13 = qword_280E03EB0;
  sub_20DD64C54();

  v14 = sub_20DD64C24();
  v15 = sub_20DD65364();

  v16 = os_log_type_enabled(v14, v15);
  v18 = *(v0 + 152);
  v17 = *(v0 + 160);
  v19 = *(v0 + 144);
  if (v16)
  {
    v21 = *(v0 + 16);
    v20 = *(v0 + 24);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v33 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_20D9E0B38(v21, v20, &v33);
    _os_log_impl(&dword_20D9BF000, v14, v15, "Error fetching Energy Site for %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x20F327D10](v23, -1, -1);
    MEMORY[0x20F327D10](v22, -1, -1);
  }

  (*(v18 + 8))(v17, v19);
  v25 = *(v0 + 160);
  v24 = *(v0 + 168);

  v26 = *(v0 + 8);

  return v26(0);
}

uint64_t sub_20DAB22CC(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v7 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v5 = sub_20DAB27DC;
  }

  else
  {
    v5 = sub_20DAB23E4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20DAB23E4()
{
  v22 = v0;
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v2 = qword_280E03EB0;
  sub_20DD64C54();
  v3 = sub_20DD64C24();
  v4 = sub_20DD65384();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 216);
    v6 = *(v0 + 168);
    v7 = *(v0 + 144);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_20D9E0B38(0xD00000000000008DLL, 0x800000020DD9AFF0, &v21);
    *(v9 + 12) = 1024;
    *(v9 + 14) = v5;
    _os_log_impl(&dword_20D9BF000, v3, v4, "%s Created utility subscription: %{BOOL}d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F327D10](v10, -1, -1);
    MEMORY[0x20F327D10](v9, -1, -1);

    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v11 = *(v0 + 168);
    v12 = *(v0 + 144);
    v13 = *(v0 + 152);

    (*(v13 + 8))(v11, v12);
  }

  if (*(v0 + 216) == 1)
  {
    v14 = swift_task_alloc();
    *(v0 + 208) = v14;
    *v14 = v0;
    v14[1] = sub_20DAB2668;
    v15 = *(v0 + 136);

    return sub_20DAA53D0(1);
  }

  else
  {
    v17 = *(v0 + 184);

    v19 = *(v0 + 160);
    v18 = *(v0 + 168);

    v20 = *(v0 + 8);

    return v20(0);
  }
}

uint64_t sub_20DAB2668()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DAB2764, 0, 0);
}

uint64_t sub_20DAB2764()
{
  v1 = v0[23];

  v3 = v0[20];
  v2 = v0[21];

  v4 = v0[1];

  return v4(1);
}

uint64_t sub_20DAB27DC()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];

  v4 = v0[1];
  v5 = v0[25];

  return v4(0);
}

uint64_t sub_20DAB2A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, void *a10)
{
  v10[2] = a10;
  v11 = sub_20DD636C4();
  v10[3] = v11;
  v12 = *(v11 - 8);
  v10[4] = v12;
  v13 = *(v12 + 64) + 15;
  v10[5] = swift_task_alloc();
  v10[6] = _Block_copy(a9);
  v14 = sub_20DD64EB4();
  v33 = v15;
  v34 = v14;
  v10[7] = v15;
  v16 = sub_20DD64EB4();
  v31 = v17;
  v32 = v16;
  v10[8] = v17;
  v30 = sub_20DD64EB4();
  v19 = v18;
  v10[9] = v18;
  v28 = sub_20DD64EB4();
  v21 = v20;
  v10[10] = v20;
  sub_20DD63674();
  sub_20DD64EB4();
  v10[11] = v22;
  sub_20DD64EB4();
  v10[12] = v23;
  if (a8)
  {
    sub_20DD64EB4();
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v10[13] = v25;
  a10;
  v26 = swift_task_alloc();
  v10[14] = v26;
  *v26 = v10;
  v26[1] = sub_20DAB2C64;

  return sub_20DAB1DFC(v34, v33, v32, v31, v30, v19, v28, v21);
}

uint64_t sub_20DAB2C64(char a1)
{
  v20 = v1;
  v21 = *v2;
  v3 = *v2;
  v4 = *(*v2 + 112);
  v5 = *v2;

  v19 = v3[13];
  v6 = v3[12];
  v7 = v3[11];
  v8 = v3[10];
  v9 = v3[9];
  v10 = v3[8];
  v11 = v3[7];
  v12 = v3[6];
  v13 = v3[2];
  (*(v3[4] + 8))(v3[5], v3[3]);

  if (v20)
  {
    v14 = sub_20DD63494();

    (*(v12 + 16))(v12, 0, v14);
  }

  else
  {
    (*(v12 + 16))(v12, a1 & 1, 0);
  }

  v15 = v21[5];
  _Block_release(v21[6]);

  v16 = *(v5 + 8);

  return v16();
}

id HFHomeEnergyManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HFHomeEnergyManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HFHomeEnergyManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20DAB3098()
{
  result = sub_20DD64E74();
  qword_280E020D0 = result;
  return result;
}

uint64_t sub_20DAB30F4()
{
  result = sub_20DD64E74();
  qword_280E020B8 = result;
  return result;
}

uint64_t sub_20DAB3150(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return MEMORY[0x2822009F8](sub_20DAB3174, 0, 0);
}

uint64_t sub_20DAB3174()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DAB329C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8453B0, &qword_20DD97008);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DAA8B70;
  v0[13] = &block_descriptor_206;
  v0[14] = v3;
  [v1 reverseGeocodeLocation:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DAB329C()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v0 + 144);
    v6 = *(v1 + 8);
    v7 = *v0;

    return v6(v5);
  }
}

uint64_t sub_20DAB33DC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_20D9D77C4;

  return v7();
}

uint64_t sub_20DAB34C4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_20D9C76B4;

  return v8();
}

uint64_t sub_20DAB35AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_20DA9A680(a3, v25 - v11);
  v13 = sub_20DD65114();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20D9D76EC(v12, &qword_27C8443F0, &qword_20DD93820);
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

  sub_20DD65104();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_20DD65094();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_20DD64EF4() + 32;
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

    sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);

    return v23;
  }

LABEL_8:
  sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);
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

id sub_20DAB3898(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v15[3] = sub_20D9D7510(0, &unk_280E02148, 0x277CBFBE8);
  v15[4] = &protocol witness table for CLGeocoder;
  v15[0] = a2;
  v14[3] = type metadata accessor for RealUtilityServices();
  v14[4] = &protocol witness table for RealUtilityServices;
  v14[0] = a3;
  v8 = &a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedRegionCode];
  *v8 = 0;
  v8[1] = 0;
  a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_isGridForecastSupported] = 2;
  *&a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_temporaryLocation] = 0;
  v9 = &a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_homeElectricitySupportedCache];
  *v9 = 0xD00000000000001DLL;
  v9[1] = 0x800000020DD9B2D0;
  v10 = &a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasUtilitySubscriptionCache];
  *v10 = 0xD00000000000001ELL;
  v10[1] = 0x800000020DD9B500;
  a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedHasEnergySite] = 0;
  a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasElectricityRatesEnabled] = 0;
  *&a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home] = a1;
  sub_20D9FF4D0(v15, &a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_geocoder]);
  sub_20D9FF4D0(v14, &a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_utilityService]);
  v13.receiver = a4;
  v13.super_class = type metadata accessor for HFHomeEnergyManager();
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v14);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return v11;
}

id sub_20DAB3A08(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[3] = a5;
  v24[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  v23[3] = a6;
  v23[4] = a8;
  v16 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a6 - 8) + 32))(v16, a3, a6);
  v17 = &a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedRegionCode];
  *v17 = 0;
  v17[1] = 0;
  a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_isGridForecastSupported] = 2;
  *&a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_temporaryLocation] = 0;
  v18 = &a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_homeElectricitySupportedCache];
  *v18 = 0xD00000000000001DLL;
  v18[1] = 0x800000020DD9B2D0;
  v19 = &a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasUtilitySubscriptionCache];
  *v19 = 0xD00000000000001ELL;
  v19[1] = 0x800000020DD9B500;
  a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedHasEnergySite] = 0;
  a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasElectricityRatesEnabled] = 0;
  *&a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home] = a1;
  sub_20D9FF4D0(v24, &a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_geocoder]);
  sub_20D9FF4D0(v23, &a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_utilityService]);
  v22.receiver = a4;
  v22.super_class = type metadata accessor for HFHomeEnergyManager();
  v20 = objc_msgSendSuper2(&v22, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v20;
}

id sub_20DAB3BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a7;
  v26 = a8;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v15);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = objc_allocWithZone(type metadata accessor for HFHomeEnergyManager());
  (*(v19 + 16))(v22, a2, a5);
  (*(v13 + 16))(v17, a3, a6);
  return sub_20DAB3A08(a1, v22, v17, v23, a5, a6, v25, v26);
}

uint64_t sub_20DAB3D64()
{
  v0 = sub_20DD63794();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8453A0, &qword_20DD96F18);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  sub_20DD63784();
  sub_20DD63774();
  (*(v1 + 8))(v4, v0);
  v9 = sub_20DD63764();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_20D9D76EC(v8, &qword_27C8453A0, &qword_20DD96F18);
  }

  else
  {
    sub_20DD63754();
    (*(v10 + 8))(v8, v9);
  }

  v11 = sub_20DD638C4();

  return v11 & 1;
}

uint64_t keypath_get_33Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t dispatch thunk of Geocoding.reverseGeocodeLocation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_20D9D77BC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of HFHomeEnergyManager.updateHomeEnergyAvailableFeatures()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x130);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9D7010;

  return v6();
}

uint64_t dispatch thunk of HFHomeEnergyManager.updateIncludeElectricityRates(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x1A8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20DAB5D28;

  return v8(a1);
}

uint64_t dispatch thunk of HFHomeEnergyManager.isHomeElectricitySupportedInHomeRegion()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1B0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DAB5D28;

  return v6();
}

uint64_t dispatch thunk of HFHomeEnergyManager.utilityDetails()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1B8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DA473A0;

  return v6();
}

uint64_t dispatch thunk of HFHomeEnergyManager.revokeSubscription()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1C0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DAB5D28;

  return v6();
}

uint64_t dispatch thunk of HFHomeEnergyManager.isGridForecastSupportedInHomeRegion()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1D0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DA473A0;

  return v6();
}

uint64_t dispatch thunk of HFHomeEnergyManager.homeRegion()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1D8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DAB4DFC;

  return v6();
}

uint64_t sub_20DAB4DFC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of HFHomeEnergyManager.lookupCountryCode(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x1E8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20DAB5074;

  return v8(a1);
}

uint64_t sub_20DAB5074(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of static HFHomeEnergyManager.utilityConfiguration(_:)(uint64_t a1, uint64_t a2)
{
  v9 = (*(v2 + 504) + **(v2 + 504));
  v6 = *(*(v2 + 504) + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20D9D7010;

  return v9(a1, a2);
}

uint64_t dispatch thunk of HFHomeEnergyManager.createUtilitySubscription(homeID:utilityID:serviceLocationID:accessToken:accessTokenExpirationDate:refreshToken:address:utilityCustomerName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = *((*MEMORY[0x277D85000] & *v15) + 0x200);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v16 + 16) = v20;
  *v20 = v16;
  v20[1] = sub_20D9D77BC;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_20DAB5454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844500, &qword_20DD97000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20DAB54C4()
{
  v11 = v0[3];
  v12 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[11];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_20D9D77C4;

  JUMPOUT(0x20DAB2A3CLL);
}

uint64_t sub_20DAB55B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D9D77C4;

  return sub_20DA207C8(a1, v5);
}

uint64_t sub_20DAB5670(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D9C76B4;

  return sub_20DA207C8(a1, v5);
}

uint64_t sub_20DAB5728()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9D77C4;

  return sub_20DAB0BE0(v2, v3);
}

uint64_t sub_20DAB57D4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9C76B4;

  return sub_20DAAEEAC(v2, v3);
}

uint64_t sub_20DAB5880()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9D77C4;

  return sub_20DAAE828(v2, v3);
}

uint64_t sub_20DAB592C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9D77C4;

  return sub_20DAAD194(v2, v3);
}

uint64_t sub_20DAB59D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9D77C4;

  return sub_20DAAA934(v2, v3);
}

uint64_t sub_20DAB5A84()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20D9D77C4;

  return sub_20DAA9BC0(v2, v4, v3);
}

uint64_t sub_20DAB5B38()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9D77C4;

  return sub_20DAA4AA8(v2, v3);
}

uint64_t sub_20DAB5BE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20D9D77C4;

  return sub_20DAB1AA0(v2, v3);
}

uint64_t block_copy_helper_213(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20DAB5CB8()
{
  result = qword_280E02168;
  if (!qword_280E02168)
  {
    sub_20DD64D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E02168);
  }

  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DABE150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DAC0B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DAC47B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_20DAC5284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DAC5FDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_20DAC8FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DACB360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DACCBD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void sub_20DAD3FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HFPrimaryStateFromBOOL(int a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t HFToggledPrimaryState(uint64_t a1)
{
  if (a1 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 1);
  }
}

__CFString *NSStringFromHFRemoteAccessState(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"NotSet";
  }

  else
  {
    return off_277DF3928[a1 - 1];
  }
}

__CFString *HFLocalizedStringFromHMHomeInvitationState(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    v2 = &stru_2824B1A78;
  }

  else
  {
    v2 = _HFLocalizedStringWithDefaultValue(off_277DF3948[a1 - 1], off_277DF3948[a1 - 1], 1);
  }

  return v2;
}

void sub_20DAD73B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HFCAPackageStateForHFPrimaryState(uint64_t a1)
{
  v1 = &HFCAPackageStateOn;
  if (a1 != 2)
  {
    v1 = &HFCAPackageStateOff;
  }

  return *v1;
}

__CFString *HFVibrantStateForHFCAPackageState(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (HFCAPackageStateOn == v1)
  {
    v3 = HFCAPackageStateOnVibrant;
  }

  else if (HFCAPackageStateActivated == v1)
  {
    v3 = HFCAPackageStateActivatedVibrant;
  }

  else
  {
    v3 = v1;
  }

  v4 = v3;

  return v3;
}

__CFString *HFCAPackageAlternateStateForHFCAPackageState(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (HFCAPackageStateOn == v1)
  {
    v3 = HFCAPackageStateOnAlternate;
  }

  else if (HFCAPackageStateOff == v1)
  {
    v3 = HFCAPackageStateOffAlternate;
  }

  else if (HFCAPackageStateActivated == v1)
  {
    v3 = HFCAPackageStateActivatedAlternate;
  }

  else
  {
    v3 = v1;
  }

  v4 = v3;

  return v3;
}

void sub_20DADC48C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_20DADD594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DADD830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DAE6568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DAEA430(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DAEAC6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DAEB294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DAF07F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DAF0990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DAF68F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void FetchNaturalLightColorTemperatureForBrightness(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __FetchNaturalLightColorTemperatureForBrightness_block_invoke;
  v9[3] = &unk_277DF49C0;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  [v8 fetchNaturalLightColorTemperatureForBrightness:a1 completion:v9];
}

void __FetchNaturalLightColorTemperatureForBrightness_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v12 = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Fetch natural light color temp for profile: %@ %@ error: %@", &v12, 0x20u);
    }

    v9 = 0;
  }

  else
  {
    [v5 floatValue];
    v9 = HFGetUIColorFromMired(v10);
  }

  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

id _HFFaucetIconSet()
{
  v0 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierFaucet"];
  v1 = [HFServiceIconSet setWithDefaultIcon:v0];

  return v1;
}

id _HFSprinklerIconSet()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = @"HFCAPackageIconIdentifierIrrigationController";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v1 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierSprinkler"];
  v2 = [v0 na_map:&__block_literal_global_223];
  v3 = [HFServiceIconSet setWithDefaultIcon:v1 alternateIcons:v2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

id _HFFanServiceIconSet()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"HFCAPackageIconIdentifierFloorFan";
  v6[1] = @"HFCAPackageIconIdentifierCeilingFan";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v1 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierDeskFan"];
  v2 = [v0 na_map:&__block_literal_global_223];
  v3 = [HFServiceIconSet setWithDefaultIcon:v1 alternateIcons:v2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

id _HFThermostatIconSet()
{
  v0 = +[HFFormatterManager sharedInstance];
  v1 = [v0 temperatureFormatter];

  [v1 setInputIsCelsius:0];
  v2 = [v1 stringForObjectValue:&unk_282523568];
  v3 = [[HFTemperatureIconDescriptor alloc] initWithFormattedTemperature:v2 heatingCoolingMode:2 targetHeatingCoolingMode:2];
  v4 = [HFServiceIconSet setWithDefaultIcon:v3];

  return v4;
}

id _HFProgrammableSwitchIconSet()
{
  v0 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierProgrammableSwitch"];
  v1 = [HFServiceIconSet setWithDefaultIcon:v0];

  return v1;
}

id _HFNetworkRouterIconSet()
{
  v0 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierWiFiRouter"];
  v1 = [HFServiceIconSet setWithDefaultIcon:v0];

  return v1;
}

void sub_20DAFD2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DB00A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DB059AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_20DB0A3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB0B2A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB0B77C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_20DB0BEF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DB0C214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DB0D350(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DB0DF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HMPresenceEventUserTypeFromSelectedUserCollectionType(unint64_t a1)
{
  if (a1 < 3)
  {
    return qword_20DD972F8[a1];
  }

  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  NSLog(&cfstr_UnexpectedUser.isa, v2);

  return 2;
}

uint64_t HFSelectedUserCollectionTypeFromPresenceEventUserType(uint64_t a1)
{
  if ((a1 - 1) < 3)
  {
    return qword_20DD97310[a1 - 1];
  }

  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  NSLog(&cfstr_UnknownPresenc.isa, v2);

  return 0;
}

void sub_20DB15978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

__CFString *HFStringFromHFLocationEventType(unint64_t a1)
{
  if (a1 < 3)
  {
    return off_277DF56D8[a1];
  }

  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull HFStringFromHFLocationEventType(HFLocationEventType)"];
  [v2 handleFailureInFunction:v3 file:@"HFLocationEventAdditions.m" lineNumber:29 description:@"Unknown HFLocationEventType"];

  return &stru_2824B1A78;
}

__CFString *NSStringFromHFPresenceEventActivationGranularity(uint64_t a1)
{
  v1 = @"(unknown)";
  if (!a1)
  {
    v1 = @"ActivationGranularityUser";
  }

  if (a1 == 1)
  {
    return @"ActivationGranularityHome";
  }

  else
  {
    return v1;
  }
}

void sub_20DB1BA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB1C05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DB1CE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DB1F014(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DB202C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DB20838(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DB213A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, char a23)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_20DB2232C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_20DB23658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DB2445C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DB2465C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DB24930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DB24AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromHMHomeManagerDataSyncState(unint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1 >= 7)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to stringify HMHomeManagerDataSyncState: %lu", a1];
    v2 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = v1;
      _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    NSLog(&stru_2824B1958.isa, v1);
  }

  else
  {
    v1 = off_277DF5EC0[a1];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v1;
}

__CFString *NSStringFromHMSoftwareUpdateState(unint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1 >= 6)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to stringify HMSoftwareUpdateState: %lu", a1];
    v2 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = v1;
      _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    NSLog(&stru_2824B1958.isa, v1);
  }

  else
  {
    v1 = off_277DF5EF8[a1];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v1;
}

__CFString *NSStringFromHMSoftwareUpdateStatusV2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((a1 - 1) >= 0x12)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"HMSoftwareUpdateStatusV2(%ld)", a1];
    v2 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = v1;
      _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    NSLog(&stru_2824B1958.isa, v1);
  }

  else
  {
    v1 = off_277DF5F28[a1 - 1];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v1;
}

__CFString *NSStringFromHMHomeInvitationState(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((a1 - 1) >= 7)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to stringify HMHomeInvitationState: %lu", a1];
    v2 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = v1;
      _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    NSLog(&stru_2824B1958.isa, v1);
  }

  else
  {
    v1 = off_277DF5FB8[a1 - 1];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v1;
}

void sub_20DB2B8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = HFLogForCategory(0x45uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v9;
      _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "Tried to decode something that didn't want to be decoded... : %@", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x20DB2B8B0);
  }

  _Unwind_Resume(exception_object);
}

__CFString *NSStringFromNSPropertyListFormat(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  switch(a1)
  {
    case 1:
      v1 = @"NSPropertyListOpenStepFormat";
      break;
    case 200:
      v1 = @"NSPropertyListBinaryFormat_v1_0";
      break;
    case 100:
      v1 = @"NSPropertyListXMLFormat_v1_0";
      break;
    default:
      v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to stringify NSPropertyListFormat: %lu", a1];
      v2 = HFLogForCategory(0x27uLL);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v6 = v1;
        _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      NSLog(&stru_2824B1958.isa, v1);
      break;
  }

  v3 = *MEMORY[0x277D85DE8];

  return v1;
}

void sub_20DB2BC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = HFLogForCategory(0x45uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v9;
      _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "Tried to decode something that didn't want to be decoded... : %@", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x20DB2BC0CLL);
  }

  _Unwind_Resume(exception_object);
}

__CFString *NSStringFromHMUserActionPredictionType(unint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1 >= 5)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to stringify HMUserActionPredictionType: %lu", a1];
    v2 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = v1;
      _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    NSLog(&stru_2824B1958.isa, v1);
  }

  else
  {
    v1 = off_277DF5FF0[a1];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v1;
}

__CFString *NSStringFromHMMediaPlaybackState(unint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1 >= 7)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to stringify HMMediaPlaybackState: %lu", a1];
    v2 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = v1;
      _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    NSLog(&stru_2824B1958.isa, v1);
  }

  else
  {
    v1 = off_277DF6018[a1];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v1;
}

__CFString *NSStringFromHMCameraStreamState(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((a1 - 1) >= 4)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to stringify HMCameraStreamState: %lu", a1];
    v2 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = v1;
      _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    NSLog(&stru_2824B1958.isa, v1);
  }

  else
  {
    v1 = off_277DF6050[a1 - 1];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v1;
}

__CFString *NSStringFromHMSymptomFixSessionState(unint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1 >= 3)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to stringify HMSymptomFixSessionState: %lu", a1];
    v2 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = v1;
      _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    NSLog(&stru_2824B1958.isa, v1);
  }

  else
  {
    v1 = off_277DF6070[a1];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v1;
}

__CFString *NSStringFromConfigurationState(unint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1 >= 4)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to stringify HMServiceConfigurationState: %lu", a1];
    v2 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = v1;
      _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    NSLog(&stru_2824B1958.isa, v1);
  }

  else
  {
    v1 = off_277DF6088[a1];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v1;
}

__CFString *NSStringFromBooleanValue(int a1)
{
  if (a1)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

__CFString *NSStringFromNSOperationQueuePriority(uint64_t a1)
{
  v1 = __ROR8__(a1 + 8, 2);
  if (v1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_277DF60A8[v1];
  }
}

id HFDescriptionForBitmask(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __HFDescriptionForBitmask_block_invoke;
  v18 = &unk_277DF5EA0;
  v5 = v3;
  v20 = v5;
  v6 = v4;
  v19 = v6;
  v7 = &v15;
  if (a1)
  {
    v8 = 0;
    v21 = 0;
    v9 = vcnt_s8(a1);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.i32[0];
    do
    {
      if (((1 << v8) & a1) != 0)
      {
        (v17)(v7);
        if (v21)
        {
          break;
        }

        --v10;
      }

      if (v8 > 0x3E)
      {
        break;
      }

      ++v8;
    }

    while (v10 > 0);
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = [v6 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"{%@}", v12, v15, v16];

  return v13;
}

void __HFDescriptionForBitmask_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(a1 + 40) + 16))();
  v5 = *(a1 + 32);
  v7 = v4;
  if (v4)
  {
    [v5 addObject:v4];
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%lu)", a2];
    [v5 addObject:v6];
  }
}

void sub_20DB2DE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB2E1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DB3201C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_20DB34F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44)
{
  objc_destroyWeak((v44 + 48));
  objc_destroyWeak((v46 + 48));
  objc_destroyWeak((v45 + 48));
  objc_destroyWeak(&a44);
  objc_destroyWeak((v47 - 176));
  _Unwind_Resume(a1);
}

void sub_20DB3BB18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB3E844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB3F528(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_20DB3FA00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB42B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB46CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DB46EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DB470C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DB4F5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromHMSymptomType(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1 - 1;
  result = @"HMSymptomTypeNeediCloudCredential";
  switch(v1)
  {
    case 0:
      break;
    case 1:
      result = @"HMSymptomTypeNeediTunesCredential";
      break;
    case 2:
      result = @"HMSymptomTypeNeedHomeKitFix";
      break;
    case 3:
      result = @"HMSymptomTypeNeedWiFiFix";
      break;
    case 4:
      result = @"HMSymptomTypeNeedWiFiPerformanceFix";
      break;
    case 5:
      result = @"HMSymptomTypeNeedInternetFix";
      break;
    case 6:
      result = @"HMSymptomTypeNeedHardwareFix";
      break;
    case 7:
      result = @"HMSymptomTypeStereoVersionMismatch";
      break;
    case 8:
      result = @"HMSymptomTypeStereoNotFound";
      break;
    case 9:
      result = @"HMSymptomTypeStereoError";
      break;
    case 10:
      result = @"HMSymptomTypeWiFiNetworkMismatch";
      break;
    case 11:
      result = @"HMSymptomTypeNoConfiguredTargets";
      break;
    case 12:
      result = @"HMSymptomTypeVPNProfileExpired";
      break;
    case 13:
      result = @"HMSymptomTypeNeed8021xNetworkFix";
      break;
    case 14:
      result = @"HMSymptomTypeNeedWiFiSecurityFix";
      break;
    case 15:
      result = @"HMSymptomTypeNeedNetworkProfileFix";
      break;
    case 16:
      result = @"HMSymptomTypeNeedNetworkProfileInstall";
      break;
    case 17:
      result = @"HMSymptomTypeNetworkNotShareable";
      break;
    case 18:
      result = @"HMSymptomTypeNeedCaptiveLeaseRenewal";
      break;
    case 19:
      result = @"HMSymptomTypeNeedCDPFix";
      break;
    case 20:
      result = @"HMSymptomTypePrimaryResidentUnreachable";
      break;
    default:
      if (@"HMSymptomTypeNeediCloudCredential" == 999)
      {
        result = @"HMSymptomTypeNeedGeneralFix";
      }

      else if (@"HMSymptomTypeNeediCloudCredential" == 1000)
      {
        result = @"HMSymptomTypeFixInProgress";
      }

      else
      {
        v3 = HFLogForCategory(0);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          v5 = 136315394;
          v6 = "NSString * _Nonnull NSStringFromHMSymptomType(HMSymptomType)";
          v7 = 2048;
          v8 = @"HMSymptomTypeNeediCloudCredential";
          _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "%s: Unhandled symptom type: %ld", &v5, 0x16u);
        }

        result = @"HMSymptomType??????";
      }

      break;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t NSStringToHMSymptomType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"HMSymptomTypeNeediCloudCredential"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"HMSymptomTypeNeediTunesCredential"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"HMSymptomTypeNeedHomeKitFix"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"HMSymptomTypeNeedWiFiFix"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"HMSymptomTypeNeedWiFiPerformanceFix"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"HMSymptomTypeNeedInternetFix"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"HMSymptomTypeNeedHardwareFix"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"HMSymptomTypeStereoVersionMismatch"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"HMSymptomTypeStereoNotFound"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"HMSymptomTypeStereoError"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"HMSymptomTypeWiFiNetworkMismatch"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"HMSymptomTypeFixInProgress"])
  {
    v2 = 1000;
  }

  else
  {
    if (([v1 isEqualToString:@"HMSymptomTypeNeedGeneralFix"] & 1) == 0)
    {
      if ([v1 isEqualToString:@"HMSymptomTypeNoConfiguredTargets"])
      {
        v2 = 12;
        goto LABEL_45;
      }

      if ([v1 isEqualToString:@"HMSymptomTypeVPNProfileExpired"])
      {
        v2 = 13;
        goto LABEL_45;
      }

      if ([v1 isEqualToString:@"HMSymptomTypeNeed8021xNetworkFix"])
      {
        v2 = 14;
        goto LABEL_45;
      }

      if ([v1 isEqualToString:@"HMSymptomTypeNeedWiFiSecurityFix"])
      {
        v2 = 15;
        goto LABEL_45;
      }

      if ([v1 isEqualToString:@"HMSymptomTypeNeedNetworkProfileFix"])
      {
        v2 = 16;
        goto LABEL_45;
      }

      if ([v1 isEqualToString:@"HMSymptomTypeNeedNetworkProfileInstall"])
      {
        v2 = 17;
        goto LABEL_45;
      }

      if ([v1 isEqualToString:@"HMSymptomTypeNetworkNotShareable"])
      {
        v2 = 18;
        goto LABEL_45;
      }

      if ([v1 isEqualToString:@"HMSymptomTypeNeedCaptiveLeaseRenewal"])
      {
        v2 = 19;
        goto LABEL_45;
      }

      if ([v1 isEqualToString:@"HMSymptomTypeNeedCDPFix"])
      {
        v2 = 20;
        goto LABEL_45;
      }

      v4 = [MEMORY[0x277CCA890] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"HMSymptomType NSStringToHMSymptomType(NSString *__strong _Nonnull)"];
      [v4 handleFailureInFunction:v5 file:@"HMSymptomsHandler+HFAdditions.m" lineNumber:154 description:{@"Unsupported Symptom: %@", v1}];
    }

    v2 = 999;
  }

LABEL_45:

  return v2;
}

void sub_20DB5FE74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB65744(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_20DB65A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DB67F2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_20DB68BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromHFControlItemCharacteristicUsage(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_277DF7A78[a1];
  }
}

void sub_20DB6B798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB6D6C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB6DF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a14, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DB71208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB72C50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *HF_HomeAccessNotAllowedReasonCodeString(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 8 && ((0x8Bu >> v2))
  {
    v3 = off_277DF8660[v2];
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"HMHomeAccessNotAllowedReasonCode-NotDefined (%lu)", a1];
  }

  return v3;
}

void sub_20DB75E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB76530(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}