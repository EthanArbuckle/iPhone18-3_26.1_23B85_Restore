BOOL sub_252D4FC60(uint64_t a1)
{
  v3 = (*v1 + 256);
  v4 = *v3;
  if ((*v3)() == a1)
  {
    return 1;
  }

  v5 = (*(*v1 + 272))();
  v6 = sub_252DB4F4C(a1, v5);

  if (v6)
  {
    return 1;
  }

  v8 = (v4)(v7);
  if (v8 == 38)
  {
    v9 = &unk_2864A0E78;
    goto LABEL_7;
  }

  if (v8 == 41)
  {
    v9 = &unk_2864A0EA0;
LABEL_7:
    v10 = sub_2529FC004(v9);
    goto LABEL_9;
  }

  v10 = MEMORY[0x277D84FA0];
LABEL_9:
  v11 = sub_252DB4F4C(a1, v10);

  if (v11)
  {
    return 1;
  }

  return sub_252D4FE78(a1);
}

uint64_t sub_252D4FD9C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == a1 && *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == a2;
  if (v5 || (sub_252E37DB4() & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v7 = sub_252D4EEA8();
    v10[0] = a1;
    v10[1] = a2;
    MEMORY[0x28223BE20](v7);
    v9[2] = v10;
    v6 = sub_2529ED970(sub_25296A724, v9, v7);
  }

  return v6 & 1;
}

BOOL sub_252D4FE78(uint64_t a1)
{
  if (a1 != 42)
  {
    return 0;
  }

  v2 = [*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) profiles];
  sub_25293F638(0, &qword_27F540170, 0x277CD1760);
  v3 = sub_252E37264();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4 = sub_252E378C4();
  if (!v4)
  {
LABEL_20:

    return 0;
  }

LABEL_4:
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
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      break;
    }

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_20;
    }
  }

  v10 = v9;

  v11 = [v10 userSettings];
  if (!v11)
  {

    return 0;
  }

  v12 = v11;
  v13 = [v11 supportedFeatures];

  return (v13 & 2) != 0;
}

void sub_252D50010(uint64_t a1)
{
  v2 = v1;
  v57 = sub_252E32E84();
  v4 = *(v57 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v57);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_252E32E24();
  v61 = v8;
  v59 = &v60;
  v9 = sub_2529ED970(sub_25296A724, v58, a1);

  if ((v9 & 1) == 0)
  {
    v10 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
    if (v10)
    {
      v11 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      v12 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
    }

    else
    {
      v12 = 0xE400000000000000;
      v11 = 1701736302;
    }

    v60 = v11;
    v61 = v12;
    MEMORY[0x28223BE20](v10);
    *(&v48 - 2) = &v60;

    v13 = sub_2529ED970(sub_25296A724, (&v48 - 4), a1);

    if ((v13 & 1) == 0)
    {
      v14 = *(a1 + 16);
      if (v14)
      {
        v52 = v2;
        v15 = 0;
        v16 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
        v17 = a1 + 32;
        v55 = (v4 + 8);
        v18 = &off_279711000;
        v49 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
        v50 = v14;
        v48 = a1 + 32;
        while (2)
        {
          v19 = (v17 + 16 * v15);
          v20 = *v19;
          v21 = *(v52 + v16);
          v56 = v19[1];

          v22 = v18[280];
          v54 = v21;
          v23 = [v21 v22];
          v53 = sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
          v24 = sub_252E37264();

          if (v24 >> 62)
          {
            v25 = sub_252E378C4();
          }

          else
          {
            v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v26 = 0;
          v51 = v15 + 1;
          while (v25 != v26)
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v28 = MEMORY[0x2530ADF00](v26, v24);
            }

            else
            {
              if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_47;
              }

              v28 = *(v24 + 8 * v26 + 32);
            }

            v29 = v28;
            if (__OFADD__(v26, 1))
            {
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
              return;
            }

            v30 = [v28 uniqueIdentifier];
            sub_252E32E64();

            v31 = sub_252E32E24();
            v33 = v32;
            (*v55)(v7, v57);
            if (v31 == v20 && v33 == v56)
            {

              return;
            }

            v27 = sub_252E37DB4();

            ++v26;
            if (v27)
            {
LABEL_43:

              return;
            }
          }

          v34 = [v54 services];
          v35 = sub_252E37264();

          if (v35 >> 62)
          {
            v36 = sub_252E378C4();
            if (v36)
            {
LABEL_23:
              v37 = 0;
              v53 = v35 & 0xFFFFFFFFFFFFFF8;
              v54 = (v35 & 0xC000000000000001);
              do
              {
                if (v54)
                {
                  v38 = MEMORY[0x2530ADF00](v37, v35);
                }

                else
                {
                  if (v37 >= *(v53 + 16))
                  {
                    goto LABEL_49;
                  }

                  v38 = *(v35 + 8 * v37 + 32);
                }

                v39 = v38;
                v40 = v37 + 1;
                if (__OFADD__(v37, 1))
                {
                  goto LABEL_48;
                }

                v41 = [v38 assistantIdentifier];
                if (v41)
                {
                  v42 = v41;
                  v43 = sub_252E36F34();
                  v45 = v44;

                  if (v43 == v20 && v45 == v56)
                  {

                    return;
                  }

                  v47 = sub_252E37DB4();

                  if (v47)
                  {
                    goto LABEL_43;
                  }
                }

                else
                {
                }

                ++v37;
              }

              while (v40 != v36);
            }
          }

          else
          {
            v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v36)
            {
              goto LABEL_23;
            }
          }

          v15 = v51;
          v17 = v48;
          v16 = v49;
          v18 = &off_279711000;
          if (v51 != v50)
          {
            continue;
          }

          break;
        }
      }
    }
  }
}

uint64_t sub_252D50560(void *a1)
{
  v2 = [a1 taskType];
  if (v2 > 6)
  {
    goto LABEL_10;
  }

  if (((1 << v2) & 0x4E) != 0)
  {
    v3 = [a1 attribute];

    return sub_252D50868(v3);
  }

  if (((1 << v2) & 0x30) != 0)
  {
    v5 = [a1 attribute];

    return sub_252D50758(v5);
  }

  else
  {
LABEL_10:
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544CB8);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000027, 0x8000000252E978F0);
    [a1 taskType];
    sub_252E37AE4();
    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000006FLL, 0x8000000252E977A0, 0x7374726F70707573, 0xEF293A6B73617428, 268);

    return 0;
  }
}

uint64_t sub_252D50758(uint64_t a1)
{
  v3 = (*v1 + 336);
  v4 = *v3;
  v5 = (*v3)();
  v6 = *(v5 + 16);
  v7 = 32;
  if (a1 == 5)
  {
    while (v6)
    {
      v8 = *(v5 + v7);
      v7 += 8;
      --v6;
      if (v8 == 3)
      {

        v10 = (v4)(v9);
        v11 = *(v10 + 16);
        v12 = 32;
        while (v11)
        {
          v13 = *(v10 + v12);
          v12 += 8;
          --v11;
          if (v13 == 4)
          {

            v15 = (v4)(v14);
            v16 = *(v15 + 16);
            v17 = 32;
            do
            {
              v18 = v16-- != 0;
              v19 = v18;
              if (!v18)
              {
                break;
              }

              v20 = *(v15 + v17);
              v17 += 8;
            }

            while (v20 != 2);
            goto LABEL_23;
          }
        }

        break;
      }
    }

    v19 = 0;
  }

  else
  {
    do
    {
      v21 = v6-- != 0;
      v19 = v21;
      if (!v21)
      {
        break;
      }

      v22 = *(v5 + v7);
      v7 += 8;
    }

    while (v22 != a1);
  }

LABEL_23:

  return v19;
}

uint64_t sub_252D50868(uint64_t a1)
{
  v3 = (*v1 + 352);
  v4 = *v3;
  v5 = (*v3)();
  v6 = *(v5 + 16);
  v7 = 32;
  if (a1 == 5)
  {
    while (v6)
    {
      v8 = *(v5 + v7);
      v7 += 8;
      --v6;
      if (v8 == 3)
      {

        v10 = (v4)(v9);
        v11 = *(v10 + 16);
        v12 = 32;
        while (v11)
        {
          v13 = *(v10 + v12);
          v12 += 8;
          --v11;
          if (v13 == 4)
          {

            v15 = (v4)(v14);
            v16 = *(v15 + 16);
            v17 = 32;
            do
            {
              v18 = v16-- != 0;
              v19 = v18;
              if (!v18)
              {
                break;
              }

              v20 = *(v15 + v17);
              v17 += 8;
            }

            while (v20 != 2);
            goto LABEL_23;
          }
        }

        break;
      }
    }

    v19 = 0;
  }

  else
  {
    do
    {
      v21 = v6-- != 0;
      v19 = v21;
      if (!v21)
      {
        break;
      }

      v22 = *(v5 + v7);
      v7 += 8;
    }

    while (v22 != a1);
  }

LABEL_23:

  return v19;
}

uint64_t sub_252D50978(void *a1)
{
  v2 = a1;
  v3 = [a1 groupName];
  if (v3)
  {
    v36 = v2;
    v4 = v3;
    v5 = sub_252E36F34();
    v7 = v6;

    v37 = v1;
    v8 = sub_252D521EC();
    v9 = v8;
    v10 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v8 >> 62)
    {
LABEL_28:
      v11 = sub_252E378C4();
    }

    else
    {
      v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    while (1)
    {
      if (v11 == v12)
      {
        goto LABEL_18;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x2530ADF00](v12, v9);
        if (__OFADD__(v12, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          if (qword_27F53F4C8 != -1)
          {
            swift_once();
          }

          v16 = sub_252E36AD4();
          __swift_project_value_buffer(v16, qword_27F544D00);
          v38 = 0;
          v39 = 0xE000000000000000;
          sub_252E379F4();
          v18 = *(v37 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          v17 = *(v37 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

          v38 = v18;
          v39 = v17;
          MEMORY[0x2530AD570](0x70756F7267207327, 0xEC0000005B203A73);
          v19 = type metadata accessor for Group();
          v20 = MEMORY[0x2530AD730](v9, v19);
          v22 = v21;

          MEMORY[0x2530AD570](v20, v22);

          MEMORY[0x2530AD570](0x746F6E206F64205DLL, 0xEF20686374616D20);
          MEMORY[0x2530AD570](v5, v7);

          sub_252CC3D90(v38, v39, 0xD00000000000006FLL, 0x8000000252E977A0);

LABEL_25:
          v33 = 0;
          return v33 & 1;
        }
      }

      else
      {
        if (v12 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v13 = *(v9 + 8 * v12 + 32);

        if (__OFADD__(v12, 1))
        {
          goto LABEL_17;
        }
      }

      if (*(v13 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v5 && *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v7)
      {

        goto LABEL_22;
      }

      v15 = sub_252E37DB4();

      ++v12;
      if (v15)
      {

LABEL_22:
        v2 = v36;
        v1 = v37;
        break;
      }
    }
  }

  v23 = [*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
  if (!v23)
  {
    goto LABEL_25;
  }

  v24 = v23;
  v25 = type metadata accessor for Room();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = v24;
  v29 = sub_2529A1E08(v28);
  type metadata accessor for HomeStore();
  v30 = static HomeStore.shared.getter();
  v31 = sub_2529F2818(v2);

  v38 = v29;
  MEMORY[0x28223BE20](v32);
  v35[2] = &v38;
  v33 = sub_252A00B58(sub_2529509E4, v35, v31);

  return v33 & 1;
}

uint64_t sub_252D50D28(void *a1)
{
  v2 = v1;
  if (![a1 deviceType])
  {
    goto LABEL_12;
  }

  v4 = [a1 deviceType];
  v5 = (*v1 + 256);
  v6 = *v5;
  if ((*v5)() == v4)
  {
    goto LABEL_12;
  }

  v7 = (*(*v1 + 272))();
  v8 = sub_252DB4F4C(v4, v7);

  if (v8)
  {
    goto LABEL_12;
  }

  v10 = (v6)(v9);
  if (v10 == 38)
  {
    v11 = &unk_2864A0E78;
  }

  else
  {
    if (v10 != 41)
    {
      v12 = MEMORY[0x277D84FA0];
      goto LABEL_10;
    }

    v11 = &unk_2864A0EA0;
  }

  v12 = sub_2529FC004(v11);
LABEL_10:
  v13 = sub_252DB4F4C(v4, v12);

  if ((v13 & 1) == 0 && !sub_252D4FE78(v4))
  {
    if (qword_27F53F4C8 != -1)
    {
      swift_once();
    }

    v36 = sub_252E36AD4();
    __swift_project_value_buffer(v36, qword_27F544D00);
    sub_252E379F4();
    v38 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v37 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E97870);
    v39 = HomeDeviceType.description.getter([a1 deviceType]);
    MEMORY[0x2530AD570](v39);

    sub_252CC3D90(v38, v37, 0xD00000000000006FLL, 0x8000000252E977A0);
    goto LABEL_42;
  }

LABEL_12:
  v14 = [a1 outerDeviceName];
  if (v14)
  {
    v15 = v14;
    v16 = sub_252E36F34();
    v18 = v17;

    v19 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v20 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
    if (v19 != v16 || v20 != v18)
    {
      v22 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v23 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
      if ((sub_252E37DB4() & 1) == 0)
      {
        if (qword_27F53F4C0 != -1)
        {
          swift_once();
        }

        v32 = sub_252E36AD4();
        __swift_project_value_buffer(v32, qword_27F544CE8);
        sub_252E379F4();

        MEMORY[0x2530AD570](0x20656D616E207327, 0xEF20746F6E207369);
        MEMORY[0x2530AD570](v16, v18);

        sub_252CC3D90(v19, v20, 0xD00000000000006FLL, 0x8000000252E977A0);
        goto LABEL_42;
      }
    }
  }

  if ([a1 outerDeviceType])
  {
    v24 = [a1 outerDeviceType];
    v25 = (*v2 + 256);
    v26 = *v25;
    if ((*v25)() != v24)
    {
      v27 = (*(*v2 + 272))();
      v28 = sub_252DB4F4C(v24, v27);

      if ((v28 & 1) == 0)
      {
        v30 = (v26)(v29);
        if (v30 == 38)
        {
          v31 = &unk_2864A0E78;
        }

        else
        {
          if (v30 != 41)
          {
            v33 = MEMORY[0x277D84FA0];
LABEL_31:
            v34 = sub_252DB4F4C(v24, v33);

            if ((v34 & 1) != 0 || sub_252D4FE78(v24))
            {
              goto LABEL_33;
            }

            if (qword_27F53F4C8 != -1)
            {
              swift_once();
            }

            v40 = sub_252E36AD4();
            __swift_project_value_buffer(v40, qword_27F544D00);
            sub_252E379F4();
            MEMORY[0x2530AD570](*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
            MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E97870);
            [a1 outerDeviceType];
            sub_252E37AE4();
            sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000006FLL, 0x8000000252E977A0);
LABEL_42:

            return 0;
          }

          v31 = &unk_2864A0EA0;
        }

        v33 = sub_2529FC004(v31);
        goto LABEL_31;
      }
    }
  }

LABEL_33:

  return sub_252967EAC(a1);
}

uint64_t sub_252D51310(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
  v10 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_16:
    v4 = sub_252E378C4();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](i, v3);
          v7 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_13:
            __break(1u);
            return v10;
          }
        }

        else
        {
          if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v6 = *(v3 + 8 * i + 32);

          v7 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_13;
          }
        }

        if (sub_252967B6C(a1))
        {
          sub_252E37A94();
          v8 = *(v10 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        if (v7 == v4)
        {
          return v10;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252D51460(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
  v33 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_34:
    v3 = sub_252E378C4();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v30 = v2;
      v31 = v2 & 0xC000000000000001;
      v5 = v2 & 0xFFFFFFFFFFFFFF8;
      v6 = v2 + 32;
      while (1)
      {
        while (1)
        {
          if (v31)
          {
            MEMORY[0x2530ADF00](v4, v30);
            v8 = __OFADD__(v4++, 1);
            if (v8)
            {
LABEL_31:
              __break(1u);
              return v33;
            }
          }

          else
          {
            if (v4 >= *(v5 + 16))
            {
              __break(1u);
              goto LABEL_34;
            }

            v7 = *(v6 + 8 * v4);

            v8 = __OFADD__(v4++, 1);
            if (v8)
            {
              goto LABEL_31;
            }
          }

          v9 = *(a1 + 16);
          if (v9)
          {
            break;
          }

LABEL_27:
          sub_252E37A94();
          v28 = *(v33 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          if (v4 == v3)
          {
            return v33;
          }
        }

        v2 = 0;
        while (2)
        {
          v10 = *(a1 + 32 + 8 * v2);
          v11 = sub_252CD95D8();
          v12 = *(v11 + 16);
          v13 = 32;
          if (v10 != 5)
          {
            do
            {
              if (!v12)
              {

                v24 = sub_252CD995C();
                v25 = *(v24 + 16);
                v26 = 32;
                while (v25)
                {
                  v27 = *(v24 + v26);
                  v26 += 8;
                  --v25;
                  if (v27 == v10)
                  {
                    goto LABEL_26;
                  }
                }

                goto LABEL_4;
              }

              v23 = *(v11 + v13);
              v13 += 8;
              --v12;
            }

            while (v23 != v10);
LABEL_26:
            ++v2;

            if (v2 != v9)
            {
              continue;
            }

            goto LABEL_27;
          }

          break;
        }

        while (v12)
        {
          v14 = *(v11 + v13);
          v13 += 8;
          --v12;
          if (v14 == 3)
          {

            v15 = sub_252CD95D8();
            v16 = *(v15 + 16);
            v17 = 32;
            while (v16)
            {
              v18 = *(v15 + v17);
              v17 += 8;
              --v16;
              if (v18 == 4)
              {

                v19 = sub_252CD95D8();
                v20 = *(v19 + 16);
                v21 = 32;
                while (v20)
                {
                  v22 = *(v19 + v21);
                  v21 += 8;
                  --v20;
                  if (v22 == 2)
                  {
                    goto LABEL_26;
                  }
                }

                goto LABEL_4;
              }
            }

            break;
          }
        }

LABEL_4:

        if (v4 == v3)
        {
          return v33;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252D516B8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_252E36AD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = [a2 userTask];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 attribute];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C130;
    *(inited + 32) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540228, &unk_252E3D910);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_252E3C290;
    *(v15 + 32) = v13;
    v16 = a1;
    v17 = sub_252D51310(inited);

    v18 = sub_252C75958(v17);

    v19 = sub_252D51460(v15);
    swift_setDeallocating();
    v20 = sub_252C75958(v19);

    v21 = sub_2529F9A94(v20, v18);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_252E3C130;
    *(v22 + 32) = a1;
    v23 = a1;
    v24 = sub_252D51310(v22);
    swift_setDeallocating();
    v25 = *(v22 + 16);
    swift_arrayDestroy();
    v21 = sub_252C75958(v24);
  }

  v26 = v21;

  if ((v26 & 0xC000000000000001) != 0)
  {

    v27 = sub_252E378C4();

    if (v27 == 1)
    {
LABEL_6:
      v28 = sub_252DA0BE0(v26);

      if (qword_27F53F4C8 != -1)
      {
        swift_once();
      }

      v29 = __swift_project_value_buffer(v6, qword_27F544D00);
      (*(v7 + 16))(v10, v29, v6);
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E978C0);
      if (v28)
      {
        v31 = *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v30 = *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
      }

      else
      {
        v31 = 0;
        v30 = 0;
      }

      v39 = v31;
      v40 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
      sub_252E37AE4();

      MEMORY[0x2530AD570](0x20726F6620, 0xE500000000000000);
      MEMORY[0x2530AD570](*(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
      sub_252CC3D90(v41, v42, 0xD00000000000006FLL, 0x8000000252E977A0);

      (*(v7 + 8))(v10, v6);
      goto LABEL_17;
    }
  }

  else if (*(v26 + 16) == 1)
  {
    goto LABEL_6;
  }

  v28 = sub_252D4DFC8();
  if (v28)
  {
    if (qword_27F53F4C8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v6, qword_27F544D00);
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_252E379F4();

    v41 = 0xD000000000000027;
    v42 = 0x8000000252E97890;
    v32 = *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v33 = *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    MEMORY[0x2530AD570](v32, v33);

    MEMORY[0x2530AD570](0x20726F6620, 0xE500000000000000);
    MEMORY[0x2530AD570](*(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
    sub_252CC3D90(v41, v42, 0xD00000000000006FLL, 0x8000000252E977A0);
  }

LABEL_17:
  v34 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v34 + 192), &v41);

  v35 = v43;
  v36 = v44;
  __swift_project_boxed_opaque_existential_1(&v41, v43);
  (*(v36 + 8))(v28, v35, v36);

  return __swift_destroy_boxed_opaque_existential_1(&v41);
}

uint64_t sub_252D51C5C()
{
  sub_252E379F4();
  v2 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  MEMORY[0x2530AD570](0x6976726573207B20, 0xED0000203A736563);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
  v4 = type metadata accessor for Service();
  v5 = MEMORY[0x2530AD730](v3, v4);
  MEMORY[0x2530AD570](v5);

  MEMORY[0x2530AD570](125, 0xE100000000000000);
  return v2;
}

char *sub_252D51D3C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v19 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
    }

    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
    goto LABEL_13;
  }

  v21 = MEMORY[0x277D84F90];
  result = sub_2529AA3A0(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v20 = v0;
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = sub_252CDC7C8();
      v9 = v8;

      v11 = *(v21 + 16);
      v10 = *(v21 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2529AA3A0((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      *(v21 + 16) = v11 + 1;
      v12 = v21 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
    }

    while (v3 != v5);
    v1 = v20;
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    sub_2529E6488(&qword_27F541110, &qword_27F540480, &qword_252E3C910);
    sub_252E36EA4();

    v13 = sub_252AD24A4();
    v15 = v14;

    sub_252E379F4();
    v17 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v16 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    MEMORY[0x2530AD570](0x72657320200A7B20, 0xEF0A3A7365636976);
    MEMORY[0x2530AD570](v13, v15);

    MEMORY[0x2530AD570](32010, 0xE200000000000000);
    v18 = sub_252AD24A4();

    return v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_252D51FE0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) profiles];
  sub_25293F638(0, &qword_27F540170, 0x277CD1760);
  v2 = sub_252E37264();

  if (v2 >> 62)
  {
LABEL_19:
    v3 = sub_252E378C4();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:

    return 0;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x2530ADF00](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      break;
    }

LABEL_5:
    ++v4;
    if (v7 == v3)
    {
      goto LABEL_20;
    }
  }

  v9 = [v8 settings];
  v10 = [v9 supportedFeatures];

  if ((v10 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544D60);
  sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E97950, 0xD00000000000006FLL, 0x8000000252E977A0);
  return 1;
}

uint64_t sub_252D521EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);

  v3 = sub_252C75958(v2);

  type metadata accessor for HomeStore();
  v4 = static HomeStore.shared.getter();
  v5 = sub_2529D9D18();

  v16 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
