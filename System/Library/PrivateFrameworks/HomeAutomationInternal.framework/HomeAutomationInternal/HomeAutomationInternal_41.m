uint64_t sub_252C304C4()
{
  i = [v0 entityResponses];
  if (i)
  {
    type metadata accessor for HomeEntityResponse();
    v2 = sub_252E37264();

    if (v2 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v3 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x2530ADF00](v3, v2);
        }

        else
        {
          if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v4 = *(v2 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v7 = [v4 entity];
        if (v7)
        {
          v8 = v7;
          v9 = [v7 type];

          if (v9 == 7)
          {
            i = 1;
            goto LABEL_16;
          }
        }

        else
        {
        }

        ++v3;
        if (v6 == i)
        {
          i = 0;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_16:
  }

  return i;
}

uint64_t sub_252C30628()
{
  v1 = [v0 entityResponses];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    type metadata accessor for HomeEntityResponse();
    v4 = sub_252E37264();

    v25 = v2;
    if (v4 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v6 = 0;
      v23 = v4 & 0xFFFFFFFFFFFFFF8;
      v24 = v4 & 0xC000000000000001;
      v20 = v4;
      v21 = i;
      v22 = v4 + 32;
      v4 = &off_279711000;
      while (1)
      {
        if (v24)
        {
          v7 = MEMORY[0x2530ADF00](v6, v20);
        }

        else
        {
          if (v6 >= *(v23 + 16))
          {
            goto LABEL_30;
          }

          v7 = *(v22 + 8 * v6);
        }

        v8 = v7;
        if (__OFADD__(v6++, 1))
        {
          break;
        }

        v10 = [v7 taskResponses];
        if (v10)
        {
          v11 = v10;
          type metadata accessor for HomeUserTaskResponse();
          v12 = sub_252E37264();

          if (v12 >> 62)
          {
            v13 = sub_252E378C4();
          }

          else
          {
            v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v14 = 0;
          while (1)
          {
            if (v13 == v14)
            {

              i = v21;
              goto LABEL_6;
            }

            if ((v12 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x2530ADF00](v14, v12);
            }

            else
            {
              if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v15 = *(v12 + 8 * v14 + 32);
            }

            v16 = v15;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            v17 = [v15 taskOutcome];

            ++v14;
            if (v17 == 23)
            {

              sub_252E37A94();
              v18 = *(v25 + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
              i = v21;
              goto LABEL_6;
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
          break;
        }

LABEL_6:
        if (v6 == i)
        {
          v2 = v25;
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

    v2 = MEMORY[0x277D84F90];
LABEL_33:
  }

  return v2;
}

BOOL sub_252C308A4()
{
  v1 = [v0 entityResponses];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeEntityResponse();
    v3 = sub_252E37264();

    v41 = MEMORY[0x277D84F90];
    v4 = v3 >> 62;
    if (v3 >> 62)
    {
LABEL_38:
      v5 = sub_252E378C4();
      v36 = v3;
      if (v5)
      {
LABEL_4:
        v35 = v4;
        v4 = 0;
        v6 = v3 & 0xC000000000000001;
        v7 = v3 & 0xFFFFFFFFFFFFFF8;
        v8 = v3 + 32;
        v9 = &off_279711000;
        v3 = &off_279711000;
        v39 = v6;
        v40 = v5;
        v37 = v8;
        v38 = v7;
        while (1)
        {
LABEL_6:
          if (v6)
          {
            v10 = MEMORY[0x2530ADF00](v4, v36);
          }

          else
          {
            if (v4 >= *(v7 + 16))
            {
              goto LABEL_37;
            }

            v10 = *(v8 + 8 * v4);
          }

          v11 = v10;
          if (__OFADD__(v4++, 1))
          {
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          v13 = [v10 v9[221]];
          if (v13)
          {
            v14 = v13;
            v15 = [v13 type];

            if (v15 == 7)
            {
              v16 = [v11 taskResponses];
              if (v16)
              {
                break;
              }
            }
          }

          if (v4 == v5)
          {
            goto LABEL_32;
          }
        }

        v17 = v16;
        type metadata accessor for HomeUserTaskResponse();
        v18 = sub_252E37264();

        if (v18 >> 62)
        {
          v19 = sub_252E378C4();
        }

        else
        {
          v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v20 = 0;
        while (v19 != v20)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x2530ADF00](v20, v18);
          }

          else
          {
            if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v21 = *(v18 + 8 * v20 + 32);
          }

          v22 = v21;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          v23 = [v21 taskOutcome];

          ++v20;
          if (v23 == 12)
          {

            sub_252E37A94();
            v24 = *(v41 + 16);
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
            goto LABEL_25;
          }
        }

LABEL_25:
        v6 = v39;
        v5 = v40;
        v8 = v37;
        v7 = v38;
        v9 = &off_279711000;
        if (v4 != v40)
        {
          goto LABEL_6;
        }

LABEL_32:
        v32 = v41;
        v4 = v35;
        if ((v41 & 0x8000000000000000) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v36 = v3;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v32 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_40:
      if ((v32 & 0x4000000000000000) == 0)
      {
        v33 = *(v32 + 16);
LABEL_42:

        if (v4)
        {
          v34 = sub_252E378C4();
        }

        else
        {
          v34 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        return v34 == v33;
      }
    }

LABEL_46:
    v33 = sub_252E378C4();
    goto LABEL_42;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v25 = sub_252E36AD4();
  __swift_project_value_buffer(v25, qword_27F544D60);
  sub_252E379F4();

  v26 = v0;
  v27 = [v26 description];
  v28 = sub_252E36F34();
  v30 = v29;

  MEMORY[0x2530AD570](v28, v30);

  sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

  return 0;
}

uint64_t sub_252C30CB4()
{
  v1 = [v0 entityResponses];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeEntityResponse();
    v3 = sub_252E37264();

    v4 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
LABEL_57:
      v5 = sub_252E378C4();
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    v47 = v3;
    v48 = v5;
    v53 = v3 + 32;
    v54 = v3 & 0xC000000000000001;
    v49 = v4;
    while (1)
    {
      v8 = v6 != v5;
      if (v6 == v5)
      {
        break;
      }

      if (v54)
      {
        v9 = MEMORY[0x2530ADF00](v6, v47);
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_56;
        }

        v9 = *(v53 + 8 * v6);
      }

      v3 = v9;
      v10 = __OFADD__(v6++, 1);
      if (v10)
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v50 = v8;
      v11 = [v9 taskResponses];
      if (v11)
      {
        v12 = v11;
        v51 = v6;
        type metadata accessor for HomeUserTaskResponse();
        v4 = sub_252E37264();

        v13 = [v3 entity];
        if (v13)
        {

          if (v4 >> 62)
          {
            v14 = sub_252E378C4();
            if (v14)
            {
LABEL_16:
              v15 = 0;
              v58 = v4 & 0xFFFFFFFFFFFFFF8;
              v59 = v4 & 0xC000000000000001;
              v56 = v3;
              v57 = v4 + 32;
              v55 = v4;
              v52 = v14;
              while (1)
              {
                if (v59)
                {
                  v16 = MEMORY[0x2530ADF00](v15, v4);
                }

                else
                {
                  if (v15 >= *(v58 + 16))
                  {
                    goto LABEL_54;
                  }

                  v16 = *(v57 + 8 * v15);
                }

                v4 = v16;
                v10 = __OFADD__(v15++, 1);
                if (v10)
                {
LABEL_53:
                  __break(1u);
LABEL_54:
                  __break(1u);
                  goto LABEL_55;
                }

                v17 = [v16 userTask];
                v60 = v4;
                if (v17 && (v18 = v17, v19 = [v17 value], v18, v19) && (v20 = objc_msgSend(v19, sel_cleaningJob), v19, v20))
                {
                  v4 = [v20 runState];
                }

                else
                {
                  v4 = 0;
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541690, &qword_252E40958);
                v21 = sub_252E379A4();
                v22 = 0;
                v23 = v21 + 56;
                do
                {
                  v26 = qword_2864A9A38[v22 + 4];
                  v27 = *(v21 + 40);
                  sub_252E37EC4();
                  MEMORY[0x2530AE390](v26);
                  v3 = v61;
                  v28 = sub_252E37F14();
                  v29 = ~(-1 << *(v21 + 32));
                  v30 = v28 & v29;
                  v31 = (v28 & v29) >> 6;
                  v32 = *(v23 + 8 * v31);
                  v33 = 1 << (v28 & v29);
                  v34 = *(v21 + 48);
                  if ((v33 & v32) != 0)
                  {
                    while (*(v34 + 8 * v30) != v26)
                    {
                      v30 = (v30 + 1) & v29;
                      v31 = v30 >> 6;
                      v32 = *(v23 + 8 * (v30 >> 6));
                      v33 = 1 << v30;
                      if (((1 << v30) & v32) == 0)
                      {
                        goto LABEL_28;
                      }
                    }
                  }

                  else
                  {
LABEL_28:
                    *(v23 + 8 * v31) = v33 | v32;
                    *(v34 + 8 * v30) = v26;
                    v24 = *(v21 + 16);
                    v10 = __OFADD__(v24, 1);
                    v25 = v24 + 1;
                    if (v10)
                    {
                      __break(1u);
                      goto LABEL_53;
                    }

                    *(v21 + 16) = v25;
                  }

                  ++v22;
                }

                while (v22 != 10);
                if (*(v21 + 16))
                {
                  v35 = *(v21 + 40);
                  sub_252E37EC4();
                  MEMORY[0x2530AE390](v4);
                  v36 = sub_252E37F14();
                  v37 = -1 << *(v21 + 32);
                  v38 = v36 & ~v37;
                  if ((*(v23 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
                  {
                    break;
                  }
                }

LABEL_17:

                v4 = v55;
                v3 = v56;
                if (v15 == v52)
                {
                  goto LABEL_5;
                }
              }

              v39 = ~v37;
              while (*(*(v21 + 48) + 8 * v38) != v4)
              {
                v38 = (v38 + 1) & v39;
                if (((*(v23 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
                {
                  goto LABEL_17;
                }
              }

              v8 = 1;
              break;
            }
          }

          else
          {
            v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v14)
            {
              goto LABEL_16;
            }
          }
        }

LABEL_5:

        v5 = v48;
        v4 = v49;
        v6 = v51;
      }

      v7 = sub_252DA3E40();

      if (v7)
      {
        v8 = v50;
        break;
      }
    }
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v40 = sub_252E36AD4();
    __swift_project_value_buffer(v40, qword_27F544D60);
    sub_252E379F4();

    v61[0] = 0xD00000000000002FLL;
    v61[1] = 0x8000000252E69700;
    v41 = v0;
    v42 = [v41 description];
    v43 = sub_252E36F34();
    v45 = v44;

    MEMORY[0x2530AD570](v43, v45);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);
    v8 = 0;
  }

  return v8;
}

uint64_t sub_252C31230()
{
  v1 = [v0 entityResponses];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeEntityResponse();
    v3 = sub_252E37264();

    v43 = v3;
    if (v3 >> 62)
    {
      goto LABEL_46;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v5 = 0;
      v6 = v43 & 0xC000000000000001;
      v7 = v43 & 0xFFFFFFFFFFFFFF8;
      v8 = v43 + 32;
      v9 = &off_279711000;
      v10 = &off_279711000;
      v46 = v43 & 0xC000000000000001;
      v47 = i;
      v44 = v43 + 32;
      v45 = v43 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v6)
        {
          v11 = MEMORY[0x2530ADF00](v5, v43);
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            goto LABEL_45;
          }

          v11 = *(v8 + 8 * v5);
        }

        v12 = v11;
        v13 = __OFADD__(v5++, 1);
        if (v13)
        {
          break;
        }

        v14 = [v11 v9[220]];
        if (v14)
        {
          v15 = v14;
          type metadata accessor for HomeUserTaskResponse();
          v16 = sub_252E37264();

          v17 = [v12 v10[221]];
          if (v17)
          {
            v48 = v12;

            v49 = v16;
            if (v16 >> 62)
            {
              v18 = sub_252E378C4();
              if (v18)
              {
LABEL_15:
                v19 = 0;
                v20 = v16 & 0xC000000000000001;
                v21 = v16 & 0xFFFFFFFFFFFFFF8;
                v22 = v16 + 32;
                while (1)
                {
                  if (v20)
                  {
                    v23 = MEMORY[0x2530ADF00](v19, v49);
                  }

                  else
                  {
                    if (v19 >= *(v21 + 16))
                    {
                      goto LABEL_43;
                    }

                    v23 = *(v22 + 8 * v19);
                  }

                  v24 = v23;
                  v13 = __OFADD__(v19++, 1);
                  if (v13)
                  {
                    break;
                  }

                  if (qword_27F53F740 != -1)
                  {
                    swift_once();
                  }

                  v25 = qword_27F575C50;
                  v26 = [v24 taskOutcome];
                  if (!*(v25 + 16))
                  {
                    goto LABEL_16;
                  }

                  v27 = v26;
                  v28 = *(v25 + 40);
                  sub_252E37EC4();
                  MEMORY[0x2530AE390](v27);
                  v29 = sub_252E37F14();
                  v30 = -1 << *(v25 + 32);
                  v31 = v29 & ~v30;
                  if (((*(v25 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
                  {
                    goto LABEL_16;
                  }

                  v32 = ~v30;
                  while (*(*(v25 + 48) + 8 * v31) != v27)
                  {
                    v31 = (v31 + 1) & v32;
                    if (((*(v25 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
                    {
                      goto LABEL_16;
                    }
                  }

                  v33 = [v24 userTask];
                  if (v33)
                  {
                    v34 = v33;
                    v35 = [v33 attribute];

                    if (v35 == 67)
                    {

                      return 1;
                    }
                  }

                  else
                  {
LABEL_16:
                  }

                  if (v19 == v18)
                  {

                    v6 = v46;
                    i = v47;
                    v8 = v44;
                    v7 = v45;
                    v9 = &off_279711000;
                    v10 = &off_279711000;
                    goto LABEL_6;
                  }
                }

                __break(1u);
LABEL_43:
                __break(1u);
                break;
              }
            }

            else
            {
              v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v18)
              {
                goto LABEL_15;
              }
            }
          }

          else
          {
          }
        }

        else
        {
        }

LABEL_6:
        if (v5 == i)
        {
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      ;
    }
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v36 = sub_252E36AD4();
    __swift_project_value_buffer(v36, qword_27F544D60);
    sub_252E379F4();

    v37 = v0;
    v38 = [v37 description];
    v39 = sub_252E36F34();
    v41 = v40;

    MEMORY[0x2530AD570](v39, v41);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);
  }

LABEL_47:

  return 0;
}

uint64_t sub_252C316BC()
{
  v1 = [v0 entityResponses];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeEntityResponse();
    v3 = sub_252E37264();

    if (v3 >> 62)
    {
      goto LABEL_37;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v5 = 0;
      v6 = v3 & 0xC000000000000001;
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
      v30 = v3 & 0xFFFFFFFFFFFFFF8;
      v31 = v3 + 32;
      v28 = i;
      v29 = v3;
      v27 = v3 & 0xC000000000000001;
      while (1)
      {
        if (v6)
        {
          v8 = MEMORY[0x2530ADF00](v5, v3);
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            goto LABEL_36;
          }

          v8 = *(v31 + 8 * v5);
        }

        v9 = v8;
        if (__OFADD__(v5++, 1))
        {
          break;
        }

        v11 = [v8 taskResponses];
        if (v11)
        {
          v12 = v11;
          type metadata accessor for HomeUserTaskResponse();
          v13 = sub_252E37264();

          v14 = [v9 entity];
          if (v14)
          {

            if (v13 >> 62)
            {
              v15 = sub_252E378C4();
              if (v15)
              {
LABEL_14:
                v16 = 0;
                v3 = v13 & 0xC000000000000001;
                while (1)
                {
                  if (v15 == v16)
                  {

                    i = v28;
                    v3 = v29;
                    v6 = v27;
                    goto LABEL_27;
                  }

                  if (v3)
                  {
                    v17 = MEMORY[0x2530ADF00](v16, v13);
                  }

                  else
                  {
                    if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_34;
                    }

                    v17 = *(v13 + 8 * v16 + 32);
                  }

                  v18 = v17;
                  if (__OFADD__(v16, 1))
                  {
                    break;
                  }

                  v19 = [v17 taskOutcome];

                  ++v16;
                  if (v19 == 24)
                  {

                    return 1;
                  }
                }

                __break(1u);
LABEL_34:
                __break(1u);
                break;
              }
            }

            else
            {
              v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v15)
              {
                goto LABEL_14;
              }
            }
          }

LABEL_27:
          v7 = v30;
          if (v5 == i)
          {
            goto LABEL_32;
          }
        }

        else
        {

          if (v5 == i)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      ;
    }
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v20 = sub_252E36AD4();
    __swift_project_value_buffer(v20, qword_27F544D60);
    sub_252E379F4();

    v21 = v0;
    v22 = [v21 description];
    v23 = sub_252E36F34();
    v25 = v24;

    MEMORY[0x2530AD570](v23, v25);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);
  }

LABEL_32:

  return 0;
}

uint64_t sub_252C31A30()
{
  v1 = [v0 entityResponses];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    type metadata accessor for HomeEntityResponse();
    v4 = sub_252E37264();

    v55 = v2;
    if (v4 >> 62)
    {
      goto LABEL_74;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      while (2)
      {
        v6 = 0;
        v52 = v4 & 0xFFFFFFFFFFFFFF8;
        v53 = v4 & 0xC000000000000001;
        v49 = v4;
        v50 = v5;
        v51 = v4 + 32;
        while (1)
        {
          if (v53)
          {
            v7 = MEMORY[0x2530ADF00](v6, v49);
          }

          else
          {
            if (v6 >= *(v52 + 16))
            {
              goto LABEL_71;
            }

            v7 = *(v51 + 8 * v6);
          }

          v4 = v7;
          v8 = __OFADD__(v6++, 1);
          if (v8)
          {
            goto LABEL_70;
          }

          v9 = [v7 taskResponses];
          if (v9)
          {
            break;
          }

LABEL_6:
          if (v6 == v5)
          {
            v2 = v55;
            goto LABEL_76;
          }
        }

        v10 = v9;
        v54 = v4;
        type metadata accessor for HomeUserTaskResponse();
        v11 = sub_252E37264();

        if (v11 >> 62)
        {
          v12 = sub_252E378C4();
          if (v12)
          {
LABEL_14:
            v13 = 0;
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
                  goto LABEL_69;
                }

                v14 = *(v11 + 8 * v13 + 32);
              }

              v15 = v14;
              v16 = v13 + 1;
              if (__OFADD__(v13, 1))
              {
                __break(1u);
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
LABEL_71:
                __break(1u);
                goto LABEL_72;
              }

              v17 = [v14 userTask];
              if (v17)
              {
                v18 = v17;
                v4 = [v17 attribute];

                if (v4 == 20)
                {
                  break;
                }
              }

              v19 = [v15 userTask];
              if (v19)
              {
                v4 = v19;
                v20 = [v19 attribute];

                if (v20 == 22)
                {
                  break;
                }
              }

              v21 = [v15 userTask];
              if (v21)
              {
                v4 = v21;
                v22 = [v21 attribute];

                if (v22 == 21)
                {
                  break;
                }
              }

              v23 = [v15 userTask];
              if (v23)
              {
                v4 = v23;
                v24 = [v23 attribute];

                if (v24 == 15)
                {
                  break;
                }
              }

              v25 = [v15 userTask];
              if (v25)
              {
                v4 = v25;
                v26 = [v25 attribute];

                if (v26 == 14)
                {
                  break;
                }
              }

              v27 = [v15 userTask];
              if (v27)
              {
                v4 = v27;
                v28 = [v27 attribute];

                if (v28 == 18)
                {
                  break;
                }
              }

              v29 = [v15 userTask];
              if (v29)
              {
                v4 = v29;
                v30 = [v29 attribute];

                if (v30 == 47)
                {
                  break;
                }
              }

              v31 = [v15 userTask];
              if (v31)
              {
                v4 = v31;
                v32 = [v31 attribute];

                if (v32 == 67)
                {

                  goto LABEL_40;
                }
              }

              else
              {
              }

              ++v13;
              if (v16 == v12)
              {
                goto LABEL_64;
              }
            }

LABEL_40:
            v33 = [v54 taskResponses];
            if (!v33)
            {
              goto LABEL_60;
            }

            v4 = v33;
            v34 = sub_252E37264();

            v35 = [v54 entity];
            if (!v35)
            {

LABEL_60:

              v5 = v50;
              goto LABEL_6;
            }

            if (!(v34 >> 62))
            {
              v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v36)
              {
                break;
              }

LABEL_44:
              v37 = 0;
              v4 = v34 + 32;
              while (1)
              {
                if ((v34 & 0xC000000000000001) != 0)
                {
                  v38 = MEMORY[0x2530ADF00](v37, v34);
                }

                else
                {
                  if (v37 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_73;
                  }

                  v38 = *(v4 + 8 * v37);
                }

                v39 = v38;
                v8 = __OFADD__(v37++, 1);
                if (v8)
                {
                  break;
                }

                if (qword_27F53F728 != -1)
                {
                  swift_once();
                }

                v40 = qword_27F575C38;
                v41 = [v39 taskOutcome];
                if (*(v40 + 16))
                {
                  v42 = v41;
                  v43 = *(v40 + 40);
                  sub_252E37EC4();
                  MEMORY[0x2530AE390](v42);
                  v44 = sub_252E37F14();
                  v45 = -1 << *(v40 + 32);
                  v46 = v44 & ~v45;
                  if ((*(v40 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
                  {
                    v47 = ~v45;
                    while (*(*(v40 + 48) + 8 * v46) != v42)
                    {
                      v46 = (v46 + 1) & v47;
                      if (((*(v40 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
                      {
                        goto LABEL_45;
                      }
                    }

                    sub_252E37A94();
                    v4 = *(v55 + 16);
                    sub_252E37AC4();
                    sub_252E37AD4();
                    sub_252E37AA4();
                    v5 = v50;
                    goto LABEL_6;
                  }
                }

LABEL_45:

                if (v37 == v36)
                {
                  goto LABEL_64;
                }
              }

LABEL_72:
              __break(1u);
LABEL_73:
              __break(1u);
LABEL_74:
              v5 = sub_252E378C4();
              if (!v5)
              {
                goto LABEL_75;
              }

              continue;
            }

            v36 = sub_252E378C4();
            if (v36)
            {
              goto LABEL_44;
            }
          }
        }

        else
        {
          v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v12)
          {
            goto LABEL_14;
          }
        }

        break;
      }

LABEL_64:

      v5 = v50;
      goto LABEL_6;
    }

LABEL_75:
    v2 = MEMORY[0x277D84F90];
LABEL_76:
  }

  return v2;
}

uint64_t sub_252C32060()
{
  v0 = sub_252C2C640();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (!(v0 >> 62))
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_252E378C4();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v6, v1);
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = [v7 entityIdentifier];
      if (v9)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v10 = v9;
    v11 = sub_252E36F34();
    v22 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_2529F7A80(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_2529F7A80((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v15 = &v5[16 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v22;
  }

  while (v4 != v3);
LABEL_23:

  if (*(v5 + 2))
  {
    type metadata accessor for HomeFilter.Builder();
    swift_allocObject();
    v16.n128_f64[0] = HomeFilter.Builder.init()();
    v18 = (*(*v17 + 568))(v5, v16);

    v20 = (*(*v18 + 760))(v19);
  }

  else
  {

    return 0;
  }

  return v20;
}

uint64_t sub_252C322CC()
{
  v1 = v0;
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v65 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &off_279711000;
  v7 = [v0 entityResponses];
  v8 = 0x27F53F000uLL;
  v9 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/Shared/Utilities/ControlHomeIntent/ControlHomeIntentResponse+Utils.swift";
  v60 = v2;
  if (!v7)
  {
    if (qword_27F53F4E8 != -1)
    {
      goto LABEL_51;
    }

    goto LABEL_36;
  }

  v10 = v7;
  type metadata accessor for HomeEntityResponse();
  v11 = sub_252E37264();

  if (v11 >> 62)
  {
    goto LABEL_37;
  }

LABEL_3:
  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {

    if (!i)
    {
      break;
    }

    v14 = [v1 *(v6 + 1752)];
    if (v14)
    {
      v15 = v14;
      type metadata accessor for HomeEntityResponse();
      v1 = sub_252E37264();

      if (!(v1 >> 62))
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (*(v8 + 1256) != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v2, qword_27F544D60);
      v68 = 0;
      v69 = 0xE000000000000000;
      sub_252E379F4();

      v68 = 0xD00000000000002FLL;
      v69 = 0x8000000252E69700;
      v44 = v1;
      v45 = [v44 description];
      v46 = sub_252E36F34();
      v48 = v47;

      MEMORY[0x2530AD570](v46, v48);
      v2 = v60;

      sub_252CC3D90(v68, v69, 0xD000000000000098, (v9 - 32) | 0x8000000000000000);

      v1 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
LABEL_7:
        v16 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v16)
        {
          goto LABEL_44;
        }

        goto LABEL_8;
      }
    }

    v16 = sub_252E378C4();
    if (!v16)
    {
LABEL_44:
    }

LABEL_8:
    v6 = 0;
    v54 = "ry information found";
    v55 = v1 & 0xC000000000000001;
    v63 = v9 - 32;
    v49 = v1 + 32;
    v50 = v1 & 0xFFFFFFFFFFFFFF8;
    v58 = 0x8000000252E8B860;
    v59 = (v3 + 16);
    v57 = (v3 + 8);
    v52 = v1;
    v53 = 0xD000000000000034;
    v51 = v16;
    while (1)
    {
      if (v55)
      {
        v17 = MEMORY[0x2530ADF00](v6, v1);
      }

      else
      {
        if (v6 >= *(v50 + 16))
        {
          goto LABEL_50;
        }

        v17 = *(v49 + 8 * v6);
      }

      v9 = v17;
      if (__OFADD__(v6++, 1))
      {
        break;
      }

      if (*(v8 + 1256) != -1)
      {
        swift_once();
      }

      v3 = __swift_project_value_buffer(v2, qword_27F544D60);
      v68 = 0;
      v69 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](v53, v54 | 0x8000000000000000);
      v66 = [v9 entity];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540D50, &qword_252E3E868);
      v19 = sub_252E36F94();
      MEMORY[0x2530AD570](v19);

      MEMORY[0x2530AD570](0x7D202020200ALL, 0xE600000000000000);
      v62 = v3;
      sub_252CC3D90(v68, v69, 0xD000000000000098, v63 | 0x8000000000000000);

      v20 = [v9 taskResponses];
      if (v20)
      {
        v21 = v20;
        type metadata accessor for HomeUserTaskResponse();
        v22 = sub_252E37264();

        v56 = v6;
        v64 = v9;
        if (v22 >> 62)
        {
          v23 = sub_252E378C4();
          if (v23)
          {
LABEL_20:
            v3 = 0;
            v61 = v22 & 0xC000000000000001;
            v6 = v22 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if (v61)
              {
                v32 = MEMORY[0x2530ADF00](v3, v22);
              }

              else
              {
                if (v3 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_48;
                }

                v32 = *(v22 + 8 * v3 + 32);
              }

              v33 = v32;
              v9 = (v3 + 1);
              if (__OFADD__(v3, 1))
              {
                break;
              }

              (*v59)(v65, v62, v2);
              v68 = 0;
              v69 = 0xE000000000000000;
              sub_252E379F4();

              v68 = 0xD000000000000015;
              v69 = v58;
              v34 = [v64 entity];
              if (v34 && (v35 = v34, v36 = [v34 homeEntityName], v35, v36))
              {
                v24 = sub_252E36F34();
                v25 = v37;
              }

              else
              {
                v24 = 0;
                v25 = 0;
              }

              v66 = v24;
              v67 = v25;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
              v26 = sub_252E36F94();
              MEMORY[0x2530AD570](v26);

              MEMORY[0x2530AD570](8250, 0xE200000000000000);
              v27 = v33;
              v28 = [v27 description];
              v29 = sub_252E36F34();
              v1 = v30;

              MEMORY[0x2530AD570](v29, v1);

              v31 = v65;
              sub_252CC3D90(v68, v69, 0xD000000000000098, v63 | 0x8000000000000000);

              v2 = v60;
              (*v57)(v31, v60);

              ++v3;
              if (v9 == v23)
              {
                goto LABEL_9;
              }
            }

            __break(1u);
LABEL_48:
            __break(1u);
            break;
          }
        }

        else
        {
          v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v23)
          {
            goto LABEL_20;
          }
        }

LABEL_9:

        v8 = 0x27F53F000uLL;
        v16 = v51;
        v1 = v52;
        v6 = v56;
        if (v56 == v51)
        {
        }
      }

      else
      {

        if (v6 == v16)
        {
        }
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
LABEL_36:
    __swift_project_value_buffer(v2, qword_27F544D60);
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_252E379F4();

    v68 = 0xD00000000000002FLL;
    v69 = 0x8000000252E69700;
    v38 = v1;
    v39 = [v38 description];
    v40 = sub_252E36F34();
    v42 = v41;

    v43 = v40;
    v2 = v60;
    MEMORY[0x2530AD570](v43, v42);

    sub_252CC3D90(v68, v69, 0xD000000000000098, (v9 - 32) | 0x8000000000000000);

    v11 = MEMORY[0x277D84F90];
    v8 = 0x27F53F000;
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }

LABEL_37:
    ;
  }

  return result;
}

id sub_252C32AF0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 taskResponses];
  v4 = MEMORY[0x277D84F90];
  if (result)
  {
    v5 = result;
    type metadata accessor for HomeUserTaskResponse();
    v6 = sub_252E37264();

    v19 = v4;
    if (v6 >> 62)
    {
LABEL_23:
      v7 = sub_252E378C4();
      v17 = a2;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = a2;
      if (v7)
      {
LABEL_4:
        v8 = 0;
        a2 = (v6 & 0xC000000000000001);
        v18 = MEMORY[0x277D84F90];
        while (1)
        {
          v9 = v8;
          while (1)
          {
            if (a2)
            {
              v10 = MEMORY[0x2530ADF00](v9, v6);
            }

            else
            {
              if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v10 = *(v6 + 8 * v9 + 32);
            }

            v11 = v10;
            v8 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            v12 = [v10 userTask];
            if (v12)
            {
              v13 = v12;
              v14 = [v12 value];

              if (v14)
              {
                break;
              }
            }

LABEL_7:
            ++v9;
            if (v8 == v7)
            {
              goto LABEL_25;
            }
          }

          v15 = [v14 cleaningJob];

          if (!v15)
          {
            goto LABEL_7;
          }

          MEMORY[0x2530AD700]();
          if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v16 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v18 = v19;
          if (v8 == v7)
          {
LABEL_25:

            a2 = v17;
            v4 = v18;
            goto LABEL_26;
          }
        }
      }
    }

    v18 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_26:
  *a2 = v4;
  return result;
}

uint64_t sub_252C32D14()
{
  v1 = [v0 entityResponses];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    type metadata accessor for HomeEntityResponse();
    v4 = sub_252E37264();

    v58 = v2;
    v5 = v4;
    if (v4 >> 62)
    {
      goto LABEL_83;
    }

    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v7 = MEMORY[0x277D84F90];
    if (v6)
    {
      v8 = 0;
      v54 = v5 & 0xFFFFFFFFFFFFFF8;
      v55 = v5 & 0xC000000000000001;
      v51 = v5;
      v52 = v6;
      v53 = v5 + 32;
      do
      {
        while (1)
        {
          if (v55)
          {
            v5 = MEMORY[0x2530ADF00](v8, v51);
          }

          else
          {
            if (v8 >= *(v54 + 16))
            {
              goto LABEL_80;
            }

            v5 = *(v53 + 8 * v8);
          }

          v9 = v5;
          v10 = __OFADD__(v8++, 1);
          if (v10)
          {
            goto LABEL_79;
          }

          v11 = [v5 taskResponses];
          if (v11)
          {
            break;
          }

          if (v8 == v6)
          {
            goto LABEL_57;
          }
        }

        v12 = v11;
        type metadata accessor for HomeUserTaskResponse();
        v13 = sub_252E37264();

        v56 = v9;
        if (v13 >> 62)
        {
          v5 = sub_252E378C4();
          v14 = v5;
          if (v5)
          {
LABEL_14:
            v15 = 0;
            while (1)
            {
              if ((v13 & 0xC000000000000001) != 0)
              {
                v5 = MEMORY[0x2530ADF00](v15, v13);
              }

              else
              {
                if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_76;
                }

                v5 = *(v13 + 8 * v15 + 32);
              }

              v16 = v5;
              v17 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                break;
              }

              v18 = [v5 userTask];
              if (v18)
              {
                v19 = v18;
                v20 = [v18 value];

                if (v20)
                {
                  v21 = [v20 type];

                  if (v21 == 2)
                  {

LABEL_30:
                    v26 = [v56 taskResponses];
                    if (v26)
                    {
                      v27 = v26;
                      v28 = sub_252E37264();

                      v29 = [v56 entity];
                      if (v29)
                      {

                        if (v28 >> 62)
                        {
                          v5 = sub_252E378C4();
                          v30 = v5;
                          if (v5)
                          {
                            goto LABEL_34;
                          }
                        }

                        else
                        {
                          v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
                          if (v30)
                          {
LABEL_34:
                            v31 = 0;
                            while (1)
                            {
                              if ((v28 & 0xC000000000000001) != 0)
                              {
                                v5 = MEMORY[0x2530ADF00](v31, v28);
                              }

                              else
                              {
                                if (v31 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                {
                                  goto LABEL_82;
                                }

                                v5 = *(v28 + 32 + 8 * v31);
                              }

                              v32 = v5;
                              v10 = __OFADD__(v31++, 1);
                              if (v10)
                              {
                                break;
                              }

                              if (qword_27F53F728 != -1)
                              {
                                swift_once();
                              }

                              v33 = qword_27F575C38;
                              v34 = [v32 taskOutcome];
                              if (*(v33 + 16))
                              {
                                v35 = v34;
                                v36 = *(v33 + 40);
                                sub_252E37EC4();
                                MEMORY[0x2530AE390](v35);
                                v37 = sub_252E37F14();
                                v38 = -1 << *(v33 + 32);
                                v39 = v37 & ~v38;
                                if ((*(v33 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
                                {
                                  v40 = ~v38;
                                  while (*(*(v33 + 48) + 8 * v39) != v35)
                                  {
                                    v39 = (v39 + 1) & v40;
                                    if (((*(v33 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
                                    {
                                      goto LABEL_35;
                                    }
                                  }

                                  sub_252E37A94();
                                  v41 = *(v58 + 16);
                                  sub_252E37AC4();
                                  sub_252E37AD4();
                                  v5 = sub_252E37AA4();
                                  goto LABEL_56;
                                }
                              }

LABEL_35:

                              if (v31 == v30)
                              {
                                goto LABEL_52;
                              }
                            }

LABEL_81:
                            __break(1u);
LABEL_82:
                            __break(1u);
LABEL_83:
                            v50 = v5;
                            v6 = sub_252E378C4();
                            v5 = v50;
                            goto LABEL_4;
                          }
                        }
                      }
                    }

                    goto LABEL_56;
                  }
                }
              }

              v22 = [v16 userTask];
              if (v22 && (v23 = v22, v24 = [v22 value], v23, v24))
              {
                v25 = [v24 type];

                if (v25 == 4)
                {

                  goto LABEL_30;
                }
              }

              else
              {
              }

              ++v15;
              if (v17 == v14)
              {
                goto LABEL_52;
              }
            }

            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
            goto LABEL_81;
          }
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v14)
          {
            goto LABEL_14;
          }
        }

LABEL_52:

LABEL_56:
        v6 = v52;
      }

      while (v8 != v52);
LABEL_57:
      v42 = v58;
      v7 = MEMORY[0x277D84F90];
    }

    else
    {
      v42 = MEMORY[0x277D84F90];
    }

    v57 = v7;
    if (v42 < 0 || (v42 & 0x4000000000000000) != 0)
    {
      v5 = sub_252E378C4();
      v43 = v5;
    }

    else
    {
      v43 = *(v42 + 16);
    }

    v44 = 0;
    v2 = MEMORY[0x277D84F90];
    while (v43 != v44)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x2530ADF00](v44, v42);
      }

      else
      {
        if (v44 >= *(v42 + 16))
        {
          goto LABEL_78;
        }

        v5 = *(v42 + 8 * v44 + 32);
      }

      v45 = v5;
      v46 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_77;
      }

      v47 = sub_252DA124C(0);

      ++v44;
      if (v47)
      {
        MEMORY[0x2530AD700]();
        if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v48 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        v5 = sub_252E372D4();
        v2 = v57;
        v44 = v46;
      }
    }
  }

  return v2;
}

uint64_t AsyncFlow.__allocating_init()()
{
  v0 = swift_allocObject();
  AsyncFlow.init()();
  return v0;
}

uint64_t AsyncFlow.init()()
{
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x8000000252E8B880;
  *(v0 + 32) = 0x6E6974726F706572;
  *(v0 + 40) = 0xEF6E69616D6F4467;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  sub_252B5ADCC(v12);
  v1 = v12[7];
  *(v0 + 176) = v12[6];
  *(v0 + 192) = v1;
  *(v0 + 208) = v13;
  v2 = v12[3];
  *(v0 + 112) = v12[2];
  *(v0 + 128) = v2;
  v3 = v12[5];
  *(v0 + 144) = v12[4];
  *(v0 + 160) = v3;
  v4 = v12[1];
  *(v0 + 80) = v12[0];
  *(v0 + 96) = v4;
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v5 + 96), v11);

  sub_252927BEC(v11, v0 + 216);
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v7 = *(v6 + 22);

  *(v0 + 256) = v7;
  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v8 + 136), v11);

  sub_252927BEC(v11, v0 + 264);
  v9 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  *(v0 + 328) = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  *(v0 + 336) = &off_2864BA730;
  *(v0 + 304) = v9;
  return v0;
}

uint64_t sub_252C334D8()
{
  v1 = v0;
  v2 = sub_252E34164();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E34134();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E340E4();
  if ((*(v3 + 88))(v6, v2) != *MEMORY[0x277D5C150])
  {
    (*(v3 + 8))(v6, v2);
    goto LABEL_9;
  }

  (*(v3 + 96))(v6, v2);
  (*(v8 + 32))(v11, v6, v7);
  v12 = sub_252E34114();
  v14 = v13;
  v15 = *MEMORY[0x277D5C270];
  if (v12 == sub_252E36F34() && v14 == v16)
  {

LABEL_13:
    v22 = sub_252E34124();
    if (v22)
    {
      v23 = v22;
      if (*(v22 + 16) && (v24 = sub_252A44A10(*(v1 + 16), *(v1 + 24)), (v25 & 1) != 0))
      {
        sub_252974E7C(*(v23 + 56) + 32 * v24, v91);

        if (swift_dynamicCast())
        {
          v26 = v82;
          v27 = sub_252E34124();
          if (v27)
          {
            v28 = v27;
            if (*(v27 + 16) && (v29 = sub_252A44A10(*(v1 + 32), *(v1 + 40)), (v30 & 1) != 0))
            {
              sub_252974E7C(*(v28 + 56) + 32 * v29, &v81);

              if (swift_dynamicCast())
              {
                v31 = v79;
                v32 = v80;
                sub_252B59988(v26, *(&v26 + 1), &v82);
                v76 = v88;
                v77 = v89;
                v72 = v84;
                v73 = v85;
                v74 = v86;
                v75 = v87;
                v70 = v82;
                v71 = v83;
                v91[6] = v88;
                v91[7] = v89;
                v91[2] = v84;
                v91[3] = v85;
                v91[4] = v86;
                v91[5] = v87;
                v78 = v90;
                v92 = v90;
                v91[0] = v82;
                v91[1] = v83;
                if (sub_252AFB7A0(v91) != 1)
                {
                  v49 = *(v1 + 56);
                  *(v1 + 48) = v26;

                  v50 = v31;
                  v51 = *(v1 + 72);
                  *(v1 + 64) = v50;
                  *(v1 + 72) = v32;

                  v52 = *(v1 + 192);
                  v66[6] = *(v1 + 176);
                  v66[7] = v52;
                  v67 = *(v1 + 208);
                  v53 = *(v1 + 128);
                  v66[2] = *(v1 + 112);
                  v66[3] = v53;
                  v54 = *(v1 + 160);
                  v66[4] = *(v1 + 144);
                  v66[5] = v54;
                  v55 = *(v1 + 96);
                  v66[0] = *(v1 + 80);
                  v66[1] = v55;
                  v56 = v87;
                  *(v1 + 144) = v86;
                  *(v1 + 160) = v56;
                  v57 = v89;
                  *(v1 + 176) = v88;
                  *(v1 + 192) = v57;
                  *(v1 + 208) = v90;
                  v58 = v85;
                  *(v1 + 112) = v84;
                  *(v1 + 128) = v58;
                  v59 = v83;
                  *(v1 + 80) = v82;
                  *(v1 + 96) = v59;
                  v68[6] = v76;
                  v68[7] = v77;
                  v69 = v78;
                  v68[2] = v72;
                  v68[3] = v73;
                  v68[4] = v74;
                  v68[5] = v75;
                  v68[0] = v70;
                  v68[1] = v71;
                  sub_252B5ADE8(v68, &v64);
                  sub_25293847C(v66, &qword_27F543160, &qword_252E4E950);
                  if (qword_27F53F510 != -1)
                  {
                    swift_once();
                  }

                  v60 = sub_252E36AD4();
                  __swift_project_value_buffer(v60, qword_27F544DD8);
                  v64 = 0;
                  v65 = 0xE000000000000000;
                  sub_252E379F4();
                  MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E8B990);
                  v61 = *(v1 + 56);
                  v63[1] = *(v1 + 48);
                  v63[2] = v61;

                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
                  v62 = sub_252E36F94();
                  MEMORY[0x2530AD570](v62);

                  MEMORY[0x2530AD570](0x3A6E69616D6F640ALL, 0xEA0000000000090ALL);
                  MEMORY[0x2530AD570](v50, v32);

                  sub_252CC3D90(v64, v65, 0xD00000000000006ALL, 0x8000000252E8B8D0);

                  sub_252B680FC();
                  sub_252B6796C();

                  swift_unknownObjectRelease();
                  sub_25293847C(&v82, &qword_27F543160, &qword_252E4E950);
                  goto LABEL_35;
                }

                if (qword_27F53F510 != -1)
                {
                  swift_once();
                }

                v33 = sub_252E36AD4();
                __swift_project_value_buffer(v33, qword_27F544DD8);
                v34 = sub_252E36AC4();
                v35 = sub_252E374D4();
                if (os_log_type_enabled(v34, v35))
                {
                  v36 = swift_slowAlloc();
                  *v36 = 0;
                  _os_log_impl(&dword_252917000, v34, v35, "Async record not found.", v36, 2u);
                  MEMORY[0x2530AED00](v36, -1, -1);
                }

                v37 = 0x45636972656E6567;
                v38 = 0xEC000000726F7272;
                v39 = 0;
LABEL_34:
                sub_2529515FC(4, v39, v37, v38);
LABEL_35:
                (*(v8 + 8))(v11, v7);
                return 1;
              }
            }

            else
            {
            }
          }

          if (qword_27F53F510 != -1)
          {
            swift_once();
          }

          v45 = sub_252E36AD4();
          __swift_project_value_buffer(v45, qword_27F544DD8);
          v46 = sub_252E36AC4();
          v47 = sub_252E374D4();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            *v48 = 0;
            _os_log_impl(&dword_252917000, v46, v47, "Couldn't find reportingDomain in userData", v48, 2u);
            MEMORY[0x2530AED00](v48, -1, -1);
          }

          v44 = "tContextIdentifier";
          v37 = 0xD00000000000001ALL;
LABEL_33:
          v38 = v44 | 0x8000000000000000;
          v39 = 5;
          goto LABEL_34;
        }
      }

      else
      {
      }
    }

    if (qword_27F53F510 != -1)
    {
      swift_once();
    }

    v40 = sub_252E36AD4();
    __swift_project_value_buffer(v40, qword_27F544DD8);
    v41 = sub_252E36AC4();
    v42 = sub_252E374D4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_252917000, v41, v42, "Couldn't find reportContextIdentifier in userData", v43, 2u);
      MEMORY[0x2530AED00](v43, -1, -1);
    }

    v44 = "Flow/Async/AsyncFlow.swift";
    v37 = 0xD000000000000022;
    goto LABEL_33;
  }

  v18 = sub_252E37DB4();

  if (v18)
  {
    goto LABEL_13;
  }

  (*(v8 + 8))(v11, v7);
LABEL_9:
  if (qword_27F53F510 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544DD8);
  *&v91[0] = 0;
  *(&v91[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v91[0] = 0xD000000000000020;
  *(&v91[0] + 1) = 0x8000000252E8B8A0;
  sub_252E34104();
  sub_252C3626C(&qword_27F5406B0, 255, MEMORY[0x277D5C118]);
  v20 = sub_252E37D94();
  MEMORY[0x2530AD570](v20);

  sub_252CC4050(*&v91[0], *(&v91[0] + 1), 0xD00000000000006ALL, 0x8000000252E8B8D0, 0x7475706E69286E6FLL, 0xEA0000000000293ALL, 87);

  return 0;
}

uint64_t sub_252C33F44(uint64_t a1)
{
  v2[276] = v1;
  v2[275] = a1;
  v3 = sub_252E36AB4();
  v2[277] = v3;
  v4 = *(v3 - 8);
  v2[278] = v4;
  v5 = *(v4 + 64) + 15;
  v2[279] = swift_task_alloc();
  v2[280] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C34014, 0, 0);
}

uint64_t sub_252C34014()
{
  v1 = *(v0 + 2208);
  if (!*(v1 + 72) || !*(v1 + 56))
  {
LABEL_5:
    v15 = *(v0 + 2200);
    v16 = *(v1 + 288);
    v17 = *(v1 + 296);
    __swift_project_boxed_opaque_existential_1((v1 + 264), v16);

    sub_252943C10(sub_252C35890, v1, v16, v17, v0 + 1784);

    sub_252929E74(v1 + 216, v0 + 1880);
    sub_252938414(v0 + 1784, v0 + 1832, &qword_27F542198, &qword_252E53790);
    v18 = swift_allocObject();
    v19 = *(v0 + 1848);
    v18[1] = *(v0 + 1832);
    v18[2] = v19;
    *(v18 + 41) = *(v0 + 1857);
    v20 = sub_252E331C4();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    *(v0 + 2176) = sub_252E331B4();
    sub_252E33AF4();

    sub_25293847C(v0 + 1784, &qword_27F542198, &qword_252E53790);
    v23 = *(v0 + 2240);
    v24 = *(v0 + 2232);

    v25 = *(v0 + 8);

    return v25();
  }

  v2 = v0 + 1104;
  *(v0 + 1240) = *(v1 + 80);
  v3 = *(v1 + 96);
  v4 = *(v1 + 112);
  v5 = *(v1 + 144);
  *(v0 + 1288) = *(v1 + 128);
  *(v0 + 1304) = v5;
  *(v0 + 1256) = v3;
  *(v0 + 1272) = v4;
  v6 = *(v1 + 160);
  v7 = *(v1 + 176);
  v8 = *(v1 + 192);
  *(v0 + 1368) = *(v1 + 208);
  *(v0 + 1336) = v7;
  *(v0 + 1352) = v8;
  *(v0 + 1320) = v6;
  *(v0 + 1104) = *(v1 + 80);
  v9 = *(v1 + 96);
  v10 = *(v1 + 112);
  v11 = *(v1 + 144);
  *(v0 + 1152) = *(v1 + 128);
  *(v0 + 1168) = v11;
  *(v0 + 1120) = v9;
  *(v0 + 1136) = v10;
  v12 = *(v1 + 160);
  v13 = *(v1 + 176);
  v14 = *(v1 + 192);
  *(v0 + 1232) = *(v1 + 208);
  *(v0 + 1200) = v13;
  *(v0 + 1216) = v14;
  *(v0 + 1184) = v12;
  if (sub_252AFB7A0(v0 + 1104) == 1)
  {
    v1 = *(v0 + 2208);
    goto LABEL_5;
  }

  v27 = *(v0 + 1216);
  *(v0 + 112) = *(v0 + 1200);
  *(v0 + 128) = v27;
  *(v0 + 144) = *(v0 + 1232);
  v28 = *(v0 + 1152);
  *(v0 + 48) = *(v0 + 1136);
  *(v0 + 64) = v28;
  v29 = *(v0 + 1184);
  *(v0 + 80) = *(v0 + 1168);
  *(v0 + 96) = v29;
  v30 = *(v0 + 1120);
  *(v0 + 16) = *v2;
  *(v0 + 32) = v30;
  v100 = *(v0 + 1168);
  v31 = *(v0 + 1176);
  v103 = *(v0 + 1192);
  v32 = *(v0 + 1200);
  sub_252938414(v0 + 1240, v0 + 1376, &qword_27F543160, &qword_252E4E950);
  v33 = qword_27F53F608;
  v101 = v31;

  v102 = v32;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = *(v0 + 2240);
  v35 = *(v0 + 2232);
  v36 = *(v0 + 2224);
  v37 = *(v0 + 2216);
  v38 = qword_27F544F90;
  sub_252E375E4();
  sub_252E36AA4();
  sub_252E36A74();
  v39 = *(v36 + 8);
  *(v0 + 2248) = v39;
  *(v0 + 2256) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v99 = v39;
  v39(v34, v37);
  v40 = v38;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F510 != -1)
  {
    swift_once();
  }

  v41 = (v0 + 1648);
  v42 = sub_252E36AD4();
  *(v0 + 2264) = __swift_project_value_buffer(v42, qword_27F544DD8);
  sub_252E379F4();

  *(v0 + 2160) = v103;
  *(v0 + 2168) = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v43 = sub_252E36F94();
  MEMORY[0x2530AD570](v43);

  sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E8BA10, 0xD00000000000006ALL, 0x8000000252E8B8D0);

  v44 = v100;
  if (v100 == 0x676E696B6F766E69 && v101 == 0xEE006E6967756C50)
  {
  }

  else
  {
    v45 = sub_252E37DB4();

    if ((v45 & 1) == 0)
    {
      v62 = *(v0 + 2240);
      v63 = *(v0 + 2216);
      sub_252E375E4();
      sub_252E36AA4();
      sub_252E36A74();
      v99(v62, v63);
      sub_252B8CEE4((v0 + 16));
      v64 = *(v1 + 56);
      if (v64)
      {
        v65 = *(v1 + 48);
        v66 = *(v1 + 56);

        sub_252B59988(v65, v64, v0 + 968);

        v67 = *(v0 + 1080);
        *(v0 + 520) = *(v0 + 1064);
        *(v0 + 536) = v67;
        *(v0 + 552) = *(v0 + 1096);
        v68 = *(v0 + 1016);
        *(v0 + 456) = *(v0 + 1000);
        *(v0 + 472) = v68;
        v69 = *(v0 + 1048);
        *(v0 + 488) = *(v0 + 1032);
        *(v0 + 504) = v69;
        v70 = *(v0 + 984);
        *(v0 + 424) = *(v0 + 968);
        *(v0 + 440) = v70;
        if (sub_252AFB7A0(v0 + 424) != 1)
        {
          v2 = v0 + 288;
          v95 = *(v0 + 536);
          *(v0 + 384) = *(v0 + 520);
          *(v0 + 400) = v95;
          *(v0 + 416) = *(v0 + 552);
          v96 = *(v0 + 472);
          *(v0 + 320) = *(v0 + 456);
          *(v0 + 336) = v96;
          v97 = *(v0 + 504);
          *(v0 + 352) = *(v0 + 488);
          *(v0 + 368) = v97;
          v98 = *(v0 + 440);
          *(v0 + 288) = *(v0 + 424);
          *(v0 + 304) = v98;
          sub_252CC3D90(0xD000000000000028, 0x8000000252E8BA60, 0xD00000000000006ALL, 0x8000000252E8B8D0);
          sub_25293847C(v0 + 1240, &qword_27F543160, &qword_252E4E950);
          sub_252938414(v0 + 968, v0 + 152, &qword_27F543160, &qword_252E4E950);
          sub_252C35B64(v0 + 288, 1);
          sub_25293847C(v0 + 968, &qword_27F543160, &qword_252E4E950);
          v57 = (v0 + 408);
          v58 = (v0 + 416);
          v59 = (v0 + 392);
          v60 = (v0 + 400);
          v102 = *(v0 + 384);
          v103 = *(v0 + 376);
          v61 = (v0 + 368);
          v44 = *(v0 + 352);
          v71 = *(v0 + 360);
          goto LABEL_24;
        }
      }

      goto LABEL_22;
    }
  }

  v46 = *(v1 + 56);
  if (v46)
  {
    v47 = *(v1 + 48);
    v48 = *(v1 + 56);

    sub_252B59988(v47, v46, v0 + 832);

    v49 = *(v0 + 944);
    *(v0 + 792) = *(v0 + 928);
    *(v0 + 808) = v49;
    *(v0 + 824) = *(v0 + 960);
    v50 = *(v0 + 880);
    *(v0 + 728) = *(v0 + 864);
    *(v0 + 744) = v50;
    v51 = *(v0 + 912);
    *(v0 + 760) = *(v0 + 896);
    *(v0 + 776) = v51;
    v52 = *(v0 + 848);
    *(v0 + 696) = *(v0 + 832);
    *(v0 + 712) = v52;
    if (sub_252AFB7A0(v0 + 696) != 1)
    {
      v53 = *(v0 + 808);
      *(v0 + 656) = *(v0 + 792);
      *(v0 + 672) = v53;
      *(v0 + 688) = *(v0 + 824);
      v54 = *(v0 + 744);
      *(v0 + 592) = *(v0 + 728);
      *(v0 + 608) = v54;
      v55 = *(v0 + 776);
      *(v0 + 624) = *(v0 + 760);
      *(v0 + 640) = v55;
      v56 = *(v0 + 712);
      *(v0 + 560) = *(v0 + 696);
      *(v0 + 576) = v56;
      sub_252C35B64(v0 + 560, 0);
      sub_25293847C(v0 + 832, &qword_27F543160, &qword_252E4E950);
    }

LABEL_22:
    v57 = (v0 + 1224);
    v58 = (v0 + 1232);
    v59 = (v0 + 1208);
    v60 = (v0 + 1216);
    v61 = (v0 + 1184);
    v44 = v100;
    goto LABEL_23;
  }

  v57 = (v0 + 1224);
  v58 = (v0 + 1232);
  v59 = (v0 + 1208);
  v60 = (v0 + 1216);
  v61 = (v0 + 1184);
LABEL_23:
  v71 = v101;
LABEL_24:
  v72 = *v58;
  v73 = *v57;
  v74 = *v60;
  v75 = *v59;
  v76 = *v61;
  v77 = *(v2 + 56);
  v78 = *(v2 + 40);
  v79 = *(v2 + 8);
  v80 = *(v2 + 16);
  v81 = *(v2 + 24);
  *(v0 + 1512) = *v2;
  *(v0 + 1520) = v79;
  *(v0 + 1528) = v80;
  *(v0 + 1536) = v81;
  *(v0 + 1552) = v78;
  *(v0 + 1568) = v77;
  *(v0 + 1576) = v44;
  *(v0 + 1584) = v71;
  *(v0 + 1592) = v76;
  *(v0 + 1600) = v103;
  *(v0 + 1608) = v102;
  *(v0 + 1616) = v75;
  *(v0 + 1624) = v74;
  *(v0 + 1632) = v73;
  *(v0 + 1640) = v72;
  v82 = *(v0 + 1512);
  v83 = *(v0 + 1528);
  v84 = *(v0 + 1560);
  *(v0 + 1680) = *(v0 + 1544);
  *(v0 + 1696) = v84;
  *v41 = v82;
  *(v0 + 1664) = v83;
  v85 = *(v0 + 1576);
  v86 = *(v0 + 1592);
  v87 = *(v0 + 1608);
  v88 = *(v0 + 1624);
  *(v0 + 1776) = v72;
  *(v0 + 1744) = v87;
  *(v0 + 1760) = v88;
  v89 = v81;
  *(v0 + 1712) = v85;
  *(v0 + 1728) = v86;

  sub_252C350A0(v0 + 1648, (v0 + 1920));
  sub_252B58FEC(v80, v89);

  v90 = *(v0 + 1944);
  v91 = *(v0 + 1952);
  __swift_project_boxed_opaque_existential_1((v0 + 1920), v90);
  v92 = *(v91 + 32);
  v104 = (v92 + *v92);
  v93 = v92[1];
  v94 = swift_task_alloc();
  *(v0 + 2272) = v94;
  *v94 = v0;
  v94[1] = sub_252C349BC;

  return (v104)(v0 + 1960, v41, v90, v91);
}

uint64_t sub_252C349BC()
{
  v2 = *(*v1 + 2272);
  v5 = *v1;
  *(*v1 + 2280) = v0;

  if (v0)
  {
    v3 = sub_252C34C8C;
  }

  else
  {
    v3 = sub_252C34AD0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252C34AD0()
{
  v1 = *(v0 + 2256);
  v2 = *(v0 + 2248);
  v3 = *(v0 + 2232);
  v4 = *(v0 + 2216);
  v5 = *(v0 + 2200);
  sub_252929E74(v0 + 1920, v0 + 2040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544320, &unk_252E537A0);
  v6 = sub_252E36F94();
  sub_252C35EF4(v3, v6, v7);

  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v8 + 96), v0 + 2080);

  sub_252929E74(v0 + 1960, v0 + 2120);
  v9 = swift_allocObject();
  sub_252927BEC((v0 + 2120), v9 + 16);
  v10 = sub_252E331C4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v0 + 2192) = sub_252E331B4();
  sub_252E33AF4();
  sub_252B5AE20(v0 + 1512);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1960));
  v2(v3, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1920));
  v13 = *(v0 + 2240);
  v14 = *(v0 + 2232);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_252C34C8C()
{
  v26 = v0;
  v1 = v0[285];
  v2 = v0[283];
  v3 = v1;
  v4 = sub_252E36AC4();
  v5 = sub_252E374D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[285];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    v0[273] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    v10 = sub_252E36F94();
    v12 = sub_252BE2CE0(v10, v11, &v25);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_252917000, v4, v5, "Got error while obtaining output: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2530AED00](v8, -1, -1);
    MEMORY[0x2530AED00](v7, -1, -1);
  }

  v13 = v0[285];
  v14 = v0[282];
  v15 = v0[281];
  v16 = v0[279];
  v17 = v0[277];
  v18 = v0[275];
  sub_252929E74((v0 + 240), (v0 + 250));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544320, &unk_252E537A0);
  v19 = sub_252E36F94();
  sub_252C35EF4(v16, v19, v20);

  sub_252E33B24();
  sub_252B5AE20((v0 + 189));

  v15(v16, v17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 240);
  v21 = v0[280];
  v22 = v0[279];

  v23 = v0[1];

  return v23();
}

