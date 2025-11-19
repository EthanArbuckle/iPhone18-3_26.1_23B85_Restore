uint64_t sub_252B888A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_252C759A0(&unk_2864ADCC8);
  v3 = sub_252CD941C();
  LOBYTE(v1) = sub_252DB4F4C(v3, v2);

  return v1 & 1;
}

void sub_252B888FC(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v67 = a4;
  v66 = a3;
  v80 = a2;
  v84 = sub_252E32E84();
  v5 = *(v84 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v84);
  v79 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = v65 - v9;
  if (qword_27F53F510 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544DD8);
    v85 = 0;
    v86 = 0xE000000000000000;
    sub_252E379F4();

    v85 = 0x64656E696174624FLL;
    v86 = 0xE900000000000020;
    if (a1 >> 62)
    {
      v11 = sub_252E378C4();
    }

    else
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v87 = v11;
    v12 = sub_252E37D94();
    MEMORY[0x2530AD570](v12);

    MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E84240);
    sub_252CC3D90(v85, v86, 0xD000000000000080, 0x8000000252E83700);

    if (!(a1 >> 62))
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        return;
      }

      goto LABEL_8;
    }

    v13 = sub_252E378C4();
    if (!v13)
    {
      break;
    }

LABEL_8:
    v14 = 0;
    v15 = a1 & 0xC000000000000001;
    v70 = a1 & 0xFFFFFFFFFFFFFF8;
    v69 = a1 + 32;
    v16 = v80 & 0xFFFFFFFFFFFFFF8;
    v82 = (v5 + 8);
    v83 = v80 & 0xFFFFFFFFFFFFFF8;
    if (v80 < 0)
    {
      v16 = v80;
    }

    v65[1] = v16;
    v78 = v80 & 0xC000000000000001;
    v17 = &off_279711000;
    v18 = 0x277CD1000uLL;
    v74 = v80 >> 62;
    v68 = xmmword_252E3C290;
    v72 = v13;
    v71 = a1 & 0xC000000000000001;
    v73 = a1;
    while (1)
    {
      if (v15)
      {
        v19 = MEMORY[0x2530ADF00](v14, a1);
      }

      else
      {
        if (v14 >= *(v70 + 16))
        {
          goto LABEL_46;
        }

        v19 = *(v69 + 8 * v14);
      }

      v20 = v19;
      if (__OFADD__(v14++, 1))
      {
        break;
      }

      v22 = [v19 v17[429]];
      v23 = *(v18 + 2448);
      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (v24)
      {
        v5 = [v24 characteristic];
        v25 = [v5 service];

        if (v25)
        {
          v76 = v20;
          v5 = [v25 uniqueIdentifier];

          v26 = v75;
          sub_252E32E64();

          v27 = sub_252E32E24();
          v29 = v28;
          v30 = *v82;
          (*v82)(v26, v84);
          v77 = v14;
          if (v74)
          {
            v31 = sub_252E378C4();
            if (v31)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v31 = *(v83 + 16);
            if (v31)
            {
LABEL_22:
              v32 = 0;
              v81 = v22;
              while (1)
              {
                if (v78)
                {
                  v33 = MEMORY[0x2530ADF00](v32, v80);
                  a1 = v32 + 1;
                  if (__OFADD__(v32, 1))
                  {
                    goto LABEL_43;
                  }
                }

                else
                {
                  if (v32 >= *(v83 + 16))
                  {
                    goto LABEL_44;
                  }

                  v33 = *(v80 + 8 * v32 + 32);

                  a1 = v32 + 1;
                  if (__OFADD__(v32, 1))
                  {
LABEL_43:
                    __break(1u);
LABEL_44:
                    __break(1u);
                    goto LABEL_45;
                  }
                }

                v34 = [*(v33 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) uniqueIdentifier];
                v35 = v79;
                sub_252E32E64();

                v36 = sub_252E32E24();
                v38 = v37;
                v30(v35, v84);
                if (v36 == v27 && v38 == v29)
                {
                  break;
                }

                v5 = sub_252E37DB4();

                if (v5)
                {
                  goto LABEL_36;
                }

                ++v32;
                v22 = v81;
                if (a1 == v31)
                {
                  goto LABEL_40;
                }
              }

LABEL_36:
              type metadata accessor for HomeEntity.Builder();
              swift_allocObject();
              HomeEntity.Builder.init()();
              v40 = v39;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401A0, &qword_252E3BFC8);
              v41 = swift_allocObject();
              *(v41 + 16) = v68;
              *(v41 + 32) = sub_252CD941C();
              v42 = (*(*v40 + 400))(v41);

              v43 = *(v33 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
              v44 = *(v33 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
              v45 = *(*v42 + 376);

              v46 = v45(v43, v44);

              v47 = (*(*v46 + 392))(v27, v29);

              v49 = (*(*v47 + 448))(v48);

              v50 = v76;
              v51 = sub_252DE56C8(v66);
              type metadata accessor for HomeEntityResponse.Builder();
              v52 = swift_allocObject();
              swift_allocObject();
              v53.n128_f64[0] = HomeEntity.Builder.init()();
              v55 = (*(*v54 + 448))(v53);

              v56 = MEMORY[0x277D84F90];
              *(v52 + 16) = v49;
              *(v52 + 24) = v56;
              v57 = v49;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540ED8, qword_252E4E970);
              inited = swift_initStackObject();
              *(inited + 16) = v68;
              *(inited + 32) = v51;
              v59 = v51;
              v60 = sub_25297D0C0(inited);

              swift_setDeallocating();
              v61 = sub_25293847C(inited + 32, &qword_27F540EE0, &qword_252E4D870);
              (*(*v60 + 192))(v61);

              v5 = v67;
              v62 = swift_beginAccess();
              MEMORY[0x2530AD700](v62);
              v63 = v81;
              if (*((*(v5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v64 = *((*(v5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_252E372A4();
                v5 = v67;
              }

              sub_252E372D4();
              swift_endAccess();

              goto LABEL_41;
            }
          }

LABEL_40:

LABEL_41:
          a1 = v73;
          v13 = v72;
          v14 = v77;
          v15 = v71;
          v17 = &off_279711000;
          v18 = 0x277CD1000;
          goto LABEL_12;
        }
      }

      else
      {
      }

LABEL_12:
      if (v14 == v13)
      {
        return;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
  }
}

uint64_t sub_252B89214(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_2814B0A78);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E84200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E83700, 0xD00000000000002DLL, 0x8000000252E84070, 546);

    v6 = 5;
  }

  else
  {
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_2814B0A78);
    sub_252CC3D90(0xD000000000000031, 0x8000000252E841C0, 0xD000000000000080, 0x8000000252E83700);
    v6 = 4;
  }

  swift_beginAccess();
  *(a2 + 16) = v6;
  return sub_252E37614();
}

void *sub_252B8941C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
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

    v8 = sub_252A1970C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_252B894AC(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v35 - v6;
  v8 = sub_252E32E84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5438A0, &qword_252E4E948);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_252E3C290;
  v14 = MEMORY[0x277D837D0];
  *(v13 + 32) = 0x696669746E656469;
  *(v13 + 40) = 0xEA00000000007265;
  *(v13 + 88) = v14;
  *(v13 + 56) = v14;
  *(v13 + 64) = a1;
  *(v13 + 72) = a2;
  sub_25293F638(0, &qword_27F545360, 0x277CBEB38);

  v15 = sub_252E37494();
  sub_252B680FC();
  sub_252B68288();
  v17 = v16;

  if (v17)
  {
    sub_252E32E14();

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_25293847C(v7, &unk_27F541F20, &qword_252E3C180);
    }

    else
    {
      (*(v9 + 32))(v12, v7, v8);
      if (qword_2814B0A70 != -1)
      {
        swift_once();
      }

      v18 = sub_252E36AD4();
      __swift_project_value_buffer(v18, qword_2814B0A78);
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_252E379F4();

      v36 = 0xD000000000000015;
      v37 = 0x8000000252E83890;
      sub_252B89DA4(&qword_27F5404A8, MEMORY[0x277CC95F0]);
      v19 = sub_252E37D94();
      MEMORY[0x2530AD570](v19);

      sub_252CC3D90(v36, v37, 0xD000000000000080, 0x8000000252E83700);

      v20 = sub_252E32E44();
      v21 = sub_252E36F04();
      [v15 setValue:v20 forKey:v21];

      (*(v9 + 8))(v12, v8);
    }
  }

  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_2814B0A78);
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_252E379F4();

  v36 = 0xD00000000000001CLL;
  v37 = 0x8000000252E83810;
  v23 = [v15 description];
  v24 = sub_252E36F34();
  v26 = v25;

  MEMORY[0x2530AD570](v24, v26);

  sub_252CC3D90(v36, v37, 0xD000000000000080, 0x8000000252E83700);

  v27 = objc_opt_self();
  v36 = 0;
  v28 = [v27 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v36];
  v29 = v36;
  if (v28)
  {
    v30 = sub_252E32D34();
  }

  else
  {
    v31 = v29;
    v32 = sub_252E32C54();

    swift_willThrow();
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E83830);
    v35[1] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(v36, v37, 0xD000000000000080, 0x8000000252E83700, 0xD000000000000018, 0x8000000252E83870, 289);

    v30 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v30;
}

