uint64_t sub_229694418()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_229694438, v2, 0);
}

uint64_t sub_229694438()
{
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_observerTask))
  {
    v2 = *(v1 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_observerTask);

    sub_22A4DDA7C();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2296944F4()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2296945AC, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_2296945AC()
{
  v1 = *(v0 + 48);
  sub_229694614();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229694614()
{
  v1 = v0;
  v2 = _s13PresenceStateOMa();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  if (qword_27D87B990 != -1)
  {
    swift_once();
  }

  v15 = sub_22A4DD07C();
  __swift_project_value_buffer(v15, qword_27D87E970);

  v16 = sub_22A4DD05C();
  v17 = sub_22A4DDCCC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34 = v9;
    v20 = v6;
    v21 = v19;
    *&v35 = v19;
    *v18 = 136315394;
    v23 = *(v1 + 176);
    v22 = *(v1 + 184);

    v24 = sub_2295A3E30(v23, v22, &v35);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_2295A3E30(0xD00000000000001ELL, 0x800000022A590210, &v35);
    _os_log_impl(&dword_229538000, v16, v17, "[%s] %s", v18, 0x16u);
    swift_arrayDestroy();
    v25 = v21;
    v6 = v20;
    v9 = v34;
    MEMORY[0x22AAD4E50](v25, -1, -1);
    MEMORY[0x22AAD4E50](v18, -1, -1);
  }

  v26 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_keepOccupiedTimer;
  swift_beginAccess();
  sub_229564F88(v1 + v26, &v35, &qword_27D87EA00, &qword_22A579B80);
  v27 = *(&v36 + 1);
  result = sub_22953EAE4(&v35, &qword_27D87EA00, &qword_22A579B80);
  if (v27)
  {
    v29 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_currentPresenceState;
    swift_beginAccess();
    sub_229696298(v1 + v29, v14);
    sub_2296986F8(v14, v12);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v12, 2, v30))
    {
      sub_229696360(v12);
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      swift_beginAccess();
      sub_2295E90C8(&v35, v1 + v26, &qword_27D87EA00, &qword_22A579B80);
      swift_endAccess();
      v32 = [*(v1 + 168) now];
      sub_22A4DB70C();

      (*(v31 + 56))(v9, 0, 2, v30);
      sub_229696298(v1 + v29, v6);
      swift_beginAccess();
      sub_2296962FC(v9, v1 + v29);
      swift_endAccess();
      sub_22969148C(v6);
      sub_229696360(v6);
      return sub_229696360(v9);
    }

    else
    {
      v33 = sub_22A4DB74C();
      return (*(*(v33 - 8) + 8))(v12, v33);
    }
  }

  return result;
}

uint64_t sub_229694A80(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22A4DB74C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = sub_22A4DB7DC();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = *(_s13PresenceStateOMa() - 8);
  v3[12] = v10;
  v11 = *(v10 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229694C34, v2, 0);
}

size_t sub_229694C34()
{
  v1 = v0[3];
  v2 = __swift_project_boxed_opaque_existential_0((v0[4] + 152), *(v0[4] + 176));
  if (v1 >> 62)
  {
    goto LABEL_20;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v21 = MEMORY[0x277D84F90];
    result = sub_22958345C(0, v3 & ~(v3 >> 63), 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v18 = v2;
      v2 = 0;
      v6 = v0[10];
      v7 = v1 & 0xC000000000000001;
      v4 = v21;
      v19 = v0[3] + 32;
      v20 = v1 & 0xFFFFFFFFFFFFFF8;
      v1 = v6 + 32;
      while (1)
      {
        if (v7)
        {
          MEMORY[0x22AAD13F0](v2, v0[3]);
        }

        else
        {
          if ((v2 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_19:
            __break(1u);
LABEL_20:
            if (v0[3] < 0)
            {
              v17 = v0[3];
            }

            v3 = sub_22A4DE0EC();
            goto LABEL_3;
          }

          if (v2 >= *(v20 + 16))
          {
            goto LABEL_19;
          }

          v8 = *(v19 + 8 * v2);
          swift_unknownObjectRetain();
        }

        v9 = v0[11];
        v10 = [swift_unknownObjectRetain() uuid];
        sub_22A4DB79C();

        swift_unknownObjectRelease_n();
        v12 = *(v21 + 16);
        v11 = *(v21 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_22958345C(v11 > 1, v12 + 1, 1);
        }

        v13 = v0[11];
        v14 = v0[9];
        ++v2;
        *(v21 + 16) = v12 + 1;
        (*(v6 + 32))(v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v13, v14);
        if (v3 == v2)
        {
          v2 = v18;
          goto LABEL_15;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v0[18] = v4;
    v15 = *v2;
    v16 = swift_task_alloc();
    v0[19] = v16;
    *v16 = v0;
    v16[1] = sub_229694E7C;

    return sub_2296A68E8(v4);
  }

  return result;
}

uint64_t sub_229694E7C(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_229694FB0, v4, 0);
}

uint64_t sub_229694FB0()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v5 = *(v4 - 8);
  (*(v5 + 56))(v2, 1, 2, v4);
  sub_229696298(v2, v3);
  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = v0[12];
    v8 = v0[6];
    v9 = v0[20] + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v10 = *(v7 + 72);
    v11 = (v5 + 48);
    v41 = (v8 + 8);
    v42 = (v8 + 32);
    do
    {
      v16 = v0[14];
      v17 = v0[2];
      sub_229696298(v9, v0[16]);
      sub_229696298(v17, v16);
      v18 = *v11;
      v19 = (*v11)(v16, 2, v4);
      v12 = v0[16];
      if (v19)
      {
        if (v19 == 2)
        {
          v13 = v0[2];
          v14 = v0[16];
LABEL_12:
          v12 = v13;
          goto LABEL_5;
        }
      }

      else
      {
        v20 = v0[13];
        v21 = *v42;
        (*v42)(v0[8], v0[14], v0[5]);
        sub_229696298(v12, v20);
        v22 = v18(v20, 2, v4);
        if (!v22)
        {
          v23 = v0[7];
          v38 = v0[8];
          v24 = v0[5];
          v39 = v0[2];
          v40 = v0[16];
          v21(v23, v0[13], v24);
          sub_2296987D0(&unk_27D87EBD0, MEMORY[0x277CC9578]);
          v37 = sub_22A4DD54C();
          v25 = v10;
          v26 = *v41;
          (*v41)(v23, v24);
          v26(v38, v24);
          v10 = v25;
          if (v37)
          {
            v14 = v40;
          }

          else
          {
            v14 = v39;
          }

          if (v37)
          {
            v12 = v39;
          }

          else
          {
            v12 = v40;
          }

          v13 = v0[2];
          goto LABEL_5;
        }

        if (v22 == 1)
        {
          (*v41)(v0[8], v0[5]);
          v14 = v0[16];
          v13 = v0[2];
          goto LABEL_12;
        }

        (*v41)(v0[8], v0[5]);
        v12 = v0[16];
      }

      v13 = v0[2];
      v14 = v13;
LABEL_5:
      v15 = v0[15];
      sub_229696360(v14);
      sub_2296986F8(v12, v15);
      sub_2296986F8(v15, v13);
      v9 += v10;
      --v6;
    }

    while (v6);
  }

  v27 = v0[20];
  v28 = v0[16];
  v30 = v0[14];
  v29 = v0[15];
  v31 = v0[13];
  v32 = v0[11];
  v34 = v0[7];
  v33 = v0[8];
  sub_229696360(v0[17]);

  v35 = v0[1];

  return v35();
}

uint64_t sub_22969534C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA30, &unk_22A57CD80) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9E0, &qword_22A57CB10);
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v3[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881920, &qword_22A57CA70);
  v3[12] = v8;
  v9 = *(v8 - 8);
  v3[13] = v9;
  v10 = *(v9 + 64) + 15;
  v3[14] = swift_task_alloc();
  v11 = sub_22A4DB7DC();
  v3[15] = v11;
  v12 = *(v11 - 8);
  v3[16] = v12;
  v3[17] = *(v12 + 64);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229695544, v2, 0);
}

uint64_t sub_229695544()
{
  v108 = v0;
  v1 = v0[21];
  sub_22A4DB7CC();
  if (qword_27D87B998 != -1)
  {
LABEL_35:
    swift_once();
  }

  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[6];
  v7 = sub_22A4DD07C();
  __swift_project_value_buffer(v7, qword_27D8AB7A8);
  v102 = *(v5 + 16);
  v102(v2, v3, v4);
  swift_bridgeObjectRetain_n();
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[20];
  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[6];
  if (v10)
  {
    v100 = v9;
    v15 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v107 = v103;
    *v15 = 136315650;
    *(v15 + 4) = sub_2295A3E30(0xD000000000000021, 0x800000022A590290, &v107);
    *(v15 + 12) = 2080;
    sub_2296987D0(&qword_281403860, MEMORY[0x277CC95F0]);
    v16 = sub_22A4DE5CC();
    v18 = v17;
    v19 = *(v12 + 8);
    v19(v11, v13);
    v20 = sub_2295A3E30(v16, v18, &v107);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2080;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881F00, &unk_22A57CB50);
    v22 = MEMORY[0x22AAD0A20](v14, v21);
    v24 = v23;
    swift_bridgeObjectRelease_n();
    v25 = sub_2295A3E30(v22, v24, &v107);

    *(v15 + 24) = v25;
    _os_log_impl(&dword_229538000, v8, v100, "%s - observer: %s, rooms: %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v103, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);
  }

  else
  {
    v26 = v0[6];
    swift_bridgeObjectRelease_n();

    v19 = *(v12 + 8);
    v19(v11, v13);
  }

  v0[22] = v19;
  v27 = v0[19];
  v28 = v0[16];
  v98 = v0[21];
  v101 = v0[17];
  v29 = v0[15];
  v30 = v0[11];
  v104 = v0[12];
  v31 = v0[9];
  v32 = v0[10];
  v33 = v0[6];
  v93 = v0[7];
  v96 = v0[14];
  v34 = v0[5];
  *v30 = 1;
  (*(v32 + 104))(v30, *MEMORY[0x277D85768], v31);
  _s13PresenceStateOMa();
  sub_22A4DD9EC();
  (*(v32 + 8))(v30, v31);
  v35 = v33;
  v36 = swift_allocObject();
  swift_weakInit();
  v102(v27, v98, v29);
  v37 = *(v28 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  v99 = *(v28 + 32);
  v99(v38 + ((v37 + 24) & ~v37), v27, v29);
  sub_22A4DD9FC();
  v107 = MEMORY[0x277D84F90];
  if (v35 >> 62)
  {
    if (v0[6] < 0)
    {
      v64 = v0[6];
    }

    v39 = sub_22A4DE0EC();
    if (v39)
    {
      goto LABEL_7;
    }

LABEL_39:
    v63 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v39 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v39)
  {
    goto LABEL_39;
  }

LABEL_7:
  v40 = 0;
  v90 = ~v37;
  v91 = v37;
  v41 = v0[7];
  v105 = v35 & 0xC000000000000001;
  v92 = v35;
  v42 = v35 & 0xFFFFFFFFFFFFFF8;
  v43 = v0[6] + 32;
  while (v105)
  {
    result = MEMORY[0x22AAD13F0](v40, v0[6]);
    v46 = result;
    v47 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      goto LABEL_19;
    }

LABEL_13:
    v48 = v0[7];
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      v49 = v0[7];
      swift_task_reportUnexpectedExecutor();
    }

    if ([*(v41 + 216) objectForKey_])
    {

      result = swift_unknownObjectRelease();
    }

    else
    {
      sub_22A4DE27C();
      v44 = *(v107 + 16);
      sub_22A4DE2AC();
      sub_22A4DE2BC();
      result = sub_22A4DE28C();
    }

    ++v40;
    if (v47 == v39)
    {
      goto LABEL_20;
    }
  }

  if (v40 >= *(v42 + 16))
  {
    __break(1u);
    goto LABEL_35;
  }

  v46 = *(v43 + 8 * v40);
  result = swift_unknownObjectRetain();
  v47 = v40 + 1;
  if (!__OFADD__(v40, 1))
  {
    goto LABEL_13;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  if (v39 < 1)
  {
    __break(1u);
  }

  else
  {
    v50 = 0;
    v51 = v0[16];
    v94 = v107;
    v97 = v0[6] + 32;
    v52 = (v91 + 32) & v90;
    do
    {
      if (v105)
      {
        v53 = MEMORY[0x22AAD13F0](v50, v0[6]);
      }

      else
      {
        v53 = *(v97 + 8 * v50);
        swift_unknownObjectRetain();
      }

      v54 = [*(v41 + 216) objectForKey_];
      if (v54)
      {
        v55 = v54[2];
      }

      else
      {
        v55 = MEMORY[0x277D84F90];
      }

      v102(v0[18], v0[21], v0[15]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_22958B1F0(0, v55[2] + 1, 1, v55);
      }

      v57 = v55[2];
      v56 = v55[3];
      if (v57 >= v56 >> 1)
      {
        v55 = sub_22958B1F0(v56 > 1, v57 + 1, 1, v55);
      }

      ++v50;
      v58 = v0[18];
      v59 = v0[15];
      v55[2] = v57 + 1;
      v99(v55 + v52 + *(v51 + 72) * v57, v58, v59);
      v60 = *(v41 + 216);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA38, &qword_22A57CB90);
      v61 = swift_allocObject();
      *(v61 + 16) = v55;
      v62 = v60;
      [v62 setObject:v61 forKey:v53];
      swift_unknownObjectRelease();
    }

    while (v39 != v50);
    v35 = v92;
    v63 = v94;
LABEL_40:
    v95 = v63;
    v0[23] = v63;
    v65 = [objc_opt_self() weakObjectsHashTable];
    v0[24] = v65;
    if (v39)
    {
      v66 = 0;
      v67 = v35 & 0xC000000000000001;
      v68 = v35 & 0xFFFFFFFFFFFFFF8;
      v69 = v0[6] + 32;
      do
      {
        if (v67)
        {
          v70 = MEMORY[0x22AAD13F0](v66, v0[6]);
          v71 = (v66 + 1);
          if (__OFADD__(v66, 1))
          {
LABEL_49:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v66 >= *(v68 + 16))
          {
            __break(1u);
            goto LABEL_57;
          }

          v70 = *(v69 + 8 * v66);
          swift_unknownObjectRetain();
          v71 = (v66 + 1);
          if (__OFADD__(v66, 1))
          {
            goto LABEL_49;
          }
        }

        [v65 addObject_];
        swift_unknownObjectRelease();
        ++v66;
      }

      while (v71 != v39);
    }

    v72 = v0[19];
    v73 = v0[14];
    v75 = v0[12];
    v74 = v0[13];
    v77 = v0[7];
    v76 = v0[8];
    v102(v72, v0[21], v0[15]);
    v78 = _s28DefaultRoomPresencePublisherC8ObserverVMa();
    (*(v74 + 16))(&v76[*(v78 + 20)], v73, v75);
    *v76 = v65;
    (*(*(v78 - 8) + 56))(v76, 0, 1, v78);
    swift_beginAccess();
    v66 = v65;
    sub_229891274(v76, v72);
    swift_endAccess();
    v39 = v95;
    if (v95 < 0 || (v95 & 0x4000000000000000) != 0)
    {
LABEL_57:
      if (!sub_22A4DE0EC())
      {
        goto LABEL_58;
      }

LABEL_53:
      v79 = swift_task_alloc();
      v0[25] = v79;
      *v79 = v0;
      v79[1] = sub_229695F3C;
      v80 = v0[7];

      return sub_2296963BC(v39);
    }

    else
    {
      if (*(v95 + 16))
      {
        goto LABEL_53;
      }

LABEL_58:

      v81 = v0[21];
      v82 = v0[22];
      v84 = v0[19];
      v83 = v0[20];
      v85 = v0[18];
      v86 = v0[15];
      v87 = v0[16];
      v88 = v0[11];
      v106 = v0[8];
      (*(v0[13] + 8))(v0[14], v0[12]);
      v82(v81, v86);

      v89 = v0[1];

      return v89();
    }
  }

  return result;
}

uint64_t sub_229695F3C()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_229696068, v3, 0);
}

uint64_t sub_229696068()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 88);
  v11 = *(v0 + 64);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  v2(v1, v6);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22969616C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9E8, &qword_22A57CB18) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_229693164(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_229696298(uint64_t a1, uint64_t a2)
{
  v4 = _s13PresenceStateOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296962FC(uint64_t a1, uint64_t a2)
{
  v4 = _s13PresenceStateOMa();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_229696360(uint64_t a1)
{
  v2 = _s13PresenceStateOMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2296963BC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = _s13PresenceStateOMa();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v7 = sub_22A4DB7DC();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EBC0, &qword_22A57CBA0) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229696578, v1, 0);
}

uint64_t sub_229696578()
{
  v1 = 0;
  v2 = sub_229691098(*(v0 + 40));
  *(v0 + 152) = v2;
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 160) = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:
    v13 = *(v0 + 152);
    v14 = *(v0 + 48);

    result = sub_22969CBB8();
    v15 = 0;
    *(v0 + 168) = result;
    v16 = *(result + 32);
    *(v0 + 248) = v16;
    v17 = 1 << v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(result + 64);
    while (v19)
    {
      v70 = v1;
      v23 = *(v0 + 168);
LABEL_26:
      v29 = *(v0 + 128);
      v28 = *(v0 + 136);
      v31 = *(v0 + 104);
      v30 = *(v0 + 112);
      v32 = *(v0 + 96);
      v68 = *(v0 + 72);
      v33 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v34 = v33 | (v15 << 6);
      (*(v30 + 16))(v29, *(v23 + 48) + *(v30 + 72) * v34, v31);
      sub_229696298(*(v23 + 56) + *(v68 + 72) * v34, v32);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
      v36 = *(v35 + 48);
      (*(v30 + 32))(v28, v29, v31);
      sub_2296986F8(v32, v28 + v36);
      (*(*(v35 - 8) + 56))(v28, 0, 1, v35);
      v1 = v70;
LABEL_27:
      *(v0 + 176) = v19;
      *(v0 + 184) = v15;
      v37 = *(v0 + 144);
      sub_229698818(*(v0 + 136), v37);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
      if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
      {
        v51 = *(v0 + 168);
        v52 = *(v0 + 48);

        swift_beginAccess();
        if (*(*(v52 + 232) + 16))
        {
          v54 = *(v0 + 136);
          v53 = *(v0 + 144);
          v56 = *(v0 + 120);
          v55 = *(v0 + 128);
          v58 = *(v0 + 88);
          v57 = *(v0 + 96);
          v59 = *(v0 + 80);
          v60 = *(v0 + 56);

          v61 = *(v0 + 8);

          return v61();
        }

        else
        {
          v66 = swift_task_alloc();
          *(v0 + 208) = v66;
          *v66 = v0;
          v66[1] = sub_2296972FC;
          v67 = *(v0 + 48);

          return sub_22969DB2C();
        }
      }

      v39 = *(v0 + 144);
      v40 = *(v0 + 120);
      v41 = *(v0 + 88);
      v42 = *(v0 + 40);
      v43 = *(v38 + 48);
      (*(*(v0 + 112) + 32))(v40, v39, *(v0 + 104));
      sub_2296986F8(v39 + v43, v41);
      v44 = swift_task_alloc();
      *(v44 + 16) = v40;
      v45 = sub_22986A68C(sub_229698994, v44, v42);
      *(v0 + 192) = v1;

      if (v45)
      {
        v47 = *(v0 + 88);
        v46 = *(v0 + 96);
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
        (*(*(v48 - 8) + 56))(v46, 1, 2, v48);
        LOBYTE(v47) = sub_229698FEC(v47, v46);
        sub_229696360(v46);
        if ((v47 & 1) == 0)
        {
          v62 = *__swift_project_boxed_opaque_existential_0((*(v0 + 48) + 152), *(*(v0 + 48) + 176));
          v63 = swift_task_alloc();
          *(v0 + 200) = v63;
          *v63 = v0;
          v63[1] = sub_229696C80;
          v64 = *(v0 + 120);
          v65 = *(v0 + 88);

          return sub_2296A5608(v65, v64);
        }
      }

      v20 = *(v0 + 112);
      v21 = *(v0 + 120);
      v22 = *(v0 + 104);
      sub_229696360(*(v0 + 88));
      result = (*(v20 + 8))(v21, v22);
    }

    v24 = ((1 << *(v0 + 248)) + 63) >> 6;
    if (v24 <= (v15 + 1))
    {
      v25 = v15 + 1;
    }

    else
    {
      v25 = ((1 << *(v0 + 248)) + 63) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v27 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v27 >= v24)
      {
        v49 = *(v0 + 136);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
        (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
        v19 = 0;
        v15 = v26;
        goto LABEL_27;
      }

      v23 = *(v0 + 168);
      v19 = *(v23 + 8 * v27 + 64);
      ++v15;
      if (v19)
      {
        v70 = v1;
        v15 = v27;
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  result = sub_22A4DE0EC();
  *(v0 + 160) = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (result < 1)
  {
LABEL_43:
    __break(1u);
    return result;
  }

  *(v0 + 216) = 0;
  v4 = *(v0 + 152);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x22AAD13F0](0);
  }

  else
  {
    v5 = *(v4 + 32);
    swift_unknownObjectRetain();
  }

  *(v0 + 224) = v5;
  v6 = *(v0 + 48);
  v7 = v6[17];
  v8 = v6[18];
  __swift_project_boxed_opaque_existential_0(v6 + 14, v7);
  v9 = *(v8 + 24);
  v69 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 232) = v11;
  *v11 = v0;
  v11[1] = sub_2296974E8;
  v12 = *(v0 + 56);

  return v69(v12, v5, v7, v8);
}

uint64_t sub_229696C80()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_229696D90, v2, 0);
}

