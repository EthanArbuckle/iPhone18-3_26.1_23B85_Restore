uint64_t sub_24A7253E8(void *a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4, const char *a5)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_281518F88);
  v10 = a1;
  v11 = sub_24A82CD94();
  v12 = sub_24A82D504();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = a2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136315138;
    v16 = a1;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v17 = sub_24A82D024();
    v19 = sub_24A68761C(v17, v18, &v32);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_24A675000, v11, v12, a5, v14, 0xCu);
    sub_24A6876E8(v15);
    MEMORY[0x24C21E1D0](v15, -1, -1);
    v20 = v14;
    a2 = v13;
    MEMORY[0x24C21E1D0](v20, -1, -1);
  }

  if (a1)
  {
    LOBYTE(v32) = 4;
    sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
    v21 = *(type metadata accessor for FMIPItem() - 8);
    v22 = *(v21 + 72);
    v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_24A8327A0;
    sub_24A69F0CC(a4 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v24 + v23, type metadata accessor for FMIPItem);
    v25 = v24;
    v26 = a1;
  }

  else
  {
    LOBYTE(v32) = 2;
    sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
    v27 = *(type metadata accessor for FMIPItem() - 8);
    v28 = *(v27 + 72);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_24A8327A0;
    sub_24A69F0CC(a4 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v30 + v29, type metadata accessor for FMIPItem);
    v25 = v30;
    v26 = 0;
  }

  a2(&v32, v25, v26);
}

uint64_t sub_24A725744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v70 = a2;
  v71 = a3;
  v69 = a1;
  v5 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v69 - v7;
  v82 = type metadata accessor for FMIPDevice();
  v9 = *(v82 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v82);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMIPItem();
  v74 = *(v13 - 8);
  v14 = *(v74 + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v69 - v18;
  if (qword_281515DC8 != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v78 = v12;
    v20 = sub_24A82CDC4();
    sub_24A6797D0(v20, qword_281518F88);
    v21 = sub_24A82CD94();
    v22 = sub_24A82D504();
    v23 = os_log_type_enabled(v21, v22);
    v76 = v9;
    if (v23)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_24A675000, v21, v22, "FMIPItemActionsController: performing add safe location to all supported beacons action", v24, 2u);
      v25 = v24;
      v9 = v76;
      MEMORY[0x24C21E1D0](v25, -1, -1);
    }

    v72 = v4;
    v26 = *(v4 + 32);
    swift_beginAccess();
    v27 = *(v26 + 280);
    v28 = *(v27 + 16);
    v75 = v8;
    if (v28)
    {
      v85 = v26;
      v29 = v27 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
      v30 = *(v74 + 72);
      v83 = v27;

      v84 = MEMORY[0x277D84F90];
      do
      {
        sub_24A69F0CC(v29, v19, type metadata accessor for FMIPItem);
        if ((v19[304] & 0x10) != 0)
        {
          v31 = *(v19 + 44);
          v32 = *(v19 + 45);

          sub_24A69F264(v19, type metadata accessor for FMIPItem);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v84 = sub_24A780414(0, *(v84 + 2) + 1, 1, v84);
          }

          v34 = *(v84 + 2);
          v33 = *(v84 + 3);
          if (v34 >= v33 >> 1)
          {
            v84 = sub_24A780414((v33 > 1), v34 + 1, 1, v84);
          }

          v35 = v84;
          *(v84 + 2) = v34 + 1;
          v36 = &v35[16 * v34];
          *(v36 + 4) = v31;
          *(v36 + 5) = v32;
        }

        else
        {
          sub_24A69F264(v19, type metadata accessor for FMIPItem);
        }

        v29 += v30;
        --v28;
      }

      while (v28);

      v8 = v75;
      v9 = v76;
      v26 = v85;
    }

    else
    {
      v84 = MEMORY[0x277D84F90];
    }

    swift_beginAccess();
    v12 = *(v26 + 80);
    v37 = *(v12 + 2);
    v38 = MEMORY[0x277D84F90];
    v4 = v78;
    if (!v37)
    {
      break;
    }

    v83 = &v12[(*(v9 + 80) + 32) & ~*(v9 + 80)];

    v39 = 0;
    v73 = xmmword_24A8327A0;
    v79 = v37;
    v80 = v12;
    while (v39 < *(v12 + 2))
    {
      v40 = *(v9 + 72);
      v85 = v39;
      sub_24A69F0CC(&v83[v40 * v39], v4, type metadata accessor for FMIPDevice);
      if ((*(v4 + 242) & 4) != 0)
      {
        sub_24A67E964(v4 + *(v82 + 128), v8, &unk_27EF5E0B0, &qword_24A8338B0);
        v41 = type metadata accessor for FMIPItemGroup();
        if ((*(*(v41 - 8) + 48))(v8, 1, v41) != 1)
        {
          v81 = v38;
          v44 = *(v8 + 40);

          sub_24A69F264(v8, type metadata accessor for FMIPItemGroup);
          v45 = *(v44 + 16);
          if (v45)
          {
            v87[0] = MEMORY[0x277D84F90];
            sub_24A6FC900(0, v45, 0);
            v43 = v87[0];
            v46 = *(v74 + 80);
            v77 = v44;
            v47 = v44 + ((v46 + 32) & ~v46);
            v48 = *(v74 + 72);
            do
            {
              sub_24A69F0CC(v47, v17, type metadata accessor for FMIPItem);
              v50 = *(v17 + 44);
              v49 = *(v17 + 45);

              sub_24A69F264(v17, type metadata accessor for FMIPItem);
              v87[0] = v43;
              v52 = v43[2];
              v51 = v43[3];
              if (v52 >= v51 >> 1)
              {
                sub_24A6FC900((v51 > 1), v52 + 1, 1);
                v43 = v87[0];
              }

              v43[2] = v52 + 1;
              v53 = &v43[2 * v52];
              v53[4] = v50;
              v53[5] = v49;
              v47 += v48;
              --v45;
            }

            while (v45);
            v4 = v78;
            sub_24A69F264(v78, type metadata accessor for FMIPDevice);

            v8 = v75;
            v9 = v76;
          }

          else
          {

            v4 = v78;
            sub_24A69F264(v78, type metadata accessor for FMIPDevice);
            v43 = MEMORY[0x277D84F90];
          }

          v38 = v81;
          goto LABEL_33;
        }

        sub_24A67F378(v8, &unk_27EF5E0B0, &qword_24A8338B0);
        v19 = *(v4 + 24);
        if (v19)
        {
          v42 = *(v4 + 16);
          sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
          v43 = swift_allocObject();
          *(v43 + 1) = v73;
          v43[4] = v42;
          v43[5] = v19;

          sub_24A69F264(v4, type metadata accessor for FMIPDevice);
LABEL_33:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = sub_24A780520(0, v38[2] + 1, 1, v38);
          }

          v55 = v38[2];
          v54 = v38[3];
          v19 = (v55 + 1);
          if (v55 >= v54 >> 1)
          {
            v38 = sub_24A780520((v54 > 1), v55 + 1, 1, v38);
          }

          v38[2] = v19;
          v38[v55 + 4] = v43;
          v37 = v79;
          v12 = v80;
          goto LABEL_19;
        }
      }

      sub_24A69F264(v4, type metadata accessor for FMIPDevice);
LABEL_19:
      v39 = v85 + 1;
      if (v85 + 1 == v37)
      {

        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

LABEL_39:
  v56 = v38[2];
  if (v56)
  {
    v8 = 0;
    v12 = v38;
    v57 = v38 + 4;
    v17 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v8 >= *(v12 + 2))
      {
        goto LABEL_60;
      }

      v4 = v57[v8];
      v19 = *(v4 + 16);
      v9 = *(v17 + 2);
      v58 = &v19[v9];
      if (__OFADD__(v9, v19))
      {
        goto LABEL_61;
      }

      v59 = v57[v8];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v58 <= *(v17 + 3) >> 1)
      {
        if (!*(v4 + 16))
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v9 <= v58)
        {
          v61 = &v19[v9];
        }

        else
        {
          v61 = v9;
        }

        v17 = sub_24A780414(isUniquelyReferenced_nonNull_native, v61, 1, v17);
        if (!*(v4 + 16))
        {
LABEL_41:

          if (v19)
          {
            goto LABEL_62;
          }

          goto LABEL_42;
        }
      }

      if ((*(v17 + 3) >> 1) - *(v17 + 2) < v19)
      {
        goto LABEL_63;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v62 = *(v17 + 2);
        v63 = __OFADD__(v62, v19);
        v64 = &v19[v62];
        if (v63)
        {
          goto LABEL_64;
        }

        *(v17 + 2) = v64;
      }

LABEL_42:
      if (v56 == ++v8)
      {
        goto LABEL_58;
      }
    }
  }

  v17 = MEMORY[0x277D84F90];
LABEL_58:

  v87[0] = v84;
  sub_24A77EA14(v17);
  v65 = v87[0];
  v66 = v69;
  memcpy(v86, (v69 + 16), sizeof(v86));
  type metadata accessor for FMIPAddMultipleSafeLocationsItemAction();
  v67 = swift_allocObject();
  memcpy((v67 + 16), (v66 + 16), 0x160uLL);
  *(v67 + 376) = 0;
  *(v67 + 384) = v65;
  *(v67 + 368) = 0;
  sub_24A6CC988(v86, v87);
  sub_24A72626C(v67, v70, v71);
  swift_setDeallocating();
  memcpy(v87, (v67 + 16), sizeof(v87));

  sub_24A6CC294(v87);

  return swift_deallocClassInstance();
}

uint64_t sub_24A726084(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);
  v7 = sub_24A82CD94();
  v8 = sub_24A82D504();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24A675000, v7, v8, "FMIPItemActionsController: performing add safe location action", v9, 2u);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24A8327A0;
  v11 = a1[47];
  *(v10 + 32) = a1[46];
  *(v10 + 40) = v11;
  memcpy(v14, a1 + 2, sizeof(v14));
  type metadata accessor for FMIPAddMultipleSafeLocationsItemAction();
  v12 = swift_allocObject();
  memcpy((v12 + 16), a1 + 2, 0x160uLL);
  *(v12 + 376) = 0;
  *(v12 + 384) = v10;
  *(v12 + 368) = 0;

  sub_24A6CC988(v14, __dst);
  sub_24A72626C(v12, a2, a3);
  swift_setDeallocating();
  memcpy(__dst, (v12 + 16), sizeof(__dst));

  sub_24A6CC294(__dst);

  return swift_deallocClassInstance();
}

void sub_24A72626C(void (*a1)(char *, char *, uint8_t *), uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v40 = a2;
  v4 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39 - v6;
  v8 = sub_24A82CAA4();
  v44 = *(v8 - 1);
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v12 = sub_24A82CDC4();
    sub_24A6797D0(v12, qword_281518F88);
    v13 = sub_24A82CD94();
    v14 = sub_24A82D504();
    v15 = os_log_type_enabled(v13, v14);
    v46 = v8;
    if (v15)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24A675000, v13, v14, "FMIPItemActionsController: performing add safe location action", v8, 2u);
      MEMORY[0x24C21E1D0](v8, -1, -1);
    }

    v39 = a1;
    v16 = *(a1 + 48);
    v45 = *(v16 + 16);
    if (!v45)
    {
      break;
    }

    v17 = 0;
    v18 = (v44 + 48);
    v19 = (v44 + 32);
    v20 = (v16 + 40);
    v21 = MEMORY[0x277D84F90];
    v43 = v11;
    while (v17 < *(v16 + 16))
    {
      a1 = *(v20 - 1);
      v22 = *v20;

      sub_24A82CA44();
      v8 = v46;

      if ((*v18)(v7, 1, v8) == 1)
      {
        sub_24A67F378(v7, &qword_27EF5D020, &qword_24A830E40);
      }

      else
      {
        a1 = *v19;
        (*v19)(v11, v7, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_24A78029C(0, v21[2] + 1, 1, v21);
        }

        v24 = v21[2];
        v23 = v21[3];
        v8 = (v24 + 1);
        if (v24 >= v23 >> 1)
        {
          v21 = sub_24A78029C(v23 > 1, v24 + 1, 1, v21);
        }

        v21[2] = v8;
        v25 = v21 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v24;
        v11 = v43;
        a1(v25, v43, v46);
      }

      ++v17;
      v20 += 2;
      if (v45 == v17)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

  v21 = MEMORY[0x277D84F90];
LABEL_16:
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v27 = *(v39 + 5);
  if (*(v39 + 45))
  {
    v28 = *(v39 + 44);
    v29 = v27;
    v30 = sub_24A82CF94();
  }

  else
  {
    v31 = v27;
    v30 = 0;
  }

  v32 = [objc_allocWithZone(MEMORY[0x277D496B0]) initWithType:0 name:v30 location:v27 approvalState:1];

  v33 = v42;
  v34 = *(v42 + 24);
  v35 = swift_allocObject();
  v35[2] = v32;
  v35[3] = v26;
  v36 = v41;
  v35[4] = v40;
  v35[5] = v36;
  v35[6] = v33;
  v35[7] = v21;
  aBlock[4] = sub_24A7293A8;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A7FD664;
  aBlock[3] = &unk_285DC4678;
  v37 = _Block_copy(aBlock);
  v38 = v32;

  [v34 addSafeLocation:v38 completion:v37];
  _Block_release(v37);
}

void sub_24A726720(int a1, void *a2, void *a3, uint64_t a4, void (*a5)(void, void, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v88 = a7;
  v90 = a6;
  v89 = a4;
  v91 = a2;
  LODWORD(v92) = a1;
  v11 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v86 = &v81 - v13;
  v14 = sub_24A82CAA4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v85 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v81 - v19;
  v21 = swift_allocBox();
  v23 = v22;
  v24 = [a3 identifier];
  sub_24A82CA84();

  v25 = *(v15 + 32);
  v93 = v23;
  v84 = v15 + 32;
  v83 = v25;
  v25(v23, v20, v14);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v26 = sub_24A82CDC4();
  sub_24A6797D0(v26, qword_281518F88);

  v27 = sub_24A82CD94();
  v28 = sub_24A82D504();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v82 = v21;
    v30 = v29;
    v31 = swift_slowAlloc();
    v87 = a8;
    v32 = v31;
    v101 = v31;
    *v30 = 136315394;
    aBlock = 0;
    v96 = 0xE000000000000000;
    if (v92)
    {
      v33 = 1702195828;
    }

    else
    {
      v33 = 0x65736C6166;
    }

    v81 = a5;
    if (v92)
    {
      v34 = 0xE400000000000000;
    }

    else
    {
      v34 = 0xE500000000000000;
    }

    MEMORY[0x24C21C9E0](v33, v34);

    v35 = sub_24A68761C(aBlock, v96, &v101);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    v36 = v93;
    swift_beginAccess();
    (*(v15 + 16))(v20, v36, v14);
    sub_24A6956B0(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
    v37 = sub_24A82DB84();
    v39 = v38;
    (*(v15 + 8))(v20, v14);
    v40 = sub_24A68761C(v37, v39, &v101);
    a5 = v81;

    *(v30 + 14) = v40;
    _os_log_impl(&dword_24A675000, v27, v28, "FMIPItemActionsController: Add safe location completed with success? %s, identifier: %s", v30, 0x16u);
    swift_arrayDestroy();
    v41 = v32;
    a8 = v87;
    MEMORY[0x24C21E1D0](v41, -1, -1);
    v42 = v30;
    v21 = v82;
    MEMORY[0x24C21E1D0](v42, -1, -1);
  }

  v43 = v91;
  if (v91)
  {
    swift_getErrorValue();
    if (sub_24A774234(v94) == 8)
    {
      v44 = v43;
      v45 = sub_24A82CD94();
      v46 = sub_24A82D504();

      v47 = os_log_type_enabled(v45, v46);
      v87 = a8;
      if (v47)
      {
        v48 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        aBlock = v92;
        *v48 = 136315138;
        v101 = v43;
        v49 = v43;
        sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
        v50 = sub_24A82D024();
        v52 = sub_24A68761C(v50, v51, &aBlock);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_24A675000, v45, v46, "FMIPItemActionsController: Safe Location already exists. Assigning it. %s", v48, 0xCu);
        v53 = v92;
        sub_24A6876E8(v92);
        MEMORY[0x24C21E1D0](v53, -1, -1);
        MEMORY[0x24C21E1D0](v48, -1, -1);
      }

      v54 = sub_24A82C7E4();
      v55 = [v54 userInfo];
      v56 = sub_24A82CEF4();

      if (*(v56 + 16) && (v57 = sub_24A6A2D48(0xD000000000000020, 0x800000024A846960), (v58 & 1) != 0))
      {
        sub_24A67E168(*(v56 + 56) + 32 * v57, &aBlock);

        v59 = v86;
        v60 = swift_dynamicCast();
        (*(v15 + 56))(v59, v60 ^ 1u, 1, v14);
        if ((*(v15 + 48))(v59, 1, v14) != 1)
        {
          v61 = v85;
          v83(v85, v59, v14);
          v62 = v93;
          swift_beginAccess();
          (*(v15 + 24))(v62, v61, v14);
          (*(v15 + 8))(v61, v14);
          v63 = v89;
          swift_beginAccess();
          *(v63 + 16) = 1;
LABEL_25:
          v73 = *(v88 + 24);
          v74 = v93;
          swift_beginAccess();
          (*(v15 + 16))(v20, v74, v14);
          v75 = sub_24A82CA64();
          (*(v15 + 8))(v20, v14);
          v76 = sub_24A82D224();
          v77 = swift_allocObject();
          v78 = v90;
          v77[2] = a5;
          v77[3] = v78;
          v79 = v89;
          v77[4] = v21;
          v77[5] = v79;
          v99 = sub_24A7293B8;
          v100 = v77;
          aBlock = MEMORY[0x277D85DD0];
          v96 = 1107296256;
          v97 = sub_24A7FD664;
          v98 = &unk_285DC46C8;
          v80 = _Block_copy(&aBlock);

          [v73 assignSafeLocation:v75 beaconUUIDs:v76 completion:v80];
          _Block_release(v80);

          return;
        }
      }

      else
      {

        v59 = v86;
        (*(v15 + 56))(v86, 1, 1, v14);
      }

      sub_24A67F378(v59, &qword_27EF5D020, &qword_24A830E40);
      goto LABEL_25;
    }
  }

  if (v92)
  {
    goto LABEL_25;
  }

  v64 = v43;
  v65 = sub_24A82CD94();
  v66 = sub_24A82D504();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    aBlock = v68;
    *v67 = 136315138;
    v101 = v43;
    v69 = v43;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v70 = sub_24A82D024();
    v72 = sub_24A68761C(v70, v71, &aBlock);

    *(v67 + 4) = v72;
    _os_log_impl(&dword_24A675000, v65, v66, "FMIPItemActionsController: Add safe location error %s", v67, 0xCu);
    sub_24A6876E8(v68);
    MEMORY[0x24C21E1D0](v68, -1, -1);
    MEMORY[0x24C21E1D0](v67, -1, -1);
  }

  LOBYTE(aBlock) = 4;
  a5(&aBlock, 0, 0, v43, 2);
}

uint64_t sub_24A72717C(uint64_t a1, void *a2, void (*a3)(void, void, void, void, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_24A82CAA4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v45 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_projectBox();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v14 = sub_24A82CDC4();
  sub_24A6797D0(v14, qword_281518F88);
  v15 = a2;
  v16 = sub_24A82CD94();
  v17 = sub_24A82D504();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v43 = v18;
    v44 = swift_slowAlloc();
    v47 = v44;
    *v18 = 136315138;
    v46 = a2;
    v19 = a2;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v20 = sub_24A82D024();
    v42 = v17;
    v22 = a3;
    v23 = sub_24A68761C(v20, v21, &v47);

    v24 = v43;
    *(v43 + 1) = v23;
    a3 = v22;
    _os_log_impl(&dword_24A675000, v16, v42, "FMIPItemActionsController: Assign safe location completed with error? %s", v24, 0xCu);
    v25 = v44;
    sub_24A6876E8(v44);
    MEMORY[0x24C21E1D0](v25, -1, -1);
    MEMORY[0x24C21E1D0](v24, -1, -1);
  }

  v26 = (v10 + 16);
  v27 = (v10 + 8);
  if (a2)
  {
    v48 = 4;
    swift_beginAccess();
    v28 = v45;
    (*v26)(v45, v13, v9);
    v29 = sub_24A82CA54();
    v31 = v30;
    (*v27)(v28, v9);
    swift_beginAccess();
    v32 = *(a6 + 16);
    v33 = v29;
    v34 = v31;
    v35 = a2;
  }

  else
  {
    v48 = 2;
    swift_beginAccess();
    v36 = v45;
    (*v26)(v45, v13, v9);
    v37 = sub_24A82CA54();
    v39 = v38;
    (*v27)(v36, v9);
    swift_beginAccess();
    v32 = *(a6 + 16);
    v33 = v37;
    v34 = v39;
    v35 = 0;
  }

  a3(&v48, v33, v34, v35, v32);
}

uint64_t sub_24A72751C(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);
  v7 = sub_24A82CD94();
  v8 = sub_24A82D504();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24A675000, v7, v8, "FMIPItemActionsController: performing remove safe location action", v9, 2u);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24A8327A0;
  v11 = a1[47];
  *(v10 + 32) = a1[46];
  *(v10 + 40) = v11;
  memcpy(__dst, a1 + 2, sizeof(__dst));
  type metadata accessor for FMIPRemoveMultipleSafeLocationItemsAction();
  v12 = swift_allocObject();
  memcpy((v12 + 16), a1 + 2, 0x160uLL);
  *(v12 + 368) = v10;

  sub_24A6CC988(__dst, &v14);
  sub_24A7276C0(v12, a2, a3);
}

void sub_24A7276C0(void (*a1)(char *, char *, uint8_t *), uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v31 = a2;
  v4 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - v6;
  v8 = sub_24A82CAA4();
  v36 = *(v8 - 1);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v12 = sub_24A82CDC4();
    sub_24A6797D0(v12, qword_281518F88);
    v13 = sub_24A82CD94();
    v14 = sub_24A82D504();
    v15 = os_log_type_enabled(v13, v14);
    v38 = v8;
    if (v15)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24A675000, v13, v14, "FMIPItemActionsController: performing remove safe location action", v8, 2u);
      MEMORY[0x24C21E1D0](v8, -1, -1);
    }

    v32 = a1;
    v16 = *(a1 + 46);
    v37 = *(v16 + 16);
    if (!v37)
    {
      break;
    }

    v17 = 0;
    v18 = (v36 + 48);
    v19 = (v36 + 32);
    v20 = (v16 + 40);
    v21 = MEMORY[0x277D84F90];
    v35 = v11;
    while (v17 < *(v16 + 16))
    {
      a1 = *(v20 - 1);
      v22 = *v20;

      sub_24A82CA44();
      v8 = v38;

      if ((*v18)(v7, 1, v8) == 1)
      {
        sub_24A67F378(v7, &qword_27EF5D020, &qword_24A830E40);
      }

      else
      {
        a1 = *v19;
        (*v19)(v11, v7, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_24A78029C(0, v21[2] + 1, 1, v21);
        }

        v24 = v21[2];
        v23 = v21[3];
        v8 = (v24 + 1);
        if (v24 >= v23 >> 1)
        {
          v21 = sub_24A78029C(v23 > 1, v24 + 1, 1, v21);
        }

        v21[2] = v8;
        v25 = v21 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v24;
        v11 = v35;
        a1(v25, v35, v38);
      }

      ++v17;
      v20 += 2;
      if (v37 == v17)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  v21 = MEMORY[0x277D84F90];
LABEL_16:
  v26 = v33;
  v27 = *(v33 + 24);
  v28 = swift_allocObject();
  v29 = v31;
  v28[2] = v32;
  v28[3] = v26;
  v28[4] = v21;
  v28[5] = v29;
  v28[6] = v34;
  aBlock[4] = sub_24A729304;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A72032C;
  aBlock[3] = &unk_285DC45B0;
  v30 = _Block_copy(aBlock);

  [v27 safeLocationsForSeparationMonitoring_];
  _Block_release(v30);
}

