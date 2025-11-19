void *sub_252B122D4(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v31 = sub_252E36324();
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v10 = 0;
    v40 = a1 & 0xC000000000000001;
    v34 = i;
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    v28 = a2;
    v29 = (v6 + 8);
    v25 = "Attempting to resolve filters";
    v26 = 0x8000000252E7C200;
    v24 = "ference resolution for ";
    v27 = a1;
    while (1)
    {
      if (v40)
      {
        v14 = MEMORY[0x2530ADF00](v10, a1);
      }

      else
      {
        if (v10 >= *(v35 + 16))
        {
          goto LABEL_17;
        }

        v14 = *(a1 + 8 * v10 + 32);
      }

      v15 = v14;
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v17 = sub_252A6D400(a2, v14);
      if (v18)
      {
        v19 = v30;
        sub_252E37024();

        v20 = sub_252E36304();
        v22 = v21;
        (*v29)(v19, v31);

        v6 = sub_252B120A0(v32, a2, v20, v22, v33);
        swift_bridgeObjectRelease_n();
        if (v6)
        {
          return v15;
        }
      }

      else
      {
        if (qword_27F53F488 != -1)
        {
          swift_once();
        }

        v11 = sub_252E36AD4();
        v12 = __swift_project_value_buffer(v11, qword_27F544C40);
        v38 = 0;
        v39 = 0xE000000000000000;
        sub_252E379F4();

        v38 = 0xD00000000000001ELL;
        v39 = v26;
        v36 = v17;
        v37 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
        v13 = sub_252E36F94();
        MEMORY[0x2530AD570](v13);

        v6 = v12;
        sub_252CC4050(v38, v39, 0xD00000000000008DLL, v25 | 0x8000000000000000, 0xD000000000000019, v24 | 0x8000000000000000, 490);

        a1 = v27;
        a2 = v28;
      }

      ++v10;
      if (v16 == v34)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return 0;
}

uint64_t sub_252B1260C(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v36 = MEMORY[0x277D84F90];
    sub_252E37AB4();
    v5 = v2 + 56;
    v6 = -1 << *(v2 + 32);
    result = sub_252E37834();
    v7 = result;
    v8 = 0;
    v9 = *(v2 + 36);
    v31 = v2 + 64;
    v32 = v3;
    v33 = v9;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      if (v9 != *(v2 + 36))
      {
        goto LABEL_22;
      }

      v35 = v8;
      v12 = v5;
      v13 = (*(v2 + 48) + 16 * v7);
      v14 = v2;
      v16 = *v13;
      v15 = v13[1];
      type metadata accessor for HomeFilter.Builder();
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0;
      *(v17 + 40) = 7;
      *(v17 + 48) = 0u;
      *(v17 + 64) = 0u;
      *(v17 + 80) = 0u;
      *(v17 + 96) = 0u;
      *(v17 + 112) = 0u;
      *(v17 + 128) = 0u;
      *(v17 + 144) = 0u;
      *(v17 + 160) = 0u;
      *(v17 + 175) = 0;

      v18 = sub_252B72040(a2);

      v19 = v16;
      v2 = v14;
      v20 = (*(*v18 + 712))(v19, v15);

      v22 = (*(*v20 + 760))(v21);

      [v22 setOuterDeviceName_];
      [v22 setTargetArea_];

      sub_252E37A94();
      v23 = *(v36 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      result = sub_252E37AA4();
      v10 = 1 << *(v14 + 32);
      if (v7 >= v10)
      {
        goto LABEL_23;
      }

      v24 = *(v12 + 8 * v11);
      if ((v24 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v5 = v12;
      v9 = v33;
      if (v33 != *(v14 + 36))
      {
        goto LABEL_25;
      }

      v25 = v24 & (-2 << (v7 & 0x3F));
      if (v25)
      {
        v10 = __clz(__rbit64(v25)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v11 << 6;
        v27 = v11 + 1;
        v28 = (v31 + 8 * v11);
        while (v27 < (v10 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_252ACBF38(v7, v33, 0);
            v10 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_252ACBF38(v7, v33, 0);
      }

LABEL_4:
      v8 = v35 + 1;
      v7 = v10;
      if (v35 + 1 == v32)
      {
        return v36;
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
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_252B12950(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v4 = *(a2 + 16);
  if (v4)
  {
    v7 = (a2 + 56);
    do
    {
      v8 = *v7;
      v9 = *(v7 - 1);
      v10 = *(v7 - 8);
      v11 = *(v7 - 2);
      v17[0] = *(v7 - 3);
      v17[1] = v11;
      v18 = v10;
      v19 = v9;
      v20 = v8;

      sub_252B11920(v17, a3, a1, &v16);

      if (v16)
      {
        MEMORY[0x2530AD700](v12);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v13 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v3 = v21;
      }

      v7 += 32;
      --v4;
    }

    while (v4);
  }

  v14 = sub_252DF9B0C(v3);

  return v14;
}

unint64_t sub_252B12A98(void *a1, unint64_t a2)
{
  v26 = MEMORY[0x277D84F90];
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_27:
    v4 = sub_252E378C4();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_28:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_28;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, a2);
        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v7 >= *(v3 + 16))
        {
          goto LABEL_26;
        }

        v8 = *(a2 + 8 * v7 + 32);

        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      v9 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType);
      if (v9 > 2)
      {
        break;
      }

      if (v9 == 1)
      {
        type metadata accessor for HomeFilter.Builder();
        v15 = swift_allocObject();
        *(v15 + 16) = 0;
        *(v15 + 24) = 0;
        *(v15 + 32) = 0;
        *(v15 + 40) = 7;
        *(v15 + 48) = 0u;
        *(v15 + 64) = 0u;
        *(v15 + 80) = 0u;
        *(v15 + 96) = 0u;
        *(v15 + 112) = 0u;
        *(v15 + 128) = 0u;
        *(v15 + 144) = 0u;
        *(v15 + 160) = 0u;
        *(v15 + 175) = 0;
        v16 = sub_252B72040(a1);

        v14 = (*(*v16 + 632))(*(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
        goto LABEL_21;
      }

      if (v9 == 2)
      {
        type metadata accessor for HomeFilter.Builder();
        v12 = swift_allocObject();
        *(v12 + 16) = 0;
        *(v12 + 24) = 0;
        *(v12 + 32) = 0;
        *(v12 + 40) = 7;
        *(v12 + 48) = 0u;
        *(v12 + 64) = 0u;
        *(v12 + 80) = 0u;
        *(v12 + 96) = 0u;
        *(v12 + 112) = 0u;
        *(v12 + 128) = 0u;
        *(v12 + 144) = 0u;
        *(v12 + 160) = 0u;
        *(v12 + 175) = 0;
        v13 = sub_252B72040(a1);

        v14 = (*(*v13 + 648))(*(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
        goto LABEL_21;
      }

LABEL_5:

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_29;
      }
    }

    if (v9 != 3)
    {
      if (v9 == 7)
      {
        type metadata accessor for HomeFilter.Builder();
        v10 = swift_allocObject();
        *(v10 + 16) = 0;
        *(v10 + 24) = 0;
        *(v10 + 32) = 0;
        *(v10 + 40) = 7;
        *(v10 + 48) = 0u;
        *(v10 + 64) = 0u;
        *(v10 + 80) = 0u;
        *(v10 + 96) = 0u;
        *(v10 + 112) = 0u;
        *(v10 + 128) = 0u;
        *(v10 + 144) = 0u;
        *(v10 + 160) = 0u;
        *(v10 + 175) = 0;
        v11 = sub_252B72040(a1);

        v14 = (*(*v11 + 608))(*(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
        goto LABEL_21;
      }

      goto LABEL_5;
    }

    type metadata accessor for HomeFilter.Builder();
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    *(v17 + 40) = 7;
    *(v17 + 48) = 0u;
    *(v17 + 64) = 0u;
    *(v17 + 80) = 0u;
    *(v17 + 96) = 0u;
    *(v17 + 112) = 0u;
    *(v17 + 128) = 0u;
    *(v17 + 144) = 0u;
    *(v17 + 160) = 0u;
    *(v17 + 175) = 0;
    v18 = sub_252B72040(a1);

    v14 = (*(*v18 + 680))(*(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
LABEL_21:
    v19 = v14;

    (*(*v19 + 760))(v20);

    MEMORY[0x2530AD700](v21);
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v22 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    v6 = v26;
  }

  while (v5 != v4);
LABEL_29:
  v23 = sub_252DF9B0C(v6);

  return v23;
}

uint64_t sub_252B12F3C(unint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 104);
  v6 = *(a2 + 392);
  v7 = *(a2 + 448);
  v58 = *(a2 + 432);
  v59 = v7;
  v60 = *(a2 + 464);
  v61 = *(a2 + 480);
  v8 = *(a2 + 416);
  v56 = *(a2 + 400);
  v57 = v8;
  if (!sub_252C5CF44())
  {
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544C40);
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    sub_252E379F4();
    v55 = v49;
    MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E7CA80);
    v51 = v58;
    v52 = v59;
    v53 = v60;
    v54 = v61;
    v49 = v56;
    v50 = v57;
    sub_252E37AE4();
    sub_252CC3D90(v55, *(&v55 + 1), 0xD00000000000008DLL, 0x8000000252E7BF00);

    v3 = sub_252C5DF3C();
    v10 = sub_252C5E778(v3);
    v2 = v10;
    v11 = *(v10 + 16);
    if (!v11)
    {
      goto LABEL_18;
    }

    if (v11 == 1)
    {
      v12 = *(v10 + 52);
      if (*(v10 + 56) <= 1u && *(v10 + 56))
      {
      }

      else
      {
        v14 = sub_252E37DB4();

        if ((v14 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      if (v12 > 0.22)
      {
LABEL_18:

        goto LABEL_19;
      }

LABEL_30:
      *&v49 = 0;
      *(&v49 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E7CB30);
      sub_252E37384();
      sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008DLL, 0x8000000252E7BF00);

      if (!(a1 >> 62))
      {
        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
        {
LABEL_69:
          v19 = 0;
          goto LABEL_70;
        }

LABEL_32:
        if ((a1 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x2530ADF00](0, a1);
        }

        else
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

          v19 = *(a1 + 32);
        }

LABEL_70:
        a1 = sub_252B12950(v19, v2, v3);

        if (a1 >> 62)
        {
          if (sub_252E378C4())
          {
            goto LABEL_72;
          }
        }

        else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_72:
          if ((a1 & 0xC000000000000001) != 0)
          {
            v34 = MEMORY[0x2530ADF00](0, a1);
            goto LABEL_75;
          }

          if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v34 = *(a1 + 32);
LABEL_75:
            v35 = v34;

LABEL_78:
            v31 = v44;
            type metadata accessor for ControlHomeFiltersResolutionResult();
            v32 = sub_252E2B160(v35);

            v44[4] = v32;
            goto LABEL_79;
          }

          goto LABEL_96;
        }

        v35 = 0;
        goto LABEL_78;
      }

LABEL_68:
      if (sub_252E378C4() <= 0)
      {
        goto LABEL_69;
      }

      goto LABEL_32;
    }

    sub_252CC3D90(0xD000000000000029, 0x8000000252E7CB00, 0xD00000000000008DLL, 0x8000000252E7BF00);
    if (a1 >> 62)
    {
      if (sub_252E378C4() > 0)
      {
LABEL_11:
        if ((a1 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x2530ADF00](0, a1);
        }

        else
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_64;
          }

          v13 = *(a1 + 32);
        }

LABEL_46:
        type metadata accessor for ControlHomeFiltersResolutionResult();
        v23 = sub_252B12950(v13, v2, v3);

        v24 = sub_252E2B068(v23);

        v45 = v24;
        v15 = MEMORY[0x277D84F90];
        *&v49 = MEMORY[0x277D84F90];
        if (v24)
        {
          v25 = v24;
          MEMORY[0x2530AD700]();
          if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v33 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v15 = v49;
        }

        v26 = &v45;
        goto LABEL_91;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
    {
      goto LABEL_11;
    }

    v13 = 0;
    goto LABEL_46;
  }

LABEL_19:
  if (*(v5 + 16))
  {
    return 0;
  }

  if (v6 >> 62)
  {
    v16 = sub_252E378C4();
    if (v16 == 1)
    {
LABEL_23:
      if (qword_27F53F488 != -1)
      {
        swift_once();
      }

      v17 = sub_252E36AD4();
      __swift_project_value_buffer(v17, qword_27F544C40);
      sub_252CC3D90(0xD000000000000023, 0x8000000252E7CAD0, 0xD00000000000008DLL, 0x8000000252E7BF00);
      if (a1 >> 62)
      {
        if (sub_252E378C4() > 0)
        {
LABEL_27:
          if ((a1 & 0xC000000000000001) == 0)
          {
            if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_67:
              __break(1u);
              goto LABEL_68;
            }

            v18 = *(a1 + 32);
LABEL_53:

            v28 = sub_252A5F490(v27);
            a1 = sub_252B12A98(v18, v28);

            if (a1 >> 62)
            {
              if (sub_252E378C4())
              {
                goto LABEL_55;
              }
            }

            else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_55:
              if ((a1 & 0xC000000000000001) != 0)
              {
                v29 = MEMORY[0x2530ADF00](0, a1);
                goto LABEL_58;
              }

              if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v29 = *(a1 + 32);
LABEL_58:
                v30 = v29;

LABEL_61:
                v31 = &v46;
                type metadata accessor for ControlHomeFiltersResolutionResult();
                v32 = sub_252E2B160(v30);

                v47 = v32;
LABEL_79:
                v15 = MEMORY[0x277D84F90];
                *&v49 = MEMORY[0x277D84F90];
                if (v32)
                {
                  v36 = v32;
                  MEMORY[0x2530AD700]();
                  if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v37 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    sub_252E372A4();
                  }

                  sub_252E372D4();
                  v15 = v49;
                }

                v26 = (v31 + 32);
LABEL_91:
                sub_252B1C554(v26);
                return v15;
              }

              goto LABEL_67;
            }

            v30 = 0;
            goto LABEL_61;
          }

LABEL_64:
          v18 = MEMORY[0x2530ADF00](0, a1);
          goto LABEL_53;
        }
      }

      else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
      {
        goto LABEL_27;
      }

      v18 = 0;
      goto LABEL_53;
    }
  }

  else
  {
    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16 == 1)
    {
      goto LABEL_23;
    }
  }

  if (v16 < 2)
  {
    return 0;
  }

  if (qword_27F53F488 != -1)
  {
    swift_once();
  }

  v20 = sub_252E36AD4();
  __swift_project_value_buffer(v20, qword_27F544C40);
  sub_252CC3D90(0xD000000000000025, 0x8000000252E7CAA0, 0xD00000000000008DLL, 0x8000000252E7BF00);
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > 0)
    {
      goto LABEL_41;
    }

LABEL_85:
    v22 = 0;
    goto LABEL_86;
  }

  result = sub_252E378C4();
  if (result <= 0)
  {
    goto LABEL_85;
  }

LABEL_41:
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_97:
    v22 = MEMORY[0x2530ADF00](0, a1);
    goto LABEL_86;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(a1 + 32);
LABEL_86:
    type metadata accessor for ControlHomeFiltersResolutionResult();

    v39 = sub_252A5F490(v38);
    v40 = sub_252B12A98(v22, v39);

    v41 = sub_252E2B068(v40);

    v48 = v41;
    v15 = MEMORY[0x277D84F90];
    *&v49 = MEMORY[0x277D84F90];
    if (v41)
    {
      v42 = v41;
      MEMORY[0x2530AD700]();
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v43 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v15 = v49;
    }

    v26 = &v48;
    goto LABEL_91;
  }

  __break(1u);
  return result;
}

