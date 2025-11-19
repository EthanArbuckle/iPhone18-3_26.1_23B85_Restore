uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_252A5B884()
{
  result = qword_27F545350;
  if (!qword_27F545350)
  {
    sub_25293F638(255, &unk_27F541E90, 0x277CD1860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545350);
  }

  return result;
}

uint64_t sub_252A5B8EC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_252A5B934(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

unint64_t sub_252A5B958(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545370, &qword_252E42C28);
    v3 = sub_252E37B54();
    v4 = a1 + 32;

    while (1)
    {
      sub_252A5E948(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_252A44A10(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_252A00AF4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_252A5BA68(unint64_t result)
{
  v1 = result;
  v19 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_252E378C4();
  v2 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x2530ADF00](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      if (qword_2814B0A70 != -1)
      {
        swift_once();
      }

      v5 = sub_252E36AD4();
      __swift_project_value_buffer(v5, qword_2814B0A78);
      sub_252E379F4();

      v7 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v6 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      MEMORY[0x2530AD570](v7, v6);

      sub_252CC3D90(0xD000000000000030, 0x8000000252E747A0, 0xD00000000000007ALL, 0x8000000252E73FB0);

      type metadata accessor for HomeEntity.Builder();
      swift_allocObject();
      v8.n128_f64[0] = HomeEntity.Builder.init()();
      v10 = (*(*v9 + 448))(v8);

      v11 = sub_252B302FC();

      v12 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
      v13 = v11;
      v14 = sub_252E36F04();
      v15 = [v12 initWithIdentifier:0 displayString:v14];

      v16 = v15;
      [v16 setEntity_];
      type metadata accessor for HomeUserTaskResponse();
      v17 = sub_252E37254();
      [v16 setTaskResponses_];

      type metadata accessor for MutableHomeEntityResponse();
      swift_allocObject();
      sub_252D6D668(v16);

      MEMORY[0x2530AD700]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
    }

    return v19;
  }

  return result;
}

unint64_t sub_252A5BDC4(unint64_t result)
{
  v1 = result;
  v18 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_252E378C4();
  v2 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      if (qword_2814B0A70 != -1)
      {
        swift_once();
      }

      v5 = sub_252E36AD4();
      __swift_project_value_buffer(v5, qword_2814B0A78);
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E743E0);
      v6 = sub_252CDBB90();
      MEMORY[0x2530AD570](v6);

      sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ALL, 0x8000000252E73FB0);

      type metadata accessor for HomeEntity.Builder();
      swift_allocObject();
      v7.n128_f64[0] = HomeEntity.Builder.init()();
      v9 = (*(*v8 + 448))(v7);

      v10 = sub_252CDB028();

      v11 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
      v12 = v10;
      v13 = sub_252E36F04();
      v14 = [v11 initWithIdentifier:0 displayString:v13];

      v15 = v14;
      [v15 setEntity_];
      type metadata accessor for HomeUserTaskResponse();
      v16 = sub_252E37254();
      [v15 setTaskResponses_];

      type metadata accessor for MutableHomeEntityResponse();
      swift_allocObject();
      sub_252D6D668(v15);

      MEMORY[0x2530AD700]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
    }

    return v18;
  }

  return result;
}

uint64_t sub_252A5C108(unint64_t a1, uint64_t a2)
{
  v48 = MEMORY[0x277D84F90];
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_2814B0A78);
  sub_252CC3D90(0xD000000000000041, 0x8000000252E74750, 0xD00000000000007ALL, 0x8000000252E73FB0);
  v5 = a1;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_252E378C4();
  v5 = a1;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_5:
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = 0;
    v44 = v5 & 0xC000000000000001;
    v43 = xmmword_252E3C3D0;
    v46 = v5;
    v47 = a2;
    v45 = result;
    do
    {
      if (v44)
      {
        v8 = MEMORY[0x2530ADF00](v7);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      sub_252E379F4();
      MEMORY[0x2530AD570](0x6552797469746E45, 0xEF2065736E6F7073);
      type metadata accessor for MutableHomeEntityResponse();
      sub_252E37AE4();
      sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ALL, 0x8000000252E73FB0);

      v9 = *(v8 + 16);
      swift_beginAccess();
      v10 = *(v8 + 24);
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      *(v11 + 24) = v10;
      v12 = (v11 + 24);
      v13 = type metadata accessor for HomeUserTaskResponse();
      v14 = objc_allocWithZone(v13);

      v15 = sub_252E36F04();
      v16 = [v14 initWithIdentifier:0 displayString:v15];

      v17 = v16;
      [v17 setTaskOutcome_];
      [v17 setUserTask_];

      type metadata accessor for MutableHomeUserTaskResponse();
      v18 = swift_allocObject();
      *(v18 + 16) = 0;
      v19 = [v17 userTask];
      if (v19)
      {
        v20 = v19;
        type metadata accessor for MutableHomeUserTask();
        swift_allocObject();
        v21 = sub_252D6CA80(v20);
        v22 = *(v18 + 16);
        *(v18 + 16) = v21;
      }

      v23 = [v17 taskOutcome];

      *(v18 + 24) = v23;
      v24 = swift_beginAccess();
      MEMORY[0x2530AD700](v24);
      if (*((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v41 = *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      swift_endAccess();
      v25 = *(v8 + 16);
      v26 = *(v8 + 24);
      v27 = swift_allocObject();
      *(v27 + 16) = v25;
      *(v27 + 24) = v26;
      v28 = (v27 + 24);
      v29 = objc_allocWithZone(v13);

      v30 = sub_252E36F04();
      v31 = [v29 initWithIdentifier:0 displayString:v30];

      v32 = v31;
      [v32 setTaskOutcome_];
      a2 = v47;
      [v32 setUserTask_];

      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      v34 = [v32 userTask];
      if (v34)
      {
        v35 = v34;
        type metadata accessor for MutableHomeUserTask();
        swift_allocObject();
        v36 = sub_252D6CA80(v35);
        v37 = *(v33 + 16);
        *(v33 + 16) = v36;
      }

      v38 = [v32 taskOutcome];

      *(v33 + 24) = v38;
      v39 = swift_beginAccess();
      MEMORY[0x2530AD700](v39);
      if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v42 = *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      ++v7;
      sub_252E372D4();
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      inited = swift_initStackObject();
      *(inited + 16) = v43;
      *(inited + 32) = v11;
      *(inited + 40) = v27;
      sub_25297BAE0(inited);

      v5 = v46;
    }

    while (v45 != v7);
    return v48;
  }

  return result;
}

unint64_t sub_252A5C6B0(unint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  [v8 setTaskType_];
  [v8 setAttribute_];
  [v8 setValue_];
  v101 = v8;

  v98 = a3;
  if (!a3)
  {
    goto LABEL_6;
  }

  v9 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  type metadata accessor for HMError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_252A5B8EC(&qword_27F541F00, type metadata accessor for HMError);
  sub_252E32C04();
  if (v117 != 64)
  {

LABEL_6:
    if (a1 >> 62)
    {
      goto LABEL_116;
    }

    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
LABEL_117:

      return a1;
    }

LABEL_8:
    v11 = 0;
    v112 = a1 & 0xC000000000000001;
    v104 = a1 + 32;
    v105 = a1 & 0xFFFFFFFFFFFFFF8;
    v108 = a1;
    v111 = v10;
    while (1)
    {
      if (v112)
      {
        v12 = MEMORY[0x2530ADF00](v11, a1);
        v13 = __OFADD__(v11++, 1);
        if (v13)
        {
          goto LABEL_112;
        }
      }

      else
      {
        if (v11 >= *(v105 + 16))
        {
          goto LABEL_114;
        }

        v12 = *(v104 + 8 * v11);

        v13 = __OFADD__(v11++, 1);
        if (v13)
        {
          goto LABEL_112;
        }
      }

      swift_beginAccess();
      v14 = *(v12 + 24);
      if (v14 >> 62)
      {
        if (v14 < 0)
        {
          v67 = *(v12 + 24);
        }

        v115 = v12;
        if (!sub_252E378C4())
        {
LABEL_80:
          v68 = *(v12 + 16);
          if (v68 && *(v68 + 32) == 5)
          {
            if (v98)
            {
              v69 = v98;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
              type metadata accessor for HMError(0);
              if (swift_dynamicCast())
              {
                if (qword_2814B0A70 != -1)
                {
                  swift_once();
                }

                v70 = sub_252E36AD4();
                __swift_project_value_buffer(v70, qword_2814B0A78);
                sub_252E379F4();
                MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E74730);
                sub_252E37AE4();
                sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ALL, 0x8000000252E73FB0);

                v71 = sub_252DE5E64(0);
              }

              else
              {
                v71 = 7;
              }
            }

            else
            {
              v71 = 1;
            }

            v72 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
            v73 = v101;
            v74 = sub_252E36F04();
            v75 = [v72 initWithIdentifier:0 displayString:v74];

            v76 = v75;
            [v76 setTaskOutcome_];
            [v76 setUserTask_];

            type metadata accessor for MutableHomeUserTaskResponse();
            v77 = swift_allocObject();
            *(v77 + 16) = 0;
            v78 = [v76 userTask];
            if (v78)
            {
              v79 = v78;
              type metadata accessor for MutableHomeUserTask();
              swift_allocObject();
              v80 = sub_252D6CA80(v79);
              v81 = *(v77 + 16);
              *(v77 + 16) = v80;
            }

            v82 = [v76 taskOutcome];

            *(v77 + 24) = v82;
            v83 = swift_beginAccess();
            MEMORY[0x2530AD700](v83);
            if (*((*(v115 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v115 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v90 = *((*(v115 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_252E372A4();
            }

            sub_252E372D4();
            swift_endAccess();
            if (qword_2814B0A70 != -1)
            {
              swift_once();
            }

            v84 = sub_252E36AD4();
            __swift_project_value_buffer(v84, qword_2814B0A78);
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD00000000000004ALL, 0x8000000252E746E0);
            v85 = sub_252D6C15C();
            v86 = [v85 description];
            v87 = sub_252E36F34();
            v89 = v88;

            MEMORY[0x2530AD570](v87, v89);

            sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ALL, 0x8000000252E73FB0);

            goto LABEL_10;
          }
        }
      }

      else
      {
        v115 = v12;
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_80;
        }
      }

      type metadata accessor for HomeStore();
      v15 = static HomeStore.shared.getter();
      v16 = sub_2529D9D50();
      v17 = sub_2529D70E4(v16);

      v113 = v11;
      if (v17 >> 62)
      {
        v18 = sub_252E378C4();
        v19 = v115;
        if (!v18)
        {
LABEL_97:

          v11 = v113;
          goto LABEL_105;
        }
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v19 = v115;
        if (!v18)
        {
          goto LABEL_97;
        }
      }

      v20 = 0;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x2530ADF00](v20, v17);
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_108;
          }
        }

        else
        {
          if (v20 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_109;
          }

          v21 = *(v17 + 8 * v20 + 32);

          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            v10 = sub_252E378C4();
            if (!v10)
            {
              goto LABEL_117;
            }

            goto LABEL_8;
          }
        }

        v23 = sub_252E32E24();
        v25 = *(v19 + 16);
        if (!v25 || (v26 = *(v25 + 48)) == 0)
        {

          goto LABEL_23;
        }

        if (v23 == *(v25 + 40) && v26 == v24)
        {
          break;
        }

        v28 = sub_252E37DB4();

        if (v28)
        {
          v19 = v115;
          goto LABEL_40;
        }

        v19 = v115;
LABEL_23:
        ++v20;
        if (v22 == v18)
        {
          goto LABEL_97;
        }
      }

LABEL_40:

      v11 = v113;
      if (*(a2 + 16))
      {
        v29 = sub_252A454C0(v21);
        if (v30)
        {
          v31 = *(*(a2 + 56) + 8 * v29);
          v32 = *(v19 + 24);
          if (v32 >> 62)
          {
            v91 = v31;
            if (v32 < 0)
            {
              v92 = *(v19 + 24);
            }

            v93 = sub_252E378C4();
            v94 = v91;
            v33 = v93;
            v31 = v94;
            if (!(v94 >> 62))
            {
              goto LABEL_44;
            }
          }

          else
          {
            v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!(v31 >> 62))
            {
LABEL_44:
              v34 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v33 < v34)
              {
                if (!v34)
                {
LABEL_103:

                  goto LABEL_10;
                }

LABEL_46:
                v107 = v31 & 0xC000000000000001;
                v99 = v31 + 32;
                v100 = v31 & 0xFFFFFFFFFFFFFF8;
                v103 = v31;

                v35 = 0;
                v106 = v34;
                while (1)
                {
                  if (v107)
                  {
                    v36 = MEMORY[0x2530ADF00](v35, v103);
                  }

                  else
                  {
                    if (v35 >= *(v100 + 16))
                    {
                      goto LABEL_115;
                    }

                    v36 = *(v99 + 8 * v35);
                  }

                  v37 = v36;
                  v13 = __OFADD__(v35, 1);
                  v38 = v35 + 1;
                  if (v13)
                  {
                    goto LABEL_113;
                  }

                  v39 = [v36 taskType];
                  v114 = [v37 attribute];
                  v40 = *(v19 + 24);
                  v109 = v37;
                  v110 = v38;
                  if (v40 >> 62)
                  {
                    v41 = sub_252E378C4();
                  }

                  else
                  {
                    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  if (v41)
                  {
                    v42 = 0;
                    a1 = v40 & 0xFFFFFFFFFFFFFF8;
                    do
                    {
                      if ((v40 & 0xC000000000000001) != 0)
                      {
                        v43 = MEMORY[0x2530ADF00](v42, v40);
                        v44 = v42 + 1;
                        if (__OFADD__(v42, 1))
                        {
                          goto LABEL_110;
                        }
                      }

                      else
                      {
                        if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_111;
                        }

                        v43 = *(v40 + 8 * v42 + 32);

                        v44 = v42 + 1;
                        if (__OFADD__(v42, 1))
                        {
                          goto LABEL_110;
                        }
                      }

                      v45 = *(v43 + 16);
                      if (v45 && *(v45 + 16) == v39)
                      {
                        v46 = *(v43 + 16);

                        v47 = *(v45 + 24);

                        if (v47 == v114)
                        {

                          a1 = v108;
                          goto LABEL_47;
                        }
                      }

                      else
                      {
                      }

                      ++v42;
                    }

                    while (v44 != v41);
                  }

                  v48 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
                  v49 = v109;
                  v50 = sub_252E36F04();
                  v51 = [v48 initWithIdentifier:0 displayString:v50];

                  v52 = v51;
                  [v52 setTaskOutcome_];
                  [v52 setUserTask_];

                  type metadata accessor for MutableHomeUserTaskResponse();
                  v53 = swift_allocObject();
                  *(v53 + 16) = 0;
                  v54 = [v52 userTask];
                  if (v54)
                  {
                    v55 = v54;
                    type metadata accessor for MutableHomeUserTask();
                    swift_allocObject();
                    v56 = sub_252D6CA80(v55);
                    v57 = *(v53 + 16);
                    *(v53 + 16) = v56;
                  }

                  v58 = [v52 taskOutcome];

                  *(v53 + 24) = v58;
                  v59 = swift_beginAccess();
                  MEMORY[0x2530AD700](v59);
                  a1 = v108;
                  if (*((*(v115 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v115 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v66 = *((*(v115 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
                    sub_252E372A4();
                  }

                  sub_252E372D4();
                  swift_endAccess();
                  if (qword_2814B0A70 != -1)
                  {
                    swift_once();
                  }

                  v60 = sub_252E36AD4();
                  __swift_project_value_buffer(v60, qword_2814B0A78);
                  sub_252E379F4();
                  MEMORY[0x2530AD570](0xD000000000000045, 0x8000000252E74690);
                  v61 = sub_252D6C15C();
                  v62 = [v61 description];
                  v63 = sub_252E36F34();
                  v65 = v64;

                  MEMORY[0x2530AD570](v63, v65);

                  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ALL, 0x8000000252E73FB0);

LABEL_47:
                  v35 = v110;
                  v11 = v113;
                  v19 = v115;
                  if (v110 == v106)
                  {

                    goto LABEL_10;
                  }
                }
              }

              goto LABEL_104;
            }
          }

          v95 = v31;
          if (v33 < sub_252E378C4())
          {
            v34 = sub_252E378C4();
            v31 = v95;
            if (!v34)
            {
              goto LABEL_103;
            }

            goto LABEL_46;
          }
        }
      }

LABEL_104:

LABEL_105:
      if (qword_2814B0A70 != -1)
      {
        swift_once();
      }

      v96 = sub_252E36AD4();
      __swift_project_value_buffer(v96, qword_2814B0A78);
      sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E74660, 0xD00000000000007ALL, 0x8000000252E73FB0);

LABEL_10:
      if (v11 == v111)
      {
        goto LABEL_117;
      }
    }
  }

  a1 = sub_252A5C108(a1, v8);

  return a1;
}

