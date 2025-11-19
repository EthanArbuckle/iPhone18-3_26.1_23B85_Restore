uint64_t sub_254EDDC14()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB2DB4();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  *v3 = v6;
  *(v2 + 24) = v7;

  if (v0)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    sub_254EB3FB8();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_254EDDD38()
{
  sub_254EB3BD8();
  v1 = sub_254EC5594(*(v0 + 24));
  v2 = *(v0 + 24);
  if (v1)
  {
    v3 = v2 & 0xC000000000000001;
    sub_254EB862C(0, (v2 & 0xC000000000000001) == 0);
    if (v3)
    {
      v4 = MEMORY[0x259C2E0D0](0, *(v0 + 24));
      v8 = *(v0 + 24);
    }

    else
    {
      v4 = *(*(v0 + 24) + 32);
    }
  }

  else
  {
    v5 = *(v0 + 24);

    v4 = 0;
  }

  sub_254EB4930();

  return v6(v4);
}

uint64_t sub_254EDDDF4()
{
  sub_254EB3A3C();
  v3 = v2;
  sub_254EB4918();
  v5 = v4;
  sub_254EB2DB4();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v1;
  sub_254EB2DB4();
  *v10 = v9;
  *(v5 + 88) = v0;

  if (!v0)
  {
    *(v5 + 120) = v3 & 1;
  }

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_254EDDF0C()
{
  v31 = v0;
  if (*(v0 + 120) != 1)
  {
    v8 = *(v0 + 64);
    v9 = *(v0 + 32);
    sub_254F284C0();
    v10 = v9;
    v11 = sub_254F291D0();
    v12 = sub_254F296E0();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 64);
    v15 = *(v0 + 40);
    v16 = *(v0 + 48);
    if (v13)
    {
      v17 = *(v0 + 32);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136315138;
      v20 = sub_254F28040();
      v22 = sub_254EC2D74(v20, v21, &v30);

      *(v18 + 4) = v22;
      sub_254EB7E2C(&dword_254EAE000, v23, v24, "[%s] not authorized to fetch location");
      sub_254EB2BBC(v19);
      sub_254EB3C04();
      sub_254EB3C04();
    }

    (*(v16 + 8))(v14, v15);
    v26 = *(v0 + 56);
    v25 = *(v0 + 64);

    sub_254EB4930();
    sub_254EB3CE4();

    __asm { BRAA            X2, X16 }
  }

  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  sub_254EC8BC0(&qword_27F75F068, &qword_254F2B9A8);
  *v6 = v0;
  v6[1] = sub_254EDE170;
  sub_254EB3FB8();
  sub_254EB3CE4();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_254EDE170()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v3 = v2;
  sub_254EB2DB4();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_254EB2DB4();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (!v0)
  {
    v9 = *(v3 + 96);
  }

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_254EDE278()
{
  sub_254EB3BD8();

  v1 = *(v0 + 16);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);

  sub_254EB4930();

  return v4(v1);
}

