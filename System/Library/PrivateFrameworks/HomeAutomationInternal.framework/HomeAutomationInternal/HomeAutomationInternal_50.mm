id sub_252CDBAB8()
{
  result = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for Accessory();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v6 = [*(sub_252D4CE7C(v2) + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
    if (v6)
    {
      v7 = v6;
      v8 = type metadata accessor for Room();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_2529A1E08(v7);

      return v11;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_252CDBB90()
{
  v109[0] = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v109[1] = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  MEMORY[0x2530AD570](0x3A65707974207B20, 0xE900000000000020);
  v1 = sub_252CD941C();
  v2 = HomeDeviceType.description.getter(v1);
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](44, 0xE100000000000000);
  v3 = v109[0];
  strcpy(v109, "identifier: ");
  BYTE5(v109[1]) = 0;
  HIWORD(v109[1]) = -5120;
  sub_252E32E84();
  sub_252950ADC(&qword_27F5404A8);
  v4 = sub_252E37D94();
  MEMORY[0x2530AD570](v4);

  MEMORY[0x2530AD570](44, 0xE100000000000000);

  MEMORY[0x2530AD570](v109[0], v109[1]);

  sub_252E379F4();

  v109[0] = 0xD000000000000015;
  v109[1] = 0x8000000252E6AA20;
  v108[0] = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
  v108[1] = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v5 = sub_252E36F94();
  MEMORY[0x2530AD570](v5);

  MEMORY[0x2530AD570](44, 0xE100000000000000);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E6AA20);

  v109[0] = 0;
  v109[1] = 0xE000000000000000;
  sub_252CD94E0();
  if (v6)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
    strcpy(v108, "subtype: ");
    WORD1(v108[1]) = 0;
    HIDWORD(v108[1]) = -385875968;
    sub_252CD94E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543730, &qword_252E4DC38);
    v9 = sub_252E36F94();
    MEMORY[0x2530AD570](v9);

    MEMORY[0x2530AD570](44, 0xE100000000000000);
    v7 = v108[0];
    v8 = v108[1];
  }

  MEMORY[0x2530AD570](v7, v8);

  MEMORY[0x2530AD570](v109[0], v109[1]);

  v107 = v3;
  v109[0] = 0;
  v109[1] = 0xE000000000000000;
  v10 = sub_252CD95D8();
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 32);
    v13 = MEMORY[0x277D84F90];
    do
    {
      v17 = *v12++;
      v16 = v17;
      if (v17)
      {
        v108[0] = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA360(0, *(v13 + 16) + 1, 1);
          v13 = v108[0];
        }

        v15 = *(v13 + 16);
        v14 = *(v13 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_2529AA360((v14 > 1), v15 + 1, 1);
          v13 = v108[0];
        }

        *(v13 + 16) = v15 + 1;
        *(v13 + 8 * v15 + 32) = v16;
      }

      --v11;
    }

    while (v11);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v18 = *(v13 + 16);

  if (v18)
  {
    sub_252E379F4();

    strcpy(v108, "attributes: ");
    BYTE5(v108[1]) = 0;
    HIWORD(v108[1]) = -5120;
    v19 = sub_252CD95D8();
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v19 + 32);
      v22 = MEMORY[0x277D84F90];
      do
      {
        v26 = *v21++;
        v25 = v26;
        if (v26)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA360(0, v22[2] + 1, 1);
          }

          v24 = v22[2];
          v23 = v22[3];
          if (v24 >= v23 >> 1)
          {
            sub_2529AA360((v23 > 1), v24 + 1, 1);
          }

          v22[2] = v24 + 1;
          v22[v24 + 4] = v25;
        }

        --v20;
      }

      while (v20);
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    v29 = v22[2];
    if (v29)
    {
      v30 = v22 + 4;
      v31 = MEMORY[0x277D84F90];
      do
      {
        v32 = *v30++;
        v33 = HomeAttributeType.description.getter(v32);
        v35 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_2529F7A80(0, *(v31 + 2) + 1, 1, v31);
        }

        v37 = *(v31 + 2);
        v36 = *(v31 + 3);
        if (v37 >= v36 >> 1)
        {
          v31 = sub_2529F7A80((v36 > 1), v37 + 1, 1, v31);
        }

        *(v31 + 2) = v37 + 1;
        v38 = &v31[16 * v37];
        *(v38 + 4) = v33;
        *(v38 + 5) = v35;
        --v29;
      }

      while (v29);
    }

    else
    {
      v31 = MEMORY[0x277D84F90];
    }

    v39 = MEMORY[0x2530AD730](v31, MEMORY[0x277D837D0]);
    v41 = v40;

    MEMORY[0x2530AD570](v39, v41);

    MEMORY[0x2530AD570](8236, 0xE200000000000000);
    v27 = v108[0];
    v28 = v108[1];
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v27, v28);

  MEMORY[0x2530AD570](v109[0], v109[1]);

  v109[0] = 0;
  v109[1] = 0xE000000000000000;
  v42 = sub_252CD995C();
  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = (v42 + 32);
    v45 = MEMORY[0x277D84F90];
    do
    {
      v49 = *v44++;
      v48 = v49;
      if (v49)
      {
        v108[0] = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA360(0, *(v45 + 16) + 1, 1);
          v45 = v108[0];
        }

        v47 = *(v45 + 16);
        v46 = *(v45 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_2529AA360((v46 > 1), v47 + 1, 1);
          v45 = v108[0];
        }

        *(v45 + 16) = v47 + 1;
        *(v45 + 8 * v47 + 32) = v48;
      }

      --v43;
    }

    while (v43);
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
  }

  v50 = *(v45 + 16);

  if (v50)
  {
    sub_252E379F4();

    v108[0] = 0xD000000000000012;
    v108[1] = 0x8000000252E92800;
    v51 = sub_252CD995C();
    v52 = *(v51 + 16);
    if (v52)
    {
      v53 = (v51 + 32);
      v54 = MEMORY[0x277D84F90];
      do
      {
        v58 = *v53++;
        v57 = v58;
        if (v58)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA360(0, v54[2] + 1, 1);
          }

          v56 = v54[2];
          v55 = v54[3];
          if (v56 >= v55 >> 1)
          {
            sub_2529AA360((v55 > 1), v56 + 1, 1);
          }

          v54[2] = v56 + 1;
          v54[v56 + 4] = v57;
        }

        --v52;
      }

      while (v52);
    }

    else
    {
      v54 = MEMORY[0x277D84F90];
    }

    v61 = v54[2];
    if (v61)
    {
      v62 = v54 + 4;
      v63 = MEMORY[0x277D84F90];
      do
      {
        v64 = *v62++;
        v65 = HomeAttributeType.description.getter(v64);
        v67 = v66;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_2529F7A80(0, *(v63 + 2) + 1, 1, v63);
        }

        v69 = *(v63 + 2);
        v68 = *(v63 + 3);
        if (v69 >= v68 >> 1)
        {
          v63 = sub_2529F7A80((v68 > 1), v69 + 1, 1, v63);
        }

        *(v63 + 2) = v69 + 1;
        v70 = &v63[16 * v69];
        *(v70 + 4) = v65;
        *(v70 + 5) = v67;
        --v61;
      }

      while (v61);
    }

    else
    {
      v63 = MEMORY[0x277D84F90];
    }

    v71 = MEMORY[0x2530AD730](v63, MEMORY[0x277D837D0]);
    v73 = v72;

    MEMORY[0x2530AD570](v71, v73);

    MEMORY[0x2530AD570](8236, 0xE200000000000000);
    v59 = v108[0];
    v60 = v108[1];
  }

  else
  {
    v59 = 0;
    v60 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v59, v60);

  MEMORY[0x2530AD570](v109[0], v109[1]);

  v109[0] = 0;
  v109[1] = 0xE000000000000000;
  v74 = sub_252CD9C58();
  v75 = *(v74 + 16);
  if (v75)
  {
    v76 = (v74 + 32);
    v77 = MEMORY[0x277D84F90];
    do
    {
      v81 = *v76++;
      v80 = v81;
      if (v81)
      {
        v108[0] = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA360(0, *(v77 + 16) + 1, 1);
          v77 = v108[0];
        }

        v79 = *(v77 + 16);
        v78 = *(v77 + 24);
        if (v79 >= v78 >> 1)
        {
          sub_2529AA360((v78 > 1), v79 + 1, 1);
          v77 = v108[0];
        }

        *(v77 + 16) = v79 + 1;
        *(v77 + 8 * v79 + 32) = v80;
      }

      --v75;
    }

    while (v75);
  }

  else
  {
    v77 = MEMORY[0x277D84F90];
  }

  v82 = *(v77 + 16);

  v83 = 0xE000000000000000;
  if (v82)
  {
    sub_252E379F4();

    v108[0] = 0xD000000000000014;
    v108[1] = 0x8000000252E92820;
    v84 = sub_252CD9C58();
    v85 = *(v84 + 16);
    if (v85)
    {
      v86 = (v84 + 32);
      v87 = MEMORY[0x277D84F90];
      do
      {
        v91 = *v86++;
        v90 = v91;
        if (v91)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA360(0, v87[2] + 1, 1);
          }

          v89 = v87[2];
          v88 = v87[3];
          if (v89 >= v88 >> 1)
          {
            sub_2529AA360((v88 > 1), v89 + 1, 1);
          }

          v87[2] = v89 + 1;
          v87[v89 + 4] = v90;
        }

        --v85;
      }

      while (v85);
    }

    else
    {
      v87 = MEMORY[0x277D84F90];
    }

    v93 = v87[2];
    if (v93)
    {
      v94 = v87 + 4;
      v95 = MEMORY[0x277D84F90];
      do
      {
        v96 = *v94++;
        v97 = HomeAttributeType.description.getter(v96);
        v99 = v98;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_2529F7A80(0, *(v95 + 2) + 1, 1, v95);
        }

        v101 = *(v95 + 2);
        v100 = *(v95 + 3);
        if (v101 >= v100 >> 1)
        {
          v95 = sub_2529F7A80((v100 > 1), v101 + 1, 1, v95);
        }

        *(v95 + 2) = v101 + 1;
        v102 = &v95[16 * v101];
        *(v102 + 4) = v97;
        *(v102 + 5) = v99;
        --v93;
      }

      while (v93);
    }

    else
    {
      v95 = MEMORY[0x277D84F90];
    }

    v103 = MEMORY[0x2530AD730](v95, MEMORY[0x277D837D0]);
    v105 = v104;

    MEMORY[0x2530AD570](v103, v105);

    v92 = v108[0];
    v83 = v108[1];
  }

  else
  {
    v92 = 0;
  }

  MEMORY[0x2530AD570](v92, v83);

  MEMORY[0x2530AD570](v109[0], v109[1]);

  MEMORY[0x2530AD570](125, 0xE100000000000000);

  return v107;
}

uint64_t sub_252CDC7C8()
{
  v136[0] = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v136[1] = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  MEMORY[0x2530AD570](31520, 0xE200000000000000);
  v1 = v136[0];
  v2 = v136[1];
  v3 = sub_2529F7A80(0, 1, 1, MEMORY[0x277D84F90]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_2529F7A80((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[16 * v5];
  *(v6 + 4) = v1;
  *(v6 + 5) = v2;
  v7 = 0xE000000000000000;
  v136[0] = 0;
  v136[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0x203A657079742020, 0xE800000000000000);
  v8 = sub_252CD941C();
  v9 = HomeDeviceType.description.getter(v8);
  MEMORY[0x2530AD570](v9);

  MEMORY[0x2530AD570](0x69746E656469202CLL, 0xEE00203A72656966);
  sub_252E32E84();
  sub_252950ADC(&qword_27F5404A8);
  v10 = sub_252E37D94();
  MEMORY[0x2530AD570](v10);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E92840);
  v11 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
  if (v11)
  {
    v12 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v7 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
  }

  MEMORY[0x2530AD570](v12, v7);

  v13 = v136[0];
  v14 = v136[1];
  v16 = *(v3 + 2);
  v15 = *(v3 + 3);
  if (v16 >= v15 >> 1)
  {
    v3 = sub_2529F7A80((v15 > 1), v16 + 1, 1, v3);
  }

  *(v3 + 2) = v16 + 1;
  v17 = &v3[16 * v16];
  *(v17 + 4) = v13;
  *(v17 + 5) = v14;
  sub_252CD94E0();
  if ((v18 & 1) == 0)
  {
    v136[0] = 0;
    v136[1] = 0xE000000000000000;
    MEMORY[0x2530AD570](0x7079746275732020, 0xEB00000000203A65);
    sub_252E37AE4();
    v20 = *(v3 + 2);
    v19 = *(v3 + 3);
    if (v20 >= v19 >> 1)
    {
      v3 = sub_2529F7A80((v19 > 1), v20 + 1, 1, v3);
    }

    *(v3 + 2) = v20 + 1;
    v21 = &v3[16 * v20];
    *(v21 + 4) = 0;
    *(v21 + 5) = 0xE000000000000000;
  }

  v22 = sub_252CD95D8();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = (v22 + 32);
    v25 = MEMORY[0x277D84F90];
    do
    {
      v29 = *v24++;
      v28 = v29;
      if (v29)
      {
        v136[0] = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA360(0, *(v25 + 16) + 1, 1);
          v25 = v136[0];
        }

        v27 = *(v25 + 16);
        v26 = *(v25 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_2529AA360((v26 > 1), v27 + 1, 1);
          v25 = v136[0];
        }

        *(v25 + 16) = v27 + 1;
        *(v25 + 8 * v27 + 32) = v28;
      }

      --v23;
    }

    while (v23);
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v30 = *(v25 + 16);

  if (v30)
  {
    sub_252E379F4();

    strcpy(v136, "  attributes: ");
    HIBYTE(v136[1]) = -18;
    v31 = sub_252CD95D8();
    v32 = *(v31 + 16);
    v33 = MEMORY[0x277D84F90];
    if (v32)
    {
      v34 = (v31 + 32);
      do
      {
        v38 = *v34++;
        v37 = v38;
        if (v38)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA360(0, *(v33 + 16) + 1, 1);
          }

          v36 = *(v33 + 16);
          v35 = *(v33 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_2529AA360((v35 > 1), v36 + 1, 1);
          }

          *(v33 + 16) = v36 + 1;
          *(v33 + 8 * v36 + 32) = v37;
        }

        --v32;
      }

      while (v32);
    }

    v39 = *(v33 + 16);
    if (v39)
    {
      v133 = MEMORY[0x277D84F90];
      sub_2529AA3A0(0, v39, 0);
      v40 = 32;
      v41 = v133;
      do
      {
        v42 = HomeAttributeType.description.getter(*(v33 + v40));
        v45 = *(v133 + 16);
        v44 = *(v133 + 24);
        if (v45 >= v44 >> 1)
        {
          v47 = v42;
          v48 = v43;
          sub_2529AA3A0((v44 > 1), v45 + 1, 1);
          v43 = v48;
          v42 = v47;
        }

        *(v133 + 16) = v45 + 1;
        v46 = v133 + 16 * v45;
        *(v46 + 32) = v42;
        *(v46 + 40) = v43;
        v40 += 8;
        --v39;
      }

      while (v39);
    }

    else
    {

      v41 = MEMORY[0x277D84F90];
    }

    v49 = MEMORY[0x2530AD730](v41, MEMORY[0x277D837D0]);
    v51 = v50;

    MEMORY[0x2530AD570](v49, v51);

    v52 = v136[0];
    v53 = v136[1];
    v55 = *(v3 + 2);
    v54 = *(v3 + 3);
    if (v55 >= v54 >> 1)
    {
      v3 = sub_2529F7A80((v54 > 1), v55 + 1, 1, v3);
    }

    *(v3 + 2) = v55 + 1;
    v56 = &v3[16 * v55];
    *(v56 + 4) = v52;
    *(v56 + 5) = v53;
  }

  v57 = sub_252CD995C();
  v58 = *(v57 + 16);
  if (v58)
  {
    v59 = (v57 + 32);
    v60 = MEMORY[0x277D84F90];
    do
    {
      v64 = *v59++;
      v63 = v64;
      if (v64)
      {
        v136[0] = v60;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA360(0, *(v60 + 16) + 1, 1);
          v60 = v136[0];
        }

        v62 = *(v60 + 16);
        v61 = *(v60 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_2529AA360((v61 > 1), v62 + 1, 1);
          v60 = v136[0];
        }

        *(v60 + 16) = v62 + 1;
        *(v60 + 8 * v62 + 32) = v63;
      }

      --v58;
    }

    while (v58);
  }

  else
  {
    v60 = MEMORY[0x277D84F90];
  }

  v65 = *(v60 + 16);

  if (v65)
  {
    sub_252E379F4();

    v136[0] = 0xD000000000000014;
    v136[1] = 0x8000000252E92860;
    v66 = sub_252CD995C();
    v67 = *(v66 + 16);
    v68 = MEMORY[0x277D84F90];
    if (v67)
    {
      v69 = (v66 + 32);
      do
      {
        v73 = *v69++;
        v72 = v73;
        if (v73)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA360(0, *(v68 + 16) + 1, 1);
          }

          v71 = *(v68 + 16);
          v70 = *(v68 + 24);
          if (v71 >= v70 >> 1)
          {
            sub_2529AA360((v70 > 1), v71 + 1, 1);
          }

          *(v68 + 16) = v71 + 1;
          *(v68 + 8 * v71 + 32) = v72;
        }

        --v67;
      }

      while (v67);
    }

    v74 = *(v68 + 16);
    if (v74)
    {
      v134 = MEMORY[0x277D84F90];
      sub_2529AA3A0(0, v74, 0);
      v75 = 32;
      v76 = v134;
      do
      {
        v77 = HomeAttributeType.description.getter(*(v68 + v75));
        v80 = *(v134 + 16);
        v79 = *(v134 + 24);
        if (v80 >= v79 >> 1)
        {
          v82 = v77;
          v83 = v78;
          sub_2529AA3A0((v79 > 1), v80 + 1, 1);
          v78 = v83;
          v77 = v82;
        }

        *(v134 + 16) = v80 + 1;
        v81 = v134 + 16 * v80;
        *(v81 + 32) = v77;
        *(v81 + 40) = v78;
        v75 += 8;
        --v74;
      }

      while (v74);
    }

    else
    {

      v76 = MEMORY[0x277D84F90];
    }

    v84 = MEMORY[0x2530AD730](v76, MEMORY[0x277D837D0]);
    v86 = v85;

    MEMORY[0x2530AD570](v84, v86);

    v87 = v136[0];
    v88 = v136[1];
    v90 = *(v3 + 2);
    v89 = *(v3 + 3);
    if (v90 >= v89 >> 1)
    {
      v3 = sub_2529F7A80((v89 > 1), v90 + 1, 1, v3);
    }

    *(v3 + 2) = v90 + 1;
    v91 = &v3[16 * v90];
    *(v91 + 4) = v87;
    *(v91 + 5) = v88;
  }

  v92 = sub_252CD9C58();
  v93 = *(v92 + 16);
  if (v93)
  {
    v94 = (v92 + 32);
    v95 = MEMORY[0x277D84F90];
    do
    {
      v99 = *v94++;
      v98 = v99;
      if (v99)
      {
        v136[0] = v95;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA360(0, *(v95 + 16) + 1, 1);
          v95 = v136[0];
        }

        v97 = *(v95 + 16);
        v96 = *(v95 + 24);
        if (v97 >= v96 >> 1)
        {
          sub_2529AA360((v96 > 1), v97 + 1, 1);
          v95 = v136[0];
        }

        *(v95 + 16) = v97 + 1;
        *(v95 + 8 * v97 + 32) = v98;
      }

      --v93;
    }

    while (v93);
  }

  else
  {
    v95 = MEMORY[0x277D84F90];
  }

  v100 = *(v95 + 16);

  if (v100)
  {
    sub_252E379F4();

    v136[0] = 0xD000000000000016;
    v136[1] = 0x8000000252E92880;
    v101 = sub_252CD9C58();
    v102 = *(v101 + 16);
    v103 = MEMORY[0x277D84F90];
    if (v102)
    {
      v104 = (v101 + 32);
      v105 = MEMORY[0x277D84F90];
      do
      {
        v109 = *v104++;
        v108 = v109;
        if (v109)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA360(0, *(v105 + 16) + 1, 1);
          }

          v107 = *(v105 + 16);
          v106 = *(v105 + 24);
          if (v107 >= v106 >> 1)
          {
            sub_2529AA360((v106 > 1), v107 + 1, 1);
          }

          *(v105 + 16) = v107 + 1;
          *(v105 + 8 * v107 + 32) = v108;
        }

        --v102;
      }

      while (v102);
    }

    else
    {
      v105 = MEMORY[0x277D84F90];
    }

    v111 = *(v105 + 16);
    if (v111)
    {
      v135 = v103;
      sub_2529AA3A0(0, v111, 0);
      v112 = 32;
      v113 = v135;
      do
      {
        v114 = HomeAttributeType.description.getter(*(v105 + v112));
        v117 = *(v135 + 16);
        v116 = *(v135 + 24);
        if (v117 >= v116 >> 1)
        {
          v119 = v114;
          v120 = v115;
          sub_2529AA3A0((v116 > 1), v117 + 1, 1);
          v115 = v120;
          v114 = v119;
        }

        *(v135 + 16) = v117 + 1;
        v118 = v135 + 16 * v117;
        *(v118 + 32) = v114;
        *(v118 + 40) = v115;
        v112 += 8;
        --v111;
      }

      while (v111);
    }

    else
    {

      v113 = MEMORY[0x277D84F90];
    }

    v121 = MEMORY[0x2530AD730](v113, MEMORY[0x277D837D0]);
    v123 = v122;

    MEMORY[0x2530AD570](v121, v123);

    v124 = v136[0];
    v125 = v136[1];
    v127 = *(v3 + 2);
    v126 = *(v3 + 3);
    v110 = v127 + 1;
    if (v127 >= v126 >> 1)
    {
      v3 = sub_2529F7A80((v126 > 1), v127 + 1, 1, v3);
    }

    *(v3 + 2) = v110;
    v128 = &v3[16 * v127];
    *(v128 + 4) = v124;
    *(v128 + 5) = v125;
  }

  else
  {
    v110 = *(v3 + 2);
  }

  v129 = *(v3 + 3);
  if (v110 >= v129 >> 1)
  {
    v3 = sub_2529F7A80((v129 > 1), v110 + 1, 1, v3);
  }

  *(v3 + 2) = v110 + 1;
  v130 = &v3[16 * v110];
  *(v130 + 4) = 125;
  *(v130 + 5) = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  sub_2529508A0();
  v131 = sub_252E36EA4();

  return v131;
}

uint64_t Service.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

  return v0;
}

uint64_t Service.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Service()
{
  result = qword_27F545518;
  if (!qword_27F545518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252CDD654(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = sub_252E34014();
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CDD718, 0, 0);
}

uint64_t sub_252CDD718()
{
  sub_252CDE3C4(v0[20]);
  if (v1)
  {
    if (qword_27F53F4D0 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_49;
  }

  v7 = v0[20];
  v8 = sub_252B4F670();
  v0[25] = v8;
  v56 = v8;
  v9 = sub_252C285F0();
  v10 = v9;
  v58 = MEMORY[0x277D84F90];
  if (v9 >> 62)
  {
    v11 = sub_252E378C4();
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  v57 = v0;
  if (v11)
  {
    v13 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x2530ADF00](v13, v10);
      }

      else
      {
        if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v14 = *(v10 + 8 * v13 + 32);
      }

      v15 = v14;
      v0 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v16 = [v14 entity];
      if (v16 && (v17 = v16, v18 = [v16 type], v17, v18 == 7) && (sub_252DA5218() & 1) == 0)
      {
        sub_252E37A94();
        v19 = *(v58 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v13;
      if (v0 == v11)
      {
        v0 = v57;
        v20 = v58;
        v12 = MEMORY[0x277D84F90];
        goto LABEL_21;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    swift_once();
LABEL_3:
    v2 = v0[21];
    v3 = v0[19];
    v4 = sub_252E36AD4();
    __swift_project_value_buffer(v4, qword_27F544D18);
    sub_252CC3D90(0xD000000000000048, 0x8000000252E929E0, 0xD000000000000097, 0x8000000252E92A30);
    v5 = v2[6];
    v6 = v2[7];
    __swift_project_boxed_opaque_existential_1(v2 + 3, v5);
    sub_252944924(v5, v6);
LABEL_42:
    v54 = v0[24];

    v55 = v0[1];

    return v55();
  }

  v20 = MEMORY[0x277D84F90];
LABEL_21:

  if (v20 < 0 || (v20 & 0x4000000000000000) != 0)
  {
    v21 = sub_252E378C4();
  }

  else
  {
    v21 = *(v20 + 16);
  }

  v22 = v0[20];

  v23 = sub_252B4F670();
  v24 = sub_252C285F0();

  v59 = v12;
  if (v24 >> 62)
  {
    v25 = sub_252E378C4();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = 0;
  v0 = (v24 & 0xC000000000000001);
  v27 = MEMORY[0x277D84F90];
  while (v25 != v26)
  {
    if (v0)
    {
      v28 = MEMORY[0x2530ADF00](v26, v24);
    }

    else
    {
      if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v28 = *&v24[8 * v26 + 32];
    }

    v29 = v28;
    v30 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v31 = sub_252DA124C(0);

    ++v26;
    if (v31)
    {
      MEMORY[0x2530AD700]();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v32 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v27 = v59;
      v26 = v30;
    }
  }

  v33 = v57[21];

  type metadata accessor for HomeAutomationEntityResponses();
  v34 = swift_allocObject();
  v57[26] = v34;
  *(v34 + 16) = 0;
  *(v34 + 24) = v27;
  v35 = v33[6];
  v36 = v33[7];
  __swift_project_boxed_opaque_existential_1(v33 + 3, v35);
  if (!v21)
  {
    v44 = v57[21];
    v45 = v57[20];
    v46 = v57[19];
    v47 = swift_allocObject();
    *(v47 + 16) = v44;
    *(v47 + 24) = v34;
    *(v47 + 32) = *v45;
    v48 = *(v45 + 64);
    v50 = *(v45 + 16);
    v49 = *(v45 + 32);
    *(v47 + 80) = *(v45 + 48);
    *(v47 + 96) = v48;
    *(v47 + 48) = v50;
    *(v47 + 64) = v49;
    v52 = *(v45 + 96);
    v51 = *(v45 + 112);
    v53 = *(v45 + 80);
    *(v47 + 160) = *(v45 + 128);
    *(v47 + 128) = v52;
    *(v47 + 144) = v51;
    *(v47 + 112) = v53;

    v0 = v57;
    sub_252B5ADE8(v45, (v57 + 2));
    sub_252943B8C(sub_252CDF508, v47, v35, v36);

    goto LABEL_42;
  }

  v37 = v57[24];
  v38 = v57[21];
  v39 = swift_task_alloc();
  v57[27] = v39;
  *(v39 + 16) = v38;
  *(v39 + 24) = v34;
  sub_252AD7CC4();
  v40 = swift_task_alloc();
  v57[28] = v40;
  *v40 = v57;
  v40[1] = sub_252CDDCFC;
  v41 = v57[24];
  v42 = v57[19];

  return sub_252BDB88C(v42, &unk_252E5B510, v39, v41, 0, 0, 0, v35);
}

uint64_t sub_252CDDCFC()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    (*(v2[23] + 8))(v2[24], v2[22]);
    v4 = sub_252CDDEBC;
  }

  else
  {
    v5 = v2[27];
    (*(v2[23] + 8))(v2[24], v2[22]);

    v4 = sub_252CDDE4C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252CDDE4C()
{
  v2 = v0[25];
  v1 = v0[26];

  v3 = v0[24];

  v4 = v0[1];

  return v4();
}

uint64_t sub_252CDDEBC()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];

  v4 = v0[29];
  v5 = v0[24];

  v6 = v0[1];

  return v6();
}

uint64_t sub_252CDDF38(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252CDDF58, 0, 0);
}

uint64_t sub_252CDDF58()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 64), *(v0[2] + 88));

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_252CAED14;
  v4 = v0[3];

  return sub_252C16514(0, v2, v4);
}