uint64_t sub_24A727ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v83 = a4;
  v82 = a3;
  v10 = sub_24A82CAA4();
  v11 = *(v10 - 8);
  v90 = v10;
  v91 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v80 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v87 = v76 - v15;
  if (qword_281515DC8 != -1)
  {
LABEL_33:
    swift_once();
  }

  v16 = sub_24A82CDC4();
  v17 = sub_24A6797D0(v16, qword_281518F88);

  v84 = v17;
  v18 = sub_24A82CD94();
  v19 = sub_24A82D504();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136315138;
    sub_24A679170(0, &qword_27EF5D720, 0x277D496B0);
    sub_24A72931C();
    v22 = a1;
    v23 = sub_24A82D3D4();
    v25 = sub_24A68761C(v23, v24, aBlock);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_24A675000, v18, v19, "FMIPItemActionsController: Owner session safe locations %s", v20, 0xCu);
    sub_24A6876E8(v21);
    MEMORY[0x24C21E1D0](v21, -1, -1);
    MEMORY[0x24C21E1D0](v20, -1, -1);
  }

  else
  {
    v22 = a1;
  }

  v26 = sub_24A82CD94();
  v27 = sub_24A82D504();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136315138;
    v30 = *(a2 + 16);
    v31 = *(a2 + 24);
    v32 = sub_24A82D064();
    v34 = sub_24A68761C(v32, v33, aBlock);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_24A675000, v26, v27, "FMIPItemActionsController: action location identifier %s", v28, 0xCu);
    sub_24A6876E8(v29);
    MEMORY[0x24C21E1D0](v29, -1, -1);
    MEMORY[0x24C21E1D0](v28, -1, -1);
  }

  v35 = v22;
  if ((v22 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24A82D704();
    sub_24A679170(0, &qword_27EF5D720, 0x277D496B0);
    sub_24A72931C();
    sub_24A82D414();
    v35 = v94[4];
    a1 = v94[5];
    v38 = v94[6];
    v37 = v94[7];
    v39 = v94[8];
  }

  else
  {
    v40 = -1 << *(v22 + 32);
    a1 = v22 + 56;
    v38 = ~v40;
    v41 = -v40;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v39 = v42 & *(v22 + 56);

    v37 = 0;
  }

  v76[1] = v38;
  v43 = (v38 + 64) >> 6;
  v89 = (v91 + 8);
  v79 = v94;
  *&v36 = 136315138;
  v77 = v36;
  v81 = a2;
  v85 = v43;
  v78 = a5;
  v88 = v35;
  v86 = a1;
  while ((v35 & 0x8000000000000000) == 0)
  {
    v52 = v37;
    v53 = v39;
    v54 = v37;
    if (!v39)
    {
      while (1)
      {
        v54 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if (v54 >= v43)
        {
          return sub_24A6BAFBC();
        }

        v53 = *(a1 + 8 * v54);
        ++v52;
        if (v53)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_21:
    v55 = (v53 - 1) & v53;
    v51 = *(*(v35 + 48) + ((v54 << 9) | (8 * __clz(__rbit64(v53)))));
    if (!v51)
    {
      return sub_24A6BAFBC();
    }

LABEL_25:
    v91 = v55;
    v57 = [v51 identifier];
    v58 = v87;
    sub_24A82CA84();

    v59 = sub_24A82CA54();
    v61 = v60;
    v62 = *v89;
    (*v89)(v58, v90);
    if (v59 == *(a2 + 16) && v61 == *(a2 + 24))
    {
    }

    else
    {
      v63 = *(a2 + 16);
      v64 = *(a2 + 24);
      v65 = sub_24A82DC04();

      if ((v65 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v66 = sub_24A82CD94();
    v67 = sub_24A82D504();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = a6;
      v70 = swift_slowAlloc();
      aBlock[0] = v70;
      *v68 = v77;
      v71 = sub_24A82D064();
      v73 = sub_24A68761C(v71, v72, aBlock);

      *(v68 + 4) = v73;
      _os_log_impl(&dword_24A675000, v66, v67, "FMIPItemActionsController: REMOVE SAFE LOCATION %s", v68, 0xCu);
      sub_24A6876E8(v70);
      v74 = v70;
      a6 = v69;
      a5 = v78;
      MEMORY[0x24C21E1D0](v74, -1, -1);
      MEMORY[0x24C21E1D0](v68, -1, -1);
    }

    v44 = *(v82 + 24);
    v45 = [v51 identifier];
    v46 = v80;
    sub_24A82CA84();

    v47 = sub_24A82CA64();
    v62(v46, v90);
    v48 = sub_24A82D224();
    v49 = swift_allocObject();
    *(v49 + 16) = a5;
    *(v49 + 24) = a6;
    v94[2] = sub_24A729384;
    v94[3] = v49;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    v94[0] = sub_24A7FD664;
    v94[1] = &unk_285DC4600;
    v50 = _Block_copy(aBlock);

    [v44 unassignSafeLocation:v47 beaconUUIDs:v48 completion:v50];
    _Block_release(v50);

    v51 = v48;
    a2 = v81;
LABEL_15:

    v37 = v54;
    v39 = v91;
    v35 = v88;
    v43 = v85;
    a1 = v86;
  }

  v56 = sub_24A82D784();
  if (v56)
  {
    v92 = v56;
    sub_24A679170(0, &qword_27EF5D720, 0x277D496B0);
    swift_dynamicCast();
    v51 = aBlock[0];
    v54 = v37;
    v55 = v39;
    if (aBlock[0])
    {
      goto LABEL_25;
    }
  }

  return sub_24A6BAFBC();
}

uint64_t sub_24A7282DC(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t **, void, void, void *, uint64_t), uint64_t a4, const char *a5)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  sub_24A6797D0(v8, qword_281518F88);
  v9 = a2;
  v10 = sub_24A82CD94();
  v11 = sub_24A82D504();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    v14 = a2;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v15 = sub_24A82D024();
    v17 = sub_24A68761C(v15, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_24A675000, v10, v11, a5, v12, 0xCu);
    sub_24A6876E8(v13);
    MEMORY[0x24C21E1D0](v13, -1, -1);
    MEMORY[0x24C21E1D0](v12, -1, -1);
  }

  if (a2)
  {
    LOBYTE(v20) = 4;
    v18 = a2;
  }

  else
  {
    LOBYTE(v20) = 2;
    v18 = 0;
  }

  return a3(&v20, 0, 0, v18, 2);
}

void sub_24A7284B0(uint64_t a1, uint64_t a2, void (*a3)(void *, void, void, void, uint64_t), uint64_t a4, void *a5, uint64_t a6)
{
  v24[2] = a2;
  sub_24A79EE60(sub_24A72F904, v24, a1);
  if (v10 && (v11 = v10, v12 = [v10 mutableSafeLocation], v11, v12))
  {
    v13 = a5[5];
    v14 = v12;
    [v14 setLocation_];
    if (a5[45])
    {
      v15 = a5[44];
      v16 = sub_24A82CF94();
    }

    else
    {
      v16 = 0;
    }

    [v14 setName_];

    v21 = *(a6 + 24);
    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    *(v22 + 24) = a4;
    aBlock[4] = sub_24A72F924;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A7FD664;
    aBlock[3] = &unk_285DC52F8;
    v23 = _Block_copy(aBlock);

    [v21 updateSafeLocation:v14 completion:v23];
    _Block_release(v23);
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v17 = sub_24A82CDC4();
    sub_24A6797D0(v17, qword_281518F88);
    v18 = sub_24A82CD94();
    v19 = sub_24A82D504();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24A675000, v18, v19, "FMIPItemActionsController: update safe location completed with error: unable to fetch existing safe location", v20, 2u);
      MEMORY[0x24C21E1D0](v20, -1, -1);
    }

    LOBYTE(aBlock[0]) = 4;
    a3(aBlock, 0, 0, 0, 2);
  }
}

uint64_t sub_24A728730(id *a1)
{
  v2 = sub_24A82CAA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 identifier];
  sub_24A82CA84();

  v8 = sub_24A82CA74();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_24A72883C(char a1, void *a2, uint64_t (*a3)(uint64_t **, void, void, void *, uint64_t))
{
  if (a1)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v4 = sub_24A82CDC4();
    sub_24A6797D0(v4, qword_281518F88);
    v5 = sub_24A82CD94();
    v6 = sub_24A82D504();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24A675000, v5, v6, "FMIPItemActionsController: update safe location completed successfully", v7, 2u);
      MEMORY[0x24C21E1D0](v7, -1, -1);
    }

    LOBYTE(v21) = 2;
    v8 = 0;
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v10 = sub_24A82CDC4();
    sub_24A6797D0(v10, qword_281518F88);
    v11 = a2;
    v12 = sub_24A82CD94();
    v13 = sub_24A82D504();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      v16 = a2;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v17 = sub_24A82D024();
      v19 = sub_24A68761C(v17, v18, &v21);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_24A675000, v12, v13, "FMIPItemActionsController: update safe location completed with error? %s", v14, 0xCu);
      sub_24A6876E8(v15);
      MEMORY[0x24C21E1D0](v15, -1, -1);
      MEMORY[0x24C21E1D0](v14, -1, -1);
    }

    LOBYTE(v21) = 4;
    v8 = a2;
  }

  return a3(&v21, 0, 0, v8, 2);
}

void sub_24A728ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v33 - v10;
  v12 = sub_24A82CAA4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 352);
  v18 = *(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 360);
  sub_24A82CA44();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24A67F378(v11, &qword_27EF5D020, &qword_24A830E40);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v19 = sub_24A82CDC4();
    sub_24A6797D0(v19, qword_281518F88);
    v20 = sub_24A82CD94();
    v21 = sub_24A82D4E4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24A675000, v20, v21, "FMItemDetailContentViewController: No UUID specified for firmware update", v22, 2u);
      MEMORY[0x24C21E1D0](v22, -1, -1);
    }
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v23 = objc_opt_self();
    v24 = sub_24A82CA64();
    v25 = [v23 updateAccessoryFirmware_];
    v34 = v25;

    v26 = [*(v4 + 24) executeCommand_];
    v27 = swift_allocObject();
    *(v27 + 16) = a2;
    *(v27 + 24) = a3;
    v39 = sub_24A7292F0;
    v40 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_24A72011C;
    v38 = &unk_285DC4510;
    v28 = _Block_copy(&aBlock);

    v29 = [v26 addSuccessBlock_];
    _Block_release(v28);

    v30 = swift_allocObject();
    v30[2] = a2;
    v30[3] = a3;
    v30[4] = a1;
    v39 = sub_24A7292F8;
    v40 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_24A720114;
    v38 = &unk_285DC4560;
    v31 = _Block_copy(&aBlock);

    v32 = [v26 addFailureBlock_];
    _Block_release(v31);

    (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_24A728F10(uint64_t a1, uint64_t (*a2)(char *, void, void))
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v3 = sub_24A82CDC4();
  sub_24A6797D0(v3, qword_281518F88);
  v4 = sub_24A82CD94();
  v5 = sub_24A82D504();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24A675000, v4, v5, "FMIPItemActionsController: Update accessory firmware successfully completed", v6, 2u);
    MEMORY[0x24C21E1D0](v6, -1, -1);
  }

  v8 = 2;
  return a2(&v8, 0, 0);
}

uint64_t sub_24A729020(void *a1, void (*a2)(uint64_t **, uint64_t, void *), uint64_t a3, uint64_t a4)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518F88);
  v8 = a1;
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    v13 = a1;
    sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
    v14 = sub_24A82D024();
    v16 = sub_24A68761C(v14, v15, &v22);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPItemActionsController: Update accessory firmware completed with error: %s", v11, 0xCu);
    sub_24A6876E8(v12);
    MEMORY[0x24C21E1D0](v12, -1, -1);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  LOBYTE(v22) = 4;
  sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
  v17 = *(type metadata accessor for FMIPItem() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_24A8327A0;
  sub_24A69F0CC(a4 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v20 + v19, type metadata accessor for FMIPItem);
  a2(&v22, v20, a1);
}

uint64_t sub_24A729290()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

unint64_t sub_24A72931C()
{
  result = qword_27EF5D728;
  if (!qword_27EF5D728)
  {
    sub_24A679170(255, &qword_27EF5D720, 0x277D496B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D728);
  }

  return result;
}

uint64_t sub_24A729574()
{
  v1 = *(v0 + 24);

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A7295F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void), uint64_t a4)
{
  v7 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = aBlock - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  v13 = MEMORY[0x24C21D990](v12);
  type metadata accessor for FMIPFetchEncryptedPayloadAction(0);
  if (swift_dynamicCastClass())
  {
    v14 = *(a2 + 24);

    v15 = sub_24A82CA64();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_24A72F92C;
    *(v16 + 24) = v11;
    aBlock[4] = sub_24A72F934;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A7E39A4;
    aBlock[3] = &unk_285DC5370;
    v17 = _Block_copy(aBlock);

    [v14 fetchUnauthorizedEncryptedPayload:v15 completion:v17];
    _Block_release(v17);
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v18 = sub_24A82CDC4();
    sub_24A6797D0(v18, qword_281518F88);
    v19 = sub_24A82CD94();
    v20 = sub_24A82D504();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24A675000, v19, v20, "FMIPItemActionsController: cannot map action to request", v21, 2u);
      MEMORY[0x24C21E1D0](v21, -1, -1);
    }

    LOBYTE(aBlock[0]) = 0;
    v22 = sub_24A82C8B4();
    (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
    sub_24A72A0CC();
    v23 = swift_allocError();
    *v24 = 6;
    sub_24A73F72C(aBlock, v10, v23, a3);

    sub_24A67F378(v10, &unk_27EF5CCB8, &qword_24A82FDB0);
  }

  objc_autoreleasePoolPop(v13);
}

uint64_t sub_24A729930(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void), uint64_t a4)
{
  v56 = a2;
  v7 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v53 - v9;
  v11 = sub_24A82CAA4();
  v59 = *(v11 - 8);
  v12 = *(v59 + 64);
  MEMORY[0x28223BE20](v11);
  v57 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v58 = a3;
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  v15 = qword_281515DC8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_24A82CDC4();
  sub_24A6797D0(v16, qword_281518F88);

  v17 = sub_24A82CD94();
  v18 = sub_24A82D504();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v54 = v11;
    v20 = v19;
    v21 = swift_slowAlloc();
    v55 = a4;
    v22 = v14;
    v23 = v21;
    aBlock[0] = v21;
    *v20 = 136315138;

    v24 = FMIPItemGroupAction.description.getter();
    v26 = v25;

    v27 = sub_24A68761C(v24, v26, aBlock);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_24A675000, v17, v18, "FMIPItemActionsController: performing remove item group action %s", v20, 0xCu);
    sub_24A6876E8(v23);
    v28 = v23;
    v14 = v22;
    MEMORY[0x24C21E1D0](v28, -1, -1);
    v29 = v20;
    v11 = v54;
    MEMORY[0x24C21E1D0](v29, -1, -1);
  }

  v30 = v59;
  v31 = a1 + OBJC_IVAR____TtC8FMIPCore19FMIPItemGroupAction_itemGroup;
  v32 = *(a1 + OBJC_IVAR____TtC8FMIPCore19FMIPItemGroupAction_itemGroup + 8);
  v33 = *(a1 + OBJC_IVAR____TtC8FMIPCore19FMIPItemGroupAction_itemGroup + 16);
  sub_24A82CA44();
  if ((*(v30 + 48))(v10, 1, v11) == 1)
  {
    sub_24A67F378(v10, &qword_27EF5D020, &qword_24A830E40);
    v34 = sub_24A82CD94();
    v35 = sub_24A82D504();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_24A675000, v34, v35, "FMIPItemActionsController: cannot remove an item group with an invalid identifier", v36, 2u);
      MEMORY[0x24C21E1D0](v36, -1, -1);
    }

    LOBYTE(aBlock[0]) = 4;
    sub_24A6BBA94(&qword_27EF5DA40, &qword_24A8352D0);
    v37 = *(type metadata accessor for FMIPItemGroup() - 8);
    v38 = *(v37 + 72);
    v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_24A8327A0;
    sub_24A69F0CC(v31, v40 + v39, type metadata accessor for FMIPItemGroup);
    sub_24A72A0CC();
    v41 = swift_allocError();
    *v42 = 0;
    sub_24A740C90(aBlock, v40, v41, v58);
  }

  else
  {
    v44 = v57;
    (*(v30 + 32))(v57, v10, v11);
    v45 = v11;
    v46 = sub_24A6DA74C();
    v47 = sub_24A82CA64();
    v48 = v30;
    v49 = OBJC_IVAR____TtC8FMIPCore25FMIPRemoveItemGroupAction_forced;
    swift_beginAccess();
    v50 = *(a1 + v49);
    v51 = swift_allocObject();
    v51[2] = sub_24A72A120;
    v51[3] = v14;
    v51[4] = a1;
    aBlock[4] = sub_24A72A128;
    aBlock[5] = v51;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A7386AC;
    aBlock[3] = &unk_285DC4C68;
    v52 = _Block_copy(aBlock);

    [v46 unpairUUID:v47 force:v50 completion:v52];
    _Block_release(v52);

    (*(v48 + 8))(v44, v45);
  }
}

uint64_t sub_24A729F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void), uint64_t a4)
{

  v8 = MEMORY[0x24C21D990](v7);
  type metadata accessor for FMIPRemoveItemGroupAction(0);
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;

    sub_24A729930(v10, a2, a3, a4);
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v11 = sub_24A82CDC4();
    sub_24A6797D0(v11, qword_281518F88);
    v12 = sub_24A82CD94();
    v13 = sub_24A82D504();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24A675000, v12, v13, "FMIPItemGroupAction: cannot map action to request", v14, 2u);
      MEMORY[0x24C21E1D0](v14, -1, -1);
    }

    v18 = 0;
    sub_24A72A0CC();
    v15 = swift_allocError();
    *v16 = 6;
    sub_24A740C90(&v18, 0, v15, a3);
  }

  objc_autoreleasePoolPop(v8);
}

unint64_t sub_24A72A0CC()
{
  result = qword_27EF5DE78;
  if (!qword_27EF5DE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DE78);
  }

  return result;
}

uint64_t sub_24A72A134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void), uint64_t a4)
{
  v7 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  v11 = sub_24A82CAA4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v28 = a3;
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v18 = *(a1 + 16);
  v17 = *(a1 + 24);

  sub_24A82CA44();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24A67F378(v10, &qword_27EF5D020, &qword_24A830E40);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v19 = sub_24A82CDC4();
    sub_24A6797D0(v19, qword_281518F88);
    v20 = sub_24A82CD94();
    v21 = sub_24A82D504();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24A675000, v20, v21, "FMIPItemActionsController: cannot connect with an invalid identifier", v22, 2u);
      MEMORY[0x24C21E1D0](v22, -1, -1);
    }

    v29 = 4;
    sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_24A8327A0;
    *(v23 + 32) = v18;
    *(v23 + 40) = v17;
    sub_24A72A0CC();
    v24 = swift_allocError();
    *v25 = 0;

    sub_24A74087C(&v29, v23, v24, v28);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v27 = swift_allocObject();
    v27[2] = sub_24A72F5E0;
    v27[3] = v16;
    v27[4] = a1;

    sub_24A72194C(v15, 1, sub_24A72F5E8, v27);

    (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_24A72A4C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void), uint64_t a4)
{
  v7 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  v11 = sub_24A82CAA4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v28 = a3;
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v18 = *(a1 + 16);
  v17 = *(a1 + 24);

  sub_24A82CA44();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24A67F378(v10, &qword_27EF5D020, &qword_24A830E40);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v19 = sub_24A82CDC4();
    sub_24A6797D0(v19, qword_281518F88);
    v20 = sub_24A82CD94();
    v21 = sub_24A82D504();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24A675000, v20, v21, "FMIPItemActionsController: cannot disconnect with an invalid identifier", v22, 2u);
      MEMORY[0x24C21E1D0](v22, -1, -1);
    }

    v29 = 4;
    sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_24A8327A0;
    *(v23 + 32) = v18;
    *(v23 + 40) = v17;
    sub_24A72A0CC();
    v24 = swift_allocError();
    *v25 = 0;

    sub_24A74087C(&v29, v23, v24, v28);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v27 = swift_allocObject();
    v27[2] = sub_24A72FACC;
    v27[3] = v16;
    v27[4] = a1;

    sub_24A72194C(v15, 0, sub_24A72FA34, v27);

    (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_24A72A854(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void *), uint64_t a6)
{
  v12 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v61 - v14;
  v16 = sub_24A82CAA4();
  v69 = *(v16 - 8);
  v17 = *(v69 + 64);
  MEMORY[0x28223BE20](v16);
  v66 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v68 = a5;
  v19[4] = a5;
  v19[5] = a6;
  v20 = qword_281515DC8;
  v65 = a3;

  v64 = a4;

  v67 = a6;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = sub_24A82CDC4();
  sub_24A6797D0(v21, qword_281518F88);

  v22 = sub_24A82CD94();
  v23 = sub_24A82D504();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v62 = a2;
    *&v63 = v16;
    v26 = v19;
    v27 = v25;
    v71 = v25;
    *v24 = 136315138;
    v28 = FMIPItemAction.debugDescription.getter();
    v30 = sub_24A68761C(v28, v29, &v71);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_24A675000, v22, v23, "FMIPItemActionsController: performing play sound %s", v24, 0xCu);
    sub_24A6876E8(v27);
    v31 = v27;
    v19 = v26;
    v16 = v63;
    MEMORY[0x24C21E1D0](v31, -1, -1);
    MEMORY[0x24C21E1D0](v24, -1, -1);
  }

  v32 = v69;
  v33 = a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item;
  v34 = *(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 352);
  v35 = *(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 360);
  sub_24A82CA44();
  if ((*(v32 + 48))(v15, 1, v16) == 1)
  {
    sub_24A67F378(v15, &qword_27EF5D020, &qword_24A830E40);
    v36 = sub_24A82CD94();
    v37 = sub_24A82D504();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_24A675000, v36, v37, "FMIPItemActionsController: cannot play sound for item with an invalid identifier", v38, 2u);
      MEMORY[0x24C21E1D0](v38, -1, -1);
    }

    v39 = sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
    v40 = *(type metadata accessor for FMIPItem() - 8);
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v66 = *(v40 + 72);
    v69 = v39;
    v42 = swift_allocObject();
    v63 = xmmword_24A8327A0;
    *(v42 + 16) = xmmword_24A8327A0;
    sub_24A69F0CC(v33, v42 + v41, type metadata accessor for FMIPItem);
    sub_24A72A0CC();
    v43 = swift_allocError();
    *v44 = 0;
    v45 = v43;
    v46 = sub_24A82CD94();
    v47 = sub_24A82D504();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v62 = v19;
      v49 = v48;
      v50 = swift_slowAlloc();
      v70 = v43;
      v71 = v50;
      *v49 = 136315394;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v51 = sub_24A82D624();
      v53 = sub_24A68761C(v51, v52, &v71);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2048;
      *(v49 + 14) = 500;
      _os_log_impl(&dword_24A675000, v46, v47, "FMIPManager: performed item action with error?: %s status?: %ld", v49, 0x16u);
      sub_24A6876E8(v50);
      MEMORY[0x24C21E1D0](v50, -1, -1);
      MEMORY[0x24C21E1D0](v49, -1, -1);
    }

    if (!*(v42 + 16))
    {
      v54 = swift_allocObject();
      *(v54 + 16) = v63;
      sub_24A69F0CC(v64 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v54 + v41, type metadata accessor for FMIPItem);
      sub_24A7404C0(v54);
    }

    LOBYTE(v71) = 4;
    v68(&v71, v42, v43);
  }

  else
  {
    v56 = v66;
    (*(v32 + 32))(v66, v15, v16);
    v57 = *(a1 + OBJC_IVAR____TtC8FMIPCore23FMIPPlaySoundItemAction_context);
    v58 = v32;
    v59 = *(a1 + OBJC_IVAR____TtC8FMIPCore23FMIPPlaySoundItemAction_context + 8);
    v60 = swift_allocObject();
    v60[2] = sub_24A72FA24;
    v60[3] = v19;
    v60[4] = a1;

    sub_24A722AB8(v56, v57, v59, sub_24A72F614, v60);

    (*(v58 + 8))(v56, v16);
  }
}

uint64_t sub_24A72AF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void *), void **a6)
{
  *&v119 = a2;
  v11 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v109 - v13;
  v15 = sub_24A82CAA4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v117 = a5;
  v20[4] = a5;
  v20[5] = a6;
  v120 = v20;
  v21 = *(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 352);
  v22 = *(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 360);
  v115 = a3;
  v116 = a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item;

  v114 = a4;

  v118 = a6;

  sub_24A82CA44();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_24A67F378(v14, &qword_27EF5D020, &qword_24A830E40);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v23 = sub_24A82CDC4();
    sub_24A6797D0(v23, qword_281518F88);
    v24 = sub_24A82CD94();
    v25 = sub_24A82D504();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_24A675000, v24, v25, "FMIPItemActionsController: cannot enable lost mode for item with an invalid identifier", v26, 2u);
      MEMORY[0x24C21E1D0](v26, -1, -1);
    }

    v27 = sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
    v28 = *(type metadata accessor for FMIPItem() - 8);
    v29 = *(v28 + 72);
    v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v31 = swift_allocObject();
    v119 = xmmword_24A8327A0;
    *(v31 + 16) = xmmword_24A8327A0;
    sub_24A69F0CC(v116, v31 + v30, type metadata accessor for FMIPItem);
    sub_24A72A0CC();
    v32 = swift_allocError();
    *v33 = 0;
    v34 = v32;
    v35 = sub_24A82CD94();
    v36 = sub_24A82D504();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v113 = v30;
      v38 = v37;
      v39 = swift_slowAlloc();
      v116 = v27;
      v112 = v39;
      aBlock = v39;
      *v38 = 136315394;
      v127[0] = v32;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v40 = sub_24A82D624();
      v42 = sub_24A68761C(v40, v41, &aBlock);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2048;
      *(v38 + 14) = 500;
      _os_log_impl(&dword_24A675000, v35, v36, "FMIPManager: performed item action with error?: %s status?: %ld", v38, 0x16u);
      v43 = v112;
      sub_24A6876E8(v112);
      MEMORY[0x24C21E1D0](v43, -1, -1);
      v44 = v38;
      v30 = v113;
      MEMORY[0x24C21E1D0](v44, -1, -1);
    }

    if (!*(v31 + 16))
    {
      v45 = swift_allocObject();
      *(v45 + 16) = v119;
      sub_24A69F0CC(v114 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v45 + v30, type metadata accessor for FMIPItem);
      sub_24A7404C0(v45);
    }

    LOBYTE(aBlock) = 4;
    v117(&aBlock, v31, v32);
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    v47 = *(a1 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_isTrackingEnabled);
    v112 = v16;
    v113 = v15;
    v111 = v19;
    v110 = a1;
    if ((v47 & 1) == 0)
    {
      v51 = objc_opt_self();
      v52 = sub_24A82CA64();
      v53 = [v51 disableLostModeForBeaconUUID_];

      v54 = qword_281515DC8;
      v55 = v53;
      if (v54 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_28;
    }

    v48 = sub_24A82CA64();
    if (*(a1 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_message + 8))
    {
      v49 = *(a1 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_message);
      v50 = *(a1 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_message + 8);
    }

    v65 = sub_24A82CF94();

    v66 = *(a1 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_phoneNumber + 8);
    v114 = *(a1 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_phoneNumber);
    v115 = v66;

    v67 = sub_24A82CF94();

    v68 = *(a1 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_email + 8);
    v116 = *(a1 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_email);
    v69 = objc_opt_self();
    v117 = v68;

    v70 = sub_24A82CF94();

    v71 = [v69 enableLostModeForBeaconUUID:v48 message:v65 phoneNumber:v67 email:v70];

    v72 = qword_281515DC8;
    v118 = v71;
    if (v72 != -1)
    {
      swift_once();
    }

    v73 = sub_24A82CDC4();
    sub_24A6797D0(v73, qword_281518F88);

    v74 = sub_24A82CD94();
    v75 = sub_24A82D504();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock = v77;
      *v76 = 136315138;
      v78 = FMIPItemAction.debugDescription.getter();
      v80 = sub_24A68761C(v78, v79, &aBlock);

      *(v76 + 4) = v80;
      _os_log_impl(&dword_24A675000, v74, v75, "FMIPItemActionsController: enabling lost mode %s", v76, 0xCu);
      sub_24A6876E8(v77);
      MEMORY[0x24C21E1D0](v77, -1, -1);
      MEMORY[0x24C21E1D0](v76, -1, -1);
    }

    v81 = sub_24A82CD94();
    v82 = sub_24A82D504();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v127[0] = v84;
      *v83 = 136315394;
      aBlock = v114;
      v122 = v115;

      sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
      v85 = sub_24A82D024();
      v87 = sub_24A68761C(v85, v86, v127);

      *(v83 + 4) = v87;
      *(v83 + 12) = 2080;
      aBlock = v116;
      v122 = v117;

      v88 = sub_24A82D024();
      v90 = sub_24A68761C(v88, v89, v127);

      *(v83 + 14) = v90;
      _os_log_impl(&dword_24A675000, v81, v82, "FMIPItemActionsController: lost mode: metadata: phone %s, email: %s", v83, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v84, -1, -1);
      MEMORY[0x24C21E1D0](v83, -1, -1);
    }

    v55 = v118;
    for (i = v119; ; i = v119)
    {
      v91 = [*(i + 24) executeCommand_];

      v92 = *(i + 48);
      v93 = swift_allocObject();
      *(v93 + 16) = i;
      *(v93 + 24) = v91;
      v94 = swift_allocObject();
      *(v94 + 16) = sub_24A72FA2C;
      *(v94 + 24) = v93;
      v125 = sub_24A680674;
      v126 = v94;
      aBlock = MEMORY[0x277D85DD0];
      v122 = 1107296256;
      v95 = v55;
      v55 = &v123;
      v123 = sub_24A6805E4;
      v124 = &unk_285DC4E20;
      v96 = _Block_copy(&aBlock);

      v97 = v91;

      dispatch_sync(v92, v96);
      _Block_release(v96);
      LOBYTE(v96) = swift_isEscapingClosureAtFileLocation();

      if ((v96 & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_28:
      swift_once();
LABEL_15:
      v56 = sub_24A82CDC4();
      sub_24A6797D0(v56, qword_281518F88);

      v57 = sub_24A82CD94();
      v58 = sub_24A82D504();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        aBlock = v60;
        *v59 = 136315138;
        v61 = FMIPItemAction.debugDescription.getter();
        v63 = sub_24A68761C(v61, v62, &aBlock);

        *(v59 + 4) = v63;
        _os_log_impl(&dword_24A675000, v57, v58, "FMIPItemActionsController: disabling lost mode %s", v59, 0xCu);
        sub_24A6876E8(v60);
        MEMORY[0x24C21E1D0](v60, -1, -1);
        MEMORY[0x24C21E1D0](v59, -1, -1);
      }
    }

    v98 = swift_allocObject();
    swift_weakInit();
    v99 = swift_allocObject();
    v118 = v95;
    v100 = v120;
    v99[2] = sub_24A72FA24;
    v99[3] = v100;
    v99[4] = v110;
    v99[5] = v98;
    v99[6] = v97;
    v125 = sub_24A72F620;
    v126 = v99;
    aBlock = MEMORY[0x277D85DD0];
    v122 = 1107296256;
    v123 = sub_24A720114;
    v124 = &unk_285DC4E98;
    v101 = _Block_copy(&aBlock);

    v102 = v97;

    v103 = [v102 addFailureBlock_];
    _Block_release(v101);

    v104 = swift_allocObject();
    swift_weakInit();
    v105 = swift_allocObject();
    v105[2] = sub_24A72FA24;
    v105[3] = v100;
    v105[4] = v104;
    v105[5] = v102;
    v125 = sub_24A72F698;
    v126 = v105;
    aBlock = MEMORY[0x277D85DD0];
    v122 = 1107296256;
    v123 = sub_24A72011C;
    v124 = &unk_285DC4EE8;
    v106 = _Block_copy(&aBlock);
    v107 = v102;

    v108 = [v107 addSuccessBlock_];
    _Block_release(v106);

    (v112[1])(v111, v113);
  }
}

