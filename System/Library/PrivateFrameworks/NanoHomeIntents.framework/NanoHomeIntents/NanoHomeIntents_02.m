char *sub_25B1349DC(void *a1, void (*a2)(uint64_t), uint64_t (*a3)(void))
{
  v91 = a3;
  v5 = sub_25B161414();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_25B161514();
  v88 = *(v7 - 8);
  v89 = v7;
  v8 = v88[8];
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v78 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E08, &qword_25B1637D8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v78 - v16;
  v18 = sub_25B1616A4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v95 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = (&v78 - v24);
  a2(v23);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_25B11D9B8(v17);
    return 0;
  }

  else
  {
    v27 = *(v19 + 32);
    v93 = v18;
    v27(v25, v17, v18);
    v28 = sub_25B161684();
    v94 = v29;
    v30 = v91();
    v91 = v25;
    v92 = v19;
    if (v30)
    {
      v31 = v30;

      v84 = HMService.iconSymbol.getter();
      v94 = v32;
    }

    else
    {
      v84 = v28;
    }

    v33 = v87;
    v34 = [v87 uniqueIdentifier];
    sub_25B161504();

    v90 = sub_25B1614F4();
    v86 = v35;
    v36 = v89;
    v37 = v88[1];
    v37(v13, v89);
    v38 = [v33 name];
    v39 = sub_25B161B34();
    v82 = v39;
    v88 = v40;

    v41 = [a1 uniqueIdentifier];
    sub_25B161504();

    v83 = sub_25B1614F4();
    v87 = v42;
    v37(v11, v36);
    v43 = [a1 name];
    v89 = sub_25B161B34();
    v85 = v44;

    (*(v92 + 16))(v95, v91, v93);
    v45 = [objc_allocWithZone(type metadata accessor for NHOAccessoryIntent()) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
    v46 = v45;
    v47 = v86;
    sub_25B161264();
    v48 = v88;
    sub_25B161264();
    sub_25B1613E4();
    v49 = sub_25B161124();
    sub_25B1613E4();
    v50 = sub_25B161124();
    v96 = v90;
    v97 = v47;
    sub_25B161104();
    v96 = v39;
    v97 = v48;
    sub_25B161104();
    v51 = *&v46[OBJC_IVAR___NHOAccessoryIntent__home];
    v96 = v49;
    v97 = v50;
    sub_25B161274();
    sub_25B161154();

    v52 = v87;
    sub_25B161264();
    v53 = v85;
    sub_25B161264();
    v54 = v94;
    sub_25B161264();
    v55 = sub_25B161694();
    v80 = v56;
    v81 = v55;
    sub_25B1613E4();
    v79 = sub_25B161124();
    sub_25B1613E4();
    v57 = sub_25B161124();
    sub_25B1613E4();
    v58 = sub_25B161124();
    sub_25B1613E4();
    v59 = sub_25B161124();
    sub_25B1613E4();
    v60 = sub_25B161124();
    v61 = v83;
    v96 = v83;
    v97 = v52;
    v62 = v79;
    sub_25B161104();
    v96 = v89;
    v97 = v53;
    sub_25B161104();
    v63 = v84;
    v96 = v84;
    v97 = v54;
    sub_25B161104();
    v96 = 0;
    v97 = 0xE000000000000000;
    sub_25B161104();
    v96 = v81;
    v97 = v80;
    sub_25B161104();
    v64 = *&v46[OBJC_IVAR___NHOAccessoryIntent__accessoriesAndScenes];
    v96 = v62;
    v97 = v57;
    v98 = v58;
    v99 = v59;
    v100 = v60;
    sub_25B161274();
    sub_25B161154();

    v65 = *&v46[OBJC_IVAR___NHOAccessoryIntent__homeID];
    v96 = v90;
    v97 = v86;
    sub_25B161274();
    sub_25B161154();

    v66 = *&v46[OBJC_IVAR___NHOAccessoryIntent__homeName];
    v96 = v82;
    v97 = v88;
    sub_25B161274();
    sub_25B161154();

    v67 = *&v46[OBJC_IVAR___NHOAccessoryIntent__accessoryID];
    v96 = v61;
    v97 = v87;
    sub_25B161274();
    sub_25B161154();

    v68 = *&v46[OBJC_IVAR___NHOAccessoryIntent__accessoryName];
    v96 = v89;
    v97 = v85;
    sub_25B161274();
    sub_25B161154();

    v69 = *&v46[OBJC_IVAR___NHOAccessoryIntent__icon];
    v96 = v63;
    v97 = v54;
    sub_25B161274();
    sub_25B161154();

    v70 = v95;
    v71 = sub_25B161694();
    v72 = *&v46[OBJC_IVAR___NHOAccessoryIntent__serviceType];
    v96 = v71;
    v97 = v73;
    sub_25B161274();
    sub_25B161154();

    v74 = *&v46[OBJC_IVAR___NHOAccessoryIntent__useHomeKitRecommendations];
    LOBYTE(v96) = 0;
    sub_25B161274();
    sub_25B161154();

    v75 = *(v92 + 8);
    v76 = v70;
    v77 = v93;
    v75(v76, v93);
    v75(v91, v77);
    return v46;
  }
}

Swift::Bool __swiftcall HMHome.isCurrentRestrictedGuestAwayFromHome()()
{
  v1 = [v0 currentUser];
  v2 = [v0 homeAccessControlForUser_];

  v3 = [v2 isRestrictedGuest];
  if (v3)
  {
    v3 = [v0 homeLocationStatus] == 2;
  }

  if (qword_27FA39AE8 != -1)
  {
    swift_once();
  }

  v4 = sub_25B161A14();
  __swift_project_value_buffer(v4, qword_27FA3A040);
  v5 = v0;
  v6 = sub_25B1619F4();
  v7 = sub_25B161D94();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315906;
    *(v8 + 4) = sub_25B108480(0xD000000000000026, 0x800000025B1670F0, &v21);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v3;
    *(v8 + 18) = 2080;
    v10 = [v5 name];
    v11 = sub_25B161B34();
    v13 = v12;

    v14 = sub_25B108480(v11, v13, &v21);

    *(v8 + 20) = v14;
    *(v8 + 28) = 2080;
    [v5 homeLocationStatus];
    v15 = HMStringFromHomeLocation();
    v16 = sub_25B161B34();
    v18 = v17;

    v19 = sub_25B108480(v16, v18, &v21);

    *(v8 + 30) = v19;
    _os_log_impl(&dword_25B105000, v6, v7, "%s: result = %{BOOL}d, home: %s, location status %s", v8, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v9, -1, -1);
    MEMORY[0x25F862BF0](v8, -1, -1);
  }

  return v3;
}

Swift::Bool __swiftcall HMHome.hasEnabledResident()()
{
  v1 = HFForceRemoteAccessStateAvailable();
  v2 = [v0 residentDevices];
  sub_25B132284(0, &qword_27FA3A478, 0x277CD1D68);
  v3 = sub_25B161C64();

  if (v3 >> 62)
  {
LABEL_15:
    v4 = sub_25B161E54();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x25F862410](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 hf_isEnabled];

    ++v5;
    if (v8)
    {
      v1 = 1;
      break;
    }
  }

  return v1;
}

Swift::Bool __swiftcall HMHome.hasEnabledAndReachableResident()()
{
  LOBYTE(v1) = HFForceRemoteAccessStateAvailable();
  v2 = [v0 residentDevices];
  sub_25B132284(0, &qword_27FA3A478, 0x277CD1D68);
  v3 = sub_25B161C64();

  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B161E54())
  {
    v10 = v1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x25F862410](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v1 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v6 hf_isEnabled])
      {
        v8 = [v7 status];

        if (v8)
        {
          LOBYTE(v1) = 1;
          goto LABEL_15;
        }
      }

      else
      {
      }

      ++v5;
      if (v1 == i)
      {
        LOBYTE(v1) = v10;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_15:

  return v1;
}

uint64_t sub_25B1356E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_25B132284(0, &qword_27FA39E58, 0x277CD1D90);
  return sub_25B161DC4() & 1;
}

uint64_t sub_25B135748(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 72) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v4 = sub_25B161514();
  *(v3 + 40) = v4;
  v5 = *(v4 - 8);
  *(v3 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v7 = *(MEMORY[0x277D859E0] + 4);
  v8 = swift_task_alloc();
  *(v3 + 64) = v8;
  v9 = sub_25B132284(0, &qword_27FA3A370, 0x277CD1A90);
  *v8 = v3;
  v8[1] = sub_25B13589C;

  return MEMORY[0x2822007B8](v3 + 16, 0, 0, 0x616E614D656D6F68, 0xEB00000000726567, sub_25B1314F0, 0, v9);
}

uint64_t sub_25B13589C()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25B135998, 0, 0);
}

uint64_t sub_25B135998()
{
  v64 = v0;
  v1 = v0;
  v2 = v0[4];
  v3 = v0[2];
  v55 = v1;
  if (v2)
  {
    v4 = [v3 homes];
    sub_25B132284(0, &qword_27FA3A480, 0x277CD1A60);
    v5 = sub_25B161C64();

    v63 = MEMORY[0x277D84F90];
    if (v5 >> 62)
    {
      goto LABEL_30;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v3; v6; i = v3)
    {
      v7 = 0;
      v60 = v5 & 0xFFFFFFFFFFFFFF8;
      v61 = v5 & 0xC000000000000001;
      v56 = v2;
      v57 = (v1[6] + 8);
      v58 = v6;
      v59 = v5;
      while (1)
      {
        if (v61)
        {
          v9 = MEMORY[0x25F862410](v7, v5);
        }

        else
        {
          if (v7 >= *(v60 + 16))
          {
            goto LABEL_29;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v12 = v1[7];
        v2 = v1[4];
        v13 = v1[5];
        v3 = v1;
        v14 = v1[3];
        v15 = [v9 uniqueIdentifier];
        sub_25B161504();

        v16 = sub_25B1614F4();
        v18 = v17;
        (*v57)(v12, v13);
        if (v16 == v14 && v2 == v18)
        {

          v1 = v3;
        }

        else
        {
          v1 = v3;
          v19 = v3[3];
          v20 = sub_25B161FA4();

          if ((v20 & 1) == 0)
          {

            goto LABEL_7;
          }
        }

        sub_25B161EE4();
        v8 = *(v63 + 16);
        sub_25B161F04();
        sub_25B161F14();
        sub_25B161EF4();
LABEL_7:
        v5 = v59;
        ++v7;
        if (v11 == v58)
        {
          v21 = v63;
          v3 = i;
          v2 = v56;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v6 = sub_25B161E54();
    }

    v21 = MEMORY[0x277D84F90];
LABEL_32:

    if (v21 < 0 || (v21 & 0x4000000000000000) != 0)
    {
      if (sub_25B161E54())
      {
        goto LABEL_35;
      }
    }

    else if (*(v21 + 16))
    {
LABEL_35:
      if ((v21 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x25F862410](0, v21);
        goto LABEL_38;
      }

      if (*(v21 + 16))
      {
        v34 = *(v21 + 32);
LABEL_38:
        v35 = v34;

        if (qword_27FA39AE8 != -1)
        {
          swift_once();
        }

        v36 = sub_25B161A14();
        __swift_project_value_buffer(v36, qword_27FA3A040);
        v27 = v35;
        sub_25B161264();
        v37 = sub_25B1619F4();
        v38 = sub_25B161D94();

        if (os_log_type_enabled(v37, v38))
        {
          v62 = v55[3];
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v63 = v40;
          *v39 = 136315650;
          *(v39 + 4) = sub_25B108480(0xD000000000000023, 0x800000025B167120, &v63);
          *(v39 + 12) = 2080;
          v41 = [v27 name];
          v42 = sub_25B161B34();
          v44 = v43;

          v45 = sub_25B108480(v42, v44, &v63);

          *(v39 + 14) = v45;
          *(v39 + 22) = 2080;
          *(v39 + 24) = sub_25B108480(v62, v2, &v63);
          _os_log_impl(&dword_25B105000, v37, v38, "%s: home %s found for homeID: %s", v39, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x25F862BF0](v40, -1, -1);
          MEMORY[0x25F862BF0](v39, -1, -1);
        }

        else
        {
        }

        goto LABEL_49;
      }

      __break(1u);
      goto LABEL_54;
    }

    if (qword_27FA39AE8 == -1)
    {
LABEL_45:
      v46 = sub_25B161A14();
      __swift_project_value_buffer(v46, qword_27FA3A040);
      sub_25B161264();
      v29 = sub_25B1619F4();
      v47 = sub_25B161D94();

      if (!os_log_type_enabled(v29, v47))
      {
LABEL_48:

        v27 = 0;
        goto LABEL_49;
      }

      v48 = v1[3];
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v63 = v50;
      *v49 = 136315394;
      *(v49 + 4) = sub_25B108480(0xD000000000000023, 0x800000025B167120, &v63);
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_25B108480(v48, v2, &v63);
      _os_log_impl(&dword_25B105000, v29, v47, "%s: home with ID %s not found, returning no home", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v50, -1, -1);
      v33 = v49;
LABEL_47:
      MEMORY[0x25F862BF0](v33, -1, -1);
      goto LABEL_48;
    }

LABEL_54:
    swift_once();
    goto LABEL_45;
  }

  if (*(v1 + 72) != 1)
  {
    if (qword_27FA39AE8 != -1)
    {
      swift_once();
    }

    v28 = sub_25B161A14();
    __swift_project_value_buffer(v28, qword_27FA3A040);
    v29 = sub_25B1619F4();
    v30 = sub_25B161D94();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_48;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v63 = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_25B108480(0xD000000000000023, 0x800000025B167120, &v63);
    _os_log_impl(&dword_25B105000, v29, v30, "%s: no homeID, returning no home", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x25F862BF0](v32, -1, -1);
    v33 = v31;
    goto LABEL_47;
  }

  if (qword_27FA39AE8 != -1)
  {
    swift_once();
  }

  v22 = sub_25B161A14();
  __swift_project_value_buffer(v22, qword_27FA3A040);
  v23 = sub_25B1619F4();
  v24 = sub_25B161D94();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v63 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_25B108480(0xD000000000000023, 0x800000025B167120, &v63);
    _os_log_impl(&dword_25B105000, v23, v24, "%s: no homeID, returning manager.currentHome", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x25F862BF0](v26, -1, -1);
    MEMORY[0x25F862BF0](v25, -1, -1);
  }

  v27 = [v3 currentHome];
LABEL_49:
  v51 = v55[7];

  v52 = v55[1];

  return v52(v27);
}

uint64_t sub_25B136244(uint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v4 = *(v3 + 16);
  v5 = *a1;
  v6 = *v4;
  sub_25B132284(0, a2, a3);
  return sub_25B161DC4() & 1;
}

uint64_t NHOHomeEntity.id.getter()
{
  v1 = *v0;
  sub_25B1610F4();
  return v3;
}

uint64_t NHOHomeEntity.name.getter()
{
  v1 = *(v0 + 8);
  sub_25B1610F4();
  return v3;
}

uint64_t NHOHomeQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C30, &qword_25B162FF0);
  swift_getKeyPath();
  swift_getKeyPath();
  *a1 = sub_25B161314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A2C0, &qword_25B1643F0);
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = sub_25B161314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A4C8, &qword_25B164C00);
  swift_getKeyPath();
  a1[2] = sub_25B161324();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A4D0, &qword_25B164C30);
  swift_getKeyPath();
  swift_getKeyPath();
  a1[3] = sub_25B161314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A4D8, &qword_25B164C88);
  swift_getKeyPath();
  swift_getKeyPath();
  result = sub_25B161314();
  a1[4] = result;
  return result;
}

uint64_t static NHOHomeEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FA39B48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FA3A488 + 1);
  v3 = qword_27FA3A498;
  v4 = unk_27FA3A4A0;
  v5 = qword_27FA3A4A8;
  *a1 = xmmword_27FA3A488;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  return sub_25B161274();
}

uint64_t static NHOHomeEntity.defaultQuery.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v1 = *(a1 + 32);
  if (qword_27FA39B48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27FA3A488 = v4;
  *&qword_27FA3A498 = v3;
  qword_27FA3A4A8 = v1;
}

uint64_t (*static NHOHomeEntity.defaultQuery.modify())()
{
  if (qword_27FA39B48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_25B13669C@<X0>(void *a1@<X8>)
{
  if (qword_27FA39B48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FA3A488 + 1);
  v3 = qword_27FA3A498;
  v4 = unk_27FA3A4A0;
  v5 = qword_27FA3A4A8;
  *a1 = xmmword_27FA3A488;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  return sub_25B161274();
}

uint64_t sub_25B13675C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = qword_27FA39B48;
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  if (v6 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&xmmword_27FA3A488 = v1;
  *(&xmmword_27FA3A488 + 1) = v2;
  qword_27FA3A498 = v3;
  unk_27FA3A4A0 = v4;
  qword_27FA3A4A8 = v5;
}

uint64_t sub_25B13685C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v18[0] = v18 - v2;
  v3 = sub_25B161584();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_25B1613F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25B161B14();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_25B161414();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_25B161354();
  __swift_allocate_value_buffer(v15, qword_27FA3A4B0);
  __swift_project_value_buffer(v15, qword_27FA3A4B0);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_27FA3E770);
  (*(v6 + 16))(v9, v16, v5);
  sub_25B161574();
  sub_25B161424();
  (*(v13 + 56))(v18[0], 1, 1, v12);
  return sub_25B161344();
}

uint64_t static NHOHomeEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B50 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A4B0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static NHOHomeEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27FA39B50 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A4B0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static NHOHomeEntity.typeDisplayRepresentation.modify())()
{
  if (qword_27FA39B50 != -1)
  {
    swift_once();
  }

  v0 = sub_25B161354();
  __swift_project_value_buffer(v0, qword_27FA3A4B0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25B136DD4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B50 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A4B0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25B136E94(uint64_t a1)
{
  if (qword_27FA39B50 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A4B0);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_25B136F5C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  sub_25B161264();
  sub_25B161274();
  sub_25B161274();
  sub_25B161104();
}

uint64_t (*NHOHomeEntity.id.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_25B1610E4();
  return sub_25B10BAFC;
}

uint64_t sub_25B137084(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  sub_25B161264();
  sub_25B161274();
  sub_25B161274();
  sub_25B161104();
}

uint64_t (*NHOHomeEntity.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_25B1610E4();
  return sub_25B11B3F4;
}

uint64_t NHOHomeEntity.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C48, &qword_25B163148);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_25B161414();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = sub_25B161B04();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = *(v0 + 8);
  sub_25B161AF4();
  sub_25B161AE4();
  sub_25B1610F4();
  sub_25B161AD4();

  sub_25B161AE4();
  sub_25B161404();
  (*(v10 + 56))(v8, 1, 1, v9);
  sub_25B161214();
  v15 = sub_25B161224();
  (*(*(v15 - 8) + 56))(v4, 0, 1, v15);
  return sub_25B161234();
}

uint64_t sub_25B137440(uint64_t a1)
{
  v2 = sub_25B120304();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25B137490(uint64_t a1)
{
  v2 = sub_25B13AA40();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t NHOHomeQuery.defaultResult()(uint64_t a1)
{
  *(v2 + 352) = a1;
  v3 = sub_25B161514();
  *(v2 + 360) = v3;
  v4 = *(v3 - 8);
  *(v2 + 368) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 376) = swift_task_alloc();
  v6 = sub_25B1615E4();
  *(v2 + 384) = v6;
  v7 = *(v6 - 8);
  *(v2 + 392) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 400) = swift_task_alloc();
  v9 = *(*(sub_25B161414() - 8) + 64) + 15;
  *(v2 + 408) = swift_task_alloc();
  v10 = *(v1 + 16);
  *(v2 + 416) = *v1;
  *(v2 + 432) = v10;
  *(v2 + 448) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_25B137634, 0, 0);
}