uint64_t sub_252CDE02C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = sub_252B4F854();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_252E3C280;
  *(v5 + 32) = 0x6552797469746E65;
  *(v5 + 40) = 0xEF7365736E6F7073;
  v6 = type metadata accessor for HomeAutomationEntityResponses();
  *(v5 + 48) = a2;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0xD000000000000010;
  *(v5 + 88) = 0x8000000252E69A10;
  v7 = MEMORY[0x277D839B0];
  *(v5 + 96) = 1;
  *(v5 + 120) = v7;
  strcpy((v5 + 128), "intentContext");
  *(v5 + 142) = -4864;
  *(v5 + 168) = type metadata accessor for HomeAutomationIntentContext(0);
  *(v5 + 144) = v4;

  sub_252E362B4();
}

void *sub_252CDE1B4@<X0>(void *a1@<X8>)
{
  type metadata accessor for AsyncHomekitInvocationResponseHandler();
  swift_allocObject();
  result = sub_252D46D94();
  *a1 = result;
  return result;
}

uint64_t sub_252CDE1F4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252CDD654(a1, a2);
}

BOOL sub_252CDE2A0(uint64_t a1)
{
  v2 = sub_252B4F670();
  v3 = sub_252C285CC();

  if (v3 >> 62)
  {
    v4 = sub_252E378C4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = sub_252B4F670();
  v6 = sub_252C285F0();

  if (v6 >> 62)
  {
    v7 = sub_252E378C4();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (*(a1 + 64) == 0xD000000000000010 && 0x8000000252E80DF0 == *(a1 + 72) || (v8 = sub_252E37DB4(), result = 0, (v8 & 1) != 0))
  {
    if (v4)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7 == 0;
    }

    return !v10;
  }

  return result;
}

void sub_252CDE3C4(unint64_t a1)
{
  v116 = sub_252E36AD4();
  v5 = *(v116 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v116);
  v8 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = a1;
  v112 = sub_252B4F670();
  v9 = sub_252C2C640();
  v10 = v9;
  v11 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
LABEL_123:
    v12 = sub_252E378C4();
  }

  else
  {
    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v110 = v8;
  v111 = v5;
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    v121 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v2 = 0;
  v121 = MEMORY[0x277D84F90];
  do
  {
    v14 = v2;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x2530ADF00](v14, v10);
      }

      else
      {
        if (v14 >= *(v11 + 16))
        {
          goto LABEL_113;
        }

        v15 = *(v10 + 8 * v14 + 32);
      }

      v1 = v15;
      v2 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
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
        v89 = 0;
LABEL_118:
        v123[0] = v89;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD0, &unk_252E3E540);
        v90 = sub_252E36F94();
        MEMORY[0x2530AD570](v90);

        MEMORY[0x2530AD570](0xD00000000000002FLL, 0x8000000252E92C30);
        v91 = [v2 description];
        v92 = sub_252E36F34();
        v94 = v93;

        MEMORY[0x2530AD570](v92, v94);

        sub_252CC3D90(*&v122[0], *(&v122[0] + 1), 0xD000000000000097, v108 | 0x8000000000000000);

        (*(v1 + 8))(v3, v116);
        return;
      }

      v16 = [v15 entityIdentifier];
      if (v16)
      {
        break;
      }

      ++v14;
      if (v2 == v12)
      {
        goto LABEL_21;
      }
    }

    v17 = v16;
    v18 = sub_252E36F34();
    v20 = v19;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v121 = sub_2529F7A80(0, *(v121 + 2) + 1, 1, v121);
    }

    v3 = *(v121 + 2);
    v21 = *(v121 + 3);
    v1 = v3 + 1;
    if (v3 >= v21 >> 1)
    {
      v121 = sub_2529F7A80((v21 > 1), v3 + 1, 1, v121);
    }

    v22 = v121;
    *(v121 + 2) = v1;
    v23 = &v22[16 * v3];
    *(v23 + 4) = v18;
    *(v23 + 5) = v20;
    v13 = MEMORY[0x277D84F90];
  }

  while (v2 != v12);
LABEL_21:

  type metadata accessor for HomeStore();
  v24 = static HomeStore.shared.getter();
  v25 = sub_2529D9D50();
  v26 = 0;
  v1 = sub_2529D70E4(v25);

  v123[0] = v13;
  if (v1 >> 62)
  {
    v27 = sub_252E378C4();
  }

  else
  {
    v27 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = MEMORY[0x277D84F90];
  if (!v27)
  {
    goto LABEL_36;
  }

  v3 = 0;
  v120 = v1 & 0xC000000000000001;
  while (2)
  {
    if (v120)
    {
      MEMORY[0x2530ADF00](v3, v1);
      v2 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

      goto LABEL_30;
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_114;
    }

    v29 = *(v1 + 8 * v3 + 32);

    v2 = (v3 + 1);
    if (!__OFADD__(v3, 1))
    {
LABEL_30:
      *&v122[0] = sub_252E32E24();
      *(&v122[0] + 1) = v30;
      MEMORY[0x28223BE20](*&v122[0]);
      *(&v105 - 2) = v122;
      v31 = sub_2529ED970(sub_25296A69C, (&v105 - 4), v121);

      if (v31)
      {
        sub_252E37A94();
        v32 = *(v123[0] + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v3;
      if (v2 == v27)
      {
        goto LABEL_35;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_35:
  v28 = v123[0];
LABEL_36:

  v5 = 0x27F53F000uLL;
  v3 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/Flow/Async/ResponseHandlers/AsyncHomekitInvocationResponseHandler.swift";
  if (!*(v121 + 2))
  {
    goto LABEL_127;
  }

  LODWORD(v8) = v28 < 0 || (v28 & 0x4000000000000000) != 0;
  if (v8 == 1)
  {
LABEL_126:
    if (!sub_252E378C4())
    {
      goto LABEL_127;
    }

LABEL_42:

    if (*(v5 + 1232) != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v116, qword_27F544D18);
    *&v122[0] = 0;
    *(&v122[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v122[0] = 0xD000000000000013;
    *(&v122[0] + 1) = 0x8000000252E8EBC0;
    v34 = type metadata accessor for Service();
    v35 = MEMORY[0x2530AD730](v28, v34);
    MEMORY[0x2530AD570](v35);

    v108 = v3 - 32;
    v109 = v33;
    sub_252CC3D90(*&v122[0], *(&v122[0] + 1), 0xD000000000000097, (v3 - 32) | 0x8000000000000000);

    v36 = *(v119 + 56);
    v37 = sub_252E26F50(*(v36 + 24));
    if ((v38 & 1) != 0 || (v39 = v37, v40 = sub_252DE9C5C(v37), !v41))
    {

      sub_252CC4050(0xD000000000000027, 0x8000000252E92AD0, 0xD000000000000097, v108 | 0x8000000000000000, 0xD000000000000027, 0x8000000252E92B00, 160);
      goto LABEL_130;
    }

    v42 = v40;
    v43 = v41;
    v106 = v36;
    v105 = v26;
    v26 = 0xE000000000000000;
    *&v122[0] = 0;
    *(&v122[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v122[0] = 0xD000000000000028;
    *(&v122[0] + 1) = 0x8000000252E92B30;
    v44 = HomeAttributeType.description.getter(v39);
    MEMORY[0x2530AD570](v44);

    v2 = 0xD000000000000097;
    v1 = v108;
    v3 = v109;
    sub_252CC3D90(*&v122[0], *(&v122[0] + 1), 0xD000000000000097, v108 | 0x8000000000000000);

    *&v122[0] = 0;
    *(&v122[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v122[0] = 0xD000000000000018;
    *(&v122[0] + 1) = 0x8000000252E92B60;

    v120 = v42;
    MEMORY[0x2530AD570](v42, v43);

    sub_252CC3D90(*&v122[0], *(&v122[0] + 1), 0xD000000000000097, v1 | 0x8000000000000000);

    if (v8)
    {
      v5 = sub_252E378C4();
    }

    else
    {
      v5 = *(v28 + 16);
    }

    v8 = MEMORY[0x277D84F90];
    v121 = v43;
    if (v5)
    {
      v123[0] = MEMORY[0x277D84F90];
      v10 = v123;
      sub_2529AA6C0(0, v5 & ~(v5 >> 63), 0);
      if (v5 < 0)
      {
LABEL_132:
        __break(1u);
        return;
      }

      v45 = 0;
      v11 = v123[0];
      v115 = v28 & 0xC000000000000001;
      v107 = v28 + 32;
      v113 = v5;
      v114 = v28;
      do
      {
        if (__OFADD__(v45, 1))
        {
          __break(1u);
          goto LABEL_123;
        }

        v119 = v45 + 1;
        if (v115)
        {
          v46 = MEMORY[0x2530ADF00]();
        }

        else
        {
          if (v45 >= *(v28 + 16))
          {
            __break(1u);
            goto LABEL_126;
          }

          v47 = *(v107 + 8 * v45);
        }

        *&v117 = v46;
        v48 = [*(v46 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) characteristics];
        sub_252BAC798();
        v3 = sub_252E37264();

        if (v3 >> 62)
        {
          v49 = sub_252E378C4();
          *&v118 = v11;
          if (v49)
          {
LABEL_60:
            v50 = 0;
            while (1)
            {
              if ((v3 & 0xC000000000000001) != 0)
              {
                v51 = MEMORY[0x2530ADF00](v50, v3);
              }

              else
              {
                if (v50 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_116;
                }

                v51 = *(v3 + 8 * v50 + 32);
              }

              v2 = v51;
              v52 = v50 + 1;
              if (__OFADD__(v50, 1))
              {
                goto LABEL_115;
              }

              v53 = [v51 characteristicType];
              v10 = sub_252E36F34();
              v1 = v54;

              v43 = v121;
              if (v10 == v120 && v121 == v1)
              {
                break;
              }

              v10 = sub_252E37DB4();

              if (v10)
              {
                v1 = v3;
LABEL_75:

                v56 = [v2 value];

                v8 = MEMORY[0x277D84F90];
                v28 = v114;
                v11 = v118;
                if (v56)
                {
                  sub_252E377F4();
                  swift_unknownObjectRelease();

                  v57 = v122[0];
                  v58 = v122[1];
                }

                else
                {

                  v57 = 0uLL;
                  v58 = 0uLL;
                }

                goto LABEL_80;
              }

              ++v50;
              if (v52 == v49)
              {
                goto LABEL_79;
              }
            }

            goto LABEL_75;
          }
        }

        else
        {
          v49 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          *&v118 = v11;
          if (v49)
          {
            goto LABEL_60;
          }
        }

LABEL_79:

        v57 = 0uLL;
        v58 = 0uLL;
        v8 = MEMORY[0x277D84F90];
        v28 = v114;
        v11 = v118;
LABEL_80:
        v123[0] = v11;
        v26 = *(v11 + 16);
        v59 = *(v11 + 24);
        v5 = v26 + 1;
        if (v26 >= v59 >> 1)
        {
          v10 = v123;
          v117 = v58;
          v118 = v57;
          sub_2529AA6C0((v59 > 1), v26 + 1, 1);
          v58 = v117;
          v57 = v118;
          v11 = v123[0];
        }

        *(v11 + 16) = v5;
        v60 = v11 + 32 * v26;
        *(v60 + 32) = v57;
        *(v60 + 48) = v58;
        v45 = v119;
      }

      while (v119 != v113);

      v61 = *(v11 + 16);
      if (!v61)
      {
        goto LABEL_104;
      }
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
      v61 = *(MEMORY[0x277D84F90] + 16);
      if (!v61)
      {
LABEL_104:

        v62 = MEMORY[0x277D84F90];
        v70 = *(MEMORY[0x277D84F90] + 16);
        if (v70)
        {
          goto LABEL_89;
        }

        goto LABEL_105;
      }
    }

    v123[0] = v8;
    sub_2529AA6A0(0, v61, 0);
    v62 = v123[0];
    v63 = v11 + 32;
    do
    {
      sub_252AEA788(v63, v122);
      v64 = sub_252C69438(v120, v43, v122, 0, 0);
      v66 = v65;
      sub_252982F10(v122);
      v123[0] = v62;
      v68 = *(v62 + 16);
      v67 = *(v62 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_2529AA6A0((v67 > 1), v68 + 1, 1);
        v62 = v123[0];
      }

      *(v62 + 16) = v68 + 1;
      v69 = v62 + 16 * v68;
      *(v69 + 32) = v64;
      *(v69 + 40) = v66;
      v63 += 32;
      --v61;
      v43 = v121;
    }

    while (v61);

    v70 = *(v62 + 16);
    if (v70)
    {
LABEL_89:
      v71 = 0;
      while (1)
      {
        if (v71 >= *(v62 + 16))
        {
          __break(1u);
          goto LABEL_132;
        }

        v72 = v62 + 32 + 16 * v71;
        v73 = *(v72 + 8);
        v74 = qword_27F53F730;
        v2 = *v72;
        if (v74 != -1)
        {
          swift_once();
        }

        v75 = qword_27F575C40;
        if (*(qword_27F575C40 + 16))
        {
          v76 = *(qword_27F575C40 + 40);
          sub_252E37EC4();
          MEMORY[0x2530AE390](v73);
          v77 = sub_252E37F14();
          v78 = -1 << *(v75 + 32);
          v79 = v77 & ~v78;
          if ((*(v75 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79))
          {
            v80 = ~v78;
            while (*(*(v75 + 48) + 8 * v79) != v73)
            {
              v79 = (v79 + 1) & v80;
              if (((*(v75 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) == 0)
              {
                goto LABEL_98;
              }
            }

            *&v122[0] = 0;
            *(&v122[0] + 1) = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E92B80);
            v123[0] = v73;
            sub_252E37AE4();
            sub_252CC3D90(*&v122[0], *(&v122[0] + 1), 0xD000000000000097, v108 | 0x8000000000000000);

            goto LABEL_130;
          }
        }

LABEL_98:
        if (!*(v106 + 32))
        {
          break;
        }

        v81 = *(v106 + 32);

        v82 = sub_252A05A90();

        if (!v82)
        {
          break;
        }

        type metadata accessor for HomeAttributeValue();
        v83 = v2;
        v84 = sub_252E37694();

        if ((v84 & 1) == 0)
        {
          break;
        }

        ++v71;

        if (v71 == v70)
        {

          v95 = sub_252E36AC4();
          v96 = sub_252E374C4();
          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            *v97 = 0;
            _os_log_impl(&dword_252917000, v95, v96, "All targeted entities were in target", v97, 2u);
            MEMORY[0x2530AED00](v97, -1, -1);
          }

          return;
        }
      }

      v1 = v111;
      v3 = v110;
      (*(v111 + 16))(v110, v109, v116);
      *&v122[0] = 0;
      *(&v122[0] + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000078, 0x8000000252E92BB0);
      if (!*(v106 + 32))
      {
        goto LABEL_117;
      }

      v88 = *(v106 + 32);

      v89 = sub_252A05A90();

      goto LABEL_118;
    }

LABEL_105:

    v85 = sub_252E36AC4();
    v86 = sub_252E374D4();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_252917000, v85, v86, "Couldn't find any values.", v87, 2u);
      MEMORY[0x2530AED00](v87, -1, -1);
    }

    goto LABEL_130;
  }

  if (*(v28 + 16))
  {
    goto LABEL_42;
  }

LABEL_127:
  if (*(v5 + 1232) != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v116, qword_27F544D18);
  *&v122[0] = 0;
  *(&v122[0] + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000027, 0x8000000252E92C60);
  v98 = MEMORY[0x2530AD730](v121, MEMORY[0x277D837D0]);
  v100 = v99;

  MEMORY[0x2530AD570](v98, v100);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E92C90);
  v101 = type metadata accessor for Service();
  v102 = MEMORY[0x2530AD730](v28, v101);
  v104 = v103;

  MEMORY[0x2530AD570](v102, v104);

  sub_252CC4050(*&v122[0], *(&v122[0] + 1), 0xD000000000000097, (v3 - 32) | 0x8000000000000000, 0xD000000000000027, 0x8000000252E92B00, 149);

LABEL_130:
}

uint64_t sub_252CDF470()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_252CDDF38(v2, v3);
}

uint64_t sub_252CDF514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6156747365776F6CLL && a2 == 0xEB0000000065756CLL;
  if (v6 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252C9A2AC();
    if (result)
    {
LABEL_7:
      v8 = result;
      result = type metadata accessor for HomeAutomationEntityStateValue(0);
      *(a3 + 24) = result;
      *a3 = v8;
      return result;
    }

    goto LABEL_12;
  }

  if (a1 == 0x5674736568676968 && a2 == 0xEC00000065756C61 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252C99DD8();
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (a1 == 0x5665676172657661 && a2 == 0xEC00000065756C61 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252C9A780();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  if (a1 == 0x6C61757145736168 && a2 == 0xED000065756C6156 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252C9AFBC();
LABEL_22:
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = result & 1;
    return result;
  }

  if (a1 == 0xD000000000000017 && 0x8000000252E92D50 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252C9B2B8();
    goto LABEL_22;
  }

  if (a1 == 0xD000000000000018 && 0x8000000252E92D70 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252C9B080();
    goto LABEL_22;
  }

  return sub_252C86824(a1, a2, a3);
}

uint64_t sub_252CDF7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *(a1 + 16);
  if (!v19)
  {
    return 0;
  }

  v3 = 0;
  v20 = a1 + 32;
  while (1)
  {
    v4 = *(v20 + v3);
    v5 = sub_2529FC02C(a3);
    v6 = v5;
    if (*(v5 + 16))
    {
      v7 = *(v5 + 40);
      sub_252E37EC4();
      StateSemantic.rawValue.getter();
      sub_252E37044();

      v8 = sub_252E37F14();
      v9 = -1 << *(v6 + 32);
      v10 = v8 & ~v9;
      if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
      {
        break;
      }
    }

LABEL_3:
    ++v3;

    if (v3 == v19)
    {
      return 0;
    }
  }

  v11 = ~v9;
  while (1)
  {
    v22 = *(*(v6 + 48) + v10);
    v12 = StateSemantic.rawValue.getter();
    v14 = v13;
    if (v12 == StateSemantic.rawValue.getter() && v14 == v15)
    {
      break;
    }

    v17 = sub_252E37DB4();

    if (v17)
    {
      goto LABEL_16;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

LABEL_16:

  return 1;
}

uint64_t sub_252CDF97C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_252E36AB4();
  v25 = *(v4 - 8);
  v26 = v4;
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F5A8 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v8 = qword_27F544F30;
    sub_252E36A94();
    sub_252E375D4();
    v24 = v8;
    sub_252E36A84();
    if (!(a1 >> 62))
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        break;
      }

      goto LABEL_4;
    }

    v9 = sub_252E378C4();
    if (!v9)
    {
      break;
    }

LABEL_4:
    v10 = 0;
    v32 = v2;
    v33 = a1 & 0xC000000000000001;
    v27 = a1 + 32;
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    v30 = a1;
    v31 = v7;
    v29 = v9;
    while (v33)
    {
      v11 = MEMORY[0x2530ADF00](v10, a1);
      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_45;
      }

LABEL_13:
      sub_252CF38DC(v11);
      v13 = sub_252E34524();
      if (!v13)
      {
        goto LABEL_6;
      }

      v14 = v13;
      v37 = MEMORY[0x277D84F90];
      v15 = v13 & 0xFFFFFFFFFFFFFF8;
      if (v13 >> 62)
      {
        a1 = sub_252E378C4();
        v34 = v10;
        v35 = v11;
        if (!a1)
        {
LABEL_32:
          v7 = MEMORY[0x277D84F90];
          goto LABEL_33;
        }
      }

      else
      {
        a1 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v34 = v10;
        v35 = v11;
        if (!a1)
        {
          goto LABEL_32;
        }
      }

      v16 = 0;
      v7 = MEMORY[0x277D84F90];
      do
      {
        v17 = v16;
        while (1)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](v17, v14);
            v16 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              goto LABEL_43;
            }
          }

          else
          {
            if (v17 >= *(v15 + 16))
            {
              goto LABEL_44;
            }

            v18 = *(v14 + 8 * v17 + 32);

            v16 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
LABEL_43:
              __break(1u);
LABEL_44:
              __break(1u);
              goto LABEL_45;
            }
          }

          sub_252E349D4();

          v2 = v36;
          if (v36)
          {
            break;
          }

          ++v17;
          if (v16 == a1)
          {
            goto LABEL_33;
          }
        }

        MEMORY[0x2530AD700](v19);
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v20 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v7 = v37;
      }

      while (v16 != a1);
LABEL_33:

      if (v7 >> 62)
      {
        a1 = sub_252E378C4();
        v2 = v32;
        if (a1)
        {
LABEL_35:
          if (a1 < 1)
          {
            goto LABEL_46;
          }

          v21 = 0;
          do
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v22 = MEMORY[0x2530ADF00](v21, v7);
            }

            else
            {
              v22 = *(v7 + 8 * v21 + 32);
            }

            ++v21;
            sub_252CF38DC(v22);
          }

          while (a1 != v21);
        }
      }

      else
      {
        a1 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v2 = v32;
        if (a1)
        {
          goto LABEL_35;
        }
      }

      a1 = v30;
      v7 = v31;
      v9 = v29;
      v10 = v34;
LABEL_6:

      if (v10 == v9)
      {
        goto LABEL_50;
      }
    }

    if (v10 >= *(v28 + 16))
    {
      goto LABEL_47;
    }

    v11 = *(v27 + 8 * v10);

    v12 = __OFADD__(v10++, 1);
    if (!v12)
    {
      goto LABEL_13;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
  }

LABEL_50:
  sub_252E375C4();
  sub_252E36A74();
  return (*(v25 + 8))(v7, v26);
}

