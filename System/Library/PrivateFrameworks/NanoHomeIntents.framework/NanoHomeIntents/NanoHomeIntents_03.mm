uint64_t sub_25B1503D4(uint64_t *a1, unsigned int *a2)
{
  v77 = a2;
  v4 = v2;
  v5 = sub_25B1616A4();
  v78 = *(v5 - 8);
  v6 = *(v78 + 64);
  MEMORY[0x28223BE20](v5);
  v72 = &v69[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A848, &qword_25B165AD0);
  v8 = *(*(v76 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v76);
  v74 = &v69[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v69[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E08, &qword_25B1637D8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v71 = &v69[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v73 = &v69[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v75 = &v69[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v69[-v22];
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v69[-v25];
  MEMORY[0x28223BE20](v24);
  v28 = &v69[-v27];
  v29 = [v2 serviceType];
  v30 = sub_25B161B34();
  v32 = v31;

  v33 = *a1;
  if (v30 == sub_25B161B34() && v32 == v34)
  {

LABEL_27:
    v55 = 1;
    return v55 & 1;
  }

  v35 = sub_25B161FA4();

  if (v35)
  {
    goto LABEL_27;
  }

  v36 = [v4 serviceType];
  v37 = sub_25B161B34();
  v39 = v38;

  v40 = *MEMORY[0x277CD0F08];
  if (v37 == sub_25B161B34() && v39 == v41)
  {
  }

  else
  {
    v42 = sub_25B161FA4();

    if ((v42 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  sub_25B161E04();
  v43 = v78;
  (*(v78 + 104))(v26, *v77, v5);
  (*(v43 + 56))(v26, 0, 1, v5);
  v44 = *(v76 + 48);
  sub_25B11B268(v28, v12);
  sub_25B11B268(v26, &v12[v44]);
  v45 = *(v43 + 48);
  if (v45(v12, 1, v5) == 1)
  {
    sub_25B11B208(v26, &qword_27FA39E08, &qword_25B1637D8);
    sub_25B11B208(v28, &qword_27FA39E08, &qword_25B1637D8);
    if (v45(&v12[v44], 1, v5) == 1)
    {
      v46 = v12;
LABEL_22:
      sub_25B11B208(v46, &qword_27FA39E08, &qword_25B1637D8);
      goto LABEL_27;
    }

    goto LABEL_14;
  }

  sub_25B11B268(v12, v23);
  if (v45(&v12[v44], 1, v5) == 1)
  {
    sub_25B11B208(v26, &qword_27FA39E08, &qword_25B1637D8);
    sub_25B11B208(v28, &qword_27FA39E08, &qword_25B1637D8);
    (*(v78 + 8))(v23, v5);
LABEL_14:
    sub_25B11B208(v12, &qword_27FA3A848, &qword_25B165AD0);
    goto LABEL_15;
  }

  v62 = v78;
  v63 = v72;
  (*(v78 + 32))(v72, &v12[v44], v5);
  sub_25B1511B8();
  v70 = sub_25B161AA4();
  v64 = *(v62 + 8);
  v64(v63, v5);
  sub_25B11B208(v26, &qword_27FA39E08, &qword_25B1637D8);
  sub_25B11B208(v28, &qword_27FA39E08, &qword_25B1637D8);
  v64(v23, v5);
  sub_25B11B208(v12, &qword_27FA39E08, &qword_25B1637D8);
  if (v70)
  {
    goto LABEL_27;
  }

LABEL_15:
  v47 = [v4 serviceType];
  v48 = sub_25B161B34();
  v50 = v49;

  v51 = *MEMORY[0x277CD0ED0];
  if (v48 == sub_25B161B34() && v50 == v52)
  {

    v53 = v75;
  }

  else
  {
    v54 = sub_25B161FA4();

    v55 = 0;
    v53 = v75;
    if ((v54 & 1) == 0)
    {
      return v55 & 1;
    }
  }

  sub_25B161E04();
  v56 = v78;
  v57 = v73;
  (*(v78 + 104))(v73, *v77, v5);
  (*(v56 + 56))(v57, 0, 1, v5);
  v58 = *(v76 + 48);
  v59 = v74;
  sub_25B11B268(v53, v74);
  sub_25B11B268(v57, &v59[v58]);
  v60 = *(v56 + 48);
  if (v60(v59, 1, v5) == 1)
  {
    sub_25B11B208(v57, &qword_27FA39E08, &qword_25B1637D8);
    sub_25B11B208(v53, &qword_27FA39E08, &qword_25B1637D8);
    if (v60(&v59[v58], 1, v5) == 1)
    {
      v46 = v59;
      goto LABEL_22;
    }
  }

  else
  {
    v61 = v71;
    sub_25B11B268(v59, v71);
    if (v60(&v59[v58], 1, v5) != 1)
    {
      v66 = v78;
      v67 = v72;
      (*(v78 + 32))(v72, &v59[v58], v5);
      sub_25B1511B8();
      v55 = sub_25B161AA4();
      v68 = *(v66 + 8);
      v68(v67, v5);
      sub_25B11B208(v57, &qword_27FA39E08, &qword_25B1637D8);
      sub_25B11B208(v53, &qword_27FA39E08, &qword_25B1637D8);
      v68(v61, v5);
      sub_25B11B208(v59, &qword_27FA39E08, &qword_25B1637D8);
      return v55 & 1;
    }

    sub_25B11B208(v57, &qword_27FA39E08, &qword_25B1637D8);
    sub_25B11B208(v53, &qword_27FA39E08, &qword_25B1637D8);
    (*(v78 + 8))(v61, v5);
  }

  sub_25B11B208(v59, &qword_27FA3A848, &qword_25B165AD0);
  v55 = 0;
  return v55 & 1;
}

uint64_t sub_25B150CB8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v4 = sub_25B1616A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A840, &qword_25B165AC8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  sub_25B161DF4();
  if (!v13)
  {
LABEL_4:
    if (HMService.isLightbulbService.getter())
    {
      v16 = MEMORY[0x277D158D0];
    }

    else
    {
      if ((HMService.isFanService.getter() & 1) == 0)
      {
        v17 = sub_25B161DD4();
        goto LABEL_11;
      }

      v16 = MEMORY[0x277D15810];
    }

    v17 = (*(v5 + 104))(v8, *v16, v4);
LABEL_11:
    v18 = a2(v17);
    (*(v5 + 8))(v8, v4);
    return v18;
  }

  sub_25B161954();
  v14 = sub_25B161964();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_25B11B208(v12, &qword_27FA3A840, &qword_25B165AC8);
    goto LABEL_4;
  }

  v18 = a1();
  (*(v15 + 8))(v12, v14);
  return v18;
}

uint64_t HMService.tint.getter()
{
  v1 = v0;
  v2 = sub_25B161884();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E08, &qword_25B1637D8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_25B1616A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v1 serviceType];
  sub_25B161B34();

  sub_25B161B84();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_25B11B208(v10, &qword_27FA39E08, &qword_25B1637D8);
    (*(v3 + 104))(v6, *MEMORY[0x277D15FF0], v2);
    v17 = sub_25B161874();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v17 = ServiceKind.iconColorBase.getter();
    (*(v12 + 8))(v15, v11);
  }

  return v17;
}

unint64_t sub_25B1511B8()
{
  result = qword_27FA39D80;
  if (!qword_27FA39D80)
  {
    sub_25B1616A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D80);
  }

  return result;
}

uint64_t sub_25B151234(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = sub_25B1616A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B161DD4();
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == *MEMORY[0x277D15810])
  {
    v14 = *a1;
    return sub_25B161B34();
  }

  if (v13 == *MEMORY[0x277D15760])
  {
    v15 = *a2;
    return sub_25B161B34();
  }

  if (v13 == *MEMORY[0x277D158D0])
  {
    goto LABEL_6;
  }

  if (v13 == *MEMORY[0x277D156D8])
  {
    v18 = *a3;
    return sub_25B161B34();
  }

  if (v13 == *MEMORY[0x277D15870] || v13 == *MEMORY[0x277D15888])
  {
LABEL_6:
    v16 = MEMORY[0x277CCF9F0];
LABEL_7:
    v17 = *v16;
    return sub_25B161B34();
  }

  if (v13 == *MEMORY[0x277D15718])
  {
    v16 = MEMORY[0x277CCF748];
    goto LABEL_7;
  }

  if (v13 != *MEMORY[0x277D15898] && v13 != *MEMORY[0x277D15720])
  {
    (*(v9 + 8))(v12, v8);
    return 0;
  }

  v20 = *a4;
  return sub_25B161B34();
}

void *HMService.primaryStateCharacteristic.getter()
{
  v1 = HMService.primaryStateCharacteristicType.getter();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = [v0 characteristics];
    sub_25B132284(0, &qword_27FA3A838, 0x277CD1970);
    v6 = sub_25B161C64();

    if (v6 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B161E54())
    {
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x25F862410](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v12 = [v9 characteristicType];
        v13 = sub_25B161B34();
        v15 = v14;

        if (v13 == v3 && v4 == v15)
        {

          return v10;
        }

        v17 = sub_25B161FA4();

        if (v17)
        {

          return v10;
        }

        ++v8;
        if (v11 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
  }

  return 0;
}

uint64_t sub_25B151620(uint64_t *a1)
{
  v3 = [v1 serviceType];
  v4 = sub_25B161B34();
  v6 = v5;

  v7 = *a1;
  if (v4 == sub_25B161B34() && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_25B161FA4();
  }

  return v10 & 1;
}

BOOL HMService.isInServiceGroup.getter()
{
  v1 = [v0 home];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 serviceGroups];

  sub_25B132284(0, &qword_27FA3A470, 0x277CD1D98);
  v4 = sub_25B161C64();

  if (v4 >> 62)
  {
LABEL_18:
    v15 = v4 & 0xFFFFFFFFFFFFFF8;
    v5 = sub_25B161E54();
  }

  else
  {
    v15 = v4 & 0xFFFFFFFFFFFFFF8;
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v7 = v5 != v6;
    if (v5 == v6)
    {
      break;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x25F862410](v6, v4);
    }

    else
    {
      if (v6 >= *(v15 + 16))
      {
        goto LABEL_17;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v10 = [v8 services];
    sub_25B132284(0, &qword_27FA39E58, 0x277CD1D90);
    v11 = sub_25B161C64();

    v17 = v16;
    MEMORY[0x28223BE20](v12);
    v14[2] = &v17;
    LOBYTE(v10) = sub_25B130E80(sub_25B1491D4, v14, v11);

    ++v6;
  }

  while ((v10 & 1) == 0);

  return v7;
}

uint64_t sub_25B1518CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_25B161514();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  if (a2 && (v11 = sub_25B161DE4()) != 0)
  {
    v12 = v11;
    v13 = [v11 uniqueIdentifier];

    sub_25B161504();
    (*(v4 + 32))(v10, v8, v3);
    if (*(a2 + 16))
    {
      v14 = sub_25B108BB4(v10);
      if (v15)
      {
        sub_25B109C08(*(a2 + 56) + 32 * v14, &v22);
        (*(v4 + 8))(v10, v3);
        goto LABEL_13;
      }
    }

    (*(v4 + 8))(v10, v3);
  }

  else
  {
    v16 = sub_25B161DE4();
    if (v16)
    {
      v17 = v16;
      v18 = [v16 value];

      if (v18)
      {
        sub_25B161E24();
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0u;
        v21 = 0u;
      }

      v22 = v20;
      v23 = v21;
      goto LABEL_13;
    }
  }

  v22 = 0u;
  v23 = 0u;
LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39BB0, &qword_25B162EC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v20 = 0;
  }

  return v20;
}

uint64_t _sSo9HMServiceC15NanoHomeIntentsE9BOOLValue3for4withSbSg0C9DataModel18CharacteristicKindO_SDy10Foundation4UUIDVypGSgtF_0(uint64_t a1, uint64_t a2)
{
  v3 = sub_25B161514();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  if (a2 && (v11 = sub_25B161DE4()) != 0)
  {
    v12 = v11;
    v13 = [v11 uniqueIdentifier];

    sub_25B161504();
    (*(v4 + 32))(v10, v8, v3);
    if (*(a2 + 16))
    {
      v14 = sub_25B108BB4(v10);
      if (v15)
      {
        sub_25B109C08(*(a2 + 56) + 32 * v14, &v22);
        (*(v4 + 8))(v10, v3);
        goto LABEL_13;
      }
    }

    (*(v4 + 8))(v10, v3);
  }

  else
  {
    v16 = sub_25B161DE4();
    if (v16)
    {
      v17 = v16;
      v18 = [v16 value];

      if (v18)
      {
        sub_25B161E24();
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0u;
        v21 = 0u;
      }

      v22 = v20;
      v23 = v21;
      goto LABEL_13;
    }
  }

  v22 = 0u;
  v23 = 0u;
LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39BB0, &qword_25B162EC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v20) = 2;
  }

  return v20;
}

Swift::Bool_optional __swiftcall HMService.powerState(with:)(Swift::OpaquePointer_optional with)
{
  rawValue = with.value._rawValue;
  v2 = sub_25B161894();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v3[13];
  v7(v6, *MEMORY[0x277D160B0], v2);
  v8.value = _sSo9HMServiceC15NanoHomeIntentsE9BOOLValue3for4withSbSg0C9DataModel18CharacteristicKindO_SDy10Foundation4UUIDVypGSgtF_0(v6, rawValue);
  v9 = v3[1];
  v9(v6, v2);
  if (v8.value == 2)
  {
    v7(v6, *MEMORY[0x277D16330], v2);
    v8.value = _sSo9HMServiceC15NanoHomeIntentsE9BOOLValue3for4withSbSg0C9DataModel18CharacteristicKindO_SDy10Foundation4UUIDVypGSgtF_0(v6, rawValue);
    v9(v6, v2);
  }

  return v8;
}

uint64_t ToggleActionSetIntent.home.setter(__int128 *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_25B161154();
}

uint64_t sub_25B151F50()
{
  v0 = sub_25B161584();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_25B1613F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B161B14();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_25B161414();
  __swift_allocate_value_buffer(v9, qword_27FA3A850);
  __swift_project_value_buffer(v9, qword_27FA3A850);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_27FA3E770);
  (*(v3 + 16))(v6, v10, v2);
  sub_25B161574();
  return sub_25B161424();
}

uint64_t static ToggleActionSetIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B90 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A850);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ToggleActionSetIntent.value.getter()
{
  v1 = *v0;
  sub_25B161144();
  return v3;
}