uint64_t sub_252B138C8(uint64_t result, unint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  if (!result)
  {
    return v2;
  }

  v4 = result;
  v24 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
    result = sub_252E378C4();
    v5 = result;
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
    v19 = v4;
    v2 = MEMORY[0x277D84F90];
LABEL_17:
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v20 = sub_252E36AD4();
    __swift_project_value_buffer(v20, qword_27F544C40);
    sub_252E379F4();

    v21 = type metadata accessor for HomeFilter();
    v22 = MEMORY[0x2530AD730](v2, v21);
    MEMORY[0x2530AD570](v22);

    sub_252CC3D90(0xD000000000000020, 0x8000000252E7CA50, 0xD00000000000008DLL, 0x8000000252E7BF00);

    return v2;
  }

  if (v5 >= 1)
  {
    v6 = 0;
    v23 = v4;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v6, a2);
      }

      else
      {
        v7 = *(a2 + 8 * v6 + 32);
      }

      v8 = v7;
      if (qword_27F53F488 != -1)
      {
        swift_once();
      }

      v9 = sub_252E36AD4();
      __swift_project_value_buffer(v9, qword_27F544C40);
      sub_252E379F4();

      v10 = [v8 description];
      v11 = sub_252E36F34();
      v13 = v12;

      MEMORY[0x2530AD570](v11, v13);

      MEMORY[0x2530AD570](0x74736E6961676120, 0xE900000000000020);
      v14 = [v23 description];
      v15 = sub_252E36F34();
      v17 = v16;

      MEMORY[0x2530AD570](v15, v17);

      sub_252CC3D90(0xD000000000000018, 0x8000000252E7CA30, 0xD00000000000008DLL, 0x8000000252E7BF00);

      v18 = sub_252A20280(v8);
      MEMORY[0x2530AD700]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      ++v6;
      sub_252E372D4();
    }

    while (v5 != v6);
    v2 = v24;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_252B13C7C(unint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 488);
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_252E378C4() >= 2)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
LABEL_3:
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544C40);
    sub_252CC4050(0xD000000000000043, 0x8000000252E7C9B0, 0xD00000000000008DLL, 0x8000000252E7BF00, 0xD00000000000002CLL, 0x8000000252E7CA00, 263);
    return 0;
  }

  if (*(v3 + 16) < 2uLL)
  {
    return 0;
  }

  if (qword_27F53F488 != -1)
  {
    swift_once();
  }

  v7 = sub_252E36AD4();
  __swift_project_value_buffer(v7, qword_27F544C40);
  sub_252E379F4();

  v18 = 0xD00000000000002ELL;
  v19 = 0x8000000252E7C980;
  sub_252ABC210();
  v8 = sub_252E373B4();
  MEMORY[0x2530AD570](v8);

  sub_252CC3D90(0xD00000000000002ELL, 0x8000000252E7C980, 0xD00000000000008DLL, 0x8000000252E7BF00);

  v9 = sub_252A38B98(v3);
  if (v4)
  {
    result = sub_252E378C4();
    if (result <= 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x2530ADF00](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v11 = *(a1 + 32);
    }

    v10 = v11;
    goto LABEL_19;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result > 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v10 = 0;
LABEL_19:
  type metadata accessor for ControlHomeFiltersResolutionResult();
  v12 = sub_252B138C8(v10, v9);

  v13 = sub_252E2B068(v12);

  v17 = v13;
  v18 = MEMORY[0x277D84F90];
  if (v13)
  {
    v14 = v13;
    MEMORY[0x2530AD700]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v16 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    v15 = v18;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  sub_252B1C554(&v17);
  return v15;
}

id sub_252B13FB0(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v108 = sub_252E32E84();
  v6 = *(v108 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v108);
  v10 = (&v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = &v100 - v11;
  if (a1 >> 62)
  {
    v13 = sub_252E378C4();
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_78;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(a1 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_80:
  v21 = sub_252E378C4();
LABEL_13:
  v109 = v13;
  v106 = a1;
  if (!v21)
  {
    v105 = v12;
    if (!v13)
    {
      goto LABEL_52;
    }

    v43 = 0;
    v12 = (a1 & 0xC000000000000001);
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v12)
      {
        v44 = MEMORY[0x2530ADF00](v43, a1);
      }

      else
      {
        if (v43 >= *(v6 + 16))
        {
          goto LABEL_77;
        }

        v44 = *(a1 + 8 * v43 + 32);
      }

      v10 = v44;
      v13 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_76;
      }

      v45 = [v44 outerDeviceName];
      if (v45)
      {
        break;
      }

      v45 = [v10 homeEntityName];
      if (v45)
      {
        break;
      }

      v46 = [v10 entityIdentifiers];
      if (v46)
      {
        v47 = v46;
        a3 = a1;
        v48 = sub_252E37264();

        v49 = *(v48 + 16);
        a1 = a3;

        if (v49)
        {
          goto LABEL_47;
        }
      }

      else
      {
      }

      ++v43;
      if (v13 == v109)
      {
        goto LABEL_52;
      }
    }

    v50 = v45;

LABEL_47:
    type metadata accessor for HomeStore();
    v51 = static HomeStore.shared.getter();
    v52 = sub_2529D8DC0();

    if (v52 >> 62)
    {
      goto LABEL_137;
    }

    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_49;
  }

  a2 = 0;
  v22 = MEMORY[0x277D84F90];
  v110 = MEMORY[0x277D84F90];
  v6 = a3 & 0xC000000000000001;
  a1 = a3 & 0xFFFFFFFFFFFFFF8;
  v107 += 4;
  do
  {
    v13 = a2;
    while (1)
    {
      if (v6)
      {
        v12 = MEMORY[0x2530ADF00](v13, a3);
        a2 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_72;
        }
      }

      else
      {
        if (v13 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_73;
        }

        v12 = *(a3 + 8 * v13 + 32);

        a2 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          v14 = MEMORY[0x2530ADF00](0, a1);
LABEL_6:
          v15 = v14;
          v16 = [v14 homeName];

          if (v16)
          {
            v17 = sub_252E36F34();
            v19 = v18;

            if (qword_27F53F488 != -1)
            {
              swift_once();
            }

            v20 = sub_252E36AD4();
            __swift_project_value_buffer(v20, qword_27F544C40);
            v110 = 0;
            v111 = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD00000000000004BLL, 0x8000000252E7C930);
            MEMORY[0x2530AD570](v17, v19);

            sub_252CC3D90(v110, v111, 0xD00000000000008DLL, 0x8000000252E7BF00);
LABEL_122:

            return 0;
          }

LABEL_11:
          v107 = v6;
          if (!(a3 >> 62))
          {
            v21 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_13;
          }

          goto LABEL_80;
        }
      }

      v23 = [*&v12[OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate] home];
      if (v23)
      {
        break;
      }

      ++v13;
      if (a2 == v21)
      {
        goto LABEL_83;
      }
    }

    v24 = v23;
    v25 = type metadata accessor for Home();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    v102 = swift_allocObject();
    *(v102 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = v24;
    v28 = v24;
    v29 = [v28 uniqueIdentifier];
    v105 = v10;
    sub_252E32E64();

    v30 = [v28 name];
    v31 = sub_252E36F34();
    v103 = v32;
    v104 = v31;

    v33 = [v28 assistantIdentifier];
    if (v33)
    {
      v34 = v33;
      v35 = sub_252E36F34();
      v37 = v36;
    }

    else
    {

      v35 = 0;
      v37 = 0;
    }

    v12 = v102;
    v10 = v105;
    v38 = (*v107)(v102 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v105, v108);
    v39 = &v12[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
    v40 = v103;
    *v39 = v104;
    *(v39 + 1) = v40;
    *&v12[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType] = 1;
    v41 = &v12[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier];
    *v41 = v35;
    v41[1] = v37;
    MEMORY[0x2530AD700](v38);
    if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v42 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    v22 = v110;
  }

  while (a2 != v21);
  while (1)
  {
LABEL_83:
    v77 = sub_252C758E0(v22);

    type metadata accessor for HomeStore();
    v78 = static HomeStore.shared.getter();
    v79 = sub_2529D8DC0();

    v80 = v79 >> 62 ? sub_252E378C4() : *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if ((v77 & 0xC000000000000001) != 0)
    {
      if (sub_252E378C4() != 1)
      {
        goto LABEL_114;
      }
    }

    else if (*(v77 + 16) != 1)
    {
      goto LABEL_114;
    }

    if (v80 < 2)
    {
      goto LABEL_114;
    }

    v81 = sub_252DA089C(v77);
    if (!v81)
    {
      goto LABEL_114;
    }

    a2 = v81;
    v82 = static HomeStore.shared.getter();
    v83 = sub_2529D9114();

    if (!v83)
    {
      goto LABEL_98;
    }

    if ((sub_252E32E54() & 1) == 0 || *(v83 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
    {
      break;
    }

    if (*(v83 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(v83 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
    {
    }

    else
    {
      v90 = sub_252E37DB4();

      if ((v90 & 1) == 0)
      {
        goto LABEL_99;
      }
    }

LABEL_114:
    if ((v77 & 0xC000000000000001) != 0)
    {
      v91 = sub_252E378C4();
    }

    else
    {
      v91 = *(v77 + 16);
    }

    v92 = v106;
    if (v91 < 2)
    {
      goto LABEL_122;
    }

    *(sub_252B680FC() + 73) = 1;

    if (v109 <= 0)
    {
      v93 = 0;
      goto LABEL_125;
    }

    if ((v92 & 0xC000000000000001) != 0)
    {
      v93 = MEMORY[0x2530ADF00](0, v92);
LABEL_125:
      v95 = sub_2529A3930(v77);

      if ((v95 & 0x8000000000000000) != 0 || (v95 & 0x4000000000000000) != 0)
      {
        type metadata accessor for Entity();

        v96 = sub_252E37B14();
      }

      else
      {

        sub_252E37DD4();
        type metadata accessor for Entity();
        v96 = v95;
      }

      type metadata accessor for ControlHomeFiltersResolutionResult();
      v97 = sub_252B12A98(v93, v96);

      v98 = sub_252E2B068(v97);

      return v98;
    }

    if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v93 = *(v92 + 32);
      goto LABEL_125;
    }

    __break(1u);
LABEL_137:
    v53 = sub_252E378C4();
LABEL_49:

    if (v53 == 1)
    {
      if (qword_27F53F488 == -1)
      {
LABEL_51:
        v54 = sub_252E36AD4();
        __swift_project_value_buffer(v54, qword_27F544C40);
        sub_252CC3D90(0xD00000000000006FLL, 0x8000000252E7C8C0, 0xD00000000000008DLL, 0x8000000252E7BF00);
        return 0;
      }

LABEL_142:
      swift_once();
      goto LABEL_51;
    }

LABEL_52:
    v110 = MEMORY[0x277D84F90];
    if (a2 >> 62)
    {
      a3 = sub_252E378C4();
      if (a3)
      {
        goto LABEL_54;
      }

LABEL_82:
      v22 = MEMORY[0x277D84F90];
    }

    else
    {
      a3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a3)
      {
        goto LABEL_82;
      }

LABEL_54:
      v12 = 0;
      a1 = a2 & 0xC000000000000001;
      v22 = MEMORY[0x277D84F90];
      v55 = v107 + 4;
      v10 = &off_279711000;
      do
      {
        v13 = v12;
        while (1)
        {
          if (a1)
          {
            v6 = MEMORY[0x2530ADF00](v13, a2);
            v12 = (v13 + 1);
            if (__OFADD__(v13, 1))
            {
              goto LABEL_74;
            }
          }

          else
          {
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_75;
            }

            v6 = *(a2 + 8 * v13 + 32);

            v12 = (v13 + 1);
            if (__OFADD__(v13, 1))
            {
              goto LABEL_74;
            }
          }

          v56 = [*(v6 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
          if (v56)
          {
            break;
          }

          ++v13;
          if (v12 == a3)
          {
            goto LABEL_83;
          }
        }

        v107 = v55;
        v57 = v56;
        v58 = type metadata accessor for Home();
        v59 = *(v58 + 48);
        v60 = *(v58 + 52);
        v102 = swift_allocObject();
        *(v102 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = v57;
        v61 = v57;
        v62 = [v61 uniqueIdentifier];
        sub_252E32E64();

        v63 = [v61 name];
        v64 = sub_252E36F34();
        v103 = v65;
        v104 = v64;

        v66 = [v61 assistantIdentifier];
        if (v66)
        {
          v67 = v66;
          v101 = sub_252E36F34();
          v69 = v68;

          v70 = v69;
          v71 = v101;
        }

        else
        {

          v71 = 0;
          v70 = 0;
        }

        v55 = v107;
        v6 = v102;
        v72 = (*v107)(v102 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v105, v108);
        v73 = (v6 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v74 = v103;
        *v73 = v104;
        v73[1] = v74;
        *(v6 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 1;
        v75 = (v6 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v75 = v71;
        v75[1] = v70;
        MEMORY[0x2530AD700](v72);
        if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v76 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
          v55 = v107;
        }

        sub_252E372D4();
        v22 = v110;
      }

      while (v12 != a3);
    }
  }

LABEL_98:

LABEL_99:
  if (v109 <= 0)
  {
    v84 = 0;
    goto LABEL_104;
  }

  if ((v106 & 0xC000000000000001) != 0)
  {
    v84 = MEMORY[0x2530ADF00](0);
    goto LABEL_104;
  }

  if (!*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_141;
  }

  v84 = *(v106 + 32);
LABEL_104:
  v85 = sub_2529A3930(v77);

  if ((v85 & 0x8000000000000000) != 0 || (v85 & 0x4000000000000000) != 0)
  {
    type metadata accessor for Entity();

    v86 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity();
    v86 = v85;
  }

  v87 = sub_252B12A98(v84, v86);

  if (v87 >> 62)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_132;
    }

LABEL_109:
    if ((v87 & 0xC000000000000001) != 0)
    {
      v88 = MEMORY[0x2530ADF00](0, v87);
      goto LABEL_112;
    }

    if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v88 = *(v87 + 32);
LABEL_112:
      v89 = v88;

      goto LABEL_133;
    }

LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_109;
  }

LABEL_132:

  v89 = 0;
LABEL_133:
  *(sub_252B680FC() + 74) = 1;

  type metadata accessor for ControlHomeFiltersResolutionResult();
  v99 = sub_252E2B160(v89);

  return v99;
}

id sub_252B14D40(unint64_t a1, unint64_t a2)
{
  v115 = a1;
  v119 = *MEMORY[0x277D85DE8];
  v3 = sub_252E36AD4();
  v112 = *(v3 - 8);
  v113 = v3;
  v4 = *(v112 + 64);
  MEMORY[0x28223BE20](v3);
  v111 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    goto LABEL_127;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v8 = 0;
    while ((a2 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x2530ADF00](v8, a2);
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_118;
      }

LABEL_8:
      v11 = (*(*v9 + 256))();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2529F7B8C(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      if (v13 >= v12 >> 1)
      {
        v7 = sub_2529F7B8C((v12 > 1), v13 + 1, 1, v7);
      }

      *(v7 + 2) = v13 + 1;
      *&v7[8 * v13 + 32] = v11;
      ++v8;
      if (v10 == i)
      {
        goto LABEL_17;
      }
    }

    if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_119;
    }

    v9 = *(a2 + 8 * v8 + 32);

    v10 = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
      goto LABEL_8;
    }

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
    ;
  }

LABEL_17:
  v14 = sub_252C759A0(v7);

  v15 = MEMORY[0x277D84F90];
  v117 = MEMORY[0x277D84F90];
  if (!i)
  {
    goto LABEL_28;
  }

  v16 = 0;
  while (2)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x2530ADF00](v16, a2);
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      goto LABEL_22;
    }

    if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_120;
    }

    v17 = *(a2 + 8 * v16 + 32);

    v18 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
