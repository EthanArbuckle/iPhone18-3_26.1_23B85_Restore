uint64_t sub_24BA54970(uint64_t a1)
{
  v2 = sub_24BAA868C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940);
  MEMORY[0x28223BE20](v3);
  v5 = v18 - v4;
  v6 = type metadata accessor for Trigger(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277D059D8]) initWithEnabledSetting_];
  [v10 isEnabled];
  v11 = *(type metadata accessor for AddTriggersView() + 20);
  v18[1] = a1;
  if (*(a1 + v11))
  {
    *v9 = 1;
    *(v9 + 1) = v10;
    swift_storeEnumTagMultiPayload();
    v12 = v10;

    sub_24B984444();
    v13 = sub_24B8DF718();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_24B99A4A0(0, v13[2] + 1, 1, v13);
    }

    v15 = v13[2];
    v14 = v13[3];
    if (v15 >= v14 >> 1)
    {
      v13 = sub_24B99A4A0(v14 > 1, v15 + 1, 1, v13);
    }

    v13[2] = v15 + 1;
    sub_24BA595C0(v9, v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for Trigger);
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA51E5C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    sub_24BAA814C();
    sub_24BAA816C();

    sub_24B984444();
    sub_24B8DFC94(v13);

    sub_24BA8DA5C(v5);
    MEMORY[0x24C24FC10](v3);
    sub_24BAA867C();
    sub_24BAA9B6C();

    return sub_24B8F35E4(v5, &qword_27F063940);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA51E5C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    v17 = v10;
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA54D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_24BAA8AAC();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069E88);
  return sub_24BA54D7C(a1, a2 + *(v4 + 44));
}

uint64_t sub_24BA54D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069E90);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = (&v37 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069E98);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v39 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069EA0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v42 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  *v18 = sub_24BAA8BCC();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069EA8);
  sub_24BA551D8(a1, &v18[*(v19 + 44)]);
  *v13 = sub_24BAA8BDC();
  *(v13 + 1) = 0x4000000000000000;
  v13[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069EB0);
  sub_24BA554B8(&v13[*(v20 + 44)]);
  v38 = sub_24BAA994C();
  sub_24BAA916C();
  v21 = sub_24BAA917C();

  KeyPath = swift_getKeyPath();
  v23 = sub_24BAA974C();
  v24 = swift_getKeyPath();
  v25 = (v8 + *(v4 + 44));
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066C38) + 28);
  v27 = *MEMORY[0x277CE1048];
  v28 = sub_24BAA996C();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  *v8 = v38;
  v8[1] = KeyPath;
  v8[2] = v21;
  v8[3] = v24;
  v8[4] = v23;
  v29 = v42;
  sub_24B8F3208(v18, v42, &qword_27F069EA0);
  v30 = v39;
  sub_24B8F3208(v13, v39, &qword_27F069E98);
  v31 = v40;
  sub_24B8F3208(v8, v40, &qword_27F069E90);
  v32 = v29;
  v33 = v41;
  sub_24B8F3208(v32, v41, &qword_27F069EA0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069EB8);
  sub_24B8F3208(v30, v33 + v34[12], &qword_27F069E98);
  v35 = v33 + v34[16];
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_24B8F3208(v31, v33 + v34[20], &qword_27F069E90);
  sub_24B8F35E4(v8, &qword_27F069E90);
  sub_24B8F35E4(v13, &qword_27F069E98);
  sub_24B8F35E4(v18, &qword_27F069EA0);
  sub_24B8F35E4(v31, &qword_27F069E90);
  sub_24B8F35E4(v30, &qword_27F069E98);
  return sub_24B8F35E4(v42, &qword_27F069EA0);
}

uint64_t sub_24BA551D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069E90);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v23 - v8);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v23 = sub_24BAA994C();
  sub_24BAA916C();
  sub_24BAA91AC();
  v12 = sub_24BAA921C();

  KeyPath = swift_getKeyPath();
  if (*(a1 + *(type metadata accessor for AddTriggersView() + 20)))
  {

    v14 = sub_24B991A94();

    v15 = swift_getKeyPath();
    v16 = (v9 + *(v3 + 36));
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066C38) + 28);
    v18 = *MEMORY[0x277CE1048];
    v19 = sub_24BAA996C();
    (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
    *v16 = swift_getKeyPath();
    *v9 = v23;
    v9[1] = KeyPath;
    v9[2] = v12;
    v9[3] = v15;
    v9[4] = v14;
    sub_24BA58190(v9, v11);
    sub_24B8F3208(v11, v6, &qword_27F069E90);
    v20 = v24;
    sub_24B8F3208(v6, v24, &qword_27F069E90);
    v21 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069EF8) + 48);
    *v21 = 0;
    *(v21 + 8) = 1;
    sub_24B8F35E4(v11, &qword_27F069E90);
    return sub_24B8F35E4(v6, &qword_27F069E90);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA51E5C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA554B8@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069EC0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v52 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v53 = &v44 - v4;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  *&v64[0] = sub_24BAA7C2C();
  *(&v64[0] + 1) = v5;
  v44 = sub_24B8F5E3C();
  v6 = sub_24BAA93CC();
  v8 = v7;
  v10 = v9;
  sub_24BAA916C();
  v11 = sub_24BAA939C();
  v48 = v12;
  v49 = v11;
  v14 = v13;
  v50 = v15;

  sub_24B900910(v6, v8, v10 & 1);

  v47 = sub_24BAA988C();
  KeyPath = swift_getKeyPath();
  v45 = v14 & 1;
  LOBYTE(v64[0]) = v14 & 1;
  *&v64[0] = sub_24BA55908();
  *(&v64[0] + 1) = v16;
  v17 = sub_24BAA93CC();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = swift_getKeyPath();
  v25 = sub_24BAA927C();
  v26 = swift_getKeyPath();
  v27 = v21 & 1;
  LOBYTE(v64[0]) = v21 & 1;
  v28 = sub_24BAA989C();
  v29 = swift_getKeyPath();
  *&v54 = v17;
  *(&v54 + 1) = v19;
  LOBYTE(v55) = v27;
  *(&v55 + 1) = v23;
  *&v56 = v24;
  BYTE8(v56) = 0;
  *&v57 = v26;
  *(&v57 + 1) = v25;
  LOWORD(v58) = 256;
  *(&v58 + 2) = *&v62[7];
  WORD3(v58) = v63;
  *(&v58 + 1) = v29;
  v59 = v28;
  *&v66 = sub_24BA55908();
  *(&v66 + 1) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069EC8);
  sub_24BA5804C();
  v31 = v53;
  sub_24BAA959C();

  v64[2] = v56;
  v64[3] = v57;
  v64[4] = v58;
  v65 = v59;
  v64[0] = v54;
  v64[1] = v55;
  sub_24B8F35E4(v64, &qword_27F069EC8);
  v32 = v52;
  sub_24B8F3208(v31, v52, &qword_27F069EC0);
  v33 = v48;
  v34 = v49;
  *&v66 = v49;
  *(&v66 + 1) = v48;
  LOBYTE(v31) = v45;
  LOBYTE(v67) = v45;
  *(&v67 + 1) = *v62;
  DWORD1(v67) = *&v62[3];
  v36 = v50;
  v35 = v51;
  *(&v67 + 1) = v50;
  LOWORD(v68) = 256;
  *(&v68 + 2) = v60;
  WORD3(v68) = v61;
  v37 = KeyPath;
  v38 = v47;
  *(&v68 + 1) = KeyPath;
  v69 = v47;
  v39 = v66;
  v40 = v67;
  v41 = v68;
  *(v51 + 48) = v47;
  v35[1] = v40;
  v35[2] = v41;
  *v35 = v39;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069EE8);
  sub_24B8F3208(v32, v35 + *(v42 + 48), &qword_27F069EC0);
  sub_24B8F3208(&v66, &v54, &qword_27F069EF0);
  sub_24B8F35E4(v53, &qword_27F069EC0);
  sub_24B8F35E4(v32, &qword_27F069EC0);
  *&v54 = v34;
  *(&v54 + 1) = v33;
  LOBYTE(v55) = v31;
  *(&v55 + 1) = *v62;
  DWORD1(v55) = *&v62[3];
  *(&v55 + 1) = v36;
  LOWORD(v56) = 256;
  *(&v56 + 2) = v60;
  WORD3(v56) = v61;
  *(&v56 + 1) = v37;
  *&v57 = v38;
  return sub_24B8F35E4(&v54, &qword_27F069EF0);
}

uint64_t sub_24BA55908()
{
  if (!*(v0 + *(type metadata accessor for AddTriggersView() + 20)))
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA51E5C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  sub_24B984444();
  v1 = sub_24B8D7188();

  if (v1)
  {
    v2 = [v1 mode];

    v3 = [v2 semanticType];

    if (v3 > 3)
    {
      if (v3 <= 5)
      {
        if (v3 == 4)
        {
          if (qword_27F063110 == -1)
          {
            return sub_24BAA7C2C();
          }
        }

        else if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }

        goto LABEL_34;
      }

      if (v3 != 6)
      {
        if (v3 != 7)
        {
          if (v3 == 8)
          {
            if (qword_27F063110 == -1)
            {
              return sub_24BAA7C2C();
            }

            goto LABEL_34;
          }

          goto LABEL_11;
        }

        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }

LABEL_34:
        swift_once();
        return sub_24BAA7C2C();
      }

LABEL_28:
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_34;
    }

    if (v3 > 1)
    {
      goto LABEL_28;
    }

    if (!v3)
    {
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_34;
    }

    if (v3 == 1)
    {
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_34;
    }
  }

  else
  {
  }

LABEL_11:
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24BAAD5B0;

  sub_24B984444();
  v5 = sub_24B8D7188();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 mode];

    v8 = [v7 name];
    v9 = sub_24BAAA01C();
    v11 = v10;
  }

  else
  {

    v9 = 0;
    v11 = 0xE000000000000000;
  }

  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_24B8F6A20();
  *(v4 + 32) = v9;
  *(v4 + 40) = v11;
  v12 = sub_24BAA9FEC();

  return v12;
}

uint64_t sub_24BA55EC0(uint64_t a1)
{
  v2 = sub_24BAA8DCC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068FB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_24BAA8DAC();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00);
  sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
  sub_24BAA833C();
  v7 = sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  MEMORY[0x24C24EEC0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24BA560AC(uint64_t a1)
{
  v2 = type metadata accessor for AddTriggersView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v9[0] = sub_24BAA7C2C();
  v9[1] = v5;
  sub_24BA594FC(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AddTriggersView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_24BA595C0(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for AddTriggersView);
  sub_24B8F5E3C();
  return sub_24BAA9A7C();
}

uint64_t sub_24BA56260()
{
  if (qword_27F0630E0 != -1)
  {
    swift_once();
  }

  v0 = qword_27F077020;
  v1 = *(qword_27F077020 + 24);
  *(qword_27F077020 + 24) = 0;
  *(v0 + 32) = 0;
  result = sub_24BA43CAC(v1);
  if (!*(v0 + 24))
  {
    v6 = MEMORY[0x277D84F90];
    v3 = sub_24BA4083C();
    sub_24B8E35A0(v3);
    v4 = sub_24BA44084();
    sub_24B8E35A0(v4);
    sub_24BA415D4(v6, v5);
  }

  return result;
}

uint64_t sub_24BA56318(uint64_t a1, uint64_t a2)
{
  v4 = sub_24BAA868C();
  MEMORY[0x28223BE20](v4 - 8);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940);
  MEMORY[0x28223BE20](v30);
  v29 = &v28 - v6;
  v7 = type metadata accessor for Trigger(0);
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064AA0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Trigger.Schedule(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B8F3208(a1, v12, &qword_27F064AA0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_24B8F35E4(v12, &qword_27F064AA0);
    v17 = a2;
  }

  else
  {
    sub_24BA595C0(v12, v16, type metadata accessor for Trigger.Schedule);
    if (!*(a2 + *(type metadata accessor for AddTriggersView() + 20)))
    {
      type metadata accessor for ActivityConfigViewModel();
      sub_24BA51E5C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
      result = sub_24BAA86DC();
      __break(1u);
      return result;
    }

    v17 = a2;
    sub_24BA594FC(v16, v9, type metadata accessor for Trigger.Schedule);
    swift_storeEnumTagMultiPayload();

    sub_24B984444();
    v18 = sub_24B8DF718();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_24B99A4A0(0, v18[2] + 1, 1, v18);
    }

    v20 = v18[2];
    v19 = v18[3];
    if (v20 >= v19 >> 1)
    {
      v18 = sub_24B99A4A0(v19 > 1, v20 + 1, 1, v18);
    }

    v18[2] = v20 + 1;
    sub_24BA595C0(v9, v18 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v20, type metadata accessor for Trigger);
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA51E5C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    sub_24BAA814C();
    sub_24BAA816C();

    sub_24B984444();
    sub_24B8DFC94(v18);

    sub_24BA59564(v16);
  }

  v21 = [objc_opt_self() currentDevice];
  v22 = [v21 userInterfaceIdiom];

  if (v22 == 1)
  {
    sub_24BA514C4();
  }

  else
  {
    v23 = v29;
    sub_24BA8DA5C(v29);
    MEMORY[0x24C24FC10](v30);
    sub_24BAA867C();
    sub_24BAA9B6C();
    sub_24B8F35E4(v23, &qword_27F063940);
  }

  v24 = (v17 + *(type metadata accessor for AddTriggersView() + 24));
  v25 = *v24;
  v26 = v24[1];
  LOBYTE(v24) = *(v24 + 16);
  v33 = v25;
  v34 = v26;
  v35 = v24;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  return sub_24BAA9B6C();
}

uint64_t sub_24BA56898(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = sub_24BAA868C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for Trigger(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v4)
  {
LABEL_8:
    sub_24BA8DA5C(v9);
    MEMORY[0x24C24FC10](v7);
    sub_24BAA867C();
    sub_24BAA9B6C();
    sub_24B8F35E4(v9, &qword_27F063940);
    v19 = (a2 + *(type metadata accessor for AddTriggersView() + 28));
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v19) = *(v19 + 16);
    v27[0] = v20;
    v27[1] = v21;
    v28 = v19;
    v29 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
    return sub_24BAA9B6C();
  }

  v25 = v5;
  if (*(a2 + *(type metadata accessor for AddTriggersView() + 20)))
  {
    v14 = *(a1 + 16);
    *v13 = *a1;
    *(v13 + 1) = v14;
    *(v13 + 4) = *(a1 + 32);
    *(v13 + 5) = v4;
    *(v13 + 3) = *(a1 + 48);
    swift_storeEnumTagMultiPayload();
    sub_24B8F3208(a1, v27, &qword_27F067650);
    sub_24B8F3208(a1, v27, &qword_27F067650);

    sub_24B984444();
    v15 = sub_24B8DF718();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = a2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_24B99A4A0(0, v15[2] + 1, 1, v15);
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      v15 = sub_24B99A4A0(v17 > 1, v18 + 1, 1, v15);
    }

    v15[2] = v18 + 1;
    sub_24BA595C0(v13, v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v18, type metadata accessor for Trigger);
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA51E5C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    sub_24BAA814C();
    sub_24BAA816C();

    sub_24B984444();
    sub_24B8DFC94(v15);

    sub_24B8F35E4(a1, &qword_27F067650);

    a2 = v26;
    goto LABEL_8;
  }

  type metadata accessor for ActivityConfigViewModel();
  sub_24BA51E5C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);

  v23 = v25;
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24BA56CDC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_24BAA868C();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for Trigger(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
LABEL_8:
    sub_24BA8DA5C(v11);
    MEMORY[0x24C24FC10](v9);
    sub_24BAA867C();
    sub_24BAA9B6C();
    sub_24B8F35E4(v11, &qword_27F063940);
    v21 = (a4 + *(type metadata accessor for AddTriggersView() + 32));
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v21) = *(v21 + 16);
    v30 = v22;
    v31 = v23;
    v32 = v21;
    v29 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
    return sub_24BAA9B6C();
  }

  v16 = *(type metadata accessor for AddTriggersView() + 20);
  v28 = a4;
  if (*(a4 + v16))
  {
    *v15 = a1;
    v15[8] = a2 & 1;
    *(v15 + 2) = a3;
    swift_storeEnumTagMultiPayload();
    sub_24B91FA04(a1, a2, a3);

    v17 = a1;
    v27 = a3;
    sub_24B984444();
    v18 = sub_24B8DF718();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_24B99A4A0(0, v18[2] + 1, 1, v18);
    }

    v20 = v18[2];
    v19 = v18[3];
    if (v20 >= v19 >> 1)
    {
      v18 = sub_24B99A4A0(v19 > 1, v20 + 1, 1, v18);
    }

    v18[2] = v20 + 1;
    sub_24BA595C0(v15, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v20, type metadata accessor for Trigger);
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA51E5C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    sub_24BAA814C();
    sub_24BAA816C();

    sub_24B984444();
    sub_24B8DFC94(v18);

    a4 = v28;
    goto LABEL_8;
  }

  type metadata accessor for ActivityConfigViewModel();
  sub_24BA51E5C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  v25 = a1;
  v26 = a3;
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24BA570E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069DB8);
  sub_24BA5717C();
  return sub_24BAA84CC();
}

unint64_t sub_24BA5717C()
{
  result = qword_27F069DC0;
  if (!qword_27F069DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069DB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069DC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068FA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069DD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069DD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069DE0);
    sub_24BAA862C();
    sub_24B8F384C(&qword_27F069DE8, &qword_27F069DE0);
    sub_24BA51E5C(&qword_27F064860, MEMORY[0x277CDDAB8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24B8F5E3C();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068FB0);
    sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069DC0);
  }

  return result;
}

unint64_t sub_24BA57434()
{
  result = qword_27F069DF8;
  if (!qword_27F069DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069DF0);
    sub_24B8F384C(&qword_27F069E00, &qword_27F069E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069DF8);
  }

  return result;
}

uint64_t sub_24BA574E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069E98);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069E90);
  v9 = MEMORY[0x28223BE20](v8);
  v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v34 - v12);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;

  v36 = sub_24BAA994C();
  sub_24BAA916C();
  sub_24BAA91AC();
  v35 = sub_24BAA921C();

  KeyPath = swift_getKeyPath();
  if (*a1)
  {
    v17 = KeyPath;

    v18 = sub_24B991A94();

    v19 = swift_getKeyPath();
    v20 = (v13 + *(v8 + 36));
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066C38) + 28);
    v22 = *MEMORY[0x277CE1048];
    v23 = sub_24BAA996C();
    (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
    *v20 = swift_getKeyPath();
    v24 = v35;
    *v13 = v36;
    v13[1] = v17;
    v13[2] = v24;
    v13[3] = v19;
    v13[4] = v18;
    v25 = v15;
    sub_24BA58190(v13, v15);
    *v7 = sub_24BAA8BDC();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069EB0);
    sub_24BA578EC(a1, &v7[*(v26 + 44)]);
    LOBYTE(v21) = *(a1 + 88);
    v27 = v15;
    v28 = v37;
    sub_24B8F3208(v27, v37, &qword_27F069E90);
    v29 = v38;
    sub_24B8F3208(v7, v38, &qword_27F069E98);
    v30 = v39;
    sub_24B8F3208(v28, v39, &qword_27F069E90);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069FC0);
    sub_24B8F3208(v29, v30 + v31[12], &qword_27F069E98);
    v32 = v30 + v31[16];
    *v32 = 0;
    *(v32 + 8) = 0;
    *(v30 + v31[20]) = (v21 & 1) == 0;
    sub_24B8F35E4(v7, &qword_27F069E98);
    sub_24B8F35E4(v25, &qword_27F069E90);
    sub_24B8F35E4(v29, &qword_27F069E98);
    return sub_24B8F35E4(v28, &qword_27F069E90);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA51E5C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA578EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069EC0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v55 = &v46 - v6;
  v7 = *(a1 + 40);
  *&v66[0] = *(a1 + 32);
  *(&v66[0] + 1) = v7;
  v8 = sub_24B8F5E3C();

  v46 = v8;
  v9 = sub_24BAA93CC();
  v11 = v10;
  v13 = v12;
  sub_24BAA916C();
  v14 = sub_24BAA939C();
  v49 = v15;
  v50 = v14;
  v17 = v16;
  v51 = v18;

  sub_24B900910(v9, v11, v13 & 1);

  v54 = sub_24BAA988C();
  KeyPath = swift_getKeyPath();
  v47 = v17 & 1;
  LOBYTE(v66[0]) = v17 & 1;
  v19 = *(a1 + 56);
  *&v66[0] = *(a1 + 48);
  *(&v66[0] + 1) = v19;

  v20 = sub_24BAA93CC();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = swift_getKeyPath();
  v28 = sub_24BAA927C();
  v29 = swift_getKeyPath();
  v30 = v24 & 1;
  LOBYTE(v66[0]) = v24 & 1;
  v31 = sub_24BAA989C();
  v32 = swift_getKeyPath();
  *&v56 = v20;
  *(&v56 + 1) = v22;
  LOBYTE(v57) = v30;
  *(&v57 + 1) = v26;
  *&v58 = v27;
  BYTE8(v58) = 0;
  *&v59 = v29;
  *(&v59 + 1) = v28;
  LOWORD(v60) = 256;
  *(&v60 + 2) = *&v64[7];
  WORD3(v60) = v65;
  *(&v60 + 1) = v32;
  v61 = v31;
  v68 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069EC8);
  sub_24BA5804C();
  v33 = v55;
  sub_24BAA959C();
  v66[2] = v58;
  v66[3] = v59;
  v66[4] = v60;
  v67 = v61;
  v66[0] = v56;
  v66[1] = v57;
  sub_24B8F35E4(v66, &qword_27F069EC8);
  v34 = v52;
  sub_24B8F3208(v33, v52, &qword_27F069EC0);
  v35 = v49;
  v36 = v50;
  *&v68 = v50;
  *(&v68 + 1) = v49;
  LOBYTE(v26) = v47;
  LOBYTE(v69) = v47;
  *(&v69 + 1) = *v64;
  DWORD1(v69) = *&v64[3];
  v37 = v51;
  *(&v69 + 1) = v51;
  LOWORD(v70) = 256;
  *(&v70 + 2) = v62;
  WORD3(v70) = v63;
  v38 = KeyPath;
  v39 = v53;
  *(&v70 + 1) = KeyPath;
  v71 = v54;
  v40 = v68;
  v41 = v69;
  v42 = v70;
  *(v53 + 48) = v54;
  v39[1] = v41;
  v39[2] = v42;
  *v39 = v40;
  v43 = v39;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069EE8);
  sub_24B8F3208(v34, v43 + *(v44 + 48), &qword_27F069EC0);
  sub_24B8F3208(&v68, &v56, &qword_27F069EF0);
  sub_24B8F35E4(v55, &qword_27F069EC0);
  sub_24B8F35E4(v34, &qword_27F069EC0);
  *&v56 = v36;
  *(&v56 + 1) = v35;
  LOBYTE(v57) = v26;
  *(&v57 + 1) = *v64;
  DWORD1(v57) = *&v64[3];
  *(&v57 + 1) = v37;
  LOWORD(v58) = 256;
  *(&v58 + 2) = v62;
  WORD3(v58) = v63;
  *(&v58 + 1) = v38;
  *&v59 = v54;
  return sub_24B8F35E4(&v56, &qword_27F069EF0);
}

uint64_t sub_24BA57CD8@<X0>(uint64_t a1@<X8>)
{
  *&v18[9] = *(v1 + 73);
  v3 = v1[3];
  v17[2] = v1[2];
  v17[3] = v3;
  *v18 = v1[4];
  v4 = v1[1];
  v17[0] = *v1;
  v17[1] = v4;
  *a1 = *&v18[16];
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069FB0);
  sub_24BA574E4(v17, a1 + *(v5 + 44));
  v6 = sub_24BAA911C();
  sub_24BAA828C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069FB8);
  v16 = a1 + *(result + 36);
  *v16 = v6;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

unint64_t sub_24BA57E20()
{
  result = qword_27F066AB8;
  if (!qword_27F066AB8)
  {
    sub_24B8F37E8(255, &qword_27F066AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066AB8);
  }

  return result;
}

unint64_t sub_24BA57EA0()
{
  result = qword_27F069E58;
  if (!qword_27F069E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069E50);
    sub_24B8F384C(&qword_27F069E60, &qword_27F069E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069E58);
  }

  return result;
}

uint64_t sub_24BA57F50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069E08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24BA57FC4()
{
  v1 = *(type metadata accessor for AddTriggersView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24BA54970(v2);
}

unint64_t sub_24BA5804C()
{
  result = qword_27F069ED0;
  if (!qword_27F069ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069EC8);
    sub_24BA58104();
    sub_24B8F384C(&qword_27F0639C8, &qword_27F0639D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069ED0);
  }

  return result;
}

unint64_t sub_24BA58104()
{
  result = qword_27F069ED8;
  if (!qword_27F069ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069EE0);
    sub_24B95463C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069ED8);
  }

  return result;
}

uint64_t sub_24BA58190(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069E90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24BA58208()
{
  result = qword_27F069F58;
  if (!qword_27F069F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069F58);
  }

  return result;
}

unint64_t sub_24BA5825C()
{
  result = qword_27F069F60;
  if (!qword_27F069F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069F40);
    sub_24BA51E5C(&qword_27F069F68, type metadata accessor for CreateScheduleTriggerView);
    sub_24B8F384C(&qword_27F063E60, &qword_27F063E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069F60);
  }

  return result;
}