void sub_252A5D4A0(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v103 = a5;
  v110 = sub_252E32E84();
  v9 = *(v110 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v110);
  v109 = v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v13 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v12[v13] = 3;
  [v12 setUserActivity_];
  type metadata accessor for MutableControlHomeIntentResponse();
  swift_initStackObject();
  v101 = sub_252D6D96C(v12);

  if ((a3 & 0xC000000000000001) != 0)
  {
    v14 = sub_252E378C4();
  }

  else
  {
    v14 = *(a3 + 16);
  }

  v102 = a2;
  v111 = a1;
  if (v14)
  {
    v15 = sub_2529A37DC(a3);
    v16 = sub_252A5BA68(v15);
  }

  else
  {
    v17 = *(a4 + 16);
    if (v17)
    {
      v18 = sub_252E11384(*(a4 + 16), 0);
      v19 = sub_252E08BE0(&v115, (v18 + 32), v17, a4);

      sub_25291AE30();
      if (v19 != v17)
      {
LABEL_162:
        __break(1u);
        goto LABEL_163;
      }

      a1 = v111;
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    v16 = sub_252A5BDC4(v18);
  }

  v114 = v16;

  v100 = a4;
  if (a1 >> 62)
  {
LABEL_120:
    v21 = sub_252E378C4();
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v112 = v114 >> 62;
  if (!v21)
  {
LABEL_56:
    v56 = v102;
    if (v102)
    {
      swift_getErrorValue();
      v57 = v117;
      v58 = v56;
      v59 = sub_252DE5D70(v57);
      if (v59 == 2 || (v59 & 1) == 0)
      {
        if (qword_2814B0A70 != -1)
        {
          swift_once();
        }

        v67 = sub_252E36AD4();
        __swift_project_value_buffer(v67, qword_2814B0A78);
        v115 = 0;
        v116 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E74620);
        v118 = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
        sub_252E37AE4();
        sub_252CC3D90(v115, v116, 0xD00000000000007ALL, 0x8000000252E73FB0);

        v68 = v56;
        sub_252A595F0(v56, 1u);

        v69 = 5;
        v20 = v56;
        goto LABEL_159;
      }
    }

    if (v112)
    {
      v30 = sub_252E378C4();
      if (v30)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v30 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
LABEL_62:
        v60 = 0;
        v38 = v114 & 0xC000000000000001;
        v39 = v114 & 0xFFFFFFFFFFFFFF8;
        v26 = v114 + 32;
        v113 = (v114 & 0xC000000000000001);
        v112 = v114 & 0xFFFFFFFFFFFFFF8;
        while (2)
        {
          if (v38)
          {
            v61 = MEMORY[0x2530ADF00](v60, v114);
            v29 = __OFADD__(v60++, 1);
            if (!v29)
            {
LABEL_66:
              swift_beginAccess();
              v62 = *(v61 + 24);
              if (v62 >> 62)
              {
                if (v62 < 0)
                {
                  v66 = *(v61 + 24);
                }

                v9 = sub_252E378C4();
              }

              else
              {
                v9 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              a1 = 0;
              while (v9 != a1)
              {
                if ((v62 & 0xC000000000000001) != 0)
                {
                  v64 = MEMORY[0x2530ADF00](a1, v62);
                  if (__OFADD__(a1, 1))
                  {
                    goto LABEL_117;
                  }
                }

                else
                {
                  if (a1 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_118;
                  }

                  v63 = *(v62 + 8 * a1 + 32);

                  if (__OFADD__(a1, 1))
                  {
LABEL_117:
                    __break(1u);
LABEL_118:
                    __break(1u);
                    goto LABEL_119;
                  }
                }

                v65 = *(v64 + 24);

                ++a1;
                if (v65 == 21)
                {

                  v69 = 105;
                  goto LABEL_158;
                }
              }

              v38 = v113;
              v39 = v112;
              if (v60 != v30)
              {
                continue;
              }

LABEL_91:
              v70 = 0;
              while (2)
              {
                if (v38)
                {
                  v71 = MEMORY[0x2530ADF00](v70, v114);
                  v29 = __OFADD__(v70++, 1);
                  if (!v29)
                  {
LABEL_95:
                    swift_beginAccess();
                    v72 = *(v71 + 24);
                    if (v72 >> 62)
                    {
                      if (v72 < 0)
                      {
                        v78 = *(v71 + 24);
                      }

                      v73 = sub_252E378C4();
                    }

                    else
                    {
                      v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    v74 = 0;
                    while (v73 != v74)
                    {
                      if ((v72 & 0xC000000000000001) != 0)
                      {
                        v76 = MEMORY[0x2530ADF00](v74, v72);
                        if (__OFADD__(v74, 1))
                        {
                          goto LABEL_160;
                        }
                      }

                      else
                      {
                        if (v74 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_161;
                        }

                        v75 = *(v72 + 8 * v74 + 32);

                        if (__OFADD__(v74, 1))
                        {
LABEL_160:
                          __break(1u);
LABEL_161:
                          __break(1u);
                          goto LABEL_162;
                        }
                      }

                      v77 = *(v76 + 24);

                      ++v74;
                      if (v77 == 22)
                      {
                        goto LABEL_116;
                      }
                    }

                    v38 = v113;
                    v39 = v112;
                    if (v70 != v30)
                    {
                      continue;
                    }

LABEL_123:
                    v79 = 0;
                    v69 = 110;
                    while (2)
                    {
                      if (v38)
                      {
                        v111 = MEMORY[0x2530ADF00](v79, v114, v20);
                        v29 = __OFADD__(v79++, 1);
                        if (!v29)
                        {
LABEL_127:
                          v80 = v111;
                          swift_beginAccess();
                          v81 = *(v80 + 24);
                          if (v81 >> 62)
                          {
                            v82 = sub_252E378C4();
                          }

                          else
                          {
                            v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
                          }

                          v83 = 0;
                          do
                          {
                            if (v82 == v83)
                            {

                              v87 = 0;
                              v69 = 5;
                              v88 = v113;
                              v89 = v112;
                              while (1)
                              {
                                if (v88)
                                {
                                  MEMORY[0x2530ADF00](v87, v114);
                                }

                                else
                                {
                                  if (v87 >= *(v89 + 16))
                                  {
                                    goto LABEL_168;
                                  }

                                  v90 = *(v114 + 8 * v87 + 32);
                                }

                                v91 = (v87 + 1);
                                if (__OFADD__(v87, 1))
                                {
                                  goto LABEL_167;
                                }

                                v92 = sub_252D6C15C();
                                v93 = sub_252DA3CC8();

                                if (v93)
                                {
                                }

                                else
                                {
                                  v94 = sub_252D6C15C();
                                  v95 = sub_252DA3CEC();

                                  if ((v95 & 1) == 0)
                                  {
                                    goto LABEL_157;
                                  }
                                }

                                ++v87;
                                v20 = v102;
                                if (v91 == v30)
                                {
                                  goto LABEL_159;
                                }
                              }
                            }

                            if ((v81 & 0xC000000000000001) != 0)
                            {
                              v85 = MEMORY[0x2530ADF00](v83, v81);
                              if (__OFADD__(v83, 1))
                              {
                                goto LABEL_165;
                              }
                            }

                            else
                            {
                              if (v83 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
                              {
                                goto LABEL_166;
                              }

                              v84 = *(v81 + 8 * v83 + 32);

                              if (__OFADD__(v83, 1))
                              {
                                goto LABEL_165;
                              }
                            }

                            v86 = *(v85 + 24);

                            ++v83;
                          }

                          while (v86 != 12);

                          v20 = v102;
                          v38 = v113;
                          v39 = v112;
                          if (v79 != v30)
                          {
                            continue;
                          }

                          goto LABEL_159;
                        }
                      }

                      else
                      {
                        if (v79 >= *(v39 + 16))
                        {
LABEL_170:
                          __break(1u);
                          return;
                        }

                        v111 = *(v26 + 8 * v79);

                        v29 = __OFADD__(v79++, 1);
                        if (!v29)
                        {
                          goto LABEL_127;
                        }
                      }

                      break;
                    }

LABEL_169:
                    __break(1u);
                    goto LABEL_170;
                  }
                }

                else
                {
                  if (v70 >= *(v39 + 16))
                  {
LABEL_164:
                    __break(1u);
LABEL_165:
                    __break(1u);
LABEL_166:
                    __break(1u);
LABEL_167:
                    __break(1u);
LABEL_168:
                    __break(1u);
                    goto LABEL_169;
                  }

                  v71 = *(v26 + 8 * v70);

                  v29 = __OFADD__(v70++, 1);
                  if (!v29)
                  {
                    goto LABEL_95;
                  }
                }

                break;
              }

LABEL_163:
              __break(1u);
              goto LABEL_164;
            }
          }

          else
          {
            if (v60 >= *(v39 + 16))
            {
LABEL_122:
              __break(1u);
              goto LABEL_123;
            }

            v61 = *(v26 + 8 * v60);

            v29 = __OFADD__(v60++, 1);
            if (!v29)
            {
              goto LABEL_66;
            }
          }

          break;
        }

        __break(1u);
        goto LABEL_122;
      }
    }

LABEL_157:
    v69 = 4;
    goto LABEL_158;
  }

  v22 = 0;
  v23 = a1 & 0xC000000000000001;
  v105 = a1 & 0xFFFFFFFFFFFFFF8;
  v104 = a1 + 32;
  v108 = (v9 + 8);
  v24 = v114 & 0xFFFFFFFFFFFFFF8;
  if (v114 < 0)
  {
    v25 = v114;
  }

  else
  {
    v25 = v114 & 0xFFFFFFFFFFFFFF8;
  }

  v99[1] = v25;
  v26 = v114 & 0xC000000000000001;
  v106 = a1 & 0xC000000000000001;
  v107 = v21;
  while (1)
  {
    if (v23)
    {
      v27 = MEMORY[0x2530ADF00](v22, a1);
    }

    else
    {
      if (v22 >= *(v105 + 16))
      {
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      v27 = *(v104 + 8 * v22);
    }

    v28 = v27;
    v29 = __OFADD__(v22++, 1);
    if (v29)
    {
      break;
    }

    v30 = [v27 request];
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      v113 = v28;
      v32 = [v31 characteristic];
      v33 = [v32 service];

      if (v33)
      {
        v34 = [v33 uniqueIdentifier];

        v9 = v109;
        sub_252E32E64();

        v35 = sub_252E32E24();
        v37 = v36;
        (*v108)(v9, v110);
        if (v112)
        {
          v40 = sub_252E378C4();
          if (v40)
          {
LABEL_29:
            v41 = 0;
            while (1)
            {
              if (v26)
              {
                v42 = MEMORY[0x2530ADF00](v41, v114);
                v9 = v41 + 1;
                if (__OFADD__(v41, 1))
                {
                  goto LABEL_89;
                }
              }

              else
              {
                if (v41 >= *(v24 + 16))
                {
                  goto LABEL_90;
                }

                v42 = *(v114 + 8 * v41 + 32);

                v9 = v41 + 1;
                if (__OFADD__(v41, 1))
                {
LABEL_89:
                  __break(1u);
LABEL_90:
                  __break(1u);
                  goto LABEL_91;
                }
              }

              v43 = *(v42 + 16);
              if (v43)
              {
                v44 = *(v43 + 48);
                if (v44)
                {
                  v45 = *(v43 + 40) == v35 && v44 == v37;
                  if (v45 || (sub_252E37DB4() & 1) != 0)
                  {
                    break;
                  }
                }
              }

              ++v41;
              if (v9 == v40)
              {
                goto LABEL_55;
              }
            }

            v46 = v113;
            v47 = sub_252DE56C8(v103);
            v23 = v106;
            if (v47)
            {
              v48 = v47;
              type metadata accessor for MutableHomeUserTaskResponse();
              v49 = swift_allocObject();
              *(v49 + 16) = 0;
              v50 = [v48 userTask];
              if (v50)
              {
                v51 = v50;
                type metadata accessor for MutableHomeUserTask();
                swift_allocObject();
                v52 = sub_252D6CA80(v51);
                v53 = *(v49 + 16);
                *(v49 + 16) = v52;
              }

              v54 = [v48 taskOutcome];

              *(v49 + 24) = v54;
              swift_beginAccess();

              MEMORY[0x2530AD700](v55);
              if (*((*(v42 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v42 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v9 = *((*(v42 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_252E372A4();
              }

              sub_252E372D4();
              swift_endAccess();
            }

            else
            {
            }

            a1 = v111;
            v21 = v107;
            goto LABEL_19;
          }
        }

        else
        {
          v40 = *(v24 + 16);
          if (v40)
          {
            goto LABEL_29;
          }
        }

LABEL_55:

        a1 = v111;
        v21 = v107;
        v23 = v106;
      }

      else
      {
      }
    }

    else
    {
    }

LABEL_19:
    if (v22 == v21)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_116:

  v69 = 111;
LABEL_158:
  v20 = v102;
LABEL_159:
  v96 = v101;
  *(v101 + 16) = v69;
  v97 = sub_252A5C6B0(v114, v100, v20);

  v98 = *(v96 + 24);
  *(v96 + 24) = v97;

  sub_252D6BB10();
}

uint64_t sub_252A5E268(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v8 = [a1 homeAutomationRequests];
    if (v8)
    {
      v9 = v8;
      sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
      v10 = sub_252E37264();
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v12 = v10;
    sub_252C47D2C(&v12);

    sub_252DB559C();
    sub_252C77798(a3, a4, a5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
    sub_252C47D2C(&v12);
  }

  sub_252DB7C84();
  sub_252DB649C(0, 0, 1);
}

char *sub_252A5E390(unint64_t a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_252E378C4())
  {
    v8 = sub_2529FF6A8(MEMORY[0x277D84F90]);
  }

  else
  {
    v8 = MEMORY[0x277D84FA0];
  }

  type metadata accessor for HomeStore();
  v9 = static HomeStore.shared.getter();
  v10 = HomeStore.scenes(matching:)(a1);
  v12 = v11;

  if (v12)
  {
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_2814B0A78);
    sub_252CC4050(0xD00000000000001ALL, 0x8000000252E74350, 0xD00000000000007ALL, 0x8000000252E73FB0, 0x293A5F28676F6CLL, 0xE700000000000000, 548);
    sub_2529515FC(8, 10, 0xD000000000000017, 0x8000000252E74370);
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](32, 0xE100000000000000);
    v42 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E744E0);
    v13 = type metadata accessor for HomeFilter();
    v14 = MEMORY[0x2530AD730](a1, v13);
    MEMORY[0x2530AD570](v14);

    MEMORY[0x2530AD570](46, 0xE100000000000000);
    sub_252CC4050(v43, v44, 0xD00000000000007ALL, 0x8000000252E73FB0, 0xD000000000000014, 0x8000000252E74500, 535);

    sub_252929F10(v10, 1);
    return v8;
  }

  v8 = sub_252C76550(v15);
  sub_252929F10(v10, 0);
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v2, qword_2814B0A78);
  (*(v3 + 16))(v6, v16, v2);
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_252E379F4();

  v43 = 0xD000000000000017;
  v44 = 0x8000000252E74520;
  if (!(v10 >> 62))
  {
    v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_11;
    }

LABEL_26:
    sub_252929F10(v10, 0);
    v19 = MEMORY[0x277D84F90];
LABEL_27:
    v34 = MEMORY[0x2530AD730](v19, MEMORY[0x277D837D0]);
    v36 = v35;

    MEMORY[0x2530AD570](v34, v36);

    MEMORY[0x2530AD570](46, 0xE100000000000000);
    sub_252CC3D90(v43, v44, 0xD00000000000007ALL, 0x8000000252E73FB0);

    (*(v3 + 8))(v6, v2);
    return v8;
  }

  v17 = sub_252E378C4();
  if (!v17)
  {
    goto LABEL_26;
  }

LABEL_11:
  v42 = v7;
  result = sub_2529AA3A0(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v38 = v6;
    v39 = v3;
    v40 = v2;
    v41 = v8;
    v19 = v42;
    if ((v10 & 0xC000000000000001) != 0)
    {
      v20 = 0;
      do
      {
        v21 = MEMORY[0x2530ADF00](v20, v10);
        v23 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v22 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        swift_unknownObjectRelease();
        v42 = v19;
        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_2529AA3A0((v24 > 1), v25 + 1, 1);
          v19 = v42;
        }

        ++v20;
        *(v19 + 16) = v25 + 1;
        v26 = v19 + 16 * v25;
        *(v26 + 32) = v23;
        *(v26 + 40) = v22;
      }

      while (v17 != v20);
    }

    else
    {
      v27 = (v10 + 32);
      do
      {
        v28 = (*v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v30 = *v28;
        v29 = v28[1];
        v42 = v19;
        v32 = *(v19 + 16);
        v31 = *(v19 + 24);

        if (v32 >= v31 >> 1)
        {
          sub_2529AA3A0((v31 > 1), v32 + 1, 1);
          v19 = v42;
        }

        *(v19 + 16) = v32 + 1;
        v33 = v19 + 16 * v32;
        *(v33 + 32) = v30;
        *(v33 + 40) = v29;
        ++v27;
        --v17;
      }

      while (v17);
    }

    sub_252929F10(v10, 0);
    v2 = v40;
    v8 = v41;
    v6 = v38;
    v3 = v39;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_252A5E948(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F10, &unk_252E42870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A5E9E4@<X0>(void *__src@<X0>, char a2@<W1>, void *a3@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (a2)
  {
    memcpy(a3, __src, 0x1F8uLL);
    return sub_2529353AC(__dst, v10);
  }

  else
  {
    v7 = __dst[47];
    memcpy(a3, __src, 0x1F8uLL);
    sub_2529353AC(__dst, v10);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2529F846C(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    if (v9 >= v8 >> 1)
    {
      result = sub_2529F846C((v8 > 1), v9 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v9 + 1;
    *(v7 + v9 + 32) = 5;
    a3[47] = v7;
  }

  return result;
}

void sub_252A5EAE8(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_16:
    v2 = sub_252E378C4();
    if (!v2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_17;
    }
  }

  v3 = 0;
  while (v2 != v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x2530ADF00](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if ([v4 deviceType] == 36)
    {

      goto LABEL_22;
    }

    v6 = [v5 outerDeviceType];

    ++v3;
    if (v6 == 36)
    {
      goto LABEL_18;
    }
  }

LABEL_17:
  if (sub_252BAFA20(0x29, a1))
  {
LABEL_18:
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v7 = sub_252BAFA20(0x18, a1);
    if (!v2 || (v7 & 1) == 0)
    {
      return;
    }
  }

LABEL_22:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x2530ADF00](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v9 = *(a1 + 8 * i + 32);
    }

    v10 = v9;
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v12 = [v9 homeEntityName];
    if (v12)
    {
      v14 = v12;
      v13 = v10;
      v10 = v14;
LABEL_33:

      return;
    }

    v13 = [v10 groupName];
    if (v13)
    {
      goto LABEL_33;
    }

    if (v11 == v2)
    {
      return;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

BOOL sub_252A5ECD8(__int128 *a1)
{
  v61 = a1[6];
  v62 = a1[7];
  v1 = *(a1 + 17);
  v63 = *(a1 + 16);
  v57 = a1[2];
  v58 = a1[3];
  v59 = a1[4];
  v60 = a1[5];
  v55 = *a1;
  v56 = a1[1];
  v2 = *(a1 + 18);
  v3 = *(a1 + 19);
  v4 = *(a1 + 20);
  v5 = *(a1 + 21);
  memcpy(v64, a1 + 11, sizeof(v64));
  v6 = sub_252BAC7E4();
  if (sub_252B2ADC8(5, v6))
  {
    if (*(v3 + 16) || *(v5 + 16) || *(v4 + 16) || *(v1 + 16) || *(v2 + 16))
    {

      if (qword_27F53F520 != -1)
      {
LABEL_39:
        swift_once();
      }

      v7 = sub_252E36AD4();
      __swift_project_value_buffer(v7, qword_27F544E08);
      v8 = sub_252E36AC4();
      v9 = sub_252E374C4();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_74;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Found scene candidate with service, group, accessory name or type";
      goto LABEL_73;
    }

    type metadata accessor for HomeStore();
    v25 = static HomeStore.shared.getter();
    v26 = HomeStore.scenes(matching:)(v6);
    v28 = v27;

    if (v28)
    {
      sub_252929F10(v26, 1);
LABEL_33:
      if (qword_27F53F520 != -1)
      {
        swift_once();
      }

      v30 = sub_252E36AD4();
      __swift_project_value_buffer(v30, qword_27F544E08);
      v8 = sub_252E36AC4();
      v9 = sub_252E374C4();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_74;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Couldn't get targetedScenes. Invalidating candidate";
LABEL_73:
      _os_log_impl(&dword_252917000, v8, v9, v11, v10, 2u);
      MEMORY[0x2530AED00](v10, -1, -1);
LABEL_74:

      return 0;
    }

    if (v26 >> 62)
    {
      v29 = sub_252E378C4();
    }

    else
    {
      v29 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_252929F10(v26, 0);
    if (!v29)
    {
      goto LABEL_33;
    }

    return 1;
  }

  KeyPath = swift_getKeyPath();
  v13 = sub_2529304DC(KeyPath, v6);

  if ((v13 & 1) == 0)
  {
    goto LABEL_41;
  }

  v14 = swift_getKeyPath();
  v15 = sub_2529304DC(v14, v6);

  if ((v15 & 1) == 0)
  {
    v16 = swift_getKeyPath();
    v17 = sub_252BAF91C(v16, v6);

    if (!v17)
    {
      if (v6 >> 62)
      {
        v18 = sub_252E378C4();
        if (v18)
        {
LABEL_16:
          v19 = 0;
          while (v18 != v19)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v20 = MEMORY[0x2530ADF00](v19, v6);
            }

            else
            {
              if (v19 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_38;
              }

              v20 = *(v6 + 8 * v19 + 32);
            }

            v21 = v20;
            if (__OFADD__(v19, 1))
            {
              __break(1u);
LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            type metadata accessor for HomeStore();
            v22 = static HomeStore.shared.getter();
            v23 = sub_2529F1D14(v21);

            if (v23 >> 62)
            {
              v24 = sub_252E378C4();
            }

            else
            {
              v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            ++v19;
            if (v24)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_13;
        }
      }

      else
      {
        v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_16;
        }
      }

LABEL_41:
      v31 = swift_getKeyPath();
      v32 = sub_2529304DC(v31, v6);

      if ((v32 & 1) != 0 || (v33 = swift_getKeyPath(), v34 = sub_252BAF91C(v33, v6), , v34))
      {
        type metadata accessor for HomeStore();
        v35 = static HomeStore.shared.getter();
        v36 = HomeStore.accessories(matching:supporting:)(v6, 0);
        v38 = v37;

        if ((v38 & 1) == 0)
        {
          v39 = v36 >> 62;
          if (v36 >> 62)
          {
            if (sub_252E378C4())
            {
LABEL_46:
              v40 = *(v5 + 16);
              if (v40)
              {
                goto LABEL_47;
              }

              goto LABEL_56;
            }
          }

          else if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }
        }

        sub_252929F10(v36, v38 & 1);
        if (qword_27F53F520 != -1)
        {
          swift_once();
        }

        v53 = sub_252E36AD4();
        __swift_project_value_buffer(v53, qword_27F544E08);
        v8 = sub_252E36AC4();
        v9 = sub_252E374C4();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_74;
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = "Couldn't get targetedAccessories. Invalidating candidate";
        goto LABEL_73;
      }

      sub_252A5EAE8(v6);
      v43 = v42;
      type metadata accessor for HomeStore();
      v44 = static HomeStore.shared.getter();
      if (v43)
      {
        v45 = HomeStore.accessories(matching:supporting:)(v6, 0);
        v47 = v46;

        if (v47)
        {
          sub_252929F10(v45, 1);
        }

        else
        {
          if (v45 >> 62)
          {
            v50 = sub_252E378C4();
          }

          else
          {
            v50 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          sub_252929F10(v45, 0);
          if (v50)
          {
            return 1;
          }
        }

        if (qword_27F53F520 != -1)
        {
          swift_once();
        }

        v52 = sub_252E36AD4();
        __swift_project_value_buffer(v52, qword_27F544E08);
        v8 = sub_252E36AC4();
        v9 = sub_252E374C4();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_74;
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = "Couldn't get targetedAccessories for Television or AppleTV. Invalidating candidate";
        goto LABEL_73;
      }

      v36 = HomeStore.services(matching:supporting:)(v6, 0);
      v49 = v48;

      if ((v49 & 1) == 0)
      {
        v39 = v36 >> 62;
        if (v36 >> 62)
        {
          if (sub_252E378C4())
          {
LABEL_55:
            v40 = *(v3 + 16);
            if (v40)
            {
LABEL_47:
              if (v39)
              {
                v41 = sub_252E378C4();
              }

              else
              {
                v41 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              sub_252929F10(v36, 0);
              return v41 >= v40;
            }

LABEL_56:
            sub_252929F10(v36, 0);
            return 1;
          }
        }

        else if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }
      }

      sub_252929F10(v36, v49 & 1);
      if (qword_27F53F520 != -1)
      {
        swift_once();
      }

      v54 = sub_252E36AD4();
      __swift_project_value_buffer(v54, qword_27F544E08);
      v8 = sub_252E36AC4();
      v9 = sub_252E374C4();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_74;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Couldn't get targetedServices. Invalidating candidate";
      goto LABEL_73;
    }
  }

LABEL_13:

  return 0;
}

uint64_t sub_252A5F4E8(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_252E378C4();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_252A5F58C(unint64_t a1, uint64_t a2, void *a3)
{
  v63 = a3;
  v65 = sub_252E36AD4();
  v5 = *(v65 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v65);
  v64 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_252E32E84();
  v8 = *(v73 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v73);
  v72 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v12 = 0;
    v13 = a1 & 0xC000000000000001;
    v66 = (a1 + 32);
    v67 = a1 & 0xFFFFFFFFFFFFFF8;
    v71 = (v8 + 1);
    if (a2 < 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v55[1] = v14;
    v60 = (v5 + 2);
    v59 = 0x8000000252E74A70;
    v58 = "Didn't find services to warmup";
    v57 = (v5 + 1);
    v56 = 0x8000000252E74A90;
    v15 = &off_279711000;
    v69 = i;
    v70 = a1;
    v68 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v13)
      {
        v16 = MEMORY[0x2530ADF00](v12, a1);
      }

      else
      {
        if (v12 >= *(v67 + 16))
        {
          goto LABEL_53;
        }

        v16 = v66[v12];
      }

      v8 = v16;
      if (__OFADD__(v12++, 1))
      {
        break;
      }

      v5 = [v16 v15[429]];
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v74 = v5;
        v75 = v8;
        v5 = [v18 characteristic];
        v8 = [v5 service];

        if (v8)
        {
          v19 = [v8 uniqueIdentifier];

          v20 = v72;
          sub_252E32E64();

          v21 = sub_252E32E24();
          v5 = v22;
          (*v71)(v20, v73);
          if (a2 >> 62)
          {
            v8 = sub_252E378C4();
            if (v8)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8)
            {
LABEL_18:
              v23 = 0;
              while (1)
              {
                if ((a2 & 0xC000000000000001) != 0)
                {
                  v24 = MEMORY[0x2530ADF00](v23, a2);
                  a1 = v23 + 1;
                  if (__OFADD__(v23, 1))
                  {
                    goto LABEL_50;
                  }
                }

                else
                {
                  if (v23 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_51;
                  }

                  v24 = *(a2 + 8 * v23 + 32);

                  a1 = v23 + 1;
                  if (__OFADD__(v23, 1))
                  {
LABEL_50:
                    __break(1u);
LABEL_51:
                    __break(1u);
                    goto LABEL_52;
                  }
                }

                v25 = *(v24 + 16);
                if (v25)
                {
                  v26 = *(v25 + 48);
                  if (v26)
                  {
                    v27 = *(v25 + 40) == v21 && v26 == v5;
                    if (v27 || (sub_252E37DB4() & 1) != 0)
                    {
                      break;
                    }
                  }
                }

                ++v23;
                if (a1 == v8)
                {
                  goto LABEL_48;
                }
              }

              v8 = v75;
              v28 = sub_252DE56C8(v63);
              if (v28)
              {
                v29 = v28;
                type metadata accessor for MutableHomeUserTaskResponse();
                v30 = swift_allocObject();
                *(v30 + 16) = 0;
                v31 = [v29 userTask];
                if (v31)
                {
                  v32 = v31;
                  type metadata accessor for MutableHomeUserTask();
                  swift_allocObject();
                  v33 = sub_252D6CA80(v32);
                  v34 = *(v30 + 16);
                  *(v30 + 16) = v33;
                }

                v35 = [v29 taskOutcome];

                *(v30 + 24) = v35;
                swift_beginAccess();

                MEMORY[0x2530AD700](v36);
                v37 = *((*(v24 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
                v38 = *((*(v24 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18);
                v62 = v30;
                if (v37 >= v38 >> 1)
                {
                  sub_252E372A4();
                  v30 = v62;
                }

                sub_252E372D4();
                swift_endAccess();
                if (qword_27F53F4F0 != -1)
                {
                  swift_once();
                }

                v39 = __swift_project_value_buffer(v65, qword_27F544D78);
                v40 = *v60;
                v61 = v39;
                v40(v64);
                v78 = 0;
                v79 = 0xE000000000000000;
                sub_252E379F4();

                v78 = 0xD00000000000001DLL;
                v79 = v59;
                MEMORY[0x2530AD570](v21, v5);

                MEMORY[0x2530AD570](8250, 0xE200000000000000);
                v41 = *(v30 + 16);
                if (v41)
                {
                  v42 = *(v30 + 16);

                  v43 = sub_252D6CB58();

                  v44 = [v43 description];

                  v41 = sub_252E36F34();
                  v46 = v45;
                }

                else
                {
                  v46 = 0;
                }

                v76 = v41;
                v77 = v46;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
                v47 = sub_252E36F94();
                MEMORY[0x2530AD570](v47);

                v48 = v58;
                v49 = v64;
                sub_252CC3D90(v78, v79, 0xD000000000000081, v58 | 0x8000000000000000);

                (*v57)(v49, v65);
                v78 = 0;
                v79 = 0xE000000000000000;
                sub_252E379F4();

                v78 = 0xD00000000000001CLL;
                v79 = v56;
                v50 = sub_252D6C15C();
                v51 = [v50 description];

                v52 = sub_252E36F34();
                v54 = v53;

                MEMORY[0x2530AD570](v52, v54);

                v5 = v79;
                v8 = v61;
                sub_252CC3D90(v78, v79, 0xD000000000000081, v48 | 0x8000000000000000);
              }

              else
              {
              }

              goto LABEL_49;
            }
          }

LABEL_48:

LABEL_49:
          i = v69;
          a1 = v70;
          v13 = v68;
          v15 = &off_279711000;
          goto LABEL_8;
        }
      }

      else
      {
      }

LABEL_8:
      if (v12 == i)
      {
        return;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }
}

void sub_252A5FD64(void *a1, void (*a2)(void *, uint64_t), uint64_t a3, unint64_t a4)
{
  if (qword_27F53F4F0 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544D78);
    sub_252CC7784(0xD00000000000001ELL, 0x8000000252E74A20, 0, 0xD000000000000081, 0x8000000252E748C0);
    if (a1)
    {
      v8 = a1;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000002ELL, 0x8000000252E74A40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
      sub_252E37AE4();
      sub_252CC4050(0, 0xE000000000000000, 0xD000000000000081, 0x8000000252E748C0, 0xD000000000000031, 0x8000000252E74950, 50);

      v9 = a1;
      a2(a1, 1);

      return;
    }

    v16 = MEMORY[0x277D84F90];
    if (!(a4 >> 62))
    {
      a1 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a1)
      {
        break;
      }

      goto LABEL_6;
    }

    a1 = sub_252E378C4();
    if (!a1)
    {
      break;
    }

LABEL_6:
    v10 = 0;
    while ((a4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v10, a4);
      v12 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_16;
      }

LABEL_10:
      sub_252D6C15C();

      MEMORY[0x2530AD700](v13);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v10;
      if (v12 == a1)
      {
        v14 = v16;
        goto LABEL_21;
      }
    }

    if (v10 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v11 = *(a4 + 8 * v10 + 32);

    v12 = (v10 + 1);
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_10;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
  }

  v14 = MEMORY[0x277D84F90];
LABEL_21:
  a2(v14, 0);
}

void sub_252A6007C(unint64_t a1, uint64_t a2, char a3, void (*a4)(void, void), unint64_t a5)
{
  LOBYTE(v8) = a3;
  v10 = sub_252A75EFC(a2, a3 & 1);
  type metadata accessor for HomeStore();
  v11 = static HomeStore.shared.getter();
  v64 = v10;
  v12 = HomeStore.services(matching:supporting:)(a1, v10);
  LOBYTE(v14) = v13;

  if (v14)
  {
    goto LABEL_40;
  }

  v63 = v12 & 0xFFFFFFFFFFFFFF8;
  if (v12 >> 62)
  {
LABEL_39:
    v15 = sub_252E378C4();
    if (!v15)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_40;
    }
  }

  v65 = v12 & 0xC000000000000001;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x2530ADF00](0, v12);
    goto LABEL_7;
  }

  if (*(v63 + 16))
  {
    v16 = *(v12 + 32);

LABEL_7:
    v17 = *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate);

    v18 = [v17 accessory];

    if (v18)
    {
      v19 = [v18 home];

      if (v19)
      {

        v21 = sub_252A5F4E8(v20, sub_252E11384, sub_252E04F94);
        v22 = sub_252A5BDC4(v21);

        v23 = swift_allocObject();
        *(v23 + 16) = v22;
        *(v23 + 24) = v19;
        v62 = v23;
        v24 = swift_allocObject();
        v24[2] = a4;
        v24[3] = a5;
        v61 = v24;
        v24[4] = v22;

        v60 = v19;
        v5 = sub_252CC6468(MEMORY[0x277D84F90]);
        if (qword_27F53F4F0 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_47;
      }
    }

LABEL_40:
    sub_252929F10(v12, v14 & 1);
    if (qword_27F53F4F0 != -1)
    {
      swift_once();
    }

    v58 = sub_252E36AD4();
    __swift_project_value_buffer(v58, qword_27F544D78);
    sub_252CC4050(0xD00000000000001ELL, 0x8000000252E748A0, 0xD000000000000081, 0x8000000252E748C0, 0xD000000000000031, 0x8000000252E74950, 23);
    a4(MEMORY[0x277D84F90], 0);

    return;
  }

  __break(1u);
LABEL_47:
  swift_once();
LABEL_10:
  v25 = sub_252E36AD4();
  __swift_project_value_buffer(v25, qword_27F544D78);
  sub_252E379F4();

  type metadata accessor for Service();
  v26 = MEMORY[0x2530AD730](v12);
  MEMORY[0x2530AD570](v26);

  sub_252CC3D90(0xD00000000000002CLL, 0x8000000252E74990, 0xD000000000000081, 0x8000000252E748C0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  if (v8)
  {
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_252E3C130;
    *(v27 + 32) = v64;
    v28 = v64;
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C3D0;
    *(inited + 32) = v64;
    v30 = objc_allocWithZone(type metadata accessor for HomeUserTask());
    v31 = v64;
    v32 = sub_252E36F04();
    v33 = [v30 initWithIdentifier:0 displayString:v32];

    v34 = v33;
    [v34 setTaskType_];
    [v34 setAttribute_];
    [v34 setValue_];

    *(inited + 40) = v34;
    v35 = sub_252C76598(inited);
    swift_setDeallocating();
    v36 = *(inited + 16);
    swift_arrayDestroy();
    v27 = sub_2529A3808(v35);
  }

  a5 = 0;
  v14 = v5;
  do
  {
    if (v65)
    {
      a4 = MEMORY[0x2530ADF00](a5, v12);
      v5 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (a5 >= *(v63 + 16))
      {
        goto LABEL_38;
      }

      a4 = *(v12 + 8 * a5 + 32);

      v5 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    v8 = v12;
    v12 = v15;
    v40 = v27;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v14;
    v43 = sub_252A454C0(a4);
    v44 = *(v14 + 16);
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      goto LABEL_36;
    }

    v47 = v42;
    if (*(v14 + 24) >= v46)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_252E03EC4();
      }
    }

    else
    {
      sub_252E00638(v46, isUniquelyReferenced_nonNull_native);
      v48 = sub_252A454C0(a4);
      if ((v47 & 1) != (v49 & 1))
      {
        sub_252E37E24();
        __break(1u);
        return;
      }

      v43 = v48;
    }

    v27 = v40;
    if (v47)
    {
      v37 = *(v14 + 56);
      v38 = *(v37 + 8 * v43);
      *(v37 + 8 * v43) = v40;

      v14 = v66;
    }

    else
    {
      *(v14 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      *(*(v14 + 48) + 8 * v43) = a4;
      *(*(v14 + 56) + 8 * v43) = v40;
      v50 = *(v14 + 16);
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_37;
      }

      *(v14 + 16) = v52;
    }

    ++a5;
    v15 = v12;
    v39 = v5 == v12;
    v12 = v8;
  }

  while (!v39);

  sub_252929F10(v8, 0);
  LOBYTE(v59) = 0;
  v53 = sub_252A59B64(v14, sub_252A60910, v62, sub_252A60918, v61, 0, 0, 0, v59, 0, 1u);
  if (v53)
  {
    v54 = v53;
    sub_252E379F4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EA8, qword_252E51A90);
    sub_252A60924();
    v55 = sub_252E36E54();
    v57 = v56;

    MEMORY[0x2530AD570](v55, v57);

    sub_252CC7784(0xD000000000000025, 0x8000000252E749F0, 0, 0xD000000000000081, 0x8000000252E748C0);

    [v60 performBatchRequest_];
  }

  else
  {

    sub_252CC4050(0xD00000000000002ALL, 0x8000000252E749C0, 0xD000000000000081, 0x8000000252E748C0, 0xD000000000000031, 0x8000000252E74950, 76);
  }
}

unint64_t sub_252A60924()
{
  result = qword_27F541EB0;
  if (!qword_27F541EB0)
  {
    type metadata accessor for Service();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541EB0);
  }

  return result;
}

void sub_252A6097C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_252E34414();
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_252E342B4();
  v50 = *(v57 - 8);
  v7 = *(v50 + 64);
  v8 = MEMORY[0x28223BE20](v57);
  v48 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = v45 - v10;
  v11 = sub_252E34354();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v54 = v45 - v16;
  v17 = sub_252E34244();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_252E34474();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v45 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F50, &qword_252E42D00);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = v45 - v29;
  v52 = a2;
  sub_252A61CD4();
  if (a1)
  {
    v47 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v31 = a1;
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_252E3C130;
    *(v32 + 32) = v31;
    v33 = sub_252E34A74();
    (*(*(v33 - 8) + 56))(v30, 1, 1, v33);
    swift_retain_n();
    v34 = MEMORY[0x2530AAE70](v32, v30);

    sub_252A63908(v30);
    sub_252E34464();
    sub_252E344E4();
    sub_252E34454();
    v35 = v54;
    sub_252E34344();
    v36 = *(v20 + 16);
    v46 = v19;
    v36(v24, v26, v19);
    sub_252E34334();
    v37 = v49;
    sub_252E342A4();
    (*(v55 + 16))(v15, v35, v56);
    sub_252E34294();
    v45[1] = v34;
    v38 = v51;
    sub_252E34404();
    v39 = v50;
    (*(v50 + 16))(v48, v37, v57);
    sub_252E343E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F60, &qword_252E42D08);
    v40 = v53;
    v41 = *(v53 + 72);
    v42 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_252E3C290;
    v44 = v47;
    (*(v40 + 16))(v43 + v42, v38, v47);
    sub_252E33BA4();

    (*(v40 + 8))(v38, v44);
    (*(v39 + 8))(v37, v57);
    (*(v55 + 8))(v54, v56);
    (*(v20 + 8))(v26, v46);
  }
}

uint64_t sub_252A6105C@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, char *a5@<X8>)
{
  v58 = a4;
  v66 = a2;
  v60 = sub_252E34414();
  v8 = *(v60 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v60);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252E34244();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v69 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_252E34384();
  v67 = *(v15 - 8);
  v16 = *(v67 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v53 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F50, &qword_252E42D00);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v68 = &v53 - v23;
  v24 = sub_252E33C44();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252A61CD4();
  if (a3)
  {
    v64 = v24;
    v65 = v15;
    v57 = v11;
    v62 = v28;
    v29 = qword_27F53F2E8;

    if (v29 != -1)
    {
      swift_once();
    }

    v63 = v25;
    v30 = a5;
    v28 = off_27F541F48;
    v31 = *(off_27F541F48 + 2);
    v61 = v20;
    if (v31)
    {
      v54 = a1;
      v55 = v8;
      v56 = a3;
      v32 = sub_252DFA3E0(v31, 0);
      a5 = sub_252E082D0(&v72, v32 + 4, v31, v28);

      sub_25297DEB0();
      if (a5 != v31)
      {
        __break(1u);
        swift_once();
        v41 = sub_252E36AD4();
        __swift_project_value_buffer(v41, qword_27F544DA8);
        v72 = 0;
        v73 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E74F10);
        v70 = v30;
        v42 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
        v43 = sub_252E36F94();
        MEMORY[0x2530AD570](v43);

        sub_252CC4050(v72, v73, 0xD00000000000006FLL, 0x8000000252E74AE0, 0xD000000000000031, 0x8000000252E74ED0, 139);

LABEL_16:
        v25 = v63;
        v24 = v64;
        return (*(v25 + 32))(a5, v28, v24);
      }

      a3 = v56;
      v8 = v55;
      v20 = v61;
      a1 = v54;
    }

    v28 = v62;
    sub_252E33C24();
    if (v66)
    {
      v33 = v30;
      if (v66 == 1)
      {
        v34 = sub_252A6340C(a1);
      }

      else
      {
        v34 = sub_252A62FFC(a3, v58);
      }

      v37 = v34;
    }

    else
    {
      v33 = v30;
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v35 = sub_252E36AD4();
      __swift_project_value_buffer(v35, qword_27F544DA8);
      v72 = 0;
      v73 = 0xE000000000000000;
      sub_252E379F4();

      v72 = 0xD000000000000018;
      v73 = 0x8000000252E74EB0;
      v70 = a1;
      v71 = 0;

      v36 = sub_252E36F94();
      MEMORY[0x2530AD570](v36);

      sub_252CC4050(v72, v73, 0xD00000000000006FLL, 0x8000000252E74AE0, 0xD000000000000031, 0x8000000252E74ED0, 127);

      v37 = a3;
    }

    v38 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_252E3C130;
    *(v39 + 32) = v37;
    v40 = sub_252E34A74();
    (*(*(v40 - 8) + 56))(v38, 1, 1, v40);

    MEMORY[0x2530AAE70](v39, v38);

    sub_252A63908(v38);
    sub_252E34374();
    sub_252E344E4();
    sub_252E34364();
    v44 = v57;
    sub_252E34404();
    v45 = v20;
    v46 = v67;
    v47 = *(v67 + 16);
    v69 = v33;
    v47(v59, v45, v65);
    sub_252E343F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F60, &qword_252E42D08);
    v48 = *(v8 + 72);
    v49 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_252E3C290;
    v51 = v60;
    (*(v8 + 16))(v50 + v49, v44, v60);
    sub_252E33BA4();

    (*(v8 + 8))(v44, v51);
    a5 = v69;
    (*(v46 + 8))(v61, v65);
    goto LABEL_16;
  }

  return (*(v25 + 32))(a5, v28, v24);
}

uint64_t sub_252A61874()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E419C0;
  *(inited + 32) = sub_252A61964(2);
  *(inited + 40) = v1;
  *(inited + 48) = sub_252A61964(3);
  *(inited + 56) = v2;
  *(inited + 64) = sub_252A61964(4);
  *(inited + 72) = v3;
  *(inited + 80) = sub_252A61964(5);
  *(inited + 88) = v4;
  *(inited + 96) = sub_252A61964(6);
  *(inited + 104) = v5;
  *(inited + 112) = sub_252A61964(7);
  *(inited + 120) = v6;
  *(inited + 128) = sub_252A61964(8);
  *(inited + 136) = v7;
  *(inited + 144) = sub_252A61964(9);
  *(inited + 152) = v8;
  v9 = sub_252C75848(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  off_27F541F40 = v9;
  return result;
}

unint64_t sub_252A61964(char a1)
{
  sub_252E379F4();

  v2 = sub_252A61B34(a1);
  v3 = v2;
  v5 = v4;
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_252E37174();
    v7 = sub_252E36FC4();
    v9 = v8;

    v3 = sub_252AD52A0(0xFuLL, 15, v7, v9, v3, v5);
    v11 = v10;

    v5 = v11;
  }

  MEMORY[0x2530AD570](v3, v5);

  return 0xD000000000000012;
}

uint64_t sub_252A61A74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3EF80;
  *(inited + 32) = sub_252A61964(10);
  *(inited + 40) = v1;
  *(inited + 48) = sub_252A61964(11);
  *(inited + 56) = v2;
  *(inited + 64) = sub_252A61964(12);
  *(inited + 72) = v3;
  *(inited + 80) = sub_252A61964(13);
  *(inited + 88) = v4;
  v5 = sub_252C75848(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  off_27F541F48 = v5;
  return result;
}

unint64_t sub_252A61B34(char a1)
{
  result = 0x6F747541656D6F68;
  switch(a1)
  {
    case 1:
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 6:
      v3 = 9;
      goto LABEL_14;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      v3 = 5;
LABEL_14:
      result = v3 | 0xD000000000000012;
      break;
    case 9:
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_252A61CD4()
{
  sub_252E33C34();
  sub_252E33BC4();
  sub_252A61964(0);
  sub_252E33BE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_252E3C290;
  v13 = sub_252A61964(1);
  v18 = v1;
  MEMORY[0x2530AD570](0x2E65756C61562ELL, 0xE700000000000000);
  MEMORY[0x2530AD570](0x4C45434E4143, 0xE600000000000000);
  *(v0 + 32) = v13;
  *(v0 + 40) = v18;
  sub_252E33BD4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_252E3C290;
  *(v2 + 32) = sub_252A61964(1);
  *(v2 + 40) = v3;
  sub_252E33C14();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3C280;
  v14 = sub_252A61964(1);
  v19 = v5;
  MEMORY[0x2530AD570](0x2E65756C61562ELL, 0xE700000000000000);
  MEMORY[0x2530AD570](0x4C45434E4143, 0xE600000000000000);
  *(v4 + 32) = v14;
  *(v4 + 40) = v19;
  v15 = sub_252A61964(1);
  v20 = v6;
  MEMORY[0x2530AD570](0x2E65756C61562ELL, 0xE700000000000000);
  MEMORY[0x2530AD570](5457241, 0xE300000000000000);
  *(v4 + 48) = v15;
  *(v4 + 56) = v20;
  v16 = sub_252A61964(1);
  v21 = v7;
  MEMORY[0x2530AD570](0x2E65756C61562ELL, 0xE700000000000000);
  MEMORY[0x2530AD570](20302, 0xE200000000000000);
  *(v4 + 64) = v16;
  *(v4 + 72) = v21;
  sub_252E33C04();
  v17 = MEMORY[0x277D84F90];
  v8 = [objc_allocWithZone(MEMORY[0x277D47138]) init];
  [v8 setDomain_];
  v9 = sub_252E37254();
  [v8 setAppIdHints_];

  v12 = v8;
  MEMORY[0x2530AD700]();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v11 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_252E372A4();
  }

  sub_252E372D4();
  sub_252E33BF4();
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v10 = sub_252E36AD4();
  __swift_project_value_buffer(v10, qword_27F544DA8);
  sub_252CC3D90(0xD000000000000028, 0x8000000252E74E10, 0xD00000000000006FLL, 0x8000000252E74AE0);
}

void sub_252A62028(unint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LOBYTE(v5) = a2;
  v8 = a2;
  v9 = sub_252E34414();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v94 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_252E34444();
  v93 = *(v13 - 8);
  v14 = *(v93 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v91 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v85 - v17;
  v18 = sub_252E34244();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v113 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_252E343C4();
  v21 = *(v123 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v123);
  v111 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v124 = &v85 - v25;
  v122 = sub_252E34354();
  v115 = *(v122 - 8);
  v26 = *(v115 + 64);
  v27 = MEMORY[0x28223BE20](v122);
  v121 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v85 - v29;
  v112 = sub_252E34614();
  v119 = *(v112 - 8);
  v31 = *(v119 + 64);
  MEMORY[0x28223BE20](v112);
  v116 = &v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F50, &qword_252E42D00);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v114 = &v85 - v35;
  v96 = sub_252E33C44();
  v95 = *(v96 - 8);
  v36 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v104 = &v85 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252A61CD4();
  if (v8 || !a1)
  {
    if (qword_27F53F500 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_10;
  }

  if (!a3)
  {
LABEL_11:
    (*(v95 + 32))(a4, v104, v96);
    return;
  }

  v89 = v13;
  v38 = qword_27F53F2E0;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = off_27F541F40;
  v40 = *(off_27F541F40 + 2);
  v120 = v30;
  v109 = a3;
  v88 = v9;
  v87 = v10;
  v108 = a1;
  if (!v40)
  {
    v46 = MEMORY[0x277D84F90];
    v45 = v89;
    v5 = v116;
LABEL_13:
    sub_252E33C24();
    v128 = v46;
    v90 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      v49 = sub_252E378C4();
    }

    else
    {
      v49 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v110 = v49;
    if (v49)
    {
      v86 = a4;
      v101 = sub_252A62FB0();
      v50 = 0;
      a4 = 0;
      v106 = a1 & 0xC000000000000001;
      v100 = (v119 + 8);
      v99 = (v21 + 16);
      v98 = (v115 + 16);
      v102 = (v21 + 8);
      v103 = v115 + 8;
      v51 = MEMORY[0x277D84F90];
      v97 = v115 + 32;
      v105 = xmmword_252E3C130;
      v107 = MEMORY[0x277D84F90];
      while (1)
      {
        v119 = v51;
        if (v106)
        {
          v52 = MEMORY[0x2530ADF00](v50, a1);
          v53 = v124;
          v54 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            goto LABEL_36;
          }
        }

        else
        {
          v53 = v124;
          if (v50 >= *(v90 + 16))
          {
            goto LABEL_37;
          }

          v52 = *(a1 + 8 * v50 + 32);
          v54 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            swift_once();
LABEL_10:
            v47 = sub_252E36AD4();
            __swift_project_value_buffer(v47, qword_27F544DA8);
            v126 = 0;
            v127 = 0xE000000000000000;
            sub_252E379F4();

            v126 = 0xD000000000000024;
            v127 = 0x8000000252E74AB0;
            v128 = a1;
            v129 = v5;
            sub_252A62FA0(a1, v5);
            v48 = sub_252E36F94();
            MEMORY[0x2530AD570](v48);

            sub_252CC4050(v126, v127, 0xD00000000000006FLL, 0x8000000252E74AE0, 0xD000000000000027, 0x8000000252E74B50, 150);

            goto LABEL_11;
          }
        }

        v118 = v54;
        if (a4)
        {
        }

        v55 = v52;
        sub_252B09EF8(v55, 0);
        v117 = v55;

        v56 = sub_252A635BC(a3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        v57 = swift_allocObject();
        *(v57 + 16) = v105;
        *(v57 + 32) = v56;
        v58 = sub_252E34A74();
        v59 = v114;
        (*(*(v58 - 8) + 56))(v114, 1, 1, v58);

        MEMORY[0x2530AAE70](v57, v59);

        sub_252A63908(v59);
        sub_252E357F4();
        v60 = MEMORY[0x2530ADA70](v5);
        (*v100)(v5, v112);
        v61 = [objc_allocWithZone(MEMORY[0x277D5F5E0]) initWithTask_];
        MEMORY[0x2530AD700]();
        if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v69 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
          v53 = v124;
        }

        sub_252E372D4();
        v107 = v128;
        v62 = v120;
        sub_252E34344();
        sub_252E343B4();
        sub_252E344E4();
        sub_252E343A4();
        (*v99)(v111, v53, v123);
        sub_252E34324();
        (*v98)(v121, v62, v122);
        v63 = v119;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_2529F8930(0, v63[2] + 1, 1, v63);
        }

        v65 = v63[2];
        v64 = v63[3];
        v66 = v63;
        if (v65 >= v64 >> 1)
        {
          v66 = sub_2529F8930(v64 > 1, v65 + 1, 1, v63);
        }

        (*v102)(v124, v123);
        v67 = v115;
        v68 = v122;
        (*(v115 + 8))(v120, v122);
        *(v66 + 16) = v65 + 1;
        v51 = v66;
        (*(v67 + 32))(v66 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v65, v121, v68);
        ++v50;
        a4 = 1;
        a3 = v109;
        a1 = v108;
        v5 = v116;
        if (v118 == v110)
        {

          a4 = v86;
          v9 = v88;
          v10 = v87;
          v45 = v89;
          goto LABEL_33;
        }
      }
    }

    goto LABEL_33;
  }

  v118 = v21;
  v41 = a4;
  v42 = sub_252DFA3E0(v40, 0);
  v43 = sub_252E082D0(&v126, v42 + 4, v40, v39);
  v44 = v126;

  sub_25297DEB0();
  if (v43 == v40)
  {
    a4 = v41;
    a3 = v109;
    v9 = v88;
    v10 = v87;
    v45 = v89;
    a1 = v108;
    v5 = v116;
    v21 = v118;
    v46 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  __break(1u);
  swift_once();
  v70 = sub_252E36AD4();
  __swift_project_value_buffer(v70, qword_27F544DA8);
  v126 = 0;
  v127 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E74B80);
  v125 = v39;
  v71 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  v72 = sub_252E36F94();
  MEMORY[0x2530AD570](v72);

  MEMORY[0x2530AD570](0x696620726F660A2CLL, 0xED0000207265746CLL);
  v73 = v44;
  v74 = [v73 description];
  v75 = sub_252E36F34();
  v77 = v76;
  v117 = v73;

  MEMORY[0x2530AD570](v75, v77);

  sub_252CC4050(v126, v127, 0xD00000000000006FLL, 0x8000000252E74AE0, 0xD000000000000027, 0x8000000252E74B50, 179);

  a4 = v86;
  v9 = v88;
  v10 = v87;
  v45 = v89;
LABEL_33:
  v78 = v92;
  sub_252E34434();
  sub_252E34424();
  v79 = v94;
  sub_252E34404();
  v80 = v93;
  (*(v93 + 16))(v91, v78, v45);
  sub_252E343D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F60, &qword_252E42D08);
  v81 = *(v10 + 72);
  v82 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_252E3C290;
  (*(v10 + 16))(v83 + v82, v79, v9);
  v84 = v104;
  sub_252E33BA4();

  (*(v10 + 8))(v79, v9);
  (*(v80 + 8))(v78, v45);
  (*(v95 + 32))(a4, v84, v96);
  if (v110)
  {
  }
}