uint64_t sub_252CDFDD4()
{
  v1 = v0;
  v2 = __dst;
  v3 = *v0;
  v4 = v0[12];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[24];
  if (qword_27F53F4F8 != -1)
  {
    goto LABEL_239;
  }

  while (1)
  {
    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544D90);
    *v2 = 0;
    *(v2 + 8) = 0xE000000000000000;
    sub_252E379F4();
    v9 = *(v2 + 8);

    v151 = 0xD000000000000012;
    v152 = 0x8000000252E92DC0;
    *v2 = v3;
    *(v2 + 40) = *(v1 + 40);
    *(v2 + 56) = *(v1 + 56);
    *(v2 + 72) = *(v1 + 72);
    v10 = *(v1 + 88);
    *(v2 + 8) = *(v1 + 8);
    *(v2 + 24) = *(v1 + 24);
    *(v2 + 88) = v10;
    *(v2 + 96) = v4;
    v133 = v4;
    *(v2 + 104) = *(v1 + 104);
    *(v2 + 120) = *(v1 + 120);
    v142 = v6;
    v145 = v7;
    *(v2 + 136) = v6;
    *(v2 + 144) = v5;
    v149 = v5;
    v11 = *(v1 + 184);
    *(v2 + 168) = *(v1 + 168);
    *(v2 + 152) = *(v1 + 152);
    *(v2 + 184) = v11;
    *(v2 + 192) = v7;
    memcpy(&__dst[25], (v1 + 200), 0x130uLL);
    v12 = HomeAutomationIntent.description.getter();
    MEMORY[0x2530AD570](v12);

    sub_252CC3D90(v151, v152, 0xD000000000000077, 0x8000000252E92DE0);

    v6 = *(v3 + 16);
    v4 = MEMORY[0x277D84F90];
    if (!v6)
    {
      break;
    }

    v1 = 0;
    v13 = (v3 + 168);
    while (v1 < *(v3 + 16))
    {
      v7 = *v13;
      v14 = *(*v13 + 16);
      v15 = *(v4 + 2);
      v5 = v15 + v14;
      if (__OFADD__(v15, v14))
      {
        goto LABEL_227;
      }

      v16 = *v13;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v5 <= *(v4 + 3) >> 1)
      {
        if (*(v7 + 16))
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (v15 <= v5)
        {
          v18 = v15 + v14;
        }

        else
        {
          v18 = v15;
        }

        v4 = sub_2529F80DC(isUniquelyReferenced_nonNull_native, v18, 1, v4);
        if (*(v7 + 16))
        {
LABEL_16:
          v19 = *(v4 + 2);
          if ((*(v4 + 3) >> 1) - v19 < v14)
          {
            goto LABEL_231;
          }

          memcpy(&v4[v19 + 32], (v7 + 32), v14);

          if (v14)
          {
            v20 = *(v4 + 2);
            v21 = __OFADD__(v20, v14);
            v22 = v20 + v14;
            if (v21)
            {
              goto LABEL_232;
            }

            *(v4 + 2) = v22;
          }

          goto LABEL_5;
        }
      }

      if (v14)
      {
        goto LABEL_228;
      }

LABEL_5:
      ++v1;
      v13 += 63;
      if (v6 == v1)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    swift_once();
  }

LABEL_20:
  *v2 = v142;

  sub_25297ADE8(v4);
  v23 = *v2;
  v24 = *(*v2 + 16);
  v138 = v3;
  v140 = v6;
  if (v24)
  {
    v135 = *v2;
    v25 = (v23 + 32);
    v5 = 0x8000000252E65350;
    v2 = MEMORY[0x277D84F90];
    v26 = (v23 + 32);
    v27 = v24;
    while (1)
    {
      v29 = *v26++;
      v28 = v29;
      LOBYTE(v151) = v29;
      if (AccessoryTypeSemantic.rawValue.getter() != 0xD000000000000012 || 0x8000000252E65350 != v30)
      {
        v32 = sub_252E37DB4();

        if (v32)
        {
          goto LABEL_23;
        }

        LOBYTE(v151) = v28;
        if (AccessoryTypeSemantic.rawValue.getter() != 0x706F4D746F626F72 || v33 != 0xE800000000000000)
        {
          v34 = sub_252E37DB4();

          if ((v34 & 1) == 0)
          {
            v35 = swift_isUniquelyReferenced_nonNull_native();
            __dst[0] = v2;
            if ((v35 & 1) == 0)
            {
              sub_2529AA4C0(0, *(v2 + 16) + 1, 1);
              v2 = __dst[0];
            }

            v37 = *(v2 + 16);
            v36 = *(v2 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_2529AA4C0((v36 > 1), v37 + 1, 1);
              v2 = __dst[0];
            }

            *(v2 + 16) = v37 + 1;
            *(v2 + v37 + 32) = v28;
          }

          goto LABEL_23;
        }
      }

LABEL_23:
      if (!--v27)
      {
        v3 = MEMORY[0x277D84F90];
        while (1)
        {
          v39 = *v25++;
          v38 = v39;
          LOBYTE(v151) = v39;
          if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v40)
          {
            break;
          }

          v42 = sub_252E37DB4();

          if (v42)
          {
            goto LABEL_46;
          }

          LOBYTE(v151) = v38;
          if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v43 == 0xE800000000000000)
          {
            break;
          }

          v47 = sub_252E37DB4();

          if (v47)
          {
            goto LABEL_46;
          }

LABEL_51:
          if (!--v24)
          {
            v6 = v140;
            goto LABEL_56;
          }
        }

LABEL_46:
        v44 = swift_isUniquelyReferenced_nonNull_native();
        __dst[0] = v3;
        if ((v44 & 1) == 0)
        {
          sub_2529AA4C0(0, *(v3 + 16) + 1, 1);
          v3 = __dst[0];
        }

        v46 = *(v3 + 16);
        v45 = *(v3 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_2529AA4C0((v45 > 1), v46 + 1, 1);
          v3 = __dst[0];
        }

        *(v3 + 16) = v46 + 1;
        *(v3 + v46 + 32) = v38;
        goto LABEL_51;
      }
    }
  }

  v2 = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277D84F90];
LABEL_56:

  v48 = *(v2 + 16);

  if (v48)
  {
    v49 = *(v3 + 16);

    if (!v49)
    {
      v50 = 0;
      return v50 & 1;
    }
  }

  else
  {
  }

  result = sub_2529FC02C(&unk_2864A33F8);
  v4 = result;
  v52 = v145;
  v1 = *(v145 + 16);
  if (v1)
  {
    v7 = 0;
    v3 = result + 56;
    while (v7 < *(v52 + 16))
    {
      if (*(v4 + 2))
      {
        v53 = *(v145 + 32 + v7);
        v54 = *(v4 + 5);
        sub_252E37EC4();
        LOBYTE(v151) = v53;
        StateSemantic.rawValue.getter();
        sub_252E37044();

        result = sub_252E37F14();
        v55 = -1 << v4[32];
        v56 = result & ~v55;
        if ((*(v3 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
        {
          v57 = ~v55;
          while (1)
          {
            LOBYTE(__dst[0]) = *(*(v4 + 6) + v56);
            LOBYTE(v151) = v53;
            v2 = StateSemantic.rawValue.getter();
            v5 = v58;
            if (v2 == StateSemantic.rawValue.getter() && v5 == v59)
            {
              break;
            }

            v2 = sub_252E37DB4();

            if (v2)
            {
              goto LABEL_77;
            }

            v56 = (v56 + 1) & v57;
            if (((*(v3 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
            {
              goto LABEL_62;
            }
          }

LABEL_77:
          v132 = 1;
          if (!v140)
          {
            goto LABEL_96;
          }

          goto LABEL_78;
        }
      }

LABEL_62:
      ++v7;
      v6 = v140;
      v52 = v145;
      if (v7 == v1)
      {
        goto LABEL_74;
      }
    }

    goto LABEL_238;
  }

LABEL_74:
  v132 = 0;
  if (v6)
  {
LABEL_78:
    v61 = 0;
    v62 = v138 + 32;
    v6 = (v4 + 56);
    v1 = 504;
    while (1)
    {
      if (v61 >= *(v138 + 16))
      {
        __break(1u);
        goto LABEL_241;
      }

      result = memcpy(__dst, (v62 + 504 * v61), 0x1F8uLL);
      v5 = __dst[24];
      v146 = *(__dst[24] + 16);
      if (v146)
      {
        break;
      }

LABEL_95:
      if (++v61 == v140)
      {
        goto LABEL_96;
      }
    }

    v130 = v61;
    v136 = __dst[24] + 32;
    sub_2529353AC(__dst, &v151);

    v7 = 0;
    while (v7 < *(v5 + 16))
    {
      if (*(v4 + 2))
      {
        v1 = *(v136 + v7);
        v63 = *(v4 + 5);
        sub_252E37EC4();
        StateSemantic.rawValue.getter();
        sub_252E37044();

        v64 = sub_252E37F14();
        v65 = -1 << v4[32];
        v66 = v64 & ~v65;
        if ((*(v6 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
        {
          v67 = ~v65;
          while (1)
          {
            LOBYTE(v151) = *(*(v4 + 6) + v66);
            v68 = StateSemantic.rawValue.getter();
            v2 = v69;
            if (v68 == StateSemantic.rawValue.getter() && v2 == v70)
            {
              break;
            }

            v3 = sub_252E37DB4();

            if (v3)
            {
              goto LABEL_98;
            }

            v66 = (v66 + 1) & v67;
            if (((*(v6 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
            {
              goto LABEL_82;
            }
          }

LABEL_98:

          sub_252935408(__dst);

          v131 = 1;
          goto LABEL_99;
        }
      }

LABEL_82:
      if (++v7 == v146)
      {
        sub_252935408(__dst);

        v62 = v138 + 32;
        v61 = v130;
        v1 = 504;
        goto LABEL_95;
      }
    }

    goto LABEL_237;
  }

LABEL_96:

  v131 = 0;
LABEL_99:
  v72 = 0;
  v2 = v140;
  v6 = v142;
  v147 = *(v142 + 16);
  v1 = v142 + 32;
  v4 = 0x8000000252E65350;
  v7 = 0xE800000000000000;
  do
  {
    v3 = v72;
    if (v147 == v72)
    {
      break;
    }

    if (v72 >= *(v142 + 16))
    {
      goto LABEL_233;
    }

    v73 = *(v1 + v72);
    LOBYTE(__dst[0]) = v73;
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v74)
    {
      goto LABEL_108;
    }

    v5 = sub_252E37DB4();

    if (v5)
    {
      break;
    }

    LOBYTE(__dst[0]) = v73;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v75 == 0xE800000000000000)
    {
LABEL_108:

      break;
    }

    v5 = sub_252E37DB4();

    v72 = v3 + 1;
  }

  while ((v5 & 1) == 0);
  if (v140)
  {
    v1 = 0;
    v76 = v138 + 32;
    v6 = 0xE800000000000000;
    while (2)
    {
      if (v1 >= *(v138 + 16))
      {
LABEL_241:
        __break(1u);
        goto LABEL_242;
      }

      memcpy(__dst, (v76 + 504 * v1), 0x1F8uLL);
      v77 = __dst[17];
      ++v1;
      v2 = *(__dst[17] + 16);
      sub_2529353AC(__dst, &v151);

      v7 = 0;
      while (v2 != v7)
      {
        if (v7 >= *(v77 + 16))
        {
          goto LABEL_235;
        }

        v78 = *(v77 + v7 + 32);
        LOBYTE(v151) = v78;
        if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v79)
        {
          goto LABEL_125;
        }

        v80 = sub_252E37DB4();

        if (v80)
        {
          goto LABEL_126;
        }

        LOBYTE(v151) = v78;
        if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v81 == 0xE800000000000000)
        {
LABEL_125:

LABEL_126:

          result = sub_252935408(__dst);
          v82 = 1;
          goto LABEL_127;
        }

        v5 = sub_252E37DB4();

        ++v7;
        if (v5)
        {
          goto LABEL_126;
        }
      }

      sub_252935408(__dst);

      v82 = 0;
      v76 = v138 + 32;
      if (v1 != v140)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v82 = 0;
  }

LABEL_127:
  v137 = v82;
  v83 = 0;
  v143 = *(v149 + 16);
  v1 = v149 + 32;
  v7 = 0xE800000000000000;
  v5 = __dst;
  v6 = v138;
  do
  {
    v2 = v83;
    if (v143 == v83)
    {
      break;
    }

    if (v83 >= *(v149 + 16))
    {
      goto LABEL_234;
    }

    v85 = *(v1 + v83);
    LOBYTE(__dst[0]) = v85;
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v86)
    {
      goto LABEL_136;
    }

    v87 = sub_252E37DB4();

    if (v87)
    {
      break;
    }

    LOBYTE(__dst[0]) = v85;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v88 == 0xE800000000000000)
    {
LABEL_136:

      break;
    }

    v84 = sub_252E37DB4();

    v83 = v2 + 1;
  }

  while ((v84 & 1) == 0);
  if (!v140)
  {
    v95 = 0;
LABEL_155:
    v96 = MEMORY[0x277D84F90];
    __dst[0] = MEMORY[0x277D84F90];
    v4 = v133;
    v1 = *(v133 + 2);
    v150 = v95;
    if (v1)
    {
      v97 = 0;
      while (v97 < *(v133 + 2))
      {
        v7 = v97 + 1;
        v98 = *&v133[8 * v97 + 32];

        sub_25297AB2C(v99);
        v97 = v7;
        if (v1 == v7)
        {
          v100 = __dst[0];
          v96 = MEMORY[0x277D84F90];
          goto LABEL_161;
        }
      }

      goto LABEL_229;
    }

    v100 = MEMORY[0x277D84F90];
LABEL_161:
    v101 = sub_252C75848(v100);

    v6 = sub_252DA035C(0xD000000000000017, 0x8000000252E64CA0, v101);

    __dst[0] = v96;
    if (v1)
    {
      v102 = 0;
      while (v102 < *(v133 + 2))
      {
        v7 = v102 + 1;
        v103 = *&v133[8 * v102 + 32];

        sub_25297AB2C(v104);
        v102 = v7;
        if (v1 == v7)
        {
          v105 = v6;
          v106 = __dst[0];
          goto LABEL_167;
        }
      }

      goto LABEL_230;
    }

    v105 = v6;
    v106 = v96;
LABEL_167:
    v107 = v132 | v131;
    if (v147 != v3)
    {
      v107 = 1;
    }

    v108 = v107 | v137;
    if (v143 == v2)
    {
      v109 = v108;
    }

    else
    {
      v109 = 1;
    }

    v110 = 1702195828;
    if (v143 == v2)
    {
      v111 = 0x65736C6166;
    }

    else
    {
      v111 = 1702195828;
    }

    v141 = v111;
    if (v143 == v2)
    {
      v112 = 0xE500000000000000;
    }

    else
    {
      v112 = 0xE400000000000000;
    }

    v139 = v112;
    if (v147 == v3)
    {
      v110 = 0x65736C6166;
    }

    v134 = v110;
    if (v147 == v3)
    {
      v113 = 0xE500000000000000;
    }

    else
    {
      v113 = 0xE400000000000000;
    }

    v129 = v113;
    v114 = sub_252C75848(v106);

    v148 = sub_252DA035C(0xD000000000000015, 0x8000000252E64CC0, v114);

    v144 = v109 | v150 | v105 | v148;
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0x7165526376527369, 0xEE00203A74736575);
    if (v144)
    {
      v115 = 1702195828;
    }

    else
    {
      v115 = 0x65736C6166;
    }

    if (((v109 | v150 | v105) | v148))
    {
      v116 = 0xE400000000000000;
    }

    else
    {
      v116 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v115, v116);

    MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E92E60);
    if (v132)
    {
      v117 = 1702195828;
    }

    else
    {
      v117 = 0x65736C6166;
    }

    if (v132)
    {
      v118 = 0xE400000000000000;
    }

    else
    {
      v118 = 0xE500000000000000;
    }

    v119 = 0xE500000000000000;
    MEMORY[0x2530AD570](v117, v118);

    MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E92E80);
    if (v131)
    {
      v120 = 1702195828;
    }

    else
    {
      v120 = 0x65736C6166;
    }

    if (v131)
    {
      v121 = 0xE400000000000000;
    }

    else
    {
      v121 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v120, v121);

    MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E92EB0);
    MEMORY[0x2530AD570](v134, v129);

    MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E92ED0);
    if (v137)
    {
      v122 = 1702195828;
    }

    else
    {
      v122 = 0x65736C6166;
    }

    if (v137)
    {
      v119 = 0xE400000000000000;
    }

    MEMORY[0x2530AD570](v122, v119);

    MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E92F00);
    MEMORY[0x2530AD570](v141, v139);

    MEMORY[0x2530AD570](0xD00000000000002BLL, 0x8000000252E92F30);
    if (v150)
    {
      v123 = 1702195828;
    }

    else
    {
      v123 = 0x65736C6166;
    }

    if (v150)
    {
      v124 = 0xE400000000000000;
    }

    else
    {
      v124 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v123, v124);

    MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E92F60);
    if (v105)
    {
      v125 = 1702195828;
    }

    else
    {
      v125 = 0x65736C6166;
    }

    if (v105)
    {
      v126 = 0xE400000000000000;
    }

    else
    {
      v126 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v125, v126);

    MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E92F80);
    if (v148)
    {
      v127 = 1702195828;
    }

    else
    {
      v127 = 0x65736C6166;
    }

    if (v148)
    {
      v128 = 0xE400000000000000;
    }

    else
    {
      v128 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v127, v128);

    sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000077, 0x8000000252E92DE0);

    v50 = v144;
    return v50 & 1;
  }

  v1 = 0;
  v89 = v138 + 32;
  while (2)
  {
    if (v1 < *(v6 + 16))
    {
      memcpy(__dst, (v89 + 504 * v1), 0x1F8uLL);
      v90 = __dst[18];
      ++v1;
      v7 = *(__dst[18] + 16);
      sub_2529353AC(__dst, &v151);

      v6 = 0;
      while (v7 != v6)
      {
        if (v6 >= *(v90 + 16))
        {
          goto LABEL_236;
        }

        v91 = *(v90 + v6 + 32);
        LOBYTE(v151) = v91;
        if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v92)
        {
          goto LABEL_153;
        }

        v93 = sub_252E37DB4();

        if (v93)
        {
          goto LABEL_154;
        }

        LOBYTE(v151) = v91;
        if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v94 == 0xE800000000000000)
        {
LABEL_153:

LABEL_154:

          sub_252935408(__dst);
          v95 = 1;
          v5 = __dst;
          goto LABEL_155;
        }

        v5 = sub_252E37DB4();

        ++v6;
        if (v5)
        {
          goto LABEL_154;
        }
      }

      sub_252935408(__dst);

      v95 = 0;
      v6 = v138;
      v5 = __dst;
      v89 = v138 + 32;
      if (v1 != v140)
      {
        continue;
      }

      goto LABEL_155;
    }

    break;
  }

LABEL_242:
  __break(1u);
  return result;
}

uint64_t sub_252CE10F0(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v5 = (v2 + 136);
  v4 = *(v2 + 136);
  v6 = v4 + 32;
  v7 = *(v4 + 16);
  v8 = 0x8000000252E65350;
  while (v7 != v3)
  {
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
LABEL_215:
      __break(1u);
      goto LABEL_216;
    }

    LOBYTE(v130) = *(v6 + v3);
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v10)
    {

LABEL_8:
      v11 = *(v4 + 16);
      if (v11)
      {
        v12 = 0;
        while (1)
        {
          if (v12 >= *(v4 + 16))
          {
            goto LABEL_222;
          }

          LOBYTE(v130) = *(v6 + v12);
          if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v13)
          {
            break;
          }

          v14 = sub_252E37DB4();

          if (v14)
          {
            goto LABEL_18;
          }

          if (v11 == ++v12)
          {
            v12 = *(v4 + 16);
            v15 = v12;
            goto LABEL_36;
          }
        }

LABEL_18:
        v16 = *(v4 + 16);
        if (v16 - 1 == v12)
        {
          v15 = v12 + 1;
        }

        else
        {
          v17 = v12 + 33;
          do
          {
            v20 = v17 - 32;
            if (v17 - 32 >= v16)
            {
              goto LABEL_224;
            }

            LOBYTE(v130) = *(v4 + v17);
            if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v21)
            {
            }

            else
            {
              v22 = sub_252E37DB4();

              if ((v22 & 1) == 0)
              {
                if (v20 != v12)
                {
                  if ((v12 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_233;
                  }

                  v23 = *(v4 + 16);
                  if (v12 >= v23)
                  {
                    goto LABEL_234;
                  }

                  if (v20 >= v23)
                  {
                    goto LABEL_235;
                  }

                  v24 = *(v4 + 32 + v12);
                  v25 = *(v4 + v17);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v4 = sub_252D57AD4(v4);
                  }

                  *(v4 + v12 + 32) = v25;
                  *(v4 + v17) = v24;
                  *v5 = v4;
                }

                ++v12;
              }
            }

            v16 = *(v4 + 16);
            v18 = v17 + 1;
            v19 = v17 - 31;
            ++v17;
          }

          while (v19 != v16);
          v15 = v18 - 32;
          if ((v18 - 32) < v12)
          {
            goto LABEL_231;
          }
        }
      }

      else
      {
        v12 = 0;
        v15 = 0;
      }

LABEL_36:
      sub_252D57CE0(v12, v15);
      break;
    }

    ++v3;
    v9 = sub_252E37DB4();

    if (v9)
    {
      goto LABEL_8;
    }
  }

  v26 = 0;
  v4 = 0x706F4D746F626F72;
  v27 = *v5;
  v28 = *v5 + 32;
  v29 = *(*v5 + 16);
  while (1)
  {
    if (v29 == v26)
    {
LABEL_90:
      v58 = a1;
      v57 = a2;
      if (a2)
      {
        goto LABEL_91;
      }

      goto LABEL_109;
    }

    if (v26 >= *(v27 + 2))
    {
      goto LABEL_215;
    }

    LOBYTE(v130) = *(v28 + v26);
    if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v31 == 0xE800000000000000)
    {
      break;
    }

    ++v26;
    v30 = sub_252E37DB4();

    if (v30)
    {
      goto LABEL_44;
    }
  }

LABEL_44:
  v32 = *(v27 + 2);
  if (v32)
  {
    v33 = 0;
    while (1)
    {
      if (v33 >= *(v27 + 2))
      {
        goto LABEL_223;
      }

      LOBYTE(v130) = *(v28 + v33);
      if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v34 == 0xE800000000000000)
      {
        break;
      }

      v35 = sub_252E37DB4();

      if (v35)
      {
        goto LABEL_54;
      }

      if (v32 == ++v33)
      {
        v33 = *(v27 + 2);
        v36 = v33;
        goto LABEL_72;
      }
    }

LABEL_54:
    v37 = *(v27 + 2);
    if (v37 - 1 == v33)
    {
      v36 = v33 + 1;
    }

    else
    {
      v38 = v33 + 33;
      do
      {
        v41 = v38 - 32;
        if (v38 - 32 >= v37)
        {
          goto LABEL_225;
        }

        LOBYTE(v130) = v27[v38];
        if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v42 == 0xE800000000000000)
        {
        }

        else
        {
          v43 = sub_252E37DB4();

          if ((v43 & 1) == 0)
          {
            if (v41 != v33)
            {
              if ((v33 & 0x8000000000000000) != 0)
              {
                goto LABEL_236;
              }

              v44 = *(v27 + 2);
              if (v33 >= v44)
              {
                goto LABEL_237;
              }

              if (v41 >= v44)
              {
                goto LABEL_238;
              }

              v45 = v27[v33 + 32];
              v46 = v27[v38];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v27 = sub_252D57AD4(v27);
              }

              v27[v33 + 32] = v46;
              v27[v38] = v45;
              *v5 = v27;
            }

            ++v33;
          }
        }

        v37 = *(v27 + 2);
        v39 = v38 + 1;
        v40 = v38 - 31;
        ++v38;
      }

      while (v40 != v37);
      v36 = v39 - 32;
      if ((v39 - 32) < v33)
      {
        goto LABEL_232;
      }
    }
  }

  else
  {
    v33 = 0;
    v36 = 0;
  }