uint64_t sub_229696D90()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  sub_229696360(*(v0 + 88));
  result = (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 184);
  v56 = *(v0 + 192);
  v6 = *(v0 + 176);
  while (v6)
  {
    v10 = *(v0 + 168);
LABEL_13:
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v18 = *(v0 + 104);
    v17 = *(v0 + 112);
    v19 = *(v0 + 96);
    v55 = *(v0 + 72);
    v20 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v21 = v20 | (v5 << 6);
    (*(v17 + 16))(v16, *(v10 + 48) + *(v17 + 72) * v21, v18);
    sub_229696298(*(v10 + 56) + *(v55 + 72) * v21, v19);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
    v23 = *(v22 + 48);
    (*(v17 + 32))(v15, v16, v18);
    sub_2296986F8(v19, v15 + v23);
    (*(*(v22 - 8) + 56))(v15, 0, 1, v22);
LABEL_14:
    *(v0 + 176) = v6;
    *(v0 + 184) = v5;
    v24 = *(v0 + 144);
    sub_229698818(*(v0 + 136), v24);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
    if ((*(*(v25 - 8) + 48))(v24, 1, v25) == 1)
    {
      v38 = *(v0 + 168);
      v39 = *(v0 + 48);

      swift_beginAccess();
      if (*(*(v39 + 232) + 16))
      {
        v41 = *(v0 + 136);
        v40 = *(v0 + 144);
        v43 = *(v0 + 120);
        v42 = *(v0 + 128);
        v45 = *(v0 + 88);
        v44 = *(v0 + 96);
        v46 = *(v0 + 80);
        v47 = *(v0 + 56);

        v48 = *(v0 + 8);

        return v48();
      }

      else
      {
        v53 = swift_task_alloc();
        *(v0 + 208) = v53;
        *v53 = v0;
        v53[1] = sub_2296972FC;
        v54 = *(v0 + 48);

        return sub_22969DB2C();
      }
    }

    v26 = *(v0 + 144);
    v27 = *(v0 + 120);
    v28 = *(v0 + 88);
    v29 = *(v0 + 40);
    v30 = *(v25 + 48);
    (*(*(v0 + 112) + 32))(v27, v26, *(v0 + 104));
    sub_2296986F8(v26 + v30, v28);
    v31 = swift_task_alloc();
    *(v31 + 16) = v27;
    v32 = sub_22986A68C(sub_229698994, v31, v29);
    *(v0 + 192) = v56;

    if (v32)
    {
      v34 = *(v0 + 88);
      v33 = *(v0 + 96);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
      (*(*(v35 - 8) + 56))(v33, 1, 2, v35);
      LOBYTE(v34) = sub_229698FEC(v34, v33);
      sub_229696360(v33);
      if ((v34 & 1) == 0)
      {
        v49 = *__swift_project_boxed_opaque_existential_0((*(v0 + 48) + 152), *(*(v0 + 48) + 176));
        v50 = swift_task_alloc();
        *(v0 + 200) = v50;
        *v50 = v0;
        v50[1] = sub_229696C80;
        v51 = *(v0 + 120);
        v52 = *(v0 + 88);

        return sub_2296A5608(v52, v51);
      }
    }

    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    v9 = *(v0 + 104);
    sub_229696360(*(v0 + 88));
    result = (*(v7 + 8))(v8, v9);
  }

  v11 = ((1 << *(v0 + 248)) + 63) >> 6;
  if (v11 <= (v5 + 1))
  {
    v12 = v5 + 1;
  }

  else
  {
    v12 = ((1 << *(v0 + 248)) + 63) >> 6;
  }

  v13 = v12 - 1;
  while (1)
  {
    v14 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      v36 = *(v0 + 136);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
      (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
      v6 = 0;
      v5 = v13;
      goto LABEL_14;
    }

    v10 = *(v0 + 168);
    v6 = *(v10 + 8 * v14 + 64);
    ++v5;
    if (v6)
    {
      v5 = v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2296972FC()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v13 = *v0;

  v3 = v1[18];
  v4 = v1[17];
  v5 = v1[16];
  v6 = v1[15];
  v7 = v1[12];
  v8 = v1[11];
  v9 = v1[10];
  v10 = v1[7];

  v11 = *(v13 + 8);

  return v11();
}

uint64_t sub_2296974E8()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {

    v6 = sub_229697DBC;
  }

  else
  {
    v6 = sub_229697620;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_229697620()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 48);
  (*(*(v0 + 72) + 56))(v4, 0, 1, *(v0 + 64));
  sub_2296986F8(v4, v3);
  v6 = *(v5 + 200);
  sub_229696298(v3, v2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA48, &unk_22A57CBB0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  sub_2296986F8(v2, v10 + *(*v10 + 88));
  v11 = v6;
  [v11 setObject:v10 forKey:v1];

  swift_unknownObjectRelease();
  sub_229696360(v3);
  v12 = *(v0 + 216) + 1;
  if (v12 == *(v0 + 160))
  {
    v13 = *(v0 + 240);
    v14 = *(v0 + 152);
    v15 = *(v0 + 48);

    result = sub_22969CBB8();
    v17 = 0;
    *(v0 + 168) = result;
    v18 = *(result + 32);
    *(v0 + 248) = v18;
    v19 = 1 << v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(result + 64);
    while (v21)
    {
      v80 = v13;
      v25 = *(v0 + 168);
LABEL_17:
      v31 = *(v0 + 128);
      v30 = *(v0 + 136);
      v33 = *(v0 + 104);
      v32 = *(v0 + 112);
      v34 = *(v0 + 96);
      v79 = *(v0 + 72);
      v35 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v36 = v35 | (v17 << 6);
      (*(v32 + 16))(v31, *(v25 + 48) + *(v32 + 72) * v36, v33);
      sub_229696298(*(v25 + 56) + *(v79 + 72) * v36, v34);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
      v38 = *(v37 + 48);
      (*(v32 + 32))(v30, v31, v33);
      sub_2296986F8(v34, v30 + v38);
      (*(*(v37 - 8) + 56))(v30, 0, 1, v37);
      v13 = v80;
LABEL_18:
      *(v0 + 176) = v21;
      *(v0 + 184) = v17;
      v39 = *(v0 + 144);
      sub_229698818(*(v0 + 136), v39);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
      if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
      {
        v55 = *(v0 + 168);
        v56 = *(v0 + 48);

        swift_beginAccess();
        if (*(*(v56 + 232) + 16))
        {
          v58 = *(v0 + 136);
          v57 = *(v0 + 144);
          v60 = *(v0 + 120);
          v59 = *(v0 + 128);
          v62 = *(v0 + 88);
          v61 = *(v0 + 96);
          v63 = *(v0 + 80);
          v64 = *(v0 + 56);

          v65 = *(v0 + 8);

          return v65();
        }

        else
        {
          v77 = swift_task_alloc();
          *(v0 + 208) = v77;
          *v77 = v0;
          v77[1] = sub_2296972FC;
          v78 = *(v0 + 48);

          return sub_22969DB2C();
        }
      }

      v41 = *(v0 + 144);
      v42 = *(v0 + 120);
      v43 = *(v0 + 88);
      v44 = *(v0 + 40);
      v45 = *(v40 + 48);
      (*(*(v0 + 112) + 32))(v42, v41, *(v0 + 104));
      sub_2296986F8(v41 + v45, v43);
      v46 = swift_task_alloc();
      *(v46 + 16) = v42;
      v47 = sub_22986A68C(sub_229698994, v46, v44);
      *(v0 + 192) = v13;

      if (v47)
      {
        v49 = *(v0 + 88);
        v48 = *(v0 + 96);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
        (*(*(v50 - 8) + 56))(v48, 1, 2, v50);
        LOBYTE(v49) = sub_229698FEC(v49, v48);
        sub_229696360(v48);
        if ((v49 & 1) == 0)
        {
          v73 = *__swift_project_boxed_opaque_existential_0((*(v0 + 48) + 152), *(*(v0 + 48) + 176));
          v74 = swift_task_alloc();
          *(v0 + 200) = v74;
          *v74 = v0;
          v74[1] = sub_229696C80;
          v75 = *(v0 + 120);
          v76 = *(v0 + 88);

          return sub_2296A5608(v76, v75);
        }
      }

      v22 = *(v0 + 112);
      v23 = *(v0 + 120);
      v24 = *(v0 + 104);
      sub_229696360(*(v0 + 88));
      result = (*(v22 + 8))(v23, v24);
    }

    v26 = ((1 << *(v0 + 248)) + 63) >> 6;
    if (v26 <= (v17 + 1))
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = ((1 << *(v0 + 248)) + 63) >> 6;
    }

    v28 = v27 - 1;
    while (1)
    {
      v29 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v29 >= v26)
      {
        v51 = *(v0 + 136);
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
        (*(*(v52 - 8) + 56))(v51, 1, 1, v52);
        v21 = 0;
        v17 = v28;
        goto LABEL_18;
      }

      v25 = *(v0 + 168);
      v21 = *(v25 + 8 * v29 + 64);
      ++v17;
      if (v21)
      {
        v80 = v13;
        v17 = v29;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    *(v0 + 216) = v12;
    v53 = *(v0 + 152);
    if ((v53 & 0xC000000000000001) != 0)
    {
      v54 = MEMORY[0x22AAD13F0]();
    }

    else
    {
      v54 = *(v53 + 8 * v12 + 32);
      swift_unknownObjectRetain();
    }

    *(v0 + 224) = v54;
    v66 = *(v0 + 48);
    v67 = v66[17];
    v68 = v66[18];
    __swift_project_boxed_opaque_existential_0(v66 + 14, v67);
    v69 = *(v68 + 24);
    v81 = (v69 + *v69);
    v70 = v69[1];
    v71 = swift_task_alloc();
    *(v0 + 232) = v71;
    *v71 = v0;
    v71[1] = sub_2296974E8;
    v72 = *(v0 + 56);

    return v81(v72, v54, v67, v68);
  }

  return result;
}

uint64_t sub_229697DBC()
{
  v85 = v0;
  v1 = *(v0 + 56);
  (*(*(v0 + 72) + 56))(v1, 1, 1, *(v0 + 64));
  sub_22953EAE4(v1, &qword_27D87EBB0, &qword_22A57C720);
  if (qword_27D87B998 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v2 = *(v0 + 224);
    v3 = sub_22A4DD07C();
    __swift_project_value_buffer(v3, qword_27D8AB7A8);
    swift_unknownObjectRetain();
    v4 = sub_22A4DD05C();
    v5 = sub_22A4DDCDC();
    swift_unknownObjectRelease();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 224);
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v84[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_2295A3E30(0xD00000000000001CLL, 0x800000022A5902C0, v84);
      *(v8 + 12) = 2080;
      v10 = [v7 shortDescription];
      v11 = sub_22A4DD5EC();
      v13 = v12;

      v14 = sub_2295A3E30(v11, v13, v84);

      *(v8 + 14) = v14;
      _os_log_impl(&dword_229538000, v4, v5, "%s - accessory cannot be used to monitor presence: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v9, -1, -1);
      MEMORY[0x22AAD4E50](v8, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v15 = *(v0 + 216) + 1;
    if (v15 != *(v0 + 160))
    {
      break;
    }

    v16 = *(v0 + 152);
    v17 = *(v0 + 48);

    v18 = sub_22969CBB8();
    v19 = 0;
    *(v0 + 168) = v18;
    v20 = *(v18 + 32);
    *(v0 + 248) = v20;
    v21 = 1 << v20;
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v18 + 64);
    while (v23)
    {
      v27 = *(v0 + 168);
LABEL_20:
      v33 = *(v0 + 128);
      v32 = *(v0 + 136);
      v35 = *(v0 + 104);
      v34 = *(v0 + 112);
      v36 = *(v0 + 96);
      v82 = *(v0 + 72);
      v37 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v38 = v37 | (v19 << 6);
      (*(v34 + 16))(v33, *(v27 + 48) + *(v34 + 72) * v38, v35);
      sub_229696298(*(v27 + 56) + *(v82 + 72) * v38, v36);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
      v40 = *(v39 + 48);
      (*(v34 + 32))(v32, v33, v35);
      sub_2296986F8(v36, v32 + v40);
      (*(*(v39 - 8) + 56))(v32, 0, 1, v39);
LABEL_21:
      *(v0 + 176) = v23;
      *(v0 + 184) = v19;
      v41 = *(v0 + 144);
      sub_229698818(*(v0 + 136), v41);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
      if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
      {
        v57 = *(v0 + 168);
        v58 = *(v0 + 48);

        swift_beginAccess();
        if (*(*(v58 + 232) + 16))
        {
          v60 = *(v0 + 136);
          v59 = *(v0 + 144);
          v62 = *(v0 + 120);
          v61 = *(v0 + 128);
          v64 = *(v0 + 88);
          v63 = *(v0 + 96);
          v65 = *(v0 + 80);
          v66 = *(v0 + 56);

          v67 = *(v0 + 8);

          return v67();
        }

        else
        {
          v80 = swift_task_alloc();
          *(v0 + 208) = v80;
          *v80 = v0;
          v80[1] = sub_2296972FC;
          v81 = *(v0 + 48);

          return sub_22969DB2C();
        }
      }

      v43 = *(v0 + 144);
      v44 = *(v0 + 120);
      v45 = *(v0 + 88);
      v46 = *(v0 + 40);
      v47 = *(v42 + 48);
      (*(*(v0 + 112) + 32))(v44, v43, *(v0 + 104));
      sub_2296986F8(v43 + v47, v45);
      v48 = swift_task_alloc();
      *(v48 + 16) = v44;
      v49 = sub_22986A68C(sub_229698994, v48, v46);
      *(v0 + 192) = 0;

      if (v49)
      {
        v51 = *(v0 + 88);
        v50 = *(v0 + 96);
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
        (*(*(v52 - 8) + 56))(v50, 1, 2, v52);
        LOBYTE(v51) = sub_229698FEC(v51, v50);
        sub_229696360(v50);
        if ((v51 & 1) == 0)
        {
          v76 = *__swift_project_boxed_opaque_existential_0((*(v0 + 48) + 152), *(*(v0 + 48) + 176));
          v77 = swift_task_alloc();
          *(v0 + 200) = v77;
          *v77 = v0;
          v77[1] = sub_229696C80;
          v78 = *(v0 + 120);
          v79 = *(v0 + 88);

          return sub_2296A5608(v79, v78);
        }
      }

      v24 = *(v0 + 112);
      v25 = *(v0 + 120);
      v26 = *(v0 + 104);
      sub_229696360(*(v0 + 88));
      (*(v24 + 8))(v25, v26);
    }

    v28 = ((1 << *(v0 + 248)) + 63) >> 6;
    if (v28 <= (v19 + 1))
    {
      v29 = v19 + 1;
    }

    else
    {
      v29 = ((1 << *(v0 + 248)) + 63) >> 6;
    }

    v30 = v29 - 1;
    while (1)
    {
      v31 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v31 >= v28)
      {
        v53 = *(v0 + 136);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
        (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
        v23 = 0;
        v19 = v30;
        goto LABEL_21;
      }

      v27 = *(v0 + 168);
      v23 = *(v27 + 8 * v31 + 64);
      ++v19;
      if (v23)
      {
        v19 = v31;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_43:
    swift_once();
  }

  *(v0 + 216) = v15;
  v55 = *(v0 + 152);
  if ((v55 & 0xC000000000000001) != 0)
  {
    v56 = MEMORY[0x22AAD13F0]();
  }

  else
  {
    v56 = *(v55 + 8 * v15 + 32);
    swift_unknownObjectRetain();
  }

  *(v0 + 224) = v56;
  v69 = *(v0 + 48);
  v70 = v69[17];
  v71 = v69[18];
  __swift_project_boxed_opaque_existential_0(v69 + 14, v70);
  v72 = *(v71 + 24);
  v83 = (v72 + *v72);
  v73 = v72[1];
  v74 = swift_task_alloc();
  *(v0 + 232) = v74;
  *v74 = v0;
  v74[1] = sub_2296974E8;
  v75 = *(v0 + 56);

  return v83(v75, v56, v70, v71);
}

uint64_t sub_229698668()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_229569B30;

  return sub_2296944D4(v0);
}

uint64_t sub_2296986F8(uint64_t a1, uint64_t a2)
{
  v4 = _s13PresenceStateOMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22969875C(uint64_t a1)
{
  v3 = *(sub_22A4DB7DC() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_22969ABEC(a1, v4, v5);
}

uint64_t sub_2296987D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_229698818(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EBC0, &qword_22A57CBA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_229698888(id *a1)
{
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uuid];
  sub_22A4DB79C();

  v8 = sub_22A4DB78C();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

unint64_t sub_2296989B4()
{
  result = qword_27D87EA60;
  if (!qword_27D87EA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87EA58, &qword_22A57CBC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87EA60);
  }

  return result;
}

uint64_t _s13PresenceStateOMa()
{
  result = qword_27D87EA70;
  if (!qword_27D87EA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_229698A8C()
{
  sub_229698AE4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_229698AE4()
{
  if (!qword_27D87EA80[0])
  {
    v0 = sub_22A4DB74C();
    if (!v1)
    {
      atomic_store(v0, qword_27D87EA80);
    }
  }
}

uint64_t sub_229698B2C(uint64_t a1)
{
  v2 = v1;
  v4 = _s13PresenceStateOMa();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EA10, &qword_22A57CB78);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v22 - v11;
  v13 = *(v10 + 56);
  sub_229696298(v2, &v22 - v11);
  sub_229696298(a1, &v12[v13]);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v15 = *(*(v14 - 8) + 48);
  v16 = v15(v12, 2, v14);
  if (v16)
  {
    if (v16 == 1)
    {
      if (v15(&v12[v13], 2, v14) == 1)
      {
        goto LABEL_10;
      }

LABEL_8:
      sub_2296992C0(v12);
      return 0;
    }

    if (v15(&v12[v13], 2, v14) != 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_229696298(v12, v7);
    v17 = v15(&v12[v13], 2, v14);
    v18 = sub_22A4DB74C();
    v19 = *(*(v18 - 8) + 8);
    if (v17)
    {
      v19(v7, v18);
      goto LABEL_8;
    }

    v21 = v18;
    (v19)(&v12[v13]);
    v19(v7, v21);
  }

LABEL_10:
  sub_229696360(v12);
  return 1;
}

uint64_t sub_229698D5C()
{
  v1 = v0;
  v2 = sub_22A4DB74C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s13PresenceStateOMa();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229696298(v1, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v12 = (*(*(v11 - 8) + 48))(v10, 2, v11);
  if (v12)
  {
    if (v12 == 1)
    {
      return 0x6E776F6E6B6E75;
    }

    else
    {
      return 0x646569707563636FLL;
    }
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_22A4DE1FC();

    v16 = 0xD000000000000016;
    v17 = 0x800000022A590330;
    sub_229698F94();
    v14 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v14);

    MEMORY[0x22AAD08C0](41, 0xE100000000000000);
    v15 = v16;
    (*(v3 + 8))(v6, v2);
    return v15;
  }
}

unint64_t sub_229698F94()
{
  result = qword_281403890;
  if (!qword_281403890)
  {
    sub_22A4DB74C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281403890);
  }

  return result;
}

uint64_t sub_229698FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22A4DB74C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s13PresenceStateOMa();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EA10, &qword_22A57CB78);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v25 - v16;
  v18 = *(v15 + 56);
  sub_229696298(a1, &v25 - v16);
  sub_229696298(a2, &v17[v18]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v20 = *(*(v19 - 8) + 48);
  v21 = v20(v17, 2, v19);
  if (!v21)
  {
    sub_229696298(v17, v12);
    if (!v20(&v17[v18], 2, v19))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v22 = sub_22A4DB6FC();
      v24 = *(v5 + 8);
      v24(v8, v4);
      v24(v12, v4);
      sub_229696360(v17);
      return v22 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_9;
  }

  if (v21 == 1)
  {
    if (v20(&v17[v18], 2, v19) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v20(&v17[v18], 2, v19) != 2)
  {
LABEL_9:
    sub_2296992C0(v17);
    v22 = 0;
    return v22 & 1;
  }

  sub_229696360(v17);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_2296992C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EA10, &qword_22A57CB78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_229699328()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D8AB7A8);
  __swift_project_value_buffer(v0, qword_27D8AB7A8);
  v1 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_2296993A0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22969944C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  v1 = *(v0 + 192);

  v2 = *(v0 + 208);

  v3 = *(v0 + 232);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2296994AC()
{
  sub_22969944C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_229699500(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _s28DefaultRoomPresencePublisherC8ObserverVMa()
{
  result = qword_27D87EB08;
  if (!qword_27D87EB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_229699620()
{
  sub_2296996A4();
  if (v0 <= 0x3F)
  {
    sub_2296996F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2296996A4()
{
  result = qword_27D87EB18;
  if (!qword_27D87EB18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D87EB18);
  }

  return result;
}

void sub_2296996F0()
{
  if (!qword_27D87EB20)
  {
    _s13PresenceStateOMa();
    v0 = sub_22A4DDA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D87EB20);
    }
  }
}

uint64_t sub_229699748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  updated = _s23AccessoryPresenceUpdateVMa();
  v4[19] = updated;
  v6 = *(updated - 8);
  v4[20] = v6;
  v7 = *(v6 + 64) + 15;
  v4[21] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E830, &qword_22A57CDF0) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E808, &qword_22A57C600);
  v4[23] = v9;
  v10 = *(v9 - 8);
  v4[24] = v10;
  v11 = *(v10 + 64) + 15;
  v4[25] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E838, &unk_22A57C640);
  v4[26] = v12;
  v13 = *(v12 - 8);
  v4[27] = v13;
  v14 = *(v13 + 64) + 15;
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229699910, 0, 0);
}

uint64_t sub_229699910()
{
  v1 = *(v0 + 144);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_22957F1C4(Strong + 112, v0 + 56);

    sub_22967E3B8((v0 + 56), v0 + 16);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), v3);
    v5 = *(v4 + 8);
    v15 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 232) = v7;
    *v7 = v0;
    v7[1] = sub_229699AE0;
    v8 = *(v0 + 200);

    return v15(v8, v3, v4);
  }

  else
  {
    v10 = *(v0 + 224);
    v11 = *(v0 + 200);
    v13 = *(v0 + 168);
    v12 = *(v0 + 176);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_229699AE0()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_229699BDC, 0, 0);
}

uint64_t sub_229699BDC()
{
  v1 = v0[28];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[18];
  sub_22A4DDA3C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v0[30] = v7;
  *v7 = v0;
  v7[1] = sub_229699CD0;
  v8 = v0[28];
  v9 = v0[26];
  v10 = v0[22];

  return MEMORY[0x2822003E8](v10, 0, 0, v9);
}

uint64_t sub_229699CD0()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_229699DCC, 0, 0);
}