uint64_t sub_24A72BD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t **, uint64_t, void *), uint64_t a6)
{
  *&v85 = a2;
  v11 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v81 - v13;
  v15 = sub_24A82CAA4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v87 = a5;
  v88 = v20;
  v20[4] = a5;
  v20[5] = a6;
  v21 = qword_281515DC8;
  v84 = a3;

  v83 = a4;

  v86 = a6;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_24A82CDC4();
  v23 = sub_24A6797D0(v22, qword_281518F88);

  v24 = sub_24A82CD94();
  v25 = sub_24A82D504();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v81 = v23;
    v27 = v26;
    v28 = swift_slowAlloc();
    v82 = v19;
    v29 = v16;
    v30 = v28;
    aBlock = v28;
    *v27 = 136315138;
    v31 = FMIPItemAction.debugDescription.getter();
    v33 = v15;
    v34 = sub_24A68761C(v31, v32, &aBlock);

    *(v27 + 4) = v34;
    v15 = v33;
    _os_log_impl(&dword_24A675000, v24, v25, "FMIPItemActionsController: performing remove action %s", v27, 0xCu);
    sub_24A6876E8(v30);
    v35 = v30;
    v16 = v29;
    v19 = v82;
    MEMORY[0x24C21E1D0](v35, -1, -1);
    MEMORY[0x24C21E1D0](v27, -1, -1);
  }

  v36 = a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item;
  v37 = *(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 352);
  v38 = *(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 360);
  sub_24A82CA44();
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    (*(v16 + 32))(v19, v14, v15);
    v60 = (v36 + *(type metadata accessor for FMIPItem() + 60));
    v61 = *v60;
    v62 = v60[1];
    v63 = [objc_opt_self() SPOwner];
    v64 = [v63 destination];

    v65 = sub_24A82CFC4();
    v67 = v66;

    if (v61 == v65 && v62 == v67)
    {
    }

    else
    {
      v68 = sub_24A82DC04();

      if ((v68 & 1) == 0)
      {
        v76 = v85;
        v77 = *(v85 + 16);
        v70 = sub_24A82CA64();
        v78 = swift_allocObject();
        v79 = v88;
        v78[2] = sub_24A72FA24;
        v78[3] = v79;
        v78[4] = v76;
        v78[5] = a1;
        v94 = sub_24A72F748;
        v95 = v78;
        aBlock = MEMORY[0x277D85DD0];
        v91 = 1107296256;
        v92 = sub_24A7386B4;
        v93 = &unk_285DC5000;
        v80 = _Block_copy(&aBlock);

        [v77 beaconForUUID:v70 completion:v80];
        _Block_release(v80);
        goto LABEL_19;
      }
    }

    v69 = sub_24A6DA74C();
    v70 = sub_24A82CA64();
    v71 = OBJC_IVAR____TtC8FMIPCore20FMIPRemoveItemAction_forced;
    swift_beginAccess();
    v72 = *(a1 + v71);
    v73 = swift_allocObject();
    v74 = v88;
    v73[2] = sub_24A72FA24;
    v73[3] = v74;
    v73[4] = a1;
    v94 = sub_24A72F754;
    v95 = v73;
    aBlock = MEMORY[0x277D85DD0];
    v91 = 1107296256;
    v92 = sub_24A7386AC;
    v93 = &unk_285DC5050;
    v75 = _Block_copy(&aBlock);

    [v69 unpairUUID:v70 force:v72 completion:v75];
    _Block_release(v75);

LABEL_19:
    (*(v16 + 8))(v19, v15);
  }

  sub_24A67F378(v14, &qword_27EF5D020, &qword_24A830E40);
  v39 = sub_24A82CD94();
  v40 = sub_24A82D504();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_24A675000, v39, v40, "FMIPItemActionsController: cannot remove an item with an invalid identifier", v41, 2u);
    MEMORY[0x24C21E1D0](v41, -1, -1);
  }

  sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
  v42 = *(type metadata accessor for FMIPItem() - 8);
  v43 = *(v42 + 72);
  v44 = *(v42 + 80);
  v45 = (v44 + 32) & ~v44;
  v46 = swift_allocObject();
  v85 = xmmword_24A8327A0;
  *(v46 + 16) = xmmword_24A8327A0;
  sub_24A69F0CC(v36, v46 + v45, type metadata accessor for FMIPItem);
  sub_24A72A0CC();
  v47 = swift_allocError();
  *v48 = 0;
  v49 = v47;
  v50 = sub_24A82CD94();
  v51 = sub_24A82D504();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v82 = v44;
    v53 = v52;
    v81 = swift_slowAlloc();
    aBlock = v81;
    *v53 = 136315394;
    v89 = v47;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v54 = sub_24A82D624();
    v56 = sub_24A68761C(v54, v55, &aBlock);

    *(v53 + 4) = v56;
    *(v53 + 12) = 2048;
    *(v53 + 14) = 500;
    _os_log_impl(&dword_24A675000, v50, v51, "FMIPManager: performed item action with error?: %s status?: %ld", v53, 0x16u);
    v57 = v81;
    sub_24A6876E8(v81);
    MEMORY[0x24C21E1D0](v57, -1, -1);
    MEMORY[0x24C21E1D0](v53, -1, -1);
  }

  if (!*(v46 + 16))
  {
    v58 = swift_allocObject();
    *(v58 + 16) = v85;
    sub_24A69F0CC(v83 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v58 + v45, type metadata accessor for FMIPItem);
    sub_24A7404C0(v58);
  }

  LOBYTE(aBlock) = 4;
  v87(&aBlock, v46, v47);
}

uint64_t sub_24A72C604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void *), uint64_t a6)
{
  *&v70 = a2;
  v11 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v66 - v13;
  v15 = sub_24A82CAA4();
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v72 = a5;
  v73 = v20;
  v20[4] = a5;
  v20[5] = a6;
  v21 = qword_281515DC8;
  v69 = a3;

  v68 = a4;

  v71 = a6;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_24A82CDC4();
  sub_24A6797D0(v22, qword_281518F88);

  v23 = sub_24A82CD94();
  v24 = sub_24A82D504();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v66 = v15;
    v67 = v16;
    v27 = v19;
    v28 = v26;
    aBlock[0] = v26;
    *v25 = 136315138;
    v29 = FMIPItemAction.debugDescription.getter();
    v31 = sub_24A68761C(v29, v30, aBlock);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_24A675000, v23, v24, "FMIPItemActionsController: performing notify action %s, separationEnabled? ", v25, 0xCu);
    sub_24A6876E8(v28);
    v32 = v28;
    v19 = v27;
    v15 = v66;
    v16 = v67;
    MEMORY[0x24C21E1D0](v32, -1, -1);
    MEMORY[0x24C21E1D0](v25, -1, -1);
  }

  v33 = a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item;
  v34 = *(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 352);
  v35 = *(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 360);
  sub_24A82CA44();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_24A67F378(v14, &qword_27EF5D020, &qword_24A830E40);
    v36 = sub_24A82CD94();
    v37 = sub_24A82D504();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_24A675000, v36, v37, "FMIPItemActionsController: cannot notify an item with an invalid identifier", v38, 2u);
      MEMORY[0x24C21E1D0](v38, -1, -1);
    }

    sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
    v39 = *(type metadata accessor for FMIPItem() - 8);
    v40 = *(v39 + 72);
    v41 = *(v39 + 80);
    v42 = (v41 + 32) & ~v41;
    v43 = swift_allocObject();
    v70 = xmmword_24A8327A0;
    *(v43 + 16) = xmmword_24A8327A0;
    sub_24A69F0CC(v33, v43 + v42, type metadata accessor for FMIPItem);
    sub_24A72A0CC();
    v44 = swift_allocError();
    *v45 = 0;
    v46 = v44;
    v47 = sub_24A82CD94();
    v48 = sub_24A82D504();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v67 = v41;
      v50 = v49;
      v66 = swift_slowAlloc();
      aBlock[0] = v66;
      *v50 = 136315394;
      aBlock[6] = v44;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v51 = sub_24A82D624();
      v53 = sub_24A68761C(v51, v52, aBlock);

      *(v50 + 4) = v53;
      *(v50 + 12) = 2048;
      *(v50 + 14) = 500;
      _os_log_impl(&dword_24A675000, v47, v48, "FMIPManager: performed item action with error?: %s status?: %ld", v50, 0x16u);
      v54 = v66;
      sub_24A6876E8(v66);
      MEMORY[0x24C21E1D0](v54, -1, -1);
      MEMORY[0x24C21E1D0](v50, -1, -1);
    }

    if (!*(v43 + 16))
    {
      v55 = swift_allocObject();
      *(v55 + 16) = v70;
      sub_24A69F0CC(v68 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v55 + v42, type metadata accessor for FMIPItem);
      sub_24A7404C0(v55);
    }

    LOBYTE(aBlock[0]) = 4;
    v72(aBlock, v43, v44);
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    v57 = *(a1 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_state);
    v58 = objc_opt_self();
    v59 = sub_24A82CA64();
    v60 = &selRef_beginLeashingWithBeaconUUID_;
    if (!v57)
    {
      v60 = &selRef_endLeashingWithBeaconUUID_;
    }

    v61 = [v58 *v60];

    v62 = *(v70 + 24);
    v63 = swift_allocObject();
    v64 = v73;
    v63[2] = sub_24A72FA24;
    v63[3] = v64;
    v63[4] = a1;
    aBlock[4] = sub_24A72F788;
    aBlock[5] = v63;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A7386AC;
    aBlock[3] = &unk_285DC5118;
    v65 = _Block_copy(aBlock);

    [v62 executeCommand:v61 completion:v65];
    _Block_release(v65);

    (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_24A72CD8C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void *), uint64_t a6)
{
  v12 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v82 = &v74 - v14;
  v15 = sub_24A82CAA4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v81 = a5;
  v20[4] = a5;
  v20[5] = a6;
  v21 = qword_281515DC8;
  v78 = a3;

  v77 = a4;

  v80 = a6;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_24A82CDC4();
  v23 = sub_24A6797D0(v22, qword_281518F88);

  v79 = v23;
  v24 = sub_24A82CD94();
  v25 = sub_24A82D504();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *&v76 = v15;
    v27 = v26;
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315394;
    v29 = FMIPItemAction.debugDescription.getter();
    v31 = sub_24A68761C(v29, v30, aBlock);
    v75 = a2;
    v32 = v20;
    v33 = v16;
    v34 = v19;
    v35 = v31;

    *(v27 + 4) = v35;
    *(v27 + 12) = 2080;
    if (*(a1 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_state))
    {
      v36 = 0x64656C62616E65;
    }

    else
    {
      v36 = 0x64656C6261736964;
    }

    if (*(a1 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_state))
    {
      v37 = 0xE700000000000000;
    }

    else
    {
      v37 = 0xE800000000000000;
    }

    v38 = sub_24A68761C(v36, v37, aBlock);

    *(v27 + 14) = v38;
    v19 = v34;
    v16 = v33;
    v20 = v32;
    a2 = v75;
    _os_log_impl(&dword_24A675000, v24, v25, "FMIPItemActionsController: performing notify when found action %s, state: %s ", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v28, -1, -1);
    v39 = v27;
    v15 = v76;
    MEMORY[0x24C21E1D0](v39, -1, -1);
  }

  v40 = v82;
  v41 = a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item;
  v42 = *(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 352);
  v43 = *(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 360);
  sub_24A82CA44();
  if ((*(v16 + 48))(v40, 1, v15) == 1)
  {
    sub_24A67F378(v40, &qword_27EF5D020, &qword_24A830E40);
    v44 = sub_24A82CD94();
    v45 = sub_24A82D504();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_24A675000, v44, v45, "FMIPItemActionsController: performing notify an item with an invalid identifier", v46, 2u);
      MEMORY[0x24C21E1D0](v46, -1, -1);
    }

    v47 = sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
    v48 = *(type metadata accessor for FMIPItem() - 8);
    v49 = *(v48 + 72);
    v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v82 = *(v48 + 80);
    v51 = swift_allocObject();
    v76 = xmmword_24A8327A0;
    *(v51 + 16) = xmmword_24A8327A0;
    sub_24A69F0CC(v41, v51 + v50, type metadata accessor for FMIPItem);
    sub_24A72A0CC();
    v52 = swift_allocError();
    *v53 = 0;
    v54 = v52;
    v55 = sub_24A82CD94();
    v56 = sub_24A82D504();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v79 = v47;
      v75 = v58;
      aBlock[0] = v58;
      *v57 = 136315394;
      aBlock[6] = v52;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v59 = sub_24A82D624();
      v61 = v50;
      v62 = sub_24A68761C(v59, v60, aBlock);

      *(v57 + 4) = v62;
      v50 = v61;
      *(v57 + 12) = 2048;
      *(v57 + 14) = 500;
      _os_log_impl(&dword_24A675000, v55, v56, "FMIPManager: performed item action with error?: %s status?: %ld", v57, 0x16u);
      v63 = v75;
      sub_24A6876E8(v75);
      MEMORY[0x24C21E1D0](v63, -1, -1);
      MEMORY[0x24C21E1D0](v57, -1, -1);
    }

    if (!*(v51 + 16))
    {
      v64 = swift_allocObject();
      *(v64 + 16) = v76;
      sub_24A69F0CC(v77 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v64 + v50, type metadata accessor for FMIPItem);
      sub_24A7404C0(v64);
    }

    LOBYTE(aBlock[0]) = 4;
    v81(aBlock, v51, v52);
  }

  else
  {
    (*(v16 + 32))(v19, v40, v15);
    v66 = *(a1 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_state);
    v67 = objc_opt_self();
    v68 = sub_24A82CA64();
    v69 = &selRef_enableNotifyWhenFound_;
    if (!v66)
    {
      v69 = &selRef_disableNotifyWhenFound_;
    }

    v70 = [v67 *v69];

    v71 = a2[3];
    v72 = swift_allocObject();
    v72[2] = sub_24A72FA24;
    v72[3] = v20;
    v72[4] = a1;
    aBlock[4] = sub_24A72F7F8;
    aBlock[5] = v72;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A7386AC;
    aBlock[3] = &unk_285DC5190;
    v73 = _Block_copy(aBlock);

    [v71 executeCommand:v70 completion:v73];
    _Block_release(v73);

    (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_24A72D594(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void *), uint64_t a6)
{
  v12 = qword_281515DC8;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = sub_24A82CDC4();
  sub_24A6797D0(v13, qword_281518F88);
  v14 = sub_24A82CD94();
  v15 = sub_24A82D504();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24A675000, v14, v15, "FMIPItemActionsController: Notification action received", v16, 2u);
    MEMORY[0x24C21E1D0](v16, -1, -1);
  }

  v17 = *(a1 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_type);

  if (v17 == 1)
  {
    sub_24A72C604(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    sub_24A72CD8C(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_24A72D738(unint64_t a1, uint64_t a2, void (*a3)(uint64_t *, void, void, void, uint64_t), uint64_t a4)
{
  v61 = a2;
  v7 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = &v60 - v12;
  v69 = sub_24A82CAA4();
  v13 = *(v69 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v69);
  v71 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v62 = &v60 - v17;
  v18 = swift_allocObject();
  v63 = a4;
  v64 = a3;
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v67 = v18;
  v19 = qword_281515DC8;

  if (v19 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v20 = sub_24A82CDC4();
    v60 = sub_24A6797D0(v20, qword_281518F88);
    v21 = sub_24A82CD94();
    v22 = sub_24A82D504();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_24A675000, v21, v22, "FMIPItemActionsController: performing assign safe location action", v23, 2u);
      MEMORY[0x24C21E1D0](v23, -1, -1);
    }

    v65 = a1;
    v24 = *(a1 + 368);
    v25 = *(v24 + 16);
    v26 = v69;
    v68 = v13;
    v70 = v25;
    if (!v25)
    {
      break;
    }

    v27 = 0;
    v28 = (v13 + 6);
    v29 = (v13 + 4);
    v13 = (v24 + 40);
    v30 = MEMORY[0x277D84F90];
    while (v27 < *(v24 + 16))
    {
      v31 = *(v13 - 1);
      a1 = *v13;

      sub_24A82CA44();

      if ((*v28)(v11, 1, v26) == 1)
      {
        sub_24A67F378(v11, &qword_27EF5D020, &qword_24A830E40);
      }

      else
      {
        v32 = *v29;
        (*v29)(v71, v11, v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_24A78029C(0, v30[2] + 1, 1, v30);
        }

        v34 = v30[2];
        v33 = v30[3];
        a1 = v34 + 1;
        if (v34 >= v33 >> 1)
        {
          v30 = sub_24A78029C(v33 > 1, v34 + 1, 1, v30);
        }

        v30[2] = a1;
        v35 = v30 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + v68[9] * v34;
        v26 = v69;
        v32(v35, v71, v69);
      }

      ++v27;
      v13 += 2;
      if (v70 == v27)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

LABEL_15:
  v36 = v66;
  v37 = *(v65 + 16);
  v38 = *(v65 + 24);
  sub_24A82CA44();
  v39 = v68;
  if ((v68[6])(v36, 1, v26) == 1)
  {

    sub_24A67F378(v36, &qword_27EF5D020, &qword_24A830E40);
    v40 = sub_24A82CD94();
    v41 = sub_24A82D504();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_24A675000, v40, v41, "FMIPItemActionsController: Assign safe location failed. No SafeLocationUUID", v42, 2u);
      MEMORY[0x24C21E1D0](v42, -1, -1);
    }

    v43 = sub_24A82CD94();
    v44 = sub_24A82D504();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      aBlock[0] = v46;
      *v45 = 136315394;
      aBlock[6] = 0;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v47 = sub_24A82D624();
      v49 = sub_24A68761C(v47, v48, aBlock);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2048;
      *(v45 + 14) = 500;
      _os_log_impl(&dword_24A675000, v43, v44, "FMIPManager: performed safe location action with error?: %s status?: %ld", v45, 0x16u);
      sub_24A6876E8(v46);
      MEMORY[0x24C21E1D0](v46, -1, -1);
      MEMORY[0x24C21E1D0](v45, -1, -1);
    }

    LOBYTE(aBlock[0]) = 4;
    v64(aBlock, 0, 0, 0, 2);
  }

  else
  {
    v50 = v62;
    (v39[4])(v62, v36, v26);
    v51 = *(v61 + 24);
    v52 = v26;
    v53 = sub_24A82CA64();
    v54 = sub_24A82D224();

    v55 = swift_allocObject();
    v56 = v39;
    v57 = v67;
    *(v55 + 16) = sub_24A72FA38;
    *(v55 + 24) = v57;
    aBlock[4] = sub_24A72F828;
    aBlock[5] = v55;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A7FD664;
    aBlock[3] = &unk_285DC5230;
    v58 = _Block_copy(aBlock);

    [v51 assignSafeLocation:v53 beaconUUIDs:v54 completion:v58];
    _Block_release(v58);

    (v56[1])(v50, v52);
  }
}

uint64_t sub_24A72DE28(void *a1, uint64_t a2, void (*a3)(uint64_t *, void, void, void, uint64_t), uint64_t a4)
{
  v8 = qword_281515DC8;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_281518F88);
  v10 = sub_24A82CD94();
  v11 = sub_24A82D504();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_24A675000, v10, v11, "FMIPItemActionsController: performing assign safe location action", v12, 2u);
    MEMORY[0x24C21E1D0](v12, -1, -1);
  }

  sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24A8327A0;
  v14 = a1[47];
  *(v13 + 32) = a1[46];
  *(v13 + 40) = v14;
  memcpy(v17, a1 + 2, sizeof(v17));
  type metadata accessor for FMIPAssignMultipleSafeLocationsItemAction();
  v15 = swift_allocObject();
  memcpy((v15 + 16), a1 + 2, 0x160uLL);
  *(v15 + 368) = v13;

  sub_24A6CC988(v17, __dst);
  sub_24A72D738(v15, a2, a3, a4);

  swift_setDeallocating();
  memcpy(__dst, (v15 + 16), sizeof(__dst));

  sub_24A6CC294(__dst);

  swift_deallocClassInstance();
}

