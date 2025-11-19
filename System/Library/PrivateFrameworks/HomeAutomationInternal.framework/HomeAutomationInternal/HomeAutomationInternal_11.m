unint64_t HomeStore.services(matching:supporting:)(unint64_t a1, void *a2)
{
  v2 = a2;
  v3 = a1;
  result = HomeStore.accessories(matching:supporting:)(a1, a2);
  if (v5)
  {
    return result;
  }

  v55 = result;
  v6 = sub_2529EE724(result);
  v7 = v6;
  v66 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
LABEL_103:
    v8 = sub_252E378C4();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v64 = v2;
  v10 = 0;
  while ((v7 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2530ADF00](v10, v7);
    v2 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      goto LABEL_15;
    }

LABEL_11:
    if (sub_252967B6C(v3))
    {
      sub_252E37A94();
      v12 = *(v66 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    else
    {
    }

    ++v10;
    if (v2 == v8)
    {
      goto LABEL_16;
    }
  }

  if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_96;
  }

  v11 = *(v7 + 8 * v10 + 32);

  v2 = (v10 + 1);
  if (!__OFADD__(v10, 1))
  {
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  v13 = v66;
  v2 = v64;
  v9 = MEMORY[0x277D84F90];
LABEL_18:

  if (!v2)
  {
    sub_252A00A2C(v55, 0, MEMORY[0x277D84FB8]);
    return v13;
  }

  v2 = v2;
  v7 = &off_279711000;
  if (![v2 attribute])
  {
    sub_252A00A2C(v55, 0, MEMORY[0x277D84FB8]);

    return v13;
  }

  v66 = v9;
  if (v13 < 0 || (v13 & 0x4000000000000000) != 0)
  {
    v14 = sub_252E378C4();
    if (v14)
    {
LABEL_23:
      v15 = 0;
      v16 = v13 & 0xC000000000000001;
      v61 = v13 + 32;
      v65 = *MEMORY[0x277CCF8D8];
      v63 = *MEMORY[0x277CCFA30];
      v17 = *MEMORY[0x277CCF788];
      v58 = v2;
      v59 = v13;
      v56 = v13 & 0xC000000000000001;
      v57 = v14;
      while (1)
      {
        if (v16)
        {
          v62 = MEMORY[0x2530ADF00](v15, v13);
          v18 = __OFADD__(v15++, 1);
          if (v18)
          {
            goto LABEL_101;
          }
        }

        else
        {
          if (v15 >= *(v13 + 16))
          {
            goto LABEL_102;
          }

          v62 = *(v61 + 8 * v15);

          v18 = __OFADD__(v15++, 1);
          if (v18)
          {
            goto LABEL_101;
          }
        }

        if ([v2 *(v7 + 1624)] == 5)
        {
          break;
        }

        v3 = v62;
        sub_252DE8C4C(v2, v62);
        if (v31)
        {

LABEL_83:
          sub_252E37A94();
          v3 = *(v66 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

LABEL_25:
        if (v15 == v14)
        {
          v54 = v66;
          goto LABEL_106;
        }
      }

      v60 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
      v3 = [*(v62 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) characteristics];
      sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
      v19 = sub_252E37264();

      if (v19 >> 62)
      {
        v20 = sub_252E378C4();
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v21 = 0;
      v2 = (v19 & 0xC000000000000001);
      while (1)
      {
        if (v20 == v21)
        {
          goto LABEL_80;
        }

        if (v2)
        {
          v22 = MEMORY[0x2530ADF00](v21, v19);
        }

        else
        {
          if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_95;
          }

          v22 = *(v19 + 8 * v21 + 32);
        }

        v7 = v22;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v23 = [(SEL *)v22 characteristicType];
        v24 = sub_252E36F34();
        v26 = v25;

        v27 = sub_252E36F34();
        v3 = v28;
        if (v24 == v27 && v26 == v28)
        {

LABEL_49:

          v32 = [*(v62 + v60) characteristics];
          v3 = sub_252E37264();

          if (v3 >> 62)
          {
            v33 = sub_252E378C4();
          }

          else
          {
            v33 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v34 = 0;
          v2 = (v3 & 0xC000000000000001);
          while (v33 != v34)
          {
            if (v2)
            {
              v35 = MEMORY[0x2530ADF00](v34, v3);
            }

            else
            {
              if (v34 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_98;
              }

              v35 = *(v3 + 8 * v34 + 32);
            }

            v7 = v35;
            if (__OFADD__(v34, 1))
            {
              goto LABEL_97;
            }

            v36 = [(SEL *)v35 characteristicType];
            v37 = sub_252E36F34();
            v39 = v38;

            if (v37 == sub_252E36F34() && v39 == v40)
            {

LABEL_65:

              v43 = [*(v62 + v60) characteristics];
              v3 = sub_252E37264();

              if (v3 >> 62)
              {
                v44 = sub_252E378C4();
              }

              else
              {
                v44 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v45 = 0;
              v2 = (v3 & 0xC000000000000001);
              while (v44 != v45)
              {
                if (v2)
                {
                  v46 = MEMORY[0x2530ADF00](v45, v3);
                }

                else
                {
                  if (v45 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_100;
                  }

                  v46 = *(v3 + 8 * v45 + 32);
                }

                v7 = v46;
                if (__OFADD__(v45, 1))
                {
                  goto LABEL_99;
                }

                v47 = [(SEL *)v46 characteristicType];
                v48 = sub_252E36F34();
                v50 = v49;

                if (v48 == sub_252E36F34() && v50 == v51)
                {

LABEL_82:

                  v2 = v58;
                  v13 = v59;
                  v7 = 0x279711000;
                  v16 = v56;
                  v14 = v57;
                  goto LABEL_83;
                }

                v53 = sub_252E37DB4();

                ++v45;
                if (v53)
                {
                  goto LABEL_82;
                }
              }

              break;
            }

            v42 = sub_252E37DB4();

            ++v34;
            if (v42)
            {
              goto LABEL_65;
            }
          }

LABEL_80:

          v2 = v58;
          v13 = v59;
          v7 = 0x279711000;
          v16 = v56;
          v14 = v57;
          goto LABEL_25;
        }

        v30 = sub_252E37DB4();

        ++v21;
        if (v30)
        {
          goto LABEL_49;
        }
      }

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
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }
  }

  else
  {
    v14 = *(v13 + 16);
    if (v14)
    {
      goto LABEL_23;
    }
  }

  v54 = MEMORY[0x277D84F90];
LABEL_106:

  sub_252A00A2C(v55, 0, MEMORY[0x277D84FB8]);

  return v54;
}

uint64_t sub_2529F1BFC()
{
  v0 = sub_2529D8DC0();
  v1 = v0;
  if (v0 >> 62)
  {
LABEL_15:
    v2 = sub_252E378C4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x2530ADF00](v3, v1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            return v4;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v4 = *(v1 + 8 * v3 + 32);

          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        if ([*(v4 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) isPrimary])
        {
          goto LABEL_13;
        }

        ++v3;
      }

      while (v5 != v2);
    }
  }

  return 0;
}

unint64_t sub_2529F1D14(void *a1)
{
  v50 = sub_252E32E84();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v50);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2529F3704(a1);
  v7 = sub_2529EEA84(v6);

  v51 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_39;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = 0;
    v48 = v7 & 0xFFFFFFFFFFFFFF8;
    v49 = v7 & 0xC000000000000001;
    v44 = a1;
    v45 = (v2 + 32);
    v46 = v8;
    v47 = v7;
    do
    {
      if (v49)
      {
        v11 = MEMORY[0x2530ADF00](v10, v7);
      }

      else
      {
        if (v10 >= *(v48 + 16))
        {
          goto LABEL_37;
        }

        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_36;
      }

      v14 = type metadata accessor for Group();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      v2 = swift_allocObject();
      *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal5Group_delegate) = v12;
      v17 = v12;
      v18 = [v17 uniqueIdentifier];
      v19 = v5;
      sub_252E32E64();

      v20 = [v17 name];
      v21 = sub_252E36F34();
      v23 = v22;

      v24 = [v17 assistantIdentifier];
      if (v24)
      {
        v25 = v24;
        v26 = sub_252E36F34();
        a1 = v27;
      }

      else
      {

        v26 = 0;
        a1 = 0;
      }

      v5 = v19;
      v28 = (*v45)(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v19, v50);
      v29 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      *v29 = v21;
      v29[1] = v23;
      *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 4;
      v30 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v30 = v26;
      v30[1] = a1;
      MEMORY[0x2530AD700](v28);
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v10;
      v7 = v47;
    }

    while (v13 != v46);
    v2 = v51;
    a1 = v44;
    v9 = MEMORY[0x277D84F90];
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v32 = [a1 groupName];
  if (v32)
  {
    v7 = v32;
    v33 = sub_252E36F34();
    v35 = v34;

    v51 = v9;
    if (v2 >> 62)
    {
      v36 = sub_252E378C4();
      if (v36)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v36 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v36)
      {
LABEL_21:
        v5 = 0;
        v50 = v2 & 0xC000000000000001;
        v37 = v2 & 0xFFFFFFFFFFFFFF8;
        do
        {
          if (v50)
          {
            v40 = MEMORY[0x2530ADF00](v5, v2);
            a1 = (v5 + 1);
            if (__OFADD__(v5, 1))
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (v5 >= *(v37 + 16))
            {
              goto LABEL_38;
            }

            v40 = *(v2 + 8 * v5 + 32);

            a1 = (v5 + 1);
            if (__OFADD__(v5, 1))
            {
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              v8 = sub_252E378C4();
              goto LABEL_3;
            }
          }

          v41 = *(v40 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v33 && *(v40 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v35;
          if (v41 || (sub_252E37DB4() & 1) != 0)
          {
            v7 = &v51;
            sub_252E37A94();
            v38 = v2;
            v39 = *(v51 + 16);
            sub_252E37AC4();
            v2 = v38;
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          ++v5;
        }

        while (a1 != v36);
      }
    }

    return v51;
  }

  return v2;
}

uint64_t sub_2529F219C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded);
  if (v1 == 2 || (v1 & 1) == 0)
  {
LABEL_15:
    sub_2529318DC();
    v6 = swift_allocError();
    *v8 = 12;
  }

  else
  {
    v2 = sub_2529D9D50();
    v3 = v2;
    if (v2 >> 62)
    {
      goto LABEL_19;
    }

    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      while (1)
      {
        v5 = 0;
        while ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2530ADF00](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_9:
          if ([*(v6 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) isCurrentAccessory])
          {

            return v6;
          }

          ++v5;
          if (v7 == v4)
          {
            goto LABEL_20;
          }
        }

        if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_19:
        v4 = sub_252E378C4();
        if (!v4)
        {
          goto LABEL_20;
        }
      }

      v6 = *(v3 + 8 * v5 + 32);

      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

LABEL_20:

    return 0;
  }

  return v6;
}