LABEL_16:
    v6 = sub_252E378C4();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v7, v5);
          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v14 = v16;
            goto LABEL_18;
          }
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v9 = *(v5 + 8 * v7 + 32);

          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_13;
          }
        }

        v11 = sub_25294F970();
        v12 = sub_252C75958(v11);

        v13 = sub_252A11A10(v3, v12);

        if (v13)
        {
        }

        else
        {
          sub_252E37A94();
          v8 = *(v16 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        ++v7;
        if (v10 == v6)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v14 = MEMORY[0x277D84F90];
LABEL_18:

  return v14;
}

uint64_t sub_252D523AC()
{
  v36 = sub_252E32E84();
  v0 = *(v36 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x28223BE20](v36);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - v5;
  type metadata accessor for HomeStore();
  v7 = static HomeStore.shared.getter();
  v8 = sub_2529D984C();

  v39 = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
    goto LABEL_30;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v27 = v8;
  if (!v9)
  {
LABEL_31:
    v25 = MEMORY[0x277D84F90];
    goto LABEL_32;
  }

  while (1)
  {
    v10 = 0;
    v11 = 0;
    v35 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
    v30 = v8 & 0xFFFFFFFFFFFFFF8;
    v31 = v8 & 0xC000000000000001;
    v28 = v9;
    v29 = v8 + 32;
    v8 = v0 + 8;
LABEL_6:
    if (v31)
    {
      break;
    }

    if (v10 >= *(v30 + 16))
    {
      goto LABEL_29;
    }

    v12 = *(v29 + 8 * v10);

    v14 = __OFADD__(v10, 1);
    v15 = v10 + 1;
    if (!v14)
    {
      goto LABEL_9;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v9 = sub_252E378C4();
    v27 = v8;
    if (!v9)
    {
      goto LABEL_31;
    }
  }

  v13 = MEMORY[0x2530ADF00](v10, v27);
  v14 = __OFADD__(v10, 1);
  v15 = v10 + 1;
  if (v14)
  {
    goto LABEL_28;
  }

LABEL_9:
  v34 = v13;
  v16 = [*(v13 + OBJC_IVAR____TtC22HomeAutomationInternal4Zone_delegate) rooms];
  sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
  v17 = sub_252E37264();

  v18 = sub_252D4C678(v17);

  v32 = v11;
  v33 = v15;
  v38 = v18 & 0xFFFFFFFFFFFFFF8;
  if (v18 >> 62)
  {
    v0 = sub_252E378C4();
  }

  else
  {
    v0 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = 0;
  do
  {
    if (v0 == v19)
    {

      goto LABEL_5;
    }

    if ((v18 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x2530ADF00](v19, v18);
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v19 >= *(v38 + 16))
      {
        goto LABEL_27;
      }

      v20 = *(v18 + 8 * v19 + 32);

      if (__OFADD__(v19, 1))
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    v21 = [*(v20 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
    sub_252E32E64();

    v22 = [*(v37 + v35) uniqueIdentifier];
    sub_252E32E64();

    LOBYTE(v22) = sub_252E32E54();

    v23 = *v8;
    v24 = v36;
    (*v8)(v4, v36);
    v23(v6, v24);
    ++v19;
  }

  while ((v22 & 1) == 0);

  sub_252E37A94();
  v0 = *(v39 + 16);
  sub_252E37AC4();
  sub_252E37AD4();
  sub_252E37AA4();
LABEL_5:
  v11 = v32;
  v10 = v33;
  if (v33 != v28)
  {
    goto LABEL_6;
  }

  v25 = v39;
LABEL_32:

  return v25;
}

id sub_252D527F0(SEL *a1, uint64_t (*a2)(void), uint64_t (*a3)(id))
{
  result = [*(v3 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) *a1];
  if (result)
  {
    v7 = result;
    v8 = a2(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    return a3(v7);
  }

  return result;
}

uint64_t sub_252D52870()
{
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
}

uint64_t Accessory.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

  v5 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);

  return v0;
}

uint64_t Accessory.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

  v5 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate);

  v6 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Accessory()
{
  result = qword_27F5459F0;
  if (!qword_27F5459F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ConfirmationParameters()
{
  result = qword_27F545A10;
  if (!qword_27F545A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252D52CF8()
{
  type metadata accessor for ControlHomeIntent();
  if (v0 <= 0x3F)
  {
    sub_252BAB7B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_252D52D88(void **a1)
{
  v2 = sub_252E36AD4();
  v66 = *(v2 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v2);
  v65 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v2, qword_27F544C58);
  v67 = "ping confirm intent";
  sub_252CC3D90(0xD00000000000002ELL, 0x8000000252E97B50, 0xD000000000000088, 0x8000000252E979C0);
  v6 = *a1;
  v7 = sub_252B680FC();
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 504 * v9 - 472);
    memcpy(v71, v10, sizeof(v71));
    memmove(v72, v10, 0x1F8uLL);
    GEOLocationCoordinate2DMake(v72);
    sub_2529353AC(v71, v73);
  }

  else
  {

    sub_25293DEE0(v72);
  }

  memcpy(v73, v72, 0x1F8uLL);
  v11 = [v6 filters];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for HomeFilter();
    v13 = sub_252E37264();

    v14 = 0;
    v15 = sub_252DD5A58(v13);
  }

  else
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
  }

  v16 = sub_252C758E0(v15);

  v17 = sub_252DD6238(v16);

  if (!v17)
  {
    goto LABEL_22;
  }

  type metadata accessor for HomeStore();
  v18 = static HomeStore.shared.getter();
  v19 = sub_2529D9114();

  if (!v19)
  {
    goto LABEL_17;
  }

  if ((sub_252E32E54() & 1) == 0 || *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
  {

LABEL_17:

    goto LABEL_18;
  }

  if (*(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
  {

LABEL_22:
    v23 = 0;
    goto LABEL_23;
  }

  v24 = sub_252E37DB4();

  if (v24)
  {
    goto LABEL_22;
  }

LABEL_18:
  v20 = static HomeStore.shared.getter();
  v21 = sub_2529D8DC0();

  if (v21 >> 62)
  {
    v22 = sub_252E378C4();
    v14 = 0;
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = v22 > 1;
LABEL_23:
  v25 = sub_252C4BEB8();
  v26 = *(sub_252B680FC() + 74);

  if (v26 & 1) != 0 || (v27 = *(sub_252B680FC() + 73), , (v27) || (v28 = *(sub_252B680FC() + 129), , v28 == 1))
  {
    v29 = "as a get request.";
    v30 = 0xD000000000000032;
LABEL_27:
    v31 = v29 | 0x8000000000000000;
    v32 = v67 | 0x8000000000000000;
LABEL_28:
    sub_252CC3D90(v30, v31, 0xD000000000000088, v32);
    sub_25299F5D4(v73);
    return 0;
  }

  v34 = [v6 userTask];
  if (v34)
  {
    v35 = v34;
    if ([v34 taskType] == 4)
    {

LABEL_34:
      v29 = "\n  Will skip the confirmation.";
      v30 = 0xD000000000000031;
      goto LABEL_27;
    }

    v36 = [v35 taskType];

    if (v36 == 5)
    {
      goto LABEL_34;
    }
  }

  else
  {
    sub_252C515AC();
  }

  if ((v25 & 1) == 0)
  {
    memcpy(v72, v73, 0x1F8uLL);
    if (sub_252956B94(v72) != 1)
    {
      v63 = 0;
      v37 = v72[47];
      v38 = *(v72[47] + 16);
      memcpy(v71, v73, sizeof(v71));
      sub_2529353AC(v71, v68);
      v39 = (v37 + 32);
      v64 = "resolvedLocation";
      v61 = 0x8000000252E67980;
      v62 = 0x8000000252E679B0;
      v59 = 0x8000000252E67940;
      v60 = 0x8000000252E67960;
      while (2)
      {
        if (v38)
        {
          switch(*v39)
          {
            case 0xC:

              break;
            default:
              v40 = sub_252E37DB4();

              ++v39;
              --v38;
              if ((v40 & 1) == 0)
              {
                continue;
              }

              break;
          }

          sub_25299F5D4(v73);
          if (qword_27F53F520 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v2, qword_27F544E08);
          v30 = 0xD00000000000005ELL;
          v31 = 0x8000000252E97C20;
          v32 = v67 | 0x8000000000000000;
          goto LABEL_28;
        }

        break;
      }

      sub_25299F5D4(v73);
      v14 = v63;
    }
  }

  if (v23)
  {
    memcpy(v72, v73, 0x1F8uLL);
    if (sub_252956B94(v72) != 1)
    {
      v63 = v14;
      v41 = v72[47];
      v42 = *(v72[47] + 16);
      memcpy(v71, v73, sizeof(v71));
      sub_2529353AC(v71, v68);
      v43 = (v41 + 32);
      v64 = 0x8000000252E679D0;
      v61 = 0x8000000252E67960;
      v62 = 0x8000000252E679B0;
      v60 = 0x8000000252E67940;
      while (2)
      {
        if (v42)
        {
          switch(*v43)
          {
            case 8:

              break;
            default:
              v45 = sub_252E37DB4();

              ++v43;
              --v42;
              if ((v45 & 1) == 0)
              {
                continue;
              }

              break;
          }

          sub_25299F5D4(v73);
          LODWORD(v64) = 0;
          v44 = 0xE400000000000000;
          v63 = 1702195828;
          goto LABEL_57;
        }

        break;
      }

      sub_25299F5D4(v73);
    }

    LODWORD(v64) = 1;
    v44 = 0xE400000000000000;
    v63 = 1702195828;
  }

  else
  {
    LODWORD(v64) = 0;
    v44 = 0xE500000000000000;
    v63 = 0x65736C6166;
  }

LABEL_57:
  (*(v66 + 16))(v65, v5, v2);
  v72[0] = 0;
  v72[1] = 0xE000000000000000;
  sub_252E379F4();
  v69 = v72[0];
  v70 = v72[1];
  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E97B80);
  if (v64)
  {
    v46 = 1702195828;
  }

  else
  {
    v46 = 0x65736C6166;
  }

  if (v64)
  {
    v47 = 0xE400000000000000;
  }

  else
  {
    v47 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v46, v47);

  MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E97BA0);
  if (v25)
  {
    v48 = 1702195828;
  }

  else
  {
    v48 = 0x65736C6166;
  }

  if (v25)
  {
    v49 = 0xE400000000000000;
  }

  else
  {
    v49 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v48, v49);

  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E97BD0);
  MEMORY[0x2530AD570](v63, v44);

  MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E97BF0);
  memcpy(v72, v73, 0x1F8uLL);
  if (sub_252956B94(v72) == 1)
  {
    v50 = 2;
  }

  else
  {
    v51 = v72[47];
    v52 = *(v72[47] + 16);
    memcpy(v71, v73, sizeof(v71));
    sub_2529353AC(v71, v68);
    v53 = (v51 + 32);
    v62 = 0x8000000252E679B0;
    v63 = 0x8000000252E679D0;
    v60 = 0x8000000252E67940;
    v61 = 0x8000000252E67960;
    while (2)
    {
      v55 = v52;
      if (v52-- != 0)
      {
        switch(*v53)
        {
          case 8:

            break;
          default:
            v54 = sub_252E37DB4();

            ++v53;
            if ((v54 & 1) == 0)
            {
              continue;
            }

            break;
        }
      }

      break;
    }

    v50 = v55 != 0;
    sub_25299F5D4(v73);
  }

  v71[0] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  v57 = sub_252E36F94();
  MEMORY[0x2530AD570](v57);

  v58 = v65;
  sub_252CC3D90(v69, v70, 0xD000000000000088, v67 | 0x8000000000000000);

  sub_25299F5D4(v73);
  (*(v66 + 8))(v58, v2);
  return v64;
}

uint64_t sub_252D53B88()
{
  v0 = sub_252B680FC();
  swift_beginAccess();
  v1 = *(v0 + 16);

  v3 = 0;
  v4 = *(v1 + 16);
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = 504 * v3 + 416;
  while (v4 != v3)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      return result;
    }

    v7 = *(v1 + v6);
    v6 += 504;
    ++v3;
    if (v7 != 22)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2529F9538(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v9 >= v8 >> 1)
      {
        result = sub_2529F9538((v8 > 1), v9 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v9 + 1;
      *(v5 + v9 + 32) = v7;
      goto LABEL_2;
    }
  }

  if (sub_2529A7E28(6, v5))
  {
LABEL_12:

    return 1;
  }

  v10 = sub_2529A7E28(5, v5);

  if (v10)
  {
    return 1;
  }

  v11 = sub_252B680FC();
  swift_beginAccess();
  v12 = *(v11 + 16);

  v13 = 0;
  v14 = *(v12 + 16);
  v15 = MEMORY[0x277D84F90];
LABEL_16:
  v16 = 504 * v13 + 56;
  while (v14 != v13)
  {
    if (v13 >= *(v12 + 16))
    {
      goto LABEL_38;
    }

    v17 = *(v12 + v16);
    v16 += 504;
    ++v13;
    if (v17 != 2)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2529F9524(0, *(v15 + 16) + 1, 1, v15);
        v15 = result;
      }

      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_2529F9524((v18 > 1), v19 + 1, 1, v15);
        v15 = result;
      }

      *(v15 + 16) = v19 + 1;
      *(v15 + v19 + 32) = v17 & 1;
      goto LABEL_16;
    }
  }

  v20 = *(v15 + 16);
  v21 = (v15 + 32);
  v22 = (v15 + 32);
  while (v20)
  {
    if ((*v22 & 1) == 0)
    {
LABEL_35:

      goto LABEL_12;
    }

    v23 = sub_252E37DB4();

    ++v22;
    --v20;
    if (v23)
    {
      goto LABEL_12;
    }
  }

  v24 = *(v15 + 16);
  while (v24)
  {
    if (*v21 == 1)
    {
      goto LABEL_35;
    }

    v25 = sub_252E37DB4();

    ++v21;
    --v24;
    if (v25)
    {
      goto LABEL_12;
    }
  }

  return 0;
}

uint64_t sub_252D53EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_252BAC3A4();
  if (*(v6 + 2) && (v7 = *(v6 + 4), , v8 = sub_252BAC3B8(), *(v8 + 2)))
  {
    v9 = *(v8 + 4);

    if (qword_27F53F490 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544C58);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000028, 0x8000000252E97E60);
    v11 = a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
    v12 = *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v13 = *(v11 + 8);
    MEMORY[0x2530AD570](v12, v13);
    MEMORY[0x2530AD570](8250, 0xE200000000000000);
    sub_252E37374();
    sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000088, 0x8000000252E979C0);

    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000028, 0x8000000252E97E90);
    MEMORY[0x2530AD570](v12, v13);
    MEMORY[0x2530AD570](8250, 0xE200000000000000);
    sub_252E37374();
    sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000088, 0x8000000252E979C0);

    if (v7 <= a3)
    {
      if (v9 >= a3)
      {
        v16 = 0.0;
        v15 = 1;
      }

      else
      {
        v15 = 0;
        v16 = v9;
      }
    }

    else
    {
      v15 = 0;
      v16 = v7;
    }

    v18 = (v7 > a3) | ((v9 < a3) << 8);
    v17 = 1;
  }

  else
  {

    v16 = 0.0;
    v15 = 0;
    v17 = 0;
    v18 = 2;
  }

  *a2 = v18;
  *(a2 + 8) = v16;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = v15;
  *(a2 + 40) = v17;
  return result;
}

id sub_252D5414C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  v6 = *(sub_252DF8A60(a1) + 2);

  if (v6)
  {
    v7 = COERCE_DOUBLE(sub_252987D34(a1));
    if (a3 == 2)
    {
      if ((v8 & 1) == 0)
      {
        v9 = round((v7 * 9.0 / 5.0 + 32.0) * 100.0) / 100.0;
        a3 = 2;
LABEL_7:
        v10 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v11 = sub_252E36F04();
        v12 = [v10 initWithIdentifier:0 displayString:v11];

        v13 = v12;
        [v13 setDoubleValue_];
        [v13 setUnit_];
        [v13 setType_];

        v14 = objc_allocWithZone(type metadata accessor for HomeUserTask());
        v15 = sub_252E36F04();
        v16 = [v14 initWithIdentifier:0 displayString:v15];

        v17 = v16;
        [v17 setTaskType_];
        [v17 setAttribute_];
        [v17 setValue_];

        [v5 setUserTask_];
        type metadata accessor for HomeFilter();
        v18 = sub_252E37254();
        [v5 setFilters_];
      }
    }

    else if ((v8 & 1) == 0)
    {
      v9 = v7;
      goto LABEL_7;
    }
  }

  return v5;
}

id sub_252D54368(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  v6 = a1[2];
  if (v6)
  {
    v7 = a1 + 4;
    v8 = MEMORY[0x277D84F90];
    v9 = a1[2];
    do
    {
      v10 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_2529F7D44(0, *(v8 + 2) + 1, 1, v8);
      }

      v12 = *(v8 + 2);
      v11 = *(v8 + 3);
      if (v12 >= v11 >> 1)
      {
        v8 = sub_2529F7D44((v11 > 1), v12 + 1, 1, v8);
      }

      *(v8 + 2) = v12 + 1;
      *&v8[8 * v12 + 32] = v10;
      v7 += 2;
      --v9;
    }

    while (v9);
    v13 = a1 + 5;
    v14 = MEMORY[0x277D84F90];
    do
    {
      v15 = *v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_2529F7D44(0, *(v14 + 2) + 1, 1, v14);
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      if (v17 >= v16 >> 1)
      {
        v14 = sub_2529F7D44((v16 > 1), v17 + 1, 1, v14);
      }

      *(v14 + 2) = v17 + 1;
      *&v14[8 * v17 + 32] = v15;
      v13 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
    v8 = MEMORY[0x277D84F90];
  }

  v18 = sub_252987D34(v8);
  v20 = v19;

  if (a3 == 2)
  {
    if ((v20 & 1) == 0)
    {
      v21 = sub_252987D34(v14);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        *&v24.f64[0] = v21;
        *&v24.f64[1] = v18;
        __asm { FMOV            V1.2D, #9.0 }

        v30 = vmulq_f64(v24, _Q1);
        __asm { FMOV            V1.2D, #5.0 }

        v32 = vaddq_f64(vdivq_f64(v30, _Q1), vdupq_n_s64(0x4040000000000000uLL));
        v33 = vdupq_n_s64(0x4059000000000000uLL);
        v34 = vdivq_f64(vrndaq_f64(vmulq_f64(v32, v33)), v33);
LABEL_24:
        v55 = v34;
        v38 = objc_allocWithZone(type metadata accessor for HomeAttributeRange());
        v39 = sub_252E36F04();
        v40 = [v38 initWithIdentifier:0 displayString:v39];

        v41 = v40;
        [v41 setLowerValue_];
        [v41 setUpperValue_];

        v42 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v43 = sub_252E36F04();
        v44 = [v42 initWithIdentifier:0 displayString:v43];

        v45 = v44;
        [v45 setType_];
        v46 = v41;
        [v45 setRangeValue_];

        v47 = objc_allocWithZone(type metadata accessor for HomeUserTask());
        v48 = sub_252E36F04();
        v49 = [v47 initWithIdentifier:0 displayString:v48];

        v50 = v49;
        [v50 setTaskType_];
        [v50 setAttribute_];
        [v50 setValue_];

        [v5 setUserTask_];
        v51 = [v5 userTask];
        v52 = [v51 value];

        [v52 setUnit_];
        type metadata accessor for HomeFilter();
        v53 = sub_252E37254();
        [v5 setFilters_];

        return v5;
      }

      return v5;
    }

LABEL_21:

    return v5;
  }

  if (v20)
  {
    goto LABEL_21;
  }

  v35 = sub_252987D34(v14);
  v37 = v36;

  if ((v37 & 1) == 0)
  {
    *&v34.f64[0] = v35;
    *&v34.f64[1] = v18;
    goto LABEL_24;
  }

  return v5;
}

uint64_t sub_252D547C8(void *a1)
{
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v2 + 288), &v30);

  v3 = v32;
  v4 = v33;
  __swift_project_boxed_opaque_existential_1(&v30, v32);
  v5 = (*(v4 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(&v30);
  if (v5)
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544D30);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000047, 0x8000000252E97EE0);
    v7 = a1;
    v8 = [v7 description];
    v9 = sub_252E36F34();
    v11 = v10;

    MEMORY[0x2530AD570](v9, v11);

    sub_252CC3D90(v30, v31, 0xD000000000000088, 0x8000000252E979C0);

    type metadata accessor for SiriRemembersProvider();
    inited = swift_initStackObject();
    strcpy((inited + 16), "HomeAutomation");
    *(inited + 31) = -18;
    *(inited + 32) = 0xD00000000000001DLL;
    *(inited + 40) = 0x8000000252E73EE0;
    *(inited + 48) = 0xD000000000000011;
    *(inited + 56) = 0x8000000252E73F00;
    v13 = sub_252E14D14(v7);
    if (v13)
    {
      v14 = v13;
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_252E379F4();

      v30 = 0xD000000000000020;
      v31 = 0x8000000252E7C000;
      v15 = [v14 description];
      v16 = sub_252E36F34();
      v18 = v17;

      MEMORY[0x2530AD570](v16, v18);

      sub_252CC3D90(v30, v31, 0xD000000000000088, 0x8000000252E979C0);

      *(sub_252B680FC() + 88) = 1;

      v19 = sub_252B680FC();

      swift_setDeallocating();
      v20 = *(inited + 24);

      v21 = *(inited + 40);

      v22 = *(inited + 56);

      v23 = *(v19 + 96);
      *(v19 + 96) = v7;
      v24 = v7;

      return 1;
    }

    swift_setDeallocating();
    v26 = *(inited + 24);

    v27 = *(inited + 40);

    v28 = *(inited + 56);
  }

  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v29 = sub_252E36AD4();
  __swift_project_value_buffer(v29, qword_27F544D30);
  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E97EC0, 0xD000000000000088, 0x8000000252E979C0);
  return 0;
}