uint64_t sub_229699DCC()
{
  v1 = v0[22];
  if ((*(v0[20] + 48))(v1, 1, v0[19]) == 1)
  {
    (*(v0[27] + 8))(v0[28], v0[26]);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v7 = v0[28];
    v8 = v0[25];
    v10 = v0[21];
    v9 = v0[22];

    v11 = v0[1];

    return v11();
  }

  v2 = v0[18];
  sub_2296A4E9C(v1, v0[21], _s23AccessoryPresenceUpdateVMa);
  Strong = swift_weakLoadStrong();
  v0[31] = Strong;
  if (!Strong)
  {
LABEL_6:
    v5 = v0[27];
    v4 = v0[28];
    v6 = v0[26];
    sub_2296A4F04(v0[21], _s23AccessoryPresenceUpdateVMa);
    (*(v5 + 8))(v4, v6);
    goto LABEL_7;
  }

  if (sub_22A4DDAAC())
  {

    goto LABEL_6;
  }

  v13 = swift_task_alloc();
  v0[32] = v13;
  *v13 = v0;
  v13[1] = sub_229699F94;
  v14 = v0[21];

  return sub_22969A160(v14);
}

uint64_t sub_229699F94()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22969A090, 0, 0);
}

uint64_t sub_22969A090()
{
  v1 = v0[31];
  v2 = v0[21];

  sub_2296A4F04(v2, _s23AccessoryPresenceUpdateVMa);
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_229699CD0;
  v5 = v0[28];
  v6 = v0[26];
  v7 = v0[22];

  return MEMORY[0x2822003E8](v7, 0, 0, v6);
}

uint64_t sub_22969A160(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(_s13PresenceStateOMa() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  updated = _s23AccessoryPresenceUpdateVMa();
  v2[5] = updated;
  v5 = *(*(updated - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22969A220, v1, 0);
}

uint64_t sub_22969A220()
{
  v30 = v0;
  if (qword_27D87B998 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[2];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8AB7A8);
  sub_2296A4F64(v2, v1, _s23AccessoryPresenceUpdateVMa);
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_2295A3E30(0xD000000000000017, 0x800000022A590550, &v29);
    *(v8 + 12) = 2080;
    v10 = sub_22967B364();
    v12 = v11;
    sub_2296A4F04(v7, _s23AccessoryPresenceUpdateVMa);
    v13 = sub_2295A3E30(v10, v12, &v29);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_229538000, v4, v5, "%s - %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  else
  {

    sub_2296A4F04(v7, _s23AccessoryPresenceUpdateVMa);
  }

  v15 = v0[4];
  v14 = v0[5];
  v17 = v0[2];
  v16 = v0[3];
  v18 = *v17;
  v19 = [*v17 lpRoom];
  v0[7] = v19;
  v20 = *(v16 + 200);
  sub_2296A4F64(v17 + *(v14 + 20), v15, _s13PresenceStateOMa);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA48, &unk_22A57CBB0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  sub_2296A4E9C(v15, v24 + *(*v24 + 88), _s13PresenceStateOMa);
  v25 = v20;
  [v25 setObject:v24 forKey:v18];

  v26 = swift_task_alloc();
  v0[8] = v26;
  *v26 = v0;
  v26[1] = sub_22969A560;
  v27 = v0[3];

  return sub_22969E378(v19);
}

uint64_t sub_22969A560(char a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_22969A678, v3, 0);
}

uint64_t sub_22969A678()
{
  if (*(v0 + 80) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 72) = v1;
    *v1 = v0;
    v1[1] = sub_22969A768;
    v2 = *(v0 + 56);
    v3 = *(v0 + 24);

    return sub_22969E90C(v2);
  }

  else
  {
    v5 = *(v0 + 56);
    swift_unknownObjectRelease();
    v6 = *(v0 + 48);
    v7 = *(v0 + 32);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_22969A768()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22969A878, v2, 0);
}

uint64_t sub_22969A878()
{
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[6];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22969A90C()
{
  v1 = *(v0 + 40);
  if (*(v1 + 192))
  {
    v2 = *(v1 + 192);

    sub_22A4DDA7C();

    v1 = *(v0 + 40);
  }

  swift_beginAccess();
  v3 = *(v1 + 232);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v1 + 232);

    v6 = 32;
    do
    {
      v7 = *(v3 + v6);

      sub_22A4DDA7C();

      v6 += 8;
      --v4;
    }

    while (v4);
  }

  v8 = *(v0 + 40);
  v9 = v8[17];
  v10 = v8[18];
  __swift_project_boxed_opaque_existential_0(v8 + 14, v9);
  v11 = *(v10 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v0 + 48) = v13;
  *v13 = v0;
  v13[1] = sub_22969AAF8;

  return v15(v9, v10);
}

uint64_t sub_22969AAF8()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22969ABEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_22A4DD9DC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v13 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a2;
  (*(v6 + 32))(&v14[v13], &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_22957F6B0(0, 0, v11, &unk_22A57CDC8, v14);
}

uint64_t sub_22969ADCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_22969ADF0, 0, 0);
}

uint64_t sub_22969ADF0()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_22969AEEC;
    v4 = *(v0 + 56);

    return sub_22969B02C(v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_22969AEEC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22969B004, 0, 0);
}

uint64_t sub_22969B02C(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = sub_22A4DB45C();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v6 = sub_22A4DB7DC();
  v2[22] = v6;
  v7 = *(v6 - 8);
  v2[23] = v7;
  v8 = *(v7 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA30, &unk_22A57CD80) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v10 = _s28DefaultRoomPresencePublisherC8ObserverVMa();
  v2[30] = v10;
  v11 = *(v10 - 8);
  v2[31] = v11;
  v12 = *(v11 + 64) + 15;
  v2[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22969B20C, v1, 0);
}

uint64_t sub_22969B20C()
{
  v132 = v0;
  v1 = v0;
  v2 = v0[31];
  v4 = v1[29];
  v3 = v1[30];
  v6 = v1[17];
  v5 = v1[18];
  swift_beginAccess();
  sub_22969D8C8(v6, v4);
  swift_endAccess();
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    sub_22953EAE4(v1[29], &qword_27D87EA30, &unk_22A57CD80);
LABEL_113:
    v111 = v1[32];
    v112 = v1[28];
    v113 = v1[29];
    v115 = v1[26];
    v114 = v1[27];
    v117 = v1[24];
    v116 = v1[25];
    v118 = v1[21];

    v119 = v1[1];

    return v119();
  }

  sub_2296A4E9C(v1[29], v1[32], _s28DefaultRoomPresencePublisherC8ObserverVMa);
  if (qword_27D87B998 != -1)
  {
LABEL_110:
    swift_once();
  }

  v7 = v1[28];
  v8 = v1[22];
  v9 = v1[23];
  v10 = v1[17];
  v11 = sub_22A4DD07C();
  __swift_project_value_buffer(v11, qword_27D8AB7A8);
  v12 = *(v9 + 16);
  v1[33] = v12;
  v1[34] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v7, v10, v8);
  v13 = sub_22A4DD05C();
  v14 = sub_22A4DDCCC();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v1[28];
  v17 = v1;
  v18 = v1[23];
  v125 = v17;
  v19 = v17[22];
  if (v15)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v131[0] = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_2295A3E30(0xD000000000000015, 0x800000022A590500, v131);
    *(v20 + 12) = 2080;
    sub_2296A4D2C(&qword_281403860, 255, MEMORY[0x277CC95F0]);
    v22 = sub_22A4DE5CC();
    v24 = v23;
    v25 = *(v18 + 8);
    v25(v16, v19);
    v26 = sub_2295A3E30(v22, v24, v131);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_229538000, v13, v14, "%s - observer: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v21, -1, -1);
    MEMORY[0x22AAD4E50](v20, -1, -1);
  }

  else
  {

    v25 = *(v18 + 8);
    v25(v16, v19);
  }

  v1 = v125;
  v125[35] = v25;
  v27 = [*v125[32] allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881F00, &unk_22A57CB50);
  v28 = sub_22A4DD83C();
  v125[36] = v28;

  if (v28 >> 62)
  {
    v108 = sub_22A4DE0EC();
    v125[37] = v108;
    if (v108)
    {
      goto LABEL_9;
    }

LABEL_112:
    v109 = v1[36];
    v110 = v1[32];

    sub_2296A4F04(v110, _s28DefaultRoomPresencePublisherC8ObserverVMa);
    goto LABEL_113;
  }

  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v125[37] = v29;
  if (!v29)
  {
    goto LABEL_112;
  }

LABEL_9:
  v30 = 0;
  v31 = MEMORY[0x277D84F90];
  while (1)
  {
    v32 = v1[36];
    if ((v32 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x22AAD13F0](v30);
    }

    else
    {
      if (v30 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_107;
      }

      v33 = *(v32 + 8 * v30 + 32);
      swift_unknownObjectRetain();
    }

    v1[38] = v33;
    v1[39] = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_103;
    }

    v34 = *(v1[18] + 216);
    swift_unknownObjectRetain();
    v35 = [v34 objectForKey_];
    if (v35)
    {
      break;
    }

    swift_unknownObjectRelease_n();
LABEL_11:
    v30 = v1[39];
    if (v30 == v1[37])
    {
      goto LABEL_112;
    }
  }

  v124 = v33;
  v36 = v1[17];
  v37 = v35[2];

  v38 = swift_task_alloc();
  *(v38 + 16) = v36;
  v39 = sub_22959C06C(sub_2296A4E6C, v38, v37);
  v1[40] = 0;
  if (v40)
  {
    v41 = v37[2];
    v42 = v41;
  }

  else
  {
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      goto LABEL_108;
    }

    v127 = v39;
    while (1)
    {
      v1 = v37 + 2;
      v43 = v37[2];
      if (v41 == v43)
      {
        break;
      }

      if (v41 >= v43)
      {
        __break(1u);
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
        goto LABEL_105;
      }

      v44 = v125[34];
      v45 = v125[35];
      v46 = v125[27];
      v48 = v125[22];
      v47 = v125[23];
      v49 = v125[17];
      v50 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v129 = v37;
      v51 = v37 + v50;
      v52 = *(v47 + 72);
      v126 = v52 * v41;
      (v125[33])(v46, &v51[v52 * v41], v48);
      LOBYTE(v49) = sub_22A4DB78C();
      v45(v46, v48);
      if (v49)
      {
        v31 = MEMORY[0x277D84F90];
        v37 = v129;
        ++v41;
      }

      else
      {
        v53 = v127;
        v31 = MEMORY[0x277D84F90];
        if (v41 == v127)
        {
          v37 = v129;
        }

        else
        {
          if (v127 < 0)
          {
            goto LABEL_99;
          }

          v54 = *v1;
          if (v127 >= *v1)
          {
            goto LABEL_100;
          }

          v55 = v125[34];
          v56 = v52 * v127;
          (v125[33])(v125[26], &v51[v52 * v127], v125[22]);
          if (v41 >= v54)
          {
            goto LABEL_101;
          }

          v57 = v125[34];
          v1 = (v52 * v41);
          (v125[33])(v125[25], &v51[v126], v125[22]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v129 = sub_2295AFEA0(v129);
          }

          v58 = *(v125[23] + 40);
          v58(v129 + v50 + v56, v125[25], v125[22]);
          if (v41 >= v129[2])
          {
            goto LABEL_102;
          }

          v58(v129 + v50 + v126, v125[26], v125[22]);
          v53 = v127;
          v37 = v129;
        }

        v127 = v53 + 1;
        ++v41;
      }
    }

    v42 = v127;
    if (v41 < v127)
    {
      goto LABEL_104;
    }

    v1 = v125;
    if (v127 < 0)
    {
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
  }

  v59 = v42;
  v60 = v42 - v41;
  v61 = v41 + v60;
  if (__OFADD__(v41, v60))
  {
    goto LABEL_106;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[13] = v37;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v61 > v37[3] >> 1)
  {
    if (v41 <= v61)
    {
      v63 = v61;
    }

    else
    {
      v63 = v41;
    }

    v37 = sub_22958B1F0(isUniquelyReferenced_nonNull_native, v63, 1, v37);
    v1[13] = v37;
  }

  v64 = v1[18];
  sub_2296A4FE4(v59, v41, 0, MEMORY[0x277CC95F0]);

  v65 = *(v64 + 216);
  if (v37[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA38, &qword_22A57CB90);
    v66 = swift_allocObject();
    *(v66 + 16) = v37;
    v67 = v65;
    [v67 setObject:v66 forKey:v124];
    swift_unknownObjectRelease_n();

    goto LABEL_11;
  }

  v68 = v1[21];
  v69 = v1[18];
  v70 = v1[19];
  v71 = v65;
  [v71 removeObjectForKey_];
  swift_unknownObjectRelease();

  v72 = [*(v69 + 200) keyEnumerator];
  v1[14] = v31;
  sub_22A4DDC4C();
  sub_2296A4D2C(&qword_27D87EB30, 255, MEMORY[0x277CC9178]);
  sub_22A4DDFBC();
  if (v1[5])
  {
    v73 = v31;
    do
    {
      while (1)
      {
        sub_229543C58(v1 + 2, v1 + 6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA50, &qword_22A57CBC0);
        if (swift_dynamicCast())
        {
          if (v1[16])
          {
            break;
          }
        }

        v74 = v1[21];
        v75 = v1[19];
        sub_22A4DDFBC();
        if (!v1[5])
        {
          goto LABEL_57;
        }
      }

      MEMORY[0x22AAD09E0]();
      if (*((v1[14] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[14] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v78 = *((v1[14] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22A4DD85C();
      }

      v76 = v1[21];
      v77 = v1[19];
      sub_22A4DD87C();
      v73 = v1[14];
      sub_22A4DDFBC();
      v31 = MEMORY[0x277D84F90];
    }

    while (v1[5]);
  }

  else
  {
    v73 = v31;
  }

LABEL_57:
  v80 = v1[20];
  v79 = v1[21];
  v81 = v1[19];

  (*(v80 + 8))(v79, v81);
  v1[15] = v31;
  if (v73 >> 62)
  {
    v82 = sub_22A4DE0EC();
    if (v82)
    {
LABEL_59:
      v83 = 0;
      v122 = v73 & 0xFFFFFFFFFFFFFF8;
      v123 = v73 & 0xC000000000000001;
      v120 = v82;
      v121 = v73;
      do
      {
        if (v123)
        {
          v84 = MEMORY[0x22AAD13F0](v83, v73);
          v85 = v83 + 1;
          if (__OFADD__(v83, 1))
          {
            goto LABEL_97;
          }
        }

        else
        {
          if (v83 >= *(v122 + 16))
          {
            goto LABEL_98;
          }

          v84 = *(v73 + 8 * v83 + 32);
          swift_unknownObjectRetain();
          v85 = v83 + 1;
          if (__OFADD__(v83, 1))
          {
            goto LABEL_97;
          }
        }

        v128 = v85;
        v86 = v1[35];
        v87 = v1[27];
        v88 = v1[24];
        v89 = v1[22];
        v90 = v1[23] + 8;
        v91 = [objc_msgSend(v84 lpRoom)];
        swift_unknownObjectRelease();
        sub_22A4DB79C();

        v92 = [v124 uuid];
        sub_22A4DB79C();

        LOBYTE(v92) = sub_22A4DB78C();
        v86(v88, v89);
        v86(v87, v89);
        if (v92)
        {
          sub_22A4DE27C();
          v93 = *(v1[15] + 16);
          sub_22A4DE2AC();
          sub_22A4DE2BC();
          sub_22A4DE28C();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v73 = v121;
        ++v83;
      }

      while (v128 != v120);
    }
  }

  else
  {
    v82 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v82)
    {
      goto LABEL_59;
    }
  }

  v94 = v1[15];
  v1[41] = v94;
  v95 = v94 < 0 || (v94 & 0x4000000000000000) != 0;
  if (v95)
  {
    v96 = sub_22A4DE0EC();
  }

  else
  {
    v96 = *(v94 + 16);
  }

  v31 = MEMORY[0x277D84F90];
  if (v96)
  {
    if (v96 < 1)
    {
      goto LABEL_109;
    }

    for (i = 0; i != v96; ++i)
    {
      if ((v94 & 0xC000000000000001) != 0)
      {
        v98 = MEMORY[0x22AAD13F0](i, v94);
      }

      else
      {
        v98 = *(v94 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [*(v1[18] + 200) removeObjectForKey_];
      swift_unknownObjectRelease();
    }
  }

  if (v95)
  {
    result = sub_22A4DE0EC();
  }

  else
  {
    result = *(v94 + 16);
  }

  v1[42] = result;
  if (!result)
  {

    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v1[43] = 0;
    v100 = v1[41];
    if ((v100 & 0xC000000000000001) != 0)
    {
      v101 = MEMORY[0x22AAD13F0](0);
    }

    else
    {
      v101 = *(v100 + 32);
      swift_unknownObjectRetain();
    }

    v1[44] = v101;
    v102 = v1[18];
    v103 = v102[17];
    v104 = v102[18];
    __swift_project_boxed_opaque_existential_0(v102 + 14, v103);
    v105 = *(v104 + 32);
    v130 = (v105 + *v105);
    v106 = v105[1];
    v107 = swift_task_alloc();
    v1[45] = v107;
    *v107 = v1;
    v107[1] = sub_22969BFD0;

    return v130(v101, v103, v104);
  }

  return result;
}

uint64_t sub_22969BFD0()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22969C0E0, v2, 0);
}

void sub_22969C0E0()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 336);
  swift_unknownObjectRelease();
  if (v2 + 1 == v3)
  {
    v4 = *(v0 + 328);
    v5 = *(v0 + 304);

    swift_unknownObjectRelease();
    v6 = *(v0 + 312);
    if (v6 == *(v0 + 296))
    {
LABEL_3:
      v7 = *(v0 + 288);
      v8 = *(v0 + 256);

      sub_2296A4F04(v8, _s28DefaultRoomPresencePublisherC8ObserverVMa);
      v9 = *(v0 + 256);
      v10 = *(v0 + 224);
      v11 = *(v0 + 232);
      v13 = *(v0 + 208);
      v12 = *(v0 + 216);
      v15 = *(v0 + 192);
      v14 = *(v0 + 200);
      v16 = *(v0 + 168);

      v17 = *(v0 + 8);

      v17();
    }

    else
    {
      v21 = *(v0 + 320);
      v22 = &selRef_notificationTrigger;
      v23 = MEMORY[0x277D84F90];
      while (1)
      {
        v24 = *(v0 + 288);
        if ((v24 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x22AAD13F0](v6);
          v26 = v25;
        }

        else
        {
          if (v6 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
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
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
            goto LABEL_111;
          }

          v26 = *(v24 + 8 * v6 + 32);
          v25 = swift_unknownObjectRetain();
        }

        *(v0 + 304) = v26;
        *(v0 + 312) = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v27 = *(*(v0 + 144) + 216);
        swift_unknownObjectRetain();
        v28 = [v27 v22[336]];
        if (v28)
        {
          v98 = v26;
          v29 = *(v0 + 136);
          v30 = v28[2];

          v31 = swift_task_alloc();
          *(v31 + 16) = v29;
          v32 = sub_22959C06C(sub_2296A4E6C, v31, v30);
          v94 = v21;
          *(v0 + 320) = v21;
          if (v33)
          {
            v34 = v30[2];
            v35 = v34;
          }

          else
          {
            v35 = v32;
            v34 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              goto LABEL_109;
            }

            while (1)
            {
              v37 = v30 + 2;
              v36 = v30[2];
              if (v34 == v36)
              {
                break;
              }

              if (v34 >= v36)
              {
                goto LABEL_99;
              }

              v102 = v35;
              v104 = v30;
              v38 = *(v0 + 272);
              v39 = *(v0 + 280);
              v40 = *(v0 + 216);
              v42 = *(v0 + 176);
              v41 = *(v0 + 184);
              v43 = *(v0 + 136);
              v44 = v30 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
              v45 = *(v41 + 72);
              v99 = (*(v41 + 80) + 32) & ~*(v41 + 80);
              v101 = v45 * v34;
              (*(v0 + 264))(v40, &v44[v45 * v34], v42);
              LOBYTE(v43) = sub_22A4DB78C();
              v39(v40, v42);
              if (v43)
              {
                v23 = MEMORY[0x277D84F90];
                v35 = v102;
                v30 = v104;
                ++v34;
              }

              else
              {
                v23 = MEMORY[0x277D84F90];
                if (v34 == v102)
                {
                  v30 = v104;
                }

                else
                {
                  if ((v102 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_102;
                  }

                  v46 = *v37;
                  if (v102 >= v46)
                  {
                    goto LABEL_103;
                  }

                  v47 = *(v0 + 272);
                  (*(v0 + 264))(*(v0 + 208), &v44[v45 * v102], *(v0 + 176));
                  if (v34 >= v46)
                  {
                    goto LABEL_104;
                  }

                  v48 = *(v0 + 272);
                  (*(v0 + 264))(*(v0 + 200), &v44[v101], *(v0 + 176));
                  v30 = v104;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v30 = sub_2295AFEA0(v104);
                  }

                  v49 = *(*(v0 + 184) + 40);
                  v49(v30 + v99 + v45 * v102, *(v0 + 200), *(v0 + 176));
                  if (v34 >= v30[2])
                  {
                    goto LABEL_105;
                  }

                  v49(v30 + v99 + v101, *(v0 + 208), *(v0 + 176));
                }

                v35 = v102 + 1;
                ++v34;
              }
            }

            if (v34 < v35)
            {
              goto LABEL_106;
            }

            if (v35 < 0)
            {
              goto LABEL_107;
            }
          }

          if (__OFADD__(v34, v35 - v34))
          {
            goto LABEL_108;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 104) = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v35 > v30[3] >> 1)
          {
            if (v34 <= v35)
            {
              v51 = v35;
            }

            else
            {
              v51 = v34;
            }

            v30 = sub_22958B1F0(isUniquelyReferenced_nonNull_native, v51, 1, v30);
            *(v0 + 104) = v30;
          }

          v52 = *(v0 + 144);
          sub_2296A4FE4(v35, v34, 0, MEMORY[0x277CC95F0]);

          v53 = *(v52 + 216);
          if (v30[2])
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA38, &qword_22A57CB90);
            v54 = swift_allocObject();
            *(v54 + 16) = v30;
            v55 = v53;
            [v55 setObject:v54 forKey:v98];
            swift_unknownObjectRelease_n();

            v22 = &selRef_notificationTrigger;
            v21 = v94;
          }

          else
          {
            v56 = *(v0 + 168);
            v58 = *(v0 + 144);
            v57 = *(v0 + 152);
            v59 = v53;
            [v59 removeObjectForKey_];
            swift_unknownObjectRelease();

            v60 = [*(v58 + 200) keyEnumerator];
            *(v0 + 112) = v23;
            sub_22A4DDC4C();
            sub_2296A4D2C(&qword_27D87EB30, 255, MEMORY[0x277CC9178]);
            sub_22A4DDFBC();
            if (*(v0 + 40))
            {
              v61 = v23;
              do
              {
                while (1)
                {
                  sub_229543C58(v0 + 16, v0 + 48);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA50, &qword_22A57CBC0);
                  if (swift_dynamicCast())
                  {
                    if (*(v0 + 128))
                    {
                      break;
                    }
                  }

                  v62 = *(v0 + 168);
                  v63 = *(v0 + 152);
                  sub_22A4DDFBC();
                  if (!*(v0 + 40))
                  {
                    goto LABEL_59;
                  }
                }

                v64 = v30;
                MEMORY[0x22AAD09E0]();
                if (*((*(v0 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v67 = *((*(v0 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_22A4DD85C();
                }

                v65 = *(v0 + 168);
                v66 = *(v0 + 152);
                sub_22A4DD87C();
                v61 = *(v0 + 112);
                sub_22A4DDFBC();
                v23 = MEMORY[0x277D84F90];
                v30 = v64;
              }

              while (*(v0 + 40));
            }

            else
            {
              v61 = v23;
            }

LABEL_59:
            v69 = *(v0 + 160);
            v68 = *(v0 + 168);
            v70 = *(v0 + 152);

            (*(v69 + 8))(v68, v70);
            *(v0 + 120) = v23;
            if (v61 >> 62)
            {
              v71 = sub_22A4DE0EC();
              if (v71)
              {
LABEL_61:
                v72 = 0;
                v100 = v61 & 0xC000000000000001;
                v96 = v61;
                v97 = v61 & 0xFFFFFFFFFFFFFF8;
                v95 = v71;
                do
                {
                  if (v100)
                  {
                    v73 = MEMORY[0x22AAD13F0](v72, v61);
                    v74 = v72 + 1;
                    if (__OFADD__(v72, 1))
                    {
                      goto LABEL_100;
                    }
                  }

                  else
                  {
                    if (v72 >= *(v97 + 16))
                    {
                      goto LABEL_101;
                    }

                    v73 = *(v61 + 8 * v72 + 32);
                    swift_unknownObjectRetain();
                    v74 = v72 + 1;
                    if (__OFADD__(v72, 1))
                    {
                      goto LABEL_100;
                    }
                  }

                  v103 = v74;
                  v75 = *(v0 + 280);
                  v76 = *(v0 + 216);
                  v77 = *(v0 + 192);
                  v78 = *(v0 + 176);
                  v79 = *(v0 + 184) + 8;
                  v80 = [objc_msgSend(v73 lpRoom)];
                  swift_unknownObjectRelease();
                  sub_22A4DB79C();

                  v81 = [v98 uuid];
                  sub_22A4DB79C();

                  LOBYTE(v81) = sub_22A4DB78C();
                  v75(v77, v78);
                  v75(v76, v78);
                  if (v81)
                  {
                    sub_22A4DE27C();
                    v82 = *(*(v0 + 120) + 16);
                    sub_22A4DE2AC();
                    sub_22A4DE2BC();
                    sub_22A4DE28C();
                  }

                  else
                  {
                    swift_unknownObjectRelease();
                  }

                  v61 = v96;
                  ++v72;
                }

                while (v103 != v95);
              }
            }

            else
            {
              v71 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v71)
              {
                goto LABEL_61;
              }
            }

            v83 = *(v0 + 120);
            *(v0 + 328) = v83;
            v84 = v83 < 0 || (v83 & 0x4000000000000000) != 0;
            if (v84)
            {
              v85 = sub_22A4DE0EC();
            }

            else
            {
              v85 = *(v83 + 16);
            }

            v23 = MEMORY[0x277D84F90];
            if (v85)
            {
              if (v85 < 1)
              {
                goto LABEL_110;
              }

              for (i = 0; i != v85; ++i)
              {
                if ((v83 & 0xC000000000000001) != 0)
                {
                  v87 = MEMORY[0x22AAD13F0](i, v83);
                }

                else
                {
                  v87 = *(v83 + 8 * i + 32);
                  swift_unknownObjectRetain();
                }

                [*(*(v0 + 144) + 200) removeObjectForKey_];
                swift_unknownObjectRelease();
              }
            }

            if (v84)
            {
              v25 = sub_22A4DE0EC();
            }

            else
            {
              v25 = *(v83 + 16);
            }

            v22 = &selRef_notificationTrigger;
            v21 = v94;
            *(v0 + 336) = v25;
            if (v25)
            {
              goto LABEL_96;
            }

            swift_unknownObjectRelease();
          }
        }

        else
        {
          swift_unknownObjectRelease_n();
        }

        v6 = *(v0 + 312);
        if (v6 == *(v0 + 296))
        {
          goto LABEL_3;
        }
      }

      __break(1u);
LABEL_96:
      if (v25 >= 1)
      {
        v18 = 0;
        goto LABEL_7;
      }

LABEL_111:
      __break(1u);
    }
  }

  else
  {
    v18 = *(v0 + 344) + 1;
LABEL_7:
    *(v0 + 344) = v18;
    v19 = *(v0 + 328);
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x22AAD13F0]();
    }

    else
    {
      v20 = *(v19 + 8 * v18 + 32);
      swift_unknownObjectRetain();
    }

    *(v0 + 352) = v20;
    v88 = *(v0 + 144);
    v89 = v88[17];
    v90 = v88[18];
    __swift_project_boxed_opaque_existential_0(v88 + 14, v89);
    v91 = *(v90 + 32);
    v105 = (v91 + *v91);
    v92 = v91[1];
    v93 = swift_task_alloc();
    *(v0 + 360) = v93;
    *v93 = v0;
    v93[1] = sub_22969BFD0;

    v105(v20, v89, v90);
  }
}