uint64_t sub_252C34EA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x2822009F8](sub_252C34EC4, 0, 0);
}

uint64_t sub_252C34EC4()
{
  sub_252938414(*(v0 + 96), v0 + 16, &qword_27F542198, &qword_252E53790);
  if (*(v0 + 56) == 1)
  {
    v1 = *(v0 + 16);
    if (qword_27F53F510 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 88);
    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544DD8);
    sub_252E379F4();
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E87BE0);
    *(v0 + 80) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(*(v0 + 64), *(v0 + 72), 0xD00000000000006ALL, 0x8000000252E8B8D0, 0x2865747563657865, 0xE900000000000029, 105);

    sub_252E33964();
    sub_252E33954();
  }

  else
  {
    sub_252927BEC((v0 + 16), *(v0 + 88));
  }

  v4 = *(v0 + 8);

  return v4();
}

void *sub_252C350A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v3 = sub_252E36AD4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AsyncPartialFailureResponseHandler();
  v9 = type metadata accessor for AsyncFailedScenesResponseHandler();
  v35 = type metadata accessor for AsyncInProgressResponseHandler();
  v34 = type metadata accessor for AsyncPollingPartialFailureResponseHandler();
  v33 = type metadata accessor for AsyncHomekitInvocationResponseHandler();
  v32 = type metadata accessor for AsyncUnreachableResponseHandler();
  v31 = type metadata accessor for AsyncFailedStateResponseHandler();
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v3, qword_27F544D18);
  v11 = *(v4 + 16);
  v37 = v10;
  v11(v7);
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_252E379F4();
  MetatypeMetadata = v39;
  v42 = v40;
  MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E8BB80);
  v12 = sub_252B4F670();
  v13 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  v14 = *&v12[v13];

  v15 = sub_252B9AAC4();
  MEMORY[0x2530AD570](v15);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E8BBB0);
  v16 = sub_252B4F670();
  v17 = [v16 entityResponses];

  if (v17)
  {
    type metadata accessor for HomeEntityResponse();
    v18 = sub_252E37264();
  }

  else
  {
    v18 = 0;
  }

  v38 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5436C8, &unk_252E4D890);
  v19 = sub_252E36F94();
  MEMORY[0x2530AD570](v19);

  sub_252CC3D90(MetatypeMetadata, v42, 0xD00000000000006ALL, 0x8000000252E8B8D0);

  (*(v4 + 8))(v7, v3);
  v20 = &off_2864BAF68;
  if (off_2864BAF80(a1, v8, &off_2864BAF68))
  {
    goto LABEL_13;
  }

  v20 = &off_2864BEE10;
  v8 = v9;
  if (off_2864BEE28(a1, v9, &off_2864BEE10))
  {
    goto LABEL_13;
  }

  v20 = &off_2864BC230;
  v8 = v35;
  if (off_2864BC248(a1, v35, &off_2864BC230))
  {
    goto LABEL_13;
  }

  v20 = &off_2864B03A8;
  v8 = v34;
  if (off_2864B03C0() & 1) != 0 || (v20 = &off_2864BD788, v8 = v33, (off_2864BD7A0(a1, v33, &off_2864BD788)) || (v20 = &off_2864BC890, v8 = v32, off_2864BC8A8()) || (v20 = &off_2864C1008, v8 = v31, (off_2864C1020(a1, v31, &off_2864C1008)))
  {
LABEL_13:
    MetatypeMetadata = 0;
    v42 = 0xE000000000000000;
    sub_252E379F4();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v42 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544348, &qword_252E53958);
    v21 = sub_252E36F94();
    v23 = v22;

    MetatypeMetadata = v21;
    v42 = v23;
    MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E73DB0);
    sub_252CC3D90(MetatypeMetadata, v42, 0xD00000000000006ALL, 0x8000000252E8B8D0);

    v24 = v20[2];
    v25 = v36;
    v36[3] = v8;
    v25[4] = v20;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
    return v24(boxed_opaque_existential_0);
  }

  else
  {
    sub_252CC3D90(0xD00000000000004CLL, 0x8000000252E8BBD0, 0xD00000000000006ALL, 0x8000000252E8B8D0);
    v28 = type metadata accessor for AsyncGenericErrorResponseHandler();
    swift_allocObject();
    result = sub_252D46D94();
    v29 = v36;
    v36[3] = v28;
    v29[4] = &off_2864B8F90;
    *v29 = result;
  }

  return result;
}

