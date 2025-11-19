uint64_t sub_2529A8628(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v3 = 0;
    v36 = v1 & 0xC000000000000001;
    v31 = v1 + 32;
    v32 = v1 & 0xFFFFFFFFFFFFFF8;
    v4 = MEMORY[0x277D84F90];
    v30 = xmmword_252E3C290;
    v33 = i;
    v34 = v1;
    while (1)
    {
      if (v36)
      {
        v6 = MEMORY[0x2530ADF00](v3, v1);
      }

      else
      {
        if (v3 >= *(v32 + 16))
        {
          goto LABEL_41;
        }

        v6 = *(v31 + 8 * v3);
      }

      v7 = v6;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v9 = [v6 targetAreas];
      if (!v9)
      {
        goto LABEL_35;
      }

      v10 = v9;
      type metadata accessor for HomeAttributeTargetArea();
      v11 = sub_252E37264();

      v37 = v4;
      if (v11 >> 62)
      {
        v12 = sub_252E378C4();
        if (!v12)
        {
LABEL_31:
          v5 = MEMORY[0x277D84F90];
          goto LABEL_32;
        }
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v12)
        {
          goto LABEL_31;
        }
      }

      v1 = 0;
      v5 = MEMORY[0x277D84F90];
      do
      {
        v13 = v1;
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
              goto LABEL_39;
            }

            v14 = *(v11 + 8 * v13 + 32);
          }

          v15 = v14;
          v1 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          v16 = [v14 name];
          if (v16)
          {
            break;
          }

          ++v13;
          if (v1 == v12)
          {
            goto LABEL_32;
          }
        }

        v17 = v16;
        v18 = sub_252E36F34();
        v35 = v19;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_2529F7A80(0, *(v5 + 16) + 1, 1, v5);
        }

        v21 = *(v5 + 16);
        v20 = *(v5 + 24);
        if (v21 >= v20 >> 1)
        {
          v5 = sub_2529F7A80((v20 > 1), v21 + 1, 1, v5);
        }

        *(v5 + 16) = v21 + 1;
        v22 = v5 + 16 * v21;
        *(v22 + 32) = v18;
        *(v22 + 40) = v35;
      }

      while (v1 != v12);
LABEL_32:

      if (!*(v5 + 16))
      {

        i = v33;
        v1 = v34;
        v4 = v37;
LABEL_35:
        v23 = [v7 targetMap];
        if (v23 && (v24 = v23, v25 = [v23 name], v24, v25))
        {

          v26 = sub_252E36F34();
          v28 = v27;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
          v5 = swift_allocObject();
          *(v5 + 16) = v30;
          *(v5 + 32) = v26;
          *(v5 + 40) = v28;
        }

        else
        {

          v5 = v4;
        }

        goto LABEL_5;
      }

      i = v33;
      v1 = v34;
LABEL_5:
      v4 = v5;
      if (v3 == i)
      {
        return v5;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  return MEMORY[0x277D84F90];
}

void HomeAttributeCleaningJob.description.getter()
{
  v1 = v0;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000028, 0x8000000252E6E230);
  v2 = HomeAttributeStateType.description.getter([v0 runState]);
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](0x6E61656C6320200ALL, 0xEF203A7365646F4DLL);
  v3 = [v0 cleanModes];
  v4 = sub_252E37264();

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (v6 < *(v4 + 16))
    {
      v8 = 0xE400000000000000;
      v9 = 1869903201;
      switch(*(v4 + 32 + 8 * v6))
      {
        case 0:
          v8 = 0xE700000000000000;
          v9 = 0x6E776F6E6B6E75;
          goto LABEL_20;
        case 1:
          v8 = 0xE600000000000000;
          v9 = 0x6D7575636176;
          goto LABEL_20;
        case 2:
          v8 = 0xE300000000000000;
          v9 = 7368557;
          goto LABEL_20;
        case 3:
          v8 = 0xE800000000000000;
          v9 = 0x6E6F697461636176;
          goto LABEL_20;
        case 4:
          v9 = 0x61656C4370656564;
          v8 = 0xE90000000000006ELL;
          goto LABEL_20;
        case 5:
          goto LABEL_20;
        case 6:
          v8 = 0xE500000000000000;
          v9 = 0x6B63697571;
          goto LABEL_20;
        case 7:
          v8 = 0xE500000000000000;
          v9 = 0x7465697571;
          goto LABEL_20;
        case 8:
          v8 = 0xE300000000000000;
          v9 = 7889261;
          goto LABEL_20;
        case 9:
          v9 = 1701736302;
          goto LABEL_20;
        case 0xALL:
          v8 = 0xE900000000000079;
          v9 = 0x6772656E45776F6CLL;
          goto LABEL_20;
        case 0xBLL:
          v8 = 0xE500000000000000;
          v9 = 0x746867696ELL;
          goto LABEL_20;
        case 0xCLL:
          v8 = 0xE300000000000000;
          v9 = 7954788;
          goto LABEL_20;
        case 0xDLL:
          v8 = 0xE300000000000000;
          v9 = 7235949;
          goto LABEL_20;
        case 0xELL:
          v8 = 0xE500000000000000;
          v9 = 0x7465736E75;
          goto LABEL_20;
        case 0xFLL:
          v8 = 0xE800000000000000;
          v9 = 0x6573696F4E776F6CLL;
LABEL_20:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_2529F7A80(0, *(v7 + 2) + 1, 1, v7);
          }

          v11 = *(v7 + 2);
          v10 = *(v7 + 3);
          if (v11 >= v10 >> 1)
          {
            v7 = sub_2529F7A80((v10 > 1), v11 + 1, 1, v7);
          }

          *(v7 + 2) = v11 + 1;
          v12 = &v7[16 * v11];
          *(v12 + 4) = v9;
          *(v12 + 5) = v8;
          break;
        default:
          break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_28:

    v13 = MEMORY[0x2530AD730](v7, MEMORY[0x277D837D0]);
    v15 = v14;

    MEMORY[0x2530AD570](v13, v15);

    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E6E260);
    v16 = [v1 targetAreas];
    if (v16)
    {
      v17 = type metadata accessor for HomeAttributeTargetArea();
      sub_252E37264();

      v16 = MEMORY[0x2530AD730](v18, v17);
      v20 = v19;
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v20 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v21 = sub_252E36F94();
    MEMORY[0x2530AD570](v21);

    MEMORY[0x2530AD570](0x656772617420200ALL, 0xEE00203A70614D74);
    v22 = [v1 targetMap];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 description];

      sub_252E36F34();
    }

    v25 = sub_252E36F94();
    MEMORY[0x2530AD570](v25);

    MEMORY[0x2530AD570](32010, 0xE200000000000000);
  }
}

uint64_t HomeAttributeCleaningJob.isEqual(_:)(uint64_t a1)
{
  sub_252938414(a1, v25, &qword_27F541E80, &qword_252E3DFA0);
  if (!v26)
  {
    sub_25293847C(v25, &qword_27F541E80, &qword_252E3DFA0);
    goto LABEL_20;
  }

  type metadata accessor for HomeAttributeCleaningJob();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v22 = 0;
    return v22 & 1;
  }

  v2 = [v24 runState];
  if (v2 != [v1 runState])
  {
    goto LABEL_19;
  }

  v3 = [v24 cleanModes];
  v4 = sub_252E37264();

  v5 = sub_252C76054(v4);

  v6 = [v1 cleanModes];
  v7 = sub_252E37264();

  v8 = sub_252C76054(v7);

  LOBYTE(v7) = sub_2529A9A94(v5, v8);

  if ((v7 & 1) == 0)
  {
    goto LABEL_19;
  }

  v9 = [v24 targetAreas];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for HomeAttributeTargetArea();
    v11 = sub_252E37264();
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = sub_252C75DC0(v11);

  v13 = [v1 targetAreas];
  if (v13)
  {
    v14 = v13;
    type metadata accessor for HomeAttributeTargetArea();
    v15 = sub_252E37264();
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = sub_252C75DC0(v15);

  sub_2529A9BE8(v12, v16);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    goto LABEL_19;
  }

  v19 = [v24 targetMap];
  v20 = [v1 targetMap];
  v21 = v20;
  if (!v19)
  {

    if (!v21)
    {
      v22 = 1;
      return v22 & 1;
    }

    goto LABEL_20;
  }

  if (!v20)
  {

LABEL_19:
    goto LABEL_20;
  }

  type metadata accessor for HomeAttributeTargetMap();
  v22 = sub_252E37694();

  return v22 & 1;
}