uint64_t sub_252A62FA0(uint64_t a1, char a2)
{
  if (!a2)
  {
  }

  return result;
}

unint64_t sub_252A62FB0()
{
  result = qword_27F541F58;
  if (!qword_27F541F58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F541F58);
  }

  return result;
}

uint64_t sub_252A62FFC(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_252E35074();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_252E35064();
  sub_252E35054();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F68, &qword_252E42D10);
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    if (a2 <= 1u)
    {
      if (!a2)
      {

LABEL_15:
        v12 = sub_252E353A4();
        v13 = *(v12 + 48);
        v14 = *(v12 + 52);
        swift_allocObject();
        sub_252E35394();
        v15 = sub_252E35624();
        v16 = *(v15 + 48);
        v17 = *(v15 + 52);
        swift_allocObject();
        sub_252E35614();
        v18 = sub_252E350A4();
        v19 = *(v18 + 48);
        v20 = *(v18 + 52);
        swift_allocObject();
        sub_252E35094();
        sub_252E35604();

        sub_252E35384();

        sub_252E355E4();

        goto LABEL_17;
      }
    }

    else if (a2 != 2 && a2 != 3)
    {

      goto LABEL_16;
    }

    v11 = sub_252E37DB4();

    if (v11)
    {
      goto LABEL_15;
    }