uint64_t sub_25B152258(char *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = *a1;
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*ToggleActionSetIntent.value.modify(uint64_t *a1))()
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
  *(v3 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t (*ToggleActionSetIntent.home.modify(uint64_t *a1))()
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t sub_25B152464(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = a1[1];
  v8 = a1[2];
  sub_25B12908C(*a1);
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161154();
}

uint64_t ToggleActionSetIntent.accessoriesAndScenes.setter(__int128 *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  v5 = *(a1 + 2);
  return sub_25B161154();
}

uint64_t (*ToggleActionSetIntent.accessoriesAndScenes.modify(uint64_t *a1))()
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
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t ToggleActionSetIntent.useHomeKitRecommendations.getter()
{
  v1 = *(v0 + 24);
  sub_25B161144();
  return v3;
}

uint64_t (*ToggleActionSetIntent.useHomeKitRecommendations.modify(uint64_t *a1))()
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
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t ToggleActionSetIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v76 = a1;
  v1 = sub_25B161294();
  v77 = *(v1 - 8);
  v78 = v1;
  v2 = *(v77 + 64);
  MEMORY[0x28223BE20](v1);
  v75 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v58 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v66 = &v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v52 - v14;
  v16 = sub_25B161584();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25B1613F4();
  v79 = *(v20 - 8);
  v21 = *(v79 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_25B161B14();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_25B161414();
  v28 = *(v74 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v74);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED0, &unk_25B163860);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v63 = "HOME_ACCESSORY_ENTITY_TITLE";
  v30 = __swift_project_value_buffer(v20, qword_27FA3E770);
  v31 = *(v79 + 16);
  v79 += 16;
  v70 = v30;
  v71 = v31;
  v69 = v23;
  v31(v23, v30, v20);
  sub_25B161574();
  sub_25B161424();
  v32 = *(v28 + 56);
  v62 = v28 + 56;
  v73 = v32;
  v32(v15, 1, 1, v74);
  LOBYTE(v80) = 2;
  v55 = sub_25B161CB4();
  v33 = *(v55 - 8);
  v54 = *(v33 + 56);
  v56 = v33 + 56;
  v54(v66, 1, 1, v55);
  v34 = sub_25B1610C4();
  v65 = v20;
  v35 = v34;
  v36 = *(v34 - 8);
  v37 = *(v36 + 56);
  v67 = v36 + 56;
  v68 = v37;
  v38 = v57;
  v37(v57, 1, 1, v34);
  v72 = *MEMORY[0x277CBA308];
  v64 = *(v77 + 104);
  v77 += 104;
  v64(v75);
  *v76 = sub_25B1611A4();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  v59 = v27;
  v71(v69, v70, v20);
  v60 = v19;
  sub_25B161574();
  sub_25B161424();
  v52 = v15;
  v39 = v74;
  v73(v15, 1, 1, v74);
  v80 = 0;
  v81 = 0;
  v40 = v38;
  v41 = v38;
  v61 = v35;
  v42 = v68;
  v68(v41, 1, 1, v35);
  v43 = v58;
  v42(v58, 1, 1, v35);
  (v64)(v75, v72, v78);
  sub_25B120304();
  v76[1] = sub_25B161184();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A250, &unk_25B164140);
  sub_25B161AC4();
  v71(v69, v70, v65);
  sub_25B161574();
  sub_25B161424();
  v44 = v52;
  v73(v52, 1, 1, v39);
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v45 = v61;
  v46 = v68;
  v68(v40, 1, 1, v61);
  v46(v43, 1, 1, v45);
  v47 = v75;
  v48 = v64;
  (v64)(v75, v72, v78);
  sub_25B1282D4();
  v49 = sub_25B161184();
  v50 = v76;
  v76[2] = v49;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A160, &qword_25B163B10);
  sub_25B161AC4();
  v71(v69, v70, v65);
  sub_25B161574();
  sub_25B161424();
  v73(v44, 1, 1, v74);
  LOBYTE(v80) = 2;
  v54(v66, 1, 1, v55);
  v68(v40, 1, 1, v61);
  (v48)(v47, v72, v78);
  result = sub_25B1611A4();
  v50[3] = result;
  return result;
}

uint64_t ToggleActionSetIntent.init(home:accessoriesAndScenes:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v87 = a3;
  v86 = sub_25B161294();
  v89 = *(v86 - 8);
  v5 = *(v89 + 64);
  MEMORY[0x28223BE20](v86);
  v76 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v65 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v74 = v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v57 - v17;
  v19 = sub_25B161584();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v75 = v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_25B1613F4();
  v22 = *(v88 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v88);
  v25 = v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25B161B14();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_25B161414();
  v30 = *(v85 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v85);
  v32 = a1[1];
  v64 = *a1;
  v63 = v32;
  v33 = a2[1];
  v68 = *a2;
  v67 = v33;
  v66 = a2[2];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED0, &unk_25B163860);
  v34 = v29;
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v83 = "HOME_ACCESSORY_ENTITY_TITLE";
  v35 = v88;
  v79 = __swift_project_value_buffer(v88, qword_27FA3E770);
  v36 = *(v22 + 16);
  v73 = v22 + 16;
  v80 = v36;
  v36(v25, v79, v35);
  sub_25B161574();
  sub_25B161424();
  v37 = *(v30 + 56);
  v81 = v30 + 56;
  v82 = v37;
  v37(v18, 1, 1, v85);
  LOBYTE(v90) = 2;
  v60 = sub_25B161CB4();
  v38 = *(v60 - 8);
  v59 = *(v38 + 56);
  v61 = v38 + 56;
  v59(v74, 1, 1, v60);
  v39 = sub_25B1610C4();
  v40 = *(v39 - 8);
  v77 = *(v40 + 56);
  v78 = v40 + 56;
  v41 = v62;
  v77(v62, 1, 1, v39);
  v71 = *MEMORY[0x277CBA308];
  v42 = *(v89 + 104);
  v89 += 104;
  v84 = v42;
  v43 = v76;
  (v42)(v76);
  *v87 = sub_25B1611A4();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  v69 = v34;
  sub_25B161AC4();
  v70 = v25;
  v80(v25, v79, v88);
  sub_25B161574();
  sub_25B161424();
  v57[0] = v18;
  v44 = v85;
  v82(v18, 1, 1, v85);
  v90 = 0;
  v91 = 0;
  v45 = v39;
  v72 = v39;
  v46 = v77;
  v77(v41, 1, 1, v39);
  v47 = v65;
  v46(v65, 1, 1, v45);
  v48 = v71;
  v84(v43, v71, v86);
  sub_25B120304();
  v58 = sub_25B161184();
  v87[1] = v58;
  v57[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A250, &unk_25B164140);
  sub_25B161AC4();
  v80(v70, v79, v88);
  sub_25B161574();
  sub_25B161424();
  v49 = v57[0];
  v82(v57[0], 1, 1, v44);
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v50 = v72;
  v51 = v77;
  v77(v41, 1, 1, v72);
  v51(v47, 1, 1, v50);
  v52 = v76;
  v53 = v86;
  v84(v76, v48, v86);
  sub_25B1282D4();
  v54 = sub_25B161184();
  v55 = v87;
  v87[2] = v54;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A160, &qword_25B163B10);
  sub_25B161AC4();
  v80(v70, v79, v88);
  sub_25B161574();
  sub_25B161424();
  v82(v49, 1, 1, v85);
  LOBYTE(v90) = 2;
  v59(v74, 1, 1, v60);
  v77(v41, 1, 1, v72);
  v84(v52, v71, v53);
  v55[3] = sub_25B1611A4();
  v90 = v64;
  v91 = v63;
  sub_25B161154();
  v90 = v68;
  v91 = v67;
  v92 = v66;
  sub_25B161154();
  LOBYTE(v90) = 0;
  return sub_25B161154();
}

uint64_t ToggleActionSetIntent.perform()(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = *(v1 + 8);
  return MEMORY[0x2822009F8](sub_25B153C14, 0, 0);
}

uint64_t sub_25B153C14()
{
  v26 = v0;
  v1 = *(v0 + 128);
  sub_25B161144();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  *(v0 + 144) = v2;
  *(v0 + 152) = v3;
  if (v2)
  {
    v4 = *(v0 + 136);
    sub_25B161144();
    v5 = *(v0 + 16);
    *(v0 + 160) = v5;
    *(v0 + 176) = *(v0 + 32);
    if (v5)
    {
      sub_25B1610F4();
      v6 = *(v0 + 56);
      v7 = *(v0 + 64);
      *(v0 + 184) = v7;
      sub_25B1610F4();
      v8 = *(v0 + 72);
      v9 = *(v0 + 80);
      *(v0 + 192) = v9;
      v10 = swift_task_alloc();
      *(v0 + 200) = v10;
      *v10 = v0;
      v10[1] = sub_25B153FB8;

      return sub_25B157C30(v6, v7, v8, v9);
    }

    if (qword_27FA39B08 != -1)
    {
      swift_once();
    }

    v18 = sub_25B161A14();
    __swift_project_value_buffer(v18, qword_27FA3A0A0);
    v19 = sub_25B1619F4();
    v20 = sub_25B161D94();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_25B108480(0x286D726F66726570, 0xE900000000000029, &v25);
      _os_log_impl(&dword_25B105000, v19, v20, "%s action set is not set, unable to run perform.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x25F862BF0](v22, -1, -1);
      MEMORY[0x25F862BF0](v21, -1, -1);
    }

    v23 = *(v0 + 120);
    sub_25B1610D4();
    sub_25B120358(v2);
  }

  else
  {
    if (qword_27FA39B08 != -1)
    {
      swift_once();
    }

    v12 = sub_25B161A14();
    __swift_project_value_buffer(v12, qword_27FA3A0A0);
    v13 = sub_25B1619F4();
    v14 = sub_25B161D94();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_25B108480(0x286D726F66726570, 0xE900000000000029, &v25);
      _os_log_impl(&dword_25B105000, v13, v14, "%s home is not set, unable to run perform.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x25F862BF0](v16, -1, -1);
      MEMORY[0x25F862BF0](v15, -1, -1);
    }

    v17 = *(v0 + 120);
    sub_25B1610D4();
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_25B153FB8()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 192);
  v6 = *(v2 + 184);

  if (v0)
  {
    v7 = sub_25B1541B8;
  }

  else
  {
    v7 = sub_25B15411C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25B15411C()
{
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = v0[15];
  sub_25B1610D4();
  sub_25B128C68(v3);
  sub_25B120358(v5);
  v7 = v0[1];

  return v7();
}

uint64_t sub_25B1541B8()
{
  v31 = v0;
  if (qword_27FA39B08 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = sub_25B161A14();
  __swift_project_value_buffer(v7, qword_27FA3A0A0);
  sub_25B12908C(v4);
  sub_25B11B1C8(v6);
  v8 = v1;
  v9 = sub_25B1619F4();
  v10 = sub_25B161D94();
  sub_25B128C68(v4);
  sub_25B120358(v6);

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[26];
    v12 = v0[21];
    v29 = v0[19];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30[0] = v15;
    *v13 = 136315906;
    *(v13 + 4) = sub_25B108480(0x286D726F66726570, 0xE900000000000029, v30);
    *(v13 + 12) = 2080;
    sub_25B1610F4();
    v16 = sub_25B108480(v0[11], v0[12], v30);

    *(v13 + 14) = v16;
    *(v13 + 22) = 2080;
    sub_25B1610F4();
    v17 = sub_25B108480(v0[13], v0[14], v30);

    *(v13 + 24) = v17;
    *(v13 + 32) = 2112;
    v18 = v11;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 34) = v19;
    *v14 = v19;
    _os_log_impl(&dword_25B105000, v9, v10, "%s Failed to toggle action set %s in home %s: %@", v13, 0x2Au);
    sub_25B13A1D8(v14);
    MEMORY[0x25F862BF0](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v15, -1, -1);
    MEMORY[0x25F862BF0](v13, -1, -1);
  }

  v20 = v0[26];
  v21 = v0[21];
  v22 = v0[22];
  v24 = v0[19];
  v23 = v0[20];
  v25 = v0[18];
  swift_willThrow();
  sub_25B128C68(v23);
  sub_25B120358(v25);
  v26 = v0[1];
  v27 = v0[26];

  return v26();
}

uint64_t sub_25B154490@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_25B161144();
  *a1 = v5;
  return result;
}

uint64_t sub_25B1544CC(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_25B161154();
}

uint64_t (*sub_25B154504(uint64_t *a1))()
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
  *(v3 + 32) = sub_25B161134();
  return sub_25B10BAFC;
}

uint64_t sub_25B154578@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B90 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A850);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25B154624(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B114758;

  return ToggleActionSetIntent.perform()(a1);
}

uint64_t sub_25B1546C0(uint64_t a1)
{
  v2 = sub_25B15486C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t ToggleActionSetIntent.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(MEMORY[0x277D21540]) init];
  sub_25B161144();
  if (v6)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B128C68(v6);
    sub_25B1610F4();
    sub_25B128C68(v6);
    v3 = sub_25B161B24();
  }

  else
  {
    sub_25B128C68(0);
  }

  [v2 finalize];
  v4 = sub_25B161F84();

  return v4;
}

unint64_t sub_25B15486C()
{
  result = qword_27FA3A868;
  if (!qword_27FA3A868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A868);
  }

  return result;
}

unint64_t sub_25B1548C8()
{
  result = qword_27FA3A870;
  if (!qword_27FA3A870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A870);
  }

  return result;
}

unint64_t sub_25B154920()
{
  result = qword_27FA3A878;
  if (!qword_27FA3A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A878);
  }

  return result;
}

uint64_t sub_25B1549E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_25B161144();
  *a2 = v5;
  return result;
}

double sub_25B154A28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_25B161144();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_25B154A70@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_25B161144();
  *a2 = v5;
  return result;
}

unint64_t sub_25B154AC4()
{
  result = qword_27FA3A1E8;
  if (!qword_27FA3A1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA3A1F0, &qword_25B163F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A1E8);
  }

  return result;
}

NanoHomeIntents::NanoHomeAnalytics::WidgetActionType_optional __swiftcall NanoHomeAnalytics.WidgetActionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

NanoHomeIntents::NanoHomeAnalytics::WidgetSource_optional __swiftcall NanoHomeAnalytics.WidgetSource.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_25B154BD0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

NanoHomeIntents::NanoHomeAnalytics::WidgetKind_optional __swiftcall NanoHomeAnalytics.WidgetKind.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

NanoHomeIntents::NanoHomeAnalytics::WidgetActionProvider_optional __swiftcall NanoHomeAnalytics.WidgetActionProvider.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 11;
  if (rawValue < 0xB)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_25B154C80()
{
  result = qword_27FA3A880;
  if (!qword_27FA3A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A880);
  }

  return result;
}

unint64_t sub_25B154CD8()
{
  result = qword_27FA3A888;
  if (!qword_27FA3A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A888);
  }

  return result;
}

unint64_t sub_25B154D30()
{
  result = qword_27FA3A890;
  if (!qword_27FA3A890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A890);
  }

  return result;
}

