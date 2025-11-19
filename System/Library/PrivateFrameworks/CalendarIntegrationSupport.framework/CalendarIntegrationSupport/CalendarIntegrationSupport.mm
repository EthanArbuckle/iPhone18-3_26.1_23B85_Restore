void sub_24279CEEC(_BYTE *a1)
{
  if (*a1 == 1)
  {
    sub_24279D02C(a1);
  }

  else
  {
    if (qword_281349520 != -1)
    {
      swift_once();
    }

    v2 = sub_2427B8F0C();
    __swift_project_value_buffer(v2, qword_281349DA8);
    v3 = sub_2427B8EEC();
    v4 = sub_2427B90CC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24279B000, v3, v4, "Reminders changed prior to starting; scheduling a catch-up sync for after we're started", v5, 2u);
      MEMORY[0x245D19310](v5, -1, -1);
    }

    a1[1] = 1;
  }
}

uint64_t sub_24279D02C(uint64_t a1)
{
  v3 = os_transaction_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0850, &qword_2427BAF98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2427BAF20;
  *(inited + 32) = 0x746361736E617274;
  *(inited + 40) = 0xEB000000006E6F69;
  *(inited + 48) = v3;
  swift_unknownObjectRetain();
  v5 = sub_24279D160(inited);
  swift_setDeallocating();
  sub_24279D394(inited + 32);
  v6 = *(v1 + 16);
  sub_24279D3FC(v5);

  v7 = sub_2427B8F5C();

  [v6 updateTagsAndExecuteBlock:0 withContext:v7];

  result = swift_unknownObjectRelease();
  *(a1 + 2) = 1;
  return result;
}

unint64_t sub_24279D160(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC07D8, &qword_2427BAE78);
    v3 = sub_2427B933C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      swift_unknownObjectRetain();

      result = sub_24279D264(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24279D264(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2427B940C();
  sub_2427B8FCC();
  v6 = sub_2427B943C();

  return sub_24279D2DC(a1, a2, v6);
}

unint64_t sub_24279D2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2427B939C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24279D394(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0858, &qword_2427BAFA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24279D3FC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0860, &qword_2427BAFA8);
    v2 = sub_2427B933C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;
    swift_unknownObjectRetain();

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0868, &qword_2427BAFB0);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_24279D6CC(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_24279D6CC(v32, v33);
    v17 = *(v2 + 40);
    result = sub_2427B919C();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_24279D6CC(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

_OWORD *sub_24279D6CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24279D6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_2427B901C();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  if (a3)
  {
LABEL_3:
    v3 = sub_2427B8F6C();
  }

LABEL_4:

  v5(v6, v3);
}

uint64_t sub_24279D7A4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24279D7FC();
  }

  return result;
}

void sub_24279D7FC()
{
  v1 = sub_2427B8F3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 24);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_2427B8F4C();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v8 = *(v0 + 40);
  v9 = sub_2427B8FAC();
  LODWORD(v8) = [v8 getBooleanPreference:v9 defaultValue:0];

  if (!v8)
  {
    v14 = sub_24279DAB8();
    type metadata accessor for IntegrationSync();
    inited = swift_initStackObject();
    v16 = os_transaction_create();
    inited[8] = 0;
    inited[9] = v16;
    inited[2] = v14;
    inited[3] = 0xD000000000000015;
    inited[4] = 0x80000002427BAA70;
    inited[5] = 0x7265646E696D6552;
    inited[6] = 0xE900000000000073;
    inited[7] = sub_24279F2A0;
    sub_24279DD14();
    swift_setDeallocating();
    v17 = inited[2];
    v18 = inited[4];
    v19 = inited[6];

    v20 = inited[8];

    v21 = inited[9];
    swift_unknownObjectRelease();
    return;
  }

  if (qword_281349520 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v10 = sub_2427B8F0C();
  __swift_project_value_buffer(v10, qword_281349DA8);
  v11 = sub_2427B8EEC();
  v12 = sub_2427B90BC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24279B000, v11, v12, "Skipping an integration sync because the user default for disabling integration syncing is set", v13, 2u);
    MEMORY[0x245D19310](v13, -1, -1);
  }
}

uint64_t sub_24279DAB8()
{
  if (!MEMORY[0x277D44848])
  {
    return MEMORY[0x277D84F90];
  }

  v0 = type metadata accessor for ReminderIntegrationDataSource();
  v1 = swift_allocObject();
  v1[2] = [objc_allocWithZone(MEMORY[0x277D44848]) init];
  v1[3] = 0;
  v1[4] = sub_24279DBDC(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0848, &unk_2427BAF88);
  result = swift_allocObject();
  *(result + 16) = xmmword_2427BAF20;
  *(result + 32) = 0x656C756465686373;
  *(result + 40) = 0xE900000000000064;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0xD000000000000013;
  *(result + 72) = 0x80000002427BAA90;
  *(result + 80) = v1;
  *(result + 104) = v0;
  *(result + 112) = &off_285511618;
  return result;
}