uint64_t AsyncFlow.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 192);
  v11[6] = *(v0 + 176);
  v11[7] = v5;
  v12 = *(v0 + 208);
  v6 = *(v0 + 128);
  v11[2] = *(v0 + 112);
  v11[3] = v6;
  v7 = *(v0 + 160);
  v11[4] = *(v0 + 144);
  v11[5] = v7;
  v8 = *(v0 + 96);
  v11[0] = *(v0 + 80);
  v11[1] = v8;
  sub_25293847C(v11, &qword_27F543160, &qword_252E4E950);
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  v9 = *(v0 + 256);

  __swift_destroy_boxed_opaque_existential_1((v0 + 264));
  __swift_destroy_boxed_opaque_existential_1((v0 + 304));
  return v0;
}

uint64_t AsyncFlow.__deallocating_deinit()
{
  AsyncFlow.deinit();

  return swift_deallocClassInstance();
}

void (*sub_252C35708(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_252E35F94();
  return sub_252A6999C;
}

uint64_t sub_252C357BC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252C33F44(a1);
}

uint64_t sub_252C35858()
{
  type metadata accessor for AsyncFlow();

  return sub_252E33644();
}

uint64_t sub_252C358D4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return sub_252C34EA4(a1, v1 + 16);
}

uint64_t sub_252C35970()
{
  v0 = sub_252E36AB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F5D0 != -1)
  {
    swift_once();
  }

  v5 = qword_27F544F58;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v6 = sub_252E34114();
  v8 = v7;
  v9 = *MEMORY[0x277D5C270];
  if (v6 == sub_252E36F34() && v8 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_252E37DB4();
  }

  sub_252E375C4();
  sub_252E36A74();
  (*(v1 + 8))(v4, v0);
  return v12 & 1;
}