LABEL_16:
    sub_252E355D4();
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F70, &qword_252E42D18);
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v8 = v9;

    sub_252E35734();
LABEL_17:

    return v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F78, &qword_252E42D20);
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v8 = v10;

    sub_252E357C4();
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F80, &qword_252E42D28);
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v8 = v22;

    sub_252E35264();
    goto LABEL_17;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v23 = sub_252E36AD4();
  __swift_project_value_buffer(v23, qword_27F544DA8);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E74F50);
  sub_252E34844();

  v24 = sub_252E36F94();
  MEMORY[0x2530AD570](v24);

  sub_252CC4050(0, 0xE000000000000000, 0xD00000000000006FLL, 0x8000000252E74AE0, 0xD000000000000035, 0x8000000252E74F90, 238);

  return a1;
}

uint64_t sub_252A6340C(unint64_t a1)
{
  if (a1 > 0x3B)
  {
    goto LABEL_7;
  }

  if (((1 << a1) & 0xFE40036618A0EB4) == 0)
  {
    if (((1 << a1) & 0xA000004000040) != 0)
    {
      v9 = sub_252E356C4();
      v10 = *(v9 + 48);
      v11 = *(v9 + 52);
      swift_allocObject();
      v4 = sub_252E356B4();
      v12 = sub_252E35354();
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      sub_252E35344();
      sub_252E357D4();
      goto LABEL_4;
    }

LABEL_7:
    v15 = sub_252E35224();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v4 = sub_252E35214();
    v18 = sub_252E35074();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    sub_252E35064();
    sub_252E355D4();
    goto LABEL_4;
  }

  v1 = sub_252E354E4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_252E354D4();
  v5 = sub_252E34FC4();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_252E34FB4();
  sub_252E35744();
LABEL_4:

  return v4;
}

uint64_t sub_252A63570()
{
  v0 = sub_252E37B74();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252A635BC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F68, &qword_252E42D10);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;

    sub_252E355F4();
    return v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F70, &qword_252E42D18);
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;

      sub_252E35754();
      return v5;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F78, &qword_252E42D20);
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = v6;

        sub_252E357E4();
        return v7;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F80, &qword_252E42D28);
        v8 = swift_dynamicCastClass();
        if (v8)
        {
          v9 = v8;

          sub_252E35274();
          return v9;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F88, &qword_252E42D30);
          v10 = swift_dynamicCastClass();
          if (v10)
          {
            v11 = v10;

            sub_252E34564();
            return v11;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F90, &qword_252E42D38);
            v12 = swift_dynamicCastClass();
            if (v12)
            {
              v13 = v12;

              sub_252E35264();
              return v13;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F98, &unk_252E42D40);
              v14 = swift_dynamicCastClass();
              if (v14)
              {
                v15 = v14;

                sub_252E35514();
                return v15;
              }

              else
              {
                if (qword_27F53F500 != -1)
                {
                  swift_once();
                }

                v16 = sub_252E36AD4();
                __swift_project_value_buffer(v16, qword_27F544DA8);
                sub_252E379F4();
                MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E74BC0);
                sub_252E34844();

                v17 = sub_252E36F94();
                MEMORY[0x2530AD570](v17);

                sub_252CC4050(0, 0xE000000000000000, 0xD00000000000006FLL, 0x8000000252E74AE0, 0xD000000000000041, 0x8000000252E74C00, 301);
              }
            }
          }
        }
      }
    }
  }

  return a1;
}

uint64_t sub_252A63908(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F50, &qword_252E42D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_22HomeAutomationInternal17NLContextProviderO10PromptHintO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_252A639A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_252A639E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_252A63A2C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_252A63A74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_252A63ABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_252A63B24()
{
  result = qword_27F541FA0;
  if (!qword_27F541FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541FA0);
  }

  return result;
}

uint64_t sub_252A63B8C()
{
  *v0;
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252A63C6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252A64B3C();
  *a2 = result;
  return result;
}