uint64_t sub_24BA58344(uint64_t a1)
{
  v3 = *(type metadata accessor for AddTriggersView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24BA56898(a1, v4);
}

uint64_t sub_24BA583B4(void *a1, uint64_t a2, void *a3)
{
  v7 = *(type metadata accessor for AddTriggersView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_24BA56CDC(a1, a2, a3, v8);
}

unint64_t sub_24BA5843C()
{
  result = qword_27F069F88;
  if (!qword_27F069F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069F88);
  }

  return result;
}

uint64_t sub_24BA58490()
{
  v0 = sub_24BAA7DCC();
  v1 = *(v0 - 8);
  v49 = v0;
  v50 = v1;
  v2 = MEMORY[0x28223BE20](v0);
  v59 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v51 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063488);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v48 = &v47 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v62 = &v47 - v11;
  MEMORY[0x28223BE20](v10);
  v61 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064B38);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064B40);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v47 - v17;
  v19 = sub_24BAA7C1C();
  v57 = *(v19 - 8);
  v58 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = (&v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v24 = (&v47 - v23);
  v25 = sub_24BAA7F2C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v60 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24BAA7EFC();
  v52 = v26;
  v55 = *(v26 + 56);
  v55(v18, 1, 1, v25);
  v28 = sub_24BAA7F3C();
  v53 = *(*(v28 - 8) + 56);
  v53(v15, 1, 1, v28);
  sub_24BAA7BFC();
  sub_24BAA7BAC();
  sub_24BAA7BEC();
  v54 = v25;
  v55(v18, 1, 1, v25);
  v53(v15, 1, 1, v28);
  v29 = v48;
  v30 = v49;
  sub_24BAA7BFC();
  sub_24BAA7BAC();
  sub_24BAA7BEC();
  v31 = v61;
  v53 = v24;
  sub_24BAA7EEC();
  v55 = v22;
  sub_24BAA7EEC();
  v32 = [objc_allocWithZone(MEMORY[0x277CCA978]) init];
  [v32 setDateStyle_];
  [v32 setTimeStyle_];
  v33 = v50;
  sub_24B8F3208(v31, v29, &qword_27F063488);
  v34 = *(v33 + 48);
  if (v34(v29, 1, v30) == 1)
  {
    v35 = v51;
    sub_24BAA7DBC();
    if (v34(v29, 1, v30) != 1)
    {
      sub_24B8F35E4(v29, &qword_27F063488);
    }
  }

  else
  {
    v35 = v51;
    (*(v33 + 32))(v51, v29, v30);
  }

  v36 = sub_24BAA7D8C();
  v37 = *(v33 + 8);
  v37(v35, v30);
  v38 = v56;
  sub_24B8F3208(v62, v56, &qword_27F063488);
  v39 = v34(v38, 1, v30);
  v40 = v59;
  if (v39 == 1)
  {
    sub_24BAA7DBC();
    if (v34(v38, 1, v30) != 1)
    {
      sub_24B8F35E4(v38, &qword_27F063488);
    }
  }

  else
  {
    (*(v33 + 32))(v59, v38, v30);
  }

  v41 = sub_24BAA7D8C();
  v37(v40, v30);
  v42 = [v32 stringFromDate:v36 toDate:v41];

  v43 = sub_24BAAA01C();
  sub_24B8F35E4(v62, &qword_27F063488);
  sub_24B8F35E4(v61, &qword_27F063488);
  v44 = v58;
  v45 = *(v57 + 8);
  v45(v55, v58);
  v45(v53, v44);
  (*(v52 + 8))(v60, v54);
  return v43;
}

uint64_t sub_24BA58CB4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v2 = sub_24BAA7C2C();
  v22 = v3;
  v23 = v2;
  sub_24BAA7C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24BAAD5B0;
  v5 = sub_24BA58490();
  v7 = v6;
  v8 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v9 = sub_24B8F6A20();
  *(v4 + 64) = v9;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v10 = sub_24BAA9FEC();
  v12 = v11;

  sub_24BAA7C2C();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24BAAD5B0;
  v14 = sub_24BA58490();
  *(v13 + 56) = v8;
  *(v13 + 64) = v9;
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  v16 = sub_24BAA9FEC();
  v18 = v17;

  v19 = sub_24BAA8AAC();
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA51E5C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86FC();
  *a1 = result;
  *(a1 + 8) = v21;
  *(a1 + 16) = 0x69662E6B636F6C63;
  *(a1 + 24) = 0xEA00000000006C6CLL;
  *(a1 + 32) = v23;
  *(a1 + 40) = v22;
  *(a1 + 48) = v10;
  *(a1 + 56) = v12;
  *(a1 + 64) = v16;
  *(a1 + 72) = v18;
  *(a1 + 80) = v19;
  *(a1 + 88) = 0;
  return result;
}

uint64_t sub_24BA58F58@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v2 = sub_24BAA7C2C();
  v4 = v3;
  v5 = sub_24BAA7C2C();
  v7 = v6;
  v8 = sub_24BAA7C2C();
  v10 = v9;
  v11 = sub_24BAA8AAC();
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA51E5C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86FC();
  *a1 = result;
  *(a1 + 8) = v13;
  strcpy((a1 + 16), "location.fill");
  *(a1 + 30) = -4864;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  *(a1 + 72) = v10;
  *(a1 + 80) = v11;
  *(a1 + 88) = 0;
  return result;
}

uint64_t sub_24BA5912C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v2 = sub_24BAA7C2C();
  v4 = v3;
  v5 = sub_24BAA7C2C();
  v7 = v6;
  v8 = sub_24BAA7C2C();
  v10 = v9;
  v11 = sub_24BAA8AAC();
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA51E5C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86FC();
  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 16) = 0xD000000000000013;
  *(a1 + 24) = 0x800000024BAC5830;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  *(a1 + 72) = v10;
  *(a1 + 80) = v11;
  *(a1 + 88) = 0;
  return result;
}

uint64_t objectdestroyTm_21()
{
  v1 = *(type metadata accessor for AddTriggersView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v7 = sub_24BAA868C();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  sub_24B900C14();

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24BA5948C(uint64_t a1)
{
  v3 = *(type metadata accessor for AddTriggersView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24BA56318(a1, v4);
}

uint64_t sub_24BA594FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24BA59564(uint64_t a1)
{
  v2 = type metadata accessor for Trigger.Schedule(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24BA595C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24BA59628(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24BA59670(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24BA5973C()
{
  result = qword_27F069FC8;
  if (!qword_27F069FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069FB8);
    sub_24B8F384C(&qword_27F069FD0, &qword_27F069FD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069FC8);
  }

  return result;
}

void sub_24BA59864(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v7 = v6;
  v8 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24BAAA4DC();
    sub_24B8F37E8(0, a4);
    sub_24B8F1128(a6, a4);
    sub_24BAAA24C();
    v8 = v27;
    v11 = v28;
    v12 = v29;
    v13 = v30;
    v14 = v31;
  }

  else
  {
    v15 = -1 << *(a3 + 32);
    v11 = a3 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(a3 + 56);

    v13 = 0;
  }

  v26 = v8;
  if (v8 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v18 = v13;
  v19 = v14;
  v20 = v13;
  if (v14)
  {
LABEL_12:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v8 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (v22)
    {
      while (1)
      {
        v32 = v22;
        v23 = a1(&v32);
        if (v7)
        {
          break;
        }

        if (v23)
        {
          goto LABEL_23;
        }

        v13 = v20;
        v14 = v21;
        v8 = v26;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_24BAAA56C())
        {
          sub_24B8F37E8(0, a4);
          swift_dynamicCast();
          v22 = v32;
          v20 = v13;
          v21 = v14;
          if (v32)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

LABEL_23:
    sub_24B8F0C5C();
  }

  else
  {
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= ((v12 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v19 = *(v11 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24BA59AB0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for LocationSuggestions.PointOfInterest(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_24BA5AFDC(v12, v10);
      v14 = a1(v10);
      if (v3)
      {
        return sub_24B9E4A48(v10);
      }

      if (v14)
      {
        break;
      }

      sub_24B9E4A48(v10);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_24B9E49E4(v10, v18);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_24BA59C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_24BAA7E4C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24BA59CA0()
{
  sub_24BAAA7FC();
  sub_24BAAA07C();
  sub_24BAAA07C();
  MEMORY[0x24C2508C0](*(v0 + 32));
  sub_24BAAA3DC();
  sub_24BAA7E4C();
  sub_24BA5AD6C(&unk_27F063400, MEMORY[0x277CC95F0]);
  sub_24BAA9F1C();
  return sub_24BAAA84C();
}

uint64_t sub_24BA59D70()
{
  sub_24BAAA07C();
  sub_24BAAA07C();
  MEMORY[0x24C2508C0](*(v0 + 32));
  sub_24BAAA3DC();
  sub_24BAA7E4C();
  sub_24BA5AD6C(&unk_27F063400, MEMORY[0x277CC95F0]);
  return sub_24BAA9F1C();
}

uint64_t sub_24BA59E24()
{
  sub_24BAAA7FC();
  sub_24BAAA07C();
  sub_24BAAA07C();
  MEMORY[0x24C2508C0](*(v0 + 32));
  sub_24BAAA3DC();
  sub_24BAA7E4C();
  sub_24BA5AD6C(&unk_27F063400, MEMORY[0x277CC95F0]);
  sub_24BAA9F1C();
  return sub_24BAAA84C();
}

uint64_t sub_24BA59EF4()
{
  type metadata accessor for LocationSuggestions(0);
  v0 = swift_allocObject();
  result = sub_24BA59FA8();
  qword_27F077080 = v0;
  return result;
}

uint64_t sub_24BA59F34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  return v1;
}

uint64_t sub_24BA59FA8()
{
  v1 = sub_24BAA7E4C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A020);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  v9 = OBJC_IVAR____TtC15FocusSettingsUI19LocationSuggestions__locations;
  aBlock[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067610);
  sub_24BAA817C();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = [objc_allocWithZone(MEMORY[0x277D265C0]) init];
  v11 = [objc_allocWithZone(MEMORY[0x277D265C8]) init];
  v12 = [objc_allocWithZone(MEMORY[0x277D265B8]) initWithConnector:v10 networkRequester:v11];

  *(v0 + 16) = v12;
  v13 = MapsSuggestionsCurrentBestLocation();
  if (v13)
  {
    v14 = v13;
    v32 = v1;
    [v13 coordinate];
    v16 = v15;
    [v14 coordinate];
    if ([objc_opt_self() isLocationShiftRequiredForCoordinate_])
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    [v14 setReferenceFrame_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F066B70);
    v19 = type metadata accessor for LocationSuggestions.PointOfInterest(0);
    v20 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_24BAAD5B0;
    v22 = v21 + v20;
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v23 = sub_24BAA7C2C();
    v25 = v24;
    v26 = v14;
    sub_24BAA7E3C();
    *v22 = v23;
    *(v22 + 8) = v25;
    *(v22 + 16) = 0;
    *(v22 + 24) = 0xE000000000000000;
    *(v22 + 32) = 0;
    *(v22 + 40) = v26;
    (*(v2 + 32))(v22 + *(v19 + 32), v4, v32);
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = v21;

    sub_24BAA81CC();
  }

  v27 = *(v0 + 16);
  aBlock[4] = sub_24BA5B040;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B912988;
  aBlock[3] = &block_descriptor_14;
  v28 = _Block_copy(aBlock);

  v29 = v27;

  [v29 readMeCardWithHandler_];
  _Block_release(v28);

  return v0;
}

uint64_t sub_24BA5A45C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = sub_24BAA81AC();
  sub_24B8E37BC(a2);
  v3(&v5, 0);
}

uint64_t sub_24BA5A50C(double a1, double a2)
{
  v4 = type metadata accessor for LocationSuggestions.PointOfInterest(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v12 = v21;
  v13 = *(v21 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = v21 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    while (v14 < *(v12 + 16))
    {
      sub_24BA5AFDC(v15 + *(v5 + 72) * v14, v8);
      v16 = *(v8 + 5);
      [v16 coordinate];
      if (v17 - a1 < 0.000001)
      {
        [v16 coordinate];
        if (v18 - a2 < 0.000001)
        {

          sub_24B9E49E4(v8, v10);
          v19 = v10[32];
          sub_24B9E4A48(v10);
          return v19;
        }
      }

      ++v14;
      result = sub_24B9E4A48(v8);
      if (v13 == v14)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    return 5;
  }

  return result;
}

uint64_t sub_24BA5A70C()
{
  v1 = OBJC_IVAR____TtC15FocusSettingsUI19LocationSuggestions__locations;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A020);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_24BA5A7E4()
{
  sub_24BA5A884();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24BA5A884()
{
  if (!qword_27F069FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067610);
    v0 = sub_24BAA81DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F069FF8);
    }
  }
}

uint64_t sub_24BA5A8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24BAA7E4C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24BA5A9BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24BAA7E4C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24BA5AA80()
{
  result = sub_24B8F37E8(319, &qword_27F064520);
  if (v1 <= 0x3F)
  {
    result = sub_24BAA7E4C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationSuggestions.PointOfInterest.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationSuggestions.PointOfInterest.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24BA5AC88()
{
  result = qword_27F06A010;
  if (!qword_27F06A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A010);
  }

  return result;
}

uint64_t sub_24BA5AD6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24BA5ADB4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LocationSuggestions(0);
  result = sub_24BAA814C();
  *a1 = result;
  return result;
}

uint64_t sub_24BA5ADF4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  *a1 = v3;
  return result;
}

uint64_t sub_24BA5AE74()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24BAA81CC();
}

uint64_t sub_24BA5AEF0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_24BAAA78C() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_24BAAA78C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  sub_24B8F37E8(0, &unk_27F067FA0);
  if ((sub_24BAAA3CC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for LocationSuggestions.PointOfInterest(0);

  return sub_24BAA7E0C();
}

uint64_t sub_24BA5AFDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationSuggestions.PointOfInterest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24BA5B05C(void *a1)
{
  v2 = sub_24BAA9E2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24BAA9E5C();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_24BAA7E4C();
  v10 = *(v74 - 8);
  v11 = MEMORY[0x28223BE20](v74);
  v64 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v73 = &v56 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067E78);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v56 - v15;
  v71 = type metadata accessor for LocationSuggestions.PointOfInterest(0);
  v77 = *(v71 - 8);
  v17 = MEMORY[0x28223BE20](v71);
  v82 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v17);
  v75 = &v56 - v20;
  if (a1)
  {
    v62 = v2;
    v56 = a1;
    v21 = [v56 shortcutsForAll];
    sub_24B8F37E8(0, &qword_27F06A038);
    v22 = sub_24BAAA12C();

    v76 = v22;
    if (v22 >> 62)
    {
      goto LABEL_38;
    }

    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v24 = v71;
    v57 = v9;
    v58 = v7;
    v59 = v5;
    v60 = v6;
    v61 = v3;
    v6 = MEMORY[0x277D84F90];
    if (v23)
    {
      v9 = 0;
      v5 = v76;
      v80 = v76 & 0xFFFFFFFFFFFFFF8;
      v81 = v76 & 0xC000000000000001;
      v72 = (v10 + 32);
      v78 = v23;
      v79 = (v77 + 56);
      v3 = (v77 + 48);
      do
      {
        if (v81)
        {
          v25 = MEMORY[0x24C2506E0](v9, v5);
        }

        else
        {
          if (v9 >= *(v80 + 16))
          {
            goto LABEL_37;
          }

          v25 = *&v5[8 * v9 + 32];
        }

        v26 = v25;
        v7 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          v23 = sub_24BAAA52C();
          goto LABEL_4;
        }

        if ([v25 isSetupPlaceholder])
        {
          v27 = 1;
        }

        else
        {
          v28 = [v26 geoMapItem];
          if (v28)
          {
            v29 = v28;
            v30 = MapsSuggestionsLocationForMapItem();
            if (v30)
            {
              v10 = v30;
              v31 = [v26 storageIdentifier];
              if (v31)
              {
                v32 = v31;
                v33 = v64;
                sub_24BAA7E1C();

                v65 = v10;
                v70 = *v72;
                v34 = v33;
                v24 = v71;
                v70(v73, v34, v74);
                v10 = v65;
                [v65 coordinate];
                v36 = v35;
                [v10 coordinate];
                if ([objc_opt_self() isLocationShiftRequiredForCoordinate_])
                {
                  v38 = 2;
                }

                else
                {
                  v38 = 1;
                }

                [v10 setReferenceFrame_];
                v39 = [v26 title];
                v69 = sub_24BAAA01C();
                v68 = v40;

                v41 = [v26 subtitle];
                v67 = sub_24BAAA01C();
                v66 = v42;

                v43 = [v26 type];
                if (v43 >= 6)
                {
                  v44 = 4;
                }

                else
                {
                  v44 = 0x30402010404uLL >> (8 * v43);
                }

                v70(&v16[*(v24 + 32)], v73, v74);
                v27 = 0;
                v45 = v68;
                *v16 = v69;
                *(v16 + 1) = v45;
                v46 = v66;
                *(v16 + 2) = v67;
                *(v16 + 3) = v46;
                v16[32] = v44;
                *(v16 + 5) = v10;
                v5 = v76;
                v23 = v78;
                goto LABEL_27;
              }

              v23 = v78;
            }
          }

          v27 = 1;
          v5 = v76;
        }

LABEL_27:
        (*v79)(v16, v27, 1, v24);

        if ((*v3)(v16, 1, v24) == 1)
        {
          sub_24B9E497C(v16);
        }

        else
        {
          v47 = v75;
          sub_24B9E49E4(v16, v75);
          sub_24B9E49E4(v47, v82);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_24B99ABD0(0, v6[2] + 1, 1, v6);
          }

          v49 = v6[2];
          v48 = v6[3];
          v10 = (v49 + 1);
          if (v49 >= v48 >> 1)
          {
            v6 = sub_24B99ABD0(v48 > 1, v49 + 1, 1, v6);
          }

          v6[2] = v10;
          sub_24B9E49E4(v82, v6 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v49);
          v23 = v78;
        }

        ++v9;
      }

      while (v7 != v23);
    }

    sub_24B8F37E8(0, &qword_27F0644F0);
    v50 = sub_24BAAA33C();
    v51 = swift_allocObject();
    *(v51 + 16) = v63;
    *(v51 + 24) = v6;
    aBlock[4] = sub_24BA5B9B8;
    aBlock[5] = v51;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24B97ACC4;
    aBlock[3] = &block_descriptor_21_1;
    v52 = _Block_copy(aBlock);

    v53 = v57;
    sub_24BAA9E4C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24BA5AD6C(&qword_27F063470, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
    sub_24B97C674();
    v54 = v59;
    v55 = v62;
    sub_24BAAA48C();
    MEMORY[0x24C250400](0, v53, v54, v52);
    _Block_release(v52);

    (v61[1])(v54, v55);
    return (*(v58 + 1))(v53, v60);
  }

  return result;
}

uint64_t sub_24BA5B978()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__n128 __swift_memcpy163_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 159) = *(a2 + 159);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_24BA5BA04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 163))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24BA5BA4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 162) = 0;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 163) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 163) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24BA5BAE8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A040);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  *v6 = sub_24BAA8BCC();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A048);
  sub_24BA5BC5C(v1, &v6[*(v7 + 44)]);
  v8 = sub_24BAA90CC();
  sub_24BAA828C();
  v9 = &v6[*(v4 + 44)];
  *v9 = v8;
  *(v9 + 1) = v10;
  *(v9 + 2) = v11;
  *(v9 + 3) = v12;
  *(v9 + 4) = v13;
  v9[40] = 0;
  v14 = *(v1 + 160);
  v15 = objc_opt_self();
  v16 = &selRef_systemBackgroundColor;
  if ((v14 & 1) == 0)
  {
    v16 = &selRef_systemGroupedBackgroundColor;
  }

  v17 = [v15 *v16];
  v18 = sub_24BAA973C();
  v19 = sub_24BAA90BC();
  sub_24B90294C(v6, a1, &qword_27F06A040);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A050);
  v21 = a1 + *(result + 36);
  *v21 = v18;
  *(v21 + 8) = v19;
  return result;
}

uint64_t sub_24BA5BC5C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = type metadata accessor for AppExceptionsView(0);
  MEMORY[0x28223BE20](v105);
  v106 = (&v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A058);
  v5 = MEMORY[0x28223BE20](v111);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  *&v107 = &v97 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A060);
  MEMORY[0x28223BE20](v116);
  v117 = &v97 - v9;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A068);
  MEMORY[0x28223BE20](v108);
  v109 = (&v97 - v10);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A070);
  MEMORY[0x28223BE20](v115);
  v110 = &v97 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A078);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v118 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v121 = &v97 - v15;
  *&v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A080);
  *&v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v104 = &v97 - v16;
  v17 = sub_24BAA8D9C();
  v102 = *(v17 - 8);
  v103 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A088);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v97 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A090);
  v25 = MEMORY[0x28223BE20](v24);
  v101 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v97 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A098);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v114 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = *(a1 + 161);
  v119 = a2;
  v120 = &v97 - v33;
  if (v32 == 2 || (v32 & 1) == 0)
  {
    (*(v112 + 56))();
  }

  else
  {
    v100 = v7;
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v132 = sub_24BAA7C2C();
    v133 = v34;
    v123 = *(a1 + 120);
    LOBYTE(v124) = *(a1 + 136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E90);
    sub_24BAA9B8C();
    v123 = *v122;
    LOBYTE(v124) = v122[16];
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066D48);
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A0D8);
    v97 = sub_24BA5D6A0();
    sub_24B8F384C(&qword_27F06A0F0, &qword_27F06A0D8);
    sub_24B8F5E3C();
    sub_24BAA9ADC();
    sub_24BAA8D8C();
    sub_24B8F384C(&qword_27F06A0F8, &qword_27F06A088);
    v35 = v103;
    sub_24BAA947C();
    (*(v102 + 8))(v19, v35);
    (*(v21 + 8))(v23, v20);
    v36 = sub_24BAA90AC();
    v37 = &v28[*(v24 + 36)];
    *v37 = v36;
    *(v37 + 8) = 0u;
    *(v37 + 24) = 0u;
    v37[40] = 1;
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v102 = v134;
    v103 = v132;
    v98 = v137;
    v99 = v136;
    LOBYTE(v123) = 1;
    v122[0] = v133;
    LOBYTE(v130) = v135;
    v38 = v101;
    sub_24B8F3208(v28, v101, &qword_27F06A090);
    v39 = v123;
    v40 = v122[0];
    v41 = v130;
    v42 = v104;
    sub_24B8F3208(v38, v104, &qword_27F06A090);
    v43 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A100) + 48);
    *v43 = 0;
    *(v43 + 8) = v39;
    v44 = v102;
    *(v43 + 16) = v103;
    *(v43 + 24) = v40;
    *(v43 + 32) = v44;
    *(v43 + 40) = v41;
    v45 = v98;
    *(v43 + 48) = v99;
    *(v43 + 56) = v45;
    sub_24B8F35E4(v28, &qword_27F06A090);
    sub_24B8F35E4(v38, &qword_27F06A090);
    v46 = v120;
    sub_24B90294C(v42, v120, &qword_27F06A080);
    (*(v112 + 56))(v46, 0, 1, v113);
    v7 = v100;
  }

  v123 = *(a1 + 120);
  LOBYTE(v124) = *(a1 + 136);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066E90);
  MEMORY[0x24C24FC10](v122, v47);
  v48 = v121;
  if (v122[0] == 2)
  {
    swift_storeEnumTagMultiPayload();
    sub_24BA5D074();
    sub_24BAA8D0C();
  }

  else
  {
    if (v122[0])
    {
      v123 = a1[3];
      *&v124 = *(a1 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066408);
      sub_24BAA9B8C();
      v113 = *v122;
      v49 = *&v122[16];
      v123 = *(a1 + 72);
      *&v124 = *(a1 + 11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120);
      sub_24BAA9B8C();
      v50 = *v122;
      v112 = *&v122[8];
      v123 = a1[6];
      LOBYTE(v124) = *(a1 + 112);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
      sub_24BAA9B8C();
      v51 = *v122;
      v52 = v122[16];
      v53 = *(a1 + 160);
      KeyPath = swift_getKeyPath();
      v55 = v7;
      v56 = v106;
      *v106 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
      swift_storeEnumTagMultiPayload();
      v57 = v105;
      v58 = v56 + *(v105 + 20);
      v59 = v112;
      *v58 = v113;
      *(v58 + 16) = v49;
      v48 = v121;
      v60 = v56 + v57[6];
      *v60 = v50;
      *(v60 + 8) = v59;
      v61 = v56 + v57[7];
      *v61 = v51;
      *(v61 + 16) = v52;
      *(v56 + v57[8]) = v53;
      v62 = (v56 + v57[9]);
      type metadata accessor for ActivityConfigViewModel();
      sub_24BA5D2FC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
      *v62 = sub_24BAA86FC();
      v62[1] = v63;
      LOBYTE(v62) = *(a1 + 162);
      v64 = swift_getKeyPath();
      v65 = swift_allocObject();
      *(v65 + 16) = v62 & 1;
      sub_24BA5D5CC(v56, v55);
      v66 = (v55 + *(v111 + 36));
      *v66 = v64;
      v66[1] = sub_24B9027F8;
      v66[2] = v65;
      v67 = v107;
      sub_24BA5D630(v55, v107);
      sub_24B8F3208(v67, v109, &qword_27F06A058);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A0B0);
      sub_24BA5D100();
      sub_24BA5D20C();
      v68 = v110;
      sub_24BAA8D0C();
      sub_24B8F3208(v68, v117, &qword_27F06A070);
      swift_storeEnumTagMultiPayload();
      sub_24BA5D074();
      sub_24BAA8D0C();
      sub_24B8F35E4(v68, &qword_27F06A070);
      v69 = v67;
      v70 = &qword_27F06A058;
    }

    else
    {
      v123 = *a1;
      *&v124 = *(a1 + 2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066408);
      sub_24BAA9B8C();
      v113 = *v122;
      v71 = *&v122[16];
      v123 = *(a1 + 24);
      *&v124 = *(a1 + 5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066300);
      sub_24BAA9B8C();
      *&v112 = *v122;
      v107 = *&v122[8];
      v123 = a1[6];
      LOBYTE(v124) = *(a1 + 112);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
      sub_24BAA9B8C();
      v72 = *v122;
      v73 = v122[16];
      type metadata accessor for ActivityConfigViewModel();
      sub_24BA5D2FC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
      v74 = sub_24BAA86FC();
      v76 = v75;
      v77 = *(a1 + 162);
      v78 = *(a1 + 160);
      v79 = swift_getKeyPath();
      v80 = swift_allocObject();
      v81 = v77 & 1;
      v48 = v121;
      *(v80 + 16) = v81;
      v123 = v113;
      *&v124 = v71;
      *(&v124 + 1) = v112;
      v125 = v107;
      *&v126 = v74;
      *(&v126 + 1) = v76;
      v127 = v72;
      LOBYTE(v128) = v73;
      BYTE1(v128) = v78;
      *(&v128 + 2) = v130;
      WORD3(v128) = v131;
      *(&v128 + 1) = v79;
      *&v129 = sub_24B90CF38;
      *(&v129 + 1) = v80;
      v82 = v124;
      v83 = v109;
      *v109 = v113;
      v83[1] = v82;
      v84 = v125;
      v85 = v126;
      v86 = v129;
      v83[5] = v128;
      v83[6] = v86;
      v87 = v127;
      v83[3] = v85;
      v83[4] = v87;
      v83[2] = v84;
      swift_storeEnumTagMultiPayload();
      sub_24B8F3208(&v123, v122, &qword_27F06A0B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A0B0);
      sub_24BA5D100();
      sub_24BA5D20C();
      v88 = v110;
      sub_24BAA8D0C();
      sub_24B8F3208(v88, v117, &qword_27F06A070);
      swift_storeEnumTagMultiPayload();
      sub_24BA5D074();
      sub_24BAA8D0C();
      sub_24B8F35E4(&v123, &qword_27F06A0B0);
      v69 = v88;
      v70 = &qword_27F06A070;
    }

    sub_24B8F35E4(v69, v70);
  }

  v89 = v120;
  v90 = v114;
  sub_24B8F3208(v120, v114, &qword_27F06A098);
  v91 = v118;
  sub_24B8F3208(v48, v118, &qword_27F06A078);
  v92 = v48;
  v93 = v119;
  sub_24B8F3208(v90, v119, &qword_27F06A098);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A0D0);
  sub_24B8F3208(v91, v93 + *(v94 + 48), &qword_27F06A078);
  v95 = v93 + *(v94 + 64);
  *v95 = 0;
  *(v95 + 8) = 1;
  sub_24B8F35E4(v92, &qword_27F06A078);
  sub_24B8F35E4(v89, &qword_27F06A098);
  sub_24B8F35E4(v91, &qword_27F06A078);
  return sub_24B8F35E4(v90, &qword_27F06A098);
}

