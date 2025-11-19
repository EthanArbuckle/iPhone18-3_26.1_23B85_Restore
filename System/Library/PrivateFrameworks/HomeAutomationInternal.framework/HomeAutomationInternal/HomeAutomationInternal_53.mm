uint64_t sub_252D0FEDC()
{
  result = sub_252D0EEAC();
  if (!result)
  {
    return result;
  }

  v1 = *(result + 24);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v2)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v5 = sub_252E378C4();

  if (!v5)
  {
    return 0;
  }

LABEL_4:
  result = sub_252D0F5B8();
  if (result)
  {
    v3 = *(result + 24);
    if (v3 >> 62)
    {
      v4 = sub_252E378C4();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v4 == 0;
  }

  return result;
}

uint64_t sub_252D0FFA0()
{
  result = sub_252D0EEAC();
  if (result)
  {
    v1 = *(result + 24);
    if (v1 >> 62)
    {
      v3 = sub_252E378C4();

      if (v3)
      {
        return 0;
      }
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v2)
      {
        return 0;
      }
    }

    result = sub_252D0F5B8();
    if (result)
    {
      v4 = *(result + 24);
      if (v4 >> 62)
      {
        v5 = sub_252E378C4();
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return v5 != 0;
    }
  }

  return result;
}

uint64_t sub_252D10064@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  sub_252D103A8();
  v6 = sub_252998BC8();

  v20 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
LABEL_16:
    v7 = sub_252E378C4();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v18 = a1;
      v8 = 0;
      v19 = v5;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x2530ADF00](v8, v6);
          a1 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v12 = v20;
            a1 = v18;
            goto LABEL_18;
          }
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v9 = *(v6 + 8 * v8 + 32);

          a1 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
            goto LABEL_13;
          }
        }

        sub_252956C1C(v9 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v5);
        v10 = sub_252E36324();
        if ((*(*(v10 - 8) + 48))(v5, 1, v10) == 1)
        {

          sub_252938BBC(v5);
        }

        else
        {
          sub_252938BBC(v5);
          sub_252E37A94();
          v11 = *(v20 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          v5 = v19;
        }

        ++v8;
        if (a1 == v7)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_18:

  if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
  {
    if (sub_252E378C4() == 1)
    {
      result = sub_252E378C4();
      if (!result)
      {

        v15 = sub_252E36324();
        return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
      }

      goto LABEL_21;
    }

LABEL_28:
    v16 = sub_252E36324();
    (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }

  if (*(v12 + 16) != 1)
  {
    goto LABEL_28;
  }

LABEL_21:
  if ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2530ADF00](0, v12);
  }

  else
  {
    if (!*(v12 + 16))
    {
      __break(1u);
      return result;
    }

    v14 = *(v12 + 32);
  }

  sub_252BD646C(a1);
}

uint64_t sub_252D103A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v43 - v3;
  v5 = *(v0 + 24);
  v62 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_58;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_59:
    v39 = MEMORY[0x277D84F90];
    goto LABEL_60;
  }

LABEL_3:
  v7 = 0;
  v46 = v5 & 0xFFFFFFFFFFFFFF8;
  v47 = v5 & 0xC000000000000001;
  v45 = v5 + 32;
  v43 = v6;
  v44 = v5;
  v51 = v4;
  do
  {
    if (v47)
    {
      v9 = MEMORY[0x2530ADF00](v7, v5);
      v10 = __OFADD__(v7, 1);
      v11 = v7 + 1;
      if (v10)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v7 >= *(v46 + 16))
      {
        goto LABEL_57;
      }

      v8 = *(v45 + 8 * v7);

      v10 = __OFADD__(v7, 1);
      v11 = v7 + 1;
      if (v10)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        v40 = v5;
        v41 = sub_252E378C4();
        v5 = v40;
        v6 = v41;
        if (!v41)
        {
          goto LABEL_59;
        }

        goto LABEL_3;
      }
    }

    v12 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
    v48 = v11;
    v49 = v9;
    if (v12 >> 62)
    {
      v13 = sub_252E378C4();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = v12;

    if (!v13)
    {
LABEL_45:

      goto LABEL_46;
    }

    v14 = 0;
    v15 = v50 & 0xC000000000000001;
    v57 = v50 + 32;
    v58 = v50 & 0xFFFFFFFFFFFFFF8;
    v52 = v50 & 0xC000000000000001;
    v53 = v13;
    while (1)
    {
      if (v15)
      {
        v16 = MEMORY[0x2530ADF00](v14, v50);
        v10 = __OFADD__(v14++, 1);
        if (v10)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v14 >= *(v58 + 16))
        {
          goto LABEL_55;
        }

        v16 = *(v57 + 8 * v14);

        v10 = __OFADD__(v14++, 1);
        if (v10)
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }
      }

      sub_252956C1C(v16 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v4);
      v17 = sub_252E36324();
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v4, 1, v17) != 1)
      {
        break;
      }

      sub_252938BBC(v4);
LABEL_12:
      if (v14 == v13)
      {
        goto LABEL_45;
      }
    }

    v19 = sub_252E36304();
    v21 = v20;
    (*(v18 + 8))(v4, v17);
    v22._countAndFlagsBits = v19;
    v22._object = v21;
    AttributeSemantic.init(rawValue:)(v22);
    if (v61 == 66)
    {

      goto LABEL_12;
    }

    v56 = v61;
    if (qword_27F53F2A8 != -1)
    {
      swift_once();
    }

    v23 = off_27F541CD8;
    v24 = off_27F541CD8 + 64;
    v25 = 1 << *(off_27F541CD8 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & *(off_27F541CD8 + 8);
    v28 = (v25 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v29 = 0;
    while (1)
    {
      while (1)
      {
        if (!v27)
        {
          while (1)
          {
            v31 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              break;
            }

            if (v31 >= v28)
            {

              v4 = v51;
              v15 = v52;
              v13 = v53;
              goto LABEL_12;
            }

            v30 = *&v24[8 * v31];
            ++v29;
            if (v30)
            {
              v29 = v31;
              goto LABEL_31;
            }
          }

          __break(1u);
          goto LABEL_53;
        }

        v30 = v27;
LABEL_31:
        v27 = (v30 - 1) & v30;
        if (v23[2])
        {
          v32 = *(v23[6] + ((v29 << 9) | (8 * __clz(__rbit64(v30)))));
          v33 = sub_252A488EC(v32);
          if ((v34 & 1) != 0 && *(v23[7] + v33) != 66)
          {
            break;
          }
        }
      }

      v60 = *(v23[7] + v33);
      v59 = v56;
      v35 = AttributeSemantic.rawValue.getter();
      v55 = v36;
      if (v35 == AttributeSemantic.rawValue.getter() && v55 == v37)
      {
        break;
      }

      v54 = sub_252E37DB4();

      if (v54)
      {
        goto LABEL_40;
      }
    }

LABEL_40:

    v4 = v51;
    v15 = v52;
    v13 = v53;
    if (v32 != 28)
    {
      goto LABEL_12;
    }

    sub_252E37A94();
    v38 = *(v62 + 16);
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
LABEL_46:
    v5 = v44;
    v7 = v48;
  }

  while (v48 != v43);
LABEL_53:
  v39 = v62;
LABEL_60:
  type metadata accessor for HomeAutomationAirQualityEntityResponses();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v39;
  return result;
}

uint64_t sub_252D108D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v43 - v3;
  v5 = *(v0 + 24);
  v62 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_58;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_59:
    v39 = MEMORY[0x277D84F90];
    goto LABEL_60;
  }

LABEL_3:
  v7 = 0;
  v46 = v5 & 0xFFFFFFFFFFFFFF8;
  v47 = v5 & 0xC000000000000001;
  v45 = v5 + 32;
  v43 = v6;
  v44 = v5;
  v51 = v4;
  do
  {
    if (v47)
    {
      v9 = MEMORY[0x2530ADF00](v7, v5);
      v10 = __OFADD__(v7, 1);
      v11 = v7 + 1;
      if (v10)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v7 >= *(v46 + 16))
      {
        goto LABEL_57;
      }

      v8 = *(v45 + 8 * v7);

      v10 = __OFADD__(v7, 1);
      v11 = v7 + 1;
      if (v10)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        v40 = v5;
        v41 = sub_252E378C4();
        v5 = v40;
        v6 = v41;
        if (!v41)
        {
          goto LABEL_59;
        }

        goto LABEL_3;
      }
    }

    v12 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
    v48 = v11;
    v49 = v9;
    if (v12 >> 62)
    {
      v13 = sub_252E378C4();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = v12;

    if (!v13)
    {
LABEL_45:

      goto LABEL_46;
    }

    v14 = 0;
    v15 = v50 & 0xC000000000000001;
    v57 = v50 + 32;
    v58 = v50 & 0xFFFFFFFFFFFFFF8;
    v52 = v50 & 0xC000000000000001;
    v53 = v13;
    while (1)
    {
      if (v15)
      {
        v16 = MEMORY[0x2530ADF00](v14, v50);
        v10 = __OFADD__(v14++, 1);
        if (v10)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v14 >= *(v58 + 16))
        {
          goto LABEL_55;
        }

        v16 = *(v57 + 8 * v14);

        v10 = __OFADD__(v14++, 1);
        if (v10)
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }
      }

      sub_252956C1C(v16 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v4);
      v17 = sub_252E36324();
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v4, 1, v17) != 1)
      {
        break;
      }

      sub_252938BBC(v4);
LABEL_12:
      if (v14 == v13)
      {
        goto LABEL_45;
      }
    }

    v19 = sub_252E36304();
    v21 = v20;
    (*(v18 + 8))(v4, v17);
    v22._countAndFlagsBits = v19;
    v22._object = v21;
    AttributeSemantic.init(rawValue:)(v22);
    if (v61 == 66)
    {

      goto LABEL_12;
    }

    v56 = v61;
    if (qword_27F53F2A8 != -1)
    {
      swift_once();
    }

    v23 = off_27F541CD8;
    v24 = off_27F541CD8 + 64;
    v25 = 1 << *(off_27F541CD8 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & *(off_27F541CD8 + 8);
    v28 = (v25 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v29 = 0;
    while (1)
    {
      while (1)
      {
        if (!v27)
        {
          while (1)
          {
            v31 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              break;
            }

            if (v31 >= v28)
            {

              v4 = v51;
              v15 = v52;
              v13 = v53;
              goto LABEL_12;
            }

            v30 = *&v24[8 * v31];
            ++v29;
            if (v30)
            {
              v29 = v31;
              goto LABEL_31;
            }
          }

          __break(1u);
          goto LABEL_53;
        }

        v30 = v27;
LABEL_31:
        v27 = (v30 - 1) & v30;
        if (v23[2])
        {
          v32 = *(v23[6] + ((v29 << 9) | (8 * __clz(__rbit64(v30)))));
          v33 = sub_252A488EC(v32);
          if ((v34 & 1) != 0 && *(v23[7] + v33) != 66)
          {
            break;
          }
        }
      }

      v60 = *(v23[7] + v33);
      v59 = v56;
      v35 = AttributeSemantic.rawValue.getter();
      v55 = v36;
      if (v35 == AttributeSemantic.rawValue.getter() && v55 == v37)
      {
        break;
      }

      v54 = sub_252E37DB4();

      if (v54)
      {
        goto LABEL_40;
      }
    }

LABEL_40:

    v4 = v51;
    v15 = v52;
    v13 = v53;
    if (v32 != 55)
    {
      goto LABEL_12;
    }

    sub_252E37A94();
    v38 = *(v62 + 16);
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
LABEL_46:
    v5 = v44;
    v7 = v48;
  }

  while (v48 != v43);
LABEL_53:
  v39 = v62;
LABEL_60:
  type metadata accessor for HomeAutomationAirQualityEntityResponses();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v39;
  return result;
}

id sub_252D10E24()
{
  v1 = v0;
  v2 = sub_252E32CB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 entityType];
  if (v7)
  {
    v8 = v7;
    v9 = sub_252E36F34();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = sub_252D14650(v9, v11);
  v14 = v13;

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  v16 = [v1 serviceType];
  if (v16)
  {
    v17 = v16;
    v18 = sub_252E36F34();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = sub_252D141D4(v18, v20);
  v23 = v22;

  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = v21;
  }

  v25 = [v1 sceneType];
  if (v25)
  {
    v26 = v25;
    v27 = sub_252E36F34();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v30 = sub_252D14860(v27, v29);
  v32 = v31;

  if (v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = v30;
  }

  result = [v1 identifier];
  if (result)
  {
    v35 = result;
    sub_252E32C94();

    v36 = sub_252E32C64();
    v38 = v37;
    (*(v3 + 8))(v6, v2);
    v76 = sub_252D12D10();
    if ((v24 | 4) == 6)
    {
      v39 = sub_252D13768(v24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401A0, &qword_252E3BFC8);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_252E3C290;
      *(v39 + 32) = v24;
    }

    v40 = v15;
    type metadata accessor for HomeEntity.Builder();
    swift_allocObject();
    v41 = HomeEntity.Builder.init()();
    v43 = v42;
    v44 = [v1 name];
    if (v44)
    {
      v45 = v44;
      v46 = sub_252E36F34();
      v48 = v47;
    }

    else
    {
      v46 = 0;
      v48 = 0;
    }

    v49 = (*(*v43 + 376))(v46, v48);

    v50 = (*(*v49 + 384))(v40);

    v51 = (*(*v50 + 392))(v36, v38);

    v52 = (*(*v51 + 400))(v39);

    v53 = (*(*v52 + 408))(v33);

    v54 = [v1 room];
    if (v54)
    {
      v55 = v54;
      v56 = sub_252E36F34();
      v58 = v57;
    }

    else
    {
      v56 = 0;
      v58 = 0;
    }

    v59 = (*(*v53 + 416))(v56, v58);

    v60 = [v1 home];
    if (v60)
    {
      v61 = v60;
      v62 = sub_252E36F34();
      v64 = v63;
    }

    else
    {
      v62 = 0;
      v64 = 0;
    }

    v65 = (*(*v59 + 424))(v62, v64);

    v66 = [v1 groupType];
    if (v66)
    {
      v67 = v66;
      v68 = sub_252E36F34();
      v70 = v69;
    }

    else
    {
      v68 = 0;
      v70 = 0;
    }

    v71 = (*(*v65 + 432))(v68, v70);

    v72 = (*(*v71 + 440))(v76);

    v74 = (*(*v72 + 448))(v73);

    return v74;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_252D114D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540E50, &qword_252E3F0A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3F1F0;
  *(inited + 32) = 7;
  v1 = *MEMORY[0x277D48170];
  *(inited + 40) = sub_252E36F34();
  *(inited + 48) = v2;
  *(inited + 56) = 4;
  v3 = *MEMORY[0x277D48150];
  *(inited + 64) = sub_252E36F34();
  *(inited + 72) = v4;
  *(inited + 80) = 1;
  v5 = *MEMORY[0x277D48158];
  *(inited + 88) = sub_252E36F34();
  *(inited + 96) = v6;
  *(inited + 104) = 3;
  v7 = *MEMORY[0x277D48160];
  *(inited + 112) = sub_252E36F34();
  *(inited + 120) = v8;
  *(inited + 128) = 5;
  v9 = *MEMORY[0x277D48168];
  *(inited + 136) = sub_252E36F34();
  *(inited + 144) = v10;
  *(inited + 152) = 2;
  v11 = *MEMORY[0x277D48178];
  *(inited + 160) = sub_252E36F34();
  *(inited + 168) = v12;
  v13 = sub_252CC4A0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540E48, &qword_252E3F0A0);
  result = swift_arrayDestroy();
  off_27F545688 = v13;
  return result;
}

uint64_t sub_252D11614()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5456F8, &qword_252E5BB20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E42250;
  *(inited + 32) = 1;
  v1 = *MEMORY[0x277D482F8];
  *(inited + 40) = sub_252E36F34();
  *(inited + 48) = v2;
  *(inited + 56) = 2;
  v3 = *MEMORY[0x277D48358];
  *(inited + 64) = sub_252E36F34();
  *(inited + 72) = v4;
  *(inited + 80) = 3;
  v5 = *MEMORY[0x277D48370];
  *(inited + 88) = sub_252E36F34();
  *(inited + 96) = v6;
  *(inited + 104) = 4;
  v7 = *MEMORY[0x277D482C0];
  *(inited + 112) = sub_252E36F34();
  *(inited + 120) = v8;
  *(inited + 128) = 6;
  v9 = *MEMORY[0x277D48328];
  *(inited + 136) = sub_252E36F34();
  *(inited + 144) = v10;
  *(inited + 152) = 27;
  v11 = *MEMORY[0x277D48310];
  *(inited + 160) = sub_252E36F34();
  *(inited + 168) = v12;
  *(inited + 176) = 19;
  v13 = *MEMORY[0x277D48330];
  *(inited + 184) = sub_252E36F34();
  *(inited + 192) = v14;
  *(inited + 200) = 28;
  v15 = *MEMORY[0x277D48318];
  *(inited + 208) = sub_252E36F34();
  *(inited + 216) = v16;
  *(inited + 224) = 23;
  v17 = *MEMORY[0x277D48338];
  *(inited + 232) = sub_252E36F34();
  *(inited + 240) = v18;
  *(inited + 248) = 29;
  v19 = *MEMORY[0x277D482C8];
  *(inited + 256) = sub_252E36F34();
  *(inited + 264) = v20;
  *(inited + 272) = 30;
  v21 = *MEMORY[0x277D482D0];
  *(inited + 280) = sub_252E36F34();
  *(inited + 288) = v22;
  *(inited + 296) = 31;
  v23 = *MEMORY[0x277D48340];
  *(inited + 304) = sub_252E36F34();
  *(inited + 312) = v24;
  *(inited + 320) = 32;
  v25 = *MEMORY[0x277D482E8];
  *(inited + 328) = sub_252E36F34();
  *(inited + 336) = v26;
  *(inited + 344) = 33;
  v27 = *MEMORY[0x277D48378];
  *(inited + 352) = sub_252E36F34();
  *(inited + 360) = v28;
  *(inited + 368) = 34;
  v29 = *MEMORY[0x277D482B0];
  *(inited + 376) = sub_252E36F34();
  *(inited + 384) = v30;
  *(inited + 392) = 36;
  v31 = *MEMORY[0x277D48360];
  *(inited + 400) = sub_252E36F34();
  *(inited + 408) = v32;
  *(inited + 416) = 7;
  v33 = *MEMORY[0x277D482A8];
  *(inited + 424) = sub_252E36F34();
  *(inited + 432) = v34;
  *(inited + 440) = 24;
  v35 = *MEMORY[0x277D482E0];
  *(inited + 448) = sub_252E36F34();
  *(inited + 456) = v36;
  *(inited + 464) = 5;
  v37 = *MEMORY[0x277D48380];
  *(inited + 472) = sub_252E36F34();
  *(inited + 480) = v38;
  *(inited + 488) = 21;
  v39 = *MEMORY[0x277D48368];
  *(inited + 496) = sub_252E36F34();
  *(inited + 504) = v40;
  *(inited + 512) = 14;
  v41 = *MEMORY[0x277D482D8];
  *(inited + 520) = sub_252E36F34();
  *(inited + 528) = v42;
  *(inited + 536) = 8;
  v43 = *MEMORY[0x277D48268];
  *(inited + 544) = sub_252E36F34();
  *(inited + 552) = v44;
  *(inited + 560) = 20;
  v45 = *MEMORY[0x277D48348];
  *(inited + 568) = sub_252E36F34();
  *(inited + 576) = v46;
  *(inited + 584) = 11;
  v47 = *MEMORY[0x277D48288];
  *(inited + 592) = sub_252E36F34();
  *(inited + 600) = v48;
  *(inited + 608) = 10;
  v49 = *MEMORY[0x277D48280];
  *(inited + 616) = sub_252E36F34();
  *(inited + 624) = v50;
  *(inited + 632) = 12;
  v51 = *MEMORY[0x277D48290];
  *(inited + 640) = sub_252E36F34();
  *(inited + 648) = v52;
  *(inited + 656) = 18;
  v53 = *MEMORY[0x277D48320];
  *(inited + 664) = sub_252E36F34();
  *(inited + 672) = v54;
  *(inited + 680) = 17;
  v55 = *MEMORY[0x277D48308];
  *(inited + 688) = sub_252E36F34();
  *(inited + 696) = v56;
  *(inited + 704) = 16;
  v57 = *MEMORY[0x277D48300];
  *(inited + 712) = sub_252E36F34();
  *(inited + 720) = v58;
  *(inited + 728) = 15;
  v59 = *MEMORY[0x277D482F0];
  *(inited + 736) = sub_252E36F34();
  *(inited + 744) = v60;
  *(inited + 752) = 9;
  v61 = *MEMORY[0x277D48278];
  *(inited + 760) = sub_252E36F34();
  *(inited + 768) = v62;
  *(inited + 776) = 38;
  v63 = *MEMORY[0x277D482A0];
  *(inited + 784) = sub_252E36F34();
  *(inited + 792) = v64;
  *(inited + 800) = 39;
  v65 = *MEMORY[0x277D48260];
  *(inited + 808) = sub_252E36F34();
  *(inited + 816) = v66;
  *(inited + 824) = 40;
  v67 = *MEMORY[0x277D482B8];
  *(inited + 832) = sub_252E36F34();
  *(inited + 840) = v68;
  *(inited + 848) = 41;
  v69 = *MEMORY[0x277D48270];
  *(inited + 856) = sub_252E36F34();
  *(inited + 864) = v70;
  *(inited + 872) = 26;
  v71 = *MEMORY[0x277D48350];
  *(inited + 880) = sub_252E36F34();
  *(inited + 888) = v72;
  *(inited + 896) = 37;
  v73 = *MEMORY[0x277D48298];
  *(inited + 904) = sub_252E36F34();
  *(inited + 912) = v74;
  v75 = sub_252CC49E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545700, &qword_252E5BB28);
  result = swift_arrayDestroy();
  off_27F545690 = v75;
  return result;
}

uint64_t sub_252D11B00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545738, &qword_252E5BB60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3F1F0;
  *(inited + 32) = 5;
  v1 = *MEMORY[0x277D47E70];
  *(inited + 40) = sub_252E36F34();
  *(inited + 48) = v2;
  *(inited + 56) = 2;
  v3 = *MEMORY[0x277D47E78];
  *(inited + 64) = sub_252E36F34();
  *(inited + 72) = v4;
  *(inited + 80) = 3;
  v5 = *MEMORY[0x277D47E98];
  *(inited + 88) = sub_252E36F34();
  *(inited + 96) = v6;
  *(inited + 104) = 4;
  v7 = *MEMORY[0x277D47EA0];
  *(inited + 112) = sub_252E36F34();
  *(inited + 120) = v8;
  *(inited + 128) = 1;
  v9 = *MEMORY[0x277D47EA8];
  *(inited + 136) = sub_252E36F34();
  *(inited + 144) = v10;
  *(inited + 152) = 6;
  v11 = *MEMORY[0x277D47EC0];
  *(inited + 160) = sub_252E36F34();
  *(inited + 168) = v12;
  v13 = sub_252CC4A9C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545740, &qword_252E5BB68);
  result = swift_arrayDestroy();
  off_27F545698 = v13;
  return result;
}

uint64_t sub_252D11C44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545748, &qword_252E5BB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3F1F0;
  *(inited + 32) = 3;
  v1 = *MEMORY[0x277D47E70];
  *(inited + 40) = sub_252E36F34();
  *(inited + 48) = v2;
  *(inited + 56) = 4;
  v3 = *MEMORY[0x277D47E78];
  *(inited + 64) = sub_252E36F34();
  *(inited + 72) = v4;
  *(inited + 80) = 5;
  v5 = *MEMORY[0x277D47E98];
  *(inited + 88) = sub_252E36F34();
  *(inited + 96) = v6;
  *(inited + 104) = 2;
  v7 = *MEMORY[0x277D47EA0];
  *(inited + 112) = sub_252E36F34();
  *(inited + 120) = v8;
  *(inited + 128) = 1;
  v9 = *MEMORY[0x277D47EA8];
  *(inited + 136) = sub_252E36F34();
  *(inited + 144) = v10;
  *(inited + 152) = 6;
  v11 = *MEMORY[0x277D47EC0];
  *(inited + 160) = sub_252E36F34();
  *(inited + 168) = v12;
  v13 = sub_252CC49BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D18, &unk_252E42298);
  result = swift_arrayDestroy();
  off_27F5456A0 = v13;
  return result;
}