uint64_t sub_22969CBB8()
{
  v1 = v0;
  v82 = sub_22A4DB74C();
  v83 = *(v82 - 8);
  v2 = *(v83 + 64);
  v3 = MEMORY[0x28223BE20](v82);
  v70 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v81 = &v70 - v5;
  v6 = _s13PresenceStateOMa();
  v88 = *(v6 - 8);
  v7 = *(v88 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v76 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v74 = &v70 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v70 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v87 = &v70 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v78 = &v70 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v80 = &v70 - v20;
  MEMORY[0x28223BE20](v19);
  v91 = &v70 - v21;
  v92 = sub_22A4DB7DC();
  v79 = *(v92 - 8);
  v22 = *(v79 + 64);
  MEMORY[0x28223BE20](v92);
  v89 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22A4DB45C();
  v94 = *(v24 - 8);
  v25 = *(v94 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [*(v0 + 200) keyEnumerator];
  isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
  v99 = MEMORY[0x277D84F90];
  v93 = v28;
  sub_22A4DDC4C();
  sub_2296A4D2C(&qword_27D87EB30, 255, MEMORY[0x277CC9178]);
  sub_22A4DDFBC();
  while (v98)
  {
    v90 = isUniquelyReferenced_nonNull_native;
    while (1)
    {
      sub_229543C58(&v97, v95);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA50, &qword_22A57CBC0);
      if (swift_dynamicCast())
      {
        if (v96)
        {
          break;
        }
      }

      sub_22A4DDFBC();
      if (!v98)
      {
        isUniquelyReferenced_nonNull_native = v90;
        goto LABEL_11;
      }
    }

    MEMORY[0x22AAD09E0]();
    if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v90 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22A4DD85C();
    }

    sub_22A4DD87C();
    isUniquelyReferenced_nonNull_native = v99;
    sub_22A4DDFBC();
  }

LABEL_11:

  (*(v94 + 8))(v27, v24);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_57;
  }

  v30 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:
  v31 = v74;
  v32 = v91;
  v33 = v89;
  if (v30)
  {
    v34 = 0;
    v85 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    v86 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v77 = v79 + 16;
    v75 = (v83 + 32);
    v72 = (v83 + 8);
    v83 = v79 + 8;
    v35 = MEMORY[0x277D84F98];
    v73 = v1;
    v90 = isUniquelyReferenced_nonNull_native;
    v84 = v30;
    while (1)
    {
      if (v86)
      {
        v37 = MEMORY[0x22AAD13F0](v34, isUniquelyReferenced_nonNull_native);
        v38 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v34 >= *(v85 + 16))
        {
          goto LABEL_54;
        }

        v37 = *(isUniquelyReferenced_nonNull_native + 8 * v34 + 32);
        swift_unknownObjectRetain();
        v38 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          v30 = sub_22A4DE0EC();
          goto LABEL_13;
        }
      }

      v94 = v38;
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v39 = [objc_msgSend(v37 lpRoom)];
      swift_unknownObjectRelease();
      sub_22A4DB79C();

      v40 = [*(v1 + 200) objectForKey_];
      v93 = v37;
      if (v40)
      {
        v41 = v80;
        sub_2296A4F64(v40 + *(*v40 + 88), v80, _s13PresenceStateOMa);

        sub_2296A4E9C(v41, v32, _s13PresenceStateOMa);
      }

      else
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
        (*(*(v42 - 8) + 56))(v32, 1, 2, v42);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = v35;
      v43 = sub_2296DBEC0(v33);
      v45 = v35[2];
      v46 = (v44 & 1) == 0;
      v47 = __OFADD__(v45, v46);
      v48 = v45 + v46;
      if (v47)
      {
        goto LABEL_55;
      }

      v49 = v44;
      if (v35[3] < v48)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_30;
      }

      v52 = v43;
      sub_229897F38();
      v43 = v52;
      v35 = v97;
      if (v49)
      {
LABEL_31:
        v51 = *(v88 + 72) * v43;
        goto LABEL_38;
      }

LABEL_36:
      isUniquelyReferenced_nonNull_native = v43;
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
      v54 = v78;
      (*(*(v53 - 8) + 56))(v78, 1, 2, v53);
      v35[(isUniquelyReferenced_nonNull_native >> 6) + 8] |= 1 << isUniquelyReferenced_nonNull_native;
      (*(v79 + 16))(v35[6] + *(v79 + 72) * isUniquelyReferenced_nonNull_native, v33, v92);
      v51 = *(v88 + 72) * isUniquelyReferenced_nonNull_native;
      sub_2296A4E9C(v54, v35[7] + v51, _s13PresenceStateOMa);
      v55 = v35[2];
      v47 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v47)
      {
        goto LABEL_56;
      }

      v35[2] = v56;
LABEL_38:
      v57 = v35[7];
      sub_2296A4E9C(v57 + v51, v14, _s13PresenceStateOMa);
      v58 = v14;
      sub_2296A4F64(v14, v31, _s13PresenceStateOMa);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
      v60 = *(*(v59 - 8) + 48);
      v61 = v60(v31, 2, v59);
      if (!v61)
      {
        v62 = *v75;
        (*v75)(v81, v31, v82);
        v63 = v76;
        sub_2296A4F64(v91, v76, _s13PresenceStateOMa);
        v64 = v60(v63, 2, v59);
        if (v64)
        {
          v1 = v73;
          if (v64 != 1)
          {
            (*v72)(v81, v82);
            sub_2296A4F04(v14, _s13PresenceStateOMa);
            v32 = v91;
            v36 = v87;
            sub_2296A4F64(v91, v87, _s13PresenceStateOMa);
LABEL_50:
            v31 = v74;
            goto LABEL_16;
          }

          (*v72)(v81, v82);
          v36 = v87;
          sub_2296A4E9C(v14, v87, _s13PresenceStateOMa);
        }

        else
        {
          v65 = v70;
          v66 = v82;
          v62(v70, v76, v82);
          sub_2296A4D2C(&unk_27D87EBD0, 255, MEMORY[0x277CC9578]);
          v67 = v81;
          v71 = sub_22A4DD54C();
          v68 = *v72;
          (*v72)(v65, v66);
          v68(v67, v66);
          if ((v71 & 1) == 0)
          {
            v14 = v58;
            sub_2296A4F04(v58, _s13PresenceStateOMa);
            v32 = v91;
            v36 = v87;
            sub_2296A4F64(v91, v87, _s13PresenceStateOMa);
            v1 = v73;
            goto LABEL_50;
          }

          v14 = v58;
          v36 = v87;
          sub_2296A4E9C(v58, v87, _s13PresenceStateOMa);
          v1 = v73;
        }

        v31 = v74;
        goto LABEL_47;
      }

      if (v61 != 1)
      {
        v36 = v87;
        sub_2296A4E9C(v14, v87, _s13PresenceStateOMa);
LABEL_47:
        v32 = v91;
        goto LABEL_16;
      }

      sub_2296A4F04(v14, _s13PresenceStateOMa);
      v32 = v91;
      v36 = v87;
      sub_2296A4F64(v91, v87, _s13PresenceStateOMa);
LABEL_16:
      isUniquelyReferenced_nonNull_native = v90;
      sub_2296A4E9C(v36, v57 + v51, _s13PresenceStateOMa);
      swift_unknownObjectRelease();
      sub_2296A4F04(v32, _s13PresenceStateOMa);
      v33 = v89;
      (*v83)(v89, v92);
      ++v34;
      if (v94 == v84)
      {
        goto LABEL_52;
      }
    }

    sub_229893870(v48, isUniquelyReferenced_nonNull_native);
    v35 = v97;
    v43 = sub_2296DBEC0(v33);
    if ((v49 & 1) != (v50 & 1))
    {
      result = sub_22A4DE67C();
      __break(1u);
      return result;
    }

LABEL_30:
    if (v49)
    {
      goto LABEL_31;
    }

    goto LABEL_36;
  }

  v35 = MEMORY[0x277D84F98];
LABEL_52:

  return v35;
}

uint64_t sub_22969D8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2296DBEC0(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_229898264();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_22A4DB7DC();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = _s28DefaultRoomPresencePublisherC8ObserverVMa();
    v22 = *(v15 - 8);
    sub_2296A4E9C(v14 + *(v22 + 72) * v8, a2, _s28DefaultRoomPresencePublisherC8ObserverVMa);
    sub_2297FDD94(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = _s28DefaultRoomPresencePublisherC8ObserverVMa();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_22969DA64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_2296DBEC0(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_229898C38();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = sub_22A4DB7DC();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_2297FE114(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_22969DB2C()
{
  *(v1 + 40) = v0;
  *(v1 + 48) = *v0;
  return MEMORY[0x2822009F8](sub_22969DB74, v0, 0);
}

uint64_t sub_22969DB74()
{
  v1 = v0[5];
  v2 = swift_beginAccess();
  if (*(*(v1 + 232) + 16))
  {
    __break(1u);
  }

  else
  {
    v10 = v0[5];
    v11 = v0[6];
    v12 = *(v10 + 224);
    v13 = sub_22A4DDE5C();
    v0[7] = v13;

    v15 = sub_2296A4D2C(&qword_27D87EB28, v14, _s28DefaultRoomPresencePublisherCMa);
    v0[8] = v15;
    v16 = swift_task_alloc();
    v0[9] = v16;
    v16[2] = v10;
    v16[3] = v13;
    v16[4] = v11;
    v17 = *(MEMORY[0x277D859E0] + 4);
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_22969DD0C;
    v7 = sub_22969FB30;
    v6 = 0x800000022A58FDB0;
    v9 = MEMORY[0x277D84F78] + 8;
    v3 = v10;
    v4 = v15;
    v5 = 0xD00000000000001FLL;
    v8 = v16;
  }

  return MEMORY[0x2822007B8](v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22969DD0C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22969DE38, v3, 0);
}

uint64_t sub_22969DE38()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = *(v2 + 224);
  v5 = sub_22A4DDE5C();
  v0[11] = v5;

  v6 = swift_task_alloc();
  v0[12] = v6;
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v3;
  v7 = *(MEMORY[0x277D859E0] + 4);
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_22969DF70;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v8, v2, v1, 0xD00000000000001FLL, 0x800000022A58FDB0, sub_2296A16CC, v6, v9);
}

uint64_t sub_22969DF70()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22969E09C, v3, 0);
}

uint64_t sub_22969E09C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = *(v2 + 224);
  v5 = sub_22A4DDE5C();
  v0[14] = v5;

  v6 = swift_task_alloc();
  v0[15] = v6;
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v3;
  v7 = *(MEMORY[0x277D859E0] + 4);
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_22969E1D4;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v8, v2, v1, 0xD00000000000001FLL, 0x800000022A58FDB0, sub_2296A3340, v6, v9);
}

uint64_t sub_22969E1D4()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22969E300, v3, 0);
}

uint64_t sub_22969E300()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22969E378(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22A4DB7DC();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = *(_s13PresenceStateOMa() - 8);
  v2[8] = v6;
  v7 = *(v6 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22969E4A8, v1, 0);
}

uint64_t sub_22969E4A8()
{
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];
  v4 = sub_22969CBB8();
  v5 = [v3 uuid];
  sub_22A4DB79C();

  if (*(v4 + 16) && (v6 = sub_2296DBEC0(v0[7]), (v7 & 1) != 0))
  {
    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[7];
    v11 = v0[4];
    v12 = v0[5];
    sub_2296A4F64(*(v4 + 56) + *(v0[8] + 72) * v6, v9, _s13PresenceStateOMa);
    v15 = *(v12 + 8);
    v13 = v12 + 8;
    v14 = v15;
    v15(v10, v11);

    sub_2296A4E9C(v9, v8, _s13PresenceStateOMa);
  }

  else
  {
    v16 = v0[10];
    v17 = v0[7];
    v18 = v0[4];
    v19 = v0[5];

    v20 = *(v19 + 8);
    v13 = v19 + 8;
    v14 = v20;
    v20(v17, v18);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
    (*(*(v21 - 8) + 56))(v16, 1, 2, v21);
  }

  v0[11] = v13;
  v0[12] = v14;
  v22 = v0[6];
  v23 = v0[2];
  v24 = __swift_project_boxed_opaque_existential_0((v0[3] + 152), *(v0[3] + 176));
  v25 = [v23 uuid];
  sub_22A4DB79C();

  v26 = *v24;
  v27 = swift_task_alloc();
  v0[13] = v27;
  *v27 = v0;
  v27[1] = sub_22969E6D8;
  v28 = v0[10];
  v29 = v0[6];

  return sub_2296A5608(v28, v29);
}

uint64_t sub_22969E6D8(char a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v9 = *v1;
  *(*v1 + 112) = a1;

  v3(v5, v6);

  return MEMORY[0x2822009F8](sub_22969E864, v7, 0);
}

uint64_t sub_22969E864()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_2296A4F04(*(v0 + 80), _s13PresenceStateOMa);

  v4 = *(v0 + 8);
  v5 = *(v0 + 112);

  return v4(v5);
}

uint64_t sub_22969E90C(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9C8, &unk_22A57CAF8);
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = sub_22A4DB74C();
  v2[15] = v6;
  v7 = *(v6 - 8);
  v2[16] = v7;
  v8 = *(v7 + 64) + 15;
  v2[17] = swift_task_alloc();
  v9 = *(*(_s13PresenceStateOMa() - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA30, &unk_22A57CD80) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v11 = _s28DefaultRoomPresencePublisherC8ObserverVMa();
  v2[23] = v11;
  v12 = *(v11 - 8);
  v2[24] = v12;
  v13 = *(v12 + 64) + 15;
  v2[25] = swift_task_alloc();
  v14 = sub_22A4DB7DC();
  v2[26] = v14;
  v15 = *(v14 - 8);
  v2[27] = v15;
  v16 = *(v15 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D190, &qword_22A5780C0);
  v2[31] = v17;
  v18 = *(v17 - 8);
  v2[32] = v18;
  v19 = *(v18 + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22969EC00, v1, 0);
}