unint64_t sub_25B154D88()
{
  result = qword_27FA3A898;
  if (!qword_27FA3A898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A898);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NanoHomeAnalytics.WidgetActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NanoHomeAnalytics.WidgetActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NanoHomeAnalytics.WidgetKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NanoHomeAnalytics.WidgetKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NanoHomeAnalytics.WidgetActionProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NanoHomeAnalytics.WidgetActionProvider(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *ElectricityRatesIntent.__allocating_init(homeIdentifier:homeName:)()
{
  v1 = sub_25B161414();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = [objc_allocWithZone(v0) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
  v4 = v3;
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B161104();
  sub_25B161104();
  v5 = *&v4[OBJC_IVAR___NHOElectricityRatesIntent__home];
  sub_25B161274();
  sub_25B161154();

  return v4;
}

uint64_t sub_25B15539C()
{
  v0 = sub_25B161414();
  __swift_allocate_value_buffer(v0, qword_27FA3A8A0);
  __swift_project_value_buffer(v0, qword_27FA3A8A0);
  return sub_25B1613E4();
}

uint64_t (*static ElectricityRatesIntent.title.modify())()
{
  if (qword_27FA39B98 != -1)
  {
    swift_once();
  }

  v0 = sub_25B161414();
  __swift_project_value_buffer(v0, qword_27FA3A8A0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25B155504()
{
  v0 = sub_25B1611D4();
  __swift_allocate_value_buffer(v0, qword_27FA3A8B8);
  __swift_project_value_buffer(v0, qword_27FA3A8B8);
  return sub_25B1611C4();
}

uint64_t (*static ElectricityRatesIntent.description.modify())()
{
  if (qword_27FA39BA0 != -1)
  {
    swift_once();
  }

  v0 = sub_25B1611D4();
  __swift_project_value_buffer(v0, qword_27FA3A8B8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t (*ElectricityRatesIntent.homeID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOElectricityRatesIntent__homeID);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*ElectricityRatesIntent.homeName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOElectricityRatesIntent__homeName);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t ElectricityRatesIntent.home.getter()
{
  v1 = *(v0 + OBJC_IVAR___NHOElectricityRatesIntent__home);
  sub_25B161274();
  sub_25B161144();
}

double sub_25B15581C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___NHOElectricityRatesIntent__home);
  sub_25B161274();
  sub_25B161144();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_25B155874(uint64_t *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR___NHOElectricityRatesIntent__home);
  v4 = a1[1];
  sub_25B11B1C8(*a1);
  sub_25B161274();
  sub_25B161154();
}

uint64_t ElectricityRatesIntent.home.setter(__int128 *a1)
{
  v2 = *(v1 + OBJC_IVAR___NHOElectricityRatesIntent__home);
  v4 = *a1;
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*ElectricityRatesIntent.home.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOElectricityRatesIntent__home);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B11E120;
}

uint64_t static ElectricityRatesIntent.parameterSummary.getter()
{
  sub_25B156B3C(&qword_27FA3A8E8);

  return sub_25B161284();
}

uint64_t sub_25B155A30()
{
  swift_getKeyPath();
  sub_25B156B3C(&qword_27FA3A8E8);
  v0 = sub_25B161274();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25B163810;
  *(v1 + 32) = v0;
  type metadata accessor for ElectricityRatesIntent();
  sub_25B161274();
  v2 = sub_25B161264();

  return v2;
}

uint64_t sub_25B155B30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___NHOElectricityRatesIntent__home);
  sub_25B161274();
  v4 = sub_25B161164();

  *a2 = v4;
  return result;
}

id ElectricityRatesIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ElectricityRatesIntent.init()()
{
  ObjectType = swift_getObjectType();
  v0 = sub_25B161584();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v56 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_25B1613F4();
  v53 = *(v55 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B161B14();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_25B161294();
  v8 = *(v64 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v64);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v52 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE8, &unk_25B163AE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v45 - v24;
  v26 = sub_25B161414();
  v62 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v51 = OBJC_IVAR___NHOElectricityRatesIntent__homeID;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF0, &qword_25B163AF0);
  sub_25B1613E4();
  v29 = *(v27 + 56);
  v60 = v27 + 56;
  v61 = v29;
  v29(v25, 1, 1, v26);
  v47 = sub_25B161AB4();
  v66 = 0;
  v67 = 0;
  v30 = *(v47 - 8);
  v46 = *(v30 + 56);
  v50 = (v30 + 56);
  v31 = v21;
  v46(v21, 1, 1, v47);
  v32 = sub_25B1610C4();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v58 = v33 + 56;
  v59 = v34;
  v34(v17, 1, 1, v32);
  v35 = *MEMORY[0x277CBA308];
  v36 = *(v8 + 104);
  v63 = v8 + 104;
  v36(v11, v35, v64);
  v37 = v17;
  v38 = v11;
  v39 = sub_25B161194();
  v40 = v48;
  *&v48[v51] = v39;
  v45 = OBJC_IVAR___NHOElectricityRatesIntent__homeName;
  sub_25B1613E4();
  v61(v25, 1, 1, v62);
  v66 = 0;
  v67 = 0;
  v46(v31, 1, 1, v47);
  v59(v37, 1, 1, v32);
  LODWORD(v47) = v35;
  v46 = v36;
  v36(v38, v35, v64);
  v50 = v25;
  v51 = v38;
  *&v40[v45] = sub_25B161194();
  v45 = OBJC_IVAR___NHOElectricityRatesIntent__home;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v41 = v55;
  v42 = __swift_project_value_buffer(v55, qword_27FA3E770);
  (*(v53 + 16))(v54, v42, v41);
  sub_25B161574();
  sub_25B161424();
  v61(v50, 1, 1, v62);
  v66 = 0;
  v67 = 0;
  v43 = v59;
  v59(v37, 1, 1, v32);
  v43(v52, 1, 1, v32);
  (v46)(v51, v47, v64);
  sub_25B120304();
  *&v40[v45] = sub_25B161184();
  v65.receiver = v40;
  v65.super_class = ObjectType;
  return objc_msgSendSuper2(&v65, sel_init);
}

char *ElectricityRatesIntent.__allocating_init(homeIdentifier:)()
{
  v1 = sub_25B161414();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = [objc_allocWithZone(v0) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
  v4 = v3;
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B161104();
  sub_25B161104();
  v5 = *&v4[OBJC_IVAR___NHOElectricityRatesIntent__home];
  sub_25B161274();
  sub_25B161154();

  return v4;
}

id ElectricityRatesIntent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B15654C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B98 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A8A0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25B156630(uint64_t a1, uint64_t a2)
{
  v4 = *(MEMORY[0x277CBA3A8] + 4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_25B156B3C(&qword_27FA3A910);
  *v5 = v2;
  v5[1] = sub_25B11FFE8;

  return MEMORY[0x28210C3E0](a2, v6);
}

uint64_t sub_25B1566F8()
{
  v1 = sub_25B156B3C(&qword_27FA3A8E8);

  return MEMORY[0x28210B538](v0, v1);
}

uint64_t ElectricityRatesIntent.configuredHomeID.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___NHOElectricityRatesIntent__home);
  sub_25B161274();
  sub_25B161144();

  if (v6)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B120358(v6);
    sub_25B1610F4();
    sub_25B120358(v6);
    return v5;
  }

  else
  {
    sub_25B120358(0);
    v4 = *(v1 + OBJC_IVAR___NHOElectricityRatesIntent__homeID);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t ElectricityRatesIntent.configuredHomeName.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___NHOElectricityRatesIntent__home);
  sub_25B161274();
  sub_25B161144();

  if (v6)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B120358(v6);
    sub_25B1610F4();
    sub_25B120358(v6);
    return v5;
  }

  else
  {
    sub_25B120358(0);
    v4 = *(v1 + OBJC_IVAR___NHOElectricityRatesIntent__homeName);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

unint64_t sub_25B156AD8()
{
  result = qword_27FA3A900;
  if (!qword_27FA3A900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA3A908, &qword_25B166168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A900);
  }

  return result;
}

uint64_t sub_25B156B3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ElectricityRatesIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25B156B80(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A928, &qword_25B1661C8);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_25B156C2C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A928, &qword_25B1661C8);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_25B156D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_25B156D28, 0, 0);
}

uint64_t sub_25B156D28()
{
  v72 = v0;
  v1 = v0[21];
  v2 = v0[20] == 0xD000000000000027 && 0x800000025B166560 == v1;
  if (v2 || (v3 = v0[21], (sub_25B161FA4() & 1) != 0))
  {
    if (qword_27FA39AD8 != -1)
    {
      goto LABEL_55;
    }

    goto LABEL_7;
  }

  if (v0[20] != 0xD000000000000026 || 0x800000025B166530 != v1)
  {
    v22 = v0[21];
    if ((sub_25B161FA4() & 1) == 0)
    {
      goto LABEL_67;
    }
  }

  if (qword_27FA39AD8 != -1)
  {
    swift_once();
  }

  v23 = v0[19];
  v24 = sub_25B161A14();
  __swift_project_value_buffer(v24, qword_27FA3A010);
  sub_25B161264();
  v25 = sub_25B1619F4();
  v26 = sub_25B161D94();

  if (!os_log_type_enabled(v25, v26))
  {
    goto LABEL_66;
  }

  v65 = v26;
  v27 = v0[19];
  v28 = swift_slowAlloc();
  v63 = swift_slowAlloc();
  v71 = v63;
  *v28 = 136315394;
  *(v28 + 4) = sub_25B108480(0xD000000000000014, 0x800000025B167E60, &v71);
  *(v28 + 12) = 2080;
  if (v27 >> 62)
  {
    v29 = v27 & 0xFFFFFFFFFFFFFF8;
    if (v0[19] < 0)
    {
      v51 = v0[19];
    }

    v30 = sub_25B161E54();
    if (v30)
    {
      goto LABEL_35;
    }

LABEL_64:
    loga = MEMORY[0x277D84F90];
    goto LABEL_65;
  }

  v29 = v27 & 0xFFFFFFFFFFFFFF8;
  v30 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
    goto LABEL_64;
  }

LABEL_35:
  v31 = 0;
  v32 = v27 & 0xC000000000000001;
  v33 = v0[19] + 32;
  loga = MEMORY[0x277D84F90];
  do
  {
    v34 = v31;
    while (1)
    {
      if (v32)
      {
        v35 = MEMORY[0x25F862410](v34, v0[19]);
      }

      else
      {
        if (v34 >= *(v29 + 16))
        {
          goto LABEL_54;
        }

        v35 = *(v33 + 8 * v34);
      }

      v36 = v35;
      v31 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        swift_once();
LABEL_7:
        v4 = v0[19];
        v5 = sub_25B161A14();
        __swift_project_value_buffer(v5, qword_27FA3A010);
        sub_25B161264();
        v6 = sub_25B1619F4();
        v7 = sub_25B161D94();

        if (!os_log_type_enabled(v6, v7))
        {

          goto LABEL_67;
        }

        v64 = v7;
        log = v6;
        v8 = v0[19];
        v9 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v70 = v62;
        *v9 = 136315394;
        *(v9 + 4) = sub_25B108480(0xD000000000000014, 0x800000025B167E60, &v70);
        buf = v9;
        *(v9 + 12) = 2080;
        v71 = MEMORY[0x277D84F90];
        if (!(v8 >> 62))
        {
          v10 = v8 & 0xFFFFFFFFFFFFFF8;
          v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v69 = v0;
          if (v11)
          {
            goto LABEL_10;
          }

LABEL_59:
          v15 = MEMORY[0x277D84F90];
          goto LABEL_60;
        }

        v10 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v0[19] < 0)
        {
          v45 = v0[19];
        }

        v11 = sub_25B161E54();
        v69 = v0;
        if (!v11)
        {
          goto LABEL_59;
        }

LABEL_10:
        v12 = 0;
        v13 = v8 & 0xC000000000000001;
        v14 = v0[19] + 32;
        v15 = MEMORY[0x277D84F90];
        v0 = 0x277CD1000;
LABEL_11:
        v16 = v12;
        while (1)
        {
          if (v13)
          {
            v17 = MEMORY[0x25F862410](v16, v69[19]);
          }

          else
          {
            if (v16 >= *(v10 + 16))
            {
              goto LABEL_52;
            }

            v17 = *(v14 + 8 * v16);
          }

          v18 = v17;
          v12 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          objc_opt_self();
          v19 = swift_dynamicCastObjCClass();
          if (v19)
          {
            v20 = [v19 characteristic];

            if (v20)
            {
              MEMORY[0x25F862190]();
              if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v21 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_25B161C84();
              }

              sub_25B161CA4();
              v15 = v71;
              if (v12 == v11)
              {
LABEL_60:
                v46 = sub_25B132284(0, &qword_27FA3A838, 0x277CD1970);
                v47 = MEMORY[0x25F8621C0](v15, v46);
                v49 = v48;

                v50 = sub_25B108480(v47, v49, &v70);

                *(buf + 14) = v50;
                _os_log_impl(&dword_25B105000, log, v64, "%s: Writing characteristics: %s", buf, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x25F862BF0](v62, -1, -1);
                MEMORY[0x25F862BF0](buf, -1, -1);

                v0 = v69;
                goto LABEL_67;
              }

              goto LABEL_11;
            }
          }

          else
          {
          }

          ++v16;
          if (v12 == v11)
          {
            goto LABEL_60;
          }
        }
      }

      objc_opt_self();
      v37 = swift_dynamicCastObjCClass();
      if (v37)
      {
        break;
      }

      ++v34;
      if (v31 == v30)
      {
        goto LABEL_65;
      }
    }

    v61 = v25;
    v38 = [v37 actionSet];
    v39 = [v38 name];

    v40 = sub_25B161B34();
    v60 = v41;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      loga = sub_25B115A38(0, *(loga + 2) + 1, 1, loga);
    }

    v43 = *(loga + 2);
    v42 = *(loga + 3);
    if (v43 >= v42 >> 1)
    {
      loga = sub_25B115A38((v42 > 1), v43 + 1, 1, loga);
    }

    *(loga + 2) = v43 + 1;
    v44 = &loga[16 * v43];
    v25 = v61;
    *(v44 + 4) = v40;
    *(v44 + 5) = v60;
  }

  while (v31 != v30);
LABEL_65:
  v52 = MEMORY[0x25F8621C0](loga, MEMORY[0x277D837D0]);
  v54 = v53;

  v55 = sub_25B108480(v52, v54, &v71);

  *(v28 + 14) = v55;
  _os_log_impl(&dword_25B105000, v25, v65, "%s: Executing actionSets: %s", v28, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x25F862BF0](v63, -1, -1);
  MEMORY[0x25F862BF0](v28, -1, -1);
LABEL_66:

LABEL_67:
  v56 = *(MEMORY[0x277D859E0] + 4);
  v57 = swift_task_alloc();
  v0[22] = v57;
  v58 = sub_25B132284(0, &qword_27FA3A370, 0x277CD1A90);
  *v57 = v0;
  v57[1] = sub_25B1574F0;

  return MEMORY[0x2822007B8](v0 + 18, 0, 0, 0x616E614D656D6F68, 0xEB00000000726567, sub_25B1314F0, 0, v58);
}

uint64_t sub_25B1574F0()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25B1575EC, 0, 0);
}

uint64_t sub_25B1575EC()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v0[23] = v3;
  v5 = [v3 widgetManager];
  v0[24] = v5;
  sub_25B132284(0, &qword_27FA3A920, 0x277CD1D58);
  v6 = sub_25B161C54();
  v0[25] = v6;
  v7 = sub_25B161B24();
  v0[26] = v7;
  v0[2] = v0;
  v0[3] = sub_25B157774;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A918, &qword_25B1661B8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_25B156B80;
  v0[13] = &block_descriptor_9;
  v0[14] = v8;
  [v5 performRequests:v6 forKind:v7 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25B157774()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_25B157A18;
  }

  else
  {
    v3 = sub_25B157884;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25B157884()
{
  v13 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  if (qword_27FA39AD8 != -1)
  {
    swift_once();
  }

  v3 = sub_25B161A14();
  __swift_project_value_buffer(v3, qword_27FA3A010);
  v4 = sub_25B1619F4();
  v5 = sub_25B161D94();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 184);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_25B108480(0xD000000000000014, 0x800000025B167E60, &v12);
    _os_log_impl(&dword_25B105000, v4, v5, "%s: Write request completed.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x25F862BF0](v9, -1, -1);
    MEMORY[0x25F862BF0](v8, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_25B157A18()
{
  v22 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  swift_willThrow();

  if (qword_27FA39AD8 != -1)
  {
    swift_once();
  }

  v5 = v0[27];
  v6 = sub_25B161A14();
  __swift_project_value_buffer(v6, qword_27FA3A010);
  v7 = v5;
  v8 = sub_25B1619F4();
  v9 = sub_25B161D84();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[27];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_25B108480(0xD000000000000014, 0x800000025B167E60, &v21);
    *(v11 + 12) = 2112;
    v14 = v10;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_25B105000, v8, v9, "%s: Error on write: %@", v11, 0x16u);
    sub_25B11B208(v12, &qword_27FA3A4E0, &qword_25B165AF0);
    MEMORY[0x25F862BF0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x25F862BF0](v13, -1, -1);
    MEMORY[0x25F862BF0](v11, -1, -1);
  }

  v16 = v0[27];
  v17 = v0[23];
  swift_willThrow();

  v18 = v0[1];
  v19 = v0[27];

  return v18();
}

uint64_t sub_25B157C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  v5 = sub_25B161514();
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v7 = *(v6 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B157D00, 0, 0);
}