void sub_252C35B64(uint64_t a1, char a2)
{
  sub_252DB7C84();
  v4 = sub_252DB8C40(a1);

  if (v4)
  {
    *&v25 = v4;
    if (a2)
    {
      sub_252C488D8(&v25);
LABEL_9:
      [v4 setCommandOutcome_];
      v11 = sub_252DB7C84();
      swift_beginAccess();
      v12 = v4;
      MEMORY[0x2530AD700]();
      if (*((v11[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((v11[4] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      swift_endAccess();

      sub_252DB7C84();
      sub_252DB649C(*(a1 + 88), *(a1 + 96), a2 & 1);

      return;
    }

    v6 = [objc_allocWithZone(MEMORY[0x277D57580]) init];
    if (v6)
    {
      v7 = v6;
      sub_252C77D64(1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_252E3C130;
      *(v8 + 32) = v7;
      sub_252A01B88();
      v9 = v7;
      v10 = sub_252E37254();

      [v4 setHomeAutomationRequests_];

      goto LABEL_9;
    }

    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544E38);
    sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD00000000000006ALL, 0x8000000252E8B8D0, 0xD00000000000002CLL, 0x8000000252E8BB50, 211);
  }

  else
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544E38);
    *&v15 = 0;
    *(&v15 + 1) = 0xE000000000000000;
    sub_252E379F4();
    v25 = v15;
    MEMORY[0x2530AD570](0xD000000000000028, 0x8000000252E8BB20);
    v22 = *(a1 + 96);
    v23 = *(a1 + 112);
    v24 = *(a1 + 128);
    v18 = *(a1 + 32);
    v19 = *(a1 + 48);
    v20 = *(a1 + 64);
    v21 = *(a1 + 80);
    v16 = *a1;
    v17 = *(a1 + 16);
    sub_252E37AE4();
    sub_252CC4050(v25, *(&v25 + 1), 0xD00000000000006ALL, 0x8000000252E8B8D0, 0xD00000000000002CLL, 0x8000000252E8BB50, 203);
  }
}

uint64_t sub_252C35EF4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_27F53F608 != -1)
  {
    v7 = a2;
    swift_once();
    a2 = v7;
  }

  v5 = qword_27F544F90;
  v22 = 1;
  v21 = 1;
  v20 = 1;
  v19 = 1;
  *&v23 = 0;
  BYTE8(v23) = 1;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  *&v27 = 0;
  *(&v27 + 1) = a2;
  v28 = a3;
  LOBYTE(v29) = 1;
  *(&v29 + 1) = 0;
  v30 = 0uLL;
  LOWORD(v31) = 513;
  *(&v31 + 1) = 0;
  v32 = 0uLL;
  v33 = 1;
  GEOLocationCoordinate2DMake(&v23);
  v16 = v31;
  v17 = v32;
  v18 = v33;
  v12 = v27;
  v13 = v28;
  v14 = v29;
  v15 = v30;
  v8 = v23;
  v9 = v24;
  v10 = v25;
  v11 = v26;

  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v5, a1, "HandleAsyncDialog", 17, 2, &v8);
  v34[8] = v16;
  v34[9] = v17;
  v35 = v18;
  v34[4] = v12;
  v34[5] = v13;
  v34[6] = v14;
  v34[7] = v15;
  v34[0] = v8;
  v34[1] = v9;
  v34[2] = v10;
  v34[3] = v11;
  return sub_25293847C(v34, &qword_27F5407B0, &unk_252E42860);
}

uint64_t sub_252C3606C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25294B954;

  return sub_252A738CC(a1, v1 + 16);
}

uint64_t sub_252C36108(uint64_t a1, uint64_t a2)
{
  result = sub_252C3626C(&qword_27F544328, a2, type metadata accessor for AsyncFlow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252C36184(uint64_t a1, uint64_t a2)
{
  result = sub_252C3626C(&qword_27F544330, a2, type metadata accessor for AsyncFlow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252C3626C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t dispatch thunk of AsyncFlow.execute()(uint64_t a1)
{
  v4 = *(*v1 + 264);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25293B808;

  return v8(a1);
}

uint64_t sub_252C36438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_252E34014();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C36508, 0, 0);
}

uint64_t sub_252C36508()
{
  v1 = MEMORY[0x277D84F90];
  if (!v0[4])
  {
    v10 = 0;
    v52 = 0;
LABEL_39:
    v0[10] = v10;
    type metadata accessor for HomeAutomationEntityResponses();
    v17 = swift_allocObject();
    v0[11] = v17;
    *(v17 + 16) = 0;
    *(v17 + 24) = v1;
    if (qword_27F53F4D0 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_48;
  }

  v2 = sub_252C2FD9C();
  v3 = v2;
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_23:

    goto LABEL_24;
  }

  if (!sub_252E378C4())
  {
    goto LABEL_23;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2530ADF00](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      result = sub_252E378C4();
      if (result)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  v6 = [v5 taskResponses];

  if (v6)
  {
    type metadata accessor for HomeUserTaskResponse();
    v3 = sub_252E37264();

    if (!(v3 >> 62))
    {
      result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_10:
        if ((v3 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x2530ADF00](0, v3);
        }

        else
        {
          if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v8 = *(v3 + 32);
        }

        v9 = v8;

        v48 = v9;
        if ((sub_252C31230() & 1) != 0 && v9)
        {
          v52 = sub_252DB4F4C([v9 taskOutcome], *(v0[5] + 616));
        }

        else
        {
          v52 = 0;
        }

        goto LABEL_25;
      }

      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_24:
  sub_252C31230();
  v52 = 0;
  v48 = 0;
LABEL_25:
  v11 = sub_252C2FD9C();
  v12 = v11;
  v50 = v1;
  v13 = v11 & 0xFFFFFFFFFFFFFF8;
  if (v11 >> 62)
  {
    v14 = sub_252E378C4();
  }

  else
  {
    v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = 0;
  v16 = v0[3];
  v17 = v12 & 0xC000000000000001;
  v49 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v14 == v15)
    {

      v10 = v48;
      v1 = v49;
      goto LABEL_39;
    }

    if (v17)
    {
      v18 = MEMORY[0x2530ADF00](v15, v12);
    }

    else
    {
      if (v15 >= *(v13 + 16))
      {
        goto LABEL_47;
      }

      v18 = *(v12 + 8 * v15 + 32);
    }

    v19 = v18;
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    v21 = sub_252DA124C(v16);

    ++v15;
    if (v21)
    {
      MEMORY[0x2530AD700]();
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v49 = v50;
      v15 = v20;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  swift_once();
LABEL_40:
  v23 = v0[4];
  v24 = v0[5];
  v25 = v0[3];
  v26 = sub_252E36AD4();
  __swift_project_value_buffer(v26, qword_27F544D18);
  v27 = v25;
  v28 = [v27 description];
  v29 = sub_252E36F34();
  v31 = v30;

  MEMORY[0x2530AD570](v29, v31);

  sub_252CC3D90(0x203A746E65746E49, 0xE800000000000000, 0xD000000000000091, 0x8000000252E8BC80);

  sub_252E379F4();

  v32 = *(v17 + 24);
  v33 = type metadata accessor for HomeAutomationEntityResponse(0);

  v35 = MEMORY[0x2530AD730](v34, v33);
  v37 = v36;

  MEMORY[0x2530AD570](v35, v37);

  sub_252CC3D90(0xD000000000000011, 0x8000000252E8BD20, 0xD000000000000091, 0x8000000252E8BC80);

  v38 = *(v24 + 96);
  __swift_project_boxed_opaque_existential_1((v24 + 72), v38);
  v39 = swift_task_alloc();
  v0[12] = v39;
  *(v39 + 16) = v24;
  *(v39 + 24) = v17;
  v40 = sub_252DC6D48(v27, v23);
  if (v52)
  {
    v41 = v0[9];
    sub_252AD7CC4();
    v42 = swift_task_alloc();
    v0[13] = v42;
    *v42 = v0;
    v42[1] = sub_252C36B00;
    v43 = v0[9];
    v44 = v0[2];
    v45 = &unk_252E539E8;
  }

  else
  {
    v46 = v0[8];
    sub_252AD7CC4();
    v47 = swift_task_alloc();
    v0[15] = v47;
    *v47 = v0;
    v47[1] = sub_252C36D08;
    v43 = v0[8];
    v44 = v0[2];
    v45 = &unk_252E539D8;
  }

  return sub_252BDB88C(v44, v45, v39, v43, 0, 0, v40, v38);
}

uint64_t sub_252C36B00()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v10 = *v1;
  *(*v1 + 112) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252C36E88;
  }

  else
  {
    v8 = *(v2 + 96);

    v7 = sub_252C36C80;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252C36C80()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252C36D08()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v10 = *v1;
  *(*v1 + 128) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252C36F24;
  }

  else
  {
    v8 = *(v2 + 96);

    v7 = sub_252C377D8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252C36E88()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 64);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_252C36F24()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 64);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_252C36FC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252C36FE0, 0, 0);
}

uint64_t sub_252C36FE0()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = xmmword_252E3C3C0;
  *(v3 + 32) = 0xD000000000000017;
  *(v3 + 40) = 0x8000000252E6FE70;
  v4 = MEMORY[0x277D839B0];
  *(v3 + 48) = 0;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0x65736E6F70736572;
  *(v3 + 88) = 0xE900000000000073;
  *(v3 + 120) = type metadata accessor for HomeAutomationEntityResponses();
  *(v3 + 96) = v1;
  v5 = *(MEMORY[0x277D55BE8] + 4);
  v8 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  swift_retain_n();
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_2529A5084;

  return v8(0xD000000000000027, 0x8000000252E8BD40, v3);
}

uint64_t sub_252C37168(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252C37188, 0, 0);
}

uint64_t sub_252C37188()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = xmmword_252E3C3C0;
  *(v3 + 32) = 0xD000000000000017;
  *(v3 + 40) = 0x8000000252E6FE70;
  v4 = MEMORY[0x277D839B0];
  *(v3 + 48) = 0;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0x65736E6F70736572;
  *(v3 + 88) = 0xE900000000000073;
  *(v3 + 120) = type metadata accessor for HomeAutomationEntityResponses();
  *(v3 + 96) = v1;
  v5 = *(MEMORY[0x277D55BE8] + 4);
  v8 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  swift_retain_n();
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_252C37310;

  return v8(0xD000000000000024, 0x8000000252E8BD70, v3);
}

uint64_t sub_252C37310(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 32);
  v7 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v8 = sub_252C377E0;
  }

  else
  {
    *(v4 + 56) = a1;
    v8 = sub_252C377DC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C37464()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[8];

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  memcpy(__dst, v0 + 14, sizeof(__dst));
  sub_25299F5D4(__dst);
  v3 = v0[77];

  return swift_deallocClassInstance();
}

uint64_t sub_252C374FC(void *a1, uint64_t a2)
{
  v3 = [a1 userTask];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 attribute];

    if (v5 == 67 && a2 != 0)
    {
      return sub_252C30CB4() & 1;
    }
  }

  else
  {
    sub_252C515AC();
  }

  return 0;
}

uint64_t sub_252C3757C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252C36438(a1, a2, a3);
}

void *sub_252C37634@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for RvcFailureResponseHandler();
  v4 = swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  *(v4 + 616) = sub_2529FC1F0(&unk_2864A9B90);
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252C376A8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252C37168(v2, v3);
}

uint64_t sub_252C37740()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_252C36FC0(v2, v3);
}

uint64_t sub_252C377E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_252C37808, 0, 0);
}

uint64_t sub_252C37808()
{
  v1 = [*(v0 + 32) matchedEntities];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeEntity();
    v3 = sub_252E37264();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 40);
  v5 = sub_252C6CB2C(v3);
  *(v0 + 48) = v5;

  v6 = swift_allocObject();
  *(v0 + 56) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;

  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_252C37970;
  v8 = *(v0 + 40);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);

  return sub_252C6C378(v9, v10, &unk_252E53A58, v6);
}

uint64_t sub_252C37970()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_252C37B04;
  }

  else
  {
    v4 = sub_252C37AA0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252C37AA0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252C37B04()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_252C37B68(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252C37B88, 0, 0);
}

uint64_t sub_252C37B88()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_252C37C68;
  v5 = v0[2];
  v4 = v0[3];

  return sub_252C15CD4(0, v2, v4, v5);
}

uint64_t sub_252C37C68(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v10 = *v2;

  v8 = *(v10 + 8);
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t sub_252C37DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252C377E4(a1, a2, a3);
}

void *sub_252C37EA8@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for DiscoverLocationResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252C37F0C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_252C37B68(v2, v3);
}

dispatch_semaphore_t sub_252C37FA4()
{
  result = dispatch_semaphore_create(1);
  qword_27F575A50 = result;
  return result;
}

uint64_t sub_252C37FC8()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B0A18 != -1)
  {
    swift_once();
  }

  v6 = qword_2814B0A20;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v7 = sub_252E36AD4();
  __swift_project_value_buffer(v7, qword_2814B0A78);
  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E8BEE0, 0xD00000000000006ELL, 0x8000000252E8BE50);
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CD19B8]) init];
  sub_252E375C4();
  sub_252E36A74();
  (*(v2 + 8))(v5, v1);
  return v0;
}

uint64_t ClientConnection.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_252C3828C()
{
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_2814B0A78);
  sub_252CC3D90(0xD000000000000012, 0x8000000252E8BF00, 0xD00000000000006ELL, 0x8000000252E8BE50);
  if (qword_27F53F418 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  qword_27F544350 = 0;

  return sub_252E37614();
}

uint64_t sub_252C38378()
{
  sub_252D806C0();
  sub_252D7ED58(0xD000000000000010, 0x8000000252E53A50, sub_252C3828C, 0, 15);

  if (qword_27F53F418 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  v0 = qword_27F544350;
  if (qword_27F544350)
  {
  }

  else
  {
    if (qword_2814B0A98 != -1)
    {
      swift_once();
    }

    v1 = sub_252E36AD4();
    __swift_project_value_buffer(v1, qword_2814B0AA0);
    sub_252CC3D90(0xD000000000000019, 0x8000000252E8BE30, 0xD00000000000006ELL, 0x8000000252E8BE50);
    type metadata accessor for ClientConnection();
    swift_allocObject();
    v0 = sub_252C37FC8();
    qword_27F544350 = v0;
  }

  sub_252E37614();
  return v0;
}

uint64_t sub_252C384FC()
{
  result = sub_2529FC004(&unk_2864AE2A8);
  qword_27F575A58 = result;
  return result;
}

uint64_t sub_252C38524(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_252E36324();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C38624, 0, 0);
}

uint64_t sub_252C38624()
{
  v1 = v0[3];
  v68 = sub_252B4F670();
  v2 = sub_252C2E2D8();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v5 = &off_279711000;
    v92 = v0;
    if (i)
    {
      v6 = 0;
      v7 = v3 & 0xC000000000000001;
      v75 = v0[6];
      v86 = (v75 + 32);
      v90 = v3 & 0xFFFFFFFFFFFFFF8;
      v93 = MEMORY[0x277D84F90];
      v78 = i;
      v82 = v3;
      v71 = v3 & 0xC000000000000001;
      while (1)
      {
        if (v7)
        {
          v8 = MEMORY[0x2530ADF00](v6, v3);
        }

        else
        {
          if (v6 >= *(v90 + 16))
          {
            goto LABEL_38;
          }

          v8 = *(v3 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v11 = [v8 v5[221]];
        if (v11 && (v12 = v11, v13 = [v11 homeEntityName], v12, v13))
        {
          v15 = v0[11];
          v14 = v0[12];
          v16 = v0[5];
          sub_252E36F34();

          sub_252E37024();

          v17 = *v86;
          (*v86)(v14, v15, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v93 = sub_2529F7F74(0, v93[2] + 1, 1, v93);
          }

          v0 = v92;
          v19 = v93[2];
          v18 = v93[3];
          i = v78;
          v7 = v71;
          if (v19 >= v18 >> 1)
          {
            v93 = sub_2529F7F74(v18 > 1, v19 + 1, 1, v93);
          }

          v20 = v92[12];
          v21 = v92[5];
          v93[2] = v19 + 1;
          v17(v93 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v19, v20, v21);
          v5 = &off_279711000;
          v3 = v82;
        }

        else
        {
        }

        ++v6;
        if (v10 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v93 = MEMORY[0x277D84F90];
LABEL_20:

    v22 = sub_252C2E2FC();
    v23 = v22;
    if (!(v22 >> 62))
    {
      v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        break;
      }

      goto LABEL_22;
    }

    v24 = sub_252E378C4();
    if (!v24)
    {
      break;
    }

LABEL_22:
    v25 = 0;
    v26 = v23 & 0xC000000000000001;
    v72 = v0[6];
    v83 = (v72 + 32);
    v87 = v23 & 0xFFFFFFFFFFFFFF8;
    v91 = MEMORY[0x277D84F90];
    v76 = v24;
    v79 = v23;
    v69 = v23 & 0xC000000000000001;
    while (1)
    {
      if (v26)
      {
        v27 = MEMORY[0x2530ADF00](v25, v23);
      }

      else
      {
        if (v25 >= *(v87 + 16))
        {
          goto LABEL_40;
        }

        v27 = *(v23 + 8 * v25 + 32);
      }

      v28 = v27;
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v30 = [v27 v5[221]];
      if (v30 && (v3 = v30, v31 = [v30 homeEntityName], v3, v31))
      {
        v33 = v0[9];
        v32 = v0[10];
        v34 = v0[5];
        sub_252E36F34();

        sub_252E37024();

        v35 = *v83;
        (*v83)(v32, v33, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_2529F7F74(0, v91[2] + 1, 1, v91);
        }

        v0 = v92;
        v3 = v91[2];
        v36 = v91[3];
        v24 = v76;
        v23 = v79;
        v26 = v69;
        if (v3 >= v36 >> 1)
        {
          v91 = sub_2529F7F74(v36 > 1, v3 + 1, 1, v91);
        }

        v37 = v92[10];
        v38 = v92[5];
        v91[2] = v3 + 1;
        v35(v91 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v3, v37, v38);
        v5 = &off_279711000;
      }

      else
      {
      }

      ++v25;
      if (v29 == v24)
      {
        goto LABEL_44;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  v91 = MEMORY[0x277D84F90];
LABEL_44:

  v39 = sub_252C2C068();
  v40 = v39;
  if (v39 >> 62)
  {
    goto LABEL_63;
  }

  for (j = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_252E378C4())
  {
    v42 = 0;
    v84 = v40 & 0xFFFFFFFFFFFFFF8;
    v88 = v40 & 0xC000000000000001;
    v70 = v0[6];
    v80 = (v70 + 32);
    v43 = MEMORY[0x277D84F90];
    v73 = j;
    v77 = v40;
    while (1)
    {
      if (v88)
      {
        v44 = MEMORY[0x2530ADF00](v42, v40);
      }

      else
      {
        if (v42 >= *(v84 + 16))
        {
          goto LABEL_62;
        }

        v44 = *(v40 + 8 * v42 + 32);
      }

      v45 = v44;
      v46 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      v47 = [v44 v5[221]];
      if (v47 && (v48 = v47, v49 = [v47 homeEntityName], v48, v49))
      {
        v51 = v0[7];
        v50 = v0[8];
        v52 = v0[5];
        sub_252E36F34();

        sub_252E37024();

        v53 = *v80;
        (*v80)(v50, v51, v52);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_2529F7F74(0, v43[2] + 1, 1, v43);
        }

        v55 = v43[2];
        v54 = v43[3];
        v0 = v92;
        v5 = &off_279711000;
        j = v73;
        if (v55 >= v54 >> 1)
        {
          v43 = sub_2529F7F74(v54 > 1, v55 + 1, 1, v43);
        }

        v56 = v92[8];
        v57 = v92[5];
        v43[2] = v55 + 1;
        v53(v43 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v55, v56, v57);
        v40 = v77;
      }

      else
      {
      }

      ++v42;
      if (v46 == j)
      {
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

  v43 = MEMORY[0x277D84F90];
LABEL_65:
  v58 = v43;
  v59 = v0[11];
  v60 = v0[12];
  v74 = v0[10];
  v81 = v0[9];
  v85 = v0[8];
  v89 = v0[7];
  v61 = v0[4];
  v62 = v0[2];

  v63 = v61[6];
  v64 = v61[7];
  __swift_project_boxed_opaque_existential_1(v61 + 3, v63);
  v65 = swift_allocObject();
  v65[2] = v61;
  v65[3] = v93;
  v65[4] = v91;
  v65[5] = v58;

  sub_252943B8C(sub_252C39788, v65, v63, v64);

  v66 = v92[1];

  return v66();
}

uint64_t sub_252C38DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E3C280;
  *(v8 + 32) = 0xD000000000000011;
  *(v8 + 40) = 0x8000000252E851F0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v8 + 48) = a2;
  *(v8 + 72) = v9;
  *(v8 + 80) = 0xD000000000000016;
  *(v8 + 88) = 0x8000000252E85210;
  *(v8 + 96) = a3;
  *(v8 + 120) = v9;
  *(v8 + 128) = 0xD000000000000015;
  *(v8 + 168) = v9;
  *(v8 + 136) = 0x8000000252E85230;
  *(v8 + 144) = a4;

  sub_252E362B4();
}

void *sub_252C38F34@<X0>(void *a1@<X8>)
{
  type metadata accessor for AsyncPartialFailureResponseHandler();
  swift_allocObject();
  result = sub_252D46D94();
  *a1 = result;
  return result;
}

uint64_t sub_252C38F74(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252C38524(a1, a2);
}

BOOL sub_252C39020()
{
  v2 = sub_252B4F670();
  v3 = [v2 entityResponses];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeEntityResponse();
    v5 = sub_252E37264();

    if (!(v5 >> 62))
    {
      goto LABEL_3;
    }

LABEL_28:
    v6 = sub_252E378C4();
    v59 = v2;
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_29;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v20 = sub_252E36AD4();
  v0 = __swift_project_value_buffer(v20, qword_27F544D60);
  sub_252E379F4();

  v64 = 0xD00000000000002FLL;
  v65 = 0x8000000252E69700;
  v21 = v2;
  v22 = [v21 description];
  v23 = sub_252E36F34();
  v25 = v24;

  MEMORY[0x2530AD570](v23, v25);

  sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

  v5 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_28;
  }

LABEL_3:
  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v59 = v2;
  if (v6)
  {
LABEL_4:
    v7 = 0;
    v60 = v5 & 0xC000000000000001;
    v8 = (v5 & 0xFFFFFFFFFFFFFF8);
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v60)
      {
        v10 = v5;
        v11 = MEMORY[0x2530ADF00](v7, v5);
      }

      else
      {
        if (v7 >= v8[2])
        {
          goto LABEL_63;
        }

        v10 = v5;
        v11 = *(v5 + 8 * v7 + 32);
      }

      v1 = v11;
      v2 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        v32 = sub_252E378C4();
        goto LABEL_40;
      }

      v12 = sub_252DA10F8();

      v1 = *(v12 + 16);
      v13 = *(v9 + 2);
      v0 = v13 + v1;
      if (__OFADD__(v13, v1))
      {
        goto LABEL_64;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v0 <= *(v9 + 3) >> 1)
      {
        if (*(v12 + 16))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 <= v0)
        {
          v15 = v13 + v1;
        }

        else
        {
          v15 = v13;
        }

        v9 = sub_2529F7B8C(isUniquelyReferenced_nonNull_native, v15, 1, v9);
        if (*(v12 + 16))
        {
LABEL_20:
          v16 = *(v9 + 2);
          if ((*(v9 + 3) >> 1) - v16 < v1)
          {
            goto LABEL_66;
          }

          memcpy(&v9[8 * v16 + 32], (v12 + 32), 8 * v1);

          if (v1)
          {
            v17 = *(v9 + 2);
            v18 = __OFADD__(v17, v1);
            v19 = (v17 + v1);
            if (v18)
            {
              goto LABEL_67;
            }

            *(v9 + 2) = v19;
          }

          goto LABEL_6;
        }
      }

      if (v1)
      {
        goto LABEL_65;
      }

LABEL_6:
      ++v7;
      v5 = v10;
      if (v2 == v6)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_29:
  v9 = MEMORY[0x277D84F90];
LABEL_30:

  v26 = sub_252C759A0(v9);

  if (*(v26 + 16))
  {
    v2 = v59;
    v8 = &off_279711000;
    if (qword_27F53F420 != -1)
    {
      swift_once();
    }

    v27 = sub_252938C88(qword_27F575A58, v26);

    LODWORD(v1) = v27 ^ 1;
  }

  else
  {

    LODWORD(v1) = 1;
    v2 = v59;
    v8 = &off_279711000;
  }

  v28 = [v2 v8[219]];
  if (!v28)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v40 = sub_252E36AD4();
    __swift_project_value_buffer(v40, qword_27F544D60);
    sub_252E379F4();

    v64 = 0xD00000000000002FLL;
    v65 = 0x8000000252E69700;
    v41 = v2;
    v42 = [v41 description];
    v43 = sub_252E36F34();
    v45 = v44;

    MEMORY[0x2530AD570](v43, v45);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

    v30 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_37;
    }

LABEL_49:
    v0 = sub_252E378C4();
    goto LABEL_38;
  }

  v29 = v28;
  type metadata accessor for HomeEntityResponse();
  v30 = sub_252E37264();

  if (v30 >> 62)
  {
    goto LABEL_49;
  }

LABEL_37:
  v0 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_38:

  v31 = sub_252C285CC();
  if (v31 >> 62)
  {
    goto LABEL_68;
  }

  v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_40:

  v33 = sub_252C285CC();
  if (v33 >> 62)
  {
    v34 = sub_252E378C4();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = [v2 v8[219]];
  if (v35)
  {
    v36 = v35;
    type metadata accessor for HomeEntityResponse();
    v37 = sub_252E37264();

    if (v37 >> 62)
    {
      v38 = sub_252E378C4();
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v34 == v38;
  }

  else
  {
    v39 = 0;
  }

  v46 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v46 + 16), &v64);

  __swift_project_boxed_opaque_existential_1(&v64, v66);
  v47 = sub_252E338F4();
  __swift_destroy_boxed_opaque_existential_1(&v64);
  v48 = *(sub_252B4F854() + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isSceneRequest);

  v49 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v49 + 288), &v64);

  v50 = v66;
  v51 = v67;
  __swift_project_boxed_opaque_existential_1(&v64, v66);
  if ((*(v51 + 72))(v50, v51))
  {

    __swift_destroy_boxed_opaque_existential_1(&v64);
    v52 = v48 | ~v47;
  }

  else
  {
    v53 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v53 + 288), v61);

    v54 = v62;
    v55 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v56 = (*(v55 + 80))(v54, v55);

    __swift_destroy_boxed_opaque_existential_1(v61);
    __swift_destroy_boxed_opaque_existential_1(&v64);
    v52 = v48 | ~(v56 & v47);
  }

  if ((v52 | v1 | v39))
  {
    return 0;
  }

  if (v0)
  {
    v58 = v32 == 0;
  }

  else
  {
    v58 = 1;
  }

  return !v58;
}