uint64_t sub_252D54B70(unint64_t a1)
{
  if (qword_27F53F490 != -1)
  {
    goto LABEL_101;
  }

  while (1)
  {
    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544C58);
    sub_252CC3D90(0xD000000000000035, 0x8000000252E97D00, 0xD000000000000088, 0x8000000252E979C0);
    if (sub_252D53B88())
    {
      sub_252CC3D90(0xD00000000000004FLL, 0x8000000252E97E10, 0xD000000000000088, 0x8000000252E979C0);
      return 0;
    }

    v3 = *a1;
    v4 = [*a1 userTask];
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = v4;
    v6 = [v3 filters];
    if (!v6)
    {

LABEL_9:
      v11 = sub_252E36AC4();
      v12 = sub_252E374D4();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_252917000, v11, v12, "Failed to retrieve list of targeted accessories from intent filters.", v13, 2u);
        MEMORY[0x2530AED00](v13, -1, -1);
      }

      return 0;
    }

    v7 = v6;
    v117 = v3;
    type metadata accessor for HomeFilter();
    v8 = sub_252E37264();

    type metadata accessor for HomeStore();
    v9 = static HomeStore.shared.getter();
    a1 = HomeStore.services(matching:supporting:)(v8, 0);
    LOBYTE(v7) = v10;

    if (v7)
    {
      sub_252929F10(a1, 1);

      goto LABEL_9;
    }

    v114 = v8;
    v123 = MEMORY[0x277D84F90];
    v15 = a1 & 0xFFFFFFFFFFFFFF8;
    v16 = a1 >> 62 ? sub_252E378C4() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v119 = v5;
    if (!v16)
    {
      break;
    }

    v17 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x2530ADF00](v17, a1);
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_99;
      }

LABEL_22:
      v21 = v15;
      v22 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
      v23 = [*(v19 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v24 = sub_252E36F34();
      v26 = v25;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v27 = off_27F546230;
      if (*(off_27F546230 + 2) && (v28 = sub_252A44A10(v24, v26), (v29 & 1) != 0))
      {
        v30 = *(v27[7] + 8 * v28);

        if (v30 == 3)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

      v31 = [*(v19 + v22) serviceType];
      v32 = sub_252E36F34();
      v34 = v33;

      if (!v27[2] || (v35 = sub_252A44A10(v32, v34), (v36 & 1) == 0))
      {

LABEL_34:

        goto LABEL_18;
      }

      v37 = *(v27[7] + 8 * v35);

      if (v37 != 29)
      {
        goto LABEL_34;
      }

LABEL_17:
      sub_252E37A94();
      v18 = *(v123 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
LABEL_18:
      ++v17;
      v15 = v21;
      if (v20 == v16)
      {
        v38 = v123;
        v5 = v119;
        goto LABEL_40;
      }
    }

    if (v17 >= *(v15 + 16))
    {
      goto LABEL_100;
    }

    v19 = *(a1 + 8 * v17 + 32);

    v20 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_22;
    }

LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    swift_once();
  }

  v38 = MEMORY[0x277D84F90];
LABEL_40:
  sub_252929F10(a1, 0);
  if ([v5 attribute] != 6)
  {

    v80 = sub_252E36AC4();
    v81 = sub_252E374C4();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      v83 = "UserTask attribute is not temperature. Skipping TargetTemperatureCondition confirmation.";
LABEL_97:
      _os_log_impl(&dword_252917000, v80, v81, v83, v82, 2u);
      MEMORY[0x2530AED00](v82, -1, -1);
    }

LABEL_98:

    return 0;
  }

  v39 = [v5 value];
  if (!v39)
  {

    v80 = sub_252E36AC4();
    v81 = sub_252E374D4();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      v83 = "Failed to retrieve the target temperature.";
      goto LABEL_97;
    }

    goto LABEL_98;
  }

  v40 = v39;
  [v39 doubleValue];
  v42 = v41;

  v123 = 0;
  v124 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570]();
  sub_252E37374();
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000088, 0x8000000252E979C0);

  result = sub_252C6E240(v117);
  v112 = result;
  if (result == 2)
  {
    v42 = round((v42 + -32.0) * 5.0 / 9.0 * 100.0) / 100.0;
  }

  if (v38 < 0 || (v38 & 0x4000000000000000) != 0)
  {
    result = sub_252E378C4();
    v43 = result;
    if (!result)
    {
      goto LABEL_104;
    }

LABEL_47:
    if (v43 < 1)
    {
      __break(1u);
      return result;
    }

    v44 = 0;
    v45 = MEMORY[0x277D84F90];
    __asm { FMOV            V0.2D, #5.0 }

    v110 = _Q0;
    v111 = vdupq_n_s64(0xC040000000000000);
    __asm { FMOV            V1.2D, #9.0 }

    v108 = vdupq_n_s64(0x4059000000000000uLL);
    v109 = _Q1;
    v116 = v43;
    v118 = MEMORY[0x277D84F90];
    v115 = MEMORY[0x277D84F90];
    v52 = &off_279711000;
    while (1)
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v53 = MEMORY[0x2530ADF00](v44, v38);
      }

      else
      {
        v53 = *(v38 + 8 * v44 + 32);
      }

      v54 = [v5 v52[206]];
      if (v54)
      {
        v55 = v54;
        if ([v54 type] == 2)
        {
          sub_252D53EA8(v53, &v123, v42);
          v56 = v123;
          if (v123 != 2)
          {
            v121 = BYTE1(v123);
            v60 = v126;
            v61 = v127;
            v62 = v128;
            if ((v125 & 1) == 0)
            {
              v63 = v124;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v115 = sub_2529F7D44(0, *(v115 + 2) + 1, 1, v115);
              }

              v64 = v115;
              v66 = *(v115 + 2);
              v65 = *(v115 + 3);
              if (v66 >= v65 >> 1)
              {
                v64 = sub_2529F7D44((v65 > 1), v66 + 1, 1, v115);
              }

              *(v64 + 2) = v66 + 1;
              v115 = v64;
              *&v64[8 * v66 + 32] = v63;
              v52 = &off_279711000;
            }

            if (v62)
            {
              v67 = v118;
              goto LABEL_85;
            }

LABEL_80:
            v67 = v118;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v67 = sub_2529F7E5C(0, *(v118 + 2) + 1, 1, v118);
            }

            v76 = *(v67 + 2);
            v75 = *(v67 + 3);
            if (v76 >= v75 >> 1)
            {
              v67 = sub_2529F7E5C((v75 > 1), v76 + 1, 1, v67);
            }

            *(v67 + 2) = v76 + 1;
            v77 = &v67[16 * v76];
            *(v77 + 4) = v60;
            *(v77 + 5) = v61;
            v52 = &off_279711000;
LABEL_85:
            v118 = v67;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v45 = sub_2529F9638(0, *(v45 + 2) + 1, 1, v45);
            }

            v79 = *(v45 + 2);
            v78 = *(v45 + 3);
            if (v79 >= v78 >> 1)
            {
              v45 = sub_2529F9638((v78 > 1), v79 + 1, 1, v45);
            }

            *(v45 + 2) = v79 + 1;
            v45[v79 + 32] = (v56 | v121) & 1;
            goto LABEL_92;
          }
        }

        if ([v55 type] == 6)
        {
          sub_252CC3D90(0xD000000000000016, 0x8000000252E76630, 0xD000000000000088, 0x8000000252E979C0);
          v57 = [v55 rangeValue];
          v58 = v57;
          if (v57)
          {
            [v57 lowerValue];
            v120 = v59;
          }

          else
          {
            v120 = 0.0;
          }

          v68 = [v55 rangeValue];
          v69 = v68;
          v70.f64[0] = 0.0;
          v70.f64[1] = v120;
          v122 = v70;
          if (v68)
          {
            [v68 upperValue];
            v113 = v71;

            v72.f64[1] = v122.f64[1];
            v72.f64[0] = v113;
            if (v112 == 2 && v58)
            {
              v122 = vdivq_f64(vrndaq_f64(vmulq_f64(vdivq_f64(vmulq_f64(vaddq_f64(v72, v111), v110), v109), v108)), v108);
            }

            else
            {
              v122 = v72;
            }
          }

          v73 = sub_252BAC3CC();
          if (*(v73 + 2) && (v60 = *(v73 + 4), , v74 = sub_252BAC3E0(), *(v74 + 2)))
          {
            v61 = *(v74 + 4);

            if (v58 && v69)
            {
              v56 = v122.f64[1] < v60;
              v121 = v61 < v122.f64[0];
              goto LABEL_80;
            }
          }

          else
          {
          }

LABEL_92:
          v5 = v119;
          v43 = v116;
          goto LABEL_51;
        }
      }

LABEL_51:
      if (v43 == ++v44)
      {
        goto LABEL_105;
      }
    }
  }

  v43 = *(v38 + 16);
  if (v43)
  {
    goto LABEL_47;
  }

LABEL_104:
  v45 = MEMORY[0x277D84F90];
  v118 = MEMORY[0x277D84F90];
  v115 = MEMORY[0x277D84F90];
LABEL_105:

  v84 = *(v45 + 2);
  v85 = (v45 + 32);
  do
  {
    if (!v84)
    {

      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E97B80);
      MEMORY[0x2530AD570](0x65736C6166, 0xE500000000000000);
      MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E97D70);
      v88 = sub_252E37364();
      MEMORY[0x2530AD570](v88);

      MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E97DB0);
      v89 = MEMORY[0x277D84F90];
      v90 = MEMORY[0x2530AD730](MEMORY[0x277D84F90], MEMORY[0x277D839F8]);
      MEMORY[0x2530AD570](v90);

      MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E97DE0);
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445F0, &qword_252E54DE0);
      v92 = MEMORY[0x2530AD730](v89, v91);
      MEMORY[0x2530AD570](v92);

LABEL_116:
      sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000088, 0x8000000252E979C0);

      return 0;
    }

    v86 = *v85++;
    --v84;
  }

  while (v86 != 1);

  if (*(v115 + 2))
  {
    v87 = sub_252D5414C(v115, v114, v112);
  }

  else if (*(v118 + 2))
  {
    v87 = sub_252D54368(v118, v114, v112);
  }

  else
  {

    v87 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  }

  v93 = *(type metadata accessor for ConfirmationParameters() + 20);
  v94 = sub_252D547C8(v87);

  if (v94)
  {

    *(sub_252B680FC() + 77) = 0;

    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E97B80);
    MEMORY[0x2530AD570](0x65736C6166, 0xE500000000000000);
    MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E97D70);
    v95 = sub_252E37364();
    MEMORY[0x2530AD570](v95);

    MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E97DB0);
    v96 = MEMORY[0x277D84F90];
    v97 = MEMORY[0x2530AD730](MEMORY[0x277D84F90], MEMORY[0x277D839F8]);
    MEMORY[0x2530AD570](v97);

    MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E97DE0);
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445F0, &qword_252E54DE0);
    v99 = MEMORY[0x2530AD730](v96, v98);
    MEMORY[0x2530AD570](v99);

    goto LABEL_116;
  }

  *(sub_252B680FC() + 77) = 1;

  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E97B80);
  MEMORY[0x2530AD570](1702195828, 0xE400000000000000);
  MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E97D70);
  v100 = sub_252E37364();
  MEMORY[0x2530AD570](v100);

  MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E97DB0);
  v101 = MEMORY[0x2530AD730](v115, MEMORY[0x277D839F8]);
  v103 = v102;

  MEMORY[0x2530AD570](v101, v103);

  MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E97DE0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445F0, &qword_252E54DE0);
  v105 = MEMORY[0x2530AD730](v118, v104);
  v107 = v106;

  MEMORY[0x2530AD570](v105, v107);

  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000088, 0x8000000252E979C0);

  return 1;
}

uint64_t sub_252D55AD0()
{
  v0 = sub_252E33D64();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v5 + 16), &v28);

  __swift_project_boxed_opaque_existential_1(&v28, v30);
  v6 = sub_252E338B4();
  __swift_destroy_boxed_opaque_existential_1(&v28);
  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v7 + 16), &v28);

  __swift_project_boxed_opaque_existential_1(&v28, v30);
  v26 = sub_252E338E4();
  __swift_destroy_boxed_opaque_existential_1(&v28);
  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v8 + 16), &v28);

  __swift_project_boxed_opaque_existential_1(&v28, v30);
  sub_252E33824();
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  v25 = sub_252E33D74();
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(&v28);
  v9 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v9 + 16), &v28);

  __swift_project_boxed_opaque_existential_1(&v28, v30);
  sub_252E33D44();
  v24 = sub_252E33864();
  (*(v1 + 8))(v4, v0);
  __swift_destroy_boxed_opaque_existential_1(&v28);
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v10 = sub_252E36AD4();
  v23[1] = __swift_project_value_buffer(v10, qword_27F544C58);
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E97AD0);
  if (v6)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v6)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v11, v12);

  MEMORY[0x2530AD570](0x6143736920726F20, 0xEF203A79616C7072);
  v13 = v26;
  if (v26)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v26)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v14, v15);

  MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E97B10);
  v16 = v25;
  if (v25)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v25)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v17, v18);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E97B30);
  v19 = v24;
  if (v24)
  {
    v20 = 0x65736C6166;
  }

  else
  {
    v20 = 1702195828;
  }

  if (v24)
  {
    v21 = 0xE500000000000000;
  }

  else
  {
    v21 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v20, v21);

  sub_252CC3D90(v28, v29, 0xD000000000000088, 0x8000000252E979C0);

  return (v6 | v13) & v16 & ~v19 & 1;
}

uint64_t sub_252D55EC0(id *a1)
{
  v1 = [*a1 filters];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeFilter();
    v3 = sub_252E37264();

    v4 = sub_252DD5A58(v3);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = sub_252C758E0(v4);

  v6 = sub_252DD6238(v5);

  if (v6)
  {
    v7 = [*(v6 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) homeLocationStatus] & 0xFFFFFFFFFFFFFFFDLL;
    v8 = sub_252C4BEB8();
    v9 = 0;
    if ((v8 & 1) != 0 && v7 == 1)
    {
      v9 = sub_252D55AD0();
    }

    v20 = v7;
    if (qword_27F53F490 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544C58);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E97A50);
    if (v9)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (v9)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v11, v12);

    MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E97A70);
    v13 = sub_252E37D94();
    MEMORY[0x2530AD570](v13);

    MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E97A90);
    if (v8)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v8)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v14, v15);

    MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E97AB0);
    if (v20 == 1)
    {
      v16 = 1702195828;
    }

    else
    {
      v16 = 0x65736C6166;
    }

    if (v20 == 1)
    {
      v17 = 0xE400000000000000;
    }

    else
    {
      v17 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v16, v17);

    sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000088, 0x8000000252E979C0);
  }

  else
  {
    if (qword_27F53F490 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_27F544C58);
    sub_252CC4050(0xD000000000000033, 0x8000000252E97980, 0xD000000000000088, 0x8000000252E979C0, 0x6628657572547369, 0xEC000000293A726FLL, 31);
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_252D56254(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_252E34014();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D56318, 0, 0);
}