LABEL_72:
  sub_252D57CE0(v33, v36);
  v47 = 0;
  v5 = v129[18];
  v48 = *(v5 + 2);
  do
  {
    if (v48 == v47)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_80;
      }

      goto LABEL_239;
    }

    if (v47 >= *(v5 + 2))
    {
      goto LABEL_218;
    }

    LOBYTE(v130) = v5[v47 + 32];
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v50)
    {

      goto LABEL_83;
    }

    ++v47;
    v49 = sub_252E37DB4();
  }

  while ((v49 & 1) == 0);
  while (1)
  {
LABEL_83:
    v53 = 0;
    v5 = v129[24];
    v54 = *(v5 + 2);
    while (v54 != v53)
    {
      if (v53 >= *(v5 + 2))
      {
        goto LABEL_219;
      }

      LOBYTE(v130) = v5[v53 + 32];
      if (StateSemantic.rawValue.getter() == 7368557 && v56 == 0xE300000000000000)
      {

        goto LABEL_90;
      }

      ++v53;
      v55 = sub_252E37DB4();

      if (v55)
      {
        goto LABEL_90;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_2529F82C4(0, *(v5 + 2) + 1, 1, v5);
    }

    v63 = *(v5 + 2);
    v62 = *(v5 + 3);
    if (v63 >= v62 >> 1)
    {
      v5 = sub_2529F82C4((v62 > 1), v63 + 1, 1, v5);
    }

    *(v5 + 2) = v63 + 1;
    v5[v63 + 32] = 58;
    v129[24] = v5;
    v58 = a1;
    v57 = a2;
    if (a2)
    {
LABEL_91:
      if (v58 == 7368525 && v57 == 0xE300000000000000 || (sub_252E37DB4() & 1) != 0 || v58 == 0x6F6D20746F626F72 && v57 == 0xE900000000000070 || (sub_252E37DB4() & 1) != 0)
      {
        v59 = 0;
        v60 = v129[18];
        v5 = *(v60 + 2);
        while (v5 != v59)
        {
          if (v59 >= *(v60 + 2))
          {
            goto LABEL_220;
          }

          LOBYTE(v130) = v59[v60 + 32];
          if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && v8 == v61)
          {

            goto LABEL_119;
          }

          ++v59;
          v4 = sub_252E37DB4();

          if (v4)
          {
            goto LABEL_119;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_2529F80DC(0, *(v60 + 2) + 1, 1, v60);
        }

        v73 = *(v60 + 2);
        v72 = *(v60 + 3);
        if (v73 >= v72 >> 1)
        {
          v60 = sub_2529F80DC((v72 > 1), v73 + 1, 1, v60);
        }

        *(v60 + 2) = v73 + 1;
        v60[v73 + 32] = 50;
        v129[18] = v60;
LABEL_119:
        v74 = 0;
        v75 = v129[24];
        v4 = *(v75 + 16);
        while (v4 != v74)
        {
          if (v74 >= *(v75 + 16))
          {
            goto LABEL_221;
          }

          LOBYTE(v130) = *(v75 + v74 + 32);
          if (StateSemantic.rawValue.getter() == 7368557 && v77 == 0xE300000000000000)
          {
          }

          ++v74;
          v8 = sub_252E37DB4();

          if (v8)
          {
            return result;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2529F82C4(0, *(v75 + 16) + 1, 1, v75);
          v75 = result;
        }

        v79 = *(v75 + 16);
        v78 = *(v75 + 24);
        if (v79 >= v78 >> 1)
        {
          result = sub_2529F82C4((v78 > 1), v79 + 1, 1, v75);
          v75 = result;
        }

        *(v75 + 16) = v79 + 1;
        *(v75 + v79 + 32) = 58;
        v129[24] = v75;
        return result;
      }
    }

LABEL_109:
    v64 = v129[12];
    v65 = MEMORY[0x277D84F90];
    v130 = MEMORY[0x277D84F90];
    v66 = *(v64 + 2);
    v67 = 0xD000000000000012;
    if (!v66)
    {
      break;
    }

    v68 = 0;
    while (v68 < *(v64 + 2))
    {
      v5 = (v68 + 1);
      v69 = *&v64[8 * v68 + 32];

      sub_25297AB2C(v70);
      v68 = v5;
      if (v66 == v5)
      {
        v71 = v130;
        goto LABEL_132;
      }
    }

LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    v5 = sub_2529F80DC(0, *(v5 + 2) + 1, 1, v5);
LABEL_80:
    v52 = *(v5 + 2);
    v51 = *(v5 + 3);
    if (v52 >= v51 >> 1)
    {
      v5 = sub_2529F80DC((v51 > 1), v52 + 1, 1, v5);
    }

    *(v5 + 2) = v52 + 1;
    v5[v52 + 32] = 50;
    v129[18] = v5;
  }

  v71 = MEMORY[0x277D84F90];
LABEL_132:
  v5 = sub_252C75848(v71);

  v80 = sub_252DA035C(0xD000000000000017, 0x8000000252E64CA0, v5);

  v130 = v65;
  v81 = *(v64 + 2);
  if (v81)
  {
    v82 = 0;
    while (v82 < *(v64 + 2))
    {
      v5 = (v82 + 1);
      v83 = *&v64[8 * v82 + 32];

      sub_25297AB2C(v84);
      v82 = v5;
      if (v81 == v5)
      {
        v65 = v130;
        goto LABEL_137;
      }
    }

    goto LABEL_217;
  }

LABEL_137:
  v85 = sub_252C75848(v65);

  v86 = sub_252DA035C(0xD000000000000015, 0x8000000252E64CC0, v85);

  v87 = v129;
  v88 = v129[24];

  v90 = sub_252CDF7C0(v89, v129, &unk_2864A0F58);

  if ((v90 & 1) == 0)
  {
    if (v80)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v86)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
LABEL_244:
          v88 = sub_2529F82C4(0, *(v88 + 16) + 1, 1, v88);
        }

        v93 = *(v88 + 16);
        v92 = *(v88 + 24);
        v94 = v93 + 1;
        if (v93 >= v92 >> 1)
        {
          v88 = sub_2529F82C4((v92 > 1), v93 + 1, 1, v88);
        }

        v95 = 59;
      }

      else
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v88 = sub_2529F82C4(0, *(v88 + 16) + 1, 1, v88);
        }

        v93 = *(v88 + 16);
        v97 = *(v88 + 24);
        v94 = v93 + 1;
        if (v93 >= v97 >> 1)
        {
          v88 = sub_2529F82C4((v97 > 1), v93 + 1, 1, v88);
        }

        v95 = 57;
      }

LABEL_155:
      *(v88 + 16) = v94;
      *(v88 + v93 + 32) = v95;
    }

    else if (v86)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_2529F82C4(0, *(v88 + 16) + 1, 1, v88);
      }

      v93 = *(v88 + 16);
      v96 = *(v88 + 24);
      v94 = v93 + 1;
      if (v93 >= v96 >> 1)
      {
        v88 = sub_2529F82C4((v96 > 1), v93 + 1, 1, v88);
      }

      v95 = 58;
      goto LABEL_155;
    }

    v98 = sub_252DF8E98(v88);

    v87[24] = v98;
  }

  v5 = 0;
  v101 = v87[18];
  v100 = v87 + 18;
  v99 = v101;
  v102 = *(v101 + 2);
  v129 = v100;
  while (v102 != v5)
  {
    if (v5 >= *(v99 + 2))
    {
      goto LABEL_226;
    }

    LOBYTE(v130) = v5[v99 + 32];
    if (AccessoryTypeSemantic.rawValue.getter() == v67 && v8 == v104)
    {

      goto LABEL_169;
    }

    ++v5;
    v103 = sub_252E37DB4();

    if (v103)
    {
      goto LABEL_169;
    }
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2529F80DC(0, *(v99 + 2) + 1, 1, v99);
    v99 = result;
  }

  v106 = *(v99 + 2);
  v105 = *(v99 + 3);
  if (v106 >= v105 >> 1)
  {
    result = sub_2529F80DC((v105 > 1), v106 + 1, 1, v99);
    v99 = result;
  }

  *(v99 + 2) = v106 + 1;
  v99[v106 + 32] = 50;
  *v100 = v99;
LABEL_169:
  v107 = 0;
  v5 = v99 + 32;
  v108 = *(v99 + 2);
  do
  {
    v110 = v107;
    if (v108 == v107)
    {
      break;
    }

    if (v107 >= *(v99 + 2))
    {
      goto LABEL_227;
    }

    LOBYTE(v130) = v5[v107];
    if (AccessoryTypeSemantic.rawValue.getter() == v67 && v8 == v111)
    {

      break;
    }

    ++v107;
    v109 = sub_252E37DB4();
  }

  while ((v109 & 1) == 0);
  v67 = 0;
  v112 = *(v99 + 2);
  while (v112 != v67)
  {
    if (v67 >= *(v99 + 2))
    {
      goto LABEL_228;
    }

    LOBYTE(v130) = v5[v67];
    if (AccessoryTypeSemantic.rawValue.getter() == v4 && v114 == 0xE800000000000000)
    {

LABEL_183:
      if (v108 == v110)
      {
        return result;
      }

      v115 = *(v99 + 2);
      if (!v115)
      {
        v4 = 0;
        v118 = 0;
        return sub_252D57CE0(v4, v118);
      }

      v4 = 0;
      while (v4 < *(v99 + 2))
      {
        LOBYTE(v130) = v5[v4];
        if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && v8 == v116)
        {

LABEL_194:
          v119 = *(v99 + 2);
          if (v119 - 1 == v4)
          {
            v118 = v4 + 1;
            return sub_252D57CE0(v4, v118);
          }

          v5 = (v4 + 33);
          v87 = v129;
          while (1)
          {
            v122 = v5 - 32;
            if ((v5 - 32) >= v119)
            {
              goto LABEL_230;
            }

            LOBYTE(v130) = v5[v99];
            v88 = &v130;
            if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && v8 == v123)
            {
            }

            else
            {
              v88 = v123;
              v124 = sub_252E37DB4();

              if ((v124 & 1) == 0)
              {
                if (v122 != v4)
                {
                  if ((v4 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_241;
                  }

                  v125 = *(v99 + 2);
                  if (v4 >= v125)
                  {
                    goto LABEL_242;
                  }

                  if (v122 >= v125)
                  {
                    goto LABEL_243;
                  }

                  v126 = v99[v4 + 32];
                  v88 = v5[v99];
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v99 = sub_252D57AD4(v99);
                  }

                  v99[v4 + 32] = v88;
                  v5[v99] = v126;
                  *v129 = v99;
                }

                ++v4;
              }
            }

            v119 = *(v99 + 2);
            v120 = v5 + 1;
            v121 = v5 - 31;
            ++v5;
            if (v121 == v119)
            {
              v118 = (v120 - 32);
              if ((v120 - 32) >= v4)
              {
                return sub_252D57CE0(v4, v118);
              }

              __break(1u);
LABEL_241:
              __break(1u);
LABEL_242:
              __break(1u);
LABEL_243:
              __break(1u);
              goto LABEL_244;
            }
          }
        }

        v117 = sub_252E37DB4();

        if (v117)
        {
          goto LABEL_194;
        }

        if (v115 == ++v4)
        {
          v4 = *(v99 + 2);
          v118 = v4;
          return sub_252D57CE0(v4, v118);
        }
      }

      goto LABEL_229;
    }

    ++v67;
    v113 = sub_252E37DB4();

    if (v113)
    {
      goto LABEL_183;
    }
  }

  return result;
}

uint64_t sub_252CE2134(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v132 = *(*v2 + 16);
  if (!v132)
  {

    v12 = MEMORY[0x277D84F90];
LABEL_221:
    *v134 = v12;
    return result;
  }

  v133 = v3 + 32;

  v6 = 0;
  v7 = 0;
  v8 = a2 == 0;
  v10 = a1 == 0x6F6D20746F626F72 && a2 == 0xE900000000000070;
  v128 = v10;
  if (a1 == 7368525 && a2 == 0xE300000000000000)
  {
    v8 = 1;
  }

  v130 = v8;
  v131 = a2 != 0;
  v12 = MEMORY[0x277D84F90];
  v129 = v3;
LABEL_15:
  v136 = v12;
  v138 = v7;
  memcpy(__dst, (v133 + 504 * v6), 0x1F8uLL);
  v13 = __dst[17];
  v14 = __dst[12];
  memcpy(__src, (v133 + 504 * v6), sizeof(__src));
  v15 = *(__dst[17] + 16);
  sub_2529353AC(__dst, v140);
  sub_2529353AC(__dst, v140);

  v17 = 0;
  v137 = v6 + 1;
  v135 = v15;
  while (1)
  {
    v19 = v17;
    if (v15 == v17)
    {

      goto LABEL_52;
    }

    if (v17 >= *(v13 + 16))
    {
      goto LABEL_224;
    }

    LOBYTE(v140[0]) = *(v13 + v17 + 32);
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v20)
    {
      break;
    }

    ++v17;
    v18 = sub_252E37DB4();

    if (v18)
    {
      goto LABEL_23;
    }
  }

LABEL_23:

  v21 = *(v13 + 16);
  if (!v21)
  {
    v22 = 0;
    v26 = 0;
    goto LABEL_51;
  }

  v22 = 0;
  v23 = 33;
  while (1)
  {
    if (v22 >= *(v13 + 16))
    {
      goto LABEL_231;
    }

    LOBYTE(v140[0]) = *(v13 + v22 + 32);
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v24)
    {
      break;
    }

    v25 = sub_252E37DB4();

    if (v25)
    {
      goto LABEL_33;
    }

    ++v22;
    ++v23;
    if (v21 == v22)
    {
      v22 = *(v13 + 16);
      v26 = v22;
      goto LABEL_51;
    }
  }

LABEL_33:
  v27 = *(v13 + 16);
  if (v27 - 1 == v22)
  {
    v26 = v22 + 1;
    goto LABEL_51;
  }

  v28 = v13;
  while (2)
  {
    v31 = v23 - 32;
    if (v23 - 32 >= v27)
    {
      goto LABEL_233;
    }

    LOBYTE(v140[0]) = *(v28 + v23);
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v32)
    {

      goto LABEL_37;
    }

    v33 = sub_252E37DB4();

    if (v33)
    {
LABEL_37:
      v27 = *(v28 + 16);
      v29 = v23 + 1;
      v30 = v23 - 31;
      ++v23;
      if (v30 != v27)
      {
        continue;
      }

      v26 = v29 - 32;
      if (v29 - 32 < v22)
      {
        goto LABEL_238;
      }

LABEL_51:
      sub_252D57CE0(v22, v26);
LABEL_52:
      v37 = *(v13 + 16);

      v38 = 0;
      while (1)
      {
        v40 = v38;
        if (v37 == v38)
        {
          break;
        }

        if (v38 >= *(v13 + 16))
        {
          goto LABEL_225;
        }

        LOBYTE(v140[0]) = *(v13 + v38 + 32);
        if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v41 == 0xE800000000000000)
        {

LABEL_60:

          v42 = __src[17];
          v43 = *(__src[17] + 16);
          if (v43)
          {
            v44 = 0;
            v45 = 33;
            while (1)
            {
              if (v44 >= *(v42 + 16))
              {
                goto LABEL_232;
              }

              LOBYTE(v140[0]) = *(v42 + v44 + 32);
              if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v46 == 0xE800000000000000)
              {
                break;
              }

              v47 = sub_252E37DB4();

              if (v47)
              {
                goto LABEL_70;
              }

              ++v44;
              ++v45;
              if (v43 == v44)
              {
                v44 = *(v42 + 16);
                v48 = v44;
                goto LABEL_87;
              }
            }

LABEL_70:
            v49 = *(v42 + 16);
            if (v49 - 1 == v44)
            {
              v48 = v44 + 1;
            }

            else
            {
              do
              {
                v52 = v45 - 32;
                if (v45 - 32 >= v49)
                {
                  goto LABEL_234;
                }

                LOBYTE(v140[0]) = *(v42 + v45);
                if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v53 == 0xE800000000000000)
                {
                }

                else
                {
                  v54 = sub_252E37DB4();

                  if ((v54 & 1) == 0)
                  {
                    if (v52 != v44)
                    {
                      if ((v44 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_243;
                      }

                      v55 = *(v42 + 16);
                      if (v44 >= v55)
                      {
                        goto LABEL_244;
                      }

                      if (v52 >= v55)
                      {
                        goto LABEL_245;
                      }

                      v56 = *(v42 + 32 + v44);
                      v57 = *(v42 + v45);
                      result = swift_isUniquelyReferenced_nonNull_native();
                      if ((result & 1) == 0)
                      {
                        result = sub_252D57AD4(v42);
                        v42 = result;
                      }

                      *(v42 + v44 + 32) = v57;
                      *(v42 + v45) = v56;
                      __src[17] = v42;
                    }

                    ++v44;
                  }
                }

                v49 = *(v42 + 16);
                v50 = v45 + 1;
                v51 = v45 - 31;
                ++v45;
              }

              while (v51 != v49);
              v48 = v50 - 32;
              if (v50 - 32 < v44)
              {
                goto LABEL_239;
              }
            }
          }

          else
          {
            v44 = 0;
            v48 = 0;
          }

LABEL_87:
          sub_252D57CE0(v44, v48);
          v3 = v129;
LABEL_88:
          v58 = v37 != v40 || v131;
          if (!v130)
          {
            if ((sub_252E37DB4() | v128))
            {
              v58 = 1;
            }

            else
            {
              v58 = (v37 != v40) | sub_252E37DB4();
            }
          }

          v59 = __dst[18];
          v60 = *(__dst[18] + 16);

          v61 = 0;
          while (v60 != v61)
          {
            if (v61 >= *(v59 + 16))
            {
              goto LABEL_226;
            }

            LOBYTE(v140[0]) = *(v59 + v61 + 32);
            if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v63)
            {

LABEL_103:

              if (v135 == v19)
              {
                v64 = __dst[24];
                if ((v58 & 1) == 0)
                {
LABEL_130:
                  v77 = MEMORY[0x277D84F90];
                  goto LABEL_131;
                }

LABEL_111:
                v67 = 0;
                v68 = *(v59 + 16);
                while (v68 != v67)
                {
                  if (v67 >= *(v59 + 16))
                  {
                    goto LABEL_229;
                  }

                  LOBYTE(v140[0]) = *(v59 + v67 + 32);
                  if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v70)
                  {

                    goto LABEL_123;
                  }

                  ++v67;
                  v69 = sub_252E37DB4();

                  if (v69)
                  {
                    goto LABEL_123;
                  }
                }

                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_2529F80DC(0, *(v59 + 16) + 1, 1, v59);
                  v59 = result;
                }

                v72 = *(v59 + 16);
                v71 = *(v59 + 24);
                if (v72 >= v71 >> 1)
                {
                  result = sub_2529F80DC((v71 > 1), v72 + 1, 1, v59);
                  v59 = result;
                }

                *(v59 + 16) = v72 + 1;
                *(v59 + v72 + 32) = 50;
                __src[18] = v59;
LABEL_123:
                v73 = 0;
                v74 = *(v64 + 2);
                while (v74 != v73)
                {
                  if (v73 >= *(v64 + 2))
                  {
                    goto LABEL_230;
                  }

                  LOBYTE(v140[0]) = v64[v73 + 32];
                  if (StateSemantic.rawValue.getter() == 7368557 && v76 == 0xE300000000000000)
                  {

                    goto LABEL_130;
                  }

                  ++v73;
                  v75 = sub_252E37DB4();

                  if (v75)
                  {
                    goto LABEL_130;
                  }
                }

                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_2529F82C4(0, *(v64 + 2) + 1, 1, v64);
                  v64 = result;
                }

                v77 = MEMORY[0x277D84F90];
                v100 = *(v64 + 2);
                v99 = *(v64 + 3);
                if (v100 >= v99 >> 1)
                {
                  result = sub_2529F82C4((v99 > 1), v100 + 1, 1, v64);
                  v64 = result;
                }

                *(v64 + 2) = v100 + 1;
                v64[v100 + 32] = 58;
                __src[24] = v64;
LABEL_131:
                v140[0] = v77;
                v78 = *(v14 + 16);
                if (v78)
                {
                  v79 = 0;
                  while (v79 < *(v14 + 16))
                  {
                    v80 = v79 + 1;
                    v81 = *(v14 + 32 + 8 * v79);

                    result = sub_25297AB2C(v82);
                    v79 = v80;
                    if (v78 == v80)
                    {
                      v83 = v140[0];
                      goto LABEL_137;
                    }
                  }

                  __break(1u);
LABEL_223:
                  __break(1u);
LABEL_224:
                  __break(1u);
LABEL_225:
                  __break(1u);
LABEL_226:
                  __break(1u);
LABEL_227:
                  __break(1u);
LABEL_228:
                  __break(1u);
LABEL_229:
                  __break(1u);
LABEL_230:
                  __break(1u);
LABEL_231:
                  __break(1u);
LABEL_232:
                  __break(1u);
LABEL_233:
                  __break(1u);
LABEL_234:
                  __break(1u);
LABEL_235:
                  __break(1u);
LABEL_236:
                  __break(1u);
LABEL_237:
                  __break(1u);
LABEL_238:
                  __break(1u);
LABEL_239:
                  __break(1u);
LABEL_240:
                  __break(1u);
                  goto LABEL_241;
                }

                v83 = v77;
LABEL_137:
                v84 = sub_252C75848(v83);

                v85 = sub_252DA035C(0xD000000000000017, 0x8000000252E64CA0, v84);

                v140[0] = v77;
                if (v78)
                {
                  v86 = 0;
                  while (v86 < *(v14 + 16))
                  {
                    v87 = v86 + 1;
                    v88 = *(v14 + 32 + 8 * v86);

                    result = sub_25297AB2C(v89);
                    v86 = v87;
                    if (v78 == v87)
                    {
                      v90 = v140[0];
                      goto LABEL_143;
                    }
                  }

                  goto LABEL_223;
                }

                v90 = v77;
LABEL_143:

                v91 = sub_252C75848(v90);

                v92 = sub_252DA035C(0xD000000000000015, 0x8000000252E64CC0, v91);

                v7 = v138;
                result = sub_252CDF7C0(v64, v134, &unk_2864A0F80);
                if ((result & 1) == 0)
                {
                  if (v85)
                  {
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    if (v92)
                    {
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        v64 = sub_2529F82C4(0, *(v64 + 2) + 1, 1, v64);
                      }

                      v95 = *(v64 + 2);
                      v94 = *(v64 + 3);
                      v96 = v95 + 1;
                      if (v95 >= v94 >> 1)
                      {
                        v64 = sub_2529F82C4((v94 > 1), v95 + 1, 1, v64);
                      }

                      v97 = 59;
                    }

                    else
                    {
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        v64 = sub_2529F82C4(0, *(v64 + 2) + 1, 1, v64);
                      }

                      v95 = *(v64 + 2);
                      v101 = *(v64 + 3);
                      v96 = v95 + 1;
                      if (v95 >= v101 >> 1)
                      {
                        v64 = sub_2529F82C4((v101 > 1), v95 + 1, 1, v64);
                      }

                      v97 = 57;
                    }

                    goto LABEL_167;
                  }

                  if (v92)
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v64 = sub_2529F82C4(0, *(v64 + 2) + 1, 1, v64);
                    }

                    v95 = *(v64 + 2);
                    v98 = *(v64 + 3);
                    v96 = v95 + 1;
                    if (v95 >= v98 >> 1)
                    {
                      v64 = sub_2529F82C4((v98 > 1), v95 + 1, 1, v64);
                    }

                    v97 = 58;
LABEL_167:
                    *(v64 + 2) = v96;
                    v64[v95 + 32] = v97;
                  }

                  v102 = sub_252DF8E98(v64);

                  __src[24] = v102;
                }

                v103 = 0;
                v104 = *(v59 + 16);
                do
                {
                  v106 = v103;
                  if (v104 == v103)
                  {
                    break;
                  }

                  if (v103 >= *(v59 + 16))
                  {
                    goto LABEL_227;
                  }

                  LOBYTE(v140[0]) = *(v59 + v103 + 32);
                  if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v107)
                  {

                    break;
                  }

                  ++v103;
                  v105 = sub_252E37DB4();
                }

                while ((v105 & 1) == 0);
                v108 = 0;
                while (v104 != v108)
                {
                  if (v108 >= *(v59 + 16))
                  {
                    goto LABEL_228;
                  }

                  LOBYTE(v140[0]) = *(v59 + v108 + 32);
                  if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v110 == 0xE800000000000000)
                  {

LABEL_183:
                    if (v104 != v106)
                    {
                      v111 = *(v59 + 16);
                      if (v111)
                      {
                        v112 = 0;
                        v113 = 33;
                        while (v112 < *(v59 + 16))
                        {
                          LOBYTE(v140[0]) = *(v59 + v112 + 32);
                          if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v114 == 0xE800000000000000)
                          {

LABEL_194:
                            v117 = *(v59 + 16);
                            if (v117 - 1 == v112)
                            {
                              v116 = v112 + 1;
                              goto LABEL_211;
                            }

                            while (1)
                            {
                              v120 = v113 - 32;
                              if (v113 - 32 >= v117)
                              {
                                goto LABEL_236;
                              }

                              LOBYTE(v140[0]) = *(v59 + v113);
                              if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v121 == 0xE800000000000000)
                              {
                              }

                              else
                              {
                                v122 = sub_252E37DB4();

                                if ((v122 & 1) == 0)
                                {
                                  if (v120 != v112)
                                  {
                                    if ((v112 & 0x8000000000000000) != 0)
                                    {
                                      goto LABEL_247;
                                    }

                                    v123 = *(v59 + 16);
                                    if (v112 >= v123)
                                    {
                                      goto LABEL_248;
                                    }

                                    if (v120 >= v123)
                                    {
                                      goto LABEL_249;
                                    }

                                    v124 = *(v59 + 32 + v112);
                                    v125 = *(v59 + v113);
                                    result = swift_isUniquelyReferenced_nonNull_native();
                                    if ((result & 1) == 0)
                                    {
                                      result = sub_252D57AD4(v59);
                                      v59 = result;
                                    }

                                    *(v59 + v112 + 32) = v125;
                                    *(v59 + v113) = v124;
                                    __src[18] = v59;
                                  }

                                  ++v112;
                                }
                              }

                              v117 = *(v59 + 16);
                              v118 = v113 + 1;
                              v119 = v113 - 31;
                              ++v113;
                              if (v119 == v117)
                              {
                                v116 = v118 - 32;
                                if (v118 - 32 < v112)
                                {
                                  goto LABEL_246;
                                }

                                goto LABEL_211;
                              }
                            }
                          }

                          v115 = sub_252E37DB4();

                          if (v115)
                          {
                            goto LABEL_194;
                          }

                          ++v112;
                          ++v113;
                          if (v111 == v112)
                          {
                            v112 = *(v59 + 16);
                            v116 = v112;
                            goto LABEL_211;
                          }
                        }

                        goto LABEL_235;
                      }

                      v112 = 0;
                      v116 = 0;
LABEL_211:
                      sub_252D57CE0(v112, v116);
                    }

                    break;
                  }

                  ++v108;
                  v109 = sub_252E37DB4();

                  if (v109)
                  {
                    goto LABEL_183;
                  }
                }

                memcpy(v140, __src, sizeof(v140));
                sub_2529353AC(v140, v139);
                v12 = v136;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v12 = sub_2529F7FB0(0, *(v136 + 2) + 1, 1, v136);
                }

                v6 = v137;
                v127 = *(v12 + 2);
                v126 = *(v12 + 3);
                if (v127 >= v126 >> 1)
                {
                  v12 = sub_2529F7FB0((v126 > 1), v127 + 1, 1, v12);
                }

                sub_252935408(__dst);
                *(v12 + 2) = v127 + 1;
                memcpy(&v12[504 * v127 + 32], v140, 0x1F8uLL);
                memcpy(v139, __src, 0x1F8uLL);
                result = sub_252935408(v139);
                if (v137 == v132)
                {
                  result = swift_bridgeObjectRelease_n();
                  goto LABEL_221;
                }

                if (v137 < *(v3 + 16))
                {
                  goto LABEL_15;
                }

                goto LABEL_237;
              }

