uint64_t sub_252A6E87C(unint64_t a1)
{
  v2 = sub_252A6D8E8(a1);
  if (sub_252A6BBB4(a1))
  {
    v3 = 10;
  }

  else
  {
    v3 = v2;
  }

  v4 = sub_252CC703C(MEMORY[0x277D84F90]);
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_6;
    }

    return v4;
  }

LABEL_30:
  v5 = sub_252E378C4();
  if (!v5)
  {
    return v4;
  }

LABEL_6:
  v6 = 0;
  while (2)
  {
    for (i = v6; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](i, a1);
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v8 = *(a1 + 8 * i + 32);
      }

      v9 = v8;
      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v10 = sub_252A6D400(v3, v8);
      if (v11)
      {
        break;
      }

      if (v6 == v5)
      {
        return v4;
      }
    }

    v12 = v11;
    v13 = v10;
    v35 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v13;
    v37 = v4;
    v15 = v13;
    v16 = v12;
    v17 = sub_252A44A10(v15, v12);
    v19 = v4[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      __break(1u);
      break;
    }

    v23 = v18;
    if (v4[3] < v22)
    {
      sub_252E00C54(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_252A44A10(v36, v16);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_34;
      }

LABEL_21:
      v26 = v35;
      v25 = v36;
      if (v23)
      {
LABEL_22:
        v27 = v17;

        v28 = v37[7];
        v29 = *(v28 + 8 * v27);
        *(v28 + 8 * v27) = v26;
        v4 = v37;

        goto LABEL_26;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v30 = v17;
    sub_252E04028();
    v17 = v30;
    v26 = v35;
    v25 = v36;
    if (v23)
    {
      goto LABEL_22;
    }

LABEL_24:
    v4[(v17 >> 6) + 8] |= 1 << v17;
    v31 = (v4[6] + 16 * v17);
    *v31 = v25;
    v31[1] = v16;
    *(v4[7] + 8 * v17) = v26;

    v32 = v4[2];
    v21 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (!v21)
    {
      v4[2] = v33;
LABEL_26:
      if (v6 != v5)
      {
        continue;
      }

      return v4;
    }

    break;
  }

  __break(1u);
LABEL_34:
  result = sub_252E37E24();
  __break(1u);
  return result;
}

uint64_t sub_252A6EACC(unint64_t a1)
{
  v1 = sub_252A6E87C(a1);
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = sub_252DFA618(*(v1 + 16), 0);
    v6 = sub_252E08D9C(&v14, v5 + 4, v3, v2);

    sub_25291AE30();
    if (v6 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = v4;
LABEL_5:
  v14 = v5;
  sub_252A6C93C(&v14);

  v7 = v14;
  v14 = v4;
  v8 = v7[2];
  if (v8)
  {
    v9 = 0;
    v10 = v7 + 6;
    while (v9 < v7[2])
    {
      v11 = *v10;
      MEMORY[0x2530AD700]();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      ++v9;
      sub_252E372D4();
      v10 += 3;
      if (v8 == v9)
      {
        v4 = v14;
        goto LABEL_12;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_12:

    return v4;
  }

  return result;
}

void *sub_252A6EC64(unint64_t a1)
{
  v2 = sub_252A6D8E8(a1);
  if (sub_252A6BBB4(a1))
  {
    v3 = 10;
  }

  else
  {
    v3 = v2;
  }

  if (a1 >> 62)
  {
LABEL_48:
    v4 = sub_252E378C4();
    if (v4)
    {
      goto LABEL_6;
    }

LABEL_49:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_50;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_49;
  }

LABEL_6:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = &off_279711000;
  do
  {
    v8 = v5;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (v3 > 3)
      {
        break;
      }

      if (v3 == 1)
      {
        v11 = [v9 v7[241]];
        if (v11)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      if (v3 != 2)
      {
        if (v3 == 3)
        {
          v11 = [v9 roomName];
          if (v11)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }

        goto LABEL_30;
      }

      v11 = [v9 zoneName];
      if (v11)
      {
        goto LABEL_40;
      }

LABEL_37:

      ++v8;
      if (v5 == v4)
      {
        goto LABEL_50;
      }
    }

    if (v3 > 10)
    {
      if (v3 != 11)
      {
        if (v3 == 12)
        {
          v11 = [v9 targetMap];
          if (v11)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }

        goto LABEL_30;
      }

      v11 = [v9 targetArea];
      if (v11)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    if (v3 == 4)
    {
      v11 = [v9 groupName];
      if (v11)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    if (v3 != 7)
    {
LABEL_30:
      v11 = [v9 homeEntityName];
      if (v11)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v11 = [v9 outerDeviceName];
    if (!v11)
    {
      v11 = [v10 homeEntityName];
      if (!v11)
      {
        goto LABEL_37;
      }
    }

LABEL_40:
    v12 = v11;
    v32 = sub_252E36F34();
    v14 = v13;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2529F7A80(0, *(v6 + 2) + 1, 1, v6);
    }

    v16 = *(v6 + 2);
    v15 = *(v6 + 3);
    if (v16 >= v15 >> 1)
    {
      v6 = sub_2529F7A80((v15 > 1), v16 + 1, 1, v6);
    }

    *(v6 + 2) = v16 + 1;
    v17 = &v6[16 * v16];
    *(v17 + 4) = v32;
    *(v17 + 5) = v14;
    v7 = &off_279711000;
  }

  while (v5 != v4);
LABEL_50:
  v18 = *(v6 + 2);
  if (v18)
  {
    v19 = 0;
    v20 = (v6 + 40);
    v21 = MEMORY[0x277D84F90];
    v22 = v6;
    while (v19 < *(v6 + 2))
    {
      v24 = *(v20 - 1);
      v23 = *v20;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_2529F8958(0, v21[2] + 1, 1, v21);
      }

      v26 = v21[2];
      v25 = v21[3];
      if (v26 >= v25 >> 1)
      {
        v21 = sub_2529F8958((v25 > 1), v26 + 1, 1, v21);
      }

      ++v19;
      v21[2] = v26 + 1;
      v27 = &v21[3 * v26];
      v27[4] = v3;
      v27[5] = v24;
      v27[6] = v23;
      v20 += 2;
      v6 = v22;
      if (v18 == v19)
      {
        goto LABEL_60;
      }
    }

    __break(1u);
    goto LABEL_63;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_60:

  if (qword_27F53F488 != -1)
  {
LABEL_63:
    swift_once();
  }

  v28 = sub_252E36AD4();
  __swift_project_value_buffer(v28, qword_27F544C40);
  sub_252E379F4();

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540E48, &qword_252E3F0A0);
  v30 = MEMORY[0x2530AD730](v21, v29);
  MEMORY[0x2530AD570](v30);

  sub_252CC3D90(0xD000000000000025, 0x8000000252E754B0, 0xD00000000000007ALL, 0x8000000252E753A0);

  return v21;
}

uint64_t sub_252A6F108(unint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v58 = &v48 - v6;
  v61 = sub_252E36324();
  v7 = *(v61 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v61);
  v57 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v48 - v11;
  result = sub_252A6EC64(a1);
  v13 = result;
  if ((a2 & 1) != 0 && *(result + 16) >= 5uLL)
  {
    sub_2529A3834(result, result + 32, 0, 9uLL);
    v15 = v14;

    v13 = v15;
  }

  v16 = MEMORY[0x277D84F90];
  v62 = MEMORY[0x277D84F90];
  v17 = *(v13 + 16);
  if (v17)
  {
    v18 = 0;
    v55 = (v7 + 56);
    v56 = (v7 + 32);
    v53 = (v7 + 8);
    v54 = (v7 + 16);
    v19 = v13 + 48;
    v51 = v17 - 1;
    v52 = v13 + 48;
    do
    {
      v59 = v16;
      v20 = (v19 + 24 * v18);
      v21 = v18;
      while (1)
      {
        if (v21 >= *(v13 + 16))
        {
          __break(1u);
          return result;
        }

        v22 = *(v20 - 1);
        v23 = *v20;
        v18 = v21 + 1;
        v24 = *(v20 - 2);
        swift_bridgeObjectRetain_n();
        v25 = sub_252D161E8(v24, v22, v23);
        sub_252E376D4();
        v27 = v26;

        if (v27)
        {
          break;
        }

        result = swift_bridgeObjectRelease_n();
        v20 += 3;
        ++v21;
        if (v17 == v18)
        {
          v16 = v59;
          goto LABEL_14;
        }
      }

      v28 = v57;
      sub_252E37024();

      v29 = v28;
      v30 = v61;
      (*v56)(v60, v29, v61);
      v31 = type metadata accessor for HomeAutomationTappableCommand.Builder(0);
      v32 = *(v31 + 48);
      v33 = *(v31 + 52);
      v34 = swift_allocObject();
      v48 = v34;
      v49 = OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_label;
      v35 = *v55;
      (*v55)(v34 + OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_label, 1, 1, v30);
      v59 = OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_command;
      v36 = v34 + OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_command;
      v37 = v30;
      v35(v36, 1, 1, v30);
      v50 = v35;
      v38 = v58;
      sub_252E37024();

      v35(v38, 0, 1, v37);
      v40 = v48;
      v39 = v49;
      swift_beginAccess();
      sub_2529D032C(v38, v40 + v39, &qword_27F540298, &unk_252E3C270);
      swift_endAccess();
      sub_25293847C(v38, &qword_27F540298, &unk_252E3C270);
      v41 = v61;
      (*v54)(v38, v60, v61);
      v50(v38, 0, 1, v41);
      v42 = v59;
      swift_beginAccess();
      sub_2529D032C(v38, v40 + v42, &qword_27F540298, &unk_252E3C270);
      swift_endAccess();
      sub_25293847C(v38, &qword_27F540298, &unk_252E3C270);
      v43 = type metadata accessor for HomeAutomationTappableCommand(0);
      v44 = *(v43 + 48);
      v45 = *(v43 + 52);
      swift_allocObject();
      sub_252D1A938(v40);

      v46 = (*v53)(v60, v61);
      MEMORY[0x2530AD700](v46);
      if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v47 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v16 = v62;
      v19 = v52;
    }

    while (v51 != v21);
  }

LABEL_14:

  return v16;
}

void *sub_252A6F5D8(unint64_t a1, void *a2)
{
  v37 = a2;
  v42 = type metadata accessor for DisambiguationOption(0);
  v36 = *(v42 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v40 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v9;
  if (qword_27F53F488 != -1)
  {
LABEL_22:
    swift_once();
  }

  v10 = sub_252E36AD4();
  __swift_project_value_buffer(v10, qword_27F544C40);
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_252E379F4();

  v44 = 0xD000000000000026;
  v45 = 0x8000000252E75370;
  v11 = type metadata accessor for HomeFilter();
  v12 = MEMORY[0x2530AD730](a1, v11);
  MEMORY[0x2530AD570](v12);

  sub_252CC3D90(v44, v45, 0xD00000000000007ALL, 0x8000000252E753A0);

  v13 = sub_252A6EC64(a1);
  sub_252A6D8E8(a1);
  if (!(a1 >> 62))
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_24:
    v17 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

  v14 = sub_252E378C4();
  if (!v14)
  {
    goto LABEL_24;
  }

LABEL_4:
  v15 = 0;
  v16 = v13 + 6;
  v17 = MEMORY[0x277D84F90];
  do
  {
    v43 = v17;
    v18 = &v16[3 * v15];
    v19 = v15;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x2530ADF00](v19, a1);
      }

      else
      {
        if (v19 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v20 = *(a1 + 8 * v19 + 32);
      }

      v21 = v20;
      v15 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v19 < v13[2])
      {
        break;
      }

      v18 += 3;
      ++v19;
      if (v15 == v14)
      {
        v17 = v43;
        goto LABEL_25;
      }
    }

    v35 = v16;
    v22 = *(v18 - 2);
    v38 = *(v18 - 1);
    v23 = *v18;

    v24 = v39;
    sub_252A6BF88(v21, v22, v37, v39);
    sub_252A6FA90(v24, v40);

    v34 = sub_252D161E8(v22, v38, v23);

    v25 = *(v42 + 24);
    v33 = v25;
    v26 = type metadata accessor for IconConfiguration();
    v27 = v41;
    (*(*(v26 - 8) + 56))(v41 + v25, 1, 1, v26);
    v28 = v38;
    *v27 = v38;
    v27[1] = v23;
    v27[2] = v28;
    v27[3] = v23;
    v38 = *(v42 + 28);
    sub_25293F638(0, &qword_27F541B88, 0x277D47438);

    sub_252E33054();
    sub_252A6FB00(v40, v27 + v33);
    v17 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_2529F8AA0(0, v17[2] + 1, 1, v17);
    }

    v30 = v17[2];
    v29 = v17[3];
    if (v30 >= v29 >> 1)
    {
      v17 = sub_2529F8AA0(v29 > 1, v30 + 1, 1, v17);
    }

    sub_25293847C(v39, &qword_27F541B50, &unk_252E47970);
    v17[2] = v30 + 1;
    sub_252A6FB70(v41, v17 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v30);
    v16 = v35;
  }

  while (v15 != v14);
LABEL_25:

  return v17;
}

uint64_t sub_252A6FA90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A6FB00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A6FB70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisambiguationOption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A6FBD4(uint64_t a1, uint64_t a2)
{
  v2[155] = a2;
  v2[154] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v2[156] = swift_task_alloc();
  v2[157] = swift_task_alloc();
  v2[158] = swift_task_alloc();
  v4 = sub_252E36324();
  v2[159] = v4;
  v5 = *(v4 - 8);
  v2[160] = v5;
  v6 = *(v5 + 64) + 15;
  v2[161] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A6FCE8, 0, 0);
}

uint64_t sub_252A6FCE8()
{
  v0[162] = sub_252A6D8E8(v0[155]);
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v0[163] = *(v1 + 23);

  v2 = v0[161];
  sub_252E37024();

  v3 = sub_252B680FC();
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    memcpy(v0 + 2, (v4 + 504 * v5 - 472), 0x1F8uLL);
    sub_2529353AC((v0 + 2), (v0 + 65));

    v6 = v0[63];

    sub_252935408((v0 + 2));
    v7 = *(v6 + 16);

    if (v7)
    {
      v8 = sub_252BAFC18(v0[155]);
      if (qword_27F53F2A0 != -1)
      {
        v74 = v8;
        swift_once();
        v8 = v74;
      }

      v9 = off_27F541CD0;
      if (*(off_27F541CD0 + 2) && (v10 = sub_252A488EC(v8), (v11 & 1) != 0))
      {
        v12 = v0[158];
        v77 = *(v9[7] + v10);
        AccessoryTypeSemantic.rawValue.getter();
        sub_252E362F4();
        v13 = 0;
      }

      else
      {
        v13 = 1;
      }

      v33 = v0[155];
      v34 = *(v0[160] + 56);
      v34(v0[158], v13, 1, v0[159]);
      if (v33 >> 62)
      {
        if (v0[155] < 0)
        {
          v75 = v0[155];
        }

        v35 = sub_252E378C4();
      }

      else
      {
        v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v36 = *(v0[160] + 16);
      v37 = v0[161];
      v38 = v0[159];
      if (v35 == 2)
      {
        v39 = v0[157];
        v36(v39, v37, v0[159]);
        v34(v39, 0, 1, v38);
        v40 = swift_task_alloc();
        v0[164] = v40;
        *v40 = v0;
        v40[1] = sub_252A70588;
        v41 = v0[158];
        v42 = v0[157];

        return sub_252D26DDC(v42, v41);
      }

      else
      {
        v44 = v0[156];
        v36(v44, v37, v0[159]);
        v34(v44, 0, 1, v38);
        v45 = swift_task_alloc();
        v0[167] = v45;
        *v45 = v0;
        v45[1] = sub_252A70D58;
        v46 = v0[158];
        v47 = v0[156];

        return sub_252D263CC(v47, v46);
      }
    }
  }

  else
  {
  }

  v14 = v0[162];
  if (v14 == 1 || v14 == 12)
  {
    v32 = v0[163];
    (*(v0[160] + 8))(v0[161], v0[159]);

    goto LABEL_20;
  }

  if (v14 != 7)
  {
    v48 = v0[163];
    v49 = v0[161];
    v50 = v0[160];
    v51 = v0[159];
    v52 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v52 + 136), (v0 + 128));

    v53 = v0[131];
    v54 = v0[132];
    __swift_project_boxed_opaque_existential_1(v0 + 128, v53);
    v55 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v55 + 16), (v0 + 133));

    v27 = (*(v54 + 96))(0xD000000000000010, 0x8000000252E754E0, 0x736C6562614CLL, 0xE600000000000000, v0 + 133, v53, v54);
    v29 = v56;

    __swift_destroy_boxed_opaque_existential_1(v0 + 133);
    (*(v50 + 8))(v49, v51);
    if (v29)
    {
      v30 = v0[155];
      v31 = v0 + 128;
      goto LABEL_33;
    }

    v58 = v0 + 128;
    goto LABEL_36;
  }

  v15 = sub_252B288A4(v0[155]);
  if (qword_27F53F2A0 != -1)
  {
    v76 = v15;
    swift_once();
    v15 = v76;
  }

  v16 = off_27F541CD0;
  if (*(off_27F541CD0 + 2))
  {
    v17 = sub_252A488EC(v15);
    if ((v18 & 1) != 0 && *(v16[7] + v17) != 52)
    {
      v65 = AccessoryTypeSemantic.rawValue.getter();
      v67 = v66;
      if (v65 == AccessoryTypeSemantic.rawValue.getter() && v67 == v68)
      {
      }

      else
      {
        v69 = sub_252E37DB4();

        if ((v69 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v70 = v0[163];
      v71 = v0[161];
      v72 = v0[160];
      v73 = v0[159];

      (*(v72 + 8))(v71, v73);
LABEL_20:
      v27 = 0;
      v29 = 0;
LABEL_37:
      v30 = 0;
      v57 = 0;
      goto LABEL_38;
    }
  }

LABEL_17:
  v19 = v0[163];
  v20 = v0[161];
  v21 = v0[160];
  v22 = v0[159];
  v23 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v23 + 136), (v0 + 138));

  v24 = v0[141];
  v25 = v0[142];
  __swift_project_boxed_opaque_existential_1(v0 + 138, v24);
  v26 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v26 + 16), (v0 + 143));

  v27 = (*(v25 + 96))(0x4542414C5F4C4C41, 0xE90000000000004CLL, 0x736C6562614CLL, 0xE600000000000000, v0 + 143, v24, v25);
  v29 = v28;

  __swift_destroy_boxed_opaque_existential_1(v0 + 143);
  (*(v21 + 8))(v20, v22);
  if (!v29)
  {
    v58 = v0 + 138;
LABEL_36:
    __swift_destroy_boxed_opaque_existential_1(v58);
    v27 = 0;
    goto LABEL_37;
  }

  v30 = v0[155];
  v31 = v0 + 138;
LABEL_33:
  __swift_destroy_boxed_opaque_existential_1(v31);

  v57 = 3;