uint64_t sub_252D56318()
{
  v1 = *(v0 + 9);
  *(v0 + 14) = sub_252B4F670();
  v89 = *(sub_252B4F854() + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isSceneRequest);

  v2 = sub_252C2FBB4();
  if (v2 >> 62)
  {
    v6 = sub_252E378C4();

    if (v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    v91 = 0;
    goto LABEL_8;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = sub_252C2FBCC();
  if (v4 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {

    v91 = i != 0;
LABEL_8:
    v7 = sub_252C2FBB4();
    if (v7 >> 62)
    {
LABEL_39:
      v8 = sub_252E378C4();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v88 = v0;
    if (!v8)
    {
      LODWORD(v18) = 0;
      goto LABEL_46;
    }

    v9 = sub_252C2FBB4();
    v10 = v9;
    if (v9 >> 62)
    {
      break;
    }

    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_44;
    }

LABEL_13:
    v12 = 0;
    v13 = v10 & 0xC000000000000001;
    v14 = v10 & 0xFFFFFFFFFFFFFF8;
    v15 = v10 + 32;
    v16 = &off_279711000;
    while (1)
    {
      if (v13)
      {
        v17 = MEMORY[0x2530ADF00](v12, v10);
      }

      else
      {
        if (v12 >= *(v14 + 16))
        {
          goto LABEL_41;
        }

        v17 = *(v15 + 8 * v12);
      }

      v18 = v17;
      v19 = __OFADD__(v12++, 1);
      if (v19)
      {
        break;
      }

      v20 = [v17 v16[220]];
      if (!v20)
      {
LABEL_36:

        LODWORD(v18) = 0;
        goto LABEL_45;
      }

      v21 = v20;
      v85 = v18;
      type metadata accessor for HomeUserTaskResponse();
      v22 = sub_252E37264();

      if (v22 >> 62)
      {
        v23 = sub_252E378C4();
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = 0;
      do
      {
        if (v23 == v24)
        {

          v18 = v85;
          v0 = v88;
          goto LABEL_36;
        }

        if ((v22 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x2530ADF00](v24, v22);
        }

        else
        {
          if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v25 = *(v22 + 8 * v24 + 32);
        }

        v26 = v25;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v0 = [v25 taskOutcome];

        ++v24;
      }

      while (v0 != 17);

      v13 = v10 & 0xC000000000000001;
      v0 = v88;
      v15 = v10 + 32;
      v14 = v10 & 0xFFFFFFFFFFFFFF8;
      v16 = &off_279711000;
      if (v12 == v11)
      {
        LODWORD(v18) = 1;
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  v11 = sub_252E378C4();
  if (v11)
  {
    goto LABEL_13;
  }

LABEL_44:
  LODWORD(v18) = 1;
LABEL_45:

LABEL_46:
  v27 = sub_252C285CC();
  if (v27 >> 62)
  {
    v32 = sub_252E378C4();

    if (!v32)
    {
      goto LABEL_52;
    }

LABEL_48:
    v29 = sub_252C285F0();
    if (v29 >> 62)
    {
LABEL_94:
      v30 = sub_252E378C4();
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    LOBYTE(v31) = v30 != 0;
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v28)
    {
      goto LABEL_48;
    }

LABEL_52:
    LOBYTE(v31) = 0;
  }

  v33 = sub_252C285CC();
  if (!(v33 >> 62))
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v34)
    {
      goto LABEL_55;
    }

LABEL_87:
    if (v91)
    {
      LOBYTE(v31) = 1;
      if (v18)
      {
        goto LABEL_100;
      }
    }

    else
    {
      LOBYTE(v31) = (v89 ^ 1) & v31;
      if (v18)
      {
        goto LABEL_100;
      }
    }

LABEL_91:
    LOBYTE(v51) = 0;
    goto LABEL_101;
  }

LABEL_86:
  v50 = sub_252E378C4();

  if (!v50)
  {
    goto LABEL_87;
  }

LABEL_55:
  v35 = sub_252C285CC();
  v36 = v35;
  v81 = v31;
  if (!(v35 >> 62))
  {
    v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_57;
    }

LABEL_96:

    if (v91)
    {
      if (v18)
      {
        LOBYTE(v31) = 1;
        goto LABEL_100;
      }

      LOBYTE(v51) = v89 ^ 1;
      LOBYTE(v31) = 1;
    }

    else
    {
      LOBYTE(v51) = v89 ^ 1;
      LOBYTE(v31) = (v89 ^ 1) & v81;
      if (v18)
      {
        goto LABEL_100;
      }
    }

    goto LABEL_101;
  }

  v37 = sub_252E378C4();
  if (!v37)
  {
    goto LABEL_96;
  }

LABEL_57:
  v31 = 0;
  v38 = v36 & 0xC000000000000001;
  v39 = v36 & 0xFFFFFFFFFFFFFF8;
  v40 = v36 + 32;
  v41 = &off_279711000;
  v83 = v18;
  while (1)
  {
    if (v38)
    {
      v42 = MEMORY[0x2530ADF00](v31, v36);
    }

    else
    {
      if (v31 >= *(v39 + 16))
      {
        goto LABEL_93;
      }

      v42 = *(v40 + 8 * v31);
    }

    v43 = v42;
    v19 = __OFADD__(v31++, 1);
    if (v19)
    {
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v44 = [v42 v41[220]];
    if (!v44)
    {
      break;
    }

    v45 = v44;
    type metadata accessor for HomeUserTaskResponse();
    v18 = sub_252E37264();

    v86 = v43;
    if (v18 >> 62)
    {
      v46 = sub_252E378C4();
    }

    else
    {
      v46 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v47 = 0;
    do
    {
      if (v46 == v47)
      {

        v43 = v86;
        v0 = v88;
        LOBYTE(v18) = v83;
        goto LABEL_79;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x2530ADF00](v47, v18);
      }

      else
      {
        if (v47 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_85;
        }

        v48 = *(v18 + 8 * v47 + 32);
      }

      v49 = v48;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v0 = [v48 taskOutcome];

      ++v47;
    }

    while (v0 != 17);

    v38 = v36 & 0xC000000000000001;
    v0 = v88;
    LODWORD(v18) = v83;
    v40 = v36 + 32;
    v39 = v36 & 0xFFFFFFFFFFFFFF8;
    v41 = &off_279711000;
    if (v31 == v37)
    {
      goto LABEL_96;
    }
  }

LABEL_79:

  if (v91)
  {
    LOBYTE(v31) = 1;
    if (v18)
    {
      goto LABEL_100;
    }

    goto LABEL_91;
  }

  LOBYTE(v31) = (v89 ^ 1) & v81;
  if ((v18 & 1) == 0)
  {
    goto LABEL_91;
  }

LABEL_100:
  LOBYTE(v51) = 1;
LABEL_101:
  v52 = (v0 + 32);
  v82 = v0 + 144;
  v0[144] = 0;
  v53 = sub_252C2F554();
  v54 = v53;
  if (v53 >> 62)
  {
    goto LABEL_130;
  }

  result = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_103:
  v87 = v31;
  v84 = v51;
  if (!result)
  {
    goto LABEL_134;
  }

  if ((v54 & 0xC000000000000001) != 0)
  {
    v56 = MEMORY[0x2530ADF00](0, v54);
LABEL_107:
    v57 = v56;
    v80 = v52;

    type metadata accessor for HomeStore();
    v58 = static HomeStore.shared.getter();
    v54 = sub_2529DA828();

    if (v54 >> 62)
    {
      v31 = sub_252E378C4();
      if (v31)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v31 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
LABEL_109:
        v52 = 0;
        v90 = v57;
        do
        {
          if ((v54 & 0xC000000000000001) != 0)
          {
            v51 = MEMORY[0x2530ADF00](v52, v54);
            v0 = (v52 + 1);
            if (__OFADD__(v52, 1))
            {
LABEL_125:
              __break(1u);
LABEL_126:

              v57 = v90;
LABEL_127:

              v69 = *(v51 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
              v70 = *(v51 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

              v0 = v88;
              *(v88 + 4) = v69;
              *(v88 + 5) = v70;
              LOBYTE(v70) = sub_252B2FB08();

              v88[144] = v70 & 1;
              v71 = v80;
              goto LABEL_135;
            }
          }

          else
          {
            if (v52 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_130:
              result = sub_252E378C4();
              goto LABEL_103;
            }

            v51 = *(v54 + 8 * v52 + 32);

            v0 = (v52 + 1);
            if (__OFADD__(v52, 1))
            {
              goto LABEL_125;
            }
          }

          v93 = sub_252E32E24();
          v60 = v59;
          v61 = [v57 entity];
          if (v61 && (v62 = v61, v63 = [v61 entityIdentifier], v62, v63))
          {
            v64 = sub_252E36F34();
            v66 = v65;

            if (v93 == v64 && v60 == v66)
            {
              goto LABEL_126;
            }

            v68 = sub_252E37DB4();

            v57 = v90;
            if (v68)
            {
              goto LABEL_127;
            }
          }

          else
          {
          }

          ++v52;
        }

        while (v0 != v31);
      }
    }

    v0 = v88;
    v52 = v80;
LABEL_134:
    v72 = *(v0 + 9);

    *(v0 + 1) = *(v72 + 120);
    *v52 = *(v72 + 120);
    sub_252D57940((v0 + 16), (v0 + 48));
    v71 = v52;
LABEL_135:
    v73 = *(v0 + 13);
    v74 = *(v0 + 10);
    v75 = *(v74 + 48);
    __swift_project_boxed_opaque_existential_1((v74 + 24), v75);
    v76 = swift_task_alloc();
    *(v0 + 15) = v76;
    *(v76 + 16) = v74;
    *(v76 + 24) = v87;
    *(v76 + 25) = v84;
    *(v76 + 32) = v82;
    *(v76 + 40) = v71;
    sub_252AD7CC4();
    v77 = swift_task_alloc();
    *(v0 + 16) = v77;
    *v77 = v0;
    v77[1] = sub_252D56D50;
    v78 = *(v0 + 13);
    v79 = *(v0 + 8);

    return sub_252BDB88C(v79, &unk_252E5DD00, v76, v78, 0, 0, 0, v75);
  }

  if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v56 = *(v54 + 32);
    goto LABEL_107;
  }

  __break(1u);
  return result;
}

uint64_t sub_252D56D50()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 136) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252D56F44;
  }

  else
  {
    v8 = *(v2 + 120);

    v7 = sub_252D56ED0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252D56ED0()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 40);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252D56F44()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);

  v3 = *(v0 + 40);

  v4 = *(v0 + 8);
  v5 = *(v0 + 136);

  return v4();
}

uint64_t sub_252D56FC4(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 97) = a3;
  *(v5 + 96) = a2;
  *(v5 + 16) = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  *(v5 + 40) = swift_task_alloc();
  v7 = type metadata accessor for HomeAutomationAsyncSceneFailuresParameters(0);
  *(v5 + 48) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D5709C, 0, 0);
}

uint64_t sub_252D5709C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v21 = *(v0 + 32);
  v20 = *(v0 + 97);
  v4 = *(v0 + 96);
  v5 = __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 64), *(*(v0 + 16) + 88));
  v6 = *v3;
  v23 = *v5;
  v7 = sub_252E36324();
  v8 = *(*(v7 - 8) + 56);
  v9 = 1;
  v8(v2, 1, 1, v7);
  v10 = v1[10];
  v8(v2 + v10, 1, 1, v7);
  v8(v2 + v1[11], 1, 1, v7);
  *(v2 + v1[5]) = 0;
  *(v2 + v1[6]) = 0;
  *(v2 + v1[7]) = v4;
  *(v2 + v1[8]) = v20;
  *(v2 + v1[9]) = v6;
  if (*(v21 + 8))
  {
    v11 = *(v0 + 40);
    v12 = **(v0 + 32);
    v13 = *(v21 + 8);

    sub_252E37024();

    v9 = 0;
  }

  v14 = *(v0 + 56);
  v15 = *(v0 + 40);
  v8(v15, v9, 1, v7);
  sub_252956C98(v15, v2 + v10);
  v16 = sub_252C052D8();
  *(v0 + 64) = v16;
  v17 = *(MEMORY[0x277D55BE8] + 4);
  v22 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v18 = swift_task_alloc();
  *(v0 + 72) = v18;
  *v18 = v0;
  v18[1] = sub_252D572D4;

  return v22(0xD000000000000021, 0x8000000252E95590, v16);
}

uint64_t sub_252D572D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v8 = sub_252D574A0;
  }

  else
  {
    *(v4 + 88) = a1;
    v8 = sub_252D57420;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252D57420()
{
  v1 = v0[5];
  sub_252D579B0(v0[7]);

  v2 = v0[1];
  v3 = v0[11];

  return v2(v3);
}

uint64_t sub_252D574A0()
{
  v1 = v0[5];
  sub_252D579B0(v0[7]);

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

void *sub_252D57540@<X0>(void *a1@<X8>)
{
  type metadata accessor for AsyncFailedScenesResponseHandler();
  swift_allocObject();
  result = sub_252D46D94();
  *a1 = result;
  return result;
}

uint64_t sub_252D57580(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252D56254(a1, a2);
}

uint64_t sub_252D5762C()
{
  v0 = sub_252B4F670();
  v1 = sub_252C2F554();
  if (v1 >> 62)
  {
    v2 = sub_252E378C4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(sub_252B4F854() + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isSceneRequest);

  if (qword_27F53F510 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544DD8);
  sub_252E379F4();

  v5 = *(sub_252B4F854() + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isSceneRequest);

  if (v5)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v6, v7);

  sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E97F70, 0xD000000000000092, 0x8000000252E97FA0);

  v8 = sub_252C285CC();
  if (v8 >> 62)
  {
    v9 = sub_252E378C4();

    if (v2)
    {
      goto LABEL_13;
    }

LABEL_20:

    if (v9)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v2)
  {
    goto LABEL_20;
  }

LABEL_13:
  v10 = sub_252C2FBB4();
  if (v10 >> 62)
  {
    v11 = sub_252E378C4();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    return 1;
  }

  else
  {
    return v3 & (v9 != 0);
  }
}

uint64_t sub_252D57880()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_25294B7BC;

  return sub_252D56FC4(v2, v3, v4, v6, v5);
}

uint64_t sub_252D57940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252D579B0(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationAsyncSceneFailuresParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252D57A20(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_252E378C4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_252E37A54();
  *v1 = result;
  return result;
}

uint64_t sub_252D57AFC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E378C4();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_252E37A54();
}

char *sub_252D57BF4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_252E378C4();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_252E378C4();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_252D57A20(result);

  return sub_252B7B358(v6, v5, 1, v3);
}

uint64_t sub_252D57D0C(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_252D57DE4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v3 = v2 + 1;
  v4 = 160;
  while (--v3)
  {
    v5 = *(a1 + v4);
    v4 += 504;
    if (*(v5 + 16))
    {
      v6 = v2 + 1;
      v7 = 72;
      do
      {
        if (!--v6)
        {
          goto LABEL_23;
        }

        v8 = *(a1 + v7);
        v7 += 504;
      }

      while (v8 == 4);
      v9 = qword_27F53F520;

      if (v9 != -1)
      {
        goto LABEL_41;
      }

      while (1)
      {
        v10 = sub_252E36AD4();
        __swift_project_value_buffer(v10, qword_27F544E08);
        __src[0] = 0;
        __src[1] = 0xE000000000000000;
        sub_252E379F4();

        __src[0] = 0xD00000000000002BLL;
        __src[1] = 0x8000000252E98040;
        v11 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v11);

        sub_252CC3D90(__src[0], __src[1], 0xD00000000000009CLL, 0x8000000252E98070);

        if (!v2)
        {
          break;
        }

        v13 = 0;
        v14 = 536;
        while (v1[v14 - 464] == 4)
        {
          ++v13;
          v14 += 504;
          if (v2 == v13)
          {
            goto LABEL_12;
          }
        }

        v18 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_45;
        }

        if (v18 == v2)
        {
          goto LABEL_13;
        }

        v2 = 504;
        while (1)
        {
          v19 = *(v1 + 2);
          if (v18 >= v19)
          {
            break;
          }

          if (v1[v14 + 40] == 4)
          {
            if (v18 != v13)
            {
              if (v13 >= v19)
              {
                goto LABEL_39;
              }

              memcpy(__dst, &v1[504 * v13 + 32], sizeof(__dst));
              memcpy(__src, &v1[v14], sizeof(__src));
              sub_2529353AC(__dst, v22);
              sub_2529353AC(__src, v22);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v1 = sub_252D57AC0(v1);
              }

              v20 = &v1[504 * v13];
              memcpy(v21, v20 + 32, sizeof(v21));
              memcpy(v20 + 32, __src, 0x1F8uLL);
              sub_252935408(v21);
              if (v18 >= *(v1 + 2))
              {
                goto LABEL_40;
              }

              memcpy(v22, &v1[v14], sizeof(v22));
              memcpy(&v1[v14], __dst, 0x1F8uLL);
              result = sub_252935408(v22);
              v19 = *(v1 + 2);
            }

            ++v13;
          }

          ++v18;
          v14 += 504;
          if (v18 == v19)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        swift_once();
      }

LABEL_12:
      v13 = v2;
LABEL_13:
      v15 = *(v1 + 2);
      if (v13 > v15)
      {
        __break(1u);
      }

      else if ((v13 & 0x8000000000000000) == 0)
      {
        if (!__OFADD__(v15, v13 - v15))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          __src[0] = v1;
          if (!isUniquelyReferenced_nonNull_native || v13 > *(v1 + 3) >> 1)
          {
            if (v15 <= v13)
            {
              v17 = v13;
            }

            else
            {
              v17 = v15;
            }

            v1 = sub_2529F7FB0(isUniquelyReferenced_nonNull_native, v17, 1, v1);
            __src[0] = v1;
          }

          sub_252B7B280(v13, v15, 0);
          return v1;
        }

LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_44;
    }
  }

LABEL_23:

  return v1;
}

uint64_t sub_252D58140(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v39 = *(a1 + 16);
    v1 = 0;
    v40 = a1 + 32;
    do
    {
      memcpy(__dst, (v40 + 504 * v1++), 0x1F8uLL);
      v2 = __dst[4];
      v3 = *(__dst[4] + 16);
      sub_2529353AC(__dst, __src);
      v4 = (v2 + 32);
      v5 = (v2 + 32);
      while (1)
      {
        if (!v3)
        {
          v8 = *(v2 + 16);
          while (v8)
          {
            v10 = *v4;
            if (v10 > 2 && v10 != 4)
            {
              goto LABEL_21;
            }

            v9 = sub_252E37DB4();

            ++v4;
            --v8;
            if (v9)
            {
              goto LABEL_22;
            }
          }

          v11 = *(__dst[11] + 16);
          v12 = (__dst[11] + 32);
          while (2)
          {
            if (v11)
            {
              switch(*v12)
              {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 0xA:
                case 0xB:
                case 0xC:
                case 0xD:
                case 0xE:
                case 0xF:
                case 0x10:
                case 0x11:
                case 0x12:
                case 0x13:
                case 0x14:
                  v13 = sub_252E37DB4();

                  ++v12;
                  --v11;
                  if ((v13 & 1) == 0)
                  {
                    continue;
                  }

                  goto LABEL_22;
                default:
                  goto LABEL_21;
              }
            }

            goto LABEL_26;
          }
        }

        v7 = *v5;
        if (v7 > 1 && v7 != 3 && v7 != 4)
        {
          break;
        }

        v6 = sub_252E37DB4();

        ++v5;
        --v3;
        if (v6)
        {
          goto LABEL_22;
        }
      }

LABEL_21:

LABEL_22:
      if (!*(__dst[17] + 16) || (memcpy(__src, __dst, sizeof(__src)), sub_252A13A70(), (v14 & 1) == 0) || (memcpy(__src, __dst, sizeof(__src)), (sub_252A13FE0() & 1) != 0) || (memcpy(v43, __dst, sizeof(v43)), (sub_252A13BEC() & 1) != 0))
      {
LABEL_26:
        sub_252935408(__dst);
        continue;
      }

      memcpy(__src, __dst, sizeof(__src));
      v15 = sub_252A143D4();
      sub_252935408(__dst);
      if ((v15 & 1) == 0)
      {
        if (qword_27F53F520 != -1)
        {
          goto LABEL_70;
        }

        while (1)
        {
          v18 = sub_252E36AD4();
          __swift_project_value_buffer(v18, qword_27F544E08);
          __src[0] = 0;
          __src[1] = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E98110);
          v19 = MEMORY[0x2530AD730](a1, &type metadata for HomeAutomationIntent);
          MEMORY[0x2530AD570](v19);

          sub_252CC3D90(__src[0], __src[1], 0xD0000000000000A8, 0x8000000252E98150);

          v20 = 0;
          v16 = MEMORY[0x277D84F90];
LABEL_36:
          while (v20 < v39)
          {
            memcpy(__src, (v40 + 504 * v20), sizeof(__src));
            if (__OFADD__(v20++, 1))
            {
              goto LABEL_69;
            }

            v22 = __src[4];
            v23 = *(__src[4] + 16);
            sub_2529353AC(__src, v43);
            v24 = (v22 + 32);
            v25 = (v22 + 32);
            while (v23)
            {
              v27 = *v25;
              if (v27 > 1 && v27 != 3 && v27 != 4)
              {
LABEL_56:

LABEL_57:
                if (!*(__src[17] + 16))
                {
                  goto LABEL_62;
                }

                memcpy(v43, __src, sizeof(v43));
                sub_252A13A70();
                if ((v34 & 1) == 0)
                {
                  goto LABEL_62;
                }

                memcpy(v43, __src, sizeof(v43));
                if ((sub_252A13FE0() & 1) == 0)
                {
                  memcpy(v41, __src, sizeof(v41));
                  if ((sub_252A13BEC() & 1) == 0)
                  {
                    memcpy(v43, __src, sizeof(v43));
                    if ((sub_252A143D4() & 1) == 0)
                    {
                      goto LABEL_62;
                    }
                  }
                }

                sub_252935408(__src);
                if (v20 == v39)
                {
                  return v16;
                }

                goto LABEL_36;
              }

              v26 = sub_252E37DB4();

              ++v25;
              --v23;
              if (v26)
              {
                goto LABEL_57;
              }
            }

            v28 = *(v22 + 16);
            while (v28)
            {
              v30 = *v24;
              if (v30 > 2 && v30 != 4)
              {
                goto LABEL_56;
              }

              v29 = sub_252E37DB4();

              ++v24;
              --v28;
              if (v29)
              {
                goto LABEL_57;
              }
            }

            v31 = *(__src[11] + 16);
            v32 = (__src[11] + 32);
            while (2)
            {
              if (v31)
              {
                switch(*v32)
                {
                  case 1:
                  case 2:
                  case 3:
                  case 4:
                  case 5:
                  case 6:
                  case 7:
                  case 8:
                  case 9:
                  case 0xA:
                  case 0xB:
                  case 0xC:
                  case 0xD:
                  case 0xE:
                  case 0xF:
                  case 0x10:
                  case 0x11:
                  case 0x12:
                  case 0x13:
                  case 0x14:
                    v33 = sub_252E37DB4();

                    ++v32;
                    --v31;
                    if ((v33 & 1) == 0)
                    {
                      continue;
                    }

                    goto LABEL_57;
                  default:
                    goto LABEL_56;
                }
              }

              break;
            }

LABEL_62:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v42 = v16;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2529AA480(0, *(v16 + 16) + 1, 1);
              v16 = v42;
            }

            v37 = *(v16 + 16);
            v36 = *(v16 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_2529AA480((v36 > 1), v37 + 1, 1);
              v16 = v42;
            }

            *(v16 + 16) = v37 + 1;
            memcpy((v16 + 504 * v37 + 32), __src, 0x1F8uLL);
            if (v20 == v39)
            {
              return v16;
            }
          }

          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          swift_once();
        }
      }
    }

    while (v1 != v39);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252D58BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = sub_252E34014();
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v7 = *(v6 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D58CB8, 0, 0);
}

uint64_t sub_252D58CB8()
{
  v71 = v0;
  v1 = *(v0 + 144);
  v2 = MEMORY[0x277D84F90];
  v64 = v1;
  if (!v1)
  {
    goto LABEL_103;
  }

  v3 = sub_252C285F0();
  v4 = v3;
  v70 = v2;
  if (v3 >> 62)
  {
    goto LABEL_71;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v69 = v0;
    v0 = MEMORY[0x277D84F90];
    if (i)
    {
      v6 = 0;
LABEL_7:
      while (2)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x2530ADF00](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_66;
          }

          v7 = *(v4 + 32 + 8 * v6);
        }

        v8 = v7;
        v9 = __OFADD__(v6++, 1);
        if (v9)
        {
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        v10 = sub_252DA6828();
        v11 = *(v10 + 2);
        v12 = 32;
        do
        {
          if (!v11)
          {

            if (v6 != i)
            {
              goto LABEL_7;
            }

            goto LABEL_17;
          }

          v13 = *&v10[v12];
          v12 += 8;
          --v11;
        }

        while (v13 != 49);

        sub_252E37A94();
        v14 = *(v70 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        if (v6 != i)
        {
          continue;
        }

        break;
      }

LABEL_17:
      v15 = v70;
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    v70 = v0;
    if (v15 < 0 || (v15 & 0x4000000000000000) != 0)
    {
      v4 = sub_252E378C4();
    }

    else
    {
      v4 = *(v15 + 16);
    }

    v16 = 0;
    v0 = MEMORY[0x277D84F90];
    v63 = MEMORY[0x277D84F90];
    while (v4 != v16)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x2530ADF00](v16, v15);
      }

      else
      {
        if (v16 >= *(v15 + 16))
        {
          goto LABEL_64;
        }

        v17 = *(v15 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v20 = sub_252DA124C(0);

      ++v16;
      if (v20)
      {
        MEMORY[0x2530AD700]();
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v21 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v63 = v70;
        v16 = v19;
      }
    }

    v22 = sub_252C285F0();
    v4 = v22;
    v70 = v0;
    v23 = v22 >> 62 ? sub_252E378C4() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0 = MEMORY[0x277D84F90];
    if (v23)
    {
      v24 = 0;
LABEL_38:
      while (2)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x2530ADF00](v24, v4);
        }

        else
        {
          if (v24 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_68;
          }

          v25 = *(v4 + 32 + 8 * v24);
        }

        v26 = v25;
        v9 = __OFADD__(v24++, 1);
        if (v9)
        {
          goto LABEL_67;
        }

        v27 = sub_252DA6828();
        v28 = *(v27 + 2);
        v29 = 32;
        do
        {
          if (!v28)
          {

            if (v24 != v23)
            {
              goto LABEL_38;
            }

            goto LABEL_48;
          }

          v30 = *&v27[v29];
          v29 += 8;
          --v28;
        }

        while (v30 != 48);

        sub_252E37A94();
        v31 = *(v70 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        if (v24 != v23)
        {
          continue;
        }

        break;
      }