uint64_t sub_2529A91A8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v40 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v41 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(result + 48) + 152 * (v10 | (v3 << 6));
      v14 = *(v13 + 16);
      v75[0] = *v13;
      v75[1] = v14;
      v15 = *(v13 + 80);
      v17 = *(v13 + 32);
      v16 = *(v13 + 48);
      v75[4] = *(v13 + 64);
      v75[5] = v15;
      v75[2] = v17;
      v75[3] = v16;
      v19 = *(v13 + 112);
      v18 = *(v13 + 128);
      v20 = *(v13 + 96);
      v76 = *(v13 + 144);
      v75[7] = v19;
      v75[8] = v18;
      v75[6] = v20;
      v21 = *(v13 + 112);
      v71 = *(v13 + 96);
      v72 = v21;
      v73 = *(v13 + 128);
      v74 = *(v13 + 144);
      v22 = *(v13 + 48);
      v67 = *(v13 + 32);
      v68 = v22;
      v23 = *(v13 + 80);
      v24 = *(v13 + 96);
      v69 = *(v13 + 64);
      v70 = v23;
      v25 = *(v13 + 16);
      v65 = *v13;
      v66 = v25;
      v26 = *(a2 + 40);
      v61 = v24;
      v62 = *(v13 + 112);
      v63 = *(v13 + 128);
      v64 = *(v13 + 144);
      v57 = *(v13 + 32);
      v58 = *(v13 + 48);
      v59 = *(v13 + 64);
      v60 = *(v13 + 80);
      v55 = *v13;
      v56 = *(v13 + 16);
      sub_252E37EC4();
      sub_25297DE08(v75, v53);
      sub_252A34930();
      v27 = sub_252E37F14();
      v28 = -1 << *(a2 + 32);
      v29 = v27 & ~v28;
      if (((*(v9 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
        break;
      }

      v30 = ~v28;
      while (1)
      {
        v31 = *(a2 + 48) + 152 * v29;
        v32 = *(v31 + 16);
        v53[0] = *v31;
        v53[1] = v32;
        v33 = *(v31 + 80);
        v35 = *(v31 + 32);
        v34 = *(v31 + 48);
        v53[4] = *(v31 + 64);
        v53[5] = v33;
        v53[2] = v35;
        v53[3] = v34;
        v37 = *(v31 + 112);
        v36 = *(v31 + 128);
        v38 = *(v31 + 96);
        v54 = *(v31 + 144);
        v53[7] = v37;
        v53[8] = v36;
        v53[6] = v38;
        v49 = *(v31 + 96);
        v50 = *(v31 + 112);
        v51 = *(v31 + 128);
        v52 = *(v31 + 144);
        v45 = *(v31 + 32);
        v46 = *(v31 + 48);
        v47 = *(v31 + 64);
        v48 = *(v31 + 80);
        v43 = *v31;
        v44 = *(v31 + 16);
        sub_25297DE08(v53, v42);
        v39 = sub_252A39200(&v43, &v65);
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
        sub_2529AEC80(&v55);
        if (v39)
        {
          break;
        }

        v29 = (v29 + 1) & v30;
        if (((*(v9 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

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
      result = v40;
      v7 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    v61 = v71;
    v62 = v72;
    v63 = v73;
    v64 = v74;
    v57 = v67;
    v58 = v68;
    v59 = v69;
    v60 = v70;
    v55 = v65;
    v56 = v66;
    sub_2529AEC80(&v55);
    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v41 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2529A9538(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_252E37EC4();

    sub_252E37044();
    v17 = sub_252E37F14();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_252E37DB4() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2529A96F0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      a2 = a1;
    }

    else
    {
      a2 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (v2 < 0)
      {
        a1 = v2;
      }

      else
      {
        a1 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      return MEMORY[0x2821FCF40](a1, a2);
    }

    v6 = a2;
    v5 = v2;
    goto LABEL_17;
  }

  if (v3)
  {
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v4 = a2;
    }

    v5 = a1;
    v6 = v4;
LABEL_17:

    return sub_2529AA15C(v6, v5);
  }

  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v8 = 0;
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = a2 + 56;
  v31 = a1 + 56;
  v32 = a1;
  v30 = v13;
  if (!v12)
  {
    goto LABEL_27;
  }

  do
  {
    v14 = __clz(__rbit64(v12));
    v33 = (v12 - 1) & v12;
LABEL_32:
    v17 = *(*(a1 + 48) + 8 * (v14 | (v8 << 6)));
    v18 = *(v2 + 40);
    sub_252E37EC4();
    sub_252E32E84();
    sub_2529AECD4(&qword_27F540680, MEMORY[0x277CC95F0]);

    sub_252E36E94();
    v19 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
    MEMORY[0x2530AE390](*(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
    v20 = (v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v21 = *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v22 = *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    sub_252E37044();

    v23 = sub_252E37F14();
    v24 = -1 << *(v2 + 32);
    v25 = v23 & ~v24;
    if (((*(v34 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
LABEL_48:

      return 0;
    }

    v26 = ~v24;
    while (1)
    {
      v27 = *(*(v2 + 48) + 8 * v25);

      if ((sub_252E32E54() & 1) == 0 || *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v17 + v19))
      {

        goto LABEL_35;
      }

      if (*(v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v20 && *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v20[1])
      {
        break;
      }

      v29 = sub_252E37DB4();

      if (v29)
      {
        goto LABEL_45;
      }

LABEL_35:
      v25 = (v25 + 1) & v26;
      if (((*(v34 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

LABEL_45:

    v9 = v31;
    a1 = v32;
    v13 = v30;
    v12 = v33;
  }

  while (v33);
LABEL_27:
  v15 = v8;
  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      return 1;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v33 = (v16 - 1) & v16;
      goto LABEL_32;
    }
  }

  __break(1u);
  return MEMORY[0x2821FCF40](a1, a2);
}

uint64_t sub_2529A9A94(uint64_t result, uint64_t a2)
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
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    result = sub_252E37EB4();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + 8 * v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_2529A9BE8(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x2821FCF40](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_2529AA260(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = type metadata accessor for HomeAttributeTargetArea();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v28 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v29 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = sub_252E37684();
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = sub_252E37694();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v28;
      v12 = v29;
      v16 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

Swift::Bool __swiftcall HomeAttributeCleaningJob.containsCleanModes(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v3 = *(a1._rawValue + 2);
  if (v3)
  {
    v4 = (a1._rawValue + 32);
    v5 = MEMORY[0x277D84F90];
    do
    {
      v9 = *v4++;
      v8 = v9;
      if (v9 != 14)
      {
        LOBYTE(a1._rawValue) = swift_isUniquelyReferenced_nonNull_native();
        if ((a1._rawValue & 1) == 0)
        {
          LOBYTE(a1._rawValue) = sub_2529AA460(0, *(v5 + 16) + 1, 1);
        }

        v7 = *(v5 + 16);
        v6 = *(v5 + 24);
        if (v7 >= v6 >> 1)
        {
          LOBYTE(a1._rawValue) = sub_2529AA460((v6 > 1), v7 + 1, 1);
        }

        *(v5 + 16) = v7 + 1;
        *(v5 + 8 * v7 + 32) = v8;
      }

      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v10 = *(v5 + 16);
  if (v10)
  {
    v11 = 0;
    while (2)
    {
      if (v11 >= *(v5 + 16))
      {
        __break(1u);
        return a1._rawValue;
      }

      v12 = *(v5 + 32 + 8 * v11++);
      v13 = [v2 cleanModes];
      v14 = sub_252E37264();

      v15 = *(v14 + 16);
      v16 = 32;
      do
      {
        if (!v15)
        {

          LOBYTE(a1._rawValue) = 0;
          return a1._rawValue;
        }

        v17 = *(v14 + v16);
        v16 += 8;
        --v15;
      }

      while (v17 != v12);

      if (v11 != v10)
      {
        continue;
      }

      break;
    }
  }

  LOBYTE(a1._rawValue) = 1;
  return a1._rawValue;
}

BOOL Array<A>.contains(_:)(id a1, unint64_t a2)
{
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_15:
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2530ADF00](v6, a2);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_14;
      }

      v8 = *(a2 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v10 = [v8 runState];

    v6 = v7 + 1;
  }

  while (v10 != a1);
  return v5 != v7;
}

uint64_t sub_2529AA15C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_252E378C4();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = *(*(a2 + 48) + 8 * (v10 | (v5 << 6)));

    v14 = sub_252E37914();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(a2 + 56 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_2529AA260(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_252E378C4())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_252E37914();

      if ((v13 & 1) == 0)
      {
        return;
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
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

char *sub_2529AA360(char *a1, int64_t a2, char a3)
{
  result = sub_252931AD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2529AA380(void *a1, int64_t a2, char a3)
{
  result = sub_252931AE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA3A0(char *a1, int64_t a2, char a3)
{
  result = sub_252931C1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA3C0(char *a1, int64_t a2, char a3)
{
  result = sub_252931D28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA3E0(char *a1, int64_t a2, char a3)
{
  result = sub_252931E2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2529AA400(void *a1, int64_t a2, char a3)
{
  result = sub_252931E40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA420(char *a1, int64_t a2, char a3)
{
  result = sub_252931F74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2529AA440(void *a1, int64_t a2, char a3)
{
  result = sub_252931F88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA460(char *a1, int64_t a2, char a3)
{
  result = sub_2529320BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA480(char *a1, int64_t a2, char a3)
{
  result = sub_2529321CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA4A0(char *a1, int64_t a2, char a3)
{
  result = sub_2529322F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA4C0(char *a1, int64_t a2, char a3)
{
  result = sub_2529323FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2529AA4E0(size_t a1, int64_t a2, char a3)
{
  result = sub_252932410(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2529AA500(size_t a1, int64_t a2, char a3)
{
  result = sub_252932438(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2529AA520(void *a1, int64_t a2, char a3)
{
  result = sub_25293245C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA540(char *a1, int64_t a2, char a3)
{
  result = sub_2529325A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA560(char *a1, int64_t a2, char a3)
{
  result = sub_2529326A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA580(char *a1, int64_t a2, char a3)
{
  result = sub_2529327A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA5A0(char *a1, int64_t a2, char a3)
{
  result = sub_2529328C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2529AA5C0(void *a1, int64_t a2, char a3)
{
  result = sub_2529329BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2529AA5E0(void *a1, int64_t a2, char a3)
{
  result = sub_2529329E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2529AA600(size_t a1, int64_t a2, char a3)
{
  result = sub_252932B38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2529AA620(size_t a1, int64_t a2, char a3)
{
  result = sub_252932E8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2529AA640(size_t a1, int64_t a2, char a3)
{
  result = sub_252932EB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA660(char *a1, int64_t a2, char a3)
{
  result = sub_252932EDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2529AA680(size_t a1, int64_t a2, char a3)
{
  result = sub_252932FE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2529AA6A0(void *a1, int64_t a2, char a3)
{
  result = sub_252933008(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2529AA6C0(void *a1, int64_t a2, char a3)
{
  result = sub_25293313C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA6E0(char *a1, int64_t a2, char a3)
{
  result = sub_252933270(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2529AA700(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_2529ACE1C(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_2529AA7F8(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!sub_252E378C4())
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for HomeEntityResponse();
    sub_2529AECD4(&qword_27F540340, type metadata accessor for HomeEntityResponse);
    sub_252E373E4();
    a1 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_24:
      sub_25291AE30();
      return;
    }

    while (1)
    {
      v18 = sub_2529ACF28(v17);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_252E37904())
      {
        type metadata accessor for HomeEntityResponse();
        swift_dynamicCast();
        v17 = v19;
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_24;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_2529AAA28(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_2529AD0B0(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_2529AAB54(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        v14 = sub_2529AD1EC(v12, v13);
        sub_2529AEC6C(v14, v15);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_2529AAC78(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = sub_25293847C(v12, &qword_27F5404C8, &unk_252E3FD60))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      memcpy(__dst, (*(v2 + 48) + 504 * (v10 | (v9 << 6))), sizeof(__dst));
      sub_2529353AC(__dst, v12);
      sub_2529AD364(__dst, __src);
      sub_252935408(__dst);
      memcpy(v12, __src, sizeof(v12));
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2529AADC0(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v56 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v49 = a1;
    v50 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v48 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v49;
          v16 = v50;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v50 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v49;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + ((v50 << 9) | (8 * v18)));
        v19 = *(v6 + 40);
        sub_252E37EC4();
        MEMORY[0x2530AE390](v5);
        v20 = sub_252E37F14();
        v21 = -1 << *(v6 + 32);
        v2 = v20 & ~v21;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0);
      v22 = *(v6 + 48);
      if (*(v22 + 8 * v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v21;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0)
        {
          break;
        }

        if (*(v22 + 8 * v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v53 = v48;
    v54 = v50;
    v55 = v11;
    v52[0] = v49;
    v52[1] = v8;
    v14 = (63 - v21) >> 6;
    v5 = 8 * v14;

    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v42 = swift_slowAlloc();
      memcpy(v42, (v6 + 56), v5);
      v43 = sub_2529AD51C(v42, v14, v6, v2, v52);

      MEMORY[0x2530AED00](v42, -1, -1);
      v48 = v53;
      v50 = v54;
      v6 = v43;
      goto LABEL_43;
    }

LABEL_18:
    v45 = v14;
    v46 = &v44;
    MEMORY[0x28223BE20](v23);
    v14 = &v44 - v24;
    memcpy(&v44 - v24, (v6 + 56), v5);
    v25 = *(v6 + 16);
    *(v14 + 8 * v3) &= ~v4;
    v26 = v25 - 1;
    v3 = 1;
    v4 = v49;
LABEL_19:
    v47 = v26;
    while (v11)
    {
LABEL_27:
      v30 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + ((v50 << 9) | (8 * v30)));
      v31 = *(v6 + 40);
      sub_252E37EC4();
      v2 = &v51;
      MEMORY[0x2530AE390](v5);
      v32 = sub_252E37F14();
      v33 = -1 << *(v6 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = 1 << v34;
      if (((1 << v34) & *(v13 + 8 * (v34 >> 6))) != 0)
      {
        v37 = *(v6 + 48);
        if (*(v37 + 8 * v34) == v5)
        {
LABEL_20:
          v27 = *(v14 + 8 * v35);
          *(v14 + 8 * v35) = v27 & ~v36;
          if ((v27 & v36) != 0)
          {
            v26 = v47 - 1;
            if (__OFSUB__(v47, 1))
            {
              __break(1u);
            }

            if (v47 == 1)
            {

              v6 = MEMORY[0x277D84FA0];
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v38 = ~v33;
          while (1)
          {
            v34 = (v34 + 1) & v38;
            v35 = v34 >> 6;
            v36 = 1 << v34;
            if (((1 << v34) & *(v13 + 8 * (v34 >> 6))) == 0)
            {
              break;
            }

            if (*(v37 + 8 * v34) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v28 = v50;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v29 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v29);
      ++v28;
      if (v11)
      {
        v50 = v29;
        goto LABEL_27;
      }
    }

    if (v12 <= v50 + 1)
    {
      v39 = v50 + 1;
    }

    else
    {
      v39 = v12;
    }

    v50 = v39 - 1;
    v6 = sub_252C53514(v14, v45, v47, v6);
LABEL_43:
    sub_25291AE30();
  }

  else
  {

    v6 = MEMORY[0x277D84FA0];
  }

  v40 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_2529AB248(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v85 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v4 = MEMORY[0x277D84FA0];
    goto LABEL_63;
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for HomeEntityResponse();
    sub_2529AECD4(&qword_27F540340, type metadata accessor for HomeEntityResponse);
    sub_252E373E4();
    v5 = v80;
    v7 = v81;
    v8 = v82;
    v9 = v83;
    v10 = v84;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v75 = v5;
  v76 = v7;
  v77 = v8;
  v78 = v9;
  v66 = v8;
  v14 = (v8 + 64) >> 6;
  v72 = (v4 + 56);
  v79 = v10;
  v69 = v5;
  v70 = v14;
  v68 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = sub_252E37904();
      if (!v22)
      {
        goto LABEL_62;
      }

      v73 = v22;
      type metadata accessor for HomeEntityResponse();
      swift_dynamicCast();
      v20 = v74;
      v18 = v9;
      v2 = v10;
      if (!v74)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        v17 = v14 <= v9 + 1 ? v9 + 1 : v14;
        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_66;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v75 = v5;
      v76 = v7;
      v77 = v66;
      v78 = v18;
      v79 = v2;
      if (!v20)
      {
        goto LABEL_62;
      }
    }

    v23 = *(v4 + 40);
    v24 = v20;
    v25 = sub_252E37684();
    v26 = -1 << *(v4 + 32);
    v7 = v25 & ~v26;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v72[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v68;
    v5 = v69;
    v14 = v70;
  }

  v3 = ~v26;
  v27 = type metadata accessor for HomeEntityResponse();
  v28 = *(*(v4 + 48) + 8 * v7);
  v71 = v27;
  while (1)
  {
    v29 = sub_252E37694();

    if (v29)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v72[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v28 = *(*(v4 + 48) + 8 * v7);
  }

  v31 = *(v4 + 32);
  v63 = ((1 << v31) + 63) >> 6;
  v6 = 8 * v63;
  v3 = v70;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v64 = &v62;
    MEMORY[0x28223BE20](v30);
    v33 = &v62 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v72, v32);
    v34 = *&v33[8 * v5] & ~v16;
    v35 = *(v4 + 16);
    v65 = v33;
    *&v33[8 * v5] = v34;
    v5 = v35 - 1;
    v37 = v68;
    v36 = v69;
LABEL_33:
    v67 = v5;
    while (v36 < 0)
    {
      v38 = sub_252E37904();
      if (!v38)
      {
        goto LABEL_61;
      }

      v73 = v38;
      swift_dynamicCast();
      v39 = v74;
      if (!v74)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = *(v4 + 40);
      v45 = sub_252E37684();
      v46 = v4;
      v47 = -1 << *(v4 + 32);
      v7 = v45 & ~v47;
      v48 = v7 >> 6;
      v49 = 1 << v7;
      if (((1 << v7) & v72[v7 >> 6]) != 0)
      {
        v50 = ~v47;
        while (1)
        {
          v51 = *(*(v46 + 48) + 8 * v7);
          v52 = sub_252E37694();

          if (v52)
          {
            break;
          }

          v7 = (v7 + 1) & v50;
          v48 = v7 >> 6;
          v49 = 1 << v7;
          if (((1 << v7) & v72[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v70;

        v53 = v65[v48];
        v65[v48] = v53 & ~v49;
        v54 = (v53 & v49) == 0;
        v4 = v46;
        v37 = v68;
        v36 = v69;
        v5 = v67;
        if (!v54)
        {
          v5 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            v4 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v46;
        v37 = v68;
        v36 = v69;
        v3 = v70;
        v5 = v67;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v36 + 48) + ((v16 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v16;
LABEL_49:
      v75 = v36;
      v76 = v37;
      v77 = v66;
      v78 = v41;
      v18 = v41;
      v79 = v2;
      if (!v39)
      {
LABEL_61:
        v4 = sub_252C53CA8(v65, v63, v5, v4);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v40 = v18 + 1;
    }

    else
    {
      v40 = v3;
    }

    v41 = v40 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v37 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v57 = v6;

    v58 = v57;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v59 = swift_slowAlloc();
  memcpy(v59, v72, v58);
  sub_2529AD6F4(v59, v63, v4, v7, &v75);
  v61 = v60;

  MEMORY[0x2530AED00](v59, -1, -1);
  v4 = v61;
LABEL_62:
  sub_25291AE30();
LABEL_63:
  v55 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_2529AB8D0(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_252E37EC4();

    sub_252E37044();
    v24 = sub_252E37F14();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_252E37DB4() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_252C532DC(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_252E37EC4();

            sub_252E37044();
            v43 = sub_252E37F14();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_252E37DB4() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_2529AD970(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x2530AED00](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_25291AE30();
    goto LABEL_53;
  }

  result = MEMORY[0x2530AED00](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_2529ABE40(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v40[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v2 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  v40[0] = a1;
  v38 = *(a1 + 16);
  if (v38)
  {
    v4 = 0;
    v5 = a2 + 56;
    v6 = a1 + 32;
    do
    {
      v7 = *(v6 + 8 * v4++);
      v8 = *(v2 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v7);
      v9 = sub_252E37F14();
      v10 = -1 << *(v2 + 32);
      v11 = v9 & ~v10;
      v12 = v11 >> 6;
      v13 = 1 << v11;
      if (((1 << v11) & *(v5 + 8 * (v11 >> 6))) != 0)
      {
        v14 = *(v2 + 48);
        if (*(v14 + 8 * v11) == v7)
        {
LABEL_9:
          v40[1] = v4;
          v15 = (63 - v10) >> 6;
          v16 = 8 * v15;
          v37 = v15;
          if (v15 > 0x80)
          {
            goto LABEL_30;
          }

          {
            v38 = &v36;
            MEMORY[0x28223BE20](i);
            v19 = (&v36 - v18);
            memcpy(&v36 - v18, (v2 + 56), v16);
            v20 = *(v2 + 16);
            v19[v12] &= ~v13;
            v13 = v20 - 1;
            v21 = *(a1 + 16);
            if (v4 == v21)
            {
              break;
            }

            v16 = 1;
            while (v4 < v21)
            {
              v12 = *(v6 + 8 * v4);
              v24 = *(v2 + 40);
              sub_252E37EC4();
              v11 = &v39;
              MEMORY[0x2530AE390](v12);
              v25 = sub_252E37F14();
              v26 = -1 << *(v2 + 32);
              v27 = v25 & ~v26;
              v28 = v27 >> 6;
              v29 = 1 << v27;
              if (((1 << v27) & *(v5 + 8 * (v27 >> 6))) != 0)
              {
                v30 = *(v2 + 48);
                if (*(v30 + 8 * v27) == v12)
                {
LABEL_24:
                  v32 = v19[v28];
                  v19[v28] = v32 & ~v29;
                  if ((v32 & v29) != 0)
                  {
                    if (__OFSUB__(v13--, 1))
                    {
                      goto LABEL_29;
                    }

                    if (!v13)
                    {

                      v2 = MEMORY[0x277D84FA0];
                      goto LABEL_13;
                    }
                  }
                }

                else
                {
                  v31 = ~v26;
                  while (1)
                  {
                    v27 = (v27 + 1) & v31;
                    v28 = v27 >> 6;
                    v29 = 1 << v27;
                    if (((1 << v27) & *(v5 + 8 * (v27 >> 6))) == 0)
                    {
                      break;
                    }

                    if (*(v30 + 8 * v27) == v12)
                    {
                      goto LABEL_24;
                    }
                  }
                }
              }

              ++v4;
              v21 = *(a1 + 16);
              if (v4 == v21)
              {
                goto LABEL_12;
              }
            }

            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:

            if (!swift_stdlib_isStackAllocationSafe())
            {
              v34 = swift_slowAlloc();
              memcpy(v34, (v2 + 56), v16);
              v35 = sub_2529ADBA8(v34, v37, v2, v11, v40);

              MEMORY[0x2530AED00](v34, -1, -1);

              v2 = v35;
              goto LABEL_15;
            }
          }

LABEL_12:
          v2 = sub_252C542E8(v19, v37, v13, v2);
LABEL_13:

          break;
        }

        while (1)
        {
          v11 = (v11 + 1) & ~v10;
          v12 = v11 >> 6;
          v13 = 1 << v11;
          if (((1 << v11) & *(v5 + 8 * (v11 >> 6))) == 0)
          {
            break;
          }

          if (*(v14 + 8 * v11) == v7)
          {
            goto LABEL_9;
          }
        }
      }
    }

    while (v4 != v38);
  }

LABEL_15:
  v22 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_2529AC1D4(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v75 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v4 = MEMORY[0x277D84FA0];
LABEL_60:
    v52 = *MEMORY[0x277D85DE8];
    return v4;
  }

  v5 = a1;
  v60 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1 << *(a1 + 32);
  v65 = ~v8;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = (63 - v8) >> 6;
  v12 = (a2 + 56);

  v15 = 0;
  v67 = v4;
  v68 = v7;
  v66 = v13;
  while (1)
  {
    if (v10)
    {
      goto LABEL_13;
    }

    v16 = v15;
    do
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_62;
      }

      if (v17 >= v11)
      {
LABEL_59:
        sub_25291AE30();
        goto LABEL_60;
      }

      v10 = *(v7 + 8 * v17);
      ++v16;
    }

    while (!v10);
    v15 = v17;
LABEL_13:
    v18 = *(v5 + 48);
    v69 = v15;
    v19 = (v18 + ((v15 << 10) | (16 * __clz(__rbit64(v10)))));
    v21 = *v19;
    v20 = v19[1];
    v22 = *(v4 + 40);
    sub_252E37EC4();
    sub_252E37EE4();
    if (v20)
    {

      sub_252E37044();
    }

    v10 &= v10 - 1;
    v23 = sub_252E37F14();
    v24 = -1 << *(v4 + 32);
    v7 = v23 & ~v24;
    v2 = v7 >> 6;
    v5 = 1 << v7;
    if (((1 << v7) & v12[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v66;
    v4 = v67;
    v7 = v68;
    v15 = v69;
  }

  v25 = v4;
  v26 = ~v24;
  v3 = *(v25 + 48);
  while (1)
  {
    v27 = (v3 + 16 * v7);
    v28 = v27[1];
    if (!v28)
    {
      break;
    }

    if (v20)
    {
      v29 = *v27 == v21 && v28 == v20;
      if (v29 || (v23 = sub_252E37DB4(), (v23 & 1) != 0))
      {
        v3 = v66;
        v30 = v68;
        v72 = v65;
        v73 = v69;
        v74 = v10;
        v70 = v66;
        v71 = v68;
        v31 = v69;

        goto LABEL_30;
      }
    }

LABEL_18:
    v7 = (v7 + 1) & v26;
    v2 = v7 >> 6;
    v5 = 1 << v7;
    if ((v12[v7 >> 6] & (1 << v7)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v20)
  {
    goto LABEL_18;
  }

  v3 = v66;
  v30 = v68;
  v31 = v69;
  v72 = v65;
  v73 = v69;
  v74 = v10;
  v70 = v66;
  v71 = v68;
LABEL_30:
  v4 = v67;
  v32 = *(v67 + 32);
  v61 = ((1 << v32) + 63) >> 6;
  v14 = 8 * v61;
  if ((v32 & 0x3Fu) > 0xD)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v62 = &v59;
    MEMORY[0x28223BE20](v23);
    v7 = &v59 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v7, v12, v33);
    v34 = *(v7 + 8 * v2) & ~v5;
    v35 = *(v4 + 16);
    v64 = v7;
    *(v7 + 8 * v2) = v34;
    v36 = v35 - 1;
LABEL_32:
    v63 = v36;
LABEL_34:
    while (2)
    {
      if (v10)
      {
LABEL_40:
        v39 = *(v3 + 48);
        v69 = v31;
        v40 = (v39 + ((v31 << 10) | (16 * __clz(__rbit64(v10)))));
        v42 = *v40;
        v41 = v40[1];
        v43 = *(v4 + 40);
        sub_252E37EC4();
        sub_252E37EE4();
        if (v41)
        {

          sub_252E37044();
        }

        v10 &= v10 - 1;
        v44 = sub_252E37F14();
        v45 = -1 << *(v4 + 32);
        v7 = v44 & ~v45;
        v5 = v7 >> 6;
        v2 = 1 << v7;
        if (((1 << v7) & v12[v7 >> 6]) == 0)
        {
LABEL_33:

          v3 = v66;
          v4 = v67;
          v30 = v68;
          v31 = v69;
          continue;
        }

        v46 = ~v45;
        v47 = *(v4 + 48);
        while (1)
        {
          v48 = (v47 + 16 * v7);
          v49 = v48[1];
          if (v49)
          {
            if (v41)
            {
              v50 = *v48 == v42 && v49 == v41;
              if (v50 || (sub_252E37DB4() & 1) != 0)
              {

LABEL_54:
                v51 = v64[v5];
                v64[v5] = v51 & ~v2;
                v3 = v66;
                v4 = v67;
                v30 = v68;
                v31 = v69;
                if ((v51 & v2) != 0)
                {
                  v36 = v63 - 1;
                  if (__OFSUB__(v63, 1))
                  {
                    __break(1u);
                  }

                  if (v63 == 1)
                  {

                    v4 = MEMORY[0x277D84FA0];
                    goto LABEL_59;
                  }

                  goto LABEL_32;
                }

                goto LABEL_34;
              }
            }
          }

          else if (!v41)
          {
            goto LABEL_54;
          }

          v7 = (v7 + 1) & v46;
          v5 = v7 >> 6;
          v2 = 1 << v7;
          if ((v12[v7 >> 6] & (1 << v7)) == 0)
          {
            goto LABEL_33;
          }
        }
      }

      break;
    }

    v37 = v31;
    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v11)
      {
        v4 = sub_252C53528(v64, v61, v63, v4);
        goto LABEL_59;
      }

      v10 = *(v30 + 8 * v38);
      ++v37;
      if (v10)
      {
        v31 = v38;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    v54 = v14;

    v55 = v4;
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v30 = v68;
    v31 = v69;
  }

  v56 = swift_slowAlloc();
  memcpy(v56, v12, v54);
  v57 = v60;
  v58 = sub_2529ADD44(v56, v61, v55, v7, &v70);

  if (!v57)
  {

    MEMORY[0x2530AED00](v56, -1, -1);
    v65 = v72;
    v4 = v58;
    goto LABEL_59;
  }

  result = MEMORY[0x2530AED00](v56, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_2529AC7A8(uint64_t a1)
{
  v3 = MEMORY[0x28223BE20](a1);
  v5 = v4;
  v73 = *MEMORY[0x277D85DE8];
  if (*(v4 + 16))
  {
    v7 = v3 + 56;
    v6 = *(v3 + 56);
    v8 = -1 << *(v3 + 32);
    v54 = ~v8;
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v6;
    v11 = (63 - v8) >> 6;
    v12 = v4 + 56;

    v15 = 0;
    v55 = v7;
    v56 = v13;
    while (1)
    {
      if (!v10)
      {
        v16 = v15;
        while (1)
        {
          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v17 >= v11)
          {
            goto LABEL_40;
          }

          v10 = *(v7 + 8 * v17);
          ++v16;
          if (v10)
          {
            v15 = v17;
            goto LABEL_13;
          }
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

LABEL_13:
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v57 = v15;
      v19 = (*(v13 + 48) + 504 * (v18 | (v15 << 6)));
      memcpy(v67, v19, sizeof(v67));
      memcpy(v68, v19, sizeof(v68));
      v20 = *(v5 + 40);
      memcpy(v66, v19, sizeof(v66));
      sub_252E37EC4();
      sub_2529353AC(v67, v65);
      HomeAutomationIntent.hash(into:)(v64);
      v21 = sub_252E37F14();
      v22 = -1 << *(v5 + 32);
      v7 = v21 & ~v22;
      v2 = v7 >> 6;
      v1 = 1 << v7;
      if (((1 << v7) & *(v12 + 8 * (v7 >> 6))) != 0)
      {
        break;
      }

LABEL_6:
      memcpy(v66, v68, sizeof(v66));
      sub_252935408(v66);
      v7 = v55;
      v13 = v56;
      v15 = v57;
    }

    v23 = ~v22;
    while (1)
    {
      v24 = *(v5 + 48) + 504 * v7;
      memcpy(v65, v24, sizeof(v65));
      memcpy(v64, v24, sizeof(v64));
      sub_2529353AC(v65, v63);
      LOBYTE(v24) = _s22HomeAutomationInternal0aB6IntentV2eeoiySbAC_ACtFZ_0(v64, v68);
      memcpy(v66, v64, sizeof(v66));
      sub_252935408(v66);
      if (v24)
      {
        break;
      }

      v7 = (v7 + 1) & v23;
      v2 = v7 >> 6;
      v1 = 1 << v7;
      if (((1 << v7) & *(v12 + 8 * (v7 >> 6))) == 0)
      {
        goto LABEL_6;
      }
    }

    v25 = v55;
    v26 = v56;
    v70 = v54;
    v71 = v57;
    v72 = v10;
    v69[0] = v56;
    v69[1] = v55;
    memcpy(v64, v68, sizeof(v64));
    v27 = sub_252935408(v64);
    v28 = *(v5 + 32);
    v50 = ((1 << v28) + 63) >> 6;
    v14 = 8 * v50;
    if ((v28 & 0x3Fu) <= 0xD)
    {
      goto LABEL_20;
    }

LABEL_45:
    v45 = v14;

    v26 = v45;
    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_48;
    }

    v25 = v55;
    v26 = v56;
LABEL_20:
    v51 = &v49;
    MEMORY[0x28223BE20](v27);
    v7 = &v49 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v7, (v5 + 56), v29);
    *(v7 + 8 * v2) &= ~v1;
    v30 = *(v5 + 16) - 1;
    v52 = v7;
    v53 = v30;
LABEL_21:
    v1 = v57;
    if (v10)
    {
      goto LABEL_27;
    }

LABEL_22:
    v31 = v1;
    do
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v32 >= v11)
      {
        v5 = sub_252C544FC(v52, v50, v53, v5);
        goto LABEL_40;
      }

      v10 = *(v25 + 8 * v32);
      ++v31;
    }

    while (!v10);
    v1 = v32;
    while (1)
    {
LABEL_27:
      v33 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v57 = v1;
      v34 = (*(v26 + 48) + 504 * (v33 | (v1 << 6)));
      memcpy(v62, v34, sizeof(v62));
      memcpy(v63, v34, sizeof(v63));
      v35 = *(v5 + 40);
      memcpy(v61, v34, sizeof(v61));
      sub_252E37EC4();
      sub_2529353AC(v62, v60);
      HomeAutomationIntent.hash(into:)(v59);
      v7 = v59;
      v36 = sub_252E37F14();
      v37 = -1 << *(v5 + 32);
      v2 = v36 & ~v37;
      v38 = v2 >> 6;
      v39 = 1 << v2;
      if (((1 << v2) & *(v12 + 8 * (v2 >> 6))) == 0)
      {
LABEL_37:
        memcpy(v61, v63, sizeof(v61));
        sub_252935408(v61);
LABEL_38:
        v25 = v55;
        v26 = v56;
        goto LABEL_21;
      }

      v40 = ~v37;
      while (1)
      {
        v41 = (*(v5 + 48) + 504 * v2);
        memcpy(v60, v41, sizeof(v60));
        memcpy(v59, v41, sizeof(v59));
        sub_2529353AC(v60, &v58);
        v7 = _s22HomeAutomationInternal0aB6IntentV2eeoiySbAC_ACtFZ_0(v59, v63);
        memcpy(v61, v59, sizeof(v61));
        sub_252935408(v61);
        if (v7)
        {
          break;
        }

        v2 = (v2 + 1) & v40;
        v38 = v2 >> 6;
        v39 = 1 << v2;
        if (((1 << v2) & *(v12 + 8 * (v2 >> 6))) == 0)
        {
          goto LABEL_37;
        }
      }

      memcpy(v59, v63, sizeof(v59));
      sub_252935408(v59);
      v42 = v52[v38];
      v52[v38] = v42 & ~v39;
      if ((v42 & v39) == 0)
      {
        goto LABEL_38;
      }

      v25 = v55;
      v26 = v56;
      v1 = v57;
      if (__OFSUB__(v53, 1))
      {
        break;
      }

      if (v53 == 1)
      {

        v5 = MEMORY[0x277D84FA0];
        goto LABEL_40;
      }

      --v53;
      if (!v10)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_48:
    v46 = v26;
    v47 = swift_slowAlloc();
    memcpy(v47, (v5 + 56), v46);
    v48 = sub_2529ADF90(v47, v50, v5, v7, v69);

    MEMORY[0x2530AED00](v47, -1, -1);
    v54 = v70;
    v5 = v48;
LABEL_40:
    sub_25291AE30();
  }

  else
  {

    v5 = MEMORY[0x277D84FA0];
  }

  v43 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_2529ACE1C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  sub_252E37EC4();
  MEMORY[0x2530AE390](a1);
  v5 = sub_252E37F14();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_252DB02A4();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_2529AE384(v7);
  result = v13;
  *v1 = v14;
  return result;
}

uint64_t sub_2529ACF28(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_252E37914();

    if (v7)
    {
      v8 = sub_2529AE22C();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for HomeEntityResponse();
  v11 = *(v3 + 40);
  v12 = sub_252E37684();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_252E37694();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_252DB02B8();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_2529AE714(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_2529AD0B0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_252E37EC4();
  sub_252E37044();
  v7 = sub_252E37F14();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_252E37DB4() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_252DAFEB0();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_2529AE8B4(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_2529AD1EC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_252E37EC4();
  sub_252E37EE4();
  if (a2)
  {
    sub_252E37044();
  }

  v7 = sub_252E37F14();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  v11 = *(v5 + 48);
  while (1)
  {
    v12 = (v11 + 16 * v9);
    v13 = v12[1];
    if (v13)
    {
      break;
    }

    if (!a2)
    {
      goto LABEL_14;
    }

LABEL_6:
    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  if (!a2)
  {
    goto LABEL_6;
  }

  v14 = *v12 == a1 && v13 == a2;
  if (!v14 && (sub_252E37DB4() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_14:
  v15 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v22 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_252DB000C();
    v17 = v22;
  }

  v18 = (*(v17 + 48) + 16 * v9);
  v19 = *v18;
  v20 = v18[1];
  sub_2529AE52C(v9);
  result = v19;
  *v2 = v22;
  return result;
}

void *sub_2529AD364@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  v3 = v2;
  memcpy(__dst, __src, sizeof(__dst));
  v6 = *v3;
  v7 = *(*v3 + 40);
  memcpy(v20, __src, sizeof(v20));
  sub_252E37EC4();
  HomeAutomationIntent.hash(into:)(v19);
  v8 = sub_252E37F14();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48) + 504 * v10;
      memcpy(v19, v12, sizeof(v19));
      memcpy(__srca, v12, sizeof(__srca));
      sub_2529353AC(v19, v17);
      LOBYTE(v12) = _s22HomeAutomationInternal0aB6IntentV2eeoiySbAC_ACtFZ_0(__srca, __dst);
      memcpy(v20, __srca, sizeof(v20));
      sub_252935408(v20);
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

    v14 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    __srca[0] = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_252DB0FA0();
      v16 = __srca[0];
    }

    memmove(a2, (*(v16 + 48) + 504 * v10), 0x1F8uLL);
    sub_2529AEA78(v10);
    *v3 = __srca[0];
    return GEOLocationCoordinate2DMake(a2);
  }

  else
  {
LABEL_5:
    sub_25293DEE0(v20);
    return memcpy(a2, v20, 0x1F8uLL);
  }
}

uint64_t sub_2529AD51C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    v18 = *(a3 + 40);
    sub_252E37EC4();
    MEMORY[0x2530AE390](v17);
    result = sub_252E37F14();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v10 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + 8 * v20) == v17)
      {
LABEL_2:
        v11 = v7[v21];
        v7[v21] = v11 & ~v22;
        if ((v11 & v22) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v10 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + 8 * v20) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v26 = v12 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_252C53514(v7, a2, v9, a3);
}

void sub_2529AD6F4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v34 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_252E37904())
          {
            goto LABEL_30;
          }

          type metadata accessor for HomeEntityResponse();
          swift_dynamicCast();
          v12 = v35;
          if (!v35)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_252C53CA8(a1, a2, v31, a3);
            return;
          }
        }

        v18 = *(a3 + 40);
        v19 = sub_252E37684();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        type metadata accessor for HomeEntityResponse();
        v24 = *(*(a3 + 48) + 8 * v21);
        v25 = sub_252E37694();

        if (v25)
        {
          break;
        }

        v26 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          v27 = *(*(a3 + 48) + 8 * v21);
          v28 = sub_252E37694();

          if (v28)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:
      v5 = a5;

      v29 = a1[v22];
      a1[v22] = v29 & ~v23;
    }

    while ((v29 & v23) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v31 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_2529AD970(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_252C532DC(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_252E37EC4();

        sub_252E37044();
        v20 = sub_252E37F14();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_252E37DB4() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_2529ADBA8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = result;
  v7 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = *a5;
  v10 = a5[1];
  v11 = *(*a5 + 16);
  if (v10 == v11)
  {
LABEL_2:

    return sub_252C542E8(v6, a2, v8, a3);
  }

  else
  {
    v13 = a3 + 56;
    while ((v10 & 0x8000000000000000) == 0)
    {
      if (v10 >= v11)
      {
        goto LABEL_18;
      }

      v14 = *(v9 + 8 * v10 + 32);
      a5[1] = v10 + 1;
      v15 = *(a3 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v14);
      result = sub_252E37F14();
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v13 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 8 * v17) == v14)
        {
LABEL_13:
          v22 = v6[v18];
          v6[v18] = v22 & ~v19;
          if ((v22 & v19) != 0)
          {
            if (__OFSUB__(v8--, 1))
            {
              goto LABEL_19;
            }

            if (!v8)
            {
              return MEMORY[0x277D84FA0];
            }
          }
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v13 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 8 * v17) == v14)
            {
              goto LABEL_13;
            }
          }
        }
      }

      v9 = *a5;
      v10 = a5[1];
      v11 = *(*a5 + 16);
      if (v10 == v11)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_2529ADD44(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = a3;
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
LABEL_2:
  v31 = v8;
LABEL_4:
  while (2)
  {
    v10 = a5[3];
    v11 = a5[4];
    if (v11)
    {
      v12 = a5[3];
LABEL_10:
      v15 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
      v17 = *v15;
      v16 = v15[1];
      a5[3] = v12;
      a5[4] = (v11 - 1) & v11;
      v18 = *(v6 + 40);
      sub_252E37EC4();
      sub_252E37EE4();
      if (v16)
      {

        sub_252E37044();
      }

      result = sub_252E37F14();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v9 + 8 * (v20 >> 6))) == 0)
      {
LABEL_3:

        v6 = a3;
        continue;
      }

      v23 = ~v19;
      v24 = *(v6 + 48);
      while (1)
      {
        v25 = (v24 + 16 * v20);
        v26 = v25[1];
        if (v26)
        {
          if (v16)
          {
            v27 = *v25 == v17 && v26 == v16;
            if (v27 || (result = sub_252E37DB4(), (result & 1) != 0))
            {

LABEL_24:
              v28 = v32[v21];
              v32[v21] = v28 & ~v22;
              v6 = a3;
              if ((v28 & v22) != 0)
              {
                v8 = v31 - 1;
                if (__OFSUB__(v31, 1))
                {
LABEL_33:
                  __break(1u);
                  return result;
                }

                if (v31 == 1)
                {
                  return MEMORY[0x277D84FA0];
                }

                goto LABEL_2;
              }

              goto LABEL_4;
            }
          }
        }

        else if (!v16)
        {
          goto LABEL_24;
        }

        v20 = (v20 + 1) & v23;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if ((*(v9 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v13 = (a5[2] + 64) >> 6;
  v14 = a5[3];
  while (1)
  {
    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v12 >= v13)
    {
      break;
    }

    v11 = *(a5[1] + 8 * v12);
    ++v14;
    if (v11)
    {
      goto LABEL_10;
    }
  }

  if (v13 <= v10 + 1)
  {
    v29 = v10 + 1;
  }

  else
  {
    v29 = (a5[2] + 64) >> 6;
  }

  a5[3] = v29 - 1;
  a5[4] = 0;

  return sub_252C53528(v32, a2, v31, v6);
}

uint64_t sub_2529ADF90(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v34 = v7 - 1;
  v8 = a3 + 56;
  while (1)
  {
    v9 = a5[3];
    v10 = a5[4];
    if (!v10)
    {
      break;
    }

    v11 = a5[3];
LABEL_9:
    v14 = (v10 - 1) & v10;
    memcpy(v32, (*(*a5 + 48) + 504 * (__clz(__rbit64(v10)) | (v11 << 6))), sizeof(v32));
    a5[3] = v11;
    a5[4] = v14;
    memcpy(__src, v32, 0x1F8uLL);
    v15 = *(a3 + 40);
    memcpy(__dst, v32, sizeof(__dst));
    sub_252E37EC4();
    sub_2529353AC(v32, v30);
    HomeAutomationIntent.hash(into:)(v29);
    v16 = sub_252E37F14();
    v17 = -1 << *(a3 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    v20 = 1 << v18;
    if (((1 << v18) & *(v8 + 8 * (v18 >> 6))) != 0)
    {
      v21 = ~v17;
      while (1)
      {
        v22 = *(a3 + 48) + 504 * v18;
        memcpy(v30, v22, sizeof(v30));
        memcpy(v29, v22, sizeof(v29));
        sub_2529353AC(v30, v28);
        LOBYTE(v22) = _s22HomeAutomationInternal0aB6IntentV2eeoiySbAC_ACtFZ_0(v29, __src);
        memcpy(__dst, v29, sizeof(__dst));
        sub_252935408(__dst);
        if (v22)
        {
          break;
        }

        v18 = (v18 + 1) & v21;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v8 + 8 * (v18 >> 6))) == 0)
        {
          goto LABEL_2;
        }
      }

      memcpy(v29, __src, sizeof(v29));
      result = sub_252935408(v29);
      v23 = v27[v19];
      v27[v19] = v23 & ~v20;
      if ((v23 & v20) != 0)
      {
        v24 = v34 - 1;
        if (__OFSUB__(v34, 1))
        {
LABEL_23:
          __break(1u);
          return result;
        }

        --v34;
        if (!v24)
        {
          return MEMORY[0x277D84FA0];
        }
      }
    }

    else
    {
LABEL_2:
      memcpy(__dst, __src, sizeof(__dst));
      result = sub_252935408(__dst);
    }
  }

  v12 = (a5[2] + 64) >> 6;
  v13 = a5[3];
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v11 >= v12)
    {
      break;
    }

    v10 = *(a5[1] + 8 * v11);
    ++v13;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  if (v12 <= v9 + 1)
  {
    v25 = v9 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return sub_252C544FC(v27, a2, v34, a3);
}

uint64_t sub_2529AE22C()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_252E378C4();
  v4 = swift_unknownObjectRetain();
  v5 = sub_252DA9E88(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_252E37684();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for HomeEntityResponse();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_252E37694();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_2529AE714(v9);
  result = sub_252E37694();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2529AE384(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_252E37844();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_252E37EC4();
        MEMORY[0x2530AE390](v12);
        v13 = sub_252E37F14() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2529AE52C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_252E37844();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v14 = *v12;
        v13 = v12[1];
        sub_252E37EC4();
        sub_252E37EE4();
        if (v13)
        {

          sub_252E37044();
        }

        v15 = sub_252E37F14();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_13;
        }

        if (v2 >= v16)
        {
LABEL_13:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2529AE714(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_252E37844();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_252E37684();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2529AE8B4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_252E37844();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_252E37EC4();

        sub_252E37044();
        v15 = sub_252E37F14();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2529AEA78(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_252E37844();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = (*(v3 + 48) + 504 * v6);
        memcpy(__dst, v11, sizeof(__dst));
        v12 = *(v3 + 40);
        memcpy(v23, v11, sizeof(v23));
        sub_252E37EC4();
        sub_2529353AC(__dst, &v21);
        HomeAutomationIntent.hash(into:)(v22);
        v13 = sub_252E37F14();
        sub_252935408(__dst);
        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 504 * v2);
          v17 = (v15 + 504 * v6);
          if (v2 != v6 || v16 >= v17 + 504)
          {
            memmove(v16, v17, 0x1F8uLL);
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2529AEC6C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2529AECD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2529AED1C()
{
  if (!AFIsInternalInstall())
  {
    return 2;
  }

  v1 = *(v0 + 16);
  if (!v1)
  {
    v10 = 0u;
    v11 = 0u;
    sub_252982F10(&v10);
    v10 = 0u;
    v11 = 0u;
LABEL_18:
    sub_252982F10(&v10);
    return 2;
  }

  v2 = sub_252E36F04();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
    sub_252982F10(&v10);
  }

  v5 = sub_252E36F04();
  v6 = [v1 objectForKey_];

  if (v6)
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 2;
  }

  if (v8 == __PAIR128__(0xE100000000000000, 49))
  {

    return 1;
  }

  else
  {
    v7 = sub_252E37DB4();

    return v7 & 1;
  }
}

uint64_t sub_2529AEF14()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    v10 = 0u;
    v11 = 0u;
    sub_252982F10(&v10);
    v10 = 0u;
    v11 = 0u;
LABEL_20:
    sub_252982F10(&v10);
    return 4;
  }

  v2 = sub_252E36F04();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      if ((v8 + 1) < 4)
      {
        return v8 + 1;
      }

      else
      {
        return 4;
      }
    }
  }

  else
  {
    sub_252982F10(&v10);
  }

  v5 = sub_252E36F04();
  v6 = [v1 objectForKey_];

  if (v6)
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 4;
  }

  if (v8 == __PAIR128__(0xE100000000000000, 48) || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (v8 == __PAIR128__(0xE100000000000000, 49) || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (v8 == __PAIR128__(0xE100000000000000, 50))
  {

    return 3;
  }

  else
  {
    v7 = sub_252E37DB4();

    if (v7)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }
}

void sub_2529AF19C(char a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    if (a1 == 4)
    {
      v3 = 0;
    }

    else
    {
      v3 = sub_252E37DA4();
    }

    v4 = sub_252E36F04();
    [v2 setObject:v3 forKey:v4];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2529AF248()
{
  if (!AFIsInternalInstall())
  {
    return 2;
  }

  v1 = *(v0 + 16);
  if (!v1)
  {
    v10 = 0u;
    v11 = 0u;
    sub_252982F10(&v10);
    v10 = 0u;
    v11 = 0u;
LABEL_18:
    sub_252982F10(&v10);
    return 2;
  }

  v2 = sub_252E36F04();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
    sub_252982F10(&v10);
  }

  v5 = sub_252E36F04();
  v6 = [v1 objectForKey_];

  if (v6)
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 2;
  }

  if (v8 == __PAIR128__(0xE100000000000000, 49))
  {

    return 1;
  }

  else
  {
    v7 = sub_252E37DB4();

    return v7 & 1;
  }
}

uint64_t sub_2529AF444()
{
  if (!AFIsInternalInstall())
  {
    return 0;
  }

  v1 = *(v0 + 16);
  if (!v1)
  {
    v37 = 0u;
    v38 = 0u;
    sub_252982F10(&v37);
    v37 = 0u;
    v38 = 0u;
LABEL_35:
    sub_252982F10(&v37);
    return 0;
  }

  v2 = sub_252E36F04();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (*(&v36 + 1))
  {
    if (swift_dynamicCast())
    {
      return v35;
    }
  }

  else
  {
    sub_252982F10(&v37);
  }

  v5 = sub_252E36F04();
  v6 = [v1 objectForKey_];

  if (v6)
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (!*(&v36 + 1))
  {
    goto LABEL_35;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = *(&v35 + 1);
  v7 = HIBYTE(*(&v35 + 1)) & 0xFLL;
  v8 = v35 & 0xFFFFFFFFFFFFLL;
  if ((*(&v35 + 1) & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(*(&v35 + 1)) & 0xFLL;
  }

  else
  {
    v9 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    return 0;
  }

  if ((*(&v35 + 1) & 0x1000000000000000) != 0)
  {
    v13 = sub_2529AFE0C(v35, *(&v35 + 1), 10);
    v34 = v33;

    if ((v34 & 1) == 0)
    {
      return v13;
    }

    return 0;
  }

  if ((*(&v35 + 1) & 0x2000000000000000) == 0)
  {
    if ((v35 & 0x1000000000000000) != 0)
    {
      v10 = ((*(&v35 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = sub_252E37A84();
      result = *(&v35 + 1);
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v13 = 0;
          if (!v10)
          {
            goto LABEL_79;
          }

          v21 = v10 + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v20)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_78;
      }

      goto LABEL_87;
    }

    if (v11 == 45)
    {
      if (v8 >= 1)
      {
        v12 = v8 - 1;
        if (v8 != 1)
        {
          v13 = 0;
          if (!v10)
          {
            goto LABEL_79;
          }

          v14 = v10 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              break;
            }

            v16 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v16 - v15;
            if (__OFSUB__(v16, v15))
            {
              break;
            }

            ++v14;
            if (!--v12)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_78;
      }

      __break(1u);
      goto LABEL_86;
    }

    if (v8)
    {
      v13 = 0;
      if (!v10)
      {
        goto LABEL_79;
      }

      while (1)
      {
        v27 = *v10 - 48;
        if (v27 > 9)
        {
          break;
        }

        v28 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          break;
        }

        v13 = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        ++v10;
        if (!--v8)
        {
          goto LABEL_77;
        }
      }
    }

    goto LABEL_78;
  }

  *&v37 = v35;
  *(&v37 + 1) = *(&v35 + 1) & 0xFFFFFFFFFFFFFFLL;
  if (v35 != 43)
  {
    if (v35 == 45)
    {
      if (!v7)
      {
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v10 = (v7 - 1);
      if (v7 != 1)
      {
        v13 = 0;
        v17 = &v37 + 1;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          v19 = 10 * v13;
          if ((v13 * 10) >> 64 != (10 * v13) >> 63)
          {
            break;
          }

          v13 = v19 - v18;
          if (__OFSUB__(v19, v18))
          {
            break;
          }

          ++v17;
          if (!--v10)
          {
            goto LABEL_79;
          }
        }
      }
    }

    else if (v7)
    {
      v13 = 0;
      v29 = &v37;
      while (1)
      {
        v30 = *v29 - 48;
        if (v30 > 9)
        {
          break;
        }

        v31 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          break;
        }

        v13 = v31 + v30;
        if (__OFADD__(v31, v30))
        {
          break;
        }

        ++v29;
        if (!--v7)
        {
LABEL_77:
          LOBYTE(v10) = 0;
          goto LABEL_79;
        }
      }
    }

LABEL_78:
    v13 = 0;
    LOBYTE(v10) = 1;
LABEL_79:
    v32 = v10;

    if ((v32 & 1) == 0)
    {
      return v13;
    }

    return 0;
  }

  if (v7)
  {
    v10 = (v7 - 1);
    if (v7 != 1)
    {
      v13 = 0;
      v24 = &v37 + 1;
      while (1)
      {
        v25 = *v24 - 48;
        if (v25 > 9)
        {
          break;
        }

        v26 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          break;
        }

        v13 = v26 + v25;
        if (__OFADD__(v26, v25))
        {
          break;
        }

        ++v24;
        if (!--v10)
        {
          goto LABEL_79;
        }
      }
    }

    goto LABEL_78;
  }

LABEL_88:
  __break(1u);
  return result;
}

uint64_t sub_2529AF8E4()
{
  if (!AFIsInternalInstall())
  {
    return 0;
  }

  v1 = *(v0 + 16);
  if (!v1)
  {
    v37 = 0u;
    v38 = 0u;
    sub_252982F10(&v37);
    v37 = 0u;
    v38 = 0u;
LABEL_35:
    sub_252982F10(&v37);
    return 0;
  }

  v2 = sub_252E36F04();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (*(&v36 + 1))
  {
    if (swift_dynamicCast())
    {
      return v35;
    }
  }

  else
  {
    sub_252982F10(&v37);
  }

  v5 = sub_252E36F04();
  v6 = [v1 objectForKey_];

  if (v6)
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (!*(&v36 + 1))
  {
    goto LABEL_35;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = *(&v35 + 1);
  v7 = HIBYTE(*(&v35 + 1)) & 0xFLL;
  v8 = v35 & 0xFFFFFFFFFFFFLL;
  if ((*(&v35 + 1) & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(*(&v35 + 1)) & 0xFLL;
  }

  else
  {
    v9 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    return 0;
  }

  if ((*(&v35 + 1) & 0x1000000000000000) != 0)
  {
    v13 = sub_2529AFE0C(v35, *(&v35 + 1), 10);
    v34 = v33;

    if ((v34 & 1) == 0)
    {
      return v13;
    }

    return 0;
  }

  if ((*(&v35 + 1) & 0x2000000000000000) == 0)
  {
    if ((v35 & 0x1000000000000000) != 0)
    {
      v10 = ((*(&v35 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = sub_252E37A84();
      result = *(&v35 + 1);
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v13 = 0;
          if (!v10)
          {
            goto LABEL_79;
          }

          v21 = v10 + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v20)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_78;
      }

      goto LABEL_87;
    }

    if (v11 == 45)
    {
      if (v8 >= 1)
      {
        v12 = v8 - 1;
        if (v8 != 1)
        {
          v13 = 0;
          if (!v10)
          {
            goto LABEL_79;
          }

          v14 = v10 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              break;
            }

            v16 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v16 - v15;
            if (__OFSUB__(v16, v15))
            {
              break;
            }

            ++v14;
            if (!--v12)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_78;
      }

      __break(1u);
      goto LABEL_86;
    }

    if (v8)
    {
      v13 = 0;
      if (!v10)
      {
        goto LABEL_79;
      }

      while (1)
      {
        v27 = *v10 - 48;
        if (v27 > 9)
        {
          break;
        }

        v28 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          break;
        }

        v13 = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        ++v10;
        if (!--v8)
        {
          goto LABEL_77;
        }
      }
    }

    goto LABEL_78;
  }

  *&v37 = v35;
  *(&v37 + 1) = *(&v35 + 1) & 0xFFFFFFFFFFFFFFLL;
  if (v35 != 43)
  {
    if (v35 == 45)
    {
      if (!v7)
      {
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v10 = (v7 - 1);
      if (v7 != 1)
      {
        v13 = 0;
        v17 = &v37 + 1;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          v19 = 10 * v13;
          if ((v13 * 10) >> 64 != (10 * v13) >> 63)
          {
            break;
          }

          v13 = v19 - v18;
          if (__OFSUB__(v19, v18))
          {
            break;
          }

          ++v17;
          if (!--v10)
          {
            goto LABEL_79;
          }
        }
      }
    }

    else if (v7)
    {
      v13 = 0;
      v29 = &v37;
      while (1)
      {
        v30 = *v29 - 48;
        if (v30 > 9)
        {
          break;
        }

        v31 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          break;
        }

        v13 = v31 + v30;
        if (__OFADD__(v31, v30))
        {
          break;
        }

        ++v29;
        if (!--v7)
        {
LABEL_77:
          LOBYTE(v10) = 0;
          goto LABEL_79;
        }
      }
    }

LABEL_78:
    v13 = 0;
    LOBYTE(v10) = 1;
LABEL_79:
    v32 = v10;

    if ((v32 & 1) == 0)
    {
      return v13;
    }

    return 0;
  }

  if (v7)
  {
    v10 = (v7 - 1);
    if (v7 != 1)
    {
      v13 = 0;
      v24 = &v37 + 1;
      while (1)
      {
        v25 = *v24 - 48;
        if (v25 > 9)
        {
          break;
        }

        v26 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          break;
        }

        v13 = v26 + v25;
        if (__OFADD__(v26, v25))
        {
          break;
        }

        ++v24;
        if (!--v10)
        {
          goto LABEL_79;
        }
      }
    }

    goto LABEL_78;
  }

LABEL_88:
  __break(1u);
  return result;
}

void *sub_2529AFD98(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540E68, &qword_252E3F1E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_2529AFE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_252E37184();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2529B0398();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_252E37A84();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_2529B0398()
{
  v0 = sub_252E37194();
  v4 = sub_2529B0418(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_2529B0418(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_252E37034();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_252E37754();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2529AFD98(v9, 0);
  v12 = sub_2529B0570(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_252E37034();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_252E37A84();
LABEL_4:

  return sub_252E37034();
}

unint64_t sub_2529B0570(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_252AD5C38(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_252E37124();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_252E37A84();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_252AD5C38(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_252E370F4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_2529B0790(uint64_t a1)
{
  *(v2 + 296) = a1;
  *(v2 + 304) = v1;
  return MEMORY[0x2822009F8](sub_2529B07B0, 0, 0);
}

uint64_t sub_2529B07B0()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v3 + 16), (v0 + 2));

  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v22 = sub_252E338D4();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v5 + 16), (v0 + 7));

  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v21 = sub_252E338F4();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v7 + 16), (v0 + 12));

  v8 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  LOBYTE(v6) = sub_252E33884();
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v9 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v9 + 16), (v0 + 17));

  v10 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  LOBYTE(v8) = sub_252E338C4();
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();

  v11 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  LOBYTE(v10) = [v11 canEvaluatePolicy:2 error:0];

  LOBYTE(v11) = sub_252C4D664(5);
  sub_252929E74(v1 + 32, (v0 + 27));
  v13 = v0[30];
  v12 = v0[31];
  __swift_project_boxed_opaque_existential_1(v0 + 27, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = v22 & 1;
  *(v14 + 25) = v21 & 1;
  *(v14 + 26) = v6 & 1;
  *(v14 + 27) = v8 & 1;
  *(v14 + 28) = v10;
  *(v14 + 29) = v11 & 1;

  sub_252943BD0(sub_2529B10D4, v14, 0, v13, v12);
  v15 = v0[38];

  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  sub_252929E74(v15 + 72, (v0 + 32));
  v16 = v0[35];
  v17 = v0[36];
  __swift_project_boxed_opaque_existential_1(v0 + 32, v16);
  v18 = *(MEMORY[0x277D5BF40] + 4);
  v19 = swift_task_alloc();
  v0[39] = v19;
  *v19 = v0;
  v19[1] = sub_2529B0B1C;

  return MEMORY[0x2821BB5D0](v0 + 22, v16, v17);
}

uint64_t sub_2529B0B1C()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_2529B0C9C;
  }

  else
  {
    v3 = sub_2529B0C30;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2529B0C30()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2529B0C9C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  v1 = v0[40];
  v2 = v0[1];

  return v2();
}

uint64_t sub_2529B0D08(uint64_t a1, char a2, char a3, char a4, char a5, char a6, char a7)
{
  v13 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_252E3F1F0;
  v15 = MEMORY[0x277D839B0];
  *(v14 + 32) = 0x54656C7070417369;
  *(v14 + 40) = 0xE900000000000056;
  *(v14 + 48) = a2;
  *(v14 + 72) = v15;
  *(v14 + 80) = 0x6F50656D6F487369;
  *(v14 + 88) = 0xE900000000000064;
  *(v14 + 96) = a3;
  *(v14 + 120) = v15;
  *(v14 + 128) = 0x63614D7369;
  *(v14 + 136) = 0xE500000000000000;
  *(v14 + 144) = a4;
  *(v14 + 168) = v15;
  *(v14 + 176) = 0x68637461577369;
  *(v14 + 184) = 0xE700000000000000;
  *(v14 + 192) = a5;
  *(v14 + 216) = v15;
  *(v14 + 224) = 0xD000000000000010;
  *(v14 + 232) = 0x8000000252E6E4C0;
  *(v14 + 240) = a6;
  *(v14 + 264) = v15;
  strcpy((v14 + 272), "isSceneRequest");
  *(v14 + 287) = -18;
  *(v14 + 312) = v15;
  *(v14 + 288) = a7;

  sub_252E362B4();
}

uint64_t sub_2529B0ED8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_2529B0790(a1);
}

void *sub_2529B0F70@<X0>(void *a1@<X8>)
{
  type metadata accessor for BlockUnsafeActionsHandler();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

uint64_t sub_2529B0FAC()
{
  v0 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v0 + 16), v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  if (sub_252E338D4())
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v1 + 16), v6);

    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v2 = sub_252E338F4();
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(v7);
    if (v2 & 1) == 0 && (sub_252C4BEB8())
    {
      _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();

      v3 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
      v4 = [v3 canEvaluatePolicy:2 error:0];

      return v4 ^ 1;
    }
  }

  return 0;
}

uint64_t sub_2529B1138@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SprinklerModifyGetPowerToInUseHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

void sub_2529B116C(void *a1)
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
LABEL_45:
    sub_252929F10(v11, v12);
    return;
  }

  if (v8 >> 62)
  {
    v13 = sub_252E378C4();
    if (!v13)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_44;
    }
  }

  v14 = [a1 userTask];
  if (!v14)
  {
LABEL_16:
    sub_252929F10(v8, 0);
    sub_252C515AC();
    return;
  }

  v15 = v14;
  if ([v14 taskType] == 4)
  {

    goto LABEL_13;
  }

  v16 = [v15 taskType];

  if (v16 != 5)
  {
LABEL_44:
    v11 = v8;
    v12 = 0;
    goto LABEL_45;
  }

LABEL_13:
  v17 = [a1 userTask];
  if (!v17)
  {
    goto LABEL_16;
  }

  v18 = v17;
  v19 = [v17 attribute];

  if (v19 != 27)
  {
    goto LABEL_44;
  }

  v20 = 0;
  v21 = v8 & 0xC000000000000001;
  while (1)
  {
    if (v21)
    {
      v22 = MEMORY[0x2530ADF00](v20, v8);
      v23 = __OFADD__(v20++, 1);
      if (v23)
      {
LABEL_42:
        __break(1u);
LABEL_43:

        goto LABEL_44;
      }

      goto LABEL_21;
    }

    if (v20 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v22 = *(v8 + 32 + 8 * v20);

    v23 = __OFADD__(v20++, 1);
    if (v23)
    {
      goto LABEL_42;
    }

LABEL_21:
    v24 = (*v22 + 256);
    v25 = *v24;
    if ((*v24)() == 32)
    {

      if (v20 == v13)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v26 = (*(*v22 + 272))();
      v27 = v26;
      if (!*(v26 + 16) || (v28 = *(v26 + 40), sub_252E37EC4(), MEMORY[0x2530AE390](32), v29 = sub_252E37F14(), v30 = -1 << *(v27 + 32), v31 = v29 & ~v30, ((*(v27 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0))
      {
LABEL_27:

        v34 = (v25)(v33);
        if (v34 == 38)
        {
          v36 = &unk_2864A8B80;
LABEL_31:
          v35 = sub_2529FC004(v36);
        }

        else
        {
          v35 = MEMORY[0x277D84FA0];
          if (v34 == 41)
          {
            v36 = &unk_2864A8BA8;
            goto LABEL_31;
          }
        }

        if (!*(v35 + 16))
        {
          goto LABEL_43;
        }

        v37 = *(v35 + 40);
        sub_252E37EC4();
        MEMORY[0x2530AE390](32);
        v38 = sub_252E37F14();
        v39 = -1 << *(v35 + 32);
        v40 = v38 & ~v39;
        if (((*(v35 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
        {
          goto LABEL_43;
        }

        v41 = ~v39;
        while (*(*(v35 + 48) + 8 * v40) != 32)
        {
          v40 = (v40 + 1) & v41;
          if (((*(v35 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        goto LABEL_38;
      }

      v32 = ~v30;
      while (*(*(v27 + 48) + 8 * v31) != 32)
      {
        v31 = (v31 + 1) & v32;
        if (((*(v27 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_38:

      v21 = v8 & 0xC000000000000001;
      if (v20 == v13)
      {
LABEL_46:
        sub_252929F10(v8, 0);
        return;
      }
    }
  }

  __break(1u);
}

id sub_2529B15C0(void *a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 userTask];
  if (v7)
  {
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v7 = sub_252D6CA80(v7);
    v7[3] = 46;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, qword_27F544DA8);
  (*(v3 + 16))(v6, v8, v2);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_252E379F4();

  v21 = 0xD000000000000027;
  v22 = 0x8000000252E6E530;
  if (v7)
  {
    v9 = v7[3];
  }

  else
  {
    v9 = 0;
  }

  v19 = v9;
  v20 = v7 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540728, qword_252E4B870);
  v10 = sub_252E36F94();
  MEMORY[0x2530AD570](v10);

  sub_252CC3D90(v21, v22, 0xD00000000000009ELL, 0x8000000252E6E560);

  (*(v3 + 8))(v6, v2);
  if (v7)
  {

    v11 = sub_252D6CB58();
  }

  else
  {
    v11 = 0;
  }

  v12 = [a1 filters];
  if (v12)
  {
    v13 = v12;
    type metadata accessor for HomeFilter();
    v14 = sub_252E37264();
  }

  else
  {
    v14 = 0;
  }

  v15 = [a1 time];
  v16 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v16 setUserTask_];
  if (v14)
  {
    type metadata accessor for HomeFilter();
    v17 = sub_252E37254();
  }

  else
  {
    v17 = 0;
  }

  [v16 setFilters_];

  [v16 setTime_];

  return v16;
}

uint64_t sub_2529B1920@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v24 = sub_252E34164();
  v6 = *(v24 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v28, a2, 0x1F8uLL);
  v10 = *(v3 + 16);
  v11 = *(v10 + 16);

  v13 = (v10 + 40);
  v14 = -v11;
  v15 = -1;
  while (1)
  {
    if (v14 + v15 == -1)
    {

LABEL_9:
      v22 = v25;
      *(v25 + 32) = 0;
      *v22 = 0u;
      v22[1] = 0u;
      return result;
    }

    if (++v15 >= *(v10 + 16))
    {
      break;
    }

    v16 = v13 + 2;
    v17 = *(v13 - 1);
    v18 = *v13;
    memcpy(v27, v28, sizeof(v27));
    result = (*(v18 + 16))(v27, a1, v17, v18);
    v13 = v16;
    if (result)
    {

      v20 = *(*(v17 - 8) + 64);
      MEMORY[0x28223BE20](v19);
      memcpy(v27, v28, sizeof(v27));
      (*(v6 + 16))(v9, a1, v24);
      v21 = *(v18 + 8);
      sub_2529353AC(v28, &v26);
      v21(v27, v9, v17, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540E70, &qword_252E3F328);
      if (swift_dynamicCast())
      {
        return sub_252927BEC(v27, v25);
      }

      memset(v27, 0, 40);
      result = sub_2529B1C38(v27);
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t ReformationProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ReformationProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2529B1C38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540E78, &unk_252E3F330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2529B1CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v5 = sub_252E33DB4();
  v4[21] = v5;
  v6 = *(v5 - 8);
  v4[22] = v6;
  v7 = *(v6 + 64) + 15;
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529B1D64, 0, 0);
}

uint64_t sub_2529B1D64()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540798, &qword_252E3F4E0);
  v5 = sub_252E34024();
  v6 = sub_252E34034();
  sub_252E34044();
  v7 = sub_252E33DA4();
  v9 = v8;
  (*(v1 + 8))(v2, v3);
  v10 = [v5 automatableTask];
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = v10;
  type metadata accessor for ControlAutomateHomeIntent();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {

LABEL_13:

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544DA8);
    sub_252CC4050(0xD000000000000042, 0x8000000252E6E6B0, 0xD00000000000008DLL, 0x8000000252E6E700, 0xD000000000000037, 0x8000000252E6E790, 34);
    type metadata accessor for HomeAutomationError();
    sub_2529B2E60(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
    swift_allocError();
    *v24 = v6;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_28;
  }

  v44 = v6;
  v45 = v5;
  v13 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  v14 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
  v15 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
  v16 = v13;

  v17 = [v15 init];
  [v17 setUserTask_];
  type metadata accessor for HomeFilter();
  v18 = sub_252E37254();

  [v17 setFilters_];

  [v17 setTime_];
  v19 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v19 + 136), v0 + 16);

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v20 = sub_252E36AD4();
  __swift_project_value_buffer(v20, qword_27F544D18);
  sub_252E379F4();

  MEMORY[0x2530AD570](v7, v9);
  sub_252CC3D90(0xD000000000000020, 0x8000000252E6C4E0, 0xD00000000000008DLL, 0x8000000252E6E700);

  if ((v7 != 0x6174616D6F747561 || v9 != 0xEF6B736154656C62) && (sub_252E37DB4() & 1) == 0)
  {
    type metadata accessor for HomeAutomationError();
    sub_2529B2E60(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
    swift_allocError();
    *v30 = v7;
    v30[1] = v9;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
LABEL_28:
    v39 = *(v0 + 184);

    v41 = *(v0 + 8);
    goto LABEL_29;
  }

  sub_252974E7C(*(v0 + 144), v0 + 56);
  if (swift_dynamicCast())
  {
    v21 = *(v0 + 144);

    sub_252974E7C(v21, v0 + 88);
    if (swift_dynamicCast())
    {
      v22 = *(v0 + 128);
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_27;
  }

  v25 = [v17 filters];
  if (v25)
  {
    v26 = v25;
    v27 = sub_252E37264();

    if (v27 >> 62)
    {
      result = sub_252E378C4();
      if (result)
      {
        goto LABEL_19;
      }
    }

    else
    {
      result = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_19:
        if ((v27 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x2530ADF00](0, v27);
        }

        else
        {
          if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v29 = *(v27 + 32);
        }

        v22 = v29;

        goto LABEL_27;
      }
    }
  }

  v22 = 0;
LABEL_27:
  v31 = *(v0 + 160);
  v42 = *(v0 + 136);
  v32 = *(v0 + 40);
  v33 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v32);
  v34 = *(v31 + 16);
  v35 = swift_allocObject();
  v35[2] = v44;
  v35[3] = v17;
  v35[4] = v22;
  v36 = *(v33 + 80);
  v43 = v22;
  v37 = v17;
  v38 = v44;
  v36(v34, sub_2529B2EA8, v35, v32, v33);
  v40 = *(v0 + 184);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v41 = *(v0 + 8);
LABEL_29:

  return v41();
}

void sub_2529B2458(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_252A6D5D4(a3);
  v8 = [a1 itemToConfirm];
  sub_252E377F4();
  swift_unknownObjectRelease();
  type metadata accessor for HomeFilter();
  if (swift_dynamicCast())
  {
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  sub_252AA9CA8(a2, v9, v7, a4);
}

uint64_t sub_2529B2514()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2529B2570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B758] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for AutomateHomeNeedsConfirmationStrategy();
  *v13 = v6;
  v13[1] = sub_25293B808;

  return MEMORY[0x2821BA198](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_2529B2650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_252973640(a1, a2, a3);
}

uint64_t sub_2529B2714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B4E0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AutomateHomeNeedsConfirmationStrategy();
  *v9 = v4;
  v9[1] = sub_25296BC70;

  return MEMORY[0x2821B9E10](a1, a2, v10, a4);
}

uint64_t sub_2529B27D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25294B954;

  return sub_2529B1CA0(a1, a2, a3);
}

uint64_t sub_2529B288C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B4F0] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for AutomateHomeNeedsConfirmationStrategy();
  *v11 = v5;
  v11[1] = sub_25294B954;

  return MEMORY[0x2821B9E28](a1, a2, a3, v12, a5);
}

uint64_t sub_2529B2958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B500] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for AutomateHomeNeedsConfirmationStrategy();
  *v11 = v5;
  v11[1] = sub_25294B954;

  return MEMORY[0x2821B9E38](a1, a2, a3, v12, a5);
}

uint64_t sub_2529B2A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B4F8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AutomateHomeNeedsConfirmationStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9E30](a1, a2, v10, a4);
}

uint64_t sub_2529B2AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B508] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AutomateHomeNeedsConfirmationStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9E40](a1, a2, v10, a4);
}

uint64_t sub_2529B2BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5C0B0] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for AutomateHomeNeedsConfirmationStrategy();
  *v13 = v6;
  v13[1] = sub_25294B954;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_2529B2C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C0B8] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for AutomateHomeNeedsConfirmationStrategy();
  *v15 = v7;
  v15[1] = sub_25294B954;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_2529B2E08(uint64_t a1, uint64_t a2)
{
  result = sub_2529B2E60(&qword_27F540E90, a2, type metadata accessor for AutomateHomeNeedsConfirmationStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2529B2E60(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *sub_2529B2EB4()
{
  result = sub_252CC65B0(&unk_2864A7DE0);
  off_27F540E98 = result;
  return result;
}

void *sub_2529B2EDC()
{
  result = sub_252CC65D8(&unk_2864A84B8);
  off_27F540EA0 = result;
  return result;
}

uint64_t sub_2529B2F04(char *a1)
{
  v1 = *a1;
  if (qword_27F53F228 != -1)
  {
    swift_once();
  }

  v2 = off_27F540E98;
  if (*(off_27F540E98 + 2))
  {
    v3 = sub_252A455CC(v1);
    if (v4)
    {
      return *(v2[7] + 8 * v3);
    }
  }

  if (qword_27F53F4B8 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544CD0);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E6ECB0);
  sub_252E37AE4();
  sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000017, 0x8000000252E6ECF0, 462);

  return 0;
}

void sub_2529B3090(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_145;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_146:
    if (qword_27F53F568 != -1)
    {
      swift_once();
    }

    v90 = sub_252E36AD4();
    __swift_project_value_buffer(v90, qword_27F544EE0);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E6EAE0);
    v91 = type metadata accessor for HomeEntityResponse();
    v92 = MEMORY[0x2530AD730](v1, v91);
    MEMORY[0x2530AD570](v92);

    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD00000000000001FLL, 0x8000000252E6EB20, 260);

    return;
  }

LABEL_3:
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v98 = v1;
  v6 = v1 + 32;
  v1 = 0x279711000;
  v100 = v4;
  v101 = v2;
  v99 = v6;
  while (1)
  {
    if (v4)
    {
      v7 = MEMORY[0x2530ADF00](v3, v98);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_142;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    v9 = __OFADD__(v3++, 1);
    if (v9)
    {
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      v2 = sub_252E378C4();
      if (!v2)
      {
        goto LABEL_146;
      }

      goto LABEL_3;
    }

    v10 = [v7 *(v1 + 1760)];
    if (v10)
    {
      break;
    }

LABEL_5:

    if (v3 == v2)
    {
      v16 = 0;
      while (1)
      {
        if (v4)
        {
          v17 = MEMORY[0x2530ADF00](v16, v98);
        }

        else
        {
          if (v16 >= *(v5 + 16))
          {
            goto LABEL_150;
          }

          v17 = *(v6 + 8 * v16);
        }

        v8 = v17;
        v9 = __OFADD__(v16++, 1);
        if (v9)
        {
          break;
        }

        v18 = [v17 *(v1 + 1760)];
        if (v18)
        {
          v19 = v18;
          v20 = v5;
          type metadata accessor for HomeUserTaskResponse();
          v21 = sub_252E37264();

          if (v21 >> 62)
          {
            v22 = sub_252E378C4();
          }

          else
          {
            v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v23 = 0;
          v1 = v21 & 0xC000000000000001;
          while (v22 != v23)
          {
            if (v1)
            {
              v24 = MEMORY[0x2530ADF00](v23, v21);
            }

            else
            {
              if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_144;
              }

              v24 = *(v21 + 8 * v23 + 32);
            }

            v25 = v24;
            if (__OFADD__(v23, 1))
            {
              goto LABEL_143;
            }

            v26 = [v24 taskOutcome];

            ++v23;
            if (v26 == 22)
            {
              goto LABEL_20;
            }
          }

          v4 = v100;
          v2 = v101;
          v5 = v20;
          v6 = v99;
          v1 = &off_279711000;
        }

        if (v16 == v2)
        {
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }
  }

  v11 = v10;
  v6 = v5;
  type metadata accessor for HomeUserTaskResponse();
  v5 = sub_252E37264();

  v4 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
    v12 = sub_252E378C4();
  }

  else
  {
    v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = 0;
  v1 = v5 & 0xC000000000000001;
  while (1)
  {
    if (v12 == v2)
    {

      v4 = v100;
      v2 = v101;
      v5 = v6;
      v6 = v99;
      v1 = &off_279711000;
      goto LABEL_5;
    }

    if (v1)
    {
      v13 = MEMORY[0x2530ADF00](v2, v5);
    }

    else
    {
      if (v2 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v13 = *(v5 + 8 * v2 + 32);
    }

    v14 = v13;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    v15 = [v13 taskOutcome];

    ++v2;
    if (v15 == 21)
    {
LABEL_20:

      return;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  v27 = 0;
  v97 = v5;
  while (1)
  {
    if (v4)
    {
      v28 = MEMORY[0x2530ADF00](v27, v98);
    }

    else
    {
      if (v27 >= *(v5 + 16))
      {
        goto LABEL_158;
      }

      v28 = *(v6 + 8 * v27);
    }

    v29 = v28;
    v9 = __OFADD__(v27++, 1);
    if (v9)
    {
      goto LABEL_157;
    }

    v30 = [v28 *(v1 + 1760)];
    if (!v30)
    {
      break;
    }

    v31 = v30;
    type metadata accessor for HomeUserTaskResponse();
    v32 = sub_252E37264();

    if (v32 >> 62)
    {
      v33 = sub_252E378C4();
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = 0;
    do
    {
      if (v33 == v34)
      {

        v4 = v100;
        v2 = v101;
        v5 = v97;
        v1 = &off_279711000;
        goto LABEL_69;
      }

      if ((v32 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x2530ADF00](v34, v32);
      }

      else
      {
        if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_152;
        }

        v35 = *(v32 + 8 * v34 + 32);
      }

      v36 = v35;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_151;
      }

      v37 = [v35 taskOutcome];

      ++v34;
    }

    while (v37 != 12);

    v4 = v100;
    v2 = v101;
    v5 = v97;
    v1 = 0x279711000;
    if (v27 == v101)
    {
      return;
    }
  }

LABEL_69:

  v38 = 0;
LABEL_70:
  if (v4)
  {
    v39 = MEMORY[0x2530ADF00](v38, v98);
  }

  else
  {
    if (v38 >= *(v5 + 16))
    {
      goto LABEL_162;
    }

    v39 = *(v6 + 8 * v38);
  }

  v40 = v39;
  v9 = __OFADD__(v38, 1);
  v41 = v38 + 1;
  if (v9)
  {
    goto LABEL_161;
  }

  v42 = [v39 *(v1 + 1760)];
  v95 = v41;
  v96 = v40;
  if (v42)
  {
    v43 = v42;
    type metadata accessor for HomeUserTaskResponse();
    v44 = sub_252E37264();

    v45 = [v40 entity];
    if (v45)
    {

      if (v44 >> 62)
      {
        v46 = sub_252E378C4();
        if (v46)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v46 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v46)
        {
LABEL_79:
          v47 = 0;
          v93 = v44 & 0xFFFFFFFFFFFFFF8;
          do
          {
            if ((v44 & 0xC000000000000001) != 0)
            {
              v48 = MEMORY[0x2530ADF00](v47, v44);
            }

            else
            {
              if (v47 >= *(v93 + 16))
              {
                goto LABEL_160;
              }

              v48 = *(v44 + 32 + 8 * v47);
            }

            v49 = v48;
            v9 = __OFADD__(v47++, 1);
            if (v9)
            {
              goto LABEL_159;
            }

            v50 = v5;
            if (qword_27F53F730 != -1)
            {
              swift_once();
            }

            v51 = qword_27F575C40;
            v52 = [v49 taskOutcome];
            if (*(v51 + 16))
            {
              v53 = v52;
              v54 = *(v51 + 40);
              sub_252E37EC4();
              MEMORY[0x2530AE390](v53);
              v55 = sub_252E37F14();
              v56 = -1 << *(v51 + 32);
              v57 = v55 & ~v56;
              if ((*(v51 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
              {
                v58 = ~v56;
                while (*(*(v51 + 48) + 8 * v57) != v53)
                {
                  v57 = (v57 + 1) & v58;
                  if (((*(v51 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
                  {
                    goto LABEL_80;
                  }
                }

                v4 = v100;
                v2 = v101;
                v5 = v50;
LABEL_135:
                v1 = 0x279711000;
                v38 = v95;
                if (v95 != v2)
                {
                  goto LABEL_70;
                }

                return;
              }
            }

LABEL_80:

            v5 = v50;
            v1 = 0x279711000;
          }

          while (v47 != v46);
        }
      }
    }

    v4 = v100;
    v2 = v101;
    v40 = v96;
  }

  v59 = [v40 *(v1 + 1760)];
  if (v59)
  {
    v60 = v59;
    type metadata accessor for HomeUserTaskResponse();
    v61 = sub_252E37264();

    v62 = [v40 entity];
    if (v62)
    {

      if (v61 >> 62)
      {
        v63 = sub_252E378C4();
        if (v63)
        {
          goto LABEL_101;
        }
      }

      else
      {
        v63 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v63)
        {
LABEL_101:
          v64 = 0;
          while (v63 != v64)
          {
            if ((v61 & 0xC000000000000001) != 0)
            {
              v65 = MEMORY[0x2530ADF00](v64, v61);
            }

            else
            {
              if (v64 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_156;
              }

              v65 = *(v61 + 8 * v64 + 32);
            }

            v66 = v65;
            if (__OFADD__(v64, 1))
            {
              goto LABEL_155;
            }

            v67 = [v65 taskOutcome];

            ++v64;
            v5 = v97;
            if (v67 == 23)
            {

              goto LABEL_135;
            }
          }
        }
      }
    }

    v1 = &off_279711000;
    v40 = v96;
  }

  v68 = [v40 *(v1 + 1760)];
  if (!v68)
  {
LABEL_139:

    return;
  }

  v69 = v68;
  type metadata accessor for HomeUserTaskResponse();
  v70 = sub_252E37264();

  v71 = [v40 entity];
  if (!v71)
  {
    goto LABEL_138;
  }

  if (v70 >> 62)
  {
    v72 = sub_252E378C4();
    if (v72)
    {
      goto LABEL_116;
    }

    goto LABEL_138;
  }

  v72 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v72)
  {
LABEL_138:

    goto LABEL_139;
  }

LABEL_116:
  v73 = 0;
  v74 = v70 & 0xC000000000000001;
  v75 = v70 & 0xFFFFFFFFFFFFFF8;
  v94 = v70;
  v76 = v70 + 32;
  while (1)
  {
    if (v74)
    {
      v77 = MEMORY[0x2530ADF00](v73, v94);
    }

    else
    {
      if (v73 >= *(v75 + 16))
      {
        goto LABEL_154;
      }

      v77 = *(v76 + 8 * v73);
    }

    v78 = v77;
    v9 = __OFADD__(v73++, 1);
    if (v9)
    {
      break;
    }

    if (qword_27F53F740 != -1)
    {
      swift_once();
    }

    v79 = qword_27F575C50;
    v80 = [v78 taskOutcome];
    if (!*(v79 + 16))
    {
      goto LABEL_117;
    }

    v81 = v80;
    v82 = *(v79 + 40);
    sub_252E37EC4();
    MEMORY[0x2530AE390](v81);
    v83 = sub_252E37F14();
    v84 = -1 << *(v79 + 32);
    v85 = v83 & ~v84;
    if (((*(v79 + 56 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85) & 1) == 0)
    {
      goto LABEL_117;
    }

    v86 = ~v84;
    while (*(*(v79 + 48) + 8 * v85) != v81)
    {
      v85 = (v85 + 1) & v86;
      if (((*(v79 + 56 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85) & 1) == 0)
      {
        goto LABEL_117;
      }
    }

    v87 = [v78 userTask];
    if (v87)
    {
      v88 = v87;
      v89 = [v87 attribute];

      if (v89 == 67)
      {

        v4 = v100;
        v2 = v101;
        v5 = v97;
        goto LABEL_135;
      }
    }

    else
    {
LABEL_117:
    }

    if (v73 == v72)
    {

      return;
    }
  }

LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
}

void sub_2529B3BE8(unint64_t a1)
{
  sub_2529B3090(a1);
  if ((v2 & 1) == 0)
  {
    return;
  }

  v69 = MEMORY[0x277D84F90];
  v64 = a1;
  if (a1 >> 62)
  {
    goto LABEL_94;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    if (i)
    {
      v4 = 0;
      v65 = i;
      while (1)
      {
        if ((v64 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2530ADF00](v4, v64);
        }

        else
        {
          if (v4 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_93;
          }

          v6 = *(v64 + 32 + 8 * v4);
        }

        v7 = v6;
        if (__OFADD__(v4++, 1))
        {
          goto LABEL_92;
        }

        v9 = [v6 taskResponses];
        if (v9)
        {
          v10 = v9;
          type metadata accessor for HomeUserTaskResponse();
          v11 = sub_252E37264();

          if (v11 >> 62)
          {
            v12 = sub_252E378C4();
            v66 = v7;
            v68 = v4;
            if (v12)
            {
LABEL_16:
              v13 = 0;
              v5 = MEMORY[0x277D84F90];
              while (1)
              {
                if ((v11 & 0xC000000000000001) != 0)
                {
                  v15 = MEMORY[0x2530ADF00](v13, v11);
                }

                else
                {
                  v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v13 >= v14)
                  {
                    goto LABEL_85;
                  }

                  v15 = *(v11 + 8 * v13 + 32);
                }

                v16 = v15;
                v17 = v13 + 1;
                if (__OFADD__(v13, 1))
                {
                  break;
                }

                v18 = [v15 taskOutcome];

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v5 = sub_2529F7BD8(0, *(v5 + 2) + 1, 1, v5);
                }

                v20 = *(v5 + 2);
                v19 = *(v5 + 3);
                if (v20 >= v19 >> 1)
                {
                  v5 = sub_2529F7BD8((v19 > 1), v20 + 1, 1, v5);
                }

                *(v5 + 2) = v20 + 1;
                *&v5[8 * v20 + 32] = v18;
                ++v13;
                if (v17 == v12)
                {
                  goto LABEL_7;
                }
              }

              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              if (v14 != -1)
              {
                swift_once();
              }

              v60 = sub_252E36AD4();
              __swift_project_value_buffer(v60, qword_27F544EE0);
              sub_252E379F4();
              MEMORY[0x2530AD570](v12 - 82, 0x8000000252E6E930);
              v61 = sub_252E37D94();
              MEMORY[0x2530AD570](v61);

              MEMORY[0x2530AD570](v12 - 104, 0x8000000252E6E960);
              v62 = sub_252E37D94();
              MEMORY[0x2530AD570](v62);

              MEMORY[0x2530AD570](v12 - 106, 0x8000000252E6E980);
              v63 = sub_252E37D94();
              MEMORY[0x2530AD570](v63);

              sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E6E7F0, v12 - 87, 0x8000000252E6E9A0, 250);

              return;
            }
          }

          else
          {
            v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v66 = v7;
            v68 = v4;
            if (v12)
            {
              goto LABEL_16;
            }
          }

          v5 = MEMORY[0x277D84F90];
LABEL_7:

          i = v65;
          v4 = v68;
        }

        else
        {
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v21 = sub_252E36AD4();
          __swift_project_value_buffer(v21, qword_27F544D60);
          sub_252E379F4();

          v22 = [v7 description];
          v23 = sub_252E36F34();
          v25 = v24;

          MEMORY[0x2530AD570](v23, v25);

          sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E6E870, 0xD00000000000008CLL, 0x8000000252E6E8A0);

          v5 = MEMORY[0x277D84F90];
        }

        sub_25297A8C0(v5);
        if (v4 == i)
        {
          v26 = v69;
          v27 = *(v69 + 16);
          if (!v27)
          {
            goto LABEL_72;
          }

          goto LABEL_35;
        }
      }
    }

    v26 = MEMORY[0x277D84F90];
    v27 = *(MEMORY[0x277D84F90] + 16);
    if (!v27)
    {
      break;
    }

LABEL_35:
    if (qword_27F53F728 != -1)
    {
      swift_once();
    }

    v28 = 0;
    v29 = v26 + 32;
    v30 = qword_27F575C38;
    v31 = qword_27F575C38 + 56;
    v32 = MEMORY[0x277D84F90];
    do
    {
      if (v28 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_91;
      }

      if (*(v30 + 16))
      {
        v35 = *(v29 + 8 * v28);
        v36 = *(v30 + 40);
        sub_252E37EC4();
        MEMORY[0x2530AE390](v35);
        v37 = sub_252E37F14();
        v38 = -1 << *(v30 + 32);
        v39 = v37 & ~v38;
        if ((*(v31 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
        {
          v40 = ~v38;
          while (*(*(v30 + 48) + 8 * v39) != v35)
          {
            v39 = (v39 + 1) & v40;
            if (((*(v31 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          v69 = v32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA3E0(0, *(v32 + 16) + 1, 1);
          }

          v34 = *(v32 + 16);
          v33 = *(v32 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_2529AA3E0((v33 > 1), v34 + 1, 1);
          }

          *(v32 + 16) = v34 + 1;
          *(v32 + 8 * v34 + 32) = v35;
          v29 = v26 + 32;
        }
      }

LABEL_41:
      ++v28;
    }

    while (v28 != v27);
    v67 = *(v32 + 16);

    if (qword_27F53F730 != -1)
    {
      swift_once();
    }

    v41 = 0;
    v42 = qword_27F575C40;
    v43 = qword_27F575C40 + 56;
    v44 = MEMORY[0x277D84F90];
    while (v41 < *(v26 + 16))
    {
      if (*(v42 + 16))
      {
        v47 = *(v29 + 8 * v41);
        v48 = *(v42 + 40);
        sub_252E37EC4();
        MEMORY[0x2530AE390](v47);
        v49 = sub_252E37F14();
        v50 = -1 << *(v42 + 32);
        v51 = v49 & ~v50;
        if ((*(v43 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
        {
          v52 = ~v50;
          while (*(*(v42 + 48) + 8 * v51) != v47)
          {
            v51 = (v51 + 1) & v52;
            if (((*(v43 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
            {
              goto LABEL_57;
            }
          }

          v69 = v44;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA3E0(0, *(v44 + 16) + 1, 1);
          }

          v46 = *(v44 + 16);
          v45 = *(v44 + 24);
          if (v46 >= v45 >> 1)
          {
            sub_2529AA3E0((v45 > 1), v46 + 1, 1);
          }

          *(v44 + 16) = v46 + 1;
          *(v44 + 8 * v46 + 32) = v47;
          v29 = v26 + 32;
        }
      }

LABEL_57:
      if (++v41 == v27)
      {

        v53 = *(v44 + 16);

        if (v67 == v27)
        {
          if (qword_27F53F568 != -1)
          {
            swift_once();
          }

          v54 = sub_252E36AD4();
          __swift_project_value_buffer(v54, qword_27F544EE0);
          sub_252CC3D90(0xD000000000000029, 0x8000000252E6EA60, 0xD00000000000007BLL, 0x8000000252E6E7F0);
        }

        else
        {
          v12 = 0xD00000000000007BLL;
          if (v67 && v53)
          {
            if (qword_27F53F568 != -1)
            {
              swift_once();
            }

            v58 = sub_252E36AD4();
            __swift_project_value_buffer(v58, qword_27F544EE0);
            sub_252CC4050(0xD000000000000053, 0x8000000252E6EA00, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000024, 0x8000000252E6E9A0, 244);
          }

          else
          {
            v14 = qword_27F53F568;
            if (v53 != v27)
            {
              goto LABEL_86;
            }

            if (qword_27F53F568 != -1)
            {
              swift_once();
            }

            v59 = sub_252E36AD4();
            __swift_project_value_buffer(v59, qword_27F544EE0);
            sub_252CC4050(0xD000000000000029, 0x8000000252E6E9D0, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000024, 0x8000000252E6E9A0, 247);
          }
        }

        return;
      }
    }

LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    ;
  }

LABEL_72:

  if (qword_27F53F568 != -1)
  {
    swift_once();
  }

  v55 = sub_252E36AD4();
  __swift_project_value_buffer(v55, qword_27F544EE0);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000047, 0x8000000252E6EA90);
  v56 = type metadata accessor for HomeEntityResponse();
  v57 = MEMORY[0x2530AD730](v64, v56);
  MEMORY[0x2530AD570](v57);

  sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000024, 0x8000000252E6E9A0, 228);
}

uint64_t sub_2529B46E8(void *a1, uint64_t a2)
{
  v5 = [a1 filters];
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v5;
    type metadata accessor for HomeFilter();
    v8 = sub_252E37264();

    if (!(v8 >> 62))
    {
LABEL_3:
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }
  }

  v9 = sub_252E378C4();
LABEL_4:

  if (v9)
  {
    type metadata accessor for HomeStore();
    v10 = static HomeStore.shared.getter();
    v11 = [a1 filters];
    if (v11)
    {
      v12 = v11;
      type metadata accessor for HomeFilter();
      v13 = sub_252E37264();
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v14 = HomeStore.scenes(matching:)(v13);
    v16 = v15;

    if ((v16 & 1) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFFF8;
      if (v14 >> 62)
      {
        if (sub_252E378C4())
        {
LABEL_13:
          if ((v14 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](0, v14);
          }

          else
          {
            if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_59:
              swift_once();
LABEL_18:
              v30 = sub_252E36AD4();
              __swift_project_value_buffer(v30, qword_27F544EE0);
              sub_252CC4050(0x20676E697373694DLL, 0xEF656D6F6374756FLL, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD00000000000002ALL, 0x8000000252E6EDA0, 324);
              v31 = [a1 userTask];
              v32 = objc_allocWithZone(v13);
              v33 = sub_252E36F04();
              v34 = [v32 v2[226]];

              v35 = v34;
              [v35 setTaskOutcome_];
              [v35 setUserTask_];

              type metadata accessor for MutableHomeUserTaskResponse();
              v36 = swift_allocObject();
              *(v36 + 16) = 0;
              v37 = v35;
              v38 = [v37 userTask];
              if (!v38)
              {
                goto LABEL_34;
              }

LABEL_33:
              v57 = v38;
              type metadata accessor for MutableHomeUserTask();
              swift_allocObject();
              *(v36 + 16) = sub_252D6CA80(v57);
              goto LABEL_34;
            }

            v18 = *(v14 + 32);
          }

          sub_252929F10(v14, 0);
          type metadata accessor for HomeEntity.Builder();
          swift_allocObject();
          v19.n128_f64[0] = HomeEntity.Builder.init()();
          v21 = (*(*v20 + 448))(v19);

          v22 = sub_252B302FC();

          v23 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
          v24 = v22;
          v25 = sub_252E36F04();
          v2 = &off_279711000;
          v26 = [v23 initWithIdentifier:0 displayString:v25];

          v27 = v26;
          [v27 setEntity_];
          v13 = type metadata accessor for HomeUserTaskResponse();
          v16 = MEMORY[0x277D84F90];
          v28 = sub_252E37254();
          [v27 setTaskResponses_];

          type metadata accessor for MutableHomeEntityResponse();
          swift_allocObject();
          v17 = sub_252D6D668(v27);

          v29 = *(a2 + qword_27F545E88);

          sub_252E36744();

          if (v111 > 0xFDu)
          {
            if (qword_27F53F568 == -1)
            {
              goto LABEL_18;
            }

            goto LABEL_59;
          }

          if (v111 >> 6)
          {
            if (v111 >> 6 != 1)
            {
              v71 = [a1 userTask];
              v72 = objc_allocWithZone(v13);
              v73 = sub_252E36F04();
              v74 = [v72 initWithIdentifier:0 displayString:v73];

              v75 = v74;
              [v75 setTaskOutcome_];
              [v75 setUserTask_];

              type metadata accessor for MutableHomeUserTaskResponse();
              v76 = swift_allocObject();
              *(v76 + 16) = 0;
              v77 = [v75 userTask];
              if (v77)
              {
                v78 = v77;
                type metadata accessor for MutableHomeUserTask();
                swift_allocObject();
                *(v76 + 16) = sub_252D6CA80(v78);
              }

              v79 = [v75 taskOutcome];

              *(v76 + 24) = v79;
              v80 = swift_beginAccess();
              MEMORY[0x2530AD700](v80);
              if (*((*(v17 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v17 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v106 = *((*(v17 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_252E372A4();
              }

              sub_252E372D4();
              swift_endAccess();
              if (qword_27F53F568 != -1)
              {
                swift_once();
              }

              v81 = sub_252E36AD4();
              __swift_project_value_buffer(v81, qword_27F544EE0);
              v108 = 0;
              v109 = 0xE000000000000000;
              sub_252E379F4();
              MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E6EDD0);
              sub_252E37AE4();
              sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E6E7F0);

              goto LABEL_36;
            }

            if ((v111 & 1) == 0)
            {
              if (qword_27F53F568 != -1)
              {
                swift_once();
              }

              v39 = sub_252E36AD4();
              __swift_project_value_buffer(v39, qword_27F544EE0);
              v108 = 0;
              v109 = 0xE000000000000000;
              sub_252E379F4();
              MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E6EC30);
              v40 = sub_252E37D94();
              MEMORY[0x2530AD570](v40);

              sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD00000000000002ALL, 0x8000000252E6EDA0, 315);

              v41 = [a1 userTask];
              v42 = objc_allocWithZone(v13);
              v43 = sub_252E36F04();
              v44 = [v42 initWithIdentifier:0 displayString:v43];

              v45 = v44;
              [v45 setTaskOutcome_];
              [v45 setUserTask_];

              type metadata accessor for MutableHomeUserTaskResponse();
              v46 = swift_allocObject();
              *(v46 + 16) = 0;
              v37 = v45;
              v47 = [v37 userTask];
              if (v47)
              {
                v48 = v47;
                type metadata accessor for MutableHomeUserTask();
                swift_allocObject();
                *(v46 + 16) = sub_252D6CA80(v48);
              }

              v49 = [v37 taskOutcome];

              *(v46 + 24) = v49;
              v50 = swift_beginAccess();
              MEMORY[0x2530AD700](v50);
              v16 = MEMORY[0x277D84F90];
              if (*((*(v17 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v17 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_35;
              }

LABEL_28:
              sub_252E372A4();
LABEL_35:
              sub_252E372D4();
              swift_endAccess();

LABEL_36:
              v60 = sub_252D6C15C();
              type metadata accessor for ControlHomeIntentResponse.Builder();
              v61 = swift_allocObject();
              *(v61 + 16) = 4;
              *(v61 + 24) = v16;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
              v62 = swift_allocObject();
              *(v62 + 16) = xmmword_252E3C130;
              *(v62 + 32) = v60;
              v63 = v60;
              sub_2529B3BE8(v62);
              v65 = v64;

              *(v61 + 16) = v65;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_252E3C290;
              *(inited + 32) = v63;
              v67 = v63;
              v68 = sub_25297D0C0(inited);

              swift_setDeallocating();
              v69 = sub_25293847C(inited + 32, &qword_27F540CC8, &unk_252E3F8F0);
              v70 = (*(*v68 + 176))(v69);

              goto LABEL_56;
            }
          }

          else if (v110 != 23)
          {
            if (qword_27F53F568 != -1)
            {
              swift_once();
            }

            v82 = sub_252E36AD4();
            __swift_project_value_buffer(v82, qword_27F544EE0);
            v109 = 0xE000000000000000;
            MEMORY[0x2530AD570](0x6F72726520746F47, 0xEA00000000002072);
            LOBYTE(v107) = v110;
            sub_252E37AE4();
            sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD00000000000002ALL, 0x8000000252E6EDA0, 307);

            v108 = v110;
            v83 = sub_2529B2F04(&v108);
            if (v84)
            {
              v85 = 7;
            }

            else
            {
              v85 = v83;
            }

            v86 = [a1 userTask];
            v87 = objc_allocWithZone(v13);
            v88 = sub_252E36F04();
            v89 = [v87 initWithIdentifier:0 displayString:v88];

            v90 = v89;
            [v90 setTaskOutcome_];
            [v90 setUserTask_];

            type metadata accessor for MutableHomeUserTaskResponse();
            v36 = swift_allocObject();
            *(v36 + 16) = 0;
            v37 = v90;
            v38 = [v37 userTask];
            if (v38)
            {
              goto LABEL_33;
            }

            goto LABEL_34;
          }

          if (qword_27F53F568 != -1)
          {
            swift_once();
          }

          v51 = sub_252E36AD4();
          __swift_project_value_buffer(v51, qword_27F544EE0);
          sub_252CC4050(0xD000000000000012, 0x8000000252E6EC90, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD00000000000002ALL, 0x8000000252E6EDA0, 320);
          v52 = [a1 userTask];
          v53 = objc_allocWithZone(v13);
          v54 = sub_252E36F04();
          v55 = [v53 initWithIdentifier:0 displayString:v54];

          v56 = v55;
          [v56 setTaskOutcome_];
          [v56 setUserTask_];

          type metadata accessor for MutableHomeUserTaskResponse();
          v36 = swift_allocObject();
          *(v36 + 16) = 0;
          v37 = v56;
          v38 = [v37 userTask];
          if (v38)
          {
            goto LABEL_33;
          }

LABEL_34:
          v58 = [v37 taskOutcome];

          *(v36 + 24) = v58;
          v59 = swift_beginAccess();
          MEMORY[0x2530AD700](v59);
          if (*((*(v17 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v17 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_35;
          }

          goto LABEL_28;
        }
      }

      else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }
    }

    sub_252929F10(v14, v16 & 1);
  }

  if (qword_27F53F568 != -1)
  {
    swift_once();
  }

  v91 = sub_252E36AD4();
  __swift_project_value_buffer(v91, qword_27F544EE0);
  sub_252CC4050(0xD000000000000027, 0x8000000252E6ED70, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD00000000000002ALL, 0x8000000252E6EDA0, 288);
  type metadata accessor for ControlHomeIntentResponse.Builder();
  v92 = swift_allocObject();
  *(v92 + 16) = 102;
  *(v92 + 24) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
  v93 = swift_initStackObject();
  *(v93 + 16) = xmmword_252E3C290;
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v94.n128_f64[0] = HomeEntity.Builder.init()();
  v96 = (*(*v95 + 448))(v94);

  v97 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
  v98 = v96;
  v99 = sub_252E36F04();
  v100 = [v97 initWithIdentifier:0 displayString:v99];

  v101 = v100;
  [v101 setEntity_];
  type metadata accessor for HomeUserTaskResponse();
  v102 = sub_252E37254();
  [v101 setTaskResponses_];

  *(v93 + 32) = v101;
  v103 = sub_25297D0C0(v93);

  swift_setDeallocating();
  v104 = sub_25293847C(v93 + 32, &qword_27F540CC8, &unk_252E3F8F0);
  v70 = (*(*v103 + 176))(v104);
LABEL_56:

  return v70;
}