uint64_t sub_252D11D88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545718, &qword_252E5BB40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_252E5BAE0;
  *(v0 + 32) = 27;
  v1 = *MEMORY[0x277D48048];
  *(v0 + 40) = sub_252E36F34();
  *(v0 + 48) = v2;
  *(v0 + 56) = 25;
  v3 = *MEMORY[0x277D48050];
  *(v0 + 64) = sub_252E36F34();
  *(v0 + 72) = v4;
  *(v0 + 80) = 26;
  v5 = *MEMORY[0x277D47F78];
  *(v0 + 88) = sub_252E36F34();
  *(v0 + 96) = v6;
  *(v0 + 104) = 51;
  v7 = *MEMORY[0x277D48060];
  *(v0 + 112) = sub_252E36F34();
  *(v0 + 120) = v8;
  *(v0 + 128) = 2;
  v9 = *MEMORY[0x277D47F00];
  *(v0 + 136) = sub_252E36F34();
  *(v0 + 144) = v10;
  *(v0 + 152) = 3;
  v11 = *MEMORY[0x277D47FC0];
  *(v0 + 160) = sub_252E36F34();
  *(v0 + 168) = v12;
  *(v0 + 176) = 4;
  v13 = *MEMORY[0x277D48078];
  *(v0 + 184) = sub_252E36F34();
  *(v0 + 192) = v14;
  *(v0 + 200) = 59;
  v15 = *MEMORY[0x277D47F40];
  *(v0 + 208) = sub_252E36F34();
  *(v0 + 216) = v16;
  *(v0 + 224) = 5;
  v17 = *MEMORY[0x277D47F48];
  *(v0 + 232) = sub_252E36F34();
  *(v0 + 240) = v18;
  *(v0 + 248) = 6;
  v19 = *MEMORY[0x277D480B0];
  *(v0 + 256) = sub_252E36F34();
  *(v0 + 264) = v20;
  *(v0 + 272) = 14;
  v21 = *MEMORY[0x277D47FB0];
  *(v0 + 280) = sub_252E36F34();
  *(v0 + 288) = v22;
  *(v0 + 296) = 15;
  v23 = *MEMORY[0x277D47FA0];
  *(v0 + 304) = sub_252E36F34();
  *(v0 + 312) = v24;
  *(v0 + 320) = 19;
  v25 = *MEMORY[0x277D47FB8];
  *(v0 + 328) = sub_252E36F34();
  *(v0 + 336) = v26;
  *(v0 + 344) = 17;
  v27 = *MEMORY[0x277D47F68];
  *(v0 + 352) = sub_252E36F34();
  *(v0 + 360) = v28;
  *(v0 + 368) = 8;
  v29 = *MEMORY[0x277D47FF0];
  *(v0 + 376) = sub_252E36F34();
  *(v0 + 384) = v30;
  *(v0 + 392) = 16;
  v31 = *MEMORY[0x277D47F58];
  *(v0 + 400) = sub_252E36F34();
  *(v0 + 408) = v32;
  *(v0 + 416) = 13;
  v33 = *MEMORY[0x277D48080];
  *(v0 + 424) = sub_252E36F34();
  *(v0 + 432) = v34;
  *(v0 + 440) = 9;
  v35 = *MEMORY[0x277D48040];
  *(v0 + 448) = sub_252E36F34();
  *(v0 + 456) = v36;
  *(v0 + 464) = 10;
  v37 = *MEMORY[0x277D48058];
  *(v0 + 472) = sub_252E36F34();
  *(v0 + 480) = v38;
  *(v0 + 488) = 18;
  v39 = *MEMORY[0x277D47F88];
  *(v0 + 496) = sub_252E36F34();
  *(v0 + 504) = v40;
  *(v0 + 512) = 11;
  v41 = *MEMORY[0x277D48070];
  *(v0 + 520) = sub_252E36F34();
  *(v0 + 528) = v42;
  *(v0 + 536) = 12;
  v43 = *MEMORY[0x277D48068];
  *(v0 + 544) = sub_252E36F34();
  *(v0 + 552) = v44;
  *(v0 + 560) = 21;
  v45 = *MEMORY[0x277D48088];
  *(v0 + 568) = sub_252E36F34();
  *(v0 + 576) = v46;
  *(v0 + 584) = 22;
  v47 = *MEMORY[0x277D480A8];
  *(v0 + 592) = sub_252E36F34();
  *(v0 + 600) = v48;
  *(v0 + 608) = 7;
  v49 = *MEMORY[0x277D47FD8];
  *(v0 + 616) = sub_252E36F34();
  *(v0 + 624) = v50;
  *(v0 + 632) = 20;
  v51 = *MEMORY[0x277D47FC8];
  *(v0 + 640) = sub_252E36F34();
  *(v0 + 648) = v52;
  *(v0 + 656) = 23;
  v53 = *MEMORY[0x277D47FD0];
  *(v0 + 664) = sub_252E36F34();
  *(v0 + 672) = v54;
  *(v0 + 680) = 24;
  v55 = *MEMORY[0x277D47F70];
  *(v0 + 688) = sub_252E36F34();
  *(v0 + 696) = v56;
  *(v0 + 704) = 28;
  v57 = *MEMORY[0x277D47EE8];
  *(v0 + 712) = sub_252E36F34();
  *(v0 + 720) = v58;
  *(v0 + 728) = 47;
  v59 = *MEMORY[0x277D47EE0];
  *(v0 + 736) = sub_252E36F34();
  *(v0 + 744) = v60;
  *(v0 + 752) = 29;
  v61 = *MEMORY[0x277D47ED0];
  *(v0 + 760) = sub_252E36F34();
  *(v0 + 768) = v62;
  *(v0 + 776) = 30;
  v63 = *MEMORY[0x277D47ED8];
  *(v0 + 784) = sub_252E36F34();
  *(v0 + 792) = v64;
  *(v0 + 800) = 53;
  v65 = *MEMORY[0x277D480A0];
  *(v0 + 808) = sub_252E36F34();
  *(v0 + 816) = v66;
  *(v0 + 824) = 54;
  v67 = *MEMORY[0x277D48010];
  *(v0 + 832) = sub_252E36F34();
  *(v0 + 840) = v68;
  *(v0 + 848) = 58;
  v69 = *MEMORY[0x277D48028];
  *(v0 + 856) = sub_252E36F34();
  *(v0 + 864) = v70;
  *(v0 + 872) = 56;
  v71 = *MEMORY[0x277D48030];
  *(v0 + 880) = sub_252E36F34();
  *(v0 + 888) = v72;
  *(v0 + 896) = 55;
  v73 = *MEMORY[0x277D48038];
  *(v0 + 904) = sub_252E36F34();
  *(v0 + 912) = v74;
  *(v0 + 920) = 57;
  v75 = *MEMORY[0x277D480B8];
  *(v0 + 928) = sub_252E36F34();
  *(v0 + 936) = v76;
  *(v0 + 944) = 31;
  v77 = *MEMORY[0x277D48090];
  *(v0 + 952) = sub_252E36F34();
  *(v0 + 960) = v78;
  *(v0 + 968) = 32;
  v79 = *MEMORY[0x277D47F20];
  *(v0 + 976) = sub_252E36F34();
  *(v0 + 984) = v80;
  *(v0 + 992) = 33;
  v81 = *MEMORY[0x277D47F28];
  *(v0 + 1000) = sub_252E36F34();
  *(v0 + 1008) = v82;
  *(v0 + 1016) = 34;
  v83 = *MEMORY[0x277D47F30];
  *(v0 + 1024) = sub_252E36F34();
  *(v0 + 1032) = v84;
  *(v0 + 1040) = 35;
  v85 = *MEMORY[0x277D47F08];
  *(v0 + 1048) = sub_252E36F34();
  *(v0 + 1056) = v86;
  *(v0 + 1064) = 36;
  v87 = *MEMORY[0x277D47F10];
  *(v0 + 1072) = sub_252E36F34();
  *(v0 + 1080) = v88;
  *(v0 + 1088) = 37;
  v89 = *MEMORY[0x277D47F18];
  *(v0 + 1096) = sub_252E36F34();
  *(v0 + 1104) = v90;
  *(v0 + 1112) = 38;
  v91 = *MEMORY[0x277D47F50];
  *(v0 + 1120) = sub_252E36F34();
  *(v0 + 1128) = v92;
  *(v0 + 1136) = 39;
  v93 = *MEMORY[0x277D48018];
  *(v0 + 1144) = sub_252E36F34();
  *(v0 + 1152) = v94;
  *(v0 + 1160) = 40;
  v95 = *MEMORY[0x277D47FE8];
  *(v0 + 1168) = sub_252E36F34();
  *(v0 + 1176) = v96;
  *(v0 + 1184) = 41;
  v97 = *MEMORY[0x277D48008];
  *(v0 + 1192) = sub_252E36F34();
  *(v0 + 1200) = v98;
  *(v0 + 1208) = 42;
  v99 = *MEMORY[0x277D47EF0];
  *(v0 + 1216) = sub_252E36F34();
  *(v0 + 1224) = v100;
  *(v0 + 1232) = 43;
  v101 = *MEMORY[0x277D47EF8];
  *(v0 + 1240) = sub_252E36F34();
  *(v0 + 1248) = v102;
  *(v0 + 1256) = 44;
  v103 = *MEMORY[0x277D47F38];
  *(v0 + 1264) = sub_252E36F34();
  *(v0 + 1272) = v104;
  *(v0 + 1280) = 45;
  v105 = *MEMORY[0x277D47FF8];
  *(v0 + 1288) = sub_252E36F34();
  *(v0 + 1296) = v106;
  *(v0 + 1304) = 48;
  v107 = *MEMORY[0x277D47F90];
  *(v0 + 1312) = sub_252E36F34();
  *(v0 + 1320) = v108;
  *(v0 + 1328) = 49;
  v109 = *MEMORY[0x277D47F98];
  *(v0 + 1336) = sub_252E36F34();
  *(v0 + 1344) = v110;
  *(v0 + 1352) = 50;
  v111 = *MEMORY[0x277D480C0];
  *(v0 + 1360) = sub_252E36F34();
  *(v0 + 1368) = v112;
  *(v0 + 1376) = 52;
  v113 = *MEMORY[0x277D48098];
  *(v0 + 1384) = sub_252E36F34();
  *(v0 + 1392) = v114;
  *(v0 + 1400) = 46;
  v115 = *MEMORY[0x277D47FE0];
  *(v0 + 1408) = sub_252E36F34();
  *(v0 + 1416) = v116;
  *(v0 + 1424) = 1;
  v117 = *MEMORY[0x277D47F80];
  *(v0 + 1432) = sub_252E36F34();
  *(v0 + 1440) = v118;
  *(v0 + 1448) = 65;
  v119 = *MEMORY[0x277D48000];
  *(v0 + 1456) = sub_252E36F34();
  *(v0 + 1464) = v120;
  *(v0 + 1472) = 66;
  v121 = *MEMORY[0x277D47EC8];
  *(v0 + 1480) = sub_252E36F34();
  *(v0 + 1488) = v122;
  v123 = sub_252CC4A34(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545720, &qword_252E5BB48);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_27F5456A8 = v123;
  return result;
}

uint64_t sub_252D12580()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545710, &qword_252E5BB38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3EF90;
  *(inited + 32) = 1;
  v1 = *MEMORY[0x277D483A0];
  *(inited + 40) = sub_252E36F34();
  *(inited + 48) = v2;
  *(inited + 56) = 2;
  v3 = *MEMORY[0x277D48390];
  *(inited + 64) = sub_252E36F34();
  *(inited + 72) = v4;
  *(inited + 80) = 3;
  v5 = *MEMORY[0x277D48388];
  *(inited + 88) = sub_252E36F34();
  *(inited + 96) = v6;
  *(inited + 104) = 4;
  v7 = *MEMORY[0x277D48398];
  *(inited + 112) = sub_252E36F34();
  *(inited + 120) = v8;
  *(inited + 128) = 5;
  v9 = *MEMORY[0x277D483A8];
  *(inited + 136) = sub_252E36F34();
  *(inited + 144) = v10;
  v11 = sub_252CC3C4C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D20, &qword_252E422A8);
  result = swift_arrayDestroy();
  off_27F5456B0 = v11;
  return result;
}

uint64_t sub_252D126A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5456E8, &qword_252E5BB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3EF90;
  *(inited + 32) = 2;
  v1 = *MEMORY[0x277D48198];
  *(inited + 40) = sub_252E36F34();
  *(inited + 48) = v2;
  *(inited + 56) = 5;
  v3 = *MEMORY[0x277D481A0];
  *(inited + 64) = sub_252E36F34();
  *(inited + 72) = v4;
  *(inited + 80) = 4;
  v5 = *MEMORY[0x277D481A8];
  *(inited + 88) = sub_252E36F34();
  *(inited + 96) = v6;
  *(inited + 104) = 3;
  v7 = *MEMORY[0x277D481B0];
  *(inited + 112) = sub_252E36F34();
  *(inited + 120) = v8;
  *(inited + 128) = 1;
  v9 = *MEMORY[0x277D481B8];
  *(inited + 136) = sub_252E36F34();
  *(inited + 144) = v10;
  v11 = sub_252CC4F20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5456F0, &qword_252E5BB18);
  result = swift_arrayDestroy();
  off_27F5456B8 = v11;
  return result;
}

uint64_t sub_252D127D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545728, &qword_252E5BB50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C280;
  *(inited + 32) = 0;
  v1 = *MEMORY[0x277D480C8];
  *(inited + 40) = sub_252E36F34();
  *(inited + 48) = v2;
  *(inited + 56) = 9;
  v3 = *MEMORY[0x277D480E0];
  *(inited + 64) = sub_252E36F34();
  *(inited + 72) = v4;
  *(inited + 80) = 4;
  v5 = *MEMORY[0x277D480F0];
  *(inited + 88) = sub_252E36F34();
  *(inited + 96) = v6;
  v7 = sub_252CC4AD8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545730, &qword_252E5BB58);
  result = swift_arrayDestroy();
  off_27F5456C0 = v7;
  return result;
}

uint64_t sub_252D128BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545708, &qword_252E5BB30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E5BAF0;
  *(inited + 32) = 23;
  v1 = *MEMORY[0x277D47DD8];
  *(inited + 40) = sub_252E36F34();
  *(inited + 48) = v2;
  *(inited + 56) = 4;
  v3 = *MEMORY[0x277D47DB0];
  *(inited + 64) = sub_252E36F34();
  *(inited + 72) = v4;
  *(inited + 80) = 5;
  v5 = *MEMORY[0x277D47DB8];
  *(inited + 88) = sub_252E36F34();
  *(inited + 96) = v6;
  *(inited + 104) = 14;
  v7 = *MEMORY[0x277D47DC0];
  *(inited + 112) = sub_252E36F34();
  *(inited + 120) = v8;
  *(inited + 128) = 20;
  v9 = *MEMORY[0x277D47DC8];
  *(inited + 136) = sub_252E36F34();
  *(inited + 144) = v10;
  *(inited + 152) = 16;
  v11 = *MEMORY[0x277D47DD0];
  *(inited + 160) = sub_252E36F34();
  *(inited + 168) = v12;
  *(inited + 176) = 7;
  v13 = *MEMORY[0x277D47DE0];
  *(inited + 184) = sub_252E36F34();
  *(inited + 192) = v14;
  *(inited + 200) = 17;
  v15 = *MEMORY[0x277D47DF0];
  *(inited + 208) = sub_252E36F34();
  *(inited + 216) = v16;
  *(inited + 224) = 10;
  v17 = *MEMORY[0x277D47DF8];
  *(inited + 232) = sub_252E36F34();
  *(inited + 240) = v18;
  *(inited + 248) = 13;
  v19 = *MEMORY[0x277D47E00];
  *(inited + 256) = sub_252E36F34();
  *(inited + 264) = v20;
  *(inited + 272) = 12;
  v21 = *MEMORY[0x277D47E08];
  *(inited + 280) = sub_252E36F34();
  *(inited + 288) = v22;
  *(inited + 296) = 3;
  v23 = *MEMORY[0x277D47E10];
  *(inited + 304) = sub_252E36F34();
  *(inited + 312) = v24;
  *(inited + 320) = 18;
  v25 = *MEMORY[0x277D47E20];
  *(inited + 328) = sub_252E36F34();
  *(inited + 336) = v26;
  *(inited + 344) = 22;
  v27 = *MEMORY[0x277D47E28];
  *(inited + 352) = sub_252E36F34();
  *(inited + 360) = v28;
  *(inited + 368) = 19;
  v29 = *MEMORY[0x277D47E30];
  *(inited + 376) = sub_252E36F34();
  *(inited + 384) = v30;
  *(inited + 392) = 8;
  v31 = *MEMORY[0x277D47E38];
  *(inited + 400) = sub_252E36F34();
  *(inited + 408) = v32;
  *(inited + 416) = 9;
  v33 = *MEMORY[0x277D47E40];
  *(inited + 424) = sub_252E36F34();
  *(inited + 432) = v34;
  *(inited + 440) = 11;
  v35 = *MEMORY[0x277D47E48];
  *(inited + 448) = sub_252E36F34();
  *(inited + 456) = v36;
  *(inited + 464) = 1;
  v37 = *MEMORY[0x277D47E50];
  *(inited + 472) = sub_252E36F34();
  *(inited + 480) = v38;
  *(inited + 488) = 21;
  v39 = *MEMORY[0x277D47E18];
  *(inited + 496) = sub_252E36F34();
  *(inited + 504) = v40;
  *(inited + 512) = 6;
  v41 = *MEMORY[0x277D47E58];
  *(inited + 520) = sub_252E36F34();
  *(inited + 528) = v42;
  *(inited + 536) = 2;
  v43 = *MEMORY[0x277D47E60];
  *(inited + 544) = sub_252E36F34();
  *(inited + 552) = v44;
  *(inited + 560) = 15;
  v45 = *MEMORY[0x277D47E68];
  *(inited + 568) = sub_252E36F34();
  *(inited + 576) = v46;
  v47 = sub_252CC496C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543E48, &unk_252E521C0);
  result = swift_arrayDestroy();
  off_27F5456C8 = v47;
  return result;
}

uint64_t sub_252D12BE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5456D8, &qword_252E5BB00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3EF90;
  v1 = *MEMORY[0x277D480C8];
  *(inited + 32) = sub_252E36F34();
  *(inited + 40) = v2;
  *(inited + 48) = 5;
  v3 = *MEMORY[0x277D480D0];
  *(inited + 56) = sub_252E36F34();
  *(inited + 64) = v4;
  *(inited + 72) = 4;
  v5 = *MEMORY[0x277D480E8];
  *(inited + 80) = sub_252E36F34();
  *(inited + 88) = v6;
  *(inited + 96) = 108;
  v7 = *MEMORY[0x277D480E0];
  *(inited + 104) = sub_252E36F34();
  *(inited + 112) = v8;
  *(inited + 120) = 112;
  v9 = *MEMORY[0x277D480F0];
  *(inited + 128) = sub_252E36F34();
  *(inited + 136) = v10;
  *(inited + 144) = 110;
  v11 = sub_252CC5068(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5456E0, &qword_252E5BB08);
  result = swift_arrayDestroy();
  off_27F5456D0 = v11;
  return result;
}

void *sub_252D12D10()
{
  v2 = sub_252E32CB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252B680FC();
  swift_beginAccess();
  v8 = *(v7 + 24);
  if (v8 >> 62)
  {
    goto LABEL_49;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_50:

LABEL_51:
    if (qword_27F53F4B0 != -1)
    {
LABEL_64:
      swift_once();
    }

    v30 = 0xD000000000000028;
    v31 = sub_252E36AD4();
    __swift_project_value_buffer(v31, qword_27F544CB8);
    v79[0] = 0;
    v79[1] = 0xE000000000000000;
    sub_252E379F4();

    v80 = 0xD000000000000028;
    v81 = 0x8000000252E93DB0;
    v32 = sub_252B680FC();
    swift_beginAccess();
    v33 = *(v32 + 24);
    if (v33 >> 62)
    {
      if (v33 < 0)
      {
        v37 = *(v32 + 24);
      }

      v34 = sub_252E378C4();
      if (v34)
      {
LABEL_54:
        v35 = v34 - 1;
        if (__OFSUB__(v34, 1))
        {
LABEL_115:
          __break(1u);
        }

        else if ((v33 & 0xC000000000000001) == 0)
        {
          if ((v35 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v35 < *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v36 = *(v33 + 8 * v35 + 32);
LABEL_59:

LABEL_69:
            v79[6] = v36;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437A0, &unk_252E4E420);
            v38 = sub_252E36F94();
            MEMORY[0x2530AD570](v38);

            sub_252CC4050(v80, v81, v30 + 80, 0x8000000252E7A400, 0x292873656E6F7ALL, 0xE700000000000000, 500);
LABEL_70:

            return MEMORY[0x277D84F90];
          }

          __break(1u);
LABEL_119:
          v35 = sub_252E378C4();
          if (v35)
          {
            goto LABEL_79;
          }

LABEL_120:

          goto LABEL_70;
        }

        v36 = MEMORY[0x2530ADF00](v35, v33);

        goto LABEL_59;
      }
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        goto LABEL_54;
      }
    }

    v36 = 0;
    goto LABEL_69;
  }

  while (1)
  {
    v1 = v9 - 1;
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
LABEL_61:

      v1 = MEMORY[0x2530ADF00](v1, v8);

      goto LABEL_8;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      goto LABEL_61;
    }

    if ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v1 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_63;
    }

    v1 = *(v8 + 8 * v1 + 32);

LABEL_8:
    v10 = [v1 filters];

    if (!v10)
    {
      goto LABEL_51;
    }

    type metadata accessor for HomeFilter();
    v11 = sub_252E37264();

    v79[0] = MEMORY[0x277D84F90];
    if (v11 >> 62)
    {
      v12 = sub_252E378C4();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v76 = v2;
    v77 = v0;
    v74 = v6;
    v75 = v3;
    if (v12)
    {
      v8 = 0;
      v6 = v11 & 0xC000000000000001;
      v3 = v11 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v6)
        {
          v13 = MEMORY[0x2530ADF00](v8, v11);
        }

        else
        {
          if (v8 >= *(v3 + 16))
          {
            goto LABEL_46;
          }

          v13 = *(v11 + 8 * v8 + 32);
        }

        v14 = v13;
        v1 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v2 = v11;
        v15 = [v13 isExcludeFilter];
        v0 = sub_252956D08();
        v16 = sub_252E37664();
        v17 = v16;
        if (v15)
        {
          v0 = sub_252E37694();

          if (v0)
          {
            v0 = v79;
            sub_252E37A94();
            v18 = v6;
            v19 = *(v79[0] + 16);
            sub_252E37AC4();
            v6 = v18;
            sub_252E37AD4();
            sub_252E37AA4();
            goto LABEL_15;
          }
        }

        else
        {
        }

LABEL_15:
        v11 = v2;
        ++v8;
        if (v1 == v12)
        {
          v0 = v79[0];
          if ((v79[0] & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_73;
        }
      }
    }

    v0 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_73;
    }

LABEL_27:
    if ((v0 & 0x4000000000000000) == 0)
    {
      v8 = *(v0 + 16);
      if (!v8)
      {
        break;
      }

      goto LABEL_29;
    }

LABEL_73:
    v8 = sub_252E378C4();
    if (!v8)
    {
      break;
    }

LABEL_29:
    v3 = 0;
    v2 = v0 & 0xC000000000000001;
    v1 = MEMORY[0x277D84F90];