uint64_t sub_25B157D00()
{
  v17 = v0;
  if (qword_27FA39AD8 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[21];
  v3 = sub_25B161A14();
  v0[28] = __swift_project_value_buffer(v3, qword_27FA3A010);
  sub_25B161264();
  sub_25B161264();
  v4 = sub_25B1619F4();
  v5 = sub_25B161D94();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[22];
    v6 = v0[23];
    v9 = v0[20];
    v8 = v0[21];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_25B108480(0xD000000000000025, 0x800000025B167E80, &v16);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_25B108480(v7, v6, &v16);
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_25B108480(v9, v8, &v16);
    _os_log_impl(&dword_25B105000, v4, v5, "%s: actionSetID:%s in homeID:%s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v11, -1, -1);
    MEMORY[0x25F862BF0](v10, -1, -1);
  }

  v12 = v0[21];
  v13 = swift_task_alloc();
  v0[29] = v13;
  *v13 = v0;
  v13[1] = sub_25B157F58;
  v14 = v0[20];

  return sub_25B135748(v14, v12, 0);
}

uint64_t sub_25B157F58(uint64_t a1)
{
  v2 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = a1;

  return MEMORY[0x2822009F8](sub_25B158058, 0, 0);
}

uint64_t sub_25B158058()
{
  v84 = v0;
  v1 = v0;
  v2 = v0[30];
  if (v2)
  {
    v3 = [v2 actionSets];
    v1[31] = sub_25B132284(0, &qword_27FA3A460, 0x277CD1800);
    v4 = sub_25B161C64();

    v83[0] = MEMORY[0x277D84F90];
    if (v4 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B161E54())
    {
      v6 = 0;
      v81 = v4 & 0xFFFFFFFFFFFFFF8;
      v82 = v4 & 0xC000000000000001;
      v77 = v2;
      v78 = (v1[25] + 8);
      v79 = i;
      v80 = v4;
      while (1)
      {
        if (v82)
        {
          v8 = MEMORY[0x25F862410](v6, v4);
        }

        else
        {
          if (v6 >= *(v81 + 16))
          {
            goto LABEL_22;
          }

          v8 = *(v4 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v11 = v1[27];
        v12 = v1[23];
        v13 = v1[24];
        v2 = v1;
        v14 = v1[22];
        v15 = [v8 uniqueIdentifier];
        sub_25B161504();

        v16 = sub_25B1614F4();
        v18 = v17;
        (*v78)(v11, v13);
        if (v16 == v14 && v18 == v12)
        {

          v1 = v2;
        }

        else
        {
          v1 = v2;
          v19 = v2[22];
          v20 = v2[23];
          v21 = sub_25B161FA4();

          if ((v21 & 1) == 0)
          {

            goto LABEL_7;
          }
        }

        sub_25B161EE4();
        v7 = *(v83[0] + 16);
        sub_25B161F04();
        sub_25B161F14();
        sub_25B161EF4();
LABEL_7:
        v4 = v80;
        ++v6;
        if (v10 == v79)
        {
          v22 = v83[0];
          v2 = v77;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v22 = MEMORY[0x277D84F90];
LABEL_25:

    if (v22 < 0 || (v22 & 0x4000000000000000) != 0)
    {
      v29 = sub_25B161E54();
      if (v29)
      {
LABEL_28:
        if ((v22 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x25F862410](0, v22);
        }

        else
        {
          if (!*(v22 + 16))
          {
            __break(1u);
            return MEMORY[0x2822007B8](v29, v30, v31, v32, v33, v34, v35, v36);
          }

          v37 = *(v22 + 32);
        }

        v38 = v37;

        v1[32] = v38;
        v39 = v1[28];
        v40 = v38;
        v41 = v2;
        v42 = sub_25B1619F4();
        v43 = sub_25B161D94();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v83[0] = v45;
          *v44 = 136315650;
          *(v44 + 4) = sub_25B108480(0xD000000000000025, 0x800000025B167E80, v83);
          *(v44 + 12) = 2080;
          v46 = [v40 name];
          v47 = sub_25B161B34();
          v49 = v48;

          v50 = sub_25B108480(v47, v49, v83);

          *(v44 + 14) = v50;
          *(v44 + 22) = 2080;
          v51 = [v41 name];
          v52 = sub_25B161B34();
          v54 = v53;

          v55 = sub_25B108480(v52, v54, v83);

          *(v44 + 24) = v55;
          _os_log_impl(&dword_25B105000, v42, v43, "%s: Toggle actionSet %s in home %s", v44, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x25F862BF0](v45, -1, -1);
          MEMORY[0x25F862BF0](v44, -1, -1);
        }

        v56 = *(MEMORY[0x277D859E0] + 4);
        v57 = swift_task_alloc();
        v1[33] = v57;
        v36 = sub_25B132284(0, &qword_27FA3A370, 0x277CD1A90);
        *v57 = v1;
        v57[1] = sub_25B158890;
        v34 = sub_25B1314F0;
        v32 = 0x616E614D656D6F68;
        v33 = 0xEB00000000726567;
        v29 = (v1 + 18);
        v30 = 0;
        v31 = 0;
        v35 = 0;

        return MEMORY[0x2822007B8](v29, v30, v31, v32, v33, v34, v35, v36);
      }
    }

    else if (*(v22 + 16))
    {
      goto LABEL_28;
    }

    v58 = v1[28];
    v59 = v1[23];

    sub_25B161264();
    v60 = v2;
    v61 = sub_25B1619F4();
    v62 = sub_25B161D94();

    if (os_log_type_enabled(v61, v62))
    {
      v64 = v1[22];
      v63 = v1[23];
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v83[0] = v66;
      *v65 = 136315650;
      *(v65 + 4) = sub_25B108480(0xD000000000000025, 0x800000025B167E80, v83);
      *(v65 + 12) = 2080;
      *(v65 + 14) = sub_25B108480(v64, v63, v83);
      *(v65 + 22) = 2080;
      v67 = [v60 name];
      v68 = sub_25B161B34();
      v70 = v69;

      v71 = sub_25B108480(v68, v70, v83);

      *(v65 + 24) = v71;
      _os_log_impl(&dword_25B105000, v61, v62, "%s: was not able to find matching actionSet with identifier %s in home %s.", v65, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v66, -1, -1);
      MEMORY[0x25F862BF0](v65, -1, -1);
    }

    sub_25B1295F4();
    swift_allocError();
    *v72 = 0xD000000000000014;
    v72[1] = 0x800000025B167F50;
    swift_willThrow();
  }

  else
  {
    v23 = v1[28];
    v24 = sub_25B1619F4();
    v25 = sub_25B161D94();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v83[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_25B108480(0xD000000000000025, 0x800000025B167E80, v83);
      _os_log_impl(&dword_25B105000, v24, v25, "%s: was not able to find a home.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x25F862BF0](v27, -1, -1);
      MEMORY[0x25F862BF0](v26, -1, -1);
    }

    sub_25B1295F4();
    swift_allocError();
    strcpy(v28, "No Home found.");
    v28[15] = -18;
    swift_willThrow();
  }

  v74 = v1[26];
  v73 = v1[27];

  v75 = v1[1];

  return v75();
}

uint64_t sub_25B158890()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25B15898C, 0, 0);
}

uint64_t sub_25B15898C()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[18];
  v4 = [v3 widgetManager];
  v0[34] = v4;

  v0[35] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25B163810;
  *(v5 + 32) = v2;
  v6 = v2;
  v7 = sub_25B161C54();
  v0[36] = v7;

  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_25B158B3C;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A930, &unk_25B1661D8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_25B156C2C;
  v0[13] = &block_descriptor_16;
  v0[14] = v8;
  [v4 fetchStateForActionSets:v7 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25B158B3C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  if (v2)
  {
    v3 = sub_25B159504;
  }

  else
  {
    v3 = sub_25B158C4C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25B158C4C()
{
  v51 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);
  v5 = *(v0 + 152);
  *(v0 + 304) = v5;
  v6 = v5;

  v7 = [v6 isOnByActionSetUniqueIdentifier];
  sub_25B132284(0, &qword_27FA3A938, 0x277CCABB0);
  sub_25B15DD08(&qword_27FA39BD0, MEMORY[0x277CC95F0]);
  v8 = sub_25B161A84();

  v9 = [v2 uniqueIdentifier];
  sub_25B161504();

  if (*(v8 + 16) && (v10 = sub_25B108BB4(*(v0 + 208)), (v11 & 1) != 0))
  {
    v12 = *(v0 + 208);
    v13 = *(v0 + 192);
    v14 = *(*(v0 + 200) + 8);
    v15 = *(*(v8 + 56) + 8 * v10);
    v14(v12, v13);

    v16 = [v15 BOOLValue];
  }

  else
  {
    v18 = *(v0 + 200);
    v17 = *(v0 + 208);
    v19 = *(v0 + 192);

    (*(v18 + 8))(v17, v19);
    v16 = 0;
  }

  v20 = *(v0 + 240);
  v21 = *(v0 + 224);
  v22 = *(v0 + 256);
  v23 = v20;
  v24 = sub_25B1619F4();
  v25 = sub_25B161D94();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 256);
    v49 = *(v0 + 240);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v50 = v28;
    *v27 = 136315906;
    *(v27 + 4) = sub_25B108480(0xD000000000000025, 0x800000025B167E80, &v50);
    *(v27 + 12) = 2080;
    if (v16)
    {
      v29 = 0x66666F206E727574;
    }

    else
    {
      v29 = 0x2065747563657865;
    }

    if (v16)
    {
      v30 = 0xE900000000000020;
    }

    else
    {
      v30 = 0xE800000000000000;
    }

    v31 = sub_25B108480(v29, v30, &v50);

    *(v27 + 14) = v31;
    *(v27 + 22) = 2080;
    v32 = [v26 name];
    v33 = sub_25B161B34();
    v35 = v34;

    v36 = sub_25B108480(v33, v35, &v50);

    *(v27 + 24) = v36;
    *(v27 + 32) = 2080;
    v37 = [v49 name];
    v38 = sub_25B161B34();
    v40 = v39;

    v41 = sub_25B108480(v38, v40, &v50);

    *(v27 + 34) = v41;
    _os_log_impl(&dword_25B105000, v24, v25, "%s: Attempting to %s %s in home %s", v27, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v28, -1, -1);
    MEMORY[0x25F862BF0](v27, -1, -1);
  }

  v42 = *(v0 + 280);
  v43 = *(v0 + 256);
  v44 = swift_allocObject();
  *(v0 + 312) = v44;
  v45 = 0x277CD1A10;
  *(v44 + 16) = xmmword_25B163810;
  if (!v16)
  {
    v45 = 0x277CD1A08;
  }

  v46 = *v45;
  *(v44 + 32) = [objc_opt_self() executeRequestWithActionSet_];
  v47 = swift_task_alloc();
  *(v0 + 320) = v47;
  *v47 = v0;
  v47[1] = sub_25B159108;

  return sub_25B156D04(v44, 0xD000000000000026, 0x800000025B166530);
}

uint64_t sub_25B159108()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v7 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = sub_25B1592C8;
  }

  else
  {
    v5 = *(v2 + 312);

    v4 = sub_25B159224;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25B159224()
{
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[30];
  v5 = v0[26];
  v6 = v0[27];

  v7 = v0[1];

  return v7();
}

uint64_t sub_25B1592C8()
{
  v24 = v0;
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[28];

  v4 = v1;
  v5 = sub_25B1619F4();
  v6 = sub_25B161D84();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[41];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_25B108480(0xD000000000000025, 0x800000025B167E80, &v23);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_25B105000, v5, v6, "%s: Write error %@", v8, 0x16u);
    sub_25B11B208(v9, &qword_27FA3A4E0, &qword_25B165AF0);
    MEMORY[0x25F862BF0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x25F862BF0](v10, -1, -1);
    MEMORY[0x25F862BF0](v8, -1, -1);
  }

  v13 = v0[41];
  v14 = v0[38];
  v15 = v0[34];
  v16 = v0[32];
  v17 = v0[30];
  sub_25B1295F4();
  swift_allocError();
  *v18 = 0xD00000000000001CLL;
  v18[1] = 0x800000025B167F30;
  swift_willThrow();

  v20 = v0[26];
  v19 = v0[27];

  v21 = v0[1];

  return v21();
}

uint64_t sub_25B159504()
{
  v23 = v0;
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[28];
  swift_willThrow();

  v4 = v1;
  v5 = sub_25B1619F4();
  v6 = sub_25B161D94();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[37];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_25B108480(0xD000000000000025, 0x800000025B167E80, &v22);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_25B105000, v5, v6, "%s: Action Set fetch state failed with error: %@", v8, 0x16u);
    sub_25B11B208(v9, &qword_27FA3A4E0, &qword_25B165AF0);
    MEMORY[0x25F862BF0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x25F862BF0](v10, -1, -1);
    MEMORY[0x25F862BF0](v8, -1, -1);
  }

  v13 = v0[37];
  v14 = v0[34];
  v15 = v0[32];
  v16 = v0[30];
  sub_25B1295F4();
  swift_allocError();
  *v17 = 0xD000000000000022;
  v17[1] = 0x800000025B167F00;
  swift_willThrow();

  v19 = v0[26];
  v18 = v0[27];

  v20 = v0[1];

  return v20();
}

uint64_t sub_25B159730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[62] = a6;
  v7[63] = a7;
  v7[60] = a4;
  v7[61] = a5;
  v7[58] = a2;
  v7[59] = a3;
  v7[57] = a1;
  v8 = sub_25B161894();
  v7[64] = v8;
  v9 = *(v8 - 8);
  v7[65] = v9;
  v10 = *(v9 + 64) + 15;
  v7[66] = swift_task_alloc();
  v11 = sub_25B1616A4();
  v7[67] = v11;
  v12 = *(v11 - 8);
  v7[68] = v12;
  v13 = *(v12 + 64) + 15;
  v7[69] = swift_task_alloc();
  v7[70] = swift_task_alloc();
  v7[71] = swift_task_alloc();
  v7[72] = swift_task_alloc();
  v7[73] = swift_task_alloc();
  v7[74] = swift_task_alloc();
  v7[75] = swift_task_alloc();
  v7[76] = swift_task_alloc();
  v7[77] = swift_task_alloc();
  v7[78] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B1598C4, 0, 0);
}

uint64_t sub_25B1598C4()
{
  v46 = v0;
  v1 = v0[57];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v15 = v0[57];
    }

    v16 = sub_25B161E54();
    v0[79] = v16;
    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[79] = v2;
    if (!v2)
    {
      goto LABEL_17;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x25F862410](0, v0[57]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_25;
    }

    v3 = *(v0[57] + 32);
  }

  v4 = v3;
  v5 = HMService.primaryStateCharacteristic.getter();
  v0[80] = v5;

  if (v5)
  {
    if (qword_27FA39AD8 != -1)
    {
      swift_once();
    }

    v6 = v0[59];
    v7 = sub_25B161A14();
    v0[81] = __swift_project_value_buffer(v7, qword_27FA3A010);
    sub_25B161264();
    v8 = sub_25B1619F4();
    v9 = sub_25B161D94();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[58];
      v10 = v0[59];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v45[0] = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, v45);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_25B108480(v11, v10, v45);
      _os_log_impl(&dword_25B105000, v8, v9, "%s: reading value for %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v13, -1, -1);
      MEMORY[0x25F862BF0](v12, -1, -1);
    }

    v0[2] = v0;
    v0[3] = sub_25B159E80;
    v14 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A918, &qword_25B1661B8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_25B156B80;
    v0[13] = &block_descriptor;
    v0[14] = v14;
    [v5 readValueWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }

LABEL_17:
  if (qword_27FA39AD8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v17 = v0[63];
  v18 = v0[61];
  v19 = v0[59];
  v20 = sub_25B161A14();
  __swift_project_value_buffer(v20, qword_27FA3A010);
  sub_25B161264();
  sub_25B161264();
  sub_25B161264();
  v21 = sub_25B1619F4();
  v22 = sub_25B161D94();

  if (os_log_type_enabled(v21, v22))
  {
    v41 = v0[62];
    v43 = v0[63];
    v24 = v0[60];
    v23 = v0[61];
    v25 = v0[58];
    v26 = v0[59];
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v45[0] = v28;
    *v27 = 136315906;
    *(v27 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, v45);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_25B108480(v25, v26, v45);
    *(v27 + 22) = 2080;
    *(v27 + 24) = sub_25B108480(v24, v23, v45);
    *(v27 + 32) = 2080;
    *(v27 + 34) = sub_25B108480(v41, v43, v45);
    _os_log_impl(&dword_25B105000, v21, v22, "%s: was not able to find current state characteristic for %s with identifier %s in home %s.", v27, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v28, -1, -1);
    MEMORY[0x25F862BF0](v27, -1, -1);
  }

  sub_25B1295F4();
  swift_allocError();
  *v29 = 0xD00000000000002DLL;
  v29[1] = 0x800000025B167D60;
  swift_willThrow();
  v30 = v0[78];
  v31 = v0[77];
  v32 = v0[76];
  v33 = v0[75];
  v34 = v0[74];
  v35 = v0[73];
  v36 = v0[72];
  v37 = v0[71];
  v38 = v0[70];
  v42 = v0[69];
  v44 = v0[66];

  v39 = v0[1];

  return v39();
}