uint64_t sub_24A72E02C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, void, void, void, uint64_t), uint64_t a4)
{
  v75 = a3;
  v73 = a1;
  v6 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v71 - v8;
  v86 = type metadata accessor for FMIPDevice();
  v10 = *(v86 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v86);
  v13 = (&v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for FMIPItem();
  v78 = *(v14 - 8);
  v15 = *(v78 + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v71 - v19;
  v21 = qword_281515DC8;
  v76 = a4;

  if (v21 != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v81 = v13;
    v82 = v10;
    v22 = sub_24A82CDC4();
    sub_24A6797D0(v22, qword_281518F88);
    v23 = sub_24A82CD94();
    v24 = sub_24A82D504();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_24A675000, v23, v24, "FMIPItemActionsController: performing assign safe location to all supported beacons action", v25, 2u);
      MEMORY[0x24C21E1D0](v25, -1, -1);
    }

    v74 = a2;
    v26 = *(a2 + 32);
    swift_beginAccess();
    v27 = *(v26 + 280);
    v28 = *(v27 + 16);
    v79 = v9;
    if (v28)
    {
      v87 = v27;
      v88 = v26;
      v29 = v27 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
      v30 = *(v78 + 72);

      v31 = MEMORY[0x277D84F90];
      do
      {
        sub_24A69F0CC(v29, v20, type metadata accessor for FMIPItem);
        if ((*(v20 + 304) & 0x10) != 0)
        {
          v32 = *(v20 + 352);
          v33 = *(v20 + 360);

          sub_24A69F264(v20, type metadata accessor for FMIPItem);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_24A780414(0, *(v31 + 2) + 1, 1, v31);
          }

          v35 = *(v31 + 2);
          v34 = *(v31 + 3);
          v36 = v31;
          if (v35 >= v34 >> 1)
          {
            v36 = sub_24A780414((v34 > 1), v35 + 1, 1, v31);
          }

          *(v36 + 2) = v35 + 1;
          v31 = v36;
          v37 = &v36[16 * v35];
          *(v37 + 4) = v32;
          *(v37 + 5) = v33;
        }

        else
        {
          sub_24A69F264(v20, type metadata accessor for FMIPItem);
        }

        v29 += v30;
        --v28;
      }

      while (v28);
      v72 = v31;

      v9 = v79;
      v26 = v88;
    }

    else
    {
      v72 = MEMORY[0x277D84F90];
    }

    swift_beginAccess();
    v38 = *(v26 + 80);
    v20 = *(v38 + 16);
    v13 = MEMORY[0x277D84F90];
    a2 = v81;
    v10 = v82;
    if (!v20)
    {
      break;
    }

    v87 = v38 + ((*(v82 + 80) + 32) & ~*(v82 + 80));

    v39 = 0;
    v77 = xmmword_24A8327A0;
    v83 = v20;
    v84 = v38;
    while (v39 < *(v38 + 16))
    {
      v40 = *(v10 + 72);
      v88 = v39;
      sub_24A69F0CC(v87 + v40 * v39, a2, type metadata accessor for FMIPDevice);
      if ((*(a2 + 242) & 4) != 0)
      {
        sub_24A67E964(a2 + *(v86 + 128), v9, &unk_27EF5E0B0, &qword_24A8338B0);
        v41 = type metadata accessor for FMIPItemGroup();
        if ((*(*(v41 - 8) + 48))(v9, 1, v41) != 1)
        {
          v85 = v13;
          v45 = *(v9 + 40);

          sub_24A69F264(v9, type metadata accessor for FMIPItemGroup);
          v46 = *(v45 + 16);
          if (v46)
          {
            v90[0] = MEMORY[0x277D84F90];
            sub_24A6FC900(0, v46, 0);
            v44 = v90[0];
            v47 = *(v78 + 80);
            v80 = v45;
            v48 = v45 + ((v47 + 32) & ~v47);
            v49 = *(v78 + 72);
            do
            {
              sub_24A69F0CC(v48, v18, type metadata accessor for FMIPItem);
              v51 = *(v18 + 44);
              v50 = *(v18 + 45);

              sub_24A69F264(v18, type metadata accessor for FMIPItem);
              v90[0] = v44;
              v53 = v44[2];
              v52 = v44[3];
              if (v53 >= v52 >> 1)
              {
                sub_24A6FC900((v52 > 1), v53 + 1, 1);
                v44 = v90[0];
              }

              v44[2] = v53 + 1;
              v54 = &v44[2 * v53];
              v54[4] = v51;
              v54[5] = v50;
              v48 += v49;
              --v46;
            }

            while (v46);
            a2 = v81;
            sub_24A69F264(v81, type metadata accessor for FMIPDevice);

            v9 = v79;
          }

          else
          {

            a2 = v81;
            sub_24A69F264(v81, type metadata accessor for FMIPDevice);
            v44 = MEMORY[0x277D84F90];
          }

          v10 = v82;
          v13 = v85;
          goto LABEL_33;
        }

        sub_24A67F378(v9, &unk_27EF5E0B0, &qword_24A8338B0);
        v42 = *(a2 + 24);
        if (v42)
        {
          v43 = *(a2 + 16);
          sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
          v44 = swift_allocObject();
          *(v44 + 1) = v77;
          v44[4] = v43;
          v44[5] = v42;

          sub_24A69F264(a2, type metadata accessor for FMIPDevice);
LABEL_33:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_24A780520(0, v13[2] + 1, 1, v13);
          }

          v56 = v13[2];
          v55 = v13[3];
          if (v56 >= v55 >> 1)
          {
            v13 = sub_24A780520((v55 > 1), v56 + 1, 1, v13);
          }

          v13[2] = v56 + 1;
          v13[v56 + 4] = v44;
          v20 = v83;
          v38 = v84;
          goto LABEL_19;
        }
      }

      sub_24A69F264(a2, type metadata accessor for FMIPDevice);
LABEL_19:
      v39 = v88 + 1;
      if (v88 + 1 == v20)
      {

        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

LABEL_39:
  v10 = v13[2];
  if (v10)
  {
    v9 = 0;
    v57 = v13;
    v13 += 4;
    v58 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v9 >= v57[2])
      {
        goto LABEL_60;
      }

      a2 = v13[v9];
      v18 = *(a2 + 16);
      v20 = *(v58 + 2);
      v59 = &v18[v20];
      if (__OFADD__(v20, v18))
      {
        goto LABEL_61;
      }

      v60 = v13[v9];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v59 <= *(v58 + 3) >> 1)
      {
        if (!*(a2 + 16))
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v20 <= v59)
        {
          v62 = &v18[v20];
        }

        else
        {
          v62 = v20;
        }

        v58 = sub_24A780414(isUniquelyReferenced_nonNull_native, v62, 1, v58);
        if (!*(a2 + 16))
        {
LABEL_41:

          if (v18)
          {
            goto LABEL_62;
          }

          goto LABEL_42;
        }
      }

      if ((*(v58 + 3) >> 1) - *(v58 + 2) < v18)
      {
        goto LABEL_63;
      }

      swift_arrayInitWithCopy();

      if (v18)
      {
        v63 = *(v58 + 2);
        v64 = __OFADD__(v63, v18);
        v65 = &v18[v63];
        if (v64)
        {
          goto LABEL_64;
        }

        *(v58 + 2) = v65;
      }

LABEL_42:
      if (v10 == ++v9)
      {
        goto LABEL_58;
      }
    }
  }

  v58 = MEMORY[0x277D84F90];
LABEL_58:

  v90[0] = v72;
  sub_24A77EA14(v58);
  v66 = v90[0];
  v67 = v73;
  memcpy(v89, (v73 + 16), sizeof(v89));
  type metadata accessor for FMIPAssignMultipleSafeLocationsItemAction();
  v68 = swift_allocObject();
  memcpy((v68 + 16), (v67 + 16), 0x160uLL);
  *(v68 + 368) = v66;
  v69 = v76;

  sub_24A6CC988(v89, v90);
  sub_24A72D738(v68, v74, v75, v69);

  swift_setDeallocating();
  memcpy(v90, (v68 + 16), sizeof(v90));

  sub_24A6CC294(v90);

  swift_deallocClassInstance();
}

uint64_t sub_24A72E988(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, void, void, void *, uint64_t), void *a4)
{
  v58 = a2;
  v7 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v55 - v9;
  v11 = sub_24A82CAA4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v57 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v60 = &v55 - v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v61 = v16;
  v17 = qword_281515DC8;
  v59 = a4;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = sub_24A82CDC4();
  sub_24A6797D0(v18, qword_281518F88);
  v19 = sub_24A82CD94();
  v20 = sub_24A82D504();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_24A675000, v19, v20, "FMIPItemActionsController: performing edit safe location action", v21, 2u);
    MEMORY[0x24C21E1D0](v21, -1, -1);
  }

  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  sub_24A82CA44();
  v24 = v11;
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v25 = a3;
    sub_24A67F378(v10, &qword_27EF5D020, &qword_24A830E40);
    v26 = sub_24A82CD94();
    v27 = sub_24A82D504();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_24A675000, v26, v27, "FMIPItemActionsController: cannot edit safe location for an item with an invalid safe location identifier", v28, 2u);
      MEMORY[0x24C21E1D0](v28, -1, -1);
    }

    sub_24A72A0CC();
    v29 = swift_allocError();
    *v30 = 0;
    v31 = v29;
    v32 = sub_24A82CD94();
    v33 = sub_24A82D504();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 136315394;
      aBlock[6] = v29;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v36 = sub_24A82D624();
      v38 = sub_24A68761C(v36, v37, aBlock);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2048;
      *(v34 + 14) = 500;
      _os_log_impl(&dword_24A675000, v32, v33, "FMIPManager: performed safe location action with error?: %s status?: %ld", v34, 0x16u);
      sub_24A6876E8(v35);
      MEMORY[0x24C21E1D0](v35, -1, -1);
      MEMORY[0x24C21E1D0](v34, -1, -1);
    }

    LOBYTE(aBlock[0]) = 4;
    v25(aBlock, 0, 0, v29, 2);
  }

  else
  {
    v39 = *(v12 + 32);
    v40 = v60;
    v39(v60, v10, v11);
    v56 = a1;
    v41 = v57;
    v42 = v58;
    v59 = *(v58 + 24);
    (*(v12 + 16))(v57, v40, v24);
    v43 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v44 = (v13 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v44 + 23) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    v47 = v24;
    v48 = v46;
    v49 = v41;
    v50 = v47;
    (v39)(v46 + v43, v49);
    v51 = (v48 + v44);
    v52 = v61;
    *v51 = sub_24A72FA38;
    v51[1] = v52;
    *(v48 + v45) = v56;
    *(v48 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8)) = v42;
    aBlock[4] = sub_24A72F84C;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A72032C;
    aBlock[3] = &unk_285DC52A8;
    v53 = _Block_copy(aBlock);

    [v59 safeLocationsForSeparationMonitoring_];
    _Block_release(v53);
    (*(v12 + 8))(v60, v50);
  }
}

uint64_t sub_24A72EF54(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, void, void, void *, uint64_t), void *a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  type metadata accessor for FMIPAddSafeLocationItemAction();

  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    swift_retain_n();

    sub_24A726084(v9, sub_24A72F820, v7);
LABEL_19:

    goto LABEL_20;
  }

  type metadata accessor for FMIPAddMultipleSafeLocationsItemAction();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    swift_retain_n();

    sub_24A72626C(v11, sub_24A72F820, v7);
    goto LABEL_19;
  }

  type metadata accessor for FMIPRemoveSafeLocationItemAction();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    swift_retain_n();

    sub_24A72751C(v13, sub_24A72F820, v7);
    goto LABEL_19;
  }

  type metadata accessor for FMIPRemoveMultipleSafeLocationItemsAction();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    swift_retain_n();

    sub_24A7276C0(v15, sub_24A72F820, v7);
    goto LABEL_19;
  }

  type metadata accessor for FMIPAssignSafeLocationItemAction();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    swift_retain_n();

    sub_24A72DE28(v17, a2, a3, a4);
    goto LABEL_19;
  }

  type metadata accessor for FMIPAssignMultipleSafeLocationsItemAction();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    swift_retain_n();

    sub_24A72D738(v19, a2, a3, a4);
    goto LABEL_19;
  }

  type metadata accessor for FMIPAssignSafeLocationToAllSupportedBeaconsAction();
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;
    swift_retain_n();

    sub_24A72E02C(v21, a2, a3, a4);
    goto LABEL_19;
  }

  type metadata accessor for FMIPEditSafeLocationItemAction();
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v23 = v22;
    swift_retain_n();

    sub_24A72E988(v23, a2, a3, a4);
    goto LABEL_19;
  }

  type metadata accessor for FMIPAddSafeLocationToAllSupportedBeaconsAction();
  v24 = swift_dynamicCastClass();
  if (v24)
  {
    v25 = v24;
    swift_retain_n();

    sub_24A725744(v25, sub_24A72F820, v7);
    goto LABEL_19;
  }

  v27 = qword_281515DC8;
  swift_retain_n();
  if (v27 != -1)
  {
    swift_once();
  }

  v28 = sub_24A82CDC4();
  sub_24A6797D0(v28, qword_281518F88);
  v29 = sub_24A82CD94();
  v30 = sub_24A82D504();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_24A675000, v29, v30, "FMIPItemActionsController: cannot map safe location action to request", v31, 2u);
    MEMORY[0x24C21E1D0](v31, -1, -1);
  }

  sub_24A72A0CC();
  v32 = swift_allocError();
  *v33 = 6;
  v34 = v32;
  v35 = sub_24A82CD94();
  v36 = sub_24A82D504();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v42 = v38;
    *v37 = 136315394;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v39 = sub_24A82D624();
    v41 = sub_24A68761C(v39, v40, &v42);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2048;
    *(v37 + 14) = -1;
    _os_log_impl(&dword_24A675000, v35, v36, "FMIPManager: performed safe location action with error?: %s status?: %ld", v37, 0x16u);
    sub_24A6876E8(v38);
    MEMORY[0x24C21E1D0](v38, -1, -1);
    MEMORY[0x24C21E1D0](v37, -1, -1);
  }

  LOBYTE(v42) = 0;
  a3(&v42, 0, 0, v32, 2);

LABEL_20:
}

unint64_t sub_24A72F4B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A6BBA94(&qword_27EF5D4B0, &qword_24A832860);
    v3 = sub_24A82D974();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A67E964(v4, &v13, &qword_27EF5DE80, &qword_24A836A90);
      v5 = v13;
      v6 = v14;
      result = sub_24A6A2D48(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24A6A50DC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24A72F650()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A72F6C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A72F700()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A72F7B0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_24A72F84C(uint64_t a1)
{
  v3 = *(sub_24A82CAA4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_24A7284B0(a1, v1 + v4, v8, v9, v10, v11);
}

uint64_t sub_24A72F948(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (a1)
  {
    v7 = 0;
    v5 = &v7;
  }

  else
  {
    v8 = 2;
    v5 = &v8;
  }

  return v3(v5, a1);
}

uint64_t sub_24A72FB64()
{
  v0 = sub_24A67CBF4(&unk_285DBE278);
  result = swift_arrayDestroy();
  qword_27EF5DE88 = v0;
  return result;
}

uint64_t FMIPURLUniversalLinkHostSharedItemList.getter()
{
  if (qword_27EF5CBB0 != -1)
  {
    swift_once();
  }
}

uint64_t FMIPURLInfo.originalURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24A82C8B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FMIPURLInfo.action.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FMIPURLInfo();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for FMIPURLInfo()
{
  result = qword_27EF5DE98;
  if (!qword_27EF5DE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMIPURLInfo.action.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for FMIPURLInfo();
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t FMIPURLInfo.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPURLInfo() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FMIPURLInfo.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FMIPURLInfo() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FMIPURLInfo.partIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPURLInfo() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FMIPURLInfo.partIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FMIPURLInfo() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FMIPURLInfo.returnAppName.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPURLInfo() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FMIPURLInfo.returnAppName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FMIPURLInfo() + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FMIPURLInfo.manufacturer.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPURLInfo() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FMIPURLInfo.manufacturer.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FMIPURLInfo() + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_24A730298(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_24A6BBA94(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t FMIPURLInfo.isPartnerURL.setter(char a1)
{
  result = type metadata accessor for FMIPURLInfo();
  *(v1 + *(result + 48)) = a1;
  return result;
}

FMIPCore::FMIPURLAction_optional __swiftcall FMIPURLAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82DC24();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FMIPURLAction.rawValue.getter()
{
  result = 0x65646F4D74736F6CLL;
  switch(*v0)
  {
    case 1:
      result = 0x6E756F5379616C70;
      break;
    case 2:
      result = 0x6E776F6E6B6E75;
      break;
    case 3:
      result = 0x7463656C6573;
      break;
    case 4:
      result = 0x736E6F69746361;
      break;
    case 5:
      result = 0x446C6C41776F6873;
      break;
    case 6:
      result = 0x74497463656C6573;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6574746142776F6CLL;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 0xA:
      result = 0x796669746F6ELL;
      break;
    case 0xB:
      result = 0x496C6C41776F6873;
      break;
    case 0xC:
      result = 0x65766F6D6572;
      break;
    case 0xD:
      result = 0x52556E7275746572;
      break;
    case 0xE:
      result = 0x7075746573;
      break;
    case 0xF:
      result = 0x6974617261706573;
      break;
    case 0x10:
      result = 0x61636F4C65666173;
      break;
    case 0x11:
      result = 0x6572616853646461;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A73065C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = FMIPURLAction.rawValue.getter();
  v4 = v3;
  if (v2 == FMIPURLAction.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24A82DC04();
  }

  return v7 & 1;
}

unint64_t sub_24A7306FC()
{
  result = qword_27EF5DE90;
  if (!qword_27EF5DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DE90);
  }

  return result;
}

uint64_t sub_24A730750()
{
  v1 = *v0;
  sub_24A82DCC4();
  FMIPURLAction.rawValue.getter();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7307B8()
{
  v2 = *v0;
  FMIPURLAction.rawValue.getter();
  sub_24A82D094();
}

uint64_t sub_24A73081C()
{
  v1 = *v0;
  sub_24A82DCC4();
  FMIPURLAction.rawValue.getter();
  sub_24A82D094();

  return sub_24A82DD24();
}

unint64_t sub_24A73088C@<X0>(unint64_t *a1@<X8>)
{
  result = FMIPURLAction.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_24A7308DC()
{
  sub_24A82C8B4();
  if (v0 <= 0x3F)
  {
    sub_24A730A14(319, &qword_27EF5DEA8);
    if (v1 <= 0x3F)
    {
      sub_24A730A14(319, &qword_27EF5D8F0);
      if (v2 <= 0x3F)
      {
        sub_24A730A60(319, &qword_281514678, MEMORY[0x277CC9260]);
        if (v3 <= 0x3F)
        {
          sub_24A730A60(319, &qword_27EF5D9C8, MEMORY[0x277CC95F0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24A730A14(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24A82D634();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_24A730A60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24A82D634();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24A730AC4(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3, void *a4)
{
  v139 = a4;
  v146 = a2;
  v147 = a3;
  v5 = sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v141 = v136 - v7;
  v8 = sub_24A6BBA94(&qword_27EF5DEB8, &qword_24A836C38);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v143 = v136 - v10;
  v149 = sub_24A82C6C4();
  v145 = *(v149 - 8);
  v11 = *(v145 + 64);
  MEMORY[0x28223BE20](v149);
  v151 = v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A82C8B4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FMIPURLInfo();
  v148 = swift_allocBox();
  v20 = v19;
  v21 = *(v14 + 16);
  v21(v19, a1, v13);
  (*(v14 + 56))(v20 + v18[8], 1, 1, v13);
  v22 = v18[11];
  v23 = sub_24A82CAA4();
  (*(*(v23 - 8) + 56))(v20 + v22, 1, 1, v23);
  v140 = v18[5];
  *(v20 + v140) = 18;
  v24 = (v20 + v18[6]);
  *v24 = 0;
  v24[1] = 0;
  v138 = v24;
  v25 = (v20 + v18[7]);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v20 + v18[9]);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v20 + v18[10]);
  *v27 = 0;
  v27[1] = 0;
  v28 = v18[12];
  v142 = v20;
  *(v20 + v28) = 0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v29 = sub_24A82CDC4();
  v30 = sub_24A6797D0(v29, qword_281518F88);
  v144 = a1;
  v21(v17, a1, v13);
  v31 = sub_24A82CD94();
  v32 = sub_24A82D504();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v137 = v18;
    v34 = v33;
    v35 = swift_slowAlloc();
    v150[0] = v35;
    *v34 = 136315138;
    v36 = sub_24A82C834();
    v136[1] = v30;
    v38 = v37;
    (*(v14 + 8))(v17, v13);
    v39 = sub_24A68761C(v36, v38, v150);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_24A675000, v31, v32, "FMIPURLHandler: handle url %s", v34, 0xCu);
    sub_24A6876E8(v35);
    MEMORY[0x24C21E1D0](v35, -1, -1);
    v40 = v34;
    v18 = v137;
    MEMORY[0x24C21E1D0](v40, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v17, v13);
  }

  v41 = v143;
  sub_24A82C674();
  v42 = v145;
  v43 = v149;
  v44 = (*(v145 + 48))(v41, 1, v149);
  v45 = v151;
  if (v44 == 1)
  {
    sub_24A67F378(v41, &qword_27EF5DEB8, &qword_24A836C38);
    v46 = sub_24A82CD94();
    v47 = sub_24A82D4E4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_24A675000, v46, v47, "FMIPURLHandler: invalid URL", v48, 2u);
      MEMORY[0x24C21E1D0](v48, -1, -1);
    }

    v49 = v141;
    sub_24A732300(v142, v141);
    (*(*(v18 - 1) + 56))(v49, 0, 1, v18);
    sub_24A732364();
    v50 = swift_allocError();
    *v51 = 2;
    v146(v49, v50);

    sub_24A67F378(v49, &qword_27EF5DEB0, &qword_24A836C30);
  }

  (*(v42 + 32))(v151, v41, v43);
  v52 = sub_24A82C6B4();
  if (!v53)
  {
    goto LABEL_78;
  }

  if (v52 == 0x3170696D66 && v53 == 0xE500000000000000)
  {
    goto LABEL_25;
  }

  v54 = sub_24A82DC04();

  if ((v54 & 1) == 0)
  {
LABEL_78:
    v55 = sub_24A82C6B4();
    if (!v56)
    {
      goto LABEL_18;
    }

    if (v55 == 0x796D646E6966 && v56 == 0xE600000000000000)
    {
      goto LABEL_25;
    }

    v57 = sub_24A82DC04();

    if ((v57 & 1) == 0)
    {
LABEL_18:
      v58 = sub_24A82C6B4();
      if (!v59)
      {
        goto LABEL_22;
      }

      if (v58 == 0x7370747468 && v59 == 0xE500000000000000)
      {
        goto LABEL_25;
      }

      v60 = sub_24A82DC04();

      if ((v60 & 1) == 0)
      {
LABEL_22:
        v61 = sub_24A82C6B4();
        if (v62)
        {
          if (v61 == 1886680168 && v62 == 0xE400000000000000)
          {
LABEL_25:

            goto LABEL_26;
          }

          v93 = sub_24A82DC04();

          if (v93)
          {
            goto LABEL_26;
          }
        }

        v94 = sub_24A82CD94();
        v95 = sub_24A82D4E4();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          *v96 = 0;
          _os_log_impl(&dword_24A675000, v94, v95, "FMIPURLHandler: scheme not supported", v96, 2u);
          MEMORY[0x24C21E1D0](v96, -1, -1);
        }

        v97 = v141;
        sub_24A732300(v142, v141);
        (*(*(v18 - 1) + 56))(v97, 0, 1, v18);
        sub_24A732364();
        v98 = swift_allocError();
        *v99 = 3;
        v146(v97, v98);

        sub_24A67F378(v97, &qword_27EF5DEB0, &qword_24A836C30);
        goto LABEL_59;
      }
    }
  }

LABEL_26:
  v63 = sub_24A82C694();
  if (!v64)
  {
    goto LABEL_30;
  }

  if (v63 == 0x73656369766564 && v64 == 0xE700000000000000)
  {
    goto LABEL_33;
  }

  v65 = sub_24A82DC04();

  if ((v65 & 1) == 0)
  {
LABEL_30:
    v66 = sub_24A82C694();
    if (v67)
    {
      if (v66 == 1769105779 && v67 == 0xE400000000000000)
      {
LABEL_33:

        goto LABEL_34;
      }

      v78 = sub_24A82DC04();

      if (v78)
      {
        goto LABEL_34;
      }
    }

    v79 = sub_24A82C694();
    if (v80)
    {
      if (v79 == 0x736D657469 && v80 == 0xE500000000000000)
      {

LABEL_43:
        v82 = sub_24A82CD94();
        v83 = sub_24A82D504();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&dword_24A675000, v82, v83, "FMIPURLHandler: processURL generic items action", v84, 2u);
          MEMORY[0x24C21E1D0](v84, -1, -1);
        }

        v85 = v142;
        *(v142 + v140) = 11;
        v86 = sub_24A82C694();
        v88 = v87;
        goto LABEL_46;
      }

      v81 = sub_24A82DC04();

      if (v81)
      {
        goto LABEL_43;
      }
    }

    v91 = sub_24A82C694();
    if (v92)
    {
      if (v91 == 0xD000000000000010 && v92 == 0x800000024A8469B0)
      {

LABEL_56:
        v101 = sub_24A82CD94();
        v102 = sub_24A82D504();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          *v103 = 0;
          _os_log_impl(&dword_24A675000, v101, v102, "FMIPURLHandler: process universal link action", v103, 2u);
          MEMORY[0x24C21E1D0](v103, -1, -1);
        }

        sub_24A735B14(v45, v146, v147);
LABEL_59:
        (*(v42 + 8))(v45, v43);
      }

      v100 = sub_24A82DC04();

      if (v100)
      {
        goto LABEL_56;
      }
    }

    v105 = sub_24A82C514();
    v150[3] = v105;
    v150[4] = sub_24A6789D4(&unk_281514680, MEMORY[0x277D08A28]);
    v106 = sub_24A697E3C(v150);
    (*(*(v105 - 8) + 104))(v106, *MEMORY[0x277D089F0], v105);
    LOBYTE(v105) = sub_24A82C4D4();
    sub_24A6876E8(v150);
    if (v105)
    {
      v107 = sub_24A82C694();
      if (v108)
      {
        if (qword_27EF5CBB0 != -1)
        {
          v134 = v107;
          v135 = v108;
          swift_once();
          v107 = v134;
          v108 = v135;
        }

        v109 = sub_24A67A190(v107, v108, qword_27EF5DE88);

        if (v109)
        {
          v110 = sub_24A82CD94();
          v111 = sub_24A82D504();
          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            *v112 = 0;
            _os_log_impl(&dword_24A675000, v110, v111, "FMIPURLHandler: process universal link action", v112, 2u);
            MEMORY[0x24C21E1D0](v112, -1, -1);
          }

          sub_24A7323B8(v45, v146, v147);
          goto LABEL_59;
        }
      }
    }

    v113 = sub_24A82C694();
    if (v114)
    {
      if (v113 == 0x72756769666E6F63 && v114 == 0xE900000000000065)
      {

LABEL_74:
        *(v142 + v140) = 6;
        v116 = sub_24A82C6A4();
        v118 = sub_24A7F8AA4(1uLL, v116, v117);
        v120 = v119;
        v122 = v121;
        v124 = v123;

        v125 = MEMORY[0x24C21C960](v118, v120, v122, v124);
        v127 = v126;

        v128 = v138;
        v129 = v138[1];
        *v138 = v125;
        v128[1] = v127;

        v86 = sub_24A82C694();
        v88 = v130;
        v85 = v142;
LABEL_46:
        v89 = v141;
        sub_24A732300(v85, v141);
        v90 = *(*(v18 - 1) + 56);
        v90(v89, 0, 1, v18);
        _s8FMIPCore13FMIPAnalyticsV19sendLaunchAnalytics7context4infoySSSg_AA11FMIPURLInfoVSgtFZ_0(v86, v88, v89);

        sub_24A67F378(v89, &qword_27EF5DEB0, &qword_24A836C30);
        sub_24A732300(v85, v89);
        v90(v89, 0, 1, v18);
        v146(v89, 0);
        sub_24A67F378(v89, &qword_27EF5DEB0, &qword_24A836C30);
        (*(v42 + 8))(v151, v43);
      }

      v115 = sub_24A82DC04();

      if (v115)
      {
        goto LABEL_74;
      }
    }

    v131 = v147;

    v132 = v148;

    v133 = v139;

    sub_24A7353B8(v45, v133, v146, v131, v132, v133);

    (*(v42 + 8))(v45, v43);
  }

LABEL_34:
  v68 = v18;
  v69 = sub_24A82CD94();
  v70 = sub_24A82D504();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_24A675000, v69, v70, "FMIPURLHandler: processURL generic devices action", v71, 2u);
    MEMORY[0x24C21E1D0](v71, -1, -1);
  }

  v72 = v142;
  *(v142 + v140) = 5;
  v73 = sub_24A82C694();
  v75 = v74;
  v76 = v141;
  sub_24A732300(v72, v141);
  v77 = *(*(v68 - 1) + 56);
  v77(v76, 0, 1, v68);
  _s8FMIPCore13FMIPAnalyticsV19sendLaunchAnalytics7context4infoySSSg_AA11FMIPURLInfoVSgtFZ_0(v73, v75, v76);

  sub_24A67F378(v76, &qword_27EF5DEB0, &qword_24A836C30);
  sub_24A732300(v72, v76);
  v77(v76, 0, 1, v68);
  v146(v76, 0);
  sub_24A67F378(v76, &qword_27EF5DEB0, &qword_24A836C30);
  (*(v42 + 8))(v151, v149);
}

uint64_t sub_24A731AD8(void *a1, void *a2, void (*a3)(char *, void *), uint64_t a4)
{
  v70 = a4;
  v74 = a3;
  v6 = sub_24A6BBA94(&qword_27EF5DEB8, &qword_24A836C38);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v65 - v11;
  v13 = sub_24A82C6C4();
  v75 = *(v13 - 8);
  v14 = *(v75 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v71 = &v65 - v19;
  v68 = sub_24A82C8B4();
  v73 = *(v68 - 8);
  v20 = *(v73 + 64);
  MEMORY[0x28223BE20](v68);
  v72 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v22 = sub_24A82CDC4();
  v23 = sub_24A6797D0(v22, qword_281518F88);

  v69 = v23;
  v24 = sub_24A82CD94();
  v25 = sub_24A82D504();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v67 = v10;
    v27 = v26;
    v28 = swift_slowAlloc();
    v66 = a2;
    v76 = a1;
    v29 = v28;
    *v27 = 136315138;
    v77 = v76;
    v78 = v28;
    sub_24A6BBA94(&qword_27EF5DED8, &qword_24A836C48);
    v30 = sub_24A82D624();
    v32 = sub_24A68761C(v30, v31, &v78);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_24A675000, v24, v25, "FMIPURLHandler: getURLInfo response received: %s", v27, 0xCu);
    sub_24A6876E8(v29);
    v33 = v29;
    a1 = v76;
    a2 = v66;
    MEMORY[0x24C21E1D0](v33, -1, -1);
    v34 = v27;
    v10 = v67;
    MEMORY[0x24C21E1D0](v34, -1, -1);
  }

  v35 = v72;
  v36 = v73;
  v37 = v71;
  if (a2 || !a1)
  {
    v44 = a2;
    v45 = sub_24A82CD94();
    v46 = sub_24A82D504();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = a2;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v77 = v47;
      v78 = v49;
      *v48 = 136315138;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v50 = sub_24A82D624();
      v52 = v13;
      v53 = sub_24A68761C(v50, v51, &v78);

      *(v48 + 4) = v53;
      v13 = v52;
      _os_log_impl(&dword_24A675000, v45, v46, "FMIPURLHandler: error received for getURLInfo request: %s", v48, 0xCu);
      sub_24A6876E8(v49);
      MEMORY[0x24C21E1D0](v49, -1, -1);
      v54 = v48;
      a2 = v47;
      MEMORY[0x24C21E1D0](v54, -1, -1);
    }

    (*(v75 + 56))(v10, 1, 1, v13);
    v74(v10, a2);
    return sub_24A67F378(v10, &qword_27EF5DEB8, &qword_24A836C38);
  }

  sub_24A67E964(a1 + OBJC_IVAR____TtC8FMIPCore22FMIPGetURLInfoResponse_url, v71, &unk_27EF5CCB8, &qword_24A82FDB0);
  v38 = v68;
  v39 = (*(v36 + 48))(v37, 1, v68);
  v40 = v75;
  if (v39 == 1)
  {
    v76 = a1;

    v41 = &unk_27EF5CCB8;
    v42 = &qword_24A82FDB0;
    v43 = v37;
LABEL_14:
    sub_24A67F378(v43, v41, v42);
    v55 = sub_24A82CD94();
    v56 = sub_24A82D504();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v77 = 0;
      v78 = v58;
      *v57 = 136315138;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v59 = sub_24A82D624();
      v61 = sub_24A68761C(v59, v60, &v78);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_24A675000, v55, v56, "FMIPURLHandler: error received for getURLInfo request: %s", v57, 0xCu);
      sub_24A6876E8(v58);
      MEMORY[0x24C21E1D0](v58, -1, -1);
      v40 = v75;
      MEMORY[0x24C21E1D0](v57, -1, -1);
    }

    (*(v40 + 56))(v10, 1, 1, v13);
    sub_24A732364();
    v62 = swift_allocError();
    *v63 = 2;
    v74(v10, v62);

    return sub_24A67F378(v10, &qword_27EF5DEB8, &qword_24A836C38);
  }

  (*(v36 + 32))(v35, v37, v38);

  sub_24A82C674();
  if ((*(v40 + 48))(v12, 1, v13) == 1)
  {
    v76 = a1;
    (*(v36 + 8))(v35, v38);
    v41 = &qword_27EF5DEB8;
    v42 = &qword_24A836C38;
    v43 = v12;
    goto LABEL_14;
  }

  (*(v40 + 32))(v16, v12, v13);
  (*(v40 + 16))(v10, v16, v13);
  (*(v40 + 56))(v10, 0, 1, v13);
  v74(v10, 0);

  sub_24A67F378(v10, &qword_27EF5DEB8, &qword_24A836C38);
  (*(v40 + 8))(v16, v13);
  return (*(v36 + 8))(v35, v38);
}

