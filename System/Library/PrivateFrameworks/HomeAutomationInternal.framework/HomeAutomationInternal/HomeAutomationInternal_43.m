uint64_t sub_252C513E8()
{
  result = [v0 userTask];
  if (result)
  {
    v2 = result;
    v3 = [result value];

    if (!v3)
    {
      return 0;
    }

    result = [v0 userTask];
    if (!result)
    {
      return result;
    }

    v4 = result;
    v5 = [result value];

    if (v5)
    {
      [v5 unit];

      v6 = [v0 userTask];
      if (v6 && (v7 = v6, v8 = [v6 value], v7, v8))
      {
        v9 = [v8 unit];

        return v9 != 0;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_252C51508()
{
  v1 = [v0 userTask];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 taskType];

    if (v3 == 2)
    {
      return 1;
    }
  }

  result = [v0 userTask];
  if (result)
  {
    v5 = result;
    v6 = [result taskType];

    return v6 == 3;
  }

  return result;
}

uint64_t sub_252C515AC()
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

  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E8CA80, 0xD000000000000090, 0x8000000252E8C8B0);
}

uint64_t sub_252C516E0()
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

  sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E8C9E0, 0xD000000000000090, 0x8000000252E8C8B0);
}

uint64_t sub_252C51814(unsigned __int8 a1)
{
  v3 = [v1 filters];
  if (!v3)
  {
    sub_252C516E0();
    return 0;
  }

  v4 = v3;
  type metadata accessor for HomeFilter();
  v5 = sub_252E37264();

  if (a1 <= 1u)
  {
    if (!a1)
    {
      if (v5 >> 62)
      {
        goto LABEL_59;
      }

      for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
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
              goto LABEL_55;
            }

            v8 = *(v5 + 8 * v7 + 32);
          }

          v9 = v8;
          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          v11 = [v8 homeName];
          if (v11)
          {
            goto LABEL_50;
          }

          ++v7;
          if (v10 == i)
          {
            goto LABEL_66;
          }
        }

LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        ;
      }

      goto LABEL_66;
    }

    if (v5 >> 62)
    {
      v16 = sub_252E378C4();
      if (v16)
      {
LABEL_30:
        v17 = 0;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x2530ADF00](v17, v5);
          }

          else
          {
            if (v17 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }

            v18 = *(v5 + 8 * v17 + 32);
          }

          v9 = v18;
          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          v11 = [v18 zoneName];
          if (v11)
          {
            goto LABEL_50;
          }

          ++v17;
          if (v19 == v16)
          {
            goto LABEL_66;
          }
        }

LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    else
    {
      v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_30;
      }
    }

LABEL_66:

    return 0;
  }

  if (a1 == 2)
  {
    if (v5 >> 62)
    {
      v12 = sub_252E378C4();
      if (!v12)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        goto LABEL_66;
      }
    }

    v13 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x2530ADF00](v13, v5);
      }

      else
      {
        if (v13 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v14 = *(v5 + 8 * v13 + 32);
      }

      v9 = v14;
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v11 = [v14 roomName];
      if (v11)
      {
        goto LABEL_50;
      }

      ++v13;
      if (v15 == v12)
      {
        goto LABEL_66;
      }
    }

    __break(1u);
    goto LABEL_52;
  }

  if (v5 >> 62)
  {
    v20 = sub_252E378C4();
    if (!v20)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v20 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_66;
    }
  }

  v21 = 0;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x2530ADF00](v21, v5);
    }

    else
    {
      if (v21 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v22 = *(v5 + 8 * v21 + 32);
    }

    v9 = v22;
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_53;
    }

    v11 = [v22 groupName];
    if (v11)
    {
      break;
    }

    ++v21;
    if (v23 == v20)
    {
      goto LABEL_66;
    }
  }

LABEL_50:
  v24 = v11;

  return 1;
}

uint64_t sub_252C51BA0(SEL *a1)
{
  if (sub_252C4F88C())
  {
    result = [v1 filters];
    if (!result)
    {
      return result;
    }

    v4 = result;
    type metadata accessor for HomeFilter();
    v5 = sub_252E37264();

    if (v5 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
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
            goto LABEL_16;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = [v8 *a1];
        if (v11)
        {
          v12 = v11;

          return 1;
        }

        ++v7;
        if (v10 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
  }

  return 0;
}

uint64_t sub_252C51CE8()
{
  if (sub_252C4F88C())
  {
    result = [v0 filters];
    if (!result)
    {
      return result;
    }

    v2 = result;
    type metadata accessor for HomeFilter();
    v3 = sub_252E37264();

    if (v3 >> 62)
    {
      goto LABEL_19;
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

        v9 = [v6 outerDeviceName];
        if (v9)
        {
          v11 = v9;

          return 1;
        }

        v10 = [v7 homeEntityName];
        if (v10)
        {
          v12 = v10;

          return 1;
        }

        ++v5;
        if (v8 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_20:
  }

  return 0;
}

id sub_252C51E7C(SEL *a1)
{
  if ((sub_252C51BA0(a1) & 1) == 0)
  {
    return 0;
  }

  result = [v1 filters];
  if (!result)
  {
    return result;
  }

  v4 = result;
  type metadata accessor for HomeFilter();
  v5 = sub_252E37264();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = sub_252E378C4();
  if (!v6)
  {
LABEL_19:

    return 0;
  }

LABEL_5:
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
        goto LABEL_17;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v11 = [v8 *a1];
    if (v11)
    {
      break;
    }

    ++v7;
    if (v10 == v6)
    {
      goto LABEL_19;
    }
  }

  v12 = v11;

  v13 = [v9 *a1];
  if (!v13)
  {
    return 0;
  }

  v14 = sub_252E36F34();

  return v14;
}

uint64_t sub_252C52008()
{
  v1 = v0;
  type metadata accessor for HomeStore();
  v2 = static HomeStore.shared.getter();
  v3 = v2[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v3 == 2 || (v3) && (v4 = [v1 filters]) != 0)
  {
    v5 = v4;
    type metadata accessor for HomeFilter();
    v6 = sub_252E37264();

    v7 = [v1 userTask];
    v8 = HomeStore.accessories(matching:supporting:)(v6, v7);
    v10 = v9;

    if (v10)
    {
      v11 = v8;
      v12 = 1;
    }

    else
    {
      if (v8 >> 62)
      {
LABEL_28:
        v14 = sub_252E378C4();
      }

      else
      {
        v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = 0;
      while (v14 != v15)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x2530ADF00](v15, v8);
          if (__OFADD__(v15, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:

LABEL_25:
            sub_252929F10(v8, 0);
            return 1;
          }
        }

        else
        {
          if (v15 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_28;
          }

          v16 = *(v8 + 8 * v15 + 32);

          if (__OFADD__(v15, 1))
          {
            goto LABEL_23;
          }
        }

        v17 = (*v16 + 256);
        v18 = *v17;
        if ((*v17)() == 32 || v18() == 35 || v18() == 45)
        {
          goto LABEL_24;
        }

        v19 = v18();

        ++v15;
        if (v19 == 33)
        {
          goto LABEL_25;
        }
      }

      v11 = v8;
      v12 = 0;
    }

    sub_252929F10(v11, v12);
  }

  else
  {
  }

  return 0;
}

BOOL sub_252C52230()
{
  v1 = v0;
  type metadata accessor for HomeStore();
  v2 = static HomeStore.shared.getter();
  v3 = v2[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v3 != 2 && (v3 & 1) == 0 || (v4 = [v1 filters]) == 0)
  {

    return 0;
  }

  v5 = v4;
  type metadata accessor for HomeFilter();
  v6 = sub_252E37264();

  v7 = [v1 userTask];
  v8 = HomeStore.accessories(matching:supporting:)(v6, v7);
  LOBYTE(v5) = v9;

  if (v5)
  {
    sub_252929F10(v8, 1);
    return 0;
  }

  v43 = MEMORY[0x277D84F90];
  v11 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
    goto LABEL_61;
  }

  v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = 0;
    v40 = v8 + 32;
    v41 = v8 & 0xC000000000000001;
    v37 = v11;
    v38 = v8;
    v36 = v12;
    while (1)
    {
      if (v41)
      {
        v16 = MEMORY[0x2530ADF00](v14, v8);
        v17 = __OFADD__(v14++, 1);
        if (v17)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v14 >= *(v11 + 16))
        {
          goto LABEL_60;
        }

        v16 = *(v40 + 8 * v14);

        v17 = __OFADD__(v14++, 1);
        if (v17)
        {
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          v12 = sub_252E378C4();
          goto LABEL_10;
        }
      }

      v18 = (*v16 + 256);
      v19 = *v18;
      if ((*v18)() != 35 && v19() != 45)
      {
        goto LABEL_49;
      }

      v42 = v13;
      v20 = *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
      if (!(v20 >> 62))
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          break;
        }

        goto LABEL_45;
      }

      if (v20 < 0)
      {
        v33 = *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
      }

      v21 = sub_252E378C4();
      if (v21)
      {
        break;
      }

LABEL_45:
      v32 = v13;
      if (v13 < 0)
      {
        goto LABEL_51;
      }

LABEL_46:
      if ((v32 & 0x4000000000000000) != 0)
      {
LABEL_51:
        v34 = sub_252E378C4();
      }

      else
      {
        v34 = *(v32 + 16);
      }

      if (v34 > 1)
      {
        sub_252E37A94();
        v15 = *(v43 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        if (v14 == v12)
        {
          goto LABEL_52;
        }
      }

      else
      {
LABEL_49:

        if (v14 == v12)
        {
LABEL_52:
          v13 = v43;
          goto LABEL_53;
        }
      }
    }

    v39 = v14;
    v22 = 0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x2530ADF00](v22, v20);
        v8 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v11 = *(v20 + 8 * v22 + 32);

        v8 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }
      }

      v23 = [*(v11 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
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

        if (v30 == 33)
        {
          sub_252E37A94();
          v31 = *(v42 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          goto LABEL_23;
        }
      }

      else
      {
      }

LABEL_23:
      ++v22;
      if (v8 == v21)
      {
        v32 = v42;
        v11 = v37;
        v8 = v38;
        v13 = MEMORY[0x277D84F90];
        v12 = v36;
        v14 = v39;
        if ((v42 & 0x8000000000000000) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_51;
      }
    }
  }

LABEL_53:
  sub_252929F10(v8, 0);
  if (v13 < 0 || (v13 & 0x4000000000000000) != 0)
  {
    v35 = sub_252E378C4();
  }

  else
  {
    v35 = *(v13 + 16);
  }

  return v35 > 0;
}

uint64_t sub_252C526B4()
{
  v1 = v0;
  v2 = [v0 userTask];
  if (!v2)
  {
    return 1;
  }

  v3 = [v0 filters];
  if (!v3)
  {
    return 1;
  }

  v4 = [v0 userTask];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 taskType];

    if (v6 == 1)
    {
      v7 = sub_252CCFCB8() ^ 1;
      goto LABEL_9;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v7 = 0;
LABEL_9:
  sub_252B680FC();
  v9 = sub_252B63488();

  if (!v9)
  {
    v11 = [v1 userTask];
    if (v11)
    {
      v12 = v11;
      if ([v11 taskType] == 4)
      {

        v10 = 0;
        return (v7 | v10) & 1;
      }

      v13 = [v12 taskType];

      if (v13 == 5)
      {
LABEL_20:
        v10 = 0;
        return (v7 | v10) & 1;
      }
    }

    else
    {
      sub_252C515AC();
    }

    if ((sub_252C51814(3u) & 1) == 0 && (sub_252C51814(1u) & 1) == 0 && (sub_252C51814(2u) & 1) == 0 && (sub_252C4DD64() & 1) == 0)
    {
      v10 = sub_252C5285C();
      return (v7 | v10) & 1;
    }

    goto LABEL_20;
  }

  v10 = 1;
  return (v7 | v10) & 1;
}

BOOL sub_252C5285C()
{
  v1 = v0;
  v2 = sub_252C4D670(5, &selRef_entityType);
  type metadata accessor for HomeStore();
  v3 = static HomeStore.shared.getter();
  v4 = v3;
  if (v2)
  {
    v5 = [v1 filters];
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

    v13 = HomeStore.scenes(matching:)(v7);
    v19 = v18;

    if (v19)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = v3[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
    if (v8 != 2 && (v8 & 1) == 0 || (v9 = [v1 filters]) == 0)
    {

      return 0;
    }

    v10 = v9;
    type metadata accessor for HomeFilter();
    v11 = sub_252E37264();

    v12 = [v1 userTask];
    v13 = HomeStore.accessories(matching:supporting:)(v11, v12);
    v15 = v14;

    if (v15)
    {
LABEL_14:
      sub_252929F10(v13, 1);
      return 0;
    }
  }

  if (v13 >> 62)
  {
    v16 = sub_252E378C4();
  }

  else
  {
    v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_252929F10(v13, 0);
  return v16 > 1;
}

uint64_t sub_252C52A10()
{
  v1 = *(sub_252B680FC() + 77);

  if (v1)
  {
    return 0;
  }

  v2 = *(sub_252B680FC() + 88);

  if (v2 != 1)
  {
    return 0;
  }

  v3 = v0;
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544C70);
  v5 = sub_252E36AC4();
  v6 = sub_252E374C4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = *(sub_252B680FC() + 96);
    v10 = v9;

    *(v7 + 4) = v10;
    *v8 = v9;
    _os_log_impl(&dword_252917000, v5, v6, "Remembered intent: %@", v7, 0xCu);
    sub_25293847C(v8, &qword_27F541B78, &qword_252E4A340);
    MEMORY[0x2530AED00](v8, -1, -1);
    MEMORY[0x2530AED00](v7, -1, -1);
  }

  v11 = *(sub_252B680FC() + 96);

  v12 = [v11 userTask];

  [v3 setUserTask_];
  v13 = *(sub_252B680FC() + 96);
  v14 = v13;

  if (!v13 || (v15 = [v14 filters], v14, !v15))
  {
    v15 = 0;
  }

  [v3 setFilters_];

  return 1;
}

void sub_252C52C48(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = v5 - 1;
    if (v7)
    {
      v8 = (a1 + 40);
      do
      {
        v9 = *v8++;
        v10 = v9;
        if (v9 < v6)
        {
          v6 = v10;
        }

        --v7;
      }

      while (v7);
    }

    if (*(a3 + 16))
    {
      v11 = *(a3 + 32);
      v12 = [v3 userTask];
      v13 = [v12 value];

      [v13 setDoubleValue_];
      v14 = [v3 userTask];
      v15 = [v14 value];
LABEL_9:
      v42 = v15;

      [v42 setUnit_];
    }
  }

  else
  {
    v17 = a2[2];
    if (v17)
    {
      v18 = a2 + 4;
      v19 = MEMORY[0x277D84F90];
      v20 = a2[2];
      do
      {
        v21 = *v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_2529F7D44(0, *(v19 + 2) + 1, 1, v19);
        }

        v23 = *(v19 + 2);
        v22 = *(v19 + 3);
        if (v23 >= v22 >> 1)
        {
          v19 = sub_2529F7D44((v22 > 1), v23 + 1, 1, v19);
        }

        *(v19 + 2) = v23 + 1;
        *&v19[8 * v23 + 32] = v21;
        v18 += 2;
        --v20;
      }

      while (v20);
      v24 = a2 + 5;
      v25 = MEMORY[0x277D84F90];
      do
      {
        v26 = *v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_2529F7D44(0, *(v25 + 2) + 1, 1, v25);
        }

        v28 = *(v25 + 2);
        v27 = *(v25 + 3);
        if (v28 >= v27 >> 1)
        {
          v25 = sub_2529F7D44((v27 > 1), v28 + 1, 1, v25);
        }

        *(v25 + 2) = v28 + 1;
        *&v25[8 * v28 + 32] = v26;
        v24 += 2;
        --v17;
      }

      while (v17);
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
      v19 = MEMORY[0x277D84F90];
    }

    v29 = sub_252987D34(v19);
    v31 = v30;

    if ((v31 & 1) == 0)
    {
      v32 = sub_252987D34(v25);
      v34 = v33;

      if ((v34 & 1) != 0 || !*(a3 + 16))
      {
        return;
      }

      v35 = *&v32;
      v11 = *(a3 + 32);
      v36 = [v3 userTask];
      v37 = [v36 value];

      v38 = [v37 rangeValue];
      [v38 setLowerValue_];

      v39 = [v3 userTask];
      v40 = [v39 value];

      v41 = [v40 rangeValue];
      [v41 setUpperValue_];

      v14 = [v3 userTask];
      v15 = [v14 value];
      goto LABEL_9;
    }
  }
}

uint64_t sub_252C53048(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541860, &qword_252E40AF0);
  result = sub_252E379A4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v30 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_252E37EC4();
    sub_252E32E84();
    sub_252C547E8();

    sub_252E36E94();
    MEMORY[0x2530AE390](*(v16 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
    v18 = *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v19 = *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    sub_252E37044();

    result = sub_252E37F14();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    v10 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v30 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_252C532DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541720, &qword_252E409D8);
  result = sub_252E379A4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_252E37EC4();

    sub_252E37044();
    result = sub_252E37F14();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_252C53528(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544600, &qword_252E54DF0);
  result = sub_252E379A4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v9 + 40);
    sub_252E37EC4();
    sub_252E37EE4();
    if (v17)
    {

      sub_252E37044();
    }

    result = sub_252E37F14();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_33;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v18;
    v28[1] = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_34;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_252C53768(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = sub_252E36324();
  v7 = *(v54 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v54);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v13);
  v53 = &v45 - v15;
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(v56 + 16) == a3)
  {
    return v56;
  }

  v48 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544608, &qword_252E54DF8);
  result = sub_252E379A4();
  v16 = result;
  v47 = v10;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v50 = result;
  v51 = (v7 + 48);
  v49 = (v7 + 8);
  v46 = (v7 + 32);
  v20 = result + 56;
  v21 = v53;
  v22 = v54;
  while (v18)
  {
    v23 = __clz(__rbit64(v18));
    v52 = (v18 - 1) & v18;
LABEL_16:
    v26 = *(*(v56 + 48) + 8 * (v23 | (v19 << 6)));
    v27 = v16[5];
    sub_252E37EC4();
    sub_252956C1C(v26 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v21);
    v28 = *v51;
    v29 = (*v51)(v21, 1, v22);
    v55 = v26;

    if (v29 == 1)
    {
      sub_25293847C(v21, &qword_27F540298, &unk_252E3C270);
      sub_252E37EE4();
    }

    else
    {
      sub_252E36304();
      (*v49)(v21, v22);
      sub_252E37EE4();
      sub_252E37044();
    }

    v30 = *(v55 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
    if (v30)
    {
      sub_252E37EE4();
      v31 = v48;
      sub_252956C1C(v30 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v48);
      v22 = v54;
      if (v28(v31, 1, v54) == 1)
      {
        sub_25293847C(v31, &qword_27F540298, &unk_252E3C270);
        if (*(v30 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
        {
          v32 = *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

          HomeAutomationAbstractMeasurement.hash(into:)();
        }

        else
        {
          v35 = *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
          sub_252E37EE4();
        }
      }

      else
      {
        v33 = v31;
        v34 = v47;
        (*v46)(v47, v33, v22);
        sub_252E36304();
        sub_252E37044();

        (*v49)(v34, v22);
      }
    }

    else
    {
      sub_252E37EE4();
      v22 = v54;
    }

    result = sub_252E37F14();
    v16 = v50;
    v36 = -1 << *(v50 + 32);
    v37 = result & ~v36;
    v38 = v37 >> 6;
    v21 = v53;
    if (((-1 << v37) & ~*(v20 + 8 * (v37 >> 6))) == 0)
    {
      v40 = 0;
      v41 = (63 - v36) >> 6;
      while (++v38 != v41 || (v40 & 1) == 0)
      {
        v42 = v38 == v41;
        if (v38 == v41)
        {
          v38 = 0;
        }

        v40 |= v42;
        v43 = *(v20 + 8 * v38);
        if (v43 != -1)
        {
          v39 = __clz(__rbit64(~v43)) + (v38 << 6);
          goto LABEL_36;
        }
      }

      goto LABEL_41;
    }

    v39 = __clz(__rbit64((-1 << v37) & ~*(v20 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_36:
    *(v20 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
    *(v16[6] + 8 * v39) = v55;
    ++v16[2];
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_42;
    }

    v18 = v52;
    if (!a3)
    {
LABEL_38:

      return v16;
    }
  }

  v24 = v19;
  while (1)
  {
    v19 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      goto LABEL_38;
    }

    v25 = a1[v19];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v52 = (v25 - 1) & v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_252C53CA8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445F8, &qword_252E54DE8);
  result = sub_252E379A4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_252E37684();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_252C53E9C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445E8, &qword_252E54DD8);
  result = sub_252E379A4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_252E37EC4();
    sub_252A9AD58(v16);
    sub_252E37044();

    result = sub_252E37F14();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_252C540C0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541638, &qword_252E40900);
  result = sub_252E379A4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_252E37EC4();
    StateSemantic.rawValue.getter();
    sub_252E37044();

    result = sub_252E37F14();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_252C542FC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_252E379A4();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    v19 = *(v11 + 40);
    sub_252E37EC4();
    MEMORY[0x2530AE390](v18);
    result = sub_252E37F14();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v11 + 48) + 8 * v23) = v18;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_252C544FC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544610, &qword_252E54E08);
  result = sub_252E379A4();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = (*(a4 + 48) + 504 * (v13 | (v11 << 6)));
    memcpy(__dst, v16, 0x1F8uLL);
    v17 = *(v6 + 40);
    memcpy(v29, v16, sizeof(v29));
    sub_252E37EC4();
    sub_2529353AC(__dst, v27);
    HomeAutomationIntent.hash(into:)(v28);
    result = sub_252E37F14();
    v18 = -1 << *(v6 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    result = memcpy((*(v6 + 48) + 504 * v21), __dst, 0x1F8uLL);
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_252C54758(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
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

    v8 = sub_252A19310(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t sub_252C547E8()
{
  result = qword_27F540680;
  if (!qword_27F540680)
  {
    sub_252E32E84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540680);
  }

  return result;
}

unint64_t sub_252C54840()
{
  result = qword_27F541868;
  if (!qword_27F541868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F541840, &qword_252E40AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541868);
  }

  return result;
}

uint64_t sub_252C548A4(uint64_t a1, uint64_t a2)
{
  v3[130] = v2;
  v3[129] = a2;
  v3[128] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540780, &unk_252E50210) - 8) + 64) + 15;
  v3[131] = swift_task_alloc();
  v3[132] = swift_task_alloc();
  v5 = sub_252E34164();
  v3[133] = v5;
  v6 = *(v5 - 8);
  v3[134] = v6;
  v7 = *(v6 + 64) + 15;
  v3[135] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C55C28, 0, 0);
}

uint64_t sub_252C549B0(uint64_t a1, uint64_t a2)
{
  v3[130] = v2;
  v3[129] = a2;
  v3[128] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540780, &unk_252E50210) - 8) + 64) + 15;
  v3[131] = swift_task_alloc();
  v3[132] = swift_task_alloc();
  v5 = sub_252E34164();
  v3[133] = v5;
  v6 = *(v5 - 8);
  v3[134] = v6;
  v7 = *(v6 + 64) + 15;
  v3[135] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C54ABC, 0, 0);
}

uint64_t sub_252C54ABC()
{
  v33 = v0;
  v1 = *(v0 + 1040);
  *(sub_252B680FC() + 72) = 1;

  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = *(v0 + 1080);
    v4 = *(v0 + 1072);
    v5 = *(v0 + 1064);
    v6 = *(v0 + 1032);
    v7 = v2;
    sub_252E340E4();
    sub_252AB3FEC(v3, 0, __src);
    (*(v4 + 8))(v3, v5);
    memcpy((v0 + 520), __src, 0x1F8uLL);
    memcpy((v0 + 16), __src, 0x1F8uLL);
    if (sub_252956B94((v0 + 16)) == 1)
    {
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 1080);
      v9 = *(v0 + 1048);
      v10 = *(v0 + 1032);
      v11 = *(v0 + 1024);
      v12 = sub_252E36AD4();
      __swift_project_value_buffer(v12, qword_27F544DA8);
      __src[0] = 0;
      __src[1] = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000044, 0x8000000252E6C210);
      sub_252E340E4();
      v13 = sub_252AD2138(v8);
      MEMORY[0x2530AD570](v13);

      sub_252CC4050(__src[0], __src[1], 0xD000000000000098, 0x8000000252E88C50, 0xD000000000000021, 0x8000000252E8CC80, 54);

      v14 = sub_252E33DE4();
      (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
      type metadata accessor for ControlHomeIntent();
      sub_252E33D84();
    }

    else
    {
      if (*(v0 + 25) - 2 >= 2)
      {
        v24 = *(v0 + 1056);
        if (*(v0 + 25))
        {
          v25 = MEMORY[0x277D5BED0];
        }

        else
        {
          v25 = MEMORY[0x277D5BED8];
        }

        v26 = *v25;
        v21 = sub_252E33DE4();
        v22 = *(v21 - 8);
        (*(v22 + 104))(v24, v26, v21);
        v23 = 0;
      }

      else
      {
        v21 = sub_252E33DE4();
        v22 = *(v21 - 8);
        v23 = 1;
      }

      v27 = *(v0 + 1024);
      (*(v22 + 56))(*(v0 + 1056), v23, 1, v21);
      type metadata accessor for ControlHomeIntent();
      sub_252E33D84();
      sub_25299F5D4(v0 + 520);
    }

    v28 = *(v0 + 1080);
    v29 = *(v0 + 1056);
    v30 = *(v0 + 1048);

    v20 = *(v0 + 8);
  }

  else
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 1080);
    v16 = *(v0 + 1056);
    v17 = *(v0 + 1048);
    v18 = *(v0 + 1032);
    v19 = sub_252E36AD4();
    __swift_project_value_buffer(v19, qword_27F544DA8);
    sub_252CC4050(0xD000000000000048, 0x8000000252E8CC30, 0xD000000000000098, 0x8000000252E88C50, 0xD000000000000021, 0x8000000252E8CC80, 48);
    sub_2529515FC(6, 2, 0xD000000000000016, 0x8000000252E8CCB0);
    type metadata accessor for HomeAutomationError();
    sub_252C55B44(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
    swift_allocError();
    sub_252E340E4();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v20 = *(v0 + 8);
  }

  return v20();
}

uint64_t sub_252C54FF8(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = sub_252E33C44();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v6 = *(v5 + 64) + 15;
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C550BC, 0, 0);
}