uint64_t sub_25B159E80()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 656) = v2;
  if (v2)
  {
    v3 = sub_25B15C200;
  }

  else
  {
    v3 = sub_25B159F90;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25B159F90()
{
  v273 = v0;
  v2 = 0;
  v3 = *(v0 + 544);
  v4 = *(v0 + 520);
  v5 = MEMORY[0x277D84F90];
  v6 = *(v0 + 456);
  *(v0 + 440) = MEMORY[0x277D84F90];
  v248 = v6 + 32;
  v249 = v6 & 0xFFFFFFFFFFFFFF8;
  v250 = *MEMORY[0x277D15720];
  v256 = (v3 + 104);
  v257 = (v3 + 8);
  v247 = *MEMORY[0x277D15898];
  v243 = *MEMORY[0x277D15760];
  v238 = (v4 + 8);
  v239 = (v4 + 104);
  v241 = *MEMORY[0x277D156D8];
  v240 = *MEMORY[0x277D158D0];
  v237 = *MEMORY[0x277D160A8];
  v242 = *MEMORY[0x277CCFB40];
  v7 = *MEMORY[0x277CCFB08];
  while (1)
  {
    v260 = v5;
    if ((*(v0 + 456) & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x25F862410](v2);
    }

    else
    {
      if (v2 >= *(v249 + 16))
      {
        goto LABEL_109;
      }

      v16 = *(v248 + 8 * v2);
    }

    v1 = v16;
    v15 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:

      v223 = v0 + 208;
      goto LABEL_105;
    }

    v17 = HMService.primaryControlCharacteristic.getter();
    v18 = *(v0 + 648);
    if (v17)
    {
      break;
    }

    v41 = *(v0 + 504);
    v42 = *(v0 + 488);
    v43 = *(v0 + 472);
    sub_25B161264();
    sub_25B161264();
    sub_25B161264();
    v44 = sub_25B1619F4();
    v45 = sub_25B161D94();

    if (os_log_type_enabled(v44, v45))
    {
      v259 = *(v0 + 504);
      v251 = *(v0 + 496);
      v244 = *(v0 + 488);
      v266 = v2 + 1;
      v270 = v1;
      v8 = v2;
      v9 = *(v0 + 472);
      v10 = *(v0 + 480);
      v1 = *(v0 + 464);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v271 = v12;
      *v11 = 136315906;
      *(v11 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, &v271);
      *(v11 + 12) = 2080;
      v13 = v9;
      v2 = v8;
      *(v11 + 14) = sub_25B108480(v1, v13, &v271);
      *(v11 + 22) = 2080;
      v14 = v10;
      v15 = v266;
      *(v11 + 24) = sub_25B108480(v14, v244, &v271);
      *(v11 + 32) = 2080;
      *(v11 + 34) = sub_25B108480(v251, v259, &v271);
      _os_log_impl(&dword_25B105000, v44, v45, "%s: was not able to find control characteristic for %s with identifier %s in home %s.", v11, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v12, -1, -1);
      MEMORY[0x25F862BF0](v11, -1, -1);
    }

    else
    {
    }

LABEL_4:
    v5 = v260;
LABEL_5:
    *(v0 + 664) = v5;
    ++v2;
    if (v15 == *(v0 + 632))
    {
      v196 = swift_task_alloc();
      *(v0 + 672) = v196;
      *v196 = v0;
      v196[1] = sub_25B15BD44;

      return sub_25B156D04(v5, 0xD000000000000027, 0x800000025B166560);
    }
  }

  v19 = v17;
  v20 = *(v0 + 640);
  v21 = v19;
  v22 = sub_25B1619F4();
  v23 = sub_25B161D64();

  v267 = v2 + 1;
  v270 = v1;
  v259 = v21;
  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 640);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v271 = v26;
    *v25 = 136315650;
    *(v25 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, &v271);
    *(v25 + 12) = 2080;
    v27 = [v24 localizedDescription];
    v28 = sub_25B161B34();
    v30 = v29;

    v31 = sub_25B108480(v28, v30, &v271);

    *(v25 + 14) = v31;
    *(v25 + 22) = 2080;
    v32 = [v21 localizedDescription];
    v33 = sub_25B161B34();
    v35 = v34;

    v36 = sub_25B108480(v33, v35, &v271);

    *(v25 + 24) = v36;
    _os_log_impl(&dword_25B105000, v22, v23, "%s: stateCharacteristic is %s, controlCharacteristic is %s", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v26, -1, -1);
    MEMORY[0x25F862BF0](v25, -1, -1);
  }

  v37 = *(v0 + 624);
  v38 = *(v0 + 616);
  v39 = *(v0 + 536);
  sub_25B161DD4();
  v252 = *v256;
  (*v256)(v38, v250, v39);
  sub_25B15DD08(&qword_27FA39E18, MEMORY[0x277D158E0]);
  sub_25B161C14();
  sub_25B161C14();
  v258 = v2;
  if (*(v0 + 240) == *(v0 + 256) && *(v0 + 248) == *(v0 + 264))
  {
    v40 = 1;
  }

  else
  {
    v40 = sub_25B161FA4();
  }

  v46 = *(v0 + 624);
  v47 = *(v0 + 536);
  v48 = *v257;
  (*v257)(*(v0 + 616), v47);
  v48(v46, v47);

  if (v40)
  {
    goto LABEL_25;
  }

  v49 = *(v0 + 608);
  v50 = *(v0 + 600);
  v51 = *(v0 + 536);
  sub_25B161DD4();
  v252(v50, v247, v51);
  sub_25B161C14();
  sub_25B161C14();
  v52 = *(v0 + 608);
  v53 = *(v0 + 600);
  v54 = *(v0 + 536);
  if (*(v0 + 272) == *(v0 + 288) && *(v0 + 280) == *(v0 + 296))
  {
    v48(*(v0 + 600), *(v0 + 536));
    v48(v52, v54);

LABEL_25:
    v1 = v270;
    if ([*(v0 + 640) value])
    {
      sub_25B161E24();
      swift_unknownObjectRelease();
    }

    else
    {
      v271 = 0u;
      v272 = 0u;
    }

    v58 = v272;
    *(v0 + 176) = v271;
    *(v0 + 192) = v58;
    if (*(v0 + 200))
    {
      if (swift_dynamicCast())
      {
        v59 = *(v0 + 648);
        v60 = *(v0 + 504);
        v61 = *(v0 + 472);
        v62 = *(v0 + 448);
        if (v62 <= 0)
        {
          v63 = 100;
        }

        else
        {
          v63 = 0;
        }

        v64 = *(v0 + 472);
        sub_25B161264();
        sub_25B161264();
        v65 = v270;
        v66 = sub_25B1619F4();
        v67 = sub_25B161D94();

        if (os_log_type_enabled(v66, v67))
        {
          v261 = *(v0 + 504);
          v253 = *(v0 + 496);
          v270 = v63;
          v68 = *(v0 + 464);
          v69 = *(v0 + 472);
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          *&v271 = v71;
          *v70 = 136316418;
          *(v70 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, &v271);
          *(v70 + 12) = 2080;
          *(v70 + 14) = sub_25B108480(v68, v69, &v271);
          *(v70 + 22) = 2048;
          *(v70 + 24) = v62;
          *(v70 + 32) = 2048;
          *(v70 + 34) = v270;
          *(v70 + 42) = 2080;
          *(v70 + 44) = sub_25B108480(v253, v261, &v271);
          *(v70 + 52) = 2080;
          v72 = [v65 name];
          v73 = sub_25B161B34();
          v1 = v74;

          v75 = sub_25B108480(v73, v1, &v271);

          *(v70 + 54) = v75;
          v63 = v270;
          _os_log_impl(&dword_25B105000, v66, v67, "%s: attempting to toggle accessory %s from %ld to %ld in home %s using primary service %s", v70, 0x3Eu);
          swift_arrayDestroy();
          MEMORY[0x25F862BF0](v71, -1, -1);
          MEMORY[0x25F862BF0](v70, -1, -1);
        }

        v2 = v258;
        *(v0 + 400) = v63;
        v76 = v259;
        v77 = sub_25B161FB4();
        v78 = [objc_opt_self() writeRequestWithCharacteristic:v76 value:v77];

        swift_unknownObjectRelease();
        v79 = v78;
        MEMORY[0x25F862190]();
        if (*((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v192 = *((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_25B161C84();
        }

        sub_25B161CA4();

        v5 = *(v0 + 440);
        v15 = v267;
        goto LABEL_5;
      }
    }

    else
    {

      sub_25B11B208(v0 + 176, &qword_27FA39BB0, &qword_25B162EC8);
    }

    v198 = *(v0 + 648);
    v199 = *(v0 + 504);
    v200 = *(v0 + 472);
    sub_25B161264();
    sub_25B161264();
    v201 = sub_25B1619F4();
    v202 = sub_25B161D94();

    if (!os_log_type_enabled(v201, v202))
    {
      goto LABEL_100;
    }

    v204 = *(v0 + 496);
    v203 = *(v0 + 504);
    v206 = *(v0 + 464);
    v205 = *(v0 + 472);
    v207 = swift_slowAlloc();
    v208 = swift_slowAlloc();
    *&v271 = v208;
    *v207 = 136315650;
    *(v207 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, &v271);
    *(v207 + 12) = 2080;
    v209 = v205;
    v1 = v270;
    *(v207 + 14) = sub_25B108480(v206, v209, &v271);
    *(v207 + 22) = 2080;
    *(v207 + 24) = sub_25B108480(v204, v203, &v271);
    _os_log_impl(&dword_25B105000, v201, v202, "%s: was not able to find current value for %s in home %s.", v207, 0x20u);
    goto LABEL_99;
  }

  v55 = *(v0 + 280);
  v56 = *(v0 + 296);
  v57 = sub_25B161FA4();
  v48(v53, v54);
  v48(v52, v54);

  if (v57)
  {
    goto LABEL_25;
  }

  v80 = *(v0 + 592);
  v81 = *(v0 + 584);
  v82 = *(v0 + 536);
  sub_25B161DD4();
  v252(v81, v243, v82);
  sub_25B161C14();
  sub_25B161C14();
  v83 = *(v0 + 592);
  v84 = *(v0 + 584);
  v85 = *(v0 + 536);
  if (*(v0 + 304) == *(v0 + 320) && *(v0 + 312) == *(v0 + 328))
  {
    v48(*(v0 + 584), *(v0 + 536));
    v48(v83, v85);
    v15 = v267;
LABEL_41:

    v1 = v270;
    goto LABEL_43;
  }

  v86 = *(v0 + 312);
  v87 = *(v0 + 328);
  v88 = sub_25B161FA4();
  v48(v84, v85);
  v48(v83, v85);

  v15 = v267;
  v1 = v270;
  if ((v88 & 1) == 0)
  {
    v116 = *(v0 + 576);
    v117 = *(v0 + 568);
    v118 = *(v0 + 536);
    sub_25B161DD4();
    v252(v117, v241, v118);
    sub_25B161C14();
    sub_25B161C14();
    v119 = *(v0 + 576);
    v120 = *(v0 + 568);
    v121 = *(v0 + 536);
    if (*(v0 + 336) == *(v0 + 352) && *(v0 + 344) == *(v0 + 360))
    {
      v48(*(v0 + 568), *(v0 + 536));
      v48(v119, v121);
      goto LABEL_41;
    }

    v127 = *(v0 + 344);
    v128 = *(v0 + 360);
    v129 = sub_25B161FA4();
    v48(v120, v121);
    v48(v119, v121);

    v1 = v270;
    if ((v129 & 1) == 0)
    {
      if ([*(v0 + 640) value])
      {
        sub_25B161E24();
        swift_unknownObjectRelease();
      }

      else
      {
        v271 = 0u;
        v272 = 0u;
      }

      v146 = v272;
      *(v0 + 208) = v271;
      *(v0 + 224) = v146;
      if (!*(v0 + 232))
      {
        goto LABEL_110;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_103:

        goto LABEL_106;
      }

      v147 = *(v0 + 560);
      v148 = *(v0 + 552);
      v149 = *(v0 + 536);
      v264 = *(v0 + 689);
      sub_25B161DD4();
      v252(v148, v240, v149);
      sub_25B161C14();
      sub_25B161C14();
      v150 = *(v0 + 560);
      v151 = *(v0 + 552);
      v152 = *(v0 + 536);
      if (*(v0 + 368) == *(v0 + 384) && *(v0 + 376) == *(v0 + 392))
      {
        v48(*(v0 + 552), *(v0 + 536));
        v48(v150, v152);
      }

      else
      {
        v153 = *(v0 + 376);
        v154 = *(v0 + 392);
        v155 = sub_25B161FA4();
        v48(v151, v152);
        v48(v150, v152);

        if ((v155 & 1) == 0)
        {
LABEL_86:
          v172 = *(v0 + 648);
          v173 = *(v0 + 504);
          v174 = *(v0 + 472);
          sub_25B161264();
          sub_25B161264();
          v175 = v1;
          v176 = sub_25B1619F4();
          v177 = sub_25B161D94();

          if (os_log_type_enabled(v176, v177))
          {
            v178 = *(v0 + 496);
            v270 = *(v0 + 504);
            v180 = *(v0 + 464);
            v179 = *(v0 + 472);
            v181 = swift_slowAlloc();
            v182 = swift_slowAlloc();
            *&v271 = v182;
            *v181 = 136316418;
            *(v181 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, &v271);
            *(v181 + 12) = 2080;
            *(v181 + 14) = sub_25B108480(v180, v179, &v271);
            *(v181 + 22) = 1024;
            *(v181 + 24) = v264;
            *(v181 + 28) = 1024;
            v183 = v264 ^ 1;
            *(v181 + 30) = v264 ^ 1;
            *(v181 + 34) = 2080;
            *(v181 + 36) = sub_25B108480(v178, v270, &v271);
            *(v181 + 44) = 2080;
            v184 = [v175 name];
            v185 = sub_25B161B34();
            v1 = v186;

            v187 = sub_25B108480(v185, v1, &v271);

            *(v181 + 46) = v187;
            _os_log_impl(&dword_25B105000, v176, v177, "%s: attempting to toggle accessory %s from %{BOOL}d to %{BOOL}d in home %s using primary service %s", v181, 0x36u);
            swift_arrayDestroy();
            MEMORY[0x25F862BF0](v182, -1, -1);
            MEMORY[0x25F862BF0](v181, -1, -1);
          }

          else
          {

            v183 = v264 ^ 1;
          }

          v2 = v258;
          *(v0 + 688) = v183;
          v188 = v259;
          v189 = sub_25B161FB4();
          v190 = [objc_opt_self() writeRequestWithCharacteristic:v188 value:v189];

          swift_unknownObjectRelease();
          v191 = v190;
          MEMORY[0x25F862190]();
          if (*((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v194 = *((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_25B161C84();
          }

          sub_25B161CA4();

          v5 = *(v0 + 440);
          v15 = v267;
          goto LABEL_5;
        }
      }

      if ((v264 & 1) == 0)
      {
        v156 = *(v0 + 528);
        v157 = *(v0 + 512);
        (*v239)(v156, v237, v157);
        v158 = sub_25B161DE4();
        (*v238)(v156, v157);
        if (v158)
        {
          v159 = *(v0 + 648);
          v160 = *(v0 + 472);
          sub_25B161264();
          v161 = sub_25B1619F4();
          v162 = sub_25B161D94();

          if (os_log_type_enabled(v161, v162))
          {
            v164 = *(v0 + 464);
            v163 = *(v0 + 472);
            v165 = swift_slowAlloc();
            v166 = swift_slowAlloc();
            *&v271 = v166;
            *v165 = 136315394;
            *(v165 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, &v271);
            *(v165 + 12) = 2080;
            *(v165 + 14) = sub_25B108480(v164, v163, &v271);
            _os_log_impl(&dword_25B105000, v161, v162, "%s: will set brightness to 100%% for %s", v165, 0x16u);
            swift_arrayDestroy();
            v167 = v166;
            v1 = v270;
            MEMORY[0x25F862BF0](v167, -1, -1);
            MEMORY[0x25F862BF0](v165, -1, -1);
          }

          *(v0 + 408) = 100;
          v168 = v158;
          v169 = sub_25B161FB4();
          v170 = [objc_opt_self() writeRequestWithCharacteristic:v168 value:v169];

          swift_unknownObjectRelease();
          v171 = v170;
          MEMORY[0x25F862190]();
          if (*((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v195 = *((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_25B161C84();
          }

          sub_25B161CA4();
        }
      }

      goto LABEL_86;
    }
  }

LABEL_43:
  if ([*(v0 + 640) value])
  {
    sub_25B161E24();
    swift_unknownObjectRelease();
  }

  else
  {
    v271 = 0u;
    v272 = 0u;
  }

  v2 = v258;
  v89 = v272;
  *(v0 + 144) = v271;
  *(v0 + 160) = v89;
  if (*(v0 + 168))
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_103;
    }

    v90 = *(v0 + 416);
    v91 = [v259 characteristicType];
    v92 = sub_25B161B34();
    v94 = v93;

    if (v92 == sub_25B161B34() && v94 == v95)
    {

LABEL_52:
      v97 = *(v0 + 648);
      v98 = *(v0 + 504);
      v99 = *(v0 + 472);
      v262 = v90 != 1;
      sub_25B161264();
      sub_25B161264();
      v1 = v1;
      v100 = sub_25B1619F4();
      v101 = sub_25B161D94();

      v270 = v1;
      if (os_log_type_enabled(v100, v101))
      {
        v245 = *(v0 + 504);
        v234 = *(v0 + 472);
        v235 = *(v0 + 496);
        v102 = v15;
        v103 = *(v0 + 464);
        v104 = swift_slowAlloc();
        v254 = swift_slowAlloc();
        *&v271 = v254;
        *v104 = 136316418;
        *(v104 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, &v271);
        *(v104 + 12) = 2080;
        v105 = v103;
        v15 = v102;
        *(v104 + 14) = sub_25B108480(v105, v234, &v271);
        *(v104 + 22) = 2048;
        *(v104 + 24) = v90;
        *(v104 + 32) = 2048;
        *(v104 + 34) = v262;
        *(v104 + 42) = 2080;
        *(v104 + 44) = sub_25B108480(v235, v245, &v271);
        *(v104 + 52) = 2080;
        v106 = [v1 name];
        v107 = sub_25B161B34();
        v1 = v108;

        v109 = sub_25B108480(v107, v1, &v271);

        *(v104 + 54) = v109;
        _os_log_impl(&dword_25B105000, v100, v101, "%s: attempting to toggle lock %s from %ld to %ld in home %s using primary service %s", v104, 0x3Eu);
        swift_arrayDestroy();
        MEMORY[0x25F862BF0](v254, -1, -1);
        v110 = v104;
        v2 = v258;
        MEMORY[0x25F862BF0](v110, -1, -1);
      }

      *(v0 + 432) = v262;
      v111 = v259;
      v112 = sub_25B161FB4();
      v113 = [objc_opt_self() writeRequestWithCharacteristic:v111 value:v112];
      goto LABEL_55;
    }

    v96 = sub_25B161FA4();

    if (v96)
    {
      goto LABEL_52;
    }

    v122 = [v259 characteristicType];
    v123 = sub_25B161B34();
    v125 = v124;

    if (v123 == sub_25B161B34() && v125 == v126)
    {

LABEL_68:
      v131 = *(v0 + 648);
      v132 = *(v0 + 504);
      v133 = *(v0 + 472);
      v263 = v90 != 1;
      sub_25B161264();
      sub_25B161264();
      v1 = v1;
      v134 = sub_25B1619F4();
      v135 = sub_25B161D94();

      v270 = v1;
      if (os_log_type_enabled(v134, v135))
      {
        v246 = *(v0 + 504);
        v234 = *(v0 + 472);
        v236 = *(v0 + 496);
        v136 = v15;
        v137 = *(v0 + 464);
        v138 = swift_slowAlloc();
        v255 = swift_slowAlloc();
        *&v271 = v255;
        *v138 = 136316418;
        *(v138 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, &v271);
        *(v138 + 12) = 2080;
        v139 = v137;
        v15 = v136;
        *(v138 + 14) = sub_25B108480(v139, v234, &v271);
        *(v138 + 22) = 2048;
        *(v138 + 24) = v90;
        *(v138 + 32) = 2048;
        *(v138 + 34) = v263;
        *(v138 + 42) = 2080;
        *(v138 + 44) = sub_25B108480(v236, v246, &v271);
        *(v138 + 52) = 2080;
        v140 = [v1 name];
        v141 = sub_25B161B34();
        v1 = v142;

        v143 = sub_25B108480(v141, v1, &v271);

        *(v138 + 54) = v143;
        _os_log_impl(&dword_25B105000, v134, v135, "%s: attempting to toggle door %s from %ld to %ld in home %s using primary service %s", v138, 0x3Eu);
        swift_arrayDestroy();
        MEMORY[0x25F862BF0](v255, -1, -1);
        v144 = v138;
        v2 = v258;
        MEMORY[0x25F862BF0](v144, -1, -1);
      }

      *(v0 + 424) = v263;
      v111 = v259;
      v145 = sub_25B161FB4();
      v113 = [objc_opt_self() writeRequestWithCharacteristic:v111 value:v145];
LABEL_55:
      v114 = v113;

      swift_unknownObjectRelease();
      v115 = v114;
      MEMORY[0x25F862190]();
      if (*((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v193 = *((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_25B161C84();
      }

      sub_25B161CA4();

      v5 = *(v0 + 440);
      goto LABEL_5;
    }

    v130 = sub_25B161FA4();

    if (v130)
    {
      goto LABEL_68;
    }

    goto LABEL_4;
  }

  v223 = v0 + 144;
LABEL_105:
  sub_25B11B208(v223, &qword_27FA39BB0, &qword_25B162EC8);
LABEL_106:
  v224 = *(v0 + 648);
  v225 = *(v0 + 504);
  v226 = *(v0 + 488);
  v227 = *(v0 + 472);
  sub_25B161264();
  sub_25B161264();
  sub_25B161264();
  v201 = sub_25B1619F4();
  v228 = sub_25B161D94();

  if (os_log_type_enabled(v201, v228))
  {
    v265 = *(v0 + 496);
    v269 = *(v0 + 504);
    v230 = *(v0 + 480);
    v229 = *(v0 + 488);
    v232 = *(v0 + 464);
    v231 = *(v0 + 472);
    v207 = swift_slowAlloc();
    v208 = swift_slowAlloc();
    *&v271 = v208;
    *v207 = 136315906;
    *(v207 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, &v271);
    *(v207 + 12) = 2080;
    *(v207 + 14) = sub_25B108480(v232, v231, &v271);
    *(v207 + 22) = 2080;
    v233 = v229;
    v1 = v270;
    *(v207 + 24) = sub_25B108480(v230, v233, &v271);
    *(v207 + 32) = 2080;
    *(v207 + 34) = sub_25B108480(v265, v269, &v271);
    _os_log_impl(&dword_25B105000, v201, v228, "%s: was not able to find current value for %s with identifier %s in home %s.", v207, 0x2Au);
LABEL_99:
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v208, -1, -1);
    MEMORY[0x25F862BF0](v207, -1, -1);
  }

LABEL_100:

  v210 = *(v0 + 640);
  sub_25B1295F4();
  swift_allocError();
  *v211 = 0xD00000000000002ALL;
  v211[1] = 0x800000025B167E30;
  swift_willThrow();

  v212 = *(v0 + 624);
  v213 = *(v0 + 616);
  v214 = *(v0 + 608);
  v215 = *(v0 + 600);
  v216 = *(v0 + 592);
  v217 = *(v0 + 584);
  v218 = *(v0 + 576);
  v219 = *(v0 + 568);
  v220 = *(v0 + 560);
  v221 = *(v0 + 552);
  v268 = *(v0 + 528);

  v222 = *(v0 + 8);

  return v222();
}

uint64_t sub_25B15BD44()
{
  v2 = *v1;
  v3 = *(*v1 + 672);
  v7 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v4 = sub_25B15BF6C;
  }

  else
  {
    v5 = *(v2 + 664);

    v4 = sub_25B15BE60;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25B15BE60()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 600);
  v5 = *(v0 + 592);
  v6 = *(v0 + 584);
  v7 = *(v0 + 576);
  v8 = *(v0 + 568);
  v9 = *(v0 + 560);
  v12 = *(v0 + 552);
  v13 = *(v0 + 528);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_25B15BF6C()
{
  v30 = v0;
  v1 = v0[85];
  v2 = v0[83];
  v3 = v0[81];

  v4 = v1;
  v5 = sub_25B1619F4();
  v6 = sub_25B161D84();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[85];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, &v29);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_25B105000, v5, v6, "%s: Write error %@", v8, 0x16u);
    sub_25B11B208(v9, &qword_27FA3A4E0, &qword_25B165AF0);
    MEMORY[0x25F862BF0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x25F862BF0](v10, -1, -1);
    MEMORY[0x25F862BF0](v8, -1, -1);
  }

  v13 = v0[85];
  v14 = v0[80];
  sub_25B1295F4();
  swift_allocError();
  *v15 = 0xD000000000000039;
  v15[1] = 0x800000025B167DF0;
  swift_willThrow();

  v16 = v0[78];
  v17 = v0[77];
  v18 = v0[76];
  v19 = v0[75];
  v20 = v0[74];
  v21 = v0[73];
  v22 = v0[72];
  v23 = v0[71];
  v24 = v0[70];
  v25 = v0[69];
  v28 = v0[66];

  v26 = v0[1];

  return v26();
}

uint64_t sub_25B15C200()
{
  v33 = v0;
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[63];
  v4 = v0[61];
  v5 = v0[59];
  swift_willThrow();
  sub_25B161264();
  sub_25B161264();
  sub_25B161264();
  v6 = sub_25B1619F4();
  v7 = sub_25B161D94();

  if (os_log_type_enabled(v6, v7))
  {
    v28 = v0[62];
    v30 = v0[63];
    v9 = v0[60];
    v8 = v0[61];
    v10 = v0[58];
    v11 = v0[59];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32[0] = v13;
    *v12 = 136315906;
    *(v12 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, v32);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_25B108480(v10, v11, v32);
    *(v12 + 22) = 2080;
    *(v12 + 24) = sub_25B108480(v9, v8, v32);
    *(v12 + 32) = 2080;
    *(v12 + 34) = sub_25B108480(v28, v30, v32);
    _os_log_impl(&dword_25B105000, v6, v7, "%s: was not able to read current value for %s with identifier %s in home %s.", v12, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v13, -1, -1);
    MEMORY[0x25F862BF0](v12, -1, -1);
  }

  v14 = v0[82];
  v15 = v0[80];
  swift_willThrow();

  v16 = v0[78];
  v17 = v0[77];
  v18 = v0[76];
  v19 = v0[75];
  v20 = v0[74];
  v21 = v0[73];
  v22 = v0[72];
  v23 = v0[71];
  v24 = v0[70];
  v25 = v0[69];
  v29 = v0[66];
  v31 = v0[82];

  v26 = v0[1];

  return v26();
}

uint64_t sub_25B15C488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v7 = sub_25B161514();
  v4[9] = v7;
  v8 = *(v7 - 8);
  v4[10] = v8;
  v9 = *(v8 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[13] = v10;
  *v10 = v4;
  v10[1] = sub_25B15C5B0;

  return sub_25B135748(a1, a2, 0);
}

uint64_t sub_25B15C5B0(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_25B15C6B0, 0, 0);
}

uint64_t sub_25B15C6B0()
{
  v157 = v0;
  v1 = v0;
  v2 = *(v0 + 112);
  if (!v2)
  {
    if (qword_27FA39AD8 == -1)
    {
LABEL_20:
      v23 = sub_25B161A14();
      __swift_project_value_buffer(v23, qword_27FA3A010);
      v24 = sub_25B1619F4();
      v25 = sub_25B161D94();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v156[0] = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_25B108480(0xD000000000000024, 0x800000025B167CE0, v156);
        _os_log_impl(&dword_25B105000, v24, v25, "%s: was not able to find a home.", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x25F862BF0](v27, -1, -1);
        MEMORY[0x25F862BF0](v26, -1, -1);
      }

      sub_25B1295F4();
      swift_allocError();
      strcpy(v28, "No Home found.");
      v28[15] = -18;
      swift_willThrow();
      goto LABEL_87;
    }

LABEL_63:
    swift_once();
    goto LABEL_20;
  }

  v3 = [*(v0 + 112) accessories];
  sub_25B132284(0, &qword_27FA3A468, 0x277CD1650);
  v4 = sub_25B161C64();

  v156[0] = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_41;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v6 = MEMORY[0x277D84F90];
  v155 = v1;
  if (v5)
  {
    v7 = 0;
    v149 = v4 & 0xFFFFFFFFFFFFFF8;
    v152 = v4 & 0xC000000000000001;
    v142 = v2;
    v144 = (v1[10] + 8);
    v146 = v4;
    while (1)
    {
      if (v152)
      {
        v9 = MEMORY[0x25F862410](v7, v4);
      }

      else
      {
        if (v7 >= *(v149 + 16))
        {
          goto LABEL_40;
        }

        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        v5 = sub_25B161E54();
        goto LABEL_4;
      }

      v12 = v1[12];
      v2 = v1[8];
      v13 = v1[9];
      v14 = v1[7];
      v15 = [v9 uniqueIdentifier];
      sub_25B161504();

      v16 = sub_25B1614F4();
      v18 = v17;
      (*v144)(v12, v13);
      if (v16 == v14 && v18 == v2)
      {

        v1 = v155;
      }

      else
      {
        v1 = v155;
        v19 = v155[7];
        v20 = v155[8];
        v21 = sub_25B161FA4();

        if ((v21 & 1) == 0)
        {

          goto LABEL_8;
        }
      }

      sub_25B161EE4();
      v8 = *(v156[0] + 16);
      sub_25B161F04();
      sub_25B161F14();
      sub_25B161EF4();
LABEL_8:
      v4 = v146;
      ++v7;
      if (v11 == v5)
      {
        v22 = v156[0];
        v2 = v142;
        v6 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }
  }

  v22 = MEMORY[0x277D84F90];
LABEL_24:

  if (v22 < 0 || (v22 & 0x4000000000000000) != 0)
  {
    if (sub_25B161E54())
    {
      goto LABEL_27;
    }
  }

  else if (*(v22 + 16))
  {
LABEL_27:
    if ((v22 & 0xC000000000000001) != 0)
    {
      goto LABEL_61;
    }

    if (*(v22 + 16))
    {
      v29 = *(v22 + 32);
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_63;
  }

  v79 = [v2 serviceGroups];
  sub_25B132284(0, &qword_27FA3A470, 0x277CD1D98);
  v80 = sub_25B161C64();

  v156[0] = v6;
  if (v80 >> 62)
  {
    v22 = sub_25B161E54();
    if (v22)
    {
      goto LABEL_45;
    }

LABEL_65:
    v97 = MEMORY[0x277D84F90];
LABEL_66:

    if (v97 < 0 || (v97 & 0x4000000000000000) != 0)
    {
      if (sub_25B161E54())
      {
        goto LABEL_69;
      }
    }

    else if (*(v97 + 16))
    {
LABEL_69:
      if ((v97 & 0xC000000000000001) != 0)
      {
        v98 = MEMORY[0x25F862410](0, v97);
LABEL_72:
        v99 = v98;

        v1[22] = v99;
        if (qword_27FA39AD8 != -1)
        {
          swift_once();
        }

        v100 = sub_25B161A14();
        __swift_project_value_buffer(v100, qword_27FA3A010);
        v101 = v2;
        v102 = v99;
        v103 = sub_25B1619F4();
        v104 = sub_25B161D94();

        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v156[0] = v106;
          *v105 = 136315650;
          *(v105 + 4) = sub_25B108480(0xD000000000000024, 0x800000025B167CE0, v156);
          *(v105 + 12) = 2080;
          v107 = [v102 name];
          v108 = sub_25B161B34();
          v110 = v109;

          v111 = sub_25B108480(v108, v110, v156);

          *(v105 + 14) = v111;
          *(v105 + 22) = 2080;
          v112 = [v101 name];
          v113 = sub_25B161B34();
          v115 = v114;

          v116 = sub_25B108480(v113, v115, v156);
          v1 = v155;

          *(v105 + 24) = v116;
          _os_log_impl(&dword_25B105000, v103, v104, "%s: Toggle serviceGroup %s in home %s", v105, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x25F862BF0](v106, -1, -1);
          MEMORY[0x25F862BF0](v105, -1, -1);
        }

        v117 = [v102 services];
        sub_25B132284(0, &qword_27FA39E58, 0x277CD1D90);
        inited = sub_25B161C64();
        v1[23] = inited;

        v118 = [v102 name];
        v53 = sub_25B161B34();
        v55 = v119;

        v1[24] = v55;
        v120 = [v101 name];
        v57 = sub_25B161B34();
        v59 = v121;

        v1[25] = v59;
        v60 = swift_task_alloc();
        v1[26] = v60;
        *v60 = v1;
        v61 = sub_25B15DA64;
LABEL_77:
        v60[1] = v61;
        v122 = v1[7];
        v123 = v1[8];

        return sub_25B159730(inited, v53, v55, v122, v123, v57, v59);
      }

      if (*(v97 + 16))
      {
        v98 = *(v97 + 32);
        goto LABEL_72;
      }

      __break(1u);
      goto LABEL_92;
    }

    if (qword_27FA39AD8 == -1)
    {
LABEL_82:
      v125 = v1[8];
      v126 = sub_25B161A14();
      __swift_project_value_buffer(v126, qword_27FA3A010);
      v64 = v2;
      sub_25B161264();
      v127 = sub_25B1619F4();
      v128 = sub_25B161D94();

      if (os_log_type_enabled(v127, v128))
      {
        v130 = v1[7];
        v129 = v1[8];
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v156[0] = v132;
        *v131 = 136315650;
        *(v131 + 4) = sub_25B108480(0xD000000000000024, 0x800000025B167CE0, v156);
        *(v131 + 12) = 2080;
        *(v131 + 14) = sub_25B108480(v130, v129, v156);
        *(v131 + 22) = 2080;
        v133 = [v64 name];
        v134 = sub_25B161B34();
        v136 = v135;

        v137 = sub_25B108480(v134, v136, v156);

        *(v131 + 24) = v137;
        _os_log_impl(&dword_25B105000, v127, v128, "%s: was not able to find matching accessory or serviceGroup for ID %s in home %s.", v131, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25F862BF0](v132, -1, -1);
        MEMORY[0x25F862BF0](v131, -1, -1);

        sub_25B1295F4();
        swift_allocError();
      }

      else
      {

        sub_25B1295F4();
        swift_allocError();
      }

      *v138 = 0xD000000000000014;
      v138[1] = 0x800000025B167D40;
      swift_willThrow();
      goto LABEL_86;
    }

LABEL_92:
    swift_once();
    goto LABEL_82;
  }

  v22 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_65;
  }

LABEL_45:
  v81 = 0;
  v151 = v80 & 0xFFFFFFFFFFFFFF8;
  v154 = v80 & 0xC000000000000001;
  v143 = v2;
  v145 = (v1[10] + 8);
  v148 = v22;
  while (1)
  {
    if (v154)
    {
      v82 = MEMORY[0x25F862410](v81, v80);
    }

    else
    {
      if (v81 >= *(v151 + 16))
      {
        goto LABEL_60;
      }

      v82 = *(v80 + 8 * v81 + 32);
    }

    v83 = v82;
    v2 = (v81 + 1);
    if (__OFADD__(v81, 1))
    {
      break;
    }

    v84 = v80;
    v85 = v1[11];
    v86 = v1[8];
    v87 = v1[9];
    v88 = v1[7];
    v89 = [v82 uniqueIdentifier];
    sub_25B161504();

    v90 = sub_25B1614F4();
    v92 = v91;
    (*v145)(v85, v87);
    if (v90 == v88 && v92 == v86)
    {

      v1 = v155;
LABEL_56:
      sub_25B161EE4();
      v96 = *(v156[0] + 16);
      sub_25B161F04();
      sub_25B161F14();
      sub_25B161EF4();
      goto LABEL_47;
    }

    v1 = v155;
    v93 = v155[7];
    v94 = v155[8];
    v95 = sub_25B161FA4();

    if (v95)
    {
      goto LABEL_56;
    }

LABEL_47:
    v80 = v84;
    v22 = v148;
    ++v81;
    if (v2 == v148)
    {
      v97 = v156[0];
      v2 = v143;
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  v29 = MEMORY[0x25F862410](0, v22);
LABEL_30:
  v30 = v29;

  v1[15] = v30;
  if (qword_27FA39AD8 != -1)
  {
    swift_once();
  }

  v31 = sub_25B161A14();
  __swift_project_value_buffer(v31, qword_27FA3A010);
  v32 = v30;
  v33 = v2;
  v34 = sub_25B1619F4();
  v35 = sub_25B161D94();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v156[0] = v37;
    *v36 = 136315650;
    *(v36 + 4) = sub_25B108480(0xD000000000000024, 0x800000025B167CE0, v156);
    *(v36 + 12) = 2080;
    v38 = [v32 name];
    v39 = sub_25B161B34();
    v41 = v40;

    v42 = sub_25B108480(v39, v41, v156);

    *(v36 + 14) = v42;
    *(v36 + 22) = 2080;
    v43 = [v33 name];
    v44 = sub_25B161B34();
    v46 = v45;

    v47 = sub_25B108480(v44, v46, v156);
    v1 = v155;

    *(v36 + 24) = v47;
    _os_log_impl(&dword_25B105000, v34, v35, "%s: Toggle accessory %s in home %s", v36, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v37, -1, -1);
    MEMORY[0x25F862BF0](v36, -1, -1);
  }

  v48 = HMAccessory.serviceWithPrimaryControlCharacteristic()();
  v1[16] = v48;
  if (v48)
  {
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
    inited = swift_initStackObject();
    v1[17] = inited;
    *(inited + 16) = xmmword_25B163810;
    *(inited + 32) = v49;
    v51 = v49;
    v52 = [v32 name];
    v53 = sub_25B161B34();
    v55 = v54;

    v1[18] = v55;
    v56 = [v33 name];
    v57 = sub_25B161B34();
    v59 = v58;

    v1[19] = v59;
    v60 = swift_task_alloc();
    v1[20] = v60;
    *v60 = v1;
    v61 = sub_25B15D7D0;
    goto LABEL_77;
  }

  v62 = v1[8];
  v63 = v32;
  v64 = v33;
  sub_25B161264();
  v65 = sub_25B1619F4();
  v66 = sub_25B161D94();

  if (os_log_type_enabled(v65, v66))
  {
    v147 = v1[7];
    v150 = v1[8];
    v67 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v156[0] = v153;
    *v67 = 136315906;
    *(v67 + 4) = sub_25B108480(0xD000000000000024, 0x800000025B167CE0, v156);
    *(v67 + 12) = 2080;
    v68 = [v63 name];
    v69 = sub_25B161B34();
    v71 = v70;

    v72 = sub_25B108480(v69, v71, v156);

    *(v67 + 14) = v72;
    *(v67 + 22) = 2080;
    *(v67 + 24) = sub_25B108480(v147, v150, v156);
    *(v67 + 32) = 2080;
    v73 = [v64 &selRef_conformsToProtocol_];
    v74 = sub_25B161B34();
    v76 = v75;

    v77 = sub_25B108480(v74, v76, v156);
    v1 = v155;

    *(v67 + 34) = v77;
    _os_log_impl(&dword_25B105000, v65, v66, "%s: was not able to find primary service for %s with identifier %s in home %s.", v67, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v153, -1, -1);
    MEMORY[0x25F862BF0](v67, -1, -1);
  }

  sub_25B1295F4();
  swift_allocError();
  *v78 = 0xD000000000000028;
  v78[1] = 0x800000025B167D10;
  swift_willThrow();

LABEL_86:
LABEL_87:
  v140 = v1[11];
  v139 = v1[12];

  v141 = v1[1];

  return v141();
}

uint64_t sub_25B15D7D0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v10 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_25B15D99C;
  }

  else
  {
    v6 = v2[18];
    v5 = v2[19];
    v7 = v2[17];

    swift_setDeallocating();
    v8 = *(v7 + 16);
    swift_arrayDestroy();
    v4 = sub_25B15D918;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25B15D918()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);

  v4 = *(v0 + 88);
  v3 = *(v0 + 96);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_25B15D99C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 112);

  swift_setDeallocating();
  v6 = *(v3 + 16);
  swift_arrayDestroy();
  v7 = *(v0 + 168);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_25B15DA64()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v9 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_25B15DC10;
  }

  else
  {
    v6 = v2[24];
    v5 = v2[25];
    v7 = v2[23];

    v4 = sub_25B15DB94;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25B15DB94()
{
  v1 = *(v0 + 112);

  v3 = *(v0 + 88);
  v2 = *(v0 + 96);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25B15DC10()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[14];

  v6 = v0[27];
  v8 = v0[11];
  v7 = v0[12];

  v9 = v0[1];

  return v9();
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25B15DD08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ToggleAccessoryIntent.home.setter(__int128 *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_25B161154();
}

uint64_t sub_25B15DDBC()
{
  v0 = sub_25B161584();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_25B1613F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B161B14();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_25B161414();
  __swift_allocate_value_buffer(v9, qword_27FA3A940);
  __swift_project_value_buffer(v9, qword_27FA3A940);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_27FA3E770);
  (*(v3 + 16))(v6, v10, v2);
  sub_25B161574();
  return sub_25B161424();
}

uint64_t static ToggleAccessoryIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39BA8 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A940);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ToggleAccessoryIntent.value.getter()
{
  v1 = *v0;
  sub_25B161144();
  return v3;
}

uint64_t (*ToggleAccessoryIntent.value.modify(uint64_t *a1))()
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
  *(v3 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t (*ToggleAccessoryIntent.home.modify(uint64_t *a1))()
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t sub_25B15E24C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  sub_25B145AA0(*a1);
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161154();
}

uint64_t ToggleAccessoryIntent.accessoriesAndScenes.setter(__int128 *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 4);
  return sub_25B161154();
}

uint64_t (*ToggleAccessoryIntent.accessoriesAndScenes.modify(uint64_t *a1))()
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
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t ToggleAccessoryIntent.useHomeKitRecommendations.getter()
{
  v1 = *(v0 + 24);
  sub_25B161144();
  return v3;
}

uint64_t (*ToggleAccessoryIntent.useHomeKitRecommendations.modify(uint64_t *a1))()
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
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t ToggleAccessoryIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v73 = a1;
  v1 = sub_25B161294();
  v74 = *(v1 - 8);
  v75 = v1;
  v2 = *(v74 + 64);
  MEMORY[0x28223BE20](v1);
  v72 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v54 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v61 = &v49 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v49 - v14;
  v16 = sub_25B161584();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25B1613F4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_25B161B14();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_25B161414();
  v29 = *(v70 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v70);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED0, &unk_25B163860);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v66 = "HOME_ACCESSORY_ENTITY_TITLE";
  v57 = __swift_project_value_buffer(v20, qword_27FA3E770);
  v69 = *(v21 + 16);
  v69(v24, v57, v20);
  sub_25B161574();
  sub_25B161424();
  v31 = *(v29 + 56);
  v56 = v29 + 56;
  v68 = v31;
  v31(v15, 1, 1, v70);
  LOBYTE(v76) = 2;
  v52 = sub_25B161CB4();
  v32 = *(v52 - 8);
  v51 = *(v32 + 56);
  v53 = v32 + 56;
  v51(v61, 1, 1, v52);
  v33 = sub_25B1610C4();
  v62 = v24;
  v60 = v21 + 16;
  v64 = v33;
  v34 = *(v33 - 8);
  v63 = *(v34 + 56);
  v65 = v34 + 56;
  v63(v71, 1, 1, v33);
  v67 = *MEMORY[0x277CBA308];
  v59 = v20;
  v58 = *(v74 + 104);
  v74 += 104;
  v58(v72);
  *v73 = sub_25B1611A4();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  v49 = v28;
  v35 = v57;
  v69(v62, v57, v20);
  v55 = v19;
  sub_25B161574();
  sub_25B161424();
  v36 = v70;
  v68(v15, 1, 1, v70);
  v76 = 0uLL;
  v37 = v71;
  v38 = v64;
  v39 = v63;
  v63(v71, 1, 1, v64);
  v40 = v54;
  v39(v54, 1, 1, v38);
  (v58)(v72, v67, v75);
  sub_25B120304();
  v41 = v37;
  v73[1] = sub_25B161184();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A698, &unk_25B1654E0);
  sub_25B161AC4();
  v69(v62, v35, v59);
  sub_25B161574();
  sub_25B161424();
  v68(v15, 1, 1, v36);
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v43 = v63;
  v42 = v64;
  v63(v41, 1, 1, v64);
  v43(v40, 1, 1, v42);
  v44 = v72;
  v45 = v58;
  (v58)(v72, v67, v75);
  sub_25B11ADCC();
  v46 = sub_25B161184();
  v47 = v73;
  v73[2] = v46;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A160, &qword_25B163B10);
  sub_25B161AC4();
  v69(v62, v57, v59);
  sub_25B161574();
  sub_25B161424();
  v68(v15, 1, 1, v70);
  LOBYTE(v76) = 2;
  v51(v61, 1, 1, v52);
  v63(v71, 1, 1, v64);
  (v45)(v44, v67, v75);
  result = sub_25B1611A4();
  v47[3] = result;
  return result;
}

