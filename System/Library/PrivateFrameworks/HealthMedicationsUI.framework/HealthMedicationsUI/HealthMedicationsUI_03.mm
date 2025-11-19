uint64_t sub_2281BA3F8(unsigned __int8 *a1)
{
  v3 = sub_228390460();
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v3);
  v69 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22838FFC0();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  MEMORY[0x28223BE20](v6);
  v67 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_2281BBE94(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v62 - v12;
  v70 = sub_228390170();
  v68 = *(v70 - 8);
  v14 = *(v68 + 64);
  MEMORY[0x28223BE20](v70);
  v66 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_228391430();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_228391590();
  v62 = *(v18 - 8);
  v63 = v18;
  v19 = *(v62 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22838F6C0();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BBE94(0, &qword_27D824550, type metadata accessor for CycleData, v9);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v62 - v28;
  v30 = type metadata accessor for CycleData();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a1;
  v36 = v1;
  sub_22838F620();
  sub_2282CD948(v36, v25, v29);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_2281BC7AC(v29, &qword_27D824550, type metadata accessor for CycleData, MEMORY[0x277D83D88], sub_2281BBE94);
  }

  else
  {
    sub_2281BC0AC(v29, v34, type metadata accessor for CycleData);
    if (v35)
    {
      sub_2283913C0();
      CycleData.localizedDescription.getter();
      sub_228391540();
      v37 = objc_opt_self();
      v38 = [v37 labelColor];
      v39 = sub_228391450();
      sub_228391420();
      v39(v73, 0);
      v40 = objc_opt_self();
      v41 = *MEMORY[0x277D769D0];
      v42 = [v40 preferredFontForTextStyle_];
      v43 = sub_228391450();
      sub_228391410();
      v43(v73, 0);
      sub_228391510();
      CycleData.localizedNextPhaseDateChangeDescription.getter();
      sub_2283913D0();
      sub_228391460();
      sub_2283914B0();
      v44 = [v37 secondaryLabelColor];
      v45 = sub_2283914A0();
      sub_228391420();
      v45(v73, 0);
      v46 = [v40 preferredFontForTextStyle_];
      v47 = sub_2283914A0();
      sub_228391410();
      v47(v73, 0);
      v48 = sub_2283914C0();
      *v49 = 0x4028000000000000;
      v48(v73, 0);
      v50 = sub_2283914C0();
      *(v51 + 16) = 0x4028000000000000;
      v50(v73, 0);
      v52 = v63;
      v73[3] = v63;
      v73[4] = MEMORY[0x277D74C30];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);
      v54 = v62;
      (*(v62 + 16))(boxed_opaque_existential_1, v21, v52);
      sub_228391390();
      v55 = [v37 tertiarySystemGroupedBackgroundColor];
      sub_228391370();
      v56 = sub_2283913A0();
      (*(*(v56 - 8) + 56))(v13, 0, 1, v56);
      (*(v64 + 104))(v67, *MEMORY[0x277D10F98], v65);
      (*(v71 + 104))(v69, *MEMORY[0x277D11140], v72);
      v57 = v66;
      sub_228390160();
      sub_2281BBDA4();
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_228397F40;
      v59 = v70;
      *(v58 + 56) = v70;
      *(v58 + 64) = sub_2281BCDF8(&qword_27D824520, MEMORY[0x277D11000]);
      v60 = __swift_allocate_boxed_opaque_existential_1((v58 + 32));
      (*(v68 + 32))(v60, v57, v59);
      (*(v54 + 8))(v21, v52);
      sub_2281BCD98(v34, type metadata accessor for CycleData);
      return v58;
    }

    sub_2281BCD98(v34, type metadata accessor for CycleData);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2281BACD8(_BYTE *a1)
{
  v2 = sub_228390460();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v45 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22838FFC0();
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BBE94(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - v11;
  v13 = sub_228390170();
  v44 = *(v13 - 8);
  v14 = *(v44 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_228391590();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != 1)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2283913C0();
  sub_2281B60A4();
  sub_228391540();
  v22 = objc_opt_self();
  v23 = [v22 secondaryLabelColor];
  v40 = v13;
  v24 = v3;
  v38 = v16;
  v25 = sub_228391450();
  v39 = v2;
  v26 = v25;
  sub_228391420();
  v26(v46, 0);
  v27 = [objc_opt_self() preferredFontForTextStyle_];
  v28 = sub_228391450();
  sub_228391410();
  v28(v46, 0);
  v46[3] = v17;
  v46[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  (*(v18 + 16))(boxed_opaque_existential_1, v21, v17);
  sub_228391390();
  v30 = [v22 tertiarySystemGroupedBackgroundColor];
  sub_228391370();
  v31 = sub_2283913A0();
  (*(*(v31 - 8) + 56))(v12, 0, 1, v31);
  (*(v41 + 104))(v43, *MEMORY[0x277D10F98], v42);
  (*(v24 + 104))(v45, *MEMORY[0x277D11140], v39);
  v32 = v38;
  sub_228390160();
  sub_2281BBDA4();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_228397F40;
  v34 = v40;
  *(v33 + 56) = v40;
  *(v33 + 64) = sub_2281BCDF8(&qword_27D824520, MEMORY[0x277D11000]);
  v35 = __swift_allocate_boxed_opaque_existential_1((v33 + 32));
  (*(v44 + 32))(v35, v32, v34);
  (*(v18 + 8))(v21, v17);
  return v33;
}

uint64_t sub_2281BB24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_2282604EC();
    if (!v3)
    {
      sub_2282604EC();
      if (!v5)
      {
        goto LABEL_7;
      }

      goto LABEL_4;
    }

    sub_2282604EC();
    if (v4)
    {
LABEL_4:
    }
  }

LABEL_7:
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v6 = sub_2283929C0();

  return v6;
}

uint64_t sub_2281BB350(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = a3;
  sub_2281BC944();
  v43 = *(v15 - 8);
  v44 = v15;
  v16 = *(v43 + 64);
  MEMORY[0x28223BE20](v15);
  v42 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_228390EC0();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v48[3] = a7;
  v48[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a1, a7);
  v45 = *a5;
  v21 = (a6 + qword_27D8244C0);
  *v21 = 0xD000000000000014;
  v21[1] = 0x80000002283A9440;
  v22 = qword_27D8244C8;
  sub_228390EB0();
  v23 = objc_allocWithZone(sub_228390EF0());
  *(a6 + v22) = sub_228390EE0();
  v24 = qword_27D8244D0;
  *(a6 + qword_27D8244D0) = 0;
  v25 = qword_27D8244E0;
  *(a6 + qword_27D8244E0) = 0;
  *(a6 + qword_27D8244E8) = MEMORY[0x277D84FA0];
  sub_228180FB0(v48, a6 + qword_27D8244B0);
  *(a6 + v24) = a2;
  *(a6 + qword_27D8244D8) = a4;
  v26 = *(a8 + 24);
  v27 = a2;

  v47 = v26(a7, a8);
  sub_2281BC72C();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *(a6 + qword_27D8244B8) = sub_228391890();
  *(a6 + qword_27D8244A8) = v45;
  v31 = *(a6 + v25);
  *(a6 + v25) = v46;

  sub_2281BBE94(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v32 = *(sub_22838FEF0() - 8);
  v33 = *(v32 + 72);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  *(swift_allocObject() + 16) = xmmword_228397F40;
  sub_22838FED0();
  v35 = sub_22838F920();
  v36 = *(v35 + qword_27D8244E0);
  if (v36)
  {

    v37 = v36;
  }

  else
  {
    LOBYTE(v47) = 1;

    v38 = v42;
    sub_2283918C0();
    sub_2281BCDF8(&qword_27D8245C8, sub_2281BC944);
    v39 = v44;
    v37 = sub_228391990();
    (*(v43 + 8))(v38, v39);
  }

  v47 = v37;
  swift_allocObject();
  swift_weakInit();
  sub_2281BC99C(0, &qword_27D8245D0, MEMORY[0x277D839B0], MEMORY[0x277CBCD88]);
  sub_2281BCA04();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  sub_2281AFAAC();

  __swift_destroy_boxed_opaque_existential_0(v48);
  return v35;
}

uint64_t sub_2281BB874(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](a1);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ScheduleDataSource(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  (*(v15 + 16))(v18, a1, a7);
  return sub_2281BB350(v18, a2, a3, a4, a5, v22, a7, a8);
}

unint64_t sub_2281BB998()
{
  result = qword_27D824500;
  if (!qword_27D824500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824500);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HistoryDisplayContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HistoryDisplayContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2281BBDA4()
{
  if (!qword_280DDB8D0)
  {
    sub_2281810DC(255, &qword_280DDCD60);
    v0 = sub_228393430();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDB8D0);
    }
  }
}

void sub_2281BBE0C()
{
  if (!qword_27D823918)
  {
    sub_2281810DC(255, &qword_27D827E00);
    v0 = sub_228393430();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823918);
    }
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2281BBE94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2281BBEF8()
{
  if (!qword_27D824538)
  {
    type metadata accessor for FutureDateRecencyState(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D824538);
    }
  }
}

uint64_t sub_2281BBF7C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2281BBE94(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2281BBFFC()
{
  if (!qword_27D824548)
  {
    v0 = sub_22838F440();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824548);
    }
  }
}

void sub_2281BC044()
{
  if (!qword_280DDB870)
  {
    sub_2281810DC(255, &qword_280DDB830);
    v0 = sub_228393430();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDB870);
    }
  }
}

uint64_t sub_2281BC0AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2281BC114()
{
  if (!qword_27D824558)
  {
    sub_228391130();
    sub_2281BBE94(255, &qword_27D824560, type metadata accessor for ScheduleDataSource.DoseItem, MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D824558);
    }
  }
}

unint64_t sub_2281BC1F4()
{
  result = qword_27D824568;
  if (!qword_27D824568)
  {
    sub_2281BBE94(255, &qword_27D824560, type metadata accessor for ScheduleDataSource.DoseItem, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824568);
  }

  return result;
}

uint64_t sub_2281BC27C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2281BC2E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_22817A958(255, a3, a4);
    v5 = sub_228392F00();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2281BC33C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_2281B0828(a1, v4, v5, v7, v6);
}

void sub_2281BC3FC()
{
  if (!qword_27D824578)
  {
    sub_2281BC2E4(255, &qword_280DDBA60, &unk_280DDBA68, 0x277D11570);
    sub_2281810DC(255, &qword_280DDB860);
    v0 = sub_228392350();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824578);
    }
  }
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  return sub_2281BC4A4(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2281BC4A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_destroy_helper_20(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

void sub_2281BC51C()
{
  if (!qword_27D824580)
  {
    sub_2281BC99C(255, &qword_27D824588, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCE30]);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_2281BC5E0();
    sub_2281A1504();
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824580);
    }
  }
}

unint64_t sub_2281BC5E0()
{
  result = qword_27D824590;
  if (!qword_27D824590)
  {
    sub_2281BC99C(255, &qword_27D824588, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCE30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824590);
  }

  return result;
}

void sub_2281BC660()
{
  if (!qword_27D824598)
  {
    sub_2281BC72C();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_2281BCDF8(&qword_27D8245A8, sub_2281BC72C);
    sub_2281A1504();
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824598);
    }
  }
}

void sub_2281BC72C()
{
  if (!qword_27D8245A0)
  {
    sub_2281BC2E4(255, &qword_280DDBA60, &unk_280DDBA68, 0x277D11570);
    v0 = sub_228391880();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8245A0);
    }
  }
}

uint64_t sub_2281BC7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2281BC80C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2281B03F8();
}

uint64_t sub_2281BC81C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2281BC884(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819D87C;

  return sub_2281B0828(a1, v4, v5, v7, v6);
}

void sub_2281BC944()
{
  if (!qword_27D8245C0)
  {
    v0 = sub_2283918B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8245C0);
    }
  }
}