id sub_252B89AA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_252B894AC(a1, a2);
  if (v7 >> 60 == 15)
  {
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_2814B0A78);
    sub_252CC4050(0xD000000000000020, 0x8000000252E836D0, 0xD000000000000080, 0x8000000252E83700, 0xD00000000000002DLL, 0x8000000252E83790, 592);
    return 0;
  }

  else
  {
    v10 = v7;
    v11 = v6;
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_2814B0A78);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000028, 0x8000000252E837C0);
    MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E837F0);
    MEMORY[0x2530AD570](0x6E6F63202020200ALL, 0xEE00203A74786574);
    v13 = sub_252E32CD4();
    MEMORY[0x2530AD570](v13);

    sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E83700);

    sub_2529E61B0(v11, v10);
    v14 = sub_252E36F04();
    v15 = sub_252E32D14();
    v16 = [objc_opt_self() reportContextWithDomain:v14 requestInfo:v15];

    sub_252982EFC(v11, v10);
    v17 = a3;
    if (a4)
    {
      v17 = 7.0;
    }

    [v16 setReportTimeout_];
    sub_252982EFC(v11, v10);
    return v16;
  }
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252B89DA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_252B89DF0(void *a1, unint64_t a2)
{
  v4 = 0;
  v228 = *MEMORY[0x277D85DE8];
  *&v218 = sub_252E32E84();
  v5 = *(v218 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v218);
  v216 = &v208 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v208 - v9;
  v11 = MEMORY[0x277D84F90];
  v12 = sub_252CC6468(MEMORY[0x277D84F90]);
  v220 = sub_252CC6468(v11);
  v13 = [a1 taskType];
  v219 = v12;
  if (v13 != 1 || [a1 attribute] != 1)
  {
    sub_252A591B8(a2, a1);
    v11 = v22;
    v214 = 0;
    v217 = a1;
    if ((v22 & 0xC000000000000001) == 0)
    {
      v56 = *(v22 + 32);
      v23 = ((1 << v56) + 63) >> 6;
      if ((v56 & 0x3Fu) <= 0xD)
      {
        goto LABEL_40;
      }

      goto LABEL_104;
    }

    v23 = MEMORY[0x277D84FA0];
    v223 = MEMORY[0x277D84FA0];
    sub_252E37874();
    v24 = sub_252E37904();
    if (v24)
    {
      v25 = v24;
      type metadata accessor for Service();
      v26 = v25;
      do
      {
        v225[0] = v26;
        swift_dynamicCast();
        v27 = v222;
        v28 = sub_25292A344();
        v225[0] = MEMORY[0x2530AD880](4, &type metadata for HomeDeviceType, v28);
        sub_252DA6E20(&v221, 7);
        sub_252DA6E20(&v221, 4);
        sub_252DA6E20(&v221, 27);
        sub_252DA6E20(&v221, 28);
        v29 = v225[0];
        v30 = [*(v27 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
        v31 = sub_252E36F34();
        v4 = v32;

        if (qword_27F53F8B8 != -1)
        {
          swift_once();
        }

        v33 = off_27F546230;
        if (*(off_27F546230 + 2) && (v34 = sub_252A44A10(v31, v4), (v35 & 1) != 0))
        {
          v36 = *(v33[7] + 8 * v34);
        }

        else
        {
          v36 = 0;
        }

        if (*(v29 + 16) && (v37 = *(v29 + 40), sub_252E37EC4(), MEMORY[0x2530AE390](v36), v38 = sub_252E37F14(), v39 = -1 << *(v29 + 32), v40 = v38 & ~v39, ((*(v29 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) != 0))
        {
          v41 = ~v39;
          while (*(*(v29 + 48) + 8 * v40) != v36)
          {
            v40 = (v40 + 1) & v41;
            if (((*(v29 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          v11 = v222;
          v42 = *(v23 + 16);
          if (*(v23 + 24) <= v42)
          {
            sub_252DAAAAC(v42 + 1);
          }

          v23 = v223;
          v43 = *(v223 + 40);
          sub_252E37EC4();
          sub_252B89DA4(&qword_27F540680, MEMORY[0x277CC95F0]);
          sub_252E36E94();
          MEMORY[0x2530AE390](*(v11 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
          v44 = *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          v45 = *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

          sub_252E37044();

          v46 = sub_252E37F14();
          v47 = v23 + 56;
          v48 = -1 << *(v23 + 32);
          v49 = v46 & ~v48;
          v50 = v49 >> 6;
          if (((-1 << v49) & ~*(v23 + 56 + 8 * (v49 >> 6))) != 0)
          {
            v51 = __clz(__rbit64((-1 << v49) & ~*(v23 + 56 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v52 = 0;
            v53 = (63 - v48) >> 6;
            do
            {
              if (++v50 == v53 && (v52 & 1) != 0)
              {
                __break(1u);
                goto LABEL_101;
              }

              v54 = v50 == v53;
              if (v50 == v53)
              {
                v50 = 0;
              }

              v52 |= v54;
              v55 = *(v47 + 8 * v50);
            }

            while (v55 == -1);
            v51 = __clz(__rbit64(~v55)) + (v50 << 6);
          }

          *(v47 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
          *(*(v23 + 48) + 8 * v51) = v11;
          ++*(v23 + 16);
        }

        else
        {
LABEL_10:
        }

        v26 = sub_252E37904();
      }

      while (v26);
    }

    if ((v23 & 0xC000000000000001) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_68;
  }

  type metadata accessor for HomeStore();
  v14 = static HomeStore.shared.getter();
  v15 = HomeStore.scenes(matching:)(a2);
  v17 = v16;

  if (v17)
  {
    sub_252929F10(v15, 1);

    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_2814B0A78);
    sub_252CC4050(0xD00000000000001CLL, 0x8000000252E83E50, 0xD000000000000080, 0x8000000252E83700, 0xD00000000000002BLL, 0x8000000252E83E70, 396);
    v19 = MEMORY[0x277D84F90];
    v20 = sub_252CC6468(MEMORY[0x277D84F90]);
    v220 = sub_252CC6468(v19);
    result = v20;
    goto LABEL_125;
  }

  v87 = sub_252B84A70(v15);
  sub_252929F10(v15, 0);
  v225[0] = v11;
  v209 = v5;
  if (v87 >> 62)
  {
    v4 = sub_252E378C4();
    v23 = 0x277CD1000uLL;
    if (v4)
    {
      goto LABEL_71;
    }

LABEL_129:
    v121 = MEMORY[0x277D84F90];
    goto LABEL_130;
  }

  v4 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v23 = 0x277CD1000uLL;
  if (!v4)
  {
    goto LABEL_129;
  }

LABEL_71:
  v88 = 0;
  v89 = v87 & 0xC000000000000001;
  v90 = v87 & 0xFFFFFFFFFFFFFF8;
  v211 = (v209 + 32);
  v210 = (v209 + 8);
  v213 = v10;
  *&v212 = v4;
  v214 = v87 & 0xC000000000000001;
  v217 = v87;
  while (1)
  {
    if (v89)
    {
      v91 = MEMORY[0x2530ADF00](v88, v87);
      v11 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        break;
      }

      goto LABEL_77;
    }

    if (v88 >= *(v90 + 16))
    {
      goto LABEL_103;
    }

    v91 = *(v87 + 8 * v88 + 32);

    v11 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      break;
    }

LABEL_77:
    if (*(v91 + 40) == 1)
    {
      v92 = *(v91 + 16);
      v93 = *(v23 + 2472);
      objc_opt_self();
      v94 = swift_dynamicCastObjCClass();
      if (v94)
      {
        v95 = v94;
        v96 = v92;
        v97 = [v95 characteristic];
        v98 = [v97 service];

        if (v98)
        {
          v99 = type metadata accessor for Service();
          v100 = *(v99 + 48);
          v101 = *(v99 + 52);
          v102 = swift_allocObject();
          v103 = v98;
          v104 = [v103 uniqueIdentifier];
          sub_252E32E64();

          v105 = [v103 assistantIdentifier];
          if (v105)
          {
            v106 = v105;
            sub_252E36F34();
            v215 = v107;
          }

          else
          {

            v215 = 0;
          }

          (*v211)(v102 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v10, v218);

          if (qword_27F53F410 != -1)
          {
            swift_once();
          }

          v108 = qword_27F575A48;
          v109 = [v103 serviceType];
          v110 = sub_252E36F34();
          v112 = v111;

          if (qword_27F53F8B8 != -1)
          {
            swift_once();
          }

          v113 = off_27F546230;
          if (*(off_27F546230 + 2) && (v114 = sub_252A44A10(v110, v112), (v115 & 1) != 0))
          {
            v116 = *(v113[7] + 8 * v114);
          }

          else
          {
            v116 = 0;
          }

          v89 = v214;

          v117 = sub_252DB4F4C(v116, v108);
          swift_setDeallocating();
          (*v210)(v102 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v218);

          v118 = *(*v102 + 48);
          v119 = *(*v102 + 52);
          swift_deallocClassInstance();
          if (v117)
          {
            sub_252E37A94();
            v120 = *(v225[0] + 16);
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          v23 = 0x277CD1000;
          v10 = v213;
          v4 = v212;
          v87 = v217;
        }

        else
        {

          v89 = v214;
          v87 = v217;
        }
      }

      else
      {

        v87 = v217;
      }
    }

    else
    {
    }

    ++v88;
    if (v11 == v4)
    {
      v121 = v225[0];
LABEL_130:

      if ((v121 & 0x8000000000000000) != 0 || (v121 & 0x4000000000000000) != 0)
      {
        v149 = sub_252E378C4();
        if (v149)
        {
          goto LABEL_133;
        }
      }

      else
      {
        v149 = *(v121 + 16);
        if (v149)
        {
LABEL_133:
          if (v149 < 1)
          {
            __break(1u);
          }

          v150 = 0;
          v151 = v121 & 0xC000000000000001;
          v213 = (v209 + 32);
          v212 = xmmword_252E3C130;
          v215 = v121;
          v217 = v149;
          v214 = v121 & 0xC000000000000001;
          do
          {
            if (v151)
            {
              v152 = MEMORY[0x2530ADF00](v150, v121);
            }

            else
            {
              v152 = *(v121 + 8 * v150 + 32);
            }

            if (*(v152 + 40) == 1)
            {
              v153 = *(v152 + 16);
              v154 = *(v23 + 2472);
              objc_opt_self();
              v155 = swift_dynamicCastObjCClass();
              if (v155)
              {
                v156 = v155;
                v157 = v153;
                v158 = [v156 characteristic];
                v159 = [v158 service];

                if (v159)
                {
                  v160 = type metadata accessor for Service();
                  v161 = *(v160 + 48);
                  v162 = *(v160 + 52);
                  v163 = swift_allocObject();
                  *(v163 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) = v159;
                  v164 = v159;
                  v165 = [v164 uniqueIdentifier];
                  sub_252E32E64();

                  v166 = [v164 name];
                  v167 = sub_252E36F34();
                  v169 = v168;

                  v170 = [v164 assistantIdentifier];
                  if (v170)
                  {
                    v171 = v170;
                    v172 = sub_252E36F34();
                    v174 = v173;
                  }

                  else
                  {

                    v172 = 0;
                    v174 = 0;
                  }

                  (*v213)(v163 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v216, v218);
                  v175 = (v163 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
                  *v175 = v167;
                  v175[1] = v169;
                  *(v163 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 7;
                  v176 = (v163 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
                  *v176 = v172;
                  v176[1] = v174;

                  if (*(v152 + 40) == 1)
                  {
                    v177 = *(v152 + 16);
                    v23 = 0x277CD1000uLL;
                    objc_opt_self();
                    v178 = swift_dynamicCastObjCClass();
                    if (v178)
                    {
                      v179 = v178;
                      v180 = v177;
                      v181 = [v179 characteristic];
                      v182 = [v179 targetValue];
                      ObjectType = swift_getObjectType();
                      v225[0] = v182;
                      v183 = sub_252C69EA4(v181, v225);

                      sub_25293847C(v225, &qword_27F541E80, &qword_252E3DFA0);
                      v184 = [v179 characteristic];
                      v185 = [v184 characteristicType];

                      v186 = sub_252E36F34();
                      v188 = v187;

                      v189 = sub_252DE9AAC(v186, v188);

                      v190 = type metadata accessor for HomeUserTask();
                      v191 = objc_allocWithZone(v190);
                      v192 = v183;
                      v193 = sub_252E36F04();
                      v194 = [v191 initWithIdentifier:0 displayString:v193];

                      v195 = v194;
                      [v195 setTaskType_];
                      [v195 setAttribute_];
                      [v195 setValue_];

                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
                      v196 = swift_allocObject();
                      *(v196 + 16) = v212;
                      *(v196 + 32) = v195;
                      v197 = v195;

                      v198 = v219;
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v225[0] = v198;
                      sub_2529FB234(v196, v163, isUniquelyReferenced_nonNull_native);

                      v219 = v225[0];
                      v200 = swift_allocObject();
                      *(v200 + 16) = v212;
                      v201 = [v197 attribute];
                      v202 = objc_allocWithZone(v190);
                      v203 = sub_252E36F04();
                      v204 = [v202 initWithIdentifier:0 displayString:v203];

                      v205 = v204;
                      [v205 setTaskType_];
                      [v205 setAttribute_];
                      [v205 setValue_];

                      *(v200 + 32) = v205;
                      v206 = v220;
                      v207 = swift_isUniquelyReferenced_nonNull_native();
                      v225[0] = v206;
                      sub_2529FB234(v200, v163, v207);

                      v220 = v225[0];
                    }

                    else
                    {
                    }
                  }

                  else
                  {

                    v23 = 0x277CD1000;
                  }

                  v121 = v215;
                  v149 = v217;
                  v151 = v214;
                  goto LABEL_137;
                }
              }
            }

LABEL_137:
            ++v150;
          }

          while (v149 != v150);
        }
      }

LABEL_123:
      if (qword_2814B0A70 != -1)
      {
        goto LABEL_127;
      }

      goto LABEL_124;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_40:
    v213 = v23;
    *&v212 = &v208;
    MEMORY[0x28223BE20](v22);
    v215 = &v208 - ((v57 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v215, v57);
    *&v218 = 0;
    v58 = 0;
    v59 = v11 + 56;
    v60 = 1 << *(v11 + 32);
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    else
    {
      v61 = -1;
    }

    v23 = v61 & *(v11 + 56);
    v62 = (v60 + 63) >> 6;
    v216 = v11;
    while (v23)
    {
      v63 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_52:
      v66 = v63 | (v58 << 6);
      v67 = *(*(v11 + 48) + 8 * v66);
      v68 = sub_25292A344();

      v225[0] = MEMORY[0x2530AD880](4, &type metadata for HomeDeviceType, v68);
      sub_252DA6E20(&v223, 7);
      sub_252DA6E20(&v223, 4);
      sub_252DA6E20(&v223, 27);
      sub_252DA6E20(&v223, 28);
      v69 = v225[0];
      v70 = [*(v67 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v71 = sub_252E36F34();
      v4 = v72;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v73 = off_27F546230;
      if (*(off_27F546230 + 2) && (v74 = sub_252A44A10(v71, v4), (v75 & 1) != 0))
      {
        v76 = *(v73[7] + 8 * v74);
      }

      else
      {
        v76 = 0;
      }

      if (*(v69 + 16) && (v77 = *(v69 + 40), sub_252E37EC4(), MEMORY[0x2530AE390](v76), v78 = sub_252E37F14(), v79 = -1 << *(v69 + 32), v80 = v78 & ~v79, ((*(v69 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) != 0))
      {
        v81 = ~v79;
        while (*(*(v69 + 48) + 8 * v80) != v76)
        {
          v80 = (v80 + 1) & v81;
          if (((*(v69 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        *&v215[(v66 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v66;
        v82 = __OFADD__(v218, 1);
        *&v218 = v218 + 1;
        v11 = v216;
        if (v82)
        {
          __break(1u);
          goto LABEL_106;
        }
      }

      else
      {
LABEL_44:

        v11 = v216;
      }
    }

    v64 = v58;
    while (1)
    {
      v58 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if (v58 >= v62)
      {
        v23 = sub_252C53048(v215, v213, v218, v11);
        if ((v23 & 0xC000000000000001) == 0)
        {
          goto LABEL_107;
        }

        goto LABEL_68;
      }

      v65 = *(v59 + 8 * v58);
      ++v64;
      if (v65)
      {
        v63 = __clz(__rbit64(v65));
        v23 = (v65 - 1) & v65;
        goto LABEL_52;
      }
    }

LABEL_101:
    __break(1u);
  }

LABEL_106:
  v122 = swift_slowAlloc();
  v23 = sub_252B8941C(v122, v23, v11, sub_252B888A0);
  v214 = v4;

  MEMORY[0x2530AED00](v122, -1, -1);
  if ((v23 & 0xC000000000000001) != 0)
  {
LABEL_68:
    sub_252E37874();
    type metadata accessor for Service();
    sub_252B89DA4(&qword_27F541EB0, type metadata accessor for Service);
    sub_252E373E4();
    v23 = v225[0];
    v83 = v225[1];
    v84 = v225[2];
    v85 = ObjectType;
    v86 = v227;
    goto LABEL_111;
  }

LABEL_107:
  v85 = 0;
  v123 = -1 << *(v23 + 32);
  v83 = v23 + 56;
  v84 = ~v123;
  v124 = -v123;
  if (v124 < 64)
  {
    v125 = ~(-1 << v124);
  }

  else
  {
    v125 = -1;
  }

  v86 = v125 & *(v23 + 56);
LABEL_111:
  v216 = v84;
  v126 = (v84 + 64) >> 6;
  v218 = xmmword_252E3C130;
  if ((v23 & 0x8000000000000000) != 0)
  {
    goto LABEL_118;
  }

  while (1)
  {
    v127 = v85;
    v128 = v86;
    v129 = v85;
    if (!v86)
    {
      break;
    }

LABEL_116:
    v130 = (v128 - 1) & v128;
    v131 = *(*(v23 + 48) + ((v129 << 9) | (8 * __clz(__rbit64(v128)))));

    if (!v131)
    {
LABEL_122:
      sub_25297DEB0();
      goto LABEL_123;
    }

    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v133 = swift_allocObject();
      *(v133 + 16) = v218;
      v134 = v217;
      *(v133 + 32) = v217;
      v135 = v134;

      v136 = v219;
      v137 = swift_isUniquelyReferenced_nonNull_native();
      v223 = v136;
      sub_2529FB234(v133, v131, v137);

      v219 = v223;
      v138 = swift_allocObject();
      *(v138 + 16) = v218;
      v139 = [v135 attribute];
      v140 = objc_allocWithZone(type metadata accessor for HomeUserTask());
      v141 = sub_252E36F04();
      v142 = [v140 initWithIdentifier:0 displayString:v141];

      v143 = v142;
      [v143 setTaskType_];
      [v143 setAttribute_];
      [v143 setValue_];

      *(v138 + 32) = v143;
      v144 = v220;
      v145 = swift_isUniquelyReferenced_nonNull_native();
      v223 = v144;
      sub_2529FB234(v138, v131, v145);

      v220 = v223;
      v85 = v129;
      v86 = v130;
      if ((v23 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_118:
      v132 = sub_252E37904();
      if (v132)
      {
        v222 = v132;
        type metadata accessor for Service();
        swift_dynamicCast();
        v131 = v223;
        v129 = v85;
        v130 = v86;
        if (v223)
        {
          continue;
        }
      }

      goto LABEL_122;
    }
  }

  while (1)
  {
    v129 = v127 + 1;
    if (__OFADD__(v127, 1))
    {
      break;
    }

    if (v129 >= v126)
    {
      goto LABEL_122;
    }

    v128 = *(v83 + 8 * v129);
    ++v127;
    if (v128)
    {
      goto LABEL_116;
    }
  }

  __break(1u);
LABEL_127:
  swift_once();
LABEL_124:
  v146 = sub_252E36AD4();
  __swift_project_value_buffer(v146, qword_2814B0A78);
  v223 = 0;
  v224 = 0xE000000000000000;
  sub_252E379F4();

  v223 = 0xD00000000000001FLL;
  v224 = 0x8000000252E83E30;
  type metadata accessor for Service();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EA8, qword_252E51A90);
  sub_252B89DA4(&qword_27F541EB0, type metadata accessor for Service);
  v147 = sub_252E36E54();
  MEMORY[0x2530AD570](v147);

  sub_252CC3D90(v223, v224, 0xD000000000000080, 0x8000000252E83700);

  result = v219;
LABEL_125:
  v148 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252B8B61C(uint64_t a1, void *a2)
{
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_2814B0A78);
  sub_252CC3D90(0xD000000000000021, 0x8000000252E83D00, 0xD000000000000080, 0x8000000252E83700);
  v6 = [a2 taskResponses];
  v7 = MEMORY[0x277D84F90];
  v71 = a1;
  if (v6)
  {
    v8 = v6;
    v72 = a2;
    type metadata accessor for HomeUserTaskResponse();
    v9 = sub_252E37264();

    v74[0] = v7;
    if (v9 >> 62)
    {
      v10 = sub_252E378C4();
      if (v10)
      {
LABEL_6:
        v11 = 0;
        v7 = v9 & 0xC000000000000001;
        do
        {
          if (v7)
          {
            v12 = MEMORY[0x2530ADF00](v11, v9);
          }

          else
          {
            if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_84;
            }

            v12 = *(v9 + 8 * v11 + 32);
          }

          v13 = v12;
          v2 = (v11 + 1);
          if (__OFADD__(v11, 1))
          {
            goto LABEL_83;
          }

          v14 = [v12 userTask];
          if (v14 && (v15 = v14, v16 = [v14 taskType], v15, v16 == 4))
          {
            sub_252E37A94();
            v17 = *(v74[0] + 16);
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          ++v11;
        }

        while (v2 != v10);
        v7 = v74[0];
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_6;
      }
    }

    a1 = v71;
    a2 = v72;
  }

  if (v7 >> 62)
  {
    v18 = sub_252E378C4();
    if (!v18)
    {
      goto LABEL_88;
    }
  }

  else
  {
    v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_88;
    }
  }

  v19 = 0;
  v20 = a1 + 64;
  v67 = v18;
  v68 = v7 & 0xC000000000000001;
  v65 = v7 & 0xFFFFFFFFFFFFFF8;
  v66 = v7;
  v64 = v7 + 32;
  v63 = 0x8000000252E83D30;
  while (2)
  {
    if (v68)
    {
      v21 = MEMORY[0x2530ADF00](v19, v66);
      v22 = __OFADD__(v19, 1);
      v23 = v19 + 1;
      if (!v22)
      {
        goto LABEL_28;
      }

      goto LABEL_82;
    }

    if (v19 >= *(v65 + 16))
    {
      goto LABEL_85;
    }

    v21 = *(v64 + 8 * v19);
    v22 = __OFADD__(v19, 1);
    v23 = v19 + 1;
    if (v22)
    {
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:

      sub_252CC3D90(0xD000000000000018, 0x8000000252E83D50, 0xD000000000000080, 0x8000000252E83700);

      return 1;
    }

LABEL_28:
    v69 = v21;
    v70 = v23;
    v24 = 1 << *(a1 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(a1 + 64);
    v7 = (v24 + 63) >> 6;

    v27 = 0;
    while (1)
    {
      if (!v26)
      {
        while (1)
        {
          v28 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v28 >= v7)
          {

            v41 = v67;
            goto LABEL_48;
          }

          v26 = *(v20 + 8 * v28);
          ++v27;
          if (v26)
          {
            v27 = v28;
            goto LABEL_39;
          }
        }

        __break(1u);
        goto LABEL_82;
      }

LABEL_39:
      v29 = *(*(a1 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));

      v30 = sub_252E32E24();
      v32 = v31;
      v2 = a2;
      v33 = [a2 entity];
      if (!v33 || (v34 = v33, v35 = [v33 entityIdentifier], v34, !v35))
      {

        goto LABEL_33;
      }

      v36 = sub_252E36F34();
      v38 = v37;

      if (v30 == v36 && v32 == v38)
      {
        break;
      }

      v40 = sub_252E37DB4();

      if (v40)
      {
        a1 = v71;

        goto LABEL_52;
      }

LABEL_33:
      v26 &= v26 - 1;

      a2 = v2;
      a1 = v71;
    }

    a1 = v71;

LABEL_52:
    a2 = v2;
    v7 = v73;
    v41 = v67;
    v19 = v70;
    if (!*(a1 + 16))
    {
      goto LABEL_78;
    }

    result = sub_252A454C0(v73);
    if ((v43 & 1) == 0)
    {
      goto LABEL_78;
    }

    v44 = *(*(a1 + 56) + 8 * result);
    if (v44 >> 62)
    {
      if (v44 < 0)
      {
        v62 = *(*(a1 + 56) + 8 * result);
      }

      result = sub_252E378C4();
      if (!result)
      {
        goto LABEL_78;
      }

LABEL_56:
      if ((v44 & 0xC000000000000001) != 0)
      {

        v45 = MEMORY[0x2530ADF00](0, v44);
      }

      else
      {
        if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v45 = *(v44 + 32);
      }

      sub_252E379F4();

      v46 = [v45 description];
      v47 = sub_252E36F34();
      v49 = v48;

      MEMORY[0x2530AD570](v47, v49);

      v2 = v45;
      sub_252CC3D90(0xD000000000000013, v63, 0xD000000000000080, 0x8000000252E83700);

      sub_252E379F4();

      strcpy(v74, "TaskResponse: ");
      HIBYTE(v74[1]) = -18;
      v50 = [v69 description];
      v51 = sub_252E36F34();
      v53 = v52;

      MEMORY[0x2530AD570](v51, v53);

      sub_252CC3D90(v74[0], v74[1], 0xD000000000000080, 0x8000000252E83700);

      v54 = [v69 userTask];
      v7 = &off_279711000;
      if (!v54)
      {
        [v2 attribute];

        a1 = v71;
LABEL_48:
        v19 = v70;
        goto LABEL_49;
      }

      v55 = v54;
      v56 = [v54 attribute];

      v19 = v70;
      a1 = v71;
      if (v56 == [v2 attribute])
      {
        v57 = [v69 userTask];
        v58 = [v57 value];

        v7 = v2;
        v59 = [v2 value];
        v60 = v59;
        if (v58)
        {
          if (v59)
          {
            type metadata accessor for HomeAttributeValue();
            v61 = sub_252E37694();

            if ((v61 & 1) == 0)
            {
              goto LABEL_74;
            }

LABEL_69:
            if (qword_27F53F728 != -1)
            {
              swift_once();
            }

            v7 = v69;
            if (sub_252DB4F4C([v69 taskOutcome], qword_27F575C38))
            {
              goto LABEL_86;
            }

            goto LABEL_49;
          }
        }

        else
        {
          if (!v59)
          {
            goto LABEL_69;
          }
        }
      }

LABEL_74:

      goto LABEL_79;
    }

    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_56;
    }

LABEL_78:

LABEL_79:

LABEL_49:
    if (v19 != v41)
    {
      continue;
    }

    break;
  }

LABEL_88:

  return 0;
}

unint64_t sub_252B8BEA0(uint64_t a1)
{
  result = combineEntityResponses(entityResponses:)(a1);
  v2 = result;
  v31 = MEMORY[0x277D84F90];
  if (result >> 62)
  {
    goto LABEL_30;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      if (v3 < 1)
      {
        __break(1u);
        return result;
      }

      v4 = 0;
      v5 = &off_279711000;
      v30 = xmmword_252E3C130;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2530ADF00](v4, v2);
        }

        else
        {
          v6 = *(v2 + 8 * v4 + 32);
        }

        v7 = v6;
        type metadata accessor for MutableHomeEntityResponse();
        swift_initStackObject();
        v8 = v7;
        v9 = sub_252D6D668(v8);

        v10 = [v8 v5[220]];
        if (!v10)
        {
          goto LABEL_20;
        }

        v11 = v10;
        type metadata accessor for HomeUserTaskResponse();
        v12 = sub_252E37264();

        if (v12 >> 62)
        {
          break;
        }

        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
          goto LABEL_11;
        }

LABEL_19:

LABEL_20:
        sub_252D6C15C();
        MEMORY[0x2530AD700]();
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v25 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        ++v4;
        sub_252E372D4();

        if (v3 == v4)
        {
          v26 = v31;

          goto LABEL_32;
        }
      }

      v13 = sub_252E378C4();
      if (!v13)
      {
        goto LABEL_19;
      }

LABEL_11:
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (!v14)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x2530ADF00](v15, v12);
        }

        else
        {
          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_28;
          }

          if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v16 = *(v12 + 8 * v15 + 32);
        }

        v17 = v16;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        v18 = swift_allocObject();
        *(v18 + 16) = v30;
        type metadata accessor for MutableHomeUserTaskResponse();
        v19 = swift_allocObject();
        *(v19 + 16) = 0;
        v20 = [v17 userTask];
        if (v20)
        {
          v21 = v20;
          type metadata accessor for MutableHomeUserTask();
          swift_allocObject();
          v22 = sub_252D6CA80(v21);
          v23 = *(v19 + 16);
          *(v19 + 16) = v22;
        }

        *(v19 + 24) = [v17 taskOutcome];
        *(v18 + 32) = v19;

        swift_beginAccess();
        v24 = *(v9 + 24);
        *(v9 + 24) = v18;
        v5 = &off_279711000;
        goto LABEL_19;
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      result = sub_252E378C4();
      v3 = result;
    }

    while (result);
  }

  v26 = MEMORY[0x277D84F90];
LABEL_32:
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v27 = sub_252E36AD4();
  __swift_project_value_buffer(v27, qword_2814B0A78);
  sub_252E379F4();

  v28 = type metadata accessor for HomeEntityResponse();
  v29 = MEMORY[0x2530AD730](v26, v28);
  MEMORY[0x2530AD570](v29);

  sub_252CC3D90(0xD000000000000025, 0x8000000252E83CD0, 0xD000000000000080, 0x8000000252E83700);

  return v26;
}

void *sub_252B8C2A0(void *a1, unint64_t a2)
{
  v4 = [a1 entityResponses];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for HomeEntityResponse();
    v6 = sub_252E37264();
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544D60);
    sub_252E379F4();

    v8 = a1;
    v9 = [v8 description];
    v10 = sub_252E36F34();
    v12 = v11;

    MEMORY[0x2530AD570](v10, v12);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

    v6 = MEMORY[0x277D84F90];
  }

  if (sub_252C2DC30())
  {
    if (!(a2 >> 62))
    {
      if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (!sub_252E378C4())
    {
LABEL_9:

      v6 = sub_252C2A5D8();
    }
  }

LABEL_10:

  sub_25297A894(v6);
  v13 = combineEntityResponses(entityResponses:)(a2);

  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v14 = sub_252E36AD4();
  __swift_project_value_buffer(v14, qword_2814B0A78);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003FLL, 0x8000000252E83F90);
  v15 = type metadata accessor for HomeEntityResponse();
  v16 = MEMORY[0x2530AD730](v13, v15);
  MEMORY[0x2530AD570](v16);

  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E83700);

  return v13;
}

uint64_t sub_252B8C574(unint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v35 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v32)
  {
    v3 = 0;
    v4 = a1 & 0xC000000000000001;
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    v34 = a1;
    v6 = a1 + 32;
    do
    {
      while (1)
      {
        if (v4)
        {
          a1 = MEMORY[0x2530ADF00](v3, v34);
        }

        else
        {
          if (v3 >= *(v5 + 16))
          {
            goto LABEL_48;
          }

          a1 = *(v6 + 8 * v3);
        }

        v7 = a1;
        if (__OFADD__(v3++, 1))
        {
          goto LABEL_47;
        }

        v9 = [a1 entity];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 type];

          if (v11 == 7)
          {
            break;
          }
        }

LABEL_4:

        if (v3 == i)
        {
          goto LABEL_32;
        }
      }

      v12 = [v7 entity];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 deviceTypes];

        if (v14)
        {
          v15 = sub_252E37264();

          if (*(v15 + 16))
          {
            v16 = *(v15 + 32);

            if (qword_27F53F410 != -1)
            {
              a1 = swift_once();
            }

            v17 = 0;
            v18 = 1 << *(qword_27F575A48 + 32);
            if (v18 < 64)
            {
              v19 = ~(-1 << v18);
            }

            else
            {
              v19 = -1;
            }

            v20 = v19 & *(qword_27F575A48 + 56);
            v21 = (v18 + 63) >> 6;
            while (v20)
            {
              v22 = v17;
LABEL_26:
              v23 = __clz(__rbit64(v20));
              v20 &= v20 - 1;
              if (*(*(qword_27F575A48 + 48) + ((v22 << 9) | (8 * v23))) == v16)
              {
                goto LABEL_4;
              }
            }

            while (1)
            {
              v22 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
                break;
              }

              if (v22 >= v21)
              {
                goto LABEL_29;
              }

              v20 = *(qword_27F575A48 + 56 + 8 * v22);
              ++v17;
              if (v20)
              {
                v17 = v22;
                goto LABEL_26;
              }
            }

            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }
        }
      }

LABEL_29:
      sub_252E37A94();
      v24 = *(v35 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      a1 = sub_252E37AA4();
    }

    while (v3 != i);
LABEL_32:
    sub_252ADEC58(v35);

    v25 = 0;
    v35 = v1;
    v26 = v34;
    while (1)
    {
      if (v4)
      {
        a1 = MEMORY[0x2530ADF00](v25, v26);
      }

      else
      {
        if (v25 >= *(v5 + 16))
        {
          goto LABEL_50;
        }

        a1 = *(v26 + 8 * v25 + 32);
      }

      v1 = a1;
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v28 = [a1 entity];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 type];

        if (v30 == 7)
        {
          sub_252E37A94();
          v31 = *(v35 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          a1 = sub_252E37AA4();
        }

        else
        {
        }

        v26 = v34;
      }

      else
      {
      }

      ++v25;
      if (v27 == i)
      {
        v1 = v35;
        goto LABEL_53;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    v32 = a1;
    i = sub_252E378C4();
  }

  sub_252ADEC58(v1);

LABEL_53:
  sub_252CAF868(v1);
}

BOOL sub_252B8C9B4(uint64_t a1, unint64_t a2)
{
  if (qword_2814B0A70 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v4 = sub_252E36AD4();
    __swift_project_value_buffer(v4, qword_2814B0A78);
    sub_252CC3D90(0xD000000000000023, 0x8000000252E83DC0, 0xD000000000000080, 0x8000000252E83700);
    v5 = a2 >> 62 ? sub_252E378C4() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = v5 != 0;
    if (!v5)
    {
      break;
    }

    v7 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, a2);
      }

      else
      {
        if (v7 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(a2 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ((sub_252B8B61C(a1, v8) & 1) == 0)
      {
        sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E83DF0, 0xD000000000000080, 0x8000000252E83700);

        return 0;
      }

      ++v7;
      if (v10 == v5)
      {
        v11 = 0xE400000000000000;
        v6 = v5 != 0;
        v12 = 1702195828;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

  v12 = 0x65736C6166;
  v11 = 0xE500000000000000;
LABEL_16:
  sub_252E379F4();

  MEMORY[0x2530AD570](v12, v11);

  sub_252CC3D90(0xD000000000000016, 0x8000000252E83E10, 0xD000000000000080, 0x8000000252E83700);

  return v6;
}

unint64_t sub_252B8CC08(unint64_t result)
{
  if (result >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v24)
  {
    v2 = 0;
    v3 = result & 0xC000000000000001;
    v4 = result & 0xFFFFFFFFFFFFFF8;
    v5 = result + 32;
    v6 = &off_279711000;
    v28 = result & 0xC000000000000001;
    v29 = i;
    v27 = result & 0xFFFFFFFFFFFFFF8;
    v25 = result;
    v26 = result + 32;
    while (1)
    {
      if (v3)
      {
        result = MEMORY[0x2530ADF00](v2, v25);
      }

      else
      {
        if (v2 >= *(v4 + 16))
        {
          __break(1u);
LABEL_39:
          __break(1u);
          return result;
        }

        result = *(v5 + 8 * v2);
      }

      v7 = result;
      v8 = __OFADD__(v2++, 1);
      if (v8)
      {
        goto LABEL_39;
      }

      v9 = [result v6[220]];
      if (!v9)
      {
LABEL_33:

        return 0;
      }

      v10 = v9;
      type metadata accessor for HomeUserTaskResponse();
      v11 = sub_252E37264();

      if (v11 >> 62)
      {
        break;
      }

      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_11;
      }

LABEL_30:

      result = 1;
      v3 = v28;
      v5 = v26;
      v4 = v27;
      v6 = &off_279711000;
      if (v2 == v29)
      {
        return result;
      }
    }

    result = sub_252E378C4();
    v12 = result;
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_11:
    v13 = 0;
    v14 = v11 + 32;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x2530ADF00](v13, v11);
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        result = *(v14 + 8 * v13);
      }

      v15 = result;
      v8 = __OFADD__(v13++, 1);
      if (v8)
      {
        break;
      }

      if ([result taskOutcome] == 17)
      {
        goto LABEL_32;
      }

      if (qword_27F53F730 != -1)
      {
        swift_once();
      }

      v16 = qword_27F575C40;
      v17 = [v15 taskOutcome];
      if (!*(v16 + 16) || (v18 = v17, v19 = *(v16 + 40), sub_252E37EC4(), MEMORY[0x2530AE390](v18), v20 = sub_252E37F14(), v21 = -1 << *(v16 + 32), v22 = v20 & ~v21, ((*(v16 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0))
      {
LABEL_32:

        goto LABEL_33;
      }

      v23 = ~v21;
      while (*(*(v16 + 48) + 8 * v22) != v18)
      {
        v22 = (v22 + 1) & v23;
        if (((*(v16 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v14 = v11 + 32;
      if (v13 == v12)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v24 = result;
    i = sub_252E378C4();
  }

  return 1;
}

void sub_252B8CEE4(void *a1)
{
  v90 = sub_252E36CA4();
  v89 = *(v90 - 8);
  v2 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v87 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_252E36D04();
  v86 = *(v88 - 8);
  v4 = *(v86 + 64);
  MEMORY[0x28223BE20](v88);
  v85 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_252E36C84();
  v6 = *(v97 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v97);
  v93 = (&v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = sub_252E36D54();
  v94 = *(v95 - 8);
  v9 = *(v94 + 64);
  v10 = MEMORY[0x28223BE20](v95);
  v91 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v92 = &v82 - v12;
  if (qword_2814B0A70 != -1)
  {
LABEL_18:
    swift_once();
  }

  v96 = v6;
  v13 = sub_252E36AD4();
  v14 = __swift_project_value_buffer(v13, qword_2814B0A78);
  v100 = "ocation context.";
  v101 = v14;
  sub_252CC3D90(0xD00000000000004CLL, 0x8000000252E83FD0, 0xD000000000000080, 0x8000000252E83700);
  v99 = dispatch_semaphore_create(0);
  v98 = a1;
  v104 = a1[4];
  type metadata accessor for HomeStore();
  v15 = static HomeStore.shared.getter();
  v16 = sub_2529D9D50();

  v102 = v16;
  a1 = 0;
  v17 = sub_2529D70FC(v16);
  if (v17 >> 62)
  {
    v28 = v17;
    v18 = sub_252E378C4();
    v17 = v28;
    v103 = v28;
    if (!v18)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v103 = v17;
    if (!v18)
    {
      goto LABEL_20;
    }
  }

  v6 = 0;
  v19 = v17 & 0xC000000000000001;
  v20 = v17 & 0xFFFFFFFFFFFFFF8;
  while (v19)
  {
    v21 = MEMORY[0x2530ADF00](v6, v103);
    v22 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_13;
    }

LABEL_8:
    aBlock = sub_252E32E24();
    v107 = v23;
    MEMORY[0x28223BE20](aBlock);
    *(&v82 - 2) = &aBlock;
    v24 = sub_2529ED970(sub_25296A69C, (&v82 - 4), v104);

    if (v24)
    {
      goto LABEL_14;
    }

    ++v6;
    if (v22 == v18)
    {
      goto LABEL_20;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v21 = *(v103 + 8 * v6 + 32);

  v22 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  v25 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate);

  v26 = [v25 accessory];

  if (v26)
  {
    v27 = [v26 home];

    if (v27)
    {

      goto LABEL_33;
    }
  }

LABEL_20:
  v29 = v102;
  if (!(v102 >> 62))
  {
    v30 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_22;
    }

LABEL_47:

LABEL_48:

    aBlock = 0;
    v107 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000041, 0x8000000252E84020);
    v80 = MEMORY[0x2530AD730](v104, MEMORY[0x277D837D0]);
    MEMORY[0x2530AD570](v80);

    sub_252CC4050(aBlock, v107, 0xD000000000000080, v100 | 0x8000000000000000, 0xD00000000000002DLL, 0x8000000252E84070, 516);

    v63 = &v113;
LABEL_49:

    return;
  }

  while (2)
  {
    v30 = sub_252E378C4();
    v29 = v102;
    if (!v30)
    {
      goto LABEL_47;
    }

LABEL_22:
    v31 = 0;
    v32 = v29 & 0xC000000000000001;
    v33 = v29 & 0xFFFFFFFFFFFFFF8;
LABEL_23:
    if (v32)
    {
      v34 = MEMORY[0x2530ADF00](v31, v29);
      v35 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }

    if (v31 >= *(v33 + 16))
    {
      __break(1u);
      continue;
    }

    break;
  }

  v34 = *(v29 + 8 * v31 + 32);

  v35 = v31 + 1;
  if (!__OFADD__(v31, 1))
  {
LABEL_26:
    aBlock = sub_252E32E24();
    v107 = v36;
    MEMORY[0x28223BE20](aBlock);
    *(&v82 - 2) = &aBlock;
    v37 = sub_2529ED970(sub_25296A724, (&v82 - 4), v104);

    if (v37)
    {
      goto LABEL_32;
    }

    ++v31;
    v29 = v102;
    if (v35 == v30)
    {
      goto LABEL_47;
    }

    goto LABEL_23;
  }

LABEL_31:
  __break(1u);
LABEL_32:

  v38 = *(v34 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate);

  v27 = [v38 home];

  if (!v27)
  {
    goto LABEL_48;
  }

LABEL_33:
  v39 = swift_allocObject();
  *(v39 + 16) = MEMORY[0x277D84F90];
  v40 = (v39 + 16);
  v41 = swift_allocObject();
  *(v41 + 16) = 5;
  v102 = v41 + 16;
  v42 = swift_allocObject();
  v42[2] = v103;
  v42[3] = v27;
  v42[4] = v39;
  v43 = swift_allocObject();
  v44 = v99;
  *(v43 + 16) = v41;
  *(v43 + 24) = v44;
  v46 = v98[2];
  v45 = v98[3];
  v47 = v27;

  v48 = v44;

  v49 = sub_252B89AA0(v46, v45, 0, 1);
  if (v49)
  {
    v82 = v46;
    v83 = v45;
    v103 = v39;
    v104 = v48;
    v110 = sub_252B8DDF0;
    v111 = v42;
    aBlock = MEMORY[0x277D85DD0];
    v107 = 1107296256;
    v108 = sub_252A58A5C;
    v109 = &block_descriptor_49;
    v50 = v49;
    v51 = _Block_copy(&aBlock);

    v110 = sub_252B8DDFC;
    v111 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v107 = 1107296256;
    v108 = sub_2529E0210;
    v109 = &block_descriptor_52_0;
    v52 = _Block_copy(&aBlock);

    v84 = v50;
    [v47 retrieveResultsWithReportingContext:v50 progressHandler:v51 completionHandler:v52];
    _Block_release(v52);
    _Block_release(v51);
    swift_beginAccess();
    v53 = *v40;
    if (*v40 >> 62)
    {
      if (v53 < 0)
      {
        v81 = *v40;
      }

      v54 = sub_252E378C4();
    }

    else
    {
      v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v55 = v97;
    v56 = v96;
    v97 = v43;
    v98 = v47;
    v99 = v41;
    if (!v54)
    {
      sub_252CC4050(0xD00000000000002BLL, 0x8000000252E84160, 0xD000000000000080, v100 | 0x8000000000000000, 0xD00000000000002DLL, 0x8000000252E84070, 562);
      sub_2529515FC(4, 0, 0xD000000000000023, 0x8000000252E84190);
    }

    v57 = v91;
    sub_252E36D14();
    v58 = v93;
    *v93 = 2000;
    (*(v56 + 104))(v58, *MEMORY[0x277D85178], v55);
    v59 = v92;
    sub_252E36D24();
    (*(v56 + 8))(v58, v55);
    v60 = *(v94 + 8);
    v61 = v95;
    v60(v57, v95);
    v62 = v104;
    sub_252E375F4();
    v60(v59, v61);
    if (sub_252E36C94())
    {

      sub_252CC4050(0xD000000000000033, 0x8000000252E84120, 0xD000000000000080, v100 | 0x8000000000000000, 0xD00000000000002DLL, 0x8000000252E84070, 571);

      v63 = &v112;
      goto LABEL_49;
    }

    aBlock = 0;
    v107 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E840E0);
    v64 = *v40;
    v65 = type metadata accessor for HomeEntityResponse();

    v67 = MEMORY[0x2530AD730](v66, v65);
    v69 = v68;

    MEMORY[0x2530AD570](v67, v69);

    sub_252CC3D90(aBlock, v107, 0xD000000000000080, v100 | 0x8000000000000000);

    v70 = *v40;
    v71 = v102;
    swift_beginAccess();
    v72 = *v71;
    v73 = qword_27F53F370;

    if (v73 != -1)
    {
      swift_once();
    }

    v74 = swift_allocObject();
    v75 = v83;
    *(v74 + 16) = v82;
    *(v74 + 24) = v75;
    *(v74 + 32) = v70;
    *(v74 + 40) = 3;
    *(v74 + 48) = v72;
    *(v74 + 56) = 0;
    v110 = sub_252B8DE78;
    v111 = v74;
    aBlock = MEMORY[0x277D85DD0];
    v107 = 1107296256;
    v108 = sub_252AD686C;
    v109 = &block_descriptor_59;
    v76 = _Block_copy(&aBlock);
    v77 = v85;
    sub_252E36CD4();
    v105 = MEMORY[0x277D84F90];
    sub_252B89DA4(qword_2814B0298, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
    sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
    v78 = v87;
    v79 = v90;
    sub_252E37824();
    MEMORY[0x2530ADA30](0, v77, v78, v76);
    _Block_release(v76);

    (*(v89 + 8))(v78, v79);
    (*(v86 + 8))(v77, v88);
  }

  else
  {

    sub_252CC4050(0xD000000000000037, 0x8000000252E840A0, 0xD000000000000080, v100 | 0x8000000000000000, 0xD00000000000002DLL, 0x8000000252E84070, 556);
  }
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

id sub_252B8DE98()
{
  v1 = [v0 type];
  if (v1 == 1)
  {
    result = [v0 value];
    if (result)
    {
      v6 = result;
      type metadata accessor for TimeTriggerValue();
      v7 = swift_dynamicCastClass() != 0;

      return v7;
    }
  }

  else
  {
    if (v1 == 2)
    {
      result = [v0 value];
      if (!result)
      {
        return result;
      }

      v3 = result;
      type metadata accessor for EventTriggerValue();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event);

        if ((v5 - 1) < 4)
        {
          return (v5 + 1);
        }
      }

      else
      {
      }
    }

    return 0;
  }

  return result;
}

void *sub_252B8DF84(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D57570]) init];
  if (!v2)
  {
    if (qword_27F53F530 == -1)
    {
LABEL_22:
      v33 = sub_252E36AD4();
      __swift_project_value_buffer(v33, qword_27F544E38);
      sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD000000000000073, 0x8000000252E84260, 0xD000000000000017, 0x8000000252E715D0, 47);
      return 0;
    }

LABEL_63:
    swift_once();
    goto LABEL_22;
  }

  v3 = v2;
  [v2 setCommandType_];
  v4 = [objc_allocWithZone(MEMORY[0x277D57580]) init];
  if (!v4)
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v34 = sub_252E36AD4();
    __swift_project_value_buffer(v34, qword_27F544E38);
    sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD000000000000073, 0x8000000252E84260, 0xD000000000000017, 0x8000000252E715D0, 54);

    return 0;
  }

  v5 = v4;
  v6 = [a1 automatableTask];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for ControlAutomateHomeIntent();
    v8 = swift_dynamicCastClass();
    if (!v8)
    {
      v13 = v7;
LABEL_55:

      goto LABEL_56;
    }

    v72 = a1;
    v9 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
    v10 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
    v11 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
    v12 = v9;

    v13 = [v11 init];
    [v13 setUserTask_];
    type metadata accessor for HomeFilter();
    v14 = sub_252E37254();

    [v13 setFilters_];

    [v13 setTime_];
    v15 = [v13 filters];
    if (v15)
    {
      v16 = v15;
      v17 = sub_252E37264();

      if (v17 >> 62)
      {
        v18 = sub_252E378C4();
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v69 = v13;
      v70 = v5;
      v71 = v3;
      if (v18)
      {
        v19 = 0;
        v73 = v17 & 0xC000000000000001;
        v20 = v17 & 0xFFFFFFFFFFFFFF8;
        v21 = MEMORY[0x277D84F90];
        v22 = v17;
        while (1)
        {
          if (v73)
          {
            v23 = MEMORY[0x2530ADF00](v19, v17);
          }

          else
          {
            if (v19 >= *(v20 + 16))
            {
              goto LABEL_62;
            }

            v23 = *(v17 + 8 * v19 + 32);
          }

          v24 = v23;
          v25 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          v26 = v18;
          v27 = HomeDeviceType.description.getter([v23 deviceType]);
          v29 = v28;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_2529F7A80(0, *(v21 + 2) + 1, 1, v21);
          }

          v31 = *(v21 + 2);
          v30 = *(v21 + 3);
          if (v31 >= v30 >> 1)
          {
            v21 = sub_2529F7A80((v30 > 1), v31 + 1, 1, v21);
          }

          *(v21 + 2) = v31 + 1;
          v32 = &v21[16 * v31];
          *(v32 + 4) = v27;
          *(v32 + 5) = v29;
          ++v19;
          v18 = v26;
          v17 = v22;
          if (v25 == v26)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v21 = MEMORY[0x277D84F90];
LABEL_30:

      v3 = v71;
      v13 = v69;
      v5 = v70;
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    sub_252C76E8C(v21);

    v35 = [v13 filters];
    if (v35)
    {
      v36 = v35;
      v37 = sub_252E37264();

      LOBYTE(v36) = sub_252B1F8D4(v37);

      v35 = dword_252E4E99C[v36];
    }

    sub_252C7704C(v35);
    v38 = [v13 userTask];
    if (v38)
    {
      v39 = v38;
      v40 = [v38 attribute];

      v38 = HomeAttributeType.description.getter(v40);
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }

    sub_252C771A8(v38, v42);

    if (sub_252C4D664(5))
    {
      type metadata accessor for HomeStore();
      v43 = static HomeStore.shared.getter();
      v44 = [v13 filters];
      if (v44)
      {
        v45 = v44;
        v46 = sub_252E37264();
      }

      else
      {
        v46 = MEMORY[0x277D84F90];
      }

      v47 = HomeStore.scenes(matching:)(v46);
      v49 = v48;

      if ((v49 & 1) == 0)
      {
        v59 = sub_2529289F0(v47);
        sub_252929F10(v47, 0);
        if (v59 >> 62)
        {
          v60 = sub_252E378C4();
        }

        else
        {
          v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a1 = v72;

        goto LABEL_54;
      }

      sub_252929F10(v47, 1);
    }

    type metadata accessor for HomeStore();
    v50 = static HomeStore.shared.getter();
    v51 = v50[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
    if (v51 != 2 && (v51 & 1) == 0 || (v52 = [v13 filters]) == 0)
    {

      v13 = v50;
      a1 = v72;
      goto LABEL_55;
    }

    v53 = v52;
    v54 = sub_252E37264();

    v55 = [v13 userTask];
    v56 = HomeStore.services(matching:supporting:)(v54, v55);
    v58 = v57;

    if (v58)
    {
      sub_252929F10(v56, 1);
      a1 = v72;
      goto LABEL_55;
    }

    if (v56 >> 62)
    {
      v60 = sub_252E378C4();
    }

    else
    {
      v60 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = v72;
    sub_252929F10(v56, 0);
LABEL_54:
    sub_252C77358(v60);
    goto LABEL_55;
  }

LABEL_56:
  v61 = [a1 trigger];
  if (v61)
  {
    v62 = sub_252B8DE98();

    v63 = v62;
  }

  else
  {
    v63 = 0;
  }

  sub_252C774DC(v63 | ((v61 == 0) << 32));
  v64 = sub_252B8E7A0();
  sub_252C7763C(v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_252E3C130;
  *(v65 + 32) = v5;
  sub_252A01B88();
  v66 = v5;
  v67 = sub_252E37254();

  [v3 setHomeAutomationRequests_];

  return v3;
}

BOOL sub_252B8E7A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543728, &qword_252E4DBE8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      v19 = v1;
      v20 = [v18 recurrences];
      if (v20)
      {
        v21 = v20;
        sub_252E32BA4();
        v22 = sub_252E37264();

        v23 = *(v22 + 16);

        return v23 != 0;
      }
    }

    return 0;
  }

  v11 = v10;
  v12 = v1;
  v13 = [v11 recurrence];
  if (v13)
  {
    v14 = v13;
    sub_252E32B24();

    v15 = sub_252E32BA4();
    v16 = 1;
    (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
    sub_25293847C(v9, &qword_27F540F00, &unk_252E3FEC0);
  }

  else
  {
    v24 = sub_252E32BA4();
    v25 = 1;
    (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
    sub_25293847C(v9, &qword_27F540F00, &unk_252E3FEC0);
    v26 = [v11 recurrenceCalendar];
    v16 = v26 != 0;
    if (v26)
    {
      v27 = v26;
      sub_252E32F84();

      v25 = 0;
      v12 = v27;
    }

    v28 = sub_252E32FF4();
    (*(*(v28 - 8) + 56))(v5, v25, 1, v28);
    sub_25293847C(v5, &qword_27F543728, &qword_252E4DBE8);
  }

  return v16;
}

void *sub_252B8EAA4()
{
  v0 = sub_252E32E84();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277D57580]) init];
  v6 = v5;
  if (v5)
  {
    [v5 setHomeAutomationRequestType_];
    v7 = v6;
    sub_252E32E74();
    v8 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v9 = sub_252E32E44();
    v10 = [v8 initWithNSUUID_];

    (*(v1 + 8))(v4, v0);
    [v7 setHomeAutomationRequestId_];
  }

  return v6;
}

uint64_t sub_252B8EC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = sub_252E34014();
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v4[26] = v8;
  v4[27] = *(v8 + 64);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B8ED58, 0, 0);
}

uint64_t sub_252B8ED58()
{
  v1 = *(v0 + 160);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = *(v0 + 160);
    v4 = sub_252C285F0();
    v5 = v4;
    v48 = v2;
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_30:
      v7 = sub_252E378C4();
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = 0;
    v45 = MEMORY[0x277D84F90];
    while (v7 != v8)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v8, v5);
      }

      else
      {
        if (v8 >= *(v6 + 16))
        {
          goto LABEL_29;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v12 = sub_252DA124C(0);

      ++v8;
      if (v12)
      {
        MEMORY[0x2530AD700]();
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v13 = v1;
          v14 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
          v1 = v13;
        }

        sub_252E372D4();
        v45 = v48;
        v8 = v11;
      }
    }

    v2 = v45;
  }

  *(v0 + 248) = v2;
  v15 = [*(v0 + 152) userTask];
  v16 = v15;
  v44 = v1;
  v46 = v2;
  if (v15)
  {
    v17 = [v15 attribute];
  }

  else
  {
    v17 = 0;
  }

  v18 = v16 == 0;
  v20 = *(v0 + 232);
  v19 = *(v0 + 240);
  v21 = *(v0 + 216);
  v22 = *(v0 + 224);
  v23 = *(v0 + 208);
  v24 = *(v0 + 168);
  v25 = *(v0 + 152);
  static SemanticMapper.getSemanticKey(for:)(v17, v18, v19);
  sub_252938414(v19, v20, &qword_27F540298, &unk_252E3C270);
  sub_252938414(v20, v22, &qword_27F540298, &unk_252E3C270);
  v26 = (*(v23 + 80) + 40) & ~*(v23 + 80);
  v27 = swift_allocObject();
  *(v0 + 256) = v27;
  v27[2] = v24;
  v27[3] = v46;
  v27[4] = v25;
  sub_2529439A0(v20, v27 + v26);
  v28 = v25;

  if (v44)
  {
    v29 = *(v0 + 224);
    v30 = *(v0 + 168);
    v31 = *(v0 + 152);
    v32 = *(v0 + 160);
    sub_252929E74(v30 + 24, v0 + 56);
    v33 = __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    v34 = swift_task_alloc();
    *(v0 + 264) = v34;
    v34[2] = v46;
    v34[3] = v31;
    v34[4] = v30;
    v34[5] = v29;
    v35 = *v33;
    v36 = swift_task_alloc();
    *(v0 + 272) = v36;
    *v36 = v0;
    v36[1] = sub_252B8F210;

    return sub_252C0B6D8(0, sub_252B90D98, v34);
  }

  else
  {

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 200);
    v39 = *(v0 + 168);
    v40 = sub_252E36AD4();
    __swift_project_value_buffer(v40, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v41 = *(v39 + 96);
    __swift_project_boxed_opaque_existential_1((v39 + 72), v41);
    sub_252AD7CC4();
    v42 = swift_task_alloc();
    *(v0 + 320) = v42;
    *v42 = v0;
    v42[1] = sub_252B8F610;
    v43 = *(v0 + 200);

    return sub_252BDB88C(v0 + 16, &unk_252E4EA20, v27, v43, 0, 0, 0, v41);
  }
}

uint64_t sub_252B8F210(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 272);
  v5 = *(*v2 + 264);
  v6 = *(*v2 + 248);
  v9 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = v1;

  if (v1)
  {
    v7 = sub_252B8F51C;
  }

  else
  {
    v7 = sub_252B8F368;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252B8F368()
{
  v1 = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_252B8F408;
  v3 = v0[21];

  return sub_252E17FD0(v1);
}

uint64_t sub_252B8F408(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 296);
  v7 = *v2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v1;

  if (v1)
  {
    v5 = sub_252B8F8DC;
  }

  else
  {
    v5 = sub_252B8F780;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B8F51C()
{
  v1 = v0[32];
  v2 = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v3 = v0[36];
  v5 = v0[29];
  v4 = v0[30];
  v7 = v0[24];
  v6 = v0[25];
  sub_25293847C(v0[28], &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);

  v8 = v0[1];

  return v8();
}

uint64_t sub_252B8F610()
{
  v2 = *(*v1 + 320);
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 176);
  v8 = *v1;
  *(*v1 + 328) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_252B8FF80;
  }

  else
  {
    v6 = sub_252B8FE00;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252B8F780()
{
  v1 = v0[35];
  v0[17] = v1;
  v2 = v0 + 17;
  v3 = v0[38];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = sub_252BE8A5C(v5);

    *v2 = v6;
  }

  else
  {
    v7 = v1;
  }

  v8 = v0[24];
  v9 = v0[21];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[42] = v11;
  *(v11 + 16) = v2;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[43] = v12;
  *v12 = v0;
  v12[1] = sub_252B8F9D0;
  v13 = v0[24];

  return sub_252BDB88C((v0 + 12), &unk_252E3F140, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252B8F8DC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 160);

  v3 = *(v0 + 312);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  sub_25293847C(*(v0 + 224), &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_252B8F9D0()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 184);
  v6 = *(*v1 + 176);
  v10 = *v1;
  *(*v1 + 352) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252B8FCF0;
  }

  else
  {
    v8 = *(v2 + 336);

    v7 = sub_252B8FB50;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252B8FB50()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 304);
  v9 = *(v0 + 280);
  v10 = *(v0 + 256);
  v11 = *(v0 + 160);
  v12 = *(v0 + 144);
  (*(v4 + 112))(v7, v0 + 96, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  v13 = *(v0 + 232);
  v14 = *(v0 + 240);
  v16 = *(v0 + 192);
  v15 = *(v0 + 200);
  sub_25293847C(*(v0 + 224), &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v14, &qword_27F540298, &unk_252E3C270);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_252B8FCF0()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  v3 = *(v0 + 256);
  v4 = *(v0 + 160);

  v5 = *(v0 + 352);
  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v9 = *(v0 + 192);
  v8 = *(v0 + 200);
  sub_25293847C(*(v0 + 224), &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_252B8FE00()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[32];
  v9 = v0[18];
  (*(v4 + 112))(v7, v0 + 2, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v10 = v0[29];
  v11 = v0[30];
  v13 = v0[24];
  v12 = v0[25];
  sub_25293847C(v0[28], &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);

  v14 = v0[1];

  return v14();
}

uint64_t sub_252B8FF80()
{
  v1 = v0[32];

  v2 = v0[41];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[24];
  v5 = v0[25];
  sub_25293847C(v0[28], &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);

  v7 = v0[1];

  return v7();
}

uint64_t sub_252B90060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_252B90084, 0, 0);
}

uint64_t sub_252B90084()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v8 = *(v0 + 64);
  sub_252929E74(v2 + 24, v0 + 16);
  v3 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *(v4 + 16) = v8;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = *v3;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_252B90188;

  return sub_252C0B6D8(0, sub_252B90DA4, v4);
}

uint64_t sub_252B90188(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  v4[13] = v1;

  v7 = v4[11];
  if (v1)
  {

    v8 = sub_252B90338;
  }

  else
  {
    v4[14] = a1;

    v8 = sub_252B902D0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252B902D0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[1];
  v2 = v0[14];

  return v1(v2);
}

uint64_t sub_252B90338()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[1];
  v2 = v0[13];

  return v1();
}

uint64_t sub_252B9039C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  *(swift_allocObject() + 16) = MEMORY[0x277D84F90];
  type metadata accessor for HomeAutomationEntityResponses();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v10 + 24) = a2;
  v11 = *(a1 + 16);

  *(a1 + 16) = v10;
  memcpy(__dst, (a4 + 112), sizeof(__dst));
  memcpy(v18, (a4 + 112), sizeof(v18));
  sub_252938414(__dst, v17, &qword_27F5404C8, &unk_252E3FD60);
  v12 = a3;
  v13 = sub_252953488(a3, v18, 0);

  v14 = *(a1 + 8);

  *(a1 + 8) = v13;
  v15 = type metadata accessor for HomeAutomationAlreadyOffParameters(0);
  return sub_252956BAC(a5, a1 + *(v15 + 28));
}

uint64_t sub_252B90508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252B8EC04(a1, a2, a3);
}

void *sub_252B905BC@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for AlreadyOffResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252B90620(id a1, uint64_t a2)
{
  if (!a2)
  {
    v5 = 0;
    LODWORD(v2) = 2;
    goto LABEL_40;
  }

  v4 = sub_252C285F0();
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_83;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (!v6)
  {
    LODWORD(v2) = 1;
    goto LABEL_39;
  }

  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  v9 = v5 & 0xFFFFFFFFFFFFFF8;
  v10 = (v5 + 32);
  v11 = &off_279711000;
  v68 = (v5 + 32);
  v70 = v5 & 0xFFFFFFFFFFFFFF8;
  v78 = v5;
  v72 = v5 & 0xC000000000000001;
  v74 = v6;
LABEL_6:
  if (v8)
  {
    v12 = MEMORY[0x2530ADF00](v7, v5);
  }

  else
  {
    if (v7 >= *(v9 + 16))
    {
      goto LABEL_85;
    }

    v12 = *&v10[8 * v7];
  }

  v2 = v12;
  v13 = __OFADD__(v7++, 1);
  if (v13)
  {
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v14 = [v12 v11[220]];
  if (!v14)
  {

    LODWORD(v2) = 0;
    goto LABEL_39;
  }

  v15 = v14;
  v76 = v2;
  type metadata accessor for HomeUserTaskResponse();
  v16 = sub_252E37264();

  v5 = a1;
  LODWORD(v2) = v16 & 0xFFFFFFF8;
  if (v16 >> 62)
  {
    v17 = sub_252E378C4();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = 0;
  a1 = (v16 & 0xC000000000000001);
  while (1)
  {
    if (v17 == v18)
    {

      LODWORD(v2) = 1;
      v8 = v72;
      a1 = v5;
      v5 = v78;
      v10 = v68;
      v9 = v70;
      v11 = &off_279711000;
      if (v7 == v74)
      {
        goto LABEL_39;
      }

      goto LABEL_6;
    }

    if (a1)
    {
      v19 = MEMORY[0x2530ADF00](v18, v16);
    }

    else
    {
      if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_82;
      }

      v19 = *(v16 + 8 * v18 + 32);
    }

    v20 = v19;
    if (__OFADD__(v18, 1))
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      v6 = sub_252E378C4();
      goto LABEL_4;
    }

    v21 = [v19 userTask];
    if (!v21 || (v22 = v21, v23 = [v21 attribute], v22, v23 != 11))
    {
      v24 = [v20 userTask];
      if (!v24)
      {
        break;
      }

      v25 = v24;
      v26 = [v24 attribute];

      if (v26 != 2)
      {
        break;
      }
    }

    v27 = [v20 userTask];
    if (!v27)
    {
      break;
    }

    v28 = v27;
    v29 = [v27 value];

    if (!v29)
    {
      break;
    }

    v30 = [v29 type];

    if (v30 != 1)
    {
      break;
    }

    v31 = [v20 userTask];
    if (!v31)
    {
      break;
    }

    v32 = v31;
    v33 = [v31 value];

    if (!v33)
    {
      break;
    }

    v34 = [v33 BOOLValue];

    ++v18;
    if (v34)
    {

      goto LABEL_37;
    }
  }

LABEL_37:
  LODWORD(v2) = 0;
  a1 = v5;
  v5 = v78;
LABEL_39:

LABEL_40:
  v35 = [a1 userTask];
  if (!v35)
  {
    goto LABEL_69;
  }

  v36 = v35;
  v37 = [v35 attribute];

  if (v37 != 2)
  {
    goto LABEL_69;
  }

  if (!v5)
  {
LABEL_70:
    v59 = 0;
    goto LABEL_71;
  }

  v7 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
    goto LABEL_88;
  }

  v38 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v38)
  {
LABEL_89:

    v59 = 1;
    goto LABEL_71;
  }

  while (2)
  {
    v39 = 0;
    v40 = v5 & 0xC000000000000001;
    v41 = (v5 + 32);
    v42 = &off_279711000;
    v43 = &off_279711000;
    v44 = &off_279711000;
    v79 = v5;
    v75 = v2;
    v69 = v38;
    v71 = v7;
    v65 = (v5 + 32);
    v66 = v5 & 0xC000000000000001;
    v67 = a1;
LABEL_46:
    if (!v40)
    {
      if (v39 < *(v7 + 16))
      {
        v45 = *&v41[8 * v39];
        goto LABEL_49;
      }

LABEL_87:
      __break(1u);
LABEL_88:
      v38 = sub_252E378C4();
      if (!v38)
      {
        goto LABEL_89;
      }

      continue;
    }

    break;
  }

  v45 = MEMORY[0x2530ADF00](v39, v5);
LABEL_49:
  v77 = v45;
  v13 = __OFADD__(v39, 1);
  v46 = v39 + 1;
  if (v13)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v47 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v48 = sub_252E36F04();
  v49 = [v47 v42[226]];

  v50 = v49;
  [v50 v43[398]];
  [v50 v44[272]];

  v51 = [v77 taskResponses];
  if (!v51)
  {

LABEL_69:

    goto LABEL_70;
  }

  v52 = v51;
  type metadata accessor for HomeUserTaskResponse();
  v53 = sub_252E37264();

  v73 = v46;
  if (v53 >> 62)
  {
    v54 = sub_252E378C4();
    if (v54)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54)
    {
LABEL_53:
      v55 = 0;
      a1 = (v53 & 0xC000000000000001);
      LODWORD(v2) = v53 & 0xFFFFFFF8;
      while (1)
      {
        if (a1)
        {
          v56 = MEMORY[0x2530ADF00](v55, v53);
        }

        else
        {
          if (v55 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_80;
          }

          v56 = *(v53 + 8 * v55 + 32);
        }

        v57 = v56;
        v5 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        v80 = v56;
        v58 = sub_252DA5D40(&v80, 27, v50, 0, 1);

        if (v58)
        {
          break;
        }

        ++v55;
        if (v5 == v54)
        {
          goto LABEL_66;
        }
      }

      a1 = v67;
      v7 = v71;
      v39 = v73;
      v5 = v79;
      LODWORD(v2) = v75;
      v41 = v65;
      v40 = v66;
      v42 = &off_279711000;
      v43 = &off_279711000;
      v44 = &off_279711000;
      if (v73 != v69)
      {
        goto LABEL_46;
      }

      goto LABEL_89;
    }
  }

LABEL_66:

  v59 = 0;
  a1 = v67;
  LODWORD(v2) = v75;
LABEL_71:
  v60 = [a1 userTask];
  if (!v60)
  {
    sub_252C515AC();
    goto LABEL_77;
  }

  v61 = v60;
  v62 = [v60 taskType];

  if (v62 != 3)
  {
LABEL_77:
    v63 = 0;
    return v63 & 1;
  }

  v63 = v59 | v2;
  if (v2 == 2)
  {
    v63 = v59;
  }

  return v63 & 1;
}

uint64_t sub_252B90CA0()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_25294B958;

  return sub_252B90060(v4, v5, v6, v0 + v3);
}

uint64_t sub_252B90DD4()
{
  type metadata accessor for SetFullBrightnessHandleDelegate();

  return swift_allocObject();
}

void sub_252B90E04(void *a1, void (*a2)(void))
{
  v4 = [a1 userTask];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 filters];
    if (v6)
    {
      v7 = v6;
      type metadata accessor for HomeFilter();
      v8 = sub_252E37264();

      v41 = MEMORY[0x277D84F90];
      if (v8 >> 62)
      {
        goto LABEL_21;
      }

      for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
      {
        v40 = a2;
        v10 = 0;
        a2 = (v8 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x2530ADF00](v10, v8);
          }

          else
          {
            if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v12 = *(v8 + 8 * v10 + 32);
          }

          v13 = v12;
          v14 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          v15 = [v12 isExcludeFilter];
          sub_252956D08();
          v16 = sub_252E37674();
          v17 = v16;
          if (v15)
          {
            v18 = sub_252E37694();

            if (v18)
            {

              goto LABEL_8;
            }
          }

          else
          {
          }

          sub_252E37A94();
          v11 = *(v41 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
LABEL_8:
          ++v10;
          if (v14 == i)
          {
            v19 = v41;
            a2 = v40;
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        ;
      }

      v19 = MEMORY[0x277D84F90];
LABEL_23:

      if ((v19 & 0x8000000000000000) != 0 || (v19 & 0x4000000000000000) != 0)
      {
        if (sub_252E378C4())
        {
          goto LABEL_26;
        }
      }

      else if (*(v19 + 16))
      {
LABEL_26:
        v20 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v21 = sub_252E36F04();
        v22 = [v20 initWithIdentifier:0 displayString:v21];

        v23 = v22;
        [v23 setBoolValue_];
        [v23 setType_];

        v24 = objc_allocWithZone(type metadata accessor for HomeUserTask());
        v25 = sub_252E36F04();
        v26 = [v24 initWithIdentifier:0 displayString:v25];

        v27 = v26;
        [v27 setTaskType_];
        [v27 setAttribute_];
        [v27 setValue_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_252E3C3D0;
        *(inited + 32) = v27;
        *(inited + 40) = v5;
        v29 = v27;
        v30 = v5;
        v31 = sub_252B4CA9C(v19, inited, 0, 1);
        v33 = v32;

        swift_setDeallocating();
        v34 = *(inited + 16);
        swift_arrayDestroy();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402A8, &unk_252E3E850);
        v35 = swift_initStackObject();
        *(v35 + 16) = xmmword_252E3C290;
        *(v35 + 32) = v31;
        *(v35 + 40) = v33 & 1;
        sub_2529904E4(v31);
        v36 = combineResults(results:)(v35);
        swift_setDeallocating();
        sub_2529904F0(v35 + 32);
        sub_252990634(v36);
        a2(v36);

        sub_252927D3C(v31);
        goto LABEL_32;
      }
    }

    else
    {
    }
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v37 = sub_252E36AD4();
  __swift_project_value_buffer(v37, qword_27F544C70);
  sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD000000000000086, 0x8000000252E84360, 0xD000000000000021, 0x8000000252E68B10, 30);
  v29 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v38 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v29[v38] = 5;
  [v29 setUserActivity_];
  type metadata accessor for HomeEntityResponse();
  v39 = sub_252E37254();
  [v29 setEntityResponses_];

  a2(v29);
LABEL_32:
}

uint64_t sub_252B91374(void *a1)
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544C70);
  sub_252E379F4();

  strcpy(v20, "Input intent: ");
  HIBYTE(v20[1]) = -18;
  v3 = [a1 description];
  v4 = sub_252E36F34();
  v6 = v5;

  MEMORY[0x2530AD570](v4, v6);

  sub_252CC3D90(v20[0], v20[1], 0xD000000000000086, 0x8000000252E84360);

  if (!sub_252C4B5D4() || (sub_252C4B680(1) & 1) == 0)
  {
    goto LABEL_13;
  }

  v7 = [a1 userTask];
  if (!v7)
  {
    sub_252C515AC();
LABEL_13:
    v11 = 0;
    return v11 & 1;
  }

  v8 = v7;
  v9 = [v7 attribute];

  if (v9 != 2 || (sub_252AABAA0() & 1) == 0)
  {
    goto LABEL_13;
  }

  v10 = COERCE_DOUBLE(sub_252C4D57C());
  v11 = 0;
  if ((v12 & 1) == 0 && v10 == 100.0)
  {
    v13 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v13 + 288), v20);

    v14 = v21;
    v15 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    if ((*(v15 + 80))(v14, v15))
    {
      v16 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
      sub_252929E74((v16 + 16), v19);

      __swift_project_boxed_opaque_existential_1(v19, v19[3]);
      v17 = sub_252E338F4();
      __swift_destroy_boxed_opaque_existential_1(v19);
      v11 = v17 ^ 1;
    }

    else
    {
      v11 = 1;
    }

    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  return v11 & 1;
}