unint64_t sub_24279DBDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC07D0, &qword_2427BAE70);
    v3 = sub_2427B933C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_24279D264(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_24279DD14()
{
  v131 = *MEMORY[0x277D85DE8];
  v119 = MEMORY[0x277D84FA0];
  v113 = v0[3];
  v115 = v0[4];
  v111 = v0[2];
  v117 = *(v111 + 16);
  if (v117)
  {
    v2 = v111 + 32;
    v109 = v0[6];
    v110 = v0[5];
    v106 = v0[8];
    v107 = v0[7];
    do
    {
      sub_24279EC1C(v2, &v126);
      v4 = v126;
      v5 = v127;

      sub_24279EC78(&v120, v4, v5);

      sub_24279EC1C(&v126, &v120);
      v6 = type metadata accessor for IntegrationSync.SyncDataProvider();
      v1 = swift_allocObject();

      v7 = MEMORY[0x277D84F90];
      *(v1 + 168) = sub_24279F1A4(MEMORY[0x277D84F90], &qword_27ECC0810, &qword_2427BAEA8);
      *(v1 + 176) = sub_24279F1A4(v7, &qword_27ECC0808, &qword_2427BAEA0);
      *(v1 + 184) = 0;
      *(v1 + 16) = v107;
      *(v1 + 24) = v106;

      v8 = v107();
      v9 = v123;
      *(v1 + 72) = v122;
      *(v1 + 88) = v9;
      *(v1 + 104) = v124;
      v10 = v121;
      *(v1 + 40) = v120;
      *(v1 + 32) = v8;
      *(v1 + 136) = v113;
      *(v1 + 144) = v115;
      *(v1 + 152) = v110;
      *(v1 + 160) = v109;
      *(v1 + 120) = v125;
      *(v1 + 128) = v111;
      *(v1 + 56) = v10;
      type metadata accessor for IntegrationCollectionSync();
      inited = swift_initStackObject();
      *(&v121 + 1) = v6;
      *&v122 = &off_285511360;
      *&v120 = v1;
      swift_retain_n();
      *(inited + 64) = sub_24279F380(v7);
      sub_24279F31C(&v120, inited + 16);
      v12 = *(v1 + 32);
      *(inited + 56) = v12;
      v13 = v12;

      sub_24279EC1C(v1 + 40, inited + 72);
      __swift_destroy_boxed_opaque_existential_1(&v120);
      sub_24279F4F0();
      sub_2427A51EC(&v126);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((inited + 16));

      v3 = *(inited + 64);

      sub_2427A51EC(inited + 72);

      v2 += 88;
      --v117;
    }

    while (v117);
  }

  v14 = *(v101 + 64);
  v15 = (*(v101 + 56))();
  v16 = *(v101 + 24);
  v18 = *(v101 + 32);
  v17 = *(v101 + 40);
  v19 = *(v101 + 48);
  v126 = *(v101 + 16);
  v127 = v16;
  v128 = v18;
  v129 = v17;
  v130 = v19;

  v28 = sub_2427A0D44(v15);
  v95 = v16;
  v105 = v15;

  v104 = 0;
  v30 = 0;
  v31 = v28 + 8;
  v32 = 1 << *(v28 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & v28[8];
  v35 = (v32 + 63) >> 6;
  *&v29 = 136315394;
  v94 = v29;
  v99 = v28;
  v97 = v35;
  v98 = v28 + 8;
LABEL_15:
  if (v34)
  {
LABEL_20:
    v37 = v34;
    v100 = v30;
    v38 = __clz(__rbit64(v34)) | (v30 << 6);
    v39 = (v28[6] + 16 * v38);
    v40 = v39[1];
    v96 = *v39;
    v41 = *(v28[7] + 8 * v38);

    v103 = v41;
    v42 = [v103 calendarsForEntityType_];
    sub_2427A152C(0, &qword_2813494D8, 0x277CC59B0);
    sub_2427A1B38();
    v43 = sub_2427B904C();

    if ((v43 & 0xC000000000000001) != 0)
    {
      sub_2427B916C();
      sub_2427B906C();
      v44 = *(&v120 + 1);
      v43 = v120;
      v46 = *(&v121 + 1);
      v45 = v121;
      v47 = v122;
    }

    else
    {
      v46 = 0;
      v48 = -1 << *(v43 + 32);
      v44 = v43 + 56;
      v49 = ~v48;
      v50 = -v48;
      if (v50 < 64)
      {
        v51 = ~(-1 << v50);
      }

      else
      {
        v51 = -1;
      }

      v47 = v51 & *(v43 + 56);
      v45 = v49;
    }

    v108 = 0;
    v102 = (v37 - 1) & v37;
    v52 = (v45 + 64) >> 6;
    v114 = v44;
    v116 = v40;
    v112 = v52;
    while (2)
    {
      v53 = v46;
      while (1)
      {
        if (v43 < 0)
        {
          if (!sub_2427B918C() || (swift_dynamicCast(), v57 = v126, v46 = v53, v56 = v47, !v126))
          {
LABEL_62:
            sub_24279EC14();
            v28 = v99;
            v34 = v102;
            if (v108)
            {
LABEL_14:

              v35 = v97;
              v31 = v98;
              v30 = v100;
              goto LABEL_15;
            }

            if (qword_281349520 != -1)
            {
              swift_once();
            }

            v80 = sub_2427B8F0C();
            __swift_project_value_buffer(v80, qword_281349DA8);
            v81 = v103;

            v82 = sub_2427B8EEC();
            v83 = sub_2427B90BC();

            if (os_log_type_enabled(v82, v83))
            {
              v84 = swift_slowAlloc();
              v1 = swift_slowAlloc();
              v126 = v1;
              *v84 = v94;
              *(v84 + 4) = sub_2427A1BEC(v95, v18, &v126);
              *(v84 + 12) = 2080;
              if (v116)
              {
                v85 = v96;
              }

              else
              {
                v85 = 0x296C6C756E28;
              }

              if (v116)
              {
                v86 = v116;
              }

              else
              {
                v86 = 0xE600000000000000;
              }

              v87 = sub_2427A1BEC(v85, v86, &v126);

              *(v84 + 14) = v87;
              _os_log_impl(&dword_24279B000, v82, v83, "Source %s with persona %s has no calendars and will be removed.", v84, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x245D19310](v1, -1, -1);
              MEMORY[0x245D19310](v84, -1, -1);
            }

            v126 = 0;
            if ([v105 removeSource:v81 commit:0 error:&v126])
            {
              v88 = v126;
              v104 = 1;
              v34 = v102;
              goto LABEL_14;
            }

            v93 = v126;

            v1 = sub_2427B8C4C();

            swift_willThrow();

            goto LABEL_6;
          }
        }

        else
        {
          v54 = v53;
          v55 = v47;
          v46 = v53;
          if (!v47)
          {
            while (1)
            {
              v46 = v54 + 1;
              if (__OFADD__(v54, 1))
              {
                break;
              }

              if (v46 >= v52)
              {
                goto LABEL_62;
              }

              v55 = *(v44 + 8 * v46);
              ++v54;
              if (v55)
              {
                goto LABEL_34;
              }
            }

            __break(1u);
            goto LABEL_84;
          }

LABEL_34:
          v56 = (v55 - 1) & v55;
          v57 = *(*(v43 + 48) + ((v46 << 9) | (8 * __clz(__rbit64(v55)))));
          if (!v57)
          {
            goto LABEL_62;
          }
        }

        v118 = v56;
        v58 = v43;
        v59 = v18;
        v60 = v57;
        v61 = [v57 externalID];
        if (!v61)
        {
          break;
        }

        v62 = v61;
        v63 = sub_2427B8FBC();
        v1 = v64;

        if (!*(v119 + 16))
        {
          goto LABEL_49;
        }

        v65 = *(v119 + 40);
        sub_2427B940C();

        sub_2427B8FCC();
        v66 = sub_2427B943C();
        v67 = -1 << *(v119 + 32);
        v68 = v66 & ~v67;
        if (((*(v119 + 56 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
        {
LABEL_48:

          goto LABEL_49;
        }

        v69 = ~v67;
        while (1)
        {
          v70 = (*(v119 + 48) + 16 * v68);
          v71 = *v70 == v63 && v70[1] == v1;
          if (v71 || (sub_2427B939C() & 1) != 0)
          {
            break;
          }

          v68 = (v68 + 1) & v69;
          if (((*(v119 + 56 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        swift_bridgeObjectRelease_n();

        v108 = 1;
        v53 = v46;
        v47 = v118;
        v18 = v59;
        v43 = v58;
        v52 = v112;
        v44 = v114;
      }

      v63 = 0;
      v1 = 0;
LABEL_49:
      if (qword_281349520 != -1)
      {
        swift_once();
      }

      v72 = sub_2427B8F0C();
      __swift_project_value_buffer(v72, qword_281349DA8);

      v73 = sub_2427B8EEC();
      v74 = sub_2427B90BC();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v126 = v76;
        *v75 = 136315138;
        if (v1)
        {
          v77 = v63;
        }

        else
        {
          v77 = 0x296C6C756E28;
        }

        if (!v1)
        {
          v1 = 0xE600000000000000;
        }

        v78 = sub_2427A1BEC(v77, v1, &v126);

        *(v75 + 4) = v78;
        _os_log_impl(&dword_24279B000, v73, v74, "Removing a calendar with an unknown identifier %s", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v76);
        MEMORY[0x245D19310](v76, -1, -1);
        MEMORY[0x245D19310](v75, -1, -1);
      }

      else
      {
      }

      v18 = v59;
      v126 = 0;
      v43 = v58;
      v52 = v112;
      if ([v105 removeCalendar:v60 commit:0 error:&v126])
      {
        v79 = v126;

        v104 = 1;
        v44 = v114;
        v47 = v118;
        continue;
      }

      break;
    }

    v91 = v126;

    v1 = sub_2427B8C4C();

    swift_willThrow();

    sub_24279EC14();
  }

  else
  {
    while (1)
    {
      v36 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      if (v36 >= v35)
      {
        break;
      }

      v34 = v31[v36];
      ++v30;
      if (v34)
      {
        v30 = v36;
        goto LABEL_20;
      }
    }

    if ((v104 & 1) == 0)
    {

      goto LABEL_79;
    }

    v126 = 0;
    if ([v105 commitWithRollback_])
    {
      v89 = v126;

      goto LABEL_79;
    }

    v92 = v126;
    v1 = sub_2427B8C4C();

    swift_willThrow();
  }

LABEL_6:
  if (qword_281349520 != -1)
  {
LABEL_85:
    swift_once();
  }

  v20 = sub_2427B8F0C();
  __swift_project_value_buffer(v20, qword_281349DA8);
  v21 = v1;
  v22 = sub_2427B8EEC();
  v23 = sub_2427B90BC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    v26 = v1;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 4) = v27;
    *v25 = v27;
    _os_log_impl(&dword_24279B000, v22, v23, "Calendar cleanup following sync failed: %@", v24, 0xCu);
    sub_2427A6EF8(v25);
    MEMORY[0x245D19310](v25, -1, -1);
    MEMORY[0x245D19310](v24, -1, -1);
  }

  else
  {
  }

LABEL_79:
  v90 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24279EC78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2427B940C();
  sub_2427B8FCC();
  v9 = sub_2427B943C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2427B939C() & 1) != 0)
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

    sub_24279F000(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24279EDC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0818, &qword_2427BAEB0);
  result = sub_2427B91BC();
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
      sub_2427B940C();

      sub_2427B8FCC();
      result = sub_2427B943C();
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

uint64_t sub_24279F000(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2427A6984(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2427A6BE4();
      goto LABEL_16;
    }

    sub_24279EDC8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2427B940C();
  sub_2427B8FCC();
  result = sub_2427B943C();
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

      result = sub_2427B939C();
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
  result = sub_2427B93AC();
  __break(1u);
  return result;
}

unint64_t sub_24279F1A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_2427B933C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_2427A171C(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_24279F2A0()
{
  result = [objc_allocWithZone(MEMORY[0x277CC5A40]) initWithEKOptions_];
  if (result)
  {
    v1 = result;
    [result setAllowsIntegrationModifications_];
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24279F31C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_24279F380(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0800, &unk_2427BBCC0);
    v3 = sub_2427B933C();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_2427B6A88(v5, v6, v7, v8);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 32 * result);
      *v13 = v5;
      v13[1] = v6;
      v13[2] = v7;
      v13[3] = v8;
      *(v3[7] + 8 * result) = v10;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_24279F4F0()
{
  v2 = v0;
  v61 = *MEMORY[0x277D85DE8];
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = v0[11];
  v6 = v0[12];
  v7 = (*(v4 + 32))(v2[11], v2[12], v3, v4);
  if (v1)
  {
    goto LABEL_35;
  }

  v8 = v7;
  v9 = [v7 externalModificationTag];
  if (v9)
  {
    v10 = v9;
    v11 = sub_2427B8FBC();
    v13 = v12;
  }

  else
  {

    v11 = 0;
    v13 = 0;
  }

  if (qword_281349520 != -1)
  {
    swift_once();
  }

  v14 = sub_2427B8F0C();
  __swift_project_value_buffer(v14, qword_281349DA8);

  v15 = sub_2427B8EEC();
  v16 = sub_2427B90AC();

  v51 = v5;
  if (os_log_type_enabled(v15, v16))
  {
    v52 = v11;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v55 = v18;
    *v17 = 136446722;
    *(v17 + 4) = sub_2427A1BEC(v2[9], v2[10], &v55);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_2427A1BEC(v2[13], v2[14], &v55);
    *(v17 + 22) = 2082;
    if (v13)
    {
      v19 = 1752459639;
    }

    else
    {
      v19 = 0x74756F68746977;
    }

    if (v13)
    {
      v20 = 0xE400000000000000;
    }

    else
    {
      v20 = 0xE700000000000000;
    }

    v21 = sub_2427A1BEC(v19, v20, &v55);

    *(v17 + 24) = v21;
    _os_log_impl(&dword_24279B000, v15, v16, "Requesting a sync of %{public}s %s %{public}s a previous mod tag.", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245D19310](v18, -1, -1);
    v22 = v17;
    v11 = v52;
    MEMORY[0x245D19310](v22, -1, -1);
  }

  v23 = MEMORY[0x245D18D70]();
  v24 = v2[18];
  v25 = v2[19];
  __swift_project_boxed_opaque_existential_1(v2 + 15, v24);
  v54[0] = v11;
  v54[1] = v13;
  (*(v25 + 8))(&v55, v54, v24, v25);
  v53 = v11;

  v49 = v55;
  v50 = v56;
  v27 = v57;
  v26 = v58;
  v28 = v59;
  v29 = v60;
  objc_autoreleasePoolPop(v23);
  v30 = v29;
  if (v29)
  {
    v55 = v27;
    v56 = v26;
    v57 = v28;

    sub_2427A4290(&v55);
    v31 = v27;
    v32 = v26;
    v33 = v28;
    v34 = 1;
  }

  else
  {
    v55 = v27;

    sub_2427B4804(&v55);
    v31 = v27;
    v32 = v26;
    v33 = v28;
    v34 = 0;
  }

  sub_2427A5188(v31, v32, v33, v34);
  if (!v50)
  {
    if (!v13)
    {
      goto LABEL_32;
    }

    v49 = 0;
LABEL_27:
    v36 = v28;
    v37 = v2[5];
    v38 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v37);
    v39 = (*(v38 + 32))(v51, v6, v37, v38);
    if (v50)
    {
      v40 = sub_2427B8FAC();
    }

    else
    {
      v40 = 0;
    }

    [v39 setExternalModificationTag_];

    v41 = v2[7];
    v55 = 0;
    if (![v41 saveCalendar:v39 commit:0 error:&v55])
    {
      v48 = v55;
      sub_2427B8C4C();

      swift_willThrow();

      sub_2427A5188(v27, v26, v36, v30);

      goto LABEL_35;
    }

    v42 = v55;

    v28 = v36;
    goto LABEL_32;
  }

  if (!v13)
  {

    goto LABEL_27;
  }

  if (v49 != v53 || v50 != v13)
  {
    v35 = sub_2427B939C();

    if ((v35 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

LABEL_32:
  v43 = v2[7];
  v55 = 0;
  v44 = [v43 commitWithRollback_];
  v45 = v55;
  if ((v44 & 1) == 0)
  {
    v47 = v45;
    sub_2427B8C4C();

    swift_willThrow();
  }

  sub_2427A5188(v27, v26, v28, v30);
LABEL_35:
  v46 = *MEMORY[0x277D85DE8];
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24279FBD8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v129[11] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v7 = v2[21];
  if (v7[2])
  {

    v8 = sub_2427A171C(a1, a2);
    if (v9)
    {
      v3 = *(v7[7] + 8 * v8);
LABEL_4:

      goto LABEL_94;
    }
  }

  v10 = sub_2427A08AC(a1, a2);
  if (v127)
  {
    goto LABEL_94;
  }

  v118 = v10;
  v119 = a1;
  v125 = a2;
  v11 = [v10 calendarsForEntityType_];
  sub_2427A152C(0, &qword_2813494D8, 0x277CC59B0);
  sub_2427A1B38();
  v12 = sub_2427B904C();

  if ((v12 & 0xC000000000000001) != 0)
  {
    sub_2427B916C();
    sub_2427B906C();
    v12 = v129[6];
    v14 = v129[7];
    v15 = v129[8];
    v16 = v129[9];
    v17 = v129[10];
  }

  else
  {
    v16 = 0;
    v18 = -1 << *(v12 + 32);
    v14 = (v12 + 56);
    v19 = ~v18;
    v20 = -v18;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v17 = (v21 & *(v12 + 56));
    v15 = v19;
  }

  v122 = 0;
  v22 = (v15 + 64) >> 6;
  if (v125)
  {
    v23 = v119;
  }

  else
  {
    v23 = 0x746C75616665643CLL;
  }

  v24 = 0xE90000000000003ELL;
  if (v125)
  {
    v24 = v125;
  }

  v116 = v24;
  v117 = v23;
  *&v13 = 136315650;
  v115 = v13;
  v120 = v12;
  v121 = v14;
  v124 = v22;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v12 < 0)
        {
          v28 = sub_2427B918C();
          if (!v28 || (v128 = v28, swift_dynamicCast(), v3 = v129[0], v27 = v17, !v129[0]))
          {
LABEL_92:
            sub_24279EC14();
            v22 = v118;
            v3 = v122;
            if (v122)
            {

              goto LABEL_94;
            }

            v3 = [objc_opt_self() calendarForEntityType:0 eventStore:v4[4]];
            v101 = v4[9];
            v100 = v4[10];

            v102 = sub_2427B8FAC();

            [v3 setTitle_];

            v104 = v4[5];
            v103 = v4[6];

            v105 = sub_2427B8FAC();

            [v3 setExternalID_];

            [v3 setSource_];
            [v3 setImmutable_];
            v106 = v4[4];
            v129[0] = 0;
            v107 = [v106 saveCalendar:v3 commit:1 error:v129];
            v108 = v129[0];
            if (!v107)
            {
              v111 = v129[0];
              sub_2427B8C4C();

              swift_willThrow();
              goto LABEL_94;
            }

            if (!v4[23])
            {
              v113 = v129[0];

              goto LABEL_94;
            }

            v129[0] = v4[23];
            v109 = v108;

            v3 = v3;
            MEMORY[0x245D18880]();
            if (*((v129[0] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v129[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_98:
              sub_2427B903C();

              v110 = v4[23];
              v4[23] = v129[0];
              goto LABEL_4;
            }

LABEL_110:
            sub_2427B902C();
            goto LABEL_98;
          }
        }

        else
        {
          v25 = v16;
          v26 = v17;
          if (!v17)
          {
            while (1)
            {
              v16 = v25 + 1;
              if (__OFADD__(v25, 1))
              {
                break;
              }

              if (v16 >= v22)
              {
                goto LABEL_92;
              }

              v26 = v14[v16];
              ++v25;
              if (v26)
              {
                goto LABEL_25;
              }
            }

            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

LABEL_25:
          v27 = (v26 - 1) & v26;
          v3 = *(*(v12 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v26)))));
          if (!v3)
          {
            goto LABEL_92;
          }
        }

        v126 = v27;
        v29 = [v3 externalID];
        if (v29)
        {
          v30 = v29;
          v31 = sub_2427B8FBC();
          v33 = v32;

          v22 = v124;
          if (v33)
          {
            if (v31 == v4[5] && v33 == v4[6])
            {

              break;
            }

            v35 = sub_2427B939C();

            if (v35)
            {
              break;
            }
          }
        }

        v17 = v126;
      }

      if (v122)
      {
        break;
      }

      v79 = v12;
      swift_beginAccess();
      v80 = v3;
      v81 = v4[21];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v128 = v4[21];
      v83 = v128;
      v4[21] = 0x8000000000000000;
      v84 = sub_2427A171C(v119, v125);
      v86 = v83[2];
      v87 = (v85 & 1) == 0;
      v63 = __OFADD__(v86, v87);
      v88 = v86 + v87;
      if (v63)
      {
        __break(1u);
LABEL_112:
        __break(1u);
      }

      v89 = v85;
      if (v83[3] >= v88)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v97 = v84;
          sub_2427B7614();
          v84 = v97;
        }
      }

      else
      {
        sub_2427A1BA0(v88, isUniquelyReferenced_nonNull_native);
        v84 = sub_2427A171C(v119, v125);
        if ((v89 & 1) != (v90 & 1))
        {
          goto LABEL_116;
        }
      }

      v12 = v79;
      v91 = v128;
      if (v89)
      {
        v92 = v128[7];
        v93 = *(v92 + 8 * v84);
        *(v92 + 8 * v84) = v80;
      }

      else
      {
        v128[(v84 >> 6) + 8] |= 1 << v84;
        v94 = (v91[6] + 16 * v84);
        *v94 = v119;
        v94[1] = v125;
        *(v91[7] + 8 * v84) = v80;
        v95 = v91[2];
        v63 = __OFADD__(v95, 1);
        v96 = v95 + 1;
        if (v63)
        {
          goto LABEL_112;
        }

        v91[2] = v96;
      }

      v22 = v124;
      v17 = v126;
      v4[21] = v91;
      swift_endAccess();
      v122 = v3;
      v14 = v121;
    }

    v36 = qword_281349520;
    v123 = v122;
    if (v36 != -1)
    {
      swift_once();
    }

    v37 = sub_2427B8F0C();
    __swift_project_value_buffer(v37, qword_281349DA8);

    v38 = sub_2427B8EEC();
    v39 = sub_2427B90BC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v129[0] = v41;
      *v40 = v115;
      v42 = v4[5];
      v43 = v4[6];

      v44 = sub_2427A1BEC(v42, v43, v129);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      v46 = v4[17];
      v45 = v4[18];

      v47 = sub_2427A1BEC(v46, v45, v129);

      *(v40 + 14) = v47;
      *(v40 + 22) = 2080;

      v48 = sub_2427A1BEC(v117, v116, v129);

      *(v40 + 24) = v48;
      _os_log_impl(&dword_24279B000, v38, v39, "Duplicate calendar with ID %s in source %s in persona %s. Arbitrarily keeping the first one and deleting this one. Resetting mod tag on the first to cause a full sync.", v40, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245D19310](v41, -1, -1);
      MEMORY[0x245D19310](v40, -1, -1);
    }

    v49 = [v3 eventStore];
    if (!v49)
    {
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC07E0, &unk_2427BAE80);
      result = sub_2427B93BC();
      __break(1u);
      return result;
    }

    v50 = v49;
    v129[0] = 0;
    v51 = [v49 removeCalendar:v3 commit:0 error:v129];

    v52 = v129[0];
    if (!v51)
    {
      goto LABEL_100;
    }

    v53 = v129[0];
    [v123 setExternalModificationTag_];
    v54 = [v123 eventStore];
    if (!v54)
    {
      goto LABEL_114;
    }

    v55 = v54;
    v129[0] = 0;
    v56 = [v54 saveCalendar:v123 commit:0 error:v129];

    v52 = v129[0];
    if (!v56)
    {
LABEL_100:
      v112 = v52;

      sub_2427B8C4C();
      swift_willThrow();

      goto LABEL_102;
    }

    v57 = v129[0];
    v129[0] = sub_2427A61B8();
    v58 = v3;
    v22 = sub_2427A70F0(v129, v58);

    v3 = v129[0];
    v59 = v129[0] >> 62;
    if (v129[0] >> 62)
    {
      v60 = sub_2427B917C();
      v61 = v60 - v22;
      if (v60 < v22)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v60 = *((v129[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      v61 = v60 - v22;
      if (v60 < v22)
      {
        goto LABEL_105;
      }
    }

    if (v22 < 0)
    {
      goto LABEL_106;
    }

    if (v59)
    {
      v62 = sub_2427B917C();
    }

    else
    {
      v62 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v62 < v60)
    {
      goto LABEL_107;
    }

    v63 = __OFSUB__(0, v61);
    v64 = -v61;
    if (v63)
    {
      goto LABEL_108;
    }

    if (v59)
    {
      v65 = sub_2427B917C();
    }

    else
    {
      v65 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v63 = __OFADD__(v65, v64);
    v66 = v65 + v64;
    if (v63)
    {
      goto LABEL_109;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v59)
    {
      isUniquelyReferenced_nonNull_bridgeObject = 0;
    }

    if (isUniquelyReferenced_nonNull_bridgeObject == 1 && v66 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v14 = v121;
    }

    else
    {
      if (v59)
      {
        sub_2427B917C();
      }

      else
      {
        v68 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = v121;
      v3 = sub_2427B91EC();
      v129[0] = v3;
    }

    sub_2427A7350(v22, v60, 0);
    v69 = v4[23];
    v4[23] = v3;

    v70 = v4[7];
    v71 = v4[8];
    if (v125)
    {
      v12 = v120;
      v22 = v124;
      if (v71)
      {
        if (v70 == v119 && v71 == v125 || (v72 = v4[7], v73 = v4[8], (sub_2427B939C() & 1) != 0))
        {
LABEL_72:

          v74 = v123;
          goto LABEL_77;
        }
      }
    }

    else
    {
      v12 = v120;
      v22 = v124;
      if (!v71)
      {
        goto LABEL_72;
      }
    }

    v74 = sub_24279FBD8(v70, v71);

    [v74 setExternalModificationTag_];
    v75 = [v74 eventStore];
    if (!v75)
    {
      goto LABEL_115;
    }

    v76 = v75;

    v128 = 0;
    v77 = [v76 saveCalendar:v74 commit:0 error:&v128];

    if (!v77)
    {
      break;
    }

    v78 = v128;

    v14 = v121;
LABEL_77:

    v17 = v126;
  }

  v114 = v128;

  sub_2427B8C4C();
  swift_willThrow();

LABEL_102:
  sub_24279EC14();
LABEL_94:
  v98 = *MEMORY[0x277D85DE8];
  return v3;
}

id sub_2427A08AC(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v41[6] = *MEMORY[0x277D85DE8];
  sub_2427A0C58();
  if (!v3)
  {
    swift_beginAccess();
    v10 = v2[22];
    if (*(v10 + 16))
    {
      v11 = v5[22];

      v12 = sub_2427A171C(a1, a2);
      if (v13)
      {
        v14 = *(*(v10 + 56) + 8 * v12);

        v15 = *MEMORY[0x277D85DE8];
        return v14;
      }
    }

    result = [objc_opt_self() sourceWithEventStore_];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v16 = result;
    v38 = a1;
    v39 = a2;
    if (a2)
    {
      v17 = sub_2427B8FAC();
    }

    else
    {
      v17 = 0;
    }

    [v16 setPendingPersonaIdentifierForNewSource_];

    v18 = v5[16];
    v19 = v5[18];
    v20 = v5[19];
    v21 = v5[20];

    v22 = [v16 title];
    v23 = sub_2427B8FBC();
    v25 = v24;

    if (v23 == v20 && v25 == v21)
    {
    }

    else
    {
      v26 = sub_2427B939C();

      if (v26)
      {
      }

      else
      {
        v27 = sub_2427B8FAC();
        [v16 setTitle_];
      }
    }

    [v16 setSourceType_];
    v28 = v5[17];
    v29 = v5[18];

    v30 = sub_2427B8FAC();

    [v16 setExternalID_];

    v31 = v5[4];
    v41[0] = 0;
    v4 = v16;
    v32 = [v31 saveSource:v4 commit:1 error:v41];
    v33 = v41[0];
    if (v32)
    {
      swift_beginAccess();

      v34 = v5[22];
      v35 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v5[22];
      v5[22] = 0x8000000000000000;
      sub_2427A1574(v4, v38, v39, isUniquelyReferenced_nonNull_native);

      v5[22] = v40;
      swift_endAccess();
    }

    else
    {
      v37 = v41[0];

      sub_2427B8C4C();
      swift_willThrow();
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_2427A0C58()
{
  result = swift_beginAccess();
  if (!*(v0[22] + 16))
  {
    v8 = v0[16];
    v9 = v0[17];
    v10 = v0[18];
    v11 = v0[19];
    v12 = v0[20];
    v3 = v0;
    v4 = v0[4];

    v5 = v4;
    v6 = sub_2427A0D44(v5);

    if (!v1)
    {
      v7 = v3[22];
      v3[22] = v6;
    }
  }

  return result;
}

void *sub_2427A0D44(void *a1)
{
  v74[1] = *MEMORY[0x277D85DE8];
  v4 = v1[1];
  v5 = v1[2];
  v66 = v1[4];
  v67 = v1[3];
  v6 = sub_24279F1A4(MEMORY[0x277D84F90], &qword_27ECC0808, &qword_2427BAEA0);
  v64 = a1;
  v7 = [a1 sources];
  sub_2427A152C(0, &qword_281349468, 0x277CC5AC8);
  v8 = sub_2427B901C();

  if (v8 >> 62)
  {
    v72 = sub_2427B917C();
    if (v72)
    {
      goto LABEL_3;
    }

LABEL_60:

    goto LABEL_61;
  }

  v72 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v72)
  {
    goto LABEL_60;
  }

LABEL_3:
  v62 = 0;
  v10 = 0;
  v73 = v8 & 0xC000000000000001;
  v71 = v8 & 0xFFFFFFFFFFFFFF8;
  *&v9 = 138412290;
  v61 = v9;
  v11 = v72;
  v68 = v4;
  v69 = v5;
  v70 = v8;
  do
  {
    while (1)
    {
      if (v73)
      {
        v12 = MEMORY[0x245D18A70](v10, v8);
      }

      else
      {
        if (v10 >= *(v71 + 16))
        {
          goto LABEL_57;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v2 = v12;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        v58 = v7;

        sub_2427B8C4C();

        swift_willThrow();

        goto LABEL_61;
      }

      v7 = [v12 sourceType];
      if (v7 != sub_2427B909C() || (v14 = [v2 externalID]) == 0)
      {

        goto LABEL_5;
      }

      v15 = v14;
      v16 = sub_2427B8FBC();
      v7 = v17;

      if (v16 == v4 && v7 == v5)
      {
      }

      else
      {
        v18 = sub_2427B939C();

        v11 = v72;
        if ((v18 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v19 = [v2 personaIdentifier];
      if (v19)
      {
        v20 = v19;
        v21 = sub_2427B8FBC();
        v23 = v22;

        if (!v6[2])
        {
          goto LABEL_32;
        }
      }

      else
      {
        v21 = 0;
        v23 = 0;
        if (!v6[2])
        {
          goto LABEL_32;
        }
      }

      sub_2427A171C(v21, v23);
      if (v24)
      {
        v65 = v6;
        if (qword_281349520 != -1)
        {
          swift_once();
        }

        v25 = sub_2427B8F0C();
        __swift_project_value_buffer(v25, qword_281349DA8);

        v26 = sub_2427B8EEC();
        v27 = sub_2427B90BC();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v74[0] = v63;
          *v28 = 136315394;
          *(v28 + 4) = sub_2427A1BEC(v68, v69, v74);
          *(v28 + 12) = 2080;
          if (v23)
          {
            v29 = v21;
          }

          else
          {
            v29 = 0x746C75616665643CLL;
          }

          if (v23)
          {
            v30 = v23;
          }

          else
          {
            v30 = 0xE90000000000003ELL;
          }

          v31 = sub_2427A1BEC(v29, v30, v74);

          *(v28 + 14) = v31;
          _os_log_impl(&dword_24279B000, v26, v27, "Duplicate source with ID %s for persona %s. Arbitrarily removing one.", v28, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x245D19310](v63, -1, -1);
          MEMORY[0x245D19310](v28, -1, -1);
        }

        else
        {
        }

        v74[0] = 0;
        v42 = [v64 removeSource:v2 commit:1 error:v74];
        v7 = v74[0];
        v5 = v69;
        if (v42)
        {
          v43 = v74[0];
        }

        else
        {
          v44 = v74[0];
          v45 = sub_2427B8C4C();

          swift_willThrow();
          v46 = v45;
          v47 = sub_2427B8EEC();
          v7 = sub_2427B90BC();

          if (os_log_type_enabled(v47, v7))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            *v48 = v61;
            v50 = v45;
            v51 = _swift_stdlib_bridgeErrorToNSError();
            *(v48 + 4) = v51;
            *v49 = v51;
            _os_log_impl(&dword_24279B000, v47, v7, "Error removing source: %@", v48, 0xCu);
            sub_2427A6EF8(v49);
            v52 = v49;
            v6 = v65;
            MEMORY[0x245D19310](v52, -1, -1);
            MEMORY[0x245D19310](v48, -1, -1);
          }

          else
          {
          }
        }

        v4 = v68;
        goto LABEL_48;
      }

LABEL_32:

      v32 = [v2 personaIdentifier];
      if (v32)
      {
        v33 = v32;
        v34 = sub_2427B8FBC();
        v36 = v35;
      }

      else
      {
        v34 = 0;
        v36 = 0;
      }

      v4 = v68;
      v5 = v69;
      v2 = v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74[0] = v6;
      sub_2427A1574(v2, v34, v36, isUniquelyReferenced_nonNull_native);

      v6 = v74[0];
      v38 = [v2 title];
      v39 = sub_2427B8FBC();
      v7 = v40;

      if (v39 == v67 && v7 == v66)
      {
        break;
      }

      v41 = sub_2427B939C();

      v11 = v72;
      if (v41)
      {

LABEL_40:
        v8 = v70;
        goto LABEL_5;
      }

      v53 = sub_2427B8FAC();
      [v2 setTitle_];

      v74[0] = 0;
      v54 = [v64 saveSource:v2 commit:0 error:v74];

      v7 = v74[0];
      if (!v54)
      {
        goto LABEL_58;
      }

      v55 = v74[0];

      v62 = 1;
      ++v10;
      v8 = v70;
      if (v13 == v72)
      {

        goto LABEL_53;
      }
    }

LABEL_48:
    v8 = v70;
    v11 = v72;
LABEL_5:
    ++v10;
  }

  while (v13 != v11);

  if ((v62 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_53:
  v74[0] = 0;
  if ([v64 commitWithRollback_])
  {
    v56 = v74[0];
  }

  else
  {
    v57 = v74[0];
    sub_2427B8C4C();

    swift_willThrow();
  }

LABEL_61:
  v59 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_2427A152C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2427A1574(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2427A171C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2427A17B0(v16, a4 & 1, &qword_27ECC0808, &qword_2427BAEA0);
      v20 = *v5;
      v11 = sub_2427A171C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC07E0, &unk_2427BAE80);
        sub_2427B93BC();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_2427B7628(&qword_27ECC0808, &qword_2427BAEA0);
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

unint64_t sub_2427A171C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2427B940C();
  sub_2427B942C();
  if (a2)
  {
    sub_2427B8FCC();
  }

  v6 = sub_2427B943C();

  return sub_2427A1A6C(a1, a2, v6);
}

uint64_t sub_2427A17B0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = a2;
  result = sub_2427B932C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 56) + 8 * v22);
      v37 = *(*(v7 + 48) + 16 * v22);
      v24 = *(*(v7 + 48) + 16 * v22 + 8);
      if ((v36 & 1) == 0)
      {

        v25 = v23;
      }

      v26 = *(v10 + 40);
      sub_2427B940C();
      sub_2427B942C();
      if (v24)
      {
        sub_2427B8FCC();
      }

      result = sub_2427B943C();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 16 * v18) = v37;
      *(*(v10 + 56) + 8 * v18) = v23;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_39;
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

    if ((v36 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_37;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_37:
  *v5 = v10;
  return result;
}

unint64_t sub_2427A1A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_2427B939C() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_2427A1B38()
{
  result = qword_2813494D0;
  if (!qword_2813494D0)
  {
    sub_2427A152C(255, &qword_2813494D8, 0x277CC59B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813494D0);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2427A1BEC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2427A1EA8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2427A20A4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_2427A1CB8(uint64_t a1, unint64_t a2)
{
  v4 = sub_2427A1D04(a1, a2);
  sub_2427A1FB8(&unk_2855111A8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2427A1D04(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2427A1E34(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2427B91FC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2427B8FDC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2427A1E34(v10, 0);
        result = sub_2427B91CC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_2427A1E34(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC07F0, &unk_2427BAE90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_2427A1EA8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2427A1CB8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2427B91FC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2427A1FB8(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2427A6890(result, v12, 1, v3);
  v3 = result;
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2427A20A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2427A2100@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08B8, &qword_2427BB090) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v51 - v8;
  v61 = v5;
  v62 = v6;
  sub_2427A2778(&v61, &v51 - v8);
  v10 = sub_2427B8E7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 16);
  sub_2427B8DDC();
  if (v3)
  {
    return sub_2427A4230(v9, &qword_27ECC08B8, &qword_2427BB090);
  }

  v63 = v11;
  v59 = a2;
  v57 = v2;
  v17 = sub_2427B8EAC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20]();
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2427B8E4C();
  sub_2427A3344(&v61);
  (*(v18 + 8))(v21, v17);
  v58 = v61;
  v60 = v62;
  v22 = sub_2427B8E6C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20]();
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2427B8E5C();
  v27 = (*(v23 + 88))(v26, v22);
  if (MEMORY[0x277D45AB8] && v27 == *MEMORY[0x277D45AB8])
  {
    (*(v23 + 96))(v26, v22);
    v28 = sub_2427B8E3C();
    v56 = &v51;
    v29 = *(v28 - 8);
    v30 = *(v29 + 64);
    MEMORY[0x28223BE20]();
    v32 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 32))(v32, v26, v28);
    v33 = sub_2427B8E2C();
    sub_2427A3844(v33);
    v55 = v34;

    (*(v29 + 8))(v32, v28);
    (*(v63 + 8))(v14, v10);
    result = sub_2427A4230(v9, &qword_27ECC08B8, &qword_2427BB090);
    v35 = 0;
    v36 = 0;
    v37 = 0;
LABEL_9:
    v50 = v59;
    *v59 = v58;
    v50[1] = v60;
    v50[2] = v55;
    v50[3] = v35;
    v50[4] = v36;
    *(v50 + 40) = v37;
    return result;
  }

  if (MEMORY[0x277D45AB0] && v27 == *MEMORY[0x277D45AB0])
  {
    (*(v23 + 96))(v26, v22);
    v38 = sub_2427B8E1C();
    v56 = &v51;
    v39 = *(v38 - 8);
    v53 = v38;
    v54 = v39;
    v40 = *(v39 + 64);
    MEMORY[0x28223BE20]();
    v42 = &v51 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v43 + 32))(v42, v26);
    v44 = sub_2427B8DFC();
    sub_2427A3844(v44);
    v55 = v45;

    v46 = sub_2427B8E0C();
    sub_2427A3844(v46);
    v52 = v47;

    v48 = sub_2427B8DEC();
    v49 = v57;

    v36 = sub_2427A3B8C(v48, v49);

    (*(v54 + 8))(v42, v53);
    (*(v63 + 8))(v14, v10);
    sub_2427A4230(v9, &qword_27ECC08B8, &qword_2427BB090);

    v35 = v52;
    v37 = 1;
    goto LABEL_9;
  }

  sub_2427ACFA4();
  swift_allocError();
  swift_willThrow();
  (*(v63 + 8))(v14, v10);
  sub_2427A4230(v9, &qword_27ECC08B8, &qword_2427BB090);
  return (*(v23 + 8))(v26, v22);
}

uint64_t sub_2427A2778@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1[1])
  {
    if (qword_281349518 != -1)
    {
      swift_once();
    }

    v11 = sub_2427B8F0C();
    __swift_project_value_buffer(v11, qword_281349D90);
    v7 = sub_2427B8EEC();
    v8 = sub_2427B90BC();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Token missing; will do a full reminder sync";
    goto LABEL_11;
  }

  v3 = *a1;
  v4 = sub_2427B8CAC();
  if (v5 >> 60 == 15)
  {
    if (qword_281349518 != -1)
    {
      swift_once();
    }

    v6 = sub_2427B8F0C();
    __swift_project_value_buffer(v6, qword_281349D90);
    v7 = sub_2427B8EEC();
    v8 = sub_2427B90BC();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Token encoding not valid; will do a full reminder sync";
LABEL_11:
    _os_log_impl(&dword_24279B000, v7, v8, v10, v9, 2u);
    MEMORY[0x245D19310](v9, -1, -1);
LABEL_12:

    v12 = sub_2427B8EAC();
    v13 = *(*(v12 - 8) + 56);

    return v13(a2, 1, 1, v12);
  }

  v15 = v4;
  v16 = v5;
  v17 = sub_2427B8C0C();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_2427B8BFC();
  sub_2427A2EA4();
  sub_2427B8BEC();

  v20 = v35;
  v22 = v36;
  v21 = v37;
  if (v35 == 2)
  {
    v23 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08B8, &qword_2427BB090) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20]();
    v25 = &v34 - v24;
    sub_2427A3288(v36, v37);
    sub_2427B8E9C();
    sub_2427A32DC(v15, v16);
    sub_2427A32F0(v22, v21);
    v31 = sub_2427B8EAC();
    v32 = *(v31 - 8);
    v33 = *(v32 + 56);
    v33(v25, 0, 1, v31);
    (*(v32 + 32))(a2, v25, v31);
    return (v33)(a2, 0, 1, v31);
  }

  else
  {
    if (qword_281349518 != -1)
    {
      swift_once();
    }

    v26 = sub_2427B8F0C();
    __swift_project_value_buffer(v26, qword_281349D90);
    sub_2427A3288(v36, v37);
    v27 = sub_2427B8EEC();
    v28 = sub_2427B90BC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 67109376;
      *(v29 + 4) = v20;
      sub_2427A32F0(v22, v21);
      *(v29 + 8) = 1024;
      *(v29 + 10) = 2;
      _os_log_impl(&dword_24279B000, v27, v28, "Token version has changed (have = %u; current = %u); will do a full reminder sync", v29, 0xEu);
      MEMORY[0x245D19310](v29, -1, -1);
    }

    else
    {
      sub_2427A32F0(v36, v37);
    }

    sub_2427A32DC(v15, v16);

    sub_2427A32F0(v22, v21);
    v30 = sub_2427B8EAC();
    return (*(*(v30 - 8) + 56))(a2, 1, 1, v30);
  }
}

unint64_t sub_2427A2EA4()
{
  result = qword_2813494F0;
  if (!qword_2813494F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813494F0);
  }

  return result;
}

uint64_t sub_2427A2EF8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0918, &qword_2427BB288);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_2427A30EC();
  sub_2427B944C();
  if (!v1)
  {
    v10[16] = 0;
    v8 = sub_2427B935C();
    v10[15] = 1;
    sub_2427A3234();
    sub_2427B934C();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_2427A30BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2427A2EF8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_2427A30EC()
{
  result = qword_281349510;
  if (!qword_281349510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281349510);
  }

  return result;
}

uint64_t sub_2427A314C()
{
  if (*v0)
  {
    result = 1635017060;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t storeEnumTagSinglePayload for VersionTaggedData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2427A3234()
{
  result = qword_281349D80;
  if (!qword_281349D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281349D80);
  }

  return result;
}

uint64_t sub_2427A3288(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2427A32DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2427A32F0(a1, a2);
  }

  return a1;
}

uint64_t sub_2427A32F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2427A3344@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2427B8E8C();
  v4 = v3;
  v5 = sub_2427B8C3C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2427A3288(v2, v4);
  sub_2427B8C2C();
  sub_2427A35E0();
  v8 = sub_2427B8C1C();
  v10 = v9;

  v11 = sub_2427B8CCC();
  v13 = v12;
  sub_2427A32F0(v8, v10);
  sub_2427A32F0(v2, v4);
  result = sub_2427A32F0(v2, v4);
  *a1 = v11;
  a1[1] = v13;
  return result;
}

unint64_t sub_2427A35E0()
{
  result = qword_2813494F8;
  if (!qword_2813494F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813494F8);
  }

  return result;
}

uint64_t sub_2427A3634(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v15 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0910, &qword_2427BB280);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2427A30EC();
  sub_2427B945C();
  LOBYTE(v16) = 0;
  sub_2427B937C();
  if (!v4)
  {
    v16 = a3;
    v17 = v15;
    v18 = 1;
    sub_2427A3288(a3, v15);
    sub_2427A37F0();
    sub_2427B936C();
    sub_2427A32F0(v16, v17);
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_2427A37F0()
{
  result = qword_281349D88;
  if (!qword_281349D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281349D88);
  }

  return result;
}

void sub_2427A3844(uint64_t a1)
{
  v33 = sub_2427B8C9C();
  v2 = *(v33 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v31 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2427B916C();
    sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
    sub_2427A4C30();
    sub_2427B906C();
    a1 = v37;
    v5 = v38;
    v6 = v39;
    v7 = v40;
    v8 = v41;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v29[1] = v6;
  v12 = (v6 + 64) >> 6;
  v30 = (v2 + 8);
  v13 = MEMORY[0x277D84F90];
  v32 = a1;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v7;
    v15 = v8;
    v16 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(a1 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_22:
      sub_24279EC14();
      return;
    }

    while (1)
    {
      v34 = v17;
      v20 = MEMORY[0x245D18D70]();
      v21 = [v18 urlRepresentation];
      v22 = v31;
      sub_2427B8C7C();

      v23 = sub_2427B8C5C();
      v25 = v24;
      (*v30)(v22, v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_2427ABCB4(0, *(v13 + 2) + 1, 1, v13);
      }

      v27 = *(v13 + 2);
      v26 = *(v13 + 3);
      if (v27 >= v26 >> 1)
      {
        v13 = sub_2427ABCB4((v26 > 1), v27 + 1, 1, v13);
      }

      *(v13 + 2) = v27 + 1;
      v28 = &v13[16 * v27];
      *(v28 + 4) = v23;
      *(v28 + 5) = v25;
      objc_autoreleasePoolPop(v20);

      v7 = v16;
      v8 = v34;
      a1 = v32;
      if ((v32 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v19 = sub_2427B918C();
      if (v19)
      {
        v35 = v19;
        sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
        swift_dynamicCast();
        v18 = v36;
        v16 = v7;
        v17 = v8;
        if (v36)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {
      goto LABEL_22;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_2427A3B8C(uint64_t a1, uint64_t a2)
{
  v62 = sub_2427B8C9C();
  v4 = *(v62 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v61 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_2427B917C();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  v74 = MEMORY[0x277D84F90];
  sub_2427A4104(0, v7 & ~(v7 >> 63), 0);
  v8 = v74;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2427B916C();
    sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
    sub_2427A4C30();
    sub_2427B906C();
    a1 = v69;
    v9 = v70;
    v10 = v71;
    v11 = v72;
    v12 = v73;
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v32 = -1 << *(a1 + 32);
  v9 = a1 + 56;
  v10 = ~v32;
  v33 = -v32;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  else
  {
    v34 = -1;
  }

  v12 = v34 & *(a1 + 56);

  v11 = 0;
  if (v7 < 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  v60 = *MEMORY[0x277CF7AA0];
  v56 = v10;
  if (v7)
  {
    v59 = v7;
    v54 = a2;
    v55 = v4;
    v13 = 0;
    v14 = (v10 + 64) >> 6;
    v57 = a1 & 0x7FFFFFFFFFFFFFFFLL;
    v58 = (v4 + 8);
    v15 = v8;
    v64 = v9;
    v65 = a1;
    v63 = v14;
    while (1)
    {
      if (a1 < 0)
      {
        v19 = sub_2427B918C();
        if (!v19)
        {
          goto LABEL_45;
        }

        v67 = v19;
        sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
        swift_dynamicCast();
        v18 = v68;
        if (!v68)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (!v12)
        {
          while (1)
          {
            v16 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            if (v16 >= v14)
            {
              goto LABEL_45;
            }

            v12 = *(v9 + 8 * v16);
            ++v11;
            if (v12)
            {
              v11 = v16;
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_44;
        }

LABEL_14:
        v17 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v18 = *(*(a1 + 48) + ((v11 << 9) | (8 * v17)));
        if (!v18)
        {
          goto LABEL_45;
        }
      }

      v20 = sub_2427B8FBC();
      v66 = v21;
      v22 = v15;
      v23 = [v18 urlRepresentation];
      v24 = v61;
      sub_2427B8C7C();

      v15 = v22;
      v25 = sub_2427B8C5C();
      v27 = v26;
      (*v58)(v24, v62);

      v74 = v15;
      v29 = *(v15 + 16);
      v28 = *(v15 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_2427A4104((v28 > 1), v29 + 1, 1);
        v15 = v74;
      }

      ++v13;
      *(v15 + 16) = v29 + 1;
      v30 = (v15 + 32 * v29);
      v31 = v66;
      v30[4] = v20;
      v30[5] = v31;
      v30[6] = v25;
      v30[7] = v27;
      v9 = v64;
      a1 = v65;
      v14 = v63;
      if (v13 == v59)
      {
        v4 = v55;
        goto LABEL_28;
      }
    }
  }

LABEL_27:
  v57 = a1 & 0x7FFFFFFFFFFFFFFFLL;
  v14 = (v10 + 64) >> 6;
  v15 = v8;
LABEL_28:
  v65 = a1;
  v66 = (v4 + 8);
  v63 = v14;
  v64 = v9;
  if (a1 < 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v35 = v11;
    v36 = v12;
    v37 = v11;
    if (!v12)
    {
      break;
    }

LABEL_33:
    v38 = (v36 - 1) & v36;
    v39 = *(*(a1 + 48) + ((v37 << 9) | (8 * __clz(__rbit64(v36)))));
    if (!v39)
    {
LABEL_41:
      sub_24279EC14();
      return v15;
    }

    while (1)
    {
      v41 = sub_2427B8FBC();
      v43 = v42;
      v44 = v15;
      v45 = [v39 urlRepresentation];
      v46 = v61;
      sub_2427B8C7C();

      v15 = v44;
      v47 = sub_2427B8C5C();
      v49 = v48;
      (*v66)(v46, v62);

      v74 = v15;
      v51 = *(v15 + 16);
      v50 = *(v15 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_2427A4104((v50 > 1), v51 + 1, 1);
        v15 = v74;
      }

      *(v15 + 16) = v51 + 1;
      v52 = (v15 + 32 * v51);
      v52[4] = v41;
      v52[5] = v43;
      v52[6] = v47;
      v52[7] = v49;
      v11 = v37;
      v12 = v38;
      v9 = v64;
      a1 = v65;
      v14 = v63;
      if ((v65 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_35:
      v40 = sub_2427B918C();
      if (v40)
      {
        v67 = v40;
        sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
        swift_dynamicCast();
        v39 = v68;
        v37 = v11;
        v38 = v12;
        if (v68)
        {
          continue;
        }
      }

      goto LABEL_41;
    }
  }

  while (1)
  {
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v37 >= v14)
    {
      goto LABEL_41;
    }

    v36 = *(v9 + 8 * v37);
    ++v35;
    if (v36)
    {
      goto LABEL_33;
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:

  __break(1u);
  return result;
}

char *sub_2427A4104(char *a1, int64_t a2, char a3)
{
  result = sub_2427A4124(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2427A4124(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08F0, &qword_2427BB0C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2427A4230(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2427A4290(uint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  if (qword_281349520 != -1)
  {
    swift_once();
  }

  v8 = sub_2427B8F0C();
  __swift_project_value_buffer(v8, qword_281349DA8);

  v9 = sub_2427B8EEC();
  v10 = sub_2427B90CC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446978;
    *(v11 + 4) = sub_2427A1BEC(v4[9], v4[10], &v18);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2427A1BEC(v4[13], v4[14], &v18);
    *(v11 + 22) = 2048;
    *(v11 + 24) = *(v5 + 16);
    *(v11 + 32) = 2048;
    *(v11 + 34) = *(v6 + 16);

    _os_log_impl(&dword_24279B000, v9, v10, "Performing an incremental sync for collection %{public}s %s with %ld updated or inserted items and %ld deleted items", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x245D19310](v12, -1, -1);
    MEMORY[0x245D19310](v11, -1, -1);

    v13 = *(v6 + 16);
    if (!v13)
    {
      goto LABEL_13;
    }

LABEL_7:
    v14 = 0;
    while (1)
    {
      v15 = MEMORY[0x245D18D70]();
      sub_2427B5E14(v14, v4, 50, v6, &v18);
      if (v3)
      {
        goto LABEL_21;
      }

      v3 = 0;
      if (__OFADD__(v14, 50))
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 += 50;
      }

      objc_autoreleasePoolPop(v15);
      if (v14 >= v13)
      {
        goto LABEL_13;
      }
    }
  }

  v13 = *(v6 + 16);
  if (v13)
  {
    goto LABEL_7;
  }

LABEL_13:
  v16 = *(v5 + 16);
  if (!v16)
  {
LABEL_20:
    sub_2427A454C(v7);
    return;
  }

  v17 = 0;
  while (1)
  {
    v15 = MEMORY[0x245D18D70]();
    sub_2427B6510(v17, v4, 50, v5, &v18);
    if (v3)
    {
      break;
    }

    v3 = 0;
    if (__OFADD__(v17, 50))
    {
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 += 50;
    }

    objc_autoreleasePoolPop(v15);
    if (v17 >= v16)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  objc_autoreleasePoolPop(v15);
}

char *sub_2427A454C(uint64_t a1)
{
  v3 = v1;
  v41[1] = *MEMORY[0x277D85DE8];
  v5 = *(v3 + 144);
  v6 = *(v3 + 152);
  __swift_project_boxed_opaque_existential_1((v3 + 120), v5);
  result = (*(v6 + 24))(a1, v5, v6);
  if (v2)
  {
LABEL_2:
    v8 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = *(result + 2);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v36 = -v9;
    v37 = result;
    v12 = result + 72;
    v38 = v3;
    v34 = result + 72;
LABEL_6:
    v35 = v10;
    v13 = &v12[48 * v11];
    v14 = v11 + 1;
    do
    {
      if ((v14 - 1) >= *(result + 2))
      {
        __break(1u);
      }

      v16 = *(v13 - 1);
      v15 = *v13;
      v17 = *(v13 - 2);
      v39 = v14;
      v40 = *(v13 - 3);
      v18 = *(v13 - 5);
      v19 = *(v13 - 4);
      v20 = *(v3 + 56);
      swift_bridgeObjectRetain_n();

      v21 = v16;
      v22 = v16;
      v23 = v15;
      sub_2427A3288(v22, v15);
      v24 = sub_2427B8FAC();

      v25 = sub_2427B8FAC();

      v26 = [v20 colorWithProviderIdentifier:v24 externalIdentifier:v25];

      if (v26)
      {
        v27 = sub_2427B8CBC();
        [v26 setData_];

        v28 = *(v38 + 56);
        v41[0] = 0;
        if (![v28 saveColor:v26 commit:0 error:v41])
        {
          v33 = v41[0];

          sub_2427B8C4C();

          swift_willThrow();

          result = sub_2427A32F0(v21, v23);
          goto LABEL_2;
        }

        v11 = v39;
        v29 = v41[0];

        sub_2427A32F0(v21, v23);
        v10 = 1;
        result = v37;
        v3 = v38;
        v12 = v34;
        if (v36 + v39)
        {
          goto LABEL_6;
        }

        goto LABEL_15;
      }

      sub_2427A32F0(v21, v23);
      v3 = v38;
      v14 = v39 + 1;
      result = v37;
      v13 += 6;
    }

    while (v36 + v39 + 1 != 1);

    if ((v35 & 1) == 0)
    {
      goto LABEL_2;
    }

LABEL_15:
    v30 = *(v3 + 56);
    v41[0] = 0;
    if ([v30 commitWithRollback_])
    {
      result = v41[0];
      goto LABEL_18;
    }

    v32 = v41[0];
    sub_2427B8C4C();

    result = swift_willThrow();
    goto LABEL_2;
  }

LABEL_18:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2427A48C0(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  sub_2427A4A54(a1);
  v2 = *(v1 + 16);
  v3 = sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
  v4 = sub_2427B8FFC();

  v13[0] = 0;
  v5 = [v2 fetchListsWithObjectIDs:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    sub_2427A152C(0, &qword_281349470, 0x277D44668);
    sub_2427A4C30();
    v7 = sub_2427B8F6C();
    v8 = v6;

    sub_2427A4C98(v7);
    v3 = v9;
  }

  else
  {
    v10 = v13[0];
    sub_2427B8C4C();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_2427A4A54(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  result = swift_retain_n();
  if (v3)
  {
    v5 = 0;
    v19 = *MEMORY[0x277CF7AA0];
    v6 = a1 + 56;
    v18 = a1 + 56;
    do
    {
      v7 = (v6 + 32 * v5);
      v8 = v5;
      while (1)
      {
        if (v8 >= v3)
        {
          __break(1u);
LABEL_21:
          __break(1u);
          return result;
        }

        v5 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_21;
        }

        v10 = *(v7 - 3);
        v9 = *(v7 - 2);
        v12 = *(v7 - 1);
        v11 = *v7;
        if (v10 == sub_2427B8FBC() && v9 == v13)
        {
          break;
        }

        v15 = sub_2427B939C();

        if (v15)
        {
          goto LABEL_15;
        }

LABEL_5:
        ++v8;
        v7 += 4;
        if (v5 == v3)
        {
          goto LABEL_19;
        }
      }

LABEL_15:
      v16 = sub_2427AC710(v12, v11);

      if (!v16)
      {
        goto LABEL_5;
      }

      MEMORY[0x245D18880](result);
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2427B902C();
      }

      result = sub_2427B903C();
      v2 = v20;
      v6 = v18;
    }

    while (v5 != v3);
  }

LABEL_19:

  return v2;
}

unint64_t sub_2427A4C30()
{
  result = qword_2813494B8;
  if (!qword_2813494B8)
  {
    sub_2427A152C(255, &unk_2813494C0, 0x277D44708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813494B8);
  }

  return result;
}

void sub_2427A4C98(unint64_t a1)
{
  v58 = sub_2427B8C9C();
  v2 = *(v58 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v57 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = sub_2427B926C() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v6 = ~v9;
    v5 = a1 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(a1 + 64);
    v8 = a1;
  }

  v12 = 0;
  v59 = v6;
  v13 = (v6 + 64) >> 6;
  v56 = (v2 + 8);
  v55 = *MEMORY[0x277CF7AA0];
  v60 = MEMORY[0x277D84F90];
  v61 = v13;
  v62 = v8;
LABEL_8:
  v14 = v12;
  v15 = v7;
  v16 = v64;
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_9:
    v64 = v16;
    v17 = sub_2427B92EC();
    if (v17)
    {
      v19 = v18;
      v65 = v17;
      sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
      swift_dynamicCast();
      v20 = v66;
      v65 = v19;
      sub_2427A152C(0, &qword_281349470, 0x277D44668);
      swift_dynamicCast();
      v21 = v66;
      v12 = v14;
      v63 = v15;
      if (v20)
      {
        goto LABEL_17;
      }
    }

LABEL_25:
    sub_24279EC14();
  }

  else
  {
    while (1)
    {
      v22 = v14;
      v23 = v15;
      v12 = v14;
      if (!v15)
      {
        break;
      }

LABEL_16:
      v63 = (v23 - 1) & v23;
      v64 = v16;
      v24 = (v12 << 9) | (8 * __clz(__rbit64(v23)));
      v25 = *(*(v8 + 56) + v24);
      v20 = *(*(v8 + 48) + v24);
      v21 = v25;
      if (!v20)
      {
        goto LABEL_25;
      }

LABEL_17:
      v26 = sub_2427B8EDC();
      v27 = *(v26 - 8);
      v28 = *(v27 + 64);
      MEMORY[0x28223BE20]();
      v30 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = v20;
      v32 = v21;
      v33 = [v32 color];
      sub_2427B8ECC();
      v34 = v64;
      v35 = sub_2427B8EBC();
      if (!v34)
      {
        v64 = 0;
        v53 = v36;
        v54 = v35;
        v52 = [v31 urlRepresentation];
        v37 = v57;
        sub_2427B8C7C();

        v38 = sub_2427B8C5C();
        v51 = v39;
        v52 = v38;
        (*v56)(v37, v58);
        v40 = sub_2427B8FBC();
        v50 = v41;
        (*(v27 + 8))(v30, v26);

        v42 = v60;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_2427ABDC0(0, *(v42 + 2) + 1, 1, v42);
        }

        v13 = v61;
        v8 = v62;
        v7 = v63;
        v44 = *(v42 + 2);
        v43 = *(v42 + 3);
        v45 = v53;
        v46 = v54;
        if (v44 >= v43 >> 1)
        {
          v49 = sub_2427ABDC0((v43 > 1), v44 + 1, 1, v42);
          v45 = v53;
          v46 = v54;
          v42 = v49;
        }

        *(v42 + 2) = v44 + 1;
        v60 = v42;
        v47 = &v42[48 * v44];
        v48 = v50;
        *(v47 + 4) = v40;
        *(v47 + 5) = v48;
        *(v47 + 6) = v52;
        *(v47 + 7) = v51;
        *(v47 + 8) = v46;
        *(v47 + 9) = v45;
        goto LABEL_8;
      }

      (*(v27 + 8))(v30, v26);
      v16 = 0;
      v14 = v12;
      v8 = v62;
      v15 = v63;
      v13 = v61;
      if ((v62 & 0x8000000000000000) != 0)
      {
        goto LABEL_9;
      }
    }

    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v12 >= v13)
      {
        goto LABEL_25;
      }

      v23 = *(v5 + 8 * v12);
      ++v22;
      if (v23)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2427A5188(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {
  }

  return result;
}

uint64_t sub_2427A5240()
{
  v1 = *(v0 + 24);

  sub_2427A51EC(v0 + 40);
  v2 = *(v0 + 128);
  v3 = *(v0 + 144);
  v4 = *(v0 + 160);

  v5 = *(v0 + 168);

  v6 = *(v0 + 176);

  v7 = *(v0 + 184);

  return MEMORY[0x2821FE8D8](v0, 192, 7);
}

uint64_t sub_2427A52D0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2427A5318()
{
  MEMORY[0x245D19370](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2427A5350()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2427A53C8(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_2427B8D2C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08E0, &qword_2427BB0B8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08D8, &qword_2427BB0B0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_2427A554C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_2427B8D2C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08E0, &qword_2427BB0B8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08D8, &qword_2427BB0B0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_2427A56D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0890, &qword_2427BB3B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
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
}

uint64_t sub_2427A57A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0890, &qword_2427BB3B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  return result;
}

uint64_t IntegrationData.collections.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t IntegrationData.sourceID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t IntegrationData.sourceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t IntegrationData.sourceTitle.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t IntegrationData.sourceTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall IntegrationData.init(collections:sourceID:sourceTitle:)(CalendarIntegrationSupport::IntegrationData *__return_ptr retstr, Swift::OpaquePointer collections, Swift::String sourceID, Swift::String sourceTitle)
{
  retstr->collections = collections;
  retstr->sourceID = sourceID;
  retstr->sourceTitle = sourceTitle;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2427A5C60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2427A5CA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2427A5D0C(uint64_t a1, int a2)
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

uint64_t sub_2427A5D2C(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_2813494A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2813494A0);
    }
  }
}

uint64_t IntegrationCollection.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IntegrationCollection.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IntegrationCollection.collectionPersonaIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t IntegrationCollection.collectionPersonaIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t IntegrationCollection.title.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t IntegrationCollection.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t IntegrationCollection.dataSource.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 48));

  return sub_2427A5F88(a1, v1 + 48);
}

uint64_t sub_2427A5F88(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t IntegrationCollection.init(identifier:title:dataSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, void *a6@<X8>)
{
  a6[2] = 0;
  a6[3] = 0;
  *a6 = a1;
  a6[1] = a2;
  a6[4] = a3;
  a6[5] = a4;
  return sub_2427A5F88(a5, (a6 + 6));
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2427A5FFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2427A6044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t IntegrationSync.__allocating_init(eventStoreProvider:integrationData:)(id (*a1)(), uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  v12 = a3[1];
  v13 = *a3;
  v7 = *(a3 + 4);
  v8 = os_transaction_create();
  if (a1)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  *(v6 + 64) = v9;
  *(v6 + 72) = v8;
  if (a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = sub_24279F2A0;
  }

  *(v6 + 16) = v13;
  *(v6 + 32) = v12;
  *(v6 + 48) = v7;
  *(v6 + 56) = v10;
  return v6;
}

uint64_t IntegrationSync.init(eventStoreProvider:integrationData:)(id (*a1)(), uint64_t a2, __int128 *a3)
{
  v11 = a3[1];
  v12 = *a3;
  v6 = *(a3 + 4);
  v7 = os_transaction_create();
  if (a1)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  *(v3 + 64) = v8;
  *(v3 + 72) = v7;
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = sub_24279F2A0;
  }

  *(v3 + 16) = v12;
  *(v3 + 32) = v11;
  *(v3 + 48) = v6;
  *(v3 + 56) = v9;
  return v3;
}

uint64_t sub_2427A61B8()
{
  v2 = v0[23];
  if (v2)
  {
    v3 = v0[23];

    return v2;
  }

  v2 = v0;
  sub_2427A0C58();
  if (v1)
  {
    return v2;
  }

  v39 = 0;
  swift_beginAccess();
  v4 = v0[22];
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  v47 = v2;
  if (!v5)
  {
    v7 = MEMORY[0x277D84F90];
    v48[0] = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_9;
  }

  v7 = sub_2427A6808(v5, 0);
  v8 = sub_2427A6D40(v48, (v7 + 32), v5, v4);

  result = sub_24279EC14();
  if (v8 == v5)
  {
    v48[0] = v6;
    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_50;
    }

LABEL_9:
    if ((v7 & 0x4000000000000000) != 0)
    {
      goto LABEL_50;
    }

    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_51;
    }

    while (1)
    {
      v11 = 0;
      v44 = v7 & 0xC000000000000001;
      v41 = (v7 + 32);
      v40 = MEMORY[0x277D84F90];
      v42 = v10;
      v43 = v7;
      while (1)
      {
        if (v44)
        {
          v12 = MEMORY[0x245D18A70](v11, v7);
        }

        else
        {
          if (v11 >= *(v7 + 16))
          {
            goto LABEL_49;
          }

          v12 = v41[v11];
        }

        v13 = v12;
        v14 = __OFADD__(v11, 1);
        v15 = v11 + 1;
        if (v14)
        {
          break;
        }

        v16 = [v12 calendarsForEntityType_];
        sub_2427A152C(0, &qword_2813494D8, 0x277CC59B0);
        sub_2427A1B38();
        v17 = sub_2427B904C();

        v45 = v13;
        v46 = v15;
        if ((v17 & 0xC000000000000001) != 0)
        {
          sub_2427B916C();
          sub_2427B906C();
          v17 = v48[8];
          v18 = v48[9];
          v19 = v48[10];
          v20 = v48[11];
          v21 = v48[12];
        }

        else
        {
          v20 = 0;
          v22 = -1 << *(v17 + 32);
          v18 = v17 + 56;
          v19 = ~v22;
          v23 = -v22;
          if (v23 < 64)
          {
            v24 = ~(-1 << v23);
          }

          else
          {
            v24 = -1;
          }

          v21 = v24 & *(v17 + 56);
        }

        v25 = (v19 + 64) >> 6;
        while (1)
        {
          v7 = v21;
          if ((v17 & 0x8000000000000000) == 0)
          {
            break;
          }

          if (!sub_2427B918C())
          {
            goto LABEL_12;
          }

          swift_dynamicCast();
          v28 = v49;
          if (!v49)
          {
            goto LABEL_12;
          }

LABEL_35:
          v29 = [v28 externalID];
          if (!v29)
          {
            goto LABEL_25;
          }

          v30 = v29;
          v31 = sub_2427B8FBC();
          v33 = v32;

          if (!v33)
          {
            goto LABEL_25;
          }

          if (v31 == v47[5] && v33 == v47[6])
          {

            goto LABEL_44;
          }

          v35 = sub_2427B939C();

          if (v35)
          {
LABEL_44:
            v36 = v28;
            MEMORY[0x245D18880]();
            if (*((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v37 = *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_2427B902C();
            }

            sub_2427B903C();

            v40 = v48[0];
          }

          else
          {
LABEL_25:
          }
        }

        v26 = v20;
        v27 = v21;
        if (!v21)
        {
          while (1)
          {
            v20 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              break;
            }

            if (v20 >= v25)
            {
              goto LABEL_12;
            }

            v27 = *(v18 + 8 * v20);
            ++v26;
            if (v27)
            {
              goto LABEL_31;
            }
          }

          __break(1u);
          break;
        }

LABEL_31:
        v21 = (v27 - 1) & v27;
        v28 = *(*(v17 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v27)))));
        if (v28)
        {
          goto LABEL_35;
        }

LABEL_12:
        sub_24279EC14();

        v7 = v43;
        v11 = v46;
        if (v46 == v42)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      v10 = sub_2427B917C();
      if (!v10)
      {
LABEL_51:
        v40 = MEMORY[0x277D84F90];
LABEL_52:

        v38 = v47[23];
        v2 = v40;
        v47[23] = v40;

        return v2;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2427A6624()
{
  v1 = v0;
  v3 = v0[2];
  v2 = v0[3];

  v5 = v3(v4);

  v6 = v1[4];
  v1[4] = v5;

  swift_beginAccess();
  v7 = v1[22];
  v8 = MEMORY[0x277D84F98];
  v1[22] = MEMORY[0x277D84F98];

  swift_beginAccess();
  v9 = v1[21];
  v1[21] = v8;

  v10 = v1[23];
  v1[23] = 0;
}

void *IntegrationSync.deinit()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t IntegrationSync.__deallocating_deinit()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

void *sub_2427A6808(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC07E8, &unk_2427BBCD0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

char *sub_2427A6890(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC07F0, &unk_2427BAE90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2427A6984(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0818, &qword_2427BAEB0);
  result = sub_2427B91BC();
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
      sub_2427B940C();
      sub_2427B8FCC();
      result = sub_2427B943C();
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

void *sub_2427A6BE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0818, &qword_2427BAEB0);
  v2 = *v0;
  v3 = sub_2427B91AC();
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

void *sub_2427A6D40(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2427A6E94(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2427B917C();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_2427B91EC();
}

uint64_t sub_2427A6EF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC07C0, &qword_2427BADB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

unint64_t sub_2427A6FF8(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_2427B917C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x245D18A70](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = [v7 isEqual_];

    if (v9)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_2427A70F0(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = sub_2427A6FF8(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return sub_2427B917C();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v24 = a1;
  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == sub_2427B917C())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x245D18A70](v9, v5);
      goto LABEL_15;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v11 = *(v5 + 8 * v9 + 32);
LABEL_15:
    v12 = v11;
    v13 = [v11 isEqual_];

    if ((v13 & 1) == 0)
    {
      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x245D18A70](v8, v5);
          v15 = MEMORY[0x245D18A70](v9, v5);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v16)
          {
            goto LABEL_45;
          }

          if (v9 >= v16)
          {
            goto LABEL_46;
          }

          v17 = *(v5 + 32 + 8 * v9);
          v14 = *(v5 + 32 + 8 * v8);
          v15 = v17;
        }

        v18 = v15;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_2427A6E94(v5);
          v19 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v5 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v18;

        if ((v5 & 0x8000000000000000) != 0 || v19)
        {
          v5 = sub_2427A6E94(v5);
          v20 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v9 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v22 = v20 + 8 * v9;
        v23 = *(v22 + 32);
        *(v22 + 32) = v14;

        *v24 = v5;
      }

      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_42;
      }
    }

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_41;
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
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return sub_2427B917C();
}

uint64_t sub_2427A7350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_2427A152C(0, &qword_2813494D8, 0x277CC59B0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_2427B917C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_2427B917C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_2427A7460(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC07C8, &qword_2427BBCE0);
    v3 = sub_2427B933C();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      v11 = *(i - 6);

      sub_2427A3288(v9, v10);
      result = sub_2427B6B28(v11);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v11;
      v14 = (v3[7] + 48 * result);
      *v14 = v5;
      v14[1] = v6;
      v14[2] = v7;
      v14[3] = v8;
      v14[4] = v9;
      v14[5] = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id IntegrationServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *IntegrationServer.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26CalendarIntegrationSupport17IntegrationServer_syncManager;
  type metadata accessor for IntegrationSyncManager();
  swift_allocObject();
  *&v0[v2] = sub_2427A7EB8();
  v3 = OBJC_IVAR____TtC26CalendarIntegrationSupport17IntegrationServer_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0830, &unk_2427BAEC0);
  v4 = swift_allocObject();
  *(v4 + 20) = 0;
  *(v4 + 16) = 0;
  *&v0[v3] = v4;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = objc_allocWithZone(MEMORY[0x277CF77B8]);
  aBlock[4] = sub_2427A7B4C;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2427A7B54;
  aBlock[3] = &block_descriptor;
  v7 = _Block_copy(aBlock);

  v8 = [v6 initWithStateChangedCallback_];
  _Block_release(v7);

  *&v1[OBJC_IVAR____TtC26CalendarIntegrationSupport17IntegrationServer_deviceLockObserver] = v8;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for IntegrationServer();
  v9 = objc_msgSendSuper2(&v13, sel_init);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v10 = *&v9[OBJC_IVAR____TtC26CalendarIntegrationSupport17IntegrationServer_deviceLockObserver];
  v11 = v9;
  if ([v10 hasBeenUnlockedSinceBoot])
  {
    sub_2427A7A24();
  }

  return v11;
}

void sub_2427A77C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2427A7A24();
  }
}

void sub_2427A78DC()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC26CalendarIntegrationSupport17IntegrationServer_syncManager) + 32);
  os_unfair_lock_lock((v1 + 20));
  sub_24279CFF8((v1 + 16));

  os_unfair_lock_unlock((v1 + 20));
}

void sub_2427A7940()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC26CalendarIntegrationSupport17IntegrationServer_syncManager) + 32);
  os_unfair_lock_lock((v1 + 20));
  sub_2427A7BD4((v1 + 16));

  os_unfair_lock_unlock((v1 + 20));
}

void sub_2427A7A24()
{
  v1 = *(v0 + OBJC_IVAR____TtC26CalendarIntegrationSupport17IntegrationServer_lock);
  os_unfair_lock_lock((v1 + 20));
  sub_2427A7E14((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 20));
  if (v3 == 1)
  {
    v2 = *(*(v0 + OBJC_IVAR____TtC26CalendarIntegrationSupport17IntegrationServer_syncManager) + 32);
    os_unfair_lock_lock((v2 + 20));
    sub_2427A7E84((v2 + 16));
    os_unfair_lock_unlock((v2 + 20));
  }
}

id IntegrationServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntegrationServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2427A7B54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for IntegrationServer.StartedState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for IntegrationServer.StartedState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

_BYTE *sub_2427A7E14@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  if (*result == 1 && (result[1] & 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    v7 = result;
    result = v4();
    v6 = *v7 & v7[1];
  }

  *a2 = v6 & 1;
  return result;
}

void *sub_2427A7EB8()
{
  v1 = v0;
  v2 = sub_2427B90DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = sub_2427B8F2C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_2427B90EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0870, &qword_2427BAFB8);
  v11 = swift_allocObject();
  *(v11 + 20) = 0;
  *(v11 + 16) = 0;
  *(v11 + 18) = 0;
  v0[4] = v11;
  v12 = *MEMORY[0x277CF7A58];
  sub_2427B8FBC();
  v13 = objc_allocWithZone(MEMORY[0x277CF7818]);
  v14 = sub_2427B8FAC();

  v15 = [v13 initWithDomain_];

  v0[5] = v15;
  sub_2427A86FC();
  (*(v7 + 104))(v10, *MEMORY[0x277D85268], v6);
  sub_2427B8F1C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2427A8748();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0878, &unk_2427BAFC0);
  sub_2427A87A0();
  sub_2427B913C();
  v0[3] = sub_2427B90FC();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = v1[3];
  v18 = objc_allocWithZone(MEMORY[0x277CF7760]);
  aBlock[4] = sub_24279D79C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24279D6DC;
  aBlock[3] = &block_descriptor_0;
  v19 = _Block_copy(aBlock);

  v20 = [v18 initWithQueue:v17 andBlock:v19];
  _Block_release(v19);

  v1[2] = v20;
  swift_beginAccess();
  swift_weakAssign();

  return v1;
}

void sub_2427A82B8(_BYTE *a1)
{
  if (a1[1] != 1)
  {
    return;
  }

  if (a1[2] == 1)
  {
    if (qword_281349520 != -1)
    {
      swift_once();
    }

    v1 = sub_2427B8F0C();
    __swift_project_value_buffer(v1, qword_281349DA8);
    oslog = sub_2427B8EEC();
    v2 = sub_2427B90AC();
    if (!os_log_type_enabled(oslog, v2))
    {
      goto LABEL_21;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "Catch-up sync requested, but not required";
LABEL_20:
    _os_log_impl(&dword_24279B000, oslog, v2, v4, v3, 2u);
    MEMORY[0x245D19310](v3, -1, -1);
LABEL_21:

    return;
  }

  if ((*a1 & 1) == 0)
  {
    if (qword_281349520 != -1)
    {
      swift_once();
    }

    v10 = sub_2427B8F0C();
    __swift_project_value_buffer(v10, qword_281349DA8);
    oslog = sub_2427B8EEC();
    v2 = sub_2427B90CC();
    if (!os_log_type_enabled(oslog, v2))
    {
      goto LABEL_21;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "Catch-up sync requested, but sync manager not yet started";
    goto LABEL_20;
  }

  if (qword_281349520 != -1)
  {
    swift_once();
  }

  v6 = sub_2427B8F0C();
  __swift_project_value_buffer(v6, qword_281349DA8);
  v7 = sub_2427B8EEC();
  v8 = sub_2427B90CC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24279B000, v7, v8, "Performing catch-up sync", v9, 2u);
    MEMORY[0x245D19310](v9, -1, -1);
  }

  sub_24279D02C(a1);
}

uint64_t sub_2427A8558()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IntegrationSyncManager.State(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for IntegrationSyncManager.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_2427A86FC()
{
  result = qword_281349488;
  if (!qword_281349488)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281349488);
  }

  return result;
}

unint64_t sub_2427A8748()
{
  result = qword_281349490;
  if (!qword_281349490)
  {
    sub_2427B90DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281349490);
  }

  return result;
}

unint64_t sub_2427A87A0()
{
  result = qword_2813494E0;
  if (!qword_2813494E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC0878, &unk_2427BAFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813494E0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for CalendarIntegrationSupportLog(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CalendarIntegrationSupportLog(_WORD *result, int a2, int a3)
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

uint64_t sub_2427A8980(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2427B8F0C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2427B8EFC();
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

uint64_t sub_2427A8A64()
{
  sub_2427B940C();
  MEMORY[0x245D18CB0](0);
  return sub_2427B943C();
}

uint64_t sub_2427A8AD0()
{
  sub_2427B940C();
  MEMORY[0x245D18CB0](0);
  return sub_2427B943C();
}

id sub_2427A8B20(uint64_t a1)
{
  v2 = v1;
  v21[1] = *MEMORY[0x277D85DE8];
  sub_2427A9A90(a1);
  v4 = *(v1 + 16);
  sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
  v5 = sub_2427B8FFC();

  v21[0] = 0;
  v6 = [v4 fetchRemindersWithObjectIDs:v5 error:v21];

  v7 = v21[0];
  if (v6)
  {
    sub_2427A152C(0, &qword_2813494B0, 0x277D44758);
    sub_2427A4C30();
    v8 = sub_2427B8F6C();
    v9 = v7;

    if ((v8 & 0xC000000000000001) != 0)
    {
      v10 = sub_2427B917C();
    }

    else
    {
      v10 = *(v8 + 16);
    }

    v12 = *(a1 + 16);
    if (v10 != v12)
    {
      if (qword_281349518 != -1)
      {
        swift_once();
      }

      v13 = sub_2427B8F0C();
      __swift_project_value_buffer(v13, qword_281349D90);

      v14 = sub_2427B8EEC();
      v15 = sub_2427B90BC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134218240;
        *(v16 + 4) = v12;

        *(v16 + 12) = 2048;
        if ((v8 & 0xC000000000000001) != 0)
        {
          v17 = sub_2427B917C();
        }

        else
        {
          v17 = *(v8 + 16);
        }

        *(v16 + 14) = v17;

        _os_log_impl(&dword_24279B000, v14, v15, "Requested reminders for %ld ids but only received %ld reminders", v16, 0x16u);
        MEMORY[0x245D19310](v16, -1, -1);
      }

      else
      {
      }
    }

    v21[0] = sub_2427A7460(MEMORY[0x277D84F90]);
    MEMORY[0x28223BE20](v21[0]);
    v20[2] = v21;
    v20[3] = v2;
    v11 = sub_2427ACB24(v8, sub_2427ACE64, v20);
  }

  else
  {
    v11 = v21[0];
    sub_2427B8C4C();

    swift_willThrow();
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_2427A8E40(void *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v81 = a3;
  v7 = sub_2427B8D5C();
  v77 = *(v7 - 8);
  v78 = v7;
  v8 = *(v77 + 64);
  MEMORY[0x28223BE20](v7);
  v76 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1;
  sub_2427A9228(v10, a4);
  v75 = v10;
  v11 = [v10 list];
  v12 = [v11 objectID];
  v13 = v12;
  v14 = *a2;
  v15 = *(*a2 + 16);
  v82 = a4;
  if (v15 && (v16 = sub_2427B6B28(v12), (v17 & 1) != 0))
  {
    v18 = (*(v14 + 56) + 48 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[3];
    v73 = v18[2];
    v74 = v19;
    v23 = v18[4];
    v22 = v18[5];
    v24 = (a4 + *(type metadata accessor for IntegrationEntry(0) + 52));
    v25 = *v24;
    v72 = v24[1];
    v79 = v13;
    v80 = v11;
    v27 = v24[2];
    v26 = v24[3];
    v28 = v24[4];
    v29 = v24[5];

    sub_2427A3288(v23, v22);
    v30 = v27;
    v31 = v26;
    v13 = v79;
    v11 = v80;
    sub_2427ACEDC(v25, v72, v30, v31, v28, v29);
    v32 = v73;
    *v24 = v74;
    v24[1] = v20;
    v24[2] = v32;
    v24[3] = v21;
    v24[4] = v23;
    v24[5] = v22;
  }

  else
  {
    sub_2427A984C(v11, v13, &v84);
    v33 = *(&v84 + 1);
    if (*(&v84 + 1))
    {
      v74 = a2;
      v35 = v87;
      v34 = v88;
      v36 = v86;
      v72 = v84;
      v73 = v85;
      v37 = *(type metadata accessor for IntegrationEntry(0) + 52);
      v79 = v13;
      v80 = v11;
      v38 = (a4 + v37);
      v39 = *(a4 + v37);
      v40 = v38[1];
      v71 = v39;
      v41 = v38[2];
      v42 = v38[3];
      v44 = v38[4];
      v43 = v38[5];

      sub_2427A3288(v35, v34);
      v45 = v41;
      v13 = v79;
      sub_2427ACEDC(v71, v40, v45, v42, v44, v43);
      v47 = v72;
      v46 = v73;
      *v38 = v72;
      v38[1] = v33;
      v38[2] = v46;
      v38[3] = v36;
      v38[4] = v35;
      v38[5] = v34;
      v11 = v80;
      *&v84 = v47;
      *(&v84 + 1) = v33;
      v85 = v46;
      v86 = v36;
      v87 = v35;
      v88 = v34;
      v48 = v13;
      v49 = v74;
      v50 = *v74;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = *v49;
      sub_2427B7108(&v84, v48, isUniquelyReferenced_nonNull_native);

      *v49 = v83;
    }
  }

  v52 = [v11 account];
  v53 = [v52 externalIdentifier];

  if (v53)
  {
    v54 = sub_2427B8FBC();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0;
  }

  v57 = v82;
  v58 = sub_2427A9BB8(v54, v56);
  v60 = v59;

  v61 = type metadata accessor for IntegrationEntry(0);
  v62 = (v57 + *(v61 + 56));
  v63 = v62[1];

  *v62 = v58;
  v62[1] = v60;
  v64 = (v57 + *(v61 + 60));
  v65 = v64[1];
  if (v65)
  {
    v66 = *v64;
  }

  else
  {
    v67 = [v75 objectID];
    v68 = [v67 uuid];

    v69 = v76;
    sub_2427B8D4C();

    v66 = sub_2427B8D3C();
    v65 = v70;

    (*(v77 + 8))(v69, v78);
  }

  *v64 = v66;
  v64[1] = v65;
}

void sub_2427A9228(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08D8, &qword_2427BB0B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v76 = v65 - v6;
  v7 = sub_2427B8BDC();
  v73 = *(v7 - 8);
  v74 = v7;
  v8 = *(v73 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v69 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v70 = v65 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v67 = v65 - v14;
  MEMORY[0x28223BE20](v13);
  v68 = v65 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08E0, &qword_2427BB0B8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v72 = v65 - v18;
  v19 = sub_2427B8C9C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for IntegrationEntry(0);
  v25 = v24[7];
  v26 = sub_2427B8DBC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v71 = v25;
  v65[1] = v27 + 56;
  v66 = v28;
  v28(a2 + v25, 1, 1, v26);
  v29 = v24[12];
  v30 = type metadata accessor for IntegrationRecurrence(0);
  v31 = *(*(v30 - 8) + 56);
  v75 = v29;
  v31(a2 + v29, 1, 1, v30);
  v32 = a2 + v24[13];
  *(v32 + 1) = 0u;
  *(v32 + 2) = 0u;
  *v32 = 0u;
  v33 = [a1 objectID];
  v34 = [v33 urlRepresentation];

  sub_2427B8C7C();
  v35 = sub_2427B8C5C();
  v37 = v36;
  (*(v20 + 8))(v23, v19);
  *a2 = v35;
  a2[1] = v37;
  REMReminder.startDate.getter(a2 + v24[5]);
  REMReminder.startDate.getter(a2 + v24[6]);
  v38 = [a1 effectiveDisplayDateComponents_forCalendar];
  if (v38)
  {
    v39 = v67;
    v40 = v38;
    sub_2427B8BAC();

    v42 = v73;
    v41 = v74;
    v43 = v68;
    (*(v73 + 32))(v68, v39, v74);
    v44 = v72;
    sub_2427B8BCC();
    (*(v42 + 8))(v43, v41);
  }

  else
  {
    v44 = v72;
    v66(v72, 1, 1, v26);
    v42 = v73;
    v41 = v74;
  }

  sub_2427ACF3C(v44, a2 + v71, &qword_27ECC08E0, &qword_2427BB0B8);
  v45 = [a1 titleAsString];
  if (v45)
  {
    v46 = v45;
    v47 = sub_2427B8FBC();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0xE000000000000000;
  }

  v50 = (a2 + v24[8]);
  *v50 = v47;
  v50[1] = v49;
  v51 = [a1 dueDateComponents];
  if (v51)
  {
    v52 = v69;
    v53 = v51;
    sub_2427B8BAC();

    v54 = v70;
    (*(v42 + 32))(v70, v52, v41);
    sub_2427B8BBC();
    v56 = v55;
    (*(v42 + 8))(v54, v41);
  }

  else
  {
    v56 = 0;
  }

  v57 = (a2 + v24[14]);
  *(a2 + v24[9]) = v56 & 1;
  *(a2 + v24[10]) = [a1 isCompleted];
  v58 = v76;
  REMReminder.recurrence.getter(v76);
  sub_2427ACF3C(v58, a2 + v75, &qword_27ECC08D8, &qword_2427BB0B0);
  v77 = a1;
  sub_2427A152C(0, &qword_2813494B0, 0x277D44758);
  sub_2427B8DCC();
  *(a2 + v24[11]) = REMReminderDefaultPriorityForPriorityLevel();
  sub_2427ACEDC(*v32, *(v32 + 1), *(v32 + 2), *(v32 + 3), *(v32 + 4), *(v32 + 5));
  *(v32 + 1) = 0u;
  *(v32 + 2) = 0u;
  *v32 = 0u;
  *v57 = 0;
  v57[1] = 0;
  v59 = [a1 externalIdentifier];
  if (v59)
  {
    v60 = v59;
    v61 = sub_2427B8FBC();
    v63 = v62;
  }

  else
  {

    v61 = 0;
    v63 = 0;
  }

  v64 = (a2 + v24[15]);
  *v64 = v61;
  v64[1] = v63;
}

uint64_t sub_2427A984C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = a2;
  v5 = sub_2427B8C9C();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2427B8EDC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 color];
  sub_2427B8ECC();
  v15 = sub_2427B8EBC();
  v17 = v16;
  v18 = [v28 urlRepresentation];
  sub_2427B8C7C();

  v19 = sub_2427B8C5C();
  v21 = v20;
  (*(v29 + 8))(v8, v5);
  v22 = *MEMORY[0x277CF7AA0];
  v23 = sub_2427B8FBC();
  v25 = v24;
  result = (*(v10 + 8))(v13, v9);
  *a3 = v23;
  a3[1] = v25;
  a3[2] = v19;
  a3[3] = v21;
  a3[4] = v15;
  a3[5] = v17;
  return result;
}

uint64_t sub_2427A9A90(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);

  v5 = 0;
  v6 = a1 + 40;
LABEL_2:
  v7 = (v6 + 16 * v5);
  while (1)
  {
    if (v3 == v5)
    {

      return v2;
    }

    if (v5 >= v3)
    {
      break;
    }

    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_12;
    }

    v9 = *(v7 - 1);
    v10 = *v7;

    v11 = sub_2427AC710(v9, v10);

    ++v5;
    v7 += 2;
    if (v11)
    {
      MEMORY[0x245D18880](result);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2427B902C();
      }

      result = sub_2427B903C();
      v2 = v13;
      v5 = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2427A9BB8(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v5 = *(v2 + 32);
    if (*(v5 + 16))
    {
      v6 = *(v2 + 32);

      v7 = sub_24279D264(a1, a2);
      if (v8)
      {
        v9 = (*(v5 + 56) + 16 * v7);
        a1 = *v9;
        v10 = v9[1];

        return a1;
      }
    }

    v11 = *(v2 + 24);
    if (v11)
    {
      v12 = *(v2 + 24);
    }

    else
    {
      v13 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
      v14 = *(v2 + 24);
      *(v2 + 24) = v13;
      v12 = v13;

      v11 = 0;
    }

    v15 = v11;
    v16 = sub_2427B8FAC();
    v17 = [v12 accountWithIdentifier_];

    if (v17)
    {
      v18 = [v17 cal_personaIdentifier];
      if (v18)
      {
        v19 = v18;
        a1 = sub_2427B8FBC();

        return a1;
      }
    }

    else
    {
      if (qword_281349520 != -1)
      {
        swift_once();
      }

      v20 = sub_2427B8F0C();
      __swift_project_value_buffer(v20, qword_281349DA8);

      v17 = sub_2427B8EEC();
      v21 = sub_2427B90BC();

      if (os_log_type_enabled(v17, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v25 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_2427A1BEC(a1, a2, &v25);
        _os_log_impl(&dword_24279B000, v17, v21, "Could not find account with identifier %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x245D19310](v23, -1, -1);
        MEMORY[0x245D19310](v22, -1, -1);
      }
    }

    return 0;
  }

  return a1;
}

uint64_t REMReminder.identifier.getter()
{
  v1 = sub_2427B8C9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 objectID];
  v7 = [v6 urlRepresentation];

  sub_2427B8C7C();
  v8 = sub_2427B8C5C();
  (*(v2 + 8))(v5, v1);
  return v8;
}

uint64_t REMReminder.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0880, &unk_2427BB000) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v4 = &v54 - v3;
  v5 = sub_2427B8D6C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  (MEMORY[0x28223BE20])();
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2427B8D9C();
  v59 = *(v10 - 8);
  v11 = *(v59 + 64);
  (MEMORY[0x28223BE20])();
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_2427B8BDC();
  v14 = *(v58 - 8);
  v15 = *(v14 + 64);
  v16 = (MEMORY[0x28223BE20])();
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  v21 = [v1 effectiveDisplayDateComponents_forCalendar];
  if (v21)
  {
    v57 = v10;
    v22 = v21;
    sub_2427B8BAC();

    (*(v6 + 104))(v9, *MEMORY[0x277CC9830], v5);
    sub_2427B8D7C();
    (*(v6 + 8))(v9, v5);
    sub_2427B8D8C();
    v23 = sub_2427B8D2C();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v4, 1, v23) == 1)
    {
      sub_2427A4230(v4, &qword_27ECC0880, &unk_2427BB000);
      if (qword_281349520 != -1)
      {
        swift_once();
      }

      v25 = sub_2427B8F0C();
      __swift_project_value_buffer(v25, qword_281349DA8);
      v26 = v58;
      (*(v14 + 16))(v18, v20, v58);
      v27 = sub_2427B8EEC();
      v28 = sub_2427B90BC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v55 = v29;
        v56 = swift_slowAlloc();
        v61 = v56;
        *v29 = 136315138;
        sub_2427ABFE4();
        v30 = sub_2427B938C();
        v31 = v26;
        v33 = v32;
        v34 = *(v14 + 8);
        v35 = v18;
        v36 = v31;
        v34(v35, v31);
        v37 = sub_2427A1BEC(v30, v33, &v61);

        v38 = v55;
        *(v55 + 1) = v37;
        _os_log_impl(&dword_24279B000, v27, v28, "We got a reminder with a due date that couldn't be converted to a date: %s", v38, 0xCu);
        v39 = v56;
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x245D19310](v39, -1, -1);
        MEMORY[0x245D19310](v38, -1, -1);
      }

      else
      {

        v34 = *(v14 + 8);
        v34(v18, v26);
        v36 = v26;
      }

      v52 = v57;
      sub_2427B8CEC();
      (*(v59 + 8))(v13, v52);
      return (v34)(v20, v36);
    }

    else
    {
      (*(v59 + 8))(v13, v57);
      (*(v14 + 8))(v20, v58);
      return (*(v24 + 32))(v60, v4, v23);
    }
  }

  else
  {
    if (qword_281349520 != -1)
    {
      swift_once();
    }

    v40 = sub_2427B8F0C();
    __swift_project_value_buffer(v40, qword_281349DA8);
    v41 = v1;
    v42 = sub_2427B8EEC();
    v43 = sub_2427B90BC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v61 = v45;
      *v44 = 136315138;
      v46 = [v41 titleAsString];
      if (v46)
      {
        v47 = v46;
        v48 = sub_2427B8FBC();
        v50 = v49;
      }

      else
      {
        v48 = 0;
        v50 = 0xE000000000000000;
      }

      v53 = sub_2427A1BEC(v48, v50, &v61);

      *(v44 + 4) = v53;
      _os_log_impl(&dword_24279B000, v42, v43, "We ended up with a reminder without a due date: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x245D19310](v45, -1, -1);
      MEMORY[0x245D19310](v44, -1, -1);
    }

    return sub_2427B8CEC();
  }
}

uint64_t REMReminder.title.getter()
{
  v1 = [v0 titleAsString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2427B8FBC();

  return v3;
}

uint64_t REMReminder.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2427B8BDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  v12 = [v2 effectiveDisplayDateComponents_forCalendar];
  if (v12)
  {
    v13 = v12;
    sub_2427B8BAC();

    (*(v5 + 32))(v11, v9, v4);
    sub_2427B8BCC();
    return (*(v5 + 8))(v11, v4);
  }

  else
  {
    v15 = sub_2427B8DBC();
    v16 = *(*(v15 - 8) + 56);

    return v16(a1, 1, 1, v15);
  }
}

uint64_t REMReminder.allDay.getter()
{
  v1 = v0;
  v2 = sub_2427B8BDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = [v1 dueDateComponents];
  if (v10)
  {
    v11 = v10;
    sub_2427B8BAC();

    (*(v3 + 32))(v9, v7, v2);
    sub_2427B8BBC();
    v13 = v12;
    (*(v3 + 8))(v9, v2);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t REMReminder.priority.getter()
{
  sub_2427A152C(0, &qword_2813494B0, 0x277D44758);
  sub_2427B8DCC();
  return REMReminderDefaultPriorityForPriorityLevel();
}

void REMReminder.recurrence.getter(uint64_t a1@<X8>)
{
  v3 = sub_2427B8D2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v83 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0890, &qword_2427BB3B0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v94 = &v83 - v16;
  if ([v1 isCompleted])
  {
    goto LABEL_2;
  }

  v17 = [v1 recurrenceRules];
  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = v17;
  sub_2427A152C(0, &qword_281349480, 0x277D44738);
  v19 = sub_2427B901C();

  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_44:

LABEL_2:
    v17 = 0;
LABEL_15:
    v34 = type metadata accessor for IntegrationRecurrence(v17);
    v35 = *(*(v34 - 8) + 56);

    v35(a1, 1, 1, v34);
    return;
  }

  if (!sub_2427B917C())
  {
    goto LABEL_44;
  }

LABEL_6:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x245D18A70](0, v19);
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_47;
    }

    v20 = *(v19 + 32);
  }

  v21 = v20;

  v22 = [v21 frequency];
  if (v22 >= 5)
  {
    v23 = 3;
  }

  else
  {
    v23 = 0x4030201uLL >> (8 * v22);
  }

  v24 = [v21 interval];
  v93 = v21;
  v25 = [v21 recurrenceEnd];
  v92 = v23;
  v91 = v24;
  if (v25)
  {
    v26 = v25;
    v27 = [v25 endDate];
    if (v27)
    {
      v28 = v27;
      sub_2427B8D1C();

      v29 = *(v4 + 32);
      v29(v10, v8, v3);
      v30 = v94;
      v29(v94, v10, v3);
      v31 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
      swift_storeEnumTagMultiPayload();
      v32 = *(*(v31 - 8) + 56);
      v33 = v30;
    }

    else
    {
      v37 = [v26 occurrenceCount];

      if ((v37 & 0x8000000000000000) != 0)
      {
        goto LABEL_67;
      }

      v38 = v94;
      *v94 = v37;
      v31 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
      swift_storeEnumTagMultiPayload();
      v32 = *(*(v31 - 8) + 56);
      v33 = v38;
    }

    v32(v33, 0, 1, v31);
  }

  else
  {
    v36 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
    (*(*(v36 - 8) + 56))(v94, 1, 1, v36);
  }

  v39 = v93;
  v40 = [v93 firstDayOfTheWeek];
  if (v40 >= 8)
  {
    v41 = 7;
  }

  else
  {
    v41 = 0x605040302010007uLL >> (8 * v40);
  }

  v42 = [v39 daysOfTheWeek];
  v90 = v41;
  if (v42)
  {
    v43 = v42;
    sub_2427A152C(0, &qword_27ECC08A0, 0x277D44720);
    v8 = sub_2427B901C();

    if (!(v8 >> 62))
    {
      v44 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v84 = v15;
      v85 = a1;
      if (v44)
      {
LABEL_28:
        if (v44 >= 1)
        {
          v45 = 0;
          v46 = MEMORY[0x277D84F90];
          do
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v47 = MEMORY[0x245D18A70](v45, v8);
            }

            else
            {
              v47 = *(v8 + 8 * v45 + 32);
            }

            v48 = v47;
            v49 = [v47 dayOfTheWeek];
            if (v49 >= 8)
            {
              v50 = 1;
            }

            else
            {
              v50 = 0x605040302010001uLL >> (8 * v49);
            }

            v51 = [v48 weekNumber];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v46 = sub_2427ABEE0(0, *(v46 + 2) + 1, 1, v46);
            }

            v53 = *(v46 + 2);
            v52 = *(v46 + 3);
            if (v53 >= v52 >> 1)
            {
              v46 = sub_2427ABEE0((v52 > 1), v53 + 1, 1, v46);
            }

            ++v45;

            *(v46 + 2) = v53 + 1;
            v54 = &v46[16 * v53];
            v54[32] = v50;
            *(v54 + 5) = v51;
          }

          while (v44 != v45);
          goto LABEL_49;
        }

        __break(1u);
LABEL_67:
        __break(1u);
        return;
      }