void sub_252A63C9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 12639;
  v5 = 0xE600000000000000;
  v6 = 0x444961657261;
  v7 = 0xE500000000000000;
  v8 = 0x444970616DLL;
  if (v2 != 4)
  {
    v8 = 1701667182;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x65746174536E7572;
  if (v2 != 1)
  {
    v10 = 0x646F4D6E61656C63;
    v9 = 0xEA00000000007365;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_252A63D44()
{
  v21 = sub_252E37F54();
  v1 = *(v21 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[7] = &type metadata for PossibleValuesForAttribute;
  v5 = swift_allocObject();
  v24[4] = v5;
  v6 = v0[1];
  v5[1] = *v0;
  v5[2] = v6;
  *(v5 + 41) = *(v0 + 25);
  sub_252A656C8(v0, &v22);
  sub_252E37F24();
  v7 = sub_252E37F44();
  v8 = v7[2];
  v9 = v7[3];
  v10 = v7[4];
  v11 = v7[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = sub_252E37A14();
  swift_getObjectType();
  if (v12 != sub_252E37A14())
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = sub_252E37A24();
  swift_unknownObjectRelease();
  if (v13)
  {
    swift_unknownObjectRelease();

    goto LABEL_6;
  }

  sub_252E37AF4();
  swift_unknownObjectRelease();

  v15 = v22;
  v14 = v23;
  __swift_destroy_boxed_opaque_existential_1(v24);
  if (!v14)
  {
LABEL_6:
    if (qword_27F53F568 == -1)
    {
LABEL_7:
      v18 = sub_252E36AD4();
      __swift_project_value_buffer(v18, qword_27F544EE0);
      sub_252CC4050(0xD00000000000003ALL, 0x8000000252E751A0, 0xD000000000000089, 0x8000000252E75010, 0x6E65644965707974, 0xEE00726569666974, 31);
      v17 = 0x6E776F6E6B6E55;
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  sub_252E37F34();
  v22 = sub_252E37FB4();
  v23 = v16;
  MEMORY[0x2530AD570](46, 0xE100000000000000);
  MEMORY[0x2530AD570](v15, v14);

  v17 = v22;
LABEL_8:
  (*(v1 + 8))(v4, v21);
  return v17;
}

uint64_t sub_252A6403C()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 40) > 1u)
  {
    v7 = v0[2];
    if (*(v0 + 40) == 2)
    {
      v20 = v0[4];
      v21 = v0[3];
      v19 = v0[2];

      sub_252A63D44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v8 = *(sub_252E36724() - 8);
      v9 = *(v8 + 72);
      v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      *(swift_allocObject() + 16) = xmmword_252E3C280;
      sub_252A654C8();
      sub_252E366F4();
    }

    else
    {
      v14 = v0[2];

      sub_252A63D44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v15 = *(sub_252E36724() - 8);
      v16 = *(v15 + 72);
      v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      *(swift_allocObject() + 16) = xmmword_252E3C3C0;
      sub_252A654C8();
    }

    sub_252E366F4();
    sub_252E366F4();
  }

  else
  {
    if (*(v0 + 40))
    {
      sub_252A63D44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v11 = *(sub_252E36724() - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A6551C();
      sub_252A654C8();
    }

    else
    {
      v3 = v0[1];

      sub_252A63D44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v4 = *(sub_252E36724() - 8);
      v5 = *(v4 + 72);
      v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      *(swift_allocObject() + 16) = xmmword_252E3C3C0;
      sub_252A65570();
      sub_252A654C8();
      sub_252E366F4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541FD8, &unk_252E42FD0);
      sub_252A655C4();
    }

    sub_252E366F4();
  }

  sub_252E36564();
}

uint64_t sub_252A64588()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[9] = *(v0 + 25);
  return sub_252A6403C();
}

double sub_252A645C4@<D0>(_OWORD *a1@<X8>)
{
  sub_252A64B88(&v4);
  v2 = v5[0];
  *a1 = v4;
  a1[1] = v2;
  result = *(v5 + 9);
  *(a1 + 25) = *(v5 + 9);
  return result;
}

uint64_t sub_252A64604(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_252A64890(&v5, &v7) & 1;
}

uint64_t sub_252A64650()
{
  sub_252A65700();

  return sub_252E36514();
}

uint64_t sub_252A6468C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A65700();

  return MEMORY[0x28213DA58](a1, a2, v4);
}

uint64_t sub_252A646D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A65700();

  return MEMORY[0x28213DA68](a1, a2, a3, v6);
}

uint64_t sub_252A6473C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A65700();

  return MEMORY[0x28213DA60](a1, a2, v4);
}

unint64_t sub_252A6478C()
{
  result = qword_27F541FA8;
  if (!qword_27F541FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541FA8);
  }

  return result;
}

unint64_t sub_252A647E4()
{
  result = qword_27F541FB0;
  if (!qword_27F541FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541FB0);
  }

  return result;
}

unint64_t sub_252A6483C()
{
  result = qword_27F541FB8;
  if (!qword_27F541FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541FB8);
  }

  return result;
}

uint64_t sub_252A64890(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*(a1 + 40) > 1u)
  {
    v13 = a1[2];
    if (*(a1 + 40) == 2)
    {
      if (*(a2 + 40) != 2 || v3 != *a2)
      {
        return 0;
      }

      v14 = a1[3];
      v15 = a1[4];
      v16 = *(a2 + 16);
      if (v13)
      {
        if ((*(a2 + 16) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if ((*(a2 + 16) & 1) != 0 || v4 != *(a2 + 8))
        {
          return result;
        }
      }

      if (v14 == *(a2 + 24) && v15 == *(a2 + 32))
      {
        return 1;
      }
    }

    else
    {
      if (*(a2 + 40) != 3 || v3 != *a2)
      {
        return 0;
      }

      if (v4 == *(a2 + 8) && v13 == *(a2 + 16))
      {
        return 1;
      }

      v19 = a1[1];
      v20 = a1[2];
    }

    return sub_252E37DB4();
  }

  if (!*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      v5 = *(a2 + 8);
      v6 = *a2;
      v7 = sub_252A7D814(v3);
      v9 = v8;
      if (v7 == sub_252A7D814(v6) && v9 == v10)
      {

LABEL_30:

        return sub_252AE7D40(v4, v5);
      }

      v12 = sub_252E37DB4();

      if (v12)
      {
        goto LABEL_30;
      }
    }

    return 0;
  }

  if (*(a2 + 40) != 1)
  {
    return 0;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v17 = 0x656D75736572;
    }

    else
    {
      v17 = 0x6C65636E6163;
    }

    v18 = 0xE600000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
    v17 = 0x6573756170;
  }

  v22 = 0x656D75736572;
  if (*a2 != 1)
  {
    v22 = 0x6C65636E6163;
  }

  if (*a2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0x6573756170;
  }

  if (*a2)
  {
    v24 = 0xE600000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  if (v17 == v23 && v18 == v24)
  {

    return 1;
  }

  else
  {
    v25 = sub_252E37DB4();

    return v25 & 1;
  }
}

uint64_t sub_252A64B3C()
{
  v0 = sub_252E37B74();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252A64B88@<X0>(uint64_t a1@<X8>)
{
  sub_252E36584();
  __swift_project_boxed_opaque_existential_1(&v24, v26);
  v2 = sub_252E364C4();
  v4 = sub_252A81560(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(&v24);
  if (v4 <= 0x2Bu)
  {
    if (v4 != 42)
    {
      if (v4 == 43)
      {
        sub_252A6551C();
        sub_252A654C8();
        result = sub_252E365A4();
        v11 = v24;
        if (v24 != 3)
        {
          v15 = 0;
          v16 = 0;
          v14 = 0;
          v13 = 0;
          v17 = 1;
          goto LABEL_37;
        }

        if (qword_27F53F568 != -1)
        {
          swift_once();
        }

        v12 = sub_252E36AD4();
        __swift_project_value_buffer(v12, qword_27F544EE0);
        v24 = 0;
        v25 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000002FLL, 0x8000000252E75140);
        sub_252E365B4();
        sub_252E37AE4();
        v7 = v24;
        v8 = v25;
        v9 = 99;
        goto LABEL_35;
      }

      goto LABEL_23;
    }

    sub_252A65570();
    sub_252A654C8();
    sub_252E365A4();
    v11 = v24;
    if (v24 == 16 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541FD8, &unk_252E42FD0), sub_252A655C4(), result = sub_252E365A4(), (v15 = v24) == 0))
    {
      if (qword_27F53F568 != -1)
      {
        swift_once();
      }

      v21 = sub_252E36AD4();
      __swift_project_value_buffer(v21, qword_27F544EE0);
      v24 = 0;
      v25 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E75170);
      sub_252E365B4();
      sub_252E37AE4();
      v7 = v24;
      v8 = v25;
      v9 = 90;
      goto LABEL_35;
    }

    v16 = 0;
    v14 = 0;
    v13 = 0;
    v17 = 0;
  }

  else
  {
    switch(v4)
    {
      case ',':
        sub_252A654C8();
        sub_252E365A4();
        if ((v25 & 1) != 0 || (v11 = v24, sub_252E365A4(), (v13 = v25) == 0))
        {
          if (qword_27F53F568 != -1)
          {
            swift_once();
          }

          v19 = sub_252E36AD4();
          __swift_project_value_buffer(v19, qword_27F544EE0);
          v24 = 0;
          v25 = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E75100);
          sub_252E365B4();
          sub_252E37AE4();
          v7 = v24;
          v8 = v25;
          v9 = 110;
          goto LABEL_35;
        }

        v14 = v24;
        result = sub_252E365A4();
        v15 = v24;
        v16 = v25;
        v17 = 2;
        break;
      case '-':
        sub_252A654C8();
        sub_252E365A4();
        if ((v25 & 1) != 0 || (v11 = v24, result = sub_252E365A4(), (v16 = v25) == 0))
        {
          if (qword_27F53F568 != -1)
          {
            swift_once();
          }

          v20 = sub_252E36AD4();
          __swift_project_value_buffer(v20, qword_27F544EE0);
          v24 = 0;
          v25 = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E750C0);
          sub_252E365B4();
          sub_252E37AE4();
          v7 = v24;
          v8 = v25;
          v9 = 122;
          goto LABEL_35;
        }

        v14 = 0;
        v13 = 0;
        v15 = v24;
        v17 = 3;
        break;
      case '<':
        if (qword_27F53F568 != -1)
        {
          swift_once();
        }

        v5 = sub_252E36AD4();
        __swift_project_value_buffer(v5, qword_27F544EE0);
        v24 = 0;
        v25 = 0xE000000000000000;
        sub_252E379F4();
        v22 = v24;
        v23 = v25;
        MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E74FD0);
        sub_252E36584();
        __swift_project_boxed_opaque_existential_1(&v24, v26);
        v6 = sub_252E364C4();
        MEMORY[0x2530AD570](v6);

        __swift_destroy_boxed_opaque_existential_1(&v24);
        v7 = v22;
        v8 = v23;
        v9 = 77;
LABEL_35:
        sub_252CC4050(v7, v8, 0xD000000000000089, 0x8000000252E75010, 0xD000000000000010, 0x8000000252E6F060, v9);
LABEL_36:

        v11 = 0;
        v15 = 0;
        v16 = 0;
        v14 = 0;
        v13 = 0;
        v17 = -1;
        break;
      default:
LABEL_23:
        if (qword_27F53F568 != -1)
        {
          swift_once();
        }

        v18 = sub_252E36AD4();
        __swift_project_value_buffer(v18, qword_27F544EE0);
        v24 = 0;
        v25 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E750A0);
        sub_252E37AE4();
        sub_252CC4050(v24, v25, 0xD000000000000089, 0x8000000252E75010, 0xD000000000000010, 0x8000000252E6F060, 128);
        goto LABEL_36;
    }
  }

LABEL_37:
  *a1 = v11;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16;
  *(a1 + 24) = v14;
  *(a1 + 32) = v13;
  *(a1 + 40) = v17;
  return result;
}

unint64_t sub_252A654C8()
{
  result = qword_27F541FC0;
  if (!qword_27F541FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541FC0);
  }

  return result;
}

unint64_t sub_252A6551C()
{
  result = qword_27F541FC8;
  if (!qword_27F541FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541FC8);
  }

  return result;
}

unint64_t sub_252A65570()
{
  result = qword_27F541FD0;
  if (!qword_27F541FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541FD0);
  }

  return result;
}

unint64_t sub_252A655C4()
{
  result = qword_27F541FE0;
  if (!qword_27F541FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F541FD8, &unk_252E42FD0);
    sub_252A65648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541FE0);
  }

  return result;
}

unint64_t sub_252A65648()
{
  result = qword_27F541FE8;
  if (!qword_27F541FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541FE8);
  }

  return result;
}

uint64_t sub_252A6569C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a6 || a6 == 3 || a6 == 2)
  {
  }

  return result;
}

unint64_t sub_252A65700()
{
  result = qword_27F541FF0;
  if (!qword_27F541FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541FF0);
  }

  return result;
}

unint64_t sub_252A65768()
{
  result = qword_27F541FF8;
  if (!qword_27F541FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541FF8);
  }

  return result;
}

uint64_t sub_252A657C0@<X0>(char *a1@<X8>)
{
  v60 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v55 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v55 - v10;
  v12 = sub_252E36324();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v58 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v55 - v17;
  v19 = sub_252A65F0C();
  v59 = v6;
  if (v19)
  {
    v20 = sub_252E37DB4();

    if ((v20 & 1) == 0)
    {
LABEL_12:
      if (sub_252A65F0C() == 1)
      {
      }

      else
      {
        v29 = sub_252E37DB4();

        if ((v29 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v30 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (!v30 || (v31 = *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue)) == 0 || (*(v31 + 32) & 1) != 0)
      {
LABEL_23:
        if (sub_252A65F0C() > 1u)
        {

          v36 = v13;
        }

        else
        {
          v35 = sub_252E37DB4();

          v36 = v13;
          if ((v35 & 1) == 0)
          {
LABEL_36:
            if (*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue))
            {
              return sub_252BD646C(v60);
            }

            else
            {
              return (*(v36 + 56))(v60, 1, 1, v12);
            }
          }
        }

        v37 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
        if (v37)
        {
          sub_252956C1C(v37 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v9);
          v38 = *(v36 + 48);
          if (v38(v9, 1, v12) != 1)
          {
            v39 = v58;
            v56 = *(v36 + 32);
            v57 = v36 + 32;
            v56(v58, v9, v12);
            v40 = sub_252E36304();
            v42 = v41;
            v43 = qword_27F53F2C8;

            if (v43 != -1)
            {
              swift_once();
            }

            v44 = off_27F541CF8;
            if (*(off_27F541CF8 + 2) && (v45 = sub_252A44A10(v40, v42), (v46 & 1) != 0))
            {
              v47 = v45;

              v48 = (v44[7] + v47);
            }

            else
            {
              v48 = &v62;
              v49._countAndFlagsBits = v40;
              v49._object = v42;
              StateSemantic.init(rawValue:)(v49);
            }

            v50 = v59;
            if (*v48 == 77)
            {
              v51 = *(v36 + 56);
              v51(v59, 1, 1, v12);
            }

            else
            {
              v61 = *v48;
              StateSemantic.rawValue.getter();
              sub_252E37024();

              v51 = *(v36 + 56);
              v51(v50, 0, 1, v12);
            }

            if (v38(v50, 1, v12) == 1)
            {
              sub_252BD646C(v60);
              (*(v36 + 8))(v39, v12);
              result = v38(v50, 1, v12);
              if (result != 1)
              {
                return sub_25293847C(v50, &qword_27F540298, &unk_252E3C270);
              }
            }

            else
            {
              (*(v36 + 8))(v39, v12);
              v52 = v60;
              v56(v60, v50, v12);
              return (v51)(v52, 0, 1, v12);
            }

            return result;
          }
        }

        else
        {
          (*(v36 + 56))(v9, 1, 1, v12);
        }

        sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);
        goto LABEL_36;
      }

      v32 = *(v31 + 24);
      result = sub_252A481A4(v1 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
      if ((~*&v32 & 0x7FF0000000000000) != 0)
      {
        if (v32 > -9.22337204e18)
        {
          if (v32 < 9.22337204e18)
          {
            sub_252A448D0(result, v33 & 1, v32, v11);
            v34 = v13;
            if ((*(v13 + 48))(v11, 1, v12) != 1)
            {
              v53 = *(v13 + 32);
              v53(v18, v11, v12);
              v54 = v60;
              v53(v60, v18, v12);
              return (*(v34 + 56))(v54, 0, 1, v12);
            }

            sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
            goto LABEL_23;
          }

LABEL_51:
          __break(1u);
          return result;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_51;
    }
  }

  else
  {
  }

  v21 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
  if (!v21)
  {
    goto LABEL_12;
  }

  v22 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
  v23 = sub_252A481A4(v1 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
  if (v22)
  {
    v25 = 256;
  }

  else
  {
    v25 = 0;
  }

  v26 = v60;
  v27 = v25 & 0xFFFE | v24 & 1;

  return sub_252A44790(v23, v27, v26);
}

uint64_t sub_252A65F0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
  if (!v5)
  {
    v9 = sub_252E36324();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
    return 0;
  }

  sub_252956C1C(v5 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v4);
  v6 = sub_252E36324();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
  if (v7 == 1)
  {
    return *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue) != 0;
  }

  return 2;
}

uint64_t sub_252A6608C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - v2;
  sub_252A657C0(&v12 - v2);
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);
    v6 = 0;
  }

  else
  {
    v7 = sub_252E36304();
    v9 = v8;
    (*(v5 + 8))(v3, v4);
    if (v7 == 6710895 && v9 == 0xE300000000000000)
    {

      v6 = 1;
    }

    else
    {
      v6 = sub_252E37DB4();
    }
  }

  return v6 & 1;
}

uint64_t sub_252A66208()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  sub_252A657C0(&v21 - v5);
  v7 = sub_252E36324();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v6, 1, v7) == 1)
  {
    sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
  }

  else
  {
    v11 = sub_252E36304();
    v13 = v12;
    (*(v8 + 8))(v6, v7);
    if (v11 == 0x64656B636F6CLL && v13 == 0xE600000000000000)
    {
LABEL_16:

LABEL_17:
      v10 = 1;
      return v10 & 1;
    }

    v15 = sub_252E37DB4();

    if (v15)
    {
      goto LABEL_17;
    }
  }

  sub_252A657C0(v4);
  if (v9(v4, 1, v7) != 1)
  {
    v16 = sub_252E36304();
    v18 = v17;
    (*(v8 + 8))(v4, v7);
    if (v16 != 0x676E696B636F6CLL || v18 != 0xE700000000000000)
    {
      v10 = sub_252E37DB4();

      return v10 & 1;
    }

    goto LABEL_16;
  }

  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
  v10 = 0;
  return v10 & 1;
}

uint64_t sub_252A66478()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  sub_252A657C0(&v21 - v5);
  v7 = sub_252E36324();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v6, 1, v7) == 1)
  {
    sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
  }

  else
  {
    v11 = sub_252E36304();
    v13 = v12;
    (*(v8 + 8))(v6, v7);
    if (v11 == 0x6465736F6C63 && v13 == 0xE600000000000000)
    {
LABEL_16:

LABEL_17:
      v10 = 1;
      return v10 & 1;
    }

    v15 = sub_252E37DB4();

    if (v15)
    {
      goto LABEL_17;
    }
  }

  sub_252A657C0(v4);
  if (v9(v4, 1, v7) != 1)
  {
    v16 = sub_252E36304();
    v18 = v17;
    (*(v8 + 8))(v4, v7);
    if (v16 != 0x676E69736F6C63 || v18 != 0xE700000000000000)
    {
      v10 = sub_252E37DB4();

      return v10 & 1;
    }

    goto LABEL_16;
  }

  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
  v10 = 0;
  return v10 & 1;
}