uint64_t sub_252B91614(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252B92A18(a1);
}

uint64_t sub_252B916C0()
{
  type metadata accessor for ShowEntityHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252B916F0(void *a1)
{
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v2 + 16), &v19);

  __swift_project_boxed_opaque_existential_1(&v19, v21);
  if (sub_252E338B4())
  {
    __swift_destroy_boxed_opaque_existential_1(&v19);
  }

  else
  {
    v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v3 + 16), v18);

    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    v4 = sub_252E33894();
    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = [a1 filters];
  if (v5)
  {
    v6 = type metadata accessor for HomeFilter();
    v7 = sub_252E37264();

    type metadata accessor for HomeStore();
    v8 = static HomeStore.shared.getter();
    v9 = sub_2529F3D2C(v7);
    v11 = v10;

    if (v11)
    {
      sub_252929F10(v9, 1);
    }

    else
    {
      if (v9 >> 62)
      {
        v12 = sub_252E378C4();
      }

      else
      {
        v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_252929F10(v9, 0);
      if (v12)
      {
        v5 = 1;
LABEL_15:

        return v5;
      }
    }

    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544C70);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E84430);
    v14 = MEMORY[0x2530AD730](v7, v6);
    v16 = v15;

    MEMORY[0x2530AD570](v14, v16);

    sub_252CC3D90(v19, v20, 0xD00000000000007BLL, 0x8000000252E84470);
    v5 = 0;
    goto LABEL_15;
  }

  return v5;
}