LABEL_48:
      v46 = MEMORY[0x277D84F90];
LABEL_49:

      v15 = v84;
      a1 = v85;
      v39 = v93;
      goto LABEL_50;
    }

LABEL_47:
    v44 = sub_2427B917C();
    v84 = v15;
    v85 = a1;
    if (v44)
    {
      goto LABEL_28;
    }

    goto LABEL_48;
  }

  v46 = 0;
LABEL_50:
  v55 = [v39 daysOfTheMonth];
  if (v55)
  {
    v56 = v55;
    sub_2427A152C(0, &qword_27ECC0898, 0x277CCABB0);
    v57 = sub_2427B901C();

    v93 = sub_2427AB374(v57);
  }

  else
  {
    v93 = 0;
  }

  v58 = [v39 daysOfTheYear];
  if (v58)
  {
    v59 = v58;
    sub_2427A152C(0, &qword_27ECC0898, 0x277CCABB0);
    v60 = sub_2427B901C();

    v89 = sub_2427AB374(v60);
  }

  else
  {
    v89 = 0;
  }

  v61 = [v39 weeksOfTheYear];
  if (v61)
  {
    v62 = v61;
    sub_2427A152C(0, &qword_27ECC0898, 0x277CCABB0);
    v63 = sub_2427B901C();

    v88 = sub_2427AB374(v63);
  }

  else
  {
    v88 = 0;
  }

  v64 = [v39 monthsOfTheYear];
  if (v64)
  {
    v65 = v64;
    sub_2427A152C(0, &qword_27ECC0898, 0x277CCABB0);
    v66 = sub_2427B901C();

    v87 = sub_2427AB374(v66);
  }

  else
  {
    v87 = 0;
  }

  v67 = [v39 setPositions];
  if (v67)
  {
    v68 = v67;
    sub_2427A152C(0, &qword_27ECC0898, 0x277CCABB0);
    v69 = sub_2427B901C();

    v86 = sub_2427AB374(v69);
  }

  else
  {
    v86 = 0;
  }

  sub_2427AC03C(v94, v15);
  v70 = type metadata accessor for IntegrationRecurrence(0);
  v71 = v70[6];
  v72 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
  (*(*(v72 - 8) + 56))(a1 + v71, 1, 1, v72);
  v73 = v70[7];
  *(a1 + v73) = 7;
  v74 = v70[9];
  v94 = v70[8];
  v75 = v70[10];
  v76 = v70[11];
  v77 = v15;
  v79 = v70[12];
  v78 = v70[13];
  sub_2427ACF3C(v77, a1 + v71, &qword_27ECC0890, &qword_2427BB3B0);
  *a1 = v92;
  *(a1 + 8) = v91;
  *(a1 + v73) = v90;
  v80 = v93;
  *(a1 + v94) = v46;
  *(a1 + v74) = v80;
  v81 = v88;
  *(a1 + v75) = v89;
  *(a1 + v76) = v81;
  v82 = v86;
  *(a1 + v79) = v87;
  *(a1 + v78) = v82;
  (*(*(v70 - 1) + 56))(a1, 0, 1, v70);
}