uint64_t sub_252A666E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v37 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v37 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  sub_252A657C0(&v37 - v12);
  v14 = sub_252E36324();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v13, 1, v14) == 1)
  {
    sub_25293847C(v13, &qword_27F540298, &unk_252E3C270);
  }

  else
  {
    v37 = v5;
    v38 = v0;
    v18 = sub_252E36304();
    v20 = v19;
    (*(v15 + 8))(v13, v14);
    if (v18 == 0x64656D7261 && v20 == 0xE500000000000000)
    {
      goto LABEL_29;
    }

    v22 = sub_252E37DB4();

    v5 = v37;
    v0 = v38;
    if (v22)
    {
      goto LABEL_30;
    }
  }

  sub_252A657C0(v11);
  if (v16(v11, 1, v14) == 1)
  {
    sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
  }

  else
  {
    v38 = v0;
    v23 = sub_252E36304();
    v25 = v24;
    (*(v15 + 8))(v11, v14);
    if (v23 == 0x77615F64656D7261 && v25 == 0xEA00000000007961)
    {
      goto LABEL_29;
    }

    v27 = sub_252E37DB4();

    if (v27)
    {
      goto LABEL_30;
    }
  }

  sub_252A657C0(v8);
  if (v16(v8, 1, v14) == 1)
  {
    sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
    goto LABEL_7;
  }

  v28 = sub_252E36304();
  v30 = v29;
  (*(v15 + 8))(v8, v14);
  if (v28 == 0x74735F64656D7261 && v30 == 0xEA00000000007961)
  {
LABEL_29:

LABEL_30:
    v17 = 1;
    return v17 & 1;
  }

  v32 = sub_252E37DB4();

  if (v32)
  {
    goto LABEL_30;
  }

LABEL_7:
  sub_252A657C0(v5);
  if (v16(v5, 1, v14) != 1)
  {
    v33 = sub_252E36304();
    v35 = v34;
    (*(v15 + 8))(v5, v14);
    if (v33 != 0x696E5F64656D7261 || v35 != 0xEB00000000746867)
    {
      v17 = sub_252E37DB4();

      return v17 & 1;
    }

    goto LABEL_29;
  }

  sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_252A66B38()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_252956C1C(v1 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, &v9 - v4);
  v6 = sub_252E36324();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
    sub_252E37EE4();
  }

  else
  {
    sub_252E36304();
    (*(v7 + 8))(v5, v6);
    sub_252E37EE4();
    sub_252E37044();
  }

  if (!*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue))
  {
    return sub_252E37EE4();
  }

  sub_252E37EE4();
  return HomeAutomationEntityStateValue.hash(into:)();
}

uint64_t sub_252A66CE4()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252A66B38();
  return sub_252E37F14();
}

uint64_t sub_252A66D4C()
{
  sub_252E37EC4();
  v1 = *v0;
  sub_252A66B38();
  return sub_252E37F14();
}

uint64_t sub_252A66DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v45 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v42[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v47 = &v42[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v42[-v20];
  v22 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
  v23 = *(v19 + 48);
  v48 = a1;
  sub_252956C1C(a1 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, &v42[-v20]);
  v46 = a2;
  sub_252956C1C(a2 + v22, &v21[v23]);
  v24 = *(v5 + 48);
  if (v24(v21, 1, v4) == 1)
  {
    if (v24(&v21[v23], 1, v4) == 1)
    {
      v44 = v8;
      sub_25293847C(v21, &qword_27F540298, &unk_252E3C270);
LABEL_11:
      v29 = *(v48 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      v30 = v46;
      v31 = *(v46 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (v29)
      {
        if (!v31)
        {
          goto LABEL_8;
        }

        v32 = *(v46 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);

        v33 = _s22HomeAutomationInternal0aB16EntityStateValueC2eeoiySbAC_ACtFZ_0(v29, v31);

        if ((v33 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else if (v31)
      {
        goto LABEL_8;
      }

      v34 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType;
      v35 = *(v15 + 48);
      v36 = v47;
      sub_252956C1C(v48 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType, v47);
      sub_252956C1C(v30 + v34, &v36[v35]);
      if (v24(v36, 1, v4) == 1)
      {
        if (v24(&v47[v35], 1, v4) == 1)
        {
          sub_25293847C(v47, &qword_27F540298, &unk_252E3C270);
          v26 = 1;
          return v26 & 1;
        }
      }

      else
      {
        v37 = v47;
        v38 = v45;
        sub_252956C1C(v47, v45);
        if (v24(&v37[v35], 1, v4) != 1)
        {
          v39 = v47;
          v40 = v44;
          (*(v5 + 32))(v44, &v47[v35], v4);
          sub_252A67350(&qword_27F540760, MEMORY[0x277D55C48]);
          v26 = sub_252E36EF4();
          v41 = *(v5 + 8);
          v41(v40, v4);
          v41(v38, v4);
          sub_25293847C(v39, &qword_27F540298, &unk_252E3C270);
          return v26 & 1;
        }

        (*(v5 + 8))(v38, v4);
      }

      v25 = v47;
      goto LABEL_7;
    }
  }

  else
  {
    sub_252956C1C(v21, v14);
    if (v24(&v21[v23], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v21[v23], v4);
      sub_252A67350(&qword_27F540760, MEMORY[0x277D55C48]);
      v43 = sub_252E36EF4();
      v28 = *(v5 + 8);
      v44 = v8;
      v28();
      (v28)(v14, v4);
      sub_25293847C(v21, &qword_27F540298, &unk_252E3C270);
      if ((v43 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v14, v4);
  }

  v25 = v21;
LABEL_7:
  sub_25293847C(v25, &qword_27F540758, &unk_252E4D160);
LABEL_8:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_252A67350(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252A673AC(char *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = a1;
  v3 = 32;
  v4 = MEMORY[0x277D84F90];
  v5 = *(a1 + 2);
  while (1)
  {
    memcpy(__dst, &v2[v3], sizeof(__dst));
    if (sub_252A13FE0())
    {
      break;
    }

    v3 += 504;
    if (!--v5)
    {
      return v4;
    }
  }

  if (qword_27F53F520 != -1)
  {
LABEL_24:
    swift_once();
  }

  v7 = sub_252E36AD4();
  __swift_project_value_buffer(v7, qword_27F544E08);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000042, 0x8000000252E751E0);
  v8 = MEMORY[0x2530AD730](v2, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v8);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000097, 0x8000000252E75230);

  v9 = 0;
  v10 = v2 + 32;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v2 = &v10[504 * v9];
    for (i = v9; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      memcpy(__dst, v2, sizeof(__dst));
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_23;
      }

      memcpy(v16, v2, sizeof(v16));
      sub_2529353AC(__dst, &v15);
      if (sub_252A13FE0())
      {
        break;
      }

      sub_252935408(__dst);
      v2 += 504;
      if (v9 == v1)
      {
        return v4;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2529AA480(0, *(v4 + 16) + 1, 1);
      v4 = v17;
    }

    v14 = *(v4 + 16);
    v13 = *(v4 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_2529AA480((v13 > 1), v14 + 1, 1);
      v4 = v17;
    }

    *(v4 + 16) = v14 + 1;
    memcpy((v4 + 504 * v14 + 32), __dst, 0x1F8uLL);
  }

  while (v9 != v1);
  return v4;
}

uint64_t sub_252A67638(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_25293F638(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252A677A8(uint64_t a1, uint64_t a2, SEL *a3, unint64_t *a4, uint64_t *a5)
{
  v8 = [*v5 *a3];
  sub_25293F638(0, a4, a5);
  v9 = sub_252E37264();

  return v9;
}

id sub_252A6789C()
{
  v1 = [*v0 currentUser];

  return v1;
}

id sub_252A67900()
{
  v1 = [*v0 owner];

  return v1;
}

void sub_252A6794C(void *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_252E32E44();
  v5 = [v3 accessoryWithSiriEndpointIdentifier_];

  *a1 = v5;
}

uint64_t sub_252A679D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v10 = *v7;
  v13[4] = a2;
  v13[5] = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2529E0210;
  v13[3] = a6;
  v11 = _Block_copy(v13);

  [v10 *a7];
  _Block_release(v11);
}

uint64_t sub_252A67AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252A58A5C;
  aBlock[3] = &block_descriptor_87;
  v9 = _Block_copy(aBlock);
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2529E0210;
  v12[3] = &block_descriptor_90;
  v10 = _Block_copy(v12);

  [v5 retrieveResultsWithReportingContext:a1 progressHandler:v9 completionHandler:v10];
  _Block_release(v10);
  _Block_release(v9);
}

id sub_252A67BEC@<X0>(void *a1@<X8>)
{
  result = [*v1 roomForEntireHome];
  *a1 = result;
  return result;
}

id sub_252A67C28(uint64_t a1)
{
  v2 = [*v1 homeAccessControlForUser_];

  return v2;
}

uint64_t sub_252A67C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_252BF09C4;
  v8[3] = &block_descriptor_84;
  v6 = _Block_copy(v8);

  [v5 addEventTriggerFromBuilder:a1 completionHandler:v6];
  _Block_release(v6);
}

uint64_t sub_252A67D20(uint64_t a1)
{
  result = sub_252A67638(&qword_27F542048, &qword_2814B0210, 0x277CD1A60);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252A67D74(uint64_t a1)
{
  result = sub_252A67638(&qword_27F542050, &qword_2814B0200, 0x277CD1D88);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252A67DC8(uint64_t a1)
{
  result = sub_252A67638(&qword_27F542058, &qword_2814B01E8, 0x277CD1F50);
  *(a1 + 8) = result;
  return result;
}

id sub_252A67EA4@<X0>(void *a1@<X8>)
{
  result = [*v1 home];
  *a1 = result;
  return result;
}

id sub_252A67EE0@<X0>(void *a1@<X8>)
{
  result = [*v1 room];
  *a1 = result;
  return result;
}

id sub_252A68008@<X0>(void *a1@<X8>)
{
  result = [*v1 category];
  *a1 = result;
  return result;
}

id sub_252A68044()
{
  v1 = [*v0 matterNodeID];

  return v1;
}

uint64_t sub_252A6807C(uint64_t a1)
{
  result = sub_252A67638(&qword_27F542088, &qword_2814B0270, 0x277CD1650);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252A6816C(uint64_t a1)
{
  result = sub_252A67638(&qword_27F542098, &qword_27F540478, 0x277CD1D90);
  *(a1 + 8) = result;
  return result;
}

id sub_252A681E0@<X0>(void *a1@<X8>)
{
  result = [*v1 service];
  *a1 = result;
  return result;
}

uint64_t sub_252A6821C()
{
  v1 = [*v0 properties];
  v2 = sub_252E37264();

  return v2;
}

double sub_252A6826C@<D0>(_OWORD *a1@<X8>)
{
  if ([*v1 value])
  {
    sub_252E377F4();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

id sub_252A682DC()
{
  v1 = [*v0 metadata];

  return v1;
}

uint64_t sub_252A68314(uint64_t a1)
{
  result = sub_252A67638(&qword_27F5420A0, &qword_27F5412E0, 0x277CD1970);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252A68388(uint64_t a1)
{
  result = sub_252A67638(&qword_27F5420A8, &qword_27F542070, 0x277CD1680);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252A68420()
{
  v1 = [*v0 actions];
  sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
  sub_252A67638(&qword_27F53FBB0, &qword_27F5412F0, 0x277CD17F8);
  v2 = sub_252E373A4();

  return v2;
}

uint64_t sub_252A68544(uint64_t a1)
{
  result = sub_252A67638(&qword_27F5420B8, &unk_2814B0260, 0x277CD1800);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252A68598(uint64_t a1)
{
  result = sub_252A67638(&qword_27F53FBB0, &qword_27F5412F0, 0x277CD17F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252A685EC(uint64_t a1)
{
  result = sub_252A67638(&qword_27F5420C0, &qword_27F540170, 0x277CD1760);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252A68640(uint64_t a1)
{
  result = sub_252A67638(&qword_27F5420C8, &qword_27F542020, 0x277CD1D68);
  *(a1 + 8) = result;
  return result;
}

id sub_252A686D4(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2)
  {
    a3 = 0;
  }

  v4 = *v3;
  return sub_252A68700(a1, a2, a3);
}

id sub_252A68700(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = aBlock - v10;
  sub_2529EAFDC(a1, aBlock - v10);
  v12 = sub_252E32E04();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v14 = sub_252E32D64();
    (*(v13 + 8))(v11, v12);
  }

  if (a2)
  {
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2529E0210;
    aBlock[3] = &block_descriptor_78;
    a2 = _Block_copy(aBlock);
  }

  v15 = [v4 _refreshBeforeDate_completionHandler_];
  _Block_release(a2);

  return v15;
}

id sub_252A6892C()
{
  v1 = [*v0 policy];

  return v1;
}

uint64_t sub_252A68978(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v9 = *a1;
  v10 = *v7;
  v13[4] = a2;
  v13[5] = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2529E0210;
  v13[3] = a6;
  v11 = _Block_copy(v13);

  [v10 *a7];
  _Block_release(v11);
}

uint64_t sub_252A68A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *v3;
  v11[4] = sub_252A6AF00;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_252BF09C4;
  v11[3] = &block_descriptor_72;
  v9 = _Block_copy(v11);

  [v8 addActionSetOfType:a1 completionHandler:v9];
  _Block_release(v9);
}

uint64_t sub_252A68B54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_252E36F04();
  if (a4)
  {
    a4 = sub_252E36F04();
  }

  v13[4] = a5;
  v13[5] = a6;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2529E0210;
  v13[3] = &block_descriptor_63;
  v11 = _Block_copy(v13);

  [v6 updateName:v10 configuredName:a4 completionHandler:v11];
  _Block_release(v11);
}

void sub_252A68C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *v3;
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_2529E0210;
    v7[3] = &block_descriptor_60;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
    v5 = *v3;
  }

  [v5 updatePolicy:a1 completionHandler:v6];
  _Block_release(v6);
}

uint64_t sub_252A68DD8@<X0>(SEL *a1@<X2>, void (*a2)(void)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v8 = [*v4 *a1];
  if (v8)
  {
    v9 = v8;
    a2();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

uint64_t sub_252A68E90(uint64_t a1)
{
  result = sub_252A67638(&qword_27F5420D0, &qword_27F5420D8, 0x277CD1EB0);
  *(a1 + 8) = result;
  return result;
}

id sub_252A68F1C()
{
  v1 = [*v0 predicate];

  return v1;
}

uint64_t sub_252A68F74(uint64_t a1, uint64_t a2, SEL *a3, void (*a4)(void))
{
  v6 = [*v4 *a3];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  a4(0);
  v8 = sub_252E37264();

  return v8;
}

uint64_t sub_252A69024(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v10 = *v7;
  v13[4] = a2;
  v13[5] = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2529E0210;
  v13[3] = a6;
  v11 = _Block_copy(v13);

  [v10 *a7];
  _Block_release(v11);
}

uint64_t sub_252A690E0(uint64_t a1)
{
  result = sub_252A67638(&qword_27F5420E0, &qword_27F5420E8, 0x277CD19F8);
  *(a1 + 8) = result;
  return result;
}

void sub_252A69134(uint64_t a1, uint64_t a2, SEL *a3, void (*a4)(void))
{
  v6 = [*v4 *a3];
  a4();
}

id sub_252A692C0()
{
  v1 = [*v0 clientContext];

  return v1;
}

void sub_252A692F8(void *a1)
{
  [*v1 setClientContext_];
}

void (*sub_252A69340(void *a1))(id *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 clientContext];
  return sub_252A6939C;
}

void sub_252A6939C(id *a1)
{
  v1 = *a1;
  [a1[1] setClientContext_];
}

uint64_t (*sub_252A693E4())()
{
  v1 = [*v0 progressHandler];
  *(swift_allocObject() + 16) = v1;
  return sub_252A6B010;
}

void sub_252A6944C(uint64_t a1, uint64_t a2)
{
  sub_25293F638(0, &qword_27F545340, 0x277CD1D70);
  v3 = sub_252E37254();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_252A694C8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_252A58A5C;
  v6[3] = &block_descriptor_50;
  v4 = _Block_copy(v6);
  [v3 setProgressHandler_];
  _Block_release(v4);
}

uint64_t (*sub_252A69568(uint64_t **a1))()
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
  v3[4] = sub_252A695E0(v3);
  return sub_252A695DC;
}

void (*sub_252A695E0(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 progressHandler];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v5 + 48) = sub_252A6AEF8;
  *(v5 + 56) = v7;
  return sub_252A6969C;
}

void sub_252A6969C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 56);
  v3 = *(*a1 + 64);
  v2[4] = *(*a1 + 48);
  v2[5] = v4;
  *v2 = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_252A58A5C;
  if (a2)
  {
    v2[3] = &block_descriptor_44;
    v5 = _Block_copy(v2);
    v6 = v2[5];

    [v3 setProgressHandler_];
    _Block_release(v5);
    v7 = v2[7];
  }

  else
  {
    v2[3] = &block_descriptor_47;
    v8 = _Block_copy(v2);
    v9 = v2[5];

    [v3 setProgressHandler_];
    _Block_release(v8);
  }

  free(v2);
}

uint64_t (*sub_252A697BC())()
{
  v1 = [*v0 completionHandler];
  *(swift_allocObject() + 16) = v1;
  return sub_252A6B00C;
}

void sub_252A69824(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_252E32C44();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_252A69888(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2529E0210;
  v6[3] = &block_descriptor_34;
  v4 = _Block_copy(v6);
  [v3 setCompletionHandler_];
  _Block_release(v4);
}

uint64_t (*sub_252A69928(uint64_t **a1))()
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
  v3[4] = sub_252A699E4(v3);
  return sub_252A6AFD8;
}

void sub_252A6999C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_252A699E4(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 completionHandler];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v5 + 48) = sub_252A6AED8;
  *(v5 + 56) = v7;
  return sub_252A69AA0;
}

void sub_252A69AA0(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 56);
  v3 = *(*a1 + 64);
  v2[4] = *(*a1 + 48);
  v2[5] = v4;
  *v2 = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_2529E0210;
  if (a2)
  {
    v2[3] = &block_descriptor_6;
    v5 = _Block_copy(v2);
    v6 = v2[5];

    [v3 setCompletionHandler_];
    _Block_release(v5);
    v7 = v2[7];
  }

  else
  {
    v2[3] = &block_descriptor_31;
    v8 = _Block_copy(v2);
    v9 = v2[5];

    [v3 setCompletionHandler_];
    _Block_release(v8);
  }

  free(v2);
}

id sub_252A69BC0()
{
  v1 = [*v0 reportContext];

  return v1;
}

void sub_252A69BF8(void *a1)
{
  [*v1 setReportContext_];
}

void (*sub_252A69C40(void *a1))(id *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 reportContext];
  return sub_252A69C9C;
}

void sub_252A69C9C(id *a1)
{
  v1 = *a1;
  [a1[1] setReportContext_];
}

id sub_252A69D00@<X0>(void *a1@<X8>)
{
  result = [*v1 actionSet];
  *a1 = result;
  return result;
}

id sub_252A69D3C()
{
  v1 = [*v0 value];

  return v1;
}

id sub_252A69D74()
{
  v1 = [*v0 error];

  return v1;
}

id sub_252A69DF0()
{
  v1 = [*v0 delegate];

  return v1;
}

id sub_252A69E28@<X0>(void *a1@<X8>)
{
  result = [*v1 settings];
  *a1 = result;
  return result;
}

uint64_t sub_252A69E64(uint64_t a1)
{
  result = sub_252A67638(&qword_27F542100, &qword_27F542108, 0x277CD1B18);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252A69EEC(uint64_t a1)
{
  result = sub_252A67638(&qword_27F542110, &qword_27F5420F8, 0x277CD1B28);
  *(a1 + 8) = result;
  return result;
}

id sub_252A69F40()
{
  v1 = [*v0 reportDomain];

  return v1;
}

uint64_t sub_252A69F98(uint64_t a1, uint64_t a2, SEL *a3, uint64_t (*a4)(void))
{
  v6 = [*v4 *a3];
  v7 = a4();

  return v7;
}

id sub_252A6A004()
{
  v1 = [*v0 minimumValue];

  return v1;
}

id sub_252A6A03C()
{
  v1 = [*v0 maximumValue];

  return v1;
}

id sub_252A6A074()
{
  v1 = [*v0 stepValue];

  return v1;
}

id sub_252A6A0AC()
{
  v1 = [*v0 maxLength];

  return v1;
}

uint64_t sub_252A6A108(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_252E36F34();

  return v6;
}

uint64_t sub_252A6A16C()
{
  v1 = [*v0 validValues];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
  v3 = sub_252E37264();

  return v3;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252A6AF00(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

void sub_252A6B014(void *a1, void (*a2)(void))
{
  v3 = v2;
  type metadata accessor for HomeAutomationUserDefaults();
  inited = swift_initStackObject();
  v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v8 = sub_252E36F04();
  v9 = [v7 initWithSuiteName_];

  *(inited + 16) = v9;
  v10 = sub_2529AF8E4();
  LOBYTE(inited) = v11;

  if (inited)
  {
    v10 = 600;
  }

  else
  {
    if (qword_27F53F510 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544DD8);
    v13 = sub_252E36AC4();
    v14 = sub_252E374C4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v10;
      _os_log_impl(&dword_252917000, v13, v14, "Overriding initial sync timeout to %ld msec", v15, 0xCu);
      MEMORY[0x2530AED00](v15, -1, -1);
    }
  }

  v16 = sub_252B84730(a1, *(v3 + 16), *(v3 + 24), v10, 0, 15000, 0);
  a2();
}

uint64_t sub_252A6B1FC()
{
  v0 = sub_252E32E84();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AsyncDefaultHandleDelegate();
  v5 = swift_allocObject();
  sub_252E32E74();
  v6 = sub_252E32E24();
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  *(v5 + 16) = v6;
  *(v5 + 24) = v8;
  return v5;
}

uint64_t sub_252A6B2EC(void *a1)
{
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v2 + 16), v108);

  __swift_project_boxed_opaque_existential_1(v108, v109);
  v3 = sub_252E338F4();
  __swift_destroy_boxed_opaque_existential_1(v108);
  if ((v3 & 1) == 0 || !sub_252C4B5D4())
  {
    return 0;
  }

  type metadata accessor for HomeStore();
  v4 = static HomeStore.shared.getter();
  v5 = v4[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v5 != 2 && (v5 & 1) == 0 || (v6 = [a1 filters]) == 0)
  {

    return 0;
  }

  v7 = v6;
  type metadata accessor for HomeFilter();
  v8 = sub_252E37264();

  v9 = [a1 userTask];
  v10 = HomeStore.services(matching:supporting:)(v8, v9);
  v12 = v11;

  if (v12)
  {
    v13 = v10;
    v14 = 1;
    goto LABEL_90;
  }

  v15 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
    goto LABEL_99;
  }

  v16 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_89;
  }

  do
  {
    v107 = v16;
    v17 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v17 + 288), v108);

    v18 = v109;
    v19 = v110;
    __swift_project_boxed_opaque_existential_1(v108, v109);
    v20 = (*(v19 + 72))(v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v108);
    if ((v20 & 1) == 0)
    {
      goto LABEL_32;
    }

    v21 = 0;
    v22 = v15;
    while ((v10 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x2530ADF00](v21, v10);
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_93;
      }

LABEL_16:
      v25 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
      v26 = [*(v23 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v27 = sub_252E36F34();
      v29 = v28;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v30 = off_27F546230;
      if (!*(off_27F546230 + 2) || (v31 = sub_252A44A10(v27, v29), (v32 & 1) == 0))
      {

LABEL_23:
        v34 = [*(v23 + v25) serviceType];
        v35 = sub_252E36F34();
        v37 = v36;

        if (v30[2])
        {
          v38 = sub_252A44A10(v35, v37);
          if (v39)
          {
            v40 = *(v30[7] + 8 * v38);

            if (v40 != 2)
            {
              goto LABEL_32;
            }

            goto LABEL_26;
          }
        }

LABEL_32:
        v41 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
        sub_252929E74((v41 + 288), v108);

        v42 = v109;
        v43 = v110;
        __swift_project_boxed_opaque_existential_1(v108, v109);
        v44 = (*(v43 + 80))(v42, v43);
        __swift_destroy_boxed_opaque_existential_1(v108);
        v45 = v15;
        if (v44)
        {
          v46 = 0;
          while (1)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v47 = MEMORY[0x2530ADF00](v46, v10);
              v15 = v46 + 1;
              if (__OFADD__(v46, 1))
              {
                goto LABEL_95;
              }
            }

            else
            {
              if (v46 >= *(v45 + 16))
              {
                goto LABEL_96;
              }

              v47 = *(v10 + 8 * v46 + 32);

              v15 = v46 + 1;
              if (__OFADD__(v46, 1))
              {
                goto LABEL_95;
              }
            }

            v48 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
            v49 = [*(v47 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
            v50 = sub_252E36F34();
            v52 = v51;

            if (qword_27F53F8B8 != -1)
            {
              swift_once();
            }

            v53 = off_27F546230;
            if (*(off_27F546230 + 2) && (v54 = sub_252A44A10(v50, v52), (v55 & 1) != 0))
            {
              v56 = *(v53[7] + 8 * v54);

              if (v56 == 1)
              {

                goto LABEL_52;
              }
            }

            else
            {
            }

            v57 = [*(v47 + v48) serviceSubtype];
            if (v57)
            {
              v58 = v57;
              v59 = sub_252E36F34();
              v61 = v60;

              if (!v53[2])
              {
                goto LABEL_57;
              }

              v62 = v59;
            }

            else
            {
              v63 = [*(v47 + v48) associatedServiceType];
              if (!v63)
              {

                break;
              }

              v64 = v63;
              v65 = sub_252E36F34();
              v61 = v66;

              if (!v53[2])
              {
                goto LABEL_57;
              }

              v62 = v65;
            }

            v67 = sub_252A44A10(v62, v61);
            if ((v68 & 1) == 0)
            {
LABEL_57:

              break;
            }

            v69 = *(v53[7] + 8 * v67);

            if (v69 != 1)
            {
              break;
            }

LABEL_52:
            ++v46;
            if (v15 == v107)
            {
              goto LABEL_87;
            }
          }
        }

        v70 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
        sub_252929E74((v70 + 288), v108);

        v71 = v109;
        v72 = v110;
        __swift_project_boxed_opaque_existential_1(v108, v109);
        v73 = (*(v72 + 72))(v71, v72);
        __swift_destroy_boxed_opaque_existential_1(v108);
        if ((v73 & 1) == 0)
        {
          goto LABEL_89;
        }

        v74 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
        sub_252929E74((v74 + 288), v108);

        v75 = v109;
        v76 = v110;
        __swift_project_boxed_opaque_existential_1(v108, v109);
        v77 = (*(v76 + 80))(v75, v76);
        __swift_destroy_boxed_opaque_existential_1(v108);
        if ((v77 & 1) == 0)
        {
          goto LABEL_89;
        }

        v78 = 0;
        v79 = &off_279711000;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v80 = MEMORY[0x2530ADF00](v78, v10);
            v81 = v78 + 1;
            if (__OFADD__(v78, 1))
            {
              goto LABEL_97;
            }
          }

          else
          {
            if (v78 >= *(v45 + 16))
            {
              goto LABEL_98;
            }

            v80 = *(v10 + 8 * v78 + 32);

            v81 = v78 + 1;
            if (__OFADD__(v78, 1))
            {
              goto LABEL_97;
            }
          }

          v15 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
          v82 = [*(v80 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) v79[202]];
          v83 = sub_252E36F34();
          v85 = v84;

          if (qword_27F53F8B8 != -1)
          {
            swift_once();
          }

          v86 = off_27F546230;
          if (*(off_27F546230 + 2) && (v87 = sub_252A44A10(v83, v85), (v88 & 1) != 0))
          {
            v89 = *(v86[7] + 8 * v87);

            if (v89 == 1)
            {
              break;
            }
          }

          else
          {
          }

          v90 = sub_252CD94E0();
          if ((v91 & 1) == 0 && v90 == 1)
          {
            break;
          }

          v92 = [*(v80 + v15) v79[202]];
          v93 = sub_252E36F34();
          v95 = v94;

          if (v86[2] && (v96 = sub_252A44A10(v93, v95), (v97 & 1) != 0))
          {
            v98 = *(v86[7] + 8 * v96);

            v79 = &off_279711000;
            if (v98 == 6)
            {
              break;
            }
          }

          else
          {

            v79 = &off_279711000;
          }

          v99 = [*(v80 + v15) v79[202]];
          v100 = sub_252E36F34();
          v102 = v101;

          if (!v86[2] || (v103 = sub_252A44A10(v100, v102), (v104 & 1) == 0))
          {

            goto LABEL_89;
          }

          v105 = *(v86[7] + 8 * v103);

          v79 = &off_279711000;
          if (v105 != 2)
          {
            goto LABEL_89;
          }

LABEL_62:
          ++v78;
          if (v81 == v107)
          {
            goto LABEL_87;
          }
        }

        goto LABEL_62;
      }

      v33 = *(v30[7] + 8 * v31);

      if (v33 != 6)
      {
        goto LABEL_23;
      }

LABEL_26:
      ++v21;
      v22 = v15;
      if (v24 == v107)
      {
LABEL_87:
        sub_252929F10(v10, 0);
        return 1;
      }
    }

    if (v21 >= *(v22 + 16))
    {
      goto LABEL_94;
    }

    v23 = *(v10 + 8 * v21 + 32);

    v24 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      goto LABEL_16;
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    v16 = sub_252E378C4();
  }

  while (v16);