void sub_252B91984(unint64_t a1)
{
  v2 = sub_252E32CB4();
  v142 = *(v2 - 8);
  v143 = v2;
  v3 = *(v142 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v139 = v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v136 = v134 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v140 = v134 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v141 = v134 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v137 = v134 - v13;
  MEMORY[0x28223BE20](v12);
  v138 = v134 - v14;
  v15 = sub_252E32E84();
  v145 = *(v15 - 8);
  v146 = v15;
  v16 = *(v145 + 64);
  MEMORY[0x28223BE20](v15);
  v144 = v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v19 = MEMORY[0x277D84F90];
    v147 = a1;
    if (i)
    {
      v20 = 0;
      v21 = a1 & 0xC000000000000001;
      v22 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v21)
        {
          v24 = MEMORY[0x2530ADF00](v20, a1);
        }

        else
        {
          if (v20 >= *(v22 + 16))
          {
            goto LABEL_57;
          }

          v24 = *(a1 + 8 * v20 + 32);
        }

        v25 = v24;
        v26 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v27 = [v24 isExcludeFilter];
        sub_252956D08();
        v28 = sub_252E37674();
        v29 = v28;
        if (v27)
        {
          v30 = sub_252E37694();

          if (v30)
          {

            goto LABEL_7;
          }
        }

        else
        {
        }

        sub_252E37A94();
        v23 = *(v148 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
LABEL_7:
        a1 = v147;
        ++v20;
        if (v26 == i)
        {
          v31 = v148;
          v19 = MEMORY[0x277D84F90];
          if ((v148 & 0x8000000000000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_61;
        }
      }
    }

    v31 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_61;
    }

LABEL_19:
    if ((v31 & 0x4000000000000000) != 0)
    {
LABEL_61:
      if (!sub_252E378C4())
      {
        goto LABEL_62;
      }
    }

    else if (!*(v31 + 16))
    {
      goto LABEL_62;
    }

    v32 = type metadata accessor for HomeStore();
    v33 = a1;
    a1 = static HomeStore.shared.getter();
    v34 = sub_252B4623C(v33);
    v35 = sub_252C758E0(v34);

    v36 = sub_252DA089C(v35);

    if (!v36)
    {

      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v44 = sub_252E36AD4();
      __swift_project_value_buffer(v44, qword_27F544C70);
      v148 = 0;
      v149 = 0xE000000000000000;
      sub_252E379F4();

      v148 = 0xD00000000000002DLL;
      v149 = 0x8000000252E84520;
      v45 = type metadata accessor for HomeFilter();
      v46 = MEMORY[0x2530AD730](v147, v45);
      MEMORY[0x2530AD570](v46);

      sub_252CC3D90(v148, v149, 0xD00000000000007BLL, 0x8000000252E84470);

      return;
    }

    v148 = v19;
    if (!i)
    {
      break;
    }

    v134[1] = v32;
    v135 = v36;
    v37 = 0;
    v38 = v147;
    v39 = v147 & 0xC000000000000001;
    v40 = v147 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v39)
      {
        v41 = MEMORY[0x2530ADF00](v37, v38);
      }

      else
      {
        if (v37 >= *(v40 + 16))
        {
          goto LABEL_59;
        }

        v41 = *(v38 + 8 * v37 + 32);
      }

      v42 = v41;
      v43 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if ([v41 entityType] == 5)
      {
        sub_252E37A94();
        a1 = *(v148 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        v38 = v147;
      }

      else
      {
      }

      ++v37;
      if (v43 == i)
      {
        v19 = v148;
        v36 = v135;
        if ((v148 & 0x8000000000000000) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_63;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

  v38 = v147;
  if ((v19 & 0x8000000000000000) == 0)
  {
LABEL_39:
    if ((v19 & 0x4000000000000000) == 0)
    {
      v47 = *(v19 + 16);
      goto LABEL_41;
    }
  }

LABEL_63:
  v47 = sub_252E378C4();
LABEL_41:

  if (v47)
  {

    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v48 = sub_252E36AD4();
    __swift_project_value_buffer(v48, qword_27F544C70);
    v49 = "y home within those filters: ";
    v50 = 0xD00000000000001BLL;
LABEL_45:
    sub_252CC3D90(v50, v49 | 0x8000000000000000, 0xD00000000000007BLL, 0x8000000252E84470);
LABEL_62:

    return;
  }

  KeyPath = swift_getKeyPath();
  v52 = v38;
  v53 = sub_2529304DC(KeyPath, v38);

  if ((v53 & 1) == 0)
  {
    goto LABEL_66;
  }

  v54 = static HomeStore.shared.getter();
  v55 = HomeStore.services(matching:supporting:)(v52, 0);
  v57 = v56;

  if (v57)
  {
    goto LABEL_65;
  }

  if (v55 >> 62)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_65;
    }

LABEL_50:
    if ((v55 & 0xC000000000000001) != 0)
    {
      v58 = MEMORY[0x2530ADF00](0, v55);
    }

    else
    {
      if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_148;
      }

      v58 = *(v55 + 32);
    }

    v60 = v144;
    v59 = v145;
    v61 = v146;
    (*(v145 + 16))(v144, v58 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v146);
    v62 = sub_252E32E24();
    v64 = v63;
    (*(v59 + 8))(v60, v61);
    v65 = sub_25294833C(4u, v62, v64);

    if (!v65)
    {
      goto LABEL_91;
    }

    v66 = [v65 punchOutUri];

    if (!v66)
    {
      goto LABEL_153;
    }

    sub_252929F10(v55, 0);
    v67 = v138;
LABEL_76:
    sub_252E32C94();

    sub_252E32C64();

    (*(v142 + 8))(v67, v143);
    return;
  }

  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_50;
  }