uint64_t sub_24BA5CBF8@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A108);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A110);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v31 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v33 = sub_24BAA7C2C();
  v34 = v16;
  sub_24B8F5E3C();
  *v4 = sub_24BAA93CC();
  *(v4 + 1) = v17;
  v4[16] = v18 & 1;
  *(v4 + 3) = v19;
  *(v4 + 16) = 256;
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066D48);
  v21 = sub_24BA5D6A0();
  v33 = MEMORY[0x277CE0BD8];
  v34 = v20;
  v35 = MEMORY[0x277CE0BC8];
  v36 = v21;
  swift_getOpaqueTypeConformance2();
  sub_24BAA94DC();
  v22 = *(v2 + 8);
  v22(v4, v1);
  v33 = sub_24BAA7C2C();
  v34 = v23;
  *v4 = sub_24BAA93CC();
  *(v4 + 1) = v24;
  v4[16] = v25 & 1;
  *(v4 + 3) = v26;
  *(v4 + 16) = 257;
  sub_24BAA94DC();
  v22(v4, v1);
  sub_24B8F3208(v15, v10, &qword_27F06A110);
  v27 = v31;
  sub_24B8F3208(v13, v31, &qword_27F06A110);
  v28 = v32;
  sub_24B8F3208(v10, v32, &qword_27F06A110);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A118);
  sub_24B8F3208(v27, v28 + *(v29 + 48), &qword_27F06A110);
  sub_24B8F35E4(v13, &qword_27F06A110);
  sub_24B8F35E4(v15, &qword_27F06A110);
  sub_24B8F35E4(v27, &qword_27F06A110);
  return sub_24B8F35E4(v10, &qword_27F06A110);
}

unint64_t sub_24BA5D074()
{
  result = qword_27F06A0A0;
  if (!qword_27F06A0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A070);
    sub_24BA5D100();
    sub_24BA5D20C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A0A0);
  }

  return result;
}

unint64_t sub_24BA5D100()
{
  result = qword_27F06A0A8;
  if (!qword_27F06A0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A0B0);
    sub_24BA5D1B8();
    sub_24B8F384C(&qword_27F063F18, &qword_27F063F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A0A8);
  }

  return result;
}

unint64_t sub_24BA5D1B8()
{
  result = qword_27F06A0B8;
  if (!qword_27F06A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A0B8);
  }

  return result;
}

unint64_t sub_24BA5D20C()
{
  result = qword_27F06A0C0;
  if (!qword_27F06A0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A058);
    sub_24BA5D2FC(&qword_27F06A0C8, type metadata accessor for AppExceptionsView);
    sub_24B8F384C(&qword_27F063F18, &qword_27F063F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A0C0);
  }

  return result;
}

uint64_t sub_24BA5D2FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24BA5D344(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A140);
  MEMORY[0x28223BE20](v3);
  v5 = &v14[-v4];
  v6 = sub_24BAA89FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *v1;
  if (*(v1 + 8) == 1)
  {
    v14[15] = *v1;
  }

  else
  {

    sub_24BAAA2BC();
    v11 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();
    sub_24B8FFD5C(v10, 0);
    (*(v7 + 8))(v9, v6);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A148);
  (*(*(v12 - 8) + 16))(v5, a1, v12);
  swift_storeEnumTagMultiPayload();
  sub_24B8F384C(&qword_27F06A150, &qword_27F06A148);
  return sub_24BAA8D0C();
}

uint64_t sub_24BA5D5CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppExceptionsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24BA5D630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A058);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24BA5D6A0()
{
  result = qword_27F06A0E0;
  if (!qword_27F06A0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066D48);
    sub_24BA5D724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A0E0);
  }

  return result;
}

unint64_t sub_24BA5D724()
{
  result = qword_27F06A0E8;
  if (!qword_27F06A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A0E8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_24BA5D798(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24BA5D7E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_24BA5D838()
{
  result = qword_27F06A120;
  if (!qword_27F06A120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A050);
    sub_24BA5D8F0();
    sub_24B8F384C(&qword_27F063B18, &qword_27F063B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A120);
  }

  return result;
}

unint64_t sub_24BA5D8F0()
{
  result = qword_27F06A128;
  if (!qword_27F06A128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A040);
    sub_24B8F384C(&qword_27F06A130, &qword_27F06A138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A128);
  }

  return result;
}

unint64_t sub_24BA5D9C8()
{
  result = qword_27F06A158;
  if (!qword_27F06A158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A160);
    sub_24B8F384C(&qword_27F06A150, &qword_27F06A148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A158);
  }

  return result;
}

uint64_t sub_24BA5DAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A168);
  MEMORY[0x28223BE20](v26);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A170);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A178);
  v11 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v13 = &v24 - v12;
  v28 = a1;
  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A180);
  sub_24B8F384C(&qword_27F06A188, &qword_27F06A180);
  sub_24BAA92BC();
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v30 = sub_24BAA7C2C();
  v31 = v14;
  v15 = sub_24B8F384C(&qword_27F06A190, &qword_27F06A170);
  v16 = sub_24B8F5E3C();
  v17 = MEMORY[0x277D837D0];
  sub_24BAA952C();

  (*(v8 + 8))(v10, v7);
  v18 = [objc_opt_self() currentDevice];
  v19 = [v18 userInterfaceIdiom];

  v20 = sub_24BAA854C();
  v21 = MEMORY[0x277CDF998];
  if (v19 != 1)
  {
    v21 = MEMORY[0x277CDFA10];
  }

  (*(*(v20 - 8) + 104))(v6, *v21, v20);
  sub_24BA611B8(&qword_27F06A198, MEMORY[0x277CDFA28]);
  result = sub_24BAA9F5C();
  if (result)
  {
    v30 = v7;
    v31 = v17;
    v32 = v15;
    v33 = v16;
    swift_getOpaqueTypeConformance2();
    sub_24B8F384C(&qword_27F06A1A0, &qword_27F06A168);
    v23 = v25;
    sub_24BAA950C();
    sub_24B8F35E4(v6, &qword_27F06A168);
    return (*(v11 + 8))(v13, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA5DF4C@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, char *a3@<X8>)
{
  v70 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A1A8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v78 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v79 = v68 - v8;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A1B0);
  v69 = *(v84 - 8);
  v9 = MEMORY[0x28223BE20](v84);
  v83 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v81 = v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A1B8);
  v76 = *(v12 - 8);
  v77 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v82 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v80 = v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A1C0);
  v74 = *(v16 - 8);
  v75 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v73 = v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v68 - v19;
  v85 = a1;
  v86 = a2;
  v71 = a2;
  v21 = sub_24BAA8BCC();
  v92 = 1;
  sub_24BA5ED28(&v93);
  v98 = *&v94[16];
  v99 = *&v94[32];
  v100 = *&v94[48];
  v101 = *&v94[64];
  v96 = v93;
  v97 = *v94;
  v102[2] = *&v94[16];
  v102[3] = *&v94[32];
  v102[4] = *&v94[48];
  v102[5] = *&v94[64];
  v102[0] = v93;
  v102[1] = *v94;
  sub_24B8F3208(&v96, &v87, &qword_27F06A1C8);
  sub_24B8F35E4(v102, &qword_27F06A1C8);
  *&v91[39] = v98;
  *&v91[55] = v99;
  *&v91[71] = v100;
  *&v91[87] = v101;
  *&v91[7] = v96;
  *&v91[23] = v97;
  v93 = v21;
  v94[0] = v92;
  *&v94[33] = *&v91[32];
  *&v94[17] = *&v91[16];
  *&v94[1] = *v91;
  *&v95[15] = *(&v101 + 1);
  *v95 = *&v91[80];
  *&v94[65] = *&v91[64];
  *&v94[49] = *&v91[48];
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v68[3] = qword_27F077088;
  v87 = sub_24BAA7C2C();
  v88 = v22;
  sub_24B8F5E3C();
  v87 = sub_24BAA93CC();
  v88 = v23;
  v89 = v24 & 1;
  v90 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A1D0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063FF0);
  sub_24B8F384C(&qword_27F06A1D8, &qword_27F06A1D0);
  v27 = sub_24B903C9C();
  v72 = v20;
  v28 = sub_24BAA9C2C();
  MEMORY[0x28223BE20](v28);
  *&v93 = sub_24BA5F1EC(a1);
  *(&v93 + 1) = v29;
  *&v93 = sub_24BAA93CC();
  *(&v93 + 1) = v30;
  v94[0] = v31 & 1;
  *&v94[8] = v32;
  *&v94[16] = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639E0);
  sub_24B8F699C();
  v68[1] = v27;
  v68[2] = v26;
  v33 = sub_24BAA9C4C();
  MEMORY[0x28223BE20](v33);
  *&v93 = sub_24BA60BF0(a1);
  *(&v93 + 1) = v34;
  *&v93 = sub_24BAA93CC();
  *(&v93 + 1) = v35;
  v94[0] = v36 & 1;
  *&v94[8] = v37;
  *&v94[16] = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A1E0);
  sub_24B8F384C(&qword_27F06A1E8, &qword_27F06A1E0);
  sub_24BAA9C4C();
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24BAA81BC();

    if (__PAIR128__(0x800000024BAC1A30, 0xD00000000000001ALL) == v93)
    {

      v38 = 1;
    }

    else
    {
      v39 = sub_24BAAA78C();

      if (v39)
      {
        v38 = 1;
      }

      else
      {
        MEMORY[0x28223BE20](v40);
        *&v93 = sub_24BAA7C2C();
        *(&v93 + 1) = v41;
        v87 = sub_24BAA93CC();
        v88 = v42;
        v89 = v43 & 1;
        v90 = v44;
        *&v93 = sub_24BAA7C2C();
        *(&v93 + 1) = v45;
        *&v93 = sub_24BAA93CC();
        *(&v93 + 1) = v46;
        v94[0] = v47 & 1;
        *&v94[8] = v48;
        *&v94[16] = 256;
        sub_24BAA9C2C();
        v38 = 0;
      }
    }

    v49 = v80;
    v50 = v72;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A1F0);
    v52 = v79;
    (*(*(v51 - 8) + 56))(v79, v38, 1, v51);
    v53 = v73;
    v54 = *(v74 + 16);
    v55 = v75;
    v54(v73, v50, v75);
    v71 = *(v76 + 16);
    v71(v82, v49, v77);
    v56 = v69;
    v57 = *(v69 + 16);
    v57(v83, v81, v84);
    sub_24B8F3208(v52, v78, &qword_27F06A1A8);
    v58 = v70;
    v54(v70, v53, v55);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A1F8);
    v60 = v77;
    v71(&v58[v59[12]], v82, v77);
    v61 = v84;
    v57(&v58[v59[16]], v83, v84);
    v62 = v78;
    sub_24B8F3208(v78, &v58[v59[20]], &qword_27F06A1A8);
    sub_24B8F35E4(v79, &qword_27F06A1A8);
    v63 = *(v56 + 8);
    v63(v81, v61);
    v64 = *(v76 + 8);
    v64(v80, v60);
    v65 = v75;
    v66 = *(v74 + 8);
    v66(v72, v75);
    sub_24B8F35E4(v62, &qword_27F06A1A8);
    v63(v83, v84);
    v64(v82, v60);
    return (v66)(v73, v65);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA611B8(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA5EAAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639C0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v6[4] = sub_24BAA7C2C();
  v6[5] = v4;
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA611B8(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA86CC();
  swift_getKeyPath();
  sub_24BAA86EC();

  sub_24B8F5E3C();
  sub_24BAA9AFC();
  sub_24B8F384C(&unk_27F069090, &qword_27F0639C0);
  sub_24BAA94DC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24BA5ED28@<X0>(uint64_t a1@<X8>)
{
  sub_24BAA9D1C();
  sub_24BAA83BC();
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  sub_24B8F5E3C();
  v2 = sub_24BAA93CC();
  v4 = v3;
  v6 = v5 & 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  *(a1 + 48) = v13;
  *(a1 + 56) = v14;
  *(a1 + 64) = v2;
  *(a1 + 72) = v3;
  *(a1 + 80) = v5 & 1;
  *(a1 + 88) = v7;
  sub_24B8F319C(v2, v3, v5 & 1);

  sub_24B900910(v2, v4, v6);
}

uint64_t sub_24BA5EEB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639C0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v6[4] = sub_24BAA7C2C();
  v6[5] = v4;
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA611B8(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA86CC();
  swift_getKeyPath();
  sub_24BAA86EC();

  sub_24B8F5E3C();
  sub_24BAA9AFC();
  sub_24B8F384C(&unk_27F069090, &qword_27F0639C0);
  sub_24BAA94DC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24BA5F130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA611B8(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA814C();
  sub_24BAA816C();

  sub_24B984444();
  sub_24B8E11F4(a5);
}

uint64_t sub_24BA5F1EC(uint64_t a1)
{
  if (a1)
  {

    sub_24B984444();
    v1 = sub_24B8D7188();
    if (v1)
    {
      v2 = v1;
      v3 = [v1 configuration];
      v4 = [v3 applicationConfigurationType];

      if ((v4 - 1) > 1)
      {
        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }

        goto LABEL_9;
      }
    }

    else
    {
    }

    if (qword_27F063110 == -1)
    {
      return sub_24BAA7C2C();
    }

LABEL_9:
    swift_once();
    return sub_24BAA7C2C();
  }

  type metadata accessor for ActivityConfigViewModel();
  sub_24BA611B8(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24BA5F3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = sub_24BAA8AAC();
  v8 = sub_24BAA8BDC();
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A1E0);
  v10 = a3 + v9[9];
  result = swift_getKeyPath();
  *v10 = result;
  v10[8] = 0;
  v12 = a3 + v9[10];
  *v12 = 0;
  v12[8] = 1;
  v13 = a3 + v9[11];
  *v13 = 0;
  v13[8] = 1;
  v14 = (a3 + v9[12]);
  *v14 = sub_24BA61198;
  v14[1] = v6;
  v15 = a3 + v9[13];
  *v15 = v7;
  v15[8] = 0;
  v16 = a3 + v9[14];
  *v16 = v8;
  v16[8] = 0;
  return result;
}

uint64_t sub_24BA5F4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a1;
  v87 = a2;
  v95 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A200);
  v82 = *(v3 - 8);
  v83 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v72 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A208);
  v84 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v81 = &v72 - v7;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A210);
  MEMORY[0x28223BE20](v94);
  v9 = &v72 - v8;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A218);
  MEMORY[0x28223BE20](v91);
  v93 = &v72 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A220);
  MEMORY[0x28223BE20](v92);
  v12 = &v72 - v11;
  v13 = sub_24BAA857C();
  v89 = *(v13 - 8);
  v90 = v13;
  MEMORY[0x28223BE20](v13);
  v88 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A228);
  v74 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v72 = &v72 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A230);
  v76 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v73 = &v72 - v16;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A238);
  MEMORY[0x28223BE20](v77);
  v75 = &v72 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A240);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v80 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v72 - v22;
  v24 = [objc_opt_self() currentDevice];
  v25 = [v24 userInterfaceIdiom];

  if (v25 == 1)
  {
    v84 = v18;
    v85 = v23;
    v83 = v12;
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    *&v114 = sub_24BAA7C2C();
    *(&v114 + 1) = v26;
    sub_24B8F5E3C();
    v27 = sub_24BAA93CC();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    KeyPath = swift_getKeyPath();
    v35 = v31 & 1;
    LOBYTE(v114) = v31 & 1;
    LOBYTE(v108) = 0;
    v36 = sub_24BAA988C();
    v37 = swift_getKeyPath();
    v38 = sub_24BAA916C();
    v39 = swift_getKeyPath();
    *&v102 = v27;
    *(&v102 + 1) = v29;
    LOBYTE(v103) = v35;
    *(&v103 + 1) = v33;
    LOWORD(v104) = 1;
    *(&v104 + 1) = KeyPath;
    *&v105 = 1;
    BYTE8(v105) = 0;
    *&v106 = v37;
    *(&v106 + 1) = v36;
    *&v107 = v39;
    *(&v107 + 1) = v38;
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA611B8(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    sub_24BAA86CC();
    swift_getKeyPath();
    sub_24BAA86EC();

    v108 = v114;
    *&v109 = v115;
    type metadata accessor for DNDInterruptionSuppressionMode(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A288);
    sub_24BA611B8(&qword_27F06A250, type metadata accessor for DNDInterruptionSuppressionMode);
    v87 = MEMORY[0x277CE14C0];
    sub_24B8F384C(&qword_27F06A290, &qword_27F06A288);
    v40 = v72;
    sub_24BAA9ABC();
    v41 = v88;
    sub_24BAA856C();
    v42 = sub_24B8F384C(&qword_27F06A298, &qword_27F06A228);
    v43 = MEMORY[0x277CDDA00];
    v44 = v73;
    v45 = v78;
    v46 = v90;
    sub_24BAA947C();
    (*(v89 + 8))(v41, v46);
    (*(v74 + 8))(v40, v45);
    *&v114 = v45;
    *(&v114 + 1) = v46;
    *&v115 = v42;
    *(&v115 + 1) = v43;
    swift_getOpaqueTypeConformance2();
    v47 = v75;
    v48 = v79;
    sub_24BAA94DC();
    (*(v76 + 8))(v44, v48);
    *(v47 + *(v77 + 36)) = 0;
    sub_24BA61364(&qword_27F06A2A0, &qword_27F06A238, &unk_24BABCA50, sub_24BA613E8);
    v49 = v85;
    sub_24BAA94BC();
    sub_24B8F35E4(v47, &qword_27F06A238);
    v98 = v104;
    v99 = v105;
    v100 = v106;
    v101 = v107;
    v96 = v102;
    v97 = v103;
    v50 = *(v19 + 16);
    v51 = v80;
    v52 = v84;
    v50(v80, v49, v84);
    v53 = v99;
    v110 = v98;
    v111 = v99;
    v54 = v100;
    v55 = v101;
    v112 = v100;
    v113 = v101;
    v56 = v96;
    v57 = v97;
    v108 = v96;
    v109 = v97;
    v58 = v83;
    *(v83 + 2) = v98;
    *(v58 + 48) = v53;
    *(v58 + 64) = v54;
    *(v58 + 80) = v55;
    *v58 = v56;
    *(v58 + 16) = v57;
    *(v58 + 96) = 0;
    *(v58 + 104) = 1;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A2B8);
    v50((v58 + *(v59 + 64)), v51, v52);
    sub_24B8F3208(&v102, &v114, &qword_27F06A2C0);
    sub_24B8F3208(&v108, &v114, &qword_27F06A2C0);
    v60 = *(v19 + 8);
    v60(v51, v52);
    v116 = v98;
    v117 = v99;
    v118 = v100;
    v119 = v101;
    v114 = v96;
    v115 = v97;
    sub_24B8F35E4(&v114, &qword_27F06A2C0);
    sub_24B8F3208(v58, v93, &qword_27F06A220);
    swift_storeEnumTagMultiPayload();
    sub_24B8F384C(&qword_27F06A268, &qword_27F06A220);
    sub_24BA61364(&qword_27F06A270, &qword_27F06A210, &unk_24BABCA28, sub_24BA61200);
    sub_24BAA8D0C();
    sub_24B8F35E4(&v102, &qword_27F06A2C0);
    sub_24B8F35E4(v58, &qword_27F06A220);
    return (v60)(v85, v52);
  }

  else
  {
    v85 = v6;
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    *&v102 = sub_24BAA7C2C();
    *(&v102 + 1) = v62;
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA611B8(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    sub_24BAA86CC();
    swift_getKeyPath();
    sub_24BAA86EC();

    v108 = v114;
    *&v109 = v115;
    type metadata accessor for DNDInterruptionSuppressionMode(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A248);
    sub_24BA611B8(&qword_27F06A250, type metadata accessor for DNDInterruptionSuppressionMode);
    sub_24B8F384C(&qword_27F06A258, &qword_27F06A248);
    sub_24B8F5E3C();
    v63 = v5;
    sub_24BAA9ADC();
    v64 = v88;
    sub_24BAA856C();
    v65 = sub_24B8F384C(&qword_27F06A260, &qword_27F06A200);
    v66 = MEMORY[0x277CDDA00];
    v67 = v81;
    v68 = v83;
    v69 = v90;
    sub_24BAA947C();
    (*(v89 + 8))(v64, v69);
    (*(v82 + 8))(v63, v68);
    *&v114 = v68;
    *(&v114 + 1) = v69;
    *&v115 = v65;
    *(&v115 + 1) = v66;
    swift_getOpaqueTypeConformance2();
    v70 = v85;
    sub_24BAA94DC();
    (*(v84 + 8))(v67, v70);
    v71 = v93;
    *&v9[*(v94 + 36)] = 0;
    sub_24B8F3208(v9, v71, &qword_27F06A210);
    swift_storeEnumTagMultiPayload();
    sub_24B8F384C(&qword_27F06A268, &qword_27F06A220);
    sub_24BA61364(&qword_27F06A270, &qword_27F06A210, &unk_24BABCA28, sub_24BA61200);
    sub_24BAA8D0C();
    return sub_24B8F35E4(v9, &qword_27F06A210);
  }
}

uint64_t sub_24BA603E0@<X0>(uint64_t *a1@<X8>)
{
  sub_24B984444();
  v2 = sub_24B8D7188();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 configuration];

    [v4 suppressionMode];
  }

  result = DNDResolvedInterruptionSuppressionMode();
  *a1 = result;
  return result;
}

uint64_t sub_24BA60470()
{
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA611B8(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA814C();
  sub_24BAA816C();

  sub_24B984444();
  sub_24B8E11F4(sub_24BA61534);
}

uint64_t sub_24BA60538@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A2C8);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v27 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v29 = sub_24BAA7C2C();
  v30 = v14;
  sub_24B8F5E3C();
  *v13 = sub_24BAA93CC();
  *(v13 + 1) = v15;
  v13[16] = v16 & 1;
  *(v13 + 3) = v17;
  *(v13 + 4) = 1;
  v13[40] = 1;
  v29 = sub_24BAA7C2C();
  v30 = v18;
  *v11 = sub_24BAA93CC();
  *(v11 + 1) = v19;
  v11[16] = v20 & 1;
  *(v11 + 3) = v21;
  *(v11 + 4) = 2;
  v11[40] = 1;
  v22 = *(v2 + 16);
  v22(v8, v13, v1);
  v22(v5, v11, v1);
  v23 = v28;
  v22(v28, v8, v1);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A2D0);
  v22(&v23[*(v24 + 48)], v5, v1);
  v25 = *(v2 + 8);
  v25(v11, v1);
  v25(v13, v1);
  v25(v5, v1);
  return (v25)(v8, v1);
}