LABEL_30:
    v20 = v3;
    while (1)
    {
      if (v2)
      {
        v21 = MEMORY[0x2530ADF00](v20, v0);
      }

      else
      {
        if (v20 >= *(v0 + 16))
        {
          goto LABEL_48;
        }

        v21 = *(v0 + 8 * v20 + 32);
      }

      v22 = v21;
      v3 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v23 = [v21 zoneName];
      if (v23)
      {
        v24 = v23;
        v78 = v11;
        v25 = sub_252E36F34();
        v27 = v26;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_2529F7A80(0, *(v1 + 16) + 1, 1, v1);
        }

        v6 = *(v1 + 16);
        v28 = *(v1 + 24);
        if (v6 >= v28 >> 1)
        {
          v1 = sub_2529F7A80((v28 > 1), v6 + 1, 1, v1);
        }

        *(v1 + 16) = v6 + 1;
        v29 = v1 + 16 * v6;
        *(v29 + 32) = v25;
        *(v29 + 40) = v27;
        v11 = v78;
        if (v3 != v8)
        {
          goto LABEL_30;
        }

        goto LABEL_75;
      }

      ++v20;
      if (v3 == v8)
      {
        goto LABEL_75;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v9 = sub_252E378C4();
    if (!v9)
    {
      goto LABEL_50;
    }
  }

  v1 = MEMORY[0x277D84F90];
LABEL_75:

  if (!*(v1 + 16))
  {
LABEL_94:

    goto LABEL_70;
  }

  v78 = v1;
  result = [v77 identifier];
  if (!result)
  {
    goto LABEL_128;
  }

  v40 = result;

  v41 = v74;
  sub_252E32C94();

  v1 = sub_252E32C64();
  v30 = v42;
  (*(v75 + 8))(v41, v76);
  type metadata accessor for HomeStore();
  v43 = static HomeStore.shared.getter();
  v44 = sub_2529D9D50();
  v33 = 0;
  v32 = sub_2529D70E4(v44);

  if (v32 >> 62)
  {
    goto LABEL_119;
  }

  v35 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v35)
  {
    goto LABEL_120;
  }

LABEL_79:
  v45 = 0;
  while (1)
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x2530ADF00](v45, v32);
      v46 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }
    }

    else
    {
      if (v45 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      v33 = *(v32 + 8 * v45 + 32);

      v46 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_93;
      }
    }

    v47 = *(v33 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
    if (v47)
    {
      v48 = *(v33 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == v1 && v47 == v30;
      if (v48 || (sub_252E37DB4() & 1) != 0)
      {
        break;
      }
    }

    ++v45;
    if (v46 == v35)
    {
      goto LABEL_120;
    }
  }

  v49 = [*(v33 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
  if (!v49)
  {

    return MEMORY[0x277D84F90];
  }

  v50 = v49;
  v51 = type metadata accessor for Accessory();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  sub_252D4CE7C(v50);

  v54 = sub_252D523AC();

  v55 = v54;
  v56 = v78;
  if (v54 >> 62)
  {
    v57 = sub_252E378C4();
    v55 = v54;
    if (v57)
    {
      goto LABEL_98;
    }
  }

  else
  {
    v57 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57)
    {
LABEL_98:
      v30 = 0;
      v77 = (v55 & 0xC000000000000001);
      v58 = v55 & 0xFFFFFFFFFFFFFF8;
      v35 = MEMORY[0x277D84F90];
      v33 = v55;
      v59 = v57;
      while (1)
      {
        if (v77)
        {
          v60 = MEMORY[0x2530ADF00](v30, v55);
          v61 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_113;
          }
        }

        else
        {
          if (v30 >= *(v58 + 16))
          {
            goto LABEL_114;
          }

          v60 = *(v55 + 8 * v30 + 32);

          v61 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_113;
          }
        }

        v63 = *(v60 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v62 = *(v60 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_2529F7A80(0, *(v35 + 16) + 1, 1, v35);
        }

        v65 = *(v35 + 16);
        v64 = *(v35 + 24);
        if (v65 >= v64 >> 1)
        {
          v35 = sub_2529F7A80((v64 > 1), v65 + 1, 1, v35);
        }

        *(v35 + 16) = v65 + 1;
        v66 = v35 + 16 * v65;
        *(v66 + 32) = v63;
        *(v66 + 40) = v62;
        ++v30;
        v56 = v78;
        v55 = v33;
        if (v61 == v59)
        {
          goto LABEL_123;
        }
      }
    }
  }

  v35 = MEMORY[0x277D84F90];
LABEL_123:

  v67 = sub_252C75848(v35);

  v68 = sub_252C75848(v56);

  v69 = sub_252DFABF8(v68, v67);

  v70 = v69[2];
  if (!v70)
  {

    return MEMORY[0x277D84F90];
  }

  v71 = sub_252DFA3E0(v69[2], 0);
  v72 = sub_252E082D0(v79, v71 + 4, v70, v69);
  result = sub_25291AE30();
  if (v72 == v70)
  {
    return v71;
  }

  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

_OWORD *sub_252D13768(uint64_t a1)
{
  v31 = a1;
  v35 = sub_252E32CB4();
  v1 = *(v35 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v35);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HomeStore();
  v5 = static HomeStore.shared.getter();
  v6 = sub_2529D9D50();
  v7 = sub_2529D70E4(v6);

  if (v7 >> 62)
  {
LABEL_31:
    v8 = sub_252E378C4();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_32:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401A0, &qword_252E3BFC8);
    result = swift_allocObject();
    result[1] = xmmword_252E3C290;
    *(result + 4) = v31;
    return result;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_32;
  }

LABEL_3:
  v9 = 0;
  v33 = v7 & 0xFFFFFFFFFFFFFF8;
  v34 = v7 & 0xC000000000000001;
  v32 = (v1 + 8);
  while (v34)
  {
    v1 = MEMORY[0x2530ADF00](v9, v7);
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_19;
    }

LABEL_9:
    v11 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
    v12 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

    result = [v36 identifier];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v14 = result;
    sub_252E32C94();

    v15 = sub_252E32C64();
    v17 = v16;
    (*v32)(v4, v35);
    if (v12)
    {
      if (v11 == v15 && v12 == v17)
      {
        goto LABEL_20;
      }

      v19 = sub_252E37DB4();

      if (v19)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    ++v9;
    if (v10 == v8)
    {
      goto LABEL_32;
    }
  }

  if (v9 >= *(v33 + 16))
  {
    __break(1u);
    goto LABEL_31;
  }

  v1 = *(v7 + 8 * v9 + 32);

  v10 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    goto LABEL_9;
  }

LABEL_19:
  __break(1u);
LABEL_20:

LABEL_21:

  v20 = sub_252CD941C();
  v21 = sub_2529F7B8C(0, 1, 1, MEMORY[0x277D84F90]);
  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_2529F7B8C((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 2) = v23 + 1;
  *&v21[8 * v23 + 32] = v20;
  v24 = sub_252CD94E0();
  if (v25)
  {
    goto LABEL_26;
  }

  v27 = *(v21 + 2);
  v26 = *(v21 + 3);
  v28 = v27 + 1;
  if (v27 >= v26 >> 1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    *(v21 + 2) = v28;
    *&v21[8 * v27 + 32] = v24;
LABEL_26:
    v27 = sub_252C759A0(v21);

    v28 = *(v27 + 16);
    if (!v28)
    {
      break;
    }

    v29 = sub_252DFA464(*(v27 + 16), 0);
    v21 = sub_252E1135C(&v37, v29 + 4, v28, v27);
    v24 = sub_25291AE30();
    if (v21 == v28)
    {

      return v29;
    }

    __break(1u);
LABEL_34:
    v30 = v24;
    v21 = sub_2529F7B8C((v26 > 1), v28, 1, v21);
    v24 = v30;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252D13B74(void *a1)
{
  v2 = [a1 value];
  if (v2 && (v3 = v2, v4 = [v2 limitValue], v3, v4))
  {
    v5 = MEMORY[0x277D47EB0];
    if (v4 != 2)
    {
      v5 = MEMORY[0x277D47EB8];
    }

    v6 = *v5;
    return sub_252E36F34();
  }

  else
  {
    if (qword_27F53F6A0 != -1)
    {
      swift_once();
    }

    v8 = off_27F5456A0;
    v9 = [a1 taskType];
    if (v8[2] && (v10 = sub_252A488EC(v9), (v11 & 1) != 0))
    {
      v12 = (v8[7] + 16 * v10);
      v14 = *v12;
      v13 = v12[1];

      return v14;
    }

    else
    {
      return 0;
    }
  }
}

void *sub_252D13C70(void *a1)
{
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v8 = v5;
  v9 = a1;
  v10 = [v9 type];
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      v11 = [objc_allocWithZone(MEMORY[0x277D47388]) init];
      v18 = [v9 stringValue];
      [v11 setValue_];

      goto LABEL_13;
    }

    if (v10 == 4)
    {
      v11 = [objc_allocWithZone(MEMORY[0x277D47370]) init];
      [v11 setValue_];
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (v10 != 1)
  {
    if (v10 == 2)
    {
      v11 = [objc_allocWithZone(MEMORY[0x277D47360]) init];
      [v9 doubleValue];
      *&v12 = v12;
      [v11 setValue_];
LABEL_13:
      v17 = v11;
      goto LABEL_14;
    }

LABEL_9:

    return 0;
  }

  v14 = [objc_allocWithZone(MEMORY[0x277D47340]) init];
  [v14 setValue_];
  v15 = v14;
  sub_252E32E74();
  sub_252E32E24();
  (*(v3 + 8))(v7, v8);
  v16 = sub_252E36F04();

  [v15 setAceId_];

  v17 = v15;
LABEL_14:
  v13 = v17;
  v19 = [v9 unit];
  if (qword_27F53F6B0 != -1)
  {
    v28 = v19;
    swift_once();
    v19 = v28;
  }

  v20 = off_27F5456B0;
  if (*(off_27F5456B0 + 2) && (v21 = sub_252A488EC(v19), (v22 & 1) != 0))
  {
    v23 = (v20[7] + 16 * v21);
    v24 = *v23;
    v25 = v23[1];

    v26 = sub_252E36F04();
  }

  else
  {
    v26 = 0;
  }

  [v13 setUnits_];

  return v13;
}

unint64_t sub_252D13FBC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_27F53F698 != -1)
    {
LABEL_23:
      swift_once();
    }

    v4 = 0;
    v5 = off_27F545698;
    v6 = 1 << *(off_27F545698 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = off_27F545698 + 64;
    v9 = v7 & *(off_27F545698 + 8);
    v10 = (v6 + 63) >> 6;
    while (v9)
    {
LABEL_11:
      v12 = __clz(__rbit64(v9)) | (v4 << 6);
      v13 = *(v5[6] + 4 * v12);
      v14 = (v5[7] + 16 * v12);
      if (*v14 != a1 || v14[1] != a2)
      {
        v9 &= v9 - 1;
        if ((sub_252E37DB4() & 1) == 0)
        {
          continue;
        }
      }

      v16 = 0;
      return v13 | (v16 << 32);
    }

    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v11 >= v10)
      {
        break;
      }

      v9 = *&v8[8 * v11];
      ++v4;
      if (v9)
      {
        v4 = v11;
        goto LABEL_11;
      }
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v17 = sub_252E36AD4();
    __swift_project_value_buffer(v17, qword_27F544CB8);
    sub_252E379F4();

    MEMORY[0x2530AD570](a1, a2);
    sub_252CC4050(0xD000000000000024, 0x8000000252E93FC0, 0xD000000000000078, 0x8000000252E7A400, 0xD000000000000012, 0x8000000252E93FF0, 326);
  }

  v13 = 0;
  v16 = 1;
  return v13 | (v16 << 32);
}

uint64_t sub_252D141D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_27F53F690 != -1)
    {
LABEL_23:
      swift_once();
    }

    v4 = 0;
    v5 = off_27F545690;
    v6 = 1 << *(off_27F545690 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = off_27F545690 + 64;
    v9 = v7 & *(off_27F545690 + 8);
    v10 = (v6 + 63) >> 6;
    while (v9)
    {
LABEL_11:
      v12 = __clz(__rbit64(v9)) | (v4 << 6);
      v13 = *(v5[6] + 8 * v12);
      v14 = (v5[7] + 16 * v12);
      if (*v14 != a1 || v14[1] != a2)
      {
        v9 &= v9 - 1;
        if ((sub_252E37DB4() & 1) == 0)
        {
          continue;
        }
      }

      return v13;
    }

    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v11 >= v10)
      {
        break;
      }

      v9 = *&v8[8 * v11];
      ++v4;
      if (v9)
      {
        v4 = v11;
        goto LABEL_11;
      }
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544CB8);
    sub_252E379F4();

    MEMORY[0x2530AD570](a1, a2);
    sub_252CC4050(0xD000000000000021, 0x8000000252E93E30, 0xD000000000000078, 0x8000000252E7A400, 0xD000000000000012, 0x8000000252E93E60, 279);
  }

  return 0;
}

unint64_t sub_252D143E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_27F53F6C0 != -1)
    {
LABEL_29:
      swift_once();
    }

    v4 = 0;
    v5 = off_27F5456C0;
    v6 = 1 << *(off_27F5456C0 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = off_27F5456C0 + 64;
    v9 = v7 & *(off_27F5456C0 + 8);
    v10 = (v6 + 63) >> 6;
    while (v9)
    {
LABEL_11:
      v12 = __clz(__rbit64(v9)) | (v4 << 6);
      v13 = *(v5[6] + 4 * v12);
      v14 = (v5[7] + 16 * v12);
      if (*v14 != a1 || v14[1] != a2)
      {
        v9 &= v9 - 1;
        if ((sub_252E37DB4() & 1) == 0)
        {
          continue;
        }
      }

      v16 = 0;
      return v13 | (v16 << 32);
    }

    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v11 >= v10)
      {
        break;
      }

      v9 = *&v8[8 * v11];
      ++v4;
      if (v9)
      {
        v4 = v11;
        goto LABEL_11;
      }
    }

    v17 = *MEMORY[0x277D480D0];
    if (sub_252E36F34() != a1 || v18 != a2)
    {
      v20 = sub_252E37DB4();

      if (v20)
      {
        goto LABEL_26;
      }

      if (qword_27F53F4B0 != -1)
      {
        swift_once();
      }

      v21 = sub_252E36AD4();
      __swift_project_value_buffer(v21, qword_27F544CB8);
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E93F60);
      MEMORY[0x2530AD570](a1, a2);
      sub_252CC4050(0, 0xE000000000000000, 0xD000000000000078, 0x8000000252E7A400, 0xD000000000000019, 0x8000000252E93FA0, 339);
    }
  }

LABEL_26:
  v13 = 0;
  v16 = 1;
  return v13 | (v16 << 32);
}

uint64_t sub_252D14650(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_27F53F688 != -1)
    {
LABEL_23:
      swift_once();
    }

    v4 = 0;
    v5 = off_27F545688;
    v6 = 1 << *(off_27F545688 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = off_27F545688 + 64;
    v9 = v7 & *(off_27F545688 + 8);
    v10 = (v6 + 63) >> 6;
    while (v9)
    {
LABEL_11:
      v12 = __clz(__rbit64(v9)) | (v4 << 6);
      v13 = *(v5[6] + 8 * v12);
      v14 = (v5[7] + 16 * v12);
      if (*v14 != a1 || v14[1] != a2)
      {
        v9 &= v9 - 1;
        if ((sub_252E37DB4() & 1) == 0)
        {
          continue;
        }
      }

      return v13;
    }

    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v11 >= v10)
      {
        break;
      }

      v9 = *&v8[8 * v11];
      ++v4;
      if (v9)
      {
        v4 = v11;
        goto LABEL_11;
      }
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544CB8);
    sub_252E379F4();

    MEMORY[0x2530AD570](a1, a2);
    sub_252CC4050(0xD00000000000001FLL, 0x8000000252E93E80, 0xD000000000000078, 0x8000000252E7A400, 0xD000000000000011, 0x8000000252E93EA0, 264);
  }

  return 0;
}

uint64_t sub_252D14860(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_27F53F6B8 != -1)
    {
LABEL_23:
      swift_once();
    }

    v4 = 0;
    v5 = off_27F5456B8;
    v6 = 1 << *(off_27F5456B8 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = off_27F5456B8 + 64;
    v9 = v7 & *(off_27F5456B8 + 8);
    v10 = (v6 + 63) >> 6;
    while (v9)
    {
LABEL_11:
      v12 = __clz(__rbit64(v9)) | (v4 << 6);
      v13 = *(v5[6] + 8 * v12);
      v14 = (v5[7] + 16 * v12);
      if (*v14 != a1 || v14[1] != a2)
      {
        v9 &= v9 - 1;
        if ((sub_252E37DB4() & 1) == 0)
        {
          continue;
        }
      }

      return v13;
    }

    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v11 >= v10)
      {
        break;
      }

      v9 = *&v8[8 * v11];
      ++v4;
      if (v9)
      {
        v4 = v11;
        goto LABEL_11;
      }
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544CB8);
    sub_252E379F4();

    MEMORY[0x2530AD570](a1, a2);
    sub_252CC4050(0xD000000000000021, 0x8000000252E93DE0, 0xD000000000000078, 0x8000000252E7A400, 0xD000000000000010, 0x8000000252E93E10, 294);
  }

  return 0;
}

uint64_t sub_252D14A74(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (qword_27F53F6A8 != -1)
  {
LABEL_31:
    swift_once();
  }

  v4 = 0;
  v5 = off_27F5456A8;
  v6 = 1 << *(off_27F5456A8 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = off_27F5456A8 + 64;
  v9 = v7 & *(off_27F5456A8 + 8);
  v10 = (v6 + 63) >> 6;
  while (v9)
  {
LABEL_11:
    v12 = __clz(__rbit64(v9)) | (v4 << 6);
    v13 = *(v5[6] + 8 * v12);
    v14 = (v5[7] + 16 * v12);
    if (*v14 != a1 || v14[1] != a2)
    {
      v9 &= v9 - 1;
      if ((sub_252E37DB4() & 1) == 0)
      {
        continue;
      }
    }

    return v13;
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *&v8[8 * v11];
    ++v4;
    if (v9)
    {
      v4 = v11;
      goto LABEL_11;
    }
  }

  v16 = *MEMORY[0x277D48020];
  if (sub_252E36F34() == a1 && v17 == a2)
  {
    v13 = 46;
  }

  else
  {
    v19 = sub_252E37DB4();

    if (v19)
    {
      return 46;
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v20 = sub_252E36AD4();
    __swift_project_value_buffer(v20, qword_27F544CB8);
    sub_252E379F4();

    MEMORY[0x2530AD570](a1, a2);
    sub_252CC3D90(0xD000000000000029, 0x8000000252E93F30, 0xD000000000000078, 0x8000000252E7A400);
    v13 = 0;
  }

  return v13;
}

uint64_t sub_252D14CBC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_27F53F6B0 != -1)
    {
LABEL_23:
      swift_once();
    }

    v4 = 0;
    v5 = off_27F5456B0;
    v6 = 1 << *(off_27F5456B0 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = off_27F5456B0 + 64;
    v9 = v7 & *(off_27F5456B0 + 8);
    v10 = (v6 + 63) >> 6;
    while (v9)
    {
LABEL_11:
      v12 = __clz(__rbit64(v9)) | (v4 << 6);
      v13 = *(v5[6] + 8 * v12);
      v14 = (v5[7] + 16 * v12);
      if (*v14 != a1 || v14[1] != a2)
      {
        v9 &= v9 - 1;
        if ((sub_252E37DB4() & 1) == 0)
        {
          continue;
        }
      }

      return v13;
    }

    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v11 >= v10)
      {
        break;
      }

      v9 = *&v8[8 * v11];
      ++v4;
      if (v9)
      {
        v4 = v11;
        goto LABEL_11;
      }
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544CB8);
    sub_252E379F4();

    MEMORY[0x2530AD570](a1, a2);
    sub_252CC3D90(0xD000000000000017, 0x8000000252E93F10, 0xD000000000000078, 0x8000000252E7A400);
  }

  return 0;
}

id sub_252D14EA4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 value];
    v6 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v7 = sub_252E36F04();
    v8 = [v6 initWithIdentifier:0 displayString:v7];

    v9 = v8;
    [v9 setBoolValue_];
    [v9 setType_];
LABEL_18:

    return v9;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v4 = a1;
    v12 = [v11 value];
    v13 = [v11 units];
    if (v13)
    {
      v14 = v13;
      v15 = sub_252E36F34();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v27 = sub_252D14CBC(v15, v17);

    v28 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v29 = sub_252E36F04();
    v30 = [v28 initWithIdentifier:0 displayString:v29];

    v9 = v30;
    [v9 setIntegerValue_];
    [v9 setUnit_];
    [v9 setType_];
    goto LABEL_18;
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v4 = a1;
    [v19 value];
    v21 = round(v20 * 10.0);
    v22 = [v19 units];
    if (v22)
    {
      v23 = v22;
      v24 = sub_252E36F34();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v44 = sub_252D14CBC(v24, v26);

    v45 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v46 = sub_252E36F04();
    v47 = [v45 initWithIdentifier:0 displayString:v46];

    v9 = v47;
    [v9 setDoubleValue_];
    [v9 setUnit_];
    [v9 setType_];
    goto LABEL_18;
  }

  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (!v31)
  {
    v48 = qword_27F53F4B0;
    v49 = a1;
    if (v48 != -1)
    {
      swift_once();
    }

    v50 = sub_252E36AD4();
    __swift_project_value_buffer(v50, qword_27F544CB8);
    sub_252E379F4();

    v51 = [v49 description];
    v52 = sub_252E36F34();
    v54 = v53;

    MEMORY[0x2530AD570](v52, v54);

    sub_252CC4050(0xD00000000000002BLL, 0x8000000252E93EC0, 0xD000000000000078, 0x8000000252E7A400, 0xD000000000000015, 0x8000000252E93EF0, 426);

    return 0;
  }

  v32 = v31;
  v33 = a1;
  result = [v32 value];
  if (result)
  {
    v35 = result;
    v36 = sub_252E36F34();
    v38 = v37;

    v39 = [v32 units];
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

    type metadata accessor for HomeAttributeValue();
    v55 = sub_252D14CBC(v41, v43);

    v9 = HomeAttributeValue.__allocating_init(stringValue:unit:)(v36, v38, v55);

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_252D153E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_27F53F6C8 != -1)
    {
LABEL_23:
      swift_once();
    }

    v4 = 0;
    v5 = off_27F5456C8;
    v6 = 1 << *(off_27F5456C8 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = off_27F5456C8 + 64;
    v9 = v7 & *(off_27F5456C8 + 8);
    v10 = (v6 + 63) >> 6;
    while (v9)
    {
LABEL_11:
      v12 = __clz(__rbit64(v9)) | (v4 << 6);
      v13 = *(v5[6] + 8 * v12);
      v14 = (v5[7] + 16 * v12);
      if (*v14 != a1 || v14[1] != a2)
      {
        v9 &= v9 - 1;
        if ((sub_252E37DB4() & 1) == 0)
        {
          continue;
        }
      }

      return v13;
    }

    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v11 >= v10)
      {
        break;
      }

      v9 = *&v8[8 * v11];
      ++v4;
      if (v9)
      {
        v4 = v11;
        goto LABEL_11;
      }
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544CB8);
    sub_252E379F4();

    MEMORY[0x2530AD570](a1, a2);
    sub_252CC4050(0xD000000000000028, 0x8000000252E7A3D0, 0xD000000000000078, 0x8000000252E7A400, 0xD000000000000012, 0x8000000252E7A480, 444);
  }

  return 0;
}