LABEL_38:
  v59 = v0[161];
  v60 = v0[158];
  v61 = v0[157];
  v62 = v0[156];
  v63 = v0[154];
  *v63 = v27;
  *(v63 + 8) = v29;
  *(v63 + 16) = v27;
  *(v63 + 24) = v29;
  *(v63 + 40) = 0;
  *(v63 + 48) = 0;
  *(v63 + 32) = v30;
  *(v63 + 56) = v57;

  v64 = v0[1];

  return v64();
}

uint64_t sub_252A70588(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1312);
  v6 = *v2;
  v4[165] = v1;

  v7 = v4[157];
  if (v1)
  {
    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    v8 = sub_252A71460;
  }

  else
  {
    v4[166] = a1;
    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    v8 = sub_252A706F0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252A706F0()
{
  v1 = *(v0 + 1328);
  v2 = [v1 dialog];

  sub_25293F638(0, &qword_27F542128, 0x277D052B0);
  v3 = sub_252E37264();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_25293847C(*(v0 + 1264), &qword_27F540298, &unk_252E3C270);

    v17 = *(v0 + 1296);
    if (v17 == 1 || v17 == 12)
    {
      v31 = *(v0 + 1304);
      (*(*(v0 + 1280) + 8))(*(v0 + 1288), *(v0 + 1272));

      goto LABEL_20;
    }

    if (v17 != 7)
    {
      v32 = *(v0 + 1304);
      v33 = *(v0 + 1288);
      v34 = *(v0 + 1280);
      v35 = *(v0 + 1272);
      v36 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
      sub_252929E74((v36 + 136), v0 + 1024);

      v37 = *(v0 + 1048);
      v38 = *(v0 + 1056);
      __swift_project_boxed_opaque_existential_1((v0 + 1024), v37);
      v39 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
      sub_252929E74((v39 + 16), v0 + 1064);

      v8 = (*(v38 + 96))(0xD000000000000010, 0x8000000252E754E0, 0x736C6562614CLL, 0xE600000000000000, v0 + 1064, v37, v38);
      v10 = v40;

      __swift_destroy_boxed_opaque_existential_1((v0 + 1064));
      (*(v34 + 8))(v33, v35);
      if (v10)
      {
        v15 = *(v0 + 1240);
        v30 = (v0 + 1024);
        goto LABEL_23;
      }

      v41 = (v0 + 1024);
      goto LABEL_26;
    }

    v4 = sub_252B288A4(*(v0 + 1240));
    if (qword_27F53F2A0 == -1)
    {
LABEL_14:
      v18 = off_27F541CD0;
      if (!*(off_27F541CD0 + 2))
      {
        goto LABEL_17;
      }

      v19 = sub_252A488EC(v4);
      if ((v20 & 1) == 0 || *(v18[7] + v19) == 52)
      {
        goto LABEL_17;
      }

      v49 = AccessoryTypeSemantic.rawValue.getter();
      v51 = v50;
      if (v49 == AccessoryTypeSemantic.rawValue.getter() && v51 == v52)
      {
      }

      else
      {
        v53 = sub_252E37DB4();

        if ((v53 & 1) == 0)
        {
LABEL_17:
          v21 = *(v0 + 1304);
          v22 = *(v0 + 1288);
          v23 = *(v0 + 1280);
          v24 = *(v0 + 1272);
          v25 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
          sub_252929E74((v25 + 136), v0 + 1104);

          v26 = *(v0 + 1128);
          v27 = *(v0 + 1136);
          __swift_project_boxed_opaque_existential_1((v0 + 1104), v26);
          v28 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
          sub_252929E74((v28 + 16), v0 + 1144);

          v8 = (*(v27 + 96))(0x4542414C5F4C4C41, 0xE90000000000004CLL, 0x736C6562614CLL, 0xE600000000000000, v0 + 1144, v26, v27);
          v10 = v29;

          __swift_destroy_boxed_opaque_existential_1((v0 + 1144));
          (*(v23 + 8))(v22, v24);
          if (v10)
          {
            v15 = *(v0 + 1240);
            v30 = (v0 + 1104);
LABEL_23:
            __swift_destroy_boxed_opaque_existential_1(v30);

            v16 = 3;
            goto LABEL_28;
          }

          v41 = (v0 + 1104);
LABEL_26:
          __swift_destroy_boxed_opaque_existential_1(v41);
          v8 = 0;
          goto LABEL_27;
        }
      }

      v54 = *(v0 + 1304);
      v55 = *(v0 + 1288);
      v56 = *(v0 + 1280);
      v57 = *(v0 + 1272);

      (*(v56 + 8))(v55, v57);
LABEL_20:
      v8 = 0;
      v10 = 0;
LABEL_27:
      v15 = 0;
      v16 = 0;
      goto LABEL_28;
    }

LABEL_38:
    v58 = v4;
    swift_once();
    v4 = v58;
    goto LABEL_14;
  }

  v4 = sub_252E378C4();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x2530ADF00](0, v3);
    goto LABEL_6;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_38;
  }

  v5 = *(v3 + 32);
LABEL_6:
  v6 = v5;

  v7 = [v6 fullPrint];

  v8 = sub_252E36F34();
  v10 = v9;

  if (qword_27F53F488 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 1304);
  v12 = *(v0 + 1280);
  v59 = *(v0 + 1272);
  v60 = *(v0 + 1288);
  v13 = *(v0 + 1264);
  v61 = *(v0 + 1240);
  v14 = sub_252E36AD4();
  __swift_project_value_buffer(v14, qword_27F544C40);
  sub_252E379F4();

  MEMORY[0x2530AD570](v8, v10);
  sub_252CC3D90(0xD000000000000016, 0x8000000252E75500, 0xD00000000000007ALL, 0x8000000252E753A0);

  sub_25293847C(v13, &qword_27F540298, &unk_252E3C270);
  (*(v12 + 8))(v60, v59);

  v15 = *(v0 + 1240);
  v16 = 3;
LABEL_28:
  v42 = *(v0 + 1288);
  v43 = *(v0 + 1264);
  v44 = *(v0 + 1256);
  v45 = *(v0 + 1248);
  v46 = *(v0 + 1232);
  *v46 = v8;
  *(v46 + 8) = v10;
  *(v46 + 16) = v8;
  *(v46 + 24) = v10;
  *(v46 + 40) = 0;
  *(v46 + 48) = 0;
  *(v46 + 32) = v15;
  *(v46 + 56) = v16;

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_252A70D58(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1336);
  v6 = *v2;
  v4[168] = v1;

  v7 = v4[156];
  if (v1)
  {
    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    v8 = sub_252A71544;
  }

  else
  {
    v4[169] = a1;
    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    v8 = sub_252A70EC0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252A70EC0()
{
  v1 = *(v0 + 1352);
  v2 = [v1 dialog];

  sub_25293F638(0, &qword_27F542128, 0x277D052B0);
  v3 = sub_252E37264();

  if (v3 >> 62)
  {
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
      if ((v3 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x2530ADF00](0, v3);
        goto LABEL_6;
      }

      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v3 + 32);
LABEL_6:
        v6 = v5;
        v7 = *(v0 + 1304);
        v8 = *(v0 + 1288);
        v9 = *(v0 + 1280);
        v10 = *(v0 + 1272);
        v11 = *(v0 + 1264);
        v12 = *(v0 + 1240);

        v13 = [v6 fullPrint];

        v14 = sub_252E36F34();
        v16 = v15;

        sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
        (*(v9 + 8))(v8, v10);

        v17 = *(v0 + 1240);
        v18 = 3;
        goto LABEL_26;
      }

      __break(1u);
LABEL_36:
      v60 = v4;
      swift_once();
      v4 = v60;
      goto LABEL_12;
    }
  }

  sub_25293847C(*(v0 + 1264), &qword_27F540298, &unk_252E3C270);

  v19 = *(v0 + 1296);
  if (v19 == 1 || v19 == 12)
  {
    v33 = *(v0 + 1304);
    (*(*(v0 + 1280) + 8))(*(v0 + 1288), *(v0 + 1272));

    goto LABEL_18;
  }

  if (v19 != 7)
  {
    v34 = *(v0 + 1304);
    v35 = *(v0 + 1288);
    v36 = *(v0 + 1280);
    v37 = *(v0 + 1272);
    v38 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v38 + 136), v0 + 1024);

    v39 = *(v0 + 1048);
    v40 = *(v0 + 1056);
    __swift_project_boxed_opaque_existential_1((v0 + 1024), v39);
    v41 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v41 + 16), v0 + 1064);

    v14 = (*(v40 + 96))(0xD000000000000010, 0x8000000252E754E0, 0x736C6562614CLL, 0xE600000000000000, v0 + 1064, v39, v40);
    v16 = v42;

    __swift_destroy_boxed_opaque_existential_1((v0 + 1064));
    (*(v36 + 8))(v35, v37);
    if (v16)
    {
      v17 = *(v0 + 1240);
      v32 = (v0 + 1024);
      goto LABEL_21;
    }

    v43 = (v0 + 1024);
    goto LABEL_24;
  }

  v4 = sub_252B288A4(*(v0 + 1240));
  if (qword_27F53F2A0 != -1)
  {
    goto LABEL_36;
  }

LABEL_12:
  v20 = off_27F541CD0;
  if (!*(off_27F541CD0 + 2))
  {
    goto LABEL_15;
  }

  v21 = sub_252A488EC(v4);
  if ((v22 & 1) == 0 || *(v20[7] + v21) == 52)
  {
    goto LABEL_15;
  }

  v51 = AccessoryTypeSemantic.rawValue.getter();
  v53 = v52;
  if (v51 == AccessoryTypeSemantic.rawValue.getter() && v53 == v54)
  {
  }

  else
  {
    v55 = sub_252E37DB4();

    if ((v55 & 1) == 0)
    {
LABEL_15:
      v23 = *(v0 + 1304);
      v24 = *(v0 + 1288);
      v25 = *(v0 + 1280);
      v26 = *(v0 + 1272);
      v27 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
      sub_252929E74((v27 + 136), v0 + 1104);

      v28 = *(v0 + 1128);
      v29 = *(v0 + 1136);
      __swift_project_boxed_opaque_existential_1((v0 + 1104), v28);
      v30 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
      sub_252929E74((v30 + 16), v0 + 1144);

      v14 = (*(v29 + 96))(0x4542414C5F4C4C41, 0xE90000000000004CLL, 0x736C6562614CLL, 0xE600000000000000, v0 + 1144, v28, v29);
      v16 = v31;

      __swift_destroy_boxed_opaque_existential_1((v0 + 1144));
      (*(v25 + 8))(v24, v26);
      if (v16)
      {
        v17 = *(v0 + 1240);
        v32 = (v0 + 1104);
LABEL_21:
        __swift_destroy_boxed_opaque_existential_1(v32);

        v18 = 3;
        goto LABEL_26;
      }

      v43 = (v0 + 1104);
LABEL_24:
      __swift_destroy_boxed_opaque_existential_1(v43);
      v14 = 0;
      goto LABEL_25;
    }
  }

  v56 = *(v0 + 1304);
  v57 = *(v0 + 1288);
  v58 = *(v0 + 1280);
  v59 = *(v0 + 1272);

  (*(v58 + 8))(v57, v59);
LABEL_18:
  v14 = 0;
  v16 = 0;
LABEL_25:
  v17 = 0;
  v18 = 0;
LABEL_26:
  v44 = *(v0 + 1288);
  v45 = *(v0 + 1264);
  v46 = *(v0 + 1256);
  v47 = *(v0 + 1248);
  v48 = *(v0 + 1232);
  *v48 = v14;
  *(v48 + 8) = v16;
  *(v48 + 16) = v14;
  *(v48 + 24) = v16;
  *(v48 + 40) = 0;
  *(v48 + 48) = 0;
  *(v48 + 32) = v17;
  *(v48 + 56) = v18;

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_252A71460()
{
  v1 = v0[165];
  v2 = v0[163];
  v3 = v0[161];
  v4 = v0[160];
  v5 = v0[159];
  v6 = v0[158];
  v7 = v0[157];
  v8 = v0[156];

  sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_252A71544()
{
  v1 = v0[168];
  v2 = v0[163];
  v3 = v0[161];
  v4 = v0[160];
  v5 = v0[159];
  v6 = v0[158];
  v7 = v0[157];
  v8 = v0[156];

  sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_252A71628(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 128) = v3;
  *v3 = v1;
  v3[1] = sub_252A716D8;

  return sub_252A6FBD4(v1 + 16, a1);
}

uint64_t sub_252A716D8()
{
  v2 = *(*v1 + 128);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_252A71808, 0, 0);
  }
}

uint64_t sub_252A71808()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = *(v0 + 16);
    *(v0 + 112) = *(v0 + 32);

    sub_252A71EB8(v3, v2, v4, v5);
    v7 = sub_252AD85DC(v6, v1, v3, v2, v4, v5);
    if (v7)
    {
      v8 = v7;
      v9 = (v0 + 80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_252E3C130;
      *(v10 + 32) = v8;
    }

    else
    {
      v9 = (v0 + 96);
      v10 = MEMORY[0x277D84F90];
    }

    *v9 = *(v0 + 112);
    sub_25293847C(v9, &unk_27F541300, &qword_252E3C100);
    sub_252A71E74(v3, v2, v4, v5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_252A71970(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v4 = type metadata accessor for DisambiguationOption(0);
  v1[11] = v4;
  v5 = *(v4 - 8);
  v1[12] = v5;
  v6 = *(v5 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[15] = v7;
  *v7 = v1;
  v7[1] = sub_252A71AC4;

  return sub_252A6FBD4((v1 + 2), a1);
}

uint64_t sub_252A71AC4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[13];
    v5 = v2[14];
    v7 = v2[10];

    v8 = *(v4 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_252A71C1C, 0, 0);
  }
}

uint64_t sub_252A71C1C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v32 = *(v0 + 56);
    v33 = *(v0 + 48);
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);
    v4 = *(v0 + 104);
    v5 = *(v0 + 80);
    v28 = *(v0 + 16);
    v29 = *(v0 + 88);
    v6 = *(v0 + 40);
    v27 = *(v0 + 32);
    v7 = type metadata accessor for IconConfiguration();
    v8 = *(*(v7 - 8) + 56);
    v8(v5, 1, 1, v7);

    v31 = v2;
    v30 = v3;
    v9 = v3;
    v10 = v28;
    sub_252D157C8(v33, v32, v2, v9);
    v11 = *(v29 + 24);
    v8(v4 + v11, 1, 1, v7);
    *v4 = v28;
    v4[1] = v1;
    if (v6)
    {
      v10 = v27;
      v12 = v6;
    }

    else
    {

      v12 = v1;
    }

    v15 = *(v0 + 104);
    v14 = *(v0 + 112);
    v16 = *(v0 + 88);
    v17 = *(v0 + 96);
    v18 = *(v0 + 80);
    *(v15 + 16) = v10;
    *(v15 + 24) = v12;
    v19 = *(v16 + 28);
    sub_25293F638(0, &qword_27F541B88, 0x277D47438);
    sub_252E33054();
    sub_252A6FB00(v18, v4 + v11);
    sub_252A6FB70(v15, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402A0, &unk_252E3C0D0);
    v20 = *(v17 + 72);
    v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_252E3C290;
    sub_252A6FB70(v14, v13 + v21);

    sub_252A71E74(v33, v32, v31, v30);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v23 = *(v0 + 104);
  v22 = *(v0 + 112);
  v24 = *(v0 + 80);

  v25 = *(v0 + 8);

  return v25(v13);
}

void sub_252A71E74(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        if (a4 != 4)
        {
          return;
        }

        goto LABEL_5;
      }

      goto LABEL_9;
    }

LABEL_5:

    return;
  }

  if (a4)
  {
    if (a4 != 1)
    {
      return;
    }

    goto LABEL_5;
  }

LABEL_9:
}

id sub_252A71EB8(id result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        if (a4 != 4)
        {
          return result;
        }

        return result;
      }
    }

    return result;
  }

  if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }

    return result;
  }
}

uint64_t static RestrictedGuestCheckUtils.makeRestrictedGuestBlockingResponse(forHome:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 184) = a1;
  v4 = swift_task_alloc();
  *(v2 + 192) = v4;
  *v4 = v2;
  v4[1] = sub_252A71FA0;

  return static RestrictedGuestCheckUtils.makeRestrictedGuestBlockingOutput(forHome:)(v2 + 56, a2);
}

uint64_t sub_252A71FA0()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_252A7209C, 0, 0);
}

uint64_t sub_252A7209C()
{
  if (*(v0 + 80))
  {
    sub_252A52D18((v0 + 56), v0 + 16);
    if (qword_27F53F300 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 184);
    sub_252929E74(&unk_27F542160, v0 + 96);
    sub_252929E74(v0 + 16, v0 + 136);
    v2 = swift_allocObject();
    sub_252A52D18((v0 + 136), v2 + 16);
    v3 = sub_252E331C4();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    *(v0 + 176) = sub_252E331B4();
    sub_252E33AE4();
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    sub_25293847C(v0 + 56, &qword_27F542188, &qword_252E43C80);
    if (qword_27F53F508 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 184);
    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544DC0);
    sub_252CC4050(0xD000000000000031, 0x8000000252E75520, 0xD000000000000080, 0x8000000252E75560, 0xD00000000000002DLL, 0x8000000252E755F0, 57);
    sub_252E33B24();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_252A722CC()
{
  v0 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v0 + 136), &unk_27F542130);
}

uint64_t sub_252A72314()
{
  v0 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v1 = *(v0 + 23);

  qword_27F542158 = v1;
  return result;
}

uint64_t sub_252A72370()
{
  v0 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v0 + 96), &unk_27F542160);
}