uint64_t sub_24BA60864@<X0>(char *a1@<X8>)
{
  v40 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A2D8);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v38 = &v37 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v41 = sub_24BAA7C2C();
  v42 = v12;
  sub_24B8F5E3C();
  v13 = sub_24BAA93CC();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  KeyPath = swift_getKeyPath();
  *v11 = v13;
  *(v11 + 1) = v15;
  v11[16] = v17 & 1;
  *(v11 + 3) = v19;
  *(v11 + 4) = KeyPath;
  *(v11 + 5) = 0;
  v11[48] = 1;
  *(v11 + 7) = 1;
  v11[64] = 1;
  v41 = sub_24BAA7C2C();
  v42 = v21;
  v22 = sub_24BAA93CC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = swift_getKeyPath();
  *v9 = v22;
  *(v9 + 1) = v24;
  v9[16] = v26 & 1;
  *(v9 + 3) = v28;
  *(v9 + 4) = v29;
  *(v9 + 5) = 0;
  v9[48] = 1;
  *(v9 + 7) = 2;
  v9[64] = 1;
  v30 = *(v2 + 16);
  v31 = v38;
  v30(v38, v11, v1);
  v32 = v39;
  v30(v39, v9, v1);
  v33 = v40;
  v30(v40, v31, v1);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A2E0);
  v30(&v33[*(v34 + 48)], v32, v1);
  v35 = *(v2 + 8);
  v35(v9, v1);
  v35(v11, v1);
  v35(v32, v1);
  return (v35)(v31, v1);
}

uint64_t sub_24BA60BF0(uint64_t a1)
{
  if (a1)
  {

    sub_24B984444();
    v1 = sub_24B8D7188();
    if (v1)
    {
      v2 = v1;
      v3 = [v1 configuration];

      [v3 suppressionMode];
    }

    DNDResolvedInterruptionSuppressionMode();

    if (DNDResolvedInterruptionSuppressionMode() == 2)
    {
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }
    }

    else if (qword_27F063110 == -1)
    {
      return sub_24BAA7C2C();
    }

    swift_once();
    return sub_24BAA7C2C();
  }

  type metadata accessor for ActivityConfigViewModel();
  sub_24BA611B8(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24BA60DC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639C0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v6[4] = sub_24BAA7C2C();
  v6[5] = v4;
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA611B8(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA86CC();
  swift_getKeyPath();
  sub_24BAA86EC();

  sub_24B8F5E3C();
  sub_24BAA9AFC();
  sub_24B8F384C(&unk_27F069090, &qword_27F0639C0);
  sub_24BAA94DC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24BA61040(char *a1)
{
  v1 = *a1;
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA611B8(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA814C();
  sub_24BAA816C();

  sub_24B984444();
  sub_24B8E0B98(v1);
}

BOOL sub_24BA6112C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_24B998864();
  *a1 = result;
  return result;
}

uint64_t sub_24BA61160()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24BA611B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24BA61200()
{
  result = qword_27F06A278;
  if (!qword_27F06A278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A280);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A200);
    sub_24BAA857C();
    sub_24B8F384C(&qword_27F06A260, &qword_27F06A200);
    swift_getOpaqueTypeConformance2();
    sub_24BA611B8(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A278);
  }

  return result;
}

uint64_t sub_24BA61364(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24BA613E8()
{
  result = qword_27F06A2A8;
  if (!qword_27F06A2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A2B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A228);
    sub_24BAA857C();
    sub_24B8F384C(&qword_27F06A298, &qword_27F06A228);
    swift_getOpaqueTypeConformance2();
    sub_24BA611B8(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A2A8);
  }

  return result;
}

BOOL sub_24BA6153C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_24B9922BC();
  *a1 = result;
  return result;
}

BOOL sub_24BA615A0@<W0>(_BYTE *a1@<X8>)
{
  result = sub_24B9989BC();
  *a1 = result;
  return result;
}

uint64_t sub_24BA61604()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A178);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A168);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A170);
  sub_24B8F384C(&qword_27F06A190, &qword_27F06A170);
  sub_24B8F5E3C();
  swift_getOpaqueTypeConformance2();
  sub_24B8F384C(&qword_27F06A1A0, &qword_27F06A168);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24BA6174C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  return v1;
}

uint64_t sub_24BA617C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  return v1;
}

uint64_t sub_24BA61834(void *a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A318);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35[-1] - v8;
  *(v3 + 56) = 0;
  v10 = OBJC_IVAR____TtC15FocusSettingsUI18HomeScreenSnapshot__image;
  v35[0] = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  sub_24BA0AAD0();
  sub_24BAA817C();
  (*(v7 + 32))(v3 + v10, v9, v6);
  v11 = [a1 listIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_24BAAA01C();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  *(v3 + 16) = v13;
  *(v3 + 24) = v15;
  v16 = [a1 focusModeIdentifier];
  if (v16)
  {
    v17 = v16;
    v18 = sub_24BAAA01C();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  *(v3 + 32) = v18;
  *(v3 + 40) = v20;
  *(v3 + 48) = a2 & 1;
  v21 = [a1 wantsListVisible];
  *(v3 + 49) = v21;
  swift_beginAccess();
  HIBYTE(v34) = v21;
  sub_24BAA817C();
  swift_endAccess();
  sub_24BA61C40(a1);
  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v22 = sub_24BAA812C();
  __swift_project_value_buffer(v22, qword_27F077038);
  v23 = sub_24BAAA2CC();
  swift_retain_n();
  v24 = sub_24BAA810C();
  if (os_log_type_enabled(v24, v23))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v35[0] = v26;
    *v25 = 136315906;
    v27 = *(v3 + 16);
    v28 = *(v3 + 24);

    v29 = sub_24B8E49D4(v27, v28, v35);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v30 = *(v3 + 32);
    v31 = *(v3 + 40);

    v32 = sub_24B8E49D4(v30, v31, v35);

    *(v25 + 14) = v32;
    *(v25 + 22) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    *(v25 + 24) = HIBYTE(v34);

    *(v25 + 28) = 1024;
    LODWORD(v32) = *(v3 + 48);

    *(v25 + 30) = v32;

    _os_log_impl(&dword_24B8D3000, v24, v23, "Home Screen page (%s) for Focus (%s) is selected: %{BOOL}d, is suggested: %{BOOL}d", v25, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x24C251390](v26, -1, -1);
    MEMORY[0x24C251390](v25, -1, -1);
  }

  else
  {
  }

  return v3;
}

void sub_24BA61C40(void *a1)
{
  v2 = [a1 machPortSendRight];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_24BA626F4;
    *(v4 + 24) = v1;
    aBlock[4] = sub_24BA6270C;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24BA620D8;
    aBlock[3] = &block_descriptor_15;
    v5 = _Block_copy(aBlock);

    [v3 accessPort_];
    _Block_release(v5);
  }

  else
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v6 = sub_24BAA812C();
    __swift_project_value_buffer(v6, qword_27F077038);
    v7 = sub_24BAAA2AC();
    log = sub_24BAA810C();
    if (os_log_type_enabled(log, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24B8D3000, log, v7, "Unable to obtain Home Screen snapshot because machPortSendRight is nil", v8, 2u);
      MEMORY[0x24C251390](v8, -1, -1);
    }
  }
}

void sub_24BA61E24(mach_port_t a1)
{
  v1 = IOSurfaceLookupFromMachPort(a1);
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    v4 = objc_opt_self();
    v17 = v2;
    v5 = [v4 mainScreen];
    [v5 scale];
    v7 = v6;

    v8 = [v3 _initWithIOSurface_scale_orientation_];
    if (v8)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      v9 = v8;
      sub_24BAA81CC();

      return;
    }

    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v13 = sub_24BAA812C();
    __swift_project_value_buffer(v13, qword_27F077038);
    v14 = sub_24BAAA2AC();
    v15 = sub_24BAA810C();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24B8D3000, v15, v14, "Unable to obtain Home Screen snapshot from IOSurface", v16, 2u);
      MEMORY[0x24C251390](v16, -1, -1);
    }
  }

  else
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v10 = sub_24BAA812C();
    __swift_project_value_buffer(v10, qword_27F077038);
    v11 = sub_24BAAA2AC();
    v17 = sub_24BAA810C();
    if (os_log_type_enabled(v17, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24B8D3000, v17, v11, "Unable to obtain Home Screen snapshot because ioSurfaceRef is nil", v12, 2u);
      MEMORY[0x24C251390](v12, -1, -1);
    }
  }
}

uint64_t sub_24BA62104()
{

  v1 = OBJC_IVAR____TtC15FocusSettingsUI18HomeScreenSnapshot__selected;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0666B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15FocusSettingsUI18HomeScreenSnapshot__image;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A318);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HomeScreenSnapshot()
{
  result = qword_27F06A2F8;
  if (!qword_27F06A2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24BA62264()
{
  sub_24BA62354();
  if (v0 <= 0x3F)
  {
    sub_24BA623A4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24BA62354()
{
  if (!qword_27F066698)
  {
    v0 = sub_24BAA81DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F066698);
    }
  }
}

void sub_24BA623A4()
{
  if (!qword_27F06A308)
  {
    sub_24BA0AAD0();
    v0 = sub_24BAA81DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F06A308);
    }
  }
}

unint64_t sub_24BA62400()
{
  result = qword_27F06A310;
  if (!qword_27F06A310)
  {
    type metadata accessor for HomeScreenSnapshot();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A310);
  }

  return result;
}

uint64_t sub_24BA62458@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HomeScreenSnapshot();
  result = sub_24BAA814C();
  *a1 = result;
  return result;
}

uint64_t sub_24BA62498@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HomeScreenSnapshot();
  result = sub_24BAAA60C();
  *a1 = result;
  return result;
}

uint64_t sub_24BA624DC(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_24BAAA78C();
  }
}

uint64_t sub_24BA62508@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  *a1 = v3;
  return result;
}

uint64_t sub_24BA62588()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24BAA81CC();
}

uint64_t sub_24BA625FC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  *a1 = v3;
  return result;
}

uint64_t sub_24BA6267C(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = v1;
  return sub_24BAA81CC();
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24BA627B0()
{
  v48[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_24B8F37E8(0, &qword_27F066AB0);
  sub_24BA57E20();
  v2 = sub_24BAAA20C();

  v46[2] = 0;
  if ((v2 & 0xC000000000000001) == 0)
  {
    v19 = *(v2 + 32);
    v5 = ((1 << v19) + 63) >> 6;
    if ((v19 & 0x3Fu) <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_77;
  }

  v4 = MEMORY[0x277D84FA0];
  v48[0] = MEMORY[0x277D84FA0];
  v2 = sub_24BAAA4DC();
  v5 = v2;
  for (i = sub_24BAAA56C(); i; i = sub_24BAAA56C())
  {
    v46[3] = i;
    swift_dynamicCast();
    v7 = v47;
    if ([v47 activationState])
    {
    }

    else
    {
      v8 = v4[2];
      if (v4[3] <= v8)
      {
        sub_24B8E75B0(v8 + 1);
      }

      v4 = v48[0];
      v5 = v47;
      v9 = sub_24BAAA3BC();
      v10 = v48[0] + 56;
      v11 = -1 << *(v48[0] + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v48[0] + 56 + 8 * (v12 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v12) & ~*(v48[0] + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = 0;
        v16 = (63 - v11) >> 6;
        do
        {
          if (++v13 == v16 && (v15 & 1) != 0)
          {
            __break(1u);
            goto LABEL_55;
          }

          v17 = v13 == v16;
          if (v13 == v16)
          {
            v13 = 0;
          }

          v15 |= v17;
          v18 = *(v10 + 8 * v13);
        }

        while (v18 == -1);
        v14 = __clz(__rbit64(~v18)) + (v13 << 6);
      }

      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(v4[6] + 8 * v14) = v7;
      ++v4[2];
    }

    v5 = v2;
  }

LABEL_37:
  sub_24BA51258(v4);
  v2 = v33;

  if (v2 >> 62)
  {
    while (1)
    {
      if (!sub_24BAAA52C())
      {
        goto LABEL_59;
      }

LABEL_39:
      if ((v2 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x24C2506E0](0, v2);
      }

      else
      {
        if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_73:
          if (!sub_24BAAA52C())
          {
LABEL_74:

            return;
          }

          goto LABEL_66;
        }

        v34 = *(v2 + 32);
      }

      v5 = v34;

      v35 = [v5 windows];

      sub_24B8F37E8(0, &qword_27F069E10);
      v2 = sub_24BAAA12C();

      v48[0] = MEMORY[0x277D84F90];
      if (v2 >> 62)
      {
        v36 = sub_24BAAA52C();
        if (v36)
        {
LABEL_44:
          v37 = 0;
          while (1)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v38 = MEMORY[0x24C2506E0](v37, v2);
            }

            else
            {
              if (v37 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_56;
              }

              v38 = *(v2 + 8 * v37 + 32);
            }

            v39 = v38;
            v40 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              break;
            }

            if ([v38 isKeyWindow])
            {
              v5 = v48;
              sub_24BAAA66C();
              sub_24BAAA69C();
              sub_24BAAA6AC();
              sub_24BAAA67C();
            }

            else
            {
            }

            ++v37;
            if (v40 == v36)
            {
              v5 = v48[0];
              goto LABEL_63;
            }
          }

LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }
      }

      else
      {
        v36 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v36)
        {
          goto LABEL_44;
        }
      }

      v5 = MEMORY[0x277D84F90];
LABEL_63:

      if ((v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
      {
        goto LABEL_73;
      }

      if (!*(v5 + 16))
      {
        goto LABEL_74;
      }

LABEL_66:
      if ((v5 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x24C2506E0](0, v5);
        goto LABEL_69;
      }

      if (*(v5 + 16))
      {
        v41 = *(v5 + 32);
LABEL_69:
        v42 = v41;

        v43 = [v42 rootViewController];
        if (v43)
        {
          v44 = v43;
          [v43 dismissViewControllerAnimated:1 completion:0];
        }

        return;
      }

      __break(1u);
LABEL_77:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v45 = swift_slowAlloc();
        v4 = sub_24BA692A4(v45, v5, v2, sub_24BA51B5C, 0);

        MEMORY[0x24C251390](v45, -1, -1);
        goto LABEL_37;
      }

LABEL_22:
      v46[1] = v46;
      MEMORY[0x28223BE20](v3);
      v21 = v46 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v21, v20);
      v22 = 0;
      v23 = 0;
      v24 = 1 << *(v2 + 32);
      v25 = -1;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      v26 = v25 & *(v2 + 56);
      v27 = (v24 + 63) >> 6;
      while (v26)
      {
        v28 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
LABEL_32:
        v31 = v28 | (v23 << 6);
        if (![*(*(v2 + 48) + 8 * v31) activationState])
        {
          *&v21[(v31 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v31;
          if (__OFADD__(v22++, 1))
          {
            __break(1u);
LABEL_36:
            v4 = sub_24BA29F5C(v21, v5, v22, v2);
            goto LABEL_37;
          }
        }
      }

      v29 = v23;
      while (1)
      {
        v23 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v23 >= v27)
        {
          goto LABEL_36;
        }

        v30 = *(v2 + 56 + 8 * v23);
        ++v29;
        if (v30)
        {
          v28 = __clz(__rbit64(v30));
          v26 = (v30 - 1) & v30;
          goto LABEL_32;
        }
      }

LABEL_57:
      __break(1u);
    }
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_39;
  }

LABEL_59:
}

uint64_t sub_24BA62E48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24BAA89FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B70);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AddAppFiltersView();
  sub_24B8F3208(v1 + *(v10 + 24), v9, &qword_27F063B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24BAA854C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24BAAA2BC();
    v13 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24BA63064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B88);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_24BA631C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B88);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for AddAppFiltersView()
{
  result = qword_27F06A320;
  if (!qword_27F06A320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24BA63348()
{
  sub_24B8F4644();
  if (v0 <= 0x3F)
  {
    sub_24B8F47B4();
    if (v1 <= 0x3F)
    {
      sub_24BA633FC();
      if (v2 <= 0x3F)
      {
        sub_24B901BFC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24BA633FC()
{
  if (!qword_27F063BA0)
  {
    sub_24BAA854C();
    v0 = sub_24BAA82EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F063BA0);
    }
  }
}

uint64_t sub_24BA63454(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24BA634B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_24BAA8A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A350);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A348);
  v10 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v12 = &v27 - v11;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A338);
  MEMORY[0x28223BE20](v28);
  v14 = &v27 - v13;
  v29 = a1;
  v31 = a1;
  sub_24BAA909C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A370);
  sub_24BA6905C();
  sub_24BAA829C();
  v15 = [objc_opt_self() systemGroupedBackgroundColor];
  v16 = sub_24BAA973C();
  v17 = sub_24BAA90BC();
  v18 = &v9[*(v7 + 36)];
  *v18 = v16;
  v18[8] = v17;
  (*(v4 + 104))(v6, *MEMORY[0x277CDDDC0], v3);
  v19 = sub_24BA68F70();
  sub_24BAA964C();
  (*(v4 + 8))(v6, v3);
  sub_24B8F35E4(v9, &qword_27F06A350);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v34 = sub_24BAA7C2C();
  v35 = v20;
  v32 = v7;
  v33 = v19;
  swift_getOpaqueTypeConformance2();
  sub_24B8F5E3C();
  v21 = v27;
  sub_24BAA952C();

  v22 = (*(v10 + 8))(v12, v21);
  v23 = &v14[*(v28 + 36)];
  *v23 = sub_24BA56260;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = 0;
  MEMORY[0x28223BE20](v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068FA0);
  sub_24BA68E50();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068FB0);
  v25 = sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  v34 = v24;
  v35 = v25;
  swift_getOpaqueTypeConformance2();
  sub_24BAA96CC();
  return sub_24BA691D4(v14);
}

uint64_t sub_24BA639C4(uint64_t a1)
{
  v2 = sub_24BAA8DCC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068FB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_24BAA8DAC();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00);
  sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
  sub_24BAA833C();
  v7 = sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  MEMORY[0x24C24EEC0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24BA63BB0(uint64_t a1)
{
  v2 = type metadata accessor for AddAppFiltersView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v9[0] = sub_24BAA7C2C();
  v9[1] = v5;
  sub_24BA69C3C(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AddAppFiltersView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_24BA69CA4(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for AddAppFiltersView);
  sub_24B8F5E3C();
  return sub_24BAA9A7C();
}

uint64_t sub_24BA63D64()
{
  v0 = sub_24BAA9C6C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_24BAA854C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12 == 1)
  {
    v13 = [objc_opt_self() mainScreen];
    [v13 bounds];
    v15 = v14;
    v17 = v16;

    if (v17 < v15)
    {
      v15 = v17;
    }

    sub_24BA62E48(v10);
    if (v15 > 768.0)
    {
      (*(v5 + 104))(v8, *MEMORY[0x277CDF9F0], v4);
      sub_24BA63454(&qword_27F063C10, MEMORY[0x277CDFA28]);
      v18 = sub_24BAA9F4C();
      v19 = *(v5 + 8);
      v19(v8, v4);
      v19(v10, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C08);
      sub_24BAA9C7C();
      v20 = (v1 + 104);
      v21 = swift_allocObject();
      if (v18)
      {
        *(v21 + 16) = xmmword_24BAAD820;
        v30 = xmmword_24BAAD830;
        *v3 = xmmword_24BAAD830;
        v22 = *MEMORY[0x277CDF108];
        v23 = *v20;
        (*v20)(v3, v22, v0);
        sub_24BAA9C8C();
        *v3 = v30;
        v23(v3, v22, v0);
      }

      else
      {
        *(v21 + 16) = xmmword_24BAAD840;
        v30 = xmmword_24BAAD830;
        *v3 = xmmword_24BAAD830;
        v27 = *MEMORY[0x277CDF108];
        v28 = *v20;
        (*v20)(v3, v27, v0);
        sub_24BAA9C8C();
        *v3 = v30;
        v28(v3, v27, v0);
        sub_24BAA9C8C();
        *v3 = v30;
        v28(v3, v27, v0);
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_24BA62E48(v10);
  }

  v24 = sub_24BAA853C();
  (*(v5 + 8))(v10, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C08);
  sub_24BAA9C7C();
  v21 = swift_allocObject();
  if (v24)
  {
    *(v21 + 16) = xmmword_24BAAD5B0;
    *v3 = xmmword_24BAAD830;
    (*(v1 + 104))(v3, *MEMORY[0x277CDF108], v0);
  }

  else
  {
    *(v21 + 16) = xmmword_24BAAD820;
    v30 = xmmword_24BAAD830;
    *v3 = xmmword_24BAAD830;
    v25 = *MEMORY[0x277CDF108];
    v26 = *(v1 + 104);
    v26(v3, v25, v0);
    sub_24BAA9C8C();
    *v3 = v30;
    v26(v3, v25, v0);
  }

LABEL_12:
  sub_24BAA9C8C();
  return v21;
}

uint64_t sub_24BA643BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A3A8);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = (&v66 - v4);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A398);
  v5 = MEMORY[0x28223BE20](v77);
  v68 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v69 = &v66 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A3B0);
  MEMORY[0x28223BE20](v74);
  v76 = &v66 - v8;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A388);
  MEMORY[0x28223BE20](v75);
  v73 = &v66 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A3B8);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v11 = &v66 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A3C0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v72 = &v66 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A3C8);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v66 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A3D0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v66 - v25;
  v27 = *(sub_24BA64CA8() + 16);

  v28 = *(sub_24BA64FA4() + 16);

  if (__OFADD__(v27, v28))
  {
    __break(1u);
  }

  else
  {
    if (v27 + v28 < 1)
    {
      v34 = sub_24BAA9D1C();
      v35 = v67;
      *v67 = v34;
      v35[1] = v36;
      v37 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A3D8) + 44);
      sub_24BAA835C();
      v38 = sub_24BAA90BC();
      sub_24BAA828C();
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v47 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A3E0) + 36)];
      *v47 = v38;
      *(v47 + 1) = v40;
      *(v47 + 2) = v42;
      *(v47 + 3) = v44;
      *(v47 + 4) = v46;
      v47[40] = 0;
      sub_24BAA9D1C();
      sub_24BAA86BC();
      v48 = v35;
      v49 = v68;
      sub_24B90294C(v48, v68, &qword_27F06A3A8);
      v50 = (v49 + *(v77 + 36));
      v51 = v84;
      v50[4] = v83;
      v50[5] = v51;
      v50[6] = v85;
      v52 = v80;
      *v50 = v79;
      v50[1] = v52;
      v53 = v82;
      v50[2] = v81;
      v50[3] = v53;
      v54 = v69;
      sub_24B90294C(v49, v69, &qword_27F06A398);
      sub_24B8F3208(v54, v76, &qword_27F06A398);
      swift_storeEnumTagMultiPayload();
      sub_24B8F384C(&qword_27F06A380, &qword_27F06A388);
      sub_24BA69114();
      sub_24BAA8D0C();
      v55 = v54;
      v56 = &qword_27F06A398;
    }

    else
    {
      v30 = *(sub_24BA64FA4() + 16);

      if (v30)
      {
        *v20 = sub_24BAA8BDC();
        *(v20 + 1) = 0;
        v20[16] = 0;
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A3F8);
        sub_24BA652A0(a1, &v20[*(v31 + 44)]);
        v32 = sub_24BAA90AC();
        v33 = &v20[*(v17 + 36)];
        *v33 = v32;
        *(v33 + 8) = 0u;
        *(v33 + 24) = 0u;
        v33[40] = 1;
        sub_24B90294C(v20, v26, &qword_27F06A3C8);
        (*(v18 + 56))(v26, 0, 1, v17);
      }

      else
      {
        (*(v18 + 56))(v26, 1, 1, v17);
      }

      v57 = *(sub_24BA64CA8() + 16);

      v58 = 1;
      if (v57)
      {
        *v11 = sub_24BAA8BDC();
        *(v11 + 1) = 0;
        v11[16] = 0;
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A3F0);
        sub_24BA673E0(a1, &v11[*(v59 + 44)]);
        v60 = sub_24BAA90AC();
        v61 = v71;
        v62 = &v11[*(v71 + 36)];
        *v62 = v60;
        *(v62 + 8) = 0u;
        *(v62 + 24) = 0u;
        v62[40] = 1;
        v63 = v72;
        sub_24B90294C(v11, v72, &qword_27F06A3B8);
        v58 = 0;
      }

      else
      {
        v63 = v72;
        v61 = v71;
      }

      (*(v70 + 56))(v63, v58, 1, v61);
      sub_24B8F3208(v26, v24, &qword_27F06A3D0);
      sub_24B8F3208(v63, v15, &qword_27F06A3C0);
      v64 = v73;
      sub_24B8F3208(v24, v73, &qword_27F06A3D0);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A3E8);
      sub_24B8F3208(v15, v64 + *(v65 + 48), &qword_27F06A3C0);
      sub_24B8F35E4(v15, &qword_27F06A3C0);
      sub_24B8F35E4(v24, &qword_27F06A3D0);
      sub_24B8F3208(v64, v76, &qword_27F06A388);
      swift_storeEnumTagMultiPayload();
      sub_24B8F384C(&qword_27F06A380, &qword_27F06A388);
      sub_24BA69114();
      sub_24BAA8D0C();
      sub_24B8F35E4(v64, &qword_27F06A388);
      sub_24B8F35E4(v63, &qword_27F06A3C0);
      v55 = v26;
      v56 = &qword_27F06A3D0;
    }

    return sub_24B8F35E4(v55, v56);
  }

  return result;
}