uint64_t ToggleAccessoryIntent.init(home:accessoriesAndScenes:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v86 = a3;
  v5 = sub_25B161294();
  v108 = *(v5 - 8);
  v109 = v5;
  v6 = *(v108 + 64);
  MEMORY[0x28223BE20](v5);
  v96 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v94 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v95 = v76 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v93 = v76 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v76 - v18;
  v20 = sub_25B161584();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_25B1613F4();
  v110 = *(v107 - 8);
  v24 = *(v110 + 64);
  MEMORY[0x28223BE20](v107);
  v26 = v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_25B161B14();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_25B161414();
  v31 = *(v106 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v106);
  v34 = v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1[1];
  v84 = *a1;
  v83 = v35;
  v36 = a2[1];
  v82 = *a2;
  v87 = v36;
  v37 = a2[3];
  v88 = a2[2];
  v81 = v37;
  v80 = a2[4];
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED0, &unk_25B163860);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v38 = v107;
  v39 = __swift_project_value_buffer(v107, qword_27FA3E770);
  v40 = *(v110 + 16);
  v101 = v39;
  v102 = v40;
  v110 += 16;
  v100 = v26;
  v40(v26, v39, v38);
  sub_25B161574();
  v103 = "HOME_ACCESSORY_ENTITY_TITLE";
  sub_25B161424();
  v41 = *(v31 + 56);
  v104 = v31 + 56;
  v105 = v41;
  v41(v19, 1, 1, v106);
  LOBYTE(v112) = 2;
  v78 = sub_25B161CB4();
  v42 = *(v78 - 8);
  v77 = *(v42 + 56);
  v79 = v42 + 56;
  v77(v93, 1, 1, v78);
  v43 = sub_25B1610C4();
  v44 = *(v43 - 8);
  v98 = *(v44 + 56);
  v99 = v44 + 56;
  v45 = v95;
  v98(v95, 1, 1, v43);
  v92 = *MEMORY[0x277CBA308];
  v91 = *(v108 + 104);
  v108 += 104;
  v46 = v96;
  v91(v96);
  v85 = sub_25B1611A4();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  v47 = v107;
  v89 = v30;
  v102(v100, v101, v107);
  v76[2] = v23;
  sub_25B161574();
  v76[1] = v34;
  sub_25B161424();
  v48 = v19;
  v49 = v106;
  v105(v19, 1, 1, v106);
  v112 = 0uLL;
  v90 = v43;
  v50 = v98;
  v98(v45, 1, 1, v43);
  v51 = v94;
  v50(v94, 1, 1, v43);
  v52 = v91;
  (v91)(v46, v92, v109);
  sub_25B120304();
  v97 = sub_25B161184();
  v76[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A698, &unk_25B1654E0);
  sub_25B161AC4();
  v102(v100, v101, v47);
  sub_25B161574();
  sub_25B161424();
  v105(v48, 1, 1, v49);
  v114 = 0;
  v112 = 0u;
  v113 = 0u;
  v53 = v95;
  v54 = v90;
  v55 = v98;
  v98(v95, 1, 1, v90);
  v55(v51, 1, 1, v54);
  v56 = v96;
  v57 = v92;
  (v52)(v96, v92, v109);
  sub_25B11ADCC();
  v94 = sub_25B161184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A160, &qword_25B163B10);
  sub_25B161AC4();
  v102(v100, v101, v107);
  sub_25B161574();
  sub_25B161424();
  v105(v48, 1, 1, v106);
  LOBYTE(v112) = 2;
  v77(v93, 1, 1, v78);
  v98(v53, 1, 1, v90);
  (v91)(v56, v57, v109);
  v110 = sub_25B1611A4();
  v58 = v84;
  *&v112 = v84;
  *(&v112 + 1) = v83;
  sub_25B11B1C8(v84);
  sub_25B161154();
  v59 = v82;
  *&v112 = v82;
  *(&v112 + 1) = v87;
  *&v113 = v88;
  *(&v113 + 1) = v81;
  v114 = v80;
  sub_25B145AA0(v82);
  sub_25B161154();
  if (qword_27FA39B08 != -1)
  {
    swift_once();
  }

  v60 = sub_25B161A14();
  __swift_project_value_buffer(v60, qword_27FA3A0A0);
  sub_25B11B1C8(v58);
  sub_25B145AA0(v59);
  v61 = sub_25B1619F4();
  v62 = sub_25B161D94();
  sub_25B120358(v58);
  sub_25B11A98C(v59);
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v111 = v64;
    *v63 = 136315394;
    v65 = v59;
    if (v58)
    {
      sub_25B1610F4();
      sub_25B120358(v58);
      v67 = *(&v112 + 1);
      v66 = v112;
    }

    else
    {
      v67 = 0xE300000000000000;
      v66 = 7104878;
    }

    v68 = sub_25B108480(v66, v67, &v111);

    *(v63 + 4) = v68;
    *(v63 + 12) = 2080;
    if (v65)
    {
      sub_25B1610F4();
      sub_25B11A98C(v65);
      v70 = *(&v112 + 1);
      v69 = v112;
    }

    else
    {
      v70 = 0xE300000000000000;
      v69 = 7104878;
    }

    v71 = sub_25B108480(v69, v70, &v111);

    *(v63 + 14) = v71;
    _os_log_impl(&dword_25B105000, v61, v62, "ToggleAccessoryIntent initialized with home %s, accessory %s", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v64, -1, -1);
    MEMORY[0x25F862BF0](v63, -1, -1);
  }

  else
  {

    sub_25B120358(v58);
    sub_25B11A98C(v59);
  }

  LOBYTE(v112) = 0;
  v72 = v110;
  result = sub_25B161154();
  v74 = v86;
  v75 = v97;
  *v86 = v85;
  v74[1] = v75;
  v74[2] = v94;
  v74[3] = v72;
  return result;
}