uint64_t sub_24A7322C8()
{
  sub_24A6876E8((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_24A732300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPURLInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A732364()
{
  result = qword_27EF5DEC0;
  if (!qword_27EF5DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DEC0);
  }

  return result;
}

uint64_t sub_24A7323B8(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v6 = sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v145 - v8);
  v10 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v150 = &v145 - v12;
  v13 = sub_24A82CAA4();
  v155 = *(v13 - 8);
  v156 = v13;
  v14 = *(v155 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v154 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v151 = &v145 - v17;
  v18 = sub_24A82C644();
  v19 = *(v18 - 1);
  v170 = v18;
  v171 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v172 = &v145 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24A6BBA94(&qword_27EF5DEC8, &qword_24A836C40);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v153 = &v145 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v152 = &v145 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v157 = &v145 - v29;
  MEMORY[0x28223BE20](v28);
  v163 = &v145 - v30;
  v169 = type metadata accessor for FMIPURLInfo();
  v159 = *(v169 - 8);
  v31 = *(v159 + 64);
  MEMORY[0x28223BE20](v169);
  v164 = &v145 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v145 - v35;
  v37 = sub_24A82C8B4();
  v166 = *(v37 - 8);
  v167 = v37;
  v38 = *(v166 + 64);
  MEMORY[0x28223BE20](v37);
  v158 = &v145 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_24A82C6C4();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v44 = &v145 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v45 = sub_24A82CDC4();
    v46 = sub_24A6797D0(v45, qword_281518F88);
    v47 = *(v41 + 16);
    v165 = a1;
    v47(v44, a1, v40);
    v168 = v46;
    v48 = sub_24A82CD94();
    v49 = sub_24A82D504();
    v50 = os_log_type_enabled(v48, v49);
    v161 = a2;
    v162 = v9;
    v160 = a3;
    if (v50)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v173[0] = v52;
      *v51 = 136315138;
      sub_24A6789D4(&qword_27EF5DED0, MEMORY[0x277CC8958]);
      v53 = sub_24A82DB84();
      v55 = v54;
      (*(v41 + 8))(v44, v40);
      v56 = sub_24A68761C(v53, v55, v173);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_24A675000, v48, v49, "FMIPURLHandler: processUniversalURL: %s", v51, 0xCu);
      sub_24A6876E8(v52);
      MEMORY[0x24C21E1D0](v52, -1, -1);
      a2 = v161;
      v9 = v162;
      MEMORY[0x24C21E1D0](v51, -1, -1);
    }

    else
    {

      (*(v41 + 8))(v44, v40);
    }

    sub_24A82C684();
    v58 = v166;
    v57 = v167;
    if ((*(v166 + 48))(v36, 1, v167) == 1)
    {
      break;
    }

    v65 = v158;
    (*(v58 + 32))(v158, v36, v57);
    v66 = v164;
    (*(v58 + 16))(v164, v65, v57);
    v67 = v169;
    (*(v58 + 56))(v66 + *(v169 + 32), 1, 1, v57);
    v68 = *(v155 + 56);
    v145 = v67[11];
    v147 = v155 + 56;
    v146 = v68;
    v68(v66 + v145, 1, 1, v156);
    v148 = v67[5];
    *(v66 + v148) = 18;
    v69 = (v66 + v67[6]);
    *v69 = 0;
    v69[1] = 0;
    v70 = (v66 + v67[7]);
    *v70 = 0;
    v70[1] = 0;
    v71 = (v66 + v67[9]);
    *v71 = 0;
    v71[1] = 0;
    v72 = (v66 + v67[10]);
    *v72 = 0;
    v72[1] = 0;
    v149 = v67[12];
    *(v66 + v149) = 0;
    if (sub_24A82C6A4() == 0x6D6574692FLL && v73 == 0xE500000000000000)
    {
      a2 = v163;
      v9 = v170;
      a3 = v157;
LABEL_12:

      goto LABEL_14;
    }

    v74 = sub_24A82DC04();

    a2 = v163;
    v9 = v170;
    a3 = v157;
    if ((v74 & 1) == 0)
    {
      if (sub_24A82C6A4() == 0x72656E747261702FLL && v80 == 0xE800000000000000)
      {
        goto LABEL_12;
      }

      v81 = sub_24A82DC04();

      if ((v81 & 1) == 0)
      {
        v82 = sub_24A82CD94();
        v83 = sub_24A82D4E4();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&dword_24A675000, v82, v83, "FMIPURLHandler: processUniversalURL: invalid action", v84, 2u);
          MEMORY[0x24C21E1D0](v84, -1, -1);
        }

        v85 = v164;
        v86 = v162;
        sub_24A732300(v164, v162);
        (*(v159 + 56))(v86, 0, 1, v169);
        sub_24A732364();
        v87 = swift_allocError();
        *v88 = 0;
        v161(v86, v87);

        v89 = &qword_27EF5DEB0;
        v90 = &qword_24A836C30;
        v91 = v86;
LABEL_50:
        sub_24A67F378(v91, v89, v90);
        (*(v58 + 8))(v158, v57);
        v122 = v85;
        return sub_24A7378B8(v122);
      }
    }

LABEL_14:
    v75 = sub_24A82C654();
    if (!v75)
    {
      (*(v171 + 56))(a2, 1, 1, v9);
      goto LABEL_33;
    }

    v40 = v75;
    v41 = *(v75 + 16);
    a1 = v171;
    if (!v41)
    {
LABEL_22:

      a2 = v163;
      (*(a1 + 56))(v163, 1, 1, v9);
LABEL_32:
      v58 = v166;
      v57 = v167;
LABEL_33:
      sub_24A67E964(a2, a3, &qword_27EF5DEC8, &qword_24A836C40);
      v93 = sub_24A82CD94();
      v94 = sub_24A82D504();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v173[0] = v96;
        *v95 = 136315138;
        v97 = v152;
        sub_24A67E964(a3, v152, &qword_27EF5DEC8, &qword_24A836C40);
        v98 = v171;
        if ((*(v171 + 48))(v97, 1, v9) == 1)
        {
          sub_24A67F378(v97, &qword_27EF5DEC8, &qword_24A836C40);
          goto LABEL_39;
        }

        v172 = sub_24A82C634();
        v100 = v99;
        (*(v98 + 8))(v97, v9);
        if (v100)
        {
          sub_24A67F378(v157, &qword_27EF5DEC8, &qword_24A836C40);
          v101 = v172;
        }

        else
        {
LABEL_39:
          sub_24A67F378(v157, &qword_27EF5DEC8, &qword_24A836C40);

          v100 = 0xE300000000000000;
          v101 = 7104878;
        }

        v102 = sub_24A68761C(v101, v100, v173);

        *(v95 + 4) = v102;
        _os_log_impl(&dword_24A675000, v93, v94, "FMIPURLHandler: processUniversalURLForSharedItem: parameter sharing id: %s", v95, 0xCu);
        sub_24A6876E8(v96);
        MEMORY[0x24C21E1D0](v96, -1, -1);
        MEMORY[0x24C21E1D0](v95, -1, -1);

        a2 = v163;
        v9 = v170;
      }

      else
      {

        sub_24A67F378(a3, &qword_27EF5DEC8, &qword_24A836C40);
      }

      v103 = v171;
      v104 = v153;
      sub_24A67E964(a2, v153, &qword_27EF5DEC8, &qword_24A836C40);
      v105 = (*(v103 + 48))(v104, 1, v9);
      v106 = v154;
      if (v105 == 1)
      {
        v107 = &qword_27EF5DEC8;
        v108 = &qword_24A836C40;
        v109 = v104;
        goto LABEL_46;
      }

      v110 = v103;
      sub_24A82C634();
      v112 = v111;
      (*(v110 + 8))(v104, v9);
      if (v112)
      {
        v113 = v150;
        sub_24A82CA44();

        v115 = v155;
        v114 = v156;
        if ((*(v155 + 48))(v113, 1, v156) != 1)
        {
          v123 = v113;
          v124 = v151;
          (*(v115 + 32))(v151, v123, v114);
          v171 = *(v115 + 16);
          (v171)(v106, v124, v114);
          v125 = sub_24A82CD94();
          v126 = sub_24A82D504();
          if (os_log_type_enabled(v125, v126))
          {
            v127 = v106;
            v128 = swift_slowAlloc();
            v168 = v128;
            v170 = swift_slowAlloc();
            v173[0] = v170;
            *v128 = 136315138;
            sub_24A6789D4(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
            v129 = v127;
            v130 = sub_24A82DB84();
            v132 = v131;
            v172 = *(v115 + 8);
            (v172)(v129, v114);
            v133 = sub_24A68761C(v130, v132, v173);

            v134 = v168;
            *(v168 + 1) = v133;
            _os_log_impl(&dword_24A675000, v125, v126, "FMIPURLHandler: processUniversalURLForSharedItem: returning item with id %s", v134, 0xCu);
            v135 = v170;
            sub_24A6876E8(v170);
            a2 = v163;
            MEMORY[0x24C21E1D0](v135, -1, -1);
            MEMORY[0x24C21E1D0](v134, -1, -1);
          }

          else
          {

            v172 = *(v115 + 8);
            (v172)(v106, v114);
          }

          v136 = v146;
          v137 = v145;
          v138 = v164;
          sub_24A67F378(v164 + v145, &qword_27EF5D020, &qword_24A830E40);
          (v171)(v138 + v137, v151, v114);
          v136(v138 + v137, 0, 1, v114);
          *(v138 + v148) = 17;
          if (sub_24A82C6A4() == 0x72656E747261702FLL && v139 == 0xE800000000000000)
          {

            v140 = 1;
          }

          else
          {
            v140 = sub_24A82DC04();
          }

          v142 = v161;
          v141 = v162;
          v143 = v140 & 1;
          v144 = v164;
          *(v164 + v149) = v143;
          sub_24A732300(v144, v141);
          (*(v159 + 56))(v141, 0, 1, v169);
          v142(v141, 0);
          sub_24A67F378(v141, &qword_27EF5DEB0, &qword_24A836C30);
          (v172)(v151, v156);
          sub_24A67F378(a2, &qword_27EF5DEC8, &qword_24A836C40);
          (*(v58 + 8))(v158, v57);
          v122 = v144;
          return sub_24A7378B8(v122);
        }

        v107 = &qword_27EF5D020;
        v108 = &qword_24A830E40;
        v109 = v113;
LABEL_46:
        sub_24A67F378(v109, v107, v108);
      }

      v116 = sub_24A82CD94();
      v117 = sub_24A82D4E4();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        *v118 = 0;
        _os_log_impl(&dword_24A675000, v116, v117, "FMIPURLHandler: processUniversalURLForSharedItem: sharing id not found", v118, 2u);
        MEMORY[0x24C21E1D0](v118, -1, -1);
      }

      v85 = v164;
      v119 = v162;
      sub_24A732300(v164, v162);
      (*(v159 + 56))(v119, 0, 1, v169);
      sub_24A732364();
      v120 = swift_allocError();
      *v121 = 4;
      v161(v119, v120);

      sub_24A67F378(v119, &qword_27EF5DEB0, &qword_24A836C30);
      v89 = &qword_27EF5DEC8;
      v90 = &qword_24A836C40;
      v91 = a2;
      goto LABEL_50;
    }

    v36 = 0;
    v44 = (v171 + 16);
    v76 = (v171 + 8);
    while (v36 < *(v40 + 16))
    {
      (*(a1 + 16))(v172, v40 + ((*(a1 + 80) + 32) & ~*(a1 + 80)) + *(a1 + 72) * v36, v9);
      sub_24A82C624();
      a2 = sub_24A82D034();
      v78 = v77;

      if (a2 == 105 && v78 == 0xE100000000000000)
      {

LABEL_31:

        v92 = v171;
        a2 = v163;
        v9 = v170;
        (*(v171 + 32))(v163, v172, v170);
        (*(v92 + 56))(a2, 0, 1, v9);
        goto LABEL_32;
      }

      v79 = sub_24A82DC04();

      if (v79)
      {
        goto LABEL_31;
      }

      ++v36;
      v9 = v170;
      (*v76)(v172, v170);
      a1 = v171;
      if (v41 == v36)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_61:
    swift_once();
  }

  sub_24A67F378(v36, &unk_27EF5CCB8, &qword_24A82FDB0);
  v59 = sub_24A82CD94();
  v60 = sub_24A82D4E4();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_24A675000, v59, v60, "FMIPURLHandler: processUniversalURL: Invalid Universal URL", v61, 2u);
    MEMORY[0x24C21E1D0](v61, -1, -1);
  }

  (*(v159 + 56))(v9, 1, 1, v169);
  sub_24A732364();
  v62 = swift_allocError();
  *v63 = 2;
  a2(v9, v62);

  return sub_24A67F378(v9, &qword_27EF5DEB0, &qword_24A836C30);
}

uint64_t sub_24A735108(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v23 = a1;
  v7 = sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  v11 = sub_24A6BBA94(&qword_27EF5DEB8, &qword_24A836C38);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = sub_24A82C6C4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FMIPURLInfo();
  v21 = swift_projectBox();
  if (!a2)
  {
    sub_24A67E964(v23, v14, &qword_27EF5DEB8, &qword_24A836C38);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      (*(v16 + 32))(v19, v14, v15);
      sub_24A73371C(v19, a3, a4);
      return (*(v16 + 8))(v19, v15);
    }

    sub_24A67F378(v14, &qword_27EF5DEB8, &qword_24A836C38);
  }

  swift_beginAccess();
  sub_24A732300(v21, v10);
  (*(*(v20 - 8) + 56))(v10, 0, 1, v20);
  a3(v10, a2);
  return sub_24A67F378(v10, &qword_27EF5DEB0, &qword_24A836C30);
}

uint64_t sub_24A7353B8(uint64_t a1, void *a2, void (*a3)(uint64_t, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = a2;
  v11 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v60 - v13;
  v15 = sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v61 = &v60 - v17;
  v18 = sub_24A82C6C4();
  v62 = *(v18 - 8);
  v19 = *(v62 + 64);
  MEMORY[0x28223BE20](v18);
  v60 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A6BBA94(&qword_27EF5DEB8, &qword_24A836C38);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v60 - v26;
  v28 = swift_allocObject();
  v63 = a3;
  v28[2] = a3;
  v28[3] = a4;
  v29 = a1;
  v28[4] = a5;
  v28[5] = a6;
  v65 = a4;

  v64 = a5;

  v30 = sub_24A82C694();
  if (v31)
  {
    if (v30 == 0x737361707962 && v31 == 0xE600000000000000)
    {

LABEL_6:
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v33 = sub_24A82CDC4();
      sub_24A6797D0(v33, qword_281518F88);
      v34 = sub_24A82CD94();
      v35 = sub_24A82D504();
      v36 = os_log_type_enabled(v34, v35);
      v37 = v62;
      if (v36)
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_24A675000, v34, v35, "FMIPURLHandler: fetch bypassed", v38, 2u);
        MEMORY[0x24C21E1D0](v38, -1, -1);
      }

      (*(v37 + 16))(v27, v29, v18);
      (*(v37 + 56))(v27, 0, 1, v18);
      v39 = type metadata accessor for FMIPURLInfo();
      v40 = swift_projectBox();
      sub_24A67E964(v27, v25, &qword_27EF5DEB8, &qword_24A836C38);
      if ((*(v37 + 48))(v25, 1, v18) == 1)
      {
        sub_24A67F378(v25, &qword_27EF5DEB8, &qword_24A836C38);
        swift_beginAccess();
        v41 = v61;
        sub_24A732300(v40, v61);
        (*(*(v39 - 8) + 56))(v41, 0, 1, v39);
        v63(v41, 0);
        sub_24A67F378(v41, &qword_27EF5DEB0, &qword_24A836C30);
      }

      else
      {
        v58 = v60;
        (*(v37 + 32))(v60, v25, v18);
        sub_24A73371C(v58, v63, v65);
        (*(v37 + 8))(v58, v18);
      }

      sub_24A67F378(v27, &qword_27EF5DEB8, &qword_24A836C38);
    }

    v32 = sub_24A82DC04();

    if (v32)
    {
      goto LABEL_6;
    }
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v42 = sub_24A82CDC4();
  sub_24A6797D0(v42, qword_281518F88);
  v43 = sub_24A82CD94();
  v44 = sub_24A82D504();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_24A675000, v43, v44, "FMIPURLHandler: Fetching url infos...", v45, 2u);
    MEMORY[0x24C21E1D0](v45, -1, -1);
  }

  sub_24A82C684();
  v46 = sub_24A82C8B4();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v14, 1, v46) != 1)
  {
    v48 = type metadata accessor for FMIPGetURLInfoRequest();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    v51 = swift_allocObject();
    (*(v47 + 16))(v51 + qword_27EF78C70, v14, v46);
    v52 = sub_24A6A183C(0x6E496C7255746567, 0xEA00000000006F66, 0, 0, 1);
    (*(v47 + 8))(v14, v46);
    v53 = v66[5];
    v54 = v66[6];
    sub_24A67DF6C(v66 + 2, v53);
    v55 = swift_allocObject();
    *(v55 + 16) = sub_24A737914;
    *(v55 + 24) = v28;
    v56 = *(v54 + 56);
    v57 = type metadata accessor for FMIPGetURLInfoResponse();

    v56(v52, sub_24A737920, v55, v57, v53, v54);
  }

  __break(1u);
  return result;
}