uint64_t sub_252C550BC()
{
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544DA8);
  sub_252E379F4();

  v4 = [v1 description];
  v5 = sub_252E36F34();
  v7 = v6;

  MEMORY[0x2530AD570](v5, v7);

  sub_252CC3D90(0xD000000000000025, 0x8000000252E8CCD0, 0xD000000000000097, 0x8000000252E8CD00);

  v8 = *(v2 + 64);
  *(v2 + 64) = v1;
  v9 = v1;

  v10 = [v9 userTask];
  if (v10 && (v11 = v10, v12 = [v10 value], v11, v12))
  {
    v13 = [v12 BOOLValue];
  }

  else
  {
    v13 = 1;
  }

  v14 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v14 + 288), v0 + 16);

  v15 = *(v0 + 40);
  v16 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v15);
  v17 = (*(v16 + 120))(v15, v16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v17)
  {
    v18 = *(*(v0 + 152) + 112);
    v19 = swift_task_alloc();
    *(v0 + 184) = v19;
    *v19 = v0;
    v19[1] = sub_252C55450;
    v20 = *(v0 + 136);

    return sub_252C80F04(v20, v13 | 0x8000000000000000, v18);
  }

  else
  {
    v22 = *(v0 + 176);
    v23 = *(v0 + 152);
    sub_252929E74(v23 + 24, v0 + 56);
    v24 = *(v23 + 112);
    v25 = *(v0 + 80);
    v26 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v25);
    sub_252929E74(v23 + 72, v0 + 96);
    v27 = swift_allocObject();
    *(v0 + 192) = v27;
    sub_252927BEC((v0 + 96), v27 + 16);
    *(v27 + 56) = v13;
    sub_252A6097C(v24, v22);
    v28 = swift_task_alloc();
    *(v0 + 200) = v28;
    *v28 = v0;
    v28[1] = sub_252C55568;
    v29 = *(v0 + 176);
    v30 = *(v0 + 136);

    return sub_252BDB3DC(v30, &unk_252E54F68, v27, v29, v25, v26);
  }
}

uint64_t sub_252C55450()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *(v1 + 176);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_252C55568()
{
  v2 = *(*v1 + 200);
  v3 = *v1;
  v3[26] = v0;

  if (v0)
  {
    v4 = v3[24];
    (*(v3[21] + 8))(v3[22], v3[20]);

    return MEMORY[0x2822009F8](sub_252C55708, 0, 0);
  }

  else
  {
    v5 = v3[24];
    v7 = v3[21];
    v6 = v3[22];
    v8 = v3[20];

    (*(v7 + 8))(v6, v8);
    __swift_destroy_boxed_opaque_existential_1(v3 + 7);
    v9 = v3[22];

    v10 = v3[1];

    return v10();
  }
}

uint64_t sub_252C55708()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[26];
  v2 = v0[22];

  v3 = v0[1];

  return v3();
}

uint64_t sub_252C55798(uint64_t a1, uint64_t a2)
{
  result = sub_252C55B44(&qword_27F544618, a2, type metadata accessor for ControlHomeReformConfirmationStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252C557F0()
{
  swift_getWitnessTable();

  return sub_252BEF6A8();
}

uint64_t sub_252C55858(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_252C549B0(a1, a2);
}

uint64_t sub_252C55914(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_252C54FF8(a1, v4);
}

uint64_t sub_252C559BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B658] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ControlHomeReformConfirmationStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821BA040](a1, a2, v10, a4);
}

uint64_t sub_252C55A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B660] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ControlHomeReformConfirmationStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821BA048](a1, a2, v10, a4);
}

uint64_t sub_252C55B44(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_252C55B8C()
{
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B7BC;

  return sub_252D0A33C(v0 + 16, v2);
}

uint64_t sub_252C55C40(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {

    return v1;
  }

  else
  {
    v3 = 0;
    v13 = result + 32;
    v1 = MEMORY[0x277D84F90];
    v12 = *(result + 16);
    while (v3 < v2)
    {
      result = memcpy(__dst, (v13 + 504 * v3), sizeof(__dst));
      if (__OFADD__(v3++, 1))
      {
        goto LABEL_20;
      }

      v5 = __dst[47];
      v6 = *(__dst[47] + 16);
      sub_2529353AC(__dst, v14);
      v7 = (v5 + 32);

      while (2)
      {
        if (v6)
        {
          switch(*v7)
          {
            case 3:

              break;
            default:
              v8 = sub_252E37DB4();

              ++v7;
              --v6;
              if ((v8 & 1) == 0)
              {
                continue;
              }

              break;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v16 = v1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2529AA480(0, *(v1 + 16) + 1, 1);
            v1 = v16;
          }

          v11 = *(v1 + 16);
          v10 = *(v1 + 24);
          if (v11 >= v10 >> 1)
          {
            sub_2529AA480((v10 > 1), v11 + 1, 1);
            v1 = v16;
          }

          *(v1 + 16) = v11 + 1;
          result = memcpy((v1 + 504 * v11 + 32), __dst, 0x1F8uLL);
        }

        else
        {

          result = sub_252935408(__dst);
        }

        break;
      }

      v2 = v12;
      if (v3 == v12)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_252C55FB4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, __int16 *a3@<X8>)
{
  if (a2 && (v4 = result, , *&result = COERCE_DOUBLE(sub_252C5C088(v4, a2)), (v8 & 1) == 0))
  {
    if (qword_27F53F428 != -1)
    {
      v25 = result;
      v23 = v6;
      v24 = v7;
      swift_once();
      v7 = v24;
      v6 = v23;
      result = v25;
    }

    v10 = *(qword_27F575A90 + 16);
    if (v10)
    {
      v11 = (qword_27F575A90 + 56);
      v9 = 695;
      v12 = -1.0;
      do
      {
        v13 = *(v11 - 12);
        v14 = *(v11 - 2);
        v15 = *(v11 - 1);
        v16 = *v11;
        v11 += 4;
        v17 = v14 + 360.0;
        v18 = (v15 - v6) * (v15 - v6);
        v19 = (v16 - v7) * (v16 - v7);
        v20 = sqrt((v14 - *&result) * (v14 - *&result) + v18 + v19);
        v21 = sqrt((v17 - *&result) * (v17 - *&result) + v18 + v19);
        if (v21 < v20)
        {
          v20 = v21;
        }

        v22 = v12 == -1.0;
        if (v20 < v12)
        {
          v22 = 1;
        }

        if (v22)
        {
          v12 = v20;
          v9 = v13;
        }

        --v10;
      }

      while (v10);
    }

    else
    {
      v9 = 695;
    }
  }

  else
  {
    v9 = 709;
  }

  *a3 = v9;
  return result;
}

uint64_t sub_252C56114()
{
  v1 = *v0;
  if (qword_27F53F428 != -1)
  {
LABEL_12:
    swift_once();
  }

  v2 = qword_27F575A90;
  v3 = (qword_27F575A90 + 56);
  v4 = -*(qword_27F575A90 + 16);
  v5 = -1;
  while (v4 + v5 != -1)
  {
    if (++v5 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_12;
    }

    v8 = *(v3 - 2);
    v7 = *(v3 - 1);
    v9 = *v3;
    v15 = *(v3 - 12);
    v10 = HueSemantic.rawValue.getter();
    v12 = v11;
    if (v10 == HueSemantic.rawValue.getter() && v12 == v13)
    {

LABEL_9:
      MEMORY[0x2530AD570](977425224, 0xE400000000000000);
      sub_252E37374();
      MEMORY[0x2530AD570](44, 0xE100000000000000);
      sub_252E37374();
      MEMORY[0x2530AD570](44, 0xE100000000000000);
      sub_252E37374();
      MEMORY[0x2530AD570](59, 0xE100000000000000);
      return 0;
    }

    v3 += 4;
    v6 = sub_252E37DB4();

    if (v6)
    {
      goto LABEL_9;
    }
  }

  return 0;
}

BOOL sub_252C562FC()
{
  v1 = *v0;
  if (qword_27F53F428 != -1)
  {
LABEL_16:
    swift_once();
  }

  v2 = qword_27F575A90;
  v3 = (qword_27F575A90 + 56);
  v4 = -*(qword_27F575A90 + 16);
  v5 = -1;
  while (1)
  {
    if (v4 + v5 == -1)
    {
      return 0;
    }

    if (++v5 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_16;
    }

    v8 = *(v3 - 2);
    v7 = *(v3 - 1);
    v9 = *v3;
    v16 = *(v3 - 12);
    v10 = HueSemantic.rawValue.getter();
    v12 = v11;
    if (v10 == HueSemantic.rawValue.getter() && v12 == v13)
    {
      break;
    }

    v3 += 4;
    v6 = sub_252E37DB4();

    if (v6)
    {
      goto LABEL_9;
    }
  }

LABEL_9:
  v14 = v8 == 0.0;
  if (v7 != 0.0)
  {
    v14 = 0;
  }

  return v9 != 0.0 && v14;
}

uint64_t sub_252C5645C()
{
  v1 = *v0;
  if (qword_27F53F428 != -1)
  {
LABEL_12:
    swift_once();
  }

  v2 = qword_27F575A90;
  v3 = (qword_27F575A90 + 48);
  v4 = -*(qword_27F575A90 + 16);
  v5 = -1;
  while (v4 + v5 != -1)
  {
    if (++v5 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_12;
    }

    v8 = *(v3 - 1);
    v7 = *v3;
    v14 = *(v3 - 8);
    v9 = HueSemantic.rawValue.getter();
    v11 = v10;
    if (v9 == HueSemantic.rawValue.getter() && v11 == v12)
    {

LABEL_9:
      MEMORY[0x2530AD570](977425224, 0xE400000000000000);
      sub_252E37374();
      MEMORY[0x2530AD570](44, 0xE100000000000000);
      sub_252E37374();
      MEMORY[0x2530AD570](15148, 0xE200000000000000);
      return 0;
    }

    v3 += 4;
    v6 = sub_252E37DB4();

    if (v6)
    {
      goto LABEL_9;
    }
  }

  return 0;
}

uint64_t sub_252C56614()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v8 = *v0;
  HueSemantic.rawValue.getter();
  sub_252E37044();

  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x2530AE3C0](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x2530AE3C0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  return MEMORY[0x2530AE3C0](*&v6);
}

uint64_t sub_252C566BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_252E37EC4();
  HueSemantic.rawValue.getter();
  sub_252E37044();

  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x2530AE3C0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x2530AE3C0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x2530AE3C0](*&v7);
  return sub_252E37F14();
}

uint64_t sub_252C56784()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_252E37EC4();
  HueSemantic.rawValue.getter();
  sub_252E37044();

  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x2530AE3C0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x2530AE3C0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x2530AE3C0](*&v7);
  return sub_252E37F14();
}