uint64_t sub_2529F2320(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_252DA6CD0(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2529F2424(uint64_t result, uint64_t a2)
{
  v2 = result;
  v16 = a2;
  if ((result & 0xC000000000000001) != 0)
  {
    sub_252E37874();
    type metadata accessor for Service();
    sub_2529FEBDC(&qword_27F541EB0, type metadata accessor for Service);
    result = sub_252E373E4();
    v2 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(result + 32);
    v3 = result + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(result + 56);
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
LABEL_18:
      sub_25291AE30();
      return v16;
    }

    while (1)
    {
      sub_252DA7208(&v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_252E37904())
      {
        type metadata accessor for Service();
        swift_dynamicCast();
        v14 = v15;
        v12 = v5;
        v13 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2529F261C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_252DA7E00(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2529F2710(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t *, void))
{
  v4 = result;
  v5 = 0;
  v14 = a2;
  v6 = result + 56;
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(result + 56);
  for (i = (v7 + 63) >> 6; v9; result = a3(&v13, *(*(v4 + 48) + ((v11 << 9) | (8 * v12)))))
  {
    v11 = v5;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= i)
    {

      return v14;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2529F2818(void *a1)
{
  v149 = sub_252E32E84();
  v2 = *(v149 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v149);
  v6 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v144 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v144 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v144 - v13;
  v15 = [a1 roomName];
  if (!v15)
  {
    v147 = v6;
    v148 = v9;
    v33 = [a1 zoneName];
    if (v33)
    {

      v34 = sub_2529F55F8(a1);
      v35 = sub_25291BCB0(v34);

      v150 = MEMORY[0x277D84F90];
      if (v35 >> 62)
      {
        v36 = sub_252E378C4();
        v14 = v148;
        if (v36)
        {
LABEL_24:
          v37 = 0;
          v146 = v35 & 0xFFFFFFFFFFFFFF8;
          v147 = v35 & 0xC000000000000001;
          v144 = (v2 + 32);
          v145 = v35;
          do
          {
            if (v147)
            {
              v38 = MEMORY[0x2530ADF00](v37, v35);
            }

            else
            {
              if (v37 >= *(v146 + 16))
              {
                goto LABEL_116;
              }

              v38 = *(v35 + 8 * v37 + 32);
            }

            v39 = v38;
            v40 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              goto LABEL_114;
            }

            v41 = type metadata accessor for Room();
            v42 = *(v41 + 48);
            v43 = *(v41 + 52);
            v2 = swift_allocObject();
            *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v39;
            v44 = v39;
            v45 = [v44 uniqueIdentifier];
            sub_252E32E64();

            v46 = [v44 name];
            v47 = sub_252E36F34();
            v49 = v48;

            v50 = [v44 assistantIdentifier];
            if (v50)
            {
              v51 = v50;
              v52 = sub_252E36F34();
              v54 = v53;
            }

            else
            {

              v52 = 0;
              v54 = 0;
            }

            v14 = v148;
            v55 = (*v144)(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v148, v149);
            v56 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
            *v56 = v47;
            v56[1] = v49;
            *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
            v57 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
            *v57 = v52;
            v57[1] = v54;
            MEMORY[0x2530AD700](v55);
            if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v58 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_252E372A4();
            }

            sub_252E372D4();
            ++v37;
            v35 = v145;
          }

          while (v40 != v36);
LABEL_90:
          v22 = v150;
LABEL_132:

          return v22;
        }
      }

      else
      {
        v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = v148;
        if (v36)
        {
          goto LABEL_24;
        }
      }

LABEL_131:
      v22 = MEMORY[0x277D84F90];
      goto LABEL_132;
    }

    v95 = sub_2529F3704(a1);
    v96 = sub_2529EF1BC(v95);

    v150 = MEMORY[0x277D84F90];
    if (v96 >> 62)
    {
      v97 = sub_252E378C4();
      v14 = v147;
      if (!v97)
      {
        goto LABEL_131;
      }
    }

    else
    {
      v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v147;
      if (!v97)
      {
        goto LABEL_131;
      }
    }

    v98 = 0;
    v148 = v96 & 0xC000000000000001;
    v145 = v96;
    v146 = v96 & 0xFFFFFFFFFFFFFF8;
    v144 = (v2 + 32);
    do
    {
      if (v148)
      {
        v99 = MEMORY[0x2530ADF00](v98, v96);
      }

      else
      {
        if (v98 >= *(v146 + 16))
        {
          goto LABEL_121;
        }

        v99 = *(v96 + 8 * v98 + 32);
      }

      v100 = v99;
      v101 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        goto LABEL_120;
      }

      v102 = type metadata accessor for Room();
      v103 = *(v102 + 48);
      v104 = *(v102 + 52);
      v2 = swift_allocObject();
      *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v100;
      v105 = v100;
      v106 = [v105 uniqueIdentifier];
      sub_252E32E64();

      v107 = [v105 name];
      v108 = sub_252E36F34();
      v110 = v109;

      v111 = [v105 assistantIdentifier];
      if (v111)
      {
        v112 = v111;
        v113 = sub_252E36F34();
        v115 = v114;
      }

      else
      {

        v113 = 0;
        v115 = 0;
      }

      v14 = v147;
      v116 = (*v144)(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v147, v149);
      v117 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      *v117 = v108;
      v117[1] = v110;
      *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
      v118 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v118 = v113;
      v118[1] = v115;
      MEMORY[0x2530AD700](v116);
      if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v119 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v98;
      v96 = v145;
    }

    while (v101 != v97);
    goto LABEL_90;
  }

  v16 = v15;
  v17 = sub_252E36F34();
  v147 = v18;
  v148 = v17;

  v19 = [a1 zoneName];
  if (v19)
  {
    v146 = v14;

    v20 = sub_2529F55F8(a1);
    v14 = sub_25291BCB0(v20);

    v150 = MEMORY[0x277D84F90];
    if (v14 >> 62)
    {
      goto LABEL_122;
    }

    v21 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v22 = MEMORY[0x277D84F90];
    if (!v21)
    {
      v148 = MEMORY[0x277D84F90];
LABEL_58:

      v150 = v22;
      if ((v148 & 0x8000000000000000) != 0 || (v148 & 0x4000000000000000) != 0)
      {
        v72 = sub_252E378C4();
        v14 = v146;
        if (!v72)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v72 = *(v148 + 16);
        v14 = v146;
        if (!v72)
        {
          goto LABEL_109;
        }
      }

      v73 = 0;
      v147 = v148 & 0xC000000000000001;
      v145 = (v2 + 32);
      while (1)
      {
        if (v147)
        {
          v74 = MEMORY[0x2530ADF00](v73, v148);
        }

        else
        {
          if (v73 >= *(v148 + 16))
          {
            goto LABEL_113;
          }

          v74 = *(v148 + 8 * v73 + 32);
        }

        v75 = v74;
        v76 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          goto LABEL_112;
        }

        v77 = type metadata accessor for Room();
        v78 = *(v77 + 48);
        v79 = *(v77 + 52);
        v2 = swift_allocObject();
        *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v75;
        v80 = v75;
        v81 = [v80 uniqueIdentifier];
        sub_252E32E64();

        v82 = [v80 name];
        v83 = sub_252E36F34();
        v85 = v84;

        v86 = [v80 assistantIdentifier];
        if (v86)
        {
          v87 = v86;
          v88 = sub_252E36F34();
          v90 = v89;
        }

        else
        {

          v88 = 0;
          v90 = 0;
        }

        v14 = v146;
        v91 = (*v145)(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v146, v149);
        v92 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        *v92 = v83;
        v92[1] = v85;
        *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
        v93 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v93 = v88;
        v93[1] = v90;
        MEMORY[0x2530AD700](v91);
        if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v94 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v73;
        if (v76 == v72)
        {
          goto LABEL_108;
        }
      }
    }

    v145 = v2;
    v23 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x2530ADF00](v23, v14);
      }

      else
      {
        if (v23 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_111;
        }

        v25 = *(v14 + 8 * v23 + 32);
      }

      v26 = v25;
      v27 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
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
        v21 = sub_252E378C4();
        goto LABEL_5;
      }

      v28 = [v25 name];
      v2 = sub_252E36F34();
      v30 = v29;

      if (v2 == v148 && v30 == v147)
      {
      }

      else
      {
        v32 = sub_252E37DB4();

        if ((v32 & 1) == 0)
        {

          goto LABEL_9;
        }
      }

      sub_252E37A94();
      v24 = *(v150 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
LABEL_9:
      ++v23;
      if (v27 == v21)
      {
        v148 = v150;
        v2 = v145;
        v22 = MEMORY[0x277D84F90];
        goto LABEL_58;
      }
    }
  }

  v59 = sub_2529F3704(a1);
  v60 = sub_2529EF1BC(v59);

  v150 = MEMORY[0x277D84F90];
  if (v60 >> 62)
  {
    v61 = sub_252E378C4();
  }

  else
  {
    v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = MEMORY[0x277D84F90];
  if (!v61)
  {
    v148 = MEMORY[0x277D84F90];
    goto LABEL_92;
  }

  v145 = v2;
  v146 = v12;
  v62 = 0;
  v14 = v60 & 0xC000000000000001;
  do
  {
    if (v14)
    {
      v63 = MEMORY[0x2530ADF00](v62, v60);
    }

    else
    {
      if (v62 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_117;
      }

      v63 = *(v60 + 8 * v62 + 32);
    }

    v64 = v63;
    v65 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      goto LABEL_115;
    }

    v66 = [v63 name];
    v2 = sub_252E36F34();
    v68 = v67;

    if (v2 == v148 && v68 == v147)
    {
    }

    else
    {
      v70 = sub_252E37DB4();

      if ((v70 & 1) == 0)
      {

        goto LABEL_43;
      }
    }

    sub_252E37A94();
    v71 = *(v150 + 16);
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
LABEL_43:
    ++v62;
  }

  while (v65 != v61);
  v148 = v150;
  v2 = v145;
  v12 = v146;
  v22 = MEMORY[0x277D84F90];
LABEL_92:

  v150 = v22;
  if ((v148 & 0x8000000000000000) != 0 || (v148 & 0x4000000000000000) != 0)
  {
    v120 = sub_252E378C4();
    if (v120)
    {
      goto LABEL_95;
    }
  }

  else
  {
    v120 = *(v148 + 16);
    if (v120)
    {
LABEL_95:
      v121 = 0;
      v146 = v120;
      v147 = v148 & 0xC000000000000001;
      v145 = (v2 + 32);
      do
      {
        if (v147)
        {
          v122 = MEMORY[0x2530ADF00](v121, v148);
        }

        else
        {
          if (v121 >= *(v148 + 16))
          {
            goto LABEL_119;
          }

          v122 = *(v148 + 8 * v121 + 32);
        }

        v123 = v122;
        v124 = v121 + 1;
        if (__OFADD__(v121, 1))
        {
          goto LABEL_118;
        }

        v125 = type metadata accessor for Room();
        v126 = *(v125 + 48);
        v127 = *(v125 + 52);
        v2 = swift_allocObject();
        *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v123;
        v128 = v123;
        v129 = [v128 uniqueIdentifier];
        v14 = v12;
        sub_252E32E64();

        v130 = [v128 name];
        v131 = sub_252E36F34();
        v133 = v132;

        v134 = [v128 assistantIdentifier];
        if (v134)
        {
          v135 = v134;
          v136 = sub_252E36F34();
          v138 = v137;
        }

        else
        {

          v136 = 0;
          v138 = 0;
        }

        v12 = v14;
        v139 = (*v145)(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v14, v149);
        v140 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        *v140 = v131;
        v140[1] = v133;
        *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
        v141 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v141 = v136;
        v141[1] = v138;
        MEMORY[0x2530AD700](v139);
        if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v142 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v121;
      }

      while (v124 != v146);
LABEL_108:
      v22 = v150;
    }
  }

LABEL_109:

  return v22;
}

uint64_t sub_2529F35DC(id a1, uint64_t (*a2)(uint64_t, id))
{
  v5 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded);
  if (v5 == 2 || (v5 & 1) != 0)
  {
    v6 = [a1 filters];
    if (v6)
    {
      v7 = v6;
      type metadata accessor for HomeFilter();
      v8 = sub_252E37264();

      v9 = [a1 userTask];
      v10 = a2(v8, v9);

      return v10;
    }

    else
    {
      sub_2529318DC();
      result = swift_allocError();
      *v12 = 1;
    }
  }

  else
  {
    sub_2529318DC();
    result = swift_allocError();
    *v13 = 12;
  }

  return result;
}

uint64_t sub_2529F3704(void *a1)
{
  v1 = [a1 homeName];
  if (v1)
  {
    v2 = v1;
    v3 = sub_252E36F34();
    v5 = v4;

    v6 = sub_2529D8DC0();
    v7 = v6;
    v16 = MEMORY[0x277D84F90];
    if (v6 >> 62)
    {
      goto LABEL_24;
    }

    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      while (1)
      {
        v9 = 0;
        while ((v7 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x2530ADF00](v9, v7);
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            v14 = v16;
            goto LABEL_26;
          }

LABEL_10:
          v13 = *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v3 && *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v5;
          if (v13 || (sub_252E37DB4() & 1) != 0)
          {
            sub_252E37A94();
            v10 = *(v16 + 16);
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          ++v9;
          if (v12 == v8)
          {
            goto LABEL_19;
          }
        }

        if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_24:
        v8 = sub_252E378C4();
        if (!v8)
        {
          goto LABEL_25;
        }
      }

      v11 = *(v7 + 8 * v9 + 32);

      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

LABEL_25:
    v14 = MEMORY[0x277D84F90];
LABEL_26:

    return v14;
  }

  else
  {

    return sub_2529D8DC0();
  }
}

uint64_t sub_2529F38E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v8 = (v4 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cacheRequiresInvalidation);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  [v10 lock];
  [v10 unlock];

  if (v9 == 1)
  {
    v37 = a1;
    if (qword_2814B0A98 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_2814B0AA0);
    sub_252CC3D90(0xD000000000000043, 0x8000000252E71430, 0xD00000000000007FLL, 0x8000000252E70FD0);
    v12 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_cachedResultsLock);
    os_unfair_lock_lock(v12 + 4);
    v13 = sub_252CC4788(MEMORY[0x277D84F90]);
    v14 = (v5 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cachedResults);
    swift_beginAccess();
    v15 = v14[1];
    [v15 lock];
    v16 = *v14;
    *v14 = v13;

    [v15 unlock];
    swift_endAccess();
    os_unfair_lock_unlock(v12 + 4);
    swift_beginAccess();
    v17 = v8[1];
    [v17 lock];
    *v8 = 0;
    [v17 unlock];
    swift_endAccess();
    a1 = v37;
  }

  v18 = 7104878;
  type metadata accessor for HomeFilter();
  sub_2529FEBDC(&qword_27F541888, type metadata accessor for HomeFilter);
  sub_252E37314();
  v19 = sub_252E37D94();
  v21 = v20;

  MEMORY[0x2530AD570](v19, v21);

  MEMORY[0x2530AD570](45, 0xE100000000000000);

  v22 = a1;
  if (a4)
  {
    v23 = [a4 taskType];
    v24 = 0xE700000000000000;
    v25 = 0x6E776F6E6B6E75;
    v26 = 0xE300000000000000;
    v27 = 7628135;
    v28 = 0xE900000000000074;
    v29 = 0x6567726154746567;
    v30 = 0xE600000000000000;
    v31 = 0x656C67676F74;
    if (v23 != 6)
    {
      v31 = 0x6E776F6E6B6E75;
      v30 = 0xE700000000000000;
    }

    if (v23 != 5)
    {
      v29 = v31;
      v28 = v30;
    }

    if (v23 != 4)
    {
      v27 = v29;
      v26 = v28;
    }

    if (v23 == 3)
    {
      v25 = 0x6573616572636564;
      v24 = 0xE800000000000000;
    }

    if (v23 == 2)
    {
      v25 = 0x6573616572636E69;
      v24 = 0xE800000000000000;
    }

    if (v23 == 1)
    {
      v25 = 7628147;
      v24 = 0xE300000000000000;
    }

    if (v23 <= 3)
    {
      v32 = v25;
    }

    else
    {
      v32 = v27;
    }

    if (v23 <= 3)
    {
      v33 = v24;
    }

    else
    {
      v33 = v26;
    }
  }

  else
  {
    v33 = 0xE300000000000000;
    v32 = 7104878;
  }

  MEMORY[0x2530AD570](v32, v33);

  if (a4)
  {
    v18 = HomeAttributeType.description.getter([a4 attribute]);
    v35 = v34;
  }

  else
  {
    v35 = 0xE300000000000000;
  }

  MEMORY[0x2530AD570](v18, v35);

  return v22;
}

uint64_t sub_2529F3D2C(unint64_t a1)
{
  v39 = a1;
  v2 = sub_252E36AB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded);
  if (v7 == 2 || (v7 & 1) != 0)
  {
    if (qword_27F53F5B8 != -1)
    {
      swift_once();
    }

    v8 = qword_27F544F40;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    v9 = sub_2529F38E8(7630437, 0xE300000000000000, v39, 0);
    v11 = v10;
    v12 = sub_2529D8CA8(v9, v10);
    if (v12)
    {
      v13 = v12;
      if (v12 >> 62)
      {
        if (sub_252E378C4())
        {
          goto LABEL_8;
        }
      }

      else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_8:
        if (qword_27F53F4C0 != -1)
        {
          swift_once();
        }

        v14 = sub_252E36AD4();
        __swift_project_value_buffer(v14, qword_27F544CE8);
        *&v66[0] = 0;
        *(&v66[0] + 1) = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000027, 0x8000000252E712B0);
        MEMORY[0x2530AD570](v9, v11);

        MEMORY[0x2530AD570](0x6163206D6F726620, 0xEB00000000656863);
        sub_252CC3D90(*&v66[0], *(&v66[0] + 1), 0xD00000000000007FLL, 0x8000000252E70FD0);

        v15 = 1;
LABEL_33:
        v54 = 1;
        v53 = 1;
        v52 = 1;
        v51 = 1;
        *&v55 = 0;
        BYTE8(v55) = 1;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        LOBYTE(v61) = 1;
        v62 = 0uLL;
        *(&v61 + 1) = 0;
        LOBYTE(v63) = 1;
        BYTE1(v63) = v15;
        *(&v63 + 1) = 0;
        v64 = 0uLL;
        v65 = 1;
        GEOLocationCoordinate2DMake(&v55);
        v48 = v63;
        v49 = v64;
        v50 = v65;
        v44 = v59;
        v45 = v60;
        v46 = v61;
        v47 = v62;
        v40 = v55;
        v41 = v56;
        v42 = v57;
        v43 = v58;
        _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v8, v6, "GetEntitiesForIntent", 20, 2, &v40);
        v66[8] = v48;
        v66[9] = v49;
        v67 = v50;
        v66[4] = v44;
        v66[5] = v45;
        v66[6] = v46;
        v66[7] = v47;
        v66[0] = v40;
        v66[1] = v41;
        v66[2] = v42;
        v66[3] = v43;
        sub_25293847C(v66, &qword_27F5407B0, &unk_252E42860);
        (*(v3 + 8))(v6, v2);
        return v13;
      }
    }

    v32 = v1;
    v33 = v9;
    v17 = sub_2529DA8E4();
    v18 = v17;
    *&v66[0] = MEMORY[0x277D84F90];
    if (v17 >> 62)
    {
      goto LABEL_36;
    }

    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:
    v34 = v11;
    v35 = v8;
    v36 = v6;
    v37 = v3;
    v38 = v2;
    if (v19)
    {
      v11 = 0;
      v3 = v18 & 0xC000000000000001;
      v8 = (v18 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v3)
        {
          v6 = MEMORY[0x2530ADF00](v11, v18);
          v20 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_27:
            __break(1u);
LABEL_28:
            v13 = *&v66[0];
            goto LABEL_30;
          }
        }

        else
        {
          if (v11 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_36:
            v19 = sub_252E378C4();
            goto LABEL_16;
          }

          v6 = *(v18 + 8 * v11 + 32);

          v20 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_27;
          }
        }

        if (sub_252967B6C(v39))
        {
          sub_252E37A94();
          v2 = *(*&v66[0] + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        ++v11;
        if (v20 == v19)
        {
          goto LABEL_28;
        }
      }
    }

    v13 = MEMORY[0x277D84F90];
LABEL_30:

    v21 = v32;
    v22 = *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_cachedResultsLock);
    os_unfair_lock_lock(v22 + 4);
    v23 = (v21 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cachedResults);
    swift_beginAccess();
    v25 = *v23;
    v24 = v23[1];
    v26 = v34;

    [v24 lock];

    [v24 unlock];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v55 = v25;
    v28 = v33;
    sub_2529FB7E0(v13, v33, v26, isUniquelyReferenced_nonNull_native, sub_252E032C4, sub_252DFE810, sub_252E11364);

    v29 = v55;
    [v24 lock];
    *v23 = v29;

    [v24 unlock];
    swift_endAccess();
    os_unfair_lock_unlock(v22 + 4);
    if (qword_27F53F4C0 != -1)
    {
      swift_once();
    }

    v30 = sub_252E36AD4();
    __swift_project_value_buffer(v30, qword_27F544CE8);
    *&v66[0] = 0;
    *(&v66[0] + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000036, 0x8000000252E71270);
    MEMORY[0x2530AD570](v28, v26);

    sub_252CC3D90(*&v66[0], *(&v66[0] + 1), 0xD00000000000007FLL, 0x8000000252E70FD0);

    v15 = 0;
    v3 = v37;
    v2 = v38;
    v8 = v35;
    v6 = v36;
    goto LABEL_33;
  }

  sub_2529318DC();
  v13 = swift_allocError();
  *v16 = 12;
  return v13;
}