LABEL_48:
      v32 = v70;
    }

    else
    {
      v32 = MEMORY[0x277D84F90];
    }

    v70 = v0;

    v4 = *(v32 + 16);
    if (!v4)
    {
      goto LABEL_75;
    }

LABEL_53:
    v33 = 0;
    v0 = v32 & 0xC000000000000001;
    while (1)
    {
      if (v0)
      {
        v34 = MEMORY[0x2530ADF00](v33, v32);
      }

      else
      {
        if (v33 >= *(v32 + 16))
        {
          goto LABEL_70;
        }

        v34 = *(v32 + 8 * v33 + 32);
      }

      v35 = v34;
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      type metadata accessor for MutableHomeEntityResponse();
      swift_allocObject();
      sub_252D6D668(v35);

      MEMORY[0x2530AD700]();
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v37 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v33;
      if (v36 == v4)
      {
        v38 = v70;
        goto LABEL_76;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    ;
  }

  v4 = sub_252E378C4();
  if (v4)
  {
    goto LABEL_53;
  }

LABEL_75:
  v38 = MEMORY[0x277D84F90];
LABEL_76:

  if (v38 >> 62)
  {
    goto LABEL_116;
  }

  v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_78:
  v0 = v69;
  v62 = v38;

  if (v39)
  {
    v40 = 0;
    v67 = v38 & 0xFFFFFFFFFFFFFF8;
    v68 = v38 & 0xC000000000000001;
    v65 = v39;
    v66 = v38 + 32;
    do
    {
      if (v68)
      {
        v41 = MEMORY[0x2530ADF00](v40, v62);
        v9 = __OFADD__(v40++, 1);
        if (v9)
        {
          goto LABEL_114;
        }
      }

      else
      {
        if (v40 >= *(v67 + 16))
        {
          goto LABEL_115;
        }

        v41 = *(v66 + 8 * v40);

        v9 = __OFADD__(v40++, 1);
        if (v9)
        {
          goto LABEL_114;
        }
      }

      swift_beginAccess();
      v42 = *(v41 + 24);
      if (v42 >> 62)
      {
        if (v42 < 0)
        {
          v47 = *(v41 + 24);
        }

        v43 = sub_252E378C4();
      }

      else
      {
        v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v43)
      {
        v44 = 0;
        v38 = v42 & 0xFFFFFFFFFFFFFF8;
        do
        {
          if ((v42 & 0xC000000000000001) != 0)
          {
            v45 = MEMORY[0x2530ADF00](v44, v42);
            v46 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              goto LABEL_112;
            }
          }

          else
          {
            if (v44 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_113;
            }

            v45 = *(v42 + 8 * v44 + 32);

            v46 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
LABEL_112:
              __break(1u);
LABEL_113:
              __break(1u);
LABEL_114:
              __break(1u);
LABEL_115:
              __break(1u);
LABEL_116:
              v39 = sub_252E378C4();
              goto LABEL_78;
            }
          }

          v70 = v45;
          sub_252D5A13C(&v70);

          ++v44;
        }

        while (v46 != v43);
      }

      v0 = v69;
    }

    while (v40 != v65);
  }

  v1 = v62;

  v2 = v63;
LABEL_103:
  *(v0 + 192) = v1;
  *(v0 + 200) = v2;
  v48 = *(v0 + 152);
  v49 = swift_allocObject();
  *(v0 + 208) = v49;
  v49[2] = v48;
  v49[3] = v2;
  v49[4] = v1;

  if (v64)
  {
    v50 = *(v48 + 48);
    v51 = *(v0 + 144);
    v52 = *__swift_project_boxed_opaque_existential_1((v48 + 24), v50);

    v53 = swift_task_alloc();
    *(v0 + 216) = v53;
    *v53 = v0;
    v53[1] = sub_252D5959C;

    return sub_252C10510(0, v52, v2, v1);
  }

  else
  {

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v55 = *(v0 + 184);
    v56 = *(v0 + 152);
    v57 = sub_252E36AD4();
    __swift_project_value_buffer(v57, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v58 = v56[12];
    v59 = v56[13];
    __swift_project_boxed_opaque_existential_1(v56 + 9, v58);
    sub_252AD7CC4();
    v60 = swift_task_alloc();
    *(v0 + 264) = v60;
    *v60 = v0;
    v60[1] = sub_252D59910;
    v61 = *(v0 + 184);
    v73 = v59;

    return sub_252BDB88C(v0 + 16, &unk_252E5DDE8, v49, v61, 0, 0, 0, v58);
  }
}

uint64_t sub_252D5959C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  v4[28] = a1;
  v4[29] = v1;

  v7 = v3[25];
  v8 = v3[24];
  if (v1)
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return MEMORY[0x2822009F8](sub_252D59894, 0, 0);
  }

  else
  {
    v9 = v4[18];
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v10 = swift_task_alloc();
    v4[30] = v10;
    *v10 = v6;
    v10[1] = sub_252D59780;
    v11 = v4[19];

    return sub_252E174F4(v9);
  }
}

uint64_t sub_252D59780(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v7 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v5 = sub_252D59BD4;
  }

  else
  {
    v5 = sub_252D59A78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D59894()
{
  v1 = v0[26];
  v2 = v0[18];

  v3 = v0[29];
  v5 = v0[22];
  v4 = v0[23];

  v6 = v0[1];

  return v6();
}

uint64_t sub_252D59910()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  (*(v2[21] + 8))(v2[23], v2[20]);
  if (v0)
  {
    v5 = sub_252D5A0C8;
  }

  else
  {
    v5 = sub_252D59FA4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D59A78()
{
  v1 = v0[28];
  v0[15] = v1;
  v2 = v0 + 15;
  v3 = v0[31];
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

  v8 = v0[22];
  v9 = v0[19];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[35] = v11;
  *(v11 + 16) = v2;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[36] = v12;
  *v12 = v0;
  v12[1] = sub_252D59C5C;
  v13 = v0[22];

  return sub_252BDB88C((v0 + 7), &unk_252E3F140, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252D59BD4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 144);

  v3 = *(v0 + 256);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_252D59C5C()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v7 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    (*(v2[21] + 8))(v2[22], v2[20]);
    v4 = sub_252D59EF8;
  }

  else
  {
    v5 = v2[35];
    (*(v2[21] + 8))(v2[22], v2[20]);

    v4 = sub_252D59DAC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D59DAC()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
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

  v8 = *(v0 + 248);
  v9 = *(v0 + 224);
  v10 = *(v0 + 208);
  v11 = *(v0 + 144);
  v12 = *(v0 + 128);
  (*(v4 + 112))(v7, v0 + 56, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v14 = *(v0 + 176);
  v13 = *(v0 + 184);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_252D59EF8()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 208);
  v4 = *(v0 + 144);

  v5 = *(v0 + 296);
  v7 = *(v0 + 176);
  v6 = *(v0 + 184);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_252D59FA4()
{
  v1 = v0[19];
  v2 = v0[17];
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

  v8 = v0[26];
  v9 = v0[16];
  (*(v4 + 112))(v7, v0 + 2, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v11 = v0[22];
  v10 = v0[23];

  v12 = v0[1];

  return v12();
}

uint64_t sub_252D5A0C8()
{
  v1 = v0[26];

  v2 = v0[34];
  v4 = v0[22];
  v3 = v0[23];

  v5 = v0[1];

  return v5();
}

uint64_t sub_252D5A13C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v6 = 0;
  if (v2)
  {
    swift_beginAccess();
    v3 = *(v2 + 32);
    if (v3)
    {
      v4 = *(v3 + 56);
      if (v4)
      {
        v5 = *(v3 + 48) == 0x45474E414843 && v4 == 0xE600000000000000;
        if (v5 || (sub_252E37DB4() & 1) != 0)
        {
          v6 = 1;
        }
      }
    }
  }

  v7 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v8 = sub_252E36F04();
  v9 = [v7 initWithIdentifier:0 displayString:v8];

  v10 = v9;
  [v10 setBoolValue_];
  [v10 setType_];

  v11 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v12 = sub_252E36F04();
  v13 = [v11 initWithIdentifier:0 displayString:v12];

  v14 = v13;
  [v14 setTaskType_];
  [v14 setAttribute_];
  [v14 setValue_];

  type metadata accessor for MutableHomeUserTask();
  swift_allocObject();
  v15 = sub_252D6CA80(v14);
  v16 = *(v1 + 16);
  *(v1 + 16) = v15;
}

uint64_t sub_252D5A308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252D5A32C, 0, 0);
}

uint64_t sub_252D5A32C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2529C5218;
  v5 = v0[3];
  v6 = v0[4];

  return sub_252C10510(0, v3, v5, v6);
}

uint64_t sub_252D5A410(uint64_t a1, uint64_t a2, unint64_t a3)
{
  type metadata accessor for HomeAutomationNumericEntityResponses();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = a2;
  v7 = *(a1 + 16);

  *(a1 + 16) = v6;
  v8 = MEMORY[0x277D84F90];
  if (a3)
  {
    v19 = a1;
    v20 = MEMORY[0x277D84F90];
    if (a3 >> 62)
    {
LABEL_20:
      v9 = sub_252E378C4();
    }

    else
    {
      v9 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = 0;
    while (v9 != v10)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v10, a3);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v10 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v11 = *(a3 + 8 * v10 + 32);

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      v13 = sub_252D6C15C();
      v14 = sub_252DA124C(0);

      ++v10;
      if (v14)
      {
        MEMORY[0x2530AD700]();
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v15 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v8 = v20;
        v10 = v12;
      }
    }

    a1 = v19;
  }

  type metadata accessor for HomeAutomationBooleanResponses();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = v8;
  v17 = *(a1 + 8);

  *(a1 + 8) = v16;
  return result;
}

uint64_t sub_252D5A600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252D58BE8(a1, a2, a3);
}

void *sub_252D5A6B4@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for GetFilterStateResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

BOOL sub_252D5A718(id a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_252C285F0();
    if (v3 >> 62)
    {
      v12 = sub_252E378C4();

      if (!v12)
      {
        return 0;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v4)
      {
        return 0;
      }
    }
  }

  v5 = [a1 userTask];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 attribute];

    if (v7 == 49)
    {
      return 1;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v9 = [a1 userTask];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 attribute];

    return v11 == 48;
  }

  sub_252C515AC();
  return 0;
}

uint64_t sub_252D5A828()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252D5A308(v2, v3, v4);
}

uint64_t sub_252D5A8F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252D5AEF4(a1);
}

uint64_t sub_252D5A9A0()
{
  type metadata accessor for ShowCameraOnTVHandleDelegate();

  return swift_allocObject();
}

id sub_252D5A9D0(void *a1)
{
  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v2 = result;
  type metadata accessor for HomeFilter();
  v3 = sub_252E37264();

  if (v3 >> 62)
  {
    if (sub_252E378C4())
    {
      goto LABEL_4;
    }

LABEL_36:

    return 0;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

LABEL_4:
  type metadata accessor for HomeStore();
  v4 = static HomeStore.shared.getter();
  v5 = HomeStore.accessories(matching:supporting:)(v3, 0);
  v7 = v6;

  if (v7)
  {
    sub_252929F10(v5, 1);
    return 0;
  }

  if (v5 >> 62)
  {
    goto LABEL_39;
  }

  v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
LABEL_8:
    v9 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2530ADF00](v9, v5);
        v11 = __OFADD__(v9++, 1);
        if (v11)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          sub_252929F10(v5, 0);

          v30 = 1;
          goto LABEL_41;
        }
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_39:
          v8 = sub_252E378C4();
          if (!v8)
          {
            goto LABEL_40;
          }

          goto LABEL_8;
        }

        v10 = *(v5 + 32 + 8 * v9);

        v11 = __OFADD__(v9++, 1);
        if (v11)
        {
          goto LABEL_32;
        }
      }

      v12 = (*v10 + 256);
      v13 = *v12;
      if ((*v12)() == 24)
      {
        sub_252929F10(v5, 0);

        v30 = 1;
        goto LABEL_41;
      }

      v14 = (*(*v10 + 272))();
      v15 = v14;
      if (*(v14 + 16))
      {
        v16 = *(v14 + 40);
        sub_252E37EC4();
        MEMORY[0x2530AE390](24);
        v17 = sub_252E37F14();
        v18 = -1 << *(v15 + 32);
        v19 = v17 & ~v18;
        if ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
        {
          v20 = ~v18;
          while (*(*(v15 + 48) + 8 * v19) != 24)
          {
            v19 = (v19 + 1) & v20;
            if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          goto LABEL_33;
        }
      }

LABEL_19:

      v22 = (v13)(v21);
      if (v22 == 38)
      {
        break;
      }

      v23 = MEMORY[0x277D84FA0];
      if (v22 == 41)
      {
        v24 = &unk_2864AB050;
LABEL_23:
        v23 = sub_2529FC004(v24);
      }

      if (*(v23 + 16))
      {
        v25 = *(v23 + 40);
        sub_252E37EC4();
        MEMORY[0x2530AE390](24);
        v26 = sub_252E37F14();
        v27 = -1 << *(v23 + 32);
        v28 = v26 & ~v27;
        if ((*(v23 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
        {
          v29 = ~v27;
          while (*(*(v23 + 48) + 8 * v28) != 24)
          {
            v28 = (v28 + 1) & v29;
            if (((*(v23 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
            {
              goto LABEL_9;
            }
          }

          goto LABEL_33;
        }
      }

LABEL_9:

      if (v9 == v8)
      {
        goto LABEL_40;
      }
    }

    v24 = &unk_2864AB028;
    goto LABEL_23;
  }

LABEL_40:
  sub_252929F10(v5, 0);
  v30 = 0;
LABEL_41:
  v31 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v31 + 16), &v38);

  __swift_project_boxed_opaque_existential_1(&v38, v40);
  v32 = sub_252E338D4();
  __swift_destroy_boxed_opaque_existential_1(&v38);
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v33 = sub_252E36AD4();
  __swift_project_value_buffer(v33, qword_27F544C70);
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002DLL, 0x8000000252E98280);
  if (v32)
  {
    v34 = 1702195828;
  }

  else
  {
    v34 = 0x65736C6166;
  }

  if (v32)
  {
    v35 = 0xE400000000000000;
  }

  else
  {
    v35 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v34, v35);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E982B0);
  if (v30)
  {
    v36 = 1702195828;
  }

  else
  {
    v36 = 0x65736C6166;
  }

  if (v30)
  {
    v37 = 0xE400000000000000;
  }

  else
  {
    v37 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v36, v37);

  sub_252CC3D90(v38, v39, 0xD00000000000007FLL, 0x8000000252E982D0);

  return (v30 & v32);
}

uint64_t sub_252D5AF14()
{
  v1 = [*(v0 + 64) filters];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeFilter();
    v3 = sub_252E37264();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_252A41984(v3, &unk_2864AB078);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    if (v4 >> 62)
    {
      if (sub_252E378C4())
      {
        goto LABEL_7;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      v7 = *(v0 + 64);
      type metadata accessor for HomeFilter();
      v8 = sub_252E37254();
      sub_252929F10(v4, 0);
      [v7 setFilters_];

      sub_2529515FC(1, 10, 0xD00000000000001ALL, 0x8000000252E98350);
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v9 = sub_252E36AD4();
      __swift_project_value_buffer(v9, qword_27F544C70);
      sub_252CC4050(0xD000000000000031, 0x8000000252E98370, 0xD00000000000007FLL, 0x8000000252E982D0, 0x6928656C646E6168, 0xEF293A746E65746ELL, 113);
      v10 = 5;
      goto LABEL_14;
    }
  }

  sub_252929F10(v4, v6 & 1);
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544C70);
  sub_252CC4050(0xD00000000000001BLL, 0x8000000252E73210, 0xD00000000000007FLL, 0x8000000252E982D0, 0x6928656C646E6168, 0xEF293A746E65746ELL, 61);
  v10 = 100;
LABEL_14:
  v12 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
  v13 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  *&v12[v13] = v10;
  [v12 setUserActivity_];
  v14 = *(v0 + 8);

  return v14(v12);
}