uint64_t sub_252C39794(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v36 = v5;
  v37 = result;
  v34 = v1;
  while (1)
  {
    if (!v4)
    {
      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v9 >= v5)
        {
          goto LABEL_40;
        }

        v4 = *(v1 + 8 * v9);
        ++v7;
        if (v4)
        {
          v7 = v9;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

LABEL_10:
    v41 = v4;
    v10 = *(*(result + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v4)))));
    v11 = v10 >> 62;
    v12 = v10;
    v13 = v10 >> 62 ? sub_252E378C4() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v8 >> 62;
    if (v8 >> 62)
    {
      break;
    }

    v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v15 + v13;
    if (__OFADD__(v15, v13))
    {
      goto LABEL_39;
    }

LABEL_14:

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v39 = v13;
    if (result)
    {
      if (v14)
      {
        goto LABEL_21;
      }

      v17 = v8;
      v18 = v8 & 0xFFFFFFFFFFFFFF8;
      if (v16 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v14)
      {
LABEL_21:
        sub_252E378C4();
        goto LABEL_22;
      }

      v18 = v8 & 0xFFFFFFFFFFFFFF8;
    }

    v19 = *(v18 + 16);
LABEL_22:
    result = sub_252E37A54();
    v17 = result;
    v18 = result & 0xFFFFFFFFFFFFFF8;
LABEL_23:
    v20 = *(v18 + 16);
    v21 = *(v18 + 24);
    v22 = v12;
    v38 = v17;
    if (v11)
    {
      v24 = v18;
      result = sub_252E378C4();
      v18 = v24;
      v22 = v12;
      v23 = result;
    }

    else
    {
      v23 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = (v41 - 1) & v41;
    if (v23)
    {
      if (((v21 >> 1) - v20) < v39)
      {
        goto LABEL_43;
      }

      v25 = v18 + 8 * v20 + 32;
      v41 &= v41 - 1;
      v35 = v18;
      if (v11)
      {
        if (v23 < 1)
        {
          goto LABEL_45;
        }

        sub_252A00B04(&qword_27F544358, &qword_27F541EA8, qword_252E51A90);
        for (i = 0; i != v23; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EA8, qword_252E51A90);
          v27 = sub_2529FBD80(v40, i, v22);
          v29 = *v28;
          (v27)(v40, 0);
          *(v25 + 8 * i) = v29;
        }
      }

      else
      {
        type metadata accessor for HomeUserTask();
        swift_arrayInitWithCopy();
      }

      v8 = v38;
      v5 = v36;
      result = v37;
      v1 = v34;
      v4 = v41;
      if (v39 >= 1)
      {
        v30 = *(v35 + 16);
        v31 = __OFADD__(v30, v39);
        v32 = v30 + v39;
        if (v31)
        {
          goto LABEL_44;
        }

        *(v35 + 16) = v32;
      }
    }

    else
    {

      v8 = v38;
      v5 = v36;
      result = v37;
      if (v39 > 0)
      {
        goto LABEL_42;
      }
    }
  }

  v33 = sub_252E378C4();
  v16 = v33 + v13;
  if (!__OFADD__(v33, v13))
  {
    goto LABEL_14;
  }

LABEL_39:
  __break(1u);
LABEL_40:

  return v8;
}

id sub_252C39B08(uint64_t a1, char a2)
{
  v3 = v2;
  v59 = v3;
  v6 = [v3 userTask];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 attribute];

    if (v8 == 6)
    {
      goto LABEL_34;
    }
  }

  v9 = [v59 userTask];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 attribute];

    if (v11 == 19)
    {
      goto LABEL_34;
    }
  }

  v12 = [v59 userTask];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 attribute];

    if (v14 == 17)
    {
LABEL_34:
      if ((a2 & 1) == 0)
      {
        v15 = [v59 userTask];
        if (v15)
        {
          v16 = v15;
          v17 = [v15 value];
          if (v17)
          {
            v18 = v17;
            [v17 doubleValue];
            v20 = v19;

            if (a1 == 2)
            {
              v33 = [v16 value];
              if (!v33 || (v34 = v33, v35 = [v33 unit], v34, v35 != 2))
              {
                v36 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
                v37 = sub_252E36F04();
                v38 = [v36 initWithIdentifier:0 displayString:v37];

                v39 = v38;
                [v39 setDoubleValue_];
                [v39 setUnit_];
                [v39 setType_];

                v40 = qword_27F53F4E8;
                v29 = v39;
                if (v40 != -1)
                {
                  swift_once();
                }

                v41 = sub_252E36AD4();
                __swift_project_value_buffer(v41, qword_27F544D60);
                sub_252E379F4();
                MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E8C1A0);
                sub_252E37374();
                v31 = 0xD000000000000010;
                v32 = 0x8000000252E8C1C0;
                goto LABEL_22;
              }
            }

            else if (a1 == 3)
            {
              v21 = [v16 value];
              if (!v21 || (v22 = v21, v23 = [v21 unit], v22, v23 != 3))
              {
                v24 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
                v25 = sub_252E36F04();
                v26 = [v24 initWithIdentifier:0 displayString:v25];

                v27 = v26;
                [v27 setDoubleValue_];
                [v27 setUnit_];
                [v27 setType_];

                v28 = qword_27F53F4E8;
                v29 = v27;
                if (v28 != -1)
                {
                  swift_once();
                }

                v30 = sub_252E36AD4();
                __swift_project_value_buffer(v30, qword_27F544D60);
                sub_252E379F4();
                MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E8C1A0);
                sub_252E37374();
                v31 = 0x736C6563206F7420;
                v32 = 0xED0000203A737569;
LABEL_22:
                MEMORY[0x2530AD570](v31, v32);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD0, &unk_252E3E540);
                v42 = sub_252E36F94();
                MEMORY[0x2530AD570](v42);

                sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008ELL, 0x8000000252E6F700);

                v43 = [v16 taskType];
                v44 = [v16 attribute];
                v45 = objc_allocWithZone(type metadata accessor for HomeUserTask());
                v46 = sub_252E36F04();
                v47 = [v45 initWithIdentifier:0 displayString:v46];

                v48 = v47;
                [v48 setTaskType_];
                [v48 setAttribute_];
                [v48 setValue_];

                v49 = [v59 taskOutcome];
                v50 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
                v51 = sub_252E36F04();
                v52 = [v50 initWithIdentifier:0 displayString:v51];

                v53 = v52;
                [v53 setTaskOutcome_];
                [v53 setUserTask_];

                return v53;
              }
            }

            else
            {
              if (qword_27F53F4E8 != -1)
              {
                swift_once();
              }

              v55 = sub_252E36AD4();
              __swift_project_value_buffer(v55, qword_27F544D60);
              v56 = sub_252E36AC4();
              v57 = sub_252E374C4();
              if (os_log_type_enabled(v56, v57))
              {
                v58 = swift_slowAlloc();
                *v58 = 0;
                _os_log_impl(&dword_252917000, v56, v57, "Unsupported unit type", v58, 2u);
                MEMORY[0x2530AED00](v58, -1, -1);
              }
            }
          }
        }
      }
    }
  }

  return v59;
}

id sub_252C3A26C(char a1)
{
  v2 = v1;
  v58 = v2;
  v4 = [v2 userTask];
  if (v4 && (v5 = v4, v6 = [v4 attribute], v5, v6 == 6) || (v7 = objc_msgSend(v58, sel_userTask)) != 0 && (v8 = v7, v9 = objc_msgSend(v7, sel_attribute), v8, v9 == 19))
  {
    if (a1 == 4)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v10 = [v58 userTask];
    if (!v10)
    {
      goto LABEL_33;
    }

    v11 = v10;
    v12 = [v10 attribute];

    if (v12 != 17 || a1 == 4)
    {
      goto LABEL_33;
    }
  }

  v14 = [v58 userTask];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 value];
    if (v16)
    {
      v17 = v16;
      [v16 doubleValue];
      v19 = v18;

      if (a1 == 2)
      {
        v32 = [v15 value];
        if (!v32 || (v33 = v32, v34 = [v32 unit], v33, v34 != 2))
        {
          v35 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
          v36 = sub_252E36F04();
          v37 = [v35 initWithIdentifier:0 displayString:v36];

          v38 = v37;
          [v38 setDoubleValue_];
          [v38 setUnit_];
          [v38 setType_];

          v39 = qword_27F53F4E8;
          v28 = v38;
          if (v39 != -1)
          {
            swift_once();
          }

          v40 = sub_252E36AD4();
          __swift_project_value_buffer(v40, qword_27F544D60);
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E8C1A0);
          sub_252E37374();
          v30 = 0xD000000000000010;
          v31 = 0x8000000252E8C1C0;
          goto LABEL_26;
        }
      }

      else if (a1 == 1)
      {
        v20 = [v15 value];
        if (!v20 || (v21 = v20, v22 = [v20 unit], v21, v22 != 3))
        {
          v23 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
          v24 = sub_252E36F04();
          v25 = [v23 initWithIdentifier:0 displayString:v24];

          v26 = v25;
          [v26 setDoubleValue_];
          [v26 setUnit_];
          [v26 setType_];

          v27 = qword_27F53F4E8;
          v28 = v26;
          if (v27 != -1)
          {
            swift_once();
          }

          v29 = sub_252E36AD4();
          __swift_project_value_buffer(v29, qword_27F544D60);
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E8C1A0);
          sub_252E37374();
          v30 = 0x736C6563206F7420;
          v31 = 0xED0000203A737569;
LABEL_26:
          MEMORY[0x2530AD570](v30, v31);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD0, &unk_252E3E540);
          v41 = sub_252E36F94();
          MEMORY[0x2530AD570](v41);

          sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008ELL, 0x8000000252E6F700);

          v42 = [v15 taskType];
          v43 = [v15 attribute];
          v44 = objc_allocWithZone(type metadata accessor for HomeUserTask());
          v45 = sub_252E36F04();
          v46 = [v44 initWithIdentifier:0 displayString:v45];

          v47 = v46;
          [v47 setTaskType_];
          [v47 setAttribute_];
          [v47 setValue_];

          v48 = [v58 taskOutcome];
          v49 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
          v50 = sub_252E36F04();
          v51 = [v49 initWithIdentifier:0 displayString:v50];

          v52 = v51;
          [v52 setTaskOutcome_];
          [v52 setUserTask_];

          return v52;
        }
      }

      else
      {
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v54 = sub_252E36AD4();
        __swift_project_value_buffer(v54, qword_27F544D60);
        v55 = sub_252E36AC4();
        v56 = sub_252E374C4();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_252917000, v55, v56, "Unsupported unit type", v57, 2u);
          MEMORY[0x2530AED00](v57, -1, -1);
        }
      }
    }
  }

LABEL_33:

  return v58;
}

void sub_252C3A9E4(uint64_t a1, char a2)
{
  v3 = v2;
  if ((a2 & 1) != 0 || (v20 = v2, v5 = [v2 taskResponses], v3 = v2, !v5))
  {

    v13 = v3;
    return;
  }

  v6 = v5;
  type metadata accessor for HomeUserTaskResponse();
  v7 = sub_252E37264();

  v21 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    v8 = sub_252E378C4();
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_18:

    v14 = [v20 entity];
    v15 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
    v16 = sub_252E36F04();
    v17 = [v15 initWithIdentifier:0 displayString:v16];

    v18 = v17;
    [v18 setEntity_];
    v19 = sub_252E37254();

    [v18 setTaskResponses_];

    return;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2530ADF00](i, v7);
      }

      else
      {
        v10 = *(v7 + 8 * i + 32);
      }

      v11 = v10;
      sub_252C39B08(a1, 0);
      MEMORY[0x2530AD700]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
    }

    goto LABEL_18;
  }

  __break(1u);
}

void sub_252C3AC5C(char a1)
{
  v2 = v1;
  if (a1 == 4 || (v19 = v1, v4 = [v1 taskResponses], v2 = v1, !v4))
  {

    v12 = v2;
    return;
  }

  v5 = v4;
  type metadata accessor for HomeUserTaskResponse();
  v6 = sub_252E37264();

  v20 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    v7 = sub_252E378C4();
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_18:

    v13 = [v19 entity];
    v14 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
    v15 = sub_252E36F04();
    v16 = [v14 initWithIdentifier:0 displayString:v15];

    v17 = v16;
    [v17 setEntity_];
    v18 = sub_252E37254();

    [v17 setTaskResponses_];

    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](i, v6);
      }

      else
      {
        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      sub_252C3A26C(a1);
      MEMORY[0x2530AD700]();
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
    }

    goto LABEL_18;
  }

  __break(1u);
}