uint64_t sub_252D155F4(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  if (qword_27F53F6C8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v3 = off_27F5456C8;
  if (!*(off_27F5456C8 + 2))
  {
    return 0;
  }

  v4 = sub_252A488EC(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (v3[7] + 16 * v4);
  v8 = *v6;
  v7 = v6[1];

  return v8;
}

unint64_t sub_252D1569C(unsigned __int8 a1)
{
  v1 = 0xD000000000000015;
  if (a1 <= 4u)
  {
    v4 = 0xD000000000000017;
    v5 = 0xD000000000000012;
    if (a1 != 3)
    {
      v5 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v4 = v5;
    }

    if (a1)
    {
      v1 = 0xD00000000000001BLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v2 = 0xD000000000000017;
    if (a1 != 8)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v1 = 0xD000000000000018;
    }

    if (a1 == 5)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 <= 7u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

id sub_252D157C8(unint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 2u)
  {
    if (a4 == 3)
    {

      return sub_252D1663C(a1);
    }

    else
    {
      if (a4 == 4)
      {
        goto LABEL_16;
      }

      v10 = (a3 | a2 | a1) != 0;

      return sub_252D15950(v10);
    }
  }

  else
  {
    if (a4)
    {
      if (a4 == 1)
      {

        return sub_252D164E4();
      }

LABEL_16:
      v6 = objc_allocWithZone(MEMORY[0x277D5C220]);
      v7 = sub_252E36F04();
      v8 = [v6 initWithIdentifier_];

      v9 = sub_252D15B64(a1, v8);
      return v9;
    }

    return sub_252D161E8(a1, a2, a3);
  }
}

id sub_252D15950(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545750, &qword_252E5BB78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C290;
  strcpy(v15, "buttonPressed");
  HIWORD(v15[1]) = -4864;
  v6 = MEMORY[0x277D837D0];
  sub_252E37964();
  v7 = 7562617;
  if (a1)
  {
    v7 = 28526;
  }

  v8 = 0xE300000000000000;
  *(inited + 96) = v6;
  if (a1)
  {
    v8 = 0xE200000000000000;
  }

  *(inited + 72) = v7;
  *(inited + 80) = v8;
  sub_252CC5978(inited);
  swift_setDeallocating();
  sub_25293847C(inited + 32, &qword_27F5451B0, &qword_252E5A530);
  v9 = sub_252E36E24();

  [v4 setUserData_];

  v10 = objc_opt_self();
  v11 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v11 + 16), v15);

  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v12 = sub_252E33904();
  v13 = [v10 runSiriKitExecutorCommandWithContext:v12 payload:v4];

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v13;
}

id sub_252D15B64(void *a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = sub_252B680FC();
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 504 * v6 - 472);
    memcpy(__dst, v7, sizeof(__dst));
    v8 = __dst[48];
    memmove(__src, v7, 0x1F8uLL);
    GEOLocationCoordinate2DMake(__src);
    sub_2529353AC(__dst, v42);

    memcpy(v42, __src, sizeof(v42));
  }

  else
  {

    sub_25293DEE0(v42);
    v8 = 22;
  }

  type metadata accessor for ControlHomeIntentCodable();
  swift_allocObject();
  v9 = sub_252ADB074(a1);
  type metadata accessor for HandoffHandleIntentData();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v11 = sub_252E329C4();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_252E329B4();
  __src[0] = v10;
  sub_252D16CD4(&qword_27F545760, type metadata accessor for HandoffHandleIntentData);
  v14 = sub_252E329A4();
  v16 = v15;

  v17 = objc_opt_self();
  v18 = sub_252E32D14();
  sub_25296464C(v14, v16);
  __src[0] = 0;
  v19 = [v17 JSONObjectWithData:v18 options:0 error:__src];

  if (!v19)
  {
    v31 = __src[0];
LABEL_12:
    v32 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_13;
  }

  v20 = __src[0];
  sub_252E377F4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EB8, &unk_252E5A6D0);
  if (swift_dynamicCast())
  {
    v21 = sub_252E36E24();

    __src[0] = 0;
    v22 = [v17 dataWithJSONObject:v21 options:0 error:__src];

    v23 = __src[0];
    if (v22)
    {
      v24 = sub_252E32D34();
      v26 = v25;

      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v27 = sub_252E36AD4();
      __swift_project_value_buffer(v27, qword_27F544DA8);
      __src[0] = 0;
      __src[1] = 0xE000000000000000;
      sub_252E379F4();

      __src[0] = 0xD00000000000001ALL;
      __src[1] = 0x8000000252E941A0;
      v28 = sub_252ADBCF0();
      MEMORY[0x2530AD570](v28);

      sub_252CC3D90(__src[0], __src[1], 0xD000000000000076, 0x8000000252E94070);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545750, &qword_252E5BB78);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_252E3C290;
      strcpy(__src, "handedIntent");
      BYTE5(__src[1]) = 0;
      HIWORD(__src[1]) = -5120;
      sub_252E37964();
      *(v29 + 96) = MEMORY[0x277CC9318];
      *(v29 + 72) = v24;
      *(v29 + 80) = v26;
      sub_2529E61B0(v24, v26);
      sub_252CC5978(v29);
      swift_setDeallocating();
      sub_25293847C(v29 + 32, &qword_27F5451B0, &qword_252E5A530);
      swift_deallocClassInstance();
      v30 = sub_252E36E24();

      [a2 setUserData_];

      sub_25296464C(v24, v26);
      goto LABEL_16;
    }

    v31 = v23;
    goto LABEL_12;
  }

LABEL_13:
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v33 = sub_252E36AD4();
  __swift_project_value_buffer(v33, qword_27F544DA8);
  sub_252CC4050(0xD00000000000001ELL, 0x8000000252E94150, 0xD000000000000076, 0x8000000252E94070, 0xD00000000000002DLL, 0x8000000252E94170, 76);
LABEL_16:
  v34 = objc_opt_self();
  v35 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v35 + 16), __src);

  __swift_project_boxed_opaque_existential_1(__src, __src[3]);
  v36 = sub_252E33904();
  v37 = [v34 runSiriKitExecutorCommandWithContext:v36 payload:a2];
  sub_25293847C(v42, &qword_27F5404C8, &unk_252E3FD60);

  __swift_destroy_boxed_opaque_existential_1(__src);
  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

id sub_252D161E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v7 = sub_252E36F04();
  v8 = [v6 initWithIdentifier_];

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v9 = sub_252E36AD4();
  __swift_project_value_buffer(v9, qword_27F544DA8);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000053, 0x8000000252E94010);
  v10 = sub_252BEBD04(a1);
  MEMORY[0x2530AD570](v10);

  MEMORY[0x2530AD570](0x6D616E20646E6120, 0xEA00000000002065);
  MEMORY[0x2530AD570](a2, a3);
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000076, 0x8000000252E94070);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545750, &qword_252E5BB78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C290;
  v20 = sub_252BEBD04(a1);
  v21 = v12;
  v13 = MEMORY[0x277D837D0];
  sub_252E37964();
  *(inited + 96) = v13;
  *(inited + 72) = a2;
  *(inited + 80) = a3;

  sub_252CC5978(inited);
  swift_setDeallocating();
  sub_25293847C(inited + 32, &qword_27F5451B0, &qword_252E5A530);
  v14 = sub_252E36E24();

  [v8 setUserData_];

  v15 = objc_opt_self();
  v16 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v16 + 16), &v20);

  __swift_project_boxed_opaque_existential_1(&v20, v22);
  v17 = sub_252E33904();
  v18 = [v15 runSiriKitExecutorCommandWithContext:v17 payload:v8];

  __swift_destroy_boxed_opaque_existential_1(&v20);
  return v18;
}

id sub_252D164E4()
{
  v0 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v1 = sub_252E36F04();
  v2 = [v0 initWithIdentifier_];

  sub_252CC5978(MEMORY[0x277D84F90]);
  v3 = sub_252E36E24();

  [v2 setUserData_];

  v4 = objc_opt_self();
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v5 + 16), v9);

  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v6 = sub_252E33904();
  v7 = [v4 runSiriKitExecutorCommandWithContext:v6 payload:v2];

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

id sub_252D1663C(unint64_t a1)
{
  v46[5] = *MEMORY[0x277D85DE8];
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544DA8);

  v3 = sub_252E36AC4();
  v4 = sub_252E374C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v46[0] = v6;
    *v5 = 136315138;
    v7 = type metadata accessor for HomeFilter();
    v8 = MEMORY[0x2530AD730](a1, v7);
    v10 = sub_252BE2CE0(v8, v9, v46);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_252917000, v3, v4, "multipleEntitiesDirectInvocation filters: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2530AED00](v6, -1, -1);
    MEMORY[0x2530AED00](v5, -1, -1);
  }

  v11 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v12 = sub_252E36F04();
  v13 = [v11 initWithIdentifier_];

  if (a1 >> 62)
  {
    v14 = sub_252E378C4();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v46[0] = MEMORY[0x277D84F90];
    sub_252E37AB4();
    if (v14 < 0)
    {
      __break(1u);
    }

    v16 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x2530ADF00](v16, a1);
      }

      else
      {
        v17 = *(a1 + 8 * v16 + 32);
      }

      v18 = v17;
      ++v16;
      type metadata accessor for CodableHomeFilter();
      swift_allocObject();
      sub_2529D0A90(v18);

      sub_252E37A94();
      v19 = *(v46[0] + 2);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    while (v14 != v16);
    v15 = v46[0];
  }

  v20 = sub_252E329C4();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_252E329B4();
  v46[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A38, &qword_252E3DF88);
  sub_2529856FC();
  v23 = sub_252E329A4();
  v25 = v24;

  v26 = objc_opt_self();

  v27 = sub_252E32D14();
  sub_25296464C(v23, v25);
  v46[0] = 0;
  v28 = [v26 JSONObjectWithData:v27 options:0 error:v46];

  if (!v28)
  {
    v38 = v46[0];
LABEL_21:
    v39 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_22;
  }

  v29 = v46[0];
  sub_252E377F4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545758, &unk_252E5BB80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    sub_252CC4050(0xD00000000000002ALL, 0x8000000252E940F0, 0xD000000000000076, 0x8000000252E94070, 0xD000000000000027, 0x8000000252E94120, 130);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EB8, &unk_252E5A6D0);
  v30 = sub_252E37254();

  v46[0] = 0;
  v31 = [v26 dataWithJSONObject:v30 options:0 error:v46];

  v32 = v46[0];
  if (!v31)
  {
    v38 = v32;
    goto LABEL_21;
  }

  v33 = sub_252E32D34();
  v35 = v34;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545750, &qword_252E5BB78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C290;
  v46[0] = 0x737265746C6966;
  v46[1] = 0xE700000000000000;
  sub_252E37964();
  *(inited + 96) = MEMORY[0x277CC9318];
  *(inited + 72) = v33;
  *(inited + 80) = v35;
  sub_2529E61B0(v33, v35);
  sub_252CC5978(inited);
  swift_setDeallocating();
  sub_25293847C(inited + 32, &qword_27F5451B0, &qword_252E5A530);
  v37 = sub_252E36E24();

  [v13 setUserData_];

  sub_25296464C(v33, v35);
LABEL_23:
  v40 = objc_opt_self();
  v41 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v41 + 16), v46);

  __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  v42 = sub_252E33904();
  v43 = [v40 runSiriKitExecutorCommandWithContext:v42 payload:v13];

  __swift_destroy_boxed_opaque_existential_1(v46);
  v44 = *MEMORY[0x277D85DE8];
  return v43;
}

uint64_t sub_252D16CD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DeltaRoleSemantic.rawValue.getter()
{
  v1 = 0x61746C6564;
  v2 = 0x65766F6261;
  if (*v0 != 2)
  {
    v2 = 0x776F6C6562;
  }

  if (*v0)
  {
    v1 = 0x61746C65646E6F6ELL;
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

HomeAutomationInternal::DeltaRoleSemantic_optional __swiftcall DeltaRoleSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252D16E04()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D16EBC()
{
  *v0;
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252D16F60()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252D17020(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x61746C6564;
  v4 = 0x65766F6261;
  if (*v1 != 2)
  {
    v4 = 0x776F6C6562;
  }

  if (*v1)
  {
    v3 = 0x61746C65646E6F6ELL;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_252D1717C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252D17498();
  v5 = sub_252D174EC();
  v6 = sub_252D17540();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

uint64_t _s22HomeAutomationInternal17DeltaRoleSemanticO1loiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x61746C6564;
  v3 = *a1;
  if (v3 > 1)
  {
    v5 = 0xE500000000000000;
    if (v3 == 2)
    {
      v4 = 0x65766F6261;
    }

    else
    {
      v4 = 0x776F6C6562;
    }
  }

  else
  {
    if (*a1)
    {
      v4 = 0x61746C65646E6F6ELL;
    }

    else
    {
      v4 = 0x61746C6564;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x65766F6261;
  if (*a2 != 2)
  {
    v7 = 0x776F6C6562;
  }

  if (*a2)
  {
    v2 = 0x61746C65646E6F6ELL;
    v6 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (*a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_252E37DB4();
  }

  return v10 & 1;
}

unint64_t sub_252D1731C()
{
  result = qword_27F545768;
  if (!qword_27F545768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545768);
  }

  return result;
}

unint64_t sub_252D17374()
{
  result = qword_27F545770;
  if (!qword_27F545770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545770);
  }

  return result;
}

unint64_t sub_252D173CC()
{
  result = qword_27F545778;
  if (!qword_27F545778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F545780, &qword_252E5BCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545778);
  }

  return result;
}

unint64_t sub_252D17434()
{
  result = qword_27F545788;
  if (!qword_27F545788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545788);
  }

  return result;
}

unint64_t sub_252D17498()
{
  result = qword_27F545790;
  if (!qword_27F545790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545790);
  }

  return result;
}

unint64_t sub_252D174EC()
{
  result = qword_27F545798;
  if (!qword_27F545798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545798);
  }

  return result;
}

unint64_t sub_252D17540()
{
  result = qword_27F5457A0;
  if (!qword_27F5457A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5457A0);
  }

  return result;
}

uint64_t sub_252D17598(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x2530ADF00](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = [v4 outerDeviceName];
      if (!v7)
      {
        goto LABEL_19;
      }

      v8 = [v5 hasAllQuantifier];
      sub_252956D08();
      v9 = sub_252E37674();
      v10 = v9;
      if (v8)
      {
        v11 = sub_252E37694();

        if (v11)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

      if ([v5 deviceType])
      {
        goto LABEL_19;
      }

      v12 = [v5 homeEntityName];
      if (v12)
      {

LABEL_19:
        return 0;
      }

      if (v6 == i)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return 1;
}

id sub_252D17748(void *a1)
{
  result = [a1 filters];
  if (result)
  {
    v2 = result;
    type metadata accessor for HomeFilter();
    v3 = sub_252E37264();

    LOBYTE(v2) = sub_252D17598(v3);

    return (v2 & 1);
  }

  return result;
}

uint64_t sub_252D177D0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PickPrimaryServiceFromAccessoryHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

unint64_t sub_252D17804(void *a1)
{
  type metadata accessor for HomeStore();
  v2 = static HomeStore.shared.getter();
  v3 = v2[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v3 != 2 && (v3 & 1) == 0)
  {
    sub_2529318DC();
    v8 = swift_allocError();
    v51 = 12;
    goto LABEL_66;
  }

  v4 = [a1 filters];
  if (!v4)
  {
    sub_2529318DC();
    v8 = swift_allocError();
    v51 = 1;
LABEL_66:
    *v50 = v51;

    return v8;
  }

  v5 = v4;
  type metadata accessor for HomeFilter();
  v6 = sub_252E37264();

  v7 = [a1 userTask];
  v8 = HomeStore.accessories(matching:supporting:)(v6, v7);
  v10 = v9;

  if (v10)
  {
    return v8;
  }

  v11 = [a1 filters];
  if (!v11)
  {
    sub_252929F10(v8, 0);
LABEL_70:
    sub_2529318DC();
    v8 = swift_allocError();
    *v55 = 8;
    return v8;
  }

  v12 = v11;
  v13 = sub_252E37264();

  v58 = [a1 userTask];
  if (!v58)
  {
    sub_252929F10(v8, 0);

    goto LABEL_70;
  }

  v68 = MEMORY[0x277D84F90];
  if (v13 >> 62)
  {
    goto LABEL_77;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
  v61 = v13;
  if (v14)
  {
    if (v8 >> 62)
    {
      v15 = sub_252E378C4();
    }

    else
    {
      v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = 0;
    v63 = v13 & 0xC000000000000001;
    v59 = v13 + 32;
    v60 = v13 & 0xFFFFFFFFFFFFFF8;
    v13 = MEMORY[0x277D84F90];
    v62 = v14;
    while (1)
    {
      if (v63)
      {
        v17 = MEMORY[0x2530ADF00](v16, v61);
      }

      else
      {
        if (v16 >= *(v60 + 16))
        {
          goto LABEL_76;
        }

        v17 = *(v59 + 8 * v16);
      }

      v18 = v17;
      v66 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_74;
      }

      v67 = v13;
      if (v15)
      {
        v13 = 0;
        while (1)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](v13, v8);
            v20 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_72;
            }
          }

          else
          {
            if (v13 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_73;
            }

            v19 = *(v8 + 8 * v13 + 32);

            v20 = v13 + 1;
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
              v14 = sub_252E378C4();
              goto LABEL_9;
            }
          }

          if (sub_252D50D28(v18))
          {
            sub_252E37A94();
            v21 = *(v67 + 16);
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          ++v13;
          if (v20 == v15)
          {
            v13 = v67;
            break;
          }
        }
      }

      v22 = v13 < 0 || (v13 & 0x4000000000000000) != 0;
      if (v22)
      {
        if (!sub_252E378C4())
        {
          goto LABEL_53;
        }
      }

      else if (!*(v13 + 16))
      {
        goto LABEL_53;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x2530ADF00](0, v13);
      }

      else
      {
        if (!*(v13 + 16))
        {
          goto LABEL_75;
        }

        v23 = *(v13 + 32);
      }

      v24 = sub_252D4DFC8();
      if (!v24)
      {
        break;
      }

      v25 = v24;
      if (v22)
      {
        v26 = sub_252E378C4();
      }

      else
      {
        v26 = *(v13 + 16);
      }

      if (v26 != 1)
      {

LABEL_53:

        v13 = MEMORY[0x277D84F90];
        goto LABEL_54;
      }

      v27 = sub_252CDAB7C(v58);
      v13 = MEMORY[0x277D84F90];
      if (v27)
      {
        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        v28 = sub_252E36AD4();
        __swift_project_value_buffer(v28, qword_27F544DA8);
        sub_252E379F4();

        v57 = (v25 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v29 = *(v25 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
        v64 = *(v25 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

        MEMORY[0x2530AD570](v64, v29);

        MEMORY[0x2530AD570](0x63636120726F6620, 0xEF2079726F737365);
        v31 = *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v30 = *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        MEMORY[0x2530AD570](v31, v30);

        sub_252CC3D90(0xD000000000000018, 0x8000000252E94210, 0xD00000000000009FLL, 0x8000000252E94230);

        type metadata accessor for HomeFilter.Builder();
        swift_allocObject();
        HomeFilter.Builder.init()();
        v33 = *(*v32 + 752);
        v34 = v18;
        v35 = v33(v18);

        v65 = v34;

        v36 = *v57;
        v37 = v57[1];

        v38 = (*(*v35 + 576))(v36, v37);

        v39 = sub_252CD941C();
        v40 = (*(*v38 + 624))(v39);

        v42 = (*(*v40 + 760))(v41);

        v43 = v42;
        MEMORY[0x2530AD700]();
        if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v49 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();

        v44 = v62;
        v13 = MEMORY[0x277D84F90];
        goto LABEL_58;
      }

LABEL_54:

      v45 = [a1 filters];
      if (v45)
      {
        v46 = v45;
        v47 = sub_252E37264();

        v48 = sub_25297CCF8(v47);
        v13 = MEMORY[0x277D84F90];
      }

      else
      {

        v48 = v13;
      }

      v68 = v48;
      v44 = v62;
LABEL_58:
      v16 = v66;
      if (v66 == v44)
      {
        goto LABEL_68;
      }
    }

    goto LABEL_53;
  }

LABEL_68:
  sub_252929F10(v8, 0);

  v52 = [a1 userTask];
  v53 = [a1 time];
  v8 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v8 setUserTask_];
  v54 = sub_252E37254();

  [v8 setFilters_];

  [v8 setTime_];
  return v8;
}

uint64_t sub_252D18130()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5457B0, &unk_252E5BEB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_252E53770;
  *(v0 + 32) = type metadata accessor for BlockIncompleteMatterAccessoryManagerLoadHandler();
  *(v0 + 40) = &off_2864BEA90;
  *(v0 + 48) = type metadata accessor for BlockNoMatchingEntitiesHandler();
  *(v0 + 56) = &off_2864B9F00;
  *(v0 + 64) = type metadata accessor for BlockModifySensors();
  *(v0 + 72) = &off_2864B8B98;
  *(v0 + 80) = type metadata accessor for BlockMulticardinalRequestsHandler();
  *(v0 + 88) = &off_2864B23C8;
  *(v0 + 96) = type metadata accessor for BlockMissingSceneHandler();
  *(v0 + 104) = &off_2864B26F0;
  *(v0 + 112) = type metadata accessor for BlockUnsafeActionsHandler();
  *(v0 + 120) = &off_2864B19D8;
  *(v0 + 128) = type metadata accessor for BlockDisableSceneHandler();
  *(v0 + 136) = &off_2864B6A20;
  *(v0 + 144) = type metadata accessor for BlockGetATVStatusHandler();
  *(v0 + 152) = &off_2864BD500;
  *(v0 + 160) = type metadata accessor for BlockUnsupportedTasksHandler();
  *(v0 + 168) = &off_2864BE540;
  *(v0 + 176) = type metadata accessor for BlockFeatureNotAvailableForDeviceHandler();
  *(v0 + 184) = &off_2864B6E08;
  result = type metadata accessor for BlockAsyncInProgressHandler();
  *(v0 + 192) = result;
  *(v0 + 200) = &off_2864B61C8;
  qword_27F575B00 = v0;
  return result;
}

void sub_252D18260(char *a1@<X8>)
{
  if (*(v1 + 528))
  {
    v2 = 11;
  }

  else
  {
    v2 = 9;
  }

  *a1 = v2;
}

uint64_t sub_252D1827C(uint64_t a1)
{
  v2[821] = v1;
  v2[820] = a1;
  v3 = sub_252E36AB4();
  v2[822] = v3;
  v4 = *(v3 - 8);
  v2[823] = v4;
  v5 = *(v4 + 64) + 15;
  v2[824] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D18340, 0, 0);
}