uint64_t sub_2427AB374(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2427B917C())
  {
    v8 = MEMORY[0x277D84F90];
    sub_2427AC0CC(0, i & ~(i >> 63), 0);
    v4 = v8;
    if (v2)
    {
      v2 = sub_2427B917C();
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

  v5 = MEMORY[0x245D18A70](0, a1);
LABEL_10:
  v6 = v5;
  sub_2427B908C();

  return 0;
}

double REMReminder.color.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_2427AB518()
{
  v1 = sub_2427B8C9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*v0 objectID];
  v7 = [v6 urlRepresentation];

  sub_2427B8C7C();
  v8 = sub_2427B8C5C();
  (*(v2 + 8))(v5, v1);
  return v8;
}

uint64_t sub_2427AB638@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2427B8BDC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = [*v1 effectiveDisplayDateComponents_forCalendar];
  if (v11)
  {
    v12 = v11;
    sub_2427B8BAC();

    (*(v4 + 32))(v10, v8, v3);
    sub_2427B8BCC();
    return (*(v4 + 8))(v10, v3);
  }

  else
  {
    v14 = sub_2427B8DBC();
    v15 = *(*(v14 - 8) + 56);

    return v15(a1, 1, 1, v14);
  }
}

uint64_t sub_2427AB7D4()
{
  v1 = [*v0 titleAsString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2427B8FBC();

  return v3;
}

uint64_t sub_2427AB83C()
{
  v1 = sub_2427B8BDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = [*v0 dueDateComponents];
  if (v9)
  {
    v10 = v9;
    sub_2427B8BAC();

    (*(v2 + 32))(v8, v6, v1);
    sub_2427B8BBC();
    v12 = v11;
    (*(v2 + 8))(v8, v1);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_2427AB9A4()
{
  v2 = *v0;
  sub_2427A152C(0, &qword_2813494B0, 0x277D44758);
  sub_2427B8DCC();
  return REMReminderDefaultPriorityForPriorityLevel();
}

double sub_2427ABA20@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_2427ABA3C()
{
  v1 = [*v0 externalIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2427B8FBC();

  return v3;
}

uint64_t _s26CalendarIntegrationSupport0B10RecurrenceV7WeekdayO9hashValueSivg_0()
{
  v1 = *v0;
  sub_2427B940C();
  MEMORY[0x245D18CB0](v1);
  return sub_2427B943C();
}

uint64_t sub_2427ABB04()
{
  v1 = *v0;
  sub_2427B940C();
  MEMORY[0x245D18CB0](v1);
  return sub_2427B943C();
}

uint64_t sub_2427ABB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_2427B939C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2427B939C();

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

uint64_t sub_2427ABC3C(uint64_t a1)
{
  v2 = sub_2427A30EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2427ABC78(uint64_t a1)
{
  v2 = sub_2427A30EC();

  return MEMORY[0x2821FE720](a1, v2);
}

char *sub_2427ABCB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08A8, &qword_2427BB080);
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

char *sub_2427ABDC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08C0, &qword_2427BB098);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2427ABEE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08F8, &qword_2427BB0C8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_2427ABFE4()
{
  result = qword_27ECC0888;
  if (!qword_27ECC0888)
  {
    sub_2427B8BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC0888);
  }

  return result;
}

uint64_t sub_2427AC03C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0890, &qword_2427BB3B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_2427AC0AC(size_t a1, int64_t a2, char a3)
{
  result = sub_2427AC0EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2427AC0CC(char *a1, int64_t a2, char a3)
{
  result = sub_2427AC2C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2427AC0EC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08D0, &qword_2427BB0A8);
  v10 = *(type metadata accessor for IntegrationEntry(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for IntegrationEntry(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2427AC2C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0900, &qword_2427BB0D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_2427AC3C8(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_2427B929C() == *(a4 + 36))
    {
      sub_2427B92AC();
      sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
      swift_dynamicCast();
      sub_2427B6B28(v8);
      v6 = v5;

      if (v6)
      {
        sub_2427B927C();
        sub_2427B92CC();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_2427B915C();
  v7 = *(a4 + 36);
}

void sub_2427AC52C(void *a1, unint64_t a2, int a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_2427B92DC();
      sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
      swift_dynamicCast();
      sub_2427A152C(0, &qword_2813494B0, 0x277D44758);
      swift_dynamicCast();
      *a1 = v13;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_2427B929C() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_2427B92AC();
  sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
  swift_dynamicCast();
  a2 = sub_2427B6B28(v13);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  v11 = *(*(a5 + 56) + 8 * a2);
  *a1 = v11;
  v10;
  v12 = v11;
}

id sub_2427AC710(uint64_t a1, unint64_t a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08B0, &qword_2427BB088) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v25 - v5;
  v7 = sub_2427B8C9C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2427B8C8C();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2427A4230(v6, &qword_27ECC08B0, &qword_2427BB088);
    if (qword_281349518 != -1)
    {
      swift_once();
    }

    v12 = sub_2427B8F0C();
    __swift_project_value_buffer(v12, qword_281349D90);

    v13 = sub_2427B8EEC();
    v14 = sub_2427B90BC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_2427A1BEC(a1, a2, &v26);
      _os_log_impl(&dword_24279B000, v13, v14, "Can't turn non-URL into reminder object ID %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x245D19310](v16, -1, -1);
      MEMORY[0x245D19310](v15, -1, -1);
    }

    return 0;
  }

  (*(v8 + 32))(v11, v6, v7);
  v17 = sub_2427B8C6C();
  v18 = [objc_opt_self() objectIDWithURL_];

  if (!v18)
  {
    if (qword_281349518 != -1)
    {
      swift_once();
    }

    v19 = sub_2427B8F0C();
    __swift_project_value_buffer(v19, qword_281349D90);

    v20 = sub_2427B8EEC();
    v21 = sub_2427B90BC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_2427A1BEC(a1, a2, &v26);
      _os_log_impl(&dword_24279B000, v20, v21, "invalid object ID URL %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x245D19310](v23, -1, -1);
      MEMORY[0x245D19310](v22, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    return 0;
  }

  (*(v8 + 8))(v11, v7);
  return v18;
}

uint64_t sub_2427ACB24(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v39 = a2;
  v40 = a3;
  v5 = type metadata accessor for IntegrationEntry(0);
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_2427B917C();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v47 = MEMORY[0x277D84F90];
    sub_2427AC0AC(0, v9 & ~(v9 >> 63), 0);
    v42 = v47;
    if (v41)
    {
      result = sub_2427B925C();
    }

    else
    {
      v12 = -1 << *(a1 + 32);
      result = sub_2427B914C();
      v11 = *(a1 + 36);
    }

    v44 = result;
    v45 = v11;
    v46 = v41 != 0;
    if ((v9 & 0x8000000000000000) == 0)
    {
      v36 = v8;
      v37 = a1;
      v13 = 0;
      v14 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v14 = a1;
      }

      v34[1] = v3;
      v34[2] = v14;
      v35 = v9;
      while (v13 < v9)
      {
        v21 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_26;
        }

        v23 = v44;
        v22 = v45;
        v24 = v46;
        sub_2427AC52C(v43, v44, v45, v46, a1);
        v26 = v25;
        v27 = v43[0];
        v28 = v36;
        v39();

        v29 = v42;
        v47 = v42;
        v31 = *(v42 + 16);
        v30 = *(v42 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_2427AC0AC(v30 > 1, v31 + 1, 1);
          v29 = v47;
        }

        *(v29 + 16) = v31 + 1;
        v32 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v42 = v29;
        result = sub_2427ACE6C(v28, v29 + v32 + *(v38 + 72) * v31);
        if (v41)
        {
          a1 = v37;
          if (!v24)
          {
            goto LABEL_28;
          }

          if (sub_2427B928C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v9 = v35;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08C8, &qword_2427BB0A0);
          v33 = sub_2427B8F7C();
          sub_2427B92FC();
          result = v33(v43, 0);
        }

        else
        {
          a1 = v37;
          sub_2427AC3C8(v23, v22, v24, v37);
          v16 = v15;
          v18 = v17;
          v20 = v19;
          result = sub_2427ACED0(v23, v22, v24);
          v44 = v16;
          v45 = v18;
          v46 = v20 & 1;
          v9 = v35;
        }

        ++v13;
        if (v21 == v9)
        {
          sub_2427ACED0(v44, v45, v46);
          return v42;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t sub_2427ACE6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntegrationEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2427ACED0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_2427ACEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {

    sub_2427A32F0(a5, a6);
  }
}

uint64_t sub_2427ACF3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_2427ACFA4()
{
  result = qword_27ECC08E8;
  if (!qword_27ECC08E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC08E8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2427AD040(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2427AD094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_2427AD0F8()
{
  result = qword_27ECC0908;
  if (!qword_27ECC0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC0908);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VersionTaggedData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}