uint64_t sub_24BA64CA8()
{
  v1 = type metadata accessor for FocusSystemConfigurationAction(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v19 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  if (!*(v0 + *(type metadata accessor for AddAppFiltersView() + 20)))
  {
LABEL_16:
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA63454(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24BAA81BC();

  v7 = v20;
  v8 = *(v20 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v18 = v1;
    while (v9 < *(v7 + 16))
    {
      v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v12 = *(v2 + 72);
      sub_24BA69C3C(v7 + v11 + v12 * v9, v6, type metadata accessor for FocusSystemConfigurationAction);
      if (v6[*(v1 + 20)])
      {
        sub_24BA698BC(v6, type metadata accessor for FocusSystemConfigurationAction);
      }

      else
      {
        sub_24BA69CA4(v6, v19, type metadata accessor for FocusSystemConfigurationAction);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24B914DCC(0, *(v10 + 16) + 1, 1);
          v10 = v20;
        }

        v15 = *(v10 + 16);
        v14 = *(v10 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_24B914DCC(v14 > 1, v15 + 1, 1);
          v10 = v20;
        }

        *(v10 + 16) = v15 + 1;
        sub_24BA69CA4(v19, v10 + v11 + v15 * v12, type metadata accessor for FocusSystemConfigurationAction);
        v1 = v18;
      }

      if (v8 == ++v9)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_14:

  return v10;
}

uint64_t sub_24BA64FA4()
{
  v1 = type metadata accessor for FocusConfigurationAction(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v19 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  if (!*(v0 + *(type metadata accessor for AddAppFiltersView() + 20)))
  {
LABEL_16:
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA63454(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24BAA81BC();

  v7 = v20;
  v8 = *(v20 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v18 = v1;
    while (v9 < *(v7 + 16))
    {
      v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v12 = *(v2 + 72);
      sub_24BA69C3C(v7 + v11 + v12 * v9, v6, type metadata accessor for FocusConfigurationAction);
      if (v6[*(v1 + 20)])
      {
        sub_24BA698BC(v6, type metadata accessor for FocusConfigurationAction);
      }

      else
      {
        sub_24BA69CA4(v6, v19, type metadata accessor for FocusConfigurationAction);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24B914E10(0, *(v10 + 16) + 1, 1);
          v10 = v20;
        }

        v15 = *(v10 + 16);
        v14 = *(v10 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_24B914E10(v14 > 1, v15 + 1, 1);
          v10 = v20;
        }

        *(v10 + 16) = v15 + 1;
        sub_24BA69CA4(v19, v10 + v11 + v15 * v12, type metadata accessor for FocusConfigurationAction);
        v1 = v18;
      }

      if (v8 == ++v9)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_14:

  return v10;
}

uint64_t sub_24BA652A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v87 = a1;
  v94 = a2;
  v88 = sub_24BAA8DFC();
  MEMORY[0x28223BE20](v88);
  v89 = (&v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A400);
  v92 = *(v93 - 8);
  v3 = MEMORY[0x28223BE20](v93);
  v91 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v99 = &v71 - v5;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069F00);
  v6 = MEMORY[0x28223BE20](v96);
  v98 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v97 = &v71 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v90 = &v71 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v71 - v12;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v86 = v101;
  v85 = v103;
  v84 = v105;
  v83 = v106;
  v121 = 1;
  v120 = v102;
  v119 = v104;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v113 = sub_24BAA7C2C();
  v114 = v14;
  v78 = sub_24B8F5E3C();
  v15 = sub_24BAA93CC();
  v17 = v16;
  v19 = v18;
  sub_24BAA928C();
  v20 = sub_24BAA939C();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_24B900910(v15, v17, v19 & 1);

  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069F10);
  v27 = &v13[*(v77 + 36)];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B10);
  v28 = *(v76 + 28);
  v74 = sub_24BAA937C();
  v29 = *(v74 - 8);
  v73 = *(v29 + 56);
  v75 = v29 + 56;
  v73(v27 + v28, 1, 1, v74);
  *v27 = swift_getKeyPath();
  *v13 = v20;
  *(v13 + 1) = v22;
  v13[16] = v24 & 1;
  *(v13 + 3) = v26;
  v95 = v13;
  v30 = sub_24BAA988C();
  KeyPath = swift_getKeyPath();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069F08);
  v32 = &v13[*(v72 + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  v33 = sub_24BAA90AC();
  v34 = &v13[*(v96 + 36)];
  *v34 = v33;
  *(v34 + 8) = 0u;
  *(v34 + 24) = 0u;
  v34[40] = 1;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v82 = v107;
  v81 = v109;
  v80 = v111;
  v79 = v112;
  v124 = 1;
  v123 = v108;
  v122 = v110;
  v113 = sub_24BA65DA8();
  v114 = v35;
  v36 = sub_24BAA93CC();
  v38 = v37;
  v40 = v39;
  sub_24BAA927C();
  v41 = sub_24BAA939C();
  v43 = v42;
  LOBYTE(v26) = v44;
  v46 = v45;

  sub_24B900910(v36, v38, v40 & 1);

  v47 = v90;
  v48 = &v90[*(v77 + 36)];
  v73(v48 + *(v76 + 28), 1, 1, v74);
  *v48 = swift_getKeyPath();
  *v47 = v41;
  *(v47 + 8) = v43;
  *(v47 + 16) = v26 & 1;
  *(v47 + 24) = v46;
  v49 = sub_24BAA989C();
  v50 = swift_getKeyPath();
  v51 = (v47 + *(v72 + 36));
  *v51 = v50;
  v51[1] = v49;
  v52 = sub_24BAA90AC();
  v53 = v47 + *(v96 + 36);
  *v53 = v52;
  *(v53 + 8) = 0u;
  *(v53 + 24) = 0u;
  *(v53 + 40) = 1;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v96 = v113;
  v78 = v115;
  v77 = v117;
  v76 = v118;
  v127 = 1;
  v126 = v114;
  v125 = v116;
  v54 = sub_24BA63D64();
  MEMORY[0x28223BE20](v54);
  sub_24BAA8BCC();
  v100 = 0;
  sub_24BA63454(&qword_27F065160, MEMORY[0x277CE0428]);
  sub_24BAAA85C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A408);
  sub_24BA696DC(&qword_27F06A410, &qword_27F06A408, &unk_24BABCF80, sub_24BA6934C);
  v55 = v99;
  sub_24BAA9D8C();
  LOBYTE(v49) = v121;
  LOBYTE(v26) = v120;
  v56 = v119;
  v57 = v97;
  sub_24B8F3208(v95, v97, &qword_27F069F00);
  LODWORD(v72) = v124;
  LODWORD(v73) = v123;
  LODWORD(v74) = v122;
  sub_24B8F3208(v47, v98, &qword_27F069F00);
  LODWORD(v75) = v127;
  LODWORD(v87) = v126;
  LODWORD(v88) = v125;
  v58 = v92;
  v89 = *(v92 + 16);
  v59 = v91;
  v60 = v93;
  v89(v91, v55, v93);
  v61 = v94;
  *v94 = 0;
  *(v61 + 8) = v49;
  v61[2] = v86;
  *(v61 + 24) = v26;
  v61[4] = v85;
  *(v61 + 40) = v56;
  v62 = v83;
  v61[6] = v84;
  v61[7] = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A448);
  sub_24B8F3208(v57, v61 + v63[12], &qword_27F069F00);
  v64 = v61 + v63[16];
  *v64 = 0;
  v64[8] = v72;
  *(v64 + 2) = v82;
  v64[24] = v73;
  *(v64 + 4) = v81;
  v64[40] = v74;
  v65 = v79;
  *(v64 + 6) = v80;
  *(v64 + 7) = v65;
  v66 = v98;
  sub_24B8F3208(v98, v61 + v63[20], &qword_27F069F00);
  v67 = v61 + v63[24];
  *v67 = 0;
  v67[8] = v75;
  *(v67 + 2) = v96;
  v67[24] = v87;
  *(v67 + 4) = v78;
  v67[40] = v88;
  v68 = v76;
  *(v67 + 6) = v77;
  *(v67 + 7) = v68;
  v89(v61 + v63[28], v59, v60);
  v69 = *(v58 + 8);
  v69(v99, v60);
  sub_24B8F35E4(v47, &qword_27F069F00);
  sub_24B8F35E4(v95, &qword_27F069F00);
  v69(v59, v60);
  sub_24B8F35E4(v66, &qword_27F069F00);
  return sub_24B8F35E4(v97, &qword_27F069F00);
}

uint64_t sub_24BA65DA8()
{
  if (!*(v0 + *(type metadata accessor for AddAppFiltersView() + 20)))
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA63454(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  sub_24B984444();
  v1 = sub_24B8D7188();

  if (v1)
  {
    v2 = [v1 mode];

    v3 = [v2 semanticType];

    if (v3 > 3)
    {
      if (v3 <= 5)
      {
        if (v3 == 4)
        {
          if (qword_27F063110 == -1)
          {
            return sub_24BAA7C2C();
          }
        }

        else if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }

        goto LABEL_34;
      }

      if (v3 != 6)
      {
        if (v3 != 7)
        {
          if (v3 == 8)
          {
            if (qword_27F063110 == -1)
            {
              return sub_24BAA7C2C();
            }

            goto LABEL_34;
          }

          goto LABEL_11;
        }

        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }

LABEL_34:
        swift_once();
        return sub_24BAA7C2C();
      }

LABEL_28:
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_34;
    }

    if (v3 > 1)
    {
      goto LABEL_28;
    }

    if (!v3)
    {
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_34;
    }

    if (v3 == 1)
    {
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_34;
    }
  }

  else
  {
  }

LABEL_11:
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24BAAD5B0;

  sub_24B984444();
  v5 = sub_24B8D7188();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 mode];

    v8 = [v7 name];
    v9 = sub_24BAAA01C();
    v11 = v10;
  }

  else
  {

    v9 = 0;
    v11 = 0xE000000000000000;
  }

  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_24B8F6A20();
  *(v4 + 32) = v9;
  *(v4 + 40) = v11;
  v12 = sub_24BAA9FEC();

  return v12;
}

uint64_t sub_24BA66360(uint64_t a1)
{
  v2 = type metadata accessor for AddAppFiltersView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA63454(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA86CC();
  swift_getKeyPath();
  sub_24BAA86EC();

  v8 = v10;
  v9 = v11;
  sub_24BA69C3C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AddAppFiltersView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_24BA69CA4(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for AddAppFiltersView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063D30);
  sub_24BAA7E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A420);
  sub_24B900C5C();
  sub_24BA6934C();
  sub_24B900E1C();
  return sub_24BAA9C0C();
}

uint64_t sub_24BA665B8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24BAA8AFC();
  MEMORY[0x28223BE20](v6 - 8);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A450);
  MEMORY[0x28223BE20](v43);
  v42 = v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A440);
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A430);
  v47 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v44 = v38 - v12;
  v13 = type metadata accessor for FocusConfigurationAction(0);
  MEMORY[0x28223BE20](v13);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670);
  MEMORY[0x24C24FC10]();
  v17 = v15[*(v13 + 20)];
  sub_24BA698BC(v15, type metadata accessor for FocusConfigurationAction);
  if (v17)
  {
    v18 = 1;
  }

  else
  {
    v40 = v11;
    v41 = a3;
    MEMORY[0x24C24FC10](v16);
    v19 = &v15[*(v13 + 32)];
    v20 = *v19;
    v21 = v19[1];

    v38[0] = type metadata accessor for FocusConfigurationAction;
    sub_24BA698BC(v15, type metadata accessor for FocusConfigurationAction);
    v22 = _s15FocusSettingsUI12InstalledAppC16bundleIdentifierACSS_tcfC_0(v20, v21);
    v23 = MEMORY[0x28223BE20](v22);
    v38[-4] = a1;
    v38[-3] = v23;
    v36 = a2;
    v38[1] = v23;
    sub_24BA66BA8(v23, a2, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A458);
    sub_24BA694E4();
    sub_24BA695CC();
    v39 = v10;
    sub_24BAA84AC();
    sub_24BAA8AEC();
    sub_24BAA8ADC();
    MEMORY[0x24C24FC10](v16);
    sub_24B9B1220(v15);
    v24 = v38[0];
    sub_24BA698BC(v15, v38[0]);
    sub_24BAA8ACC();

    sub_24BAA8ADC();
    MEMORY[0x24C24FC10](v16);
    sub_24B9B1330(v15);
    v26 = v25;
    sub_24BA698BC(v15, v24);
    if (!v26)
    {
      if (qword_27F063110 != -1)
      {
        swift_once();
      }

      v36 = 0xE000000000000000;
      sub_24BAA7C2C();
    }

    v27 = v39;
    sub_24BAA8ACC();

    sub_24BAA8ADC();
    sub_24BAA8B1C();
    v37 = 256;
    v36 = 0;
    v28 = sub_24BAA93BC();
    v30 = v29;
    v32 = v31;
    sub_24B8F384C(&qword_27F06A438, &qword_27F06A440);
    v33 = v44;
    v34 = v46;
    sub_24BAA958C();

    sub_24B900910(v28, v30, v32 & 1);

    (*(v45 + 8))(v27, v34);
    a3 = v41;
    sub_24B90294C(v33, v41, &qword_27F06A430);
    v18 = 0;
    v11 = v40;
  }

  return (*(v47 + 56))(a3, v18, 1, v11);
}

uint64_t sub_24BA66BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v49 = a2;
  v50 = a3;
  v4 = type metadata accessor for AddAppFiltersView();
  v5 = v4 - 8;
  v48 = *(v4 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FocusConfigurationAction(0);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  v14 = type metadata accessor for AppConfigurationHostView(0);
  v15 = (v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(a1 + 24);
  v46 = *(a1 + 32);
  v47 = v18;

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670);
  MEMORY[0x24C24FC10]();
  v20 = &v13[*(v8 + 36)];
  v21 = *v20;
  v43 = *(v20 + 1);
  v44 = v21;

  sub_24BA698BC(v13, type metadata accessor for FocusConfigurationAction);
  MEMORY[0x24C24FC10](v19);
  v22 = &v11[*(v8 + 40)];
  v24 = *v22;
  v23 = *(v22 + 1);

  sub_24BA698BC(v11, type metadata accessor for FocusConfigurationAction);
  sub_24BAA9B8C();
  v25 = v49;
  v26 = v45;
  sub_24BA69C3C(v49, v45, type metadata accessor for AddAppFiltersView);
  v27 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v28 = swift_allocObject();
  sub_24BA69CA4(v26, v28 + v27, type metadata accessor for AddAppFiltersView);
  *v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  swift_storeEnumTagMultiPayload();
  v29 = (v17 + v15[7]);
  v30 = v46;
  *v29 = v47;
  v29[1] = v30;
  v31 = (v17 + v15[8]);
  v32 = v43;
  *v31 = v44;
  v31[1] = v32;
  v33 = (v17 + v15[9]);
  *v33 = v24;
  v33[1] = v23;
  v34 = (v17 + v15[11]);
  *v34 = sub_24BA696CC;
  v34[1] = v28;
  v35 = v17 + v15[12];
  v51 = 0;
  sub_24BAA99EC();
  v36 = v53;
  *v35 = v52;
  *(v35 + 1) = v36;
  v37 = *(v25 + *(v5 + 28));
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA63454(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  if (v37)
  {

    v38 = sub_24BAA813C();
    v39 = v50;
    sub_24BA69CA4(v17, v50, type metadata accessor for AppConfigurationHostView);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A450);
    v41 = (v39 + *(result + 36));
    *v41 = v38;
    v41[1] = v37;
  }

  else
  {
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA66FE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v38 = a2;
  v39 = a3;
  v4 = type metadata accessor for FocusConfigurationAction(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FilterGridItem();
  MEMORY[0x28223BE20](v7);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670);
  MEMORY[0x24C24FC10]();
  v11 = sub_24B9B1220(v6);
  v36 = v12;
  v37 = v11;
  sub_24BA698BC(v6, type metadata accessor for FocusConfigurationAction);
  MEMORY[0x24C24FC10](v10);
  v13 = sub_24B9B1330(v6);
  v15 = v14;
  sub_24BA698BC(v6, type metadata accessor for FocusConfigurationAction);
  if (v15)
  {
    v35 = v13;
  }

  else
  {
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v35 = sub_24BAA7C2C();
    v15 = v16;
  }

  type metadata accessor for AppIconCache();
  sub_24BA63454(&qword_27F0651D0, type metadata accessor for AppIconCache);

  v17 = sub_24BAA86FC();
  v19 = v18;
  KeyPath = swift_getKeyPath();
  type metadata accessor for ActivityConfigViewModel();
  v21 = a1;
  sub_24BA63454(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *v9 = sub_24BAA86FC();
  v9[1] = v22;
  v23 = v7[5];
  *(v9 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v24 = v7[6];
  *(v9 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v25 = (v9 + v7[7]);
  v26 = v36;
  *v25 = v37;
  v25[1] = v26;
  v27 = (v9 + v7[8]);
  *v27 = v35;
  v27[1] = v15;
  *(v9 + v7[9]) = 0;
  v28 = v9 + v7[10];
  *v28 = v21;
  *(v28 + 1) = 0x4038000000000000;
  *(v28 + 2) = v17;
  *(v28 + 3) = v19;
  *(v28 + 4) = KeyPath;
  v28[40] = 0;
  *(v9 + v7[11]) = 0;
  *(v9 + v7[12]) = 1;
  *(v9 + v7[13]) = 1;
  *(v9 + v7[14]) = 1;
  type metadata accessor for AddAppFiltersView();
  v29 = sub_24BAA82FC();
  v30 = sub_24BAA813C();
  v31 = v39;
  sub_24BA69CA4(v9, v39, type metadata accessor for FilterGridItem);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A458);
  v33 = (v31 + *(result + 36));
  *v33 = v30;
  v33[1] = v29;
  return result;
}

uint64_t sub_24BA673E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v87 = a1;
  v94 = a2;
  v88 = sub_24BAA8DFC();
  MEMORY[0x28223BE20](v88);
  v89 = (&v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A478);
  v92 = *(v93 - 8);
  v3 = MEMORY[0x28223BE20](v93);
  v91 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v99 = &v71 - v5;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069F00);
  v6 = MEMORY[0x28223BE20](v96);
  v98 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v97 = &v71 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v90 = &v71 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v71 - v12;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v86 = v101;
  v85 = v103;
  v84 = v105;
  v83 = v106;
  v121 = 1;
  v120 = v102;
  v119 = v104;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v78 = qword_27F077088;
  v113 = sub_24BAA7C2C();
  v114 = v14;
  v77 = sub_24B8F5E3C();
  v15 = sub_24BAA93CC();
  v17 = v16;
  v19 = v18;
  sub_24BAA928C();
  v20 = sub_24BAA939C();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_24B900910(v15, v17, v19 & 1);

  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069F10);
  v27 = &v13[*(v76 + 36)];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B10);
  v28 = *(v75 + 28);
  v29 = sub_24BAA937C();
  v30 = *(v29 - 8);
  v73 = *(v30 + 56);
  v74 = v30 + 56;
  v73(v27 + v28, 1, 1, v29);
  *v27 = swift_getKeyPath();
  *v13 = v20;
  *(v13 + 1) = v22;
  v13[16] = v24 & 1;
  *(v13 + 3) = v26;
  v95 = v13;
  v31 = sub_24BAA988C();
  KeyPath = swift_getKeyPath();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069F08);
  v33 = &v13[*(v72 + 36)];
  *v33 = KeyPath;
  v33[1] = v31;
  v34 = sub_24BAA90AC();
  v35 = &v13[*(v96 + 36)];
  *v35 = v34;
  *(v35 + 8) = 0u;
  *(v35 + 24) = 0u;
  v35[40] = 1;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v82 = v107;
  v81 = v109;
  v80 = v111;
  v79 = v112;
  v124 = 1;
  v123 = v108;
  v122 = v110;
  v113 = sub_24BAA7C2C();
  v114 = v36;
  v37 = sub_24BAA93CC();
  v39 = v38;
  v41 = v40;
  sub_24BAA927C();
  v42 = sub_24BAA939C();
  v44 = v43;
  LOBYTE(v26) = v45;
  v47 = v46;

  sub_24B900910(v37, v39, v41 & 1);

  v48 = v90;
  v49 = &v90[*(v76 + 36)];
  v73(v49 + *(v75 + 28), 1, 1, v29);
  *v49 = swift_getKeyPath();
  *v48 = v42;
  *(v48 + 8) = v44;
  *(v48 + 16) = v26 & 1;
  *(v48 + 24) = v47;
  v50 = sub_24BAA989C();
  v51 = swift_getKeyPath();
  v52 = (v48 + *(v72 + 36));
  *v52 = v51;
  v52[1] = v50;
  v53 = sub_24BAA90AC();
  v54 = v48 + *(v96 + 36);
  *v54 = v53;
  *(v54 + 8) = 0u;
  *(v54 + 24) = 0u;
  *(v54 + 40) = 1;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v96 = v113;
  v78 = v115;
  v77 = v117;
  v76 = v118;
  v127 = 1;
  v126 = v114;
  v125 = v116;
  v55 = sub_24BA63D64();
  MEMORY[0x28223BE20](v55);
  sub_24BAA8BCC();
  v100 = 0;
  sub_24BA63454(&qword_27F065160, MEMORY[0x277CE0428]);
  sub_24BAAA85C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A480);
  sub_24BA696DC(&qword_27F06A488, &qword_27F06A480, &unk_24BABD0C0, sub_24BA69758);
  v56 = v99;
  sub_24BAA9D8C();
  LOBYTE(v50) = v121;
  LOBYTE(v26) = v120;
  LOBYTE(v42) = v119;
  v57 = v97;
  sub_24B8F3208(v95, v97, &qword_27F069F00);
  LODWORD(v72) = v124;
  LODWORD(v73) = v123;
  LODWORD(v74) = v122;
  sub_24B8F3208(v48, v98, &qword_27F069F00);
  LODWORD(v75) = v127;
  LODWORD(v87) = v126;
  LODWORD(v88) = v125;
  v58 = v92;
  v89 = *(v92 + 16);
  v59 = v91;
  v60 = v93;
  v89(v91, v56, v93);
  v61 = v94;
  *v94 = 0;
  *(v61 + 8) = v50;
  v61[2] = v86;
  *(v61 + 24) = v26;
  v61[4] = v85;
  *(v61 + 40) = v42;
  v62 = v83;
  v61[6] = v84;
  v61[7] = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A4B0);
  sub_24B8F3208(v57, v61 + v63[12], &qword_27F069F00);
  v64 = v61 + v63[16];
  *v64 = 0;
  v64[8] = v72;
  *(v64 + 2) = v82;
  v64[24] = v73;
  *(v64 + 4) = v81;
  v64[40] = v74;
  v65 = v79;
  *(v64 + 6) = v80;
  *(v64 + 7) = v65;
  v66 = v98;
  sub_24B8F3208(v98, v61 + v63[20], &qword_27F069F00);
  v67 = v61 + v63[24];
  *v67 = 0;
  v67[8] = v75;
  *(v67 + 2) = v96;
  v67[24] = v87;
  *(v67 + 4) = v78;
  v67[40] = v88;
  v68 = v76;
  *(v67 + 6) = v77;
  *(v67 + 7) = v68;
  v89(v61 + v63[28], v59, v60);
  v69 = *(v58 + 8);
  v69(v99, v60);
  sub_24B8F35E4(v48, &qword_27F069F00);
  sub_24B8F35E4(v95, &qword_27F069F00);
  v69(v59, v60);
  sub_24B8F35E4(v66, &qword_27F069F00);
  return sub_24B8F35E4(v97, &qword_27F069F00);
}

uint64_t sub_24BA67F2C(uint64_t a1)
{
  v2 = type metadata accessor for AddAppFiltersView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA63454(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA86CC();
  swift_getKeyPath();
  sub_24BAA86EC();

  v8 = v10;
  v9 = v11;
  sub_24BA69C3C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AddAppFiltersView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_24BA69CA4(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for AddAppFiltersView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063D78);
  sub_24BAA7E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A498);
  sub_24B900F44();
  sub_24BA69758();
  sub_24B901104();
  return sub_24BAA9C0C();
}

uint64_t sub_24BA68184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A4B8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A4A8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = type metadata accessor for FocusSystemConfigurationAction(0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DB8);
  MEMORY[0x24C24FC10](v17);
  LOBYTE(v14) = v16[*(v14 + 28)];
  v18 = sub_24BA698BC(v16, type metadata accessor for FocusSystemConfigurationAction);
  if (v14)
  {
    v19 = 1;
  }

  else
  {
    MEMORY[0x28223BE20](v18);
    *(&v21 - 2) = a1;
    *(&v21 - 1) = a2;
    sub_24BA68430(a2, v8);
    type metadata accessor for FilterGridItem();
    sub_24BA63454(&qword_27F063E58, type metadata accessor for FilterGridItem);
    sub_24BA69924();
    sub_24BAA84AC();
    (*(v10 + 32))(a3, v12, v9);
    v19 = 0;
  }

  return (*(v10 + 56))(a3, v19, 1, v9);
}

