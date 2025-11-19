uint64_t *HomeAutomationAbstractMeasurement.__allocating_init(value:unit:targetIsBelowMinimumTargetTemperatureThreshold:targetIsAboveMaximumTargetTemperatureThreshold:targetIsBelowMinimumHeatingThreshold:targetIsAboveMaximumCoolingThreshold:minimumTargetTemperature:maximumTargetTemperature:minimumHeatingTemperature:maximumCoolingTemperature:requestType:)(uint64_t a1, char a2, uint64_t a3, char a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18)
{
  v55 = a6;
  v53 = a5;
  v63 = a18;
  v62 = a14;
  v61 = a13;
  v59 = a12;
  v60 = a8;
  v58 = a11;
  v56 = a10;
  v57 = a7;
  v54 = a9;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v52[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v52[-v27];
  MEMORY[0x28223BE20](v26);
  v30 = &v52[-v29];
  v31 = type metadata accessor for HomeAutomationAbstractMeasurement.Builder(0);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = sub_252D857C4();
  *(v34 + 16) = a1;
  *(v34 + 24) = a2 & 1;
  if (a4)
  {
    v35 = sub_252E36324();
    (*(*(v35 - 8) + 56))(v30, 1, 1, v35);
    v36 = v63;
    v37 = v62;
    v38 = v61;
  }

  else
  {
    v36 = v63;
    v37 = v62;
    v38 = v61;
    sub_252E37024();

    v39 = sub_252E36324();
    (*(*(v39 - 8) + 56))(v30, 0, 1, v39);
  }

  sub_2529439A0(v30, v28);
  v40 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_unit;
  swift_beginAccess();
  sub_252956C98(v28, v34 + v40);
  swift_endAccess();
  *(v34 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumTargetTemperatureThreshold) = v53 & 1;
  *(v34 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumTargetTemperatureThreshold) = v55 & 1;
  *(v34 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumHeatingThreshold) = v57 & 1;
  *(v34 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumCoolingThreshold) = v60 & 1;
  v41 = v34 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumTargetTemperature;
  *v41 = v54;
  *(v41 + 8) = v56 & 1;
  v42 = v34 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumTargetTemperature;
  *v42 = v58;
  *(v42 + 8) = v59 & 1;
  v43 = v34 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumHeatingTemperature;
  *v43 = v38;
  *(v43 + 8) = v37 & 1;
  v44 = v34 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumCoolingTemperature;
  *v44 = a15;
  *(v44 + 8) = a16 & 1;
  if (v36)
  {
    sub_252E37024();

    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  v46 = sub_252E36324();
  (*(*(v46 - 8) + 56))(v25, v45, 1, v46);
  sub_2529439A0(v25, v28);
  v47 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_requestType;
  swift_beginAccess();
  sub_252956C98(v28, v34 + v47);
  swift_endAccess();
  v48 = type metadata accessor for HomeAutomationAbstractMeasurement(0);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  return sub_252D859B8(v34);
}

unint64_t HomeAutomationAbstractMeasurement.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v30 - v4;
  v35 = 0xD000000000000022;
  v36 = 0x8000000252E6BF50;
  v33 = 0x203A65756C6176;
  v34 = 0xE700000000000000;
  if (sub_25296E640())
  {
    v6 = sub_252E36164();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 1;
  }

  v31 = v6;
  v32 = v8 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540740, &unk_252E40560);
  v9 = sub_252E36F94();
  MEMORY[0x2530AD570](v9);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v33, v34);

  v33 = 0x203A74696E75202CLL;
  v34 = 0xE800000000000000;
  sub_252956C1C(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit, v5);
  v10 = sub_252E36F94();
  MEMORY[0x2530AD570](v10);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v33, v34);

  v33 = 0;
  v34 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E6BF80);
  v11 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumTargetTemperatureThreshold) == 0;
  if (*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumTargetTemperatureThreshold))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  v30[0] = v5;
  v30[1] = v2;
  if (v11)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v12, v13);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v33, v34);

  v33 = 0;
  v34 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E6BFC0);
  if (*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumTargetTemperatureThreshold))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumTargetTemperatureThreshold))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v14, v15);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v33, v34);

  v33 = 0;
  v34 = 0xE000000000000000;
  sub_252E379F4();

  v33 = 0xD00000000000001CLL;
  v34 = 0x8000000252E6C000;
  v16 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumTargetTemperature + 8);
  v31 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumTargetTemperature);
  v32 = v16;
  v17 = sub_252E36F94();
  MEMORY[0x2530AD570](v17);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v33, v34);

  v33 = 0;
  v34 = 0xE000000000000000;
  sub_252E379F4();

  v33 = 0xD00000000000001CLL;
  v34 = 0x8000000252E6C020;
  v18 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumTargetTemperature + 8);
  v31 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumTargetTemperature);
  v32 = v18;
  v19 = sub_252E36F94();
  MEMORY[0x2530AD570](v19);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v33, v34);

  v33 = 0;
  v34 = 0xE000000000000000;
  sub_252E379F4();

  v33 = 0xD000000000000028;
  v34 = 0x8000000252E6C040;
  if (*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumHeatingThreshold))
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumHeatingThreshold))
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v20, v21);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v33, v34);

  v33 = 0;
  v34 = 0xE000000000000000;
  sub_252E379F4();

  v33 = 0xD000000000000028;
  v34 = 0x8000000252E6C070;
  if (*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumCoolingThreshold))
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumCoolingThreshold))
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v22, v23);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v33, v34);

  v33 = 0;
  v34 = 0xE000000000000000;
  sub_252E379F4();

  v33 = 0xD00000000000001DLL;
  v34 = 0x8000000252E6C0A0;
  v24 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumHeatingTemperature + 8);
  v31 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumHeatingTemperature);
  v32 = v24;
  v25 = sub_252E36F94();
  MEMORY[0x2530AD570](v25);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v33, v34);

  v33 = 0;
  v34 = 0xE000000000000000;
  sub_252E379F4();

  v33 = 0xD00000000000001DLL;
  v34 = 0x8000000252E6C0C0;
  v26 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumCoolingTemperature + 8);
  v31 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumCoolingTemperature);
  v32 = v26;
  v27 = sub_252E36F94();
  MEMORY[0x2530AD570](v27);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v33, v34);

  v33 = 0;
  v34 = 0xE000000000000000;
  sub_252E379F4();

  v33 = 0x736575716572202CLL;
  v34 = 0xEF203A6570795474;
  sub_252956C1C(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_requestType, v30[0]);
  v28 = sub_252E36F94();
  MEMORY[0x2530AD570](v28);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v33, v34);

  MEMORY[0x2530AD570](41, 0xE100000000000000);
  return v35;
}

uint64_t HomeAutomationAbstractMeasurement.hash(into:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  if (sub_25296E640())
  {

    sub_252E36154();
    v8 = sub_252E36324();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
      sub_252E37EE4();
    }

    else
    {
      sub_252E36304();
      (*(v9 + 8))(v7, v8);
      sub_252E37EE4();
      sub_252E37044();
    }

    v12 = sub_252E36164();
  }

  else
  {
    if (!sub_25296F030())
    {
      if (*(v0 + 32) == 1)
      {
        return sub_252E37EE4();
      }

      v18 = *(v0 + 24);
      sub_252E37EE4();
      if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      return MEMORY[0x2530AE3C0](v19);
    }

    sub_252E36104();
    v10 = sub_252E36324();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v5, 1, v10) == 1)
    {
      sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
      sub_252E37EE4();
    }

    else
    {
      sub_252E36304();
      (*(v11 + 8))(v5, v10);
      sub_252E37EE4();
      sub_252E37044();
    }

    v12 = sub_252E36114();
  }

  v15 = v12;
  v16 = v13;

  if (v16)
  {
    sub_252E37EE4();
  }

  else
  {
    sub_252E37EE4();
    if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    MEMORY[0x2530AE3C0](v17);
  }
}

uint64_t HomeAutomationAbstractMeasurement.hashValue.getter()
{
  sub_252E37EC4();
  HomeAutomationAbstractMeasurement.hash(into:)();
  return sub_252E37F14();
}

uint64_t sub_2529707B4()
{
  v1 = *v0;
  sub_252E37EC4();
  HomeAutomationAbstractMeasurement.hash(into:)();
  return sub_252E37F14();
}

uint64_t sub_25297081C()
{
  sub_252E37EC4();
  v1 = *v0;
  HomeAutomationAbstractMeasurement.hash(into:)();
  return sub_252E37F14();
}

uint64_t _s22HomeAutomationInternal0aB19AbstractMeasurementC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v67 = v4;
  v68 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v64 = &v61[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v65 = &v61[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v61[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v63 = &v61[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v61[-v19];
  v21 = MEMORY[0x28223BE20](v18);
  v66 = &v61[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v61[-v24];
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v61[-v27];
  MEMORY[0x28223BE20](v26);
  v30 = &v61[-v29];
  if (sub_25296E640())
  {
    v31 = sub_25296E640();
    if (v31)
    {
      v32 = v31;

      sub_252E36154();

      v66 = v32;
      sub_252E36154();
      v33 = *(v8 + 48);
      sub_252956C1C(v30, v13);
      sub_252956C1C(v28, &v13[v33]);
      v34 = v67;
      v35 = *(v68 + 48);
      if (v35(v13, 1, v67) == 1)
      {
        sub_25293847C(v28, &qword_27F540298, &unk_252E3C270);
        sub_25293847C(v30, &qword_27F540298, &unk_252E3C270);
        if (v35(&v13[v33], 1, v34) == 1)
        {
          sub_25293847C(v13, &qword_27F540298, &unk_252E3C270);
LABEL_24:
          v47 = COERCE_DOUBLE(sub_252E36164());
          v49 = v48;
          v50 = COERCE_DOUBLE(sub_252E36164());
          v52 = v51;

LABEL_27:

          v41 = v49 & v52;
          if ((v49 & 1) == 0 && (v52 & 1) == 0)
          {
            v41 = v47 == v50;
          }

          return v41 & 1;
        }

        goto LABEL_14;
      }

      sub_252956C1C(v13, v25);
      if (v35(&v13[v33], 1, v34) == 1)
      {
        sub_25293847C(v28, &qword_27F540298, &unk_252E3C270);
        sub_25293847C(v30, &qword_27F540298, &unk_252E3C270);
        (*(v68 + 8))(v25, v34);
LABEL_14:
        sub_25293847C(v13, &qword_27F540758, &unk_252E4D160);
        goto LABEL_22;
      }

      v43 = v68;
      v44 = &v13[v33];
      v45 = v64;
      (*(v68 + 32))(v64, v44, v34);
      sub_252971108(&qword_27F540760, MEMORY[0x277D55C48]);
      LODWORD(v65) = sub_252E36EF4();
      v46 = *(v43 + 8);
      v46(v45, v34);
      sub_25293847C(v28, &qword_27F540298, &unk_252E3C270);
      sub_25293847C(v30, &qword_27F540298, &unk_252E3C270);
      v46(v25, v34);
      sub_25293847C(v13, &qword_27F540298, &unk_252E3C270);
      if (v65)
      {
        goto LABEL_24;
      }

LABEL_22:

      v41 = 0;
      return v41 & 1;
    }
  }

  if (sub_25296F030())
  {
    if (sub_25296F030())
    {

      v36 = v66;
      sub_252E36104();

      sub_252E36104();
      v37 = *(v8 + 48);
      v38 = v65;
      sub_252956C1C(v36, v65);
      sub_252956C1C(v20, v38 + v37);
      v39 = v67;
      v40 = *(v68 + 48);
      if (v40(v38, 1, v67) == 1)
      {
        sub_25293847C(v20, &qword_27F540298, &unk_252E3C270);
        sub_25293847C(v36, &qword_27F540298, &unk_252E3C270);
        if (v40(v38 + v37, 1, v39) == 1)
        {
          sub_25293847C(v38, &qword_27F540298, &unk_252E3C270);
          goto LABEL_26;
        }
      }

      else
      {
        v42 = v63;
        sub_252956C1C(v38, v63);
        if (v40(v38 + v37, 1, v39) != 1)
        {
          v53 = v42;
          v54 = v68;
          v55 = v38 + v37;
          v56 = v64;
          (*(v68 + 32))(v64, v55, v39);
          sub_252971108(&qword_27F540760, MEMORY[0x277D55C48]);
          v62 = sub_252E36EF4();
          v57 = *(v54 + 8);
          v57(v56, v39);
          sub_25293847C(v20, &qword_27F540298, &unk_252E3C270);
          sub_25293847C(v66, &qword_27F540298, &unk_252E3C270);
          v57(v53, v39);
          sub_25293847C(v38, &qword_27F540298, &unk_252E3C270);
          if ((v62 & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_26:
          v47 = COERCE_DOUBLE(sub_252E36114());
          v49 = v58;
          v50 = COERCE_DOUBLE(sub_252E36114());
          v52 = v59;

          goto LABEL_27;
        }

        sub_25293847C(v20, &qword_27F540298, &unk_252E3C270);
        sub_25293847C(v66, &qword_27F540298, &unk_252E3C270);
        (*(v68 + 8))(v42, v39);
      }

      sub_25293847C(v38, &qword_27F540758, &unk_252E4D160);
      goto LABEL_22;
    }
  }

  v41 = *(a2 + 32);
  if ((*(a1 + 32) & 1) == 0)
  {
    v41 = (*(a1 + 24) == *(a2 + 24)) & ~v41;
  }

  return v41 & 1;
}

uint64_t sub_252971108(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25297116C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1 == 0x6F70736552776F6CLL && a2 == 0xEC0000007365736ELL;
  if (v6 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v7 = &unk_27F542E90;
    v8 = 0;
    v9 = 1;
    v10 = 0x403F000000000000;
LABEL_7:
    v11 = 0;
LABEL_8:
    v12 = sub_252AD1B74(v7, v8, v9, v10, v11);
    swift_endAccess();
    result = type metadata accessor for HomeAutomationHumidityResponses();
    a3[3] = result;
    *a3 = v12;
    return result;
  }

  if (a1 == 0x65526C616D726F6ELL && a2 == 0xEF7365736E6F7073 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v7 = &unk_27F542E91;
    v8 = 0x403F000000000000;
    v9 = 0;
    v10 = 0x4049800000000000;
    goto LABEL_7;
  }

  if (a1 == 0x7073655268676968 && a2 == 0xED00007365736E6FLL || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v7 = &unk_27F542E92;
    v8 = 0x4049800000000000;
    v9 = 0;
    v10 = 0;
    v11 = 1;
    goto LABEL_8;
  }

  return sub_252CDF514(a1, a2, a3);
}

uint64_t sub_252971350(uint64_t *a1)
{
  swift_allocObject();
  sub_252929E74(a1, v5);
  sub_252929E74(v5, v4);
  v2 = sub_252C87A18(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v2;
}

uint64_t sub_252971424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[37] = a3;
  v4[38] = v3;
  v4[35] = a1;
  v4[36] = a2;
  v5 = sub_252E33DB4();
  v4[39] = v5;
  v6 = *(v5 - 8);
  v4[40] = v6;
  v7 = *(v6 + 64) + 15;
  v4[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529714E8, 0, 0);
}

uint64_t sub_2529714E8()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = *(v0 + 296);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30);
  sub_252E34044();
  v5 = sub_252E33DA4();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  v8 = sub_252E34034();
  *(v0 + 336) = v8;
  v9 = sub_252E34024();
  *(v0 + 344) = v9;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v10 = sub_252E36AD4();
  __swift_project_value_buffer(v10, qword_27F544D18);
  sub_252E379F4();

  MEMORY[0x2530AD570](v5, v7);
  sub_252CC3D90(0xD000000000000020, 0x8000000252E6C4E0, 0xD000000000000096, 0x8000000252E6C510);

  if (v5 == 0x6B73615472657375 && v7 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    v11 = *(v0 + 304);
    v60 = *(v0 + 280);
    sub_252929E74(v11 + 24, v0 + 136);
    v12 = *(v0 + 160);
    v13 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v12);
    v14 = *(v11 + 104);
    v15 = swift_allocObject();
    *(v15 + 16) = v8;
    *(v15 + 24) = v9;
    v16 = *(v13 + 80);
    v17 = v8;
    v18 = v9;
    v16(v14, sub_252974EE4, v15, v12, v13);

    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
LABEL_40:
    v56 = *(v0 + 328);

    v20 = *(v0 + 8);
    goto LABEL_41;
  }

  if ((v5 != 0x737265746C6966 || v7 != 0xE700000000000000) && (sub_252E37DB4() & 1) == 0)
  {
    type metadata accessor for HomeAutomationError();
    sub_252974E34(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
    swift_allocError();
    *v30 = v5;
    v30[1] = v7;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v19 = *(v0 + 328);

    v20 = *(v0 + 8);
LABEL_41:

    return v20();
  }

  sub_252974E7C(*(v0 + 288), v0 + 176);
  type metadata accessor for HomeFilter();
  if (swift_dynamicCast())
  {
    v21 = *(v0 + 288);

    sub_252974E7C(v21, v0 + 208);
    v22 = swift_dynamicCast();
    v23 = *(v0 + 272);
    if (v22)
    {
      v24 = *(v0 + 272);
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_25;
  }

  v25 = [v9 filters];
  if (!v25)
  {
LABEL_24:
    v24 = 0;
    goto LABEL_25;
  }

  v26 = v25;
  v27 = sub_252E37264();

  if (v27 >> 62)
  {
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_17;
    }

    goto LABEL_23;
  }

  result = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_23:

    goto LABEL_24;
  }

LABEL_17:
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

  v24 = v29;

LABEL_25:
  *(v0 + 352) = v24;
  v31 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v31 + 288), v0 + 16);

  v32 = *(v0 + 40);
  v33 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v32);
  v34 = (*(v33 + 120))(v32, v33);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if ((v34 & 1) == 0)
  {
    v61 = v24;
    if (v24 && [v24 entityType] == 5)
    {
      v47 = 5;
    }

    else
    {
      v47 = sub_252A6D5D4(v24);
    }

    v48 = *(v0 + 304);
    v59 = *(v0 + 280);
    sub_252929E74(v48 + 24, v0 + 56);
    v50 = *(v0 + 80);
    v49 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v50);
    v51 = *(v48 + 104);
    v52 = swift_allocObject();
    v52[2] = v8;
    v52[3] = v9;
    v52[4] = v47;
    v53 = *(v49 + 80);
    v54 = v8;
    v55 = v9;
    v53(v51, sub_252974ED8, v52, v50, v49);

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    goto LABEL_40;
  }

  v35 = sub_252B680FC();
  swift_beginAccess();
  v36 = v9;
  MEMORY[0x2530AD700]();
  if (*((*(v35 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v35 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v57 = *((*(v35 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_252E372A4();
  }

  sub_252E372D4();
  swift_endAccess();

  v37 = [v36 userTask];
  *(v0 + 128) = v24;
  v62 = MEMORY[0x277D84F90];
  v38 = v24;
  if (v24)
  {
    v39 = v38;
    MEMORY[0x2530AD700]();
    if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v58 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
  }

  v40 = *(v0 + 304);
  sub_25293847C(v0 + 128, &qword_27F5407A0, &unk_252E3DC50);
  v41 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  *(v0 + 360) = v41;
  v42 = v41;
  [v42 setUserTask_];
  v43 = sub_252E37254();

  [v42 setFilters_];

  [v42 setTime_];
  v44 = *(v40 + 104);
  v45 = swift_task_alloc();
  *(v0 + 368) = v45;
  *v45 = v0;
  v45[1] = sub_252971D40;
  v46 = *(v0 + 280);

  return sub_252C80F04(v46, v42, v44);
}

uint64_t sub_252971D40()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v6 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = sub_252971ED4;
  }

  else
  {

    v4 = sub_252971E5C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252971E5C()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);

  v3 = *(v0 + 328);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252971ED4()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v3 = *(v0 + 344);

  v4 = *(v0 + 376);
  v5 = *(v0 + 328);

  v6 = *(v0 + 8);

  return v6();
}

void sub_252971F58(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = [a1 itemToConfirm];
  sub_252E377F4();
  swift_unknownObjectRelease();
  type metadata accessor for HomeFilter();
  if (swift_dynamicCast())
  {
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  sub_252AA9CA8(a2, v8, a3, a4);
}

uint64_t sub_252972004()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v2 = v0[13];

  return swift_deallocClassInstance();
}

uint64_t sub_252972078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B758] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for ControlHomeNeedsConfirmationStrategy();
  *v13 = v6;
  v13[1] = sub_25293B808;

  return MEMORY[0x2821BA198](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_252972174()
{
  v0 = sub_252E34164();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(sub_252B680FC() + 72) = 1;

  sub_252E340E4();
  sub_252AB3FEC(v4, 0, v13);
  (*(v1 + 8))(v4, v0);
  memcpy(v14, v13, sizeof(v14));
  memcpy(v15, v13, sizeof(v15));
  if (sub_252956B94(v15) != 1)
  {
    v8 = BYTE1(v15[1]);
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544DA8);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_252E379F4();

    v13[0] = 0xD000000000000026;
    v13[1] = 0x8000000252E6C420;
    v12[7] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540790, &qword_252E48170);
    v10 = sub_252E36F94();
    MEMORY[0x2530AD570](v10);

    sub_252CC3D90(v13[0], v13[1], 0xD000000000000094, 0x8000000252E6C260);

    if (v8 == 3)
    {
      goto LABEL_12;
    }

    if (!v8)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_20;
    }

    v11 = sub_252E37DB4();

    if ((v11 & 1) == 0)
    {
LABEL_12:
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v9, qword_27F544D60);
      sub_252CC3D90(0xD000000000000017, 0x8000000252E6C450, 0xD00000000000006BLL, 0x8000000252E6C470);
      if (qword_27F53F388 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      qword_27F543738 = 0;

      sub_252E37614();
      if (v8 == 3)
      {
        sub_252E33A04();
        return sub_25293847C(v14, &qword_27F5404C8, &unk_252E3FD60);
      }
    }

    if (v8 == 2)
    {
      sub_252E339E4();
      return sub_25293847C(v14, &qword_27F5404C8, &unk_252E3FD60);
    }

LABEL_20:
    sub_252CC3D90(0x676E696C646E6148, 0xEE007475706E6920, 0xD000000000000094, 0x8000000252E6C260);
    sub_252E339F4();
    return sub_25293847C(v14, &qword_27F5404C8, &unk_252E3FD60);
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544DA8);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_252E379F4();

  v13[0] = 0xD000000000000026;
  v13[1] = 0x8000000252E6C3F0;
  v6 = sub_252E340C4();
  MEMORY[0x2530AD570](v6);

  sub_252CC3D90(v13[0], v13[1], 0xD000000000000094, 0x8000000252E6C260);

  return sub_252E33A04();
}

uint64_t sub_252972624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_2529726E8(a1, a2, a3);
}

uint64_t sub_2529726E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[414] = a3;
  v3[413] = a2;
  v3[412] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540780, &unk_252E50210) - 8) + 64) + 15;
  v3[415] = swift_task_alloc();
  v5 = sub_252E34164();
  v3[416] = v5;
  v6 = *(v5 - 8);
  v3[417] = v6;
  v7 = *(v6 + 64) + 15;
  v3[418] = swift_task_alloc();
  v8 = sub_252E33DB4();
  v3[419] = v8;
  v9 = *(v8 - 8);
  v3[420] = v9;
  v10 = *(v9 + 64) + 15;
  v3[421] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252972844, 0, 0);
}