uint64_t sub_22969EC00()
{
  v1 = [*(v0[11] + 216) objectForKey_];
  if (!v1)
  {
LABEL_22:
    v43 = v0[33];
    v42 = v0[34];
    v45 = v0[29];
    v44 = v0[30];
    v46 = v0[28];
    v47 = v0[25];
    v49 = v0[21];
    v48 = v0[22];
    v51 = v0[19];
    v50 = v0[20];
    v65 = v0[18];
    v67 = v0[17];
    v69 = v0[14];

    v52 = v0[1];

    return v52();
  }

  v2 = v1[2];

  v3 = *(v2 + 16);
  if (v3)
  {
    v66 = v0[31];
    v68 = v0[32];
    v4 = v0[27];
    v5 = v0[24];
    v6 = v0[11];
    v70 = MEMORY[0x277D84F90];
    sub_22958389C(0, v3, 0);
    v7 = v70;
    v8 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v64 = v6;
    swift_beginAccess();
    v10 = *(v4 + 16);
    v9 = v4 + 16;
    v62 = (v9 - 8);
    v63 = *(v9 + 56);
    v59 = v5;
    v60 = v10;
    v61 = (v5 + 56);
    v11 = v10;
    do
    {
      v12 = v0[11];
      v11(v0[30], v8, v0[26]);
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        v13 = v0[11];
        swift_task_reportUnexpectedExecutor();
      }

      v14 = v0[33];
      v15 = *(v66 + 48);
      v11(v14, v0[30], v0[26]);
      v16 = *(v64 + 208);
      v17 = v0[30];
      if (*(v16 + 16))
      {
        v18 = v9;
        v19 = *(v64 + 208);

        v20 = sub_2296DBEC0(v17);
        v21 = v0[30];
        v22 = v0[26];
        if (v23)
        {
          sub_2296A4F64(*(v16 + 56) + *(v59 + 72) * v20, v14 + v15, _s28DefaultRoomPresencePublisherC8ObserverVMa);
          (*v62)(v21, v22);

          v24 = 0;
        }

        else
        {

          (*v62)(v21, v22);
          v24 = 1;
        }

        v9 = v18;
        v11 = v60;
      }

      else
      {
        (*v62)(v0[30], v0[26]);
        v24 = 1;
      }

      (*v61)(v14 + v15, v24, 1, v0[23]);
      v26 = *(v70 + 16);
      v25 = *(v70 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_22958389C(v25 > 1, v26 + 1, 1);
      }

      v27 = v0[33];
      *(v70 + 16) = v26 + 1;
      sub_22957F2F8(v27, v70 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v26, &qword_27D87D190, &qword_22A5780C0);
      v8 += v63;
      --v3;
    }

    while (v3);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v0[35] = v7;
  v29 = *(v7 + 16);
  v0[36] = v29;
  if (!v29)
  {

    goto LABEL_22;
  }

  v31 = v0[31];
  v30 = v0[32];
  v32 = v0[27];
  v33 = v0[23];
  v34 = v0[24];
  v0[37] = 0;
  if (!*(v7 + 16))
  {
    __break(1u);
    return result;
  }

  v35 = v0[34];
  v36 = v0[29];
  v37 = v0[26];
  v38 = v0[22];
  sub_2296A4A0C(v7 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v35);
  v39 = *(v31 + 48);
  (*(v32 + 32))(v36, v35, v37);
  sub_22957F2F8(v35 + v39, v38, &qword_27D87EA30, &unk_22A57CD80);
  if ((*(v34 + 48))(v38, 1, v33) == 1)
  {
    v40 = v0[35];
    v41 = v0[22];
    (*(v0[27] + 8))(v0[29], v0[26]);

    sub_22953EAE4(v41, &qword_27D87EA30, &unk_22A57CD80);
    goto LABEL_22;
  }

  v53 = v0[25];
  sub_2296A4E9C(v0[22], v53, _s28DefaultRoomPresencePublisherC8ObserverVMa);
  v54 = [*v53 allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881F00, &unk_22A57CB50);
  v55 = sub_22A4DD83C();
  v0[38] = v55;

  v56 = swift_task_alloc();
  v0[39] = v56;
  *v56 = v0;
  v56[1] = sub_22969F1D8;
  v57 = v0[21];
  v58 = v0[11];

  return sub_229694A80(v57, v55);
}

uint64_t sub_22969F1D8()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 88);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22969F304, v3, 0);
}

uint64_t sub_22969F304()
{
  if (qword_27D87B998 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v6 = v0[20];
  v5 = v0[21];
  v7 = sub_22A4DD07C();
  __swift_project_value_buffer(v7, qword_27D8AB7A8);
  (*(v4 + 16))(v1, v2, v3);
  sub_2296A4F64(v5, v6, _s13PresenceStateOMa);
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[27];
  v11 = v0[28];
  v13 = v0[26];
  v14 = v0[20];
  if (v10)
  {
    v75 = v9;
    log = v8;
    v15 = v0[19];
    v16 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v0[9] = v73;
    *v16 = 136315650;
    *(v16 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A590480, v0 + 9);
    *(v16 + 12) = 2080;
    sub_2296A4D2C(&qword_281403860, 255, MEMORY[0x277CC95F0]);
    v17 = sub_22A4DE5CC();
    v19 = v18;
    v20 = *(v12 + 8);
    v20(v11, v13);
    v21 = sub_2295A3E30(v17, v19, v0 + 9);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2080;
    sub_2296A4F64(v14, v15, _s13PresenceStateOMa);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
    v23 = (*(*(v22 - 8) + 48))(v15, 2, v22);
    if (v23)
    {
      if (v23 == 1)
      {
        v24 = 0x6E776F6E6B6E75;
      }

      else
      {
        v24 = 0x646569707563636FLL;
      }

      if (v23 == 1)
      {
        v25 = 0xE700000000000000;
      }

      else
      {
        v25 = 0xE800000000000000;
      }
    }

    else
    {
      v26 = v20;
      v27 = v0[16];
      v28 = v0[17];
      v29 = v0[15];
      (*(v27 + 32))(v28, v0[19], v29);
      v0[7] = 0;
      v0[8] = 0xE000000000000000;
      sub_22A4DE1FC();
      v30 = v0[8];

      v0[5] = 0xD000000000000016;
      v0[6] = 0x800000022A590330;
      sub_2296A4D2C(&qword_281403890, 255, MEMORY[0x277CC9578]);
      v31 = sub_22A4DE5CC();
      MEMORY[0x22AAD08C0](v31);

      MEMORY[0x22AAD08C0](41, 0xE100000000000000);
      v24 = v0[5];
      v25 = v0[6];
      (*(v27 + 8))(v28, v29);
      v20 = v26;
    }

    v81 = v20;
    sub_2296A4F04(v0[20], _s13PresenceStateOMa);
    v32 = sub_2295A3E30(v24, v25, v0 + 9);

    *(v16 + 24) = v32;
    _os_log_impl(&dword_229538000, log, v75, "%s - Notifying observer %s: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v73, -1, -1);
    MEMORY[0x22AAD4E50](v16, -1, -1);
  }

  else
  {

    sub_2296A4F04(v14, _s13PresenceStateOMa);
    v81 = *(v12 + 8);
    v81(v11, v13);
  }

  v74 = v0[29];
  v72 = v0[26];
  v33 = v0[25];
  v34 = v0[21];
  v35 = v0[13];
  v36 = v0[14];
  v37 = v0[12];
  v76 = v0[37] + 1;
  loga = v0[36];
  v38 = v0[27] + 8;
  v39 = *(v0[23] + 20);
  sub_2296A4F64(v34, v0[18], _s13PresenceStateOMa);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881920, &qword_22A57CA70);
  sub_22A4DDA0C();
  (*(v35 + 8))(v36, v37);
  sub_2296A4F04(v34, _s13PresenceStateOMa);
  v81(v74, v72);
  result = sub_2296A4F04(v33, _s28DefaultRoomPresencePublisherC8ObserverVMa);
  if (v76 == loga)
  {
    v41 = v0[35];

LABEL_19:
    v56 = v0[33];
    v55 = v0[34];
    v58 = v0[29];
    v57 = v0[30];
    v59 = v0[28];
    v60 = v0[25];
    v62 = v0[21];
    v61 = v0[22];
    v64 = v0[19];
    v63 = v0[20];
    v77 = v0[18];
    logb = v0[17];
    v82 = v0[14];

    v65 = v0[1];

    return v65();
  }

  v42 = v0[37] + 1;
  v0[37] = v42;
  v43 = v0[35];
  if (v42 >= *(v43 + 16))
  {
    __break(1u);
    return result;
  }

  v44 = v0[34];
  v45 = v0[31];
  v46 = v0[29];
  v47 = v0[26];
  v48 = v0[27];
  v49 = v0[23];
  v50 = v0[24];
  v51 = v0[22];
  sub_2296A4A0C(v43 + ((*(v0[32] + 80) + 32) & ~*(v0[32] + 80)) + *(v0[32] + 72) * v42, v44);
  v52 = *(v45 + 48);
  (*(v48 + 32))(v46, v44, v47);
  sub_22957F2F8(v44 + v52, v51, &qword_27D87EA30, &unk_22A57CD80);
  if ((*(v50 + 48))(v51, 1, v49) == 1)
  {
    v53 = v0[35];
    v54 = v0[22];
    (*(v0[27] + 8))(v0[29], v0[26]);

    sub_22953EAE4(v54, &qword_27D87EA30, &unk_22A57CD80);
    goto LABEL_19;
  }

  v66 = v0[25];
  sub_2296A4E9C(v0[22], v66, _s28DefaultRoomPresencePublisherC8ObserverVMa);
  v67 = [*v66 allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881F00, &unk_22A57CB50);
  v68 = sub_22A4DD83C();
  v0[38] = v68;

  v69 = swift_task_alloc();
  v0[39] = v69;
  *v69 = v0;
  v69[1] = sub_22969F1D8;
  v70 = v0[21];
  v71 = v0[11];

  return sub_229694A80(v70, v68);
}

uint64_t sub_22969FB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[25] = a5;
  v6[26] = a6;
  v6[24] = a4;
  v7 = sub_22A4DB21C();
  v6[27] = v7;
  v8 = *(v7 - 8);
  v6[28] = v8;
  v9 = *(v8 + 64) + 15;
  v6[29] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50) - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v11 = sub_22A4DDE4C();
  v6[31] = v11;
  v12 = *(v11 - 8);
  v6[32] = v12;
  v13 = *(v12 + 64) + 15;
  v6[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22969FCC8, 0, 0);
}

uint64_t sub_22969FCC8()
{
  v1 = v0[33];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  sub_22A4DD8FC();

  sub_22A4DDE3C();
  swift_beginAccess();
  v0[34] = @"kRoomOldNameKey";
  v5 = sub_2296A4D2C(&qword_27D87DBC0, 255, MEMORY[0x277CC9D68]);
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[35] = v7;
  *v7 = v0;
  v7[1] = sub_22969FE0C;
  v8 = v0[33];
  v9 = v0[30];
  v10 = v0[31];

  return MEMORY[0x282200308](v9, v10, v5);
}

uint64_t sub_22969FE0C()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_2296A04C0;
  }

  else
  {
    v3 = sub_22969FF20;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22969FF3C()
{
  v34 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_10:
    v12 = *(v0 + 232);
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));

    v13 = *(v0 + 8);

    return v13();
  }

  (*(v3 + 32))(*(v0 + 232), v1, v2);
  if (qword_27D87B998 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8AB7A8);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v33);
    _os_log_impl(&dword_229538000, v5, v6, "%s - Received accessory changed rooms notification", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v9 = *(v0 + 208);
  Strong = swift_weakLoadStrong();
  *(v0 + 296) = Strong;
  if (!Strong)
  {
LABEL_9:
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    v11 = *(v0 + 240);
    goto LABEL_10;
  }

  if (sub_22A4DDAAC())
  {

    goto LABEL_9;
  }

  v15 = *(v0 + 232);
  sub_22A4DB1FC();
  if (!*(v0 + 80))
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

    v26 = v0 + 56;
LABEL_29:
    sub_22953EAE4(v26, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA50, &qword_22A57CBC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

    goto LABEL_30;
  }

  v16 = *(v0 + 184);
  *(v0 + 304) = v16;
  v17 = sub_22A4DB20C();
  if (!v17)
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

    swift_unknownObjectRelease();
    *(v0 + 104) = 0u;
    *(v0 + 88) = 0u;
    goto LABEL_28;
  }

  v18 = v17;
  v19 = *(v0 + 272);
  *(v0 + 144) = sub_22A4DD5EC();
  *(v0 + 152) = v20;
  sub_22A4DE18C();
  if (!*(v18 + 16) || (v21 = sub_2295402E8(v0 + 16), (v22 & 1) == 0))
  {

    sub_22954045C(v0 + 16);
    *(v0 + 88) = 0u;
    *(v0 + 104) = 0u;
    goto LABEL_26;
  }

  sub_2295404B0(*(v18 + 56) + 32 * v21, v0 + 88);
  sub_22954045C(v0 + 16);

  if (!*(v0 + 112))
  {
LABEL_26:
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

    swift_unknownObjectRelease();
LABEL_28:
    v26 = v0 + 88;
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    v23 = *(v0 + 160);
    v24 = *(v0 + 168);
    *(v0 + 312) = v24;
    v25 = swift_task_alloc();
    *(v0 + 320) = v25;
    *v25 = v0;
    v25[1] = sub_2296A054C;

    return sub_2296A0778(v16, v23, v24);
  }

  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

  swift_unknownObjectRelease();
LABEL_30:
  v27 = sub_2296A4D2C(&qword_27D87DBC0, 255, MEMORY[0x277CC9D68]);
  v28 = *(MEMORY[0x277D856D0] + 4);
  v29 = swift_task_alloc();
  *(v0 + 280) = v29;
  *v29 = v0;
  v29[1] = sub_22969FE0C;
  v30 = *(v0 + 264);
  v31 = *(v0 + 240);
  v32 = *(v0 + 248);

  return MEMORY[0x282200308](v31, v32, v27);
}

uint64_t sub_2296A04C0()
{
  *(v0 + 176) = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_2296A054C()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 312);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2296A0664, 0, 0);
}

uint64_t sub_2296A0664()
{
  v1 = v0[37];
  v2 = v0[38];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];

  swift_unknownObjectRelease();
  (*(v4 + 8))(v3, v5);
  v6 = sub_2296A4D2C(&qword_27D87DBC0, 255, MEMORY[0x277CC9D68]);
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  v0[35] = v8;
  *v8 = v0;
  v8[1] = sub_22969FE0C;
  v9 = v0[33];
  v10 = v0[30];
  v11 = v0[31];

  return MEMORY[0x282200308](v10, v11, v6);
}

uint64_t sub_2296A0778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22A4DB7DC();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296A083C, v3, 0);
}

uint64_t sub_2296A083C()
{
  v48 = v0;
  v1 = v0[5];
  v2 = [*(v1 + 200) objectForKey_];
  v0[9] = v2;
  if (v2)
  {
    v3 = v0[5];
    v4 = sub_2296A4834(v0[3], v0[4]);
    v0[10] = v4;
    if (v4)
    {
      v5 = v4;
      if (qword_27D87B998 != -1)
      {
        swift_once();
      }

      v6 = v0[2];
      v7 = sub_22A4DD07C();
      __swift_project_value_buffer(v7, qword_27D8AB7A8);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v8 = sub_22A4DD05C();
      v9 = sub_22A4DDCCC();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v10 = &_OBJC_LABEL_PROTOCOL___HMDUserDataControllerTimerCreator;
      if (os_log_type_enabled(v8, v9))
      {
        v45 = v9;
        v11 = v0[8];
        v46 = v0[7];
        v12 = v0[6];
        v13 = v0[2];
        v42 = v13;
        v14 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v47 = v44;
        *v14 = 136315906;
        *(v14 + 4) = sub_2295A3E30(0xD000000000000039, 0x800000022A5904C0, &v47);
        *(v14 + 12) = 2080;
        v15 = [v13 shortDescription];
        v43 = v1;
        v16 = sub_22A4DD5EC();
        v18 = v17;

        v19 = sub_2295A3E30(v16, v18, &v47);

        *(v14 + 14) = v19;
        *(v14 + 22) = 2080;
        v20 = [v5 uuid];
        sub_22A4DB79C();

        sub_2296A4D2C(&qword_281403860, 255, MEMORY[0x277CC95F0]);
        v21 = sub_22A4DE5CC();
        v23 = v22;
        log = v8;
        v24 = *(v46 + 8);
        v24(v11, v12);
        v25 = sub_2295A3E30(v21, v23, &v47);

        *(v14 + 24) = v25;
        *(v14 + 32) = 2080;
        v26 = [objc_msgSend(v42 lpRoom)];
        swift_unknownObjectRelease();
        sub_22A4DB79C();

        v27 = sub_22A4DE5CC();
        v29 = v28;
        v24(v11, v12);
        v30 = v27;
        v1 = v43;
        v31 = sub_2295A3E30(v30, v29, &v47);

        *(v14 + 34) = v31;
        v8 = log;
        _os_log_impl(&dword_229538000, log, v45, "%s - Handling accessory changed room notification. Accessory:%s, old room uuid: %s, new room uuid: %s", v14, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v44, -1, -1);
        v32 = v14;
        v10 = &_OBJC_LABEL_PROTOCOL___HMDUserDataControllerTimerCreator;
        MEMORY[0x22AAD4E50](v32, -1, -1);
      }

      v33 = v0[2];
      v34 = *(v0[5] + 216);
      v35 = [v34 objectForKey_];
      swift_unknownObjectRelease();

      if (v35)
      {
      }

      else
      {
        [*(v1 + 200) removeObjectForKey_];
      }

      v39 = swift_task_alloc();
      v0[11] = v39;
      *v39 = v0;
      v39[1] = sub_2296A0D2C;
      v40 = v0[5];

      return sub_22969E378(v5);
    }
  }

  v36 = v0[8];

  v37 = v0[1];

  return v37();
}

uint64_t sub_2296A0D2C(char a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 136) = a1;

  return MEMORY[0x2822009F8](sub_2296A0E44, v3, 0);
}

uint64_t sub_2296A0E44()
{
  if (*(v0 + 136) == 1)
  {
    v1 = *(v0 + 80);
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_2296A1054;
    v3 = *(v0 + 40);

    return sub_22969E90C(v1);
  }

  else
  {
    v5 = *(v0 + 16);
    v6 = *(*(v0 + 40) + 216);
    v7 = [v6 objectForKey_];
    swift_unknownObjectRelease();

    if (v7)
    {
      v8 = *(v0 + 72);
      v9 = *(v0 + 40);
      v10 = *(v0 + 16);

      [*(v9 + 200) setObject:v8 forKey:v10];
      v11 = [v10 lpRoom];
      *(v0 + 104) = v11;
      v12 = swift_task_alloc();
      *(v0 + 112) = v12;
      *v12 = v0;
      v12[1] = sub_2296A12F4;
      v13 = *(v0 + 40);

      return sub_22969E378(v11);
    }

    else
    {
      v14 = *(v0 + 72);
      v15 = *(v0 + 80);

      swift_unknownObjectRelease();
      v16 = *(v0 + 64);

      v17 = *(v0 + 8);

      return v17();
    }
  }
}

uint64_t sub_2296A1054()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2296A1164, v2, 0);
}

uint64_t sub_2296A1164()
{
  v1 = v0[2];
  v2 = *(v0[5] + 216);
  v3 = [v2 objectForKey_];
  swift_unknownObjectRelease();

  if (v3)
  {
    v4 = v0[9];
    v5 = v0[5];
    v6 = v0[2];

    [*(v5 + 200) setObject:v4 forKey:v6];
    v7 = [v6 lpRoom];
    v0[13] = v7;
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_2296A12F4;
    v9 = v0[5];

    return sub_22969E378(v7);
  }

  else
  {
    v11 = v0[9];
    v12 = v0[10];

    swift_unknownObjectRelease();
    v13 = v0[8];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_2296A12F4(char a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 137) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_2296A1428, v4, 0);
}

uint64_t sub_2296A1428()
{
  if (*(v0 + 137) == 1)
  {
    v1 = [*(v0 + 16) lpRoom];
    *(v0 + 120) = v1;
    v2 = swift_task_alloc();
    *(v0 + 128) = v2;
    *v2 = v0;
    v2[1] = sub_2296A1530;
    v3 = *(v0 + 40);

    return sub_22969E90C(v1);
  }

  else
  {
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);

    swift_unknownObjectRelease();
    v7 = *(v0 + 64);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_2296A1530()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 40);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_2296A165C, v3, 0);
}

uint64_t sub_2296A165C()
{
  v1 = v0[9];
  v2 = v0[10];

  swift_unknownObjectRelease();
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2296A170C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v7 = sub_22A4DB21C();
  v6[21] = v7;
  v8 = *(v7 - 8);
  v6[22] = v8;
  v9 = *(v8 + 64) + 15;
  v6[23] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v11 = sub_22A4DDE4C();
  v6[25] = v11;
  v12 = *(v11 - 8);
  v6[26] = v12;
  v13 = *(v12 + 64) + 15;
  v6[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296A1864, 0, 0);
}

uint64_t sub_2296A1864()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  sub_22A4DD8FC();

  sub_22A4DDE3C();
  swift_beginAccess();
  v0[28] = @"HMDAccessoryKey";
  v5 = sub_2296A4D2C(&qword_27D87DBC0, 255, MEMORY[0x277CC9D68]);
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[29] = v7;
  *v7 = v0;
  v7[1] = sub_2296A19A8;
  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[25];

  return MEMORY[0x282200308](v9, v10, v5);
}

uint64_t sub_2296A19A8()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_2296A1FA0;
  }

  else
  {
    v3 = sub_2296A1ABC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2296A1AD8()
{
  v31 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_10:
    v12 = *(v0 + 184);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    v13 = *(v0 + 8);

    return v13();
  }

  (*(v3 + 32))(*(v0 + 184), v1, v2);
  if (qword_27D87B998 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8AB7A8);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v30);
    _os_log_impl(&dword_229538000, v5, v6, "%s - Received accessory added notification", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v9 = *(v0 + 160);
  Strong = swift_weakLoadStrong();
  *(v0 + 248) = Strong;
  if (!Strong)
  {
LABEL_9:
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    v11 = *(v0 + 192);
    goto LABEL_10;
  }

  if (sub_22A4DDAAC())
  {

    goto LABEL_9;
  }

  v15 = *(v0 + 184);
  v16 = sub_22A4DB20C();
  if (!v16)
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_24;
  }

  v17 = v16;
  v18 = *(v0 + 224);
  *(v0 + 112) = sub_22A4DD5EC();
  *(v0 + 120) = v19;
  sub_22A4DE18C();
  if (!*(v17 + 16) || (v20 = sub_2295402E8(v0 + 16), (v21 & 1) == 0))
  {

    sub_22954045C(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_22;
  }

  sub_2295404B0(*(v17 + 56) + 32 * v20, v0 + 56);
  sub_22954045C(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_22:
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

LABEL_24:
    sub_22953EAE4(v0 + 56, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA50, &qword_22A57CBC0);
  if (swift_dynamicCast())
  {
    v22 = *(v0 + 136);
    *(v0 + 256) = v22;
    v23 = swift_task_alloc();
    *(v0 + 264) = v23;
    *v23 = v0;
    v23[1] = sub_2296A202C;

    return sub_2296A223C(v22);
  }

  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

LABEL_25:
  v24 = sub_2296A4D2C(&qword_27D87DBC0, 255, MEMORY[0x277CC9D68]);
  v25 = *(MEMORY[0x277D856D0] + 4);
  v26 = swift_task_alloc();
  *(v0 + 232) = v26;
  *v26 = v0;
  v26[1] = sub_2296A19A8;
  v27 = *(v0 + 216);
  v28 = *(v0 + 192);
  v29 = *(v0 + 200);

  return MEMORY[0x282200308](v28, v29, v24);
}

uint64_t sub_2296A1FA0()
{
  *(v0 + 128) = *(v0 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_2296A202C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2296A2128, 0, 0);
}

uint64_t sub_2296A2128()
{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];

  swift_unknownObjectRelease();
  (*(v4 + 8))(v3, v5);
  v6 = sub_2296A4D2C(&qword_27D87DBC0, 255, MEMORY[0x277CC9D68]);
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  v0[29] = v8;
  *v8 = v0;
  v8[1] = sub_2296A19A8;
  v9 = v0[27];
  v10 = v0[24];
  v11 = v0[25];

  return MEMORY[0x282200308](v10, v11, v6);
}