uint64_t sub_254EDE2EC()
{
  sub_254EB3BD8();

  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_254EDE35C()
{
  sub_254EB3BD8();
  v1 = *(v0 + 96);

  v2 = *(v0 + 112);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_254EDE3D8()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB2DB4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = *(v3 + 48);
  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_254EDE4D8()
{
  sub_254EB3BD8();

  v1 = *(v0 + 144) - 3;
  sub_254EB4930();

  return v2();
}

uint64_t sub_254EDE544()
{
  sub_254EB3A3C();
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  swift_willThrow();

  sub_254EB4930();
  v4 = *(v0 + 168);

  return v3(0);
}

void sub_254EDE5B0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_254EC8BC0(&unk_27F75F070, &qword_254F2B9B0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  (*(v9 + 16))(aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  *(v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  aBlock[4] = sub_254EDEE50;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_254EDEA14;
  aBlock[3] = &unk_286725B58;
  v15 = _Block_copy(aBlock);
  v16 = a4;

  [a2 _fetchPlaceInferencesWithFidelityPolicy_handler_];
  _Block_release(v15);
}

uint64_t sub_254EDE78C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = sub_254F291E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v26 = a2;
    v12 = a2;
    sub_254EC8BC0(&unk_27F75F070, &qword_254F2B9B0);
    return sub_254F295D0();
  }

  else if (a1)
  {
    v26 = a1;

    sub_254EC8BC0(&unk_27F75F070, &qword_254F2B9B0);
    return sub_254F295E0();
  }

  else
  {
    sub_254F284C0();
    v14 = a4;
    v15 = sub_254F291D0();
    v16 = sub_254F29700();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136315394;
      v19 = sub_254F28040();
      v21 = sub_254EC2D74(v19, v20, &v26);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v25 = 0;
      sub_254EC8BC0(&qword_27F75F080, &qword_254F2B9B8);
      v22 = sub_254F29480();
      v24 = sub_254EC2D74(v22, v23, &v26);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_254EAE000, v15, v16, "[%s] could not fetch place inferences due to error: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C2EB80](v18, -1, -1);
      MEMORY[0x259C2EB80](v17, -1, -1);
    }

    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_254EDEA14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_254EB48D8(0, &unk_281426088, 0x277CBFCC8);
    v4 = sub_254F29560();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_254EDEAB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_254EB5A9C((a1 + 32), *(a1 + 56));
  if (a4)
  {
    return sub_254EDD66C(*v7, a4);
  }

  v9 = *v7;

  return sub_254EDD6F8(v9, a2, a3);
}

uint64_t type metadata accessor for PlaceInferenceSourceProvider()
{
  result = qword_281426518;
  if (!qword_281426518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254EDEC10()
{
  result = sub_254F28050();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_254EDECB8()
{
  sub_254EB3A3C();
  v3 = v2;
  sub_254EB4918();
  v5 = v4;
  sub_254EB2DB4();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_254EB2DB4();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

id sub_254EDEDB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_254F29420();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithEffectiveBundlePath:v8 delegate:a3 onQueue:a4];

  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_254EDEE50(uint64_t a1, void *a2)
{
  v5 = *(sub_254EC8BC0(&unk_27F75F070, &qword_254F2B9B0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_254EDE78C(a1, a2, v2 + v6, v7);
}

uint64_t sub_254EDEF08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_254EDEF28()
{
  result = qword_2814260A0;
  if (!qword_2814260A0)
  {
    sub_254F29760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814260A0);
  }

  return result;
}

unint64_t sub_254EDEF80()
{
  result = qword_281426130;
  if (!qword_281426130)
  {
    sub_254EDEFE4(&qword_27F75F098, qword_254F2B9D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281426130);
  }

  return result;
}

uint64_t sub_254EDEFE4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_254EDF038(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254EDF08C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_254EDF0F4()
{
  result = sub_254EB4BB0();
  qword_281427CB8 = result;
  return result;
}

uint64_t sub_254EDF114()
{
  v2 = *(*v1 + 408);
  v5 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = sub_254EDF804;
  }

  else
  {
    v3 = sub_254EDF228;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_254EDF228()
{
  v79 = v0;
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[45];
  v4 = v0[27];
  v5 = v0[23];
  v6 = v0[15];
  v7 = v0[13];
  sub_254F284C0();
  v2(v5, v6, v7);

  v8 = sub_254F291D0();
  v9 = sub_254F296E0();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[49];
  v11 = v0[50];
  if (v10)
  {
    v65 = v0[44];
    v67 = v0[45];
    v76 = v0[27];
    v70 = v0[26];
    v72 = v0[49];
    v74 = v0[25];
    v13 = v0[23];
    v14 = v0[20];
    v15 = v0[21];
    v16 = v0[13];
    v17 = v0[14];
    v59 = v0[19];
    v61 = v0[22] + 8;
    v18 = v0[53];
    v19 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    sub_254EB7A24(4.8151e-34);
    v63 = v9;
    v20(v16, v17);
    sub_254F28040();
    v21 = sub_254EB402C();
    v22(v21, v59);
    v11(v13, v16);
    v23 = sub_254EC2D74(v15, v17, v78);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    v78[1] = v18;
    v78[2] = v65;
    v78[3] = v67;
    v24 = RequestID.debugDescription.getter();
    v26 = sub_254EC2D74(v24, v25, v78);

    *(v19 + 14) = v26;
    sub_254EB3D00(&dword_254EAE000, "[%s] finished fetching source data for %{public}s", v63);
    swift_arrayDestroy();
    sub_254EB3C04();
    sub_254EB3C04();

    v72(v76, v74);
  }

  else
  {
    v28 = v0[26];
    v27 = v0[27];
    v29 = v0[25];
    v31 = v0[22];
    v30 = v0[23];
    v32 = v0[13];

    v11(v30, v32);
    v12(v27, v29);
  }

  v62 = v0[46];
  v64 = v0[43];
  v66 = v0[42];
  v68 = v0[39];
  v58 = v0[34];
  v60 = v0[33];
  v51 = v0[35];
  v52 = v0[32];
  v50 = v0[31];
  v33 = v0[30];
  v53 = v0[29];
  v69 = v0[38];
  v71 = v0[28];
  v73 = v0[27];
  v75 = v0[24];
  v77 = v0[23];
  v35 = v0[20];
  v34 = v0[21];
  v36 = v0[19];
  v56 = v0[16];
  v57 = v0[18];
  v38 = v0[14];
  v37 = v0[15];
  v39 = v0[13];
  v54 = v0[12];
  v55 = v0[17];
  type metadata accessor for Analytics();
  sub_254EC8BC0(&qword_27F75EFA8, &qword_254F2BA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254F2BA20;
  *(inited + 32) = 0x7954656372756F73;
  *(inited + 40) = 0xEA00000000006570;
  sub_254EB48D8(0, &qword_281426030, 0x277CCACA8);
  (*(v38 + 16))(v39, v38);
  sub_254F28040();
  (*(v35 + 8))(v34, v36);
  *(inited + 48) = sub_254EF3180();
  *(inited + 56) = 0x79636E6574616CLL;
  *(inited + 64) = 0xE700000000000000;
  sub_254F29A00();
  sub_254F29A10();
  v41 = *(v33 + 8);
  v41(v50, v53);
  v42 = sub_254F29C10();
  v44 = v42 * 1000.0 + v43 * 1.0e-15;
  v45 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v46 = v44;
  *(inited + 72) = [v45 initWithFloat_];
  sub_254EB48D8(0, &qword_281426038, 0x277D82BB8);
  v47 = sub_254F293D0();
  static Analytics.sendEventForProduction(eventName:prefix:eventPayload:)(0x7250656372756F53, 0xEE0072656469766FLL, 0, 0, v47);

  v41(v52, v53);
  (*(v58 + 8))(v51, v60);
  (*(v55 + 32))(v54, v57, v56);
  sub_254EDF980("ContextRetrieval.SourceProvider", 31, 2, v62, v39);

  v48 = v0[1];

  return v48();
}

uint64_t sub_254EDF804()
{
  v1 = v0[46];
  v3 = v0[42];
  v2 = v0[43];
  v13 = v0[39];
  v14 = v0[38];
  v4 = v0[34];
  v5 = v0[35];
  v6 = v0[33];
  v15 = v0[31];
  v16 = v0[28];
  v17 = v0[27];
  v18 = v0[24];
  v19 = v0[23];
  v7 = v0[21];
  v20 = v0[18];
  v8 = v0[13];
  v9 = v0[14];
  (*(v0[30] + 8))(v0[32], v0[29]);
  (*(v4 + 8))(v5, v6);
  sub_254EDF980("ContextRetrieval.SourceProvider", 31, 2, v1, v8);

  v10 = v0[1];
  v11 = v0[52];

  return v10();
}

uint64_t sub_254EDF980(const char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v44 = a3;
  v45 = a1;
  v5 = sub_254F29180();
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_254F29140();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_254F29170();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F280C0();
  v19 = sub_254F29160();
  sub_254F29190();
  v42 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {

    (*(v10 + 8))(v13, v9);
    return (*(v15 + 8))(v18, v14);
  }

  v38 = v14;
  v39 = v9;
  if (v44)
  {
    if (!(v45 >> 32))
    {
      if ((v45 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v45 >> 16 <= 0x10)
      {
        v21 = v10;
        v22 = v15;
        v45 = &v48;
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v45)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v10;
  v22 = v15;
LABEL_10:

  sub_254F291C0();

  v24 = v40;
  v23 = v41;
  v25 = v19;
  if ((*(v40 + 88))(v8, v41) == *MEMORY[0x277D85B00])
  {
    v26 = 0;
    v27 = "[Error] Interval already ended";
  }

  else
  {
    (*(v24 + 8))(v8, v23);
    v27 = "SourceProvider=%{signpost.telemetry:string1,public}s %s";
    v26 = 2;
  }

  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v47 = v29;
  *v28 = v26;
  *(v28 + 1) = v26;
  *(v28 + 2) = 2082;
  v46 = v43;
  swift_getMetatypeMetadata();
  v30 = sub_254F29480();
  v32 = sub_254EC2D74(v30, v31, &v47);

  *(v28 + 4) = v32;
  *(v28 + 12) = 2080;
  sub_254F280B0();
  v33 = sub_254F29950();
  v35 = sub_254EC2D74(v33, v34, &v47);

  *(v28 + 14) = v35;
  v36 = sub_254F29130();
  _os_signpost_emit_with_name_impl(&dword_254EAE000, v25, v42, v36, v45, v27, v28, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x259C2EB80](v29, -1, -1);
  MEMORY[0x259C2EB80](v28, -1, -1);

  (*(v21 + 8))(v13, v39);
  return (*(v22 + 8))(v18, v38);
}

uint64_t sub_254EDFDEC()
{
  result = sub_254F28050();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_254EDFE60(uint64_t a1)
{
  v4 = *v2;
  sub_254EB2DB4();
  *v5 = v4;
  v7 = *(v6 + 200);
  v8 = *v2;
  sub_254EB2DB4();
  *v9 = v8;
  v4[26] = v1;

  if (v1)
  {
    v10 = sub_254EE0060;
  }

  else
  {
    v11 = v4[24];
    v4[27] = a1;
    swift_setDeallocating();
    sub_254EB2BBC((v11 + 16));
    v10 = sub_254EDFF90;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_254EDFF90()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  v7 = v0[14];

  (*(v5 + 32))(v7, v4, v6);
  sub_254EB2F04(v7, 0, 1, v6);

  v8 = v0[1];
  v9 = v0[27];

  return v8(v9);
}

uint64_t sub_254EE0060()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[18];

  swift_setDeallocating();
  sub_254EB2BBC((v2 + 16));

  v6 = v0[1];
  v7 = v0[26];

  return v6();
}

uint64_t sub_254EE00FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_254F28050();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_254EE0164(uint64_t a1)
{
  v4 = *v2;
  sub_254EB2DB4();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v2;
  sub_254EB2DB4();
  *v9 = v8;

  if (!v1)
  {
    v11 = *(v4 + 16);
    *(v11 + *(sub_254EC8BC0(&qword_27F75EE60, &qword_254F2B4B8) + 48)) = a1;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_254EE0290()
{
  v0 = type metadata accessor for ContextReferenceCache();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_254EE053C();
  qword_281427CD8 = v3;
  return result;
}

uint64_t sub_254EE03A0()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowContextRuntime21ContextReferenceCache_instance;
  v2 = sub_254F28550();
  sub_254EB2D80(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for ContextReferenceCache()
{
  result = qword_281427130;
  if (!qword_281427130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254EE0488()
{
  result = sub_254F28550();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_254EE053C()
{
  type metadata accessor for ContextReferenceCache.CacheCallbacks();
  swift_allocObject();
  sub_254EB6264(qword_2814271F0, v1, type metadata accessor for ContextReferenceCache.CacheCallbacks);
  sub_254F28540();
  return v0;
}

uint64_t sub_254EE05D8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_254EE0628(a1);
  return v2;
}

void *sub_254EE0628(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  v4 = MEMORY[0x277D84F98];
  v1[14] = MEMORY[0x277D84F98];
  v1[15] = v4;
  v1[16] = v4;
  _s14EmbeddingCacheCMa();
  swift_allocObject();
  v5 = sub_254EEA4B4(50, 10);
  v6 = sub_254F28510();
  sub_254EB2D80(v6);
  (*(v7 + 8))(a1);
  v2[17] = v5;
  return v2;
}

uint64_t sub_254EE06D4()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_254F291E0();
  v4 = sub_254EB2CBC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_254EB3AB8();
  v11 = v10 - v9;
  sub_254F284C0();
  v12 = sub_254F291D0();
  v13 = sub_254F296F0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v54 = v15;
    *v14 = 136315138;
    v16 = sub_254EE0BC4();
    v18 = sub_254EC2D74(v16, v17, &v54);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_254EAE000, v12, v13, "%s is being deinitialized", v14, 0xCu);
    sub_254EB2BBC(v15);
    sub_254EB3C04();
    sub_254EB3C04();
  }

  (*(v6 + 8))(v11, v3);
  sub_254EB6D78();
  swift_beginAccess();
  v19 = v1[14];
  v20 = *(v19 + 64);
  v21 = *(v19 + 32);
  sub_254EB4AFC();
  v24 = v23 & v22;
  v26 = (v25 + 63) >> 6;

  v28 = 0;
  while (v24)
  {
LABEL_9:
    v30 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v31 = *(v19 + 56) + ((v28 << 10) | (16 * v30));
    if ((*(v31 + 8) & 1) == 0)
    {
      v32 = *v31;

      sub_254EC8BC0(&qword_27F75F0B0, &unk_254F2BD10);
      sub_254EC8BC0(&qword_27F75F090, "P<");
      sub_254F29630();
      result = sub_254EE304C(v32, 0);
    }
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v29 >= v26)
    {
      break;
    }

    v24 = *(v19 + 64 + 8 * v29);
    ++v28;
    if (v24)
    {
      v28 = v29;
      goto LABEL_9;
    }
  }

  sub_254EB6D78();
  swift_beginAccess();
  v33 = v1[15];
  v34 = *(v33 + 64);
  v35 = *(v33 + 32);
  sub_254EB4AFC();
  v38 = v37 & v36;
  v40 = (v39 + 63) >> 6;

  v41 = 0;
  while (v38)
  {
    v42 = v41;
LABEL_17:
    v43 = __clz(__rbit64(v38)) | (v42 << 6);
    v44 = *(v33 + 48) + 32 * v43;
    v45 = *(v44 + 8);
    v46 = *(v44 + 24);
    sub_254ED7AC0(*(v33 + 56) + 40 * v43, &v54, &qword_27F75F100, &qword_254F2BDD0);
    v52 = v55;
    v53 = v54;
    v47 = v56;

    if (v45 == 1)
    {
LABEL_22:

      sub_254EB67F0();
      sub_254EC8BC0(&qword_27F75F110, &qword_254F2BDF0);
      sub_254F293E0();
      swift_endAccess();
      sub_254EB67F0();
      sub_254EC8BC0(&qword_27F75F118, &qword_254F2BDF8);
      sub_254F293E0();
      swift_endAccess();
      sub_254EB67F0();
      sub_254EC8BC0(&qword_27F75F120, &qword_254F2BE00);
      sub_254F293E0();
      swift_endAccess();
      v48 = v1[14];

      v49 = v1[15];

      v50 = v1[16];

      v51 = v1[17];

      swift_defaultActor_destroy();
      return v1;
    }

    v38 &= v38 - 1;

    v55 = v52;
    v54 = v53;
    v56 = v47;
    if (v47)
    {
      result = sub_254EB306C(&v54, &qword_27F75F100, &qword_254F2BDD0);
    }

    else
    {
      sub_254EC8BC0(&qword_27F75F108, &qword_254F2BDD8);
      sub_254EC8BC0(&qword_27F75F090, "P<");
      sub_254F29630();
    }

    v41 = v42;
  }

  while (1)
  {
    v42 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v42 >= v40)
    {
      goto LABEL_22;
    }

    v38 = *(v33 + 64 + 8 * v42);
    ++v41;
    if (v38)
    {
      goto LABEL_17;
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_254EE0BF4()
{
  sub_254EE06D4();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_254EE0C20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_254EE0D44(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_254EE0F08(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254EE0F5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_254EE0FB0(uint64_t a1, void *a2)
{
  result = sub_254EE05D8(a1);
  if (v2)
  {
    *a2 = v2;
  }

  return result;
}

uint64_t sub_254EE1014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    v12 = a1 == a5 && a2 == a6;
    if (!v12 && (sub_254F29B10() & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a4)
  {
    if (a8)
    {
      v13 = a3 == a7 && a4 == a8;
      if (v13 || (sub_254F29B10() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!a8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_254EE10B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_254F29BC0();
  sub_254EB7B34(v9, a1, a2, a3, a4);
  return sub_254F29C00();
}

uint64_t sub_254EE11AC(uint64_t a1, uint64_t a2)
{
  result = sub_254EB6264(qword_281426E20, a2, type metadata accessor for ContextCache);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254EE1204()
{
  sub_254EB3A3C();
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  sub_254EB2CE0();
  *v5 = v4;

  v6 = *(v2 + 128);
  if (v0)
  {

    v7 = sub_254EE1398;
  }

  else
  {
    v7 = sub_254EE1330;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_254EE1330()
{
  sub_254EB3BD8();
  sub_254EE3034(*(v0 + 160), *(v0 + 176));
  v1 = *(v0 + 112);
  v2 = *(v0 + 152);

  v3 = sub_254EC38B0();

  return v4(v3);
}

uint64_t sub_254EE1398()
{
  sub_254EB3BD8();
  sub_254EE3034(*(v0 + 160), *(v0 + 176));
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_254EE1404()
{
  sub_254EB3A3C();
  v3 = v2;
  sub_254EB4918();
  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *v1;
  sub_254EB2CE0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    sub_254EB3FB8();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_254EE153C()
{
  **(v0 + 16) = *(v0 + 32);
  sub_254EB4924();
  return v1();
}

uint64_t sub_254EE156C()
{
  v45 = v0;
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = *(v0 + 280);
  sub_254EB5C9C(*(v0 + 272), v0 + 16);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  sub_254EB5A9C((v0 + 16), v5);
  (*(v6 + 16))(v5, v6);
  v7 = sub_254F28040();
  v9 = v8;
  (*(v2 + 8))(v1, v3);
  sub_254EB2BBC((v0 + 16));
  sub_254EB6D78();
  swift_beginAccess();
  v10 = *(v4 + 120);

  sub_254EB6D78();
  sub_254EB50B8(v11, v12, v13, v14, v10, v15);

  if (*(v0 + 128) == 255)
  {
    v18 = *(v0 + 304);
    sub_254EB306C(v0 + 96, &qword_27F75F0F8, &qword_254F2BDC8);
    sub_254F284C0();

    v19 = sub_254F291D0();
    v20 = sub_254F296F0();

    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 296);
    v22 = *(v0 + 304);
    v24 = *(v0 + 288);
    if (v21)
    {
      v25 = swift_slowAlloc();
      v44 = sub_254EE3254();
      *v25 = 136315394;
      v26 = sub_254EB63C8(0x6567u);
      *(v25 + 4) = sub_254EC2D74(v26, 0xE900000000000029, &v44);
      *(v25 + 12) = 2080;
      *(v0 + 176) = v7;
      *(v0 + 184) = v9;
      *(v0 + 192) = 0;
      *(v0 + 200) = 0;
      v27 = sub_254F29480();
      v29 = sub_254EC2D74(v27, v28, &v44);

      *(v25 + 14) = v29;
      _os_log_impl(&dword_254EAE000, v19, v20, "%s cache MISS for %s", v25, 0x16u);
      sub_254EB4A28();
      sub_254EB3C04();
      sub_254EB3C04();
    }

    else
    {
    }

    (*(v23 + 8))(v22, v24);
    v38 = *(v0 + 264);
    *v38 = 0u;
    v38[1] = 0u;
LABEL_11:
    v39 = *(v0 + 328);
    v40 = *(v0 + 304);

    sub_254EB4924();
    sub_254EB3CE4();

    __asm { BRAA            X1, X16 }
  }

  v16 = *(v0 + 112);
  *(v0 + 56) = *(v0 + 96);
  *(v0 + 72) = v16;
  *(v0 + 88) = *(v0 + 128);
  sub_254ED7AC0(v0 + 56, v0 + 136, &qword_27F75F100, &qword_254F2BDD0);
  if (*(v0 + 168))
  {
    v17 = *(v0 + 264);
    sub_254EB306C(v0 + 56, &qword_27F75F100, &qword_254F2BDD0);
    sub_254EE31B4((v0 + 136), v17);
    goto LABEL_11;
  }

  *(v0 + 336) = *(v0 + 136);
  v30 = *(MEMORY[0x277D857C8] + 4);
  v31 = swift_task_alloc();
  *(v0 + 344) = v31;
  sub_254EC8BC0(&qword_27F75F108, &qword_254F2BDD8);
  sub_254EC8BC0(&qword_27F75F090, "P<");
  *v31 = v0;
  v31[1] = sub_254EE1920;
  sub_254EB3CE4();

  return MEMORY[0x282200430](v32, v33, v34, v35, v36);
}

uint64_t sub_254EE1920()
{
  sub_254EB3A3C();
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  sub_254EB2CE0();
  *v5 = v4;

  v6 = *(v2 + 280);
  if (v0)
  {

    v7 = sub_254EE1ADC;
  }

  else
  {
    v7 = sub_254EE1A4C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_254EE1A4C()
{
  sub_254EB3BD8();
  v1 = *(v0 + 336);

  sub_254EB306C(v0 + 56, &qword_27F75F100, &qword_254F2BDD0);
  v2 = *(v0 + 264);
  v3 = *(v0 + 224);
  *v2 = *(v0 + 208);
  v2[1] = v3;
  v4 = *(v0 + 328);
  v5 = *(v0 + 304);

  sub_254EB4924();

  return v6();
}

uint64_t sub_254EE1ADC()
{
  sub_254EB3BD8();
  v1 = v0[42];

  sub_254EB306C((v0 + 7), &qword_27F75F100, &qword_254F2BDD0);
  v2 = v0[33];
  *v2 = 0u;
  v2[1] = 0u;
  v3 = v0[41];
  v4 = v0[38];

  sub_254EB4924();

  return v5();
}

uint64_t sub_254EE1B6C()
{
  sub_254EB3A3C();
  v3 = v2;
  *(v1 + 64) = v4;
  *(v1 + 72) = v0;
  *(v1 + 48) = v5;
  *(v1 + 56) = v6;
  v7 = sub_254F28080();
  *(v1 + 80) = v7;
  sub_254EB2CAC(v7);
  *(v1 + 88) = v8;
  v10 = *(v9 + 64) + 15;
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  v11 = sub_254EC8BC0(&qword_27F75F0B8, &qword_254F2BD28);
  sub_254EB2D90(v11);
  v13 = *(v12 + 64) + 15;
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = swift_task_alloc();
  v14 = sub_254F280A0();
  *(v1 + 144) = v14;
  sub_254EB2CAC(v14);
  *(v1 + 152) = v15;
  v17 = *(v16 + 64);
  *(v1 + 160) = sub_254EB3FC4();
  *(v1 + 200) = *v3;
  *(v1 + 168) = *(v3 + 8);
  v18 = sub_254EB7E4C();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

void sub_254EE1CE8()
{
  v1 = v0;
  v2 = v0[19];
  v102 = v0[18];
  v104 = v0[20];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[6];

  sub_254F0CD4C();
  v108 = v6;
  v0[5] = v6;
  v101 = v0 + 5;
  sub_254EC8BC0(&qword_27F75F0C0, &qword_254F2BD30);
  v7 = (sub_254EC8BC0(&qword_27F75F0C8, &qword_254F2BD38) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_254F2AE00;
  v11 = v10 + v9;
  v12 = v7[14];
  v13 = *(v3 + 104);
  v3 += 104;
  v13(v11, *MEMORY[0x277D1EA50], v4);
  sub_254EC8BC0(&qword_27F75F0D0, &qword_254F2BD40);
  v14 = (*(v3 - 24) + 32) & ~*(v3 - 24);
  v107 = *(v3 - 32);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_254F2AE00;
  v93 = v14;
  v13(v15 + v14, *MEMORY[0x277D1EAD0], v4);
  *(v11 + v12) = v15;
  sub_254EC8BC0(&qword_27F75F0D8, &unk_254F2BD48);
  sub_254EB67D8();
  sub_254EB6264(v16, 255, v17);
  v18 = sub_254F293D0();
  (*(v2 + 104))(v104, *MEMORY[0x277D1EBF8], v102);
  v19 = sub_254F28090();
  (*(v2 + 8))(v104, v102);
  v103 = v1;
  if ((v19 & 1) == 0)
  {

    v28 = v1;
    v64 = v108;
LABEL_28:
    v65 = v28[11];
    v66 = v64 + 56;
    v67 = -1;
    v68 = -1 << *(v64 + 32);
    if (-v68 < 64)
    {
      v67 = ~(-1 << -v68);
    }

    v69 = v67 & *(v64 + 56);
    v70 = (63 - v68) >> 6;
    v106 = (v65 + 16);
    v71 = (v65 + 8);

    v72 = 0;
    v73 = MEMORY[0x277D84F90];
    v110 = v64;
    while (1)
    {
      v103[23] = v73;
      if (!v69)
      {
        break;
      }

LABEL_36:
      (*v106)(v103[12], *(v64 + 48) + (__clz(__rbit64(v69)) | (v72 << 6)) * v107, v103[10]);
      if (qword_281427288 != -1)
      {
        swift_once();
      }

      v75 = qword_281427CE0;
      if (*(qword_281427CE0 + 16) && (v76 = v103[12], sub_254F059E0(), (v78 & 1) != 0))
      {
        v79 = *(*(v75 + 56) + 8 * v77);
      }

      else
      {
        v79 = MEMORY[0x277D84F90];
      }

      (*v71)(v103[12], v103[10]);
      v80 = *(v79 + 16);
      v81 = *(v73 + 16);
      if (__OFADD__(v81, v80))
      {
        goto LABEL_58;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v81 + v80 > *(v73 + 24) >> 1)
      {
        sub_254EB4818();
        v73 = v82;
      }

      v64 = v110;
      v69 &= v69 - 1;
      if (*(v79 + 16))
      {
        if ((*(v73 + 24) >> 1) - *(v73 + 16) < v80)
        {
          goto LABEL_60;
        }

        sub_254EC8BC0(&qword_27F75EDA0, &unk_254F2AF90);
        swift_arrayInitWithCopy();

        if (v80)
        {
          v83 = *(v73 + 16);
          v84 = __OFADD__(v83, v80);
          v85 = v83 + v80;
          if (v84)
          {
            goto LABEL_61;
          }

          *(v73 + 16) = v85;
        }
      }

      else
      {

        if (v80)
        {
          goto LABEL_59;
        }
      }
    }

    while (1)
    {
      v74 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        goto LABEL_57;
      }

      if (v74 >= v70)
      {
        v87 = v103[21];
        v86 = v103[22];
        v88 = v103[25];

        v103[2] = v88;
        v103[3] = v87;
        v103[4] = v86;
        v89 = swift_task_alloc();
        v103[24] = v89;
        *v89 = v103;
        v89[1] = sub_254EE25F8;
        v90 = v103[8];
        v91 = v103[9];
        v92 = v103[7];

        sub_254EE27B8();
        return;
      }

      v69 = *(v66 + 8 * v74);
      ++v72;
      if (v69)
      {
        v72 = v74;
        goto LABEL_36;
      }
    }
  }

  v20 = 0;
  v21 = v18 + 64;
  v22 = -1 << *(v18 + 32);
  v23 = v1[11];
  if (-v22 < 64)
  {
    v24 = ~(-1 << -v22);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & *(v18 + 64);
  v26 = (63 - v22) >> 6;
  v27 = (v23 + 16);
  v99 = (v23 + 32);
  v109 = (v23 + 8);
  v28 = v1;
  v29 = v107;
  v95 = v26;
  v96 = v18 + 64;
  v105 = (v23 + 16);
  v97 = v18;
  if (v25)
  {
    while (1)
    {
      v30 = v20;
LABEL_11:
      v32 = v28[15];
      v31 = v28[16];
      v33 = v28[10];
      v100 = (v25 - 1) & v25;
      v34 = __clz(__rbit64(v25)) | (v30 << 6);
      (*v27)(v32, *(v18 + 48) + v34 * v29, v33);
      v35 = *(*(v18 + 56) + 8 * v34);
      v36 = sub_254EC8BC0(&qword_27F75F0E0, &qword_254F2BD60);
      v37 = *(v36 + 48);
      (*v99)(v31, v32, v33);
      *(v31 + v37) = v35;
      sub_254EB2F04(v31, 0, 1, v36);

LABEL_12:
      v38 = v28[17];
      sub_254EE3058(v28[16], v38);
      v39 = sub_254EC8BC0(&qword_27F75F0E0, &qword_254F2BD60);
      if (sub_254EB2F2C(v38, 1, v39) == 1)
      {
        break;
      }

      v40 = v28[10];
      v41 = *(v28[17] + *(v39 + 48));
      (*v99)(v28[14]);
      v42 = v28[5];
      v43 = v28[14];
      v18 = v97;
      if (*(v42 + 16))
      {
        v98 = v41;
        v44 = *(v42 + 40);
        v45 = sub_254F293F0();
        v46 = ~(-1 << *(v42 + 32));
        do
        {
          v47 = v45 & v46;
          if (((*(v42 + 56 + (((v45 & v46) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v45 & v46)) & 1) == 0)
          {
            v28 = v103;
            (*v109)(v103[14], v103[10]);
            v29 = v107;
            v18 = v97;
            goto LABEL_23;
          }

          v48 = v103[15];
          v49 = v103[10];
          v50 = *v105;
          (*v105)(v48, *(v42 + 48) + v47 * v107, v49);
          sub_254EB67D8();
          sub_254EB6264(&qword_281427530, 255, v51);
          v52 = sub_254F29410();
          v53 = *v109;
          (*v109)(v48, v49);
          v45 = v47 + 1;
        }

        while ((v52 & 1) == 0);
        v94 = v20;
        v54 = *(v98 + 16);
        v28 = v103;
        v55 = v105;
        v29 = v107;
        if (v54)
        {
          v56 = v98 + v93;
          do
          {
            v57 = v103[15];
            v58 = v103[10];
            v59 = v55;
            v50(v103[13], v56, v58);
            sub_254F0F7E0();
            v53(v57, v58);
            v55 = v59;
            v56 += v107;
            --v54;
          }

          while (v54);
        }

        v53(v103[14], v103[10]);
        v18 = v97;
        v20 = v94;
      }

      else
      {
        (*v109)(v28[14], v28[10]);
        v29 = v107;
      }

LABEL_23:

      v26 = v95;
      v21 = v96;
      v27 = v105;
      v25 = v100;
      if (!v100)
      {
        goto LABEL_7;
      }
    }

    v64 = *v101;
    goto LABEL_28;
  }

LABEL_7:
  while (1)
  {
    v30 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v30 >= v26)
    {
      v60 = v28[16];
      v61 = sub_254EC8BC0(&qword_27F75F0E0, &qword_254F2BD60);
      sub_254EB7D30(v61, v62, v63, v61);
      v100 = 0;
      goto LABEL_12;
    }

    v25 = *(v21 + 8 * v30);
    ++v20;
    if (v25)
    {
      v20 = v30;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

uint64_t sub_254EE25F8()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v2 = v1[24];
  v3 = v1[23];
  v4 = v1[9];
  v5 = *v0;
  sub_254EB2CE0();
  *v6 = v5;

  return MEMORY[0x2822009F8](sub_254EE2714, v4, 0);
}

uint64_t sub_254EE2714()
{
  sub_254EC00E4();
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];

  sub_254EB4924();

  return v8();
}

uint64_t sub_254EE27B8()
{
  sub_254EB3A3C();
  v3 = v2;
  *(v1 + 312) = v4;
  *(v1 + 320) = v0;
  *(v1 + 296) = v5;
  *(v1 + 304) = v6;
  v7 = type metadata accessor for ContextDefinition();
  *(v1 + 328) = v7;
  sub_254EB2D90(v7);
  v9 = *(v8 + 64);
  *(v1 + 336) = sub_254EB3FC4();
  v10 = sub_254EC8BC0(&qword_27F75EFA0, &qword_254F2B6B0);
  sub_254EB2D90(v10);
  v12 = *(v11 + 64);
  *(v1 + 344) = sub_254EB3FC4();
  v13 = sub_254F28050();
  *(v1 + 352) = v13;
  sub_254EB2CAC(v13);
  *(v1 + 360) = v14;
  v16 = *(v15 + 64) + 15;
  *(v1 + 368) = swift_task_alloc();
  *(v1 + 376) = swift_task_alloc();
  v17 = sub_254F291E0();
  *(v1 + 384) = v17;
  sub_254EB2CAC(v17);
  *(v1 + 392) = v18;
  v20 = *(v19 + 64);
  *(v1 + 400) = sub_254EB3FC4();
  *(v1 + 424) = *v3;
  *(v1 + 408) = *(v3 + 8);
  v21 = sub_254EB7E4C();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_254EE2930()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v3 = *(v2 + 56);
  v4 = *v1;
  sub_254EB2CE0();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    sub_254EB3FB8();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    sub_254EB4924();

    return v10();
  }
}

uint64_t sub_254EE2A4C()
{
  sub_254EB3BD8();
  sub_254EE3204(*(v0 + 40));
  sub_254EB4924();
  v2 = *(v0 + 64);

  return v1();
}

uint64_t sub_254EE2AA8()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v2 = *(v1 + 392);
  v3 = *v0;
  sub_254EB2CE0();
  *v4 = v3;

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_254EE2B90()
{
  sub_254EC00E4();
  v1 = *(v0 + 288);
  v3 = v1[3];
  v2 = v1[4];
  sub_254EB5A9C(v1, v3);
  sub_254ED7AC0(v0 + 128, v0 + 192, &qword_27F75F0F0, &qword_254F2BDC0);
  v4 = *(v0 + 216);
  if (v4)
  {
    v5 = sub_254EB5A9C((v0 + 192), *(v0 + 216));
    *(v0 + 184) = v4;
    v6 = sub_254EB4178((v0 + 160));
    (*(*(v4 - 8) + 16))(v6, v5, v4);
    sub_254EB2BBC((v0 + 192));
  }

  else
  {
    sub_254EB306C(v0 + 192, &qword_27F75F0F0, &qword_254F2BDC0);
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0u;
  }

  *(v0 + 248) = *(v0 + 320);
  *(v0 + 256) = *(v0 + 328);
  v7 = swift_task_alloc();
  *(v0 + 400) = v7;
  *v7 = v0;
  v7[1] = sub_254EE2D0C;
  v8 = *(v0 + 304);
  v9 = *(v0 + 312);

  return sub_254ED6D88(v0 + 160, v8, v9, v0 + 248, v3, v2);
}

uint64_t sub_254EE2D0C()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v2 = v1;
  v1[34] = v0;
  v1[35] = v3;
  v4 = v1[50];
  v5 = *v0;
  sub_254EB2CE0();
  *v6 = v5;

  sub_254EB306C((v2 + 20), &qword_27F75EE68, &qword_254F2B4C0);
  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_254EE2E10()
{
  sub_254EB3A3C();
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  sub_254EB306C((v0 + 16), &qword_27F75F0F0, &qword_254F2BDC0);
  sub_254EB2BBC(v0 + 2);
  (*(v2 + 8))(v1, v3);
  v4 = v0[35];
  v5 = v0[48];
  v6 = v0[45];
  v7 = v0[43];

  v8 = sub_254EC38B0();

  return v9(v8);
}

uint64_t sub_254EE2ED0()
{
  sub_254EB3A3C();
  v2 = v1;
  v3 = *v0;
  v4 = *v0;
  sub_254EB2CE0();
  *v5 = v4;
  v6 = v3[51];
  v7 = *v0;
  *v5 = *v0;

  sub_254EB306C((v4 + 12), &qword_27F75EE68, &qword_254F2B4C0);
  v8 = v3[48];
  v9 = v3[45];
  v10 = v3[43];

  v11 = v7[1];

  return v11(v2);
}

uint64_t sub_254EE3034(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_254EE304C(result, a2 & 1);
  }

  return result;
}

uint64_t sub_254EE304C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_254EE3058(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75F0B8, &qword_254F2BD28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_254EE30C8()
{
  sub_254EB3BD8();
  v2 = v1;
  sub_254EB4918();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_254EB2CE0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

_OWORD *sub_254EE31B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_254EE31C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t *sub_254EE3204(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x259C2EB80);
  }

  return result;
}

uint64_t sub_254EE3254()
{

  return swift_slowAlloc();
}

uint64_t sub_254EE326C(uint64_t a1)
{
  v3 = sub_254F29A40();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = *a1;
  *(v1 + 24) = *(a1 + 8);
  sub_254F29A30();
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime16ContextRetriever_clock, v7, v3);
  return v1;
}

uint64_t sub_254EE3358()
{
  sub_254EB3BD8();
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  *(v1 + 264) = v3;
  *(v1 + 88) = v4;
  v5 = sub_254F28080();
  *(v1 + 112) = v5;
  sub_254EB2CAC(v5);
  *(v1 + 120) = v6;
  v8 = *(v7 + 64);
  *(v1 + 128) = sub_254EB3FC4();
  v9 = sub_254F29A20();
  *(v1 + 136) = v9;
  sub_254EB2CAC(v9);
  *(v1 + 144) = v10;
  v12 = *(v11 + 64);
  *(v1 + 152) = sub_254EB3FC4();
  v13 = sub_254F29140();
  *(v1 + 160) = v13;
  sub_254EB2CAC(v13);
  *(v1 + 168) = v14;
  v16 = *(v15 + 64);
  *(v1 + 176) = sub_254EB3C44();
  *(v1 + 184) = swift_task_alloc();
  v17 = sub_254F29170();
  *(v1 + 192) = v17;
  sub_254EB2CAC(v17);
  *(v1 + 200) = v18;
  v20 = *(v19 + 64);
  *(v1 + 208) = sub_254EB3C44();
  *(v1 + 216) = swift_task_alloc();
  v21 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

void sub_254EE3500()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  sub_254F280C0();
  sub_254F280C0();
  sub_254F29160();
  sub_254F29120();
  v6 = *(v4 + 8);
  v7 = sub_254EB63E8();
  v71 = v8;
  v8(v7);
  v9 = sub_254F29160();
  sub_254F297A0();
  if (sub_254F29800())
  {
    v10 = *(v0 + 184);
    *swift_slowAlloc() = 0;
    v11 = sub_254F29130();
    sub_254EC38C0(&dword_254EAE000, v12, v13, v11, "ContextRetrieval.retrieveContextValues(contextTypes:timeout:)", "");
    sub_254EB3C04();
  }

  v14 = *(v0 + 216);
  v16 = *(v0 + 184);
  v15 = *(v0 + 192);
  v18 = *(v0 + 168);
  v17 = *(v0 + 176);
  v19 = *(v0 + 160);
  v20 = *(v0 + 104);
  v68 = *(v0 + 152);
  v70 = *(v0 + 88);

  v21 = sub_254EB6D84();
  v22(v21);
  v23 = sub_254F291B0();
  sub_254EB82B4(v23);
  *(v0 + 224) = sub_254EB5AE0();
  v25 = *(v18 + 8);
  v24 = v18 + 8;
  v26 = sub_254EC0D3C();
  v27(v26);
  v28 = sub_254EB3AEC();
  (v71)(v28);
  sub_254F29A00();
  v29 = *(v70 + 16);
  v30 = MEMORY[0x277D84F90];
  if (v29)
  {
    v31 = *(v0 + 120);
    sub_254EB3AC8(*(v0 + 88));
    do
    {
      (v16)(*(v0 + 128), v14, *(v0 + 112));
      if (qword_281427288 != -1)
      {
        sub_254EB6BD8();
        swift_once();
      }

      v32 = qword_281427CE0;
      if (*(qword_281427CE0 + 16))
      {
        v33 = *(v0 + 128);
        sub_254F059E0();
        v20 = *v15;
        if (v35)
        {
          v24 = v16;
          v36 = *(v0 + 128);
          v37 = *(v0 + 112);
          v38 = *(*(v32 + 56) + 8 * v34);

          v39 = sub_254EC0D3C();
          v20(v39);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = *(v30 + 16);
            sub_254EB4958();
            sub_254EF0730();
            v30 = v43;
          }

          v41 = *(v30 + 16);
          v40 = *(v30 + 24);
          v16 = (v41 + 1);
          if (v41 >= v40 >> 1)
          {
            sub_254EB5124(v40);
            sub_254EF0730();
            v30 = v44;
          }

          sub_254EEA0CC();
          goto LABEL_16;
        }
      }

      else
      {
        v20 = *v15;
      }

      (v20)(*(v0 + 128), *(v0 + 112));
LABEL_16:
      v14 += v24;
      --v29;
    }

    while (v29);
  }

  v45 = sub_254EE9D38(v30);
  v48 = sub_254EC1AC8(v45, v46, v47);
  if (v48)
  {
    sub_254EBED5C(v48);
    v49 = v71;
    v50 = v72;
    sub_254EE9D38(v30);
    if ((v71 & 0x8000000000000000) == 0)
    {
      sub_254EB3EA4();
      while (1)
      {
        v52 = __OFADD__(v20, 1);
        v20 = (v20 + 1);
        if (v52)
        {
          break;
        }

        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_45;
        }

        if (v14 >= *(v30 + 16))
        {
          goto LABEL_46;
        }

        if (v24)
        {
          goto LABEL_51;
        }

        v53 = v16[v14];
        if (v29 >= *(v53 + 16))
        {
          goto LABEL_47;
        }

        sub_254EB5C9C(v53 + v29 * v51 + 32, v0 + 16);
        sub_254EB99C0();
        if (v55)
        {
          v57 = sub_254EB5124(v54);
          sub_254ECA74C(v57, v24, 1);
          v49 = v71;
          v50 = v72;
        }

        sub_254EEA0E4();
        if (v55)
        {
          goto LABEL_48;
        }

        sub_254EB81A8();
        if (v56)
        {
          ++v14;
          while (1)
          {
            v24 = v14 == v15;
            if (v14 == v15)
            {
              v29 = 0;
              v14 = v15;
              goto LABEL_30;
            }

            sub_254EC8BC0(&qword_27F75F130, &unk_254F2BE60);
            sub_254EE9EDC();
            sub_254EB63E8();
            sub_254EB80C4();
            v69 = sub_254EF171C(v58, v59, v60);
            v62 = *v61;

            (v69)(v70, 0);
            v63 = *(v62 + 16);

            if (v63)
            {
              break;
            }

            v52 = __OFADD__(v14++, 1);
            v49 = v71;
            if (v52)
            {
              goto LABEL_50;
            }
          }

          v29 = 0;
          v49 = v71;
        }

        else
        {
          v24 = 0;
        }

LABEL_30:
        v51 = 40;
        if (v20 == v49)
        {

          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  else
  {

    v50 = MEMORY[0x277D84F90];
LABEL_41:
    *(v0 + 232) = v50;
    v64 = *(v0 + 264);
    v65 = swift_task_alloc();
    *(v0 + 240) = v65;
    *v65 = v0;
    v65[1] = sub_254EE39A8;
    v66 = *(v0 + 96);
    v67 = *(v0 + 104);

    sub_254EE42C4(v50, v66, v64 & 1);
  }
}

uint64_t sub_254EE39A8(uint64_t a1)
{
  sub_254EB4918();
  v5 = v4;
  sub_254EB63D8();
  *v6 = v5;
  v8 = *(v7 + 240);
  v9 = *v2;
  sub_254EB2CE0();
  *v10 = v9;
  v5[31] = v1;

  if (!v1)
  {
    v11 = v5[29];

    v5[32] = a1;
  }

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_254EE3AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_254EB4B18();
  sub_254EB5BE4();
  v13 = v12[27];
  v14 = v12[28];
  v15 = v12[26];
  v17 = v12[22];
  v16 = v12[23];
  v19 = v12[18];
  v18 = v12[19];
  v21 = v12[16];
  v20 = v12[17];
  v22 = v12[13];
  sub_254EB7D4C();
  sub_254EE3C84(v23, v24, v25, v26, v27, v18);

  v28 = *(v19 + 8);
  v29 = sub_254EC1BEC();
  v30(v29);

  v31 = v12[1];
  v32 = v12[32];
  sub_254EB3CE4();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_254EE3BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_254EB4B18();
  sub_254EB5BE4();
  v14 = v12[28];
  v13 = v12[29];
  v16 = v12[26];
  v15 = v12[27];
  v18 = v12[22];
  v17 = v12[23];
  v20 = v12[18];
  v19 = v12[19];
  v21 = v12[17];
  v40 = v12[16];
  v22 = v12[13];

  sub_254EB7D4C();
  sub_254EE3C84(v23, v24, v25, v26, v22, v19);

  v27 = *(v20 + 8);
  v28 = sub_254EC1BEC();
  v29(v28);

  sub_254EB4924();
  v30 = v12[31];
  sub_254EB3CE4();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10, a11, a12);
}

uint64_t sub_254EE3C84(const char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v51 = a5;
  v46 = a3;
  v52 = a1;
  v6 = sub_254F29A20();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_254F29180();
  v44 = *(v45 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v45);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_254F29140();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_254F29170();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F280C0();
  v21 = sub_254F29160();
  v22 = v51;
  sub_254F29190();
  v42 = sub_254F29790();
  result = sub_254F29800();
  if (result)
  {
    v40 = v12;
    v41 = v11;
    if ((v46 & 1) == 0)
    {
      if (v52)
      {
LABEL_9:

        v24 = v43;
        sub_254F291C0();

        v25 = v44;
        v26 = v45;
        if ((*(v44 + 88))(v24, v45) == *MEMORY[0x277D85B00])
        {
          v27 = "[Error] Interval already ended";
        }

        else
        {
          (*(v25 + 8))(v24, v26);
          v27 = "";
        }

        v28 = swift_slowAlloc();
        *v28 = 0;
        v29 = sub_254F29130();
        _os_signpost_emit_with_name_impl(&dword_254EAE000, v21, v42, v29, v52, v27, v28, 2u);
        MEMORY[0x259C2EB80](v28, -1, -1);
        v11 = v41;
        v12 = v40;
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v52 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v52 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v52 >> 16 <= 0x10)
      {
        v52 = &v53;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:

  (*(v12 + 8))(v15, v11);
  (*(v17 + 8))(v20, v16);
  sub_254EC8BC0(&qword_27F75EFA8, &qword_254F2BA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254F2B4D0;
  *(inited + 32) = 0x6449746E65696C63;
  *(inited + 40) = 0xE800000000000000;
  if (*(v22 + 32))
  {
    v31 = *(v22 + 24);
    v32 = *(v22 + 32);
  }

  type metadata accessor for Analytics();
  sub_254EB48D8(0, &qword_281426030, 0x277CCACA8);

  *(inited + 48) = sub_254EF3180();
  *(inited + 56) = 0x79636E6574616CLL;
  *(inited + 64) = 0xE700000000000000;
  v33 = v47;
  sub_254F29A00();
  sub_254F29A10();
  (*(v48 + 8))(v33, v49);
  v34 = sub_254F29C10();
  v36 = v34 * 1000.0 + v35 * 1.0e-15;
  v37 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v38 = v36;
  *(inited + 72) = [v37 initWithFloat_];
  strcpy((inited + 80), "retrievalType");
  *(inited + 94) = -4864;
  *(inited + 96) = sub_254EF3180();
  sub_254EB48D8(0, &qword_281426038, 0x277D82BB8);
  v39 = sub_254F293D0();
  static Analytics.sendEventForProduction(eventName:prefix:eventPayload:)(0xD000000000000010, 0x8000000254F2DDB0, 0, 0, v39);
}

uint64_t sub_254EE42C4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_254F284A0();
  v3[2] = v7;
  v8 = *(v7 - 8);
  v3[3] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v3[4] = v10;
  v11 = swift_task_alloc();
  v3[5] = v11;
  *v11 = v3;
  v11[1] = sub_254EE43E4;

  return sub_254EE5528(v10, a1, a2, a3 & 1, 0);
}

uint64_t sub_254EE43E4()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB5BF0();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  sub_254EB2CE0();
  *v7 = v6;
  *(v8 + 48) = v0;

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_254EE44DC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_254F28490();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_254EE4574()
{
  sub_254EB3BD8();
  v1 = *(v0 + 32);

  sub_254EB4924();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_254EE45D0()
{
  sub_254EB3BD8();
  *(v1 + 264) = v2;
  *(v1 + 104) = v3;
  *(v1 + 112) = v0;
  *(v1 + 88) = v4;
  *(v1 + 96) = v5;
  v6 = sub_254F28080();
  *(v1 + 120) = v6;
  sub_254EB2CAC(v6);
  *(v1 + 128) = v7;
  v9 = *(v8 + 64);
  *(v1 + 136) = sub_254EB3FC4();
  v10 = sub_254F29A20();
  *(v1 + 144) = v10;
  sub_254EB2CAC(v10);
  *(v1 + 152) = v11;
  v13 = *(v12 + 64);
  *(v1 + 160) = sub_254EB3FC4();
  v14 = sub_254F29140();
  *(v1 + 168) = v14;
  sub_254EB2CAC(v14);
  *(v1 + 176) = v15;
  v17 = *(v16 + 64);
  *(v1 + 184) = sub_254EB3C44();
  *(v1 + 192) = swift_task_alloc();
  v18 = sub_254F29170();
  *(v1 + 200) = v18;
  sub_254EB2CAC(v18);
  *(v1 + 208) = v19;
  v21 = *(v20 + 64);
  *(v1 + 216) = sub_254EB3C44();
  *(v1 + 224) = swift_task_alloc();
  v22 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

void sub_254EE4778()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = *(v0 + 192);
  sub_254F280C0();
  sub_254F280C0();
  sub_254F29160();
  sub_254F29120();
  v6 = *(v4 + 8);
  v7 = sub_254EB63E8();
  v73 = v8;
  v8(v7);
  v9 = sub_254F29160();
  sub_254F297A0();
  if (sub_254F29800())
  {
    v10 = *(v0 + 192);
    *swift_slowAlloc() = 0;
    v11 = sub_254F29130();
    sub_254EC38C0(&dword_254EAE000, v12, v13, v11, "ContextRetrieval.retrieveContextValuesWithFailures(contextTypes:timeout:)", "");
    sub_254EB3C04();
  }

  v14 = *(v0 + 224);
  v16 = *(v0 + 192);
  v15 = *(v0 + 200);
  v18 = *(v0 + 176);
  v17 = *(v0 + 184);
  v19 = *(v0 + 168);
  v20 = *(v0 + 112);
  v70 = *(v0 + 160);
  v72 = *(v0 + 96);

  v21 = sub_254EB6D84();
  v22(v21);
  v23 = sub_254F291B0();
  sub_254EB82B4(v23);
  *(v0 + 232) = sub_254EB5AE0();
  v25 = *(v18 + 8);
  v24 = v18 + 8;
  v26 = sub_254EC0D3C();
  v27(v26);
  v28 = sub_254EB3AEC();
  (v73)(v28);
  sub_254F29A00();
  v29 = *(v72 + 16);
  v30 = MEMORY[0x277D84F90];
  if (v29)
  {
    v31 = *(v0 + 128);
    sub_254EB3AC8(*(v0 + 96));
    do
    {
      (v16)(*(v0 + 136), v14, *(v0 + 120));
      if (qword_281427288 != -1)
      {
        sub_254EB6BD8();
        swift_once();
      }

      v32 = qword_281427CE0;
      if (*(qword_281427CE0 + 16))
      {
        v33 = *(v0 + 136);
        sub_254F059E0();
        v20 = *v15;
        if (v35)
        {
          v24 = v16;
          v36 = *(v0 + 136);
          v37 = *(v0 + 120);
          v38 = *(*(v32 + 56) + 8 * v34);

          v39 = sub_254EC0D3C();
          v20(v39);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = *(v30 + 16);
            sub_254EB4958();
            sub_254EF0730();
            v30 = v43;
          }

          v41 = *(v30 + 16);
          v40 = *(v30 + 24);
          v16 = (v41 + 1);
          if (v41 >= v40 >> 1)
          {
            sub_254EB5124(v40);
            sub_254EF0730();
            v30 = v44;
          }

          sub_254EEA0CC();
          goto LABEL_16;
        }
      }

      else
      {
        v20 = *v15;
      }

      (v20)(*(v0 + 136), *(v0 + 120));
LABEL_16:
      v14 += v24;
      --v29;
    }

    while (v29);
  }

  v45 = sub_254EE9D38(v30);
  v48 = sub_254EC1AC8(v45, v46, v47);
  if (v48)
  {
    sub_254EBED5C(v48);
    v49 = v73;
    v50 = v74;
    sub_254EE9D38(v30);
    if ((v73 & 0x8000000000000000) == 0)
    {
      sub_254EB3EA4();
      while (1)
      {
        v52 = __OFADD__(v20, 1);
        v20 = (v20 + 1);
        if (v52)
        {
          break;
        }

        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_45;
        }

        if (v14 >= *(v30 + 16))
        {
          goto LABEL_46;
        }

        if (v24)
        {
          goto LABEL_51;
        }

        v53 = v16[v14];
        if (v29 >= *(v53 + 16))
        {
          goto LABEL_47;
        }

        sub_254EB5C9C(v53 + v29 * v51 + 32, v0 + 16);
        sub_254EB99C0();
        if (v55)
        {
          v57 = sub_254EB5124(v54);
          sub_254ECA74C(v57, v24, 1);
          v49 = v73;
          v50 = v74;
        }

        sub_254EEA0E4();
        if (v55)
        {
          goto LABEL_48;
        }

        sub_254EB81A8();
        if (v56)
        {
          ++v14;
          while (1)
          {
            v24 = v14 == v15;
            if (v14 == v15)
            {
              v29 = 0;
              v14 = v15;
              goto LABEL_30;
            }

            sub_254EC8BC0(&qword_27F75F130, &unk_254F2BE60);
            sub_254EE9EDC();
            sub_254EB63E8();
            sub_254EB80C4();
            v71 = sub_254EF171C(v58, v59, v60);
            v62 = *v61;

            (v71)(v72, 0);
            v63 = *(v62 + 16);

            if (v63)
            {
              break;
            }

            v52 = __OFADD__(v14++, 1);
            v49 = v73;
            if (v52)
            {
              goto LABEL_50;
            }
          }

          v29 = 0;
          v49 = v73;
        }

        else
        {
          v24 = 0;
        }

LABEL_30:
        v51 = 40;
        if (v20 == v49)
        {

          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  else
  {

    v50 = MEMORY[0x277D84F90];
LABEL_41:
    *(v0 + 240) = v50;
    v64 = *(v0 + 264);
    swift_task_alloc();
    sub_254EB5718();
    *(v0 + 248) = v65;
    *v65 = v66;
    v65[1] = sub_254EE4C28;
    v67 = *(v0 + 104);
    v68 = *(v0 + 112);
    v69 = *(v0 + 88);

    sub_254EE5528(v69, v50, v67, v64 & 1, 1);
  }
}

uint64_t sub_254EE4C28()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v3 = v2;
  sub_254EB63D8();
  *v4 = v3;
  v6 = *(v5 + 248);
  v7 = *v1;
  sub_254EB2CE0();
  *v8 = v7;
  *(v3 + 256) = v0;

  if (!v0)
  {
    v9 = *(v3 + 240);
  }

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_254EE4D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_254EB4B18();
  sub_254EB5BE4();
  v13 = v12[28];
  v14 = v12[29];
  v15 = v12[27];
  v17 = v12[23];
  v16 = v12[24];
  v19 = v12[19];
  v18 = v12[20];
  v21 = v12[17];
  v20 = v12[18];
  v22 = v12[14];
  sub_254EB7D4C();
  sub_254EE4EE4(v23, v24, v25, v26, v27, v18);

  v28 = *(v19 + 8);
  v29 = sub_254EC1BEC();
  v30(v29);

  sub_254EB4924();
  sub_254EB3CE4();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_254EE4E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_254EB4B18();
  sub_254EB5BE4();
  v14 = v12[29];
  v13 = v12[30];
  v16 = v12[27];
  v15 = v12[28];
  v18 = v12[23];
  v17 = v12[24];
  v20 = v12[19];
  v19 = v12[20];
  v21 = v12[18];
  v40 = v12[17];
  v22 = v12[14];

  sub_254EB7D4C();
  sub_254EE4EE4(v23, v24, v25, v26, v22, v19);

  v27 = *(v20 + 8);
  v28 = sub_254EC1BEC();
  v29(v28);

  sub_254EB4924();
  v30 = v12[32];
  sub_254EB3CE4();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10, a11, a12);
}

uint64_t sub_254EE4EE4(const char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v51 = a5;
  v46 = a3;
  v52 = a1;
  v6 = sub_254F29A20();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_254F29180();
  v44 = *(v45 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v45);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_254F29140();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_254F29170();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F280C0();
  v21 = sub_254F29160();
  v22 = v51;
  sub_254F29190();
  v42 = sub_254F29790();
  result = sub_254F29800();
  if (result)
  {
    v40 = v12;
    v41 = v11;
    if ((v46 & 1) == 0)
    {
      if (v52)
      {
LABEL_9:

        v24 = v43;
        sub_254F291C0();

        v25 = v44;
        v26 = v45;
        if ((*(v44 + 88))(v24, v45) == *MEMORY[0x277D85B00])
        {
          v27 = "[Error] Interval already ended";
        }

        else
        {
          (*(v25 + 8))(v24, v26);
          v27 = "";
        }

        v28 = swift_slowAlloc();
        *v28 = 0;
        v29 = sub_254F29130();
        _os_signpost_emit_with_name_impl(&dword_254EAE000, v21, v42, v29, v52, v27, v28, 2u);
        MEMORY[0x259C2EB80](v28, -1, -1);
        v11 = v41;
        v12 = v40;
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v52 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v52 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v52 >> 16 <= 0x10)
      {
        v52 = &v53;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:

  (*(v12 + 8))(v15, v11);
  (*(v17 + 8))(v20, v16);
  sub_254EC8BC0(&qword_27F75EFA8, &qword_254F2BA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254F2B4D0;
  *(inited + 32) = 0x6449746E65696C63;
  *(inited + 40) = 0xE800000000000000;
  if (*(v22 + 32))
  {
    v31 = *(v22 + 24);
    v32 = *(v22 + 32);
  }

  type metadata accessor for Analytics();
  sub_254EB48D8(0, &qword_281426030, 0x277CCACA8);

  *(inited + 48) = sub_254EF3180();
  *(inited + 56) = 0x79636E6574616CLL;
  *(inited + 64) = 0xE700000000000000;
  v33 = v47;
  sub_254F29A00();
  sub_254F29A10();
  (*(v48 + 8))(v33, v49);
  v34 = sub_254F29C10();
  v36 = v34 * 1000.0 + v35 * 1.0e-15;
  v37 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v38 = v36;
  *(inited + 72) = [v37 initWithFloat_];
  strcpy((inited + 80), "retrievalType");
  *(inited + 94) = -4864;
  *(inited + 96) = sub_254EF3180();
  sub_254EB48D8(0, &qword_281426038, 0x277D82BB8);
  v39 = sub_254F293D0();
  static Analytics.sendEventForProduction(eventName:prefix:eventPayload:)(0xD000000000000010, 0x8000000254F2DDB0, 0, 0, v39);
}

uint64_t sub_254EE5528(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 73) = a5;
  *(v6 + 72) = a4;
  *(v6 + 32) = a3;
  *(v6 + 40) = v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  return MEMORY[0x2822009F8](sub_254EE5554, 0, 0);
}

uint64_t sub_254EE5554()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 73);
  v4 = *(v0 + 72);
  v5 = *(v0 + 24);
  v6 = sub_254EC8BC0(&qword_27F75F138, &qword_254F2BE78);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v2;
  *(v7 + 32) = v4 & 1;
  *(v7 + 33) = v3;
  *(v7 + 40) = v1;
  v8 = sub_254F284A0();
  v9 = *(MEMORY[0x277D859B8] + 4);
  swift_task_alloc();
  sub_254EB5718();
  *(v0 + 56) = v10;
  *v10 = v11;
  v10[1] = sub_254EE568C;
  v12 = *(v0 + 16);

  return MEMORY[0x282200740](v12, v6, v8, 0, 0, &unk_254F2BE88, v7, v6);
}

uint64_t sub_254EE568C()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v3 = v2;
  sub_254EB63D8();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_254EB2CE0();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_254EB3FB8();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    sub_254EB4924();

    return v13();
  }
}

uint64_t sub_254EE57A8()
{
  sub_254EB3BD8();
  v1 = *(v0 + 48);

  sub_254EB4924();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_254EE5804()
{
  sub_254EB3BD8();
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  *(v1 + 416) = v3;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  *(v1 + 32) = v6;
  v7 = sub_254EC8BC0(&qword_27F75F160, &qword_254F2BEE8);
  sub_254EB2D90(v7);
  v9 = *(v8 + 64);
  *(v1 + 72) = sub_254EB3FC4();
  v10 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  sub_254EB2D90(v10);
  v12 = *(v11 + 64);
  *(v1 + 80) = sub_254EB3FC4();
  v13 = sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0);
  sub_254EB2D90(v13);
  v15 = *(v14 + 64);
  *(v1 + 88) = sub_254EB3FC4();
  v16 = sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490);
  sub_254EB2D90(v16);
  v18 = *(v17 + 64);
  *(v1 + 96) = sub_254EB3C44();
  *(v1 + 104) = swift_task_alloc();
  v19 = sub_254F28260();
  *(v1 + 112) = v19;
  sub_254EB2CAC(v19);
  *(v1 + 120) = v20;
  v22 = *(v21 + 64);
  *(v1 + 128) = sub_254EB3C44();
  *(v1 + 136) = swift_task_alloc();
  v23 = sub_254EC8BC0(&qword_27F75EDB0, &qword_254F2AFA0);
  *(v1 + 144) = v23;
  sub_254EB2CAC(v23);
  *(v1 + 152) = v24;
  v26 = *(v25 + 64);
  *(v1 + 160) = sub_254EB3C44();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = swift_task_alloc();
  *(v1 + 200) = swift_task_alloc();
  *(v1 + 208) = swift_task_alloc();
  *(v1 + 216) = swift_task_alloc();
  *(v1 + 224) = swift_task_alloc();
  v27 = sub_254F291E0();
  *(v1 + 232) = v27;
  sub_254EB2CAC(v27);
  *(v1 + 240) = v28;
  v30 = *(v29 + 64);
  *(v1 + 248) = sub_254EB3FC4();
  v31 = sub_254F28080();
  *(v1 + 256) = v31;
  sub_254EB2CAC(v31);
  *(v1 + 264) = v32;
  v34 = *(v33 + 64);
  *(v1 + 272) = sub_254EB3C44();
  *(v1 + 280) = swift_task_alloc();
  v35 = sub_254F29140();
  *(v1 + 288) = v35;
  sub_254EB2CAC(v35);
  *(v1 + 296) = v36;
  v38 = *(v37 + 64);
  *(v1 + 304) = sub_254EB3C44();
  *(v1 + 312) = swift_task_alloc();
  v39 = sub_254F29170();
  *(v1 + 320) = v39;
  sub_254EB2CAC(v39);
  *(v1 + 328) = v40;
  v42 = *(v41 + 64);
  *(v1 + 336) = sub_254EB3C44();
  *(v1 + 344) = swift_task_alloc();
  v43 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v43, v44, v45);
}

uint64_t sub_254EE5B88()
{
  sub_254EB4B18();
  sub_254EB5BE4();
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[40];
  v4 = v0[41];
  v5 = v0[39];
  sub_254F280C0();
  sub_254F280C0();
  sub_254F29160();
  sub_254F29120();
  v6 = *(v4 + 8);
  v7 = sub_254EB63E8();
  v6(v7);
  v8 = sub_254F29160();
  sub_254F297A0();
  if (sub_254F29800())
  {
    v9 = v0[39];
    *swift_slowAlloc() = 0;
    v10 = sub_254F29130();
    sub_254EC38C0(&dword_254EAE000, v11, v12, v10, "ContextRetrieval.retrieveAndRankIntelligenceCommandContextValues(query:)", "");
    sub_254EB3C04();
  }

  v13 = v0[43];
  v15 = v0[39];
  v14 = v0[40];
  v17 = v0[37];
  v16 = v0[38];
  v18 = v0[36];

  v19 = sub_254EB6D84();
  v20(v19);
  v21 = sub_254F291B0();
  sub_254EB82B4(v21);
  v0[44] = sub_254EB5AE0();
  v22 = *(v17 + 8);
  v23 = sub_254EC0D3C();
  v24(v23);
  v25 = sub_254EB3AEC();
  v6(v25);
  if (qword_281427288 != -1)
  {
    sub_254EB6BD8();
    swift_once();
  }

  v26 = v0[35];
  v27 = v0[32];
  v28 = v0[33];
  (*(v28 + 104))(v26, *MEMORY[0x277D1EAD0], v27);
  v29 = sub_254EB63E8();
  v0[45] = sub_254F0B918(v29, v30);
  (*(v28 + 8))(v26, v27);
  v31 = swift_task_alloc();
  v0[46] = v31;
  *v31 = v0;
  v31[1] = sub_254EE5DB8;
  v32 = v0[8];
  sub_254EB3CE4();

  return sub_254EE42C4(v33, v34, v35);
}

uint64_t sub_254EE5DB8()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v3 = v2;
  sub_254EB63D8();
  *v4 = v3;
  v6 = *(v5 + 368);
  *v4 = *v1;
  v3[47] = v7;
  v3[48] = v0;

  if (!v0)
  {
    if (v3[45])
    {
      v8 = v3[45];
    }
  }

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_254EE5ED0()
{
  sub_254EB3BD8();
  v1 = type metadata accessor for IntelligenceCommandScorer();
  sub_254EB82B4(v1);
  v0[49] = sub_254ECDDF8();
  v2 = swift_task_alloc();
  v0[50] = v2;
  *v2 = v0;
  v2[1] = sub_254EE5F80;
  v3 = v0[47];
  v4 = v0[4];
  v5 = v0[5];

  return sub_254ECDF20();
}

uint64_t sub_254EE5F80()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB5BF0();
  *v2 = v1;
  v4 = *(v3 + 400);
  *v2 = *v0;
  *(v1 + 408) = v5;

  v6 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_254EE6068()
{
  v141 = v0;
  v1 = *(v0 + 408);
  if (!v1)
  {
    v1 = sub_254EC9CBC(*(*(v0 + 376) + 16), 0.0);
  }

  v2 = *(v0 + 48);
  if (*(v0 + 416))
  {
    v4 = 0.0;
  }

  else
  {
    v3 = *(v0 + 56);
    v4 = v3;
  }

  v5 = *(v0 + 248);
  sub_254F284C0();

  v6 = sub_254F291D0();
  v7 = sub_254F296F0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 240);
  v10 = *(v0 + 248);
  v11 = *(v0 + 232);
  if (v8)
  {
    v12 = *(v0 + 48);
    v137 = *(v0 + 248);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v140[0] = v14;
    *v13 = 136315138;
    v15 = MEMORY[0x259C2DCE0](v12, MEMORY[0x277D837D0]);
    v17 = sub_254EC2D74(v15, v16, v140);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_254EAE000, v6, v7, "Scoring apps in focus %s", v13, 0xCu);
    sub_254EB2BBC(v14);
    sub_254EB3C04();
    sub_254EB3C04();

    result = (*(v9 + 8))(v137, v11);
  }

  else
  {

    result = (*(v9 + 8))(v10, v11);
  }

  v19 = 0;
  v20 = *(v0 + 144);
  v21 = *(v0 + 120);
  v123 = *(v0 + 48);
  v133 = (v21 + 32);
  v23 = *(v0 + 376);
  v22 = *(v0 + 384);
  v128 = *(v23 + 16);
  v135 = v21;
  v138 = (v21 + 8);
  v116 = MEMORY[0x277D84F90];
  v131 = v20;
  while (v128 != v19)
  {
    if (v19 >= *(v23 + 16))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

    result = (*(v135 + 16))(*(v0 + 136), *(v0 + 376) + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v19, *(v0 + 112));
    v24 = *(v1 + 16);
    if (v19 == v24)
    {
      (*v138)(*(v0 + 136), *(v0 + 112));
      break;
    }

    if (v19 >= v24)
    {
      goto LABEL_45;
    }

    v26 = *(v0 + 216);
    v25 = *(v0 + 224);
    v27 = *(v1 + 4 * v19 + 32);
    v28 = *(v20 + 48);
    (*v133)(v26, *(v0 + 136), *(v0 + 112));
    *(v26 + v28) = v27;
    sub_254EEA034(v26, v25);
    v29 = *(v0 + 224);
    if (*(v123 + 16))
    {
      v30 = *(v0 + 208);
      v32 = *(v0 + 104);
      v31 = *(v0 + 112);
      sub_254ED7AC0(v29, v30, &qword_27F75EDB0, &qword_254F2AFA0);
      sub_254F28250();
      (*v138)(v30, v31);
      v33 = sub_254F281F0();
      v34 = sub_254EB2F2C(v32, 1, v33);
      v35 = *(v0 + 104);
      if (v34 == 1)
      {
        sub_254EB306C(*(v0 + 104), &unk_27F75EEB0, &unk_254F2B490);
LABEL_20:

        v36 = 0;
        v38 = 0xE000000000000000;
        goto LABEL_21;
      }

      v36 = sub_254F28150();
      v38 = v37;
      (*(*(v33 - 8) + 8))(v35, v33);
      if (!v38)
      {
        goto LABEL_20;
      }

LABEL_21:
      v39 = *(v0 + 224);
      v40 = *(v0 + 48);
      *(v0 + 16) = v36;
      *(v0 + 24) = v38;
      v41 = swift_task_alloc();
      *(v41 + 16) = v0 + 16;
      v42 = sub_254EBD590(sub_254EBD640, v41, v40);

      v20 = v131;
      v29 = *(v0 + 224);
      if (v4 <= *(v39 + *(v131 + 48)) && v42)
      {
        goto LABEL_24;
      }

LABEL_23:
      result = sub_254EB306C(v29, &qword_27F75EDB0, &qword_254F2AFA0);
      ++v19;
    }

    else
    {
      if (v4 > *(v29 + *(v20 + 48)))
      {
        goto LABEL_23;
      }

LABEL_24:
      sub_254EEA034(v29, *(v0 + 200));
      v43 = v116;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v140[0] = v116;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_254ECA7C4(0, *(v116 + 16) + 1, 1);
        v43 = v140[0];
      }

      v46 = *(v43 + 16);
      v45 = *(v43 + 24);
      if (v46 >= v45 >> 1)
      {
        v51 = sub_254EB5124(v45);
        sub_254ECA7C4(v51, v46 + 1, 1);
        v43 = v140[0];
      }

      ++v19;
      v47 = *(v0 + 200);
      *(v43 + 16) = v46 + 1;
      sub_254EB5168();
      v116 = v43;
      result = sub_254EEA034(v50, v43 + v48 + *(v49 + 72) * v46);
    }
  }

  v52 = *(v0 + 376);

  v140[0] = v116;

  sub_254EE8934(v140);
  if (v22)
  {
  }

  else
  {

    v53 = v140[0];
    v54 = *(v140[0] + 16);
    if (v54)
    {
      v140[0] = MEMORY[0x277D84F90];
      sub_254ECA76C(0, v54, 0);
      v129 = v140[0];
      sub_254EB5168();
      v56 = v53 + v55;
      v110 = *(v57 + 72);
      do
      {
        v124 = v56;
        v126 = v54;
        v58 = *(v0 + 184);
        v59 = *(v0 + 192);
        v60 = *(v0 + 176);
        v61 = *(v0 + 112);
        v62 = *(v0 + 88);
        v117 = *(v0 + 80);
        v120 = *(v0 + 72);
        sub_254ED7AC0(v56, v59, &qword_27F75EDB0, &qword_254F2AFA0);
        sub_254EB80C4();
        sub_254ED7AC0(v63, v64, v65, v66);
        sub_254F28200();
        v67 = *v138;
        (*v138)(v58, v61);
        sub_254EB80C4();
        sub_254ED7AC0(v68, v69, v70, v71);
        sub_254F28220();
        v67(v60, v61);
        v72 = *(v59 + *(v131 + 48));
        sub_254F28020();
        v73 = *(v0 + 272);
        v74 = *(v0 + 192);
        v76 = *(v0 + 160);
        v75 = *(v0 + 168);
        v77 = *(v0 + 112);
        v118 = *(v0 + 88);
        v121 = *(v0 + 128);
        v78 = *(v0 + 72);
        v112 = *(v0 + 96);
        v114 = *(v0 + 80);
        v79 = sub_254F28030();
        sub_254EB2F04(v78, 0, 1, v79);
        sub_254ED7AC0(v74, v75, &qword_27F75EDB0, &qword_254F2AFA0);
        sub_254F28240();
        v67(v75, v77);
        v80 = sub_254EB3AEC();
        sub_254ED7AC0(v80, v81, &qword_27F75EDB0, &qword_254F2AFA0);
        sub_254F28250();
        v67(v76, v77);
        sub_254F28210();
        sub_254EB306C(v74, &qword_27F75EDB0, &qword_254F2AFA0);
        v82 = v129;
        v140[0] = v129;
        v84 = *(v129 + 16);
        v83 = *(v129 + 24);
        if (v84 >= v83 >> 1)
        {
          v90 = sub_254EB5124(v83);
          sub_254ECA76C(v90, v84 + 1, 1);
          v82 = v140[0];
        }

        v85 = *(v0 + 128);
        v86 = *(v0 + 112);
        *(v82 + 16) = v84 + 1;
        sub_254EB5168();
        v129 = v87;
        (*(v89 + 32))(v87 + v88 + *(v89 + 72) * v84);
        v56 = v124 + v110;
        v54 = v126 - 1;
      }

      while (v126 != 1);
      v91 = *(v0 + 392);

      v92 = v129;
    }

    else
    {
      v93 = *(v0 + 392);

      v92 = MEMORY[0x277D84F90];
    }

    v95 = *(v0 + 344);
    v94 = *(v0 + 352);
    v96 = *(v0 + 336);
    v98 = *(v0 + 304);
    v97 = *(v0 + 312);
    v100 = *(v0 + 272);
    v99 = *(v0 + 280);
    v101 = *(v0 + 248);
    v106 = *(v0 + 224);
    v107 = *(v0 + 216);
    v108 = *(v0 + 208);
    v109 = *(v0 + 200);
    v111 = *(v0 + 192);
    v113 = *(v0 + 184);
    v115 = *(v0 + 176);
    v119 = *(v0 + 168);
    v122 = *(v0 + 160);
    v125 = *(v0 + 136);
    v127 = *(v0 + 128);
    v130 = *(v0 + 104);
    v132 = *(v0 + 96);
    v134 = *(v0 + 88);
    v136 = *(v0 + 80);
    v139 = *(v0 + 72);
    sub_254EB7D4C();
    sub_254EE6BA0(v102, v103, v104);

    v105 = *(v0 + 8);

    return v105(v92);
  }
}

uint64_t sub_254EE69DC()
{
  v1 = v0[44];
  v3 = v0[42];
  v2 = v0[43];
  v5 = v0[38];
  v4 = v0[39];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[31];
  v9 = v0[28];
  v13 = v0[27];
  v14 = v0[26];
  v15 = v0[25];
  v16 = v0[24];
  v17 = v0[23];
  v18 = v0[22];
  v19 = v0[21];
  v20 = v0[20];
  v21 = v0[17];
  v22 = v0[16];
  v23 = v0[13];
  v24 = v0[12];
  v26 = v0[11];
  v0[45];
  v25 = v0[10];
  v27 = v0[9];

  sub_254EE6BA0("ContextRetrieval.retrieveAndRankIntelligenceCommandContextValues(query:)", 72, 2);

  sub_254EB4924();
  v11 = v0[48];

  return v10();
}

uint64_t sub_254EE6BA0(const char *a1, uint64_t a2, int a3)
{
  v29 = a3;
  v30 = a1;
  v3 = sub_254F29180();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254F29140();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_254F29170();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F280C0();
  v17 = sub_254F29160();
  sub_254F29190();
  v26 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v8 + 8))(v11, v7);
    return (*(v13 + 8))(v16, v12);
  }

  v25 = v12;
  if ((v29 & 1) == 0)
  {
    if (v30)
    {
LABEL_9:

      sub_254F291C0();

      v20 = v27;
      v19 = v28;
      if ((*(v27 + 88))(v6, v28) == *MEMORY[0x277D85B00])
      {
        v21 = "[Error] Interval already ended";
      }

      else
      {
        (*(v20 + 8))(v6, v19);
        v21 = "";
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = sub_254F29130();
      _os_signpost_emit_with_name_impl(&dword_254EAE000, v17, v26, v23, v30, v21, v22, 2u);
      MEMORY[0x259C2EB80](v22, -1, -1);
      v12 = v25;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v30 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v30 & 0xFFFFF800) != 0xD800)
  {
    if (v30 >> 16 <= 0x10)
    {
      v30 = &v31;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_254EE6EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 392) = a4;
  *(v7 + 400) = a7;
  *(v7 + 545) = a6;
  *(v7 + 544) = a5;
  *(v7 + 376) = a2;
  *(v7 + 384) = a3;
  *(v7 + 368) = a1;
  v8 = *(*(type metadata accessor for ContextDefinition() - 8) + 64) + 15;
  *(v7 + 408) = swift_task_alloc();
  v9 = *(*(sub_254EC8BC0(&qword_27F75F140, &qword_254F2BE90) - 8) + 64) + 15;
  *(v7 + 416) = swift_task_alloc();
  v10 = sub_254F28080();
  *(v7 + 424) = v10;
  v11 = *(v10 - 8);
  *(v7 + 432) = v11;
  v12 = *(v11 + 64) + 15;
  *(v7 + 440) = swift_task_alloc();
  v13 = sub_254F291E0();
  *(v7 + 448) = v13;
  v14 = *(v13 - 8);
  *(v7 + 456) = v14;
  v15 = *(v14 + 64) + 15;
  *(v7 + 464) = swift_task_alloc();
  *(v7 + 472) = swift_task_alloc();
  v16 = sub_254EC8BC0(&qword_27F75F148, &unk_254F2BE98);
  *(v7 + 480) = v16;
  v17 = *(v16 - 8);
  *(v7 + 488) = v17;
  v18 = *(v17 + 64) + 15;
  *(v7 + 496) = swift_task_alloc();
  v19 = *(*(sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0) - 8) + 64) + 15;
  *(v7 + 504) = swift_task_alloc();
  *(v7 + 512) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254EE712C, 0, 0);
}

uint64_t sub_254EE712C()
{
  v1 = *(v0 + 384);
  v2 = *(v1 + 16);
  if (v2)
  {
    v29 = *(v0 + 545);
    v28 = **(v0 + 376);
    v3 = v1 + 32;
    v4 = sub_254F29600();
    do
    {
      v32 = v2;
      v6 = *(v0 + 504);
      v5 = *(v0 + 512);
      v30 = *(v0 + 544);
      v7 = *(v0 + 392);
      v8 = *(v0 + 400);
      sub_254EB2F04(v5, 1, 1, v4);
      v31 = v3;
      sub_254EB5C9C(v3, v0 + 64);
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      v10 = (v9 + 16);
      *(v9 + 24) = 0;
      sub_254EB26F4((v0 + 64), v9 + 32);
      *(v9 + 72) = v7;
      *(v9 + 80) = v30 & 1;
      *(v9 + 81) = v29;
      *(v9 + 88) = v8;
      sub_254ED7AC0(v5, v6, &qword_27F75EE08, &qword_254F2B1A0);
      LODWORD(v6) = sub_254EB2F2C(v6, 1, v4);

      if (v6 == 1)
      {
        sub_254EB306C(*(v0 + 504), &qword_27F75EE08, &qword_254F2B1A0);
      }

      else
      {
        sub_254F295F0();
        v11 = *(*(v4 - 8) + 8);
        v12 = sub_254EB63E8();
        v13(v12);
      }

      if (*v10)
      {
        v14 = *(v9 + 24);
        v15 = *v10;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v16 = sub_254F295C0();
        v18 = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      sub_254EC8BC0(&qword_27F75F138, &qword_254F2BE78);
      v19 = v18 | v16;
      if (v18 | v16)
      {
        v19 = v0 + 304;
        *(v0 + 304) = 0;
        *(v0 + 312) = 0;
        *(v0 + 320) = v16;
        *(v0 + 328) = v18;
      }

      v20 = *(v0 + 512);
      *(v0 + 336) = 1;
      *(v0 + 344) = v19;
      *(v0 + 352) = v28;
      swift_task_create();

      sub_254EB306C(v20, &qword_27F75EE08, &qword_254F2B1A0);
      v3 = v31 + 40;
      v2 = v32 - 1;
    }

    while (v32 != 1);
  }

  v21 = *(v0 + 496);
  v22 = **(v0 + 376);
  sub_254EC8BC0(&qword_27F75F138, &qword_254F2BE78);
  sub_254EC8BC0(&qword_27F75F090, "P<");
  sub_254F29650();
  v23 = MEMORY[0x277D84F90];
  *(v0 + 528) = MEMORY[0x277D84F90];
  *(v0 + 520) = v23;
  v24 = *(MEMORY[0x277D85828] + 4);
  swift_task_alloc();
  sub_254EB5718();
  *(v0 + 536) = v25;
  *v25 = v26;
  sub_254EB6808(v25);
  sub_254EB3FB8();

  return MEMORY[0x2822004E8]();
}

uint64_t sub_254EE747C()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v3 = v2;
  sub_254EB63D8();
  *v4 = v3;
  v6 = *(v5 + 536);
  v7 = *v1;
  sub_254EB2CE0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 528);
    v10 = *(v3 + 520);
  }

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_254EE7584()
{
  v108 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 528);
  if (v1)
  {
    v3 = *(v0 + 40);
    *(v0 + 144) = *(v0 + 24);
    *(v0 + 160) = v3;
    *(v0 + 176) = *(v0 + 56);
    v4 = *(v1 + 16);
    v5 = *(v2 + 16);
    if (__OFADD__(v5, v4))
    {
      __break(1u);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2 = *(v0 + 528);
      if (!isUniquelyReferenced_nonNull_native || v5 + v4 > *(v2 + 24) >> 1)
      {
        v7 = *(v0 + 528);
        sub_254EF0968();
        v2 = v8;
      }

      if (*(v1 + 16))
      {
        v9 = (*(v2 + 24) >> 1) - *(v2 + 16);
        v10 = *(sub_254F28260() - 8);
        if (v9 >= v4)
        {
          v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
          v12 = *(v10 + 72);
          swift_arrayInitWithCopy();

          if (v4)
          {
            v13 = *(v2 + 16);
            v14 = __OFADD__(v13, v4);
            v15 = v13 + v4;
            if (v14)
            {
              __break(1u);
              return MEMORY[0x2822004E8]();
            }

            *(v2 + 16) = v15;
          }

LABEL_14:
          sub_254ED7AC0(v0 + 144, v0 + 224, &qword_27F75F150, &qword_254F2BEC0);
          if (!*(v0 + 248))
          {
            sub_254EB306C(v0 + 144, &qword_27F75F150, &qword_254F2BEC0);
            sub_254EB306C(v0 + 224, &qword_27F75F150, &qword_254F2BEC0);
            v1 = *(v0 + 520);
LABEL_20:
            *(v0 + 528) = v2;
            *(v0 + 520) = v1;
            v35 = *(MEMORY[0x277D85828] + 4);
            swift_task_alloc();
            sub_254EB5718();
            *(v0 + 536) = v36;
            *v36 = v37;
            sub_254EB6808();
            sub_254EB3FB8();

            return MEMORY[0x2822004E8]();
          }

          v31 = *(v0 + 520);
          sub_254EB26F4((v0 + 224), v0 + 184);
          sub_254EB5C9C(v0 + 184, v0 + 264);
          v32 = swift_isUniquelyReferenced_nonNull_native();
          v1 = *(v0 + 520);
          if (v32)
          {
LABEL_16:
            v34 = *(v1 + 16);
            v33 = *(v1 + 24);
            if (v34 >= v33 >> 1)
            {
              sub_254EB5124(v33);
              sub_254EB4818();
              v1 = v98;
            }

            sub_254EB2BBC((v0 + 184));
            sub_254EB306C(v0 + 144, &qword_27F75F150, &qword_254F2BEC0);
            *(v1 + 16) = v34 + 1;
            sub_254EB26F4((v0 + 264), v1 + 40 * v34 + 32);
            goto LABEL_20;
          }

LABEL_50:
          v96 = *(v1 + 16);
          sub_254EB4958();
          sub_254EB4818();
          v1 = v97;
          goto LABEL_16;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (!v4)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_49;
  }

  v16 = *(v0 + 472);
  v17 = *(v0 + 400);
  (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));
  sub_254F284C0();

  v18 = sub_254F291D0();
  v19 = sub_254F296E0();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 528);
  v22 = *(v0 + 472);
  v24 = *(v0 + 448);
  v23 = *(v0 + 456);
  if (v20)
  {
    v25 = *(v0 + 400);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v105 = v27;
    *v26 = 134349314;
    *(v26 + 4) = *(v21 + 16);

    *(v26 + 12) = 2082;
    v106 = *(v25 + 16);
    v107 = *(v25 + 24);
    v28 = RequestID.debugDescription.getter();
    v30 = sub_254EC2D74(v28, v29, &v105);

    *(v26 + 14) = v30;
    _os_log_impl(&dword_254EAE000, v18, v19, "Retrieved %{public}ld values of context for %{public}s", v26, 0x16u);
    sub_254EB2BBC(v27);
    sub_254EB3C04();
    sub_254EB3C04();
  }

  else
  {
  }

  v38 = *(v23 + 8);
  v38(v22, v24);
  v39 = *(v0 + 520);
  if (*(v0 + 545) == 1)
  {
    v99 = v38;
    v40 = *(v39 + 16);
    if (v40)
    {
      v41 = *(v0 + 432);
      v42 = v39 + 32;
      v100 = (v41 + 32);
      v101 = (v41 + 16);
      v103 = MEMORY[0x277D84F90];
      do
      {
        v44 = *(v0 + 416);
        v43 = *(v0 + 424);
        v45 = *(v0 + 408);
        sub_254EB5C9C(v42, v0 + 104);
        v46 = *(v0 + 136);
        sub_254EB5A9C((v0 + 104), *(v0 + 128));
        v47 = *(v46 + 8);
        v48 = sub_254EC0D3C();
        v49(v48);
        (*v101)(v44, v45, v43);
        sub_254EB5C40(v45);
        sub_254EB2F04(v44, 0, 1, v43);
        sub_254EB2BBC((v0 + 104));
        if (sub_254EB2F2C(v44, 1, v43) == 1)
        {
          sub_254EB306C(*(v0 + 416), &qword_27F75F140, &qword_254F2BE90);
        }

        else
        {
          v50 = *v100;
          (*v100)(*(v0 + 440), *(v0 + 416), *(v0 + 424));
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v51 = v103;
          }

          else
          {
            v59 = *(v103 + 16);
            sub_254EB4958();
            sub_254EF08A0();
            v51 = v60;
          }

          v53 = *(v51 + 16);
          v52 = *(v51 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_254EB5124(v52);
            sub_254EF08A0();
            v51 = v61;
          }

          v54 = *(v0 + 440);
          v55 = *(v0 + 424);
          *(v51 + 16) = v53 + 1;
          sub_254EB5168();
          v103 = v56;
          v50(v56 + v57 + *(v58 + 72) * v53);
        }

        v42 += 40;
        --v40;
      }

      while (v40);
      v62 = *(v0 + 520);

      v63 = v103;
    }

    else
    {

      v63 = MEMORY[0x277D84F90];
    }

    if (*(v63 + 16))
    {
      v64 = *(v0 + 464);
      v65 = *(v0 + 400);
      v66 = v63;
      sub_254F284C0();

      v67 = sub_254F291D0();
      v68 = sub_254F296E0();

      v69 = os_log_type_enabled(v67, v68);
      v71 = *(v0 + 456);
      v70 = *(v0 + 464);
      v72 = *(v0 + 448);
      if (v69)
      {
        v102 = *(v0 + 448);
        v104 = *(v0 + 464);
        v73 = *(v0 + 424);
        v74 = *(v0 + 400);
        v75 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *v75 = 136315394;
        v76 = MEMORY[0x259C2DCE0](v66, v73);
        v78 = sub_254EC2D74(v76, v77, &v105);

        *(v75 + 4) = v78;
        *(v75 + 12) = 2082;
        v106 = *(v74 + 16);
        v107 = *(v74 + 24);
        v79 = RequestID.debugDescription.getter();
        v81 = sub_254EC2D74(v79, v80, &v105);

        *(v75 + 14) = v81;
        _os_log_impl(&dword_254EAE000, v67, v68, "Collection failed or was incomplete for the following ContextTypes: %s for %{public}s", v75, 0x16u);
        swift_arrayDestroy();
        sub_254EB3C04();
        sub_254EB3C04();

        v83 = v102;
        v82 = v104;
      }

      else
      {

        v82 = v70;
        v83 = v72;
      }

      v99(v82, v83);
    }
  }

  else
  {
  }

  v84 = *(v0 + 528);
  v85 = *(v0 + 504);
  v86 = *(v0 + 512);
  v87 = *(v0 + 496);
  v89 = *(v0 + 464);
  v88 = *(v0 + 472);
  v90 = *(v0 + 440);
  v92 = *(v0 + 408);
  v91 = *(v0 + 416);
  v93 = *(v0 + 368);
  sub_254F28480();

  sub_254EB4924();

  return v94();
}

uint64_t sub_254EE7D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_254EB4B18();
  sub_254EB5BE4();
  v13 = v12[63];
  v14 = v12[64];
  v15 = v12[59];
  v16 = v12[58];
  v17 = v12[55];
  v19 = v12[51];
  v18 = v12[52];
  (*(v12[61] + 8))(v12[62], v12[60]);
  v20 = v12[45];

  sub_254EB4924();
  sub_254EB3CE4();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_254EE7E60()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v3 = v2;
  sub_254EB63D8();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *v1;
  sub_254EB2CE0();
  *v8 = v7;
  *(v3 + 264) = v0;

  if (!v0)
  {
    v9 = *(v3 + 248);
  }

  sub_254EB3FB8();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_254EE7F60()
{
  v1 = v0[15];
  if (v1)
  {
    v2 = v0[33];
    v3 = v0[28];
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    v5 = sub_254EF7F20(sub_254EEA018, v4, v1);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = v0[17];
  *v6 = v5;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0;
  v7 = sub_254EB4A44();
  v8(v7);

  sub_254EB4924();

  return v9();
}

uint64_t sub_254EE8070()
{
  v52 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 273);

  v3 = *(v0 + 264);
  if (v2)
  {
    v4 = *(v0 + 136);
    v5 = *(v0 + 144);

    *v4 = MEMORY[0x277D84F90];
    sub_254EB5C9C(v5, (v4 + 1));
  }

  else
  {
    v6 = *(v0 + 184);
    v7 = *(v0 + 160);
    v8 = *(v0 + 144);
    sub_254F284C0();
    sub_254EB5C9C(v8, v0 + 56);
    v9 = v3;

    v10 = sub_254F291D0();
    v11 = sub_254F296E0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 232);
      v43 = *(v0 + 240);
      v44 = *(v0 + 264);
      v13 = *(v0 + 216);
      v15 = *(v0 + 192);
      v14 = *(v0 + 200);
      v47 = *(v0 + 176);
      v48 = *(v0 + 168);
      v49 = *(v0 + 184);
      v46 = *(v0 + 160);
      v16 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v16 = 136315650;
      v17 = *(v0 + 80);
      v18 = *(v0 + 88);
      sub_254EB5A9C((v0 + 56), v17);
      v45 = v11;
      (*(v18 + 8))(v17, v18);
      v12(v13, v15, v14);
      sub_254EB5C40(v15);
      sub_254F29480();
      sub_254EB2BBC((v0 + 56));
      v19 = sub_254EB63E8();
      v22 = sub_254EC2D74(v19, v20, v21);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v24 = *(v0 + 96);
      v23 = *(v0 + 104);
      v25 = *(v0 + 112);
      v26 = sub_254F29B60();
      v28 = sub_254EC2D74(v26, v27, v50);

      *(v16 + 14) = v28;
      *(v16 + 22) = 2082;
      v50[1] = *(v46 + 16);
      v51 = *(v46 + 24);
      v29 = RequestID.debugDescription.getter();
      v31 = sub_254EC2D74(v29, v30, v50);

      *(v16 + 24) = v31;
      _os_log_impl(&dword_254EAE000, v10, v45, "[%s] unable to retrieve context for due to %s for %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      sub_254EB3C04();
      sub_254EB3C04();

      (*(v47 + 8))(v49, v48);
    }

    else
    {
      v33 = *(v0 + 176);
      v32 = *(v0 + 184);
      v34 = *(v0 + 168);

      v35 = *(v33 + 8);
      v36 = sub_254EB63E8();
      v37(v36);
      sub_254EB2BBC((v0 + 56));
    }

    v38 = *(v0 + 136);
    *v38 = MEMORY[0x277D84F90];
    *(v38 + 8) = 0u;
    *(v38 + 24) = 0u;
    *(v38 + 40) = 0;
  }

  v39 = sub_254EB4A44();
  v40(v39);

  sub_254EB4924();

  return v41();
}

uint64_t sub_254EE83E8()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB5BF0();
  *v2 = v1;
  v4 = *(v3 + 40);
  v5 = *(v3 + 32);
  v6 = *v0;
  sub_254EB2CE0();
  *v7 = v6;
  *(v9 + 48) = v8;

  v10 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_254EE84E8()
{
  **(v0 + 16) = *(v0 + 48);
  sub_254EB4924();
  return v1();
}

uint64_t sub_254EE8518@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v18 = a1;
  v3 = (*(*(sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = sub_254F28080();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(sub_254EC8BC0(&qword_27F75F160, &qword_254F2BEE8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v17 - v10;
  v12 = (*(*(sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = (*(*(sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  sub_254F280E0();
  sub_254F280F0();
  v14 = sub_254F28030();
  sub_254EB2F04(v11, 1, 1, v14);
  (*(v5 + 16))(v8, v18, v4);
  sub_254F28100();
  sub_254F28210();
  v15 = sub_254F28260();
  return sub_254EB2F04(a2, 0, 1, v15);
}

uint64_t sub_254EE87A8()
{
  v1 = *(v0 + 4);

  v2 = OBJC_IVAR____TtC30IntelligenceFlowContextRuntime16ContextRetriever_clock;
  v3 = sub_254F29A40();
  sub_254EB2D80(v3);
  (*(v4 + 8))(&v0[v2]);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for ContextRetriever()
{
  result = qword_281426CC8;
  if (!qword_281426CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254EE8898()
{
  result = sub_254F29A40();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_254EE8934(uint64_t *a1)
{
  v2 = *(sub_254EC8BC0(&qword_27F75EDB0, &qword_254F2AFA0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_254EEA0A4(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_254EE89E8(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_254EE89E8(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_254F29AE0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_254EC8BC0(&qword_27F75EDB0, &qword_254F2AFA0);
        v6 = sub_254F295A0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_254EC8BC0(&qword_27F75EDB0, &qword_254F2AFA0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_254EE8D80(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_254EE8B30(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_254EE8B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = sub_254EC8BC0(&qword_27F75EDB0, &qword_254F2AFA0);
  v8 = *(*(v40 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v40);
  v39 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v30 - v16;
  v32 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v37 = -v19;
    v38 = v18;
    v21 = a1 - a3;
    v31 = v19;
    v22 = v18 + v19 * a3;
    while (2)
    {
      v35 = v20;
      v36 = a3;
      v33 = v22;
      v34 = v21;
      v23 = v21;
      v24 = v40;
      do
      {
        sub_254ED7AC0(v22, v17, &qword_27F75EDB0, &qword_254F2AFA0);
        sub_254ED7AC0(v20, v13, &qword_27F75EDB0, &qword_254F2AFA0);
        v25 = *(v24 + 48);
        v26 = *&v17[v25];
        v27 = *&v13[v25];
        sub_254EB306C(v13, &qword_27F75EDB0, &qword_254F2AFA0);
        result = sub_254EB306C(v17, &qword_27F75EDB0, &qword_254F2AFA0);
        if (v27 >= v26)
        {
          break;
        }

        if (!v38)
        {
          __break(1u);
          return result;
        }

        v28 = v39;
        sub_254EEA034(v22, v39);
        v24 = v40;
        swift_arrayInitWithTakeFrontToBack();
        result = sub_254EEA034(v28, v20);
        v20 += v37;
        v22 += v37;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v36 + 1;
      v20 = v35 + v31;
      v21 = v34 - 1;
      v22 = v33 + v31;
      if (v36 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_254EE8D80(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v120 = a1;
  v8 = sub_254EC8BC0(&qword_27F75EDB0, &qword_254F2AFA0);
  v128 = *(v8 - 8);
  v9 = *(v128 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v124 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v132 = &v116 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v134 = &v116 - v15;
  MEMORY[0x28223BE20](v14);
  v133 = &v116 - v16;
  v129 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_98:
    v135 = *v120;
    if (!v135)
    {
      goto LABEL_139;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_100:
      v109 = (v19 + 16);
      v110 = *(v19 + 16);
      while (v110 >= 2)
      {
        if (!*v129)
        {
          goto LABEL_136;
        }

        v111 = v5;
        v112 = v19;
        v5 = (v19 + 16 * v110);
        v113 = *v5;
        v114 = &v109[2 * v110];
        v19 = v114[1];
        sub_254EE9698(*v129 + *(v128 + 72) * *v5, *v129 + *(v128 + 72) * *v114, *v129 + *(v128 + 72) * v19, v135);
        if (v111)
        {
          break;
        }

        if (v19 < v113)
        {
          goto LABEL_124;
        }

        if (v110 - 2 >= *v109)
        {
          goto LABEL_125;
        }

        *v5 = v113;
        v5[1] = v19;
        v115 = *v109 - v110;
        if (*v109 < v110)
        {
          goto LABEL_126;
        }

        v110 = *v109 - 1;
        memmove(v114, v114 + 2, 16 * v115);
        *v109 = v110;
        v19 = v112;
        v5 = 0;
      }

LABEL_108:

      return;
    }

LABEL_133:
    v19 = sub_254EE9B38(v19);
    goto LABEL_100;
  }

  v118 = a4;
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v135 = v8;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v121 = v18;
    if (v18 + 1 < v17)
    {
      v119 = v5;
      v22 = *v129;
      v126 = v22;
      v127 = v17;
      v23 = *(v128 + 72);
      v130 = v18 + 1;
      v24 = v22 + v23 * v21;
      v25 = v133;
      sub_254ED7AC0(v24, v133, &qword_27F75EDB0, &qword_254F2AFA0);
      v26 = v22 + v23 * v20;
      v27 = v134;
      sub_254ED7AC0(v26, v134, &qword_27F75EDB0, &qword_254F2AFA0);
      v28 = *(v8 + 48);
      v29 = *(v25 + v28);
      v30 = *(v27 + v28);
      sub_254EB306C(v27, &qword_27F75EDB0, &qword_254F2AFA0);
      sub_254EB306C(v25, &qword_27F75EDB0, &qword_254F2AFA0);
      v31 = v127;
      v32 = v20 + 2;
      v131 = v23;
      v33 = v126 + v23 * (v20 + 2);
      while (1)
      {
        v34 = v32;
        if (++v130 >= v31)
        {
          break;
        }

        v35 = v133;
        sub_254ED7AC0(v33, v133, &qword_27F75EDB0, &qword_254F2AFA0);
        v36 = v134;
        sub_254ED7AC0(v24, v134, &qword_27F75EDB0, &qword_254F2AFA0);
        v37 = *(v135 + 48);
        v38 = *(v35 + v37);
        v39 = *(v36 + v37);
        sub_254EB306C(v36, &qword_27F75EDB0, &qword_254F2AFA0);
        sub_254EB306C(v35, &qword_27F75EDB0, &qword_254F2AFA0);
        v31 = v127;
        v33 += v131;
        v24 += v131;
        v32 = v34 + 1;
        if (v30 < v29 == v39 >= v38)
        {
          goto LABEL_9;
        }
      }

      v130 = v31;
LABEL_9:
      v5 = v119;
      if (v30 >= v29)
      {
        v21 = v130;
        v20 = v121;
        v8 = v135;
      }

      else
      {
        v21 = v130;
        v20 = v121;
        if (v130 < v121)
        {
          goto LABEL_130;
        }

        v8 = v135;
        if (v121 < v130)
        {
          v117 = v19;
          if (v31 >= v34)
          {
            v40 = v34;
          }

          else
          {
            v40 = v31;
          }

          v41 = v131 * (v40 - 1);
          v42 = v130;
          v43 = v131 * v40;
          v44 = v121 * v131;
          do
          {
            if (v20 != --v42)
            {
              v45 = *v129;
              if (!*v129)
              {
                goto LABEL_137;
              }

              sub_254EEA034(v45 + v44, v124);
              v46 = v44 < v41 || v45 + v44 >= v45 + v43;
              if (v46)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_254EEA034(v124, v45 + v41);
            }

            ++v20;
            v41 -= v131;
            v43 -= v131;
            v44 += v131;
          }

          while (v20 < v42);
          v5 = v119;
          v19 = v117;
          v8 = v135;
          v21 = v130;
          v20 = v121;
        }
      }
    }

    v47 = v129[1];
    if (v21 < v47)
    {
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_129;
      }

      if (v21 - v20 < v118)
      {
        break;
      }
    }

LABEL_46:
    if (v21 < v20)
    {
      goto LABEL_128;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v130 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v106 = *(v19 + 16);
      sub_254EF07EC();
      v19 = v107;
    }

    v63 = *(v19 + 16);
    v64 = v63 + 1;
    if (v63 >= *(v19 + 24) >> 1)
    {
      sub_254EF07EC();
      v19 = v108;
    }

    *(v19 + 16) = v64;
    v65 = v19 + 32;
    v66 = (v19 + 32 + 16 * v63);
    v67 = v130;
    *v66 = v121;
    v66[1] = v67;
    v131 = *v120;
    if (!v131)
    {
      goto LABEL_138;
    }

    if (v63)
    {
      while (1)
      {
        v68 = v64 - 1;
        v69 = (v65 + 16 * (v64 - 1));
        v70 = (v19 + 16 * v64);
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v71 = *(v19 + 32);
          v72 = *(v19 + 40);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_66:
          if (v74)
          {
            goto LABEL_115;
          }

          v86 = *v70;
          v85 = v70[1];
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_118;
          }

          v90 = v69[1];
          v91 = v90 - *v69;
          if (__OFSUB__(v90, *v69))
          {
            goto LABEL_121;
          }

          if (__OFADD__(v88, v91))
          {
            goto LABEL_123;
          }

          if (v88 + v91 >= v73)
          {
            if (v73 < v91)
            {
              v68 = v64 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        if (v64 < 2)
        {
          goto LABEL_117;
        }

        v93 = *v70;
        v92 = v70[1];
        v81 = __OFSUB__(v92, v93);
        v88 = v92 - v93;
        v89 = v81;
LABEL_81:
        if (v89)
        {
          goto LABEL_120;
        }

        v95 = *v69;
        v94 = v69[1];
        v81 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v81)
        {
          goto LABEL_122;
        }

        if (v96 < v88)
        {
          goto LABEL_95;
        }

LABEL_88:
        if (v68 - 1 >= v64)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
          __break(1u);
LABEL_118:
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
          __break(1u);
LABEL_126:
          __break(1u);
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
          goto LABEL_132;
        }

        if (!*v129)
        {
          goto LABEL_135;
        }

        v100 = (v65 + 16 * (v68 - 1));
        v101 = *v100;
        v102 = (v65 + 16 * v68);
        v103 = v102[1];
        sub_254EE9698(*v129 + *(v128 + 72) * *v100, *v129 + *(v128 + 72) * *v102, *v129 + *(v128 + 72) * v103, v131);
        if (v5)
        {
          goto LABEL_108;
        }

        if (v103 < v101)
        {
          goto LABEL_110;
        }

        v104 = v19;
        v19 = *(v19 + 16);
        if (v68 > v19)
        {
          goto LABEL_111;
        }

        *v100 = v101;
        v100[1] = v103;
        if (v68 >= v19)
        {
          goto LABEL_112;
        }

        v64 = v19 - 1;
        memmove((v65 + 16 * v68), v102 + 2, 16 * (v19 - 1 - v68));
        *(v104 + 16) = v19 - 1;
        v105 = v19 > 2;
        v19 = v104;
        v8 = v135;
        if (!v105)
        {
          goto LABEL_95;
        }
      }

      v75 = v65 + 16 * v64;
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_113;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_114;
      }

      v82 = v70[1];
      v83 = v82 - *v70;
      if (__OFSUB__(v82, *v70))
      {
        goto LABEL_116;
      }

      v81 = __OFADD__(v73, v83);
      v84 = v73 + v83;
      if (v81)
      {
        goto LABEL_119;
      }

      if (v84 >= v78)
      {
        v98 = *v69;
        v97 = v69[1];
        v81 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v81)
        {
          goto LABEL_127;
        }

        if (v73 < v99)
        {
          v68 = v64 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_66;
    }

LABEL_95:
    v18 = v130;
    v17 = v129[1];
    if (v130 >= v17)
    {
      goto LABEL_98;
    }
  }

  v48 = v20 + v118;
  if (__OFADD__(v20, v118))
  {
    goto LABEL_131;
  }

  if (v48 >= v47)
  {
    v48 = v129[1];
  }

  if (v48 < v20)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v21 == v48)
  {
    goto LABEL_46;
  }

  v117 = v19;
  v119 = v5;
  v49 = *(v128 + 72);
  v50 = *v129 + v49 * (v21 - 1);
  v51 = -v49;
  v52 = v20 - v21;
  v131 = *v129;
  v122 = v49;
  v123 = v48;
  v53 = v131 + v21 * v49;
LABEL_39:
  v130 = v21;
  v125 = v53;
  v126 = v52;
  v54 = v53;
  v127 = v50;
  v55 = v135;
  while (1)
  {
    v56 = v133;
    sub_254ED7AC0(v54, v133, &qword_27F75EDB0, &qword_254F2AFA0);
    v57 = v134;
    sub_254ED7AC0(v50, v134, &qword_27F75EDB0, &qword_254F2AFA0);
    v58 = *(v55 + 48);
    v59 = *(v56 + v58);
    v60 = *(v57 + v58);
    sub_254EB306C(v57, &qword_27F75EDB0, &qword_254F2AFA0);
    sub_254EB306C(v56, &qword_27F75EDB0, &qword_254F2AFA0);
    if (v60 >= v59)
    {
LABEL_44:
      v21 = v130 + 1;
      v50 = v127 + v122;
      v52 = v126 - 1;
      v53 = v125 + v122;
      if (v130 + 1 == v123)
      {
        v21 = v123;
        v5 = v119;
        v19 = v117;
        v8 = v135;
        v20 = v121;
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (!v131)
    {
      break;
    }

    v61 = v132;
    sub_254EEA034(v54, v132);
    v55 = v135;
    swift_arrayInitWithTakeFrontToBack();
    sub_254EEA034(v61, v50);
    v50 += v51;
    v54 += v51;
    v46 = __CFADD__(v52++, 1);
    if (v46)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

uint64_t sub_254EE9698(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = a3;
  v55 = sub_254EC8BC0(&qword_27F75EDB0, &qword_254F2AFA0);
  v7 = *(*(v55 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v55);
  v54 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v47 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_61;
  }

  v17 = v53 - a2;
  if (v53 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v19 = v15 / v14;
  v58 = a1;
  v57 = a4;
  v20 = v17 / v14;
  if (v15 / v14 >= v17 / v14)
  {
    sub_254ECA24C(a2, v17 / v14, a4);
    v28 = a4 + v20 * v14;
    v29 = -v14;
    v30 = v28;
    v31 = v53;
    v52 = v29;
    v50 = a1;
LABEL_37:
    v53 = a2 + v29;
    v32 = v31;
    v48 = v30;
    v51 = a2;
    while (1)
    {
      if (v28 <= a4)
      {
        v58 = a2;
        v56 = v30;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v49 = v30;
      v33 = a4;
      v34 = v32 + v52;
      v35 = v28 + v52;
      sub_254ED7AC0(v28 + v52, v12, &qword_27F75EDB0, &qword_254F2AFA0);
      v36 = v12;
      v37 = v54;
      sub_254ED7AC0(v53, v54, &qword_27F75EDB0, &qword_254F2AFA0);
      v38 = *(v55 + 48);
      v39 = *(v36 + v38);
      v40 = *(v37 + v38);
      v41 = v37;
      v12 = v36;
      sub_254EB306C(v41, &qword_27F75EDB0, &qword_254F2AFA0);
      sub_254EB306C(v36, &qword_27F75EDB0, &qword_254F2AFA0);
      if (v40 < v39)
      {
        v43 = v32 < v51 || v34 >= v51;
        v31 = v34;
        a4 = v33;
        if (v43)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v34;
          v29 = v52;
          v30 = v49;
          a1 = v50;
        }

        else
        {
          v30 = v49;
          v16 = v32 == v51;
          v29 = v52;
          v44 = v53;
          a2 = v53;
          a1 = v50;
          if (!v16)
          {
            v45 = v31;
            v46 = v49;
            swift_arrayInitWithTakeBackToFront();
            v31 = v45;
            a2 = v44;
            v30 = v46;
          }
        }

        goto LABEL_37;
      }

      v42 = v32 < v28 || v34 >= v28;
      a4 = v33;
      if (v42)
      {
        v32 = v34;
        swift_arrayInitWithTakeFrontToBack();
        v28 = v35;
        v30 = v35;
        a1 = v50;
        a2 = v51;
      }

      else
      {
        v30 = v35;
        v16 = v28 == v32;
        v32 = v34;
        v28 = v35;
        a1 = v50;
        a2 = v51;
        if (!v16)
        {
          v32 = v34;
          swift_arrayInitWithTakeBackToFront();
          v28 = v35;
          v30 = v35;
        }
      }
    }

    v58 = a2;
    v56 = v48;
  }

  else
  {
    sub_254ECA24C(a1, v15 / v14, a4);
    v52 = a4 + v19 * v14;
    v56 = v52;
    while (a4 < v52 && a2 < v53)
    {
      sub_254ED7AC0(a2, v12, &qword_27F75EDB0, &qword_254F2AFA0);
      v22 = v54;
      sub_254ED7AC0(a4, v54, &qword_27F75EDB0, &qword_254F2AFA0);
      v23 = *(v55 + 48);
      v24 = *&v12[v23];
      v25 = *(v22 + v23);
      sub_254EB306C(v22, &qword_27F75EDB0, &qword_254F2AFA0);
      sub_254EB306C(v12, &qword_27F75EDB0, &qword_254F2AFA0);
      if (v25 >= v24)
      {
        if (a1 < a4 || a1 >= a4 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v57 = a4 + v14;
        a4 += v14;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v14;
      }

      a1 += v14;
      v58 = a1;
    }
  }

LABEL_59:
  sub_254EE9B4C(&v58, &v57, &v56);
  return 1;
}

uint64_t sub_254EE9B4C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_254EC8BC0(&qword_27F75EDB0, &qword_254F2AFA0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_254EE9C38(char *result, int64_t a2, char a3, char *a4)
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
    sub_254EC8BC0(&qword_27F75F168, &qword_254F2BF00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_254EE9D38(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  result = v3;
  v5 = a1 + 32;
  while (v3 != v2)
  {
    if (*(*(v5 + 8 * v2) + 16))
    {
      return v2;
    }

    ++v2;
  }

  return result;
}

unint64_t sub_254EE9D7C(unint64_t result, uint64_t a2, char a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a4 != result)
  {
    v7 = result;
    if (a4 >= result)
    {
      if ((result & 0x8000000000000000) != 0)
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v8 = *(a7 + 16);
      if (v8 <= result)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (a3)
      {
LABEL_50:
        __break(1u);
        return result;
      }

      v12 = *(*(a7 + 8 * result + 32) + 16);
      result = v12 - a2;
      if (__OFSUB__(v12, a2))
      {
        goto LABEL_45;
      }

      v10 = 1;
      a2 = a5;
      a3 = a6;
      v11 = a4;
      a4 = v7;
    }

    else
    {
      if ((a4 & 0x8000000000000000) != 0)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v8 = *(a7 + 16);
      if (v8 <= a4)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (a6)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v9 = *(*(a7 + 8 * a4 + 32) + 16);
      result = a5 - v9;
      if (__OFSUB__(a5, v9))
      {
        goto LABEL_43;
      }

      v10 = -1;
      v11 = v7;
    }

    v13 = a4 + 1;
    if ((a4 + 1) >= v11)
    {
LABEL_27:
      if (a3)
      {
        return result;
      }

      if (v11 < 0)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (v11 >= v8)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v16 = __OFADD__(result, a2 * v10);
      result += a2 * v10;
      if (!v16)
      {
        return result;
      }

      __break(1u);
    }

    else
    {
      v14 = a7 + 8 * a4 + 40;
      while (v13 < v8)
      {
        v15 = *(*v14 + 16) * v10;
        v16 = __OFADD__(result, v15);
        result += v15;
        if (v16)
        {
          goto LABEL_34;
        }

        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_35;
        }

        ++v13;
        v14 += 8;
        if (v17 >= v11)
        {
          goto LABEL_27;
        }
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (a6)
  {
    if (a3)
    {
      return 0;
    }

    goto LABEL_36;
  }

  if (a3)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_39;
  }

  if (*(a7 + 16) <= a4)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  result = a5 - a2;
  if (__OFSUB__(a5, a2))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  return result;
}

unint64_t sub_254EE9EDC()
{
  result = qword_281426140;
  if (!qword_281426140)
  {
    sub_254EDEFE4(&qword_27F75F130, &unk_254F2BE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281426140);
  }

  return result;
}

uint64_t sub_254EE9F40(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 33);
  v10 = *(v2 + 40);
  swift_task_alloc();
  sub_254EB5718();
  *(v3 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_254ECDD98;

  return sub_254EE6EE4(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_254EEA034(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75EDB0, &qword_254F2AFA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_254EEA0E4()
{
  *(v4 + 16) = v5;
  result = sub_254EB26F4((v2 + 16), v4 + v3 * v0 + 32);
  v7 = *(v1 + 16);
  return result;
}

uint64_t sub_254EEA110()
{
  sub_254EB3BD8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254EEA1A8, v0, 0);
}

uint64_t sub_254EEA1A8()
{
  sub_254EB3BD8();
  v0[5] = *(v0[3] + 136);

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_254EEA250;
  v2 = v0[2];

  return sub_254EEA52C(v2);
}

uint64_t sub_254EEA250()
{
  sub_254EB3BD8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v4 = *v0;
  sub_254EB2CE0();
  *v5 = v4;
  *(v7 + 56) = v6;

  return MEMORY[0x2822009F8](sub_254EEA378, v3, 0);
}

uint64_t sub_254EEA378()
{
  sub_254EB3A3C();
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_254F29600();
  sub_254EB2F04(v2, 1, 1, v3);
  v4 = sub_254EEB4AC();
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v1;
  swift_retain_n();
  sub_254ECB91C(0, 0, v2, &unk_254F2C038, v5);

  sub_254EB4930();
  v7 = v0[7];

  return v6(v7);
}

uint64_t sub_254EEA45C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_254EEA484()
{
  v0 = sub_254EEA45C();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void *sub_254EEA4B4(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  v5 = MEMORY[0x277D84F90];
  v2[16] = sub_254F293D0();
  v2[17] = 0;
  v2[18] = v5;
  v2[19] = 0;
  v2[20] = v5;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v2[14] = a1;
  v2[15] = v6;
  return v2;
}

uint64_t sub_254EEA52C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_254EEA54C, v1, 0);
}

uint64_t sub_254EEA54C()
{
  sub_254EB3A3C();
  v1 = v0[2];
  v2 = *(v1 + 16);
  v0[4] = v2;
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      v0[5] = v3;
      v0[6] = v4;
      v5 = v1 + 16 * v3;
      v6 = *(v5 + 40);
      v0[7] = v6;
      if (v6)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_254EB6BEC();
        v4 = v10;
      }

      v7 = *(v4 + 16);
      if (v7 >= *(v4 + 24) >> 1)
      {
        sub_254EB7A38();
        v4 = v11;
      }

      v8 = v0[4];
      v9 = v0[5] + 1;
      *(v4 + 16) = v7 + 1;
      *(v4 + 8 * v7 + 32) = 0;
      if (v9 == v8)
      {
        goto LABEL_11;
      }

      v3 = v0[5] + 1;
      v1 = v0[2];
    }

    v14 = *(v5 + 32);

    v15 = swift_task_alloc();
    v0[8] = v15;
    *v15 = v0;
    sub_254EB2E14(v15);

    return sub_254EEA93C();
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
LABEL_11:
    sub_254EB4930();

    return v12(v4);
  }
}

uint64_t sub_254EEA6A0()
{
  sub_254EB3BD8();
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 24);
  v4 = *v0;
  sub_254EB2CE0();
  *v5 = v4;
  *(v7 + 72) = v6;

  return MEMORY[0x2822009F8](sub_254EEA7C8, v3, 0);
}

uint64_t sub_254EEA7C8()
{
  sub_254EB3A3C();
  v1 = v0[6];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = v0[6];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_254EB6BEC();
    v3 = v18;
  }

  v4 = *(v3 + 16);
  v5 = v4 + 1;
  if (v4 >= *(v3 + 24) >> 1)
  {
    sub_254EB7A38();
    v3 = v19;
  }

  v6 = v0[9];
  while (1)
  {
    v7 = v0[4];
    v8 = v0[5] + 1;
    *(v3 + 16) = v5;
    *(v3 + 8 * v4 + 32) = v6;
    if (v8 == v7)
    {
      break;
    }

    v9 = v0[5] + 1;
    v0[5] = v9;
    v0[6] = v3;
    v10 = v0[2] + 16 * v9;
    v11 = *(v10 + 40);
    v0[7] = v11;
    if (v11)
    {
      v16 = *(v10 + 32);

      v17 = swift_task_alloc();
      v0[8] = v17;
      *v17 = v0;
      sub_254EB2E14();

      return sub_254EEA93C();
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_254EB6BEC();
      v3 = v13;
    }

    v6 = 0;
    v4 = *(v3 + 16);
    v5 = v4 + 1;
    if (v4 >= *(v3 + 24) >> 1)
    {
      sub_254EB7A38();
      v3 = v12;
      v6 = 0;
    }
  }

  sub_254EB4930();

  return v14(v3);
}

uint64_t sub_254EEA93C()
{
  sub_254EB3BD8();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_254F291E0();
  v1[8] = v4;
  v5 = *(v4 - 8);
  v1[9] = v5;
  v6 = *(v5 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254EEA9FC, v0, 0);
}

uint64_t sub_254EEA9FC()
{
  v26 = v0;
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(v1 + 128);
  if (!*(v2 + 16))
  {
    goto LABEL_6;
  }

  v4 = v0[5];
  v3 = v0[6];

  v5 = sub_254F057E4(v4, v3);
  if ((v6 & 1) == 0)
  {

LABEL_6:
    v10 = v0[10];
    v11 = v0[6];
    sub_254F284E0();

    v12 = sub_254F291D0();
    v13 = sub_254F296F0();

    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[9];
    v15 = v0[10];
    v17 = v0[8];
    if (v14)
    {
      v19 = v0[5];
      v18 = v0[6];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_254EC2D74(v19, v18, &v25);
      _os_log_impl(&dword_254EAE000, v12, v13, "Embedding cache is missing requested string %s", v20, 0xCu);
      sub_254EB2BBC(v21);
      MEMORY[0x259C2EB80](v21, -1, -1);
      MEMORY[0x259C2EB80](v20, -1, -1);
    }

    (*(v16 + 8))(v15, v17);
    goto LABEL_9;
  }

  v7 = *(v2 + 56) + 16 * v5;
  v8 = *v7;
  v9 = *(v7 + 8);
  sub_254EB6EF0(*v7, v9);

  if (v9)
  {
    goto LABEL_10;
  }

  sub_254EE304C(v8, 0);
LABEL_9:
  v8 = 0;
LABEL_10:
  v22 = v0[10];

  sub_254EB4930();

  return v23(v8);
}

uint64_t sub_254EEABF8(char a1)
{
  v2 = v1;
  sub_254EB67F0();

  sub_254EEBC38((v1 + 144), v1);
  v5 = *(*(v1 + 144) + 16);
  if (v5 < v4)
  {
    __break(1u);

    v16 = *(v1 + 136);
    if (v16)
    {
      sub_254EB7F8C();
      v17 = *(v16 + 24) & 0x3FLL;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(v2[18] + 16);
    if (!v17 && v18 < 0x10)
    {

      __break(1u);
    }

    v19 = MEMORY[0x259C2C220](v18);
    result = sub_254EEB8E4(v19, v17);
    __break(1u);
  }

  else
  {
    sub_254EEB60C(v4, v5);
    v6 = *(v1 + 136);
    if (v6)
    {
      sub_254EB7F8C();
      v7 = *(v6 + 24) & 0x3FLL;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v2[18] + 16);
    if (v7 || v8 >= 0x10)
    {
      v9 = MEMORY[0x259C2C220](v8);
      sub_254EEB8E4(v9, v7);
    }

    else
    {

      v2[17] = 0;
    }

    swift_endAccess();
    v10 = v2[19];
    v11 = v2[20];
    sub_254EB67F0();

    sub_254EEAD98(v10, v11);
    swift_endAccess();

    v12 = MEMORY[0x277D84F90];
    v14 = v2[19];
    v13 = v2[20];
    v2[19] = 0;
    v2[20] = v12;

    if (a1)
    {
      return sub_254EEAEAC();
    }
  }

  return result;
}

void sub_254EEAD98(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 32;
LABEL_2:
  while (v3 != v4)
  {
    v6 = (v5 + 16 * v3);
    v8 = *v6;
    v7 = v6[1];
    ++v3;
    v9 = *v2;
    v10 = v2[1];
    v11 = *(v10 + 16);
    if (!*v2)
    {
      v17 = (v10 + 40);
      v18 = v11 + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        if (*(v17 - 1) != v8 || *v17 != v7)
        {
          v21 = sub_254F29B10();
          v17 = v19;
          if ((v21 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_2;
      }

      v16 = 0;
LABEL_15:
      sub_254EEB718(v8, v7, v16);
      goto LABEL_16;
    }

    v12 = v6[1];

    sub_254EEBB0C(v8, v7, v10 + 32, v11, (v9 + 16));
    v14 = v13;
    v16 = v15;

    if (v14)
    {
      goto LABEL_15;
    }

LABEL_16:
  }
}

uint64_t sub_254EEAEAC()
{
  v1 = v0;
  v2 = sub_254F291E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v8 = *(v1[18] + 16);
  v9 = *(v1[20] + 16);
  v10 = __OFADD__(v8, v9);
  v11 = v8 + v9;
  if (v10)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v12 = v1[14];
  v10 = __OFSUB__(v11, v12);
  v13 = v11 - v12;
  if (v10)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v13 >= 1 && v8 != 0)
  {
    if (v8 >= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = *(v1[18] + 16);
    }

    sub_254F284C0();
    v16 = sub_254F291D0();
    v17 = sub_254F296F0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v15;
      _os_log_impl(&dword_254EAE000, v16, v17, "Pruning unlocked cache: %ld", v18, 0xCu);
      MEMORY[0x259C2EB80](v18, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v19 = v1[18];
    v38 = sub_254EEB200(v15, v1[17], v19);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    result = sub_254EB67F0();
    if (*(v19 + 16) < v15)
    {
      goto LABEL_29;
    }

    sub_254EEBF04(0, v15);
    result = swift_endAccess();
    if (v23 != v25)
    {
      if (v25 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v23 >= v25)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v23 < 0)
      {
LABEL_32:
        __break(1u);
        return result;
      }

      v26 = (v21 + 16 * v23 + 40);
      while (*(v21 + 16) >= v25)
      {
        if (v23 >= v25)
        {
          goto LABEL_26;
        }

        v28 = *(v26 - 1);
        v27 = *v26;
        sub_254EB67F0();
        v29 = v1[16];

        v30 = sub_254F057E4(v28, v27);
        if (v31)
        {
          v32 = v30;
          v33 = v1[16];
          swift_isUniquelyReferenced_nonNull_native();
          v39 = v1[16];
          v34 = v39;
          v1[16] = 0x8000000000000000;
          v35 = *(v34 + 24);
          sub_254EC8BC0(&qword_27F75F170, &unk_254F2C040);
          sub_254F29A50();
          v36 = v39;
          v37 = *(*(v39 + 48) + 16 * v32 + 8);

          sub_254EE304C(*(*(v36 + 56) + 16 * v32), *(*(v36 + 56) + 16 * v32 + 8));
          sub_254F29A70();
          v1[16] = v36;
        }

        ++v23;
        swift_endAccess();

        v26 += 2;
        if (v25 == v23)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_23:
  }

  return result;
}

uint64_t sub_254EEB200(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16);
    return a2;
  }

  return result;
}

void *sub_254EEB22C()
{
  v1 = v0[16];

  v3 = v0[17];
  v2 = v0[18];

  v5 = v0[19];
  v4 = v0[20];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_254EEB27C()
{
  sub_254EEB22C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_254EEB2FC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_254EEB310(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254EEB350(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_254EEB3D0()
{
  sub_254EB3BD8();
  v1 = *(*(v0 + 16) + 136);
  *(v0 + 24) = v1;

  return MEMORY[0x2822009F8](sub_254EEB444, v1, 0);
}

uint64_t sub_254EEB444()
{
  sub_254EB3BD8();
  v1 = *(v0 + 24);
  sub_254EEABF8(1);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_254EEB4AC()
{
  result = qword_281426E18;
  if (!qword_281426E18)
  {
    type metadata accessor for ContextCache();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281426E18);
  }

  return result;
}

uint64_t sub_254EEB504()
{
  sub_254EB3A3C();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_254ED038C;

  return sub_254EEB3B0(v3, v4, v5, v6);
}

uint64_t sub_254EEB5B4()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v2 = *v0;
        v3 = sub_254F27AA0();

        *v0 = v3;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_254EEB60C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = result - a2;
  if (__OFSUB__(0, v7))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = v5 - v7;
  if (__OFADD__(v5, v8))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v9 <= *(v4 + 24) >> 1)
    {
      goto LABEL_15;
    }

    if (v5 <= v9)
    {
      v12 = v5 + v8;
    }

    else
    {
      v12 = v5;
    }
  }

  else if (v5 <= v9)
  {
    v12 = v5 + v8;
  }

  else
  {
    v12 = v5;
  }

  sub_254ECA804(isUniquelyReferenced_nonNull_native, v12, 1);
  v4 = *v2;
LABEL_15:
  v13 = (v4 + 32 + 16 * v6);
  result = swift_arrayDestroy();
  if (!v7)
  {
LABEL_19:
    *v2 = v4;
    return result;
  }

  v14 = *(v4 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_25;
  }

  result = sub_254ECA150((v4 + 32 + 16 * a2), v14 - a2, v13);
  v15 = *(v4 + 16);
  v16 = __OFADD__(v15, v8);
  v17 = v15 - v7;
  if (!v16)
  {
    *(v4 + 16) = v17;
    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_254EEB718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v10 = v3[1];
  v8 = v3 + 1;
  v9 = v10;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_254ECA804(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_254ECA804(v12 > 1, v13 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v13 + 1;
  v14 = v9 + 16 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v4[1] = v9;
  v15 = *v4;
  if (!*v4)
  {
    if (v13 <= 0xE)
    {
      return;
    }

    v16 = 0;
    goto LABEL_15;
  }

  swift_beginAccess();
  if (MEMORY[0x259C2C1F0](*(v15 + 16) & 0x3FLL) <= v13)
  {
    v16 = *(v15 + 24) & 0x3FLL;
    if (v13 <= 0xE && v16 == 0)
    {

      *v4 = 0;
      return;
    }

LABEL_15:
    v18 = MEMORY[0x259C2C220](v13 + 1);
    sub_254EEB8E4(v18, v16);
    return;
  }

  sub_254EEB5B4();
  if (*v4)
  {
    sub_254EEB87C((*v4 + 16), *v4 + 32, a3, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_254EEB87C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 + 8) + 16) + ~(a1[1] >> 6);
  v5 = (-1 << *a1) ^ ~(((v4 >> 63) & ~(-1 << *a1)) + v4);
  return sub_254F27A30();
}

uint64_t sub_254EEB8E4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = v2[1];
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v5 = sub_254EEB92C(v2[1], a2, 0, v3);
  v6 = *v2;

  *v2 = v5;
  return result;
}

uint64_t sub_254EEB92C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x259C2C220](v6);
  v9 = 0;
  if (v8 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v10 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 5)
  {
    v9 = MEMORY[0x259C2C230]();
    sub_254EEB9A4(a1, (v9 + 16));
  }

  return v9;
}

uint64_t sub_254EEB9E4(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v11 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = (v11 + 16 * v5);
        v7 = *v6;
        v8 = v6[1];
        v9 = *a3;
        sub_254F29BC0();

        sub_254F294C0();
        result = sub_254F29C00();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v10 = sub_254F27A10();

        if (v10)
        {
          while (1)
          {
            sub_254F27A70();
          }
        }

        result = sub_254F27A60();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_254EEBB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  sub_254F29BC0();
  sub_254F294C0();
  result = sub_254F29C00();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_254F27A40();
    v11 = v15;
    if ((v16 & 1) == 0)
    {
      do
      {
        v12 = (a3 + 16 * v11);
        if (*v12 == a1 && v12[1] == a2)
        {
          break;
        }

        if (sub_254F29B10())
        {
          break;
        }

        sub_254F27A70();
        v11 = sub_254F27A50();
      }

      while ((v14 & 1) == 0);
    }

    return v11;
  }

  return result;
}

void sub_254EEBC38(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *a1 + 32;

  for (i = 0; ; ++i)
  {
    if (i == v3)
    {
LABEL_40:

      v43 = *(v2 + 16);
LABEL_41:

      return;
    }

    v6 = (v4 + 16 * i);
    v8 = *v6;
    v7 = v6[1];
    v9 = *(a2 + 152);
    v10 = *(a2 + 160);
    v11 = *(v10 + 16);
    if (v9)
    {
      break;
    }

    v14 = (v10 + 40);
    v15 = v11 + 1;
    while (--v15)
    {
      if (*(v14 - 1) != v8 || *v14 != v7)
      {
        v14 += 2;
        if ((sub_254F29B10() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

LABEL_5:
    ;
  }

  sub_254EEBB0C(v8, v7, v10 + 32, v11, (v9 + 16));
  v13 = v12;

  if (v13)
  {
    goto LABEL_5;
  }

LABEL_13:

  v17 = i + 1;
  if (!__OFADD__(i, 1))
  {
    while (2)
    {
      v18 = *(v2 + 16);
      if (v17 == v18)
      {
        goto LABEL_41;
      }

      if (v17 >= v18)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        break;
      }

      v19 = (v2 + 32 + 16 * v17);
      v21 = *v19;
      v20 = v19[1];
      v22 = *(a2 + 152);
      v23 = *(a2 + 160);
      v24 = *(v23 + 16);
      if (v22)
      {
        v25 = v19[1];

        sub_254EEBB0C(v21, v20, v23 + 32, v24, (v22 + 16));
        v27 = v26;

        if (v27)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v40 = (v23 + 40);
        v41 = v24 + 1;
        while (--v41)
        {
          if (*(v40 - 1) != v21 || *v40 != v20)
          {
            v40 += 2;
            if ((sub_254F29B10() & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_37;
        }

LABEL_18:
        if (i != v17)
        {
          if ((i & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v28 = *(v2 + 16);
          if (i >= v28)
          {
            goto LABEL_45;
          }

          if (v17 >= v28)
          {
            goto LABEL_46;
          }

          v29 = (v2 + 32 + 16 * i);
          v30 = *v29;
          v31 = v29[1];
          v33 = *v19;
          v32 = v19[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_254EEA0B8(v2);
            v2 = v34;
          }

          if (i >= *(v2 + 16))
          {
            goto LABEL_47;
          }

          v35 = (v2 + 32 + 16 * i);
          v36 = v35[1];
          *v35 = v33;
          v35[1] = v32;

          if (v17 >= *(v2 + 16))
          {
            goto LABEL_48;
          }

          v37 = (v2 + 32 + 16 * v17);
          v38 = v37[1];
          *v37 = v30;
          v37[1] = v31;

          *a1 = v2;
        }

        v39 = __OFADD__(i++, 1);
        if (v39)
        {
          goto LABEL_43;
        }
      }

LABEL_37:
      v39 = __OFADD__(v17++, 1);
      if (v39)
      {
        __break(1u);
        goto LABEL_40;
      }

      continue;
    }
  }

  __break(1u);
}

uint64_t sub_254EEBF04(uint64_t result, uint64_t a2)
{
  v4 = result;
  v6 = v2 + 1;
  v5 = *v2;
  if (!*v2)
  {
    return sub_254EEB60C(v4, a2);
  }

  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v7 <= 0)
  {
    return result;
  }

  v8 = v2;
  v9 = *(*v6 + 16);
  v10 = v9 - v7;
  if ((v9 - v7) > (v9 >> 1))
  {
    swift_beginAccess();
    if ((*(v5 + 16) & 0x3FLL) == (*(v5 + 24) & 0x3FLL) || v10 >= MEMORY[0x259C2C200]())
    {
      result = sub_254EEB5B4();
      v15 = *v8;
      if (*v8)
      {
        v16 = *v8;

        sub_254EEC060(v15 + 16, v15 + 32, v8, v4, a2);

        return sub_254EEB60C(v4, a2);
      }

LABEL_18:
      __break(1u);
      return result;
    }
  }

  sub_254EEB60C(v4, a2);
  swift_beginAccess();
  v11 = *(v5 + 24) & 0x3FLL;
  v12 = *v6;
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = *(*v6 + 16) >= 0x10uLL;
  }

  if (v13)
  {
    v14 = MEMORY[0x259C2C220]();
    return sub_254EEB8E4(v14, v11);
  }

  else
  {

    *v8 = 0;
  }

  return result;
}

uint64_t sub_254EEC060(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = a5;
  v6 = a4;
  v8 = *(a3 + 8);
  v9 = *(v8 + 16);
  if (v9 < a4 || v9 < a5)
  {
    goto LABEL_18;
  }

  if (a5 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = result;
  if (a4 == a5)
  {
LABEL_14:

    sub_254EEC3CC(v6, v5, v8, v12);
  }

  if (a4 < a5)
  {

    v23 = v6;
    v13 = (v8 + 16 * v6 + 40);
    v14 = v6;
    v24 = v5;
    while (v14 < v5)
    {
      v15 = *(v13 - 1);
      v16 = *v13;
      v17 = *(a3 + 8);
      v18 = *(v17 + 16);

      sub_254EEBB0C(v15, v16, v17 + 32, v18, v12);
      v20 = v19;
      v22 = v21;

      if (v20)
      {
        goto LABEL_16;
      }

      ++v14;
      result = sub_254EEC1DC(v22, v12, a2, a3);
      v13 += 2;
      v5 = v24;
      if (v24 == v14)
      {

        v8 = *(a3 + 8);
        v6 = v23;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_254EEC1DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v26 = sub_254F27A10();
  sub_254F27A70();
  if (v26)
  {
    v7 = sub_254F27A20();
    v8 = a1;
    while (1)
    {
      result = sub_254F27A50();
      if (v10)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_26;
      }

      v12 = *a2;
      v13 = v11 + 16 * result;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      sub_254F29BC0();

      sub_254F294C0();
      v16 = sub_254F29C00();

      v17 = 1 << *a2;
      v18 = v17 - 1;
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_27;
      }

      v19 = v18 & v16;
      if (v8 >= v7)
      {
        if (v19 >= v7 && v8 >= v19)
        {
LABEL_18:
          v22 = sub_254F27A50();
          if ((v23 & 1) == 0)
          {
            v24 = ((v18 & ((v22 - (a2[1] >> 6)) >> 63)) + v22 - (a2[1] >> 6)) ^ v18;
          }

          v8 = a1;
          sub_254F27A30();
        }
      }

      else if (v19 >= v7 || v8 >= v19)
      {
        goto LABEL_18;
      }

      sub_254F27A70();
    }
  }

  return sub_254F27A30();
}

uint64_t sub_254EEC3CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_57;
  }

  if (v4 >= 1)
  {
    v7 = result;
    v8 = *(a3 + 16);
    if ((v8 - v4) / 2 <= result)
    {
      v16 = a2;
      v17 = __OFSUB__(v8, a2);
      v18 = v8 - a2;
      if (v17)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v18 >= MEMORY[0x259C2C1F0](*a4 & 0x3F) / 3)
      {
        sub_254F27A10();
        v33 = sub_254F27A50();
        if ((v34 & 1) == 0 && v33 >= v16)
        {
          v17 = __OFSUB__(v33, v4);
          result = v33 - v4;
          if (v17)
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          sub_254F27A60();
        }

        return sub_254F27A70();
      }

      result = sub_254EEC81C(v16, a3);
      v20 = v19;
      v22 = v21;
      v24 = v23 >> 1;
      while (v22 != v24)
      {
        if (v22 >= v24)
        {
          goto LABEL_51;
        }

        v25 = (v20 + 16 * v22);
        v26 = *v25;
        v27 = v25[1];
        v28 = *a4;
        sub_254F29BC0();

        sub_254F294C0();
        result = sub_254F29C00();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_52;
        }

        if (sub_254F27A10())
        {
          while (1)
          {
            v29 = sub_254F27A50();
            if ((v30 & 1) == 0 && v29 == v16)
            {
              break;
            }

            sub_254F27A70();
          }
        }

        result = v16 - v4;
        if (__OFSUB__(v16, v4))
        {
          goto LABEL_53;
        }

        sub_254F27A60();

        v17 = __OFADD__(v16++, 1);
        if (v17)
        {
          goto LABEL_54;
        }

        ++v22;
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      result = MEMORY[0x259C2C1F0](*a4 & 0x3F);
      if (result / 3 > v7)
      {
        if (v7 < 0)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (v8 < v7)
        {
LABEL_62:
          __break(1u);
          return result;
        }

        for (i = 0; ; ++i)
        {
          if (i == v7)
          {

            goto LABEL_40;
          }

          v10 = (a3 + 32 + 16 * i);
          v11 = *v10;
          v12 = v10[1];
          v13 = *a4;
          sub_254F29BC0();

          sub_254F294C0();
          result = sub_254F29C00();
          if (__OFSUB__(1 << *a4, 1))
          {
            break;
          }

          if (sub_254F27A10())
          {
            while (1)
            {
              v14 = sub_254F27A50();
              if ((v15 & 1) == 0 && v14 == i)
              {
                break;
              }

              sub_254F27A70();
            }
          }

          result = i + v4;
          if (__OFADD__(i, v4))
          {
            goto LABEL_50;
          }

          sub_254F27A60();
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      sub_254F27A10();
      v31 = sub_254F27A50();
      if ((v32 & 1) == 0 && v31 < v7)
      {
        v17 = __OFADD__(v31, v4);
        result = v31 + v4;
        if (v17)
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        sub_254F27A60();
      }

      result = sub_254F27A70();
LABEL_40:
      v35 = a4[1];
      if (__OFSUB__(v35 >> 6, v4))
      {
        goto LABEL_59;
      }

      v36 = 1 << *a4;
      v17 = __OFSUB__(v36, 1);
      v37 = v36 - 1;
      if (v17)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v38 = (v37 & (((v35 >> 6) - v4) >> 63)) + (v35 >> 6) - v4;
      if (v38 < v37)
      {
        v37 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v38 - v37) << 6);
    }
  }

  return result;
}

uint64_t sub_254EEC81C(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
  }

  __break(1u);
  return result;
}

uint64_t static IntelligenceFlowContextDaemon.start()()
{
  v0 = sub_254EC8BC0(&qword_27F75F178, &qword_254F2C050);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_254F291E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s30IntelligenceFlowContextRuntime0abC6DaemonV6logger2os6LoggerVvgZ_0();
  v9 = sub_254F291D0();
  v10 = sub_254F29710();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_254EAE000, v9, v10, "Starting intelligencecontextd", v11, 2u);
    MEMORY[0x259C2EB80](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  _s30IntelligenceFlowContextRuntime0abC6DaemonV6logger2os6LoggerVvgZ_0();
  sub_254EB2F04(v3, 0, 1, v4);
  sub_254F285D0();
  sub_254F285E0();
  type metadata accessor for ContextXPCServiceServer();
  sub_254EECB1C(&qword_281427080, type metadata accessor for ContextXPCServiceServer);
  sub_254F28520();
  type metadata accessor for UIContextXPCServiceServer();
  sub_254EECB1C(&qword_2814265E0, type metadata accessor for UIContextXPCServiceServer);
  sub_254F28520();
  sub_254F29110();
  return sub_254F28EF0();
}

uint64_t sub_254EECB1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for IntelligenceFlowContextDaemon(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowContextDaemon(_BYTE *result, int a2, int a3)
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

__n128 sub_254EECC88(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_254EECC9C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254EECCDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_254EECD38()
{
  v1 = sub_254F27B20();
  v2 = sub_254EB2CBC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_254EB3AB8();
  v9 = v8 - v7;
  v11 = *v0;
  v10 = v0[1];
  v12 = *(v0 + 16);
  sub_254F27B00();
  sub_254F27B10();
  (*(v4 + 8))(v9, v1);
  if (v12)
  {
    if (v12 != 1)
    {

      sub_254EB6AA0();
      sub_254F29940();

      v18 = 0xD000000000000012;
      MEMORY[0x259C2DC50](v11, v10);
      v15 = 10535;
      v16 = 0xE200000000000000;
      goto LABEL_7;
    }

    sub_254EB6AA0();
    sub_254F29940();

    sub_254EB4040();

    v13 = 0xD000000000000017;
    v14 = 0x8000000254F2E050;
  }

  else
  {
    sub_254EB6AA0();
    sub_254F29940();

    sub_254EB4040();

    v14 = 0x8000000254F2E070;
    v13 = 0xD000000000000011;
  }

  MEMORY[0x259C2DC50](v13, v14);
  MEMORY[0x259C2DC50](v11, v10);
  v15 = 2697511;
  v16 = 0xE300000000000000;
LABEL_7:
  MEMORY[0x259C2DC50](v15, v16);
  return v18;
}

uint64_t sub_254EECF14@<X0>(uint64_t *a1@<X8>)
{
  v116 = a1;
  v2 = sub_254F28080();
  v3 = sub_254EB2CBC(v2);
  v112 = v4;
  v113 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_254EB3AB8();
  v111 = v8 - v7;
  v9 = sub_254F292D0();
  v10 = sub_254EB2CBC(v9);
  v110 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_254EB3AB8();
  v16 = v15 - v14;
  v17 = sub_254F292F0();
  v18 = sub_254EB2CBC(v17);
  v115 = v19;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v18);
  v24 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v114 = &v105 - v25;
  v26 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v105 - v28;
  v30 = sub_254F29300();
  v31 = sub_254EB2CBC(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v31);
  v38 = (&v105 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v36);
  v40 = &v105 - v39;
  v109 = v1;
  sub_254F28220();
  if (sub_254EB2F2C(v29, 1, v30) == 1)
  {
    result = sub_254EED720(v29);
LABEL_32:
    v86 = v116;
    *v116 = 0;
    v86[1] = 0;
    v87 = -1;
    goto LABEL_33;
  }

  (*(v33 + 32))(v40, v29, v30);
  (*(v33 + 16))(v38, v40, v30);
  if ((*(v33 + 88))(v38, v30) != *MEMORY[0x277D72A58])
  {
    v72 = *(v33 + 8);
    v72(v40, v30);
    result = (v72)(v38, v30);
    goto LABEL_32;
  }

  v107 = v16;
  v108 = v9;
  (*(v33 + 96))(v38, v30);
  v42 = *v38;
  v43 = swift_projectBox();
  v44 = v115;
  v45 = *(v115 + 16);
  v46 = v17;
  v47 = v114;
  v45(v114, v43, v46);

  v45(v24, v47, v46);
  if ((*(v44 + 88))(v24, v46) != *MEMORY[0x277D729B0])
  {
    v73 = *(v44 + 8);
    v73(v47, v46);
    v74 = sub_254EB6C10();
    v75(v74);
    result = (v73)(v24, v46);
    goto LABEL_32;
  }

  (*(v44 + 96))(v24, v46);
  v48 = v110;
  (*(v110 + 32))(v107, v24, v108);
  v49 = sub_254F292C0();
  v50 = [v49 personHandle];
  v106 = v49;
  v51 = [v49 displayName];
  v52 = sub_254F29450();
  v54 = v53;

  v55 = v111;
  sub_254F28240();
  v56 = (*(v112 + 88))(v55, v113);
  v57 = v56 == *MEMORY[0x277D1EA78] || v56 == *MEMORY[0x277D1EB38];
  v58 = v46;
  if (v57)
  {

    v59 = v114;
    v60 = v115;
    if (v50)
    {
      if ([v50 type] == 1)
      {
        v61 = [v50 value];
        if (v61)
        {
          v62 = v61;
          v63 = sub_254F29450();
          v113 = v58;
          v64 = v59;
          v65 = v63;
          v66 = v48;
          v68 = v67;

          (*(v66 + 8))(v107, v108);
          (*(v60 + 8))(v64, v113);
          v69 = sub_254EB6C10();
          result = v70(v69);
          v71 = v116;
          *v116 = v65;
          v71[1] = v68;
          *(v71 + 16) = 0;
          return result;
        }
      }
    }

    v94 = sub_254EB3D20();
    v95(v94);
    (*(v60 + 8))(v59, v58);
    goto LABEL_31;
  }

  v76 = v56;
  if (v56 == *MEMORY[0x277D1EB28])
  {

    v77 = v115;
    if (v50)
    {
      if ([v50 type] == 2)
      {
        v78 = [v50 value];
        if (v78)
        {
          v79 = v78;
          v80 = sub_254F29450();
          v81 = v48;
          v83 = v82;

          (*(v81 + 8))(v107, v108);
          (*(v77 + 8))(v114, v58);
          v84 = sub_254EB6C10();
          result = v85(v84);
          v86 = v116;
          *v116 = v80;
          v86[1] = v83;
          v87 = 1;
          goto LABEL_33;
        }
      }
    }

    v101 = sub_254EB3D20();
    v102(v101);
    (*(v77 + 8))(v114, v46);
LABEL_31:
    v103 = sub_254EB6C10();
    result = v104(v103);
    goto LABEL_32;
  }

  v88 = *MEMORY[0x277D1EA80];

  if (v76 != v88)
  {

    v96 = sub_254EB3D20();
    v97(v96);
    (*(v115 + 8))(v114, v58);
    v98 = sub_254EB6C10();
    v99(v98);
    v100 = v116;
    *v116 = 0;
    v100[1] = 0;
    *(v100 + 16) = -1;
    return (*(v112 + 8))(v111, v113);
  }

  v89 = sub_254EB3D20();
  v90(v89);
  (*(v115 + 8))(v114, v58);
  v91 = sub_254EB6C10();
  result = v92(v91);
  v93 = HIBYTE(v54) & 0xF;
  if ((v54 & 0x2000000000000000) == 0)
  {
    v93 = v52 & 0xFFFFFFFFFFFFLL;
  }

  if (!v93)
  {

    goto LABEL_32;
  }

  v86 = v116;
  *v116 = v52;
  v86[1] = v54;
  v87 = 2;
LABEL_33:
  *(v86 + 16) = v87;
  return result;
}

uint64_t sub_254EED720(uint64_t a1)
{
  v2 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254EED788(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_254EED7A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254EED7E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_254EED828(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_254EED850(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_254F16D4C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 32 * v7 + 32), (a1 + 32), 32 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_254EED98C(unint64_t a1)
{
  v3 = sub_254EC5594(a1);
  v4 = sub_254EC5594(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_254F16DAC(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_254EF1594(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_254EEDAE8(uint64_t a1)
{
  result = sub_254EB8060(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  v5(result, 1);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  v11 = *(result - 8);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v7 = __OFADD__(v14, v1);
  v15 = v14 + v1;
  if (!v7)
  {
    *(v9 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t KGEntityGrounding.__allocating_init(knosisServer:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_254EEDC30()
{
  sub_254EC1A1C();
  v86 = v0;
  v87 = v1;
  v93 = v2;
  v3 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  sub_254EB2D90(v3);
  v5 = *(v4 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v6);
  sub_254EB4020();
  v85 = v7;
  sub_254EB7FC4();
  v8 = sub_254F28080();
  v9 = sub_254EB2CBC(v8);
  v91 = v10;
  v92 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_254EB2E04();
  v90 = v13 - v14;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v15);
  sub_254EB59E4();
  v89 = v16;
  sub_254EB7FC4();
  v88 = sub_254F29140();
  v17 = sub_254EB2CBC(v88);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_254EB2E04();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v83 - v26;
  v28 = sub_254F29170();
  v29 = sub_254EB2CBC(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  sub_254EB2E04();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  sub_254F280C0();
  sub_254F280C0();
  sub_254F29160();
  sub_254F29120();
  v38 = *(v31 + 8);
  v38(v36, v28);
  v39 = sub_254F29160();
  v40 = sub_254F297A0();
  if (sub_254F29800())
  {
    v41 = swift_slowAlloc();
    v84 = v24;
    v42 = v41;
    *v41 = 0;
    v43 = sub_254F29130();
    _os_signpost_emit_with_name_impl(&dword_254EAE000, v39, v40, v43, "KGEntityGrounding.performGrounding", "", v42, 2u);
    v44 = v42;
    v24 = v84;
    MEMORY[0x259C2EB80](v44, -1, -1);
  }

  v45 = v88;
  (*(v19 + 16))(v24, v27, v88);
  v46 = sub_254F291B0();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  sub_254F291A0();
  (*(v19 + 8))(v27, v45);
  v49 = sub_254EB82CC();
  (v38)(v49);
  sub_254F28240();
  v50 = v91;
  v51 = *(v91 + 32);
  v52 = sub_254EB82CC();
  v53(v52);
  v54 = *(v50 + 88);
  v55 = sub_254EB82CC();
  v57 = v56(v55);
  if (v57 != *MEMORY[0x277D1EA78] && v57 != *MEMORY[0x277D1EB38] && v57 != *MEMORY[0x277D1EB28] && v57 != *MEMORY[0x277D1EA80])
  {
    v78 = *(v50 + 8);
    v79 = sub_254EB82CC();
    v80(v79);
    v81 = 0;
LABEL_20:
    v67 = 2;
    goto LABEL_22;
  }

  sub_254EECF14(v96);
  v61 = v97;
  if (v97 == 255)
  {
    v67 = 2;
    v81 = 1;
    goto LABEL_22;
  }

  v62 = v96[1];
  sub_254EEE510();
  v64 = v63;
  v65 = sub_254EB81BC();
  sub_254EEFCEC(v65, v66, v61);
  v81 = v94;
  v67 = v95;
  if (!sub_254EEFD18(v64))
  {
    sub_254EF1328(v81, v67);

    v81 = 2;
    goto LABEL_20;
  }

  if ((v64 & 0xC000000000000001) != 0)
  {
    MEMORY[0x259C2E0D0](0, v64);
    goto LABEL_19;
  }

  if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v68 = *(v64 + 32);
LABEL_19:
    sub_254EC1AEC();

    v69 = sub_254F292F0();
    v70 = swift_allocBox();
    v72 = v71;
    v73 = v62;
    sub_254F292B0();
    (*(*(v69 - 8) + 104))(v72, *MEMORY[0x277D729B0], v69);
    v74 = v85;
    *v85 = v70;
    v75 = *MEMORY[0x277D72A58];
    v76 = sub_254F29300();
    sub_254EB2D80(v76);
    (*(v77 + 104))(v74, v75, v76);
    sub_254EB2F04(v74, 0, 1, v76);
    sub_254F28230();

LABEL_22:
    v82 = v87;
    *v87 = v81;
    *(v82 + 8) = v67;
    sub_254EEE1CC("KGEntityGrounding.performGrounding", 34, 2);

    sub_254EB4078();
    return;
  }

  __break(1u);
}

uint64_t sub_254EEE1CC(const char *a1, uint64_t a2, int a3)
{
  v29 = a3;
  v30 = a1;
  v3 = sub_254F29180();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254F29140();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_254F29170();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F280C0();
  v17 = sub_254F29160();
  sub_254F29190();
  v26 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v8 + 8))(v11, v7);
    return (*(v13 + 8))(v16, v12);
  }

  v25 = v12;
  if ((v29 & 1) == 0)
  {
    if (v30)
    {
LABEL_9:

      sub_254F291C0();

      v20 = v27;
      v19 = v28;
      if ((*(v27 + 88))(v6, v28) == *MEMORY[0x277D85B00])
      {
        v21 = "[Error] Interval already ended";
      }

      else
      {
        (*(v20 + 8))(v6, v19);
        v21 = "";
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = sub_254F29130();
      _os_signpost_emit_with_name_impl(&dword_254EAE000, v17, v26, v23, v30, v21, v22, 2u);
      MEMORY[0x259C2EB80](v22, -1, -1);
      v12 = v25;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v30 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v30 & 0xFFFFF800) != 0xD800)
  {
    if (v30 >> 16 <= 0x10)
    {
      v30 = &v31;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_254EEE510()
{
  sub_254EC1A1C();
  v1 = v0;
  v3 = v2;
  v154 = v4;
  v141 = sub_254F27B50();
  v5 = sub_254EB2CBC(v141);
  v146 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_254EB3AB8();
  v140 = v10 - v9;
  sub_254EB7FC4();
  v157 = sub_254F27BB0();
  v11 = sub_254EB2CBC(v157);
  v145 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_254EB2E04();
  v139 = v15 - v16;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v17);
  sub_254EB59E4();
  v142 = v18;
  v19 = sub_254EC8BC0(&qword_27F75F180, &qword_254F2C258);
  sub_254EB2D90(v19);
  v21 = *(v20 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v22);
  v24 = &v134 - v23;
  v147 = sub_254EC8BC0(&qword_27F75F188, &qword_254F2C260);
  v25 = sub_254EB2D80(v147);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_254EB2E04();
  v160 = (v28 - v29);
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v30);
  sub_254EB59E4();
  v161 = v31;
  v32 = sub_254EC8BC0(&qword_27F75F190, &qword_254F2C268);
  sub_254EB2CBC(v32);
  v163 = v33;
  v35 = *(v34 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v36);
  v38 = &v134 - v37;
  v39 = sub_254EC8BC0(&qword_27F75F198, &qword_254F2C270);
  v40 = sub_254EB2D90(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_254EB2E04();
  v45 = v43 - v44;
  MEMORY[0x28223BE20](v46);
  sub_254EB59E4();
  v166 = v47;
  v144 = sub_254EC8BC0(&qword_27F75F1A0, &qword_254F2C278);
  sub_254EB2CBC(v144);
  v162 = v48;
  v50 = *(v49 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v51);
  sub_254EB4020();
  v167 = v52;
  v149 = sub_254EC8BC0(&qword_27F75F1A8, &qword_254F2C280);
  v53 = sub_254EB2CBC(v149);
  v148 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  sub_254EB2E04();
  v165 = v57 - v58;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v59);
  sub_254EB59E4();
  v158 = v60;
  v156 = sub_254EC8BC0(&qword_27F75F1B0, &qword_254F2C288);
  sub_254EB2CBC(v156);
  v153 = v61;
  v63 = *(v62 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v64);
  sub_254EB4020();
  v155 = v65;
  sub_254EB7FC4();
  v66 = sub_254F27B70();
  v67 = sub_254EB2CBC(v66);
  v69 = v68;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v67);
  sub_254EB3AB8();
  v152 = sub_254F27AE0();
  v72 = sub_254EB2CBC(v152);
  v151 = v73;
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v72);
  sub_254EB3AB8();
  v78 = v77 - v76;
  v79 = *(v3 + 8);
  v80 = *(v3 + 16);
  v81 = *(v1 + 16);
  v138 = *v3;
  v168 = v138;
  v169 = v79;
  v137 = v79;
  v136 = v80;
  LOBYTE(v170) = v80;
  sub_254EECD38();
  sub_254F27B60();
  sub_254F27AF0();
  v82 = *(v69 + 8);
  v83 = sub_254EB81BC();
  v84(v83);
  v150 = v78;
  sub_254F27AD0();
  v173 = MEMORY[0x277D84F90];
  v85 = sub_254EBEDE8(&qword_27F75F1B8, &qword_27F75F1B0, &qword_254F2C288);
  v86 = sub_254EF1344();
  v87 = sub_254EBEDE8(&qword_27F75F1C8, &qword_27F75F1D0, &qword_254F2C290);
  v88 = v156;
  v164 = v85;
  v143 = v86;
  sub_254F27BE0();
  (*(v148 + 16))(v165, v158, v149);
  v89 = v157;
  v168 = v88;
  v169 = v157;
  v170 = v164;
  v171 = v143;
  v172 = v87;
  swift_getOpaqueTypeConformance2();
  sub_254F29530();
  v90 = v144;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v164 = (v163 + 32);
  v165 = AssociatedConformanceWitness;
  v163 += 8;
  v143 = (v145 + 32);
  v135 = (v146 + 8);
  v134 = (v145 + 8);
  v146 = MEMORY[0x277D84F90];
  v145 = MEMORY[0x277D84F90];
  v92 = v166;
  v159 = v45;
LABEL_2:
  v93 = v147;
  v94 = v162;
  while (1)
  {
    sub_254F29820();
    sub_254ED20D4(v45, v92, &qword_27F75F198, &qword_254F2C270);
    v95 = sub_254EC8BC0(&qword_27F75F1D8, &unk_254F2C298);
    if (sub_254EB2F2C(v92, 1, v95) == 1)
    {
      break;
    }

    v96 = *(v95 + 48);
    (*v164)(v38, v92, v32);
    v97 = v92 + v96;
    v98 = v38;
    v99 = v32;
    sub_254ED20D4(v97, v24, &qword_27F75F180, &qword_254F2C258);
    if (sub_254EB2F2C(v24, 1, v93) == 1)
    {
      v100 = sub_254EBED80();
      v101(v100, v32);
      sub_254EB306C(v24, &qword_27F75F180, &qword_254F2C258);
      v38 = v98;
      v92 = v166;
    }

    else
    {
      v102 = v90;
      v103 = v24;
      v104 = v161;
      sub_254ED20D4(v24, v161, &qword_27F75F188, &qword_254F2C260);
      v105 = v160;
      sub_254EF139C(v104, v160);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v109 = *v143;
        v110 = v139;
        (*v143)(v139, v105, v89);
        v109(v142, v110, v89);
        v168 = v138;
        v169 = v137;
        LOBYTE(v170) = v136;
        CustomGraphPerson.toINPerson(using:)();
        MEMORY[0x259C2DCB0]();
        if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_254F29580();
        }

        sub_254F295B0();
        v145 = v173;
        v111 = v140;
        sub_254F27BC0();
        v112 = sub_254F27B30();
        v114 = v113;
        v168 = sub_254F27B40();
        v144 = sub_254F29AF0();
        v116 = v115;
        v168 = v112;
        v169 = v114;

        MEMORY[0x259C2DC50](v144, v116);

        v117 = v169;
        v144 = v168;
        (*v135)(v111, v141);
        v90 = v102;
        v118 = v117;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = *(v146 + 16);
          sub_254EEFF7C();
          v146 = v127;
        }

        v119 = *(v146 + 16);
        v120 = v142;
        v32 = v99;
        if (v119 >= *(v146 + 24) >> 1)
        {
          sub_254EEFF7C();
          v146 = v128;
          v120 = v142;
        }

        v38 = v98;
        v121 = v157;
        (*v134)(v120, v157);
        sub_254EB306C(v161, &qword_27F75F188, &qword_254F2C260);
        v122 = sub_254EBED80();
        v123(v122, v32);
        v124 = v146;
        *(v146 + 16) = v119 + 1;
        v125 = v124 + 16 * v119;
        v89 = v121;
        *(v125 + 32) = v144;
        *(v125 + 40) = v118;
        v45 = v159;
        v24 = v103;
        v92 = v166;
        goto LABEL_2;
      }

      v106 = *v105;
      v168 = v106;
      sub_254EC8BC0(&qword_27F75F090, "P<");
      swift_willThrowTypedImpl();
      sub_254EB306C(v104, &qword_27F75F188, &qword_254F2C260);
      v107 = sub_254EBED80();
      v108(v107, v99);

      v90 = v102;
      v32 = v99;
      v38 = v98;
      v45 = v159;
      v94 = v162;
      v92 = v166;
    }
  }

  (*(v94 + 8))(v167, v90);
  (*(v148 + 8))(v158, v149);
  v129 = sub_254EEFD18(v145);
  (*(v153 + 8))(v155, v156);
  v130 = sub_254EC19FC();
  v131(v130);
  if (v129)
  {
    v132 = v154;
    *v154 = v146;
    *(v132 + 8) = 1;
  }

  else
  {

    v133 = v154;
    *v154 = 2;
    *(v133 + 8) = 2;
  }

  sub_254EB4078();
}

void CustomGraphPerson.toINPerson(using:)()
{
  sub_254EC1A1C();
  v1 = v0;
  v2 = sub_254EC8BC0(&qword_27F75F1E0, &qword_254F2C2A8);
  sub_254EB2D90(v2);
  v4 = *(v3 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v5);
  sub_254EB4020();
  v65 = v6;
  sub_254EB7FC4();
  v7 = sub_254F27BD0();
  v8 = sub_254EB2CBC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_254EB3AB8();
  v15 = v14 - v13;
  v16 = sub_254F27B50();
  v17 = sub_254EB2CBC(v16);
  v62 = v18;
  v63 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_254EB3AB8();
  v23 = v22 - v21;
  v24 = sub_254EC8BC0(&qword_27F75F190, &qword_254F2C268);
  sub_254EB2CBC(v24);
  v26 = v25;
  v28 = *(v27 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v29);
  v31 = v61 - v30;
  v32 = *v1;
  v33 = *(v1 + 8);
  LODWORD(v1) = *(v1 + 16);
  v66.value._countAndFlagsBits = v32;
  v66.value._object = v33;
  v68 = v32;
  v69 = v33;
  v70 = v1;
  CustomGraphPerson.getPrimaryINPersonHandle(using:)();
  v64 = v34;
  if (v1 > 1)
  {
  }

  else
  {
    v66 = CustomGraphPerson.getFullName()();
  }

  MEMORY[0x259C2C300]();
  sub_254F27BC0();
  (*(v26 + 8))(v31, v24);
  v35 = sub_254F27B30();
  v37 = v36;
  v68 = sub_254F27B40();
  v38 = sub_254F29AF0();
  v40 = v39;
  v68 = v35;
  v69 = v37;

  MEMORY[0x259C2DC50](v38, v40);

  v41 = v68;
  v42 = v69;
  (*(v62 + 8))(v23, v63);
  v43 = sub_254F27B80();
  v68 = MEMORY[0x277D84F90];
  v44 = *(v43 + 16);
  if (v44)
  {
    v62 = v42;
    v63 = v41;
    v47 = *(v10 + 16);
    v46 = v10 + 16;
    v45 = v47;
    v48 = *(v46 + 64);
    sub_254EB3A30();
    v61[1] = v49;
    v51 = v49 + v50;
    v52 = *(v46 + 56);
    do
    {
      v45(v15, v51, v7);
      v53 = sub_254EB5B00();
      v54 = sub_254EC00F0();
      v67 = v53;
      sub_254EED98C(v54);
      v55 = *(v46 - 8);
      v56 = sub_254EB81BC();
      v57(v56);
      sub_254EED98C(v67);
      v51 += v52;
      --v44;
    }

    while (v44);

    v58 = v68;
    v42 = v62;
    v41 = v63;
  }

  else
  {

    v58 = MEMORY[0x277D84F90];
  }

  v59 = sub_254F27840();
  v60 = v65;
  sub_254EB2F04(v65, 1, 1, v59);
  objc_allocWithZone(MEMORY[0x277CD3E90]);
  sub_254EEFB2C(v64, v60, v66.value._countAndFlagsBits, v66.value._object, 0, 0, 0, v41, v42, v58, 0);
  sub_254EB4078();
}

Swift::String __swiftcall EntityIdentifier.getmdID()()
{
  v0 = sub_254F27B30();
  v2 = v1;
  sub_254F27B40();
  v3 = sub_254F29AF0();
  v5 = v4;

  MEMORY[0x259C2DC50](v3, v5);

  v6 = v0;
  v7 = v2;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t KGEntityGrounding.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void CustomGraphPerson.getPrimaryINPersonHandle(using:)()
{
  sub_254EC1A1C();
  v1 = v0;
  v2 = sub_254F27BD0();
  v3 = sub_254EB2CBC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_254EB3AB8();
  v10 = v9 - v8;
  v11 = *v1;
  v12 = *(v1 + 8);
  if (!*(v1 + 16))
  {
    v17 = objc_allocWithZone(MEMORY[0x277CD3E98]);
    sub_254EC1AEC();

    v14 = v11;
    v15 = v12;
    v16 = 1;
    goto LABEL_5;
  }

  if (*(v1 + 16) == 1)
  {
    v13 = objc_allocWithZone(MEMORY[0x277CD3E98]);
    sub_254EC1AEC();

    v14 = v11;
    v15 = v12;
    v16 = 2;
LABEL_5:
    sub_254EEFAC0(v14, v15, v16);
LABEL_16:
    sub_254EB4078();
    return;
  }

  v18 = objc_allocWithZone(MEMORY[0x277CD3E98]);
  v19 = sub_254EEFAC0(0, 0, 0);
  v20 = sub_254F27B80();
  v38 = MEMORY[0x277D84F90];
  v21 = *(v20 + 16);
  if (v21)
  {
    v37 = v19;
    v24 = *(v5 + 16);
    v22 = v5 + 16;
    v23 = v24;
    v25 = *(v22 + 64);
    sub_254EB3A30();
    v28 = v26 + v27;
    v29 = *(v22 + 56);
    do
    {
      v23(v10, v28, v2);
      v30 = sub_254EB5B00();
      v31 = sub_254EC00F0();
      sub_254EED98C(v31);
      v32 = *(v22 - 8);
      v33 = sub_254EB81BC();
      v34(v33);
      sub_254EED98C(v30);
      v28 += v29;
      --v21;
    }

    while (v21);

    v35 = v38;
    v19 = v37;
  }

  else
  {

    v35 = MEMORY[0x277D84F90];
  }

  if (!sub_254EEFD18(v35))
  {

    goto LABEL_16;
  }

  if ((v35 & 0xC000000000000001) != 0)
  {
    MEMORY[0x259C2E0D0](0, v35);
    swift_unknownObjectRelease();
    MEMORY[0x259C2E0D0](0, v35);
    sub_254EC1AEC();

    goto LABEL_16;
  }

  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(v35 + 32);
    sub_254EC1AEC();

    goto LABEL_16;
  }

  __break(1u);
}