uint64_t sub_252972844()
{
  v85 = v0;
  v1 = *(v0 + 3368);
  v2 = *(v0 + 3360);
  v3 = *(v0 + 3352);
  v4 = *(v0 + 3312);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30);
  v5 = sub_252E34024();
  sub_252E34044();
  v6 = sub_252E33DA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  v9 = sub_252E34034();
  v10 = sub_252B680FC();
  swift_beginAccess();
  v11 = *(v10 + 16);
  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_8:

    goto LABEL_10;
  }

  memcpy((v0 + 16), (v11 + 504 * v12 - 472), 0x1F8uLL);
  sub_2529353AC(v0 + 16, v0 + 520);

  sub_252B680FC();
  v13 = sub_252B63488();

  if (v13)
  {
    _s7BuilderCMa_1();
    swift_allocObject();
    sub_252E1E238();
    memcpy(v84, (v0 + 16), 0x1F8uLL);
    v14 = sub_252E1EBE8(v84);

    v15 = *(v14 + 416);
    *(v0 + 3040) = *(v14 + 400);
    *(v0 + 3056) = v15;
    v16 = *(v14 + 432);
    v17 = *(v14 + 448);
    v18 = *(v14 + 464);
    *(v0 + 3120) = *(v14 + 480);
    *(v0 + 3104) = v18;
    v19 = MEMORY[0x277D84F90];
    *(v0 + 3072) = v16;
    *(v0 + 3088) = v17;
    *(v14 + 400) = v19;
    *(v14 + 408) = v19;
    *(v14 + 416) = v19;
    *(v14 + 424) = v19;
    *(v14 + 432) = v19;
    *(v14 + 440) = v19;
    *(v14 + 448) = v19;
    *(v14 + 456) = v19;
    *(v14 + 464) = v19;
    *(v14 + 472) = v19;
    *(v14 + 480) = v19;
    sub_252937BEC(v0 + 3040);
    v20 = *(v14 + 384);
    *(v14 + 384) = v19;

    sub_252E1E4F8(v84);

    memcpy((v0 + 2032), v84, 0x1F8uLL);
    v21 = sub_252B680FC();
    swift_beginAccess();
    v22 = *(v21 + 16);
    sub_2529353AC(v0 + 2032, v0 + 2536);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + 16) = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_2529F7FB0(0, *(v22 + 2) + 1, 1, v22);
      *(v21 + 16) = v22;
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      v22 = sub_2529F7FB0((v24 > 1), v25 + 1, 1, v22);
    }

    *(v22 + 2) = v25 + 1;
    memcpy(&v22[504 * v25 + 32], (v0 + 2032), 0x1F8uLL);
    *(v21 + 16) = v22;
    swift_endAccess();
    sub_252935408(v0 + 2032);
    sub_252935408(v0 + 16);
    goto LABEL_8;
  }

  sub_252935408(v0 + 16);
LABEL_10:
  v26 = *(v0 + 3344);
  v27 = *(v0 + 3336);
  v28 = *(v0 + 3328);
  v29 = *(v0 + 3304);
  sub_252E340E4();
  sub_252AB3FEC(v26, 0, v84);
  (*(v27 + 8))(v26, v28);
  memcpy((v0 + 1528), v84, 0x1F8uLL);
  memcpy((v0 + 1024), v84, 0x1F8uLL);
  if (sub_252956B94((v0 + 1024)) == 1)
  {

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 3344);
    v31 = *(v0 + 3320);
    v32 = *(v0 + 3304);
    v33 = *(v0 + 3296);
    v34 = sub_252E36AD4();
    __swift_project_value_buffer(v34, qword_27F544DA8);
    v84[0] = 0;
    v84[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000044, 0x8000000252E6C210);
    sub_252E340E4();
    v35 = sub_252AD2138(v30);
    MEMORY[0x2530AD570](v35);

    sub_252CC4050(v84[0], v84[1], 0xD000000000000094, 0x8000000252E6C260, 0xD00000000000002FLL, 0x8000000252E6C300, 59);

    v36 = sub_252E33DE4();
    (*(*(v36 - 8) + 56))(v31, 1, 1, v36);
    type metadata accessor for ControlHomeIntent();
    sub_252E33F44();

LABEL_37:
    v60 = *(v0 + 3368);
    v61 = *(v0 + 3344);
    v62 = *(v0 + 3320);

    v63 = *(v0 + 8);
    goto LABEL_48;
  }

  if (v6 == 0x6B73615472657375 && v8 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    v37 = v5;

    v38 = [v9 itemToConfirm];
    sub_252E377F4();
    swift_unknownObjectRelease();
    type metadata accessor for HomeUserTask();
    if (swift_dynamicCast())
    {
      v39 = *(v0 + 3288);
      ControlHomeIntent.withUpdated(task:)(v39);

LABEL_28:
      v49 = *(v0 + 1033);
      if ((v49 - 2) >= 2)
      {
        v55 = *(v0 + 3320);
        v56 = *(v0 + 3296);
        if (*(v0 + 1033))
        {
          v57 = *MEMORY[0x277D5BED0];
        }

        else
        {
          *(sub_252B680FC() + 76) = 1;

          v57 = *MEMORY[0x277D5BED8];
        }

        v58 = sub_252E33DE4();
        v59 = *(v58 - 8);
        (*(v59 + 104))(v55, v57, v58);
        (*(v59 + 56))(v55, 0, 1, v58);
        type metadata accessor for ControlHomeIntent();
      }

      else
      {
        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        v50 = *(v0 + 3320);
        v51 = *(v0 + 3296);
        v52 = sub_252E36AD4();
        __swift_project_value_buffer(v52, qword_27F544DA8);
        v84[0] = 0;
        v84[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000052, 0x8000000252E6C360);
        *(v0 + 3376) = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540790, &qword_252E48170);
        v53 = sub_252E36F94();
        MEMORY[0x2530AD570](v53);

        sub_252CC4050(v84[0], v84[1], 0xD000000000000094, 0x8000000252E6C260, 0xD00000000000002FLL, 0x8000000252E6C300, 101);

        v54 = sub_252E33DE4();
        (*(*(v54 - 8) + 56))(v50, 1, 1, v54);
        type metadata accessor for ControlHomeIntent();
      }

      sub_252E33F44();

      sub_25293847C(v0 + 1528, &qword_27F5404C8, &unk_252E3FD60);
      goto LABEL_37;
    }

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v40 = sub_252E36AD4();
    __swift_project_value_buffer(v40, qword_27F544DA8);
    v41 = "ve been ingnored: ";
    v42 = 0xD000000000000026;
    goto LABEL_46;
  }

  if (v6 == 0x737265746C6966 && v8 == 0xE700000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    v43 = v5;

    v44 = [v9 itemToConfirm];
    sub_252E377F4();
    swift_unknownObjectRelease();
    type metadata accessor for HomeFilter();
    if (swift_dynamicCast())
    {
      v45 = *(v0 + 3280);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_252E3C130;
      *(v46 + 32) = v45;
      v47 = v45;
      sub_252DE1F7C(v46);

      swift_setDeallocating();
      v48 = *(v46 + 16);
      swift_arrayDestroy();
LABEL_27:
      swift_deallocClassInstance();
      goto LABEL_28;
    }
  }

  else
  {
    if ((v6 != 0x6174616D6F747561 || v8 != 0xEF6B736154656C62) && (sub_252E37DB4() & 1) == 0)
    {
      type metadata accessor for HomeAutomationError();
      sub_252974E34(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
      swift_allocError();
      *v83 = v6;
      v76 = v83 + 1;
      v77 = v5;
      goto LABEL_47;
    }

    v64 = v5;

    v65 = [v9 itemToConfirm];
    sub_252E377F4();
    swift_unknownObjectRelease();
    type metadata accessor for HomeFilter();
    if (swift_dynamicCast())
    {
      v66 = *(v0 + 3272);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_252E3C130;
      type metadata accessor for HomeFilter.Builder();
      swift_allocObject();
      HomeFilter.Builder.init()();
      v69 = *(*v68 + 752);
      v70 = v66;
      v71 = v69(v66);

      v73 = (*(*v71 + 760))(v72);

      *(v67 + 32) = v73;
      sub_252DE1F7C(v67);

      swift_setDeallocating();
      v74 = *(v67 + 16);
      swift_arrayDestroy();
      goto LABEL_27;
    }
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v75 = sub_252E36AD4();
  __swift_project_value_buffer(v75, qword_27F544DA8);
  v41 = "nResponse(input:resolveRecord:)";
  v42 = 0xD000000000000024;
LABEL_46:
  sub_252CC3D90(v42, v41 | 0x8000000000000000, 0xD000000000000094, 0x8000000252E6C260);
  type metadata accessor for HomeAutomationError();
  sub_252974E34(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
  swift_allocError();
  v8 = v9;
  v77 = v9;
LABEL_47:
  v78 = *(v0 + 3368);
  v79 = *(v0 + 3344);
  v80 = *(v0 + 3320);
  *v76 = v8;
  swift_storeEnumTagMultiPayload();
  v81 = v77;
  swift_willThrow();

  sub_25293847C(v0 + 1528, &qword_27F5404C8, &unk_252E3FD60);

  v63 = *(v0 + 8);
LABEL_48:

  return v63();
}

uint64_t sub_252973640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[414] = a3;
  v3[413] = a2;
  v3[412] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540780, &unk_252E50210) - 8) + 64) + 15;
  v3[415] = swift_task_alloc();
  v5 = sub_252E34164();
  v3[416] = v5;
  v6 = *(v5 - 8);
  v3[417] = v6;
  v7 = *(v6 + 64) + 15;
  v3[418] = swift_task_alloc();
  v8 = sub_252E33DB4();
  v3[419] = v8;
  v9 = *(v8 - 8);
  v3[420] = v9;
  v10 = *(v9 + 64) + 15;
  v3[421] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25297379C, 0, 0);
}

uint64_t sub_25297379C()
{
  v96 = v0;
  v1 = *(v0 + 3368);
  v2 = *(v0 + 3360);
  v3 = *(v0 + 3352);
  v4 = *(v0 + 3312);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540798, &qword_252E3F4E0);
  v5 = sub_252E34024();
  sub_252E34044();
  v6 = sub_252E33DA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  v9 = sub_252E34034();
  v10 = sub_252B680FC();
  swift_beginAccess();
  v11 = *(v10 + 16);
  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_8:

    goto LABEL_10;
  }

  memcpy((v0 + 16), (v11 + 504 * v12 - 472), 0x1F8uLL);
  sub_2529353AC(v0 + 16, v0 + 520);

  sub_252B680FC();
  v13 = sub_252B63488();

  if (v13)
  {
    _s7BuilderCMa_1();
    swift_allocObject();
    sub_252E1E238();
    memcpy(v95, (v0 + 16), 0x1F8uLL);
    v14 = sub_252E1EBE8(v95);

    v15 = *(v14 + 416);
    *(v0 + 3040) = *(v14 + 400);
    *(v0 + 3056) = v15;
    v16 = *(v14 + 432);
    v17 = *(v14 + 448);
    v18 = *(v14 + 464);
    *(v0 + 3120) = *(v14 + 480);
    *(v0 + 3104) = v18;
    v19 = MEMORY[0x277D84F90];
    *(v0 + 3072) = v16;
    *(v0 + 3088) = v17;
    *(v14 + 400) = v19;
    *(v14 + 408) = v19;
    *(v14 + 416) = v19;
    *(v14 + 424) = v19;
    *(v14 + 432) = v19;
    *(v14 + 440) = v19;
    *(v14 + 448) = v19;
    *(v14 + 456) = v19;
    *(v14 + 464) = v19;
    *(v14 + 472) = v19;
    *(v14 + 480) = v19;
    sub_252937BEC(v0 + 3040);
    v20 = *(v14 + 384);
    *(v14 + 384) = v19;

    sub_252E1E4F8(v95);

    memcpy((v0 + 2032), v95, 0x1F8uLL);
    v21 = sub_252B680FC();
    swift_beginAccess();
    v22 = *(v21 + 16);
    sub_2529353AC(v0 + 2032, v0 + 2536);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + 16) = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_2529F7FB0(0, *(v22 + 2) + 1, 1, v22);
      *(v21 + 16) = v22;
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      v22 = sub_2529F7FB0((v24 > 1), v25 + 1, 1, v22);
    }

    *(v22 + 2) = v25 + 1;
    memcpy(&v22[504 * v25 + 32], (v0 + 2032), 0x1F8uLL);
    *(v21 + 16) = v22;
    swift_endAccess();
    sub_252935408(v0 + 2032);
    sub_252935408(v0 + 16);
    goto LABEL_8;
  }

  sub_252935408(v0 + 16);
LABEL_10:
  v26 = *(v0 + 3344);
  v27 = *(v0 + 3336);
  v28 = *(v0 + 3328);
  v29 = *(v0 + 3304);
  sub_252E340E4();
  sub_252AB3FEC(v26, 0, v95);
  (*(v27 + 8))(v26, v28);
  memcpy((v0 + 1528), v95, 0x1F8uLL);
  memcpy((v0 + 1024), v95, 0x1F8uLL);
  if (sub_252956B94((v0 + 1024)) == 1)
  {

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 3344);
    v31 = *(v0 + 3320);
    v32 = *(v0 + 3304);
    v33 = *(v0 + 3296);
    v34 = sub_252E36AD4();
    __swift_project_value_buffer(v34, qword_27F544DA8);
    v95[0] = 0;
    v95[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000044, 0x8000000252E6C210);
    sub_252E340E4();
    v35 = sub_252AD2138(v30);
    MEMORY[0x2530AD570](v35);

    sub_252CC4050(v95[0], v95[1], 0xD000000000000094, 0x8000000252E6C260, 0xD00000000000002FLL, 0x8000000252E6C300, 59);

    v36 = sub_252E33DE4();
    (*(*(v36 - 8) + 56))(v31, 1, 1, v36);
    type metadata accessor for AutomateHomeIntent();
    sub_252E33F44();

LABEL_43:
    v67 = *(v0 + 3368);
    v68 = *(v0 + 3344);
    v69 = *(v0 + 3320);

    v70 = *(v0 + 8);
    goto LABEL_56;
  }

  if (v6 == 0x6B73615472657375 && v8 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    v37 = v5;

    v38 = [v9 itemToConfirm];
    sub_252E377F4();
    swift_unknownObjectRelease();
    type metadata accessor for HomeUserTask();
    if (swift_dynamicCast())
    {
      v39 = *(v0 + 3288);
      v40 = [v37 automatableTask];

      if (v40)
      {
        type metadata accessor for ControlAutomateHomeIntent();
        v41 = swift_dynamicCastClass();
        if (v41)
        {
          v42 = *(v41 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
          *(v41 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask) = v39;

          v43 = v37;
LABEL_34:
          v56 = *(v0 + 1033);
          if ((v56 - 2) >= 2)
          {
            v62 = *(v0 + 3320);
            v63 = *(v0 + 3296);
            if (*(v0 + 1033))
            {
              v64 = *MEMORY[0x277D5BED0];
            }

            else
            {
              *(sub_252B680FC() + 76) = 1;

              v64 = *MEMORY[0x277D5BED8];
            }

            v65 = sub_252E33DE4();
            v66 = *(v65 - 8);
            (*(v66 + 104))(v62, v64, v65);
            (*(v66 + 56))(v62, 0, 1, v65);
            type metadata accessor for AutomateHomeIntent();
          }

          else
          {
            if (qword_27F53F500 != -1)
            {
              swift_once();
            }

            v57 = *(v0 + 3320);
            v58 = *(v0 + 3296);
            v59 = sub_252E36AD4();
            __swift_project_value_buffer(v59, qword_27F544DA8);
            v95[0] = 0;
            v95[1] = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD000000000000052, 0x8000000252E6C360);
            *(v0 + 3376) = v56;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540790, &qword_252E48170);
            v60 = sub_252E36F94();
            MEMORY[0x2530AD570](v60);

            sub_252CC4050(v95[0], v95[1], 0xD000000000000094, 0x8000000252E6C260, 0xD00000000000002FLL, 0x8000000252E6C300, 101);

            v61 = sub_252E33DE4();
            (*(*(v61 - 8) + 56))(v57, 1, 1, v61);
            type metadata accessor for AutomateHomeIntent();
          }

          sub_252E33F44();

          sub_25293847C(v0 + 1528, &qword_27F5404C8, &unk_252E3FD60);
          goto LABEL_43;
        }
      }

      goto LABEL_33;
    }

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v44 = sub_252E36AD4();
    __swift_project_value_buffer(v44, qword_27F544DA8);
    v45 = "ve been ingnored: ";
    v46 = 0xD000000000000026;
  }

  else
  {
    if (v6 == 0x737265746C6966 && v8 == 0xE700000000000000 || (sub_252E37DB4() & 1) != 0)
    {
      v37 = v5;

      v47 = [v9 itemToConfirm];
      sub_252E377F4();
      swift_unknownObjectRelease();
      type metadata accessor for HomeFilter();
      if (swift_dynamicCast())
      {
        v48 = *(v0 + 3280);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_252E3C130;
        *(v49 + 32) = v48;
        v50 = v48;
        v51 = [v37 automatableTask];

        if (v51)
        {
          type metadata accessor for ControlAutomateHomeIntent();
          v52 = swift_dynamicCastClass();
          if (v52)
          {
            v53 = *(v52 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
            *(v52 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters) = v49;

            v54 = v37;

            goto LABEL_34;
          }
        }

LABEL_33:
        v55 = v37;
        goto LABEL_34;
      }
    }

    else
    {
      if ((v6 != 0x6174616D6F747561 || v8 != 0xEF6B736154656C62) && (sub_252E37DB4() & 1) == 0)
      {
        type metadata accessor for HomeAutomationError();
        sub_252974E34(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
        swift_allocError();
        *v93 = v6;
        v86 = v93 + 1;
        v87 = v5;
        goto LABEL_55;
      }

      v71 = v5;

      v72 = [v9 itemToConfirm];
      sub_252E377F4();
      swift_unknownObjectRelease();
      type metadata accessor for HomeFilter();
      if (swift_dynamicCast())
      {
        v73 = *(v0 + 3272);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_252E3C130;
        type metadata accessor for HomeFilter.Builder();
        swift_allocObject();
        HomeFilter.Builder.init()();
        v76 = *(*v75 + 752);
        v77 = v73;
        v78 = v76(v73);

        v80 = (*(*v78 + 760))(v79);

        *(v74 + 32) = v80;
        v81 = [v71 automatableTask];

        if (v81)
        {
          type metadata accessor for ControlAutomateHomeIntent();
          v82 = swift_dynamicCastClass();
          if (v82)
          {
            v83 = *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
            *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters) = v74;

            v84 = v71;

            goto LABEL_34;
          }
        }

        v94 = v71;
        goto LABEL_34;
      }
    }

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v85 = sub_252E36AD4();
    __swift_project_value_buffer(v85, qword_27F544DA8);
    v45 = "nResponse(input:resolveRecord:)";
    v46 = 0xD000000000000024;
  }

  sub_252CC3D90(v46, v45 | 0x8000000000000000, 0xD000000000000094, 0x8000000252E6C260);
  type metadata accessor for HomeAutomationError();
  sub_252974E34(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
  swift_allocError();
  v8 = v9;
  v87 = v9;
LABEL_55:
  v88 = *(v0 + 3368);
  v89 = *(v0 + 3344);
  v90 = *(v0 + 3320);
  *v86 = v8;
  swift_storeEnumTagMultiPayload();
  v91 = v87;
  swift_willThrow();

  sub_25293847C(v0 + 1528, &qword_27F5404C8, &unk_252E3FD60);

  v70 = *(v0 + 8);
LABEL_56:

  return v70();
}

uint64_t sub_252974654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B4E0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ControlHomeNeedsConfirmationStrategy();
  *v9 = v4;
  v9[1] = sub_25296BC70;

  return MEMORY[0x2821B9E10](a1, a2, v10, a4);
}

uint64_t sub_252974718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25294B954;

  return sub_252971424(a1, a2, a3);
}

uint64_t sub_2529747CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B4F0] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for ControlHomeNeedsConfirmationStrategy();
  *v11 = v5;
  v11[1] = sub_25294B954;

  return MEMORY[0x2821B9E28](a1, a2, a3, v12, a5);
}

uint64_t sub_252974898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B500] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for ControlHomeNeedsConfirmationStrategy();
  *v11 = v5;
  v11[1] = sub_25294B954;

  return MEMORY[0x2821B9E38](a1, a2, a3, v12, a5);
}

uint64_t sub_252974964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B4F8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ControlHomeNeedsConfirmationStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9E30](a1, a2, v10, a4);
}

uint64_t sub_252974A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B508] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ControlHomeNeedsConfirmationStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9E40](a1, a2, v10, a4);
}

uint64_t sub_252974B0C()
{
  v1 = *(v0 + 16);
  sub_252E33964();
  sub_252E33954();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252974B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5C0B0] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for ControlHomeNeedsConfirmationStrategy();
  *v13 = v6;
  v13[1] = sub_25294B954;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_252974C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C0B8] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for ControlHomeNeedsConfirmationStrategy();
  *v15 = v7;
  v15[1] = sub_25294B954;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_252974DDC(uint64_t a1, uint64_t a2)
{
  result = sub_252974E34(&qword_27F540778, a2, type metadata accessor for ControlHomeNeedsConfirmationStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252974E34(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_252974E7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_252974EEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5407B8, &qword_252E3DC80);
  v0 = swift_allocObject();
  *&result = 12;
  *(v0 + 16) = xmmword_252E3DC60;
  *(v0 + 32) = &type metadata for LocationReferenceResolutionStep;
  *(v0 + 40) = &off_2864B4E98;
  *(v0 + 48) = &type metadata for EntityReferenceResolutionStep;
  *(v0 + 56) = &off_2864BDB40;
  *(v0 + 64) = &type metadata for MeCardStep;
  *(v0 + 72) = &off_2864BF798;
  *(v0 + 80) = &type metadata for EquivalentName;
  *(v0 + 88) = &off_2864BBB98;
  *(v0 + 96) = &type metadata for AddHomeNameStep;
  *(v0 + 104) = &off_2864BC0D0;
  *(v0 + 112) = &type metadata for NeighboringServices;
  *(v0 + 120) = &off_2864C07E8;
  *(v0 + 128) = &type metadata for LocalizedSceneNameStep;
  *(v0 + 136) = &off_2864B7FC0;
  *(v0 + 144) = &type metadata for TurnOffInAPTVStep;
  *(v0 + 152) = &off_2864C0E30;
  *(v0 + 160) = &type metadata for DoorReplacementStep;
  *(v0 + 168) = &off_2864BB920;
  *(v0 + 176) = &type metadata for ConvertMopAccessoryTypeStep;
  *(v0 + 184) = &off_2864B6078;
  *(v0 + 192) = &type metadata for CombineVacuumAndMopStep;
  *(v0 + 200) = &off_2864B92C8;
  *(v0 + 208) = &type metadata for AugmentPauseOrResumeRvcStep;
  *(v0 + 216) = &off_2864BFDB8;
  qword_27F5753E0 = v0;
  return result;
}

uint64_t sub_252975024(uint64_t a1, uint64_t a2)
{
  v2[381] = a2;
  v2[380] = a1;
  v3 = sub_252E36AB4();
  v2[382] = v3;
  v4 = *(v3 - 8);
  v2[383] = v4;
  v5 = *(v4 + 64) + 15;
  v2[384] = swift_task_alloc();
  v2[385] = swift_task_alloc();
  v2[386] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252975100, 0, 0);
}