uint64_t sub_2296A223C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = _s13PresenceStateOMa();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296A2340, v1, 0);
}

uint64_t sub_2296A2340()
{
  v1 = v0[3];
  v2 = v1[17];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_0(v1 + 14, v2);
  v4 = *(v3 + 24);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_2296A2474;
  v7 = v0[4];
  v8 = v0[2];

  return v10(v7, v8, v2, v3);
}

uint64_t sub_2296A2474()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  v5 = *(v2 + 24);
  if (v0)
  {

    v6 = sub_2296A2DE4;
  }

  else
  {
    v6 = sub_2296A25AC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2296A25AC()
{
  v37 = v0;
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[6] + 56))(v2, 0, 1, v0[5]);
  sub_2296A4E9C(v2, v1, _s13PresenceStateOMa);
  if (qword_27D87B998 != -1)
  {
    swift_once();
  }

  v3 = v0[2];
  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8AB7A8);
  swift_unknownObjectRetain();
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A5904A0, &v36);
    *(v8 + 12) = 2080;
    v10 = [v7 shortDescription];
    v11 = sub_22A4DD5EC();
    v13 = v12;

    v14 = sub_2295A3E30(v11, v13, &v36);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_229538000, v5, v6, "%s - %s added to home. Adding to the presence map.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  v15 = v0[2];
  v16 = *(v0[3] + 216);
  v17 = [v16 objectForKey_];
  swift_unknownObjectRelease();

  v18 = v0[8];
  if (v17)
  {
    v19 = v0[7];
    v20 = v0[2];
    v21 = v0[3];

    v22 = *(v21 + 200);
    sub_2296A4F64(v18, v19, _s13PresenceStateOMa);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA48, &unk_22A57CBB0);
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    v26 = swift_allocObject();
    sub_2296A4E9C(v19, v26 + *(*v26 + 88), _s13PresenceStateOMa);
    v27 = v22;
    [v27 setObject:v26 forKey:v20];

    v28 = [v20 lpRoom];
    v0[10] = v28;
    v29 = swift_task_alloc();
    v0[11] = v29;
    *v29 = v0;
    v29[1] = sub_2296A29CC;
    v30 = v0[3];

    return sub_22969E378(v28);
  }

  else
  {
    sub_2296A4F04(v0[8], _s13PresenceStateOMa);
    v33 = v0[7];
    v32 = v0[8];
    v34 = v0[4];

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_2296A29CC(char a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 112) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_2296A2B00, v4, 0);
}

uint64_t sub_2296A2B00()
{
  if (*(v0 + 112) == 1)
  {
    v1 = [*(v0 + 16) lpRoom];
    *(v0 + 96) = v1;
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_2296A2C28;
    v3 = *(v0 + 24);

    return sub_22969E90C(v1);
  }

  else
  {
    sub_2296A4F04(*(v0 + 64), _s13PresenceStateOMa);
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 32);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_2296A2C28()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 24);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_2296A2D54, v3, 0);
}

uint64_t sub_2296A2D54()
{
  sub_2296A4F04(v0[8], _s13PresenceStateOMa);
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2296A2DE4()
{
  v20 = v0;
  v1 = v0[4];
  (*(v0[6] + 56))(v1, 1, 1, v0[5]);
  sub_22953EAE4(v1, &qword_27D87EBB0, &qword_22A57C720);
  if (qword_27D87B998 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8AB7A8);
  swift_unknownObjectRetain();
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCDC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A5904A0, &v19);
    *(v7 + 12) = 2080;
    v9 = [v6 shortDescription];
    v10 = sub_22A4DD5EC();
    v12 = v11;

    v13 = sub_2295A3E30(v10, v12, &v19);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_229538000, v4, v5, "%s - accessory cannot be used to monitor presence: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v15 = v0[7];
  v14 = v0[8];
  v16 = v0[4];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2296A3034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a3;
  v36 = a7;
  v34 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v32 - v16;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = sub_22A4DD9DC();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = swift_allocObject();
  swift_weakInit();
  (*(v10 + 16))(v13, a1, v9);
  v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = v17;
  v22 = v9;
  v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v10 + 32))(v24 + v20, v13, v22);
  v25 = v34;
  *(v24 + v21) = v35;
  *(v24 + v23) = v19;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v25;

  v26 = sub_22957F3C0(0, 0, v33, v36, v24);
  swift_beginAccess();
  v27 = *(a2 + 232);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 232) = v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = sub_22958A8B4(0, v27[2] + 1, 1, v27);
    *(a2 + 232) = v27;
  }

  v30 = v27[2];
  v29 = v27[3];
  if (v30 >= v29 >> 1)
  {
    v27 = sub_22958A8B4((v29 > 1), v30 + 1, 1, v27);
  }

  v27[2] = v30 + 1;
  v27[v30 + 4] = v26;
  *(a2 + 232) = v27;
  return swift_endAccess();
}

uint64_t sub_2296A3380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v7 = sub_22A4DB21C();
  v6[21] = v7;
  v8 = *(v7 - 8);
  v6[22] = v8;
  v9 = *(v8 + 64) + 15;
  v6[23] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v11 = sub_22A4DDE4C();
  v6[25] = v11;
  v12 = *(v11 - 8);
  v6[26] = v12;
  v13 = *(v12 + 64) + 15;
  v6[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296A34D8, 0, 0);
}

uint64_t sub_2296A34D8()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  sub_22A4DD8FC();

  sub_22A4DDE3C();
  swift_beginAccess();
  v0[28] = @"HMDAccessoryKey";
  v5 = sub_2296A4D2C(&qword_27D87DBC0, 255, MEMORY[0x277CC9D68]);
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[29] = v7;
  *v7 = v0;
  v7[1] = sub_2296A361C;
  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[25];

  return MEMORY[0x282200308](v9, v10, v5);
}

uint64_t sub_2296A361C()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_2296A523C;
  }

  else
  {
    v3 = sub_2296A3730;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2296A374C()
{
  v31 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_10:
    v12 = *(v0 + 184);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    v13 = *(v0 + 8);

    return v13();
  }

  (*(v3 + 32))(*(v0 + 184), v1, v2);
  if (qword_27D87B998 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8AB7A8);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v30);
    _os_log_impl(&dword_229538000, v5, v6, "%s - Received accessory removed notification", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v9 = *(v0 + 160);
  Strong = swift_weakLoadStrong();
  *(v0 + 248) = Strong;
  if (!Strong)
  {
LABEL_9:
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    v11 = *(v0 + 192);
    goto LABEL_10;
  }

  if (sub_22A4DDAAC())
  {

    goto LABEL_9;
  }

  v15 = *(v0 + 184);
  v16 = sub_22A4DB20C();
  if (!v16)
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_24;
  }

  v17 = v16;
  v18 = *(v0 + 224);
  *(v0 + 112) = sub_22A4DD5EC();
  *(v0 + 120) = v19;
  sub_22A4DE18C();
  if (!*(v17 + 16) || (v20 = sub_2295402E8(v0 + 16), (v21 & 1) == 0))
  {

    sub_22954045C(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_22;
  }

  sub_2295404B0(*(v17 + 56) + 32 * v20, v0 + 56);
  sub_22954045C(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_22:
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

LABEL_24:
    sub_22953EAE4(v0 + 56, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA50, &qword_22A57CBC0);
  if (swift_dynamicCast())
  {
    v22 = *(v0 + 136);
    *(v0 + 256) = v22;
    v23 = swift_task_alloc();
    *(v0 + 264) = v23;
    *v23 = v0;
    v23[1] = sub_2296A3C14;

    return sub_2296A3F7C(v22);
  }

  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

LABEL_25:
  v24 = sub_2296A4D2C(&qword_27D87DBC0, 255, MEMORY[0x277CC9D68]);
  v25 = *(MEMORY[0x277D856D0] + 4);
  v26 = swift_task_alloc();
  *(v0 + 232) = v26;
  *v26 = v0;
  v26[1] = sub_2296A361C;
  v27 = *(v0 + 216);
  v28 = *(v0 + 192);
  v29 = *(v0 + 200);

  return MEMORY[0x282200308](v28, v29, v24);
}

uint64_t sub_2296A3C14()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2296A3D10, 0, 0);
}

uint64_t sub_2296A3D10()
{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];

  swift_unknownObjectRelease();
  (*(v4 + 8))(v3, v5);
  v6 = sub_2296A4D2C(&qword_27D87DBC0, 255, MEMORY[0x277CC9D68]);
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  v0[29] = v8;
  *v8 = v0;
  v8[1] = sub_2296A361C;
  v9 = v0[27];
  v10 = v0[24];
  v11 = v0[25];

  return MEMORY[0x282200308](v10, v11, v6);
}

uint64_t sub_2296A3E24(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_229586D38;

  return sub_2296A3380(a1, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_2296A3F7C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2296A3F9C, v1, 0);
}

uint64_t sub_2296A3F9C()
{
  v28 = v0;
  if ([*(v0[3] + 200) objectForKey_] && (v2 = v0[2], v1 = v0[3], , v3 = *(v1 + 216), v4 = objc_msgSend(v3, sel_objectForKey_, objc_msgSend(v2, sel_lpRoom)), swift_unknownObjectRelease(), v3, v4))
  {

    if (qword_27D87B998 != -1)
    {
      swift_once();
    }

    v5 = v0[2];
    v6 = sub_22A4DD07C();
    __swift_project_value_buffer(v6, qword_27D8AB7A8);
    swift_unknownObjectRetain();
    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCCC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[2];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v27 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_2295A3E30(0xD00000000000001ALL, 0x800000022A590460, &v27);
      *(v10 + 12) = 2080;
      v12 = [v9 shortDescription];
      v13 = sub_22A4DD5EC();
      v15 = v14;

      v16 = sub_2295A3E30(v13, v15, &v27);

      *(v10 + 14) = v16;
      _os_log_impl(&dword_229538000, v7, v8, "%s - %s removed from home. Removing from the presence map.", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v11, -1, -1);
      MEMORY[0x22AAD4E50](v10, -1, -1);
    }

    v17 = v0[3];
    v18 = v17[17];
    v19 = v17[18];
    __swift_project_boxed_opaque_existential_0(v17 + 14, v18);
    v20 = *(v19 + 32);
    v26 = (v20 + *v20);
    v21 = v20[1];
    v22 = swift_task_alloc();
    v0[4] = v22;
    *v22 = v0;
    v22[1] = sub_2296A4324;
    v23 = v0[2];

    return v26(v23, v18, v19);
  }

  else
  {
    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_2296A4324()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2296A4434, v2, 0);
}

uint64_t sub_2296A4434()
{
  v1 = v0[2];
  [*(v0[3] + 200) removeObjectForKey_];
  v2 = [v1 lpRoom];
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_2296A4500;
  v4 = v0[3];

  return sub_22969E378(v2);
}

uint64_t sub_2296A4500(char a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 72) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_2296A4634, v4, 0);
}

uint64_t sub_2296A4634()
{
  if (*(v0 + 72) == 1)
  {
    v1 = [*(v0 + 16) lpRoom];
    *(v0 + 56) = v1;
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_2296A4724;
    v3 = *(v0 + 24);

    return sub_22969E90C(v1);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2296A4724()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  swift_unknownObjectRelease();
  v3 = *(v5 + 8);

  return v3();
}

id sub_2296A4834(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + 216) keyEnumerator];
  v6 = &selRef_microLocationScanTriggerTypeForLogEventObserver_;
  if (![v5 nextObject])
  {
LABEL_12:

    return 0;
  }

  v7 = MEMORY[0x277D84F70];
  v21 = v5;
  while (1)
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    sub_229543C58(v23, v24);
    sub_2295404B0(v24, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881F00, &unk_22A57CB50);
    if (!swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v24);
      goto LABEL_4;
    }

    v8 = v7;
    v9 = v6;
    v10 = v22;
    v11 = [v22 name];
    v12 = a1;
    v13 = a2;
    v14 = sub_22A4DD5EC();
    v16 = v15;

    v17 = v14;
    a2 = v13;
    if (v17 == v12 && v16 == v13)
    {
      break;
    }

    a1 = v12;
    v19 = sub_22A4DE60C();

    __swift_destroy_boxed_opaque_existential_0(v24);
    v5 = v21;
    if (v19)
    {
      goto LABEL_14;
    }

    swift_unknownObjectRelease();
    v6 = v9;
    v7 = v8;
LABEL_4:
    if (![v5 v6[430]])
    {
      goto LABEL_12;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v24);
  v5 = v21;
LABEL_14:

  return v10;
}

uint64_t sub_2296A4A0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D190, &qword_22A5780C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296A4A7C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_229586D38;

  return sub_2296A170C(a1, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_2296A4BD4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_229586D38;

  return sub_22969FB70(a1, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_2296A4D2C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2296A4D74(uint64_t a1)
{
  v4 = *(sub_22A4DB7DC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229569B30;

  return sub_22969ADCC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2296A4E9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2296A4F04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2296A4F64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2296A4FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
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
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2296A5130(uint64_t a1, uint64_t a2, uint64_t a3)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EB38, &qword_22A57CE08);
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
  result = sub_22A4DE0EC();
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
    result = sub_22A4DE0EC();
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

uint64_t sub_2296A5240(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = _s13PresenceStateOMa();
      v5 = sub_22A4DD86C();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      sub_229696298(v3, v5 + v7);
      v8 = a2 - 1;
      if (a2 != 1)
      {
        v9 = *(v6 + 72);
        v10 = v5 + v9 + v7;
        do
        {
          sub_229696298(v3, v10);
          v10 += v9;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    sub_229696360(v3);
    return v5;
  }

  return result;
}

uint64_t sub_2296A5324()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D87EB40);
  __swift_project_value_buffer(v0, qword_27D87EB40);
  v1 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_2296A539C()
{
  v1 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_homeUUID;
  v2 = sub_22A4DB7DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_timerProvider));
  v3 = *(v0 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_dateProvider);
  swift_unknownObjectRelease();
  sub_22953EAE4(v0 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_timer, &qword_27D87EA00, &qword_22A579B80);
  v4 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_lastWriteDate;
  v5 = sub_22A4DB74C();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_pendingUpdatesByRoom);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t _s26DefaultRoomPresenceStorageCMa()
{
  result = qword_27D87EB90;
  if (!qword_27D87EB90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2296A5500()
{
  result = sub_22A4DB7DC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22A4DB74C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_2296A5608(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = sub_22A4DB74C();
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v7 = sub_22A4DB7DC();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v10 = _s13PresenceStateOMa();
  v3[33] = v10;
  v11 = *(v10 - 8);
  v3[34] = v11;
  v12 = *(v11 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E890, &qword_22A57C718);
  v3[39] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720);
  v3[41] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296A588C, v2, 0);
}

uint64_t sub_2296A588C()
{
  v167 = v0;
  v1 = v0[21];
  v2 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_pendingUpdatesByRoom;
  swift_beginAccess();
  v159 = v2;
  v162 = v1;
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v4 = v0[20];

    v5 = sub_2296DBEC0(v4);
    if (v6)
    {
      sub_229696298(*(v3 + 56) + *(v0[34] + 72) * v5, v0[46]);
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  v10 = v0[45];
  v9 = v0[46];
  v12 = v0[39];
  v11 = v0[40];
  v13 = v0[33];
  v14 = v0[34];
  v15 = v0[19];
  v16 = *(v14 + 56);
  v16(v9, v8, 1, v13);
  sub_229696298(v15, v10);
  v156 = v16;
  v16(v10, 0, 1, v13);
  v17 = *(v12 + 48);
  sub_229564F88(v9, v11, &qword_27D87EBB0, &qword_22A57C720);
  sub_229564F88(v10, v11 + v17, &qword_27D87EBB0, &qword_22A57C720);
  v18 = *(v14 + 48);
  if (v18(v11, 1, v13) == 1)
  {
    v19 = v0[46];
    v20 = v0[33];
    sub_22953EAE4(v0[45], &qword_27D87EBB0, &qword_22A57C720);
    sub_22953EAE4(v19, &qword_27D87EBB0, &qword_22A57C720);
    if (v18(v11 + v17, 1, v20) == 1)
    {
      sub_22953EAE4(v0[40], &qword_27D87EBB0, &qword_22A57C720);
LABEL_19:
      if (qword_27D87B9A0 != -1)
      {
        swift_once();
      }

      v59 = v0[35];
      v61 = v0[28];
      v60 = v0[29];
      v62 = v0[26];
      v63 = v0[27];
      v65 = v0[20];
      v64 = v0[21];
      v66 = v0[19];
      v67 = sub_22A4DD07C();
      __swift_project_value_buffer(v67, qword_27D87EB40);
      sub_229696298(v66, v59);
      v68 = *(v63 + 16);
      v68(v60, v65, v62);
      v68(v61, v65, v62);

      v69 = sub_22A4DD05C();
      v70 = sub_22A4DDCCC();

      v71 = os_log_type_enabled(v69, v70);
      v72 = v0[35];
      if (v71)
      {
        log = v69;
        v73 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v166 = v150;
        *v73 = 136315906;
        *(v73 + 4) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A590650, &v166);
        *(v73 + 12) = 2080;
        v74 = sub_229698D5C();
        v76 = v75;
        sub_229696360(v72);
        v77 = sub_2295A3E30(v74, v76, &v166);

        *(v73 + 14) = v77;
        *(v73 + 22) = 2080;
        v78 = *(v162 + v159);
        v152 = v70;
        if (*(v78 + 16))
        {
          v79 = v0[29];

          v80 = sub_2296DBEC0(v79);
          if (v81)
          {
            sub_229696298(*(v78 + 56) + *(v0[34] + 72) * v80, v0[42]);
            v82 = 0;
          }

          else
          {
            v82 = 1;
          }
        }

        else
        {
          v82 = 1;
        }

        v123 = v0[42];
        v124 = v0[28];
        v125 = v0[29];
        v127 = v0[26];
        v126 = v0[27];
        v156(v123, v82, 1, v0[33]);
        v128 = sub_22A4DBA6C();
        v130 = v129;
        sub_22953EAE4(v123, &qword_27D87EBB0, &qword_22A57C720);
        v131 = *(v126 + 8);
        v131(v125, v127);
        v132 = sub_2295A3E30(v128, v130, &v166);

        *(v73 + 24) = v132;
        *(v73 + 32) = 2080;
        sub_2296A99FC(&qword_281403860, MEMORY[0x277CC95F0]);
        v133 = sub_22A4DE5CC();
        v135 = v134;
        v131(v124, v127);
        v136 = sub_2295A3E30(v133, v135, &v166);

        *(v73 + 34) = v136;
        _os_log_impl(&dword_229538000, log, v152, "%s - Ignoring update %s since it matches pending update: %s for room: %s", v73, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v150, -1, -1);
        MEMORY[0x22AAD4E50](v73, -1, -1);
      }

      else
      {
        v116 = v0[28];
        v115 = v0[29];
        v118 = v0[26];
        v117 = v0[27];

        v119 = *(v117 + 8);
        v119(v116, v118);
        v119(v115, v118);
        sub_229696360(v72);
      }

      v165 = 0;
      goto LABEL_41;
    }

    goto LABEL_12;
  }

  v21 = v0[33];
  sub_229564F88(v0[40], v0[44], &qword_27D87EBB0, &qword_22A57C720);
  v22 = v18(v11 + v17, 1, v21);
  v24 = v0[45];
  v23 = v0[46];
  v25 = v0[44];
  if (v22 == 1)
  {
    sub_22953EAE4(v0[45], &qword_27D87EBB0, &qword_22A57C720);
    sub_22953EAE4(v23, &qword_27D87EBB0, &qword_22A57C720);
    sub_229696360(v25);
LABEL_12:
    sub_22953EAE4(v0[40], &qword_27D87E890, &qword_22A57C718);
    goto LABEL_13;
  }

  v56 = v0[40];
  v57 = v0[38];
  sub_2296986F8(v11 + v17, v57);
  v58 = sub_229698FEC(v25, v57);
  sub_229696360(v57);
  sub_22953EAE4(v24, &qword_27D87EBB0, &qword_22A57C720);
  sub_22953EAE4(v23, &qword_27D87EBB0, &qword_22A57C720);
  sub_229696360(v25);
  sub_22953EAE4(v56, &qword_27D87EBB0, &qword_22A57C720);
  if (v58)
  {
    goto LABEL_19;
  }

LABEL_13:
  v26 = v0[43];
  v28 = v0[32];
  v27 = v0[33];
  v29 = v0[21];
  v30 = v0[19];
  v31 = *(v0[27] + 16);
  v31(v28, v0[20], v0[26]);
  sub_229696298(v30, v26);
  v156(v26, 0, 1, v27);
  swift_beginAccess();
  sub_229891054(v26, v28);
  swift_endAccess();
  v32 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_timer;
  swift_beginAccess();
  sub_229564F88(v29 + v32, (v0 + 2), &qword_27D87EA00, &qword_22A579B80);
  v33 = v0[5];
  sub_22953EAE4((v0 + 2), &qword_27D87EA00, &qword_22A579B80);
  if (v33)
  {
    if (qword_27D87B9A0 != -1)
    {
      swift_once();
    }

    v34 = v0[36];
    v35 = v0[30];
    v36 = v0[26];
    v38 = v0[19];
    v37 = v0[20];
    v39 = sub_22A4DD07C();
    __swift_project_value_buffer(v39, qword_27D87EB40);
    sub_229696298(v38, v34);
    v31(v35, v37, v36);
    v40 = sub_22A4DD05C();
    v41 = sub_22A4DDCCC();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v0[36];
    v44 = v0[30];
    v46 = v0[26];
    v45 = v0[27];
    if (v42)
    {
      v47 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v166 = v163;
      *v47 = 136315650;
      *(v47 + 4) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A590650, &v166);
      *(v47 + 12) = 2080;
      v48 = sub_229698D5C();
      v50 = v49;
      sub_229696360(v43);
      v51 = sub_2295A3E30(v48, v50, &v166);

      *(v47 + 14) = v51;
      *(v47 + 22) = 2080;
      sub_2296A99FC(&qword_281403860, MEMORY[0x277CC95F0]);
      v52 = sub_22A4DE5CC();
      v54 = v53;
      (*(v45 + 8))(v44, v46);
      v55 = sub_2295A3E30(v52, v54, &v166);

      *(v47 + 24) = v55;
      _os_log_impl(&dword_229538000, v40, v41, "%s - Writing pending update %s for room %s on next timer fire", v47, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v163, -1, -1);
      MEMORY[0x22AAD4E50](v47, -1, -1);
    }

    else
    {

      (*(v45 + 8))(v44, v46);
      sub_229696360(v43);
    }
  }

  else
  {
    v83 = v0[24];
    v84 = v0[25];
    v85 = v0[22];
    v86 = v0[23];
    v87 = v0[21];
    v88 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_lastWriteDate;
    swift_beginAccess();
    (*(v86 + 16))(v83, v87 + v88, v85);
    sub_22A4DB6DC();
    v89 = *(v86 + 8);
    v89(v83, v85);
    v90 = [*(v87 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_dateProvider) now];
    sub_22A4DB70C();

    sub_22A4DB69C();
    v92 = v91;
    v164 = v89;
    v89(v83, v85);
    if (v92 < 0.0)
    {
      v92 = 1.0;
    }

    if (qword_27D87B9A0 != -1)
    {
      swift_once();
    }

    v93 = v0[37];
    v94 = v0[31];
    v95 = v0[26];
    v97 = v0[19];
    v96 = v0[20];
    v98 = sub_22A4DD07C();
    __swift_project_value_buffer(v98, qword_27D87EB40);
    sub_229696298(v97, v93);
    v31(v94, v96, v95);
    v99 = sub_22A4DD05C();
    v100 = sub_22A4DDCCC();
    v101 = os_log_type_enabled(v99, v100);
    v102 = v0[37];
    v103 = v0[31];
    v104 = v0[26];
    v105 = v0[27];
    if (v101)
    {
      v106 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v166 = v160;
      *v106 = 136315906;
      *(v106 + 4) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A590650, &v166);
      *(v106 + 12) = 2048;
      *(v106 + 14) = v92;
      *(v106 + 22) = 2080;
      v107 = sub_229698D5C();
      v109 = v108;
      sub_229696360(v102);
      v110 = sub_2295A3E30(v107, v109, &v166);

      *(v106 + 24) = v110;
      *(v106 + 32) = 2080;
      sub_2296A99FC(&qword_281403860, MEMORY[0x277CC95F0]);
      v111 = sub_22A4DE5CC();
      v113 = v112;
      (*(v105 + 8))(v103, v104);
      v114 = sub_2295A3E30(v111, v113, &v166);

      *(v106 + 34) = v114;
      _os_log_impl(&dword_229538000, v99, v100, "%s - Starting timer for %f seconds to write pending update %s for room %s", v106, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v160, -1, -1);
      MEMORY[0x22AAD4E50](v106, -1, -1);
    }

    else
    {

      (*(v105 + 8))(v103, v104);
      sub_229696360(v102);
    }

    v120 = v0[25];
    v121 = v0[21];
    v122 = v0[22];
    sub_2296A66C8();
    v164(v120, v122);
  }

  v165 = 1;
LABEL_41:
  v138 = v0[45];
  v137 = v0[46];
  v140 = v0[43];
  v139 = v0[44];
  v141 = v0[42];
  v142 = v0[40];
  v143 = v0[37];
  v144 = v0[38];
  v146 = v0[35];
  v145 = v0[36];
  v149 = v0[32];
  v151 = v0[31];
  v153 = v0[30];
  loga = v0[29];
  v157 = v0[28];
  v158 = v0[25];
  v161 = v0[24];

  v147 = v0[1];

  return v147(v165);
}