uint64_t sub_252C56844()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544620, &qword_252E57120);
  result = swift_allocObject();
  *(result + 16) = xmmword_252E54FA0;
  *(result + 32) = 0;
  *(result + 40) = xmmword_252E54FB0;
  *(result + 56) = 0x404E000000000000;
  *(result + 64) = 1;
  *(result + 72) = xmmword_252E54FC0;
  *(result + 88) = 0x4059000000000000;
  *(result + 96) = 2;
  *(result + 104) = xmmword_252E54FD0;
  *(result + 120) = 0x4059000000000000;
  *(result + 128) = 3;
  *(result + 136) = xmmword_252E54FE0;
  *(result + 152) = 0x4059000000000000;
  *(result + 160) = 4;
  *(result + 168) = xmmword_252E54FF0;
  *(result + 184) = 0x4059000000000000;
  *(result + 192) = 6;
  *(result + 200) = xmmword_252E55000;
  *(result + 216) = 0x4059000000000000;
  *(result + 224) = 621;
  *(result + 232) = xmmword_252E55010;
  *(result + 248) = 0x4059000000000000;
  *(result + 256) = 7;
  *(result + 264) = 0x406A866666666666;
  *(result + 272) = xmmword_252E55020;
  *(result + 288) = 8;
  *(result + 296) = 0x406A633333333333;
  *(result + 304) = xmmword_252E55030;
  *(result + 320) = 9;
  *(result + 328) = 0x40414CCCCCCCCCCDLL;
  *(result + 336) = xmmword_252E55040;
  *(result + 352) = 10;
  *(result + 360) = 0x4063166666666666;
  *(result + 368) = xmmword_252E55050;
  *(result + 384) = 11;
  *(result + 392) = 0x4069FCCCCCCCCCCDLL;
  *(result + 400) = xmmword_252E55060;
  *(result + 416) = 12;
  *(result + 424) = 0x4022666666666666;
  *(result + 432) = xmmword_252E55070;
  *(result + 448) = 13;
  *(result + 456) = 0x407174CCCCCCCCCDLL;
  v1 = vdupq_n_s64(0x4059000000000000uLL);
  *(result + 464) = v1;
  *(result + 480) = 14;
  *(result + 488) = 0x406809999999999ALL;
  *(result + 496) = xmmword_252E55080;
  *(result + 512) = 15;
  strcpy((result + 520), "3333338@333333>@");
  *(result + 537) = 0;
  *(result + 538) = 0;
  *(result + 540) = 1079574528;
  *(result + 544) = 16;
  *(result + 552) = 0x406839999999999ALL;
  *(result + 560) = xmmword_252E55070;
  *(result + 576) = 17;
  *(result + 584) = 0x4041F33333333333;
  *(result + 592) = xmmword_252E550A0;
  *(result + 608) = 18;
  *(result + 616) = 0x4069800000000000;
  *(result + 624) = xmmword_252E550B0;
  *(result + 640) = 19;
  *(result + 648) = 0x406A000000000000;
  *(result + 656) = xmmword_252E550C0;
  *(result + 672) = 20;
  *(result + 680) = 0x40762E6666666666;
  *(result + 688) = xmmword_252E550D0;
  *(result + 704) = 21;
  *(result + 712) = 0x403E000000000000;
  *(result + 720) = xmmword_252E550E0;
  *(result + 736) = 22;
  *(result + 744) = 0x4075C1999999999ALL;
  *(result + 752) = xmmword_252E550F0;
  *(result + 768) = 23;
  *(result + 776) = 0x4046733333333333;
  *(result + 784) = v1;
  *(result + 800) = 24;
  *(result + 808) = 0x4075A00000000000;
  *(result + 816) = xmmword_252E55100;
  *(result + 832) = 25;
  *(result + 840) = 0x4070E00000000000;
  *(result + 848) = xmmword_252E55110;
  *(result + 864) = 26;
  *(result + 872) = 0x4035CCCCCCCCCCCDLL;
  *(result + 880) = xmmword_252E55120;
  *(result + 896) = 27;
  *(result + 904) = 0x4073BCCCCCCCCCCDLL;
  *(result + 912) = xmmword_252E55130;
  *(result + 928) = 28;
  *(result + 936) = 0x4041266666666666;
  *(result + 944) = xmmword_252E55140;
  *(result + 960) = 29;
  *(result + 968) = 0x4037800000000000;
  *(result + 976) = xmmword_252E55150;
  *(result + 992) = 30;
  *(result + 1000) = 0x4066800000000000;
  *(result + 1008) = v1;
  *(result + 1024) = 31;
  *(result + 1032) = 0x4063F9999999999ALL;
  *(result + 1040) = xmmword_252E55160;
  *(result + 1056) = 32;
  *(result + 1064) = 0x405159999999999ALL;
  *(result + 1072) = xmmword_252E55170;
  *(result + 1088) = 33;
  *(result + 1096) = 0x4049800000000000;
  *(result + 1104) = xmmword_252E55180;
  *(result + 1120) = 34;
  *(result + 1128) = 0x4060E00000000000;
  *(result + 1136) = xmmword_252E55190;
  *(result + 1152) = 35;
  *(result + 1160) = 0x405739999999999ALL;
  *(result + 1168) = xmmword_252E551A0;
  *(result + 1184) = 36;
  *(result + 1192) = 0x4034000000000000;
  *(result + 1200) = xmmword_252E551B0;
  *(result + 1216) = 37;
  *(result + 1224) = 0;
  *(result + 1232) = xmmword_252E551C0;
  *(result + 1248) = 38;
  *(result + 1256) = 0x404C333333333333;
  *(result + 1264) = xmmword_252E551D0;
  *(result + 1280) = 39;
  *(result + 1288) = 0x4066E9999999999ALL;
  *(result + 1296) = xmmword_252E551E0;
  *(result + 1312) = 40;
  *(result + 1320) = 0x406A433333333333;
  *(result + 1328) = v1;
  *(result + 1344) = 41;
  *(result + 1352) = 0x4068E66666666666;
  *(result + 1360) = xmmword_252E551F0;
  *(result + 1376) = 42;
  *(result + 1384) = 0;
  *(result + 1392) = xmmword_252E55200;
  *(result + 1408) = 43;
  *(result + 1416) = 0x4045C00000000000;
  *(result + 1424) = xmmword_252E55210;
  *(result + 1440) = 44;
  *(result + 1448) = 0x40498CCCCCCCCCCDLL;
  *(result + 1456) = xmmword_252E55220;
  *(result + 1472) = 45;
  *(result + 1480) = 0x404E000000000000;
  *(result + 1488) = xmmword_252E55230;
  *(result + 1504) = 46;
  *(result + 1536) = 47;
  *(result + 1552) = xmmword_252E55250;
  *(result + 1568) = 48;
  *(result + 1576) = 0x4040400000000000;
  *(result + 1584) = xmmword_252E55260;
  *(result + 1600) = 49;
  *(result + 1608) = 0x4038000000000000;
  *(result + 1616) = xmmword_252E55270;
  *(result + 1632) = 50;
  *(result + 1640) = 0x401999999999999ALL;
  *(result + 1648) = xmmword_252E55280;
  *(result + 1664) = 51;
  *(result + 1672) = 0u;
  *(result + 1696) = 52;
  *(result + 1704) = 0x4042000000000000;
  *(result + 1728) = 53;
  *(result + 1744) = xmmword_252E552A0;
  *(result + 1760) = 54;
  *(result + 1768) = 0x4049000000000000;
  *(result + 1776) = xmmword_252E552B0;
  *(result + 1792) = 55;
  *(result + 1824) = 56;
  *(result + 1840) = xmmword_252E55110;
  *(result + 1856) = 57;
  *(result + 1864) = 0x4067F9999999999ALL;
  *(result + 1872) = xmmword_252E552C0;
  *(result + 1888) = 58;
  *(result + 1896) = 0x4070F1999999999ALL;
  *(result + 1904) = xmmword_252E552D0;
  *(result + 1920) = 59;
  *(result + 1928) = 0x4070F1999999999ALL;
  *(result + 1936) = xmmword_252E552D0;
  *(result + 1952) = 60;
  *(result + 1960) = 0x407564CCCCCCCCCDLL;
  *(result + 1968) = xmmword_252E552E0;
  *(result + 1984) = 61;
  *(result + 2000) = xmmword_252E552F0;
  *(result + 2016) = 62;
  *(result + 2032) = xmmword_252E55300;
  *(result + 2048) = 63;
  *(result + 2080) = 64;
  *(result + 2088) = 0x4064866666666666;
  *(result + 2096) = xmmword_252E55320;
  *(result + 2112) = 65;
  *(result + 2120) = 0x4074780000000000;
  *(result + 2128) = xmmword_252E55330;
  *(result + 2144) = 66;
  *(result + 2152) = 0x406AB33333333333;
  *(result + 2176) = 67;
  *(result + 2184) = 0x404A19999999999ALL;
  *(result + 2192) = xmmword_252E55340;
  *(result + 2208) = 68;
  *(result + 2216) = 0x4075FB3333333333;
  *(result + 2224) = xmmword_252E55350;
  *(result + 2240) = 69;
  *(result + 2256) = xmmword_252E55360;
  *(result + 2272) = 70;
  *(result + 2288) = xmmword_252E55370;
  *(result + 2304) = 71;
  *(result + 2312) = 0u;
  *(result + 2336) = 73;
  *(result + 2344) = 0x406C800000000000;
  *(result + 2352) = xmmword_252E55380;
  *(result + 2368) = 72;
  *(result + 2376) = 0x4050400000000000;
  *(result + 2384) = xmmword_252E55390;
  *(result + 2400) = 74;
  *(result + 2408) = 0x4068333333333333;
  *(result + 2416) = xmmword_252E553A0;
  *(result + 2432) = 75;
  *(result + 2440) = 0x4058000000000000;
  *(result + 2464) = 76;
  *(result + 2472) = 0x407104CCCCCCCCCDLL;
  *(result + 2480) = xmmword_252E553B0;
  *(result + 2496) = 77;
  *(result + 2504) = 0x407599999999999ALL;
  *(result + 2512) = xmmword_252E553C0;
  *(result + 2528) = 78;
  *(result + 2560) = 79;
  *(result + 2576) = xmmword_252E553D0;
  *(result + 2592) = 80;
  *(result + 2600) = 0x407224CCCCCCCCCDLL;
  *(result + 2608) = xmmword_252E553E0;
  *(result + 2624) = 81;
  *(result + 2632) = 0x4074C80000000000;
  *(result + 2640) = xmmword_252E553F0;
  *(result + 2656) = 82;
  *(result + 2664) = 0x4063333333333333;
  *(result + 2688) = 83;
  *(result + 2696) = 0x403DCCCCCCCCCCCDLL;
  *(result + 2720) = 84;
  *(result + 2752) = 85;
  *(result + 2760) = 0x4075D66666666666;
  *(result + 2768) = xmmword_252E55420;
  *(result + 2784) = 86;
  *(result + 2792) = 0x40488CCCCCCCCCCDLL;
  *(result + 2800) = xmmword_252E55430;
  *(result + 2816) = 87;
  *(result + 2832) = xmmword_252E55440;
  *(result + 2848) = 88;
  *(result + 2880) = 89;
  *(result + 2888) = 0x4040E66666666666;
  *(result + 2896) = xmmword_252E55460;
  *(result + 2912) = 90;
  *(result + 2944) = 92;
  *(result + 2976) = 91;
  *(result + 2984) = 0x402B99999999999ALL;
  *(result + 2992) = xmmword_252E55470;
  *(result + 3008) = 92;
  *(result + 3016) = 0x402199999999999ALL;
  *(result + 3024) = xmmword_252E55480;
  *(result + 3040) = 93;
  *(result + 3048) = 0x40736E6666666666;
  *(result + 3056) = xmmword_252E55490;
  *(result + 3072) = 94;
  *(result + 3080) = 0x4073700000000000;
  *(result + 3088) = xmmword_252E554A0;
  *(result + 3104) = 95;
  *(result + 3112) = 0x4068733333333333;
  *(result + 3136) = 96;
  *(result + 3144) = 0x400E666666666666;
  *(result + 3152) = xmmword_252E554C0;
  *(result + 3168) = 97;
  *(result + 3176) = 0x4068ECCCCCCCCCCDLL;
  *(result + 3184) = xmmword_252E554D0;
  *(result + 3200) = 98;
  *(result + 3208) = 0x4066B9999999999ALL;
  *(result + 3216) = xmmword_252E554E0;
  *(result + 3232) = 99;
  *(result + 3240) = 0x4069A66666666666;
  *(result + 3248) = xmmword_252E554F0;
  *(result + 3264) = 100;
  *(result + 3272) = 0x4063333333333333;
  *(result + 3280) = xmmword_252E55500;
  *(result + 3296) = 101;
  *(result + 3304) = 0x403C19999999999ALL;
  *(result + 3312) = xmmword_252E55510;
  *(result + 3328) = 102;
  *(result + 3344) = xmmword_252E55520;
  *(result + 3360) = 100;
  *(result + 3368) = 0x404CF33333333333;
  *(result + 3392) = 103;
  *(result + 3400) = 0x404CF33333333333;
  *(result + 3424) = 104;
  *(result + 3432) = 0x4061133333333333;
  *(result + 3440) = xmmword_252E55530;
  *(result + 3456) = 105;
  *(result + 3472) = xmmword_252E55540;
  *(result + 3488) = 106;
  *(result + 3496) = 0x4056C66666666666;
  *(result + 3504) = xmmword_252E55550;
  *(result + 3520) = 107;
  *(result + 3632) = xmmword_252E55570;
  *(result + 3696) = xmmword_252E55580;
  *(result + 3760) = xmmword_252E55590;
  *(result + 3856) = xmmword_252E555A0;
  *(result + 3920) = xmmword_252E555B0;
  *(result + 3952) = xmmword_252E555C0;
  *(result + 3984) = xmmword_252E555D0;
  *(result + 4016) = xmmword_252E555E0;
  *(result + 4048) = xmmword_252E555F0;
  *(result + 4080) = xmmword_252E55090;
  *(result + 4112) = xmmword_252E55600;
  *(result + 4144) = xmmword_252E55610;
  *(result + 4176) = xmmword_252E55620;
  *(result + 4240) = xmmword_252E55640;
  *(result + 4272) = xmmword_252E55650;
  *(result + 4336) = xmmword_252E55670;
  *(result + 4352) = 132;
  *(result + 4360) = 0x4056866666666666;
  *(result + 4384) = 133;
  *(result + 4400) = xmmword_252E55610;
  *(result + 4416) = 134;
  *(result + 4424) = 0x4075C4CCCCCCCCCDLL;
  *(result + 4432) = xmmword_252E55680;
  *(result + 4448) = 135;
  *(result + 4464) = xmmword_252E55690;
  *(result + 4480) = 136;
  *(result + 4496) = xmmword_252E556A0;
  *(result + 4560) = xmmword_252E556B0;
  *(result + 4624) = xmmword_252E556A0;
  *(result + 4656) = xmmword_252E556D0;
  *(result + 4688) = xmmword_252E556E0;
  *(result + 4720) = xmmword_252E556F0;
  *(result + 4752) = xmmword_252E556A0;
  *(result + 4784) = xmmword_252E55700;
  *(result + 4816) = xmmword_252E55710;
  *(result + 4848) = xmmword_252E55720;
  *(result + 4880) = xmmword_252E55730;
  *(result + 4912) = xmmword_252E55740;
  *(result + 4944) = xmmword_252E55750;
  *(result + 5008) = xmmword_252E55760;
  *(result + 5040) = xmmword_252E55770;
  *(result + 5072) = xmmword_252E55780;
  *(result + 5104) = xmmword_252E55790;
  *(result + 5168) = xmmword_252E555C0;
  *(result + 5184) = 158;
  *(result + 5192) = 0x4069300000000000;
  *(result + 5200) = xmmword_252E557B0;
  *(result + 5216) = 159;
  *(result + 5224) = 0x406B500000000000;
  *(result + 5232) = xmmword_252E557C0;
  *(result + 5248) = 160;
  *(result + 5264) = xmmword_252E557D0;
  *(result + 5280) = 161;
  *(result + 5296) = xmmword_252E557E0;
  *(result + 5312) = 162;
  *(result + 5320) = 0x4074E00000000000;
  *(result + 5328) = xmmword_252E557F0;
  *(result + 5344) = 163;
  *(result + 5352) = 0x404CB33333333333;
  *(result + 5392) = xmmword_252E55810;
  *(result + 5440) = 166;
  *(result + 5448) = 0x4075833333333333;
  *(result + 5520) = xmmword_252E55840;
  *(result + 5552) = xmmword_252E55850;
  *(result + 5568) = 170;
  *(result + 5600) = 171;
  *(result + 5648) = xmmword_252E55880;
  *(result + 5664) = 173;
  *(result + 5680) = xmmword_252E55890;
  *(result + 5696) = 174;
  *(result + 5704) = 0x406A200000000000;
  *(result + 5712) = xmmword_252E558A0;
  *(result + 5728) = 175;
  *(result + 5736) = 0x4023333333333333;
  *(result + 5744) = xmmword_252E558B0;
  *(result + 5760) = 176;
  *(result + 5768) = 0x4023666666666666;
  *(result + 5776) = xmmword_252E558C0;
  *(result + 5792) = 177;
  *(result + 5824) = 178;
  *(result + 5856) = 179;
  *(result + 5864) = 0x404559999999999ALL;
  *(result + 6824) = 0x403B4CCCCCCCCCCDLL;
  *(result + 9408) = 290;
  *(result + 9376) = 289;
  *(result + 9384) = 0x4042333333333333;
  *(result + 9392) = xmmword_252E55DE0;
  *(result + 9096) = 0x4072C00000000000;
  *(result + 9344) = 288;
  *(result + 9352) = 0x40494CCCCCCCCCCDLL;
  *(result + 9360) = v1;
  *(result + 9320) = 0x406D400000000000;
  *(result + 9328) = xmmword_252E55DD0;
  *(result + 9288) = 0x406B09999999999ALL;
  *(result + 9296) = xmmword_252E55DC0;
  *(result + 9312) = 287;
  *(result + 9264) = xmmword_252E55DB0;
  *(result + 9280) = 286;
  *(result + 9200) = xmmword_252E55D90;
  *(result + 9248) = 285;
  *(result + 9256) = 0x4041333333333333;
  *(result + 9216) = 284;
  *(result + 9224) = 0x406E000000000000;
  *(result + 9232) = xmmword_252E55DA0;
  *(result + 9184) = 283;
  *(result + 9192) = 0x4043B33333333333;
  *(result + 9152) = 282;
  *(result + 9160) = 0u;
  *(result + 9176) = 0x4055933333333333;
  *(result + 9104) = xmmword_252E55D80;
  *(result + 9120) = 281;
  *(result + 9128) = 0;
  *(result + 9136) = xmmword_252E55110;
  *(result + 9064) = 0x4072C00000000000;
  *(result + 9072) = v1;
  *(result + 9088) = 280;
  *(result + 9040) = xmmword_252E55D70;
  *(result + 9056) = 279;
  *(result + 9008) = xmmword_252E55D60;
  *(result + 9024) = 278;
  *(result + 9032) = 0x40751B3333333333;
  *(result + 7360) = 226;
  *(result + 8992) = 277;
  *(result + 9000) = 0x407219999999999ALL;
  *(result + 8960) = 276;
  *(result + 8968) = 0x40696CCCCCCCCCCDLL;
  *(result + 8976) = xmmword_252E55D50;
  *(result + 8936) = 0x403999999999999ALL;
  *(result + 8944) = xmmword_252E55D40;
  *(result + 8904) = 0x405E000000000000;
  *(result + 8912) = xmmword_252E55D30;
  *(result + 8928) = 275;
  *(result + 8864) = 273;
  *(result + 8872) = 0x4075566666666666;
  *(result + 8880) = v1;
  *(result + 8896) = 274;
  *(result + 8840) = 0x4052000000000000;
  *(result + 8848) = v1;
  *(result + 8800) = 271;
  *(result + 8808) = 0x407479999999999ALL;
  *(result + 8816) = xmmword_252E55B50;
  *(result + 8832) = 272;
  *(result + 8768) = 270;
  *(result + 8776) = 0x4046733333333333;
  *(result + 8784) = v1;
  *(result + 8720) = xmmword_252E55D20;
  *(result + 8736) = 269;
  *(result + 8744) = 0x4044000000000000;
  *(result + 8752) = xmmword_252E550C0;
  *(result + 8704) = 268;
  *(result + 8712) = 0x4049000000000000;
  *(result + 8672) = 267;
  *(result + 8680) = 0x404A000000000000;
  *(result + 8688) = xmmword_252E55D10;
  *(result + 8648) = 0x407579999999999ALL;
  *(result + 8656) = xmmword_252E55D00;
  *(result + 8616) = 0x4030E66666666666;
  *(result + 8624) = xmmword_252E55CF0;
  *(result + 8640) = 266;
  *(result + 8584) = 0;
  *(result + 8592) = xmmword_252E55CE0;
  *(result + 8608) = 265;
  *(result + 8560) = xmmword_252E55CD0;
  *(result + 8576) = 264;
  *(result + 8528) = xmmword_252E55CC0;
  *(result + 8544) = 263;
  *(result + 8552) = 0x40764E6666666666;
  *(result + 7376) = xmmword_252E55B40;
  *(result + 8512) = 262;
  *(result + 8520) = 0x4044C00000000000;
  *(result + 8464) = xmmword_252E55CB0;
  *(result + 8480) = 261;
  *(result + 8488) = 0x4022CCCCCCCCCCCDLL;
  *(result + 8496) = v1;
  *(result + 8448) = 260;
  *(result + 8456) = 0x405A733333333333;
  *(result + 8416) = 259;
  *(result + 8424) = 0x405F666666666666;
  *(result + 8432) = xmmword_252E55CA0;
  *(result + 8392) = 0x403DB33333333333;
  *(result + 8400) = xmmword_252E55C90;
  *(result + 8360) = 0x4074066666666666;
  *(result + 8368) = xmmword_252E55C80;
  *(result + 8384) = 258;
  *(result + 8328) = 0;
  *(result + 8336) = xmmword_252E55C70;
  *(result + 8352) = 257;
  *(result + 8320) = 256;
  *(result + 8304) = xmmword_252E55B80;
  *(result + 8288) = 255;
  *(result + 8272) = xmmword_252E55C60;
  *(result + 8296) = 0x4040666666666666;
  *(result + 8208) = v1;
  *(result + 8256) = 254;
  *(result + 8264) = 0x4060CCCCCCCCCCCDLL;
  *(result + 8224) = 253;
  *(result + 8232) = 0x4061800000000000;
  *(result + 8240) = xmmword_252E55C50;
  *(result + 0x2000) = 252;
  *(result + 8200) = 0x407119999999999ALL;
  *(result + 8176) = v1;
  *(result + 8136) = 0x4071CE6666666666;
  *(result + 8144) = v1;
  *(result + 8160) = 251;
  *(result + 8168) = 0x406FD9999999999ALL;
  *(result + 8096) = 249;
  *(result + 8104) = 0x4052000000000000;
  *(result + 8112) = v1;
  *(result + 8128) = 250;
  *(result + 7568) = xmmword_252E55B90;
  *(result + 8048) = v1;
  *(result + 8064) = 248;
  *(result + 8072) = 0x407224CCCCCCCCCDLL;
  *(result + 8080) = xmmword_252E553E0;
  *(result + 8008) = 0x4066800000000000;
  *(result + 8016) = v1;
  *(result + 8032) = 247;
  *(result + 8040) = 0x4070A1999999999ALL;
  *(result + 7976) = 0x4075933333333333;
  *(result + 7984) = v1;
  *(result + 8000) = 246;
  *(result + 7952) = xmmword_252E55C40;
  *(result + 7968) = 245;
  *(result + 7920) = xmmword_252E55C30;
  *(result + 7936) = 244;
  *(result + 7944) = 0x4066D9999999999ALL;
  *(result + 7904) = 243;
  *(result + 7912) = 0x406C333333333333;
  *(result + 7872) = 242;
  *(result + 7880) = 0x404719999999999ALL;
  *(result + 7888) = xmmword_252E55C20;
  *(result + 7848) = 0x407491999999999ALL;
  *(result + 7856) = xmmword_252E55C10;
  *(result + 7816) = 0x4046C00000000000;
  *(result + 7824) = xmmword_252E55C00;
  *(result + 7840) = 241;
  *(result + 7808) = 240;
  *(result + 7792) = xmmword_252E55BF0;
  *(result + 7760) = xmmword_252E55BE0;
  *(result + 7776) = 239;
  *(result + 7784) = 0x404119999999999ALL;
  *(result + 7728) = xmmword_252E55BD0;
  *(result + 7744) = 238;
  *(result + 7752) = 0x406E000000000000;
  *(result + 7680) = 236;
  *(result + 7712) = 237;
  *(result + 7720) = 0x4045400000000000;
  *(result + 7688) = 0x40586CCCCCCCCCCDLL;
  *(result + 7664) = xmmword_252E55BB0;
  *(result + 7696) = xmmword_252E55BC0;
  *(result + 7648) = 235;
  *(result + 7656) = 0x4074EE6666666666;
  *(result + 7632) = xmmword_252E55BA0;
  *(result + 7624) = 0x406A333333333333;
  *(result + 7592) = 0u;
  *(result + 7608) = 0x404499999999999ALL;
  *(result + 7616) = 234;
  *(result + 7552) = 232;
  *(result + 7584) = 233;
  *(result + 7560) = 0x4039333333333333;
  *(result + 7520) = 231;
  *(result + 7504) = xmmword_252E55B70;
  *(result + 7528) = 0x4040666666666666;
  *(result + 7536) = xmmword_252E55B80;
  *(result + 7488) = 230;
  *(result + 7496) = 0x406AA66666666666;
  *(result + 7456) = 229;
  *(result + 7440) = xmmword_252E55B60;
  *(result + 7464) = 0x4068633333333333;
  *(result + 7472) = v1;
  *(result + 7392) = 227;
  *(result + 7400) = 0x407479999999999ALL;
  *(result + 7424) = 228;
  *(result + 7408) = xmmword_252E55B50;
  *(result + 7432) = 0x403E000000000000;
  *(result + 2064) = xmmword_252E55310;
  *(result + 2928) = xmmword_252E55310;
  *(result + 2960) = xmmword_252E55310;
  *(result + 3792) = xmmword_252E55310;
  *(result + 7368) = 0x4039B33333333333;
  *(result + 7344) = xmmword_252E55310;
  *(result + 7304) = 0x4071800000000000;
  *(result + 7336) = 0x4072C00000000000;
  *(result + 6704) = xmmword_252E55A30;
  *(result + 7328) = 225;
  *(result + 7312) = xmmword_252E55B30;
  *(result + 7296) = 224;
  *(result + 7280) = xmmword_252E55B20;
  *(result + 7264) = 223;
  *(result + 7272) = 0x40664CCCCCCCCCCDLL;
  *(result + 7248) = xmmword_252E55B10;
  *(result + 6984) = 0u;
  *(result + 9544) = 0u;
  *(result + 11624) = 0u;
  *(result + 6736) = xmmword_252E55A40;
  *(result + 6720) = 205;
  *(result + 6728) = 0x4062C9999999999ALL;
  *(result + 6672) = xmmword_252E55A20;
  *(result + 6688) = 204;
  *(result + 6696) = 0x4066800000000000;
  *(result + 6624) = 202;
  *(result + 6656) = 203;
  *(result + 6664) = 0x406F100000000000;
  *(result + 6160) = xmmword_252E55950;
  *(result + 6608) = xmmword_252E55A00;
  *(result + 6632) = 0;
  *(result + 6640) = xmmword_252E55A10;
  *(result + 6592) = 201;
  *(result + 6600) = 0x405E000000000000;
  *(result + 6568) = 0x407581999999999ALL;
  *(result + 6192) = xmmword_252E55960;
  *(result + 6576) = xmmword_252E559F0;
  *(result + 6544) = xmmword_252E559E0;
  *(result + 6560) = 200;
  *(result + 6528) = 199;
  *(result + 6536) = 0x402E333333333333;
  *(result + 6256) = xmmword_252E55970;
  *(result + 6512) = xmmword_252E55860;
  *(result + 6496) = 198;
  *(result + 6480) = xmmword_252E559D0;
  *(result + 6504) = 0;
  *(result + 6464) = 197;
  *(result + 6472) = 0x40749B3333333333;
  *(result + 6432) = 196;
  *(result + 6416) = xmmword_252E559C0;
  *(result + 6440) = 0x406B800000000000;
  *(result + 6448) = xmmword_252E55820;
  *(result + 6400) = 195;
  *(result + 6408) = 0x4075600000000000;
  *(result + 6384) = xmmword_252E559B0;
  *(result + 6344) = 0x40706B3333333333;
  *(result + 6376) = 0x4022CCCCCCCCCCCDLL;
  *(result + 6320) = xmmword_252E55990;
  *(result + 6368) = 194;
  *(result + 6352) = xmmword_252E559A0;
  *(result + 6312) = 0x4061433333333333;
  *(result + 6336) = 193;
  *(result + 6304) = 192;
  *(result + 6280) = 0x406A833333333333;
  *(result + 6288) = xmmword_252E55980;
  *(result + 6248) = 0x407181999999999ALL;
  *(result + 6272) = 191;
  *(result + 6112) = 213;
  *(result + 6240) = 190;
  *(result + 6216) = 0x4040733333333333;
  *(result + 6224) = v1;
  *(result + 6120) = 0x40636CCCCCCCCCCDLL;
  *(result + 6184) = 0x4054800000000000;
  *(result + 6208) = 189;
  *(result + 6144) = 187;
  *(result + 6176) = 188;
  *(result + 6152) = 0x406A400000000000;
  *(result + 5584) = xmmword_252E55860;
  *(result + 5808) = xmmword_252E55860;
  *(result + 6096) = xmmword_252E55860;
  *(result + 6128) = xmmword_252E55940;
  *(result + 6080) = 186;
  *(result + 6088) = 0x4072C00000000000;
  *(result + 6056) = 0x4070E66666666666;
  *(result + 5936) = xmmword_252E558F0;
  *(result + 6064) = xmmword_252E55930;
  *(result + 6048) = 185;
  *(result + 6000) = xmmword_252E55910;
  *(result + 6024) = 0x403B4CCCCCCCCCCDLL;
  *(result + 6032) = xmmword_252E55920;
  *(result + 5992) = 0x404BCCCCCCCCCCCDLL;
  *(result + 6016) = 184;
  *(result + 5984) = 183;
  *(result + 5960) = 0x4064400000000000;
  *(result + 5968) = xmmword_252E55900;
  *(result + 5888) = 180;
  *(result + 5952) = 182;
  *(result + 5896) = 0u;
  *(result + 5920) = 181;
  *(result + 5928) = 0x4063C00000000000;
  *(result + 5912) = 0x4050933333333333;
  *(result + 5872) = xmmword_252E558E0;
  *(result + 6768) = xmmword_252E55A50;
  *(result + 6800) = xmmword_252E55A60;
  *(result + 6864) = xmmword_252E55A70;
  *(result + 6896) = xmmword_252E55A80;
  *(result + 6928) = xmmword_252E55A90;
  *(result + 5832) = 0x4069BCCCCCCCCCCDLL;
  *(result + 5840) = xmmword_252E558D0;
  *(result + 6960) = xmmword_252E55AA0;
  *(result + 7024) = xmmword_252E55AB0;
  *(result + 5800) = 0x4066800000000000;
  *(result + 7056) = xmmword_252E55AC0;
  *(result + 7088) = xmmword_252E55AD0;
  *(result + 7120) = xmmword_252E55AE0;
  *(result + 7184) = xmmword_252E55AF0;
  *(result + 7216) = xmmword_252E55B00;
  *(result + 9497) = 0;
  *(result + 9498) = 0;
  *(result + 9500) = 1079336960;
  *(result + 9520) = xmmword_252E55E10;
  *(result + 9616) = xmmword_252E55E20;
  *(result + 9648) = xmmword_252E55E30;
  *(result + 9680) = xmmword_252E55E40;
  *(result + 9744) = xmmword_252E55E50;
  *(result + 5672) = 0;
  *(result + 9776) = xmmword_252E55E60;
  *(result + 5632) = 172;
  *(result + 5616) = xmmword_252E55870;
  *(result + 5640) = 0x4073B00000000000;
  *(result + 9808) = xmmword_252E55180;
  *(result + 5608) = 0x403E000000000000;
  *(result + 9840) = xmmword_252E55E70;
  *(result + 9872) = xmmword_252E55E80;
  *(result + 5576) = 0x406E000000000000;
  *(result + 9936) = xmmword_252E55E90;
  *(result + 5536) = 169;
  *(result + 5544) = 0x404BA66666666666;
  *(result + 5472) = 167;
  *(result + 5504) = 168;
  *(result + 5488) = v1;
  *(result + 5512) = 0x404E000000000000;
  *(result + 9968) = xmmword_252E55C80;
  *(result + 5456) = xmmword_252E55830;
  *(result + 5480) = 0x4066800000000000;
  *(result + 10032) = xmmword_252E55EA0;
  *(result + 10096) = xmmword_252E55EC0;
  *(result + 5424) = xmmword_252E55820;
  *(result + 10160) = xmmword_252E55ED0;
  *(result + 5408) = 165;
  *(result + 5416) = 0;
  *(result + 5376) = 164;
  *(result + 5384) = 0x4075C00000000000;
  *(result + 4208) = xmmword_252E55630;
  *(result + 10192) = xmmword_252E55630;
  *(result + 10256) = xmmword_252E55EE0;
  *(result + 5360) = xmmword_252E55800;
  *(result + 10288) = xmmword_252E55EF0;
  *(result + 10384) = xmmword_252E55F10;
  *(result + 10416) = xmmword_252E55F20;
  *(result + 10448) = xmmword_252E55F30;
  *(result + 10512) = xmmword_252E55F50;
  *(result + 5288) = 0x4045400000000000;
  *(result + 10544) = xmmword_252E55F60;
  *(result + 10576) = xmmword_252E55F70;
  *(result + 5256) = 0x4048000000000000;
  *(result + 10608) = xmmword_252E55F80;
  *(result + 10640) = xmmword_252E55F90;
  *(result + 10672) = xmmword_252E55FA0;
  *(result + 10704) = xmmword_252E55FB0;
  *(result + 10736) = xmmword_252E55FC0;
  *(result + 10768) = xmmword_252E55FD0;
  *(result + 10800) = xmmword_252E55FE0;
  *(result + 5160) = 0;
  *(result + 10832) = xmmword_252E55FF0;
  *(result + 5152) = 157;
  *(result + 5128) = 0x404B266666666666;
  *(result + 5136) = xmmword_252E557A0;
  *(result + 5088) = 155;
  *(result + 5096) = 0x407631999999999ALL;
  *(result + 5120) = 156;
  *(result + 4512) = 137;
  *(result + 5056) = 154;
  *(result + 5064) = 0;
  *(result + 4520) = 0x4043A66666666666;
  *(result + 5024) = 153;
  *(result + 5032) = 0x4012CCCCCCCCCCCDLL;
  *(result + 4544) = 138;
  *(result + 4992) = 152;
  *(result + 5000) = 0x403019999999999ALL;
  *(result + 4552) = 0x4028CCCCCCCCCCCDLL;
  *(result + 4960) = 151;
  *(result + 4968) = 0x402A666666666666;
  *(result + 4976) = v1;
  *(result + 4608) = 140;
  *(result + 4928) = 150;
  *(result + 4936) = 0;
  *(result + 4640) = 141;
  *(result + 4896) = 149;
  *(result + 4904) = 0x403CE66666666666;
  *(result + 4648) = 0x404B400000000000;
  *(result + 4864) = 148;
  *(result + 4872) = 0x406C99999999999ALL;
  *(result + 4672) = 142;
  *(result + 4680) = 0x4074580000000000;
  *(result + 4832) = 147;
  *(result + 4840) = 0x406A833333333333;
  *(result + 4704) = 143;
  *(result + 4800) = 146;
  *(result + 4808) = 0x40690CCCCCCCCCCDLL;
  *(result + 4768) = 145;
  *(result + 4776) = 0x403899999999999ALL;
  *(result + 4744) = 0x4039000000000000;
  *(result + 4712) = 0x406AE33333333333;
  *(result + 4736) = 144;
  *(result + 10000) = xmmword_252E550C0;
  *(result + 10320) = xmmword_252E550C0;
  *(result + 10896) = xmmword_252E550C0;
  *(result + 10928) = xmmword_252E56010;
  *(result + 10960) = xmmword_252E56020;
  *(result + 11024) = xmmword_252E56030;
  *(result + 11056) = xmmword_252E56040;
  *(result + 11088) = xmmword_252E56050;
  *(result + 9424) = xmmword_252E55DF0;
  *(result + 11120) = xmmword_252E55DF0;
  *(result + 4616) = 0x4039000000000000;
  *(result + 11184) = xmmword_252E56060;
  *(result + 4584) = 0x4013333333333333;
  *(result + 4592) = xmmword_252E556C0;
  *(result + 4576) = 139;
  *(result + 1712) = xmmword_252E55290;
  *(result + 11216) = xmmword_252E55290;
  *(result + 11280) = xmmword_252E56070;
  *(result + 11312) = xmmword_252E56080;
  *(result + 4528) = v1;
  *(result + 11344) = xmmword_252E56090;
  *(result + 11376) = xmmword_252E560A0;
  *(result + 11408) = xmmword_252E560B0;
  *(result + 4488) = 0x4039000000000000;
  *(result + 11440) = xmmword_252E560C0;
  *(result + 11472) = xmmword_252E560D0;
  *(result + 4456) = 0;
  *(result + 11504) = xmmword_252E560E0;
  *(result + 11536) = xmmword_252E560F0;
  *(result + 11600) = xmmword_252E56110;
  *(result + 11664) = xmmword_252E56120;
  *(result + 11696) = xmmword_252E56130;
  *(result + 4392) = 0x40756B3333333333;
  *(result + 11728) = xmmword_252E56140;
  *(result + 11760) = xmmword_252E56150;
  *(result + 4368) = v1;
  *(result + 11792) = xmmword_252E56160;
  *(result + 4320) = 131;
  *(result + 4328) = 0x4069800000000000;
  *(result + 4304) = xmmword_252E55660;
  *(result + 3552) = 108;
  *(result + 4288) = 130;
  *(result + 4296) = 0x40414CCCCCCCCCCDLL;
  *(result + 3560) = 0x404C19999999999ALL;
  *(result + 3584) = 109;
  *(result + 4256) = 129;
  *(result + 4264) = 0x4039B33333333333;
  *(result + 3592) = 0x3FFE666666666666;
  *(result + 4224) = 128;
  *(result + 4232) = 0x406BF9999999999ALL;
  *(result + 4192) = 127;
  *(result + 4200) = 0x406879999999999ALL;
  *(result + 4168) = 0x4074F9999999999ALL;
  *(result + 3616) = 110;
  *(result + 4136) = 0x40756B3333333333;
  *(result + 4160) = 126;
  *(result + 4096) = 124;
  *(result + 4104) = 0x4069A9999999999ALL;
  *(result + 4128) = 125;
  *(result + 3648) = 111;
  *(result + 3656) = 0x4068633333333333;
  *(result + 4064) = 123;
  *(result + 4072) = 0x4066800000000000;
  *(result + 3680) = 112;
  *(result + 4032) = 122;
  *(result + 4040) = 0x405ED9999999999ALL;
  *(result + 3688) = 0x401D99999999999ALL;
  *(result + 3712) = 5;
  *(result + 4000) = 121;
  *(result + 4008) = 0x4040733333333333;
  *(result + 3720) = 0u;
  *(result + 3968) = 120;
  *(result + 3976) = 0x406A5CCCCCCCCCCDLL;
  *(result + 3736) = 0x4053800000000000;
  *(result + 3936) = 119;
  *(result + 3944) = 0;
  *(result + 3744) = 113;
  *(result + 3904) = 118;
  *(result + 3912) = 0x4075066666666666;
  *(result + 3888) = v1;
  *(result + 3872) = 117;
  *(result + 3880) = 0x4075ACCCCCCCCCCDLL;
  *(result + 3848) = 0x400CCCCCCCCCCCCDLL;
  *(result + 3816) = 0x40758E6666666666;
  *(result + 3840) = 116;
  *(result + 3824) = v1;
  *(result + 3752) = 0x4075DE6666666666;
  *(result + 3784) = 0x4064A00000000000;
  *(result + 3808) = 115;
  *(result + 3776) = 114;
  *(result + 6752) = 206;
  *(result + 6784) = 207;
  *(result + 6792) = 0x4043000000000000;
  *(result + 6816) = 208;
  *(result + 6848) = 209;
  *(result + 6856) = 0x407614CCCCCCCCCDLL;
  *(result + 6880) = 210;
  *(result + 6888) = 0x40669CCCCCCCCCCDLL;
  *(result + 6912) = 211;
  *(result + 6920) = 0x4071A1999999999ALL;
  *(result + 6944) = 212;
  *(result + 3664) = v1;
  *(result + 6952) = 0x404A800000000000;
  *(result + 6976) = 214;
  *(result + 3624) = 0x407634CCCCCCCCCDLL;
  *(result + 7008) = 215;
  *(result + 7016) = 0x4075AE6666666666;
  *(result + 3600) = v1;
  *(result + 7040) = 216;
  *(result + 7072) = 217;
  *(result + 7080) = 0x4033666666666666;
  *(result + 3568) = v1;
  *(result + 7104) = 218;
  *(result + 7112) = 0x407499999999999ALL;
  *(result + 3528) = 0x404E000000000000;
  *(result + 3536) = xmmword_252E55560;
  *(result + 7136) = 219;
  *(result + 7168) = 220;
  *(result + 7176) = 0x400999999999999ALL;
  *(result + 7200) = 221;
  *(result + 7208) = 0x3FF4CCCCCCCCCCCDLL;
  *(result + 3464) = 0x4061800000000000;
  *(result + 7232) = 222;
  *(result + 9416) = 0x404719999999999ALL;
  *(result + 9440) = 291;
  *(result + 3408) = v1;
  *(result + 9448) = 0x404A400000000000;
  *(result + 9472) = 292;
  strcpy((result + 9480), "33333sE@33333SU@");
  *(result + 3376) = v1;
  *(result + 9504) = 293;
  *(result + 9512) = 0x405C39999999999ALL;
  *(result + 3336) = 0x4075F00000000000;
  *(result + 9536) = 294;
  *(result + 9568) = 295;
  *(result + 9600) = 296;
  *(result + 9608) = 0x406A2CCCCCCCCCCDLL;
  *(result + 9632) = 297;
  *(result + 9640) = 0x4054ECCCCCCCCCCDLL;
  *(result + 9664) = 298;
  *(result + 9696) = 299;
  *(result + 9728) = 300;
  *(result + 9736) = 0x406BD66666666666;
  *(result + 9760) = 301;
  *(result + 9768) = 0x406FECCCCCCCCCCDLL;
  *(result + 9792) = 302;
  *(result + 9800) = 0x4049800000000000;
  *(result + 9824) = 303;
  *(result + 9832) = 0x4076166666666666;
  *(result + 9856) = 304;
  *(result + 9864) = 0x4043F33333333333;
  *(result + 9888) = 305;
  *(result + 9920) = 306;
  *(result + 9928) = 0x4071E4CCCCCCCCCDLL;
  *(result + 3120) = xmmword_252E554B0;
  *(result + 9952) = 307;
  *(result + 9984) = 308;
  *(result + 10016) = 309;
  *(result + 10024) = 0x4073900000000000;
  *(result + 10048) = 310;
  *(result + 10056) = 0x4074A00000000000;
  *(result + 11824) = xmmword_252E55560;
  *(result + 11856) = xmmword_252E56170;
  *(result + 11888) = xmmword_252E56180;
  *(result + 11920) = xmmword_252E56190;
  *(result + 11952) = xmmword_252E561A0;
  *(result + 11984) = xmmword_252E561B0;
  *(result + 12016) = xmmword_252E561C0;
  *(result + 2952) = 0x4039000000000000;
  *(result + 12112) = xmmword_252E561D0;
  *(result + 10080) = 311;
  *(result + 10112) = 312;
  *(result + 2920) = 0x4039000000000000;
  *(result + 10120) = 0x4046733333333333;
  *(result + 10144) = 313;
  *(result + 10152) = 0x407129999999999ALL;
  *(result + 10176) = 314;
  *(result + 10184) = 0x406BE33333333333;
  *(result + 2856) = 0x4075900000000000;
  *(result + 2864) = xmmword_252E55450;
  *(result + 10208) = 315;
  *(result + 10240) = 316;
  *(result + 2824) = 0x407671999999999ALL;
  *(result + 10248) = 0x406EA66666666666;
  *(result + 10272) = 317;
  *(result + 10304) = 318;
  *(result + 10336) = 319;
  *(result + 10344) = 0x4063C66666666666;
  *(result + 2728) = 0;
  *(result + 2736) = xmmword_252E551C0;
  *(result + 10992) = xmmword_252E55DD0;
  *(result + 12144) = xmmword_252E55DD0;
  *(result + 2704) = xmmword_252E55410;
  *(result + 10368) = 320;
  *(result + 10376) = 0x404799999999999ALL;
  *(result + 10400) = 321;
  *(result + 2672) = xmmword_252E55400;
  *(result + 10408) = 0x40766CCCCCCCCCCDLL;
  *(result + 10432) = 322;
  *(result + 10440) = 0x40747B3333333333;
  *(result + 10464) = 323;
  *(result + 10496) = 324;
  *(result + 10504) = 0x4052533333333333;
  *(result + 10528) = 325;
  *(result + 10536) = 0x40646CCCCCCCCCCDLL;
  *(result + 2568) = 0x406629999999999ALL;
  *(result + 10560) = 326;
  *(result + 2536) = 0x4074A1999999999ALL;
  *(result + 2544) = v1;
  *(result + 10568) = 0x4059266666666666;
  *(result + 10592) = 327;
  *(result + 10600) = 0x404299999999999ALL;
  *(result + 10624) = 328;
  *(result + 10632) = 0x4061ACCCCCCCCCCDLL;
  *(result + 10656) = 329;
  *(result + 10664) = 0x40715E6666666666;
  *(result + 10688) = 330;
  *(result + 10720) = 331;
  *(result + 2448) = v1;
  *(result + 10752) = 332;
  *(result + 10760) = 0x4057CCCCCCCCCCCDLL;
  *(result + 10784) = 333;
  *(result + 2248) = 0x4076300000000000;
  *(result + 10792) = 0x4076300000000000;
  *(result + 10816) = 334;
  *(result + 10824) = 0x4071300000000000;
  *(result + 10848) = 335;
  *(result + 10880) = 336;
  *(result + 10912) = 337;
  *(result + 10920) = 0x406E933333333333;
  *(result + 10944) = 338;
  *(result + 2328) = 0x4059000000000000;
  *(result + 10952) = 0x40708B3333333333;
  *(result + 10976) = 339;
  *(result + 2280) = 0x4008000000000000;
  *(result + 11008) = 340;
  *(result + 11016) = 0x4074BE6666666666;
  *(result + 11040) = 341;
  *(result + 11048) = 0x4070B80000000000;
  *(result + 11072) = 342;
  *(result + 11080) = 0x4073BCCCCCCCCCCDLL;
  *(result + 11104) = 343;
  *(result + 11112) = 0x4056A00000000000;
  *(result + 11136) = 344;
  *(result + 2160) = v1;
  *(result + 10088) = 0x404D0CCCCCCCCCCDLL;
  *(result + 11144) = 0x404D0CCCCCCCCCCDLL;
  *(result + 11168) = 345;
  *(result + 11176) = 0x404C266666666666;
  *(result + 11200) = 346;
  *(result + 11232) = 347;
  *(result + 11264) = 348;
  *(result + 11272) = 0x40756E6666666666;
  *(result + 11296) = 349;
  *(result + 2056) = 0;
  *(result + 10888) = 0x4075400000000000;
  *(result + 11304) = 0x4075400000000000;
  *(result + 2024) = 0x404399999999999ALL;
  *(result + 11328) = 350;
  *(result + 11360) = 351;
  *(result + 1992) = 0x4067DCCCCCCCCCCDLL;
  *(result + 11368) = 0x4068566666666666;
  *(result + 11392) = 352;
  *(result + 11336) = 0x403C666666666666;
  *(result + 11400) = 0x403C666666666666;
  *(result + 11424) = 353;
  *(result + 11432) = 0x407634CCCCCCCCCDLL;
  *(result + 11456) = 354;
  *(result + 11488) = 355;
  *(result + 11496) = 0x4069166666666666;
  *(result + 11520) = 356;
  *(result + 11552) = 357;
  *(result + 11560) = 0x407311999999999ALL;
  *(result + 11584) = 358;
  *(result + 1832) = 0x406A400000000000;
  *(result + 11616) = 359;
  *(result + 11640) = 0x4054ACCCCCCCCCCDLL;
  *(result + 1800) = 0x406E000000000000;
  *(result + 1808) = v1;
  *(result + 11648) = 360;
  *(result + 11680) = 361;
  *(result + 11208) = 0x404B000000000000;
  *(result + 11688) = 0x404B000000000000;
  *(result + 11712) = 362;
  *(result + 11720) = 0x40704B3333333333;
  *(result + 1736) = 0x406A400000000000;
  *(result + 11744) = 363;
  *(result + 11752) = 0x4075F00000000000;
  *(result + 11776) = 364;
  *(result + 11784) = 0x403119999999999ALL;
  *(result + 11808) = 365;
  *(result + 11840) = 366;
  *(result + 1688) = 0;
  *(result + 11848) = 0x4066166666666666;
  *(result + 11872) = 367;
  *(result + 11880) = 0x4069600000000000;
  *(result + 11904) = 368;
  *(result + 11936) = 369;
  *(result + 11944) = 0x4039B33333333333;
  *(result + 11968) = 370;
  *(result + 12000) = 371;
  *(result + 12032) = 372;
  *(result + 1544) = 0x404E000000000000;
  *(result + 11240) = 0x4052C66666666666;
  *(result + 12040) = 0x4052C66666666666;
  *(result + 1512) = 0x4069B66666666666;
  *(result + 1520) = xmmword_252E55240;
  *(result + 12064) = 373;
  *(result + 12096) = 374;
  *(result + 7240) = 0x4072C00000000000;
  *(result + 12104) = 0x405A6CCCCCCCCCCDLL;
  *(result + 12128) = 375;
  *(result + 6760) = 0x4046800000000000;
  *(result + 12160) = 376;
  *(result + 6832) = xmmword_252E55920;
  *(result + 7000) = 0x4040A66666666666;
  *(result + 7048) = 0x4076580000000000;
  *(result + 7144) = 0x40414CCCCCCCCCCDLL;
  *(result + 7152) = xmmword_252E55660;
  *(result + 9456) = v1;
  *(result + 9560) = 0x404919999999999ALL;
  *(result + 9576) = 0x405E000000000000;
  *(result + 9584) = v1;
  *(result + 9672) = 0x4041266666666666;
  *(result + 9704) = 0x4062BCCCCCCCCCCDLL;
  *(result + 9712) = v1;
  *(result + 9896) = 0x404E000000000000;
  *(result + 9904) = xmmword_252E55450;
  *(result + 9960) = 0x4074066666666666;
  *(result + 9992) = 0x405E000000000000;
  *(result + 10064) = xmmword_252E55EB0;
  *(result + 10128) = v1;
  *(result + 10216) = 0x403299999999999ALL;
  *(result + 10224) = v1;
  *(result + 10280) = 0x403E000000000000;
  *(result + 10312) = 0x404E000000000000;
  *(result + 10352) = xmmword_252E55F00;
  *(result + 10472) = 0x4047D9999999999ALL;
  *(result + 10480) = xmmword_252E55F40;
  *(result + 10696) = 0x406A400000000000;
  *(result + 10728) = 0x404E000000000000;
  *(result + 10856) = 0x406E000000000000;
  *(result + 10864) = xmmword_252E56000;
  *(result + 10984) = 0x406E000000000000;
  *(result + 11152) = v1;
  *(result + 11248) = v1;
  *(result + 11464) = 0;
  *(result + 11528) = 0x4066800000000000;
  *(result + 11568) = xmmword_252E56100;
  *(result + 11592) = 0x404E000000000000;
  *(result + 11656) = 0x405E000000000000;
  *(result + 11816) = 0;
  *(result + 11912) = 0x406A400000000000;
  *(result + 11976) = 0x404E000000000000;
  *(result + 12008) = 0x4072C00000000000;
  *(result + 12048) = v1;
  *(result + 12072) = 0x405E000000000000;
  *(result + 12080) = xmmword_252E55410;
  *(result + 12136) = 0x403E000000000000;
  *(result + 17488) = xmmword_252E55B60;
  *(result + 17712) = xmmword_252E56A00;
  *(result + 17744) = xmmword_252E56A10;
  *(result + 17776) = xmmword_252E56A20;
  *(result + 17808) = xmmword_252E56A30;
  *(result + 17840) = xmmword_252E56A40;
  *(result + 17904) = xmmword_252E56A50;
  *(result + 17936) = xmmword_252E56A60;
  *(result + 17968) = xmmword_252E550D0;
  *(result + 18032) = xmmword_252E56A70;
  *(result + 18064) = xmmword_252E56A80;
  *(result + 18105) = 0;
  *(result + 18106) = 0;
  *(result + 18108) = 1079033856;
  *(result + 18128) = xmmword_252E56AA0;
  *(result + 18160) = xmmword_252E56AB0;
  *(result + 18192) = xmmword_252E55A00;
  *(result + 18256) = xmmword_252E56AC0;
  *(result + 19440) = xmmword_252E56C90;
  *(result + 19504) = xmmword_252E56CA0;
  *(result + 19536) = xmmword_252E56CB0;
  *(result + 19568) = xmmword_252E56CC0;
  *(result + 19600) = xmmword_252E56CD0;
  *(result + 19632) = xmmword_252E56CE0;
  *(result + 19696) = xmmword_252E56CF0;
  *(result + 19728) = xmmword_252E56D00;
  *(result + 19760) = xmmword_252E56D10;
  *(result + 19856) = xmmword_252E56D20;
  *(result + 19984) = xmmword_252E56D30;
  *(result + 20048) = xmmword_252E55660;
  *(result + 12192) = 377;
  *(result + 12224) = 378;
  *(result + 12256) = 379;
  *(result + 12288) = 380;
  *(result + 12320) = 381;
  *(result + 12352) = 382;
  *(result + 12384) = 383;
  *(result + 12416) = 384;
  *(result + 12448) = 385;
  *(result + 12480) = 386;
  *(result + 12512) = 387;
  *(result + 12544) = 388;
  *(result + 12576) = 389;
  *(result + 12608) = 390;
  *(result + 12640) = 391;
  *(result + 12672) = 392;
  *(result + 12704) = 393;
  *(result + 12736) = 394;
  *(result + 12768) = 395;
  *(result + 12800) = 396;
  *(result + 12832) = 397;
  *(result + 12864) = 398;
  *(result + 12896) = 399;
  *(result + 12928) = 400;
  *(result + 12960) = 401;
  *(result + 12992) = 402;
  *(result + 13024) = 403;
  *(result + 13056) = 404;
  *(result + 13088) = 405;
  *(result + 13120) = 406;
  *(result + 13152) = 407;
  *(result + 13184) = 408;
  *(result + 13216) = 409;
  *(result + 13248) = 410;
  *(result + 13280) = 411;
  *(result + 13312) = 412;
  *(result + 13344) = 413;
  *(result + 13376) = 414;
  *(result + 13408) = 415;
  *(result + 13440) = 416;
  *(result + 13472) = 417;
  *(result + 13504) = 418;
  *(result + 13536) = 419;
  *(result + 13568) = 420;
  *(result + 13600) = 421;
  *(result + 13632) = 422;
  *(result + 13664) = 423;
  *(result + 13696) = 424;
  *(result + 13728) = 425;
  *(result + 13760) = 426;
  *(result + 13792) = 427;
  *(result + 13824) = 428;
  *(result + 13856) = 429;
  *(result + 13888) = 430;
  *(result + 13920) = 431;
  *(result + 13952) = 432;
  *(result + 13984) = 433;
  *(result + 14016) = 434;
  *(result + 14048) = 435;
  *(result + 14080) = 436;
  *(result + 14112) = 437;
  *(result + 14144) = 438;
  *(result + 14176) = 439;
  *(result + 14208) = 440;
  *(result + 14240) = 441;
  *(result + 14272) = 442;
  *(result + 14304) = 443;
  *(result + 14336) = 444;
  *(result + 14368) = 445;
  *(result + 14400) = 446;
  *(result + 14432) = 447;
  *(result + 14464) = 448;
  *(result + 14496) = 449;
  *(result + 14528) = 450;
  *(result + 14560) = 451;
  *(result + 14592) = 452;
  *(result + 14624) = 453;
  *(result + 14656) = 454;
  *(result + 14688) = 455;
  *(result + 14720) = 456;
  *(result + 14752) = 457;
  *(result + 14784) = 458;
  *(result + 14816) = 459;
  *(result + 14848) = 460;
  *(result + 14880) = 461;
  *(result + 14912) = 462;
  *(result + 14944) = 463;
  *(result + 14976) = 464;
  *(result + 15008) = 465;
  *(result + 15040) = 466;
  *(result + 15072) = 467;
  *(result + 15104) = 468;
  *(result + 15136) = 469;
  *(result + 15168) = 470;
  *(result + 15200) = 471;
  *(result + 15232) = 472;
  *(result + 15264) = 473;
  *(result + 15296) = 474;
  *(result + 15328) = 475;
  *(result + 15392) = 477;
  *(result + 15424) = 478;
  *(result + 15456) = 479;
  *(result + 15360) = 476;
  *(result + 15488) = 476;
  *(result + 15520) = 480;
  *(result + 15552) = 481;
  *(result + 15584) = 482;
  *(result + 15616) = 483;
  *(result + 15648) = 484;
  *(result + 15680) = 485;
  *(result + 15712) = 486;
  *(result + 15744) = 487;
  *(result + 15776) = 488;
  *(result + 15808) = 489;
  *(result + 15840) = 490;
  *(result + 15872) = 491;
  *(result + 15904) = 492;
  *(result + 15936) = 493;
  *(result + 15968) = 494;
  *(result + 16000) = 495;
  *(result + 16032) = 496;
  *(result + 16064) = 497;
  *(result + 16096) = 498;
  *(result + 16128) = 499;
  *(result + 16160) = 500;
  *(result + 16192) = 501;
  *(result + 16224) = 502;
  *(result + 16256) = 503;
  *(result + 16288) = 504;
  *(result + 16320) = 505;
  *(result + 16352) = 506;
  *(result + 0x4000) = 507;
  *(result + 16416) = 508;
  *(result + 16448) = 509;
  *(result + 16480) = 510;
  *(result + 16512) = 511;
  *(result + 16544) = 512;
  *(result + 16576) = 513;
  *(result + 16608) = 514;
  *(result + 16640) = 515;
  *(result + 16672) = 516;
  *(result + 16704) = 517;
  *(result + 16736) = 518;
  *(result + 16768) = 519;
  *(result + 16800) = 520;
  *(result + 16832) = 521;
  *(result + 16864) = 522;
  *(result + 16896) = 523;
  *(result + 16928) = 524;
  *(result + 16960) = 525;
  *(result + 16992) = 526;
  *(result + 17024) = 527;
  *(result + 17056) = 528;
  *(result + 17088) = 529;
  *(result + 17120) = 530;
  *(result + 17152) = 531;
  *(result + 17184) = 532;
  *(result + 17216) = 533;
  *(result + 17248) = 534;
  *(result + 17280) = 535;
  *(result + 17312) = 536;
  *(result + 17344) = 537;
  *(result + 17376) = 538;
  *(result + 17408) = 539;
  *(result + 17440) = 540;
  *(result + 17472) = 541;
  *(result + 17504) = 542;
  *(result + 17536) = 543;
  *(result + 17568) = 544;
  *(result + 17600) = 545;
  *(result + 17632) = 546;
  *(result + 17664) = 547;
  *(result + 17696) = 548;
  *(result + 17728) = 549;
  *(result + 17760) = 550;
  *(result + 17792) = 551;
  *(result + 17824) = 552;
  *(result + 17856) = 553;
  *(result + 17888) = 554;
  *(result + 17920) = 555;
  *(result + 17952) = 556;
  *(result + 17984) = 557;
  *(result + 18016) = 558;
  *(result + 18048) = 559;
  *(result + 18080) = 560;
  *(result + 18112) = 561;
  *(result + 18144) = 562;
  *(result + 18176) = 563;
  *(result + 18208) = 564;
  *(result + 18240) = 565;
  *(result + 18272) = 566;
  *(result + 18304) = 567;
  *(result + 18336) = 568;
  *(result + 18368) = 569;
  *(result + 18400) = 570;
  *(result + 18432) = 571;
  *(result + 18464) = 572;
  *(result + 18496) = 573;
  *(result + 18528) = 574;
  *(result + 18560) = 575;
  *(result + 18592) = 576;
  *(result + 18624) = 577;
  *(result + 18656) = 578;
  *(result + 18688) = 579;
  *(result + 18720) = 580;
  *(result + 18752) = 581;
  *(result + 18784) = 582;
  *(result + 18816) = 583;
  *(result + 18848) = 584;
  *(result + 18880) = 585;
  *(result + 18912) = 586;
  *(result + 18944) = 587;
  *(result + 18976) = 588;
  *(result + 19008) = 589;
  *(result + 19040) = 590;
  *(result + 19072) = 591;
  *(result + 19104) = 592;
  *(result + 19136) = 593;
  *(result + 19168) = 594;
  *(result + 19200) = 595;
  *(result + 19232) = 596;
  *(result + 19264) = 597;
  *(result + 19296) = 598;
  *(result + 19328) = 599;
  *(result + 19360) = 600;
  *(result + 20072) = 0x400F333333333333;
  *(result + 19392) = 601;
  *(result + 20032) = 622;
  *(result + 20040) = 0x40414CCCCCCCCCCDLL;
  *(result + 20064) = 623;
  *(result + 20016) = xmmword_252E55B60;
  *(result + 20000) = 620;
  *(result + 20008) = 0x4046800000000000;
  *(result + 19968) = 619;
  *(result + 19976) = 0x404B333333333333;
  *(result + 19944) = 0x4066800000000000;
  *(result + 19952) = xmmword_252E55450;
  *(result + 19904) = 617;
  *(result + 19936) = 618;
  *(result + 19912) = 0;
  *(result + 19920) = xmmword_252E55820;
  *(result + 19424) = 602;
  *(result + 19872) = 616;
  *(result + 19880) = 0x4047D9999999999ALL;
  *(result + 19888) = xmmword_252E55F40;
  *(result + 19840) = 615;
  *(result + 19848) = 0x4069E9999999999ALL;
  *(result + 19824) = v1;
  *(result + 19464) = 0u;
  *(result + 19808) = 614;
  *(result + 19816) = 0x4062BCCCCCCCCCCDLL;
  *(result + 19456) = 603;
  *(result + 19776) = 613;
  *(result + 19784) = 0x4068666666666666;
  *(result + 19792) = xmmword_252E56C80;
  *(result + 19480) = 0x4052D33333333333;
  *(result + 19744) = 612;
  *(result + 19752) = 0;
  *(result + 19488) = 604;
  *(result + 19688) = 0x4076533333333333;
  *(result + 19712) = 611;
  *(result + 19720) = 0x403E000000000000;
  *(result + 19648) = 609;
  *(result + 19680) = 610;
  *(result + 19656) = 0x406B800000000000;
  *(result + 19664) = xmmword_252E55820;
  *(result + 19520) = 605;
  *(result + 19616) = 608;
  *(result + 19624) = 0x406A400000000000;
  *(result + 19552) = 606;
  *(result + 19560) = 0x4074066666666666;
  *(result + 19584) = 607;
  *(result + 19592) = 0x406F09999999999ALL;
  *(result + 20096) = 624;
  *(result + 20128) = 625;
  *(result + 20160) = 626;
  *(result + 20192) = 627;
  *(result + 20224) = 628;
  *(result + 19528) = 0x4068ACCCCCCCCCCDLL;
  *(result + 20256) = 629;
  *(result + 20288) = 630;
  *(result + 19496) = 0x4066800000000000;
  *(result + 20320) = 631;
  *(result + 20352) = 632;
  *(result + 20384) = 633;
  *(result + 20416) = 634;
  *(result + 20448) = 635;
  *(result + 19408) = xmmword_252E56C80;
  *(result + 19432) = 0x4027666666666666;
  *(result + 19400) = 0x4073B33333333333;
  *(result + 18288) = xmmword_252E56AD0;
  *(result + 19376) = xmmword_252E56C70;
  *(result + 19368) = 0x4063900000000000;
  *(result + 18320) = xmmword_252E56AE0;
  *(result + 19344) = xmmword_252E56C60;
  *(result + 18352) = xmmword_252E56AF0;
  *(result + 19336) = 0x4064166666666666;
  *(result + 19312) = xmmword_252E56C50;
  *(result + 19304) = 0x4042A66666666666;
  *(result + 19280) = xmmword_252E56C40;
  *(result + 18384) = xmmword_252E56B00;
  *(result + 19248) = v1;
  *(result + 19272) = 0x403E000000000000;
  *(result + 18416) = xmmword_252E56B10;
  *(result + 19240) = 0x4045E66666666666;
  *(result + 19208) = 0x4038B33333333333;
  *(result + 18448) = xmmword_252E56B20;
  *(result + 19216) = xmmword_252E56C30;
  *(result + 18480) = xmmword_252E56B30;
  *(result + 19184) = xmmword_252E56C20;
  *(result + 18512) = xmmword_252E56B40;
  *(result + 19152) = xmmword_252E56C10;
  *(result + 19176) = 0;
  *(result + 19144) = 0x4062500000000000;
  *(result + 19120) = xmmword_252E56C00;
  *(result + 18544) = xmmword_252E56B50;
  *(result + 19112) = 0x4068ACCCCCCCCCCDLL;
  *(result + 19080) = 0x405E733333333333;
  *(result + 18576) = xmmword_252E56B60;
  *(result + 19088) = xmmword_252E56BF0;
  *(result + 19048) = 0x4049666666666666;
  *(result + 18640) = xmmword_252E56B70;
  *(result + 19056) = v1;
  *(result + 19016) = 0x4021000000000000;
  *(result + 18672) = xmmword_252E56B80;
  *(result + 19024) = v1;
  *(result + 18992) = xmmword_252E56BE0;
  *(result + 18984) = 0x404599999999999ALL;
  *(result + 18960) = xmmword_252E56BD0;
  *(result + 18952) = 0x406B100000000000;
  *(result + 18920) = 0x4057200000000000;
  *(result + 18704) = xmmword_252E55EB0;
  *(result + 18928) = xmmword_252E56BC0;
  *(result + 18736) = xmmword_252E56B90;
  *(result + 18888) = 0x4045400000000000;
  *(result + 18896) = xmmword_252E55BD0;
  *(result + 18856) = 0x403B99999999999ALL;
  *(result + 18768) = xmmword_252E55C00;
  *(result + 18864) = xmmword_252E56BB0;
  *(result + 18832) = xmmword_252E56BA0;
  *(result + 18824) = 0x404A000000000000;
  *(result + 17704) = 0x407561999999999ALL;
  *(result + 17736) = 0x4068D33333333333;
  *(result + 18792) = 0x4045400000000000;
  *(result + 18800) = xmmword_252E55BD0;
  *(result + 17768) = 0x4071C66666666666;
  *(result + 17800) = 0x4075180000000000;
  *(result + 18760) = 0x4046C00000000000;
  *(result + 17832) = 0x4066600000000000;
  *(result + 17864) = 0x4074A1999999999ALL;
  *(result + 18696) = 0x402C000000000000;
  *(result + 18728) = 0x4075D9999999999ALL;
  *(result + 17896) = 0x40749CCCCCCCCCCDLL;
  *(result + 17928) = 0x400CCCCCCCCCCCCDLL;
  *(result + 17960) = 0x40762E6666666666;
  *(result + 18664) = 0x406D7CCCCCCCCCCDLL;
  *(result + 18024) = 0x4072F4CCCCCCCCCDLL;
  *(result + 18632) = 0x4046A66666666666;
  *(result + 18608) = v1;
  strcpy((result + 18088), "fffffVv@fffff&K@");
  *(result + 18120) = 0x4076180000000000;
  *(result + 18216) = 0x406B800000000000;
  *(result + 18600) = 0x4038333333333333;
  *(result + 18248) = 0x406C200000000000;
  *(result + 18280) = 0x407414CCCCCCCCCDLL;
  *(result + 18312) = 0x4070A9999999999ALL;
  *(result + 18568) = 0x4039000000000000;
  *(result + 18344) = 0x4075166666666666;
  *(result + 18376) = 0x4038E66666666666;
  *(result + 18536) = 0x4064800000000000;
  *(result + 18408) = 0x4076233333333333;
  *(result + 18440) = 0x401F333333333333;
  *(result + 18504) = 0x403219999999999ALL;
  *(result + 20480) = 636;
  *(result + 18472) = 0x4039800000000000;
  *(result + 20512) = 637;
  *(result + 20544) = 638;
  *(result + 20576) = 639;
  *(result + 20608) = 640;
  *(result + 20640) = 641;
  *(result + 20672) = 642;
  *(result + 20704) = 643;
  *(result + 20736) = 644;
  *(result + 20768) = 645;
  *(result + 20800) = 646;
  *(result + 20832) = 647;
  *(result + 20864) = 648;
  *(result + 20896) = 649;
  *(result + 20928) = 650;
  *(result + 20960) = 651;
  *(result + 20992) = 652;
  *(result + 21024) = 653;
  *(result + 21056) = 654;
  *(result + 21088) = 655;
  *(result + 21120) = 656;
  *(result + 21152) = 657;
  *(result + 18224) = xmmword_252E55F00;
  *(result + 21184) = 658;
  *(result + 21216) = 659;
  *(result + 18184) = 0;
  *(result + 21248) = 660;
  *(result + 21280) = 661;
  *(result + 21312) = 662;
  *(result + 18152) = 0;
  *(result + 21344) = 663;
  *(result + 21376) = 664;
  *(result + 21408) = 665;
  *(result + 21440) = 666;
  *(result + 21472) = 667;
  *(result + 21504) = 668;
  *(result + 21536) = 669;
  *(result + 21568) = 670;
  *(result + 18056) = 0;
  *(result + 21600) = 671;
  *(result + 21632) = 672;
  *(result + 21664) = 673;
  *(result + 21696) = 674;
  *(result + 21728) = 675;
  *(result + 17992) = 0x4074000000000000;
  *(result + 18000) = xmmword_252E551B0;
  *(result + 21760) = 676;
  *(result + 21792) = 677;
  *(result + 21824) = 678;
  *(result + 21856) = 679;
  *(result + 21888) = 680;
  *(result + 21920) = 681;
  *(result + 21952) = 682;
  *(result + 21984) = 683;
  *(result + 17872) = v1;
  *(result + 22016) = 684;
  *(result + 22048) = 685;
  *(result + 22080) = 686;
  *(result + 22112) = 687;
  *(result + 22144) = 688;
  *(result + 22176) = 689;
  *(result + 22208) = 690;
  *(result + 22240) = 691;
  *(result + 22272) = 692;
  *(result + 22304) = 693;
  *(result + 22336) = 694;
  *(result + 22368) = 695;
  *(result + 22400) = 696;
  *(result + 22432) = 697;
  *(result + 22464) = 698;
  *(result + 22496) = 699;
  *(result + 22528) = 700;
  *(result + 22560) = 701;
  *(result + 22592) = 702;
  *(result + 22624) = 703;
  *(result + 17648) = xmmword_252E56390;
  *(result + 17672) = 0x4066800000000000;
  *(result + 17680) = xmmword_252E569F0;
  *(result + 22656) = 704;
  *(result + 17616) = xmmword_252E551C0;
  *(result + 17640) = 0x4074233333333333;
  *(result + 22688) = 705;
  *(result + 22720) = 706;
  *(result + 17584) = xmmword_252E569E0;
  *(result + 17608) = 0;
  *(result + 22752) = 707;
  *(result + 22784) = 708;
  *(result + 17576) = 0x400A666666666666;
  *(result + 17552) = v1;
  *(result + 17512) = 0x40751E6666666666;
  *(result + 17520) = xmmword_252E569D0;
  *(result + 17544) = 0;
  *(result + 12168) = 0x4040666666666666;
  *(result + 12200) = 0x4064D66666666666;
  *(result + 17480) = 0x4073B00000000000;
  *(result + 12264) = 0x40632CCCCCCCCCCDLL;
  *(result + 17448) = 0x4037800000000000;
  *(result + 17456) = xmmword_252E569C0;
  *(result + 17416) = 0x4075266666666666;
  *(result + 17424) = xmmword_252E569B0;
  *(result + 17392) = xmmword_252E569A0;
  *(result + 17328) = xmmword_252E56990;
  *(result + 17384) = 0x4074A66666666666;
  *(result + 12296) = 0x40705CCCCCCCCCCDLL;
  *(result + 17320) = 0x4075133333333333;
  qmemcpy((result + 17352), "33333su@333333A@33333sL@", 24);
  *(result + 12176) = xmmword_252E55B80;
  *(result + 17296) = xmmword_252E55220;
  *(result + 12208) = xmmword_252E561E0;
  *(result + 17288) = 0x4075BCCCCCCCCCCDLL;
  *(result + 17264) = xmmword_252E56980;
  *(result + 17256) = 0x407374CCCCCCCCCDLL;
  *(result + 12272) = xmmword_252E561F0;
  *(result + 17232) = xmmword_252E56970;
  *(result + 17224) = 0x407384CCCCCCCCCDLL;
  *(result + 12304) = xmmword_252E56200;
  *(result + 17200) = xmmword_252E56960;
  *(result + 17136) = xmmword_252E56940;
  *(result + 17192) = 0x4070D00000000000;
  *(result + 17168) = xmmword_252E56950;
  *(result + 17128) = 0x4070E4CCCCCCCCCDLL;
  *(result + 17160) = 0x4070D80000000000;
  *(result + 12336) = xmmword_252E56210;
  *(result + 12368) = xmmword_252E557A0;
  *(result + 17104) = xmmword_252E55450;
  *(result + 12400) = xmmword_252E56220;
  *(result + 17072) = xmmword_252E56930;
  *(result + 17096) = 0x4072C00000000000;
  *(result + 17040) = xmmword_252E56920;
  *(result + 17064) = 0x4038333333333333;
  *(result + 12432) = xmmword_252E56230;
  *(result + 17032) = 0x4075900000000000;
  *(result + 12528) = xmmword_252E56250;
  *(result + 17008) = v1;
  *(result + 16976) = xmmword_252E563C0;
  *(result + 17000) = 0x4072480000000000;
  *(result + 16968) = 0x4069933333333333;
  *(result + 12592) = xmmword_252E56270;
  *(result + 16944) = v1;
  *(result + 16936) = 0x4040CCCCCCCCCCCDLL;
  *(result + 16912) = xmmword_252E56910;
  *(result + 12624) = xmmword_252E554B0;
  *(result + 16904) = 0x4067566666666666;
  *(result + 16872) = 0x4025666666666666;
  *(result + 12656) = xmmword_252E56280;
  *(result + 16880) = xmmword_252E56900;
  *(result + 12720) = xmmword_252E562A0;
  *(result + 16840) = 0x4072C00000000000;
  *(result + 16848) = xmmword_252E562F0;
  *(result + 12816) = xmmword_252E562D0;
  *(result + 16816) = xmmword_252E568F0;
  *(result + 12848) = xmmword_252E562E0;
  *(result + 16784) = xmmword_252E568E0;
  *(result + 16808) = 0x4044000000000000;
  *(result + 12912) = xmmword_252E56300;
  *(result + 16776) = 0x4058066666666666;
  *(result + 16752) = xmmword_252E568D0;
  *(result + 16744) = 0x4074466666666666;
  *(result + 12976) = xmmword_252E56320;
  *(result + 16720) = xmmword_252E568C0;
  *(result + 13008) = xmmword_252E56330;
  *(result + 16712) = 0x4075A33333333333;
  *(result + 16688) = xmmword_252E568B0;
  *(result + 16680) = 0x4072B9999999999ALL;
  *(result + 13040) = xmmword_252E56340;
  *(result + 16656) = xmmword_252E568A0;
  *(result + 16648) = 0x4075D80000000000;
  *(result + 13072) = xmmword_252E56350;
  *(result + 16624) = xmmword_252E56890;
  *(result + 13104) = xmmword_252E56360;
  *(result + 16616) = 0x4065E00000000000;
  *(result + 16592) = xmmword_252E56880;
  *(result + 16584) = 0x407571999999999ALL;
  *(result + 13136) = xmmword_252E56370;
  *(result + 16560) = xmmword_252E56870;
  *(result + 16552) = 0x4062DCCCCCCCCCCDLL;
  *(result + 16528) = xmmword_252E56860;
  *(result + 16520) = 0x406D2CCCCCCCCCCDLL;
  *(result + 16496) = v1;
  *(result + 13168) = xmmword_252E56380;
  *(result + 16488) = 0x4072480000000000;
  *(result + 13200) = xmmword_252E56390;
  *(result + 16464) = xmmword_252E56850;
  *(result + 16456) = 0x40745CCCCCCCCCCDLL;
  *(result + 13232) = xmmword_252E563A0;
  *(result + 16424) = 0;
  *(result + 16432) = xmmword_252E56840;
  *(result + 16400) = xmmword_252E56830;
  *(result + 16392) = 0;
  *(result + 16360) = 0x4074880000000000;
  *(result + 13264) = xmmword_252E563B0;
  *(result + 16368) = xmmword_252E56820;
  *(result + 13296) = xmmword_252E563C0;
  *(result + 16336) = xmmword_252E56810;
  *(result + 13328) = xmmword_252E563D0;
  *(result + 16328) = 0x403A000000000000;
  *(result + 16296) = 0x4070280000000000;
  *(result + 16272) = xmmword_252E567F0;
  *(result + 16304) = xmmword_252E56800;
  *(result + 16264) = 0x406CA33333333333;
  *(result + 16240) = xmmword_252E56000;
  *(result + 13448) = 0x4018000000000000;
  *(result + 13360) = xmmword_252E563E0;
  *(result + 16232) = 0x406E000000000000;
  *(result + 16208) = xmmword_252E567E0;
  *(result + 16200) = 0x404D800000000000;
  *(result + 16168) = 0x4064400000000000;
  *(result + 16144) = xmmword_252E567C0;
  *(result + 16176) = xmmword_252E567D0;
  *(result + 13512) = 0x4045400000000000;
  *(result + 13544) = 0x4068E00000000000;
  *(result + 16136) = 0x4045333333333333;
  *(result + 16104) = 0x4050733333333333;
  *(result + 13392) = xmmword_252E563F0;
  *(result + 16112) = xmmword_252E567B0;
  *(result + 16080) = xmmword_252E567A0;
  *(result + 13576) = 0x4010666666666666;
  *(result + 13424) = xmmword_252E56400;
  *(result + 16072) = 0x4043800000000000;
  *(result + 16040) = 0x403C4CCCCCCCCCCDLL;
  *(result + 16016) = xmmword_252E56780;
  *(result + 16048) = xmmword_252E56790;
  *(result + 15984) = xmmword_252E558D0;
  *(result + 16008) = 0x404399999999999ALL;
  *(result + 15952) = xmmword_252E56770;
  *(result + 13640) = 0x406429999999999ALL;
  *(result + 15976) = 0x4069BCCCCCCCCCCDLL;
  *(result + 13456) = xmmword_252E56410;
  *(result + 15888) = xmmword_252E56750;
  *(result + 15944) = 0x404E000000000000;
  *(result + 15920) = xmmword_252E56760;
  *(result + 15912) = 0x4072E66666666666;
  *(result + 13672) = 0x4074333333333333;
  *(result + 13488) = xmmword_252E55140;
  *(result + 15880) = 0x4008000000000000;
  *(result + 15848) = 0x40726CCCCCCCCCCDLL;
  *(result + 15824) = xmmword_252E56730;
  *(result + 15856) = xmmword_252E56740;
  *(result + 13704) = 0x4074800000000000;
  *(result + 15816) = 0x40759B3333333333;
  *(result + 15784) = 0x404199999999999ALL;
  *(result + 13520) = xmmword_252E55BD0;
  *(result + 15792) = xmmword_252E56720;
  *(result + 13552) = xmmword_252E56420;
  *(result + 15760) = xmmword_252E56710;
  *(result + 13584) = xmmword_252E56430;
  *(result + 15752) = 0x4074D4CCCCCCCCCDLL;
  *(result + 15728) = xmmword_252E56700;
  *(result + 15696) = xmmword_252E566F0;
  *(result + 15720) = 0x405E000000000000;
  *(result + 15568) = xmmword_252E566C0;
  *(result + 15632) = xmmword_252E566D0;
  *(result + 15688) = 0x404E000000000000;
  *(result + 15664) = xmmword_252E566E0;
  *(result + 15656) = 0x403B800000000000;
  *(result + 13768) = 0x40478CCCCCCCCCCDLL;
  *(result + 15624) = 0x40688CCCCCCCCCCDLL;
  *(result + 15600) = xmmword_252E55C50;
  *(result + 13800) = 0x405CC00000000000;
  *(result + 15560) = 0x40428CCCCCCCCCCDLL;
  *(result + 15592) = 0x4061800000000000;
  *(result + 12880) = xmmword_252E562F0;
  *(result + 15344) = xmmword_252E562F0;
  *(result + 15528) = 0x4075466666666666;
  *(result + 15536) = xmmword_252E56310;
  *(result + 15472) = xmmword_252E566B0;
  *(result + 15496) = 0x4075466666666666;
  *(result + 15504) = xmmword_252E56310;
  *(result + 13832) = 0x4075380000000000;
  *(result + 15464) = 0x4039333333333333;
  *(result + 12944) = xmmword_252E56310;
  *(result + 15376) = xmmword_252E56310;
  *(result + 15440) = xmmword_252E566A0;
  *(result + 15432) = 0x4035666666666666;
  *(result + 15408) = xmmword_252E56690;
  *(result + 15368) = 0x4075466666666666;
  *(result + 15400) = 0x4065266666666666;
  *(result + 13864) = 0x4059133333333333;
  *(result + 13896) = 0x4047D9999999999ALL;
  *(result + 13928) = 0x4041F33333333333;
  *(result + 15336) = 0x4072C00000000000;
  strcpy((result + 15304), "fffff&v@ffffff)@");
  *(result + 15280) = xmmword_252E56100;
  *(result + 15321) = 0;
  *(result + 15322) = 0;
  *(result + 15324) = 1079541760;
  *(result + 13992) = 0x403E99999999999ALL;
  *(result + 15272) = 0x407364CCCCCCCCCDLL;
  *(result + 14024) = 0x40741CCCCCCCCCCDLL;
  *(result + 15248) = xmmword_252E55800;
  *(result + 15240) = 0x406FE9999999999ALL;
  *(result + 15216) = xmmword_252E56670;
  *(result + 14056) = 0x405BA66666666666;
  *(result + 14088) = 0x40617CCCCCCCCCCDLL;
  *(result + 13616) = xmmword_252E56440;
  *(result + 15184) = xmmword_252E56660;
  *(result + 15208) = 0x405E000000000000;
  *(result + 15176) = 0x404B59999999999ALL;
  *(result + 15120) = xmmword_252E56640;
  *(result + 15152) = xmmword_252E56650;
  *(result + 15144) = 0x4040F33333333333;
  *(result + 14928) = xmmword_252E565F0;
  *(result + 13736) = 0x406A400000000000;
  *(result + 15112) = 0x406A400000000000;
  *(result + 15080) = 0x40324CCCCCCCCCCDLL;
  *(result + 14960) = xmmword_252E56600;
  *(result + 15088) = xmmword_252E56630;
  *(result + 15048) = 0x4076580000000000;
  *(result + 15024) = xmmword_252E56610;
  *(result + 15056) = xmmword_252E56620;
  *(result + 14120) = 0x40694CCCCCCCCCCDLL;
  *(result + 15016) = 0x4069ACCCCCCCCCCDLL;
  *(result + 12752) = xmmword_252E562B0;
  *(result + 14952) = 0x403E000000000000;
  *(result + 14984) = 0x401599999999999ALL;
  *(result + 14992) = xmmword_252E562B0;
  *(result + 13416) = 0x405E000000000000;
  *(result + 13608) = 0x405E000000000000;
  *(result + 14184) = 0x405E000000000000;
  *(result + 14920) = 0x4066800000000000;
  *(result + 14216) = 0x4048C00000000000;
  *(result + 13648) = xmmword_252E56450;
  *(result + 14896) = xmmword_252E55240;
  *(result + 14832) = xmmword_252E565D0;
  *(result + 14888) = 0x4069B66666666666;
  *(result + 14864) = xmmword_252E565E0;
  *(result + 14280) = 0x4072F80000000000;
  *(result + 14856) = 0x4067E33333333333;
  *(result + 14760) = 0x4067DCCCCCCCCCCDLL;
  *(result + 13680) = xmmword_252E56460;
  *(result + 14824) = 0x406A833333333333;
  *(result + 14800) = xmmword_252E565C0;
  *(result + 14792) = 0x4027CCCCCCCCCCCDLL;
  *(result + 14768) = xmmword_252E565B0;
  *(result + 14312) = 0x4074F9999999999ALL;
  *(result + 14152) = 0x403E000000000000;
  *(result + 14728) = 0x403E000000000000;
  *(result + 14736) = xmmword_252E55870;
  *(result + 14704) = xmmword_252E565A0;
  *(result + 14696) = 0x4072E4CCCCCCCCCDLL;
  *(result + 14632) = 0x4042B33333333333;
  *(result + 14664) = 0x4030333333333333;
  *(result + 14672) = v1;
  *(result + 13712) = xmmword_252E56470;
  *(result + 13744) = xmmword_252E56480;
  *(result + 13776) = xmmword_252E56490;
  *(result + 13808) = xmmword_252E564A0;
  *(result + 13840) = xmmword_252E564B0;
  *(result + 13904) = xmmword_252E55F40;
  *(result + 13936) = xmmword_252E564C0;
  *(result + 14032) = xmmword_252E564D0;
  *(result + 14064) = xmmword_252E55B50;
  *(result + 14096) = xmmword_252E564E0;
  *(result + 14288) = xmmword_252E56520;
  *(result + 14640) = v1;
  *(result + 14320) = xmmword_252E56530;
  *(result + 14344) = 0x407671999999999ALL;
  *(result + 14600) = 0x4046B33333333333;
  *(result + 14608) = xmmword_252E56590;
  *(result + 14352) = xmmword_252E56540;
  *(result + 14568) = 0x4043666666666666;
  *(result + 14576) = v1;
  *(result + 14376) = 0x404E000000000000;
  *(result + 14536) = 0x4073ECCCCCCCCCCDLL;
  *(result + 14544) = xmmword_252E56580;
  *(result + 14384) = xmmword_252E55450;
  *(result + 14504) = 0u;
  *(result + 14520) = 0x401799999999999ALL;
  *(result + 14408) = 0x4053E66666666666;
  *(result + 14480) = xmmword_252E56570;
  *(result + 14448) = xmmword_252E56560;
  *(result + 14472) = 0x4055A66666666666;
  *(result + 14416) = xmmword_252E56550;
  *(result + 14440) = 0x404D400000000000;
  *(result + 20808) = 0u;
  *(result + 22376) = 0u;
  *(result + 22408) = 0u;
  *(result + 14248) = 0x40438CCCCCCCCCCDLL;
  *(result + 14256) = xmmword_252E56510;
  *(result + 14128) = xmmword_252E55830;
  *(result + 14224) = xmmword_252E56500;
  *(result + 14160) = xmmword_252E564F0;
  *(result + 20080) = xmmword_252E56D40;
  *(result + 20112) = xmmword_252E56D50;
  *(result + 14192) = xmmword_252E55450;
  *(result + 20144) = xmmword_252E56D60;
  *(result + 20176) = xmmword_252E56D70;
  *(result + 20240) = xmmword_252E55920;
  *(result + 20272) = xmmword_252E56D80;
  *(result + 12688) = xmmword_252E56290;
  *(result + 20304) = xmmword_252E56290;
  *(result + 20336) = xmmword_252E56D90;
  *(result + 20368) = xmmword_252E55200;
  *(result + 12496) = xmmword_252E55450;
  *(result + 13872) = xmmword_252E55450;
  *(result + 13968) = xmmword_252E55450;
  *(result + 20400) = xmmword_252E55450;
  *(result + 20432) = xmmword_252E56DA0;
  *(result + 20464) = xmmword_252E56DB0;
  *(result + 14000) = xmmword_252E56240;
  *(result + 20496) = xmmword_252E56DC0;
  *(result + 20528) = xmmword_252E56DD0;
  *(result + 20560) = xmmword_252E56DE0;
  *(result + 20592) = xmmword_252E56DF0;
  *(result + 13960) = 0x406E000000000000;
  *(result + 20624) = xmmword_252E56E00;
  *(result + 20656) = xmmword_252E56E10;
  *(result + 20688) = xmmword_252E56E20;
  *(result + 20720) = xmmword_252E56720;
  *(result + 20752) = xmmword_252E56E30;
  *(result + 20784) = xmmword_252E56E40;
  *(result + 20848) = xmmword_252E56E50;
  *(result + 20880) = xmmword_252E56E60;
  *(result + 20912) = xmmword_252E56E70;
  *(result + 20944) = xmmword_252E56E80;
  *(result + 20976) = xmmword_252E56E90;
  *(result + 21008) = xmmword_252E56EA0;
  *(result + 21072) = xmmword_252E56EB0;
  *(result + 21104) = xmmword_252E56EC0;
  *(result + 21136) = xmmword_252E56ED0;
  *(result + 21168) = xmmword_252E56EE0;
  *(result + 21200) = xmmword_252E56EF0;
  *(result + 21232) = xmmword_252E56F00;
  *(result + 21264) = xmmword_252E56F10;
  *(result + 21328) = xmmword_252E56F20;
  *(result + 21360) = xmmword_252E56F30;
  *(result + 21392) = xmmword_252E56F40;
  *(result + 21424) = xmmword_252E55820;
  *(result + 21488) = xmmword_252E56F50;
  *(result + 21520) = xmmword_252E56F60;
  *(result + 21552) = xmmword_252E56F70;
  *(result + 21584) = xmmword_252E56F80;
  *(result + 21616) = xmmword_252E56F90;
  *(result + 21648) = xmmword_252E56FA0;
  *(result + 21680) = xmmword_252E56FB0;
  *(result + 21712) = xmmword_252E551B0;
  *(result + 21744) = xmmword_252E56FC0;
  *(result + 12784) = xmmword_252E562C0;
  *(result + 21776) = xmmword_252E562C0;
  *(result + 21808) = xmmword_252E56FD0;
  *(result + 21840) = xmmword_252E56FE0;
  *(result + 21872) = xmmword_252E56FF0;
  *(result + 21904) = xmmword_252E556C0;
  *(result + 21936) = xmmword_252E57000;
  *(result + 21968) = xmmword_252E55D20;
  *(result + 22000) = xmmword_252E57010;
  *(result + 22032) = xmmword_252E57020;
  *(result + 22064) = xmmword_252E57030;
  *(result + 22096) = xmmword_252E57040;
  *(result + 22128) = xmmword_252E57050;
  *(result + 22160) = xmmword_252E57060;
  *(result + 22192) = xmmword_252E57070;
  *(result + 22256) = xmmword_252E55400;
  *(result + 22320) = xmmword_252E57080;
  *(result + 22352) = xmmword_252E57090;
  *(result + 12464) = xmmword_252E56240;
  *(result + 22448) = xmmword_252E56240;
  *(result + 22480) = xmmword_252E570A0;
  *(result + 22521) = 0;
  *(result + 22522) = 0;
  *(result + 22524) = 1079271424;
  *(result + 22544) = xmmword_252E570C0;
  *(result + 22576) = xmmword_252E570D0;
  *(result + 22608) = xmmword_252E570E0;
  *(result + 22640) = xmmword_252E570F0;
  *(result + 12240) = v1;
  *(result + 13480) = 0x4041266666666666;
  *(result + 20208) = v1;
  *(result + 21040) = v1;
  *(result + 21296) = v1;
  *(result + 21456) = v1;
  *(result + 22224) = v1;
  *(result + 22288) = v1;
  *(result + 22672) = v1;
  *(result + 22704) = xmmword_252E57100;
  *(result + 22736) = xmmword_252E55410;
  *(result + 22768) = xmmword_252E55F00;
  *(result + 22800) = xmmword_252E57110;
  *(result + 12328) = 0x4034000000000000;
  *(result + 12360) = 0x404B266666666666;
  *(result + 13384) = 0x4062C00000000000;
  *(result + 12392) = 0x406EDCCCCCCCCCCDLL;
  *(result + 12424) = 0x406189999999999ALL;
  *(result + 13352) = 0x4063C33333333333;
  *(result + 12456) = 0x403419999999999ALL;
  *(result + 12520) = 0x4071480000000000;
  qmemcpy((result + 12552), "33333su@333333A@33333sL@", 24);
  *(result + 13320) = 0x4046B33333333333;
  *(result + 12584) = 0x4075B9999999999ALL;
  *(result + 12616) = 0x4069500000000000;
  *(result + 13288) = 0x4067666666666666;
  *(result + 12648) = 0x406349999999999ALL;
  *(result + 13224) = 0x401A666666666666;
  *(result + 12680) = 0x406E000000000000;
  *(result + 13256) = 0x406E000000000000;
  *(result + 12744) = 0x401599999999999ALL;
  *(result + 12808) = 0x406A133333333333;
  *(result + 12840) = 0x406419999999999ALL;
  *(result + 13192) = 0x4074233333333333;
  *(result + 12904) = 0x407201999999999ALL;
  *(result + 12936) = 0x407039999999999ALL;
  *(result + 13160) = 0x406639999999999ALL;
  *(result + 12968) = 0x40743CCCCCCCCCCDLL;
  *(result + 13000) = 0x4062566666666666;
  *(result + 13128) = 0x406A800000000000;
  *(result + 13032) = 0x406F100000000000;
  *(result + 13064) = 0x4063A00000000000;
  *(result + 13096) = 0x4022CCCCCCCCCCCDLL;
  *(result + 20136) = 0x403299999999999ALL;
  *(result + 20168) = 0x4040800000000000;
  *(result + 20232) = 0x403B4CCCCCCCCCCDLL;
  *(result + 20264) = 0x4074000000000000;
  *(result + 20296) = 0x4039800000000000;
  *(result + 20424) = 0x40683CCCCCCCCCCDLL;
  *(result + 20456) = 0x4065433333333333;
  *(result + 20488) = 0x4024666666666666;
  *(result + 20552) = 0x4074D00000000000;
  *(result + 20584) = 0x406649999999999ALL;
  *(result + 20616) = 0x403D99999999999ALL;
  *(result + 20648) = 0x4040A66666666666;
  *(result + 20680) = 0x404D000000000000;
  *(result + 20712) = 0x4022333333333333;
  *(result + 20744) = 0x4041666666666666;
  *(result + 20776) = 0x4075E33333333333;
  *(result + 12776) = 0x4048266666666666;
  *(result + 12872) = 0x4072C00000000000;
  *(result + 20824) = 0x404919999999999ALL;
  *(result + 20840) = 0x4065066666666666;
  *(result + 20872) = 0x4069D66666666666;
  *(result + 20904) = 0x406A7CCCCCCCCCCDLL;
  *(result + 20936) = 0x4037B33333333333;
  *(result + 20968) = 0x4075A9999999999ALL;
  *(result + 21000) = 0x4065E9999999999ALL;
  *(result + 21032) = 0x4066066666666666;
  *(result + 21064) = 0x4061C66666666666;
  *(result + 21096) = 0x40755B3333333333;
  *(result + 21128) = 0x407489999999999ALL;
  *(result + 21160) = 0x4074533333333333;
  *(result + 21192) = 0x406BC00000000000;
  *(result + 21224) = 0x4075300000000000;
  *(result + 21256) = 0x406B9CCCCCCCCCCDLL;
  *(result + 21288) = 0x40450CCCCCCCCCCDLL;
  *(result + 21320) = 0x4061A33333333333;
  *(result + 21352) = 0x4062966666666666;
  *(result + 21384) = 0x40766E6666666666;
  *(result + 12712) = 0x4075D9999999999ALL;
  *(result + 20200) = 0x4048000000000000;
  *(result + 21448) = 0x4048000000000000;
  *(result + 21480) = 0x406F99999999999ALL;
  *(result + 21544) = 0x406E733333333333;
  *(result + 21576) = 0x406C766666666666;
  *(result + 21608) = 0x4035666666666666;
  *(result + 21640) = 0x406B033333333333;
  *(result + 21672) = 0x4044000000000000;
  *(result + 21736) = 0x4076433333333333;
  *(result + 21768) = 0x4048266666666666;
  *(result + 21800) = 0x40490CCCCCCCCCCDLL;
  *(result + 21832) = 0x40763E6666666666;
  *(result + 21864) = 0x406629999999999ALL;
  *(result + 21896) = 0x4013333333333333;
  *(result + 21928) = 0x40714E6666666666;
  *(result + 12488) = 0;
  *(result + 12232) = 0x4072C00000000000;
  *(result + 20520) = 0x4072C00000000000;
  *(result + 21512) = 0x4072C00000000000;
  *(result + 21960) = 0x4072C00000000000;
  *(result + 21992) = 0x406C99999999999ALL;
  *(result + 22024) = 0x4075033333333333;
  *(result + 22056) = 0x40641CCCCCCCCCCDLL;
  *(result + 22088) = 0x3FF999999999999ALL;
  *(result + 22120) = 0x4075CE6666666666;
  *(result + 22152) = 0x407484CCCCCCCCCDLL;
  *(result + 22184) = 0x4027666666666666;
  *(result + 22216) = 0x4071566666666666;
  *(result + 20392) = 0x4066800000000000;
  *(result + 22248) = 0x4066800000000000;
  *(result + 22280) = 0x4066800000000000;
  *(result + 22312) = 0x401ACCCCCCCCCCCDLL;
  *(result + 22344) = 0x40438CCCCCCCCCCDLL;
  *(result + 20328) = 0x4059000000000000;
  *(result + 22392) = 0x4059000000000000;
  *(result + 22424) = 0x4058066666666666;
  *(result + 22440) = 0x4074900000000000;
  *(result + 22472) = 0x4075D9999999999ALL;
  strcpy((result + 22504), "fffff6l@3333336@");
  *(result + 22536) = 0x40760CCCCCCCCCCDLL;
  *(result + 22568) = 0x4071900000000000;
  *(result + 22600) = 0x4060F9999999999ALL;
  *(result + 22632) = 0x406A733333333333;
  *(result + 21704) = 0x404E000000000000;
  *(result + 22664) = 0x404E000000000000;
  *(result + 20104) = 0x4041266666666666;
  *(result + 22696) = 0x4041266666666666;
  *(result + 22728) = 0x4053ECCCCCCCCCCDLL;
  *(result + 22760) = 0x406D1CCCCCCCCCCDLL;
  *(result + 22792) = 0x40374CCCCCCCCCCDLL;
  qword_27F575A90 = result;
  *(result + 20360) = 0;
  *(result + 21416) = 0;
  return result;
}

