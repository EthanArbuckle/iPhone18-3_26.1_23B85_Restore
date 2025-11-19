uint64_t sub_252D9E9A0(uint64_t a1)
{
  v72 = sub_252E36CA4();
  v3 = *(v72 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_252E36D04();
  v6 = *(v70 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v57 - v11);
  v13 = *(v1 + 24);
  if (v13 >> 62)
  {
    goto LABEL_65;
  }

  result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
LABEL_3:
    v61 = result;
    v74 = type metadata accessor for HomeStore();
    v68 = v13 & 0xC000000000000001;
    v59 = v13 & 0xFFFFFFFFFFFFFF8;
    v58 = (v13 + 32);
    v67 = v80;
    v66 = (v3 + 8);
    v65 = (v6 + 8);
    v6 = 0;
    v64 = xmmword_252E3E810;
    v63 = xmmword_252E3C130;
    v73 = v12;
    v62 = v13;
    while (1)
    {
      if (v68)
      {
        v3 = MEMORY[0x2530ADF00](v6, v13);
        v15 = __OFADD__(v6++, 1);
        if (v15)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (v6 >= *(v59 + 16))
        {
          goto LABEL_64;
        }

        v3 = v58[v6];

        v15 = __OFADD__(v6++, 1);
        if (v15)
        {
          goto LABEL_63;
        }
      }

      v75 = v6;
      type metadata accessor for HomeFilter.Builder();
      inited = swift_initStackObject();
      *(inited + 16) = 0;
      *(inited + 24) = 0;
      *(inited + 32) = 0;
      *(inited + 40) = 7;
      *(inited + 48) = 0u;
      *(inited + 64) = 0u;
      *(inited + 80) = 0u;
      *(inited + 96) = 0u;
      *(inited + 112) = 0u;
      *(inited + 128) = 0u;
      *(inited + 144) = 0u;
      *(inited + 160) = 0u;
      *(inited + 175) = 0;
      v77 = v3;
      sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityName, v12);
      v17 = sub_252E36324();
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v12, 1, v17) == 1)
      {
        sub_25293847C(v12, &qword_27F540298, &unk_252E3C270);
        v19 = 0;
        v20 = 0;
      }

      else
      {
        v19 = sub_252E36304();
        v20 = v21;
        (*(v18 + 8))(v12, v17);
      }

      *(inited + 24) = v19;
      *(inited + 32) = v20;
      v76 = sub_252B719E4();
      swift_setDeallocating();
      HomeFilter.Builder.deinit();
      swift_deallocClassInstance();
      if (qword_2814B0DB8 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      v22 = off_2814B0DC0;
      if (off_2814B0DC0)
      {
      }

      else
      {
        type metadata accessor for LifeCycleManager();
        swift_allocObject();
        v22 = sub_252D7EAE8();
        off_2814B0DC0 = v22;

        sub_252D7E92C();
      }

      sub_252E37614();
      v23 = swift_allocObject();
      *(v23 + 16) = v74;
      v24 = *(v22 + 2);
      v25 = swift_allocObject();
      *(v25 + 16) = v22;
      *(v25 + 24) = v64;
      *(v25 + 40) = 0xE900000000000065;
      *(v25 + 48) = sub_252990558;
      *(v25 + 56) = v23;
      v80[2] = sub_252990E7C;
      v80[3] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v80[0] = sub_252AD686C;
      v80[1] = &block_descriptor_25;
      v26 = _Block_copy(aBlock);

      v27 = v69;
      sub_252E36CD4();
      v78 = MEMORY[0x277D84F90];
      sub_252990E98();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
      sub_2529905D0();
      v28 = v71;
      v29 = v72;
      sub_252E37824();
      MEMORY[0x2530ADA30](0, v27, v28, v26);
      _Block_release(v26);

      (*v66)(v28, v29);
      (*v65)(v27, v70);

      if (qword_2814B0E18 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      if (qword_2814B0E30)
      {
        v30 = qword_2814B0E30;
      }

      else
      {
        v31 = [objc_allocWithZone(v74) init];
        v32 = qword_2814B0E30;
        qword_2814B0E30 = v31;
        v30 = v31;
      }

      v12 = v73;
      sub_252E37614();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v3 = swift_allocObject();
      *(v3 + 16) = v63;
      v33 = v76;
      *(v3 + 32) = v76;
      v34 = v33;
      v35 = HomeStore.accessories(matching:supporting:)(v3, 0);
      v13 = v36;

      if ((v13 & 1) == 0)
      {
        break;
      }

      sub_252929F10(v35, 1);

      v6 = v75;
LABEL_5:
      v13 = v62;
      if (v6 == v61)
      {
        return 0;
      }
    }

    aBlock[0] = MEMORY[0x277D84F90];
    v37 = v35 & 0xFFFFFFFFFFFFFF8;
    v3 = v77;
    if (v35 >> 62)
    {
      v6 = sub_252E378C4();
      if (v6)
      {
LABEL_28:
        v60 = v34;
        v3 = 0;
        v38 = v35 & 0xC000000000000001;
        v76 = v35;
        v39 = v35 + 32;
        while (1)
        {
LABEL_30:
          if (v38)
          {
            v40 = MEMORY[0x2530ADF00](v3, v76);
            v15 = __OFADD__(v3++, 1);
            if (v15)
            {
              goto LABEL_61;
            }
          }

          else
          {
            if (v3 >= *(v37 + 16))
            {
              goto LABEL_62;
            }

            v40 = *(v39 + 8 * v3);

            v15 = __OFADD__(v3++, 1);
            if (v15)
            {
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              result = sub_252E378C4();
              if (!result)
              {
                return result;
              }

              goto LABEL_3;
            }
          }

          v41 = (*v40 + 336);
          v12 = *v41;
          v42 = (*v41)();
          v43 = *(v42 + 16);
          v44 = 32;
          if (a1 == 5)
          {
            while (v43)
            {
              v45 = *(v42 + v44);
              v44 += 8;
              --v43;
              if (v45 == 3)
              {

                v42 = (v12)(v46);
                v47 = *(v42 + 16);
                v48 = 32;
                while (v47)
                {
                  v49 = *(v42 + v48);
                  v48 += 8;
                  --v47;
                  if (v49 == 4)
                  {

                    v42 = (v12)(v50);
                    v51 = *(v42 + 16);
                    v52 = 32;
                    while (v51)
                    {
                      v53 = *(v42 + v52);
                      v52 += 8;
                      --v51;
                      if (v53 == 2)
                      {
                        goto LABEL_45;
                      }
                    }

                    goto LABEL_29;
                  }
                }

                break;
              }
            }
          }

          else
          {
            while (v43)
            {
              v54 = *(v42 + v44);
              v44 += 8;
              --v43;
              if (v54 == a1)
              {
LABEL_45:

                v13 = aBlock;
                sub_252E37A94();
                v12 = *(aBlock[0] + 16);
                sub_252E37AC4();
                sub_252E37AD4();
                sub_252E37AA4();
                if (v3 != v6)
                {
                  goto LABEL_30;
                }

                goto LABEL_50;
              }
            }
          }

LABEL_29:
          v13 = v42;

          if (v3 == v6)
          {
LABEL_50:
            v55 = aBlock[0];
            v12 = v73;
            v3 = v77;
            v34 = v60;
            v35 = v76;
            goto LABEL_53;
          }
        }
      }
    }

    else
    {
      v6 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_28;
      }
    }

    v55 = MEMORY[0x277D84F90];
LABEL_53:
    v6 = v75;
    if (v55 < 0 || (v55 & 0x4000000000000000) != 0)
    {
      v56 = sub_252E378C4();
      v6 = v75;
    }

    else
    {
      v56 = *(v55 + 16);
    }

    sub_252929F10(v35, 0);

    if (v56)
    {
      return 1;
    }

    goto LABEL_5;
  }

  return result;
}

uint64_t sub_252D9F3E0(uint64_t a1)
{
  v43 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545DD0, &unk_252E60070);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v54 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v47 = *(v53 - 8);
  v8 = *(v47 + 64);
  v9 = MEMORY[0x28223BE20](v53);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v43 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v46 = &v43 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  MEMORY[0x28223BE20](v15);
  v45 = &v43 - v18;
  v19 = *(v1 + 24);
  if (v19 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v21 = 0;
    v50 = v19 & 0xFFFFFFFFFFFFFF8;
    v51 = v19 & 0xC000000000000001;
    v48 = (v47 + 48);
    v49 = (v47 + 56);
    v55 = MEMORY[0x277D84F90];
    while (v51)
    {
      v22 = MEMORY[0x2530ADF00](v21, v19);
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_19;
      }

LABEL_9:
      sub_252956C1C(v22 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type, v17);
      v24 = sub_252E36324();
      v25 = *(v24 - 8);
      v26 = 1;
      if ((*(v25 + 48))(v17, 1, v24) != 1)
      {
        v27 = v46;
        (*(v25 + 32))(v46, v17, v24);
        (*(v25 + 56))(v27, 0, 1, v24);
        sub_25293DDF0(v27, v54, &qword_27F540298, &unk_252E3C270);
        v26 = 0;
      }

      v28 = v54;
      v29 = v26;
      v30 = v53;
      (*v49)(v54, v29, 1, v53);
      sub_25293DDF0(v28, v7, &qword_27F545DD0, &unk_252E60070);

      if ((*v48)(v7, 1, v30) == 1)
      {
        sub_25293847C(v7, &qword_27F545DD0, &unk_252E60070);
      }

      else
      {
        v31 = v45;
        sub_25293DDF0(v7, v45, &qword_27F540298, &unk_252E3C270);
        sub_25293DDF0(v31, v52, &qword_27F540298, &unk_252E3C270);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_2529F9318(0, v55[2] + 1, 1, v55);
        }

        v33 = v55[2];
        v32 = v55[3];
        if (v33 >= v32 >> 1)
        {
          v55 = sub_2529F9318(v32 > 1, v33 + 1, 1, v55);
        }

        v34 = v55;
        v55[2] = v33 + 1;
        sub_25293DDF0(v52, v34 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v33, &qword_27F540298, &unk_252E3C270);
      }

      ++v21;
      if (v23 == i)
      {
        goto LABEL_23;
      }
    }

    if (v21 >= *(v50 + 16))
    {
      goto LABEL_20;
    }

    v22 = *(v19 + 8 * v21 + 32);

    v23 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v55 = MEMORY[0x277D84F90];
LABEL_23:
  if (qword_27F53F2A0 != -1)
  {
    swift_once();
  }

  v35 = off_27F541CD0;
  if (*(off_27F541CD0 + 2) && (v36 = sub_252A488EC(v43), (v37 & 1) != 0))
  {
    v56 = *(v35[7] + v36);
    AccessoryTypeSemantic.rawValue.getter();
    v38 = v44;
    sub_252E362F4();
    v39 = 0;
  }

  else
  {
    v39 = 1;
    v38 = v44;
  }

  v40 = sub_252E36324();
  (*(*(v40 - 8) + 56))(v38, v39, 1, v40);
  v41 = sub_2529A7A64(v38, v55);

  sub_25293847C(v38, &qword_27F540298, &unk_252E3C270);
  return v41 & 1;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_252D9F9E0(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2530ADF00](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 entityType];

    v4 = v5 + 1;
  }

  while (v8 != 6);
  return v3 != v5;
}

uint64_t sub_252D9FAE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252D9FC58(a1);
}

uint64_t sub_252D9FB8C(void *a1)
{
  v1 = [a1 filters];
  if (v1)
  {
    type metadata accessor for HomeFilter();
    v2 = sub_252E37264();

    if (v2 >> 62)
    {
      if (sub_252E378C4())
      {
        goto LABEL_4;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      LOBYTE(v1) = sub_252D9F9E0(v2);
LABEL_7:

      return v1 & 1;
    }

    LOBYTE(v1) = 0;
    goto LABEL_7;
  }

  return v1 & 1;
}

uint64_t sub_252D9FC28()
{
  type metadata accessor for TriggersHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252D9FC78()
{
  v1 = sub_252990EF0(*(v0 + 112));
  if (v2)
  {
    sub_252929F10(v1, 1);
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544C70);
    sub_252CC4050(0xD00000000000001FLL, 0x8000000252E6D800, 0xD00000000000007DLL, 0x8000000252E9B480, 0x6928656C646E6168, 0xEF293A746E65746ELL, 23);
    v4 = [objc_allocWithZone(type metadata accessor for DiscoverHomeIntentResponse()) init];
    v5 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
    swift_beginAccess();
    v6 = 5;
    goto LABEL_5;
  }

  v7 = v1;
  type metadata accessor for HomeStore();
  v8 = static HomeStore.shared.getter();
  v9 = sub_2529F5A80(v7);
  v11 = v10;
  sub_252929F10(v7, 0);

  if (v11)
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544C70);
    sub_252E379F4();
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E6D8B0);
    *(v0 + 40) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(*(v0 + 16), *(v0 + 24), 0xD00000000000007DLL, 0x8000000252E9B480, 0x6928656C646E6168, 0xEF293A746E65746ELL, 38);

    v4 = [objc_allocWithZone(type metadata accessor for DiscoverHomeIntentResponse()) init];
    v13 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
    swift_beginAccess();
    *&v4[v13] = 5;
    [v4 setUserActivity_];
    sub_252929F10(v9, 1);
    goto LABEL_25;
  }

  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_29:
    sub_252929F10(v9, 0);
    if (qword_27F53F498 == -1)
    {
LABEL_30:
      v24 = sub_252E36AD4();
      __swift_project_value_buffer(v24, qword_27F544C70);
      sub_252CC4050(0xD00000000000003ELL, 0x8000000252E9B500, 0xD00000000000007DLL, 0x8000000252E9B480, 0x6928656C646E6168, 0xEF293A746E65746ELL, 30);
      v4 = [objc_allocWithZone(type metadata accessor for DiscoverHomeIntentResponse()) init];
      v5 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
      swift_beginAccess();
      v6 = 100;
LABEL_5:
      *&v4[v5] = v6;
      [v4 setUserActivity_];
      goto LABEL_25;
    }

LABEL_32:
    swift_once();
    goto LABEL_30;
  }

  if (!sub_252E378C4())
  {
    goto LABEL_29;
  }

LABEL_12:
  v4 = [objc_allocWithZone(type metadata accessor for DiscoverHomeIntentResponse()) init];
  v14 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  swift_beginAccess();
  *&v4[v14] = 4;
  [v4 setUserActivity_];
  if (v9 >> 62)
  {
    v15 = sub_252E378C4();
    if (v15)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v15 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_14:
      v25 = MEMORY[0x277D84F90];
      sub_252E37AB4();
      if ((v15 & 0x8000000000000000) == 0)
      {
        v16 = 0;
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](v16, v9);
          }

          else
          {
            v18 = *(v9 + 8 * v16 + 32);
          }

          ++v16;
          sub_252B9D2D4();

          sub_252E37A94();
          v17 = *(v25 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        while (v15 != v16);
        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_32;
    }
  }

LABEL_22:
  sub_252929F10(v9, 0);
  type metadata accessor for HomeEntity();
  v19 = sub_252E37254();

  [v4 setMatchedEntities_];

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v20 = sub_252E36AD4();
  __swift_project_value_buffer(v20, qword_27F544C70);
  sub_252E379F4();

  *(v0 + 16) = v15;
  v21 = sub_252E37D94();
  MEMORY[0x2530AD570](v21);

  MEMORY[0x2530AD570](0x65697469746E6520, 0xE900000000000073);
  sub_252CC3D90(0xD000000000000010, 0x8000000252E6D8E0, 0xD00000000000007DLL, 0x8000000252E9B480);

LABEL_25:
  v22 = *(v0 + 8);

  return v22(v4);
}

uint64_t sub_252DA035C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_252E37EC4();
  sub_252E37044();
  v7 = sub_252E37F14();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_252E37DB4() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_252DA0454(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_11;
  }

  v3 = *(a2 + 40);
  sub_252E37EC4();
  StateSemantic.rawValue.getter();
  sub_252E37044();

  v4 = sub_252E37F14();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v15 = *(*(a2 + 48) + v6);
      v8 = StateSemantic.rawValue.getter();
      v10 = v9;
      if (v8 == StateSemantic.rawValue.getter() && v10 == v11)
      {
        break;
      }

      v13 = sub_252E37DB4();

      if ((v13 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
LABEL_11:
    v13 = 0;
  }

  return v13 & 1;
}