uint64_t sub_252975100()
{
  v77 = v0;
  if (qword_27F53F618 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3088);
  v2 = qword_27F544FA0;
  *(v0 + 3096) = qword_27F544FA0;
  v3 = v2;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 3088);
  v5 = *(v0 + 3080);
  v6 = *(v0 + 3064);
  v7 = *(v0 + 3056);
  v8 = *(v0 + 3040);
  v9 = sub_252E36AD4();
  *(v0 + 3104) = v9;
  __swift_project_value_buffer(v9, qword_27F544E08);
  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E6C5E0, 0xD00000000000008CLL, 0x8000000252E6C600);
  (*(v6 + 16))(v5, v4, v7);
  if (!*(v8 + 16))
  {
    v49 = *(v0 + 3080);
    sub_252CC4050(0xD00000000000001CLL, 0x8000000252E6C730, 0xD00000000000008CLL, 0x8000000252E6C600, 0xD00000000000001ELL, 0x8000000252E6C750, 45);
    sub_252E375C4();
    v50 = MEMORY[0x277D84F90];
LABEL_28:
    sub_252E36A74();
    v60 = *(v0 + 3088);
    v61 = *(v0 + 3072);
    v62 = *(v0 + 3056);
    v63 = *(*(v0 + 3064) + 8);
    v63(*(v0 + 3080), v62);
    v63(v60, v62);

    v64 = *(v0 + 8);

    return v64(v50);
  }

  v10 = *(v0 + 3048);
  v11 = *(v10 + 16);
  *(v0 + 3112) = v11;
  v12 = *(v0 + 3040);
  if (!v11)
  {
    v57 = *(v0 + 3040);

LABEL_27:
    v58 = *(v0 + 3096);
    v59 = *(v0 + 3080);
    v50 = sub_252DF93D8(v12);

    sub_252E375C4();
    goto LABEL_28;
  }

  v65 = (v0 + 2704);
  v66 = (v0 + 2536);

  v13 = 0;
  while (1)
  {
    *(v0 + 3128) = v12;
    *(v0 + 3120) = v13;
    v14 = *(v0 + 3096);
    v15 = *(v0 + 3072);
    v16 = v10 + 16 * v13;
    *(v0 + 3136) = *(v16 + 32);
    v17 = *(v16 + 40);
    *(v0 + 3144) = v17;
    v18 = v14;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    v19 = MEMORY[0x277D84F90];
    *(v0 + 3032) = MEMORY[0x277D84F90];
    v20 = *(v12 + 16);
    *(v0 + 3152) = v20;
    if (v20)
    {
      break;
    }

    v32 = v19;
LABEL_20:
    v33 = *(v0 + 3096);
    v34 = *(v0 + 3072);
    v35 = *(v0 + 3064);
    v68 = *(v0 + 3056);
    v69 = *(v0 + 3112);
    v36 = *(v0 + 3120) + 1;
    *&__dst[0] = v32;

    v67 = *(v0 + 3136);
    sub_25297AA34(v19);
    v12 = *&__dst[0];
    *(v0 + 2920) = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5407A8, &qword_252E3DC78);
    v37 = sub_252E36F94();
    v73 = 1;
    v74 = 1;
    v75 = 1;
    v76 = 1;
    *(v0 + 2704) = 0;
    *(v0 + 2712) = 1;
    *(v0 + 2713) = *(v0 + 2697);
    *(v0 + 2716) = *(v0 + 2700);
    *(v0 + 2720) = 0u;
    *(v0 + 2736) = 0u;
    *(v0 + 2752) = 0u;
    *(v0 + 2768) = 0u;
    *(v0 + 2784) = 0u;
    *(v0 + 2800) = 1;
    *(v0 + 2804) = *(v0 + 2868);
    *(v0 + 2801) = *(v0 + 2865);
    *(v0 + 2808) = 0;
    *(v0 + 2816) = 0;
    *(v0 + 2824) = 0;
    *(v0 + 2832) = 513;
    *(v0 + 2838) = *(v0 + 3228);
    *(v0 + 2834) = *(v0 + 3224);
    *(v0 + 2840) = v37;
    *(v0 + 2848) = v38;
    *(v0 + 2856) = 0;
    *(v0 + 2864) = 1;
    GEOLocationCoordinate2DMake(v65);
    v39 = *(v0 + 2848);
    __dst[8] = *(v0 + 2832);
    __dst[9] = v39;
    LOBYTE(__dst[10]) = *(v0 + 2864);
    v40 = *(v0 + 2784);
    __dst[4] = *(v0 + 2768);
    __dst[5] = v40;
    v41 = *(v0 + 2816);
    __dst[6] = *(v0 + 2800);
    __dst[7] = v41;
    v42 = *(v0 + 2720);
    __dst[0] = *v65;
    __dst[1] = v42;
    v43 = *(v0 + 2752);
    __dst[2] = *(v0 + 2736);
    __dst[3] = v43;
    _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v33, v34, "IntentSelection.IntentGeneration.Step", 37, 2, __dst);
    v44 = __dst[9];
    *(v0 + 2664) = __dst[8];
    *(v0 + 2680) = v44;
    *(v0 + 2696) = __dst[10];
    v45 = __dst[5];
    *(v0 + 2600) = __dst[4];
    *(v0 + 2616) = v45;
    v46 = __dst[7];
    *(v0 + 2632) = __dst[6];
    *(v0 + 2648) = v46;
    v47 = __dst[1];
    *v66 = __dst[0];
    *(v0 + 2552) = v47;
    v48 = __dst[3];
    *(v0 + 2568) = __dst[2];
    *(v0 + 2584) = v48;
    sub_2529765AC(v66);
    (*(v35 + 8))(v34, v68);

    if (v36 == v69)
    {
      goto LABEL_27;
    }

    v13 = *(v0 + 3120) + 1;
    v10 = *(v0 + 3048);
  }

  v21 = 0;
  *(v0 + 3160) = *(v17 + 8);
  *(v0 + 3168) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x6FC0000000000000;
  while (1)
  {
    *(v0 + 3184) = v19;
    *(v0 + 3176) = v21;
    memcpy((v0 + 16), (*(v0 + 3128) + 504 * v21 + 32), 0x1F8uLL);
    sub_2529353AC(v0 + 16, v0 + 520);
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 3168);
    v23 = *(v0 + 3160);
    v24 = *(v0 + 3144);
    v25 = *(v0 + 3136);
    *(v0 + 3192) = __swift_project_value_buffer(*(v0 + 3104), qword_27F544DA8);
    *(v0 + 2888) = 0;
    *(v0 + 2896) = 0xE000000000000000;
    sub_252E379F4();
    v26 = *(v0 + 2896);

    strcpy((v0 + 2872), "Running step: ");
    *(v0 + 2887) = -18;
    *(v0 + 2904) = v25;
    *(v0 + 2912) = v24;
    *(v0 + 3200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5407A8, &qword_252E3DC78);
    v27 = sub_252E36F94();
    MEMORY[0x2530AD570](v27);

    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E6C6C0);
    memcpy(__dst, (v0 + 16), 0x1F8uLL);
    v28 = HomeAutomationIntent.description.getter();
    MEMORY[0x2530AD570](v28);

    sub_252CC3D90(*(v0 + 2872), *(v0 + 2880), 0xD00000000000008CLL, 0x8000000252E6C600);

    memcpy(__dst, (v0 + 16), 0x1F8uLL);
    if (v23(__dst, v25, v24))
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_2529F7FB0(0, *(v19 + 2) + 1, 1, v19);
    }

    v30 = *(v19 + 2);
    v29 = *(v19 + 3);
    if (v30 >= v29 >> 1)
    {
      v19 = sub_2529F7FB0((v29 > 1), v30 + 1, 1, v19);
    }

    *(v19 + 2) = v30 + 1;
    memcpy(&v19[504 * v30 + 32], (v0 + 16), 0x1F8uLL);
    v21 = *(v0 + 3176) + 1;
    if (v21 == *(v0 + 3152))
    {
      v31 = *(v0 + 3128);

      v32 = MEMORY[0x277D84F90];
      goto LABEL_20;
    }
  }

  v71 = *(v0 + 3144);
  memcpy((v0 + 1024), (v0 + 16), 0x1F8uLL);
  v51 = *(v71 + 16);
  v70 = (v51 + *v51);
  v52 = v51[1];
  v53 = swift_task_alloc();
  *(v0 + 3208) = v53;
  *v53 = v0;
  v53[1] = sub_252975A3C;
  v54 = *(v0 + 3144);
  v55 = *(v0 + 3136);

  return v70(v0 + 1024);
}

uint64_t sub_252975A3C(uint64_t a1)
{
  v2 = *(*v1 + 3208);
  v4 = *v1;
  *(*v1 + 3216) = a1;

  return MEMORY[0x2822009F8](sub_252975B3C, 0, 0);
}

uint64_t sub_252975B3C()
{
  v81 = v0;
  v1 = *(v0 + 3216);
  v2 = *(v0 + 3200);
  v3 = *(v0 + 3192);
  *(v0 + 2952) = 0;
  *(v0 + 2960) = 0xE000000000000000;
  v75 = *(v0 + 3136);
  sub_252E379F4();
  v4 = *(v0 + 2960);

  *(v0 + 2936) = 0x203A70657453;
  *(v0 + 2944) = 0xE600000000000000;
  *(v0 + 2968) = v75;
  v5 = sub_252E36F94();
  MEMORY[0x2530AD570](v5);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E6C6E0);
  v6 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v6);

  sub_252CC3D90(*(v0 + 2936), *(v0 + 2944), 0xD00000000000008CLL, 0x8000000252E6C600);

  sub_25297AA34(v1);
  v7 = *(v0 + 3032);
  v72 = v7;
  if (*(v7 + 16))
  {
    v8 = *(v0 + 3144);
    v9 = *(v0 + 3136);
    memcpy(__dst, (v0 + 16), 0x1F8uLL);
    if (((*(v8 + 24))(__dst, v7, v9, v8) & 1) == 0)
    {
      v15 = *(v0 + 3200);
      v16 = *(v0 + 3192);
      *(v0 + 3000) = 0;
      *(v0 + 3008) = 0xE000000000000000;
      v76 = *(v0 + 3136);
      sub_252E379F4();
      v17 = *(v0 + 3008);

      *(v0 + 2984) = 0x6574532220202020;
      *(v0 + 2992) = 0xEB00000000203A70;
      *(v0 + 3016) = v76;
      v18 = sub_252E36F94();
      MEMORY[0x2530AD570](v18);

      MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E6C700);
      memcpy(__dst, (v0 + 16), 0x1F8uLL);
      sub_2529353AC(v0 + 16, v0 + 2032);
      v19 = HomeAutomationIntent.description.getter();
      v21 = v20;
      memcpy((v0 + 1528), __dst, 0x1F8uLL);
      sub_252935408(v0 + 1528);
      MEMORY[0x2530AD570](v19, v21);

      sub_252CC3D90(*(v0 + 2984), *(v0 + 2992), 0xD00000000000008CLL, 0x8000000252E6C600);
      sub_252935408(v0 + 16);

      v12 = *(v0 + 3184);
      goto LABEL_9;
    }
  }

  v10 = *(v0 + 3184);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v0 + 3184);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_2529F7FB0(0, *(v12 + 2) + 1, 1, *(v0 + 3184));
  }

  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_2529F7FB0((v13 > 1), v14 + 1, 1, v12);
  }

  while (1)
  {
    *(v12 + 2) = v14 + 1;
    memcpy(&v12[504 * v14 + 32], (v0 + 16), 0x1F8uLL);
LABEL_9:
    v22 = *(v0 + 3176) + 1;
    if (v22 == *(v0 + 3152))
    {
      break;
    }

LABEL_15:
    v78 = v12;
    *(v0 + 3184) = v12;
    *(v0 + 3176) = v22;
    memcpy((v0 + 16), (*(v0 + 3128) + 504 * v22 + 32), 0x1F8uLL);
    sub_2529353AC(v0 + 16, v0 + 520);
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v49 = *(v0 + 3168);
    v50 = *(v0 + 3160);
    v51 = *(v0 + 3144);
    v52 = *(v0 + 3136);
    *(v0 + 3192) = __swift_project_value_buffer(*(v0 + 3104), qword_27F544DA8);
    *(v0 + 2888) = 0;
    *(v0 + 2896) = 0xE000000000000000;
    sub_252E379F4();
    v53 = *(v0 + 2896);

    strcpy((v0 + 2872), "Running step: ");
    *(v0 + 2887) = -18;
    *(v0 + 2904) = v52;
    *(v0 + 2912) = v51;
    *(v0 + 3200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5407A8, &qword_252E3DC78);
    v54 = sub_252E36F94();
    MEMORY[0x2530AD570](v54);

    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E6C6C0);
    memcpy(__dst, (v0 + 16), 0x1F8uLL);
    v55 = HomeAutomationIntent.description.getter();
    MEMORY[0x2530AD570](v55);

    sub_252CC3D90(*(v0 + 2872), *(v0 + 2880), 0xD00000000000008CLL, 0x8000000252E6C600);

    memcpy(__dst, (v0 + 16), 0x1F8uLL);
    if (v50(__dst, v52, v51))
    {
      v79 = *(v0 + 3144);
      memcpy((v0 + 1024), (v0 + 16), 0x1F8uLL);
      v66 = *(v79 + 16);
      v74 = (v66 + *v66);
      v67 = v66[1];
      v68 = swift_task_alloc();
      *(v0 + 3208) = v68;
      *v68 = v0;
      v68[1] = sub_252975A3C;
      v69 = *(v0 + 3144);
      v70 = *(v0 + 3136);

      return v74(v0 + 1024);
    }

    v12 = v78;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_2529F7FB0(0, *(v78 + 2) + 1, 1, v78);
    }

    v14 = *(v12 + 2);
    v56 = *(v12 + 3);
    if (v14 >= v56 >> 1)
    {
      v12 = sub_2529F7FB0((v56 > 1), v14 + 1, 1, v12);
    }
  }

  v23 = *(v0 + 3128);

  for (i = v72; ; v12 = i)
  {
    v25 = *(v0 + 3096);
    v26 = *(v0 + 3072);
    v27 = *(v0 + 3064);
    v28 = *(v0 + 3056);
    v73 = *(v0 + 3120) + 1;
    v77 = *(v0 + 3112);
    *&__dst[0] = i;

    v71 = *(v0 + 3136);
    sub_25297AA34(v12);
    v29 = *&__dst[0];
    *(v0 + 2920) = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5407A8, &qword_252E3DC78);
    v30 = sub_252E36F94();
    *(v0 + 2704) = 0;
    *(v0 + 2712) = 1;
    *(v0 + 2713) = *(v0 + 2697);
    *(v0 + 2716) = *(v0 + 2700);
    *(v0 + 2720) = 0u;
    *(v0 + 2736) = 0u;
    *(v0 + 2752) = 0u;
    *(v0 + 2768) = 0u;
    *(v0 + 2784) = 0u;
    *(v0 + 2800) = 1;
    *(v0 + 2804) = *(v0 + 2868);
    *(v0 + 2801) = *(v0 + 2865);
    *(v0 + 2808) = 0;
    *(v0 + 2816) = 0;
    *(v0 + 2824) = 0;
    *(v0 + 2832) = 513;
    *(v0 + 2838) = *(v0 + 3228);
    *(v0 + 2834) = *(v0 + 3224);
    *(v0 + 2840) = v30;
    *(v0 + 2848) = v31;
    *(v0 + 2856) = 0;
    *(v0 + 2864) = 1;
    GEOLocationCoordinate2DMake(v0 + 2704);
    v32 = *(v0 + 2848);
    __dst[8] = *(v0 + 2832);
    __dst[9] = v32;
    LOBYTE(__dst[10]) = *(v0 + 2864);
    v33 = *(v0 + 2784);
    __dst[4] = *(v0 + 2768);
    __dst[5] = v33;
    v34 = *(v0 + 2816);
    __dst[6] = *(v0 + 2800);
    __dst[7] = v34;
    v35 = *(v0 + 2720);
    __dst[0] = *(v0 + 2704);
    __dst[1] = v35;
    v36 = *(v0 + 2752);
    __dst[2] = *(v0 + 2736);
    __dst[3] = v36;
    _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v25, v26, "IntentSelection.IntentGeneration.Step", 37, 2, __dst);
    v37 = __dst[9];
    *(v0 + 2664) = __dst[8];
    *(v0 + 2680) = v37;
    *(v0 + 2696) = __dst[10];
    v38 = __dst[5];
    *(v0 + 2600) = __dst[4];
    *(v0 + 2616) = v38;
    v39 = __dst[7];
    *(v0 + 2632) = __dst[6];
    *(v0 + 2648) = v39;
    v40 = __dst[1];
    *(v0 + 2536) = __dst[0];
    *(v0 + 2552) = v40;
    v41 = __dst[3];
    *(v0 + 2568) = __dst[2];
    *(v0 + 2584) = v41;
    sub_2529765AC(v0 + 2536);
    (*(v27 + 8))(v26, v28);

    if (v73 == v77)
    {
      break;
    }

    v42 = *(v0 + 3120) + 1;
    *(v0 + 3128) = v29;
    *(v0 + 3120) = v42;
    v43 = *(v0 + 3096);
    v44 = *(v0 + 3072);
    v45 = *(v0 + 3048) + 16 * v42;
    *(v0 + 3136) = *(v45 + 32);
    v46 = *(v45 + 40);
    *(v0 + 3144) = v46;
    v47 = v43;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    i = MEMORY[0x277D84F90];
    *(v0 + 3032) = MEMORY[0x277D84F90];
    v48 = *(v29 + 16);
    *(v0 + 3152) = v48;
    if (v48)
    {
      v22 = 0;
      *(v0 + 3160) = *(v46 + 8);
      *(v0 + 3168) = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x6FC0000000000000;
      v12 = i;
      v72 = i;
      goto LABEL_15;
    }
  }

  v57 = *(v0 + 3096);
  v58 = *(v0 + 3080);
  v59 = sub_252DF93D8(v29);

  sub_252E375C4();
  sub_252E36A74();
  v60 = *(v0 + 3088);
  v61 = *(v0 + 3072);
  v62 = *(v0 + 3056);
  v63 = *(*(v0 + 3064) + 8);
  v63(*(v0 + 3080), v62);
  v63(v60, v62);

  v64 = *(v0 + 8);

  return v64(v59);
}

uint64_t sub_2529765AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5407B0, &unk_252E42860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252976614()
{
  v2 = sub_252E32E04();
  *(v1 + 1016) = v2;
  v3 = *(v2 - 8);
  *(v1 + 1024) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 1032) = swift_task_alloc();
  v5 = sub_252E35BE4();
  *(v1 + 1040) = v5;
  v6 = *(v5 - 8);
  *(v1 + 1048) = v6;
  v7 = *(v6 + 64) + 15;
  *(v1 + 1056) = swift_task_alloc();
  v8 = sub_252E35BF4();
  *(v1 + 1064) = v8;
  v9 = *(v8 - 8);
  *(v1 + 1072) = v9;
  v10 = *(v9 + 64) + 15;
  *(v1 + 1080) = swift_task_alloc();
  v11 = sub_252E35C14();
  *(v1 + 1088) = v11;
  v12 = *(v11 - 8);
  *(v1 + 1096) = v12;
  v13 = *(v12 + 64) + 15;
  *(v1 + 1104) = swift_task_alloc();
  *(v1 + 1000) = *v0;
  *(v1 + 1112) = *(v0 + 16);
  memcpy((v1 + 520), (v0 + 24), 0x1E0uLL);

  return MEMORY[0x2822009F8](sub_252976808, 0, 0);
}

uint64_t sub_252976808()
{
  v32 = v0;
  v1 = *(v0 + 1112);
  *(v0 + 1120) = [objc_allocWithZone(type metadata accessor for ShowHomeIntent()) init];
  v29 = *(v0 + 1000);
  v30 = v1;
  memcpy(v31, (v0 + 520), sizeof(v31));
  *(v0 + 1128) = sub_252940F38(&v29);
  if (v1)
  {
    v2 = *(v0 + 1112);
    v3 = *(v0 + 1104);
    v4 = *(v0 + 1080);
    v5 = *(v0 + 1072);
    v6 = *(v0 + 1064);
    v7 = *(v0 + 1056);
    v8 = *(v0 + 1048);
    v9 = *(v0 + 1040);
    v10 = *(v0 + 1032);
    *(v0 + 16) = *(v0 + 1000);
    *(v0 + 32) = v2;
    memcpy((v0 + 40), (v0 + 520), 0x1E0uLL);
    (*(v5 + 104))(v4, *MEMORY[0x277D56138], v6);
    (*(v8 + 104))(v7, *MEMORY[0x277D56120], v9);
    sub_252CC6450(MEMORY[0x277D84F90]);
    sub_252E35C04();
    sub_252E32DF4();
    v11 = swift_task_alloc();
    *(v0 + 1136) = v11;
    *v11 = v0;
    v11[1] = sub_252976B9C;
    v12 = *(v0 + 1104);
    v13 = *(v0 + 1032);

    return sub_252BAE648(v12, v13);
  }

  else
  {
    v15 = *(v0 + 1120);
    type metadata accessor for HomeFilter();
    v16 = sub_252E37254();

    [v15 setFilters_];

    [v15 setDateTimeRange_];
    if (qword_27F53F4F8 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 1120);
    v18 = *(v0 + 1104);
    v19 = *(v0 + 1080);
    v20 = *(v0 + 1056);
    v21 = *(v0 + 1032);
    v22 = sub_252E36AD4();
    __swift_project_value_buffer(v22, qword_27F544D90);
    *&v29 = 0;
    *(&v29 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v29 = 0xD000000000000015;
    *(&v29 + 1) = 0x8000000252E6C770;
    v23 = [v17 description];
    v24 = sub_252E36F34();
    v26 = v25;

    MEMORY[0x2530AD570](v24, v26);

    sub_252CC3D90(v29, *(&v29 + 1), 0xD000000000000081, 0x8000000252E6C790);

    v27 = *(v0 + 8);
    v28 = *(v0 + 1120);

    return v27(v28);
  }
}

uint64_t sub_252976B9C(uint64_t a1)
{
  v2 = *(*v1 + 1136);
  v3 = *(*v1 + 1104);
  v4 = *(*v1 + 1096);
  v5 = *(*v1 + 1088);
  v6 = *(*v1 + 1032);
  v7 = *(*v1 + 1024);
  v8 = *(*v1 + 1016);
  v10 = *v1;
  *(*v1 + 1144) = a1;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_252976D58, 0, 0);
}

uint64_t sub_252976D58()
{
  v1 = v0[143];
  v2 = v0[141];
  v3 = v0[140];
  type metadata accessor for HomeFilter();
  v4 = sub_252E37254();

  [v3 setFilters_];

  [v3 setDateTimeRange_];
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v5 = v0[140];
  v6 = v0[138];
  v7 = v0[135];
  v8 = v0[132];
  v17 = v0[129];
  v9 = sub_252E36AD4();
  __swift_project_value_buffer(v9, qword_27F544D90);
  sub_252E379F4();

  v10 = [v5 description];
  v11 = sub_252E36F34();
  v13 = v12;

  MEMORY[0x2530AD570](v11, v13);

  sub_252CC3D90(0xD000000000000015, 0x8000000252E6C770, 0xD000000000000081, 0x8000000252E6C790);

  v14 = v0[1];
  v15 = v0[140];

  return v14(v15);
}