LABEL_22:
      v19 = (*(*v17 + 272))();

      sub_25297AEDC(v19);
      ++v16;
      if (v18 == i)
      {
        goto LABEL_27;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_27:
  v15 = v117;
LABEL_28:
  v20 = sub_252C759A0(v15);

  v21 = sub_2529F2308(v20, v14);
  v22 = v21;
  v23 = *(v21 + 32);
  v24 = ((1 << v23) + 63) >> 6;
  if ((v23 & 0x3Fu) <= 0xD)
  {
    goto LABEL_29;
  }

  v100 = v22;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_29:
    v109 = &v109;
    v110 = v24;
    MEMORY[0x28223BE20](v21);
    v114 = &v109 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v114, v25);
    v116 = 0;
    v26 = 0;
    v27 = 1 << *(v22 + 32);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & *(v22 + 56);
    v30 = (v27 + 63) >> 6;
    while (v29)
    {
      v31 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
LABEL_40:
      v34 = v31 | (v26 << 6);
      v35 = *(*(v22 + 48) + 8 * v34);
      if (qword_27F53F368 != -1)
      {
        swift_once();
      }

      v36 = qword_27F575830;
      if (*(qword_27F575830 + 16) && (v37 = *(qword_27F575830 + 40), sub_252E37EC4(), MEMORY[0x2530AE390](v35), v38 = sub_252E37F14(), v39 = -1 << *(v36 + 32), v40 = v38 & ~v39, ((*(v36 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) != 0))
      {
        v41 = ~v39;
        while (*(*(v36 + 48) + 8 * v40) != v35)
        {
          v40 = (v40 + 1) & v41;
          if (((*(v36 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
LABEL_47:
        *&v114[(v34 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v34;
        if (__OFADD__(v116++, 1))
        {
          goto LABEL_122;
        }
      }
    }

    v32 = v26;
    while (1)
    {
      v26 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v26 >= v30)
      {
        v43 = sub_252C53500(v114, v110, v116, v22);
        v116 = 0;
        goto LABEL_51;
      }

      v33 = *(v22 + 56 + 8 * v26);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v29 = (v33 - 1) & v33;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v101 = swift_slowAlloc();

  v43 = sub_252C54758(v101, v24, v100, sub_252B1C5BC);
  v116 = 0;
  swift_bridgeObjectRelease_n();
  MEMORY[0x2530AED00](v101, -1, -1);
LABEL_51:
  v44 = v43 + 56;
  v45 = 1 << *(v43 + 32);
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  else
  {
    v46 = -1;
  }

  v47 = v46 & *(v43 + 56);
  v48 = (v45 + 63) >> 6;

  for (j = 0; ; j = v51)
  {
    v50 = &unk_27F575000;
    if (!v47)
    {
      break;
    }

    v51 = j;
LABEL_60:
    v52 = *(*(v43 + 48) + ((v51 << 9) | (8 * __clz(__rbit64(v47)))));
    if (qword_27F53F358 != -1)
    {
      swift_once();
      v50 = &unk_27F575000;
    }

    v53 = v50[260];
    if (!*(v53 + 16) || (v54 = *(v53 + 40), sub_252E37EC4(), MEMORY[0x2530AE390](v52), v55 = sub_252E37F14(), v56 = -1 << *(v53 + 32), v57 = v55 & ~v56, ((*(v53 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0))
    {
LABEL_69:

      if (qword_27F53F488 != -1)
      {
        swift_once();
      }

      v59 = v113;
      v60 = __swift_project_value_buffer(v113, qword_27F544C40);
      (*(v112 + 16))(v111, v60, v59);
      v117 = 0;
      v118 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000048, 0x8000000252E7C7B0);
      v61 = 1 << *(v43 + 32);
      v62 = -1;
      if (v61 < 64)
      {
        v62 = ~(-1 << v61);
      }

      v63 = v62 & *(v43 + 56);
      v64 = (v61 + 63) >> 6;

      v65 = 0;
      v66 = MEMORY[0x277D84F90];
      if (v63)
      {
        goto LABEL_78;
      }

      while (1)
      {
        do
        {
          v67 = v65 + 1;
          if (__OFADD__(v65, 1))
          {
            goto LABEL_117;
          }

          if (v67 >= v64)
          {

            v73 = MEMORY[0x2530AD730](v66, MEMORY[0x277D837D0]);
            v75 = v74;

            MEMORY[0x2530AD570](v73, v75);

            v76 = v111;
            sub_252CC3D90(v117, v118, 0xD00000000000008DLL, 0x8000000252E7BF00);

            (*(v112 + 8))(v76, v113);
            goto LABEL_85;
          }

          v63 = *(v44 + 8 * v67);
          ++v65;
        }

        while (!v63);
        v65 = v67;
        do
        {
LABEL_78:
          v68 = HomeDeviceType.description.getter(*(*(v43 + 48) + ((v65 << 9) | (8 * __clz(__rbit64(v63))))));
          a2 = v69;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_2529F7A80(0, *(v66 + 2) + 1, 1, v66);
          }

          v71 = *(v66 + 2);
          v70 = *(v66 + 3);
          if (v71 >= v70 >> 1)
          {
            v66 = sub_2529F7A80((v70 > 1), v71 + 1, 1, v66);
          }

          v63 &= v63 - 1;
          *(v66 + 2) = v71 + 1;
          v72 = &v66[16 * v71];
          *(v72 + 4) = v68;
          *(v72 + 5) = a2;
        }

        while (v63);
      }
    }

    v47 &= v47 - 1;
    v58 = ~v56;
    while (*(*(v53 + 48) + 8 * v57) != v52)
    {
      v57 = (v57 + 1) & v58;
      if (((*(v53 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
      {
        goto LABEL_69;
      }
    }
  }

  while (1)
  {
    v51 = j + 1;
    if (__OFADD__(j, 1))
    {
      goto LABEL_121;
    }

    if (v51 >= v48)
    {
      break;
    }

    v47 = *(v44 + 8 * v51);
    ++j;
    if (v47)
    {
      goto LABEL_60;
    }
  }

  v79 = v115;
  if (!(v115 >> 62))
  {
    v80 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v80)
    {
      goto LABEL_132;
    }

    goto LABEL_89;
  }

  v80 = sub_252E378C4();
  v79 = v115;
  if (v80)
  {
LABEL_89:
    v81 = 0;
    v82 = v79 & 0xC000000000000001;
    v83 = v79 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v82)
      {
        v84 = MEMORY[0x2530ADF00](v81, v79);
      }

      else
      {
        if (v81 >= *(v83 + 16))
        {
          goto LABEL_124;
        }

        v84 = *(v79 + 8 * v81 + 32);
      }

      v85 = v84;
      v86 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        goto LABEL_123;
      }

      v87 = [v84 outerDeviceName];
      if (v87)
      {
        break;
      }

      v88 = [v85 homeEntityName];
      if (v88)
      {
        goto LABEL_100;
      }

      ++v81;
      v79 = v115;
      if (v86 == v80)
      {
        v92 = 0;
        while (1)
        {
          if (v82)
          {
            v93 = MEMORY[0x2530ADF00](v92, v79);
          }

          else
          {
            if (v92 >= *(v83 + 16))
            {
              goto LABEL_126;
            }

            v93 = *(v79 + 8 * v92 + 32);
          }

          v94 = v93;
          v95 = v92 + 1;
          if (__OFADD__(v92, 1))
          {
            goto LABEL_125;
          }

          v96 = [v93 entityIdentifiers];
          if (v96)
          {
            v97 = v96;
            v98 = sub_252E37264();

            v99 = *(v98 + 16);

            if (v99)
            {
              if (qword_27F53F488 == -1)
              {
                goto LABEL_115;
              }

              goto LABEL_148;
            }
          }

          else
          {
          }

          ++v92;
          v79 = v115;
          if (v95 == v80)
          {
            goto LABEL_132;
          }
        }
      }
    }

    v89 = v87;
    v88 = v85;
    v85 = v89;
LABEL_100:

    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v113, qword_27F544C40);
    v90 = "r requested deviceTypes ";
    v91 = 0xD000000000000053;
    goto LABEL_103;
  }

LABEL_132:
  v102 = sub_252B1112C(a2);
  v103 = sub_252C766E8(v102);

  if ((v103 & 0xC000000000000001) == 0)
  {
    if (*(v103 + 16) < 2)
    {
      goto LABEL_139;
    }

LABEL_134:
    if (v80 <= 0)
    {
      v104 = 0;
    }

    else
    {
      if ((v115 & 0xC000000000000001) == 0)
      {
        if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v104 = *(v115 + 32);
          goto LABEL_141;
        }

        __break(1u);
LABEL_148:
        swift_once();
LABEL_115:
        __swift_project_value_buffer(v113, qword_27F544C40);
        v90 = "name in the filter)";
        v91 = 0xD000000000000058;
LABEL_103:
        sub_252CC3D90(v91, v90 | 0x8000000000000000, 0xD00000000000008DLL, 0x8000000252E7BF00);
        goto LABEL_85;
      }

      v104 = MEMORY[0x2530ADF00](0);
    }

LABEL_141:
    v105 = sub_2529A395C(v103);

    if ((v105 & 0x8000000000000000) != 0 || (v105 & 0x4000000000000000) != 0)
    {
      type metadata accessor for Entity();

      v106 = sub_252E37B14();
    }

    else
    {

      sub_252E37DD4();
      type metadata accessor for Entity();
      v106 = v105;
    }

    type metadata accessor for ControlHomeFiltersResolutionResult();
    v107 = sub_252B12A98(v104, v106);

    v108 = sub_252E2B068(v107);

    result = v108;
    goto LABEL_86;
  }

  if (sub_252E378C4() >= 2)
  {
    goto LABEL_134;
  }

LABEL_139:

LABEL_85:
  result = 0;
LABEL_86:
  v78 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_252B15A8C(uint64_t a1, unint64_t a2)
{
  v152 = *MEMORY[0x277D85DE8];
  v137 = sub_252E32E84();
  v138 = *(v137 - 8);
  v4 = *(v138 + 64);
  MEMORY[0x28223BE20](v137);
  v139 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_252E36AD4();
  v136 = *(v140 - 8);
  v6 = *(v136 + 64);
  MEMORY[0x28223BE20](v140);
  v135 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F360 != -1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    v8 = qword_27F575828;
    v9 = qword_27F53F358;

    if (v9 != -1)
    {
      swift_once();
    }

    v144 = sub_2529F2308(v10, v8);
    v11 = a2 >> 62 ? sub_252E378C4() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v147 = a1;
    v12 = MEMORY[0x277D84F90];
    v143 = MEMORY[0x277D84F90];
    if (!v11)
    {
      break;
    }

    a1 = 0;
    while ((a2 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x2530ADF00](a1, a2);
      v14 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_62;
      }

LABEL_11:
      v15 = (*(*v13 + 256))();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_2529F7B8C(0, *(v12 + 2) + 1, 1, v12);
      }

      v17 = *(v12 + 2);
      v16 = *(v12 + 3);
      if (v17 >= v16 >> 1)
      {
        v12 = sub_2529F7B8C((v16 > 1), v17 + 1, 1, v12);
      }

      *(v12 + 2) = v17 + 1;
      *&v12[8 * v17 + 32] = v15;
      ++a1;
      if (v14 == v11)
      {
        goto LABEL_20;
      }
    }

    if (a1 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_63;
    }

    v13 = *(a2 + 8 * a1 + 32);

    v14 = a1 + 1;
    if (!__OFADD__(a1, 1))
    {
      goto LABEL_11;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    swift_once();
  }

LABEL_20:
  a1 = sub_252C759A0(v12);

  v18 = MEMORY[0x277D84F90];
  v151 = MEMORY[0x277D84F90];
  if (!v11)
  {
    goto LABEL_31;
  }

  v19 = 0;
  while (2)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x2530ADF00](v19, a2);
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      goto LABEL_25;
    }

    if (v19 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_64;
    }

    v20 = *(a2 + 8 * v19 + 32);

    v21 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
LABEL_25:
      v22 = (*(*v20 + 272))();

      sub_25297AEDC(v22);
      ++v19;
      if (v21 == v11)
      {
        goto LABEL_30;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_30:
  v18 = v151;
LABEL_31:
  v23 = sub_252C759A0(v18);

  v24 = sub_2529F2308(v23, a1);
  v25 = v24;
  v26 = *(v24 + 32);
  v27 = ((1 << v26) + 63) >> 6;
  v146 = a2;
  v148 = v11;
  if ((v26 & 0x3Fu) > 0xD)
  {

    v48 = v25;
    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_186;
    }
  }

  v141 = &v135;
  v142 = v27;
  MEMORY[0x28223BE20](v24);
  v145 = &v135 - ((v28 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v145, v28);
  v29 = 0;
  v30 = 0;
  v31 = 1 << *(v25 + 32);
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & *(v25 + 56);
  a1 = (v31 + 63) >> 6;
  while (v33)
  {
    v34 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
LABEL_44:
    v37 = v34 | (v30 << 6);
    v38 = *(*(v25 + 48) + 8 * v37);
    if (qword_27F53F368 != -1)
    {
      swift_once();
    }

    v39 = qword_27F575830;
    if (*(qword_27F575830 + 16) && (v40 = *(qword_27F575830 + 40), sub_252E37EC4(), MEMORY[0x2530AE390](v38), v41 = sub_252E37F14(), v42 = -1 << *(v39 + 32), v43 = v41 & ~v42, ((*(v39 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) != 0))
    {
      v44 = ~v42;
      while (*(*(v39 + 48) + 8 * v43) != v38)
      {
        v43 = (v43 + 1) & v44;
        if (((*(v39 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      a2 = v146;
    }

    else
    {
LABEL_51:
      a2 = v146;
      *&v145[(v37 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v37;
      if (__OFADD__(v29++, 1))
      {
        goto LABEL_65;
      }
    }
  }

  v35 = v30;
  while (1)
  {
    v30 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v30 >= a1)
    {
      break;
    }

    v36 = *(v25 + 56 + 8 * v30);
    ++v35;
    if (v36)
    {
      v34 = __clz(__rbit64(v36));
      v33 = (v36 - 1) & v36;
      goto LABEL_44;
    }
  }

  v46 = sub_252C53500(v145, v142, v29, v25);
  while (1)
  {
    v47 = v147;
    v48 = v144;
    v145 = 0;
    if (v147 >> 62)
    {
      v27 = sub_252E378C4();
      if (!v27)
      {
LABEL_71:
        v51 = 0;
        goto LABEL_72;
      }
    }

    else
    {
      v27 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        goto LABEL_71;
      }
    }

    if ((v47 & 0xC000000000000001) != 0)
    {
      goto LABEL_184;
    }

    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    __break(1u);
LABEL_186:
    v134 = swift_slowAlloc();

    v46 = sub_252C54758(v134, v27, v48, sub_252B1C5BC);
    swift_bridgeObjectRelease_n();
    MEMORY[0x2530AED00](v134, -1, -1);
  }

  v49 = *(v47 + 32);
  while (2)
  {
    v50 = v49;
    v51 = [(__objc2_class *)v49 deviceType];

LABEL_72:
    if (sub_252DB4F4C(v51, v48))
    {

      if (!v27)
      {
        goto LABEL_137;
      }

      goto LABEL_110;
    }

    v142 = v51;
    v52 = 0;
    v47 = v46;
    v53 = v46 + 56;
    v54 = 1 << *(v46 + 32);
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    else
    {
      v55 = -1;
    }

    v56 = v55 & *(v46 + 56);
    v57 = (v54 + 63) >> 6;
    v58 = v48 + 7;
    if (!v56)
    {
LABEL_80:
      while (1)
      {
        v46 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if (v46 >= v57)
        {

          v47 = v147;
          goto LABEL_109;
        }

        v56 = *(v53 + 8 * v46);
        ++v52;
        if (v56)
        {
          goto LABEL_83;
        }
      }

LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    while (1)
    {
      v46 = v52;
LABEL_83:
      v48 = v144;
      if (!*(v144 + 16))
      {
        break;
      }

      v59 = *(*(v47 + 48) + ((v46 << 9) | (8 * __clz(__rbit64(v56)))));
      v60 = *(v144 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v59);
      v61 = sub_252E37F14();
      v62 = -1 << *(v48 + 32);
      v63 = v61 & ~v62;
      if (((*(v58 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
      {
        break;
      }

      v56 &= v56 - 1;
      v64 = ~v62;
      while (*(&v48[6]->isa + v63) != v59)
      {
        v63 = (v63 + 1) & v64;
        if (((*(v58 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      v52 = v46;
      a2 = v146;
      if (!v56)
      {
        goto LABEL_80;
      }
    }

LABEL_91:

    v65 = sub_252B680FC();
    swift_beginAccess();
    v66 = *(v65 + 16);
    v67 = *(v66 + 16);
    if (v67)
    {
      v68 = *(v66 + 504 * v67 - 86);

      a2 = v146;
      v47 = v147;
      if (v68 != 1)
      {
        if (qword_27F53F488 == -1)
        {
LABEL_94:
          v48 = 0xD00000000000008DLL;
          v69 = v140;
          v70 = __swift_project_value_buffer(v140, qword_27F544C40);
          (*(v136 + 16))(v135, v70, v69);
          v149 = 0;
          v150 = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD00000000000004DLL, 0x8000000252E7C6A0);
          v71 = HomeDeviceType.description.getter(v142);
          MEMORY[0x2530AD570](v71);

          MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E7C480);
          if (v148)
          {
            v27 = 0;
            v72 = a2 & 0xC000000000000001;
            v73 = a2 & 0xFFFFFFFFFFFFFF8;
            v74 = MEMORY[0x277D84F90];
            a2 = &OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
            while (1)
            {
              if (v72)
              {
                v46 = MEMORY[0x2530ADF00](v27, v146);
                v48 = (v27 + 1);
                if (__OFADD__(v27, 1))
                {
                  goto LABEL_182;
                }
              }

              else
              {
                if (v27 >= *(v73 + 16))
                {
                  goto LABEL_183;
                }

                v46 = v146[v27 + 4];

                v48 = (v27 + 1);
                if (__OFADD__(v27, 1))
                {
                  goto LABEL_182;
                }
              }

              v76 = *(v46 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
              v75 = *(v46 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v74 = sub_2529F7A80(0, *(v74 + 2) + 1, 1, v74);
              }

              v47 = *(v74 + 2);
              v77 = *(v74 + 3);
              v46 = v47 + 1;
              if (v47 >= v77 >> 1)
              {
                v74 = sub_2529F7A80((v77 > 1), v47 + 1, 1, v74);
              }

              *(v74 + 2) = v46;
              v78 = &v74[16 * v47];
              *(v78 + 4) = v76;
              *(v78 + 5) = v75;
              ++v27;
              if (v48 == v148)
              {
                goto LABEL_172;
              }
            }
          }

          v74 = MEMORY[0x277D84F90];
LABEL_172:
          v129 = MEMORY[0x2530AD730](v74, MEMORY[0x277D837D0]);
          v131 = v130;

          MEMORY[0x2530AD570](v129, v131);

          v132 = v135;
          sub_252CC3D90(v149, v150, 0xD00000000000008DLL, 0x8000000252E7BF00);

          (*(v136 + 8))(v132, v140);
          goto LABEL_173;
        }

LABEL_190:
        swift_once();
        goto LABEL_94;
      }

LABEL_109:
      if (!v27)
      {
        goto LABEL_137;
      }

LABEL_110:
      v79 = 0;
      v80 = v47 & 0xC000000000000001;
      v81 = v47 & 0xFFFFFFFFFFFFFF8;
      v48 = &off_279711000;
      do
      {
        if (v80)
        {
          v82 = MEMORY[0x2530ADF00](v79, v47);
        }

        else
        {
          if (v79 >= *(v81 + 16))
          {
            goto LABEL_178;
          }

          v82 = *(v47 + 8 * v79 + 32);
        }

        v46 = v82;
        v47 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
          goto LABEL_179;
        }

        v83 = [(__objc2_class *)v82 outerDeviceName];
        if (v83)
        {
          v86 = v83;
          v84 = v46;
          v46 = v86;
LABEL_122:

          if (qword_27F53F488 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v140, qword_27F544C40);
          v87 = "r an intent with device type ";
          v88 = 0xD000000000000053;
LABEL_125:
          sub_252CC3D90(v88, v87 | 0x8000000000000000, 0xD00000000000008DLL, 0x8000000252E7BF00);
          goto LABEL_173;
        }

        v84 = [v46 homeEntityName];
        if (v84)
        {
          goto LABEL_122;
        }

        ++v79;
        v85 = v47 == v27;
        v47 = v147;
      }

      while (!v85);
      v89 = 0;
      v48 = &off_279711000;
      while (1)
      {
        if (v80)
        {
          v90 = MEMORY[0x2530ADF00](v89, v47);
        }

        else
        {
          if (v89 >= *(v81 + 16))
          {
            goto LABEL_181;
          }

          v90 = *(v47 + 8 * v89 + 32);
        }

        v91 = v90;
        v46 = v89 + 1;
        if (__OFADD__(v89, 1))
        {
          break;
        }

        v92 = [(__objc2_class *)v90 entityIdentifiers];
        if (v92)
        {
          v93 = v92;
          v94 = sub_252E37264();

          v95 = *(v94 + 16);
          a2 = v146;

          if (v95)
          {
            if (qword_27F53F488 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v140, qword_27F544C40);
            v87 = "name in the filter)";
            v88 = 0xD000000000000058;
            goto LABEL_125;
          }
        }

        else
        {
        }

        ++v89;
        v47 = v147;
        if (v46 == v27)
        {
          goto LABEL_137;
        }
      }

LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      v49 = MEMORY[0x2530ADF00](0, v47);
      continue;
    }

    break;
  }

  a2 = v146;
  v47 = v147;
  if (v27)
  {
    goto LABEL_110;
  }

LABEL_137:
  v149 = MEMORY[0x277D84F90];
  if (v148)
  {
    v96 = 0;
    v97 = a2 & 0xC000000000000001;
    v98 = a2 & 0xFFFFFFFFFFFFFF8;
    v143 = MEMORY[0x277D84F90];
    v48 = (v138 + 32);
    do
    {
      v46 = v96;
      v47 = &off_279711000;
      while (1)
      {
        if (v97)
        {
          v99 = MEMORY[0x2530ADF00](v46, a2);
          v96 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            goto LABEL_175;
          }
        }

        else
        {
          if (v46 >= *(v98 + 16))
          {
            goto LABEL_176;
          }

          v99 = *(a2 + 8 * v46 + 32);

          v96 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }
        }

        v100 = [*(v99 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
        if (v100)
        {
          break;
        }

        ++v46;
        if (v96 == v148)
        {
          v47 = v147;
          goto LABEL_155;
        }
      }

      v144 = v48;
      v101 = v100;
      v102 = type metadata accessor for Room();
      v103 = *(v102 + 48);
      v104 = *(v102 + 52);
      v105 = swift_allocObject();
      *(v105 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v101;
      v46 = v101;
      v106 = [v46 uniqueIdentifier];
      sub_252E32E64();

      v107 = [v46 name];
      v108 = sub_252E36F34();
      v142 = v109;
      v143 = v108;

      v110 = [v46 assistantIdentifier];
      if (v110)
      {
        v111 = v110;
        v112 = sub_252E36F34();
        v114 = v113;

        v115 = v112;
      }

      else
      {

        v115 = 0;
        v114 = 0;
      }

      a2 = v146;
      v48 = v144;
      v116 = (*v144)(v105 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v139, v137);
      v117 = (v105 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v118 = v142;
      *v117 = v143;
      v117[1] = v118;
      *(v105 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
      v119 = (v105 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v119 = v115;
      v119[1] = v114;
      MEMORY[0x2530AD700](v116);
      v120 = v105;
      v47 = v147;
      if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v149 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v46 = v120;
        v121 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
        v48 = v144;
      }

      sub_252E372D4();
      v143 = v149;
    }

    while (v96 != v148);
  }

LABEL_155:
  v122 = sub_252C7600C(v143);

  if ((v122 & 0xC000000000000001) == 0)
  {
    if (*(v122 + 16) < 2)
    {
      goto LABEL_162;
    }

LABEL_157:
    if (v27 <= 0)
    {
      v123 = 0;
    }

    else if ((v47 & 0xC000000000000001) != 0)
    {
      v123 = MEMORY[0x2530ADF00](0, v47);
    }

    else
    {
      if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_190;
      }

      v123 = *(v47 + 32);
    }

    v124 = sub_2529A3988(v122);

    if ((v124 & 0x8000000000000000) != 0 || (v124 & 0x4000000000000000) != 0)
    {
      type metadata accessor for Entity();

      v125 = sub_252E37B14();
    }

    else
    {

      v125 = v124;
      sub_252E37DD4();
      type metadata accessor for Entity();
    }

    type metadata accessor for ControlHomeFiltersResolutionResult();
    v126 = sub_252B12A98(v123, v125);

    v127 = sub_252E2B068(v126);

    result = v127;
    goto LABEL_174;
  }

  if (sub_252E378C4() >= 2)
  {
    goto LABEL_157;
  }

LABEL_162:

LABEL_173:
  result = 0;
LABEL_174:
  v133 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252B16CB8(void *a1, unint64_t a2, unint64_t a3)
{
  v178 = a1;
  v184 = sub_252E36AD4();
  v5 = *(v184 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v184);
  v8 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_252E32E84();
  v9 = *(v180 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v180);
  v179 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &off_279711000;
  v13 = &off_279711000;
  if ((sub_2529C77E4() & 1) == 0 || (v14 = [a2 value]) == 0 || (v15 = v14, v16 = objc_msgSend(v14, sel_cleaningJob), v15, !v16))
  {
LABEL_56:
    if (qword_27F53F488 != -1)
    {
      goto LABEL_136;
    }

    goto LABEL_57;
  }

  v17 = [v16 targetAreas];
  if (!v17)
  {

    goto LABEL_56;
  }

  v18 = v17;
  v163 = v16;
  type metadata accessor for HomeAttributeTargetArea();
  v19 = sub_252E37264();

  v190 = MEMORY[0x277D84F90];
  v162 = a3;
  if (a3 >> 62)
  {
    goto LABEL_144;
  }

  v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v20 = MEMORY[0x277D84F90];
    if (v8)
    {
      v21 = 0;
      v176 = v162 & 0xFFFFFFFFFFFFFF8;
      v177 = v162 & 0xC000000000000001;
      v174 = v162 + 32;
      v175 = (v9 + 8);
      v164 = "Modified user task: ";
      v170 = "tity with accessoryID ";
      v169 = ". Returning .robotVacuumCleaner";
      v168 = "MatterAccessory.swift";
      v167 = "for accessoryID ";
      v166 = "MatterAccessoryManager.swift";
      v165 = "deviceEntity(for:)";
      v172 = v19;
      v173 = a2;
      v171 = v8;
      while (1)
      {
        if (v177)
        {
          v5 = MEMORY[0x2530ADF00](v21, v162);
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_132;
          }
        }

        else
        {
          if (v21 >= *(v176 + 16))
          {
            goto LABEL_133;
          }

          v5 = *(v174 + 8 * v21);

          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_132;
          }
        }

        v181 = v23;
        v24 = [*(v5 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
        v25 = v179;
        sub_252E32E64();

        v19 = sub_252E32E24();
        v185 = v26;
        (*v175)(v25, v180);
        v27 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
        v8 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
        swift_beginAccess();
        v182 = v5;
        v183 = v27;
        v9 = *&v27[v8];
        if (v9 >> 62)
        {
          if (v9 < 0)
          {
            v35 = *&v27[v8];
          }

          v28 = sub_252E378C4();
        }

        else
        {
          v28 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v28)
        {
          break;
        }

        a2 = 0;
        v5 = v9 & 0xC000000000000001;
        v13 = (v9 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v5)
          {
            v29 = MEMORY[0x2530ADF00](a2, v9);
            v12 = a2 + 1;
            if (__OFADD__(a2, 1))
            {
              goto LABEL_130;
            }
          }

          else
          {
            if (a2 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_131;
            }

            v29 = *(v9 + 8 * a2 + 32);

            v12 = a2 + 1;
            if (__OFADD__(a2, 1))
            {
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
LABEL_136:
              swift_once();
LABEL_57:
              v36 = v184;
              v37 = __swift_project_value_buffer(v184, qword_27F544C40);
              (*(v5 + 16))(v8, v37, v36);
              v188 = 0;
              v189 = 0xE000000000000000;
              sub_252E379F4();
              MEMORY[0x2530AD570](0xD00000000000004FLL, 0x8000000252E7C610);
              v38 = sub_2529C77E4();
              v39 = (v38 & 1) == 0;
              if (v38)
              {
                v40 = 1702195828;
              }

              else
              {
                v40 = 0x65736C6166;
              }

              if (v39)
              {
                v41 = 0xE500000000000000;
              }

              else
              {
                v41 = 0xE400000000000000;
              }

              MEMORY[0x2530AD570](v40, v41);

              MEMORY[0x2530AD570](0x6E696E61656C630ALL, 0xEE00203A626F4A67);
              v42 = [a2 *(v12 + 1648)];
              v43 = [v42 v13[207]];

              v186 = v43;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433C8, &qword_252E4B818);
              v44 = sub_252E36F94();
              MEMORY[0x2530AD570](v44);

              MEMORY[0x2530AD570](0x417465677261740ALL, 0xEE00203A73616572);
              v45 = [a2 *(v12 + 1648)];
              if (!v45)
              {
                goto LABEL_67;
              }

              v46 = v45;
              v47 = [v45 v13[207]];

              if (!v47)
              {
                goto LABEL_68;
              }

              v48 = [v47 targetAreas];

              if (v48)
              {
                type metadata accessor for HomeAttributeTargetArea();
                v47 = sub_252E37264();
              }

              else
              {
LABEL_67:
                v47 = 0;
              }

LABEL_68:
              v186 = v47;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433D0, &qword_252E4B820);
              v49 = sub_252E36F94();
              MEMORY[0x2530AD570](v49);

              sub_252CC4050(v188, v189, 0xD00000000000008DLL, 0x8000000252E7BF00, 0xD000000000000030, 0x8000000252E7C660, 636);

              (*(v5 + 8))(v8, v184);
              return 0;
            }
          }

          v30 = *(v29 + qword_27F5427D0);

          sub_252E36744();

          if (v187)
          {
            if (v186 == v19 && v187 == v185)
            {

              goto LABEL_36;
            }

            v8 = sub_252E37DB4();

            if (v8)
            {
              break;
            }
          }

          ++a2;
          if (v12 == v28)
          {
            goto LABEL_30;
          }
        }

LABEL_36:

        v31 = sub_252BF8258(v29);
        a2 = v173;
        v5 = 0xD00000000000001FLL;
        if (!v31)
        {
          goto LABEL_43;
        }

        if (!*(v31 + 2))
        {

LABEL_43:
          if (qword_27F53F4B0 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v184, qword_27F544CB8);
          v186 = 0;
          v187 = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000036, v164 | 0x8000000000000000);
          MEMORY[0x2530AD570](v19, v185);

          MEMORY[0x2530AD570](0xD00000000000001FLL, v170 | 0x8000000000000000);
          sub_252CC4050(v186, v187, 0xD000000000000075, v169 | 0x8000000000000000, 1701869940, 0xE400000000000000, 102);

LABEL_46:

          v19 = v172;
          goto LABEL_47;
        }

        v32 = v31;

        if (!*(v32 + 2))
        {
          goto LABEL_143;
        }

        v33 = *(v32 + 4);

        v19 = v172;
        if (v33 != 46)
        {
          if (sub_252D50560(a2))
          {
            goto LABEL_48;
          }

          goto LABEL_9;
        }

LABEL_47:
        if (sub_25292AB64(a2))
        {
LABEL_48:
          sub_252E37A94();
          v34 = *(v190 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          goto LABEL_10;
        }

LABEL_9:

LABEL_10:
        v8 = v171;
        v21 = v181;
        if (v181 == v171)
        {
          v20 = v190;
          goto LABEL_71;
        }
      }

LABEL_30:

      if (qword_27F53F560 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v184, qword_27F544EC8);
      v5 = 0xE000000000000000;
      v186 = 0;
      v187 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000040, v168 | 0x8000000000000000);
      v13 = v185;
      MEMORY[0x2530AD570](v19, v185);
      sub_252CC4050(v186, v187, 0xD00000000000007CLL, v167 | 0x8000000000000000, 0xD000000000000012, v166 | 0x8000000000000000, 375);

      a2 = v173;
      if (qword_27F53F4B0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v184, qword_27F544CB8);
      v186 = 0;
      v187 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000027, v165 | 0x8000000000000000);
      MEMORY[0x2530AD570](v19, v13);

      MEMORY[0x2530AD570](0xD00000000000001FLL, v170 | 0x8000000000000000);
      sub_252CC4050(v186, v187, 0xD000000000000075, v169 | 0x8000000000000000, 1701869940, 0xE400000000000000, 96);
      goto LABEL_46;
    }

LABEL_71:
    v185 = v20;
    if (v19 >> 62)
    {
      v8 = sub_252E378C4();
      if (v8)
      {
LABEL_73:
        v51 = 0;
        v12 = v19 & 0xC000000000000001;
        a2 = &off_279711000;
        do
        {
          if (v12)
          {
            v52 = MEMORY[0x2530ADF00](v51, v19);
          }

          else
          {
            if (v51 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_135;
            }

            v52 = *(v19 + 8 * v51 + 32);
          }

          v53 = v52;
          v5 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            goto LABEL_134;
          }

          [v52 areaID];
          if (v54 == -2.0)
          {
            [v53 mapID];
            v56 = v55;

            if (v56 == -2.0)
            {
              v9 = 0;
              v186 = MEMORY[0x277D84F90];
              do
              {
                if (v12)
                {
                  v57 = MEMORY[0x2530ADF00](v9, v19);
                }

                else
                {
                  if (v9 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_142;
                  }

                  v57 = *(v19 + 8 * v9 + 32);
                }

                v5 = v57;
                v58 = v9 + 1;
                if (__OFADD__(v9, 1))
                {
                  __break(1u);
                  goto LABEL_138;
                }

                [v57 areaID];
                if (v59 == -2.0 && ([v5 mapID], v60 == -2.0))
                {
                  sub_252E37A94();
                  v13 = *(v186 + 16);
                  sub_252E37AC4();
                  sub_252E37AD4();
                  sub_252E37AA4();
                }

                else
                {
                }

                ++v9;
              }

              while (v58 != v8);

              v61 = v186;
              if ((v186 & 0x8000000000000000) == 0 && (v186 & 0x4000000000000000) == 0)
              {
                v9 = *(v186 + 16);
                goto LABEL_97;
              }

              goto LABEL_190;
            }
          }

          else
          {
          }

          ++v51;
        }

        while (v5 != v8);
      }
    }

    else
    {
      v8 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_73;
      }
    }

    v82 = [v163 cleanModes];
    v83 = sub_252E37264();

    LOBYTE(v82) = sub_2529A6C5C(14, v83);

    if (v82)
    {
LABEL_147:

      v84 = v185;
      if ((v185 & 0x8000000000000000) != 0 || (v185 & 0x4000000000000000) != 0)
      {
        goto LABEL_188;
      }

      v85 = *(v185 + 16);
      goto LABEL_150;
    }

    v98 = 0;
    v84 = v19 & 0xC000000000000001;
    v13 = &off_279711000;
    while (1)
    {
      if (v8 == v98)
      {

        v103 = v163;
        v104 = [v163 targetMap];
        if (v104)
        {
          v105 = v104;
          [v104 mapID];
          if (v106 == -2.0)
          {
            if ((v185 & 0x8000000000000000) == 0 && (v185 & 0x4000000000000000) == 0)
            {
              v107 = *(v185 + 16);
              goto LABEL_174;
            }

            goto LABEL_253;
          }
        }

        return 0;
      }

      if (v84)
      {
        v99 = MEMORY[0x2530ADF00](v98, v19);
      }

      else
      {
        if (v98 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_187;
        }

        v99 = *(v19 + 8 * v98 + 32);
      }

      v100 = v99;
      if (__OFADD__(v98, 1))
      {
        break;
      }

      [v99 areaID];
      v102 = v101;

      ++v98;
      if (v102 == -2.0)
      {
        goto LABEL_147;
      }
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v85 = sub_252E378C4();
LABEL_150:
    if (!v85)
    {

LABEL_168:

      return MEMORY[0x277D84F90];
    }

    v186 = MEMORY[0x277D84F90];
    v61 = &v186;
    sub_252E37AB4();
    if ((v85 & 0x8000000000000000) == 0)
    {
      v86 = 0;
      v87 = v84;
      v88 = v84 & 0xC000000000000001;
      do
      {
        if (v88)
        {
          v89 = MEMORY[0x2530ADF00](v86);
        }

        else
        {
          v89 = *(v87 + 8 * v86 + 32);
        }

        ++v86;
        v90 = *(v89 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v91 = *(v89 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
        type metadata accessor for HomeFilter.Builder();
        v92 = swift_allocObject();
        *(v92 + 16) = 0;
        *(v92 + 24) = 0;
        *(v92 + 32) = 0;
        *(v92 + 40) = 7;
        *(v92 + 48) = 0u;
        *(v92 + 64) = 0u;
        *(v92 + 80) = 0u;
        *(v92 + 96) = 0u;
        *(v92 + 112) = 0u;
        *(v92 + 128) = 0u;
        *(v92 + 144) = 0u;
        *(v92 + 160) = 0u;
        *(v92 + 175) = 0;
        v93 = sub_252B72040(v178);

        v94 = (*(*v93 + 608))(v90, v91);

        v96 = (*(*v94 + 760))(v95);

        [v96 setTargetArea_];
        [v96 setTargetMap_];

        sub_252E37A94();
        v97 = *(v186 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        v87 = v185;
      }

      while (v85 != v86);
LABEL_166:

      return v186;
    }

    __break(1u);
LABEL_190:
    v9 = sub_252E378C4();
LABEL_97:
    v19 = &off_279711000;
    if (v9)
    {
      v62 = 0;
      v184 = MEMORY[0x277D84F90];
LABEL_99:
      v5 = v62;
      while (1)
      {
        if ((v61 & 0xC000000000000001) != 0)
        {
          v63 = MEMORY[0x2530ADF00](v5, v61);
        }

        else
        {
          if (v5 >= *(v61 + 16))
          {
            goto LABEL_139;
          }

          v63 = *(v61 + 8 * v5 + 32);
        }

        v12 = v63;
        v62 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v64 = [(SEL *)v63 name];
        if (v64)
        {
          v65 = v64;
          v66 = sub_252E36F34();
          v13 = v67;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v184 = sub_2529F7A80(0, *(v184 + 2) + 1, 1, v184);
          }

          v69 = *(v184 + 2);
          v68 = *(v184 + 3);
          v12 = v69 + 1;
          if (v69 >= v68 >> 1)
          {
            v184 = sub_2529F7A80((v68 > 1), v69 + 1, 1, v184);
          }

          v70 = v184;
          *(v184 + 2) = v12;
          v71 = &v70[16 * v69];
          *(v71 + 4) = v66;
          *(v71 + 5) = v13;
          if (v62 != v9)
          {
            goto LABEL_99;
          }

          goto LABEL_115;
        }

        ++v5;
        if (v62 == v9)
        {
          goto LABEL_115;
        }
      }

LABEL_138:
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
LABEL_144:
      v8 = sub_252E378C4();
      continue;
    }

    break;
  }

  v184 = MEMORY[0x277D84F90];
LABEL_115:

  v9 = 0;
  v72 = sub_252B107EC(v185);
  v5 = v72;
  v190 = MEMORY[0x277D84F90];
  if (v72 >> 62)
  {
    v73 = sub_252E378C4();
    if (v73)
    {
LABEL_117:
      v12 = 0;
      v182 = v5 & 0xFFFFFFFFFFFFFF8;
      v183 = (v5 & 0xC000000000000001);
      do
      {
        if (v183)
        {
          v74 = MEMORY[0x2530ADF00](v12, v5);
        }

        else
        {
          if (v12 >= *(v182 + 16))
          {
            goto LABEL_141;
          }

          v74 = *(v5 + 8 * v12 + 32);
        }

        v75 = v74;
        v76 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          goto LABEL_140;
        }

        v13 = v19;
        v77 = [v74 *(v19 + 1600)];
        if (v77)
        {
          v78 = v77;
          v79 = sub_252E36F34();
          v81 = v80;
        }

        else
        {
          v79 = 0;
          v81 = 0xE000000000000000;
        }

        v186 = v79;
        v187 = v81;
        MEMORY[0x28223BE20](v77);
        *(&v162 - 2) = &v186;
        a2 = sub_2529ED970(sub_25296A69C, (&v162 - 4), v184);

        if (a2)
        {
          sub_252E37A94();
          a2 = *(v190 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        v19 = v13;
        ++v12;
      }

      while (v76 != v73);
    }
  }

  else
  {
    v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v73)
    {
      goto LABEL_117;
    }
  }

  v103 = v190;
  if ((v190 & 0x8000000000000000) == 0 && (v190 & 0x4000000000000000) == 0)
  {
    v105 = *(v190 + 16);
    if (v105)
    {
      goto LABEL_195;
    }

LABEL_205:

    v120 = MEMORY[0x277D84F90];
LABEL_206:
    v127 = sub_252C75AFC(v120);

    v128 = sub_252B10C8C(v185);
    v184 = 0;

    v186 = MEMORY[0x277D84F90];
    if (v128 >> 62)
    {
      goto LABEL_226;
    }

    for (i = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v130 = 0;
      v131 = v128 & 0xC000000000000001;
      v19 = v128 & 0xFFFFFFFFFFFFFF8;
      v185 = v128;
      v128 += 32;
      v132 = v127 + 56;
      while (1)
      {
        if (v131)
        {
          v133 = MEMORY[0x2530ADF00](v130, v185);
        }

        else
        {
          if (v130 >= *(v19 + 16))
          {
            goto LABEL_225;
          }

          v133 = *(v128 + 8 * v130);
        }

        v134 = v133;
        v22 = __OFADD__(v130++, 1);
        if (v22)
        {
          break;
        }

        [v133 mapID];
        if (*(v127 + 16) && (v136 = v135, v137 = *(v127 + 40), v138 = sub_252E37EB4(), v139 = -1 << *(v127 + 32), v140 = v138 & ~v139, ((*(v132 + ((v140 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v140) & 1) != 0))
        {
          v141 = ~v139;
          while (*(*(v127 + 48) + 8 * v140) != v136)
          {
            v140 = (v140 + 1) & v141;
            if (((*(v132 + ((v140 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v140) & 1) == 0)
            {
              goto LABEL_209;
            }
          }

          sub_252E37A94();
          v142 = *(v186 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          if (v130 == i)
          {
LABEL_223:
            v143 = v186;
            v19 = 0x279711000;
            goto LABEL_228;
          }
        }

        else
        {
LABEL_209:

          if (v130 == i)
          {
            goto LABEL_223;
          }
        }
      }

      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      ;
    }

    v143 = MEMORY[0x277D84F90];
LABEL_228:

    if (v143 < 0 || (v143 & 0x4000000000000000) != 0)
    {
LABEL_249:
      v144 = sub_252E378C4();
      if (v144)
      {
        goto LABEL_231;
      }
    }

    else
    {
      v144 = *(v143 + 16);
      if (v144)
      {
LABEL_231:
        v145 = 0;
        v146 = MEMORY[0x277D84F90];
        do
        {
          v147 = v145;
          while (1)
          {
            if ((v143 & 0xC000000000000001) != 0)
            {
              v148 = MEMORY[0x2530ADF00](v147, v143);
            }

            else
            {
              if (v147 >= *(v143 + 16))
              {
                goto LABEL_248;
              }

              v148 = *(v143 + 8 * v147 + 32);
            }

            v149 = v148;
            v145 = v147 + 1;
            if (__OFADD__(v147, 1))
            {
              __break(1u);
LABEL_248:
              __break(1u);
              goto LABEL_249;
            }

            v150 = [v148 *(v19 + 1600)];
            if (v150)
            {
              break;
            }

            ++v147;
            if (v145 == v144)
            {
              goto LABEL_251;
            }
          }

          v151 = v150;
          v152 = sub_252E36F34();
          v154 = v153;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v146 = sub_2529F7A80(0, *(v146 + 2) + 1, 1, v146);
          }

          v156 = *(v146 + 2);
          v155 = *(v146 + 3);
          if (v156 >= v155 >> 1)
          {
            v146 = sub_2529F7A80((v155 > 1), v156 + 1, 1, v146);
          }

          *(v146 + 2) = v156 + 1;
          v157 = &v146[16 * v156];
          *(v157 + 4) = v152;
          *(v157 + 5) = v154;
        }

        while (v145 != v144);
        goto LABEL_251;
      }
    }

    v146 = MEMORY[0x277D84F90];
LABEL_251:

    v158 = sub_252C75848(v146);

    v159 = v178;
    v160 = v178;
    v161 = sub_252B1260C(v158, v159);

    return v161;
  }

  v105 = sub_252E378C4();
  if (!v105)
  {
    goto LABEL_205;
  }

LABEL_195:
  v186 = MEMORY[0x277D84F90];
  sub_2529AA660(0, v105 & ~(v105 >> 63), 0);
  if ((v105 & 0x8000000000000000) == 0)
  {
    v119 = 0;
    v120 = v186;
    do
    {
      if ((v103 & 0xC000000000000001) != 0)
      {
        v121 = MEMORY[0x2530ADF00](v119, v103);
      }

      else
      {
        v121 = *(v103 + 8 * v119 + 32);
      }

      v122 = v121;
      [v121 mapID];
      v124 = v123;

      v186 = v120;
      v126 = *(v120 + 16);
      v125 = *(v120 + 24);
      if (v126 >= v125 >> 1)
      {
        sub_2529AA660((v125 > 1), v126 + 1, 1);
        v120 = v186;
      }

      ++v119;
      *(v120 + 16) = v126 + 1;
      *(v120 + 8 * v126 + 32) = v124;
    }

    while (v105 != v119);

    goto LABEL_206;
  }

  __break(1u);
LABEL_253:
  v107 = sub_252E378C4();
LABEL_174:
  if (!v107)
  {

    goto LABEL_168;
  }

  v184 = v105;
  v186 = MEMORY[0x277D84F90];
  result = sub_252E37AB4();
  if ((v107 & 0x8000000000000000) == 0)
  {
    v108 = 0;
    v109 = v185 & 0xC000000000000001;
    do
    {
      if (v109)
      {
        v110 = MEMORY[0x2530ADF00](v108, v185);
      }

      else
      {
        v110 = *(v185 + 8 * v108 + 32);
      }

      ++v108;
      v111 = *(v110 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v112 = *(v110 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
      type metadata accessor for HomeFilter.Builder();
      v113 = swift_allocObject();
      *(v113 + 16) = 0;
      *(v113 + 24) = 0;
      *(v113 + 32) = 0;
      *(v113 + 40) = 7;
      *(v113 + 48) = 0u;
      *(v113 + 64) = 0u;
      *(v113 + 80) = 0u;
      *(v113 + 96) = 0u;
      *(v113 + 112) = 0u;
      *(v113 + 128) = 0u;
      *(v113 + 144) = 0u;
      *(v113 + 160) = 0u;
      *(v113 + 175) = 0;
      v114 = sub_252B72040(v178);

      v115 = (*(*v114 + 608))(v111, v112);

      v117 = (*(*v115 + 760))(v116);

      [v117 setTargetArea_];
      [v117 setTargetMap_];

      sub_252E37A94();
      v118 = *(v186 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    while (v107 != v108);

    goto LABEL_166;
  }

  __break(1u);
  return result;
}

id sub_252B18600(void *a1, void *a2, unint64_t a3)
{
  v5 = a3 >> 62;
  if (!a1)
  {
    goto LABEL_9;
  }

  if (v5)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_9;
    }
  }

  else if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544C40);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E7C550);
    v13 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540420, &unk_252E3C800);
    v14 = sub_252E36F94();
    MEMORY[0x2530AD570](v14);

    MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E7C590);
    if (v5)
    {
      v15 = sub_252E378C4();
    }

    else
    {
      v15 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v15 == 0;
    if (v15)
    {
      v17 = 0x65736C6166;
    }

    else
    {
      v17 = 1702195828;
    }

    if (v16)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v17, v18);

    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000008DLL, 0x8000000252E7BF00, 0xD00000000000002DLL, 0x8000000252E7C5B0, 616);
    goto LABEL_20;
  }

  v7 = a1;
  v8 = sub_252B16CB8(a2, v7, a3);
  if (!v8)
  {

    goto LABEL_9;
  }

  v9 = v8;
  if (v8 >> 62)
  {
    if (sub_252E378C4() > 1)
    {
      goto LABEL_7;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
LABEL_7:
    type metadata accessor for ControlHomeFiltersResolutionResult();
    v10 = sub_252E2B068(v9);

    return v10;
  }

  if (qword_27F53F488 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544C40);
  sub_252E379F4();

  v20 = type metadata accessor for HomeFilter();
  v21 = MEMORY[0x2530AD730](v9, v20);
  v23 = v22;

  MEMORY[0x2530AD570](v21, v23);

  sub_252CC3D90(0xD000000000000021, 0x8000000252E7C5E0, 0xD00000000000008DLL, 0x8000000252E7BF00);

LABEL_20:

  return 0;
}

id sub_252B18964(unint64_t a1, __objc2_class *a2, char *a3)
{
  v6 = sub_252E36AD4();
  v81 = *(v6 - 8);
  v7 = *(v81 + 64);
  MEMORY[0x28223BE20](v6);
  v80 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 >> 62;
  if (a3)
  {
    v10 = [a3 value];
    if (v10)
    {
      v11 = v10;
      v12 = [(__objc2_class *)v10 cleaningJob];

      if (v12)
      {

        if (qword_27F53F488 != -1)
        {
          goto LABEL_121;
        }

        goto LABEL_5;
      }
    }
  }

  if (qword_27F53F360 != -1)
  {
    goto LABEL_71;
  }

LABEL_12:
  v14 = qword_27F575828;
  v15 = qword_27F53F358;

  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_2529F2308(v16, v14);
  if (v9)
  {
    v43 = v17;
    v18 = sub_252E378C4();
    v17 = v43;
    if (!v18)
    {
LABEL_73:
      v42 = v17;
      v41 = 0;
      goto LABEL_74;
    }
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_73;
    }
  }

  v78 = a2;
  v79 = v17;
  v19 = a1 & 0xC000000000000001;
  v82 = v6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x2530ADF00](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_118;
    }

    v20 = *(a1 + 32);
  }

  v21 = v20;
  v77 = [v20 deviceType];

  v6 = 0;
  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  a2 = &off_279711000;
  do
  {
    if (v19)
    {
      v22 = MEMORY[0x2530ADF00](v6, a1);
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_66;
      }

      v22 = *(a1 + 8 * v6 + 32);
    }

    v23 = v22;
    v24 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      swift_once();
      goto LABEL_12;
    }

    v25 = [v22 outerDeviceName];
    if (v25)
    {
      v27 = v25;

      v23 = v27;
      goto LABEL_31;
    }

    v26 = [v23 homeEntityName];
    if (v26)
    {
      v28 = v26;

LABEL_31:
      v17 = v82;
      if (qword_27F53F488 == -1)
      {
LABEL_32:
        __swift_project_value_buffer(v17, qword_27F544C40);
        v29 = "accessoryResolutionCandidates ";
        v30 = 0xD000000000000057;
        goto LABEL_33;
      }

LABEL_118:
      v68 = v17;
      swift_once();
      v17 = v68;
      goto LABEL_32;
    }

    ++v6;
  }

  while (v24 != v18);
  v6 = 0;
  do
  {
    if (v19)
    {
      v31 = MEMORY[0x2530ADF00](v6, a1);
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_70;
      }

      v31 = *(a1 + 8 * v6 + 32);
    }

    a2 = v31;
    v32 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_69;
    }

    v33 = [v31 entityIdentifiers];
    if (v33)
    {
      v34 = v33;
      v35 = sub_252E37264();

      v36 = *(v35 + 16);

      if (v36)
      {

        if (qword_27F53F488 == -1)
        {
LABEL_64:
          __swift_project_value_buffer(v82, qword_27F544C40);
          v29 = "ory name in the filter)";
          v30 = 0xD00000000000005CLL;
LABEL_33:
          sub_252CC3D90(v30, v29 | 0x8000000000000000, 0xD00000000000008DLL, 0x8000000252E7BF00);
          return 0;
        }

LABEL_131:
        swift_once();
        goto LABEL_64;
      }
    }

    else
    {
    }

    ++v6;
  }

  while (v32 != v18);
  v41 = v77;
  a2 = v78;
  v6 = v82;
  v42 = v79;
LABEL_74:
  v44 = sub_252DB4F4C(v41, v42);

  if (v44)
  {
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v6, qword_27F544C40);
    v85[0] = 0;
    v85[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003DLL, 0x8000000252E7C440);
    v45 = HomeDeviceType.description.getter(v41);
    MEMORY[0x2530AD570](v45);

    MEMORY[0x2530AD570](0xD000000000000036, 0x8000000252E7C4D0);
    sub_252CC3D90(v85[0], v85[1], 0xD00000000000008DLL, 0x8000000252E7BF00);

    return 0;
  }

  v46 = sub_252B680FC();
  swift_beginAccess();
  v47 = *(v46 + 16);
  v48 = *(v47 + 16);
  if (!v48)
  {

    if (!(a2 >> 62))
    {
      goto LABEL_104;
    }

    goto LABEL_110;
  }

  memcpy(v85, (v47 + 504 * v48 - 472), sizeof(v85));
  sub_2529353AC(v85, v84);

  if (v18)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v49 = MEMORY[0x2530ADF00](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_131;
      }

      v49 = *(a1 + 32);
    }

    v50 = v49;
    v51 = [v49 outerDeviceName];

    if (v51)
    {

      goto LABEL_103;
    }
  }

  if (!v41)
  {
    memcpy(v84, v85, sizeof(v84));
    if (sub_252A169C8())
    {
      if (qword_27F53F488 == -1)
      {
        goto LABEL_88;
      }

      goto LABEL_134;
    }
  }

LABEL_103:
  sub_252935408(v85);
  if (a2 >> 62)
  {
LABEL_110:
    if (sub_252E378C4() < 2)
    {
      return 0;
    }

    goto LABEL_105;
  }

LABEL_104:
  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    return 0;
  }

LABEL_105:
  if (v18 <= 0)
  {
    v11 = 0;
    goto LABEL_113;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x2530ADF00](0, a1);
    goto LABEL_113;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(a1 + 32);
LABEL_113:

    v63 = sub_252A5F4BC(v62);
    if (v63 >> 62)
    {
      goto LABEL_128;
    }

    sub_252E37DD4();
    type metadata accessor for Entity();
    v64 = v63;
    goto LABEL_115;
  }

  __break(1u);
LABEL_134:
  swift_once();
LABEL_88:
  v9 = 0xD00000000000008DLL;
  v52 = __swift_project_value_buffer(v6, qword_27F544C40);
  (*(v81 + 16))(v80, v52, v6);
  v84[0] = 0;
  v84[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003DLL, 0x8000000252E7C440);
  v53 = HomeDeviceType.description.getter(0);
  v11 = v54;
  MEMORY[0x2530AD570](v53);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E7C480);
  if (!(a2 >> 62))
  {
    v55 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v55)
    {
      goto LABEL_90;
    }

LABEL_136:
    a3 = MEMORY[0x277D84F90];
LABEL_137:
    v71 = MEMORY[0x2530AD730](a3, MEMORY[0x277D837D0]);
    v73 = v72;

    MEMORY[0x2530AD570](v71, v73);

    MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E7C4A0);
    v83 = sub_252B1F8D4(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433C0, &qword_252E4B810);
    v74 = sub_252E36F94();
    MEMORY[0x2530AD570](v74);

    v75 = v80;
    sub_252CC3D90(v84[0], v84[1], 0xD00000000000008DLL, 0x8000000252E7BF00);
    sub_252935408(v85);

    (*(v81 + 8))(v75, v6);
    return 0;
  }

  v55 = sub_252E378C4();
  if (!v55)
  {
    goto LABEL_136;
  }

LABEL_90:
  v56 = 0;
  v79 = a2 & 0xC000000000000001;
  v77 = (a2 & 0xFFFFFFFFFFFFFF8);
  a3 = MEMORY[0x277D84F90];
  v82 = v6;
  v76 = v55;
  while (2)
  {
    if (v79)
    {
      v11 = a2;
      a2 = MEMORY[0x2530ADF00](v56, a2);
      v57 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      goto LABEL_94;
    }

    if (v56 >= v77[2])
    {
      goto LABEL_120;
    }

    v11 = a2;
    a2 = *(&a2->info + v56);

    v57 = v56 + 1;
    if (!__OFADD__(v56, 1))
    {
LABEL_94:
      v58 = *(&a2->isa + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v59 = *(&a2->superclass + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a3 = sub_2529F7A80(0, *(a3 + 2) + 1, 1, a3);
      }

      v9 = *(a3 + 2);
      v60 = *(a3 + 3);
      if (v9 >= v60 >> 1)
      {
        a3 = sub_2529F7A80((v60 > 1), v9 + 1, 1, a3);
      }

      *(a3 + 2) = v9 + 1;
      v61 = &a3[16 * v9];
      *(v61 + 4) = v58;
      *(v61 + 5) = v59;
      ++v56;
      a2 = v11;
      v6 = v82;
      if (v57 == v76)
      {
        goto LABEL_137;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  swift_once();
LABEL_5:
  __swift_project_value_buffer(v6, qword_27F544C40);
  sub_252CC3D90(0xD000000000000037, 0x8000000252E7C510, 0xD00000000000008DLL, 0x8000000252E7BF00);
  if (v9)
  {
    v13 = sub_252E378C4();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13 <= 0)
  {
    v82 = 0;
    goto LABEL_45;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v82 = MEMORY[0x2530ADF00](0, a1);
LABEL_45:
    v85[0] = MEMORY[0x277D84F90];
    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      a1 = sub_252E378C4();
      if (a1)
      {
LABEL_47:
        v37 = 0;
        v6 = a2;
        v38 = a2 & 0xC000000000000001;
        v39 = MEMORY[0x277D84F90];
        do
        {
          a2 = v37;
          while (1)
          {
            if (v38)
            {
              MEMORY[0x2530ADF00](a2, v6);
              v37 = (&a2->isa + 1);
              if (__OFADD__(a2, 1))
              {
                goto LABEL_67;
              }
            }

            else
            {
              if (a2 >= *(v9 + 16))
              {
                goto LABEL_68;
              }

              v40 = *(v6 + 8 * a2 + 32);

              v37 = (&a2->isa + 1);
              if (__OFADD__(a2, 1))
              {
                goto LABEL_67;
              }
            }

            type metadata accessor for MatterAccessory();
            if (swift_dynamicCastClass())
            {
              break;
            }

            a2 = (a2 + 1);
            if (v37 == a1)
            {
              goto LABEL_125;
            }
          }

          MEMORY[0x2530AD700]();
          if (*((v85[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v81 = *((v85[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v39 = v85[0];
        }

        while (v37 != a1);
        goto LABEL_125;
      }
    }

    else
    {
      a1 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a1)
      {
        goto LABEL_47;
      }
    }

    v39 = MEMORY[0x277D84F90];
LABEL_125:
    v69 = v82;
    v70 = sub_252B18600(a3, v82, v39);

    return v70;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v82 = *(a1 + 32);
    goto LABEL_45;
  }

  __break(1u);
LABEL_128:
  type metadata accessor for Entity();
  v64 = sub_252E37B14();
LABEL_115:

  type metadata accessor for ControlHomeFiltersResolutionResult();
  v65 = sub_252B12A98(v11, v64);

  v66 = sub_252E2B068(v65);

  return v66;
}

char *sub_252B1968C(unint64_t a1, unint64_t a2, char *a3, void *a4)
{
  v108 = a4;
  v88 = a3;
  v104 = a1;
  v102 = sub_252E32E84();
  v105 = *(v102 - 8);
  v5 = *(v105 + 64);
  MEMORY[0x28223BE20](v102);
  v101 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E36AD4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F488 != -1)
  {
    goto LABEL_104;
  }

  while (1)
  {
    v12 = __swift_project_value_buffer(v7, qword_27F544C40);
    v107 = v8;
    v13 = *(v8 + 16);
    v89 = v12;
    v13(v11);
    v113[0] = 0;
    v113[1] = 0xE000000000000000;
    sub_252E379F4();

    v113[0] = 0xD000000000000022;
    v113[1] = 0x8000000252E7C2F0;
    v14 = a2 >> 62 ? sub_252E378C4() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v106 = v11;
    v103 = v7;
    v8 = MEMORY[0x277D84F90];
    v109 = v14;
    v110 = a2;
    if (!v14)
    {
      break;
    }

    v15 = 0;
    v7 = a2 & 0xC000000000000001;
    v16 = a2 & 0xFFFFFFFFFFFFFF8;
    while (v7)
    {
      a2 = MEMORY[0x2530ADF00](v15, a2);
      v11 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        goto LABEL_98;
      }

LABEL_9:
      v17 = *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v18 = *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_2529F7A80(0, *(v8 + 16) + 1, 1, v8);
      }

      v20 = *(v8 + 16);
      v19 = *(v8 + 24);
      if (v20 >= v19 >> 1)
      {
        v8 = sub_2529F7A80((v19 > 1), v20 + 1, 1, v8);
      }

      *(v8 + 16) = v20 + 1;
      v21 = v8 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      ++v15;
      a2 = v110;
      if (v11 == v109)
      {
        goto LABEL_18;
      }
    }

    if (v15 >= *(v16 + 16))
    {
      goto LABEL_99;
    }

    a2 = *(a2 + 8 * v15 + 32);

    v11 = (v15 + 1);
    if (!__OFADD__(v15, 1))
    {
      goto LABEL_9;
    }

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
    swift_once();
  }

LABEL_18:
  v22 = MEMORY[0x2530AD730](v8, MEMORY[0x277D837D0]);
  v24 = v23;

  MEMORY[0x2530AD570](v22, v24);

  v25 = v106;
  sub_252CC3D90(v113[0], v113[1], 0xD00000000000008DLL, 0x8000000252E7BF00);

  (v107)[1](v25, v103);
  v26 = sub_252B680FC();
  swift_beginAccess();
  v27 = *(v26 + 16);
  v28 = *(v27 + 16);
  if (!v28)
  {

    v7 = v108;
    v31 = v109;
    goto LABEL_22;
  }

  memcpy(v113, (v27 + 504 * v28 - 472), sizeof(v113));
  sub_2529353AC(v113, v112);

  memcpy(v112, v113, sizeof(v112));
  v29 = v104;
  v30 = sub_252B12F3C(v104, v112);
  v7 = v108;
  if (v30)
  {
    v11 = v30;
    sub_252935408(v113);
    return v11;
  }

  memcpy(v112, v113, sizeof(v112));
  v11 = sub_252B13C7C(v29, v112);
  sub_252935408(v113);
  v31 = v109;
  if (v11)
  {
    return v11;
  }

LABEL_22:
  if (v7 >> 62)
  {
    v32 = sub_252E378C4();
  }

  else
  {
    v32 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v104;
  v34 = MEMORY[0x277D84F90];
  if (v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433B0, &qword_252E4B800);
    v35 = swift_allocObject();
    v36 = sub_252B13FB0(v33, v34, v7);
    *(v35 + 32) = v36;
    v37 = v35 + 32;
    v113[0] = v34;
    if (v36)
    {
      v38 = v36;
      MEMORY[0x2530AD700]();
      if (*((v113[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_108;
      }

      goto LABEL_27;
    }

    v11 = v34;
LABEL_47:
    swift_setDeallocating();
    sub_252B1C554(v37);
    swift_deallocClassInstance();
    return v11;
  }

  v85 = "Attempting to resolve filters";
  v113[0] = MEMORY[0x277D84F90];
  if (v31)
  {
    v39 = 0;
    v7 = a2 & 0xC000000000000001;
    v40 = MEMORY[0x277D84F90];
    do
    {
      v8 = v39;
      while (1)
      {
        if (v7)
        {
          v11 = MEMORY[0x2530ADF00](v8, a2);
          v39 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_100;
          }
        }

        else
        {
          if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_101;
          }

          v11 = *(a2 + 8 * v8 + 32);

          v39 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_100;
          }
        }

        type metadata accessor for MatterAccessory();
        v41 = swift_dynamicCastClass();
        if (v41)
        {
          break;
        }

        ++v8;
        if (v39 == v31)
        {
          goto LABEL_49;
        }
      }

      v11 = v41;
      MEMORY[0x2530AD700]();
      if (*((v113[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v42 = *((v113[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v40 = v113[0];
    }

    while (v39 != v31);
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
  }

LABEL_49:
  v111 = v34;
  v86 = v40;
  if (v40 >> 62)
  {
    v43 = sub_252E378C4();
    v8 = v104;
    if (!v43)
    {
      goto LABEL_110;
    }

LABEL_51:
    v44 = 0;
    v99 = v86 & 0xFFFFFFFFFFFFFF8;
    v100 = v86 & 0xC000000000000001;
    v97 = v86 + 32;
    v98 = (v105 + 8);
    v87 = "Modified user task: ";
    v94 = ". Returning .robotVacuumCleaner";
    v95 = "tity with accessoryID ";
    v92 = "for accessoryID ";
    v93 = "MatterAccessory.swift";
    v90 = "deviceEntity(for:)";
    v91 = "MatterAccessoryManager.swift";
    v96 = v43;
    while (1)
    {
      if (v100)
      {
        v46 = MEMORY[0x2530ADF00](v44, v86);
        v47 = __OFADD__(v44, 1);
        v48 = v44 + 1;
        if (v47)
        {
          goto LABEL_102;
        }
      }

      else
      {
        if (v44 >= *(v99 + 16))
        {
          goto LABEL_103;
        }

        v45 = *(v97 + 8 * v44);

        v47 = __OFADD__(v44, 1);
        v48 = v44 + 1;
        if (v47)
        {
          goto LABEL_102;
        }
      }

      v106 = v48;
      v105 = v46;
      v49 = [*(v46 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
      v50 = v101;
      sub_252E32E64();

      v108 = sub_252E32E24();
      v109 = v51;
      (*v98)(v50, v102);
      v52 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v8 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      swift_beginAccess();
      v107 = v52;
      a2 = *&v52[v8];
      if (a2 >> 62)
      {
        if ((a2 & 0x8000000000000000) != 0)
        {
          v65 = *&v52[v8];
        }

        v53 = sub_252E378C4();
      }

      else
      {
        v53 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v53)
      {
        break;
      }

      v37 = 0;
      v11 = (a2 & 0xC000000000000001);
      v7 = a2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v11)
        {
          v55 = MEMORY[0x2530ADF00](v37, a2);
          v56 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (v37 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_97;
          }

          v55 = *(a2 + 8 * v37 + 32);

          v56 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
            goto LABEL_98;
          }
        }

        v57 = *(v55 + qword_27F5427D0);

        sub_252E36744();

        v8 = v112[1];
        if (v112[1])
        {
          if (v112[0] == v108 && v112[1] == v109)
          {

            goto LABEL_77;
          }

          v54 = sub_252E37DB4();

          if (v54)
          {
            break;
          }
        }

        ++v37;
        if (v56 == v53)
        {
          goto LABEL_71;
        }
      }

LABEL_77:

      v61 = sub_252BF8258(v55);
      a2 = v110;
      if (!v61)
      {
        goto LABEL_83;
      }

      if (!*(v61 + 2))
      {

LABEL_83:
        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        v11 = __swift_project_value_buffer(v103, qword_27F544CB8);
        v112[0] = 0;
        v112[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000036, v87 | 0x8000000000000000);
        MEMORY[0x2530AD570](v108, v109);

        MEMORY[0x2530AD570](0xD00000000000001FLL, v95 | 0x8000000000000000);
        sub_252CC4050(v112[0], v112[1], 0xD000000000000075, v94 | 0x8000000000000000, 1701869940, 0xE400000000000000, 102);

LABEL_86:

        v7 = v96;
LABEL_87:
        sub_252E37A94();
        v64 = v111[2];
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        goto LABEL_88;
      }

      v62 = v61;

      if (!*(v62 + 2))
      {
        __break(1u);
LABEL_108:
        sub_252E372A4();
LABEL_27:
        sub_252E372D4();
        v11 = v113[0];
        goto LABEL_47;
      }

      v63 = *(v62 + 4);

      v7 = v96;
      if (v63 == 46)
      {
        goto LABEL_87;
      }

LABEL_88:
      v8 = v104;
      v44 = v106;
      if (v106 == v7)
      {
        goto LABEL_110;
      }
    }

LABEL_71:

    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v58 = v103;
    __swift_project_value_buffer(v103, qword_27F544EC8);
    v112[0] = 0;
    v112[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000040, v93 | 0x8000000000000000);
    v60 = v108;
    v59 = v109;
    MEMORY[0x2530AD570](v108, v109);
    sub_252CC4050(v112[0], v112[1], 0xD00000000000007CLL, v92 | 0x8000000000000000, 0xD000000000000012, v91 | 0x8000000000000000, 375);

    a2 = v110;
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v58, qword_27F544CB8);
    v112[0] = 0;
    v112[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000027, v90 | 0x8000000000000000);
    MEMORY[0x2530AD570](v60, v59);

    MEMORY[0x2530AD570](0xD00000000000001FLL, v95 | 0x8000000000000000);
    sub_252CC4050(v112[0], v112[1], 0xD000000000000075, v94 | 0x8000000000000000, 1701869940, 0xE400000000000000, 96);
    goto LABEL_86;
  }

  v43 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8 = v104;
  if (v43)
  {
    goto LABEL_51;
  }

LABEL_110:

  v11 = MEMORY[0x277D84F90];
  v66 = sub_252B13FB0(v8, a2, MEMORY[0x277D84F90]);
  v67 = sub_252B14D40(v8, a2);
  if (!v67)
  {
    v67 = sub_252B15A8C(v8, a2);
  }

  v68 = sub_252B18964(v8, a2, v88);
  v112[0] = 0;
  v112[1] = 0xE000000000000000;
  sub_252E379F4();

  v112[0] = 0xD000000000000019;
  v112[1] = 0x8000000252E7C320;
  v111 = v66;
  v110 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433B8, &qword_252E4B808);
  v109 = v66;
  v69 = sub_252E36F94();
  MEMORY[0x2530AD570](v69);

  v70 = v85;
  sub_252CC3D90(v112[0], v112[1], 0xD00000000000008DLL, v85 | 0x8000000000000000);

  v112[0] = 0;
  v112[1] = 0xE000000000000000;
  sub_252E379F4();

  v112[0] = 0xD00000000000001FLL;
  v112[1] = 0x8000000252E7C340;
  v111 = v67;
  v108 = v67;
  v71 = sub_252E36F94();
  MEMORY[0x2530AD570](v71);

  sub_252CC3D90(v112[0], v112[1], 0xD00000000000008DLL, v70 | 0x8000000000000000);

  v112[0] = 0;
  v112[1] = 0xE000000000000000;
  sub_252E379F4();

  v112[0] = 0xD00000000000001ELL;
  v112[1] = 0x8000000252E7C360;
  v111 = v68;
  v72 = v68;
  v73 = sub_252E36F94();
  MEMORY[0x2530AD570](v73);

  sub_252CC3D90(v112[0], v112[1], 0xD00000000000008DLL, v70 | 0x8000000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433B0, &qword_252E4B800);
  v74 = swift_allocObject();
  v75 = v110;
  v74[4] = v109;
  v74[5] = v67;
  v74[6] = v68;
  v112[0] = v11;
  v76 = v75;
  v77 = v108;
  result = v72;
  v79 = result;
  v80 = 0;
LABEL_113:
  v81 = 3;
  if (v80 > 3)
  {
    v81 = v80;
  }

  while (1)
  {
    if (v80 == 3)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();

      return v11;
    }

    if (v81 == v80)
    {
      break;
    }

    v82 = v74[v80++ + 4];
    if (v82)
    {
      v83 = v82;
      MEMORY[0x2530AD700]();
      if (*((v112[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v110 = *((v112[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v11 = v112[0];
      goto LABEL_113;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252B1A674(void *a1)
{
  v2 = [a1 disambiguationItems];
  v3 = sub_252E37264();

  v4 = sub_252A9E238(v3);

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = [a1 itemToConfirm];
  sub_252E377F4();
  swift_unknownObjectRelease();
  type metadata accessor for HomeFilter();
  if (swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_252E3C130;
    *(v7 + 32) = v11;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  sub_25297A8D8(v7);
  v8 = [a1 resolvedValue];
  sub_252E377F4();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_252E3C130;
    *(v9 + 32) = v11;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  sub_25297A8D8(v9);
  return v5;
}

uint64_t sub_252B1A838(unint64_t a1, unint64_t a2, char *a3, void *a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8)
{
  v113 = a5;
  v16 = sub_252E36974();
  v109 = *(v16 - 8);
  v110 = v16;
  v17 = *(v109 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_252E36984();
  v111 = *(v20 - 8);
  v112 = v20;
  v21 = *(v111 + 64);
  MEMORY[0x28223BE20](v20);
  v108 = v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(sub_252B680FC() + 128) = 0;

  v23 = sub_252B1968C(a1, a2, a3, a4);
  if (v23 >> 62)
  {
    v26 = a1;
    v27 = v23;
    v28 = sub_252E378C4();
    v23 = v27;
    a1 = v26;
    v107 = v19;
    if (v28)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v107 = v19;
    if (v24)
    {
LABEL_3:
      if ((v23 & 0xC000000000000001) != 0)
      {
LABEL_69:
        v25 = MEMORY[0x2530ADF00](0);
      }

      else
      {
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_81;
        }

        v25 = v23[4];
      }

      v8 = v25;

      if (!a6)
      {
        goto LABEL_71;
      }

      goto LABEL_10;
    }
  }

  v8 = 0;
  if (!a6)
  {
    goto LABEL_71;
  }

LABEL_10:
  if (!(a6 >> 62))
  {
    if (*((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_71:
    if (v8)
    {
      if (qword_27F53F488 == -1)
      {
LABEL_73:
        v86 = sub_252E36AD4();
        __swift_project_value_buffer(v86, qword_27F544C40);
        v114 = 0;
        v115 = 0xE000000000000000;
        sub_252E379F4();

        v114 = 0xD000000000000023;
        v115 = 0x8000000252E7C240;
        v87 = [v8 description];
        v88 = sub_252E36F34();
        v90 = v89;

        MEMORY[0x2530AD570](v88, v90);

        sub_252CC3D90(v114, v115, 0xD00000000000008DLL, 0x8000000252E7BF00);
        goto LABEL_74;
      }

LABEL_83:
      swift_once();
      goto LABEL_73;
    }

    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v91 = sub_252E36AD4();
    __swift_project_value_buffer(v91, qword_27F544C40);
    v114 = 0;
    v115 = 0xE000000000000000;
    sub_252E379F4();

    v114 = 0xD000000000000015;
    v115 = 0x8000000252E7C220;
    v92 = type metadata accessor for HomeFilter();
    v93 = MEMORY[0x2530AD730](a1, v92);
    MEMORY[0x2530AD570](v93);

    sub_252CC3D90(v114, v115, 0xD00000000000008DLL, 0x8000000252E7BF00);
  }

  if (!sub_252E378C4())
  {
    goto LABEL_71;
  }

LABEL_12:
  if (v8)
  {
    sub_252B1C504(v113, a6);
    v29 = v8;
    v30 = sub_252B1A674(v29);
    goto LABEL_22;
  }

  if (a1 >> 62)
  {
    result = sub_252E378C4();
    if (result > 0)
    {
LABEL_16:
      if ((a1 & 0xC000000000000001) != 0)
      {

        v32 = a1;
        v34 = MEMORY[0x2530ADF00](0, a1);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v32 = a1;
        v33 = *(a1 + 32);
        sub_252B1C504(v113, a6);
        v34 = v33;
      }

      v29 = v34;
      if (!(a2 >> 62))
      {
        goto LABEL_20;
      }

LABEL_86:
      type metadata accessor for Entity();

      v94 = sub_252E37B14();

      a2 = v94;
      goto LABEL_21;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > 0)
    {
      goto LABEL_16;
    }
  }

  v32 = a1;

  v29 = 0;
  if (a2 >> 62)
  {
    goto LABEL_86;
  }

LABEL_20:

  sub_252E37DD4();
  type metadata accessor for Entity();
LABEL_21:
  a1 = v32;
  v30 = sub_252B12A98(v29, a2);

LABEL_22:

  v114 = v30;

  sub_25297A8D8(v35);
  v105 = v114;
  v95[1] = a1;
  if (a6 >> 62)
  {
    v36 = sub_252E378C4();
    if (!v36)
    {
LABEL_55:

      if (v8)
      {
        if (a8)
        {
          v63 = v111;
          v64 = v108;
          (*(v111 + 104))(v108, *MEMORY[0x277D5FC78], v112);
          v66 = v109;
          v65 = v110;
          v67 = v107;
          (*(v109 + 104))(v107, *MEMORY[0x277D5FC58], v110);
          sub_252936298(v64, v67);

          (*(v66 + 8))(v67, v65);
          (*(v63 + 8))(v64, v112);
          return v8;
        }

LABEL_74:

        return v8;
      }

      if (a8)
      {
        v81 = v111;
        v80 = v112;
        v82 = v108;
        (*(v111 + 104))(v108, *MEMORY[0x277D5FC70], v112);
        v84 = v109;
        v83 = v110;
        v85 = v107;
        (*(v109 + 104))(v107, *MEMORY[0x277D5FC58], v110);
        sub_252936298(v82, v85);

        (*(v84 + 8))(v85, v83);
        (*(v81 + 8))(v82, v80);
      }

      else
      {
      }
    }
  }

  else
  {
    v36 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v36)
    {
      goto LABEL_55;
    }
  }

  v37 = 0;
  a2 = 0;
  v38 = a6 & 0xC000000000000001;
  v39 = a6 & 0xFFFFFFFFFFFFFF8;
  v40 = a6 + 32;
  if (v30 < 0)
  {
    v41 = v30;
  }

  else
  {
    v41 = v30 & 0xFFFFFFFFFFFFFF8;
  }

  v95[0] = v41;
  a1 = v30 & 0xC000000000000001;
  v42 = v30 >> 62;
  v103 = a7;
  v104 = a6;
  v106 = a8;
  v102 = v8;
  v99 = a6 & 0xC000000000000001;
  v100 = v36;
  v97 = a6 + 32;
  v98 = a6 & 0xFFFFFFFFFFFFFF8;
  v96 = v30 >> 62;
  while (2)
  {
    if (v38)
    {
      v43 = MEMORY[0x2530ADF00](v37, a6);
    }

    else
    {
      if (v37 >= *(v39 + 16))
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v43 = *(v40 + 8 * v37);
    }

    v8 = v43;
    v44 = __OFADD__(v37, 1);
    v45 = v37 + 1;
    if (v44)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v101 = v45;
    if (v42)
    {
      a6 = sub_252E378C4();
      if (a6)
      {
LABEL_36:
        a7 = 0;
        while (1)
        {
          if (a1)
          {
            v46 = MEMORY[0x2530ADF00](a7, v30);
          }

          else
          {
            if (a7 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_68;
            }

            v46 = *(v30 + 8 * a7 + 32);
          }

          v47 = v46;
          v48 = a7 + 1;
          if (__OFADD__(a7, 1))
          {
            __break(1u);
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          v114 = v46;
          a8 = sub_252B11500(&v114, v8);

          if (a8)
          {
            break;
          }

          ++a7;
          if (v48 == a6)
          {
            goto LABEL_49;
          }
        }

        v37 = v101;
        a6 = v104;
        a8 = v106;
        v8 = v102;
        v39 = v98;
        v38 = v99;
        v42 = v96;
        v40 = v97;
        if (v101 != v100)
        {
          continue;
        }

        goto LABEL_55;
      }
    }

    else
    {
      a6 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a6)
      {
        goto LABEL_36;
      }
    }

    break;
  }

LABEL_49:

  if (v113)
  {
    v49 = v102;
    if (v106)
    {
      v51 = v111;
      v50 = v112;
      v52 = v108;
      (*(v111 + 104))(v108, *MEMORY[0x277D5FC78], v112);
      v53 = v109;
      v54 = v107;
      v55 = v49;
      v56 = v110;
      (*(v109 + 104))(v107, *MEMORY[0x277D5FC50], v110);
      sub_252936298(v52, v54);
      v57 = v56;
      v49 = v55;
      (*(v53 + 8))(v54, v57);
      (*(v51 + 8))(v52, v50);
    }

    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v58 = sub_252E36AD4();
    __swift_project_value_buffer(v58, qword_27F544C40);
    v114 = 0;
    v115 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000043, 0x8000000252E7C2A0);
    v59 = type metadata accessor for HomeFilter();
    v60 = v105;
    v61 = MEMORY[0x2530AD730](v105, v59);
    MEMORY[0x2530AD570](v61);

    MEMORY[0x2530AD570](41, 0xE100000000000000);
    sub_252CC3D90(v114, v115, 0xD00000000000008DLL, 0x8000000252E7BF00);

    *(sub_252B680FC() + 128) = 1;

    type metadata accessor for ControlHomeFiltersResolutionResult();
    v62 = sub_252E2B068(v60);

    return v62;
  }

  else
  {

    v68 = v102;
    if (v106)
    {
      v70 = v111;
      v69 = v112;
      v71 = v108;
      (*(v111 + 104))(v108, *MEMORY[0x277D5FC70], v112);
      v73 = v109;
      v72 = v110;
      v74 = v107;
      (*(v109 + 104))(v107, *MEMORY[0x277D5FC50], v110);
      sub_252936298(v71, v74);
      (*(v73 + 8))(v74, v72);
      (*(v70 + 8))(v71, v69);
    }

    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v75 = sub_252E36AD4();
    __swift_project_value_buffer(v75, qword_27F544C40);
    v114 = 0;
    v115 = 0xE000000000000000;
    sub_252E379F4();

    v114 = 0xD000000000000029;
    v115 = 0x8000000252E7C270;
    v76 = type metadata accessor for HomeFilter();
    v77 = v104;
    v78 = MEMORY[0x2530AD730](v104, v76);
    MEMORY[0x2530AD570](v78);

    sub_252CC3D90(v114, v115, 0xD00000000000008DLL, 0x8000000252E7BF00);

    v79 = sub_252B680FC();

    *(v79 + 128) = 1;

    return v77;
  }
}

id sub_252B1B500(unint64_t a1, void *a2)
{
  if (qword_27F53F488 != -1)
  {
    swift_once();
  }

  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544C40);
  sub_252E379F4();

  v46 = 0xD000000000000027;
  v47 = 0x8000000252E7C0B0;
  v4 = [a2 description];
  v5 = sub_252E36F34();
  v7 = v6;

  MEMORY[0x2530AD570](v5, v7);

  sub_252CC3D90(0xD000000000000027, 0x8000000252E7C0B0, 0xD00000000000008DLL, 0x8000000252E7BF00);

  v8 = [a2 disambiguationItems];
  v9 = sub_252E37264();

  v10 = sub_252A9E238(v9);

  if (!v10)
  {
    sub_252CC4050(0xD00000000000002BLL, 0x8000000252E77290, 0xD00000000000008DLL, 0x8000000252E7BF00, 0xD000000000000019, 0x8000000252E7C0E0, 469);

    return a2;
  }

  v11 = sub_252A6D8E8(v10);
  sub_252A6E17C(a1);
  v13 = v12;
  v45 = 0;
  v14 = v12 >> 62;
  if (v12 >> 62)
  {
    if (sub_252E378C4() != 1 || !sub_252E378C4())
    {
      goto LABEL_16;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_16;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x2530ADF00](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_43:
      v21 = MEMORY[0x2530ADF00](0, v13);
      goto LABEL_25;
    }

    v15 = *(v13 + 32);
  }

  v16 = v15;
  v17 = [v15 homeEntityName];
  if (v17 || (v17 = [v16 outerDeviceName]) != 0)
  {
    v18 = v17;

    sub_252CC3D90(0xD00000000000004DLL, 0x8000000252E7C1B0, 0xD00000000000008DLL, 0x8000000252E7BF00);
    type metadata accessor for ControlHomeFiltersResolutionResult();
    v19 = sub_252E2B004(v16);

    return v19;
  }

LABEL_16:
  if ((v11 | 2) != 3)
  {

LABEL_27:

    v10 = v13;
    goto LABEL_28;
  }

  if (v14)
  {
    result = sub_252E378C4();
    if (!result)
    {
      goto LABEL_28;
    }
  }

  else
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_28;
    }
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    goto LABEL_43;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v21 = *(v13 + 32);
LABEL_25:
  v22 = v21;
  v23 = [v21 homeEntityName];

  if (v23)
  {

    goto LABEL_27;
  }

LABEL_28:

  v24 = sub_252B122D4(v10, v11, v13, &v45);

  swift_bridgeObjectRelease_n();
  if (!v24)
  {
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000046, 0x8000000252E7C100);
    v38 = [a2 description];
    v39 = sub_252E36F34();
    v41 = v40;

    MEMORY[0x2530AD570](v39, v41);

    sub_252CC3D90(v46, v47, 0xD00000000000008DLL, 0x8000000252E7BF00);

    v42 = v45;
    v19 = a2;

    return v19;
  }

  v25 = v24;
  v26 = v25;
  if (![v25 deviceType])
  {
    v26 = v25;
    if (v45)
    {
      v27 = v45;
      v26 = sub_252A20280(v27);
    }
  }

  v46 = 0;
  v47 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000058, 0x8000000252E7C150);
  v28 = [v26 description];
  v29 = sub_252E36F34();
  v31 = v30;

  MEMORY[0x2530AD570](v29, v31);

  sub_252CC3D90(v46, v47, 0xD00000000000008DLL, 0x8000000252E7BF00);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_252E3C130;
  *(v32 + 32) = v26;
  v33 = v26;
  v34 = sub_252A7564C(v32);
  v36 = v35;

  type metadata accessor for ControlHomeFiltersResolutionResult();
  if (v36)
  {
    v37 = sub_252E2B004(v33);
  }

  else
  {
    v37 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
  }

  v43 = v37;

  return v43;
}

uint64_t sub_252B1BB50(unint64_t a1, unint64_t a2, char *a3, void *a4, unint64_t a5, unint64_t a6, void *a7, unint64_t a8)
{
  if (qword_27F53F488 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544C40);
    sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E7BEE0, 0xD00000000000008DLL, 0x8000000252E7BF00);
    v17 = sub_252B1A838(a1, a2, a3, a4, a5, a6, a7, a8);
    a8 = v17;
    if (v18)
    {
      v19 = v17;
      v20 = sub_252B680FC();
      swift_beginAccess();
      v21 = *(v20 + 16);
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = *(v21 + 504 * v22 - 86);

        if (v23 == 1)
        {
          v24 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
          sub_252929E74((v24 + 288), &v79);

          v25 = v81;
          v26 = v82;
          __swift_project_boxed_opaque_existential_1(&v79, v81);
          v27 = (*(v26 + 152))(v25, v26);
          __swift_destroy_boxed_opaque_existential_1(&v79);
          if ((v27 & 1) == 0)
          {
            v28 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
            sub_252929E74((v28 + 368), &v79);

            v29 = _s22HomeAutomationInternal24ReferenceResolutionUtilsO013getReferencedA7Filters17referenceResolverSayAA0A6FilterCGAA0dK8Protocol_p_tFZ_0(&v79);
            __swift_destroy_boxed_opaque_existential_1(&v79);
            if (v29 >> 62)
            {
              v30 = sub_252E378C4();
            }

            else
            {
              v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v30)
            {
              sub_252CC3D90(0xD000000000000046, 0x8000000252E7C030, 0xD00000000000008DLL, 0x8000000252E7BF00);
              v31 = type metadata accessor for HomeFilter();
              v32 = MEMORY[0x2530AD730](v29, v31);
              sub_252CC3D90(v32, v33, 0xD00000000000008DLL, 0x8000000252E7BF00);

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
              v34 = swift_allocObject();
              *(v34 + 16) = xmmword_252E3C130;
              v35 = sub_252B1B500(v29, v19);

              *(v34 + 32) = v35;
LABEL_36:
              sub_252B1C4F8(a8, 1);
              goto LABEL_37;
            }
          }
        }
      }

      else
      {
      }

      v40 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
      sub_252929E74((v40 + 288), &v79);

      v41 = v81;
      v42 = v82;
      __swift_project_boxed_opaque_existential_1(&v79, v81);
      v43 = (*(v42 + 8))(v41, v42);
      __swift_destroy_boxed_opaque_existential_1(&v79);
      if (v43)
      {
        v79 = 0;
        v80 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000004FLL, 0x8000000252E7BFB0);
        v44 = [v19 description];
        v45 = sub_252E36F34();
        v47 = v46;

        MEMORY[0x2530AD570](v45, v47);

        sub_252CC3D90(v79, v80, 0xD00000000000008DLL, 0x8000000252E7BF00);

        type metadata accessor for SiriRemembersProvider();
        inited = swift_initStackObject();
        strcpy((inited + 16), "HomeAutomation");
        *(inited + 31) = -18;
        *(inited + 32) = 0xD00000000000001DLL;
        *(inited + 40) = 0x8000000252E73EE0;
        *(inited + 48) = 0xD000000000000011;
        *(inited + 56) = 0x8000000252E73F00;
        v49 = sub_252E144A4(v19);
        if (v49)
        {
          v50 = v49;
          v79 = 0;
          v80 = 0xE000000000000000;
          sub_252E379F4();

          v79 = 0xD000000000000020;
          v80 = 0x8000000252E7C000;
          v51 = [v50 description];
          v52 = sub_252E36F34();
          v54 = v53;

          MEMORY[0x2530AD570](v52, v54);

          sub_252CC3D90(v79, v80, 0xD00000000000008DLL, 0x8000000252E7BF00);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_252E3C130;
          *(v34 + 32) = v50;
          v55 = v50;
          sub_252B1C4F8(a8, 1);
          sub_252B1C4F8(a8, 1);

          swift_setDeallocating();
          v56 = *(inited + 24);

          v57 = *(inited + 40);

          v58 = *(inited + 56);

          return v34;
        }

        swift_setDeallocating();
        v59 = *(inited + 24);

        v60 = *(inited + 40);

        v61 = *(inited + 56);
      }

      v62 = v19;
      if ([v62 resolutionResultCode] == 3)
      {
        v63 = [v62 itemToConfirm];
        sub_252B1C4F8(a8, 1);
        sub_252E377F4();
        swift_unknownObjectRelease();
        type metadata accessor for HomeFilter();
        if (swift_dynamicCast())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v64 = swift_allocObject();
          *(v64 + 16) = xmmword_252E3C130;
          *(v64 + 32) = v78;
          v65 = v78;
          v66 = sub_252A7564C(v64);
          v68 = v67;

          if ((v68 & 1) == 0)
          {
            v34 = swift_allocObject();
            *(v34 + 16) = xmmword_252E3C130;
            type metadata accessor for ControlHomeFiltersResolutionResult();
            *(v34 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];

            goto LABEL_36;
          }
        }
      }

      else
      {
        sub_252B1C4F8(a8, 1);
      }

      v79 = 0;
      v80 = 0xE000000000000000;
      sub_252E379F4();

      v79 = 0xD00000000000001BLL;
      v80 = 0x8000000252E7BF90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_252E3C130;
      *(v69 + 32) = v62;
      v70 = type metadata accessor for ControlHomeFiltersResolutionResult();
      v71 = v62;
      v72 = MEMORY[0x2530AD730](v69, v70);
      v74 = v73;

      MEMORY[0x2530AD570](v72, v74);

      sub_252CC3D90(v79, v80, 0xD00000000000008DLL, 0x8000000252E7BF00);

      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_252E3C130;
      *(v34 + 32) = v71;
LABEL_37:
      v75 = a8;
      v76 = 1;
      goto LABEL_45;
    }

    sub_252CC3D90(0xD000000000000026, 0x8000000252E7C080, 0xD00000000000008DLL, 0x8000000252E7BF00);
    v36 = sub_252A7564C(a1);
    if ((v37 & 1) == 0)
    {
      break;
    }

    v79 = MEMORY[0x277D84F90];
    a6 = a8 & 0xFFFFFFFFFFFFFF8;
    if (a8 >> 62)
    {
      a2 = sub_252E378C4();
      if (!a2)
      {
LABEL_43:
        v34 = MEMORY[0x277D84F90];
        goto LABEL_44;
      }
    }

    else
    {
      a2 = *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a2)
      {
        goto LABEL_43;
      }
    }

    a1 = 0;
    a5 = a8 & 0xC000000000000001;
    while (1)
    {
      if (a5)
      {
        v38 = MEMORY[0x2530ADF00](a1, a8);
      }

      else
      {
        if (a1 >= *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v38 = *(a8 + 8 * a1 + 32);
      }

      a7 = v38;
      a4 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        break;
      }

      type metadata accessor for ControlHomeFiltersResolutionResult();
      a3 = sub_252E2B004(a7);

      MEMORY[0x2530AD700]();
      if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a7 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++a1;
      if (a4 == a2)
      {
        v34 = v79;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

  v39 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_252E3C130;
  type metadata accessor for ControlHomeFiltersResolutionResult();
  *(v34 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
LABEL_44:
  v75 = a8;
  v76 = 0;
LABEL_45:
  sub_252B1C4F8(v75, v76);
  return v34;
}

void sub_252B1C4F8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_252B1C504(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_252B1C554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433B8, &qword_252E4B808);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252B1C61C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ModifyGetCarbonDetectedHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

void sub_252B1C650(void *a1)
{
  type metadata accessor for HomeStore();
  v2 = static HomeStore.shared.getter();
  v3 = v2[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v3 != 2 && (v3 & 1) == 0 || (v4 = [a1 filters]) == 0)
  {

    return;
  }

  v5 = v4;
  type metadata accessor for HomeFilter();
  v6 = sub_252E37264();

  v7 = [a1 userTask];
  v8 = HomeStore.accessories(matching:supporting:)(v6, v7);
  v10 = v9;

  if (v10)
  {
    v11 = v8;
    v12 = 1;
LABEL_48:
    sub_252929F10(v11, v12);
    return;
  }

  if (v8 >> 62)
  {
    v13 = sub_252E378C4();
    if (!v13)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_47;
    }
  }

  v14 = [a1 userTask];
  if (!v14)
  {
    goto LABEL_44;
  }

  v15 = v14;
  if ([v14 taskType] == 4)
  {

    goto LABEL_13;
  }

  v16 = [v15 taskType];

  if (v16 != 5)
  {
LABEL_47:
    v11 = v8;
    v12 = 0;
    goto LABEL_48;
  }

LABEL_13:
  v17 = [a1 userTask];
  if (!v17)
  {
    goto LABEL_28;
  }

  v18 = v17;
  v19 = [v17 attribute];

  if (v19 == 32)
  {
    v20 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x2530ADF00](v20, v8);
        v22 = __OFADD__(v20++, 1);
        if (v22)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v20 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_50:
          __break(1u);
          return;
        }

        v21 = *(v8 + 32 + 8 * v20);

        v22 = __OFADD__(v20++, 1);
        if (v22)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          sub_252C515AC();
          break;
        }
      }

      v23 = (*(*v21 + 336))();
      v24 = *(v23 + 16);
      v25 = 32;
      while (v24)
      {
        v26 = *(v23 + v25);
        v25 += 8;
        --v24;
        if (v26 == 33)
        {
LABEL_45:

          sub_252929F10(v8, 0);
          return;
        }
      }
    }

    while (v20 != v13);
  }

  v27 = [a1 userTask];
  if (!v27)
  {
    goto LABEL_44;
  }

  v28 = v27;
  v29 = [v27 attribute];

  if (v29 != 35)
  {
    goto LABEL_47;
  }

  v30 = 0;
  while ((v8 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x2530ADF00](v30, v8);
    v22 = __OFADD__(v30++, 1);
    if (v22)
    {
      goto LABEL_43;
    }

LABEL_35:
    v32 = (*(*v31 + 336))();
    v33 = *(v32 + 16);
    v34 = 32;
    while (v33)
    {
      v35 = *(v32 + v34);
      v34 += 8;
      --v33;
      if (v35 == 36)
      {
        goto LABEL_45;
      }
    }

    if (v30 == v13)
    {
      goto LABEL_47;
    }
  }

  if (v30 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_50;
  }

  v31 = *(v8 + 32 + 8 * v30);

  v22 = __OFADD__(v30++, 1);
  if (!v22)
  {
    goto LABEL_35;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  sub_252929F10(v8, 0);
  sub_252C515AC();
}

id sub_252B1C9FC(void *a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = [a1 userTask];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v12 = sub_252D6CA80(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = [a1 userTask];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 attribute];

    if (v15 == 32)
    {
      if (v12)
      {
        v12[3] = 33;
      }

      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v16 = __swift_project_value_buffer(v2, qword_27F544DA8);
      (*(v3 + 16))(v9, v16, v2);
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000038, 0x8000000252E7CC90);
      if (v12)
      {
        v17 = v12[3];
      }

      else
      {
        v17 = 0;
      }

      v31 = v17;
      v32 = v12 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540728, qword_252E4B870);
      v18 = sub_252E36F94();
      MEMORY[0x2530AD570](v18);

      sub_252CC3D90(v33, v34, 0xD000000000000097, 0x8000000252E7CBF0);

      (*(v3 + 8))(v9, v2);
    }
  }

  else
  {
    sub_252C515AC();
  }

  v19 = [a1 userTask];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 attribute];

    if (v21 == 35)
    {
      if (v12)
      {
        v12[3] = 36;
      }

      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v22 = __swift_project_value_buffer(v2, qword_27F544DA8);
      (*(v3 + 16))(v7, v22, v2);
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E7CBB0);
      if (v12)
      {
        v23 = v12[3];
      }

      else
      {
        v23 = 0;
      }

      v31 = v23;
      v32 = v12 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540728, qword_252E4B870);
      v25 = sub_252E36F94();
      MEMORY[0x2530AD570](v25);

      sub_252CC3D90(v33, v34, 0xD000000000000097, 0x8000000252E7CBF0);

      (*(v3 + 8))(v7, v2);
      if (!v12)
      {
        goto LABEL_28;
      }

LABEL_25:

      v24 = sub_252D6CB58();

      goto LABEL_29;
    }
  }

  else
  {
    sub_252C515AC();
  }

  if (v12)
  {
    goto LABEL_25;
  }

LABEL_28:
  v24 = 0;
LABEL_29:
  v26 = [a1 filters];
  if (v26)
  {
    v27 = v26;
    type metadata accessor for HomeFilter();
    v28 = sub_252E37264();
  }

  else
  {
    v28 = 0;
  }

  type metadata accessor for ControlHomeIntent();
  v29 = sub_252D473EC(v24, v28);

  return v29;
}

uint64_t AutomateHomeRCHStrategy.__allocating_init(locationService:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v11 = *(a1 + 24);
  v3 = v11;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  v5 = *(v11 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  *(v2 + 40) = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v2 + 16));
  (*(v5 + 32))(boxed_opaque_existential_0, v8, v3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t *AutomateHomeRCHStrategy.init(locationService:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_252B1D948(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t sub_252B1D0E0()
{
  v0 = sub_252E34164();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E340E4();
  v5 = sub_2529C8644(v4);
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    return sub_252E339F4();
  }

  else
  {
    return sub_252E33A04();
  }
}

uint64_t sub_252B1D1D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2529C9EDC;

  return sub_252B1DA08(a1);
}

uint64_t sub_252B1D278(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2529C9ED8;

  return (sub_252B1DD88)(a1, a2);
}

uint64_t AutomateHomeRCHStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_252B1D384(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2529C8CCC;

  return sub_252B1DA08(a1);
}

uint64_t sub_252B1D42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AutomateHomeRCHStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_252B1D478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B498] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for AutomateHomeRCHStrategy();
  *v11 = v5;
  v11[1] = sub_25294B954;

  return MEMORY[0x2821B9D90](a1, a2, a3, v12, a5);
}

uint64_t sub_252B1D544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B490] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for AutomateHomeRCHStrategy();
  *v11 = v5;
  v11[1] = sub_25294B954;

  return MEMORY[0x2821B9D88](a1, a2, a3, v12, a5);
}

uint64_t sub_252B1D610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B488] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for AutomateHomeRCHStrategy();
  *v11 = v5;
  v11[1] = sub_25294B954;

  return MEMORY[0x2821B9D80](a1, a2, a3, v12, a5);
}

uint64_t sub_252B1D6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B480] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for AutomateHomeRCHStrategy();
  *v13 = v6;
  v13[1] = sub_25293B808;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_252B1D7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B6D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for AutomateHomeRCHStrategy();
  *v13 = v6;
  v13[1] = sub_25294B954;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_252B1D894(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25296BC70;

  return (sub_252B1DD88)(a1, a2);
}

uint64_t *sub_252B1D948(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_252B1DA28()
{
  sub_252AB3FEC(v0[191], 0, v0 + 65);
  memcpy(v0 + 2, v0 + 65, 0x1F8uLL);
  if (sub_252956B94(v0 + 2) == 1)
  {
    v1 = v0[191];
    sub_2529515FC(3, 4, 0xD00000000000001FLL, 0x8000000252E770F0);
    type metadata accessor for AutomateHomeError();
    sub_252B1E3C0(&qword_27F543410, 255, type metadata accessor for AutomateHomeError);
    swift_allocError();
    v3 = v2;
    v4 = sub_252E34164();
    (*(*(v4 - 8) + 16))(v3, v1, v4);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }

  else
  {
    memcpy(v0 + 128, v0 + 2, 0x1F8uLL);
    v7 = swift_task_alloc();
    v0[192] = v7;
    *v7 = v0;
    v7[1] = sub_252B1DC20;

    return sub_252B5D2B0();
  }
}

uint64_t sub_252B1DC20(uint64_t a1)
{
  v2 = *(*v1 + 1536);
  v4 = *v1;
  *(*v1 + 1544) = a1;

  return MEMORY[0x2822009F8](sub_252B1DD20, 0, 0);
}

uint64_t sub_252B1DD20()
{
  sub_25299F5D4(v0 + 520);
  v1 = *(v0 + 8);
  v2 = *(v0 + 1544);

  return v1(v2);
}

uint64_t sub_252B1DD88(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_252E336F4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B1DE48, 0, 0);
}

uint64_t sub_252B1DE48()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544C70);
  sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E7CD20, 0xD00000000000007FLL, 0x8000000252E7CD50);
  v7 = objc_allocWithZone(type metadata accessor for AutomateHomeIntentHandler());

  [v7 init];
  type metadata accessor for AutomateHomeIntent();
  v8 = v4;
  sub_252E336E4();
  sub_252E33784();
  v9 = sub_252E33774();
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10(v9);
}