LABEL_65:
  sub_252929F10(v55, v57 & 1);
  v52 = v147;
LABEL_66:
  v68 = swift_getKeyPath();
  v69 = sub_2529304DC(v68, v52);

  if ((v69 & 1) == 0)
  {
    goto LABEL_80;
  }

  v70 = static HomeStore.shared.getter();
  v55 = HomeStore.accessories(matching:supporting:)(v52, 0);
  v72 = v71;

  if (v72)
  {
    goto LABEL_79;
  }

  if (v55 >> 62)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_79;
    }

LABEL_70:
    if ((v55 & 0xC000000000000001) == 0)
    {
      if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_150;
      }

      v73 = *(v55 + 32);

      goto LABEL_73;
    }

LABEL_148:
    v73 = MEMORY[0x2530ADF00](0, v55);
LABEL_73:
    v75 = v144;
    v74 = v145;
    v76 = v146;
    (*(v145 + 16))(v144, v73 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v146);
    v77 = sub_252E32E24();
    v79 = v78;
    (*(v74 + 8))(v75, v76);
    v80 = sub_25294833C(3u, v77, v79);

    if (!v80)
    {
      goto LABEL_91;
    }

    v66 = [v80 punchOutUri];

    if (!v66)
    {
      goto LABEL_154;
    }

    sub_252929F10(v55, 0);
    v67 = v137;
    goto LABEL_76;
  }

  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_70;
  }

LABEL_79:
  sub_252929F10(v55, v72 & 1);
  v52 = v147;
LABEL_80:
  v81 = static HomeStore.shared.getter();
  v55 = HomeStore.accessories(matching:supporting:)(v52, 0);
  v83 = v82;

  if (v83)
  {
    goto LABEL_97;
  }

  if (v55 >> 62)
  {
    if ((v55 & 0x8000000000000000) == 0)
    {
      v81 = (v55 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v81 = v55;
    }

    if (sub_252E378C4() != 1 || !sub_252E378C4())
    {
      goto LABEL_97;
    }

LABEL_83:
    if ((v55 & 0xC000000000000001) != 0)
    {
      goto LABEL_141;
    }

    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v84 = *(v55 + 32);

      goto LABEL_86;
    }

    __break(1u);
    goto LABEL_143;
  }

  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
    goto LABEL_83;
  }

LABEL_97:
  sub_252929F10(v55, v83 & 1);
  v95 = swift_getKeyPath();
  v96 = sub_2529304DC(v95, v147);

  if (!i || (v96 & 1) == 0)
  {
    goto LABEL_114;
  }

  if ((v147 & 0xC000000000000001) != 0)
  {
    v97 = MEMORY[0x2530ADF00](0);
LABEL_102:
    v81 = v97;
    v98 = static HomeStore.shared.getter();
    v83 = sub_2529F2818(v81);

    if (v83 >> 62)
    {
      if (sub_252E378C4())
      {
LABEL_104:
        if ((v83 & 0xC000000000000001) == 0)
        {
          if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v99 = *(v83 + 32);

LABEL_107:

            v101 = v144;
            v100 = v145;
            v102 = v146;
            (*(v145 + 16))(v144, v99 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v146);
            v103 = sub_252E32E24();
            v105 = v104;
            (*(v100 + 8))(v101, v102);
            v106 = sub_25294833C(2u, v103, v105);

            if (!v106)
            {

              goto LABEL_62;
            }

            v107 = [v106 punchOutUri];

            if (v107)
            {

              v108 = v140;
              sub_252E32C94();

              sub_252E32C64();

              (*(v142 + 8))(v108, v143);
              return;
            }

            goto LABEL_151;
          }

          __break(1u);
          goto LABEL_145;
        }

LABEL_143:
        v99 = MEMORY[0x2530ADF00](0, v83);
        goto LABEL_107;
      }
    }

    else if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_104;
    }

LABEL_114:
    v109 = swift_getKeyPath();
    v110 = v147;
    v111 = sub_252BAF91C(v109, v147);
    v112 = v110;

    if (i && v111)
    {
      v113 = 0;
      v114 = v110 & 0xC000000000000001;
      v55 = v112 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v114)
        {
          v115 = MEMORY[0x2530ADF00](v113, v112);
        }

        else
        {
          if (v113 >= *(v55 + 16))
          {
            goto LABEL_139;
          }

          v115 = *(v112 + 8 * v113 + 32);
        }

        v116 = v115;
        v117 = v113 + 1;
        if (__OFADD__(v113, 1))
        {
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if ([v115 deviceType])
        {
          break;
        }

        ++v113;
        v112 = v147;
        if (v117 == i)
        {
          goto LABEL_126;
        }
      }

      v118 = [v116 deviceType];

      v119 = sub_252C9C724(v118);
      v112 = v147;
      if (v119 == 5)
      {
        goto LABEL_126;
      }

      v131 = sub_2529485B0(v119);
      if (v131)
      {
        v132 = v131;
        v133 = [v131 punchOutUri];

        if (!v133)
        {
          goto LABEL_155;
        }

        v94 = v136;
        sub_252E32C94();

        goto LABEL_135;
      }
    }

    else
    {
LABEL_126:
      v120 = swift_getKeyPath();
      v121 = sub_2529304DC(v120, v112);

      if ((v121 & 1) == 0)
      {

        if (qword_27F53F498 == -1)
        {
LABEL_131:
          v130 = sub_252E36AD4();
          __swift_project_value_buffer(v130, qword_27F544C70);
          v49 = "I can't show scene entities";
          v50 = 0xD00000000000002BLL;
          goto LABEL_45;
        }

LABEL_145:
        swift_once();
        goto LABEL_131;
      }

      v123 = v144;
      v122 = v145;
      v124 = v146;
      (*(v145 + 16))(v144, v36 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v146);
      v125 = sub_252E32E24();
      v127 = v126;
      (*(v122 + 8))(v123, v124);
      v128 = sub_25294833C(1u, v125, v127);

      if (v128)
      {
        v129 = [v128 punchOutUri];

        if (!v129)
        {
          goto LABEL_152;
        }

        v94 = v139;
        sub_252E32C94();

LABEL_135:
        sub_252E32C64();
        goto LABEL_136;
      }
    }

    goto LABEL_62;
  }

  if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v97 = *(v147 + 32);
    goto LABEL_102;
  }

LABEL_140:
  __break(1u);
LABEL_141:
  v84 = MEMORY[0x2530ADF00](0, v55);
LABEL_86:
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v85 = sub_252E36AD4();
  __swift_project_value_buffer(v85, qword_27F544C70);
  sub_252CC3D90(0xD000000000000039, 0x8000000252E845A0, 0xD00000000000007BLL, 0x8000000252E84470);
  v87 = v144;
  v86 = v145;
  v88 = v146;
  (*(v145 + 16))(v144, v84 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v146);
  v89 = sub_252E32E24();
  v91 = v90;
  (*(v86 + 8))(v87, v88);
  v92 = sub_25294833C(3u, v89, v91);

  if (!v92)
  {
LABEL_91:

    sub_252929F10(v55, 0);
    return;
  }

  v93 = [v92 punchOutUri];

  if (v93)
  {

    sub_252929F10(v55, 0);
    v94 = v141;
    sub_252E32C94();

    sub_252E32C64();

LABEL_136:

    (*(v142 + 8))(v94, v143);
    return;
  }

LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

uint64_t sub_252B92A38()
{
  v1 = [*(v0 + 88) filters];
  if (!v1)
  {
    v8 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
    v12 = OBJC_IVAR___ShowHomeIntentResponse_code;
    swift_beginAccess();
    v13 = 5;
LABEL_8:
    *&v8[v12] = v13;
    [v8 setUserActivity_];
    goto LABEL_9;
  }

  v2 = v1;
  type metadata accessor for HomeFilter();
  v3 = sub_252E37264();

  sub_252B91984(v3);
  v5 = v4;
  v7 = v6;

  if (!v7)
  {
    v8 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
    v12 = OBJC_IVAR___ShowHomeIntentResponse_code;
    swift_beginAccess();
    v13 = 103;
    goto LABEL_8;
  }

  v8 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
  v9 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  *&v8[v9] = 4;
  [v8 setUserActivity_];
  v10 = sub_252E36F04();
  [v8 setPunchOutURL_];

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544C70);
  sub_252E379F4();

  MEMORY[0x2530AD570](v5, v7);

  sub_252CC3D90(0xD000000000000028, 0x8000000252E844F0, 0xD00000000000007BLL, 0x8000000252E84470);

LABEL_9:
  v14 = *(v0 + 8);

  return v14(v8);
}

uint64_t sub_252B92CFC(uint64_t a1, const void *a2)
{
  v3[129] = v2;
  v3[128] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8) + 64) + 15;
  v3[130] = swift_task_alloc();
  memcpy(v3 + 2, a2, 0x1F8uLL);

  return MEMORY[0x2822009F8](sub_252B92DB0, 0, 0);
}

uint64_t sub_252B92DB0()
{
  v20 = v0;
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v1 = v0[128];
  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544DA8);
  sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E84620, 0xD000000000000079, 0x8000000252E84640);
  memcpy(__dst, v0 + 2, sizeof(__dst));
  v3 = v1;
  sub_2529D291C((v0 + 2), (v0 + 65));
  v4 = sub_252953488(v1, __dst, 0);
  v0[131] = v4;

  v5 = [v3 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();

    type metadata accessor for HomeStore();
    v8 = static HomeStore.shared.getter();
    v9 = HomeStore.services(matching:supporting:)(v7, 0);
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      goto LABEL_7;
    }

    sub_252929F10(v9, 1);
  }

  v9 = MEMORY[0x277D84F90];
LABEL_7:
  v12 = v0[130];
  v13 = *(v0[129] + 16);
  type metadata accessor for HomeAutomationEntityResponses();

  v14 = sub_25299DDFC(v9);
  sub_252BFDB14(v4, v14);

  v15 = swift_task_alloc();
  v0[132] = v15;
  *v15 = v0;
  v15[1] = sub_252B270B8;
  v16 = v0[130];
  v17 = v0[129];

  return sub_252958B80(v16);
}

uint64_t sub_252B93088(uint64_t a1, const void *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252B92CFC(a1, a2);
}

void *sub_252B93130@<X0>(void *a1@<X8>)
{
  type metadata accessor for BlockModifySensors();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

uint64_t sub_252B93218()
{
  v52 = sub_252E32FE4();
  v50 = *(v52 - 8);
  v1 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v49 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_252E32BA4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252E32FF4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v46 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v19 = sub_252E32E04();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x28223BE20](v19);
  v45 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v44 = &v41 - v25;
  MEMORY[0x28223BE20](v24);
  v51 = &v41 - v26;
  sub_252E32FC4();
  (*(v4 + 16))(v7, v0 + OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate, v3);
  sub_252E32FA4();
  (*(v4 + 8))(v7, v3);
  v27 = *(v9 + 8);
  v47 = v9 + 8;
  v48 = v8;
  v27(v12, v8);
  v28 = v20[6];
  if (v28(v18, 1, v19) == 1)
  {
    v29 = v18;
  }

  else
  {
    v41 = v20[4];
    v41(v51, v18, v19);
    sub_252E32FC4();
    v30 = *MEMORY[0x277CC99A0];
    v31 = v50;
    v32 = *(v50 + 104);
    v43 = v28;
    v33 = v49;
    v32(v49, v30, v52);
    v34 = v45;
    sub_252E32DC4();
    v35 = v46;
    v42 = v27;
    sub_252E32FB4();
    v36 = v20[1];
    v45 = (v20 + 1);
    v36(v34, v19);
    (*(v31 + 8))(v33, v52);
    v42(v12, v48);
    if (v43(v35, 1, v19) != 1)
    {
      v38 = v44;
      v41(v44, v35, v19);
      v39 = v51;
      v37 = sub_252E32D84();
      v36(v38, v19);
      v36(v39, v19);
      return v37 & 1;
    }

    v36(v51, v19);
    v29 = v35;
  }

  sub_25293847C(v29, &qword_27F540F38, &unk_252E41490);
  v37 = 0;
  return v37 & 1;
}