void sub_2281BC99C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void, void))
{
  if (!*a2)
  {
    v5 = a4(0, a3, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2281BCA04()
{
  result = qword_27D8245D8;
  if (!qword_27D8245D8)
  {
    sub_2281BC99C(255, &qword_27D8245D0, MEMORY[0x277D839B0], MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8245D8);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2281BCA94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2281BCADC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2281BCB60()
{
  sub_2281BBFFC();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2281BCBE0()
{
  result = sub_22838F440();
  if (v1 <= 0x3F)
  {
    result = sub_22817A958(319, &qword_280DDB9C8, 0x277D11580);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2281BCCC8()
{
  result = qword_27D824608;
  if (!qword_27D824608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824608);
  }

  return result;
}

unint64_t sub_2281BCD1C(uint64_t a1)
{
  result = sub_2281BCD44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2281BCD44()
{
  result = qword_27D824610;
  if (!qword_27D824610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824610);
  }

  return result;
}

uint64_t sub_2281BCD98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2281BCDF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MedicationEducationAndComponentsItem.primaryEducationContent.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MedicationEducationAndComponentsItem.medicationName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MedicationEducationAndComponentsItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t MedicationEducationAndComponentsItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t MedicationEducationAndComponentsItem.uniqueIdentifier.getter()
{
  v1 = v0;
  v2 = *(type metadata accessor for MedicationEducationAndComponentsItem() + 36);
  sub_22838F4A0();
  sub_2281BD138(&qword_27D824618, 255, MEMORY[0x277CC95F0]);
  v4 = sub_228393420();
  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  MEMORY[0x22AAB5C80](*(v1 + 48), *(v1 + 56));
  return v4;
}

uint64_t type metadata accessor for MedicationEducationAndComponentsItem()
{
  result = qword_27D824650;
  if (!qword_27D824650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MedicationEducationAndComponentsItem.init(medicationName:primaryEducationContent:componentsList:hasEducation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  type metadata accessor for MedicationEducationAndComponentsItemCell();
  sub_2281BD138(&qword_27D824620, v14, type metadata accessor for MedicationEducationAndComponentsItemCell);
  *(a7 + 48) = sub_22838FBB0();
  *(a7 + 56) = v15;
  v16 = a7 + *(type metadata accessor for MedicationEducationAndComponentsItem() + 36);
  result = sub_22838F490();
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_2281BD138(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2281BD180(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 36);
  sub_22838F4A0();
  sub_2281BD138(&qword_27D824618, 255, MEMORY[0x277CC95F0]);
  v5 = sub_228393420();
  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  MEMORY[0x22AAB5C80](*(v2 + 48), *(v2 + 56));
  return v5;
}

uint64_t sub_2281BD22C(uint64_t a1)
{
  v2 = sub_2281BD138(&qword_27D824668, 255, type metadata accessor for MedicationEducationAndComponentsItem);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_2281BD2AC(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_2281BD338();
  return sub_2281BF02C(v6, &qword_280DDCD50, sub_22817A700);
}

void sub_2281BD338()
{
  v1 = v0;
  sub_2281BDBBC();
  v2 = *MEMORY[0x277D12788];
  sub_228392000();

  MEMORY[0x22AAB5C80](0xD00000000000001BLL, 0x80000002283A95B0);

  v3 = sub_2281BD608();
  v4 = [v3 text];

  if (!v4)
  {
    v4 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___primaryLabel] description];
  }

  v5 = sub_228392000();
  v7 = v6;

  MEMORY[0x22AAB5C80](v5, v7);

  v8 = sub_228391FC0();

  [v1 setAccessibilityIdentifier_];
}

uint64_t sub_2281BD490@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2281BD4E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2281BD338();
  return sub_2281BF02C(a1, &qword_280DDCD50, sub_22817A700);
}

void (*sub_2281BD570(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2281BD5D4;
}

void sub_2281BD5D4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_2281BD338();
  }
}

id sub_2281BD628()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = *MEMORY[0x277D12788];
  v7 = sub_228392000();
  v8 = v2;
  v3 = v0;

  MEMORY[0x22AAB5C80](0xD000000000000012, 0x80000002283A9570);

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xED00006C6562614CLL);

  v4 = sub_228391FC0();

  [v3 setAccessibilityIdentifier_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setNumberOfLines_];
  v5 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  [v3 setAdjustsFontForContentSizeCategory_];
  return v3;
}

id sub_2281BD7DC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = *MEMORY[0x277D12788];
  v8 = sub_228392000();
  v9 = v2;
  v3 = v0;

  MEMORY[0x22AAB5C80](0xD000000000000012, 0x80000002283A9570);

  MEMORY[0x22AAB5C80](0xD000000000000010, 0x80000002283A9590);

  v4 = sub_228391FC0();

  [v3 setAccessibilityIdentifier_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setNumberOfLines_];
  v5 = [objc_opt_self() secondaryLabelColor];
  [v3 setTextColor_];

  v6 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  [v3 setAdjustsFontForContentSizeCategory_];
  return v3;
}

id sub_2281BD9C8(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2281BDA28()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = *MEMORY[0x277D12788];
  v7 = sub_228392000();
  v8 = v2;
  v3 = v0;

  MEMORY[0x22AAB5C80](0xD000000000000014, 0x80000002283A9550);

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xED00006C6562614CLL);

  v4 = sub_228391FC0();

  [v3 setAccessibilityIdentifier_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setNumberOfLines_];
  v5 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  [v3 setAdjustsFontForContentSizeCategory_];
  return v3;
}

uint64_t sub_2281BDBBC()
{
  v1 = v0;
  v131 = sub_2283911B0();
  v2 = *(v131 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v131);
  v5 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BEFD8(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v129 = &v123 - v8;
  v9 = sub_2283913A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v130 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BEFD8(0, &qword_27D824660, type metadata accessor for MedicationEducationAndComponentsItem);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v123 - v15;
  v17 = type metadata accessor for MedicationEducationAndComponentsItem();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v22], v133);
  if (v133[3])
  {
    sub_22817A700();
    v23 = swift_dynamicCast();
    (*(v18 + 56))(v16, v23 ^ 1u, 1, v17);
    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      sub_2281BF088(v16, v21);
      v24 = v21[40];
      v127 = v10;
      v128 = v9;
      v126 = v21;
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = [objc_opt_self() supportsOntologyBackedMedications];
      }

      sub_2281BF0EC(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_228397F10;
      v36 = sub_2281BD608();
      v37 = [v36 topAnchor];

      v38 = [v1 contentView];
      v39 = [v38 topAnchor];

      sub_22838F7D0();
      v40 = [v37 constraintEqualToAnchor:v39 constant:?];

      *(v35 + 32) = v40;
      v41 = OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___primaryLabel;
      v42 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___primaryLabel] leadingAnchor];
      v43 = [v1 &selRef_didTapDay_];
      v44 = [v43 &selRef_logTimeChanged_ + 1];

      sub_22838F7D0();
      v45 = [v42 constraintEqualToAnchor:v44 constant:?];

      *(v35 + 40) = v45;
      v46 = [*&v1[v41] trailingAnchor];
      v47 = [v1 &selRef_didTapDay_];
      v48 = v47;
      v49 = &selRef_centerXAnchor;
      LODWORD(v131) = v25;
      if (v25)
      {
        v49 = &selRef_trailingAnchor;
      }

      v50 = [v47 *v49];

      sub_22838F7D0();
      v52 = [v46 constraintEqualToAnchor:v50 constant:-v51];

      *(v35 + 48) = v52;
      v53 = [*&v1[v41] bottomAnchor];
      v54 = [v1 &selRef_didTapDay_];
      v55 = [v54 bottomAnchor];

      sub_22838F7D0();
      v57 = [v53 constraintLessThanOrEqualToAnchor:v55 constant:-v56];

      *(v35 + 56) = v57;
      v58 = sub_2281BD7BC();
      v59 = [v58 topAnchor];

      v60 = [*&v1[v41] bottomAnchor];
      v61 = [v59 constraintEqualToAnchor:v60 constant:2.0];

      *(v35 + 64) = v61;
      v62 = OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___componentsLabel;
      v63 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___componentsLabel];
      v123 = OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___componentsLabel;
      v64 = [v63 leadingAnchor];
      v65 = *&v1[v41];
      v124 = v41;
      v66 = [v65 leadingAnchor];
      v67 = [v64 constraintEqualToAnchor_];

      *(v35 + 72) = v67;
      v68 = [*&v1[v62] trailingAnchor];
      v69 = [*&v1[v41] trailingAnchor];
      v70 = [v68 constraintEqualToAnchor_];

      *(v35 + 80) = v70;
      v71 = sub_2281BD9A8();
      v72 = [v71 leadingAnchor];

      v73 = [v1 contentView];
      v74 = [v73 centerXAnchor];

      sub_22838F7D0();
      v75 = [v72 constraintEqualToAnchor:v74 constant:?];

      *(v35 + 88) = v75;
      v76 = OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___educationLabel;
      v77 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___educationLabel] trailingAnchor];
      v78 = [v1 contentView];
      v79 = [v78 trailingAnchor];

      sub_22838F7D0();
      v81 = v123;
      v82 = [v77 constraintEqualToAnchor:v79 constant:-v80];

      *(v35 + 96) = v82;
      v83 = [*&v1[v76] topAnchor];
      v84 = v124;
      v85 = [*&v1[v124] topAnchor];
      v86 = v84;
      v87 = [v83 constraintEqualToAnchor_];

      *(v35 + 104) = v87;
      v88 = [*&v1[v76] bottomAnchor];
      v89 = [v1 contentView];
      v90 = [v89 bottomAnchor];

      sub_22838F7D0();
      v92 = [v88 constraintEqualToAnchor:v90 constant:-v91];

      v125 = v35;
      *(v35 + 112) = v92;
      v93 = [v1 contentView];
      [v93 addSubview_];

      v94 = [v1 &selRef_didTapDay_];
      [v94 addSubview_];

      v95 = [v1 &selRef_didTapDay_];
      [v95 addSubview_];

      v96 = v130;
      sub_228391390();
      if (v131)
      {
        v97 = qword_280DDCF18;
        v98 = *&v1[v84];
        v99 = v126;
        if (v97 != -1)
        {
          swift_once();
        }

        sub_22838F0C0();
        v100 = sub_228391FC0();

        [v98 setText_];

        v101 = *&v1[v86];
        v102 = objc_opt_self();
        v103 = v101;
        v104 = [v102 secondaryLabelColor];
        [v103 setTextColor_];

        v105 = [v102 tertiarySystemFillColor];
        sub_228391370();
        v107 = v127;
        v106 = v128;
      }

      else
      {
        v108 = [objc_opt_self() tertiarySystemBackgroundColor];
        sub_228391370();
        v99 = v126;
        v109 = v126[2];
        v110 = v126[3];
        v111 = *&v1[v86];
        v112 = sub_228391FC0();
        [v111 setText_];

        v113 = *&v1[v81];
        v133[0] = v99[4];
        sub_2281BF0EC(0, &qword_27D827E10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
        sub_2281BF13C();

        v114 = v113;
        sub_228391F90();

        v115 = sub_228391FC0();

        [v114 setText_];

        v116 = *&v1[v76];
        v117 = v99[1];
        if (v117)
        {
          v118 = *v99;
          v119 = v116;
          v117 = sub_228391FC0();
        }

        else
        {
          v119 = v116;
        }

        v107 = v127;
        v106 = v128;
        [v119 setText_];

        v96 = v130;
      }

      v120 = v129;
      (*(v107 + 16))(v129, v96, v106);
      (*(v107 + 56))(v120, 0, 1, v106);
      MEMORY[0x22AAB6420](v120);
      v121 = objc_opt_self();
      sub_2281BF1B8();
      v122 = sub_228392190();

      [v121 activateConstraints_];

      (*(v107 + 8))(v96, v106);
      return sub_2281BF204(v99);
    }
  }

  else
  {
    sub_2281BF02C(v133, &qword_280DDCD50, sub_22817A700);
    (*(v18 + 56))(v16, 1, 1, v17);
  }

  sub_2281BF02C(v16, &qword_27D824660, type metadata accessor for MedicationEducationAndComponentsItem);
  sub_228391150();
  v26 = v1;
  v27 = sub_2283911A0();
  v28 = sub_2283925C0();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v132 = v30;
    *v29 = 136446210;
    sub_22817E6C8(&v1[v22], v133);
    sub_2281BEFD8(0, &qword_280DDCD50, sub_22817A700);
    v31 = sub_228392040();
    v33 = sub_2281C96FC(v31, v32, &v132);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_22816B000, v27, v28, "Incorrect view model for MedicationEducationAndComponentsItemCell: %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x22AAB7B80](v30, -1, -1);
    MEMORY[0x22AAB7B80](v29, -1, -1);
  }

  return (*(v2 + 8))(v5, v131);
}

id MedicationEducationAndComponentsItemCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MedicationEducationAndComponentsItemCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___primaryLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___componentsLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___educationLabel] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for MedicationEducationAndComponentsItemCell();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id MedicationEducationAndComponentsItemCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MedicationEducationAndComponentsItemCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___primaryLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___componentsLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___educationLabel] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for MedicationEducationAndComponentsItemCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id MedicationEducationAndComponentsItemCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationEducationAndComponentsItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2281BEE30()
{
  v0 = MEMORY[0x277D837D0];
  sub_2281BF0EC(319, &qword_27D825070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2281BF0EC(319, &qword_27D827E10, v0, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_22838F4A0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2281BEFD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2281BF02C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2281BEFD8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2281BF088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationEducationAndComponentsItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2281BF0EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2281BF13C()
{
  result = qword_27D825080;
  if (!qword_27D825080)
  {
    sub_2281BF0EC(255, &qword_27D827E10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825080);
  }

  return result;
}

unint64_t sub_2281BF1B8()
{
  result = qword_280DDBA90;
  if (!qword_280DDBA90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DDBA90);
  }

  return result;
}

uint64_t sub_2281BF204(uint64_t a1)
{
  v2 = type metadata accessor for MedicationEducationAndComponentsItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2281BF388(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_2281BF3D4(double a1, double a2, uint64_t a3, uint64_t a4)
{
  sub_2281A99B0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
  sub_228390960();
  sub_2281BF64C(a4, v10);
  sub_228390950();
  sub_2281BF6B0();
  v12 = [swift_getObjCClassFromMetadata() defaultFormat];
  [v12 setOpaque_];
  v13 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v12 format:{a1, a2}];
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2281BF6FC;
  *(v15 + 24) = v14;
  aBlock[4] = sub_2281BF75C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2281BF388;
  aBlock[3] = &block_descriptor_5;
  v16 = _Block_copy(aBlock);
  v17 = v11;

  v18 = [v13 imageWithActions_];

  _Block_release(v16);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if ((v12 & 1) == 0)
  {
    return v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_2281BF64C(uint64_t a1, uint64_t a2)
{
  sub_2281A99B0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2281BF6B0()
{
  result = qword_27D824670;
  if (!qword_27D824670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D824670);
  }

  return result;
}

id sub_2281BF6FC()
{
  v1 = *(v0 + 16);
  [v1 layoutIfNeeded];
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

uint64_t sub_2281BF75C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id PregnancyLactationEducationViewController.init(listManager:educationType:)(uint64_t a1, unsigned __int8 *a2)
{
  v47 = sub_22838F4A0();
  v4 = *(v47 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v47);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v45 = a1;
  v9 = sub_228390660();
  v10 = sub_2281BFDC0(v9, 0x277D115B8);

  if (!v10)
  {
    v10 = MEMORY[0x277D84F90];
  }

  v52 = v8;
  v51 = 0;
  v11 = sub_2281F48D0(v10, &v52, &v51);
  v44 = v8;
  v50 = v8;
  v49 = 1;
  v12 = sub_2281F48D0(v10, &v50, &v49);

  v13 = *(v11 + 16);
  v43 = v12;
  if (v13)
  {
    v14 = *(v12 + 16) != 0;
  }

  else
  {
    v14 = 0;
  }

  HIDWORD(v38) = v14;
  sub_228182110();
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_228397F30;
  v15 = type metadata accessor for PregnancyLactationEducationDataSource();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  *(v18 + qword_27D824F70) = 0;
  *(v18 + qword_27D824F78) = v14;
  sub_22819F3B0();
  v42 = v19;
  v20 = *(sub_22838FEF0() - 8);
  v41 = *(v20 + 72);
  v21 = *(v20 + 80);
  v22 = swift_allocObject();
  v40 = xmmword_228397F40;
  *(v22 + 16) = xmmword_228397F40;
  sub_228194894(v11);

  sub_22838F490();
  sub_22838F450();
  v39 = *(v4 + 8);
  v39(v7, v47);
  sub_22838FED0();
  v23 = sub_22838F920();
  v24 = sub_2281C07E0();
  v25 = v46;
  *(v46 + 32) = v23;
  *(v25 + 40) = v24;
  v26 = *(v15 + 48);
  v27 = *(v15 + 52);
  v28 = swift_allocObject();
  *(v28 + qword_27D824F70) = 1;
  *(v28 + qword_27D824F78) = BYTE4(v38);
  *(swift_allocObject() + 16) = v40;
  sub_228194894(v43);

  sub_22838F490();
  sub_22838F450();
  v39(v7, v47);
  sub_22838FED0();
  v29 = sub_22838F920();
  v30 = v46;
  *(v46 + 48) = v29;
  *(v30 + 56) = v24;
  v31 = sub_2283901F0();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  sub_228390210();

  v34 = sub_228390480();
  v48 = v44;
  v35 = v34;
  MedicationSecondaryEducationType.title.getter();
  v36 = sub_228391FC0();

  [v35 setTitle_];

  return v35;
}

uint64_t sub_2281BFC38(unint64_t a1)
{
  v9 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_15:
    sub_2283930D0();
    sub_228393240();
    v3 = sub_2283930D0();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_228393240();
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x22AAB6D80](v4, a1);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = *(a1 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        type metadata accessor for MedicationChartUserInfo(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_228393210();
        v7 = *(v9 + 16);
        sub_228393250();
        sub_228393260();
        sub_228393220();
        ++v4;
      }

      while (v6 != v3);
    }
  }

  return v9;
}

uint64_t sub_2281BFDC0(unint64_t a1, uint64_t *a2)
{
  v13 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_228393240();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AAB6D80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v10 = *a2;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_228393210();
      v11 = *(v13 + 16);
      sub_228393250();
      sub_228393260();
      sub_228393220();
      if (v9 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_2283930D0();
    sub_228393240();
  }

  return v13;
}

id PregnancyLactationEducationViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_2281C0024(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for PregnancyLactationEducationViewController();
  return objc_msgSendSuper2(&v2, sel_viewDidLoad);
}

void sub_2281C0068(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_228391310();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_22838FB90();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  (*(v10 + 104))(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D10E68]);
  v11 = a1;
  sub_2283926F0();
  sub_228391300();
  sub_228392700();
  v12 = type metadata accessor for PregnancyLactationEducationViewController();
  v13.receiver = v11;
  v13.super_class = v12;
  objc_msgSendSuper2(&v13, sel_viewIsAppearing_, a3);
}

uint64_t sub_2281C01E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D10E68];
  v3 = sub_22838FB90();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2281C0258(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_22838F760();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_2281ABE84(v10);

  return (*(v6 + 8))(v9, v5);
}

id PregnancyLactationEducationViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id sub_2281C0434(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PregnancyLactationEducationViewController();
  return objc_msgSendSuper2(&v4, *a1);
}

Swift::Void __swiftcall PregnancyLactationEducationViewController.viewControllerWillEnterAdaptiveModal()()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  sub_22817A958(0, &qword_27D824138, 0x277D751E0);
  sub_22817A958(0, &qword_27D827890, 0x277D750C8);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228392C90();
  v4 = sub_228392640();
  [v2 setRightBarButtonItem_];

  v5 = [v1 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 navigationBar];

    [v7 setPrefersLargeTitles_];
  }

  v8 = [v1 navigationController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 navigationBar];

    sub_2283928D0();
    [v10 setDirectionalLayoutMargins_];
  }
}

void sub_2281C066C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_2281C06D0(void *a1)
{
  v1 = a1;
  PregnancyLactationEducationViewController.viewControllerWillEnterAdaptiveModal()();
}

Swift::Void __swiftcall PregnancyLactationEducationViewController.viewControllerDidLeaveAdaptiveModal()()
{
  v1 = [v0 navigationItem];
  [v1 setRightBarButtonItem_];
}

void sub_2281C0774(void *a1)
{
  v2 = a1;
  v1 = [v2 navigationItem];
  [v1 setRightBarButtonItem_];
}

unint64_t sub_2281C07E0()
{
  result = qword_27D824678;
  if (!qword_27D824678)
  {
    type metadata accessor for PregnancyLactationEducationDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824678);
  }

  return result;
}

uint64_t type metadata accessor for PregnancyLactationEducationViewController()
{
  result = qword_27D824680;
  if (!qword_27D824680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2281C0968(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 24))();
  if (!v5)
  {
    return (*(a2 + 16))(a1, a2);
  }

  v8 = v4;
  MEMORY[0x22AAB5C80](10272, 0xE200000000000000);
  v6 = (*(a2 + 16))(a1, a2);
  MEMORY[0x22AAB5C80](v6);

  MEMORY[0x22AAB5C80](41, 0xE100000000000000);
  return v8;
}

uint64_t sub_2281C0A38(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = (*(a2 + 40))(a1, a2);
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      sub_2281C2E94(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_228397F30;
      v14 = MEMORY[0x277D837D0];
      *(v13 + 56) = MEMORY[0x277D837D0];
      v15 = sub_22818E210();
      *(v13 + 32) = v7;
      *(v13 + 40) = v8;
      *(v13 + 96) = v14;
      *(v13 + 104) = v15;
      *(v13 + 64) = v15;
      *(v13 + 72) = v11;
      *(v13 + 80) = v12;
      v16 = sub_22838F0C0();
      if (*(v13 + 16))
      {
        v17 = sub_228391FD0();

        return v17;
      }

      else
      {
        v20 = v16;

        return v20;
      }
    }
  }

  result = (v4)(a1, a2);
  if (!v19)
  {
    return (*(a2 + 40))(a1, a2);
  }

  return result;
}

uint64_t sub_2281C0C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    sub_2281C2EFC(0, &qword_27D827E10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2281BF13C();

    v5 = sub_228391F90();
    v7 = v6;

    v8 = sub_2281C0A38(a2, a3);
    if (!v9)
    {
      goto LABEL_9;
    }

    if (v7)
    {
      v10 = v8;
      v11 = v9;
      sub_2281C2EFC(0, &qword_27D823EE0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_228397F30;
      *(v12 + 32) = v10;
      *(v12 + 40) = v11;
      *(v12 + 48) = v5;
      *(v12 + 56) = v7;
      v5 = sub_228391F90();

      return v5;
    }

    goto LABEL_7;
  }

  sub_2281C0A38(a2, a3);
  if (v13)
  {
    v5 = 0;
LABEL_7:

    goto LABEL_9;
  }

  v5 = 0;
LABEL_9:
  v14 = sub_2281C0A38(a2, a3);
  if (v15)
  {
    v16 = v14;

    return v16;
  }

  return v5;
}