LABEL_89:
  v13 = v10;
  v14 = 0;
LABEL_90:
  sub_252929F10(v13, v14);
  return 0;
}

uint64_t sub_252A6BBB4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_55;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  result = v2;
  if (v2)
  {
    if (v2 == 1)
    {
      return 0;
    }

    else
    {
      while (1)
      {
        v4 = 0;
        v5 = a1 & 0xC000000000000001;
        do
        {
          if (v5)
          {
            v6 = MEMORY[0x2530ADF00](v4, a1);
          }

          else
          {
            if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_50;
            }

            v6 = *(a1 + 8 * v4 + 32);
          }

          v7 = v6;
          v8 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v9 = [v6 outerDeviceName];
          if (!v9 || (v9, (v10 = [v7 homeEntityName]) == 0))
          {

            return 0;
          }

          ++v4;
        }

        while (v8 != v2);
        v41 = MEMORY[0x277D84F90];
        v11 = 0;
        while (1)
        {
          if (v5)
          {
            v12 = MEMORY[0x2530ADF00](v11, a1);
          }

          else
          {
            if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_52;
            }

            v12 = *(a1 + 8 * v11 + 32);
          }

          v13 = v12;
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          v15 = [v12 outerDeviceName];
          if (v15)
          {
            v17 = v15;
            v18 = sub_252E36F34();
            v20 = v19;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v41 = sub_2529F7A80(0, *(v41 + 2) + 1, 1, v41);
            }

            v22 = *(v41 + 2);
            v21 = *(v41 + 3);
            if (v22 >= v21 >> 1)
            {
              v41 = sub_2529F7A80((v21 > 1), v22 + 1, 1, v41);
            }

            *(v41 + 2) = v22 + 1;
            v23 = &v41[16 * v22];
            *(v23 + 4) = v18;
            *(v23 + 5) = v20;
            v16 = &off_279711000;
            if (v14 == v2)
            {
LABEL_31:
              v24 = sub_252DF88E4(v41);

              v25 = 0;
              v26 = MEMORY[0x277D84F90];
LABEL_32:
              v27 = v25;
              while (1)
              {
                if (v5)
                {
                  v28 = MEMORY[0x2530ADF00](v27, a1);
                }

                else
                {
                  if (v27 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_54;
                  }

                  v28 = *(a1 + 8 * v27 + 32);
                }

                v29 = v28;
                v25 = v27 + 1;
                if (__OFADD__(v27, 1))
                {
                  goto LABEL_53;
                }

                v30 = [v28 v16[289]];
                if (v30)
                {
                  v42 = v24;
                  v31 = v30;
                  v32 = sub_252E36F34();
                  v34 = v33;

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v26 = sub_2529F7A80(0, *(v26 + 2) + 1, 1, v26);
                  }

                  v36 = *(v26 + 2);
                  v35 = *(v26 + 3);
                  if (v36 >= v35 >> 1)
                  {
                    v26 = sub_2529F7A80((v35 > 1), v36 + 1, 1, v26);
                  }

                  *(v26 + 2) = v36 + 1;
                  v37 = &v26[16 * v36];
                  *(v37 + 4) = v32;
                  *(v37 + 5) = v34;
                  v16 = &off_279711000;
                  v24 = v42;
                  if (v25 != v2)
                  {
                    goto LABEL_32;
                  }

LABEL_46:
                  v38 = sub_252DF88E4(v26);

                  v39 = *(v24 + 16);

                  if (v39 == 1)
                  {
                    v40 = *(v38 + 16);

                    return v40 > 1;
                  }

                  return 0;
                }

                ++v27;
                if (v25 == v2)
                {
                  goto LABEL_46;
                }
              }
            }

            v11 = v14;
          }

          else
          {

            ++v11;
            v16 = &off_279711000;
            if (v14 == v2)
            {
              goto LABEL_31;
            }
          }
        }

LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        result = sub_252E378C4();
        if (!result)
        {
          break;
        }

        v2 = result;
        if (sub_252E378C4() == 1)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_252A6BF88@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v53 - v10;
  if (a2 == 7)
  {
    type metadata accessor for HomeStore();
    v12 = static HomeStore.shared.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_252E3C130;
    *(v13 + 32) = a1;
    v14 = a1;
    v15 = [a3 userTask];
    v16 = HomeStore.accessories(matching:supporting:)(v13, v15);
    v18 = v17;

    if (v18)
    {
      sub_252929F10(v16, 1);
      goto LABEL_30;
    }

    v65 = v11;
    if (v16 >> 62)
    {
      v19 = sub_252E378C4();
      if (v19 < 1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19 < 1)
      {
        goto LABEL_27;
      }
    }

    v62 = v16 >> 62;
    v63 = v14;
    v64 = a4;
    v70 = MEMORY[0x277D84F90];
    sub_2529AA420(0, v19, 0);
    v20 = 0;
    v21 = v70;
    v22 = v16 & 0xC000000000000001;
    do
    {
      if (v22)
      {
        v23 = MEMORY[0x2530ADF00](v20, v16);
      }

      else
      {
        v23 = *(v16 + 8 * v20 + 32);
      }

      v24 = (*(*v23 + 256))();

      v70 = v21;
      v26 = *(v21 + 16);
      v25 = *(v21 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        sub_2529AA420((v25 > 1), v26 + 1, 1);
        v21 = v70;
      }

      ++v20;
      *(v21 + 16) = v27;
      *(v21 + 8 * v26 + 32) = v24;
    }

    while (v19 != v20);
    v28 = sub_252C759A0(v21);

    v29 = *(v28 + 16);

    v30 = v29 == 1;
    v31 = v63;
    a4 = v64;
    if (!v30)
    {
      goto LABEL_27;
    }

    if (!v62)
    {
      if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

LABEL_19:
      if (v22)
      {
        v32 = MEMORY[0x2530ADF00](0, v16);
      }

      else
      {
        if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_35;
        }

        v32 = *(v16 + 32);
      }

      v22 = v65;
      sub_252929F10(v16, 0);
      (*(*v32 + 456))(&v70, v31, a3);
      v27 = v71;
      if (!v71)
      {

        goto LABEL_30;
      }

      v63 = v32;
      v20 = v70;
      v31 = v72;
      a3 = v73;

      sub_25293847C(&v70, &qword_27F541B80, &unk_252E4E7B0);
      if (qword_27F53F488 == -1)
      {
LABEL_24:
        v33 = sub_252E36AD4();
        __swift_project_value_buffer(v33, qword_27F544C40);
        v68 = 0;
        v69 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E75480);
        MEMORY[0x2530AD570](v20, v27);
        MEMORY[0x2530AD570](0x6F436E6F6369202CLL, 0xEC0000003A726F6CLL);
        v66 = v31;
        v67 = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
        sub_252E37AE4();
        v61 = v20;
        sub_252CC3D90(v68, v69, 0xD00000000000007ALL, 0x8000000252E753A0);

        v34 = type metadata accessor for DirectInvocationConfig();
        v35 = *(v34 - 8);
        v60 = v27;
        v36 = *(v35 + 56);
        v36(v22, 1, 1, v34);
        v37 = type metadata accessor for IconConfiguration();
        v57 = v37[5];
        v68 = 0;
        v69 = 0;
        sub_252E330C4();
        v55 = v37[6];
        LOBYTE(v68) = 0;
        sub_252E330C4();
        v62 = v37[9];
        LOBYTE(v68) = 48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
        sub_252E330C4();
        v56 = v31;
        v38 = v37[10];
        v68 = 0;
        v69 = 0;
        sub_252E330C4();
        v58 = v37[11];
        v68 = 0;
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
        sub_252E330C4();
        v39 = v37[12];
        v68 = 0;
        v69 = 0;
        sub_252E330C4();
        v40 = v37[13];
        v68 = 0;
        v69 = 0;
        sub_252E330C4();
        v54 = a3;
        v41 = v37[14];
        v36(a4 + v41, 1, 1, v34);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
        v43 = *(*(v42 - 8) + 8);
        v43(a4 + v38, v42);
        v68 = 0;
        v69 = 0;
        sub_252E330C4();
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
        (*(*(v44 - 8) + 8))(a4 + v55, v44);
        LOBYTE(v68) = 0;
        sub_252E330C4();
        v45 = v65;
        sub_2529D032C(v65, a4 + v41, &qword_27F540068, &qword_252E3BC90);
        v68 = v61;
        v69 = v60;
        sub_252E330C4();
        v43(a4 + v57, v42);
        v68 = v56;
        v69 = v54;
        sub_252E330C4();
        v43(a4 + v39, v42);
        v68 = 0;
        v69 = 0;
        sub_252E330C4();
        v43(a4 + v40, v42);
        v68 = 0;
        v69 = 0;
        sub_252E330C4();
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
        (*(*(v46 - 8) + 8))(a4 + v58, v46);
        v68 = 0;
        sub_252E330C4();
        v47 = v37[7];
        LOBYTE(v68) = 2;
        sub_252E330C4();
        v48 = v37[8];
        LOBYTE(v68) = 2;
        sub_252E330C4();
        LOBYTE(v68) = 48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
        sub_252E330F4();

        sub_25293847C(v45, &qword_27F540068, &qword_252E3BC90);
        return (*(*(v37 - 1) + 56))(a4, 0, 1, v37);
      }

LABEL_35:
      swift_once();
      goto LABEL_24;
    }

    if (sub_252E378C4())
    {
      goto LABEL_19;
    }

LABEL_27:
    sub_252929F10(v16, 0);
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v50 = sub_252E36AD4();
    __swift_project_value_buffer(v50, qword_27F544C40);
    sub_252CC3D90(0xD000000000000053, 0x8000000252E75420, 0xD00000000000007ALL, 0x8000000252E753A0);
  }

LABEL_30:
  v51 = type metadata accessor for IconConfiguration();
  v52 = *(*(v51 - 8) + 56);

  return v52(a4, 1, 1, v51);
}