uint64_t sub_252D5B220()
{
  v1 = v0;
  v2 = 0xD00000000000007ELL;
  v218 = sub_252E36AD4();
  v200 = *(v218 - 8);
  v3 = v200[8];
  v4 = MEMORY[0x28223BE20](v218);
  v195 = &v193 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v196 = &v193 - v7;
  MEMORY[0x28223BE20](v6);
  v197 = &v193 - v8;
  v217 = sub_252E32E84();
  v9 = *(v217 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v217);
  v216 = &v193 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v0[1];
  v248 = *v0;
  v249 = v12;
  v13 = v0[3];
  v250 = v0[2];
  v251 = v13;
  v202 = *(v0 + 64);
  v14 = *(v0 + 129);
  v245 = *(v0 + 113);
  v246 = v14;
  v247[0] = *(v0 + 145);
  v15 = *(v0 + 21);
  *(v247 + 15) = *(v0 + 20);
  v16 = *(v0 + 81);
  v242 = *(v0 + 65);
  v243 = v16;
  v244 = *(v0 + 97);
  v241 = v0[11];
  v17 = *(v0 + 24);
  v203 = v15;
  v204 = v17;
  memcpy(v240, v0 + 200, sizeof(v240));
  v18 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v194 = 0xD000000000000015;
  v19 = sub_252AC5368(0xD000000000000015, 0x8000000252E983B0);

  if (v19 != 2 && (v19 & 1) == 0)
  {
LABEL_71:
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v218, qword_27F544DA8);
    sub_252CC4050(v2 - 38, 0x8000000252E98680, 0xD00000000000007ELL, 0x8000000252E98410, v2 - 103, 0x8000000252E98620, 25);
    sub_2529515FC(0, 18, v2 - 99, 0x8000000252E82E50);
    return 0;
  }

  v20 = v1[1];
  v225 = *v1;
  v226 = v20;
  v21 = v1[3];
  v227 = v1[2];
  v228 = v21;
  v229 = v202;
  v233 = *(v1 + 113);
  v234 = *(v1 + 129);
  *v235 = *(v1 + 145);
  v22 = *(v1 + 20);
  v230 = *(v1 + 65);
  v231 = *(v1 + 81);
  v232 = *(v1 + 97);
  *&v235[15] = v22;
  v236 = v203;
  v237 = v1[11];
  v238 = v204;
  memcpy(v239, v1 + 200, sizeof(v239));
  v199 = sub_252E09AE4(&v225);
  type metadata accessor for HomeStore();
  v23 = static HomeStore.shared.getter();
  v24 = sub_2529DA2BC();

  v223 = MEMORY[0x277D84F90];
  v198 = v24;
  if (v24 >> 62)
  {
    goto LABEL_283;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  if (!v25)
  {
    v9 = MEMORY[0x277D84F90];
    goto LABEL_51;
  }

  v26 = 0;
  v214 = v198 & 0xFFFFFFFFFFFFFF8;
  v215 = v198 & 0xC000000000000001;
  v212 = v198 + 32;
  v213 = (v9 + 8);
  v201 = "Modified user task: ";
  v209 = ". Returning .robotVacuumCleaner";
  v210 = "tity with accessoryID ";
  v207 = "for accessoryID ";
  v208 = "MatterAccessory.swift";
  v205 = "deviceEntity(for:)";
  v206 = "MatterAccessoryManager.swift";
  v211 = v25;
  while (1)
  {
    if (v215)
    {
      v28 = MEMORY[0x2530ADF00](v26, v198);
      v29 = __OFADD__(v26, 1);
      v30 = v26 + 1;
      if (v29)
      {
        goto LABEL_271;
      }
    }

    else
    {
      if (v26 >= *(v214 + 16))
      {
        goto LABEL_272;
      }

      v27 = *(v212 + 8 * v26);

      v29 = __OFADD__(v26, 1);
      v30 = v26 + 1;
      if (v29)
      {
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
LABEL_274:
        __break(1u);
        goto LABEL_275;
      }
    }

    v219 = v28;
    v31 = [*(v28 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
    v32 = v216;
    sub_252E32E64();

    *&v222 = sub_252E32E24();
    *(&v222 + 1) = v33;
    (*v213)(v32, v217);
    v34 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
    v35 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
    swift_beginAccess();
    v220 = v34;
    v221 = v30;
    v36 = *&v34[v35];
    if (v36 >> 62)
    {
      if (v36 < 0)
      {
        v46 = *&v34[v35];
      }

      v37 = sub_252E378C4();
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v37)
    {
      break;
    }

LABEL_25:

    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v41 = v218;
    __swift_project_value_buffer(v218, qword_27F544EC8);
    *&v225 = 0;
    *(&v225 + 1) = 0xE000000000000000;
    sub_252E379F4();
    v2 = 0xD00000000000007ELL;
    MEMORY[0x2530AD570](0xD000000000000040, v208 | 0x8000000000000000);
    v42 = v222;
    MEMORY[0x2530AD570](v222, *(&v222 + 1));
    sub_252CC4050(v225, *(&v225 + 1), 0xD00000000000007CLL, v207 | 0x8000000000000000, 0xD000000000000012, v206 | 0x8000000000000000, 375);

    v26 = v221;
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v41, qword_27F544CB8);
    *&v225 = 0;
    *(&v225 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000027, v205 | 0x8000000000000000);
    MEMORY[0x2530AD570](v42, *(&v42 + 1));

    MEMORY[0x2530AD570](0xD00000000000001FLL, v210 | 0x8000000000000000);
    sub_252CC4050(v225, *(&v225 + 1), 0xD000000000000075, v209 | 0x8000000000000000, 1701869940, 0xE400000000000000, 96);
LABEL_40:

LABEL_41:
    sub_252E37A94();
    v9 = *(v223 + 16);
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
LABEL_42:
    if (v26 == v211)
    {
      v9 = v223;
LABEL_51:

      if (v203[2])
      {
        v18 = v203[4];
        v47 = v203[5];
        *&v225 = MEMORY[0x277D84F90];
        if ((v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
        {
          v48 = sub_252E378C4();
        }

        else
        {
          v48 = *(v9 + 16);
        }

        if (v48)
        {
          v2 = 0;
          *(&v222 + 1) = v9 & 0xC000000000000001;
          do
          {
            if (*(&v222 + 1))
            {
              v50 = MEMORY[0x2530ADF00](v2, v9);
              v51 = v2 + 1;
              if (__OFADD__(v2, 1))
              {
                goto LABEL_70;
              }
            }

            else
            {
              if (v2 >= *(v9 + 16))
              {
                goto LABEL_274;
              }

              v50 = *(v9 + 8 * v2 + 32);

              v51 = v2 + 1;
              if (__OFADD__(v2, 1))
              {
LABEL_70:
                __break(1u);
                goto LABEL_71;
              }
            }

            v52 = *(v50 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v18 && *(v50 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v47;
            if (v52 || (sub_252E37DB4() & 1) != 0)
            {
              sub_252E37A94();
              v49 = *(v225 + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
            }

            else
            {
            }

            ++v2;
          }

          while (v51 != v48);
          v54 = v225;
        }

        else
        {
          v54 = MEMORY[0x277D84F90];
        }

        v9 = v54;
        v2 = 0xD00000000000007ELL;
      }

      v55 = v218;
      v56 = MEMORY[0x277D84F90];
      if (v199 != 2)
      {
        *(&v222 + 1) = v9;
        goto LABEL_252;
      }

      if (qword_27F53F4B0 != -1)
      {
        swift_once();
        v55 = v218;
      }

      v57 = __swift_project_value_buffer(v55, qword_27F544CB8);
      v206 = ".\nSetting targetAreas: ";
      v207 = v57;
      sub_252CC3D90(v2 - 67, 0x8000000252E984F0, 0xD00000000000007ELL, 0x8000000252E98410);
      v225 = v248;
      v226 = v249;
      v227 = v250;
      v228 = v251;
      v233 = v245;
      v234 = v246;
      *v235 = v247[0];
      v230 = v242;
      v231 = v243;
      v229 = v202;
      v232 = v244;
      *&v235[15] = *(v247 + 15);
      v236 = v203;
      v237 = v241;
      v238 = v204;
      memcpy(v239, v240, sizeof(v239));
      *(&v222 + 1) = sub_252E0AF28(v9, &v225);

      if (qword_27F53F920 != -1)
      {
        swift_once();
      }

      v59 = sub_252C76E88(v58);
      v60 = v59;
      v61 = v59 + 56;
      v62 = 1 << *(v59 + 32);
      v63 = -1;
      if (v62 < 64)
      {
        v63 = ~(-1 << v62);
      }

      v2 = v63 & *(v59 + 56);
      v18 = (v62 + 63) >> 6;

      v64 = 0;
      v65 = v204;
      while (v2)
      {
        v66 = v64;
LABEL_91:
        v67 = __clz(__rbit64(v2));
        v2 &= v2 - 1;
        v68 = *(*(v60 + 48) + (v67 | (v66 << 6)));

        v9 = sub_2529A78B0(v68, v65);

        if (v9)
        {

          v69 = 1;
          goto LABEL_97;
        }
      }

      while (1)
      {
        v66 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          goto LABEL_273;
        }

        if (v66 >= v18)
        {
          break;
        }

        v2 = *(v61 + 8 * v66);
        ++v64;
        if (v2)
        {
          v64 = v66;
          goto LABEL_91;
        }
      }

      if (v202 == 4)
      {
        v69 = 0;
      }

      else
      {
        v69 = sub_252A0CE08(v202, 2u);
      }

LABEL_97:
      v70 = v204;
      v71 = sub_2529A78B0(56, v204);
      v72 = sub_2529A78B0(0, v70);
      v73 = v200[2];
      v205 = (v200 + 2);
      v201 = v73;
      (v73)(v197, v207, v218);
      *&v225 = 0;
      *(&v225 + 1) = 0xE000000000000000;
      sub_252E379F4();
      v217 = 0xD000000000000040;
      MEMORY[0x2530AD570]();
      LODWORD(v222) = v71;
      if (v71)
      {
        v74 = 1702195828;
      }

      else
      {
        v74 = 0x65736C6166;
      }

      v75 = 0xE500000000000000;
      if (v71)
      {
        v76 = 0xE400000000000000;
      }

      else
      {
        v76 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v74, v76);

      MEMORY[0x2530AD570](0x726174732F6E6F0ALL, 0xEB00000000203F74);
      LODWORD(v221) = v72;
      if (v72)
      {
        v77 = 1702195828;
      }

      else
      {
        v77 = 0x65736C6166;
      }

      if (v72)
      {
        v78 = 0xE400000000000000;
      }

      else
      {
        v78 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v77, v78);

      MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E98580);
      if (v69)
      {
        v79 = 1702195828;
      }

      else
      {
        v79 = 0x65736C6166;
      }

      if (v69)
      {
        v80 = 0xE400000000000000;
      }

      else
      {
        v80 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v79, v80);

      MEMORY[0x2530AD570](0xD00000000000002DLL, 0x8000000252E985A0);
      v56 = *(&v222 + 1);
      if (*(&v222 + 1) >> 62)
      {
        v81 = sub_252E378C4();
      }

      else
      {
        v81 = *((*(&v222 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v82 = MEMORY[0x277D84F90];
      v220 = (v56 >> 62);
      if (!v81)
      {
        v84 = MEMORY[0x277D84F90];
        goto LABEL_128;
      }

      LODWORD(v219) = v69;
      v223 = MEMORY[0x277D84F90];
      sub_2529AA3A0(0, v81 & ~(v81 >> 63), 0);
      if ((v81 & 0x8000000000000000) == 0)
      {
        v83 = 0;
        v84 = v223;
        v85 = v56 & 0xC000000000000001;
        do
        {
          if (v85)
          {
            MEMORY[0x2530ADF00](v83, *(&v222 + 1));
          }

          else
          {
            v86 = *(*(&v222 + 1) + 8 * v83 + 32);
          }

          v87 = sub_252D69924();
          v89 = v88;

          v223 = v84;
          v91 = *(v84 + 16);
          v90 = *(v84 + 24);
          if (v91 >= v90 >> 1)
          {
            sub_2529AA3A0((v90 > 1), v91 + 1, 1);
            v84 = v223;
          }

          ++v83;
          *(v84 + 16) = v91 + 1;
          v92 = v84 + 16 * v91;
          *(v92 + 32) = v87;
          *(v92 + 40) = v89;
        }

        while (v81 != v83);
        v56 = *(&v222 + 1);
        v69 = v219;
        v82 = MEMORY[0x277D84F90];
LABEL_128:
        v93 = MEMORY[0x2530AD730](v84, MEMORY[0x277D837D0]);
        v95 = v94;

        v2 = &v225;
        MEMORY[0x2530AD570](v93, v95);

        v96 = v197;
        sub_252CC3D90(v225, *(&v225 + 1), 0xD00000000000007ELL, v206 | 0x8000000000000000);

        v9 = v200[1];
        v97 = v96;
        v98 = v218;
        ++v200;
        (v9)(v97, v218);
        if ((v69 | v222 | v221))
        {
          v198 = v9;
          v225 = v248;
          v226 = v249;
          v227 = v250;
          v228 = v251;
          v233 = v245;
          v234 = v246;
          *v235 = v247[0];
          v230 = v242;
          v231 = v243;
          v229 = v202;
          v232 = v244;
          *&v235[15] = *(v247 + 15);
          v236 = v203;
          v237 = v241;
          v238 = v204;
          memcpy(v239, v240, sizeof(v239));
          v56 = sub_252E0CBE8(v56, &v225);
          (v201)(v196, v207, v98);
          v2 = 0xD00000000000007ELL;
          *&v225 = 0xD00000000000001ELL;
          *(&v225 + 1) = 0x8000000252E98660;
          v18 = *(v56 + 16);
          if (v18)
          {
            v99 = 0;
            v100 = MEMORY[0x277D84F90];
            while (v99 < *(v56 + 16))
            {
              v101 = 0xE400000000000000;
              v102 = 1869903201;
              switch(*(v56 + 32 + 8 * v99))
              {
                case 0:
                  v101 = 0xE700000000000000;
                  v102 = 0x6E776F6E6B6E75;
                  break;
                case 1:
                  v101 = 0xE600000000000000;
                  v102 = 0x6D7575636176;
                  break;
                case 2:
                  v101 = 0xE300000000000000;
                  v102 = 7368557;
                  break;
                case 3:
                  v101 = 0xE800000000000000;
                  v102 = 0x6E6F697461636176;
                  break;
                case 4:
                  v102 = 0x61656C4370656564;
                  v101 = 0xE90000000000006ELL;
                  break;
                case 5:
                  break;
                case 6:
                  v101 = 0xE500000000000000;
                  v102 = 0x6B63697571;
                  break;
                case 7:
                  v101 = 0xE500000000000000;
                  v102 = 0x7465697571;
                  break;
                case 8:
                  v101 = 0xE300000000000000;
                  v102 = 7889261;
                  break;
                case 9:
                  v102 = 1701736302;
                  break;
                case 0xALL:
                  v101 = 0xE900000000000079;
                  v102 = 0x6772656E45776F6CLL;
                  break;
                case 0xBLL:
                  v101 = 0xE500000000000000;
                  v102 = 0x746867696ELL;
                  break;
                case 0xCLL:
                  v101 = 0xE300000000000000;
                  v102 = 7954788;
                  break;
                case 0xDLL:
                  v101 = 0xE300000000000000;
                  v102 = 7235949;
                  break;
                case 0xELL:
                  v101 = 0xE500000000000000;
                  v102 = 0x7465736E75;
                  break;
                case 0xFLL:
                  v101 = 0xE800000000000000;
                  v102 = 0x6573696F4E776F6CLL;
                  break;
                default:
                  v223 = *(v56 + 32 + 8 * v99);
                  goto LABEL_290;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v100 = sub_2529F7A80(0, *(v100 + 2) + 1, 1, v100);
              }

              v104 = *(v100 + 2);
              v103 = *(v100 + 3);
              v9 = v104 + 1;
              if (v104 >= v103 >> 1)
              {
                v100 = sub_2529F7A80((v103 > 1), v104 + 1, 1, v100);
              }

              ++v99;
              *(v100 + 2) = v9;
              v105 = &v100[16 * v104];
              *(v105 + 4) = v102;
              *(v105 + 5) = v101;
              v2 = 0xD00000000000007ELL;
              if (v18 == v99)
              {
                goto LABEL_218;
              }
            }

            goto LABEL_278;
          }

          v100 = MEMORY[0x277D84F90];
LABEL_218:
          v140 = MEMORY[0x2530AD730](v100, MEMORY[0x277D837D0]);
          v142 = v141;

          MEMORY[0x2530AD570](v140, v142);

          v143 = v196;
          sub_252CC3D90(v225, *(&v225 + 1), 0xD00000000000007ELL, v206 | 0x8000000000000000);

          (v198)(v143, v218);
          goto LABEL_252;
        }

        v215 = sub_252E0CD80();
        if (!v215)
        {
          v2 = 0xD00000000000007ELL;
          sub_252CC4050(v217, 0x8000000252E985D0, 0xD00000000000007ELL, v206 | 0x8000000000000000, 0xD000000000000017, 0x8000000252E98620, 86);
          v56 = MEMORY[0x277D84F90];
          goto LABEL_252;
        }

        v198 = v9;
        *&v225 = v82;
        v18 = 0xD00000000000007ELL;
        if (v220)
        {
          v106 = sub_252E378C4();
          if (v106)
          {
            goto LABEL_157;
          }
        }

        else
        {
          v106 = *((*(&v222 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v106)
          {
LABEL_157:
            v9 = 0;
            v211 = *(&v222 + 1) & 0xFFFFFFFFFFFFFF8;
            v212 = *(&v222 + 1) & 0xC000000000000001;
            v209 = v106;
            v210 = *(&v222 + 1) + 32;
            v213 = (v215 + 32);
            while (1)
            {
              if (v212)
              {
                v107 = MEMORY[0x2530ADF00](v9, *(&v222 + 1));
                v29 = __OFADD__(v9++, 1);
                if (v29)
                {
                  goto LABEL_280;
                }
              }

              else
              {
                if (v9 >= *(v211 + 16))
                {
                  goto LABEL_281;
                }

                v107 = *(v210 + 8 * v9);

                v29 = __OFADD__(v9++, 1);
                if (v29)
                {
                  goto LABEL_280;
                }
              }

              if (qword_27F53F320 != -1)
              {
                swift_once();
              }

              v216 = v107;
              v217 = v9;
              sub_252E37604();
              if (qword_27F542D48)
              {
                v108 = qword_27F542D48;
              }

              else
              {
                v109 = [objc_allocWithZone(type metadata accessor for MatterAccessoryManager()) init];
                v110 = qword_27F542D48;
                qword_27F542D48 = v109;
                v108 = v109;
              }

              sub_252E37614();
              v111 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
              swift_beginAccess();
              v112 = *&v108[v111];
              if (v112 >> 62)
              {
                if (v112 < 0)
                {
                  v118 = *&v108[v111];
                }

                v119 = sub_252E378C4();

                if (!v119)
                {
LABEL_181:
                  v117 = MEMORY[0x277D84F98];
                  v9 = v217;
                  goto LABEL_182;
                }
              }

              else
              {
                v113 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);

                if (!v113)
                {
                  goto LABEL_181;
                }
              }

              sub_252E37604();
              if (qword_27F542D48)
              {
                v114 = qword_27F542D48;
              }

              else
              {
                v115 = [objc_allocWithZone(type metadata accessor for MatterAccessoryManager()) init];
                v116 = qword_27F542D48;
                qword_27F542D48 = v115;
                v114 = v115;
              }

              sub_252E37614();
              v117 = sub_252AC0884(v216);

              v9 = v217;
              if (!v117)
              {
                v117 = sub_252CC479C(MEMORY[0x277D84F90]);
              }

LABEL_182:
              if (*(v117 + 16) && (v120 = sub_252A488EC(67), (v121 & 1) != 0))
              {
                v9 = *(*(v117 + 56) + 8 * v120);

                v208 = v9;
                if (v9 >> 62)
                {
                  v122 = sub_252E378C4();
                  if (v122)
                  {
LABEL_186:
                    v123 = 0;
                    v220 = (v208 & 0xFFFFFFFFFFFFFF8);
                    v221 = v208 & 0xC000000000000001;
                    v219 = (v208 + 32);
                    v214 = v122;
                    while (1)
                    {
LABEL_188:
                      if (v221)
                      {
                        v124 = MEMORY[0x2530ADF00](v123, v208);
                      }

                      else
                      {
                        if (v123 >= *(v220 + 2))
                        {
                          goto LABEL_277;
                        }

                        v124 = *&v219[8 * v123];
                      }

                      v9 = v124;
                      v29 = __OFADD__(v123++, 1);
                      if (v29)
                      {
                        goto LABEL_276;
                      }

                      v125 = [v124 cleaningJob];
                      if (v125)
                      {
                        break;
                      }

                      if (v123 == v122)
                      {
                        goto LABEL_216;
                      }
                    }

                    v126 = v125;
                    *&v222 = v9;
                    v2 = *(v215 + 16);
                    if (v2)
                    {
                      v127 = v213;
                      v128 = MEMORY[0x277D84F90];
                      do
                      {
                        v132 = *v127++;
                        v131 = v132;
                        if (v132 != 14)
                        {
                          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                          v224 = v128;
                          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                          {
                            sub_2529AA460(0, *(v128 + 16) + 1, 1);
                            v128 = v224;
                          }

                          v130 = *(v128 + 16);
                          v129 = *(v128 + 24);
                          if (v130 >= v129 >> 1)
                          {
                            sub_2529AA460((v129 > 1), v130 + 1, 1);
                            v128 = v224;
                          }

                          *(v128 + 16) = v130 + 1;
                          *(v128 + 8 * v130 + 32) = v131;
                        }

                        --v2;
                      }

                      while (v2);
                    }

                    else
                    {
                      v128 = MEMORY[0x277D84F90];
                    }

                    v9 = *(v128 + 16);
                    if (!v9)
                    {
LABEL_214:

                      sub_252E37A94();
                      v139 = *(v225 + 16);
                      sub_252E37AC4();
                      sub_252E37AD4();
                      sub_252E37AA4();
                      v18 = 0xD00000000000007ELL;
                      v9 = v217;
                      goto LABEL_159;
                    }

                    v18 = 0;
                    while (2)
                    {
                      if (v18 < *(v128 + 16))
                      {
                        v134 = *(v128 + 32 + 8 * v18++);
                        v2 = [v126 cleanModes];
                        v135 = sub_252E37264();

                        v136 = *(v135 + 16);
                        v137 = 32;
                        do
                        {
                          if (!v136)
                          {

                            v18 = 0xD00000000000007ELL;
                            v122 = v214;
                            if (v123 == v214)
                            {
                              goto LABEL_216;
                            }

                            goto LABEL_188;
                          }

                          v138 = *(v135 + v137);
                          v137 += 8;
                          --v136;
                        }

                        while (v138 != v134);

                        if (v18 != v9)
                        {
                          continue;
                        }

                        goto LABEL_214;
                      }

                      break;
                    }

LABEL_275:
                    __break(1u);
LABEL_276:
                    __break(1u);
LABEL_277:
                    __break(1u);
LABEL_278:
                    __break(1u);
LABEL_279:
                    __break(1u);
LABEL_280:
                    __break(1u);
LABEL_281:
                    __break(1u);
LABEL_282:
                    __break(1u);
LABEL_283:
                    v25 = sub_252E378C4();
                    goto LABEL_5;
                  }
                }

                else
                {
                  v122 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v122)
                  {
                    goto LABEL_186;
                  }
                }

LABEL_216:

                v9 = v217;
              }

              else
              {
              }

LABEL_159:
              if (v9 == v209)
              {
                goto LABEL_222;
              }
            }
          }
        }

        v144 = MEMORY[0x277D84F90];
        goto LABEL_225;
      }

      __break(1u);
      goto LABEL_287;
    }
  }

  v9 = 0;
  while ((v36 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x2530ADF00](v9, v36);
    v39 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_220;
    }

LABEL_19:
    v40 = *(v18 + qword_27F5427D0);

    sub_252E36744();

    if (*(&v225 + 1))
    {
      if (v225 == v222)
      {

LABEL_31:

        v43 = sub_252BF8258(v18);
        v2 = 0xD00000000000007ELL;
        v26 = v221;
        if (!v43)
        {
          goto LABEL_37;
        }

        if (!*(v43 + 2))
        {

LABEL_37:
          if (qword_27F53F4B0 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v218, qword_27F544CB8);
          *&v225 = 0;
          *(&v225 + 1) = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000036, v201 | 0x8000000000000000);
          MEMORY[0x2530AD570](v222, *(&v222 + 1));

          MEMORY[0x2530AD570](0xD00000000000001FLL, v210 | 0x8000000000000000);
          sub_252CC4050(v225, *(&v225 + 1), 0xD000000000000075, v209 | 0x8000000000000000, 1701869940, 0xE400000000000000, 102);

          goto LABEL_40;
        }

        v44 = v43;

        if (!*(v44 + 2))
        {
          goto LABEL_282;
        }

        v45 = *(v44 + 4);

        if (v45 != 46)
        {

          goto LABEL_42;
        }

        goto LABEL_41;
      }

      v38 = sub_252E37DB4();

      if (v38)
      {

        goto LABEL_31;
      }
    }

    ++v9;
    if (v39 == v37)
    {
      goto LABEL_25;
    }
  }

  if (v9 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_221;
  }

  v18 = *(v36 + 8 * v9 + 32);

  v39 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    goto LABEL_19;
  }

LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  v144 = v225;
LABEL_225:

  v225 = v248;
  v226 = v249;
  v227 = v250;
  v228 = v251;
  v233 = v245;
  v234 = v246;
  *v235 = v247[0];
  v230 = v242;
  v231 = v243;
  v229 = v202;
  v232 = v244;
  *&v235[15] = *(v247 + 15);
  v236 = v203;
  v237 = v241;
  v238 = v204;
  memcpy(v239, v240, sizeof(v239));
  *(&v222 + 1) = v144;
  v56 = sub_252E0CFA4(v144, v215, &v225);

  (v201)(v195, v207, v218);
  *&v225 = v18 - 96;
  *(&v225 + 1) = 0x8000000252E98640;
  v145 = *(v56 + 16);
  if (v145)
  {
    v2 = 0;
    v146 = MEMORY[0x277D84F90];
    while (2)
    {
      if (v2 < *(v56 + 16))
      {
        v147 = 0xE400000000000000;
        v148 = 1869903201;
        switch(*(v56 + 32 + 8 * v2))
        {
          case 0:
            v147 = 0xE700000000000000;
            v148 = 0x6E776F6E6B6E75;
            goto LABEL_244;
          case 1:
            v147 = 0xE600000000000000;
            v148 = 0x6D7575636176;
            goto LABEL_244;
          case 2:
            v147 = 0xE300000000000000;
            v148 = 7368557;
            goto LABEL_244;
          case 3:
            v147 = 0xE800000000000000;
            v148 = 0x6E6F697461636176;
            goto LABEL_244;
          case 4:
            v148 = 0x61656C4370656564;
            v147 = 0xE90000000000006ELL;
            goto LABEL_244;
          case 5:
            goto LABEL_244;
          case 6:
            v147 = 0xE500000000000000;
            v148 = 0x6B63697571;
            goto LABEL_244;
          case 7:
            v147 = 0xE500000000000000;
            v148 = 0x7465697571;
            goto LABEL_244;
          case 8:
            v147 = 0xE300000000000000;
            v148 = 7889261;
            goto LABEL_244;
          case 9:
            v148 = 1701736302;
            goto LABEL_244;
          case 0xALL:
            v147 = 0xE900000000000079;
            v148 = 0x6772656E45776F6CLL;
            goto LABEL_244;
          case 0xBLL:
            v147 = 0xE500000000000000;
            v148 = 0x746867696ELL;
            goto LABEL_244;
          case 0xCLL:
            v147 = 0xE300000000000000;
            v148 = 7954788;
            goto LABEL_244;
          case 0xDLL:
            v147 = 0xE300000000000000;
            v148 = 7235949;
            goto LABEL_244;
          case 0xELL:
            v147 = 0xE500000000000000;
            v148 = 0x7465736E75;
            goto LABEL_244;
          case 0xFLL:
            v147 = 0xE800000000000000;
            v148 = 0x6573696F4E776F6CLL;
LABEL_244:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v146 = sub_2529F7A80(0, *(v146 + 2) + 1, 1, v146);
            }

            v9 = *(v146 + 2);
            v149 = *(v146 + 3);
            v18 = v9 + 1;
            if (v9 >= v149 >> 1)
            {
              v146 = sub_2529F7A80((v149 > 1), v9 + 1, 1, v146);
            }

            ++v2;
            *(v146 + 2) = v18;
            v150 = &v146[16 * v9];
            *(v150 + 4) = v148;
            *(v150 + 5) = v147;
            if (v145 == v2)
            {
              goto LABEL_251;
            }

            continue;
          default:
            v224 = *(v56 + 32 + 8 * v2);
LABEL_290:
            result = sub_252E37DF4();
            __break(1u);
            return result;
        }
      }

      goto LABEL_279;
    }
  }

  v146 = MEMORY[0x277D84F90];
LABEL_251:
  v151 = MEMORY[0x2530AD730](v146, MEMORY[0x277D837D0]);
  v153 = v152;

  MEMORY[0x2530AD570](v151, v153);

  v154 = v195;
  sub_252CC3D90(v225, *(&v225 + 1), 0xD00000000000007ELL, v206 | 0x8000000000000000);

  (v198)(v154, v218);
  v2 = 0xD00000000000007ELL;
LABEL_252:
  v225 = v248;
  v226 = v249;
  v227 = v250;
  v228 = v251;
  v233 = v245;
  v234 = v246;
  *v235 = v247[0];
  v230 = v242;
  v231 = v243;
  v155 = v202;
  v229 = v202;
  v232 = v244;
  v157 = v203;
  v156 = v204;
  *&v235[15] = *(v247 + 15);
  v236 = v203;
  v237 = v241;
  v238 = v204;
  memcpy(v239, v240, sizeof(v239));
  v158 = sub_252E09BA8(&v225);
  v225 = v248;
  v226 = v249;
  v227 = v250;
  v228 = v251;
  v233 = v245;
  v234 = v246;
  *v235 = v247[0];
  v230 = v242;
  v231 = v243;
  v229 = v155;
  v232 = v244;
  *&v235[15] = *(v247 + 15);
  v236 = v157;
  v237 = v241;
  v238 = v156;
  memcpy(v239, v240, sizeof(v239));
  v75 = sub_252E09F40(&v225);
  if (!*(v158 + 2))
  {

    if (!*(v75 + 2))
    {

      v80 = 0;
      goto LABEL_260;
    }

    v81 = sub_252E10290(*(&v222 + 1), v75);

    v165 = qword_27F53F4B0;
    v80 = v81;
    if (v165 == -1)
    {
LABEL_258:
      __swift_project_value_buffer(v218, qword_27F544CB8);
      v166 = v194;
      *&v225 = v194;
      *(&v225 + 1) = 0x8000000252E984B0;
      v167 = MEMORY[0x2530AD730](v75, MEMORY[0x277D837D0]);
      v169 = v168;

      MEMORY[0x2530AD570](v167, v169);

      MEMORY[0x2530AD570](v166, 0x8000000252E984D0);
      v224 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545A20, &unk_252E5DE50);
      v170 = sub_252E36F94();
      MEMORY[0x2530AD570](v170);

      sub_252CC3D90(v225, *(&v225 + 1), 0xD00000000000007ELL, 0x8000000252E98410);

      goto LABEL_260;
    }

LABEL_287:
    swift_once();
    goto LABEL_258;
  }

  v225 = v248;
  v226 = v249;
  v227 = v250;
  v228 = v251;
  v233 = v245;
  v234 = v246;
  *v235 = v247[0];
  v230 = v242;
  v231 = v243;
  v229 = v155;
  v232 = v244;
  *&v235[15] = *(v247 + 15);
  v236 = v157;
  v237 = v241;
  v238 = v156;
  memcpy(v239, v240, sizeof(v239));
  v159 = sub_252E0E100(*(&v222 + 1), v158, v75, &v225);

  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v218, qword_27F544CB8);
  *&v225 = v2 - 104;
  *(&v225 + 1) = 0x8000000252E983D0;
  v160 = MEMORY[0x2530AD730](v158, MEMORY[0x277D837D0]);
  v162 = v161;

  MEMORY[0x2530AD570](v160, v162);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E983F0);
  v163 = type metadata accessor for HomeAttributeTargetArea();
  v164 = MEMORY[0x2530AD730](v159, v163);
  MEMORY[0x2530AD570](v164);

  sub_252CC3D90(v225, *(&v225 + 1), 0xD00000000000007ELL, 0x8000000252E98410);

  v80 = 0;
LABEL_260:
  v171 = objc_allocWithZone(type metadata accessor for HomeAttributeCleaningJob());
  v172 = v80;
  v173 = sub_252E36F04();
  v174 = &off_279711000;
  v175 = [v171 initWithIdentifier:0 displayString:v173];

  v176 = v175;
  [v176 setRunState_];
  v177 = *(v56 + 16);
  if (v177)
  {
    *(&v222 + 1) = v172;
    *&v225 = MEMORY[0x277D84F90];
    sub_2529AA3C0(0, v177, 0);
    v178 = v225;
    v179 = *(v225 + 16);
    v180 = 32;
    do
    {
      v181 = *(v56 + v180);
      *&v225 = v178;
      v182 = *(v178 + 24);
      if (v179 >= v182 >> 1)
      {
        sub_2529AA3C0((v182 > 1), v179 + 1, 1);
        v178 = v225;
      }

      *(v178 + 16) = v179 + 1;
      *(v178 + 8 * v179 + 32) = v181;
      v180 += 8;
      ++v179;
      --v177;
    }

    while (v177);

    v172 = *(&v222 + 1);
    v174 = &off_279711000;
  }

  else
  {
  }

  v183 = sub_252E37254();

  [v176 setCleanModes_];

  type metadata accessor for HomeAttributeTargetArea();
  v184 = sub_252E37254();

  [v176 setTargetAreas_];

  [v176 setTargetMap_];
  v185 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v186 = sub_252E36F04();
  v187 = [v185 v174[226]];

  v53 = v187;
  [v53 setType_];
  [v53 setCleaningJob_];

  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v218, qword_27F544CB8);
  *&v225 = 0xD00000000000001FLL;
  *(&v225 + 1) = 0x8000000252E98490;
  v188 = [v53 description];
  v189 = sub_252E36F34();
  v191 = v190;

  MEMORY[0x2530AD570](v189, v191);

  sub_252CC3D90(v225, *(&v225 + 1), 0xD00000000000007ELL, 0x8000000252E98410);

  return v53;
}