uint64_t sub_24BA68430@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v41 = a1;
  v42 = a2;
  v2 = type metadata accessor for AddAppFiltersView();
  v3 = v2 - 8;
  v40 = *(v2 - 8);
  v39 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FocusSystemConfigurationAction(0);
  v6 = v5 - 8;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  v12 = type metadata accessor for SystemConfigurationHostView(0);
  v13 = (v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DB8);
  MEMORY[0x24C24FC10]();
  v17 = *&v11[*(v6 + 40)];
  sub_24BA698BC(v11, type metadata accessor for FocusSystemConfigurationAction);
  v18 = [v17 title];

  v19 = sub_24BAAA01C();
  v37 = v20;

  MEMORY[0x24C24FC10](v16);
  v21 = &v9[*(v6 + 36)];
  v22 = *v21;
  v23 = *(v21 + 1);

  sub_24BA698BC(v9, type metadata accessor for FocusSystemConfigurationAction);
  sub_24BAA9B8C();
  v24 = v41;
  v25 = v38;
  sub_24BA69C3C(v41, v38, type metadata accessor for AddAppFiltersView);
  v26 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v27 = swift_allocObject();
  sub_24BA69CA4(v25, v27 + v26, type metadata accessor for AddAppFiltersView);
  *v15 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  swift_storeEnumTagMultiPayload();
  v28 = (v15 + v13[7]);
  v29 = v37;
  *v28 = v19;
  v28[1] = v29;
  v30 = (v15 + v13[8]);
  *v30 = v22;
  v30[1] = v23;
  v31 = (v15 + v13[10]);
  *v31 = sub_24BA69D60;
  v31[1] = v27;
  v32 = *(v24 + *(v3 + 28));
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA63454(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  if (v32)
  {

    v33 = sub_24BAA813C();
    v34 = v42;
    sub_24BA69CA4(v15, v42, type metadata accessor for SystemConfigurationHostView);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A4B8);
    v36 = (v34 + *(result + 36));
    *v36 = v33;
    v36[1] = v32;
  }

  else
  {
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA68854(char a1)
{
  v2 = sub_24BAA868C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940);
  result = MEMORY[0x28223BE20](v3);
  v6 = &v7 - v5;
  if (a1)
  {
    sub_24BA8DA5C(&v7 - v5);
    MEMORY[0x24C24FC10](v3);
    sub_24BAA867C();
    sub_24BAA9B6C();
    return sub_24B8F35E4(v6, &qword_27F063940);
  }

  return result;
}

double sub_24BA68970@<D0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for FocusSystemConfigurationAction(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v32 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DB8);
  MEMORY[0x24C24FC10]();
  v12 = *&v10[*(v2 + 32)];
  sub_24BA698BC(v10, type metadata accessor for FocusSystemConfigurationAction);
  v13 = [v12 title];

  v33 = sub_24BAAA01C();
  v15 = v14;

  MEMORY[0x24C24FC10](v11);
  v16 = *&v8[*(v2 + 32)];
  sub_24BA698BC(v8, type metadata accessor for FocusSystemConfigurationAction);
  v17 = [v16 subtitle];

  if (v17)
  {
    v18 = sub_24BAAA01C();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  MEMORY[0x24C24FC10](v11);
  v21 = [*&v5[*(v2 + 32)] icon];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 systemName];

    if (v23)
    {
      sub_24BAAA01C();

      v23 = sub_24BAA994C();
    }
  }

  else
  {
    v23 = 0;
  }

  sub_24BA698BC(v5, type metadata accessor for FocusSystemConfigurationAction);
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA63454(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *a1 = sub_24BAA86FC();
  a1[1] = v24;
  v25 = type metadata accessor for FilterGridItem();
  v26 = v25[5];
  *(a1 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v27 = v25[6];
  *(a1 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v28 = (a1 + v25[7]);
  *v28 = v33;
  v28[1] = v15;
  v29 = (a1 + v25[8]);
  *v29 = v18;
  v29[1] = v20;
  *(a1 + v25[9]) = v23;
  v30 = (a1 + v25[10]);
  result = 0.0;
  *(v30 + 25) = 0u;
  *v30 = 0u;
  v30[1] = 0u;
  *(a1 + v25[11]) = 0;
  *(a1 + v25[12]) = 1;
  *(a1 + v25[13]) = 1;
  *(a1 + v25[14]) = 1;
  return result;
}

uint64_t sub_24BA68CF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A330);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A338);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068FA0);
  sub_24BA68E50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068FB0);
  sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_24BAA84CC();
}

unint64_t sub_24BA68E50()
{
  result = qword_27F06A340;
  if (!qword_27F06A340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A338);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A348);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A350);
    sub_24BA68F70();
    swift_getOpaqueTypeConformance2();
    sub_24B8F5E3C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A340);
  }

  return result;
}

unint64_t sub_24BA68F70()
{
  result = qword_27F06A358;
  if (!qword_27F06A358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A350);
    sub_24B8F384C(&qword_27F06A360, &qword_27F06A368);
    sub_24B8F384C(&qword_27F063B18, &qword_27F063B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A358);
  }

  return result;
}

unint64_t sub_24BA6905C()
{
  result = qword_27F06A378;
  if (!qword_27F06A378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A370);
    sub_24B8F384C(&qword_27F06A380, &qword_27F06A388);
    sub_24BA69114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A378);
  }

  return result;
}

unint64_t sub_24BA69114()
{
  result = qword_27F06A390;
  if (!qword_27F06A390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A398);
    sub_24B8F384C(&qword_27F06A3A0, &qword_27F06A3A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A390);
  }

  return result;
}

uint64_t sub_24BA691D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A338);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_24BA692A4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_24BA2B94C(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

unint64_t sub_24BA6934C()
{
  result = qword_27F06A418;
  if (!qword_27F06A418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A420);
    sub_24BA693D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A418);
  }

  return result;
}

unint64_t sub_24BA693D0()
{
  result = qword_27F06A428;
  if (!qword_27F06A428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A430);
    sub_24B8F384C(&qword_27F06A438, &qword_27F06A440);
    sub_24BA63454(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A428);
  }

  return result;
}

unint64_t sub_24BA694E4()
{
  result = qword_27F06A460;
  if (!qword_27F06A460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A458);
    sub_24BA63454(&qword_27F063E58, type metadata accessor for FilterGridItem);
    sub_24B8F384C(&qword_27F063E70, &unk_27F068AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A460);
  }

  return result;
}

unint64_t sub_24BA695CC()
{
  result = qword_27F06A468;
  if (!qword_27F06A468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A450);
    sub_24BA63454(&qword_27F06A470, type metadata accessor for AppConfigurationHostView);
    sub_24B8F384C(&qword_27F063E60, &qword_27F063E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A468);
  }

  return result;
}

uint64_t sub_24BA696DC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24BA69758()
{
  result = qword_27F06A490;
  if (!qword_27F06A490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A498);
    sub_24B8F384C(&qword_27F06A4A0, &qword_27F06A4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A490);
  }

  return result;
}

uint64_t sub_24BA69828(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AddAppFiltersView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_24BA698BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24BA69924()
{
  result = qword_27F06A4C0;
  if (!qword_27F06A4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A4B8);
    sub_24BA63454(&qword_27F06A4C8, type metadata accessor for SystemConfigurationHostView);
    sub_24B8F384C(&qword_27F063E60, &qword_27F063E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A4C0);
  }

  return result;
}

uint64_t objectdestroyTm_22()
{
  v1 = type metadata accessor for AddAppFiltersView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v8 = sub_24BAA868C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  v9 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24BAA854C();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  sub_24B900C14();

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24BA69C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24BA69CA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24BA69D64@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *a1 = sub_24BAA86FC();
  a1[1] = v2;
  v3 = type metadata accessor for FacesAndPagesPicker(0);
  v4 = v3[5];
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v5 = v3[6];
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067478);
  swift_storeEnumTagMultiPayload();
  v6 = v3[7];
  *(a1 + v6) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v7 = a1 + v3[8];
  sub_24BAA99EC();
  *v7 = v17;
  *(v7 + 1) = v18;
  v8 = a1 + v3[9];
  sub_24BAA99EC();
  *v8 = v17;
  *(v8 + 1) = v18;
  v9 = a1 + v3[10];
  sub_24BAA99EC();
  *v9 = v17;
  *(v9 + 1) = v18;
  v10 = a1 + v3[11];
  sub_24BAA99EC();
  *v10 = v17;
  *(v10 + 1) = v18;
  v11 = a1 + v3[12];
  sub_24BAA99EC();
  *v11 = v17;
  *(v11 + 1) = v18;
  v12 = a1 + v3[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A4E0);
  sub_24BAA99EC();
  *v12 = v17;
  v12[8] = v18;
  *(v12 + 2) = v19;
  v13 = a1 + v3[14];
  sub_24BAA99EC();
  *v13 = v17;
  *(v13 + 1) = v18;
  v14 = a1 + v3[15];
  sub_24BAA99EC();
  *v14 = v17;
  *(v14 + 1) = v18;
  v15 = a1 + v3[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A4E8);
  result = sub_24BAA99EC();
  *v15 = v17;
  v15[8] = v18;
  *(v15 + 2) = v19;
  return result;
}

double sub_24BA6A090@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = type metadata accessor for FacesAndPagesPicker(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v59 = v5;
  v6 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v50[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A518);
  MEMORY[0x28223BE20](v10);
  v12 = &v50[-v11];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A520);
  MEMORY[0x28223BE20](v52);
  v51 = &v50[-v13];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A528);
  MEMORY[0x28223BE20](v54);
  v53 = &v50[-v14];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A530);
  MEMORY[0x28223BE20](v55);
  v58 = &v50[-v15];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A538);
  MEMORY[0x28223BE20](v57);
  v56 = &v50[-v16];
  *v9 = sub_24BAA8AAC();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A540);
  sub_24BA6A890(v1, &v9[*(v17 + 44)]);
  v18 = v1 + *(v3 + 64);
  v19 = *v18;
  v20 = *(v18 + 8);
  v21 = *(v18 + 16);
  *&v63 = v19;
  BYTE8(v63) = v20;
  *&v64 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A548);
  sub_24BAA99FC();
  if (v62 == 1)
  {
    v22 = v1 + *(v3 + 60);
    v23 = *v22;
    v24 = *(v22 + 8);
    LOBYTE(v63) = v23;
    *(&v63 + 1) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
    sub_24BAA99FC();
    sub_24BA6ACDC();
  }

  sub_24BAA9D1C();
  sub_24BAA86BC();
  sub_24B90294C(v9, v12, &qword_27F06A510);
  v25 = &v12[*(v10 + 36)];
  v26 = v68;
  v25[4] = v67;
  v25[5] = v26;
  v25[6] = v69;
  v27 = v64;
  *v25 = v63;
  v25[1] = v27;
  v28 = v66;
  v25[2] = v65;
  v25[3] = v28;
  v61 = type metadata accessor for FacesAndPagesPicker;
  sub_24BA7F4E4(v1, v6, type metadata accessor for FacesAndPagesPicker);
  v29 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v30 = swift_allocObject();
  sub_24BA7EF64(v6, v30 + v29, type metadata accessor for FacesAndPagesPicker);
  v31 = v12;
  v32 = v51;
  sub_24B90294C(v31, v51, &qword_27F06A518);
  v33 = &v32[*(v52 + 36)];
  *v33 = sub_24BA7E960;
  v33[1] = v30;
  v33[2] = 0;
  v33[3] = 0;
  sub_24BA7F4E4(v2, v6, type metadata accessor for FacesAndPagesPicker);
  v34 = swift_allocObject();
  sub_24BA7EF64(v6, v34 + v29, type metadata accessor for FacesAndPagesPicker);
  v35 = v53;
  sub_24B90294C(v32, v53, &qword_27F06A520);
  v36 = &v35[v54[9]];
  *v36 = 0;
  v36[1] = 0;
  v36[2] = sub_24BA7ECBC;
  v36[3] = v34;
  v54 = objc_opt_self();
  v37 = [v54 defaultCenter];
  v38 = v55;
  v39 = v58;
  sub_24BAAA37C();

  sub_24BA7F4E4(v2, v6, v61);
  v40 = swift_allocObject();
  sub_24BA7EF64(v6, v40 + v29, type metadata accessor for FacesAndPagesPicker);
  sub_24B90294C(v35, v39, &qword_27F06A528);
  v41 = (v39 + *(v38 + 56));
  *v41 = sub_24BA7ED64;
  v41[1] = v40;
  v42 = [v54 defaultCenter];
  v43 = v57;
  v44 = v56;
  sub_24BAAA37C();

  sub_24BA7F4E4(v2, v6, v61);
  v45 = swift_allocObject();
  sub_24BA7EF64(v6, v45 + v29, type metadata accessor for FacesAndPagesPicker);
  sub_24B90294C(v39, v44, &qword_27F06A530);
  v46 = (v44 + *(v43 + 56));
  *v46 = sub_24BA7ED90;
  v46[1] = v45;
  LOBYTE(v45) = sub_24BAA911C();
  v47 = v60;
  sub_24B90294C(v44, v60, &qword_27F06A538);
  v48 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A550) + 36);
  *v48 = v45;
  result = 0.0;
  *(v48 + 8) = 0u;
  *(v48 + 24) = 0u;
  *(v48 + 40) = 1;
  return result;
}

uint64_t sub_24BA6A890@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for FacesAndPagesPicker.contents(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v49[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A560);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v59 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v49[-v12];
  MEMORY[0x28223BE20](v11);
  v58 = &v49[-v14];
  v15 = type metadata accessor for FacesAndPagesPicker(0);
  v16 = (a1 + v15[8]);
  v17 = *v16;
  v18 = *(v16 + 1);
  v64 = v17;
  v65 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA9A1C();
  v56 = v62;
  v57 = v61;
  v55 = v63;
  v19 = (a1 + v15[9]);
  v20 = *v19;
  v21 = *(v19 + 1);
  v64 = v20;
  v65 = v21;
  sub_24BAA9A1C();
  v53 = v62;
  v54 = v61;
  v52 = v63;
  v22 = (a1 + v15[10]);
  v23 = *v22;
  v24 = *(v22 + 1);
  v64 = v23;
  v65 = v24;
  sub_24BAA9A1C();
  v25 = v62;
  v51 = v61;
  v50 = v63;
  v26 = (a1 + v15[15]);
  v27 = *v26;
  v28 = *(v26 + 1);
  LOBYTE(v61) = v27;
  v62 = v28;
  sub_24BAA99FC();
  v29 = v64;
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *v6 = sub_24BAA86FC();
  v6[1] = v30;
  v31 = v4[7];
  *(v6 + v31) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v32 = v6 + v4[8];
  v33 = v56;
  *v32 = v57;
  *(v32 + 1) = v33;
  v32[16] = v55;
  v34 = v6 + v4[9];
  v35 = v53;
  *v34 = v54;
  *(v34 + 1) = v35;
  v34[16] = v52;
  v36 = v6 + v4[10];
  *v36 = v51;
  *(v36 + 1) = v25;
  v36[16] = v50;
  *(v6 + v4[11]) = v29;
  v37 = v4[12];
  *(v6 + v37) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v38 = (a1 + v15[12]);
  v39 = *v38;
  v40 = *(v38 + 1);
  LOBYTE(v61) = v39;
  v62 = v40;
  sub_24BAA99FC();
  if (v64)
  {
    v41 = 1.0;
  }

  else
  {
    v41 = 0.0;
  }

  sub_24BA7EF64(v6, v13, type metadata accessor for FacesAndPagesPicker.contents);
  *&v13[*(v8 + 44)] = v41;
  v42 = v58;
  sub_24B90294C(v13, v58, &qword_27F06A560);
  v43 = v59;
  sub_24B8F3208(v42, v59, &qword_27F06A560);
  v44 = v60;
  *v60 = 0;
  *(v44 + 8) = 1;
  v45 = v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A568);
  sub_24B8F3208(v43, v45 + *(v46 + 48), &qword_27F06A560);
  v47 = v45 + *(v46 + 64);
  *v47 = 0;
  *(v47 + 8) = 1;
  sub_24B8F35E4(v42, &qword_27F06A560);
  return sub_24B8F35E4(v43, &qword_27F06A560);
}

void sub_24BA6ACDC()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  CGRectGetWidth(v10);
  v11.origin.x = v2;
  v11.origin.y = v4;
  v11.size.width = v6;
  v11.size.height = v8;
  CGRectGetHeight(v11);
  v12.origin.x = v2;
  v12.origin.y = v4;
  v12.size.width = v6;
  v12.size.height = v8;
  CGRectGetWidth(v12);
  v13.origin.x = v2;
  v13.origin.y = v4;
  v13.size.width = v6;
  v13.size.height = v8;
  CGRectGetHeight(v13);
  v9 = [objc_opt_self() currentDevice];
  [v9 userInterfaceIdiom];
}

void sub_24BA6AE4C(uint64_t *a1)
{
  v2 = sub_24BAA9E2C();
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x28223BE20](v2);
  v57 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_24BAA9E5C();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v55 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FacesAndPagesPicker(0);
  v50 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v51 = v6;
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_24BAA9E7C();
  v54 = *(v61 - 8);
  v7 = MEMORY[0x28223BE20](v61);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v53 = &v47 - v9;
  v10 = a1 + v5[14];
  v11 = *v10;
  v12 = *(v10 + 1);
  LOBYTE(aBlock) = *v10;
  v63 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA99FC();
  if ((v68 & 1) == 0)
  {
    v13 = [objc_opt_self() currentDevice];
    [v13 beginGeneratingDeviceOrientationNotifications];

    LOBYTE(aBlock) = v11;
    v63 = v12;
    LOBYTE(v68) = 1;
    sub_24BAA9A0C();
  }

  v14 = [objc_opt_self() sharedApplication];
  v15 = [v14 connectedScenes];

  sub_24B8F37E8(0, &qword_27F066AB0);
  sub_24BA57E20();
  v16 = sub_24BAAA20C();

  v17 = sub_24B981258(v16);

  if (v17)
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    v19 = v18;
    if (v18)
    {
      v20 = [v18 interfaceOrientation];
      v21 = 0;
      goto LABEL_9;
    }

    v20 = 0;
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  v21 = 1;
LABEL_9:
  v22 = a1 + v5[13];
  v24 = v22[8];
  v25 = *(v22 + 2);
  aBlock = *v22;
  v23 = aBlock;
  LOBYTE(v63) = v24;
  v64 = v25;
  v68 = v20;
  v69 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A558);
  sub_24BAA9A0C();
  aBlock = v23;
  LOBYTE(v63) = v24;
  v64 = v25;
  sub_24BAA99FC();
  if (v69)
  {
    v26 = 1;
  }

  else
  {
    v26 = v68;
  }

  sub_24BA6B77C(v26);
  v27 = a1 + v5[11];
  v29 = *(v27 + 1);
  LOBYTE(aBlock) = *v27;
  v28 = aBlock;
  v63 = v29;
  sub_24BAA99FC();
  v30 = v68;
  LOBYTE(aBlock) = v28;
  v63 = v29;
  LOBYTE(v68) = 1;
  sub_24BAA9A0C();
  if (v30 == 1)
  {
    if (v19)
    {
      v31 = [v19 interfaceOrientation];
      v32 = *a1;
      if (*a1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v31 = 1;
      v32 = *a1;
      if (*a1)
      {
LABEL_15:

        sub_24B997350(v31);

        sub_24B993494();

        if (!*(v32 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshotsForSuggestedPages))
        {

          sub_24B993E6C(0);
        }

        v48 = v19;

        sub_24B996B7C(v31);

        if ((sub_24B9A18C0() & 1) == 0)
        {
          goto LABEL_20;
        }

        v33 = qword_27F0630C0;

        if (v33 == -1)
        {
LABEL_19:
          swift_getKeyPath();
          swift_getKeyPath();
          sub_24BAA81BC();

          v34 = aBlock;
          v35 = v63;
          v36 = swift_allocObject();
          swift_weakInit();

          sub_24B9E6944(v34, v35, sub_24B9A1E6C, v36);

LABEL_20:
          sub_24B8F37E8(0, &qword_27F0644F0);
          v37 = sub_24BAAA33C();
          v38 = v49;
          sub_24BAA9E6C();
          v39 = v53;
          sub_24BAA9EBC();
          v54 = *(v54 + 8);
          (v54)(v38, v61);
          v40 = v52;
          sub_24BA7F4E4(a1, v52, type metadata accessor for FacesAndPagesPicker);
          v41 = (*(v50 + 80) + 16) & ~*(v50 + 80);
          v42 = swift_allocObject();
          sub_24BA7EF64(v40, v42 + v41, type metadata accessor for FacesAndPagesPicker);
          v66 = sub_24BA7EE54;
          v67 = v42;
          aBlock = MEMORY[0x277D85DD0];
          v63 = 1107296256;
          v64 = sub_24B97ACC4;
          v65 = &block_descriptor_16;
          v43 = _Block_copy(&aBlock);

          v44 = v55;
          sub_24BAA9E4C();
          aBlock = MEMORY[0x277D84F90];
          sub_24BA7EE98(&qword_27F063470, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
          sub_24B8F384C(&qword_27F063480, &unk_27F064500);
          v45 = v57;
          v46 = v60;
          sub_24BAAA48C();
          MEMORY[0x24C2503B0](v39, v44, v45, v43);
          _Block_release(v43);

          (*(v59 + 8))(v45, v46);
          (*(v56 + 8))(v44, v58);
          (v54)(v39, v61);
          return;
        }

LABEL_24:
        swift_once();
        goto LABEL_19;
      }
    }

    type metadata accessor for ActivityConfigViewModel();
    sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    sub_24BAA86DC();
    __break(1u);
    goto LABEL_24;
  }
}

uint64_t sub_24BA6B77C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FacesAndPagesPicker(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  IsPortrait = UIInterfaceOrientationIsPortrait(a1);
  v8 = v2 + *(v4 + 60);
  v9 = *v8;
  v10 = *(v8 + 8);
  LOBYTE(v31) = v9;
  v32 = v10;
  LOBYTE(v29) = IsPortrait;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA9A0C();
  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v11 = sub_24BAA812C();
  __swift_project_value_buffer(v11, qword_27F077038);
  v12 = sub_24BAAA29C();
  sub_24BA7F4E4(v2, v6, type metadata accessor for FacesAndPagesPicker);
  v13 = sub_24BAA810C();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = *&v15;
    *v14 = 136315138;
    v16 = &v6[*(v4 + 60)];
    v17 = *v16;
    v18 = *(v16 + 1);
    LOBYTE(v31) = v17;
    v32 = v18;
    sub_24BAA99FC();
    if (HIBYTE(v28))
    {
      v19 = 0x7469617274726F70;
    }

    else
    {
      v19 = 0x70616373646E616CLL;
    }

    if (HIBYTE(v28))
    {
      v20 = 0xE800000000000000;
    }

    else
    {
      v20 = 0xE900000000000065;
    }

    sub_24BA7FFB4(v6, type metadata accessor for FacesAndPagesPicker);
    v21 = sub_24B8E49D4(v19, v20, &v29);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_24B8D3000, v13, v12, "Updating lock screen and home page views based on orientation %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C251390](v15, -1, -1);
    MEMORY[0x24C251390](v14, -1, -1);
  }

  else
  {

    sub_24BA7FFB4(v6, type metadata accessor for FacesAndPagesPicker);
  }

  sub_24BA6ACDC();
  v22 = v2 + *(v4 + 64);
  v23 = *v22;
  v24 = *(v22 + 8);
  v25 = *(v22 + 16);
  v31 = v23;
  LOBYTE(v32) = v24;
  v33 = v25;
  v29 = v26 + 40.0;
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A548);
  return sub_24BAA9A0C();
}

uint64_t sub_24BA6BA8C()
{
  sub_24BAA9D6C();
  sub_24BAA842C();
}

