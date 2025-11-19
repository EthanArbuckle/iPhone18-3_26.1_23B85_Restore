uint64_t sub_2554F8928()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2554F8960()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t MediaSuggesterService.__allocating_init()()
{
  sub_2554F9154();
  v0 = swift_allocObject();
  type metadata accessor for MediaSuggesterClient();
  sub_2554F9154();
  swift_allocObject();
  *(v0 + 16) = sub_2554FBBA4();
  return v0;
}

uint64_t MediaSuggesterService.init()()
{
  type metadata accessor for MediaSuggesterClient();
  sub_2554F9154();
  swift_allocObject();
  *(v0 + 16) = sub_2554FBBA4();
  return v0;
}

Swift::String __swiftcall MediaSuggesterService.hello()()
{
  v1 = *(v0 + 16);
  v2 = sub_2554F9160();
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t MediaSuggesterService.suggestions(with:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_2554F9108();
}

uint64_t sub_2554F8A74()
{
  sub_2554F9128();
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_2554F9104;
  sub_2554F9118();

  return sub_2554F9378();
}

uint64_t sub_2554F8B18()
{
  sub_2554F9128();
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_2554F8BA8;

  return sub_2554F9B48();
}

uint64_t sub_2554F8BA8()
{
  sub_2554F9128();
  sub_2554F9144();
  v4 = *(v3 + 24);
  v5 = *v2;
  sub_2554F9134();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t MediaSuggesterService.candidates(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_2554F9108();
}

uint64_t sub_2554F8CA8()
{
  sub_2554F9128();
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_2554F8D38;
  sub_2554F9118();

  return sub_2554FA154();
}

uint64_t sub_2554F8D38()
{
  sub_2554F9128();
  sub_2554F9144();
  v4 = *(v3 + 32);
  v5 = *v2;
  sub_2554F9134();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t MediaSuggesterService.candidates(for:from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_2554F9108();
}

uint64_t sub_2554F8E3C()
{
  sub_2554F9128();
  v1 = *(v0[5] + 16);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_2554F8ED0;
  v3 = v0[3];
  v4 = v0[4];
  sub_2554F9118();

  return sub_2554FA9B0();
}

uint64_t sub_2554F8ED0()
{
  sub_2554F9128();
  sub_2554F9144();
  v4 = *(v3 + 48);
  v5 = *v2;
  sub_2554F9134();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t MediaSuggesterService.candidateCount(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_2554F9108();
}

uint64_t sub_2554F8FD0()
{
  sub_2554F9128();
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_2554F9104;
  sub_2554F9118();

  return sub_2554FB24C();
}

uint64_t MediaSuggesterService.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MediaSuggesterService.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_2554F9154();

  return MEMORY[0x2821FE8D8]();
}

uint64_t sub_2554F9160()
{
  v1 = sub_2554FDFBC();
  v2 = sub_2554FDA48(v1);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  if (*(v0 + 16))
  {

    sub_2554FDE7C();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2554F9378()
{
  sub_2554F9128();
  v12 = *MEMORY[0x277D85DE8];
  v1[18] = v2;
  v1[19] = v0;
  v3 = sub_2554FDF2C();
  v1[20] = v3;
  sub_2554FDA6C(v3);
  v1[21] = v4;
  v6 = *(v5 + 64);
  v1[22] = sub_2554FDC8C();
  v7 = *MEMORY[0x277D85DE8];
  sub_2554FDAA4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2554F944C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_2554FDBBC();
  sub_2554FDCA4();
  v21 = *MEMORY[0x277D85DE8];
  v22 = sub_2554FDC68();
  sub_2554FDE2C();
  sub_2554FDD2C();
  v19[23] = sub_2554FCF1C(&qword_27F7B8130, &qword_2554FE690);
  v23 = sub_2554FDBD8();
  *(v23 + 16) = xmmword_2554FE520;
  [v18 bundleId];
  sub_2554FDFCC();
  sub_2554FDD14();
  *(v23 + 56) = MEMORY[0x277D837D0];
  v24 = sub_2554FCF64();
  v19[24] = v24;
  sub_2554FDA08(v24);
  sub_2554FDEFC();

  sub_2554FDAD0();
  v19[25] = v25;
  v19[26] = v26;
  v27 = sub_2554FDCB0();
  v28(v27);
  v29 = objc_opt_self();
  v19[16] = 0;
  v30 = sub_2554FDB68(v29, sel_archivedDataWithRootObject_requiringSecureCoding_error_);
  v31 = sub_2554FDCFC();
  if (v18)
  {
    v32 = v19[19];
    sub_2554FDDDC();
    sub_2554FDD44();
    v19[27] = v20;
    v19[28] = v22;
    v41 = *(v32 + 16);
    v19[29] = v41;
    if (v41)
    {
      v42 = swift_task_alloc();
      v19[30] = v42;
      *(v42 + 16) = v20;
      *(v42 + 24) = v22;
      v43 = *(MEMORY[0x277D41D60] + 4);

      v44 = swift_task_alloc();
      v19[31] = v44;
      *v44 = v19;
      sub_2554FDCD4(v44);
      v45 = *MEMORY[0x277D85DE8];
      sub_2554FDCC8();
      sub_2554FDAE0();
      sub_2554FDA88();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2821A27B8](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v46 = v31;
    sub_2554FDDBC();

    swift_willThrow();
    v47 = v19[22];

    sub_2554FDA7C();
    v48 = *MEMORY[0x277D85DE8];
    sub_2554FDA88();

    return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_2554F96C8()
{
  sub_2554FDB0C();
  v15 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  sub_2554FDA5C();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  sub_2554F9134();
  *v7 = v6;
  v2[32] = v0;

  if (!v0)
  {
    v8 = v2[29];
    v9 = v2[30];
  }

  v10 = *MEMORY[0x277D85DE8];
  sub_2554FDAA4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2554F9808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_2554FDCE0();
  v52 = *MEMORY[0x277D85DE8];
  v22 = v20[32];
  v24 = v20[14];
  v23 = v20[15];
  sub_2554FD67C(0, &qword_27F7B8140, 0x277CCAAC8);
  sub_2554FCF1C(&qword_27F7B8148, &qword_2554FE6A0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2554FE530;
  *(v25 + 32) = sub_2554FD67C(0, &qword_27F7B8150, 0x277CBEA60);
  *(v25 + 40) = sub_2554FD67C(0, &qword_27F7B8158, 0x277CCACA8);
  *(v25 + 48) = sub_2554FE04C();
  *(v25 + 56) = sub_2554FE00C();
  *(v25 + 64) = sub_2554FDFEC();
  *(v25 + 72) = sub_2554FD67C(0, &qword_27F7B8160, 0x277D23720);
  *(v25 + 80) = sub_2554FDE0C();
  *(v25 + 88) = sub_2554FD67C(0, &qword_27F7B8168, 0x277CD3EC0);
  *(v25 + 96) = sub_2554FDDFC();
  sub_2554FDAB0();
  if (v22)
  {
    sub_2554FD00C(v20[27], v20[28]);
    sub_2554FDB84();

    v26 = v20[22];

    sub_2554FDA7C();
    v27 = *MEMORY[0x277D85DE8];
    sub_2554FDAF0();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, v52, a18, a19, a20);
  }

  else
  {
    sub_2554FDB18();
    HIDWORD(a12) = sub_2554FE02C();
    v37 = sub_2554FDE2C();
    sub_2554FDE1C();
    *(sub_2554FDBD8() + 16) = xmmword_2554FE520;
    v38 = [v21 bundleId];
    sub_2554FDFCC();

    sub_2554FDA28(MEMORY[0x277D837D0]);
    sub_2554FDC2C();

    v39 = sub_2554FDB9C();
    v40(v39);
    if (v20[5])
    {
      result = sub_2554FDD74();
      if (!v20[13])
      {
        __break(1u);
        return result;
      }

      sub_2554FD00C(v20[27], v20[28]);
      sub_2554FDB84();
      sub_2554FD7E4((v20 + 2), &qword_27F7B8170, &qword_2554FE6A8);
      sub_2554FDD5C();
      sub_2554FCF1C(&qword_27F7B8178, &qword_2554FE6B0);
      sub_2554FDB48();
      v41 = v20[17];
    }

    else
    {
      sub_2554FD00C(v20[27], v20[28]);
      sub_2554FDB84();
      sub_2554FD7E4((v20 + 2), &qword_27F7B8170, &qword_2554FE6A8);
    }

    v42 = v20[22];

    sub_2554FDBAC();
    v43 = *MEMORY[0x277D85DE8];
    sub_2554FDCBC();
    sub_2554FDAF0();

    return v46(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, v52, a18, a19, a20);
  }
}

uint64_t sub_2554F9B48()
{
  sub_2554F9128();
  v1[17] = v0;
  v2 = sub_2554FDF2C();
  v1[18] = v2;
  sub_2554FDA6C(v2);
  v1[19] = v3;
  v5 = *(v4 + 64);
  v1[20] = sub_2554FDC8C();
  sub_2554FDAA4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2554F9BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = v18[19];
  v19 = v18[20];
  v22 = v18[17];
  v21 = v18[18];
  sub_2554FE03C();
  v23 = sub_2554FDE2C();
  sub_2554FDE1C();
  sub_2554FDC2C();

  v24 = *(v20 + 8);
  v18[21] = v24;
  v18[22] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25 = v24(v19, v21);
  v33 = *(v22 + 16);
  v18[23] = v33;
  if (v33)
  {
    v34 = *(MEMORY[0x277D41D60] + 4);

    v35 = swift_task_alloc();
    v18[24] = v35;
    *v35 = v18;
    v35[1] = sub_2554F9D68;
    v28 = MEMORY[0x277CC9318];
    v26 = sub_2554FC69C;
    v25 = (v18 + 14);
    v27 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2821A27B8](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2554F9D68()
{
  sub_2554F9128();
  v2 = *v1;
  sub_2554FDA5C();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  sub_2554F9134();
  *v7 = v6;
  *(v2 + 200) = v0;

  if (!v0)
  {
    v8 = *(v2 + 184);
  }

  sub_2554FDAA4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2554F9E6C()
{
  v1 = v0[25];
  v3 = v0[14];
  v2 = v0[15];
  sub_2554FD67C(0, &qword_27F7B8140, 0x277CCAAC8);
  sub_2554FCF1C(&qword_27F7B8148, &qword_2554FE6A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2554FE540;
  *(v4 + 32) = sub_2554FD67C(0, &qword_27F7B8150, 0x277CBEA60);
  *(v4 + 40) = sub_2554FD67C(0, &qword_27F7B8158, 0x277CCACA8);
  sub_2554FDAB0();
  if (v1)
  {
    sub_2554FDB84();

    v5 = v0[20];

    sub_2554FDA7C();

    return v6();
  }

  else
  {
    v9 = v0[21];
    v8 = v0[22];
    v10 = v0[20];
    v11 = v0[18];

    sub_2554FE02C();
    v12 = sub_2554FDE2C();
    sub_2554FDE1C();
    sub_2554FDC2C();

    v9(v10, v11);
    if (v0[5])
    {
      result = sub_2554FDD74();
      if (!v0[13])
      {
        __break(1u);
        return result;
      }

      sub_2554FDB84();
      sub_2554FD7E4((v0 + 2), &qword_27F7B8170, &qword_2554FE6A8);
      sub_2554FDD5C();
      sub_2554FCF1C(&qword_27F7B8180, &qword_2554FE6C8);
      swift_dynamicCast();
      v13 = v0[16];
    }

    else
    {
      sub_2554FDB84();
      sub_2554FD7E4((v0 + 2), &qword_27F7B8170, &qword_2554FE6A8);
    }

    v14 = v0[20];

    v15 = v0[1];
    v16 = sub_2554FDCBC();

    return v17(v16);
  }
}

uint64_t sub_2554FA0F0()
{
  sub_2554F9128();
  v1 = v0[23];

  v2 = v0[25];
  v3 = v0[20];

  sub_2554FDA7C();

  return v4();
}

uint64_t sub_2554FA154()
{
  sub_2554F9128();
  v12 = *MEMORY[0x277D85DE8];
  v1[18] = v2;
  v1[19] = v0;
  v3 = sub_2554FDF2C();
  v1[20] = v3;
  sub_2554FDA6C(v3);
  v1[21] = v4;
  v6 = *(v5 + 64);
  v1[22] = sub_2554FDC8C();
  v7 = *MEMORY[0x277D85DE8];
  sub_2554FDAA4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2554FA228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_2554FDBBC();
  sub_2554FDCA4();
  v21 = *MEMORY[0x277D85DE8];
  v22 = sub_2554FDC68();
  sub_2554FDE2C();
  sub_2554FDD2C();
  v19[23] = sub_2554FCF1C(&qword_27F7B8130, &qword_2554FE690);
  v23 = sub_2554FDBD8();
  *(v23 + 16) = xmmword_2554FE520;
  [v18 bundleId];
  sub_2554FDFCC();
  sub_2554FDD14();
  *(v23 + 56) = MEMORY[0x277D837D0];
  v24 = sub_2554FCF64();
  v19[24] = v24;
  sub_2554FDA08(v24);
  sub_2554FDC44();

  sub_2554FDAD0();
  v19[25] = v25;
  v19[26] = v26;
  v27 = sub_2554FDCB0();
  v28(v27);
  v29 = objc_opt_self();
  v19[16] = 0;
  v30 = sub_2554FDB68(v29, sel_archivedDataWithRootObject_requiringSecureCoding_error_);
  v31 = sub_2554FDCFC();
  if (v18)
  {
    v32 = v19[19];
    sub_2554FDDDC();
    sub_2554FDD44();
    v19[27] = v20;
    v19[28] = v22;
    v41 = *(v32 + 16);
    v19[29] = v41;
    if (v41)
    {
      v42 = swift_task_alloc();
      v19[30] = v42;
      *(v42 + 16) = v20;
      *(v42 + 24) = v22;
      v43 = *(MEMORY[0x277D41D60] + 4);

      v44 = swift_task_alloc();
      v19[31] = v44;
      *v44 = v19;
      sub_2554FDCD4(v44);
      v45 = *MEMORY[0x277D85DE8];
      sub_2554FDCC8();
      sub_2554FDAE0();
      sub_2554FDA88();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2821A27B8](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v46 = v31;
    sub_2554FDDBC();

    swift_willThrow();
    v47 = v19[22];

    sub_2554FDA7C();
    v48 = *MEMORY[0x277D85DE8];
    sub_2554FDA88();

    return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_2554FA490()
{
  sub_2554FDB0C();
  v15 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  sub_2554FDA5C();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  sub_2554F9134();
  *v7 = v6;
  v2[32] = v0;

  if (!v0)
  {
    v8 = v2[29];
    v9 = v2[30];
  }

  v10 = *MEMORY[0x277D85DE8];
  sub_2554FDAA4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2554FA5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_2554FDCE0();
  v52 = *MEMORY[0x277D85DE8];
  v22 = v20[32];
  v24 = v20[14];
  v23 = v20[15];
  sub_2554FD67C(0, &qword_27F7B8140, 0x277CCAAC8);
  sub_2554FCF1C(&qword_27F7B8148, &qword_2554FE6A0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2554FE530;
  *(v25 + 32) = sub_2554FD67C(0, &qword_27F7B8150, 0x277CBEA60);
  *(v25 + 40) = sub_2554FD67C(0, &qword_27F7B8158, 0x277CCACA8);
  *(v25 + 48) = sub_2554FE04C();
  *(v25 + 56) = sub_2554FE00C();
  *(v25 + 64) = sub_2554FDFEC();
  *(v25 + 72) = sub_2554FD67C(0, &qword_27F7B8160, 0x277D23720);
  *(v25 + 80) = sub_2554FDE0C();
  *(v25 + 88) = sub_2554FD67C(0, &qword_27F7B8168, 0x277CD3EC0);
  *(v25 + 96) = sub_2554FDDFC();
  sub_2554FDAB0();
  if (v22)
  {
    sub_2554FD00C(v20[27], v20[28]);
    sub_2554FDB84();

    v26 = v20[22];

    sub_2554FDA7C();
    v27 = *MEMORY[0x277D85DE8];
    sub_2554FDAF0();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, v52, a18, a19, a20);
  }

  else
  {
    sub_2554FDB18();
    HIDWORD(a12) = sub_2554FE02C();
    v37 = sub_2554FDE2C();
    sub_2554FDE1C();
    *(sub_2554FDBD8() + 16) = xmmword_2554FE520;
    v38 = [v21 bundleId];
    sub_2554FDFCC();

    sub_2554FDA28(MEMORY[0x277D837D0]);
    sub_2554FDBF0();

    v39 = sub_2554FDB9C();
    v40(v39);
    if (v20[5])
    {
      result = sub_2554FDD74();
      if (!v20[13])
      {
        __break(1u);
        return result;
      }

      sub_2554FD00C(v20[27], v20[28]);
      sub_2554FDB84();
      sub_2554FD7E4((v20 + 2), &qword_27F7B8170, &qword_2554FE6A8);
      sub_2554FDD5C();
      sub_2554FCF1C(&qword_27F7B8178, &qword_2554FE6B0);
      sub_2554FDB48();
      v41 = v20[17];
    }

    else
    {
      sub_2554FD00C(v20[27], v20[28]);
      sub_2554FDB84();
      sub_2554FD7E4((v20 + 2), &qword_27F7B8170, &qword_2554FE6A8);
    }

    v42 = v20[22];

    sub_2554FDBAC();
    v43 = *MEMORY[0x277D85DE8];
    sub_2554FDCBC();
    sub_2554FDAF0();

    return v46(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, v52, a18, a19, a20);
  }
}

uint64_t sub_2554FA904()
{
  sub_2554FDB0C();
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[29];
  v2 = v0[30];
  sub_2554FD00C(v0[27], v0[28]);

  v3 = v0[32];
  v4 = v0[22];

  sub_2554FDA7C();
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_2554FA9B0()
{
  sub_2554F9128();
  v14 = *MEMORY[0x277D85DE8];
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = sub_2554FDF2C();
  v1[22] = v5;
  sub_2554FDA6C(v5);
  v1[23] = v6;
  v8 = *(v7 + 64);
  v1[24] = sub_2554FDC8C();
  v9 = *MEMORY[0x277D85DE8];
  sub_2554FDAA4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2554FAA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_2554FDBBC();
  sub_2554FDCA4();
  v61 = *MEMORY[0x277D85DE8];
  v21 = *(v18 + 184);
  v20 = *(v18 + 192);
  v60 = *(v18 + 176);
  v22 = *(v18 + 144);
  v23 = sub_2554FE03C();
  sub_2554FDE2C();
  sub_2554FDD2C();
  *(v18 + 200) = sub_2554FCF1C(&qword_27F7B8130, &qword_2554FE690);
  v24 = sub_2554FDBD8();
  *(v24 + 16) = xmmword_2554FE520;
  [v22 bundleId];
  sub_2554FDFCC();
  sub_2554FDD14();
  *(v24 + 56) = MEMORY[0x277D837D0];
  v25 = sub_2554FCF64();
  *(v18 + 208) = v25;
  sub_2554FDA08(v25);
  sub_2554FDC44();

  sub_2554FDAD0();
  *(v18 + 216) = v26;
  *(v18 + 224) = v27;
  v28 = sub_2554FDCB0();
  v29(v28);
  v30 = objc_opt_self();
  *(v18 + 128) = 0;
  v31 = sub_2554FDB68(v30, sel_archivedDataWithRootObject_requiringSecureCoding_error_);
  v32 = sub_2554FDCFC();
  if (v22)
  {
    v33 = *(v18 + 168);
    sub_2554FDDDC();
    sub_2554FDD44();
    *(v18 + 232) = v19;
    *(v18 + 240) = v23;
    v42 = *(v33 + 16);
    *(v18 + 248) = v42;
    if (v42)
    {
      v43 = swift_task_alloc();
      *(v18 + 256) = v43;
      v44 = *(v18 + 152);
      *(v43 + 16) = v19;
      *(v43 + 24) = v23;
      *(v43 + 32) = v44;
      v45 = *(MEMORY[0x277D41D60] + 4);

      v46 = swift_task_alloc();
      *(v18 + 264) = v46;
      *v46 = v18;
      sub_2554FDCD4(v46);
      v47 = *MEMORY[0x277D85DE8];
      sub_2554FDCC8();
      sub_2554FDAE0();
      sub_2554FDA88();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2821A27B8](v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, v60, a14, v61, a16, a17, a18);
  }

  else
  {
    v48 = v32;
    sub_2554FDDBC();

    swift_willThrow();
    v49 = *(v18 + 192);

    sub_2554FDA7C();
    v50 = *MEMORY[0x277D85DE8];
    sub_2554FDA88();

    return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, v60, a14, v61, a16, a17, a18);
  }
}

uint64_t sub_2554FAD0C()
{
  sub_2554FDB0C();
  v15 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  sub_2554FDA5C();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  sub_2554F9134();
  *v7 = v6;
  v2[34] = v0;

  if (!v0)
  {
    v8 = v2[31];
    v9 = v2[32];
  }

  v10 = *MEMORY[0x277D85DE8];
  sub_2554FDAA4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2554FAE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_2554FDCE0();
  v58 = *MEMORY[0x277D85DE8];
  v21 = v20[34];
  v23 = v20[14];
  v22 = v20[15];
  sub_2554FD67C(0, &qword_27F7B8140, 0x277CCAAC8);
  sub_2554FCF1C(&qword_27F7B8148, &qword_2554FE6A0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2554FE530;
  *(v24 + 32) = sub_2554FD67C(0, &qword_27F7B8150, 0x277CBEA60);
  *(v24 + 40) = sub_2554FD67C(0, &qword_27F7B8158, 0x277CCACA8);
  *(v24 + 48) = sub_2554FE04C();
  *(v24 + 56) = sub_2554FE00C();
  *(v24 + 64) = sub_2554FDFEC();
  *(v24 + 72) = sub_2554FD67C(0, &qword_27F7B8160, 0x277D23720);
  *(v24 + 80) = sub_2554FDE0C();
  *(v24 + 88) = sub_2554FD67C(0, &qword_27F7B8168, 0x277CD3EC0);
  *(v24 + 96) = sub_2554FDDFC();
  sub_2554FDAB0();
  if (v21)
  {
    sub_2554FD00C(v20[29], v20[30]);
    sub_2554FDB84();

    v25 = v20[24];

    sub_2554FDA7C();
    v26 = *MEMORY[0x277D85DE8];
    sub_2554FDAF0();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, v58, a18, a19, a20);
  }

  else
  {
    v56 = v20[27];
    v57 = v20[28];
    v37 = v20[25];
    v36 = v20[26];
    v38 = v20[24];
    v55 = v20[22];
    v39 = v20[18];

    HIDWORD(a12) = sub_2554FE02C();
    v40 = sub_2554FDE2C();
    sub_2554FDE1C();
    *(sub_2554FDBD8() + 16) = xmmword_2554FE520;
    v41 = [v39 bundleId];
    sub_2554FDFCC();

    sub_2554FDA28(MEMORY[0x277D837D0]);
    sub_2554FDBF0();

    v42 = sub_2554FDB9C();
    v43(v42);
    if (v20[5])
    {
      result = sub_2554FDD74();
      if (!v20[13])
      {
        __break(1u);
        return result;
      }

      sub_2554FD00C(v20[29], v20[30]);
      sub_2554FDB84();
      sub_2554FD7E4((v20 + 2), &qword_27F7B8170, &qword_2554FE6A8);
      sub_2554FDD5C();
      sub_2554FCF1C(&qword_27F7B8178, &qword_2554FE6B0);
      sub_2554FDB48();
      v44 = v20[17];
    }

    else
    {
      sub_2554FD00C(v20[29], v20[30]);
      sub_2554FDB84();
      sub_2554FD7E4((v20 + 2), &qword_27F7B8170, &qword_2554FE6A8);
    }

    v45 = v20[24];

    sub_2554FDBAC();
    v46 = *MEMORY[0x277D85DE8];
    sub_2554FDCBC();
    sub_2554FDAF0();

    return v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, v55, v56, v57, a16, v58, a18, a19, a20);
  }
}

uint64_t sub_2554FB1A0()
{
  sub_2554FDB0C();
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[31];
  v2 = v0[32];
  sub_2554FD00C(v0[29], v0[30]);

  v3 = v0[34];
  v4 = v0[24];

  sub_2554FDA7C();
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_2554FB24C()
{
  sub_2554F9128();
  v12 = *MEMORY[0x277D85DE8];
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_2554FDF2C();
  v1[7] = v3;
  sub_2554FDA6C(v3);
  v1[8] = v4;
  v6 = *(v5 + 64);
  v1[9] = sub_2554FDC8C();
  v7 = *MEMORY[0x277D85DE8];
  sub_2554FDAA4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2554FB320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_2554FDBBC();
  sub_2554FDCA4();
  v60 = *MEMORY[0x277D85DE8];
  v21 = v18[8];
  v20 = v18[9];
  v59 = v18[7];
  v22 = v18[5];
  v23 = sub_2554FE03C();
  sub_2554FDE2C();
  sub_2554FDD2C();
  v18[10] = sub_2554FCF1C(&qword_27F7B8130, &qword_2554FE690);
  v24 = sub_2554FDBD8();
  *(v24 + 16) = xmmword_2554FE520;
  [v22 bundleId];
  sub_2554FDFCC();
  sub_2554FDD14();
  *(v24 + 56) = MEMORY[0x277D837D0];
  v25 = sub_2554FCF64();
  v18[11] = v25;
  sub_2554FDA08(v25);
  sub_2554FDEFC();

  sub_2554FDAD0();
  v18[12] = v26;
  v18[13] = v27;
  v28 = sub_2554FDCB0();
  v29(v28);
  v30 = objc_opt_self();
  v18[4] = 0;
  v31 = sub_2554FDB68(v30, sel_archivedDataWithRootObject_requiringSecureCoding_error_);
  v32 = sub_2554FDCFC();
  if (v22)
  {
    v33 = v18[6];
    sub_2554FDDDC();
    sub_2554FDD44();
    v18[14] = v19;
    v18[15] = v23;
    v42 = *(v33 + 16);
    v18[16] = v42;
    if (v42)
    {
      v43 = swift_task_alloc();
      v18[17] = v43;
      *(v43 + 16) = v19;
      *(v43 + 24) = v23;
      v44 = *(MEMORY[0x277D41D60] + 4);

      v45 = swift_task_alloc();
      v18[18] = v45;
      *v45 = v18;
      sub_2554FDCD4(v45);
      v46 = *MEMORY[0x277D85DE8];
      sub_2554FDCC8();
      sub_2554FDAE0();
      sub_2554FDA88();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2821A27B8](v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, v59, a14, v60, a16, a17, a18);
  }

  else
  {
    v47 = v32;
    sub_2554FDDBC();

    swift_willThrow();
    v48 = v18[9];

    sub_2554FDA7C();
    v49 = *MEMORY[0x277D85DE8];
    sub_2554FDA88();

    return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, v59, a14, v60, a16, a17, a18);
  }
}

uint64_t sub_2554FB5B0()
{
  sub_2554FDB0C();
  v15 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  sub_2554FDA5C();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  sub_2554F9134();
  *v7 = v6;
  v2[19] = v0;

  if (!v0)
  {
    v8 = v2[16];
    v9 = v2[17];
  }

  v10 = *MEMORY[0x277D85DE8];
  sub_2554FDAA4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2554FB6F0()
{
  v24 = *MEMORY[0x277D85DE8];
  v23 = v0[15];
  v21 = v0[19];
  v22 = v0[14];
  v19 = v0[12];
  v20 = v0[13];
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v18 = v0[7];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  sub_2554FE02C();
  v7 = sub_2554FDE2C();
  sub_2554FDE1C();
  v8 = sub_2554FDBD8();
  *(v8 + 16) = xmmword_2554FE520;
  v9 = [v4 bundleId];
  v10 = sub_2554FDFCC();
  v12 = v11;

  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = v2;
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  sub_2554FDC2C();

  v19(v3, v18);
  v13 = sub_2554FCAE4(v5, v6);
  sub_2554FD00C(v22, v23);
  sub_2554FD00C(v5, v6);

  v14 = v0[1];
  v15 = *MEMORY[0x277D85DE8];
  v16 = bswap64(v13);

  return v14(v16);
}

uint64_t sub_2554FB8C0()
{
  sub_2554FDB0C();
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[16];
  v2 = v0[17];
  sub_2554FD00C(v0[14], v0[15]);

  v3 = v0[19];
  v4 = v0[9];

  sub_2554FDA7C();
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

id static MediaSuggesterXPCService.interface.getter()
{
  if (qword_27F7B80E0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7B80F8;

  return v1;
}

uint64_t static MediaSuggesterXPCService.selectorClasses.getter()
{
  if (qword_27F7B80E8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2554FBA68()
{
  v0 = sub_2554FDFBC();
  sub_2554FCEB8(v0, qword_27F7B8108);
  sub_2554FBB5C(v0, qword_27F7B8108);
  return sub_2554FDE4C();
}

uint64_t static MediaSuggesterXPCService.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F7B80F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2554FDFBC();
  v3 = sub_2554FBB5C(v2, qword_27F7B8108);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2554FBB5C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2554FBBA4()
{
  v1 = v0;
  v2 = sub_2554FDFBC();
  v3 = sub_2554FDA48(v2);
  v48 = v4;
  v49 = v3;
  v6 = *(v5 + 64);
  (MEMORY[0x28223BE20])();
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2554FDF2C();
  v8 = sub_2554FDA48(v51);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - v16;
  v18 = sub_2554FDF4C();
  v19 = sub_2554FDA48(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v19);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v45 - v27;
  *(v1 + 16) = 0;
  sub_2554FDE3C();
  sub_2554FDE3C();
  sub_2554FDF3C();
  sub_2554FDF0C();
  v50 = *(v21 + 8);
  v50(v26, v18);
  v29 = sub_2554FDF3C();
  v30 = sub_2554FE03C();
  if (sub_2554FE05C())
  {
    v31 = swift_slowAlloc();
    v46 = v1;
    v32 = v31;
    *v31 = 0;
    v33 = sub_2554FDF1C();
    _os_signpost_emit_with_name_impl(&dword_2554F7000, v29, v30, v33, "MediaSuggesterClient.init", "", v32, 2u);
    v1 = v46;
    sub_2554FDC14();
  }

  v34 = v51;
  (*(v10 + 16))(v15, v17, v51);
  v35 = sub_2554FDF8C();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_2554FDF7C();
  (*(v10 + 8))(v17, v34);
  v50(v28, v18);
  sub_2554FCC7C(&qword_27F7B8120, v38, type metadata accessor for MediaSuggesterClient);
  v39 = sub_2554FCF1C(&qword_27F7B8190, &qword_2554FE6E0);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();

  v42 = sub_2554FDE9C();
  v43 = *(v1 + 16);
  *(v1 + 16) = v42;

  sub_2554FCF1C(&qword_27F7B8198, &qword_2554FE6E8);
  sub_2554FDE6C();

  sub_2554FC0E8();

  return v1;
}

uint64_t sub_2554FC0E8()
{
  v0 = sub_2554FDF5C();
  v21 = *(v0 - 8);
  v1 = *(v21 + 64);
  MEMORY[0x28223BE20]();
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_2554FDF2C();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2554FDF4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2554FDE3C();
  v13 = sub_2554FDF3C();
  sub_2554FDF6C();
  v20 = sub_2554FE02C();
  if (sub_2554FE05C())
  {

    sub_2554FDF9C();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_2554FDF1C();
    _os_signpost_emit_with_name_impl(&dword_2554F7000, v13, v20, v17, "MediaSuggesterClient.init", v15, v16, 2u);
    MEMORY[0x259C36660](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_2554FC3D4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2554FD92C;
  *(v5 + 24) = v4;
  *a2 = sub_2554FD93C;
  a2[1] = v5;

  return swift_unknownObjectRetain();
}

void sub_2554FC4A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2554FC558;
  v5[3] = &unk_28676A330;
  v4 = _Block_copy(v5);

  [a3 helloWith_];
  _Block_release(v4);
}

uint64_t sub_2554FC558(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_2554FDFCC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

uint64_t sub_2554FC5F0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_2554FDDDC();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_2554FD65C(v4, v9);
}

uint64_t sub_2554FC6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;

  a6(a5, v11, a1);
}

void sub_2554FC758(uint64_t a1, uint64_t a2, void *a3)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2554FC5F0;
  v5[3] = &unk_28676A290;
  v4 = _Block_copy(v5);

  [a3 availablebundleIDsForMediaSuggestionsWith_];
  _Block_release(v4);
}

uint64_t sub_2554FC810(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, SEL *a9)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;

  sub_2554FCA14(a4, a5, a7, v16, a1, a8, a9);
}

void sub_2554FC8C0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_2554FDDCC();
  v8 = sub_2554FDDEC();
  v9 = sub_2554FDDEC();
  v11[4] = sub_2554FD978;
  v11[5] = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2554FC5F0;
  v11[3] = &unk_28676A1F0;
  v10 = _Block_copy(v11);

  [a1 candidatesWithOptionsData:v7 startDate:v8 endDate:v9 with:v10];
  _Block_release(v10);
}

void sub_2554FCA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, SEL *a7)
{
  v12 = sub_2554FDDCC();
  v14[4] = a3;
  v14[5] = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2554FC5F0;
  v14[3] = a6;
  v13 = _Block_copy(v14);

  [a5 *a7];
  _Block_release(v13);
}

uint64_t sub_2554FCAE4(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (result >> 32 >= result)
      {
        result = result;
        goto LABEL_5;
      }

      __break(1u);
      break;
    case 2uLL:
      v2 = *(result + 24);
      result = *(result + 16);
LABEL_5:
      result = sub_2554FD5D4(result);
      break;
    case 3uLL:
      result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MediaSuggesterClient.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MediaSuggesterClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2554FCBB4(uint64_t a1, uint64_t a2)
{
  result = sub_2554FCC7C(&qword_27F7B8120, a2, type metadata accessor for MediaSuggesterClient);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2554FCC7C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for MediaSuggesterXPCService(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for MediaSuggesterXPCService(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t *sub_2554FCEB8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_2554FCF1C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2554FCF64()
{
  result = qword_27F7B8138;
  if (!qword_27F7B8138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B8138);
  }

  return result;
}

uint64_t sub_2554FD00C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2554FD064(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2554FD128(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2554FD8CC(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_2554FD880(v11);
  return v7;
}

unint64_t sub_2554FD128(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2554FD228(a5, a6);
    *a1 = v9;
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
    result = sub_2554FE07C();
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

uint64_t sub_2554FD228(uint64_t a1, unint64_t a2)
{
  v4 = sub_2554FD274(a1, a2);
  sub_2554FD38C(&unk_28676A0A8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2554FD274(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2554FDFDC())
  {
    result = sub_2554FD470(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2554FE06C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2554FE07C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2554FD38C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_2554FD4E0(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2554FD470(uint64_t a1, uint64_t a2)
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

  sub_2554FCF1C(&unk_27F7B81A0, &unk_2554FE6F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2554FD4E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2554FCF1C(&unk_27F7B81A0, &unk_2554FE6F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_2554FD5D4(uint64_t a1)
{
  v2 = sub_2554FDD8C();
  if (v2)
  {
    v3 = v2;
    result = sub_2554FDDAC();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = a1 - result + v3;
  }

  else
  {
    v5 = 0;
  }

  result = sub_2554FDD9C();
  if (v5)
  {
    return *v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2554FD644(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2554FD65C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2554FD00C(a1, a2);
  }

  return a1;
}

void sub_2554FD670(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  sub_2554FC8C0(a1, a2, a3);
}

uint64_t sub_2554FD67C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2554FD6BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2554FCF1C(&qword_27F7B8170, &qword_2554FE6A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_2554FD72C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2554FD7E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2554FCF1C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2554FD844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a1;
  v7[1] = a2;
  return v4(v7, a3);
}

uint64_t sub_2554FD880(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2554FD8CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2554FD93C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2554FD97C()
{
  sub_2554F9128();
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_2554FA904();
}

uint64_t sub_2554FDA08(uint64_t result)
{
  v1[8] = result;
  v1[4] = v2;
  v1[5] = v3;
  return result;
}

void sub_2554FDA28(uint64_t a1@<X8>)
{
  v3[7] = a1;
  v3[8] = v2;
  v3[4] = v4;
  v3[5] = v1;
}

uint64_t sub_2554FDA7C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_2554FDAB0()
{

  return MEMORY[0x28211EDE0](v2, v1, v0);
}

uint64_t sub_2554FDB18()
{
  v8 = v0[25];
  v9 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v7 = v0[20];
  v5 = v0[18];
}

uint64_t sub_2554FDB48()
{

  return swift_dynamicCast();
}

id sub_2554FDB68(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_2554FDB84()
{

  return sub_2554FD00C(v1, v0);
}

uint64_t sub_2554FDBD8()
{

  return swift_allocObject();
}

uint64_t sub_2554FDBF0()
{

  return sub_2554FDEFC();
}

void sub_2554FDC14()
{

  JUMPOUT(0x259C36660);
}

uint64_t sub_2554FDC2C()
{

  return sub_2554FDEFC();
}

uint64_t sub_2554FDC44()
{

  return sub_2554FDEFC();
}

uint64_t sub_2554FDC68()
{
  v3 = v0[21];
  v2 = v0[22];
  v6 = v0[20];
  v4 = v0[18];

  return sub_2554FE03C();
}

uint64_t sub_2554FDC8C()
{

  return swift_task_alloc();
}

uint64_t sub_2554FDCFC()
{
  v2 = *v0;

  return MEMORY[0x2821F9930]();
}

uint64_t sub_2554FDD14()
{

  return MEMORY[0x2821F9798]();
}

uint64_t sub_2554FDD2C()
{

  return sub_2554FDE1C();
}

void sub_2554FDD44()
{
}

_OWORD *sub_2554FDD5C()
{

  return sub_2554FD72C((v0 + 80), (v0 + 48));
}

uint64_t sub_2554FDD74()
{

  return sub_2554FD6BC(v0 + 16, v0 + 80);
}