uint64_t sub_252B93750()
{
  v1 = sub_252E32FF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_252E32E04();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  sub_252E32FC4();
  sub_252E32DF4();
  v30 = v0;
  sub_252B93B3C(v5, v15, v9);
  v18 = *(v11 + 8);
  v18(v15, v10);
  (*(v2 + 8))(v5, v1);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_25293847C(v9, &qword_27F540F38, &unk_252E41490);
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v19 = sub_252E36AD4();
    __swift_project_value_buffer(v19, qword_27F544D60);
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_252E379F4();

    v31 = 0xD00000000000001FLL;
    v32 = 0x8000000252E84800;
    v20 = [v30 description];
    v21 = sub_252E36F34();
    v23 = v22;

    MEMORY[0x2530AD570](v21, v23);

    MEMORY[0x2530AD570](46, 0xE100000000000000);
    sub_252CC4050(v31, v32, 0xD00000000000007ELL, 0x8000000252E84780, 0xD000000000000012, 0x8000000252E84820, 81);

    return 0;
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    v25 = sub_252E36214();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_252E36204();
    sub_252E32D94();
    sub_252E361F4();

    v28 = sub_252E361E4();

    v18(v17, v10);
    return v28;
  }
}

uint64_t sub_252B93B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a2;
  v95 = a1;
  v98 = a3;
  v79 = sub_252E32FE4();
  v78 = *(v79 - 8);
  v4 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v77 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E32F64();
  v88 = *(v6 - 8);
  v89 = v6;
  v7 = *(v88 + 64);
  MEMORY[0x28223BE20](v6);
  v87 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_252E32F74();
  v86 = *(v94 - 8);
  v9 = *(v86 + 64);
  MEMORY[0x28223BE20](v94);
  v85 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_252E32F24();
  v83 = *(v93 - 8);
  v11 = *(v83 + 64);
  MEMORY[0x28223BE20](v93);
  v82 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v13 = *(*(v76 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v76);
  v74 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v84 = &v74 - v17;
  MEMORY[0x28223BE20](v16);
  v92 = &v74 - v18;
  v19 = sub_252E32E04();
  v99 = *(v19 - 8);
  v100 = v19;
  v20 = *(v99 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v75 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v96 = &v74 - v23;
  v24 = sub_252E32BA4();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = MEMORY[0x28223BE20](v24);
  v80 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v91 = &v74 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v74 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v74 - v34;
  v36 = OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate;
  v37 = v25[2];
  v97 = v3;
  v37(&v74 - v34, v3 + OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate, v24);
  v81 = sub_252E32B54();
  v39 = v38;
  v40 = v25[1];
  v40(v35, v24);
  if (v39)
  {
    return (*(v99 + 56))(v98, 1, 1, v100);
  }

  v37(v33, v97 + v36, v24);
  sub_252E32B64();
  v42 = v41;
  v40(v33, v24);
  if (v42)
  {
    return (*(v99 + 56))(v98, 1, 1, v100);
  }

  v43 = v91;
  v37(v91, v97 + v36, v24);
  sub_252E32B34();
  v45 = v44;
  v40(v43, v24);
  if (v45)
  {
    v46 = v99;
    v47 = v100;
    v48 = v92;
    (*(v99 + 16))(v92, v90, v100);
    (*(v46 + 56))(v48, 0, 1, v47);
    v49 = v96;
  }

  else
  {
    v50 = v80;
    v37(v80, v97 + v36, v24);
    v48 = v92;
    sub_252E32FA4();
    v40(v50, v24);
    v46 = v99;
    v47 = v100;
    v51 = (*(v99 + 48))(v48, 1, v100);
    v49 = v96;
    if (v51 == 1)
    {
LABEL_8:
      sub_25293847C(v48, &qword_27F540F38, &unk_252E41490);
      return (*(v99 + 56))(v98, 1, 1, v100);
    }
  }

  v52 = *(v46 + 32);
  v97 = v46 + 32;
  v92 = v52;
  (v52)(v49, v48, v47);
  v54 = v82;
  v53 = v83;
  (*(v83 + 104))(v82, *MEMORY[0x277CC9878], v93);
  v55 = v85;
  v56 = v86;
  (*(v86 + 104))(v85, *MEMORY[0x277CC9900], v94);
  v57 = v88;
  v58 = v89;
  v59 = v87;
  (*(v88 + 104))(v87, *MEMORY[0x277CC98E8], v89);
  v60 = v84;
  sub_252E32F94();
  (*(v57 + 8))(v59, v58);
  v61 = v99;
  (*(v56 + 8))(v55, v94);
  v62 = v54;
  v48 = v60;
  v63 = v100;
  (*(v53 + 8))(v62, v93);
  if ((*(v61 + 48))(v48, 1, v63) == 1)
  {
    (*(v61 + 8))(v96, v63);
    goto LABEL_8;
  }

  v65 = v75;
  v66 = v96;
  (v92)(v75, v48, v63);
  sub_252B94C38();
  sub_252E36EB4();
  v67 = v78;
  v68 = v77;
  v69 = v79;
  (*(v78 + 104))(v77, *MEMORY[0x277CC9968], v79);
  v70 = v98;
  sub_252E32FB4();
  (*(v67 + 8))(v68, v69);
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v71 = sub_252E36AD4();
  __swift_project_value_buffer(v71, qword_27F544D60);
  v101 = 0;
  v102 = 0xE000000000000000;
  sub_252E379F4();

  v101 = 0xD000000000000012;
  v102 = 0x8000000252E84760;
  sub_2529EAFDC(v70, v74);
  v72 = sub_252E36F94();
  MEMORY[0x2530AD570](v72);

  sub_252CC3D90(v101, v102, 0xD00000000000007ELL, 0x8000000252E84780);

  v73 = *(v61 + 8);
  v73(v65, v63);
  return (v73)(v66, v63);
}

id TimeTriggerValue.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

uint64_t sub_252B94624()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate;
  v2 = sub_252E32BA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_recurringDate, &qword_27F540F38, &unk_252E41490);
}

id TimeTriggerValue.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimeTriggerValue();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TimeTriggerValue()
{
  result = qword_27F5438C8;
  if (!qword_27F5438C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252B947AC()
{
  v0 = sub_252E32BA4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2529EAF84();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_252B94898()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5438D8, &unk_252E4EC50);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v24 - v2;
  v4 = sub_252E32F04();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252E32FF4();
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = *(v26 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252E35CB4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_252E35C74();
  v17 = *(v25 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v25);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E35C64();
  (*(v13 + 104))(v16, *MEMORY[0x277D56370], v12);
  sub_252E32FC4();
  sub_252E32EC4();
  v21 = sub_252E35C24();
  (*(*(v21 - 8) + 56))(v3, 1, 1, v21);
  sub_252CC6450(MEMORY[0x277D84F90]);
  v22 = sub_252E35C54();

  sub_25293847C(v3, &qword_27F5438D8, &unk_252E4EC50);
  (*(v28 + 8))(v7, v29);
  (*(v26 + 8))(v11, v27);
  (*(v13 + 8))(v16, v12);
  (*(v17 + 8))(v20, v25);
  return v22 & 1;
}

unint64_t sub_252B94C38()
{
  result = qword_27F5438E0;
  if (!qword_27F5438E0)
  {
    sub_252E32E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5438E0);
  }

  return result;
}

uint64_t sub_252B94C90(uint64_t *a1, int a2)
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

uint64_t sub_252B94CD8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_252B94D40(uint64_t *a1, int a2)
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

uint64_t sub_252B94D88(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_252B94E08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_252B94E50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_252B94F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[53] = a3;
  v4[54] = v3;
  v4[51] = a1;
  v4[52] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540570, &unk_252E50EE0) - 8) + 64) + 15;
  v4[55] = swift_task_alloc();
  v6 = sub_252E36AD4();
  v4[56] = v6;
  v7 = *(v6 - 8);
  v4[57] = v7;
  v8 = *(v7 + 64) + 15;
  v4[58] = swift_task_alloc();
  v9 = sub_252E34014();
  v4[59] = v9;
  v10 = *(v9 - 8);
  v4[60] = v10;
  v11 = *(v10 + 64) + 15;
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B950F8, 0, 0);
}