uint64_t sub_24A735B14(unint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3)
{
  v222 = a3;
  v223 = a2;
  v4 = sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v224 = &v207 - v6;
  v7 = sub_24A82C644();
  v236 = *(v7 - 8);
  v8 = *(v236 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v232 = &v207 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v233 = &v207 - v12;
  MEMORY[0x28223BE20](v11);
  v234 = (&v207 - v13);
  v14 = sub_24A6BBA94(&qword_27EF5DEC8, &qword_24A836C40);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v210 = &v207 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v211 = &v207 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v214 = &v207 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v215 = &v207 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v213 = &v207 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v218 = &v207 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v212 = &v207 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v217 = &v207 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v227 = &v207 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v226 = &v207 - v35;
  MEMORY[0x28223BE20](v34);
  v229 = &v207 - v36;
  v228 = type metadata accessor for FMIPURLInfo();
  v219 = *(v228 - 8);
  v37 = *(v219 + 64);
  MEMORY[0x28223BE20](v228);
  v221 = &v207 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v225 = &v207 - v41;
  v42 = sub_24A82C8B4();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  v220 = &v207 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_24A82C6C4();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  v50 = &v207 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    goto LABEL_114;
  }

  while (1)
  {
    v51 = sub_24A82CDC4();
    v52 = sub_24A6797D0(v51, qword_281518F88);
    (*(v47 + 16))(v50, a1, v46);
    v231 = v52;
    v53 = sub_24A82CD94();
    v54 = sub_24A82D504();
    v55 = os_log_type_enabled(v53, v54);
    v230 = a1;
    v235 = v7;
    if (v55)
    {
      v56 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      v237[0] = v209;
      *v56 = 136315138;
      sub_24A6789D4(&qword_27EF5DED0, MEMORY[0x277CC8958]);
      v57 = sub_24A82DB84();
      v58 = v43;
      v59 = v42;
      v61 = v60;
      (*(v47 + 8))(v50, v46);
      v62 = sub_24A68761C(v57, v61, v237);
      v42 = v59;
      v43 = v58;

      *(v56 + 4) = v62;
      _os_log_impl(&dword_24A675000, v53, v54, "FMIPURLHandler: processUniversalURL: %s", v56, 0xCu);
      v63 = v209;
      sub_24A6876E8(v209);
      MEMORY[0x24C21E1D0](v63, -1, -1);
      v64 = v56;
      v7 = v235;
      MEMORY[0x24C21E1D0](v64, -1, -1);
    }

    else
    {

      (*(v47 + 8))(v50, v46);
    }

    v65 = v225;
    sub_24A82C684();
    v66 = (*(v43 + 48))(v65, 1, v42);
    v67 = v236;
    if (v66 == 1)
    {
      break;
    }

    v75 = v220;
    (*(v43 + 32))(v220, v65, v42);
    v76 = v221;
    (*(v43 + 16))(v221, v75, v42);
    v77 = v228;
    (*(v43 + 56))(v76 + *(v228 + 32), 1, 1, v42);
    v78 = v77[11];
    v79 = sub_24A82CAA4();
    (*(*(v79 - 8) + 56))(v76 + v78, 1, 1, v79);
    v225 = v77[5];
    *(v76 + v225) = 18;
    v80 = (v76 + v77[6]);
    *v80 = 0;
    v80[1] = 0;
    v209 = v80;
    v81 = (v76 + v77[7]);
    *v81 = 0;
    v81[1] = 0;
    v82 = (v76 + v77[9]);
    *v82 = 0;
    v82[1] = 0;
    v83 = (v76 + v77[10]);
    *v83 = 0;
    v83[1] = 0;
    v207 = v83;
    *(v76 + v77[12]) = 0;
    if (sub_24A82C6A4() == 0x6D6574692FLL && v84 == 0xE500000000000000)
    {
LABEL_11:

      goto LABEL_13;
    }

    v85 = sub_24A82DC04();

    if ((v85 & 1) == 0)
    {
      if (sub_24A82C6A4() == 0x72656E747261702FLL && v93 == 0xE800000000000000)
      {
        goto LABEL_11;
      }

      v94 = sub_24A82DC04();

      if ((v94 & 1) == 0)
      {
        v95 = sub_24A82CD94();
        v96 = sub_24A82D4E4();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          *v97 = 0;
          _os_log_impl(&dword_24A675000, v95, v96, "FMIPURLHandler: processUniversalURL: invalid action", v97, 2u);
          MEMORY[0x24C21E1D0](v97, -1, -1);
        }

        v98 = v221;
        v99 = v224;
        sub_24A732300(v221, v224);
        (*(v219 + 56))(v99, 0, 1, v228);
        sub_24A732364();
        v100 = swift_allocError();
        *v101 = 0;
        v223(v99, v100);

        sub_24A67F378(v99, &qword_27EF5DEB0, &qword_24A836C30);
        (*(v43 + 8))(v220, v42);
        v102 = v98;
        return sub_24A7378B8(v102);
      }
    }

LABEL_13:
    v86 = sub_24A82C654();
    v216 = v42;
    v208 = v43;
    if (v86)
    {
      v50 = v86;
      v47 = *(v86 + 16);
      if (v47)
      {
        a1 = 0;
        v43 = 0x6C6169726573;
        v46 = v236 + 16;
        v87 = (v236 + 8);
        v42 = 0xE600000000000000;
        while (a1 < *(v50 + 2))
        {
          (*(v236 + 16))(v234, &v50[((*(v236 + 80) + 32) & ~*(v236 + 80)) + *(v236 + 72) * a1], v7);
          sub_24A82C624();
          v88 = sub_24A82D034();
          v90 = v89;

          if (v88 == 0x6C6169726573 && v90 == 0xE600000000000000)
          {

LABEL_30:
            v7 = v235;

            v67 = v236;
            v103 = v229;
            (*(v236 + 32))(v229, v234, v7);
            v92 = *(v67 + 56);
            (v92)(v103, 0, 1, v7);
            goto LABEL_31;
          }

          v91 = sub_24A82DC04();

          if (v91)
          {
            goto LABEL_30;
          }

          ++a1;
          v7 = v235;
          (*v87)(v234, v235);
          if (v47 == a1)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_112;
      }

LABEL_21:

      v67 = v236;
      v92 = *(v236 + 56);
      (v92)(v229, 1, 1, v7);
LABEL_31:
      v42 = v216;
    }

    else
    {
      v92 = *(v67 + 56);
      (v92)(v229, 1, 1, v7);
    }

    v104 = sub_24A82C654();
    v234 = v92;
    if (v104)
    {
      v50 = v104;
      v46 = *(v104 + 16);
      if (v46)
      {
        v42 = 0;
        v47 = 0xEC00000072657275;
        v43 = 0x74636166756E616DLL;
        a1 = v236 + 8;
        while (v42 < *(v50 + 2))
        {
          (*(v236 + 16))(v233, &v50[((*(v236 + 80) + 32) & ~*(v236 + 80)) + *(v236 + 72) * v42], v7);
          sub_24A82C624();
          v105 = sub_24A82D034();
          v107 = v106;

          if (v105 == 0x74636166756E616DLL && v107 == 0xEC00000072657275)
          {

LABEL_43:
            v7 = v235;

            v67 = v236;
            (*(v236 + 32))(v226, v233, v7);
            v109 = 0;
            v42 = v216;
            goto LABEL_44;
          }

          v108 = sub_24A82DC04();

          if (v108)
          {
            goto LABEL_43;
          }

          ++v42;
          v7 = v235;
          (*a1)(v233, v235);
          if (v46 == v42)
          {
            goto LABEL_40;
          }
        }

LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

LABEL_40:

      v109 = 1;
      v42 = v216;
      v67 = v236;
LABEL_44:
      v92 = v234;
    }

    else
    {
      v109 = 1;
    }

    v43 = v67 + 56;
    v110 = 1;
    (v92)(v226, v109, 1, v7);
    v111 = sub_24A82C654();
    if (!v111)
    {
      v116 = v227;
      v117 = v217;
      goto LABEL_58;
    }

    v50 = v111;
    v46 = *(v111 + 16);
    if (!v46)
    {
LABEL_53:

      v110 = 1;
      v42 = v216;
      v116 = v227;
      v67 = v236;
LABEL_57:
      v117 = v217;
      v92 = v234;
LABEL_58:
      v118 = v235;
      (v92)(v116, v110, 1, v235);
      sub_24A67E964(v116, v117, &qword_27EF5DEC8, &qword_24A836C40);
      v119 = sub_24A82CD94();
      v120 = sub_24A82D504();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v237[0] = v122;
        *v121 = 136315138;
        v123 = v117;
        v124 = v212;
        sub_24A67E964(v123, v212, &qword_27EF5DEC8, &qword_24A836C40);
        if ((*(v67 + 48))(v124, 1, v118) == 1)
        {
          sub_24A67F378(v124, &qword_27EF5DEC8, &qword_24A836C40);
          goto LABEL_64;
        }

        v126 = sub_24A82C634();
        v128 = v127;
        (*(v67 + 8))(v124, v118);
        if (v128)
        {
          sub_24A67F378(v217, &qword_27EF5DEC8, &qword_24A836C40);
        }

        else
        {
LABEL_64:
          v126 = 7104878;
          sub_24A67F378(v217, &qword_27EF5DEC8, &qword_24A836C40);

          v128 = 0xE300000000000000;
        }

        v125 = v218;
        v129 = sub_24A68761C(v126, v128, v237);

        *(v121 + 4) = v129;
        _os_log_impl(&dword_24A675000, v119, v120, "FMIPURLHandler: processUniversalURL: parameter action: %s", v121, 0xCu);
        sub_24A6876E8(v122);
        MEMORY[0x24C21E1D0](v122, -1, -1);
        MEMORY[0x24C21E1D0](v121, -1, -1);

        v116 = v227;
      }

      else
      {

        sub_24A67F378(v117, &qword_27EF5DEC8, &qword_24A836C40);
        v125 = v218;
      }

      sub_24A67E964(v229, v125, &qword_27EF5DEC8, &qword_24A836C40);
      v130 = sub_24A82CD94();
      v131 = sub_24A82D504();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v237[0] = v133;
        *v132 = 136315138;
        v134 = v213;
        sub_24A67E964(v125, v213, &qword_27EF5DEC8, &qword_24A836C40);
        v135 = v235;
        if ((*(v67 + 48))(v134, 1, v235) == 1)
        {
          sub_24A67F378(v134, &qword_27EF5DEC8, &qword_24A836C40);
          goto LABEL_72;
        }

        v136 = sub_24A82C634();
        v138 = v137;
        (*(v67 + 8))(v134, v135);
        if (v138)
        {
          sub_24A67F378(v218, &qword_27EF5DEC8, &qword_24A836C40);
        }

        else
        {
LABEL_72:
          v136 = 7104878;
          sub_24A67F378(v218, &qword_27EF5DEC8, &qword_24A836C40);

          v138 = 0xE300000000000000;
        }

        v139 = sub_24A68761C(v136, v138, v237);

        *(v132 + 4) = v139;
        _os_log_impl(&dword_24A675000, v130, v131, "FMIPURLHandler: processUniversalURL: parameter serial: %s", v132, 0xCu);
        sub_24A6876E8(v133);
        MEMORY[0x24C21E1D0](v133, -1, -1);
        MEMORY[0x24C21E1D0](v132, -1, -1);

        v42 = v216;
      }

      else
      {

        sub_24A67F378(v125, &qword_27EF5DEC8, &qword_24A836C40);
      }

      v140 = v215;
      sub_24A67E964(v116, v215, &qword_27EF5DEC8, &qword_24A836C40);
      v141 = *(v67 + 48);
      v142 = v235;
      if (v141(v140, 1, v235) == 1)
      {
        sub_24A67F378(v140, &qword_27EF5DEC8, &qword_24A836C40);
        goto LABEL_85;
      }

      v143 = sub_24A82C634();
      v145 = v144;
      (*(v67 + 8))(v140, v142);
      if (v145)
      {
        if (v143 == 0x7075746573 && v145 == 0xE500000000000000)
        {

          goto LABEL_81;
        }

        v146 = sub_24A82DC04();

        if (v146)
        {
LABEL_81:
          v147 = sub_24A82CD94();
          v148 = sub_24A82D504();
          if (os_log_type_enabled(v147, v148))
          {
            v149 = swift_slowAlloc();
            *v149 = 0;
            _os_log_impl(&dword_24A675000, v147, v148, "FMIPURLHandler: processUniversalURL: action received to setup an item", v149, 2u);
            MEMORY[0x24C21E1D0](v149, -1, -1);
          }

          v150 = v221;
          *(v221 + v225) = 14;
LABEL_84:
          v151 = sub_24A82C694();
          v153 = v152;
          v154 = v224;
          sub_24A732300(v150, v224);
          v155 = *(v219 + 56);
          v156 = v228;
          v155(v154, 0, 1, v228);
          _s8FMIPCore13FMIPAnalyticsV19sendLaunchAnalytics7context4infoySSSg_AA11FMIPURLInfoVSgtFZ_0(v151, v153, v154);

          sub_24A67F378(v154, &qword_27EF5DEB0, &qword_24A836C30);
          sub_24A732300(v150, v154);
          v155(v154, 0, 1, v156);
          v223(v154, 0);
          sub_24A67F378(v154, &qword_27EF5DEB0, &qword_24A836C30);
          sub_24A67F378(v227, &qword_27EF5DEC8, &qword_24A836C40);
          sub_24A67F378(v226, &qword_27EF5DEC8, &qword_24A836C40);
          sub_24A67F378(v229, &qword_27EF5DEC8, &qword_24A836C40);
          (*(v208 + 8))(v220, v42);
          v102 = v150;
          return sub_24A7378B8(v102);
        }
      }

LABEL_85:
      v157 = v214;
      sub_24A67E964(v229, v214, &qword_27EF5DEC8, &qword_24A836C40);
      v158 = v235;
      if (v141(v157, 1, v235) == 1)
      {
LABEL_89:
        sub_24A67F378(v157, &qword_27EF5DEC8, &qword_24A836C40);
      }

      else
      {
        v159 = sub_24A82C634();
        v161 = v160;
        v162 = *(v67 + 8);
        v162(v157, v158);
        if (v161)
        {
          v157 = v211;
          sub_24A67E964(v226, v211, &qword_27EF5DEC8, &qword_24A836C40);
          if (v141(v157, 1, v158) == 1)
          {

            goto LABEL_89;
          }

          v236 = sub_24A82C634();
          v176 = v175;
          v162(v157, v158);
          if (v176)
          {
            v234 = v159;
            v177 = v210;
            sub_24A67E964(v227, v210, &qword_27EF5DEC8, &qword_24A836C40);
            if (v141(v177, 1, v158) == 1)
            {
              sub_24A67F378(v177, &qword_27EF5DEC8, &qword_24A836C40);
              v178 = v209;
            }

            else
            {
              v179 = v177;
              v180 = sub_24A82C634();
              v182 = v181;
              v162(v179, v158);
              v178 = v209;
              if (v182)
              {
                if (v180 == 0x65766F6D6572 && v182 == 0xE600000000000000)
                {
                }

                else
                {
                  v183 = sub_24A82DC04();

                  if ((v183 & 1) == 0)
                  {
                    goto LABEL_105;
                  }
                }

                v184 = sub_24A82CD94();
                v185 = sub_24A82D504();

                if (os_log_type_enabled(v184, v185))
                {
                  v186 = swift_slowAlloc();
                  v187 = swift_slowAlloc();
                  v237[0] = v187;
                  *v186 = 136315138;
                  v188 = v234;
                  *(v186 + 4) = sub_24A68761C(v234, v161, v237);
                  _os_log_impl(&dword_24A675000, v184, v185, "FMIPURLHandler: processUniversalURL: action received to remove %s", v186, 0xCu);
                  sub_24A6876E8(v187);
                  MEMORY[0x24C21E1D0](v187, -1, -1);
                  MEMORY[0x24C21E1D0](v186, -1, -1);

                  v189 = v225;
                  v190 = v207;
                }

                else
                {

                  v189 = v225;
                  v190 = v207;
                  v188 = v234;
                }

                v199 = v236;
                v200 = v221;
                *(v221 + v189) = 12;
                *v178 = v188;
                v178[1] = v161;
                *v190 = v199;
                v190[1] = v176;
                v201 = sub_24A82C694();
                v203 = v202;
                v204 = v224;
                sub_24A732300(v200, v224);
                v205 = *(v219 + 56);
                v206 = v228;
                v205(v204, 0, 1, v228);
                _s8FMIPCore13FMIPAnalyticsV19sendLaunchAnalytics7context4infoySSSg_AA11FMIPURLInfoVSgtFZ_0(v201, v203, v204);

                sub_24A67F378(v204, &qword_27EF5DEB0, &qword_24A836C30);
                sub_24A732300(v200, v204);
                v205(v204, 0, 1, v206);
                v223(v204, 0);
                sub_24A67F378(v204, &qword_27EF5DEB0, &qword_24A836C30);
                sub_24A67F378(v227, &qword_27EF5DEC8, &qword_24A836C40);
                sub_24A67F378(v226, &qword_27EF5DEC8, &qword_24A836C40);
                sub_24A67F378(v229, &qword_27EF5DEC8, &qword_24A836C40);
                (*(v208 + 8))(v220, v42);
                v102 = v200;
                return sub_24A7378B8(v102);
              }
            }

LABEL_105:

            v191 = sub_24A82CD94();
            v192 = sub_24A82D504();

            if (os_log_type_enabled(v191, v192))
            {
              v193 = swift_slowAlloc();
              v194 = swift_slowAlloc();
              v237[0] = v194;
              *v193 = 136315138;
              v195 = v234;
              *(v193 + 4) = sub_24A68761C(v234, v161, v237);
              _os_log_impl(&dword_24A675000, v191, v192, "FMIPURLHandler: processUniversalURL: selecting item for serial %s", v193, 0xCu);
              sub_24A6876E8(v194);
              MEMORY[0x24C21E1D0](v194, -1, -1);
              MEMORY[0x24C21E1D0](v193, -1, -1);

              v196 = v225;
              v197 = v207;
            }

            else
            {

              v196 = v225;
              v197 = v207;
              v195 = v234;
            }

            v198 = v236;
            *v178 = v195;
            v178[1] = v161;
            *v197 = v198;
            v197[1] = v176;
            v150 = v221;
            *(v221 + v196) = 7;
            goto LABEL_84;
          }
        }
      }

      v163 = sub_24A82CD94();
      v164 = sub_24A82D4E4();
      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        *v165 = 0;
        _os_log_impl(&dword_24A675000, v163, v164, "FMIPURLHandler: processUniversalURL: invalid serial number", v165, 2u);
        MEMORY[0x24C21E1D0](v165, -1, -1);
      }

      v166 = sub_24A82C694();
      v168 = v167;
      v169 = v221;
      v170 = v224;
      sub_24A732300(v221, v224);
      v171 = *(v219 + 56);
      v172 = v228;
      v171(v170, 0, 1, v228);
      _s8FMIPCore13FMIPAnalyticsV19sendLaunchAnalytics7context4infoySSSg_AA11FMIPURLInfoVSgtFZ_0(v166, v168, v170);

      sub_24A67F378(v170, &qword_27EF5DEB0, &qword_24A836C30);
      sub_24A732300(v169, v170);
      v171(v170, 0, 1, v172);
      sub_24A732364();
      v173 = swift_allocError();
      *v174 = 1;
      v223(v170, v173);

      sub_24A67F378(v170, &qword_27EF5DEB0, &qword_24A836C30);
      sub_24A67F378(v227, &qword_27EF5DEC8, &qword_24A836C40);
      sub_24A67F378(v226, &qword_27EF5DEC8, &qword_24A836C40);
      sub_24A67F378(v229, &qword_27EF5DEC8, &qword_24A836C40);
      (*(v208 + 8))(v220, v42);
      v102 = v169;
      return sub_24A7378B8(v102);
    }

    v42 = 0;
    v47 = 0x6E6F69746361;
    a1 = v236 + 8;
    while (v42 < *(v50 + 2))
    {
      (*(v236 + 16))(v232, &v50[((*(v236 + 80) + 32) & ~*(v236 + 80)) + *(v236 + 72) * v42], v7);
      sub_24A82C624();
      v112 = sub_24A82D034();
      v114 = v113;

      if (v112 == 0x6E6F69746361 && v114 == 0xE600000000000000)
      {

LABEL_56:

        v67 = v236;
        v116 = v227;
        (*(v236 + 32))(v227, v232, v235);
        v110 = 0;
        v42 = v216;
        goto LABEL_57;
      }

      v115 = sub_24A82DC04();

      if (v115)
      {
        goto LABEL_56;
      }

      ++v42;
      v7 = v235;
      (*a1)(v232, v235);
      if (v46 == v42)
      {
        goto LABEL_53;
      }
    }

LABEL_113:
    __break(1u);
LABEL_114:
    swift_once();
  }

  sub_24A67F378(v65, &unk_27EF5CCB8, &qword_24A82FDB0);
  v68 = sub_24A82CD94();
  v69 = sub_24A82D4E4();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_24A675000, v68, v69, "FMIPURLHandler: processUniversalURL: Invalid Universal URL", v70, 2u);
    MEMORY[0x24C21E1D0](v70, -1, -1);
  }

  v71 = v224;
  (*(v219 + 56))(v224, 1, 1, v228);
  sub_24A732364();
  v72 = swift_allocError();
  *v73 = 2;
  v223(v71, v72);

  return sub_24A67F378(v71, &qword_27EF5DEB0, &qword_24A836C30);
}

uint64_t sub_24A7378B8(uint64_t a1)
{
  v2 = type metadata accessor for FMIPURLInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24A73793C()
{
  result = qword_27EF5DEE0;
  if (!qword_27EF5DEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DEE0);
  }

  return result;
}

unint64_t sub_24A737994(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for FMIPURLInfo();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  sub_24A7380AC(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_24A73811C(v5);
  }

  else
  {
    sub_24A738290(v5, v10);
    v12 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v13 = sub_24A82CF94();
    v14 = [v12 initWithString_];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v11;
    sub_24A6AE690(v14, 0x747865746E6F63, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v11 = v28;
    if (v10[*(v6 + 20)] != 18)
    {
      LOBYTE(v28) = v10[*(v6 + 20)];
      FMIPURLAction.rawValue.getter();
      v16 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v17 = sub_24A82CF94();

      v18 = [v16 initWithString_];

      v19 = swift_isUniquelyReferenced_nonNull_native();
      v28 = v11;
      sub_24A6AE690(v18, 0x6E6F69746361, 0xE600000000000000, v19);
      v11 = v28;
    }

    v20 = &v10[*(v6 + 40)];
    if (*(v20 + 1))
    {
      v21 = *v20;
      v22 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v23 = sub_24A82CF94();
      v24 = [v22 initWithString_];

      v25 = swift_isUniquelyReferenced_nonNull_native();
      v28 = v11;
      sub_24A6AE690(v24, 0x74636166756E616DLL, 0xEC00000072657275, v25);
      v11 = v28;
    }

    sub_24A7378B8(v10);
  }

  return v11;
}

void _s8FMIPCore13FMIPAnalyticsV19sendLaunchAnalytics7context4infoySSSg_AA11FMIPURLInfoVSgtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  if (a2)
  {
    v16 = qword_281515DC8;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_24A82CDC4();
    sub_24A6797D0(v17, qword_281518F88);
    sub_24A7380AC(a3, v15);

    v18 = sub_24A82CD94();
    v19 = sub_24A82D504();

    v20 = os_log_type_enabled(v18, v19);
    v36 = a1;
    if (!v20)
    {

      sub_24A73811C(v15);
LABEL_12:
      v28 = sub_24A82CF94();
      sub_24A7380AC(a3, v10);
      v29 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v30 = swift_allocObject();
      sub_24A738184(v10, v30 + v29);
      v31 = (v30 + ((v8 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v31 = v36;
      v31[1] = a2;
      aBlock[4] = sub_24A7381F4;
      aBlock[5] = v30;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A6AEADC;
      aBlock[3] = &unk_285DC55F8;
      v32 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v32);

      return;
    }

    v34 = v7;
    v35 = a3;
    v21 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v21 = 136315394;
    *(v21 + 4) = sub_24A68761C(a1, a2, aBlock);
    *(v21 + 12) = 2080;
    sub_24A7380AC(v15, v13);
    v22 = type metadata accessor for FMIPURLInfo();
    if ((*(*(v22 - 8) + 48))(v13, 1, v22) == 1)
    {
      sub_24A73811C(v13);
    }

    else
    {
      v23 = &v13[*(v22 + 36)];
      v24 = *v23;
      v25 = v23[1];

      sub_24A7378B8(v13);
      if (v25)
      {
        sub_24A73811C(v15);
LABEL_11:
        v26 = sub_24A68761C(v24, v25, aBlock);

        *(v21 + 14) = v26;
        _os_log_impl(&dword_24A675000, v18, v19, "FMIPAnalytics: sendLaunchEvent (%s, returnAppName: %s", v21, 0x16u);
        v27 = v33;
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v27, -1, -1);
        MEMORY[0x24C21E1D0](v21, -1, -1);

        v7 = v34;
        a3 = v35;
        goto LABEL_12;
      }
    }

    sub_24A73811C(v15);

    v25 = 0xE300000000000000;
    v24 = 7104878;
    goto LABEL_11;
  }
}

uint64_t sub_24A7380AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A73811C(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A738184(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A7381F4()
{
  v1 = *(sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_24A737994(v0 + v2);
}

uint64_t sub_24A738290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPURLInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A7382F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_24A67E964(a3, v27 - v11, &qword_27EF5CF08, &qword_24A830D80);
  v13 = sub_24A82D354();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24A67F378(v12, &qword_27EF5CF08, &qword_24A830D80);
  }

  else
  {
    sub_24A82D344();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24A82D324();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24A82D044() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_24A67F378(a3, &qword_27EF5CF08, &qword_24A830D80);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24A67F378(a3, &qword_27EF5CF08, &qword_24A830D80);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_24A7385F4(uint64_t a1)
{
  v1 = *sub_24A67DF6C((a1 + 32), *(a1 + 56));
  sub_24A679170(0, &qword_27EF5CF10, 0x277D49640);
  sub_24A6AB7EC(&unk_27EF5CF18, &qword_27EF5CF10, 0x277D49640);
  **(*(v1 + 64) + 40) = sub_24A82D3A4();

  return MEMORY[0x282200948](v1);
}

void sub_24A7386BC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t FMIPBundleIdsAllowedToUseCache.getter()
{
  if (qword_27EF5CBB8 != -1)
  {
    swift_once();
  }
}

void sub_24A7387A4()
{
  v0 = objc_opt_self();
  v1 = sub_24A82CF94();
  v2 = sub_24A82CF94();
  LOBYTE(v0) = [v0 BOOLForKey:v1 inDomain:v2];

  byte_27EF5DEF0 = v0;
}

uint64_t sub_24A7388B4(void *a1, unsigned __int8 *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

unint64_t FMIPContentObservation.description.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000015;
  v3 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v3 = 0xD000000000000019;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  if (v1 == 1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24A7389D8()
{
  v1 = *v0;
  v2 = 0xD000000000000015;
  if (*v0 != 3)
  {
    v2 = 0xD000000000000019;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000017;
  }

  if (v1 == 1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return v2;
  }
}

void sub_24A738A48()
{
  v3[3] = &type metadata for KoreaFeatureFlag;
  v3[4] = sub_24A6AF8B0();
  v0 = sub_24A82C4D4();
  sub_24A6876E8(v3);
  if (v0)
  {
    v1 = 1;
  }

  else
  {
    v2 = sub_24A82CF94();
    v1 = MGGetBoolAnswer();
  }

  byte_27EF5DEF3 = v1;
}

uint64_t FMIPManager.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_identifier;
  v4 = sub_24A82CAA4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_24A738B58(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  swift_unknownObjectWeakAssign();
  FMIPManager.initialize()();
}

void (*FMIPManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24A738C60;
}

void sub_24A738C60(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v6 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    FMIPManager.initialize()();
  }

  free(v3);
}

uint64_t sub_24A738CFC(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v2 + 8);
  return result;
}

uint64_t FMIPManager.siriDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_siriDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*FMIPManager.siriDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_siriDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24A738E54;
}

void sub_24A738E54(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t FMIPManager.isUTAppAlertDisabled.getter()
{
  v1 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_isUTAppAlertDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t FMIPManager.isUTAppAlertDisabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_isUTAppAlertDisabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t FMIPManager.owner.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  sub_24A6BBA94(&qword_27EF5DEF8, &unk_24A836D40);
  return sub_24A82D574();
}

uint64_t sub_24A73917C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconSharingController);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24A7391A8, v1, 0);
}

uint64_t sub_24A7391A8()
{
  *(v0 + 32) = *(*(v0 + 24) + 144);

  return MEMORY[0x2822009F8](sub_24A73921C, 0, 0);
}

uint64_t sub_24A73921C()
{
  v9 = v0;
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_24A74DDDC(*(v1 + 16), 0, &qword_27EF5DF88, &unk_24A8371B0, type metadata accessor for FMIPBeaconShare);
    v4 = *(type metadata accessor for FMIPBeaconShare(0) - 8);
    v5 = sub_24A74E32C(&v8, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, v1);
    sub_24A6BAFBC();
    if (v5 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v6 = *(v0 + 8);

  return v6(v3);
}

void FMIPManager.rangingParameters.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_rangingParameters);
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v2 == 0;
}