uint64_t sub_25B137634()
{
  v1 = v0[52];
  if (sub_25B1612E4())
  {
    v2 = v0[52];
    swift_getKeyPath();
    sub_25B114F98();
    sub_25B1611B4();

    v4 = v0[36];
    v3 = v0[37];
    if (sub_25B1612E4())
    {
      swift_getKeyPath();
      sub_25B1611B4();

      v6 = v0[38];
      v5 = v0[39];
      if ((sub_25B161BF4() & 1) == 0)
      {
        v13 = v0[51];
        v14 = v0[44];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
        sub_25B1613E4();
        v15 = sub_25B161124();
        sub_25B1613E4();
        v16 = sub_25B161124();
        v0[40] = v4;
        v0[41] = v3;
        sub_25B161104();
        v0[42] = v6;
        v0[43] = v5;
LABEL_22:
        sub_25B161104();
        *v14 = v15;
        v14[1] = v16;
        v37 = v0[50];
        v36 = v0[51];
        v38 = v0[47];

        v39 = v0[1];

        return v39();
      }
    }
  }

  v7 = v0[53];
  if (sub_25B1612E4())
  {
    v8 = v0[53];
    swift_getKeyPath();
    sub_25B114F98();
    sub_25B1611B4();

    v10 = v0[28];
    v9 = v0[29];
    if (sub_25B1612E4())
    {
      swift_getKeyPath();
      sub_25B1611B4();

      v12 = v0[30];
      v11 = v0[31];
      if ((sub_25B161BF4() & 1) == 0)
      {
        v28 = v0[51];
        v14 = v0[44];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
        sub_25B1613E4();
        v15 = sub_25B161124();
        sub_25B1613E4();
        v16 = sub_25B161124();
        v0[32] = v10;
        v0[33] = v9;
        sub_25B161104();
        v0[34] = v12;
        v0[35] = v11;
        goto LABEL_22;
      }
    }
  }

  v17 = v0[54];
  if (sub_25B1612E4())
  {
    v18 = v0[51];
    v14 = v0[44];
    swift_getKeyPath();
    sub_25B13A280();
    sub_25B1611B4();

    v19 = v0[22];
    v20 = v0[23];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
    sub_25B1613E4();
    v15 = sub_25B161124();
    sub_25B1613E4();
    v16 = sub_25B161124();
    v0[24] = v19;
    v0[25] = v20;
    sub_25B161104();
    v0[26] = 0;
    v0[27] = 0xE000000000000000;
    goto LABEL_22;
  }

  v21 = v0[55];
  if (sub_25B1612E4())
  {
    v22 = v0[55];
    swift_getKeyPath();
    sub_25B13A280();
    sub_25B1611B4();

    v24 = v0[14];
    v23 = v0[15];
    if (sub_25B1612E4())
    {
      v25 = v0[51];
      v14 = v0[44];
      swift_getKeyPath();
      sub_25B1611B4();

      v26 = v0[16];
      v27 = v0[17];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
      sub_25B1613E4();
      v15 = sub_25B161124();
      sub_25B1613E4();
      v16 = sub_25B161124();
      v0[18] = v24;
      v0[19] = v23;
      sub_25B161104();
      v0[20] = v26;
      v0[21] = v27;
      goto LABEL_22;
    }
  }

  v29 = v0[56];
  if (sub_25B1612E4())
  {
    v30 = v0[56];
    swift_getKeyPath();
    sub_25B13A280();
    sub_25B1611B4();

    v32 = v0[6];
    v31 = v0[7];
    if (sub_25B1612E4())
    {
      v33 = v0[51];
      v14 = v0[44];
      swift_getKeyPath();
      sub_25B1611B4();

      v34 = v0[8];
      v35 = v0[9];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
      sub_25B1613E4();
      v15 = sub_25B161124();
      sub_25B1613E4();
      v16 = sub_25B161124();
      v0[10] = v32;
      v0[11] = v31;
      sub_25B161104();
      v0[12] = v34;
      v0[13] = v35;
      goto LABEL_22;
    }
  }

  v0[57] = sub_25B161624();
  sub_25B1616C4();
  v0[58] = sub_25B1616B4();
  sub_25B13A180();
  v42 = sub_25B161CC4();

  return MEMORY[0x2822009F8](sub_25B137CB8, v42, v41);
}

uint64_t sub_25B137CB8()
{
  v2 = v0[57];
  v1 = v0[58];

  v0[59] = sub_25B161614();
  v3 = *(MEMORY[0x277D15210] + 4);
  v4 = swift_task_alloc();
  v0[60] = v4;
  *v4 = v0;
  v4[1] = sub_25B137D5C;

  return MEMORY[0x28216E6B8]();
}

uint64_t sub_25B137D5C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 480);
  v7 = *v2;
  *(v3 + 488) = a1;
  *(v3 + 496) = v1;

  if (v1)
  {
    v5 = sub_25B138050;
  }

  else
  {
    v5 = sub_25B137E70;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25B137E70()
{
  v1 = v0[61];
  v2 = v0[59];

  if (*(v1 + 16))
  {
    v3 = v0[50];
    v4 = v0[48];
    v5 = v0[49];
    v7 = v0[46];
    v6 = v0[47];
    v8 = v0[45];
    v24 = v4;
    v25 = v0[44];
    (*(v5 + 16))(v3, v0[61] + ((*(v5 + 80) + 32) & ~*(v5 + 80)));

    sub_25B1615C4();
    v9 = sub_25B1614F4();
    v11 = v10;
    (*(v7 + 8))(v6, v8);
    v12 = sub_25B1615D4();
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
    sub_25B1613E4();
    v15 = sub_25B161124();
    sub_25B1613E4();
    v16 = sub_25B161124();
    v0[2] = v9;
    v0[3] = v11;
    sub_25B161104();
    v0[4] = v12;
    v0[5] = v14;
    sub_25B161104();
    (*(v5 + 8))(v3, v24);
    *v25 = v15;
    v25[1] = v16;
  }

  else
  {
    v17 = v0[61];
    v18 = v0[44];

    *v18 = 0;
    v18[1] = 0;
  }

  v20 = v0[50];
  v19 = v0[51];
  v21 = v0[47];

  v22 = v0[1];

  return v22();
}

uint64_t sub_25B138050()
{
  v25 = v0;
  v1 = v0[59];

  if (qword_27FA39B00 != -1)
  {
    swift_once();
  }

  v2 = v0[62];
  v3 = sub_25B161A14();
  __swift_project_value_buffer(v3, qword_27FA3A088);
  v4 = v2;
  v5 = sub_25B1619F4();
  v6 = sub_25B161D84();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[62];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_25B108480(0x52746C7561666564, 0xEF2928746C757365, &v24);
    *(v9 + 12) = 2112;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_25B105000, v5, v6, "%s Error getting default home from WidgetDataModel: %@", v9, 0x16u);
    sub_25B13A1D8(v10);
    MEMORY[0x25F862BF0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x25F862BF0](v11, -1, -1);
    MEMORY[0x25F862BF0](v9, -1, -1);
  }

  else
  {
  }

  v14 = sub_25B1619F4();
  v15 = sub_25B161D94();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_25B108480(0x52746C7561666564, 0xEF2928746C757365, &v24);
    _os_log_impl(&dword_25B105000, v14, v15, "%s returning nil", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x25F862BF0](v17, -1, -1);
    MEMORY[0x25F862BF0](v16, -1, -1);
  }

  v18 = v0[44];
  *v18 = 0;
  v18[1] = 0;
  v20 = v0[50];
  v19 = v0[51];
  v21 = v0[47];

  v22 = v0[1];

  return v22();
}

uint64_t NHOHomeQuery.entities(for:)(uint64_t a1)
{
  v1[8] = a1;
  v2 = *(*(sub_25B161414() - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v3 = sub_25B161514();
  v1[10] = v3;
  v4 = *(v3 - 8);
  v1[11] = v4;
  v5 = *(v4 + 64) + 15;
  v1[12] = swift_task_alloc();
  v6 = sub_25B1615E4();
  v1[13] = v6;
  v7 = *(v6 - 8);
  v1[14] = v7;
  v8 = *(v7 + 64) + 15;
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B138544, 0, 0);
}

uint64_t sub_25B138544()
{
  *(v0 + 128) = sub_25B161624();
  sub_25B1616C4();
  *(v0 + 136) = sub_25B1616B4();
  sub_25B13A180();
  v2 = sub_25B161CC4();

  return MEMORY[0x2822009F8](sub_25B1385E4, v2, v1);
}

uint64_t sub_25B1385E4()
{
  v2 = v0[16];
  v1 = v0[17];

  v0[18] = sub_25B161614();
  v3 = *(MEMORY[0x277D15210] + 4);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_25B138688;

  return MEMORY[0x28216E6B8]();
}

uint64_t sub_25B138688(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v7 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v5 = sub_25B138DE0;
  }

  else
  {
    v5 = sub_25B13879C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25B13879C()
{
  v65 = v0;
  v1 = v0[18];

  v2 = 0x27FA39000uLL;
  if (qword_27FA39B00 != -1)
  {
    swift_once();
  }

  v3 = v0[20];
  v4 = v0[8];
  v5 = sub_25B161A14();
  __swift_project_value_buffer(v5, qword_27FA3A088);
  sub_25B161264();
  sub_25B161264();
  v6 = sub_25B1619F4();
  v7 = sub_25B161D94();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[20];
  if (v8)
  {
    v10 = v0[8];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v64[0] = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, v64);
    *(v11 + 12) = 2048;
    *(v11 + 14) = *(v9 + 16);

    *(v11 + 22) = 2080;
    v13 = MEMORY[0x25F8621C0](v10, MEMORY[0x277D837D0]);
    v15 = sub_25B108480(v13, v14, v64);

    *(v11 + 24) = v15;
    _os_log_impl(&dword_25B105000, v6, v7, "%s: [NHOHomeQuery] Found %ld homes. Searching for homes matching identifiers %s.", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v12, -1, -1);
    MEMORY[0x25F862BF0](v11, -1, -1);
  }

  else
  {
    v16 = v0[20];
  }

  v17 = v0[20];
  v18 = *(v17 + 16);
  if (v18)
  {
    v56 = v5;
    v19 = v0[14];
    v60 = *(v19 + 16);
    v20 = v17 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v21 = (v0[11] + 8);
    v58 = (v19 + 8);
    v59 = *(v19 + 72);
    v63 = v0[21];
    v22 = MEMORY[0x277D84F90];
    do
    {
      v61 = v18;
      v62 = v22;
      v23 = v0[12];
      v24 = v0[10];
      v25 = v0[8];
      v60(v0[15], v20, v0[13]);
      sub_25B1615C4();
      v26 = sub_25B1614F4();
      v28 = v27;
      v29 = *v21;
      (*v21)(v23, v24);
      v0[2] = v26;
      v0[3] = v28;
      v30 = swift_task_alloc();
      *(v30 + 16) = v0 + 2;
      LOBYTE(v25) = sub_25B12EF38(sub_25B13A808, v30, v25);

      v31 = v0[15];
      if (v25)
      {
        v32 = v0[12];
        v34 = v0[9];
        v33 = v0[10];
        v35 = v0[15];
        sub_25B1615C4();
        v57 = sub_25B1614F4();
        v37 = v36;
        v29(v32, v33);
        v38 = sub_25B1615D4();
        v40 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
        sub_25B1613E4();
        v41 = sub_25B161124();
        sub_25B1613E4();
        v42 = sub_25B161124();
        v0[4] = v57;
        v0[5] = v37;
        sub_25B161104();
        v0[6] = v38;
        v0[7] = v40;
        sub_25B161104();
        v22 = v62;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_25B115720(0, *(v62 + 2) + 1, 1, v62);
        }

        v44 = *(v22 + 2);
        v43 = *(v22 + 3);
        if (v44 >= v43 >> 1)
        {
          v22 = sub_25B115720((v43 > 1), v44 + 1, 1, v22);
        }

        (*v58)(v0[15], v0[13]);
        *(v22 + 2) = v44 + 1;
        v45 = &v22[16 * v44];
        *(v45 + 4) = v41;
        *(v45 + 5) = v42;
      }

      else
      {
        (*v58)(v0[15], v0[13]);
        v22 = v62;
      }

      v20 += v59;
      v18 = v61 - 1;
    }

    while (v61 != 1);
    v46 = v0[20];

    v2 = 0x27FA39000;
    v5 = v56;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  if (*(v2 + 2816) != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v5, qword_27FA3A088);
  sub_25B161264();
  v47 = sub_25B1619F4();
  v48 = sub_25B161D94();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v64[0] = v50;
    *v49 = 136315394;
    *(v49 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, v64);
    *(v49 + 12) = 2048;
    *(v49 + 14) = *(v22 + 2);

    _os_log_impl(&dword_25B105000, v47, v48, "%s: [NHOHomeQuery] Returning %ld homes.", v49, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x25F862BF0](v50, -1, -1);
    MEMORY[0x25F862BF0](v49, -1, -1);
  }

  else
  {
  }

  v51 = v0[15];
  v52 = v0[12];
  v53 = v0[9];

  v54 = v0[1];

  return v54(v22);
}

uint64_t sub_25B138DE0()
{
  v29 = v0;
  v1 = v0[18];

  v2 = 0x27FA39000uLL;
  if (qword_27FA39B00 != -1)
  {
    swift_once();
  }

  v3 = v0[21];
  v4 = sub_25B161A14();
  __swift_project_value_buffer(v4, qword_27FA3A088);
  v5 = v3;
  v6 = sub_25B1619F4();
  v7 = sub_25B161D94();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[21];
  v10 = &loc_25B162000;
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, &v28);
    *(v11 + 12) = 2112;
    v14 = v9;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_25B105000, v6, v7, "%s: [NHOHomeQuery] Error getting ordered homes: %@", v11, 0x16u);
    sub_25B13A1D8(v12);
    v10 = &loc_25B162000;
    MEMORY[0x25F862BF0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x25F862BF0](v13, -1, -1);
    v16 = v11;
    v2 = 0x27FA39000;
    MEMORY[0x25F862BF0](v16, -1, -1);
  }

  else
  {
  }

  if (*(v2 + 2816) != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_27FA3A088);
  v17 = MEMORY[0x277D84F90];
  sub_25B161264();
  v18 = sub_25B1619F4();
  v19 = sub_25B161D94();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = v10[507];
    *(v20 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, &v28);
    *(v20 + 12) = 2048;
    *(v20 + 14) = *(v17 + 16);

    _os_log_impl(&dword_25B105000, v18, v19, "%s: [NHOHomeQuery] Returning %ld homes.", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x25F862BF0](v21, -1, -1);
    MEMORY[0x25F862BF0](v20, -1, -1);
  }

  else
  {
  }

  v22 = v0[15];
  v23 = v0[12];
  v24 = v0[9];

  v25 = v0[1];
  v26 = MEMORY[0x277D84F90];

  return v25(v26);
}

uint64_t NHOHomeQuery.suggestedEntities()(uint64_t a1)
{
  v1[6] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v3 = sub_25B161514();
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v5 = *(v4 + 64) + 15;
  v1[10] = swift_task_alloc();
  v6 = sub_25B1615E4();
  v1[11] = v6;
  v7 = *(v6 - 8);
  v1[12] = v7;
  v8 = *(v7 + 64) + 15;
  v1[13] = swift_task_alloc();
  v9 = sub_25B161414();
  v1[14] = v9;
  v10 = *(v9 - 8);
  v1[15] = v10;
  v11 = *(v10 + 64) + 15;
  v1[16] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39D90, &qword_25B163778);
  v1[17] = v12;
  v13 = *(v12 - 8);
  v1[18] = v13;
  v14 = *(v13 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B139390, 0, 0);
}

uint64_t sub_25B139390()
{
  *(v0 + 168) = sub_25B161624();
  sub_25B1616C4();
  *(v0 + 176) = sub_25B1616B4();
  sub_25B13A180();
  v2 = sub_25B161CC4();

  return MEMORY[0x2822009F8](sub_25B139430, v2, v1);
}

uint64_t sub_25B139430()
{
  v2 = v0[21];
  v1 = v0[22];

  v0[23] = sub_25B161614();
  v3 = *(MEMORY[0x277D15210] + 4);
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_25B1394D4;

  return MEMORY[0x28216E6B8]();
}

uint64_t sub_25B1394D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v7 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v5 = sub_25B139B5C;
  }

  else
  {
    v5 = sub_25B1395E8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25B1395E8()
{
  v64 = v0;
  v1 = v0[23];

  if (qword_27FA39B00 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v3 = sub_25B161A14();
  __swift_project_value_buffer(v3, qword_27FA3A088);
  sub_25B161264();
  v4 = sub_25B1619F4();
  v5 = sub_25B161D94();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[25];
  v62 = v0;
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v63 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, &v63);
    *(v8 + 12) = 2048;
    *(v8 + 14) = *(v7 + 16);

    _os_log_impl(&dword_25B105000, v4, v5, "%s: [NHOHomeQuery] Found %ld homes.", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x25F862BF0](v9, -1, -1);
    MEMORY[0x25F862BF0](v8, -1, -1);
  }

  else
  {
  }

  v10 = v0[25];
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v0[12];
    v13 = v0[9];
    v63 = MEMORY[0x277D84F90];
    sub_25B13A504(0, v11, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
    v14 = v63;
    v15 = *(v12 + 16);
    v12 += 16;
    v59 = v15;
    v16 = v10 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v57 = (v13 + 8);
    v58 = *(v12 + 56);
    v56 = (v12 - 8);
    do
    {
      v60 = v11;
      v61 = v14;
      v17 = v0[16];
      v18 = v0[13];
      v20 = v0[10];
      v19 = v0[11];
      v21 = v0[8];
      v59(v18, v16, v19);
      sub_25B1615C4();
      v22 = sub_25B1614F4();
      v24 = v23;
      (*v57)(v20, v21);
      v25 = sub_25B1615D4();
      v27 = v26;
      sub_25B1613E4();
      v28 = sub_25B161124();
      sub_25B1613E4();
      v29 = sub_25B161124();
      v62[2] = v22;
      v62[3] = v24;
      sub_25B161104();
      v62[4] = v25;
      v62[5] = v27;
      v0 = v62;
      sub_25B161104();
      v30 = v19;
      v14 = v61;
      (*v56)(v18, v30);
      v63 = v61;
      v32 = *(v61 + 16);
      v31 = *(v61 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_25B13A504((v31 > 1), v32 + 1, 1);
        v14 = v63;
      }

      *(v14 + 16) = v32 + 1;
      v33 = v14 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v29;
      v16 += v58;
      v11 = v60 - 1;
    }

    while (v60 != 1);
    v34 = v62[25];
  }

  else
  {
    v35 = v0[25];
  }

  v36 = v0;
  v38 = v0[19];
  v37 = v0[20];
  v39 = v0[18];
  v41 = v36[16];
  v40 = v36[17];
  _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD000000000000013, 0x800000025B167150);
  sub_25B1613E4();
  sub_25B115CC8();
  sub_25B1611E4();
  (*(v39 + 16))(v38, v37, v40);
  v42 = sub_25B11582C(0, 1, 1, MEMORY[0x277D84F90]);
  v44 = v42[2];
  v43 = v42[3];
  if (v44 >= v43 >> 1)
  {
    v42 = sub_25B11582C(v43 > 1, v44 + 1, 1, v42);
  }

  v45 = v62[19];
  v46 = v62[17];
  v47 = v62[18];
  (*(v47 + 8))(v62[20], v46);
  v42[2] = v44 + 1;
  (*(v47 + 32))(v42 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v44, v45, v46);
  v49 = v62[19];
  v48 = v62[20];
  v50 = v62[16];
  v51 = v62[13];
  v52 = v62[10];
  v53 = v62[6];
  (*(v62[15] + 56))(v62[7], 1, 1, v62[14]);
  sub_25B1611F4();

  v54 = v62[1];

  return v54();
}

uint64_t sub_25B139B5C()
{
  v23 = v0;
  v1 = v0[23];

  if (qword_27FA39B00 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v3 = sub_25B161A14();
  __swift_project_value_buffer(v3, qword_27FA3A088);
  v4 = v2;
  v5 = sub_25B1619F4();
  v6 = sub_25B161D94();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[26];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, &v22);
    *(v9 + 12) = 2112;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_25B105000, v5, v6, "%s: [NHOHomeQuery] Error getting ordered homes: %@", v9, 0x16u);
    sub_25B13A1D8(v10);
    MEMORY[0x25F862BF0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x25F862BF0](v11, -1, -1);
    MEMORY[0x25F862BF0](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[19];
  v15 = v0[20];
  v16 = v0[16];
  v17 = v0[13];
  v18 = v0[10];
  v19 = v0[6];
  (*(v0[15] + 56))(v0[7], 1, 1, v0[14]);
  sub_25B115CC8();
  sub_25B1611F4();

  v20 = v0[1];

  return v20();
}

uint64_t sub_25B139DE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B11B408;

  return NHOHomeQuery.entities(for:)(a1);
}

uint64_t sub_25B139E7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B114758;

  return NHOHomeQuery.suggestedEntities()(a1);
}

uint64_t sub_25B139F14(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_25B13A934();
  *v6 = v2;
  v6[1] = sub_25B11B3EC;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_25B139FC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B114758;

  return NHOHomeQuery.defaultResult()(a1);
}

unint64_t sub_25B13A180()
{
  result = qword_27FA39CA8;
  if (!qword_27FA39CA8)
  {
    sub_25B1616C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39CA8);
  }

  return result;
}

uint64_t sub_25B13A1D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A4E0, &qword_25B165AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25B13A280()
{
  result = qword_27FA3A4E8;
  if (!qword_27FA3A4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA3A4F0, qword_25B164D18);
    sub_25B114F98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A4E8);
  }

  return result;
}

char *sub_25B13A504(char *a1, int64_t a2, char a3)
{
  result = sub_25B13A6FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25B13A524(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39DE8, &qword_25B1637C8);
  v10 = *(sub_25B161664() - 8);
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
  v15 = *(sub_25B161664() - 8);
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

char *sub_25B13A6FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39D98, &qword_25B163780);
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

unint64_t sub_25B13A82C()
{
  result = qword_27FA3A4F8;
  if (!qword_27FA3A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A4F8);
  }

  return result;
}