uint64_t HKMedicationUserDomainConcept.visualizationConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 userVisualizationConfigJSONString];
  if (v3)
  {
    v4 = v3;
    sub_228392000();

    sub_228390CE0();
  }

  else
  {
    v5 = sub_228390D50();
    (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }

  type metadata accessor for DrugInteractionVisualizationConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t HKMedicationUserDomainConcept.nickname.getter()
{
  v1 = [v0 userSpecifiedName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_228392000();

  v3 = sub_2283920A0();

  return v3;
}

uint64_t sub_2281C0FD8@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 userVisualizationConfigJSONString];
  if (v3)
  {
    v4 = v3;
    sub_228392000();

    sub_228390CE0();
  }

  else
  {
    v5 = sub_228390D50();
    (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }

  type metadata accessor for DrugInteractionVisualizationConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2281C10BC()
{
  v2 = *v0;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  return sub_228390F10();
}

uint64_t sub_2281C1110()
{
  v1 = [*v0 userSpecifiedName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_228392000();

  v3 = sub_2283920A0();

  return v3;
}

uint64_t HKDrugInteractionLifestyleFactor.visualizationConfig.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for DrugInteractionVisualizationConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2281C12A0@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for DrugInteractionVisualizationConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2281C12EC()
{
  v1 = *v0;
  v3 = 0;
  return HKDrugInteractionLifestyleFactor.localizedString(variant:)(&v3, v1);
}

uint64_t sub_2281C1318(uint64_t a1, uint64_t *a2)
{
  sub_2281C2920(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_viewModelFactor;
  swift_beginAccess();
  sub_2281C29B0(v6, v3 + v4);
  swift_endAccess();
  sub_2281C1E30();
  return sub_2281C2A40(v6);
}

uint64_t sub_2281C1388@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_viewModelFactor;
  swift_beginAccess();
  return sub_2281C2920(v1 + v3, a1);
}

uint64_t sub_2281C13E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_viewModelFactor;
  swift_beginAccess();
  sub_2281C29B0(a1, v1 + v3);
  swift_endAccess();
  sub_2281C1E30();
  return sub_2281C2A40(a1);
}

uint64_t (*sub_2281C144C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2281C14B0;
}

uint64_t sub_2281C14B0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_2281C1E30();
  }

  return result;
}

uint64_t sub_2281C14E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_ingredients;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_2281C154C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_ingredients;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2281C1594(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_ingredients;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_2281C164C()
{
  v1 = &v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_viewModelFactor];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_ingredients] = 0;
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___drugInteractionVisualization] = 0;
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___factorNameLabel] = 0;
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___infoLabel] = 0;
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelHiddenBottomConstraint] = 0;
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelVisibleBottomConstraint] = 0;
  v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelHidden] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for InteractionDetailFactorView();
  v2 = objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2281C1CAC();
  sub_2281C21F8();

  return v2;
}

id InteractionDetailFactorView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_2281C17C0()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___drugInteractionVisualization;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___drugInteractionVisualization);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___drugInteractionVisualization);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for DrugInteractionVisualizationView()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2281C1848()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___factorNameLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___factorNameLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___factorNameLabel);
  }

  else
  {
    v4 = sub_2281C18A8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2281C18A8()
{
  v0 = [objc_allocWithZone(sub_22838FC30()) initWithFrame_];
  v1 = *MEMORY[0x277D76918];
  sub_22838FC20();
  sub_22838FC10();
  v2 = *MEMORY[0x277D12788];
  v8 = sub_228392000();
  v9 = v3;
  v4 = v0;

  MEMORY[0x22AAB5C80](0xD00000000000001CLL, 0x80000002283A9870);

  MEMORY[0x22AAB5C80](0xD000000000000010, 0x80000002283A9890);

  v5 = sub_228391FC0();

  [v4 setAccessibilityIdentifier_];

  v6 = v4;
  [v6 setNumberOfLines_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];

  return v6;
}

id sub_2281C1A10()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___infoLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___infoLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___infoLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(sub_22838FC30()) initWithFrame_];
    v6 = *MEMORY[0x277D769D0];
    sub_22838FC20();
    sub_22838FC10();
    v7 = objc_opt_self();
    v8 = v5;
    v9 = [v7 secondaryLabelColor];
    [v8 setTextColor_];

    v10 = *MEMORY[0x277D12788];
    v16 = sub_228392000();
    v17 = v11;

    MEMORY[0x22AAB5C80](0xD00000000000001CLL, 0x80000002283A9870);

    MEMORY[0x22AAB5C80](0x62614C6F666E492ELL, 0xEA00000000006C65);

    v12 = sub_228391FC0();

    [v8 setAccessibilityIdentifier_];

    [v8 setNumberOfLines_];
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];

    v13 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

id sub_2281C1BF0(id result)
{
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelHidden;
  v3 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelHidden);
  *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelHidden) = result;
  if (v3 != (result & 1))
  {
    v4 = sub_2281C1A10();
    [v4 setHidden_];

    v5 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelHiddenBottomConstraint);
    if (v5)
    {
      [v5 setActive_];
    }

    result = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelVisibleBottomConstraint);
    if (result)
    {
      v6 = (*(v1 + v2) & 1) == 0;

      return [result setActive_];
    }
  }

  return result;
}

uint64_t sub_2281C1CAC()
{
  sub_2281C2EFC(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228399D40;
  *(inited + 32) = sub_2281C17C0();
  *(inited + 40) = sub_2281C1848();
  *(inited + 48) = sub_2281C1A10();
  v2 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_12;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x22AAB6D80](0, inited))
  {
    v4 = i;
    [v0 addSubview_];

    if (v2)
    {
      v5 = MEMORY[0x22AAB6D80](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_11;
      }

      v5 = *(inited + 40);
    }

    v6 = v5;
    [v0 addSubview_];

    if (v2)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v7 = *(inited + 48);
      goto LABEL_10;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    ;
  }

  v7 = MEMORY[0x22AAB6D80](2, inited);
LABEL_10:
  v8 = v7;
  [v0 addSubview_];

  swift_setDeallocating();
  v9 = *(inited + 16);
  return swift_arrayDestroy();
}

uint64_t sub_2281C1E30()
{
  v1 = v0;
  sub_2281C2D7C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_viewModelFactor;
  swift_beginAccess();
  sub_2281C2920(v1 + v6, &v38);
  if (!v39)
  {
    return sub_2281C2A40(&v38);
  }

  sub_22819A62C(&v38, v40);
  v7 = sub_2281C17C0();
  v8 = v41;
  v9 = v42;
  __swift_project_boxed_opaque_existential_0(v40, v41);
  (*(v9 + 8))(v8, v9);
  v10 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_visualizationConfig;
  swift_beginAccess();
  sub_2281C2DD4(v5, &v7[v11]);
  swift_endAccess();
  sub_2281C5840();
  v12 = *&v7[OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_subview];
  if (v12)
  {
    [v12 hk:v7 alignConstraintsWithView:?];
  }

  sub_2281C2E38(v5);
  v13 = sub_2281C1848();
  v14 = v41;
  v15 = v42;
  __swift_project_boxed_opaque_existential_0(v40, v41);
  sub_2281C0968(v14, v15);
  v16 = sub_228391FC0();

  [v13 setText_];

  v17 = v41;
  v18 = v42;
  __swift_project_boxed_opaque_existential_0(v40, v41);
  v19 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_ingredients;
  swift_beginAccess();
  v20 = *(v1 + v19);

  v22 = sub_2281C0C48(v21, v17, v18);
  v24 = v23;

  v25 = sub_2281C1A10();
  sub_228360898(2.0, v22, v24);

  v26 = v41;
  v27 = v42;
  __swift_project_boxed_opaque_existential_0(v40, v41);
  sub_2281C0A38(v26, v27);
  if (v28)
  {
    v29 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___infoLabel;
    v30 = [*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___infoLabel) attributedText];
    if (v30)
    {
      v31 = v30;
      v32 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
      v33 = *MEMORY[0x277D740C0];
      v34 = [objc_opt_self() labelColor];
      v35 = sub_2283920C0();

      [v32 addAttribute:v33 value:v34 range:{0, v35}];

      [*(v1 + v29) setAttributedText_];
    }

    else
    {
    }
  }

  sub_2281C1BF0((v24 == 0));
  return __swift_destroy_boxed_opaque_existential_0(v40);
}

id sub_2281C21F8()
{
  v47 = objc_opt_self();
  sub_2281C2EFC(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228399D50;
  v2 = sub_2281C17C0();
  v3 = [v2 leadingAnchor];

  v4 = [v0 leadingAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___drugInteractionVisualization;
  v7 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___drugInteractionVisualization] widthAnchor];
  v8 = [v7 constraintEqualToConstant_];

  *(v1 + 40) = v8;
  v9 = [*&v0[v6] heightAnchor];
  v10 = [*&v0[v6] widthAnchor];
  v11 = [v9 &selRef_freeTextMedicationName + 5];

  *(v1 + 48) = v11;
  v12 = [*&v0[v6] centerYAnchor];
  v13 = sub_2281C1848();
  v14 = [v13 centerYAnchor];

  v15 = [v12 &selRef_freeTextMedicationName + 5];
  *(v1 + 56) = v15;
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___factorNameLabel;
  v17 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___factorNameLabel] leadingAnchor];
  v18 = [*&v0[v6] trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:10.0];

  *(v1 + 64) = v19;
  v20 = [*&v0[v16] topAnchor];
  v21 = [v0 topAnchor];
  v22 = [v20 &selRef_freeTextMedicationName + 5];

  *(v1 + 72) = v22;
  v23 = [*&v0[v16] trailingAnchor];
  v24 = [v0 trailingAnchor];
  v25 = [v23 &selRef_freeTextMedicationName + 5];

  *(v1 + 80) = v25;
  v26 = sub_2281C1A10();
  v27 = [v26 leadingAnchor];

  v28 = [*&v0[v16] leadingAnchor];
  v29 = [v27 &selRef_freeTextMedicationName + 5];

  *(v1 + 88) = v29;
  v30 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___infoLabel;
  v31 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___infoLabel] trailingAnchor];
  v32 = [v0 trailingAnchor];
  v33 = [v31 &selRef_freeTextMedicationName + 5];

  *(v1 + 96) = v33;
  v34 = [*&v0[v30] topAnchor];
  v35 = [*&v0[v16] bottomAnchor];
  v36 = [v34 constraintGreaterThanOrEqualToAnchor:v35 constant:2.0];

  *(v1 + 104) = v36;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v37 = sub_228392190();

  [v47 activateConstraints_];

  v38 = [v0 bottomAnchor];
  v39 = [*&v0[v30] bottomAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  v41 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelVisibleBottomConstraint];
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelVisibleBottomConstraint] = v40;

  v42 = [v0 bottomAnchor];
  v43 = [*&v0[v16] bottomAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  v45 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelHiddenBottomConstraint];
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelHiddenBottomConstraint] = v44;

  return sub_2281C1BF0(1);
}

id InteractionDetailFactorView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id InteractionDetailFactorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionDetailFactorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2281C2920(uint64_t a1, uint64_t a2)
{
  sub_2281C2E94(0, &qword_27D824698, &qword_27D8246A0, &protocol descriptor for InteractionDetailFactorViewModelProviding, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281C29B0(uint64_t a1, uint64_t a2)
{
  sub_2281C2E94(0, &qword_27D824698, &qword_27D8246A0, &protocol descriptor for InteractionDetailFactorViewModelProviding, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281C2A40(uint64_t a1)
{
  sub_2281C2E94(0, &qword_27D824698, &qword_27D8246A0, &protocol descriptor for InteractionDetailFactorViewModelProviding, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void _s19HealthMedicationsUI27InteractionDetailFactorViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_viewModelFactor;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_ingredients) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___drugInteractionVisualization) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___factorNameLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___infoLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelHiddenBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelVisibleBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelHidden) = 0;
  sub_228393300();
  __break(1u);
}

void sub_2281C2D7C()
{
  if (!qword_27D8246E0)
  {
    type metadata accessor for DrugInteractionVisualizationConfig(255);
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8246E0);
    }
  }
}

uint64_t sub_2281C2DD4(uint64_t a1, uint64_t a2)
{
  sub_2281C2D7C();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281C2E38(uint64_t a1)
{
  sub_2281C2D7C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2281C2E94(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2281810DC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2281C2EFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t MedicationAvatarItem.reuseIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for MedicationAvatarItem() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for MedicationAvatarItem()
{
  result = qword_27D8246F8;
  if (!qword_27D8246F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MedicationAvatarItem.uniqueIdentifier.getter()
{
  v1 = v0 + *(type metadata accessor for MedicationAvatarItem() + 24);
  v2 = sub_22838F450();
  MEMORY[0x22AAB5C80](v2);

  return 0x7449726174617641;
}

uint64_t static MedicationAvatarItem.== infix(_:_:)()
{
  v0 = *(type metadata accessor for MedicationAvatarItem() + 24);

  return sub_22838F470();
}

uint64_t MedicationAvatarItem.hash(into:)()
{
  v0 = *(type metadata accessor for MedicationAvatarItem() + 24);
  sub_22838F4A0();
  sub_2281C511C(&unk_27D823CA0, MEMORY[0x277CC95F0]);
  return sub_228391F70();
}

uint64_t MedicationAvatarItem.hashValue.getter()
{
  sub_228393520();
  v0 = *(type metadata accessor for MedicationAvatarItem() + 24);
  sub_22838F4A0();
  sub_2281C511C(&unk_27D823CA0, MEMORY[0x277CC95F0]);
  sub_228391F70();
  return sub_228393570();
}

uint64_t sub_2281C31B8(uint64_t a1)
{
  sub_228393520();
  v2 = *(a1 + 24);
  sub_22838F4A0();
  sub_2281C511C(&unk_27D823CA0, MEMORY[0x277CC95F0]);
  sub_228391F70();
  return sub_228393570();
}

uint64_t sub_2281C3254(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  sub_22838F4A0();
  sub_2281C511C(&unk_27D823CA0, MEMORY[0x277CC95F0]);
  return sub_228391F70();
}

uint64_t sub_2281C32D4(uint64_t a1, uint64_t a2)
{
  sub_228393520();
  v3 = *(a2 + 24);
  sub_22838F4A0();
  sub_2281C511C(&unk_27D823CA0, MEMORY[0x277CC95F0]);
  sub_228391F70();
  return sub_228393570();
}

uint64_t sub_2281C340C(uint64_t a1)
{
  v2 = v1 + *(a1 + 24);
  v3 = sub_22838F450();
  MEMORY[0x22AAB5C80](v3);

  return 0x7449726174617641;
}

uint64_t sub_2281C3474(uint64_t a1)
{
  v2 = sub_2281C511C(&qword_27D824728, type metadata accessor for MedicationAvatarItem);

  return MEMORY[0x282169440](a1, v2);
}

void sub_2281C3518()
{
  sub_2281C50C8(319, &qword_280DDBD20, MEMORY[0x277D116C8]);
  if (v0 <= 0x3F)
  {
    sub_2281C35D8();
    if (v1 <= 0x3F)
    {
      sub_22838F4A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2281C35D8()
{
  result = qword_280DDB820;
  if (!qword_280DDB820)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280DDB820);
  }

  return result;
}

id sub_2281C3628()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___pillImageView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___pillImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___pillImageView);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2281C36C0()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___editButton;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___editButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___editButton);
  }

  else
  {
    v4 = sub_2281C3724(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2281C3724(uint64_t a1)
{
  v25 = a1;
  sub_2281C50C8(0, &qword_280DDB950, MEMORY[0x277D75058]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v24 - v3;
  v5 = sub_228392D80();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_228392CC0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_228392DE0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228392DC0();
  (*(v11 + 104))(v14, *MEMORY[0x277D74FD8], v10);
  sub_228392CD0();
  (*(v6 + 104))(v9, *MEMORY[0x277D75028], v5);
  sub_228392CB0();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228392DB0();
  v20 = [objc_opt_self() buttonWithType_];
  v21 = [v20 titleLabel];
  if (v21)
  {
    v22 = v21;
    [v21 setAdjustsFontForContentSizeCategory_];
  }

  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  (*(v16 + 16))(v4, v19, v15);
  (*(v16 + 56))(v4, 0, 1, v15);
  sub_228392E10();
  [v20 addTarget:v25 action:sel_editButtonTappedWithSender_ forControlEvents:64];
  (*(v16 + 8))(v19, v15);
  return v20;
}

void sub_2281C3C5C()
{
  sub_2281C50C8(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v37 - v3;
  sub_228391380();
  v5 = sub_2283913A0();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  MEMORY[0x22AAB6420](v4);
  v6 = [v0 contentView];
  v7 = sub_2281C3628();
  [v6 addSubview_];

  v8 = [v0 contentView];
  v9 = sub_2281C36C0();
  [v8 addSubview_];

  v38 = objc_opt_self();
  sub_228180ED0();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_228399E10;
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___pillImageView;
  v12 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___pillImageView] topAnchor];
  v13 = [v0 contentView];
  v14 = [v13 topAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v10 + 32) = v15;
  v16 = [*&v0[v11] centerXAnchor];
  v17 = [v0 contentView];
  v18 = [v17 centerXAnchor];

  v19 = [v16 &selRef_freeTextMedicationName + 5];
  *(v10 + 40) = v19;
  v20 = [*&v0[v11] widthAnchor];
  v21 = [v20 constraintEqualToConstant_];

  *(v10 + 48) = v21;
  v22 = [*&v0[v11] heightAnchor];
  v23 = [v22 constraintEqualToConstant_];

  *(v10 + 56) = v23;
  v24 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___editButton;
  v25 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___editButton] topAnchor];
  v26 = [*&v0[v11] bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:8.0];

  *(v10 + 64) = v27;
  v28 = [*&v0[v24] bottomAnchor];
  v29 = [v0 contentView];
  v30 = [v29 bottomAnchor];

  v31 = [v28 constraintEqualToAnchor_];
  *(v10 + 72) = v31;
  v32 = [*&v0[v24] centerXAnchor];
  v33 = [v0 contentView];
  v34 = [v33 centerXAnchor];

  v35 = [v32 constraintEqualToAnchor_];
  *(v10 + 80) = v35;
  sub_2281BF1B8();
  v36 = sub_228392190();

  [v38 activateConstraints_];
}

uint64_t sub_2281C4104()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281C50C8(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  sub_2281C50C8(0, &qword_27D824720, type metadata accessor for MedicationAvatarItem);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v32 - v13;
  v15 = type metadata accessor for MedicationAvatarItem();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell_item;
  swift_beginAccess();
  sub_2281C5000(v1 + v20, v34, &qword_280DDCD50, sub_22817A700);
  if (v35)
  {
    sub_22817A700();
    v21 = swift_dynamicCast();
    (*(v16 + 56))(v14, v21 ^ 1u, 1, v15);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      sub_2281C4F9C(v14, v19);
      v22 = sub_2281C3628();
      sub_2281C5000(v19, v10, &qword_280DDBD20, MEMORY[0x277D116C8]);
      sub_228390950();

      return sub_2281C506C(v19);
    }
  }

  else
  {
    sub_2281C4F40(v34, &qword_280DDCD50, sub_22817A700);
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  sub_2281C4F40(v14, &qword_27D824720, type metadata accessor for MedicationAvatarItem);
  sub_228391150();
  v24 = v1;
  v25 = sub_2283911A0();
  v26 = sub_2283925C0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 136446210;
    v32 = v2;
    v33 = v28;
    sub_2281C5000(v1 + v20, v34, &qword_280DDCD50, sub_22817A700);
    sub_2281C50C8(0, &qword_280DDCD50, sub_22817A700);
    v29 = sub_228392040();
    v31 = sub_2281C96FC(v29, v30, &v33);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_22816B000, v25, v26, "Incorrect view model for MedicationAvatarCell: %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AAB7B80](v28, -1, -1);
    MEMORY[0x22AAB7B80](v27, -1, -1);

    return (*(v3 + 8))(v6, v32);
  }

  else
  {

    return (*(v3 + 8))(v6, v2);
  }
}

void sub_2281C45B0()
{
  sub_2281C50C8(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  v5 = [v0 viewController];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2281C3628();
    sub_228390940();

    v8 = objc_allocWithZone(type metadata accessor for MedmojiPickerViewController());
    v9 = MedmojiPickerViewController.init(config:)(v4);
    *&v9[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_delegate + 8] = &off_283B688F0;
    swift_unknownObjectWeakAssign();
    v10 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
    [v10 setModalPresentationStyle_];
    [v10 setModalInPresentation_];
    [v6 presentViewController:v10 animated:1 completion:0];
  }
}

id sub_2281C4778()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationAvatarCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2281C483C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell_item;
  swift_beginAccess();
  return sub_2281C5000(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_2281C48B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2281C4104();
  return sub_2281C4F40(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_2281C4938(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2281C499C;
}

uint64_t sub_2281C499C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_2281C4104();
  }

  return result;
}

uint64_t sub_2281C49D0(uint64_t a1)
{
  v2 = v1;
  v42 = a1;
  v43 = sub_2283911B0();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v43);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281C50C8(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  sub_2281C50C8(0, &qword_27D824720, type metadata accessor for MedicationAvatarItem);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v41 - v16;
  v18 = type metadata accessor for MedicationAvatarItem();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell_item;
  swift_beginAccess();
  sub_2281C5000(v2 + v23, v45, &qword_280DDCD50, sub_22817A700);
  if (v46)
  {
    sub_22817A700();
    v24 = swift_dynamicCast();
    (*(v19 + 56))(v17, v24 ^ 1u, 1, v18);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      sub_2281C4F9C(v17, v22);
      v25 = sub_228390D50();
      v26 = *(v25 - 8);
      v27 = v42;
      (*(v26 + 16))(v13, v42, v25);
      (*(v26 + 56))(v13, 0, 1, v25);
      v28 = sub_2281C3628();
      v29 = MEMORY[0x277D116C8];
      sub_2281C5000(v13, v11, &qword_280DDBD20, MEMORY[0x277D116C8]);
      sub_228390950();

      sub_2281C4F40(v13, &qword_280DDBD20, v29);
      v30 = &v22[*(v18 + 20)];
      v31 = *(v30 + 1);
      (*v30)(v22, v27);
      return sub_2281C506C(v22);
    }
  }

  else
  {
    sub_2281C4F40(v45, &qword_280DDCD50, sub_22817A700);
    (*(v19 + 56))(v17, 1, 1, v18);
  }

  sub_2281C4F40(v17, &qword_27D824720, type metadata accessor for MedicationAvatarItem);
  sub_228391150();
  v33 = v2;
  v34 = sub_2283911A0();
  v35 = sub_2283925C0();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v44 = v37;
    *v36 = 136446210;
    sub_2281C5000(v2 + v23, v45, &qword_280DDCD50, sub_22817A700);
    sub_2281C50C8(0, &qword_280DDCD50, sub_22817A700);
    v38 = sub_228392040();
    v40 = sub_2281C96FC(v38, v39, &v44);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_22816B000, v34, v35, "Incorrect view model for MedicationAvatarCell: %{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AAB7B80](v37, -1, -1);
    MEMORY[0x22AAB7B80](v36, -1, -1);
  }

  return (*(v3 + 8))(v6, v43);
}