unint64_t sub_252976F6C(uint64_t a1)
{
  v1 = a1;
  v138 = a1;
  v2 = *(a1 + 16);
  v3 = (a1 + 512);
  v4 = -1;
  do
  {
    if (v2 == ++v4)
    {

      return v1;
    }

    if (*(*(v3 - 10) + 16))
    {
      break;
    }

    if (*(*(v3 - 9) + 16))
    {
      break;
    }

    if (*(*(v3 - 8) + 16))
    {
      break;
    }

    if (*(*(v3 - 7) + 16))
    {
      break;
    }

    if (*(*(v3 - 6) + 16))
    {
      break;
    }

    if (*(*(v3 - 5) + 16))
    {
      break;
    }

    if (*(*(v3 - 4) + 16))
    {
      break;
    }

    if (*(*(v3 - 3) + 16))
    {
      break;
    }

    if (*(*(v3 - 2) + 16))
    {
      break;
    }

    if (*(*(v3 - 1) + 16))
    {
      break;
    }

    v5 = *v3;
    v3 += 63;
  }

  while (!*(v5 + 16));
  v6 = 0xD0000000000000A5;
  v7 = v2 + 1;
  v8 = 432;
  do
  {
    if (!--v7)
    {
LABEL_35:

LABEL_36:
      v21 = v2 + 1;
      v22 = 440;
      do
      {
        if (!--v21)
        {
          goto LABEL_58;
        }

        v23 = *&v1[v22];
        v22 += 504;
      }

      while (!*(v23 + 16));
      v24 = v1 + 440;
      v25 = v2;
      while (1)
      {
        if (*(*(v24 - 32) + 16))
        {
          v26 = *(v24 - 96);
          v27 = *(*v24 + 16) || v26 == 2;
          if (!v27 && (v26 & 1) != 0)
          {
            break;
          }
        }

        v24 += 504;
        if (!--v25)
        {
          goto LABEL_58;
        }
      }

      if (qword_27F53F520 != -1)
      {
        goto LABEL_329;
      }

      while (1)
      {
        v28 = sub_252E36AD4();
        __swift_project_value_buffer(v28, qword_27F544E08);
        v137[0] = 0;
        v137[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](v6 - 96, 0x8000000252E6C920);
        v29 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v29);

        sub_252CC3D90(v137[0], v137[1], 0xD0000000000000A5, 0x8000000252E6C870);

        result = *(v1 + 2);
        if (result)
        {
          v30 = 0;
          v31 = 536;
          while (!*(*&v1[v31 - 96] + 16))
          {
            ++v30;
            v31 += 504;
            if (result == v30)
            {
              goto LABEL_52;
            }
          }

          v33 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_357;
          }

          if (v33 != result)
          {
            while (v33 < result)
            {
              if (!*(*&v1[v31 + 408] + 16))
              {
                if (v33 != v30)
                {
                  if (v30 >= result)
                  {
                    goto LABEL_331;
                  }

                  memcpy(__src, &v1[504 * v30 + 32], sizeof(__src));
                  memcpy(v137, &v1[v31], sizeof(v137));
                  sub_2529353AC(__src, __dst);
                  sub_2529353AC(v137, __dst);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v1 = sub_252D57AC0(v1);
                  }

                  v126 = &v1[504 * v30];
                  memcpy(v134, v126 + 32, sizeof(v134));
                  memcpy(v126 + 32, v137, 0x1F8uLL);
                  result = sub_252935408(v134);
                  if (v33 >= *(v1 + 2))
                  {
                    goto LABEL_333;
                  }

                  memcpy(__dst, &v1[v31], sizeof(__dst));
                  memcpy(&v1[v31], __src, 0x1F8uLL);
                  sub_252935408(__dst);
                  v138 = v1;
                  result = *(v1 + 2);
                }

                ++v30;
              }

              ++v33;
              v31 += 504;
              if (v33 == result)
              {
                goto LABEL_56;
              }
            }

LABEL_320:
            __break(1u);
LABEL_321:
            __break(1u);
LABEL_322:
            __break(1u);
LABEL_323:
            __break(1u);
LABEL_324:
            __break(1u);
LABEL_325:
            __break(1u);
LABEL_326:
            __break(1u);
            goto LABEL_327;
          }

LABEL_56:
          v32 = result;
          result = v30;
          if (v32 < v30)
          {
            goto LABEL_349;
          }
        }

        else
        {
LABEL_52:
          v32 = *(v1 + 2);
        }

        sub_252D57BC8(result, v32);
        v1 = v138;
        v2 = *(v138 + 2);
LABEL_58:
        v34 = v2 + 1;
        v35 = 448;
        do
        {
          if (!--v34)
          {
            goto LABEL_80;
          }

          v36 = *&v1[v35];
          v35 += 504;
        }

        while (!*(v36 + 16));
        v37 = v1 + 448;
        v38 = v2;
        while (1)
        {
          if (*(*(v37 - 31) + 16))
          {
            v39 = *(v37 - 104);
            v40 = *(*v37 + 16) || v39 == 2;
            if (!v40 && (v39 & 1) != 0)
            {
              break;
            }
          }

          v37 += 504;
          if (!--v38)
          {
            goto LABEL_80;
          }
        }

        if (qword_27F53F520 != -1)
        {
          swift_once();
        }

        v41 = sub_252E36AD4();
        __swift_project_value_buffer(v41, qword_27F544E08);
        v137[0] = 0;
        v137[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](v6 - 92, 0x8000000252E6C970);
        v42 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v42);

        sub_252CC3D90(v137[0], v137[1], 0xD0000000000000A5, 0x8000000252E6C870);

        result = *(v1 + 2);
        if (result)
        {
          v43 = 0;
          v44 = 536;
          while (!*(*&v1[v44 - 88] + 16))
          {
            ++v43;
            v44 += 504;
            if (result == v43)
            {
              goto LABEL_75;
            }
          }

          v46 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_358;
          }

          if (v46 != result)
          {
            while (v46 < result)
            {
              if (!*(*&v1[v44 + 416] + 16))
              {
                if (v46 != v43)
                {
                  if (v43 >= result)
                  {
                    goto LABEL_332;
                  }

                  memcpy(__src, &v1[504 * v43 + 32], sizeof(__src));
                  memcpy(v137, &v1[v44], sizeof(v137));
                  sub_2529353AC(__src, __dst);
                  sub_2529353AC(v137, __dst);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v1 = sub_252D57AC0(v1);
                  }

                  v127 = &v1[504 * v43];
                  memcpy(v134, v127 + 32, sizeof(v134));
                  memcpy(v127 + 32, v137, 0x1F8uLL);
                  result = sub_252935408(v134);
                  if (v46 >= *(v1 + 2))
                  {
                    goto LABEL_335;
                  }

                  memcpy(__dst, &v1[v44], sizeof(__dst));
                  memcpy(&v1[v44], __src, 0x1F8uLL);
                  sub_252935408(__dst);
                  v138 = v1;
                  result = *(v1 + 2);
                }

                ++v43;
              }

              ++v46;
              v44 += 504;
              if (v46 == result)
              {
                goto LABEL_78;
              }
            }

            goto LABEL_321;
          }

LABEL_78:
          v45 = result;
          result = v43;
          if (v45 < v43)
          {
            goto LABEL_350;
          }
        }

        else
        {
LABEL_75:
          v45 = *(v1 + 2);
        }

        sub_252D57BC8(result, v45);
        v1 = v138;
        v2 = *(v138 + 2);
LABEL_80:
        v47 = v2 + 1;
        v48 = 472;
        do
        {
          if (!--v47)
          {
            goto LABEL_102;
          }

          v49 = *&v1[v48];
          v48 += 504;
        }

        while (!*(v49 + 16));
        v50 = (v1 + 344);
        v51 = v2;
        while (1)
        {
          if (*(*(v50 - 26) + 16))
          {
            v52 = *v50;
            v53 = *(*(v50 + 16) + 16) || v52 == 2;
            if (!v53 && (v52 & 1) != 0)
            {
              break;
            }
          }

          v50 += 504;
          if (!--v51)
          {
            goto LABEL_102;
          }
        }

        if (qword_27F53F520 != -1)
        {
          swift_once();
        }

        v54 = sub_252E36AD4();
        __swift_project_value_buffer(v54, qword_27F544E08);
        v137[0] = 0;
        v137[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](v6 - 102, 0x8000000252E6C9C0);
        v55 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v55);

        sub_252CC3D90(v137[0], v137[1], 0xD0000000000000A5, 0x8000000252E6C870);

        result = *(v1 + 2);
        if (result)
        {
          v56 = 0;
          v57 = 536;
          while (!*(*&v1[v57 - 64] + 16))
          {
            ++v56;
            v57 += 504;
            if (result == v56)
            {
              goto LABEL_97;
            }
          }

          v59 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            goto LABEL_359;
          }

          if (v59 != result)
          {
            while (v59 < result)
            {
              if (!*(*&v1[v57 + 440] + 16))
              {
                if (v59 != v56)
                {
                  if (v56 >= result)
                  {
                    goto LABEL_334;
                  }

                  memcpy(__src, &v1[504 * v56 + 32], sizeof(__src));
                  memcpy(v137, &v1[v57], sizeof(v137));
                  sub_2529353AC(__src, __dst);
                  sub_2529353AC(v137, __dst);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v1 = sub_252D57AC0(v1);
                  }

                  v128 = &v1[504 * v56];
                  memcpy(v134, v128 + 32, sizeof(v134));
                  memcpy(v128 + 32, v137, 0x1F8uLL);
                  result = sub_252935408(v134);
                  if (v59 >= *(v1 + 2))
                  {
                    goto LABEL_337;
                  }

                  memcpy(__dst, &v1[v57], sizeof(__dst));
                  memcpy(&v1[v57], __src, 0x1F8uLL);
                  sub_252935408(__dst);
                  v138 = v1;
                  result = *(v1 + 2);
                }

                ++v56;
              }

              ++v59;
              v57 += 504;
              if (v59 == result)
              {
                goto LABEL_100;
              }
            }

            goto LABEL_322;
          }

LABEL_100:
          v58 = result;
          result = v56;
          if (v58 < v56)
          {
            goto LABEL_351;
          }
        }

        else
        {
LABEL_97:
          v58 = *(v1 + 2);
        }

        sub_252D57BC8(result, v58);
        v1 = v138;
        v2 = *(v138 + 2);
LABEL_102:
        v60 = v2 + 1;
        v61 = 488;
        do
        {
          if (!--v60)
          {
            goto LABEL_124;
          }

          v62 = *&v1[v61];
          v61 += 504;
        }

        while (!*(v62 + 16));
        v63 = v1 + 256;
        v64 = v2;
        while (1)
        {
          if (*(*v63 + 16))
          {
            v65 = v63[88];
            v66 = *(*(v63 + 29) + 16) || v65 == 2;
            if (!v66 && (v65 & 1) != 0)
            {
              break;
            }
          }

          v63 += 504;
          if (!--v64)
          {
            goto LABEL_124;
          }
        }

        if (qword_27F53F520 != -1)
        {
          swift_once();
        }

        v67 = sub_252E36AD4();
        __swift_project_value_buffer(v67, qword_27F544E08);
        v137[0] = 0;
        v137[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](v6 - 102, 0x8000000252E6CA00);
        v68 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v68);

        sub_252CC3D90(v137[0], v137[1], 0xD0000000000000A5, 0x8000000252E6C870);

        result = *(v1 + 2);
        if (result)
        {
          v69 = 0;
          v70 = 536;
          while (!*(*&v1[v70 - 48] + 16))
          {
            ++v69;
            v70 += 504;
            if (result == v69)
            {
              goto LABEL_119;
            }
          }

          v72 = v69 + 1;
          if (__OFADD__(v69, 1))
          {
            goto LABEL_360;
          }

          if (v72 != result)
          {
            while (v72 < result)
            {
              if (!*(*&v1[v70 + 456] + 16))
              {
                if (v72 != v69)
                {
                  if (v69 >= result)
                  {
                    goto LABEL_336;
                  }

                  memcpy(__src, &v1[504 * v69 + 32], sizeof(__src));
                  memcpy(v137, &v1[v70], sizeof(v137));
                  sub_2529353AC(__src, __dst);
                  sub_2529353AC(v137, __dst);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v1 = sub_252D57AC0(v1);
                  }

                  v129 = &v1[504 * v69];
                  memcpy(v134, v129 + 32, sizeof(v134));
                  memcpy(v129 + 32, v137, 0x1F8uLL);
                  result = sub_252935408(v134);
                  if (v72 >= *(v1 + 2))
                  {
                    goto LABEL_339;
                  }

                  memcpy(__dst, &v1[v70], sizeof(__dst));
                  memcpy(&v1[v70], __src, 0x1F8uLL);
                  sub_252935408(__dst);
                  v138 = v1;
                  result = *(v1 + 2);
                }

                ++v69;
              }

              ++v72;
              v70 += 504;
              if (v72 == result)
              {
                goto LABEL_122;
              }
            }

            goto LABEL_323;
          }

LABEL_122:
          v71 = result;
          result = v69;
          if (v71 < v69)
          {
            goto LABEL_352;
          }
        }

        else
        {
LABEL_119:
          v71 = *(v1 + 2);
        }

        sub_252D57BC8(result, v71);
        v1 = v138;
        v2 = *(v138 + 2);
LABEL_124:
        v73 = v2 + 1;
        v74 = 504;
        do
        {
          if (!--v73)
          {
            goto LABEL_146;
          }

          v75 = *&v1[v74];
          v74 += 504;
        }

        while (!*(v75 + 16));
        v76 = v1;
        v77 = v2;
        while (1)
        {
          if (*(*(v76 + 10) + 16))
          {
            v78 = v76[344];
            v79 = *(*(v76 + 63) + 16) || v78 == 2;
            if (!v79 && (v78 & 1) != 0)
            {
              break;
            }
          }

          v76 += 504;
          if (!--v77)
          {
            goto LABEL_146;
          }
        }

        if (qword_27F53F520 != -1)
        {
          swift_once();
        }

        v80 = sub_252E36AD4();
        __swift_project_value_buffer(v80, qword_27F544E08);
        v137[0] = 0;
        v137[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](v6 - 102, 0x8000000252E6CA40);
        v81 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v81);

        sub_252CC3D90(v137[0], v137[1], 0xD0000000000000A5, 0x8000000252E6C870);

        result = *(v1 + 2);
        if (result)
        {
          v82 = 0;
          v83 = 536;
          while (!*(*&v1[v83 - 48] + 16))
          {
            ++v82;
            v83 += 504;
            if (result == v82)
            {
              goto LABEL_141;
            }
          }

          v85 = v82 + 1;
          if (__OFADD__(v82, 1))
          {
            goto LABEL_361;
          }

          if (v85 != result)
          {
            while (v85 < result)
            {
              if (!*(*&v1[v83 + 456] + 16))
              {
                if (v85 != v82)
                {
                  if (v82 >= result)
                  {
                    goto LABEL_338;
                  }

                  memcpy(__src, &v1[504 * v82 + 32], sizeof(__src));
                  memcpy(v137, &v1[v83], sizeof(v137));
                  sub_2529353AC(__src, __dst);
                  sub_2529353AC(v137, __dst);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v1 = sub_252D57AC0(v1);
                  }

                  v130 = &v1[504 * v82];
                  memcpy(v134, v130 + 32, sizeof(v134));
                  memcpy(v130 + 32, v137, 0x1F8uLL);
                  result = sub_252935408(v134);
                  if (v85 >= *(v1 + 2))
                  {
                    goto LABEL_341;
                  }

                  memcpy(__dst, &v1[v83], sizeof(__dst));
                  memcpy(&v1[v83], __src, 0x1F8uLL);
                  sub_252935408(__dst);
                  v138 = v1;
                  result = *(v1 + 2);
                }

                ++v82;
              }

              ++v85;
              v83 += 504;
              if (v85 == result)
              {
                goto LABEL_144;
              }
            }

            goto LABEL_324;
          }

LABEL_144:
          v84 = result;
          result = v82;
          if (v84 < v82)
          {
            goto LABEL_353;
          }
        }

        else
        {
LABEL_141:
          v84 = *(v1 + 2);
        }

        sub_252D57BC8(result, v84);
        v1 = v138;
        v2 = *(v138 + 2);
LABEL_146:
        v86 = v2 + 1;
        v87 = 456;
        do
        {
          if (!--v86)
          {
            goto LABEL_168;
          }

          v88 = *&v1[v87];
          v87 += 504;
        }

        while (!*(v88 + 16));
        v89 = (v1 + 344);
        v90 = v2;
        while (1)
        {
          if (*(*(v89 - 22) + 16))
          {
            v91 = *v89;
            v92 = *(*(v89 + 14) + 16) || v91 == 2;
            if (!v92 && (v91 & 1) != 0)
            {
              break;
            }
          }

          v89 += 504;
          if (!--v90)
          {
            goto LABEL_168;
          }
        }

        if (qword_27F53F520 != -1)
        {
          swift_once();
        }

        v93 = sub_252E36AD4();
        __swift_project_value_buffer(v93, qword_27F544E08);
        v137[0] = 0;
        v137[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](v6 - 102, 0x8000000252E6CA80);
        v94 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v94);

        sub_252CC3D90(v137[0], v137[1], 0xD0000000000000A5, 0x8000000252E6C870);

        result = *(v1 + 2);
        if (result)
        {
          v95 = 0;
          v96 = 536;
          while (!*(*&v1[v96 - 80] + 16))
          {
            ++v95;
            v96 += 504;
            if (result == v95)
            {
              goto LABEL_163;
            }
          }

          v98 = v95 + 1;
          if (__OFADD__(v95, 1))
          {
            goto LABEL_362;
          }

          if (v98 != result)
          {
            while (v98 < result)
            {
              if (!*(*&v1[v96 + 424] + 16))
              {
                if (v98 != v95)
                {
                  if (v95 >= result)
                  {
                    goto LABEL_340;
                  }

                  memcpy(__src, &v1[504 * v95 + 32], sizeof(__src));
                  memcpy(v137, &v1[v96], sizeof(v137));
                  sub_2529353AC(__src, __dst);
                  sub_2529353AC(v137, __dst);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v1 = sub_252D57AC0(v1);
                  }

                  v131 = &v1[504 * v95];
                  memcpy(v134, v131 + 32, sizeof(v134));
                  memcpy(v131 + 32, v137, 0x1F8uLL);
                  result = sub_252935408(v134);
                  if (v98 >= *(v1 + 2))
                  {
                    goto LABEL_343;
                  }

                  memcpy(__dst, &v1[v96], sizeof(__dst));
                  memcpy(&v1[v96], __src, 0x1F8uLL);
                  sub_252935408(__dst);
                  v138 = v1;
                  result = *(v1 + 2);
                }

                ++v95;
              }

              ++v98;
              v96 += 504;
              if (v98 == result)
              {
                goto LABEL_166;
              }
            }

            goto LABEL_325;
          }

LABEL_166:
          v97 = result;
          result = v95;
          if (v97 < v95)
          {
            goto LABEL_354;
          }
        }

        else
        {
LABEL_163:
          v97 = *(v1 + 2);
        }

        sub_252D57BC8(result, v97);
        v1 = v138;
        v2 = *(v138 + 2);
LABEL_168:
        v99 = v2 + 1;
        v100 = 464;
        do
        {
          if (!--v99)
          {
            goto LABEL_190;
          }

          v101 = *&v1[v100];
          v100 += 504;
        }

        while (!*(v101 + 16));
        v102 = (v1 + 344);
        v103 = v2;
        while (1)
        {
          if (*(*(v102 - 21) + 16))
          {
            v104 = *v102;
            v105 = *(*(v102 + 15) + 16) || v104 == 2;
            if (!v105 && (v104 & 1) != 0)
            {
              break;
            }
          }

          v102 += 504;
          if (!--v103)
          {
            goto LABEL_190;
          }
        }

        if (qword_27F53F520 != -1)
        {
          swift_once();
        }

        v106 = sub_252E36AD4();
        __swift_project_value_buffer(v106, qword_27F544E08);
        v137[0] = 0;
        v137[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](v6 - 96, 0x8000000252E6CAC0);
        v107 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v107);

        sub_252CC3D90(v137[0], v137[1], 0xD0000000000000A5, 0x8000000252E6C870);

        result = *(v1 + 2);
        if (result)
        {
          v108 = 0;
          v109 = 536;
          while (!*(*&v1[v109 - 72] + 16))
          {
            ++v108;
            v109 += 504;
            if (result == v108)
            {
              goto LABEL_185;
            }
          }

          v111 = v108 + 1;
          if (__OFADD__(v108, 1))
          {
            goto LABEL_363;
          }

          if (v111 != result)
          {
            while (v111 < result)
            {
              if (!*(*&v1[v109 + 432] + 16))
              {
                if (v111 != v108)
                {
                  if (v108 >= result)
                  {
                    goto LABEL_342;
                  }

                  memcpy(__src, &v1[504 * v108 + 32], sizeof(__src));
                  memcpy(v137, &v1[v109], sizeof(v137));
                  sub_2529353AC(__src, __dst);
                  sub_2529353AC(v137, __dst);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v1 = sub_252D57AC0(v1);
                  }

                  v132 = &v1[504 * v108];
                  memcpy(v134, v132 + 32, sizeof(v134));
                  memcpy(v132 + 32, v137, 0x1F8uLL);
                  result = sub_252935408(v134);
                  if (v111 >= *(v1 + 2))
                  {
                    goto LABEL_345;
                  }

                  memcpy(__dst, &v1[v109], sizeof(__dst));
                  memcpy(&v1[v109], __src, 0x1F8uLL);
                  sub_252935408(__dst);
                  v138 = v1;
                  result = *(v1 + 2);
                }

                ++v108;
              }

              ++v111;
              v109 += 504;
              if (v111 == result)
              {
                goto LABEL_188;
              }
            }

            goto LABEL_326;
          }

LABEL_188:
          v110 = result;
          result = v108;
          if (v110 < v108)
          {
            goto LABEL_355;
          }
        }

        else
        {
LABEL_185:
          v110 = *(v1 + 2);
        }

        sub_252D57BC8(result, v110);
        v1 = v138;
        v2 = *(v138 + 2);
LABEL_190:
        v112 = v2 + 1;
        v113 = 512;
        do
        {
          if (!--v112)
          {
            return v1;
          }

          v114 = *&v1[v113];
          v113 += 504;
        }

        while (!*(v114 + 16));
        for (i = (v1 + 344); ; i += 504)
        {
          if (*(*(i - 23) + 16))
          {
            v116 = *i;
            v117 = *(*(i + 21) + 16) || v116 == 2;
            if (!v117 && (v116 & 1) != 0)
            {
              break;
            }
          }

          if (!--v2)
          {
            return v1;
          }
        }

        if (qword_27F53F520 != -1)
        {
          swift_once();
        }

        v118 = sub_252E36AD4();
        __swift_project_value_buffer(v118, qword_27F544E08);
        v137[0] = 0;
        v137[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](v6 - 106, 0x8000000252E6CB10);
        v119 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v119);

        sub_252CC3D90(v137[0], v137[1], 0xD0000000000000A5, 0x8000000252E6C870);

        result = *(v1 + 2);
        if (!result)
        {
LABEL_207:
          v122 = *(v1 + 2);
LABEL_211:
          sub_252D57BC8(result, v122);
          return v138;
        }

        v120 = 0;
        v121 = 536;
        while (!*(*&v1[v121 - 24] + 16))
        {
          ++v120;
          v121 += 504;
          if (result == v120)
          {
            goto LABEL_207;
          }
        }

        v6 = v120 + 1;
        if (__OFADD__(v120, 1))
        {
          goto LABEL_364;
        }

        if (v6 == result)
        {
LABEL_210:
          v122 = result;
          result = v120;
          if (v122 < v120)
          {
            goto LABEL_356;
          }

          goto LABEL_211;
        }

        while (v6 < result)
        {
          if (!*(*&v1[v121 + 480] + 16))
          {
            if (v6 != v120)
            {
              if (v120 >= result)
              {
                goto LABEL_344;
              }

              memcpy(__src, &v1[504 * v120 + 32], sizeof(__src));
              memcpy(v137, &v1[v121], sizeof(v137));
              sub_2529353AC(__src, __dst);
              sub_2529353AC(v137, __dst);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v1 = sub_252D57AC0(v1);
              }

              v133 = &v1[504 * v120];
              memcpy(v134, v133 + 32, sizeof(v134));
              memcpy(v133 + 32, v137, 0x1F8uLL);
              result = sub_252935408(v134);
              if (v6 >= *(v1 + 2))
              {
                goto LABEL_346;
              }

              memcpy(__dst, &v1[v121], sizeof(__dst));
              memcpy(&v1[v121], __src, 0x1F8uLL);
              sub_252935408(__dst);
              v138 = v1;
              result = *(v1 + 2);
            }

            ++v120;
          }

          ++v6;
          v121 += 504;
          if (v6 == result)
          {
            goto LABEL_210;
          }
        }

LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        swift_once();
      }
    }

    v9 = *(a1 + v8);
    v8 += 504;
  }

  while (!*(v9 + 16));
  v10 = a1 + 432;
  v11 = *(a1 + 16);
  while (1)
  {
    if (!v11)
    {
      __break(1u);
      goto LABEL_320;
    }

    if (*(*(v10 - 240) + 16))
    {
      v12 = *(v10 - 88);
      v13 = *(*v10 + 16) || v12 == 2;
      if (!v13 && (v12 & 1) != 0)
      {
        break;
      }
    }

    v10 += 504;
    if (!--v11)
    {
      goto LABEL_35;
    }
  }

  v14 = qword_27F53F520;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_27F544E08);
  v137[0] = 0;
  v137[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000041, 0x8000000252E6C820);
  v16 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v16);

  sub_252CC3D90(0, 0xE000000000000000, 0xD0000000000000A5, 0x8000000252E6C870);

  if (!v2)
  {
LABEL_32:
    v18 = v2;
    goto LABEL_33;
  }

  v18 = 0;
  v19 = 536;
  while (!*(*&v1[v19 - 104] + 16))
  {
    ++v18;
    v19 += 504;
    if (v2 == v18)
    {
      goto LABEL_32;
    }
  }

  v123 = v18 + 1;
  if (!__OFADD__(v18, 1))
  {
    if (v123 != v2)
    {
      do
      {
        v124 = *(v1 + 2);
        if (v123 >= v124)
        {
          goto LABEL_328;
        }

        if (!*(*&v1[v19 + 400] + 16))
        {
          if (v123 != v18)
          {
            if (v18 >= v124)
            {
              goto LABEL_347;
            }

            memcpy(__src, &v1[504 * v18 + 32], sizeof(__src));
            memcpy(v137, &v1[v19], sizeof(v137));
            sub_2529353AC(__src, __dst);
            sub_2529353AC(v137, __dst);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v1 = sub_252D57AC0(v1);
            }

            v125 = &v1[504 * v18];
            memcpy(v134, v125 + 32, sizeof(v134));
            memcpy(v125 + 32, v137, 0x1F8uLL);
            result = sub_252935408(v134);
            if (v123 >= *(v1 + 2))
            {
              goto LABEL_348;
            }

            memcpy(__dst, &v1[v19], sizeof(__dst));
            memcpy(&v1[v19], __src, 0x1F8uLL);
            result = sub_252935408(__dst);
            v138 = v1;
            v124 = *(v1 + 2);
          }

          ++v18;
        }

        ++v123;
        v19 += 504;
      }

      while (v123 != v124);
    }

LABEL_33:
    v20 = *(v1 + 2);
    if (v20 >= v18)
    {
      sub_252D57BC8(v18, v20);
      v1 = v138;
      v2 = *(v138 + 2);
      goto LABEL_36;
    }

    __break(1u);
LABEL_331:
    __break(1u);
LABEL_332:
    __break(1u);
LABEL_333:
    __break(1u);
LABEL_334:
    __break(1u);
LABEL_335:
    __break(1u);
LABEL_336:
    __break(1u);
LABEL_337:
    __break(1u);
LABEL_338:
    __break(1u);
LABEL_339:
    __break(1u);
LABEL_340:
    __break(1u);
LABEL_341:
    __break(1u);
LABEL_342:
    __break(1u);
LABEL_343:
    __break(1u);
LABEL_344:
    __break(1u);
LABEL_345:
    __break(1u);
LABEL_346:
    __break(1u);
LABEL_347:
    __break(1u);
LABEL_348:
    __break(1u);
LABEL_349:
    __break(1u);
LABEL_350:
    __break(1u);
LABEL_351:
    __break(1u);
LABEL_352:
    __break(1u);
LABEL_353:
    __break(1u);
LABEL_354:
    __break(1u);
LABEL_355:
    __break(1u);
LABEL_356:
    __break(1u);
LABEL_357:
    __break(1u);
LABEL_358:
    __break(1u);
LABEL_359:
    __break(1u);
LABEL_360:
    __break(1u);
LABEL_361:
    __break(1u);
LABEL_362:
    __break(1u);
LABEL_363:
    __break(1u);
LABEL_364:
    __break(1u);
  }

  __break(1u);
  return result;
}

dispatch_semaphore_t sub_252978984()
{
  result = dispatch_semaphore_create(1);
  qword_27F5753E8 = result;
  return result;
}

uint64_t sub_252978A28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 176);
  *(v3 + 176) = v2;
}

uint64_t sub_252978A88()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
}

uint64_t sub_252978AC0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 176);
  *(v1 + 176) = a1;
}

uint64_t sub_252978B58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 184);
  *(v3 + 184) = v2;
}

uint64_t sub_252978BB8()
{
  swift_beginAccess();
  v1 = *(v0 + 184);
}

uint64_t sub_252978BF0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 184);
  *(v1 + 184) = a1;
}

uint64_t sub_252978D40()
{
  sub_252E35F84();
  if (!sub_252E35F54())
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v0 = sub_252E36AD4();
    __swift_project_value_buffer(v0, qword_27F544D60);
    sub_252CC4050(0xD000000000000072, 0x8000000252E6CB50, 0xD000000000000079, 0x8000000252E6CBD0, 0xD000000000000010, 0x8000000252E6CC50, 68);
    sub_252E35F74();
  }

  v1 = sub_252E35F04();

  return v1;
}

char *sub_252978E58()
{
  v1 = v0;
  v2 = sub_252E363B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  *(v0 + 57) = 0;
  v4 = OBJC_IVAR____TtC22HomeAutomationInternal18ApplicationContext_showHomeIntentTimed;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5407F0, &qword_252E3DE18);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  sub_252E34174();
  sub_252927BEC(&v35, (v1 + 16));
  sub_252E33814();
  sub_252927BEC(&v35, (v1 + 56));
  sub_252E33F34();
  sub_252927BEC(&v35, (v1 + 96));
  type metadata accessor for HomeAutomationCATs();
  sub_252E363A4();
  *(v1 + 22) = sub_252E362C4();
  type metadata accessor for HomeAutomationCATsSimple();
  sub_252E363A4();
  *(v1 + 23) = sub_252E36354();
  type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  sub_252E363A4();
  *(v1 + 29) = sub_252E362C4();
  v6 = type metadata accessor for DefaultOutputGenerator();
  v7 = swift_allocObject();
  v8 = sub_252E33C64();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_252E33C54();
  v12 = MEMORY[0x277D5BD58];
  v7[5] = v8;
  v7[6] = v12;
  v7[2] = v11;
  sub_252E33F34();
  v13 = *(v8 + 48);
  v14 = *(v8 + 52);
  swift_allocObject();
  v34 = sub_252E33C54();
  v15 = sub_252E334C4();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_252E334B4();
  v19 = MEMORY[0x277D5B808];
  v7[10] = v15;
  v7[11] = v19;
  v7[7] = v18;
  *(v1 + 20) = v6;
  *(v1 + 21) = &off_2864B0420;
  *(v1 + 17) = v7;
  v36 = type metadata accessor for LocationService();
  v37 = &protocol witness table for LocationService;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v35);
  if (qword_27F53F348 != -1)
  {
    swift_once();
  }

  v21 = sub_252E36C84();
  v22 = __swift_project_value_buffer(v21, qword_27F5432C0);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, v22, v21);
  sub_252927BEC(&v35, (v1 + 240));
  sub_252E35F84();
  sub_252E35F74();
  v23 = sub_252E35F64();

  *(v1 + 35) = v23;
  *(v1 + 39) = &type metadata for FeatureFlagProvider;
  *(v1 + 40) = &protocol witness table for FeatureFlagProvider;
  v24 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  *(v1 + 44) = sub_25297A460();
  *(v1 + 45) = &protocol witness table for NSMeasurementFormatter;
  *(v1 + 41) = v24;
  v25 = sub_252E368F4();
  v26 = sub_252E368E4();
  *(v1 + 49) = v25;
  *(v1 + 50) = &protocol witness table for ReferenceResolutionClient;
  *(v1 + 46) = v26;
  v27 = sub_252E369B4();
  v28 = sub_252E369A4();
  v29 = MEMORY[0x277D5FCE0];
  if (v28)
  {
    v30 = v27;
  }

  else
  {
    v30 = 0;
  }

  if (!v28)
  {
    v29 = 0;
  }

  *(v1 + 52) = v28;
  *(v1 + 53) = 0;
  *(v1 + 54) = 0;
  *(v1 + 55) = v30;
  *(v1 + 56) = v29;
  sub_252E36924();
  *(v1 + 51) = sub_252E36914();
  v31 = type metadata accessor for DefaultHomeDataDecorator();
  v32 = swift_allocObject();
  *(v1 + 27) = v31;
  *(v1 + 28) = &protocol witness table for DefaultHomeDataDecorator;
  *(v1 + 24) = v32;
  return v1;
}

uint64_t sub_252979258()
{
  v1 = v0[7];
  v2 = *(v1 + 456);
  v0[8] = v2;
  if (v2)
  {
    v10 = v0[1];
    v3 = v2;

    return v10(v2);
  }

  else
  {
    sub_252929E74(v1 + 56, (v0 + 2));
    v5 = sub_252E33E04();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v0[9] = sub_252E33DF4();
    v8 = *(MEMORY[0x277D5BEF8] + 4);
    v11 = (*MEMORY[0x277D5BEF8] + MEMORY[0x277D5BEF8]);
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_25297937C;

    return v11();
  }
}

uint64_t sub_25297937C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_25297947C, 0, 0);
}

uint64_t sub_25297947C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);

  v4 = *(v3 + 456);
  *(v3 + 456) = v1;
  v5 = v1;

  v6 = *(v0 + 88);
  v9 = *(v0 + 8);
  v7 = *(v0 + 64);

  return v9(v6);
}

uint64_t ApplicationContext.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  v1 = *(v0 + 176);

  v2 = *(v0 + 184);

  __swift_destroy_boxed_opaque_existential_1((v0 + 192));
  v3 = *(v0 + 232);

  __swift_destroy_boxed_opaque_existential_1((v0 + 240));
  v4 = *(v0 + 280);

  __swift_destroy_boxed_opaque_existential_1((v0 + 288));
  __swift_destroy_boxed_opaque_existential_1((v0 + 328));
  __swift_destroy_boxed_opaque_existential_1((v0 + 368));
  v5 = *(v0 + 408);

  sub_25293847C(v0 + 416, &qword_27F540318, &qword_252E3DCD0);

  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal18ApplicationContext_showHomeIntentTimed, &qword_27F5407D0, &qword_252E3DCD8);
  return v0;
}

uint64_t ApplicationContext.__deallocating_deinit()
{
  ApplicationContext.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_252979634()
{
  if (sub_252E338B4() & 1) != 0 || (sub_252E33894() & 1) != 0 || (sub_252E338A4())
  {
    return 1;
  }

  return sub_252E33884();
}

uint64_t sub_2529796B4()
{
  if (sub_252E338F4() & 1) != 0 || (sub_252E338D4())
  {
    return 1;
  }

  return sub_252E33834();
}

uint64_t sub_252979724()
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544D60);
  sub_252CC3D90(0xD00000000000001BLL, 0x8000000252E6CE10, 0xD000000000000079, 0x8000000252E6CBD0);
  if (qword_27F53F220 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  qword_27F5407C0 = 0;

  return sub_252E37614();
}

char *_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0()
{
  sub_252D806C0();
  sub_252D7ED58(0xD000000000000012, 0x8000000252E3DD80, sub_252979724, 0, 15);

  if (qword_27F53F220 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  v0 = qword_27F5407C0;
  if (qword_27F5407C0)
  {
  }

  else
  {
    v1 = type metadata accessor for ApplicationContext();
    v2 = *(v1 + 48);
    v3 = *(v1 + 52);
    swift_allocObject();
    v0 = sub_252978E58();
    qword_27F5407C0 = v0;
  }

  sub_252E37614();
  return v0;
}

uint64_t sub_252979914()
{
  type metadata accessor for ApplicationContext();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_252E36F34();
  }

  sub_252E36FD4();

  has_internal_content = os_variant_has_internal_content();

  return has_internal_content;
}

uint64_t type metadata accessor for ApplicationContext()
{
  result = qword_27F5407D8;
  if (!qword_27F5407D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252979A44()
{
  sub_252979C38();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_252979C38()
{
  if (!qword_27F5407E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F5407F0, &qword_252E3DE18);
    v0 = sub_252E37734();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5407E8);
    }
  }
}

uint64_t sub_252979CB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_252E32E04();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_252979D3C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_252E32E04();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_252979FA0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_252E32E04() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

id sub_25297A2A8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v1 = sub_252A31A94(0x6C7070612E6D6F63, 0xEE00656D6F482E65, 0);
  v2 = [v1 applicationState];

  v3 = [v2 isInstalled];
  return v3;
}

unint64_t sub_25297A460()
{
  result = qword_27F540878;
  if (!qword_27F540878)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F540878);
  }

  return result;
}

uint64_t sub_25297A4F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 0x7465677261546E69 && a2 == 0xE800000000000000;
  if (v5 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v7 = &unk_27F543C08;
    v8 = 1;
LABEL_7:
    v9 = sub_252BC6360(v7, v8);
    swift_endAccess();
    result = type metadata accessor for HomeAutomationPolledEntityResponses();
LABEL_8:
    *(a3 + 24) = result;
    *a3 = v9;
    return result;
  }

  if (a1 == 0x7261546E49746F6ELL && a2 == 0xEB00000000746567 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v7 = &unk_27F543C09;
    v8 = 0;
    goto LABEL_7;
  }

  if (a1 == 0x7453746567726174 && a2 == 0xEB00000000657461 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252BC61B0();
    if (!result)
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v9 = result;
    result = type metadata accessor for HomeAutomationEntityState(0);
    goto LABEL_8;
  }

  return sub_252C86824(a1, a2, a3);
}

uint64_t sub_25297A744(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2529F7A80(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25297A930(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2529F7BEC(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540880, &qword_252E53B20);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25297AA34(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2529F7FB0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25297AB2C(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_2529F7A80(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_252E082D0(&v43, &v4[16 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v46 = v24;
          v47 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v40 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v43;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = *(v4 + 2);
  v14 = v44;
  v15 = v45;
  v2 = v46;
  v42 = v44;
  if (!v47)
  {
    goto LABEL_19;
  }

  v20 = (v47 - 1) & v47;
  v21 = __clz(__rbit64(v47)) | (v46 << 6);
  v40 = v45;
  v22 = (v45 + 64) >> 6;
LABEL_27:
  v41 = result;
  v27 = (*(result + 48) + 16 * v21);
  v29 = *v27;
  v28 = v27[1];

  v30 = v42;
LABEL_29:
  while (1)
  {
    v31 = *(v4 + 3);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v32)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v13;
  }

  v38 = sub_2529F7A80((v31 > 1), v13 + 1, 1, v4);
  v30 = v42;
  v4 = v38;
  v32 = *(v38 + 3) >> 1;
  if (v13 >= v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v33 = &v4[16 * v13 + 32];
    *v33 = v29;
    *(v33 + 1) = v28;
    ++v13;
    if (!v20)
    {
      break;
    }

    result = v41;
LABEL_38:
    v36 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v37 = (*(result + 48) + ((v2 << 10) | (16 * v36)));
    v29 = *v37;
    v28 = v37[1];

    v30 = v42;
    if (v13 == v32)
    {
      v13 = v32;
      *(v4 + 2) = v32;
      goto LABEL_29;
    }
  }

  v34 = v2;
  result = v41;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v35 >= v22)
    {
      break;
    }

    v20 = *(v30 + 8 * v35);
    ++v34;
    if (v20)
    {
      v2 = v35;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v39 = v2 + 1;
  }

  else
  {
    v39 = v22;
  }

  v45 = v40;
  v46 = v39 - 1;
  v47 = 0;
  *(v4 + 2) = v13;
LABEL_13:
  result = sub_25291AE30();
  *v1 = v4;
  return result;
}

uint64_t sub_25297AEDC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v3 + 3) >> 1, v9 < v5))
  {
    if (v4 <= v5)
    {
      v10 = v4 + v2;
    }

    else
    {
      v10 = v4;
    }

    v3 = sub_2529F7B8C(isUniquelyReferenced_nonNull_native, v10, 1, v3);
    v9 = *(v3 + 3) >> 1;
  }

  v11 = *(v3 + 2);
  v12 = v9 - v11;
  result = sub_252E1135C(v39, &v3[8 * v11 + 32], v9 - v11, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  v14 = result;
  if (result)
  {
    v15 = *(v3 + 2);
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      __break(1u);
LABEL_19:
      v20 = (v12 + 64) >> 6;
      if (v20 <= v17 + 1)
      {
        v21 = v17 + 1;
      }

      else
      {
        v21 = (v12 + 64) >> 6;
      }

      v22 = v21 - 1;
      do
      {
        v23 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v23 >= v20)
        {
          v41 = v22;
          v42 = 0;
          goto LABEL_13;
        }

        v24 = *(v13 + 8 * v23);
        ++v17;
      }

      while (!v24);
      v18 = (v24 - 1) & v24;
      v19 = __clz(__rbit64(v24)) | (v23 << 6);
      v17 = v23;
      goto LABEL_27;
    }

    *(v3 + 2) = v17;
  }

  result = v39[0];
  if (v14 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v3 + 2);
  v13 = v39[1];
  v12 = v40;
  v17 = v41;
  if (!v42)
  {
    goto LABEL_19;
  }

  v18 = (v42 - 1) & v42;
  v19 = __clz(__rbit64(v42)) | (v41 << 6);
  v20 = (v40 + 64) >> 6;
LABEL_27:
  v25 = *(*(result + 48) + 8 * v19);
  while (1)
  {
    v26 = *(v3 + 3);
    v27 = v26 >> 1;
    if ((v26 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v27)
    {
      goto LABEL_35;
    }

LABEL_30:
    *(v3 + 2) = v6;
  }

  v36 = v17;
  v37 = v20;
  v38 = result;
  v31 = v13;
  v32 = v3;
  v33 = v18;
  v34 = sub_2529F7B8C((v26 > 1), v6 + 1, 1, v32);
  v18 = v33;
  v17 = v36;
  v20 = v37;
  v13 = v31;
  v3 = v34;
  result = v38;
  v27 = *(v3 + 3) >> 1;
  if (v6 >= v27)
  {
    goto LABEL_30;
  }

LABEL_35:
  while (1)
  {
    *&v3[8 * v6++ + 32] = v25;
    if (!v18)
    {
      break;
    }

LABEL_34:
    v28 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v25 = *(*(result + 48) + ((v17 << 9) | (8 * v28)));
    if (v6 == v27)
    {
      v6 = v27;
      goto LABEL_30;
    }
  }

  v29 = v17;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v30 >= v20)
    {
      break;
    }

    v18 = *(v13 + 8 * v30);
    ++v29;
    if (v18)
    {
      v17 = v30;
      goto LABEL_34;
    }
  }

  if (v20 <= v17 + 1)
  {
    v35 = v17 + 1;
  }

  else
  {
    v35 = v20;
  }

  v40 = v12;
  v41 = v35 - 1;
  v42 = 0;
  *(v3 + 2) = v6;
LABEL_13:
  result = sub_25291AE30();
  *v1 = v3;
  return result;
}

uint64_t sub_25297B17C(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v8 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v9 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v9 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + 8 * v9 + 32), (v7 + 32), 8 * v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v10 = *(v4 + 16);
  v11 = __OFADD__(v10, v3);
  v12 = v10 + v3;
  if (!v11)
  {
    *(v4 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_25297B314(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_252E378C4();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  v10 = *v1;
  if (!(*v1 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFADD__(v11, v9);
    result = v11 + v9;
    if (!v12)
    {
      goto LABEL_6;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 < 0)
  {
    v18 = *v1;
  }

  v19 = sub_252E378C4();
  v12 = __OFADD__(v19, v9);
  result = v19 + v9;
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_6:
  sub_252D58128();
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v14 = *(v3 + 0x10);
  v15 = ((*(v3 + 0x18) >> 1) - v14);
  result = sub_252E08894(&v36, (v3 + 8 * v14 + 32), v15, v8);
  if (result < v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result >= 1)
  {
    v16 = *(v3 + 16);
    v12 = __OFADD__(v16, result);
    v17 = v16 + result;
    if (v12)
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v3 + 16) = v17;
  }

  if (result != v15)
  {
LABEL_11:
    result = sub_25291AE30();
    *v7 = v2;
    return result;
  }

LABEL_18:
  v4 = *(v3 + 16);
  v3 = v36;
  v5 = v37;
  v8 = v39;
  v33 = v38;
  v6 = v40;
  if (v36 < 0)
  {
LABEL_22:
    if (!sub_252E37904())
    {
      goto LABEL_11;
    }

    sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
    result = swift_dynamicCast();
    v21 = v35;
    goto LABEL_33;
  }

  if (!v40)
  {
    v22 = (v38 + 64) >> 6;
    if (v22 <= v39 + 1)
    {
      v23 = v39 + 1;
    }

    else
    {
      v23 = (v38 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v20 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_61;
      }

      if (v20 >= v22)
      {
        v21 = 0;
        v6 = 0;
        goto LABEL_32;
      }

      v6 = *(v37 + 8 * v20);
      ++v8;
      if (v6)
      {
        goto LABEL_31;
      }
    }
  }

  v20 = v39;
LABEL_31:
  v25 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v21 = *(*(v36 + 48) + ((v20 << 9) | (8 * v25)));
  result = v21;
  v24 = v20;
LABEL_32:
  v39 = v24;
  v40 = v6;
  v8 = v24;
LABEL_33:
  if (!v21)
  {
    goto LABEL_11;
  }

  v26 = (v33 + 64) >> 6;
LABEL_35:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_252E372A4();
  }

  v2 = *v7;
  v27 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v32 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v27)
  {
    v27 = v4;
  }

  v34 = v27;
  while (1)
  {
    while (1)
    {
      if (v4 == v34)
      {
        v4 = v34;
        *(v32 + 16) = v34;
        goto LABEL_35;
      }

      *(v32 + 32 + 8 * v4++) = v21;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_252E37904())
      {
        sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
        result = swift_dynamicCast();
        v21 = v35;
        if (v35)
        {
          continue;
        }
      }

      goto LABEL_58;
    }

    if (!v6)
    {
      break;
    }

    v28 = v8;
LABEL_56:
    v31 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v21 = *(*(v3 + 48) + ((v28 << 9) | (8 * v31)));
    result = v21;
    v30 = v28;
LABEL_41:
    v36 = v3;
    v37 = v5;
    v38 = v33;
    v39 = v30;
    v8 = v30;
    v40 = v6;
    if (!v21)
    {
LABEL_58:
      *(v32 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v26 <= v8 + 1)
  {
    v29 = v8 + 1;
  }

  else
  {
    v29 = (v33 + 64) >> 6;
  }

  v30 = v29 - 1;
  while (1)
  {
    v28 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v28 >= v26)
    {
      v21 = 0;
      v6 = 0;
      goto LABEL_41;
    }

    v6 = *(v5 + 8 * v28);
    ++v8;
    if (v6)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_25297B69C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v3 + 3) >> 1, v9 < v5))
  {
    if (v4 <= v5)
    {
      v10 = v4 + v2;
    }

    else
    {
      v10 = v4;
    }

    v3 = sub_2529F7A6C(isUniquelyReferenced_nonNull_native, v10, 1, v3);
    v9 = *(v3 + 3) >> 1;
  }

  v11 = *(v3 + 2);
  v12 = v9 - v11;
  result = sub_252E08AE0(v39, &v3[8 * v11 + 32], v9 - v11, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  v14 = result;
  if (result)
  {
    v15 = *(v3 + 2);
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      __break(1u);
LABEL_19:
      v20 = (v12 + 64) >> 6;
      if (v20 <= v17 + 1)
      {
        v21 = v17 + 1;
      }

      else
      {
        v21 = (v12 + 64) >> 6;
      }

      v22 = v21 - 1;
      do
      {
        v23 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v23 >= v20)
        {
          v41 = v22;
          v42 = 0;
          goto LABEL_13;
        }

        v24 = *(v13 + 8 * v23);
        ++v17;
      }

      while (!v24);
      v18 = (v24 - 1) & v24;
      v19 = __clz(__rbit64(v24)) | (v23 << 6);
      v17 = v23;
      goto LABEL_27;
    }

    *(v3 + 2) = v17;
  }

  result = v39[0];
  if (v14 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v3 + 2);
  v13 = v39[1];
  v12 = v40;
  v17 = v41;
  if (!v42)
  {
    goto LABEL_19;
  }

  v18 = (v42 - 1) & v42;
  v19 = __clz(__rbit64(v42)) | (v41 << 6);
  v20 = (v40 + 64) >> 6;