unint64_t sub_25B13A884()
{
  result = qword_27FA3A500;
  if (!qword_27FA3A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A500);
  }

  return result;
}

unint64_t sub_25B13A8DC()
{
  result = qword_27FA3A508;
  if (!qword_27FA3A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A508);
  }

  return result;
}

unint64_t sub_25B13A934()
{
  result = qword_27FA3A510;
  if (!qword_27FA3A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A510);
  }

  return result;
}

unint64_t sub_25B13A98C()
{
  result = qword_27FA3A518;
  if (!qword_27FA3A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A518);
  }

  return result;
}

unint64_t sub_25B13A9E4()
{
  result = qword_27FA3A520;
  if (!qword_27FA3A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A520);
  }

  return result;
}

unint64_t sub_25B13AA40()
{
  result = qword_27FA3A528;
  if (!qword_27FA3A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A528);
  }

  return result;
}

unint64_t sub_25B13AADC()
{
  result = qword_27FA3A540;
  if (!qword_27FA3A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A540);
  }

  return result;
}

unint64_t sub_25B13AB34()
{
  result = qword_27FA3A548;
  if (!qword_27FA3A548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A548);
  }

  return result;
}

unint64_t sub_25B13AB8C()
{
  result = qword_27FA3A550;
  if (!qword_27FA3A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A550);
  }

  return result;
}

unint64_t sub_25B13ABE8()
{
  result = qword_27FA3A558;
  if (!qword_27FA3A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A558);
  }

  return result;
}

uint64_t sub_25B13AC90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_25B1610F4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_25B13ACD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_25B1610F4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_25B13AD10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25B13AD58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t HFImageIconIdentifier.symbolMapping.getter()
{
  v0 = *MEMORY[0x277D13AC0];
  v1 = sub_25B161B34();
  v3 = v2;
  if (v1 == sub_25B161B34() && v3 == v4)
  {

    goto LABEL_15;
  }

  v6 = sub_25B161FA4();

  if (v6)
  {
LABEL_15:
    v19 = MEMORY[0x277D141A8];
LABEL_16:
    v20 = *v19;
    return sub_25B161B34();
  }

  v7 = *MEMORY[0x277D13AB8];
  v8 = sub_25B161B34();
  v10 = v9;
  if (v8 == sub_25B161B34() && v10 == v11)
  {

    goto LABEL_19;
  }

  v13 = sub_25B161FA4();

  if (v13)
  {
LABEL_19:
    v19 = MEMORY[0x277D141A0];
    goto LABEL_16;
  }

  v14 = *MEMORY[0x277D13A70];
  v15 = sub_25B161B34();
  v17 = v16;
  if (v15 == sub_25B161B34() && v17 == v18)
  {

LABEL_21:
    v19 = MEMORY[0x277D14190];
    goto LABEL_16;
  }

  v22 = sub_25B161FA4();

  if (v22)
  {
    goto LABEL_21;
  }

  v23 = *MEMORY[0x277D13A98];
  v24 = sub_25B161B34();
  v26 = v25;
  if (v24 == sub_25B161B34() && v26 == v27)
  {

LABEL_26:
    v19 = MEMORY[0x277D14198];
    goto LABEL_16;
  }

  v28 = sub_25B161FA4();

  if (v28)
  {
    goto LABEL_26;
  }

  v29 = *MEMORY[0x277D13A30];
  v30 = sub_25B161B34();
  v32 = v31;
  if (v30 == sub_25B161B34() && v32 == v33)
  {

LABEL_31:
    v19 = MEMORY[0x277D141E0];
    goto LABEL_16;
  }

  v34 = sub_25B161FA4();

  if (v34)
  {
    goto LABEL_31;
  }

  v35 = *MEMORY[0x277D13A80];
  v36 = sub_25B161B34();
  v38 = v37;
  if (v36 == sub_25B161B34() && v38 == v39)
  {

    return 0xD000000000000011;
  }

  v40 = sub_25B161FA4();

  if (v40)
  {
    return 0xD000000000000011;
  }

  v41 = *MEMORY[0x277D13AA0];
  v42 = sub_25B161B34();
  v44 = v43;
  if (v42 == sub_25B161B34() && v44 == v45)
  {

    return 0x2E6E726F63706F70;
  }

  v46 = sub_25B161FA4();

  result = 0x2E6E726F63706F70;
  if ((v46 & 1) == 0)
  {
    v47 = *MEMORY[0x277D13A90];
    v48 = sub_25B161B34();
    v50 = v49;
    if (v48 == sub_25B161B34() && v50 == v51)
    {

      return 0x696E6B2E6B726F66;
    }

    v52 = sub_25B161FA4();

    result = 0x696E6B2E6B726F66;
    if ((v52 & 1) == 0)
    {
      v53 = *MEMORY[0x277D13A88];
      v54 = sub_25B161B34();
      v56 = v55;
      if (v54 == sub_25B161B34() && v56 == v57)
      {

        return 0xD000000000000013;
      }

      v58 = sub_25B161FA4();

      if (v58)
      {
        return 0xD000000000000013;
      }

      v59 = *MEMORY[0x277D13A78];
      v60 = sub_25B161B34();
      v62 = v61;
      if (v60 == sub_25B161B34() && v62 == v63)
      {

        return 0x702E676E69797266;
      }

      v64 = sub_25B161FA4();

      result = 0x702E676E69797266;
      if ((v64 & 1) == 0)
      {
        v65 = *MEMORY[0x277D13AA8];
        v66 = sub_25B161B34();
        v68 = v67;
        if (v66 == sub_25B161B34() && v68 == v69)
        {
        }

        else
        {
          v70 = sub_25B161FA4();

          if ((v70 & 1) == 0)
          {
            v71 = *MEMORY[0x277D13AB0];
            v72 = sub_25B161B34();
            v74 = v73;
            if (v72 == sub_25B161B34() && v74 == v75)
            {
            }

            else
            {
              v76 = sub_25B161FA4();

              if ((v76 & 1) == 0)
              {
                return 0;
              }
            }

            return 0x69662E7472616568;
          }
        }

        return 0xD000000000000011;
      }
    }
  }

  return result;
}

uint64_t ServiceKind.isSupportedByControls.getter()
{
  v1 = v0;
  v2 = sub_25B1616A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = *MEMORY[0x277D15640];
  (*(v3 + 104))(&v24 - v8, *MEMORY[0x277D15640], v2);
  sub_25B13FBC0(&qword_27FA39D80, MEMORY[0x277D158E0]);
  v11 = sub_25B161AA4();
  v12 = *(v3 + 8);
  v12(v9, v2);
  if ((v11 & 1) == 0)
  {
    (*(v3 + 16))(v7, v1, v2);
    v13 = (*(v3 + 88))(v7, v2);
    if (v13 == *MEMORY[0x277D15810] || v13 == *MEMORY[0x277D15760] || v13 == *MEMORY[0x277D158D0] || v13 == *MEMORY[0x277D156D8] || v13 == *MEMORY[0x277D15870] || v13 == *MEMORY[0x277D15888] || v13 == v10 || v13 == *MEMORY[0x277D15718] || v13 == *MEMORY[0x277D15898] || v13 == *MEMORY[0x277D15720])
    {
      return 1;
    }

    v12(v7, v2);
  }

  return 0;
}

uint64_t ServiceKind.isSupportedByWidgets.getter()
{
  v1 = v0;
  v2 = sub_25B1616A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  v16 = v7 == *MEMORY[0x277D15810] || v7 == *MEMORY[0x277D15760] || v7 == *MEMORY[0x277D158D0] || v7 == *MEMORY[0x277D156D8] || v7 == *MEMORY[0x277D15870] || v7 == *MEMORY[0x277D15888] || v7 == *MEMORY[0x277D15640] || v7 == *MEMORY[0x277D15718] || v7 == *MEMORY[0x277D15898] || v7 == *MEMORY[0x277D15720];
  v17 = v16;
  if (!v16)
  {
    (*(v3 + 8))(v6, v2);
  }

  return v17;
}

uint64_t ServiceKind.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_25B1616A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D15830])
  {
    return 1819047278;
  }

  if (v7 == *MEMORY[0x277D157B0])
  {
    return 0xD000000000000014;
  }

  if (v7 == *MEMORY[0x277D15740])
  {
    return 0xD000000000000010;
  }

  if (v7 == *MEMORY[0x277D15650])
  {
    return 0x6669727550726961;
  }

  if (v7 == *MEMORY[0x277D15750])
  {
    return 0xD000000000000010;
  }

  if (v7 == *MEMORY[0x277D158A0])
  {
    return 0x79726574746162;
  }

  if (v7 == *MEMORY[0x277D156B0])
  {
    return 0x6F436172656D6163;
  }

  if (v7 == *MEMORY[0x277D157E8] || v7 == *MEMORY[0x277D157F0])
  {
    v9 = 9;
    return v9 | 0xD000000000000010;
  }

  if (v7 == *MEMORY[0x277D15798])
  {
    return 0xD000000000000013;
  }

  if (v7 == *MEMORY[0x277D157B8])
  {
    return 0xD000000000000014;
  }

  if (v7 == *MEMORY[0x277D156C0])
  {
    return 0x53746361746E6F63;
  }

  if (v7 == *MEMORY[0x277D15808])
  {
    v9 = 13;
    return v9 | 0xD000000000000010;
  }

  if (v7 == *MEMORY[0x277D15660])
  {
    return 0x74736F6E67616964;
  }

  if (v7 == *MEMORY[0x277D15828])
  {
    return 1919905636;
  }

  if (v7 == *MEMORY[0x277D158C0])
  {
    return 0x6C6C6562726F6F64;
  }

  if (v7 == *MEMORY[0x277D15810])
  {
    return 7233894;
  }

  if (v7 == *MEMORY[0x277D15868])
  {
    return 0x746563756166;
  }

  if (v7 == *MEMORY[0x277D15780])
  {
    return 0xD000000000000011;
  }

  if (v7 == *MEMORY[0x277D15760])
  {
    return 0xD000000000000010;
  }

  if (v7 == *MEMORY[0x277D15698])
  {
    return 0x6F43726574616568;
  }

  if (v7 == *MEMORY[0x277D157D8])
  {
    return 0xD000000000000016;
  }

  if (v7 == *MEMORY[0x277D156F0])
  {
    return 0x79746964696D7568;
  }

  if (v7 == *MEMORY[0x277D15668])
  {
    return 0x756F537475706E69;
  }

  if (v7 == *MEMORY[0x277D15770])
  {
    return 0xD000000000000010;
  }

  if (v7 == *MEMORY[0x277D15838])
  {
    return 0x6C6562616CLL;
  }

  if (v7 == *MEMORY[0x277D15610])
  {
    return 0x736E65536B61656CLL;
  }

  if (v7 == *MEMORY[0x277D15678])
  {
    v10 = 0x53746867696CLL;
    return v10 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
  }

  if (v7 == *MEMORY[0x277D158D0])
  {
    return 0x6C7562746867696CLL;
  }

  if (v7 == *MEMORY[0x277D15700])
  {
    return 0x616E614D6B636F6CLL;
  }

  if (v7 == *MEMORY[0x277D156D8])
  {
    return 0x6863654D6B636F6CLL;
  }

  if (v7 == *MEMORY[0x277D15618])
  {
    return 0x6F68706F7263696DLL;
  }

  if (v7 == *MEMORY[0x277D156A0])
  {
    return 0x65536E6F69746F6DLL;
  }

  if (v7 == *MEMORY[0x277D15730])
  {
    return 0x636E61707563636FLL;
  }

  if (v7 == *MEMORY[0x277D15870])
  {
    return 0x74656C74756FLL;
  }

  if (v7 == *MEMORY[0x277D15708])
  {
    return 0x7974697275636573;
  }

  if (v7 == *MEMORY[0x277D15848])
  {
    return 0x7374616C73;
  }

  if (v7 == *MEMORY[0x277D15688])
  {
    v10 = 0x53656B6F6D73;
    return v10 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
  }

  if (v7 == *MEMORY[0x277D158B0])
  {
    return 0x72656B61657073;
  }

  if (v7 == *MEMORY[0x277D157F8])
  {
LABEL_80:
    v9 = 10;
    return v9 | 0xD000000000000010;
  }

  if (v7 == *MEMORY[0x277D15800])
  {
    v9 = 11;
    return v9 | 0xD000000000000010;
  }

  if (v7 == *MEMORY[0x277D15888])
  {
    return 0x686374697773;
  }

  if (v7 == *MEMORY[0x277D156E0])
  {
    return 0x6F43746567726174;
  }

  if (v7 == *MEMORY[0x277D157E0])
  {
    return 0xD000000000000017;
  }

  if (v7 == *MEMORY[0x277D15630])
  {
    return 0x69736976656C6574;
  }

  if (v7 == *MEMORY[0x277D15788])
  {
    return 0xD000000000000011;
  }

  if (v7 == *MEMORY[0x277D15640])
  {
    return 0x74736F6D72656874;
  }

  if (v7 == *MEMORY[0x277D15850])
  {
    return 0x65766C6176;
  }

  if (v7 == *MEMORY[0x277D15718])
  {
    return 0x74616C69746E6576;
  }

  if (v7 == *MEMORY[0x277D15648])
  {
    return 0x74756F5269666977;
  }

  if (v7 == *MEMORY[0x277D156E8])
  {
    return 0x6574615369666977;
  }

  if (v7 == *MEMORY[0x277D15898])
  {
    return 0x776F646E6977;
  }

  if (v7 != *MEMORY[0x277D15720])
  {
    (*(v3 + 8))(v6, v2);
    goto LABEL_80;
  }

  return 0x6F43776F646E6977;
}

uint64_t ServiceKind.widgetTogglingCharacteristicKind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25B1616A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 != *MEMORY[0x277D15650] && v9 != *MEMORY[0x277D15810] && v9 != *MEMORY[0x277D15868] && v9 != *MEMORY[0x277D15698] && v9 != *MEMORY[0x277D157D8] && v9 != *MEMORY[0x277D15770])
  {
    if (v9 != *MEMORY[0x277D158D0])
    {
      if (v9 == *MEMORY[0x277D15618])
      {
        goto LABEL_13;
      }

      if (v9 == *MEMORY[0x277D15870])
      {
        goto LABEL_11;
      }

      if (v9 == *MEMORY[0x277D158B0])
      {
LABEL_13:
        v10 = MEMORY[0x277D162E0];
        goto LABEL_8;
      }

      if (v9 != *MEMORY[0x277D15888])
      {
        if (v9 != *MEMORY[0x277D156E0] && v9 != *MEMORY[0x277D15630] && v9 != *MEMORY[0x277D15850] && v9 != *MEMORY[0x277D15718])
        {
          v15 = sub_25B161894();
          (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
          return (*(v5 + 8))(v8, v4);
        }

        goto LABEL_7;
      }
    }

LABEL_11:
    v10 = MEMORY[0x277D160B0];
    goto LABEL_8;
  }

LABEL_7:
  v10 = MEMORY[0x277D16330];
LABEL_8:
  v11 = *v10;
  v12 = sub_25B161894();
  v13 = *(v12 - 8);
  (*(v13 + 104))(a1, v11, v12);
  return (*(v13 + 56))(a1, 0, 1, v12);
}

uint64_t ServiceKind.widgetTargetCharacteristicType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25B1616A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 != *MEMORY[0x277D15828])
  {
    if (v9 == *MEMORY[0x277D15868])
    {
      goto LABEL_4;
    }

    if (v9 == *MEMORY[0x277D15760])
    {
      v10 = MEMORY[0x277D16158];
      goto LABEL_17;
    }

    if (v9 == *MEMORY[0x277D15698])
    {
      v10 = MEMORY[0x277D16288];
      goto LABEL_17;
    }

    if (v9 == *MEMORY[0x277D157D8])
    {
      v10 = MEMORY[0x277D162C8];
      goto LABEL_17;
    }

    if (v9 == *MEMORY[0x277D156D8])
    {
      v10 = MEMORY[0x277D162A0];
      goto LABEL_17;
    }

    if (v9 == *MEMORY[0x277D15708])
    {
      v10 = MEMORY[0x277D162B0];
      goto LABEL_17;
    }

    if (v9 == *MEMORY[0x277D15640])
    {
      v10 = MEMORY[0x277D16298];
      goto LABEL_17;
    }

    if (v9 == *MEMORY[0x277D15850])
    {
LABEL_4:
      v10 = MEMORY[0x277D16330];
      goto LABEL_17;
    }

    if (v9 != *MEMORY[0x277D15898] && v9 != *MEMORY[0x277D15720])
    {
      v16 = *MEMORY[0x277D16330];
      v17 = sub_25B161894();
      v18 = *(v17 - 8);
      (*(v18 + 104))(a1, v16, v17);
      (*(v18 + 56))(a1, 0, 1, v17);
      return (*(v5 + 8))(v8, v4);
    }
  }

  v10 = MEMORY[0x277D16140];
LABEL_17:
  v11 = *v10;
  v12 = sub_25B161894();
  v13 = *(v12 - 8);
  (*(v13 + 104))(a1, v11, v12);
  return (*(v13 + 56))(a1, 0, 1, v12);
}

uint64_t ServiceKind.widgetCurrentCharacteristicType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25B1616A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 != *MEMORY[0x277D15828])
  {
    if (v9 == *MEMORY[0x277D15760])
    {
      v10 = MEMORY[0x277D16178];
      goto LABEL_11;
    }

    if (v9 == *MEMORY[0x277D156D8])
    {
      v10 = MEMORY[0x277D162A8];
      goto LABEL_11;
    }

    if (v9 == *MEMORY[0x277D15708])
    {
      v10 = MEMORY[0x277D162B8];
      goto LABEL_11;
    }

    if (v9 == *MEMORY[0x277D15640])
    {
      v10 = MEMORY[0x277D16218];
      goto LABEL_11;
    }

    if (v9 != *MEMORY[0x277D15898] && v9 != *MEMORY[0x277D15720])
    {
      v16 = *MEMORY[0x277D160B0];
      v17 = sub_25B161894();
      v18 = *(v17 - 8);
      (*(v18 + 104))(a1, v16, v17);
      (*(v18 + 56))(a1, 0, 1, v17);
      return (*(v5 + 8))(v8, v4);
    }
  }

  v10 = MEMORY[0x277D16148];
LABEL_11:
  v11 = *v10;
  v12 = sub_25B161894();
  v13 = *(v12 - 8);
  (*(v13 + 104))(a1, v11, v12);
  return (*(v13 + 56))(a1, 0, 1, v12);
}

uint64_t ServiceKind.widgetDisplayCharacteristicType.getter()
{
  v1 = v0;
  v2 = sub_25B1616A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D15650])
  {
    goto LABEL_2;
  }

  if (v7 != *MEMORY[0x277D15828])
  {
    if (v7 == *MEMORY[0x277D15810])
    {
LABEL_2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A570, &qword_25B165290);
      v8 = sub_25B161894();
      v9 = *(v8 - 8);
      v10 = *(v9 + 72);
      v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v12 = swift_allocObject();
      v13 = v12;
      *(v12 + 16) = xmmword_25B162FE0;
      v14 = MEMORY[0x277D16128];
LABEL_3:
      (*(v9 + 104))(v12 + v11, *v14, v8);
      return v13;
    }

    if (v7 == *MEMORY[0x277D15760])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A570, &qword_25B165290);
      v8 = sub_25B161894();
      v9 = *(v8 - 8);
      v22 = *(v9 + 72);
      v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v12 = swift_allocObject();
      v13 = v12;
      *(v12 + 16) = xmmword_25B162FE0;
      v14 = MEMORY[0x277D161F0];
      goto LABEL_3;
    }

    if (v7 == *MEMORY[0x277D15698])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A570, &qword_25B165290);
      v23 = sub_25B161894();
      v24 = *(v23 - 8);
      v25 = *(v24 + 72);
      v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_25B164320;
      v27 = v13 + v26;
      v28 = *(v24 + 104);
      v28(v27, *MEMORY[0x277D161C8], v23);
      v28(v27 + v25, *MEMORY[0x277D16290], v23);
      v28(v27 + 2 * v25, *MEMORY[0x277D16180], v23);
      v28(v27 + 3 * v25, *MEMORY[0x277D16170], v23);
      return v13;
    }

    if (v7 == *MEMORY[0x277D157D8])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A570, &qword_25B165290);
      v29 = sub_25B161894();
      v30 = *(v29 - 8);
      v31 = *(v30 + 72);
      v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v33 = 4 * v31;
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_25B163AC0;
      v34 = v13 + v32;
      v35 = *(v30 + 104);
      v35(v34, *MEMORY[0x277D16330], v29);
      v35(v34 + v31, *MEMORY[0x277D16128], v29);
      v35(v34 + 2 * v31, *MEMORY[0x277D161E8], v29);
      v35(v34 + 3 * v31, *MEMORY[0x277D16228], v29);
      v36 = MEMORY[0x277D162D0];
    }

    else
    {
      if (v7 == *MEMORY[0x277D15770])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A570, &qword_25B165290);
        v37 = sub_25B161894();
        v38 = *(v37 - 8);
        v39 = *(v38 + 72);
        v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_25B165270;
        v41 = v13 + v40;
        v42 = *(v38 + 104);
        v42(v41, *MEMORY[0x277D16328], v37);
        v42(v41 + v39, *MEMORY[0x277D160D8], v37);
        return v13;
      }

      if (v7 == *MEMORY[0x277D158D0])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A570, &qword_25B165290);
        v8 = sub_25B161894();
        v9 = *(v8 - 8);
        v43 = *(v9 + 72);
        v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v12 = swift_allocObject();
        v13 = v12;
        *(v12 + 16) = xmmword_25B162FE0;
        v14 = MEMORY[0x277D160A8];
        goto LABEL_3;
      }

      if (v7 != *MEMORY[0x277D15640])
      {
        if (v7 == *MEMORY[0x277D15850])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A570, &qword_25B165290);
          v8 = sub_25B161894();
          v9 = *(v8 - 8);
          v47 = *(v9 + 72);
          v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
          v12 = swift_allocObject();
          v13 = v12;
          *(v12 + 16) = xmmword_25B162FE0;
          v14 = MEMORY[0x277D16328];
          goto LABEL_3;
        }

        if (v7 == *MEMORY[0x277D15718])
        {
          goto LABEL_2;
        }

        if (v7 != *MEMORY[0x277D15898] && v7 != *MEMORY[0x277D15720])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A570, &qword_25B165290);
          v48 = sub_25B161894();
          v49 = *(v48 - 8);
          v50 = *(v49 + 72);
          v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
          v13 = swift_allocObject();
          *(v13 + 16) = xmmword_25B162FE0;
          (*(v49 + 104))(v13 + v51, *MEMORY[0x277D160B0], v48);
          (*(v3 + 8))(v6, v2);
          return v13;
        }

        goto LABEL_5;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A570, &qword_25B165290);
      v29 = sub_25B161894();
      v44 = *(v29 - 8);
      v45 = *(v44 + 72);
      v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v33 = 4 * v45;
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_25B163AC0;
      v34 = v13 + v46;
      v35 = *(v44 + 104);
      v35(v34, *MEMORY[0x277D161C8], v29);
      v35(v34 + v45, *MEMORY[0x277D161B0], v29);
      v35(v34 + 2 * v45, *MEMORY[0x277D16218], v29);
      v35(v34 + 3 * v45, *MEMORY[0x277D16180], v29);
      v36 = MEMORY[0x277D16170];
    }

    v35(v34 + v33, *v36, v29);
    return v13;
  }