void sub_252C3AED8(unint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v116 = MEMORY[0x277D84F90];
  sub_252C4B778();
  if (qword_27F53F498 != -1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544C70);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000066, 0x8000000252E6D140);
    v10 = [a1 description];
    v11 = sub_252E36F34();
    v13 = v12;

    MEMORY[0x2530AD570](v11, v13);

    sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008ALL, 0x8000000252E8BF70);

    v14 = [a1 filters];
    if (!v14)
    {
      goto LABEL_5;
    }

    v15 = v14;
    type metadata accessor for HomeFilter();
    v16 = sub_252E37264();

    type metadata accessor for HomeStore();
    v17 = static HomeStore.shared.getter();
    v18 = HomeStore.accessories(matching:supporting:)(v16, 0);
    LOBYTE(v15) = v19;

    if (v15)
    {
      break;
    }

    v105 = v6;
    v24 = sub_2529EE724(v18);
    v6 = v24;
    if (v24 >> 62)
    {
      v25 = sub_252E378C4();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v106 = a2;
    v107 = a1;
    if (!v25)
    {
      v112 = 0;
LABEL_30:

      v40 = sub_2529EE724(v18);
      sub_252929F10(v18, 0);
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
        v6 = 0;
        a1 = v40 & 0xC000000000000001;
        do
        {
          if (a1)
          {
            v42 = MEMORY[0x2530ADF00](v6, v40);
            v43 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              goto LABEL_94;
            }
          }

          else
          {
            if (v6 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_95;
            }

            v42 = *(v40 + 8 * v6 + 32);

            v43 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              goto LABEL_94;
            }
          }

          v44 = [*(v42 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
          a2 = sub_252E36F34();
          v46 = v45;

          if (qword_27F53F8B8 != -1)
          {
            swift_once();
          }

          v47 = off_27F546230;
          if (*(off_27F546230 + 2) && (v48 = sub_252A44A10(a2, v46), (v49 & 1) != 0))
          {
            v50 = *(v47[7] + 8 * v48);

            if (v50 == 3)
            {
              v51 = 0xE400000000000000;
              LODWORD(v41) = 1;
              v52 = 1702195828;
              goto LABEL_50;
            }
          }

          else
          {
          }

          ++v6;
        }

        while (v43 != v41);
        LODWORD(v41) = 0;
        v51 = 0xE500000000000000;
        v52 = 0x65736C6166;
      }

      else
      {
        v51 = 0xE500000000000000;
        v52 = 0x65736C6166;
      }

LABEL_50:

      sub_252E379F4();

      if (v112)
      {
        v53 = 1702195828;
      }

      else
      {
        v53 = 0x65736C6166;
      }

      if (v112)
      {
        v54 = 0xE400000000000000;
      }

      else
      {
        v54 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v53, v54);

      sub_252CC3D90(0xD000000000000022, 0x8000000252E6D260, 0xD00000000000008ALL, 0x8000000252E8BF70);

      sub_252E379F4();

      MEMORY[0x2530AD570](v52, v51);

      sub_252CC3D90(0xD000000000000020, 0x8000000252E6D290, 0xD00000000000008ALL, 0x8000000252E8BF70);

      v55 = sub_252C3DF6C(v107, v112, v41);
      v57 = v56;
      v114 = v55;
      v115 = v56 & 1;
      sub_2529904E4(v55);
      if (v57)
      {
LABEL_81:
        sub_25293847C(&v114, &qword_27F540880, &qword_252E53B20);
      }

      else
      {
        v58 = qword_27F53F3F8;
        v59 = v55;
        if (v58 != -1)
        {
          swift_once();
        }

        v60 = qword_27F575A30;
        v61 = OBJC_IVAR___ControlHomeIntentResponse_code;
        swift_beginAccess();
        if (*(v60 + 16))
        {
          v62 = *&v59[v61];
          v63 = *(v60 + 40);
          sub_252E37EC4();
          MEMORY[0x2530AE390](v62);
          v64 = sub_252E37F14();
          v65 = -1 << *(v60 + 32);
          v66 = v64 & ~v65;
          if ((*(v60 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
          {
            v67 = ~v65;
            while (*(*(v60 + 48) + 8 * v66) != v62)
            {
              v66 = (v66 + 1) & v67;
              if (((*(v60 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
              {
                goto LABEL_64;
              }
            }

            sub_252927D3C(v55);
            goto LABEL_81;
          }
        }

LABEL_64:
        v68 = sub_252C2AC20();
        sub_252927D3C(v55);
        if (v68)
        {
          goto LABEL_81;
        }

        sub_25293847C(&v114, &qword_27F540880, &qword_252E53B20);
        v69 = v59;
        v70 = [v69 entityResponses];
        if (v70)
        {
          v71 = v70;
          type metadata accessor for HomeEntityResponse();
          v72 = sub_252E37264();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541880, &qword_252E40B08);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_252E3C290;
          *(inited + 32) = v55;
          *(inited + 40) = 0;
          v74 = v69;
          sub_25297A930(inited);
          v75 = sub_252C3BC1C(v107, v72, v112, v41, a4, a5);

          sub_25297A930(v76);
          v77 = *(v75 + 16);
          if (v77)
          {
            v113 = v72;
            for (i = 0; i != v77; ++i)
            {
              v80 = v75 + 32 + 16 * i;
              if ((*(v80 + 8) & 1) == 0)
              {
                v81 = *v80;
                v82 = qword_27F53F3F8;
                v83 = *v80;
                if (v82 != -1)
                {
                  swift_once();
                }

                v84 = qword_27F575A30;
                v85 = OBJC_IVAR___ControlHomeIntentResponse_code;
                swift_beginAccess();
                if (*(v84 + 16) && (v86 = *&v83[v85], v87 = *(v84 + 40), sub_252E37EC4(), MEMORY[0x2530AE390](v86), v88 = sub_252E37F14(), v89 = -1 << *(v84 + 32), v90 = v88 & ~v89, ((*(v84 + 56 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90) & 1) != 0))
                {
                  v91 = ~v89;
                  while (*(*(v84 + 48) + 8 * v90) != v86)
                  {
                    v90 = (v90 + 1) & v91;
                    if (((*(v84 + 56 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90) & 1) == 0)
                    {
                      goto LABEL_68;
                    }
                  }

                  sub_252927D3C(v81);
                }

                else
                {
LABEL_68:
                  v79 = sub_252C2AC20();
                  sub_252927D3C(v81);
                  if ((v79 & 1) == 0)
                  {

                    v103 = sub_252C3C724(v107, v113, a4, a5);

                    sub_25297A930(v103);
                    v104 = sub_252B4F134(v116);

                    v102 = combineResults(results:)(v104);

                    v106(v102);
                    goto LABEL_90;
                  }
                }
              }
            }
          }

          v98 = sub_252E36AC4();
          v99 = sub_252E374D4();
          if (os_log_type_enabled(v98, v99))
          {
            v100 = swift_slowAlloc();
            *v100 = 0;
            _os_log_impl(&dword_252917000, v98, v99, "All entities returned error to handle climate Mode. Exiting before continuing with thermostat request", v100, 2u);
            MEMORY[0x2530AED00](v100, -1, -1);
          }

          v101 = sub_252B4F134(v116);

          v102 = combineResults(results:)(v101);

          v106(v102);
LABEL_90:

          sub_252927D3C(v55);
          v97 = v55;
          goto LABEL_85;
        }

        sub_252927D3C(v55);
      }

      v92 = sub_252E36AC4();
      v93 = sub_252E374D4();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&dword_252917000, v92, v93, "There was an error getting the currentClimateValues", v94, 2u);
        MEMORY[0x2530AED00](v94, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402A8, &unk_252E3E850);
      v95 = swift_initStackObject();
      *(v95 + 16) = xmmword_252E3C290;
      *(v95 + 32) = v55;
      *(v95 + 40) = v57 & 1;
      sub_2529904E4(v55);
      v96 = combineResults(results:)(v95);
      swift_setDeallocating();
      sub_25293847C(v95 + 32, &qword_27F5402B0, &qword_252E3C0E0);
      v106(v96);

      v97 = v55;
LABEL_85:
      sub_252927D3C(v97);
      return;
    }

    a1 = 0;
    v111 = (v6 & 0xC000000000000001);
    v26 = v6 & 0xFFFFFFFFFFFFFF8;
    while (v111)
    {
      v28 = MEMORY[0x2530ADF00](a1, v6);
      v29 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_92;
      }

LABEL_19:
      v30 = v6;
      v31 = v25;
      v32 = v18;
      v33 = [*(v28 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      a2 = sub_252E36F34();
      v35 = v34;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v36 = off_27F546230;
      if (*(off_27F546230 + 2) && (v37 = sub_252A44A10(a2, v35), (v38 & 1) != 0))
      {
        v39 = *(v36[7] + 8 * v37);

        if (v39 == 29)
        {
          v112 = 1;
          v18 = v32;
          goto LABEL_30;
        }
      }

      else
      {
      }

      ++a1;
      v25 = v31;
      v27 = v29 == v31;
      v18 = v32;
      v6 = v30;
      if (v27)
      {
        v112 = 0;
        goto LABEL_30;
      }
    }

    if (a1 >= *(v26 + 16))
    {
      goto LABEL_93;
    }

    v28 = *(v6 + 8 * a1 + 32);

    v29 = a1 + 1;
    if (!__OFADD__(a1, 1))
    {
      goto LABEL_19;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    swift_once();
  }

  sub_252929F10(v18, 1);
LABEL_5:
  v20 = sub_252E36AC4();
  v21 = sub_252E374D4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_252917000, v20, v21, "Failed to retrieve list of targeted accessories from intent filters.", v22, 2u);
    MEMORY[0x2530AED00](v22, -1, -1);
  }

  v23 = sub_252B4F134(MEMORY[0x277D84F90]);
  v110 = combineResults(results:)(v23);

  a2(v110);
}

unint64_t sub_252C3BC1C(void *a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v98 = MEMORY[0x277D84F90];
  v12 = [a1 filters];
  if (!v12)
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v37 = sub_252E36AD4();
    __swift_project_value_buffer(v37, qword_27F544C70);
    sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E8C050, 0xD00000000000008ALL, 0x8000000252E8BF70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541880, &qword_252E40B08);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_252E3C290;
    v39 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v40 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v39[v40] = 5;
    [v39 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v41 = sub_252E37254();
    [v39 setEntityResponses_];

    result = v38;
    *(v38 + 32) = v39;
    *(v38 + 40) = 0;
    return result;
  }

  v13 = v12;
  v95 = a4;
  type metadata accessor for HomeFilter();
  v14 = sub_252E37264();

  v15 = MEMORY[0x277D84F90];
  v94 = sub_252CC507C(MEMORY[0x277D84F90]);
  v16 = sub_252CC507C(v15);
  v96 = v14;
  v92 = a2;
  v93 = a5;
  v91 = a1;
  if ((a3 & 1) == 0)
  {
LABEL_31:
    if (v95)
    {

      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v72 = sub_252E36AD4();
      __swift_project_value_buffer(v72, qword_27F544C70);
      sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E8C070, 0xD00000000000008ALL, 0x8000000252E8BF70);
      v73 = objc_allocWithZone(type metadata accessor for HomeUserTask());
      v74 = sub_252E36F04();
      v75 = [v73 initWithIdentifier:0 displayString:v74];

      v76 = v75;
      [v76 setTaskType_];
      [v76 setAttribute_];
      [v76 setValue_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C130;
      *(inited + 32) = v76;
      v78 = v76;
      v79 = sub_252B4CA9C(v96, inited, 0, 1);
      v81 = v80;

      swift_setDeallocating();
      v82 = *(inited + 16);
      swift_arrayDestroy();
      sub_2529904E4(v79);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_2529F7BEC(0, v15[2] + 1, 1, v15);
      }

      v84 = v15[2];
      v83 = v15[3];
      if (v84 >= v83 >> 1)
      {
        v15 = sub_2529F7BEC((v83 > 1), v84 + 1, 1, v15);
      }

      v15[2] = v84 + 1;
      v85 = &v15[2 * v84];
      v85[4] = v79;
      *(v85 + 40) = v81 & 1;
      v98 = v15;
      v86 = sub_252C3D0E4(14, v91, v92, v79, v81 & 1, v93, a6);

      sub_252927D3C(v79);
    }

    else
    {

      v86 = v94;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97[0] = v86;
    sub_252C3F0C0(v16, sub_252C3DF2C, 0, isUniquelyReferenced_nonNull_native, v97);

    v88 = sub_252C3F504(v97[0]);

    sub_25297A930(v88);
    return v98;
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v17 = sub_252E36AD4();
  __swift_project_value_buffer(v17, qword_27F544C70);
  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E8C090, 0xD00000000000008ALL, 0x8000000252E8BF70);
  v97[0] = v15;
  if (v14 >> 62)
  {
    v18 = sub_252E378C4();
    v90 = a6;
    if (v18)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

  v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v90 = a6;
  if (!v18)
  {
LABEL_25:
    v22 = MEMORY[0x277D84F90];
LABEL_26:
    v42 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v43 = sub_252E36F04();
    v44 = [v42 initWithIdentifier:0 displayString:v43];

    v45 = v44;
    [v45 setBoolValue_];
    [v45 setType_];

    v46 = type metadata accessor for HomeUserTask();
    v47 = objc_allocWithZone(v46);
    v48 = sub_252E36F04();
    v49 = [v47 initWithIdentifier:0 displayString:v48];

    v50 = v49;
    [v50 setTaskType_];
    [v50 setAttribute_];
    [v50 setValue_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v51 = swift_initStackObject();
    *(v51 + 16) = xmmword_252E3C130;
    *(v51 + 32) = v50;
    v89 = v50;
    v52 = sub_252B4CA9C(v22, v51, 0, 1);
    v54 = v53;

    swift_setDeallocating();
    v55 = *(v51 + 16);
    swift_arrayDestroy();
    v15 = sub_2529F7BEC(0, 1, 1, MEMORY[0x277D84F90]);
    v57 = v15[2];
    v56 = v15[3];
    if (v57 >= v56 >> 1)
    {
      v15 = sub_2529F7BEC((v56 > 1), v57 + 1, 1, v15);
    }

    v15[2] = v57 + 1;
    v58 = &v15[2 * v57];
    v58[4] = v52;
    *(v58 + 40) = v54 & 1;
    v59 = objc_allocWithZone(v46);
    v60 = sub_252E36F04();
    v61 = [v59 initWithIdentifier:0 displayString:v60];

    v62 = v61;
    [v62 setTaskType_];
    [v62 setAttribute_];
    [v62 setValue_];

    v63 = swift_initStackObject();
    *(v63 + 16) = xmmword_252E3C130;
    *(v63 + 32) = v62;
    v64 = v62;
    v65 = sub_252B4CA9C(v96, v63, 0, 1);
    LOBYTE(v62) = v66;
    swift_setDeallocating();
    v67 = *(v63 + 16);
    swift_arrayDestroy();
    v68 = v62 & 1;
    sub_2529904E4(v65);
    v70 = v15[2];
    v69 = v15[3];
    if (v70 >= v69 >> 1)
    {
      v15 = sub_2529F7BEC((v69 > 1), v70 + 1, 1, v15);
    }

    a6 = v90;
    v15[2] = v70 + 1;
    v71 = &v15[2 * v70];
    v71[4] = v65;
    *(v71 + 40) = v68;
    v98 = v15;
    v16 = sub_252C3D0E4(15, v91, v92, v65, v68, v93, v90);

    sub_252927D3C(v65);
    goto LABEL_31;
  }

LABEL_7:
  result = sub_252956D08();
  if (v18 >= 1)
  {
    v20 = 0;
    v21 = v14 & 0xC000000000000001;
    v22 = MEMORY[0x277D84F90];
    while (1)
    {
      v23 = v21 ? MEMORY[0x2530ADF00](v20, v14) : *(v14 + 8 * v20 + 32);
      v24 = v23;
      v25 = [v23 isExcludeFilter];
      v26 = sub_252E37674();
      v27 = v26;
      if (!v25)
      {
        break;
      }

      v28 = sub_252E37694();

      if ((v28 & 1) == 0)
      {
        goto LABEL_18;
      }

      v14 = v96;
LABEL_10:
      if (v18 == ++v20)
      {
        goto LABEL_26;
      }
    }

LABEL_18:
    type metadata accessor for HomeFilter.Builder();
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0;
    *(v29 + 40) = 7;
    *(v29 + 48) = 0u;
    *(v29 + 64) = 0u;
    *(v29 + 80) = 0u;
    *(v29 + 96) = 0u;
    *(v29 + 112) = 0u;
    *(v29 + 128) = 0u;
    *(v29 + 144) = 0u;
    *(v29 + 160) = 0u;
    *(v29 + 175) = 0;
    v30 = v24;
    v31 = sub_252B72040(v24);

    v32 = (*(*v31 + 624))(29);

    v34 = (*(*v32 + 760))(v33);

    v35 = v34;
    MEMORY[0x2530AD700]();
    v14 = v96;
    if (*((v97[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v36 = *((v97[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();

    v22 = v97[0];
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_252C3C724(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v100 = sub_252CC507C(MEMORY[0x277D84F90]);
  if (a2 >> 62)
  {
LABEL_129:
    v95 = a2 & 0xFFFFFFFFFFFFFF8;
    v5 = sub_252E378C4();
  }

  else
  {
    v95 = a2 & 0xFFFFFFFFFFFFFF8;
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v96 = a2 & 0xC000000000000001;
  if (v5)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (2)
    {
      v8 = v6;
      while (1)
      {
        if (v96)
        {
          v9 = MEMORY[0x2530ADF00](v8, a2);
        }

        else
        {
          if (v8 >= *(v95 + 16))
          {
            goto LABEL_125;
          }

          v9 = *(a2 + 8 * v8 + 32);
        }

        v10 = v9;
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
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
          goto LABEL_129;
        }

        v11 = [v9 entity];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 entityIdentifier];

          if (v13)
          {
            break;
          }
        }

        ++v8;
        if (v6 == v5)
        {
          goto LABEL_22;
        }
      }

      v14 = sub_252E36F34();
      v16 = v15;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_2529F7A80(0, *(v7 + 2) + 1, 1, v7);
      }

      v19 = *(v7 + 2);
      v18 = *(v7 + 3);
      if (v19 >= v18 >> 1)
      {
        v7 = sub_2529F7A80((v18 > 1), v19 + 1, 1, v7);
      }

      *(v7 + 2) = v19 + 1;
      v20 = &v7[16 * v19];
      *(v20 + 4) = v14;
      *(v20 + 5) = v16;
      if (v6 != v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

LABEL_22:
  v91 = *(v7 + 2);
  if (v91)
  {
    v21 = 0;
    v90 = v7 + 32;
    type metadata accessor for HomeStore();
    v93 = a2;
    v94 = v5;
    v89 = v7;
    do
    {
      if (v21 >= *(v7 + 2))
      {
        goto LABEL_128;
      }

      v22 = &v90[16 * v21];
      v24 = *v22;
      v23 = v22[1];

      v25 = static HomeStore.shared.getter();
      v26 = sub_2529D9D50();
      v27 = sub_2529D70E4(v26);

      v92 = v21;
      if (v27 >> 62)
      {
        v28 = sub_252E378C4();
        if (v28)
        {
LABEL_30:
          v29 = 0;
          a2 = v27 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if ((v27 & 0xC000000000000001) != 0)
            {
              v30 = MEMORY[0x2530ADF00](v29, v27);
              v31 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
                goto LABEL_118;
              }
            }

            else
            {
              if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_119;
              }

              v30 = *(v27 + 8 * v29 + 32);

              v31 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
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
                goto LABEL_124;
              }
            }

            v32 = (v30 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
            v33 = *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
            if (v33)
            {
              v34 = *v32 == v24 && v33 == v23;
              if (v34 || (sub_252E37DB4() & 1) != 0)
              {
                break;
              }
            }

            ++v29;
            if (v31 == v28)
            {
              goto LABEL_113;
            }
          }

          if (v94)
          {
            v35 = 0;
            v36 = v93;
            while (1)
            {
              if (v96)
              {
                v37 = MEMORY[0x2530ADF00](v35, v36);
              }

              else
              {
                if (v35 >= *(v95 + 16))
                {
                  goto LABEL_121;
                }

                v37 = *(v36 + 8 * v35 + 32);
              }

              v38 = v37;
              a2 = v35 + 1;
              if (__OFADD__(v35, 1))
              {
                goto LABEL_120;
              }

              v39 = [v37 entity];
              if (v39)
              {
                v40 = v39;
                v41 = [v39 entityIdentifier];

                if (v41)
                {
                  v42 = sub_252E36F34();
                  v44 = v43;

                  if (v42 == v24 && v44 == v23)
                  {

                    v36 = v93;
LABEL_80:
                    v88 = sub_252DA5378(6, 0, 1);

LABEL_63:
                    v47 = 0;
                    while (1)
                    {
                      if (v96)
                      {
                        v48 = MEMORY[0x2530ADF00](v47, v36);
                      }

                      else
                      {
                        if (v47 >= *(v95 + 16))
                        {
                          goto LABEL_123;
                        }

                        v48 = *(v36 + 8 * v47 + 32);
                      }

                      v49 = v48;
                      a2 = v47 + 1;
                      if (__OFADD__(v47, 1))
                      {
                        goto LABEL_122;
                      }

                      v50 = [v48 entity];
                      if (v50)
                      {
                        v51 = v50;
                        v52 = [v50 entityIdentifier];

                        if (v52)
                        {
                          v53 = sub_252E36F34();
                          v55 = v54;

                          if (v53 == v24 && v55 == v23)
                          {

                            v36 = v93;
LABEL_82:
                            v87 = sub_252DA5378(0x13, 0, 1);

LABEL_83:
                            v58 = 0;
                            while (1)
                            {
                              if (v96)
                              {
                                v59 = MEMORY[0x2530ADF00](v58, v36);
                              }

                              else
                              {
                                if (v58 >= *(v95 + 16))
                                {
                                  goto LABEL_127;
                                }

                                v59 = *(v36 + 8 * v58 + 32);
                              }

                              v60 = v59;
                              a2 = v58 + 1;
                              if (__OFADD__(v58, 1))
                              {
                                goto LABEL_126;
                              }

                              v61 = [v59 entity];
                              if (v61)
                              {
                                v62 = v61;
                                v63 = [v61 entityIdentifier];

                                if (v63)
                                {
                                  v64 = sub_252E36F34();
                                  v66 = v65;

                                  if (v64 == v24 && v66 == v23)
                                  {

LABEL_111:

                                    v69 = sub_252DA5378(0x11, 0, 1);

                                    goto LABEL_99;
                                  }

                                  v68 = sub_252E37DB4();

                                  v36 = v93;
                                  if (v68)
                                  {
                                    goto LABEL_111;
                                  }
                                }
                              }

                              ++v58;
                              if (a2 == v94)
                              {
                                goto LABEL_98;
                              }
                            }
                          }

                          v57 = sub_252E37DB4();

                          v36 = v93;
                          if (v57)
                          {
                            goto LABEL_82;
                          }
                        }
                      }

                      ++v47;
                      if (a2 == v94)
                      {
                        v87 = 0;
                        goto LABEL_83;
                      }
                    }
                  }

                  v46 = sub_252E37DB4();

                  v36 = v93;
                  if (v46)
                  {
                    goto LABEL_80;
                  }
                }
              }

              ++v35;
              if (a2 == v94)
              {
                v88 = 0;
                goto LABEL_63;
              }
            }
          }

          v87 = 0;
          v88 = 0;
LABEL_98:

          v69 = 0;
LABEL_99:
          sub_252B680FC();
          sub_252B66C78(v24, v23, 0, &v98);

          if (v99)
          {
            if (swift_dynamicCast())
            {
              v70 = v97;
            }

            else
            {
              v70 = 7;
            }
          }

          else
          {
            sub_25293847C(&v98, &qword_27F541E80, &qword_252E3DFA0);
            v70 = 7;
          }

          a2 = v87;
          v71 = (*(a4 + 24))(a1, v88, v87, v69, v70, v30, a3);
          if (v71)
          {
            v72 = v71;
            v74 = *v32;
            v73 = v32[1];

            if (v73)
            {
              sub_252C3EE30(&v100, v72, v74, v73);
            }
          }

          else
          {
          }

          v7 = v89;
          v75 = v92;
          goto LABEL_26;
        }
      }

      else
      {
        v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v28)
        {
          goto LABEL_30;
        }
      }

LABEL_113:

      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v76 = sub_252E36AD4();
      __swift_project_value_buffer(v76, qword_27F544C70);

      v77 = sub_252E36AC4();
      v78 = sub_252E374C4();

      v7 = v89;
      v75 = v92;
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *&v98 = v80;
        *v79 = 136315138;
        v81 = sub_252BE2CE0(v24, v23, &v98);

        *(v79 + 4) = v81;
        _os_log_impl(&dword_252917000, v77, v78, "No service found matching id: %s.", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v80);
        MEMORY[0x2530AED00](v80, -1, -1);
        MEMORY[0x2530AED00](v79, -1, -1);
      }

      else
      {
      }

LABEL_26:
      v21 = v75 + 1;
    }

    while (v21 != v91);
  }

  v82 = sub_252C3F504(v100);

  return v82;
}

unint64_t sub_252C3D0E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7)
{
  v107 = a7;
  v106 = a6;
  v108 = a3;
  v105 = a2;
  v104 = a1;
  v114 = sub_252E36AD4();
  v9 = *(v114 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v114);
  v113 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252CC507C(MEMORY[0x277D84F90]);
  v123 = v12;
  if (a5)
  {

    goto LABEL_85;
  }

  v13 = v12;
  v14 = [a4 entityResponses];
  if (!v14)
  {

    sub_252927D3C(a4);
LABEL_85:
    if (qword_27F53F498 != -1)
    {
      goto LABEL_95;
    }

    goto LABEL_86;
  }

  v15 = v14;
  type metadata accessor for HomeEntityResponse();
  v16 = sub_252E37264();

  v102 = v16;
  if (v16 >> 62)
  {
    v17 = sub_252E378C4();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v101 = v17;
  if (!v17)
  {
    sub_252927D3C(a4);

    return v13;
  }

  v92 = a4;
  v18 = 0;
  v19 = v102;
  v20 = v102 & 0xC000000000000001;
  v110 = v102 & 0xFFFFFFFFFFFFFF8;
  v109 = v102 + 32;
  v100 = (v9 + 16);
  v99 = "No targetMode responses found";
  v98 = "Adding target mode: ";
  v97 = "eResponseHandler";
  v96 = (v9 + 8);
  v21 = v108 & 0xFFFFFFFFFFFFFF8;
  v115 = v108 & 0xFFFFFFFFFFFFFF8;
  if (v108 < 0)
  {
    v21 = v108;
  }

  v91 = v21;
  v118 = v108 & 0xC000000000000001;
  v117 = v108 + 32;
  v94 = v107 + 16;
  v111 = xmmword_252E3C290;
  v93 = xmmword_252E3C130;
  v22 = v101;
  v95 = v102 & 0xC000000000000001;
  while (1)
  {
    if (v20)
    {
      v23 = MEMORY[0x2530ADF00](v18, v19);
    }

    else
    {
      if (v18 >= *(v110 + 16))
      {
        goto LABEL_94;
      }

      v23 = *(v109 + 8 * v18);
    }

    v24 = v23;
    v25 = __OFADD__(v18++, 1);
    if (v25)
    {
      break;
    }

    v26 = sub_252C6E3A4(v23);
    if (v26 != 7)
    {
      v27 = v26;
      v28 = [v24 entity];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 entityIdentifier];

        if (v30)
        {
          v31 = sub_252E36F34();
          v112 = v32;

          v33 = sub_252DA10F8();
          v34 = *(v33 + 16);
          if (v34)
          {
            v35 = *(v33 + 32);
          }

          else
          {
            v35 = 0;
          }

          v36 = v115;

          if (qword_27F53F498 != -1)
          {
            swift_once();
          }

          v37 = v114;
          v38 = __swift_project_value_buffer(v114, qword_27F544C70);
          (*v100)(v113, v38, v37);
          *&v119 = 0;
          *(&v119 + 1) = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000014, v99 | 0x8000000000000000);
          LOBYTE(v121) = v27;
          sub_252E37AE4();
          MEMORY[0x2530AD570](0xD000000000000012, v98 | 0x8000000000000000);
          v116 = v31;
          v103 = v35;
          if (v34)
          {
            v39 = HomeDeviceType.description.getter(v35);
          }

          else
          {
            v39 = 0;
            v40 = 0;
          }

          v121 = v39;
          v122 = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
          v41 = sub_252E36F94();
          MEMORY[0x2530AD570](v41);

          v42 = v113;
          sub_252CC3D90(v119, *(&v119 + 1), 0xD00000000000008ALL, v97 | 0x8000000000000000);

          (*v96)(v42, v114);
          sub_252B680FC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C8, &unk_252E5D320);
          inited = swift_initStackObject();
          *(inited + 16) = v111;
          v44 = [v24 entity];
          if (v44)
          {
            v45 = v44;
            v46 = [v44 entityIdentifier];

            if (v46)
            {
              v47 = sub_252E36F34();
              v49 = v48;
            }

            else
            {
              v47 = 0;
              v49 = 0;
            }

            *(inited + 32) = v47;
            *(inited + 40) = v49;
            v36 = v115;
          }

          else
          {
            *(inited + 32) = 0;
            *(inited + 40) = 0;
          }

          *(&v120 + 1) = &type metadata for ClimateModes;
          LOBYTE(v119) = v27;
          sub_252B689F8(inited, &v119);
          swift_setDeallocating();
          sub_25293847C(inited + 32, &unk_27F541300, &qword_252E3C100);

          sub_25293847C(&v119, &qword_27F541E80, &qword_252E3DFA0);
          sub_252B680FC();
          v50 = swift_initStackObject();
          *(v50 + 16) = v111;
          v51 = [v24 entity];
          if (v51)
          {
            v52 = v51;
            v53 = [v51 entityIdentifier];

            v54 = v116;
            if (v53)
            {
              v55 = sub_252E36F34();
              v57 = v56;
            }

            else
            {
              v55 = 0;
              v57 = 0;
            }

            *(v50 + 32) = v55;
            *(v50 + 40) = v57;
            v36 = v115;
            if (v34)
            {
LABEL_41:
              *(&v120 + 1) = &type metadata for HomeDeviceType;
              *&v119 = v103;
LABEL_42:
              sub_252B689F8(v50, &v119);
              swift_setDeallocating();
              sub_25293847C(v50 + 32, &unk_27F541300, &qword_252E3C100);

              sub_25293847C(&v119, &qword_27F541E80, &qword_252E3DFA0);
              if (v108 >> 62)
              {
                v58 = sub_252E378C4();
              }

              else
              {
                v58 = *(v36 + 16);
              }

              v59 = v112;
              if (!v58)
              {
                v80 = 0;
                v81 = 1;
                v19 = v102;
                v22 = v101;
                v20 = v95;
                goto LABEL_81;
              }

              v60 = 0;
LABEL_47:
              if (v118)
              {
                v61 = MEMORY[0x2530ADF00](v60, v108);
              }

              else
              {
                if (v60 >= *(v36 + 16))
                {
                  goto LABEL_92;
                }

                v61 = *(v117 + 8 * v60);
              }

              v62 = v61;
              v25 = __OFADD__(v60++, 1);
              if (v25)
              {
                __break(1u);
LABEL_92:
                __break(1u);
                break;
              }

              v63 = sub_252DA6828();
              v64 = *(v63 + 2);
              v65 = 32;
              do
              {
                if (!v64)
                {

                  if (v60 != v58)
                  {
                    goto LABEL_47;
                  }

                  goto LABEL_79;
                }

                v66 = *&v63[v65];
                v65 += 8;
                --v64;
              }

              while (v66 != 6);

              v67 = [v62 entity];
              if (v67 && (v68 = v67, v69 = [v67 entityIdentifier], v68, v69))
              {
                v70 = sub_252E36F34();
                v72 = v71;
              }

              else
              {
                v70 = 0;
                v72 = 0;
              }

              v73 = [v24 entity];
              if (v73)
              {
                v74 = v73;
                v75 = [v73 entityIdentifier];

                if (v75)
                {
                  v76 = sub_252E36F34();
                  v78 = v77;
                }

                else
                {
                  v76 = 0;
                  v78 = 0;
                }

                v36 = v115;
                if (v72)
                {
LABEL_66:
                  if (v78)
                  {
                    if (v70 == v76 && v72 == v78)
                    {
                    }

                    else
                    {
                      v79 = sub_252E37DB4();

                      if ((v79 & 1) == 0)
                      {

LABEL_72:
                        v54 = v116;
                        if (v60 != v58)
                        {
                          goto LABEL_47;
                        }

LABEL_79:
                        v80 = 0;
                        v81 = 1;
LABEL_80:
                        v19 = v102;
                        v22 = v101;
                        v20 = v95;
                        v59 = v112;
LABEL_81:
                        v85 = (*(v107 + 16))(v104, v105, v80, v81, v54, v59, v106);
                        if (v85)
                        {
                          v86 = v85;
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
                          v87 = swift_allocObject();
                          *(v87 + 16) = v93;
                          *(v87 + 32) = v86;
                          v88 = v86;
                          sub_252C3EE30(&v123, v87, v54, v59);
                        }

                        goto LABEL_11;
                      }
                    }

LABEL_77:
                    v82 = sub_252DA5378(6, 0, 1);

                    v54 = v116;
                    if (v82)
                    {
                      [v82 doubleValue];
                      v84 = v83;

                      v81 = 0;
                      v80 = v84;
                      goto LABEL_80;
                    }

                    goto LABEL_79;
                  }

LABEL_71:

                  goto LABEL_72;
                }
              }

              else
              {
                v76 = 0;
                v78 = 0;
                if (v72)
                {
                  goto LABEL_66;
                }
              }

              if (!v78)
              {
                goto LABEL_77;
              }

              goto LABEL_71;
            }
          }

          else
          {
            *(v50 + 32) = 0;
            *(v50 + 40) = 0;
            v54 = v116;
            if (v34)
            {
              goto LABEL_41;
            }
          }

          v119 = 0u;
          v120 = 0u;
          goto LABEL_42;
        }
      }
    }

LABEL_11:

    if (v18 == v22)
    {
      sub_252927D3C(v92);

      return v123;
    }
  }

  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  swift_once();
LABEL_86:
  __swift_project_value_buffer(v114, qword_27F544C70);
  sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E8C0B0, 0xD00000000000008ALL, 0x8000000252E8BF70);
  v89 = MEMORY[0x277D84F90];

  return sub_252CC507C(v89);
}

_OWORD *sub_252C3DCD4@<X0>(_OWORD *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v12 = sub_252A44D48(a2 & 1);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_252DFEE14(v17, isUniquelyReferenced_nonNull_native);
    v12 = sub_252A44D48(a2 & 1);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    v12 = sub_252E37E24();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = v12;
    sub_252E03314();
    v12 = v21;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    result = sub_252E02EC0(v12, a2 & 1, a1, v11);
    *a3 = 0u;
    a3[1] = 0u;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v19 = 32 * v12;
  sub_252A00AF4((v11[7] + 32 * v12), a3);
  result = sub_252A00AF4(a1, (v11[7] + v19));
LABEL_11:
  *v5 = v11;
  return result;
}

uint64_t sub_252C3DE08(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v10 = sub_252A44DF4(a2);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v11;
  if (v9[3] < v15)
  {
    sub_252DFF0E8(v15, isUniquelyReferenced_nonNull_native);
    v10 = sub_252A44DF4(a2);
    if ((v3 & 1) == (v16 & 1))
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EA8, qword_252E51A90);
    v10 = sub_252E37E24();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v19 = v10;
    sub_252E03490();
    v10 = v19;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_252E02F2C(v10, a2, a1, v9);

    v18 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v17 = v9[7];
  v18 = *(v17 + 8 * v10);
  *(v17 + 8 * v10) = a1;
LABEL_11:
  *v4 = v9;
  return v18;
}

uint64_t sub_252C3DF2C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

void *sub_252C3DF6C(void *a1, unint64_t a2, int a3)
{
  LODWORD(v104) = a3;
  v7 = sub_252E36AD4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v102 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 filters];
  if (!v11)
  {
    sub_2529318DC();
    v3 = swift_allocError();
    *v46 = 1;
    return v3;
  }

  v12 = v11;
  v98 = a1;
  v99 = v8;
  v101 = v7;
  type metadata accessor for HomeFilter();
  v13 = sub_252E37264();

  v14 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v15 = sub_252E36F04();
  v16 = [v14 initWithIdentifier:0 displayString:v15];

  v17 = v16;
  [v17 setTaskType_];
  [v17 setAttribute_];
  [v17 setValue_];
  v100 = v17;

  v109 = MEMORY[0x277D84F90];
  LODWORD(v103) = a2;
  if (a2 & 1) != 0 || (a2 = MEMORY[0x277D84F90], (v104))
  {
    if (v13 >> 62)
    {
      v18 = sub_252E378C4();
      if (v18)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v18 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
LABEL_6:
        sub_252956D08();
        if (v18 >= 1)
        {
          v19 = 0;
          a2 = MEMORY[0x277D84F90];
          while (1)
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v20 = MEMORY[0x2530ADF00](v19, v13);
            }

            else
            {
              v20 = *(v13 + 8 * v19 + 32);
            }

            v21 = v20;
            v22 = [v20 isExcludeFilter];
            v23 = sub_252E37674();
            v24 = v23;
            if (v22)
            {
              v25 = sub_252E37694();

              if (v25)
              {

                goto LABEL_9;
              }
            }

            else
            {
            }

            v26 = [v21 entityIdentifiers];
            if (v26)
            {
              v27 = v26;
              v28 = sub_252E37264();

              if (v103)
              {
                goto LABEL_22;
              }
            }

            else
            {
              v28 = 0;
              if (v103)
              {
LABEL_22:
                type metadata accessor for HomeFilter.Builder();
                v29 = swift_allocObject();
                *(v29 + 16) = 0;
                *(v29 + 24) = 0;
                *(v29 + 32) = 0;
                *(v29 + 40) = 7;
                *(v29 + 48) = 0u;
                *(v29 + 64) = 0u;
                *(v29 + 80) = 0u;
                *(v29 + 96) = 0u;
                *(v29 + 112) = 0u;
                *(v29 + 128) = 0u;
                *(v29 + 144) = 0u;
                *(v29 + 160) = 0u;
                *(v29 + 175) = 0;
                v30 = v21;
                v31 = sub_252B72040(v21);

                v32 = (*(*v31 + 568))(v28);

                v33 = (*(*v32 + 624))(29);

                v35 = (*(*v33 + 760))(v34);

                v36 = v35;
                MEMORY[0x2530AD700]();
                if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_252E372A4();
                }

                sub_252E372D4();

                a2 = v109;
                if (v104)
                {
LABEL_25:
                  type metadata accessor for HomeFilter.Builder();
                  v37 = swift_allocObject();
                  *(v37 + 16) = 0;
                  *(v37 + 24) = 0;
                  *(v37 + 32) = 0;
                  *(v37 + 40) = 7;
                  *(v37 + 48) = 0u;
                  *(v37 + 64) = 0u;
                  *(v37 + 80) = 0u;
                  *(v37 + 96) = 0u;
                  *(v37 + 112) = 0u;
                  *(v37 + 128) = 0u;
                  *(v37 + 144) = 0u;
                  *(v37 + 160) = 0u;
                  *(v37 + 175) = 0;
                  v38 = v21;
                  v39 = sub_252B72040(v21);

                  v40 = (*(*v39 + 568))(v28);

                  v41 = (*(*v40 + 624))(3);

                  v43 = (*(*v41 + 760))(v42);

                  v44 = v43;
                  MEMORY[0x2530AD700]();
                  if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v45 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    sub_252E372A4();
                  }

                  sub_252E372D4();

                  a2 = v109;
                  goto LABEL_9;
                }

                goto LABEL_8;
              }
            }

            if (v104)
            {
              goto LABEL_25;
            }

LABEL_8:

LABEL_9:
            if (v18 == ++v19)
            {
              goto LABEL_31;
            }
          }
        }

        __break(1u);
        goto LABEL_64;
      }
    }

    a2 = MEMORY[0x277D84F90];
  }