uint64_t sub_24BA6BB04()
{
  type metadata accessor for FacesAndPagesPicker(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  return sub_24BAA9A0C();
}

uint64_t sub_24BA6BB80()
{
  v0 = [objc_opt_self() currentDevice];
  [v0 endGeneratingDeviceOrientationNotifications];

  type metadata accessor for FacesAndPagesPicker(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA9A0C();
  return sub_24BAA9A0C();
}

void sub_24BA6BC60(uint64_t a1, uint64_t *a2)
{
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 connectedScenes];

  sub_24B8F37E8(0, &qword_27F066AB0);
  sub_24BA57E20();
  v5 = sub_24BAAA20C();

  v6 = sub_24B981258(v5);

  if (!v6)
  {
    v8 = 0;
LABEL_6:
    v9 = 1;
    goto LABEL_7;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  v8 = v7;
  if (!v7)
  {

    goto LABEL_6;
  }

  v9 = [v7 interfaceOrientation];
LABEL_7:
  type metadata accessor for FacesAndPagesPicker(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A558);
  sub_24BAA99FC();
  if ((v13 & 1) == 0 && v9 == v12)
  {
LABEL_13:

    return;
  }

  v10 = *a2;
  if (*a2)
  {

    sub_24B996B7C(v9);

    sub_24B997350(v9);

    if (*(v10 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshotsForSuggestedPages))
    {

      sub_24B992C90(v11, 0.5);
    }

    sub_24B9924B0();

    sub_24BAA9A0C();
    sub_24BA6B77C(v9);
    goto LABEL_13;
  }

  type metadata accessor for ActivityConfigViewModel();
  sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA86DC();
  __break(1u);
}

uint64_t sub_24BA6BEF8(uint64_t a1, void *a2)
{
  if (*a2)
  {

    sub_24B993494();

    sub_24B993E6C(0);

    type metadata accessor for FacesAndPagesPicker(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
    result = sub_24BAA99FC();
    if ((v4 & 1) == 0)
    {
      v3 = [objc_opt_self() currentDevice];
      [v3 beginGeneratingDeviceOrientationNotifications];

      return sub_24BAA9A0C();
    }
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA6C058@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FacesAndPagesPicker.contents(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (*v1)
  {

    sub_24B984444();
    v7 = sub_24B8D7188();

    if (v7)
    {
      v8 = [v7 mode];

      v9 = [v8 semanticType];

      v10 = v9 == 2;
    }

    else
    {

      v10 = 0;
    }

    v11 = sub_24BAA8A9C();
    v12 = sub_24BAA8BCC();
    sub_24BA7F4E4(v2, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FacesAndPagesPicker.contents);
    v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v14 = swift_allocObject();
    sub_24BA7EF64(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for FacesAndPagesPicker.contents);
    *(v14 + v13 + v6) = v10;
    *a1 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
    swift_storeEnumTagMultiPayload();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A590);
    v16 = a1 + v15[9];
    result = swift_getKeyPath();
    *v16 = result;
    v16[8] = 0;
    v18 = a1 + v15[10];
    *v18 = 0x4028000000000000;
    v18[8] = 0;
    v19 = a1 + v15[11];
    *v19 = 0;
    v19[8] = 0;
    v20 = (a1 + v15[12]);
    *v20 = sub_24BA7F730;
    v20[1] = v14;
    v21 = a1 + v15[13];
    *v21 = v11;
    v21[8] = 0;
    v22 = a1 + v15[14];
    *v22 = v12;
    v22[8] = 0;
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA6C334@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v202 = a3;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A598);
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v190 = (&v150 - v5);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A5A0);
  v180 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v178 = &v150 - v6;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A5A8);
  v181 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v179 = &v150 - v7;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A5B0);
  v8 = MEMORY[0x28223BE20](v198);
  v10 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v185 = &v150 - v11;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A5B8);
  v188 = *(v189 - 8);
  v12 = MEMORY[0x28223BE20](v189);
  v187 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v186 = &v150 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A5C0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v199 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v150 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A5C8);
  v195 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v176 = (&v150 - v21);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A5D0);
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v155 = &v150 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A5D8);
  v160 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v157 = &v150 - v24;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A5E0);
  v25 = MEMORY[0x28223BE20](v171);
  v161 = &v150 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v172 = &v150 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A5E8);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v162 = &v150 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A5F0);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v175 = &v150 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v191 = &v150 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A5F8);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v197 = &v150 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v212 = &v150 - v38;
  v206 = sub_24BAA866C();
  v205 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v204 = &v150 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for FacesAndPagesPicker.contents(0);
  v203 = *(v192 - 8);
  v40 = *(v203 + 64);
  v41 = MEMORY[0x28223BE20](v192);
  v156 = &v150 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v210 = &v150 - v42;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A600);
  MEMORY[0x28223BE20](v165);
  v163 = &v150 - v43;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A608);
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v164 = &v150 - v44;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A610);
  v193 = *(v194 - 8);
  v45 = MEMORY[0x28223BE20](v194);
  v169 = &v150 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v168 = &v150 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A618);
  v49 = MEMORY[0x28223BE20](v48 - 8);
  v196 = &v150 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v211 = &v150 - v51;
  v209 = a1;
  v170 = *a1;
  if (!v170)
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  v52 = sub_24B9A1468();
  v207 = v19;
  v184 = v10;
  v208 = v40;
  if (v52)
  {
    v153 = v23;
    v154 = a2;
    v173 = v29;
    v174 = v28;
    v177 = v20;
    v152 = type metadata accessor for FacesAndPagesPicker.contents;
    v53 = v209;
    v54 = v210;
    sub_24BA7F4E4(v209, v210, type metadata accessor for FacesAndPagesPicker.contents);
    v55 = (*(v203 + 80) + 16) & ~*(v203 + 80);
    v56 = swift_allocObject();
    v151 = type metadata accessor for FacesAndPagesPicker.contents;
    v57 = sub_24BA7EF64(v54, v56 + v55, type metadata accessor for FacesAndPagesPicker.contents);
    v150 = &v150;
    MEMORY[0x28223BE20](v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A690);
    v58 = v54;
    sub_24B8F384C(&qword_27F06A698, &qword_27F06A690);
    v59 = v163;
    sub_24BAA9A5C();
    v60 = [objc_opt_self() defaultCenter];
    v61 = v165;
    sub_24BAAA37C();

    sub_24BA7F4E4(v53, v58, v152);
    v62 = swift_allocObject();
    sub_24BA7EF64(v58, v62 + v55, v151);
    v63 = (v59 + *(v61 + 56));
    *v63 = sub_24BA7FF48;
    v63[1] = v62;
    v64 = v204;
    sub_24BAA865C();
    v65 = sub_24B8F384C(&qword_27F06A6A0, &qword_27F06A600);
    v66 = sub_24BA7EE98(&qword_27F063BF8, MEMORY[0x277CDDB18]);
    v67 = v164;
    v68 = v206;
    sub_24BAA944C();
    (*(v205 + 8))(v64, v68);
    sub_24B8F35E4(v59, &qword_27F06A600);
    v227 = v61;
    v228 = v68;
    v229 = v65;
    v230 = v66;
    swift_getOpaqueTypeConformance2();
    v69 = v169;
    v70 = v167;
    sub_24BAA94DC();
    (*(v166 + 8))(v67, v70);
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v227 = sub_24BAA7C2C();
    v228 = v71;
    sub_24B8F5E3C();
    v72 = v168;
    v73 = v194;
    sub_24BAA859C();

    sub_24B8F35E4(v69, &qword_27F06A610);
    v74 = v211;
    sub_24B90294C(v72, v211, &qword_27F06A610);
    (*(v193 + 56))(v74, 0, 1, v73);
    v19 = v207;
    v20 = v177;
    v28 = v174;
    v29 = v173;
    v23 = v153;
    if ((v154 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    (*(v193 + 56))(v211, 1, 1, v194);
    if ((a2 & 1) == 0)
    {
LABEL_6:
      sub_24BAA9D1C();
      v75 = 1;
      sub_24BAA83BC();
      v194 = v221;
      v193 = v223;
      v169 = v225;
      v168 = v226;
      v213 = 1;
      v220 = v222;
      v219 = v224;
      if (*(v170 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshotsLoaded) == 1)
      {
        v173 = v29;
        v174 = v28;
        v177 = v20;
        v76 = v210;
        sub_24BA7F4E4(v209, v210, type metadata accessor for FacesAndPagesPicker.contents);
        v77 = (*(v203 + 80) + 16) & ~*(v203 + 80);
        v170 = *(v203 + 80);
        v78 = swift_allocObject();
        v79 = sub_24BA7EF64(v76, v78 + v77, type metadata accessor for FacesAndPagesPicker.contents);
        MEMORY[0x28223BE20](v79);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A668);
        sub_24B8F384C(&qword_27F06A670, &qword_27F06A668);
        v80 = v155;
        sub_24BAA9A5C();
        v81 = v204;
        sub_24BAA865C();
        v82 = sub_24B8F384C(&qword_27F06A678, &qword_27F06A5D0);
        v83 = sub_24BA7EE98(&qword_27F063BF8, MEMORY[0x277CDDB18]);
        v84 = v157;
        v85 = v159;
        v86 = v206;
        sub_24BAA944C();
        (*(v205 + 8))(v81, v86);
        (*(v158 + 8))(v80, v85);
        v227 = v85;
        v228 = v86;
        v229 = v82;
        v230 = v83;
        swift_getOpaqueTypeConformance2();
        v87 = v161;
        sub_24BAA94DC();
        (*(v160 + 8))(v84, v23);
        if (qword_27F063110 != -1)
        {
          swift_once();
        }

        v227 = sub_24BAA7C2C();
        v228 = v88;
        sub_24B8F5E3C();
        sub_24BAA859C();

        sub_24B8F35E4(v87, &qword_27F06A5E0);
        v89 = v209;
        v90 = v209 + *(v192 + 24);
        v91 = *v90;
        v92 = *(v90 + 1);
        LOBYTE(v90) = v90[16];
        v227 = v91;
        v228 = v92;
        LOBYTE(v229) = v90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
        sub_24BAA9B8C();
        LODWORD(v167) = v216;
        v93 = v210;
        sub_24BA7F4E4(v89, v210, type metadata accessor for FacesAndPagesPicker.contents);
        v94 = swift_allocObject();
        sub_24BA7EF64(v93, v94 + v77, type metadata accessor for FacesAndPagesPicker.contents);
        v95 = v156;
        sub_24BA7F4E4(v89, v156, type metadata accessor for FacesAndPagesPicker.contents);
        v96 = swift_allocObject();
        sub_24BA7EF64(v95, v96 + v77, type metadata accessor for FacesAndPagesPicker.contents);
        sub_24BA7FD0C();
        sub_24BA7FE88();
        v97 = v162;
        v98 = v172;
        sub_24BAA968C();

        sub_24B8F35E4(v98, &qword_27F06A5E0);
        v29 = v173;
        v28 = v174;
        (*(v173 + 32))(v191, v97, v174);
        v75 = 0;
        v19 = v207;
        v20 = v177;
      }

      v99 = v191;
      (*(v29 + 56))(v191, v75, 1, v28);
      v100 = v213;
      v101 = v220;
      v102 = v19;
      v103 = v219;
      v104 = v175;
      sub_24B8F3208(v99, v175, &qword_27F06A5F0);
      v105 = v176;
      *v176 = 0;
      *(v105 + 8) = v100;
      *(v105 + 16) = v194;
      *(v105 + 24) = v101;
      *(v105 + 32) = v193;
      *(v105 + 40) = v103;
      v19 = v102;
      v106 = v168;
      *(v105 + 48) = v169;
      *(v105 + 56) = v106;
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A620);
      sub_24B8F3208(v104, v105 + *(v107 + 48), &qword_27F06A5F0);
      sub_24B8F35E4(v99, &qword_27F06A5F0);
      sub_24B8F35E4(v104, &qword_27F06A5F0);
      v108 = v212;
      sub_24B90294C(v105, v212, &qword_27F06A5C8);
      (*(v195 + 56))(v108, 0, 1, v20);
      goto LABEL_13;
    }
  }

  (*(v195 + 56))(v212, 1, 1, v20);
LABEL_13:
  if (sub_24B9A18C0())
  {
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v195 = v227;
    v194 = v229;
    v193 = v231;
    v191 = v232;
    v220 = 1;
    v219 = v228;
    v218 = v230;
    v109 = v210;
    sub_24BA7F4E4(v209, v210, type metadata accessor for FacesAndPagesPicker.contents);
    v110 = (*(v203 + 80) + 16) & ~*(v203 + 80);
    v111 = swift_allocObject();
    v112 = sub_24BA7EF64(v109, v111 + v110, type metadata accessor for FacesAndPagesPicker.contents);
    MEMORY[0x28223BE20](v112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A630);
    sub_24B8F384C(&qword_27F06A638, &qword_27F06A630);
    v113 = v178;
    sub_24BAA9A5C();
    v114 = v204;
    sub_24BAA865C();
    v115 = sub_24B8F384C(&qword_27F06A640, &qword_27F06A5A0);
    v116 = sub_24BA7EE98(&qword_27F063BF8, MEMORY[0x277CDDB18]);
    v117 = v179;
    v118 = v182;
    v119 = v206;
    sub_24BAA944C();
    (*(v205 + 8))(v114, v119);
    (*(v180 + 8))(v113, v118);
    v214 = v118;
    v215 = v119;
    v216 = v115;
    v217 = v116;
    swift_getOpaqueTypeConformance2();
    v120 = v184;
    v121 = v183;
    sub_24BAA94DC();
    (*(v181 + 8))(v117, v121);
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v214 = sub_24BAA7C2C();
    v215 = v122;
    sub_24B8F5E3C();
    v123 = v185;
    sub_24BAA859C();

    sub_24B8F35E4(v120, &qword_27F06A5B0);
    v124 = v209;
    v125 = v209 + *(v192 + 32);
    v126 = *v125;
    v127 = *(v125 + 1);
    LOBYTE(v125) = v125[16];
    v214 = v126;
    v215 = v127;
    LOBYTE(v216) = v125;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
    sub_24BAA9B8C();
    v128 = v124;
    v129 = v210;
    sub_24BA7F4E4(v128, v210, type metadata accessor for FacesAndPagesPicker.contents);
    v130 = swift_allocObject();
    sub_24BA7EF64(v129, v130 + v110, type metadata accessor for FacesAndPagesPicker.contents);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A648);
    sub_24BA7FA88();
    sub_24B8F384C(&qword_27F06A658, &qword_27F06A648);
    v131 = v186;
    sub_24BAA968C();

    sub_24B8F35E4(v123, &qword_27F06A5B0);
    v132 = v220;
    v133 = v219;
    LOBYTE(v123) = v218;
    v134 = v188;
    v135 = *(v188 + 16);
    v136 = v187;
    v137 = v189;
    v135(v187, v131, v189);
    v138 = v190;
    *v190 = 0;
    *(v138 + 8) = v132;
    *(v138 + 16) = v195;
    *(v138 + 24) = v133;
    *(v138 + 32) = v194;
    *(v138 + 40) = v123;
    v139 = v191;
    *(v138 + 48) = v193;
    *(v138 + 56) = v139;
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A660);
    v135((v138 + *(v140 + 48)), v136, v137);
    v141 = *(v134 + 8);
    v141(v131, v137);
    v141(v136, v137);
    v19 = v207;
    sub_24B90294C(v138, v207, &qword_27F06A598);
    (*(v200 + 56))(v19, 0, 1, v201);
  }

  else
  {
    (*(v200 + 56))(v19, 1, 1, v201);
  }

  v142 = v211;
  v143 = v196;
  sub_24B8F3208(v211, v196, &qword_27F06A618);
  v144 = v212;
  v145 = v197;
  sub_24B8F3208(v212, v197, &qword_27F06A5F8);
  v146 = v199;
  sub_24B8F3208(v19, v199, &qword_27F06A5C0);
  v147 = v202;
  sub_24B8F3208(v143, v202, &qword_27F06A618);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A628);
  sub_24B8F3208(v145, v147 + *(v148 + 48), &qword_27F06A5F8);
  sub_24B8F3208(v146, v147 + *(v148 + 64), &qword_27F06A5C0);
  sub_24B8F35E4(v19, &qword_27F06A5C0);
  sub_24B8F35E4(v144, &qword_27F06A5F8);
  sub_24B8F35E4(v142, &qword_27F06A618);
  sub_24B8F35E4(v146, &qword_27F06A5C0);
  sub_24B8F35E4(v145, &qword_27F06A5F8);
  return sub_24B8F35E4(v143, &qword_27F06A618);
}

void sub_24BA6E3C8()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 connectedScenes];

  sub_24B8F37E8(0, &qword_27F066AB0);
  sub_24BA57E20();
  v3 = sub_24BAAA20C();

  v4 = sub_24B981258(v3);

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      if (*v0)
      {
        v6 = v5;

        sub_24B9963DC(v6);
      }

      else
      {
        type metadata accessor for ActivityConfigViewModel();
        sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
        sub_24BAA86DC();
        __break(1u);
      }

      return;
    }
  }

  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v7 = sub_24BAA812C();
  __swift_project_value_buffer(v7, qword_27F077038);
  v8 = sub_24BAAA2BC();
  log = sub_24BAA810C();
  if (os_log_type_enabled(log, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24B8D3000, log, v8, "Unable to present lock screen controller because window scene is nil", v9, 2u);
    MEMORY[0x24C251390](v9, -1, -1);
  }
}

uint64_t sub_24BA6E60C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v77 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A6B0);
  MEMORY[0x28223BE20](v76);
  v69 = &v63 - v3;
  v65 = sub_24BAA8ABC();
  v4 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A6B8);
  MEMORY[0x28223BE20](v64);
  v8 = (&v63 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A6C0);
  v67 = *(v9 - 8);
  v68 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v66 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v78 = &v63 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A6C8);
  MEMORY[0x28223BE20](v71);
  v75 = &v63 - v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A6D0);
  MEMORY[0x28223BE20](v73);
  v15 = &v63 - v14;
  v16 = type metadata accessor for ChooseLabel(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v70 = (&v63 - v20);
  v21 = type metadata accessor for LockScreenColoringBookView(0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v63 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A6D8);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  MEMORY[0x28223BE20](v28);
  v72 = &v63 - v30;
  v31 = a1;
  v32 = *a1;
  if (!*a1)
  {
    goto LABEL_13;
  }

  v74 = v29;
  v33 = *(v32 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_lockScreenSnapshots);
  if (v33 >> 62)
  {
    if (sub_24BAAA52C())
    {
      goto LABEL_4;
    }

LABEL_9:
    v53 = type metadata accessor for FacesAndPagesPicker.contents(0);
    sub_24BA705BC(*(v31 + *(v53 + 36)), v26);
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    v54 = sub_24BAA86FC();
    v55 = v70;
    *v70 = v54;
    *(v55 + 8) = v56;
    v57 = *(v16 + 20);
    *(v55 + v57) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
    swift_storeEnumTagMultiPayload();
    *(v55 + *(v16 + 24)) = 0;
    sub_24BA7F4E4(v26, v24, type metadata accessor for LockScreenColoringBookView);
    sub_24BA7F4E4(v55, v19, type metadata accessor for ChooseLabel);
    sub_24BA7F4E4(v24, v15, type metadata accessor for LockScreenColoringBookView);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A710);
    sub_24BA7F4E4(v19, &v15[*(v58 + 48)], type metadata accessor for ChooseLabel);
    sub_24BA7FFB4(v19, type metadata accessor for ChooseLabel);
    sub_24BA7FFB4(v24, type metadata accessor for LockScreenColoringBookView);
    sub_24B8F3208(v15, v75, &qword_27F06A6D0);
    swift_storeEnumTagMultiPayload();
    sub_24B8F384C(&qword_27F06A6F8, &qword_27F06A6B0);
    sub_24B8F384C(&qword_27F06A700, &qword_27F06A6D0);
    v52 = v72;
    sub_24BAA8D0C();
    sub_24B8F35E4(v15, &qword_27F06A6D0);
    sub_24BA7FFB4(v55, type metadata accessor for ChooseLabel);
    sub_24BA7FFB4(v26, type metadata accessor for LockScreenColoringBookView);
    goto LABEL_10;
  }

  if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v33 & 0xC000000000000001) != 0)
  {

    v34 = MEMORY[0x24C2506E0](0, v33);

    goto LABEL_7;
  }

  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = *(v33 + 32);
LABEL_7:
    v63 = v34;
    *v8 = sub_24BAA9CCC();
    v8[1] = v35;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A6E0);
    sub_24BA6F0E0(v31, v34, v8 + *(v36 + 44));
    v37 = v65;
    (*(v4 + 104))(v6, *MEMORY[0x277CE00F0], v65);
    sub_24B8F384C(&qword_27F06A6E8, &qword_27F06A6B8);
    v38 = v78;
    sub_24BAA94AC();
    (*(v4 + 8))(v6, v37);
    sub_24B8F35E4(v8, &qword_27F06A6B8);
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    v39 = sub_24BAA86FC();
    v40 = v70;
    *v70 = v39;
    *(v40 + 8) = v41;
    v42 = *(v16 + 20);
    *(v40 + v42) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
    swift_storeEnumTagMultiPayload();
    *(v40 + *(v16 + 24)) = 1;
    v43 = v66;
    v44 = v67;
    v45 = *(v67 + 16);
    v46 = v38;
    v47 = v68;
    v45(v66, v46, v68);
    sub_24BA7F4E4(v40, v19, type metadata accessor for ChooseLabel);
    v48 = v69;
    v45(v69, v43, v47);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A6F0);
    sub_24BA7F4E4(v19, v48 + *(v49 + 48), type metadata accessor for ChooseLabel);
    sub_24BA7FFB4(v19, type metadata accessor for ChooseLabel);
    v50 = *(v44 + 8);
    v50(v43, v47);
    sub_24B8F3208(v48, v75, &qword_27F06A6B0);
    swift_storeEnumTagMultiPayload();
    sub_24B8F384C(&qword_27F06A6F8, &qword_27F06A6B0);
    sub_24B8F384C(&qword_27F06A700, &qword_27F06A6D0);
    v51 = v72;
    sub_24BAA8D0C();

    sub_24B8F35E4(v48, &qword_27F06A6B0);
    sub_24BA7FFB4(v40, type metadata accessor for ChooseLabel);
    v52 = v51;
    v50(v78, v47);
LABEL_10:
    v59 = v74;
    sub_24B8F3208(v52, v74, &qword_27F06A6D8);
    v60 = v77;
    *v77 = 0;
    *(v60 + 8) = 0;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A708);
    sub_24B8F3208(v59, v60 + *(v61 + 48), &qword_27F06A6D8);
    sub_24B8F35E4(v52, &qword_27F06A6D8);
    return sub_24B8F35E4(v59, &qword_27F06A6D8);
  }

  __break(1u);
LABEL_13:
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24BA6F0E0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a2;
  v72 = a3;
  v4 = sub_24BAA866C();
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x28223BE20](v4);
  v69 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FacesAndPagesPicker.contents(0);
  v62 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = v7;
  v64 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A738);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A740);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v68 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v65 = &v59 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A748);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (&v59 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A750);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v59 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v59 - v26;
  v28 = a1;
  v29 = *a1;
  if (*a1)
  {
    v60 = v12;
    v30 = *(v29 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_lockScreenSnapshots);
    v31 = v11;
    if (v30 >> 62)
    {
      v32 = sub_24BAAA52C();
    }

    else
    {
      v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *v18 = sub_24BAA9CCC();
    v18[1] = v33;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A758);
    sub_24BA6F820(v32 > 1, v28, v61, v18 + *(v34 + 44));
    v35 = sub_24BAA910C();
    sub_24BAA828C();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    sub_24B90294C(v18, v25, &qword_27F06A748);
    v44 = &v25[*(v19 + 36)];
    *v44 = v35;
    *(v44 + 1) = v37;
    *(v44 + 2) = v39;
    *(v44 + 3) = v41;
    *(v44 + 4) = v43;
    v44[40] = 0;
    sub_24B90294C(v25, v27, &qword_27F06A750);
    v45 = v64;
    sub_24BA7F4E4(v28, v64, type metadata accessor for FacesAndPagesPicker.contents);
    v46 = (*(v62 + 80) + 16) & ~*(v62 + 80);
    v47 = swift_allocObject();
    sub_24BA7EF64(v45, v47 + v46, type metadata accessor for FacesAndPagesPicker.contents);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A760);
    sub_24BA80040();
    sub_24BAA9A5C();
    v48 = v69;
    sub_24BAA865C();
    sub_24B8F384C(&qword_27F06A778, &qword_27F06A738);
    sub_24BA7EE98(&qword_27F063BF8, MEMORY[0x277CDDB18]);
    v49 = v65;
    v50 = v67;
    v51 = v71;
    sub_24BAA944C();
    (*(v70 + 8))(v48, v51);
    (*(v66 + 8))(v10, v50);
    v59 = v22;
    sub_24B8F3208(v27, v22, &qword_27F06A750);
    v52 = v60;
    v53 = *(v60 + 16);
    v54 = v68;
    v53(v68, v49, v31);
    v55 = v72;
    sub_24B8F3208(v22, v72, &qword_27F06A750);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A780);
    v53((v55 + *(v56 + 48)), v54, v31);
    v57 = *(v52 + 8);
    v57(v49, v31);
    sub_24B8F35E4(v27, &qword_27F06A750);
    v57(v54, v31);
    return sub_24B8F35E4(v59, &qword_27F06A750);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA6F820@<X0>(char a1@<W0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a3;
  v75 = a4;
  v73 = sub_24BAA975C();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_24BAA992C();
  v7 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A788);
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A790);
  v13 = MEMORY[0x28223BE20](v68);
  v74 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v67 = &v63 - v16;
  MEMORY[0x28223BE20](v15);
  v70 = &v63 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A798);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v63 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A7A0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v63 - v24;
  v69 = v26;
  if ((a1 & 1) == 0)
  {
    (*(v19 + 56))(&v63 - v24, 1, 1, v18);
    goto LABEL_8;
  }

  v64 = v10;
  if (*a2)
  {
    v27 = *(*a2 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_lockScreenSnapshots);
    if ((v27 & 0xC000000000000001) != 0)
    {

      v28 = MEMORY[0x24C2506E0](1, v27);

      goto LABEL_6;
    }

    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v28 = *(v27 + 40);
LABEL_6:
      *v21 = sub_24BAA8BCC();
      *(v21 + 1) = 0;
      v21[16] = 1;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A7B0);
      sub_24BA700A8(v28, a2, &v21[*(v29 + 44)]);
      v30 = sub_24BAA90EC();
      sub_24BAA828C();
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      v39 = &v21[*(v18 + 36)];
      *v39 = v30;
      *(v39 + 1) = v32;
      *(v39 + 2) = v34;
      *(v39 + 3) = v36;
      *(v39 + 4) = v38;
      v39[40] = 0;
      sub_24B90294C(v21, v25, &qword_27F06A798);
      (*(v19 + 56))(v25, 0, 1, v18);
      v10 = v64;