uint64_t sub_252D18340()
{
  v52 = v0;
  if (qword_27F53F5D0 != -1)
  {
LABEL_25:
    swift_once();
  }

  v1 = *(v0 + 6592);
  v2 = qword_27F544F58;
  *(v0 + 6600) = qword_27F544F58;
  v2;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  type metadata accessor for SELFPerformanceLogger();
  swift_allocObject();
  v47 = sub_252D2D190(208, 0x6E776F6E6B6E75, 0xE700000000000000);
  *(v0 + 6608) = v47;
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 6568);
  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544DA8);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  memcpy((v0 + 520), (v3 + 24), 0x1F8uLL);
  memcpy(__dst, (v3 + 24), 0x1F8uLL);
  sub_2529353AC(v0 + 520, v0 + 1024);
  v5 = HomeAutomationIntent.description.getter();
  v7 = v6;
  memcpy((v0 + 16), __dst, 0x1F8uLL);
  sub_252935408(v0 + 16);
  MEMORY[0x2530AD570](v5, v7);

  sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E942E0, 0xD00000000000007ELL, 0x8000000252E94310);

  __dst[0] = 0x6761742068746957;
  __dst[1] = 0xEA00000000002073;
  v8 = *(v3 + 120);

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540990, &qword_252E3DF50);
  v10 = MEMORY[0x2530AD730](v8, v9);
  v12 = v11;

  MEMORY[0x2530AD570](v10, v12);

  sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000007ELL, 0x8000000252E94310);

  if (qword_27F53F6D8 != -1)
  {
    swift_once();
  }

  v48 = *(v0 + 6568);
  v13 = qword_27F575B00;
  v14 = *(qword_27F575B00 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = qword_27F575B00 + 32;
    while (1)
    {
      if (v15 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      *v49 = *(v16 + 16 * v15);
      v17 = *(v48 + 16);
      memcpy((v0 + 2032), (v3 + 24), 0x1F8uLL);
      memcpy(__dst, (v3 + 24), 0x1F8uLL);
      v18 = *(v49[1] + 4);
      v19 = v17;
      sub_2529353AC(v0 + 2032, v0 + 2536);
      v20 = v18(v19, __dst, v49[0], v49[1]);

      memcpy((v0 + 1528), __dst, 0x1F8uLL);
      sub_252935408(v0 + 1528);
      if (v20)
      {
        break;
      }

      if (v14 == ++v15)
      {
        goto LABEL_11;
      }
    }

    v28 = *(v49[1] + 6);
    *(v0 + 6464) = *v49;
    __swift_allocate_boxed_opaque_existential_0((v0 + 6440));
    v28(v49[0], v49[1]);
    sub_252927BEC((v0 + 6440), v0 + 6400);
    sub_252929E74(v0 + 6400, v0 + 6480);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5457A8, qword_252E5BDF0);
    *(v0 + 6616) = sub_252E36F94();
    *(v0 + 6624) = v29;
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD000000000000016;
    __dst[1] = 0x8000000252E94390;
    sub_252929E74(v0 + 6400, v0 + 6520);
    v30 = sub_252E36F94();
    MEMORY[0x2530AD570](v30);

    sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000007ELL, 0x8000000252E94310);

    v31 = *(v0 + 6424);
    v32 = *(v0 + 6432);
    __swift_project_boxed_opaque_existential_1((v0 + 6400), v31);
    v33 = *(v48 + 16);
    *(v0 + 6632) = v33;
    memcpy((v0 + 3544), (v3 + 24), 0x1F8uLL);
    memcpy((v0 + 3040), (v3 + 24), 0x1F8uLL);
    GEOLocationCoordinate2DMake(v0 + 3040);
    memcpy((v0 + 4048), (v0 + 3040), 0x1F8uLL);
    v34 = *(v49[1] + 5);
    v35 = v33;
    sub_2529353AC(v0 + 3544, v0 + 4552);
    v50 = (v34 + *v34);
    v36 = v34[1];
    v37 = swift_task_alloc();
    *(v0 + 6640) = v37;
    *v37 = v0;
    v37[1] = sub_252D18B30;

    return v50(v35, v0 + 4048, v31, v32);
  }

  else
  {
LABEL_11:
    v21 = *(v0 + 6592);
    sub_252CC3D90(0xD000000000000038, 0x8000000252E943B0, 0xD00000000000007ELL, 0x8000000252E94310);
    sub_252E375C4();
    v46 = MEMORY[0x277D84F90];
    LOBYTE(v45) = 2;
    sub_252E36A74();
    if (v47)
    {
      v22 = *(v48 + 16);

      v23 = [v22 userTask];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 taskType];

        v26 = v25 - 1;
        if ((v25 - 1) > 5)
        {
          v27 = 0xE700000000000000;
          v23 = 0x6E776F6E6B6E75;
        }

        else
        {
          v23 = qword_252E5BEC0[v26];
          v27 = qword_252E5BEF0[v26];
        }
      }

      else
      {
        v27 = 0;
      }

      sub_252D2D83C(v23, v27);
    }

    v39 = *(v0 + 6592);
    v40 = *(v0 + 6584);
    v41 = *(v0 + 6576);
    v42 = *(v0 + 6560);
    sub_252E33B24();

    (*(v40 + 8))(v39, v41);
    v43 = *(v0 + 6592);

    v44 = *(v0 + 8);

    return v44();
  }
}

uint64_t sub_252D18B30()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 6640);
  v5 = *v1;

  v6 = *(v2 + 6632);
  if (v0)
  {

    memcpy((v3 + 5056), (v3 + 4048), 0x1F8uLL);
    sub_25293847C(v3 + 5056, &qword_27F5404C8, &unk_252E3FD60);
  }

  else
  {
    memcpy((v3 + 5560), (v3 + 4048), 0x1F8uLL);
    sub_25293847C(v3 + 5560, &qword_27F5404C8, &unk_252E3FD60);
  }

  return MEMORY[0x2822009F8](sub_252D18CC4, 0, 0);
}

uint64_t sub_252D18CC4()
{
  v40 = v0;
  if (*(v0 + 6608))
  {
    v1 = *(*(v0 + 6568) + 16);
    v2 = *(v0 + 6608);

    v3 = [v1 userTask];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 taskType];

      v6 = v5 - 1;
      if ((v5 - 1) > 5)
      {
        v7 = 0xE700000000000000;
        v3 = 0x6E776F6E6B6E75;
      }

      else
      {
        v3 = qword_252E5BEC0[v6];
        v7 = qword_252E5BEF0[v6];
      }
    }

    else
    {
      v7 = 0;
    }

    sub_252D2D83C(v3, v7);
  }

  v8 = *(v0 + 6624);
  v9 = *(v0 + 6616);
  v10 = *(v0 + 6600);
  v11 = *(v0 + 6592);
  v12 = *(v0 + 6584);
  v27 = *(v0 + 6568);
  v28 = *(v0 + 6576);
  v13 = *(v0 + 6560);
  *(v0 + 6232) = 0;
  *(v0 + 6240) = 1;
  *(v0 + 6248) = 0u;
  *(v0 + 6264) = 0u;
  *(v0 + 6280) = 0u;
  *(v0 + 6296) = 0;
  *(v0 + 6304) = v9;
  *(v0 + 6312) = v8;
  *(v0 + 6320) = 0;
  *(v0 + 6328) = 1;
  *(v0 + 6336) = 0u;
  *(v0 + 6352) = 0;
  *(v0 + 6360) = 513;
  *(v0 + 6384) = 0;
  *(v0 + 6368) = 0u;
  *(v0 + 6392) = 1;
  GEOLocationCoordinate2DMake(v0 + 6232);
  v14 = *(v0 + 6376);
  v37 = *(v0 + 6360);
  v38 = v14;
  v39 = *(v0 + 6392);
  v15 = *(v0 + 6312);
  v33 = *(v0 + 6296);
  v34 = v15;
  v16 = *(v0 + 6344);
  v35 = *(v0 + 6328);
  v36 = v16;
  v17 = *(v0 + 6248);
  v29 = *(v0 + 6232);
  v30 = v17;
  v18 = *(v0 + 6280);
  v31 = *(v0 + 6264);
  v32 = v18;
  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v10, v11, "BlockRequest", 12, 2, &v29);
  v19 = v35;
  *(v0 + 6176) = v36;
  v20 = v38;
  *(v0 + 6192) = v37;
  *(v0 + 6208) = v20;
  v21 = v31;
  *(v0 + 6112) = v32;
  v22 = v34;
  *(v0 + 6128) = v33;
  *(v0 + 6144) = v22;
  *(v0 + 6160) = v19;
  v23 = v30;
  *(v0 + 6064) = v29;
  *(v0 + 6080) = v23;
  *(v0 + 6224) = v39;
  *(v0 + 6096) = v21;
  sub_25293847C(v0 + 6064, &qword_27F5407B0, &unk_252E42860);
  *(v27 + 528) = 1;
  sub_252E33B24();

  (*(v12 + 8))(v11, v28);
  __swift_destroy_boxed_opaque_existential_1((v0 + 6400));
  v24 = *(v0 + 6592);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t ControlHomeBlockingFlow.deinit()
{
  memcpy(__dst, (v0 + 24), sizeof(__dst));
  sub_252935408(__dst);
  return v0;
}

uint64_t ControlHomeBlockingFlow.__deallocating_deinit()
{
  memcpy(__dst, (v0 + 24), sizeof(__dst));
  sub_252935408(__dst);
  return swift_deallocClassInstance();
}

uint64_t sub_252D19010(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252D1827C(a1);
}

void sub_252D190AC(char *a1@<X8>)
{
  if (*(*v1 + 528))
  {
    v2 = 11;
  }

  else
  {
    v2 = 9;
  }

  *a1 = v2;
}

uint64_t dispatch thunk of ControlHomeBlockingFlow.execute()(uint64_t a1)
{
  v4 = *(*v1 + 208);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25293B808;

  return v8(a1);
}

void *sub_252D192A0()
{
  v1 = sub_252E363B4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  v0[17] = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v0[18] = &off_2864BA730;
  v0[14] = v3;
  v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v5 = *(v4 + 22);

  v0[2] = v5;
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v6 + 136), v9);

  sub_252927BEC(v9, (v0 + 4));
  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v7 + 96), v9);

  sub_252927BEC(v9, (v0 + 9));
  type metadata accessor for HomeAutomationCATsSimple();
  sub_252E363A4();
  v0[3] = sub_252E36354();
  return v0;
}

uint64_t static Signpost.begin(logging:_:)(void *a1)
{
  v1 = a1;
  sub_252E36A94();
  sub_252E375D4();

  return sub_252E36A84();
}

uint64_t Signpost.Context.init(numberOfTargetedEntities:serviceTypes:targetedContainer:handleDelegateName:responseHandler:entitiesInitialized:homeStoreLoadSucceeded:intentHandlerName:useCase:retrievedEntitiesFromHomeStoreCache:intentSelectionStep:numberOfInitialCandidates:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, __int128 a17, char a18, __int128 a19, uint64_t a20, char a21)
{
  *a9 = a1;
  result = a2 & 1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a15;
  *(a9 + 64) = a16;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  *(a9 + 96) = a12 & 1;
  *(a9 + 104) = a17;
  *(a9 + 120) = a13;
  *(a9 + 128) = a14 & 1;
  *(a9 + 129) = a18;
  *(a9 + 136) = a19;
  *(a9 + 152) = a20;
  *(a9 + 160) = a21 & 1;
  return result;
}

uint64_t static Signpost.measureWithSELFPerformanceLogger<A>(in:as:domainExecutionType:withContext:taskType:blockToMeasure:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void (*a10)(void), uint64_t a11, uint64_t a12)
{
  v36 = a7;
  v37 = a8;
  v40 = a5;
  v43 = a9;
  v44 = a12;
  v42 = *(a12 - 8);
  v17 = *(v42 + 64);
  v39 = a11;
  v38 = a10;
  MEMORY[0x28223BE20](a1);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_252E36AB4();
  v20 = *(v41 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v41);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a6 + 144);
  v45[8] = *(a6 + 128);
  v45[9] = v24;
  v46 = *(a6 + 160);
  v25 = *(a6 + 80);
  v45[4] = *(a6 + 64);
  v45[5] = v25;
  v26 = *(a6 + 112);
  v45[6] = *(a6 + 96);
  v45[7] = v26;
  v27 = *(a6 + 16);
  v45[0] = *a6;
  v45[1] = v27;
  v28 = *(a6 + 48);
  v45[2] = *(a6 + 32);
  v45[3] = v28;
  v29 = a1;
  sub_252E36A94();
  sub_252E375D4();
  v30 = a2;
  v31 = a3;
  v32 = a4;
  sub_252E36A84();
  type metadata accessor for SELFPerformanceLogger();
  swift_initStackObject();
  v33 = sub_252D2D190(v40, 0x6E776F6E6B6E75, 0xE700000000000000);
  v38();
  if (v33)
  {

    sub_252D2D83C(v36, v37);
  }

  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v29, v23, v30, v31, v32, v45);

  (*(v20 + 8))(v23, v41);
  return (*(v42 + 32))(v43, v19, v44);
}

uint64_t static Signpost.measure<A>(in:as:withContext:blockToMeasure:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v25 = a6;
  v11 = sub_252E36AB4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a5 + 144);
  v26[8] = *(a5 + 128);
  v26[9] = v16;
  v27 = *(a5 + 160);
  v17 = *(a5 + 80);
  v26[4] = *(a5 + 64);
  v26[5] = v17;
  v18 = *(a5 + 112);
  v26[6] = *(a5 + 96);
  v26[7] = v18;
  v19 = *(a5 + 16);
  v26[0] = *a5;
  v26[1] = v19;
  v20 = *(a5 + 48);
  v26[2] = *(a5 + 32);
  v26[3] = v20;
  v21 = a1;
  sub_252E36A94();
  sub_252E375D4();
  v22 = sub_252E36A84();
  v25(v22);
  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v21, v15, a2, a3, a4, v26);
  return (*(v12 + 8))(v15, v11);
}

uint64_t static Signpost.generateSignpostID(for:)(void *a1)
{
  v1 = a1;

  return sub_252E36A94();
}

uint64_t _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v6 = a6[9];
  v56 = a6[8];
  v57 = v6;
  v58 = *(a6 + 160);
  v7 = a6[5];
  v52 = a6[4];
  v53 = v7;
  v8 = a6[7];
  v54 = a6[6];
  v55 = v8;
  v9 = a6[1];
  v48 = *a6;
  v49 = v9;
  v10 = a6[3];
  v50 = a6[2];
  v51 = v10;
  if (sub_252D1A8A0(&v48) == 1)
  {
    goto LABEL_2;
  }

  if (v56)
  {
    v12 = v51;
    if (v51)
    {
      v13 = *(&v50 + 1);
      sub_252E375C4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_252E3C290;
      *(v14 + 56) = MEMORY[0x277D837D0];
      *(v14 + 64) = sub_252987BC8();
      *(v14 + 32) = v13;
      *(v14 + 40) = v12;
    }

    else
    {
      v19 = v52;
      if (v52)
      {
        v20 = *(&v51 + 1);
        sub_252E375C4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_252E3C290;
        *(v21 + 56) = MEMORY[0x277D837D0];
        *(v21 + 64) = sub_252987BC8();
        *(v21 + 32) = v20;
        *(v21 + 40) = v19;
      }

      else
      {
        v22 = v53;
        if (v53)
        {
          v23 = *(&v52 + 1);
          sub_252E375C4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_252E3C290;
          *(v24 + 56) = MEMORY[0x277D837D0];
          *(v24 + 64) = sub_252987BC8();
          *(v24 + 32) = v23;
          *(v24 + 40) = v22;
        }

        else
        {
          if ((BYTE8(v48) & 1) == 0)
          {
            v25 = v50;
            if (v50)
            {
              if (v49)
              {
                v26 = v48;
                v47 = *(&v49 + 1);
                if (*(v49 + 16) == 1)
                {
                  v27 = *(v49 + 40);
                  v46 = *(v49 + 32);
                }

                else
                {
                  v27 = 0xE800000000000000;
                  v46 = 0x454C5049544C554DLL;
                }

                sub_252E375C4();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
                v38 = swift_allocObject();
                *(v38 + 16) = xmmword_252E3C280;
                v39 = MEMORY[0x277D83C10];
                *(v38 + 56) = MEMORY[0x277D83B88];
                *(v38 + 64) = v39;
                *(v38 + 32) = v26;
                v40 = MEMORY[0x277D837D0];
                *(v38 + 96) = MEMORY[0x277D837D0];
                v41 = sub_252987BC8();
                *(v38 + 72) = v46;
                *(v38 + 80) = v27;
                *(v38 + 136) = v40;
                *(v38 + 144) = v41;
                *(v38 + 104) = v41;
                *(v38 + 112) = v47;
                *(v38 + 120) = v25;

                sub_252E36A74();
              }
            }
          }

          if (v54)
          {
            v28 = v55;
            if (!v55)
            {
              if (BYTE1(v56) == 2)
              {
                v35 = v57;
                if (v57)
                {
                  v36 = *(&v56 + 1);
                  sub_252E375C4();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
                  v37 = swift_allocObject();
                  *(v37 + 16) = xmmword_252E3C290;
                  *(v37 + 56) = MEMORY[0x277D837D0];
                  *(v37 + 64) = sub_252987BC8();
                  *(v37 + 32) = v36;
                  *(v37 + 40) = v35;

                  goto LABEL_11;
                }

                if ((v58 & 1) == 0)
                {
                  v42 = *(&v57 + 1);
                  sub_252E375C4();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
                  v43 = swift_allocObject();
                  v44 = MEMORY[0x277D83B88];
                  *(v43 + 16) = xmmword_252E3C290;
                  v45 = MEMORY[0x277D83C10];
                  *(v43 + 56) = v44;
                  *(v43 + 64) = v45;
                  *(v43 + 32) = v42;
                  goto LABEL_11;
                }
              }

LABEL_2:
              sub_252E375C4();
              return sub_252E36A74();
            }

            v29 = *(&v54 + 1);
            sub_252E375C4();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
            v30 = swift_allocObject();
            *(v30 + 16) = xmmword_252E3C290;
            *(v30 + 56) = MEMORY[0x277D837D0];
            *(v30 + 64) = sub_252987BC8();
            *(v30 + 32) = v29;
            *(v30 + 40) = v28;
          }

          else
          {
            v31 = *(&v53 + 1);
            sub_252E375C4();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
            v32 = swift_allocObject();
            v33 = MEMORY[0x277D83B88];
            *(v32 + 16) = xmmword_252E3C290;
            v34 = MEMORY[0x277D83C10];
            *(v32 + 56) = v33;
            *(v32 + 64) = v34;
            *(v32 + 32) = v31;
          }
        }
      }
    }
  }

  else
  {
    v15 = *(&v55 + 1);
    sub_252E375C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D83B88];
    *(v16 + 16) = xmmword_252E3C290;
    v18 = MEMORY[0x277D83C10];
    *(v16 + 56) = v17;
    *(v16 + 64) = v18;
    *(v16 + 32) = v15;
  }

LABEL_11:
  sub_252E36A74();
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_252D1A7A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 161))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_252D1A800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_252D1A8A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_252D1A8C4()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_label);
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_command);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_252D1A938(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  v1[2] = 0;
  v10 = OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_label;
  swift_beginAccess();
  sub_252956C1C(a1 + v10, v1 + OBJC_IVAR____TtC22HomeAutomationInternal29HomeAutomationTappableCommand_label);
  v11 = OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_command;
  swift_beginAccess();
  sub_252956C1C(a1 + v11, v1 + OBJC_IVAR____TtC22HomeAutomationInternal29HomeAutomationTappableCommand_command);
  sub_252956C1C(v1 + OBJC_IVAR____TtC22HomeAutomationInternal29HomeAutomationTappableCommand_label, v9);
  v12 = sub_252E36324();
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v9, 1, v12);
  sub_252938BBC(v9);
  if (v14 != 1)
  {
    sub_252956C1C(v1 + OBJC_IVAR____TtC22HomeAutomationInternal29HomeAutomationTappableCommand_command, v7);
    if (v13(v7, 1, v12) != 1)
    {

      sub_252938BBC(v7);
      return v1;
    }

    sub_252938BBC(v7);
  }

  v15 = sub_252E36384();
  sub_252E374D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_252E3C290;
  v21[1] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5457F8, &qword_252E5C150);
  v17 = sub_252E36F94();
  v19 = v18;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = sub_252987BC8();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  sub_252E36A64();

  return v1;
}

uint64_t sub_252D1ABEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal29HomeAutomationTappableCommand_label, v13);
    v14 = sub_252E36324();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      v16 = v13;
LABEL_6:
      result = sub_252938BBC(v16);
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v14;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(v15 + 32))(boxed_opaque_existential_0, v13, v14);
  }

  else
  {
    if (a1 != 0x646E616D6D6F63 || a2 != 0xE700000000000000)
    {
      result = sub_252E37DB4();
      if ((result & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal29HomeAutomationTappableCommand_command, v11);
    v19 = sub_252E36324();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v11, 1, v19) == 1)
    {
      v16 = v11;
      goto LABEL_6;
    }

    *(a3 + 24) = v19;
    v21 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(v20 + 32))(v21, v11, v19);
  }
}

uint64_t sub_252D1AE60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x646E616D6D6F63;
  }

  else
  {
    v4 = 0x6C6562616CLL;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x646E616D6D6F63;
  }

  else
  {
    v6 = 0x6C6562616CLL;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
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

uint64_t sub_252D1AF04()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D1AF84()
{
  *v0;
  sub_252E37044();
}

uint64_t sub_252D1AFF0()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D1B06C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_252E37B74();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_252D1B0CC(uint64_t *a1@<X8>)
{
  v2 = 0x6C6562616CLL;
  if (*v1)
  {
    v2 = 0x646E616D6D6F63;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_252D1B108()
{
  if (*v0)
  {
    result = 0x646E616D6D6F63;
  }

  else
  {
    result = 0x6C6562616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_252D1B140@<X0>(char *a1@<X8>)
{
  v2 = sub_252E37B74();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_252D1B1A4(uint64_t a1)
{
  v2 = sub_252D1BA2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252D1B1E0(uint64_t a1)
{
  v2 = sub_252D1BA2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252D1B21C()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal29HomeAutomationTappableCommand_label);
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal29HomeAutomationTappableCommand_command);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

void sub_252D1B2C0()
{
  sub_2529576E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_252D1B35C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545800, &qword_252E5C158);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252D1BA2C();
  sub_252E37F84();
  v10[15] = 0;
  sub_252E36324();
  sub_252D1B9E4(&qword_27F540548, MEMORY[0x277D55C48]);
  sub_252E37CD4();
  if (!v1)
  {
    v10[14] = 1;
    sub_252E37CD4();
  }

  return (*(v4 + 8))(v7, v3);
}

id *sub_252D1B568(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v21 = &v19 - v9;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5457E8, &unk_252E5C140);
  v10 = *(v22 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v22);
  v13 = &v19 - v12;
  v1[2] = 0;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252D1BA2C();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for HomeAutomationTappableCommand(0);
    v16 = *(*v1 + 12);
    v17 = *(*v1 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v10;
    sub_252E36324();
    v24 = 0;
    sub_252D1B9E4(&qword_27F540538, MEMORY[0x277D55C48]);
    v15 = v21;
    sub_252E37BE4();
    sub_2529439A0(v15, v1 + OBJC_IVAR____TtC22HomeAutomationInternal29HomeAutomationTappableCommand_label);
    v23 = 1;
    sub_252E37BE4();
    (*(v20 + 8))(v13, v22);
    sub_2529439A0(v8, v1 + OBJC_IVAR____TtC22HomeAutomationInternal29HomeAutomationTappableCommand_command);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

id *sub_252D1B8D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for HomeAutomationTappableCommand(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = sub_252D1B568(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_252D1B9E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_252D1BA2C()
{
  result = qword_27F5457F0;
  if (!qword_27F5457F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5457F0);
  }

  return result;
}

unint64_t sub_252D1BA94()
{
  result = qword_27F545808;
  if (!qword_27F545808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545808);
  }

  return result;
}

unint64_t sub_252D1BAEC()
{
  result = qword_27F545810;
  if (!qword_27F545810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545810);
  }

  return result;
}

unint64_t sub_252D1BB44()
{
  result = qword_27F545818;
  if (!qword_27F545818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545818);
  }

  return result;
}

BOOL sub_252D1BB98(unint64_t a1)
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

  while (v8 == 5);
  return v3 == v5;
}

uint64_t sub_252D1BC78(uint64_t a1, uint64_t a2)
{
  v3[55] = a2;
  v3[56] = v2;
  v3[54] = a1;
  v4 = sub_252E36AD4();
  v3[57] = v4;
  v5 = *(v4 - 8);
  v3[58] = v5;
  v6 = *(v5 + 64) + 15;
  v3[59] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545828, &qword_252E5C408);
  v3[60] = v7;
  v8 = *(v7 - 8);
  v3[61] = v8;
  v9 = *(v8 + 64) + 15;
  v3[62] = swift_task_alloc();
  v10 = sub_252E36AB4();
  v3[63] = v10;
  v11 = *(v10 - 8);
  v3[64] = v11;
  v12 = *(v11 + 64) + 15;
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D1BE0C, 0, 0);
}

uint64_t sub_252D1BE0C()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[57], qword_27F544D18);
  sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E95020, 0xD00000000000008BLL, 0x8000000252E94DB0);
  if (qword_27F53F5E8 != -1)
  {
    swift_once();
  }

  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[63];
  v4 = v0[64];
  v5 = v0[61];
  v6 = v0[62];
  v7 = v0[60];
  v8 = v0[55];
  qword_27F544F70;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v4 + 16))(v2, v1, v3);
  (*(v5 + 16))(v6, v8, v7);
  v9 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v9 + 16), (v0 + 22));

  v10 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
  LOBYTE(v1) = sub_252E338D4();
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  if (v1)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v11 = v0[56];
    __swift_project_value_buffer(v0[57], qword_27F544D60);
    sub_252CC3D90(0xD000000000000040, 0x8000000252E950A0, 0xD00000000000008BLL, 0x8000000252E94DB0);
    v12 = v11[11];
    v13 = v11[12];
    __swift_project_boxed_opaque_existential_1(v11 + 8, v12);
    (*(v13 + 72))(v12, v13);
    v25 = v0[65];
    sub_252E375C4();
    v98 = MEMORY[0x277D84F90];
    LOBYTE(v97) = 2;
    sub_252E36A74();
    sub_252E35F84();
    sub_252E35F74();
    sub_252E35F34();

    v26 = sub_252E36804();
    v28 = v27;

    if (v28)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C290;
      *(inited + 32) = 25705;
      v30 = inited + 32;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = 0xE200000000000000;
      *(inited + 48) = v26;
      *(inited + 56) = v28;
      sub_252CC630C(inited);
      swift_setDeallocating();
      sub_25293847C(v30, &unk_27F541F10, &unk_252E42870);
    }

    v53 = [objc_opt_self() sharedAnalytics];
    if (v53)
    {
      v54 = v53;

      sub_252CC1408(v55);

      v56 = sub_252E36E24();

      [v54 logEventWithType:6504 context:v56];
    }

    v57 = v0[62];
    v58 = v0[60];
    sub_252929E74((v11 + 8), (v0 + 47));
    v100 = v0[51];
    v102 = v0[50];
    __swift_project_boxed_opaque_existential_1(v0 + 47, v102);
    v59 = sub_252E33F24();
    v60 = [v59 filters];

    v104 = v0 + 47;
    if (v60)
    {
      type metadata accessor for HomeFilter();
      v61 = sub_252E37264();
    }

    else
    {
      v61 = MEMORY[0x277D84F90];
    }

    v72 = v0[66];
    v73 = v0[65];
    v75 = v0[63];
    v74 = v0[64];
    v77 = v0[61];
    v76 = v0[62];
    v78 = v0[60];
    v79 = v0[54];
    (*(v100 + 112))(v61, v0 + 42, v102);

    __swift_destroy_boxed_opaque_existential_1(v0 + 42);
    (*(v77 + 8))(v76, v78);
    v80 = *(v74 + 8);
    v80(v73, v75);
    v81 = v72;
    v82 = v75;
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v15 = v0[59];
    v14 = v0[60];
    v16 = v0[57];
    v17 = v0[58];
    v18 = v0[55];
    v19 = __swift_project_value_buffer(v16, qword_27F544D60);
    (*(v17 + 16))(v15, v19, v16);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000041, 0x8000000252E95050);
    v20 = sub_252E33F04();
    v21 = [v20 punchOutURL];

    if (v21)
    {
      v22 = sub_252E36F34();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v32 = v0[59];
    v31 = v0[60];
    v33 = v0[57];
    v34 = v0[58];
    v35 = v0[55];
    v36 = v0[56];
    v0[52] = v22;
    v0[53] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v37 = sub_252E36F94();
    MEMORY[0x2530AD570](v37);

    sub_252CC7784(0, 0xE000000000000000, 0, 0xD00000000000008BLL, 0x8000000252E94DB0);

    (*(v34 + 8))(v32, v33);
    sub_252929E74(v36 + 64, (v0 + 32));
    v38 = v0[35];
    v39 = v0[36];
    __swift_project_boxed_opaque_existential_1(v0 + 32, v38);
    v40 = sub_252E33F04();
    v41 = [v40 punchOutURL];

    if (v41)
    {
      v42 = sub_252E36F34();
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0;
    }

    (*(v39 + 64))(v42, v44, v38, v39);
    v45 = v0[65];

    __swift_destroy_boxed_opaque_existential_1(v0 + 32);
    sub_252E375C4();
    v99 = MEMORY[0x277D84F90];
    LOBYTE(v97) = 2;
    sub_252E36A74();
    sub_252E35F84();
    sub_252E35F74();
    sub_252E35F34();

    v46 = sub_252E36804();
    v48 = v47;

    if (v48)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
      v49 = swift_initStackObject();
      *(v49 + 16) = xmmword_252E3C290;
      v50 = v36;
      *(v49 + 32) = 25705;
      v51 = v49 + 32;
      *(v49 + 72) = MEMORY[0x277D837D0];
      *(v49 + 40) = 0xE200000000000000;
      *(v49 + 48) = v46;
      *(v49 + 56) = v48;
      sub_252CC630C(v49);
      swift_setDeallocating();
      v52 = v51;
      v36 = v50;
      sub_25293847C(v52, &unk_27F541F10, &unk_252E42870);
    }

    v62 = [objc_opt_self() sharedAnalytics];
    if (v62)
    {
      v63 = v62;

      sub_252CC1408(v64);

      v65 = v36;
      v66 = sub_252E36E24();

      [v63 logEventWithType:6504 context:v66];

      v36 = v65;
    }

    v67 = v0[62];
    v68 = v0[60];
    sub_252929E74(v36 + 64, (v0 + 37));
    v101 = v0[41];
    v103 = v0[40];
    __swift_project_boxed_opaque_existential_1(v0 + 37, v103);
    v69 = sub_252E33F24();
    v70 = [v69 filters];

    v104 = v0 + 37;
    if (v70)
    {
      type metadata accessor for HomeFilter();
      v71 = sub_252E37264();
    }

    else
    {
      v71 = MEMORY[0x277D84F90];
    }

    v83 = v0[66];
    v84 = v0[65];
    v86 = v0[63];
    v85 = v0[64];
    v87 = v0[61];
    v88 = v0[62];
    v89 = v0[60];
    v90 = v0[54];
    (*(v101 + 112))(v71, v0 + 27, v103);

    __swift_destroy_boxed_opaque_existential_1(v0 + 27);
    (*(v87 + 8))(v88, v89);
    v80 = *(v85 + 8);
    v80(v84, v86);
    v81 = v83;
    v82 = v86;
  }

  v80(v81, v82);
  __swift_destroy_boxed_opaque_existential_1(v104);
  v91 = v0[66];
  v92 = v0[65];
  v93 = v0[62];
  v94 = v0[59];

  v95 = v0[1];

  return v95();
}