LABEL_106:
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_2529F80DC(0, *(v59 + 16) + 1, 1, v59);
                v59 = result;
              }

              v66 = *(v59 + 16);
              v65 = *(v59 + 24);
              if (v66 >= v65 >> 1)
              {
                result = sub_2529F80DC((v65 > 1), v66 + 1, 1, v59);
                v59 = result;
              }

              *(v59 + 16) = v66 + 1;
              *(v59 + v66 + 32) = 50;
              __src[18] = v59;
              v64 = __dst[24];
              if ((v58 & 1) == 0)
              {
                goto LABEL_130;
              }

              goto LABEL_111;
            }

            ++v61;
            v62 = sub_252E37DB4();

            if (v62)
            {
              goto LABEL_103;
            }
          }

          goto LABEL_106;
        }

        ++v38;
        v39 = sub_252E37DB4();

        if (v39)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_88;
    }

    break;
  }

  if (v31 == v22)
  {
    goto LABEL_49;
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
    goto LABEL_240;
  }

  v34 = *(v28 + 16);
  if (v22 < v34)
  {
    if (v31 >= v34)
    {
      goto LABEL_242;
    }

    v35 = *(v28 + 32 + v22);
    v36 = *(v28 + v23);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252D57AD4(v28);
      v28 = result;
    }

    *(v28 + v22 + 32) = v36;
    *(v28 + v23) = v35;
    __src[17] = v28;
LABEL_49:
    ++v22;
    goto LABEL_37;
  }

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
LABEL_249:
  __break(1u);
  return result;
}

uint64_t sub_252CE3278(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544D90);
  sub_252E379F4();

  v13[0] = 0xD000000000000023;
  v13[1] = 0x8000000252E935A0;
  v7 = v2[24];
  v8 = MEMORY[0x2530AD730](v7, &type metadata for StateSemantic);
  MEMORY[0x2530AD570](v8);

  sub_252CC3D90(0xD000000000000023, 0x8000000252E935A0, 0xD000000000000077, 0x8000000252E92DE0);

  v13[0] = v7;

  sub_252CEA530(v13, a1, a2);

  v2[24] = v13[0];
  v9 = *v2;

  v11 = sub_252D077A0(v10, v3, a1, a2);
  swift_bridgeObjectRelease_n();

  *v3 = v11;
  return result;
}

uint64_t sub_252CE341C(uint64_t a1, int a2)
{
  LODWORD(v108) = a2;
  v3 = sub_252E34354();
  v113 = *(v3 - 8);
  v114 = v3;
  v4 = *(v113 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v109 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v106 = &v99 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v111 = &v99 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v107 = &v99 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v99 - v14;
  MEMORY[0x28223BE20](v13);
  v112 = &v99 - v16;
  v17 = sub_252E34284();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_252E36AB4();
  v117 = *(v22 - 8);
  v23 = *(v117 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F5A8 != -1)
  {
    swift_once();
  }

  v26 = qword_27F544F30;
  sub_252E36A94();
  sub_252E375D4();
  v115 = v26;
  v116 = v25;
  sub_252E36A84();
  sub_252E34264();
  if (v27 < 0.5)
  {
    if (qword_27F53F4F8 != -1)
    {
      swift_once();
    }

    v28 = sub_252E36AD4();
    __swift_project_value_buffer(v28, qword_27F544D90);
    v120[0] = 0;
    v120[1] = 0xE000000000000000;
    sub_252E379F4();

    v119[0] = 0xD00000000000002CLL;
    v119[1] = 0x8000000252E93720;
    v29 = *(v18 + 16);
    v29(v21, a1, v17);
    sub_252E344B4();
    v120[3] = v17;
    v120[4] = sub_252D07DD4(&qword_27F542FF8, MEMORY[0x277D5DB08]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v120);
    v29(boxed_opaque_existential_0, v21, v17);
    v31 = sub_252E344A4();
    v33 = v32;
    __swift_destroy_boxed_opaque_existential_1(v120);
    v120[0] = v31;
    v120[1] = v33;
    v34 = sub_252E37184();
    v36 = v35;
    (*(v18 + 8))(v21, v17);
    MEMORY[0x2530AD570](v34, v36);

    sub_252CC7784(v119[0], v119[1], 0, 0xD000000000000077, 0x8000000252E92DE0);

    goto LABEL_7;
  }

  v105 = v22;
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v38 = sub_252E36AD4();
  v39 = __swift_project_value_buffer(v38, qword_27F544D90);
  v120[0] = 0;
  v120[1] = 0xE000000000000000;
  sub_252E379F4();

  v104 = 0xD00000000000001ALL;
  v119[0] = 0xD00000000000001ALL;
  v119[1] = 0x8000000252E93640;
  v40 = *(v18 + 16);
  v40(v21, a1, v17);
  sub_252E344B4();
  v120[3] = v17;
  v120[4] = sub_252D07DD4(&qword_27F542FF8, MEMORY[0x277D5DB08]);
  v41 = __swift_allocate_boxed_opaque_existential_0(v120);
  v40(v41, v21, v17);
  v42 = sub_252E344A4();
  v44 = v43;
  __swift_destroy_boxed_opaque_existential_1(v120);
  v120[0] = v42;
  v120[1] = v44;
  v45 = sub_252E37184();
  v47 = v46;
  (*(v18 + 8))(v21, v17);
  MEMORY[0x2530AD570](v45, v47);

  sub_252CC3D90(v119[0], v119[1], 0xD000000000000077, 0x8000000252E92DE0);

  v48 = sub_252E34254();
  if (!*(v48 + 16))
  {

    sub_252CC4050(0xD00000000000001DLL, 0x8000000252E93700, 0xD000000000000077, 0x8000000252E92DE0, 0xD000000000000028, 0x8000000252E936D0, 63);
    goto LABEL_15;
  }

  v102 = "Checking for RVC: ";
  v103 = v39;
  v22 = v113;
  v49 = v114;
  v50 = (*(v113 + 80) + 32) & ~*(v113 + 80);
  v52 = (v113 + 16);
  v51 = *(v113 + 16);
  v51(v15, v48 + v50, v114);

  v53 = (v22 + 32);
  v54 = v112;
  v101 = *(v22 + 32);
  v101();
  if (sub_252E342E4())
  {
    (*(v22 + 8))(v54, v49);
    v110[9] = 0;
LABEL_15:
    sub_252E375C4();
LABEL_16:
    v37 = v116;
    sub_252E36A74();
    v22 = v105;
    return (*(v117 + 8))(v37, v22);
  }

  if (sub_252E342F4())
  {
    if ((v108 & 1) == 0)
    {
      (*(v22 + 8))(v54, v49);
      v110[9] = 1;
      goto LABEL_15;
    }

    v56 = sub_252E34254();
    v57 = v56;
    v109 = *(v56 + 16);
    if (v109)
    {
      v100 = v22 + 32;
      v58 = 0;
      v54 = (v56 + v50);
      v59 = (v22 + 8);
      v108 = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      while (v58 < *(v57 + 16))
      {
        v22 = v57;
        v49 = v114;
        v60 = v111;
        v51(v111, &v54[*(v113 + 72) * v58], v114);
        if (sub_252E342C4())
        {
          v54 = v112;
          (*v59)(v112, v49);

          v65 = v107;
          goto LABEL_43;
        }

        ++v58;
        v53 = *v59;
        (*v59)(v60, v49);
        v57 = v22;
        if (v109 == v58)
        {
          v49 = v114;
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_114;
    }

    v53 = *(v22 + 8);
LABEL_37:
    (v53)(v112, v49);
LABEL_41:

    goto LABEL_15;
  }

  if (sub_252E34304())
  {
    if ((v108 & 1) == 0)
    {
      (*(v22 + 8))(v54, v49);
      v110[9] = 2;
      sub_252E375C4();
      goto LABEL_16;
    }

    v61 = sub_252E34254();
    v62 = v61;
    v111 = *(v61 + 16);
    if (!v111)
    {
      v54 = *(v22 + 8);
LABEL_40:
      (v54)(v112, v114);
      goto LABEL_41;
    }

    v100 = v22 + 32;
    v63 = 0;
    v108 = v61 + v50;
    v53 = (v22 + 8);
    v107 = ((v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    while (1)
    {
      if (v63 >= *(v62 + 16))
      {
        __break(1u);
        goto LABEL_125;
      }

      v64 = v62;
      v60 = v109;
      v49 = v114;
      v51(v109, v108 + *(v22 + 72) * v63, v114);
      if (sub_252E342C4())
      {
        break;
      }

      ++v63;
      v54 = *v53;
      (*v53)(v60, v49);
      v62 = v64;
      if (v111 == v63)
      {
        goto LABEL_40;
      }
    }

    v54 = v112;
    (*v53)(v112, v49);

    v65 = v106;
LABEL_43:
    v66 = v101;
    (v101)(v65, v60, v49);
    (v66)(v54, v65, v49);
  }

  v67 = sub_252B08B50();
  if (v67 >> 62)
  {
    v96 = v67;
    v97 = sub_252E378C4();
    v67 = v96;
    v22 = v105;
    if (v97)
    {
LABEL_46:
      if ((v67 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](0);
      }

      else
      {
        if (!*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_148;
        }

        v68 = *(v67 + 32);
      }

      sub_252A3564C(&unk_2864A5FA8, v120);
      v69 = v120[0];
      v70 = v120[1];
      v71 = BYTE1(v120[1]);
      v72 = v120[2];
      v73 = v120[3];

      if (sub_252B05F4C(&unk_2864A5FD0, v72, v73))
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        sub_252CC3D90(0xD000000000000017, 0x8000000252E936B0, 0xD000000000000077, v102 | 0x8000000000000000);

        (*(v113 + 8))(v112, v114);
        sub_252E375C4();
        goto LABEL_8;
      }

      if (v72 >> 62)
      {
        v74 = sub_252E378C4();
      }

      else
      {
        v74 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v74)
      {

        swift_bridgeObjectRelease_n();
        v75 = 1;
      }

      else
      {
        if (v73 >> 62)
        {
          v76 = sub_252E378C4();
        }

        else
        {
          v76 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        swift_bridgeObjectRelease_n();
        v75 = v76 != 0;
      }

      v77 = v110;
      v110[386] = v75;
      *(v77 + 35) = v69;
      v77[288] = v70;
      v52 = v77;
      v77[289] = v71;

      sub_252E34DA4();

      sub_252938414(v123, v120, &qword_27F541E80, &qword_252E3DFA0);
      if (v120[3])
      {
        sub_252E34F84();
        v78 = swift_dynamicCast();
        v54 = v112;
        v53 = 0xD000000000000077;
        if (v78)
        {
          sub_252CE528C(v119[0]);
          goto LABEL_101;
        }
      }

      else
      {
        sub_25293847C(v120, &qword_27F541E80, &qword_252E3DFA0);
        v54 = v112;
        v53 = 0xD000000000000077;
      }

      sub_252938414(v123, v120, &qword_27F541E80, &qword_252E3DFA0);
      if (v120[3])
      {
        sub_252E35034();
        if (swift_dynamicCast())
        {
          sub_252CE56F0(v119[0]);
          goto LABEL_101;
        }
      }

      else
      {
        sub_25293847C(v120, &qword_27F541E80, &qword_252E3DFA0);
      }

      sub_252938414(v123, v120, &qword_27F541E80, &qword_252E3DFA0);
      if (v120[3])
      {
        sub_252E34FA4();
        if (swift_dynamicCast())
        {
          v79 = v119[0];
          v80 = 2;
          v52[208] = 2;
LABEL_73:
          v52[384] = v80;
          sub_252CE958C(v79);
          goto LABEL_101;
        }
      }

      else
      {
        sub_25293847C(v120, &qword_27F541E80, &qword_252E3DFA0);
      }

      sub_252938414(v123, v120, &qword_27F541E80, &qword_252E3DFA0);
      if (v120[3])
      {
        sub_252E34E44();
        if (swift_dynamicCast())
        {
          v79 = v119[0];
          v52[208] = 0;
          v80 = 3;
          goto LABEL_73;
        }
      }

      else
      {
        sub_25293847C(v120, &qword_27F541E80, &qword_252E3DFA0);
      }

      sub_252938414(v123, v120, &qword_27F541E80, &qword_252E3DFA0);
      if (v120[3])
      {
        sub_252E35164();
        if (swift_dynamicCast())
        {
          v81 = v119[0];
          v82 = 4;
LABEL_82:
          v52[384] = v82;
LABEL_87:
          sub_252CED5E8(v81);
          goto LABEL_101;
        }
      }

      else
      {
        sub_25293847C(v120, &qword_27F541E80, &qword_252E3DFA0);
      }

      sub_252938414(v123, v120, &qword_27F541E80, &qword_252E3DFA0);
      if (v120[3])
      {
        sub_252E35244();
        if (swift_dynamicCast())
        {
          v81 = v119[0];
          v52[24] = 0;
          v82 = 5;
          goto LABEL_82;
        }
      }

      else
      {
        sub_25293847C(v120, &qword_27F541E80, &qword_252E3DFA0);
      }

      sub_252938414(v123, v120, &qword_27F541E80, &qword_252E3DFA0);
      if (v120[3])
      {
        sub_252E35234();
        if (swift_dynamicCast())
        {
          v81 = v119[0];
          v52[24] = 1;
          v52[384] = 6;
          goto LABEL_87;
        }
      }

      else
      {
        sub_25293847C(v120, &qword_27F541E80, &qword_252E3DFA0);
      }

      sub_252938414(v123, v120, &qword_27F541E80, &qword_252E3DFA0);
      if (v120[3])
      {
        sub_252E354A4();
        if (swift_dynamicCast())
        {
          v83 = v119[0];
          v84 = 7;
LABEL_100:
          v52[384] = v84;
          sub_252CEF824(v83);
          goto LABEL_101;
        }
      }

      else
      {
        sub_25293847C(v120, &qword_27F541E80, &qword_252E3DFA0);
      }

      sub_252938414(v123, v120, &qword_27F541E80, &qword_252E3DFA0);
      if (v120[3])
      {
        sub_252E356E4();
        if (swift_dynamicCast())
        {
          v83 = v119[0];
          v52[24] = 0;
          v84 = 8;
          goto LABEL_100;
        }
      }

      else
      {
        sub_25293847C(v120, &qword_27F541E80, &qword_252E3DFA0);
      }

      sub_252938414(v123, v120, &qword_27F541E80, &qword_252E3DFA0);
      if (v120[3])
      {
        sub_252E356D4();
        if (swift_dynamicCast())
        {
          v83 = v119[0];
          v52[24] = 1;
          v84 = 9;
          goto LABEL_100;
        }
      }

      else
      {
        sub_25293847C(v120, &qword_27F541E80, &qword_252E3DFA0);
      }

      sub_252938414(v123, v120, &qword_27F541E80, &qword_252E3DFA0);
      if (!v120[3])
      {
LABEL_114:
        sub_25293847C(v120, &qword_27F541E80, &qword_252E3DFA0);
LABEL_115:
        sub_252938414(v123, v120, &qword_27F541E80, &qword_252E3DFA0);
        if (v120[3])
        {
          sub_252E35484();
          if (swift_dynamicCast())
          {
            sub_252CE6FFC(v119[0]);
            goto LABEL_101;
          }
        }

        else
        {
          sub_25293847C(v120, &qword_27F541E80, &qword_252E3DFA0);
        }

        sub_252938414(v123, v120, &qword_27F541E80, &qword_252E3DFA0);
        if (v120[3])
        {
          sub_252E35154();
          if (swift_dynamicCast())
          {
            v52[384] = 12;
            sub_252E34504();
            v90 = v120[0];
            if (v120[0])
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
              v91 = swift_allocObject();
              *(v91 + 16) = xmmword_252E3C130;
              *(v91 + 32) = v90;
              sub_252CDF97C(v91);

              swift_setDeallocating();
              v92 = *(v91 + 16);
              swift_arrayDestroy();
              swift_deallocClassInstance();
            }

            else
            {
            }

            v54 = v112;
            goto LABEL_102;
          }
        }

        else
        {
LABEL_125:
          sub_25293847C(v120, &qword_27F541E80, &qword_252E3DFA0);
        }

        sub_252938414(v123, v120, &qword_27F541E80, &qword_252E3DFA0);
        if (v120[3])
        {
          sub_252E34F94();
          if (swift_dynamicCast())
          {
            v52[384] = 13;
            sub_252CF32BC();
            goto LABEL_101;
          }
        }

        else
        {
          sub_25293847C(v120, &qword_27F541E80, &qword_252E3DFA0);
        }

        sub_252938414(v123, v120, &qword_27F541E80, &qword_252E3DFA0);
        if (v120[3])
        {
          sub_252E355C4();
          if (swift_dynamicCast())
          {
            v93 = v119[0];
            v52 = v110;
            v94 = 14;
            v95 = 5;
LABEL_143:
            sub_252CE7278(v93, v94, v95);
            goto LABEL_144;
          }
        }

        else
        {
          sub_25293847C(v120, &qword_27F541E80, &qword_252E3DFA0);
        }

        sub_252938414(v123, v120, &qword_27F541E80, &qword_252E3DFA0);
        if (v120[3])
        {
          sub_252E35364();
          if (swift_dynamicCast())
          {
            v52 = v110;
            sub_252CE70CC();
LABEL_144:

            v22 = v105;
            v54 = v112;
            goto LABEL_102;
          }
        }

        else
        {
          sub_25293847C(v120, &qword_27F541E80, &qword_252E3DFA0);
        }

        sub_252938414(v123, v120, &qword_27F541E80, &qword_252E3DFA0);
        if (v120[3])
        {
          sub_252E35494();
          if (swift_dynamicCast())
          {
            v93 = v119[0];
            v52 = v110;
            v94 = 15;
            v95 = 6;
            goto LABEL_143;
          }

LABEL_149:
          sub_252938414(v123, v120, &qword_27F541E80, &qword_252E3DFA0);
          if (v120[3])
          {
            sub_252E35254();
            if (swift_dynamicCast())
            {
              v52 = v110;
              sub_252CE7328();
              goto LABEL_144;
            }
          }

          else
          {
            sub_25293847C(v120, &qword_27F541E80, &qword_252E3DFA0);
          }

          sub_252938414(v123, v120, &qword_27F541E80, &qword_252E3DFA0);
          if (v120[3])
          {
            sub_252E35374();
            if (swift_dynamicCast())
            {
              v52 = v110;
              sub_252CE741C();
              goto LABEL_144;
            }
          }

          else
          {
            sub_25293847C(v120, &qword_27F541E80, &qword_252E3DFA0);
          }

          sub_252938414(v123, v121, &qword_27F541E80, &qword_252E3DFA0);
          if (v122)
          {
            sub_252E34E94();
            if (swift_dynamicCast())
            {
              v52 = v110;
              memcpy(v119, v110, 0x1F8uLL);
              memcpy(v118, v110, sizeof(v118));
              sub_2529353AC(v119, v120);
              v98 = sub_252CE7650();
              memcpy(v120, v118, sizeof(v120));
              sub_252935408(v120);

              *(v52 + 37) = v98;
              sub_252CE80E0();
              goto LABEL_144;
            }
          }

          else
          {
            sub_25293847C(v121, &qword_27F541E80, &qword_252E3DFA0);
          }

          sub_252938414(v123, v120, &qword_27F541E80, &qword_252E3DFA0);
          if (v120[3])
          {
            sub_252E34E34();
            if (swift_dynamicCast())
            {
              v52 = v110;
              sub_252CE87A4(v119[0]);
              goto LABEL_144;
            }
          }

          else
          {
            sub_25293847C(v120, &qword_27F541E80, &qword_252E3DFA0);
          }

          sub_252938414(v123, v120, &qword_27F541E80, &qword_252E3DFA0);
          if (v120[3])
          {
            sub_252E34EA4();
            if (swift_dynamicCast())
            {
              v52 = v110;
              sub_252CE8C8C(v119[0]);
              goto LABEL_144;
            }
          }

          else
          {
            sub_25293847C(v120, &qword_27F541E80, &qword_252E3DFA0);
          }

          sub_252938414(v123, v120, &qword_27F541E80, &qword_252E3DFA0);
          if (v120[3])
          {
            sub_252E34E04();
            if (swift_dynamicCast())
            {
              v52 = v110;
              sub_252CE9174();
              goto LABEL_144;
            }
          }

          else
          {
            sub_25293847C(v120, &qword_27F541E80, &qword_252E3DFA0);
          }

          v22 = v105;
          v54 = v112;
          v52 = v110;
          goto LABEL_102;
        }

LABEL_148:
        sub_25293847C(v120, &qword_27F541E80, &qword_252E3DFA0);
        goto LABEL_149;
      }

      sub_252E35174();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_115;
      }

      sub_252CE6314(v119[0]);
LABEL_101:

LABEL_102:
      if (*(*v52 + 16))
      {
        sub_252CC3D90((v53 - 9), 0x8000000252E93660, 0xD000000000000077, v102 | 0x8000000000000000);
        v85 = *(v52 + 47);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_2529F846C(0, *(v85 + 2) + 1, 1, v85);
        }

        v87 = *(v85 + 2);
        v86 = *(v85 + 3);
        if (v87 >= v86 >> 1)
        {
          v85 = sub_2529F846C((v86 > 1), v87 + 1, 1, v85);
        }

        *(v85 + 2) = v87 + 1;
        v85[v87 + 32] = 4;
        *(v52 + 47) = v85;
        v54 = v112;
      }

      sub_252CE941C(v88);

      v120[0] = 0;
      v120[1] = 0xE000000000000000;
      sub_252E379F4();

      v119[0] = v104;
      v119[1] = 0x8000000252E93690;
      memcpy(v120, v52, sizeof(v120));
      v89 = HomeAutomationIntent.description.getter();
      MEMORY[0x2530AD570](v89);

      sub_252CC3D90(v119[0], v119[1], 0xD000000000000077, v102 | 0x8000000000000000);

      sub_25293847C(v123, &qword_27F541E80, &qword_252E3DFA0);
      (*(v113 + 8))(v54, v114);
      goto LABEL_7;
    }
  }

  else
  {
    v22 = v105;
    if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }
  }

  sub_252CC4050(0xD000000000000012, 0x8000000252E870B0, 0xD000000000000077, v102 | 0x8000000000000000, 0xD000000000000028, 0x8000000252E936D0, 94);
  (*(v113 + 8))(v54, v49);
LABEL_7:
  sub_252E375C4();
LABEL_8:
  v37 = v116;
  sub_252E36A74();
  return (*(v117 + 8))(v37, v22);
}

uint64_t sub_252CE4F38(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545620, &qword_252E5B720);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252D0827C();
  sub_252E37F84();
  v11 = *v3;
  v18[15] = 0;
  sub_252E37D34();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v18[14] = 1;
  sub_252E37D34();
  v13 = v3[2];
  v14 = *(v3 + 24);
  v18[13] = 2;
  sub_252E37CC4();
  v16 = v3[4];
  v17 = v3[5];
  v18[12] = 3;
  sub_252E37C94();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_252CE50FC()
{
  v1 = 0x6B6F547472617473;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x65756C6176;
  }

  if (*v0)
  {
    v1 = 0x6E656B6F54646E65;
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

uint64_t sub_252CE5190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252D07EE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252CE51B8(uint64_t a1)
{
  v2 = sub_252D0827C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252CE51F4(uint64_t a1)
{
  v2 = sub_252D0827C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_252CE5230@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_252D08060(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_252CE528C(uint64_t a1)
{
  v2 = v1;
  *(v1 + 208) = 0;
  *(v1 + 384) = 0;
  sub_252CE958C(a1);
  v3 = *(v1 + 48);
  *&v43[32] = *(v1 + 32);
  *&v43[48] = v3;
  v4 = *(v1 + 80);
  *&v43[64] = *(v1 + 64);
  *&v43[80] = v4;
  v5 = *(v1 + 16);
  *v43 = *v1;
  *&v43[16] = v5;
  v6 = *(v1 + 96);
  *&v43[136] = *(v1 + 136);
  *&v43[152] = *(v1 + 152);
  *&v43[168] = *(v1 + 168);
  *&v43[104] = *(v1 + 104);
  *&v43[120] = *(v1 + 120);
  v7 = *(v1 + 184);
  v8 = *(v1 + 192);
  v9 = *(v1 + 344);
  *&v43[328] = *(v1 + 328);
  *&v43[344] = v9;
  *&v43[360] = *(v1 + 360);
  *&v43[372] = *(v1 + 372);
  v10 = *(v1 + 280);
  *&v43[264] = *(v1 + 264);
  *&v43[280] = v10;
  v11 = *(v1 + 312);
  *&v43[296] = *(v1 + 296);
  *&v43[312] = v11;
  *&v43[200] = *(v1 + 200);
  *&v43[216] = *(v1 + 216);
  *&v43[232] = *(v1 + 232);
  *&v43[248] = *(v1 + 248);
  v12 = *(v1 + 388);
  v44 = v12;
  *&v43[184] = v7;
  *&v43[96] = v6;
  *&v43[192] = v8;
  v43[388] = v12;
  v13 = *(v1 + 469);
  *&v43[453] = *(v1 + 453);
  *&v43[469] = v13;
  *&v43[485] = *(v1 + 485);
  v14 = *(v1 + 405);
  *&v43[389] = *(v1 + 389);
  *&v43[405] = v14;
  v15 = *(v1 + 437);
  *&v43[421] = *(v1 + 421);
  *&v43[437] = v15;
  *&v43[500] = *(v1 + 500);
  if (sub_252AB5058())
  {
    goto LABEL_15;
  }

  if (!*(v8 + 2))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2529F82C4(0, 1, 1, v8);
    }

    v17 = *(v8 + 2);
    v16 = *(v8 + 3);
    if (v17 >= v16 >> 1)
    {
      v8 = sub_2529F82C4((v16 > 1), v17 + 1, 1, v8);
    }

    *(v8 + 2) = v17 + 1;
    v8[v17 + 32] = 0;
    *(v1 + 192) = v8;
    if (v44)
    {
      goto LABEL_14;
    }

LABEL_10:

    v19 = sub_252C75848(v18);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_14:
  while (1)
  {
    sub_252CEAF6C(0, &qword_27F5428D8);
LABEL_15:
    memcpy(__dst, v2, sizeof(__dst));
    memcpy(v41, v2, sizeof(v41));
    sub_2529353AC(__dst, v43);
    v22 = sub_252CDFDD4();
    memcpy(v43, v41, sizeof(v43));
    result = sub_252935408(v43);
    if ((v22 & 1) == 0)
    {
      return result;
    }

    sub_252E352C4();
    if (v41[0])
    {
      v24 = sub_252E34D74();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    sub_252CE10F0(v24, v26);

    sub_252E352C4();
    if (v41[0])
    {
      v27 = sub_252E34D74();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v6 = 0x64656B636F64;
    v30 = v27;
    v19 = v2;
    sub_252CE2134(v30, v29);

    v31 = 0;
    v32 = v2[24];
    v33 = *(v32 + 16);
    v34 = &unk_2864A5C90;
    while (1)
    {
      if (v33 == v31)
      {
        v38 = &unk_2864A5CB8;
        goto LABEL_31;
      }

      if (v31 >= *(v32 + 16))
      {
        break;
      }

      LOBYTE(v41[0]) = *(v32 + 32 + v31);
      v36 = StateSemantic.rawValue.getter();
      v19 = v37;
      if (v36 == 0x64656B636F64 && v37 == 0xE600000000000000)
      {

        v38 = &unk_2864A5C68;
        v34 = &unk_2864A5C40;
LABEL_31:
        v39 = sub_2529FC02C(v34);
        v40 = sub_2529FC02C(v38);
        sub_252CE3278(v39, v40);
      }

      ++v31;
      v35 = sub_252E37DB4();

      if (v35)
      {
        v34 = &unk_2864A5C40;
        v38 = &unk_2864A5C68;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_34:
    v6 = sub_2529F8278(0, *(v6 + 16) + 1, 1, v6);
LABEL_11:
    v21 = *(v6 + 16);
    v20 = *(v6 + 24);
    if (v21 >= v20 >> 1)
    {
      v6 = sub_2529F8278((v20 > 1), v21 + 1, 1, v6);
    }

    *(v6 + 16) = v21 + 1;
    *(v6 + 8 * v21 + 32) = v19;
    v2[12] = v6;
  }
}

uint64_t sub_252CE56F0(uint64_t a1)
{
  v2 = v1;
  *(v1 + 208) = 0;
  *(v1 + 384) = 1;
  sub_252CE958C(a1);
  v3 = *(v1 + 48);
  *&v96[32] = *(v1 + 32);
  *&v96[48] = v3;
  v4 = *(v1 + 80);
  *&v96[64] = *(v1 + 64);
  *&v96[80] = v4;
  v5 = *(v1 + 16);
  *v96 = *v1;
  *&v96[16] = v5;
  v6 = *(v1 + 96);
  *&v96[136] = *(v1 + 136);
  *&v96[152] = *(v1 + 152);
  *&v96[168] = *(v1 + 168);
  *&v96[104] = *(v1 + 104);
  *&v96[120] = *(v1 + 120);
  v7 = *(v1 + 184);
  v8 = *(v1 + 192);
  v9 = *(v1 + 344);
  *&v96[328] = *(v1 + 328);
  *&v96[344] = v9;
  *&v96[360] = *(v1 + 360);
  *&v96[372] = *(v1 + 372);
  v10 = *(v1 + 280);
  *&v96[264] = *(v1 + 264);
  *&v96[280] = v10;
  v11 = *(v1 + 312);
  *&v96[296] = *(v1 + 296);
  *&v96[312] = v11;
  *&v96[200] = *(v1 + 200);
  *&v96[216] = *(v1 + 216);
  *&v96[232] = *(v1 + 232);
  *&v96[248] = *(v1 + 248);
  v12 = *(v1 + 388);
  v97 = v12;
  *&v96[184] = v7;
  *&v96[96] = v6;
  *&v96[192] = v8;
  v96[388] = v12;
  v13 = *(v1 + 469);
  *&v96[453] = *(v1 + 453);
  *&v96[469] = v13;
  *&v96[485] = *(v1 + 485);
  v14 = *(v1 + 405);
  *&v96[389] = *(v1 + 389);
  *&v96[405] = v14;
  v15 = *(v1 + 437);
  *&v96[421] = *(v1 + 421);
  *&v96[437] = v15;
  *&v96[500] = *(v1 + 500);
  if ((sub_252AB5058() & 1) == 0)
  {
    if (*(v8 + 2))
    {
      if (v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_2529F82C4(0, 1, 1, v8);
      }

      v17 = *(v8 + 2);
      v16 = *(v8 + 3);
      if (v17 >= v16 >> 1)
      {
        v8 = sub_2529F82C4((v16 > 1), v17 + 1, 1, v8);
      }

      *(v8 + 2) = v17 + 1;
      v8[v17 + 32] = 1;
      *(v1 + 192) = v8;
      if (v97)
      {
        goto LABEL_14;
      }
    }

    v19 = sub_252C75848(v18);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_11;
  }

LABEL_15:
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(__src, v2, sizeof(__src));
  sub_2529353AC(__dst, v96);
  v22 = sub_252CDFDD4();
  memcpy(v96, __src, sizeof(v96));
  result = sub_252935408(v96);
  if (v22)
  {
    v6 = __dst[24];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_136;
    }

    while (1)
    {
      v25 = *(v6 + 16);
      v24 = *(v6 + 24);
      if (v25 >= v24 >> 1)
      {
        v6 = sub_2529F82C4((v24 > 1), v25 + 1, 1, v6);
      }

      v26 = __dst[18];
      *(v6 + 16) = v25 + 1;
      *(v6 + v25 + 32) = 1;
      v2[24] = v6;
      if (!sub_2529A78C8(50, v26))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_2529F80DC(0, *(v26 + 2) + 1, 1, v26);
        }

        v28 = *(v26 + 2);
        v27 = *(v26 + 3);
        if (v28 >= v27 >> 1)
        {
          v26 = sub_2529F80DC((v27 > 1), v28 + 1, 1, v26);
        }

        *(v26 + 2) = v28 + 1;
        v26[v28 + 32] = 50;
        v2[18] = v26;
      }

      v29 = __dst[17];
      v30 = *(__dst[17] + 16);
      if (!v30)
      {
        v32 = 0;
        v38 = 0;
        goto LABEL_60;
      }

      v31 = v2;
      v32 = 0;
      v6 = __dst[17] + 32;
      v2 = 0x8000000252E65350;
      while (1)
      {
        if (v32 >= *(v29 + 2))
        {
          goto LABEL_132;
        }

        v33 = *(v6 + v32);
        LOBYTE(__src[0]) = v33;
        if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v34)
        {
          break;
        }

        v35 = sub_252E37DB4();

        if (v35)
        {
          goto LABEL_38;
        }

        LOBYTE(__src[0]) = v33;
        if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v36 == 0xE800000000000000)
        {
          break;
        }

        v37 = sub_252E37DB4();

        if (v37)
        {
          goto LABEL_38;
        }

        if (v30 == ++v32)
        {
          v32 = *(v29 + 2);
          v38 = v32;
          goto LABEL_40;
        }
      }

LABEL_38:
      v39 = *(v29 + 2);
      if (v39 - 1 != v32)
      {
        break;
      }

      v38 = v32 + 1;
LABEL_40:
      v2 = v31;
LABEL_60:
      v50 = __dst[0];
      sub_252D57CE0(v32, v38);
      v6 = *(v50 + 16);
      if (!v6)
      {

        v52 = MEMORY[0x277D84F90];
LABEL_123:
        *v2 = v52;
        v85 = sub_2529FC02C(&unk_2864A5CE0);
        v86 = sub_2529FC02C(&unk_2864A5D08);
        sub_252CE3278(v85, v86);
      }

      v87 = v2;
      v93 = MEMORY[0x277D84F90];
      sub_2529AA480(0, v6, 0);
      if (!*(v50 + 16))
      {
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      v51 = 0;
      v89 = v50;
      v90 = v50 + 32;
      v52 = v93;
      v2 = 0x8000000252E65350;
      v53 = 1;
      v88 = v6;
      while (2)
      {
        v54 = (v90 + 504 * v51);
        v51 = v53;
        memcpy(__src, v54, sizeof(__src));
        v55 = __src[24];
        v56 = __src[18];
        memcpy(v92, v54, sizeof(v92));
        sub_2529353AC(__src, v91);
        sub_2529353AC(__src, v91);

        LOBYTE(v54) = sub_2529A78B0(1, v55);

        if ((v54 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = sub_2529F82C4(0, *(v55 + 2) + 1, 1, v55);
          }

          v58 = *(v55 + 2);
          v57 = *(v55 + 3);
          if (v58 >= v57 >> 1)
          {
            v55 = sub_2529F82C4((v57 > 1), v58 + 1, 1, v55);
          }

          *(v55 + 2) = v58 + 1;
          v55[v58 + 32] = 1;
          v92[24] = v55;
        }

        v59 = sub_2529A78C8(50, v56);

        if (!v59)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = sub_2529F80DC(0, *(v56 + 2) + 1, 1, v56);
          }

          v61 = *(v56 + 2);
          v60 = *(v56 + 3);
          if (v61 >= v60 >> 1)
          {
            v56 = sub_2529F80DC((v60 > 1), v61 + 1, 1, v56);
          }

          *(v56 + 2) = v61 + 1;
          v56[v61 + 32] = 50;
          v92[18] = v56;
        }

        v62 = __src[17];
        v6 = *(__src[17] + 16);
        if (!v6)
        {
          v70 = 0;
          v63 = 0;
          goto LABEL_109;
        }

        v63 = 0;
        v64 = 33;
        while (1)
        {
          if (v63 >= *(v62 + 2))
          {
LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

          v65 = v62[v63 + 32];
          v91[0] = v65;
          if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v66)
          {
            break;
          }

          v67 = sub_252E37DB4();

          if (v67)
          {
            goto LABEL_88;
          }

          v91[0] = v65;
          if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v68 == 0xE800000000000000)
          {
            break;
          }

          v69 = sub_252E37DB4();

          if (v69)
          {
            goto LABEL_88;
          }

          ++v63;
          ++v64;
          if (v6 == v63)
          {
            v70 = *(v62 + 2);
            v63 = v70;
            goto LABEL_109;
          }
        }

LABEL_88:
        v71 = *(v62 + 2);
        if (v71 - 1 == v63)
        {
          v70 = v63 + 1;
          goto LABEL_109;
        }

        do
        {
          v6 = v64 - 32;
          if (v64 - 32 >= v71)
          {
            __break(1u);
            goto LABEL_126;
          }

          v74 = v62[v64];
          v91[0] = v74;
          if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v75)
          {
LABEL_90:

            goto LABEL_91;
          }

          v76 = sub_252E37DB4();

          if ((v76 & 1) == 0)
          {
            v91[0] = v74;
            if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v77 == 0xE800000000000000)
            {
              goto LABEL_90;
            }

            v78 = sub_252E37DB4();

            if ((v78 & 1) == 0)
            {
              if (v6 != v63)
              {
                if (v63 < 0)
                {
                  goto LABEL_133;
                }

                v79 = *(v62 + 2);
                if (v63 >= v79)
                {
                  goto LABEL_134;
                }

                if (v6 >= v79)
                {
                  goto LABEL_135;
                }

                v80 = v62[v63 + 32];
                v6 = v62[v64];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v62 = sub_252D57AD4(v62);
                }

                v62[v63 + 32] = v6;
                v62[v64] = v80;
              }

              ++v63;
            }
          }

LABEL_91:
          v71 = *(v62 + 2);
          v72 = v64 + 1;
          v73 = v64 - 31;
          ++v64;
        }

        while (v73 != v71);
        v70 = v72 - 32;
        if (v72 - 32 < v63)
        {
          goto LABEL_128;
        }

        if ((v63 & 0x8000000000000000) == 0)
        {
LABEL_109:
          if (__OFADD__(v70, v63 - v70))
          {
            goto LABEL_130;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v92[17] = v62;
          if (!isUniquelyReferenced_nonNull_native || v63 > *(v62 + 3) >> 1)
          {
            if (v70 <= v63)
            {
              v82 = v63;
            }

            else
            {
              v82 = v70;
            }

            v62 = sub_2529F80DC(isUniquelyReferenced_nonNull_native, v82, 1, v62);
            v92[17] = v62;
          }

          sub_252B7DA90(v63, v70, 0);
          sub_252935408(__src);
          v92[17] = v62;
          memcpy(v91, v92, sizeof(v91));
          v93 = v52;
          v84 = *(v52 + 16);
          v83 = *(v52 + 24);
          if (v84 >= v83 >> 1)
          {
            sub_2529AA480((v83 > 1), v84 + 1, 1);
            v52 = v93;
          }

          *(v52 + 16) = v84 + 1;
          memcpy((v52 + 504 * v84 + 32), v91, 0x1F8uLL);
          v6 = v88;
          if (v51 == v88)
          {

            v2 = v87;
            goto LABEL_123;
          }

          v53 = v51 + 1;
          if (v51 >= *(v89 + 16))
          {
            goto LABEL_127;
          }

          continue;
        }

        break;
      }

LABEL_129:
      __break(1u);
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
      v6 = sub_2529F82C4(0, *(v6 + 16) + 1, 1, v6);
    }

    v40 = v32 + 33;
    while (1)
    {
      v6 = v40 - 32;
      if (v40 - 32 >= v39)
      {
        goto LABEL_131;
      }

      v43 = v29[v40];
      LOBYTE(__src[0]) = v43;
      v19 = __src;
      if (AccessoryTypeSemantic.rawValue.getter() != 0xD000000000000012 || 0x8000000252E65350 != v44)
      {
        v19 = v44;
        v45 = sub_252E37DB4();

        if (v45)
        {
          goto LABEL_43;
        }

        LOBYTE(__src[0]) = v43;
        v19 = __src;
        if (AccessoryTypeSemantic.rawValue.getter() != 0x706F4D746F626F72 || v46 != 0xE800000000000000)
        {
          v19 = v46;
          v47 = sub_252E37DB4();

          if ((v47 & 1) == 0)
          {
            if (v6 != v32)
            {
              if ((v32 & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_140:
                __break(1u);
LABEL_141:
                __break(1u);
                return result;
              }

              v48 = *(v29 + 2);
              if (v32 >= v48)
              {
                goto LABEL_140;
              }

              if (v6 >= v48)
              {
                goto LABEL_141;
              }

              v49 = v29[v32 + 32];
              v19 = v29[v40];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v29 = sub_252D57AD4(v29);
              }

              v29[v32 + 32] = v19;
              v29[v40] = v49;
              v31[17] = v29;
            }

            ++v32;
          }

          goto LABEL_43;
        }
      }

LABEL_43:
      v39 = *(v29 + 2);
      v41 = v40 + 1;
      v42 = v40 - 31;
      ++v40;
      if (v42 == v39)
      {
        v38 = v41 - 32;
        v2 = v31;
        if ((v41 - 32) >= v32)
        {
          goto LABEL_60;
        }

        __break(1u);
LABEL_138:
        v6 = sub_2529F8278(0, *(v6 + 16) + 1, 1, v6);
LABEL_11:
        v21 = *(v6 + 16);
        v20 = *(v6 + 24);
        if (v21 >= v20 >> 1)
        {
          v6 = sub_2529F8278((v20 > 1), v21 + 1, 1, v6);
        }

        *(v6 + 16) = v21 + 1;
        *(v6 + 8 * v21 + 32) = v19;
        v2[12] = v6;
LABEL_14:
        sub_252CEAF6C(1, &qword_27F5428E0);
        goto LABEL_15;
      }
    }
  }

  return result;
}