uint64_t sub_252B950F8()
{
  v1 = *(v0 + 424);
  v2 = swift_allocObject();
  *(v0 + 552) = v2;
  v3 = MEMORY[0x277D84F90];
  *(v2 + 16) = MEMORY[0x277D84F90];
  v4 = (v2 + 16);
  v90 = v2;
  if (v1)
  {
    v5 = sub_252C285F0();
    v6 = v5;
    v92 = v3;
    v87 = v1;
    v88 = v4;
    v7 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v5 >> 62)
    {
LABEL_59:
      v8 = sub_252E378C4();
    }

    else
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (v8 != v9)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x2530ADF00](v9, v6);
      }

      else
      {
        if (v9 >= *(v7 + 16))
        {
          goto LABEL_58;
        }

        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v14 = sub_252DA124C(0);

      ++v9;
      if (v14)
      {
        MEMORY[0x2530AD700]();
        if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v15 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v10 = v92;
        v9 = v13;
      }
    }

    v1 = v87;
    v4 = v88;
    v16 = *v88;
  }

  else
  {
    v10 = v3;
  }

  v17 = *(v0 + 416);
  *v4 = v10;

  v18 = [v17 userTask];
  if (!v18)
  {
    goto LABEL_27;
  }

  v19 = v18;
  v20 = [v18 attribute];

  if (v20 > 39)
  {
    if (v20 != 40)
    {
      if (v20 == 41)
      {
        v28 = *(v0 + 432);
        v22 = swift_allocObject();
        *(v0 + 848) = v22;
        *(v22 + 16) = v28;
        *(v22 + 24) = v90;
        swift_retain_n();

        if (v1)
        {
          v29 = *(v28 + 48);
          v30 = *(v0 + 424);
          v25 = *__swift_project_boxed_opaque_existential_1((v28 + 24), v29);
          v91 = sub_252C0CA0C;
          v26 = swift_task_alloc();
          *(v0 + 856) = v26;
          *v26 = v0;
          v27 = sub_252B98A40;
          goto LABEL_39;
        }

        if (qword_27F53F4D0 != -1)
        {
          swift_once();
        }

        v78 = *(v0 + 496);
        v79 = *(v0 + 432);
        __swift_project_value_buffer(*(v0 + 448), qword_27F544D18);
        sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
        v73 = *(v79 + 96);
        __swift_project_boxed_opaque_existential_1((v79 + 72), v73);
        sub_252AD7CC4();
        v80 = swift_task_alloc();
        *(v0 + 904) = v80;
        *v80 = v0;
        v80[1] = sub_252B98E24;
        v75 = *(v0 + 496);
        v76 = &unk_252E4EF80;
        v77 = v0 + 16;
        goto LABEL_54;
      }

      goto LABEL_27;
    }

    v68 = *(v0 + 432);
    v22 = swift_allocObject();
    *(v0 + 752) = v22;
    *(v22 + 16) = v68;
    *(v22 + 24) = v90;
    swift_retain_n();

    if (v1)
    {
      v69 = *(v68 + 48);
      v70 = *(v0 + 424);
      v25 = *__swift_project_boxed_opaque_existential_1((v68 + 24), v69);
      v91 = sub_252C0C838;
      v26 = swift_task_alloc();
      *(v0 + 760) = v26;
      *v26 = v0;
      v27 = sub_252B97BB4;
      goto LABEL_39;
    }

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v84 = *(v0 + 512);
    v85 = *(v0 + 432);
    __swift_project_value_buffer(*(v0 + 448), qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v73 = *(v85 + 96);
    __swift_project_boxed_opaque_existential_1((v85 + 72), v73);
    sub_252AD7CC4();
    v86 = swift_task_alloc();
    *(v0 + 808) = v86;
    *v86 = v0;
    v86[1] = sub_252B97F98;
    v75 = *(v0 + 512);
    v76 = &unk_252E4EF98;
    v77 = v0 + 96;
LABEL_54:

    return sub_252BDB88C(v77, v76, v22, v75, 0, 0, 0, v73);
  }

  if (v20 == 38)
  {
    v65 = *(v0 + 432);
    v22 = swift_allocObject();
    *(v0 + 560) = v22;
    *(v22 + 16) = v65;
    *(v22 + 24) = v90;
    swift_retain_n();

    if (v1)
    {
      v66 = *(v65 + 48);
      v67 = *(v0 + 424);
      v25 = *__swift_project_boxed_opaque_existential_1((v65 + 24), v66);
      v91 = sub_252C0C38C;
      v26 = swift_task_alloc();
      *(v0 + 568) = v26;
      *v26 = v0;
      v27 = sub_252B95E9C;
      goto LABEL_39;
    }

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v81 = *(v0 + 544);
    v82 = *(v0 + 432);
    __swift_project_value_buffer(*(v0 + 448), qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v73 = *(v82 + 96);
    __swift_project_boxed_opaque_existential_1((v82 + 72), v73);
    sub_252AD7CC4();
    v83 = swift_task_alloc();
    *(v0 + 616) = v83;
    *v83 = v0;
    v83[1] = sub_252B96280;
    v75 = *(v0 + 544);
    v76 = &unk_252E4EFC8;
    v77 = v0 + 256;
    goto LABEL_54;
  }

  if (v20 == 39)
  {
    v21 = *(v0 + 432);
    v22 = swift_allocObject();
    *(v0 + 656) = v22;
    *(v22 + 16) = v21;
    *(v22 + 24) = v90;
    swift_retain_n();

    if (v1)
    {
      v23 = *(v21 + 48);
      v24 = *(v0 + 424);
      v25 = *__swift_project_boxed_opaque_existential_1((v21 + 24), v23);
      v91 = sub_252C0CFB8;
      v26 = swift_task_alloc();
      *(v0 + 664) = v26;
      *v26 = v0;
      v27 = sub_252B96D28;
LABEL_39:
      v26[1] = v27;

      return v91(0, v25, v4);
    }

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v71 = *(v0 + 528);
    v72 = *(v0 + 432);
    __swift_project_value_buffer(*(v0 + 448), qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v73 = *(v72 + 96);
    __swift_project_boxed_opaque_existential_1((v72 + 72), v73);
    sub_252AD7CC4();
    v74 = swift_task_alloc();
    *(v0 + 712) = v74;
    *v74 = v0;
    v74[1] = sub_252B9710C;
    v75 = *(v0 + 528);
    v76 = &unk_252E4EFB0;
    v77 = v0 + 176;
    goto LABEL_54;
  }

LABEL_27:
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v32 = *(v0 + 456);
  v31 = *(v0 + 464);
  v33 = *(v0 + 448);
  v34 = *(v0 + 416);
  v35 = __swift_project_value_buffer(v33, qword_27F544D18);
  (*(v32 + 16))(v31, v35, v33);
  sub_252E379F4();

  v36 = [v34 userTask];
  v37 = v36;
  if (v36)
  {
    v38 = [v36 attribute];
  }

  else
  {
    v38 = 0;
  }

  v39 = *(v0 + 456);
  v40 = *(v0 + 464);
  v41 = *(v0 + 440);
  v42 = *(v0 + 448);
  v43 = *(v0 + 432);
  v89 = *(v0 + 408);
  *(v0 + 360) = v38;
  *(v0 + 368) = v37 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540728, qword_252E4B870);
  v44 = sub_252E36F94();
  MEMORY[0x2530AD570](v44);

  sub_252CC4050(0xD00000000000002ELL, 0x8000000252E848C0, 0xD00000000000009CLL, 0x8000000252E848F0, 0xD00000000000001FLL, 0x8000000252E84990, 76);

  (*(v39 + 8))(v40, v42);
  sub_2529515FC(0, 0, 0x4F6E776F6E6B6E75, 0xEE00656D6F637475);
  type metadata accessor for ErrorFilingHelper();
  inited = swift_initStackObject();
  v46 = sub_252E36884();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  *(inited + 16) = sub_252E36874();
  v49 = sub_252E36834();
  (*(*(v49 - 8) + 56))(v41, 1, 1, v49);
  sub_25295ADB4(0xD00000000000006ELL, 0x8000000252E849B0, 0x4F6E776F6E6B6E55, 0xEE00656D6F637475, 0xD000000000000024, 0x8000000252E4EEF0, v41);

  sub_25293847C(v41, &qword_27F540570, &unk_252E50EE0);
  v50 = v43[12];
  v51 = v43[13];
  __swift_project_boxed_opaque_existential_1(v43 + 9, v50);

  sub_252943B8C(sub_252B99F14, v43, v50, v51);
  v52 = *(v0 + 432);

  v53 = *(v0 + 544);
  v54 = *(v0 + 536);
  v55 = *(v0 + 528);
  v56 = *(v0 + 520);
  v58 = *(v0 + 504);
  v57 = *(v0 + 512);
  v60 = *(v0 + 488);
  v59 = *(v0 + 496);
  v61 = *(v0 + 464);
  v62 = *(v0 + 440);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_252B95E9C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 568);
  v7 = *v2;
  *(v3 + 576) = a1;
  *(v3 + 584) = v1;

  if (v1)
  {
    v5 = sub_252B9616C;
  }

  else
  {
    v5 = sub_252B95FB4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B95FB4()
{
  v1 = v0[69];
  v2 = v0[53];

  v3 = swift_task_alloc();
  v0[74] = v3;
  *v3 = v0;
  v3[1] = sub_252B96054;
  v4 = v0[54];

  return sub_252E174F4(v2);
}

uint64_t sub_252B96054(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 592);
  v7 = *v2;
  *(v3 + 600) = a1;
  *(v3 + 608) = v1;

  if (v1)
  {
    v5 = sub_252B96544;
  }

  else
  {
    v5 = sub_252B963E8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B9616C()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[53];

  v17 = v0[73];
  v4 = v0[69];

  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[65];
  v10 = v0[63];
  v9 = v0[64];
  v12 = v0[61];
  v11 = v0[62];
  v13 = v0[58];
  v14 = v0[55];

  v15 = v0[1];

  return v15();
}

uint64_t sub_252B96280()
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v4 = *v1;
  *(*v1 + 624) = v0;

  (*(v2[60] + 8))(v2[68], v2[59]);
  if (v0)
  {
    v5 = sub_252B96C28;
  }

  else
  {
    v5 = sub_252B96A90;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B963E8()
{
  v1 = v0 + 50;
  v2 = v0[75];
  v3 = v0[72];
  v0[50] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[67];
  v9 = v0[54];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[79] = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[80] = v12;
  *v12 = v0;
  v12[1] = sub_252B96658;
  v13 = v0[67];

  return sub_252BDB88C((v0 + 37), &unk_252E4EFD0, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252B96544()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 424);

  v16 = *(v0 + 608);
  v3 = *(v0 + 552);

  v4 = *(v0 + 544);
  v5 = *(v0 + 536);
  v6 = *(v0 + 528);
  v7 = *(v0 + 520);
  v9 = *(v0 + 504);
  v8 = *(v0 + 512);
  v11 = *(v0 + 488);
  v10 = *(v0 + 496);
  v12 = *(v0 + 464);
  v13 = *(v0 + 440);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252B96658()
{
  v2 = *v1;
  v3 = *(*v1 + 640);
  v7 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    (*(v2[60] + 8))(v2[67], v2[59]);
    v4 = sub_252B96960;
  }

  else
  {
    v5 = v2[79];
    (*(v2[60] + 8))(v2[67], v2[59]);

    v4 = sub_252B967A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B967A8()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 416);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 600);
  v9 = *(v0 + 576);
  v10 = *(v0 + 560);
  v11 = *(v0 + 424);
  v12 = *(v0 + 408);
  (*(v4 + 112))(v7, v0 + 296, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 296));

  v13 = *(v0 + 552);

  v14 = *(v0 + 544);
  v15 = *(v0 + 536);
  v16 = *(v0 + 528);
  v17 = *(v0 + 520);
  v19 = *(v0 + 504);
  v18 = *(v0 + 512);
  v21 = *(v0 + 488);
  v20 = *(v0 + 496);
  v22 = *(v0 + 464);
  v23 = *(v0 + 440);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_252B96960()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 600);
  v3 = *(v0 + 560);
  v4 = *(v0 + 424);

  v18 = *(v0 + 648);
  v5 = *(v0 + 552);

  v6 = *(v0 + 544);
  v7 = *(v0 + 536);
  v8 = *(v0 + 528);
  v9 = *(v0 + 520);
  v11 = *(v0 + 504);
  v10 = *(v0 + 512);
  v13 = *(v0 + 488);
  v12 = *(v0 + 496);
  v14 = *(v0 + 464);
  v15 = *(v0 + 440);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_252B96A90()
{
  v1 = v0[54];
  v2 = v0[52];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[70];
  v9 = v0[51];
  (*(v4 + 112))(v7, v0 + 32, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  v10 = v0[69];

  v11 = v0[68];
  v12 = v0[67];
  v13 = v0[66];
  v14 = v0[65];
  v16 = v0[63];
  v15 = v0[64];
  v18 = v0[61];
  v17 = v0[62];
  v19 = v0[58];
  v20 = v0[55];

  v21 = v0[1];

  return v21();
}

uint64_t sub_252B96C28()
{
  v1 = v0[70];

  v15 = v0[78];
  v2 = v0[69];

  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[65];
  v8 = v0[63];
  v7 = v0[64];
  v10 = v0[61];
  v9 = v0[62];
  v11 = v0[58];
  v12 = v0[55];

  v13 = v0[1];

  return v13();
}

uint64_t sub_252B96D28(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 664);
  v7 = *v2;
  *(v3 + 672) = a1;
  *(v3 + 680) = v1;

  if (v1)
  {
    v5 = sub_252B96FF8;
  }

  else
  {
    v5 = sub_252B96E40;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B96E40()
{
  v1 = v0[69];
  v2 = v0[53];

  v3 = swift_task_alloc();
  v0[86] = v3;
  *v3 = v0;
  v3[1] = sub_252B96EE0;
  v4 = v0[54];

  return sub_252E174F4(v2);
}

uint64_t sub_252B96EE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 688);
  v7 = *v2;
  *(v3 + 696) = a1;
  *(v3 + 704) = v1;

  if (v1)
  {
    v5 = sub_252B973D0;
  }

  else
  {
    v5 = sub_252B97274;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B96FF8()
{
  v1 = v0[82];
  v2 = v0[69];
  v3 = v0[53];

  v17 = v0[85];
  v4 = v0[69];

  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[65];
  v10 = v0[63];
  v9 = v0[64];
  v12 = v0[61];
  v11 = v0[62];
  v13 = v0[58];
  v14 = v0[55];

  v15 = v0[1];

  return v15();
}

uint64_t sub_252B9710C()
{
  v2 = *v1;
  v3 = *(*v1 + 712);
  v4 = *v1;
  *(*v1 + 720) = v0;

  (*(v2[60] + 8))(v2[66], v2[59]);
  if (v0)
  {
    v5 = sub_252B97AB4;
  }

  else
  {
    v5 = sub_252B9791C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B97274()
{
  v1 = v0 + 49;
  v2 = v0[87];
  v3 = v0[84];
  v0[49] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[65];
  v9 = v0[54];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[91] = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[92] = v12;
  *v12 = v0;
  v12[1] = sub_252B974E4;
  v13 = v0[65];

  return sub_252BDB88C((v0 + 27), &unk_252E4EFB8, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252B973D0()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 424);

  v16 = *(v0 + 704);
  v3 = *(v0 + 552);

  v4 = *(v0 + 544);
  v5 = *(v0 + 536);
  v6 = *(v0 + 528);
  v7 = *(v0 + 520);
  v9 = *(v0 + 504);
  v8 = *(v0 + 512);
  v11 = *(v0 + 488);
  v10 = *(v0 + 496);
  v12 = *(v0 + 464);
  v13 = *(v0 + 440);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252B974E4()
{
  v2 = *v1;
  v3 = *(*v1 + 736);
  v7 = *v1;
  *(*v1 + 744) = v0;

  if (v0)
  {
    (*(v2[60] + 8))(v2[65], v2[59]);
    v4 = sub_252B977EC;
  }

  else
  {
    v5 = v2[91];
    (*(v2[60] + 8))(v2[65], v2[59]);

    v4 = sub_252B97634;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B97634()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 416);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 696);
  v9 = *(v0 + 672);
  v10 = *(v0 + 656);
  v11 = *(v0 + 424);
  v12 = *(v0 + 408);
  (*(v4 + 112))(v7, v0 + 216, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 216));

  v13 = *(v0 + 552);

  v14 = *(v0 + 544);
  v15 = *(v0 + 536);
  v16 = *(v0 + 528);
  v17 = *(v0 + 520);
  v19 = *(v0 + 504);
  v18 = *(v0 + 512);
  v21 = *(v0 + 488);
  v20 = *(v0 + 496);
  v22 = *(v0 + 464);
  v23 = *(v0 + 440);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_252B977EC()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 696);
  v3 = *(v0 + 656);
  v4 = *(v0 + 424);

  v18 = *(v0 + 744);
  v5 = *(v0 + 552);

  v6 = *(v0 + 544);
  v7 = *(v0 + 536);
  v8 = *(v0 + 528);
  v9 = *(v0 + 520);
  v11 = *(v0 + 504);
  v10 = *(v0 + 512);
  v13 = *(v0 + 488);
  v12 = *(v0 + 496);
  v14 = *(v0 + 464);
  v15 = *(v0 + 440);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_252B9791C()
{
  v1 = v0[54];
  v2 = v0[52];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[82];
  v9 = v0[51];
  (*(v4 + 112))(v7, v0 + 22, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 22);

  v10 = v0[69];

  v11 = v0[68];
  v12 = v0[67];
  v13 = v0[66];
  v14 = v0[65];
  v16 = v0[63];
  v15 = v0[64];
  v18 = v0[61];
  v17 = v0[62];
  v19 = v0[58];
  v20 = v0[55];

  v21 = v0[1];

  return v21();
}

uint64_t sub_252B97AB4()
{
  v1 = v0[82];

  v15 = v0[90];
  v2 = v0[69];

  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[65];
  v8 = v0[63];
  v7 = v0[64];
  v10 = v0[61];
  v9 = v0[62];
  v11 = v0[58];
  v12 = v0[55];

  v13 = v0[1];

  return v13();
}

uint64_t sub_252B97BB4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 760);
  v7 = *v2;
  *(v3 + 768) = a1;
  *(v3 + 776) = v1;

  if (v1)
  {
    v5 = sub_252B97E84;
  }

  else
  {
    v5 = sub_252B97CCC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B97CCC()
{
  v1 = v0[69];
  v2 = v0[53];

  v3 = swift_task_alloc();
  v0[98] = v3;
  *v3 = v0;
  v3[1] = sub_252B97D6C;
  v4 = v0[54];

  return sub_252E174F4(v2);
}

uint64_t sub_252B97D6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 784);
  v7 = *v2;
  *(v3 + 792) = a1;
  *(v3 + 800) = v1;

  if (v1)
  {
    v5 = sub_252B9825C;
  }

  else
  {
    v5 = sub_252B98100;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B97E84()
{
  v1 = v0[94];
  v2 = v0[69];
  v3 = v0[53];

  v17 = v0[97];
  v4 = v0[69];

  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[65];
  v10 = v0[63];
  v9 = v0[64];
  v12 = v0[61];
  v11 = v0[62];
  v13 = v0[58];
  v14 = v0[55];

  v15 = v0[1];

  return v15();
}

uint64_t sub_252B97F98()
{
  v2 = *v1;
  v3 = *(*v1 + 808);
  v4 = *v1;
  *(*v1 + 816) = v0;

  (*(v2[60] + 8))(v2[64], v2[59]);
  if (v0)
  {
    v5 = sub_252B98940;
  }

  else
  {
    v5 = sub_252B987A8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B98100()
{
  v1 = v0 + 48;
  v2 = v0[99];
  v3 = v0[96];
  v0[48] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[63];
  v9 = v0[54];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[103] = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[104] = v12;
  *v12 = v0;
  v12[1] = sub_252B98370;
  v13 = v0[63];

  return sub_252BDB88C((v0 + 17), &unk_252E4EFA0, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252B9825C()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 424);

  v16 = *(v0 + 800);
  v3 = *(v0 + 552);

  v4 = *(v0 + 544);
  v5 = *(v0 + 536);
  v6 = *(v0 + 528);
  v7 = *(v0 + 520);
  v9 = *(v0 + 504);
  v8 = *(v0 + 512);
  v11 = *(v0 + 488);
  v10 = *(v0 + 496);
  v12 = *(v0 + 464);
  v13 = *(v0 + 440);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252B98370()
{
  v2 = *v1;
  v3 = *(*v1 + 832);
  v7 = *v1;
  *(*v1 + 840) = v0;

  if (v0)
  {
    (*(v2[60] + 8))(v2[63], v2[59]);
    v4 = sub_252B98678;
  }

  else
  {
    v5 = v2[103];
    (*(v2[60] + 8))(v2[63], v2[59]);

    v4 = sub_252B984C0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B984C0()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 416);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 792);
  v9 = *(v0 + 768);
  v10 = *(v0 + 752);
  v11 = *(v0 + 424);
  v12 = *(v0 + 408);
  (*(v4 + 112))(v7, v0 + 136, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));

  v13 = *(v0 + 552);

  v14 = *(v0 + 544);
  v15 = *(v0 + 536);
  v16 = *(v0 + 528);
  v17 = *(v0 + 520);
  v19 = *(v0 + 504);
  v18 = *(v0 + 512);
  v21 = *(v0 + 488);
  v20 = *(v0 + 496);
  v22 = *(v0 + 464);
  v23 = *(v0 + 440);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_252B98678()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 792);
  v3 = *(v0 + 752);
  v4 = *(v0 + 424);

  v18 = *(v0 + 840);
  v5 = *(v0 + 552);

  v6 = *(v0 + 544);
  v7 = *(v0 + 536);
  v8 = *(v0 + 528);
  v9 = *(v0 + 520);
  v11 = *(v0 + 504);
  v10 = *(v0 + 512);
  v13 = *(v0 + 488);
  v12 = *(v0 + 496);
  v14 = *(v0 + 464);
  v15 = *(v0 + 440);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_252B987A8()
{
  v1 = v0[54];
  v2 = v0[52];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[94];
  v9 = v0[51];
  (*(v4 + 112))(v7, v0 + 12, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v10 = v0[69];

  v11 = v0[68];
  v12 = v0[67];
  v13 = v0[66];
  v14 = v0[65];
  v16 = v0[63];
  v15 = v0[64];
  v18 = v0[61];
  v17 = v0[62];
  v19 = v0[58];
  v20 = v0[55];

  v21 = v0[1];

  return v21();
}

uint64_t sub_252B98940()
{
  v1 = v0[94];

  v15 = v0[102];
  v2 = v0[69];

  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[65];
  v8 = v0[63];
  v7 = v0[64];
  v10 = v0[61];
  v9 = v0[62];
  v11 = v0[58];
  v12 = v0[55];

  v13 = v0[1];

  return v13();
}

uint64_t sub_252B98A40(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 856);
  v7 = *v2;
  *(v3 + 864) = a1;
  *(v3 + 872) = v1;

  if (v1)
  {
    v5 = sub_252B98D10;
  }

  else
  {
    v5 = sub_252B98B58;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B98B58()
{
  v1 = v0[69];
  v2 = v0[53];

  v3 = swift_task_alloc();
  v0[110] = v3;
  *v3 = v0;
  v3[1] = sub_252B98BF8;
  v4 = v0[54];

  return sub_252E174F4(v2);
}

uint64_t sub_252B98BF8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 880);
  v7 = *v2;
  *(v3 + 888) = a1;
  *(v3 + 896) = v1;

  if (v1)
  {
    v5 = sub_252B990E8;
  }

  else
  {
    v5 = sub_252B98F8C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B98D10()
{
  v1 = v0[106];
  v2 = v0[69];
  v3 = v0[53];

  v17 = v0[109];
  v4 = v0[69];

  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[65];
  v10 = v0[63];
  v9 = v0[64];
  v12 = v0[61];
  v11 = v0[62];
  v13 = v0[58];
  v14 = v0[55];

  v15 = v0[1];

  return v15();
}

uint64_t sub_252B98E24()
{
  v2 = *v1;
  v3 = *(*v1 + 904);
  v4 = *v1;
  *(*v1 + 912) = v0;

  (*(v2[60] + 8))(v2[62], v2[59]);
  if (v0)
  {
    v5 = sub_252B997CC;
  }

  else
  {
    v5 = sub_252B99634;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B98F8C()
{
  v1 = v0 + 47;
  v2 = v0[111];
  v3 = v0[108];
  v0[47] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[61];
  v9 = v0[54];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[115] = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[116] = v12;
  *v12 = v0;
  v12[1] = sub_252B991FC;
  v13 = v0[61];

  return sub_252BDB88C((v0 + 7), &unk_252E3F140, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252B990E8()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 424);

  v16 = *(v0 + 896);
  v3 = *(v0 + 552);

  v4 = *(v0 + 544);
  v5 = *(v0 + 536);
  v6 = *(v0 + 528);
  v7 = *(v0 + 520);
  v9 = *(v0 + 504);
  v8 = *(v0 + 512);
  v11 = *(v0 + 488);
  v10 = *(v0 + 496);
  v12 = *(v0 + 464);
  v13 = *(v0 + 440);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252B991FC()
{
  v2 = *v1;
  v3 = *(*v1 + 928);
  v7 = *v1;
  *(*v1 + 936) = v0;

  if (v0)
  {
    (*(v2[60] + 8))(v2[61], v2[59]);
    v4 = sub_252B99504;
  }

  else
  {
    v5 = v2[115];
    (*(v2[60] + 8))(v2[61], v2[59]);

    v4 = sub_252B9934C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B9934C()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 416);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 888);
  v9 = *(v0 + 864);
  v10 = *(v0 + 848);
  v11 = *(v0 + 424);
  v12 = *(v0 + 408);
  (*(v4 + 112))(v7, v0 + 56, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v13 = *(v0 + 552);

  v14 = *(v0 + 544);
  v15 = *(v0 + 536);
  v16 = *(v0 + 528);
  v17 = *(v0 + 520);
  v19 = *(v0 + 504);
  v18 = *(v0 + 512);
  v21 = *(v0 + 488);
  v20 = *(v0 + 496);
  v22 = *(v0 + 464);
  v23 = *(v0 + 440);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_252B99504()
{
  v1 = *(v0 + 920);
  v2 = *(v0 + 888);
  v3 = *(v0 + 848);
  v4 = *(v0 + 424);

  v18 = *(v0 + 936);
  v5 = *(v0 + 552);

  v6 = *(v0 + 544);
  v7 = *(v0 + 536);
  v8 = *(v0 + 528);
  v9 = *(v0 + 520);
  v11 = *(v0 + 504);
  v10 = *(v0 + 512);
  v13 = *(v0 + 488);
  v12 = *(v0 + 496);
  v14 = *(v0 + 464);
  v15 = *(v0 + 440);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_252B99634()
{
  v1 = v0[54];
  v2 = v0[52];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[106];
  v9 = v0[51];
  (*(v4 + 112))(v7, v0 + 2, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v10 = v0[69];

  v11 = v0[68];
  v12 = v0[67];
  v13 = v0[66];
  v14 = v0[65];
  v16 = v0[63];
  v15 = v0[64];
  v18 = v0[61];
  v17 = v0[62];
  v19 = v0[58];
  v20 = v0[55];

  v21 = v0[1];

  return v21();
}

uint64_t sub_252B997CC()
{
  v1 = v0[106];

  v15 = v0[114];
  v2 = v0[69];

  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[65];
  v8 = v0[63];
  v7 = v0[64];
  v10 = v0[61];
  v9 = v0[62];
  v11 = v0[58];
  v12 = v0[55];

  v13 = v0[1];

  return v13();
}

uint64_t sub_252B998CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252B998EC, 0, 0);
}

uint64_t sub_252B998EC()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_252A9A974;

  return sub_252C0C38C(0, v2, v1 + 16);
}

uint64_t sub_252B999B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252B999D0, 0, 0);
}

uint64_t sub_252B999D0()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_252B9A250;

  return sub_252C0CFB8(0, v2, v1 + 16);
}

uint64_t sub_252B99A94(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252B99AB4, 0, 0);
}

uint64_t sub_252B99AB4()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_252B9A250;

  return sub_252C0C838(0, v2, v1 + 16);
}

uint64_t sub_252B99B78(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252B99B98, 0, 0);
}

uint64_t sub_252B99B98()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_252B9A250;

  return sub_252C0CA0C(0, v2, v1 + 16);
}

uint64_t sub_252B99C5C(uint64_t a1)
{
  v1 = *(a1 + 16);

  sub_252E362B4();
}

uint64_t sub_252B99CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252B94F4C(a1, a2, a3);
}

void *sub_252B99DA8@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for GetBooleanSensorStateResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252B99E0C(void *a1)
{
  result = [a1 userTask];
  if (result)
  {
    v3 = result;
    v4 = [a1 userTask];
    if (v4)
    {
      v5 = v4;
      if ([v4 taskType] == 4)
      {
      }

      else
      {
        v6 = [v5 taskType];

        if (v6 != 5)
        {
          goto LABEL_8;
        }
      }

      if ([v3 attribute] == 38)
      {
LABEL_10:

        return 1;
      }
    }

    else
    {
      sub_252C515AC();
    }

LABEL_8:
    if ([v3 attribute] != 39 && objc_msgSend(v3, sel_attribute) != 40)
    {
      v7 = [v3 attribute];

      return v7 == 41;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t sub_252B99F1C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252B99B78(v2, v3);
}

uint64_t sub_252B99FB4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252B99A94(v2, v3);
}

uint64_t sub_252B9A04C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252B999B0(v2, v3);
}

uint64_t sub_252B9A0E4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252BA2CEC(v2);
}

uint64_t objectdestroy_18Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252B9A1B8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252B998CC(v2, v3);
}

void *sub_252B9A254(void *key, uint64_t a2)
{
  if (objc_getAssociatedObject(v2, key))
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_252982F10(v11);
    goto LABEL_8;
  }

  type metadata accessor for HomeAutomationWaterSystemResponses();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v6 = sub_25299D5A8(a2);
    type metadata accessor for HomeAutomationWaterSystemResponses();
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = v6;
    objc_setAssociatedObject(v2, key, v5, 1);
    return v5;
  }

  return v8;
}

void *sub_252B9A34C(void *key, uint64_t a2)
{
  if (objc_getAssociatedObject(v2, key))
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    type metadata accessor for HomeAutomationWaterSystemResponses();
    if (swift_dynamicCast())
    {
      return v15;
    }
  }

  else
  {
    sub_252982F10(v18);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = (a2 + 32);
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = *v7++;
      v10 = sub_25299D5A8(v9);
      if (v10 >> 62)
      {
        v11 = v10;
        v12 = sub_252E378C4();
        v10 = v11;
        if (v12)
        {
LABEL_15:
          v13 = v10;
          goto LABEL_17;
        }
      }

      else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      if (!--v6)
      {
        v13 = v8;
        goto LABEL_17;
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_17:
  type metadata accessor for HomeAutomationWaterSystemResponses();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = v13;
  objc_setAssociatedObject(v2, key, v5, 1);
  return v5;
}

void *sub_252B9A4DC(const void *a1, char a2)
{
  v5 = v2[3];
  swift_beginAccess();
  if (objc_getAssociatedObject(v2, a1))
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    sub_252982F10(v12);
    goto LABEL_8;
  }

  type metadata accessor for HomeAutomationWaterSystemResponses();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v7 = sub_25299EC20(v5, 27, a2 & 1);
    type metadata accessor for HomeAutomationWaterSystemResponses();
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = v7;
    objc_setAssociatedObject(v2, a1, v6, 1);
    goto LABEL_9;
  }

  v6 = v9;
LABEL_9:
  swift_endAccess();
  return v6;
}