LABEL_27:
  v25 = *(*(result + 48) + 8 * v19);
  while (1)
  {
    v26 = *(v3 + 3);
    v27 = v26 >> 1;
    if ((v26 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v27)
    {
      goto LABEL_35;
    }

LABEL_30:
    *(v3 + 2) = v6;
  }

  v36 = v17;
  v37 = v20;
  v38 = result;
  v31 = v13;
  v32 = v3;
  v33 = v18;
  v34 = sub_2529F7A6C((v26 > 1), v6 + 1, 1, v32);
  v18 = v33;
  v17 = v36;
  v20 = v37;
  v13 = v31;
  v3 = v34;
  result = v38;
  v27 = *(v3 + 3) >> 1;
  if (v6 >= v27)
  {
    goto LABEL_30;
  }

LABEL_35:
  while (1)
  {
    *&v3[8 * v6++ + 32] = v25;
    if (!v18)
    {
      break;
    }

LABEL_34:
    v28 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v25 = *(*(result + 48) + ((v17 << 9) | (8 * v28)));
    if (v6 == v27)
    {
      v6 = v27;
      goto LABEL_30;
    }
  }

  v29 = v17;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v30 >= v20)
    {
      break;
    }

    v18 = *(v13 + 8 * v30);
    ++v29;
    if (v18)
    {
      v17 = v30;
      goto LABEL_34;
    }
  }

  if (v20 <= v17 + 1)
  {
    v35 = v17 + 1;
  }

  else
  {
    v35 = v20;
  }

  v40 = v12;
  v41 = v35 - 1;
  v42 = 0;
  *(v3 + 2) = v6;
LABEL_13:
  result = sub_25291AE30();
  *v1 = v3;
  return result;
}

uint64_t sub_25297B924(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_2529F8884(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540288, &qword_252E41DE0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25297BB90(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2529F8AC8(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5408A0, &qword_252E3DF08);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25297BCAC(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v8 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v9 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v9 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + v9 + 32), (v7 + 32), v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v10 = *(v4 + 16);
  v11 = __OFADD__(v10, v3);
  v12 = v10 + v3;
  if (!v11)
  {
    *(v4 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_25297BDA8(uint64_t result)
{
  v4 = *(result + 16);
  v5 = *v1;
  v6 = *(*v1 + 2);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = result;
  v9 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v11 = *(v5 + 3) >> 1, v11 < v7))
  {
    if (v6 <= v7)
    {
      v12 = v6 + v4;
    }

    else
    {
      v12 = v6;
    }

    v5 = sub_2529F84A8(isUniquelyReferenced_nonNull_native, v12, 1, v5);
    v11 = *(v5 + 3) >> 1;
  }

  v13 = *(v5 + 2);
  v14 = v11 - v13;
  result = sub_252E09068(v107, &v5[152 * v13 + 32], v11 - v13, v8);
  if (result < v4)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v15 = *(v5 + 2);
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      __break(1u);
      goto LABEL_19;
    }

    *(v5 + 2) = v17;
  }

  if (result != v14)
  {
LABEL_13:
    result = sub_25291AE30();
    *v1 = v5;
    return result;
  }

LABEL_16:
  v3 = v93;
  v4 = *(v5 + 2);
  v14 = v107[1];
  v90 = v107[0];
  v2 = v107[2];
  v17 = v108;
  v18 = v109;
  if (v109)
  {
    v19 = v108;
LABEL_26:
    v23 = (v18 - 1) & v18;
    v24 = (*(v90 + 48) + 152 * (__clz(__rbit64(v18)) | (v19 << 6)));
    v25 = v24[1];
    v3[50] = *v24;
    v3[51] = v25;
    v26 = v24[5];
    v28 = v24[2];
    v27 = v24[3];
    v3[54] = v24[4];
    v3[55] = v26;
    v3[52] = v28;
    v3[53] = v27;
    v29 = v24[6];
    v30 = v24[7];
    v31 = v24[8];
    v104 = *(v24 + 72);
    v3[57] = v30;
    v3[58] = v31;
    v3[56] = v29;
    memmove(__dst, v24, 0x92uLL);
    GEOLocationCoordinate2DMake(__dst);
    sub_25297DE08(v103, v101);
    v22 = v19;
LABEL_27:
    v32 = v3[67];
    v3[56] = v3[66];
    v3[57] = v32;
    v3[58] = v3[68];
    v104 = v106;
    v33 = v3[63];
    v3[52] = v3[62];
    v3[53] = v33;
    v34 = v3[65];
    v3[54] = v3[64];
    v3[55] = v34;
    v35 = v3[61];
    v3[50] = v3[60];
    v3[51] = v35;
    if (sub_25297DE64(v103) != 1)
    {
      v2 = (v2 + 64) >> 6;
      v40 = v90;
      do
      {
        v45 = *(v5 + 3);
        v91 = v45 >> 1;
        if ((v45 >> 1) < v4 + 1)
        {
          v5 = sub_2529F84A8((v45 > 1), v4 + 1, 1, v5);
          v91 = *(v5 + 3) >> 1;
        }

        v46 = v3[67];
        v3[36] = v3[66];
        v3[37] = v46;
        v3[38] = v3[68];
        v48 = v3[62];
        v47 = v3[63];
        v49 = v3[61];
        v3[32] = v48;
        v3[33] = v47;
        v50 = v3[65];
        v51 = v3[63];
        v3[34] = v3[64];
        v3[35] = v50;
        v52 = v3[61];
        v53 = v3[60];
        v3[30] = v53;
        v3[31] = v52;
        v54 = v3[67];
        v3[46] = v3[66];
        v3[47] = v54;
        v3[48] = v3[68];
        v3[42] = v48;
        v3[43] = v51;
        v55 = v3[65];
        v3[44] = v3[64];
        v3[45] = v55;
        v100 = v106;
        v102 = v106;
        v3[40] = v53;
        v3[41] = v49;
        if (sub_25297DE64(v101) != 1)
        {
          while (v4 < v91)
          {
            v70 = v3[67];
            v3[16] = v3[66];
            v3[17] = v70;
            v3[18] = v3[68];
            v96 = v106;
            v71 = v3[63];
            v3[12] = v3[62];
            v3[13] = v71;
            v72 = v3[65];
            v3[14] = v3[64];
            v3[15] = v72;
            v73 = v3[61];
            v3[10] = v3[60];
            v3[11] = v73;
            v74 = v3[37];
            v3[26] = v3[36];
            v3[27] = v74;
            v3[28] = v3[38];
            v98 = v100;
            v75 = v3[33];
            v3[22] = v3[32];
            v3[23] = v75;
            v76 = v3[35];
            v3[24] = v3[34];
            v3[25] = v76;
            v77 = v3[31];
            v3[20] = v3[30];
            v3[21] = v77;
            sub_25297DE08(v97, v93);
            sub_25293847C(v95, &qword_27F5408A8, &unk_252E3DF10);
            memmove(&v5[152 * v4 + 32], __src, 0x92uLL);
            if (!v23)
            {
              if (v2 <= (v22 + 1))
              {
                v79 = v22 + 1;
              }

              else
              {
                v79 = v2;
              }

              v80 = v79 - 1;
              while (1)
              {
                v78 = v22 + 1;
                if (__OFADD__(v22, 1))
                {
                  break;
                }

                if (v78 >= v2)
                {
                  sub_25297DE88(v93);
                  v23 = 0;
                  v106 = v94;
                  v56 = v3[7];
                  v3[66] = v3[6];
                  v3[67] = v56;
                  v3[68] = v3[8];
                  v57 = v3[3];
                  v3[62] = v3[2];
                  v3[63] = v57;
                  v58 = v3[5];
                  v3[64] = v3[4];
                  v3[65] = v58;
                  v59 = v3[1];
                  v22 = v80;
                  v3[60] = *v3;
                  v3[61] = v59;
                  v40 = v90;
                  goto LABEL_36;
                }

                v23 = *(v14 + 8 * v78);
                ++v22;
                if (v23)
                {
                  v22 = v78;
                  v40 = v90;
                  goto LABEL_48;
                }
              }

              __break(1u);
              goto LABEL_50;
            }

            v78 = v22;
LABEL_48:
            v81 = __clz(__rbit64(v23));
            v23 &= v23 - 1;
            v82 = (*(v40 + 48) + 152 * (v81 | (v78 << 6)));
            v83 = v82[1];
            *v3 = *v82;
            v3[1] = v83;
            v84 = v82[5];
            v86 = v82[2];
            v85 = v82[3];
            v3[4] = v82[4];
            v3[5] = v84;
            v3[2] = v86;
            v3[3] = v85;
            v87 = v82[6];
            v88 = v82[7];
            v89 = v82[8];
            v94 = *(v82 + 72);
            v3[7] = v88;
            v3[8] = v89;
            v3[6] = v87;
            memmove(__dst, v82, 0x92uLL);
            GEOLocationCoordinate2DMake(__dst);
            sub_25297DE08(v93, v92);
LABEL_36:
            v60 = v3[67];
            v3[36] = v3[66];
            v3[37] = v60;
            v3[38] = v3[68];
            v62 = v3[62];
            v61 = v3[63];
            v63 = v3[61];
            v3[32] = v62;
            v3[33] = v61;
            v64 = v3[65];
            v65 = v3[63];
            v3[34] = v3[64];
            v3[35] = v64;
            v66 = v3[61];
            v67 = v3[60];
            v3[30] = v67;
            v3[31] = v66;
            v68 = v3[67];
            v3[46] = v3[66];
            v3[47] = v68;
            v3[48] = v3[68];
            v3[42] = v62;
            v3[43] = v65;
            v69 = v3[65];
            v3[44] = v3[64];
            v3[45] = v69;
            ++v4;
            v100 = v106;
            v102 = v106;
            v3[40] = v67;
            v3[41] = v63;
            if (sub_25297DE64(v101) == 1)
            {
              break;
            }
          }
        }

        *(v5 + 2) = v4;
        v41 = v3[67];
        v3[56] = v3[66];
        v3[57] = v41;
        v3[58] = v3[68];
        v104 = v106;
        v42 = v3[63];
        v3[52] = v3[62];
        v3[53] = v42;
        v43 = v3[65];
        v3[54] = v3[64];
        v3[55] = v43;
        v44 = v3[61];
        v3[50] = v3[60];
        v3[51] = v44;
      }

      while (sub_25297DE64(v103) != 1);
    }

    v36 = v3[67];
    v3[46] = v3[66];
    v3[47] = v36;
    v3[48] = v3[68];
    v102 = v106;
    v37 = v3[63];
    v3[42] = v3[62];
    v3[43] = v37;
    v38 = v3[65];
    v3[44] = v3[64];
    v3[45] = v38;
    v39 = v3[61];
    v3[40] = v3[60];
    v3[41] = v39;
    sub_25293847C(v101, &qword_27F5408A8, &unk_252E3DF10);
    goto LABEL_13;
  }

LABEL_19:
  v20 = (v2 + 64) >> 6;
  if (v20 <= v17 + 1)
  {
    v21 = v17 + 1;
  }

  else
  {
    v21 = (v2 + 64) >> 6;
  }

  v22 = v21 - 1;
  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v20)
    {
LABEL_50:
      sub_25297DE88(__dst);
      v23 = 0;
      goto LABEL_27;
    }

    v18 = *(v14 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25297C3C8(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_25297C538(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_252E378C4();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = *v3;
  if (!(*v3 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = __OFADD__(v9, v7);
    result = v9 + v7;
    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < 0)
  {
    v18 = *v3;
  }

  v19 = sub_252E378C4();
  v10 = __OFADD__(v19, v7);
  result = v19 + v7;
  if (v10)
  {
    goto LABEL_15;
  }

LABEL_5:
  a2();
  v12 = *v3;
  v13 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v13 + 8 * *(v13 + 0x10) + 32, (*(v13 + 0x18) >> 1) - *(v13 + 0x10), a1);
  v15 = v14;

  if (v15 < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v15 < 1)
  {
LABEL_9:
    *v3 = v12;
    return result;
  }

  v16 = *(v13 + 16);
  v10 = __OFADD__(v16, v15);
  v17 = v16 + v15;
  if (!v10)
  {
    *(v13 + 16) = v17;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t HomeEntityResponse.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v1.n128_f64[0] = HomeEntity.Builder.init()();
  v3 = (*(*v2 + 448))(v1);

  v4 = MEMORY[0x277D84F90];
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  return v0;
}

uint64_t HomeEntityResponse.Builder.init()()
{
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v1.n128_f64[0] = HomeEntity.Builder.init()();
  v3 = (*(*v2 + 448))(v1);

  v4 = MEMORY[0x277D84F90];
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  return v0;
}

uint64_t HomeEntityResponse.Builder.__allocating_init(from:withOutcome:withValue:)(void *a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  HomeEntityResponse.Builder.init(from:withOutcome:withValue:)(a1, a2, a3);
  return v6;
}

uint64_t HomeEntityResponse.Builder.init(from:withOutcome:withValue:)(void *a1, uint64_t a2, id a3)
{
  v4 = v3;
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v8.n128_f64[0] = HomeEntity.Builder.init()();
  v10 = (*(*v9 + 448))(v8);

  *(v3 + 24) = MEMORY[0x277D84F90];
  v11 = (v3 + 24);
  *(v4 + 16) = v10;
  if (a1)
  {
    v12 = [a1 userTask];
    if (v12)
    {
      v13 = v12;
      if (a3)
      {
        v14 = a3;
        v15 = [v13 taskType];
        v16 = [v13 attribute];
        v17 = objc_allocWithZone(type metadata accessor for HomeUserTask());
        a3 = v14;
        v18 = sub_252E36F04();
        v19 = [v17 initWithIdentifier:0 displayString:v18];

        v20 = v19;
        [v20 setTaskType_];
        [v20 setAttribute_];
        [v20 setValue_];

        v21 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
        v22 = v20;
        v23 = sub_252E36F04();
        v24 = [v21 initWithIdentifier:0 displayString:v23];

        v25 = v24;
        [v25 setTaskOutcome_];
        [v25 setUserTask_];
      }

      else
      {
        v26 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
        v27 = v13;
        v28 = sub_252E36F04();
        v29 = [v26 initWithIdentifier:0 displayString:v28];

        v25 = v29;
        [v25 setTaskOutcome_];
        [v25 setUserTask_];

        v22 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_252E3C130;
      *(v30 + 32) = v25;

      swift_beginAccess();
      v31 = *v11;
      *v11 = v30;
    }

    else
    {
    }
  }

  else
  {
  }

  return v4;
}

uint64_t HomeEntityResponse.Builder.__allocating_init(from:withOutcome:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  HomeEntityResponse.Builder.init(from:withOutcome:)(a1, a2);
  return v4;
}

uint64_t HomeEntityResponse.Builder.init(from:withOutcome:)(void *a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v6.n128_f64[0] = HomeEntity.Builder.init()();
  v8 = (*(*v7 + 448))(v6);

  *(v2 + 24) = MEMORY[0x277D84F90];
  v9 = (v2 + 24);
  *(v3 + 16) = v8;
  if (a1)
  {
    v10 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
    v11 = a1;
    v12 = sub_252E36F04();
    v13 = [v10 initWithIdentifier:0 displayString:v12];

    v14 = v13;
    [v14 setTaskOutcome_];
    [v14 setUserTask_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_252E3C130;
    *(v15 + 32) = v14;

    swift_beginAccess();
    v16 = *v9;
    *v9 = v15;
  }

  return v3;
}

uint64_t sub_25297CD10(unint64_t a1, void (*a2)(void))
{
  v14 = MEMORY[0x277D84F90];
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_18:
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2530ADF00](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    [v7 copyWithZone_];
    sub_252E377F4();
    swift_unknownObjectRelease();

    a2(0);
    ++v6;
    if (swift_dynamicCast() && v13)
    {
      MEMORY[0x2530AD700]();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v12 = v14;
      v6 = v9;
    }
  }

  return v12;
}

uint64_t sub_25297CECC(unint64_t a1)
{
  v12 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_18:
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v10 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x2530ADF00](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    [v5 copyWithZone_];
    sub_252E377F4();
    swift_unknownObjectRelease();

    sub_25293F638(0, &qword_27F540898, 0x277CD3CF8);
    ++v4;
    if (swift_dynamicCast() && v11)
    {
      MEMORY[0x2530AD700]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v10 = v12;
      v4 = v7;
    }
  }

  return v10;
}

uint64_t sub_25297D07C(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + 16);
    *(v1 + 16) = a1;
    v3 = a1;
  }
}

uint64_t sub_25297D0C0(uint64_t result)
{
  v2 = v1;
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  v5 = *(result + 16);
  v6 = result + 32;
  while (1)
  {
    if (v5 == v3)
    {
      swift_beginAccess();
      v11 = *(v2 + 24);
      *(v2 + 24) = v4;
    }

    if (v3 >= v5)
    {
      break;
    }

    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_11;
    }

    v8 = *(v6 + 8 * v3++);
    if (v8)
    {
      v9 = v8;
      MEMORY[0x2530AD700]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v4 = v12;
      v3 = v7;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_25297D1D0(uint64_t result)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  v3 = *(result + 16);
  v4 = result + 32;
  while (1)
  {
    if (v3 == v1)
    {
      swift_beginAccess();
      sub_25297C538(v2, sub_252D58128, sub_252E055F4);
      swift_endAccess();
    }

    if (v1 >= v3)
    {
      break;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_11;
    }

    v6 = *(v4 + 8 * v1++);
    if (v6)
    {
      v7 = v6;
      MEMORY[0x2530AD700]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v2 = v9;
      v1 = v5;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

id sub_25297D310()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
  v4 = v1;

  v5 = sub_252E36F04();
  v6 = [v3 initWithIdentifier:0 displayString:v5];

  v7 = v6;
  [v7 setEntity_];
  type metadata accessor for HomeUserTaskResponse();
  v8 = sub_252E37254();

  [v7 setTaskResponses_];

  return v7;
}

uint64_t sub_25297D404()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v0 + 24);
  type metadata accessor for HomeEntityResponse.Builder();
  v3 = swift_allocObject();
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  HomeEntity.Builder.init()();
  v5 = *(*v4 + 448);
  v6 = v1;

  v8 = v5(v7);

  *(v3 + 24) = MEMORY[0x277D84F90];
  *(v3 + 16) = v6;
  v9 = v6;

  v10 = sub_25297CD10(v2, type metadata accessor for HomeUserTaskResponse);

  swift_beginAccess();
  *(v3 + 24) = v10;

  return v3;
}

uint64_t HomeEntityResponse.Builder.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t HomeEntityResponse.Builder.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_25297D6E8()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v62 = MEMORY[0x277D84F90];
  v3 = [v0 entity];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 entityIdentifier];
    if (v5)
    {
      v6 = v5;
      v7 = sub_252E36F34();
      v9 = v8;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_252E3C130;
      type metadata accessor for HomeFilter.Builder();
      swift_allocObject();
      v10 = HomeFilter.Builder.init()();
      v12 = v11;
      v13 = [v4 homeEntityName];
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

      v18 = (*(*v12 + 576))(v15, v17);

      v19 = (*(*v18 + 592))([v4 type]);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_252E3C290;
      *(v20 + 32) = v7;
      *(v20 + 40) = v9;
      v21 = (*(*v19 + 568))();

      v22 = [v4 room];
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

      v27 = (*(*v21 + 680))(v24, v26);

      v28 = [v4 home];
      if (v28)
      {
        v29 = v28;
        v30 = sub_252E36F34();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      v33 = (*(*v27 + 632))(v30, v32);

      v35 = (*(*v33 + 760))(v34);

      *(v2 + 32) = v35;
    }
  }

  type metadata accessor for HomeStore();
  v36 = static HomeStore.shared.getter();
  v37 = HomeStore.services(matching:supporting:)(v2, 0);
  v39 = v38;

  if (v39)
  {
    goto LABEL_36;
  }

  if (!(v37 >> 62))
  {
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

LABEL_36:
    sub_252929F10(v37, v39 & 1);
    v58 = MEMORY[0x277D84F90];

    sub_252CC6468(v58);
    return;
  }

  if (!sub_252E378C4())
  {
    goto LABEL_36;
  }

LABEL_17:
  if ((v37 & 0xC000000000000001) != 0)
  {
    v40 = MEMORY[0x2530ADF00](0, v37);
  }

  else
  {
    if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_41;
    }

    v40 = *(v37 + 32);
  }

  sub_252929F10(v37, 0);
  v41 = [v1 taskResponses];
  if (!v41)
  {
    sub_252CC6468(MEMORY[0x277D84F90]);

    return;
  }

  v42 = v41;
  type metadata accessor for HomeUserTaskResponse();
  v1 = sub_252E37264();

  v61 = v40;
  if (v1 >> 62)
  {
LABEL_41:
    v43 = sub_252E378C4();
    if (v43)
    {
      goto LABEL_23;
    }

LABEL_42:
    v45 = MEMORY[0x277D84F90];
LABEL_43:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540888, &qword_252E3DEF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = v61;
    v60 = inited + 32;
    *(inited + 40) = v45;
    sub_252CC6468(inited);
    swift_setDeallocating();
    sub_25293847C(v60, &qword_27F540890, &qword_252E3DF00);
    return;
  }

  v43 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v43)
  {
    goto LABEL_42;
  }