uint64_t sub_252CE6314(uint64_t a1)
{
  v76 = sub_252E36CA4();
  v3 = *(v76 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v76);
  v75 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_252E36D04();
  v6 = *(v74 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v74);
  v79 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B08, &qword_252E41A00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v63 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B10, &qword_252E5B650);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v67 = &v63 - v15;
  sub_252CF0EC8(a1);
  result = sub_252CF1B58();
  v17 = *v1;
  v18 = *(*v1 + 16);
  if (v18)
  {
    v64 = v12;
    v66 = v1;
    v72 = &v111[1];
    v73 = 0x8000000252E72DC0;
    v70 = (v6 + 8);
    v71 = (v3 + 8);
    v19 = v110;
    v81 = v18 - 1;
    v69 = xmmword_252E41C50;
    v65 = v17;
    v83 = MEMORY[0x277D84F90];
    v68 = v110;
    while (1)
    {
      memcpy(v142, (v17 + 32), 0x1F8uLL);
      v141 = *(v17 + 32);
      v20 = *(v17 + 200);
      v137 = *(v17 + 184);
      v138 = v20;
      v139 = *(v17 + 216);
      v21 = *(v17 + 136);
      v133 = *(v17 + 120);
      v134 = v21;
      v22 = *(v17 + 168);
      v135 = *(v17 + 152);
      v136 = v22;
      v23 = *(v17 + 72);
      v129 = *(v17 + 56);
      v130 = v23;
      v24 = *(v17 + 104);
      v131 = *(v17 + 88);
      v132 = v24;
      v25 = *(v17 + 353);
      v26 = *(v17 + 385);
      v127 = *(v17 + 369);
      v128[0] = v26;
      *(v128 + 15) = *(v17 + 400);
      v27 = *(v17 + 289);
      v28 = *(v17 + 321);
      v29 = *(v17 + 337);
      v123 = *(v17 + 305);
      v124 = v28;
      v126 = v25;
      v125 = v29;
      v30 = *(v17 + 257);
      v31 = *(v17 + 273);
      v119 = *(v17 + 241);
      v120 = v30;
      v32 = v142[2];
      v140 = *(v17 + 232);
      v122 = v27;
      v121 = v31;
      v33 = LOBYTE(v142[48]);
      v34 = *(v17 + 497);
      v116 = *(v17 + 481);
      v117 = v34;
      v118[0] = *(v17 + 513);
      *(v118 + 15) = *(v17 + 528);
      v35 = *(v17 + 433);
      v112 = *(v17 + 417);
      v113 = v35;
      v36 = *(v17 + 465);
      v114 = *(v17 + 449);
      v115 = v36;
      v111[0] = *(v17 + 32);
      *(&v111[9] + 8) = *(v17 + 184);
      *(&v111[10] + 8) = *(v17 + 200);
      *(&v111[11] + 8) = *(v17 + 216);
      *(&v111[12] + 1) = *(v17 + 232);
      *(&v111[5] + 8) = *(v17 + 120);
      *(&v111[6] + 8) = *(v17 + 136);
      *(&v111[7] + 8) = *(v17 + 152);
      *(&v111[8] + 8) = *(v17 + 168);
      *(&v111[1] + 8) = *(v17 + 56);
      *(&v111[2] + 8) = *(v17 + 72);
      *(&v111[3] + 8) = *(v17 + 88);
      *(&v111[4] + 8) = *(v17 + 104);
      *&v111[1] = v142[2];
      LODWORD(v80) = LOBYTE(v142[26]);
      LOBYTE(v111[13]) = v142[26];
      *(&v111[20] + 1) = *(v17 + 353);
      *(&v111[21] + 1) = *(v17 + 369);
      *(&v111[22] + 1) = *(v17 + 385);
      v111[23] = *(v17 + 400);
      *(&v111[16] + 1) = *(v17 + 289);
      *(&v111[17] + 1) = *(v17 + 305);
      *(&v111[18] + 1) = *(v17 + 321);
      *(&v111[19] + 1) = *(v17 + 337);
      *(&v111[13] + 1) = *(v17 + 241);
      *(&v111[14] + 1) = *(v17 + 257);
      *(&v111[15] + 1) = *(v17 + 273);
      LOBYTE(v111[24]) = v142[48];
      *(&v111[28] + 1) = *(v17 + 481);
      *(&v111[29] + 1) = *(v17 + 497);
      *(&v111[30] + 1) = *(v17 + 513);
      *&v111[31] = *(v17 + 528);
      *(&v111[24] + 1) = *(v17 + 417);
      *(&v111[25] + 1) = *(v17 + 433);
      *(&v111[26] + 1) = *(v17 + 449);
      *(&v111[27] + 1) = *(v17 + 465);
      sub_2529353AC(v142, &v84);
      sub_2529353AC(v142, &v84);
      v37 = sub_252A15CE0();
      v82 = v32;
      if (v37)
      {
        v38 = 3;
        v39 = v32;
        goto LABEL_30;
      }

      v39 = v32;
      if (!v32)
      {
        break;
      }

      LODWORD(v78) = v33;
      if (sub_252E35DA4() || sub_252E35DB4())
      {
        goto LABEL_8;
      }

      v40 = v67;
      sub_252E35D44();
      v41 = sub_252E35C84();
      v42 = (*(*(v41 - 8) + 48))(v40, 1, v41);
      sub_25293847C(v40, &qword_27F541B10, &qword_252E5B650);
      if (v42 != 1)
      {
        goto LABEL_9;
      }

      if (sub_252E35D84())
      {
LABEL_8:

LABEL_9:
        v38 = 3;
LABEL_29:
        v39 = v82;
        goto LABEL_30;
      }

      v43 = v64;
      sub_252E35D64();
      v44 = sub_252E35D54();
      v45 = (*(*(v44 - 8) + 48))(v43, 1, v44);
      sub_25293847C(v43, &qword_27F541B08, &qword_252E41A00);
      if (v45 != 1 || !sub_252E35D34())
      {
        goto LABEL_9;
      }

      v46 = sub_252B085DC();

      v39 = v82;
      LOBYTE(v33) = v78;
      if (v46)
      {
        break;
      }

      v38 = 3;
LABEL_30:
      v111[0] = v141;
      *&v111[1] = v39;
      *(&v111[9] + 8) = v137;
      *(&v111[10] + 8) = v138;
      *(&v111[11] + 8) = v139;
      *(&v111[12] + 1) = v140;
      *(&v111[5] + 8) = v133;
      *(&v111[6] + 8) = v134;
      *(&v111[7] + 8) = v135;
      *(&v111[8] + 8) = v136;
      *(&v111[1] + 8) = v129;
      *(&v111[2] + 8) = v130;
      *(&v111[3] + 8) = v131;
      *(&v111[4] + 8) = v132;
      LOBYTE(v111[13]) = v38;
      *(&v111[21] + 1) = v127;
      *(&v111[22] + 1) = v128[0];
      v111[23] = *(v128 + 15);
      *(&v111[17] + 1) = v123;
      *(&v111[18] + 1) = v124;
      *(&v111[19] + 1) = v125;
      *(&v111[20] + 1) = v126;
      *(&v111[13] + 1) = v119;
      *(&v111[14] + 1) = v120;
      *(&v111[15] + 1) = v121;
      *(&v111[16] + 1) = v122;
      LOBYTE(v111[24]) = 10;
      *(&v111[28] + 1) = v116;
      *(&v111[29] + 1) = v117;
      *(&v111[30] + 1) = v118[0];
      *&v111[31] = *(v118 + 15);
      *(&v111[24] + 1) = v112;
      *(&v111[25] + 1) = v113;
      *(&v111[26] + 1) = v114;
      *(&v111[27] + 1) = v115;
      sub_2529353AC(v111, &v84);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = sub_2529F7FB0(0, *(v83 + 2) + 1, 1, v83);
      }

      v58 = *(v83 + 2);
      v57 = *(v83 + 3);
      if (v58 >= v57 >> 1)
      {
        v83 = sub_2529F7FB0((v57 > 1), v58 + 1, 1, v83);
      }

      sub_252935408(v142);
      v59 = v83;
      *(v83 + 2) = v58 + 1;
      memcpy(&v59[504 * v58 + 32], v111, 0x1F8uLL);
      v84 = v141;
      v85 = v82;
      v94 = v137;
      v95 = v138;
      v96 = v139;
      v97 = v140;
      v90 = v133;
      v91 = v134;
      v92 = v135;
      v93 = v136;
      v86 = v129;
      v87 = v130;
      v88 = v131;
      v89 = v132;
      v98 = v38;
      v107 = v127;
      *v108 = v128[0];
      *&v108[15] = *(v128 + 15);
      v103 = v123;
      v104 = v124;
      v105 = v125;
      v106 = v126;
      v99 = v119;
      v100 = v120;
      v101 = v121;
      v102 = v122;
      v109 = 10;
      v60 = v117;
      *(v19 + 4) = v116;
      *(v19 + 5) = v60;
      *(v19 + 6) = v118[0];
      *(v19 + 111) = *(v118 + 15);
      v61 = v113;
      *v19 = v112;
      *(v19 + 1) = v61;
      v62 = v115;
      *(v19 + 2) = v114;
      *(v19 + 3) = v62;
      sub_252935408(&v84);
      if (!v81)
      {

        *v66 = v83;
        return result;
      }

      --v81;
      v17 += 504;
    }

    v111[0] = v141;
    *(&v111[9] + 8) = v137;
    *(&v111[10] + 8) = v138;
    *(&v111[11] + 8) = v139;
    *(&v111[12] + 1) = v140;
    *(&v111[5] + 8) = v133;
    *(&v111[6] + 8) = v134;
    *(&v111[7] + 8) = v135;
    *(&v111[8] + 8) = v136;
    *(&v111[1] + 8) = v129;
    *(&v111[2] + 8) = v130;
    *(&v111[3] + 8) = v131;
    *(&v111[4] + 8) = v132;
    *&v111[1] = v39;
    LOBYTE(v111[13]) = v80;
    *(&v111[21] + 1) = v127;
    *(&v111[22] + 1) = v128[0];
    v111[23] = *(v128 + 15);
    *(&v111[17] + 1) = v123;
    *(&v111[18] + 1) = v124;
    *(&v111[19] + 1) = v125;
    *(&v111[20] + 1) = v126;
    *(&v111[13] + 1) = v119;
    *(&v111[14] + 1) = v120;
    *(&v111[15] + 1) = v121;
    *(&v111[16] + 1) = v122;
    LOBYTE(v111[24]) = v33;
    *(&v111[28] + 1) = v116;
    *(&v111[29] + 1) = v117;
    *(&v111[30] + 1) = v118[0];
    *&v111[31] = *(v118 + 15);
    *(&v111[24] + 1) = v112;
    *(&v111[25] + 1) = v113;
    *(&v111[26] + 1) = v114;
    *(&v111[27] + 1) = v115;
    if ((sub_252AB5058() & 1) == 0)
    {
      goto LABEL_28;
    }

    if (qword_2814B0DB8 != -1)
    {
      swift_once();
    }

    v80 = qword_2814B1358;
    sub_252E37604();
    v47 = off_2814B0DC0;
    if (off_2814B0DC0)
    {
    }

    else
    {
      type metadata accessor for LifeCycleManager();
      swift_allocObject();
      v47 = sub_252D7EAE8();
      off_2814B0DC0 = v47;

      sub_252D7E92C();
    }

    v78 = v47;
    sub_252E37614();
    v80 = *(v47 + 2);
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    *(v48 + 24) = v69;
    *(v48 + 40) = v73;
    *(v48 + 48) = sub_252979724;
    *(v48 + 56) = 0;
    *&v111[2] = sub_252D083EC;
    *(&v111[2] + 1) = v48;
    *&v111[0] = MEMORY[0x277D85DD0];
    *(&v111[0] + 1) = 1107296256;
    *&v111[1] = sub_252AD686C;
    *(&v111[1] + 1) = &block_descriptor_29;
    v49 = _Block_copy(v111);

    sub_252E36CD4();
    *&v84 = MEMORY[0x277D84F90];
    v77 = sub_252D07DD4(qword_2814B0298, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
    sub_2529905D0();
    v50 = v75;
    v51 = v76;
    sub_252E37824();
    MEMORY[0x2530ADA30](0, v79, v50, v49);
    _Block_release(v49);
    (*v71)(v50, v51);
    (*v70)(v79, v74);

    if (qword_27F53F220 != -1)
    {
      swift_once();
    }

    v80 = qword_27F5753E8;
    sub_252E37604();
    v52 = qword_27F5407C0;
    v19 = v68;
    if (qword_27F5407C0)
    {
    }

    else
    {
      v53 = type metadata accessor for ApplicationContext();
      v54 = *(v53 + 48);
      v55 = *(v53 + 52);
      swift_allocObject();
      v52 = sub_252978E58();
      qword_27F5407C0 = v52;
    }

    sub_252E37614();
    sub_252929E74((v52 + 368), v111);

    v56 = sub_252C92828(v111);
    __swift_destroy_boxed_opaque_existential_1(v111);
    if (v56)
    {
      v38 = 8;
    }

    else
    {
LABEL_28:
      v38 = 1;
    }

    goto LABEL_29;
  }

  return result;
}