uint64_t static RestrictedGuestCheckUtils.makeRestrictedGuestBlockingOutput(forHome:)(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = *(*(sub_252E33944() - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v4 = sub_252E34014();
  v2[16] = v4;
  v5 = *(v4 - 8);
  v2[17] = v5;
  v6 = *(v5 + 64) + 15;
  v2[18] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v8 = *(*(type metadata accessor for CallToActionSnippetModel() - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v9 = sub_252E36324();
  v2[21] = v9;
  v10 = *(v9 - 8);
  v2[22] = v10;
  v11 = *(v10 + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A72564, 0, 0);
}

uint64_t sub_252A72564()
{
  v1 = *(v0 + 184);
  v2 = [*(v0 + 112) name];
  sub_252E36F34();

  sub_252E37024();

  if (qword_27F53F508 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = *(v0 + 112);
  v7 = sub_252E36AD4();
  *(v0 + 192) = __swift_project_value_buffer(v7, qword_27F544DC0);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  MEMORY[0x2530AD570](0x656D614E656D6F68, 0xEA0000000000203ALL);
  sub_252E37AE4();
  sub_252CC3D90(*(v0 + 80), *(v0 + 88), 0xD000000000000080, 0x8000000252E75560);

  sub_252A73144(v6, v4);
  if (qword_27F53F2F8 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 176);
  v9 = *(v0 + 168);
  v10 = *(v0 + 152);
  (*(v8 + 16))(v10, *(v0 + 184), v9);
  (*(v8 + 56))(v10, 0, 1, v9);
  v11 = swift_task_alloc();
  *(v0 + 200) = v11;
  *v11 = v0;
  v11[1] = sub_252A727AC;
  v12 = *(v0 + 152);

  return sub_252D2B76C(v12);
}

uint64_t sub_252A727AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v5 = *(*v2 + 152);
  v8 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
  if (v1)
  {
    v6 = sub_252A72DBC;
  }

  else
  {
    v6 = sub_252A728F0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252A728F0()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[18];
  v4 = v0[15];
  sub_252E33924();
  *(swift_task_alloc() + 16) = v1;
  sub_252E33F54();

  sub_252E379F4();

  v5 = [v1 description];
  v6 = sub_252E36F34();
  v8 = v7;

  MEMORY[0x2530AD570](v6, v8);

  sub_252CC3D90(0xD000000000000017, 0x8000000252E75690, 0xD000000000000080, 0x8000000252E75560);

  if (qword_27F53F2F0 != -1)
  {
    swift_once();
  }

  v9 = v0[26];
  v10 = v0[20];
  __swift_project_boxed_opaque_existential_1(qword_27F542130, qword_27F542148);
  v11 = swift_task_alloc();
  v0[28] = v11;
  *(v11 + 16) = v9;
  v12 = swift_task_alloc();
  v0[29] = v12;
  *(v12 + 16) = v10;
  v13 = swift_task_alloc();
  v0[30] = v13;
  *v13 = v0;
  v13[1] = sub_252A72B60;
  v14 = v0[18];

  return sub_252A199A8((v0 + 2), &unk_252E43CA8, v11, &unk_252E43CB8, v12, v14, 1, 0);
}

uint64_t sub_252A72B60()
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v5 = sub_252A72F6C;
  }

  else
  {
    v5 = sub_252A72CB4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A72CB4()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_252A52D18((v0 + 16), v7);
  v8 = *(v0 + 184);
  v9 = *(v0 + 152);
  v10 = *(v0 + 144);
  v11 = *(v0 + 120);
  sub_252A73C58(*(v0 + 160));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252A72DBC()
{
  v1 = v0[27];
  v2 = v0[24];
  v16 = v0[23];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[13];
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E75620);
  swift_getErrorValue();
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[9];
  v9 = sub_252E37E54();
  MEMORY[0x2530AD570](v9);

  sub_252CC4050(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E75560, 0xD00000000000002BLL, 0x8000000252E75660, 42);

  (*(v4 + 8))(v16, v3);
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  v10 = v0[23];
  v11 = v0[19];
  v12 = v0[18];
  v13 = v0[15];
  sub_252A73C58(v0[20]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_252A72F6C()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 248);
  v5 = *(v0 + 192);
  v19 = *(v0 + 184);
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 104);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E75620);
  swift_getErrorValue();
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  v11 = *(v0 + 72);
  v12 = sub_252E37E54();
  MEMORY[0x2530AD570](v12);

  sub_252CC4050(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E75560, 0xD00000000000002BLL, 0x8000000252E75660, 42);

  (*(v7 + 8))(v19, v6);
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  v13 = *(v0 + 184);
  v14 = *(v0 + 152);
  v15 = *(v0 + 144);
  v16 = *(v0 + 120);
  sub_252A73C58(*(v0 + 160));

  v17 = *(v0 + 8);

  return v17();
}

void sub_252A73144(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27F53F2F0 != -1)
  {
    swift_once();
  }

  v4 = qword_27F542148;
  v5 = unk_27F542150;
  __swift_project_boxed_opaque_existential_1(qword_27F542130, qword_27F542148);
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v6 + 16), &v50);

  v7 = (*(v5 + 96))(0xD000000000000013, 0x8000000252E758A0, 0x736C6562614CLL, 0xE600000000000000, &v50, v4, v5);
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_1(&v50);
  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0x20746361746E6F43;
  }

  if (!v9)
  {
    v9 = 0xED000072656E774FLL;
  }

  v11 = [a1 owner];
  if (v11)
  {
    v12 = v11;
    v47 = v9;
    v48 = v10;
    v13 = [v11 name];
    v14 = sub_252E36F34();
    v16 = v15;

    v17 = [v12 userID];
    if (v17)
    {
      v18 = v17;
      v19 = sub_252E36F34();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = 0x4E746361746E6F63;
    v25 = inited + 32;
    v26 = MEMORY[0x277D837D0];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xEB00000000656D61;
    *(inited + 48) = v14;
    *(inited + 56) = v16;
    v27 = sub_252CC630C(inited);
    swift_setDeallocating();
    sub_25293847C(v25, &unk_27F541F10, &unk_252E42870);
    if (v21)
    {
      v51 = v26;
      *&v50 = v19;
      *(&v50 + 1) = v21;
      sub_252A00AF4(&v50, v49);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_2529FAE1C(v49, 0xD000000000000013, 0x8000000252E75940, isUniquelyReferenced_nonNull_native);
    }

    v51 = v26;
    *&v50 = 0xD000000000000013;
    *(&v50 + 1) = 0x8000000252E758C0;
    sub_252A00AF4(&v50, v49);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_2529FAE1C(v49, 0x6C646E7542707061, 0xEB00000000644965, v29);
    v30 = v27;
    if (qword_27F53F508 != -1)
    {
      swift_once();
    }

    v31 = sub_252E36AD4();
    __swift_project_value_buffer(v31, qword_27F544DC0);
    *&v50 = 0x6174614472657375;
    *(&v50 + 1) = 0xEA0000000000203ALL;
    v32 = sub_252E36E54();
    MEMORY[0x2530AD570](v32);

    sub_252CC3D90(v50, *(&v50 + 1), 0xD000000000000080, 0x8000000252E75560);

    v33 = objc_allocWithZone(MEMORY[0x277D5C220]);
    v34 = sub_252E36F04();
    v35 = [v33 initWithIdentifier_];

    sub_252CC1408(v30);

    v36 = sub_252E36E24();

    [v35 setUserData_];

    v37 = objc_opt_self();
    v38 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v38 + 16), &v50);

    __swift_project_boxed_opaque_existential_1(&v50, v51);
    v39 = sub_252E33904();
    v40 = [v37 runSiriKitExecutorCommandWithContext:v39 payload:v35];

    __swift_destroy_boxed_opaque_existential_1(&v50);
    *&v50 = 0;
    *(&v50 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v50 = 0xD000000000000012;
    *(&v50 + 1) = 0x8000000252E75920;
    v41 = [v40 description];
    v42 = sub_252E36F34();
    v44 = v43;

    MEMORY[0x2530AD570](v42, v44);

    sub_252CC3D90(v50, *(&v50 + 1), 0xD000000000000080, 0x8000000252E75560);

    v45 = type metadata accessor for CallToActionSnippetModel();
    *(a2 + *(v45 + 24)) = 1;
    *&v50 = v48;
    *(&v50 + 1) = v47;
    sub_252E330C4();
    v46 = *(v45 + 20);
    sub_252A75B60();
    sub_252E33054();
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277D47438]) init];
    v22 = type metadata accessor for CallToActionSnippetModel();
    *(a2 + *(v22 + 24)) = 0;
    *&v50 = v10;
    *(&v50 + 1) = v9;
    sub_252E330C4();
    v23 = *(v22 + 20);
    sub_252A75B60();
    sub_252E33054();
  }
}

uint64_t sub_252A73784(uint64_t a1, void *a2)
{
  sub_252E33FB4();
  v3 = [a2 catId];
  sub_252E36F34();

  return sub_252E33FA4();
}

uint64_t sub_252A737F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252A73810, 0, 0);
}

uint64_t sub_252A73810()
{
  v1 = v0[2];
  sub_252A75AFC(v0[3], v1);
  v2 = type metadata accessor for HomeAutomationSnippetModels();
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_252A738CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252A738EC, 0, 0);
}

uint64_t sub_252A738EC()
{
  sub_252929E74(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

id static RestrictedGuestCheckUtils.isCurrentUserForHomeARestrictedGuest(home:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
  v2 = [v1 currentUser];
  v3 = [v1 homeAccessControlForUser_];
  v4 = [v3 isRestrictedGuest];

  return v4;
}

id static RestrictedGuestCheckUtils.isCurrentUserForHomeARestrictedGuest(home:)(void *a1)
{
  v2 = [a1 currentUser];
  v3 = [a1 homeAccessControlForUser_];
  v4 = [v3 isRestrictedGuest];

  return v4;
}

uint64_t _s22HomeAutomationInternal25RestrictedGuestCheckUtilsO23isCurrentDeviceCommunalSbyFZ_0()
{
  v0 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v0 + 16), v7);

  __swift_project_boxed_opaque_existential_1(v7, v8);
  if (sub_252E338F4())
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
    v1 = 1;
  }

  else
  {
    v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v2 + 16), v6);

    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v3 = sub_252E338D4();
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(v7);
    if (v3)
    {
      v1 = 1;
    }

    else
    {
      v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
      sub_252929E74((v4 + 16), v7);

      __swift_project_boxed_opaque_existential_1(v7, v8);
      v1 = sub_252E33834();
      __swift_destroy_boxed_opaque_existential_1(v7);
    }
  }

  return v1 & 1;
}

uint64_t sub_252A73BBC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25294B954;

  return sub_252A738CC(a1, v1 + 16);
}

uint64_t sub_252A73C58(uint64_t a1)
{
  v2 = type metadata accessor for CallToActionSnippetModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252A73CBC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B7BC;

  return sub_252927C20(v2);
}

uint64_t sub_252A73D50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252A737F0(a1, v4);
}

void sub_252A73DF0(uint64_t a1)
{
  sub_252A75BAC(a1, v5);
  if (v6)
  {
    v1 = *&v5[0];
    if (qword_27F53F508 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544DC0);
    MEMORY[0x2530AD570](0x203A726F727265, 0xE700000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E75560);
  }

  else
  {
    sub_252A52D18(v5, &v4);
    if (qword_27F53F508 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544DC0);
    MEMORY[0x2530AD570](0x203A74757074756FLL, 0xE800000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403B8, &qword_252E58020);
    sub_252E37AE4();
    sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E75560);

    __swift_destroy_boxed_opaque_existential_1(&v4);
  }
}