uint64_t sub_252D1C9A0(uint64_t a1, uint64_t a2)
{
  v3[198] = v2;
  v3[197] = a2;
  v3[196] = a1;
  v4 = sub_252E34014();
  v3[199] = v4;
  v5 = *(v4 - 8);
  v3[200] = v5;
  v6 = *(v5 + 64) + 15;
  v3[201] = swift_task_alloc();
  v3[202] = swift_task_alloc();
  v3[203] = swift_task_alloc();
  v3[204] = swift_task_alloc();
  v3[205] = swift_task_alloc();
  v3[206] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545828, &qword_252E5C408);
  v3[207] = v7;
  v8 = *(v7 - 8);
  v3[208] = v8;
  v3[209] = *(v8 + 64);
  v3[210] = swift_task_alloc();
  v3[211] = swift_task_alloc();
  v9 = sub_252E36AB4();
  v3[212] = v9;
  v10 = *(v9 - 8);
  v3[213] = v10;
  v3[214] = *(v10 + 64);
  v3[215] = swift_task_alloc();
  v3[216] = swift_task_alloc();
  v3[217] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D1CB9C, 0, 0);
}

uint64_t sub_252D1CB9C()
{
  v189 = v0;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = v0[207];
  v2 = v0[197];
  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544D18);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();
  v0[193] = 0;
  v0[194] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000002CLL, 0x8000000252E94E60);
  sub_252E37AE4();
  sub_252CC3D90(v0[193], v0[194], 0xD00000000000008BLL, 0x8000000252E94DB0);

  if (qword_27F53F5E8 != -1)
  {
    swift_once();
  }

  v4 = v0[217];
  v5 = v0[216];
  v6 = v0[213];
  v7 = v0[212];
  v8 = v0[211];
  v176 = v0[215];
  v178 = v0[210];
  v181 = v0[214];
  v184 = v0[209];
  v9 = v0[208];
  v174 = v9;
  v175 = v0[207];
  v186 = v0[198];
  v10 = v0[197];
  v11 = qword_27F544F70;
  v0[218] = qword_27F544F70;
  v11;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v12 = *(v6 + 16);
  v12(v5, v4, v7);
  v13 = *(v9 + 16);
  v13(v8, v10, v175);
  v12(v176, v5, v7);
  v13(v178, v8, v175);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = (v181 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (*(v174 + 80) + v15 + 8) & ~*(v174 + 80);
  v17 = swift_allocObject();
  v0[219] = v17;
  v18 = v17 + v14;
  v19 = v17;
  (*(v6 + 32))(v18, v5, v7);
  *(v19 + v15) = v186;
  v20 = v0;
  (*(v174 + 32))(v19 + v16, v8, v175);

  v21 = sub_252E33F04();
  v22 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  v23 = *&v21[v22];

  if (v23 == 100)
  {
    v24 = v20[207];
    v25 = v20[197];
    sub_252E379F4();

    __dst[0] = 0xD000000000000011;
    __dst[1] = 0x8000000252E73E80;
    v20[195] = type metadata accessor for FoundNoMatchingEntitiesResponseHandler();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545830, qword_252E5C4A0);
    v26 = sub_252E36F94();
    MEMORY[0x2530AD570](v26);

    sub_252CC4A5C(__dst[0], __dst[1], 0, 0xD00000000000008BLL, 0x8000000252E94DB0);

    sub_25293DEE0((v20 + 2));
    swift_allocObject();
    memcpy(__dst, v20 + 2, 0x1F8uLL);
    v20[220] = sub_252BE97AC(__dst);
    v20[221] = sub_252E33F24();
    v20[222] = sub_252E33F04();
    v27 = swift_task_alloc();
    v20[223] = v27;
    *v27 = v20;
    v27[1] = sub_252D1E190;

    return sub_252B2B588((v20 + 75));
  }

  v29 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v29 + 16), (v20 + 170));

  v30 = v20[174];
  __swift_project_boxed_opaque_existential_1(v20 + 170, v20[173]);
  if (sub_252E338D4())
  {
    v31 = v20[207];
    v32 = v20[197];
    v33 = sub_252E33F04();
    v34 = OBJC_IVAR___ShowHomeIntentResponse_code;
    swift_beginAccess();
    v35 = *&v33[v34];

    __swift_destroy_boxed_opaque_existential_1(v20 + 170);
    if (v35 == 101)
    {
      v36 = v20[198];
      sub_252CC4050(0xD00000000000005DLL, 0x8000000252E94EF0, 0xD00000000000008BLL, 0x8000000252E94DB0, 0xD00000000000002DLL, 0x8000000252E94F50, 87);
      v37 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
      sub_252929E74((v37 + 288), (v20 + 165));

      v38 = v20[168];
      v39 = v20[169];
      __swift_project_boxed_opaque_existential_1(v20 + 165, v38);
      v40 = (*(v39 + 120))(v38, v39);
      __swift_destroy_boxed_opaque_existential_1(v20 + 165);
      v41 = v36[11];
      v42 = v36[12];
      __swift_project_boxed_opaque_existential_1(v36 + 8, v41);
      if (v40)
      {
        v43 = v20[206];
        sub_252B03B94();
        v44 = swift_task_alloc();
        v20[225] = v44;
        *v44 = v20;
        v44[1] = sub_252D1E770;
        v45 = v20[206];
        v46 = v20[198];
        v193 = v41;
        v194 = v42;
        v192 = 512;
        v191 = 0;
        v47 = &unk_252E5C490;
        v48 = &unk_252E5C498;
        v49 = (v20 + 80);
LABEL_17:

        return sub_252A199A8(v49, v47, v46, v48, 0, v45, 0, 0);
      }

      v97 = v20[205];
      sub_252AD7CC4();
      v98 = swift_task_alloc();
      v20[227] = v98;
      *v98 = v20;
      v98[1] = sub_252D1ED30;
      v78 = v20[205];
      v79 = v20[198];
      v193 = v42;
      v80 = &unk_252E5C480;
      v81 = (v20 + 90);
      goto LABEL_29;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v20 + 170);
  }

  v50 = v20[207];
  v51 = v20[197];
  v52 = sub_252E33F04();
  v53 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  v54 = *&v52[v53];

  if (v54 == 103)
  {
    v55 = v20[198];
    sub_252CC3D90(0xD000000000000013, 0x8000000252E94ED0, 0xD00000000000008BLL, 0x8000000252E94DB0);
    v56 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v56 + 288), (v20 + 145));

    v57 = v20[148];
    v58 = v20[149];
    __swift_project_boxed_opaque_existential_1(v20 + 145, v57);
    v59 = (*(v58 + 120))(v57, v58);
    __swift_destroy_boxed_opaque_existential_1(v20 + 145);
    v41 = v55[11];
    v60 = v55[12];
    __swift_project_boxed_opaque_existential_1(v55 + 8, v41);
    if (v59)
    {
      v61 = v20[204];
      sub_252B03B94();
      v62 = swift_task_alloc();
      v20[229] = v62;
      *v62 = v20;
      v62[1] = sub_252D1F2F0;
      v45 = v20[204];
      v46 = v20[198];
      v193 = v41;
      v194 = v60;
      v192 = 512;
      v191 = 0;
      v47 = &unk_252E5C468;
      v48 = &unk_252E5C470;
      v49 = (v20 + 160);
      goto LABEL_17;
    }

    v76 = v20[203];
    sub_252AD7CC4();
    v77 = swift_task_alloc();
    v20[231] = v77;
    *v77 = v20;
    v77[1] = sub_252D1F8B0;
    v78 = v20[203];
    v79 = v20[198];
    v193 = v60;
    v80 = &unk_252E5C458;
    v81 = (v20 + 150);
    goto LABEL_29;
  }

  v63 = v20[207];
  v64 = v20[197];
  v65 = sub_252E33F04();
  v66 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  v67 = *&v65[v66];

  if (v67 == 102)
  {
    v68 = v20[215];
    v69 = v20[213];
    v70 = v20[212];
    (*(v20[208] + 8))(v20[210], v20[207]);
    v71 = *(v69 + 8);
    v20[233] = v71;
    v20[234] = (v69 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v71(v68, v70);
    v72 = swift_task_alloc();
    v20[235] = v72;
    *v72 = v20;
    v72[1] = sub_252D1FE70;
    v73 = v20[198];
    v74 = v20[197];
    v75 = v20[196];

    return sub_252D22A5C(v75, v74, sub_252D23FC8, v19);
  }

  else
  {
    v82 = v20[207];
    v83 = v20[197];
    v84 = sub_252E33F04();
    v85 = OBJC_IVAR___ShowHomeIntentResponse_code;
    swift_beginAccess();
    v86 = *&v84[v85];

    if (v86 == 104)
    {
      v87 = v20[198];
      sub_252CC3D90(0x2070696C43206F4ELL, 0xED0000646E756F66, 0xD00000000000008BLL, 0x8000000252E94DB0);
      v88 = v87[11];
      v89 = v87[12];
      __swift_project_boxed_opaque_existential_1(v87 + 8, v88);

      sub_252943B8C(sub_252D2422C, v87, v88, v89);
      v90 = v20[215];
      v91 = v20[198];

      sub_252E375C4();
      v172 = MEMORY[0x277D84F90];
      LOBYTE(v171) = 2;
      sub_252E36A74();
      sub_252E35F84();
      sub_252E35F74();
      sub_252E35F34();

      v92 = sub_252E36804();
      v94 = v93;

      if (v94)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_252E3C290;
        *(v95 + 32) = 25705;
        v96 = v95 + 32;
        *(v95 + 72) = MEMORY[0x277D837D0];
        *(v95 + 40) = 0xE200000000000000;
        *(v95 + 48) = v92;
        *(v95 + 56) = v94;
        sub_252CC630C(v95);
        swift_setDeallocating();
        sub_25293847C(v96, &unk_27F541F10, &unk_252E42870);
        swift_deallocClassInstance();
      }

      v123 = [objc_opt_self() sharedAnalytics];
      if (v123)
      {
        v124 = v123;

        sub_252CC1408(v125);

        v126 = sub_252E36E24();

        [v124 logEventWithType:6504 context:v126];
      }

      v127 = v20[210];
      v128 = v20[207];
      sub_252929E74((v87 + 8), (v20 + 135));
      v179 = v20[139];
      v182 = v20[138];
      __swift_project_boxed_opaque_existential_1(v20 + 135, v182);
      v129 = sub_252E33F24();
      v130 = [v129 filters];

      v185 = v20 + 135;
      if (v130)
      {
        type metadata accessor for HomeFilter();
        v131 = sub_252E37264();
      }

      else
      {
        v131 = MEMORY[0x277D84F90];
      }

      v132 = v20;
      v133 = v20[217];
      v134 = v132[215];
      v135 = v132[213];
      v136 = v132[212];
      v137 = v132[210];
      v138 = v132[208];
      v139 = v132[207];
      v140 = v132[196];
      (*(v179 + 112))(v131, v132 + 130, v182);

      __swift_destroy_boxed_opaque_existential_1(v132 + 130);
      (*(v138 + 8))(v137, v139);
      v141 = *(v135 + 8);
      v141(v134, v136);
      v142 = v133;
      v143 = v136;
    }

    else
    {
      v99 = v20[207];
      v100 = v20[197];
      v101 = sub_252E33F04();
      v102 = OBJC_IVAR___ShowHomeIntentResponse_code;
      swift_beginAccess();
      v103 = *&v101[v102];

      v104 = v20[198];
      if (v103 != 105)
      {
        sub_252CC3D90(0xD000000000000019, 0x8000000252E94E90, 0xD00000000000008BLL, 0x8000000252E94DB0);
        v107 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
        sub_252929E74((v107 + 288), (v20 + 100));

        v108 = v20[103];
        v109 = v20[104];
        __swift_project_boxed_opaque_existential_1(v20 + 100, v108);
        v110 = (*(v109 + 120))(v108, v109);
        __swift_destroy_boxed_opaque_existential_1(v20 + 100);
        v41 = v104[11];
        v111 = v104[12];
        __swift_project_boxed_opaque_existential_1(v104 + 8, v41);
        if (v110)
        {
          v112 = v20[202];
          sub_252B03B94();
          v113 = swift_task_alloc();
          v20[237] = v113;
          *v113 = v20;
          v113[1] = sub_252D200A4;
          v45 = v20[202];
          v46 = v20[198];
          v193 = v41;
          v194 = v111;
          v192 = 512;
          v191 = 0;
          v47 = &unk_252E5C440;
          v48 = &unk_252E5C448;
          v49 = (v20 + 115);
          goto LABEL_17;
        }

        v114 = v20[201];
        sub_252AD7CC4();
        v115 = swift_task_alloc();
        v20[239] = v115;
        *v115 = v20;
        v115[1] = sub_252D20664;
        v78 = v20[201];
        v79 = v20[198];
        v193 = v111;
        v80 = &unk_252E5C430;
        v81 = (v20 + 105);
LABEL_29:

        return sub_252BDB88C(v81, v80, v79, v78, 0, 0, 0, v41);
      }

      sub_252CC3D90(0xD000000000000017, 0x8000000252E94EB0, 0xD00000000000008BLL, 0x8000000252E94DB0);
      v105 = v104[11];
      v106 = v104[12];
      __swift_project_boxed_opaque_existential_1(v104 + 8, v105);

      sub_252943B8C(sub_252D241E8, v104, v105, v106);
      v116 = v20[215];
      v117 = v20[198];

      sub_252E375C4();
      v173 = MEMORY[0x277D84F90];
      LOBYTE(v171) = 2;
      sub_252E36A74();
      sub_252E35F84();
      sub_252E35F74();
      sub_252E35F34();

      v118 = sub_252E36804();
      v120 = v119;

      if (v120)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
        v121 = swift_allocObject();
        *(v121 + 16) = xmmword_252E3C290;
        *(v121 + 32) = 25705;
        v122 = v121 + 32;
        *(v121 + 72) = MEMORY[0x277D837D0];
        *(v121 + 40) = 0xE200000000000000;
        *(v121 + 48) = v118;
        *(v121 + 56) = v120;
        sub_252CC630C(v121);
        swift_setDeallocating();
        sub_25293847C(v122, &unk_27F541F10, &unk_252E42870);
        swift_deallocClassInstance();
      }

      v144 = [objc_opt_self() sharedAnalytics];
      if (v144)
      {
        v145 = v144;

        sub_252CC1408(v146);

        v147 = sub_252E36E24();

        [v145 logEventWithType:6504 context:v147];
      }

      v148 = v20[210];
      v149 = v20[207];
      sub_252929E74((v104 + 8), (v20 + 125));
      v180 = v20[129];
      v183 = v20[128];
      __swift_project_boxed_opaque_existential_1(v20 + 125, v183);
      v150 = sub_252E33F24();
      v151 = [v150 filters];

      v185 = v20 + 125;
      if (v151)
      {
        type metadata accessor for HomeFilter();
        v152 = sub_252E37264();
      }

      else
      {
        v152 = MEMORY[0x277D84F90];
      }

      v177 = v20[217];
      v132 = v20;
      v153 = v20[215];
      v154 = v20[213];
      v155 = v20[212];
      v156 = v20[210];
      v157 = v20[208];
      v158 = v20[207];
      v159 = v20[196];
      (*(v180 + 112))(v152, v20 + 120, v183);

      __swift_destroy_boxed_opaque_existential_1(v20 + 120);
      (*(v157 + 8))(v156, v158);
      v141 = *(v154 + 8);
      v141(v153, v155);
      v142 = v177;
      v143 = v155;
    }

    v141(v142, v143);
    __swift_destroy_boxed_opaque_existential_1(v185);

    v160 = v132[217];
    v161 = v132[216];
    v162 = v132[215];
    v163 = v132[211];
    v164 = v132[210];
    v165 = v132[206];
    v166 = v132[205];
    v167 = v132[204];
    v168 = v132[203];
    v169 = v132[202];
    v187 = v132[201];

    v170 = v132[1];

    return v170();
  }
}

uint64_t sub_252D1E190()
{
  v2 = *v1;
  v3 = *(*v1 + 1784);
  v4 = *v1;
  v2[224] = v0;

  v5 = v2[222];
  v6 = v2[221];
  v7 = v2[220];
  if (v0)
  {
    v8 = v2[215];
    v9 = v2[213];
    v10 = v2[212];
    v11 = v2[210];
    v12 = v2[208];
    v13 = v2[207];

    (*(v12 + 8))(v11, v13);
    v14 = *(v9 + 8);
    v2[241] = v14;
    v2[242] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v8, v10);
    v15 = sub_252D20C24;
  }

  else
  {

    v15 = sub_252D1E378;
  }

  return MEMORY[0x2822009F8](v15, 0, 0);
}