uint64_t dispatch thunk of AutomateHomeRCHStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25294B7BC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of AutomateHomeRCHStrategy.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 112);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25296BC70;

  return v10(a1, a2);
}

uint64_t type metadata accessor for AutomateHomeError()
{
  result = qword_27F543418;
  if (!qword_27F543418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252B1E3C0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_252B1E408()
{
  result = sub_252E34164();
  if (v1 <= 0x3F)
  {
    result = sub_252E33764();
    if (v2 <= 0x3F)
    {
      result = sub_252B1E4B8();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for AutomateHomeIntent();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_252B1E4B8()
{
  result = qword_27F543428;
  if (!qword_27F543428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F543428);
  }

  return result;
}

uint64_t sub_252B1E504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for HomeAutomationSnippetModels();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_252B1F32C(a1, a2, type metadata accessor for AutomationSnippetModel);
      v5 = type metadata accessor for AutomationSnippetModel();
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_252B1F32C(a1, a2, type metadata accessor for CallToActionSnippetModel);
      v5 = type metadata accessor for CallToActionSnippetModel();
    }

    else
    {
      sub_252B1F32C(a1, a2, type metadata accessor for TemperatureSnippetModel);
      v5 = type metadata accessor for TemperatureSnippetModel();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_252B1F32C(a1, a2, type metadata accessor for ConfirmationSnippetModel);
      v5 = type metadata accessor for ConfirmationSnippetModel();
    }

    else
    {
      sub_252B1F32C(a1, a2, type metadata accessor for CompletionSnippetModel);
      v5 = type metadata accessor for CompletionSnippetModel();
    }
  }

  else
  {
    sub_252B1F32C(a1, a2, type metadata accessor for DisambiguationSnippetModel);
    v5 = type metadata accessor for DisambiguationSnippetModel(0);
  }

  (*(*(v5 - 8) + 56))(a2, 0, 1);
  type metadata accessor for SnippetResponseViewIds();

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_252B1E6EC()
{
  v1 = type metadata accessor for SnippetResponseViewIds();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v26 - v6;
  v8 = sub_252B1E9C8();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v26[0] = 0;
    v26[1] = 0xE000000000000000;
    sub_252B1F268(v0, v7);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v13 = "ompletionResponse";
    v14 = "onfirmationResponse";
    v15 = "isambiguationResponse";
    v16 = 0xD000000000000023;
    if (EnumCaseMultiPayload != 4)
    {
      v16 = 0xD000000000000025;
      v15 = "HomeAutomation#CallToAction";
    }

    if (EnumCaseMultiPayload == 3)
    {
      v16 = 0xD000000000000022;
    }

    else
    {
      v14 = v15;
    }

    v17 = "e snippet result: ";
    v18 = 0xD00000000000001BLL;
    if (EnumCaseMultiPayload != 1)
    {
      v18 = 0xD000000000000021;
      v17 = "emperatureResponse";
    }

    if (EnumCaseMultiPayload)
    {
      v13 = v17;
    }

    else
    {
      v18 = 0xD000000000000021;
    }

    if (EnumCaseMultiPayload <= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = v16;
    }

    if (EnumCaseMultiPayload <= 2)
    {
      v20 = v13;
    }

    else
    {
      v20 = v14;
    }

    sub_252B1F2CC(v7, type metadata accessor for SnippetResponseViewIds);
    MEMORY[0x2530AD570](v19, v20 | 0x8000000000000000);

    MEMORY[0x2530AD570](v10, v11);

    return v26[0];
  }

  else
  {
    sub_252B1F268(v0, v5);
    v22 = swift_getEnumCaseMultiPayload();
    v23 = 0xD000000000000023;
    if (v22 != 4)
    {
      v23 = 0xD000000000000025;
    }

    if (v22 == 3)
    {
      v23 = 0xD000000000000022;
    }

    v24 = 0xD00000000000001BLL;
    if (v22 != 1)
    {
      v24 = 0xD000000000000021;
    }

    if (!v22)
    {
      v24 = 0xD000000000000021;
    }

    if (v22 <= 2)
    {
      v21 = v24;
    }

    else
    {
      v21 = v23;
    }

    sub_252B1F2CC(v5, type metadata accessor for SnippetResponseViewIds);
  }

  return v21;
}

uint64_t type metadata accessor for SnippetResponseViewIds()
{
  result = qword_27F543458;
  if (!qword_27F543458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_252B1E9C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543430, &qword_252E4BA90);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v67 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v66 = &v63 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543438, &qword_252E4BA98);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v65 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543440, &qword_252E4BAA0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v63 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543448, &unk_252E4BAA8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v63 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542768, &qword_252E46530);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v63 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543450, &qword_252E4BAB8);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v35 = &v63 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v63 - v36;
  v38 = type metadata accessor for SnippetResponseViewIds();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v63 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252B1F268(v68, v41);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v52 = &qword_27F543430;
      v53 = &qword_252E4BA90;
      v54 = v66;
      sub_25293DDF0(v41, v66, &qword_27F543430, &qword_252E4BA90);
      v55 = v67;
      sub_252938414(v54, v67, &qword_27F543430, &qword_252E4BA90);
      v56 = type metadata accessor for TemperatureSnippetModel();
      if ((*(*(v56 - 8) + 48))(v55, 1, v56) == 1)
      {
        sub_25293847C(v54, &qword_27F543430, &qword_252E4BA90);
        v48 = v55;
LABEL_17:
        v49 = v52;
        v50 = v53;
        goto LABEL_18;
      }

      v59 = TemperatureSnippetModel.stringId.getter();
      sub_25293847C(v54, &qword_27F543430, &qword_252E4BA90);
      v60 = type metadata accessor for TemperatureSnippetModel;
      v61 = v55;
      goto LABEL_24;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_25293DDF0(v41, v30, &qword_27F542768, &qword_252E46530);
      sub_252938414(v30, v28, &qword_27F542768, &qword_252E46530);
      v47 = type metadata accessor for ConfirmationSnippetModel();
      if ((*(*(v47 - 8) + 48))(v28, 1, v47) != 1)
      {
        v62 = ConfirmationSnippetModel.stringId.getter();
        sub_25293847C(v30, &qword_27F542768, &qword_252E46530);
        sub_252B1F2CC(v28, type metadata accessor for ConfirmationSnippetModel);
        return v62;
      }

      sub_25293847C(v30, &qword_27F542768, &qword_252E46530);
      v48 = v28;
      v49 = &qword_27F542768;
      v50 = &qword_252E46530;