BOOL sub_252C5BE1C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_252E379C4();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

BOOL sub_252C5BF14(double *a1, double *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = a1[3];
  v6 = a2[1];
  v5 = a2[2];
  v7 = a2[3];
  v17 = *a1;
  v16 = *a2;
  v8 = HueSemantic.rawValue.getter();
  v10 = v9;
  if (v8 == HueSemantic.rawValue.getter() && v10 == v11)
  {

    if (v3 != v6 || v2 != v5)
    {
      return 0;
    }

    return v4 == v7;
  }

  v14 = sub_252E37DB4();

  result = 0;
  if ((v14 & 1) != 0 && v3 == v6 && v2 == v5)
  {
    return v4 == v7;
  }

  return result;
}

uint64_t sub_252C5C010(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_252E37D84() & 1;
  }
}

unint64_t sub_252C5C088(uint64_t a1, unint64_t a2)
{
  sub_252DCD3CC(58, 0xE100000000000000, a1, a2);
  v4 = sub_252E37084();
  v5 = sub_252E37194();
  v9 = sub_252C5C010(v5, v6, v7, v8, 4346696, 0xE300000000000000);

  if (v9)
  {
    v10 = sub_252DCD3CC(59, 0xE100000000000000, a1, a2);
    v12 = v11;
    v13 = sub_252E37084();
    if ((v12 & 1) == 0 && (v10 ^ v13) < 0x4000)
    {
      result = sub_252E37084();
      if (v4 >> 14 < result >> 14)
      {
        __break(1u);
      }

      else
      {
        v15 = sub_252E37194();
        v17 = v16;
        v19 = v18;
        v21 = v20;

        v32[0] = v15;
        v32[1] = v17;
        v32[2] = v19;
        v32[3] = v21;
        sub_2529C7C0C();
        sub_252947DBC();
        v22 = sub_252E37794();

        if (v22[2])
        {
          v23 = v22[4];
          v24 = v22[5];
          v32[0] = 0;

          v25 = sub_252C5BE1C(v23, v24);

          if (v22[2] >= 2uLL)
          {
            v26 = v32[0];
            v27 = v22[6];
            v28 = v22[7];
            v32[0] = 0;

            sub_252C5BE1C(v27, v28);

            if (v22[2] >= 3uLL)
            {
              v29 = v22[8];
              v30 = v22[9];

              v32[0] = 0;
              sub_252C5BE1C(v29, v30);

              if (v25)
              {
                return v26;
              }

              else
              {
                return 0;
              }
            }

LABEL_17:
            __break(1u);
            return result;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v31 = sub_252E36AD4();
  __swift_project_value_buffer(v31, qword_27F544CB8);
  sub_252E379F4();

  strcpy(v32, "Invalid color ");
  HIBYTE(v32[1]) = -18;
  MEMORY[0x2530AD570](a1, a2);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E8CDA0);
  sub_252CC4050(v32[0], v32[1], 0xD000000000000083, 0x8000000252E8CDC0, 0xD000000000000012, 0x8000000252E8CE50, 38);

  return 0;
}

_BYTE *sub_252C5C488@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

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

uint64_t sub_252C5C514(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD3C && *(a1 + 32))
  {
    return (*a1 + 64828);
  }

  v3 = *a1;
  v4 = v3 >= 0x2C5;
  v5 = v3 - 709;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_252C5C560(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD3B)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 64828;
    *(result + 8) = 0;
    if (a3 >= 0xFD3C)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD3C)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 708;
    }
  }

  return result;
}