uint64_t sub_252D1E378()
{
  v1 = v0[218];
  v2 = v0[215];
  sub_252E375C4();
  v39 = MEMORY[0x277D84F90];
  LOBYTE(v38) = 2;
  sub_252E36A74();
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v3 = sub_252E36804();
  v5 = v4;

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_252E3C290;
    *(v6 + 32) = 25705;
    v7 = v6 + 32;
    *(v6 + 72) = MEMORY[0x277D837D0];
    *(v6 + 40) = 0xE200000000000000;
    *(v6 + 48) = v3;
    *(v6 + 56) = v5;
    sub_252CC630C(v6);
    swift_setDeallocating();
    sub_25293847C(v7, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v8 = [objc_opt_self() sharedAnalytics];
  if (v8)
  {
    v9 = v8;

    sub_252CC1408(v10);

    v11 = sub_252E36E24();

    [v9 logEventWithType:6504 context:v11];
  }

  v12 = v0[210];
  v13 = v0[207];
  sub_252929E74(v0[198] + 64, (v0 + 65));
  v41 = v0[69];
  v42 = v0[68];
  __swift_project_boxed_opaque_existential_1(v0 + 65, v42);
  v14 = sub_252E33F24();
  v15 = [v14 filters];

  if (v15)
  {
    type metadata accessor for HomeFilter();
    v16 = sub_252E37264();
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v40 = v0[219];
  v17 = v0[217];
  v18 = v0[215];
  v19 = v0[213];
  v20 = v0[212];
  v21 = v0[210];
  v22 = v0[208];
  v23 = v0[207];
  v24 = v0[196];
  (*(v41 + 112))(v16, v0 + 75, v42);

  __swift_destroy_boxed_opaque_existential_1(v0 + 75);
  (*(v22 + 8))(v21, v23);
  v25 = *(v19 + 8);
  v25(v18, v20);
  v25(v17, v20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 65);

  v26 = v0[217];
  v27 = v0[216];
  v28 = v0[215];
  v29 = v0[211];
  v30 = v0[210];
  v31 = v0[206];
  v32 = v0[205];
  v33 = v0[204];
  v34 = v0[203];
  v35 = v0[202];
  v43 = v0[201];

  v36 = v0[1];

  return v36();
}

uint64_t sub_252D1E770()
{
  v2 = *v1;
  v3 = *(*v1 + 1800);
  v13 = *v1;
  *(*v1 + 1808) = v0;

  if (v0)
  {
    v4 = v2[215];
    v5 = v2[213];
    v6 = v2[212];
    v7 = v2[210];
    v8 = v2[208];
    v9 = v2[207];
    (*(v2[200] + 8))(v2[206], v2[199]);
    (*(v8 + 8))(v7, v9);
    v10 = *(v5 + 8);
    v2[243] = v10;
    v2[244] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v4, v6);
    v11 = sub_252D20D48;
  }

  else
  {
    (*(v2[200] + 8))(v2[206], v2[199]);
    v11 = sub_252D1E92C;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_252D1E92C()
{
  sub_252A52D18((v0 + 640), v0 + 560);
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1720);
  sub_252E375C4();
  v39 = MEMORY[0x277D84F90];
  LOBYTE(v38) = 2;
  sub_252E36A74();
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v3 = sub_252E36804();
  v5 = v4;

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_252E3C290;
    *(v6 + 32) = 25705;
    v7 = v6 + 32;
    *(v6 + 72) = MEMORY[0x277D837D0];
    *(v6 + 40) = 0xE200000000000000;
    *(v6 + 48) = v3;
    *(v6 + 56) = v5;
    sub_252CC630C(v6);
    swift_setDeallocating();
    sub_25293847C(v7, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v8 = [objc_opt_self() sharedAnalytics];
  if (v8)
  {
    v9 = v8;

    sub_252CC1408(v10);

    v11 = sub_252E36E24();

    [v9 logEventWithType:6504 context:v11];
  }

  v12 = *(v0 + 1680);
  v13 = *(v0 + 1656);
  sub_252929E74(*(v0 + 1584) + 64, v0 + 680);
  v41 = *(v0 + 712);
  v42 = *(v0 + 704);
  __swift_project_boxed_opaque_existential_1((v0 + 680), v42);
  v14 = sub_252E33F24();
  v15 = [v14 filters];

  if (v15)
  {
    type metadata accessor for HomeFilter();
    v16 = sub_252E37264();
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v40 = *(v0 + 1752);
  v17 = *(v0 + 1736);
  v18 = *(v0 + 1720);
  v19 = *(v0 + 1704);
  v20 = *(v0 + 1696);
  v21 = *(v0 + 1680);
  v22 = *(v0 + 1664);
  v23 = *(v0 + 1656);
  v24 = *(v0 + 1568);
  (*(v41 + 112))(v16, v0 + 560, v42);

  __swift_destroy_boxed_opaque_existential_1((v0 + 560));
  (*(v22 + 8))(v21, v23);
  v25 = *(v19 + 8);
  v25(v18, v20);
  v25(v17, v20);
  __swift_destroy_boxed_opaque_existential_1((v0 + 680));

  v26 = *(v0 + 1736);
  v27 = *(v0 + 1728);
  v28 = *(v0 + 1720);
  v29 = *(v0 + 1688);
  v30 = *(v0 + 1680);
  v31 = *(v0 + 1648);
  v32 = *(v0 + 1640);
  v33 = *(v0 + 1632);
  v34 = *(v0 + 1624);
  v35 = *(v0 + 1616);
  v43 = *(v0 + 1608);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_252D1ED30()
{
  v2 = *v1;
  v3 = *(*v1 + 1816);
  v13 = *v1;
  *(*v1 + 1824) = v0;

  if (v0)
  {
    v4 = v2[215];
    v5 = v2[213];
    v6 = v2[212];
    v7 = v2[210];
    v8 = v2[208];
    v9 = v2[207];
    (*(v2[200] + 8))(v2[205], v2[199]);
    (*(v8 + 8))(v7, v9);
    v10 = *(v5 + 8);
    v2[245] = v10;
    v2[246] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v4, v6);
    v11 = sub_252D20E6C;
  }

  else
  {
    (*(v2[200] + 8))(v2[205], v2[199]);
    v11 = sub_252D1EEEC;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_252D1EEEC()
{
  sub_252A52D18((v0 + 720), v0 + 560);
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1720);
  sub_252E375C4();
  v39 = MEMORY[0x277D84F90];
  LOBYTE(v38) = 2;
  sub_252E36A74();
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v3 = sub_252E36804();
  v5 = v4;

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_252E3C290;
    *(v6 + 32) = 25705;
    v7 = v6 + 32;
    *(v6 + 72) = MEMORY[0x277D837D0];
    *(v6 + 40) = 0xE200000000000000;
    *(v6 + 48) = v3;
    *(v6 + 56) = v5;
    sub_252CC630C(v6);
    swift_setDeallocating();
    sub_25293847C(v7, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v8 = [objc_opt_self() sharedAnalytics];
  if (v8)
  {
    v9 = v8;

    sub_252CC1408(v10);

    v11 = sub_252E36E24();

    [v9 logEventWithType:6504 context:v11];
  }

  v12 = *(v0 + 1680);
  v13 = *(v0 + 1656);
  sub_252929E74(*(v0 + 1584) + 64, v0 + 680);
  v41 = *(v0 + 712);
  v42 = *(v0 + 704);
  __swift_project_boxed_opaque_existential_1((v0 + 680), v42);
  v14 = sub_252E33F24();
  v15 = [v14 filters];

  if (v15)
  {
    type metadata accessor for HomeFilter();
    v16 = sub_252E37264();
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v40 = *(v0 + 1752);
  v17 = *(v0 + 1736);
  v18 = *(v0 + 1720);
  v19 = *(v0 + 1704);
  v20 = *(v0 + 1696);
  v21 = *(v0 + 1680);
  v22 = *(v0 + 1664);
  v23 = *(v0 + 1656);
  v24 = *(v0 + 1568);
  (*(v41 + 112))(v16, v0 + 560, v42);

  __swift_destroy_boxed_opaque_existential_1((v0 + 560));
  (*(v22 + 8))(v21, v23);
  v25 = *(v19 + 8);
  v25(v18, v20);
  v25(v17, v20);
  __swift_destroy_boxed_opaque_existential_1((v0 + 680));

  v26 = *(v0 + 1736);
  v27 = *(v0 + 1728);
  v28 = *(v0 + 1720);
  v29 = *(v0 + 1688);
  v30 = *(v0 + 1680);
  v31 = *(v0 + 1648);
  v32 = *(v0 + 1640);
  v33 = *(v0 + 1632);
  v34 = *(v0 + 1624);
  v35 = *(v0 + 1616);
  v43 = *(v0 + 1608);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_252D1F2F0()
{
  v2 = *v1;
  v3 = *(*v1 + 1832);
  v13 = *v1;
  *(*v1 + 1840) = v0;

  if (v0)
  {
    v4 = v2[215];
    v5 = v2[213];
    v6 = v2[212];
    v7 = v2[210];
    v8 = v2[208];
    v9 = v2[207];
    (*(v2[200] + 8))(v2[204], v2[199]);
    (*(v8 + 8))(v7, v9);
    v10 = *(v5 + 8);
    v2[247] = v10;
    v2[248] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v4, v6);
    v11 = sub_252D20F90;
  }

  else
  {
    (*(v2[200] + 8))(v2[204], v2[199]);
    v11 = sub_252D1F4AC;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_252D1F4AC()
{
  sub_252A52D18((v0 + 1280), v0 + 1120);
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1720);
  sub_252E375C4();
  v39 = MEMORY[0x277D84F90];
  LOBYTE(v38) = 2;
  sub_252E36A74();
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v3 = sub_252E36804();
  v5 = v4;

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_252E3C290;
    *(v6 + 32) = 25705;
    v7 = v6 + 32;
    *(v6 + 72) = MEMORY[0x277D837D0];
    *(v6 + 40) = 0xE200000000000000;
    *(v6 + 48) = v3;
    *(v6 + 56) = v5;
    sub_252CC630C(v6);
    swift_setDeallocating();
    sub_25293847C(v7, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v8 = [objc_opt_self() sharedAnalytics];
  if (v8)
  {
    v9 = v8;

    sub_252CC1408(v10);

    v11 = sub_252E36E24();

    [v9 logEventWithType:6504 context:v11];
  }

  v12 = *(v0 + 1680);
  v13 = *(v0 + 1656);
  sub_252929E74(*(v0 + 1584) + 64, v0 + 1240);
  v41 = *(v0 + 1272);
  v42 = *(v0 + 1264);
  __swift_project_boxed_opaque_existential_1((v0 + 1240), v42);
  v14 = sub_252E33F24();
  v15 = [v14 filters];

  if (v15)
  {
    type metadata accessor for HomeFilter();
    v16 = sub_252E37264();
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v40 = *(v0 + 1752);
  v17 = *(v0 + 1736);
  v18 = *(v0 + 1720);
  v19 = *(v0 + 1704);
  v20 = *(v0 + 1696);
  v21 = *(v0 + 1680);
  v22 = *(v0 + 1664);
  v23 = *(v0 + 1656);
  v24 = *(v0 + 1568);
  (*(v41 + 112))(v16, v0 + 1120, v42);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1120));
  (*(v22 + 8))(v21, v23);
  v25 = *(v19 + 8);
  v25(v18, v20);
  v25(v17, v20);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1240));

  v26 = *(v0 + 1736);
  v27 = *(v0 + 1728);
  v28 = *(v0 + 1720);
  v29 = *(v0 + 1688);
  v30 = *(v0 + 1680);
  v31 = *(v0 + 1648);
  v32 = *(v0 + 1640);
  v33 = *(v0 + 1632);
  v34 = *(v0 + 1624);
  v35 = *(v0 + 1616);
  v43 = *(v0 + 1608);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_252D1F8B0()
{
  v2 = *v1;
  v3 = *(*v1 + 1848);
  v13 = *v1;
  *(*v1 + 1856) = v0;

  if (v0)
  {
    v4 = v2[215];
    v5 = v2[213];
    v6 = v2[212];
    v7 = v2[210];
    v8 = v2[208];
    v9 = v2[207];
    (*(v2[200] + 8))(v2[203], v2[199]);
    (*(v8 + 8))(v7, v9);
    v10 = *(v5 + 8);
    v2[249] = v10;
    v2[250] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v4, v6);
    v11 = sub_252D210B4;
  }

  else
  {
    (*(v2[200] + 8))(v2[203], v2[199]);
    v11 = sub_252D1FA6C;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_252D1FA6C()
{
  sub_252A52D18((v0 + 1200), v0 + 1120);
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1720);
  sub_252E375C4();
  v39 = MEMORY[0x277D84F90];
  LOBYTE(v38) = 2;
  sub_252E36A74();
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v3 = sub_252E36804();
  v5 = v4;

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_252E3C290;
    *(v6 + 32) = 25705;
    v7 = v6 + 32;
    *(v6 + 72) = MEMORY[0x277D837D0];
    *(v6 + 40) = 0xE200000000000000;
    *(v6 + 48) = v3;
    *(v6 + 56) = v5;
    sub_252CC630C(v6);
    swift_setDeallocating();
    sub_25293847C(v7, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v8 = [objc_opt_self() sharedAnalytics];
  if (v8)
  {
    v9 = v8;

    sub_252CC1408(v10);

    v11 = sub_252E36E24();

    [v9 logEventWithType:6504 context:v11];
  }

  v12 = *(v0 + 1680);
  v13 = *(v0 + 1656);
  sub_252929E74(*(v0 + 1584) + 64, v0 + 1240);
  v41 = *(v0 + 1272);
  v42 = *(v0 + 1264);
  __swift_project_boxed_opaque_existential_1((v0 + 1240), v42);
  v14 = sub_252E33F24();
  v15 = [v14 filters];

  if (v15)
  {
    type metadata accessor for HomeFilter();
    v16 = sub_252E37264();
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v40 = *(v0 + 1752);
  v17 = *(v0 + 1736);
  v18 = *(v0 + 1720);
  v19 = *(v0 + 1704);
  v20 = *(v0 + 1696);
  v21 = *(v0 + 1680);
  v22 = *(v0 + 1664);
  v23 = *(v0 + 1656);
  v24 = *(v0 + 1568);
  (*(v41 + 112))(v16, v0 + 1120, v42);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1120));
  (*(v22 + 8))(v21, v23);
  v25 = *(v19 + 8);
  v25(v18, v20);
  v25(v17, v20);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1240));

  v26 = *(v0 + 1736);
  v27 = *(v0 + 1728);
  v28 = *(v0 + 1720);
  v29 = *(v0 + 1688);
  v30 = *(v0 + 1680);
  v31 = *(v0 + 1648);
  v32 = *(v0 + 1640);
  v33 = *(v0 + 1632);
  v34 = *(v0 + 1624);
  v35 = *(v0 + 1616);
  v43 = *(v0 + 1608);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_252D1FE70()
{
  v2 = *(*v1 + 1880);
  v5 = *v1;
  *(*v1 + 1888) = v0;

  if (v0)
  {
    v3 = sub_252D211D8;
  }

  else
  {
    v3 = sub_252D1FF84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252D1FF84()
{
  v1 = *(v0 + 1872);
  v2 = *(v0 + 1752);
  (*(v0 + 1864))(*(v0 + 1736), *(v0 + 1696));

  v3 = *(v0 + 1736);
  v4 = *(v0 + 1728);
  v5 = *(v0 + 1720);
  v6 = *(v0 + 1688);
  v7 = *(v0 + 1680);
  v8 = *(v0 + 1648);
  v9 = *(v0 + 1640);
  v10 = *(v0 + 1632);
  v11 = *(v0 + 1624);
  v12 = *(v0 + 1616);
  v15 = *(v0 + 1608);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252D200A4()
{
  v2 = *v1;
  v3 = *(*v1 + 1896);
  v13 = *v1;
  *(*v1 + 1904) = v0;

  if (v0)
  {
    v4 = v2[215];
    v5 = v2[213];
    v6 = v2[212];
    v7 = v2[210];
    v8 = v2[208];
    v9 = v2[207];
    (*(v2[200] + 8))(v2[202], v2[199]);
    (*(v8 + 8))(v7, v9);
    v10 = *(v5 + 8);
    v2[251] = v10;
    v2[252] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v4, v6);
    v11 = sub_252D212FC;
  }

  else
  {
    (*(v2[200] + 8))(v2[202], v2[199]);
    v11 = sub_252D20260;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_252D20260()
{
  sub_252A52D18((v0 + 920), v0 + 760);
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1720);
  sub_252E375C4();
  v39 = MEMORY[0x277D84F90];
  LOBYTE(v38) = 2;
  sub_252E36A74();
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v3 = sub_252E36804();
  v5 = v4;

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_252E3C290;
    *(v6 + 32) = 25705;
    v7 = v6 + 32;
    *(v6 + 72) = MEMORY[0x277D837D0];
    *(v6 + 40) = 0xE200000000000000;
    *(v6 + 48) = v3;
    *(v6 + 56) = v5;
    sub_252CC630C(v6);
    swift_setDeallocating();
    sub_25293847C(v7, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v8 = [objc_opt_self() sharedAnalytics];
  if (v8)
  {
    v9 = v8;

    sub_252CC1408(v10);

    v11 = sub_252E36E24();

    [v9 logEventWithType:6504 context:v11];
  }

  v12 = *(v0 + 1680);
  v13 = *(v0 + 1656);
  sub_252929E74(*(v0 + 1584) + 64, v0 + 880);
  v41 = *(v0 + 912);
  v42 = *(v0 + 904);
  __swift_project_boxed_opaque_existential_1((v0 + 880), v42);
  v14 = sub_252E33F24();
  v15 = [v14 filters];

  if (v15)
  {
    type metadata accessor for HomeFilter();
    v16 = sub_252E37264();
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v40 = *(v0 + 1752);
  v17 = *(v0 + 1736);
  v18 = *(v0 + 1720);
  v19 = *(v0 + 1704);
  v20 = *(v0 + 1696);
  v21 = *(v0 + 1680);
  v22 = *(v0 + 1664);
  v23 = *(v0 + 1656);
  v24 = *(v0 + 1568);
  (*(v41 + 112))(v16, v0 + 760, v42);

  __swift_destroy_boxed_opaque_existential_1((v0 + 760));
  (*(v22 + 8))(v21, v23);
  v25 = *(v19 + 8);
  v25(v18, v20);
  v25(v17, v20);
  __swift_destroy_boxed_opaque_existential_1((v0 + 880));

  v26 = *(v0 + 1736);
  v27 = *(v0 + 1728);
  v28 = *(v0 + 1720);
  v29 = *(v0 + 1688);
  v30 = *(v0 + 1680);
  v31 = *(v0 + 1648);
  v32 = *(v0 + 1640);
  v33 = *(v0 + 1632);
  v34 = *(v0 + 1624);
  v35 = *(v0 + 1616);
  v43 = *(v0 + 1608);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_252D20664()
{
  v2 = *v1;
  v3 = *(*v1 + 1912);
  v13 = *v1;
  *(*v1 + 1920) = v0;

  if (v0)
  {
    v4 = v2[215];
    v5 = v2[213];
    v6 = v2[212];
    v7 = v2[210];
    v8 = v2[208];
    v9 = v2[207];
    (*(v2[200] + 8))(v2[201], v2[199]);
    (*(v8 + 8))(v7, v9);
    v10 = *(v5 + 8);
    v2[253] = v10;
    v2[254] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v4, v6);
    v11 = sub_252D21420;
  }

  else
  {
    (*(v2[200] + 8))(v2[201], v2[199]);
    v11 = sub_252D20820;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_252D20820()
{
  sub_252A52D18((v0 + 840), v0 + 760);
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1720);
  sub_252E375C4();
  v39 = MEMORY[0x277D84F90];
  LOBYTE(v38) = 2;
  sub_252E36A74();
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v3 = sub_252E36804();
  v5 = v4;

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_252E3C290;
    *(v6 + 32) = 25705;
    v7 = v6 + 32;
    *(v6 + 72) = MEMORY[0x277D837D0];
    *(v6 + 40) = 0xE200000000000000;
    *(v6 + 48) = v3;
    *(v6 + 56) = v5;
    sub_252CC630C(v6);
    swift_setDeallocating();
    sub_25293847C(v7, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v8 = [objc_opt_self() sharedAnalytics];
  if (v8)
  {
    v9 = v8;

    sub_252CC1408(v10);

    v11 = sub_252E36E24();

    [v9 logEventWithType:6504 context:v11];
  }

  v12 = *(v0 + 1680);
  v13 = *(v0 + 1656);
  sub_252929E74(*(v0 + 1584) + 64, v0 + 880);
  v41 = *(v0 + 912);
  v42 = *(v0 + 904);
  __swift_project_boxed_opaque_existential_1((v0 + 880), v42);
  v14 = sub_252E33F24();
  v15 = [v14 filters];

  if (v15)
  {
    type metadata accessor for HomeFilter();
    v16 = sub_252E37264();
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v40 = *(v0 + 1752);
  v17 = *(v0 + 1736);
  v18 = *(v0 + 1720);
  v19 = *(v0 + 1704);
  v20 = *(v0 + 1696);
  v21 = *(v0 + 1680);
  v22 = *(v0 + 1664);
  v23 = *(v0 + 1656);
  v24 = *(v0 + 1568);
  (*(v41 + 112))(v16, v0 + 760, v42);

  __swift_destroy_boxed_opaque_existential_1((v0 + 760));
  (*(v22 + 8))(v21, v23);
  v25 = *(v19 + 8);
  v25(v18, v20);
  v25(v17, v20);
  __swift_destroy_boxed_opaque_existential_1((v0 + 880));

  v26 = *(v0 + 1736);
  v27 = *(v0 + 1728);
  v28 = *(v0 + 1720);
  v29 = *(v0 + 1688);
  v30 = *(v0 + 1680);
  v31 = *(v0 + 1648);
  v32 = *(v0 + 1640);
  v33 = *(v0 + 1632);
  v34 = *(v0 + 1624);
  v35 = *(v0 + 1616);
  v43 = *(v0 + 1608);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_252D20C24()
{
  v1 = *(v0 + 1936);
  v2 = *(v0 + 1752);
  (*(v0 + 1928))(*(v0 + 1736), *(v0 + 1696));

  v3 = *(v0 + 1736);
  v4 = *(v0 + 1728);
  v5 = *(v0 + 1720);
  v6 = *(v0 + 1688);
  v7 = *(v0 + 1680);
  v8 = *(v0 + 1648);
  v9 = *(v0 + 1640);
  v10 = *(v0 + 1632);
  v11 = *(v0 + 1624);
  v12 = *(v0 + 1616);
  v15 = *(v0 + 1608);
  v16 = *(v0 + 1792);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252D20D48()
{
  v1 = *(v0 + 1952);
  v2 = *(v0 + 1752);
  (*(v0 + 1944))(*(v0 + 1736), *(v0 + 1696));

  v3 = *(v0 + 1736);
  v4 = *(v0 + 1728);
  v5 = *(v0 + 1720);
  v6 = *(v0 + 1688);
  v7 = *(v0 + 1680);
  v8 = *(v0 + 1648);
  v9 = *(v0 + 1640);
  v10 = *(v0 + 1632);
  v11 = *(v0 + 1624);
  v12 = *(v0 + 1616);
  v15 = *(v0 + 1608);
  v16 = *(v0 + 1808);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252D20E6C()
{
  v1 = *(v0 + 1968);
  v2 = *(v0 + 1752);
  (*(v0 + 1960))(*(v0 + 1736), *(v0 + 1696));

  v3 = *(v0 + 1736);
  v4 = *(v0 + 1728);
  v5 = *(v0 + 1720);
  v6 = *(v0 + 1688);
  v7 = *(v0 + 1680);
  v8 = *(v0 + 1648);
  v9 = *(v0 + 1640);
  v10 = *(v0 + 1632);
  v11 = *(v0 + 1624);
  v12 = *(v0 + 1616);
  v15 = *(v0 + 1608);
  v16 = *(v0 + 1824);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252D20F90()
{
  v1 = *(v0 + 1984);
  v2 = *(v0 + 1752);
  (*(v0 + 1976))(*(v0 + 1736), *(v0 + 1696));

  v3 = *(v0 + 1736);
  v4 = *(v0 + 1728);
  v5 = *(v0 + 1720);
  v6 = *(v0 + 1688);
  v7 = *(v0 + 1680);
  v8 = *(v0 + 1648);
  v9 = *(v0 + 1640);
  v10 = *(v0 + 1632);
  v11 = *(v0 + 1624);
  v12 = *(v0 + 1616);
  v15 = *(v0 + 1608);
  v16 = *(v0 + 1840);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252D210B4()
{
  v1 = *(v0 + 2000);
  v2 = *(v0 + 1752);
  (*(v0 + 1992))(*(v0 + 1736), *(v0 + 1696));

  v3 = *(v0 + 1736);
  v4 = *(v0 + 1728);
  v5 = *(v0 + 1720);
  v6 = *(v0 + 1688);
  v7 = *(v0 + 1680);
  v8 = *(v0 + 1648);
  v9 = *(v0 + 1640);
  v10 = *(v0 + 1632);
  v11 = *(v0 + 1624);
  v12 = *(v0 + 1616);
  v15 = *(v0 + 1608);
  v16 = *(v0 + 1856);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252D211D8()
{
  v1 = *(v0 + 1872);
  v2 = *(v0 + 1752);
  (*(v0 + 1864))(*(v0 + 1736), *(v0 + 1696));

  v3 = *(v0 + 1736);
  v4 = *(v0 + 1728);
  v5 = *(v0 + 1720);
  v6 = *(v0 + 1688);
  v7 = *(v0 + 1680);
  v8 = *(v0 + 1648);
  v9 = *(v0 + 1640);
  v10 = *(v0 + 1632);
  v11 = *(v0 + 1624);
  v12 = *(v0 + 1616);
  v15 = *(v0 + 1608);
  v16 = *(v0 + 1888);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252D212FC()
{
  v1 = *(v0 + 2016);
  v2 = *(v0 + 1752);
  (*(v0 + 2008))(*(v0 + 1736), *(v0 + 1696));

  v3 = *(v0 + 1736);
  v4 = *(v0 + 1728);
  v5 = *(v0 + 1720);
  v6 = *(v0 + 1688);
  v7 = *(v0 + 1680);
  v8 = *(v0 + 1648);
  v9 = *(v0 + 1640);
  v10 = *(v0 + 1632);
  v11 = *(v0 + 1624);
  v12 = *(v0 + 1616);
  v15 = *(v0 + 1608);
  v16 = *(v0 + 1904);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252D21420()
{
  v1 = *(v0 + 2032);
  v2 = *(v0 + 1752);
  (*(v0 + 2024))(*(v0 + 1736), *(v0 + 1696));

  v3 = *(v0 + 1736);
  v4 = *(v0 + 1728);
  v5 = *(v0 + 1720);
  v6 = *(v0 + 1688);
  v7 = *(v0 + 1680);
  v8 = *(v0 + 1648);
  v9 = *(v0 + 1640);
  v10 = *(v0 + 1632);
  v11 = *(v0 + 1624);
  v12 = *(v0 + 1616);
  v15 = *(v0 + 1608);
  v16 = *(v0 + 1920);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252D21544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27F53F5E8 != -1)
  {
    swift_once();
  }

  sub_252E375C4();
  v21 = MEMORY[0x277D84F90];
  LOBYTE(v20) = 2;
  sub_252E36A74();
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v5 = sub_252E36804();
  v7 = v6;

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = 25705;
    v9 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v5;
    *(inited + 56) = v7;
    sub_252CC630C(inited);
    swift_setDeallocating();
    sub_25293847C(v9, &unk_27F541F10, &unk_252E42870);
  }

  v10 = [objc_opt_self() sharedAnalytics];
  if (v10)
  {
    v11 = v10;

    sub_252CC1408(v12);

    v13 = sub_252E36E24();

    [v11 logEventWithType:6504 context:v13];
  }

  else
  {
  }

  sub_252929E74(a3 + 64, v22);
  v14 = v23;
  v15 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545828, &qword_252E5C408);
  v16 = sub_252E33F24();
  v17 = [v16 filters];

  if (v17)
  {
    type metadata accessor for HomeFilter();
    v18 = sub_252E37264();
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  (*(v15 + 112))(v18, a1, v14, v15);

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_252D21864()
{
  v1 = *(*(v0 + 16) + 104);
  v2 = *(MEMORY[0x277D55C70] + 4);
  v6 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_252CB8014;
  v4 = MEMORY[0x277D84F90];

  return v6(0xD00000000000002CLL, 0x8000000252E94F80, v4);
}

uint64_t sub_252D21930(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for HomeAutomationCameraBulletinNotAllowedErrorParameters(0);
  v1[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D219FC, 0, 0);
}

uint64_t sub_252D219FC()
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
  *v7 = 0x401C000000000000;
  *(v7 + 8) = 0;
  sub_252E37024();
  v6(v3, 0, 1, v5);
  sub_252956C98(v3, v1);
  v8 = sub_252C060F4();
  v0[6] = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_252D21BA8;

  return v12(0xD00000000000002CLL, 0x8000000252E94F80, v8);
}

uint64_t sub_252D21BA8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v8 = sub_252D21D88;
  }

  else
  {
    *(v4 + 72) = a1;
    v8 = sub_252D21CF4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252D21CF4()
{
  v1 = v0[3];
  sub_252D244B0(v0[5], type metadata accessor for HomeAutomationCameraBulletinNotAllowedErrorParameters);

  v2 = v0[1];
  v3 = v0[9];

  return v2(v3);
}

uint64_t sub_252D21D88()
{
  v1 = v0[3];
  sub_252D244B0(v0[5], type metadata accessor for HomeAutomationCameraBulletinNotAllowedErrorParameters);

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_252D21E38()
{
  v1 = *(*(v0 + 16) + 104);
  v2 = *(MEMORY[0x277D55C70] + 4);
  v6 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_252CBD840;
  v4 = MEMORY[0x277D84F90];

  return v6(0xD000000000000022, 0x8000000252E94FB0, v4);
}

uint64_t sub_252D21F04(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for HomeAutomationUnsupportedShowHomeParameters(0);
  v1[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D21FD0, 0, 0);
}

uint64_t sub_252D21FD0()
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
  *v7 = 0x4000000000000000;
  *(v7 + 8) = 0;
  sub_252E37024();
  v6(v3, 0, 1, v5);
  sub_252956C98(v3, v1);
  v8 = sub_252C0B2F0();
  v0[6] = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_252D2217C;

  return v12(0xD000000000000022, 0x8000000252E94FB0, v8);
}

uint64_t sub_252D2217C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v8 = sub_252D2235C;
  }

  else
  {
    *(v4 + 72) = a1;
    v8 = sub_252D222C8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252D222C8()
{
  v1 = v0[3];
  sub_252D244B0(v0[5], type metadata accessor for HomeAutomationUnsupportedShowHomeParameters);

  v2 = v0[1];
  v3 = v0[9];

  return v2(v3);
}

uint64_t sub_252D2235C()
{
  v1 = v0[3];
  sub_252D244B0(v0[5], type metadata accessor for HomeAutomationUnsupportedShowHomeParameters);

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_252D2240C()
{
  v1 = *(v0[2] + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = xmmword_252E3C290;
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x8000000252E851F0;
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v2 + 48) = MEMORY[0x277D84F90];
  v3 = *(MEMORY[0x277D55C70] + 4);
  v6 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_252AD7EB4;

  return v6(0xD00000000000001ELL, 0x8000000252E8A0A0, v2);
}

uint64_t sub_252D22550(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for HomeAutomationFailureResponseParameters(0);
  v1[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D2261C, 0, 0);
}

uint64_t sub_252D2261C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v5 = sub_252E36324();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v6(v1 + v2[8], 1, 1, v5);
  *(v1 + v2[5]) = 0;
  *(v1 + v2[6]) = MEMORY[0x277D84F90];
  *(v1 + v2[7]) = 0;
  sub_252E37024();
  v6(v3, 0, 1, v5);
  sub_252956C98(v3, v1);
  v7 = sub_252C0700C();
  v0[6] = v7;
  v8 = *(MEMORY[0x277D55BE8] + 4);
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_252D227EC;

  return v11(0xD00000000000001ELL, 0x8000000252E8A0A0, v7);
}

uint64_t sub_252D227EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v8 = sub_252D229CC;
  }

  else
  {
    *(v4 + 72) = a1;
    v8 = sub_252D22938;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252D22938()
{
  v1 = v0[3];
  sub_252D244B0(v0[5], type metadata accessor for HomeAutomationFailureResponseParameters);

  v2 = v0[1];
  v3 = v0[9];

  return v2(v3);
}

uint64_t sub_252D229CC()
{
  v1 = v0[3];
  sub_252D244B0(v0[5], type metadata accessor for HomeAutomationFailureResponseParameters);

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_252D22A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_252E34014();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = sub_252E36324();
  v5[15] = v9;
  v10 = *(v9 - 8);
  v5[16] = v10;
  v11 = *(v10 + 64) + 15;
  v5[17] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D22BD0, 0, 0);
}

uint64_t sub_252D22BD0()
{
  v1 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545828, &qword_252E5C408);
  v2 = sub_252E33F24();
  v0[21] = v2;
  v3 = [v2 filters];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeFilter();
    v5 = sub_252E37264();

    v6 = sub_252BAFC18(v5);
LABEL_5:
    v7 = v6;

    v9 = 0;
    goto LABEL_6;
  }

  v7 = [v2 filters];
  if (v7)
  {
    type metadata accessor for HomeFilter();
    v8 = sub_252E37264();

    v6 = sub_252B288A4(v8);
    goto LABEL_5;
  }

  v9 = 1;
LABEL_6:
  v10 = *(v0[16] + 56);
  v10(v0[20], 1, 1, v0[15]);
  if ((v9 & 1) == 0)
  {
    v11 = v0[19];
    v12 = v0[15];
    v13 = v0[16];
    static SemanticMapper.getSemanticKey(for:)(v7, 0, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_25293847C(v0[19], &qword_27F540298, &unk_252E3C270);
    }

    else
    {
      v15 = v0[19];
      v14 = v0[20];
      v17 = v0[16];
      v16 = v0[17];
      v18 = v0[15];
      sub_25293847C(v14, &qword_27F540298, &unk_252E3C270);
      v19 = *(v17 + 32);
      v19(v16, v15, v18);
      v19(v14, v16, v18);
      v10(v14, 0, 1, v18);
    }
  }

  v20 = [v2 filters];
  if (v20)
  {
    type metadata accessor for HomeFilter();
    v21 = sub_252E37264();

    v22 = sub_252B1F8D4(v21);

    if (v22 <= 1u)
    {
      v20 = 0xE400000000000000;
    }

    else if (v22 == 2)
    {
      v20 = 0xE400000000000000;
    }

    else if (v22 == 3)
    {
      v20 = 0xE500000000000000;
    }

    else
    {
      v20 = 0;
    }
  }

  v23 = [v2 filters];
  if (v23)
  {
    v24 = v23;
    type metadata accessor for HomeFilter();
    v25 = sub_252E37264();

    v26 = sub_252D1BB98(v25);
  }

  else
  {
    v26 = 0;
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v27 = v0[11];
  v28 = sub_252E36AD4();
  __swift_project_value_buffer(v28, qword_27F544D18);
  sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E94E40, 0xD00000000000008BLL, 0x8000000252E94DB0);
  v29 = *(v27 + 104);
  if (v20)
  {
    v30 = v0[18];
    sub_252E37024();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v10(v0[18], v31, 1, v0[15]);
  v32 = swift_task_alloc();
  v0[22] = v32;
  *v32 = v0;
  v32[1] = sub_252D23018;
  v33 = v0[20];
  v34 = v0[18];

  return sub_252D26878(v34, v26, v33);
}

uint64_t sub_252D23018(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v5 = *(*v2 + 144);
  v8 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
  if (v1)
  {
    v6 = sub_252D23500;
  }

  else
  {
    v6 = sub_252D2315C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252D2315C()
{
  v1 = v0[23];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v3[12];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v3[11]);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *(v5 + 16) = v1;
  sub_252B03B94();
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_252D23294;
  v7 = v0[14];

  return sub_252A199A8((v0 + 2), &unk_252E5C418, v5, &unk_252E5C420, 0, v7, 0, 0);
}

uint64_t sub_252D23294()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 96);
  v10 = *v1;
  *(*v1 + 216) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252D235BC;
  }

  else
  {
    v8 = *(v2 + 200);

    v7 = sub_252D23414;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252D23414()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  v8 = *(v0 + 80);
  v9 = *(v0 + 56);
  (*(v0 + 72))(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_25293847C(v2, &qword_27F540298, &unk_252E3C270);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_252D23500()
{
  v1 = *(v0 + 160);

  sub_25293847C(v1, &qword_27F540298, &unk_252E3C270);
  v2 = *(v0 + 192);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = *(v0 + 112);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_252D235BC()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);

  sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);

  v4 = *(v0 + 216);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  v9 = *(v0 + 112);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_252D236B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ShowHomeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9C68](a1, a2, v10, a4);
}

uint64_t sub_252D23774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ShowHomeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9C70](a1, a2, v10, a4);
}

uint64_t sub_252D23838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ShowHomeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9C48](a1, a2, v10, a4);
}

uint64_t sub_252D238FC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_252D1BC78(a1, a2);
}

uint64_t sub_252D239A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ShowHomeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9C60](a1, a2, v10, a4);
}

uint64_t sub_252D23A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ShowHomeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9C58](a1, a2, v10, a4);
}

uint64_t sub_252D23B30(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252D1C9A0(a1, a2);
}

uint64_t sub_252D23BDC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25296BC70;

  return (sub_252D23CE8)(a1, a2);
}

unint64_t sub_252D23C94()
{
  result = qword_27F545820;
  if (!qword_27F545820)
  {
    type metadata accessor for ShowHomeHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545820);
  }

  return result;
}

uint64_t sub_252D23CE8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_252E336F4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D23DA8, 0, 0);
}

uint64_t sub_252D23DA8()
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
  sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E7A2B0, 0xD00000000000008BLL, 0x8000000252E94DB0);
  v7 = objc_allocWithZone(type metadata accessor for ShowHomeIntentHandler());

  [v7 init];
  type metadata accessor for ShowHomeIntent();
  v8 = v4;
  sub_252E336E4();
  sub_252E33784();
  v9 = sub_252E33774();
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_252D23F34()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252D23FC8(uint64_t a1)
{
  v3 = *(sub_252E36AB4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545828, &qword_252E5C408) - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_252D21544(a1, v1 + v4, v7);
}

uint64_t sub_252D240C8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252D22550(v0);
}

uint64_t sub_252D24158()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252D223EC(v0);
}