LABEL_18:
      sub_25293847C(v48, v49, v50);
      return 0;
    }

    v52 = &qword_27F543440;
    v53 = &qword_252E4BAA0;
    sub_25293DDF0(v41, v16, &qword_27F543440, &qword_252E4BAA0);
    sub_252938414(v16, v14, &qword_27F543440, &qword_252E4BAA0);
    v58 = type metadata accessor for DisambiguationSnippetModel(0);
    if ((*(*(v58 - 8) + 48))(v14, 1, v58) == 1)
    {
      sub_25293847C(v16, &qword_27F543440, &qword_252E4BAA0);
      v48 = v14;
      goto LABEL_17;
    }

    v59 = DisambiguationSnippetModel.stringId.getter();
    sub_25293847C(v16, &qword_27F543440, &qword_252E4BAA0);
    v60 = type metadata accessor for DisambiguationSnippetModel;
    v61 = v14;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v43 = v64;
        sub_25293DDF0(v41, v64, &qword_27F543438, &qword_252E4BA98);
        v44 = v65;
        sub_252938414(v43, v65, &qword_27F543438, &qword_252E4BA98);
        v45 = type metadata accessor for CallToActionSnippetModel();
        (*(*(v45 - 8) + 48))(v44, 1, v45);
        sub_25293847C(v43, &qword_27F543438, &qword_252E4BA98);
        sub_25293847C(v44, &qword_27F543438, &qword_252E4BA98);
        return 0;
      }

      v52 = &qword_27F543448;
      v53 = &unk_252E4BAA8;
      sub_25293DDF0(v41, v23, &qword_27F543448, &unk_252E4BAA8);
      sub_252938414(v23, v21, &qword_27F543448, &unk_252E4BAA8);
      v57 = type metadata accessor for CompletionSnippetModel();
      if ((*(*(v57 - 8) + 48))(v21, 1, v57) == 1)
      {
        sub_25293847C(v23, &qword_27F543448, &unk_252E4BAA8);
        v48 = v21;
        goto LABEL_17;
      }

      v59 = CompletionSnippetModel.stringId.getter();
      sub_25293847C(v23, &qword_27F543448, &unk_252E4BAA8);
      v60 = type metadata accessor for CompletionSnippetModel;
      v61 = v21;
      goto LABEL_24;
    }

    sub_25293DDF0(v41, v37, &qword_27F543450, &qword_252E4BAB8);
    sub_252938414(v37, v35, &qword_27F543450, &qword_252E4BAB8);
    v51 = type metadata accessor for AutomationSnippetModel();
    if ((*(*(v51 - 8) + 48))(v35, 1, v51) == 1)
    {
      sub_25293847C(v37, &qword_27F543450, &qword_252E4BAB8);
      v48 = v35;
      v49 = &qword_27F543450;
      v50 = &qword_252E4BAB8;
      goto LABEL_18;
    }

    v59 = AutomationSnippetModel.stringId.getter();
    sub_25293847C(v37, &qword_27F543450, &qword_252E4BAB8);
    v60 = type metadata accessor for AutomationSnippetModel;
    v61 = v35;
  }