unint64_t sub_252C5C5C8()
{
  result = qword_27F544628;
  if (!qword_27F544628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544628);
  }

  return result;
}

id sub_252C5C61C(void *a1)
{
  v2 = v1;
  v4 = sub_252E32E84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277D57570]) init];
  if (!v9)
  {
    if (qword_27F53F530 == -1)
    {
LABEL_7:
      v17 = sub_252E36AD4();
      __swift_project_value_buffer(v17, qword_27F544E38);
      sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD000000000000074, 0x8000000252E8CE70, 0xD000000000000017, 0x8000000252E715D0, 50);
      return 0;
    }

LABEL_56:
    swift_once();
    goto LABEL_7;
  }

  v10 = v9;
  v64 = a1;
  sub_252E32E74();
  v11 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v12 = sub_252E32E44();
  v13 = [v11 initWithNSUUID_];

  (*(v5 + 8))(v8, v4);
  [v10 setCommandId_];

  [v10 setCommandType_];
  v14 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  v15 = *(v2 + v14);
  if (v15 <= 4)
  {
    v16 = v64;
    if (!v15)
    {
      v18 = 0;
      goto LABEL_13;
    }

    if (v15 != 3)
    {
      if (v15 != 4)
      {
        goto LABEL_14;
      }

      v18 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v18 = 2;
LABEL_13:
    [v10 setCommandOutcome_];
    goto LABEL_14;
  }

  v16 = v64;
  if ((v15 - 5) < 2 || (v15 - 100) < 2)
  {
    goto LABEL_12;
  }

LABEL_14:
  v19 = [objc_allocWithZone(MEMORY[0x277D57580]) init];
  if (!v19)
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v25 = sub_252E36AD4();
    __swift_project_value_buffer(v25, qword_27F544E38);
    sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD000000000000074, 0x8000000252E8CE70, 0xD000000000000017, 0x8000000252E715D0, 61);

    return 0;
  }

  v20 = v19;
  if ([v10 commandOutcome] != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
    inited = swift_initStackObject();
    v22 = inited;
    *(inited + 16) = xmmword_252E3C290;
    v23 = *(v2 + v14);
    if (v23 <= 4)
    {
      if (v23)
      {
        if (v23 == 3)
        {
          v27 = 0xEA00000000007373;
          v28 = 0x6572676F72506E69;
          goto LABEL_38;
        }

        if (v23 == 4)
        {
          v27 = 0xE700000000000000;
          v28 = 0x73736563637573;
LABEL_38:
          *(inited + 32) = v28;
          *(inited + 40) = v27;
          sub_252AD4414(inited);
          swift_setDeallocating();
          sub_252A01B34(v22 + 32);
          v29 = sub_252E37254();

          [v20 setHomeAutomationRequestErrorReasons_];

          goto LABEL_39;
        }
      }
    }

    else
    {
      if (v23 <= 99)
      {
        if (v23 == 5)
        {
          v27 = 0xE700000000000000;
          v28 = 0x6572756C696166;
          goto LABEL_38;
        }

        if (v23 == 6)
        {
          v24 = "failureRequiringAppLaunch";
LABEL_36:
          v27 = (v24 - 32) | 0x8000000000000000;
          v28 = 0xD000000000000019;
          goto LABEL_38;
        }

        goto LABEL_33;
      }

      if (v23 == 100)
      {
        v24 = "failureNoMatchingEntities";
        goto LABEL_36;
      }

      if (v23 == 101)
      {
        v27 = 0x8000000252E84CC0;
        v28 = 0xD000000000000011;
        goto LABEL_38;
      }
    }

LABEL_33:
    v27 = 0xE700000000000000;
    v28 = 0x6E776F6E6B6E75;
    goto LABEL_38;
  }