uint64_t FMIPManager.selectedDevice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_selectedDevice;
  swift_beginAccess();
  return sub_24A67E964(v1 + v3, a1, &qword_27EF5DF08, &qword_24A837770);
}

uint64_t sub_24A7393E0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_24A67E964(a1, &v10 - v6, &qword_27EF5DF08, &qword_24A837770);
  v8 = *a2;
  return FMIPManager.selectedDevice.setter(v7);
}

uint64_t FMIPManager.selectedDevice.setter(uint64_t a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_selectedDevice;
  swift_beginAccess();
  sub_24A74E590(a1, v1 + v7);
  swift_endAccess();
  result = sub_24A67F378(a1, &qword_27EF5DF08, &qword_24A837770);
  v9 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);
  if (v9)
  {
    sub_24A67E964(v1 + v7, v6, &qword_27EF5DF08, &qword_24A837770);
    v10 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_selectedDevice;
    swift_beginAccess();

    sub_24A730298(v6, v9 + v10, &qword_27EF5DF08, &qword_24A837770);
    swift_endAccess();
  }

  return result;
}

void (*FMIPManager.selectedDevice.modify(uint64_t *a1))(void *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_selectedDevice;
  *(v5 + 56) = v7;
  *(v5 + 64) = v8;
  swift_beginAccess();
  return sub_24A739694;
}

void sub_24A739694(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[6];
    v5 = *(v4 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);
    if (v5)
    {
      v6 = v3[7];
      sub_24A67E964(v4 + v3[8], v6, &qword_27EF5DF08, &qword_24A837770);
      v7 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_selectedDevice;
      swift_beginAccess();

      sub_24A730298(v6, v5 + v7, &qword_27EF5DF08, &qword_24A837770);
      swift_endAccess();
    }
  }

  free(v3[7]);

  free(v3);
}

uint64_t FMIPManager.initializedSubsystems.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_initializedSubsystems;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_24A7397CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_initializedSubsystems;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v7 = v5;
  return sub_24A6ADCC4(&v7);
}

uint64_t sub_24A739830(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t FMIPManager.__allocating_init(configuration:ownerSession:)(uint64_t a1, void *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  FMIPManager.init(configuration:ownerSession:)(a1, a2);
  return v7;
}

uint64_t FMIPManager.deinit()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);

  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v36 = v6;
    *v5 = 136315138;
    v7 = sub_24A82CA54();
    v9 = sub_24A695068(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C21C960](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A68761C(v16, v18, &v36);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPManager<%s>.deinit", v5, 0xCu);
    sub_24A6876E8(v6);
    MEMORY[0x24C21E1D0](v6, -1, -1);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v20 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_identifier;
  v21 = sub_24A82CAA4();
  (*(*(v21 - 8) + 8))(v1 + v20, v21);
  sub_24A6BAF88(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate);
  sub_24A6BAF88(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_siriDelegate);
  v22 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);

  v23 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController);

  v24 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_safeLocationRefreshingController);

  v25 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration);

  v26 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_garbageCollector);

  sub_24A67F378(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_authenticationUIProvider, &qword_27EF5D608, &qword_24A837E90);
  v27 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_urlHandler);

  v28 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_locationShifter);

  v29 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);

  sub_24A6876E8((v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_interactionController));
  v30 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_actionsController);

  v31 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemActionsController);

  v32 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconSharingController);

  sub_24A67F378(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_stopRefreshTimestamp, &qword_27EF5E0E0, &qword_24A836D90);
  v33 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_connectionStateProvider);

  sub_24A67F378(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_selectedDevice, &qword_27EF5DF08, &qword_24A837770);
  v34 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemCounts);

  return v1;
}

uint64_t FMIPManager.__deallocating_deinit()
{
  FMIPManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A739D20(uint64_t a1)
{
  v2 = sub_24A82CDF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A82CE54();
  v7 = *(v17 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration) + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems);
  v12 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_initializedSubsystems;
  swift_beginAccess();
  v13 = *(a1 + v12);
  *(a1 + v12) = v11;
  aBlock[0] = v13;
  sub_24A6ADCC4(aBlock);
  v16 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
  aBlock[4] = sub_24A753C90;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC7000;
  v14 = _Block_copy(aBlock);

  sub_24A82CE24();
  v18 = MEMORY[0x277D84F90];
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v10, v6, v14);
  _Block_release(v14);
  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v17);
}

uint64_t sub_24A73A018(uint64_t a1)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPManager: loaded cached data", v5, 2u);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v6 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(a1, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A73A174()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24A6CADE0;

  return sub_24A6BD084();
}

Swift::Void __swiftcall FMIPManager.forceStartRefreshing()()
{
  v1 = v0;
  v2 = sub_24A82CDF4();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A82CE54();
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v21);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A82CDC4();
  sub_24A6797D0(v10, qword_281518F88);
  v11 = sub_24A82CD94();
  v12 = sub_24A82D504();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24A675000, v11, v12, "FMIPManager: force start refreshing", v13, 2u);
    MEMORY[0x24C21E1D0](v13, -1, -1);
  }

  v14 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);
  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = *(v14 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_refreshQueue);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24A753E64;
  *(v16 + 24) = v14;
  v28 = sub_24A680674;
  v29 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_24A6805E4;
  v27 = &unk_285DC58C8;
  v17 = _Block_copy(&aBlock);
  swift_retain_n();

  dispatch_sync(v15, v17);
  _Block_release(v17);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
LABEL_7:
    v18 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
    v28 = sub_24A74EF2C;
    v29 = v1;
    aBlock = MEMORY[0x277D85DD0];
    v25 = 1107296256;
    v26 = sub_24A699BA0;
    v27 = &unk_285DC58F0;
    v19 = _Block_copy(&aBlock);

    sub_24A82CE24();
    v23 = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v9, v5, v19);
    _Block_release(v19);
    (*(v22 + 8))(v5, v2);
    (*(v6 + 8))(v9, v21);
  }
}

uint64_t sub_24A73A688(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  sub_24A6BBA94(&qword_27EF5DC18, &qword_24A836D50);
  sub_24A82D574();
  v3 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    sub_24A6BBA94(&unk_27EF5E220, &unk_24A8343D0);
    sub_24A82D574();
    (*(v4 + 32))(a1, v12, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v3 + 8);
    v7 = swift_getObjectType();
    (*(v6 + 112))(a1, v13, v7, v6);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v3 + 8);
    v9 = swift_getObjectType();
    sub_24A6BBA94(&qword_27EF5E170, &qword_24A836D58);
    sub_24A82D574();
    (*(v8 + 152))(a1, v12, v9, v8);

    swift_unknownObjectRelease();
  }

  v10 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemCounts);
  *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemCounts) = v13;

  return sub_24A69CA60();
}

Swift::Void __swiftcall FMIPManager.stopRefreshing(subsystems:)(FMIPCore::FMIPManagerSubsystem subsystems)
{
  v2 = v1;
  v4 = sub_24A82CDF4();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A82CE54();
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v35 - v14;
  v16 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v35 - v18;
  v20 = *subsystems.rawValue;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v21 = sub_24A82CDC4();
  sub_24A6797D0(v21, qword_281518F88);
  v22 = sub_24A82CD94();
  v23 = sub_24A82D504();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_24A675000, v22, v23, "FMIPManager: stop refreshing", v24, 2u);
    MEMORY[0x24C21E1D0](v24, -1, -1);

    if ((v20 & 1) == 0)
    {
LABEL_5:
      if ((v20 & 3) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else
  {

    if ((v20 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  if (*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController))
  {
    v25 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);

    sub_24A7CB038();
  }

  *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isRefreshingDevices) = 0;
  if ((v20 & 3) != 0)
  {
LABEL_11:
    if ((*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isDevicesSnapshotMode) & 1) == 0 && (*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isItemsSnapshotMode) & 1) == 0)
    {
      v26 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController);

      sub_24A8013D8();

      *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isRefreshingItems) = 0;
      v27 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconSharingController);
      v28 = sub_24A82D354();
      (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
      v29 = swift_allocObject();
      v29[2] = 0;
      v29[3] = 0;
      v29[4] = v27;

      sub_24A7382F4(0, 0, v19, &unk_24A836DB0, v29);
    }
  }

LABEL_14:
  v30 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_safeLocationRefreshingController);

  sub_24A6F1674();

  [*(*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_locationController) + OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_locationManager) stopUpdatingLocation];
  sub_24A82CA24();
  v31 = sub_24A82CA34();
  (*(*(v31 - 8) + 56))(v15, 0, 1, v31);
  v32 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_stopRefreshTimestamp;
  swift_beginAccess();
  sub_24A730298(v15, v2 + v32, &qword_27EF5E0E0, &qword_24A836D90);
  swift_endAccess();
  v33 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
  aBlock[4] = sub_24A74F048;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC5918;
  v34 = _Block_copy(aBlock);

  sub_24A82CE24();
  v38 = MEMORY[0x277D84F90];
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v11, v7, v34);
  _Block_release(v34);
  (*(v37 + 8))(v7, v4);
  (*(v35 + 8))(v11, v36);
}

uint64_t sub_24A73AF10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24A69BD40;

  return sub_24A6BDB0C();
}

uint64_t sub_24A73AFA0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  sub_24A6BBA94(&qword_27EF5DC18, &qword_24A836D50);
  sub_24A82D574();
  v3 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    sub_24A6BBA94(&unk_27EF5E220, &unk_24A8343D0);
    sub_24A82D574();
    (*(v4 + 32))(a1, v12, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v3 + 8);
    v7 = swift_getObjectType();
    sub_24A82D574();
    (*(v6 + 112))(a1, v12, v7, v6);

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v3 + 8);
    v9 = swift_getObjectType();
    sub_24A6BBA94(&qword_27EF5E170, &qword_24A836D58);
    sub_24A82D574();
    (*(v8 + 152))(a1, v12, v9, v8);

    swift_unknownObjectRelease();
  }

  v10 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemCounts);
  *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemCounts) = v13;

  return sub_24A69CA60();
}

Swift::Void __swiftcall FMIPManager.updateLastActiveTimestamp()()
{
  v1 = v0;
  v2 = sub_24A82CA34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_interactionController;
  swift_beginAccess();
  sub_24A698230(v1 + v7, v12);
  v8 = v13;
  v9 = v14;
  sub_24A67DF6C(v12, v13);
  (*(v9 + 64))(v8, v9);
  sub_24A6876E8(v12);
  v10 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController);

  sub_24A82CA24();
  v11 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_lastActiveTimestamp;
  swift_beginAccess();
  (*(v3 + 40))(v10 + v11, v6, v2);
  swift_endAccess();
}

Swift::Void __swiftcall FMIPManager.refresh(subsystems:)(FMIPCore::FMIPManagerSubsystem subsystems)
{
  v2 = v1;
  v3 = *subsystems.rawValue;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPManager: forced refresh", v7, 2u);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  if ((v3 & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_24A74F104;
  *(v10 + 24) = v9;
  aBlock[4] = sub_24A680674;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6805E4;
  aBlock[3] = &unk_285DC59B8;
  v22 = _Block_copy(aBlock);
  v11 = _Block_copy(v22);
  v12 = qword_281513E40;
  swift_retain_n();

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = _os_activity_create(&dword_24A675000, "FMIPRefreshingController.refresh", qword_281513E48[0], OS_ACTIVITY_FLAG_DEFAULT);
  v14 = _Block_copy(v11);
  v21 = v11;
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24A6A9A80;
  *(v16 + 24) = v15;
  v23[4] = sub_24A680674;
  v23[5] = v16;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_24A6805E4;
  v23[3] = &unk_285DC5A30;
  v17 = _Block_copy(v23);

  os_activity_apply(v13, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  _Block_release(v22);
  _Block_release(v21);
  swift_unknownObjectRelease();
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
LABEL_15:
    __break(1u);
    return;
  }

LABEL_11:
  if ((v3 & 3) != 0)
  {
    v20 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController);

    sub_24A6A7D7C(0, 0);
  }
}

uint64_t FMIPManager.refreshBeacons(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController);

  sub_24A6A7D7C(a1, a2);
}

void sub_24A73B840(uint64_t a1, id a2)
{
  if (*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isDevicesSnapshotMode) != 1 || (*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_snapshotDevicesResponseReceived) & 1) != 0)
  {
    return;
  }

  *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_snapshotDevicesResponseReceived) = 1;
  if (a2)
  {
    v5 = a2;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v6 = sub_24A82CDC4();
    sub_24A6797D0(v6, qword_281518F88);

    v7 = a2;

    v8 = v2;
    v9 = sub_24A82CD94();
    v10 = sub_24A82D504();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136446722;
      v73 = *v2;
      v77 = v12;
      sub_24A6BBA94(&qword_27EF5DF30, &qword_24A837150);
      v13 = sub_24A82D024();
      v15 = sub_24A68761C(v13, v14, &v77);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2048;
      v16 = *(a1 + 16);

      *(v11 + 14) = v16;

      *(v11 + 22) = 2080;
      swift_getErrorValue();
      v17 = sub_24A82DC74();
      v2 = v8;
      v19 = sub_24A68761C(v17, v18, &v77);

      *(v11 + 24) = v19;
      _os_log_impl(&dword_24A675000, v9, v10, "%{public}s: received %ld devices (error=%s)", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v12, -1, -1);
      MEMORY[0x24C21E1D0](v11, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v37 = *(*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration) + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers);
    if (v37)
    {
      v38 = *(v37 + 32);
      if (v38)
      {
        v39 = *(v37 + 40);
        v40 = a2;
        sub_24A6A7314(v38);
        v38(v2, MEMORY[0x277D84F90], MEMORY[0x277D84F90], a2);

        sub_24A6AFFE8(v38);
      }
    }

    return;
  }

  v20 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration);
  v21 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers;
  v22 = *(v20 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers);
  if (v22)
  {
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = *(v22 + 24);

      v25 = v23(v2, a1);
      if (*(v25 + 16))
      {
        if (qword_281515DC8 != -1)
        {
          swift_once();
        }

        v26 = sub_24A82CDC4();
        sub_24A6797D0(v26, qword_281518F88);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        v27 = sub_24A82CD94();
        v28 = sub_24A82D504();

        if (os_log_type_enabled(v27, v28))
        {
          v72 = v23;
          v29 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v29 = 136446722;
          v74 = *v2;
          v77 = v70;
          sub_24A6BBA94(&qword_27EF5DF30, &qword_24A837150);
          v30 = sub_24A82D024();
          v31 = v20;
          v33 = sub_24A68761C(v30, v32, &v77);

          *(v29 + 4) = v33;
          *(v29 + 12) = 2048;
          v34 = *(a1 + 16);

          *(v29 + 14) = v34;
          v20 = v31;

          *(v29 + 22) = 2048;
          v35 = *(v25 + 16);

          *(v29 + 24) = v35;

          _os_log_impl(&dword_24A675000, v27, v28, "%{public}s: received %ld devices incl. %ld locations asked", v29, 0x20u);
          sub_24A6876E8(v70);
          MEMORY[0x24C21E1D0](v70, -1, -1);
          v36 = v29;
          v23 = v72;
          MEMORY[0x24C21E1D0](v36, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        v63 = *(v20 + v21);
        if (v63 && (v64 = *(v63 + 32)) != 0)
        {
          v65 = *(v63 + 40);

          v64(v2, v25, v25, 0);
          sub_24A6AFFE8(v23);
          v66 = v64;
        }

        else
        {
          v66 = v23;
        }

        sub_24A6AFFE8(v66);

        return;
      }

      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v54 = sub_24A82CDC4();
      sub_24A6797D0(v54, qword_281518F88);
      swift_bridgeObjectRetain_n();

      v55 = sub_24A82CD94();
      v56 = sub_24A82D504();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *v57 = 136446466;
        v76 = *v2;
        v77 = v71;
        sub_24A6BBA94(&qword_27EF5DF30, &qword_24A837150);
        v58 = sub_24A82D024();
        v60 = v21;
        v61 = sub_24A68761C(v58, v59, &v77);

        *(v57 + 4) = v61;
        v21 = v60;
        *(v57 + 12) = 2048;
        v62 = *(a1 + 16);

        *(v57 + 14) = v62;

        _os_log_impl(&dword_24A675000, v55, v56, "%{public}s: received %ld devices but no location asked", v57, 0x16u);
        sub_24A6876E8(v71);
        MEMORY[0x24C21E1D0](v71, -1, -1);
        MEMORY[0x24C21E1D0](v57, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v67 = *(v20 + v21);
      if (v67 && (v68 = *(v67 + 32)) != 0)
      {
        v69 = *(v67 + 40);

        v68(v2, MEMORY[0x277D84F90], MEMORY[0x277D84F90], 0);
        sub_24A6AFFE8(v23);
        v53 = v68;
      }

      else
      {
        v53 = v23;
      }

LABEL_44:
      sub_24A6AFFE8(v53);
      return;
    }
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v41 = sub_24A82CDC4();
  sub_24A6797D0(v41, qword_281518F88);
  swift_bridgeObjectRetain_n();

  v42 = sub_24A82CD94();
  v43 = sub_24A82D504();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 136446466;
    v75 = *v2;
    v77 = v45;
    sub_24A6BBA94(&qword_27EF5DF30, &qword_24A837150);
    v46 = sub_24A82D024();
    v48 = sub_24A68761C(v46, v47, &v77);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2048;
    v49 = *(a1 + 16);

    *(v44 + 14) = v49;

    _os_log_impl(&dword_24A675000, v42, v43, "%{public}s: received %ld devices", v44, 0x16u);
    sub_24A6876E8(v45);
    MEMORY[0x24C21E1D0](v45, -1, -1);
    MEMORY[0x24C21E1D0](v44, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v50 = *(v20 + v21);
  if (v50)
  {
    v51 = *(v50 + 32);
    if (v51)
    {
      v52 = *(v50 + 40);

      v51(v2, a1, a1, 0);
      v53 = v51;
      goto LABEL_44;
    }
  }
}

uint64_t FMIPManager.refreshUnknownBeacons(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);
  sub_24A6A7314(a1);
  v7 = sub_24A82CD94();
  v8 = sub_24A82D504();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 == 0;
    sub_24A6AFFE8(a1);
    _os_log_impl(&dword_24A675000, v7, v8, "FMIPManager: refreshUnknownBeacons, isCompletionNil? %{BOOL}d", v9, 8u);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  else
  {
    sub_24A6AFFE8(a1);
  }

  v10 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_24A74F110;
  *(v12 + 24) = v11;
  aBlock[4] = sub_24A680674;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6805E4;
  aBlock[3] = &unk_285DC5AA8;
  v13 = _Block_copy(aBlock);
  v14 = _Block_copy(v13);

  sub_24A6A7314(a1);
  v15 = qword_281513E40;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = _os_activity_create(&dword_24A675000, "FMIPBeaconRefreshingController.refreshUnknownBeacons", qword_281513E48[0], OS_ACTIVITY_FLAG_DEFAULT);
  v17 = _Block_copy(v14);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_24A6A9A80;
  *(v19 + 24) = v18;
  v23[4] = sub_24A680674;
  v23[5] = v19;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_24A6805E4;
  v23[3] = &unk_285DC5B20;
  v20 = _Block_copy(v23);

  os_activity_apply(v16, v20);
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v13);
  _Block_release(v14);
  result = swift_unknownObjectRelease();
  if (v20)
  {
    __break(1u);
    goto LABEL_12;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

void sub_24A73C60C(void (*a1)(char *), uint64_t *a2)
{
  v3 = v2;
  v6 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v117 - v8;
  v10 = sub_24A82CAA4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v117 - v16;
  v18 = type metadata accessor for FMIPItem();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v22 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = a2;
    if (qword_281515DC8 == -1)
    {
LABEL_3:
      v24 = sub_24A82CDC4();
      sub_24A6797D0(v24, qword_281518F88);

      v25 = a2;

      v26 = sub_24A82CD94();
      v27 = sub_24A82D504();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 136446722;
        v128 = *v3;
        v129[0] = v29;
        sub_24A6BBA94(&qword_27EF5DF30, &qword_24A837150);
        v30 = sub_24A82D024();
        v32 = sub_24A68761C(v30, v31, v129);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2048;
        v33 = *(a1 + 2);

        *(v28 + 14) = v33;

        *(v28 + 22) = 2080;
        swift_getErrorValue();
        v34 = sub_24A82DC74();
        v36 = sub_24A68761C(v34, v35, v129);

        *(v28 + 24) = v36;
        _os_log_impl(&dword_24A675000, v26, v27, "%{public}s: received %ld items (error=%s)", v28, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v29, -1, -1);
        MEMORY[0x24C21E1D0](v28, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v54 = *(*(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration) + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers);
      if (v54)
      {
        v55 = *(v54 + 64);
        if (v55)
        {
          v56 = *(v54 + 72);
          v57 = a2;
          sub_24A6A7314(v55);
          v55(v3, MEMORY[0x277D84F90], MEMORY[0x277D84F90], a2);

          sub_24A6AFFE8(v55);
        }
      }

      return;
    }

LABEL_59:
    swift_once();
    goto LABEL_3;
  }

  v125 = v17;
  v126 = v15;
  v127 = v10;
  v37 = v3;
  v38 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration);
  v39 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers;
  v40 = *(v38 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers);
  if (v40)
  {
    v41 = *(v40 + 48);
    if (v41)
    {
      v117 = v38;
      v118 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers;
      v42 = *(v40 + 56);

      v120 = v41;
      v121 = a1;
      v119 = v42;
      v43 = v41(v37, a1);
      v44 = *(v43 + 16);
      v124 = v11;
      v122 = v37;
      if (v44)
      {
        v129[0] = MEMORY[0x277D84F90];
        sub_24A6FC900(0, v44, 0);
        v45 = v129[0];
        v46 = *(v19 + 80);
        v123 = v43;
        v47 = v43 + ((v46 + 32) & ~v46);
        v48 = *(v19 + 72);
        do
        {
          sub_24A69F134(v47, v22, type metadata accessor for FMIPItem);
          v50 = *(v22 + 44);
          v49 = *(v22 + 45);

          sub_24A69F2C4(v22, type metadata accessor for FMIPItem);
          v129[0] = v45;
          v52 = *(v45 + 16);
          v51 = *(v45 + 24);
          a1 = (v52 + 1);
          if (v52 >= v51 >> 1)
          {
            sub_24A6FC900((v51 > 1), v52 + 1, 1);
            v45 = v129[0];
          }

          *(v45 + 16) = a1;
          v53 = v45 + 16 * v52;
          *(v53 + 32) = v50;
          *(v53 + 40) = v49;
          v47 += v48;
          --v44;
        }

        while (v44);

        v11 = v124;
        v71 = *(v45 + 16);
        if (v71)
        {
LABEL_28:
          v72 = 0;
          v3 = (v11 + 48);
          v73 = (v11 + 32);
          a2 = (v45 + 40);
          v74 = MEMORY[0x277D84F90];
          v123 = v3;
          while (v72 < *(v45 + 16))
          {
            a1 = *(a2 - 1);
            v75 = *a2;

            sub_24A82CA44();
            v76 = v127;

            if ((*v3)(v9, 1, v76) == 1)
            {
              sub_24A67F378(v9, &qword_27EF5D020, &qword_24A830E40);
            }

            else
            {
              v77 = v9;
              v78 = v71;
              a1 = *v73;
              v79 = v125;
              v80 = v77;
              (*v73)(v125);
              (a1)(v126, v79, v76);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v74 = sub_24A78029C(0, v74[2] + 1, 1, v74);
              }

              v81 = v74;
              v82 = v74[2];
              v83 = v81;
              v84 = v81[3];
              v71 = v78;
              if (v82 >= v84 >> 1)
              {
                v83 = sub_24A78029C(v84 > 1, v82 + 1, 1, v83);
              }

              v9 = v80;
              v83[2] = v82 + 1;
              v85 = v83 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v82;
              v74 = v83;
              (a1)(v85, v126, v127);
              v3 = v123;
            }

            ++v72;
            a2 += 2;
            if (v71 == v72)
            {
              goto LABEL_40;
            }
          }

          __break(1u);
          goto LABEL_59;
        }
      }

      else
      {

        v45 = MEMORY[0x277D84F90];
        v71 = *(MEMORY[0x277D84F90] + 16);
        if (v71)
        {
          goto LABEL_28;
        }
      }

      v74 = MEMORY[0x277D84F90];
LABEL_40:

      v86 = v118;
      v87 = v122;
      if (v74[2])
      {
        v88 = v74;
        v89 = v121;
        if (qword_281515DC8 != -1)
        {
          swift_once();
        }

        v90 = sub_24A82CDC4();
        sub_24A6797D0(v90, qword_281518F88);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        v91 = sub_24A82CD94();
        v92 = sub_24A82D504();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          *v93 = 136446722;
          v128 = *v87;
          v129[0] = v94;
          sub_24A6BBA94(&qword_27EF5DF30, &qword_24A837150);
          v95 = sub_24A82D024();
          v97 = sub_24A68761C(v95, v96, v129);

          *(v93 + 4) = v97;
          *(v93 + 12) = 2048;
          v98 = *(v89 + 2);

          *(v93 + 14) = v98;

          *(v93 + 22) = 2048;
          v99 = *(v88 + 16);

          *(v93 + 24) = v99;

          _os_log_impl(&dword_24A675000, v91, v92, "🥑 %{public}s: received %ld items but asking for %ld locations…", v93, 0x20u);
          sub_24A6876E8(v94);
          MEMORY[0x24C21E1D0](v94, -1, -1);
          MEMORY[0x24C21E1D0](v93, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        v110 = v120;
        v111 = *(v87 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController);

        v112 = sub_24A713EE8(v88);

        v113 = sub_24A696F50(MEMORY[0x277D84F90]);
        LOBYTE(v129[0]) = 1;
        v129[1] = 2;
        v129[2] = v112;
        v129[3] = v113;
        v130 = 1;
        sub_24A808850(v129);

        v70 = v110;
        goto LABEL_56;
      }

      v100 = v121;
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v101 = sub_24A82CDC4();
      sub_24A6797D0(v101, qword_281518F88);
      swift_bridgeObjectRetain_n();

      v102 = sub_24A82CD94();
      v103 = sub_24A82D504();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *v104 = 136446466;
        v128 = *v87;
        v129[0] = v105;
        sub_24A6BBA94(&qword_27EF5DF30, &qword_24A837150);
        v106 = sub_24A82D024();
        v108 = sub_24A68761C(v106, v107, v129);

        *(v104 + 4) = v108;
        *(v104 + 12) = 2048;
        v109 = *(v100 + 2);

        *(v104 + 14) = v109;

        _os_log_impl(&dword_24A675000, v102, v103, "%{public}s: received %ld items but no location asked", v104, 0x16u);
        sub_24A6876E8(v105);
        MEMORY[0x24C21E1D0](v105, -1, -1);
        MEMORY[0x24C21E1D0](v104, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v114 = v120;
      v115 = *(v117 + v86);
      if (!v115 || (v68 = *(v115 + 64)) == 0)
      {
        v70 = v120;
        goto LABEL_56;
      }

      v116 = *(v115 + 72);

      v68(v87, MEMORY[0x277D84F90], MEMORY[0x277D84F90], 0);
      sub_24A6AFFE8(v114);
LABEL_26:
      v70 = v68;
LABEL_56:
      sub_24A6AFFE8(v70);
      return;
    }
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v58 = sub_24A82CDC4();
  sub_24A6797D0(v58, qword_281518F88);
  swift_bridgeObjectRetain_n();

  v59 = sub_24A82CD94();
  v60 = sub_24A82D504();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v61 = 136446466;
    v128 = *v37;
    v129[0] = v62;
    sub_24A6BBA94(&qword_27EF5DF30, &qword_24A837150);
    v63 = sub_24A82D024();
    v65 = sub_24A68761C(v63, v64, v129);

    *(v61 + 4) = v65;
    *(v61 + 12) = 2048;
    v66 = *(a1 + 2);

    *(v61 + 14) = v66;

    _os_log_impl(&dword_24A675000, v59, v60, "%{public}s: received %ld items", v61, 0x16u);
    sub_24A6876E8(v62);
    MEMORY[0x24C21E1D0](v62, -1, -1);
    MEMORY[0x24C21E1D0](v61, -1, -1);

    v67 = *(v38 + v39);
    if (!v67)
    {
      return;
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v67 = *(v38 + v39);
    if (!v67)
    {
      return;
    }
  }

  v68 = *(v67 + 64);
  if (v68)
  {
    v69 = *(v67 + 72);

    v68(v37, a1, a1, 0);
    goto LABEL_26;
  }
}

void sub_24A73D388(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration);
  v7 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers;
  v8 = *(v6 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers);
  if (v8)
  {
    v9 = *(v8 + 48);
    if (v9)
    {
      v10 = *(v8 + 56);

      a1 = v9(v3, a1);
      sub_24A6AFFE8(v9);
      if (!a2)
      {
        goto LABEL_4;
      }

LABEL_10:
      v21 = a2;
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v22 = sub_24A82CDC4();
      sub_24A6797D0(v22, qword_281518F88);
      v23 = a2;

      v24 = sub_24A82CD94();
      v25 = sub_24A82D504();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v26 = 136446722;
        v44 = *v3;
        v45 = v42;
        sub_24A6BBA94(&qword_27EF5DF30, &qword_24A837150);
        v27 = sub_24A82D024();
        v29 = v7;
        v30 = v6;
        v31 = sub_24A68761C(v27, v28, &v45);

        *(v26 + 4) = v31;
        *(v26 + 12) = 2048;
        v32 = *(a1 + 16);

        *(v26 + 14) = v32;

        *(v26 + 22) = 2080;
        swift_getErrorValue();
        v33 = sub_24A82DC74();
        v35 = sub_24A68761C(v33, v34, &v45);

        *(v26 + 24) = v35;
        _os_log_impl(&dword_24A675000, v24, v25, "%{public}s: received %ld items (with locations asked) (error=%s)", v26, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v42, -1, -1);
        MEMORY[0x24C21E1D0](v26, -1, -1);

        v36 = *(v30 + v29);
        if (!v36)
        {
          goto LABEL_18;
        }
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v36 = *(v6 + v7);
        if (!v36)
        {
LABEL_18:

          return;
        }
      }

      v37 = *(v36 + 64);
      if (v37)
      {
        v38 = *(v36 + 72);
        v39 = a2;
        sub_24A6A7314(v37);
        v37(v3, MEMORY[0x277D84F90], MEMORY[0x277D84F90], a2);

        sub_24A6AFFE8(v37);
      }

      goto LABEL_18;
    }
  }

  if (a2)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v11 = sub_24A82CDC4();
  sub_24A6797D0(v11, qword_281518F88);
  swift_bridgeObjectRetain_n();

  v12 = sub_24A82CD94();
  v13 = sub_24A82D504();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136446466;
    v43 = *v3;
    v45 = v15;
    sub_24A6BBA94(&qword_27EF5DF30, &qword_24A837150);
    v16 = sub_24A82D024();
    v18 = sub_24A68761C(v16, v17, &v45);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    v19 = *(a1 + 16);

    *(v14 + 14) = v19;

    _os_log_impl(&dword_24A675000, v12, v13, "%{public}s: received %ld items with locations", v14, 0x16u);
    sub_24A6876E8(v15);
    MEMORY[0x24C21E1D0](v15, -1, -1);
    MEMORY[0x24C21E1D0](v14, -1, -1);

    v20 = *(v6 + v7);
    if (!v20)
    {
      goto LABEL_22;
    }

LABEL_20:
    v40 = *(v20 + 64);
    if (v40)
    {
      v41 = *(v20 + 72);

      v40(v3, a1, a1, 0);
      sub_24A6AFFE8(v40);
    }

    goto LABEL_22;
  }

  swift_bridgeObjectRelease_n();
  v20 = *(v6 + v7);
  if (v20)
  {
    goto LABEL_20;
  }

LABEL_22:
}

uint64_t FMIPManager.refreshSafeLocations(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);
  sub_24A6A7314(a1);
  v7 = sub_24A82CD94();
  v8 = sub_24A82D504();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 == 0;
    sub_24A6AFFE8(a1);
    _os_log_impl(&dword_24A675000, v7, v8, "FMIPManager: refreshSafeLocations, isCompletionNil? %{BOOL}d", v9, 8u);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  else
  {
    sub_24A6AFFE8(a1);
  }

  v10 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_safeLocationRefreshingController);

  sub_24A6F176C(a1, a2);
}