LABEL_24:
  sub_252B1F2CC(v61, v60);
  return v59;
}

uint64_t sub_252B1F268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetResponseViewIds();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252B1F2CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252B1F32C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_252B1F394()
{
  sub_252B1F500(319, &qword_27F543468, type metadata accessor for AutomationSnippetModel);
  if (v0 <= 0x3F)
  {
    sub_252B1F500(319, &qword_27F543470, type metadata accessor for CallToActionSnippetModel);
    if (v1 <= 0x3F)
    {
      sub_252B1F500(319, &qword_27F543478, type metadata accessor for CompletionSnippetModel);
      if (v2 <= 0x3F)
      {
        sub_252B1F500(319, &qword_27F543480, type metadata accessor for TemperatureSnippetModel);
        if (v3 <= 0x3F)
        {
          sub_252B1F500(319, &qword_27F543488, type metadata accessor for ConfirmationSnippetModel);
          if (v4 <= 0x3F)
          {
            sub_252B1F500(319, &qword_27F543490, type metadata accessor for DisambiguationSnippetModel);
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_252B1F500(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_252E37734();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_252B1F554(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_50;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v4 = &qword_27F541850;
    v31 = v1;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v30);
      }

      else
      {
        if (v2 >= *(v34 + 16))
        {
          goto LABEL_45;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v33 + 8 * v2);
      }

      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v2++, 1);
      if (v6)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject taskResponses];
      if (v7)
      {
        v8 = v7;
        type metadata accessor for HomeUserTaskResponse();
        v9 = sub_252E37264();

        v5 = v8;
      }

      else
      {
        v9 = MEMORY[0x277D84F90];
      }

      v10 = v9 >> 62;
      if (v9 >> 62)
      {
        v11 = sub_252E378C4();
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
LABEL_43:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
          goto LABEL_43;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v12)
        {
          goto LABEL_24;
        }

        v14 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v38 = v3;
          goto LABEL_26;
        }
      }

      else
      {
        if (v12)
        {
LABEL_24:
          sub_252E378C4();
          goto LABEL_25;
        }

        v14 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = *(v14 + 16);
LABEL_25:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v38 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_26:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v10)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_30:
          if (((v17 >> 1) - v16) < v11)
          {
            goto LABEL_47;
          }

          v36 = v2;
          v20 = v14 + 8 * v16 + 32;
          v32 = v14;
          if (v10)
          {
            if (v18 < 1)
            {
              goto LABEL_49;
            }

            sub_252B21AB4();
            for (i = 0; i != v18; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(v4, &qword_252E43DC0);
              v22 = sub_2529FBD80(v37, i, v9);
              v24 = v4;
              v25 = *v23;
              (v22)(v37, 0);
              *(v20 + 8 * i) = v25;
              v4 = v24;
            }
          }

          else
          {
            type metadata accessor for HomeUserTaskResponse();
            swift_arrayInitWithCopy();
          }

          v2 = v36;
          v1 = v31;
          v3 = v38;
          if (v11 >= 1)
          {
            v26 = *(v32 + 16);
            v6 = __OFADD__(v26, v11);
            v27 = v26 + v11;
            if (v6)
            {
              goto LABEL_48;
            }

            *(v32 + 16) = v27;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_30;
        }
      }

      v3 = v38;
      if (v11 > 0)
      {
        goto LABEL_46;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v28;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252B1F8D4(unint64_t a1)
{
  v35 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_19:
    v2 = sub_252E378C4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x2530ADF00](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v4 = *(a1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v7 = [v4 isExcludeFilter];
        sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
        v8 = sub_252E37664();
        v9 = v8;
        if (v7)
        {
          v10 = sub_252E37694();

          if (v10)
          {
            sub_252E37A94();
            v11 = *(v35 + 16);
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
            goto LABEL_6;
          }
        }

        else
        {
        }

LABEL_6:
        ++v3;
        if (v6 == v2)
        {
          v12 = v35;
          if ((v35 & 0x8000000000000000) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_43;
        }
      }
    }
  }

  v12 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

LABEL_21:
  if ((v12 & 0x4000000000000000) != 0)
  {
LABEL_43:
    type metadata accessor for HomeFilter();

    v13 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for HomeFilter();
    v13 = v12;
  }

  if (qword_27F53F4E8 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544D60);
    sub_252CC3D90(0xD000000000000036, 0x8000000252E7CEA0, 0xD000000000000084, 0x8000000252E7CEE0);
    KeyPath = swift_getKeyPath();
    v16 = sub_2529304DC(KeyPath, v13);

    if (v16)
    {

      v17 = 3;
      goto LABEL_47;
    }

    v18 = swift_getKeyPath();
    v19 = sub_2529304DC(v18, v13);

    if (v19)
    {

      v17 = 2;
      goto LABEL_47;
    }

    if (v13 >> 62)
    {
      break;
    }

    v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_45;
    }

LABEL_30:
    v21 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x2530ADF00](v21, v13);
      }

      else
      {
        if (v21 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v22 = *(v13 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v25 = [v22 zoneName];
      if (v25)
      {
        v26 = v25;

        v17 = 1;
        goto LABEL_47;
      }

      ++v21;
      if (v24 == v20)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }

  v20 = sub_252E378C4();
  if (v20)
  {
    goto LABEL_30;
  }

LABEL_45:
  v27 = swift_getKeyPath();
  v28 = sub_2529304DC(v27, v13);

  if ((v28 & 1) == 0)
  {
    sub_252CC3D90(0xD00000000000001BLL, 0x8000000252E7CFA0, 0xD000000000000084, 0x8000000252E7CEE0);
    return 4;
  }

  v17 = 0;
LABEL_47:
  sub_252E379F4();

  v29 = 1701670760;
  v30 = 0xE400000000000000;
  v31 = 1836019570;
  if (v17 != 2)
  {
    v31 = 0x70756F7267;
    v30 = 0xE500000000000000;
  }

  if (v17)
  {
    v29 = 1701736314;
  }

  if (v17 <= 1)
  {
    v32 = v29;
  }

  else
  {
    v32 = v31;
  }

  if (v17 <= 1)
  {
    v33 = 0xE400000000000000;
  }

  else
  {
    v33 = v30;
  }

  MEMORY[0x2530AD570](v32, v33);

  sub_252CC3D90(0xD000000000000024, 0x8000000252E7CF70, 0xD000000000000084, 0x8000000252E7CEE0);

  return v17;
}

id sub_252B1FDB0(__objc2_class *cache)
{
  v2 = v1;
  v4 = [v1 entityResponses];
  v5 = MEMORY[0x277D84F90];
  v51 = cache;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_46;
  }

  v6 = v4;
  type metadata accessor for HomeEntityResponse();
  v7 = sub_252E37264();

  v60 = v5;
  if (v7 >> 62)
  {
    goto LABEL_100;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v9 = MEMORY[0x277D84F90];
    if (i)
    {
      v48 = v2;
      v49 = v7;
      v2 = 0;
      v56 = v7 & 0xFFFFFFFFFFFFFF8;
      v58 = v7 & 0xC000000000000001;
      v52 = i;
      v54 = v7 + 32;
      v7 = &off_279711000;
      while (1)
      {
        if (v58)
        {
          v10 = MEMORY[0x2530ADF00](v2, v49);
        }

        else
        {
          if (v2 >= *(v56 + 16))
          {
            goto LABEL_95;
          }

          v10 = *(v54 + 8 * v2);
        }

        v11 = v10;
        v12 = __OFADD__(v2++, 1);
        if (v12)
        {
          goto LABEL_94;
        }

        v13 = [v10 taskResponses];
        if (v13)
        {
          v14 = v13;
          type metadata accessor for HomeUserTaskResponse();
          v15 = sub_252E37264();

          v5 = (v15 & 0xFFFFFFFFFFFFFF8);
          if (v15 >> 62)
          {
            v16 = sub_252E378C4();
          }

          else
          {
            v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v17 = 0;
          while (1)
          {
            if (v16 == v17)
            {

              i = v52;
              goto LABEL_7;
            }

            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x2530ADF00](v17, v15);
            }

            else
            {
              if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_89;
              }

              v18 = *(v15 + 8 * v17 + 32);
            }

            v19 = v18;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            cache = [v18 taskOutcome];

            ++v17;
            if (cache == 1)
            {

              sub_252E37A94();
              cache = v60->cache;
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
              i = v52;
              goto LABEL_7;
            }
          }

          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

LABEL_7:
        if (v2 == i)
        {
          p_isa = &v60->isa;
          cache = v51;
          v5 = MEMORY[0x277D84F90];
          v2 = v48;
          v9 = MEMORY[0x277D84F90];
          goto LABEL_30;
        }
      }
    }

    p_isa = MEMORY[0x277D84F90];
LABEL_30:

    v60 = v9;
    if ((p_isa & 0x8000000000000000) != 0 || (p_isa & 0x4000000000000000) != 0)
    {
      v7 = sub_252E378C4();
      if (v7)
      {
LABEL_33:
        v21 = v2;
        v22 = v5;
        v2 = 0;
        cache = (p_isa & 0xC000000000000001);
        while (1)
        {
          if (cache)
          {
            v23 = MEMORY[0x2530ADF00](v2, p_isa);
          }

          else
          {
            if (v2 >= p_isa[2])
            {
              goto LABEL_93;
            }

            v23 = p_isa[v2 + 4];
          }

          v5 = (v2 + 1);
          if (__OFADD__(v2, 1))
          {
            break;
          }

          MEMORY[0x2530AD700](v23);
          if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v24 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          ++v2;
          if (v5 == v7)
          {
            cache = v51;
            v5 = v22;
            v2 = v21;
            goto LABEL_43;
          }
        }

LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }
    }

    else
    {
      v7 = p_isa[2];
      if (v7)
      {
        goto LABEL_33;
      }
    }

LABEL_43:

    if (v9 >> 62)
    {
      v7 = sub_252E378C4();
    }

    else
    {
      v7 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

LABEL_46:
    v25 = [v2 entityResponses];
    if (!v25)
    {
      j = 0;
      goto LABEL_110;
    }

    v26 = v25;
    type metadata accessor for HomeEntityResponse();
    v27 = sub_252E37264();

    v60 = v5;
    v28 = v27;
    if (v27 >> 62)
    {
      v29 = sub_252E378C4();
      v28 = v27;
    }

    else
    {
      v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = v7;
    cache = MEMORY[0x277D84F90];
    if (v29)
    {
      v2 = 0;
      v57 = v28 & 0xFFFFFFFFFFFFFF8;
      v59 = v28 & 0xC000000000000001;
      v48 = v28;
      v53 = v29;
      v55 = v28 + 32;
      v5 = &off_279711000;
      while (1)
      {
        if (v59)
        {
          v30 = MEMORY[0x2530ADF00](v2, v48);
        }

        else
        {
          if (v2 >= *(v57 + 16))
          {
            goto LABEL_99;
          }

          v30 = *(v55 + 8 * v2);
        }

        v31 = v30;
        v12 = __OFADD__(v2++, 1);
        if (v12)
        {
          goto LABEL_98;
        }

        v32 = [v30 taskResponses];
        if (v32)
        {
          v33 = v32;
          type metadata accessor for HomeUserTaskResponse();
          v34 = sub_252E37264();

          v7 = v34 & 0xFFFFFFFFFFFFFF8;
          if (v34 >> 62)
          {
            v35 = sub_252E378C4();
          }

          else
          {
            v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v36 = 0;
          do
          {
            if (v35 == v36)
            {

              v29 = v53;
              goto LABEL_52;
            }

            if ((v34 & 0xC000000000000001) != 0)
            {
              v37 = MEMORY[0x2530ADF00](v36, v34);
            }

            else
            {
              if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_91;
              }

              v37 = *(v34 + 8 * v36 + 32);
            }

            v38 = v37;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_90;
            }

            cache = [v37 taskOutcome];

            ++v36;
          }

          while (cache != 1);

          v29 = v53;
        }

        else
        {
LABEL_52:
          sub_252E37A94();
          cache = v60->cache;
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        if (v2 == v29)
        {
          v40 = &v60->isa;
          cache = MEMORY[0x277D84F90];
          goto LABEL_75;
        }
      }
    }

    v40 = MEMORY[0x277D84F90];
LABEL_75:

    v60 = cache;
    if ((v40 & 0x8000000000000000) == 0 && (v40 & 0x4000000000000000) == 0)
    {
      v5 = v40[2];
      v7 = v50;
      cache = v51;
      if (!v5)
      {
        break;
      }

      goto LABEL_78;
    }

    v5 = sub_252E378C4();
    v7 = v50;
    cache = v51;
    if (!v5)
    {
      break;
    }

LABEL_78:
    v2 = 0;
    cache = (v40 & 0xC000000000000001);
    while (1)
    {
      if (cache)
      {
        v41 = MEMORY[0x2530ADF00](v2, v40);
      }

      else
      {
        if (v2 >= v40[2])
        {
          goto LABEL_97;
        }

        v41 = v40[v2 + 4];
      }

      v7 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      MEMORY[0x2530AD700](v41);
      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v42 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v2;
      if (v7 == v5)
      {
        v43 = &v60->isa;
        v7 = v50;
        cache = v51;
        goto LABEL_107;
      }
    }

LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    ;
  }

  v43 = MEMORY[0x277D84F90];
LABEL_107:

  if (v43 >> 62)
  {
    goto LABEL_120;
  }

  for (j = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_252E378C4())
  {

LABEL_110:
    v12 = __OFADD__(v7, j);
    v44 = v7 + j;
    if (!v12)
    {
      break;
    }

    __break(1u);
LABEL_120:
    ;
  }

  sub_252C77A20(v7);
  sub_252C77358(v44);
  if (v7)
  {
    v45 = cache;
    if (v7 >= v44)
    {
      v46 = 1;
    }

    else
    {
      v46 = 3;
    }
  }

  else
  {
    v45 = cache;
    v46 = 2;
  }

  return [(__objc2_class *)v45 setHomeAutomationRequestOutcome:v46];
}

uint64_t sub_252B2053C(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
  if (!v3)
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544E38);
    sub_252CC4050(0xD00000000000002ELL, 0x8000000252E7A5D0, 0xD000000000000076, 0x8000000252E7CDF0, 0xD000000000000028, 0x8000000252E7CE70, 68);
    return 0;
  }

  v4 = v3;
  v101 = a1;
  v5 = [a1 filters];
  v102 = v4;
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();

    v103 = MEMORY[0x277D84F90];
    if (v7 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v9 = v1;
      v10 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x2530ADF00](v10, v7);
        }

        else
        {
          if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v11 = *(v7 + 8 * v10 + 32);
        }

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        MEMORY[0x2530AD700](v11);
        if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v13 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        v1 = &v103;
        sub_252E372D4();
        ++v10;
        if (v12 == i)
        {
          v16 = v103;
          v1 = v9;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    v16 = MEMORY[0x277D84F90];
LABEL_23:

    v18 = sub_252B1F8D4(v16);

    v17 = dword_252E4BB84[v18];
    v4 = v102;
  }

  else
  {
    v17 = 0;
  }

  [v4 setSmallestTargetedContainer_];
  v19 = sub_252C2F554();
  if (v19 >> 62)
  {
    goto LABEL_110;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_26:

  if (!v20)
  {
    v28 = [v1 entityResponses];
    if (!v28)
    {
      v15 = v102;
      goto LABEL_82;
    }

    v29 = v28;
    type metadata accessor for HomeEntityResponse();
    v30 = sub_252E37264();

    if (v30 >> 62)
    {
      v31 = sub_252E378C4();
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v100 = v1;
    v32 = MEMORY[0x277D84F90];
    if (v31)
    {
      v33 = 0;
      v1 = (v30 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x2530ADF00](v33, v30);
        }

        else
        {
          if (v33 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_105;
          }

          v34 = *(v30 + 8 * v33 + 32);
        }

        v35 = v34;
        v36 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
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
          v20 = sub_252E378C4();
          goto LABEL_26;
        }

        v37 = [v34 entity];
        if (v37 && (v38 = v37, v39 = [v37 deviceTypes], v38, v39))
        {
          v40 = sub_252E37264();

          v35 = v39;
        }

        else
        {
          v40 = &unk_2864A8578;
        }

        v41 = v40[2];
        v42 = *(v32 + 2);
        v43 = v42 + v41;
        if (__OFADD__(v42, v41))
        {
          goto LABEL_106;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v43 <= *(v32 + 3) >> 1)
        {
          if (v40[2])
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v42 <= v43)
          {
            v45 = v42 + v41;
          }

          else
          {
            v45 = v42;
          }

          v32 = sub_2529F8104(isUniquelyReferenced_nonNull_native, v45, 1, v32);
          if (v40[2])
          {
LABEL_52:
            v46 = *(v32 + 2);
            if ((*(v32 + 3) >> 1) - v46 < v41)
            {
              goto LABEL_108;
            }

            memcpy(&v32[8 * v46 + 32], v40 + 4, 8 * v41);

            if (v41)
            {
              v47 = *(v32 + 2);
              v48 = __OFADD__(v47, v41);
              v49 = v47 + v41;
              if (v48)
              {
                goto LABEL_109;
              }

              *(v32 + 2) = v49;
            }

            goto LABEL_34;
          }
        }

        if (v41)
        {
          goto LABEL_107;
        }

LABEL_34:
        ++v33;
      }

      while (v36 != v31);
    }

    v50 = *(v32 + 2);
    if (v50)
    {
      v103 = MEMORY[0x277D84F90];
      sub_2529AA420(0, v50, 0);
      v51 = 32;
      v52 = v103;
      do
      {
        v53 = sub_252E25FC4(*&v32[v51]);
        if (v54)
        {
          v55 = 0;
        }

        else
        {
          v55 = v53;
        }

        v103 = v52;
        v57 = *(v52 + 2);
        v56 = *(v52 + 3);
        if (v57 >= v56 >> 1)
        {
          sub_2529AA420((v56 > 1), v57 + 1, 1);
          v52 = v103;
        }

        *(v52 + 2) = v57 + 1;
        *&v52[8 * v57 + 32] = v55;
        v51 += 8;
        --v50;
      }

      while (v50);

      v58 = *(v52 + 2);
      if (v58)
      {
        goto LABEL_68;
      }
    }

    else
    {

      v52 = MEMORY[0x277D84F90];
      v58 = *(MEMORY[0x277D84F90] + 16);
      if (v58)
      {
LABEL_68:
        v59 = (v52 + 32);
        v60 = MEMORY[0x277D84F90];
        do
        {
          v61 = *v59++;
          v62 = HomeDeviceType.description.getter(v61);
          v63 = v62;
          v65 = v64;
          v66 = HIBYTE(v64) & 0xF;
          if ((v64 & 0x2000000000000000) == 0)
          {
            v66 = v62 & 0xFFFFFFFFFFFFLL;
          }

          if (v66)
          {
            sub_252E37174();
            v67 = sub_252E36FC4();
            v69 = v68;

            v63 = sub_252AD52A0(0xFuLL, 15, v67, v69, v63, v65);
            v71 = v70;

            v65 = v71;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = sub_2529F7A80(0, *(v60 + 2) + 1, 1, v60);
          }

          v73 = *(v60 + 2);
          v72 = *(v60 + 3);
          if (v73 >= v72 >> 1)
          {
            v60 = sub_2529F7A80((v72 > 1), v73 + 1, 1, v60);
          }

          *(v60 + 2) = v73 + 1;
          v74 = &v60[16 * v73];
          *(v74 + 4) = v63;
          *(v74 + 5) = v65;
          --v58;
        }

        while (v58);
        goto LABEL_81;
      }
    }

    v60 = MEMORY[0x277D84F90];