LABEL_39:
  v30 = [v16 filters];
  v31 = MEMORY[0x277D84F90];
  v63 = v10;
  if (v30)
  {
    v32 = v30;
    type metadata accessor for HomeFilter();
    v33 = sub_252E37264();

    v65 = v33;
    if (v33 >> 62)
    {
      v34 = sub_252E378C4();
      v62 = v20;
      if (v34)
      {
LABEL_42:
        v35 = 0;
        v36 = v65 & 0xC000000000000001;
        v37 = v65 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v36)
          {
            v38 = MEMORY[0x2530ADF00](v35, v65);
          }

          else
          {
            if (v35 >= *(v37 + 16))
            {
              goto LABEL_55;
            }

            v38 = *(v65 + 8 * v35 + 32);
          }

          v39 = v38;
          v40 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          v41 = HomeDeviceType.description.getter([v38 deviceType]);
          v43 = v42;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_2529F7A80(0, *(v31 + 2) + 1, 1, v31);
          }

          v45 = *(v31 + 2);
          v44 = *(v31 + 3);
          if (v45 >= v44 >> 1)
          {
            v31 = sub_2529F7A80((v44 > 1), v45 + 1, 1, v31);
          }

          *(v31 + 2) = v45 + 1;
          v46 = &v31[16 * v45];
          *(v46 + 4) = v41;
          *(v46 + 5) = v43;
          ++v35;
          if (v40 == v34)
          {
            goto LABEL_58;
          }
        }

        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    else
    {
      v34 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v62 = v20;
      if (v34)
      {
        goto LABEL_42;
      }
    }