LABEL_5:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A570, &qword_25B165290);
  v15 = sub_25B161894();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25B165270;
  v19 = v13 + v18;
  v20 = *(v16 + 104);
  v20(v19, *MEMORY[0x277D16120], v15);
  v20(v19 + v17, *MEMORY[0x277D161F0], v15);
  return v13;
}

uint64_t ServiceKind.widgetRelevantCharacteristic.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A578, &qword_25B165298);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v54 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v52 = &v48 - v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - v6;
  v8 = sub_25B161894();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v51 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v50 = &v48 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v49 = &v48 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v48 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v48 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v48 - v23;
  v55 = MEMORY[0x277D84FA0];
  ServiceKind.widgetTogglingCharacteristicKind.getter(v7);
  v25 = *(v9 + 48);
  v26 = v25(v7, 1, v8);
  v53 = v19;
  if (v26 == 1)
  {
    sub_25B13DCDC(v7);
  }

  else
  {
    (*(v9 + 32))(v24, v7, v8);
    (*(v9 + 16))(v19, v24, v8);
    sub_25B13E428(v22, v19);
    v27 = *(v9 + 8);
    v27(v22, v8);
    v27(v24, v8);
  }

  v28 = v52;
  ServiceKind.widgetTargetCharacteristicType.getter(v52);
  v29 = v25;
  if (v25(v28, 1, v8) == 1)
  {
    sub_25B13DCDC(v28);
    v30 = v53;
  }

  else
  {
    v31 = v49;
    (*(v9 + 32))(v49, v28, v8);
    v30 = v53;
    (*(v9 + 16))(v53, v31, v8);
    sub_25B13E428(v22, v30);
    v32 = *(v9 + 8);
    v32(v22, v8);
    v32(v31, v8);
  }

  v33 = v54;
  ServiceKind.widgetCurrentCharacteristicType.getter(v54);
  if (v29(v33, 1, v8) == 1)
  {
    sub_25B13DCDC(v33);
  }

  else
  {
    v34 = v50;
    (*(v9 + 32))(v50, v33, v8);
    (*(v9 + 16))(v30, v34, v8);
    sub_25B13E428(v22, v30);
    v35 = *(v9 + 8);
    v35(v22, v8);
    v35(v34, v8);
  }

  v36 = ServiceKind.widgetDisplayCharacteristicType.getter();
  if (v36)
  {
    v37 = v30;
    v52 = v36;
    v38 = *(v36 + 16);
    v39 = v51;
    if (v38)
    {
      v40 = v22;
      v43 = *(v9 + 16);
      v42 = v9 + 16;
      v41 = v43;
      v44 = v52 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
      v54 = *(v42 + 56);
      v45 = (v42 - 8);
      do
      {
        v41(v39, v44, v8);
        v41(v37, v39, v8);
        sub_25B13E428(v40, v37);
        v46 = *v45;
        (*v45)(v40, v8);
        v46(v39, v8);
        v44 += v54;
        --v38;
      }

      while (v38);
    }
  }

  return v55;
}

uint64_t sub_25B13DCDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A578, &qword_25B165298);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ServiceKind.iconColorBase.getter()
{
  v35 = sub_25B1616A4();
  v1 = *(v35 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25B161884();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v37 = v0;
  sub_25B161674();
  (*(v5 + 104))(v11, *MEMORY[0x277D15FF0], v4);
  sub_25B13FBC0(&qword_27FA3A580, MEMORY[0x277D16028]);
  sub_25B161C14();
  sub_25B161C14();
  if (v40 == v38 && v41 == v39)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_25B161FA4();
  }

  v15 = *(v5 + 8);
  v15(v11, v4);
  v15(v13, v4);

  if ((v14 & 1) == 0)
  {
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A588, &qword_25B1652A0);
  v16 = *(v1 + 72);
  v17 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v18 = 2 * v16;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_25B165280;
  v20 = v19 + v17;
  v21 = *MEMORY[0x277D15870];
  v22 = *(v1 + 104);
  v33 = v1;
  v23 = v35;
  v22(v20, v21, v35);
  v22(v20 + v16, *MEMORY[0x277D15888], v23);
  v24 = *MEMORY[0x277D158D0];
  v22(v20 + v18, v24, v23);
  LOBYTE(v18) = sub_25B114558(v37, v19);
  swift_setDeallocating();
  v25 = v33;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v18)
  {
    v26 = v34;
    v27 = v25;
    v28 = v35;
    v22(v34, v24, v35);
    v29 = v36;
    sub_25B161674();
    (*(v27 + 8))(v26, v28);
  }

  else
  {
LABEL_8:
    v29 = v36;
    sub_25B161674();
  }

  v30 = sub_25B161874();
  v15(v29, v4);
  return v30;
}

uint64_t sub_25B13E148(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25B161884();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25B13FBC0(&qword_27FA3A5A8, MEMORY[0x277D16028]);
  v36 = a2;
  v13 = sub_25B161A94();
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
      sub_25B13FBC0(&qword_27FA3A5B0, MEMORY[0x277D16028]);
      v23 = sub_25B161AA4();
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
    sub_25B13EDC0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_25B13E428(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25B161894();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25B13FBC0(&qword_27FA3A590, MEMORY[0x277D16348]);
  v36 = a2;
  v13 = sub_25B161A94();
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
      sub_25B13FBC0(&qword_27FA3A598, MEMORY[0x277D16348]);
      v23 = sub_25B161AA4();
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
    sub_25B13F088(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_25B13E708(uint64_t a1)
{
  v2 = v1;
  v41 = sub_25B161884();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A5B8, &unk_25B1652B8);
  result = sub_25B161E84();
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
      sub_25B13FBC0(&qword_27FA3A5A8, MEMORY[0x277D16028]);
      result = sub_25B161A94();
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

uint64_t sub_25B13EA64(uint64_t a1)
{
  v2 = v1;
  v41 = sub_25B161894();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A5A0, &qword_25B1652B0);
  result = sub_25B161E84();
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
      sub_25B13FBC0(&qword_27FA3A590, MEMORY[0x277D16348]);
      result = sub_25B161A94();
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

uint64_t sub_25B13EDC0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_25B161884();
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
    sub_25B13E708(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_25B13F350(MEMORY[0x277D16028], &qword_27FA3A5B8, &unk_25B1652B8);
      goto LABEL_12;
    }

    sub_25B13F588(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_25B13FBC0(&qword_27FA3A5A8, MEMORY[0x277D16028]);
  v15 = sub_25B161A94();
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
      sub_25B13FBC0(&qword_27FA3A5B0, MEMORY[0x277D16028]);
      v23 = sub_25B161AA4();
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
  result = sub_25B161FC4();
  __break(1u);
  return result;
}

uint64_t sub_25B13F088(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_25B161894();
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
    sub_25B13EA64(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_25B13F350(MEMORY[0x277D16348], &qword_27FA3A5A0, &qword_25B1652B0);
      goto LABEL_12;
    }

    sub_25B13F8A4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_25B13FBC0(&qword_27FA3A590, MEMORY[0x277D16348]);
  v15 = sub_25B161A94();
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
      sub_25B13FBC0(&qword_27FA3A598, MEMORY[0x277D16348]);
      v23 = sub_25B161AA4();
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
  result = sub_25B161FC4();
  __break(1u);
  return result;
}

void *sub_25B13F350(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_25B161E74();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

uint64_t sub_25B13F588(uint64_t a1)
{
  v2 = v1;
  v37 = sub_25B161884();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A5B8, &unk_25B1652B8);
  v10 = sub_25B161E84();
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
      sub_25B13FBC0(&qword_27FA3A5A8, MEMORY[0x277D16028]);
      result = sub_25B161A94();
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

uint64_t sub_25B13F8A4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_25B161894();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A5A0, &qword_25B1652B0);
  v10 = sub_25B161E84();
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
      sub_25B13FBC0(&qword_27FA3A590, MEMORY[0x277D16348]);
      result = sub_25B161A94();
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

uint64_t sub_25B13FBC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t NHOActionSetIntent.home.getter()
{
  v1 = *(v0 + OBJC_IVAR___NHOActionSetIntent__home);
  sub_25B161274();
  sub_25B161144();
}

uint64_t NHOActionSetIntent.home.setter(__int128 *a1)
{
  v2 = *(v1 + OBJC_IVAR___NHOActionSetIntent__home);
  v4 = *a1;
  sub_25B161274();
  sub_25B161154();
}

char *NHOActionSetIntent.__allocating_init(homeID:homeName:actionSetID:actionSetName:icon:iconTintColor:)()
{
  v1 = sub_25B161414();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = [objc_allocWithZone(v0) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
  v4 = v3;
  sub_25B161264();
  sub_25B161264();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B161104();
  sub_25B161104();
  v5 = *&v4[OBJC_IVAR___NHOActionSetIntent__home];
  sub_25B161274();
  sub_25B161154();

  sub_25B161264();
  sub_25B161264();
  sub_25B161264();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B161104();
  sub_25B161104();
  sub_25B161104();
  v6 = *&v4[OBJC_IVAR___NHOActionSetIntent__accessoriesAndScenes];
  sub_25B161274();
  sub_25B161154();

  v7 = *&v4[OBJC_IVAR___NHOActionSetIntent__homeID];
  sub_25B161274();
  sub_25B161154();

  v8 = *&v4[OBJC_IVAR___NHOActionSetIntent__homeName];
  sub_25B161274();
  sub_25B161154();

  v9 = *&v4[OBJC_IVAR___NHOActionSetIntent__actionSetID];
  sub_25B161274();
  sub_25B161154();

  v10 = *&v4[OBJC_IVAR___NHOActionSetIntent__actionSetName];
  sub_25B161274();
  sub_25B161154();

  v11 = *&v4[OBJC_IVAR___NHOActionSetIntent__icon];
  sub_25B161274();
  sub_25B161154();

  v12 = *&v4[OBJC_IVAR___NHOActionSetIntent__iconTintColor];
  sub_25B161274();
  sub_25B161154();

  v13 = *&v4[OBJC_IVAR___NHOActionSetIntent__useHomeKitRecommendations];
  sub_25B161274();
  sub_25B161154();

  return v4;
}

uint64_t sub_25B1400C8()
{
  v0 = sub_25B161414();
  __swift_allocate_value_buffer(v0, qword_27FA3A5C0);
  __swift_project_value_buffer(v0, qword_27FA3A5C0);
  return sub_25B1613E4();
}

uint64_t (*static NHOActionSetIntent.title.modify())()
{
  if (qword_27FA39B58 != -1)
  {
    swift_once();
  }

  v0 = sub_25B161414();
  __swift_project_value_buffer(v0, qword_27FA3A5C0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25B14022C()
{
  v0 = sub_25B1611D4();
  __swift_allocate_value_buffer(v0, qword_27FA3A5D8);
  __swift_project_value_buffer(v0, qword_27FA3A5D8);
  return sub_25B1611C4();
}

uint64_t (*static NHOActionSetIntent.description.modify())()
{
  if (qword_27FA39B60 != -1)
  {
    swift_once();
  }

  v0 = sub_25B1611D4();
  __swift_project_value_buffer(v0, qword_27FA3A5D8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t (*NHOActionSetIntent.homeID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__homeID);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOActionSetIntent.homeName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__homeName);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOActionSetIntent.actionSetID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__actionSetID);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOActionSetIntent.actionSetName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__actionSetName);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

id sub_25B140660(char *a1, uint64_t a2, void *a3)
{
  v3 = *&a1[*a3];
  v4 = a1;
  sub_25B161274();
  sub_25B161144();

  v5 = sub_25B161B24();

  return v5;
}

void sub_25B1406E8(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_25B161B34();
  v6 = *&a1[*a4];
  v7 = a1;
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOActionSetIntent.icon.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__icon);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t NHOActionSetIntent.useHomeKitRecommendations.getter()
{
  v1 = *(v0 + OBJC_IVAR___NHOActionSetIntent__useHomeKitRecommendations);
  sub_25B161274();
  sub_25B161144();

  return v3;
}

uint64_t NHOActionSetIntent.useHomeKitRecommendations.setter()
{
  v1 = *(v0 + OBJC_IVAR___NHOActionSetIntent__useHomeKitRecommendations);
  sub_25B161274();
  sub_25B161154();
}

uint64_t sub_25B140938@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___NHOActionSetIntent__useHomeKitRecommendations);
  sub_25B161274();
  sub_25B161144();

  *a2 = v5;
  return result;
}

uint64_t sub_25B140990(char *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR___NHOActionSetIntent__useHomeKitRecommendations);
  v4 = *a1;
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOActionSetIntent.useHomeKitRecommendations.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__useHomeKitRecommendations);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B11E120;
}

uint64_t (*NHOActionSetIntent.requestConfirmationText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__requestConfirmationText);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOActionSetIntent.requestConfirmationIcon.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__requestConfirmationIcon);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t NHOActionSetIntent.isSmartStack.getter()
{
  v1 = *(v0 + OBJC_IVAR___NHOActionSetIntent__isSmartStack);
  sub_25B161274();
  sub_25B161144();

  return v3;
}

uint64_t sub_25B140C28@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___NHOActionSetIntent__isSmartStack);
  sub_25B161274();
  sub_25B161144();

  *a2 = v5;
  return result;
}

uint64_t sub_25B140C80(char *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR___NHOActionSetIntent__isSmartStack);
  v4 = *a1;
  sub_25B161274();
  sub_25B161154();
}

uint64_t NHOActionSetIntent.isSmartStack.setter()
{
  v1 = *(v0 + OBJC_IVAR___NHOActionSetIntent__isSmartStack);
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOActionSetIntent.isSmartStack.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__isSmartStack);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOActionSetIntent.home.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__home);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t NHOActionSetIntent.accessoriesAndScenes.getter()
{
  v1 = *(v0 + OBJC_IVAR___NHOActionSetIntent__accessoriesAndScenes);
  sub_25B161274();
  sub_25B161144();
}

double sub_25B140EA0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___NHOActionSetIntent__accessoriesAndScenes);
  sub_25B161274();
  sub_25B161144();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_25B140F00(uint64_t *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR___NHOActionSetIntent__accessoriesAndScenes);
  v4 = a1[1];
  v5 = a1[2];
  sub_25B12908C(*a1);
  sub_25B161274();
  sub_25B161154();
}

uint64_t NHOActionSetIntent.accessoriesAndScenes.setter(__int128 *a1)
{
  v2 = *(v1 + OBJC_IVAR___NHOActionSetIntent__accessoriesAndScenes);
  v4 = *a1;
  v5 = *(a1 + 2);
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOActionSetIntent.accessoriesAndScenes.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__accessoriesAndScenes);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t sub_25B141064@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___NHOActionSetIntent__iconTintColor);
  sub_25B161274();
  sub_25B161144();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_25B1410BC(uint64_t *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR___NHOActionSetIntent__iconTintColor);
  v4 = *a1;
  v5 = a1[1];
  sub_25B161264();
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOActionSetIntent.iconTintColor.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__iconTintColor);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t static NHOActionSetIntent.parameterSummary.getter()
{
  sub_25B142FF0(&qword_27FA3A650);

  return sub_25B161284();
}

uint64_t sub_25B14122C()
{
  swift_getKeyPath();
  sub_25B142FF0(&qword_27FA3A650);
  v0 = sub_25B161274();

  swift_getKeyPath();
  sub_25B161274();
  v1 = sub_25B161274();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25B163820;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  type metadata accessor for NHOActionSetIntent();
  sub_25B161274();
  v3 = sub_25B161264();

  return v3;
}

uint64_t sub_25B14136C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___NHOActionSetIntent__accessoriesAndScenes);
  sub_25B161274();
  v4 = sub_25B161164();

  *a2 = v4;
  return result;
}

id NHOActionSetIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *NHOActionSetIntent.init()()
{
  ObjectType = swift_getObjectType();
  v0 = sub_25B161584();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v119 = &v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_25B1613F4();
  v117 = *(v125 - 8);
  v3 = *(v117 + 64);
  MEMORY[0x28223BE20](v125);
  v118 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B161B14();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v116 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v122 = &v112 - v10;
  v143 = sub_25B161294();
  v11 = *(v143 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v143);
  v14 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v123 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v112 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE8, &unk_25B163AE0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v112 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v112 - v27;
  v29 = sub_25B161414();
  v141 = v29;
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = OBJC_IVAR___NHOActionSetIntent__homeID;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A158, &qword_25B163B08);
  sub_25B1613E4();
  v35 = *(v30 + 56);
  v136 = v30 + 56;
  v137 = v35;
  v35(v28, 1, 1, v29);
  v36 = sub_25B161AB4();
  v146._countAndFlagsBits = 0;
  v146._object = 0;
  v135 = v36;
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v131 = v37 + 56;
  v132 = v38;
  v38(v24, 1, 1, v36);
  v140 = sub_25B1610C4();
  v39 = *(v140 - 8);
  v139 = *(v39 + 56);
  v144 = v39 + 56;
  v127 = v20;
  v139(v20, 1, 1, v140);
  v134 = *MEMORY[0x277CBA308];
  v40 = *(v11 + 104);
  v142 = v11 + 104;
  v129 = v14;
  v41 = v143;
  v40(v14);
  v133 = v40;
  v128 = v33;
  v42 = sub_25B161194();
  v43 = v138;
  *&v138[v34] = v42;
  v121 = OBJC_IVAR___NHOActionSetIntent__homeName;
  sub_25B1613E4();
  v137(v28, 1, 1, v141);
  v146._countAndFlagsBits = 0;
  v146._object = 0;
  v132(v24, 1, 1, v135);
  v139(v127, 1, 1, v140);
  v44 = v129;
  v45 = v134;
  (v40)(v129, v134, v41);
  *&v43[v121] = sub_25B161194();
  v121 = OBJC_IVAR___NHOActionSetIntent__actionSetID;
  sub_25B1613E4();
  v46 = v137;
  v137(v28, 1, 1, v141);
  v146._countAndFlagsBits = 0;
  v146._object = 0;
  v47 = v24;
  v48 = v24;
  v49 = v132;
  v132(v48, 1, 1, v135);
  v50 = v127;
  v139(v127, 1, 1, v140);
  v51 = v44;
  v52 = v133;
  (v133)(v51, v45, v143);
  v53 = v47;
  v54 = v50;
  *&v138[v121] = sub_25B161194();
  v121 = OBJC_IVAR___NHOActionSetIntent__actionSetName;
  sub_25B1613E4();
  v55 = v28;
  v46(v28, 1, 1, v141);
  v146._countAndFlagsBits = 0;
  v146._object = 0;
  v49(v53, 1, 1, v135);
  v56 = v54;
  v57 = v140;
  v139(v56, 1, 1, v140);
  (v52)(v129, v134, v143);
  v126 = v28;
  v58 = sub_25B161194();
  v59 = v138;
  *&v138[v121] = v58;
  v121 = OBJC_IVAR___NHOActionSetIntent__icon;
  sub_25B1613E4();
  v60 = v55;
  v61 = v141;
  v62 = v137;
  v137(v60, 1, 1, v141);
  v146._countAndFlagsBits = 0;
  v146._object = 0;
  v124 = v53;
  v132(v53, 1, 1, v135);
  v63 = v127;
  v64 = v139;
  v139(v127, 1, 1, v57);
  v65 = v134;
  (v133)(v129, v134, v143);
  v66 = v126;
  *&v59[v121] = sub_25B161194();
  v121 = OBJC_IVAR___NHOActionSetIntent__useHomeKitRecommendations;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED0, &unk_25B163860);
  sub_25B1613E4();
  v62(v66, 1, 1, v61);
  LOBYTE(v146._countAndFlagsBits) = 0;
  v114 = sub_25B161CB4();
  v67 = *(v114 - 8);
  v113 = *(v67 + 56);
  v115 = (v67 + 56);
  v113(v122, 1, 1, v114);
  v68 = v140;
  v64(v63, 1, 1, v140);
  v69 = v129;
  (v133)(v129, v65, v143);
  *&v138[v121] = sub_25B1611A4();
  v112 = OBJC_IVAR___NHOActionSetIntent__requestConfirmationText;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF0, &qword_25B163AF0);
  sub_25B1613E4();
  v70 = v66;
  v71 = v141;
  v72 = v137;
  v137(v70, 1, 1, v141);
  v146._countAndFlagsBits = 0;
  v146._object = 0;
  v73 = v124;
  v132(v124, 1, 1, v135);
  v139(v63, 1, 1, v68);
  v74 = v143;
  (v133)(v69, v134, v143);
  *&v138[v112] = sub_25B161194();
  v112 = OBJC_IVAR___NHOActionSetIntent__requestConfirmationIcon;
  sub_25B1613E4();
  v75 = v126;
  v72(v126, 1, 1, v71);
  v146._countAndFlagsBits = 0;
  v146._object = 0;
  v132(v73, 1, 1, v135);
  v76 = v127;
  v77 = v139;
  v139(v127, 1, 1, v140);
  v78 = v134;
  v79 = v74;
  v80 = v133;
  (v133)(v69, v134, v79);
  v81 = sub_25B161194();
  v82 = v138;
  *&v138[v112] = v81;
  v121 = OBJC_IVAR___NHOActionSetIntent__isSmartStack;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A160, &qword_25B163B10);
  sub_25B1613E4();
  v137(v75, 1, 1, v141);
  LOBYTE(v146._countAndFlagsBits) = 2;
  v113(v122, 1, 1, v114);
  v77(v76, 1, 1, v140);
  v80(v69, v78, v143);
  *&v82[v121] = sub_25B1611A4();
  v121 = OBJC_IVAR___NHOActionSetIntent__home;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v115 = "HOME_ACCESSORY_ENTITY_TITLE";
  v83 = v125;
  v114 = __swift_project_value_buffer(v125, qword_27FA3E770);
  v117 = *(v117 + 16);
  v84 = v118;
  (v117)(v118, v114, v83);
  sub_25B161574();
  sub_25B161424();
  v137(v75, 1, 1, v141);
  v146._countAndFlagsBits = 0;
  v146._object = 0;
  v85 = v139;
  v86 = v140;
  v139(v76, 1, 1, v140);
  v85(v123, 1, 1, v86);
  (v133)(v69, v134, v143);
  sub_25B120304();
  v87 = v126;
  *&v138[v121] = sub_25B161184();
  v122 = OBJC_IVAR___NHOActionSetIntent__accessoriesAndScenes;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A250, &unk_25B164140);
  sub_25B161AC4();
  (v117)(v84, v114, v125);
  sub_25B161574();
  sub_25B161424();
  v88 = v87;
  v137(v87, 1, 1, v141);
  v146._countAndFlagsBits = 0;
  v146._object = 0;
  v147 = 0;
  v90 = v139;
  v89 = v140;
  v139(v76, 1, 1, v140);
  v90(v123, 1, 1, v89);
  v91 = v134;
  v92 = v143;
  v93 = v133;
  (v133)(v69, v134, v143);
  sub_25B1282D4();
  v94 = v88;
  v95 = sub_25B161184();
  v96 = v138;
  *&v122[v138] = v95;
  v125 = OBJC_IVAR___NHOActionSetIntent__iconTintColor;
  sub_25B1613E4();
  v137(v94, 1, 1, v141);
  v146._countAndFlagsBits = 0;
  v146._object = 0;
  v132(v124, 1, 1, v135);
  v139(v76, 1, 1, v140);
  v93(v69, v91, v92);
  *&v96[v125] = sub_25B161194();
  v145.receiver = v96;
  v145.super_class = ObjectType;
  v97 = objc_msgSendSuper2(&v145, sel_init);
  v98 = *&v97[OBJC_IVAR___NHOActionSetIntent__homeID];
  v146._countAndFlagsBits = 0xD000000000000024;
  v146._object = 0x800000025B167470;
  v99 = v97;
  sub_25B161274();
  sub_25B161154();

  v100 = _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD00000000000001CLL, 0x800000025B1674A0);
  v101 = *&v99[OBJC_IVAR___NHOActionSetIntent__homeName];
  v146._countAndFlagsBits = v100;
  v146._object = v102;
  sub_25B161274();
  sub_25B161154();

  v103 = *&v99[OBJC_IVAR___NHOActionSetIntent__actionSetID];
  v146._countAndFlagsBits = 0xD000000000000024;
  v146._object = 0x800000025B167470;
  sub_25B161274();
  sub_25B161154();

  v104 = _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD000000000000021, 0x800000025B1674C0);
  v105 = *&v99[OBJC_IVAR___NHOActionSetIntent__actionSetName];
  v146._countAndFlagsBits = v104;
  v146._object = v106;
  sub_25B161274();
  sub_25B161154();

  v107 = *&v99[OBJC_IVAR___NHOActionSetIntent__icon];
  v146._countAndFlagsBits = 0x78616D2E6E7573;
  v146._object = 0xE700000000000000;
  sub_25B161274();
  sub_25B161154();

  sub_25B161A34();
  v108 = Color.toHexString()();

  v109 = *&v99[OBJC_IVAR___NHOActionSetIntent__iconTintColor];
  v146 = v108;
  sub_25B161274();
  sub_25B161154();

  v110 = *&v99[OBJC_IVAR___NHOActionSetIntent__useHomeKitRecommendations];
  LOBYTE(v146._countAndFlagsBits) = 0;
  sub_25B161274();
  sub_25B161154();

  return v99;
}

id NHOActionSetIntent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B142958@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B58 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A5C0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25B142A3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B114758;

  return NHOActionSetIntent.perform()(a1);
}

uint64_t sub_25B142AD4()
{
  v1 = sub_25B142FF0(&qword_27FA3A650);

  return MEMORY[0x28210B538](v0, v1);
}

uint64_t NHOActionSetIntent.configuredHomeID.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___NHOActionSetIntent__home);
  sub_25B161274();
  sub_25B161144();

  if (v6)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B120358(v6);
    sub_25B1610F4();
    sub_25B120358(v6);
    return v5;
  }

  else
  {
    sub_25B120358(0);
    v4 = *(v1 + OBJC_IVAR___NHOActionSetIntent__homeID);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t NHOActionSetIntent.configuredHomeName.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___NHOActionSetIntent__home);
  sub_25B161274();
  sub_25B161144();

  if (v6)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B120358(v6);
    sub_25B1610F4();
    sub_25B120358(v6);
    return v5;
  }

  else
  {
    sub_25B120358(0);
    v4 = *(v1 + OBJC_IVAR___NHOActionSetIntent__homeName);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t NHOActionSetIntent.configuredActionSetName.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___NHOActionSetIntent__accessoriesAndScenes);
  sub_25B161274();
  sub_25B161144();

  if (v6)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B128C68(v6);
    sub_25B1610F4();
    sub_25B128C68(v6);
    return v5;
  }

  else
  {
    sub_25B128C68(0);
    v4 = *(v1 + OBJC_IVAR___NHOActionSetIntent__actionSetName);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t NHOActionSetIntent.configuredIcon.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___NHOActionSetIntent__accessoriesAndScenes);
  sub_25B161274();
  sub_25B161144();

  if (v6)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B128C68(v6);
    sub_25B1610F4();
    sub_25B128C68(v6);
    return v5;
  }

  else
  {
    sub_25B128C68(0);
    v4 = *(v1 + OBJC_IVAR___NHOActionSetIntent__icon);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t _s15NanoHomeIntents18NHOActionSetIntentC016configuredActionE2IDSSvg_0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___NHOActionSetIntent__accessoriesAndScenes);
  sub_25B161274();
  sub_25B161144();

  if (v6)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B128C68(v6);
    sub_25B1610F4();
    sub_25B128C68(v6);
    return v5;
  }

  else
  {
    sub_25B128C68(0);
    v4 = *(v1 + OBJC_IVAR___NHOActionSetIntent__actionSetID);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t sub_25B142FF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NHOActionSetIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id NHOIntentConstants.WidgetKind.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NHOIntentConstants.WidgetKind.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NHOIntentConstants.WidgetKind();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NHOIntentConstants.WidgetKind.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NHOIntentConstants.WidgetKind();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id NHOIntentConstants.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NHOIntentConstants.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AccessoryControlIntent.home.setter(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_25B161154();
}

uint64_t AccessoryControlIntent.onlyShowControlAccessories.getter()
{
  v1 = *(v0 + 24);
  sub_25B161144();
  return v3;
}

uint64_t sub_25B1438EC()
{
  v0 = sub_25B161584();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_25B1613F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B161B14();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_25B161414();
  __swift_allocate_value_buffer(v9, qword_27FA3A678);
  __swift_project_value_buffer(v9, qword_27FA3A678);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_27FA3E770);
  (*(v3 + 16))(v6, v10, v2);
  sub_25B161574();
  return sub_25B161424();
}

uint64_t static AccessoryControlIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B68 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A678);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t (*AccessoryControlIntent.home.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t sub_25B143C7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  sub_25B145AA0(*a1);
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161154();
}

uint64_t AccessoryControlIntent.accessoriesAndScenes.setter(__int128 *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 4);
  return sub_25B161154();
}

uint64_t (*AccessoryControlIntent.accessoriesAndScenes.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t AccessoryControlIntent.useHomeKitRecommendations.getter()
{
  v1 = *(v0 + 16);
  sub_25B161144();
  return v3;
}

uint64_t sub_25B143E28(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = *a1;
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*AccessoryControlIntent.useHomeKitRecommendations.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_25B161134();
  return sub_25B10BAFC;
}

uint64_t (*AccessoryControlIntent.onlyShowControlAccessories.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t static AccessoryControlIntent.parameterSummary.getter()
{
  sub_25B144160();

  return sub_25B161284();
}

uint64_t sub_25B14406C()
{
  swift_getKeyPath();
  sub_25B144160();
  v0 = sub_25B161274();

  swift_getKeyPath();
  sub_25B161274();
  v1 = sub_25B161274();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25B163820;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  sub_25B161274();
  v3 = sub_25B161264();

  return v3;
}

unint64_t sub_25B144160()
{
  result = qword_27FA3A690;
  if (!qword_27FA3A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A690);
  }

  return result;
}

uint64_t AccessoryControlIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v75 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v59 = &v53 - v3;
  v4 = sub_25B161294();
  v5 = *(v4 - 8);
  v78 = v4;
  v79 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v63 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v58 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v74 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v57 = &v53 - v15;
  v16 = sub_25B161584();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_25B1613F4();
  v77 = *(v73 - 8);
  v20 = *(v77 + 64);
  MEMORY[0x28223BE20](v73);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_25B161B14();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_25B161414();
  v27 = *(v76 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v76);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v72 = "HOME_ACCESSORY_ENTITY_TITLE";
  v29 = v73;
  v67 = __swift_project_value_buffer(v73, qword_27FA3E770);
  v30 = *(v77 + 16);
  v77 += 16;
  v61 = v30;
  v30(v22, v67, v29);
  sub_25B161574();
  v65 = v19;
  v60 = v26;
  sub_25B161424();
  v31 = *(v27 + 56);
  v64 = v27 + 56;
  v70 = v31;
  v32 = v57;
  v31(v57, 1, 1, v76);
  v33 = sub_25B1610C4();
  v69 = v33;
  v80 = 0uLL;
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v68 = v35;
  v66 = v34 + 56;
  v35(v74, 1, 1, v33);
  v36 = v58;
  v35(v58, 1, 1, v33);
  v62 = *MEMORY[0x277CBA308];
  v37 = *(v79 + 104);
  v79 += 104;
  v71 = v37;
  v37(v63);
  sub_25B120304();
  v38 = v32;
  *v75 = sub_25B161184();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A698, &unk_25B1654E0);
  sub_25B161AC4();
  v54 = v22;
  v39 = v73;
  v40 = v61;
  v61(v22, v67, v73);
  sub_25B161574();
  sub_25B161424();
  v70(v32, 1, 1, v76);
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  v42 = v68;
  v41 = v69;
  v68(v74, 1, 1, v69);
  v42(v36, 1, 1, v41);
  v43 = v63;
  v71(v63, v62, v78);
  sub_25B11ADCC();
  v44 = sub_25B161184();
  v45 = v75;
  v75[1] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A160, &qword_25B163B10);
  sub_25B161AC4();
  v46 = v54;
  v40(v54, v67, v39);
  sub_25B161574();
  v47 = v46;
  sub_25B161424();
  v70(v38, 1, 1, v76);
  LOBYTE(v80) = 2;
  v55 = sub_25B161CB4();
  v48 = *(v55 - 8);
  v56 = *(v48 + 56);
  v58 = (v48 + 56);
  v49 = v59;
  v56(v59, 1, 1, v55);
  v50 = v74;
  v68(v74, 1, 1, v69);
  v51 = v62;
  v71(v43, v62, v78);
  v45[2] = sub_25B1611A4();
  sub_25B161AC4();
  v61(v47, v67, v73);
  sub_25B161574();
  sub_25B161424();
  v70(v38, 1, 1, v76);
  LOBYTE(v80) = 1;
  v56(v49, 1, 1, v55);
  v68(v50, 1, 1, v69);
  v71(v43, v51, v78);
  result = sub_25B1611A4();
  v75[3] = result;
  return result;
}

uint64_t AccessoryControlIntent.init(home:accessoriesAndScenes:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v90 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = &v78 - v7;
  v8 = sub_25B161294();
  v9 = *(v8 - 8);
  v112 = v8;
  v113 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v108 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v97 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v96 = &v78 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v78 - v19;
  v21 = sub_25B161584();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v107 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_25B1613F4();
  v110 = *(v24 - 8);
  v111 = v24;
  v25 = *(v110 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_25B161B14();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_25B161414();
  v32 = *(v109 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v109);
  v34 = a1[1];
  v89 = *a1;
  v88 = v34;
  v35 = a2[1];
  v87 = *a2;
  v91 = v35;
  v36 = a2[3];
  v92 = a2[2];
  v86 = v36;
  v85 = a2[4];
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v37 = v111;
  v93 = __swift_project_value_buffer(v111, qword_27FA3E770);
  v38 = *(v110 + 16);
  v110 += 16;
  v103 = v38;
  v38(v27, v93, v37);
  sub_25B161574();
  v99 = v31;
  sub_25B161424();
  v106 = *(v32 + 56);
  v102 = v32 + 56;
  v106(v20, 1, 1, v109);
  v39 = v20;
  v40 = sub_25B1610C4();
  v104 = v40;
  v115 = 0uLL;
  v41 = *(v40 - 8);
  v42 = *(v41 + 56);
  v101 = v42;
  v105 = v41 + 56;
  v42(v96, 1, 1, v40);
  v43 = v97;
  v42(v97, 1, 1, v40);
  v100 = *MEMORY[0x277CBA308];
  v44 = *(v113 + 104);
  v113 += 104;
  v95 = v44;
  v44(v108);
  sub_25B120304();
  v98 = sub_25B161184();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A698, &unk_25B1654E0);
  v94 = "HOME_ACCESSORY_ENTITY_TITLE";
  sub_25B161AC4();
  v79 = v27;
  v45 = v27;
  v46 = v93;
  v103(v45, v93, v111);
  sub_25B161574();
  sub_25B161424();
  v47 = v109;
  v106(v39, 1, 1, v109);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v48 = v96;
  v49 = v104;
  v50 = v101;
  v101(v96, 1, 1, v104);
  v50(v43, 1, 1, v49);
  v95(v108, v100, v112);
  sub_25B11ADCC();
  v51 = v48;
  v97 = sub_25B161184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A160, &qword_25B163B10);
  sub_25B161AC4();
  v52 = v79;
  v103(v79, v46, v111);
  sub_25B161574();
  v53 = v52;
  sub_25B161424();
  v106(v39, 1, 1, v47);
  LOBYTE(v115) = 2;
  v80 = sub_25B161CB4();
  v54 = *(v80 - 8);
  v81 = *(v54 + 56);
  v55 = v108;
  v82 = v54 + 56;
  v56 = v84;
  v81(v84, 1, 1, v80);
  v101(v51, 1, 1, v104);
  v57 = v95;
  v95(v55, v100, v112);
  v83 = sub_25B1611A4();
  sub_25B161AC4();
  v103(v53, v93, v111);
  sub_25B161574();
  sub_25B161424();
  v106(v39, 1, 1, v109);
  LOBYTE(v115) = 1;
  v81(v56, 1, 1, v80);
  v101(v51, 1, 1, v104);
  v57(v55, v100, v112);
  v58 = sub_25B1611A4();
  v59 = v89;
  *&v115 = v89;
  *(&v115 + 1) = v88;
  sub_25B11B1C8(v89);
  sub_25B161154();
  v60 = v87;
  *&v115 = v87;
  *(&v115 + 1) = v91;
  *&v116 = v92;
  *(&v116 + 1) = v86;
  v117 = v85;
  sub_25B145AA0(v87);
  sub_25B161154();
  LOBYTE(v115) = 1;
  v113 = v58;
  sub_25B161154();
  if (qword_27FA39B08 != -1)
  {
    swift_once();
  }

  v61 = sub_25B161A14();
  __swift_project_value_buffer(v61, qword_27FA3A0A0);
  sub_25B11B1C8(v59);
  sub_25B145AA0(v60);
  v62 = sub_25B1619F4();
  v63 = sub_25B161D94();
  sub_25B120358(v59);
  sub_25B11A98C(v60);
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v114 = v65;
    *v64 = 136315394;
    v66 = v60;
    if (v59)
    {
      sub_25B1610F4();
      sub_25B120358(v59);
      v68 = *(&v115 + 1);
      v67 = v115;
    }

    else
    {
      v68 = 0xE300000000000000;
      v67 = 7104878;
    }

    v69 = sub_25B108480(v67, v68, &v114);

    *(v64 + 4) = v69;
    *(v64 + 12) = 2080;
    if (v66)
    {
      sub_25B1610F4();
      sub_25B11A98C(v66);
      v71 = *(&v115 + 1);
      v70 = v115;
    }

    else
    {
      v71 = 0xE300000000000000;
      v70 = 7104878;
    }

    v72 = sub_25B108480(v70, v71, &v114);

    *(v64 + 14) = v72;
    _os_log_impl(&dword_25B105000, v62, v63, "AccessoryControlIntent initialized with home %s, accessory %s", v64, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v65, -1, -1);
    MEMORY[0x25F862BF0](v64, -1, -1);
  }

  else
  {

    sub_25B120358(v59);
    sub_25B11A98C(v60);
  }

  LOBYTE(v115) = 0;
  v73 = v83;
  result = sub_25B161154();
  v75 = v90;
  v76 = v97;
  *v90 = v98;
  v75[1] = v76;
  v77 = v113;
  v75[2] = v73;
  v75[3] = v77;
  return result;
}

uint64_t sub_25B145994@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B68 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A678);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25B145A64(uint64_t a1)
{
  v2 = sub_25B144160();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_25B145AA0(uint64_t result)
{
  if (result)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();

    return sub_25B161274();
  }

  return result;
}

unint64_t sub_25B145B14()
{
  result = qword_27FA3A6A0;
  if (!qword_27FA3A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A6A0);
  }

  return result;
}

unint64_t sub_25B145B6C()
{
  result = qword_27FA3A6A8;
  if (!qword_27FA3A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A6A8);
  }

  return result;
}

double sub_25B145C00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_25B161144();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_25B145C48@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_25B161144();
  *a2 = v5;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25B145C9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25B145CE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25B145DC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_25B161164();
  *a2 = result;
  return result;
}