uint64_t sub_2281C4F40(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2281C50C8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2281C4F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationAvatarItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281C5000(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2281C50C8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2281C506C(uint64_t a1)
{
  v2 = type metadata accessor for MedicationAvatarItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2281C50C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2281C511C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2281C5164(uint64_t a1, uint64_t *a2)
{
  sub_2281C5F14(0, &qword_27D8246E0, type metadata accessor for DrugInteractionVisualizationConfig);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_2281C608C(a1, &v12 - v6, &qword_27D8246E0, type metadata accessor for DrugInteractionVisualizationConfig);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_visualizationConfig;
  swift_beginAccess();
  sub_2281C2DD4(v7, v8 + v9);
  swift_endAccess();
  sub_2281C5840();
  v10 = *(v8 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_subview);
  if (v10)
  {
    [v10 hk:v8 alignConstraintsWithView:?];
  }

  return sub_2281C60F8(v7, &qword_27D8246E0, type metadata accessor for DrugInteractionVisualizationConfig);
}

uint64_t sub_2281C5294@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_visualizationConfig;
  swift_beginAccess();
  return sub_2281C608C(v1 + v3, a1, &qword_27D8246E0, type metadata accessor for DrugInteractionVisualizationConfig);
}

uint64_t sub_2281C5308(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_visualizationConfig;
  swift_beginAccess();
  sub_2281C2DD4(a1, v1 + v3);
  swift_endAccess();
  sub_2281C5840();
  v4 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_subview);
  if (v4)
  {
    [v4 hk:v1 alignConstraintsWithView:?];
  }

  return sub_2281C60F8(a1, &qword_27D8246E0, type metadata accessor for DrugInteractionVisualizationConfig);
}

id (*sub_2281C53B0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2281C5414;
}

id sub_2281C5414(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    sub_2281C5840();
    result = *(v5 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_subview);
    if (result)
    {
      v6 = *(a1 + 24);

      return [result hk:v6 alignConstraintsWithView:?];
    }
  }

  return result;
}

id sub_2281C5480()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___medicationView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___medicationView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___medicationView);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2281C5518()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___imageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id DrugInteractionVisualizationView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DrugInteractionVisualizationView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_visualizationConfig;
  v2 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_subview) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___medicationView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___imageView) = 0;
  sub_228393300();
  __break(1u);
}

uint64_t sub_2281C5840()
{
  v1 = v0;
  sub_2281C5F14(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v33 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  sub_2281C5F14(0, &qword_27D8246E0, type metadata accessor for DrugInteractionVisualizationConfig);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  v20 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_visualizationConfig;
  swift_beginAccess();
  sub_2281C608C(&v1[v20], v11, &qword_27D8246E0, type metadata accessor for DrugInteractionVisualizationConfig);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_2281C60F8(v11, &qword_27D8246E0, type metadata accessor for DrugInteractionVisualizationConfig);
  }

  sub_2281C5F68(v11, v19);
  v22 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_subview;
  [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_subview] removeFromSuperview];
  sub_2281C5FCC(v19, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v17;
    v24 = sub_2281C5518();
    v25 = HKDrugInteractionLifestyleFactor.image.getter(v23);
    [v24 setImage_];

    v26 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___imageView];
    v27 = *&v1[v22];
    *&v1[v22] = v26;
    v28 = v26;
  }

  else
  {
    sub_2281AA8D4(v17, v7);
    v29 = sub_2281C5480();
    v30 = MEMORY[0x277D116C8];
    sub_2281C608C(v7, v33, &qword_280DDBD20, MEMORY[0x277D116C8]);
    sub_228390950();

    v31 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___medicationView];
    v28 = v31;
    sub_2281C60F8(v7, &qword_280DDBD20, v30);
    v27 = *&v1[v22];
    *&v1[v22] = v31;
  }

  v32 = v28;

  [v1 addSubview_];
  return sub_2281C6030(v19);
}