uint64_t ToggleAccessoryIntent.perform()(uint64_t a1)
{
  *(v2 + 200) = a1;
  v3 = v1[1];
  *(v2 + 208) = *v1;
  *(v2 + 224) = v3;
  return MEMORY[0x2822009F8](sub_25B15FCC8, 0, 0);
}

uint64_t sub_25B15FCC8()
{
  v54 = v0;
  v1 = *(v0 + 216);
  sub_25B161144();
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  *(v0 + 240) = v2;
  *(v0 + 248) = v3;
  if (v2)
  {
    v51 = v2;
    v4 = *(v0 + 224);
    sub_25B161144();
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    *(v0 + 256) = v5;
    *(v0 + 264) = v6;
    v7 = *(v0 + 40);
    *(v0 + 272) = *(v0 + 32);
    *(v0 + 280) = v7;
    *(v0 + 288) = *(v0 + 48);
    v52 = v5;
    if (v5)
    {
      if (qword_27FA39B08 != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 224);
      v9 = *(v0 + 232);
      v10 = *(v0 + 208);
      v11 = *(v0 + 216);
      v12 = sub_25B161A14();
      *(v0 + 296) = __swift_project_value_buffer(v12, qword_27FA3A0A0);
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      sub_25B11B1C8(v51);
      sub_25B145AA0(v52);
      v13 = sub_25B1619F4();
      v14 = sub_25B161D94();
      sub_25B120358(v51);
      sub_25B11A98C(v52);
      v15 = os_log_type_enabled(v13, v14);
      v49 = *(v0 + 224);
      v50 = *(v0 + 232);
      v17 = *(v0 + 208);
      v16 = *(v0 + 216);
      if (v15)
      {
        log = v13;
        v18 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v53 = v48;
        *v18 = 136315906;
        *(v18 + 4) = sub_25B108480(0x286D726F66726570, 0xE900000000000029, &v53);
        *(v18 + 12) = 2080;
        sub_25B1610F4();
        v19 = sub_25B108480(*(v0 + 168), *(v0 + 176), &v53);

        *(v18 + 14) = v19;
        *(v18 + 22) = 2080;
        sub_25B1610F4();
        v20 = sub_25B108480(*(v0 + 184), *(v0 + 192), &v53);

        *(v18 + 24) = v20;
        *(v18 + 32) = 1024;
        sub_25B161144();

        *(v18 + 34) = *(v0 + 336);

        _os_log_impl(&dword_25B105000, log, v14, "%s Home: %s, Accessory: %s, activated: %{BOOL}d", v18, 0x26u);
        swift_arrayDestroy();
        MEMORY[0x25F862BF0](v48, -1, -1);
        MEMORY[0x25F862BF0](v18, -1, -1);
      }

      else
      {
        v35 = *(v0 + 208);
      }

      sub_25B11B1C8(v51);
      sub_25B145AA0(v52);
      v36 = sub_25B1619F4();
      v37 = sub_25B161D94();
      sub_25B11A98C(v52);
      sub_25B120358(v51);
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v53 = v39;
        *v38 = 136315650;
        *(v38 + 4) = sub_25B108480(0x286D726F66726570, 0xE900000000000029, &v53);
        *(v38 + 12) = 2080;
        sub_25B1610F4();
        v40 = sub_25B108480(*(v0 + 136), *(v0 + 144), &v53);

        *(v38 + 14) = v40;
        *(v38 + 22) = 2080;
        sub_25B1610F4();
        v41 = sub_25B108480(*(v0 + 152), *(v0 + 160), &v53);

        *(v38 + 24) = v41;
        _os_log_impl(&dword_25B105000, v36, v37, "%s Running perform on accessory %s in home %s", v38, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25F862BF0](v39, -1, -1);
        MEMORY[0x25F862BF0](v38, -1, -1);
      }

      sub_25B1610F4();
      v42 = *(v0 + 72);
      v43 = *(v0 + 80);
      *(v0 + 304) = v43;
      sub_25B1610F4();
      v44 = *(v0 + 88);
      v45 = *(v0 + 96);
      *(v0 + 312) = v45;
      v46 = swift_task_alloc();
      *(v0 + 320) = v46;
      *v46 = v0;
      v46[1] = sub_25B160538;

      return sub_25B15C488(v42, v43, v44, v45);
    }

    if (qword_27FA39B08 != -1)
    {
      swift_once();
    }

    v27 = sub_25B161A14();
    __swift_project_value_buffer(v27, qword_27FA3A0A0);
    v28 = sub_25B1619F4();
    v29 = sub_25B161D94();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v53 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_25B108480(0x286D726F66726570, 0xE900000000000029, &v53);
      _os_log_impl(&dword_25B105000, v28, v29, "%s accessory is not set, unable to run perform.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x25F862BF0](v31, -1, -1);
      MEMORY[0x25F862BF0](v30, -1, -1);
    }

    v32 = *(v0 + 200);
    sub_25B1610D4();
    sub_25B120358(v51);
  }

  else
  {
    if (qword_27FA39B08 != -1)
    {
      swift_once();
    }

    v21 = sub_25B161A14();
    __swift_project_value_buffer(v21, qword_27FA3A0A0);
    v22 = sub_25B1619F4();
    v23 = sub_25B161D94();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v53 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_25B108480(0x286D726F66726570, 0xE900000000000029, &v53);
      _os_log_impl(&dword_25B105000, v22, v23, "%s home is not set, unable to run perform.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x25F862BF0](v25, -1, -1);
      MEMORY[0x25F862BF0](v24, -1, -1);
    }

    v26 = *(v0 + 200);
    sub_25B1610D4();
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_25B160538()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  v5 = *(v2 + 312);
  v6 = *(v2 + 304);

  if (v0)
  {
    v7 = sub_25B16074C;
  }

  else
  {
    v7 = sub_25B16069C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25B16069C()
{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[30];
  v8 = v0[25];
  sub_25B1610D4();
  sub_25B11A98C(v5);
  sub_25B120358(v7);
  v9 = v0[1];

  return v9();
}

uint64_t sub_25B16074C()
{
  v36 = v0;
  v1 = v0[41];
  v33 = v1;
  v3 = v0[36];
  v2 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[30];
  sub_25B11B1C8(v8);
  sub_25B145AA0(v7);
  v9 = v1;
  v10 = sub_25B1619F4();
  LOBYTE(v1) = sub_25B161D94();
  sub_25B11A98C(v7);
  sub_25B120358(v8);

  v11 = v1;
  if (os_log_type_enabled(v10, v1))
  {
    v12 = v0[41];
    v34 = v10;
    v13 = v0[33];
    v14 = v0[31];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35[0] = v17;
    *v15 = 136315906;
    *(v15 + 4) = sub_25B108480(0x286D726F66726570, 0xE900000000000029, v35);
    *(v15 + 12) = 2080;
    sub_25B1610F4();
    v18 = sub_25B108480(v0[13], v0[14], v35);

    *(v15 + 14) = v18;
    *(v15 + 22) = 2080;
    sub_25B1610F4();
    v19 = sub_25B108480(v0[15], v0[16], v35);

    *(v15 + 24) = v19;
    *(v15 + 32) = 2112;
    v20 = v12;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 34) = v21;
    *v16 = v21;
    v10 = v34;
    _os_log_impl(&dword_25B105000, v34, v11, "%s Failed to toggle accessory %s in home %s: %@", v15, 0x2Au);
    sub_25B13A1D8(v16);
    MEMORY[0x25F862BF0](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v17, -1, -1);
    MEMORY[0x25F862BF0](v15, -1, -1);
  }

  v22 = v0[41];
  v23 = v0[35];
  v24 = v0[36];
  v26 = v0[33];
  v25 = v0[34];
  v28 = v0[31];
  v27 = v0[32];
  v29 = v0[30];
  swift_willThrow();
  sub_25B11A98C(v27);
  sub_25B120358(v29);
  v30 = v0[1];
  v31 = v0[41];

  return v30();
}

uint64_t (*sub_25B160A08(uint64_t *a1))()
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
  *(v3 + 32) = sub_25B161134();
  return sub_25B10BAFC;
}

uint64_t sub_25B160A7C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39BA8 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A940);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25B160B24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B114758;

  return ToggleAccessoryIntent.perform()(a1);
}

uint64_t sub_25B160BC0(uint64_t a1)
{
  v2 = sub_25B160DA0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t ToggleAccessoryIntent.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(MEMORY[0x277D21540]) init];
  sub_25B161144();
  if (v6)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B11A98C(v6);
    sub_25B1610F4();
    sub_25B11A98C(v6);
    v3 = sub_25B161B24();
  }

  else
  {
    sub_25B11A98C(0);
  }

  [v2 finalize];
  v4 = sub_25B161F84();

  return v4;
}

unint64_t sub_25B160DA0()
{
  result = qword_27FA3A958;
  if (!qword_27FA3A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A958);
  }

  return result;
}

unint64_t sub_25B160DF8()
{
  result = qword_27FA3A960;
  if (!qword_27FA3A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A960);
  }

  return result;
}

unint64_t sub_25B160E50()
{
  result = qword_27FA3A968;
  if (!qword_27FA3A968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A968);
  }

  return result;
}

uint64_t sub_25B160F10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_25B161144();
  *a2 = v5;
  return result;
}

double sub_25B160F58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_25B161144();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_25B160FA0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_25B161144();
  *a2 = v5;
  return result;
}