LABEL_58:

    v20 = v62;
    v16 = v64;
  }

  sub_252C76E8C(v31);

  v47 = [v16 filters];
  if (v47)
  {
    v48 = v47;
    type metadata accessor for HomeFilter();
    v49 = sub_252E37264();

    v66 = MEMORY[0x277D84F90];
    if (v49 >> 62)
    {
      goto LABEL_74;
    }

    for (i = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v51 = v20;
      v52 = 0;
      v20 = (v49 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v49 & 0xC000000000000001) != 0)
        {
          v53 = MEMORY[0x2530ADF00](v52, v49);
        }

        else
        {
          if (v52 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_73;
          }

          v53 = *(v49 + 8 * v52 + 32);
        }

        v54 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        MEMORY[0x2530AD700](v53);
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v55 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v52;
        if (v54 == i)
        {
          v56 = v66;
          v20 = v51;
          goto LABEL_76;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      ;
    }

    v56 = MEMORY[0x277D84F90];
LABEL_76:

    v57 = sub_252B1F8D4(v56);

    v47 = dword_252E571BC[v57];
  }

  sub_252C7704C(v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_252E3C130;
  *(v58 + 32) = v20;
  sub_252A01B88();
  v59 = v20;
  v60 = sub_252E37254();

  v61 = v63;
  [v63 setHomeAutomationRequests_];

  return v61;
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

uint64_t sub_252C5CE98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_252C5CEE0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

BOOL sub_252C5CF44()
{
  if (*(*v0 + 16))
  {
    return 0;
  }

  if (*(v0[1] + 16))
  {
    return 0;
  }

  if (*(v0[2] + 16))
  {
    return 0;
  }

  if (*(v0[3] + 16))
  {
    return 0;
  }

  if (*(v0[4] + 16))
  {
    return 0;
  }

  if (*(v0[5] + 16))
  {
    return 0;
  }

  if (*(v0[6] + 16))
  {
    return 0;
  }

  if (*(v0[7] + 16))
  {
    return 0;
  }

  if (*(v0[8] + 16))
  {
    return 0;
  }

  if (*(v0[9] + 16))
  {
    return 0;
  }

  return *(v0[10] + 16) == 0;
}

void sub_252C5D020()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(*v0 + 16);
  v4 = *(v2 + 16);
  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
    goto LABEL_188;
  }

  v6 = *(v0[2] + 16);
  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (v7)
  {
LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  v9 = *(v0[4] + 16);
  v7 = __OFADD__(v8, v9);
  v10 = v8 + v9;
  if (v7)
  {
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  v11 = *(v0[3] + 16);
  v7 = __OFADD__(v10, v11);
  v12 = v10 + v11;
  if (v7)
  {
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  v13 = *(v0[5] + 16);
  v7 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  if (v7)
  {
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  v181 = *(v0[7] + 16);
  v7 = __OFADD__(v14, v181);
  v15 = v14 + v181;
  if (v7)
  {
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  v180 = *(v0[9] + 16);
  v7 = __OFADD__(v15, v180);
  v16 = v15 + v180;
  if (v7)
  {
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  v179 = *(v0[10] + 16);
  if (!__OFADD__(v16, v179))
  {
    v172 = v0[2];
    v173 = v0[3];
    v174 = v0[4];
    v175 = v0[5];
    v176 = v0[7];
    v177 = v0[9];
    v17 = MEMORY[0x277D84F90];
    v178 = v0[10];
    if (v3)
    {
      v171 = v0[1];
      v182 = MEMORY[0x277D84F90];
      sub_2529AA4A0(0, v3, 0);
      v17 = v182;
      v18 = (v1 + 52);
      v19 = *(v182 + 16);
      do
      {
        v20 = *v18;
        v183 = v17;
        v21 = *(v17 + 24);
        v22 = v19 + 1;
        if (v19 >= v21 >> 1)
        {
          sub_2529AA4A0((v21 > 1), v19 + 1, 1);
          v17 = v183;
        }

        *(v17 + 16) = v22;
        *(v17 + 4 * v19 + 32) = v20;
        v18 += 8;
        ++v19;
        --v3;
      }

      while (v3);
      v2 = v171;
    }

    else
    {
      v22 = *(MEMORY[0x277D84F90] + 16);
      if (!v22)
      {
        v127 = MEMORY[0x277D84F90];

        if (v4)
        {
LABEL_24:
          v30 = MEMORY[0x277D84F90];
          v184 = MEMORY[0x277D84F90];
          sub_2529AA4A0(0, v4, 0);
          v31 = v184;
          v32 = (v2 + 52);
          v33 = *(v184 + 16);
          do
          {
            v34 = *v32;
            v185 = v31;
            v35 = *(v31 + 24);
            if (v33 >= v35 >> 1)
            {
              sub_2529AA4A0((v35 > 1), v33 + 1, 1);
              v31 = v185;
            }

            *(v31 + 16) = v33 + 1;
            *(v31 + 4 * v33 + 32) = v34;
            v32 += 8;
            ++v33;
            --v4;
          }

          while (v4);
LABEL_31:
          v36 = *(v31 + 16);
          if (!v36)
          {

            if (v6)
            {
              goto LABEL_61;
            }

            goto LABEL_35;
          }

          if (v36 > 7)
          {
            v37 = v36 & 0x7FFFFFFFFFFFFFF8;
            v58 = v31 + 48;
            v38 = 0.0;
            v59 = v36 & 0x7FFFFFFFFFFFFFF8;
            do
            {
              v38 = (((((((v38 + COERCE_FLOAT(*(v58 - 16))) + COERCE_FLOAT(HIDWORD(*(v58 - 16)))) + COERCE_FLOAT(*(v58 - 8))) + COERCE_FLOAT(HIDWORD(*(v58 - 16)))) + COERCE_FLOAT(*v58)) + COERCE_FLOAT(HIDWORD(*v58))) + COERCE_FLOAT(*(v58 + 8))) + COERCE_FLOAT(HIDWORD(*v58));
              v58 += 32;
              v59 -= 8;
            }

            while (v59);
            if (v36 == v37)
            {
LABEL_60:

              if (v6)
              {
LABEL_61:
                sub_2529AA4A0(0, v6, 0);
                v39 = v30;
                v63 = (v172 + 52);
                v64 = *(v30 + 16);
                do
                {
                  v65 = *v63;
                  v186 = v39;
                  v66 = *(v39 + 24);
                  if (v64 >= v66 >> 1)
                  {
                    sub_2529AA4A0((v66 > 1), v64 + 1, 1);
                    v39 = v186;
                  }

                  *(v39 + 16) = v64 + 1;
                  *(v39 + 4 * v64 + 32) = v65;
                  v63 += 8;
                  ++v64;
                  --v6;
                }

                while (v6);
LABEL_36:
                v40 = *(v39 + 16);
                if (!v40)
                {

                  if (v11)
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_40;
                }

                if (v40 > 7)
                {
                  v41 = v40 & 0x7FFFFFFFFFFFFFF8;
                  v67 = v39 + 48;
                  v42 = 0.0;
                  v68 = v40 & 0x7FFFFFFFFFFFFFF8;
                  do
                  {
                    v42 = (((((((v42 + COERCE_FLOAT(*(v67 - 16))) + COERCE_FLOAT(HIDWORD(*(v67 - 16)))) + COERCE_FLOAT(*(v67 - 8))) + COERCE_FLOAT(HIDWORD(*(v67 - 16)))) + COERCE_FLOAT(*v67)) + COERCE_FLOAT(HIDWORD(*v67))) + COERCE_FLOAT(*(v67 + 8))) + COERCE_FLOAT(HIDWORD(*v67));
                    v67 += 32;
                    v68 -= 8;
                  }

                  while (v68);
                  if (v40 == v41)
                  {
LABEL_71:

                    if (v11)
                    {
LABEL_72:
                      sub_2529AA4A0(0, v11, 0);
                      v43 = v30;
                      v72 = (v173 + 52);
                      v73 = *(v30 + 16);
                      do
                      {
                        v74 = *v72;
                        v187 = v43;
                        v75 = *(v43 + 24);
                        if (v73 >= v75 >> 1)
                        {
                          sub_2529AA4A0((v75 > 1), v73 + 1, 1);
                          v43 = v187;
                        }

                        *(v43 + 16) = v73 + 1;
                        *(v43 + 4 * v73 + 32) = v74;
                        v72 += 8;
                        ++v73;
                        --v11;
                      }

                      while (v11);
LABEL_41:
                      v44 = *(v43 + 16);
                      v45 = v181;
                      if (!v44)
                      {

                        if (v9)
                        {
                          goto LABEL_83;
                        }

                        goto LABEL_45;
                      }

                      if (v44 > 7)
                      {
                        v46 = v44 & 0x7FFFFFFFFFFFFFF8;
                        v76 = v43 + 48;
                        v47 = 0.0;
                        v77 = v44 & 0x7FFFFFFFFFFFFFF8;
                        do
                        {
                          v47 = (((((((v47 + COERCE_FLOAT(*(v76 - 16))) + COERCE_FLOAT(HIDWORD(*(v76 - 16)))) + COERCE_FLOAT(*(v76 - 8))) + COERCE_FLOAT(HIDWORD(*(v76 - 16)))) + COERCE_FLOAT(*v76)) + COERCE_FLOAT(HIDWORD(*v76))) + COERCE_FLOAT(*(v76 + 8))) + COERCE_FLOAT(HIDWORD(*v76));
                          v76 += 32;
                          v77 -= 8;
                        }

                        while (v77);
                        if (v44 == v46)
                        {
LABEL_82:

                          if (v9)
                          {
LABEL_83:
                            sub_2529AA4A0(0, v9, 0);
                            v48 = v30;
                            v81 = (v174 + 52);
                            v82 = *(v30 + 16);
                            do
                            {
                              v83 = *v81;
                              v188 = v48;
                              v84 = *(v48 + 24);
                              if (v82 >= v84 >> 1)
                              {
                                sub_2529AA4A0((v84 > 1), v82 + 1, 1);
                                v48 = v188;
                              }

                              *(v48 + 16) = v82 + 1;
                              *(v48 + 4 * v82 + 32) = v83;
                              v81 += 8;
                              ++v82;
                              --v9;
                            }

                            while (v9);
LABEL_46:
                            v49 = *(v48 + 16);
                            v50 = v180;
                            if (!v49)
                            {

                              if (v13)
                              {
                                goto LABEL_94;
                              }

                              goto LABEL_50;
                            }

                            if (v49 > 7)
                            {
                              v51 = v49 & 0x7FFFFFFFFFFFFFF8;
                              v85 = v48 + 48;
                              v52 = 0.0;
                              v86 = v49 & 0x7FFFFFFFFFFFFFF8;
                              do
                              {
                                v52 = (((((((v52 + COERCE_FLOAT(*(v85 - 16))) + COERCE_FLOAT(HIDWORD(*(v85 - 16)))) + COERCE_FLOAT(*(v85 - 8))) + COERCE_FLOAT(HIDWORD(*(v85 - 16)))) + COERCE_FLOAT(*v85)) + COERCE_FLOAT(HIDWORD(*v85))) + COERCE_FLOAT(*(v85 + 8))) + COERCE_FLOAT(HIDWORD(*v85));
                                v85 += 32;
                                v86 -= 8;
                              }

                              while (v86);
                              if (v49 == v51)
                              {
LABEL_93:

                                if (v13)
                                {
LABEL_94:
                                  sub_2529AA4A0(0, v13, 0);
                                  v53 = v30;
                                  v90 = (v175 + 52);
                                  v91 = *(v30 + 16);
                                  do
                                  {
                                    v92 = *v90;
                                    v189 = v53;
                                    v93 = *(v53 + 24);
                                    if (v91 >= v93 >> 1)
                                    {
                                      sub_2529AA4A0((v93 > 1), v91 + 1, 1);
                                      v53 = v189;
                                    }

                                    *(v53 + 16) = v91 + 1;
                                    *(v53 + 4 * v91 + 32) = v92;
                                    v90 += 8;
                                    ++v91;
                                    --v13;
                                  }

                                  while (v13);
LABEL_51:
                                  v54 = *(v53 + 16);
                                  v55 = v179;
                                  if (!v54)
                                  {
                                    goto LABEL_104;
                                  }

                                  if (v54 > 7)
                                  {
                                    v56 = v54 & 0x7FFFFFFFFFFFFFF8;
                                    v94 = v53 + 48;
                                    v57 = 0.0;
                                    v95 = v54 & 0x7FFFFFFFFFFFFFF8;
                                    do
                                    {
                                      v57 = (((((((v57 + COERCE_FLOAT(*(v94 - 16))) + COERCE_FLOAT(HIDWORD(*(v94 - 16)))) + COERCE_FLOAT(*(v94 - 8))) + COERCE_FLOAT(HIDWORD(*(v94 - 16)))) + COERCE_FLOAT(*v94)) + COERCE_FLOAT(HIDWORD(*v94))) + COERCE_FLOAT(*(v94 + 8))) + COERCE_FLOAT(HIDWORD(*v94));
                                      v94 += 32;
                                      v95 -= 8;
                                    }

                                    while (v95);
                                    if (v54 == v56)
                                    {
LABEL_104:

                                      v99 = v0[6];
                                      v100 = *(v99 + 16);
                                      if (v100)
                                      {
                                        sub_2529AA4A0(0, v100, 0);
                                        v101 = v30;
                                        v102 = (v99 + 52);
                                        v103 = *(v30 + 16);
                                        do
                                        {
                                          v104 = *v102;
                                          v190 = v101;
                                          v105 = *(v101 + 24);
                                          v106 = v103 + 1;
                                          if (v103 >= v105 >> 1)
                                          {
                                            sub_2529AA4A0((v105 > 1), v103 + 1, 1);
                                            v101 = v190;
                                          }

                                          *(v101 + 16) = v106;
                                          *(v101 + 4 * v103 + 32) = v104;
                                          v102 += 8;
                                          ++v103;
                                          --v100;
                                        }

                                        while (v100);
                                        v30 = MEMORY[0x277D84F90];
                                        if (v106 <= 7)
                                        {
LABEL_110:
                                          v107 = 0;
                                          v108 = 0.0;
                                          goto LABEL_116;
                                        }
                                      }

                                      else
                                      {
                                        v106 = *(v30 + 16);
                                        if (!v106)
                                        {
                                          v128 = MEMORY[0x277D84F90];

                                          if (!v181)
                                          {
                                            v114 = v128;
                                            v119 = *(v128 + 16);
                                            if (!v119)
                                            {
                                              goto LABEL_138;
                                            }

LABEL_126:
                                            if (v119 > 7)
                                            {
                                              v120 = v119 & 0x7FFFFFFFFFFFFFF8;
                                              v122 = v114 + 48;
                                              v121 = 0.0;
                                              v123 = v119 & 0x7FFFFFFFFFFFFFF8;
                                              do
                                              {
                                                v121 = (((((((v121 + COERCE_FLOAT(*(v122 - 16))) + COERCE_FLOAT(HIDWORD(*(v122 - 16)))) + COERCE_FLOAT(*(v122 - 8))) + COERCE_FLOAT(HIDWORD(*(v122 - 16)))) + COERCE_FLOAT(*v122)) + COERCE_FLOAT(HIDWORD(*v122))) + COERCE_FLOAT(*(v122 + 8))) + COERCE_FLOAT(HIDWORD(*v122));
                                                v122 += 32;
                                                v123 -= 8;
                                              }

                                              while (v123);
                                              if (v119 == v120)
                                              {
LABEL_138:

                                                v129 = v0[8];
                                                v130 = *(v129 + 16);
                                                if (v130)
                                                {
                                                  sub_2529AA4A0(0, v130, 0);
                                                  v131 = v30;
                                                  v132 = (v129 + 52);
                                                  v133 = *(v30 + 16);
                                                  do
                                                  {
                                                    v134 = *v132;
                                                    v192 = v131;
                                                    v135 = *(v131 + 24);
                                                    v136 = v133 + 1;
                                                    if (v133 >= v135 >> 1)
                                                    {
                                                      sub_2529AA4A0((v135 > 1), v133 + 1, 1);
                                                      v131 = v192;
                                                    }

                                                    *(v131 + 16) = v136;
                                                    *(v131 + 4 * v133 + 32) = v134;
                                                    v132 += 8;
                                                    ++v133;
                                                    --v130;
                                                  }

                                                  while (v130);
                                                  v30 = MEMORY[0x277D84F90];
                                                  if (v136 <= 7)
                                                  {
LABEL_144:
                                                    v137 = 0;
                                                    v138 = 0.0;
                                                    goto LABEL_150;
                                                  }
                                                }

                                                else
                                                {
                                                  v136 = *(v30 + 16);
                                                  if (!v136)
                                                  {
                                                    v162 = MEMORY[0x277D84F90];

                                                    if (!v180)
                                                    {
                                                      v144 = v162;
                                                      v149 = *(v162 + 16);
                                                      if (v149)
                                                      {
LABEL_160:
                                                        if (v149 > 7)
                                                        {
                                                          v150 = v149 & 0x7FFFFFFFFFFFFFF8;
                                                          v152 = v144 + 48;
                                                          v151 = 0.0;
                                                          v153 = v149 & 0x7FFFFFFFFFFFFFF8;
                                                          do
                                                          {
                                                            v151 = (((((((v151 + COERCE_FLOAT(*(v152 - 16))) + COERCE_FLOAT(HIDWORD(*(v152 - 16)))) + COERCE_FLOAT(*(v152 - 8))) + COERCE_FLOAT(HIDWORD(*(v152 - 16)))) + COERCE_FLOAT(*v152)) + COERCE_FLOAT(HIDWORD(*v152))) + COERCE_FLOAT(*(v152 + 8))) + COERCE_FLOAT(HIDWORD(*v152));
                                                            v152 += 32;
                                                            v153 -= 8;
                                                          }

                                                          while (v153);
                                                          if (v149 == v150)
                                                          {
LABEL_167:

                                                            if (v179)
                                                            {
                                                              goto LABEL_168;
                                                            }

                                                            goto LABEL_176;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v150 = 0;
                                                          v151 = 0.0;
                                                        }

                                                        v154 = v149 - v150;
                                                        v155 = (v144 + 4 * v150 + 32);
                                                        do
                                                        {
                                                          v156 = *v155++;
                                                          v151 = v151 + v156;
                                                          --v154;
                                                        }

                                                        while (v154);
                                                        goto LABEL_167;
                                                      }

LABEL_175:

                                                      if (v179)
                                                      {
LABEL_168:
                                                        sub_2529AA4A0(0, v179, 0);
                                                        v157 = v30;
                                                        v158 = (v178 + 52);
                                                        v159 = *(v30 + 16);
                                                        do
                                                        {
                                                          v160 = *v158;
                                                          v194 = v157;
                                                          v161 = *(v157 + 24);
                                                          if (v159 >= v161 >> 1)
                                                          {
                                                            sub_2529AA4A0((v161 > 1), v159 + 1, 1);
                                                            v157 = v194;
                                                          }

                                                          *(v157 + 16) = v159 + 1;
                                                          *(v157 + 4 * v159 + 32) = v160;
                                                          v158 += 8;
                                                          ++v159;
                                                          --v55;
                                                        }

                                                        while (v55);
LABEL_177:
                                                        v163 = *(v157 + 16);
                                                        if (v163)
                                                        {
                                                          if (v163 > 7)
                                                          {
                                                            v164 = v163 & 0x7FFFFFFFFFFFFFF8;
                                                            v166 = v157 + 48;
                                                            v165 = 0.0;
                                                            v167 = v163 & 0x7FFFFFFFFFFFFFF8;
                                                            do
                                                            {
                                                              v165 = (((((((v165 + COERCE_FLOAT(*(v166 - 16))) + COERCE_FLOAT(HIDWORD(*(v166 - 16)))) + COERCE_FLOAT(*(v166 - 8))) + COERCE_FLOAT(HIDWORD(*(v166 - 16)))) + COERCE_FLOAT(*v166)) + COERCE_FLOAT(HIDWORD(*v166))) + COERCE_FLOAT(*(v166 + 8))) + COERCE_FLOAT(HIDWORD(*v166));
                                                              v166 += 32;
                                                              v167 -= 8;
                                                            }

                                                            while (v167);
                                                            if (v163 == v164)
                                                            {
                                                              goto LABEL_186;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v164 = 0;
                                                            v165 = 0.0;
                                                          }

                                                          v168 = v163 - v164;
                                                          v169 = (v157 + 4 * v164 + 32);
                                                          do
                                                          {
                                                            v170 = *v169++;
                                                            v165 = v165 + v170;
                                                            --v168;
                                                          }

                                                          while (v168);
                                                        }

LABEL_186:

                                                        return;
                                                      }

LABEL_176:
                                                      v157 = MEMORY[0x277D84F90];
                                                      goto LABEL_177;
                                                    }

                                                    goto LABEL_153;
                                                  }

                                                  v131 = v30;
                                                  if (v136 <= 7)
                                                  {
                                                    goto LABEL_144;
                                                  }
                                                }

                                                v137 = v136 & 0xFFFFFFFFFFFFFFF8;
                                                v139 = v131 + 48;
                                                v138 = 0.0;
                                                v140 = v136 & 0xFFFFFFFFFFFFFFF8;
                                                do
                                                {
                                                  v138 = (((((((v138 + COERCE_FLOAT(*(v139 - 16))) + COERCE_FLOAT(HIDWORD(*(v139 - 16)))) + COERCE_FLOAT(*(v139 - 8))) + COERCE_FLOAT(HIDWORD(*(v139 - 16)))) + COERCE_FLOAT(*v139)) + COERCE_FLOAT(HIDWORD(*v139))) + COERCE_FLOAT(*(v139 + 8))) + COERCE_FLOAT(HIDWORD(*v139));
                                                  v139 += 32;
                                                  v140 -= 8;
                                                }

                                                while (v140);
                                                if (v136 == v137)
                                                {
LABEL_152:

                                                  if (!v180)
                                                  {
                                                    v144 = MEMORY[0x277D84F90];
                                                    goto LABEL_159;
                                                  }

LABEL_153:
                                                  sub_2529AA4A0(0, v180, 0);
                                                  v144 = v30;
                                                  v145 = (v177 + 52);
                                                  v146 = *(v30 + 16);
                                                  do
                                                  {
                                                    v147 = *v145;
                                                    v193 = v144;
                                                    v148 = *(v144 + 24);
                                                    if (v146 >= v148 >> 1)
                                                    {
                                                      sub_2529AA4A0((v148 > 1), v146 + 1, 1);
                                                      v144 = v193;
                                                    }

                                                    *(v144 + 16) = v146 + 1;
                                                    *(v144 + 4 * v146 + 32) = v147;
                                                    v145 += 8;
                                                    ++v146;
                                                    --v50;
                                                  }

                                                  while (v50);
LABEL_159:
                                                  v149 = *(v144 + 16);
                                                  if (v149)
                                                  {
                                                    goto LABEL_160;
                                                  }

                                                  goto LABEL_175;
                                                }

LABEL_150:
                                                v141 = v136 - v137;
                                                v142 = (v131 + 4 * v137 + 32);
                                                do
                                                {
                                                  v143 = *v142++;
                                                  v138 = v138 + v143;
                                                  --v141;
                                                }

                                                while (v141);
                                                goto LABEL_152;
                                              }
                                            }

                                            else
                                            {
                                              v120 = 0;
                                              v121 = 0.0;
                                            }

                                            v124 = v119 - v120;
                                            v125 = (v114 + 4 * v120 + 32);
                                            do
                                            {
                                              v126 = *v125++;
                                              v121 = v121 + v126;
                                              --v124;
                                            }

                                            while (v124);
                                            goto LABEL_138;
                                          }

                                          goto LABEL_119;
                                        }

                                        v101 = v30;
                                        if (v106 <= 7)
                                        {
                                          goto LABEL_110;
                                        }
                                      }

                                      v107 = v106 & 0xFFFFFFFFFFFFFFF8;
                                      v109 = v101 + 48;
                                      v108 = 0.0;
                                      v110 = v106 & 0xFFFFFFFFFFFFFFF8;
                                      do
                                      {
                                        v108 = (((((((v108 + COERCE_FLOAT(*(v109 - 16))) + COERCE_FLOAT(HIDWORD(*(v109 - 16)))) + COERCE_FLOAT(*(v109 - 8))) + COERCE_FLOAT(HIDWORD(*(v109 - 16)))) + COERCE_FLOAT(*v109)) + COERCE_FLOAT(HIDWORD(*v109))) + COERCE_FLOAT(*(v109 + 8))) + COERCE_FLOAT(HIDWORD(*v109));
                                        v109 += 32;
                                        v110 -= 8;
                                      }

                                      while (v110);
                                      if (v106 == v107)
                                      {
LABEL_118:

                                        if (!v181)
                                        {
                                          v114 = MEMORY[0x277D84F90];
                                          goto LABEL_125;
                                        }

LABEL_119:
                                        sub_2529AA4A0(0, v181, 0);
                                        v114 = v30;
                                        v115 = (v176 + 52);
                                        v116 = *(v30 + 16);
                                        do
                                        {
                                          v117 = *v115;
                                          v191 = v114;
                                          v118 = *(v114 + 24);
                                          if (v116 >= v118 >> 1)
                                          {
                                            sub_2529AA4A0((v118 > 1), v116 + 1, 1);
                                            v114 = v191;
                                          }

                                          *(v114 + 16) = v116 + 1;
                                          *(v114 + 4 * v116 + 32) = v117;
                                          v115 += 8;
                                          ++v116;
                                          --v45;
                                        }

                                        while (v45);
LABEL_125:
                                        v119 = *(v114 + 16);
                                        if (!v119)
                                        {
                                          goto LABEL_138;
                                        }

                                        goto LABEL_126;
                                      }

LABEL_116:
                                      v111 = v106 - v107;
                                      v112 = (v101 + 4 * v107 + 32);
                                      do
                                      {
                                        v113 = *v112++;
                                        v108 = v108 + v113;
                                        --v111;
                                      }

                                      while (v111);
                                      goto LABEL_118;
                                    }
                                  }

                                  else
                                  {
                                    v56 = 0;
                                    v57 = 0.0;
                                  }

                                  v96 = v54 - v56;
                                  v97 = (v53 + 4 * v56 + 32);
                                  do
                                  {
                                    v98 = *v97++;
                                    v57 = v57 + v98;
                                    --v96;
                                  }

                                  while (v96);
                                  goto LABEL_104;
                                }

LABEL_50:
                                v53 = MEMORY[0x277D84F90];
                                goto LABEL_51;
                              }
                            }

                            else
                            {
                              v51 = 0;
                              v52 = 0.0;
                            }

                            v87 = v49 - v51;
                            v88 = (v48 + 4 * v51 + 32);
                            do
                            {
                              v89 = *v88++;
                              v52 = v52 + v89;
                              --v87;
                            }

                            while (v87);
                            goto LABEL_93;
                          }

LABEL_45:
                          v48 = MEMORY[0x277D84F90];
                          goto LABEL_46;
                        }
                      }

                      else
                      {
                        v46 = 0;
                        v47 = 0.0;
                      }

                      v78 = v44 - v46;
                      v79 = (v43 + 4 * v46 + 32);
                      do
                      {
                        v80 = *v79++;
                        v47 = v47 + v80;
                        --v78;
                      }

                      while (v78);
                      goto LABEL_82;
                    }

LABEL_40:
                    v43 = MEMORY[0x277D84F90];
                    goto LABEL_41;
                  }
                }

                else
                {
                  v41 = 0;
                  v42 = 0.0;
                }

                v69 = v40 - v41;
                v70 = (v39 + 4 * v41 + 32);
                do
                {
                  v71 = *v70++;
                  v42 = v42 + v71;
                  --v69;
                }

                while (v69);
                goto LABEL_71;
              }

LABEL_35:
              v39 = MEMORY[0x277D84F90];
              goto LABEL_36;
            }
          }

          else
          {
            v37 = 0;
            v38 = 0.0;
          }

          v60 = v36 - v37;
          v61 = (v31 + 4 * v37 + 32);
          do
          {
            v62 = *v61++;
            v38 = v38 + v62;
            --v60;
          }

          while (v60);
          goto LABEL_60;
        }

        v31 = v127;
LABEL_30:
        v30 = MEMORY[0x277D84F90];
        goto LABEL_31;
      }
    }

    if (v22 > 7)
    {
      v23 = v22 & 0xFFFFFFFFFFFFFFF8;
      v25 = v17 + 48;
      v24 = 0.0;
      v26 = v22 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v24 = (((((((v24 + COERCE_FLOAT(*(v25 - 16))) + COERCE_FLOAT(HIDWORD(*(v25 - 16)))) + COERCE_FLOAT(*(v25 - 8))) + COERCE_FLOAT(HIDWORD(*(v25 - 16)))) + COERCE_FLOAT(*v25)) + COERCE_FLOAT(HIDWORD(*v25))) + COERCE_FLOAT(*(v25 + 8))) + COERCE_FLOAT(HIDWORD(*v25));
        v25 += 32;
        v26 -= 8;
      }

      while (v26);
      if (v22 == v23)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v23 = 0;
      v24 = 0.0;
    }

    v27 = v22 - v23;
    v28 = (v17 + 4 * v23 + 32);
    do
    {
      v29 = *v28++;
      v24 = v24 + v29;
      --v27;
    }

    while (v27);
LABEL_23:

    if (v4)
    {
      goto LABEL_24;
    }

    v31 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

LABEL_194:
  __break(1u);
}

uint64_t sub_252C5DF3C()
{
  if (*(*v0 + 16))
  {
    return 0;
  }

  if (*(v0[1] + 16))
  {
    return 1;
  }

  if (*(v0[2] + 16))
  {
    return 2;
  }

  if (*(v0[3] + 16))
  {
    return 3;
  }

  if (*(v0[4] + 16))
  {
    return 4;
  }

  if (*(v0[5] + 16))
  {
    return 5;
  }

  if (*(v0[6] + 16))
  {
    return 9;
  }

  if (*(v0[7] + 16))
  {
    return 6;
  }

  if (*(v0[8] + 16))
  {
    return 10;
  }

  if (*(v0[9] + 16))
  {
    return 7;
  }

  if (*(v0[10] + 16))
  {
    return 8;
  }

  return 11;
}

uint64_t sub_252C5E020()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = (*v0 + 56);
    while (1)
    {
      v4 = *v2;
      v2 += 32;
      v3 = v4;
      if (v4 <= 1 || v3 == 2)
      {
        v5 = sub_252E37DB4();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
      }

      if (!--v1)
      {
        goto LABEL_19;
      }
    }
  }

  if (!*(v0[1] + 16) && !*(v0[2] + 16) && !*(v0[3] + 16) && !*(v0[4] + 16) && !*(v0[5] + 16) && !*(v0[6] + 16) && !*(v0[7] + 16) && !*(v0[8] + 16) && !*(v0[9] + 16) && !*(v0[10] + 16))
  {
    return 0;
  }

LABEL_19:
  v6 = v0[1];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 56);
    do
    {
      v10 = *v8;
      v8 += 32;
      v9 = v10;
      if (v10 <= 1 || v9 == 2)
      {
        v11 = sub_252E37DB4();

        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
      }

      --v7;
    }

    while (v7);
  }

  v12 = v0[2];
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (v12 + 56);
    do
    {
      v16 = *v14;
      v14 += 32;
      v15 = v16;
      if (v16 <= 1 || v15 == 2)
      {
        v17 = sub_252E37DB4();

        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
      }

      --v13;
    }

    while (v13);
  }

  v18 = v0[3];
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = (v18 + 56);
    do
    {
      v22 = *v20;
      v20 += 32;
      v21 = v22;
      if (v22 <= 1 || v21 == 2)
      {
        v23 = sub_252E37DB4();

        if ((v23 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
      }

      --v19;
    }

    while (v19);
  }

  v24 = v0[4];
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = (v24 + 56);
    do
    {
      v28 = *v26;
      v26 += 32;
      v27 = v28;
      if (v28 <= 1 || v27 == 2)
      {
        v29 = sub_252E37DB4();

        if ((v29 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
      }

      --v25;
    }

    while (v25);
  }

  v30 = v0[5];
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = (v30 + 56);
    do
    {
      v34 = *v32;
      v32 += 32;
      v33 = v34;
      if (v34 <= 1 || v33 == 2)
      {
        v35 = sub_252E37DB4();

        if ((v35 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
      }

      --v31;
    }

    while (v31);
  }

  v36 = v0[6];
  v37 = *(v36 + 16);
  if (v37)
  {
    v38 = (v36 + 56);
    do
    {
      v40 = *v38;
      v38 += 32;
      v39 = v40;
      if (v40 <= 1 || v39 == 2)
      {
        v41 = sub_252E37DB4();

        if ((v41 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
      }

      --v37;
    }

    while (v37);
  }

  v42 = v0[7];
  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = (v42 + 56);
    do
    {
      v46 = *v44;
      v44 += 32;
      v45 = v46;
      if (v46 <= 1 || v45 == 2)
      {
        v47 = sub_252E37DB4();

        if ((v47 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
      }

      --v43;
    }

    while (v43);
  }

  v48 = v0[8];
  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = (v48 + 56);
    do
    {
      v52 = *v50;
      v50 += 32;
      v51 = v52;
      if (v52 <= 1 || v51 == 2)
      {
        v53 = sub_252E37DB4();

        if ((v53 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
      }

      --v49;
    }

    while (v49);
  }

  v54 = v0[9];
  v55 = *(v54 + 16);
  if (v55)
  {
    v56 = (v54 + 56);
    do
    {
      v58 = *v56;
      v56 += 32;
      v57 = v58;
      if (v58 <= 1 || v57 == 2)
      {
        v59 = sub_252E37DB4();

        if ((v59 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
      }

      --v55;
    }

    while (v55);
  }

  v60 = v0[10];
  v61 = *(v60 + 16);
  if (v61)
  {
    v62 = (v60 + 56);
    while (1)
    {
      v65 = *v62;
      v62 += 32;
      v64 = v65;
      if (v65 <= 1 || v64 == 2)
      {
        v66 = sub_252E37DB4();

        if ((v66 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
      }

      result = 1;
      if (!--v61)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t sub_252C5E778(unsigned __int8 a1)
{
  if (a1 <= 5u)
  {
    v2 = v1 + 3;
    v3 = v1 + 4;
    if (a1 != 4)
    {
      v3 = v1 + 5;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = v1 + 1;
    if (a1 != 1)
    {
      v4 = v1 + 2;
    }

    if (!a1)
    {
      v4 = v1;
    }

    if (a1 <= 2u)
    {
      v5 = v4;
    }

    else
    {
      v5 = v2;
    }

    goto LABEL_23;
  }

  if (a1 <= 8u)
  {
    v6 = v1 + 9;
    if (a1 != 7)
    {
      v6 = v1 + 10;
    }

    if (a1 == 6)
    {
      v5 = v1 + 7;
    }

    else
    {
      v5 = v6;
    }

    goto LABEL_23;
  }

  if (a1 == 9)
  {
    v5 = v1 + 6;
    goto LABEL_23;
  }

  if (a1 == 10)
  {
    v5 = v1 + 8;
LABEL_23:
    v7 = *v5;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252C5E834(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7241746567726174;
    v7 = 0x614D746567726174;
    if (a1 != 10)
    {
      v7 = 1701736302;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 1701736314;
    v9 = 1701670760;
    if (a1 != 7)
    {
      v9 = 0x656E656373;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6D614E70756F7267;
    v2 = 0x5465636976726573;
    v3 = 0x726F737365636361;
    if (a1 != 4)
    {
      v3 = 1836019570;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x4E65636976726573;
    if (a1 != 1)
    {
      v4 = 0x726F737365636361;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_252C5E9CC()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C5EA9C()
{
  *v0;
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252C5EB58()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C5EC24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252C601E4();
  *a2 = result;
  return result;
}

void sub_252C5EC54(unint64_t *a1@<X8>)
{
  v2 = 0x4D74636566726570;
  v3 = 0x8000000252E65390;
  v4 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v4 = 0x74614D7361696C61;
    v3 = 0xEA00000000006863;
  }

  if (*v1)
  {
    v2 = 0x4D6C616974726170;
  }

  if (*v1 <= 1u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 <= 1u)
  {
    v6 = 0xEC00000068637461;
  }

  else
  {
    v6 = v3;
  }

  *a1 = v5;
  a1[1] = v6;
}

uint64_t sub_252C5ED90(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5446B0, &qword_252E57540);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = *(v1 + 16);
  v12 = *(v1 + 5);
  v20 = *(v1 + 24);
  v21 = v11;
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v13);
  sub_252C61354();
  sub_252E37F84();
  v27 = 0;
  sub_252E37C94();
  if (!v2)
  {
    v18 = v20;
    v26 = v21;
    v25 = 1;
    sub_252984F9C();
    sub_252E37CD4();
    v24 = 2;
    sub_252E37D24();
    v23 = v18;
    v22 = 3;
    sub_252C613FC();
    sub_252E37D54();
  }

  return (*(v5 + 8))(v8, v17);
}

uint64_t sub_252C5EF98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 5);
  v3 = *(v0 + 24);
  if (v0[1])
  {
    v4 = *v0;
    sub_252E37EE4();
    sub_252E37044();
    if (v1 == 52)
    {
LABEL_3:
      sub_252E37EE4();
      goto LABEL_6;
    }
  }

  else
  {
    sub_252E37EE4();
    if (v1 == 52)
    {
      goto LABEL_3;
    }
  }

  sub_252E37EE4();
  AccessoryTypeSemantic.rawValue.getter();
  sub_252E37044();

LABEL_6:
  sub_252E37EF4();
  sub_252E37044();
}

uint64_t sub_252C5F128@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544698, &qword_252E57538);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252C61354();
  sub_252E37F74();
  if (!v2)
  {
    v27 = 0;
    v11 = sub_252E37BA4();
    v13 = v12;
    v21 = v11;
    v25 = 1;
    sub_25298270C();
    sub_252E37BE4();
    v14 = v26;
    v24 = 2;
    sub_252E37C34();
    v20 = v14;
    v17 = v16;
    v22 = 3;
    sub_252C613A8();
    sub_252E37C64();
    (*(v6 + 8))(v9, v5);
    v18 = v23;
    *a2 = v21;
    *(a2 + 8) = v13;
    *(a2 + 16) = v20;
    *(a2 + 20) = v17;
    *(a2 + 24) = v18;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_252C5F3A8()
{
  v1 = 1701667182;
  v2 = 0x65726F6373;
  if (*v0 != 2)
  {
    v2 = 1701869940;
  }

  if (*v0)
  {
    v1 = 0x6369746E616D6573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252C5F41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252C60230(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252C5F444(uint64_t a1)
{
  v2 = sub_252C61354();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252C5F480(uint64_t a1)
{
  v2 = sub_252C61354();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252C5F4BC()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 5);
  v5 = *(v0 + 24);
  sub_252E37EC4();
  sub_252C5EF98();
  return sub_252E37F14();
}

uint64_t sub_252C5F524()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 5);
  v5 = *(v0 + 24);
  sub_252E37EC4();
  sub_252C5EF98();
  return sub_252E37F14();
}

uint64_t sub_252C5F5B8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6D614E70756F7267;
    v7 = 0x726F737365636361;
    v8 = 0x7365636976726573;
    if (a1 != 3)
    {
      v8 = 0x726F737365636361;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x4E65636976726573;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x614D746567726174;
    v2 = 0x73656D6F68;
    if (a1 != 9)
    {
      v2 = 0x73656E656373;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x736D6F6F72;
    v4 = 0x7241746567726174;
    if (a1 != 6)
    {
      v4 = 0x73656E6F7ALL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_252C5F730(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544660, &qword_252E57320);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252C60F98();
  sub_252E37F84();
  v13 = *v3;
  HIBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544648, &qword_252E57318);
  sub_252C61040(&qword_27F544668, sub_252C610B8);
  sub_252E37D54();
  if (!v2)
  {
    v13 = v3[1];
    HIBYTE(v12) = 1;
    sub_252E37D54();
    v13 = v3[2];
    HIBYTE(v12) = 2;
    sub_252E37D54();
    v13 = v3[3];
    HIBYTE(v12) = 3;
    sub_252E37D54();
    v13 = v3[4];
    HIBYTE(v12) = 4;
    sub_252E37D54();
    v13 = v3[5];
    HIBYTE(v12) = 5;
    sub_252E37D54();
    v13 = v3[6];
    HIBYTE(v12) = 6;
    sub_252E37D54();
    v13 = v3[7];
    HIBYTE(v12) = 7;
    sub_252E37D54();
    v13 = v3[8];
    HIBYTE(v12) = 8;
    sub_252E37D54();
    v13 = v3[9];
    HIBYTE(v12) = 9;
    sub_252E37D54();
    v13 = v3[10];
    HIBYTE(v12) = 10;
    sub_252E37D54();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_252C5FAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252C60398(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252C5FB08(uint64_t a1)
{
  v2 = sub_252C60F98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252C5FB44(uint64_t a1)
{
  v2 = sub_252C60F98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252C5FB80()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v12 = v0[9];
  v10 = v0[10];
  sub_252E37EC4();
  sub_252ABCF68(v13, v1);
  sub_252ABCF68(v13, v2);
  sub_252ABCF68(v13, v3);
  sub_252ABCF68(v13, v4);
  sub_252ABCF68(v13, v5);
  sub_252ABCF68(v13, v6);
  sub_252ABCF68(v13, v7);
  sub_252ABCF68(v13, v8);
  sub_252ABCF68(v13, v9);
  sub_252ABCF68(v13, v12);
  sub_252ABCF68(v13, v10);
  return sub_252E37F14();
}

uint64_t sub_252C5FC78(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v14 = v1[9];
  v12 = v1[10];
  sub_252ABCF68(a1, v3);
  sub_252ABCF68(a1, v4);
  sub_252ABCF68(a1, v5);
  sub_252ABCF68(a1, v6);
  sub_252ABCF68(a1, v7);
  sub_252ABCF68(a1, v8);
  sub_252ABCF68(a1, v9);
  sub_252ABCF68(a1, v10);
  sub_252ABCF68(a1, v11);
  sub_252ABCF68(a1, v14);

  return sub_252ABCF68(a1, v12);
}

uint64_t sub_252C5FD64()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v12 = v0[9];
  v10 = v0[10];
  sub_252E37EC4();
  sub_252ABCF68(v13, v1);
  sub_252ABCF68(v13, v2);
  sub_252ABCF68(v13, v3);
  sub_252ABCF68(v13, v4);
  sub_252ABCF68(v13, v5);
  sub_252ABCF68(v13, v6);
  sub_252ABCF68(v13, v7);
  sub_252ABCF68(v13, v8);
  sub_252ABCF68(v13, v9);
  sub_252ABCF68(v13, v12);
  sub_252ABCF68(v13, v10);
  return sub_252E37F14();
}

uint64_t sub_252C5FE58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_252C600F8(v7, v9) & 1;
}

unint64_t sub_252C5FEC8()
{
  result = qword_27F544630;
  if (!qword_27F544630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544630);
  }

  return result;
}

double sub_252C5FF1C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_252C6071C(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_252C5FF90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  v10 = *(a2 + 24);
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (sub_252E37DB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v4 != 52)
  {
    if (v8 != 52)
    {
      v13 = AccessoryTypeSemantic.rawValue.getter();
      v15 = v14;
      if (v13 == AccessoryTypeSemantic.rawValue.getter() && v15 == v16)
      {
      }

      else
      {
        v17 = sub_252E37DB4();

        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      if (v5 == v9)
      {
        goto LABEL_22;
      }
    }

    return 0;
  }

  if (v8 != 52 || v5 != v9)
  {
    return 0;
  }

LABEL_22:

  return sub_252A0D7C4(v6, v10);
}

uint64_t sub_252C600F8(uint64_t *a1, uint64_t *a2)
{
  if ((sub_252AE995C(*a1, *a2) & 1) == 0 || (sub_252AE995C(a1[1], a2[1]) & 1) == 0 || (sub_252AE995C(a1[2], a2[2]) & 1) == 0 || (sub_252AE995C(a1[3], a2[3]) & 1) == 0 || (sub_252AE995C(a1[4], a2[4]) & 1) == 0 || (sub_252AE995C(a1[5], a2[5]) & 1) == 0 || (sub_252AE995C(a1[6], a2[6]) & 1) == 0 || (sub_252AE995C(a1[7], a2[7]) & 1) == 0 || (sub_252AE995C(a1[8], a2[8]) & 1) == 0 || (sub_252AE995C(a1[9], a2[9]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[10];
  v5 = a2[10];

  return sub_252AE995C(v4, v5);
}

uint64_t sub_252C601E4()
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

uint64_t sub_252C60230(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6369746E616D6573 && a2 == 0xED000065756C6156 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_252C60398(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E70756F7267 && a2 == 0xEA00000000007365;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E65636976726573 && a2 == 0xEC00000073656D61 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEE0073656D614E79 || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365636976726573 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEB00000000736569 || (sub_252E37DB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736D6F6F72 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7241746567726174 && a2 == 0xEB00000000736165 || (sub_252E37DB4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x73656E6F7ALL && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x614D746567726174 && a2 == 0xEA00000000007370 || (sub_252E37DB4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x73656D6F68 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x73656E656373 && a2 == 0xE600000000000000)
  {

    return 10;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_252C6071C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544638, &qword_252E57310);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_252C60F98();
  sub_252E37F74();
  if (v2)
  {
    v43 = v2;
    v12 = MEMORY[0x277D84F90];
    v42 = MEMORY[0x277D84F90];
    v40 = MEMORY[0x277D84F90];
    v13 = MEMORY[0x277D84F90];
    v14 = MEMORY[0x277D84F90];
    v15 = MEMORY[0x277D84F90];
    v16 = MEMORY[0x277D84F90];
    v17 = MEMORY[0x277D84F90];
    v18 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D84F90];
    v20 = MEMORY[0x277D84F90];
    __swift_destroy_boxed_opaque_existential_1(v41);
    v51 = v19;
    v52 = v18;
    v53 = v17;
    v54 = v16;
    v55 = v15;
    v56 = v14;
    v57 = v13;
    v58 = v40;
    v59 = v42;
    v60 = v12;
    v61 = v20;
    return sub_252937BEC(&v51);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544648, &qword_252E57318);
    LOBYTE(v44) = 0;
    sub_252C61040(&qword_27F544650, sub_252C60FEC);
    sub_252E37C64();
    v39 = v51;
    LOBYTE(v44) = 1;
    sub_252E37C64();
    v38 = v51;
    LOBYTE(v44) = 2;
    sub_252E37C64();
    v37 = a2;
    v22 = v51;
    LOBYTE(v44) = 3;
    sub_252E37C64();
    v23 = v51;
    LOBYTE(v44) = 4;
    sub_252E37C64();
    v24 = v51;
    LOBYTE(v44) = 5;
    sub_252E37C64();
    v36 = v51;
    LOBYTE(v44) = 6;
    sub_252E37C64();
    v35 = v51;
    LOBYTE(v44) = 7;
    sub_252E37C64();
    v43 = 0;
    v40 = v51;
    LOBYTE(v44) = 8;
    sub_252E37C64();
    v43 = 0;
    v34 = v6;
    v42 = v51;
    LOBYTE(v44) = 9;
    sub_252E37C64();
    v43 = 0;
    v25 = v51;
    v50 = 10;
    sub_252E37C64();
    v43 = 0;
    (*(v34 + 8))(v9, v5);
    v34 = v62;
    v26 = v39;
    *&v44 = v39;
    v27 = v38;
    *(&v44 + 1) = v38;
    *&v45 = v22;
    *(&v45 + 1) = v23;
    v28 = v36;
    *&v46 = v24;
    *(&v46 + 1) = v36;
    v29 = v35;
    v30 = v40;
    *&v47 = v35;
    *(&v47 + 1) = v40;
    *&v48 = v42;
    *(&v48 + 1) = v25;
    v49 = v62;
    sub_2529855F8(&v44, &v51);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v51 = v26;
    v52 = v27;
    v53 = v22;
    v54 = v23;
    v55 = v24;
    v56 = v28;
    v57 = v29;
    v58 = v30;
    v59 = v42;
    v60 = v25;
    v61 = v34;
    result = sub_252937BEC(&v51);
    v31 = v47;
    v32 = v37;
    *(v37 + 32) = v46;
    *(v32 + 48) = v31;
    *(v32 + 64) = v48;
    *(v32 + 80) = v49;
    v33 = v45;
    *v32 = v44;
    *(v32 + 16) = v33;
  }

  return result;
}

unint64_t sub_252C60F98()
{
  result = qword_27F544640;
  if (!qword_27F544640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544640);
  }

  return result;
}

unint64_t sub_252C60FEC()
{
  result = qword_27F544658;
  if (!qword_27F544658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544658);
  }

  return result;
}

uint64_t sub_252C61040(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F544648, &qword_252E57318);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252C610B8()
{
  result = qword_27F544670;
  if (!qword_27F544670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544670);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_252C61130(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_252C6118C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_252C611F8()
{
  result = qword_27F544678;
  if (!qword_27F544678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544678);
  }

  return result;
}

unint64_t sub_252C61250()
{
  result = qword_27F544680;
  if (!qword_27F544680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544680);
  }

  return result;
}

unint64_t sub_252C612A8()
{
  result = qword_27F544688;
  if (!qword_27F544688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544688);
  }

  return result;
}

unint64_t sub_252C61300()
{
  result = qword_27F544690;
  if (!qword_27F544690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544690);
  }

  return result;
}

unint64_t sub_252C61354()
{
  result = qword_27F5446A0;
  if (!qword_27F5446A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5446A0);
  }

  return result;
}

unint64_t sub_252C613A8()
{
  result = qword_27F5446A8;
  if (!qword_27F5446A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5446A8);
  }

  return result;
}

unint64_t sub_252C613FC()
{
  result = qword_27F5446B8;
  if (!qword_27F5446B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5446B8);
  }

  return result;
}

unint64_t sub_252C61474()
{
  result = qword_27F5446C0;
  if (!qword_27F5446C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5446C0);
  }

  return result;
}

unint64_t sub_252C614CC()
{
  result = qword_27F5446C8;
  if (!qword_27F5446C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5446C8);
  }

  return result;
}

unint64_t sub_252C61524()
{
  result = qword_27F5446D0;
  if (!qword_27F5446D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5446D0);
  }

  return result;
}

unint64_t sub_252C6157C()
{
  result = qword_27F5446D8;
  if (!qword_27F5446D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5446D8);
  }

  return result;
}

unint64_t sub_252C615D0()
{
  result = qword_27F5446E0;
  if (!qword_27F5446E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5446E0);
  }

  return result;
}

unint64_t sub_252C61640(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = (a1 + 160);
  v4 = v2 + 1;
  v5 = MEMORY[0x277D84F90];
  while (--v4)
  {
    v6 = *v3;
    v3 += 63;
    if (*(v6 + 16))
    {
      v7 = 0;
      v8 = MEMORY[0x277D84F90];
      do
      {
        v9 = (a1 + 32 + 504 * v7);
        v5 = v7;
        while (1)
        {
          if (v5 >= v2)
          {
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          memcpy(__dst, v9, sizeof(__dst));
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_38;
          }

          if (*(__dst[16] + 16))
          {
            break;
          }

          ++v5;
          v9 += 504;
          if (v7 == v2)
          {
            goto LABEL_16;
          }
        }

        sub_2529353AC(__dst, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2529AA480(0, *(v8 + 16) + 1, 1);
          v8 = v27;
        }

        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_2529AA480((v11 > 1), v12 + 1, 1);
          v8 = v27;
        }

        *(v8 + 16) = v12 + 1;
        memcpy((v8 + 504 * v12 + 32), __dst, 0x1F8uLL);
      }

      while (v7 != v2);
LABEL_16:
      v13 = 0;
      v14 = a1 + 32;
      v5 = MEMORY[0x277D84F90];
LABEL_17:
      v15 = (v14 + 504 * v13);
      v16 = v13;
      while (v16 < v2)
      {
        memcpy(__dst, v15, sizeof(__dst));
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_40;
        }

        if (LOBYTE(__dst[26]) != 9 && *(__dst[24] + 16) && !*(__dst[16] + 16))
        {
          sub_2529353AC(__dst, v25);
          v17 = swift_isUniquelyReferenced_nonNull_native();
          v27 = v5;
          if ((v17 & 1) == 0)
          {
            sub_2529AA480(0, *(v5 + 16) + 1, 1);
            v5 = v27;
          }

          v19 = *(v5 + 16);
          v18 = *(v5 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_2529AA480((v18 > 1), v19 + 1, 1);
            v5 = v27;
          }

          *(v5 + 16) = v19 + 1;
          memcpy((v5 + 504 * v19 + 32), __dst, 0x1F8uLL);
          if (v13 != v2)
          {
            goto LABEL_17;
          }

LABEL_29:
          if (!*(v5 + 16))
          {

            if (qword_27F53F520 != -1)
            {
              swift_once();
            }

            v22 = sub_252E36AD4();
            __swift_project_value_buffer(v22, qword_27F544E08);
            __dst[0] = 0;
            __dst[1] = 0xE000000000000000;
            sub_252E379F4();

            __dst[0] = 0xD000000000000030;
            __dst[1] = 0x8000000252E8CFE0;
            v23 = MEMORY[0x2530AD730](v8, &type metadata for HomeAutomationIntent);
            MEMORY[0x2530AD570](v23);

            sub_252CC3D90(__dst[0], __dst[1], 0xD0000000000000A3, 0x8000000252E8CF30);
            v5 = v8;
            goto LABEL_35;
          }

          if (qword_27F53F520 != -1)
          {
            goto LABEL_41;
          }

          goto LABEL_31;
        }

        ++v16;
        v15 += 504;
        if (v13 == v2)
        {
          goto LABEL_29;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      swift_once();
LABEL_31:
      v20 = sub_252E36AD4();
      __swift_project_value_buffer(v20, qword_27F544E08);
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E8CEF0);
      v21 = MEMORY[0x2530AD730](v5, &type metadata for HomeAutomationIntent);
      MEMORY[0x2530AD570](v21);

      sub_252CC3D90(__dst[0], __dst[1], 0xD0000000000000A3, 0x8000000252E8CF30);
LABEL_35:

      return v5;
    }
  }

  return v5;
}

uint64_t sub_252C61A98(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_252E34014();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540570, &unk_252E50EE0) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C61B9C, 0, 0);
}

uint64_t sub_252C61B9C()
{
  v1 = v0[16];
  v2 = v0[11];
  sub_2529515FC(0, 0, 0x4F6E776F6E6B6E75, 0xEE00656D6F637475);
  type metadata accessor for ErrorFilingHelper();
  inited = swift_initStackObject();
  v4 = sub_252E36884();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(inited + 16) = sub_252E36874();
  v7 = sub_252E36834();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  sub_25295ADB4(0xD000000000000068, 0x8000000252E8D060, 0x4F6E776F6E6B6E55, 0xEE00656D6F637475, 0xD00000000000001ELL, 0x8000000252E57770, v1);

  sub_25293847C(v1, &qword_27F540570, &unk_252E50EE0);
  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v8 + 288), (v0 + 2));

  v9 = v0[5];
  v10 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
  v11 = (*(v10 + 120))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v12 = *(v2 + 96);
  __swift_project_boxed_opaque_existential_1((v2 + 72), v12);
  if (v11)
  {
    v13 = v0[15];
    sub_252B03B94();
    v14 = swift_task_alloc();
    v0[17] = v14;
    *v14 = v0;
    v14[1] = sub_252C61EE8;
    v15 = v0[15];
    v16 = v0[10];
    v17 = v0[11];

    return sub_252A199A8(v16, &unk_252E57828, v17, &unk_252E57830, 0, v15, 0, 0);
  }

  else
  {
    v19 = v0[14];
    sub_252AD7CC4();
    v20 = swift_task_alloc();
    v0[19] = v20;
    *v20 = v0;
    v20[1] = sub_252C620A8;
    v21 = v0[14];
    v22 = v0[10];
    v23 = v0[11];

    return sub_252BDB88C(v22, &unk_252E57818, v23, v21, 0, 0, 0, v12);
  }
}

uint64_t sub_252C61EE8()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *v1;
  v6[18] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252C62268, 0, 0);
  }

  else
  {
    v8 = v6[15];
    v7 = v6[16];
    v9 = v6[14];

    v10 = v6[1];

    return v10();
  }
}

uint64_t sub_252C620A8()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *v1;
  v6[20] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252C622E8, 0, 0);
  }

  else
  {
    v8 = v6[15];
    v7 = v6[16];
    v9 = v6[14];

    v10 = v6[1];

    return v10();
  }
}

uint64_t sub_252C62268()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  v5 = v0[1];

  return v5();
}

uint64_t sub_252C622E8()
{
  v1 = v0[20];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  v5 = v0[1];

  return v5();
}

uint64_t sub_252C62388()
{
  v0[3] = *(v0[2] + 64);
  v1 = *(MEMORY[0x277D55C70] + 4);
  v5 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_252ACFBBC;
  v3 = MEMORY[0x277D84F90];

  return v5(0xD00000000000001DLL, 0x8000000252E84A20, v3);
}

uint64_t sub_252C62468(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for HomeAutomationUnknownOutcomeParameters(0);
  v1[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C62534, 0, 0);
}

uint64_t sub_252C62534()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v5 = sub_252E36324();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  *(v1 + *(v2 + 20)) = 0;
  v7 = v1 + *(v2 + 24);
  *v7 = 0x3FF0000000000000;
  *(v7 + 8) = 0;
  sub_252E37024();
  v6(v3, 0, 1, v5);
  sub_252956C98(v3, v1);
  v8 = sub_252C0AECC();
  v0[6] = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_252C626E0;

  return v12(0xD00000000000001DLL, 0x8000000252E84A20, v8);
}

uint64_t sub_252C626E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v8 = sub_252C628AC;
  }

  else
  {
    *(v4 + 72) = a1;
    v8 = sub_252C6282C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C6282C()
{
  v1 = v0[3];
  sub_252C62C08(v0[5]);

  v2 = v0[1];
  v3 = v0[9];

  return v2(v3);
}

uint64_t sub_252C628AC()
{
  v1 = v0[3];
  sub_252C62C08(v0[5]);

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_252C6294C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252C61A98(a1);
}

uint64_t sub_252C629E8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_252C61A98(a1);
}

void *sub_252C62A84@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for GenericFallbackResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252C62AE8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252C62468(v0);
}