LABEL_31:
  if (!(a2 >> 62))
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (sub_252E378C4())
  {
LABEL_33:

    v13 = a2;
  }

LABEL_34:
  v8 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C130;
  v48 = v100;
  *(inited + 32) = v100;
  v104 = v48;
  v3 = sub_252B4CA9C(v13, inited, 0, 1);
  v50 = v49;

  swift_setDeallocating();
  v51 = *(inited + 16);
  swift_arrayDestroy();
  if (v50)
  {

    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v8, qword_27F544C70);
    sub_252CC3D90(0xD000000000000035, 0x8000000252E8C110, 0xD00000000000008ALL, 0x8000000252E8BF70);

    return v3;
  }

  v52 = qword_27F53F498;
  v53 = v3;
  if (v52 != -1)
  {
    swift_once();
  }

  v54 = __swift_project_value_buffer(v8, qword_27F544C70);
  (*(v99 + 16))(v102, v54, v8);
  v105 = 0;
  v106 = 0xE000000000000000;
  sub_252E379F4();
  v4 = 0xD00000000000008ALL;
  MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E8C150);
  v17 = [v53 entityResponses];
  v103 = v53;
  if (v17)
  {
    type metadata accessor for HomeEntityResponse();
    v55 = sub_252E37264();

    if (!(v55 >> 62))
    {
      v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_43:

      goto LABEL_45;
    }

LABEL_64:
    v56 = sub_252E378C4();
    v53 = v103;
    goto LABEL_43;
  }

  v56 = 0;
LABEL_45:
  v107 = v56;
  v108 = v17 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
  v57 = sub_252E36F94();
  MEMORY[0x2530AD570](v57);

  MEMORY[0x2530AD570](v4 - 116, 0x8000000252E8C180);
  v58 = [v53 entityResponses];
  v100 = v3;
  if (!v58)
  {
    v63 = 0;
    goto LABEL_68;
  }

  v59 = v58;
  type metadata accessor for HomeEntityResponse();
  v60 = sub_252E37264();

  if (v60 >> 62)
  {
    v61 = sub_252E378C4();
    if (v61)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v61)
    {
LABEL_48:
      v97 = a2;
      v107 = MEMORY[0x277D84F90];
      sub_2529AA380(0, v61 & ~(v61 >> 63), 0);
      if (v61 < 0)
      {
        goto LABEL_85;
      }

      v62 = 0;
      v63 = v107;
      do
      {
        if ((v60 & 0xC000000000000001) != 0)
        {
          v64 = MEMORY[0x2530ADF00](v62, v60);
        }

        else
        {
          v64 = *(v60 + 8 * v62 + 32);
        }

        v65 = v64;
        v66 = [v64 entity];
        if (v66)
        {
          v67 = v66;
          v68 = [v66 description];

          v69 = sub_252E36F34();
          v71 = v70;
        }

        else
        {

          v69 = 0;
          v71 = 0;
        }

        v107 = v63;
        v73 = *(v63 + 16);
        v72 = *(v63 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_2529AA380((v72 > 1), v73 + 1, 1);
          v63 = v107;
        }

        ++v62;
        *(v63 + 16) = v73 + 1;
        v74 = v63 + 16 * v73;
        *(v74 + 32) = v69;
        *(v74 + 40) = v71;
      }

      while (v61 != v62);

      v8 = v101;
      a2 = v97;
      goto LABEL_67;
    }
  }

  v63 = MEMORY[0x277D84F90];
LABEL_67:
  v53 = v103;
LABEL_68:
  v107 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544360, &qword_252E53B28);
  v75 = sub_252E36F94();
  MEMORY[0x2530AD570](v75);

  v76 = v102;
  sub_252CC3D90(v105, v106, 0xD00000000000008ALL, 0x8000000252E8BF70);

  (*(v99 + 8))(v76, v8);
  v60 = sub_252C6E240(v98);
  v77 = [v53 entityResponses];
  if (!v77)
  {
    v3 = v100;
    if (qword_27F53F4E8 != -1)
    {
      goto LABEL_86;
    }

    goto LABEL_79;
  }

  v78 = v77;
  type metadata accessor for HomeEntityResponse();
  v79 = sub_252E37264();

  v3 = v100;
  if (v79 >> 62)
  {
    goto LABEL_80;
  }

LABEL_70:
  v8 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    while (1)
    {
      v3 = a2;
      v105 = MEMORY[0x277D84F90];
      sub_252E37AB4();
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      swift_once();
LABEL_79:
      __swift_project_value_buffer(v8, qword_27F544D60);
      v105 = 0;
      v106 = 0xE000000000000000;
      sub_252E379F4();

      v105 = 0xD00000000000002FLL;
      v106 = 0x8000000252E69700;
      v85 = [v103 description];
      v86 = sub_252E36F34();
      v88 = v87;

      sub_252927D3C(v3);
      MEMORY[0x2530AD570](v86, v88);

      sub_252CC3D90(v105, v106, 0xD000000000000098, 0x8000000252E69730);

      v79 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
        goto LABEL_70;
      }

LABEL_80:
      v8 = sub_252E378C4();
      if (!v8)
      {
        goto LABEL_81;
      }
    }

    v80 = 0;
    do
    {
      if ((v79 & 0xC000000000000001) != 0)
      {
        v81 = MEMORY[0x2530ADF00](v80, v79);
      }

      else
      {
        v81 = *(v79 + 8 * v80 + 32);
      }

      v82 = v81;
      ++v80;
      sub_252C3A9E4(v60, 0);

      sub_252E37A94();
      v83 = *(v105 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    while (v8 != v80);

    v84 = v105;
    v3 = v100;
  }

  else
  {
LABEL_81:

    v84 = MEMORY[0x277D84F90];
  }

  type metadata accessor for ControlHomeIntentResponse.Builder();
  v89 = swift_allocObject();
  *(v89 + 24) = MEMORY[0x277D84F90];
  v90 = OBJC_IVAR___ControlHomeIntentResponse_code;
  v91 = v103;
  swift_beginAccess();
  *(v89 + 16) = *&v91[v90];
  v92 = sub_252B4EF24(v84);

  v93 = sub_25297D0C0(v92);

  v95 = (*(*v93 + 176))(v94);

  sub_252927D3C(v3);
  sub_252927D3C(v3);
  return v95;
}

uint64_t sub_252C3EE30(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = a2 >> 62;
  if (*(*a1 + 16))
  {
    v9 = sub_252A44DF4(a2);
    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v9);
      if (v8)
      {
        if (sub_252E378C4())
        {
          goto LABEL_5;
        }
      }

      else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        v12 = qword_27F53F498;

        if (v12 != -1)
        {
          swift_once();
        }

        v13 = sub_252E36AD4();
        __swift_project_value_buffer(v13, qword_27F544C70);
        sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E8C030, 0xD00000000000008ALL, 0x8000000252E8BF70);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_252E3C290;
        *(inited + 32) = a3;
        *(inited + 40) = a4;

        sub_25297A744(inited);
        sub_252C3DE08(v11, a2);
      }
    }
  }

  if (v8)
  {
    result = sub_252E378C4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v16 = sub_252E36AD4();
  __swift_project_value_buffer(v16, qword_27F544C70);
  sub_252CC3D90(0xD000000000000024, 0x8000000252E8C000, 0xD00000000000008ALL, 0x8000000252E8BF70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_252E3C290;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;

  sub_252C3DE08(v17, a2);
}

uint64_t sub_252C3F0C0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v37 = -1 << *(a1 + 32);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v38 = a5;
  v39 = v7;
  while (v10)
  {
    v44 = a4;
    v16 = v12;
LABEL_14:
    v18 = (v16 << 9) | (8 * __clz(__rbit64(v10)));
    v19 = *(*(a1 + 56) + v18);
    v43[0] = *(*(a1 + 48) + v18);
    v43[1] = v19;

    a2(v42, v43);

    v20 = v42[0];
    v21 = v42[1];
    v22 = *a5;
    v24 = sub_252A44DF4(v42[0]);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v44 & 1) == 0)
      {
        sub_252E03490();
      }
    }

    else
    {
      sub_252DFF0E8(v27, v44 & 1);
      v29 = *a5;
      v30 = sub_252A44DF4(v20);
      if ((v28 & 1) != (v31 & 1))
      {
        goto LABEL_27;
      }

      v24 = v30;
    }

    v10 &= v10 - 1;
    v32 = *a5;
    if (v28)
    {
      v13 = *(v32[7] + 8 * v24);

      v14 = v32[7];
      v15 = *(v14 + 8 * v24);
      *(v14 + 8 * v24) = v13;
    }

    else
    {
      v32[(v24 >> 6) + 8] |= 1 << v24;
      *(v32[6] + 8 * v24) = v20;
      *(v32[7] + 8 * v24) = v21;
      v33 = v32[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_26;
      }

      v32[2] = v35;
    }

    a4 = 1;
    v12 = v16;
    a5 = v38;
    v7 = v39;
  }

  v17 = v12;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v11)
    {
      sub_25291AE30();
    }

    v10 = *(v7 + 8 * v16);
    ++v17;
    if (v10)
    {
      v44 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EA8, qword_252E51A90);
  result = sub_252E37E24();
  __break(1u);
  return result;
}