uint64_t sub_2529F442C(unint64_t a1, unint64_t a2)
{
  v3 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_58:
    v49 = a2;
    v50 = sub_252E378C4();
    a2 = v49;
    v4 = v50;
    if (v50 < 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 < 2)
    {
      return 0;
    }
  }

  v52 = v3;
  v51 = a2;
  v53 = MEMORY[0x277D84F90];
  sub_2529AA3A0(0, v4, 0);
  v5 = v53;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = 0;
    do
    {
      v7 = MEMORY[0x2530ADF00](v6, a1);
      v8 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v9 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      swift_unknownObjectRelease();
      v53 = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2529AA3A0((v10 > 1), v11 + 1, 1);
        v5 = v53;
      }

      ++v6;
      *(v5 + 16) = v11 + 1;
      v12 = v5 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
    }

    while (v4 != v6);
  }

  else
  {
    v13 = (a1 + 32);
    do
    {
      v14 = (*v13 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v15 = *v14;
      v16 = v14[1];
      v53 = v5;
      v18 = *(v5 + 16);
      v17 = *(v5 + 24);

      if (v18 >= v17 >> 1)
      {
        sub_2529AA3A0((v17 > 1), v18 + 1, 1);
        v5 = v53;
      }

      *(v5 + 16) = v18 + 1;
      v19 = v5 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      ++v13;
      --v4;
    }

    while (v4);
  }

  v20 = sub_252C75848(v5);

  v21 = *(v20 + 16);

  if (v21 != 1)
  {
    return 0;
  }

  v22 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v22 + 16), &v53);

  __swift_project_boxed_opaque_existential_1(&v53, v55);
  v23 = sub_2529796B4();
  __swift_destroy_boxed_opaque_existential_1(&v53);
  v24 = a1 & 0xC000000000000001;
  if ((v23 & 1) == 0 || (v25 = sub_2529F744C(v51)) == 0)
  {
LABEL_33:
    type metadata accessor for HomeStore();
    v35 = static HomeStore.shared.getter();
    v3 = sub_2529D9114();

    if (v3)
    {
      if (v52)
      {
        v36 = sub_252E378C4();
        if (!v36)
        {
LABEL_48:

          return 0;
        }
      }

      else
      {
        v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v36)
        {
          goto LABEL_48;
        }
      }

      v37 = 0;
      while (1)
      {
        if (v24)
        {
          v26 = MEMORY[0x2530ADF00](v37, a1);
          v38 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }

        else
        {
          if (v37 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_58;
          }

          v26 = *(a1 + 8 * v37 + 32);

          v38 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_47;
          }
        }

        if (sub_252E32E54())
        {
          break;
        }

        ++v37;
        if (v38 == v36)
        {
          goto LABEL_48;
        }
      }

      if (qword_27F53F4C0 != -1)
      {
        goto LABEL_61;
      }

      goto LABEL_52;
    }

    return 0;
  }

  v26 = v25;
  v27 = [*&v25[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate] home];
  if (!v27)
  {
    goto LABEL_32;
  }

  v28 = v27;
  v29 = type metadata accessor for Home();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_2529E65BC(v28);

  v32 = v52 ? sub_252E378C4() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
LABEL_32:

    goto LABEL_33;
  }

  v33 = 0;
  while (v24)
  {
    v26 = MEMORY[0x2530ADF00](v33, a1);
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_26:
    if (sub_252E32E54())
    {
      if (qword_27F53F4C0 != -1)
      {
        swift_once();
      }

      v46 = sub_252E36AD4();
      __swift_project_value_buffer(v46, qword_27F544CE8);
      v53 = 0;
      v54 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000003BLL, 0x8000000252E714E0);
      v47 = MEMORY[0x2530AD730](a1, v29);
      MEMORY[0x2530AD570](v47);

      MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E714C0);
      v48 = sub_2529E8734();
      MEMORY[0x2530AD570](v48);

      v44 = v53;
      v45 = v54;
      goto LABEL_56;
    }

    ++v33;
    v24 = a1 & 0xC000000000000001;
    if (v34 == v32)
    {
      goto LABEL_32;
    }
  }

  if (v33 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(a1 + 8 * v33 + 32);

    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  __break(1u);
LABEL_61:
  swift_once();
LABEL_52:
  v40 = sub_252E36AD4();
  __swift_project_value_buffer(v40, qword_27F544CE8);
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E71480);
  v41 = type metadata accessor for Home();
  v42 = MEMORY[0x2530AD730](a1, v41);
  MEMORY[0x2530AD570](v42);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E714C0);
  v43 = sub_2529E8734();
  MEMORY[0x2530AD570](v43);

  v44 = v53;
  v45 = v54;
LABEL_56:
  sub_252CC3D90(v44, v45, 0xD00000000000007FLL, 0x8000000252E70FD0);

  return v26;
}

uint64_t HomeStore.accessories(with:in:)(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v3 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded);
  if (v3 != 2 && (v3 & 1) == 0)
  {
    sub_2529318DC();
    v7 = swift_allocError();
    *v19 = 12;
    return v7;
  }

  if (a2)
  {
    v4 = sub_2529E7424();
  }

  else
  {
    v5 = sub_2529D8DC0();
    v4 = sub_2529EE3C8(v5);
  }

  v25 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_42;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = 0;
    v22 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v22)
      {
        MEMORY[0x2530ADF00](v8, v4);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v14 = v25;
          v7 = MEMORY[0x277D84F90];
          goto LABEL_22;
        }
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          v6 = sub_252E378C4();
          goto LABEL_8;
        }

        v9 = *(v4 + 8 * v8 + 32);

        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_19;
        }
      }

      v24[0] = sub_252E32E24();
      v24[1] = v11;
      MEMORY[0x28223BE20](v24[0]);
      v21[2] = v24;
      v12 = sub_2529ED970(sub_252A00B98, v21, v23);

      if (v12)
      {
        sub_252E37A94();
        v13 = *(v25 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v8;
      if (v10 == v6)
      {
        goto LABEL_20;
      }
    }
  }

  v14 = MEMORY[0x277D84F90];
LABEL_22:

  v24[0] = v7;
  if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
  {
    v15 = sub_252E378C4();
    if (v15)
    {
LABEL_25:
      v4 = 0;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v4, v14);
          v17 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_40;
          }
        }

        else
        {
          if (v4 >= *(v14 + 16))
          {
            goto LABEL_41;
          }

          v16 = *(v14 + 8 * v4 + 32);

          v17 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_40;
          }
        }

        MEMORY[0x2530AD700]();
        if (*((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v18 = *((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v4;
      }

      while (v17 != v15);
      v7 = v24[0];
    }
  }

  else
  {
    v15 = *(v14 + 16);
    if (v15)
    {
      goto LABEL_25;
    }
  }

  return v7;
}

unint64_t HomeStore.getServices(matching:supporting:)(unint64_t a1, void *a2)
{
  if (MEMORY[0x277D84F90] >> 62 && sub_252E378C4())
  {
    v3 = sub_2529FF6BC(MEMORY[0x277D84F90], &qword_27F541860, &qword_252E40AF0);
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
  }

  result = HomeStore.accessories(matching:supporting:)(a1, a2);
  v5 = result;
  if (v6)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544CB8);
    sub_252E379F4();
    MEMORY[0x2530AD570](32, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E711C0);
    v8 = type metadata accessor for HomeFilter();
    v9 = MEMORY[0x2530AD730](a1, v8);
    MEMORY[0x2530AD570](v9);

    MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E711F0);
    v10 = HomeAttributeType.description.getter([a2 attribute]);
    MEMORY[0x2530AD570](v10);

    MEMORY[0x2530AD570](46, 0xE100000000000000);
    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007FLL, 0x8000000252E70FD0, 0xD000000000000021, 0x8000000252E71210, 212);

    v11 = 1;
    goto LABEL_19;
  }

  if (!(result >> 62))
  {
    v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_9;
    }

LABEL_18:
    v11 = 0;
LABEL_19:
    sub_252A00A2C(v5, v11, MEMORY[0x277D84FB8]);
    return v3;
  }

  result = sub_252E378C4();
  v12 = result;
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_9:
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = v5 & 0xC000000000000001;
    v15 = v5;
    do
    {
      if (v14)
      {
        MEMORY[0x2530ADF00](v13, v5);
      }

      else
      {
        v22 = *(v5 + 8 * v13 + 32);
      }

      ++v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540228, &unk_252E3D910);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C290;
      *(inited + 32) = [a2 attribute];
      v17 = sub_252D51310(a1);
      v18 = sub_252C75958(v17);

      v19 = sub_252D51460(inited);
      swift_setDeallocating();
      v20 = sub_252C75958(v19);

      v21 = sub_2529F9A94(v20, v18);

      v3 = sub_2529F2424(v21, v3);

      v5 = v15;
    }

    while (v12 != v13);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

unint64_t HomeStore.getAccessories(matching:supporting:)(unint64_t a1, void *a2)
{
  if (MEMORY[0x277D84F90] >> 62 && sub_252E378C4())
  {
    v4 = sub_2529FF6BC(MEMORY[0x277D84F90], &qword_27F541858, &qword_252E40AE8);
  }

  else
  {
    v4 = MEMORY[0x277D84FA0];
  }

  v5 = HomeStore.accessories(matching:supporting:)(a1, a2);
  if (v6)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544CB8);
    sub_252E379F4();
    MEMORY[0x2530AD570](32, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E711C0);
    v8 = type metadata accessor for HomeFilter();
    v9 = MEMORY[0x2530AD730](a1, v8);
    MEMORY[0x2530AD570](v9);

    MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E711F0);
    v10 = HomeAttributeType.description.getter([a2 attribute]);
    MEMORY[0x2530AD570](v10);

    MEMORY[0x2530AD570](46, 0xE100000000000000);
    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007FLL, 0x8000000252E70FD0, 0xD000000000000024, 0x8000000252E71240, 230);

    v11 = 1;
  }

  else
  {

    v4 = sub_252C759D4(v5);
    v11 = 0;
  }

  sub_252A00A2C(v5, v11, MEMORY[0x277D84FB8]);
  return v4;
}

uint64_t sub_2529F53FC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded);
  if (v3 == 2 || (v3 & 1) == 0)
  {
LABEL_25:
    sub_2529318DC();
    v10 = swift_allocError();
    *v17 = 12;
  }

  else
  {
    v6 = sub_2529DA828();
    v7 = v6;
    if (v6 >> 62)
    {
      goto LABEL_31;
    }

    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      while (1)
      {
        v9 = 0;
        while ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x2530ADF00](v9, v7);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

LABEL_10:
          if (sub_252E32E24() == a1 && v12 == a2)
          {

LABEL_29:

            return v10;
          }

          v14 = sub_252E37DB4();

          if (v14)
          {
            goto LABEL_29;
          }

          v15 = *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
          if (v15)
          {
            v16 = *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == a1 && v15 == a2;
            if (v16 || (sub_252E37DB4() & 1) != 0)
            {
              goto LABEL_29;
            }
          }

          ++v9;
          if (v11 == v8)
          {
            goto LABEL_32;
          }
        }

        if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_31:
        v8 = sub_252E378C4();
        if (!v8)
        {
          goto LABEL_32;
        }
      }

      v10 = *(v7 + 8 * v9 + 32);

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

LABEL_32:

    return 0;
  }

  return v10;
}