uint64_t FMIPManager.refreshShares(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A82CDC4();
  sub_24A6797D0(v10, qword_281518F88);
  v11 = sub_24A82CD94();
  v12 = sub_24A82D504();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24A675000, v11, v12, "FMIPManager: refreshShares", v13, 2u);
    MEMORY[0x24C21E1D0](v13, -1, -1);
  }

  v14 = sub_24A82D354();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v3;
  v15[5] = a1;
  v15[6] = a2;

  sub_24A7382F4(0, 0, v9, &unk_24A836DC0, v15);
}

uint64_t sub_24A73DBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  return MEMORY[0x2822009F8](sub_24A73DC04, 0, 0);
}

uint64_t sub_24A73DC04()
{
  v1 = *(*(v0 + 152) + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconSharingController);
  *(v0 + 176) = v1;
  return MEMORY[0x2822009F8](sub_24A73DC30, v1, 0);
}

uint64_t sub_24A73DC30()
{
  v1 = *(v0[22] + 112);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24A73DD50;
  v2 = swift_continuation_init();
  v0[17] = sub_24A6BBA94(&qword_27EF5DF80, &unk_24A837190);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24A7385F4;
  v0[13] = &unk_285DC6A10;
  v0[14] = v2;
  [v1 allSharesWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24A73DD50()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24A73DE44, v1, 0);
}

uint64_t sub_24A73DE44()
{
  v1 = v0[22];
  sub_24A6B1D48(v0[18]);

  v0[23] = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_24A73DECC, 0, 0);
}

uint64_t sub_24A73DECC()
{
  v1 = *(v0 + 168);
  (*(v0 + 160))(*(v0 + 184));

  v2 = *(v0 + 8);

  return v2();
}

void FMIPManager.unknownBeacons(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_ownerSession);
  sub_24A82CAA4();
  v7 = sub_24A82D224();
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24A73E030;
  v9[3] = &unk_285DC5B70;
  v8 = _Block_copy(v9);

  [v6 unknownBeaconsForUUIDs:v7 completion:v8];
  _Block_release(v8);
}

uint64_t sub_24A73E030(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_24A679170(0, &qword_27EF5DF78, 0x277D496E0);
  v3 = sub_24A82D244();

  v2(v3);
}

void FMIPManager.perform(action:completion:)(uint64_t a1, void (*a2)(__int128 *, void, void *, uint64_t), uint64_t a3)
{
  if (!*(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_actionsController))
  {
    LOBYTE(v59) = 0;
    sub_24A6EE8A0();
    v30 = swift_allocError();
    *v31 = 5;
    a2(&v59, 0, v30, a1);

    return;
  }

  v7 = v3;
  v8 = qword_281515DC8;
  v50 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_actionsController);

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_281518F88);

  v10 = sub_24A82CD94();
  v11 = sub_24A82D504();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = a1;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v59 = v14;
    *v13 = 136315138;
    v15 = (*(*v12 + 344))();
    v17 = sub_24A68761C(v15, v16, &v59);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_24A675000, v10, v11, "FMIPManager: perform device action %s", v13, 0xCu);
    sub_24A6876E8(v14);
    MEMORY[0x24C21E1D0](v14, -1, -1);
    v18 = v13;
    a1 = v12;
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  v19 = sub_24A73E6E8(a1, &v59);
  v20 = *(&v59 + 1);
  if (*(&v59 + 1))
  {
    v21 = v59;
    v22 = *(&v60 + 1);
    v23 = v60;
    LODWORD(v19) = v61;
    v24 = vmovl_u8(*&v19).u64[0];
    v25 = *(&v61 + 1);
    v27 = *(&v62 + 1);
    v28 = v62;
    v26 = *v63;
    v29 = *&v63[8];
  }

  else
  {
    v32 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
    sub_24A6BBA94(&qword_27EF5DEF8, &unk_24A836D40);
    sub_24A82D574();
    v20 = *(&v59 + 1);
    if (!*(&v59 + 1))
    {
LABEL_18:
      __break(1u);
      return;
    }

    v33.i32[0] = v61;
    v24 = vmovl_u8(v33).u64[0];
    v29 = *&v63[8];
    v27 = *(&v62 + 1);
    v26 = *v63;
    v25 = *(&v61 + 1);
    v28 = v62;
    v22 = *(&v60 + 1);
    v23 = v60;
    v21 = v59;
  }

  *&v54 = v21;
  *(&v54 + 1) = v20;
  *&v55 = v23;
  *(&v55 + 1) = v22;
  v34 = vand_s8(v24, 0x1000100010001);
  LODWORD(v56) = vuzp1_s8(v34, v34).u32[0];
  *(&v56 + 1) = v25;
  *&v57 = v28;
  *(&v57 + 1) = v27;
  *v58 = v26;
  *&v58[8] = v29;
  *&v63[16] = *(&v29 + 1);
  v59 = v54;
  v60 = v55;
  v62 = v57;
  *v63 = *v58;
  v61 = v56;
  v35 = swift_allocObject();
  v35[2] = v7;
  v35[3] = a1;
  v35[4] = a2;
  v35[5] = a3;
  v36 = qword_281513E40;

  if (v36 != -1)
  {
    swift_once();
  }

  activity = _os_activity_create(&dword_24A675000, "FMIPDeviceActionsController.perform", qword_281513E48[0], OS_ACTIVITY_FLAG_DEFAULT);
  v37 = swift_allocObject();
  v38 = v62;
  *(v37 + 48) = v61;
  *(v37 + 64) = v38;
  *(v37 + 80) = *v63;
  v39 = *&v63[16];
  v40 = v60;
  *(v37 + 16) = v59;
  *(v37 + 32) = v40;
  *(v37 + 96) = v39;
  *(v37 + 104) = v50;
  *(v37 + 112) = a1;
  *(v37 + 120) = sub_24A74F274;
  *(v37 + 128) = v35;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_24A74F280;
  *(v41 + 24) = v37;
  aBlock[4] = sub_24A680674;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6805E4;
  aBlock[3] = &unk_285DC5C10;
  v42 = _Block_copy(aBlock);
  v43 = _Block_copy(v42);
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_24A6A9A80;
  *(v45 + 24) = v44;
  v52[4] = sub_24A680674;
  v52[5] = v45;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 1107296256;
  v52[2] = sub_24A6805E4;
  v52[3] = &unk_285DC5C88;
  v46 = _Block_copy(v52);

  sub_24A6EF948(&v54, v51);

  os_activity_apply(activity, v46);
  _Block_release(v46);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  sub_24A6EF9B4(&v54);
  _Block_release(v42);
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_17;
  }

  swift_unknownObjectRelease();

  v48 = swift_isEscapingClosureAtFileLocation();

  if (v48)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }
}

double sub_24A73E6E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  sub_24A6BBA94(&qword_27EF5E260, &qword_24A837850);
  sub_24A82D574();
  v6 = v19;
  v7 = *(v19 + 16);
  if (v7)
  {
    v8 = a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
    v9 = 32;
    while (1)
    {
      v10 = *(v6 + v9 + 80);
      v11 = *(v6 + v9 + 64);
      v12 = *(v6 + v9 + 32);
      v22 = *(v6 + v9 + 48);
      v23 = v11;
      v13 = *(v6 + v9 + 16);
      v19 = *(v6 + v9);
      v20 = v13;
      v24 = v10;
      v21 = v12;
      if (*(&v22 + 1) == *(v8 + 32) && v23 == *(v8 + 40))
      {
        break;
      }

      if (sub_24A82DC04())
      {
        break;
      }

      v9 += 88;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    sub_24A6EF948(&v19, v18);

    v15 = v22;
    v16 = v23;
    *(a2 + 32) = v21;
    *(a2 + 48) = v15;
    *(a2 + 64) = v16;
    *(a2 + 80) = v24;
    result = *&v19;
    v17 = v20;
    *a2 = v19;
    *(a2 + 16) = v17;
  }

  else
  {
LABEL_7:

    *(a2 + 80) = 0;
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_24A73E844(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a7;
  v41 = a8;
  v38 = a6;
  v44 = a4;
  v45 = a2;
  v11 = sub_24A82CE54();
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_24A82CDF4();
  v46 = *(v43 - 8);
  v15 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v39 = *a1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v18 = sub_24A82CDC4();
  sub_24A6797D0(v18, qword_281518F88);
  v19 = a3;
  v20 = sub_24A82CD94();
  v21 = sub_24A82D504();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = v17;
    v23 = v22;
    v24 = swift_slowAlloc();
    v49 = a3;
    aBlock[0] = v24;
    *v23 = 136315394;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v25 = sub_24A82D624();
    v27 = sub_24A68761C(v25, v26, aBlock);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2048;
    *(v23 + 14) = qword_24A837250[v37];
    _os_log_impl(&dword_24A675000, v20, v21, "FMIPManager: performed action with error?: %s status?: %ld", v23, 0x16u);
    sub_24A6876E8(v24);
    MEMORY[0x24C21E1D0](v24, -1, -1);
    MEMORY[0x24C21E1D0](v23, -1, -1);
  }

  v28 = *(a5 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  v29 = v42;
  sub_24A82CDE4();
  v30 = swift_allocObject();
  v31 = v44;
  *(v30 + 16) = v45;
  *(v30 + 24) = a5;
  v32 = v40;
  v33 = v41;
  *(v30 + 32) = v38;
  *(v30 + 40) = v32;
  *(v30 + 48) = v33;
  *(v30 + 56) = v39;
  *(v30 + 64) = a3;
  *(v30 + 72) = v31;
  aBlock[4] = sub_24A7531A0;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC68A8;
  v34 = _Block_copy(aBlock);
  v35 = a3;

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v14, v29, v34);
  _Block_release(v34);
  (*(v47 + 8))(v14, v48);
  (*(v46 + 8))(v29, v43);
}

void sub_24A73EC30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t, uint64_t), uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v15 = *(a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);

    v16 = sub_24A757C70(a1);

    if (*(v16 + 16))
    {
      v17 = "FMIPManager: updateDevices";
      v18 = &unk_285DC6980;
      v19 = &unk_285DC6998;
      v20 = sub_24A7531EC;
    }

    else
    {

      sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
      v21 = *(type metadata accessor for FMIPDevice() - 8);
      v22 = *(v21 + 72);
      v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_24A8327A0;
      sub_24A69F134(a3 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v16 + v23, type metadata accessor for FMIPDevice);
      v17 = "FMIPManager: removeDevices";
      v18 = &unk_285DC68E0;
      v19 = &unk_285DC68F8;
      v20 = sub_24A7531B8;
    }

    sub_24A73EE40(v16, v17, v18, v20, v19);
  }

  v25 = a6;
  a4(&v25, a1, a7, a8);
  v24 = *(*(a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration) + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems);
  FMIPManager.refresh(subsystems:)(&v24);
}

uint64_t sub_24A73EE40(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v35 = a2;
  v36 = a3;
  v6 = v5;
  v8 = sub_24A82CE54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A82CDF4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v18 = sub_24A82CDC4();
  sub_24A6797D0(v18, qword_281518F88);
  v19 = sub_24A82CD94();
  v20 = sub_24A82D504();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v34 = v6;
    v22 = v14;
    v23 = v9;
    v24 = a1;
    v25 = v13;
    v26 = v8;
    v27 = v21;
    *v21 = 0;
    _os_log_impl(&dword_24A675000, v19, v20, v35, v21, 2u);
    v28 = v27;
    v8 = v26;
    v13 = v25;
    a1 = v24;
    v9 = v23;
    v14 = v22;
    v6 = v34;
    MEMORY[0x24C21E1D0](v28, -1, -1);
  }

  v29 = *(v6 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  sub_24A82CDE4();
  v30 = swift_allocObject();
  *(v30 + 16) = v6;
  *(v30 + 24) = a1;
  aBlock[4] = v37;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = v38;
  v31 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v12, v17, v31);
  _Block_release(v31);
  (*(v9 + 8))(v12, v8);
  (*(v14 + 8))(v17, v13);
}

void FMIPManager.perform(action:completion:)(uint64_t a1, uint64_t (*a2)(_BYTE *, void *), uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemActionsController);
  if (v6)
  {
    v8 = qword_281515DC8;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_24A82CDC4();
    sub_24A6797D0(v9, qword_281518F88);
    v10 = sub_24A82CD94();
    v11 = sub_24A82D504();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24A675000, v10, v11, "FMIPManager: perform item action FMIPPlayUTSoundAction", v12, 2u);
      MEMORY[0x24C21E1D0](v12, -1, -1);
    }

    v14 = MEMORY[0x24C21D990](v13);
    sub_24A720E6C(a1, v6, a2, a3);
    objc_autoreleasePoolPop(v14);
  }

  else
  {
    v17 = 0;
    sub_24A72A0CC();
    v15 = swift_allocError();
    *v16 = 11;
    a2(&v17, v15);
  }
}

uint64_t sub_24A73F314(char *a1, void *a2, uint64_t (*a3)(void, void))
{
  v5 = *a1;
  v6 = *a1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518F88);
  v8 = a2;
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();

  if (os_log_type_enabled(v9, v10))
  {
    v18 = a3;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315394;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v13 = sub_24A82D624();
    v15 = sub_24A68761C(v13, v14, &v19);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = qword_24A8372E0[v5];
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPManager: performed item action with error?: %s status?: %ld", v11, 0x16u);
    sub_24A6876E8(v12);
    MEMORY[0x24C21E1D0](v12, -1, -1);
    v16 = v11;
    a3 = v18;
    MEMORY[0x24C21E1D0](v16, -1, -1);
  }

  LOBYTE(v19) = v6;
  return a3(&v19, a2);
}

uint64_t FMIPManager.perform(action:completion:)(uint64_t a1, uint64_t (*a2)(_BYTE *, char *, void *), uint64_t a3)
{
  v7 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  v11 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemActionsController);
  if (v11)
  {
    v12 = qword_281515DC8;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_24A82CDC4();
    sub_24A6797D0(v13, qword_281518F88);
    v14 = sub_24A82CD94();
    v15 = sub_24A82D504();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24A675000, v14, v15, "FMIPManager: perform item action FMIPPlayUTSoundAction", v16, 2u);
      MEMORY[0x24C21E1D0](v16, -1, -1);
    }

    sub_24A7295F4(a1, v11, a2, a3);
  }

  else
  {
    v22 = 0;
    v18 = sub_24A82C8B4();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    sub_24A72A0CC();
    v19 = swift_allocError();
    *v20 = 11;
    a2(&v22, v10, v19);

    return sub_24A67F378(v10, &unk_27EF5CCB8, &qword_24A82FDB0);
  }
}

uint64_t sub_24A73F72C(char *a1, uint64_t a2, void *a3, uint64_t (*a4)(void, void, void))
{
  v7 = *a1;
  v8 = *a1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_281518F88);
  v10 = a3;
  v11 = sub_24A82CD94();
  v12 = sub_24A82D504();

  if (os_log_type_enabled(v11, v12))
  {
    v20 = a4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315394;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v15 = sub_24A82D624();
    v17 = sub_24A68761C(v15, v16, &v21);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    *(v13 + 14) = qword_24A8372E0[v7];
    _os_log_impl(&dword_24A675000, v11, v12, "FMIPManager: performed item action with error?: %s status?: %ld", v13, 0x16u);
    sub_24A6876E8(v14);
    MEMORY[0x24C21E1D0](v14, -1, -1);
    v18 = v13;
    a4 = v20;
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  LOBYTE(v21) = v8;
  return a4(&v21, a2, a3);
}

void FMIPManager.perform(action:completion:)(uint64_t a1, void (*a2)(uint64_t *, void, void, void *, uint64_t), void *a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemActionsController);
  if (v6)
  {

    sub_24A72EF54(a1, v6, a2, a3);
  }

  else
  {
    v10 = 0;
    sub_24A72A0CC();
    v8 = swift_allocError();
    *v9 = 11;
    a2(&v10, 0, 0, v8, 2);
  }
}

uint64_t sub_24A73FA14(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t (*a6)(uint64_t **, uint64_t, uint64_t, void *, uint64_t))
{
  v24 = *a1;
  v11 = *a1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A82CDC4();
  sub_24A6797D0(v12, qword_281518F88);
  v13 = a4;
  v14 = sub_24A82CD94();
  v15 = sub_24A82D504();

  if (os_log_type_enabled(v14, v15))
  {
    v23 = v11;
    v16 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v25 = v22;
    *v16 = 136315394;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v17 = sub_24A82D624();
    v19 = sub_24A68761C(v17, v18, &v25);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2048;
    *(v16 + 14) = qword_24A8372E0[v24];
    _os_log_impl(&dword_24A675000, v14, v15, "FMIPManager: performed safe location action with error?: %s status?: %ld", v16, 0x16u);
    sub_24A6876E8(v22);
    MEMORY[0x24C21E1D0](v22, -1, -1);
    v20 = v16;
    v11 = v23;
    MEMORY[0x24C21E1D0](v20, -1, -1);
  }

  LOBYTE(v25) = v11;
  return a6(&v25, a2, a3, a4, a5);
}

void FMIPManager.perform(action:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemActionsController);
  if (v6)
  {
    v8 = qword_281515DC8;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_24A82CDC4();
    sub_24A6797D0(v9, qword_281518F88);
    v10 = sub_24A82CD94();
    v11 = sub_24A82D504();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24A675000, v10, v11, "FMIPManager: perform item action FMIPDisableTagSafetyAlertAction", v12, 2u);
      MEMORY[0x24C21E1D0](v12, -1, -1);
    }

    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a2;
    v14[4] = a3;
    v15 = *(v6 + 24);
    v16 = *(a1 + 16);
    v20[4] = sub_24A74F2D8;
    v20[5] = v14;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 1107296256;
    v20[2] = sub_24A7386AC;
    v20[3] = &unk_285DC5CD8;
    v17 = _Block_copy(v20);

    [v15 disableUTAppAlert:v16 completion:v17];
    _Block_release(v17);
  }

  else
  {
    sub_24A72A0CC();
    v18 = swift_allocError();
    *v19 = 11;
    a2();
  }
}

uint64_t sub_24A73FEB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController);

    sub_24A6A7448(0, 0);
  }

  return a3(a1);
}

void FMIPManager.perform(action:completion:)(uint64_t a1, void (*a2)(uint64_t *, uint64_t, void *), void **a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemActionsController);
  if (v6)
  {
    v7 = v3;
    v9 = qword_281515DC8;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_24A82CDC4();
    sub_24A6797D0(v10, qword_281518F88);

    v11 = sub_24A82CD94();
    v12 = sub_24A82D504();

    if (os_log_type_enabled(v11, v12))
    {
      v23 = a2;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24[0] = v14;
      *v13 = 136315138;
      v15 = FMIPItemAction.debugDescription.getter();
      v17 = sub_24A68761C(v15, v16, v24);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_24A675000, v11, v12, "FMIPManager: perform item action %s", v13, 0xCu);
      sub_24A6876E8(v14);
      MEMORY[0x24C21E1D0](v14, -1, -1);
      v18 = v13;
      a2 = v23;
      MEMORY[0x24C21E1D0](v18, -1, -1);
    }

    v20 = MEMORY[0x24C21D990](v19);
    sub_24A72135C(a1, v6, v7, a1, a2, a3);
    objc_autoreleasePoolPop(v20);
  }

  else
  {
    LOBYTE(v24[0]) = 0;
    sub_24A72A0CC();
    v21 = swift_allocError();
    *v22 = 11;
    a2(v24, 0, v21);
  }
}