uint64_t sub_252D5D644(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 taskType];

    if (v4 == 2)
    {
      return 1;
    }
  }

  result = [a1 userTask];
  if (result)
  {
    v6 = result;
    v7 = [result taskType];

    return v7 == 3;
  }

  return result;
}

id sub_252D5D6E8(void *a1, const void *a2)
{
  v4 = sub_252E36AD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252D5DAD8(a1, a2);
  v10 = [a1 userTask];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v12 = sub_252D6CA80(v11);
    type metadata accessor for MutableAttributeValue();
    swift_allocObject();

    v13 = sub_252D6CC80(v9);
    swift_beginAccess();
    v14 = v12[4];
    v12[4] = v13;
  }

  else
  {
    v12 = 0;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, qword_27F544DA8);
  (*(v5 + 16))(v8, v15, v4);
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_252E379F4();
  v31 = v28;
  v32 = v29;
  MEMORY[0x2530AD570](0xD00000000000003FLL, 0x8000000252E988D0);
  if (v12)
  {
    swift_beginAccess();
    v16 = v12[4];
  }

  else
  {
    v17 = 0;
  }

  v30 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B0, &unk_252E4BE00);
  v18 = sub_252E36F94();
  MEMORY[0x2530AD570](v18);

  sub_252CC3D90(v31, v32, 0xD000000000000094, 0x8000000252E987C0);

  (*(v5 + 8))(v8, v4);
  if (v12)
  {

    v19 = sub_252D6CB58();
  }

  else
  {
    v19 = 0;
  }

  v20 = [a1 filters];
  if (v20)
  {
    v21 = v20;
    type metadata accessor for HomeFilter();
    v22 = sub_252E37264();
  }

  else
  {
    v22 = 0;
  }

  v23 = [a1 time];
  v24 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v24 setUserTask_];
  if (v22)
  {
    type metadata accessor for HomeFilter();
    v25 = sub_252E37254();
  }

  else
  {
    v25 = 0;
  }

  [v24 setFilters_];

  [v24 setTime_];

  return v24;
}

id sub_252D5DAD8(void *a1, const void *a2)
{
  v3 = v2;
  v6 = [a1 userTask];
  if (!v6)
  {
    sub_252C515AC();
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [v6 attribute];

  if (v8 != 6)
  {
LABEL_13:
    memcpy(__dst, a2, sizeof(__dst));
    if (sub_252956B94(__dst) == 1 || BYTE1(__dst[3]) == 3)
    {
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v13 = sub_252E36AD4();
      __swift_project_value_buffer(v13, qword_27F544DA8);
      sub_252CC3D90(0xD000000000000041, 0x8000000252E98770, 0xD000000000000094, 0x8000000252E987C0);
    }

    else
    {
      if (!BYTE1(__dst[3]))
      {
        v9 = 0;
        v12 = v3[3];
        goto LABEL_26;
      }

      if (BYTE1(__dst[3]) != 1)
      {
        v9 = 0;
        v12 = v3[4];
        goto LABEL_26;
      }
    }

    v9 = 0;
    v12 = v3[2];
    goto LABEL_26;
  }

  v9 = sub_252C6E240(a1);
  memcpy(__dst, a2, sizeof(__dst));
  if (sub_252956B94(__dst) == 1 || BYTE1(__dst[3]) == 3)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544DA8);
    sub_252CC3D90(0xD000000000000040, 0x8000000252E98880, 0xD000000000000094, 0x8000000252E987C0);
    v12 = 1.0;
  }

  else
  {
    v10 = 3.0;
    v11 = 5.0;
    if (v9 != 2)
    {
      v11 = 3.0;
      v10 = 2.0;
    }

    if (BYTE1(__dst[3]) != 1)
    {
      v10 = 1.0;
    }

    if (BYTE1(__dst[3]))
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }
  }

LABEL_26:
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_27F544DA8);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000010;
  __dst[1] = 0x8000000252E98860;
  v16 = sub_252E37364();
  MEMORY[0x2530AD570](v16);

  MEMORY[0x2530AD570](0x6E75206874697720, 0xEB00000000207469);
  v17 = sub_252E36F94();
  MEMORY[0x2530AD570](v17);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000094, 0x8000000252E987C0);

  v18 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v19 = sub_252E36F04();
  v20 = [v18 initWithIdentifier:0 displayString:{v19, v9}];

  v21 = v20;
  [v21 setDoubleValue_];
  [v21 setUnit_];
  [v21 setType_];

  return v21;
}

uint64_t sub_252D5DEE4(void *a1)
{
  if (sub_252CCFCB8())
  {
    return 0;
  }

  return sub_252D5D644(a1);
}

double sub_252D5DF58@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AddDefaultDeltaValueHandler();
  v2 = swift_allocObject();
  result = 25.0;
  *(v2 + 16) = xmmword_252E5DE60;
  *(v2 + 32) = 0x4024000000000000;
  *a1 = v2;
  return result;
}

uint64_t sub_252D5DFA0()
{
  result = sub_2529FF448(&unk_2864A9AF0);
  qword_27F545A28 = result;
  return result;
}

uint64_t sub_252D5DFC8()
{
  v0 = sub_252C76454(&unk_2864A9B50);
  if (qword_27F53F700 != -1)
  {
    swift_once();
  }

  result = sub_2529F26F8(v1, v0);
  qword_27F545A30 = result;
  return result;
}

uint64_t sub_252D5E040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[266] = v3;
  v4[265] = a3;
  v4[264] = a2;
  v4[263] = a1;
  v5 = sub_252E34014();
  v4[267] = v5;
  v6 = *(v5 - 8);
  v4[268] = v6;
  v7 = *(v6 + 64) + 15;
  v4[269] = swift_task_alloc();
  v4[270] = swift_task_alloc();
  v4[271] = swift_task_alloc();
  v4[272] = swift_task_alloc();
  v4[273] = swift_task_alloc();
  v4[274] = swift_task_alloc();
  v4[275] = swift_task_alloc();
  v4[276] = swift_task_alloc();
  v4[277] = swift_task_alloc();
  v4[278] = swift_task_alloc();
  v4[279] = swift_task_alloc();
  v4[280] = swift_task_alloc();
  v4[281] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D5E19C, 0, 0);
}