LABEL_81:

    v75 = sub_252DF88E4(v60);

    v103 = v75;

    sub_252AC841C(&v103);

    v15 = v102;
    v1 = v100;
    goto LABEL_82;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_252E3C290;
  sub_252E37174();
  v22 = sub_252E36FC4();
  v24 = v23;

  v25 = sub_252AD52A0(0xFuLL, 15, v22, v24, 0x656E656373uLL, 0xE500000000000000);
  v27 = v26;

  *(v21 + 32) = v25;
  *(v21 + 40) = v27;
  v15 = v102;
LABEL_82:
  v76 = sub_252E37254();

  [v15 setTargetedEntityTypes_];

  v77 = [v1 entityResponses];
  if (!v77)
  {
    return v15;
  }

  v78 = v77;
  type metadata accessor for HomeEntityResponse();
  v79 = sub_252E37264();

  if (v79 >> 62)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_116;
    }
  }

  else if (!*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_116:

    return v15;
  }

  if ((v79 & 0xC000000000000001) != 0)
  {
    v80 = MEMORY[0x2530ADF00](0, v79);
  }

  else
  {
    if (!*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_115;
    }

    v80 = *(v79 + 32);
  }

  v78 = v80;

  v81 = [v78 taskResponses];

  if (!v81)
  {
    return v15;
  }

  type metadata accessor for HomeUserTaskResponse();
  v79 = sub_252E37264();

  if (!(v79 >> 62))
  {
    if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_91;
    }

    goto LABEL_116;
  }