uint64_t sub_252D24270()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252D21F04(v0);
}

uint64_t sub_252D24300()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252D21E18(v0);
}

uint64_t sub_252D24390()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252D21930(v0);
}

uint64_t sub_252D24420()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B7BC;

  return sub_252D21844(v0);
}

uint64_t sub_252D244B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_252D24510()
{
  v1 = v0;
  v2 = sub_252E36324();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v59 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v62 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v57 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v57 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v57 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v57 - v19;
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002CLL, 0x8000000252E950F0);
  sub_252956C1C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityName, v20);
  v21 = sub_252E36F94();
  MEMORY[0x2530AD570](v21);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E95120);
  sub_252956C1C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityIdentifier, v20);
  v22 = sub_252E36F94();
  MEMORY[0x2530AD570](v22);

  MEMORY[0x2530AD570](0x3A656D6F6820200ALL, 0xE900000000000020);
  v23 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_home);
  v66 = v2;
  if (v23)
  {
    sub_252956C1C(v23 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, v18);
  }

  else
  {
    (*(v3 + 56))(v18, 1, 1, v2);
  }

  v24 = sub_252E36F94();
  MEMORY[0x2530AD570](v24);

  MEMORY[0x2530AD570](0x3A6D6F6F7220200ALL, 0xE900000000000020);
  v25 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_room);
  if (!v25)
  {
    goto LABEL_7;
  }

  sub_252956C1C(v25 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, v15);
  v26 = v66;
  if ((*(v3 + 48))(v15, 1, v66) == 1)
  {
    sub_252938BBC(v15);
LABEL_7:
    v27 = 0;
    v28 = 0;
    goto LABEL_9;
  }

  v27 = sub_252E36304();
  v28 = v29;
  (*(v3 + 8))(v15, v26);
LABEL_9:
  v67 = v27;
  v68 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v31 = sub_252E36F94();
  MEMORY[0x2530AD570](v31);

  MEMORY[0x2530AD570](0x3A6570797420200ALL, 0xE900000000000020);
  sub_252956C1C(v1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type, v20);
  v32 = sub_252E36F94();
  MEMORY[0x2530AD570](v32);

  MEMORY[0x2530AD570](0x657461747320200ALL, 0xEB00000000203A73);
  v33 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
  if (v33 >> 62)
  {
    if (v33 < 0)
    {
      v56 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
    }

    v34 = sub_252E378C4();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v66;
  v36 = MEMORY[0x277D84F90];
  if (v34)
  {
    v67 = MEMORY[0x277D84F90];
    result = sub_2529AA380(0, v34 & ~(v34 >> 63), 0);
    if ((v34 & 0x8000000000000000) == 0)
    {
      v38 = 0;
      v64 = v33 & 0xC000000000000001;
      v65 = v34;
      v39 = (v3 + 48);
      v57 = v30;
      v58 = (v3 + 32);
      v61 = (v3 + 56);
      v60 = (v3 + 8);
      v36 = v67;
      v40 = v62;
      v63 = v33;
      while (1)
      {
        if (v64)
        {
          v41 = MEMORY[0x2530ADF00](v38, v33);
        }

        else
        {
          v41 = *(v33 + 8 * v38 + 32);
        }

        v42 = *(v41 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
        if (v42)
        {
          break;
        }

        v45 = 0;
LABEL_28:
        v67 = v36;
        v51 = *(v36 + 16);
        v50 = *(v36 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_2529AA380((v50 > 1), v51 + 1, 1);
          v40 = v62;
          v36 = v67;
        }

        ++v38;
        *(v36 + 16) = v51 + 1;
        v52 = v36 + 16 * v51;
        *(v52 + 32) = v45;
        *(v52 + 40) = v42;
        v35 = v66;
        v33 = v63;
        if (v65 == v38)
        {
          v30 = v57;
          goto LABEL_32;
        }
      }

      sub_252956C1C(v42 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v40);
      v43 = *v39;
      if ((*v39)(v40, 1, v35) == 1)
      {
        sub_252938BBC(v40);
        if (!*(v42 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
        {
          *(v42 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
          *(v42 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
          sub_252E37024();

          (*v61)(v12, 0, 1, v35);
          goto LABEL_26;
        }

        v44 = *(v42 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

        sub_25296EBC4(v12);
      }

      else
      {
        v46 = v40;
        v47 = v59;
        v48 = *v58;
        (*v58)(v59, v46, v35);
        v48(v12, v47, v35);
        (*v61)(v12, 0, 1, v35);
      }

      if (v43(v12, 1, v35) == 1)
      {

        sub_252938BBC(v12);
        v45 = 0;
        v42 = 0;
LABEL_27:
        v40 = v62;
        goto LABEL_28;
      }

LABEL_26:
      v45 = sub_252E36304();
      v42 = v49;

      (*v60)(v12, v35);
      goto LABEL_27;
    }

    __break(1u);
  }

  else
  {
LABEL_32:
    v53 = MEMORY[0x2530AD730](v36, v30);
    v55 = v54;

    MEMORY[0x2530AD570](v53, v55);

    return v69;
  }

  return result;
}

uint64_t sub_252D24CD4(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v9 = sub_252E36324();
  v4[11] = v9;
  v10 = *(v9 - 8);
  v4[12] = v10;
  v11 = *(v10 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D24E44, 0, 0);
}

uint64_t sub_252D24E44()
{
  if (!v0[4])
  {
    v21 = 1;
    static SemanticMapper.getSemanticKey(for:)(0, 1, v0[10]);
    v22 = MEMORY[0x277D84F90];
    goto LABEL_53;
  }

  v57 = v0[4];
  v1 = sub_252C285CC();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_22;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v3; i = v0)
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v63 = v2 & 0xFFFFFFFFFFFFFF8;
    v59 = v0[12];
    v67 = (v59 + 32);
    v6 = MEMORY[0x277D84F90];
    v60 = v3;
    v61 = v2;
    v58 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v7 = MEMORY[0x2530ADF00](v4, v2);
      }

      else
      {
        if (v4 >= *(v63 + 16))
        {
          goto LABEL_21;
        }

        v7 = *(v2 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = [v7 entity];
      if (v10 && (v11 = v10, v12 = [v10 homeEntityName], v11, v12))
      {
        v13 = v0[14];
        v14 = v0[13];
        v15 = v0[11];
        sub_252E36F34();

        sub_252E37024();

        v16 = *v67;
        (*v67)(v13, v14, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_2529F7F74(0, v6[2] + 1, 1, v6);
        }

        v18 = v6[2];
        v17 = v6[3];
        v2 = v61;
        v0 = i;
        if (v18 >= v17 >> 1)
        {
          v6 = sub_2529F7F74(v17 > 1, v18 + 1, 1, v6);
        }

        v19 = i[14];
        v20 = i[11];
        v6[2] = v18 + 1;
        v16(v6 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v18, v19, v20);
        v3 = v60;
        v5 = v58;
      }

      else
      {
      }

      ++v4;
      if (v9 == v3)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v3 = sub_252E378C4();
  }

  v6 = MEMORY[0x277D84F90];
LABEL_24:
  v68 = v6;
  v23 = v0[10];
  v24 = v0[3];

  v25 = sub_252C2ECE0();
  static SemanticMapper.getSemanticKey(for:)(v25, v26 & 1, v23);
  v27 = sub_252C285CC();
  v28 = v27;
  v29 = v27 & 0xFFFFFFFFFFFFFF8;
  if (v27 >> 62)
  {
LABEL_47:
    v30 = sub_252E378C4();
    if (v30)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v30 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
LABEL_26:
      v31 = 0;
      v32 = MEMORY[0x277D84F90];
      while (2)
      {
        v64 = v32;
        v33 = v31;
        while (1)
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v34 = MEMORY[0x2530ADF00](v33, v28);
          }

          else
          {
            if (v33 >= *(v29 + 16))
            {
              goto LABEL_46;
            }

            v34 = *(v28 + 8 * v33 + 32);
          }

          v35 = v34;
          v31 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v36 = [v34 entity];
          if (v36)
          {
            v37 = v36;
            v38 = [v36 room];

            if (v38)
            {
              break;
            }
          }

          ++v33;
          if (v31 == v30)
          {

            v32 = v64;
            if (v64)
            {
              goto LABEL_50;
            }

            v21 = 1;
            v0 = i;
            v22 = v68;
            goto LABEL_53;
          }
        }

        v39 = sub_252E36F34();
        v41 = v40;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v64 = sub_2529F7A80(0, *(v64 + 2) + 1, 1, v64);
        }

        v44 = *(v64 + 2);
        v43 = *(v64 + 3);
        if (v44 >= v43 >> 1)
        {
          v64 = sub_2529F7A80((v43 > 1), v44 + 1, 1, v64);
        }

        *(v64 + 2) = v44 + 1;
        v45 = &v64[16 * v44];
        *(v45 + 4) = v39;
        *(v45 + 5) = v41;
        v32 = v64;
        if (v31 != v30)
        {
          continue;
        }

        goto LABEL_49;
      }
    }
  }

  v32 = MEMORY[0x277D84F90];
LABEL_49:

LABEL_50:
  v0 = i;
  v22 = v68;
  if (*(v32 + 2) == 1)
  {
    v46 = i[9];
    v47 = *(v32 + 4);
    v48 = *(v32 + 5);

    sub_252E37024();
    v0 = i;

    v21 = 0;
  }

  else
  {

    v21 = 1;
  }

LABEL_53:
  v0[15] = v22;
  v49 = v0[8];
  v50 = v0[5];
  v65 = *(v0 + 9);
  (*(v0[12] + 56))(v0[9], v21, 1, v0[11]);
  v51 = *(v50 + 96);
  __swift_project_boxed_opaque_existential_1((v50 + 72), v51);
  v52 = swift_task_alloc();
  v0[16] = v52;
  *(v52 + 16) = v50;
  *(v52 + 24) = v22;
  *(v52 + 32) = v65;
  sub_252AD7CC4();
  v53 = swift_task_alloc();
  v0[17] = v53;
  *v53 = v0;
  v53[1] = sub_252D25418;
  v54 = v0[8];
  v55 = v0[2];

  return sub_252BDB88C(v55, &unk_252E5C540, v52, v54, 0, 0, 0, v51);
}

uint64_t sub_252D25418()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 144) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {
    v9 = sub_252D25698;
  }

  else
  {
    v10 = *(v2 + 128);

    v9 = sub_252D255C0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_252D255C0()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[8];
  sub_25293847C(v0[9], &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);

  v5 = v0[1];

  return v5();
}

uint64_t sub_252D25698()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];

  sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);

  v7 = v0[1];
  v8 = v0[18];

  return v7();
}

uint64_t sub_252D25778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_252D2579C, 0, 0);
}

uint64_t sub_252D2579C()
{
  v7 = *(v0 + 72);
  sub_252929E74(*(v0 + 56) + 24, v0 + 16);
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *(v2 + 16) = v7;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_252B90188;
  v5 = *(v0 + 64);

  return sub_252C0BB10(0, v5, sub_252D25E90, v2);
}

uint64_t sub_252D25894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  sub_252956C1C(a2, &v26 - v8);
  v10 = type metadata accessor for HomeAutomationHomeLocation.Builder(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
  v15 = sub_252E36324();
  (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
  swift_beginAccess();
  sub_252956BAC(v9, v13 + v14);
  swift_endAccess();
  sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);
  v16 = type metadata accessor for HomeAutomationHomeLocation(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  sub_252956C1C(v13 + v14, v19 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
  swift_setDeallocating();
  sub_25293847C(v13 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
  v20 = *(*v13 + 48);
  v21 = *(*v13 + 52);
  swift_deallocClassInstance();
  v22 = type metadata accessor for HomeAutomationBluetoothWakeUpParameters(0);
  v23 = *(v22 + 28);
  v24 = *(a1 + v23);

  *(a1 + v23) = v19;
  return sub_252956BAC(a3, a1 + *(v22 + 24));
}