unint64_t _s22HomeAutomationInternal25RestrictedGuestCheckUtilsO29removeInaccessibleAccessories4fromSayAA9AccessoryCGAH_tFZ_0(unint64_t a1)
{
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v81 - v8;
  v10 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v10 + 288), &v94);

  v11 = v96;
  v12 = v97;
  __swift_project_boxed_opaque_existential_1(&v94, v96);
  v13 = (*(v12 + 168))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(&v94);
  if ((v13 & 1) == 0)
  {
    if (qword_27F53F508 != -1)
    {
LABEL_70:
      swift_once();
    }

    v17 = sub_252E36AD4();
    __swift_project_value_buffer(v17, qword_27F544DC0);
    v15 = "execute deferred to async";
    v16 = 0xD000000000000018;
    goto LABEL_8;
  }

  if (_s22HomeAutomationInternal25RestrictedGuestCheckUtilsO23isCurrentDeviceCommunalSbyFZ_0())
  {
    if (qword_27F53F508 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544DC0);
    v15 = " is within access schedule";
    v16 = 0xD00000000000004ALL;
LABEL_8:
    sub_252CC3D90(v16, v15 | 0x8000000000000000, 0xD000000000000080, 0x8000000252E75560);
LABEL_9:

    return a1;
  }

  v94 = MEMORY[0x277D84F90];
  v19 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v20 = sub_252E378C4();
  }

  else
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v90 = v2;
  v91 = v3;
  v92 = a1 & 0xC000000000000001;
  v85 = v7;
  v86 = (v3 + 32);
  v21 = MEMORY[0x277D84F90];
  v87 = a1;
  v88 = a1 & 0xFFFFFFFFFFFFFF8;
  v89 = v20;
  if (v20)
  {
    v22 = 0;
    while (2)
    {
      v23 = v22;
      while (1)
      {
        if (v92)
        {
          v24 = MEMORY[0x2530ADF00](v23, a1);
          v22 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v23 >= *(v19 + 16))
          {
            goto LABEL_67;
          }

          v24 = *(a1 + 8 * v23 + 32);

          v22 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
            goto LABEL_70;
          }
        }

        v25 = [*(v24 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
        if (v25)
        {
          break;
        }

        ++v23;
        if (v22 == v20)
        {
          goto LABEL_31;
        }
      }

      v26 = v25;
      v27 = type metadata accessor for Home();
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = v26;
      v31 = v26;
      v32 = [v31 uniqueIdentifier];
      sub_252E32E64();

      v33 = [v31 name];
      v34 = sub_252E36F34();
      v83 = v35;
      v84 = v34;

      v36 = [v31 assistantIdentifier];
      if (v36)
      {
        v37 = v36;
        v38 = sub_252E36F34();
        v40 = v39;
      }

      else
      {

        v38 = 0;
        v40 = 0;
      }

      v41 = (*v86)(v30 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v9, v90);
      v42 = (v30 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v43 = v83;
      *v42 = v84;
      v42[1] = v43;
      *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 1;
      v44 = (v30 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v44 = v38;
      v44[1] = v40;
      MEMORY[0x2530AD700](v41);
      v19 = v88;
      v20 = v89;
      if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v45 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
        v20 = v89;
      }

      sub_252E372D4();
      v21 = v94;
      a1 = v87;
      if (v22 != v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_31:
  v46 = sub_252C758E0(v21);

  if ((v46 & 0xC000000000000001) != 0)
  {
    v47 = sub_252E378C4();
  }

  else
  {
    v47 = *(v46 + 16);
  }

  v48 = v90;
  v49 = v91;

  if (v47 <= 1)
  {
    goto LABEL_9;
  }

  v93 = MEMORY[0x277D84F90];
  if (!v89)
  {
    return MEMORY[0x277D84F90];
  }

  v50 = 0;
  v82 = "eting immediately";
  v83 = 0x8000000252E75880;
  v84 = (v49 + 8);
  v81 = MEMORY[0x277D84F90];
  v51 = &OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  do
  {
    for (i = v50; ; ++i)
    {
      if (v92)
      {
        v54 = MEMORY[0x2530ADF00](i, a1);
        v53 = v85;
        v50 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_68;
        }
      }

      else
      {
        v53 = v85;
        if (i >= *(v88 + 16))
        {
          goto LABEL_69;
        }

        v54 = *(a1 + 8 * i + 32);

        v50 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_68;
        }
      }

      v55 = [*(v54 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
      if (!v55)
      {
        break;
      }

      v56 = v55;
      v57 = type metadata accessor for Home();
      v58 = *(v57 + 48);
      v59 = *(v57 + 52);
      v60 = swift_allocObject();
      v61 = v56;
      v62 = [v61 uniqueIdentifier];
      sub_252E32E64();

      v63 = [v61 assistantIdentifier];
      if (v63)
      {
        sub_252E36F34();
        v91 = v64;
      }

      else
      {
        v91 = 0;
      }

      v65 = v51;
      (*v86)(v60 + *v51, v53, v48);
      v66 = [v61 currentUser];
      v67 = [v61 homeAccessControlForUser_];
      v68 = [v67 isRestrictedGuest];

      if (!v68)
      {
LABEL_59:
        swift_setDeallocating();
        v51 = v65;
        v48 = v90;
        (*v84)(v60 + *v65, v90);

        v78 = *(*v60 + 48);
        v79 = *(*v60 + 52);
        swift_deallocClassInstance();
        a1 = v87;
        break;
      }

      v69 = [v61 currentUser];
      v70 = [v61 homeAccessControlForUser_];
      if ([v70 isRestrictedGuest])
      {
        v71 = [v61 homeLocationStatus];
        v72 = [v70 isRestrictedGuestInAllowedPeriod];

        if (v71 == 1)
        {
          if (v72)
          {
            goto LABEL_59;
          }
        }

        else if (((v71 == 3) & v72) != 0)
        {
          goto LABEL_59;
        }
      }

      else
      {
      }

      if (qword_27F53F508 != -1)
      {
        swift_once();
      }

      v73 = sub_252E36AD4();
      __swift_project_value_buffer(v73, qword_27F544DC0);
      v94 = 0;
      v95 = 0xE000000000000000;
      sub_252E379F4();

      v94 = 0xD000000000000016;
      v95 = v83;
      v75 = (*(*v54 + 144))(v74);
      MEMORY[0x2530AD570](v75);

      sub_252CC3D90(v94, v95, 0xD000000000000080, v82 | 0x8000000000000000);

      swift_setDeallocating();
      v51 = v65;
      v48 = v90;
      (*v84)(v60 + *v65, v90);

      v76 = *(*v60 + 48);
      v77 = *(*v60 + 52);
      swift_deallocClassInstance();
      a1 = v87;
      if (v50 == v89)
      {
        return v81;
      }
    }

    MEMORY[0x2530AD700]();
    if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v80 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    v81 = v93;
  }

  while (v50 != v89);
  return v81;
}

BOOL _s22HomeAutomationInternal25RestrictedGuestCheckUtilsO02isde14AndHasAccessToA04homeSbSo6HMHomeC_tFZ_0(void *a1)
{
  v2 = [a1 currentUser];
  v3 = [a1 homeAccessControlForUser_];
  if (![v3 isRestrictedGuest])
  {

    return 0;
  }

  v4 = [a1 homeLocationStatus];
  v5 = [v3 isRestrictedGuestInAllowedPeriod];

  if (v4 == 1)
  {
    return (v5 & 1) != 0;
  }

  return ((v4 == 3) & v5) != 0;
}

char *_s22HomeAutomationInternal25RestrictedGuestCheckUtilsO12resolveHomes3forSayAA0A0CGSgSayAA0A6FilterCG_tFZ_0(unint64_t a1)
{
  v2 = sub_252E36AD4();
  v105 = *(v2 - 8);
  v3 = *(v105 + 64);
  MEMORY[0x28223BE20](v2);
  v104 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_252E32E84();
  v5 = *(v101 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v101);
  v102 = (&v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v100 = (&v97 - v9);
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_68;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v12 = 0;
  do
  {
    if (v11 == v12)
    {
      type metadata accessor for HomeStore();
      v16 = static HomeStore.shared.getter();
      v17 = HomeStore.accessories(matching:supporting:)(a1, 0);
      v19 = v18;

      if (v19)
      {
        sub_252929F10(v17, 1);
        if (qword_27F53F488 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v2, qword_27F544C40);
        v20 = 132;
LABEL_20:
        sub_252CC4050(0xD000000000000026, 0x8000000252E756E0, 0xD000000000000080, 0x8000000252E75560, 0xD000000000000012, 0x8000000252E75840, v20);
        return 0;
      }

      v107 = MEMORY[0x277D84F90];
      v10 = v17 & 0xFFFFFFFFFFFFFF8;
      if (v17 >> 62)
      {
        a1 = sub_252E378C4();
        v103 = v2;
        if (a1)
        {
LABEL_23:
          v2 = 0;
          v26 = MEMORY[0x277D84F90];
          v5 += 4;
          do
          {
            v27 = v2;
            while (1)
            {
              if ((v17 & 0xC000000000000001) != 0)
              {
                v28 = MEMORY[0x2530ADF00](v27, v17);
                v2 = v27 + 1;
                if (__OFADD__(v27, 1))
                {
                  goto LABEL_64;
                }
              }

              else
              {
                if (v27 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_65;
                }

                v28 = *(v17 + 8 * v27 + 32);

                v2 = v27 + 1;
                if (__OFADD__(v27, 1))
                {
                  goto LABEL_64;
                }
              }

              v29 = [*(v28 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
              if (v29)
              {
                break;
              }

              ++v27;
              if (v2 == a1)
              {
                goto LABEL_61;
              }
            }

            v100 = v5;
            v30 = v29;
            v31 = type metadata accessor for Home();
            v32 = *(v31 + 48);
            v33 = *(v31 + 52);
            v97 = swift_allocObject();
            *(v97 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = v30;
            v34 = v30;
            v35 = [v34 uniqueIdentifier];
            sub_252E32E64();

            v36 = [v34 name];
            v37 = sub_252E36F34();
            v98 = v38;
            v99 = v37;

            v39 = [v34 assistantIdentifier];
            if (v39)
            {
              v40 = v39;
              v41 = sub_252E36F34();
              v43 = v42;
            }

            else
            {

              v41 = 0;
              v43 = 0;
            }

            v5 = v100;
            v44 = v97;
            v45 = (*v100)(v97 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v102, v101);
            v46 = (v44 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
            v47 = v98;
            *v46 = v99;
            v46[1] = v47;
            *(v44 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 1;
            v48 = (v44 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
            *v48 = v41;
            v48[1] = v43;
            MEMORY[0x2530AD700](v45);
            if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v49 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_252E372A4();
            }

            sub_252E372D4();
            v26 = v107;
          }

          while (v2 != a1);
LABEL_61:
          v73 = v17;
          goto LABEL_74;
        }
      }

      else
      {
        a1 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v103 = v2;
        if (a1)
        {
          goto LABEL_23;
        }
      }

      v26 = MEMORY[0x277D84F90];
      v73 = v17;
      goto LABEL_74;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x2530ADF00](v12, a1);
    }

    else
    {
      if (v12 >= *(v10 + 16))
      {
        goto LABEL_63;
      }

      v13 = *(a1 + 8 * v12 + 32);
    }

    v14 = v13;
    if (__OFADD__(v12, 1))
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
      v11 = sub_252E378C4();
      goto LABEL_3;
    }

    v15 = [v13 entityType];

    ++v12;
  }

  while (v15 != 5);
  type metadata accessor for HomeStore();
  v21 = static HomeStore.shared.getter();
  v22 = HomeStore.scenes(matching:)(a1);
  v24 = v23;

  if (v24)
  {
    sub_252929F10(v22, 1);
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_27F544C40);
    v20 = 126;
    goto LABEL_20;
  }

  v107 = MEMORY[0x277D84F90];
  v10 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v22 >> 62)
  {
    a1 = sub_252E378C4();
    v103 = v2;
    if (a1)
    {
      goto LABEL_43;
    }

    goto LABEL_72;
  }

  a1 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v103 = v2;
  if (!a1)
  {
LABEL_72:
    v26 = MEMORY[0x277D84F90];
    goto LABEL_73;
  }

LABEL_43:
  v2 = 0;
  v26 = MEMORY[0x277D84F90];
  v5 += 4;
  do
  {
    v50 = v2;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x2530ADF00](v50, v22);
        v2 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v50 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v51 = *(v22 + 8 * v50 + 32);

        v2 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_66;
        }
      }

      v52 = [*(v51 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) home];
      if (v52)
      {
        break;
      }

      ++v50;
      if (v2 == a1)
      {
        goto LABEL_73;
      }
    }

    v102 = v5;
    v53 = v52;
    v54 = type metadata accessor for Home();
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    v97 = swift_allocObject();
    *(v97 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = v53;
    v57 = v53;
    v58 = [v57 uniqueIdentifier];
    sub_252E32E64();

    v59 = [v57 name];
    v60 = sub_252E36F34();
    v98 = v61;
    v99 = v60;

    v62 = [v57 assistantIdentifier];
    if (v62)
    {
      v63 = v62;
      v64 = sub_252E36F34();
      v66 = v65;
    }

    else
    {

      v64 = 0;
      v66 = 0;
    }

    v5 = v102;
    v67 = v97;
    v68 = (*v102)(v97 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v100, v101);
    v69 = (v67 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v70 = v98;
    *v69 = v99;
    v69[1] = v70;
    *(v67 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 1;
    v71 = (v67 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
    *v71 = v64;
    v71[1] = v66;
    MEMORY[0x2530AD700](v68);
    if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v72 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    v26 = v107;
  }

  while (v2 != a1);
LABEL_73:
  v73 = v22;
LABEL_74:
  sub_252929F10(v73, 0);
  v25 = sub_252DF956C(v26);

  v74 = v103;
  if (qword_27F53F488 != -1)
  {
    swift_once();
  }

  v75 = __swift_project_value_buffer(v74, qword_27F544C40);
  (*(v105 + 16))(v104, v75, v74);
  v107 = 0;
  v108 = 0xE000000000000000;
  sub_252E379F4();

  v107 = 0xD000000000000010;
  v108 = 0x8000000252E75860;
  if (v25 >> 62)
  {
    v76 = sub_252E378C4();
  }

  else
  {
    v76 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v77 = MEMORY[0x277D84F90];
  if (!v76)
  {
LABEL_91:
    v93 = MEMORY[0x2530AD730](v77, MEMORY[0x277D837D0]);
    v95 = v94;

    MEMORY[0x2530AD570](v93, v95);

    v96 = v104;
    sub_252CC3D90(v107, v108, 0xD000000000000080, 0x8000000252E75560);

    (*(v105 + 8))(v96, v74);
    return v25;
  }

  v106 = MEMORY[0x277D84F90];
  result = sub_2529AA3A0(0, v76 & ~(v76 >> 63), 0);
  if ((v76 & 0x8000000000000000) == 0)
  {
    v103 = v74;
    v77 = v106;
    if ((v25 & 0xC000000000000001) != 0)
    {
      v79 = 0;
      do
      {
        v80 = MEMORY[0x2530ADF00](v79, v25);
        v82 = *(v80 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v81 = *(v80 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        swift_unknownObjectRelease();
        v106 = v77;
        v84 = *(v77 + 16);
        v83 = *(v77 + 24);
        if (v84 >= v83 >> 1)
        {
          sub_2529AA3A0((v83 > 1), v84 + 1, 1);
          v77 = v106;
        }

        ++v79;
        *(v77 + 16) = v84 + 1;
        v85 = v77 + 16 * v84;
        *(v85 + 32) = v82;
        *(v85 + 40) = v81;
      }

      while (v76 != v79);
    }

    else
    {
      v86 = (v25 + 32);
      do
      {
        v87 = (*v86 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v89 = *v87;
        v88 = v87[1];
        v106 = v77;
        v90 = *(v77 + 16);
        v91 = *(v77 + 24);

        if (v90 >= v91 >> 1)
        {
          sub_2529AA3A0((v91 > 1), v90 + 1, 1);
          v77 = v106;
        }

        *(v77 + 16) = v90 + 1;
        v92 = v77 + 16 * v90;
        *(v92 + 32) = v89;
        *(v92 + 40) = v88;
        ++v86;
        --v76;
      }

      while (v76);
    }

    v74 = v103;
    goto LABEL_91;
  }

  __break(1u);
  return result;
}

unint64_t sub_252A7564C(unint64_t a1)
{
  if (qword_27F53F488 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544C40);
  sub_252E379F4();

  v3 = type metadata accessor for HomeFilter();
  v4 = MEMORY[0x2530AD730](a1, v3);
  MEMORY[0x2530AD570](v4);

  sub_252CC3D90(0xD000000000000024, 0x8000000252E756B0, 0xD000000000000080, 0x8000000252E75560);

  result = _s22HomeAutomationInternal25RestrictedGuestCheckUtilsO12resolveHomes3forSayAA0A0CGSgSayAA0A6FilterCG_tFZ_0(a1);
  if (!result)
  {
    v15 = 0xD000000000000026;
    v16 = 0x8000000252E756E0;
    v17 = 146;
LABEL_23:
    sub_252CC4050(v15, v16, 0xD000000000000080, 0x8000000252E75560, 0xD000000000000018, 0x8000000252E75710, v17);
    return 3;
  }

  v6 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      if (v7 == 1)
      {
        goto LABEL_7;
      }

LABEL_21:

      sub_252CC4050(0xD000000000000042, 0x8000000252E75730, 0xD000000000000080, 0x8000000252E75560, 0xD000000000000018, 0x8000000252E75710, 156);
      return 2;
    }

    goto LABEL_22;
  }

  v21 = result;
  if (!sub_252E378C4())
  {
LABEL_22:

    v15 = 0xD000000000000034;
    v16 = 0x8000000252E75800;
    v17 = 151;
    goto LABEL_23;
  }

  v22 = sub_252E378C4();
  result = v21;
  if (v22 != 1)
  {
    goto LABEL_21;
  }

LABEL_7:
  v23 = result & 0xC000000000000001;
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = result;
    v9 = MEMORY[0x2530ADF00](0);
LABEL_10:
    v10 = OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate;
    v11 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
    v12 = [v11 currentUser];
    v13 = [v11 homeAccessControlForUser_];
    v14 = [v13 isRestrictedGuest];

    if (v14 && !_s22HomeAutomationInternal25RestrictedGuestCheckUtilsO02isde14AndHasAccessToA04homeSbSo6HMHomeC_tFZ_0(*(v9 + v10)))
    {

      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E757B0);
      v20 = sub_2529E8734();
      MEMORY[0x2530AD570](v20);

      MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E757E0);
      sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E75560);

      return 1;
    }

    sub_252E379F4();

    if (v24)
    {
      MEMORY[0x2530ADF00](0, v8);
LABEL_17:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542190, "p%\a");
      v19 = sub_252E36F94();
      MEMORY[0x2530AD570](v19);

      sub_252CC3D90(0xD000000000000028, 0x8000000252E75780, 0xD000000000000080, 0x8000000252E75560);

      return 0;
    }

    if (*(v6 + 16))
    {
      v18 = *(v8 + 32);

      goto LABEL_17;
    }

    goto LABEL_26;
  }

  if (*(v6 + 16))
  {
    v8 = result;
    v9 = *(result + 32);

    goto LABEL_10;
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_252A75AFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallToActionSnippetModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_252A75B60()
{
  result = qword_27F541B88;
  if (!qword_27F541B88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F541B88);
  }

  return result;
}

uint64_t sub_252A75BAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542198, &qword_252E53790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A75C1C(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v27 = a1 + 32;
  while (1)
  {
    v4 = *(v27 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v24 = *(v27 + 8 * v1);
      }

      v6 = sub_252E378C4();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_252E378C4();
      v9 = v25 + v6;
      if (__OFADD__(v25, v6))
      {
LABEL_36:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v6;
    if (result)
    {
      if (v7)
      {
        goto LABEL_16;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v7)
      {
LABEL_16:
        sub_252E378C4();
        goto LABEL_17;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = *(v10 + 16);
LABEL_17:
    result = sub_252E37A54();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_40;
    }

    v29 = v1;
    v30 = v2;
    v16 = v10 + 8 * v12 + 32;
    v26 = v10;
    if (v5)
    {
      if (v14 < 1)
      {
        goto LABEL_42;
      }

      sub_2529E6488(&qword_27F5421A8, &qword_27F541850, &qword_252E43DC0);
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541850, &qword_252E43DC0);
        v18 = sub_2529FBD80(v31, i, v4);
        v20 = *v19;
        (v18)(v31, 0);
        *(v16 + 8 * i) = v20;
      }
    }

    else
    {
      type metadata accessor for HomeUserTaskResponse();
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v21 = *(v26 + 16);
      v22 = __OFADD__(v21, v32);
      v23 = v21 + v32;
      if (v22)
      {
        goto LABEL_41;
      }

      *(v26 + 16) = v23;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v10;
  result = sub_252E378C4();
  v10 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

id sub_252A75EFC(uint64_t a1, char a2)
{
  v2 = a1;
  if (a2)
  {
    v2 = qword_252E43DC8[a1];
  }

  v3 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v4 = sub_252E36F04();
  v5 = [v3 initWithIdentifier:0 displayString:v4];

  v6 = v5;
  [v6 setTaskType_];
  [v6 setAttribute_];
  [v6 setValue_];

  return v6;
}

void *sub_252A75FBC(void *a1)
{
  v2 = v1;
  sub_25293DEE0(__src);
  memcpy(v2 + 2, __src, 0x1F8uLL);
  v2[68] = sub_252CC7140(&unk_2864AA3E8);
  v2[65] = a1;
  v4 = a1;
  v5 = [v4 filters];
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

  v2[66] = v7;
  type metadata accessor for ServiceCollectionDecorator();
  swift_allocObject();
  v2[67] = sub_252B7DA9C(v4);
  return v2;
}

void sub_252A760A0()
{
  v1 = v0;
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v2 + 16), v79);

  __swift_project_boxed_opaque_existential_1(v79, v80);
  v3 = sub_252E338F4();
  __swift_destroy_boxed_opaque_existential_1(v79);
  if (v3)
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v4 = sub_252E36AD4();
    __swift_project_value_buffer(v4, qword_27F544C70);
    v5 = "eed accessory warmup";
    v6 = 0xD000000000000026;
LABEL_9:
    sub_252CC3D90(v6, v5 | 0x8000000000000000, 0xD000000000000075, 0x8000000252E759F0);
    return;
  }

  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v7 + 16), v79);

  __swift_project_boxed_opaque_existential_1(v79, v80);
  v8 = sub_252E338C4();
  __swift_destroy_boxed_opaque_existential_1(v79);
  if (v8)
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544C70);
    v5 = "ssories for suggestions.";
    v6 = 0xD000000000000024;
    goto LABEL_9;
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v10 = sub_252E36AD4();
  __swift_project_value_buffer(v10, qword_27F544C70);
  sub_252CC3D90(0xD000000000000017, 0x8000000252E75BF0, 0xD000000000000075, 0x8000000252E759F0);
  v11 = *(v1 + 520);
  if (sub_252C51B7C() & 1) != 0 || (sub_252C51B88() & 1) != 0 || (sub_252C513DC() & 1) != 0 || (sub_252C51B94() & 1) != 0 || (sub_252C51CE8())
  {
  }

  else
  {
    v44 = sub_252C4D664(5);

    if ((v44 & 1) == 0)
    {
      return;
    }
  }

  v12 = *(sub_252B680FC() + 160);

  if (!v12)
  {
    v13 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v13 + 288), v79);

    v14 = v80;
    v15 = v81;
    __swift_project_boxed_opaque_existential_1(v79, v80);
    v16 = (*(v15 + 40))(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v79);
    if ((v16 & 1) == 0)
    {
      goto LABEL_27;
    }

    v17 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v17 + 288), v79);

    v18 = v80;
    v19 = v81;
    __swift_project_boxed_opaque_existential_1(v79, v80);
    v20 = (*(v19 + 56))(v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v79);
    if ((v20 & 1) == 0)
    {
      goto LABEL_27;
    }

    v21 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v21 + 16), v79);

    __swift_project_boxed_opaque_existential_1(v79, v80);
    v22 = sub_252E338D4();
    __swift_destroy_boxed_opaque_existential_1(v79);
    if (v22)
    {
      goto LABEL_27;
    }

    v23 = *(v1 + 520);
    v24 = sub_252C4DEF0(1);

    if (v24)
    {
      sub_252CC3D90(0xD000000000000028, 0x8000000252E75CB0, 0xD000000000000075, 0x8000000252E759F0);
      sub_252A76B8C(0, 1, 0, 0);
      v25 = sub_2529F7A6C(0, 1, 1, MEMORY[0x277D84F90]);
      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = sub_2529F7A6C((v26 > 1), v27 + 1, 1, v25);
      }

      *(v25 + 2) = v27 + 1;
      *&v25[8 * v27 + 32] = 2;
    }

    else
    {
LABEL_27:
      v25 = MEMORY[0x277D84F90];
    }

    v28 = [*(v1 + 520) userTask];
    if (v28)
    {
      v29 = v28;
      v30 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
      sub_252929E74((v30 + 288), v79);

      v31 = v80;
      v32 = v81;
      __swift_project_boxed_opaque_existential_1(v79, v80);
      v33 = (*(v32 + 160))(v31, v32);
      __swift_destroy_boxed_opaque_existential_1(v79);
      if (v33)
      {
        v34 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
        sub_252929E74((v34 + 16), v79);

        __swift_project_boxed_opaque_existential_1(v79, v80);
        v35 = sub_252E338D4();
        __swift_destroy_boxed_opaque_existential_1(v79);
        if ((v35 & 1) == 0 && [v29 taskType] == 1)
        {
          v36 = &off_279711000;
          if ([v29 attribute])
          {
            v37 = [v29 attribute];
            v38 = *(v25 + 2);
            v39 = 32;
            while (v38)
            {
              v40 = *&v25[v39];
              v39 += 8;
              --v38;
              if (v40 == v37)
              {
                goto LABEL_53;
              }
            }

            if (qword_27F53F540 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v10, qword_27F544E68);
            v45 = v29;
            v46 = sub_252E36AC4();
            v47 = sub_252E374C4();

            if (os_log_type_enabled(v46, v47))
            {
              buf = swift_slowAlloc();
              v78 = swift_slowAlloc();
              v79[0] = v78;
              *buf = 136315138;
              v48 = HomeAttributeType.description.getter([v45 attribute]);
              v50 = sub_252BE2CE0(v48, v49, v79);

              *(buf + 4) = v50;
              v36 = &off_279711000;
              _os_log_impl(&dword_252917000, v46, v47, "Will warmup accessories for corrections. \n getCustomAttribute %s", buf, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v78);
              MEMORY[0x2530AED00](v78, -1, -1);
              MEMORY[0x2530AED00](buf, -1, -1);
            }

            sub_252A76B8C([v45 v36[203]], 0, 0, 0);
            v51 = [v45 v36[203]];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_2529F7A6C(0, *(v25 + 2) + 1, 1, v25);
            }

            v53 = *(v25 + 2);
            v52 = *(v25 + 3);
            if (v53 >= v52 >> 1)
            {
              v25 = sub_2529F7A6C((v52 > 1), v53 + 1, 1, v25);
            }

            *(v25 + 2) = v53 + 1;
            *&v25[8 * v53 + 32] = v51;
          }
        }
      }