char *ElectricityUsageIntent.__allocating_init(homeIdentifier:homeName:)()
{
  v1 = sub_25B161414();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = [objc_allocWithZone(v0) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
  v4 = v3;
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B161104();
  sub_25B161104();
  v5 = *&v4[OBJC_IVAR___NHOElectricityUsageIntent__home];
  sub_25B161274();
  sub_25B161154();

  return v4;
}

uint64_t sub_25B145F70()
{
  v0 = sub_25B161414();
  __swift_allocate_value_buffer(v0, qword_27FA3A6C0);
  __swift_project_value_buffer(v0, qword_27FA3A6C0);
  return sub_25B1613E4();
}

uint64_t (*static ElectricityUsageIntent.title.modify())()
{
  if (qword_27FA39B70 != -1)
  {
    swift_once();
  }

  v0 = sub_25B161414();
  __swift_project_value_buffer(v0, qword_27FA3A6C0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25B1460D8()
{
  v0 = sub_25B1611D4();
  __swift_allocate_value_buffer(v0, qword_27FA3A6D8);
  __swift_project_value_buffer(v0, qword_27FA3A6D8);
  return sub_25B1611C4();
}

uint64_t (*static ElectricityUsageIntent.description.modify())()
{
  if (qword_27FA39B78 != -1)
  {
    swift_once();
  }

  v0 = sub_25B1611D4();
  __swift_project_value_buffer(v0, qword_27FA3A6D8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t (*ElectricityUsageIntent.homeID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOElectricityUsageIntent__homeID);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*ElectricityUsageIntent.homeName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOElectricityUsageIntent__homeName);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t ElectricityUsageIntent.home.getter()
{
  v1 = *(v0 + OBJC_IVAR___NHOElectricityUsageIntent__home);
  sub_25B161274();
  sub_25B161144();
}

double sub_25B1463F0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___NHOElectricityUsageIntent__home);
  sub_25B161274();
  sub_25B161144();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_25B146448(uint64_t *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR___NHOElectricityUsageIntent__home);
  v4 = a1[1];
  sub_25B11B1C8(*a1);
  sub_25B161274();
  sub_25B161154();
}

uint64_t ElectricityUsageIntent.home.setter(__int128 *a1)
{
  v2 = *(v1 + OBJC_IVAR___NHOElectricityUsageIntent__home);
  v4 = *a1;
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*ElectricityUsageIntent.home.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOElectricityUsageIntent__home);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B11E120;
}

uint64_t static ElectricityUsageIntent.parameterSummary.getter()
{
  sub_25B147710(&qword_27FA3A708);

  return sub_25B161284();
}

uint64_t sub_25B146604()
{
  swift_getKeyPath();
  sub_25B147710(&qword_27FA3A708);
  v0 = sub_25B161274();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25B163810;
  *(v1 + 32) = v0;
  type metadata accessor for ElectricityUsageIntent();
  sub_25B161274();
  v2 = sub_25B161264();

  return v2;
}

uint64_t sub_25B146704@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___NHOElectricityUsageIntent__home);
  sub_25B161274();
  v4 = sub_25B161164();

  *a2 = v4;
  return result;
}

id ElectricityUsageIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ElectricityUsageIntent.init()()
{
  ObjectType = swift_getObjectType();
  v0 = sub_25B161584();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v56 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_25B1613F4();
  v53 = *(v55 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B161B14();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_25B161294();
  v8 = *(v64 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v64);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v52 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE8, &unk_25B163AE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v45 - v24;
  v26 = sub_25B161414();
  v62 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v51 = OBJC_IVAR___NHOElectricityUsageIntent__homeID;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF0, &qword_25B163AF0);
  sub_25B1613E4();
  v29 = *(v27 + 56);
  v60 = v27 + 56;
  v61 = v29;
  v29(v25, 1, 1, v26);
  v47 = sub_25B161AB4();
  v66 = 0;
  v67 = 0;
  v30 = *(v47 - 8);
  v46 = *(v30 + 56);
  v50 = (v30 + 56);
  v31 = v21;
  v46(v21, 1, 1, v47);
  v32 = sub_25B1610C4();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v58 = v33 + 56;
  v59 = v34;
  v34(v17, 1, 1, v32);
  v35 = *MEMORY[0x277CBA308];
  v36 = *(v8 + 104);
  v63 = v8 + 104;
  v36(v11, v35, v64);
  v37 = v17;
  v38 = v11;
  v39 = sub_25B161194();
  v40 = v48;
  *&v48[v51] = v39;
  v45 = OBJC_IVAR___NHOElectricityUsageIntent__homeName;
  sub_25B1613E4();
  v61(v25, 1, 1, v62);
  v66 = 0;
  v67 = 0;
  v46(v31, 1, 1, v47);
  v59(v37, 1, 1, v32);
  LODWORD(v47) = v35;
  v46 = v36;
  v36(v38, v35, v64);
  v50 = v25;
  v51 = v38;
  *&v40[v45] = sub_25B161194();
  v45 = OBJC_IVAR___NHOElectricityUsageIntent__home;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v41 = v55;
  v42 = __swift_project_value_buffer(v55, qword_27FA3E770);
  (*(v53 + 16))(v54, v42, v41);
  sub_25B161574();
  sub_25B161424();
  v61(v50, 1, 1, v62);
  v66 = 0;
  v67 = 0;
  v43 = v59;
  v59(v37, 1, 1, v32);
  v43(v52, 1, 1, v32);
  (v46)(v51, v47, v64);
  sub_25B120304();
  *&v40[v45] = sub_25B161184();
  v65.receiver = v40;
  v65.super_class = ObjectType;
  return objc_msgSendSuper2(&v65, sel_init);
}

char *ElectricityUsageIntent.__allocating_init(homeIdentifier:)()
{
  v1 = sub_25B161414();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = [objc_allocWithZone(v0) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
  v4 = v3;
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B161104();
  sub_25B161104();
  v5 = *&v4[OBJC_IVAR___NHOElectricityUsageIntent__home];
  sub_25B161274();
  sub_25B161154();

  return v4;
}

id ElectricityUsageIntent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B147120@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B70 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A6C0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25B147204(uint64_t a1, uint64_t a2)
{
  v4 = *(MEMORY[0x277CBA3A8] + 4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_25B147710(&qword_27FA3A730);
  *v5 = v2;
  v5[1] = sub_25B11FFE8;

  return MEMORY[0x28210C3E0](a2, v6);
}

uint64_t sub_25B1472CC()
{
  v1 = sub_25B147710(&qword_27FA3A708);

  return MEMORY[0x28210B538](v0, v1);
}

uint64_t ElectricityUsageIntent.configuredHomeID.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___NHOElectricityUsageIntent__home);
  sub_25B161274();
  sub_25B161144();

  if (v6)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B120358(v6);
    sub_25B1610F4();
    sub_25B120358(v6);
    return v5;
  }

  else
  {
    sub_25B120358(0);
    v4 = *(v1 + OBJC_IVAR___NHOElectricityUsageIntent__homeID);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t ElectricityUsageIntent.configuredHomeName.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___NHOElectricityUsageIntent__home);
  sub_25B161274();
  sub_25B161144();

  if (v6)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B120358(v6);
    sub_25B1610F4();
    sub_25B120358(v6);
    return v5;
  }

  else
  {
    sub_25B120358(0);
    v4 = *(v1 + OBJC_IVAR___NHOElectricityUsageIntent__homeName);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

unint64_t sub_25B1476AC()
{
  result = qword_27FA3A720;
  if (!qword_27FA3A720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA3A728, &qword_25B165818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A720);
  }

  return result;
}

uint64_t sub_25B147710(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ElectricityUsageIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *HMAccessory.serviceGroup.getter()
{
  v1 = [v0 home];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 serviceGroups];

    sub_25B132284(0, &qword_27FA3A470, 0x277CD1D98);
    v4 = sub_25B161C64();

    v5 = [v0 services];
    v30 = sub_25B132284(0, &qword_27FA39E58, 0x277CD1D90);
    v6 = sub_25B161C64();

    v7 = v6;
    if (v6 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v7 = v20)
    {
      if (v4 >> 62)
      {
LABEL_33:
        v21 = v7;
        v29 = v4 & 0xFFFFFFFFFFFFFF8;
        v31 = sub_25B161E54();
        v7 = v21;
      }

      else
      {
        v29 = v4 & 0xFFFFFFFFFFFFFF8;
        v31 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = 0;
      v26 = v7;
      v27 = v7 & 0xC000000000000001;
      v23 = v7 + 32;
      v24 = v7 & 0xFFFFFFFFFFFFFF8;
      v25 = i;
      while (1)
      {
        if (v27)
        {
          v7 = MEMORY[0x25F862410](v9, v26);
        }

        else
        {
          if (v9 >= *(v24 + 16))
          {
            __break(1u);
            goto LABEL_33;
          }

          v7 = *(v23 + 8 * v9);
        }

        v10 = v7;
        v11 = __OFADD__(v9, 1);
        v12 = v9 + 1;
        if (v11)
        {
          goto LABEL_29;
        }

        v28 = v12;
        if (v31)
        {
          break;
        }

LABEL_7:

        i = v25;
        v9 = v28;
        if (v28 == v25)
        {
          goto LABEL_24;
        }
      }

      v13 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x25F862410](v13, v4);
        }

        else
        {
          if (v13 >= *(v29 + 16))
          {
            goto LABEL_28;
          }

          v7 = *(v4 + 8 * v13 + 32);
        }

        v14 = v7;
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v16 = [v7 services];
        v17 = sub_25B161C64();

        v32 = v10;
        MEMORY[0x28223BE20](v18);
        v22[2] = &v32;
        LOBYTE(v16) = sub_25B130E80(sub_25B1491D4, v22, v17);

        if (v16)
        {

          return v14;
        }

        ++v13;
        if (v15 == v31)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v20 = v7;
      i = sub_25B161E54();
    }

LABEL_24:
  }

  return 0;
}

uint64_t HMAccessory.widgetSupportedServiceKind()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B1616A4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v85 = &v78[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v78[-v9];
  MEMORY[0x28223BE20](v8);
  v86 = &v78[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E08, &qword_25B1637D8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v78[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v78[-v17];
  v19 = *(v4 + 56);
  v19(&v78[-v17], 1, 1, v3);
  v82 = v1;
  v20 = HMAccessory.primaryService()();
  if (!v20)
  {
    sub_25B11D9B8(v18);
    return v19(a1, 1, 1, v3);
  }

  v21 = v20;
  v81 = v19;
  v83 = a1;
  v84 = v18;
  sub_25B161E04();
  v22 = *(v4 + 48);
  if (v22(v16, 1, v3) == 1)
  {
    v23 = v86;
    sub_25B161DD4();
    if (v22(v16, 1, v3) != 1)
    {
      sub_25B11D9B8(v16);
    }
  }

  else
  {
    v23 = v86;
    (*(v4 + 32))(v86, v16, v3);
  }

  (*(v4 + 16))(v10, v23, v3);
  v25 = (*(v4 + 88))(v10, v3);
  v26 = *MEMORY[0x277D15640];
  v27 = v83;
  v28 = v84;
  if (v25 == *MEMORY[0x277D15810] || v25 == *MEMORY[0x277D15760] || v25 == *MEMORY[0x277D158D0] || v25 == *MEMORY[0x277D156D8] || v25 == *MEMORY[0x277D15870] || v25 == *MEMORY[0x277D15888] || v25 == v26 || v25 == *MEMORY[0x277D15718] || v25 == *MEMORY[0x277D15898] || v25 == *MEMORY[0x277D15720])
  {
    (*(v4 + 104))(v85, v26, v3);
    sub_25B149264();
    sub_25B161C14();
    sub_25B161C14();
    if (v89[0] == v87 && v89[1] == v88)
    {
      v55 = 1;
    }

    else
    {
      v55 = sub_25B161FA4();
    }

    v56 = v81;
    v57 = *(v4 + 8);
    v58 = v85;
    v85 = (v4 + 8);
    v81 = v57;
    (v57)(v58, v3);

    if (v55)
    {
      sub_25B11D9B8(v28);
    }

    else
    {
      v59 = HMService.primaryControlCharacteristic.getter();
      if (!v59)
      {
        if (qword_27FA39AF0 != -1)
        {
          swift_once();
        }

        v61 = sub_25B161A14();
        __swift_project_value_buffer(v61, qword_27FA3A058);
        v62 = v21;
        v63 = v82;
        v64 = sub_25B1619F4();
        v65 = sub_25B161D64();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v89[0] = v82;
          *v66 = 136315650;
          *(v66 + 4) = sub_25B108480(0xD00000000000001CLL, 0x800000025B166700, v89);
          v79 = v65;
          *(v66 + 12) = 2080;
          v67 = [v62 name];
          v68 = sub_25B161B34();
          v80 = v62;
          v70 = v69;

          v71 = sub_25B108480(v68, v70, v89);

          *(v66 + 14) = v71;
          *(v66 + 22) = 2080;
          v72 = [v63 name];
          v73 = sub_25B161B34();
          v75 = v74;

          v76 = sub_25B108480(v73, v75, v89);

          *(v66 + 24) = v76;
          v28 = v84;
          _os_log_impl(&dword_25B105000, v64, v79, "%s: Did not find primary control characteristic for service %s for accessory %s", v66, 0x20u);
          v77 = v82;
          swift_arrayDestroy();
          MEMORY[0x25F862BF0](v77, -1, -1);
          MEMORY[0x25F862BF0](v66, -1, -1);
        }

        else
        {
        }

        (v81)(v86, v3);
        return sub_25B1491F4(v28, v27);
      }

      v60 = v59;

      sub_25B11D9B8(v28);
    }

    (*(v4 + 32))(v28, v86, v3);
    v56(v28, 0, 1, v3);
  }

  else
  {
    v29 = *(v4 + 8);
    v29(v10, v3);
    if (qword_27FA39AF0 != -1)
    {
      swift_once();
    }

    v30 = sub_25B161A14();
    __swift_project_value_buffer(v30, qword_27FA3A058);
    v31 = v21;
    v32 = v82;
    v33 = sub_25B1619F4();
    v34 = sub_25B161D64();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      LODWORD(v81) = v34;
      v36 = v35;
      v85 = swift_slowAlloc();
      v89[0] = v85;
      *v36 = 136315906;
      *(v36 + 4) = sub_25B108480(0xD00000000000001CLL, 0x800000025B166700, v89);
      *(v36 + 12) = 2080;
      v37 = [v31 serviceType];
      v82 = v29;
      v38 = v37;
      v39 = sub_25B161B34();
      v41 = v40;

      v42 = sub_25B108480(v39, v41, v89);

      *(v36 + 14) = v42;
      *(v36 + 22) = 2080;
      v43 = [v31 name];
      v44 = sub_25B161B34();
      v46 = v45;

      v47 = sub_25B108480(v44, v46, v89);

      *(v36 + 24) = v47;
      *(v36 + 32) = 2080;
      v27 = v83;
      v48 = [v32 name];
      v49 = sub_25B161B34();
      v51 = v50;

      v52 = v49;
      v28 = v84;
      v53 = sub_25B108480(v52, v51, v89);

      *(v36 + 34) = v53;
      _os_log_impl(&dword_25B105000, v33, v81, "%s: ServiceType %s for service %s for accessory %s is not supported.", v36, 0x2Au);
      v54 = v85;
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v54, -1, -1);
      MEMORY[0x25F862BF0](v36, -1, -1);

      (v82)(v86, v3);
    }

    else
    {

      v29(v86, v3);
    }
  }

  return sub_25B1491F4(v28, v27);
}

HMService_optional __swiftcall HMAccessory.primaryService()()
{
  v1 = [v0 services];
  sub_25B132284(0, &qword_27FA39E58, 0x277CD1D90);
  v2 = sub_25B161C64();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B161E54())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x25F862410](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isPrimaryService])
      {

        goto LABEL_17;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v6 = 0;
LABEL_17:
  v9 = v6;
  result.value.super.isa = v9;
  result.is_nil = v8;
  return result;
}