uint64_t sub_2296A66C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10[-v4];
  v6 = *(v0 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_timerProvider + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_timerProvider), *(v0 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_timerProvider + 24));
  sub_22A4DE88C();
  sub_22A4DD98C();
  v7 = sub_22A4DD9DC();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  swift_allocObject();
  swift_weakInit();
  v11[3] = swift_getAssociatedTypeWitness();
  v11[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v11);

  sub_22A4DBAFC();

  sub_22953EAE4(v5, &unk_27D87D8F0, &qword_22A578D70);

  v8 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_timer;
  swift_beginAccess();
  sub_22953ED1C(v11, v1 + v8);
  return swift_endAccess();
}

uint64_t sub_2296A68E8(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(_s13PresenceStateOMa() - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296A6978, v1, 0);
}

uint64_t sub_2296A6978()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_pendingUpdatesByRoom;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v0[9] = *(v2 + 112);
  v5 = swift_allocObject();
  v0[10] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;

  return MEMORY[0x2822009F8](sub_2296A6A3C, 0, 0);
}

uint64_t sub_2296A6A3C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = swift_task_alloc();
  v0[11] = v3;
  v3[2] = v2;
  v3[3] = sub_2296A71C8;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBA8, &qword_22A57CEF8);
  *v5 = v0;
  v5[1] = sub_2296A6B58;

  return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_2296A98F4, v3, v6);
}

uint64_t sub_2296A6B58()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2296A6CAC, 0, 0);
  }

  else
  {
    v4 = v3[10];
    v5 = v3[11];

    v6 = v3[5];
    v7 = v3[8];

    v8 = v3[1];

    return v8(v6);
  }
}

uint64_t sub_2296A6CAC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];

  return MEMORY[0x2822009F8](sub_2296A6D20, v3, 0);
}

uint64_t sub_2296A6D20()
{
  v27 = v0;
  if (qword_27D87B9A0 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[6];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D87EB40);

  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[13];
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_2295A3E30(0xD000000000000014, 0x800000022A590600, &v26);
    *(v9 + 12) = 2080;
    v12 = sub_22A4DB7DC();
    v13 = MEMORY[0x22AAD0A20](v8, v12);
    v15 = sub_2295A3E30(v13, v14, &v26);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2112;
    v16 = v7;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v17;
    *v10 = v17;
    _os_log_impl(&dword_229538000, v5, v6, "%s - Failed to get presence state for roomUUIDs: %s with error: %@", v9, 0x20u);
    sub_22953EAE4(v10, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  v18 = v0[13];
  v19 = v0[8];
  v20 = v0[6];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  (*(*(v21 - 8) + 56))(v19, 1, 2, v21);
  v22 = sub_2296A5240(v19, *(v20 + 16));

  v23 = v0[8];

  v24 = v0[1];

  return v24(v22);
}

uint64_t sub_2296A6FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v19 = a2;
  v5 = _s13PresenceStateOMa();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v18 = a3;
    v20 = MEMORY[0x277D84F90];
    sub_2295838DC(0, v11, 0);
    v12 = v20;
    v13 = *(sub_22A4DB7DC() - 8);
    v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v15 = *(v13 + 72);
    do
    {
      sub_2296A71E4(v14, v19, v10);
      v20 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2295838DC(v16 > 1, v17 + 1, 1);
        v12 = v20;
      }

      *(v12 + 16) = v17 + 1;
      result = sub_2296986F8(v10, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17);
      v14 += v15;
      --v11;
    }

    while (v11);
    a3 = v18;
  }

  *a3 = v12;
  return result;
}

uint64_t sub_2296A71E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v47[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v47[-v13];
  if (*(a2 + 16))
  {
    v15 = sub_2296DBEC0(a1);
    if (v16)
    {
      v17 = v15;
      v18 = a3;
      v19 = *(a2 + 56);
      v20 = _s13PresenceStateOMa();
      return sub_229696298(v19 + *(*(v20 - 8) + 72) * v17, v18);
    }
  }

  v22 = objc_opt_self();
  v23 = sub_22A4DB77C();
  v24 = [v22 findRoomWithModelID_];

  if (v24)
  {
    v25 = [v24 localPresence];
    if (v25)
    {
      sub_2296A77F0(v25, a3);
      return swift_unknownObjectRelease();
    }

    v50 = v3;
    if (qword_27D87B9A0 != -1)
    {
      swift_once();
    }

    v36 = sub_22A4DD07C();
    __swift_project_value_buffer(v36, qword_27D87EB40);
    (*(v8 + 16))(v14, a1, v7);
    v37 = sub_22A4DD05C();
    v38 = sub_22A4DDCCC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51 = v49;
      *v39 = 136315394;
      *(v39 + 4) = sub_2295A3E30(0xD000000000000014, 0x800000022A590600, &v51);
      *(v39 + 12) = 2080;
      sub_2296A99FC(&qword_281403860, MEMORY[0x277CC95F0]);
      v48 = v38;
      v40 = sub_22A4DE5CC();
      v41 = a3;
      v43 = v42;
      (*(v8 + 8))(v14, v7);
      v44 = sub_2295A3E30(v40, v43, &v51);
      a3 = v41;

      *(v39 + 14) = v44;
      _os_log_impl(&dword_229538000, v37, v48, "%s - MKFRoomPresence is not set for roomUUID: %s", v39, 0x16u);
      v45 = v49;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v45, -1, -1);
      MEMORY[0x22AAD4E50](v39, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v8 + 8))(v14, v7);
    }
  }

  else
  {
    if (qword_27D87B9A0 != -1)
    {
      swift_once();
    }

    v26 = sub_22A4DD07C();
    __swift_project_value_buffer(v26, qword_27D87EB40);
    (*(v8 + 16))(v12, a1, v7);
    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDCEC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = v3;
      v51 = v49;
      *v29 = 136315394;
      *(v29 + 4) = sub_2295A3E30(0xD000000000000014, 0x800000022A590600, &v51);
      *(v29 + 12) = 2080;
      sub_2296A99FC(&qword_281403860, MEMORY[0x277CC95F0]);
      v30 = a3;
      v31 = sub_22A4DE5CC();
      v33 = v32;
      (*(v8 + 8))(v12, v7);
      v34 = sub_2295A3E30(v31, v33, &v51);

      *(v29 + 14) = v34;
      a3 = v30;
      _os_log_impl(&dword_229538000, v27, v28, "%s - Cannot find MKFRoom with roomUUID: %s", v29, 0x16u);
      v35 = v49;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v35, -1, -1);
      MEMORY[0x22AAD4E50](v29, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v12, v7);
    }
  }

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  return (*(*(v46 - 8) + 56))(a3, 1, 2, v46);
}

uint64_t sub_2296A77F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22A4DB74C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v9 = [a1 state];
  if (!v9)
  {
LABEL_13:
    swift_unknownObjectRelease();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
    v13 = *(*(v30 - 8) + 56);
    v14 = v30;
    v15 = a2;
    v16 = 1;
    goto LABEL_14;
  }

  v10 = v9;
  v11 = [v9 unsignedIntegerValue];
  if (v11 == 1)
  {
    v17 = [a1 stateChangedTimestamp];
    if (v17)
    {
      v18 = v17;
      sub_22A4DB70C();

      swift_unknownObjectRelease();
      (*(v5 + 32))(a2, v8, v4);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
      return (*(*(v19 - 8) + 56))(a2, 0, 2, v19);
    }

    goto LABEL_13;
  }

  if (v11 == 2)
  {
    swift_unknownObjectRelease();

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
    v13 = *(*(v12 - 8) + 56);
    v14 = v12;
    v15 = a2;
    v16 = 2;
LABEL_14:

    return v13(v15, v16, 2, v14);
  }

  if (qword_27D87B9A0 != -1)
  {
    swift_once();
  }

  v21 = sub_22A4DD07C();
  __swift_project_value_buffer(v21, qword_27D87EB40);
  swift_unknownObjectRetain();
  v22 = sub_22A4DD05C();
  v23 = sub_22A4DDCEC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32 = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_2295A3E30(0x6F72662874696E69, 0xEB00000000293A6DLL, &v32);
    *(v24 + 12) = 2080;
    v31 = a1;
    swift_unknownObjectRetain();
    v26 = sub_22A4DD64C();
    v28 = sub_2295A3E30(v26, v27, &v32);

    *(v24 + 14) = v28;
    _os_log_impl(&dword_229538000, v22, v23, "%s - Invalid presenceState in MKFRoomPresence: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v25, -1, -1);
    MEMORY[0x22AAD4E50](v24, -1, -1);
  }

  swift_unknownObjectRelease();

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  return (*(*(v29 - 8) + 56))(a2, 1, 2, v29);
}

uint64_t sub_2296A7C44()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_2296A7D2C;

    return sub_2296A7E28();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2296A7D2C()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2295CA758, 0, 0);
}

uint64_t sub_2296A7E48()
{
  v18 = v0;
  *(v0 + 16) = 0u;
  v1 = *(v0 + 112);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v2 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_timer;
  swift_beginAccess();
  sub_22953ED1C(v0 + 16, v1 + v2);
  swift_endAccess();
  v3 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_pendingUpdatesByRoom;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = MEMORY[0x277D84F98];
  *(v0 + 120) = v4;
  *(v1 + v3) = v5;
  if (qword_27D87B9A0 != -1)
  {
    swift_once();
  }

  v6 = sub_22A4DD07C();
  __swift_project_value_buffer(v6, qword_27D87EB40);

  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_2295A3E30(0xD000000000000012, 0x800000022A590670, &v17);
    *(v9 + 12) = 2080;
    *(v0 + 104) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB8, &qword_22A57CF28);
    v11 = sub_22A4DBA6C();
    v13 = sub_2295A3E30(v11, v12, &v17);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_229538000, v7, v8, "%s - Debounce timer fired: saving pending updates: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v10, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  v14 = swift_task_alloc();
  *(v0 + 128) = v14;
  *v14 = v0;
  v14[1] = sub_2296A80E0;
  v15 = *(v0 + 112);

  return sub_2296A81F0(v4);
}

uint64_t sub_2296A80E0()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2296A81F0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_22A4DB74C();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296A82B0, v1, 0);
}

uint64_t sub_2296A82B0()
{
  v1 = v0[7];
  v2 = v0[8];
  v0[12] = *(v2 + 112);
  v3 = swift_allocObject();
  v0[13] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return MEMORY[0x2822009F8](sub_2296A8354, 0, 0);
}

uint64_t sub_2296A8354()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = swift_task_alloc();
  v0[14] = v3;
  v3[2] = v2;
  v3[3] = sub_2296A99E0;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_2296A845C;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_229586C80, v3, v6);
}

uint64_t sub_2296A845C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v10 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_2296A87F8;
    v5 = 0;
  }

  else
  {
    v6 = v2[13];
    v7 = v2[14];
    v8 = v2[8];

    v4 = sub_2296A858C;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_2296A858C()
{
  v21 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = [*(v4 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_dateProvider) now];
  sub_22A4DB70C();

  v6 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_lastWriteDate;
  swift_beginAccess();
  (*(v2 + 40))(v4 + v6, v1, v3);
  swift_endAccess();
  if (qword_27D87B9A0 != -1)
  {
    swift_once();
  }

  v7 = v0[7];
  v8 = sub_22A4DD07C();
  __swift_project_value_buffer(v8, qword_27D87EB40);

  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[7];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_2295A3E30(0xD000000000000016, 0x800000022A590690, &v20);
    *(v12 + 12) = 2080;
    v0[6] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB8, &qword_22A57CF28);
    v14 = sub_22A4DBA6C();
    v16 = sub_2295A3E30(v14, v15, &v20);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_229538000, v9, v10, "%s - Updated presence states: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  v17 = v0[11];

  v18 = v0[1];

  return v18();
}

uint64_t sub_2296A87F8()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[8];

  return MEMORY[0x2822009F8](sub_2296A886C, v3, 0);
}