unint64_t sub_2529F55F8(void *a1)
{
  v50 = sub_252E32E84();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v50);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2529F3704(a1);
  v7 = sub_2529EEE20(v6);

  v51 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_39;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = 0;
    v48 = v7 & 0xFFFFFFFFFFFFFF8;
    v49 = v7 & 0xC000000000000001;
    v44 = a1;
    v45 = (v2 + 32);
    v46 = v8;
    v47 = v7;
    do
    {
      if (v49)
      {
        v11 = MEMORY[0x2530ADF00](v10, v7);
      }

      else
      {
        if (v10 >= *(v48 + 16))
        {
          goto LABEL_37;
        }

        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_36;
      }

      v14 = type metadata accessor for Zone();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      v2 = swift_allocObject();
      *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal4Zone_delegate) = v12;
      v17 = v12;
      v18 = [v17 uniqueIdentifier];
      v19 = v5;
      sub_252E32E64();

      v20 = [v17 name];
      v21 = sub_252E36F34();
      v23 = v22;

      v24 = [v17 assistantIdentifier];
      if (v24)
      {
        v25 = v24;
        v26 = sub_252E36F34();
        a1 = v27;
      }

      else
      {

        v26 = 0;
        a1 = 0;
      }

      v5 = v19;
      v28 = (*v45)(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v19, v50);
      v29 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      *v29 = v21;
      v29[1] = v23;
      *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 2;
      v30 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v30 = v26;
      v30[1] = a1;
      MEMORY[0x2530AD700](v28);
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v10;
      v7 = v47;
    }

    while (v13 != v46);
    v2 = v51;
    a1 = v44;
    v9 = MEMORY[0x277D84F90];
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v32 = [a1 zoneName];
  if (v32)
  {
    v7 = v32;
    v33 = sub_252E36F34();
    v35 = v34;

    v51 = v9;
    if (v2 >> 62)
    {
      v36 = sub_252E378C4();
      if (v36)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v36 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v36)
      {
LABEL_21:
        v5 = 0;
        v50 = v2 & 0xC000000000000001;
        v37 = v2 & 0xFFFFFFFFFFFFFF8;
        do
        {
          if (v50)
          {
            v40 = MEMORY[0x2530ADF00](v5, v2);
            a1 = (v5 + 1);
            if (__OFADD__(v5, 1))
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (v5 >= *(v37 + 16))
            {
              goto LABEL_38;
            }

            v40 = *(v2 + 8 * v5 + 32);

            a1 = (v5 + 1);
            if (__OFADD__(v5, 1))
            {
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              v8 = sub_252E378C4();
              goto LABEL_3;
            }
          }

          v41 = *(v40 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v33 && *(v40 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v35;
          if (v41 || (sub_252E37DB4() & 1) != 0)
          {
            v7 = &v51;
            sub_252E37A94();
            v38 = v2;
            v39 = *(v51 + 16);
            sub_252E37AC4();
            v2 = v38;
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          ++v5;
        }

        while (a1 != v36);
      }
    }

    return v51;
  }

  return v2;
}

uint64_t sub_2529F5A80(unint64_t a1)
{
  v210 = a1;
  v209 = sub_252E32E84();
  v2 = *(v209 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v209);
  v212 = v188 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E36AD4();
  v203 = *(v5 - 8);
  v204 = v5;
  v6 = v203[8];
  v7 = MEMORY[0x28223BE20](v5);
  v202 = v188 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v198 = v188 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v199 = v188 - v12;
  MEMORY[0x28223BE20](v11);
  v207 = v188 - v13;
  v14 = sub_252E36AB4();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v19 = v188 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded);
  if (v20 != 2 && (v20 & 1) == 0)
  {
    sub_2529318DC();
    v44 = swift_allocError();
    *v45 = 12;
    return v44;
  }

  v193 = v17;
  v194 = v16;
  if (qword_27F53F5B8 != -1)
  {
LABEL_43:
    swift_once();
  }

  v21 = qword_27F544F40;
  sub_252E36A94();
  sub_252E375D4();
  v195 = v21;
  v201 = v19;
  sub_252E36A84();
  v22 = sub_2529D8DC0();
  v23 = v210 & 0xFFFFFFFFFFFFFF8;
  if (v210 >> 62)
  {
    v46 = v22;
    v24 = sub_252E378C4();
    v22 = v46;
  }

  else
  {
    v24 = *((v210 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v205 = v2;
  v214 = v22;
  v200 = v1;
  v213 = MEMORY[0x277D84F90];
  if (v24)
  {
    v25 = 0;
    v1 = v210;
    v211 = MEMORY[0x277D84F90];
    v19 = &off_279711000;
    while (2)
    {
      v26 = v25;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x2530ADF00](v26, v1);
        }

        else
        {
          if (v26 >= *(v23 + 16))
          {
            goto LABEL_41;
          }

          v27 = *(v1 + 8 * v26 + 32);
        }

        v2 = v27;
        v25 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v28 = [v27 homeName];
        if (v28)
        {
          break;
        }

        ++v26;
        if (v25 == v24)
        {
          goto LABEL_24;
        }
      }

      v29 = v28;
      v30 = sub_252E36F34();
      v208 = v31;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v211 = sub_2529F7A80(0, *(v211 + 2) + 1, 1, v211);
      }

      v33 = *(v211 + 2);
      v32 = *(v211 + 3);
      v2 = (v33 + 1);
      if (v33 >= v32 >> 1)
      {
        v211 = sub_2529F7A80((v32 > 1), v33 + 1, 1, v211);
      }

      v34 = v211;
      *(v211 + 2) = v2;
      v35 = &v34[16 * v33];
      v36 = v208;
      *(v35 + 4) = v30;
      *(v35 + 5) = v36;
      if (v25 != v24)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v211 = MEMORY[0x277D84F90];
  }

LABEL_24:
  if (!*(v211 + 2))
  {
    goto LABEL_38;
  }

  *&v230 = MEMORY[0x277D84F90];
  v1 = v214;
  if (!(v214 >> 62))
  {
    v37 = *((v214 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_27;
    }

LABEL_46:

    v43 = v230;
    goto LABEL_47;
  }

  v37 = sub_252E378C4();
  if (!v37)
  {
    goto LABEL_46;
  }

LABEL_27:
  v19 = 0;
  v208 = v1 & 0xC000000000000001;
  v38 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v208)
  {
    v39 = MEMORY[0x2530ADF00](v19, v214);
    v2 = v39;
    v40 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      goto LABEL_37;
    }

LABEL_33:
    v1 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
    *&v241[0] = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    *(&v241[0] + 1) = v1;
    MEMORY[0x28223BE20](v39);
    v188[-2] = v241;

    v41 = sub_2529ED970(sub_252A00B98, &v188[-4], v211);

    if (v41)
    {
      sub_252E37A94();
      v42 = *(v230 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      v1 = &v230;
      sub_252E37AA4();
    }

    else
    {
    }

    ++v19;
    if (v40 == v37)
    {
      goto LABEL_46;
    }
  }

  if (v19 >= *(v38 + 16))
  {
    goto LABEL_42;
  }

  v2 = *(v214 + 8 * v19 + 32);

  v40 = (v19 + 1);
  if (!__OFADD__(v19, 1))
  {
    goto LABEL_33;
  }

LABEL_37:
  __break(1u);
LABEL_38:

  v43 = v214;
LABEL_47:
  v47 = sub_2529F442C(v43, v210);
  if (v47)
  {
    v48 = v47;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_252E3C130;
    v214 = v49;
    *(v49 + 32) = v48;
  }

  else
  {
    v214 = v43;
  }

  v191 = sub_2529F38E8(0x72656767697274, 0xE700000000000000, v210, 0);
  v192 = v50;
  v51 = sub_2529D8CA8(v191, v50);
  v52 = 0;
  if (v51)
  {
    v53 = v51;
    v54 = v51 & 0xFFFFFFFFFFFFFF8;
    if (v51 >> 62)
    {
      goto LABEL_72;
    }

    for (i = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {

      v56 = 0;
      *&v241[0] = MEMORY[0x277D84F90];
LABEL_54:
      v57 = v56;
      while ((v53 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v57, v53);
        v56 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          goto LABEL_70;
        }

LABEL_58:
        type metadata accessor for Trigger();
        if (swift_dynamicCastClass())
        {
          MEMORY[0x2530AD700]();
          if (*((*&v241[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v241[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v214 = v52;
            sub_252E372A4();
            v52 = v214;
          }

          sub_252E372D4();
          v213 = *&v241[0];
          if (v56 == i)
          {
LABEL_67:

            if (qword_27F53F4C0 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v204, qword_27F544CE8);
            *&v241[0] = 0;
            *(&v241[0] + 1) = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E713A0);
            MEMORY[0x2530AD570](v191, v192);

            MEMORY[0x2530AD570](0x6163206D6F726620, 0xEB00000000656863);
            sub_252CC3D90(*&v241[0], *(&v241[0] + 1), 0xD00000000000007FLL, 0x8000000252E70FD0);
            v59 = 1;
            v60 = v201;
            v61 = v195;
            goto LABEL_191;
          }

          goto LABEL_54;
        }

        ++v57;
        if (v56 == i)
        {
          goto LABEL_67;
        }
      }

      if (v57 >= *(v54 + 16))
      {
        goto LABEL_71;
      }

      v58 = *(v53 + 8 * v57 + 32);

      v56 = v57 + 1;
      if (!__OFADD__(v57, 1))
      {
        goto LABEL_58;
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      ;
    }
  }

  if (qword_27F53F4C0 != -1)
  {
    goto LABEL_111;
  }

LABEL_75:
  v62 = __swift_project_value_buffer(v204, qword_27F544CE8);
  v63 = v203[2];
  v197 = v62;
  v189 = v63;
  v190 = v203 + 2;
  (v63)(v207);
  *&v241[0] = 0;
  *(&v241[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v241[0] = 0xD000000000000018;
  *(&v241[0] + 1) = 0x8000000252E712E0;
  v64 = v214;
  if (v214 >> 62)
  {
    v65 = sub_252E378C4();
  }

  else
  {
    v65 = *((v214 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v213 = v65;
  if (v65)
  {
    v66 = 0;
    v211 = (v64 & 0xC000000000000001);
    v67 = v64 & 0xFFFFFFFFFFFFFF8;
    v68 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v211)
      {
        v69 = MEMORY[0x2530ADF00](v66, v214);
        v70 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          goto LABEL_107;
        }
      }

      else
      {
        if (v66 >= *(v67 + 16))
        {
          goto LABEL_108;
        }

        v69 = *(v214 + 8 * v66 + 32);

        v70 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          swift_once();
          goto LABEL_75;
        }
      }

      v72 = *(v69 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v71 = *(v69 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      v73 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_2529F7A80(0, *(v68 + 2) + 1, 1, v68);
      }

      v75 = *(v68 + 2);
      v74 = *(v68 + 3);
      if (v75 >= v74 >> 1)
      {
        v68 = sub_2529F7A80((v74 > 1), v75 + 1, 1, v68);
      }

      *(v68 + 2) = v75 + 1;
      v76 = &v68[16 * v75];
      *(v76 + 4) = v72;
      *(v76 + 5) = v71;
      ++v66;
      v52 = v73;
      if (v70 == v213)
      {
        goto LABEL_92;
      }
    }
  }

  v68 = MEMORY[0x277D84F90];
LABEL_92:
  v77 = MEMORY[0x2530AD730](v68, MEMORY[0x277D837D0]);
  v79 = v78;

  MEMORY[0x2530AD570](v77, v79);

  v196 = "Looking for scenes in ";
  v80 = v207;
  sub_252CC3D90(*&v241[0], *(&v241[0] + 1), 0xD00000000000007FLL, 0x8000000252E70FD0);

  v188[0] = v203[1];
  v188[1] = v203 + 1;
  (v188[0])(v80, v204);
  v81 = v214;
  v82 = sub_2529EF5D8(v214);
  v52 = v82;
  *&v241[0] = MEMORY[0x277D84F90];
  if (v82 >> 62)
  {
    v83 = sub_252E378C4();
    if (v83)
    {
LABEL_94:
      v84 = 0;
      v211 = (v52 & 0xC000000000000001);
      v207 = v52;
      v208 = v52 & 0xFFFFFFFFFFFFFF8;
      v205 += 4;
      v206 = v83;
      while (1)
      {
        if (v211)
        {
          v85 = MEMORY[0x2530ADF00](v84, v52);
        }

        else
        {
          if (v84 >= *(v208 + 16))
          {
            goto LABEL_110;
          }

          v85 = *(v52 + 8 * v84 + 32);
        }

        v86 = v85;
        v87 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          goto LABEL_109;
        }

        v88 = type metadata accessor for Trigger();
        v89 = *(v88 + 48);
        v90 = *(v88 + 52);
        v91 = swift_allocObject();
        *(v91 + OBJC_IVAR____TtC22HomeAutomationInternal7Trigger_delegate) = v86;
        v92 = v86;
        v93 = [v92 uniqueIdentifier];
        sub_252E32E64();

        v94 = [v92 name];
        v95 = sub_252E36F34();
        v97 = v96;

        v98 = [v92 assistantIdentifier];
        if (v98)
        {
          v99 = v98;
          v100 = sub_252E36F34();
          v102 = v101;
        }

        else
        {

          v100 = 0;
          v102 = 0;
        }

        v103 = (*v205)(v91 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v212, v209);
        v104 = (v91 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        *v104 = v95;
        v104[1] = v97;
        *(v91 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 6;
        v105 = (v91 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v105 = v100;
        v105[1] = v102;
        MEMORY[0x2530AD700](v103);
        if (*((*&v241[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v241[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v106 = *((*&v241[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v84;
        v52 = v207;
        if (v87 == v206)
        {
          v107 = *&v241[0];
          v81 = v214;
          goto LABEL_115;
        }
      }
    }
  }

  else
  {
    v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v83)
    {
      goto LABEL_94;
    }
  }

  v107 = MEMORY[0x277D84F90];
LABEL_115:
  v212 = v107;

  v189(v199, v197, v204);
  *&v241[0] = 0;
  *(&v241[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v241[0] = 0xD000000000000010;
  *(&v241[0] + 1) = 0x8000000252E71300;
  if (v213)
  {
    v108 = 0;
    v109 = v81 & 0xC000000000000001;
    v110 = v81 & 0xFFFFFFFFFFFFFF8;
    v111 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v109)
      {
        v112 = MEMORY[0x2530ADF00](v108, v81);
        v113 = v108 + 1;
        if (__OFADD__(v108, 1))
        {
          goto LABEL_177;
        }
      }

      else
      {
        if (v108 >= *(v110 + 16))
        {
          goto LABEL_178;
        }

        v112 = *(v81 + 8 * v108 + 32);

        v113 = v108 + 1;
        if (__OFADD__(v108, 1))
        {
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          v122 = sub_252E378C4();
          goto LABEL_132;
        }
      }

      v115 = *(v112 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v114 = *(v112 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v111 = sub_2529F7A80(0, *(v111 + 2) + 1, 1, v111);
      }

      v117 = *(v111 + 2);
      v116 = *(v111 + 3);
      if (v117 >= v116 >> 1)
      {
        v111 = sub_2529F7A80((v116 > 1), v117 + 1, 1, v111);
      }

      *(v111 + 2) = v117 + 1;
      v118 = &v111[16 * v117];
      *(v118 + 4) = v115;
      *(v118 + 5) = v114;
      ++v108;
      v81 = v214;
      if (v113 == v213)
      {
        goto LABEL_130;
      }
    }
  }

  v111 = MEMORY[0x277D84F90];
LABEL_130:

  v119 = MEMORY[0x2530AD730](v111, MEMORY[0x277D837D0]);
  v121 = v120;

  MEMORY[0x2530AD570](v119, v121);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  v108 = v212;
  if (v212 >> 62)
  {
    goto LABEL_184;
  }

  v122 = *((v212 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_132:
  v123 = MEMORY[0x277D84F90];
  if (v122)
  {
    v124 = 0;
    v214 = v108 & 0xC000000000000001;
    v125 = v108 & 0xFFFFFFFFFFFFFF8;
    v126 = v122;
    do
    {
      if (v214)
      {
        v127 = MEMORY[0x2530ADF00](v124, v108);
        v128 = v124 + 1;
        if (__OFADD__(v124, 1))
        {
          goto LABEL_179;
        }
      }

      else
      {
        if (v124 >= *(v125 + 16))
        {
          goto LABEL_180;
        }

        v127 = *(v108 + 8 * v124 + 32);

        v128 = v124 + 1;
        if (__OFADD__(v124, 1))
        {
          goto LABEL_179;
        }
      }

      v129 = *(v127 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v130 = *(v127 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v123 = sub_2529F7A80(0, *(v123 + 2) + 1, 1, v123);
      }

      v132 = *(v123 + 2);
      v131 = *(v123 + 3);
      if (v132 >= v131 >> 1)
      {
        v123 = sub_2529F7A80((v131 > 1), v132 + 1, 1, v123);
      }

      *(v123 + 2) = v132 + 1;
      v133 = &v123[16 * v132];
      *(v133 + 4) = v129;
      *(v133 + 5) = v130;
      ++v124;
      v134 = v128 == v126;
      v122 = v126;
      v108 = v212;
    }

    while (!v134);
  }

  v135 = MEMORY[0x2530AD730](v123, MEMORY[0x277D837D0]);
  v137 = v136;

  MEMORY[0x2530AD570](v135, v137);

  v138 = v199;
  sub_252CC3D90(*&v241[0], *(&v241[0] + 1), 0xD00000000000007FLL, v196 | 0x8000000000000000);

  (v188[0])(v138, v204);
  v139 = MEMORY[0x277D84F90];
  *&v241[0] = MEMORY[0x277D84F90];
  if (!v122)
  {
    goto LABEL_160;
  }

  v140 = 0;
  v141 = v210;
  while (2)
  {
    if ((v108 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v140, v108);
      v143 = v140 + 1;
      if (__OFADD__(v140, 1))
      {
        break;
      }

      goto LABEL_154;
    }

    if (v140 >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_181;
    }

    v142 = *(v108 + 8 * v140 + 32);

    v143 = v140 + 1;
    if (!__OFADD__(v140, 1))
    {
LABEL_154:
      if (sub_252967B6C(v141))
      {
        sub_252E37A94();
        v144 = *(*&v241[0] + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v140;
      v141 = v210;
      if (v143 == v122)
      {
        goto LABEL_159;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_159:
  v139 = *&v241[0];
LABEL_160:

  v189(v198, v197, v204);
  *&v241[0] = 0;
  *(&v241[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v241[0] = 0xD00000000000001FLL;
  *(&v241[0] + 1) = 0x8000000252E71320;
  v145 = (v139 >> 62) & 1;
  if (v139 < 0)
  {
    LODWORD(v145) = 1;
  }

  LODWORD(v214) = v145;
  if (v145 == 1)
  {
    v146 = sub_252E378C4();
    v213 = v139;
    if (v146)
    {
      goto LABEL_164;
    }
  }

  else
  {
    v146 = *(v139 + 16);
    v213 = v139;
    if (v146)
    {
LABEL_164:
      v108 = 0;
      v147 = v139 & 0xC000000000000001;
      v148 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v147)
        {
          v149 = MEMORY[0x2530ADF00](v108, v139);
          v150 = v108 + 1;
          if (__OFADD__(v108, 1))
          {
            goto LABEL_182;
          }
        }

        else
        {
          if (v108 >= *(v139 + 16))
          {
            goto LABEL_183;
          }

          v149 = *(v139 + 8 * v108 + 32);

          v150 = v108 + 1;
          if (__OFADD__(v108, 1))
          {
            goto LABEL_182;
          }
        }

        v152 = *(v149 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v151 = *(v149 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v148 = sub_2529F7A80(0, *(v148 + 2) + 1, 1, v148);
        }

        v154 = *(v148 + 2);
        v153 = *(v148 + 3);
        if (v154 >= v153 >> 1)
        {
          v148 = sub_2529F7A80((v153 > 1), v154 + 1, 1, v148);
        }

        *(v148 + 2) = v154 + 1;
        v155 = &v148[16 * v154];
        *(v155 + 4) = v152;
        *(v155 + 5) = v151;
        ++v108;
        v139 = v213;
        if (v150 == v146)
        {
          goto LABEL_187;
        }
      }
    }
  }

  v148 = MEMORY[0x277D84F90];
LABEL_187:
  v156 = MEMORY[0x2530AD730](v148, MEMORY[0x277D837D0]);
  v158 = v157;

  MEMORY[0x2530AD570](v156, v158);

  v159 = v198;
  sub_252CC3D90(*&v241[0], *(&v241[0] + 1), 0xD00000000000007FLL, v196 | 0x8000000000000000);

  (v188[0])(v159, v204);
  if (v214)
  {
    type metadata accessor for Entity();

    v160 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity();
    v160 = v139;
  }

  v161 = v200;
  v162 = *(v200 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_cachedResultsLock);
  os_unfair_lock_lock(v162 + 4);
  v163 = (v161 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cachedResults);
  swift_beginAccess();
  v165 = *v163;
  v164 = v163[1];
  v166 = v192;

  [v164 lock];

  [v164 unlock];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v230 = v165;
  v168 = v191;
  sub_2529FB7E0(v160, v191, v166, isUniquelyReferenced_nonNull_native, sub_252E032C4, sub_252DFE810, sub_252E11364);

  v169 = v230;
  [v164 lock];
  *v163 = v169;

  [v164 unlock];
  swift_endAccess();
  os_unfair_lock_unlock(v162 + 4);

  *&v241[0] = 0;
  *(&v241[0] + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000036, 0x8000000252E71340);
  MEMORY[0x2530AD570](v168, v166);

  sub_252CC3D90(*&v241[0], *(&v241[0] + 1), 0xD00000000000007FLL, v196 | 0x8000000000000000);
  v59 = 0;
  v60 = v201;
  v61 = v195;
LABEL_191:

  v229 = 1;
  v228 = 1;
  v227 = 1;
  v226 = 1;
  *&v230 = 0;
  BYTE8(v230) = 1;
  v231 = 0u;
  v232 = 0u;
  v233 = 0u;
  v234 = 0u;
  v235 = 0u;
  LOBYTE(v236) = 1;
  v237 = 0uLL;
  *(&v236 + 1) = 0;
  LOBYTE(v238) = 1;
  BYTE1(v238) = v59;
  v239 = 0uLL;
  *(&v238 + 1) = 0;
  v240 = 1;
  GEOLocationCoordinate2DMake(&v230);
  v223 = v238;
  v224 = v239;
  v225 = v240;
  v219 = v234;
  v220 = v235;
  v221 = v236;
  v222 = v237;
  v215 = v230;
  v216 = v231;
  v217 = v232;
  v218 = v233;
  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v61, v60, "GetEntitiesForIntent", 20, 2, &v215);
  v241[8] = v223;
  v241[9] = v224;
  v242 = v225;
  v241[4] = v219;
  v241[5] = v220;
  v241[6] = v221;
  v241[7] = v222;
  v241[0] = v215;
  v241[1] = v216;
  v241[2] = v217;
  v241[3] = v218;
  sub_25293847C(v241, &qword_27F5407B0, &unk_252E42860);
  if (qword_27F53F4C0 != -1)
  {
    goto LABEL_208;
  }

LABEL_192:
  v170 = v204;
  v171 = __swift_project_value_buffer(v204, qword_27F544CE8);
  (v203[2])(v202, v171, v170);
  *&v215 = 0;
  *(&v215 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v215 = 0xD000000000000016;
  *(&v215 + 1) = 0x8000000252E71380;
  v44 = v213;
  if (!(v213 >> 62))
  {
    v172 = *((v213 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v172)
    {
      goto LABEL_210;
    }

    goto LABEL_194;
  }

  v172 = sub_252E378C4();
  if (v172)
  {
LABEL_194:
    v173 = 0;
    v214 = v44 & 0xC000000000000001;
    v174 = v44 & 0xFFFFFFFFFFFFFF8;
    v175 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v214)
      {
        v176 = MEMORY[0x2530ADF00](v173, v44);
        v177 = v173 + 1;
        if (__OFADD__(v173, 1))
        {
          goto LABEL_206;
        }
      }

      else
      {
        if (v173 >= *(v174 + 16))
        {
          goto LABEL_207;
        }

        v176 = *(v44 + 8 * v173 + 32);

        v177 = v173 + 1;
        if (__OFADD__(v173, 1))
        {
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          swift_once();
          goto LABEL_192;
        }
      }

      v179 = *(v176 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v178 = *(v176 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v175 = sub_2529F7A80(0, *(v175 + 2) + 1, 1, v175);
      }

      v181 = *(v175 + 2);
      v180 = *(v175 + 3);
      if (v181 >= v180 >> 1)
      {
        v175 = sub_2529F7A80((v180 > 1), v181 + 1, 1, v175);
      }

      *(v175 + 2) = v181 + 1;
      v182 = &v175[16 * v181];
      *(v182 + 4) = v179;
      *(v182 + 5) = v178;
      ++v173;
      v44 = v213;
      if (v177 == v172)
      {
        goto LABEL_211;
      }
    }
  }

LABEL_210:
  v175 = MEMORY[0x277D84F90];
LABEL_211:
  v183 = MEMORY[0x2530AD730](v175, MEMORY[0x277D837D0]);
  v185 = v184;

  MEMORY[0x2530AD570](v183, v185);

  v186 = v202;
  sub_252CC3D90(v215, *(&v215 + 1), 0xD00000000000007FLL, 0x8000000252E70FD0);

  (v203[1])(v186, v204);
  (*(v193 + 8))(v201, v194);
  return v44;
}

void *sub_2529F744C(unint64_t a1)
{
  v3 = sub_252E36AB4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F600 != -1)
  {
    swift_once();
  }

  v8 = qword_27F544F88;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  sub_252B680FC();
  sub_252B68288();
  v10 = v9;

  if (!v10)
  {
    v20 = sub_2529F219C();
    if ((v21 & 1) == 0)
    {
      goto LABEL_17;
    }

    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v22 = sub_252E36AD4();
    __swift_project_value_buffer(v22, qword_27F544C40);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E713F0);
    v24[1] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(v25, v26, 0xD00000000000007FLL, 0x8000000252E70FD0, 0xD000000000000017, 0x8000000252E71410, 479);

    sub_252A00A2C(v20, 1, MEMORY[0x277D85008]);
LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  v11 = v1;
  v12 = sub_252B4623C(a1);

  v13 = sub_252C758E0(v12);

  v14 = sub_252DD6238(v13);

  if (!v14)
  {
    goto LABEL_16;
  }

  sub_252B680FC();
  v15 = sub_252B68288();
  v17 = v16;

  if (v17)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v20 = sub_2529E72B8(v18, v19);

LABEL_17:
  sub_252E375C4();
  sub_252E36A74();
  (*(v4 + 8))(v7, v3);
  return v20;
}

void *sub_2529F77F8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_2529F8FA0(result, v1[2] + 1, 1, v1, &qword_27F541790, &qword_252E40A40, &qword_27F540990, &qword_252E3DF50);
    *v0 = result;
  }

  return result;
}

uint64_t sub_2529F787C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

char *sub_2529F78D8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_2529F954C(result, *(v1 + 2) + 1, 1, v1, &qword_27F541798, &qword_252E40A48);
    *v0 = result;
  }

  return result;
}

void *sub_2529F794C(void *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_2529F8FA0((v2 > 1), result + 1, 1, *v1, &qword_27F541790, &qword_252E40A40, &qword_27F540990, &qword_252E3DF50);
    *v1 = result;
  }

  return result;
}

uint64_t sub_2529F79C8(uint64_t result, uint64_t (*a2)(BOOL, uint64_t, uint64_t))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1, result + 1, 1);
    *v2 = result;
  }

  return result;
}

char *sub_2529F7A18(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_2529F954C((v2 > 1), (result + 1), 1, *v1, &qword_27F541798, &qword_252E40A48);
    *v1 = result;
  }

  return result;
}

char *sub_2529F7A80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
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

void *sub_2529F7C10(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401C8, &unk_252E3BFF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401D0, &unk_252E466B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2529F7D44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540258, &qword_252E3C088);
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

char *sub_2529F7E5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541670, &qword_252E40938);
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

char *sub_2529F7FB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 504);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[504 * v8])
    {
      memmove(v12, v13, 504 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2529F8118(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_2529F8360(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541788, &qword_252E40A38);
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

char *sub_2529F84A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401F0, &unk_252E5BAD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2529F8630(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541648, &qword_252E40910);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541650, &qword_252E40918);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2529F8778(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541870, &qword_252E40AF8);
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

void *sub_2529F8958(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540E50, &qword_252E3F0A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540E48, &qword_252E3F0A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2529F8B48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5417C8, &qword_252E40A68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_2529F8CA0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2529F8DF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541680, &qword_252E40948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2529F8FA0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2529F90FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541718, &qword_252E409D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2529F9208(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403C0, &unk_252E3C470);
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

size_t sub_2529F933C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_2529F954C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_2529F964C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416F8, &qword_252E409B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2529F97A8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2529F9998(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_2529F9A94(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v3)
    {
      if (a2 < 0)
      {
        v4 = a2;
      }

      else
      {
        v4 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_252E378C4();
      a2 = sub_252DA9974(v4, v5);
      goto LABEL_8;
    }

    v7 = MEMORY[0x277D84FA0];
    v22 = MEMORY[0x277D84FA0];
    sub_252E37874();
    if (sub_252E37904())
    {
      type metadata accessor for Service();
      v20 = MEMORY[0x277D84FA0];
      v8 = a1 + 56;
      while (1)
      {
        swift_dynamicCast();
        if (!*(a1 + 16))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 40);
        sub_252E37EC4();
        sub_252E32E84();
        sub_2529FEBDC(&qword_27F540680, MEMORY[0x277CC95F0]);
        sub_252E36E94();
        MEMORY[0x2530AE390](*(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
        v10 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v11 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        sub_252E37044();

        v12 = sub_252E37F14();
        v13 = -1 << *(a1 + 32);
        v14 = v12 & ~v13;
        if (((*(v8 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
LABEL_13:

          goto LABEL_14;
        }

        v15 = ~v13;
        while (1)
        {
          v16 = *(*(a1 + 48) + 8 * v14);

          if ((sub_252E32E54() & 1) == 0 || *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
          {

            goto LABEL_19;
          }

          if (*(v16 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
          {
            break;
          }

          v18 = sub_252E37DB4();

          if (v18)
          {
            goto LABEL_29;
          }

LABEL_19:
          v14 = (v14 + 1) & v15;
          if (((*(v8 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

LABEL_29:
        v19 = *(v20 + 16);
        if (*(v20 + 24) <= v19)
        {
          sub_252DAAAAC(v19 + 1);
        }

        v20 = v22;
        sub_252DAD220(v21, v22);
LABEL_14:
        if (!sub_252E37904())
        {
          goto LABEL_36;
        }
      }
    }

    v20 = v7;
LABEL_36:

    return v20;
  }

  else
  {
    if (v3)
    {
LABEL_8:

      return sub_252BBC050(a1, a2);
    }

    return sub_252DFAB78(a1, a2);
  }
}

void *sub_2529F9DE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v140 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v148 = &v125 - v8;
  v9 = sub_252E36324();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v127 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v125 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v131 = &v125 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v125 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v142 = &v125 - v23;
  MEMORY[0x28223BE20](v22);
  v126 = &v125 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v134 = &v125 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v30 = MEMORY[0x28223BE20](v29);
  v31 = MEMORY[0x28223BE20](v30);
  v32 = MEMORY[0x28223BE20](v31);
  v144 = &v125 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v125 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = MEMORY[0x28223BE20](&v125 - v37);
  v43 = &v125 - v42;
  v151 = a1;
  v44 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v44)
    {
      if (a2 >= 0)
      {
        a2 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v45 = sub_252E378C4();
      v46 = sub_252DA999C(a2, v45);
      v47 = v151;
      goto LABEL_8;
    }

    v128 = v38;
    v136 = v41;
    v137 = v40;
    v130 = v39;
    v49 = MEMORY[0x277D84FA0];
    v157 = MEMORY[0x277D84FA0];
    v139 = sub_252E37874();
    v50 = sub_252E37904();
    if (!v50)
    {
      goto LABEL_75;
    }

    v133 = v43;
    v129 = v16;
    v51 = v50;
    v138 = type metadata accessor for HomeAutomationEntityState(0);
    v52 = v51;
    v53 = (v10 + 48);
    v145 = (v10 + 32);
    v146 = (v10 + 8);
    v150 = v151 + 56;
    v147 = v36;
    v154 = (v10 + 48);
    v143 = v4;
    v135 = v21;
LABEL_13:
    v141 = v49;
    v155 = v52;
    swift_dynamicCast();
    if (!*(v151 + 16))
    {
LABEL_69:

      v49 = v141;
      goto LABEL_70;
    }

    v54 = *(v151 + 40);
    v55 = v156;
    sub_252E37EC4();
    v56 = v133;
    sub_252956C1C(v55 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v133);
    v152 = *v53;
    if (v152(v56, 1, v9) == 1)
    {
      sub_25293847C(v56, &qword_27F540298, &unk_252E3C270);
      sub_252E37EE4();
    }

    else
    {
      sub_252E36304();
      (*v146)(v56, v9);
      sub_252E37EE4();
      v53 = v154;
      sub_252E37044();
    }

    v57 = v145;
    v58 = *(v55 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
    if (v58)
    {
      sub_252E37EE4();
      v59 = v128;
      sub_252956C1C(v58 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v128);
      if (v152(v59, 1, v9) != 1)
      {
        v61 = v126;
        (*v57)(v126, v59, v9);
        sub_252E36304();
        sub_252E37044();

        (*v146)(v61, v9);
        goto LABEL_25;
      }

      sub_25293847C(v59, &qword_27F540298, &unk_252E3C270);
      if (*(v58 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
      {
        v60 = *(v58 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

        HomeAutomationAbstractMeasurement.hash(into:)();

LABEL_25:
        v63 = sub_252E37F14();
        v64 = -1 << *(v151 + 32);
        v65 = v63 & ~v64;
        if (((*(v150 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
        {
          goto LABEL_69;
        }

        v149 = ~v64;
        while (1)
        {
          v66 = v156;
          v67 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
          v68 = v4;
          v69 = *(v4 + 48);
          v70 = *(*(v151 + 48) + 8 * v65);
          v71 = v148;
          sub_252956C1C(v70 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v148);
          v153 = v66;
          v72 = v66 + v67;
          v53 = v154;
          sub_252956C1C(v72, v71 + v69);
          v73 = v9;
          v74 = v9;
          v75 = v152;
          if (v152(v71, 1, v73) == 1)
          {
            v76 = v75(v71 + v69, 1, v74);
            v9 = v74;
            if (v76 != 1)
            {
              goto LABEL_28;
            }

            v77 = v70;

            sub_25293847C(v71, &qword_27F540298, &unk_252E3C270);
          }

          else
          {
            sub_252956C1C(v71, v36);
            if (v75(v71 + v69, 1, v74) == 1)
            {
              (*v146)(v36, v74);
              v9 = v74;
LABEL_28:
              sub_25293847C(v71, &qword_27F540758, &unk_252E4D160);
              v4 = v68;
              goto LABEL_29;
            }

            v78 = v142;
            (*v145)(v142, v71 + v69, v74);
            sub_2529FEBDC(&qword_27F540760, MEMORY[0x277D55C48]);
            v77 = v70;

            v79 = sub_252E36EF4();
            v80 = *v146;
            v81 = v78;
            v36 = v147;
            (*v146)(v81, v74);
            v80(v36, v74);
            v53 = v154;
            sub_25293847C(v71, &qword_27F540298, &unk_252E3C270);
            v9 = v74;
            if ((v79 & 1) == 0)
            {
              v4 = v68;

              goto LABEL_29;
            }
          }

          v82 = *(v77 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
          v83 = v153;
          v84 = *(v153 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
          v85 = v144;
          if (v82)
          {
            if (!v84)
            {

              v4 = v143;
              goto LABEL_60;
            }

            v86 = OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue;
            sub_252956C1C(v82 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v144);
            v87 = v152;
            if (v152(v85, 1, v9) == 1)
            {

              sub_25293847C(v85, &qword_27F540298, &unk_252E3C270);
              v88 = v137;
              sub_252956C1C(v84 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v137);
              v89 = v9;
              if (v87(v88, 1, v9) == 1)
              {
                sub_25293847C(v88, &qword_27F540298, &unk_252E3C270);
                v90 = *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
                v91 = *(v84 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
                if (v90)
                {
                  v83 = v153;
                  if (!v91)
                  {
                    goto LABEL_66;
                  }

                  v92 = *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

                  v93 = _s22HomeAutomationInternal0aB19AbstractMeasurementC2eeoiySbAC_ACtFZ_0(v90, v91);

                  v4 = v143;
                  if ((v93 & 1) == 0)
                  {
LABEL_44:

LABEL_45:
                    v36 = v147;
                    v53 = v154;
                    goto LABEL_29;
                  }
                }

                else
                {
                  v83 = v153;
                  if (v91)
                  {
LABEL_66:

                    v4 = v143;
                    goto LABEL_45;
                  }

                  v121 = *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
                  v122 = *(v84 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);

                  v4 = v143;
                  if (v121 != v122)
                  {
                    goto LABEL_44;
                  }
                }
              }

              else
              {
                v99 = v129;
                v132 = *v145;
                v132(v129, v88, v89);
                v100 = v82 + v86;
                v101 = v130;
                sub_252956C1C(v100, v130);
                if (v87(v101, 1, v89) == 1)
                {

                  (*v146)(v99, v89);
                  v98 = v101;
                  goto LABEL_52;
                }

                v118 = v127;
                v132(v127, v101, v89);
                v119 = sub_252E362E4();

                v120 = *v146;
                (*v146)(v118, v89);
                v120(v99, v89);
                v4 = v143;
                v9 = v89;
                v83 = v153;
                if ((v119 & 1) == 0)
                {
                  goto LABEL_44;
                }
              }
            }

            else
            {
              v94 = v135;
              v95 = v85;
              v89 = v9;
              v96 = *v145;
              (*v145)(v135, v95, v89);
              v97 = v136;
              sub_252956C1C(v84 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v136);
              if (v87(v97, 1, v89) == 1)
              {
                (*v146)(v94, v89);
                v98 = v97;
LABEL_52:
                sub_25293847C(v98, &qword_27F540298, &unk_252E3C270);

                v4 = v143;
                v36 = v147;
                v53 = v154;
                v9 = v89;
                goto LABEL_29;
              }

              v102 = v131;
              v96(v131, v97, v89);
              v103 = sub_252E362E4();
              v104 = *v146;
              (*v146)(v102, v89);
              v104(v94, v89);
              v4 = v143;
              v9 = v89;
              v83 = v153;
              if ((v103 & 1) == 0)
              {
                goto LABEL_44;
              }
            }
          }

          else
          {
            v4 = v143;
            if (v84)
            {
              goto LABEL_44;
            }
          }

          v105 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType;
          v106 = *(v4 + 48);
          v107 = v140;
          sub_252956C1C(v77 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType, v140);
          sub_252956C1C(v83 + v105, v107 + v106);
          v53 = v154;
          v108 = v152;
          if (v152(v107, 1, v9) == 1)
          {

            if (v108(v107 + v106, 1, v9) == 1)
            {
              sub_25293847C(v107, &qword_27F540298, &unk_252E3C270);
              v36 = v147;
LABEL_72:
              v123 = *(v141 + 16);
              if (*(v141 + 24) <= v123)
              {
                sub_252DAAF70(v123 + 1);
              }

              v49 = v157;
              sub_252DAD224(v156, v157);
LABEL_70:
              v52 = sub_252E37904();
              if (!v52)
              {
LABEL_75:

                return v49;
              }

              goto LABEL_13;
            }

LABEL_59:
            sub_25293847C(v107, &qword_27F540758, &unk_252E4D160);
LABEL_60:
            v36 = v147;
            goto LABEL_29;
          }

          v109 = v4;
          v110 = v9;
          v111 = v108;
          v112 = v134;
          sub_252956C1C(v107, v134);
          if (v111(v107 + v106, 1, v110) == 1)
          {

            (*v146)(v112, v110);
            v9 = v110;
            v4 = v109;
            goto LABEL_59;
          }

          v113 = v142;
          (*v145)(v142, v107 + v106, v110);
          sub_2529FEBDC(&qword_27F540760, MEMORY[0x277D55C48]);
          v114 = sub_252E36EF4();

          v115 = v112;
          v116 = *v146;
          v117 = v113;
          v53 = v154;
          (*v146)(v117, v110);
          v116(v115, v110);
          sub_25293847C(v107, &qword_27F540298, &unk_252E3C270);
          v36 = v147;
          v9 = v110;
          v4 = v109;
          if (v114)
          {
            goto LABEL_72;
          }

LABEL_29:
          v65 = (v65 + 1) & v149;
          if (((*(v150 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
          {
            goto LABEL_69;
          }
        }
      }

      v62 = *(v58 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
    }

    sub_252E37EE4();
    goto LABEL_25;
  }

  if (v44)
  {
    v47 = v151;
    v46 = a2;
LABEL_8:

    return sub_252BBC390(v47, v46);
  }

  v124 = v151;

  return sub_252DFAED4(v124, a2);
}

_OWORD *sub_2529FAE1C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_252A44A10(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_252E038BC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_252DFF974(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_252A44A10(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_252E37E24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_252A00AF4(a1, v23);
  }

  else
  {
    sub_252E02F70(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_2529FAF6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_252A44A10(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_252E03A74();
      v11 = v19;
      goto LABEL_8;
    }

    sub_252DFFF08(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_252A44A10(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_252E37E24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 88 * v11;

    return sub_252A00A98(a1, v23);
  }

  else
  {
    sub_252E02FDC(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_2529FB0B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_252A44A10(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_252E03C44();
      goto LABEL_7;
    }

    sub_252E002B8(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_252A44A10(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_252E37E24();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_252E35EF4();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_252E03048(v12, a2, a3, a1, v18);
}

uint64_t sub_2529FB234(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_252A454C0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_252E03EC4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_252E00638(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_252A454C0(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      type metadata accessor for Service();
      result = sub_252E37E24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {
    sub_252E02F2C(v9, a2, a1, v20);
  }
}

void *sub_2529FB360(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_252A44B34(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_252E04198();
      v9 = v17;
      goto LABEL_8;
    }

    sub_252E00F04(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_252A44B34(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_252E37E24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7] + 504 * v9;

    return sub_252A00A3C(a1, v21);
  }

  else
  {

    return sub_252E030F8(v9, a2, a1, v20);
  }
}

unint64_t sub_2529FB484(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_252A488EC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_252E04330();
      v9 = v17;
      goto LABEL_8;
    }

    sub_252E015C8(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_252A488EC(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_252E37E24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return sub_252E02F2C(v9, a2, a1, v20);
  }
}

void sub_2529FB668(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_252A44AB4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_252E044C8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_252E018A0(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_252A44AB4(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_14:
      sub_252E37E24();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {
    sub_252E03168(v9, a2, a1, v20);
    sub_2529353AC(a2, v23);
  }
}

uint64_t sub_2529FB7E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_252A44A10(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v26 = *v11;
    v17 = sub_252A44A10(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      result = sub_252E37E24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v28);
  }
}

uint64_t sub_2529FB98C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_252A44A10(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v26 = *v11;
    v17 = sub_252A44A10(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      result = sub_252E37E24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v28);
  }
}

unint64_t sub_2529FBAF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_252A44B34(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_252E04964();
      v11 = v19;
      goto LABEL_8;
    }

    sub_252E026C0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_252A44B34(a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_252E37E24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 16 * v11);
    v24 = v23[1];
    *v23 = a1;
    v23[1] = a2;
  }

  else
  {

    return sub_252E0322C(v11, a3, a1, a2, v22);
  }
}

uint64_t sub_2529FBC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_252A44A10(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_252E04ACC();
      v13 = v21;
      goto LABEL_8;
    }

    sub_252E02944(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_252A44A10(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_252E37E24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    sub_252E03274(v13, a3, a4, a1, a2, v24);
  }
}

uint64_t (*sub_2529FBD80(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2530ADF00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_252A00B90;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2529FBE00(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x2530ADF00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_252A00B94;
  }

  __break(1u);
  return result;
}

void (*sub_2529FBE80(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2530ADF00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2529FBF00;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2529FBF08(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x2530ADF00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_2529FBF88;
  }

  __break(1u);
  return result;
}

uint64_t sub_2529FBF90(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_252E37DB4() & 1;
  }
}

uint64_t sub_2529FC02C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541638, &qword_252E40900);
    v3 = sub_252E379A4();
    v4 = 0;
    v5 = v3 + 56;
    v21 = v1;
    v22 = a1 + 32;
    while (2)
    {
      v6 = *(v22 + v4);
      v7 = *(v3 + 40);
      sub_252E37EC4();
      StateSemantic.rawValue.getter();
      sub_252E37044();

      result = sub_252E37F14();
      v9 = ~(-1 << *(v3 + 32));
      for (i = result & v9; ; i = (i + 1) & v9)
      {
        v11 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v11) == 0)
        {
          break;
        }

        v23 = *(*(v3 + 48) + i);
        v12 = StateSemantic.rawValue.getter();
        v14 = v13;
        if (v12 == StateSemantic.rawValue.getter() && v14 == v15)
        {

          goto LABEL_4;
        }

        v17 = sub_252E37DB4();

        if (v17)
        {
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v11;
      *(*(v3 + 48) + i) = v6;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v21)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2529FC204(void *a1)
{
  v270 = sub_252E32E84();
  v238 = *(v270 - 8);
  v2 = *(v238 + 64);
  v3 = MEMORY[0x28223BE20](v270);
  v234 = &v232[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x28223BE20](v3);
  v260 = &v232[-v6];
  v7 = MEMORY[0x28223BE20](v5);
  v266 = &v232[-v8];
  v9 = MEMORY[0x28223BE20](v7);
  v268 = &v232[-v10];
  MEMORY[0x28223BE20](v9);
  v12 = &v232[-v11];
  v13 = &unk_252E3C000;
  if ([a1 entityType] == 5)
  {
    type metadata accessor for HomeStore();
    v14 = static HomeStore.shared.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C130;
    *(inited + 32) = a1;
    v16 = a1;
    v17 = HomeStore.scenes(matching:)(inited);
    LOBYTE(v19) = v18;

    swift_setDeallocating();
    v20 = *(inited + 16);
    swift_arrayDestroy();
    if ((v19 & 1) == 0)
    {
      v21 = v17 & 0xFFFFFFFFFFFFFF8;
      if (v17 >> 62)
      {
        goto LABEL_53;
      }

      for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
      {
        v13 = 0;
        v23 = MEMORY[0x277D84F90];
        v262 = v17 & 0xC000000000000001;
        v261 = v17 + 32;
        v269 = (v238 + 8);
        v274 = MEMORY[0x277D84F90];
        v257 = MEMORY[0x277D84F90];
        v260 = i;
        v259 = v17;
        v258 = v21;
        while (1)
        {
          if (v262)
          {
            v25 = MEMORY[0x2530ADF00](v13, v17);
            v26 = __OFADD__(v13++, 1);
            if (v26)
            {
              goto LABEL_51;
            }
          }

          else
          {
            if (v13 >= *(v21 + 16))
            {
              goto LABEL_52;
            }

            v25 = *(v261 + 8 * v13);

            v26 = __OFADD__(v13++, 1);
            if (v26)
            {
              goto LABEL_51;
            }
          }

          v267 = v13;
          v263 = OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate;
          v27 = [*(v25 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
          v28 = sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
          sub_2529E6100();
          v21 = sub_252E373A4();

          v273 = v23;
          v265 = v21;
          v266 = v25;
          v268 = v28;
          if ((v21 & 0xC000000000000001) != 0)
          {
            swift_unknownObjectRetain();
            sub_252E37874();
            sub_252E373E4();
            v21 = v276;
            a1 = v277;
            v19 = v278;
            v17 = v279;
            v13 = v280;
          }

          else
          {
            v29 = -1 << *(v21 + 32);
            a1 = (v21 + 56);
            v19 = ~v29;
            v30 = -v29;
            v31 = v30 < 64 ? ~(-1 << v30) : -1;
            v13 = v31 & *(v21 + 56);

            v17 = 0;
          }

          v264 = v19;
          v32 = (v19 + 64) >> 6;
          if ((v21 & 0x8000000000000000) == 0)
          {
            break;
          }

          while (1)
          {
            LOBYTE(v19) = v21;
            v37 = sub_252E37904();
            if (!v37)
            {
              break;
            }

            v271 = v37;
            swift_dynamicCast();
            v19 = v272;
            v35 = v17;
            v36 = v13;
            if (!v272)
            {
              break;
            }

LABEL_26:
            type metadata accessor for Action();
            v38 = swift_allocObject();
            *(v38 + 16) = v19;
            v39 = v19;
            v40 = [v39 uniqueIdentifier];
            sub_252E32E64();

            v41 = sub_252E32E24();
            v43 = v42;
            (*v269)(v12, v270);
            *(v38 + 24) = v41;
            *(v38 + 32) = v43;
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v44 = 1;
            }

            else
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v44 = 2;
              }

              else
              {
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  v44 = 3;
                }

                else
                {
                  objc_opt_self();
                  v44 = 4 * (swift_dynamicCastObjCClass() != 0);
                }
              }
            }

            *(v38 + 40) = v44;
            v19 = &v273;
            MEMORY[0x2530AD700]();
            if (*((v273 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v273 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v45 = *((v273 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_252E372A4();
            }

            sub_252E372D4();
            v23 = v273;
            v17 = v35;
            v13 = v36;
            if ((v21 & 0x8000000000000000) == 0)
            {
              goto LABEL_18;
            }
          }

LABEL_37:
          sub_25291AE30();

          if (v23 >> 62)
          {
            a1 = sub_252E378C4();
          }

          else
          {
            a1 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v17 = v259;
          v21 = v258;
          v46 = v266;
          v13 = v267;

          if (a1)
          {
            v47 = [*&v46[v263] home];
            v24 = v260;
            if (v47)
            {
              v48 = v47;
              v49 = type metadata accessor for Home();
              v50 = *(v49 + 48);
              v51 = *(v49 + 52);
              swift_allocObject();
              a1 = sub_2529E65BC(v48);

              v19 = &v274;
              MEMORY[0x2530AD700](v52);
              if (*((v274 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v274 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v53 = *((v274 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_252E372A4();
              }

              sub_252E372D4();
              v257 = v274;
            }

            else
            {
            }
          }

          else
          {

            v24 = v260;
          }

          v104 = v13 == v24;
          v23 = MEMORY[0x277D84F90];
          if (v104)
          {
            sub_252A00A2C(v17, 0, MEMORY[0x277D84FB8]);
            v54 = &v281;
            goto LABEL_239;
          }
        }

LABEL_18:
        v33 = v17;
        v34 = v13;
        v35 = v17;
        if (v13)
        {
LABEL_22:
          v36 = (v34 - 1) & v34;
          v19 = *(*(v21 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v34)))));
          if (!v19)
          {
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        while (1)
        {
          v35 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if (v35 >= v32)
          {
            goto LABEL_37;
          }

          v34 = *(a1 + v35);
          ++v33;
          if (v34)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        ;
      }
    }

    sub_252A00A2C(v17, v19 & 1, MEMORY[0x277D84FB8]);
  }

  v261 = type metadata accessor for HomeStore();
  v55 = static HomeStore.shared.getter();
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v56 = swift_allocObject();
  v236 = *(v13 + 304);
  *(v56 + 16) = v236;
  *(v56 + 32) = a1;
  v235 = a1;
  v57 = HomeStore.services(matching:supporting:)(v56, 0);
  v59 = v58;

  LODWORD(v60) = v59;
  if (v59)
  {
    goto LABEL_220;
  }

  v255 = v57;
  v247 = v57 & 0xFFFFFFFFFFFFFF8;
  if (v57 >> 62)
  {
    goto LABEL_141;
  }

  v61 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v240 = v61;
  if (!v61)
  {
    goto LABEL_220;
  }

LABEL_58:
  v254 = v61;
  v233 = v60;
  v276 = MEMORY[0x277D84F90];
  sub_2529AA380(0, v61 & ~(v61 >> 63), 0);
  if ((v254 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_145:
    v63 = MEMORY[0x277D84F90];
    goto LABEL_146;
  }

  v62 = 0;
  v63 = v276;
  v252 = v57 & 0xC000000000000001;
  v239 = v57 + 32;
  v267 = (v238 + 8);
  do
  {
    if (__OFADD__(v62, 1))
    {
      goto LABEL_135;
    }

    v264 = v63;
    v60 = &v282;
    v263 = v62 + 1;
    if (v252)
    {
      v64 = MEMORY[0x2530ADF00]();
    }

    else
    {
      if (v62 >= *(v247 + 16))
      {
        goto LABEL_140;
      }

      v64 = *(v239 + 8 * v62);
    }

    v65 = static HomeStore.shared.getter();
    v66 = sub_2529D8DC0();

    if (v66 >> 62)
    {
      v67 = sub_252E378C4();
      if (!v67)
      {
LABEL_126:

        v108 = 0;
        v107 = 0;
        goto LABEL_127;
      }
    }

    else
    {
      v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v67)
      {
        goto LABEL_126;
      }
    }

    v68 = 0;
    v69 = v66 & 0xC000000000000001;
    v70 = v66 & 0xFFFFFFFFFFFFFF8;
    v60 = v66 + 32;
    v258 = v64;
    v259 = v66;
    v246 = v67;
    v251 = v66 & 0xC000000000000001;
    v250 = v66 & 0xFFFFFFFFFFFFFF8;
    v249 = v66 + 32;
    while (1)
    {
      if (v69)
      {
        v71 = MEMORY[0x2530ADF00](v68, v66);
        v26 = __OFADD__(v68++, 1);
        if (v26)
        {
          goto LABEL_136;
        }
      }

      else
      {
        if (v68 >= *(v70 + 16))
        {
          goto LABEL_137;
        }

        v71 = *(v60 + 8 * v68);

        v26 = __OFADD__(v68++, 1);
        if (v26)
        {
          goto LABEL_136;
        }
      }

      v72 = sub_2529E7424();
      if (!(v72 >> 62))
      {
        v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v73)
        {
          break;
        }

        goto LABEL_113;
      }

      v13 = v72;
      v73 = sub_252E378C4();
      v72 = v13;
      if (v73)
      {
        break;
      }

LABEL_113:
      v13 = v72;

      v69 = v251;
      v70 = v250;
      v60 = v249;
      if (v68 == v67)
      {
        goto LABEL_126;
      }
    }

    v74 = 0;
    v60 = v72 & 0xC000000000000001;
    v75 = v72 & 0xFFFFFFFFFFFFFF8;
    v76 = v72 + 32;
    v257 = v71;
    v245 = v68;
    v256 = v72;
    v244 = v73;
    v243 = v72 & 0xC000000000000001;
    v242 = v72 & 0xFFFFFFFFFFFFFF8;
    v241 = v72 + 32;
LABEL_74:
    if (v60)
    {
      v106 = v74;
      v77 = MEMORY[0x2530ADF00](v74, v72);
      v26 = __OFADD__(v106, 1);
      v79 = v106 + 1;
      if (v26)
      {
        goto LABEL_139;
      }
    }

    else
    {
      if (v74 >= *(v75 + 16))
      {
        goto LABEL_138;
      }

      v77 = *(v76 + 8 * v74);
      v78 = v74;

      v26 = __OFADD__(v78, 1);
      v79 = v78 + 1;
      if (v26)
      {
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        v233 = v60;
        v113 = sub_252E378C4();
        LOBYTE(v60) = v233;
        v240 = v113;
        if (!v113)
        {
          goto LABEL_220;
        }

        v61 = sub_252E378C4();
        if (!v61)
        {
          goto LABEL_145;
        }

        LODWORD(v60) = v233;
        goto LABEL_58;
      }
    }

    v248 = v79;
    v80 = sub_252E32E24();
    v269 = v81;
    v82 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
    v83 = [*(v77 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) services];
    v84 = sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
    v57 = sub_252E37264();

    v262 = v77;
    v265 = v82;
    v253 = v84;
    if (v57 >> 62)
    {
      v85 = sub_252E378C4();
    }

    else
    {
      v85 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v86 = 0;
    do
    {
      if (v85 == v86)
      {

        v94 = [*(v262 + v265) services];
        v13 = sub_252E37264();

        if (v13 >> 62)
        {
          v95 = sub_252E378C4();
          if (v95)
          {
LABEL_92:
            v96 = 0;
            v265 = v13 & 0xC000000000000001;
            do
            {
              if (v265)
              {
                v97 = MEMORY[0x2530ADF00](v96, v13);
              }

              else
              {
                if (v96 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_134;
                }

                v97 = *(v13 + 8 * v96 + 32);
              }

              v57 = v97;
              v98 = v96 + 1;
              if (__OFADD__(v96, 1))
              {
                goto LABEL_133;
              }

              v99 = [v97 assistantIdentifier];
              if (v99)
              {
                v100 = v99;
                v101 = sub_252E36F34();
                v103 = v102;

                v104 = v101 == v80 && v103 == v269;
                if (v104)
                {

                  goto LABEL_122;
                }

                v105 = sub_252E37DB4();

                if (v105)
                {

LABEL_122:

                  goto LABEL_123;
                }
              }

              else
              {
              }

              ++v96;
            }

            while (v98 != v95);
          }
        }

        else
        {
          v95 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v95)
          {
            goto LABEL_92;
          }
        }

        v74 = v248;
        v57 = v255;
        v66 = v259;
        v67 = v246;
        v68 = v245;
        v72 = v256;
        v60 = v243;
        v75 = v242;
        v76 = v241;
        if (v248 == v244)
        {
          goto LABEL_113;
        }

        goto LABEL_74;
      }

      if ((v57 & 0xC000000000000001) != 0)
      {
        v88 = MEMORY[0x2530ADF00](v86, v57);
      }

      else
      {
        if (v86 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_132;
        }

        v88 = *(v57 + 8 * v86 + 32);
      }

      v89 = v88;
      if (__OFADD__(v86, 1))
      {
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
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      v90 = [v88 uniqueIdentifier];
      v91 = v268;
      sub_252E32E64();

      v92 = sub_252E32E24();
      v13 = v93;
      (*v267)(v91, v270);
      if (v92 == v80 && v13 == v269)
      {

        goto LABEL_124;
      }

      v87 = sub_252E37DB4();

      ++v86;
    }

    while ((v87 & 1) == 0);

LABEL_123:

LABEL_124:
    v108 = *(v257 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v107 = *(v257 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    v57 = v255;
LABEL_127:
    v63 = v264;
    v276 = v264;
    v110 = *(v264 + 16);
    v109 = *(v264 + 24);
    v111 = v254;
    if (v110 >= v109 >> 1)
    {
      sub_2529AA380((v109 > 1), v110 + 1, 1);
      v111 = v254;
      v63 = v276;
    }

    *(v63 + 16) = v110 + 1;
    v112 = v63 + 16 * v110;
    *(v112 + 32) = v108;
    *(v112 + 40) = v107;
    v62 = v263;
  }

  while (v263 != v111);
LABEL_146:
  v114 = sub_252C75A1C(v63);

  v115 = *(v114 + 16);

  v116 = v247;
  LOBYTE(v60) = v233;
  if (v115)
  {
    v117 = 0;
    v243 = MEMORY[0x277D84F90];
    v276 = MEMORY[0x277D84F90];
    v257 = v57 & 0xC000000000000001;
    v256 = v57 + 32;
    v268 = (v238 + 8);
LABEL_150:
    if (v257)
    {
      v118 = MEMORY[0x2530ADF00](v117, v57);
      v26 = __OFADD__(v117++, 1);
      if (v26)
      {
        goto LABEL_244;
      }
    }

    else
    {
      if (v117 >= *(v116 + 16))
      {
        goto LABEL_245;
      }

      v118 = *(v256 + 8 * v117);

      v26 = __OFADD__(v117++, 1);
      if (v26)
      {
        goto LABEL_244;
      }
    }

    v119 = static HomeStore.shared.getter();
    v120 = sub_2529D8DC0();

    if (v120 >> 62)
    {
      v121 = sub_252E378C4();
      if (!v121)
      {
LABEL_148:

        goto LABEL_149;
      }
    }

    else
    {
      v121 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v121)
      {
        goto LABEL_148;
      }
    }

    v13 = 0;
    v122 = v120 & 0xC000000000000001;
    v123 = v120 & 0xFFFFFFFFFFFFFF8;
    v124 = v120 + 32;
    v254 = v120 & 0xC000000000000001;
    v253 = v120 & 0xFFFFFFFFFFFFFF8;
    v252 = v120 + 32;
    while (1)
    {
      if (v122)
      {
        v125 = MEMORY[0x2530ADF00](v13, v120);
        v26 = __OFADD__(v13++, 1);
        if (v26)
        {
          goto LABEL_246;
        }
      }

      else
      {
        if (v13 >= *(v123 + 16))
        {
          goto LABEL_247;
        }

        v125 = *(v124 + 8 * v13);

        v26 = __OFADD__(v13++, 1);
        if (v26)
        {
          goto LABEL_246;
        }
      }

      v126 = sub_2529E7424();
      if (v126 >> 62)
      {
        v163 = v126;
        v127 = sub_252E378C4();
        v126 = v163;
        if (v127)
        {
LABEL_161:
          v128 = 0;
          v129 = v126 & 0xC000000000000001;
          v130 = v126 & 0xFFFFFFFFFFFFFF8;
          v131 = v126 + 32;
          v259 = v126;
          v248 = v127;
          v246 = v126 & 0xC000000000000001;
          v245 = v126 & 0xFFFFFFFFFFFFFF8;
          v264 = v117;
          v263 = v125;
          v262 = v118;
          v260 = v120;
          v250 = v121;
          v249 = v13;
          v244 = v126 + 32;
          do
          {
            if (v129)
            {
              v162 = v128;
              v132 = MEMORY[0x2530ADF00](v128, v126);
              v26 = __OFADD__(v162, 1);
              v134 = v162 + 1;
              if (v26)
              {
                goto LABEL_249;
              }
            }

            else
            {
              if (v128 >= *(v130 + 16))
              {
                goto LABEL_248;
              }

              v132 = *(v131 + 8 * v128);
              v133 = v128;

              v26 = __OFADD__(v133, 1);
              v134 = v133 + 1;
              if (v26)
              {
LABEL_249:
                __break(1u);
LABEL_250:
                v263 = sub_252E378C4();
                if (v263)
                {
                  v201 = sub_252E378C4();
                  if (v201)
                  {
                    v175 = v201;
                    goto LABEL_224;
                  }

LABEL_254:
                  v177 = MEMORY[0x277D84F90];
                  goto LABEL_255;
                }

                goto LABEL_274;
              }
            }

            v251 = v134;
            v13 = sub_252E32E24();
            v269 = v135;
            v267 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
            v136 = [*(v132 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) services];
            v258 = sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
            v137 = sub_252E37264();

            v265 = v132;
            if (v137 >> 62)
            {
              v138 = sub_252E378C4();
            }

            else
            {
              v138 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v139 = 0;
            while (v138 != v139)
            {
              if ((v137 & 0xC000000000000001) != 0)
              {
                v141 = MEMORY[0x2530ADF00](v139, v137);
              }

              else
              {
                if (v139 >= *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_241;
                }

                v141 = *(v137 + 8 * v139 + 32);
              }

              v142 = v141;
              if (__OFADD__(v139, 1))
              {
                __break(1u);
LABEL_241:
                __break(1u);
LABEL_242:
                __break(1u);
LABEL_243:
                __break(1u);
LABEL_244:
                __break(1u);
LABEL_245:
                __break(1u);
LABEL_246:
                __break(1u);
LABEL_247:
                __break(1u);
LABEL_248:
                __break(1u);
                goto LABEL_249;
              }

              v143 = [v141 uniqueIdentifier];
              v144 = v266;
              sub_252E32E64();

              v145 = sub_252E32E24();
              v147 = v146;
              (*v268)(v144, v270);
              if (v145 == v13 && v147 == v269)
              {

                goto LABEL_212;
              }

              v140 = sub_252E37DB4();

              ++v139;
              if (v140)
              {

LABEL_211:

LABEL_212:
                v57 = v255;
                v117 = v264;
                MEMORY[0x2530AD700](v164);
                if (*((v276 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v276 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v165 = *((v276 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_252E372A4();
                }

                sub_252E372D4();
                v243 = v276;
LABEL_149:
                v116 = v247;
                if (v117 == v240)
                {
                  sub_252A00A2C(v57, 0, MEMORY[0x277D84FB8]);
                  v54 = &v275;
LABEL_239:
                  v199 = sub_252C758E0(*(v54 - 32));

                  return v199;
                }

                goto LABEL_150;
              }
            }

            v148 = [*&v267[v265] services];
            v149 = sub_252E37264();

            if (v149 >> 62)
            {
              v150 = sub_252E378C4();
              if (v150)
              {
LABEL_180:
                v151 = 0;
                v267 = (v149 & 0xC000000000000001);
                do
                {
                  if (v267)
                  {
                    v152 = MEMORY[0x2530ADF00](v151, v149);
                  }

                  else
                  {
                    if (v151 >= *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_243;
                    }

                    v152 = *(v149 + 8 * v151 + 32);
                  }

                  v153 = v152;
                  v154 = v151 + 1;
                  if (__OFADD__(v151, 1))
                  {
                    goto LABEL_242;
                  }

                  v155 = [v152 assistantIdentifier];
                  if (v155)
                  {
                    v156 = v155;
                    v157 = sub_252E36F34();
                    v159 = v158;

                    if (v157 == v13 && v159 == v269)
                    {

                      goto LABEL_210;
                    }

                    v161 = sub_252E37DB4();

                    if (v161)
                    {

LABEL_210:

                      goto LABEL_211;
                    }
                  }

                  else
                  {
                  }

                  ++v151;
                }

                while (v154 != v150);
              }
            }

            else
            {
              v150 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v150)
              {
                goto LABEL_180;
              }
            }

            v128 = v251;
            v57 = v255;
            v117 = v264;
            v118 = v262;
            v120 = v260;
            v121 = v250;
            v13 = v249;
            v126 = v259;
            v129 = v246;
            v130 = v245;
            v131 = v244;
          }

          while (v251 != v248);
        }
      }

      else
      {
        v127 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v127)
        {
          goto LABEL_161;
        }
      }

      v122 = v254;
      v123 = v253;
      v124 = v252;
      if (v13 == v121)
      {
        goto LABEL_148;
      }
    }
  }

LABEL_220:
  sub_252A00A2C(v57, v60 & 1, MEMORY[0x277D84FB8]);
  v166 = static HomeStore.shared.getter();
  v167 = swift_allocObject();
  *(v167 + 16) = v236;
  v168 = v235;
  *(v167 + 32) = v235;
  v169 = v168;
  v13 = HomeStore.accessories(matching:supporting:)(v167, 0);
  v171 = v170;

  if (v171)
  {
    v172 = MEMORY[0x277D84FB8];
    v173 = v13;
    v174 = 1;
LABEL_275:
    sub_252A00A2C(v173, v174, v172);
    return 0;
  }

  v264 = v13 & 0xFFFFFFFFFFFFFF8;
  v268 = v13;
  if (v13 >> 62)
  {
    goto LABEL_250;
  }

  v175 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v263 = v175;
  if (!v175)
  {
    goto LABEL_274;
  }

LABEL_224:
  v276 = MEMORY[0x277D84F90];
  sub_2529AA380(0, v175 & ~(v175 >> 63), 0);
  if (v175 < 0)
  {
    __break(1u);
    goto LABEL_254;
  }

  v176 = 0;
  v177 = v276;
  v269 = (v13 & 0xC000000000000001);
  v265 = v238 + 8;
  v266 = (v238 + 32);
  v267 = v175;
  do
  {
    if (v269)
    {
      v178 = MEMORY[0x2530ADF00](v176, v13);
    }

    else
    {
      v178 = *(v13 + 8 * v176 + 32);
    }

    v179 = [*(v178 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
    if (v179)
    {
      v180 = v179;
      v181 = type metadata accessor for Home();
      v182 = *(v181 + 48);
      v183 = *(v181 + 52);
      v184 = swift_allocObject();
      v185 = v180;
      v186 = [v185 uniqueIdentifier];
      sub_252E32E64();

      v187 = [v185 name];
      v188 = sub_252E36F34();
      v190 = v189;

      v191 = [v185 assistantIdentifier];
      if (v191)
      {
        v192 = v191;
        sub_252E36F34();
      }

      v193 = v270;
      (*v266)(v184 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v260, v270);

      swift_setDeallocating();
      (*v265)(v184 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v193);

      v194 = *(*v184 + 48);
      v195 = *(*v184 + 52);
      swift_deallocClassInstance();
      v175 = v267;
      v13 = v268;
    }

    else
    {

      v188 = 0;
      v190 = 0;
    }

    v276 = v177;
    v197 = *(v177 + 16);
    v196 = *(v177 + 24);
    if (v197 >= v196 >> 1)
    {
      sub_2529AA380((v196 > 1), v197 + 1, 1);
      v177 = v276;
    }

    ++v176;
    *(v177 + 16) = v197 + 1;
    v198 = v177 + 16 * v197;
    *(v198 + 32) = v188;
    *(v198 + 40) = v190;
  }

  while (v175 != v176);
LABEL_255:
  v202 = sub_252C75A1C(v177);

  v203 = *(v202 + 16);

  if (!v203)
  {
LABEL_274:
    v172 = MEMORY[0x277D84FB8];
    v173 = v13;
    v174 = 0;
    goto LABEL_275;
  }

  v204 = 0;
  v205 = MEMORY[0x277D84F90];
  v276 = MEMORY[0x277D84F90];
  v206 = v13 & 0xC000000000000001;
  v207 = (v238 + 32);
  v208 = &off_279711000;
  while (2)
  {
    v209 = v204;
LABEL_258:
    if (v206)
    {
      result = MEMORY[0x2530ADF00](v209, v13);
      v210 = result;
      v204 = v209 + 1;
      if (__OFADD__(v209, 1))
      {
        break;
      }

      goto LABEL_261;
    }

    if (v209 >= *(v264 + 16))
    {
      goto LABEL_278;
    }

    v210 = *(v13 + 8 * v209 + 32);

    v204 = v209 + 1;
    if (!__OFADD__(v209, 1))
    {
LABEL_261:
      v211 = [*(v210 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
      if (v211)
      {
        v269 = v207;
        v212 = v211;
        v213 = type metadata accessor for Home();
        v214 = *(v213 + 48);
        v215 = *(v213 + 52);
        v216 = swift_allocObject();
        *(v216 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = v212;
        v217 = v212;
        v218 = [v217 v208[199]];
        sub_252E32E64();

        v219 = [v217 name];
        v267 = sub_252E36F34();
        v221 = v220;

        v222 = [v217 assistantIdentifier];
        if (v222)
        {
          v223 = v222;
          v224 = sub_252E36F34();
          v226 = v225;
        }

        else
        {

          v224 = 0;
          v226 = 0;
        }

        v207 = v269;
        v227 = (*v269)(v216 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v234, v270);
        v228 = (v216 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        *v228 = v267;
        v228[1] = v221;
        *(v216 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 1;
        v229 = (v216 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v229 = v224;
        v229[1] = v226;
        MEMORY[0x2530AD700](v227);
        if (*((v276 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v276 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v230 = *((v276 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
          v207 = v269;
        }

        result = sub_252E372D4();
        v205 = v276;
        v13 = v268;
        v208 = &off_279711000;
        if (v204 == v263)
        {
LABEL_276:
          sub_252A00A2C(v13, 0, MEMORY[0x277D84FB8]);
          v231 = sub_252C758E0(v205);

          return v231;
        }

        continue;
      }

      ++v209;
      if (v204 == v263)
      {
        goto LABEL_276;
      }

      goto LABEL_258;
    }

    break;
  }

  __break(1u);
LABEL_278:
  __break(1u);
  return result;
}

uint64_t sub_2529FE09C(uint64_t a1)
{
  v2 = sub_252E32FE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541620, &qword_252E408F8);
    v10 = sub_252E379A4();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2529FEBDC(&qword_27F541628, MEMORY[0x277CC99D0]);
      v18 = sub_252E36E84();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2529FEBDC(&qword_27F541630, MEMORY[0x277CC99D0]);
          v25 = sub_252E36EF4();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2529FE3BC(uint64_t a1)
{
  v2 = sub_252E359C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5417A0, &qword_252E40A50);
    v10 = sub_252E379A4();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2529FEBDC(&qword_27F5417A8, MEMORY[0x277D5F478]);
      v18 = sub_252E36E84();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2529FEBDC(&qword_27F5417B0, MEMORY[0x277D5F478]);
          v25 = sub_252E36EF4();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2529FE6F0(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_252DA74F8(&v6, v4);
      --v2;
    }

    while (v2);
    return v7;
  }

  return a2;
}

uint64_t sub_2529FE74C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541720, &qword_252E409D8);
    v3 = sub_252E379A4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_252E37EC4();

      sub_252E37044();
      result = sub_252E37F14();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_252E37DB4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2529FE8B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5418B0, &qword_252E40B20);
    v3 = sub_252E379A4();
    v4 = 0;
    v5 = v3 + 56;
    v41 = a1 + 32;
    while (2)
    {
      v6 = (v41 + 152 * v4);
      v7 = v6[7];
      v8 = v6[5];
      v80 = v6[6];
      v81 = v7;
      v9 = v6[7];
      v82 = v6[8];
      v10 = v6[3];
      v11 = v6[1];
      v76 = v6[2];
      v77 = v10;
      v12 = v6[3];
      v13 = v6[5];
      v78 = v6[4];
      v79 = v13;
      v14 = v6[1];
      v75[0] = *v6;
      v75[1] = v14;
      v15 = v6[7];
      v71 = v6[6];
      v72 = v15;
      v73 = v6[8];
      v16 = v6[3];
      v67 = v6[2];
      v68 = v16;
      v17 = v6[5];
      v69 = v6[4];
      v70 = v17;
      v18 = v6[1];
      v65 = *v6;
      v66 = v18;
      v83 = *(v6 + 72);
      v19 = *(v3 + 40);
      v61 = v80;
      v62 = v9;
      v63 = v6[8];
      v57 = v76;
      v58 = v12;
      v59 = v78;
      v60 = v8;
      v74 = *(v6 + 72);
      v64 = *(v6 + 72);
      v55 = v65;
      v56 = v11;
      sub_252E37EC4();
      sub_25297DE08(v75, v53);
      sub_252A34930();
      result = sub_252E37F14();
      v21 = ~(-1 << *(v3 + 32));
      for (i = result & v21; ; i = (i + 1) & v21)
      {
        v23 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v23) == 0)
        {
          break;
        }

        v24 = *(v3 + 48) + 152 * i;
        v25 = *(v24 + 16);
        v53[0] = *v24;
        v53[1] = v25;
        v26 = *(v24 + 80);
        v28 = *(v24 + 32);
        v27 = *(v24 + 48);
        v53[4] = *(v24 + 64);
        v53[5] = v26;
        v53[2] = v28;
        v53[3] = v27;
        v29 = *(v24 + 96);
        v30 = *(v24 + 112);
        v31 = *(v24 + 128);
        v54 = *(v24 + 144);
        v53[7] = v30;
        v53[8] = v31;
        v53[6] = v29;
        v49 = *(v24 + 96);
        v50 = *(v24 + 112);
        v51 = *(v24 + 128);
        v52 = *(v24 + 144);
        v45 = *(v24 + 32);
        v46 = *(v24 + 48);
        v47 = *(v24 + 64);
        v48 = *(v24 + 80);
        v43 = *v24;
        v44 = *(v24 + 16);
        sub_25297DE08(v53, v42);
        v32 = sub_252A39200(&v43, &v65);
        v61 = v49;
        v62 = v50;
        v63 = v51;
        v64 = v52;
        v57 = v45;
        v58 = v46;
        v59 = v47;
        v60 = v48;
        v55 = v43;
        v56 = v44;
        result = sub_2529AEC80(&v55);
        if (v32)
        {
          v49 = v71;
          v50 = v72;
          v51 = v73;
          v52 = v74;
          v45 = v67;
          v46 = v68;
          v47 = v69;
          v48 = v70;
          v43 = v65;
          v44 = v66;
          sub_2529AEC80(&v43);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v23;
      v33 = *(v3 + 48) + 152 * i;
      v34 = v70;
      *(v33 + 64) = v69;
      *(v33 + 80) = v34;
      v35 = v68;
      *(v33 + 32) = v67;
      *(v33 + 48) = v35;
      *(v33 + 144) = v74;
      v36 = v73;
      *(v33 + 112) = v72;
      *(v33 + 128) = v36;
      *(v33 + 96) = v71;
      v37 = v66;
      *v33 = v65;
      *(v33 + 16) = v37;
      v38 = *(v3 + 16);
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (!v39)
      {
        *(v3 + 16) = v40;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2529FEBDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2529FEC24(uint64_t a1, unint64_t a2)
{
  v3 = sub_2529E7424();
  v4 = v3;
  v76 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_66;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v6 = 0;
    v70 = v4 & 0xFFFFFFFFFFFFFF8;
    v71 = v4 & 0xC000000000000001;
    v68 = v4;
    v69 = v4 + 32;
    v73 = a2 + 32;
    v66 = i;
    v67 = a2;
    while (1)
    {
      if (v71)
      {
        v7 = MEMORY[0x2530ADF00](v6, v4);
        v8 = __OFADD__(v6, 1);
        v9 = v6 + 1;
        if (v8)
        {
LABEL_59:
          __break(1u);
LABEL_60:
          v64 = v76;
          goto LABEL_68;
        }

        goto LABEL_9;
      }

      if (v6 >= *(v70 + 16))
      {
        break;
      }

      v7 = *(v69 + 8 * v6);

      v8 = __OFADD__(v6, 1);
      v9 = v6 + 1;
      if (v8)
      {
        goto LABEL_59;
      }

LABEL_9:
      v74 = *(a2 + 16);
      v75 = v9;
      if (!v74)
      {
LABEL_4:

        goto LABEL_5;
      }

      v10 = 0;
      v72 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
      while (1)
      {
        v11 = *(v73 + 8 * v10);
        v12 = (*v7 + 256);
        v13 = *v12;
        if ((*v12)() == v11)
        {
          goto LABEL_56;
        }

        v14 = (*(*v7 + 272))();
        v15 = v14;
        if (*(v14 + 16))
        {
          v16 = *(v14 + 40);
          sub_252E37EC4();
          MEMORY[0x2530AE390](v11);
          v17 = sub_252E37F14();
          v18 = -1 << *(v15 + 32);
          v19 = v17 & ~v18;
          if ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
          {
            v20 = ~v18;
            while (*(*(v15 + 48) + 8 * v19) != v11)
            {
              v19 = (v19 + 1) & v20;
              if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
              {
                goto LABEL_19;
              }
            }

            goto LABEL_55;
          }
        }

LABEL_19:

        v22 = (v13)(v21);
        if (v22 == 41)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541750, &qword_252E4A2E0);
          v23 = sub_252E379A4();
          v36 = v23 + 56;
          v37 = qword_2864A91A8;
          v38 = *(v23 + 40);
          sub_252E37EC4();
          MEMORY[0x2530AE390](v37);
          v39 = sub_252E37F14();
          v40 = ~(-1 << *(v23 + 32));
          v41 = v39 & v40;
          v42 = (v39 & v40) >> 6;
          v43 = *(v23 + 56 + 8 * v42);
          v44 = 1 << (v39 & v40);
          v45 = *(v23 + 48);
          if ((v44 & v43) == 0)
          {
LABEL_30:
            *(v36 + 8 * v42) = v44 | v43;
            *(v45 + 8 * v41) = v37;
            v46 = *(v23 + 16);
            v8 = __OFADD__(v46, 1);
            v35 = v46 + 1;
            if (v8)
            {
              goto LABEL_65;
            }

            goto LABEL_31;
          }

          while (*(v45 + 8 * v41) != v37)
          {
            v41 = (v41 + 1) & v40;
            v42 = v41 >> 6;
            v43 = *(v36 + 8 * (v41 >> 6));
            v44 = 1 << v41;
            if (((1 << v41) & v43) == 0)
            {
              goto LABEL_30;
            }
          }
        }

        else
        {
          v23 = MEMORY[0x277D84FA0];
          if (v22 == 38)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541750, &qword_252E4A2E0);
            v23 = sub_252E379A4();
            v24 = v23 + 56;
            v25 = qword_2864A9180;
            v26 = *(v23 + 40);
            sub_252E37EC4();
            MEMORY[0x2530AE390](v25);
            v27 = sub_252E37F14();
            v28 = ~(-1 << *(v23 + 32));
            v29 = v27 & v28;
            v30 = (v27 & v28) >> 6;
            v31 = *(v23 + 56 + 8 * v30);
            v32 = 1 << (v27 & v28);
            v33 = *(v23 + 48);
            if ((v32 & v31) == 0)
            {
LABEL_24:
              *(v24 + 8 * v30) = v32 | v31;
              *(v33 + 8 * v29) = v25;
              v34 = *(v23 + 16);
              v8 = __OFADD__(v34, 1);
              v35 = v34 + 1;
              if (v8)
              {
                goto LABEL_64;
              }

LABEL_31:
              *(v23 + 16) = v35;
              goto LABEL_32;
            }

            while (*(v33 + 8 * v29) != v25)
            {
              v29 = (v29 + 1) & v28;
              v30 = v29 >> 6;
              v31 = *(v24 + 8 * (v29 >> 6));
              v32 = 1 << v29;
              if (((1 << v29) & v31) == 0)
              {
                goto LABEL_24;
              }
            }
          }
        }

LABEL_32:
        if (*(v23 + 16))
        {
          v47 = *(v23 + 40);
          sub_252E37EC4();
          MEMORY[0x2530AE390](v11);
          v48 = sub_252E37F14();
          v49 = -1 << *(v23 + 32);
          v50 = v48 & ~v49;
          if ((*(v23 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
          {
            v51 = ~v49;
            while (*(*(v23 + 48) + 8 * v50) != v11)
            {
              v50 = (v50 + 1) & v51;
              if (((*(v23 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
              {
                goto LABEL_37;
              }
            }

LABEL_55:

            goto LABEL_56;
          }
        }

LABEL_37:

        if (v11 == 42)
        {
          break;
        }

LABEL_12:
        if (++v10 == v74)
        {
          goto LABEL_4;
        }
      }

      v52 = [*(v7 + v72) profiles];
      sub_25293F638(0, &qword_27F540170, 0x277CD1760);
      v53 = sub_252E37264();

      if (!(v53 >> 62))
      {
        v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v54)
        {
          goto LABEL_40;
        }

        goto LABEL_11;
      }

      v54 = sub_252E378C4();
      if (!v54)
      {
LABEL_11:

        a2 = v67;
        v4 = v68;
        i = v66;
        goto LABEL_12;
      }

LABEL_40:
      v55 = 0;
      v4 = v53 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v53 & 0xC000000000000001) != 0)
        {
          v56 = MEMORY[0x2530ADF00](v55, v53);
        }

        else
        {
          if (v55 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v56 = *(v53 + 8 * v55 + 32);
        }

        v57 = v56;
        a2 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        objc_opt_self();
        v58 = swift_dynamicCastObjCClass();
        if (v58)
        {
          break;
        }

        ++v55;
        if (a2 == v54)
        {
          goto LABEL_11;
        }
      }

      v59 = v58;

      v60 = [v59 userSettings];
      a2 = v67;
      v4 = v68;
      i = v66;
      if (!v60)
      {

        goto LABEL_12;
      }

      v61 = v60;
      v62 = [v60 supportedFeatures];

      if ((v62 & 2) == 0)
      {
        goto LABEL_12;
      }

LABEL_56:
      sub_252E37A94();
      v63 = *(v76 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
LABEL_5:
      v6 = v75;
      if (v75 == i)
      {
        goto LABEL_60;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    ;
  }

  v64 = MEMORY[0x277D84F90];
LABEL_68:

  return v64;
}