uint64_t HMAccessory.isInServiceGroup.getter()
{
  result = [v0 home];
  if (result)
  {
    v2 = result;
    v3 = [result serviceGroups];

    sub_25B132284(0, &qword_27FA3A470, 0x277CD1D98);
    v4 = sub_25B161C64();

    v5 = HMAccessory.primaryService()();
    if (v5)
    {
      v6 = v5;
      if (v4 >> 62)
      {
LABEL_19:
        v15 = v4 & 0xFFFFFFFFFFFFFF8;
        v7 = sub_25B161E54();
      }

      else
      {
        v15 = v4 & 0xFFFFFFFFFFFFFF8;
        v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; v7 != i; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x25F862410](i, v4);
        }

        else
        {
          if (i >= *(v15 + 16))
          {
            goto LABEL_18;
          }

          v9 = *(v4 + 8 * i + 32);
        }

        v10 = v9;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v11 = [v9 services];
        sub_25B132284(0, &qword_27FA39E58, 0x277CD1D90);
        v12 = sub_25B161C64();

        v16 = v6;
        MEMORY[0x28223BE20](v13);
        v14[2] = &v16;
        LOBYTE(v11) = sub_25B130E80(sub_25B1492BC, v14, v12);

        if (v11)
        {

          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t HMAccessory.controlSupportedServiceKind()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B1616A4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E08, &qword_25B1637D8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v72 - v13;
  v15 = *(v4 + 56);
  v15(&v72 - v13, 1, 1, v3);
  v77 = v1;
  v16 = HMAccessory.primaryService()();
  if (!v16)
  {
    sub_25B11D9B8(v14);
    return (v15)(a1, 1, 1, v3);
  }

  v17 = v16;
  v78 = v14;
  v76 = a1;
  sub_25B161E04();
  v18 = *(v4 + 48);
  v19 = v18(v12, 1, v3);
  v75 = v4;
  if (v19 == 1)
  {
    sub_25B161DD4();
    v20 = v18(v12, 1, v3);
    v21 = v7;
    v22 = v3;
    if (v20 != 1)
    {
      sub_25B11D9B8(v12);
    }
  }

  else
  {
    v21 = v7;
    (*(v4 + 32))(v7, v12, v3);
    v22 = v3;
  }

  v24 = ServiceKind.isSupportedByControls.getter();
  v25 = v76;
  if ((v24 & 1) == 0)
  {
    if (qword_27FA39B08 != -1)
    {
      swift_once();
    }

    v29 = sub_25B161A14();
    __swift_project_value_buffer(v29, qword_27FA3A0A0);
    v30 = v17;
    v31 = v77;
    v32 = sub_25B1619F4();
    v33 = sub_25B161D64();

    if (!os_log_type_enabled(v32, v33))
    {

      (*(v75 + 8))(v21, v22);
      return sub_25B1491F4(v78, v25);
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v79 = v35;
    v73 = v31;
    *v34 = 136315906;
    *(v34 + 4) = sub_25B108480(0xD00000000000001DLL, 0x800000025B166720, &v79);
    *(v34 + 12) = 2080;
    v36 = [v30 serviceType];
    v74 = v22;
    v37 = v36;
    v38 = sub_25B161B34();
    v39 = v25;
    v41 = v40;

    v42 = sub_25B108480(v38, v41, &v79);

    *(v34 + 14) = v42;
    *(v34 + 22) = 2080;
    v77 = v21;
    v43 = [v30 name];
    v44 = sub_25B161B34();
    v46 = v45;

    v47 = sub_25B108480(v44, v46, &v79);

    *(v34 + 24) = v47;
    *(v34 + 32) = 2080;
    v48 = [v73 name];
    v49 = sub_25B161B34();
    v51 = v50;

    v52 = v49;
    v25 = v39;
    v53 = sub_25B108480(v52, v51, &v79);

    *(v34 + 34) = v53;
    _os_log_impl(&dword_25B105000, v32, v33, "%s: ServiceType %s for service %s for accessory %s is not supported.", v34, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v35, -1, -1);
    MEMORY[0x25F862BF0](v34, -1, -1);

LABEL_19:
    (*(v75 + 8))(v77, v74);
    return sub_25B1491F4(v78, v25);
  }

  v26 = HMService.primaryControlCharacteristic.getter();
  if (!v26)
  {
    v74 = v22;
    if (qword_27FA39B08 != -1)
    {
      swift_once();
    }

    v54 = sub_25B161A14();
    __swift_project_value_buffer(v54, qword_27FA3A0A0);
    v55 = v17;
    v56 = v77;
    v32 = sub_25B1619F4();
    v57 = sub_25B161D64();

    if (!os_log_type_enabled(v32, v57))
    {

      (*(v75 + 8))(v21, v74);
      return sub_25B1491F4(v78, v25);
    }

    v58 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v79 = v73;
    *v58 = 136315650;
    *(v58 + 4) = sub_25B108480(0xD00000000000001DLL, 0x800000025B166720, &v79);
    v77 = v21;
    *(v58 + 12) = 2080;
    v59 = [v55 name];
    v60 = sub_25B161B34();
    v62 = v61;

    v63 = sub_25B108480(v60, v62, &v79);

    *(v58 + 14) = v63;
    *(v58 + 22) = 2080;
    v64 = v76;
    v65 = [v56 name];
    v66 = sub_25B161B34();
    v68 = v67;

    v69 = v66;
    v25 = v64;
    v70 = sub_25B108480(v69, v68, &v79);

    *(v58 + 24) = v70;
    _os_log_impl(&dword_25B105000, v32, v57, "%s: Did not find primary control characteristic for service %s for accessory %s", v58, 0x20u);
    v71 = v73;
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v71, -1, -1);
    MEMORY[0x25F862BF0](v58, -1, -1);

    goto LABEL_19;
  }

  v27 = v26;

  v28 = v78;
  sub_25B11D9B8(v78);
  (*(v75 + 32))(v28, v21, v22);
  v15(v28, 0, 1, v22);
  return sub_25B1491F4(v78, v25);
}

HMService_optional __swiftcall HMAccessory.serviceWithPrimaryControlCharacteristic()()
{
  v1 = v0;
  v2 = sub_25B1616A4();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v33 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v32 = &v26 - v7;
  v8 = HMAccessory.primaryService()();
  v9 = v8;
  if (v8 && (v10 = v8, v11 = HMService.primaryControlCharacteristic.getter(), v10, v11))
  {
  }

  else
  {
    v13 = [v1 services];
    sub_25B132284(0, &qword_27FA39E58, 0x277CD1D90);
    v14 = sub_25B161C64();

    v26 = v9;
    if (v14 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B161E54())
    {
      v16 = 0;
      v30 = v14 & 0xFFFFFFFFFFFFFF8;
      v31 = v14 & 0xC000000000000001;
      v29 = *MEMORY[0x277D15640];
      v27 = i;
      v28 = (v3 + 13);
      v17 = (v3 + 1);
      while (1)
      {
        if (v31)
        {
          v18 = MEMORY[0x25F862410](v16, v14);
        }

        else
        {
          if (v16 >= *(v30 + 16))
          {
            goto LABEL_23;
          }

          v18 = *(v14 + 8 * v16 + 32);
        }

        v3 = v18;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v20 = HMService.primaryControlCharacteristic.getter();
        if (v20)
        {
          v23 = v20;

          goto LABEL_21;
        }

        sub_25B161DD4();
        (*v28)(v33, v29, v2);
        sub_25B149264();
        sub_25B161C14();
        sub_25B161C14();
        if (v36 == v34 && v37 == v35)
        {
          v24 = *v17;
          (*v17)(v33, v2);
          v24(v32, v2);

LABEL_20:

LABEL_21:

          v9 = v3;
          goto LABEL_26;
        }

        v21 = sub_25B161FA4();
        v22 = *v17;
        (*v17)(v33, v2);
        v22(v32, v2);

        if (v21)
        {
          goto LABEL_20;
        }

        ++v16;
        if (v19 == v27)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_25:

    v9 = 0;
  }

LABEL_26:
  v25 = v9;
  result.value.super.isa = v25;
  result.is_nil = v12;
  return result;
}

uint64_t sub_25B1491F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E08, &qword_25B1637D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25B149264()
{
  result = qword_27FA39E18;
  if (!qword_27FA39E18)
  {
    sub_25B1616A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39E18);
  }

  return result;
}

id NHOHomeUserCapabilities.__allocating_init(home:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___NHOHomeUserCapabilities_logger;
  if (qword_27FA39AF8 != -1)
  {
    swift_once();
  }

  v5 = sub_25B161A14();
  v6 = __swift_project_value_buffer(v5, qword_27FA3A070);
  (*(*(v5 - 8) + 16))(&v3[v4], v6, v5);
  v3[OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded] = 0;
  v3[OBJC_IVAR___NHOHomeUserCapabilities_hasMockData] = 0;
  *&v3[OBJC_IVAR___NHOHomeUserCapabilities_home] = a1;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_25B149438()
{
  if (*(v0 + OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded) & 1) != 0 || (*(v0 + OBJC_IVAR___NHOHomeUserCapabilities_hasMockData))
  {
    return 1;
  }

  else
  {
    return sub_25B1494D8();
  }
}

uint64_t sub_25B1494D8()
{
  v1 = v0;
  v2 = OBJC_IVAR___NHOHomeUserCapabilities_home;
  v3 = *&v0[OBJC_IVAR___NHOHomeUserCapabilities_home];
  v4 = [v3 currentUser];
  v5 = sub_25B161DA4();

  if ((v5 & 1) == 0)
  {
    v6 = *&v1[v2];
    v7 = HMHome.isCurrentRestrictedGuestAwayFromHome()();

    if (!v7)
    {
      return 0;
    }
  }

  if (qword_27FA39AE8 != -1)
  {
    swift_once();
  }

  v8 = sub_25B161A14();
  __swift_project_value_buffer(v8, qword_27FA3A040);
  v9 = v1;
  v10 = sub_25B1619F4();
  v11 = sub_25B161D94();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_25B108480(0x7463697274736572, 0xEF74736575476465, &v20);
    *(v12 + 12) = 2080;
    v14 = [*&v1[v2] name];
    v15 = sub_25B161B34();
    v17 = v16;

    v18 = sub_25B108480(v15, v17, &v20);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_25B105000, v10, v11, "%s: the current user in home %s is restricted.", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v13, -1, -1);
    MEMORY[0x25F862BF0](v12, -1, -1);
  }

  return 1;
}

id NHOHomeUserCapabilities.init(home:)(uint64_t a1)
{
  v3 = OBJC_IVAR___NHOHomeUserCapabilities_logger;
  if (qword_27FA39AF8 != -1)
  {
    swift_once();
  }

  v4 = sub_25B161A14();
  v5 = __swift_project_value_buffer(v4, qword_27FA3A070);
  (*(*(v4 - 8) + 16))(&v1[v3], v5, v4);
  v1[OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded] = 0;
  v1[OBJC_IVAR___NHOHomeUserCapabilities_hasMockData] = 0;
  *&v1[OBJC_IVAR___NHOHomeUserCapabilities_home] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for NHOHomeUserCapabilities();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_25B1498F4()
{
  v1[2] = v0;
  v2 = sub_25B161514();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B1499B4, 0, 0);
}

uint64_t sub_25B1499B4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(v0[2] + OBJC_IVAR___NHOHomeUserCapabilities_home);
  v0[6] = v4;
  v5 = [v4 uniqueIdentifier];
  sub_25B161504();

  v6 = sub_25B1614F4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  sub_25B1619E4();
  v9 = *(MEMORY[0x277D07650] + 4);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_25B149ACC;

  return MEMORY[0x28215C940](v6, v8);
}

uint64_t sub_25B149ACC(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_25B149BCC, 0, 0);
}

uint64_t sub_25B149BCC()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
    v2 = sub_25B1619D4();
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 16);

  v4 = _sSo6HMHomeC15NanoHomeIntentsE22hasMockElectricityDataSbyF_0();
  v5 = *(v0 + 16);
  if ((v2 & 1) == *(v3 + OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded) && (v4 & 1) == *(v5 + OBJC_IVAR___NHOHomeUserCapabilities_hasMockData))
  {
    v6 = 0;
  }

  else
  {
    *(v3 + OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded) = v2 & 1;
    *(v5 + OBJC_IVAR___NHOHomeUserCapabilities_hasMockData) = v4 & 1;
    v6 = 1;
  }

  v7 = *(v0 + 40);

  v8 = *(v0 + 8);

  return v8(v6);
}

uint64_t HMHome.utilityOnboarded()()
{
  v1[2] = v0;
  v2 = sub_25B161514();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B149D74, 0, 0);
}

uint64_t sub_25B149D74()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = [*(v0 + 16) uniqueIdentifier];
  sub_25B161504();

  v5 = sub_25B1614F4();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  sub_25B1619E4();
  v8 = *(MEMORY[0x277D07650] + 4);
  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  v9[1] = sub_25B149E78;

  return MEMORY[0x28215C940](v5, v7);
}

uint64_t sub_25B149E78(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_25B149F78, 0, 0);
}

uint64_t sub_25B149F78()
{
  if (v0[7])
  {
    v1 = v0[7];
    v2 = sub_25B1619D4();
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[5];

  v4 = v0[1];

  return v4(v2 & 1);
}

uint64_t sub_25B14A178(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_25B14A220;

  return sub_25B1498F4();
}

uint64_t sub_25B14A220(char a1)
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

id NHOHomeUserCapabilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NHOHomeUserCapabilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NHOHomeUserCapabilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t HMHome.onboardedOrMockData()()
{
  v1[2] = v0;
  v2 = sub_25B161514();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B14A570, 0, 0);
}

uint64_t sub_25B14A570()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = [*(v0 + 16) uniqueIdentifier];
  sub_25B161504();

  v5 = sub_25B1614F4();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  sub_25B1619E4();
  v8 = *(MEMORY[0x277D07650] + 4);
  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  v9[1] = sub_25B14A674;

  return MEMORY[0x28215C940](v5, v7);
}

uint64_t sub_25B14A674(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_25B14A774, 0, 0);
}

uint64_t sub_25B14A774()
{
  if (v0[7] && (v1 = sub_25B1619D4(), , (v1 & 1) != 0))
  {
    v2 = 1;
  }

  else
  {
    v2 = _sSo6HMHomeC15NanoHomeIntentsE22hasMockElectricityDataSbyF_0();
  }

  v3 = v0[5];

  v4 = v0[1];

  return v4(v2 & 1);
}

uint64_t sub_25B14A804(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_25B11B3EC;

  return v7();
}

uint64_t sub_25B14A8EC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_25B114758;

  return v8();
}

uint64_t sub_25B14A9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A378, &qword_25B164A58);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_25B14BE2C(a3, v25 - v11, &unk_27FA3A378, &qword_25B164A58);
  v13 = sub_25B161CF4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_25B11B208(v12, &unk_27FA3A378, &qword_25B164A58);
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

  sub_25B161CE4();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_25B161CC4();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_25B161B74() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;
    sub_25B161274();
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

    sub_25B11B208(a3, &unk_27FA3A378, &qword_25B164A58);

    return v23;
  }

LABEL_8:
  sub_25B11B208(a3, &unk_27FA3A378, &qword_25B164A58);
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

uint64_t _sSo6HMHomeC15NanoHomeIntentsE22hasMockElectricityDataSbyF_0()
{
  v0 = sub_25B109658();
  v1 = sub_25B161B24();
  v2 = [v0 stringForKey_];

  if (v2)
  {
    v3 = sub_25B161B34();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = sub_25B161B24();
  v7 = [v0 stringForKey_];

  if (v7)
  {
    v8 = sub_25B161B34();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  if (v5)
  {
    if (v3 == 0x746C7561666564 && v5 == 0xE700000000000000)
    {
    }

    else
    {
      v11 = sub_25B161FA4();

      if ((v11 & 1) == 0)
      {

        v12 = 1;
        return v12 & 1;
      }
    }
  }

  if (v10)
  {
    if (v8 != 0x746C7561666564 || v10 != 0xE700000000000000)
    {
      v13 = sub_25B161FA4();

      v12 = v13 ^ 1;
      return v12 & 1;
    }
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_25B14AEA4()
{
  v0 = sub_25B161554();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A768, &qword_25B165908);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A770, &qword_25B165910);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = sub_25B161584();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B161574();
  sub_25B161564();
  (*(v19 + 8))(v22, v18);
  sub_25B161544();
  (*(v1 + 56))(v15, 0, 1, v0);
  v23 = *(v5 + 56);
  sub_25B14BE2C(v17, v8, &qword_27FA3A770, &qword_25B165910);
  sub_25B14BE2C(v15, &v8[v23], &qword_27FA3A770, &qword_25B165910);
  v24 = *(v1 + 48);
  if (v24(v8, 1, v0) == 1)
  {
    sub_25B11B208(v15, &qword_27FA3A770, &qword_25B165910);
    sub_25B11B208(v17, &qword_27FA3A770, &qword_25B165910);
    if (v24(&v8[v23], 1, v0) == 1)
    {
      sub_25B11B208(v8, &qword_27FA3A770, &qword_25B165910);
      return 1;
    }

    goto LABEL_6;
  }

  sub_25B14BE2C(v8, v37, &qword_27FA3A770, &qword_25B165910);
  if (v24(&v8[v23], 1, v0) == 1)
  {
    sub_25B11B208(v15, &qword_27FA3A770, &qword_25B165910);
    sub_25B11B208(v17, &qword_27FA3A770, &qword_25B165910);
    (*(v1 + 8))(v37, v0);
LABEL_6:
    sub_25B11B208(v8, &qword_27FA3A768, &qword_25B165908);
    goto LABEL_7;
  }

  v31 = v36;
  (*(v1 + 32))(v36, &v8[v23], v0);
  sub_25B14BE94();
  v32 = v37;
  v33 = sub_25B161AA4();
  v34 = *(v1 + 8);
  v34(v31, v0);
  sub_25B11B208(v15, &qword_27FA3A770, &qword_25B165910);
  sub_25B11B208(v17, &qword_27FA3A770, &qword_25B165910);
  v34(v32, v0);
  sub_25B11B208(v8, &qword_27FA3A770, &qword_25B165910);
  if (v33)
  {
    return 1;
  }

LABEL_7:
  if (qword_27FA39AE8 != -1)
  {
    swift_once();
  }

  v25 = sub_25B161A14();
  __swift_project_value_buffer(v25, qword_27FA3A040);
  v26 = sub_25B1619F4();
  v27 = sub_25B161D94();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_25B108480(0xD000000000000017, 0x800000025B167930, &v38);
    _os_log_impl(&dword_25B105000, v26, v27, "%s: region is not supported", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x25F862BF0](v29, -1, -1);
    MEMORY[0x25F862BF0](v28, -1, -1);
  }

  return 0;
}

uint64_t sub_25B14B444()
{
  v0 = sub_25B14AEA4();
  if ((v0 & 1) == 0)
  {
    if (qword_27FA39AE8 != -1)
    {
      swift_once();
    }

    v1 = sub_25B161A14();
    __swift_project_value_buffer(v1, qword_27FA3A040);
    v2 = sub_25B1619F4();
    v3 = sub_25B161D94();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_25B108480(0xD000000000000015, 0x800000025B1678E0, &v7);
      _os_log_impl(&dword_25B105000, v2, v3, "%s: region is not supported", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x25F862BF0](v5, -1, -1);
      MEMORY[0x25F862BF0](v4, -1, -1);
    }
  }

  return v0 & 1;
}

uint64_t _s15NanoHomeIntents23NHOHomeUserCapabilitiesC36currentLocationEnergyForecastEnabledSbvgZ_0()
{
  v0 = sub_25B14AEA4();
  if ((v0 & 1) == 0)
  {
    if (qword_27FA39AE8 != -1)
    {
      swift_once();
    }

    v1 = sub_25B161A14();
    __swift_project_value_buffer(v1, qword_27FA3A040);
    v2 = sub_25B1619F4();
    v3 = sub_25B161D94();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_25B108480(0xD000000000000024, 0x800000025B167840, &v7);
      _os_log_impl(&dword_25B105000, v2, v3, "%s: region is not supported", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x25F862BF0](v5, -1, -1);
      MEMORY[0x25F862BF0](v4, -1, -1);
    }
  }

  return v0 & 1;
}

uint64_t type metadata accessor for NHOHomeUserCapabilities()
{
  result = qword_27FA3A758;
  if (!qword_27FA3A758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B14B738()
{
  result = sub_25B161A14();
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

uint64_t dispatch thunk of NHOHomeUserCapabilities.updateCapabilities()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xD8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25B132B10;

  return v6();
}

uint64_t sub_25B14B9C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B14BA08()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25B114758;

  return sub_25B14A178(v2, v3);
}

uint64_t sub_25B14BAB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25B11B3EC;

  return sub_25B14A804(v2, v3, v5);
}

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25B14BBB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25B11B3EC;

  return sub_25B14A8EC(a1, v4, v5, v7);
}

uint64_t sub_25B14BC84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B14BCBC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25B11B3EC;

  return sub_25B1323A4(a1, v5);
}

uint64_t sub_25B14BD74(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25B114758;

  return sub_25B1323A4(a1, v5);
}

uint64_t sub_25B14BE2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_25B14BE94()
{
  result = qword_27FA3A778;
  if (!qword_27FA3A778)
  {
    sub_25B161554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A778);
  }

  return result;
}

uint64_t NHOAccessoryIntent.home.getter()
{
  v1 = *(v0 + OBJC_IVAR___NHOAccessoryIntent__home);
  sub_25B161274();
  sub_25B161144();
}

uint64_t NHOAccessoryIntent.home.setter(__int128 *a1)
{
  v2 = *(v1 + OBJC_IVAR___NHOAccessoryIntent__home);
  v4 = *a1;
  sub_25B161274();
  sub_25B161154();
}

char *NHOAccessoryIntent.__allocating_init(homeID:homeName:accessoryID:accessoryName:icon:serviceKind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = sub_25B161414();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = [objc_allocWithZone(v11) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
  v15 = v14;
  sub_25B161264();
  sub_25B161264();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B161104();
  sub_25B161104();
  v16 = *&v15[OBJC_IVAR___NHOAccessoryIntent__home];
  sub_25B161274();
  sub_25B161154();

  sub_25B161264();
  sub_25B161264();
  sub_25B161264();
  sub_25B161694();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B161104();
  sub_25B161104();
  sub_25B161104();
  sub_25B161104();
  sub_25B161104();
  v17 = *&v15[OBJC_IVAR___NHOAccessoryIntent__accessoriesAndScenes];
  sub_25B161274();
  sub_25B161154();

  v18 = *&v15[OBJC_IVAR___NHOAccessoryIntent__homeID];
  sub_25B161274();
  sub_25B161154();

  v19 = *&v15[OBJC_IVAR___NHOAccessoryIntent__homeName];
  sub_25B161274();
  sub_25B161154();

  v20 = *&v15[OBJC_IVAR___NHOAccessoryIntent__accessoryID];
  sub_25B161274();
  sub_25B161154();

  v21 = *&v15[OBJC_IVAR___NHOAccessoryIntent__accessoryName];
  sub_25B161274();
  sub_25B161154();

  v22 = *&v15[OBJC_IVAR___NHOAccessoryIntent__icon];
  sub_25B161274();
  sub_25B161154();

  sub_25B161694();
  v23 = *&v15[OBJC_IVAR___NHOAccessoryIntent__serviceType];
  sub_25B161274();
  sub_25B161154();

  v24 = *&v15[OBJC_IVAR___NHOAccessoryIntent__useHomeKitRecommendations];
  sub_25B161274();
  sub_25B161154();

  v25 = sub_25B1616A4();
  (*(*(v25 - 8) + 8))(a11, v25);
  return v15;
}

uint64_t sub_25B14C4A4()
{
  v0 = sub_25B161414();
  __swift_allocate_value_buffer(v0, qword_27FA3A780);
  __swift_project_value_buffer(v0, qword_27FA3A780);
  return sub_25B1613E4();
}

uint64_t (*static NHOAccessoryIntent.title.modify())()
{
  if (qword_27FA39B80 != -1)
  {
    swift_once();
  }

  v0 = sub_25B161414();
  __swift_project_value_buffer(v0, qword_27FA3A780);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25B14C614()
{
  v0 = sub_25B1611D4();
  __swift_allocate_value_buffer(v0, qword_27FA3A798);
  __swift_project_value_buffer(v0, qword_27FA3A798);
  return sub_25B1611C4();
}

uint64_t (*static NHOAccessoryIntent.description.modify())()
{
  if (qword_27FA39B88 != -1)
  {
    swift_once();
  }

  v0 = sub_25B1611D4();
  __swift_project_value_buffer(v0, qword_27FA3A798);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t (*NHOAccessoryIntent.homeID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__homeID);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOAccessoryIntent.homeName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__homeName);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOAccessoryIntent.accessoryID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__accessoryID);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOAccessoryIntent.accessoryName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__accessoryName);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOAccessoryIntent.icon.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__icon);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOAccessoryIntent.serviceType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__serviceType);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t NHOAccessoryIntent.useHomeKitRecommendations.getter()
{
  v1 = *(v0 + OBJC_IVAR___NHOAccessoryIntent__useHomeKitRecommendations);
  sub_25B161274();
  sub_25B161144();

  return v3;
}

uint64_t NHOAccessoryIntent.useHomeKitRecommendations.setter()
{
  v1 = *(v0 + OBJC_IVAR___NHOAccessoryIntent__useHomeKitRecommendations);
  sub_25B161274();
  sub_25B161154();
}

uint64_t sub_25B14CCE4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___NHOAccessoryIntent__useHomeKitRecommendations);
  sub_25B161274();
  sub_25B161144();

  *a2 = v5;
  return result;
}

uint64_t sub_25B14CD3C(char *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR___NHOAccessoryIntent__useHomeKitRecommendations);
  v4 = *a1;
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOAccessoryIntent.useHomeKitRecommendations.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__useHomeKitRecommendations);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B11E120;
}

uint64_t (*NHOAccessoryIntent.requestConfirmationText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__requestConfirmationText);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOAccessoryIntent.requestConfirmationIcon.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__requestConfirmationIcon);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t NHOAccessoryIntent.isSmartStack.getter()
{
  v1 = *(v0 + OBJC_IVAR___NHOAccessoryIntent__isSmartStack);
  sub_25B161274();
  sub_25B161144();

  return v3;
}