void *sub_252B9A620(const void *a1, char a2)
{
  v5 = sub_252B9A4DC(&unk_27F5438EA, 1);
  if (v5)
  {
    v6 = v5[3];
    swift_beginAccess();

    if (objc_getAssociatedObject(v2, a1))
    {
      sub_252E377F4();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (*(&v12 + 1))
    {
      type metadata accessor for HomeAutomationWaterSystemResponses();
      if (swift_dynamicCast())
      {
        v7 = v10;
LABEL_11:
        swift_endAccess();

        return v7;
      }
    }

    else
    {
      sub_252982F10(v13);
    }

    v8 = sub_25299EC20(v6, 46, a2 & 1);
    type metadata accessor for HomeAutomationWaterSystemResponses();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = v8;
    objc_setAssociatedObject(v2, a1, v7, 1);
    goto LABEL_11;
  }

  return 0;
}

void *sub_252B9A780@<X0>(void *result@<X0>, unint64_t a2@<X8>)
{
  v3 = *(*result + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
  v27 = MEMORY[0x277D84F90];
  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_33:
    result = sub_252E378C4();
    v5 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_34:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_34;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v25 = a2;
  do
  {
    v24 = v7;
    a2 = v6;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](a2, v3);
        v6 = (a2 + 1);
        if (__OFADD__(a2, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (a2 >= *(v4 + 16))
        {
          goto LABEL_32;
        }

        v8 = *(v3 + 8 * a2 + 32);

        v6 = (a2 + 1);
        if (__OFADD__(a2, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      v9 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
        if (v10)
        {
          break;
        }
      }

LABEL_5:

      ++a2;
      if (v6 == v5)
      {
        a2 = v25;
        v7 = v24;
        goto LABEL_35;
      }
    }

    v11 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit;

    v12 = sub_252A47810(v10 + v11);
    v13 = qword_2864A0BE8 == v12 || unk_2864A0BF0 == v12;
    if (v13 || v12 != 5)
    {
      v14 = sub_252E37DB4();

      if (v14)
      {
        goto LABEL_24;
      }

      v4 = v26;
      goto LABEL_5;
    }

LABEL_24:
    v15 = sub_252E36274();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    sub_252E36264();
    v18 = *(v10 + 24);
    v19 = *(v10 + 32);
    sub_252E36254();

    sub_252E36244();

    swift_beginAccess();
    v20 = *(v10 + 16);
    if (v20)
    {
      v21 = v20;
      sub_252E36234();
    }

    MEMORY[0x2530AD700](v22);
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v23 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    result = sub_252E372D4();
    v7 = v27;
    a2 = v25;
    v4 = v26;
  }

  while (v6 != v5);
LABEL_35:
  *a2 = v7;
  return result;
}

unint64_t sub_252B9ACF0(uint64_t a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x73736563637573;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x796C6E4F64616572;
      break;
    case 4:
    case 5:
    case 28:
    case 31:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6168636165726E75;
      break;
    case 7:
      result = 0x6572756C696166;
      break;
    case 8:
      result = 0x78614D6F54746573;
      break;
    case 9:
      result = 0x6E694D6F54746573;
      break;
    case 10:
    case 33:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x65746F6D65526F6ELL;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
    case 20:
      result = 0x746F6F7465756C62;
      break;
    case 15:
      result = 0x664F734969666977;
      break;
    case 16:
    case 27:
      result = 0xD00000000000001BLL;
      break;
    case 17:
      result = 0x6572676F72506E69;
      break;
    case 18:
      result = 0x746F4E656E656373;
      break;
    case 19:
      result = 0x676E697275636573;
      break;
    case 21:
      result = 0x65526B636F6C6E75;
      break;
    case 22:
      result = 0xD000000000000013;
      break;
    case 24:
      result = 0xD000000000000013;
      break;
    case 25:
      result = 0xD000000000000016;
      break;
    case 26:
      result = 0xD00000000000001DLL;
      break;
    case 29:
      result = 0x4274737544637672;
      break;
    case 30:
      result = 0xD000000000000013;
      break;
    case 32:
      result = 0xD000000000000018;
      break;
    case 34:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t ControlHomeIntentResponse.description.getter()
{
  v1 = v0;
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v2 = sub_252E37FB4();
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  v14 = sub_252E376B4();
  v3 = sub_252E37D94();
  MEMORY[0x2530AD570](v3);

  MEMORY[0x2530AD570](0x2020200A7B203A3ELL, 0xEF203A65646F6320);
  v4 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  v13 = *&v1[v4];
  sub_252E37AE4();
  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E84A40);
  v5 = [v1 entityResponses];
  if (v5)
  {
    v6 = v5;
    v7 = type metadata accessor for HomeEntityResponse();
    sub_252E37264();

    v9 = MEMORY[0x2530AD730](v8, v7);
    v11 = v10;
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v11 = 0xE600000000000000;
    v9 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v9, v11);

  MEMORY[0x2530AD570](8194604, 0xE300000000000000);
  return 0;
}

id sub_252B9B2C0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_252E36F04();

  return v5;
}

uint64_t INHomeEntityResponse.description.getter()
{
  v1 = v0;
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v2 = sub_252E37FB4();
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  sub_252E376B4();
  v3 = sub_252E37D94();
  MEMORY[0x2530AD570](v3);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E84A60);
  v4 = [v0 entity];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 description];

    v7 = sub_252E36F34();
    v9 = v8;
  }

  else
  {
    v9 = 0xE600000000000000;
    v7 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v7, v9);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E84A80);
  v10 = [v1 taskResponses];
  if (v10)
  {
    v11 = v10;
    sub_25293F638(0, &qword_27F5438F8, 0x277CD3D08);
    sub_252E37264();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5438F0, &qword_252E4EFD8);
  v12 = sub_252E36F94();
  MEMORY[0x2530AD570](v12);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  return 0;
}

uint64_t HomeEntityResponse.description.getter()
{
  v1 = v0;
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v2 = sub_252E37FB4();
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  sub_252E376B4();
  v3 = sub_252E37D94();
  MEMORY[0x2530AD570](v3);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E84A60);
  v4 = [v0 entity];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 description];

    v7 = sub_252E36F34();
    v9 = v8;
  }

  else
  {
    v9 = 0xE600000000000000;
    v7 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v7, v9);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E84A80);
  v10 = [v1 taskResponses];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for HomeUserTaskResponse();
    sub_252E37264();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543900, &qword_252E4EFE0);
  v12 = sub_252E36F94();
  MEMORY[0x2530AD570](v12);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  return 0;
}

uint64_t INHomeEntity.description.getter()
{
  v1 = 0x29656E6F6E28;
  *(&v88 + 1) = 0xE000000000000000;
  sub_252E379F4();
  v90 = 0;
  v91 = 0xE000000000000000;
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v2 = sub_252E37FB4();
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  *&v88 = sub_252E376B4();
  v3 = sub_252E37D94();
  MEMORY[0x2530AD570](v3);

  MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E84AA0);
  v85 = v0;
  v4 = [v0 entityName];
  v5 = &selRef_setHomeAutomationRequestOutcome_;
  if (v4)
  {
    v6 = v4;
    v7 = [v4 spokenPhrase];

    v1 = sub_252E36F34();
    v9 = v8;
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  MEMORY[0x2530AD570](v1, v9);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E84AC0);
  *&v88 = [v85 type];
  type metadata accessor for INHomeEntityType(0);
  sub_252E37AE4();
  MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E84AE0);
  v10 = [v85 entityIdentifier];
  if (v10)
  {
    v11 = v10;
    v12 = sub_252E36F34();
    v14 = v13;
  }

  else
  {
    v14 = 0xE600000000000000;
    v12 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v12, v14);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E84B00);
  v15 = [v85 deviceTypes];
  if (v15)
  {
    v16 = v15;
    sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
    v17 = sub_252E37264();

    if (v17 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v19 = 0;
      v20 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x2530ADF00](v19, v17);
        }

        else
        {
          if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v21 = *(v17 + 8 * v19 + 32);
        }

        v22 = v21;
        v23 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v24 = sub_252E373F4();
        if (v25)
        {
          v26 = 0;
        }

        else
        {
          v26 = v24;
        }

        type metadata accessor for INHomeDeviceType(0);
        v89 = v27;
        *&v88 = v26;
        sub_252A00AF4(&v88, &v86);

        if (v87)
        {
          sub_252A00AF4(&v86, &v88);
          sub_252A00AF4(&v88, &v86);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_2529F9208(0, *(v20 + 16) + 1, 1, v20);
          }

          v29 = *(v20 + 16);
          v28 = *(v20 + 24);
          if (v29 >= v28 >> 1)
          {
            v20 = sub_2529F9208((v28 > 1), v29 + 1, 1, v20);
          }

          *(v20 + 16) = v29 + 1;
          sub_252A00AF4(&v86, (v20 + 32 * v29 + 32));
        }

        else
        {
          sub_252982F10(&v86);
        }

        ++v19;
        if (v23 == i)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }

    v20 = MEMORY[0x277D84F90];
LABEL_32:

    v5 = &selRef_setHomeAutomationRequestOutcome_;
  }

  else
  {
    v30 = MEMORY[0x277D837D0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403C0, &unk_252E3C470);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_252E3C290;
    *(v20 + 56) = v30;
    *(v20 + 32) = 0x29656E6F6E28;
    *(v20 + 40) = 0xE600000000000000;
  }

  v31 = MEMORY[0x2530AD730](v20, MEMORY[0x277D84F70] + 8);
  v33 = v32;

  MEMORY[0x2530AD570](v31, v33);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E84B20);
  v34 = [v85 sceneType];
  v35 = 0xE700000000000000;
  v36 = 0x6E776F6E6B6E75;
  v37 = 0x6E697661654C6D69;
  v38 = 0xE900000000000067;
  v39 = 0xE600000000000000;
  v40 = 0x656D6F486D69;
  v41 = 0xE900000000000074;
  v42 = 0x6867694E646F6F67;
  if (v34 != 5)
  {
    v42 = 0x6E776F6E6B6E75;
    v41 = 0xE700000000000000;
  }

  if (v34 != 4)
  {
    v40 = v42;
    v39 = v41;
  }

  if (v34 != 3)
  {
    v37 = v40;
    v38 = v39;
  }

  if (v34 == 2)
  {
    v36 = 0x6E726F4D646F6F67;
    v35 = 0xEB00000000676E69;
  }

  if (v34 == 1)
  {
    v36 = 0x6966654472657375;
    v35 = 0xEB0000000064656ELL;
  }

  v43 = v34 <= 2;
  if (v34 <= 2)
  {
    v44 = v36;
  }

  else
  {
    v44 = v37;
  }

  if (v43)
  {
    v45 = v35;
  }

  else
  {
    v45 = v38;
  }

  MEMORY[0x2530AD570](v44, v45);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E84B40);
  v46 = [v85 group];
  if (v46)
  {
    v47 = v46;
    v48 = [v46 spokenPhrase];

    v49 = sub_252E36F34();
    v51 = v50;
  }

  else
  {
    v51 = 0xE600000000000000;
    v49 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v49, v51);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E84B60);
  v52 = [v85 room];
  if (v52)
  {
    v53 = v52;
    v54 = [v52 spokenPhrase];

    v55 = sub_252E36F34();
    v57 = v56;
  }

  else
  {
    v57 = 0xE600000000000000;
    v55 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v55, v57);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E84B80);
  v58 = [v85 zones];
  if (v58)
  {
    v59 = v58;
    sub_25293F638(0, &qword_27F543908, 0x277CD4188);
    v60 = sub_252E37264();

    if (v60 >> 62)
    {
      goto LABEL_73;
    }

    for (j = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_252E378C4())
    {
      v62 = 0;
      v63 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v60 & 0xC000000000000001) != 0)
        {
          v64 = MEMORY[0x2530ADF00](v62, v60);
        }

        else
        {
          if (v62 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_72;
          }

          v64 = *(v60 + 8 * v62 + 32);
        }

        v65 = v64;
        v66 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          break;
        }

        v67 = v5;
        v68 = [v64 v5[53]];
        v69 = sub_252E36F34();
        v71 = v70;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_2529F7A80(0, *(v63 + 2) + 1, 1, v63);
        }

        v73 = *(v63 + 2);
        v72 = *(v63 + 3);
        if (v73 >= v72 >> 1)
        {
          v63 = sub_2529F7A80((v72 > 1), v73 + 1, 1, v63);
        }

        *(v63 + 2) = v73 + 1;
        v74 = &v63[16 * v73];
        *(v74 + 4) = v69;
        *(v74 + 5) = v71;
        ++v62;
        v5 = v67;
        if (v66 == j)
        {
          goto LABEL_75;
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      ;
    }

    v63 = MEMORY[0x277D84F90];
LABEL_75:
  }

  else
  {
    v63 = &unk_2864ADD88;
  }

  v75 = MEMORY[0x2530AD730](v63, MEMORY[0x277D837D0]);
  v77 = v76;

  MEMORY[0x2530AD570](v75, v77);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E84BA0);
  v78 = [v85 home];
  if (v78)
  {
    v79 = v78;
    v80 = [v78 v5[53]];

    v81 = sub_252E36F34();
    v83 = v82;
  }

  else
  {
    v83 = 0xE600000000000000;
    v81 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v81, v83);

  MEMORY[0x2530AD570](0x7D202020200ALL, 0xE600000000000000);
  return v90;
}

void HomeEntity.description.getter()
{
  v1 = v0;
  v2 = 0x29656E6F6E28;
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v3 = sub_252E37FB4();
  MEMORY[0x2530AD570](v3);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  sub_252E376B4();
  v4 = sub_252E37D94();
  MEMORY[0x2530AD570](v4);

  MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E84AA0);
  v5 = [v0 homeEntityName];
  if (v5)
  {
    v6 = v5;
    v7 = sub_252E36F34();
    v9 = v8;
  }

  else
  {
    v9 = 0xE600000000000000;
    v7 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v7, v9);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E84AC0);
  v10 = sub_252BEBD04([v1 type]);
  MEMORY[0x2530AD570](v10);

  MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E84AE0);
  v11 = [v1 entityIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_252E36F34();
    v15 = v14;
  }

  else
  {
    v15 = 0xE600000000000000;
    v13 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v13, v15);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E84B00);
  v16 = [v1 deviceTypes];
  if (v16)
  {
    v17 = v16;
    v18 = sub_252E37264();

    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 32);
      v21 = MEMORY[0x277D84F90];
      do
      {
        v23 = *v20++;
        v24 = sub_252E25FC4(v23);
        if ((v25 & 1) == 0)
        {
          v26 = HomeDeviceType.description.getter(v24);
          v28 = v27;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_2529F7A80(0, *(v21 + 2) + 1, 1, v21);
          }

          v30 = *(v21 + 2);
          v29 = *(v21 + 3);
          if (v30 >= v29 >> 1)
          {
            v21 = sub_2529F7A80((v29 > 1), v30 + 1, 1, v21);
          }

          *(v21 + 2) = v30 + 1;
          v22 = &v21[16 * v30];
          *(v22 + 4) = v26;
          *(v22 + 5) = v28;
        }

        --v19;
      }

      while (v19);
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v2 = 0x29656E6F6E28;
  }

  else
  {
    v21 = &unk_2864ADDB8;
  }

  v31 = MEMORY[0x2530AD730](v21, MEMORY[0x277D837D0]);
  v33 = v32;

  MEMORY[0x2530AD570](v31, v33);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E84B20);
  v34 = [v1 sceneType];
  v35 = 0xE700000000000000;
  v36 = 0x6E776F6E6B6E75;
  v37 = 0x6E697661654C6D69;
  v38 = 0xE900000000000067;
  v39 = 0xE600000000000000;
  v40 = 0x656D6F486D69;
  v41 = 0xE900000000000074;
  v42 = 0x6867694E646F6F67;
  if (v34 != 5)
  {
    v42 = 0x6E776F6E6B6E75;
    v41 = 0xE700000000000000;
  }

  if (v34 != 4)
  {
    v40 = v42;
    v39 = v41;
  }

  if (v34 != 3)
  {
    v37 = v40;
    v38 = v39;
  }

  if (v34 == 2)
  {
    v36 = 0x6E726F4D646F6F67;
    v35 = 0xEB00000000676E69;
  }

  if (v34 == 1)
  {
    v36 = 0x6966654472657375;
    v35 = 0xEB0000000064656ELL;
  }

  v43 = v34 <= 2;
  if (v34 <= 2)
  {
    v44 = v36;
  }

  else
  {
    v44 = v37;
  }

  if (v43)
  {
    v45 = v35;
  }

  else
  {
    v45 = v38;
  }

  MEMORY[0x2530AD570](v44, v45);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E84B40);
  v46 = [v1 group];
  if (v46)
  {
    v47 = v46;
    v48 = sub_252E36F34();
    v50 = v49;
  }

  else
  {
    v50 = 0xE600000000000000;
    v48 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v48, v50);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E84B60);
  v51 = [v1 room];
  if (v51)
  {
    v52 = v51;
    v53 = sub_252E36F34();
    v55 = v54;
  }

  else
  {
    v55 = 0xE600000000000000;
    v53 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v53, v55);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E84B80);
  v56 = [v1 zones];
  if (!v56)
  {
    v62 = &unk_2864ADDE8;
LABEL_55:
    v68 = MEMORY[0x2530AD730](v62, MEMORY[0x277D837D0]);
    v70 = v69;

    MEMORY[0x2530AD570](v68, v70);

    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E84BA0);
    v71 = [v1 home];
    if (v71)
    {
      v72 = v71;
      v2 = sub_252E36F34();
      v74 = v73;
    }

    else
    {
      v74 = 0xE600000000000000;
    }

    MEMORY[0x2530AD570](v2, v74);

    MEMORY[0x2530AD570](0x7D202020200ALL, 0xE600000000000000);
    return;
  }

  v57 = v56;
  v58 = sub_252E37264();

  v59 = *(v58 + 16);
  if (!v59)
  {
    v62 = MEMORY[0x277D84F90];
LABEL_54:

    v2 = 0x29656E6F6E28;
    goto LABEL_55;
  }

  v60 = 0;
  v61 = (v58 + 40);
  v62 = MEMORY[0x277D84F90];
  while (v60 < *(v58 + 16))
  {
    v64 = *(v61 - 1);
    v63 = *v61;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = sub_2529F7A80(0, *(v62 + 2) + 1, 1, v62);
    }

    v66 = *(v62 + 2);
    v65 = *(v62 + 3);
    if (v66 >= v65 >> 1)
    {
      v62 = sub_2529F7A80((v65 > 1), v66 + 1, 1, v62);
    }

    ++v60;
    *(v62 + 2) = v66 + 1;
    v67 = &v62[16 * v66];
    *(v67 + 4) = v64;
    *(v67 + 5) = v63;
    v61 += 2;
    if (v59 == v60)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
}

uint64_t sub_252B9C8C8(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6E697661654C6D69;
  v3 = 0x656D6F486D69;
  v4 = 0x6867694E646F6F67;
  if (a1 != 5)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (a1 != 4)
  {
    v3 = v4;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 == 2)
  {
    v1 = 0x6E726F4D646F6F67;
  }

  if (a1 == 1)
  {
    v1 = 0x6966654472657375;
  }

  if (a1 <= 2)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_252B9C9DC(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      result = 0x73736563637573;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x796C6E4F64616572;
      break;
    case 4:
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6168636165726E75;
      break;
    case 7:
      result = 0x6572756C696166;
      break;
    case 8:
      result = 0x78614D6F54746573;
      break;
    case 9:
      result = 0x6E694D6F54746573;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x65746F6D65526F6ELL;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
    case 20:
      result = 0x746F6F7465756C62;
      break;
    case 15:
      result = 0x664F734969666977;
      break;
    case 16:
      result = 0xD00000000000001BLL;
      break;
    case 17:
      result = 0x6572676F72506E69;
      break;
    case 18:
      result = 0x746F4E656E656373;
      break;
    case 19:
      result = 0x676E697275636573;
      break;
    case 21:
      result = 0x65526B636F6C6E75;
      break;
    case 22:
      result = 0xD000000000000013;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

uint64_t sub_252B9CCD0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(id))
{
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v7 = sub_252E37FB4();
  MEMORY[0x2530AD570](v7);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  sub_252E376B4();
  v8 = sub_252E37D94();
  MEMORY[0x2530AD570](v8);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E84BC0);
  [v3 userTask];
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9 = sub_252E36F94();
  MEMORY[0x2530AD570](v9);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E84BE0);
  v10 = a3([v3 taskOutcome]);
  MEMORY[0x2530AD570](v10);

  MEMORY[0x2530AD570](0x7D202020200ALL, 0xE600000000000000);
  return 0;
}

char *sub_252B9CE7C()
{
  v1 = v0;
  type metadata accessor for HomeEntity();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v6 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
  v7 = sub_252E36F04();
  [v4 setHomeEntityName_];

  [v4 setType_];
  sub_252E32E24();
  v8 = sub_252E36F04();

  [v4 setEntityIdentifier_];

  v9 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate);
  v10 = [v9 home];
  if (v10)
  {
    v11 = type metadata accessor for Home();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = sub_2529E65BC(v10);
    v15 = *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v16 = *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    v10 = sub_252E36F04();
  }

  [v4 setHome_];

  v17 = [v9 room];
  if (v17)
  {
    v18 = type metadata accessor for Room();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = sub_2529A1E08(v17);
    v22 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v23 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    v17 = sub_252E36F04();
  }

  [v4 setRoom_];

  v24 = sub_252D523AC();
  v25 = v24;
  if (!(v24 >> 62))
  {
    v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_7;
    }

LABEL_17:

LABEL_18:
    v35 = sub_252E37254();

    [v4 setZones_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C0, &unk_252E3C0F0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_252E3C290;
    *(v36 + 32) = (*(*v1 + 256))();
    v37 = sub_252E37254();

    [v4 setDeviceTypes_];

    return v4;
  }

  v26 = sub_252E378C4();
  if (!v26)
  {
    goto LABEL_17;
  }

LABEL_7:
  v40 = MEMORY[0x277D84F90];
  result = sub_2529AA3A0(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v38 = v4;
    v39 = v1;
    v28 = 0;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x2530ADF00](v28, v25);
      }

      else
      {
        v29 = *(v25 + 8 * v28 + 32);
      }

      v30 = *(v29 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v31 = *(v29 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      v33 = *(v40 + 16);
      v32 = *(v40 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2529AA3A0((v32 > 1), v33 + 1, 1);
      }

      ++v28;
      *(v40 + 16) = v33 + 1;
      v34 = v40 + 16 * v33;
      *(v34 + 32) = v30;
      *(v34 + 40) = v31;
    }

    while (v26 != v28);

    v4 = v38;
    v1 = v39;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}