LABEL_53:
      v54 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
      sub_252929E74((v54 + 288), v79);

      v55 = v80;
      v56 = v81;
      __swift_project_boxed_opaque_existential_1(v79, v80);
      v57 = (*(v56 + 120))(v55, v56);
      __swift_destroy_boxed_opaque_existential_1(v79);
      if (v57 & 1) != 0 && (v58 = *(v1 + 536), , v59 = sub_252B7DC00(), , (v59) && [v29 taskType] == 1)
      {
        v60 = [v29 value];
        if (!v60)
        {
          goto LABEL_74;
        }

        v61 = v60;
        v62 = [v60 BOOLValue];

        if ((v62 & 1) == 0)
        {
          goto LABEL_74;
        }

        v63 = *(v1 + 536);

        v64 = sub_252B7F858(1);

        if (v64)
        {
          v65 = *(v25 + 2);
          v66 = 32;
          while (v65)
          {
            v67 = *&v25[v66];
            v66 += 8;
            --v65;
            if (v67 == 2)
            {
              goto LABEL_70;
            }
          }

          sub_252CC3D90(0xD00000000000004DLL, 0x8000000252E75C60, 0xD000000000000075, 0x8000000252E759F0);
          sub_252A76B8C(1, 1, 0, 0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_2529F7A6C(0, *(v25 + 2) + 1, 1, v25);
          }

          v69 = *(v25 + 2);
          v68 = *(v25 + 3);
          if (v69 >= v68 >> 1)
          {
            v25 = sub_2529F7A6C((v68 > 1), v69 + 1, 1, v25);
          }

          *(v25 + 2) = v69 + 1;
          *&v25[8 * v69 + 32] = 2;
        }

LABEL_70:
        v70 = *(v1 + 536);

        v71 = sub_252B7F858(5);

        if ((v71 & 1) == 0)
        {
LABEL_74:

          return;
        }

        v72 = *(v25 + 2);
        v73 = 32;
        while (v72)
        {
          v74 = *&v25[v73];
          v73 += 8;
          --v72;
          if (v74 == 11)
          {
            goto LABEL_74;
          }
        }

        sub_252CC3D90(0xD00000000000004ALL, 0x8000000252E75C10, 0xD000000000000075, 0x8000000252E759F0);
        sub_252A76B8C(2, 1, 0, 0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_2529F7A6C(0, *(v25 + 2) + 1, 1, v25);
        }

        v76 = *(v25 + 2);
        v75 = *(v25 + 3);
        if (v76 >= v75 >> 1)
        {
          v25 = sub_2529F7A6C((v75 > 1), v76 + 1, 1, v25);
        }

        *(v25 + 2) = v76 + 1;
        *&v25[8 * v76 + 32] = 11;
      }

      else
      {
      }

      return;
    }

    if (qword_27F53F540 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v10, qword_27F544E68);
    v41 = sub_252E36AC4();
    v42 = sub_252E374D4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_252917000, v41, v42, "No user task found from ControlHomeIntent. Will not warm up for correction or snippets.", v43, 2u);
      MEMORY[0x2530AED00](v43, -1, -1);
    }
  }
}

uint64_t sub_252A76B8C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v44 = a2;
  v43 = a1;
  v4 = sub_252E36CA4();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E37564();
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_252E37534();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v47 = sub_252E36D04();
  v45 = *(v47 - 8);
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_252E36AB4();
  v16 = *(v42 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v42);
  v19 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v39 - v20;
  if (qword_27F53F5D0 != -1)
  {
    swift_once();
  }

  v22 = qword_27F544F58;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F4F0 != -1)
  {
    swift_once();
  }

  v23 = sub_252E36AD4();
  __swift_project_value_buffer(v23, qword_27F544D78);
  sub_252CC3D90(0xD000000000000013, 0x8000000252E759D0, 0xD000000000000075, 0x8000000252E759F0);
  *(sub_252B680FC() + 160) = 1;

  sub_252936DF8();
  sub_252E36CF4();
  sub_252E37524();
  (*(v40 + 104))(v10, *MEMORY[0x277D85260], v41);
  v24 = sub_252E37594();
  v25 = *(v16 + 16);
  v39 = v21;
  v26 = v21;
  v27 = v42;
  v25(v19, v26, v42);
  v28 = (*(v16 + 80) + 33) & ~*(v16 + 80);
  v29 = (v17 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = v43;
  *(v30 + 16) = v46;
  *(v30 + 24) = v31;
  *(v30 + 32) = v44 & 1;
  (*(v16 + 32))(v30 + v28, v19, v27);
  v32 = (v30 + v29);
  v34 = v48;
  v33 = v49;
  *v32 = v48;
  v32[1] = v33;
  aBlock[4] = sub_252A776A0;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252AD686C;
  aBlock[3] = &block_descriptor_7;
  v35 = _Block_copy(aBlock);

  sub_252A77750(v34);
  sub_252E36CD4();
  v53 = MEMORY[0x277D84F90];
  sub_252990E98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
  v36 = v50;
  v37 = v52;
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v15, v36, v35);
  _Block_release(v35);

  (*(v51 + 8))(v36, v37);
  (*(v45 + 8))(v15, v47);
  (*(v16 + 8))(v39, v27);
}

uint64_t sub_252A771A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a3;
  v22 = a2;
  v8 = sub_252E36AB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 528);
  (*(v9 + 16))(v11, a4, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v13, v11, v8);
  *(v15 + v14) = a1;
  v16 = v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = v22;
  *v16 = v22;
  LOBYTE(v9) = v23 & 1;
  *(v16 + 8) = v23 & 1;
  v18 = (v15 + ((v14 + 31) & 0xFFFFFFFFFFFFFFF8));
  v20 = v24;
  v19 = v25;
  *v18 = v24;
  v18[1] = v19;

  sub_252A77750(v20);
  sub_252A6007C(v12, v17, v9, sub_252A77760, v15);
}

void sub_252A77374(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void (*a7)(void *, uint64_t, uint64_t))
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v12 = sub_252E36AD4();
  __swift_project_value_buffer(v12, qword_27F544D60);
  sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E75A90, 0xD000000000000075, 0x8000000252E759F0);
  if (qword_27F53F5D0 != -1)
  {
    swift_once();
  }

  sub_252E375C4();
  sub_252E36A74();
  v13 = sub_252A77830(a1, a2 & 1, a5, a6 & 1);
  if (a7)
  {
    v16 = v13;
    a7(v13, v14, v15);
    v13 = v16;
  }
}

uint64_t sub_252A7750C()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_25299F5D4(__dst);

  v1 = *(v0 + 528);

  v2 = *(v0 + 536);

  v3 = *(v0 + 544);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for HomeAutomationIntent.ReferenceType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HomeAutomationIntent.ReferenceType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_252A775FC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_252A77618(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_252A7764C()
{
  result = qword_27F5421A0;
  if (!qword_27F5421A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5421A0);
  }

  return result;
}

uint64_t sub_252A776A0()
{
  v1 = *(sub_252E36AB4() - 8);
  v2 = (*(v1 + 80) + 33) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_252A771A8(v3, v4, v5, v0 + v2, v7, v8);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252A77750(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_252A77760(unint64_t a1, char a2)
{
  v5 = *(sub_252E36AB4() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + v8 + 8);
  v12 = v2 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  sub_252A77374(a1, a2 & 1, v2 + v6, v9, v10, v11, v13);
}

unint64_t sub_252A77830(unint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = sub_252E36AD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = a1;
    if (qword_27F53F4F0 == -1)
    {
LABEL_3:
      __swift_project_value_buffer(v8, qword_27F544D78);
      v120 = 0;
      v121 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E75AB0);
      v119 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
      sub_252E37AE4();
      sub_252CC4050(v120, v121, 0xD000000000000075, 0x8000000252E759F0, 0xD000000000000028, 0x8000000252E75AE0, 198);

      return a1;
    }

LABEL_90:
    swift_once();
    goto LABEL_3;
  }

  *(sub_252B680FC() + 160) = 2;

  if ((a4 & 1) == 0)
  {
    if (qword_27F53F540 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v8, qword_27F544E68);
    v120 = 0;
    v121 = 0xE000000000000000;
    sub_252E379F4();

    v120 = 0xD000000000000027;
    v121 = 0x8000000252E75B40;
    v29 = type metadata accessor for HomeEntityResponse();
    v30 = MEMORY[0x2530AD730](a1, v29);
    MEMORY[0x2530AD570](v30);

    sub_252CC3D90(v120, v121, 0xD000000000000075, 0x8000000252E759F0);

    v31 = sub_252B680FC();
    v32 = *(v31 + 152);
    *(v31 + 152) = a1;

    goto LABEL_94;
  }

  v114 = v8;
  if ((a3 - 1) < 2)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v8, qword_27F544D60);
    v15 = *(v9 + 16);
    v116 = v12;
    v15(v12, v14, v8);
    v120 = 0;
    v121 = 0xE000000000000000;
    sub_252E379F4();

    v120 = 0xD000000000000018;
    v121 = 0x8000000252E75B70;
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      v17 = sub_252E378C4();
      v117 = v9;
      v118 = a1;
      if (v17)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v117 = v9;
      v118 = a1;
      if (v17)
      {
LABEL_10:
        a1 = 0;
        v18 = v118 & 0xC000000000000001;
        v19 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v18)
          {
            v20 = MEMORY[0x2530ADF00](a1, v118);
          }

          else
          {
            if (a1 >= *(v16 + 16))
            {
              goto LABEL_85;
            }

            v20 = *(v118 + 8 * a1 + 32);
          }

          v21 = v20;
          v8 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            break;
          }

          v22 = [v20 description];
          v23 = sub_252E36F34();
          v25 = v24;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_2529F7A80(0, *(v19 + 2) + 1, 1, v19);
          }

          v27 = *(v19 + 2);
          v26 = *(v19 + 3);
          if (v27 >= v26 >> 1)
          {
            v19 = sub_2529F7A80((v26 > 1), v27 + 1, 1, v19);
          }

          *(v19 + 2) = v27 + 1;
          v28 = &v19[16 * v27];
          *(v28 + 4) = v23;
          *(v28 + 5) = v25;
          ++a1;
          if (v8 == v17)
          {
            goto LABEL_93;
          }
        }

        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }
    }

    v19 = MEMORY[0x277D84F90];
LABEL_93:
    v76 = MEMORY[0x2530AD730](v19, MEMORY[0x277D837D0]);
    v78 = v77;

    MEMORY[0x2530AD570](v76, v78);

    v79 = v116;
    sub_252CC3D90(v120, v121, 0xD000000000000075, 0x8000000252E759F0);

    (*(v117 + 8))(v79, v114);
    v80 = sub_252B680FC();
    v81 = *(v80 + 152);
    v82 = v118;
    *(v80 + 152) = v118;
    sub_252A78618(v82, 0);
LABEL_94:

    goto LABEL_129;
  }

  if (a3)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v8, qword_27F544D60);
    v120 = 0;
    v121 = 0xE000000000000000;
    sub_252E379F4();

    v120 = 0xD000000000000026;
    v121 = 0x8000000252E75B10;
    v60 = type metadata accessor for HomeEntityResponse();
    v61 = MEMORY[0x2530AD730](a1, v60);
    goto LABEL_128;
  }

  v119 = MEMORY[0x277D84F90];
  v33 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v34 = sub_252E378C4();
  }

  else
  {
    v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v34)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_65;
  }

  v35 = a1;
  a1 = 0;
  v117 = v35 & 0xC000000000000001;
  v118 = v35;
  v115 = v34;
  v116 = (v35 + 32);
  v112 = "ponses from entity response: ";
  v113 = 0x8000000252E75B90;
  v110 = v33;
  v111 = 0xD000000000000025;
  do
  {
    if (v117)
    {
      v36 = MEMORY[0x2530ADF00](a1, v118);
    }

    else
    {
      if (a1 >= *(v33 + 16))
      {
        goto LABEL_87;
      }

      v36 = *&v116[8 * a1];
    }

    v37 = v36;
    if (__OFADD__(a1++, 1))
    {
      goto LABEL_86;
    }

    v39 = [v36 entity];
    if (!v39)
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v8, qword_27F544D60);
      v120 = 0;
      v121 = 0xE000000000000000;
      sub_252E379F4();

      v120 = v111;
      v121 = v113;
      v52 = [v37 description];
      v53 = sub_252E36F34();
      v55 = v54;

      MEMORY[0x2530AD570](v53, v55);

      sub_252CC3D90(v120, v121, 0xD00000000000008CLL, v112 | 0x8000000000000000);
      goto LABEL_52;
    }

    v40 = v39;
    v41 = [v39 deviceTypes];
    if (!v41)
    {

      v45 = MEMORY[0x277D84F90];
      goto LABEL_53;
    }

    v42 = v41;
    v43 = sub_252E37264();

    v44 = *(v43 + 16);
    if (!v44)
    {

LABEL_52:

      v45 = MEMORY[0x277D84F90];
      v34 = v115;
      goto LABEL_53;
    }

    v120 = MEMORY[0x277D84F90];
    sub_2529AA420(0, v44, 0);
    v45 = v120;
    v46 = 32;
    do
    {
      v47 = sub_252E25FC4(*(v43 + v46));
      if (v48)
      {
        v49 = 0;
      }

      else
      {
        v49 = v47;
      }

      v120 = v45;
      v51 = *(v45 + 16);
      v50 = *(v45 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_2529AA420((v50 > 1), v51 + 1, 1);
        v45 = v120;
      }

      *(v45 + 16) = v51 + 1;
      *(v45 + 8 * v51 + 32) = v49;
      v46 += 8;
      --v44;
    }

    while (v44);

    v8 = v114;
    v34 = v115;
    v33 = v110;
LABEL_53:
    v56 = *(v45 + 16);
    if (v56)
    {
      v57 = 32;
      while (v56)
      {
        v58 = *(v45 + v57);
        v57 += 8;
        --v56;
        if (v58 == 1)
        {

          sub_252E37A94();
          v59 = v119[2];
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          goto LABEL_31;
        }
      }
    }

    else
    {
    }

LABEL_31:
    ;
  }

  while (a1 != v34);
  v8 = v119;
  a1 = v118;
LABEL_65:
  if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    v63 = a1;
    v64 = sub_252E378C4();
    if (v64)
    {
      goto LABEL_68;
    }

    goto LABEL_97;
  }

  v63 = a1;
  v64 = *(v8 + 16);
  if (!v64)
  {
LABEL_97:
    v67 = MEMORY[0x277D84F90];
    goto LABEL_98;
  }

LABEL_68:
  v65 = 0;
  v66 = v8 & 0xC000000000000001;
  v67 = MEMORY[0x277D84F90];
  do
  {
    a1 = v65;
    while (1)
    {
      if (v66)
      {
        v68 = MEMORY[0x2530ADF00](a1, v8);
      }

      else
      {
        if (a1 >= *(v8 + 16))
        {
          goto LABEL_89;
        }

        v68 = *(v8 + 8 * a1 + 32);
      }

      v69 = v68;
      v65 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        goto LABEL_88;
      }

      v70 = [v68 taskResponses];
      if (v70)
      {
        break;
      }

      ++a1;
      if (v65 == v64)
      {
        goto LABEL_98;
      }
    }

    v71 = v70;
    type metadata accessor for HomeUserTaskResponse();
    v72 = sub_252E37264();

    v73 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = sub_2529F7BB4(0, v67[2] + 1, 1, v67);
    }

    v75 = v67[2];
    v74 = v67[3];
    if (v75 >= v74 >> 1)
    {
      v67 = sub_2529F7BB4((v74 > 1), v75 + 1, 1, v67);
    }

    v67[2] = v75 + 1;
    v67[v75 + 4] = v72;
    v8 = v73;
  }

  while (v65 != v64);
LABEL_98:

  v83 = sub_252A75C1C(v67);

  v84 = sub_252B680FC();
  v85 = *(v84 + 152);
  *(v84 + 152) = v63;
  sub_252A78618(v63, 0);

  if (v83 >> 62)
  {
LABEL_134:
    v86 = sub_252E378C4();
    if (!v86)
    {
      goto LABEL_129;
    }
  }

  else
  {
    v86 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v86)
    {
      goto LABEL_129;
    }
  }

  v118 = sub_252B680FC();
  v87 = 0;
  while (2)
  {
    if ((v83 & 0xC000000000000001) != 0)
    {
      v88 = MEMORY[0x2530ADF00](v87, v83);
    }

    else
    {
      if (v87 >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_133;
      }

      v88 = *(v83 + 8 * v87 + 32);
    }

    v89 = v88;
    v90 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      __break(1u);
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    v91 = [v88 userTask];
    if (!v91 || (v92 = v91, v93 = [v91 attribute], v92, v93 != 2))
    {
LABEL_117:

      goto LABEL_118;
    }

    v94 = [v89 userTask];
    if (v94)
    {
      v95 = v94;
      v96 = [v94 value];

      if (v96)
      {
        v97 = [v96 integerValue];

        if (v97 == 100)
        {

LABEL_114:
          ++v87;
          if (v90 == v86)
          {

            v107 = 1;
            goto LABEL_119;
          }

          continue;
        }
      }
    }

    break;
  }

  v98 = [v89 userTask];
  if (!v98)
  {
    goto LABEL_117;
  }

  v99 = v98;
  v100 = [v98 value];

  if (!v100)
  {
    goto LABEL_117;
  }

  [v100 doubleValue];
  v102 = v101;

  if (v102 == 100.0)
  {
    goto LABEL_114;
  }

LABEL_118:
  v107 = 0;
LABEL_119:
  *(v118 + 144) = v107;

  v103 = v114;
  if (qword_2814B0AC0 != -1)
  {
    v108 = v114;
    swift_once();
    v103 = v108;
  }

  __swift_project_value_buffer(v103, qword_2814B0AC8);
  v120 = 0;
  v121 = 0xE000000000000000;
  sub_252E379F4();

  v120 = 0xD000000000000028;
  v121 = 0x8000000252E75BC0;
  v104 = *(sub_252B680FC() + 144);

  if (v104)
  {
    v61 = 1702195828;
  }

  else
  {
    v61 = 0x65736C6166;
  }

  if (v104)
  {
    v105 = 0xE400000000000000;
  }

  else
  {
    v105 = 0xE500000000000000;
  }

  v62 = v105;
LABEL_128:
  MEMORY[0x2530AD570](v61, v62);

  sub_252CC3D90(v120, v121, 0xD000000000000075, 0x8000000252E759F0);
LABEL_129:

  return 0;
}