uint64_t sub_25B14CFD4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___NHOAccessoryIntent__isSmartStack);
  sub_25B161274();
  sub_25B161144();

  *a2 = v5;
  return result;
}

uint64_t sub_25B14D02C(char *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR___NHOAccessoryIntent__isSmartStack);
  v4 = *a1;
  sub_25B161274();
  sub_25B161154();
}

uint64_t NHOAccessoryIntent.isSmartStack.setter()
{
  v1 = *(v0 + OBJC_IVAR___NHOAccessoryIntent__isSmartStack);
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOAccessoryIntent.isSmartStack.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__isSmartStack);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOAccessoryIntent.home.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__home);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t NHOAccessoryIntent.accessoriesAndScenes.getter()
{
  v1 = *(v0 + OBJC_IVAR___NHOAccessoryIntent__accessoriesAndScenes);
  sub_25B161274();
  sub_25B161144();
}

double sub_25B14D24C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___NHOAccessoryIntent__accessoriesAndScenes);
  sub_25B161274();
  sub_25B161144();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_25B14D2AC(uint64_t *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR___NHOAccessoryIntent__accessoriesAndScenes);
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  sub_25B145AA0(*a1);
  sub_25B161274();
  sub_25B161154();
}

uint64_t NHOAccessoryIntent.accessoriesAndScenes.setter(__int128 *a1)
{
  v2 = *(v1 + OBJC_IVAR___NHOAccessoryIntent__accessoriesAndScenes);
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 4);
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOAccessoryIntent.accessoriesAndScenes.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__accessoriesAndScenes);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t static NHOAccessoryIntent.parameterSummary.getter()
{
  sub_25B14FC54(&qword_27FA3A810);

  return sub_25B161284();
}

uint64_t sub_25B14D480()
{
  swift_getKeyPath();
  sub_25B14FC54(&qword_27FA3A810);
  v0 = sub_25B161274();

  swift_getKeyPath();
  sub_25B161274();
  v1 = sub_25B161274();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25B163820;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  type metadata accessor for NHOAccessoryIntent();
  sub_25B161274();
  v3 = sub_25B161264();

  return v3;
}

uint64_t sub_25B14D5C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___NHOAccessoryIntent__accessoriesAndScenes);
  sub_25B161274();
  v4 = sub_25B161164();

  *a2 = v4;
  return result;
}

id NHOAccessoryIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *NHOAccessoryIntent.init()()
{
  ObjectType = swift_getObjectType();
  v127 = sub_25B1616A4();
  v126 = *(v127 - 8);
  v0 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v125 = &v116 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_25B161584();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v122 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_25B1613F4();
  v123 = *(v131 - 8);
  v5 = *(v123 + 64);
  MEMORY[0x28223BE20](v131);
  v132 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B161B14();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v130 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v129 = &v116 - v12;
  v148 = sub_25B161294();
  v13 = *(v148 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v148);
  v16 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v121 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v116 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE8, &unk_25B163AE0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v116 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v116 - v29;
  v135 = &v116 - v29;
  v31 = sub_25B161414();
  v147 = v31;
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = OBJC_IVAR___NHOAccessoryIntent__homeID;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A158, &qword_25B163B08);
  sub_25B1613E4();
  v36 = *(v32 + 56);
  v36(v30, 1, 1, v31);
  v143 = v36;
  v144 = v32 + 56;
  v136 = sub_25B161AB4();
  v153[0] = 0uLL;
  v37 = *(v136 - 1);
  v137 = *(v37 + 56);
  v138 = v37 + 56;
  v38 = v26;
  v137(v26, 1, 1, v136);
  v151 = sub_25B1610C4();
  v39 = *(v151 - 8);
  v146 = *(v39 + 56);
  v40 = v39 + 56;
  v41 = v22;
  v146(v22, 1, 1, v151);
  v141 = *MEMORY[0x277CBA308];
  v42 = *(v13 + 104);
  v149 = v13 + 104;
  v150 = v42;
  v145 = v16;
  v43 = v148;
  (v42)(v16);
  v140 = v35;
  v44 = v135;
  v133 = v41;
  v45 = sub_25B161194();
  v46 = v139;
  *&v139[v120] = v45;
  v120 = OBJC_IVAR___NHOAccessoryIntent__homeName;
  sub_25B1613E4();
  v47 = v44;
  v48 = v147;
  v36(v47, 1, 1, v147);
  v153[0] = 0uLL;
  v137(v38, 1, 1, v136);
  v142 = v40;
  v146(v41, 1, 1, v151);
  v49 = v141;
  v150(v145, v141, v43);
  v50 = v135;
  v51 = v133;
  *&v46[v120] = sub_25B161194();
  v120 = OBJC_IVAR___NHOAccessoryIntent__accessoryID;
  sub_25B1613E4();
  v52 = v48;
  v53 = v143;
  v143(v50, 1, 1, v52);
  v153[0] = 0uLL;
  v137(v38, 1, 1, v136);
  v146(v51, 1, 1, v151);
  v54 = v148;
  v150(v145, v49, v148);
  v55 = v51;
  v56 = sub_25B161194();
  v57 = v139;
  *&v139[v120] = v56;
  v120 = OBJC_IVAR___NHOAccessoryIntent__accessoryName;
  sub_25B1613E4();
  v53(v50, 1, 1, v147);
  v153[0] = 0uLL;
  v58 = v38;
  v59 = v137;
  v137(v38, 1, 1, v136);
  v60 = v146;
  v146(v55, 1, 1, v151);
  v61 = v141;
  v150(v145, v141, v54);
  *&v57[v120] = sub_25B161194();
  v120 = OBJC_IVAR___NHOAccessoryIntent__icon;
  sub_25B1613E4();
  v62 = v147;
  v143(v50, 1, 1, v147);
  v153[0] = 0uLL;
  v128 = v58;
  v63 = v136;
  v59(v58, 1, 1, v136);
  v60(v55, 1, 1, v151);
  v150(v145, v61, v148);
  v64 = v135;
  v65 = sub_25B161194();
  v66 = v139;
  *&v139[v120] = v65;
  v120 = OBJC_IVAR___NHOAccessoryIntent__serviceType;
  sub_25B1613E4();
  v143(v64, 1, 1, v62);
  v153[0] = 0uLL;
  v137(v128, 1, 1, v63);
  v146(v55, 1, 1, v151);
  v67 = v145;
  v68 = v141;
  v150(v145, v141, v148);
  v69 = v64;
  *&v66[v120] = sub_25B161194();
  v134 = OBJC_IVAR___NHOAccessoryIntent__useHomeKitRecommendations;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED0, &unk_25B163860);
  sub_25B1613E4();
  v70 = v147;
  v71 = v143;
  v143(v69, 1, 1, v147);
  LOBYTE(v153[0]) = 0;
  v119 = sub_25B161CB4();
  v72 = *(v119 - 8);
  v118 = *(v72 + 56);
  v120 = v72 + 56;
  v118(v129, 1, 1, v119);
  v73 = v151;
  v146(v55, 1, 1, v151);
  v150(v67, v68, v148);
  v74 = v135;
  *&v66[v134] = sub_25B1611A4();
  v117 = OBJC_IVAR___NHOAccessoryIntent__requestConfirmationText;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF0, &qword_25B163AF0);
  sub_25B1613E4();
  v71(v74, 1, 1, v70);
  v153[0] = 0uLL;
  v75 = v128;
  v137(v128, 1, 1, v136);
  v76 = v73;
  v77 = v146;
  v146(v55, 1, 1, v76);
  v150(v67, v141, v148);
  *&v139[v117] = sub_25B161194();
  v117 = OBJC_IVAR___NHOAccessoryIntent__requestConfirmationIcon;
  sub_25B1613E4();
  v78 = v74;
  v71(v74, 1, 1, v147);
  v153[0] = 0uLL;
  v79 = v148;
  v137(v75, 1, 1, v136);
  v80 = v133;
  v77(v133, 1, 1, v151);
  v81 = v145;
  v82 = v141;
  v83 = v150;
  v150(v145, v141, v79);
  v84 = v81;
  v85 = sub_25B161194();
  v86 = v139;
  *&v139[v117] = v85;
  v138 = OBJC_IVAR___NHOAccessoryIntent__isSmartStack;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A160, &qword_25B163B10);
  sub_25B1613E4();
  v143(v78, 1, 1, v147);
  LOBYTE(v153[0]) = 2;
  v118(v129, 1, 1, v119);
  v146(v80, 1, 1, v151);
  v83(v84, v82, v79);
  v87 = v80;
  *&v86[v138] = sub_25B1611A4();
  v138 = OBJC_IVAR___NHOAccessoryIntent__home;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v136 = "HOME_ACCESSORY_ENTITY_TITLE";
  v88 = v131;
  v134 = __swift_project_value_buffer(v131, qword_27FA3E770);
  v129 = *(v123 + 16);
  (v129)(v132, v134, v88);
  sub_25B161574();
  sub_25B161424();
  v89 = v135;
  v143(v135, 1, 1, v147);
  v153[0] = 0uLL;
  v90 = v151;
  v91 = v146;
  v146(v87, 1, 1, v151);
  v92 = v121;
  v91(v121, 1, 1, v90);
  v150(v145, v141, v148);
  sub_25B120304();
  v93 = sub_25B161184();
  v94 = v139;
  *&v139[v138] = v93;
  v138 = OBJC_IVAR___NHOAccessoryIntent__accessoriesAndScenes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A698, &unk_25B1654E0);
  sub_25B161AC4();
  (v129)(v132, v134, v131);
  sub_25B161574();
  sub_25B161424();
  v143(v89, 1, 1, v147);
  v154 = 0;
  memset(v153, 0, sizeof(v153));
  v95 = v151;
  v91(v133, 1, 1, v151);
  v91(v92, 1, 1, v95);
  v150(v145, v141, v148);
  sub_25B11ADCC();
  *&v94[v138] = sub_25B161184();
  v152.receiver = v94;
  v152.super_class = ObjectType;
  v96 = objc_msgSendSuper2(&v152, sel_init);
  v97 = *&v96[OBJC_IVAR___NHOAccessoryIntent__homeID];
  *&v153[0] = 0xD000000000000024;
  *(&v153[0] + 1) = 0x800000025B167980;
  v98 = v96;
  sub_25B161274();
  sub_25B161154();

  v99 = _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD00000000000001CLL, 0x800000025B1674A0);
  v100 = *&v98[OBJC_IVAR___NHOAccessoryIntent__homeName];
  *&v153[0] = v99;
  *(&v153[0] + 1) = v101;
  sub_25B161274();
  sub_25B161154();

  v102 = *&v98[OBJC_IVAR___NHOAccessoryIntent__accessoryID];
  *&v153[0] = 0xD000000000000024;
  *(&v153[0] + 1) = 0x800000025B167980;
  sub_25B161274();
  sub_25B161154();

  v103 = _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD000000000000021, 0x800000025B1679B0);
  v104 = *&v98[OBJC_IVAR___NHOAccessoryIntent__accessoryName];
  *&v153[0] = v103;
  *(&v153[0] + 1) = v105;
  sub_25B161274();
  sub_25B161154();

  v106 = *&v98[OBJC_IVAR___NHOAccessoryIntent__icon];
  strcpy(v153, "lightbulb.fill");
  HIBYTE(v153[0]) = -18;
  sub_25B161274();
  sub_25B161154();

  v107 = v126;
  v108 = v125;
  v109 = v127;
  (*(v126 + 104))(v125, *MEMORY[0x277D158D0], v127);
  v110 = sub_25B161694();
  v112 = v111;
  (*(v107 + 8))(v108, v109);
  v113 = *&v98[OBJC_IVAR___NHOAccessoryIntent__serviceType];
  *&v153[0] = v110;
  *(&v153[0] + 1) = v112;
  sub_25B161274();
  sub_25B161154();

  v114 = *&v98[OBJC_IVAR___NHOAccessoryIntent__useHomeKitRecommendations];
  LOBYTE(v153[0]) = 0;
  sub_25B161274();
  sub_25B161154();

  return v98;
}

uint64_t NHOAccessoryIntent.description.getter()
{
  v1 = v0;
  sub_25B161EB4();
  MEMORY[0x25F862120](0xD00000000000001BLL, 0x800000025B1679E0);
  v2 = NHOAccessoryIntent.configuredHomeID.getter();
  MEMORY[0x25F862120](v2);

  MEMORY[0x25F862120](0x614E656D6F68202CLL, 0xEC000000203A656DLL);
  v3 = NHOAccessoryIntent.configuredHomeName.getter();
  MEMORY[0x25F862120](v3);

  v4 = MEMORY[0x25F862120](0x737365636361202CLL, 0xEF203A444979726FLL);
  v5 = NHOAccessoryIntent.configuredAccessoryID.getter(v4);
  MEMORY[0x25F862120](v5);

  MEMORY[0x25F862120](0xD000000000000011, 0x800000025B167A00);
  v6 = NHOAccessoryIntent.configuredAccessoryName.getter();
  MEMORY[0x25F862120](v6);

  MEMORY[0x25F862120](0x203A6E6F6369202CLL, 0xE800000000000000);
  v7 = NHOAccessoryIntent.configuredIcon.getter();
  MEMORY[0x25F862120](v7);

  MEMORY[0x25F862120](0x636976726573202CLL, 0xEF203A6570795465);
  v8 = NHOAccessoryIntent.configuredServiceType.getter();
  MEMORY[0x25F862120](v8);

  MEMORY[0x25F862120](0xD00000000000001DLL, 0x800000025B167A20);
  v9 = *(v0 + OBJC_IVAR___NHOAccessoryIntent__useHomeKitRecommendations);
  sub_25B161274();
  sub_25B161144();

  if (v17)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v17)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x25F862120](v10, v11);

  v12 = MEMORY[0x25F862120](0xD000000000000018, 0x800000025B167A40);
  v13 = NHOAccessoryIntent.configuredAccessoryID.getter(v12);
  MEMORY[0x25F862120](v13);

  MEMORY[0x25F862120](0xD000000000000010, 0x800000025B167A60);
  v14 = *(v1 + OBJC_IVAR___NHOAccessoryIntent__isSmartStack);
  sub_25B161274();
  sub_25B161144();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C98, &unk_25B1632B0);
  v15 = sub_25B161B54();
  MEMORY[0x25F862120](v15);

  return 0;
}

uint64_t NHOAccessoryIntent.configuredHomeID.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___NHOAccessoryIntent__home);
  sub_25B161274();
  sub_25B161144();

  if (v6)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B120358(v6);
    sub_25B1610F4();
    sub_25B120358(v6);
    return v5;
  }

  else
  {
    sub_25B120358(0);
    v4 = *(v1 + OBJC_IVAR___NHOAccessoryIntent__homeID);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t NHOAccessoryIntent.configuredHomeName.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___NHOAccessoryIntent__home);
  sub_25B161274();
  sub_25B161144();

  if (v6)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B120358(v6);
    sub_25B1610F4();
    sub_25B120358(v6);
    return v5;
  }

  else
  {
    sub_25B120358(0);
    v4 = *(v1 + OBJC_IVAR___NHOAccessoryIntent__homeName);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t NHOAccessoryIntent.configuredAccessoryName.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___NHOAccessoryIntent__accessoriesAndScenes);
  sub_25B161274();
  sub_25B161144();

  if (v6)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B11A98C(v6);
    sub_25B1610F4();
    sub_25B11A98C(v6);
    return v5;
  }

  else
  {
    sub_25B11A98C(0);
    v4 = *(v1 + OBJC_IVAR___NHOAccessoryIntent__accessoryName);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t NHOAccessoryIntent.configuredIcon.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___NHOAccessoryIntent__accessoriesAndScenes);
  sub_25B161274();
  sub_25B161144();

  if (v6)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B11A98C(v6);
    sub_25B1610F4();
    sub_25B11A98C(v6);
    return v5;
  }

  else
  {
    sub_25B11A98C(0);
    v4 = *(v1 + OBJC_IVAR___NHOAccessoryIntent__icon);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t NHOAccessoryIntent.configuredServiceType.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___NHOAccessoryIntent__accessoriesAndScenes);
  sub_25B161274();
  sub_25B161144();

  if (v6)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B11A98C(v6);
    sub_25B1610F4();
    sub_25B11A98C(v6);
    return v5;
  }

  else
  {
    sub_25B11A98C(0);
    v4 = *(v1 + OBJC_IVAR___NHOAccessoryIntent__serviceType);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t _s15NanoHomeIntents18NHOAccessoryIntentC21configuredAccessoryIDSSvg_0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___NHOAccessoryIntent__accessoriesAndScenes);
  sub_25B161274();
  sub_25B161144();

  if (v6)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B11A98C(v6);
    sub_25B1610F4();
    sub_25B11A98C(v6);
    return v5;
  }

  else
  {
    sub_25B11A98C(0);
    v4 = *(v1 + OBJC_IVAR___NHOAccessoryIntent__accessoryID);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

id NHOAccessoryIntent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B14F6AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B80 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A780);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25B14F790(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B114758;

  return NHOAccessoryIntent.perform()(a1);
}

uint64_t sub_25B14F828()
{
  v1 = sub_25B14FC54(&qword_27FA3A810);

  return MEMORY[0x28210B538](v0, v1);
}

uint64_t NHOAccessoryIntent.defaultIconColor.getter()
{
  v0 = sub_25B161884();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E08, &qword_25B1637D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = sub_25B1616A4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  NHOAccessoryIntent.configuredServiceType.getter();
  sub_25B161B84();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_25B11D9B8(v8);
    (*(v1 + 104))(v4, *MEMORY[0x277D15FF0], v0);
    v14 = sub_25B161874();
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v14 = ServiceKind.iconColorBase.getter();
    (*(v10 + 8))(v13, v9);
  }

  return v14;
}

uint64_t NHOAccessoryIntent.configuredRoomName.getter()
{
  v1 = *(v0 + OBJC_IVAR___NHOAccessoryIntent__accessoriesAndScenes);
  sub_25B161274();
  sub_25B161144();

  if (v4)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B11A98C(v4);
    sub_25B1610F4();
    sub_25B11A98C(v4);
    return v3;
  }

  else
  {
    sub_25B11A98C(0);
    return 0;
  }
}

uint64_t sub_25B14FC54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NHOAccessoryIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *HMService.primaryControlCharacteristic.getter()
{
  v1 = sub_25B1616A4();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  HMService.primaryControlCharacteristicType.getter();
  if (v6)
  {
    v7 = sub_25B161B24();

    v2 = [v0 hf:v7 characteristicOfType:?];
  }

  else
  {
    v47 = v5;
    v8 = [v0 characteristics];
    sub_25B132284(0, &qword_27FA3A838, 0x277CD1970);
    v9 = sub_25B161C64();

    v46 = v1;
    if (v9 >> 62)
    {
      goto LABEL_32;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B161E54())
    {
      v11 = 0;
      v43 = *MEMORY[0x277D15810];
      v44 = v9 & 0xFFFFFFFFFFFFFF8;
      v45 = v9 & 0xC000000000000001;
      v12 = (v2 + 11);
      v42 = *MEMORY[0x277D15760];
      v40 = *MEMORY[0x277D158D0];
      v39 = *MEMORY[0x277D156D8];
      v37 = *MEMORY[0x277D15870];
      v36 = *MEMORY[0x277D15888];
      v35 = *MEMORY[0x277D15718];
      v32 = *MEMORY[0x277D15898];
      v31 = *MEMORY[0x277D15720];
      v30 = (v2 + 1);
      v13 = *MEMORY[0x277CCF748];
      v33 = *MEMORY[0x277CCFB50];
      v34 = v13;
      v48 = *MEMORY[0x277CCF9F0];
      v38 = *MEMORY[0x277CCFB40];
      v41 = *MEMORY[0x277CCFB08];
      while (1)
      {
        if (v45)
        {
          v14 = MEMORY[0x25F862410](v11, v9);
        }

        else
        {
          if (v11 >= *(v44 + 16))
          {
            goto LABEL_31;
          }

          v14 = *(v9 + 8 * v11 + 32);
        }

        v2 = v14;
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v16 = v9;
        v17 = [v14 characteristicType];
        v18 = sub_25B161B34();
        v20 = v19;

        v21 = v47;
        sub_25B161DD4();
        v22 = v21;
        v23 = v46;
        v24 = (*v12)(v22, v46);
        if (v24 == v43 || v24 == v42 || v24 == v40 || v24 == v39 || v24 == v37 || v24 == v36 || v24 == v35 || v24 == v32 || v24 == v31)
        {
          if (v18 == sub_25B161B34() && v20 == v25)
          {

            return v2;
          }

          v27 = sub_25B161FA4();

          if (v27)
          {

            return v2;
          }
        }

        else
        {
          (*v30)(v47, v23);
        }

        ++v11;
        v9 = v16;
        if (v15 == i)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      ;
    }

LABEL_33:

    return 0;
  }

  return v2;
}