uint64_t sub_252A6C93C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_252934738(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_252A6C9A8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_252A6C9A8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_252E37D74();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401E8, &unk_252E3C010);
        v5 = sub_252E372B4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_252A6CB94(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_252A6CAB0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_252A6CAB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_252E37DB4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 32);
      v15 = *(v12 + 16);
      result = *(v12 + 24);
      *(v12 + 24) = *v12;
      *(v12 + 40) = v15;
      *v12 = result;
      *(v12 + 8) = v14;
      v10 = v14;
      v12 -= 24;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_252A6CB94(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_105:
    v101 = *v101;
    if (!v101)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_252934564(v8);
      v8 = result;
    }

    v92 = v8 + 16;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v95 = &v8[16 * v93];
        v5 = *v95;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_252A6D1A0((v94 + 24 * *v95), (v94 + 24 * *v96), v94 + 24 * v97, v101);
        if (v4)
        {
        }

        if (v97 < v5)
        {
          goto LABEL_129;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_130;
        }

        *v95 = v5;
        *(v95 + 1) = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_131;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        v5 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 24 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 24 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = sub_252E37DB4();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 24 * v9 + 32);
        v17 = v16;
        do
        {
          result = v16[2];
          v19 = v17[3];
          v17 += 3;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_252E37DB4();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 0;
          v22 = 24 * v7;
          v23 = 24 * v9;
          v24 = v9;
          do
          {
            if (v24 != v7 + v21 - 1)
            {
              v30 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = (v30 + v23);
              v26 = v30 + v22;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v24;
            --v21;
            v22 -= 24;
            v23 += 24;
          }

          while (v24 < v7 + v21);
        }
      }
    }

    v31 = v5[1];
    if (v7 < v31)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v31)
        {
          v32 = v5[1];
        }

        else
        {
          v32 = v9 + a4;
        }

        if (v32 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v32)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252934578(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_252934578((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v47;
    v48 = &v8[16 * v46];
    *(v48 + 4) = v9;
    *(v48 + 5) = v7;
    v49 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_74:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v8[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v8[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v77 = &v8[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_88:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v8[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_95:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
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
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v89 = *&v8[16 * v88 + 32];
        v90 = *&v8[16 * v50 + 40];
        sub_252A6D1A0((*v5 + 24 * v89), (*v5 + 24 * *&v8[16 * v50 + 32]), *v5 + 24 * v90, v49);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_252934564(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = sub_2529344D8(v50);
        v47 = *(v8 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v8[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v8[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v8[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v33 = *v5;
  v34 = *v5 + 24 * v7 - 24;
  v99 = v9;
  v35 = v9 - v7;
LABEL_43:
  v36 = (v33 + 24 * v7);
  v37 = *v36;
  v38 = v36[1];
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = v37 == *v40 && v38 == *(v40 + 8);
    if (v41 || (result = sub_252E37DB4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v34 += 24;
      --v35;
      if (v7 != v32)
      {
        goto LABEL_43;
      }

      v7 = v32;
      v5 = a3;
      v9 = v99;
      goto LABEL_54;
    }

    if (!v33)
    {
      break;
    }

    v42 = *(v40 + 32);
    v43 = *(v40 + 16);
    v37 = *(v40 + 24);
    *(v40 + 24) = *v40;
    *(v40 + 40) = v43;
    *v40 = v37;
    *(v40 + 8) = v42;
    v38 = v42;
    v40 -= 24;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_252A6D1A0(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v15 && (sub_252E37DB4() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = *(v17 - 24);
      v19 = *(v17 - 16);
      v17 -= 24;
      v20 = v18 == *(v6 - 3) && v19 == *(v6 - 2);
      if (!v20 && (sub_252E37DB4() & 1) != 0)
      {
        if ((v5 + 24) != v6)
        {
          v22 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 24) != v12)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v21;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v23 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_252A6D400(uint64_t a1, id a2)
{
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        v3 = [a2 homeName];
        if (v3)
        {
          goto LABEL_24;
        }

        return 0;
      case 2:
        v3 = [a2 zoneName];
        if (v3)
        {
          goto LABEL_24;
        }

        return 0;
      case 3:
        v3 = [a2 roomName];
        if (v3)
        {
          goto LABEL_24;
        }

        return 0;
    }

LABEL_19:
    v3 = [a2 homeEntityName];
    if (v3)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (a1 > 10)
  {
    if (a1 == 11)
    {
      v3 = [a2 targetArea];
      if (v3)
      {
        goto LABEL_24;
      }

      return 0;
    }

    if (a1 == 12)
    {
      v3 = [a2 targetMap];
      if (v3)
      {
        goto LABEL_24;
      }

      return 0;
    }

    goto LABEL_19;
  }

  if (a1 == 4)
  {
    v3 = [a2 groupName];
    if (v3)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (a1 != 7)
  {
    goto LABEL_19;
  }

  v3 = [a2 outerDeviceName];
  if (!v3)
  {
    v3 = [a2 homeEntityName];
    if (!v3)
    {
      return 0;
    }
  }

LABEL_24:
  v4 = v3;
  v5 = sub_252E36F34();

  return v5;
}

uint64_t sub_252A6D5AC(unsigned __int8 a1)
{
  if (a1 > 0xAu)
  {
    return 0;
  }

  else
  {
    return qword_252E43C18[a1];
  }
}

uint64_t sub_252A6D5D4(void *a1)
{
  v2 = sub_252B680FC();
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    memcpy(__dst, (v3 + 504 * v4 - 472), 0x1F8uLL);
    sub_2529353AC(__dst, v21);

    __dst[35] = __dst[27];
    __dst[36] = __dst[28];
    __dst[37] = __dst[29];
    v23 = *&__dst[30];
    __dst[33] = __dst[25];
    __dst[34] = __dst[26];
    sub_2529855F8(&__dst[25], v21);
    sub_252935408(__dst);
    v5 = sub_252C5CF44();
    sub_252937BEC(&__dst[25]);
    if (v5)
    {
      goto LABEL_6;
    }

    v6 = sub_252B680FC();
    swift_beginAccess();
    v7 = *(v6 + 16);
    v8 = *(v7 + 16);
    if (v8)
    {
      memcpy(v21, (v7 + 504 * v8 - 472), sizeof(v21));
      sub_2529353AC(v21, v19);

      v19[3] = *&v21[448];
      v19[4] = *&v21[464];
      v20 = *&v21[480];
      v19[0] = *&v21[400];
      v19[1] = *&v21[416];
      v19[2] = *&v21[432];
      sub_2529855F8(&v21[400], v18);
      sub_252935408(v21);
      v9 = sub_252C5DF3C();
      sub_252937BEC(&v21[400]);
      return sub_252A6D5AC(v9);
    }
  }

LABEL_6:
  v11 = *(sub_252B680FC() + 77);

  if (v11)
  {
    return 7;
  }

  if (!a1)
  {
    return 0;
  }

  v12 = [a1 homeEntityName];
  if (v12 || (v12 = [a1 outerDeviceName]) != 0)
  {

    return 7;
  }

  else
  {
    v13 = [a1 roomName];
    if (v13)
    {

      return 3;
    }

    else
    {
      v14 = [a1 zoneName];
      if (v14)
      {

        return 2;
      }

      else
      {
        v15 = [a1 groupName];
        if (v15)
        {

          return 4;
        }

        else
        {
          v16 = [a1 homeName];
          if (v16)
          {

            return 1;
          }

          else
          {
            v17 = [a1 targetArea];
            if (v17)
            {

              return 11;
            }

            else
            {
              result = [a1 targetMap];
              if (result)
              {

                return 12;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_252A6D8E8(unint64_t a1)
{
  v2 = sub_252B680FC();
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    memcpy(__dst, (v3 + 504 * v4 - 472), 0x1F8uLL);
    sub_2529353AC(__dst, v109);

    __dst[35] = __dst[27];
    __dst[36] = __dst[28];
    __dst[37] = __dst[29];
    v111 = *&__dst[30];
    __dst[33] = __dst[25];
    __dst[34] = __dst[26];
    sub_2529855F8(&__dst[25], v109);
    sub_252935408(__dst);
    v5 = sub_252C5CF44();
    result = sub_252937BEC(&__dst[25]);
    if (v5)
    {
      goto LABEL_6;
    }

    v7 = sub_252B680FC();
    swift_beginAccess();
    v8 = *(v7 + 16);
    v9 = *(v8 + 16);
    if (v9)
    {
      memcpy(v109, (v8 + 504 * v9 - 472), sizeof(v109));
      sub_2529353AC(v109, v107);

      v107[3] = *&v109[448];
      v107[4] = *&v109[464];
      v108 = *&v109[480];
      v107[0] = *&v109[400];
      v107[1] = *&v109[416];
      v107[2] = *&v109[432];
      sub_2529855F8(&v109[400], v106);
      sub_252935408(v109);
      v10 = sub_252C5DF3C();
      sub_252937BEC(&v109[400]);
      return sub_252A6D5AC(v10);
    }
  }

LABEL_6:
  if (a1 >> 62)
  {
    result = sub_252E378C4();
    v11 = result;
    if (!result)
    {
      return 0;
    }
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return 0;
    }
  }

  if ((a1 & 0xC000000000000001) == 0)
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      v13 = v11 - 1;
      if (!__OFSUB__(v11, 1))
      {
        if (v13 < v12)
        {
          v14 = *(a1 + 32 + 8 * v13);
          v15 = *(a1 + 32);
          v16 = v14;
          goto LABEL_13;
        }

        goto LABEL_85;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v15 = MEMORY[0x2530ADF00](0, a1);
  result = v11 - 1;
  if (__OFSUB__(v11, 1))
  {
LABEL_86:
    __break(1u);
    return result;
  }

  v16 = MEMORY[0x2530ADF00](result, a1);
LABEL_13:
  v17 = v16;
  v18 = [v15 homeName];
  if (!v18)
  {
    goto LABEL_19;
  }

  v19 = v18;
  v20 = sub_252E36F34();
  v22 = v21;

  v23 = [v17 homeName];
  if (!v23)
  {
    goto LABEL_18;
  }

  v24 = v23;
  v25 = sub_252E36F34();
  v27 = v26;

  if (v20 == v25 && v22 == v27)
  {

LABEL_18:

    goto LABEL_19;
  }

  v48 = sub_252E37DB4();

  if ((v48 & 1) == 0)
  {

    return 1;
  }

LABEL_19:
  v28 = [v15 zoneName];
  if (!v28)
  {
    goto LABEL_25;
  }

  v29 = v28;
  v30 = sub_252E36F34();
  v32 = v31;

  v33 = [v17 zoneName];
  if (!v33)
  {
    goto LABEL_24;
  }

  v34 = v33;
  v35 = sub_252E36F34();
  v37 = v36;

  if (v30 == v35 && v32 == v37)
  {

LABEL_24:

    goto LABEL_25;
  }

  v59 = sub_252E37DB4();

  if ((v59 & 1) == 0)
  {

    return 2;
  }

LABEL_25:
  v38 = [v15 roomName];
  if (!v38)
  {
    goto LABEL_33;
  }

  v39 = v38;
  v40 = sub_252E36F34();
  v42 = v41;

  v43 = [v17 roomName];
  if (!v43)
  {
    goto LABEL_32;
  }

  v44 = v43;
  v45 = sub_252E36F34();
  v47 = v46;

  if (v40 == v45 && v42 == v47)
  {

LABEL_32:

    goto LABEL_33;
  }

  v70 = sub_252E37DB4();

  if ((v70 & 1) == 0)
  {

    return 3;
  }

LABEL_33:
  v49 = [v15 groupName];
  if (!v49)
  {
    goto LABEL_41;
  }

  v50 = v49;
  v51 = sub_252E36F34();
  v53 = v52;

  v54 = [v17 groupName];
  if (!v54)
  {
    goto LABEL_40;
  }

  v55 = v54;
  v56 = sub_252E36F34();
  v58 = v57;

  if (v51 == v56 && v53 == v58)
  {

LABEL_40:

    goto LABEL_41;
  }

  v81 = sub_252E37DB4();

  if ((v81 & 1) == 0)
  {

    return 4;
  }

LABEL_41:
  v60 = [v15 outerDeviceName];
  if (!v60)
  {
    goto LABEL_49;
  }

  v61 = v60;
  v62 = sub_252E36F34();
  v64 = v63;

  v65 = [v17 outerDeviceName];
  if (!v65)
  {
    goto LABEL_48;
  }

  v66 = v65;
  v67 = sub_252E36F34();
  v69 = v68;

  if (v62 == v67 && v64 == v69)
  {

LABEL_48:

    goto LABEL_49;
  }

  v92 = sub_252E37DB4();

  if ((v92 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_49:
  v71 = [v15 homeEntityName];
  if (!v71)
  {
    goto LABEL_57;
  }

  v72 = v71;
  v73 = sub_252E36F34();
  v75 = v74;

  v76 = [v17 homeEntityName];
  if (!v76)
  {
    goto LABEL_56;
  }

  v77 = v76;
  v78 = sub_252E36F34();
  v80 = v79;

  if (v73 == v78 && v75 == v80)
  {

LABEL_56:

    goto LABEL_57;
  }

  v103 = sub_252E37DB4();

  if ((v103 & 1) == 0)
  {
LABEL_71:

    return 7;
  }

LABEL_57:
  v82 = [v15 targetArea];
  if (!v82)
  {
    goto LABEL_65;
  }

  v83 = v82;
  v84 = sub_252E36F34();
  v86 = v85;

  v87 = [v17 targetArea];
  if (!v87)
  {
    goto LABEL_64;
  }

  v88 = v87;
  v89 = sub_252E36F34();
  v91 = v90;

  if (v84 == v89 && v86 == v91)
  {

LABEL_64:

    goto LABEL_65;
  }

  v104 = sub_252E37DB4();

  if ((v104 & 1) == 0)
  {

    return 11;
  }

LABEL_65:
  v93 = [v15 targetMap];
  if (!v93)
  {
LABEL_73:

    return 0;
  }

  v94 = v93;
  v95 = sub_252E36F34();
  v97 = v96;

  v98 = [v17 targetMap];
  if (!v98)
  {

    goto LABEL_73;
  }

  v99 = v98;
  v100 = sub_252E36F34();
  v102 = v101;

  if (v95 == v100 && v97 == v102)
  {

    return 0;
  }

  v105 = sub_252E37DB4();

  if (v105)
  {
    return 0;
  }

  return 12;
}

void sub_252A6E17C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_109;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_110:

    return;
  }

LABEL_3:
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  do
  {
    if (v4)
    {
      v5 = MEMORY[0x2530ADF00](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_100;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_99;
    }

    v8 = [v5 homeEntityName];
    if (v8)
    {
      v10 = v8;
      v9 = v6;
      v6 = v10;
LABEL_14:

      v11 = 0;
      v61 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v4)
        {
          v13 = MEMORY[0x2530ADF00](v11, a1);
        }

        else
        {
          if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_101;
          }

          v13 = *(a1 + 8 * v11 + 32);
        }

        v14 = v13;
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v16 = [v13 homeEntityName];
        if (v16 || (v16 = [v14 outerDeviceName]) != 0)
        {

          sub_252E37A94();
          v12 = *(v61 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        ++v11;
        if (v15 == v2)
        {
          return;
        }
      }

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
      v2 = sub_252E378C4();
      if (!v2)
      {
        goto LABEL_110;
      }

      goto LABEL_3;
    }

    v9 = [v6 outerDeviceName];
    if (v9)
    {
      goto LABEL_14;
    }

    ++v3;
  }

  while (v7 != v2);
  v17 = 0;
  do
  {
    if (v4)
    {
      v18 = MEMORY[0x2530ADF00](v17, a1);
    }

    else
    {
      if (v17 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_103;
      }

      v18 = *(a1 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_102;
    }

    v21 = [v18 groupName];
    if (v21)
    {

      v22 = 0;
      v62 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v4)
        {
          v24 = MEMORY[0x2530ADF00](v22, a1);
        }

        else
        {
          if (v22 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_108;
          }

          v24 = *(a1 + 8 * v22 + 32);
        }

        v25 = v24;
        v26 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_104;
        }

        v27 = [v24 groupName];
        if (v27)
        {

          sub_252E37A94();
          v23 = *(v62 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        ++v22;
        if (v26 == v2)
        {
          return;
        }
      }
    }

    ++v17;
  }

  while (v20 != v2);
  v28 = 0;
  while (1)
  {
    if (v4)
    {
      v29 = MEMORY[0x2530ADF00](v28, a1);
    }

    else
    {
      if (v28 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_106;
      }

      v29 = *(a1 + 8 * v28 + 32);
    }

    v30 = v29;
    v31 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_105;
    }

    v32 = [v29 roomName];
    if (v32)
    {
      break;
    }

    ++v28;
    if (v31 == v2)
    {
      v39 = 0;
      while (1)
      {
        if (v4)
        {
          v40 = MEMORY[0x2530ADF00](v39, a1);
        }

        else
        {
          if (v39 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_112;
          }

          v40 = *(a1 + 8 * v39 + 32);
        }

        v41 = v40;
        v42 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        v43 = [v40 zoneName];
        if (v43)
        {

          v44 = 0;
          v64 = MEMORY[0x277D84F90];
          while (1)
          {
            if (v4)
            {
              v45 = MEMORY[0x2530ADF00](v44, a1);
            }

            else
            {
              if (v44 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v45 = *(a1 + 8 * v44 + 32);
            }

            v46 = v45;
            v47 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              goto LABEL_113;
            }

            v48 = [v45 zoneName];
            if (v48)
            {

              sub_252E37A94();
              v49 = *(v64 + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
            }

            else
            {
            }

            ++v44;
            if (v47 == v2)
            {
              return;
            }
          }
        }

        ++v39;
        if (v42 == v2)
        {
          v50 = 0;
          while (1)
          {
            if (v4)
            {
              v51 = MEMORY[0x2530ADF00](v50, a1);
            }

            else
            {
              if (v50 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_116;
              }

              v51 = *(a1 + 8 * v50 + 32);
            }

            v52 = v51;
            v53 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              goto LABEL_115;
            }

            v54 = [v51 homeName];
            if (v54)
            {

              v55 = 0;
              v65 = MEMORY[0x277D84F90];
              while (1)
              {
                if (v4)
                {
                  v56 = MEMORY[0x2530ADF00](v55, a1);
                }

                else
                {
                  if (v55 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_119;
                  }

                  v56 = *(a1 + 8 * v55 + 32);
                }

                v57 = v56;
                v58 = v55 + 1;
                if (__OFADD__(v55, 1))
                {
                  goto LABEL_117;
                }

                v59 = [v56 homeName];
                if (v59)
                {

                  sub_252E37A94();
                  v60 = *(v65 + 16);
                  sub_252E37AC4();
                  sub_252E37AD4();
                  sub_252E37AA4();
                }

                else
                {
                }

                ++v55;
                if (v58 == v2)
                {
                  return;
                }
              }
            }

            ++v50;
            if (v53 == v2)
            {
              goto LABEL_110;
            }
          }
        }
      }

      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }
  }

  v33 = 0;
  v63 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v4)
    {
      v34 = MEMORY[0x2530ADF00](v33, a1);
      goto LABEL_58;
    }

    if (v33 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v34 = *(a1 + 8 * v33 + 32);
LABEL_58:
      v35 = v34;
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_107;
      }

      v37 = [v34 roomName];
      if (v37)
      {

        sub_252E37A94();
        v38 = *(v63 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v33;
      if (v36 == v2)
      {
        return;
      }

      continue;
    }

    break;
  }

LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
}