uint64_t sub_252CE6FFC(uint64_t a1)
{
  sub_252E34E64();
  v3 = v9;
  if (v9)
  {
    memcpy(__dst, v1, sizeof(__dst));
    memcpy(__src, v1, sizeof(__src));
    sub_2529353AC(__dst, v8);
    sub_252CF1C30(v3, &v6);

    memcpy(v8, __src, sizeof(v8));
    sub_252935408(v8);
    v1[209] = v6;
  }

  v1[208] = 1;
  v1[384] = 11;
  return sub_252CF0EC8(a1);
}

unint64_t sub_252CE70CC()
{
  v1 = v0;
  *(v0 + 384) = 21;
  result = sub_252E34E54();
  if (result)
  {
    v3 = result;
    v13 = MEMORY[0x277D84F90];
    v4 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
LABEL_21:
      v5 = sub_252E378C4();
      if (v5)
      {
LABEL_4:
        v6 = 0;
        v7 = MEMORY[0x277D84F90];
        do
        {
          v8 = v6;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              MEMORY[0x2530ADF00](v8, v3);
              v6 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
                goto LABEL_19;
              }
            }

            else
            {
              if (v8 >= *(v4 + 16))
              {
                goto LABEL_20;
              }

              v9 = *(v3 + 8 * v8 + 32);

              v6 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
LABEL_19:
                __break(1u);
LABEL_20:
                __break(1u);
                goto LABEL_21;
              }
            }

            sub_252E349D4();

            if (v12)
            {
              break;
            }

            ++v8;
            if (v6 == v5)
            {
              goto LABEL_23;
            }
          }

          MEMORY[0x2530AD700](v10);
          if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v11 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v7 = v13;
        }

        while (v6 != v5);
        goto LABEL_23;
      }
    }

    else
    {
      v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v7 = MEMORY[0x277D84F90];
LABEL_23:

    *(v1 + 208) = 3;
    sub_252CDF97C(v7);
  }

  return result;
}

uint64_t sub_252CE7278(uint64_t a1, char a2, char a3)
{
  *(v3 + 384) = a2;
  result = sub_252E34E64();
  if (v8)
  {
    *(v3 + 208) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C130;
    *(inited + 32) = v8;
    sub_252CDF97C(inited);
    swift_setDeallocating();
    v7 = *(inited + 16);
    return swift_arrayDestroy();
  }

  return result;
}

uint64_t sub_252CE7328()
{
  *(v0 + 384) = 16;
  result = sub_252E35194();
  if (v5)
  {
    sub_252E35184();
    v2 = sub_252E34A14();

    if (v2)
    {

      *(v0 + 208) = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C130;
      *(inited + 32) = v5;
      sub_252CDF97C(inited);
      swift_setDeallocating();
      v4 = *(inited + 16);
      return swift_arrayDestroy();
    }

    else
    {
    }
  }

  return result;
}

unint64_t sub_252CE741C()
{
  sub_252E34E64();
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C130;
    *(inited + 32) = v13;

    sub_252CF2854(inited);

    swift_setDeallocating();
    v1 = *(inited + 16);
    return swift_arrayDestroy();
  }

  result = sub_252E34E54();
  if (result)
  {
    v3 = result;
    v14 = MEMORY[0x277D84F90];
    v4 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
LABEL_23:
      v5 = sub_252E378C4();
      if (v5)
      {
LABEL_6:
        v6 = 0;
        v7 = MEMORY[0x277D84F90];
        do
        {
          v8 = v6;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              MEMORY[0x2530ADF00](v8, v3);
              v6 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
                goto LABEL_21;
              }
            }

            else
            {
              if (v8 >= *(v4 + 16))
              {
                goto LABEL_22;
              }

              v9 = *(v3 + 8 * v8 + 32);

              v6 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
LABEL_21:
                __break(1u);
LABEL_22:
                __break(1u);
                goto LABEL_23;
              }
            }

            sub_252E349D4();

            if (v12)
            {
              break;
            }

            ++v8;
            if (v6 == v5)
            {
              goto LABEL_25;
            }
          }

          MEMORY[0x2530AD700](v10);
          if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v7 = v14;
        }

        while (v6 != v5);
        goto LABEL_25;
      }
    }

    else
    {
      v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_6;
      }
    }

    v7 = MEMORY[0x277D84F90];
LABEL_25:

    sub_252CF2854(v7);
  }

  return result;
}

uint64_t sub_252CE7650()
{
  v69 = sub_252E36C24();
  v64 = *(v69 - 8);
  v0 = *(v64 + 64);
  MEMORY[0x28223BE20](v69);
  v68 = v59 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_252E36B34();
  v70 = *(v66 - 8);
  v2 = *(v70 + 64);
  v3 = MEMORY[0x28223BE20](v66);
  v67 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v63 = v59 - v5;
  v6 = sub_252E36BC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C00, &unk_252E41DD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v59 - v13;
  v15 = sub_252E36C44();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v65 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v59 - v20;
  sub_252E34504();
  v22 = v71;
  if (!v71)
  {
    return 0;
  }

  v23 = sub_252E34A24();

  if (v23)
  {
    v60 = v21;
    v61 = v16;
    v62 = v15;

    v24 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v24 + 368), &v71);

    v25 = v73;
    v26 = v74;
    __swift_project_boxed_opaque_existential_1(&v71, v73);

    v27 = sub_252E34644();

    *v10 = v27;
    (*(v7 + 104))(v10, *MEMORY[0x277D5FEA8], v6);
    (*(v26 + 8))(v10, v25, v26);
    (*(v7 + 8))(v10, v6);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v59[1] = v22;
      v31 = v60;
      v30 = v61;
      v32 = v62;
      (*(v61 + 32))(v60, v14, v62);
      __swift_destroy_boxed_opaque_existential_1(&v71);
      v33 = v65;
      (*(v30 + 16))(v65, v31, v32);
      v34 = (*(v30 + 88))(v33, v32);
      if (v34 == *MEMORY[0x277D5FEC0])
      {
        (*(v30 + 96))(v33, v32);
        v35 = v63;
        v36 = v33;
        v37 = v66;
        (*(v70 + 32))(v63, v36, v66);
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v38 = sub_252E36AD4();
        __swift_project_value_buffer(v38, qword_27F544D60);
        v71 = 0;
        v72 = 0xE000000000000000;
        sub_252E379F4();

        v71 = 0xD000000000000021;
        v72 = 0x8000000252E905C0;
        sub_252D07DD4(&qword_27F541C10, MEMORY[0x277D5FE08]);
        v39 = sub_252E37D94();
        MEMORY[0x2530AD570](v39);

        sub_252CC3D90(v71, v72, 0xD000000000000077, 0x8000000252E92DE0);

        v40 = v68;
        sub_252E36B24();
        v41 = sub_252C907E8();
        (*(v64 + 8))(v40, v69);
        if (!v41)
        {

          (*(v70 + 8))(v35, v37);
          (*(v30 + 8))(v31, v32);
          return 0;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_252E3C130;
        *(v28 + 32) = v41;

        (*(v70 + 8))(v35, v37);
      }

      else
      {
        v42 = v66;
        if (v34 != *MEMORY[0x277D5FEC8])
        {
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v56 = sub_252E36AD4();
          __swift_project_value_buffer(v56, qword_27F544D60);
          v71 = 0;
          v72 = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E72E30);
          sub_252D07DD4(&qword_27F541C08, MEMORY[0x277D5FEE8]);
          v57 = sub_252E37D94();
          MEMORY[0x2530AD570](v57);

          sub_252CC4050(v71, v72, 0xD000000000000077, 0x8000000252E92DE0, 0xD000000000000023, 0x8000000252E93830, 2229);

          v58 = *(v30 + 8);
          v58(v31, v32);
          v58(v33, v32);
          return 0;
        }

        (*(v30 + 96))(v33, v32);
        v43 = *v33;
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v44 = sub_252E36AD4();
        __swift_project_value_buffer(v44, qword_27F544D60);
        v71 = 0;
        v72 = 0xE000000000000000;
        sub_252E379F4();

        v71 = 0xD000000000000021;
        v72 = 0x8000000252E90590;
        v45 = MEMORY[0x2530AD730](v43, v42);
        MEMORY[0x2530AD570](v45);

        sub_252CC3D90(v71, v72, 0xD000000000000077, 0x8000000252E92DE0);

        v71 = MEMORY[0x277D84F90];
        v46 = *(v43 + 16);
        if (v46)
        {
          v65 = *(v70 + 16);
          v47 = *(v70 + 80);
          v59[0] = v43;
          v48 = v43 + ((v47 + 32) & ~v47);
          v63 = *(v70 + 72);
          v49 = (v64 + 8);
          v70 += 16;
          v50 = (v70 - 8);
          v28 = MEMORY[0x277D84F90];
          do
          {
            v51 = v67;
            (v65)(v67, v48, v42);
            v52 = v68;
            sub_252E36B24();
            v53 = sub_252C907E8();
            (*v49)(v52, v69);
            v54 = (*v50)(v51, v42);
            if (v53)
            {
              MEMORY[0x2530AD700](v54);
              if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v55 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_252E372A4();
              }

              sub_252E372D4();
              v28 = v71;
            }

            v48 += v63;
            --v46;
          }

          while (v46);

          v30 = v61;
          v32 = v62;
          v31 = v60;
        }

        else
        {

          v28 = MEMORY[0x277D84F90];
        }
      }

      (*(v30 + 8))(v31, v32);
      return v28;
    }

    sub_25293847C(v14, &qword_27F541C00, &unk_252E41DD0);
    __swift_destroy_boxed_opaque_existential_1(&v71);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_252CE80E0()
{
  v1 = v0;
  v2 = sub_252E34E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545540, &qword_252E5B5D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545548, &qword_252E5B5D8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v45 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  result = sub_252E34504();
  v21 = v48;
  if (!v48)
  {
    return result;
  }

  v22 = sub_252E34A14();

  v45 = v1;
  v47 = v21;
  if (v22)
  {
    sub_252E34E74();
  }

  else
  {
    (*(v3 + 56))(v19, 1, 1, v2);
  }

  (*(v3 + 104))(v17, *MEMORY[0x277D5EA28], v2);
  (*(v3 + 56))(v17, 0, 1, v2);
  v23 = *(v6 + 48);
  sub_252938414(v19, v9, &qword_27F545548, &qword_252E5B5D8);
  sub_252938414(v17, &v9[v23], &qword_27F545548, &qword_252E5B5D8);
  v24 = *(v3 + 48);
  if (v24(v9, 1, v2) == 1)
  {
    sub_25293847C(v17, &qword_27F545548, &qword_252E5B5D8);
    sub_25293847C(v19, &qword_27F545548, &qword_252E5B5D8);
    if (v24(&v9[v23], 1, v2) == 1)
    {
      sub_25293847C(v9, &qword_27F545548, &qword_252E5B5D8);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_252938414(v9, v14, &qword_27F545548, &qword_252E5B5D8);
  if (v24(&v9[v23], 1, v2) == 1)
  {
    sub_25293847C(v17, &qword_27F545548, &qword_252E5B5D8);
    sub_25293847C(v19, &qword_27F545548, &qword_252E5B5D8);
    (*(v3 + 8))(v14, v2);
LABEL_10:
    sub_25293847C(v9, &qword_27F545540, &qword_252E5B5D0);
  }

  v25 = &v9[v23];
  v26 = v46;
  (*(v3 + 32))(v46, v25, v2);
  sub_252D07DD4(&qword_27F545550, MEMORY[0x277D5EA60]);
  v27 = sub_252E36EF4();
  v28 = *(v3 + 8);
  v28(v26, v2);
  sub_25293847C(v17, &qword_27F545548, &qword_252E5B5D8);
  sub_25293847C(v19, &qword_27F545548, &qword_252E5B5D8);
  v28(v14, v2);
  sub_25293847C(v9, &qword_27F545548, &qword_252E5B5D8);
  if ((v27 & 1) == 0)
  {
  }

LABEL_12:
  v29 = v45;
  v30 = *(v45 + 32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_2529F8B34(0, *(v30 + 2) + 1, 1, v30);
  }

  v32 = *(v30 + 2);
  v31 = *(v30 + 3);
  if (v32 >= v31 >> 1)
  {
    v30 = sub_2529F8B34((v31 > 1), v32 + 1, 1, v30);
  }

  *(v30 + 2) = v32 + 1;
  v30[v32 + 32] = 2;
  *(v29 + 32) = v30;
  v33 = *(sub_252B680FC() + 72);

  if (v33 != 1)
  {
  }

  v34 = *(sub_252B680FC() + 120);

  if (!v34)
  {
  }

  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v35 = sub_252E36AD4();
  __swift_project_value_buffer(v35, qword_27F544D90);

  v36 = sub_252E36AC4();
  v37 = sub_252E374C4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v48 = v39;
    *v38 = 136315138;
    v40 = type metadata accessor for HomeFilter();
    v41 = MEMORY[0x2530AD730](v34, v40);
    v43 = sub_252BE2CE0(v41, v42, &v48);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_252917000, v36, v37, "All quantifier with disambiguation candidates: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x2530AED00](v39, -1, -1);
    MEMORY[0x2530AED00](v38, -1, -1);
  }

  v44 = *(v29 + 304);

  *(v29 + 304) = v34;
  return result;
}

unint64_t sub_252CE87A4(uint64_t a1)
{
  v2 = v1;
  *(v1 + 208) = 0;
  v4 = *(v1 + 192);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_30:
    v4 = sub_2529F82C4(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_2529F82C4((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v4[v6 + 32] = 70;
  *(v2 + 192) = v4;
  *(v2 + 384) = 18;
  v7 = sub_252C75848(&unk_2864A5E78);
  sub_252A01B34(&unk_2864A5E98);
  v8 = *(v2 + 96);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_2529F8278(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_2529F8278((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  v8[v10 + 4] = v7;
  *(v2 + 96) = v8;
  v4 = a1;
  v11 = sub_252E35294();
  if (v11)
  {
    v12 = v11;
    v33 = v2;
    a1 = v11 & 0xFFFFFFFFFFFFFF8;
    if (v11 >> 62)
    {
      v13 = sub_252E378C4();
      if (v13)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_11:
        v2 = 0;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x2530ADF00](v2, v12);
            v15 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }
          }

          else
          {
            if (v2 >= *(a1 + 16))
            {
              __break(1u);
              goto LABEL_30;
            }

            v14 = *(v12 + 8 * v2 + 32);

            v15 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              goto LABEL_25;
            }
          }

          v4 = v14;
          sub_252E349D4();
          if (v37[0] && (v16 = sub_252E34D74(), v4 = v17, , v4))
          {
            if (v16 == 0x676E696E61656C63 && v4 == 0xE800000000000000)
            {

              goto LABEL_28;
            }

            v18 = sub_252E37DB4();

            if (v18)
            {

LABEL_28:
              v19 = 1;
              goto LABEL_33;
            }
          }

          else
          {
          }

          ++v2;
        }

        while (v15 != v13);
      }
    }

    v19 = 0;
LABEL_33:
    v2 = v33;
  }

  else
  {
LABEL_26:
    v19 = 0;
  }

  memcpy(__dst, v2, sizeof(__dst));
  memcpy(__src, v2, sizeof(__src));
  sub_2529353AC(__dst, v37);
  v20 = sub_252CDFDD4();
  memcpy(v37, __src, 0x1F8uLL);
  sub_252935408(v37);
  if (v19 & 1) != 0 || (v20)
  {
    sub_252CE10F0(0, 0xE000000000000000);
    sub_252CE2134(0, 0xE000000000000000);
    v21 = sub_2529FC02C(&unk_2864A5EA8);
    v22 = sub_2529FC02C(&unk_2864A5ED0);
    sub_252CE3278(v21, v22);
  }

  result = sub_252E35284();
  if (result)
  {
    v24 = result;
    __src[0] = MEMORY[0x277D84F90];
    v25 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
LABEL_57:
      v26 = sub_252E378C4();
      if (v26)
      {
LABEL_40:
        v27 = 0;
        v28 = MEMORY[0x277D84F90];
        do
        {
          v29 = v2;
          v2 = v27;
          while (1)
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              MEMORY[0x2530ADF00](v2, v24);
              v27 = v2 + 1;
              if (__OFADD__(v2, 1))
              {
                goto LABEL_55;
              }
            }

            else
            {
              if (v2 >= *(v25 + 16))
              {
                goto LABEL_56;
              }

              v30 = *(v24 + 8 * v2 + 32);

              v27 = v2 + 1;
              if (__OFADD__(v2, 1))
              {
LABEL_55:
                __break(1u);
LABEL_56:
                __break(1u);
                goto LABEL_57;
              }
            }

            sub_252E349D4();

            if (v34)
            {
              break;
            }

            ++v2;
            if (v27 == v26)
            {
              goto LABEL_59;
            }
          }

          MEMORY[0x2530AD700](v31);
          if (*((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v32 = *((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v28 = __src[0];
          v2 = v29;
        }

        while (v27 != v26);
        goto LABEL_59;
      }
    }

    else
    {
      v26 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
        goto LABEL_40;
      }
    }

    v28 = MEMORY[0x277D84F90];
LABEL_59:

    sub_252CDF97C(v28);
  }

  return result;
}

unint64_t sub_252CE8C8C(uint64_t a1)
{
  v2 = v1;
  *(v1 + 208) = 0;
  v4 = *(v1 + 192);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_30:
    v4 = sub_2529F82C4(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_2529F82C4((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v4[v6 + 32] = 71;
  *(v2 + 192) = v4;
  *(v2 + 384) = 19;
  v7 = sub_252C75848(&unk_2864A5EF8);
  sub_252A01B34(&unk_2864A5F18);
  v8 = *(v2 + 96);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_2529F8278(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_2529F8278((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  v8[v10 + 4] = v7;
  *(v2 + 96) = v8;
  v4 = a1;
  v11 = sub_252E35294();
  if (v11)
  {
    v12 = v11;
    v33 = v2;
    a1 = v11 & 0xFFFFFFFFFFFFFF8;
    if (v11 >> 62)
    {
      v13 = sub_252E378C4();
      if (v13)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_11:
        v2 = 0;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x2530ADF00](v2, v12);
            v15 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }
          }

          else
          {
            if (v2 >= *(a1 + 16))
            {
              __break(1u);
              goto LABEL_30;
            }

            v14 = *(v12 + 8 * v2 + 32);

            v15 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              goto LABEL_25;
            }
          }

          v4 = v14;
          sub_252E349D4();
          if (v37[0] && (v16 = sub_252E34D74(), v4 = v17, , v4))
          {
            if (v16 == 0x676E696E61656C63 && v4 == 0xE800000000000000)
            {

              goto LABEL_28;
            }

            v18 = sub_252E37DB4();

            if (v18)
            {

LABEL_28:
              v19 = 1;
              goto LABEL_33;
            }
          }

          else
          {
          }

          ++v2;
        }

        while (v15 != v13);
      }
    }

    v19 = 0;
LABEL_33:
    v2 = v33;
  }

  else
  {
LABEL_26:
    v19 = 0;
  }

  memcpy(__dst, v2, sizeof(__dst));
  memcpy(__src, v2, sizeof(__src));
  sub_2529353AC(__dst, v37);
  v20 = sub_252CDFDD4();
  memcpy(v37, __src, 0x1F8uLL);
  sub_252935408(v37);
  if (v19 & 1) != 0 || (v20)
  {
    sub_252CE10F0(0, 0xE000000000000000);
    sub_252CE2134(0, 0xE000000000000000);
    v21 = sub_2529FC02C(&unk_2864A5F28);
    v22 = sub_2529FC02C(&unk_2864A5F50);
    sub_252CE3278(v21, v22);
  }

  result = sub_252E35284();
  if (result)
  {
    v24 = result;
    __src[0] = MEMORY[0x277D84F90];
    v25 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
LABEL_57:
      v26 = sub_252E378C4();
      if (v26)
      {
LABEL_40:
        v27 = 0;
        v28 = MEMORY[0x277D84F90];
        do
        {
          v29 = v2;
          v2 = v27;
          while (1)
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              MEMORY[0x2530ADF00](v2, v24);
              v27 = v2 + 1;
              if (__OFADD__(v2, 1))
              {
                goto LABEL_55;
              }
            }

            else
            {
              if (v2 >= *(v25 + 16))
              {
                goto LABEL_56;
              }

              v30 = *(v24 + 8 * v2 + 32);

              v27 = v2 + 1;
              if (__OFADD__(v2, 1))
              {
LABEL_55:
                __break(1u);
LABEL_56:
                __break(1u);
                goto LABEL_57;
              }
            }

            sub_252E349D4();

            if (v34)
            {
              break;
            }

            ++v2;
            if (v27 == v26)
            {
              goto LABEL_59;
            }
          }

          MEMORY[0x2530AD700](v31);
          if (*((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v32 = *((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v28 = __src[0];
          v2 = v29;
        }

        while (v27 != v26);
        goto LABEL_59;
      }
    }

    else
    {
      v26 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
        goto LABEL_40;
      }
    }

    v28 = MEMORY[0x277D84F90];
LABEL_59:

    sub_252CDF97C(v28);
  }

  return result;
}

unint64_t sub_252CE9174()
{
  v1 = v0;
  *(v0 + 208) = 0;
  v2 = *(v0 + 192);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_28:
    v2 = sub_2529F82C4(0, *(v2 + 16) + 1, 1, v2);
  }

  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_2529F82C4((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 16) = v4 + 1;
  *(v2 + v4 + 32) = 1;
  *(v1 + 192) = v2;
  *(v1 + 384) = 20;
  v5 = sub_252C75848(&unk_2864A5F78);
  sub_252A01B34(&unk_2864A5F98);
  v6 = *(v1 + 96);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_2529F8278(0, v6[2] + 1, 1, v6);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_2529F8278((v7 > 1), v8 + 1, 1, v6);
  }

  v6[2] = v8 + 1;
  v6[v8 + 4] = v5;
  *(v1 + 96) = v6;
  result = sub_252E35284();
  if (result)
  {
    v2 = result;
    v19 = MEMORY[0x277D84F90];
    v10 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      v11 = sub_252E378C4();
      if (v11)
      {
LABEL_11:
        v12 = 0;
        v13 = MEMORY[0x277D84F90];
        do
        {
          v14 = v12;
          while (1)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              MEMORY[0x2530ADF00](v14, v2);
              v12 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                goto LABEL_26;
              }
            }

            else
            {
              if (v14 >= *(v10 + 16))
              {
                goto LABEL_27;
              }

              v15 = *(v2 + 8 * v14 + 32);

              v12 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
LABEL_26:
                __break(1u);
LABEL_27:
                __break(1u);
                goto LABEL_28;
              }
            }

            sub_252E349D4();

            if (v18)
            {
              break;
            }

            ++v14;
            if (v12 == v11)
            {
              goto LABEL_31;
            }
          }

          MEMORY[0x2530AD700](v16);
          if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v17 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v13 = v19;
        }

        while (v12 != v11);
        goto LABEL_31;
      }
    }

    else
    {
      v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_11;
      }
    }

    v13 = MEMORY[0x277D84F90];