LABEL_8:
      v40 = v65;
      sub_24BAA98FC();
      v41 = v66;
      (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v66);
      v42 = sub_24BAA997C();

      (*(v7 + 8))(v9, v41);
      type metadata accessor for FacesAndPagesPicker.contents(0);
      v43 = [objc_opt_self() currentDevice];
      [v43 userInterfaceIdiom];

      sub_24BA6ACDC();
      sub_24BAA9D1C();
      sub_24BAA83BC();
      v77 = 1;
      *&v76[6] = v78;
      *&v76[22] = v79;
      *&v76[38] = v80;
      v44 = &v12[*(v10 + 36)];
      v45 = *(sub_24BAA869C() + 20);
      v46 = *MEMORY[0x277CE0118];
      v47 = sub_24BAA8B2C();
      (*(*(v47 - 8) + 104))(&v44[v45], v46, v47);
      __asm { FMOV            V0.2D, #13.0 }

      *v44 = _Q0;
      *&v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A8) + 36)] = 256;
      v53 = *&v76[16];
      *(v12 + 18) = *v76;
      *v12 = v42;
      *(v12 + 1) = 0;
      *(v12 + 8) = 1;
      *(v12 + 34) = v53;
      *(v12 + 50) = *&v76[32];
      *(v12 + 8) = *&v76[46];
      (*(v72 + 104))(v71, *MEMORY[0x277CE0EE0], v73);
      v54 = sub_24BAA98BC();
      v55 = v67;
      sub_24B90294C(v12, v67, &qword_27F06A788);
      v56 = v55 + *(v68 + 36);
      *v56 = v54;
      *(v56 + 8) = xmmword_24BAB8A30;
      *(v56 + 24) = 0x4018000000000000;
      v57 = v70;
      sub_24B90294C(v55, v70, &qword_27F06A790);
      v58 = v69;
      sub_24B8F3208(v25, v69, &qword_27F06A7A0);
      v59 = v74;
      sub_24B8F3208(v57, v74, &qword_27F06A790);
      v60 = v75;
      sub_24B8F3208(v58, v75, &qword_27F06A7A0);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A7A8);
      sub_24B8F3208(v59, v60 + *(v61 + 48), &qword_27F06A790);
      sub_24B8F35E4(v57, &qword_27F06A790);
      sub_24B8F35E4(v25, &qword_27F06A7A0);
      sub_24B8F35E4(v59, &qword_27F06A790);
      return sub_24B8F35E4(v58, &qword_27F06A7A0);
    }

    __break(1u);
  }

  type metadata accessor for ActivityConfigViewModel();
  sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24BA700A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44[1] = a2;
  v45 = a3;
  v4 = sub_24BAA992C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A788);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A7B8);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A7C0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = v44 - v18;
  v20 = a1;
  sub_24BAA98FC();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v44[0] = sub_24BAA997C();

  (*(v5 + 8))(v7, v4);
  type metadata accessor for FacesAndPagesPicker.contents(0);
  v21 = [objc_opt_self() currentDevice];
  [v21 userInterfaceIdiom];

  sub_24BA6ACDC();
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v47 = 1;
  *&v46[6] = v48;
  *&v46[22] = v49;
  *&v46[38] = v50;
  v22 = &v11[*(v9 + 44)];
  v23 = *(sub_24BAA869C() + 20);
  v24 = *MEMORY[0x277CE0118];
  v25 = sub_24BAA8B2C();
  (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
  __asm { FMOV            V0.2D, #13.0 }

  *v22 = _Q0;
  *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A8) + 36)] = 256;
  v31 = *&v46[16];
  *(v11 + 18) = *v46;
  *v11 = v44[0];
  *(v11 + 1) = 0;
  *(v11 + 8) = 1;
  *(v11 + 34) = v31;
  *(v11 + 50) = *&v46[32];
  *(v11 + 8) = *&v46[46];
  sub_24BAA9DFC();
  v33 = v32;
  v35 = v34;
  sub_24B90294C(v11, v15, &qword_27F06A788);
  v36 = &v15[*(v13 + 44)];
  *v36 = vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL);
  v36[1].i64[0] = v33;
  v36[1].i64[1] = v35;
  sub_24BAA9DFC();
  v38 = v37;
  v40 = v39;
  sub_24B90294C(v15, v19, &qword_27F06A7B8);
  v41 = &v19[*(v17 + 44)];
  *v41 = 0xBFAACEE9F37BEBD6;
  *(v41 + 1) = v38;
  *(v41 + 2) = v40;
  v42 = v45;
  sub_24B90294C(v19, v45, &qword_27F06A7C0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A7C8);
  *(v42 + *(result + 36)) = 0x3FE6666666666666;
  return result;
}

uint64_t sub_24BA7051C(void *a1)
{
  if (*a1)
  {

    sub_24B997E88();
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA705BC@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v31[0] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A718);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064B38);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064B40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v31 - v11;
  v13 = sub_24BAA7C1C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v31 - v18;
  *a2 = a1;
  v20 = type metadata accessor for LockScreenColoringBookView(0);
  v21 = sub_24BAA7F2C();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v22 = sub_24BAA7F3C();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  sub_24BAA7BFC();
  (*(v14 + 16))(v17, v19, v13);
  v23 = v31[0];
  sub_24BAA99EC();
  (*(v14 + 8))(v19, v13);
  v24 = (v23 + *(v20 + 24));
  sub_24B8F37E8(0, &qword_27F06A720);
  v25 = [objc_opt_self() currentRunLoop];
  v26 = sub_24BAAA3EC();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  v27 = sub_24BAAA39C();

  sub_24B8F35E4(v6, &qword_27F06A718);
  v32 = v27;
  sub_24BAAA38C();
  sub_24BA7EE98(&qword_27F06A728, MEMORY[0x277CC9DF0]);
  v28 = sub_24BAA815C();

  v31[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A730);
  result = sub_24BAA99EC();
  v30 = v33;
  *v24 = v32;
  v24[1] = v30;
  return result;
}

uint64_t sub_24BA70A54(uint64_t a1, void *a2)
{
  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v3 = sub_24BAA812C();
  __swift_project_value_buffer(v3, qword_27F077038);
  v4 = sub_24BAA810C();
  v5 = sub_24BAAA2CC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24B8D3000, v4, v5, "Faces and Pages configuration view will resign active", v6, 2u);
    MEMORY[0x24C251390](v6, -1, -1);
  }

  if (*a2)
  {

    sub_24B996A5C();
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA70BB4()
{
  type metadata accessor for FacesAndPagesPicker.contents(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  MEMORY[0x24C24FC10](&v1);
  sub_24BAA9B6C();
}

uint64_t sub_24BA70C78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v80 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A7D8);
  MEMORY[0x28223BE20](v79);
  v72 = &v63 - v3;
  v4 = sub_24BAA8ABC();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x28223BE20](v4);
  v66 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A7E0);
  MEMORY[0x28223BE20](v64);
  v65 = (&v63 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A7E8);
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v83 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A7F0);
  MEMORY[0x28223BE20](v12);
  v77 = &v63 - v13;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A7F8);
  MEMORY[0x28223BE20](v76);
  v63 = &v63 - v14;
  v74 = type metadata accessor for ChooseLabel(0);
  v15 = MEMORY[0x28223BE20](v74);
  v75 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A800);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  MEMORY[0x28223BE20](v20);
  v73 = a1;
  v23 = *a1;
  if (!*a1)
  {
    goto LABEL_32;
  }

  v69 = v10;
  v84 = &v63 - v21;
  v78 = v22;
  v24 = *(v23 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshots);
  v85 = MEMORY[0x277D84F90];
  if (v24 >> 62)
  {
    goto LABEL_26;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  v81 = v12;
  v82 = v18;
  if (v25)
  {
    v18 = 0;
    v12 = v24 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x24C2506E0](v18, v24);
        v27 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v28 = v85;
          v18 = v82;
          goto LABEL_18;
        }
      }

      else
      {
        if (v18 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_26:
          v25 = sub_24BAAA52C();
          goto LABEL_4;
        }

        v26 = *(v24 + 8 * v18 + 32);

        v27 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_15;
        }
      }

      if (*(v26 + 49))
      {
        sub_24BAAA66C();
        sub_24BAAA69C();
        sub_24BAAA6AC();
        sub_24BAAA67C();
      }

      else
      {
      }

      ++v18;
      if (v27 == v25)
      {
        goto LABEL_16;
      }
    }
  }

  v28 = MEMORY[0x277D84F90];
LABEL_18:

  v29 = v84;
  if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
  {
    if (sub_24BAAA52C())
    {
      goto LABEL_21;
    }

LABEL_28:

    v52 = *(v73 + *(type metadata accessor for FacesAndPagesPicker.contents(0) + 36));
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    *v18 = sub_24BAA86FC();
    *(v18 + 8) = v53;
    v54 = v74;
    v55 = *(v74 + 20);
    *(v18 + v55) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
    swift_storeEnumTagMultiPayload();
    *(v18 + *(v54 + 24)) = 0;
    v56 = v75;
    sub_24BA7F4E4(v18, v75, type metadata accessor for ChooseLabel);
    v57 = v63;
    *v63 = v52;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A838);
    sub_24BA7F4E4(v56, v57 + *(v58 + 48), type metadata accessor for ChooseLabel);
    sub_24BA7FFB4(v56, type metadata accessor for ChooseLabel);
    sub_24B8F3208(v57, v77, &qword_27F06A7F8);
    swift_storeEnumTagMultiPayload();
    sub_24B8F384C(&qword_27F06A820, &qword_27F06A7D8);
    sub_24B8F384C(&qword_27F06A828, &qword_27F06A7F8);
    sub_24BAA8D0C();
    sub_24B8F35E4(v57, &qword_27F06A7F8);
    sub_24BA7FFB4(v18, type metadata accessor for ChooseLabel);
    goto LABEL_29;
  }

  if (!*(v28 + 16))
  {
    goto LABEL_28;
  }

LABEL_21:
  if ((v28 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x24C2506E0](0, v28);
    goto LABEL_24;
  }

  if (*(v28 + 16))
  {
    v30 = *(v28 + 32);

LABEL_24:

    v63 = v30;
    v31 = sub_24BAA9CCC();
    v32 = v65;
    *v65 = v31;
    *(v32 + 8) = v33;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A808);
    sub_24BA717C4(v73, v30, v32 + *(v34 + 44));
    v36 = v66;
    v35 = v67;
    v37 = v68;
    (*(v67 + 104))(v66, *MEMORY[0x277CE00F0], v68);
    sub_24B8F384C(&qword_27F06A810, &qword_27F06A7E0);
    v38 = v83;
    sub_24BAA94AC();
    (*(v35 + 8))(v36, v37);
    sub_24B8F35E4(v32, &qword_27F06A7E0);
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    *v18 = sub_24BAA86FC();
    *(v18 + 8) = v39;
    v40 = v74;
    v41 = *(v74 + 20);
    *(v18 + v41) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
    swift_storeEnumTagMultiPayload();
    *(v18 + *(v40 + 24)) = 1;
    v42 = v69;
    v43 = v70;
    v44 = *(v70 + 16);
    v45 = v71;
    v44(v69, v38, v71);
    v46 = v75;
    sub_24BA7F4E4(v18, v75, type metadata accessor for ChooseLabel);
    v47 = v72;
    v44(v72, v42, v45);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A818);
    sub_24BA7F4E4(v46, v47 + *(v48 + 48), type metadata accessor for ChooseLabel);
    sub_24BA7FFB4(v46, type metadata accessor for ChooseLabel);
    v49 = *(v43 + 8);
    v49(v42, v45);
    sub_24B8F3208(v47, v77, &qword_27F06A7D8);
    swift_storeEnumTagMultiPayload();
    sub_24B8F384C(&qword_27F06A820, &qword_27F06A7D8);
    sub_24B8F384C(&qword_27F06A828, &qword_27F06A7F8);
    v50 = v84;
    sub_24BAA8D0C();

    v51 = v47;
    v29 = v50;
    sub_24B8F35E4(v51, &qword_27F06A7D8);
    sub_24BA7FFB4(v82, type metadata accessor for ChooseLabel);
    v49(v83, v45);
LABEL_29:
    v59 = v78;
    sub_24B8F3208(v29, v78, &qword_27F06A800);
    v60 = v80;
    *v80 = 0;
    *(v60 + 8) = 0;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A830);
    sub_24B8F3208(v59, v60 + *(v61 + 48), &qword_27F06A800);
    sub_24B8F35E4(v29, &qword_27F06A800);
    return sub_24B8F35E4(v59, &qword_27F06A800);
  }

  __break(1u);
LABEL_32:
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24BA717C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v5 = sub_24BAA866C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FacesAndPagesPicker.contents(0);
  v75 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v76 = v10;
  v77 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A738);
  v82 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v80 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A740);
  v14 = *(v13 - 1);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v81 = &v69 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A840);
  MEMORY[0x28223BE20](v19 - 8);
  v73 = (&v69 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A848);
  v22 = MEMORY[0x28223BE20](v21);
  v23 = MEMORY[0x28223BE20](v22);
  v24 = MEMORY[0x28223BE20](v23);
  v78 = a1;
  v28 = *a1;
  if (v28)
  {
    v71 = v27;
    v72 = v24;
    v90 = &v69 - v25;
    v79 = v26;
    v83 = v11;
    v84 = v17;
    v85 = v14;
    v29 = *(v28 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshots);
    v91 = MEMORY[0x277D84F90];
    if (v29 >> 62)
    {
      goto LABEL_23;
    }

    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v86 = v8;
    v87 = v13;
    v88 = v6;

    v89 = a3;
    if (v30)
    {
      v70 = v5;
      v8 = 0;
      v5 = v29 & 0xC000000000000001;
      v6 = v29 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v5)
        {
          v31 = MEMORY[0x24C2506E0](v8, v29);
          v32 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:
            v33 = v91;
            v5 = v70;
            goto LABEL_18;
          }
        }

        else
        {
          if (v8 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_23:
            v30 = sub_24BAAA52C();
            goto LABEL_4;
          }

          v31 = *(v29 + 8 * v8 + 32);

          v32 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
            goto LABEL_15;
          }
        }

        if (*(v31 + 49))
        {
          v13 = &v91;
          sub_24BAAA66C();
          a3 = *(v91 + 16);
          sub_24BAAA69C();
          sub_24BAAA6AC();
          sub_24BAAA67C();
        }

        else
        {
        }

        ++v8;
        if (v32 == v30)
        {
          goto LABEL_16;
        }
      }
    }

    v33 = MEMORY[0x277D84F90];
LABEL_18:

    v34 = v85;
    if (v33 < 0 || (v33 & 0x4000000000000000) != 0)
    {
      v35 = v5;
      v36 = sub_24BAAA52C();
    }

    else
    {
      v35 = v5;
      v36 = *(v33 + 16);
    }

    v38 = v77;
    v37 = v78;
    v39 = v75;

    v40 = sub_24BAA9CCC();
    v41 = v73;
    *v73 = v40;
    *(v41 + 8) = v42;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A850);
    sub_24BA72068(v36 > 1, v37, v74, v41 + *(v43 + 44));
    v44 = sub_24BAA910C();
    sub_24BAA828C();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = v71;
    sub_24B90294C(v41, v71, &qword_27F06A840);
    v54 = v53 + *(v72 + 36);
    *v54 = v44;
    *(v54 + 8) = v46;
    *(v54 + 16) = v48;
    *(v54 + 24) = v50;
    *(v54 + 32) = v52;
    *(v54 + 40) = 0;
    sub_24B90294C(v53, v90, &qword_27F06A848);
    sub_24BA7F4E4(v37, v38, type metadata accessor for FacesAndPagesPicker.contents);
    v55 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v56 = swift_allocObject();
    sub_24BA7EF64(v38, v56 + v55, type metadata accessor for FacesAndPagesPicker.contents);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A760);
    sub_24BA80040();
    v57 = v80;
    sub_24BAA9A5C();
    v58 = v86;
    sub_24BAA865C();
    sub_24B8F384C(&qword_27F06A778, &qword_27F06A738);
    sub_24BA7EE98(&qword_27F063BF8, MEMORY[0x277CDDB18]);
    v59 = v81;
    v60 = v83;
    sub_24BAA944C();
    (*(v88 + 8))(v58, v35);
    (*(v82 + 8))(v57, v60);
    v61 = v79;
    sub_24B8F3208(v90, v79, &qword_27F06A848);
    v62 = *(v34 + 16);
    v63 = v84;
    v64 = v87;
    v62(v84, v59, v87);
    v65 = v89;
    sub_24B8F3208(v61, v89, &qword_27F06A848);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A858);
    v62((v65 + *(v66 + 48)), v63, v64);
    v67 = *(v34 + 8);
    v67(v59, v64);
    sub_24B8F35E4(v90, &qword_27F06A848);
    v67(v63, v64);
    return sub_24B8F35E4(v61, &qword_27F06A848);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA72068@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v80 = a3;
  v7 = sub_24BAA975C();
  v78 = *(v7 - 8);
  v79 = v7;
  MEMORY[0x28223BE20](v7);
  v77 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HomeScreenPageView();
  MEMORY[0x28223BE20](v9);
  v76 = (&v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A860);
  v11 = MEMORY[0x28223BE20](v82);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v81 = &v67 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v67 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A868);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v75 = (&v67 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A870);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v67 - v25;
  v83 = a4;
  v84 = &v67 - v25;
  if ((a1 & 1) == 0)
  {
LABEL_17:
    (*(v19 + 56))(v26, 1, 1, v18);
    goto LABEL_25;
  }

  v74 = v18;
  v27 = *a2;
  if (*a2)
  {
    v71 = v24;
    v72 = v17;
    v17 = *(v27 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshots);
    *&v86 = MEMORY[0x277D84F90];
    v18 = v19;
    if (v17 >> 62)
    {
      goto LABEL_27;
    }

    v24 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v73 = v27;

    if (v24)
    {
      v68 = v9;
      v69 = a2;
      v70 = v13;
      v13 = 0;
      v9 = (v17 & 0xC000000000000001);
      a2 = (v17 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v9)
        {
          v28 = MEMORY[0x24C2506E0](v13, v17);
          v18 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }
        }

        else
        {
          if (v13 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_27:
            v66 = v27;
            v24 = sub_24BAAA52C();
            v27 = v66;
            goto LABEL_5;
          }

          v28 = *(v17 + 8 * v13 + 32);

          v18 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_16;
          }
        }

        if (*(v28 + 49))
        {
          sub_24BAAA66C();
          v26 = *(v86 + 16);
          sub_24BAAA69C();
          sub_24BAAA6AC();
          v27 = sub_24BAAA67C();
        }

        else
        {
        }

        ++v13;
        if (v18 == v24)
        {
          v18 = v19;
          v29 = v86;
          v13 = v70;
          v26 = v84;
          a2 = v69;
          v9 = v68;
          goto LABEL_20;
        }
      }
    }

    v29 = MEMORY[0x277D84F90];
LABEL_20:

    if ((v29 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x24C2506E0](1, v29);

      v30 = v74;
    }

    else
    {
      v30 = v74;
      if (*(v29 + 16) < 2uLL)
      {
        __break(1u);
        goto LABEL_29;
      }

      v31 = *(v29 + 40);
    }

    v32 = sub_24BAA8BCC();
    v33 = v75;
    *v75 = v32;
    *(v33 + 8) = 0;
    *(v33 + 16) = 1;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A880);
    sub_24BA729F8(v31, a2, v33 + *(v34 + 44));
    v35 = sub_24BAA90EC();
    sub_24BAA828C();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v44 = v33 + *(v30 + 36);
    *v44 = v35;
    *(v44 + 8) = v37;
    *(v44 + 16) = v39;
    *(v44 + 24) = v41;
    *(v44 + 32) = v43;
    *(v44 + 40) = 0;
    sub_24B90294C(v33, v26, &qword_27F06A868);
    (*(v18 + 56))(v26, 0, 1, v30);
    v17 = v72;
    v24 = v71;
LABEL_25:
    (*(v78 + 104))(v77, *MEMORY[0x277CE0EE0], v79);
    v45 = sub_24BAA98BC();
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    v46 = sub_24BAA86FC();
    v47 = v76;
    *v76 = v46;
    *(v47 + 8) = v48;
    v49 = v9[5];
    *(v47 + v49) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
    swift_storeEnumTagMultiPayload();
    v50 = (v47 + v9[6]);
    v85 = 0;
    sub_24BAA99EC();
    v51 = *(&v86 + 1);
    *v50 = v86;
    v50[1] = v51;
    v52 = v47 + v9[7];
    LOBYTE(v85) = 0;
    sub_24BAA99EC();
    v53 = *(&v86 + 1);
    *v52 = v86;
    *(v52 + 8) = v53;
    v54 = (v47 + v9[8]);
    type metadata accessor for HomeScreenSnapshot();
    sub_24BA7EE98(&qword_27F064330, type metadata accessor for HomeScreenSnapshot);

    *v54 = sub_24BAA84DC();
    v54[1] = v55;
    v56 = (v47 + v9[9]);
    v56[4] = 0u;
    v56[5] = 0u;
    v56[2] = 0u;
    v56[3] = 0u;
    *v56 = 0u;
    v56[1] = 0u;
    *(v47 + v9[11]) = 0;
    v57 = v47 + v9[12];
    *v57 = v45;
    *(v57 + 8) = xmmword_24BAB8A30;
    *(v57 + 24) = 0x4018000000000000;
    *(v47 + v9[10]) = 0x402A000000000000;
    type metadata accessor for FacesAndPagesPicker.contents(0);
    v58 = [objc_opt_self() currentDevice];
    [v58 userInterfaceIdiom];

    sub_24BA6ACDC();
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v59 = v81;
    sub_24BA7EF64(v47, v81, type metadata accessor for HomeScreenPageView);
    v60 = (v59 + *(v82 + 36));
    v61 = v87;
    *v60 = v86;
    v60[1] = v61;
    v60[2] = v88;
    sub_24B90294C(v59, v17, &qword_27F06A860);
    v62 = v84;
    sub_24B8F3208(v84, v24, &qword_27F06A870);
    sub_24B8F3208(v17, v13, &qword_27F06A860);
    v63 = v83;
    sub_24B8F3208(v24, v83, &qword_27F06A870);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A878);
    sub_24B8F3208(v13, v63 + *(v64 + 48), &qword_27F06A860);
    sub_24B8F35E4(v17, &qword_27F06A860);
    sub_24B8F35E4(v62, &qword_27F06A870);
    sub_24B8F35E4(v13, &qword_27F06A860);
    return sub_24B8F35E4(v24, &qword_27F06A870);
  }

LABEL_29:
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24BA729F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44[1] = a1;
  v44[2] = a2;
  v46 = a3;
  v3 = type metadata accessor for HomeScreenPageView();
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A860);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v45 = v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A888);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A890);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = v44 - v16;
  v44[0] = sub_24BAA980C();
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *v6 = sub_24BAA86FC();
  v6[1] = v18;
  v19 = v4[7];
  *(v6 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v20 = (v6 + v4[8]);
  v47 = 0;
  sub_24BAA99EC();
  v21 = *(&v48 + 1);
  *v20 = v48;
  v20[1] = v21;
  v22 = v6 + v4[9];
  LOBYTE(v47) = 0;
  sub_24BAA99EC();
  v23 = *(&v48 + 1);
  *v22 = v48;
  *(v22 + 1) = v23;
  v24 = (v6 + v4[10]);
  type metadata accessor for HomeScreenSnapshot();
  sub_24BA7EE98(&qword_27F064330, type metadata accessor for HomeScreenSnapshot);

  *v24 = sub_24BAA84DC();
  v24[1] = v25;
  v26 = (v6 + v4[11]);
  v26[4] = 0u;
  v26[5] = 0u;
  v26[2] = 0u;
  v26[3] = 0u;
  *v26 = 0u;
  v26[1] = 0u;
  *(v6 + v4[13]) = 0;
  v27 = (v6 + v4[14]);
  *v27 = v44[0];
  v27[1] = 0;
  v27[2] = 0;
  v27[3] = 0;
  *(v6 + v4[12]) = 0x402A000000000000;
  type metadata accessor for FacesAndPagesPicker.contents(0);
  v28 = [objc_opt_self() currentDevice];
  [v28 userInterfaceIdiom];

  sub_24BA6ACDC();
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v29 = v45;
  sub_24BA7EF64(v6, v45, type metadata accessor for HomeScreenPageView);
  v30 = (v29 + *(v8 + 44));
  v31 = v49;
  *v30 = v48;
  v30[1] = v31;
  v30[2] = v50;
  sub_24BAA9DFC();
  v33 = v32;
  v35 = v34;
  sub_24B90294C(v29, v13, &qword_27F06A860);
  v36 = &v13[*(v11 + 44)];
  *v36 = vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL);
  v36[1].i64[0] = v33;
  v36[1].i64[1] = v35;
  sub_24BAA9DFC();
  v38 = v37;
  v40 = v39;
  sub_24B90294C(v13, v17, &qword_27F06A888);
  v41 = &v17[*(v15 + 44)];
  *v41 = 0x3FAACEE9F37BEBD6;
  *(v41 + 1) = v38;
  *(v41 + 2) = v40;
  v42 = v46;
  sub_24B90294C(v17, v46, &qword_27F06A890);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A898);
  *(v42 + *(result + 36)) = 0x3FE6666666666666;
  return result;
}

uint64_t sub_24BA72ED0(void *a1)
{
  if (*a1)
  {

    sub_24B995E08();

    sub_24B9951AC(MEMORY[0x277D84F90]);

    sub_24B993E6C(1);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA72FA8(void *a1)
{
  v2 = a1 + *(type metadata accessor for FacesAndPagesPicker.contents(0) + 28);
  v3 = *v2;
  v4 = *(v2 + 1);
  v5 = v2[16];
  v14 = *v2;
  v15 = v4;
  v16 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  MEMORY[0x24C24FC10](&v13);
  if (v13 == 1)
  {
    v14 = v3;
    v15 = v4;
    v16 = v5;
    v13 = 0;
    return sub_24BAA9B6C();
  }

  else if (*a1)
  {
    v7 = *(*a1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshots);
    if (v7 >> 62)
    {
      goto LABEL_19;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:

    if (v8)
    {
      v9 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x24C2506E0](v9, v7);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_15:
            __break(1u);
          }
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_19:
            v8 = sub_24BAAA52C();
            goto LABEL_6;
          }

          v10 = *(v7 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_15;
          }
        }

        v12 = *(v10 + 49);
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v14) = v12;
        sub_24BAA81CC();
        ++v9;
      }

      while (v11 != v8);
    }
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}