void sub_252C3F354(uint64_t a1)
{
  v2 = *(sub_252B680FC() + 48);

  if (v2 == 1)
  {
    LODWORD(v3) = 1;
    if (a1 < 0)
    {
LABEL_31:
      v14 = v3;
      goto LABEL_32;
    }

    v14 = 1;
    if ((a1 & 0x4000000000000000) != 0)
    {
LABEL_32:
      v5 = sub_252E378C4();
      if (!v5)
      {
        return;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v4 = *(sub_252B680FC() + 49);

    v14 = v4;
    if (a1 < 0 || (a1 & 0x4000000000000000) != 0)
    {
      goto LABEL_32;
    }
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    return;
  }

LABEL_8:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2530ADF00](i, a1);
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (i >= v3)
      {
        goto LABEL_30;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    v8 = v7;
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v10 = [v7 attribute];
    v11 = qword_2864A2370 == v10 || unk_2864A2378 == v10;
    if (v11 || qword_2864A2380 == v10)
    {
      break;
    }

LABEL_9:
    if (v9 == v5)
    {
      return;
    }
  }

  v13 = [v8 taskType];

  if (v13 != 1)
  {
    goto LABEL_9;
  }

  if (v14)
  {
    *(sub_252B680FC() + 49) = 0;

    *(sub_252B680FC() + 48) = 0;
  }
}

uint64_t sub_252C3F504(uint64_t a1)
{
  v2 = sub_252C39794(a1);
  sub_252C3F354(v2);

  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v24 = a1;

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  if (v6)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v10;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      do
      {
LABEL_8:
        v12 = (v9 << 9) | (8 * __clz(__rbit64(v6)));
        v13 = *(*(v24 + 48) + v12);
        v14 = *(*(v24 + 56) + v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_252E3C130;
        type metadata accessor for HomeFilter.Builder();
        inited = swift_initStackObject();
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
        *(inited + 16) = v14;
        *(inited + 24) = 0;

        v17 = sub_252B719E4();
        swift_setDeallocating();
        HomeFilter.Builder.deinit();
        swift_deallocClassInstance();
        *(v15 + 32) = v17;
        v18 = sub_252B4CA9C(v15, v13, 0, 1);
        v20 = v19;

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2529F7BEC(0, v10[2] + 1, 1, v10);
          v10 = result;
        }

        v22 = v10[2];
        v21 = v10[3];
        if (v22 >= v21 >> 1)
        {
          result = sub_2529F7BEC((v21 > 1), v22 + 1, 1, v10);
          v10 = result;
        }

        v6 &= v6 - 1;
        v10[2] = v22 + 1;
        v23 = &v10[2 * v22];
        v23[4] = v18;
        *(v23 + 40) = v20 & 1;
      }

      while (v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252C3F754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C3F800, 0, 0);
}

void *sub_252C3F800()
{
  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  v100 = (v1 + 16);
  v3 = [*(v1 + 40) matchedEntities];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeEntity();
    v5 = sub_252E37264();

    if (v5 >> 62)
    {
      goto LABEL_42;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v102 = v5;
    v104 = v6;
    while (v6)
    {
      v7 = 0;
      v8 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v102 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x2530ADF00](v7, v102);
        }

        else
        {
          if (v7 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v9 = *(v102 + 32 + 8 * v7);
        }

        v10 = v9;
        v11 = __OFADD__(v7++, 1);
        if (v11)
        {
          break;
        }

        v12 = [v9 deviceTypes];
        if (v12)
        {
          v13 = v12;
          v14 = sub_252E37264();

          v15 = *(v14 + 16);
          if (v15)
          {
            v16 = sub_2529F8104(0, 1, 1, MEMORY[0x277D84F90]);
            v17 = (v14 + 32);
            v18 = *(v16 + 2);
            do
            {
              v20 = *v17++;
              v19 = v20;
              v21 = *(v16 + 3);
              if (v18 >= v21 >> 1)
              {
                v16 = sub_2529F8104((v21 > 1), v18 + 1, 1, v16);
              }

              *(v16 + 2) = v18 + 1;
              *&v16[8 * v18++ + 32] = v19;
              --v15;
            }

            while (v15);
          }

          else
          {
            v16 = MEMORY[0x277D84F90];
          }

          v6 = v104;
        }

        else
        {
          v16 = MEMORY[0x277D84F90];
        }

        v22 = *(v16 + 2);
        v5 = *(v8 + 2);
        v0 = v5 + v22;
        if (__OFADD__(v5, v22))
        {
          goto LABEL_38;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v0 <= *(v8 + 3) >> 1)
        {
          if (*(v16 + 2))
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (v5 <= v0)
          {
            v24 = v5 + v22;
          }

          else
          {
            v24 = v5;
          }

          v8 = sub_2529F8104(isUniquelyReferenced_nonNull_native, v24, 1, v8);
          if (*(v16 + 2))
          {
LABEL_30:
            v25 = *(v8 + 2);
            if ((*(v8 + 3) >> 1) - v25 < v22)
            {
              goto LABEL_40;
            }

            memcpy(&v8[8 * v25 + 32], v16 + 32, 8 * v22);

            if (v22)
            {
              v26 = *(v8 + 2);
              v11 = __OFADD__(v26, v22);
              v27 = v26 + v22;
              if (v11)
              {
                goto LABEL_41;
              }

              *(v8 + 2) = v27;
            }

            goto LABEL_6;
          }
        }

        if (v22)
        {
          goto LABEL_39;
        }

LABEL_6:
        if (v7 == v6)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v6 = sub_252E378C4();
      v102 = v5;
      v104 = v6;
    }

    v8 = MEMORY[0x277D84F90];
LABEL_44:
    v29 = sub_252C76054(v8);

    v30 = *(v29 + 16);

    if (v6)
    {
      v31 = v30 >= 6;
    }

    else
    {
      v31 = 0;
    }

    if (v31)
    {
      v69 = 0;
      v108 = v110[6];
      v2 = v102;
      v70 = v102 & 0xC000000000000001;
      v32 = v102 & 0xFFFFFFFFFFFFFF8;
      v28 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v70)
        {
          v71 = MEMORY[0x2530ADF00](v69, v2);
        }

        else
        {
          if (v69 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_104;
          }

          v71 = *(v102 + 32 + 8 * v69);
        }

        v72 = v71;
        v11 = __OFADD__(v69++, 1);
        if (v11)
        {
          break;
        }

        v73 = [v71 deviceTypes];
        if (v73)
        {
          v105 = v28;
          v74 = v73;
          v75 = sub_252E37264();

          v76 = *(v75 + 16);
          if (v76)
          {
            v77 = 0;
            v78 = *(v108 + 616);
            v79 = *(v78 + 16);
            v0 = v78 + 56;
            while (1)
            {
              if (v79)
              {
                v80 = *(v75 + 32 + 8 * v77);
                v81 = *(v78 + 40);
                v82 = sub_252E37EB4();
                v83 = -1 << *(v78 + 32);
                v84 = v82 & ~v83;
                if ((*(v0 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84))
                {
                  break;
                }
              }

LABEL_90:
              if (++v77 == v76)
              {

                v28 = v105;
                goto LABEL_100;
              }
            }

            v85 = ~v83;
            while (*(*(v78 + 48) + 8 * v84) != v80)
            {
              v84 = (v84 + 1) & v85;
              if (((*(v0 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84) & 1) == 0)
              {
                goto LABEL_90;
              }
            }

            v86 = v72;
            v87 = v100;
            MEMORY[0x2530AD700]();
            if (*((*v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v88 = *((*v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_252E372A4();
              v87 = v100;
            }

            sub_252E372D4();

            v28 = *v87;
LABEL_100:
            v2 = v102;
            v6 = v104;
            v70 = v102 & 0xC000000000000001;
          }

          else
          {

            v28 = v105;
          }
        }

        else
        {
        }

        if (v69 == v6)
        {
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v28 = MEMORY[0x277D84F90];
    v2 = v102;
  }

  else
  {
    v28 = v2;
  }

LABEL_49:
  v104 = sub_252C6CB2C(v28);
  v110[9] = v104;
  v0 = sub_252C6CB2C(v2);
  v110[10] = v0;

  v32 = *(v0 + 24);
  if (!(v32 >> 62))
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_51;
  }

LABEL_105:
  v89 = v32;
  v90 = sub_252E378C4();
  v32 = v89;
  v33 = v90;
LABEL_51:
  v34 = MEMORY[0x277D84F90];
  v103 = v0;
  if (v33)
  {
    v35 = v32;
    v111 = MEMORY[0x277D84F90];
    result = sub_2529AA380(0, v33 & ~(v33 >> 63), 0);
    if (v33 < 0)
    {
      __break(1u);
      goto LABEL_117;
    }

    v37 = 0;
    v38 = v111;
    v39 = v35;
    v106 = v35;
    v109 = v35 & 0xC000000000000001;
    do
    {
      if (v109)
      {
        v40 = MEMORY[0x2530ADF00](v37, v39);
      }

      else
      {
        v40 = *(v39 + 8 * v37 + 32);
      }

      v41 = v110[8];
      sub_252938414(v40 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type, v41, &qword_27F540298, &unk_252E3C270);
      v42 = sub_252E36324();
      v43 = *(v42 - 8);
      v44 = (*(v43 + 48))(v41, 1, v42);
      v45 = v110[8];
      if (v44 == 1)
      {

        sub_25293847C(v45, &qword_27F540298, &unk_252E3C270);
        v46 = 0;
        v47 = 0;
      }

      else
      {
        v46 = sub_252E36314();
        v47 = v48;

        (*(v43 + 8))(v45, v42);
      }

      v50 = *(v111 + 16);
      v49 = *(v111 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_2529AA380((v49 > 1), v50 + 1, 1);
      }

      ++v37;
      *(v111 + 16) = v50 + 1;
      v51 = v111 + 16 * v50;
      *(v51 + 32) = v46;
      *(v51 + 40) = v47;
      v39 = v106;
    }

    while (v33 != v37);
    v34 = MEMORY[0x277D84F90];
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
  }

  v52 = sub_252C75A1C(v38);

  v53 = *(v104 + 24);
  if (v53 >> 62)
  {
    if (v53 < 0)
    {
      v91 = *(v104 + 24);
    }

    v54 = sub_252E378C4();
    if (v54)
    {
LABEL_67:
      result = sub_2529AA380(0, v54 & ~(v54 >> 63), 0);
      if ((v54 & 0x8000000000000000) == 0)
      {
        v101 = v52;
        v55 = 0;
        v56 = v34;
        v107 = v54;
        do
        {
          if ((v53 & 0xC000000000000001) != 0)
          {
            v57 = MEMORY[0x2530ADF00](v55, v53);
          }

          else
          {
            v57 = *(v53 + 8 * v55 + 32);
          }

          v58 = v110[7];
          sub_252938414(v57 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type, v58, &qword_27F540298, &unk_252E3C270);
          v59 = sub_252E36324();
          v60 = *(v59 - 8);
          v61 = (*(v60 + 48))(v58, 1, v59);
          v62 = v110[7];
          if (v61 == 1)
          {

            sub_25293847C(v62, &qword_27F540298, &unk_252E3C270);
            v63 = 0;
            v64 = 0;
          }

          else
          {
            v63 = sub_252E36314();
            v64 = v65;

            (*(v60 + 8))(v62, v59);
          }

          v67 = *(v56 + 16);
          v66 = *(v56 + 24);
          if (v67 >= v66 >> 1)
          {
            sub_2529AA380((v66 > 1), v67 + 1, 1);
          }

          ++v55;
          *(v56 + 16) = v67 + 1;
          v68 = v56 + 16 * v67;
          *(v68 + 32) = v63;
          *(v68 + 40) = v64;
        }

        while (v107 != v55);

        v52 = v101;
        goto LABEL_110;
      }

LABEL_117:
      __break(1u);
      return result;
    }
  }

  else
  {
    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54)
    {
      goto LABEL_67;
    }
  }

  v56 = MEMORY[0x277D84F90];
LABEL_110:
  v92 = sub_252C75A1C(v56);

  if (*(v92 + 16) <= *(v52 + 16) >> 3)
  {
    sub_2529AAB54(v92);

    v93 = v52;
  }

  else
  {
    v93 = sub_2529AC1D4(v92, v52);
  }

  v94 = v110[6];
  v95 = swift_allocObject();
  v110[11] = v95;
  v95[2] = v94;
  v95[3] = v103;
  v95[4] = v104;
  v95[5] = v93;

  v96 = swift_task_alloc();
  v110[12] = v96;
  *v96 = v110;
  v96[1] = sub_252C40294;
  v97 = v110[6];
  v98 = v110[3];
  v99 = v110[4];

  return sub_252C6C378(v98, v99, &unk_252E53BD0, v95);
}

uint64_t sub_252C40294()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_252C4044C;
  }

  else
  {
    v4 = sub_252C403C4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252C403C4()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_252C4044C()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[1];
  v6 = v0[13];

  return v5();
}

uint64_t sub_252C404D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[137] = a4;
  v4[136] = a3;
  v4[135] = a2;
  v4[134] = a1;
  return MEMORY[0x2822009F8](sub_252C40500, 0, 0);
}

uint64_t sub_252C40500()
{
  v15 = v0;
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1072);
  v5 = *__swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
  v6 = *(v1 + 16);
  memcpy((v0 + 16), v4 + 14, 0x1F8uLL);

  memcpy(__dst, v4 + 14, sizeof(__dst));

  sub_252938414(v0 + 16, v0 + 520, &qword_27F5404C8, &unk_252E3FD60);
  v7 = sub_252953488(0, __dst, 0);
  *(v0 + 1104) = v7;
  *(v0 + 1024) = v3;
  *(v0 + 1032) = 0;
  *(v0 + 1040) = v7;
  *(v0 + 1048) = v6;
  *(v0 + 1056) = 0;
  *(v0 + 1064) = v2;
  v8 = sub_252C06E1C();
  *(v0 + 1112) = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v14 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  *(v0 + 1120) = v10;
  *v10 = v0;
  v10[1] = sub_252C406B0;
  v11 = v14;

  return v11(0xD000000000000020, 0x8000000252E8C230, v8);
}

uint64_t sub_252C406B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1120);
  v6 = *(*v2 + 1112);
  v7 = *v2;
  *(*v2 + 1128) = v1;

  if (v1)
  {
    v8 = sub_252C408A4;
  }

  else
  {
    *(v4 + 1136) = a1;
    v8 = sub_252C407FC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C407FC()
{
  v1 = v0[138];
  v2 = v0[137];
  v3 = v0[136];
  v4 = v0[135];
  v5 = v0[134];

  v6 = v0[1];
  v7 = v0[142];

  return v6(v7);
}

uint64_t sub_252C408A4()
{
  v1 = v0[138];
  v2 = v0[137];
  v3 = v0[136];
  v4 = v0[135];
  v5 = v0[134];

  v6 = v0[1];
  v7 = v0[141];

  return v6();
}

void *sub_252C40948(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C0, &unk_252E3C0F0);
  v2 = swift_allocObject();
  v2[1] = xmmword_252E3EF80;
  v2[2] = xmmword_252E53B30;
  v2[3] = xmmword_252E53B40;
  v3 = sub_2529FF590(v2);
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v1 + 616) = v3;
  return sub_252BE97AC(__dst);
}

uint64_t sub_252C409F4()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[8];

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  memcpy(__dst, v0 + 14, sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  v3 = v0[77];

  return swift_deallocClassInstance();
}

uint64_t sub_252C40AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252C3F754(a1, a2, a3);
}

void *sub_252C40B78@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for DiscoverInventoryResponseHandler();
  swift_allocObject();
  result = sub_252C40948(a1);
  *a2 = result;
  return result;
}

uint64_t sub_252C40BC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25294B7BC;

  return sub_252C404D4(v2, v3, v5, v4);
}

uint64_t sub_252C40C70(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_252E34014();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C40D3C, 0, 0);
}

uint64_t sub_252C40D3C()
{
  v1 = v0[8];
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v2 + 288), (v0 + 2));

  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = (*(v4 + 120))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v6 = *(v1 + 96);
  __swift_project_boxed_opaque_existential_1((v1 + 72), v6);
  if (v5)
  {
    v7 = v0[12];
    sub_252B03B94();
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_252B2B87C;
    v9 = v0[12];
    v10 = v0[7];
    v11 = v0[8];

    return sub_252A199A8(v10, &unk_252E53C60, v11, &unk_252E53C68, 0, v9, 0, 0);
  }

  else
  {
    v13 = v0[11];
    sub_252AD7CC4();
    v14 = swift_task_alloc();
    v0[15] = v14;
    *v14 = v0;
    v14[1] = sub_252B2BA30;
    v15 = v0[11];
    v16 = v0[7];
    v17 = v0[8];

    return sub_252BDB88C(v16, &unk_252E53C50, v17, v15, 0, 0, 0, v6);
  }
}

uint64_t sub_252C40F84()
{
  v0[3] = *(v0[2] + 64);
  v1 = *(MEMORY[0x277D55C70] + 4);
  v5 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_252ACFBBC;
  v3 = MEMORY[0x277D84F90];

  return v5(0xD000000000000024, 0x8000000252E8C2B0, v3);
}

uint64_t sub_252C41064(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1[3] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for HomeAutomationCalibrationInProgressParameters(0);
  v1[6] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_252C41168, 0, 0);
}

uint64_t sub_252C41168()
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *__swift_project_boxed_opaque_existential_1((*(v0 + 24) + 24), *(*(v0 + 24) + 48));
  v4 = sub_252E36324();
  v5 = *(*(v4 - 8) + 56);
  v5(v2, 1, 1, v4);
  v6 = *(v1 + 24);
  v5(v2 + v6, 1, 1, v4);
  *(v2 + *(v1 + 20)) = 0;
  v7 = sub_25294833C(1u, 0, 0);
  if (v7)
  {
    v8 = v7;
    v9 = [v7 dictionary];
    if (v9)
    {
      v10 = v9;
      v11 = objc_opt_self();
      *(v0 + 16) = 0;
      v12 = [v11 dataWithPropertyList:v10 format:200 options:0 error:v0 + 16];
      v13 = *(v0 + 16);
      if (v12)
      {
        v29 = *(v0 + 40);
        v14 = sub_252E32D34();
        v30 = v6;
        v16 = v15;

        sub_252E32D24();
        sub_252E362F4();

        v17 = v16;
        v6 = v30;
        sub_25296464C(v14, v17);
        v5(v29, 0, 1, v4);
        goto LABEL_8;
      }

      v18 = v13;
      v19 = sub_252E32C54();

      swift_willThrow();
    }

    else
    {
    }
  }

  v5(*(v0 + 40), 1, 1, v4);
LABEL_8:
  v20 = *(v0 + 56);
  v21 = *(v0 + 32);
  sub_252956C98(*(v0 + 40), v2 + v6);
  sub_252E37024();
  v5(v21, 0, 1, v4);
  sub_252956C98(v21, v20);
  v22 = sub_252C05E4C();
  *(v0 + 64) = v22;
  v23 = MEMORY[0x277D55BE8];
  v24 = *(MEMORY[0x277D55BE8] + 4);
  v25 = *MEMORY[0x277D55BE8];
  v26 = swift_task_alloc();
  *(v0 + 72) = v26;
  *v26 = v0;
  v26[1] = sub_252C414AC;
  v27 = *MEMORY[0x277D85DE8];

  return ((v25 + v23))(0xD000000000000024, 0x8000000252E8C2B0, v22);
}

uint64_t sub_252C414AC(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  v4[10] = v1;

  v7 = v4[8];

  if (v1)
  {
    v8 = sub_252C416D8;
  }

  else
  {
    v4[11] = a1;
    v8 = sub_252C4161C;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C4161C()
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = v0[4];
  v1 = v0[5];
  sub_252C41B34(v0[7]);

  v3 = v0[1];
  v4 = v0[11];
  v5 = *MEMORY[0x277D85DE8];

  return v3(v4);
}

uint64_t sub_252C416D8()
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = v0[4];
  v1 = v0[5];
  sub_252C41B34(v0[7]);

  v3 = v0[1];
  v4 = v0[10];
  v5 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_252C417BC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252C40C70(a1);
}

void *sub_252C41858@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for CalibrationInProgressResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

void *sub_252C418BC(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_252C30628();
    if (v2 >> 62)
    {
      v9 = sub_252E378C4();

      if (v9)
      {
LABEL_4:
        v4 = [v1 entityResponses];
        if (v4)
        {
          type metadata accessor for HomeEntityResponse();
          v5 = sub_252E37264();

          if (v5 >> 62)
          {
            v6 = sub_252E378C4();
          }

          else
          {
            v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        else
        {
          v6 = 0;
        }

        v7 = sub_252C30628();
        if (v7 >> 62)
        {
          v8 = sub_252E378C4();
        }

        else
        {
          v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v4)
        {
          return (v6 == v8);
        }

        return 0;
      }
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v3)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

  return result;
}