uint64_t sub_2296A886C()
{
  v22 = v0;
  if (qword_27D87B9A0 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[7];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D87EB40);

  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[16];
  if (v7)
  {
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v10 = 136315650;
    *(v10 + 4) = sub_2295A3E30(0xD000000000000016, 0x800000022A590690, &v21);
    *(v10 + 12) = 2080;
    v0[5] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB8, &qword_22A57CF28);
    v13 = sub_22A4DBA6C();
    v15 = sub_2295A3E30(v13, v14, &v21);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v17;
    *v11 = v17;
    _os_log_impl(&dword_229538000, v5, v6, "%s - Failed to update presence state: %s with error: %@", v10, 0x20u);
    sub_22953EAE4(v11, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  else
  {
  }

  v18 = v0[11];

  v19 = v0[1];

  return v19();
}

uint64_t sub_2296A8AF0(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v3 = _s13PresenceStateOMa();
  v83 = *(v3 - 8);
  v4 = *(v83 + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v82 = &v72 - v8;
  v9 = sub_22A4DB7DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v78 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v72 - v15;
  MEMORY[0x28223BE20](v14);
  v86 = &v72 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EBC0, &qword_22A57CBA0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v89 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v72 - v22;
  v24 = *(a1 + 64);
  v80 = a1 + 64;
  v81 = v10;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v79 = (v25 + 63) >> 6;
  v88 = (v10 + 16);
  v92 = (v10 + 32);
  v90 = (v10 + 8);
  v75 = "handleTimerFired()";
  v84 = a1;

  v29 = 0;
  *&v30 = 136315394;
  v74 = v30;
  v87 = v7;
  v85 = v23;
  v94 = v16;
  while (v27)
  {
    v32 = v29;
LABEL_15:
    v36 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v37 = v36 | (v32 << 6);
    v38 = v84;
    v39 = v81;
    v40 = v86;
    (*(v81 + 16))(v86, *(v84 + 48) + *(v81 + 72) * v37, v9);
    v41 = v82;
    sub_229696298(*(v38 + 56) + *(v83 + 72) * v37, v82);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
    v43 = *(v42 + 48);
    v44 = *(v39 + 32);
    v35 = v89;
    v45 = v40;
    v46 = v9;
    v44(v89, v45, v9);
    sub_2296986F8(v41, v35 + v43);
    (*(*(v42 - 8) + 56))(v35, 0, 1, v42);
    v34 = v32;
    v7 = v87;
LABEL_16:
    v47 = v85;
    sub_229698818(v35, v85);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
    if ((*(*(v48 - 8) + 48))(v47, 1, v48) == 1)
    {

      v70 = *(v73 + 112);
      v71 = v91;
      result = sub_2297082C0();
      v91 = v71;
      return result;
    }

    v93 = v34;
    v49 = *(v48 + 48);
    (*v92)(v94, v47, v46);
    sub_2296986F8(v47 + v49, v7);
    v50 = objc_opt_self();
    v51 = sub_22A4DB77C();
    v52 = [v50 findRoomWithModelID_];

    if (v52)
    {
      if (![v52 localPresence])
      {
        v53 = v86;
        sub_22A4DB7CC();
        v54 = sub_22A4DB77C();
        (*v90)(v53, v46);
        v55 = [v52 materializeOrCreateLocalPresenceRelationWithModelID:v54 createdNew:0];
      }

      swift_getObjectType();
      v56 = v91;
      sub_2296A9398(v7);
      v91 = v56;
      if (v56)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        sub_229696360(v7);
        return (*v90)(v94, v46);
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_229696360(v7);
      v9 = v46;
      result = (*v90)(v94, v46);
    }

    else
    {
      v57 = v78;
      if (qword_27D87B9A0 != -1)
      {
        swift_once();
      }

      v58 = sub_22A4DD07C();
      __swift_project_value_buffer(v58, qword_27D87EB40);
      v59 = v94;
      v9 = v46;
      (*v88)(v57, v94, v46);
      v60 = sub_22A4DD05C();
      v61 = sub_22A4DDCEC();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v95 = v77;
        *v62 = v74;
        *(v62 + 4) = sub_2295A3E30(0xD000000000000016, v75 | 0x8000000000000000, &v95);
        *(v62 + 12) = 2080;
        sub_2296A99FC(&qword_281403860, MEMORY[0x277CC95F0]);
        v76 = v61;
        v63 = sub_22A4DE5CC();
        v65 = v64;
        v66 = *v90;
        (*v90)(v57, v46);
        v67 = sub_2295A3E30(v63, v65, &v95);

        *(v62 + 14) = v67;
        _os_log_impl(&dword_229538000, v60, v76, "%s - Cannot find MKFRoom with roomUUID: %s", v62, 0x16u);
        v68 = v77;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v68, -1, -1);
        MEMORY[0x22AAD4E50](v62, -1, -1);

        v7 = v87;
        sub_229696360(v87);
        result = (v66)(v94, v46);
      }

      else
      {

        v31 = *v90;
        (*v90)(v57, v46);
        v7 = v87;
        sub_229696360(v87);
        result = (v31)(v59, v46);
      }
    }

    v29 = v93;
  }

  if (v79 <= v29 + 1)
  {
    v33 = v29 + 1;
  }

  else
  {
    v33 = v79;
  }

  v34 = v33 - 1;
  v35 = v89;
  while (1)
  {
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v32 >= v79)
    {
      v46 = v9;
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
      (*(*(v69 - 8) + 56))(v35, 1, 1, v69);
      v27 = 0;
      goto LABEL_16;
    }

    v27 = *(v80 + 8 * v32);
    ++v29;
    if (v27)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

id sub_2296A9398(uint64_t a1)
{
  v47 = sub_22A4DB74C();
  v50 = *(v47 - 8);
  v3 = *(v50 + 64);
  v4 = MEMORY[0x28223BE20](v47);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v43 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  v12 = _s13PresenceStateOMa();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v43 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  v49 = a1;
  sub_229696298(a1, &v43 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v48 = *(*(v22 - 8) + 48);
  v23 = v48(v21, 2, v22);
  if (v23)
  {
    if (v23 == 1)
    {
      v24 = objc_opt_self();
      v25 = sub_22A4DD5AC();
      [v24 hmErrorWithCode:3 description:0 reason:v25 suggestion:0];

      return swift_willThrow();
    }

    else
    {
      sub_229696298(v49, v16);
      if (!v48(v16, 2, v22))
      {
        (*(v50 + 8))(v16, v47);
      }

      v38 = sub_22A4DDFDC();
      [v1 setState_];

      return [v1 setStateChangedTimestamp_];
    }
  }

  else
  {
    v44 = v9;
    v45 = v19;
    v27 = v47;
    v28 = *(v50 + 32);
    v46 = v11;
    v28(v11, v21, v47);
    v29 = v1;
    v30 = [v1 stateChangedTimestamp];
    if (v30)
    {
      v31 = v28;
      v32 = v30;
      sub_22A4DB70C();

      v33 = v44;
      v31(v44, v6, v27);
      v34 = [v29 state];
      if (v34)
      {
        v35 = v34;
        if ([v34 unsignedIntegerValue] == 1)
        {
          sub_2296A99FC(&unk_27D87EBD0, MEMORY[0x277CC9578]);
          v36 = sub_22A4DD53C();

          v37 = *(v50 + 8);
          v37(v33, v27);
          if (v36)
          {
            return (v37)(v46, v27);
          }
        }

        else
        {
          (*(v50 + 8))(v33, v27);
        }
      }

      else
      {
        (*(v50 + 8))(v33, v27);
      }
    }

    v39 = v45;
    sub_229696298(v49, v45);
    if (!v48(v39, 2, v22))
    {
      (*(v50 + 8))(v39, v27);
    }

    v40 = v46;
    v41 = sub_22A4DDFDC();
    [v29 setState_];

    v42 = sub_22A4DB6AC();
    [v29 setStateChangedTimestamp_];

    return (*(v50 + 8))(v40, v27);
  }
}

uint64_t sub_2296A9900()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_229569B30;

  return sub_2296A7C24(v0);
}

uint64_t objectdestroyTm_2(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_2296A99FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2296A9A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - v9;
  v11 = sub_22A4DD5EC();
  if (*(a1 + 16))
  {
    v13 = sub_229543DBC(v11, v12);
    v15 = v14;

    if (v15)
    {
      sub_2295404B0(*(a1 + 56) + 32 * v13, v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v16 = sub_22A4DB74C();
      v17 = swift_dynamicCast();
      (*(*(v16 - 8) + 56))(v10, v17 ^ 1u, 1, v16);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v18 = sub_22A4DB74C();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
LABEL_6:
  v19 = sub_22A4DD5EC();
  if (!*(a1 + 16))
  {

    goto LABEL_11;
  }

  v21 = sub_229543DBC(v19, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_2295404B0(*(a1 + 56) + 32 * v21, v30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v25 = 0;
    v24 = 1;
    goto LABEL_13;
  }

  v24 = 0;
  v25 = v29[1];
LABEL_13:
  sub_22966901C(v10, v8);
  v26 = sub_22A4DB74C();
  (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
  v27 = a2 + *(_s21MobileAssetUpdateInfoVMa() + 20);
  sub_2296690E8(v8, a2);
  *v27 = v25;
  *(v27 + 8) = v24;
  return sub_2296224D4(v10);
}

unint64_t sub_2296A9D18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A5761A0;
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 40) = v3;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_22966901C(v1, boxed_opaque_existential_1);
  *(inited + 80) = sub_22A4DD5EC();
  *(inited + 88) = v5;
  v6 = v1 + *(_s21MobileAssetUpdateInfoVMa() + 20);
  v7 = *v6;
  v8 = *(v6 + 8);
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EBE0, &qword_22A57CF58);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  *(inited + 96) = v9;
  *(inited + 104) = v8;
  v10 = sub_22956AC5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
  swift_arrayDestroy();
  return v10;
}

uint64_t _s21MobileAssetUpdateInfoVMa()
{
  result = qword_2814026B8;
  if (!qword_2814026B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2296A9EC0()
{
  sub_2296A9F44();
  if (v0 <= 0x3F)
  {
    sub_2296A9F9C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2296A9F44()
{
  if (!qword_281403888)
  {
    sub_22A4DB74C();
    v0 = sub_22A4DDF9C();
    if (!v1)
    {
      atomic_store(v0, &qword_281403888);
    }
  }
}

void sub_2296A9F9C()
{
  if (!qword_281402630[0])
  {
    v0 = sub_22A4DDF9C();
    if (!v1)
    {
      atomic_store(v0, qword_281402630);
    }
  }
}

uint64_t sub_2296A9FEC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EC78, &qword_22A57CFB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v51 - v8;
  v10 = sub_22A4DD07C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  if ([a1 response])
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v53 = v2;
      v54 = v6;
      v55 = v5;
      v56 = v10;
      v19 = v18;
      v20 = [v18 tracklist];
      v21 = [v20 shuffleType];

      v22 = mapToHMMediaShuffleState(v21);
      v23 = [v19 tracklist];
      v24 = [v23 repeatType];

      v25 = mapToHMMediaShuffleState(v24);
      v26 = [v19 tracklist];
      v27 = [v26 uniqueIdentifier];

      v28 = sub_22A4DD5EC();
      v30 = v29;

      LOBYTE(v57) = 1;
      *&v61 = 0;
      *(&v61 + 1) = v22;
      v62 = v25;
      *v63 = 0;
      v63[4] = 1;
      *&v63[8] = v28;
      *&v63[16] = v30;
      v64[0] = 0;
      v64[1] = v22;
      v64[2] = v25;
      v64[3] = 0;
      v65 = 0;
      v66 = 1;
      v67 = v28;
      v68 = v30;
      sub_2295F59D4(&v61, v59);
      sub_229588CF8(v64);
      sub_229541CB0(ObjectType, &off_283CDFBF8);
      sub_2295F59D4(&v61, v59);
      v31 = sub_22A4DD05C();
      v32 = sub_22A4DDCCC();
      sub_229588CF8(&v61);
      if (!os_log_type_enabled(v31, v32))
      {
LABEL_29:

        (*(v11 + 8))(v17, v56);
        v49 = v55;
        v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EC80, &qword_22A57CFC0) + 28);
        v59[0] = v61;
        v59[1] = v62;
        v59[2] = *v63;
        v60 = *&v63[16];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EC88, &qword_22A57CFC8);
        sub_22A4DDA0C();
        swift_unknownObjectRelease();
        return (*(v54 + 8))(v9, v49);
      }

      v33 = 0x6E776F6E6B6E55;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v58 = v35;
      *v34 = 136315650;
      v52 = v35;
      if (*(&v61 + 1) > 1)
      {
        if (*(&v61 + 1) != 2)
        {
          if (*(&v61 + 1) == 3)
          {
            v36 = 0xEB00000000736E6FLL;
            v37 = 0x697463656C6C6F43;
            goto LABEL_18;
          }

          goto LABEL_15;
        }

        v36 = 0xE500000000000000;
        v37 = 0x736D657449;
      }

      else
      {
        if (*(&v61 + 1))
        {
          if (*(&v61 + 1) == 1)
          {
            v36 = 0xE300000000000000;
            v37 = 6710863;
            goto LABEL_18;
          }

LABEL_15:
          v36 = 0xE700000000000000;
          v37 = 0x746C7561666564;
          goto LABEL_18;
        }

        v36 = 0xE700000000000000;
        v37 = 0x6E776F6E6B6E55;
      }

LABEL_18:
      v42 = sub_2295A3E30(v37, v36, &v58);

      *(v34 + 4) = v42;
      *(v34 + 12) = 2080;
      if (v62 > 1)
      {
        if (v62 == 2)
        {
          v43 = 0xE300000000000000;
          v33 = 6647375;
          goto LABEL_28;
        }

        if (v62 == 3)
        {
          v43 = 0xE300000000000000;
          v33 = 7105601;
          goto LABEL_28;
        }
      }

      else
      {
        if (!v62)
        {
          v43 = 0xE700000000000000;
          goto LABEL_28;
        }

        if (v62 == 1)
        {
          v43 = 0xE300000000000000;
          v33 = 6710863;
LABEL_28:
          v44 = sub_2295A3E30(v33, v43, &v58);

          *(v34 + 14) = v44;
          *(v34 + 22) = 2080;
          v57 = *&v63[8];
          sub_2295F59D4(&v61, v59);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EC90, &unk_22A57CFD0);
          v45 = sub_22A4DD64C();
          v47 = sub_2295A3E30(v45, v46, &v58);

          *(v34 + 24) = v47;
          _os_log_impl(&dword_229538000, v31, v32, "didFinishLoadingRequest     shuffleState: %s     repeatState: %s     mediaUniqueIdentifier: %s", v34, 0x20u);
          v48 = v52;
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v48, -1, -1);
          MEMORY[0x22AAD4E50](v34, -1, -1);
          goto LABEL_29;
        }
      }

      v43 = 0xE700000000000000;
      v33 = 0x746C7561666564;
      goto LABEL_28;
    }

    swift_unknownObjectRelease();
  }

  sub_229541CB0(ObjectType, &off_283CDFBF8);
  v38 = sub_22A4DD05C();
  v39 = sub_22A4DDCEC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_229538000, v38, v39, "nil controller.response", v40, 2u);
    MEMORY[0x22AAD4E50](v40, -1, -1);
  }

  return (*(v11 + 8))(v15, v10);
}

uint64_t _s17MediaPlaybackCoreCMa()
{
  result = qword_27D87EC60;
  if (!qword_27D87EC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2296AA7F4()
{
  sub_2296791B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2296AA8F4()
{
  sub_22A4DC29C();
  if (v0 <= 0x3F)
  {
    sub_2296B2580(319, &qword_281401CE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2296AA9E4()
{
  sub_22A4DC29C();
  if (v0 <= 0x3F)
  {
    sub_2296B2580(319, &qword_281401CE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2296B2580(319, &qword_27D87ECC0, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2296AAAD4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent(0);
  sub_2296AF1D0(v1 + *(v7 + 20), v6);
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22967B128(v6, a1);
  }

  sub_22A4DC28C();
  v10 = *(v8 + 20);
  if (qword_27D87B910 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_27D87DF28;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_22953EAE4(v6, &qword_27D87CC38, &unk_22A5784B0);
  }

  return result;
}

uint64_t sub_2296AAC58@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent(0);
  sub_2296AF1D0(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22967B128(v6, a1);
  }

  sub_22A4DC28C();
  v10 = *(v8 + 20);
  if (qword_27D87B910 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_27D87DF28;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_22953EAE4(v6, &qword_27D87CC38, &unk_22A5784B0);
  }

  return result;
}

uint64_t sub_2296AADDC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0);
  sub_2296AF1D0(v1 + *(v7 + 32), v6);
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22967B128(v6, a1);
  }

  sub_22A4DC28C();
  v10 = *(v8 + 20);
  if (qword_27D87B910 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_27D87DF28;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_22953EAE4(v6, &qword_27D87CC38, &unk_22A5784B0);
  }

  return result;
}

uint64_t sub_2296AAF60()
{
  v1 = (v0 + *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0) + 40));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2296AAFB4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent(0);
  sub_2296AF1D0(v1 + *(v7 + 28), v6);
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22967B128(v6, a1);
  }

  sub_22A4DC28C();
  v10 = *(v8 + 20);
  if (qword_27D87B910 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_27D87DF28;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_22953EAE4(v6, &qword_27D87CC38, &unk_22A5784B0);
  }

  return result;
}

uint64_t sub_2296AB138()
{
  v1 = (v0 + *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2296AB18C()
{
  v0 = sub_22A4DC47C();
  __swift_allocate_value_buffer(v0, qword_27D8AB7C8);
  __swift_project_value_buffer(v0, qword_27D8AB7C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E068, &qword_22A57B0E0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E070, &qword_22A57B0E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22A5779B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "metadata";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22A4DC45C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "modified_characteristics";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "associated_services";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "source";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v9();
  return sub_22A4DC46C();
}

uint64_t sub_2296AB3EC()
{
  result = sub_22A4DC2CC();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService(0);
          sub_2296AEAF8(&qword_27D87ED18, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);
          goto LABEL_15;
        }

        if (result == 4)
        {
          v4 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent(0) + 32);
          sub_22A4DC33C();
        }
      }

      else
      {
        if (result == 1)
        {
          sub_2296AB584();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0);
          sub_2296AEAF8(&qword_27D87ED30, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);
LABEL_15:
          v0 = v3;
          sub_22A4DC35C();
        }
      }

LABEL_5:
      result = sub_22A4DC2CC();
    }
  }

  return result;
}

uint64_t sub_2296AB584()
{
  v0 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent(0) + 28);
  type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  sub_2296AEAF8(&qword_27D87E030, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  return sub_22A4DC36C();
}

uint64_t sub_2296AB638()
{
  v2 = v0;
  result = sub_2296AB7C8(v0);
  if (!v1)
  {
    v4 = *v0;
    if (*(*v2 + 16))
    {
      type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0);
      sub_2296AEAF8(&qword_27D87ED30, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);
      sub_22A4DC43C();
    }

    if (*(v2[1] + 16))
    {
      type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService(0);
      sub_2296AEAF8(&qword_27D87ED18, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);
      sub_22A4DC43C();
    }

    sub_2296AB9BC(v2);
    v5 = v2 + *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent(0) + 24);
    return sub_22A4DC27C();
  }

  return result;
}

uint64_t sub_2296AB7C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent(0);
  sub_2296AF1D0(a1 + *(v11 + 28), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_22953EAE4(v5, &qword_27D87CC38, &unk_22A5784B0);
  }

  sub_22967B128(v5, v10);
  sub_2296AEAF8(&qword_27D87E030, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  sub_22A4DC44C();
  return sub_2296B1D60(v10, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
}

uint64_t sub_2296AB9BC(uint64_t a1)
{
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22A4DC41C();
  }

  return result;
}

uint64_t sub_2296ABA34@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v4;
  v5 = &a2[a1[6]];
  sub_22A4DC28C();
  v6 = a1[7];
  v7 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  result = (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v9 = &a2[a1[8]];
  *v9 = 0;
  v9[4] = 1;
  return result;
}

uint64_t sub_2296ABAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_22A4DC29C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2296ABB60(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_22A4DC29C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2296ABBD4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_2296ABC28(uint64_t a1, uint64_t a2)
{
  v4 = sub_2296AEAF8(&qword_27D87ED80, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2296ABCC8(uint64_t a1)
{
  v2 = sub_2296AEAF8(&qword_27D87ED48, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2296ABD34()
{
  sub_2296AEAF8(&qword_27D87ED48, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent);

  return sub_22A4DC39C();
}

uint64_t sub_2296ABDB4()
{
  v0 = sub_22A4DC47C();
  __swift_allocate_value_buffer(v0, qword_27D8AB7E0);
  __swift_project_value_buffer(v0, qword_27D8AB7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E068, &qword_22A57B0E0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E070, &qword_22A57B0E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22A5779B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "characteristic_type";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22A4DC45C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "last_known_value";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "last_known_value_update_time";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "previous_value";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_22A4DC46C();
}

uint64_t sub_2296ABFFC()
{
  while (1)
  {
    result = sub_22A4DC2CC();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        v1 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0) + 28);
        goto LABEL_3;
      }

      if (result == 4)
      {
        v5 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0) + 32);
LABEL_13:
        v0 = 0;
        sub_22A4DC2FC();
      }
    }

    else if (result == 1)
    {
      v6 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0) + 20);
LABEL_3:
      v0 = 0;
      sub_22A4DC32C();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0) + 24);
      goto LABEL_13;
    }
  }
}

uint64_t sub_2296AC0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2296AC7B0(v3, a1, a2, a3, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);
  if (!v4)
  {
    sub_2296AC1B0(v3);
    sub_2296AC228(v3);
    sub_2296AC2A0(v3);
    return sub_22A4DC27C();
  }

  return result;
}

uint64_t sub_2296AC1B0(uint64_t a1)
{
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22A4DC3DC();
  }

  return result;
}

uint64_t sub_2296AC228(uint64_t a1)
{
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0);
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22A4DC40C();
  }

  return result;
}

uint64_t sub_2296AC2A0(uint64_t a1)
{
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22A4DC3DC();
  }

  return result;
}

uint64_t sub_2296AC318@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22A4DC28C();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t sub_2296AC3C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2296AEAF8(&qword_27D87ED70, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2296AC460(uint64_t a1)
{
  v2 = sub_2296AEAF8(&qword_27D87ED30, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2296AC4CC()
{
  sub_2296AEAF8(&qword_27D87ED30, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);

  return sub_22A4DC39C();
}

uint64_t sub_2296AC54C()
{
  v0 = sub_22A4DC47C();
  __swift_allocate_value_buffer(v0, qword_27D8AB7F8);
  __swift_project_value_buffer(v0, qword_27D8AB7F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E068, &qword_22A57B0E0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E070, &qword_22A57B0E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22A576180;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "service_type";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_22A4DC45C();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_22A4DC46C();
}

uint64_t sub_2296AC6B8()
{
  while (1)
  {
    result = sub_22A4DC2CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService(0) + 20);
      sub_22A4DC32C();
    }
  }

  return result;
}

uint64_t sub_2296AC744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2296AC7B0(v3, a1, a2, a3, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);
  if (!v4)
  {
    return sub_22A4DC27C();
  }

  return result;
}

uint64_t sub_2296AC7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 20));
  if (v7[1])
  {
    v8 = *v7;
    return sub_22A4DC40C();
  }

  return result;
}

uint64_t sub_2296AC82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22A4DC28C();
  v5 = (a2 + *(a1 + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_2296AC8AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2296AEAF8(&qword_27D87ED78, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2296AC94C(uint64_t a1)
{
  v2 = sub_2296AEAF8(&qword_27D87ED18, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2296AC9B8()
{
  sub_2296AEAF8(&qword_27D87ED18, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);

  return sub_22A4DC39C();
}

uint64_t sub_2296ACA38()
{
  v0 = sub_22A4DC47C();
  __swift_allocate_value_buffer(v0, qword_27D8AB810);
  __swift_project_value_buffer(v0, qword_27D8AB810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E068, &qword_22A57B0E0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E070, &qword_22A57B0E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22A5761A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "metadata";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22A4DC45C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "home_activity_state";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  return sub_22A4DC46C();
}

uint64_t sub_2296ACC08()
{
  while (1)
  {
    result = sub_22A4DC2CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2296ACCB4();
    }

    else if (result == 2)
    {
      v3 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent(0) + 24);
      sub_22A4DC33C();
    }
  }

  return result;
}

uint64_t sub_2296ACCB4()
{
  v0 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent(0) + 20);
  type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  sub_2296AEAF8(&qword_27D87E030, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  return sub_22A4DC36C();
}

uint64_t sub_2296ACD68()
{
  result = sub_2296ACDD8(v0);
  if (!v1)
  {
    sub_2296ACFCC(v0);
    return sub_22A4DC27C();
  }

  return result;
}

uint64_t sub_2296ACDD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent(0);
  sub_2296AF1D0(a1 + *(v11 + 20), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_22953EAE4(v5, &qword_27D87CC38, &unk_22A5784B0);
  }

  sub_22967B128(v5, v10);
  sub_2296AEAF8(&qword_27D87E030, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  sub_22A4DC44C();
  return sub_2296B1D60(v10, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
}

uint64_t sub_2296ACFCC(uint64_t a1)
{
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22A4DC41C();
  }

  return result;
}

uint64_t sub_2296AD044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22A4DC28C();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a2 + *(a1 + 24);
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_2296AD118(uint64_t a1, uint64_t a2)
{
  v4 = sub_2296AEAF8(&qword_27D87ED90, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2296AD1B8(uint64_t a1)
{
  v2 = sub_2296AEAF8(&qword_27D87CC10, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2296AD224()
{
  sub_2296AEAF8(&qword_27D87CC10, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent);

  return sub_22A4DC39C();
}

uint64_t sub_2296AD2A4()
{
  v0 = sub_22A4DC47C();
  __swift_allocate_value_buffer(v0, qword_27D8AB828);
  __swift_project_value_buffer(v0, qword_27D8AB828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E068, &qword_22A57B0E0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E070, &qword_22A57B0E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22A5761B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "metadata";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22A4DC45C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "media_accessory_state";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v12 = "media_group_uuids";
  *(v12 + 8) = 17;
  *(v12 + 16) = 2;
  v9();
  return sub_22A4DC46C();
}

uint64_t sub_2296AD4C4()
{
  while (1)
  {
    result = sub_22A4DC2CC();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_22A4DC30C();
        break;
      case 2:
        v1 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent(0) + 28);
        sub_22A4DC33C();
        break;
      case 1:
        sub_2296AD590();
        break;
    }
  }

  return result;
}

uint64_t sub_2296AD590()
{
  v0 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent(0) + 24);
  type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  sub_2296AEAF8(&qword_27D87E030, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  return sub_22A4DC36C();
}

uint64_t sub_2296AD644()
{
  result = sub_2296AD6FC(v0);
  if (!v1)
  {
    sub_2296AD8F0(v0);
    if (*(*v0 + 16))
    {
      sub_22A4DC3EC();
    }

    v3 = v0 + *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent(0) + 20);
    return sub_22A4DC27C();
  }

  return result;
}

uint64_t sub_2296AD6FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent(0);
  sub_2296AF1D0(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_22953EAE4(v5, &qword_27D87CC38, &unk_22A5784B0);
  }

  sub_22967B128(v5, v10);
  sub_2296AEAF8(&qword_27D87E030, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  sub_22A4DC44C();
  return sub_2296B1D60(v10, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
}

uint64_t sub_2296AD8F0(uint64_t a1)
{
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22A4DC41C();
  }

  return result;
}

uint64_t sub_2296AD968@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = &a2[a1[5]];
  sub_22A4DC28C();
  v5 = a1[6];
  v6 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  result = (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v8 = &a2[a1[7]];
  *v8 = 0;
  v8[4] = 1;
  return result;
}

uint64_t sub_2296ADA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_22A4DC29C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2296ADA94(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_22A4DC29C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2296ADB08(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_2296ADB5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2296AEAF8(&qword_27D87ED98, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2296ADBFC(uint64_t a1)
{
  v2 = sub_2296AEAF8(&qword_27D87D308, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2296ADC68()
{
  sub_2296AEAF8(&qword_27D87D308, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent);

  return sub_22A4DC39C();
}

uint64_t sub_2296ADCE8()
{
  v0 = sub_22A4DC47C();
  __swift_allocate_value_buffer(v0, qword_27D8AB840);
  __swift_project_value_buffer(v0, qword_27D8AB840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E068, &qword_22A57B0E0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E070, &qword_22A57B0E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22A57CFE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "metadata";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22A4DC45C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "request_identifier";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "prediction_timestamp";
  *(v13 + 1) = 20;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "confidence_reasons";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "place_identifiers";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "place_scores";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "confidence";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v9();
  return sub_22A4DC46C();
}