id sub_252A78618(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

unint64_t sub_252A78624(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 1701670760;
    v6 = 0x64756C6378457369;
    if (a1 != 10)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 1701736314;
    v8 = 0x70756F7267;
    if (a1 != 7)
    {
      v8 = 1836019570;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x69746E45656D6F68;
    v2 = 0x766544726574756FLL;
    v3 = 0x766544726574756FLL;
    if (a1 != 4)
    {
      v3 = 0x7954656369766564;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 != 1)
    {
      v1 = 0x7954797469746E65;
    }

    if (!a1)
    {
      v1 = 0xD000000000000011;
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

uint64_t sub_252A787C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252A79818(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252A787F0(uint64_t a1)
{
  v2 = sub_252A79604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252A7882C(uint64_t a1)
{
  v2 = sub_252A79604();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252A78868(uint64_t *a1)
{
  v3 = v1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5421B0, &unk_252E43EB8);
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v39);
  v8 = &v39 - v7;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v9 = (v1 + 16);
  *(v1 + 32) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A79604();
  sub_252E37F74();
  if (v2)
  {
    v13 = *(v1 + 16);

    v14 = *(v1 + 32);

    v15 = *(v1 + 64);

    v16 = *(v1 + 88);

    v17 = *(v1 + 104);

    v18 = *(v1 + 120);

    v19 = *(v1 + 136);

    type metadata accessor for CodableHomeFilter();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    v40 = 0;
    sub_252984B28(&qword_27F540920);
    sub_252E37BE4();
    v11 = *v9;
    *v9 = v41;

    LOBYTE(v41) = 1;
    v12 = sub_252E37BA4();
    v21 = *(v1 + 32);
    *(v1 + 24) = v12;
    *(v1 + 32) = v22;

    LOBYTE(v41) = 2;
    *(v1 + 40) = sub_252E37C44();
    LOBYTE(v41) = 3;
    *(v1 + 48) = sub_252E37C44();
    LOBYTE(v41) = 4;
    v23 = sub_252E37BA4();
    v24 = *(v1 + 64);
    *(v1 + 56) = v23;
    *(v1 + 64) = v25;

    LOBYTE(v41) = 5;
    *(v1 + 72) = sub_252E37C44();
    LOBYTE(v41) = 9;
    v26 = sub_252E37BA4();
    v27 = *(v1 + 88);
    *(v1 + 80) = v26;
    *(v1 + 88) = v28;

    LOBYTE(v41) = 6;
    v29 = sub_252E37BA4();
    v30 = *(v1 + 104);
    *(v1 + 96) = v29;
    *(v1 + 104) = v31;

    LOBYTE(v41) = 7;
    v32 = sub_252E37BA4();
    v33 = *(v1 + 120);
    *(v1 + 112) = v32;
    *(v1 + 120) = v34;

    LOBYTE(v41) = 8;
    v35 = sub_252E37BA4();
    v36 = *(v1 + 136);
    *(v1 + 128) = v35;
    *(v1 + 136) = v37;

    LOBYTE(v41) = 10;
    *(v1 + 144) = sub_252E37C14() & 1;
    LOBYTE(v41) = 11;
    v38 = sub_252E37C14();
    (*(v5 + 8))(v8, v39);
    *(v3 + 145) = v38 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_252A78CF0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5421C0, &qword_252E43EC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A79604();
  sub_252E37F84();
  *&v17 = *(v3 + 16);
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540378, &unk_252E43ED0);
  sub_252A79658();
  sub_252E37D54();
  if (!v2)
  {
    v17 = *(v3 + 24);
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    sub_25292FA38();
    sub_252E37D54();
    v11 = *(v3 + 40);
    LOBYTE(v17) = 2;
    sub_252E37D34();
    v12 = *(v3 + 48);
    LOBYTE(v17) = 3;
    sub_252E37D34();
    v17 = *(v3 + 56);
    v18 = 4;
    sub_252E37D54();
    v13 = *(v3 + 72);
    LOBYTE(v17) = 5;
    sub_252E37D34();
    v17 = *(v3 + 80);
    v18 = 9;
    sub_252E37D54();
    v17 = *(v3 + 96);
    v18 = 6;
    sub_252E37D54();
    v17 = *(v3 + 112);
    v18 = 7;
    sub_252E37D54();
    v17 = *(v3 + 128);
    v18 = 8;
    sub_252E37D54();
    v14 = *(v3 + 144);
    LOBYTE(v17) = 10;
    sub_252E37D04();
    v15 = *(v3 + 145);
    LOBYTE(v17) = 11;
    sub_252E37D04();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_252A79090()
{
  v1 = v0;
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  HomeFilter.Builder.init()();
  v2 = *(v0 + 16);
  v4 = *(*v3 + 568);

  v6 = v4(v5);

  v7 = *(v0 + 24);
  v8 = *(v1 + 32);
  v9 = *(*v6 + 576);

  v10 = v9(v7, v8);

  v11 = sub_252E25BD0(*(v1 + 40));
  if (v12)
  {
    v11 = 0;
  }

  v13 = (*(*v10 + 592))(v11);

  v14 = sub_252E25FC4(*(v1 + 48));
  if (v15)
  {
    v14 = 0;
  }

  v16 = (*(*v13 + 600))(v14);

  v17 = *(v1 + 56);
  v18 = *(v1 + 64);
  v19 = *(*v16 + 608);

  v20 = v19(v17, v18);

  v21 = sub_252E25FC4(*(v1 + 72));
  if (v22)
  {
    v21 = 0;
  }

  v23 = (*(*v20 + 624))(v21);

  v24 = *(v1 + 80);
  v25 = *(v1 + 88);
  v26 = *(*v23 + 632);

  v27 = v26(v24, v25);

  v28 = *(v1 + 96);
  v29 = *(v1 + 104);
  v30 = *(*v27 + 648);

  v31 = v30(v28, v29);

  v32 = *(v1 + 112);
  v33 = *(v1 + 120);
  v34 = *(*v31 + 664);

  v35 = v34(v32, v33);

  v36 = *(v1 + 128);
  v37 = *(v1 + 136);
  v38 = *(*v35 + 680);

  v39 = v38(v36, v37);

  v40 = (*(*v39 + 728))(*(v1 + 144));

  v41 = (*(*v40 + 736))(*(v1 + 145));

  v43 = (*(*v41 + 760))(v42);

  return v43;
}

uint64_t sub_252A79588@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CodableHomeFilter();
  v5 = swift_allocObject();
  result = sub_252A78868(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_252A79604()
{
  result = qword_27F5421B8;
  if (!qword_27F5421B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5421B8);
  }

  return result;
}

unint64_t sub_252A79658()
{
  result = qword_27F5421C8;
  if (!qword_27F5421C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540378, &unk_252E43ED0);
    sub_252984B28(&qword_27F540B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5421C8);
  }

  return result;
}

unint64_t sub_252A79714()
{
  result = qword_27F5421D0;
  if (!qword_27F5421D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5421D0);
  }

  return result;
}

unint64_t sub_252A7976C()
{
  result = qword_27F5421D8;
  if (!qword_27F5421D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5421D8);
  }

  return result;
}

unint64_t sub_252A797C4()
{
  result = qword_27F5421E0;
  if (!qword_27F5421E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5421E0);
  }

  return result;
}

uint64_t sub_252A79818(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000252E6FD80 == a2;
  if (v3 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69746E45656D6F68 && a2 == 0xEE00656D614E7974 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7954797469746E65 && a2 == 0xEA00000000006570 || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x766544726574756FLL && a2 == 0xEF65707954656369 || (sub_252E37DB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x766544726574756FLL && a2 == 0xEF656D614E656369 || (sub_252E37DB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570 || (sub_252E37DB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701736314 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1836019570 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1701670760 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x64756C6378457369 && a2 == 0xEF7265746C694665 || (sub_252E37DB4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000252E66BA0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t getEnumTagSinglePayload for AttributeKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC5)
  {
    goto LABEL_17;
  }

  if (a2 + 59 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 59) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 59;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 59;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 59;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3C;
  v8 = v6 - 60;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AttributeKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 59 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 59) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC5)
  {
    v4 = 0;
  }

  if (a2 > 0xC4)
  {
    v5 = ((a2 - 197) >> 8) + 1;
    *result = a2 + 59;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 59;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252A79D60()
{
  result = qword_27F5422C0;
  if (!qword_27F5422C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5422C0);
  }

  return result;
}

uint64_t sub_252A79DB4(char a1)
{
  result = 0x6D7575636176;
  switch(a1)
  {
    case 1:
      result = 7368557;
      break;
    case 2:
      result = 0x61656C4370656564;
      break;
    case 3:
      result = 1869903201;
      break;
    case 4:
      result = 0x7465697571;
      break;
    case 5:
      result = 0x6B63697571;
      break;
    case 6:
      result = 0x6573696F4E776F6CLL;
      break;
    case 7:
      result = 0x6772656E45776F6CLL;
      break;
    case 8:
      result = 0x6E6F697461636176;
      break;
    case 9:
      result = 0x746867696ELL;
      break;
    case 10:
      result = 7954788;
      break;
    case 11:
      result = 7235949;
      break;
    case 12:
      result = 7889261;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_252A79EE4(char a1)
{
  result = 0x696C617551726961;
  switch(a1)
  {
    case 1:
    case 6:
    case 22:
    case 24:
      return 0xD000000000000012;
    case 2:
      return result;
    case 3:
      return 0x656E746867697262;
    case 4:
      return 0x4C79726574746162;
    case 7:
    case 8:
    case 32:
      return 0xD000000000000016;
    case 9:
    case 33:
      return 0xD000000000000013;
    case 10:
    case 15:
      return 0xD000000000000017;
    case 11:
      return 0x676E696772616863;
    case 12:
      return 0xD000000000000010;
    case 13:
      return 0x726F6C6F63;
    case 14:
      return 0x44746361746E6F63;
    case 16:
      return 0xD000000000000010;
    case 17:
      return 0xD000000000000010;
    case 18:
      return 0xD000000000000021;
    case 19:
      return 0x50746E6572727563;
    case 20:
      return 0x48746E6572727563;
    case 21:
      v4 = 10;
      return v4 | 0xD000000000000010;
    case 25:
      return 0x694C7265746C6966;
    case 26:
      return 0x6573556E69;
    case 27:
      return 0x657465446B61656CLL;
    case 28:
      return 0x6574746142776F6CLL;
    case 29:
      v5 = 0x4C746867696CLL;
      return v5 & 0xFFFFFFFFFFFFLL | 0x7665000000000000;
    case 30:
      return 0x65446E6F69746F6DLL;
    case 31:
      return 0x4C6C61727574616ELL;
    case 34:
    case 39:
    case 40:
      return 0xD000000000000011;
    case 35:
      v3 = 0x44656E6F7A6FLL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
    case 36:
      return 0x736E654430316D70;
    case 37:
      v3 = 0x44355F326D70;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
    case 38:
      return 0x7265776F70;
    case 41:
      return 0x6E6F697461746F72;
    case 42:
      return 6518386;
    case 43:
      return 0x6572727543637672;
    case 44:
      return 0x4165636976726573;
    case 45:
      return 0x4D65636976726573;
    case 46:
      return 0x7461727544746573;
    case 47:
      return 0x746544656B6F6D73;
    case 49:
      return 0xD000000000000010;
    case 50:
      return 0x6F44746567726174;
    case 51:
      return 0xD000000000000029;
    case 52:
      return 0x7548746567726174;
    case 53:
      return 0x6F4C746567726174;
    case 54:
      return 0x6F50746567726174;
    case 55:
      v4 = 9;
      return v4 | 0xD000000000000010;
    case 56:
      v4 = 13;
      return v4 | 0xD000000000000010;
    case 57:
      return 0xD00000000000001ELL;
    case 58:
      v5 = 0x4C7265746177;
      return v5 & 0xFFFFFFFFFFFFLL | 0x7665000000000000;
    case 59:
      return 1701736302;
    default:
      v4 = 5;
      return v4 | 0xD000000000000010;
  }
}

uint64_t sub_252A7A514(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x65756C6176;
    v7 = 0x6E61527265776F6CLL;
    if (a1 != 10)
    {
      v7 = 0x6E61527265707075;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 6649192;
    v9 = 0x6974617275746173;
    if (a1 != 7)
    {
      v9 = 1701080941;
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
    v1 = 12639;
    v2 = 0x646F4D6E61656C63;
    v3 = 0x444970616DLL;
    if (a1 != 4)
    {
      v3 = 0x73444961657261;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 12895;
    if (a1 != 1)
    {
      v4 = 0x65746174536E7572;
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

uint64_t sub_252A7A6D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252A8150C();
  *a2 = result;
  return result;
}

uint64_t sub_252A7A700@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252A79EE4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252A7A72C()
{
  v0 = *aAttributekind_3;

  return v0;
}

uint64_t sub_252A7A774(uint64_t a1)
{
  v2 = sub_252A81758();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A7A7B0(uint64_t a1)
{
  v2 = sub_252A81758();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A7A7EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A7AA24();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A7A838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A81758();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A7A89C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A7AA24();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_252A7A8EC()
{
  result = qword_27F5422C8;
  if (!qword_27F5422C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5422C8);
  }

  return result;
}

unint64_t sub_252A7A944()
{
  result = qword_27F5422D0;
  if (!qword_27F5422D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5422D0);
  }

  return result;
}

unint64_t sub_252A7A9CC()
{
  result = qword_27F5422E8;
  if (!qword_27F5422E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5422E8);
  }

  return result;
}

unint64_t sub_252A7AA24()
{
  result = qword_27F5422F0;
  if (!qword_27F5422F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5422F0);
  }

  return result;
}

unint64_t sub_252A7AA7C()
{
  result = qword_27F5422F8;
  if (!qword_27F5422F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5422F8);
  }

  return result;
}

unint64_t sub_252A7AAD4()
{
  result = qword_27F542300;
  if (!qword_27F542300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542300);
  }

  return result;
}

unint64_t sub_252A7AB38()
{
  result = qword_27F542308;
  if (!qword_27F542308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542308);
  }

  return result;
}

uint64_t sub_252A7ABEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252A82BF8();
  *a2 = result;
  return result;
}

uint64_t sub_252A7AC1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252A7A514(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252A7AC48()
{
  v21 = sub_252E37F54();
  v1 = *(v21 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[7] = &type metadata for Attribute;
  v5 = swift_allocObject();
  v24[4] = v5;
  v6 = *(v0 + 16);
  *(v5 + 16) = *v0;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v0 + 32);
  sub_252A84780(v0, &v22);
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
      sub_252CC4050(0xD000000000000029, 0x8000000252E760B0, 0xD000000000000078, 0x8000000252E75DE0, 0x6E65644965707974, 0xEE00726569666974, 212);
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

uint64_t sub_252A7AF40()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  switch(v0[32] >> 2)
  {
    case 1:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v55 = *(sub_252E36724() - 8);
      v56 = *(v55 + 72);
      v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A8472C();
      sub_252A84410();
      goto LABEL_23;
    case 2:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v52 = *(sub_252E36724() - 8);
      v53 = *(v52 + 72);
      v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A846D8();
      sub_252A84410();
      goto LABEL_23;
    case 5:
    case 8:
    case 0xB:
    case 0xD:
    case 0x17:
    case 0x1B:
    case 0x1D:
    case 0x1E:
    case 0x20:
    case 0x21:
    case 0x25:
    case 0x2B:
    case 0x2E:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v3 = *(sub_252E36724() - 8);
      v4 = *(v3 + 72);
      v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A84410();
      goto LABEL_23;
    case 0xC:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v40 = *(sub_252E36724() - 8);
      v41 = *(v40 + 72);
      v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      *(swift_allocObject() + 16) = xmmword_252E3C3C0;
      sub_252A84410();
      sub_252E366F4();
      goto LABEL_23;
    case 0xE:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v34 = *(sub_252E36724() - 8);
      v35 = *(v34 + 72);
      v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A84684();
      sub_252A84410();
      goto LABEL_23;
    case 0xF:
    case 0x2F:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v13 = *(sub_252E36724() - 8);
      v14 = *(v13 + 72);
      v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A8450C();
      sub_252A84410();
      goto LABEL_23;
    case 0x10:
    case 0x18:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v16 = *(sub_252E36724() - 8);
      v17 = *(v16 + 72);
      v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A84630();
      sub_252A84410();
      goto LABEL_23;
    case 0x12:
    case 0x31:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v19 = *(sub_252E36724() - 8);
      v20 = *(v19 + 72);
      v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A844B8();
      sub_252A84410();
      goto LABEL_23;
    case 0x14:
    case 0x33:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v22 = *(sub_252E36724() - 8);
      v23 = *(v22 + 72);
      v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A84464();
      sub_252A84410();
      goto LABEL_23;
    case 0x16:
    case 0x34:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v10 = *(sub_252E36724() - 8);
      v11 = *(v10 + 72);
      v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A822DC();
      sub_252A84410();
      goto LABEL_23;
    case 0x19:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v43 = *(sub_252E36724() - 8);
      v44 = *(v43 + 72);
      v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      *(swift_allocObject() + 16) = xmmword_252E3C3C0;
      sub_252A84630();
      sub_252A84410();
      goto LABEL_16;
    case 0x1A:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v37 = *(sub_252E36724() - 8);
      v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v39 = 2 * *(v37 + 72);
      *(swift_allocObject() + 16) = xmmword_252E3C280;
      sub_252A84630();
      sub_252A84410();
      goto LABEL_18;
    case 0x27:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v31 = *(sub_252E36724() - 8);
      v32 = *(v31 + 72);
      v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A845DC();
      sub_252A84410();
      goto LABEL_23;
    case 0x29:
      v59 = *(v0 + 3);

      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v49 = *(sub_252E36724() - 8);
      v50 = *(v49 + 72);
      v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      *(swift_allocObject() + 16) = xmmword_252E3EF80;
      sub_252A65570();
      sub_252A84410();
      sub_252E366F4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541FD8, &unk_252E42FD0);
      sub_252A655C4();
      sub_252E366F4();
      sub_252E366F4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416D8, &qword_252E40998);
      sub_252A84560();
      goto LABEL_23;
    case 0x2A:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v25 = *(sub_252E36724() - 8);
      v26 = *(v25 + 72);
      v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A6551C();
      sub_252A84410();
      goto LABEL_23;
    case 0x35:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v28 = *(sub_252E36724() - 8);
      v29 = *(v28 + 72);
      v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      *(swift_allocObject() + 16) = xmmword_252E3C3C0;
      sub_252A822DC();
      sub_252A84410();
LABEL_16:
      sub_252E366F4();
      sub_252E366F4();
      goto LABEL_24;
    case 0x36:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v46 = *(sub_252E36724() - 8);
      v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v48 = 2 * *(v46 + 72);
      *(swift_allocObject() + 16) = xmmword_252E3C280;
      sub_252A822DC();
      sub_252A84410();
LABEL_18:
      sub_252E366F4();
      sub_252E366F4();
      goto LABEL_23;
    default:
      v6 = *v0 | ((*(v0 + 1) | ((*(v0 + 5) | (v0[7] << 16)) << 32)) << 8);
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v7 = *(sub_252E36724() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A84410();
LABEL_23:
      sub_252E366F4();
LABEL_24:
      sub_252E36564();
  }
}

uint64_t sub_252A7C104()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_252A7AF40();
}

double sub_252A7C140@<D0>(uint64_t a1@<X8>)
{
  sub_252A82C44(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_252A7C184(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_252A80760(v5, v7) & 1;
}

uint64_t sub_252A7C1D0()
{
  sub_252A82828();

  return sub_252E36514();
}

uint64_t sub_252A7C20C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A82828();

  return MEMORY[0x28213DA58](a1, a2, v4);
}

uint64_t sub_252A7C258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A82828();

  return MEMORY[0x28213DA68](a1, a2, a3, v6);
}

uint64_t sub_252A7C2BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A82828();

  return MEMORY[0x28213DA60](a1, a2, v4);
}

uint64_t sub_252A7C308(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x3031657A6973;
  }

  else
  {
    v4 = 0x355F32657A6973;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x3031657A6973;
  }

  else
  {
    v6 = 0x355F32657A6973;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252A7C3AC()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A7C42C()
{
  *v0;
  sub_252E37044();
}

uint64_t sub_252A7C498()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252A7C520(uint64_t *a1@<X8>)
{
  v2 = 0x355F32657A6973;
  if (*v1)
  {
    v2 = 0x3031657A6973;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_252A7C55C()
{
  v0 = qword_27F5421F8;

  return v0;
}

uint64_t sub_252A7C5A4(uint64_t a1)
{
  v2 = sub_252A862B4();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A7C5E0(uint64_t a1)
{
  v2 = sub_252A862B4();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A7C61C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A84C34();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A7C668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A862B4();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A7C6CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A84C34();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_252A7C72C()
{
  *v0;
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252A7C80C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252A847B8();
  *a2 = result;
  return result;
}

void sub_252A7C83C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE400000000000000;
  v6 = 1919508838;
  v7 = 0xE800000000000000;
  v8 = 0x726F697265666E69;
  if (v2 != 4)
  {
    v8 = 1919905648;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000074;
  v10 = 0x6E656C6C65637865;
  if (v2 != 1)
  {
    v10 = 1685024615;
    v9 = 0xE400000000000000;
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

uint64_t sub_252A7C8E4()
{
  v0 = *aAirquality_3;

  return v0;
}

uint64_t sub_252A7C92C(uint64_t a1)
{
  v2 = sub_252A86260();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A7C968(uint64_t a1)
{
  v2 = sub_252A86260();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A7C9A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A84E74();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A7C9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A86260();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A7CA54(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A84E74();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

id sub_252A7CAA0(char a1)
{
  v2 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = v4;
  [v5 setIntegerValue_];
  [v5 setUnit_];
  [v5 setType_];

  return v5;
}

uint64_t sub_252A7CB68()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A7CC40()
{
  *v0;
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252A7CD04()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A7CDD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252A84804();
  *a2 = result;
  return result;
}

void sub_252A7CE08(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1852141679;
  v5 = 0x676E696E65706FLL;
  v6 = 0x676E69736F6C63;
  if (v2 != 3)
  {
    v6 = 0x646570706F7473;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0x6465736F6C63;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_252A7CE9C()
{
  v0 = *aPositionstate_0;

  return v0;
}

uint64_t sub_252A7CEE4(uint64_t a1)
{
  v2 = sub_252A86110();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A7CF20(uint64_t a1)
{
  v2 = sub_252A86110();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A7CF5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A852F4();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A7CFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A86110();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A7D00C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A852F4();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

id sub_252A7D058(char a1)
{
  v1 = a1 == 1;
  v2 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = v4;
  [v5 setIntegerValue_];
  [v5 setUnit_];
  [v5 setType_];

  return v5;
}

uint64_t sub_252A7D11C()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A7D1D8()
{
  *v0;
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252A7D280()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A7D338@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252A84850();
  *a2 = result;
  return result;
}

void sub_252A7D368(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x64656B636F6C6E75;
  v4 = 0xE600000000000000;
  v5 = 0x64656D6D616ALL;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x64656B636F6CLL;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_252A7D3E0()
{
  v0 = *aLockstate_0;

  return v0;
}

uint64_t sub_252A7D428(uint64_t a1)
{
  v2 = sub_252A860BC();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A7D464(uint64_t a1)
{
  v2 = sub_252A860BC();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A7D4A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A85774();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A7D4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A860BC();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A7D550(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A85774();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_252A7D5FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252A8489C();
  *a2 = result;
  return result;
}

uint64_t sub_252A7D62C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252A79DB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252A7D658()
{
  v0 = qword_27F542238;

  return v0;
}

uint64_t sub_252A7D6A0(uint64_t a1)
{
  v2 = sub_252A84A6C();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A7D6DC(uint64_t a1)
{
  v2 = sub_252A84A6C();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A7D718(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A81F40();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A7D764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A84A6C();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A7D7C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A81F40();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_252A7D814(char a1)
{
  result = 0x646570706F7473;
  switch(a1)
  {
    case 1:
      result = 0x676E696E6E7572;
      break;
    case 2:
      result = 0x646573756170;
      break;
    case 3:
      result = 0x726F727265;
      break;
    case 4:
      result = 0x43676E696B656573;
      break;
    case 5:
      result = 0x676E696772616863;
      break;
    case 6:
      result = 0x64656B636F64;
      break;
    case 7:
      result = 0x6B63757473;
      break;
    case 8:
      result = 0x6574746142776F6CLL;
      break;
    case 9:
      result = 0x4D6E694274737564;
      break;
    case 10:
      result = 0x466E694274737564;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x6E61547265746177;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_252A7DA00(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_252E37DB4();
  }

  return v12 & 1;
}

uint64_t sub_252A7DAAC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_252E37EC4();
  a3(v5);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A7DB30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_252E37044();
}

uint64_t sub_252A7DBA0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_252E37EC4();
  a4(v6);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A7DC08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252A848E8();
  *a2 = result;
  return result;
}

unint64_t sub_252A7DC38@<X0>(unint64_t *a1@<X8>)
{
  result = sub_252A7D814(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252A7DC64()
{
  v0 = qword_27F542248;

  return v0;
}

uint64_t sub_252A7DCAC(uint64_t a1)
{
  v2 = sub_252A827D4();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A7DCE8(uint64_t a1)
{
  v2 = sub_252A827D4();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A7DD24(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A81CA8();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A7DD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A827D4();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A7DDD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A81CA8();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_252A7DE20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656D75736572;
  if (v2 != 1)
  {
    v3 = 0x6C65636E6163;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6573756170;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0x656D75736572;
  if (*a2 != 1)
  {
    v6 = 0x6C65636E6163;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6573756170;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252A7DF10()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A7DFA8()
{
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252A7E02C()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A7E0C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252A84934();
  *a2 = result;
  return result;
}

void sub_252A7E0F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656D75736572;
  if (v2 != 1)
  {
    v4 = 0x6C65636E6163;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6573756170;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_252A7E144()
{
  v0 = qword_27F542258;

  return v0;
}

uint64_t sub_252A7E18C(uint64_t a1)
{
  v2 = sub_252A82780();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A7E1C8(uint64_t a1)
{
  v2 = sub_252A82780();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A7E204(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A82180();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A7E250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A82780();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A7E2B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A82180();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

id sub_252A7E300(unsigned __int8 a1)
{
  type metadata accessor for HomeAttributeValue();
  if (a1 <= 1u)
  {
    if (!a1)
    {
      v2 = 0x4D5241534944;
      v3 = 0xE600000000000000;
      return HomeAttributeValue.__allocating_init(stringValue:unit:)(v2, v3, 0);
    }

    v2 = 0x4D52415F59415453;
LABEL_10:
    v3 = 0xE800000000000000;
    return HomeAttributeValue.__allocating_init(stringValue:unit:)(v2, v3, 0);
  }

  if (a1 == 2)
  {
    v2 = 0x4D52415F59415741;
    goto LABEL_10;
  }

  if (a1 == 3)
  {
    v2 = 0x52415F544847494ELL;
    v3 = 0xE90000000000004DLL;
  }

  else
  {
    v2 = 0x52545F4D52414C41;
    v3 = 0xEF44455245474749;
  }

  return HomeAttributeValue.__allocating_init(stringValue:unit:)(v2, v3, 0);
}

uint64_t sub_252A7E3E0()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A7E4AC()
{
  *v0;
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252A7E564()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A7E62C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252A84980();
  *a2 = result;
  return result;
}

void sub_252A7E65C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6710895;
  v5 = 0xE400000000000000;
  v6 = 2036430689;
  v7 = 0xE500000000000000;
  v8 = 0x746867696ELL;
  if (v2 != 3)
  {
    v8 = 0x6572656767697274;
    v7 = 0xE900000000000064;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1701670760;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_252A7E6E4()
{
  v0 = qword_27F542268;

  return v0;
}

uint64_t sub_252A7E72C(uint64_t a1)
{
  v2 = sub_252A86068();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A7E768(uint64_t a1)
{
  v2 = sub_252A86068();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A7E7A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A859B4();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A7E7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A86068();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A7E854(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A859B4();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_252A7E8A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542310, &qword_252E44318);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E419D0;
  *(inited + 32) = sub_252E36FA4();
  *(inited + 40) = v1;
  *(inited + 48) = 2;
  *(inited + 56) = sub_252E36FA4();
  *(inited + 64) = v2;
  *(inited + 72) = 3;
  *(inited + 80) = sub_252E36FA4();
  *(inited + 88) = v3;
  *(inited + 96) = 4;
  *(inited + 104) = sub_252E36FA4();
  *(inited + 112) = v4;
  *(inited + 120) = 1;
  *(inited + 128) = sub_252E36FA4();
  *(inited + 136) = v5;
  *(inited + 144) = 5;
  *(inited + 152) = sub_252E36FA4();
  *(inited + 160) = v6;
  *(inited + 168) = 3;
  *(inited + 176) = sub_252E36FA4();
  *(inited + 184) = v7;
  *(inited + 192) = 4;
  v8 = sub_252CC539C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542318, &qword_252E44320);
  result = swift_arrayDestroy();
  off_27F542288 = v8;
  return result;
}

void *sub_252A7EA18(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      type metadata accessor for HomeAttributeValue();
      v1 = 1413563720;
    }

    else if (a1 == 4)
    {
      type metadata accessor for HomeAttributeValue();
      v1 = 1280266051;
    }

    else
    {
      type metadata accessor for HomeAttributeValue();
      v1 = 1330926913;
    }

    goto LABEL_12;
  }

  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  if (a1 != 1)
  {
    type metadata accessor for HomeAttributeValue();
    v1 = 1162626121;
LABEL_12:
    v2 = 0xE400000000000000;
    goto LABEL_13;
  }

  type metadata accessor for HomeAttributeValue();
  v1 = 4605519;
  v2 = 0xE300000000000000;
LABEL_13:
  v4 = HomeAttributeValue.__allocating_init(stringValue:unit:)(v1, v2, 0);
  v3 = sub_2529F8630(0, 1, 1, MEMORY[0x277D84F90]);
  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_2529F8630((v5 > 1), v6 + 1, 1, v3);
  }

  v3[2] = v6 + 1;
  v7 = &v3[2 * v6];
  v7[4] = 14;
  v7[5] = v4;
  return v3;
}

void *sub_252A7EB54(unsigned __int8 a1, double a2)
{
  v4 = sub_252A7EA18(a1);
  if (a1 > 2u)
  {
    if (a1 == 3 || a1 == 4)
    {
      v5 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v6 = sub_252E36F04();
      v7 = [v5 initWithIdentifier:0 displayString:v6];

      v8 = v7;
      [v8 setDoubleValue_];
      [v8 setUnit_];
      [v8 setType_];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2529F8630(0, v4[2] + 1, 1, v4);
      }

      v10 = v4[2];
      v9 = v4[3];
      v11 = v10 + 1;
      if (v10 >= v9 >> 1)
      {
        v15 = sub_2529F8630((v9 > 1), v10 + 1, 1, v4);
        v11 = v10 + 1;
        v4 = v15;
      }

      v4[2] = v11;
      v12 = &v4[2 * v10];
      v12[4] = 6;
      v12[5] = v8;
    }

    else
    {
      if (qword_27F53F568 != -1)
      {
        swift_once();
      }

      v13 = sub_252E36AD4();
      __swift_project_value_buffer(v13, qword_27F544EE0);
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000049, 0x8000000252E75D90);
      sub_252E37374();
      sub_252CC4050(0, 0xE000000000000000, 0xD000000000000078, 0x8000000252E75DE0, 0xD000000000000021, 0x8000000252E75E60, 780);
    }
  }

  return v4;
}

void *sub_252A7EDA8(uint64_t a1, char a2, uint64_t a3, char a4, unsigned __int8 a5)
{
  v9 = sub_252A7EA18(a5);
  if ((a2 & 1) == 0)
  {
    v10 = *&a1;
    v11 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v12 = sub_252E36F04();
    v13 = [v11 initWithIdentifier:0 displayString:v12];

    v14 = v13;
    [v14 setDoubleValue_];
    [v14 setUnit_];
    [v14 setType_];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_2529F8630(0, v9[2] + 1, 1, v9);
    }

    v16 = v9[2];
    v15 = v9[3];
    if (v16 >= v15 >> 1)
    {
      v9 = sub_2529F8630((v15 > 1), v16 + 1, 1, v9);
    }

    v9[2] = v16 + 1;
    v17 = &v9[2 * v16];
    v17[4] = 17;
    v17[5] = v14;
  }

  if ((a4 & 1) == 0)
  {
    v18 = *&a3;
    v19 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v20 = sub_252E36F04();
    v21 = [v19 initWithIdentifier:0 displayString:v20];

    v22 = v21;
    [v22 setDoubleValue_];
    [v22 setUnit_];
    [v22 setType_];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_2529F8630(0, v9[2] + 1, 1, v9);
    }

    v24 = v9[2];
    v23 = v9[3];
    if (v24 >= v23 >> 1)
    {
      v9 = sub_2529F8630((v23 > 1), v24 + 1, 1, v9);
    }

    v9[2] = v24 + 1;
    v25 = &v9[2 * v24];
    v25[4] = 19;
    v25[5] = v22;
  }

  return v9;
}

uint64_t sub_252A7F000()
{
  *v0;
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252A7F0C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252A849CC();
  *a2 = result;
  return result;
}

void sub_252A7F0F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 1952540008;
  v6 = 1819242339;
  if (v2 != 4)
  {
    v6 = 1869903201;
  }

  if (v2 != 3)
  {
    v5 = v6;
  }

  v7 = 0xE300000000000000;
  v8 = 6710895;
  if (v2 != 1)
  {
    v8 = 28271;
    v7 = 0xE200000000000000;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = v7;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_252A7F180()
{
  v0 = *aThermostatmode_7;

  return v0;
}

uint64_t sub_252A7F1C8(uint64_t a1)
{
  v2 = sub_252A84A18();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A7F204(uint64_t a1)
{
  v2 = sub_252A84A18();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A7F240(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A8246C();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A7F28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A84A18();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A7F2F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A8246C();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_252A7F33C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701602409;
  if (v2 != 1)
  {
    v4 = 0x657669746361;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6576697463616E69;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1701602409;
  if (*a2 != 1)
  {
    v8 = 0x657669746361;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6576697463616E69;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252A7F428()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A7F4C0()
{
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252A7F544()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A7F5D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252A86308();
  *a2 = result;
  return result;
}

void sub_252A7F608(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701602409;
  if (v2 != 1)
  {
    v5 = 0x657669746361;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6576697463616E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_252A7F65C()
{
  v0 = qword_27F542290;

  return v0;
}

uint64_t sub_252A7F6A4(uint64_t a1)
{
  v2 = sub_252A8620C();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A7F6E0(uint64_t a1)
{
  v2 = sub_252A8620C();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A7F71C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A850B4();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A7F768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A8620C();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A7F7CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A850B4();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

void *sub_252A7F818(uint64_t a1, char a2, uint64_t a3, char a4, unsigned __int8 a5)
{
  if (a5 > 2u)
  {
    if (a5 == 3)
    {
      v13 = type metadata accessor for HomeAttributeValue();
      v38 = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4944494D55484544, 0xEA00000000005946, 0);
      result = sub_2529F8630(0, 1, 1, MEMORY[0x277D84F90]);
      v40 = result[2];
      v39 = result[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        result = sub_2529F8630((v39 > 1), v40 + 1, 1, result);
        v41 = v40 + 1;
      }

      result[2] = v41;
      v42 = &result[2 * v40];
      v42[4] = 24;
      v42[5] = v38;
      if (a2)
      {
        return result;
      }

      v30 = *&a1;
    }

    else
    {
      if (a5 != 4)
      {
        if (a2)
        {
          result = MEMORY[0x277D84F90];
          if (a4)
          {
            return result;
          }
        }

        else
        {
          v60 = a3;
          v62 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
          v63 = sub_252E36F04();
          v64 = [v62 initWithIdentifier:0 displayString:v63];

          v65 = v64;
          [v65 setDoubleValue_];
          [v65 setUnit_];
          [v65 setType_];

          result = sub_2529F8630(0, 1, 1, MEMORY[0x277D84F90]);
          v66 = result[2];
          v67 = result[3];
          v68 = v66 + 1;
          if (v66 >= v67 >> 1)
          {
            v77 = result[2];
            result = sub_2529F8630((v67 > 1), v68, 1, result);
            v66 = v77;
          }

          a3 = v60;
          result[2] = v68;
          v69 = &result[2 * v66];
          v69[4] = 23;
          v69[5] = v65;
          if (a4)
          {
            return result;
          }
        }

        v70 = *&a3;
        v71 = result;
        v72 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v73 = sub_252E36F04();
        v74 = [v72 initWithIdentifier:0 displayString:v73];

        v10 = v74;
        [v10 setDoubleValue_];
        [v10 setUnit_];
        [v10 setType_];

        v43 = v71;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_2529F8630(0, v71[2] + 1, 1, v71);
        }

LABEL_38:
        result = v43;
        v35 = v43[2];
        v75 = result[3];
        v36 = v35 + 1;
        if (v35 >= v75 >> 1)
        {
          result = sub_2529F8630((v75 > 1), v35 + 1, 1, result);
        }

        v37 = 24;
        goto LABEL_41;
      }

      v12 = *&a3;
      v13 = type metadata accessor for HomeAttributeValue();
      v14 = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
      result = sub_2529F8630(0, 1, 1, MEMORY[0x277D84F90]);
      v17 = result[2];
      v16 = result[3];
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        result = sub_2529F8630((v16 > 1), v17 + 1, 1, result);
        v18 = v17 + 1;
      }

      v19 = a4;
      result[2] = v18;
      v20 = &result[2 * v17];
      v20[4] = 20;
      v20[5] = v14;
      if ((a2 & 1) == 0)
      {
        v21 = *&a1;
        v22 = result;
        v23 = objc_allocWithZone(v13);
        v24 = sub_252E36F04();
        v25 = [v23 initWithIdentifier:0 displayString:v24];

        v26 = v25;
        [v26 setDoubleValue_];
        [v26 setUnit_];
        [v26 setType_];

        result = v22;
        v27 = v22[2];
        v28 = result[3];
        if (v27 >= v28 >> 1)
        {
          result = sub_2529F8630((v28 > 1), v27 + 1, 1, result);
        }

        v19 = a4;
        result[2] = v27 + 1;
        v29 = &result[2 * v27];
        v29[4] = 23;
        v29[5] = v26;
      }

      if (v19)
      {
        return result;
      }

      v30 = v12;
    }

    v43 = result;
    v44 = objc_allocWithZone(v13);
    v45 = sub_252E36F04();
    v46 = [v44 initWithIdentifier:0 displayString:v45];

    v10 = v46;
    [v10 setDoubleValue_];
    [v10 setUnit_];
    [v10 setType_];

    goto LABEL_38;
  }

  if (!a5)
  {
    v31 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v32 = sub_252E36F04();
    v33 = [v31 initWithIdentifier:0 displayString:v32];

    v10 = v33;
    [v10 setBoolValue_];
    goto LABEL_16;
  }

  if (a5 == 1)
  {
    v7 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v8 = sub_252E36F04();
    v9 = [v7 initWithIdentifier:0 displayString:v8];

    v10 = v9;
    [v10 setBoolValue_];
LABEL_16:
    [v10 setType_];

    result = sub_2529F8630(0, 1, 1, MEMORY[0x277D84F90]);
    v35 = result[2];
    v34 = result[3];
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_2529F8630((v34 > 1), v35 + 1, 1, result);
    }

    v37 = 27;
LABEL_41:
    result[2] = v36;
    v76 = &result[2 * v35];
    v76[4] = v37;
    v76[5] = v10;
    return result;
  }

  v47 = type metadata accessor for HomeAttributeValue();
  v48 = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x59464944494D5548, 0xE800000000000000, 0);
  result = sub_2529F8630(0, 1, 1, MEMORY[0x277D84F90]);
  v50 = result[2];
  v49 = result[3];
  v51 = v50 + 1;
  if (v50 >= v49 >> 1)
  {
    result = sub_2529F8630((v49 > 1), v50 + 1, 1, result);
    v51 = v50 + 1;
  }

  result[2] = v51;
  v52 = &result[2 * v50];
  v52[4] = 20;
  v52[5] = v48;
  if ((a2 & 1) == 0)
  {
    v53 = *&a1;
    v54 = result;
    v55 = objc_allocWithZone(v47);
    v56 = sub_252E36F04();
    v57 = [v55 initWithIdentifier:0 displayString:v56];

    v10 = v57;
    [v10 setDoubleValue_];
    [v10 setUnit_];
    [v10 setType_];

    result = v54;
    v35 = v54[2];
    v58 = result[3];
    v36 = v35 + 1;
    if (v35 >= v58 >> 1)
    {
      result = sub_2529F8630((v58 > 1), v35 + 1, 1, result);
    }

    v37 = 23;
    goto LABEL_41;
  }

  return result;
}

uint64_t sub_252A7FFB0()
{
  *v0;
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252A80088@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252A86354();
  *a2 = result;
  return result;
}

void sub_252A800B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6710895;
  v5 = 0xEA00000000007966;
  v6 = 0x6964696D75686564;
  v7 = 1869903201;
  if (v2 != 4)
  {
    v7 = 1701736302;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  v8 = 0xE200000000000000;
  v9 = 28271;
  if (v2 != 1)
  {
    v9 = 0x79666964696D7568;
    v8 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_252A80158()
{
  v0 = qword_27F5422A0;

  return v0;
}

uint64_t sub_252A801A0(uint64_t a1)
{
  v2 = sub_252A861B8();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A801DC(uint64_t a1)
{
  v2 = sub_252A861B8();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A80218(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A85534();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A80264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A861B8();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A802C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A85534();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_252A80314(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x7369776B636F6C63;
  }

  if (v3)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v5 = 0x8000000252E674D0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x7369776B636F6C63;
  }

  if (*a2)
  {
    v7 = 0x8000000252E674D0;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252A803C4()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A80450()
{
  *v0;
  sub_252E37044();
}

uint64_t sub_252A804C8()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252A8055C(unint64_t *a1@<X8>)
{
  v2 = 0x8000000252E674D0;
  v3 = 0x7369776B636F6C63;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE900000000000065;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_252A805A4()
{
  v0 = qword_27F5422B0;

  return v0;
}

uint64_t sub_252A805EC(uint64_t a1)
{
  v2 = sub_252A86164();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A80628(uint64_t a1)
{
  v2 = sub_252A86164();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A80664(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A85BF4();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A806B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A86164();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A80714(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A85BF4();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_252A80760(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 1) | ((*(a1 + 5) | (a1[7] << 16)) << 32);
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = a1[32];
  switch(v8 >> 2)
  {
    case 1u:
      if ((a2[32] & 0xFC) != 4)
      {
        goto LABEL_244;
      }

      v25 = *a2;
      v26 = (v3 & 1) == 0;
      if (v3)
      {
        v27 = 0x3031657A6973;
      }

      else
      {
        v27 = 0x355F32657A6973;
      }

      if (v26)
      {
        v28 = 0xE700000000000000;
      }

      else
      {
        v28 = 0xE600000000000000;
      }

      if (*a2)
      {
        v29 = 0x3031657A6973;
      }

      else
      {
        v29 = 0x355F32657A6973;
      }

      if (*a2)
      {
        v30 = 0xE600000000000000;
      }

      else
      {
        v30 = 0xE700000000000000;
      }

      if (v27 == v29 && v28 == v30)
      {
        goto LABEL_235;
      }

      goto LABEL_236;
    case 2u:
      if ((a2[32] & 0xFC) != 8)
      {
        goto LABEL_244;
      }

      v23 = *a2;

      return sub_252A0AB70(v3, v23);
    case 3u:
      if ((a2[32] & 0xFC) == 0xC)
      {
        goto LABEL_173;
      }

      goto LABEL_244;
    case 4u:
      if ((a2[32] & 0xFC) == 0x10)
      {
        goto LABEL_173;
      }

      goto LABEL_244;
    case 5u:
      if ((a2[32] & 0xFC) == 0x14)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 6u:
      if ((a2[32] & 0xFC) == 0x18)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 7u:
      if ((a2[32] & 0xFC) == 0x1C)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 8u:
      if ((a2[32] & 0xFC) == 0x20)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 9u:
      if ((a2[32] & 0xFC) == 0x24)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0xAu:
      if ((a2[32] & 0xFC) == 0x28)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0xBu:
      if ((a2[32] & 0xFC) == 0x2C)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 0xCu:
      if ((a2[32] & 0xFC) != 0x30 || *a2 != COERCE_DOUBLE(v3 | (v4 << 8)))
      {
        goto LABEL_244;
      }

      v21 = *(a2 + 1) == *&v5;
      goto LABEL_183;
    case 0xDu:
      if ((a2[32] & 0xFC) == 0x34)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 0xEu:
      if ((a2[32] & 0xFC) != 0x38)
      {
        goto LABEL_244;
      }

      v12 = 0x6576697463616E69;
      v13 = 0xE400000000000000;
      v14 = 1701602409;
      if (v3 != 1)
      {
        v14 = 0x657669746361;
        v13 = 0xE600000000000000;
      }

      v15 = v3 == 0;
      if (v3)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0x6576697463616E69;
      }

      if (v15)
      {
        v17 = 0xE800000000000000;
      }

      else
      {
        v17 = v13;
      }

      v18 = *a2;
      if (*a2)
      {
        if (v18 == 1)
        {
          v12 = 1701602409;
        }

        else
        {
          v12 = 0x657669746361;
        }

        if (v18 == 1)
        {
          v19 = 0xE400000000000000;
        }

        else
        {
          v19 = 0xE600000000000000;
        }
      }

      else
      {
        v19 = 0xE800000000000000;
      }

      goto LABEL_233;
    case 0xFu:
      if ((a2[32] & 0xFC) != 0x3C)
      {
        goto LABEL_244;
      }

      v24 = 1852141679;
      if (v3 <= 1)
      {
        v61 = v3 == 0;
        if (v3)
        {
          v16 = 0x6465736F6C63;
        }

        else
        {
          v16 = 1852141679;
        }

        if (v61)
        {
          v17 = 0xE400000000000000;
        }

        else
        {
          v17 = 0xE600000000000000;
        }
      }

      else if (v3 == 2)
      {
        v17 = 0xE700000000000000;
        v16 = 0x676E696E65706FLL;
      }

      else
      {
        if (v3 == 3)
        {
          v16 = 0x676E69736F6C63;
        }

        else
        {
          v16 = 0x646570706F7473;
        }

        v17 = 0xE700000000000000;
      }

      v56 = *a2;
      v57 = 0xE400000000000000;
      v58 = 0xE700000000000000;
      v59 = 0x676E696E65706FLL;
      v62 = 0x676E69736F6C63;
      if (v56 != 3)
      {
        v62 = 0x646570706F7473;
      }

      if (v56 != 2)
      {
        v59 = v62;
        v58 = 0xE700000000000000;
      }

      v60 = 1936682083;
      goto LABEL_225;
    case 0x10u:
      if ((a2[32] & 0xFC) == 0x40)
      {
        goto LABEL_70;
      }

      goto LABEL_244;
    case 0x11u:
      if ((a2[32] & 0xFC) == 0x44)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0x12u:
      if ((a2[32] & 0xFC) != 0x48)
      {
        goto LABEL_244;
      }

      v24 = 0x64656B636F6C6E75;
      if (v3 > 1)
      {
        v55 = v3 == 2;
        if (v3 == 2)
        {
          v16 = 0x64656D6D616ALL;
        }

        else
        {
          v16 = 0x6E776F6E6B6E75;
        }

        if (v55)
        {
          v17 = 0xE600000000000000;
        }

        else
        {
          v17 = 0xE700000000000000;
        }
      }

      else
      {
        v40 = v3 == 0;
        if (v3)
        {
          v16 = 0x64656B636F6CLL;
        }

        else
        {
          v16 = 0x64656B636F6C6E75;
        }

        if (v40)
        {
          v17 = 0xE800000000000000;
        }

        else
        {
          v17 = 0xE600000000000000;
        }
      }

      v56 = *a2;
      v57 = 0xE800000000000000;
      v58 = 0xE600000000000000;
      v59 = 0x64656D6D616ALL;
      if (v56 != 2)
      {
        v59 = 0x6E776F6E6B6E75;
        v58 = 0xE700000000000000;
      }

      v60 = 1801678700;
LABEL_225:
      v63 = v60 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
      if (v56)
      {
        v24 = v63;
        v57 = 0xE600000000000000;
      }

      if (v56 <= 1)
      {
        v12 = v24;
      }

      else
      {
        v12 = v59;
      }

      if (v56 <= 1)
      {
        v19 = v57;
      }

      else
      {
        v19 = v58;
      }

LABEL_233:
      if (v16 == v12 && v17 == v19)
      {
        goto LABEL_235;
      }

      goto LABEL_236;
    case 0x13u:
      if ((a2[32] & 0xFC) == 0x4C)
      {
        goto LABEL_173;
      }

      goto LABEL_244;
    case 0x14u:
      if ((a2[32] & 0xFC) == 0x50)
      {
        goto LABEL_193;
      }

      goto LABEL_244;
    case 0x15u:
      if ((a2[32] & 0xFC) == 0x54)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0x16u:
      if ((a2[32] & 0xFC) == 0x58)
      {
        goto LABEL_187;
      }

      goto LABEL_244;
    case 0x17u:
      if ((a2[32] & 0xFC) == 0x5C)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 0x18u:
      if ((a2[32] & 0xFC) != 0x60)
      {
        goto LABEL_244;
      }

LABEL_70:
      v22 = *a2;

      return sub_252A0AE98(v3, v22);
    case 0x19u:
      if ((a2[32] & 0xFC) == 0x64)
      {
        v9 = *(a2 + 1);
        if (sub_252A0AE98(v3, *a2))
        {
          goto LABEL_68;
        }
      }

      goto LABEL_244;
    case 0x1Au:
      if ((a2[32] & 0xFC) != 0x68)
      {
        goto LABEL_244;
      }

      v49 = *(a2 + 1);
      v48 = *(a2 + 2);
      v50 = sub_252A0AE98(v3, *a2);
      goto LABEL_178;
    case 0x1Bu:
      if ((a2[32] & 0xFC) == 0x6C)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 0x1Cu:
      if ((a2[32] & 0xFC) == 0x70)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0x1Du:
      if ((a2[32] & 0xFC) == 0x74)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 0x1Eu:
      if ((a2[32] & 0xFC) == 0x78)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 0x1Fu:
      if ((a2[32] & 0xFC) == 0x7C)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0x20u:
      if ((a2[32] & 0xFC) == 0x80)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 0x21u:
      if ((a2[32] & 0xFC) == 0x84)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 0x22u:
      if ((a2[32] & 0xFC) == 0x88)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0x23u:
      if ((a2[32] & 0xFC) == 0x8C)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0x24u:
      if ((a2[32] & 0xFC) == 0x90)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0x25u:
      if ((a2[32] & 0xFC) == 0x94)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 0x26u:
      if ((a2[32] & 0xFC) == 0x98)
      {
        goto LABEL_173;
      }

      goto LABEL_244;
    case 0x27u:
      if ((a2[32] & 0xFC) != 0x9C)
      {
        goto LABEL_244;
      }

      v41 = *a2;
      v42 = (v3 & 1) == 0;
      if (v3)
      {
        v43 = 0xD000000000000010;
      }

      else
      {
        v43 = 0x7369776B636F6C63;
      }

      if (v42)
      {
        v44 = 0xE900000000000065;
      }

      else
      {
        v44 = 0x8000000252E674D0;
      }

      if (*a2)
      {
        v45 = 0xD000000000000010;
      }

      else
      {
        v45 = 0x7369776B636F6C63;
      }

      if (*a2)
      {
        v46 = 0x8000000252E674D0;
      }

      else
      {
        v46 = 0xE900000000000065;
      }

      if (v43 == v45 && v44 == v46)
      {
LABEL_235:

        LOBYTE(v51) = 1;
        return v51 & 1;
      }

LABEL_236:
      v64 = sub_252E37DB4();

      return v64 & 1;
    case 0x28u:
      if ((a2[32] & 0xFC) == 0xA0)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0x29u:
      v32 = a2[32];
      if ((v32 & 0xFC) != 0xA4)
      {
        goto LABEL_244;
      }

      v33 = *(a2 + 2);
      v65 = *(a2 + 3);
      v34 = *(a2 + 1);
      v35 = *a2;
      v36 = sub_252A7D814(v3);
      v38 = v37;
      if (v36 == sub_252A7D814(v35) && v38 == v39)
      {
      }

      else
      {
        v54 = sub_252E37DB4();

        if ((v54 & 1) == 0)
        {
          goto LABEL_244;
        }
      }

      if ((sub_252AE7D40(v5, v34) & 1) == 0)
      {
        goto LABEL_244;
      }

      if (*&v6 == 0.0)
      {
        if (v33)
        {
          goto LABEL_244;
        }
      }

      else if (!v33 || (sub_252AE80B0(v6, v33) & 1) == 0)
      {
        goto LABEL_244;
      }

      if (v8)
      {
        if (v32)
        {
LABEL_243:
          LOBYTE(v51) = 1;
          return v51 & 1;
        }
      }

      else if ((v32 & 1) == 0 && v7 == v65)
      {
        goto LABEL_243;
      }

LABEL_244:
      LOBYTE(v51) = 0;
      return v51 & 1;
    case 0x2Au:
      if ((a2[32] & 0xFC) != 0xA8)
      {
        goto LABEL_244;
      }

      v47 = *a2;

      return sub_252A0B328(v3, v47);
    case 0x2Bu:
      if ((a2[32] & 0xFC) == 0xAC)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 0x2Cu:
      if ((a2[32] & 0xFC) == 0xB0)
      {
        goto LABEL_173;
      }

      goto LABEL_244;
    case 0x2Du:
      if ((a2[32] & 0xFC) == 0xB4)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0x2Eu:
      if ((a2[32] & 0xFC) != 0xB8)
      {
        goto LABEL_244;
      }

LABEL_191:
      v51 = v3 ^ *a2 ^ 1;
      return v51 & 1;
    case 0x2Fu:
      if ((a2[32] & 0xFC) != 0xBC)
      {
        goto LABEL_244;
      }

      v10 = *a2;

      return sub_252A0AD2C(v3, v10);
    case 0x30u:
      if ((a2[32] & 0xFC) == 0xC0)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0x31u:
      if ((a2[32] & 0xFC) != 0xC4)
      {
        goto LABEL_244;
      }

      v20 = *a2;

      return sub_252A0AA3C(v3, v20);
    case 0x32u:
      if ((a2[32] & 0xFC) != 0xC8)
      {
        goto LABEL_244;
      }

LABEL_173:
      v21 = (v3 | (v4 << 8)) == *a2;
      goto LABEL_183;
    case 0x33u:
      if ((a2[32] & 0xFC) != 0xCC)
      {
        goto LABEL_244;
      }

LABEL_193:
      v53 = *a2;

      return sub_252A0B044(v3, v53);
    case 0x34u:
      if ((a2[32] & 0xFC) != 0xD0)
      {
        goto LABEL_244;
      }

LABEL_187:
      v52 = *a2;

      return sub_252A0B1A8(v3, v52);
    case 0x35u:
      if ((a2[32] & 0xFC) != 0xD4)
      {
        goto LABEL_244;
      }

      v9 = *(a2 + 1);
      if ((sub_252A0B1A8(v3, *a2) & 1) == 0)
      {
        goto LABEL_244;
      }

LABEL_68:
      v21 = v9 == *&v5;
      goto LABEL_183;
    case 0x36u:
      if ((a2[32] & 0xFC) != 0xD8)
      {
        goto LABEL_244;
      }

      v49 = *(a2 + 1);
      v48 = *(a2 + 2);
      v50 = sub_252A0B1A8(v3, *a2);
LABEL_178:
      LOBYTE(v51) = 0;
      if ((v50 & 1) == 0 || v49 != *&v5)
      {
        return v51 & 1;
      }

      v21 = v48 == *&v6;
LABEL_183:
      LOBYTE(v51) = v21;
      return v51 & 1;
    case 0x37u:
      if ((a2[32] & 0xFC) == 0xDC)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0x38u:
      if ((a2[32] & 0xFC) == 0xE0)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    default:
      if (a2[32] > 3u)
      {
        goto LABEL_244;
      }

LABEL_182:
      v21 = *a2 == COERCE_DOUBLE(v3 | (v4 << 8));
      goto LABEL_183;
  }
}

uint64_t sub_252A812C0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 6;
  }

  if (qword_27F53F308 != -1)
  {
    swift_once();
  }

  v2 = off_27F542288;
  v3 = sub_252E36FA4();
  if (v2[2])
  {
    v5 = sub_252A44A10(v3, v4);
    v7 = v6;

    if (v7)
    {
      return *(v2[7] + v5);
    }
  }

  else
  {
  }

  return 6;
}

uint64_t sub_252A81380(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4D5241534944 && a2 == 0xE600000000000000)
  {
    return 0;
  }

  if (sub_252E37DB4())
  {
    return 0;
  }

  if (a1 == 0x4D52415F59415453 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x4D52415F59415741 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x52415F544847494ELL && a2 == 0xE90000000000004DLL || (sub_252E37DB4() & 1) != 0)
  {
    return 3;
  }

  result = 4;
  if (a1 != 0x52545F4D52414C41 || a2 != 0xEF44455245474749)
  {
    if (sub_252E37DB4())
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

uint64_t sub_252A8150C()
{
  v0 = sub_252E37DE4();

  if (v0 >= 0x3C)
  {
    return 60;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252A81560(uint64_t a1, uint64_t a2)
{
  sub_252947DBC();
  v4 = sub_252E377D4();
  if (v4[2] == 2 && (v5 = v4, v6 = sub_252C5C010(v4[4], v4[5], v4[6], v4[7], 0xD00000000000001ALL, 0x8000000252E75EE0), v7 = v5, (v6 & 1) != 0))
  {
    v8 = v5[8];
    v9 = v7[9];
    v10 = v7[10];
    v11 = v7[11];

    MEMORY[0x2530AD4C0](v8, v9, v10, v11);

    v12 = sub_252A8150C();
    if (v12 != 60)
    {
      v13 = v12;
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (qword_27F53F568 != -1)
  {
    swift_once();
  }

  v14 = sub_252E36AD4();
  __swift_project_value_buffer(v14, qword_27F544EE0);
  sub_252E379F4();

  MEMORY[0x2530AD570](a1, a2);

  sub_252CC4050(0xD000000000000017, 0x8000000252E75E90, 0xD000000000000078, 0x8000000252E75DE0, 0xD000000000000023, 0x8000000252E75EB0, 131);
  v13 = 60;
LABEL_9:

  return v13;
}

unint64_t sub_252A81758()
{
  result = qword_27F542320;
  if (!qword_27F542320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542320);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeAutomationIntent.HomeIntentFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeAutomationIntent.HomeIntentFlag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RobotVacuumCleanerRunState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RobotVacuumCleanerRunState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}