LABEL_23:
  if (v43 >= 1)
  {
    v44 = 0;
    v45 = MEMORY[0x277D84F90];
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x2530ADF00](v44, v1);
      }

      else
      {
        v46 = *(v1 + 8 * v44 + 32);
      }

      v47 = v46;
      v48 = [v46 userTask];
      if (v48)
      {
        v49 = v48;
        v50 = [v48 attribute];
        v51 = [v49 value];
        v52 = objc_allocWithZone(type metadata accessor for HomeUserTask());
        v53 = sub_252E36F04();
        v54 = [v52 initWithIdentifier:0 displayString:v53];

        v55 = v54;
        [v55 setTaskType_];
        [v55 setAttribute_];
        [v55 setValue_];

        v56 = v55;
        MEMORY[0x2530AD700]();
        if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v57 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();

        v45 = v62;
      }

      else
      {
      }

      ++v44;
    }

    while (v43 != v44);
    goto LABEL_43;
  }

  __break(1u);
}

uint64_t sub_25297DE64(uint64_t a1)
{
  v1 = *(a1 + 8);
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

double sub_25297DE88(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_252E3DEC0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  return result;
}

unint64_t sub_25297DEB4(char a1)
{
  result = 0x74616E7265746C61;
  switch(a1)
  {
    case 1:
    case 55:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x616D7269666E6F63;
      break;
    case 3:
      result = 0x7274744165746164;
      break;
    case 4:
      result = 0x656D695465746164;
      break;
    case 5:
      result = 0x61746C6564;
      break;
    case 6:
      result = 0x61755161746C6564;
      break;
    case 7:
      result = 0x6C6F5261746C6564;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x746E657665;
      break;
    case 10:
      result = 0x73656D6F68;
      break;
    case 11:
      result = 1936029032;
      break;
    case 12:
      result = 0x74696D696CLL;
      break;
    case 13:
      result = 1668508013;
      break;
    case 14:
      result = 0x736E756F6ELL;
      break;
    case 15:
      result = 0x6E69486563616C70;
      break;
    case 16:
      result = 0x73746553676174;
      break;
    case 17:
      result = 0x736D6F6F72;
      break;
    case 18:
      result = 0x7241746567726174;
      break;
    case 19:
      result = 0x614D746567726174;
      break;
    case 20:
      result = 0x73656E656373;
      break;
    case 21:
      result = 0x7365636976726573;
      break;
    case 22:
    case 25:
      result = 0x726F737365636361;
      break;
    case 23:
      result = 0x4E65636976726573;
      break;
    case 24:
      result = 0x4765636976726573;
      break;
    case 26:
      result = 0x69746E456D6F7266;
      break;
    case 27:
      result = 0x697469746E456F74;
      break;
    case 28:
      result = 0x736574617473;
      break;
    case 29:
      result = 0x7374696E75;
      break;
    case 30:
      result = 1651664246;
      break;
    case 31:
      result = 0x6E6F697473657571;
      break;
    case 32:
      result = 0x73657361726870;
      break;
    case 33:
      result = 0x73656E6F7ALL;
      break;
    case 34:
      result = 0x72656767697274;
      break;
    case 35:
      result = 0xD000000000000016;
      break;
    case 36:
      result = 0x56636972656D756ELL;
      break;
    case 37:
      result = 0x6C616E696769726FLL;
      break;
    case 38:
      result = 0x636E657265666572;
      break;
    case 39:
      result = 0xD00000000000001ALL;
      break;
    case 40:
      result = 0xD000000000000018;
      break;
    case 41:
      result = 0x7364726F576C6C61;
      break;
    case 42:
      result = 0x664F7265626D756ELL;
      break;
    case 43:
      result = 0xD000000000000010;
      break;
    case 44:
    case 46:
      result = 0xD000000000000012;
      break;
    case 45:
      result = 0xD000000000000010;
      break;
    case 47:
      result = 0x6D614E70756F7267;
      break;
    case 48:
      result = 0x69746E4572657375;
      break;
    case 49:
      result = 0x7367616C66;
      break;
    case 50:
      result = 0xD000000000000017;
      break;
    case 51:
      result = 0x6261636F56736168;
      break;
    case 52:
      result = 0x7265666552736168;
      break;
    case 53:
      result = 0x6974746553736168;
      break;
    case 54:
      result = 0x526D796E6F6E7973;
      break;
    case 56:
      result = 0x6E49646568636163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25297E4F4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_25297DEB4(*a1);
  v5 = v4;
  if (v3 == sub_25297DEB4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_25297E57C()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_25297DEB4(v1);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_25297E5E0()
{
  sub_25297DEB4(*v0);
  sub_252E37044();
}

uint64_t sub_25297E634()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_25297DEB4(v1);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_25297E694@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252985A50();
  *a2 = result;
  return result;
}

unint64_t sub_25297E6C4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25297DEB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25297E6F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252985A50();
  *a1 = result;
  return result;
}

uint64_t sub_25297E72C(uint64_t a1)
{
  v2 = sub_252981E48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25297E768(uint64_t a1)
{
  v2 = sub_252981E48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeAutomationIntent.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5408B0, &unk_252E3DF20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v78 - v8;
  v253 = 1;
  v244 = 1;
  v242 = 1;
  v10 = a1[3];
  v11 = a1[4];
  v146 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_252981E48();
  sub_252E37F74();
  if (v2)
  {
    v254 = v2;
    LODWORD(v124) = 0;
    LODWORD(v122) = 0;
    LODWORD(v121) = 0;
    v127 = 0;
    v129 = 0;
    v135 = 0;
    v136 = 0;
    LODWORD(v138) = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v145 = 0;
    v144 = 3;
    v143 = 4;
    LODWORD(v139) = 9;
    LODWORD(v117) = 2;
    LODWORD(v109) = 22;
    v12 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v104 = MEMORY[0x277D84F90];
    v105 = MEMORY[0x277D84F90];
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v108 = 2;
    v110 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v112 = MEMORY[0x277D84F90];
    v113 = MEMORY[0x277D84F90];
    v114 = MEMORY[0x277D84F90];
    v115 = MEMORY[0x277D84F90];
    v116 = MEMORY[0x277D84F90];
    v118 = MEMORY[0x277D84F90];
    v119 = MEMORY[0x277D84F90];
    v120 = MEMORY[0x277D84F90];
    v123 = MEMORY[0x277D84F90];
    v125 = MEMORY[0x277D84F90];
    v126 = MEMORY[0x277D84F90];
    v128 = MEMORY[0x277D84F90];
    v130 = MEMORY[0x277D84F90];
    v137 = MEMORY[0x277D84F90];
    v140 = MEMORY[0x277D84F90];
    v141 = MEMORY[0x277D84F90];
    v142 = MEMORY[0x277D84F90];
    v13 = 4;
    v14 = MEMORY[0x277D84F90];
    v15 = 4;
    v16 = 2;
    v17 = 3;
    v18 = 3;
    v19 = MEMORY[0x277D84F90];
    v96 = MEMORY[0x277D84F90];
    v97 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    v95 = MEMORY[0x277D84F90];
    v92 = MEMORY[0x277D84F90];
    v93 = MEMORY[0x277D84F90];
    v90 = MEMORY[0x277D84F90];
    v91 = MEMORY[0x277D84F90];
    v88 = MEMORY[0x277D84F90];
    v89 = MEMORY[0x277D84F90];
    v87 = MEMORY[0x277D84F90];
    goto LABEL_4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402E0, &qword_252E3C118);
  LOBYTE(v147[0]) = 0;
  sub_252981E9C();
  sub_252E37C64();
  v86 = v161;
  LOBYTE(v147[0]) = 1;
  sub_252981F74();
  sub_252E37BE4();
  v21 = v161;
  LOBYTE(v147[0]) = 2;
  sub_252981FC8();
  sub_252E37BE4();
  v22 = a2;
  v85 = v21;
  v23 = v161;
  LOBYTE(v147[0]) = 3;
  sub_25298201C();
  sub_252E37BE4();
  v253 = v161;
  sub_252E35DD4();
  LOBYTE(v147[0]) = 4;
  sub_2529857B0(&qword_27F5408E8, MEMORY[0x277D56498]);
  sub_252E37BE4();
  v24 = v161;
  LOBYTE(v147[0]) = 5;
  sub_252982070();
  sub_252E37BE4();
  v145 = v24;
  v25 = v5;
  v26 = v161;
  LOBYTE(v147[0]) = 6;
  sub_2529820C4();
  sub_252E37BE4();
  LODWORD(v24) = v161;
  LOBYTE(v147[0]) = 7;
  sub_252982118();
  sub_252E37BE4();
  v144 = v24;
  v83 = v26;
  v84 = v23;
  v82 = v161;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403E0, &qword_252E3C5A0);
  LOBYTE(v147[0]) = 8;
  sub_25298216C();
  sub_252E37C64();
  v254 = 0;
  v27 = v6;
  v14 = v161;
  LOBYTE(v147[0]) = 9;
  sub_252982244();
  v28 = v25;
  v29 = v254;
  sub_252E37BE4();
  v254 = v29;
  if (v29)
  {
    (*(v27 + 8))(v9, v25);
    LODWORD(v124) = 0;
    LODWORD(v122) = 0;
    LODWORD(v121) = 0;
    v127 = 0;
    v129 = 0;
    v135 = 0;
    v136 = 0;
    LODWORD(v138) = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v143 = 4;
    LODWORD(v139) = 9;
    LODWORD(v117) = 2;
    LODWORD(v109) = 22;
    v12 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v104 = MEMORY[0x277D84F90];
    v105 = MEMORY[0x277D84F90];
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v108 = 2;
    v110 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v112 = MEMORY[0x277D84F90];
    v113 = MEMORY[0x277D84F90];
    v114 = MEMORY[0x277D84F90];
    v115 = MEMORY[0x277D84F90];
    v116 = MEMORY[0x277D84F90];
    v118 = MEMORY[0x277D84F90];
    v119 = MEMORY[0x277D84F90];
    v120 = MEMORY[0x277D84F90];
    v123 = MEMORY[0x277D84F90];
    v125 = MEMORY[0x277D84F90];
    v126 = MEMORY[0x277D84F90];
    v128 = MEMORY[0x277D84F90];
    v130 = MEMORY[0x277D84F90];
    v137 = MEMORY[0x277D84F90];
    v140 = MEMORY[0x277D84F90];
    v141 = MEMORY[0x277D84F90];
    v142 = MEMORY[0x277D84F90];
    v13 = 4;
    v96 = MEMORY[0x277D84F90];
    v97 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    v95 = MEMORY[0x277D84F90];
    v92 = MEMORY[0x277D84F90];
    v93 = MEMORY[0x277D84F90];
    v90 = MEMORY[0x277D84F90];
    v91 = MEMORY[0x277D84F90];
    v88 = MEMORY[0x277D84F90];
    v89 = MEMORY[0x277D84F90];
    v87 = MEMORY[0x277D84F90];
    v19 = v86;
    v17 = v84;
    v18 = v85;
    v15 = v82;
    v16 = v83;
    goto LABEL_4;
  }

  v81 = v161;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  LOBYTE(v147[0]) = 10;
  sub_252984B28(&qword_27F540920);
  v30 = v254;
  sub_252E37C64();
  v254 = v30;
  if (v30)
  {
    (*(v27 + 8))(v9, v25);
    LODWORD(v124) = 0;
    LODWORD(v122) = 0;
    LODWORD(v121) = 0;
    v127 = 0;
    v129 = 0;
    v135 = 0;
    v136 = 0;
    LODWORD(v138) = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v143 = 4;
    LODWORD(v139) = 9;
    LODWORD(v117) = 2;
    v12 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v104 = MEMORY[0x277D84F90];
    v105 = MEMORY[0x277D84F90];
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v108 = 2;
    LODWORD(v109) = 22;
    v110 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v112 = MEMORY[0x277D84F90];
    v113 = MEMORY[0x277D84F90];
    v114 = MEMORY[0x277D84F90];
    v115 = MEMORY[0x277D84F90];
    v116 = MEMORY[0x277D84F90];
    v118 = MEMORY[0x277D84F90];
    v119 = MEMORY[0x277D84F90];
    v120 = MEMORY[0x277D84F90];
    v123 = MEMORY[0x277D84F90];
    v125 = MEMORY[0x277D84F90];
    v126 = MEMORY[0x277D84F90];
    v128 = MEMORY[0x277D84F90];
    v130 = MEMORY[0x277D84F90];
    v137 = MEMORY[0x277D84F90];
    v140 = MEMORY[0x277D84F90];
    v141 = MEMORY[0x277D84F90];
    v142 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v142 = v161;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540928, &unk_252E3DF30);
  LOBYTE(v147[0]) = 11;
  sub_252982298();
  v31 = v254;
  sub_252E37C64();
  v254 = v31;
  if (v31)
  {
    (*(v27 + 8))(v9, v25);
    LODWORD(v124) = 0;
    LODWORD(v122) = 0;
    LODWORD(v121) = 0;
    v127 = 0;
    v129 = 0;
    v135 = 0;
    v136 = 0;
    LODWORD(v138) = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v143 = 4;
    LODWORD(v139) = 9;
    LODWORD(v117) = 2;
    LODWORD(v109) = 22;
    v12 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v104 = MEMORY[0x277D84F90];
    v105 = MEMORY[0x277D84F90];
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v108 = 2;
    v110 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v112 = MEMORY[0x277D84F90];
    v113 = MEMORY[0x277D84F90];
    v114 = MEMORY[0x277D84F90];
    v115 = MEMORY[0x277D84F90];
    v116 = MEMORY[0x277D84F90];
    v118 = MEMORY[0x277D84F90];
    v119 = MEMORY[0x277D84F90];
    v120 = MEMORY[0x277D84F90];
    v123 = MEMORY[0x277D84F90];
    v125 = MEMORY[0x277D84F90];
    v126 = MEMORY[0x277D84F90];
    v128 = MEMORY[0x277D84F90];
    v130 = MEMORY[0x277D84F90];
    v137 = MEMORY[0x277D84F90];
    v140 = MEMORY[0x277D84F90];
    v141 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v141 = v161;
  LOBYTE(v147[0]) = 12;
  sub_252982370();
  v32 = v254;
  sub_252E37BE4();
  v254 = v32;
  if (v32)
  {
    (*(v27 + 8))(v9, v25);
    LODWORD(v124) = 0;
    LODWORD(v122) = 0;
    LODWORD(v121) = 0;
    v127 = 0;
    v129 = 0;
    v135 = 0;
    v136 = 0;
    LODWORD(v138) = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v143 = 4;
    LODWORD(v139) = 9;
    LODWORD(v117) = 2;
    LODWORD(v109) = 22;
    v12 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v104 = MEMORY[0x277D84F90];
    v105 = MEMORY[0x277D84F90];
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v108 = 2;
    v110 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v112 = MEMORY[0x277D84F90];
    v113 = MEMORY[0x277D84F90];
    v114 = MEMORY[0x277D84F90];
    v115 = MEMORY[0x277D84F90];
    v116 = MEMORY[0x277D84F90];
    v118 = MEMORY[0x277D84F90];
    v119 = MEMORY[0x277D84F90];
    v120 = MEMORY[0x277D84F90];
    v123 = MEMORY[0x277D84F90];
    v125 = MEMORY[0x277D84F90];
    v126 = MEMORY[0x277D84F90];
    v128 = MEMORY[0x277D84F90];
    v130 = MEMORY[0x277D84F90];
    v137 = MEMORY[0x277D84F90];
    v140 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v143 = v161;
  LOBYTE(v147[0]) = 13;
  sub_252E37C64();
  v254 = 0;
  v140 = v161;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540948, &qword_252E47730);
  LOBYTE(v147[0]) = 14;
  sub_2529823C4();
  v33 = v254;
  sub_252E37C64();
  v254 = v33;
  if (v33)
  {
    (*(v27 + 8))(v9, v25);
    LODWORD(v124) = 0;
    LODWORD(v122) = 0;
    LODWORD(v121) = 0;
    v127 = 0;
    v129 = 0;
    v135 = 0;
    v136 = 0;
    LODWORD(v138) = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v139) = 9;
    LODWORD(v117) = 2;
    LODWORD(v109) = 22;
    v12 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v104 = MEMORY[0x277D84F90];
    v105 = MEMORY[0x277D84F90];
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v108 = 2;
    v110 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v112 = MEMORY[0x277D84F90];
    v113 = MEMORY[0x277D84F90];
    v114 = MEMORY[0x277D84F90];
    v115 = MEMORY[0x277D84F90];
    v116 = MEMORY[0x277D84F90];
    v118 = MEMORY[0x277D84F90];
    v119 = MEMORY[0x277D84F90];
    v120 = MEMORY[0x277D84F90];
    v123 = MEMORY[0x277D84F90];
    v125 = MEMORY[0x277D84F90];
    v126 = MEMORY[0x277D84F90];
    v128 = MEMORY[0x277D84F90];
    v130 = MEMORY[0x277D84F90];
    v137 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v137 = v161;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540960, &qword_252E3DF40);
  LOBYTE(v147[0]) = 15;
  sub_25298249C();
  v34 = v254;
  sub_252E37C64();
  v254 = v34;
  if (v34)
  {
    (*(v27 + 8))(v9, v25);
    LODWORD(v124) = 0;
    LODWORD(v122) = 0;
    LODWORD(v121) = 0;
    v127 = 0;
    v129 = 0;
    v135 = 0;
    v136 = 0;
    LODWORD(v138) = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v139) = 9;
    LODWORD(v117) = 2;
    LODWORD(v109) = 22;
    v12 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v104 = MEMORY[0x277D84F90];
    v105 = MEMORY[0x277D84F90];
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v108 = 2;
    v110 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v112 = MEMORY[0x277D84F90];
    v113 = MEMORY[0x277D84F90];
    v114 = MEMORY[0x277D84F90];
    v115 = MEMORY[0x277D84F90];
    v116 = MEMORY[0x277D84F90];
    v118 = MEMORY[0x277D84F90];
    v119 = MEMORY[0x277D84F90];
    v120 = MEMORY[0x277D84F90];
    v123 = MEMORY[0x277D84F90];
    v125 = MEMORY[0x277D84F90];
    v126 = MEMORY[0x277D84F90];
    v128 = MEMORY[0x277D84F90];
    v130 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v130 = v161;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540978, &qword_252E3DF48);
  LOBYTE(v147[0]) = 16;
  sub_252982574();
  v35 = v254;
  sub_252E37C64();
  v254 = v35;
  if (v35)
  {
    (*(v27 + 8))(v9, v25);
    LODWORD(v124) = 0;
    LODWORD(v122) = 0;
    LODWORD(v121) = 0;
    v127 = 0;
    v129 = 0;
    v135 = 0;
    v136 = 0;
    LODWORD(v138) = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v139) = 9;
    LODWORD(v117) = 2;
    LODWORD(v109) = 22;
    v12 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v104 = MEMORY[0x277D84F90];
    v105 = MEMORY[0x277D84F90];
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v108 = 2;
    v110 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v112 = MEMORY[0x277D84F90];
    v113 = MEMORY[0x277D84F90];
    v114 = MEMORY[0x277D84F90];
    v115 = MEMORY[0x277D84F90];
    v116 = MEMORY[0x277D84F90];
    v118 = MEMORY[0x277D84F90];
    v119 = MEMORY[0x277D84F90];
    v120 = MEMORY[0x277D84F90];
    v123 = MEMORY[0x277D84F90];
    v125 = MEMORY[0x277D84F90];
    v126 = MEMORY[0x277D84F90];
    v128 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v128 = v161;
  LOBYTE(v147[0]) = 17;
  sub_252E37C64();
  v254 = 0;
  v126 = v161;
  LOBYTE(v147[0]) = 18;
  sub_252E37C64();
  v254 = 0;
  v125 = v161;
  LOBYTE(v147[0]) = 19;
  sub_252E37C64();
  v254 = 0;
  v123 = v161;
  LOBYTE(v147[0]) = 20;
  sub_252E37C64();
  v254 = 0;
  v120 = v161;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540998, &qword_252E3DF58);
  LOBYTE(v147[0]) = 21;
  v138 = sub_252982688();
  v139 = v36;
  v37 = v254;
  sub_252E37C64();
  v254 = v37;
  if (v37)
  {
    (*(v27 + 8))(v9, v25);
    LODWORD(v124) = 0;
    LODWORD(v122) = 0;
    LODWORD(v121) = 0;
    v127 = 0;
    v129 = 0;
    v135 = 0;
    v136 = 0;
    LODWORD(v138) = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v139) = 9;
    LODWORD(v117) = 2;
    LODWORD(v109) = 22;
    v12 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v104 = MEMORY[0x277D84F90];
    v105 = MEMORY[0x277D84F90];
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v108 = 2;
    v110 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v112 = MEMORY[0x277D84F90];
    v113 = MEMORY[0x277D84F90];
    v114 = MEMORY[0x277D84F90];
    v115 = MEMORY[0x277D84F90];
    v116 = MEMORY[0x277D84F90];
    v118 = MEMORY[0x277D84F90];
    v119 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v119 = v161;
  LOBYTE(v147[0]) = 22;
  sub_252E37C64();
  v254 = 0;
  v118 = v161;
  LOBYTE(v147[0]) = 23;
  sub_252E37C64();
  v254 = 0;
  v116 = v161;
  LOBYTE(v147[0]) = 24;
  sub_252E37C64();
  v254 = 0;
  v115 = v161;
  LOBYTE(v147[0]) = 25;
  sub_252E37C64();
  v254 = 0;
  v114 = v161;
  LOBYTE(v147[0]) = 26;
  sub_252E37C64();
  v254 = 0;
  v113 = v161;
  LOBYTE(v147[0]) = 27;
  sub_252E37C64();
  v254 = 0;
  v112 = v161;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5409B0, &unk_252E3DF60);
  LOBYTE(v147[0]) = 28;
  sub_252982760();
  v38 = v254;
  sub_252E37C64();
  v254 = v38;
  if (v38)
  {
    (*(v27 + 8))(v9, v25);
    LODWORD(v124) = 0;
    LODWORD(v122) = 0;
    LODWORD(v121) = 0;
    v127 = 0;
    v129 = 0;
    v135 = 0;
    v136 = 0;
    LODWORD(v138) = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v139) = 9;
    LODWORD(v117) = 2;
    LODWORD(v109) = 22;
    v12 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v104 = MEMORY[0x277D84F90];
    v105 = MEMORY[0x277D84F90];
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v108 = 2;
    v110 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v111 = v161;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5409C8, &qword_252E4B3C0);
  LOBYTE(v147[0]) = 29;
  sub_252982838();
  v39 = v254;
  sub_252E37C64();
  v254 = v39;
  if (v39)
  {
    (*(v27 + 8))(v9, v25);
    LODWORD(v124) = 0;
    LODWORD(v122) = 0;
    LODWORD(v121) = 0;
    v127 = 0;
    v129 = 0;
    v135 = 0;
    v136 = 0;
    LODWORD(v138) = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v139) = 9;
    LODWORD(v117) = 2;
    v12 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v104 = MEMORY[0x277D84F90];
    v105 = MEMORY[0x277D84F90];
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v108 = 2;
    LODWORD(v109) = 22;
    v110 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v110 = v161;
  LOBYTE(v147[0]) = 30;
  sub_252982910();
  v40 = v254;
  sub_252E37BE4();
  v254 = v40;
  if (v40)
  {
    (*(v27 + 8))(v9, v25);
    LODWORD(v124) = 0;
    LODWORD(v122) = 0;
    LODWORD(v121) = 0;
    v127 = 0;
    v129 = 0;
    v135 = 0;
    v136 = 0;
    LODWORD(v138) = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v139) = 9;