LABEL_115:
  if (!sub_252E378C4())
  {
    goto LABEL_116;
  }

LABEL_91:
  if ((v79 & 0xC000000000000001) != 0)
  {
    v82 = MEMORY[0x2530ADF00](0, v79);
LABEL_94:
    v83 = v82;

    v84 = [v83 userTask];

    if (v84)
    {
      v85 = [v101 userTask];
      if (v85 && (v86 = v85, v87 = [v85 value], v86, v87) && (v88 = objc_msgSend(v87, sel_cleaningJob), v87, v88))
      {
        sub_252DB7E0C(v88);
        v89 = sub_252E36F04();

        [v15 setTargetAttribute_];
      }

      else
      {
        HomeAttributeType.description.getter([v84 attribute]);
        v90 = sub_252E36FA4();
        v92 = v91;

        v93 = HIBYTE(v92) & 0xF;
        if ((v92 & 0x2000000000000000) == 0)
        {
          v93 = v90 & 0xFFFFFFFFFFFFLL;
        }

        if (v93)
        {
          sub_252E37174();
          v94 = sub_252E36FC4();
          v96 = v95;

          v97 = v94;
          v15 = v102;
          sub_252AD52A0(0xFuLL, 15, v97, v96, v90, v92);
        }

        v98 = sub_252E36F04();

        [v15 setTargetAttribute_];
      }
    }

    return v15;
  }

  if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v82 = *(v79 + 32);
    goto LABEL_94;
  }

  __break(1u);

  __break(1u);
  return result;
}

void *sub_252B21010(void *a1)
{
  result = sub_252B21778();
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = [result homeAutomationRequests];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
  v8 = sub_252E37264();

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

  if (!sub_252E378C4())
  {
LABEL_25:

    return 0;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v7 = v5;
    v9 = MEMORY[0x2530ADF00](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_29;
    }

    v7 = v5;
    v9 = *(v8 + 32);
  }

  v55 = v9;

  v2 = &off_279711000;
  v10 = [v1 entityResponses];
  if (!v10)
  {
    goto LABEL_35;
  }

  v11 = v10;
  type metadata accessor for HomeEntityResponse();
  v8 = sub_252E37264();

  if (v8 >> 62)
  {
LABEL_29:
    if (!sub_252E378C4())
    {
      goto LABEL_34;
    }

    goto LABEL_11;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_11:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x2530ADF00](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_33;
    }

    v12 = *(v8 + 32);
  }

  v13 = v12;

  v14 = [v13 taskResponses];

  if (!v14)
  {
    goto LABEL_35;
  }

  type metadata accessor for HomeUserTaskResponse();
  v8 = sub_252E37264();

  if (v8 >> 62)
  {
LABEL_33:
    if (sub_252E378C4())
    {
      goto LABEL_17;
    }

LABEL_34:

    goto LABEL_35;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x2530ADF00](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_90;
    }

    v15 = *(v8 + 32);
  }

  v16 = v15;

  v17 = [v16 userTask];

  if (v17)
  {
    v18 = [v17 taskType];

    if (v18 < 7)
    {
      [(__objc2_class *)v55 setHomeAutomationRequestType:dword_252E4BB98[v18]];
      goto LABEL_35;
    }

LABEL_90:
    result = sub_252E37DF4();
    __break(1u);
    return result;
  }

LABEL_35:
  v19 = sub_252B2053C(a1);
  v20 = v55;
  if (v19)
  {
    v21 = v19;
    [(__objc2_class *)v55 setHomeAutomationRequestMetadata:v19];
  }

  sub_252B1FDB0(v55);
  v22 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  v23 = *&v1[v22];
  if (v23)
  {
    if (v23 == 101)
    {
      v24 = 3;
    }

    else if (v23 == 4)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }
  }

  else
  {
    v24 = 0;
  }

  [v7 setCommandOutcome_];
  if ([v7 commandOutcome] != 1)
  {
    v25 = [v1 v2[219]];
    v26 = MEMORY[0x277D84F90];
    if (v25)
    {
      v27 = v25;
      type metadata accessor for HomeEntityResponse();
      v28 = sub_252E37264();

      v29 = sub_252B1F554(v28);

      if (v29 >> 62)
      {
        goto LABEL_61;
      }

      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = &off_279711000; v30; i = &off_279711000)
      {
        v32 = 0;
        while (1)
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v34 = MEMORY[0x2530ADF00](v32, v29);
          }

          else
          {
            if (v32 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_60;
            }

            v34 = *(v29 + 8 * v32 + 32);
          }

          v35 = v34;
          v36 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if ([v34 taskOutcome] == 1)
          {
          }

          else
          {
            sub_252E37A94();
            v33 = *(v26 + 2);
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
          }

          ++v32;
          if (v36 == v30)
          {
            v37 = v26;
            goto LABEL_63;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        v30 = sub_252E378C4();
      }

      v37 = MEMORY[0x277D84F90];
LABEL_63:

      if ((v37 & 0x8000000000000000) != 0 || (v37 & 0x4000000000000000) != 0)
      {
        goto LABEL_80;
      }

      for (j = *(v37 + 2); j; j = sub_252E378C4())
      {
        v39 = 0;
        v26 = MEMORY[0x277D84F90];
        while (1)
        {
          if ((v37 & 0xC000000000000001) != 0)
          {
            v40 = MEMORY[0x2530ADF00](v39, v37);
          }

          else
          {
            if (v39 >= *(v37 + 2))
            {
              goto LABEL_79;
            }

            v40 = *&v37[8 * v39 + 32];
          }

          v41 = v40;
          v42 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            break;
          }

          v43 = sub_252B9ACF0([v40 i[230]]);
          v45 = v44;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_2529F7A80(0, *(v26 + 2) + 1, 1, v26);
          }

          v47 = *(v26 + 2);
          v46 = *(v26 + 3);
          if (v47 >= v46 >> 1)
          {
            v26 = sub_2529F7A80((v46 > 1), v47 + 1, 1, v26);
          }

          *(v26 + 2) = v47 + 1;
          v48 = &v26[16 * v47];
          *(v48 + 4) = v43;
          *(v48 + 5) = v45;
          ++v39;
          i = &off_279711000;
          if (v42 == j)
          {
            goto LABEL_82;
          }
        }

        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        ;
      }

      v26 = MEMORY[0x277D84F90];
LABEL_82:

      v20 = v55;
    }

    sub_252AD4414(v26);

    v49 = sub_252E37254();

    [(__objc2_class *)v20 setHomeAutomationRequestErrorReasons:v49];
  }

  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v50 = sub_252E36AD4();
  __swift_project_value_buffer(v50, qword_27F544E38);
  sub_252E379F4();

  v51 = [v7 description];
  v52 = sub_252E36F34();
  v54 = v53;

  MEMORY[0x2530AD570](v52, v54);

  sub_252CC3D90(0xD000000000000015, 0x8000000252E7CDD0, 0xD000000000000076, 0x8000000252E7CDF0);

  return v7;
}