id DrugInteractionVisualizationView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DrugInteractionVisualizationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DrugInteractionVisualizationView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DrugInteractionVisualizationView()
{
  result = qword_27D824748;
  if (!qword_27D824748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2281C5DA8()
{
  sub_2281C5F14(319, &qword_27D8246E0, type metadata accessor for DrugInteractionVisualizationConfig);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2281C5F14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2281C5F68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281C5FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281C6030(uint64_t a1)
{
  v2 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2281C608C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2281C5F14(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2281C60F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2281C5F14(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2281C6154()
{
  v1 = v0;
  v2 = sub_22838F080();
  v3 = *(v2 - 8);
  v4 = *(v3 + 8);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v57 - v8;
  if ([v1 scheduleType] != 8)
  {
    v24 = [v1 timeIntervals];
    sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
    v25 = sub_2283921A0();

    return v25;
  }

  v62 = v7;
  v10 = MEMORY[0x277D84F90];
  v65 = MEMORY[0x277D84F90];
  v11 = [v1 timeIntervals];
  v63 = sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
  v12 = sub_2283921A0();

  if (v12 >> 62)
  {
    v13 = sub_2283930D0();
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_15:

    v15 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_4:
  v67 = v10;
  sub_2281C9D64(0, v13 & ~(v13 >> 63), 0);
  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  v60 = v13;
  v61 = v2;
  v59 = v1;
  v14 = 0;
  v15 = v67;
  v16 = v12;
  v17 = v12 & 0xC000000000000001;
  v18 = v12;
  do
  {
    if (v17)
    {
      v19 = MEMORY[0x22AAB6D80](v14, v16);
    }

    else
    {
      v19 = *(v16 + 8 * v14 + 32);
    }

    v20 = v19;
    v21 = [v19 startTimeComponent];
    sub_22838EFD0();

    v67 = v15;
    v23 = *(v15 + 16);
    v22 = *(v15 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_2281C9D64(v22 > 1, v23 + 1, 1);
      v15 = v67;
    }

    ++v14;
    *(v15 + 16) = v23 + 1;
    (*(v3 + 4))(v15 + ((v3[80] + 32) & ~v3[80]) + *(v3 + 9) * v23, v9, v61);
    v16 = v18;
  }

  while (v60 != v14);

  v1 = v59;
  v2 = v61;
LABEL_16:
  v67 = v15;
  sub_2281CBCB4(0, &qword_27D824798, MEMORY[0x277CC8990], MEMORY[0x277D83940]);
  sub_2281CBE04();
  sub_2281CC050(&qword_27D8247A8, MEMORY[0x277CC8990]);
  v27 = sub_228392510();

  v28 = *(v27 + 16);
  if (v28)
  {
    v30 = *(v3 + 2);
    v29 = v3 + 16;
    v31 = v29[64];
    v57 = v27;
    v32 = v27 + ((v31 + 32) & ~v31);
    v60 = *(v29 + 7);
    v61 = v30;
    v59 = (v29 - 8);
    v58 = MEMORY[0x277D84F90];
    v33 = v62;
    do
    {
      v34 = v29;
      v61(v33, v32, v2);
      v35 = [v1 timeIntervals];
      v36 = v1;
      v37 = v33;
      v38 = v35;
      v39 = sub_2283921A0();

      MEMORY[0x28223BE20](v40);
      *(&v57 - 2) = v37;
      v1 = v36;
      v41 = sub_2282CD5E0(sub_2281CBE8C, (&v57 - 4), v39);

      if (v41)
      {
        v42 = v2;
        v43 = v41;
        MEMORY[0x22AAB5D20]();
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v44 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2283921E0();
        }

        sub_228392230();

        v58 = v65;
        v2 = v42;
      }

      v33 = v62;
      (*v59)(v62, v2);
      v32 += v60;
      --v28;
      v29 = v34;
    }

    while (v28);
  }

  else
  {

    v58 = MEMORY[0x277D84F90];
  }

  v45 = [v1 timeIntervals];
  v46 = sub_2283921A0();

  v64 = v46;
  if (v46 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
    v62 = (v46 + 32);
    v63 = v46 & 0xFFFFFFFFFFFFFF8;
    while (!__OFSUB__(i--, 1))
    {
      if ((v46 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x22AAB6D80](i, v46);
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (i >= *(v63 + 16))
        {
          goto LABEL_41;
        }

        v49 = *&v62[8 * i];
      }

      v50 = v49;
      v51 = [v49 dose];
      v52 = sub_228392C40();
      v53 = v52;
      if (v51)
      {
        v54 = sub_228392C60();

        if (v54)
        {
          MEMORY[0x28223BE20](v55);
          *(&v57 - 2) = &v64;
          v66 = i;
          sub_2281CBEAC(&v66, &v67);
          v56 = v67;
          goto LABEL_44;
        }
      }

      else
      {
      }

      if (!i)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

LABEL_43:
  v56 = 0;
LABEL_44:

  result = v58;
  if (v56)
  {
    v3 = v56;
    MEMORY[0x22AAB5D20]();
    if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_46:
      sub_228392230();

      return v65;
    }

LABEL_49:
    sub_2283921E0();
    goto LABEL_46;
  }

  return result;
}

uint64_t sub_2281C6888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = sub_2283911B0();
  v4 = *(v53 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v53);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_2281CBCB4(0, &unk_280DDCD70, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v60 = v52 - v11;
  sub_2281CBCB4(0, &qword_280DDCD80, MEMORY[0x277CC99E8], v8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v59 = v52 - v14;
  v61 = sub_22838F440();
  v15 = *(v61 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v61);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_22838F6C0();
  v19 = *(v58 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v58);
  v22 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22838F080();
  v56 = *(v23 - 8);
  v57 = v23;
  v24 = *(v56 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v54 = v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = v52 - v27;
  v29 = sub_22838EFE0();
  if (v30)
  {
    v31 = v61;
    sub_228391150();
    v32 = sub_2283911A0();
    v33 = sub_2283925C0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_22816B000, v32, v33, "Cannot infer date from timeComponents; hour is nil.", v34, 2u);
      MEMORY[0x22AAB7B80](v34, -1, -1);
    }

    (*(v4 + 8))(v7, v53);
    return (*(v15 + 56))(a2, 1, 1, v31);
  }

  else
  {
    v52[0] = a1;
    v53 = v29;
    v36 = sub_22838F020();
    if (v37)
    {
      v38 = 0;
    }

    else
    {
      v38 = v36;
    }

    v52[2] = v38;
    sub_22838F680();
    sub_2281CBCB4(0, &qword_280DDB8D8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v39 = sub_22838F6A0();
    v40 = *(v39 - 8);
    v52[1] = a2;
    v41 = v40;
    v42 = *(v40 + 72);
    v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_228397F40;
    (*(v41 + 104))(v44 + v43, *MEMORY[0x277CC9988], v39);
    sub_2281EF358(v44);
    swift_setDeallocating();
    (*(v41 + 8))(v44 + v43, v39);
    swift_deallocClassInstance();
    v45 = [v55 startDateTime];
    sub_22838F3E0();

    sub_22838F5C0();

    (*(v15 + 8))(v18, v61);
    v46 = *(v19 + 8);
    v47 = v58;
    v46(v22, v58);
    v48 = v59;
    sub_22838F680();
    (*(v19 + 56))(v48, 0, 1, v47);
    sub_22838F070();
    sub_22838F010();
    v49 = v54;
    sub_22838F060();
    sub_22838F680();
    sub_22838F640();
    v46(v22, v47);
    v50 = v57;
    v51 = *(v56 + 8);
    v51(v49, v57);
    return (v51)(v28, v50);
  }
}

uint64_t HKMedicationSchedule.makeScheduleItems()()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v75 - v8;
  v81 = sub_22838F6C0();
  v78 = *(v81 - 1);
  v10 = *(v78 + 64);
  MEMORY[0x28223BE20](v81);
  v80 = (&v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = sub_228391130();
  v12 = *(v79 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v79);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v75 - v17;
  v19 = [v1 scheduleType];
  if (v19 <= 3)
  {
    if ((v19 - 1) < 2)
    {
      goto LABEL_22;
    }

    if (v19 != 3)
    {
      if (!v19)
      {
        v63 = v3;
        sub_228391150();
        v64 = v1;
        v65 = sub_2283911A0();
        v66 = sub_2283925C0();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v84 = v81;
          *v67 = 136315394;
          v68 = sub_228393600();
          v70 = sub_2281C96FC(v68, v69, &v84);

          *(v67 + 4) = v70;
          *(v67 + 12) = 2112;
          *(v67 + 14) = v64;
          v71 = v80;
          *v80 = v64;
          v72 = v64;
          _os_log_impl(&dword_22816B000, v65, v66, "%s Unexpectedly found schedule with null type. Schedule: %@", v67, 0x16u);
          sub_228193354(v71);
          MEMORY[0x22AAB7B80](v71, -1, -1);
          v73 = v81;
          __swift_destroy_boxed_opaque_existential_0(v81);
          MEMORY[0x22AAB7B80](v73, -1, -1);
          MEMORY[0x22AAB7B80](v67, -1, -1);
        }

        (*(v63 + 8))(v7, v2);
      }

      goto LABEL_57;
    }

    v2 = [v1 timeIntervals];
    sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
    v39 = sub_2283921A0();

    if (v39 >> 62)
    {
      v19 = sub_2283930D0();
      if (v19)
      {
LABEL_30:
        if ((v39 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x22AAB6D80](0, v39);
        }

        else
        {
          if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_48:
            __break(1u);
LABEL_49:
            if (v19 == 6)
            {
              v50 = v3;
              sub_228391150();
              v51 = v1;
              v52 = sub_2283911A0();
              v53 = sub_2283925C0();
              v81 = v51;

              if (os_log_type_enabled(v52, v53))
              {
                v54 = swift_slowAlloc();
                v55 = swift_slowAlloc();
                v56 = swift_slowAlloc();
                v84 = v56;
                *v54 = 136315394;
                v57 = sub_228393600();
                v59 = sub_2281C96FC(v57, v58, &v84);

                *(v54 + 4) = v59;
                *(v54 + 12) = 2112;
                v60 = v81;
                *(v54 + 14) = v81;
                *v55 = v60;
                v61 = v60;
                _os_log_impl(&dword_22816B000, v52, v53, "%s Unexpectedly found schedule with deprecated alternating daily type. Schedule: %@", v54, 0x16u);
                sub_228193354(v55);
                MEMORY[0x22AAB7B80](v55, -1, -1);
                __swift_destroy_boxed_opaque_existential_0(v56);
                MEMORY[0x22AAB7B80](v56, -1, -1);
                MEMORY[0x22AAB7B80](v54, -1, -1);
              }

              (*(v50 + 8))(v9, v2);
              v84 = 0;
              v85 = 0xE000000000000000;
              sub_2283931D0();
              MEMORY[0x22AAB5C80](0xD00000000000001CLL, 0x80000002283A9B50);
              v83 = [v81 scheduleType];
              v62 = sub_228393420();
              MEMORY[0x22AAB5C80](v62);

              MEMORY[0x22AAB5C80](0xD000000000000021, 0x80000002283A9B70);
              goto LABEL_58;
            }

LABEL_57:
            v84 = 0;
            v85 = 0xE000000000000000;
            sub_2283931D0();

            v84 = 0xD00000000000001CLL;
            v85 = 0x80000002283A9B50;
            v83 = [v1 scheduleType];
            v74 = sub_228393420();
            MEMORY[0x22AAB5C80](v74);

            MEMORY[0x22AAB5C80](0x776F6E6B6E752820, 0xEB0000000029216ELL);
LABEL_58:
            result = sub_228393300();
            __break(1u);
            return result;
          }

          v40 = *(v39 + 32);
        }

        v41 = v40;

        v42 = [v41 daysOfWeek];

        sub_2282D9ECC(v42, v18);
        v43 = v80;
        sub_22838F680();
        v44 = sub_228391100();
        v46 = v45;
        (*(v78 + 8))(v43, v81);
        (*(v12 + 8))(v18, v79);
        if (v46)
        {
LABEL_38:
          v82[0] = v44;
          v82[1] = v46;

          v24 = MEMORY[0x277D84F90];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_22819837C(0, *(v24 + 16) + 1, 1, v24);
          }

          v48 = *(v24 + 16);
          v47 = *(v24 + 24);
          if (v48 >= v47 >> 1)
          {
            v24 = sub_22819837C((v47 > 1), v48 + 1, 1, v24);
          }

          *(v24 + 16) = v48 + 1;
          v49 = v24 + 24 * v48;
          *(v49 + 32) = v44;
          *(v49 + 40) = v46;
          *(v49 + 48) = 0;
          sub_2281CBC34(v82);
          return v24;
        }

LABEL_37:

        v44 = 0;
        v46 = 0xE000000000000000;
        goto LABEL_38;
      }
    }

    else
    {
      v19 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_37;
  }

  if (v19 <= 6)
  {
    if (v19 != 4)
    {
      if (v19 != 5)
      {
        goto LABEL_49;
      }

      v20 = [v1 timeIntervals];
      sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
      sub_2283921A0();

      v21 = sub_228392210();

      if (v21 >> 62)
      {
        v3 = sub_2283930D0();
        if (v3)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v3 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3)
        {
LABEL_7:
          v2 = v21;
          v84 = MEMORY[0x277D84F90];
          v19 = sub_2281C9D24(0, v3 & ~(v3 >> 63), 0);
          if ((v3 & 0x8000000000000000) == 0)
          {
            v22 = 0;
            v23 = v21;
            v76 = v21 & 0xC000000000000001;
            v77 = v3;
            v24 = v84;
            v25 = (v78 + 8);
            v26 = (v12 + 8);
            v78 = v21;
            do
            {
              if (v76)
              {
                v27 = MEMORY[0x22AAB6D80](v22);
              }

              else
              {
                v27 = *(v23 + 8 * v22 + 32);
              }

              v28 = v27;
              sub_2282D9ECC([v27 daysOfWeek], v16);
              v29 = v80;
              sub_22838F680();
              v30 = sub_228391100();
              v32 = v31;
              (*v25)(v29, v81);
              (*v26)(v16, v79);

              if (v32)
              {
                v33 = v30;
              }

              else
              {
                v33 = 0;
              }

              if (!v32)
              {
                v32 = 0xE000000000000000;
              }

              v84 = v24;
              v35 = *(v24 + 16);
              v34 = *(v24 + 24);
              if (v35 >= v34 >> 1)
              {
                sub_2281C9D24((v34 > 1), v35 + 1, 1);
                v24 = v84;
              }

              ++v22;
              *(v24 + 16) = v35 + 1;
              v36 = v24 + 24 * v35;
              *(v36 + 32) = v33;
              *(v36 + 40) = v32;
              *(v36 + 48) = 0;
              v23 = v78;
            }

            while (v77 != v22);

            return v24;
          }

          __break(1u);
          goto LABEL_48;
        }
      }

      return MEMORY[0x277D84F90];
    }

LABEL_22:
    sub_2281CBF3C(0, &qword_27D823EF0, &type metadata for ScheduleListItem, MEMORY[0x277D84560]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_228397F40;
    *(v24 + 32) = sub_2281DB0CC();
    *(v24 + 40) = v37;
    *(v24 + 48) = 0;
    return v24;
  }

  if ((v19 - 7) >= 2)
  {
    goto LABEL_57;
  }

  return _sSo20HKMedicationScheduleC19HealthMedicationsUIE024unittesting_makeCyclicalB5ItemsSayAC0B8ListItemOGyF_0();
}

uint64_t sub_2281C7A58@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_228391130();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282D9ECC([*a1 daysOfWeek], v8);
  v9 = sub_2283910D0();
  result = (*(v5 + 8))(v8, v4);
  *a2 = v9;
  return result;
}

uint64_t _sSo20HKMedicationScheduleC19HealthMedicationsUIE024unittesting_makeCyclicalB5ItemsSayAC0B8ListItemOGyF_0()
{
  v1 = v0;
  v2 = MEMORY[0x277D83D88];
  sub_2281CBCB4(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v63 - v5;
  v6 = sub_22838F6C0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = (&v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2281CBCB4(0, &qword_27D824550, type metadata accessor for CycleData, v2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v63 - v11;
  v13 = type metadata accessor for CycleData();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22838F440();
  v18 = *(v17 - 8);
  v19 = *(v18 + 8);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v63 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v63 - v26;
  v68 = sub_2281DB0CC();
  v29 = v28;
  v30 = [v1 endDateTime];
  if (v30)
  {
    v67 = v29;
    v64 = v16;
    v65 = v22;
    v31 = v30;
    sub_22838F3E0();

    sub_22838F340();
    sub_2281CC050(&qword_280DDCDB8, MEMORY[0x277CC9578]);
    LOBYTE(v31) = sub_228391FA0();
    v32 = v18;
    v33 = *(v18 + 1);
    v33(v25, v17);
    if ((v31 & 1) == 0)
    {
      sub_2281CBF3C(0, &qword_27D823EF0, &type metadata for ScheduleListItem, MEMORY[0x277D84560]);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_228397F40;
      v44 = v67;
      *(v43 + 32) = v68;
      *(v43 + 40) = v44;
      *(v43 + 48) = 0;
      v33(v27, v17);
      return v43;
    }

    v33(v27, v17);
    v18 = v32;
    v16 = v64;
    v22 = v65;
    v29 = v67;
  }

  v34 = v1;
  v35 = v71;
  sub_22838F620();
  sub_2282CD948(v34, v35, v12);
  if ((*(v69 + 48))(v12, 1, v70) == 1)
  {

    v36 = &qword_27D824550;
    v37 = type metadata accessor for CycleData;
LABEL_9:
    sub_2281CBECC(v12, v36, v37);
    return MEMORY[0x277D84F90];
  }

  v38 = v29;
  v71 = v18;
  sub_2281CC098(v12, v16, type metadata accessor for CycleData);
  CycleData.currentPhase.getter(v72);
  v39 = v74;
  if (v74 == 255)
  {
    sub_2281CBFF0(v16, type metadata accessor for CycleData);

    return MEMORY[0x277D84F90];
  }

  v40 = v73;
  v12 = v66;
  CycleData.nextCycleChangeDate.getter(v66);
  v41 = v71;
  v42 = v17;
  if (v71[6](v12, 1, v17) == 1)
  {
    sub_2281CBFF0(v16, type metadata accessor for CycleData);

    v36 = &qword_280DDCDB0;
    v37 = MEMORY[0x277CC9578];
    goto LABEL_9;
  }

  v41[4](v22, v12, v17);
  v46 = CycleData.localizeCurrentPhaseDescription.getter();
  if (!v47)
  {

    (v41[1])(v22, v17);
    sub_2281CBFF0(v16, type metadata accessor for CycleData);
    return MEMORY[0x277D84F90];
  }

  v48 = v46;
  v49 = v47;
  if (v39)
  {
    sub_2281CBF3C(0, &qword_27D823EF0, &type metadata for ScheduleListItem, MEMORY[0x277D84560]);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_228398270;
    *(v50 + 32) = v68;
    *(v50 + 40) = v38;
    v43 = v50;
    *(v50 + 48) = 0;
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    *(v43 + 56) = sub_22838F0C0();
    *(v43 + 64) = v51;
    *(v43 + 72) = 1;
    *(v43 + 80) = v48;
    *(v43 + 88) = v49;
    *(v43 + 96) = 1;
    goto LABEL_26;
  }

  sub_2281CBF3C(0, &qword_27D823EF0, &type metadata for ScheduleListItem, MEMORY[0x277D84560]);
  if (!v40)
  {
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_228397F30;
    *(v43 + 32) = v68;
    *(v43 + 40) = v38;
    *(v43 + 48) = 0;
    *(v43 + 56) = v48;
    *(v43 + 64) = v49;
    *(v43 + 72) = 1;
LABEL_26:
    (v71[1])(v22, v42);
    sub_2281CBFF0(v16, type metadata accessor for CycleData);
    return v43;
  }

  v64 = v16;
  v65 = v22;
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_228398270;
  *(v52 + 32) = v68;
  *(v52 + 40) = v38;
  *(v52 + 48) = 0;
  *(v52 + 56) = v48;
  *(v52 + 64) = v49;
  v53 = v52;
  *(v52 + 72) = 1;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22819A064(0, &qword_280DDB870, &qword_280DDB830);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_228397F40;
  v55 = Date.formattedWithYearIfDifferent()();
  *(v54 + 56) = MEMORY[0x277D837D0];
  *(v54 + 64) = sub_22818E210();
  *(v54 + 32) = v55;
  v56 = sub_22838F0C0();
  v58 = v57;
  if (*(v54 + 16))
  {
    v56 = sub_228391FD0();
    v60 = v59;

    v58 = v60;
  }

  else
  {
  }

  v62 = v64;
  v61 = v65;
  *(v53 + 80) = v56;
  *(v53 + 88) = v58;
  *(v53 + 96) = 1;
  (v71[1])(v61, v42);
  sub_2281CBFF0(v62, type metadata accessor for CycleData);
  return v53;
}

uint64_t HKMedicationSchedule.makeItems()()
{
  if ([v0 isUnavailable])
  {
    if (qword_280DDCF18 == -1)
    {
LABEL_3:
      v1 = sub_22838F0C0();
      v3 = v2;
      sub_2281CBF3C(0, &qword_280DDB8B8, &type metadata for MedicationCellItem, MEMORY[0x277D84560]);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_228397F40;
      v5 = [objc_opt_self() secondaryLabelColor];
      v6 = sub_22838F0C0();
      MEMORY[0x22AAB5C80](v6);

      MEMORY[0x22AAB5C80](32, 0xE100000000000000);
      MEMORY[0x22AAB5C80](v1, v3);
      *(v4 + 32) = 0;
      *(v4 + 40) = v5;
      *(v4 + 48) = v1;
      *(v4 + 56) = v3;
      *(v4 + 64) = 0xD00000000000001BLL;
      *(v4 + 72) = 0x80000002283A9BE0;
      *(v4 + 80) = 0;
      *(v4 + 88) = 0xE000000000000000;
      return v4;
    }

LABEL_22:
    swift_once();
    goto LABEL_3;
  }

  v7 = HKMedicationSchedule.makeScheduleItems()();
  v8 = *(v7 + 16);
  if (!v8)
  {

    return MEMORY[0x277D84F90];
  }

  v29 = MEMORY[0x277D84F90];
  sub_2281C9D44(0, v8, 0);
  v4 = v29;
  v23 = objc_opt_self();
  if (!*(v7 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v9 = 0;
  v10 = (v7 + 48);
  v22 = v8 - 1;
  while (1)
  {
    v11 = *(v10 - 2);
    v12 = *(v10 - 1);
    v13 = *v10;
    sub_2281CBC88();
    v14 = [v23 secondaryLabelColor];
    v15 = 0x7261646E656C6163;
    if (v13)
    {
      v15 = 0;
    }

    v26 = v15;
    v16 = 0xE800000000000000;
    if (v13)
    {
      v16 = 0;
    }

    v24 = v14;
    v25 = v16;
    sub_2281CBC88();
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    v17 = sub_22838F0C0();
    MEMORY[0x22AAB5C80](v17);

    MEMORY[0x22AAB5C80](32, 0xE100000000000000);
    sub_2281CBC88();
    MEMORY[0x22AAB5C80](v11, v12);
    sub_2281CBC90();
    sub_2281CBC90();
    v27 = *v28;
    HIBYTE(v27) = v28[3];
    v19 = *(v29 + 16);
    v18 = *(v29 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_2281C9D44((v18 > 1), v19 + 1, 1);
    }

    *(v29 + 16) = v19 + 1;
    v20 = v29 + (v19 << 6);
    *(v20 + 32) = 0;
    *(v20 + 33) = v27;
    *(v20 + 36) = *&v28[3];
    *(v20 + 40) = v24;
    *(v20 + 48) = v11;
    *(v20 + 56) = v12;
    *(v20 + 64) = v26;
    *(v20 + 72) = v25;
    *(v20 + 80) = 0;
    *(v20 + 88) = 0xE000000000000000;
    if (v22 == v9)
    {
      break;
    }

    v10 += 24;
    if (++v9 >= *(v7 + 16))
    {
      goto LABEL_21;
    }
  }

  return v4;
}

uint64_t sub_2281C8894(id *a1, uint64_t a2)
{
  v4 = sub_22838F080();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*a1 startTimeComponent];
  sub_22838EFD0();

  LOBYTE(a2) = MEMORY[0x22AAB2B60](v8, a2);
  (*(v5 + 8))(v8, v4);
  return a2 & 1;
}

void *sub_2281C89A0()
{
  v0 = sub_228391130();
  v1 = *(v0 - 8);
  v116 = v0;
  v117 = v1;
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v83 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v90 = &v81 - v6;
  MEMORY[0x28223BE20](v5);
  v112 = &v81 - v7;
  v113 = type metadata accessor for WeekdaysAndDosages(0);
  v111 = *(v113 - 8);
  v8 = *(v111 + 64);
  v9 = MEMORY[0x28223BE20](v113);
  v91 = (&v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v110 = &v81 - v11;
  v96 = sub_22838F4A0();
  v12 = *(v96 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v96);
  v95 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22838F080();
  v115 = *(v15 - 8);
  v16 = *(v115 + 8);
  MEMORY[0x28223BE20](v15);
  v89 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22838F6C0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v106 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281CBCB4(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v81 - v24;
  v26 = sub_22838F440();
  v27 = *(v26 - 1);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v88 = &v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v81 - v31;
  v33 = sub_2281C6154();
  v100 = v33;
  if (v33 >> 62)
  {
    goto LABEL_40;
  }

  v107 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v107)
  {
    while (1)
    {
      v101 = v32;
      v108 = v26;
      v105 = v25;
      v32 = 0;
      v109 = v100 & 0xC000000000000001;
      v99 = v100 & 0xFFFFFFFFFFFFFF8;
      v98 = v100 + 32;
      v103 = (v19 + 8);
      v104 = (v115 + 8);
      v102 = (v27 + 48);
      v34 = (v27 + 32);
      v87 = (v27 + 16);
      v86 = (v12 + 32);
      v114 = (v117 + 1);
      v92 = (v27 + 8);
      v27 = v100;
      v82 = (v117 + 2);
      v81 = (v12 + 8);
      v117 = MEMORY[0x277D84F90];
      v85 = xmmword_228397F40;
      v19 = v89;
      v12 = v107;
      v84 = v15;
      v93 = v18;
      v94 = v34;
      while (1)
      {
        if (v109)
        {
          v35 = MEMORY[0x22AAB6D80](v32, v27);
        }

        else
        {
          if (v32 >= *(v99 + 16))
          {
            goto LABEL_38;
          }

          v35 = *(v98 + 8 * v32);
        }

        v26 = v35;
        if (__OFADD__(v32++, 1))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v37 = [v35 dose];
        if (!v37)
        {
          break;
        }

        v38 = v37;
        [v37 doubleValue];
        v40 = v39;

        if (v40 != 0.0)
        {
          break;
        }

LABEL_5:
        if (v32 == v12)
        {

          return v117;
        }
      }

      v41 = v106;
      sub_22838F680();
      v42 = [v26 startTimeComponent];
      sub_22838EFD0();

      v25 = v105;
      sub_22838F640();
      (*v104)(v19, v15);
      (*v103)(v41, v18);
      v12 = v108;
      if ((*v102)(v25, 1, v108) == 1)
      {
        break;
      }

      v43 = v94;
      v44 = *v94;
      v27 = v101;
      (*v94)(v101, v25, v12);
      v45 = [v26 dose];
      if (!v45)
      {
        (*v92)(v27, v12);

        v18 = v93;
        v27 = v100;
        goto LABEL_34;
      }

      v115 = v26;
      v25 = v43;
      v46 = v45;
      [v45 doubleValue];
      v48 = v47;

      sub_2281CBCB4(0, &qword_27D823E30, type metadata accessor for Dosage, MEMORY[0x277D84560]);
      v19 = type metadata accessor for Dosage() - 8;
      v49 = *(*v19 + 72);
      v50 = (*(*v19 + 80) + 32) & ~*(*v19 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = v85;
      v97 = v51;
      v52 = v51 + v50;
      v53 = v88;
      (*v87)(v88, v27, v12);
      v15 = v95;
      sub_22838F490();
      (*v86)(v52, v15, v96);
      v44((v52 + *(v19 + 28)), v53, v12);
      *(v52 + *(v19 + 32)) = v48;
      v54 = v117;
      v55 = v117[2];
      if (!v55)
      {
LABEL_21:
        v26 = v115;
        v58 = [v115 daysOfWeek];
        v59 = v112;
        sub_2282D9ECC(v58, v112);
        v60 = MEMORY[0x277D11768];
        sub_2281CC050(&qword_27D824820, MEMORY[0x277D11768]);
        v61 = v83;
        v62 = v116;
        sub_228393020();
        sub_2281CC050(&qword_280DDBD08, v60);
        v63 = sub_228391FB0();
        v64 = *v114;
        (*v114)(v61, v62);
        v65 = v64;
        v64(v59, v62);
        v27 = v100;
        if (v63)
        {
          v66 = v90;
          sub_228391070();
        }

        else
        {
          v67 = [v26 daysOfWeek];
          v66 = v90;
          sub_2282D9ECC(v67, v90);
        }

        v18 = v93;
        v68 = v113;
        v69 = v91;
        (*v82)(v91 + *(v113 + 20), v66, v116);
        v25 = v95;
        sub_22838F490();
        v70 = sub_22838F450();
        v72 = v71;
        (*v81)(v25, v96);
        *v69 = v70;
        v69[1] = v72;
        *(v69 + *(v68 + 24)) = v97;
        v73 = v117;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = sub_2281984B4(0, v73[2] + 1, 1, v73);
        }

        v15 = v84;
        v12 = v107;
        v75 = v73[2];
        v74 = v73[3];
        v117 = v73;
        if (v75 >= v74 >> 1)
        {
          v117 = sub_2281984B4(v74 > 1, v75 + 1, 1, v117);
        }

        v65(v90, v116);
        (*v92)(v101, v108);
        v76 = v117;
        v117[2] = v75 + 1;
        sub_2281CC098(v91, v76 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v75, type metadata accessor for WeekdaysAndDosages);
        v19 = v89;
        goto LABEL_5;
      }

      v18 = 0;
      while (1)
      {
        if (v18 >= v54[2])
        {
          __break(1u);
          goto LABEL_37;
        }

        v27 = v110;
        v26 = ((*(v111 + 80) + 32) & ~*(v111 + 80));
        v25 = *(v111 + 72) * v18;
        sub_2281CBF8C(v26 + v54 + v25, v110);
        v56 = *(v113 + 20);
        v57 = [v115 daysOfWeek];
        v15 = v112;
        sub_2282D9ECC(v57, v112);
        v19 = sub_2281CC050(&qword_27D824818, MEMORY[0x277D11768]);
        v12 = v116;
        sub_228392170();
        sub_228392170();
        (*v114)(v15, v12);
        sub_2281CBFF0(v27, type metadata accessor for WeekdaysAndDosages);
        if (v119 == v118)
        {
          break;
        }

        ++v18;
        v54 = v117;
        if (v55 == v18)
        {
          goto LABEL_21;
        }
      }

      v77 = v117;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v100;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v77 = sub_2281D9300(v77);
      }

      v15 = v84;
      v19 = v89;
      if (v18 < v77[2])
      {
        v117 = v77;
        v79 = v26 + v77 + *(v113 + 24) + v25;
        sub_2281D55D0(v97);

        (*v92)(v101, v108);
        v18 = v93;
        goto LABEL_34;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      v107 = sub_2283930D0();
      if (!v107)
      {
        goto LABEL_41;
      }
    }

    sub_2281CBECC(v25, &qword_280DDCDB0, MEMORY[0x277CC9578]);
LABEL_34:
    v12 = v107;
    goto LABEL_5;
  }

LABEL_41:

  return MEMORY[0x277D84F90];
}

uint64_t sub_2281C96FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2281C97C8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2281BC4A4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2281C97C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2281C98D4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_228393200();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2281C98D4(uint64_t a1, unint64_t a2)
{
  v4 = sub_2281C9920(a1, a2);
  sub_2281C9A50(&unk_283B66640);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2281C9920(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2281C9B3C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_228393200();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2283920F0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2281C9B3C(v10, 0);
        result = sub_2283931C0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2281C9A50(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2281C9BC8(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2281C9B3C(uint64_t a1, uint64_t a2)
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

  sub_2281CBF3C(0, &qword_27D8247F8, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2281C9BC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2281CBF3C(0, &qword_27D8247F8, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_2281C9CD4(size_t a1, int64_t a2, char a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D823DE0, type metadata accessor for WeekdaysAndDosages, type metadata accessor for WeekdaysAndDosages);
  *v3 = result;
  return result;
}

char *sub_2281C9D24(char *a1, int64_t a2, char a3)
{
  result = sub_2281CA3F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2281C9D44(char *a1, int64_t a2, char a3)
{
  result = sub_2281CA524(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2281C9D64(size_t a1, int64_t a2, char a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D8247B0, MEMORY[0x277CC8990], MEMORY[0x277CC8990]);
  *v3 = result;
  return result;
}

void *sub_2281C9DB4(void *a1, int64_t a2, char a3)
{
  result = sub_2281CB120(a1, a2, a3, *v3, &qword_280DDB8D0, &qword_280DDCD60);
  *v3 = result;
  return result;
}

void *sub_2281C9DEC(void *a1, int64_t a2, char a3)
{
  result = sub_2281CB120(a1, a2, a3, *v3, &qword_27D823918, &qword_27D827E00);
  *v3 = result;
  return result;
}

char *sub_2281C9E24(char *a1, int64_t a2, char a3)
{
  result = sub_2281CA648(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2281C9E44(char *a1, int64_t a2, char a3)
{
  result = sub_2281CA764(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2281C9E64(char *a1, int64_t a2, char a3)
{
  result = sub_2281CA888(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2281C9E84(size_t a1, int64_t a2, char a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D823DE8, sub_228199E70, sub_228199E70);
  *v3 = result;
  return result;
}

size_t sub_2281C9ED4(size_t a1, int64_t a2, char a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D824768, sub_228199F78, sub_228199F78);
  *v3 = result;
  return result;
}

size_t sub_2281C9F24(size_t a1, int64_t a2, char a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D824570, type metadata accessor for ScheduleIntervalItem, type metadata accessor for ScheduleIntervalItem);
  *v3 = result;
  return result;
}

size_t sub_2281C9F74(size_t a1, int64_t a2, char a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D8247B8, type metadata accessor for MedicationSearchItem, type metadata accessor for MedicationSearchItem);
  *v3 = result;
  return result;
}

void *sub_2281C9FC4(void *a1, int64_t a2, char a3)
{
  result = sub_2281CB120(a1, a2, a3, *v3, &qword_27D824808, &qword_27D824810);
  *v3 = result;
  return result;
}

size_t sub_2281C9FFC(size_t a1, int64_t a2, char a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D824800, MEMORY[0x277D11000], MEMORY[0x277D11000]);
  *v3 = result;
  return result;
}

void *sub_2281CA04C(void *a1, int64_t a2, char a3)
{
  result = sub_2281CA9E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2281CA06C(char *a1, int64_t a2, char a3)
{
  result = sub_2281CAB3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2281CA08C(void *a1, int64_t a2, char a3)
{
  result = sub_2281CAC60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2281CA0AC(void *a1, int64_t a2, char a3)
{
  result = sub_2281CB120(a1, a2, a3, *v3, &qword_27D8247C0, &qword_27D8247C8);
  *v3 = result;
  return result;
}

char *sub_2281CA0E4(char *a1, int64_t a2, char a3)
{
  result = sub_2281CADAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2281CA104(size_t a1, int64_t a2, char a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D824760, MEMORY[0x277D116F0], MEMORY[0x277D116F0]);
  *v3 = result;
  return result;
}

char *sub_2281CA154(char *a1, int64_t a2, char a3)
{
  result = sub_2281CAEC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2281CA174(void *a1, int64_t a2, char a3)
{
  result = sub_2281CAFE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2281CA194(void *a1, int64_t a2, char a3)
{
  result = sub_2281CB120(a1, a2, a3, *v3, &qword_27D8247E8, &qword_27D8247F0);
  *v3 = result;
  return result;
}

char *sub_2281CA1CC(char *a1, int64_t a2, char a3)
{
  result = sub_2281CB27C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2281CA1EC(size_t a1, int64_t a2, char a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D8247D0, MEMORY[0x277D116B0], MEMORY[0x277D116B0]);
  *v3 = result;
  return result;
}

size_t sub_2281CA23C(size_t a1, int64_t a2, char a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D823E30, type metadata accessor for Dosage, type metadata accessor for Dosage);
  *v3 = result;
  return result;
}

char *sub_2281CA28C(char *a1, int64_t a2, char a3)
{
  result = sub_2281CB3DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2281CA2AC(size_t a1, int64_t a2, char a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D10F78]);
  *v3 = result;
  return result;
}

void *sub_2281CA2FC(void *a1, int64_t a2, char a3)
{
  result = sub_2281CB51C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2281CA31C(size_t a1, int64_t a2, char a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D824758, sub_2281CBD18, sub_2281CBD18);
  *v3 = result;
  return result;
}

size_t sub_2281CA36C(size_t a1, int64_t a2, char a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_280DDB8A8, type metadata accessor for MedicationChartCodableData, type metadata accessor for MedicationChartCodableData);
  *v3 = result;
  return result;
}

char *sub_2281CA3F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2281CBF3C(0, &qword_27D823EF0, &type metadata for ScheduleListItem, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2281CA524(char *result, int64_t a2, char a3, char *a4)
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
    sub_2281CBF3C(0, &qword_280DDB8B8, &type metadata for MedicationCellItem, MEMORY[0x277D84560]);
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

char *sub_2281CA648(char *result, int64_t a2, char a3, char *a4)
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
    sub_2281CBF3C(0, &qword_27D8247E0, &type metadata for FrequencyInterval, MEMORY[0x277D84560]);
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

char *sub_2281CA764(char *result, int64_t a2, char a3, char *a4)
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
    sub_2281CBF3C(0, &qword_27D823EE0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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

char *sub_2281CA888(char *result, int64_t a2, char a3, char *a4)
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
    sub_2281CBCB4(0, &qword_27D824770, type metadata accessor for HKMedicationFreeTextFormTypeCode, MEMORY[0x277D84560]);
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

void *sub_2281CA9E4(void *result, int64_t a2, char a3, void *a4)
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
    sub_2281CBF3C(0, &qword_280DDB8C8, &type metadata for MedicationDoseLogMedicationItem, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2281CAB3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2281CBF3C(0, &qword_27D823E98, &type metadata for ScheduledDoseIdentifier, MEMORY[0x277D84560]);
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

void *sub_2281CAC60(void *result, int64_t a2, char a3, void *a4)
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
    sub_2281CBCB4(0, &qword_27D823EA8, sub_22819A174, MEMORY[0x277D84560]);
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
    sub_22819A174(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2281CADAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2281CBF3C(0, &qword_27D824780, &type metadata for UserSelectableScheduleType, MEMORY[0x277D84560]);
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

char *sub_2281CAEC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2281CBF3C(0, &qword_27D824788, &type metadata for PauseUsePeriod, MEMORY[0x277D84560]);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_2281CAFE0(void *result, int64_t a2, char a3, void *a4)
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
    sub_22819A2BC();
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
    sub_2281CBF3C(0, &qword_27D823EC0, &type metadata for LoggableDose, MEMORY[0x277D83940]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2281CB120(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_22819A064(0, a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[5 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22818217C(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2281CB27C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2281CBF3C(0, &qword_27D8247D8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
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

char *sub_2281CB3DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2281CBF3C(0, &qword_27D824778, &type metadata for ScheduleTypeOptionItem, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2281CB51C(void *result, int64_t a2, char a3, void *a4)
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
    sub_22819A064(0, &qword_27D827750, &qword_27D8238E8);
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
    sub_22818217C(0, &qword_27D8238E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2281CB668(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_2281CBCB4(0, a5, a6, MEMORY[0x277D84560]);
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

uint64_t (*sub_2281CB85C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AAB6D80](a2, a3);
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
    return sub_2281CC100;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2281CB8DC(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x22AAB6D80](a2, a3);
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
    return sub_2281CB95C;
  }

  __break(1u);
  return result;
}

void (*sub_2281CB964(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AAB6D80](a2, a3);
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
    return sub_2281CB9E4;
  }

  __break(1u);
  return result;
}

unint64_t sub_2281CB9EC@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x22AAB6D80](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _s19HealthMedicationsUI16ScheduleListItemO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v12 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    v9 = *a2;
    v10 = a2[1];
    sub_2281CBC88();
    sub_2281CBC88();
    sub_2281CBC90();
    sub_2281CBC90();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *a1;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v14 = sub_228393460();
    sub_2281CBC88();
    sub_2281CBC88();
    sub_2281CBC90();
    sub_2281CBC90();
    return v14 & 1;
  }

LABEL_15:
  sub_2281CBC88();
  sub_2281CBC88();
  sub_2281CBC90();
  sub_2281CBC90();
  return 1;
}

void sub_2281CBCB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2281CBD18()
{
  if (!qword_27D823DF8)
  {
    sub_2281CBD9C(255, &qword_27D823E00, &qword_280DDB990, 0x277D75348, MEMORY[0x277CCB2C8]);
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823DF8);
    }
  }
}

void sub_2281CBD9C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22817A958(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2281CBE04()
{
  result = qword_27D8247A0;
  if (!qword_27D8247A0)
  {
    sub_2281CBCB4(255, &qword_27D824798, MEMORY[0x277CC8990], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8247A0);
  }

  return result;
}

uint64_t sub_2281CBECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2281CBCB4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2281CBF3C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2281CBF8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeekdaysAndDosages(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281CBFF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2281CC050(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2281CC098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2281CC17C()
{
  sub_2281CCB30(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *(*(v0 + qword_27D824D88) + 24);
  sub_2281CC9A0();
  sub_2281CCBF4(&qword_27D824868, sub_2281CC9A0);

  sub_2283919F0();

  sub_2281CCBF4(&qword_27D824880, sub_2281CCB30);
  v7 = sub_228391990();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_2281CC334@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 24);
  if (v2 == 255)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2 & 1;
  }

  *a2 = v3;
  return result;
}

id sub_2281CC34C()
{
  v1 = qword_27D824828;
  v2 = *(v0 + qword_27D824828);
  if (v2)
  {
    v3 = *(v0 + qword_27D824828);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    [v4 setNumberStyle_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_2281CC3D4()
{
  sub_2281CC980(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(*&v0[qword_27D824D88] + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2281CCA58;
  *(v8 + 24) = v7;
  sub_2281CC9A0();
  sub_2281CCBF4(&qword_27D824868, sub_2281CC9A0);

  v9 = v0;
  sub_2283919A0();

  sub_2281CCBF4(&qword_27D824870, sub_2281CC980);
  v10 = sub_228391990();
  (*(v3 + 8))(v6, v2);
  return v10;
}

uint64_t sub_2281CC5E0(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  if (a4 == -1)
  {
    return 0;
  }

  if (a4)
  {
    if (a2)
    {

      v10 = a3;
      v11 = sub_2281CC34C();
      v12 = sub_228391FC0();
      v13 = [v11 numberFromString_];
      sub_2281CCAC8(a1, a2, a3, a4);

      if (!v13)
      {
        v21 = 0;
        return v21 & 1;
      }
    }

    else
    {
      sub_2281CCAC8(a1, 0, a3, a4);
    }

    v21 = 1;
  }

  else
  {
    v15 = qword_27D824D90;
    swift_beginAccess();
    v20 = *(a5 + v15);
    sub_2281CCAA4(a1, a2, a3, a4);

    LOBYTE(v15) = sub_228390690();
    sub_2281CCAC8(a1, a2, a3, a4);

    v21 = v15 ^ 1;
  }

  return v21 & 1;
}

void sub_2281CC750(uint64_t a1)
{
  *(a1 + qword_27D824828) = 0;
  sub_228393300();
  __break(1u);
}

id sub_2281CC938(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2281CC9A0()
{
  if (!qword_27D824858)
  {
    sub_2281CCA08();
    v0 = sub_228391880();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824858);
    }
  }
}

void sub_2281CCA08()
{
  if (!qword_27D824860)
  {
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824860);
    }
  }
}

uint64_t sub_2281CCA60@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  *a2 = result & 1;
  return result;
}

void sub_2281CCAA4(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4 != -1)
  {
    sub_2281CCABC(a1, a2, a3, a4 & 1);
  }
}

void sub_2281CCABC(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {
    sub_2281A222C(a1, a2, a3);
  }

  else
  {
    v4 = a1;
  }
}

void sub_2281CCAC8(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4 != -1)
  {
    sub_2281CCAE0(a1, a2, a3, a4 & 1);
  }
}

void sub_2281CCAE0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {
    sub_2281CCAEC(a1, a2, a3);
  }

  else
  {
  }
}

void sub_2281CCAEC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

void sub_2281CCB50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    sub_2281CC9A0();
    v7 = v6;
    v8 = sub_2281CCBF4(&qword_27D824868, sub_2281CC9A0);
    v9 = a3(a1, v7, MEMORY[0x277D839B0], v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2281CCBF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MedicationHeaderDataSource()
{
  result = qword_27D824890;
  if (!qword_27D824890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2281CCD34()
{
  sub_2283903B0();

  return swift_deallocClassInstance();
}

unint64_t sub_2281CCD80()
{
  result = qword_27D8248A0;
  if (!qword_27D8248A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8248A0);
  }

  return result;
}

void *sub_2281CCDD4@<X0>(void *a1@<X8>)
{
  if (*(v1 + qword_27D824888))
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    v3 = sub_22838F0C0();
    v4 = v5;
  }

  type metadata accessor for MedicationSummaryCollectionViewHeaderCell();
  sub_2281CCF5C();
  v6 = sub_22838FBB0();
  v8 = v7;
  a1[3] = &type metadata for MedicationSummaryItem;
  a1[4] = sub_2281CCFB4();
  result = swift_allocObject();
  *a1 = result;
  result[2] = v3;
  result[3] = v4;
  result[4] = v6;
  result[5] = v8;
  return result;
}

uint64_t sub_2281CCF1C()
{
  type metadata accessor for MedicationSummaryCollectionViewHeaderCell();
  sub_2281CCF5C();
  return sub_2283926D0();
}

unint64_t sub_2281CCF5C()
{
  result = qword_27D8248A8;
  if (!qword_27D8248A8)
  {
    type metadata accessor for MedicationSummaryCollectionViewHeaderCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8248A8);
  }

  return result;
}

unint64_t sub_2281CCFB4()
{
  result = qword_27D8248B0;
  if (!qword_27D8248B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8248B0);
  }

  return result;
}

uint64_t type metadata accessor for NotificationFooterDataSource()
{
  result = qword_27D8248C0;
  if (!qword_27D8248C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2281CD0A0()
{
  v0 = sub_228391630();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2283900D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  sub_228390040();
  sub_228390000();
  v13 = *(v6 + 8);
  v13(v10, v5);
  (*(v1 + 104))(v4, *MEMORY[0x277D74D88], v0);
  sub_22838FFF0();
  v14 = sub_2283900C0();
  v13(v12, v5);
  return v14;
}

uint64_t sub_2281CD2D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v4 = sub_22838F0C0();
  v6 = v5;
  v7 = *(v3 + qword_27D8248B8);
  type metadata accessor for SeparatorFooterCell();
  sub_2281CDF70();
  v8 = sub_22838FBB0();
  v10 = v9;
  a1[3] = &type metadata for SeparatorFooterItem;
  a1[4] = sub_2281CDFC4();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v4;
  *(result + 24) = v6;
  *(result + 32) = v7;
  *(result + 40) = v8;
  *(result + 48) = v10;
  return result;
}

uint64_t sub_2281CD3F0()
{
  type metadata accessor for SeparatorFooterCell();
  sub_2281CDF70();
  return sub_2283926C0();
}

uint64_t sub_2281CD42C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_2281CD490(uint64_t a1)
{
  v2 = sub_2281CE0D0();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_2281CD4DC()
{
  v1 = sub_228391590();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorFooterCell_item;
  swift_beginAccess();
  sub_22817E6C8(v0 + v6, v16);
  if (!v17)
  {
    return sub_22819482C(v16);
  }

  sub_22817A700();
  result = swift_dynamicCast();
  if (result)
  {
    v8 = v15[24];
    sub_228391560();

    sub_228391540();
    v9 = sub_2283914C0();
    *v10 = 0x4028000000000000;
    v9(v16, 0);
    v11 = sub_2283914C0();
    *(v12 + 16) = 0x4028000000000000;
    v11(v16, 0);
    v17 = v1;
    v18 = MEMORY[0x277D74C30];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
    (*(v2 + 16))(boxed_opaque_existential_1, v5, v1);
    MEMORY[0x22AAB6400](v16);
    sub_2281CD7DC();
    v14 = sub_2281CD708();

    [v14 setHidden_];

    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

id sub_2281CD708()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorFooterCell____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorFooterCell____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorFooterCell____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D12A48]) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() separatorColor];
    [v4 setColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_2281CD7DC()
{
  v1 = v0;
  v2 = [v0 contentView];
  v3 = sub_2281CD708();
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v4 = sub_228392810();

  if ((v4 & 1) == 0)
  {
    v5 = [v1 contentView];
    v6 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorFooterCell____lazy_storage___separatorView;
    [v5 addSubview_];

    v7 = objc_opt_self();
    sub_228180ED0();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_228397F00;
    v9 = [*&v1[v6] heightAnchor];
    v10 = [v9 constraintEqualToConstant_];

    *(v8 + 32) = v10;
    v11 = [*&v1[v6] leadingAnchor];
    v12 = [v1 layoutMarginsGuide];
    v13 = [v12 leadingAnchor];

    v14 = [v11 constraintEqualToAnchor_];
    *(v8 + 40) = v14;
    v15 = [*&v1[v6] trailingAnchor];
    v16 = [v1 layoutMarginsGuide];
    v17 = [v16 trailingAnchor];

    v18 = [v15 constraintEqualToAnchor_];
    *(v8 + 48) = v18;
    v19 = [*&v1[v6] topAnchor];
    v20 = [v1 contentView];
    v21 = [v20 topAnchor];

    v22 = [v19 constraintEqualToAnchor_];
    *(v8 + 56) = v22;
    sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
    v23 = sub_228392190();

    [v7 activateConstraints_];
  }
}

id sub_2281CDC38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeparatorFooterCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2281CDCDC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorFooterCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2281CDD34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorFooterCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2281CD4DC();
  return sub_22819482C(a1);
}

uint64_t (*sub_2281CDDA0(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2281CDE04;
}

uint64_t sub_2281CDE08@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorFooterCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a1);
}

uint64_t sub_2281CDE64(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorFooterCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v3 + v4);
  swift_endAccess();
  sub_2281CD4DC();
  return sub_22819482C(a1);
}

uint64_t (*sub_2281CDED4(uint64_t a1))()
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_2281CE16C;
}

uint64_t sub_2281CDF3C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_2281CD4DC();
  }

  return result;
}

unint64_t sub_2281CDF70()
{
  result = qword_27D8248E0;
  if (!qword_27D8248E0)
  {
    type metadata accessor for SeparatorFooterCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8248E0);
  }

  return result;
}

unint64_t sub_2281CDFC4()
{
  result = qword_27D8248E8;
  if (!qword_27D8248E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8248E8);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2281CE02C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2281CE074(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2281CE0D0()
{
  result = qword_27D8248F0;
  if (!qword_27D8248F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8248F0);
  }

  return result;
}

unint64_t sub_2281CE124()
{
  result = qword_27D8248F8;
  if (!qword_27D8248F8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D8248F8);
  }

  return result;
}

uint64_t MedicationShape.previewConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v62 = sub_228390E20();
  v3 = *(v62 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v62);
  v48 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228199E70();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_228390FD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228199F10();
  v59 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v52 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2283909E0();
  v49 = *(v19 - 8);
  v50 = v19;
  v20 = *(v49 + 64);
  MEMORY[0x28223BE20](v19);
  v51 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2283909D0();
  v23 = *(v22 + 16);
  if (v23)
  {
    v43 = v14;
    v44 = v11;
    v45 = v10;
    v46 = v1;
    v47 = a1;
    v63 = MEMORY[0x277D84F90];
    v24 = v22;
    sub_2281C9E84(0, v23, 0);
    v25 = v63;
    v28 = *(v3 + 16);
    v27 = v3 + 16;
    v26 = v28;
    v29 = (*(v27 + 64) + 32) & ~*(v27 + 64);
    v42[1] = v24;
    v30 = v24 + v29;
    v31 = *(v27 + 56);
    v54 = (v27 + 16);
    v55 = (v16 + 56);
    v56 = v31;
    v57 = v28;
    v58 = v27;
    v53 = (v27 - 8);
    v32 = v48;
    do
    {
      v33 = v9;
      v34 = v62;
      v35 = v26;
      v26(v32, v30, v62);
      v36 = sub_228390E10();
      v37 = *(v61 + 48);
      if (v36)
      {
        v35(v33, v32, v34);
        v9 = v33;
        sub_2281AF0A0();
        sub_228392BC0();
        sub_228391E50();
        (*v53)(v32, v34);
        v38 = 0;
      }

      else
      {
        v9 = v33;
        (*v54)(v33, v32, v34);
        v38 = 1;
      }

      (*v55)(&v9[v37], v38, 1, v59);
      v63 = v25;
      v40 = *(v25 + 16);
      v39 = *(v25 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_2281C9E84(v39 > 1, v40 + 1, 1);
        v32 = v48;
        v25 = v63;
      }

      *(v25 + 16) = v40 + 1;
      sub_2281CE830(v9, v25 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v40);
      v26 = v57;
      v30 += v56;
      --v23;
    }

    while (v23);

    v1 = v46;
    v11 = v44;
    v10 = v45;
    v14 = v43;
  }

  else
  {
  }

  (*(v49 + 16))(v51, v1, v50);
  sub_2281AF0A0();
  sub_228392BB0();
  sub_228391E50();
  (*(v11 + 104))(v14, *MEMORY[0x277D11728], v10);
  return sub_228390D30();
}

uint64_t MedicationShape.shapeImage.getter()
{
  sub_2281CE894(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_228390D50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MedicationShape.previewConfig.getter(v8);
  (*(v5 + 16))(v3, v8, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  v9 = sub_2281BF3D4(104.0, 104.0, 1, v3);
  sub_2281A9A08(v3);
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t sub_2281CE830(uint64_t a1, uint64_t a2)
{
  sub_228199E70();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2281CE894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t HKMedicationUserDomainConcept.medmojiConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2281D5084(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = [v2 userVisualizationConfigJSONString];
  if (v8)
  {
    v9 = v8;
    sub_228392000();

    sub_228390CE0();
    v10 = sub_228390D50();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v7, 1, v10) != 1)
    {
      (*(v11 + 32))(a1, v7, v10);
      return (*(v11 + 56))(a1, 0, 1, v10);
    }

    sub_2281CEB7C(v7, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88], sub_2281D5084);
  }

  v12 = sub_228390D50();
  return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
}

uint64_t sub_2281CEB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_2281CEC00(uint64_t a1)
{
  result = sub_2281CEC28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2281CEC28()
{
  result = qword_280DDB9D8;
  if (!qword_280DDB9D8)
  {
    sub_22817A958(255, &qword_280DDB9E0, 0x277D115B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDB9D8);
  }

  return result;
}

uint64_t sub_2281CECA4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281D5084(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v83 - v12;
  v14 = sub_228390D50();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_viewModel);
  if (v18)
  {
    v84 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v85 = v11;
    v19 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_lastDoseLabelContainer);
    v20 = *(v18 + 32);
    v86 = v17;

    if (v20)
    {

      v21 = sub_228390910();

      v22 = v21 ^ 1;
    }

    else
    {
      v22 = 1;
    }

    [v19 setHidden_];

    sub_2281D3518(v31);
    sub_2281CFA50();
    v33 = v32;
    v34 = sub_228391FC0();
    [v33 setText_];

    v35 = sub_2281CFC3C();
    v36 = sub_228391FC0();

    [v35 setText_];

    v37 = sub_2281CFCF4();
    v38 = [*(v18 + 16) userSpecifiedNotes];
    [v37 setText_];

    v39 = sub_2281CFD14();
    v40 = *(v18 + 24);
    if (v40)
    {
      v41 = [v40 logOrigin] == 2;
    }

    else
    {
      v41 = *(v18 + 32) != 0;
    }

    [v39 setHidden_];

    v42 = [*(v18 + 16) userVisualizationConfigJSONString];
    if (v42)
    {
      v43 = v42;
      sub_228392000();

      sub_228390CE0();
      v44 = v86;
      if ((*(v86 + 48))(v13, 1, v14) == 1)
      {
        sub_2281CEB7C(v13, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88], sub_2281D5084);
      }

      else
      {
        v80 = v84;
        (*(v44 + 32))(v84, v13, v14);
        v81 = sub_2281CFC5C();
        v82 = v85;
        (*(v44 + 16))(v85, v80, v14);
        (*(v44 + 56))(v82, 0, 1, v14);
        sub_228390950();

        (*(v44 + 8))(v80, v14);
      }
    }

    v45 = [*(v18 + 16) userSpecifiedNotes];
    if (v45)
    {
      v46 = v45;
      sub_228392000();

      sub_2283920A0();
      v48 = v47;

      if (v48)
      {

        v49 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_contentView);
        if (v49)
        {
          v50 = v49;
          [v50 setSpacing_];
          v51 = sub_2281D0444();
          [v50 removeArrangedSubview_];

          v52 = sub_2281D02D4();
          [v50 addArrangedSubview_];

          v53 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___lowerSectionStackViewWithNotes;
          v54 = [*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___lowerSectionStackViewWithNotes) leadingAnchor];
          v55 = v50;
          v56 = [v55 &selRef_logTimeChanged_ + 1];
          v57 = [v54 constraintEqualToAnchor_];

          [v57 setActive_];
          v58 = [*(v1 + v53) trailingAnchor];
          v59 = [v55 trailingAnchor];

          v60 = [v58 constraintEqualToAnchor_];
          [v60 setActive_];

          v61 = sub_2281D07B8();
          v62 = [v61 heightAnchor];

          v63 = [v62 constraintEqualToConstant_];
          [v63 setActive_];

          v64 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___dividerView;
          v65 = [*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___dividerView) leadingAnchor];
          v66 = [*(v1 + v53) leadingAnchor];
          v67 = [v65 constraintEqualToAnchor_];

          [v67 setActive_];
          v68 = [*(v1 + v64) trailingAnchor];
          v69 = [*(v1 + v53) trailingAnchor];
          v70 = [v68 constraintEqualToAnchor_];

          [v70 setActive_];
          v71 = sub_2281D05A4();
          v72 = [v71 leadingAnchor];

          v73 = [*(v1 + v53) leadingAnchor];
          v74 = [v72 constraintEqualToAnchor_];

          [v74 setActive_];
          v75 = [*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___skippedTakenStackView) trailingAnchor];
          v76 = [*(v1 + v53) trailingAnchor];
          v77 = [v75 constraintEqualToAnchor_];

          [v77 setActive_];
        }
      }
    }

    sub_2281CF6A8(v18);
    v78 = *(v18 + 48);
    if (v78 == 4)
    {
      v79 = 1;
    }

    else
    {
      v79 = 2 * (v78 == 5);
    }

    sub_2281D4CA8(v79);
  }

  else
  {
    sub_228391150();
    v23 = sub_2283911A0();
    v24 = sub_2283925C0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v87 = v26;
      *v25 = 136315138;
      v27 = sub_228393600();
      v29 = sub_2281C96FC(v27, v28, &v87);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_22816B000, v23, v24, "[%s] Couldn't load viewModel", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AAB7B80](v26, -1, -1);
      MEMORY[0x22AAB7B80](v25, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

void sub_2281CF6A8(uint64_t a1)
{
  v2 = *MEMORY[0x277D12788];
  sub_228392000();
  MEMORY[0x22AAB5C80](0x676F4C65736F442ELL, 0xE90000000000005BLL);
  v17 = *(a1 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_index);
  v3 = sub_228393420();
  MEMORY[0x22AAB5C80](v3);

  MEMORY[0x22AAB5C80](93, 0xE100000000000000);
  sub_2281CFA50();
  v5 = v4;

  MEMORY[0x22AAB5C80](0x62614C656D614E2ELL, 0xEA00000000006C65);
  v6 = sub_228391FC0();

  [v5 setAccessibilityIdentifier_];

  v7 = sub_2281CFC3C();
  sub_2283931D0();

  MEMORY[0x22AAB5C80](0xD000000000000012, 0x80000002283AA310);
  v8 = sub_228391FC0();

  [v7 setAccessibilityIdentifier_];

  v9 = sub_2281CFCF4();

  MEMORY[0x22AAB5C80](0x614C7365746F4E2ELL, 0xEB000000006C6562);
  v10 = sub_228391FC0();

  [v9 setAccessibilityIdentifier_];

  v11 = sub_2281CFD14();
  sub_2283931D0();

  MEMORY[0x22AAB5C80](0x64657070696B532ELL, 0xEE006E6F74747542);
  v12 = sub_228391FC0();

  [v11 setAccessibilityIdentifier_];

  v13 = sub_2281CFE9C();

  MEMORY[0x22AAB5C80](0x75426E656B61542ELL, 0xEC0000006E6F7474);
  v14 = sub_228391FC0();

  [v13 setAccessibilityIdentifier_];

  v15 = sub_2281D0024();
  sub_2283931D0();

  MEMORY[0x22AAB5C80](0xD000000000000015, 0x80000002283AA330);
  v16 = sub_228391FC0();

  [v15 setAccessibilityIdentifier_];
}

void sub_2281CFA50()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medicationNameLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medicationNameLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medicationNameLabel);
LABEL_5:
    v13 = v2;
    return;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v4 setAdjustsFontForContentSizeCategory_];
  [v4 setNumberOfLines_];
  v5 = [objc_opt_self() labelColor];
  [v4 setTextColor_];

  v6 = objc_opt_self();
  v7 = [v6 preferredFontForTextStyle_];
  v8 = [v7 fontDescriptor];
  v9 = [v8 fontDescriptorWithSymbolicTraits_];

  if (v9)
  {
    v10 = v9;
    [v7 pointSize];
    v11 = [v6 fontWithDescriptor:v10 size:?];

    [v4 setFont_];
    [v4 setNumberOfLines_];
    [v4 setLineBreakMode_];

    v12 = *(v0 + v1);
    *(v0 + v1) = v4;
    v4;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

id sub_2281CFC5C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medmojiImageView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medmojiImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medmojiImageView);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2281CFD14()
{
  v1 = v0;
  sub_2281D5084(0, &qword_280DDB950, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___skippedButton;
  v7 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___skippedButton);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___skippedButton);
  }

  else
  {
    v9 = [objc_opt_self() buttonWithType_];
    sub_2281D1ADC(0, 0xD000000000000023, 0x80000002283A87B0, 0xD000000000000011);
    v10 = sub_228392DE0();
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
    sub_228392E10();
    v11 = *(v1 + v6);
    *(v1 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v12 = v7;
  return v8;
}

id sub_2281CFE9C()
{
  v1 = v0;
  sub_2281D5084(0, &qword_280DDB950, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___takenButton;
  v7 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___takenButton);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___takenButton);
  }

  else
  {
    v9 = [objc_opt_self() buttonWithType_];
    sub_2281D1ADC(0, 0xD000000000000021, 0x80000002283A87E0, 0xD000000000000015);
    v10 = sub_228392DE0();
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
    sub_228392E10();
    v11 = *(v1 + v6);
    *(v1 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v12 = v7;
  return v8;
}

id sub_2281D0044(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2281D00C4()
{
  sub_2281D548C(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228399D40;
  sub_2281CFA50();
  *(v0 + 32) = v1;
  *(v0 + 40) = sub_2281CFC3C();
  *(v0 + 48) = sub_2281D0024();
  v2 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v3 = sub_228392190();

  v4 = [v2 initWithArrangedSubviews_];

  [v4 setAxis_];
  [v4 setAlignment_];
  [v4 setDistribution_];
  [v4 setSpacing_];
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_228397F20;
  *(v5 + 32) = sub_2281CFC5C();
  *(v5 + 40) = v4;
  v6 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v7 = v4;
  v8 = sub_228392190();

  v9 = [v6 initWithArrangedSubviews_];

  [v9 setAxis_];
  [v9 setAlignment_];
  [v7 setDistribution_];
  [v9 setSpacing_];

  return v9;
}

id sub_2281D02F4()
{
  sub_2281D548C(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228399D40;
  *(v0 + 32) = sub_2281D07B8();
  *(v0 + 40) = sub_2281CFCF4();
  *(v0 + 48) = sub_2281D05A4();
  v1 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v2 = sub_228392190();

  v3 = [v1 initWithArrangedSubviews_];

  [v3 setAxis_];
  [v3 setAlignment_];
  [v3 setDistribution_];
  [v3 setSpacing_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  return v3;
}

id sub_2281D0464()
{
  sub_2281D548C(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228396260;
  *(v0 + 32) = sub_2281D05A4();
  v1 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v2 = sub_228392190();

  v3 = [v1 initWithArrangedSubviews_];

  [v3 setAxis_];
  [v3 setAlignment_];
  [v3 setDistribution_];
  [v3 setSpacing_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  return v3;
}

id sub_2281D05C4(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2281D0628(void *a1)
{
  sub_2281D548C(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228397F20;
  *(v2 + 32) = sub_2281CFD14();
  *(v2 + 40) = sub_2281CFE9C();
  v3 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v4 = sub_228392190();

  v5 = [v3 initWithArrangedSubviews_];

  v6 = [a1 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  v8 = sub_2281D3E10(v7);
  [v5 setAxis_];
  [v5 setAlignment_];
  [v5 setDistribution_];
  [v5 setSpacing_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  return v5;
}

id sub_2281D07B8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___dividerView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___dividerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___dividerView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v5 = [objc_opt_self() separatorColor];
    [v4 setBackgroundColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2281D0880()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228392050();

  v1 = sub_228391FC0();

  [v0 setText_];

  [v0 setNumberOfLines_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v2 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v3 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  return v0;
}

void sub_2281D0A40()
{
  v1 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_lastDoseLabelContainer];
  v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_lastDoseLabel];
  [v1 addSubview_];
  sub_2283928D0();
  [v2 hk:v1 alignConstraintsWithView:? insets:?];
  sub_2281D548C(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_228399D40;
  *(v3 + 32) = v1;
  v4 = v1;
  *(v3 + 40) = sub_2281D00A4();
  *(v3 + 48) = sub_2281D0444();
  v5 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v6 = sub_228392190();

  v7 = [v5 initWithArrangedSubviews_];

  v8 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_contentView;
  v9 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_contentView];
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_contentView] = v7;
  v10 = v7;

  if (v10)
  {
    [v10 setCustomSpacing:v4 afterView:8.0];
  }

  v11 = *&v0[v8];
  if (v11)
  {
    v12 = v11;
    [v12 setAxis_];
    [v12 setAlignment_];
    [v12 setDistribution_];
    [v12 setSpacing_];
    v13 = v12;
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addSubview_];
    v62 = objc_opt_self();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_22839A460;
    v15 = [v13 topAnchor];
    v16 = [v0 topAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    *(v14 + 32) = v17;
    v18 = [v13 leadingAnchor];
    v19 = [v0 leadingAnchor];
    v20 = [v18 constraintEqualToAnchor_];

    *(v14 + 40) = v20;
    v21 = [v13 trailingAnchor];
    v22 = [v0 trailingAnchor];
    v23 = [v21 constraintEqualToAnchor_];

    *(v14 + 48) = v23;
    v24 = [v13 bottomAnchor];
    v25 = [v0 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    *(v14 + 56) = v26;
    v27 = sub_2281CFC5C();
    v28 = [v27 topAnchor];

    v29 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medicationStackView;
    v30 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medicationStackView] topAnchor];
    v31 = [v28 constraintEqualToAnchor:v30 constant:5.0];

    *(v14 + 64) = v31;
    v32 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medmojiImageView;
    v33 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medmojiImageView] leadingAnchor];
    v34 = [*&v0[v29] leadingAnchor];
    v35 = [v33 constraintEqualToAnchor_];

    *(v14 + 72) = v35;
    v36 = [*&v0[v32] widthAnchor];
    v37 = [v36 constraintEqualToConstant_];

    *(v14 + 80) = v37;
    v38 = [*&v0[v32] heightAnchor];
    v39 = [*&v0[v32] widthAnchor];
    v40 = [v38 constraintEqualToAnchor_];

    *(v14 + 88) = v40;
    v41 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___lowerSectionStackView;
    v42 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___lowerSectionStackView] leadingAnchor];
    v43 = [v13 leadingAnchor];
    v44 = [v42 constraintEqualToAnchor_];

    *(v14 + 96) = v44;
    v45 = [*&v0[v41] trailingAnchor];
    v46 = [v13 trailingAnchor];

    v47 = [v45 constraintEqualToAnchor_];
    *(v14 + 104) = v47;
    v48 = sub_2281D05A4();
    v49 = [v48 leadingAnchor];

    v50 = [*&v0[v41] leadingAnchor];
    v51 = [v49 constraintEqualToAnchor_];

    *(v14 + 112) = v51;
    v52 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___skippedTakenStackView] trailingAnchor];
    v53 = [*&v0[v41] trailingAnchor];
    v54 = [v52 constraintEqualToAnchor_];

    *(v14 + 120) = v54;
    sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
    v55 = sub_228392190();

    [v62 activateConstraints_];

    v56 = sub_2281CFE9C();
    [v56 addTarget:v0 action:sel_didTapRecord_ forControlEvents:64];

    v57 = sub_2281CFD14();
    [v57 addTarget:v0 action:sel_didTapSkip_ forControlEvents:64];

    v58 = sub_2281D0024();
    [v58 addTarget:v0 action:sel_didTapUnitTime_ forControlEvents:64];

    sub_2281D5084(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_228397F40;
    v60 = sub_228391640();
    v61 = MEMORY[0x277D74DB8];
    *(v59 + 32) = v60;
    *(v59 + 40) = v61;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2281D5250();
    sub_228392B50();

    swift_unknownObjectRelease();
  }
}

void sub_2281D12B0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    type metadata accessor for MedicationDoseLogMedicationView();
    if ((sub_228392820() & 1) == 0)
    {
      v4 = sub_2281D05A4();
      v5 = [a1 traitCollection];
      v6 = [v5 preferredContentSizeCategory];

      v7 = sub_2281D3E10(v6);
      [v4 setAxis_];

      v3 = v4;
    }
  }
}

void sub_2281D1390()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for MedicationDoseLogMedicationView();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  sub_2281D548C(0, &qword_27D8247D8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228398270;
  v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_lastDoseLabelContainer];
  [v2 frame];
  v3 = MEMORY[0x277D85048];
  *(v1 + 56) = MEMORY[0x277D85048];
  *(v1 + 32) = v4;
  v5 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_lastDoseLabel];
  [v5 frame];
  *(v1 + 88) = v3;
  *(v1 + 64) = v6;
  v7 = [v5 font];
  if (v7)
  {
    v8 = v7;
    [v7 lineHeight];
    v10 = v9;

    *(v1 + 120) = v3;
    *(v1 + 96) = v10;
    sub_2283934F0();

    v11 = [v2 layer];
    v12 = [v5 font];
    if (v12)
    {
      v13 = v12;
      [v12 pointSize];
      v15 = v14;

      [v11 setCornerRadius_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_2281D1598(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_viewModel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_logDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___timeFormatter] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medicationNameLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___formStrengthLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medmojiImageView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___notesLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___skippedButton] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___takenButton] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___doseAmountTimeButton] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medicationStackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___lowerSectionStackViewWithNotes] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___lowerSectionStackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___skippedTakenStackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___dividerView] = 0;
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_lastDoseLabel;
  *&v4[v9] = sub_2281D0880();
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_lastDoseLabelContainer;
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v12 = [objc_opt_self() systemGray3Color];
  [v11 setBackgroundColor_];

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v10] = v11;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_contentView] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for MedicationDoseLogMedicationView();
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  sub_2281D0A40();

  return v13;
}

void sub_2281D17C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_viewModel);
  if (v1)
  {
    if (*(v1 + 48) == 5)
    {
      v2 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus);
      if ((v2 - 1) >= 2)
      {
        v2 = 6;
      }
    }

    else
    {
      v2 = 5;
    }

    *(v1 + 48) = v2;
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_2282D3BD8(v1);
      swift_unknownObjectRelease();
    }

    v4 = *(v1 + 48);
    if (v4 == 4)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2 * (v4 == 5);
    }

    sub_2281D4CA8(v5);
  }
}

void sub_2281D18C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_viewModel);
  if (v1)
  {
    if (*(v1 + 48) == 4)
    {
      v2 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus);
      if ((v2 - 1) >= 2)
      {
        v2 = 6;
      }
    }

    else
    {
      v2 = 4;
    }

    *(v1 + 48) = v2;
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_2282D3BD8(v1);
      swift_unknownObjectRelease();
    }

    v4 = *(v1 + 48);
    if (v4 == 4)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2 * (v4 == 5);
    }

    sub_2281D4CA8(v5);
  }
}