LABEL_33:
    LODWORD(v117) = 2;
    LODWORD(v109) = 22;
    v12 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v104 = MEMORY[0x277D84F90];
    v105 = MEMORY[0x277D84F90];
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v108 = 2;
    goto LABEL_15;
  }

  LODWORD(v139) = v161;
  LOBYTE(v147[0]) = 31;
  sub_252982964();
  v41 = v254;
  sub_252E37BE4();
  v254 = v41;
  if (v41)
  {
    (*(v27 + 8))(v9, v25);
    LODWORD(v124) = 0;
    LODWORD(v122) = 0;
    LODWORD(v121) = 0;
    v127 = 0;
    v129 = 0;
    v135 = 0;
    v136 = 0;
    LODWORD(v138) = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    goto LABEL_33;
  }

  v108 = v161;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5409F0, &qword_252E3DF70);
  LOBYTE(v147[0]) = 32;
  sub_2529829B8();
  v42 = v254;
  sub_252E37C64();
  v254 = v42;
  if (v42)
  {
    (*(v27 + 8))(v9, v25);
    LODWORD(v124) = 0;
    LODWORD(v122) = 0;
    LODWORD(v121) = 0;
    v127 = 0;
    v129 = 0;
    v135 = 0;
    v136 = 0;
    LODWORD(v138) = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v117) = 2;
    LODWORD(v109) = 22;
    v12 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v104 = MEMORY[0x277D84F90];
    v105 = MEMORY[0x277D84F90];
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v107 = v161;
  LOBYTE(v147[0]) = 33;
  sub_252E37C64();
  v254 = 0;
  v106 = v161;
  LOBYTE(v147[0]) = 34;
  sub_252982A90();
  v43 = v254;
  sub_252E37BE4();
  v254 = v43;
  if (v43)
  {
    (*(v27 + 8))(v9, v25);
    LODWORD(v124) = 0;
    LODWORD(v122) = 0;
    LODWORD(v121) = 0;
    v127 = 0;
    v129 = 0;
    v135 = 0;
    v136 = 0;
    LODWORD(v138) = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
LABEL_39:
    LODWORD(v117) = 2;
    LODWORD(v109) = 22;
    v12 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v104 = MEMORY[0x277D84F90];
    v105 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v244 = v161;
  LOBYTE(v161) = 35;
  v132 = sub_252E37BA4();
  v135 = v44;
  v254 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A10, &qword_252E3DF78);
  LOBYTE(v147[0]) = 36;
  sub_252982AE4(&qword_27F540A18, &qword_27F540A20);
  v45 = v254;
  sub_252E37C64();
  v254 = v45;
  if (v45)
  {
    (*(v27 + 8))(v9, v25);
    LODWORD(v124) = 0;
    LODWORD(v122) = 0;
    LODWORD(v121) = 0;
    v127 = 0;
    v129 = 0;
    v136 = 0;
    LODWORD(v138) = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    goto LABEL_39;
  }

  v105 = v161;
  LOBYTE(v161) = 37;
  v131 = sub_252E37BA4();
  v134 = v46;
  v254 = 0;
  LOBYTE(v147[0]) = 38;
  sub_252982B6C();
  v47 = v254;
  sub_252E37BE4();
  v254 = v47;
  if (v47)
  {
    (*(v27 + 8))(v9, v25);
    LODWORD(v124) = 0;
    LODWORD(v122) = 0;
    LODWORD(v121) = 0;
    v127 = 0;
    v129 = 0;
    v136 = 0;
    LODWORD(v138) = 0;
    v133 = 0;
    goto LABEL_88;
  }

  v133 = v161;
  LODWORD(v138) = v162;
  v242 = BYTE1(v162);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A38, &qword_252E3DF88);
  LOBYTE(v147[0]) = 39;
  v49 = sub_252982BC0();
  v109 = v48;
  v104 = v49;
  v50 = v254;
  sub_252E37BE4();
  v254 = v50;
  if (v50)
  {
    (*(v27 + 8))(v9, v25);
    LODWORD(v124) = 0;
    LODWORD(v122) = 0;
    LODWORD(v121) = 0;
    v127 = 0;
    v129 = 0;
    v136 = 0;
    goto LABEL_88;
  }

  v127 = v161;
  if (!v161)
  {
    v136 = 0;
LABEL_64:
    LOBYTE(v147[0]) = 40;
    v55 = v254;
    sub_252E37BE4();
    v254 = v55;
    if (!v55)
    {
      goto LABEL_68;
    }

    (*(v27 + 8))(v9, v25);
    LODWORD(v124) = 0;
    LODWORD(v122) = 0;
    LODWORD(v121) = 0;
    v127 = 0;
    v129 = 0;
LABEL_88:
    LODWORD(v117) = 2;
    goto LABEL_94;
  }

  v161 = MEMORY[0x277D84F90];
  v124 = v127 & 0xFFFFFFFFFFFFFF8;
  if (v127 >> 62)
  {
    v122 = sub_252E378C4();
  }

  else
  {
    v122 = *(v124 + 16);
  }

  v121 = 0;
  v103 = v127 & 0xC000000000000001;
  v51 = MEMORY[0x277D84F90];
LABEL_52:
  v136 = v51;
  v129 = v121;
  while (1)
  {
    if (v122 == v129)
    {

      goto LABEL_64;
    }

    if (!v103)
    {
      break;
    }

    MEMORY[0x2530ADF00](v129, v127);
LABEL_58:
    v121 = v129 + 1;
    if (__OFADD__(v129, 1))
    {
      goto LABEL_67;
    }

    v117 = sub_252A79090();

    ++v129;
    if (v117)
    {
      MEMORY[0x2530AD700](v53);
      v54 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x18);
      v136 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v136 >= v54 >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v51 = v161;
      goto LABEL_52;
    }
  }

  if (v129 < *(v124 + 16))
  {
    v52 = *(v127 + 8 * v129 + 32);

    goto LABEL_58;
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  v124 = v161;
  if (!v161)
  {
    v129 = 0;
LABEL_86:
    LOBYTE(v161) = 41;
    v60 = v254;
    LODWORD(v117) = sub_252E37BB4();
    v254 = v60;
    if (!v60)
    {
      goto LABEL_91;
    }

    (*(v27 + 8))(v9, v25);
    LODWORD(v124) = 0;
    LODWORD(v122) = 0;
    LODWORD(v121) = 0;
    v127 = 0;
    goto LABEL_88;
  }

  v161 = MEMORY[0x277D84F90];
  v122 = v124 & 0xFFFFFFFFFFFFFF8;
  if (v124 >> 62)
  {
    v121 = sub_252E378C4();
  }

  else
  {
    v121 = *(v122 + 16);
  }

  v117 = 0;
  v104 = v124 & 0xC000000000000001;
  v56 = MEMORY[0x277D84F90];
  while (2)
  {
    v129 = v56;
    v127 = v117;
LABEL_75:
    if (v121 == v127)
    {

      goto LABEL_86;
    }

    if (v104)
    {
      MEMORY[0x2530ADF00](v127, v124);
LABEL_80:
      v117 = v127 + 1;
      if (__OFADD__(v127, 1))
      {
        goto LABEL_90;
      }

      v109 = sub_252A79090();

      ++v127;
      if (v109)
      {
        MEMORY[0x2530AD700](v58);
        v59 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v129 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v129 >= v59 >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v56 = v161;
        continue;
      }

      goto LABEL_75;
    }

    break;
  }

  if (v127 < *(v122 + 16))
  {
    v57 = *(v124 + 8 * v127 + 32);

    goto LABEL_80;
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  LOBYTE(v161) = 42;
  v61 = v254;
  v127 = sub_252E37C44();
  v254 = v61;
  if (!v61)
  {
    LOBYTE(v147[0]) = 43;
    sub_252E37C64();
    v254 = 0;
    v104 = v161;
    LOBYTE(v147[0]) = 43;
    sub_252E37C64();
    v254 = 0;
    v102 = v161;
    LOBYTE(v147[0]) = 45;
    sub_252E37C64();
    v254 = 0;
    v100 = v161;
    LOBYTE(v147[0]) = 46;
    sub_252E37C64();
    v254 = 0;
    v99 = v161;
    LOBYTE(v147[0]) = 47;
    sub_252E37C64();
    v254 = 0;
    v101 = v161;
    LOBYTE(v147[0]) = 48;
    sub_252E37C64();
    v254 = 0;
    v103 = v161;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A50, &qword_252E3DF90);
    LOBYTE(v147[0]) = 49;
    sub_252982C74();
    v62 = v254;
    sub_252E37C64();
    v254 = v62;
    if (v62)
    {
      (*(v27 + 8))(v9, v25);
      LODWORD(v124) = 0;
      LODWORD(v122) = 0;
      LODWORD(v121) = 0;
      LODWORD(v109) = 22;
      v12 = MEMORY[0x277D84F90];
      v98 = MEMORY[0x277D84F90];
      goto LABEL_15;
    }

    v98 = v161;
    LOBYTE(v147[0]) = 50;
    sub_252982D4C();
    v63 = v254;
    sub_252E37BE4();
    v254 = v63;
    if (v63)
    {
      (*(v27 + 8))(v9, v25);
      LODWORD(v124) = 0;
      LODWORD(v122) = 0;
      LODWORD(v121) = 0;
      v12 = MEMORY[0x277D84F90];
      LODWORD(v109) = 22;
      goto LABEL_15;
    }

    LODWORD(v109) = v161;
    LOBYTE(v161) = 51;
    v64 = sub_252E37C14();
    v254 = 0;
    LODWORD(v121) = v64 & 1;
    LOBYTE(v161) = 52;
    v65 = sub_252E37C14();
    v254 = 0;
    LODWORD(v122) = v65 & 1;
    LOBYTE(v161) = 53;
    v66 = sub_252E37C14();
    v254 = 0;
    LODWORD(v124) = v66 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A70, &qword_252E3DF98);
    LOBYTE(v147[0]) = 54;
    sub_252982DA0();
    v67 = v254;
    sub_252E37C64();
    v254 = v67;
    if (v67)
    {
      (*(v27 + 8))(v9, v25);
      v12 = MEMORY[0x277D84F90];
      goto LABEL_15;
    }

    v12 = v161;
    v149 = 55;
    sub_252982E54();
    v68 = v254;
    sub_252E37C64();
    v254 = v68;
    if (v68)
    {
      (*(v27 + 8))(v9, v28);
      v95 = MEMORY[0x277D84F90];
      v96 = MEMORY[0x277D84F90];
      v93 = MEMORY[0x277D84F90];
      v94 = MEMORY[0x277D84F90];
      v91 = MEMORY[0x277D84F90];
      v92 = MEMORY[0x277D84F90];
      v89 = MEMORY[0x277D84F90];
      v90 = MEMORY[0x277D84F90];
      v87 = MEMORY[0x277D84F90];
      v88 = MEMORY[0x277D84F90];
      v97 = MEMORY[0x277D84F90];
      goto LABEL_16;
    }

    v96 = v151;
    v97 = v150;
    v94 = v153;
    v95 = v152;
    v92 = v155;
    v93 = v154;
    v90 = v157;
    v91 = v156;
    v88 = v159;
    v89 = v158;
    v87 = v160;
    v148[0] = MEMORY[0x277D84F90];
    v148[1] = MEMORY[0x277D84F90];
    v148[2] = MEMORY[0x277D84F90];
    v148[3] = MEMORY[0x277D84F90];
    v148[4] = MEMORY[0x277D84F90];
    v148[5] = MEMORY[0x277D84F90];
    v148[6] = MEMORY[0x277D84F90];
    v148[7] = MEMORY[0x277D84F90];
    v148[8] = MEMORY[0x277D84F90];
    v148[9] = MEMORY[0x277D84F90];
    v148[10] = MEMORY[0x277D84F90];
    sub_252937BEC(v148);
    type metadata accessor for ControlHomeIntentCodable();
    LOBYTE(v147[0]) = 56;
    sub_2529857B0(&qword_27F540A90, type metadata accessor for ControlHomeIntentCodable);
    v69 = v254;
    sub_252E37BE4();
    v254 = v69;
    if (!v69)
    {
      if (v161)
      {
        v70 = sub_252ADB274();

        (*(v27 + 8))(v9, v28);
        goto LABEL_118;
      }

      LOBYTE(v147[0]) = 56;
      sub_252982EA8();
      v71 = v254;
      sub_252E37BE4();
      v254 = v71;
      if (!v71)
      {
        v80 = v162;
        if (v162 >> 60 == 15)
        {
          (*(v27 + 8))(v9, v28);
        }

        else
        {
          v72 = v161;
          sub_25293F638(0, &qword_27F540AA0, 0x277CCAAC8);
          v79 = v72;
          v73 = v254;
          sub_252E374F4();
          v254 = v73;
          if (v73)
          {
            (*(v27 + 8))(v9, v28);
            sub_252982EFC(v79, v80);
            goto LABEL_16;
          }

          (*(v27 + 8))(v9, v28);
          sub_252982EFC(v79, v80);
          if (v164)
          {
            sub_25293F638(0, &qword_27F540AA8, 0x277CD3D30);
            if (swift_dynamicCast())
            {
              v70 = v147[0];
            }

            else
            {
              v70 = 0;
            }

            goto LABEL_118;
          }

          sub_252982F10(&v161);
        }

        v70 = 0;
LABEL_118:
        v147[0] = v86;
        LOBYTE(v147[1]) = v85;
        BYTE1(v147[1]) = v84;
        LODWORD(v80) = v253;
        BYTE2(v147[1]) = v253;
        *(&v147[1] + 3) = v251;
        HIBYTE(v147[1]) = v252;
        v147[2] = v145;
        LOBYTE(v147[3]) = v83;
        BYTE1(v147[3]) = v144;
        BYTE2(v147[3]) = v82;
        *(&v147[3] + 3) = v249;
        HIBYTE(v147[3]) = v250;
        v78 = v14;
        v147[4] = v14;
        LOBYTE(v147[5]) = v81;
        *(&v147[5] + 1) = *v248;
        HIDWORD(v147[5]) = *&v248[3];
        v147[6] = v142;
        v147[7] = v141;
        LOBYTE(v147[8]) = v143;
        *(&v147[8] + 1) = *v247;
        HIDWORD(v147[8]) = *&v247[3];
        v147[9] = v140;
        v147[10] = v137;
        v147[11] = v130;
        v147[12] = v128;
        v147[13] = v126;
        v147[14] = v125;
        v147[15] = v123;
        v147[16] = v120;
        v147[17] = v119;
        v147[18] = v118;
        v147[19] = v116;
        v147[20] = v115;
        v147[21] = v114;
        v147[22] = v113;
        v147[23] = v112;
        v147[24] = v111;
        v147[25] = v110;
        LOBYTE(v147[26]) = v139;
        BYTE1(v147[26]) = v108;
        *(&v147[26] + 2) = v245;
        HIWORD(v147[26]) = v246;
        v147[27] = v107;
        v147[28] = v106;
        *(&v147[29] + 1) = *v243;
        *(&v147[36] + 2) = v240;
        LODWORD(v79) = v244;
        LOBYTE(v147[29]) = v244;
        HIDWORD(v147[29]) = *&v243[3];
        v74 = v133;
        v147[30] = v132;
        v75 = v136;
        v147[31] = v135;
        v147[32] = v105;
        v147[33] = v131;
        v147[34] = v134;
        v147[35] = v133;
        LOBYTE(v147[36]) = v138;
        *(&v147[39] + 1) = *v239;
        v76 = v242;
        BYTE1(v147[36]) = v242;
        HIWORD(v147[36]) = v241;
        v147[37] = v136;
        v77 = v129;
        v147[38] = v129;
        LOBYTE(v147[39]) = v117;
        HIDWORD(v147[39]) = *&v239[3];
        v147[40] = v127;
        v147[41] = v104;
        v147[42] = v102;
        v147[43] = v100;
        v147[44] = v99;
        v147[45] = v101;
        v147[46] = v103;
        v147[47] = v98;
        LOBYTE(v147[48]) = v109;
        BYTE1(v147[48]) = v121;
        WORD1(v147[48]) = v122;
        WORD2(v147[48]) = v124;
        v147[49] = v12;
        v147[50] = v97;
        v147[51] = v96;
        v147[52] = v95;
        v147[53] = v94;
        v147[54] = v93;
        v147[55] = v92;
        v147[56] = v91;
        v147[57] = v90;
        v147[58] = v89;
        v147[59] = v88;
        v147[60] = v87;
        v147[61] = MEMORY[0x277D84FA0];
        v147[62] = v70;
        memcpy(v22, v147, 0x1F8uLL);
        sub_2529353AC(v147, &v161);
        __swift_destroy_boxed_opaque_existential_1(v146);
        v161 = v86;
        LOBYTE(v162) = v85;
        BYTE1(v162) = v84;
        BYTE2(v162) = v80;
        v163 = v145;
        LOBYTE(v164) = v83;
        BYTE1(v164) = v144;
        BYTE2(v164) = v82;
        v165 = v78;
        v166 = v81;
        v168 = v142;
        v169 = v141;
        v170 = v143;
        v172 = v140;
        v173 = v137;
        v174 = v130;
        v175 = v128;
        v176 = v126;
        v177 = v125;
        v178 = v123;
        v179 = v120;
        v180 = v119;
        v181 = v118;
        v182 = v116;
        v183 = v115;
        v184 = v114;
        v185 = v113;
        v186 = v112;
        v187 = v111;
        v188 = v110;
        v189 = v139;
        v190 = v108;
        v193 = v107;
        v194 = v106;
        v195 = v79;
        v197 = v132;
        v198 = v135;
        v199 = v105;
        v200 = v131;
        v201 = v134;
        v202 = v74;
        v203 = v138;
        v204 = v76;
        v207 = v75;
        v208 = v77;
        *(&v162 + 3) = v251;
        HIBYTE(v162) = v252;
        *(&v164 + 3) = v249;
        HIBYTE(v164) = v250;
        *&v167[3] = *&v248[3];
        *v167 = *v248;
        *v171 = *v247;
        *&v171[3] = *&v247[3];
        v191 = v245;
        v192 = v246;
        *v196 = *v243;
        *&v196[3] = *&v243[3];
        v205 = v240;
        v206 = v241;
        v209 = v117;
        *v210 = *v239;
        *&v210[3] = *&v239[3];
        v211 = v127;
        v212 = v104;
        v213 = v102;
        v214 = v100;
        v215 = v99;
        v216 = v101;
        v217 = v103;
        v218 = v98;
        v219 = v109;
        v220 = v121;
        v221 = v122;
        v222 = 0;
        v223 = v124;
        v224 = 0;
        v225 = v12;
        v226 = v97;
        v227 = v96;
        v228 = v95;
        v229 = v94;
        v230 = v93;
        v231 = v92;
        v232 = v91;
        v233 = v90;
        v234 = v89;
        v235 = v88;
        v236 = v87;
        v237 = MEMORY[0x277D84FA0];
        v238 = v70;
        return sub_252935408(&v161);
      }
    }

    (*(v27 + 8))(v9, v28);
    goto LABEL_16;
  }

  (*(v27 + 8))(v9, v25);
  LODWORD(v124) = 0;
  LODWORD(v122) = 0;
  LODWORD(v121) = 0;
  v127 = 0;
LABEL_94:
  LODWORD(v109) = 22;
  v12 = MEMORY[0x277D84F90];
  v98 = MEMORY[0x277D84F90];
  v99 = MEMORY[0x277D84F90];
  v102 = MEMORY[0x277D84F90];
  v103 = MEMORY[0x277D84F90];
  v100 = MEMORY[0x277D84F90];
  v101 = MEMORY[0x277D84F90];
  v104 = MEMORY[0x277D84F90];
LABEL_15:
  v96 = v12;
  v97 = v12;
  v94 = v12;
  v95 = v12;
  v92 = v12;
  v93 = v12;
  v90 = v12;
  v91 = v12;
  v88 = v12;
  v89 = v12;
  v87 = v12;
LABEL_16:
  v19 = v86;
  v17 = v84;
  v18 = v85;
  v15 = v82;
  v16 = v83;
  v13 = v81;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v146);
  v161 = v19;
  LOBYTE(v162) = v18;
  BYTE1(v162) = v17;
  v163 = v145;
  LOBYTE(v164) = v16;
  BYTE1(v164) = v144;
  BYTE2(v164) = v15;
  v165 = v14;
  v166 = v13;
  v168 = v142;
  v169 = v141;
  v170 = v143;
  v172 = v140;
  v173 = v137;
  v174 = v130;
  v175 = v128;
  v176 = v126;
  v177 = v125;
  v178 = v123;
  v179 = v120;
  v180 = v119;
  v181 = v118;
  v182 = v116;
  v183 = v115;
  v184 = v114;
  v185 = v113;
  v186 = v112;
  v187 = v111;
  v188 = v110;
  v189 = v139;
  v190 = v108;
  v193 = v107;
  v194 = v106;
  v197 = v132;
  v198 = v135;
  v199 = v105;
  v200 = v131;
  v201 = v134;
  v202 = v133;
  BYTE2(v162) = v253;
  *(&v162 + 3) = v251;
  HIBYTE(v162) = v252;
  *(&v164 + 3) = v249;
  HIBYTE(v164) = v250;
  *v167 = *v248;
  *&v167[3] = *&v248[3];
  *v171 = *v247;
  *&v171[3] = *&v247[3];
  v191 = v245;
  v192 = v246;
  v195 = v244;
  *v196 = *v243;
  *&v196[3] = *&v243[3];
  v203 = v138;
  v204 = v242;
  v205 = v240;
  v206 = v241;
  v207 = v136;
  v208 = v129;
  v209 = v117;
  *v210 = *v239;
  *&v210[3] = *&v239[3];
  v211 = v127;
  v212 = v104;
  v213 = v102;
  v214 = v100;
  v215 = v99;
  v216 = v101;
  v217 = v103;
  v218 = v98;
  v219 = v109;
  v220 = v121;
  v221 = v122;
  v222 = 0;
  v223 = v124;
  v224 = 0;
  v225 = v12;
  v226 = v97;
  v227 = v96;
  v228 = v95;
  v229 = v94;
  v230 = v93;
  v231 = v92;
  v232 = v91;
  v233 = v90;
  v234 = v89;
  v235 = v88;
  v236 = v87;
  v237 = MEMORY[0x277D84FA0];
  v238 = 0;
  return sub_252935408(&v161);
}

unint64_t sub_252981E48()
{
  result = qword_27F5408B8;
  if (!qword_27F5408B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5408B8);
  }

  return result;
}

unint64_t sub_252981E9C()
{
  result = qword_27F5408C0;
  if (!qword_27F5408C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5402E0, &qword_252E3C118);
    sub_252981F20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5408C0);
  }

  return result;
}

unint64_t sub_252981F20()
{
  result = qword_27F5408C8;
  if (!qword_27F5408C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5408C8);
  }

  return result;
}

unint64_t sub_252981F74()
{
  result = qword_27F5408D0;
  if (!qword_27F5408D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5408D0);
  }

  return result;
}

unint64_t sub_252981FC8()
{
  result = qword_27F5408D8;
  if (!qword_27F5408D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5408D8);
  }

  return result;
}

unint64_t sub_25298201C()
{
  result = qword_27F5408E0;
  if (!qword_27F5408E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5408E0);
  }

  return result;
}

unint64_t sub_252982070()
{
  result = qword_27F5408F0;
  if (!qword_27F5408F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5408F0);
  }

  return result;
}