uint64_t sub_252D5E19C()
{
  v175 = v0;
  v1 = [*(v0 + 2112) userTask];
  *(v0 + 2256) = v1;
  if (!v1)
  {
    if (qword_27F53F4D0 != -1)
    {
LABEL_151:
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544D18);
    sub_252CC4050(0xD000000000000027, 0x8000000252E98960, 0xD00000000000009BLL, 0x8000000252E98990, 0xD00000000000001FLL, 0x8000000252E84990, 44);
    sub_2529318DC();
    swift_allocError();
    *v14 = 8;
    swift_willThrow();
    v15 = *(v0 + 2248);
    v16 = *(v0 + 2240);
    v17 = *(v0 + 2232);
    v18 = *(v0 + 2224);
    v19 = *(v0 + 2216);
    v20 = *(v0 + 2208);
    v21 = *(v0 + 2200);
    v22 = *(v0 + 2192);
    v23 = *(v0 + 2184);
    v24 = *(v0 + 2176);
    v164 = *(v0 + 2168);
    v167 = *(v0 + 2160);
    v169 = *(v0 + 2152);

    v25 = *(v0 + 8);

    return v25();
  }

  v2 = v1;
  v3 = MEMORY[0x277D84F90];
  v171 = v0;
  v166 = *(v0 + 2120);
  if (!v166)
  {
    goto LABEL_65;
  }

  v4 = sub_252C285F0();
  v5 = v4;
  __dst[0] = v3;
  if (v4 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v7 = MEMORY[0x277D84F90];
    v168 = v2;
    if (i)
    {
      v8 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x2530ADF00](v8, v5);
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v9 = *(v5 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        sub_252DA55BC([v2 attribute]);

        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
          v2 = v168;
        }

        sub_252E372D4();
        ++v8;
        if (v11 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

LABEL_20:

    v27 = sub_252C285F0();
    v28 = v27;
    __dst[0] = v7;
    if (v27 >> 62)
    {
      v5 = sub_252E378C4();
    }

    else
    {
      v5 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = MEMORY[0x277D84F90];
    if (v5)
    {
      v30 = 0;
      while (1)
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x2530ADF00](v30, v28);
        }

        else
        {
          if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v31 = *(v28 + 8 * v30 + 32);
        }

        v32 = v31;
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        sub_252DA55BC([v2 attribute]);

        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v34 = *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
          v2 = v168;
        }

        sub_252E372D4();
        ++v30;
        if (v33 == v5)
        {
          v5 = __dst[0];
          goto LABEL_34;
        }
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v5 = MEMORY[0x277D84F90];
LABEL_34:

    __dst[0] = v29;
    if (!(v5 >> 62))
    {
      v35 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v35)
      {
        break;
      }

      goto LABEL_36;
    }

    v35 = sub_252E378C4();
    if (!v35)
    {
      break;
    }

LABEL_36:
    v36 = 0;
    v37 = *(v171 + 2128);
    v3 = MEMORY[0x277D84F90];
LABEL_37:
    v165 = v3;
    v38 = v36;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x2530ADF00](v38, v5);
      }

      else
      {
        if (v38 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v39 = *(v5 + 8 * v38 + 32);
      }

      v40 = v39;
      v36 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      sub_252DA49A4();
      v42 = v41;
      memcpy((v171 + 1024), (v37 + 112), 0x1F8uLL);
      if (sub_252956B94((v171 + 1024)) == 1 || (v43 = *(v171 + 1224), !*(v43 + 16)))
      {
        v44 = 4;
      }

      else
      {
        v44 = *(v43 + 32);
      }

      sub_252C3AC5C(v44);
      v46 = v45;

      v47 = sub_252DA124C(0);
      if (v47)
      {
        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v48 = *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v3 = __dst[0];
        v2 = v168;
        if (v36 != v35)
        {
          goto LABEL_37;
        }

        goto LABEL_64;
      }

      ++v38;
      v2 = v168;
      if (v36 == v35)
      {
        v3 = v165;
        goto LABEL_64;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

  v3 = MEMORY[0x277D84F90];
LABEL_64:

  v0 = v171;
LABEL_65:
  *(v0 + 2264) = v3;
  v49 = *(v0 + 2128);
  v50 = *(v0 + 2112);
  memcpy((v0 + 16), (v49 + 112), 0x1F8uLL);
  memcpy(__dst, (v49 + 112), 0x1F8uLL);
  v51 = v50;
  sub_2529D291C(v0 + 16, v0 + 520);
  v52 = sub_252953488(v50, __dst, 0);
  *(v0 + 2272) = v52;

  v53 = [v2 attribute];
  if (v53 <= 27)
  {
    v54 = v166;
    if (v53 == 6)
    {
      v81 = *(v0 + 2128);
      v82 = swift_allocObject();
      *(v0 + 2280) = v82;
      v82[2] = v81;
      v82[3] = v3;
      v82[4] = v52;

      if (!v166)
      {

        if (qword_27F53F4D0 != -1)
        {
          swift_once();
        }

        v121 = *(v0 + 2248);
        v122 = *(v0 + 2128);
        v123 = sub_252E36AD4();
        __swift_project_value_buffer(v123, qword_27F544D18);
        sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
        v124 = v122[12];
        v125 = v122[13];
        __swift_project_boxed_opaque_existential_1(v122 + 9, v124);
        sub_252AD7CC4();
        v126 = swift_task_alloc();
        *(v0 + 2336) = v126;
        *v126 = v0;
        v126[1] = sub_252D5FD38;
        v113 = *(v0 + 2248);
        v177 = v125;
        v114 = &unk_252E5DFB8;
        v115 = v0 + 1968;
        goto LABEL_170;
      }

      v83 = *(v81 + 48);
      v84 = *(v0 + 2120);
      v85 = *__swift_project_boxed_opaque_existential_1((v81 + 24), v83);
      v173 = sub_252C10E14;

      v86 = swift_task_alloc();
      *(v0 + 2288) = v86;
      *v86 = v0;
      v87 = sub_252D5F8F8;
      goto LABEL_101;
    }

    if (v53 != 7)
    {
LABEL_99:
      v88 = *(v0 + 2128);
      v82 = swift_allocObject();
      *(v0 + 2848) = v82;
      v82[2] = v88;
      v82[3] = v3;
      v82[4] = v52;

      if (!v54)
      {

        if (qword_27F53F4D0 != -1)
        {
          swift_once();
        }

        v134 = *(v0 + 2160);
        v135 = *(v0 + 2128);
        v136 = sub_252E36AD4();
        __swift_project_value_buffer(v136, qword_27F544D18);
        sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
        v124 = v135[12];
        v137 = v135[13];
        __swift_project_boxed_opaque_existential_1(v135 + 9, v124);
        sub_252AD7CC4();
        v138 = swift_task_alloc();
        *(v0 + 2904) = v138;
        *v138 = v0;
        v138[1] = sub_252D65974;
        v113 = *(v0 + 2160);
        v177 = v137;
        v114 = &unk_252E5DF38;
        v115 = v0 + 1528;
        goto LABEL_170;
      }

      v89 = *(v88 + 48);
      v90 = *(v0 + 2120);
      v85 = *__swift_project_boxed_opaque_existential_1((v88 + 24), v89);
      v173 = sub_252C11770;

      v86 = swift_task_alloc();
      *(v0 + 2856) = v86;
      *v86 = v0;
      v87 = sub_252D65534;
LABEL_101:
      v86[1] = v87;
      v91 = v85;
      v92 = v3;
      v93 = v52;
      v94 = v173;
      goto LABEL_164;
    }

    v65 = *(v0 + 2128);
    v66 = swift_allocObject();
    *(v0 + 2472) = v66;
    *(v66 + 16) = v65;
    *(v66 + 24) = v3;

    if (v166)
    {
      v67 = *(v65 + 48);
      v68 = *(v0 + 2120);
      v69 = *__swift_project_boxed_opaque_existential_1((v65 + 24), v67);
      v172 = sub_252C113F8;

      v70 = swift_task_alloc();
      *(v0 + 2480) = v70;
      *v70 = v0;
      v71 = sub_252D61938;
      goto LABEL_93;
    }

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v127 = *(v0 + 2216);
    v128 = *(v0 + 2128);
    v129 = sub_252E36AD4();
    __swift_project_value_buffer(v129, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v110 = v128[12];
    v130 = v128[13];
    __swift_project_boxed_opaque_existential_1(v128 + 9, v110);
    sub_252AD7CC4();
    v131 = swift_task_alloc();
    *(v0 + 2528) = v131;
    *v131 = v0;
    v131[1] = sub_252D61D48;
    v113 = *(v0 + 2216);
    v177 = v130;
    v114 = &unk_252E5DF88;
    v115 = v0 + 1808;
    goto LABEL_129;
  }

  v54 = v166;
  if (v53 == 28)
  {
    v72 = *(v0 + 2128);
    v66 = swift_allocObject();
    *(v0 + 2568) = v66;
    *(v66 + 16) = v72;
    *(v66 + 24) = v3;

    if (v166)
    {
      v73 = *(v72 + 48);
      v74 = *(v0 + 2120);
      v69 = *__swift_project_boxed_opaque_existential_1((v72 + 24), v73);
      v172 = sub_252C115B4;

      v70 = swift_task_alloc();
      *(v0 + 2576) = v70;
      *v70 = v0;
      v71 = sub_252D62940;
      goto LABEL_93;
    }

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v107 = *(v0 + 2200);
    v108 = *(v0 + 2128);
    v109 = sub_252E36AD4();
    __swift_project_value_buffer(v109, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v110 = v108[12];
    v111 = v108[13];
    __swift_project_boxed_opaque_existential_1(v108 + 9, v110);
    sub_252AD7CC4();
    v112 = swift_task_alloc();
    *(v0 + 2624) = v112;
    *v112 = v0;
    v112[1] = sub_252D62D50;
    v113 = *(v0 + 2200);
    v177 = v111;
    v114 = &unk_252E5DF70;
    v115 = v0 + 1728;
LABEL_129:
    v132 = v66;
    v133 = v110;
LABEL_171:

    return sub_252BDB88C(v115, v114, v132, v113, 0, 0, 0, v133);
  }

  if (v53 == 42)
  {
    v75 = *(v0 + 2128);
    v66 = swift_allocObject();
    *(v0 + 2376) = v66;
    *(v66 + 16) = v75;
    *(v66 + 24) = v3;

    if (v166)
    {
      v76 = *(v75 + 48);
      v77 = *(v0 + 2120);
      v69 = *__swift_project_boxed_opaque_existential_1((v75 + 24), v76);
      v172 = sub_252C11240;

      v70 = swift_task_alloc();
      *(v0 + 2384) = v70;
      *v70 = v0;
      v71 = sub_252D60930;
LABEL_93:
      v70[1] = v71;
      v78 = v69;
      v79 = v3;
      v80 = v172;
LABEL_94:

      return v80(0, v78, v79);
    }

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v116 = *(v0 + 2232);
    v117 = *(v0 + 2128);
    v118 = sub_252E36AD4();
    __swift_project_value_buffer(v118, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v110 = v117[12];
    v119 = v117[13];
    __swift_project_boxed_opaque_existential_1(v117 + 9, v110);
    sub_252AD7CC4();
    v120 = swift_task_alloc();
    *(v0 + 2432) = v120;
    *v120 = v0;
    v120[1] = sub_252D60D40;
    v113 = *(v0 + 2232);
    v177 = v119;
    v114 = &unk_252E5DFA0;
    v115 = v0 + 1888;
    goto LABEL_129;
  }

  if (v53 != 55)
  {
    goto LABEL_99;
  }

  v55 = MEMORY[0x277D84F90];
  if (v166)
  {
    v170 = *(v171 + 2120);
    v56 = sub_252C285F0();
    v57 = v56;
    __dst[0] = v55;
    v0 = v56 & 0xFFFFFFFFFFFFFF8;
    if (v56 >> 62)
    {
      v58 = sub_252E378C4();
    }

    else
    {
      v58 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v59 = 0;
LABEL_73:
    *(v171 + 2664) = v55;
    while (v58 != v59)
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        v60 = MEMORY[0x2530ADF00](v59, v57);
      }

      else
      {
        if (v59 >= *(v0 + 16))
        {
          goto LABEL_150;
        }

        v60 = *(v57 + 8 * v59 + 32);
      }

      v61 = v60;
      v62 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        __break(1u);
LABEL_150:
        __break(1u);
        goto LABEL_151;
      }

      v63 = sub_252DA124C(0);

      ++v59;
      if (v63)
      {
        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v64 = *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v55 = __dst[0];
        v59 = v62;
        goto LABEL_73;
      }
    }

    v95 = [v170 entityResponses];
    if (!v95)
    {
      goto LABEL_134;
    }

    v96 = v95;
    type metadata accessor for HomeEntityResponse();
    v97 = sub_252E37264();

    if (v97 >> 62)
    {
      goto LABEL_157;
    }

    v98 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v98)
    {
      goto LABEL_105;
    }

LABEL_133:
    while (1)
    {

LABEL_134:
      v139 = [v170 entityResponses];
      if (!v139)
      {
        break;
      }

      v140 = v139;
      type metadata accessor for HomeEntityResponse();
      v97 = sub_252E37264();

      if (v97 >> 62)
      {
        v141 = sub_252E378C4();
        if (!v141)
        {
LABEL_160:

          break;
        }
      }

      else
      {
        v141 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v141)
        {
          goto LABEL_160;
        }
      }

      v142 = 0;
      while (1)
      {
        if ((v97 & 0xC000000000000001) != 0)
        {
          v143 = MEMORY[0x2530ADF00](v142, v97);
        }

        else
        {
          if (v142 >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_156;
          }

          v143 = *(v97 + 32 + 8 * v142);
        }

        v144 = v143;
        v102 = __OFADD__(v142++, 1);
        if (v102)
        {
          break;
        }

        v145 = sub_252DA6828();
        v146 = *(v145 + 2);
        v147 = 32;
        while (v146)
        {
          v148 = *&v145[v147];
          v147 += 8;
          --v146;
          if (v148 == 28)
          {
            v149 = *(v171 + 2128);

            v150 = *(v149 + 48);

            v151 = v170;
            v152 = *__swift_project_boxed_opaque_existential_1((v149 + 24), v150);

            v153 = swift_task_alloc();
            *(v171 + 2672) = v153;
            *v153 = v171;
            v153[1] = sub_252D63948;
            v78 = v152;
            v79 = v55;
            v80 = sub_252C115B4;
            goto LABEL_94;
          }
        }

        if (v142 == v141)
        {
          goto LABEL_160;
        }
      }

      while (1)
      {
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        v98 = sub_252E378C4();
        if (!v98)
        {
          break;
        }

LABEL_105:
        v99 = 0;
        while (1)
        {
          if ((v97 & 0xC000000000000001) != 0)
          {
            v100 = MEMORY[0x2530ADF00](v99, v97);
          }

          else
          {
            if (v99 >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_154;
            }

            v100 = *(v97 + 32 + 8 * v99);
          }

          v101 = v100;
          v102 = __OFADD__(v99++, 1);
          if (v102)
          {
            break;
          }

          v103 = sub_252DA6828();
          v104 = *(v103 + 2);
          v105 = 32;
          while (v104)
          {
            v106 = *&v103[v105];
            v105 += 8;
            --v104;
            if (v106 == 28)
            {

              goto LABEL_133;
            }
          }

          if (v99 == v98)
          {
            goto LABEL_133;
          }
        }

        __break(1u);
LABEL_154:
        __break(1u);
      }
    }

    v54 = v166;
  }

  *(v171 + 2744) = v55;
  v154 = *(v171 + 2128);
  v82 = swift_allocObject();
  *(v171 + 2752) = v82;
  v82[2] = v154;
  v82[3] = v55;
  v82[4] = v52;

  if (!v54)
  {

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v159 = *(v171 + 2176);
    v160 = *(v171 + 2128);
    v161 = sub_252E36AD4();
    __swift_project_value_buffer(v161, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v124 = v160[12];
    v162 = v160[13];
    __swift_project_boxed_opaque_existential_1(v160 + 9, v124);
    sub_252AD7CC4();
    v163 = swift_task_alloc();
    *(v171 + 2808) = v163;
    *v163 = v171;
    v163[1] = sub_252D6493C;
    v113 = *(v171 + 2176);
    v177 = v162;
    v114 = &unk_252E5DF50;
    v115 = v171 + 1608;
LABEL_170:
    v132 = v82;
    v133 = v124;
    goto LABEL_171;
  }

  v155 = *(v154 + 48);
  v156 = *(v171 + 2120);
  v157 = *__swift_project_boxed_opaque_existential_1((v154 + 24), v155);

  v158 = swift_task_alloc();
  *(v171 + 2760) = v158;
  *v158 = v171;
  v158[1] = sub_252D644FC;
  v91 = v157;
  v92 = v55;
  v93 = v52;
  v94 = sub_252C11770;
LABEL_164:

  return v94(0, v91, v92, v93);
}

uint64_t sub_252D5F8F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2288);
  v6 = *v2;
  v4[287] = a1;
  v4[288] = v1;

  v7 = v3[284];
  v8 = v3[283];
  if (v1)
  {

    swift_bridgeObjectRelease_n();

    return MEMORY[0x2822009F8](sub_252D5FBF0, 0, 0);
  }

  else
  {
    v9 = v4[265];

    swift_bridgeObjectRelease_n();
    v10 = swift_task_alloc();
    v4[289] = v10;
    *v10 = v6;
    v10[1] = sub_252D5FAD8;
    v11 = v4[266];

    return sub_252E174F4(v9);
  }
}

uint64_t sub_252D5FAD8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2312);
  v7 = *v2;
  *(v3 + 2320) = a1;
  *(v3 + 2328) = v1;

  if (v1)
  {
    v5 = sub_252D5FFFC;
  }

  else
  {
    v5 = sub_252D5FEA0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D5FBF0()
{
  v1 = *(v0 + 2280);
  v2 = *(v0 + 2120);

  v19 = *(v0 + 2304);
  v3 = *(v0 + 2272);

  v4 = *(v0 + 2248);
  v5 = *(v0 + 2240);
  v6 = *(v0 + 2232);
  v7 = *(v0 + 2224);
  v8 = *(v0 + 2216);
  v9 = *(v0 + 2208);
  v10 = *(v0 + 2200);
  v11 = *(v0 + 2192);
  v12 = *(v0 + 2184);
  v13 = *(v0 + 2176);
  v16 = *(v0 + 2168);
  v17 = *(v0 + 2160);
  v18 = *(v0 + 2152);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252D5FD38()
{
  v2 = *v1;
  v3 = *(*v1 + 2336);
  v4 = *v1;
  *(*v1 + 2344) = v0;

  (*(v2[268] + 8))(v2[281], v2[267]);
  if (v0)
  {
    v5 = sub_252D607F0;
  }

  else
  {
    v5 = sub_252D60614;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D5FEA0()
{
  v1 = v0 + 262;
  v2 = v0[290];
  v3 = v0[287];
  v0[262] = v3;
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

  v8 = v0[280];
  v9 = v0[266];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[294] = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[295] = v12;
  *v12 = v0;
  v12[1] = sub_252D60150;
  v13 = v0[280];

  return sub_252BDB88C((v0 + 251), &unk_252E5DFC0, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252D5FFFC()
{
  v1 = *(v0 + 2280);
  v2 = *(v0 + 2120);

  v19 = *(v0 + 2328);
  v3 = *(v0 + 2272);

  v4 = *(v0 + 2248);
  v5 = *(v0 + 2240);
  v6 = *(v0 + 2232);
  v7 = *(v0 + 2224);
  v8 = *(v0 + 2216);
  v9 = *(v0 + 2208);
  v10 = *(v0 + 2200);
  v11 = *(v0 + 2192);
  v12 = *(v0 + 2184);
  v13 = *(v0 + 2176);
  v16 = *(v0 + 2168);
  v17 = *(v0 + 2160);
  v18 = *(v0 + 2152);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252D60150()
{
  v2 = *v1;
  v3 = *(*v1 + 2360);
  v7 = *v1;
  *(*v1 + 2368) = v0;

  if (v0)
  {
    (*(v2[268] + 8))(v2[280], v2[267]);
    v4 = sub_252D604A4;
  }

  else
  {
    v5 = v2[294];
    (*(v2[268] + 8))(v2[280], v2[267]);

    v4 = sub_252D602A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D602A8()
{
  v1 = *(v0 + 2128);
  v2 = *(v0 + 2112);
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

  v8 = *(v0 + 2320);
  v9 = *(v0 + 2296);
  v10 = *(v0 + 2280);
  v11 = *(v0 + 2120);
  v12 = *(v0 + 2104);
  (*(v4 + 112))(v7, v0 + 2008, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2008));

  v13 = *(v0 + 2272);
  v14 = *(v0 + 2256);
  v15 = *(v0 + 2248);
  v16 = *(v0 + 2240);
  v17 = *(v0 + 2232);
  v18 = *(v0 + 2224);
  v19 = *(v0 + 2216);
  v20 = *(v0 + 2208);
  v21 = *(v0 + 2200);
  v22 = *(v0 + 2192);
  v25 = *(v0 + 2184);
  v26 = *(v0 + 2176);
  v27 = *(v0 + 2168);
  v28 = *(v0 + 2160);
  v29 = *(v0 + 2152);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_252D604A4()
{
  v1 = *(v0 + 2352);
  v2 = *(v0 + 2320);
  v3 = *(v0 + 2280);
  v4 = *(v0 + 2120);

  v21 = *(v0 + 2368);
  v5 = *(v0 + 2272);

  v6 = *(v0 + 2248);
  v7 = *(v0 + 2240);
  v8 = *(v0 + 2232);
  v9 = *(v0 + 2224);
  v10 = *(v0 + 2216);
  v11 = *(v0 + 2208);
  v12 = *(v0 + 2200);
  v13 = *(v0 + 2192);
  v14 = *(v0 + 2184);
  v15 = *(v0 + 2176);
  v18 = *(v0 + 2168);
  v19 = *(v0 + 2160);
  v20 = *(v0 + 2152);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_252D60614()
{
  v1 = v0[266];
  v2 = v0[264];
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

  v8 = v0[285];
  v9 = v0[263];
  (*(v4 + 112))(v7, v0 + 246, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 246);

  v10 = v0[284];
  v11 = v0[282];
  v12 = v0[281];
  v13 = v0[280];
  v14 = v0[279];
  v15 = v0[278];
  v16 = v0[277];
  v17 = v0[276];
  v18 = v0[275];
  v19 = v0[274];
  v22 = v0[273];
  v23 = v0[272];
  v24 = v0[271];
  v25 = v0[270];
  v26 = v0[269];

  v20 = v0[1];

  return v20();
}

uint64_t sub_252D607F0()
{
  v1 = *(v0 + 2280);

  v18 = *(v0 + 2344);
  v2 = *(v0 + 2272);

  v3 = *(v0 + 2248);
  v4 = *(v0 + 2240);
  v5 = *(v0 + 2232);
  v6 = *(v0 + 2224);
  v7 = *(v0 + 2216);
  v8 = *(v0 + 2208);
  v9 = *(v0 + 2200);
  v10 = *(v0 + 2192);
  v11 = *(v0 + 2184);
  v12 = *(v0 + 2176);
  v15 = *(v0 + 2168);
  v16 = *(v0 + 2160);
  v17 = *(v0 + 2152);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252D60930(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2384);
  v6 = *v2;
  v4[299] = a1;
  v4[300] = v1;

  v7 = v3[283];
  if (v1)
  {
    swift_bridgeObjectRelease_n();

    return MEMORY[0x2822009F8](sub_252D60BF8, 0, 0);
  }

  else
  {
    v8 = v4[265];
    swift_bridgeObjectRelease_n();
    v9 = swift_task_alloc();
    v4[301] = v9;
    *v9 = v6;
    v9[1] = sub_252D60AE0;
    v10 = v4[266];

    return sub_252E174F4(v8);
  }
}

uint64_t sub_252D60AE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2408);
  v7 = *v2;
  *(v3 + 2416) = a1;
  *(v3 + 2424) = v1;

  if (v1)
  {
    v5 = sub_252D61004;
  }

  else
  {
    v5 = sub_252D60EA8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D60BF8()
{
  v1 = *(v0 + 2376);
  v2 = *(v0 + 2120);

  v19 = *(v0 + 2400);
  v3 = *(v0 + 2272);

  v4 = *(v0 + 2248);
  v5 = *(v0 + 2240);
  v6 = *(v0 + 2232);
  v7 = *(v0 + 2224);
  v8 = *(v0 + 2216);
  v9 = *(v0 + 2208);
  v10 = *(v0 + 2200);
  v11 = *(v0 + 2192);
  v12 = *(v0 + 2184);
  v13 = *(v0 + 2176);
  v16 = *(v0 + 2168);
  v17 = *(v0 + 2160);
  v18 = *(v0 + 2152);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252D60D40()
{
  v2 = *v1;
  v3 = *(*v1 + 2432);
  v4 = *v1;
  *(*v1 + 2440) = v0;

  (*(v2[268] + 8))(v2[279], v2[267]);
  if (v0)
  {
    v5 = sub_252D617F8;
  }

  else
  {
    v5 = sub_252D6161C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D60EA8()
{
  v1 = v0 + 261;
  v2 = v0[302];
  v3 = v0[299];
  v0[261] = v3;
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

  v8 = v0[278];
  v9 = v0[266];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[306] = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[307] = v12;
  *v12 = v0;
  v12[1] = sub_252D61158;
  v13 = v0[278];

  return sub_252BDB88C((v0 + 241), &unk_252E5DFA8, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252D61004()
{
  v1 = *(v0 + 2376);
  v2 = *(v0 + 2120);

  v19 = *(v0 + 2424);
  v3 = *(v0 + 2272);

  v4 = *(v0 + 2248);
  v5 = *(v0 + 2240);
  v6 = *(v0 + 2232);
  v7 = *(v0 + 2224);
  v8 = *(v0 + 2216);
  v9 = *(v0 + 2208);
  v10 = *(v0 + 2200);
  v11 = *(v0 + 2192);
  v12 = *(v0 + 2184);
  v13 = *(v0 + 2176);
  v16 = *(v0 + 2168);
  v17 = *(v0 + 2160);
  v18 = *(v0 + 2152);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252D61158()
{
  v2 = *v1;
  v3 = *(*v1 + 2456);
  v7 = *v1;
  *(*v1 + 2464) = v0;

  if (v0)
  {
    (*(v2[268] + 8))(v2[278], v2[267]);
    v4 = sub_252D614AC;
  }

  else
  {
    v5 = v2[306];
    (*(v2[268] + 8))(v2[278], v2[267]);

    v4 = sub_252D612B0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D612B0()
{
  v1 = *(v0 + 2128);
  v2 = *(v0 + 2112);
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

  v8 = *(v0 + 2416);
  v9 = *(v0 + 2392);
  v10 = *(v0 + 2376);
  v11 = *(v0 + 2120);
  v12 = *(v0 + 2104);
  (*(v4 + 112))(v7, v0 + 1928, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1928));

  v13 = *(v0 + 2272);
  v14 = *(v0 + 2256);
  v15 = *(v0 + 2248);
  v16 = *(v0 + 2240);
  v17 = *(v0 + 2232);
  v18 = *(v0 + 2224);
  v19 = *(v0 + 2216);
  v20 = *(v0 + 2208);
  v21 = *(v0 + 2200);
  v22 = *(v0 + 2192);
  v25 = *(v0 + 2184);
  v26 = *(v0 + 2176);
  v27 = *(v0 + 2168);
  v28 = *(v0 + 2160);
  v29 = *(v0 + 2152);

  v23 = *(v0 + 8);

  return v23();
}