LABEL_31:

    sub_252CDF97C(v13);
  }

  return result;
}

uint64_t sub_252CE941C(uint64_t a1)
{
  v3 = *(a1 + 16);

  if (v3)
  {
    v4 = (a1 + 352);
    v5 = MEMORY[0x277D84F90];
    v6 = v3;
    do
    {
      v7 = *v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2529F8104(0, *(v5 + 2) + 1, 1, v5);
      }

      v9 = *(v5 + 2);
      v8 = *(v5 + 3);
      if (v9 >= v8 >> 1)
      {
        v5 = sub_2529F8104((v8 > 1), v9 + 1, 1, v5);
      }

      v4 += 63;
      *(v5 + 2) = v9 + 1;
      *&v5[8 * v9 + 32] = v7;
      --v6;
    }

    while (v6);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v10 = sub_25298A638(v5);
  v12 = v11;

  if (!v3 || (v12 & 1) != 0)
  {
    v15 = a1;
LABEL_19:
    v18 = *v1;

    *v1 = v15;
  }

  else
  {
    v13 = 0;
    v14 = 344;
    v15 = a1;
    while (1)
    {
      v16 = *(a1 + v14 + 8);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_252D57AC0(v15);
        v15 = result;
      }

      if (v13 >= *(v15 + 16))
      {
        break;
      }

      ++v13;
      *(v15 + v14) = v16 == v10;
      v14 += 504;
      if (v3 == v13)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_252CE958C(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x28223BE20](a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545548, &qword_252E5B5D8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v88 = (&v88 - v5);
  v6 = sub_252E34E84();
  v93 = *(v6 - 8);
  v7 = *(v93 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v90 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v89 = &v88 - v11;
  MEMORY[0x28223BE20](v10);
  v91 = &v88 - v12;
  sub_252E352C4();
  v13 = v106;
  v94 = v1;
  if (v106)
  {
    memcpy(v104, v1, sizeof(v104));
    memcpy(v103, v1, sizeof(v103));
    sub_2529353AC(v104, v102);
    sub_252CEB304(v101);
    memcpy(v105, v103, sizeof(v105));
    sub_252935408(v105);
    v14 = v101[0];
    if (v101[0] != 66)
    {
      v15 = v104[10];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_2529F82EC(0, *(v15 + 2) + 1, 1, v15);
      }

      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      if (v17 >= v16 >> 1)
      {
        v15 = sub_2529F82EC((v16 > 1), v17 + 1, 1, v15);
      }

      *(v15 + 2) = v17 + 1;
      v15[v17 + 32] = v14;
      v2[10] = v15;
    }

    memcpy(v102, v2, sizeof(v102));
    memcpy(v101, v2, sizeof(v101));
    sub_2529353AC(v102, v100);
    sub_252CEB53C(v13, v99);
    memcpy(v103, v101, sizeof(v103));
    sub_252935408(v103);
    v18 = LOBYTE(v99[0]);
    if (LOBYTE(v99[0]) != 77)
    {
      v19 = v102[24];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_2529F82C4(0, *(v19 + 2) + 1, 1, v19);
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_2529F82C4((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v19[v21 + 32] = v18;
      v2[24] = v19;
      if (sub_2529A78B0(v18, &unk_2864A5BB8))
      {
        v22 = v102[12];
        v23 = sub_2529FE74C(&unk_2864A5BE0);
        sub_252A01B34(&unk_2864A5C00);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_2529F8278(0, *(v22 + 2) + 1, 1, v22);
        }

        v25 = *(v22 + 2);
        v24 = *(v22 + 3);
        if (v25 >= v24 >> 1)
        {
          v22 = sub_2529F8278((v24 > 1), v25 + 1, 1, v22);
        }

        *(v22 + 2) = v25 + 1;
        *&v22[8 * v25 + 32] = v23;
        v2[12] = v22;
      }
    }

    memcpy(v100, v2, sizeof(v100));
    memcpy(v99, v2, sizeof(v99));
    sub_2529353AC(v100, v98);
    sub_252CEBF68(v96);
    memcpy(v101, v99, sizeof(v101));
    sub_252935408(v101);
    v26 = v96[0];
    v92 = v6;
    if (v96[0] != 709)
    {
      v27 = v100[7];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_2529F8B48(0, *(v27 + 2) + 1, 1, v27);
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_2529F8B48((v28 > 1), v29 + 1, 1, v27);
      }

      v30 = v100[12];
      *(v27 + 2) = v29 + 1;
      *&v27[2 * v29 + 32] = v26;
      v2[7] = v27;
      v31 = sub_2529FE74C(&unk_2864A5C10);
      sub_252A01B34(&unk_2864A5C30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_2529F8278(0, *(v30 + 2) + 1, 1, v30);
      }

      v33 = *(v30 + 2);
      v32 = *(v30 + 3);
      if (v33 >= v32 >> 1)
      {
        v30 = sub_2529F8278((v32 > 1), v33 + 1, 1, v30);
      }

      *(v30 + 2) = v33 + 1;
      *&v30[8 * v33 + 32] = v31;
      v2[12] = v30;
    }

    if (sub_252E34D54())
    {
      if (*(v100[10] + 16) || (memcpy(v98, v2, sizeof(v98)), memcpy(v96, v2, 0x1F8uLL), sub_2529353AC(v98, &v95), sub_252CEB304(&v97), memcpy(v99, v96, sizeof(v99)), sub_252935408(v99), v34 = v97, v97 == 66))
      {
      }

      else
      {
        v61 = v98[10];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_2529F82EC(0, *(v61 + 2) + 1, 1, v61);
        }

        v63 = *(v61 + 2);
        v62 = *(v61 + 3);
        if (v63 >= v62 >> 1)
        {
          v61 = sub_2529F82EC((v62 > 1), v63 + 1, 1, v61);
        }

        *(v61 + 2) = v63 + 1;
        v61[v63 + 32] = v34;
        v2[10] = v61;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545568, &qword_252E5B5F0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_252E3C3C0;
    *(v35 + 32) = sub_252E34D54();
    *(v35 + 40) = v13;

    v36 = sub_252CEC1A0(v35);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545570, &qword_252E5B5F8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v37 = *(v36 + 16);
    if (v37)
    {
      v38 = v36 + 32;
      do
      {
        v39 = *v38;
        if (*(*v38 + 16))
        {
          v40 = v2[12];
          v41 = *v38;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_2529F8278(0, *(v40 + 2) + 1, 1, v40);
          }

          v43 = *(v40 + 2);
          v42 = *(v40 + 3);
          if (v43 >= v42 >> 1)
          {
            v40 = sub_2529F8278((v42 > 1), v43 + 1, 1, v40);
          }

          *(v40 + 2) = v43 + 1;
          *&v40[8 * v43 + 32] = v39;
          v2 = v94;
          v94[12] = v40;
        }

        v38 += 8;
        --v37;
      }

      while (v37);
    }

    v44 = sub_252E34A14();

    if (!v44)
    {

      goto LABEL_71;
    }

    v45 = v88;
    sub_252E34E74();
    v46 = v92;
    v47 = v93;
    if ((*(v93 + 48))(v45, 1, v92) == 1)
    {

      sub_25293847C(v45, &qword_27F545548, &qword_252E5B5D8);
      goto LABEL_71;
    }

    (*(v47 + 32))(v91, v45, v46);
    v48 = *MEMORY[0x277D5EA28];
    v88 = *(v47 + 104);
    v88(v89, v48, v46);
    sub_252D07DD4(&qword_27F545560, MEMORY[0x277D5EA60]);
    sub_252E371F4();
    sub_252E371F4();
    if (v99[0] == v98[0] && v99[1] == v98[1])
    {
      v49 = 1;
    }

    else
    {
      v49 = sub_252E37DB4();
    }

    v50 = *(v93 + 8);
    v51 = v89;
    v93 += 8;
    v89 = v50;
    (v50)(v51, v92);

    if (v49)
    {
      v52 = v94;
      v53 = v94[4];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_2529F8B34(0, *(v53 + 2) + 1, 1, v53);
      }

      v55 = *(v53 + 2);
      v54 = *(v53 + 3);
      if (v55 >= v54 >> 1)
      {
        v53 = sub_2529F8B34((v54 > 1), v55 + 1, 1, v53);
      }

      *(v53 + 2) = v55 + 1;
      v53[v55 + 32] = 2;
      v52[4] = v53;
    }

    v88(v90, *MEMORY[0x277D5EA58], v92);
    sub_252E371F4();
    sub_252E371F4();
    if (v99[0] == v98[0] && v99[1] == v98[1])
    {
      v56 = v92;
      (v89)(v90, v92);
    }

    else
    {
      v57 = sub_252E37DB4();
      v56 = v92;
      (v89)(v90, v92);

      if ((v57 & 1) == 0)
      {
        (v89)(v91, v56);

        v2 = v94;
        goto LABEL_71;
      }
    }

    v2 = v94;
    v58 = v94[4];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_2529F8B34(0, *(v58 + 2) + 1, 1, v58);
    }

    v60 = *(v58 + 2);
    v59 = *(v58 + 3);
    if (v60 >= v59 >> 1)
    {
      v58 = sub_2529F8B34((v59 > 1), v60 + 1, 1, v58);
    }

    (v89)(v91, v56);
    *(v58 + 2) = v60 + 1;
    v58[v60 + 32] = 1;
    v2[4] = v58;
  }

LABEL_71:
  v64 = sub_252E352B4();
  if (v64)
  {
    v65 = v64;
    memcpy(v100, v2, sizeof(v100));
    memcpy(v105, v2, sizeof(v105));
    sub_2529353AC(v100, v104);
    v66 = sub_252CEC3C0();
    memcpy(v101, v105, sizeof(v101));
    sub_252935408(v101);

    v2[2] = v66;
    memcpy(v102, v2, sizeof(v102));
    memcpy(v105, v2, sizeof(v105));
    sub_2529353AC(v102, v104);
    sub_252CEC448(v65, v104);
    memcpy(v103, v105, sizeof(v103));
    sub_252935408(v103);
    *(v2 + 40) = v104[0];
    memcpy(v104, v2, sizeof(v104));
    memcpy(v99, v2, sizeof(v99));
    sub_2529353AC(v104, v105);
    sub_252CECC58(v98);

    memcpy(v105, v99, sizeof(v105));
    sub_252935408(v105);
    v67 = v98[1];
    v68 = BYTE1(v98[1]);
    v2[35] = v98[0];
    *(v2 + 288) = v67;
    *(v2 + 289) = v68;
  }

  memcpy(v105, v2, sizeof(v105));
  memcpy(v104, v2, sizeof(v104));
  sub_2529353AC(v105, v103);
  v69 = sub_252E352A4();
  v70 = MEMORY[0x277D84F90];
  if (v69)
  {
    v71 = v69;
  }

  else
  {
    v71 = MEMORY[0x277D84F90];
  }

  sub_252CED168(v71, v96);

  memcpy(v103, v104, sizeof(v103));
  sub_252935408(v103);
  if (LOBYTE(v96[0]) != 5)
  {
    v72 = v105[4];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v72 = sub_2529F8B34(0, *(v72 + 2) + 1, 1, v72);
    }

    v74 = *(v72 + 2);
    v73 = *(v72 + 3);
    if (v74 >= v73 >> 1)
    {
      v72 = sub_2529F8B34((v73 > 1), v74 + 1, 1, v72);
    }

    *(v72 + 2) = v74 + 1;
    v72[v74 + 32] = 4;
    v2[4] = v72;
  }

  memcpy(v102, v2, sizeof(v102));
  memcpy(v101, v2, sizeof(v101));
  sub_2529353AC(v102, v100);
  v75 = sub_252E352A4();
  if (v75)
  {
    v76 = v75;
  }

  else
  {
    v76 = v70;
  }

  v77 = sub_252CED470(v76);

  memcpy(v100, v101, sizeof(v100));
  sub_252935408(v100);
  v78 = sub_252E352A4();
  if (v78)
  {
    v79 = v78;
    v99[0] = v70;
    v80 = v78 & 0xFFFFFFFFFFFFFF8;
    if (v78 >> 62)
    {
LABEL_105:
      v81 = sub_252E378C4();
      v93 = v77;
      if (v81)
      {
LABEL_88:
        v77 = 0;
        v82 = MEMORY[0x277D84F90];
        do
        {
          v83 = v77;
          while (1)
          {
            if ((v79 & 0xC000000000000001) != 0)
            {
              MEMORY[0x2530ADF00](v83, v79);
              v77 = v83 + 1;
              if (__OFADD__(v83, 1))
              {
                goto LABEL_103;
              }
            }

            else
            {
              if (v83 >= *(v80 + 16))
              {
                goto LABEL_104;
              }

              v84 = *(v79 + 8 * v83 + 32);

              v77 = v83 + 1;
              if (__OFADD__(v83, 1))
              {
LABEL_103:
                __break(1u);
LABEL_104:
                __break(1u);
                goto LABEL_105;
              }
            }

            sub_252E349D4();

            if (v98[0])
            {
              break;
            }

            ++v83;
            if (v77 == v81)
            {
              goto LABEL_107;
            }
          }

          MEMORY[0x2530AD700](v85);
          if (*((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v86 = *((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v82 = v99[0];
        }

        while (v77 != v81);
        goto LABEL_107;
      }
    }

    else
    {
      v81 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v93 = v77;
      if (v81)
      {
        goto LABEL_88;
      }
    }

    v82 = MEMORY[0x277D84F90];
LABEL_107:

    v99[0] = v82;
    sub_25297AE00(v93);
    sub_252CDF97C(v99[0]);
  }
}

uint64_t sub_252CEA530(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = *a1;

  v7 = sub_252C75D8C(v6);

  v8 = v7 + 56;
  v9 = 1 << *(v7 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v92 = v7;
  v93 = v10 & *(v7 + 56);
  v11 = (v9 + 63) >> 6;

  do
  {
LABEL_5:
    v12 = v93;
    if (v93)
    {
      goto LABEL_10;
    }

    do
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
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
        swift_once();
        goto LABEL_41;
      }

      if (v13 >= v11)
      {
LABEL_38:
        v8 = v92;

        v42 = a1;
        goto LABEL_43;
      }

      v12 = *(v8 + 8 * v13);
      ++v4;
    }

    while (!v12);
    v4 = v13;
LABEL_10:
    v93 = (v12 - 1) & v12;
  }

  while (!*(a2 + 16));
  v14 = *(*(v92 + 48) + (__clz(__rbit64(v12)) | (v4 << 6)));
  v15 = *(a2 + 40);
  sub_252E37EC4();
  LOBYTE(v97) = v14;
  StateSemantic.rawValue.getter();
  sub_252E37044();

  v16 = sub_252E37F14();
  v17 = ~(-1 << *(a2 + 32));
  for (i = v16 & v17; ; i = (i + 1) & v17)
  {
    if (((*(a2 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) == 0)
    {
      goto LABEL_5;
    }

    LOBYTE(__dst[0]) = *(*(a2 + 48) + i);
    LOBYTE(v97) = v14;
    v19 = StateSemantic.rawValue.getter();
    v21 = v20;
    if (v19 == StateSemantic.rawValue.getter() && v21 == v22)
    {
      break;
    }

    v24 = sub_252E37DB4();

    if (v24)
    {
      goto LABEL_20;
    }
  }

LABEL_20:

  v25 = 1 << *(v92 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v95 = v26 & *(v92 + 56);
  v27 = (v25 + 63) >> 6;

  v28 = 0;
  do
  {
LABEL_24:
    v29 = v95;
    if (!v95)
    {
      while (1)
      {
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_119;
        }

        if (v30 >= v27)
        {
          goto LABEL_38;
        }

        v29 = *(v8 + 8 * v30);
        ++v28;
        if (v29)
        {
          v28 = v30;
          break;
        }
      }
    }

    v95 = (v29 - 1) & v29;
  }

  while (!*(a3 + 16));
  v31 = *(*(v92 + 48) + (__clz(__rbit64(v29)) | (v28 << 6)));
  v32 = *(a3 + 40);
  sub_252E37EC4();
  LOBYTE(v97) = v31;
  StateSemantic.rawValue.getter();
  sub_252E37044();

  v33 = sub_252E37F14();
  v34 = ~(-1 << *(a3 + 32));
  for (j = v33 & v34; ; j = (j + 1) & v34)
  {
    if (((*(a3 + 56 + ((j >> 3) & 0xFFFFFFFFFFFFFF8)) >> j) & 1) == 0)
    {
      goto LABEL_24;
    }

    LOBYTE(__dst[0]) = *(*(a3 + 48) + j);
    LOBYTE(v97) = v31;
    v36 = StateSemantic.rawValue.getter();
    v38 = v37;
    if (v36 == StateSemantic.rawValue.getter() && v38 == v39)
    {
      break;
    }

    v41 = sub_252E37DB4();

    if (v41)
    {
      goto LABEL_40;
    }
  }

LABEL_40:
  v8 = v92;

  if (qword_27F53F4F8 != -1)
  {
    goto LABEL_125;
  }

LABEL_41:
  v43 = sub_252E36AD4();
  __swift_project_value_buffer(v43, qword_27F544D90);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();
  v97 = __dst[0];
  v98 = __dst[1];
  MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E935D0);
  memcpy(__dst, __src, sizeof(__dst));
  v44 = HomeAutomationIntent.description.getter();
  MEMORY[0x2530AD570](v44);

  MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E93600);
  sub_252A54248();
  v45 = sub_252E373B4();
  MEMORY[0x2530AD570](v45);

  sub_252CC3D90(v97, v98, 0xD000000000000077, 0x8000000252E92DE0);

  v42 = a1;
  v46 = sub_252D07538(a1, a3);

  v48 = *(*a1 + 16);
  if (v48 < v46)
  {
    __break(1u);
    goto LABEL_127;
  }

  sub_252D57B9C(v46, v48);
LABEL_43:
  v49 = sub_2529FC02C(&unk_2864A24B0);
  if (sub_252DA0454(56, v8))
  {
    v50 = sub_252A11F64(v49, v8);

    if ((v50 & 1) == 0)
    {
      v51 = *v42;
      v52 = *(*v42 + 16);
      if (!v52)
      {
        v53 = 0;
        v56 = 0;
LABEL_74:
        sub_252D57B9C(v53, v56);
        goto LABEL_75;
      }

      v53 = 0;
      while (1)
      {
        if (v53 >= *(v51 + 16))
        {
          goto LABEL_121;
        }

        LOBYTE(__dst[0]) = *(v51 + 32 + v53);
        if (StateSemantic.rawValue.getter() == 0x6E61656C63 && v54 == 0xE500000000000000)
        {
          break;
        }

        v55 = sub_252E37DB4();

        if (v55)
        {
          goto LABEL_56;
        }

        if (v52 == ++v53)
        {
          v53 = *(v51 + 16);
          v56 = v53;
          goto LABEL_74;
        }
      }

LABEL_56:
      v57 = *(v51 + 16);
      if (v57 - 1 == v53)
      {
        v56 = v53 + 1;
        goto LABEL_74;
      }

      v58 = v53 + 33;
      do
      {
        v61 = v58 - 32;
        if (v58 - 32 >= v57)
        {
          goto LABEL_122;
        }

        LOBYTE(__dst[0]) = *(v51 + v58);
        if (StateSemantic.rawValue.getter() == 0x6E61656C63 && v62 == 0xE500000000000000)
        {
        }

        else
        {
          v63 = sub_252E37DB4();

          if ((v63 & 1) == 0)
          {
            if (v61 != v53)
            {
              if ((v53 & 0x8000000000000000) != 0)
              {
                goto LABEL_128;
              }

              v64 = *(v51 + 16);
              if (v53 >= v64)
              {
                goto LABEL_129;
              }

              if (v61 >= v64)
              {
                goto LABEL_130;
              }

              v65 = *(v51 + 32 + v53);
              v66 = *(v51 + v58);
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_252D57AE8(v51);
                v51 = result;
              }

              *(v51 + v53 + 32) = v66;
              *(v51 + v58) = v65;
              *v42 = v51;
            }

            ++v53;
          }
        }

        v57 = *(v51 + 16);
        v59 = v58 + 1;
        v60 = v58 - 31;
        ++v58;
      }

      while (v60 != v57);
      v56 = v59 - 32;
      if ((v59 - 32) >= v53)
      {
        goto LABEL_74;
      }

LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      return result;
    }
  }

  else
  {
  }

LABEL_75:
  if (sub_252DA0454(59, v8))
  {
    if (sub_252DA0454(57, v8))
    {
    }

    else
    {
      v67 = sub_252DA0454(58, v8);

      if ((v67 & 1) == 0)
      {
        return result;
      }
    }

    v68 = *v42;
    v69 = *(*v42 + 16);
    if (!v69)
    {
      v70 = 0;
      v76 = 0;
      return sub_252D57B9C(v70, v76);
    }

    v70 = 0;
    v8 = 0xE300000000000000;
    while (1)
    {
      if (v70 >= *(v68 + 2))
      {
        goto LABEL_123;
      }

      v71 = v68[v70 + 32];
      LOBYTE(__dst[0]) = v71;
      if (StateSemantic.rawValue.getter() == 0x6D7575636176 && v72 == 0xE600000000000000)
      {
        break;
      }

      v73 = sub_252E37DB4();

      if (v73)
      {
        goto LABEL_95;
      }

      LOBYTE(__dst[0]) = v71;
      if (StateSemantic.rawValue.getter() == 7368557 && v74 == 0xE300000000000000)
      {
        break;
      }

      v75 = sub_252E37DB4();

      if (v75)
      {
        goto LABEL_95;
      }

      if (v69 == ++v70)
      {
        v70 = *(v68 + 2);
        v76 = v70;
        return sub_252D57B9C(v70, v76);
      }
    }

LABEL_95:
    v77 = *(v68 + 2);
    if (v77 - 1 == v70)
    {
      v76 = v70 + 1;
      return sub_252D57B9C(v70, v76);
    }

    v78 = v70 + 33;
    v8 = 0xE300000000000000;
    while (1)
    {
      v81 = v78 - 32;
      if (v78 - 32 >= v77)
      {
        goto LABEL_120;
      }

      v82 = v68[v78];
      LOBYTE(__dst[0]) = v82;
      if (StateSemantic.rawValue.getter() != 0x6D7575636176 || v83 != 0xE600000000000000)
      {
        v84 = sub_252E37DB4();

        if (v84)
        {
          goto LABEL_99;
        }

        LOBYTE(__dst[0]) = v82;
        if (StateSemantic.rawValue.getter() != 7368557 || v85 != 0xE300000000000000)
        {
          v86 = sub_252E37DB4();

          if ((v86 & 1) == 0)
          {
            if (v81 != v70)
            {
              if ((v70 & 0x8000000000000000) != 0)
              {
                goto LABEL_131;
              }

              v87 = *(v68 + 2);
              if (v70 >= v87)
              {
                goto LABEL_132;
              }

              if (v81 >= v87)
              {
                goto LABEL_133;
              }

              v88 = v68[v70 + 32];
              v89 = v68[v78];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v68 = sub_252D57AE8(v68);
              }

              v68[v70 + 32] = v89;
              v68[v78] = v88;
              *a1 = v68;
            }

            ++v70;
          }

          goto LABEL_99;
        }
      }

LABEL_99:
      v77 = *(v68 + 2);
      v79 = v78 + 1;
      v80 = v78 - 31;
      ++v78;
      if (v80 == v77)
      {
        v76 = v79 - 32;
        if ((v79 - 32) < v70)
        {
          goto LABEL_124;
        }

        return sub_252D57B9C(v70, v76);
      }
    }
  }
}