BOOL sub_252DA05B4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_252E37EC4();
  MEMORY[0x2530AE390](a1);
  v5 = sub_252E37F14();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_252DA0680(uint64_t a1, char a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_252E37EC4();
  sub_252E37EE4();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x2530AE390](a1);
  }

  v8 = sub_252E37F14();
  v9 = -1 << *(a3 + 32);
  v10 = v8 & ~v9;
  if ((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(a3 + 48) + 16 * v10;
      if (*(v12 + 8))
      {
        if (a2)
        {
          return 1;
        }
      }

      else if ((a2 & 1) == 0 && *v12 == a1)
      {
        return 1;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return 0;
}

uint64_t sub_252DA0784(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_252E37914();
  }

  else if (*(a2 + 16) && (sub_25293F638(0, &qword_27F540E58, 0x277CD1EE0), v5 = *(a2 + 40), v6 = sub_252E37684(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v4 = sub_252E37694();

      if (v4)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_252DA08B4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_252E37834();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_252DB3974(v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_252DA0930(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_252E37834();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_252DB3E10(v3, *(a1 + 36), 0, a1);
}

uint64_t sub_252DA0998(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_252E37834();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_252DB4E10(v3, *(a1 + 36), 0, a1);

  return v5;
}

void *sub_252DA0A14(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_252E37834();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_252DB3DB4(&v5, v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_252DA0AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_252E37834();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_252DB39C4(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = sub_252E359C4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t sub_252DA0B60(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_252E37834();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_252DB4E64(v3, *(a1 + 36), 0, a1);
}

uint64_t sub_252DA0BF8(uint64_t a1, void (*a2)(void))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_252E37864();
    v7 = v6;
    v8 = sub_252E37924();
    v10 = v9;
    v11 = MEMORY[0x2530ADD50](v5, v7, v8, v9);
    sub_252ACBF38(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_252ACBF38(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v13 = -1 << *(a1 + 32);
    v5 = sub_252E37834();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v14 = sub_252DB3A84(v5, v7, v4 != 0, a1, a2);
  sub_252ACBF38(v5, v7, v4 != 0);
  return v14;
}

uint64_t sub_252DA0D1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  sub_2529AA3A0(0, v1, 0);
  v2 = v28;
  v4 = -1 << *(a1 + 32);
  v27 = a1 + 56;
  result = sub_252E37834();
  v6 = result;
  v7 = 0;
  v26 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v27 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v12 = *(*(a1 + 48) + 8 * v6);
    result = sub_252B9AAC4();
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = v13;
      v25 = result;
      sub_2529AA3A0((v14 > 1), v15 + 1, 1);
      v13 = v24;
      result = v25;
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 16 * v15;
    *(v16 + 32) = result;
    *(v16 + 40) = v13;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v17 = *(v27 + 8 * v10);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v26;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v9 = v26;
      v21 = (a1 + 64 + 8 * v10);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_252ACBF38(v6, v11, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_252ACBF38(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
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

uint64_t sub_252DA0F40(id a1, id a2)
{
  v2 = sub_252DA2334();
  v3 = v2;
  v20 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530ADF00](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 userTask];
      if (v9 && (v10 = v9, v11 = [v9 attribute], v10, v11 == a1) && (v12 = objc_msgSend(v7, sel_userTask)) != 0 && (v13 = v12, v14 = objc_msgSend(v12, sel_taskType), v13, v14 == a2))
      {
        sub_252E37A94();
        v15 = *(v20 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        v16 = v20;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_21:

  return v16;
}

uint64_t sub_252DA10F8()
{
  v1 = [v0 entity];
  if (!v1)
  {
    sub_252DA6A00();
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  v3 = [v1 deviceTypes];
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_252E37264();

  v6 = *(v5 + 16);
  if (!v6)
  {

    return MEMORY[0x277D84F90];
  }

  v15 = MEMORY[0x277D84F90];
  sub_2529AA420(0, v6, 0);
  v7 = 32;
  v8 = v15;
  do
  {
    v9 = sub_252E25FC4(*(v5 + v7));
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9;
    }

    v13 = *(v15 + 16);
    v12 = *(v15 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_2529AA420((v12 > 1), v13 + 1, 1);
    }

    *(v15 + 16) = v13 + 1;
    *(v15 + 8 * v13 + 32) = v11;
    v7 += 8;
    --v6;
  }

  while (v6);

  return v8;
}

uint64_t sub_252DA124C(void *a1)
{
  v4 = v2;
  v153 = a1;
  v154 = sub_252E36324();
  v5 = *(v154 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v154);
  v143 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v149 = &v141 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v141 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v146 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v147 = &v141 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v141 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v148 = &v141 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v141 - v24;
  v26 = [v4 entity];
  if (v26 && (v3 = v26, v27 = [v26 homeEntityName], v3, v27))
  {
    v3 = sub_252E36F34();

    sub_252E37024();

    v28 = *(v5 + 56);
    v29 = v25;
    v30 = 0;
  }

  else
  {
    v28 = *(v5 + 56);
    v29 = v25;
    v30 = 1;
  }

  v151 = v28;
  v28(v29, v30, 1, v154);
  v31 = [v4 entity];
  if (v31 && (v3 = v31, v32 = [v31 entityIdentifier], v3, v32))
  {
    v3 = sub_252E36F34();

    sub_252E37024();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = 1;
  v150 = v5 + 56;
  v151(v148, v33, 1, v154);
  v35 = [v4 entity];
  if (v35)
  {
    v3 = v35;
    v36 = [v35 room];

    if (v36)
    {
      v3 = sub_252E36F34();

      sub_252E37024();

      v34 = 0;
    }

    else
    {
      v34 = 1;
    }
  }

  v151(v21, v34, 1, v154);
  v37 = [v4 entity];
  v144 = v25;
  v145 = v21;
  if (v37 && (v38 = v37, v3 = [v37 zones], v38, v3))
  {
    v142 = v4;
    v39 = sub_252E37264();

    v40 = *(v39 + 16);
    if (v40)
    {
      v4 = 0;
      v25 = (v5 + 32);
      v41 = (v39 + 40);
      v42 = MEMORY[0x277D84F90];
      while (v4 < *(v39 + 16))
      {
        v43 = *(v41 - 1);
        v44 = *v41;

        sub_252E37024();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_2529F7F74(0, v42[2] + 1, 1, v42);
        }

        v1 = v42[2];
        v45 = v42[3];
        v3 = v1 + 1;
        if (v1 >= v45 >> 1)
        {
          v42 = sub_2529F7F74(v45 > 1, v1 + 1, 1, v42);
        }

        ++v4;
        v42[2] = v3;
        (*(v5 + 32))(v42 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v1, v12, v154);
        v41 += 2;
        if (v40 == v4)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_76:
      result = sub_252E378C4();
      if (!result)
      {
        goto LABEL_77;
      }

      goto LABEL_54;
    }

    v42 = MEMORY[0x277D84F90];
LABEL_26:

    v25 = v144;
    v21 = v145;
    v4 = v142;
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
  }

  v46 = [v4 entity];
  if (v46 && (v47 = v46, v48 = [v46 home], v47, v48))
  {
    sub_252E36F34();

    v49 = v147;
    sub_252E37024();

    v50 = 0;
  }

  else
  {
    v50 = 1;
    v49 = v147;
  }

  v151(v49, v50, 1, v154);
  v51 = [v4 entity];
  v39 = &off_279711000;
  if (v51)
  {
    v52 = v51;
    v53 = [v51 deviceTypes];

    if (v53)
    {
      v142 = v4;
      v54 = sub_252E37264();

      v55 = *(v54 + 16);
      v141 = v54;
      if (v55)
      {
        v56 = (v54 + 32);
        v3 = v5 + 32;
        v152 = MEMORY[0x277D84F90];
        do
        {
          v58 = *v56++;
          v59 = sub_252E25FC4(v58);
          if ((v60 & 1) == 0)
          {
            if (qword_27F53F2A0 != -1)
            {
              v68 = v59;
              swift_once();
              v59 = v68;
            }

            v61 = off_27F541CD0;
            if (*(off_27F541CD0 + 2))
            {
              v62 = sub_252A488EC(v59);
              if (v63)
              {
                v156 = *(v61[7] + v62);
                AccessoryTypeSemantic.rawValue.getter();
                v64 = v143;
                sub_252E362F4();
                v65 = *v3;
                (*v3)(v149, v64, v154);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v152 = sub_2529F7F74(0, *(v152 + 2) + 1, 1, v152);
                }

                v67 = *(v152 + 2);
                v66 = *(v152 + 3);
                if (v67 >= v66 >> 1)
                {
                  v152 = sub_2529F7F74(v66 > 1, v67 + 1, 1, v152);
                }

                v57 = v152;
                *(v152 + 2) = v67 + 1;
                v65(&v57[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v67], v149, v154);
              }
            }
          }

          --v55;
        }

        while (v55);
      }

      else
      {
        v152 = MEMORY[0x277D84F90];
      }

      v25 = v144;
      v21 = v145;
      v4 = v142;
      v39 = &off_279711000;
    }

    else
    {
      v152 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v152 = MEMORY[0x277D84F90];
  }

  v69 = [v4 entity];
  if (!v69)
  {
    goto LABEL_79;
  }

  v70 = v69;
  v71 = [v69 deviceTypes];

  if (!v71)
  {
    goto LABEL_79;
  }

  v1 = sub_252E37264();

  v72 = sub_252B680FC();
  swift_beginAccess();
  v40 = *(v72 + 24);
  if (v40 >> 62)
  {
    goto LABEL_76;
  }

  result = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_77:

    goto LABEL_78;
  }

LABEL_54:
  v3 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_107;
  }

  if ((v40 & 0xC000000000000001) != 0)
  {
    goto LABEL_108;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_110;
  }

  if (v3 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_110:
    __break(1u);
    return result;
  }

  v3 = *(v40 + 8 * v3 + 32);

  while (1)
  {
    v74 = [v3 filters];

    if (v74)
    {
      type metadata accessor for HomeFilter();
      v75 = sub_252E37264();

      v76 = sub_252BAFC18(v75);

      v3 = *(v1 + 16);
      if (v3)
      {
        v77 = sub_2529F8104(0, 1, 1, MEMORY[0x277D84F90]);
        v78 = (v1 + 32);
        v79 = *(v77 + 2);
        do
        {
          v81 = *v78++;
          v80 = v81;
          v82 = *(v77 + 3);
          v83 = v79 + 1;
          if (v79 >= v82 >> 1)
          {
            v77 = sub_2529F8104((v82 > 1), v79 + 1, 1, v77);
          }

          *(v77 + 2) = v83;
          *&v77[8 * v79++ + 32] = v80;
          --v3;
        }

        while (v3);
      }

      else
      {
        v83 = *(MEMORY[0x277D84F90] + 16);
      }

      if (v83 > 1)
      {
        v84 = *(v1 + 16);
        v85 = 32;
        v21 = v145;
        while (v84)
        {
          v86 = *(v1 + v85);
          v85 += 8;
          --v84;
          if (v86 == v76)
          {

            v87 = v76;
            v88 = 0;
            goto LABEL_86;
          }
        }

        goto LABEL_83;
      }

      v21 = v145;
      v39 = 0x279711000;
    }

    else
    {

LABEL_78:
      v21 = v145;
    }

LABEL_79:
    v87 = [v4 entity];
    if (v87)
    {
      v89 = v87;
      v90 = [v87 *(v39 + 3192)];

      if (!v90)
      {
LABEL_84:
        v87 = 0;
        goto LABEL_85;
      }

      v91 = sub_252E37264();

      if (*(v91 + 16))
      {
        v92 = *(v91 + 32);

        v87 = sub_252E25FC4(v92);
        goto LABEL_86;
      }

LABEL_83:

      goto LABEL_84;
    }

LABEL_85:
    v88 = 1;
LABEL_86:
    static SemanticMapper.getSemanticKey(for:)(v87, v88 & 1, v146);
    v93 = [v4 taskResponses];
    if (!v93)
    {
      v101 = type metadata accessor for HomeAutomationEntityResponse.Builder(0);
      v102 = *(v101 + 48);
      v103 = *(v101 + 52);
      v104 = swift_allocObject();
      v105 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
      v106 = v25;
      v107 = v154;
      v108 = v151;
      v151(v104 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName, 1, 1, v154);
      v109 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier;
      v108(v104 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v107);
      *(v104 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
      v110 = MEMORY[0x277D84F90];
      *(v104 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = MEMORY[0x277D84F90];
      *(v104 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
      v108(v104 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v107);
      *(v104 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v110;
      *(v104 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v110;
      swift_beginAccess();
      v111 = v106;
      sub_252956BAC(v106, v104 + v105);
      swift_endAccess();
      swift_beginAccess();
      v112 = v148;
      sub_252956BAC(v148, v104 + v109);
      swift_endAccess();
      sub_252AD6B04(v21);

      sub_252AD6B10(v42);

      v113 = v147;
      v114 = v21;
      v115 = sub_252AD6E30(v147);

      v116 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type;
      swift_beginAccess();
      v117 = v146;
      sub_252956BAC(v146, v115 + v116);
      swift_endAccess();
      v118 = *(v115 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types);
      *(v115 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v152;

      v119 = type metadata accessor for HomeAutomationEntityResponse(0);
      v120 = *(v119 + 48);
      v121 = *(v119 + 52);
      swift_allocObject();
      v122 = sub_2529605C0(v115);

      sub_25293847C(v117, &qword_27F540298, &unk_252E3C270);
      sub_25293847C(v113, &qword_27F540298, &unk_252E3C270);
      sub_25293847C(v114, &qword_27F540298, &unk_252E3C270);
      v123 = v112;
      goto LABEL_104;
    }

    v94 = v93;

    type metadata accessor for HomeUserTaskResponse();
    v39 = sub_252E37264();

    v155 = MEMORY[0x277D84F90];
    if (v39 >> 62)
    {
      v40 = sub_252E378C4();
    }

    else
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v1 = MEMORY[0x277D84F90];
    if (!v40)
    {
      v95 = MEMORY[0x277D84F90];
      goto LABEL_103;
    }

    if (v40 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:

    v3 = MEMORY[0x2530ADF00](v3, v40);
  }

  v95 = MEMORY[0x277D84F90];
  for (i = 0; i != v40; ++i)
  {
    if ((v39 & 0xC000000000000001) != 0)
    {
      v97 = MEMORY[0x2530ADF00](i, v39);
    }

    else
    {
      v97 = *(v39 + 8 * i + 32);
    }

    v98 = v97;
    if (sub_252DB3E60(v97, v153))
    {

      MEMORY[0x2530AD700](v99);
      if (*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v100 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();

      v1 = v155;
    }

    else
    {
    }
  }

LABEL_103:

  v124 = type metadata accessor for HomeAutomationEntityResponse.Builder(0);
  v125 = *(v124 + 48);
  v126 = *(v124 + 52);
  v127 = swift_allocObject();
  v128 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
  v129 = v154;
  v130 = v151;
  v151(v127 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName, 1, 1, v154);
  v130(v127 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v129);
  *(v127 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
  *(v127 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = v95;
  *(v127 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
  v130(v127 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v129);
  *(v127 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v95;
  *(v127 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v95;
  swift_beginAccess();
  v111 = v144;
  sub_252956BAC(v144, v127 + v128);
  swift_endAccess();
  v131 = v145;
  sub_252AD6B04(v145);

  sub_252AD6B10(v42);

  v132 = v147;
  v133 = sub_252AD6E30(v147);

  v134 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type;
  swift_beginAccess();
  v135 = v146;
  sub_252956BAC(v146, v133 + v134);
  swift_endAccess();
  v136 = sub_252DF8E6C(v1);

  v137 = *(v133 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states);
  *(v133 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v136;

  v138 = type metadata accessor for HomeAutomationEntityResponse(0);
  v139 = *(v138 + 48);
  v140 = *(v138 + 52);
  swift_allocObject();
  v122 = sub_2529605C0(v133);

  sub_25293847C(v135, &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v132, &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v131, &qword_27F540298, &unk_252E3C270);
  v123 = v148;
LABEL_104:
  sub_25293847C(v123, &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v111, &qword_27F540298, &unk_252E3C270);
  return v122;
}

uint64_t sub_252DA2334()
{
  v1 = [v0 taskResponses];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeUserTaskResponse();
    v3 = sub_252E37264();

    v11 = MEMORY[0x277D84F90];
    if (v3 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2530ADF00](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        MEMORY[0x2530AD700](v6);
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v8 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v5;
        if (v7 == i)
        {
          v9 = v11;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v9 = MEMORY[0x277D84F90];
LABEL_19:
  }

  else
  {
    sub_252DA6A00();
    return MEMORY[0x277D84F90];
  }

  return v9;
}

id HomeEntityResponse.__allocating_init(entity:taskResponses:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  v7 = sub_252E36F04();
  v8 = [v6 initWithIdentifier:0 displayString:v7];

  v9 = v8;
  [v9 setEntity_];
  if (a2)
  {
    type metadata accessor for HomeUserTaskResponse();
    v10 = sub_252E37254();
  }

  else
  {
    v10 = 0;
  }

  [v9 setTaskResponses_];

  return v9;
}

char *combineResults(results:)(uint64_t a1)
{
  v157 = MEMORY[0x277D84FA0];
  v158 = MEMORY[0x277D84F90];
  v156 = MEMORY[0x277D84F90];
  if (qword_27F53F498 != -1)
  {
    goto LABEL_205;
  }

  while (1)
  {
    v144 = sub_252E36AD4();
    v136 = __swift_project_value_buffer(v144, qword_27F544C70);
    sub_252CC3D90(0xD00000000000002CLL, 0x8000000252E9B540, 0xD00000000000008CLL, 0x8000000252E6E8A0);
    v7 = 0;
    v8 = *(a1 + 16);
    v9 = a1 + 40;
    v10 = MEMORY[0x277D84F90];
LABEL_3:
    v11 = (v9 + 16 * v7);
    while (v8 != v7)
    {
      if (v7 >= v8)
      {
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
        goto LABEL_164;
      }

      v1 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_159;
      }

      v12 = *v11;
      v11 += 16;
      v2 = v12;
      ++v7;
      if (v12 != 255)
      {
        a1 = *(v11 - 3);
        sub_2529904E4(a1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2529F7BEC(0, v10[2] + 1, 1, v10);
        }

        v3 = v10[2];
        v13 = v10[3];
        v14 = v10;
        if (v3 >= v13 >> 1)
        {
          v14 = sub_2529F7BEC((v13 > 1), v3 + 1, 1, v10);
        }

        v14[2] = v3 + 1;
        v10 = v14;
        v15 = &v14[2 * v3];
        v15[4] = a1;
        *(v15 + 40) = v2 & 1;
        v7 = v1;
        goto LABEL_3;
      }
    }

    v140 = v10[2];
    if (!v140)
    {

      v142 = 0;
      goto LABEL_78;
    }

    v142 = 0;
    v16 = 0;
    v141 = v10 + 4;
    v139 = v10;
    do
    {
      v18 = v10[2];
      if (v16 >= v18)
      {
        goto LABEL_180;
      }

      v19 = &v141[2 * v16];
      v20 = *v19;
      v143 = v16;
      if ((v19[1] & 1) == 0)
      {
        if (v18 == 1)
        {
          v85 = v20;

          goto LABEL_115;
        }

        sub_2529904E4(v20);
        v138 = v20;
        v137 = v20;
        v29 = [v137 entityResponses];
        if (!v29)
        {
LABEL_75:
          v54 = OBJC_IVAR___ControlHomeIntentResponse_code;
          swift_beginAccess();
          sub_252DA8D80(&v154, *&v137[v54], &qword_27F541878, &qword_252E40B00);
          LOBYTE(v54) = [v137 _requiresAuthentication];
          sub_252927D3C(v138);
          sub_252927D3C(v138);
          v142 |= v54;
          goto LABEL_17;
        }

        a1 = v29;
        type metadata accessor for HomeEntityResponse();
        v2 = sub_252E37264();

        sub_25297A894(v30);
        if (!(v2 >> 62))
        {
          v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v3)
          {
            goto LABEL_29;
          }

          goto LABEL_73;
        }

        v3 = sub_252E378C4();
        if (!v3)
        {
LABEL_73:
          v31 = MEMORY[0x277D84F90];
LABEL_74:

          sub_25297A8C0(v31);
          goto LABEL_75;
        }

LABEL_29:
        v4 = 0;
        v148 = v2 & 0xFFFFFFFFFFFFFF8;
        v149 = v2 & 0xC000000000000001;
        v147 = v2 + 32;
        v31 = MEMORY[0x277D84F90];
        v145 = v3;
        v146 = v2;
        while (1)
        {
          if (v149)
          {
            v32 = MEMORY[0x2530ADF00](v4, v2);
          }

          else
          {
            if (v4 >= *(v148 + 16))
            {
              goto LABEL_161;
            }

            v32 = *(v147 + 8 * v4);
          }

          v33 = v32;
          v34 = __OFADD__(v4++, 1);
          if (v34)
          {
            goto LABEL_160;
          }

          v35 = [v32 taskResponses];
          if (v35)
          {
            v36 = v35;
            type metadata accessor for HomeUserTaskResponse();
            v37 = sub_252E37264();

            if (v37 >> 62)
            {
              v1 = sub_252E378C4();
            }

            else
            {
              v1 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v150 = v33;
            v151 = v31;
            v152 = v4;
            if (v1)
            {
              v20 = 0;
              v38 = MEMORY[0x277D84F90];
              while (1)
              {
                if ((v37 & 0xC000000000000001) != 0)
                {
                  v39 = MEMORY[0x2530ADF00](v20, v37);
                }

                else
                {
                  if (v20 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_117;
                  }

                  v39 = *(v37 + 8 * v20 + 32);
                }

                v40 = v39;
                v41 = (v20 + 1);
                if (__OFADD__(v20, 1))
                {
                  break;
                }

                v42 = [v39 taskOutcome];

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v38 = sub_2529F7BD8(0, *(v38 + 2) + 1, 1, v38);
                }

                v44 = *(v38 + 2);
                v43 = *(v38 + 3);
                v5 = v44 + 1;
                if (v44 >= v43 >> 1)
                {
                  v38 = sub_2529F7BD8((v43 > 1), v44 + 1, 1, v38);
                }

                *(v38 + 2) = v5;
                *&v38[8 * v44 + 32] = v42;
                ++v20;
                if (v41 == v1)
                {
                  goto LABEL_56;
                }
              }

              __break(1u);
LABEL_117:
              __break(1u);
LABEL_118:
              v88 = v20;
              sub_2529904E4(v20);
              v89 = v20;

              v85 = parse(error:with:)(v20, 0);
              sub_252927D3C(v88);
              sub_252927D3C(v88);
              goto LABEL_115;
            }

            v38 = MEMORY[0x277D84F90];
LABEL_56:

            v3 = v145;
            v2 = v146;
            v4 = v152;
          }

          else
          {
            if (qword_27F53F4E8 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v144, qword_27F544D60);
            v154 = 0;
            v155 = 0xE000000000000000;
            sub_252E379F4();

            v154 = 0xD00000000000002DLL;
            v155 = 0x8000000252E6E870;
            v45 = [v33 description];
            v46 = sub_252E36F34();
            v1 = v47;

            MEMORY[0x2530AD570](v46, v1);

            sub_252CC3D90(v154, v155, 0xD00000000000008CLL, 0x8000000252E6E8A0);

            v38 = MEMORY[0x277D84F90];
          }

          a1 = *(v38 + 2);
          v48 = *(v31 + 2);
          v9 = v48 + a1;
          if (__OFADD__(v48, a1))
          {
            goto LABEL_162;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v9 <= *(v31 + 3) >> 1)
          {
            if (!*(v38 + 2))
            {
              goto LABEL_30;
            }
          }

          else
          {
            if (v48 <= v9)
            {
              v50 = v48 + a1;
            }

            else
            {
              v50 = v48;
            }

            v31 = sub_2529F7BD8(isUniquelyReferenced_nonNull_native, v50, 1, v31);
            if (!*(v38 + 2))
            {
LABEL_30:

              if (a1)
              {
                goto LABEL_163;
              }

              goto LABEL_31;
            }
          }

          v51 = *(v31 + 2);
          if ((*(v31 + 3) >> 1) - v51 < a1)
          {
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
            goto LABEL_181;
          }

          memcpy(&v31[8 * v51 + 32], v38 + 32, 8 * a1);

          if (a1)
          {
            v52 = *(v31 + 2);
            v34 = __OFADD__(v52, a1);
            v53 = v52 + a1;
            if (v34)
            {
              goto LABEL_179;
            }

            *(v31 + 2) = v53;
          }

LABEL_31:
          if (v4 == v3)
          {
            goto LABEL_74;
          }
        }
      }

      if (v18 == 1)
      {
        goto LABEL_118;
      }

      sub_2529904E4(v20);
      v21 = v20;
      v22 = v20;
      v23 = parse(error:with:)(v20, 0);
      v24 = OBJC_IVAR___ControlHomeIntentResponse_code;
      swift_beginAccess();
      sub_252DA8D80(&v154, *&v23[v24], &qword_27F541878, &qword_252E40B00);
      v25 = [v23 entityResponses];
      if (v25)
      {
        v17 = v25;
        type metadata accessor for HomeEntityResponse();
        v9 = sub_252E37264();
      }

      else
      {
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v3 = __swift_project_value_buffer(v144, qword_27F544D60);
        v154 = 0;
        v155 = 0xE000000000000000;
        sub_252E379F4();

        v154 = 0xD00000000000002FLL;
        v155 = 0x8000000252E69700;
        v26 = v23;
        v27 = [v26 description];
        v1 = sub_252E36F34();
        v2 = v28;

        MEMORY[0x2530AD570](v1, v2);

        sub_252CC3D90(v154, v155, 0xD000000000000098, 0x8000000252E69730);

        v9 = MEMORY[0x277D84F90];
      }

      sub_25297A894(v9);
      sub_252927D3C(v22);

      sub_252927D3C(v22);
LABEL_17:
      v16 = v143 + 1;
      v10 = v139;
    }

    while (v143 + 1 != v140);

LABEL_78:
    v154 = 0;
    v155 = 0xE000000000000000;
    sub_252E379F4();

    v154 = 0xD000000000000017;
    v155 = 0x8000000252E9B570;
    v55 = v157;
    sub_252DA0D1C(v157);
    v56 = MEMORY[0x2530AD730]();
    v58 = v57;

    MEMORY[0x2530AD570](v56, v58);

    a1 = v155;
    v1 = v136;
    sub_252CC3D90(v154, v155, 0xD00000000000008CLL, 0x8000000252E6E8A0);

    if (!*(v55 + 16))
    {
      if (v158 >> 62)
      {
        goto LABEL_209;
      }

      if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_81;
      }

LABEL_210:

      sub_252CC4050(0xD000000000000050, 0x8000000252E9B7B0, 0xD00000000000008CLL, 0x8000000252E6E8A0, 0xD000000000000018, 0x8000000252E9B810, 738);
      v85 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
      v134 = OBJC_IVAR___ControlHomeIntentResponse_code;
      swift_beginAccess();
      *&v85[v134] = 5;
      [v85 setUserActivity_];
      type metadata accessor for HomeEntityResponse();
      v135 = sub_252E37254();
      [v85 setEntityResponses_];

      goto LABEL_115;
    }

LABEL_81:
    v59 = 0;
    v2 = v55 + 56;
    v60 = 1 << *(v55 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & *(v55 + 56);
    v63 = (v60 + 63) >> 6;
    do
    {
      if (v62)
      {
        v64 = v59;
      }

      else
      {
        do
        {
          v64 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            goto LABEL_178;
          }

          if (v64 >= v63)
          {

            v80 = "sults. Will return ";
            v81 = 0xD000000000000039;
            goto LABEL_113;
          }

          v62 = *(v2 + 8 * v64);
          ++v59;
        }

        while (!v62);
        v59 = v64;
      }

      v65 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
    }

    while (*(*(v55 + 48) + ((v64 << 9) | (8 * v65))) == 4);
    v66 = 0;
    v67 = 1 << *(v55 + 32);
    v68 = -1;
    if (v67 < 64)
    {
      v68 = ~(-1 << v67);
    }

    v69 = v68 & *(v55 + 56);
    v70 = (v67 + 63) >> 6;
LABEL_94:
    if (v69)
    {
      v71 = v66;
      goto LABEL_100;
    }

LABEL_96:
    v71 = v66 + 1;
    if (!__OFADD__(v66, 1))
    {
      break;
    }

    __break(1u);
LABEL_205:
    swift_once();
  }

  if (v71 < v70)
  {
    v69 = *(v2 + 8 * v71);
    ++v66;
    if (v69)
    {
      v66 = v71;
LABEL_100:
      v72 = __clz(__rbit64(v69));
      v69 &= v69 - 1;
      if (*(*(v55 + 48) + ((v71 << 9) | (8 * v72))) == 101)
      {
        v73 = 0;
        v74 = 1 << *(v55 + 32);
        v75 = -1;
        if (v74 < 64)
        {
          v75 = ~(-1 << v74);
        }

        v76 = v75 & *(v55 + 56);
        v77 = (v74 + 63) >> 6;
        do
        {
          if (v76)
          {
            v78 = v73;
          }

          else
          {
            do
            {
              v78 = v73 + 1;
              if (__OFADD__(v73, 1))
              {
                __break(1u);
                goto LABEL_212;
              }

              if (v78 >= v77)
              {
                goto LABEL_120;
              }

              v76 = *(v2 + 8 * v78);
              ++v73;
            }

            while (!v76);
            v73 = v78;
          }

          v79 = __clz(__rbit64(v76));
          v76 &= v76 - 1;
        }

        while (*(*(v55 + 48) + ((v78 << 9) | (8 * v79))) != 4);

        v80 = "Intent response codes: ";
        v81 = 0xD00000000000003DLL;
LABEL_113:
        v82 = 4;
        goto LABEL_114;
      }

      goto LABEL_94;
    }

    goto LABEL_96;
  }

LABEL_120:
  v90 = 1 << *(v55 + 32);
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  else
  {
    v91 = -1;
  }

  v92 = v91 & *(v55 + 56);
  v4 = (v90 + 63) >> 6;

  v5 = 0;
LABEL_124:
  while (2)
  {
    while (2)
    {
      if (v92)
      {
        goto LABEL_130;
      }

      v1 = v136;
      while (2)
      {
        v93 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          if (!sub_252E378C4())
          {
            goto LABEL_210;
          }

          goto LABEL_81;
        }

        if (v93 >= v4)
        {

LABEL_139:

          if (*(v55 + 16) == 1)
          {
            v154 = 0;
            v155 = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E9B730);
            sub_252DA08B4(v55);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545DE0, &qword_252E600C0);
            v100 = sub_252E36F94();
            MEMORY[0x2530AD570](v100);

            sub_252CC3D90(v154, v155, 0xD00000000000008CLL, 0x8000000252E6E8A0);

            v101 = sub_252DA08B4(v55);
            if (v102)
            {
              v82 = 5;
            }

            else
            {
              v82 = v101;
            }

            v80 = "Will return generic failure";
            v81 = 0xD00000000000003FLL;
          }

          else
          {
            sub_252CC3D90(0xD00000000000004BLL, 0x8000000252E9B6A0, 0xD00000000000008CLL, 0x8000000252E6E8A0);
            v80 = "Will return generic failure";
            v81 = 0xD00000000000003FLL;
            v82 = 5;
          }

          goto LABEL_114;
        }

        v92 = *(v2 + 8 * v93);
        ++v5;
        if (!v92)
        {
          continue;
        }

        break;
      }

      v5 = v93;
LABEL_130:
      v94 = *(*(v55 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v92)))));
      if (qword_27F53F3F8 != -1)
      {
        swift_once();
      }

      v92 &= v92 - 1;
      a1 = qword_27F575A30;
      if (!*(qword_27F575A30 + 16))
      {
        continue;
      }

      break;
    }

    v95 = *(qword_27F575A30 + 40);
    sub_252E37EC4();
    v3 = 0x27F53F000uLL;
    MEMORY[0x2530AE390](v94);
    v96 = sub_252E37F14();
    v97 = -1 << *(a1 + 32);
    v98 = v96 & ~v97;
    if (((*(a1 + 56 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) == 0)
    {
      continue;
    }

    break;
  }

  v99 = ~v97;
  while (*(*(a1 + 48) + 8 * v98) != v94)
  {
    v98 = (v98 + 1) & v99;
    if (((*(a1 + 56 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) == 0)
    {
      goto LABEL_124;
    }
  }

  v103 = 0;
  v104 = 1 << *(v55 + 32);
  v105 = -1;
  if (v104 < 64)
  {
    v105 = ~(-1 << v104);
  }

  v106 = v105 & *(v55 + 56);
  v107 = (v104 + 63) >> 6;
  v1 = v136;
  do
  {
    if (v106)
    {
      v108 = v103;
    }

    else
    {
      do
      {
        v108 = v103 + 1;
        if (__OFADD__(v103, 1))
        {
          goto LABEL_208;
        }

        if (v108 >= v107)
        {
          goto LABEL_139;
        }

        v106 = *(v2 + 8 * v108);
        ++v103;
      }

      while (!v106);
      v103 = v108;
    }

    v109 = __clz(__rbit64(v106));
    v106 &= v106 - 1;
  }

  while (*(*(v55 + 48) + ((v108 << 9) | (8 * v109))) != 4);
  sub_252CC3D90(0xD000000000000032, 0x8000000252E9B5D0, 0xD00000000000008CLL, 0x8000000252E6E8A0);
  v2 = v156;
  v3 = *(v156 + 16);
  v151 = v156;
  if (v3)
  {
    if (qword_27F53F730 != -1)
    {
      goto LABEL_214;
    }

    while (1)
    {
      v4 = 0;
      v110 = v2 + 32;
      v5 = qword_27F575C40;
      a1 = qword_27F575C40 + 56;
      v1 = MEMORY[0x277D84F90];
      v150 = v2 + 32;
      while (v4 < *(v2 + 16))
      {
        if (*(v5 + 16))
        {
          v9 = *(v110 + 8 * v4);
          v113 = *(v5 + 40);
          sub_252E37EC4();
          MEMORY[0x2530AE390](v9);
          v114 = sub_252E37F14();
          v115 = -1 << *(v5 + 32);
          v116 = v114 & ~v115;
          if ((*(a1 + ((v116 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v116))
          {
            v117 = ~v115;
            while (*(*(v5 + 48) + 8 * v116) != v9)
            {
              v116 = (v116 + 1) & v117;
              if (((*(a1 + ((v116 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v116) & 1) == 0)
              {
                goto LABEL_167;
              }
            }

            v153 = v1;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2529AA3E0(0, *(v1 + 16) + 1, 1);
            }

LABEL_164:
            v112 = *(v1 + 16);
            v111 = *(v1 + 24);
            if (v112 >= v111 >> 1)
            {
              sub_2529AA3E0((v111 > 1), v112 + 1, 1);
              v1 = v153;
            }

            *(v1 + 16) = v112 + 1;
            *(v1 + 8 * v112 + 32) = v9;
            v110 = v150;
            v2 = v151;
          }
        }

LABEL_167:
        if (++v4 == v3)
        {
          goto LABEL_182;
        }
      }

LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      swift_once();
    }
  }

LABEL_181:
  v1 = MEMORY[0x277D84F90];
LABEL_182:
  v118 = sub_252C75AC8(v1);

  v154 = 0;
  v155 = 0xE000000000000000;
  sub_252E379F4();

  v154 = 0xD00000000000001DLL;
  v155 = 0x8000000252E9B610;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545DD8, &qword_252E600B8);
  v119 = sub_252E36FB4();
  MEMORY[0x2530AD570](v119);

  sub_252CC3D90(v154, v155, 0xD00000000000008CLL, 0x8000000252E6E8A0);

  if (*(v118 + 16))
  {
    v120 = 1 << *(v118 + 32);
    if (v120 < 64)
    {
      v121 = ~(-1 << v120);
    }

    else
    {
      v121 = -1;
    }

    v122 = v121 & *(v118 + 56);
    v123 = (v120 + 63) >> 6;

    v124 = 0;
    v125 = 0x27F53F000uLL;
    if (!v122)
    {
LABEL_188:
      while (1)
      {
        v126 = v124 + 1;
        if (__OFADD__(v124, 1))
        {
          goto LABEL_213;
        }

        if (v126 >= v123)
        {

          v80 = "Response code is failure.";
          v81 = 0xD00000000000004CLL;
          v82 = 4;
          goto LABEL_114;
        }

        v122 = *(v118 + 56 + 8 * v126);
        ++v124;
        if (v122)
        {
          goto LABEL_191;
        }
      }
    }

    while (1)
    {
      v126 = v124;
LABEL_191:
      v127 = *(*(v118 + 48) + ((v126 << 9) | (8 * __clz(__rbit64(v122)))));
      v3 = v125;
      if (*(v125 + 1888) != -1)
      {
        swift_once();
      }

      v128 = qword_27F575C80;
      if (!*(qword_27F575C80 + 16))
      {
        break;
      }

      v129 = *(qword_27F575C80 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v127);
      v130 = sub_252E37F14();
      v131 = -1 << *(v128 + 32);
      v132 = v130 & ~v131;
      if (((*(v128 + 56 + ((v132 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v132) & 1) == 0)
      {
        break;
      }

      v122 &= v122 - 1;
      v133 = ~v131;
      while (*(*(v128 + 48) + 8 * v132) != v127)
      {
        v132 = (v132 + 1) & v133;
        if (((*(v128 + 56 + ((v132 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v132) & 1) == 0)
        {
          goto LABEL_201;
        }
      }

      v124 = v126;
      v2 = v151;
      v125 = v3;
      if (!v122)
      {
        goto LABEL_188;
      }
    }

LABEL_201:
  }

  else
  {
  }

  v80 = "Inspecting failure outcomes: ";
  v81 = 0xD000000000000019;
  v82 = 5;
LABEL_114:
  sub_252CC3D90(v81, v80 | 0x8000000000000000, 0xD00000000000008CLL, 0x8000000252E6E8A0);
  v83 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v84 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v83[v84] = v82;
  v85 = v83;
  [v85 setUserActivity_];
  combineEntityResponses(entityResponses:)(v158);
  type metadata accessor for HomeEntityResponse();
  v86 = sub_252E37254();

  [v85 setEntityResponses_];

  [v85 _setRequiresAuthentication_];
LABEL_115:

  return v85;
}

char *sub_252DA3B1C()
{
  v1 = [v0 taskResponses];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeUserTaskResponse();
    v3 = sub_252E37264();

    if (v3 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v5 = 0;
      v6 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x2530ADF00](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v7 = *(v3 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v10 = [v7 taskOutcome];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_2529F7BD8(0, *(v6 + 2) + 1, 1, v6);
        }

        v12 = *(v6 + 2);
        v11 = *(v6 + 3);
        if (v12 >= v11 >> 1)
        {
          v6 = sub_2529F7BD8((v11 > 1), v12 + 1, 1, v6);
        }

        *(v6 + 2) = v12 + 1;
        *&v6[8 * v12 + 32] = v10;
        ++v5;
        if (v9 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    v6 = MEMORY[0x277D84F90];
LABEL_21:
  }

  else
  {
    sub_252DA66F4();
    return MEMORY[0x277D84F90];
  }

  return v6;
}

unint64_t sub_252DA3CEC()
{
  v1 = [v0 taskResponses];
  if (v1)
  {
    type metadata accessor for HomeUserTaskResponse();
    v2 = sub_252E37264();

    v3 = [v0 entity];
    if (v3)
    {

      if (v2 >> 62)
      {
LABEL_16:
        v4 = sub_252E378C4();
        if (v4)
        {
LABEL_5:
          v5 = 0;
          while (1)
          {
            v1 = v4 != v5;
            if (v4 == v5)
            {
              goto LABEL_18;
            }

            if ((v2 & 0xC000000000000001) != 0)
            {
              v6 = MEMORY[0x2530ADF00](v5, v2);
            }

            else
            {
              if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_15;
              }

              v6 = *(v2 + 8 * v5 + 32);
            }

            v7 = v6;
            if (__OFADD__(v5, 1))
            {
              __break(1u);
LABEL_15:
              __break(1u);
              goto LABEL_16;
            }

            v8 = [v6 taskOutcome];

            ++v5;
            if (v8 == 23)
            {
              goto LABEL_18;
            }
          }
        }
      }

      else
      {
        v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4)
        {
          goto LABEL_5;
        }
      }
    }

    v1 = 0;
LABEL_18:
  }

  return v1;
}

uint64_t sub_252DA3E40()
{
  v1 = [v0 taskResponses];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for HomeUserTaskResponse();
  v3 = sub_252E37264();

  v4 = [v0 entity];
  if (v4)
  {

    if (v3 >> 62)
    {
      goto LABEL_28;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v6 = 0;
      v7 = v3 & 0xC000000000000001;
      v8 = v3 & 0xFFFFFFFFFFFFFF8;
      v25 = v3;
      v9 = v3 + 32;
      while (1)
      {
        if (v7)
        {
          v10 = MEMORY[0x2530ADF00](v6, v25);
        }

        else
        {
          if (v6 >= *(v8 + 16))
          {
            goto LABEL_27;
          }

          v10 = *(v9 + 8 * v6);
        }

        v11 = v10;
        if (__OFADD__(v6++, 1))
        {
          break;
        }

        if (qword_27F53F740 != -1)
        {
          swift_once();
        }

        v3 = qword_27F575C50;
        v13 = [v11 taskOutcome];
        if (!*(v3 + 16))
        {
          goto LABEL_6;
        }

        v14 = v13;
        v15 = *(v3 + 40);
        sub_252E37EC4();
        MEMORY[0x2530AE390](v14);
        v16 = sub_252E37F14();
        v17 = -1 << *(v3 + 32);
        v18 = v16 & ~v17;
        if (((*(v3 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_6;
        }

        v19 = ~v17;
        while (*(*(v3 + 48) + 8 * v18) != v14)
        {
          v18 = (v18 + 1) & v19;
          if (((*(v3 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v20 = [v11 userTask];
        if (v20)
        {
          v21 = v20;
          v22 = [v20 attribute];

          if (v22 == 67)
          {
            v23 = 1;
            goto LABEL_30;
          }
        }

        else
        {
LABEL_6:
        }

        if (v6 == i)
        {
          v23 = 0;
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      ;
    }
  }

  v23 = 0;
LABEL_30:

  return v23;
}

char *combineIntentResponses(intentResponses:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_252E378C4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
LABEL_15:
    v18 = combineResults(results:)(v3);

    return v18;
  }

  v19 = MEMORY[0x277D84F90];
  result = sub_2529AA400(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v19;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x2530ADF00](v5, a1);
        v8 = *(v19 + 16);
        v7 = *(v19 + 24);
        if (v8 >= v7 >> 1)
        {
          v10 = v6;
          sub_2529AA400((v7 > 1), v8 + 1, 1);
          v6 = v10;
        }

        ++v5;
        *(v19 + 16) = v8 + 1;
        v9 = v19 + 16 * v8;
        *(v9 + 32) = v6;
        *(v9 + 40) = 0;
      }

      while (v2 != v5);
    }

    else
    {
      v11 = (a1 + 32);
      do
      {
        v12 = *(v19 + 16);
        v13 = *(v19 + 24);
        v14 = *v11;
        if (v12 >= v13 >> 1)
        {
          v16 = v13 > 1;
          v17 = v14;
          sub_2529AA400(v16, v12 + 1, 1);
          v14 = v17;
        }

        *(v19 + 16) = v12 + 1;
        v15 = v19 + 16 * v12;
        *(v15 + 32) = v14;
        *(v15 + 40) = 0;
        ++v11;
        --v2;
      }

      while (v2);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

char *parse(error:with:)(void *a1, void *a2)
{
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v30 > 1u || v30)
  {
    v4 = sub_252E37DB4();

    if (v4)
    {
      goto LABEL_6;
    }

LABEL_8:
    v20 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v21 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v20[v21] = 5;
    [v20 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v22 = sub_252E37254();
    [v20 setEntityResponses_];

    return v20;
  }

LABEL_6:
  type metadata accessor for HomeEntityResponse.Builder();
  v5 = swift_allocObject();
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v6.n128_f64[0] = HomeEntity.Builder.init()();
  v8 = (*(*v7 + 448))(v6);

  v9 = MEMORY[0x277D84F90];
  *(v5 + 16) = v8;
  *(v5 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540ED8, qword_252E4E970);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C290;
  v11 = [a2 userTask];
  v12 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
  v13 = sub_252E36F04();
  v14 = [v12 initWithIdentifier:0 displayString:v13];

  v15 = v14;
  [v15 setTaskOutcome_];
  [v15 setUserTask_];

  *(inited + 32) = v15;
  v16 = sub_25297D0C0(inited);

  swift_setDeallocating();
  v17 = sub_25293847C(inited + 32, &qword_27F540EE0, &qword_252E4D870);
  v18 = (*(*v16 + 192))(v17);

  type metadata accessor for ControlHomeIntentResponse.Builder();
  v19 = swift_allocObject();
  *(v19 + 16) = 4;
  *(v19 + 24) = v9;
  if (v30)
  {
    v24 = sub_252E37DB4();

    v23 = 104;
    if (v24)
    {
      v23 = 5;
    }
  }

  else
  {

    v23 = 5;
  }

  *(v19 + 16) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_252E3C290;
  *(v25 + 32) = v18;
  v26 = v18;
  v27 = sub_25297D0C0(v25);

  swift_setDeallocating();
  v28 = sub_25293847C(v25 + 32, &qword_27F540CC8, &unk_252E3F8F0);
  v20 = (*(*v27 + 176))(v28);

  return v20;
}

uint64_t sub_252DA4788(void *a1, uint64_t *a2, uint64_t a3)
{
  result = [v3 taskResponses];
  if (!result)
  {
    return result;
  }

  v8 = result;
  type metadata accessor for HomeUserTaskResponse();
  v9 = sub_252E37264();

  v10 = [v3 entity];
  if (!v10)
  {
    goto LABEL_24;
  }

  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_24:

    return 0;
  }

LABEL_23:
  v11 = sub_252E378C4();
  if (!v11)
  {
    goto LABEL_24;
  }

LABEL_5:
  v12 = 0;
  v23 = a3;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x2530ADF00](v12, v9);
    }

    else
    {
      if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v13 = *(v9 + 32 + 8 * v12);
    }

    v14 = v13;
    if (__OFADD__(v12++, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (*a1 != -1)
    {
      swift_once();
    }

    a3 = *a2;
    v16 = [v14 taskOutcome];
    if (*(a3 + 16))
    {
      v17 = v16;
      v18 = *(a3 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v17);
      v19 = sub_252E37F14();
      v20 = -1 << *(a3 + 32);
      v21 = v19 & ~v20;
      if ((*(a3 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        break;
      }
    }

LABEL_6:

    if (v12 == v11)
    {
      goto LABEL_24;
    }
  }

  v22 = ~v20;
  while (*(*(a3 + 48) + 8 * v21) != v17)
  {
    v21 = (v21 + 1) & v22;
    if (((*(a3 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  return 1;
}

void sub_252DA49A4()
{
  v1 = [v0 taskResponses];
  if (!v1)
  {

    v9 = v16;
    return;
  }

  v2 = v1;
  type metadata accessor for HomeUserTaskResponse();
  v3 = sub_252E37264();

  v17 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    v4 = sub_252E378C4();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_17:

    v10 = [v16 entity];
    v11 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
    v12 = sub_252E36F04();
    v13 = [v11 initWithIdentifier:0 displayString:v12];

    v14 = v13;
    [v14 setEntity_];
    v15 = sub_252E37254();

    [v14 setTaskResponses_];

    return;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530ADF00](i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      sub_2529C6D64();
      MEMORY[0x2530AD700]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
    }

    goto LABEL_17;
  }

  __break(1u);
}

void *combineEntityResponses(entityResponses:)(uint64_t a1)
{
  if (qword_27F53F4E8 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544D60);
    sub_252E379F4();

    v51 = type metadata accessor for HomeEntityResponse();
    v3 = MEMORY[0x2530AD730](a1);
    MEMORY[0x2530AD570](v3);

    MEMORY[0x2530AD570](46, 0xE100000000000000);
    sub_252CC3D90(0xD000000000000019, 0x8000000252E9B830, 0xD00000000000008CLL, 0x8000000252E6E8A0);

    v4 = MEMORY[0x277D84F90];
    v55 = MEMORY[0x277D84F90];

    v6 = 0;
    a1 = sub_252DB4BA0(v5);

    v7 = 0;
    v8 = a1 + 64;
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v4;
    v49 = v12;
    v50 = a1 + 64;
    v47 = a1;
    if (!v11)
    {
      break;
    }

LABEL_9:
    while (1)
    {
      v53 = v11;
      v54 = v7;
      v15 = (v7 << 9) | (8 * __clz(__rbit64(v11)));
      v16 = *(*(a1 + 48) + v15);
      v17 = *(*(a1 + 56) + v15);
      v56 = v4;
      v18 = v17 >> 62 ? sub_252E378C4() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v52 = v16;

      if (v18)
      {
        break;
      }

      v26 = v4;
LABEL_24:

      if ((v26 & 0x8000000000000000) != 0 || (v26 & 0x4000000000000000) != 0)
      {
        v27 = sub_252E378C4();
        if (v27)
        {
LABEL_27:
          v28 = 0;
LABEL_28:
          v29 = v28;
          do
          {
            if ((v26 & 0xC000000000000001) != 0)
            {
              v30 = MEMORY[0x2530ADF00](v29, v26);
            }

            else
            {
              if (v29 >= *(v26 + 16))
              {
                goto LABEL_53;
              }

              v30 = *(v26 + 8 * v29 + 32);
            }

            v31 = v30;
            v28 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              goto LABEL_52;
            }

            v32 = [v30 taskResponses];
            if (v32)
            {
              v33 = v32;
              type metadata accessor for HomeUserTaskResponse();
              v34 = sub_252E37264();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v4 = sub_2529F7BB4(0, v4[2] + 1, 1, v4);
              }

              v36 = v4[2];
              v35 = v4[3];
              if (v36 >= v35 >> 1)
              {
                v4 = sub_2529F7BB4((v35 > 1), v36 + 1, 1, v4);
              }

              v4[2] = v36 + 1;
              v4[v36 + 4] = v34;
              if (v28 != v27)
              {
                goto LABEL_28;
              }

              break;
            }

            ++v29;
          }

          while (v28 != v27);
        }
      }

      else
      {
        v27 = *(v26 + 16);
        if (v27)
        {
          goto LABEL_27;
        }
      }

      sub_252A75C1C(v4);

      v37 = objc_allocWithZone(v51);
      v38 = v52;
      v39 = sub_252E36F04();
      v40 = [v37 initWithIdentifier:0 displayString:v39];

      v41 = v40;
      [v41 setEntity_];
      type metadata accessor for HomeUserTaskResponse();
      v42 = sub_252E37254();

      [v41 setTaskResponses_];

      v43 = v41;
      MEMORY[0x2530AD700]();
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v44 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      v11 = (v53 - 1) & v53;
      sub_252E372D4();

      v13 = v55;
      v12 = v49;
      v8 = v50;
      v7 = v54;
      v4 = MEMORY[0x277D84F90];
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    v48 = v6;
    v19 = v4;
    v20 = 0;
    a1 = v17 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x2530ADF00](v20, v17);
      }

      else
      {
        if (v20 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v21 = *(v17 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v24 = [v21 taskResponses];
      if (v24)
      {

        sub_252E37A94();
        v25 = v56[2];
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v20;
      if (v23 == v18)
      {
        v26 = v56;
        v4 = v19;
        a1 = v47;
        v6 = v48;
        goto LABEL_24;
      }
    }

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
    swift_once();
  }

  while (1)
  {
LABEL_5:
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_54;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v7;
    if (v11)
    {
      v7 = v14;
      goto LABEL_9;
    }
  }

  sub_252E379F4();

  v45 = MEMORY[0x2530AD730](v13, v51);
  MEMORY[0x2530AD570](v45);

  MEMORY[0x2530AD570](46, 0xE100000000000000);
  sub_252CC3D90(0xD000000000000019, 0x8000000252E9B850, 0xD00000000000008CLL, 0x8000000252E6E8A0);

  return v13;
}

uint64_t sub_252DA5218()
{
  result = [v0 entity];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result deviceTypes];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_252E37264();

  if (!*(v4 + 16))
  {

    return 0;
  }

  v5 = *(v4 + 32);

  if (qword_27F53F410 != -1)
  {
LABEL_20:
    swift_once();
  }

  v6 = 0;
  v7 = 1 << *(qword_27F575A48 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(qword_27F575A48 + 56);
  v10 = (v7 + 63) >> 6;
  do
  {
    if (!v9)
    {
      while (1)
      {
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v11 >= v10)
        {
          return 0;
        }

        v9 = *(qword_27F575A48 + 56 + 8 * v11);
        ++v6;
        if (v9)
        {
          v6 = v11;
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_20;
    }

    v11 = v6;
LABEL_14:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
  }

  while (*(*(qword_27F575A48 + 48) + ((v11 << 9) | (8 * v12))) != v5);
  return 1;
}

unint64_t sub_252DA5378(id a1, void *a2, char a3)
{
  if (a3)
  {
    v4 = sub_252DA2334();
    v5 = v4;
    if (v4 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x2530ADF00](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = [v8 userTask];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 attribute];

          if (v13 == a1)
          {

            v18 = [v9 userTask];

            v19 = [v18 value];
            return v19;
          }
        }

        ++v7;
        if (v10 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    goto LABEL_23;
  }

  result = sub_252DA0F40(a1, a2);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_23:

    return 0;
  }

  v21 = result;
  v22 = sub_252E378C4();
  result = v21;
  if (!v22)
  {
    goto LABEL_23;
  }

LABEL_16:
  if ((result & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x2530ADF00](0);
    goto LABEL_19;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(result + 32);
LABEL_19:
    v15 = v14;

    v16 = [v15 userTask];

    v17 = [v16 value];
    return v17;
  }

  __break(1u);
  return result;
}

__objc2_class **sub_252DA55BC(id a1)
{
  v2 = v1;
  v3 = [v1 entity];
  v4 = [v2 taskResponses];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for HomeUserTaskResponse();
    v6 = sub_252E37264();
  }

  else
  {
    v6 = 0;
  }

  type metadata accessor for HomeEntityResponse();
  v7 = HomeEntityResponse.__allocating_init(entity:taskResponses:)(v3, v6);
  v8 = [v7 taskResponses];
  if (v8)
  {
    v9 = v8;
    v10 = type metadata accessor for HomeUserTaskResponse();
    v11 = sub_252E37264();

    v25 = MEMORY[0x277D84F90];
    if (v11 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v22 = v10;
      v23 = v7;
      v13 = 0;
      v7 = &off_279711000;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x2530ADF00](v13, v11);
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v15 = v14;
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v16 = [v14 userTask];
        if (v16 && (v17 = v16, v18 = [v16 attribute], v17, v18 == a1))
        {
          sub_252E37A94();
          v19 = *(v25 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        ++v13;
        if (v10 == i)
        {
          v7 = v23;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_23:

    v20 = sub_252E37254();
  }

  else
  {
    v20 = 0;
  }

  [v7 setTaskResponses_];

  return v7;
}

uint64_t sub_252DA582C()
{
  result = sub_2529FC1F0(&unk_2864A1AC8);
  qword_27F575C38 = result;
  return result;
}

uint64_t sub_252DA5854()
{
  result = sub_2529FC1F0(&unk_2864A18D8);
  qword_27F575C40 = result;
  return result;
}

uint64_t sub_252DA587C()
{
  result = sub_2529FC1F0(&unk_2864A52F0);
  qword_27F575C48 = result;
  return result;
}

uint64_t sub_252DA58A4()
{
  result = sub_2529FC1F0(&unk_2864A71C8);
  qword_27F575C50 = result;
  return result;
}

unint64_t sub_252DA58CC()
{
  result = sub_252CC4994(&unk_2864A1760);
  qword_27F575C58 = result;
  return result;
}

id sub_252DA58F4(void **a1, uint64_t a2, void *a3)
{
  v38 = a2;
  v33 = a3;
  v4 = sub_252E36AD4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v43 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = *a1;
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_27F544D60);
  v36 = v5[2];
  v36(v10, v12, v4);
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_252E379F4();

  v34 = 0xD000000000000018;
  v35 = 0x8000000252E9B8B0;
  v41 = 0xD000000000000018;
  v42 = 0x8000000252E9B8B0;
  v37 = v11;
  v13 = [v11 userTask];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 attribute];

    v13 = HomeAttributeType.description.getter(v15);
  }

  else
  {
    v16 = 0;
  }

  v39 = v13;
  v40 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v17 = sub_252E36F94();
  MEMORY[0x2530AD570](v17);

  sub_252CC3D90(v41, v42, 0xD00000000000008CLL, 0x8000000252E6E8A0);

  v18 = v5[1];
  v18(v10, v4);
  v41 = 0x7475626972747441;
  v42 = 0xEB00000000203A65;
  v19 = v38;
  v20 = HomeAttributeType.description.getter(v38);
  MEMORY[0x2530AD570](v20);

  sub_252CC3D90(v41, v42, 0xD00000000000008CLL, 0x8000000252E6E8A0);

  v36(v43, v12, v4);
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_252E379F4();

  v41 = v34;
  v42 = v35;
  v21 = v37;
  v22 = [v37 userTask];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 taskType];
  }

  else
  {
    v24 = 0;
  }

  v39 = v24;
  LOBYTE(v40) = v23 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F80, &unk_252E4E1F0);
  v25 = sub_252E36F94();
  MEMORY[0x2530AD570](v25);

  v26 = v43;
  sub_252CC3D90(v41, v42, 0xD00000000000008CLL, 0x8000000252E6E8A0);

  v18(v26, v4);
  result = [v21 userTask];
  if (result)
  {
    v28 = result;
    v29 = [result attribute];

    if (v29 == v19)
    {
      result = [v21 userTask];
      if (result)
      {
        v30 = result;
        v31 = [result taskType];

        return (v31 == v33);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_252DA5D40(void **a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v89 = a3;
  v87 = a5;
  v86 = a4;
  v91 = a2;
  v6 = sub_252E36AD4();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v85 - v12;
  v14 = *a1;
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v6, qword_27F544D60);
  v16 = v7[2];
  v92 = v15;
  v16(v13);
  v96 = 0;
  v97 = 0xE000000000000000;
  sub_252E379F4();

  v96 = 0xD000000000000018;
  v97 = 0x8000000252E9B8B0;
  v93 = v14;
  v17 = [v14 userTask];
  v90 = v11;
  if (v17)
  {
    v18 = v17;
    v19 = [v17 attribute];

    v17 = HomeAttributeType.description.getter(v19);
  }

  else
  {
    v20 = 0;
  }

  v94 = v17;
  v95 = v20;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v21 = sub_252E36F94();
  MEMORY[0x2530AD570](v21);

  sub_252CC3D90(v96, v97, 0xD00000000000008CLL, 0x8000000252E6E8A0);

  v22 = v7[1];
  v22(v13, v6);
  v96 = 0x7475626972747441;
  v97 = 0xEB00000000203A65;
  v23 = HomeAttributeType.description.getter(v91);
  MEMORY[0x2530AD570](v23);

  v24 = v92;
  sub_252CC3D90(v96, v97, 0xD00000000000008CLL, 0x8000000252E6E8A0);

  v25 = v90;
  (v16)(v90, v24, v6);
  v96 = 0;
  v97 = 0xE000000000000000;
  sub_252E379F4();

  v96 = 0xD000000000000014;
  v97 = 0x8000000252E9B8D0;
  v26 = [v93 userTask];
  if (!v26)
  {
    v28 = 0;
    goto LABEL_10;
  }

  v27 = v26;
  v28 = [v26 value];

  if (!v28)
  {
LABEL_10:
    v31 = 0;
    goto LABEL_11;
  }

  v29 = [v28 description];

  v28 = sub_252E36F34();
  v31 = v30;

  v25 = v90;
LABEL_11:
  v94 = v28;
  v95 = v31;
  v32 = sub_252E36F94();
  MEMORY[0x2530AD570](v32);

  sub_252CC3D90(v96, v97, 0xD00000000000008CLL, 0x8000000252E6E8A0);

  v22(v25, v6);
  v96 = 0x203A65756C6156;
  v97 = 0xE700000000000000;
  v33 = v89;
  v34 = [v89 description];
  v35 = sub_252E36F34();
  v37 = v36;

  MEMORY[0x2530AD570](v35, v37);

  sub_252CC3D90(v96, v97, 0xD00000000000008CLL, 0x8000000252E6E8A0);

  v38 = v93;
  v39 = [v93 userTask];
  if (!v39)
  {
    goto LABEL_67;
  }

  v40 = v39;
  v41 = [v39 attribute];

  if (v41 != v91)
  {
    goto LABEL_67;
  }

  if ((v87 & 1) == 0)
  {
    v42 = [v38 userTask];
    if (!v42)
    {
      goto LABEL_67;
    }

    v43 = v42;
    v44 = [v42 taskType];

    if (v44 != v86)
    {
      goto LABEL_67;
    }
  }

  v45 = [v33 type];
  v46 = 0;
  if (v45 > 3)
  {
    if (v45 <= 5)
    {
      if (v45 == 4)
      {
        v67 = [v38 userTask];
        if (v67)
        {
          v68 = v67;
          v69 = [v67 value];

          if (v69)
          {
            v50 = [v69 integerValue];

            v51 = [v33 integerValue];
            goto LABEL_40;
          }
        }

        [v33 integerValue];
      }

      else
      {
        v47 = [v38 userTask];
        if (v47)
        {
          v48 = v47;
          v49 = [v47 value];

          if (v49)
          {
            v50 = [v49 limitValue];

            v51 = [v33 limitValue];
LABEL_40:
            v46 = v50 == v51;
            return v46 & 1;
          }
        }

        [v33 limitValue];
      }

LABEL_67:
      v46 = 0;
      return v46 & 1;
    }

    if (v45 == 6)
    {
      v70 = [v38 userTask];
      v71 = [v70 value];

      v60 = [v71 rangeValue];
      v72 = [v33 rangeValue];
      v62 = v72;
      if (v60)
      {
        if (v72)
        {
          type metadata accessor for HomeAttributeRange();
          goto LABEL_44;
        }

LABEL_62:

        goto LABEL_67;
      }

      goto LABEL_48;
    }

    if (v45 == 8)
    {
      v58 = [v38 userTask];
      v59 = [v58 value];

      v60 = [v59 cleaningJob];
      v61 = [v33 cleaningJob];
      v62 = v61;
      if (v60)
      {
        if (v61)
        {
          type metadata accessor for HomeAttributeCleaningJob();
LABEL_44:
          v46 = sub_252E37694();

          return v46 & 1;
        }

        goto LABEL_62;
      }

LABEL_48:
      if (v62)
      {

        goto LABEL_67;
      }

LABEL_69:
      v46 = 1;
      return v46 & 1;
    }

    return v46 & 1;
  }

  switch(v45)
  {
    case 1:
      v63 = [v38 userTask];
      if (!v63 || (v64 = v63, v65 = [v63 value], v64, !v65))
      {
        [v33 BOOLValue];
        goto LABEL_67;
      }

      v66 = [v65 BOOLValue];

      v46 = v66 ^ [v33 BOOLValue] ^ 1;
      return v46 & 1;
    case 2:
      v73 = [v38 userTask];
      if (v73)
      {
        v74 = v73;
        v75 = [v73 value];

        if (v75)
        {
          [v75 doubleValue];
          v77 = v76;

          [v33 doubleValue];
          v46 = v77 == v78;
          return v46 & 1;
        }
      }

      [v33 doubleValue];
      goto LABEL_67;
    case 3:
      v52 = [v38 userTask];
      if (v52)
      {
        v53 = v52;
        v54 = [v52 value];

        if (!v54)
        {
LABEL_55:
          v57 = 0;
LABEL_56:
          v79 = [v33 stringValue];
          if (v79)
          {
            v80 = v79;
            v81 = sub_252E36F34();
            v83 = v82;

            if (v57)
            {
              if (v83)
              {
                if (v54 == v81 && v57 == v83)
                {

                  v46 = 1;
                }

                else
                {
                  v46 = sub_252E37DB4();
                }

                return v46 & 1;
              }
            }

            else if (!v83)
            {
              goto LABEL_69;
            }
          }

          else if (!v57)
          {
            goto LABEL_69;
          }

          goto LABEL_67;
        }

        v55 = [v54 stringValue];

        if (v55)
        {
          v54 = sub_252E36F34();
          v57 = v56;

          goto LABEL_56;
        }
      }

      v54 = 0;
      goto LABEL_55;
  }

  return v46 & 1;
}

uint64_t sub_252DA66F4()
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544D60);
  sub_252E379F4();

  v2 = [v0 description];
  v3 = sub_252E36F34();
  v5 = v4;

  MEMORY[0x2530AD570](v3, v5);

  sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E6E870, 0xD00000000000008CLL, 0x8000000252E6E8A0);
}

char *sub_252DA6828()
{
  v1 = [v0 taskResponses];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeUserTaskResponse();
    v3 = sub_252E37264();

    if (v3 >> 62)
    {
LABEL_23:
      v4 = sub_252E378C4();
      if (v4)
      {
LABEL_4:
        v5 = 0;
        v6 = MEMORY[0x277D84F90];
        v7 = &off_279711000;
        do
        {
          v8 = v5;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x2530ADF00](v8, v3);
            }

            else
            {
              if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v9 = *(v3 + 8 * v8 + 32);
            }

            v10 = v9;
            v5 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            v11 = [v9 userTask];
            if (v11)
            {
              break;
            }

            ++v8;
            if (v5 == v4)
            {
              goto LABEL_25;
            }
          }

          v12 = v7[203];
          v13 = v11;
          v14 = [v11 v12];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_2529F7A6C(0, *(v6 + 2) + 1, 1, v6);
          }

          v16 = *(v6 + 2);
          v15 = *(v6 + 3);
          if (v16 >= v15 >> 1)
          {
            v6 = sub_2529F7A6C((v15 > 1), v16 + 1, 1, v6);
          }

          *(v6 + 2) = v16 + 1;
          *&v6[8 * v16 + 32] = v14;
          v7 = &off_279711000;
        }

        while (v5 != v4);
        goto LABEL_25;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v6 = MEMORY[0x277D84F90];
LABEL_25:

    return v6;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252DA6A00()
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544D60);
  sub_252E379F4();

  v2 = [v0 description];
  v3 = sub_252E36F34();
  v5 = v4;

  MEMORY[0x2530AD570](v3, v5);

  sub_252CC3D90(0xD000000000000025, 0x8000000252E75B90, 0xD00000000000008CLL, 0x8000000252E6E8A0);
}

uint64_t sub_252DA6B34(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_252A44A10(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252DA6CD0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_252E37EC4();
  sub_252E37044();
  v9 = sub_252E37F14();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_252E37DB4() & 1) != 0)
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

    sub_252DAD34C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_252DA6E78(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), void (*a6)(void))
{
  v9 = v6;
  v12 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v12 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v12 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = sub_252E378D4();

    if (v16)
    {

      a6(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v41;
    }

    else
    {
      result = sub_252E378C4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v33 = sub_252DAA0A8(v15, result + 1, a3, a4, a5);
        v34 = *(v33 + 16);
        if (*(v33 + 24) <= v34)
        {
          sub_252DAA7C0(v34 + 1, a3, a4);
        }

        sub_252DAD0DC(v35, v33);

        *v9 = v33;
        *a1 = a2;
        return 1;
      }
    }

    return result;
  }

  v39 = v6;
  v18 = *(v12 + 40);
  sub_252E37EC4();
  sub_252E32E84();
  sub_252DB4F00(&qword_27F540680, MEMORY[0x277CC95F0]);
  sub_252E36E94();
  v19 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
  MEMORY[0x2530AE390](*(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
  v20 = (a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v21 = *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v22 = *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  sub_252E37044();

  v23 = sub_252E37F14();
  v24 = -1 << *(v12 + 32);
  v25 = v23 & ~v24;
  if (((*(v12 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
  {
LABEL_19:
    v30 = *v39;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *v39;

    sub_252DAF330(v32, v25, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v39 = v42;
    *a1 = a2;
    return 1;
  }

  v26 = ~v24;
  while (1)
  {
    v27 = *(*(v12 + 48) + 8 * v25);

    if ((sub_252E32E54() & 1) == 0 || *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(a2 + v19))
    {

      goto LABEL_10;
    }

    if (*(v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v20 && *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v20[1])
    {
      break;
    }

    v29 = sub_252E37DB4();

    if (v29)
    {
      goto LABEL_25;
    }

LABEL_10:
    v25 = (v25 + 1) & v26;
    if (((*(v12 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_25:

  *a1 = *(*(v12 + 48) + 8 * v25);

  return 0;
}

uint64_t sub_252DA7244(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_252E37EC4();
  sub_252E37EE4();
  if (a3)
  {
    sub_252E37044();
  }

  v9 = sub_252E37F14();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_16:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_252DAD4CC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = v14[1];
    if (v15)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_15;
    }

LABEL_6:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a3)
  {
    goto LABEL_6;
  }

  v16 = *v14 == a2 && v15 == a3;
  if (!v16 && (sub_252E37DB4() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  *a1 = *(*(v7 + 48) + 16 * v11);

  return 0;
}

uint64_t sub_252DA73E8(double *a1, double a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_252E37EB4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v5 + 48);
      if (*(v11 + 8 * v9) == a2)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v11 + 8 * v9);
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_252DAD7F8(v9, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_252DA7524(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_252E36324();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  v24 = &v59 - v23;
  v25 = *v3;
  if ((*v3 & 0xC000000000000001) != 0)
  {
    if (v25 < 0)
    {
      v26 = *v3;
    }

    else
    {
      v26 = v25 & 0xFFFFFFFFFFFFFF8;
    }

    v27 = sub_252E378D4();

    if (v27)
    {

      v77 = v27;
      type metadata accessor for HomeAutomationEntityState(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v76;
      return result;
    }

    result = sub_252E378C4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v56 = sub_252DA999C(v26, result + 1);
    v76 = v56;
    v57 = *(v56 + 16);
    if (*(v56 + 24) <= v57)
    {
      sub_252DAAF70(v57 + 1);
      v56 = v76;
    }

    sub_252DAD224(v58, v56);

    *v3 = v56;
    *a1 = a2;
    return 1;
  }

  v62 = v22;
  v69 = v17;
  v70 = v21;
  v63 = v15;
  v59 = v3;
  v60 = a1;
  v29 = *(v25 + 40);
  sub_252E37EC4();
  sub_252A66B38();
  v30 = sub_252E37F14();
  v75 = v25;
  v31 = -1 << *(v25 + 32);
  v32 = v30 & ~v31;
  v67 = v25 + 56;
  if (((*(v25 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
  {
LABEL_30:
    v52 = v59;
    v53 = *v59;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = *v52;

    sub_252DADB64(v55, v32, isUniquelyReferenced_nonNull_native);
    *v52 = v76;
    *v60 = a2;
    return 1;
  }

  v65 = v10;
  v73 = ~v31;
  v74 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
  v66 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue;
  v33 = (v7 + 48);
  v64 = (v7 + 32);
  v71 = (v7 + 8);
  v61 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType;
  v72 = a2;
  v34 = v70;
  v35 = v67;
  while (1)
  {
    v36 = *(*(v75 + 48) + 8 * v32);
    v37 = *(v34 + 48);
    sub_252956C1C(v36 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v24);
    sub_252956C1C(a2 + v74, &v24[v37]);
    v38 = *v33;
    if ((*v33)(v24, 1, v6) == 1)
    {
      v39 = v38(&v24[v37], 1, v6);

      if (v39 != 1)
      {
        goto LABEL_17;
      }

      sub_25293847C(v24, &qword_27F540298, &unk_252E3C270);
    }

    else
    {
      v40 = v69;
      sub_252956C1C(v24, v69);
      if (v38(&v24[v37], 1, v6) == 1)
      {
        v41 = *v71;

        v41(v40, v6);
        v34 = v70;
LABEL_17:
        sub_25293847C(v24, &qword_27F540758, &unk_252E4D160);

        goto LABEL_11;
      }

      v42 = v65;
      (*v64)(v65, &v24[v37], v6);
      sub_252DB4F00(&qword_27F540760, MEMORY[0x277D55C48]);

      v68 = sub_252E36EF4();
      v43 = *v71;
      v44 = v42;
      v35 = v67;
      (*v71)(v44, v6);
      v43(v40, v6);
      sub_25293847C(v24, &qword_27F540298, &unk_252E3C270);
      v34 = v70;
      if ((v68 & 1) == 0)
      {
LABEL_10:

        a2 = v72;
        goto LABEL_11;
      }
    }

    v45 = *(v36 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
    v46 = *(v72 + v66);
    if (v45)
    {
      if (!v46)
      {
        goto LABEL_10;
      }

      v47 = *(v72 + v66);

      v48 = _s22HomeAutomationInternal0aB16EntityStateValueC2eeoiySbAC_ACtFZ_0(v45, v46);

      if ((v48 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (v46)
    {
      goto LABEL_10;
    }

    v49 = *(v34 + 48);
    v50 = v62;
    sub_252956C1C(v36 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType, v62);
    a2 = v72;
    sub_252956C1C(v72 + v61, v50 + v49);
    if (v38(v50, 1, v6) == 1)
    {
      break;
    }

    sub_252956C1C(v50, v63);
    if (v38((v50 + v49), 1, v6) == 1)
    {
      (*v71)(v63, v6);
      goto LABEL_27;
    }

    (*v64)(v65, (v50 + v49), v6);
    sub_252DB4F00(&qword_27F540760, MEMORY[0x277D55C48]);
    v68 = sub_252E36EF4();
    v51 = *v71;
    (*v71)(v65, v6);
    v51(v63, v6);
    sub_25293847C(v50, &qword_27F540298, &unk_252E3C270);

    v35 = v67;
    if (v68)
    {
      goto LABEL_37;
    }

LABEL_11:
    v32 = (v32 + 1) & v73;
    if (((*(v35 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (v38((v50 + v49), 1, v6) != 1)
  {
LABEL_27:
    sub_25293847C(v50, &qword_27F540758, &unk_252E4D160);

    v35 = v67;
    goto LABEL_11;
  }

  sub_25293847C(v50, &qword_27F540298, &unk_252E3C270);

LABEL_37:

  *v60 = *(*(v75 + 48) + 8 * v32);

  return 0;
}

uint64_t sub_252DA7E2C(_BYTE *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t, unint64_t, uint64_t))
{
  v7 = *v4;
  v8 = *(*v4 + 40);
  v9 = sub_252E37EC4();
  (a3)(v9);
  sub_252E37044();

  v10 = sub_252E37F14();
  v11 = -1 << *(v7 + 32);
  v12 = v10 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v25 = *(*(v7 + 48) + v12);
      v14 = a3();
      v16 = v15;
      if (v14 == a3() && v16 == v17)
      {
        break;
      }

      v19 = sub_252E37DB4();

      if (v19)
      {
        goto LABEL_11;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v7 + 48) + v12);
  }

  else
  {
LABEL_9:
    v20 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v4;
    a4(a2, v12, isUniquelyReferenced_nonNull_native);
    *v4 = v26;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_252DA7FE0(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_252E37EC4();
  sub_252A9AD58(a2);
  sub_252E37044();

  v8 = sub_252E37F14();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = sub_252A9AD58(*(*(v6 + 48) + v10));
      v14 = v13;
      if (v12 == sub_252A9AD58(a2) && v14 == v15)
      {
        break;
      }

      v17 = sub_252E37DB4();

      if (v17)
      {
        goto LABEL_11;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v6 + 48) + v10);
  }

  else
  {
LABEL_9:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_252DAE6BC(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v21;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_252DA81E0(void *a1, void *a2, void (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_252E378D4();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
    }

    else
    {
      result = sub_252E378C4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_252DA9EB0(v15, result + 1, a4, a5, a6);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_252DACC30(v30 + 1, a4, a5);
        }

        v31 = v16;
        sub_252DAD2C8(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = *(v14 + 40);
    v20 = sub_252E37684();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_252E37694();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v11;
      v28 = a2;
      sub_252DAE2F8(v28, v22, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v38;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_252DA8480(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v5 = a2[7];
  v6 = a2[5];
  v68 = a2[6];
  v69 = v5;
  v7 = a2[7];
  v70 = a2[8];
  v8 = a2[3];
  v9 = a2[1];
  v64 = a2[2];
  v65 = v8;
  v10 = a2[3];
  v11 = a2[5];
  v66 = a2[4];
  v67 = v11;
  v12 = a2[1];
  v62 = *a2;
  v63 = v12;
  v13 = *v2;
  v14 = *(*v2 + 40);
  v78 = v68;
  v79 = v7;
  v80 = a2[8];
  v74 = v64;
  v75 = v10;
  v76 = v66;
  v77 = v6;
  v71 = *(a2 + 72);
  v81 = *(a2 + 72);
  v72 = v62;
  v73 = v9;
  sub_252E37EC4();
  sub_252A34930();
  v15 = sub_252E37F14();
  v16 = -1 << *(v13 + 32);
  v17 = v15 & ~v16;
  if ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    while (1)
    {
      v19 = *(v13 + 48) + 152 * v17;
      v20 = *(v19 + 16);
      v60[0] = *v19;
      v60[1] = v20;
      v21 = *(v19 + 80);
      v23 = *(v19 + 32);
      v22 = *(v19 + 48);
      v60[4] = *(v19 + 64);
      v60[5] = v21;
      v60[2] = v23;
      v60[3] = v22;
      v24 = *(v19 + 96);
      v25 = *(v19 + 112);
      v26 = *(v19 + 128);
      v61 = *(v19 + 144);
      v60[7] = v25;
      v60[8] = v26;
      v60[6] = v24;
      v56 = *(v19 + 96);
      v57 = *(v19 + 112);
      v58 = *(v19 + 128);
      v59 = *(v19 + 144);
      v52 = *(v19 + 32);
      v53 = *(v19 + 48);
      v54 = *(v19 + 64);
      v55 = *(v19 + 80);
      v50 = *v19;
      v51 = *(v19 + 16);
      sub_25297DE08(v60, v48);
      v27 = sub_252A39200(&v50, &v62);
      v78 = v56;
      v79 = v57;
      v80 = v58;
      v81 = v59;
      v74 = v52;
      v75 = v53;
      v76 = v54;
      v77 = v55;
      v72 = v50;
      v73 = v51;
      sub_2529AEC80(&v72);
      if (v27)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v48[6] = v68;
    v48[7] = v69;
    v48[8] = v70;
    v49 = v71;
    v48[2] = v64;
    v48[3] = v65;
    v48[4] = v66;
    v48[5] = v67;
    v48[0] = v62;
    v48[1] = v63;
    sub_2529AEC80(v48);
    v35 = *(v13 + 48) + 152 * v17;
    v36 = *(v35 + 96);
    v37 = *(v35 + 112);
    v38 = *(v35 + 128);
    v59 = *(v35 + 144);
    v57 = v37;
    v58 = v38;
    v56 = v36;
    v39 = *(v35 + 32);
    v40 = *(v35 + 48);
    v41 = *(v35 + 80);
    v54 = *(v35 + 64);
    v55 = v41;
    v53 = v40;
    v42 = *(v35 + 16);
    v50 = *v35;
    v51 = v42;
    v52 = v39;
    v43 = *(v35 + 112);
    *(a1 + 96) = *(v35 + 96);
    *(a1 + 112) = v43;
    *(a1 + 128) = *(v35 + 128);
    *(a1 + 144) = *(v35 + 144);
    v44 = *(v35 + 48);
    *(a1 + 32) = *(v35 + 32);
    *(a1 + 48) = v44;
    v45 = *(v35 + 80);
    *(a1 + 64) = *(v35 + 64);
    *(a1 + 80) = v45;
    v46 = *(v35 + 16);
    *a1 = *v35;
    *(a1 + 16) = v46;
    sub_25297DE08(&v50, v47);
    return 0;
  }

  else
  {
LABEL_5:
    v28 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v68;
    v79 = v69;
    v80 = v70;
    v81 = v71;
    v74 = v64;
    v75 = v65;
    v76 = v66;
    v77 = v67;
    v72 = v62;
    v73 = v63;
    *&v50 = *v3;
    sub_25297DE08(&v72, v60);
    sub_252DAE8A4(&v72, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v50;
    v30 = v69;
    *(a1 + 96) = v68;
    *(a1 + 112) = v30;
    *(a1 + 128) = v70;
    *(a1 + 144) = v71;
    v31 = v65;
    *(a1 + 32) = v64;
    *(a1 + 48) = v31;
    v32 = v67;
    *(a1 + 64) = v66;
    *(a1 + 80) = v32;
    v33 = v63;
    result = 1;
    *a1 = v62;
    *(a1 + 16) = v33;
  }

  return result;
}

uint64_t sub_252DA87DC(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_252E37EB4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_252DAEB44(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_252DA88E8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - v9;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2529E6488(&qword_27F542C40, &qword_27F540A28, &qword_252E3DF80);
  v34 = a2;
  v13 = sub_252E36E84();
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v17 = v7 + 16;
    v16 = *(v7 + 16);
    v18 = (v7 + 8);
    v19 = *(v17 + 56);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_2529E6488(qword_27F542ED0, &qword_27F540A28, &qword_252E3DF80);
      v21 = sub_252E36EF4();
      v22 = *v18;
      (*v18)(v10, v6);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v20;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v22(v34, v6);
    v20(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    v23 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_252DAEEA4(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_252DA8BCC(_WORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_252E37EC4();
  HueSemantic.rawValue.getter();
  sub_252E37044();

  v7 = sub_252E37F14();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v20 = *(*(v5 + 48) + 2 * v9);
      v11 = HueSemantic.rawValue.getter();
      v13 = v12;
      if (v11 == HueSemantic.rawValue.getter() && v13 == v14)
      {
        break;
      }

      v16 = sub_252E37DB4();

      if (v16)
      {
        goto LABEL_11;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOWORD(a2) = *(*(v5 + 48) + 2 * v9);
  }

  else
  {
LABEL_9:
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_252DAF148(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v21;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_252DA8D80(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  sub_252E37EC4();
  MEMORY[0x2530AE390](a2);
  v11 = sub_252E37F14();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (*(*(v9 + 48) + 8 * v13) != a2)
    {
      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v15 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_252DAD688(a2, v13, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_252DA8F78(__int128 *a1, __int128 *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = a2[1];
  v59 = *a2;
  v60 = v6;
  v7 = a2[3];
  v61 = a2[2];
  v62 = v7;
  sub_252E37EC4();
  IconInfo.hash(into:)(&v56);
  v8 = sub_252E37F14();
  v9 = -1 << *(v4 + 32);
  v10 = v8 & ~v9;
  v47 = a2;
  if (((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_62:
    v35 = *v46;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v59 = *v46;
    sub_252C76A80(v47, &v56);
    sub_252DAF76C(v47, v10, isUniquelyReferenced_nonNull_native);
    *v46 = v59;
    v37 = v47[1];
    *a1 = *v47;
    a1[1] = v37;
    v38 = v47[3];
    a1[2] = v47[2];
    a1[3] = v38;
    return 1;
  }

  v54 = ~v9;
  v11 = *(a2 + 32);
  v51 = *(a2 + 33);
  v12 = *a2;
  v13 = *(a2 + 1);
  v14 = *(a2 + 2);
  v52 = *(a2 + 6);
  v53 = *(a2 + 3);
  v49 = *(a2 + 5);
  v50 = *(a2 + 7);
  while (1)
  {
    v15 = (*(v4 + 48) + (v10 << 6));
    v17 = v15[2];
    v16 = v15[3];
    v18 = v15[1];
    v56 = *v15;
    v57 = v18;
    *v58 = v17;
    *&v58[16] = v16;
    if (v56 != __PAIR128__(v13, v12) && (sub_252E37DB4() & 1) == 0 || v57 != __PAIR128__(v53, v14) && (sub_252E37DB4() & 1) == 0)
    {
      goto LABEL_5;
    }

    v19 = 0x6F7268636F6E6F6DLL;
    if (v58[0] != 2)
    {
      v19 = 0x657474656C6170;
    }

    v20 = 0xE700000000000000;
    if (v58[0] == 2)
    {
      v20 = 0xEA0000000000656DLL;
    }

    v21 = 0xEA0000000000726FLL;
    v22 = 0x6C6F6369746C756DLL;
    if (!v58[0])
    {
      v22 = 0x6863726172656968;
      v21 = 0xEC0000006C616369;
    }

    v23 = v58[0] <= 1u ? v22 : v19;
    v24 = v58[0] <= 1u ? v21 : v20;
    if (v11 > 1)
    {
      v25 = v11 == 2 ? 0x6F7268636F6E6F6DLL : 0x657474656C6170;
      v26 = v11 == 2 ? 0xEA0000000000656DLL : 0xE700000000000000;
    }

    else
    {
      v25 = 0x6863726172656968;
      v26 = 0xEC0000006C616369;
      if (v11)
      {
        v26 = 0xEA0000000000726FLL;
        v25 = 0x6C6F6369746C756DLL;
      }
    }

    if (v23 == v25 && v24 == v26)
    {
      sub_252C76A80(&v56, &v59);
    }

    else
    {
      v27 = sub_252E37DB4();
      sub_252C76A80(&v56, &v59);

      if ((v27 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v58[1] > 1u)
    {
      if (v58[1] == 2)
      {
        v28 = 0x6F7268636F6E6F6DLL;
        v29 = 0xEA0000000000656DLL;
      }

      else
      {
        v29 = 0xE700000000000000;
        v28 = 0x657474656C6170;
      }
    }

    else
    {
      v28 = 0x6863726172656968;
      v29 = 0xEC0000006C616369;
      if (v58[1])
      {
        v29 = 0xEA0000000000726FLL;
        v28 = 0x6C6F6369746C756DLL;
      }
    }

    if (v51 > 1)
    {
      if (v51 != 2)
      {
        v31 = 0xE700000000000000;
        if (v28 != 0x657474656C6170)
        {
          goto LABEL_51;
        }

        goto LABEL_48;
      }

      v30 = 0x6F7268636F6E6F6DLL;
      v31 = 0xEA0000000000656DLL;
    }

    else
    {
      v30 = 0x6863726172656968;
      v31 = 0xEC0000006C616369;
      if (v51)
      {
        v31 = 0xEA0000000000726FLL;
        if (v28 != 0x6C6F6369746C756DLL)
        {
          goto LABEL_51;
        }

        goto LABEL_48;
      }
    }

    if (v28 != v30)
    {
      goto LABEL_51;
    }

LABEL_48:
    if (v29 == v31)
    {

      goto LABEL_52;
    }

LABEL_51:
    v32 = sub_252E37DB4();

    if ((v32 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_52:
    if (*&v58[16])
    {
      if (!v52 || *&v58[8] != __PAIR128__(v52, v49) && (sub_252E37DB4() & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (v52)
    {
      goto LABEL_4;
    }

    v33 = *&v58[24];
    if (!*&v58[24])
    {
      break;
    }

    if (!v50)
    {
      goto LABEL_4;
    }

    v34 = sub_252DA6B34(v33, v50);

    sub_252C76ADC(&v56);
    if (v34)
    {
      goto LABEL_64;
    }

LABEL_5:
    v10 = (v10 + 1) & v54;
    if (((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  if (v50)
  {
LABEL_4:
    sub_252C76ADC(&v56);
    goto LABEL_5;
  }

  sub_252C76ADC(&v56);
LABEL_64:
  sub_252C76ADC(v47);
  v40 = (*(v4 + 48) + (v10 << 6));
  v41 = *v40;
  v42 = v40[1];
  v43 = v40[3];
  v61 = v40[2];
  v62 = v43;
  v59 = v41;
  v60 = v42;
  v44 = v40[1];
  *a1 = *v40;
  a1[1] = v44;
  v45 = v40[3];
  a1[2] = v40[2];
  a1[3] = v45;
  sub_252C76A80(&v59, v55);
  return 0;
}

uint64_t sub_252DA9508(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_252E378D4();

    if (v17)
    {

      sub_25293F638(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_252E378C4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_252DAA360(v15, result + 1, a5, a6, a3, a4);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_252DACC30(v30 + 1, a5, a6);
        }

        v31 = v16;
        sub_252DAD2C8(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_25293F638(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_252E37684();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_252E37694();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_252DAF5DC(v28, v22, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_252DA977C(void *a1, const void *a2)
{
  v3 = v2;
  memcpy(__dst, a2, sizeof(__dst));
  v6 = *v3;
  v7 = *(*v3 + 40);
  memcpy(v22, a2, sizeof(v22));
  sub_252E37EC4();
  HomeAutomationIntent.hash(into:)(v20);
  v8 = sub_252E37F14();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48) + 504 * v10;
      memcpy(v20, v12, sizeof(v20));
      memcpy(__src, v12, sizeof(__src));
      sub_2529353AC(v20, v18);
      LOBYTE(v12) = _s22HomeAutomationInternal0aB6IntentV2eeoiySbAC_ACtFZ_0(__src, __dst);
      memcpy(v22, __src, sizeof(v22));
      sub_252935408(v22);
      if (v12)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    memcpy(v18, __dst, sizeof(v18));
    sub_252935408(v18);
    v16 = (*(v6 + 48) + 504 * v10);
    memcpy(__src, v16, sizeof(__src));
    memcpy(a1, v16, 0x1F8uLL);
    sub_2529353AC(__src, &v17);
    return 0;
  }

  else
  {
LABEL_5:
    v13 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    memcpy(v22, __dst, sizeof(v22));
    __src[0] = *v3;
    sub_2529353AC(v22, v20);
    sub_252DAFCCC(v22, v10, isUniquelyReferenced_nonNull_native);
    *v3 = __src[0];
    memcpy(a1, __dst, 0x1F8uLL);
    return 1;
  }
}

uint64_t sub_252DA999C(uint64_t a1, uint64_t a2)
{
  v3 = sub_252E36324();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544608, &qword_252E54DF8);
    v14 = sub_252E37994();
    v44 = v14;
    sub_252E37874();
    v15 = sub_252E37904();
    if (v15)
    {
      v16 = v15;
      v40 = type metadata accessor for HomeAutomationEntityState(0);
      v41 = v3;
      v17 = v16;
      v18 = (v4 + 48);
      v39 = (v4 + 8);
      v37 = (v4 + 32);
      do
      {
        v42 = v17;
        swift_dynamicCast();
        v20 = *(v14 + 16);
        if (*(v14 + 24) <= v20)
        {
          sub_252DAAF70(v20 + 1);
        }

        v21 = v43;
        v14 = v44;
        v22 = *(v44 + 40);
        sub_252E37EC4();
        sub_252956C1C(v21 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v13);
        v23 = *v18;
        if ((*v18)(v13, 1, v3) == 1)
        {
          sub_25293847C(v13, &qword_27F540298, &unk_252E3C270);
          sub_252E37EE4();
        }

        else
        {
          sub_252E36304();
          (*v39)(v13, v3);
          sub_252E37EE4();
          sub_252E37044();
        }

        v24 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
        if (v24)
        {
          sub_252E37EE4();
          sub_252956C1C(v24 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v11);
          v3 = v41;
          if (v23(v11, 1, v41) == 1)
          {
            sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
            if (*(v24 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
            {
              v25 = *(v24 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

              HomeAutomationAbstractMeasurement.hash(into:)();
            }

            else
            {
              v27 = *(v24 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
              sub_252E37EE4();
            }
          }

          else
          {
            v26 = v38;
            (*v37)(v38, v11, v3);
            sub_252E36304();
            sub_252E37044();

            (*v39)(v26, v3);
          }
        }

        else
        {
          sub_252E37EE4();
          v3 = v41;
        }

        result = sub_252E37F14();
        v29 = v14 + 56;
        v30 = -1 << *(v14 + 32);
        v31 = result & ~v30;
        v32 = v31 >> 6;
        if (((-1 << v31) & ~*(v14 + 56 + 8 * (v31 >> 6))) != 0)
        {
          v19 = __clz(__rbit64((-1 << v31) & ~*(v14 + 56 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v33 = 0;
          v34 = (63 - v30) >> 6;
          do
          {
            if (++v32 == v34 && (v33 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v35 = v32 == v34;
            if (v32 == v34)
            {
              v32 = 0;
            }

            v33 |= v35;
            v36 = *(v29 + 8 * v32);
          }

          while (v36 == -1);
          v19 = __clz(__rbit64(~v36)) + (v32 << 6);
        }

        *(v29 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v14 + 48) + 8 * v19) = v21;
        ++*(v14 + 16);
        v17 = sub_252E37904();
      }

      while (v17);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v14;
}

uint64_t sub_252DA9EB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_252E37994();
    v22 = v8;
    sub_252E37874();
    if (sub_252E37904())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v16 = *(v8 + 16);
        if (*(v8 + 24) <= v16)
        {
          sub_252DACC30(v16 + 1, a3, a4);
        }

        v8 = v22;
        v9 = *(v22 + 40);
        result = sub_252E37684();
        v11 = v22 + 56;
        v12 = -1 << *(v22 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6))) != 0)
        {
          v15 = __clz(__rbit64((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v14 == v18;
            if (v14 == v18)
            {
              v14 = 0;
            }

            v17 |= v19;
            v20 = *(v11 + 8 * v14);
          }

          while (v20 == -1);
          v15 = __clz(__rbit64(~v20)) + (v14 << 6);
        }

        *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        *(*(v22 + 48) + 8 * v15) = v21;
        ++*(v22 + 16);
      }

      while (sub_252E37904());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_252DAA0A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_252E37994();
    v24 = v8;
    sub_252E37874();
    if (sub_252E37904())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v18 = *(v8 + 16);
        if (*(v8 + 24) <= v18)
        {
          sub_252DAA7C0(v18 + 1, a3, a4);
        }

        v8 = v24;
        v9 = *(v24 + 40);
        sub_252E37EC4();
        sub_252E32E84();
        sub_252DB4F00(&qword_27F540680, MEMORY[0x277CC95F0]);
        sub_252E36E94();
        MEMORY[0x2530AE390](*(v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
        v10 = *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v11 = *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        sub_252E37044();

        result = sub_252E37F14();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_252E37904());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_252DAA360(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_252E37994();
    v24 = v10;
    sub_252E37874();
    if (sub_252E37904())
    {
      sub_25293F638(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_252DACC30(v18 + 1, a3, a4);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_252E37684();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_252E37904());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_252DAA560(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541720, &qword_252E409D8);
  result = sub_252E37984();
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
      sub_252E37EC4();
      sub_252E37044();
      result = sub_252E37F14();
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

uint64_t sub_252DAA7C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_252E37984();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v4;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      sub_252E37EC4();
      sub_252E32E84();
      sub_252DB4F00(&qword_27F540680, MEMORY[0x277CC95F0]);
      sub_252E36E94();
      MEMORY[0x2530AE390](*(v20 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
      v22 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v23 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      sub_252E37044();

      result = sub_252E37F14();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v31 = 1 << *(v5 + 32);
    if (v31 >= 64)
    {
      bzero((v5 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    v4 = v32;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_252DAAAC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544600, &qword_252E54DF0);
  result = sub_252E37984();
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
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v6 + 40);
      sub_252E37EC4();
      sub_252E37EE4();
      if (v20)
      {
        sub_252E37044();
      }

      result = sub_252E37F14();
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

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v21;
      v15[1] = v20;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
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

uint64_t sub_252DAAD3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E48, &qword_252E60128);
  result = sub_252E37984();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = v15 | (v7 << 6);
      v19 = *(v3 + 48);
      v20 = *(v19 + 8 * v18);
      v21 = *(v6 + 40);
      if (v20 != 0.0)
      {
        v22 = *(v19 + 8 * v18);
      }

      result = sub_252E37EB4();
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

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_252DAAF70(uint64_t a1)
{
  v2 = v1;
  v53 = sub_252E36324();
  v4 = *(v53 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v53);
  v48 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v46 - v11;
  v12 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v13 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544608, &qword_252E54DF8);
  result = sub_252E37984();
  v15 = result;
  if (*(v12 + 16))
  {
    v16 = 0;
    v17 = (v12 + 56);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 56);
    v21 = (v18 + 63) >> 6;
    v54 = (v4 + 48);
    v50 = (v4 + 8);
    v51 = v12;
    v46 = v2;
    v47 = (v4 + 32);
    v22 = result + 56;
    v23 = v52;
    v24 = v53;
    while (v20)
    {
      v26 = __clz(__rbit64(v20));
      v55 = (v20 - 1) & v20;
LABEL_17:
      v29 = *(*(v12 + 48) + 8 * (v26 | (v16 << 6)));
      v30 = *(v15 + 40);
      sub_252E37EC4();
      sub_252956C1C(v29 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v23);
      v31 = *v54;
      if ((*v54)(v23, 1, v24) == 1)
      {
        sub_25293847C(v23, &qword_27F540298, &unk_252E3C270);
        sub_252E37EE4();
      }

      else
      {
        sub_252E36304();
        (*v50)(v23, v24);
        sub_252E37EE4();
        sub_252E37044();
      }

      v32 = *(v29 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (v32)
      {
        sub_252E37EE4();
        v33 = v49;
        sub_252956C1C(v32 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v49);
        v24 = v53;
        if (v31(v33, 1, v53) == 1)
        {
          sub_25293847C(v33, &qword_27F540298, &unk_252E3C270);
          if (*(v32 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
          {
            v34 = *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

            HomeAutomationAbstractMeasurement.hash(into:)();
          }

          else
          {
            v37 = *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
            sub_252E37EE4();
          }
        }

        else
        {
          v35 = v33;
          v36 = v48;
          (*v47)(v48, v35, v24);
          sub_252E36304();
          sub_252E37044();

          (*v50)(v36, v24);
        }
      }

      else
      {
        sub_252E37EE4();
        v24 = v53;
      }

      result = sub_252E37F14();
      v38 = -1 << *(v15 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v22 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v23 = v52;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v22 + 8 * v40);
          if (v44 != -1)
          {
            v25 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v39) & ~*(v22 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v23 = v52;
LABEL_9:
      *(v22 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      *(*(v15 + 48) + 8 * v25) = v29;
      ++*(v15 + 16);
      v12 = v51;
      v20 = v55;
    }

    v27 = v16;
    while (1)
    {
      v16 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v16 >= v21)
      {
        break;
      }

      v28 = v17[v16];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v55 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    v45 = 1 << *(v12 + 32);
    if (v45 >= 64)
    {
      bzero(v17, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v45;
    }

    v2 = v46;
    *(v12 + 16) = 0;
  }

  *v2 = v15;
  return result;
}

uint64_t sub_252DAB4E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445E8, &qword_252E54DD8);
  result = sub_252E37984();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_252E37EC4();
      sub_252A9AD58(v18);
      sub_252E37044();

      result = sub_252E37F14();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_252DAB750(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5418B0, &qword_252E40B20);
  result = sub_252E37984();
  v6 = result;
  if (*(v3 + 16))
  {
    v21 = v2;
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
    for (i = (v9 + 63) >> 6; v11; ++*(v6 + 16))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_14:
      v16 = *(v3 + 48) + 152 * (v13 | (v7 << 6));
      v29 = *(v16 + 96);
      v30 = *(v16 + 112);
      v31 = *(v16 + 128);
      v25 = *(v16 + 32);
      v26 = *(v16 + 48);
      v27 = *(v16 + 64);
      v28 = *(v16 + 80);
      v23 = *v16;
      v24 = *(v16 + 16);
      v32 = *(v16 + 144);
      v17 = *(v6 + 40);
      v22 = *v16;
      sub_252E37EC4();
      sub_252A34930();
      sub_252E37F14();
      v18 = -1 << *(v6 + 32);
      result = sub_252E37854();
      *(v6 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v19 = *(v6 + 48) + 152 * result;
      *(v19 + 96) = v29;
      *(v19 + 112) = v30;
      *(v19 + 128) = v31;
      *(v19 + 144) = v32;
      *(v19 + 32) = v25;
      *(v19 + 48) = v26;
      *(v19 + 64) = v27;
      *(v19 + 80) = v28;
      *v19 = v23;
      *(v19 + 16) = v24;
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    v20 = 1 << *(v3 + 32);
    if (v20 >= 64)
    {
      bzero((v3 + 56), ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v20;
    }

    v2 = v21;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_252DAB9CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416A0, &qword_252E40968);
  result = sub_252E37984();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_252E37EB4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_252DABBF0(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_252E37984();
  v9 = result;
  if (*(v6 + 16))
  {
    v32 = v5;
    v10 = 0;
    v11 = (v6 + 56);
    v12 = 1 << *(v6 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v6 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(*(v6 + 48) + (v18 | (v10 << 6)));
      v22 = *(v9 + 40);
      v23 = sub_252E37EC4();
      a4(v23);
      sub_252E37044();

      result = sub_252E37F14();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v6 + 32);
    if (v31 >= 64)
    {
      bzero((v6 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    v5 = v32;
    *(v6 + 16) = 0;
  }

  *v5 = v9;
  return result;
}

uint64_t sub_252DABE64(uint64_t a1)
{
  v2 = v1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545DF8, &qword_252E600D8);
  result = sub_252E37984();
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
      sub_2529E6488(&qword_27F542C40, &qword_27F540A28, &qword_252E3DF80);
      result = sub_252E36E84();
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

uint64_t sub_252DAC1C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E00, &qword_252E600E0);
  result = sub_252E37984();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 2 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_252E37EC4();
      HueSemantic.rawValue.getter();
      sub_252E37044();

      result = sub_252E37F14();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 2 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_252DAC448(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_252E37984();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v20);
      result = sub_252E37F14();
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

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v4 = v30;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_252DAC690(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E18, &qword_252E600F8);
  v5 = sub_252E37984();
  v6 = v5;
  if (!*(v3 + 16))
  {
LABEL_49:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v8 = 0x6F7268636F6E6F6DLL;
  v52 = v1;
  v53 = (v3 + 56);
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
  v13 = v5 + 56;
  v57 = v5;
  v54 = v12;
  for (i = v3; ; v3 = i)
  {
    if (!v11)
    {
      v18 = v7;
      result = v53;
      while (1)
      {
        v7 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_51;
        }

        if (v7 >= v12)
        {
          v51 = 1 << *(v3 + 32);
          if (v51 >= 64)
          {
            bzero(v53, ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          }

          else
          {
            *v53 = -1 << v51;
          }

          v2 = v52;
          *(v3 + 16) = 0;
          goto LABEL_49;
        }

        v20 = v53[v7];
        ++v18;
        if (v20)
        {
          v16 = v8;
          v17 = __clz(__rbit64(v20));
          v61 = (v20 - 1) & v20;
          goto LABEL_17;
        }
      }
    }

    v16 = v8;
    v17 = __clz(__rbit64(v11));
    v61 = (v11 - 1) & v11;
LABEL_17:
    v21 = *(v3 + 48) + ((v17 | (v7 << 6)) << 6);
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    v25 = *(v21 + 24);
    v26 = *(v21 + 32);
    v64 = *(v21 + 33);
    v65 = *(v21 + 34);
    v66 = *(v21 + 38);
    v62 = *(v21 + 40);
    v63 = *(v21 + 48);
    v27 = *(v21 + 56);
    v28 = *(v6 + 40);
    sub_252E37EC4();
    v60 = v22;
    sub_252E37044();
    v58 = v25;
    v59 = v24;
    v29 = v26;
    sub_252E37044();
    v8 = v16;
    sub_252E37044();

    v30 = v63;
    sub_252E37044();

    if (!v63)
    {
      sub_252E37EE4();
      if (!v27)
      {
        goto LABEL_35;
      }

LABEL_19:
      v56 = v29;
      sub_252E37EE4();
      v31 = 1 << *(v27 + 32);
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v33 = v32 & *(v27 + 64);
      v34 = (v31 + 63) >> 6;

      v35 = 0;
      for (j = 0; v33; v35 ^= result)
      {
        v37 = j;
LABEL_28:
        v38 = __clz(__rbit64(v33)) | (v37 << 6);
        v39 = (*(v27 + 48) + 16 * v38);
        v40 = *v39;
        v41 = v39[1];
        v42 = *(*(v27 + 56) + 8 * v38);
        v33 &= v33 - 1;

        sub_252E37044();

        if (v42 == 0.0)
        {
          v43 = 0.0;
        }

        else
        {
          v43 = v42;
        }

        MEMORY[0x2530AE3C0](*&v43);
        result = sub_252E37F14();
      }

      while (1)
      {
        v37 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        if (v37 >= v34)
        {

          MEMORY[0x2530AE390](v35);
          v8 = 0x6F7268636F6E6F6DLL;
          v29 = v56;
          v30 = v63;
          goto LABEL_36;
        }

        v33 = *(v27 + 64 + 8 * v37);
        ++j;
        if (v33)
        {
          j = v37;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    sub_252E37EE4();
    sub_252E37044();
    if (v27)
    {
      goto LABEL_19;
    }

LABEL_35:
    sub_252E37EE4();
LABEL_36:
    result = sub_252E37F14();
    v6 = v57;
    v44 = -1 << *(v57 + 32);
    v45 = result & ~v44;
    v46 = v45 >> 6;
    if (((-1 << v45) & ~*(v13 + 8 * (v45 >> 6))) == 0)
    {
      break;
    }

    v14 = __clz(__rbit64((-1 << v45) & ~*(v13 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v15 = *(v57 + 48) + (v14 << 6);
    *v15 = v60;
    *(v15 + 8) = v23;
    *(v15 + 16) = v59;
    *(v15 + 24) = v58;
    *(v15 + 32) = v29;
    *(v15 + 33) = v64;
    *(v15 + 34) = v65;
    *(v15 + 38) = v66;
    v11 = v61;
    *(v15 + 40) = v62;
    *(v15 + 48) = v30;
    *(v15 + 56) = v27;
    ++*(v57 + 16);
    v12 = v54;
  }

  v47 = 0;
  v48 = (63 - v44) >> 6;
  while (++v46 != v48 || (v47 & 1) == 0)
  {
    v49 = v46 == v48;
    if (v46 == v48)
    {
      v46 = 0;
    }

    v47 |= v49;
    v50 = *(v13 + 8 * v46);
    if (v50 != -1)
    {
      v14 = __clz(__rbit64(~v50)) + (v46 << 6);
      goto LABEL_9;
    }
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_252DACC30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_252E37984();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_252E37684();
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

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_252DACE50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544610, &qword_252E54E08);
  result = sub_252E37984();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 504 * (v15 | (v7 << 6)));
      memcpy(__src, v18, sizeof(__src));
      v19 = *(v6 + 40);
      memcpy(__dst, v18, sizeof(__dst));
      sub_252E37EC4();
      HomeAutomationIntent.hash(into:)(v29);
      result = sub_252E37F14();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = memcpy((*(v6 + 48) + 504 * v14), __src, 0x1F8uLL);
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_252DAD0DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_252E37EC4();
  sub_252E32E84();
  sub_252DB4F00(&qword_27F540680, MEMORY[0x277CC95F0]);
  sub_252E36E94();
  MEMORY[0x2530AE390](*(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
  v5 = *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v6 = *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  sub_252E37044();

  sub_252E37F14();
  v7 = -1 << *(a2 + 32);
  result = sub_252E37854();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_252DAD224(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_252E37EC4();
  sub_252A66B38();
  sub_252E37F14();
  v5 = -1 << *(a2 + 32);
  result = sub_252E37854();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_252DAD2C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_252E37684();
  v5 = -1 << *(a2 + 32);
  result = sub_252E37854();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_252DAD34C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_252DAA560(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_252DAFEB0();
      goto LABEL_16;
    }

    sub_252DB1128(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_252E37EC4();
  sub_252E37044();
  result = sub_252E37F14();
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

      result = sub_252E37DB4();
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
  result = sub_252E37E14();
  __break(1u);
  return result;
}

uint64_t sub_252DAD4CC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a4)
  {
    sub_252DAAAC0(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_252DB000C();
      goto LABEL_22;
    }

    sub_252DB162C(v9 + 1);
  }

  v11 = *v4;
  v12 = *(*v4 + 40);
  sub_252E37EC4();
  sub_252E37EE4();
  if (a2)
  {
    sub_252E37044();
  }

  result = sub_252E37F14();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = result & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == v8 && v18 == a2;
          if (v19 || (result = sub_252E37DB4(), (result & 1) != 0))
          {
LABEL_21:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
            result = sub_252E37E14();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_21;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_22:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v8;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

uint64_t sub_252DAD688(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_252DAC448(v7 + 1, a4, a5);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a2;
      result = sub_252DB0A6C(a4, a5);
      a2 = v9;
      goto LABEL_12;
    }

    sub_252DB2DE8(v7 + 1, a4, a5);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_252E37EC4();
  MEMORY[0x2530AE390](v6);
  result = sub_252E37F14();
  v12 = -1 << *(v10 + 32);
  a2 = result & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v10 + 48) + 8 * a2) != v6)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_252E37E14();
  __break(1u);
  return result;
}

unint64_t sub_252DAD7F8(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_252DAAD3C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_252DB0164();
      result = v7;
      goto LABEL_12;
    }

    sub_252DB1880(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_252E37EB4();
  v11 = -1 << *(v8 + 32);
  result = v10 & ~v11;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v12 = ~v11;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v12;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v13 + 48) + 8 * result) = a3;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_252E37E14();
  __break(1u);
  return result;
}

uint64_t sub_252DAD924(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_252DABBF0(v6 + 1, &qword_27F541668, &qword_252E40930, AccessoryTypeSemantic.rawValue.getter);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_252DB05BC(&qword_27F541668, &qword_252E40930);
      goto LABEL_16;
    }

    sub_252DB2630(v6 + 1, &qword_27F541668, &qword_252E40930, AccessoryTypeSemantic.rawValue.getter);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_252E37EC4();
  AccessoryTypeSemantic.rawValue.getter();
  sub_252E37044();

  result = sub_252E37F14();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v22 = *(*(v8 + 48) + a2);
      v12 = AccessoryTypeSemantic.rawValue.getter();
      v14 = v13;
      if (v12 == AccessoryTypeSemantic.rawValue.getter() && v14 == v15)
      {
        goto LABEL_19;
      }

      v17 = sub_252E37DB4();

      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_252E37E14();
  __break(1u);
  return result;
}

uint64_t sub_252DADB64(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_252E36324();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v66 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v58 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v18 = *(*(v74 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v74);
  v61 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v19);
  v23 = v58 - v22;
  v24 = *(*v3 + 16);
  v25 = *(*v3 + 24);
  v62 = v3;
  if (v25 <= v24 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_252DAAF70(v24 + 1);
    }

    else
    {
      if (v25 > v24)
      {
        result = sub_252DB0B9C(&qword_27F544608, &qword_252E54DF8);
        goto LABEL_32;
      }

      sub_252DB1A80(v24 + 1);
    }

    v26 = *v3;
    v27 = *(*v3 + 40);
    sub_252E37EC4();
    sub_252A66B38();
    result = sub_252E37F14();
    v28 = v26 + 56;
    v72 = v26 + 56;
    v73 = v26;
    v29 = -1 << *(v26 + 32);
    a2 = result & ~v29;
    if ((*(v28 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v59 = v15;
      v71 = ~v29;
      v70 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
      v65 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue;
      v60 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType;
      v58[1] = type metadata accessor for HomeAutomationEntityState(0);
      a3 = v8 + 48;
      v63 = (v8 + 32);
      v64 = a1;
      v67 = v17;
      v68 = (v8 + 8);
      v69 = v8 + 48;
      do
      {
        v31 = *(*(v73 + 48) + 8 * a2);
        v32 = *(v74 + 48);
        sub_252956C1C(v31 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v23);
        sub_252956C1C(a1 + v70, &v23[v32]);
        v33 = *a3;
        if ((*a3)(v23, 1, v7) == 1)
        {
          v34 = v33(&v23[v32], 1, v7);

          if (v34 != 1)
          {
            goto LABEL_11;
          }

          sub_25293847C(v23, &qword_27F540298, &unk_252E3C270);
        }

        else
        {
          sub_252956C1C(v23, v17);
          if (v33(&v23[v32], 1, v7) == 1)
          {
            v30 = *v68;

            v30(v17, v7);
LABEL_11:
            sub_25293847C(v23, &qword_27F540758, &unk_252E4D160);

            goto LABEL_12;
          }

          v35 = v66;
          (*v63)(v66, &v23[v32], v7);
          sub_252DB4F00(&qword_27F540760, MEMORY[0x277D55C48]);
          v36 = v7;
          v37 = v17;

          v38 = sub_252E36EF4();
          v39 = *v68;
          v40 = v35;
          a1 = v64;
          (*v68)(v40, v36);
          v41 = v37;
          v7 = v36;
          v39(v41, v36);
          sub_25293847C(v23, &qword_27F540298, &unk_252E3C270);
          if ((v38 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        v42 = *(v31 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
        v43 = *(a1 + v65);
        if (v42)
        {
          a3 = v69;
          if (!v43 || (v44 = *(a1 + v65), , v45 = _s22HomeAutomationInternal0aB16EntityStateValueC2eeoiySbAC_ACtFZ_0(v42, v43), , (v45 & 1) == 0))
          {
LABEL_25:

            v17 = v67;
            goto LABEL_12;
          }
        }

        else
        {
          a3 = v69;
          if (v43)
          {
            goto LABEL_25;
          }
        }

        v46 = *(v74 + 48);
        a3 = v61;
        sub_252956C1C(v31 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType, v61);
        sub_252956C1C(a1 + v60, a3 + v46);
        if (v33(a3, 1, v7) == 1)
        {
          if (v33((a3 + v46), 1, v7) == 1)
          {
            goto LABEL_35;
          }

          goto LABEL_28;
        }

        v47 = a3;
        v48 = a3;
        v49 = v59;
        sub_252956C1C(v47, v59);
        if (v33((v48 + v46), 1, v7) == 1)
        {
          (*v68)(v49, v7);
          a3 = v48;
LABEL_28:
          sub_25293847C(a3, &qword_27F540758, &unk_252E4D160);
LABEL_29:

          v17 = v67;
          a3 = v69;
          goto LABEL_12;
        }

        v50 = v66;
        (*v63)(v66, (v48 + v46), v7);
        sub_252DB4F00(&qword_27F540760, MEMORY[0x277D55C48]);
        v51 = sub_252E36EF4();
        v52 = *v68;
        v53 = v50;
        a1 = v64;
        (*v68)(v53, v7);
        v52(v49, v7);
        sub_25293847C(v48, &qword_27F540298, &unk_252E3C270);

        v17 = v67;
        a3 = v69;
        if (v51)
        {
          goto LABEL_36;
        }

LABEL_12:
        a2 = (a2 + 1) & v71;
      }

      while (((*(v72 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_32:
  v54 = *v62;
  *(v54 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v54 + 48) + 8 * a2) = a1;
  v55 = *(v54 + 16);
  v56 = __OFADD__(v55, 1);
  v57 = v55 + 1;
  if (v56)
  {
    __break(1u);
LABEL_35:
    sub_25293847C(a3, &qword_27F540298, &unk_252E3C270);

LABEL_36:
    result = sub_252E37E14();
    __break(1u);
  }

  else
  {
    *(v54 + 16) = v57;
  }

  return result;
}