uint64_t sub_2281D19BC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_228392F90();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return __swift_destroy_boxed_opaque_existential_0(v9);
}

void sub_2281D1ADC(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v51 = a4;
  v53 = a2;
  v54 = a3;
  sub_2281D5084(0, &unk_280DDCDC8, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = &v51 - v7;
  v8 = sub_22838F0D0();
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v52 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  v14 = sub_228392D80();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_228392CC0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_228392DC0();
  }

  else
  {
    sub_228392DD0();
  }

  (*(v20 + 104))(v23, *MEMORY[0x277D74FC8], v19);
  sub_228392CD0();
  (*(v15 + 104))(v18, *MEMORY[0x277D75030], v14);
  sub_228392CB0();
  if (a1)
  {
    v24 = objc_opt_self();
    v25 = *MEMORY[0x277D76918];
    v26 = [v24 preferredFontForTextStyle_];
    v27 = [objc_opt_self() configurationWithFont:v26 scale:2];

    v28 = sub_228391FC0();
    v29 = [objc_opt_self() systemImageNamed_];

    if (v29)
    {
      v30 = [v29 imageWithConfiguration_];
    }

    sub_228392D90();
    sub_228392D10();
    sub_228392CE0();
  }

  else
  {
    v31 = [objc_opt_self() systemBlueColor];
    sub_228392D60();
    v25 = *MEMORY[0x277D76918];
  }

  v32 = v13;
  v33 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  LODWORD(v34) = 1036831949;
  [v33 setHyphenationFactor_];
  v35 = objc_opt_self();
  v36 = [v35 preferredFontForTextStyle_];
  v37 = [v36 fontDescriptor];

  v38 = [v37 fontDescriptorWithSymbolicTraits_];
  if (v38)
  {
    v39 = [v35 fontWithDescriptor:v38 size:0.0];
    sub_2281D5084(0, &qword_280DDB880, sub_2281D50E8, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_228397F30;
    v41 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v42 = sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    *(inited + 40) = v39;
    v43 = *MEMORY[0x277D74118];
    *(inited + 64) = v42;
    *(inited + 72) = v43;
    *(inited + 104) = sub_22817A958(0, &qword_280DDBA00, 0x277D74240);
    *(inited + 80) = v33;
    v44 = v41;
    v51 = v39;
    v45 = v43;
    v46 = v33;
    sub_2281A859C(inited);
    swift_setDeallocating();
    sub_2281D50E8();
    swift_arrayDestroy();
    sub_22838F0F0();
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v48 = v56;
    v47 = v57;
    (*(v56 + 16))(v52, v32, v57);
    v49 = v55;
    sub_22838F0B0();
    v50 = sub_22838F0A0();
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    sub_228392D30();

    (*(v48 + 8))(v32, v47);
  }

  else
  {
    __break(1u);
  }
}

id sub_2281D232C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell____lazy_storage___logView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell____lazy_storage___logView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell____lazy_storage___logView);
  }

  else
  {
    type metadata accessor for MedicationDoseLogMedicationView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_2281D23B4()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2281D5084(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33[-v9];
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v11], v34);
  if (v35)
  {
    sub_2281810DC(0, &qword_280DDCD60);
    if (swift_dynamicCast())
    {
      if (*(&v36 + 1))
      {
        sub_2281D3334(&v36, v39);
        v12 = sub_2281D232C();
        v13 = sub_2281CFC5C();

        v14 = v40;
        v15 = *(v40 + 16);

        v16 = v15;
        HKMedicationUserDomainConcept.medmojiConfiguration.getter(v10);

        sub_228390950();
        v17 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell____lazy_storage___logView;
        v18 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell____lazy_storage___logView];
        v19 = *&v18[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_viewModel];
        *&v18[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_viewModel] = v14;

        v20 = v18;

        sub_2281CECA4();

        v21 = *&v1[v17];
        swift_unknownObjectWeakLoadStrong();
        v22 = v41;
        v23 = v21;
        sub_22819A258(v39);
        *&v23[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_logDelegate + 8] = v22;
        swift_unknownObjectWeakAssign();

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
    }
  }

  else
  {
    sub_22819482C(v34);
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
  }

  sub_2281CEB7C(&v36, &unk_27D8249B8, &type metadata for MedicationDoseLogMedicationItem, MEMORY[0x277D83D88], sub_2281D548C);
  sub_228391150();
  v25 = v1;
  v26 = sub_2283911A0();
  v27 = sub_2283925C0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v36 = v29;
    *v28 = 136315138;
    sub_22817E6C8(&v1[v11], v39);
    sub_2281AEAE8(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D83D88]);
    v30 = sub_228392040();
    v32 = sub_2281C96FC(v30, v31, &v36);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_22816B000, v26, v27, "Incorrect view model for MedicationDoseLogMedicationItem: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x22AAB7B80](v29, -1, -1);
    MEMORY[0x22AAB7B80](v28, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

char *sub_2281D27DC(double a1, double a2, double a3, double a4)
{
  v9 = sub_228391590();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281D5084(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v37 - v16;
  v18 = sub_2283913A0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell____lazy_storage___logView] = 0;
  v23 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell_item];
  v24 = type metadata accessor for MedicationDoseLogMedicationCell();
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  v38.receiver = v4;
  v38.super_class = v24;
  v25 = objc_msgSendSuper2(&v38, sel_initWithFrame_, a1, a2, a3, a4);
  sub_228391390();
  sub_228391360();
  v26 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  sub_228391370();
  (*(v19 + 16))(v17, v22, v18);
  (*(v19 + 56))(v17, 0, 1, v18);
  MEMORY[0x22AAB6420](v17);
  v27 = [v25 contentView];
  v28 = sub_2281D232C();
  [v27 addSubview_];

  sub_228391520();
  sub_2283914D0();
  v30 = v29;
  (*(v10 + 8))(v13, v9);
  v31 = *&v25[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell____lazy_storage___logView];
  v32 = [v25 contentView];

  [v31 hk:v32 alignConstraintsWithView:v30 insets:{v30, v30, v30}];
  v33 = sub_2281D2C24();
  if (v33)
  {
    v34 = v33;
    type metadata accessor for UILayoutPriority(0);
    v37[1] = 1065353216;
    v37[2] = 1148846080;
    sub_2281D5154(&qword_280DDBAE0, type metadata accessor for UILayoutPriority);
    sub_2283911C0();
    LODWORD(v35) = v37[3];
    [v34 setPriority_];
  }

  else
  {
  }

  (*(v19 + 8))(v22, v18);
  return v25;
}

void *sub_2281D2C24()
{
  v0 = sub_2281D232C();
  v1 = [v0 constraints];

  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v2 = sub_2283921A0();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AAB6D80](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 firstAttribute] == 4)
      {

        return v6;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

id sub_2281D2E94(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2281D2F4C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2281D2FA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2281D23B4();
  return sub_22819482C(a1);
}

uint64_t (*sub_2281D3010(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2281D3074;
}

uint64_t sub_2281D3074(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_2281D23B4();
  }

  return result;
}

uint64_t sub_2281D30A8()
{
  sub_228393520();
  v1 = *v0;
  v2 = v0[1];
  sub_2283920B0();
  v3 = v0[2];
  sub_228300540();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_2281D3114()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2283920B0();
  v3 = v0[2];
  sub_228300540();
  sub_2283920B0();
}

uint64_t sub_2281D3170()
{
  sub_228393520();
  v1 = *v0;
  v2 = v0[1];
  sub_2283920B0();
  v3 = v0[2];
  sub_228300540();
  sub_2283920B0();

  return sub_228393570();
}