uint64_t sub_252C62B78()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B7BC;

  return sub_252C62368(v0);
}

uint64_t sub_252C62C08(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationUnknownOutcomeParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_252C62C64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5446F0, &unk_252E57840);
  v0 = swift_allocObject();
  *&result = 8;
  *(v0 + 16) = xmmword_252E419C0;
  *(v0 + 32) = &type metadata for InvalidatePlaceHint;
  *(v0 + 40) = &off_2864BFCB0;
  *(v0 + 48) = &type metadata for ValidateHighScoreFuzzyMatches;
  *(v0 + 56) = &off_2864B0250;
  *(v0 + 64) = &type metadata for SameTypePerfectMatchesOverFuzzyMatches;
  *(v0 + 72) = &off_2864B0ED8;
  *(v0 + 80) = &type metadata for PerfectTypeOverFuzzyMatches;
  *(v0 + 88) = &off_2864BFA18;
  *(v0 + 96) = &type metadata for InvalidateMoreThanOneServiceTypes;
  *(v0 + 104) = &off_2864BA608;
  *(v0 + 112) = &type metadata for InvalidateServiceAreaConflicts;
  *(v0 + 120) = &off_2864B82B0;
  *(v0 + 128) = &type metadata for InvalidateUnresolvableServiceAreaCandidates;
  *(v0 + 136) = &off_2864BC638;
  *(v0 + 144) = &type metadata for InvalidateEmptyCandidates;
  *(v0 + 152) = &off_2864B9ED0;
  qword_27F575A98 = v0;
  return result;
}

unint64_t sub_252C62D4C(unint64_t a1, const char *a2)
{
  v68 = a2;
  v77 = sub_252E36AB4();
  v3 = *(v77 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v77);
  v81 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v64 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v64 - v10;
  if (qword_27F53F618 != -1)
  {
LABEL_37:
    swift_once();
  }

  v12 = qword_27F544FA0;
  sub_252E36A94();
  sub_252E375D4();
  v74 = v12;
  sub_252E36A84();
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v13 = sub_252E36AD4();
  v14 = __swift_project_value_buffer(v13, qword_27F544E08);
  *&v104[0] = 0;
  *(&v104[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v82 = 0xD00000000000001FLL;
  *&v104[0] = 0xD00000000000001FLL;
  *(&v104[0] + 1) = 0x8000000252E8D100;
  *&v103[0] = *(a1 + 16);
  v15 = *&v103[0];
  v16 = sub_252E37D94();
  MEMORY[0x2530AD570](v16);

  MEMORY[0x2530AD570](2108704, 0xE300000000000000);
  v17 = MEMORY[0x2530AD730](a1, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v17);

  sub_252CC3D90(*&v104[0], *(&v104[0] + 1), 0xD000000000000092, 0x8000000252E8D120);

  (*(v3 + 16))(v9, v11, v77);
  if (v15 == 1)
  {
    sub_252CC3D90(0xD00000000000001BLL, 0x8000000252E8D2A0, 0xD000000000000092, 0x8000000252E8D120);
    sub_252E375C4();
    sub_252E36A74();
    v21 = *(v3 + 8);
    v22 = v9;
    v23 = v77;
    v21(v22, v77);
    v21(v11, v23);

    return a1;
  }

  if (!v15)
  {
    sub_252CC4050(0xD00000000000001CLL, 0x8000000252E6C730, 0xD000000000000092, 0x8000000252E8D120, v82, 0x8000000252E8D2C0, 39);
    sub_252E375C4();
    a1 = MEMORY[0x277D84F90];
    sub_252E36A74();
    v18 = *(v3 + 8);
    v19 = v9;
    v20 = v77;
    v18(v19, v77);
    v18(v11, v20);
    return a1;
  }

  v69 = "Starting filtering candidates: ";
  v70 = v14;
  v66 = v9;
  v67 = v3;
  v65 = v11;
  v24 = a1;
  a1 = 0;
  v11 = (v24 + 32);
  v79 = 0x8000000252E679B0;
  v80 = 0x8000000252E679D0;
  v78 = 0x8000000252E67980;
  v75 = 0x8000000252E67940;
  v76 = 0x8000000252E67960;
  v3 = 504;
  v9 = 0x48746E6572727563;
  v72 = v15;
  v73 = MEMORY[0x277D84F90];
  v71 = v24 + 32;
  do
  {
    while (1)
    {
      if (a1 >= v15)
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v25 = &v11[504 * a1];
      memcpy(v104, v25, 0x1F8uLL);
      if (__OFADD__(a1++, 1))
      {
        goto LABEL_36;
      }

      memcpy(v103, v25, 0x1F8uLL);
      if (!sub_252A154CC())
      {
        break;
      }

LABEL_11:
      if (a1 == v15)
      {
        goto LABEL_24;
      }
    }

    v27 = *(&v104[23] + 1);
    v28 = *(*(&v104[23] + 1) + 16);
    sub_2529353AC(v104, v103);
    v29 = (v27 + 32);

    while (2)
    {
      if (v28)
      {
        switch(*v29)
        {
          case 4:

            break;
          default:
            v30 = sub_252E37DB4();

            ++v29;
            --v28;
            if ((v30 & 1) == 0)
            {
              continue;
            }

            break;
        }

        sub_252935408(v104);
        v11 = v71;
        v15 = v72;
        v3 = 504;
        goto LABEL_11;
      }

      break;
    }

    v31 = v73;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83[0] = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2529AA480(0, *(v31 + 16) + 1, 1);
      v31 = v83[0];
    }

    v15 = v72;
    v3 = 504;
    v34 = *(v31 + 16);
    v33 = *(v31 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_2529AA480((v33 > 1), v34 + 1, 1);
      v31 = v83[0];
    }

    *(v31 + 16) = v34 + 1;
    v73 = v31;
    memcpy((v31 + 504 * v34 + 32), v104, 0x1F8uLL);
    v11 = v71;
  }

  while (a1 != v15);
LABEL_24:
  a1 = sub_252DF93D8(v73);

  v35 = *(v68 + 16);
  if (v35)
  {
    v36 = (v68 + 32);
    v72 = 0x8000000252E8D210;
    v71 = "Remaining candidates: ";
    v68 = " is one. Returning candidate ";
    v75 = "IntentPrevalidation.Step";
    v76 = (v67 + 8);
    v79 = v35 - 1;
    v73 = 0xD000000000000011;
    v37 = v69;
    while (1)
    {
      v38 = v74;
      v78 = v36;
      v82 = *v36;
      v39 = v81;
      sub_252E36A94();
      sub_252E375D4();
      sub_252E36A84();
      *&v104[0] = 0;
      *(&v104[0] + 1) = 0xE000000000000000;
      sub_252E379F4();

      strcpy(v104, "Running step: ");
      HIBYTE(v104[0]) = -18;
      v103[0] = v82;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5446E8, &qword_252E57838);
      v40 = sub_252E36F94();
      MEMORY[0x2530AD570](v40);

      MEMORY[0x2530AD570](v73, v75 | 0x8000000000000000);
      v41 = MEMORY[0x2530AD730](a1, &type metadata for HomeAutomationIntent);
      MEMORY[0x2530AD570](v41);

      sub_252CC3D90(*&v104[0], *(&v104[0] + 1), 0xD000000000000092, v37 | 0x8000000000000000);

      v42 = *(*(&v82 + 1) + 8);
      v80 = a1;
      v43 = v42();
      v104[0] = v82;
      v44 = sub_252E36F94();
      LOBYTE(v103[0]) = 1;
      LOBYTE(v83[0]) = 1;
      LOBYTE(v84) = 1;
      v85 = 1;
      *&v90 = 0;
      BYTE8(v90) = 1;
      *(&v90 + 9) = *v89;
      HIDWORD(v90) = *&v89[3];
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      LOBYTE(v96) = 1;
      DWORD1(v96) = *&v88[3];
      *(&v96 + 1) = *v88;
      *(&v96 + 1) = 0;
      v97 = 0uLL;
      LOWORD(v98) = 513;
      WORD3(v98) = v87;
      *(&v98 + 2) = v86;
      *(&v98 + 1) = v44;
      v99 = v45;
      v100 = 1;
      GEOLocationCoordinate2DMake(&v90);
      v104[8] = v98;
      v104[9] = v99;
      LOBYTE(v104[10]) = v100;
      v104[4] = v94;
      v104[5] = v95;
      v104[6] = v96;
      v104[7] = v97;
      v104[0] = v90;
      v104[1] = v91;
      v104[2] = v92;
      v104[3] = v93;
      *&v82 = v38;
      _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v38, v39, "IntentSelection.IntentPrevalidation.Step", 40, 2, v104);
      v101[8] = v104[8];
      v101[9] = v104[9];
      v102 = v104[10];
      v101[4] = v104[4];
      v101[5] = v104[5];
      v101[6] = v104[6];
      v101[7] = v104[7];
      v101[0] = v104[0];
      v101[1] = v104[1];
      v101[2] = v104[2];
      v101[3] = v104[3];
      sub_2529765AC(v101);
      if (*(v43 + 16))
      {

        v46 = *(v43 + 16);
        if (v46 == 1)
        {
          memcpy(v103, (v43 + 32), 0x1F8uLL);
          sub_2529353AC(v103, v104);

          *&v104[0] = 0;
          *(&v104[0] + 1) = 0xE000000000000000;
          sub_252E379F4();
          v84 = v104[0];
          MEMORY[0x2530AD570](0xD000000000000020, v71 | 0x8000000000000000);
          v56 = sub_252E37FB4();
          MEMORY[0x2530AD570](v56);

          MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E8D260);
          memcpy(v83, v103, sizeof(v83));
          sub_2529353AC(v103, v104);
          v57 = HomeAutomationIntent.description.getter();
          v59 = v58;
          memcpy(v104, v83, 0x1F8uLL);
          sub_252935408(v104);
          MEMORY[0x2530AD570](v57, v59);

          sub_252CC3D90(v84, *(&v84 + 1), 0xD000000000000092, v69 | 0x8000000000000000);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
          a1 = swift_allocObject();
          *(a1 + 16) = xmmword_252E3C290;
          memcpy((a1 + 32), v103, 0x1F8uLL);
          sub_2529353AC(v103, v83);
          sub_252E375C4();
          v60 = v66;
          sub_252E36A74();
          sub_252935408(v103);
          v61 = v77;
          v62 = *v76;
          (*v76)(v81, v77);
          v62(v60, v61);
          v62(v65, v61);
          return a1;
        }

        *&v104[0] = 0;
        *(&v104[0] + 1) = 0xE000000000000000;
        sub_252E379F4();

        *&v104[0] = 0xD000000000000016;
        *(&v104[0] + 1) = v72;
        *&v103[0] = v46;
        v47 = sub_252E37D94();
        MEMORY[0x2530AD570](v47);

        MEMORY[0x2530AD570](0x7320726574666120, 0xED0000203A706574);
        v48 = sub_252E37FB4();
        MEMORY[0x2530AD570](v48);

        MEMORY[0x2530AD570](2108704, 0xE300000000000000);
        v49 = MEMORY[0x2530AD730](v43, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v49);

        v37 = v69;
        sub_252CC3D90(*&v104[0], *(&v104[0] + 1), 0xD000000000000092, v69 | 0x8000000000000000);
        a1 = v43;
      }

      else
      {

        *&v104[0] = 0;
        *(&v104[0] + 1) = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000020, v71 | 0x8000000000000000);
        v50 = sub_252E37FB4();
        MEMORY[0x2530AD570](v50);

        MEMORY[0x2530AD570](0xD00000000000001ALL, v68 | 0x8000000000000000);
        v51 = sub_252E37FB4();
        MEMORY[0x2530AD570](v51);

        sub_252CC3D90(*&v104[0], *(&v104[0] + 1), 0xD000000000000092, v37 | 0x8000000000000000);
        a1 = v80;
      }

      (*v76)(v81, v77);
      if (!v79)
      {
        break;
      }

      --v79;
      v36 = (v78 + 16);
    }
  }

  v52 = v66;
  sub_252E375C4();
  sub_252E36A74();
  v53 = *(v67 + 8);
  v54 = v52;
  v55 = v77;
  v53(v54, v77);
  v53(v65, v55);
  return a1;
}