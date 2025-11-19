unint64_t sub_22B993EC8()
{
  v1 = v0 + *(type metadata accessor for MessageUpdateRecord() + 56);
  v2 = *(v1 + 8);
  if (v2 >> 60 == 15)
  {
    goto LABEL_9;
  }

  v3 = *v1;
  sub_22B936A50(*v1, *(v1 + 8));
  v4 = sub_22BA0FC8C();
  v5 = [v4 _FTOptionallyDecompressData];

  if (v5)
  {
    v6 = sub_22BA0FCAC();
    v8 = v7;

    v9 = sub_22BA0FC8C();
    sub_22B9359BC(v6, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(MEMORY[0x277D1AC28]) initWithData_];

  sub_22B9359A8(v3, v2);
  if (!v10)
  {
LABEL_9:
    v18 = MEMORY[0x277D84F90];

    return sub_22B9BBA8C(v18);
  }

  else
  {
    if ([v10 hasMsgid])
    {
      v11 = [v10 msgid];
      v12 = MEMORY[0x277D84F98];
      if (v11)
      {
        v13 = v11;
        v14 = sub_22BA0FFFC();
        v16 = v15;

        v28 = MEMORY[0x277D837D0];
        *&v27 = v14;
        *(&v27 + 1) = v16;
        sub_22B936C98(&v27, v26);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_22B9BAE64(v26, 4475213, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F98];
    }

    if ([v10 hasSr] && (v20 = objc_msgSend(v10, sel_sr)) != 0)
    {
      v21 = v20;
      v22 = sub_22BA0FFFC();
      v24 = v23;

      v28 = MEMORY[0x277D837D0];
      *&v27 = v22;
      *(&v27 + 1) = v24;
      sub_22B936C98(&v27, v26);
      v25 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64(v26, 21075, 0xE200000000000000, v25);
    }

    else
    {
    }

    return v12;
  }
}

unint64_t sub_22B994130()
{
  v1 = v0 + *(type metadata accessor for MessageUpdateRecord() + 56);
  v2 = *(v1 + 8);
  if (v2 >> 60 == 15)
  {
    goto LABEL_9;
  }

  v3 = *v1;
  sub_22B936A50(*v1, *(v1 + 8));
  v4 = sub_22BA0FC8C();
  v5 = [v4 _FTOptionallyDecompressData];

  if (v5)
  {
    v6 = sub_22BA0FCAC();
    v8 = v7;

    v9 = sub_22BA0FC8C();
    sub_22B9359BC(v6, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(MEMORY[0x277D1AC30]) initWithData_];

  sub_22B9359A8(v3, v2);
  if (!v10)
  {
LABEL_9:
    v18 = MEMORY[0x277D84F90];

    return sub_22B9BBA8C(v18);
  }

  else
  {
    if ([v10 hasMsgid])
    {
      v11 = [v10 msgid];
      v12 = MEMORY[0x277D84F98];
      if (v11)
      {
        v13 = v11;
        v14 = sub_22BA0FFFC();
        v16 = v15;

        v28 = MEMORY[0x277D837D0];
        *&v27 = v14;
        *(&v27 + 1) = v16;
        sub_22B936C98(&v27, v26);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_22B9BAE64(v26, 4475213, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F98];
    }

    if ([v10 hasChatid] && (v20 = objc_msgSend(v10, sel_chatid)) != 0)
    {
      v21 = v20;
      v22 = sub_22BA0FFFC();
      v24 = v23;

      v28 = MEMORY[0x277D837D0];
      *&v27 = v22;
      *(&v27 + 1) = v24;
      sub_22B936C98(&v27, v26);
      v25 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64(v26, 0x444954414843, 0xE600000000000000, v25);
    }

    else
    {
    }

    return v12;
  }
}

uint64_t sub_22B9943C0()
{
  v53 = v0;
  v1 = v0[16];
  v2 = (v1 + *(type metadata accessor for MessageUpdateRecord() + 52));
  v3 = *v2;
  v0[17] = *v2;
  v4 = v2[1];
  v0[18] = v4;
  if (v4)
  {

    v5 = sub_22BA10AAC();

    if (v5 == 2)
    {
      v26 = v0[16];
      v27 = sub_22B994130();
      v28 = qword_28141ADC8;
      v0[33] = v27;
      v0[34] = v28;
      if (v28)
      {
        v29 = qword_28141ADD0;
        v0[35] = qword_28141ADD0;
        v0[36] = *(v29 + 272);
        v0[37] = (v29 + 272) & 0xFFFFFFFFFFFFLL | 0x2043000000000000;
        if (qword_281416450 != -1)
        {
          swift_once();
        }

        v0[38] = qword_281416458;
        sub_22BA102EC();
        v10 = sub_22BA1029C();
        v12 = v30;
        v13 = sub_22B99565C;
        goto LABEL_24;
      }
    }

    else if (v5 == 1)
    {
      v21 = v0[16];
      v22 = sub_22B993EC8();
      v23 = qword_28141ADC8;
      v0[26] = v22;
      v0[27] = v23;
      if (v23)
      {
        v24 = qword_28141ADD0;
        v0[28] = qword_28141ADD0;
        v0[29] = *(v24 + 264);
        v0[30] = (v24 + 264) & 0xFFFFFFFFFFFFLL | 0x6AD6000000000000;
        if (qword_281416450 != -1)
        {
          swift_once();
        }

        v0[31] = qword_281416458;
        sub_22BA102EC();
        v10 = sub_22BA1029C();
        v12 = v25;
        v13 = sub_22B99506C;
        goto LABEL_24;
      }
    }

    else
    {
      if (v5)
      {
        if (qword_281414D18 != -1)
        {
          swift_once();
        }

        v41 = sub_22BA0FEFC();
        sub_22B936CA8(v41, qword_28141AD10);

        v42 = sub_22BA0FEDC();
        v43 = sub_22BA1046C();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v52[0] = v45;
          *v44 = 136315138;
          v46 = sub_22B99153C(v3, v4, v52);

          *(v44 + 4) = v46;
          _os_log_impl(&dword_22B92A000, v42, v43, "Unrecognized update type, %s. Ignoring", v44, 0xCu);
          sub_22B936C4C(v45);
          MEMORY[0x23189ADD0](v45, -1, -1);
          MEMORY[0x23189ADD0](v44, -1, -1);
        }

        else
        {
        }

        v49 = 0;
        v47 = 0;
        v48 = 23;
        goto LABEL_39;
      }

      v6 = v0[16];
      v7 = sub_22B993BCC();
      v8 = qword_28141ADC8;
      v0[19] = v7;
      v0[20] = v8;
      if (v8)
      {
        v9 = qword_28141ADD0;
        v0[21] = qword_28141ADD0;
        v0[22] = *(v9 + 256);
        v0[23] = (v9 + 256) & 0xFFFFFFFFFFFFLL | 0xE5D2000000000000;
        if (qword_281416450 != -1)
        {
          swift_once();
        }

        v0[24] = qword_281416458;
        sub_22BA102EC();
        v10 = sub_22BA1029C();
        v12 = v11;
        v13 = sub_22B994A7C;
LABEL_24:

        return MEMORY[0x2822009F8](v13, v10, v12);
      }
    }

    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v31 = v0[18];
    v32 = sub_22BA0FEFC();
    sub_22B936CA8(v32, qword_28141AD10);

    v33 = sub_22BA0FEDC();
    v34 = sub_22BA1044C();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v0[18];
    if (v35)
    {
      v37 = v0[17];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v52[0] = v39;
      *v38 = 136315138;
      v40 = sub_22B99153C(v37, v36, v52);

      *(v38 + 4) = v40;
      _os_log_impl(&dword_22B92A000, v33, v34, "Unable to apply message update %s, couldn't generate record from the data", v38, 0xCu);
      sub_22B936C4C(v39);
      MEMORY[0x23189ADD0](v39, -1, -1);
      MEMORY[0x23189ADD0](v38, -1, -1);
    }

    else
    {
    }

    v47 = 1;
    v48 = 25;
    v49 = 2;
LABEL_39:
    v50 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D19D10] code:v49 userInfo:0];
    sub_22B975FD8(v48, v50, 0, 0);

    v51 = v0[1];

    return v51(v47);
  }

  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v14 = sub_22BA0FEFC();
  sub_22B936CA8(v14, qword_28141AD10);
  v15 = sub_22BA0FEDC();
  v16 = sub_22BA1044C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22B92A000, v15, v16, "No update type for message update record, we should not ever end up in this state", v17, 2u);
    MEMORY[0x23189ADD0](v17, -1, -1);
  }

  sub_22B995D2C();
  swift_allocError();
  *v18 = 0;
  swift_willThrow();
  v19 = v0[1];

  return v19();
}

uint64_t sub_22B994A7C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 160);
  *(v0 + 200) = (*(v0 + 176))(*(v0 + 152));

  return MEMORY[0x2822009F8](sub_22B994B00, 0, 0);
}

uint64_t sub_22B994B00()
{
  v44 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v0[40] = v2;
  if (v2)
  {
    v3 = qword_28141ADC8;
    v0[41] = qword_28141ADC8;
    if (v3)
    {
      v4 = qword_28141ADD0;
      v0[42] = qword_28141ADD0;
      v0[43] = *(v4 + 280);
      v0[44] = (v4 + 280) & 0xFFFFFFFFFFFFLL | 0x462E000000000000;
      v5 = qword_281416450;
      v6 = v2;
      if (v5 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v8 = sub_22BA1029C();

      return MEMORY[0x2822009F8](sub_22B995C4C, v8, v7);
    }

    sub_22B952500();
    v19 = swift_allocError();
    swift_willThrow();
    v20 = qword_281414D18;
    v21 = v2;
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = sub_22BA0FEFC();
    sub_22B936CA8(v22, qword_28141AD10);
    v23 = v21;
    v24 = sub_22BA0FEDC();
    v25 = sub_22BA1044C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v2;
      v28 = v23;
      _os_log_impl(&dword_22B92A000, v24, v25, "Error handling message update for record: %@", v26, 0xCu);
      sub_22B936BEC(v27, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v27, -1, -1);
      MEMORY[0x23189ADD0](v26, -1, -1);
    }

    v29 = *MEMORY[0x277D19D10];
    sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22BA13CB0;
    v31 = *MEMORY[0x277CCA7E8];
    *(inited + 32) = sub_22BA0FFFC();
    *(inited + 40) = v32;
    swift_getErrorValue();
    v33 = v0[12];
    v34 = v0[13];
    *(inited + 72) = v34;
    v35 = sub_22B957E80((inited + 48));
    (*(*(v34 - 8) + 16))(v35, v33, v34);
    v36 = v29;
    sub_22B9BBA8C(inited);
    swift_setDeallocating();
    sub_22B936BEC(inited + 32, &unk_27D8D5770, &qword_22BA135E0);
    v37 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v38 = sub_22BA0FF5C();

    v39 = [v37 initWithDomain:v36 code:1 userInfo:v38];

    sub_22B975FD8(24, v39, 0, 0);
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v9 = v0[18];
    v10 = sub_22BA0FEFC();
    sub_22B936CA8(v10, qword_28141AD10);

    v11 = sub_22BA0FEDC();
    v12 = sub_22BA1044C();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[18];
    if (v13)
    {
      v15 = v0[17];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v43 = v17;
      *v16 = 136315138;
      v18 = sub_22B99153C(v15, v14, &v43);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_22B92A000, v11, v12, "Unable to apply message update %s, couldn't generate record from the data", v16, 0xCu);
      sub_22B936C4C(v17);
      MEMORY[0x23189ADD0](v17, -1, -1);
      MEMORY[0x23189ADD0](v16, -1, -1);
    }

    else
    {
    }

    v40 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D19D10] code:2 userInfo:0];
    sub_22B975FD8(25, v40, 0, 0);
  }

  v41 = v0[1];

  return v41(1);
}

uint64_t sub_22B99506C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 216);
  *(v0 + 256) = (*(v0 + 232))(*(v0 + 208));

  return MEMORY[0x2822009F8](sub_22B9950F0, 0, 0);
}

uint64_t sub_22B9950F0()
{
  v44 = v0;
  v1 = v0[31];
  v2 = v0[32];
  v0[40] = v2;
  if (v2)
  {
    v3 = qword_28141ADC8;
    v0[41] = qword_28141ADC8;
    if (v3)
    {
      v4 = qword_28141ADD0;
      v0[42] = qword_28141ADD0;
      v0[43] = *(v4 + 280);
      v0[44] = (v4 + 280) & 0xFFFFFFFFFFFFLL | 0x462E000000000000;
      v5 = qword_281416450;
      v6 = v2;
      if (v5 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v8 = sub_22BA1029C();

      return MEMORY[0x2822009F8](sub_22B995C4C, v8, v7);
    }

    sub_22B952500();
    v19 = swift_allocError();
    swift_willThrow();
    v20 = qword_281414D18;
    v21 = v2;
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = sub_22BA0FEFC();
    sub_22B936CA8(v22, qword_28141AD10);
    v23 = v21;
    v24 = sub_22BA0FEDC();
    v25 = sub_22BA1044C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v2;
      v28 = v23;
      _os_log_impl(&dword_22B92A000, v24, v25, "Error handling message update for record: %@", v26, 0xCu);
      sub_22B936BEC(v27, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v27, -1, -1);
      MEMORY[0x23189ADD0](v26, -1, -1);
    }

    v29 = *MEMORY[0x277D19D10];
    sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22BA13CB0;
    v31 = *MEMORY[0x277CCA7E8];
    *(inited + 32) = sub_22BA0FFFC();
    *(inited + 40) = v32;
    swift_getErrorValue();
    v33 = v0[12];
    v34 = v0[13];
    *(inited + 72) = v34;
    v35 = sub_22B957E80((inited + 48));
    (*(*(v34 - 8) + 16))(v35, v33, v34);
    v36 = v29;
    sub_22B9BBA8C(inited);
    swift_setDeallocating();
    sub_22B936BEC(inited + 32, &unk_27D8D5770, &qword_22BA135E0);
    v37 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v38 = sub_22BA0FF5C();

    v39 = [v37 initWithDomain:v36 code:1 userInfo:v38];

    sub_22B975FD8(24, v39, 0, 0);
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v9 = v0[18];
    v10 = sub_22BA0FEFC();
    sub_22B936CA8(v10, qword_28141AD10);

    v11 = sub_22BA0FEDC();
    v12 = sub_22BA1044C();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[18];
    if (v13)
    {
      v15 = v0[17];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v43 = v17;
      *v16 = 136315138;
      v18 = sub_22B99153C(v15, v14, &v43);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_22B92A000, v11, v12, "Unable to apply message update %s, couldn't generate record from the data", v16, 0xCu);
      sub_22B936C4C(v17);
      MEMORY[0x23189ADD0](v17, -1, -1);
      MEMORY[0x23189ADD0](v16, -1, -1);
    }

    else
    {
    }

    v40 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D19D10] code:2 userInfo:0];
    sub_22B975FD8(25, v40, 0, 0);
  }

  v41 = v0[1];

  return v41(1);
}

uint64_t sub_22B99565C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  v3 = *(v0 + 272);
  *(v0 + 312) = (*(v0 + 288))(*(v0 + 264));

  return MEMORY[0x2822009F8](sub_22B9956E0, 0, 0);
}

uint64_t sub_22B9956E0()
{
  v44 = v0;
  v1 = v0[38];
  v2 = v0[39];
  v0[40] = v2;
  if (v2)
  {
    v3 = qword_28141ADC8;
    v0[41] = qword_28141ADC8;
    if (v3)
    {
      v4 = qword_28141ADD0;
      v0[42] = qword_28141ADD0;
      v0[43] = *(v4 + 280);
      v0[44] = (v4 + 280) & 0xFFFFFFFFFFFFLL | 0x462E000000000000;
      v5 = qword_281416450;
      v6 = v2;
      if (v5 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v8 = sub_22BA1029C();

      return MEMORY[0x2822009F8](sub_22B995C4C, v8, v7);
    }

    sub_22B952500();
    v19 = swift_allocError();
    swift_willThrow();
    v20 = qword_281414D18;
    v21 = v2;
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = sub_22BA0FEFC();
    sub_22B936CA8(v22, qword_28141AD10);
    v23 = v21;
    v24 = sub_22BA0FEDC();
    v25 = sub_22BA1044C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v2;
      v28 = v23;
      _os_log_impl(&dword_22B92A000, v24, v25, "Error handling message update for record: %@", v26, 0xCu);
      sub_22B936BEC(v27, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v27, -1, -1);
      MEMORY[0x23189ADD0](v26, -1, -1);
    }

    v29 = *MEMORY[0x277D19D10];
    sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22BA13CB0;
    v31 = *MEMORY[0x277CCA7E8];
    *(inited + 32) = sub_22BA0FFFC();
    *(inited + 40) = v32;
    swift_getErrorValue();
    v33 = v0[12];
    v34 = v0[13];
    *(inited + 72) = v34;
    v35 = sub_22B957E80((inited + 48));
    (*(*(v34 - 8) + 16))(v35, v33, v34);
    v36 = v29;
    sub_22B9BBA8C(inited);
    swift_setDeallocating();
    sub_22B936BEC(inited + 32, &unk_27D8D5770, &qword_22BA135E0);
    v37 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v38 = sub_22BA0FF5C();

    v39 = [v37 initWithDomain:v36 code:1 userInfo:v38];

    sub_22B975FD8(24, v39, 0, 0);
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v9 = v0[18];
    v10 = sub_22BA0FEFC();
    sub_22B936CA8(v10, qword_28141AD10);

    v11 = sub_22BA0FEDC();
    v12 = sub_22BA1044C();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[18];
    if (v13)
    {
      v15 = v0[17];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v43 = v17;
      *v16 = 136315138;
      v18 = sub_22B99153C(v15, v14, &v43);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_22B92A000, v11, v12, "Unable to apply message update %s, couldn't generate record from the data", v16, 0xCu);
      sub_22B936C4C(v17);
      MEMORY[0x23189ADD0](v17, -1, -1);
      MEMORY[0x23189ADD0](v16, -1, -1);
    }

    else
    {
    }

    v40 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D19D10] code:2 userInfo:0];
    sub_22B975FD8(25, v40, 0, 0);
  }

  v41 = v0[1];

  return v41(1);
}

uint64_t sub_22B995C4C()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  v3 = *(v0 + 328);
  (*(v0 + 344))(*(v0 + 320));

  return MEMORY[0x2822009F8](sub_22B995CC0, 0, 0);
}

uint64_t sub_22B995CC0()
{
  v1 = *(v0 + 320);

  v2 = *(v0 + 8);

  return v2(1);
}

unint64_t sub_22B995D2C()
{
  result = qword_27D8D5538;
  if (!qword_27D8D5538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5538);
  }

  return result;
}

unint64_t sub_22B995D94()
{
  result = qword_27D8D5540;
  if (!qword_27D8D5540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5540);
  }

  return result;
}

uint64_t sub_22B995DF4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22B995E50(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22B995EB0(void *a1, void *a2)
{
  v4 = sub_22B9349C8(&qword_27D8D54D8, &qword_22BA16DC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B993514();
  sub_22BA10D9C();
  if (a2)
  {
    v11 = a2;
    v12 = [v11 data];
    if (v12)
    {
      v13 = v12;
      v14 = sub_22BA0FCAC();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0xF000000000000000;
    }

    v18 = v14;
    v19 = v16;
    sub_22B9349C8(&qword_27D8D54F8, &unk_22BA180B0);
    sub_22B993568();
    sub_22BA10BEC();

    sub_22B9359A8(v18, v19);
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_22B99605C()
{
  sub_22BA10D3C();
  sub_22BA1008C();
  return sub_22BA10D6C();
}

uint64_t sub_22B9960C8()
{
  sub_22BA10D3C();
  sub_22BA1008C();
  return sub_22BA10D6C();
}

uint64_t sub_22B996130@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_22BA10AAC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_22B996188@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22BA10AAC();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_22B9961F8(uint64_t a1)
{
  v2 = sub_22B993514();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B996234(uint64_t a1)
{
  v2 = sub_22B993514();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_22B996270@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_22B996330(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22B9962B8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_22B996594();
      v4 = v3;
      v5 = v2;
      v6 = sub_22BA1072C();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

id sub_22B996330(uint64_t *a1)
{
  v3 = sub_22B9349C8(&qword_27D8D5548, &qword_22BA17148);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v21 - v7;
  v9 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B993514();
  sub_22BA10D8C();
  if (!v1)
  {
    sub_22B9363C8();
    sub_22BA10AFC();
    v11 = v22;
    if (v22 >> 60 == 15)
    {
      (*(v4 + 8))(v8, v3);
      v9 = 0;
    }

    else
    {
      v12 = v21;
      v13 = sub_22BA0FC8C();
      v14 = [v13 _FTOptionallyDecompressData];

      if (v14)
      {
        v15 = sub_22BA0FCAC();
        v23 = v12;
        v17 = v16;

        v18 = v15;
        v19 = sub_22BA0FC8C();
        v20 = v17;
        v12 = v23;
        sub_22B9359BC(v18, v20);
      }

      else
      {
        v19 = 0;
      }

      v9 = [objc_allocWithZone(MEMORY[0x277D1ABD0]) initWithData_];

      sub_22B9359A8(v12, v11);
      (*(v4 + 8))(v8, v3);
    }
  }

  sub_22B936C4C(a1);
  return v9;
}

unint64_t sub_22B996594()
{
  result = qword_27D8D5498;
  if (!qword_27D8D5498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8D5498);
  }

  return result;
}

unint64_t sub_22B9965F4()
{
  result = qword_27D8D5550;
  if (!qword_27D8D5550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5550);
  }

  return result;
}

unint64_t sub_22B99664C()
{
  result = qword_281414DC0;
  if (!qword_281414DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414DC0);
  }

  return result;
}

unint64_t sub_22B9966A4()
{
  result = qword_281414DC8;
  if (!qword_281414DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414DC8);
  }

  return result;
}

uint64_t sub_22B9966F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B996740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22B9967AC(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 isInternalInstall];

    if (v4)
    {
      v5 = (a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
      v6 = *(*sub_22B9358B4(v5, v5[3]) + 24);
      v7 = sub_22BA0FFCC();
      v8 = [v6 objectForKey_];

      if (!v8)
      {
        v32 = 0u;
        v33 = 0u;
        sub_22B936BEC(&v32, &unk_27D8D5A30, qword_22BA13390);
        return;
      }

      sub_22BA107AC();
      swift_unknownObjectRelease();
      sub_22B936BEC(&v32, &unk_27D8D5A30, qword_22BA13390);
      v9 = *MEMORY[0x277D19D08];
      v10 = sub_22BA0FFFC();
      v12 = v11;
      v13 = *(*sub_22B9358B4(v5, v5[3]) + 24);
      v14 = sub_22BA0FFCC();
      v15 = [v13 objectForKey_];

      if (v15)
      {
        sub_22BA107AC();
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 0u;
        v31 = 0u;
      }

      v32 = v30;
      v33 = v31;
      if (*(&v31 + 1))
      {
        if (swift_dynamicCast())
        {

          v10 = v28;
          v12 = v29;
        }
      }

      else
      {
        sub_22B936BEC(&v32, &unk_27D8D5A30, qword_22BA13390);
      }

      v16 = *(*sub_22B9358B4(v5, v5[3]) + 24);
      v17 = sub_22BA0FFCC();
      v18 = [v16 objectForKey_];

      if (v18)
      {
        sub_22BA107AC();
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 0u;
        v31 = 0u;
      }

      v32 = v30;
      v33 = v31;
      if (*(&v31 + 1))
      {
        sub_22B951A54(0, &qword_281414A20, 0x277CCABB0);
        if (swift_dynamicCast())
        {
          v19 = [v28 integerValue];

LABEL_20:
          sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22BA13CB0;
          v21 = *MEMORY[0x277CCA450];
          *(inited + 32) = sub_22BA0FFFC();
          *(inited + 40) = v22;
          *&v32 = 0;
          *(&v32 + 1) = 0xE000000000000000;
          sub_22BA108FC();
          MEMORY[0x231899730](0xD00000000000001ALL, 0x800000022BA1DBA0);
          v23 = sub_22BA10C1C();
          MEMORY[0x231899730](v23);

          MEMORY[0x231899730](8250, 0xE200000000000000);
          MEMORY[0x231899730](v10, v12);
          MEMORY[0x231899730](0xD000000000000025, 0x800000022BA1DBC0);
          v24 = v32;
          *(inited + 72) = MEMORY[0x277D837D0];
          *(inited + 48) = v24;
          sub_22B9BBA8C(inited);
          swift_setDeallocating();
          sub_22B936BEC(inited + 32, &unk_27D8D5770, &qword_22BA135E0);
          v25 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v26 = sub_22BA0FFCC();

          v27 = sub_22BA0FF5C();

          [v25 initWithDomain:v26 code:v19 userInfo:v27];

          swift_willThrow();
          return;
        }
      }

      else
      {
        sub_22B936BEC(&v32, &unk_27D8D5A30, qword_22BA13390);
      }

      v19 = 1;
      goto LABEL_20;
    }
  }
}

uint64_t sub_22B996CB0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_22B996CD4, 0, 0);
}

uint64_t sub_22B996CD4()
{
  v1 = v0[7];
  if (*(v1 + 99) == 1)
  {
    v2 = sub_22B9358B4((v1 + 8), *(v1 + 32));
    sub_22B9ECD04(*(v2 + 16));
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_22B996E60;
    v5 = v0[5];
    v4 = v0[6];

    return sub_22B9E81AC(v5, v4, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/RecordZoneReader.swift", 108, 2);
  }

  else if (*(v1 + 98) == 1)
  {
    v7 = *(v0[5] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
    v0[9] = v7;

    return MEMORY[0x2822009F8](sub_22B996FB0, v7, 0);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22B996E60()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B996F5C, 0, 0);
}

uint64_t sub_22B996F5C()
{
  if (*(*(v0 + 56) + 98) != 1)
  {
    return (*(v0 + 8))();
  }

  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 72) = v1;
  return MEMORY[0x2822009F8](sub_22B996FB0, v1, 0);
}

uint64_t sub_22B996FB0()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  *(v0 + 80) = *(v1 + 120);
  *(v0 + 88) = *(v1 + 128);
  *(v0 + 96) = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_22B997040, 0, 0);
}

uint64_t sub_22B997040()
{
  if (qword_281414D28 != -1)
  {
    swift_once();
  }

  v1 = sub_22BA0FEFC();
  sub_22B936CA8(v1, qword_28141AD28);
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1046C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v5 = *(v0 + 80);
    v6 = swift_slowAlloc();
    v7 = v6;
    *v6 = 134217984;
    if (v4 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v4;
    }

    *(v6 + 4) = fmin(v5 / v8, 1.0);
    _os_log_impl(&dword_22B92A000, v2, v3, "Download Progress: %f", v6, 0xCu);
    MEMORY[0x23189ADD0](v7, -1, -1);
  }

  v9 = *(v0 + 40);

  v10 = (v9 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
  v11 = sub_22B9358B4((v9 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v9 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v12 = *(*v11 + 56);
  v13 = *(v0 + 96);
  v15 = *(v0 + 80);
  v14 = *(v0 + 88);
  if (v12)
  {
    [*(*v11 + 56) startChanges];

    sub_22B99C0A0(v16, v15, v14, v13);

    [v12 commitChanges];
  }

  else
  {
    v17 = *v11;

    sub_22B99C0A0(v18, v15, v14, v13);
  }

  v19 = *sub_22B9358B4(v10, v10[3]);
  v20 = sub_22BA09CBC();
  if (v20)
  {
    [v20 sendBroadcastToClient];
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_22B997250(uint64_t a1, uint64_t a2)
{
  v3[129] = v2;
  v3[128] = a2;
  v3[127] = a1;
  v4 = sub_22B9349C8(&qword_27D8D5558, &qword_22BA173B0);
  v3[130] = v4;
  v5 = *(v4 - 8);
  v3[131] = v5;
  v6 = *(v5 + 64) + 15;
  v3[132] = swift_task_alloc();
  v3[133] = swift_task_alloc();
  v7 = sub_22B9349C8(&qword_27D8D5560, &qword_22BA173B8);
  v3[134] = v7;
  v8 = *(v7 - 8);
  v3[135] = v8;
  v9 = *(v8 + 64) + 15;
  v3[136] = swift_task_alloc();
  v10 = sub_22B9349C8(&qword_27D8D5568, &qword_22BA173C0);
  v3[137] = v10;
  v11 = *(v10 - 8);
  v3[138] = v11;
  v12 = *(v11 + 64) + 15;
  v3[139] = swift_task_alloc();
  v3[140] = swift_task_alloc();
  v3[141] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B997418, 0, 0);
}

uint64_t sub_22B997418()
{
  v83 = v0;
  v1 = sub_22B9358B4((*(v0 + 1032) + 8), *(*(v0 + 1032) + 32));
  v2 = *v1;
  *(v0 + 1136) = *v1;
  v3 = v1[1];
  *(v0 + 1144) = v3;
  v4 = qword_281414D30;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = (v0 + 978);
  v6 = *(v0 + 1016);
  v7 = sub_22BA0FEFC();
  *(v0 + 1152) = v7;
  *(v0 + 1160) = sub_22B936CA8(v7, qword_28141AD40);

  swift_unknownObjectRetain();
  v8 = sub_22BA0FEDC();
  v9 = sub_22BA1046C();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1016);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v82 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_22B99153C(v2, v3, &v82);
    *(v11 + 12) = 2080;
    sub_22BA0FDCC();
    sub_22B944034();
    v13 = sub_22BA10C1C();
    v15 = sub_22B99153C(v13, v14, &v82);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_22B92A000, v8, v9, "Starting read from %s (%s)", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v12, -1, -1);
    MEMORY[0x23189ADD0](v11, -1, -1);
  }

  v16 = *(v0 + 1032);
  *(v0 + 992) = 0;
  *(v0 + 984) = 0;
  v17 = *(v16 + 88);
  *(v0 + 1168) = v17;
  v18 = *(v16 + 96);
  *v5 = v18;
  if ((v18 & 1) != 0 || v17 >= 1)
  {
    *(v0 + 980) = *MEMORY[0x277D858A0];
    *(v0 + 1176) = 0;
    v35 = *(v0 + 1160);
    v36 = sub_22BA0FEDC();
    v37 = sub_22BA1046C();
    if (os_log_type_enabled(v36, v37))
    {
      if (*v5)
      {
        v38 = 1;
      }

      else
      {
        v38 = *(v0 + 1168);
      }

      v39 = swift_slowAlloc();
      *v39 = 134218240;
      *(v39 + 4) = 0;
      *(v39 + 12) = 2048;
      *(v39 + 14) = v38;
      _os_log_impl(&dword_22B92A000, v36, v37, "Current Batch %lld, Max Batch %ld", v39, 0x16u);
      MEMORY[0x23189ADD0](v39, -1, -1);
    }

    v74 = *(v0 + 980);
    v75 = *(v0 + 1128);
    v76 = *(v0 + 1120);
    v40 = *(v0 + 1104);
    v41 = *(v0 + 1096);
    v42 = *(v0 + 1080);
    v72 = *(v0 + 1088);
    v73 = *(v0 + 1072);
    v77 = *(v0 + 1112);
    v78 = *(v0 + 1064);
    v79 = *(v0 + 1048);
    v80 = *(v0 + 1040);
    v81 = *(v0 + 1056);
    v43 = *(v0 + 1032);
    v44 = *(v0 + 1024);
    v45 = *(v0 + 1016);

    v46 = sub_22B9358B4((v43 + 8), *(v43 + 32));
    v48 = *(v46 + 1);
    v47 = *(v46 + 2);
    *(v0 + 376) = *v46;
    *(v0 + 392) = v48;
    *(v0 + 408) = v47;
    v50 = *(v46 + 4);
    v49 = *(v46 + 5);
    v51 = *(v46 + 3);
    *(v0 + 472) = v46[12];
    *(v0 + 440) = v50;
    *(v0 + 456) = v49;
    *(v0 + 424) = v51;
    v52 = sub_22B99BC6C(v45, v44);
    *(v0 + 1248) = v52;
    v53 = sub_22B9358B4((v43 + 8), *(v43 + 32));
    v54 = *v53;
    v55 = *(v53 + 2);
    *(v0 + 496) = *(v53 + 1);
    *(v0 + 512) = v55;
    *(v0 + 480) = v54;
    v56 = *(v53 + 3);
    v57 = *(v53 + 4);
    v58 = *(v53 + 5);
    *(v0 + 576) = v53[12];
    *(v0 + 544) = v57;
    *(v0 + 560) = v58;
    *(v0 + 528) = v56;
    *(v0 + 712) = &type metadata for SyncZoneInfo;
    *(v0 + 720) = &off_283F57268;
    v59 = swift_allocObject();
    *(v0 + 688) = v59;
    memmove((v59 + 16), v53, 0x68uLL);
    *(v0 + 977) = 0;
    v60 = swift_task_alloc();
    v60[2] = v52;
    v60[3] = v45;
    v60[4] = v44;
    v60[5] = v0 + 977;
    v60[6] = v0 + 688;
    (*(v42 + 104))(v72, v74, v73);
    sub_22B951748(v0 + 480, v0 + 584);
    sub_22BA1035C();

    (*(v40 + 32))(v76, v75, v41);
    sub_22B936C4C((v0 + 688));
    (*(v40 + 16))(v77, v76, v41);
    sub_22B95194C(&qword_281414C08, &qword_27D8D5568, &qword_22BA173C0);
    sub_22BA1032C();
    (*(v79 + 32))(v81, v78, v80);
    (*(v40 + 8))(v76, v41);
    *(v0 + 1322) = 0;
    v61 = sub_22B9982D8;
    v62 = 0;
    v63 = 0;

    return MEMORY[0x2822009F8](v61, v62, v63);
  }

  *(v0 + 979) = 0;
  v19 = *(v0 + 1160);
  v20 = *(v0 + 1144);

  *(v0 + 1320) = *(v16 + 97);
  sub_22B99C1AC(v16, v0 + 16);
  sub_22B99C1AC(v16, v0 + 136);
  v21 = sub_22BA0FEDC();
  v22 = sub_22BA1046C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v82 = v24;
    *v23 = 136315906;
    v25 = sub_22B9358B4((v0 + 24), *(v0 + 48));
    v26 = sub_22BA082E0(*(v25 + 16));
    v28 = v27;
    sub_22B99C1E4(v0 + 16);
    v29 = sub_22B99153C(v26, v28, &v82);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2048;
    swift_beginAccess();
    *(v23 + 14) = *(v0 + 984);
    *(v23 + 22) = 2080;
    v30 = sub_22B9358B4((v0 + 144), *(v0 + 168));
    v31 = sub_22BA082E0(*(v30 + 16));
    v33 = v32;
    sub_22B99C1E4(v0 + 136);
    v34 = sub_22B99153C(v31, v33, &v82);

    *(v23 + 24) = v34;
    *(v23 + 32) = 2048;
    swift_beginAccess();
    *(v23 + 34) = *(v0 + 992);
    _os_log_impl(&dword_22B92A000, v21, v22, "%s: %lld %s records saved, %lld failures", v23, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v24, -1, -1);
    MEMORY[0x23189ADD0](v23, -1, -1);
  }

  else
  {

    sub_22B99C1E4(v0 + 136);
    sub_22B99C1E4(v0 + 16);
  }

  swift_beginAccess();
  v64 = *(v0 + 984);
  *(v0 + 1184) = v64;
  v61 = swift_beginAccess();
  v65 = *(v0 + 992);
  *(v0 + 1192) = v65;
  v66 = v64 + v65;
  *(v0 + 1200) = v64 + v65;
  if (__OFADD__(v64, v65))
  {
    __break(1u);
    return MEMORY[0x2822009F8](v61, v62, v63);
  }

  v67 = swift_task_alloc();
  *(v0 + 1208) = v67;
  *v67 = v0;
  v67[1] = sub_22B997C48;
  v68 = *(v0 + 1032);
  v69 = *(v0 + 1024);
  v70 = *(v0 + 1016);

  return sub_22B999C88(v70, v69, v66, 0);
}

uint64_t sub_22B997C48()
{
  v2 = *(*v1 + 1208);
  v5 = *v1;
  *(*v1 + 1216) = v0;

  if (v0)
  {
    v3 = sub_22B997F40;
  }

  else
  {
    v3 = sub_22B997D5C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B997D5C()
{
  v1 = *(v0 + 1032);
  v2 = *(*(v0 + 1016) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 1224) = v2;
  v3 = sub_22B9358B4((v1 + 8), *(v1 + 32));
  *(v0 + 1321) = sub_22BA08430(*(v3 + 16));

  return MEMORY[0x2822009F8](sub_22B997DF0, v2, 0);
}

uint64_t sub_22B997DF0()
{
  v1 = *(v0 + 1224);
  v2 = *(v0 + 1321);
  swift_beginAccess();
  v3 = sub_22B964498(v2);
  swift_endAccess();
  if (*(v3 + 16))
  {
    v4 = sub_22B990B64(0);
    if (v5)
    {
      v7 = *(v0 + 1184);
      v8 = (*(v3 + 56) + 16 * v4);
      v9 = *v8 + v7;
      if (__OFADD__(*v8, v7))
      {
        __break(1u);
      }

      else
      {
        v10 = *(v0 + 1192);
        v11 = v8[1];
        v12 = v11 + v10;
        if (!__OFADD__(v11, v10))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v14 = v9;
          v15 = v12;
          goto LABEL_7;
        }
      }

      __break(1u);
      return MEMORY[0x2822009F8](v4, v5, v6);
    }
  }

  v16 = *(v0 + 1192);
  v17 = *(v0 + 1184);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v17;
  v15 = v16;
LABEL_7:
  sub_22B9BB0F8(v14, v15, 0, isUniquelyReferenced_nonNull_native);
  v18 = *(v0 + 1224);
  v19 = *(v0 + 1321);

  sub_22B9645F8(v20, v19);

  v4 = sub_22B997FF0;
  v5 = v18;
  v6 = 0;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22B997F40()
{
  v1 = v0[152];
  v2 = v0[141];
  v3 = v0[140];
  v4 = v0[139];
  v5 = v0[136];
  v6 = v0[133];
  v7 = v0[132];

  v8 = v0[1];

  return v8();
}

uint64_t sub_22B997FF0()
{
  v1 = v0[153];
  v0[154] = *(v1 + 120);
  v0[155] = *(v1 + 128);
  return MEMORY[0x2822009F8](sub_22B998020, 0, 0);
}

uint64_t sub_22B998020()
{
  if (qword_281414D28 != -1)
  {
    swift_once();
  }

  sub_22B936CA8(v0[144], qword_28141AD28);
  v1 = sub_22BA0FEDC();
  v2 = sub_22BA1046C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[155];
    v4 = v0[154];
    v5 = swift_slowAlloc();
    v6 = v5;
    *v5 = 134217984;
    if (v3 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v3;
    }

    *(v5 + 4) = fmin(v4 / v7, 1.0);
    _os_log_impl(&dword_22B92A000, v1, v2, "Download Progress: %f", v5, 0xCu);
    MEMORY[0x23189ADD0](v6, -1, -1);
  }

  v8 = v0[127];

  v9 = *sub_22B9358B4((v8 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore), *(v8 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore + 24));

  return MEMORY[0x2822009F8](sub_22B99818C, v9, 0);
}

uint64_t sub_22B99818C()
{
  sub_22B9E45D8(*(v0 + 1232), *(v0 + 1240), 0);

  return MEMORY[0x2822009F8](sub_22B9981FC, 0, 0);
}

uint64_t sub_22B9981FC()
{
  v1 = *(v0 + 1320) & ~*(v0 + 978) | *(v0 + 979);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1128);
  v4 = *(v0 + 1120);
  v5 = *(v0 + 1112);
  v6 = *(v0 + 1088);
  v7 = *(v0 + 1064);
  v8 = *(v0 + 1056);

  v9 = *(v0 + 8);

  return v9(v2, (v1 & 1) == 0);
}

uint64_t sub_22B9982D8()
{
  v1 = v0[132];
  swift_beginAccess();
  v2 = sub_22B95194C(&qword_281414C18, &qword_27D8D5558, &qword_22BA173B0);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[157] = v4;
  *v4 = v0;
  v4[1] = sub_22B9983C4;
  v5 = v0[132];
  v6 = v0[130];

  return MEMORY[0x282200308](v0 + 120, v6, v2);
}

uint64_t sub_22B9983C4()
{
  v2 = *v1;
  v3 = *(*v1 + 1256);
  v6 = *v1;
  *(*v1 + 1264) = v0;

  if (v0)
  {
    v4 = sub_22B998E30;
  }

  else
  {
    swift_endAccess();
    *(v2 + 1272) = *(v2 + 960);
    *(v2 + 1323) = *(v2 + 976);
    v4 = sub_22B9984F4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B9984F4()
{
  v104 = v0;
  v1 = *(v0 + 1323);
  if (v1 > 0xFD)
  {
    v2 = *(v0 + 1248);
    v3 = *(v0 + 1176);
    if (*(v0 + 978))
    {
      v4 = 1;
    }

    else
    {
      v4 = *(v0 + 1168);
    }

    (*(*(v0 + 1048) + 8))(*(v0 + 1056), *(v0 + 1040));

    v5 = v3 + 1;
    v6 = *(v0 + 1322);
    if (v3 + 1 == v4)
    {
      goto LABEL_8;
    }

    *(v0 + 1176) = v5;
    if (v6)
    {
      v6 = 1;
LABEL_8:
      *(v0 + 979) = v6;
      v7 = *(v0 + 1160);
      v8 = *(v0 + 1144);
      v9 = *(v0 + 1032);

      *(v0 + 1320) = *(v9 + 97);
      sub_22B99C1AC(v9, v0 + 16);
      sub_22B99C1AC(v9, v0 + 136);
      v10 = sub_22BA0FEDC();
      v11 = sub_22BA1046C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v103 = v13;
        *v12 = 136315906;
        v14 = sub_22B9358B4((v0 + 24), *(v0 + 48));
        v15 = sub_22BA082E0(*(v14 + 16));
        v17 = v16;
        sub_22B99C1E4(v0 + 16);
        v18 = sub_22B99153C(v15, v17, &v103);

        *(v12 + 4) = v18;
        *(v12 + 12) = 2048;
        swift_beginAccess();
        *(v12 + 14) = *(v0 + 984);
        *(v12 + 22) = 2080;
        v19 = sub_22B9358B4((v0 + 144), *(v0 + 168));
        v20 = sub_22BA082E0(*(v19 + 16));
        v22 = v21;
        sub_22B99C1E4(v0 + 136);
        v23 = sub_22B99153C(v20, v22, &v103);

        *(v12 + 24) = v23;
        *(v12 + 32) = 2048;
        swift_beginAccess();
        *(v12 + 34) = *(v0 + 992);
        _os_log_impl(&dword_22B92A000, v10, v11, "%s: %lld %s records saved, %lld failures", v12, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v13, -1, -1);
        MEMORY[0x23189ADD0](v12, -1, -1);
      }

      else
      {

        sub_22B99C1E4(v0 + 136);
        sub_22B99C1E4(v0 + 16);
      }

      swift_beginAccess();
      v25 = *(v0 + 984);
      *(v0 + 1184) = v25;
      v26 = swift_beginAccess();
      v29 = *(v0 + 992);
      *(v0 + 1192) = v29;
      v30 = v25 + v29;
      *(v0 + 1200) = v25 + v29;
      if (!__OFADD__(v25, v29))
      {
        v31 = swift_task_alloc();
        *(v0 + 1208) = v31;
        *v31 = v0;
        v31[1] = sub_22B997C48;
        v32 = *(v0 + 1032);
        v33 = *(v0 + 1024);
        v34 = *(v0 + 1016);

        return sub_22B999C88(v34, v33, v30, 0);
      }

      __break(1u);
      return MEMORY[0x2822009F8](v26, v27, v28);
    }

    v102 = (v0 + 688);
    v56 = *(v0 + 1160);
    v57 = sub_22BA0FEDC();
    v58 = sub_22BA1046C();
    if (os_log_type_enabled(v57, v58))
    {
      if (*(v0 + 978))
      {
        v59 = 1;
      }

      else
      {
        v59 = *(v0 + 1168);
      }

      v60 = swift_slowAlloc();
      *v60 = 134218240;
      *(v60 + 4) = v5;
      *(v60 + 12) = 2048;
      *(v60 + 14) = v59;
      _os_log_impl(&dword_22B92A000, v57, v58, "Current Batch %lld, Max Batch %ld", v60, 0x16u);
      MEMORY[0x23189ADD0](v60, -1, -1);
    }

    v94 = *(v0 + 980);
    v95 = *(v0 + 1128);
    v96 = *(v0 + 1120);
    v61 = *(v0 + 1104);
    v62 = *(v0 + 1096);
    v63 = *(v0 + 1080);
    v92 = *(v0 + 1088);
    v93 = *(v0 + 1072);
    v97 = *(v0 + 1112);
    v98 = *(v0 + 1064);
    v99 = *(v0 + 1048);
    v100 = *(v0 + 1040);
    v101 = *(v0 + 1056);
    v64 = *(v0 + 1032);
    v65 = *(v0 + 1024);
    v66 = *(v0 + 1016);

    v67 = sub_22B9358B4((v64 + 8), *(v64 + 32));
    v69 = *(v67 + 1);
    v68 = *(v67 + 2);
    *(v0 + 376) = *v67;
    *(v0 + 392) = v69;
    *(v0 + 408) = v68;
    v71 = *(v67 + 4);
    v70 = *(v67 + 5);
    v72 = *(v67 + 3);
    *(v0 + 472) = v67[12];
    *(v0 + 440) = v71;
    *(v0 + 456) = v70;
    *(v0 + 424) = v72;
    v73 = sub_22B99BC6C(v66, v65);
    *(v0 + 1248) = v73;
    v74 = sub_22B9358B4((v64 + 8), *(v64 + 32));
    v75 = *v74;
    v76 = *(v74 + 2);
    *(v0 + 496) = *(v74 + 1);
    *(v0 + 512) = v76;
    *(v0 + 480) = v75;
    v77 = *(v74 + 3);
    v78 = *(v74 + 4);
    v79 = *(v74 + 5);
    *(v0 + 576) = v74[12];
    *(v0 + 544) = v78;
    *(v0 + 560) = v79;
    *(v0 + 528) = v77;
    *(v0 + 712) = &type metadata for SyncZoneInfo;
    *(v0 + 720) = &off_283F57268;
    v80 = swift_allocObject();
    *(v0 + 688) = v80;
    memmove((v80 + 16), v74, 0x68uLL);
    *(v0 + 977) = 0;
    v81 = swift_task_alloc();
    v81[2] = v73;
    v81[3] = v66;
    v81[4] = v65;
    v81[5] = v0 + 977;
    v81[6] = v102;
    (*(v63 + 104))(v92, v94, v93);
    sub_22B951748(v0 + 480, v0 + 584);
    sub_22BA1035C();

    (*(v61 + 32))(v96, v95, v62);
    sub_22B936C4C(v102);
    (*(v61 + 16))(v97, v96, v62);
    sub_22B95194C(&qword_281414C08, &qword_27D8D5568, &qword_22BA173C0);
    sub_22BA1032C();
    (*(v99 + 32))(v101, v98, v100);
    (*(v61 + 8))(v96, v62);
    LOBYTE(v24) = 0;
    goto LABEL_29;
  }

  if (!(v1 >> 6))
  {
    v36 = *(v0 + 1032);
    v37 = sub_22B9358B4((*(v0 + 1016) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 1016) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
    v38 = sub_22B9358B4((v36 + 8), *(v36 + 32));
    v40 = v38[3];
    v39 = v38[4];
    v41 = *(*v37 + 48);
    if (v41)
    {
      v42 = *(v0 + 1280);
      v43 = *(v0 + 1272);
      v44 = *(v0 + 1323);
      v45 = v38[4];

      swift_unknownObjectRetain();
      v46 = sub_22BA0FFCC();
      [v41 persistToken:v43 forKey:v46];

      swift_unknownObjectRelease();
      v47 = v43;
      v48 = v42;
      v49 = v44;
    }

    else
    {
      v82 = *(v0 + 1160);
      v83 = v38[4];

      v84 = sub_22BA0FEDC();
      v85 = sub_22BA1044C();
      v86 = os_log_type_enabled(v84, v85);
      v87 = *(v0 + 1323);
      v88 = *(v0 + 1280);
      v89 = *(v0 + 1272);
      if (v86)
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v103 = v91;
        *v90 = 136315394;
        *(v90 + 4) = sub_22B99153C(0xD00000000000001ELL, 0x800000022BA1DB20, &v103);
        *(v90 + 12) = 2080;
        *(v90 + 14) = sub_22B99153C(v40, v39, &v103);
        _os_log_impl(&dword_22B92A000, v84, v85, "%s: Missing sync token store, did not update server change token for key (%s)", v90, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v91, -1, -1);
        MEMORY[0x23189ADD0](v90, -1, -1);
      }

      else
      {
      }

      v47 = v89;
      v48 = v88;
      v49 = v87;
    }

    sub_22B99C224(v47, v48, v49);

    goto LABEL_35;
  }

  if (v1 >> 6 == 1)
  {
    v24 = *(v0 + 1272) ^ 1;
LABEL_29:
    *(v0 + 1322) = v24 & 1;
LABEL_35:
    v26 = sub_22B9982D8;
    v27 = 0;
    v28 = 0;

    return MEMORY[0x2822009F8](v26, v27, v28);
  }

  v50 = swift_task_alloc();
  *(v0 + 1288) = v50;
  *v50 = v0;
  v50[1] = sub_22B99917C;
  v51 = *(v0 + 1280);
  v52 = *(v0 + 1272);
  v53 = *(v0 + 1032);
  v54 = *(v0 + 1024);
  v55 = *(v0 + 1016);

  return sub_22B99AD58(v52, v51, v1 & 1, v0 + 984, v0 + 992, v55, v54);
}

uint64_t sub_22B998E30()
{
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_22B998E98, 0, 0);
}

uint64_t sub_22B998E98()
{
  *(v0 + 1000) = *(v0 + 1264);
  sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_22B998F28, 0, 0);
}

void sub_22B998F28()
{
  v28 = v0;
  v1 = *(v0 + 1264);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 1144);
  v4 = *(v0 + 1056);
  v5 = *(v0 + 1048);
  v6 = *(v0 + 1040);

  (*(v5 + 8))(v4, v6);

  v7 = v1;
  v8 = sub_22BA0FEDC();
  v9 = sub_22BA1046C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1264);
    v11 = *(v0 + 1144);
    v12 = *(v0 + 1136);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_22B99153C(v12, v11, &v27);
    *(v13 + 12) = 2112;
    v16 = v10;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_22B92A000, v8, v9, "Error reading from %s %@", v13, 0x16u);
    sub_22B936BEC(v14, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v14, -1, -1);
    sub_22B936C4C(v15);
    MEMORY[0x23189ADD0](v15, -1, -1);
    MEMORY[0x23189ADD0](v13, -1, -1);
  }

  v18 = *(v0 + 984);
  v19 = *(v0 + 992);
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
  }

  else
  {
    v21 = *(v0 + 1264);
    v22 = v21;
    v23 = swift_task_alloc();
    *(v0 + 1304) = v23;
    *v23 = v0;
    v23[1] = sub_22B999420;
    v24 = *(v0 + 1032);
    v25 = *(v0 + 1024);
    v26 = *(v0 + 1016);

    sub_22B999C88(v26, v25, v20, v21);
  }
}

uint64_t sub_22B99917C()
{
  v1 = *(*v0 + 1288);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B999278, 0, 0);
}

uint64_t sub_22B999278()
{
  if (*(*(v0 + 1032) + 98) == 1)
  {
    v1 = *(*(v0 + 1016) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
    *(v0 + 1296) = v1;
    v2 = sub_22B999324;
  }

  else
  {
    sub_22B99C224(*(v0 + 1272), *(v0 + 1280), *(v0 + 1323));
    v2 = sub_22B9982D8;
    v1 = 0;
  }

  return MEMORY[0x2822009F8](v2, v1, 0);
}

uint64_t sub_22B999324()
{
  v1 = *(v0 + 1296);
  v2 = swift_beginAccess();
  v5 = *(v1 + 120);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 120) = v7;
    v2 = sub_22B9993B0;
    v3 = 0;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22B9993B0()
{
  sub_22B99C224(*(v0 + 1272), *(v0 + 1280), *(v0 + 1323));

  return MEMORY[0x2822009F8](sub_22B9982D8, 0, 0);
}

uint64_t sub_22B999420()
{
  v2 = *v1;
  v3 = *(*v1 + 1304);
  v6 = *v1;
  *(*v1 + 1312) = v0;

  if (v0)
  {
    v4 = sub_22B999814;
  }

  else
  {

    v4 = sub_22B99953C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B99953C()
{
  v1 = v0[158];
  v2 = *(*sub_22B9358B4((v0[127] + 16), *(v0[127] + 40)) + 24);
  swift_unknownObjectRetain();
  v3 = sub_22BA0FB5C();
  v4 = [v2 wasTokenExpired_];
  swift_unknownObjectRelease();

  if (v4)
  {
    v5 = v0[158];
    v6 = v0[143];
    v7 = v0[129];
    v8 = v0[127];

    v9 = sub_22B9358B4((v7 + 8), *(v7 + 32));
    sub_22B935B38(v8 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState, (v0 + 91));
    v10 = v9[3];
    v11 = v9[4];
    v12 = *sub_22B9358B4(v0 + 91, v0[94]);
    sub_22BA08CC8(0, v10, v11);

    sub_22B936C4C(v0 + 91);
    v13 = v0[141];
    v14 = v0[140];
    v15 = v0[139];
    v16 = v0[136];
    v17 = v0[133];
    v18 = v0[132];

    v19 = v0[1];

    return v19(0, 1);
  }

  else
  {
    v21 = v0[158];
    v22 = v0[143];
    v23 = v0[142];
    sub_22BA108FC();

    MEMORY[0x231899730](v23, v22);

    MEMORY[0x231899730](0xD000000000000014, 0x800000022BA1DB00);
    swift_getErrorValue();
    v24 = v0[114];
    v25 = sub_22B958118(v0[115], v0[116]);
    MEMORY[0x231899730](v25);

    sub_22B975FD8(6, v21, 0xD000000000000013, 0x800000022BA1DAE0);

    swift_willThrow();
    v26 = v0[158];
    v27 = v0[141];
    v28 = v0[140];
    v29 = v0[139];
    v30 = v0[136];
    v31 = v0[133];
    v32 = v0[132];

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_22B999814()
{
  v54 = v0;
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 1032);

  sub_22B99C1AC(v3, v0 + 256);
  v4 = v1;
  v5 = sub_22BA0FEDC();
  v6 = sub_22BA1044C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1312);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v52 = v11;
    *v9 = 136315394;
    v12 = sub_22B9358B4((v0 + 264), *(v0 + 288));
    v13 = sub_22BA082E0(*(v12 + 16));
    v15 = v14;
    sub_22B99C1E4(v0 + 256);
    v16 = sub_22B99153C(v13, v15, &v52);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    v17 = v8;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v18;
    *v10 = v18;
    _os_log_impl(&dword_22B92A000, v5, v6, "Error completing read step for zone (%s): %@", v9, 0x16u);
    sub_22B936BEC(v10, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v10, -1, -1);
    sub_22B936C4C(v11);
    MEMORY[0x23189ADD0](v11, -1, -1);
    MEMORY[0x23189ADD0](v9, -1, -1);
  }

  else
  {

    sub_22B99C1E4(v0 + 256);
  }

  v19 = *(v0 + 1264);
  v20 = *(*sub_22B9358B4((*(v0 + 1016) + 16), *(*(v0 + 1016) + 40)) + 24);
  swift_unknownObjectRetain();
  v21 = sub_22BA0FB5C();
  v22 = [v20 wasTokenExpired_];
  swift_unknownObjectRelease();

  if (v22)
  {
    v23 = *(v0 + 1264);
    v24 = *(v0 + 1144);
    v25 = *(v0 + 1032);
    v26 = *(v0 + 1016);

    v27 = sub_22B9358B4((v25 + 8), *(v25 + 32));
    sub_22B935B38(v26 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState, v0 + 728);
    v28 = v27[3];
    v29 = v27[4];
    v30 = *sub_22B9358B4((v0 + 728), *(v0 + 752));
    sub_22BA08CC8(0, v28, v29);

    sub_22B936C4C((v0 + 728));
    v31 = *(v0 + 1128);
    v32 = *(v0 + 1120);
    v33 = *(v0 + 1112);
    v34 = *(v0 + 1088);
    v35 = *(v0 + 1064);
    v36 = *(v0 + 1056);

    v37 = *(v0 + 8);

    return v37(0, 1);
  }

  else
  {
    v39 = *(v0 + 1264);
    v40 = *(v0 + 1144);
    v41 = *(v0 + 1136);
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_22BA108FC();

    v52 = 0xD000000000000013;
    v53 = 0x800000022BA1DAE0;
    MEMORY[0x231899730](v41, v40);

    MEMORY[0x231899730](0xD000000000000014, 0x800000022BA1DB00);
    swift_getErrorValue();
    v42 = *(v0 + 912);
    v43 = sub_22B958118(*(v0 + 920), *(v0 + 928));
    MEMORY[0x231899730](v43);

    sub_22B975FD8(6, v39, v52, v53);

    swift_willThrow();
    v44 = *(v0 + 1264);
    v45 = *(v0 + 1128);
    v46 = *(v0 + 1120);
    v47 = *(v0 + 1112);
    v48 = *(v0 + 1088);
    v49 = *(v0 + 1064);
    v50 = *(v0 + 1056);

    v51 = *(v0 + 8);

    return v51();
  }
}

uint64_t sub_22B999C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_22B999CB0, 0, 0);
}

uint64_t sub_22B999CB0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v2[9];
  v4 = v2[10];
  sub_22B9358B4(v2 + 6, v3);
  if (v1)
  {
    v5 = *(v4 + 24);
    v6 = v1;
    v21 = v5 + *v5;
    v7 = v5[1];
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_22B999EF4;
    v9 = v0[8];
    v10 = v0[6];
    v11 = v2 + 1;
    v12 = v0[5];
    v13 = 1;
    v14 = v3;
    v15 = v4;
    v16 = v21;
  }

  else
  {
    v17 = *(v4 + 24);
    v22 = v17 + *v17;
    v18 = v17[1];
    v19 = swift_task_alloc();
    v0[12] = v19;
    *v19 = v0;
    v19[1] = sub_22B99A008;
    v10 = v0[6];
    v11 = v2 + 1;
    v12 = v0[5];
    v9 = 0;
    v13 = 0;
    v14 = v3;
    v15 = v4;
    v16 = v22;
  }

  return v16(v12, v10, v11, v9, v13, v14, v15);
}

uint64_t sub_22B999EF4()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_22B99A344;
  }

  else
  {
    v3 = sub_22B99A138;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B99A008()
{
  v2 = *(*v1 + 96);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22B99A610, 0, 0);
  }
}

uint64_t sub_22B99A138()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  if (*(v1 + 98) == 1)
  {
    v3 = *(v2 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
    *(v0 + 104) = v3;

    return MEMORY[0x2822009F8](sub_22B99A3A8, v3, 0);
  }

  else
  {
    v4 = *(v2 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_delegate);
    if (v4)
    {
      v5 = *(v0 + 64);
      v6 = sub_22B9358B4((v1 + 8), *(v1 + 32));
      v7 = sub_22B975300(*(v6 + 16));
      v8 = *sub_22B9358B4((v2 + 16), *(v2 + 40));
      v9 = sub_22B9B580C();
      MEMORY[0x231899730](v9);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v10 = sub_22BA10C1C();
      MEMORY[0x231899730](v10);

      v11 = sub_22BA0FFCC();

      v12 = sub_22BA0FDAC();
      if (v5)
      {
        v13 = *(v0 + 64);
        v14 = sub_22BA0FB5C();
      }

      else
      {
        v14 = 0;
      }

      [v4 syncCoordinatorFinishedFetchingRecordsOfType:v7 name:v11 identifier:v12 count:*(v0 + 56) error:v14];
    }

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_22B99A344()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B99A3A8()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  *(v0 + 112) = *(v1 + 120);
  *(v0 + 120) = *(v1 + 128);
  *(v0 + 128) = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_22B99A438, 0, 0);
}

uint64_t sub_22B99A438()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *sub_22B9358B4((*(v0 + 40) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 40) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  sub_22BA0980C(v3, v2, v1);
  v5 = *(v0 + 40);
  v6 = *(v5 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_delegate);
  if (v6)
  {
    v7 = *(v0 + 64);
    v8 = sub_22B9358B4((*(v0 + 72) + 8), *(*(v0 + 72) + 32));
    v9 = sub_22B975300(*(v8 + 16));
    v10 = *sub_22B9358B4((v5 + 16), *(v5 + 40));
    v11 = sub_22B9B580C();
    MEMORY[0x231899730](v11);

    MEMORY[0x231899730](46, 0xE100000000000000);
    sub_22BA0FDCC();
    sub_22B944034();
    v12 = sub_22BA10C1C();
    MEMORY[0x231899730](v12);

    v13 = sub_22BA0FFCC();

    v14 = sub_22BA0FDAC();
    if (v7)
    {
      v15 = *(v0 + 64);
      v16 = sub_22BA0FB5C();
    }

    else
    {
      v16 = 0;
    }

    [v6 syncCoordinatorFinishedFetchingRecordsOfType:v9 name:v13 identifier:v14 count:*(v0 + 56) error:v16];
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_22B99A610()
{
  v1 = v0[9];
  v2 = v0[5];
  if (*(v1 + 98) == 1)
  {
    v3 = *(v2 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
    v0[13] = v3;

    return MEMORY[0x2822009F8](sub_22B99A3A8, v3, 0);
  }

  else
  {
    v4 = *(v2 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_delegate);
    if (v4)
    {
      v5 = v0[8];
      v6 = sub_22B9358B4((v1 + 8), *(v1 + 32));
      v7 = sub_22B975300(*(v6 + 16));
      v8 = *sub_22B9358B4((v2 + 16), *(v2 + 40));
      v9 = sub_22B9B580C();
      MEMORY[0x231899730](v9);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v10 = sub_22BA10C1C();
      MEMORY[0x231899730](v10);

      v11 = sub_22BA0FFCC();

      v12 = sub_22BA0FDAC();
      if (v5)
      {
        v13 = v0[8];
        v14 = sub_22BA0FB5C();
      }

      else
      {
        v14 = 0;
      }

      [v4 syncCoordinatorFinishedFetchingRecordsOfType:v7 name:v11 identifier:v12 count:v0[7] error:v14];
    }

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_22B99A814(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_22B99A838, 0, 0);
}

uint64_t sub_22B99A838()
{
  v1 = v0[7];
  if (*(v1 + 99) == 1)
  {
    v2 = sub_22B9358B4((v1 + 8), *(v1 + 32));
    sub_22B9ECD40(*(v2 + 16));
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_22B99A9C4;
    v5 = v0[5];
    v4 = v0[6];

    return sub_22B9E81AC(v5, v4, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/RecordZoneReader.swift", 108, 2);
  }

  else if (*(v1 + 98) == 1)
  {
    v7 = *(v0[5] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
    v0[9] = v7;

    return MEMORY[0x2822009F8](sub_22B99AB14, v7, 0);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22B99A9C4()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B99AAC0, 0, 0);
}

uint64_t sub_22B99AAC0()
{
  if (*(*(v0 + 56) + 98) != 1)
  {
    return (*(v0 + 8))();
  }

  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 72) = v1;
  return MEMORY[0x2822009F8](sub_22B99AB14, v1, 0);
}

uint64_t sub_22B99AB14()
{
  v1 = v0[9];
  swift_beginAccess();
  v0[10] = *(v1 + 120);
  v0[11] = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_22B99AB9C, 0, 0);
}

uint64_t sub_22B99AB9C()
{
  v1 = *sub_22B9358B4((*(v0 + 40) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore), *(*(v0 + 40) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore + 24));

  return MEMORY[0x2822009F8](sub_22B99AC18, v1, 0);
}

uint64_t sub_22B99AC18()
{
  v1 = v0[9];
  sub_22B9E45D8(v0[10], v0[11], 0);

  return MEMORY[0x2822009F8](sub_22B99AC88, v1, 0);
}

uint64_t sub_22B99AC88()
{
  v1 = *(v0 + 72);
  *(v0 + 96) = *(v1 + 120);
  *(v0 + 104) = *(v1 + 128);
  *(v0 + 112) = *(v1 + 136);
  return MEMORY[0x2822009F8](sub_22B99ACC0, 0, 0);
}

uint64_t sub_22B99ACC0()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *sub_22B9358B4((*(v0 + 40) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 40) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  sub_22BA0980C(v3, v2, v1);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22B99AD58(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 96) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_22B99AD88, 0, 0);
}

uint64_t sub_22B99AD88()
{
  if (*(v2 + 96))
  {
    v3 = *(v2 + 40);
    if (__OFADD__(*v3, 1))
    {
      __break(1u);
    }

    else
    {
      v1 = *(v2 + 16);
      v0 = *(v2 + 24);
      ++*v3;
      if (qword_281414D30 == -1)
      {
LABEL_4:
        v4 = sub_22BA0FEFC();
        sub_22B936CA8(v4, qword_28141AD40);
        v5 = v1;
        v6 = v0;
        v7 = sub_22BA0FEDC();
        v8 = sub_22BA1044C();

        if (os_log_type_enabled(v7, v8))
        {
          v9 = *(v2 + 16);
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          *v10 = 138412546;
          sub_22B99C2C4();
          swift_allocError();
          *v12 = v5;
          v12[1] = v0;
          v13 = v5;
          v14 = v0;
          v15 = _swift_stdlib_bridgeErrorToNSError();
          *(v10 + 4) = v15;
          *(v10 + 12) = 2112;
          *(v10 + 14) = v13;
          *v11 = v15;
          v11[1] = v9;
          v16 = v13;
          _os_log_impl(&dword_22B92A000, v7, v8, "Error during processing: %@ for record ID: %@", v10, 0x16u);
          sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
          swift_arrayDestroy();
          MEMORY[0x23189ADD0](v11, -1, -1);
          MEMORY[0x23189ADD0](v10, -1, -1);
        }

        v17 = swift_task_alloc();
        *(v2 + 88) = v17;
        *v17 = v2;
        v17[1] = sub_22B99B6DC;
        v18 = *(v2 + 48);

        return sub_22B97D504(v0);
      }
    }

    swift_once();
    goto LABEL_4;
  }

  v20 = *(v2 + 64);
  v21 = v20[9];
  v22 = v20[10];
  sub_22B9358B4(v20 + 6, v21);
  v23 = *(v22 + 8);
  v30 = (v23 + *v23);
  v24 = v23[1];
  v25 = swift_task_alloc();
  *(v2 + 72) = v25;
  *v25 = v2;
  v25[1] = sub_22B99B100;
  v26 = *(v2 + 56);
  v27 = *(v2 + 16);
  v28 = *(v2 + 24);
  v29 = *(v2 + 48);

  return (v30)(v29, v26, v20 + 1, v27, v28, 0, v21, v22);
}

uint64_t sub_22B99B100()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_22B99B3B4;
  }

  else
  {
    v3 = sub_22B99B214;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B99B214()
{
  v1 = v0[3];
  sub_22BA106BC();
  v2 = sub_22B9C2E30();
  if (v2 > 3)
  {
    if ((v2 - 6) < 2 || v2 != 4)
    {
      goto LABEL_14;
    }

    v4 = "recoverableMessage";
  }

  else
  {
    if (v2 <= 1)
    {
      v3 = "ndPlayed";
      if (v2)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    if (v2 != 2)
    {
      goto LABEL_14;
    }

    v4 = "MessageEncryptedV3";
  }

  v3 = (v4 - 32);
LABEL_12:
  if (0x800000022BA1B9C0 == (v3 | 0x8000000000000000))
  {

    goto LABEL_17;
  }

LABEL_14:
  v5 = sub_22BA10C6C();

  if ((v5 & 1) == 0)
  {
    v7 = v0[4];
    if (__OFADD__(*v7, 1))
    {
      __break(1u);
      return result;
    }

    ++*v7;
  }

LABEL_17:
  v8 = v0[1];

  return v8();
}

uint64_t sub_22B99B3B4()
{
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v3 = v0[2];
  v2 = v0[3];
  v4 = sub_22BA0FEFC();
  sub_22B936CA8(v4, qword_28141AD40);
  v5 = v1;
  v6 = v3;
  v7 = v2;
  v8 = sub_22BA0FEDC();
  v9 = sub_22BA1044C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[10];
  if (v10)
  {
    v12 = v0[3];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412546;
    v15 = v11;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v12;
    *v14 = v16;
    v14[1] = v12;
    v17 = v12;
    _os_log_impl(&dword_22B92A000, v8, v9, "Upsert failed: %@ for record: %@", v13, 0x16u);
    sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v14, -1, -1);
    MEMORY[0x23189ADD0](v13, -1, -1);
  }

  else
  {
  }

  v18 = v0[3];
  sub_22BA106BC();
  v19 = sub_22B9C2E30();
  if (v19 > 3)
  {
    if ((v19 - 6) < 2 || v19 != 4)
    {
      goto LABEL_19;
    }

    v21 = "recoverableMessage";
  }

  else
  {
    if (v19 <= 1)
    {
      v20 = "ndPlayed";
      if (v19)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (v19 != 2)
    {
      goto LABEL_19;
    }

    v21 = "MessageEncryptedV3";
  }

  v20 = (v21 - 32);
LABEL_17:
  if (0x800000022BA1B9C0 == (v20 | 0x8000000000000000))
  {

    goto LABEL_22;
  }

LABEL_19:
  v22 = sub_22BA10C6C();

  if ((v22 & 1) == 0)
  {
    v24 = v0[4];
    if (__OFADD__(*v24, 1))
    {
      __break(1u);
      return result;
    }

    ++*v24;
  }

LABEL_22:
  v25 = v0[1];

  return v25();
}

uint64_t sub_22B99B6DC()
{
  v1 = *(*v0 + 88);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B99B7E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B945AC8;

  return sub_22B996CB0(a1, a2);
}

uint64_t sub_22B99B8A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B947814;

  return sub_22B997250(a1, a2);
}

uint64_t sub_22B99B958(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B943E68;

  return sub_22B99A814(a1, a2);
}

uint64_t sub_22B99BA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = xmmword_22BA172A0;
  v8 = *sub_22B9358B4((a1 + 16), *(a1 + 40));
  v27 = sub_22B9B580C();
  v28 = v9;
  v10 = v5[1];
  v29 = *v5;
  v30 = v10;
  v31 = a3;
  v32 = a4;
  v34 = *(v5 + 11);
  v33 = v34;

  result = sub_22B99C318(&v34, v25);
  v12 = 0;
  v13 = MEMORY[0x277D84F90];
LABEL_2:
  if (v12 <= 5)
  {
    v14 = 5;
  }

  else
  {
    v14 = v12;
  }

  v15 = v14 + 1;
  v16 = 16 * v12 + 40;
  while (1)
  {
    if (v12 == 5)
    {
      sub_22B9349C8(&qword_27D8D5478, &unk_22BA173E0);
      swift_arrayDestroy();
      v25[0] = v13;
      sub_22B9349C8(&qword_27D8D4EF0, &qword_22BA13990);
      sub_22B95194C(&qword_281414C28, &qword_27D8D4EF0, &qword_22BA13990);
      sub_22BA0FFAC();

      v23 = [objc_allocWithZone(MEMORY[0x277CBC4F8]) init];
      v24 = sub_22BA0FFCC();

      [v23 setName_];

      return v23;
    }

    if (v15 == ++v12)
    {
      break;
    }

    v17 = v16 + 16;
    v18 = *(&v25[2] + v16);
    v16 += 16;
    if (v18)
    {
      v19 = *(&v25[-1] + v17);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22B97FB74(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
      }

      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_22B97FB74((v20 > 1), v21 + 1, 1, v13);
        v13 = result;
      }

      *(v13 + 16) = v21 + 1;
      v22 = v13 + 16 * v21;
      *(v22 + 32) = v19;
      *(v22 + 40) = v18;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

id sub_22B99BC6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_22B951A54(0, &qword_281414AB0, 0x277CBC3B8);
  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22BA172B0;
  sub_22B951A54(0, &qword_281414B80, 0x277CBC5F8);
  sub_22BA082E0(*(v2 + 16));
  v7 = *MEMORY[0x277CBBF28];
  sub_22BA0FFFC();
  *(v6 + 32) = sub_22BA1047C();
  v8 = sub_22B9358B4((a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  sub_22B99BEB0(*v8, v2);
  v9 = sub_22BA1066C();
  v10 = sub_22B99BA10(a1, a2, 0x6863746566, 0xE500000000000000);
  [v9 setGroup_];

  v11 = (a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
  v12 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  [v12 setQualityOfService_];
  [v12 setAllowsCellularAccess_];
  v13 = v11[3];
  v14 = v11[4];
  sub_22B9358B4(v11, v13);
  v15 = (*(v14 + 8))(v13, v14);
  if (v15)
  {
    v16 = v15;
    [v12 setAllowsCellularAccess_];
    [v12 setXPCActivity_];
    swift_unknownObjectRelease();
  }

  [v9 setConfiguration_];

  [v9 setFetchAllChanges_];
  return v9;
}

unint64_t sub_22B99BEB0(uint64_t a1, uint64_t a2)
{
  v23 = type metadata accessor for CloudState();
  v24 = &off_283F589F0;
  v22[0] = a1;
  v4 = sub_22B9358B4(v22, v23);
  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  v7 = *v4;

  v8 = sub_22BA08AEC(v6, v5);
  v9 = *(a2 + 56);
  if ((v9 & 1) == 0)
  {
    v10 = *(a2 + 64);
    v11 = *(a2 + 72);
  }

  sub_22B951A54(0, &qword_281414AA8, 0x277CBC3A0);
  v12 = *(a2 + 40);

  v13 = v8;
  v14 = sub_22BA1069C();
  v15 = v14;
  if ((v9 & 1) == 0 && !v8)
  {
    [v14 setFetchNewestChangesFirst_];
  }

  sub_22BA082E0(*(a2 + 16));
  v16 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
  v17 = sub_22BA0FFCC();

  v18 = [v16 initWithZoneName_];

  sub_22B9349C8(&qword_27D8D5578, &qword_22BA173F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22BA13CB0;
  *(inited + 32) = [v18 zoneID];
  *(inited + 40) = v15;
  v20 = sub_22B9BBCE4(inited);
  swift_setDeallocating();
  sub_22B936BEC(inited + 32, &qword_27D8D5580, &qword_22BA173F8);

  sub_22B936C4C(v22);
  return v20;
}

uint64_t sub_22B99C0A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v14 = type metadata accessor for CloudState();
  v15 = &off_283F589F0;
  v13[0] = a1;
  v8 = *(*sub_22B9358B4(v13, v14) + 56);

  if (v8)
  {
    [v8 setSyncJobStateWithState_];
  }

  v9 = *(*sub_22B9358B4(v13, v14) + 56);
  if (v9)
  {
    if (a3 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = a3;
    }

    [v9 setLastSyncDownloadProgress_];
  }

  v11 = *(*sub_22B9358B4(v13, v14) + 56);
  if (v11)
  {
    [v11 setCloudKitHasAvailableRecordsToDownload_];
  }

  return sub_22B936C4C(v13);
}

void sub_22B99C224(id a1, void *a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    sub_22B99C238(a1, a2, a3);
  }
}

void sub_22B99C238(id a1, void *a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 2)
  {
    sub_22B99C258(a1, a2, a3 & 1);
  }

  else if (!(a3 >> 6))
  {
  }
}

void sub_22B99C258(void *a1, void *a2, char a3)
{
  if (a3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2;
  }
}

unint64_t sub_22B99C2C4()
{
  result = qword_27D8D5570;
  if (!qword_27D8D5570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5570);
  }

  return result;
}

uint64_t sub_22B99C318(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&qword_27D8D5478, &unk_22BA173E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B99C388()
{
  v0 = sub_22BA0FA9C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_22BA0FA8C();
  qword_28141ADA0 = result;
  return result;
}

uint64_t sub_22B99C3C8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DatabaseRecord();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 data];
  if (v8)
  {
    v9 = v8;
    v10 = sub_22BA0FCAC();
    v12 = v11;

    if (qword_2814157B8 != -1)
    {
      swift_once();
    }

    sub_22B99CBD8();
    sub_22BA0FA7C();
    sub_22B9359BC(v10, v12);
    return sub_22B99CC30(v7, a1);
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v13 = sub_22BA0FEFC();
    sub_22B936CA8(v13, qword_28141AD10);
    v14 = v1;
    v15 = sub_22BA0FEDC();
    v16 = sub_22BA1044C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v46 = v18;
      *v17 = 136315138;
      v19 = [v14 parent];
      if (v19 && (v20 = v19, v21 = [v19 recordName], v20, v21))
      {
        v22 = sub_22BA0FFFC();
        v24 = v23;

        v25 = v22;
      }

      else
      {
        v25 = 0xD00000000000001CLL;
        v24 = 0x800000022BA1DBF0;
      }

      v27 = sub_22B99153C(v25, v24, &v46);

      *(v17 + 4) = v27;
      _os_log_impl(&dword_22B92A000, v15, v16, "unknown domainModel, no data found for RemoteRecordData with recordName %s", v17, 0xCu);
      sub_22B936C4C(v18);
      MEMORY[0x23189ADD0](v18, -1, -1);
      MEMORY[0x23189ADD0](v17, -1, -1);
    }

    v28 = [v14 parent];
    if (v28 && (v29 = v28, v30 = [v28 recordName], v29, v30))
    {
      v31 = sub_22BA0FFFC();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v34 = [v14 parent];
    if (v34 && (v35 = v34, v36 = [v34 recordType], v35, v36))
    {
      v37 = sub_22BA0FFFC();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    *a1 = v31;
    *(a1 + 8) = v33;
    *(a1 + 16) = v37;
    *(a1 + 24) = v39;
    v40 = type metadata accessor for UnknownRecord();
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    v41 = v40[10];
    v42 = sub_22BA0FD8C();
    v43 = *(*(v42 - 8) + 56);
    v43(a1 + v41, 1, 1, v42);
    v43(a1 + v40[11], 1, 1, v42);
    v44 = (a1 + v40[12]);
    *v44 = 0;
    v44[1] = 0;

    return swift_storeEnumTagMultiPayload();
  }
}

unint64_t sub_22B99CBD8()
{
  result = qword_281415AB0;
  if (!qword_281415AB0)
  {
    type metadata accessor for DatabaseRecord();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415AB0);
  }

  return result;
}

uint64_t sub_22B99CC30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_22B99CC94(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22B99CCA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22B99CCE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B99CD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 249) = a8;
  *(v8 + 248) = a6;
  *(v8 + 208) = a5;
  *(v8 + 216) = v10;
  *(v8 + 192) = a3;
  *(v8 + 200) = a4;
  *(v8 + 176) = a1;
  *(v8 + 184) = a2;
  return MEMORY[0x2822009F8](sub_22B99CD70, 0, 0);
}

uint64_t sub_22B99CD70()
{
  v34 = v0;
  if (*(v0 + 248))
  {
    v1 = *(v0 + 200);
    v2 = v1;
    if (qword_281414D30 != -1)
    {
      swift_once();
      v2 = *(v0 + 200);
    }

    v3 = *(v0 + 208);
    v4 = *(v0 + 192);
    v5 = sub_22BA0FEFC();
    sub_22B936CA8(v5, qword_28141AD40);
    sub_22B935B38(v4, v0 + 120);
    v6 = v1;
    v7 = sub_22BA0FEDC();
    v8 = sub_22BA1044C();
    sub_22B99E324(v2, v3, 1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 136315394;
      v11 = sub_22B9358B4((v0 + 120), *(v0 + 144));
      v12 = *v11;
      v13 = v11[1];

      sub_22B936C4C((v0 + 120));
      v14 = sub_22B99153C(v12, v13, &v33);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      *(v0 + 160) = v1;
      v15 = v1;
      sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
      v16 = sub_22BA1005C();
      v18 = sub_22B99153C(v16, v17, &v33);

      *(v9 + 14) = v18;
      _os_log_impl(&dword_22B92A000, v7, v8, "Read from %s encountered error: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v10, -1, -1);
      MEMORY[0x23189ADD0](v9, -1, -1);
    }

    else
    {

      sub_22B936C4C((v0 + 120));
    }

    goto LABEL_14;
  }

  v19 = *(v0 + 208);
  sub_22BA106BC();
  v20 = sub_22B9C2E30();
  if (!v20)
  {
LABEL_14:
    v31 = *(v0 + 8);

    return v31();
  }

  if (v20 == 7)
  {
    v21 = 6;
  }

  else
  {
    v21 = v20;
  }

  *(v0 + 250) = v21;
  v22 = (*(v0 + 176) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase);
  v23 = *v22;
  v24 = v22[1];
  ObjectType = swift_getObjectType();
  *(v0 + 168) = v19;
  v26 = *(v24 + 80);
  v32 = (v26 + *v26);
  v27 = v26[1];
  v28 = swift_task_alloc();
  *(v0 + 224) = v28;
  v29 = sub_22B99E370();
  *v28 = v0;
  v28[1] = sub_22B99D120;

  return (v32)(v0 + 168, 1, v29, &off_281414A48, ObjectType, v24);
}

uint64_t sub_22B99D120(void *a1)
{
  v4 = *(*v2 + 224);
  v7 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_22B99D4A4;
  }

  else
  {
    sub_22B930C58(a1);
    v5 = sub_22B99D250;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B99D250()
{
  v1 = *(v0 + 249);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 176);
  v5 = *(v0 + 250);
  v6 = sub_22B9358B4(*(v0 + 192), *(*(v0 + 192) + 24));
  v8 = *(v6 + 1);
  v7 = *(v6 + 2);
  *(v0 + 16) = *v6;
  *(v0 + 32) = v8;
  *(v0 + 48) = v7;
  v10 = *(v6 + 4);
  v9 = *(v6 + 5);
  v11 = *(v6 + 3);
  *(v0 + 112) = v6[12];
  *(v0 + 80) = v10;
  *(v0 + 96) = v9;
  *(v0 + 64) = v11;
  sub_22B99E3BC(v2, v4, v3, v0 + 16, v5);
  if (v1 == 1)
  {
    v12 = swift_task_alloc();
    *(v0 + 240) = v12;
    *v12 = v0;
    v12[1] = sub_22B99D3B0;
    v13 = *(v0 + 208);
    v14 = *(v0 + 216);
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);

    return sub_22B9DA594(v16, v15, v13, 0);
  }

  else
  {
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_22B99D3B0()
{
  v1 = *(*v0 + 240);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B99D4BC(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9)
{
  *(v9 + 96) = a9;
  *(v9 + 161) = a8;
  *(v9 + 88) = a2;
  *(v9 + 160) = a6;
  *(v9 + 72) = a4;
  *(v9 + 80) = a5;
  *(v9 + 64) = a1;
  return MEMORY[0x2822009F8](sub_22B99D4F0, 0, 0);
}

uint64_t sub_22B99D4F0()
{
  v39 = v0;
  if (*(v0 + 160))
  {
    v1 = *(v0 + 80);
    v2 = v1;
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 80);
    v4 = *(v0 + 64);
    v5 = sub_22BA0FEFC();
    sub_22B936CA8(v5, qword_28141AD40);
    swift_unknownObjectRetain();
    sub_22B973C70(v3, 1);
    v6 = sub_22BA0FEDC();
    v7 = sub_22BA1044C();
    swift_unknownObjectRelease();
    sub_22B97721C(v3, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 64);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v38[0] = v10;
      *v9 = 136315394;
      sub_22BA0FDCC();
      sub_22B944034();
      v11 = sub_22BA10C1C();
      v13 = sub_22B99153C(v11, v12, v38);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      *(v0 + 56) = v1;
      v14 = v1;
      sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
      v15 = sub_22BA1005C();
      v17 = sub_22B99153C(v15, v16, v38);

      *(v9 + 14) = v17;
      _os_log_impl(&dword_22B92A000, v6, v7, "Fetch complete with error (sync: %s): %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v10, -1, -1);
      MEMORY[0x23189ADD0](v9, -1, -1);
    }

    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 64);
    v21 = sub_22BA0FEFC();
    *(v0 + 104) = sub_22B936CA8(v21, qword_28141AD40);
    swift_unknownObjectRetain();
    v22 = sub_22BA0FEDC();
    v23 = sub_22BA1046C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 64);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 136315138;
      v37 = v26;
      v38[0] = 0x2E636E7973;
      v38[1] = 0xE500000000000000;
      v27 = *sub_22B9358B4((v24 + 16), *(v24 + 40));
      v28 = sub_22B9B580C();
      MEMORY[0x231899730](v28);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v29 = sub_22BA10C1C();
      MEMORY[0x231899730](v29);

      v30 = sub_22B99153C(0x2E636E7973, 0xE500000000000000, &v37);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_22B92A000, v22, v23, "Fetch success (sync: %s)", v25, 0xCu);
      sub_22B936C4C(v26);
      MEMORY[0x23189ADD0](v26, -1, -1);
      MEMORY[0x23189ADD0](v25, -1, -1);
    }

    if (qword_281416778 != -1)
    {
      swift_once();
    }

    v31 = *(&xmmword_28141AEB0 + 1);
    *(v0 + 112) = xmmword_28141AEB0;
    *(v0 + 120) = v31;
    ObjectType = swift_getObjectType();
    *(v0 + 128) = ObjectType;
    v33 = *(v31 + 96);
    v36 = (v33 + *v33);
    v34 = v33[1];
    v35 = swift_task_alloc();
    *(v0 + 136) = v35;
    *v35 = v0;
    v35[1] = sub_22B99DA3C;

    return v36(ObjectType, v31);
  }
}

uint64_t sub_22B99DA3C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v12 = (v2[15] + 128);
    v13 = (*v12 + **v12);
    v7 = (*v12)[1];
    v8 = swift_task_alloc();
    v2[18] = v8;
    *v8 = v4;
    v8[1] = sub_22B99DC28;
    v9 = v2[15];
    v10 = v2[14];
    v11 = v2[16];

    return v13(v11, v9);
  }
}

uint64_t sub_22B99DC28()
{
  v2 = *(*v1 + 144);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22B99DD58, 0, 0);
  }
}

uint64_t sub_22B99DD58()
{
  v27 = v0;
  v1 = *(v0 + 104);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  Current = CFAbsoluteTimeGetCurrent();
  sub_22B935B38(v2, v0 + 16);
  swift_unknownObjectRetain();
  v5 = sub_22BA0FEDC();
  v6 = sub_22BA1046C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 64);
    v8 = Current - *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315650;
    v11 = sub_22B9358B4((v0 + 16), *(v0 + 40));
    v12 = *v11;
    v13 = v11[1];

    sub_22B936C4C((v0 + 16));
    v14 = sub_22B99153C(v12, v13, &v24);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v8;
    *(v9 + 22) = 2080;
    v25 = 0x2E636E7973;
    v26 = 0xE500000000000000;
    v15 = *sub_22B9358B4((v7 + 16), *(v7 + 40));
    v16 = sub_22B9B580C();
    MEMORY[0x231899730](v16);

    MEMORY[0x231899730](46, 0xE100000000000000);
    sub_22BA0FDCC();
    sub_22B944034();
    v17 = sub_22BA10C1C();
    MEMORY[0x231899730](v17);

    v18 = sub_22B99153C(v25, v26, &v24);

    *(v9 + 24) = v18;
    _os_log_impl(&dword_22B92A000, v5, v6, "Total time to fetch %s records was %f (%s)", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v10, -1, -1);
    MEMORY[0x23189ADD0](v9, -1, -1);
  }

  else
  {

    sub_22B936C4C((v0 + 16));
  }

  if (*(v0 + 161) == 1)
  {
    v19 = swift_task_alloc();
    *(v0 + 152) = v19;
    *v19 = v0;
    v19[1] = sub_22B99E06C;
    v20 = *(v0 + 96);
    v21 = *(v0 + 72);

    return sub_22B9DA014();
  }

  else
  {
    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_22B99E06C()
{
  v1 = *(*v0 + 152);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B99E160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_22B945AC8;

  return sub_22B99CD38(a1, a2, a3, a4, a5, a6 & 1, v17, v14);
}

uint64_t sub_22B99E248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = *v5;
  v12 = *(v5 + 16);
  v13 = *(v5 + 24);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_22B943E68;

  return sub_22B99D4BC(a1, v11, v15, a3, a4, a5 & 1, v16, v12, v13);
}

void sub_22B99E324(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {

    a1 = a2;
  }
}

unint64_t sub_22B99E370()
{
  result = qword_281414A30;
  if (!qword_281414A30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281414A30);
  }

  return result;
}

uint64_t sub_22B99E3BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v109[5] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = sub_22BA0FC4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v96 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109[3] = &type metadata for SyncZoneInfo;
  v109[4] = &off_283F57268;
  v14 = swift_allocObject();
  v109[0] = v14;
  v15 = *(a4 + 80);
  *(v14 + 80) = *(a4 + 64);
  *(v14 + 96) = v15;
  *(v14 + 112) = *(a4 + 96);
  v16 = *(a4 + 16);
  *(v14 + 16) = *a4;
  *(v14 + 32) = v16;
  v17 = *(a4 + 48);
  *(v14 + 48) = *(a4 + 32);
  *(v14 + 64) = v17;
  if ((v8 - 1) >= 2)
  {
    sub_22B951748(a4, v106);
  }

  else
  {
    v18 = sub_22B9358B4(v109, &type metadata for SyncZoneInfo)[6];
    sub_22B951748(a4, v106);

    v20 = sub_22B951A9C(v19);

    if (v20)
    {
      v21 = v20 >> 62;
      if (v20 >> 62)
      {
        v22 = sub_22BA1080C();
        if (v22)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22)
        {
LABEL_5:
          v101 = v22;
          v92 = v9;
          v95 = a2;
          if (qword_281414D30 != -1)
          {
            swift_once();
          }

          v23 = sub_22BA0FEFC();
          v24 = sub_22B936CA8(v23, qword_28141AD40);
          sub_22B935B38(v109, v106);
          swift_bridgeObjectRetain_n();
          v25 = a1;
          v97 = v24;
          v26 = sub_22BA0FEDC();
          v27 = sub_22BA1046C();

          v28 = os_log_type_enabled(v26, v27);
          v100 = v20;
          if (v28)
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v104 = v30;
            *v29 = 136315650;
            v31 = [v25 recordID];
            v32 = [v31 recordName];

            v33 = sub_22BA0FFFC();
            v35 = v34;

            v36 = sub_22B99153C(v33, v35, &v104);

            *(v29 + 4) = v36;
            *(v29 + 12) = 2080;
            v37 = sub_22B9358B4(v106, v107);
            v38 = sub_22BA082E0(*(v37 + 16));
            v40 = v39;
            sub_22B936C4C(v106);
            v41 = sub_22B99153C(v38, v40, &v104);

            *(v29 + 14) = v41;
            *(v29 + 22) = 2048;
            v20 = v100;
            if (v21)
            {
              v42 = sub_22BA1080C();
            }

            else
            {
              v42 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v44 = v96;

            *(v29 + 24) = v42;

            _os_log_impl(&dword_22B92A000, v26, v27, "Record %s in %s has %ld assets", v29, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23189ADD0](v30, -1, -1);
            MEMORY[0x23189ADD0](v29, -1, -1);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            sub_22B936C4C(v106);
            v44 = v96;
          }

          v45 = v101;
          if (v101 < 1)
          {
            __break(1u);
          }

          v46 = 0;
          v103 = (v95 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_fileProvider);
          v102 = v20 & 0xC000000000000001;
          v99 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_identifier;
          v98 = (v10 + 8);
          *&v43 = 136315138;
          v94 = v43;
          *&v43 = 136315650;
          v91 = v43;
          v47 = v92;
          do
          {
            if (v102)
            {
              v48 = MEMORY[0x231899FA0](v46, v20);
            }

            else
            {
              v48 = *(v20 + 8 * v46 + 32);
            }

            v49 = v48;
            v50 = *sub_22B9358B4(v103, v103[3]);
            v108 = &off_283F53B48;
            v107 = &type metadata for FileManagerProvider;
            v106[0] = v50;
            v51 = v50;
            v52 = [v49 fileURL];
            if (!v52)
            {
              v63 = v49;
              v64 = sub_22BA0FEDC();
              v65 = sub_22BA1044C();

              if (os_log_type_enabled(v64, v65))
              {
                v66 = swift_slowAlloc();
                v67 = swift_slowAlloc();
                v104 = v67;
                *v66 = v94;
                v68 = [v63 UUID];
                if (v68)
                {
                  v69 = v68;
                  v70 = sub_22BA0FFFC();
                  v72 = v71;
                }

                else
                {
                  v72 = 0xE800000000000000;
                  v70 = 0x3E6469206C696E3CLL;
                }

                v88 = sub_22B99153C(v70, v72, &v104);

                *(v66 + 4) = v88;
                _os_log_impl(&dword_22B92A000, v64, v65, "Asset %s has no file url.", v66, 0xCu);
                sub_22B936C4C(v67);
                MEMORY[0x23189ADD0](v67, -1, -1);
                MEMORY[0x23189ADD0](v66, -1, -1);

                v44 = v96;
                v20 = v100;
                v45 = v101;
              }

              else
              {
              }

              goto LABEL_17;
            }

            v53 = v52;
            sub_22BA0FC0C();

            v54 = sub_22BA0FD9C();
            v56 = v55;
            v57 = *sub_22B9358B4(v106, v107);
            LOBYTE(v104) = 0;
            sub_22BA0FB7C();
            v58 = sub_22BA0FFCC();

            v59 = [v57 fileExistsAtPath:v58 isDirectory:&v104];

            if (v59)
            {
              v60 = *sub_22B9358B4(v106, v107);
              v61 = sub_22BA0FBBC();
              v104 = 0;
              LODWORD(v60) = [v60 removeItemAtURL:v61 error:&v104];

              if (!v60)
              {
                v73 = v104;
                v74 = sub_22BA0FB6C();

                swift_willThrow();
                sub_22B975FD8(16, v74, 0, 0);
                v104 = 0x636E7953206E6920;
                v105 = 0xE90000000000005BLL;
                MEMORY[0x231899730](v54, v56);
                MEMORY[0x231899730](93, 0xE100000000000000);
                v75 = v104;
                v76 = v105;

                v77 = v74;
                v78 = sub_22BA0FEDC();
                v79 = sub_22BA1044C();

                if (os_log_type_enabled(v78, v79))
                {
                  v80 = v75;
                  v81 = swift_slowAlloc();
                  v82 = swift_slowAlloc();
                  v93 = swift_slowAlloc();
                  v104 = v93;
                  *v81 = v91;
                  *(v81 + 4) = sub_22B99153C(0x7373615F6C696E3CLL, 0xEE003E64695F7465, &v104);
                  *(v81 + 12) = 2080;
                  v83 = sub_22B99153C(v80, v76, &v104);

                  *(v81 + 14) = v83;
                  *(v81 + 22) = 2112;
                  v84 = v74;
                  v85 = _swift_stdlib_bridgeErrorToNSError();
                  *(v81 + 24) = v85;
                  *v82 = v85;
                  _os_log_impl(&dword_22B92A000, v78, v79, "Failed to clean up asset with id %s%s: %@", v81, 0x20u);
                  sub_22B95DEF0(v82);
                  v86 = v82;
                  v47 = v92;
                  MEMORY[0x23189ADD0](v86, -1, -1);
                  v87 = v93;
                  swift_arrayDestroy();
                  MEMORY[0x23189ADD0](v87, -1, -1);
                  MEMORY[0x23189ADD0](v81, -1, -1);
                }

                else
                {
                }

                v44 = v96;
                goto LABEL_33;
              }

              v62 = v104;
            }

LABEL_33:
            v45 = v101;
            (*v98)(v44, v47);

            v20 = v100;
LABEL_17:
            ++v46;
            sub_22B957EE4(v106);
          }

          while (v45 != v46);
        }
      }
    }
  }

  result = sub_22B936C4C(v109);
  v90 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B99EDC0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_22B99EDDC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B99EE04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_22B99EE60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22B99EECC()
{
  sub_22BA10D3C();
  sub_22BA1008C();
  return sub_22BA10D6C();
}

uint64_t sub_22B99EF28()
{
  sub_22BA10D3C();
  sub_22BA1008C();
  return sub_22BA10D6C();
}

uint64_t sub_22B99EF70@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22BA10AAC();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_22B99EFE8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_22BA10AAC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_22B99F040(uint64_t a1)
{
  v2 = sub_22B99F598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B99F07C(uint64_t a1)
{
  v2 = sub_22B99F598();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_22B99F0B8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22B99F1C0(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

id sub_22B99F100()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22BA0FC8C();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_22BA0FB6C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_22B99F1C0(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22B9349C8(&qword_27D8D5588, &qword_22BA17598);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21 - v9;
  v11 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B99F598();
  sub_22BA10D8C();
  if (v2)
  {
    sub_22B936C4C(a1);
    return;
  }

  sub_22B9363C8();
  sub_22BA10AFC();
  v12 = v27[0];
  if (*(&v27[0] + 1) >> 60 == 15)
  {
    v24 = *&v27[0];
    (*(v6 + 8))(v10, v5);
  }

  else
  {
    v17 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_22B936A50(v12, *(&v12 + 1));
    v18 = sub_22B99F100();
    v24 = v12;
    v19 = v18;
    v20 = [v18 decodeObject];

    if (v20)
    {
      sub_22BA107AC();
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    v27[0] = v25;
    v27[1] = v26;
    if (*(&v26 + 1))
    {
      sub_22B99F640();
      if (swift_dynamicCast())
      {
        v13 = v28;
        v22 = [v28 string];
        v23 = sub_22BA0FFFC();

        sub_22B9359A8(v24, *(&v12 + 1));
        (*(v6 + 8))(v10, v5);
        v14 = v23;
        goto LABEL_7;
      }

      (*(v6 + 8))(v10, v5);
      sub_22B9359A8(v12, *(&v12 + 1));
    }

    else
    {
      (*(v6 + 8))(v10, v5);
      sub_22B9359A8(v12, *(&v12 + 1));
      sub_22B949698(v27);
    }
  }

  v13 = 0;
  v14 = 0;
LABEL_7:

  v15 = v24;
  sub_22B936A3C(v24, *(&v12 + 1));
  v16 = v13;
  sub_22B936C4C(a1);

  sub_22B9359A8(v15, *(&v12 + 1));

  *a2 = v14;
  a2[1] = v12;
  a2[2] = v15;
  a2[3] = *(&v12 + 1);
  a2[4] = v13;
}

unint64_t sub_22B99F598()
{
  result = qword_281416018;
  if (!qword_281416018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416018);
  }

  return result;
}

unint64_t sub_22B99F5EC()
{
  result = qword_27D8D5590;
  if (!qword_27D8D5590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5590);
  }

  return result;
}

unint64_t sub_22B99F640()
{
  result = qword_27D8D5598;
  if (!qword_27D8D5598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8D5598);
  }

  return result;
}

unint64_t sub_22B99F6B0()
{
  result = qword_27D8D55A0;
  if (!qword_27D8D55A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D55A0);
  }

  return result;
}

unint64_t sub_22B99F708()
{
  result = qword_27D8D55A8;
  if (!qword_27D8D55A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D55A8);
  }

  return result;
}

unint64_t sub_22B99F760()
{
  result = qword_281416008;
  if (!qword_281416008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416008);
  }

  return result;
}

unint64_t sub_22B99F7B8()
{
  result = qword_281416010;
  if (!qword_281416010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416010);
  }

  return result;
}

uint64_t sub_22B99F80C(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_22B9358B4(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_22B9A2CF4(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_22B9A2E30(v3, v4);
    }

    else
    {
      v6 = sub_22B9A2DAC(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_22B936C4C(v8);
  return v6;
}

void sub_22B99F8F8(uint64_t a1, uint64_t a2)
{
  sub_22B9349C8(&qword_27D8D5168, &unk_22BA15230);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22BA13CB0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  v5 = sub_22BA101DC();

  v6 = IMDMessageRecordCopyMessagesForGUIDs();

  if (v6)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_22B9A3568();
      sub_22BA101EC();
    }
  }
}

uint64_t sub_22B99FA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_22B99FA6C, 0, 0);
}

uint64_t sub_22B99FA6C()
{
  v77 = v0;
  v1 = &unk_28141A000;
  v2 = qword_28141ADC8;
  *(v0 + 72) = qword_28141ADC8;
  if (v2)
  {
    v3 = *(v0 + 40);
    v4 = qword_28141ADD0;
    *(v0 + 80) = qword_28141ADD0;
    v5 = [v3 guid];
    if (v5)
    {
      v8 = v5;
      v9 = sub_22BA0FFFC();
      v11 = v10;

      *(v0 + 88) = v9;
      *(v0 + 96) = v11;
      *(v0 + 104) = *(v4 + 232);
      *(v0 + 112) = (v4 + 232) & 0xFFFFFFFFFFFFLL | 0x55A1000000000000;
      if (qword_281416450 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v12 = sub_22BA1029C();
      v14 = v13;
      v15 = sub_22B9A0280;
LABEL_6:
      v5 = v15;
      v6 = v12;
      v7 = v14;
LABEL_7:

      return MEMORY[0x2822009F8](v5, v6, v7);
    }

    __break(1u);
    goto LABEL_47;
  }

  sub_22B952500();
  v16 = swift_allocError();
  swift_willThrow();
  sub_22B975FD8(12, v16, 0, 0);
  v17 = 0x281414000uLL;
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 48);
  v19 = sub_22BA0FEFC();
  sub_22B936CA8(v19, qword_28141AD10);
  v20 = v18;
  v21 = sub_22BA0FEDC();
  v22 = sub_22BA1044C();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 48);
  if (v23)
  {
    v75 = v19;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v76[0] = v26;
    *v25 = 136315138;
    v27 = [v24 guid];

    if (!v27)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v28 = sub_22BA0FFFC();
    v30 = v29;

    v31 = sub_22B99153C(v28, v30, v76);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_22B92A000, v21, v22, "Error checking if message item: %s was recently deleted", v25, 0xCu);
    sub_22B936C4C(v26);
    MEMORY[0x23189ADD0](v26, -1, -1);
    MEMORY[0x23189ADD0](v25, -1, -1);

    v1 = &unk_28141A000;
    v17 = 0x281414000;
    v19 = v75;
  }

  else
  {
  }

  v32 = *(v0 + 40);
  v33 = *(v0 + 48);
  v34 = IMDUpdateIMMessageItemWithIMMessageItemForceReplaceReplaceError();
  *(v0 + 120) = v34;
  if (v34)
  {
    v35 = v1[441];
    *(v0 + 128) = v35;
    if (v35)
    {
      v36 = qword_28141ADD0;
      *(v0 + 136) = qword_28141ADD0;
      *(v0 + 144) = *(v36 + 144);
      *(v0 + 152) = (v36 + 144) & 0xFFFFFFFFFFFFLL | 0x3082000000000000;
      if (qword_281416450 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v37 = sub_22BA1029C();
      v7 = v38;
      *(v0 + 160) = v37;
      *(v0 + 168) = v38;
      v5 = sub_22B9A0A0C;
      v6 = v37;
      goto LABEL_7;
    }

    v39 = swift_allocError();
    swift_willThrow();
    sub_22B975FD8(14, v39, 0, 0);
    if (*(v17 + 3352) != -1)
    {
      swift_once();
    }

    v40 = *(v0 + 48);
    sub_22B936CA8(v19, qword_28141AD10);
    v41 = v40;
    v42 = sub_22BA0FEDC();
    v43 = sub_22BA1044C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = v19;
      v45 = *(v0 + 48);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v45;
      *v47 = v45;
      v48 = v45;
      v19 = v44;
      _os_log_impl(&dword_22B92A000, v42, v43, "Error updating existing message item: %@", v46, 0xCu);
      sub_22B95DEF0(v47);
      v49 = v47;
      v17 = 0x281414000uLL;
      MEMORY[0x23189ADD0](v49, -1, -1);
      MEMORY[0x23189ADD0](v46, -1, -1);
    }

    v50 = *(v0 + 64);
    if (v50)
    {
      v51 = v1[441];
      *(v0 + 208) = v51;
      if (v51)
      {
        v52 = qword_28141ADD0;
        *(v0 + 216) = qword_28141ADD0;
        if (qword_2814161B8 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v53 = qword_28141ADF8;
        if (*(qword_28141ADF8 + 16) && (v54 = sub_22B990A58(*(v0 + 56), v50), (v55 & 1) != 0))
        {
          v56 = *(*(v53 + 56) + 8 * v54);
        }

        else
        {
          v56 = -1;
        }

        *(v0 + 224) = v56;
        swift_endAccess();
        *(v0 + 232) = *(v52 + 80);
        *(v0 + 240) = (v52 + 80) & 0xFFFFFFFFFFFFLL | 0x6675000000000000;
        if (qword_281416450 != -1)
        {
          swift_once();
        }

        sub_22BA102EC();
        v12 = sub_22BA1029C();
        v14 = v57;
        v15 = sub_22B9A13CC;
        goto LABEL_6;
      }

      v58 = swift_allocError();
      swift_willThrow();
      sub_22B975FD8(15, v58, 0, 0);
      if (*(v17 + 3352) != -1)
      {
        swift_once();
      }

      v59 = *(v0 + 48);
      sub_22B936CA8(v19, qword_28141AD10);
      v60 = v59;
      v61 = sub_22BA0FEDC();
      v62 = sub_22BA1044C();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = *(v0 + 48);
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v76[0] = v65;
        *v64 = 136315138;
        v66 = [v63 guid];

        if (!v66)
        {
LABEL_48:
          __break(1u);
          return MEMORY[0x2822009F8](v5, v6, v7);
        }

        v67 = *(v0 + 120);
        v68 = sub_22BA0FFFC();
        v70 = v69;

        v71 = sub_22B99153C(v68, v70, v76);

        *(v64 + 4) = v71;
        _os_log_impl(&dword_22B92A000, v61, v62, "Error re-associating existing message item: %s", v64, 0xCu);
        sub_22B936C4C(v65);
        MEMORY[0x23189ADD0](v65, -1, -1);
        MEMORY[0x23189ADD0](v64, -1, -1);
      }

      else
      {
        v72 = *(v0 + 48);
      }
    }

    else
    {
    }
  }

  v73 = *(v0 + 8);

  return v73();
}

uint64_t sub_22B9A0280()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 72);
  *(v0 + 248) = (*(v0 + 104))(*(v0 + 88), *(v0 + 96)) & 1;

  return MEMORY[0x2822009F8](sub_22B9A0308, 0, 0);
}

uint64_t sub_22B9A0308()
{
  v63 = v0;
  if (*(v0 + 248) != 1)
  {
    v18 = *(v0 + 40);
    v19 = *(v0 + 48);
    v20 = IMDUpdateIMMessageItemWithIMMessageItemForceReplaceReplaceError();
    *(v0 + 120) = v20;
    if (!v20)
    {
      goto LABEL_16;
    }

    v21 = qword_28141ADC8;
    *(v0 + 128) = qword_28141ADC8;
    if (v21)
    {
      v22 = qword_28141ADD0;
      *(v0 + 136) = qword_28141ADD0;
      *(v0 + 144) = *(v22 + 144);
      *(v0 + 152) = (v22 + 144) & 0xFFFFFFFFFFFFLL | 0x3082000000000000;
      if (qword_281416450 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v23 = sub_22BA1029C();
      v13 = v24;
      *(v0 + 160) = v23;
      *(v0 + 168) = v24;
      v11 = sub_22B9A0A0C;
      v12 = v23;
    }

    else
    {
      sub_22B952500();
      v27 = swift_allocError();
      swift_willThrow();
      sub_22B975FD8(14, v27, 0, 0);
      if (qword_281414D18 != -1)
      {
        swift_once();
      }

      v28 = *(v0 + 48);
      v29 = sub_22BA0FEFC();
      sub_22B936CA8(v29, qword_28141AD10);
      v30 = v28;
      v31 = sub_22BA0FEDC();
      v32 = sub_22BA1044C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = *(v0 + 48);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        *(v34 + 4) = v33;
        *v35 = v33;
        v36 = v33;
        _os_log_impl(&dword_22B92A000, v31, v32, "Error updating existing message item: %@", v34, 0xCu);
        sub_22B95DEF0(v35);
        MEMORY[0x23189ADD0](v35, -1, -1);
        MEMORY[0x23189ADD0](v34, -1, -1);
      }

      v37 = *(v0 + 64);
      if (!v37)
      {

        goto LABEL_16;
      }

      v38 = qword_28141ADC8;
      *(v0 + 208) = qword_28141ADC8;
      if (!v38)
      {
        v47 = swift_allocError();
        swift_willThrow();
        sub_22B975FD8(15, v47, 0, 0);
        if (qword_281414D18 != -1)
        {
          swift_once();
        }

        v48 = *(v0 + 48);
        sub_22B936CA8(v29, qword_28141AD10);
        v49 = v48;
        v50 = sub_22BA0FEDC();
        v51 = sub_22BA1044C();
        if (!os_log_type_enabled(v50, v51))
        {
          v61 = *(v0 + 48);

          goto LABEL_16;
        }

        v52 = *(v0 + 48);
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v62[0] = v54;
        *v53 = 136315138;
        v55 = [v52 guid];

        if (v55)
        {
          v56 = *(v0 + 120);
          v57 = sub_22BA0FFFC();
          v59 = v58;

          v60 = sub_22B99153C(v57, v59, v62);

          *(v53 + 4) = v60;
          _os_log_impl(&dword_22B92A000, v50, v51, "Error re-associating existing message item: %s", v53, 0xCu);
          sub_22B936C4C(v54);
          MEMORY[0x23189ADD0](v54, -1, -1);
          MEMORY[0x23189ADD0](v53, -1, -1);

          goto LABEL_16;
        }

        goto LABEL_42;
      }

      v39 = qword_28141ADD0;
      *(v0 + 216) = qword_28141ADD0;
      if (qword_2814161B8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v40 = qword_28141ADF8;
      if (*(qword_28141ADF8 + 16) && (v41 = sub_22B990A58(*(v0 + 56), v37), (v42 & 1) != 0))
      {
        v43 = *(*(v40 + 56) + 8 * v41);
      }

      else
      {
        v43 = -1;
      }

      *(v0 + 224) = v43;
      swift_endAccess();
      *(v0 + 232) = *(v39 + 80);
      *(v0 + 240) = (v39 + 80) & 0xFFFFFFFFFFFFLL | 0x6675000000000000;
      if (qword_281416450 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v44 = sub_22BA1029C();
      v46 = v45;
      v11 = sub_22B9A13CC;
      v12 = v44;
      v13 = v46;
    }

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD10);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1042C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (!v6)
  {

    goto LABEL_16;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v62[0] = v9;
  *v8 = 136315138;
  v10 = [v7 guid];

  if (!v10)
  {
    __break(1u);
LABEL_42:
    __break(1u);
    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  v14 = sub_22BA0FFFC();
  v16 = v15;

  v17 = sub_22B99153C(v14, v16, v62);

  *(v8 + 4) = v17;
  _os_log_impl(&dword_22B92A000, v4, v5, "Not importing %s as it was recently deleted", v8, 0xCu);
  sub_22B936C4C(v9);
  MEMORY[0x23189ADD0](v9, -1, -1);
  MEMORY[0x23189ADD0](v8, -1, -1);

LABEL_16:
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_22B9A0A0C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 128);
  (*(v0 + 144))(*(v0 + 120));

  return MEMORY[0x2822009F8](sub_22B9A0A80, 0, 0);
}

uint64_t sub_22B9A0A80()
{
  v46 = v0;
  v1 = *(v0 + 120);
  v2 = [*(v0 + 48) notificationIDSTokenURI];
  [v1 setNotificationIDSTokenURI_];

  v3 = qword_28141ADC8;
  *(v0 + 176) = qword_28141ADC8;
  if (v3)
  {
    v4 = qword_28141ADD0;
    *(v0 + 184) = qword_28141ADD0;
    *(v0 + 192) = *(v4 + 160);
    *(v0 + 200) = (v4 + 160) & 0xFFFFFFFFFFFFLL | 0xD00E000000000000;
    v5 = *(v0 + 160);
    v6 = *(v0 + 168);
    v7 = sub_22B9A0FCC;
LABEL_3:

    return MEMORY[0x2822009F8](v7, v5, v6);
  }

  sub_22B952500();
  v8 = swift_allocError();
  swift_willThrow();
  sub_22B975FD8(14, v8, 0, 0);
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 48);
  v10 = sub_22BA0FEFC();
  sub_22B936CA8(v10, qword_28141AD10);
  v11 = v9;
  v12 = sub_22BA0FEDC();
  v13 = sub_22BA1044C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 48);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v14;
    *v16 = v14;
    v17 = v14;
    _os_log_impl(&dword_22B92A000, v12, v13, "Error updating existing message item: %@", v15, 0xCu);
    sub_22B95DEF0(v16);
    MEMORY[0x23189ADD0](v16, -1, -1);
    MEMORY[0x23189ADD0](v15, -1, -1);
  }

  v18 = *(v0 + 64);
  if (v18)
  {
    v19 = qword_28141ADC8;
    *(v0 + 208) = qword_28141ADC8;
    if (v19)
    {
      v20 = qword_28141ADD0;
      *(v0 + 216) = qword_28141ADD0;
      if (qword_2814161B8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v21 = qword_28141ADF8;
      if (*(qword_28141ADF8 + 16) && (v22 = sub_22B990A58(*(v0 + 56), v18), (v23 & 1) != 0))
      {
        v24 = *(*(v21 + 56) + 8 * v22);
      }

      else
      {
        v24 = -1;
      }

      *(v0 + 224) = v24;
      swift_endAccess();
      *(v0 + 232) = *(v20 + 80);
      *(v0 + 240) = (v20 + 80) & 0xFFFFFFFFFFFFLL | 0x6675000000000000;
      if (qword_281416450 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v25 = sub_22BA1029C();
      v27 = v26;
      v7 = sub_22B9A13CC;
      v5 = v25;
      v6 = v27;
      goto LABEL_3;
    }

    v28 = swift_allocError();
    swift_willThrow();
    sub_22B975FD8(15, v28, 0, 0);
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 48);
    sub_22B936CA8(v10, qword_28141AD10);
    v30 = v29;
    v31 = sub_22BA0FEDC();
    v32 = sub_22BA1044C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 48);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45 = v35;
      *v34 = 136315138;
      v36 = [v33 guid];

      if (!v36)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v7, v5, v6);
      }

      v37 = *(v0 + 120);
      v38 = sub_22BA0FFFC();
      v40 = v39;

      v41 = sub_22B99153C(v38, v40, &v45);

      *(v34 + 4) = v41;
      _os_log_impl(&dword_22B92A000, v31, v32, "Error re-associating existing message item: %s", v34, 0xCu);
      sub_22B936C4C(v35);
      MEMORY[0x23189ADD0](v35, -1, -1);
      MEMORY[0x23189ADD0](v34, -1, -1);
    }

    else
    {
      v42 = *(v0 + 48);
    }
  }

  else
  {
  }

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_22B9A0FCC()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 176);
  (*(v0 + 192))();

  return MEMORY[0x2822009F8](sub_22B9A103C, 0, 0);
}

uint64_t sub_22B9A103C()
{
  v33 = v0;
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = qword_28141ADC8;
    *(v0 + 208) = qword_28141ADC8;
    if (v2)
    {
      v3 = qword_28141ADD0;
      *(v0 + 216) = qword_28141ADD0;
      if (qword_2814161B8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v4 = qword_28141ADF8;
      if (*(qword_28141ADF8 + 16) && (v5 = sub_22B990A58(*(v0 + 56), v1), (v6 & 1) != 0))
      {
        v7 = *(*(v4 + 56) + 8 * v5);
      }

      else
      {
        v7 = -1;
      }

      *(v0 + 224) = v7;
      swift_endAccess();
      *(v0 + 232) = *(v3 + 80);
      *(v0 + 240) = (v3 + 80) & 0xFFFFFFFFFFFFLL | 0x6675000000000000;
      if (qword_281416450 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v8 = sub_22BA1029C();
      v10 = v9;
      v11 = sub_22B9A13CC;
      v12 = v8;
      v13 = v10;

      return MEMORY[0x2822009F8](v11, v12, v13);
    }

    sub_22B952500();
    v14 = swift_allocError();
    swift_willThrow();
    sub_22B975FD8(15, v14, 0, 0);
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 48);
    v16 = sub_22BA0FEFC();
    sub_22B936CA8(v16, qword_28141AD10);
    v17 = v15;
    v18 = sub_22BA0FEDC();
    v19 = sub_22BA1044C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 48);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136315138;
      v23 = [v20 guid];

      if (!v23)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v11, v12, v13);
      }

      v24 = *(v0 + 120);
      v25 = sub_22BA0FFFC();
      v27 = v26;

      v28 = sub_22B99153C(v25, v27, &v32);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_22B92A000, v18, v19, "Error re-associating existing message item: %s", v21, 0xCu);
      sub_22B936C4C(v22);
      MEMORY[0x23189ADD0](v22, -1, -1);
      MEMORY[0x23189ADD0](v21, -1, -1);
    }

    else
    {
      v29 = *(v0 + 48);
    }
  }

  else
  {
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_22B9A13CC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 208);
  (*(v0 + 232))(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 224));

  return MEMORY[0x2822009F8](sub_22B9A1448, 0, 0);
}

uint64_t sub_22B9A1448()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9A14C8()
{
  v1 = *(v0 + 16);
  v2 = IMDCreateIMDMessageRecordRefFromIMMessageItem();
  *(v0 + 24) = v2;
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = v2;
  v4 = [*(v0 + 16) isFromMe];
  v5 = *(v0 + 16);
  if (!v4)
  {
    v6 = [v5 sender];
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v6 = [v5 handle];
  if (!v6)
  {
LABEL_11:

LABEL_12:
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v15 = sub_22BA0FEFC();
    sub_22B936CA8(v15, qword_28141AD10);
    v16 = sub_22BA0FEDC();
    v17 = sub_22BA1044C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22B92A000, v16, v17, "Could not get message record ref or handle during IMMessageItem creation", v18, 2u);
      MEMORY[0x23189ADD0](v18, -1, -1);
    }

    goto LABEL_16;
  }

LABEL_4:
  v7 = v6;
  v8 = sub_22BA0FFFC();
  v10 = v9;

  *(v0 + 32) = v10;
  *(v0 + 40) = v8;
  v11 = qword_28141ADC8;
  *(v0 + 48) = qword_28141ADC8;
  if (v11)
  {
    v12 = qword_28141ADD0;
    *(v0 + 56) = qword_28141ADD0;
    *(v0 + 64) = *(v12 + 152);
    *(v0 + 72) = (v12 + 152) & 0xFFFFFFFFFFFFLL | 0x9C22000000000000;
    if (qword_281416450 != -1)
    {
      swift_once();
    }

    sub_22BA102EC();
    v14 = sub_22BA1029C();
    *(v0 + 80) = v14;
    *(v0 + 88) = v13;

    return MEMORY[0x2822009F8](sub_22B9A189C, v14, v13);
  }

  sub_22B952500();
  v20 = swift_allocError();
  swift_willThrow();
  sub_22B975FD8(10, v20, 0, 0);
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v21 = sub_22BA0FEFC();
  sub_22B936CA8(v21, qword_28141AD10);
  v22 = v20;
  v16 = sub_22BA0FEDC();
  v23 = sub_22BA1044C();

  v24 = os_log_type_enabled(v16, v23);
  v25 = *(v0 + 24);
  if (!v24)
  {

    goto LABEL_17;
  }

  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  *v26 = 138412290;
  v28 = v20;
  v29 = _swift_stdlib_bridgeErrorToNSError();
  *(v26 + 4) = v29;
  *v27 = v29;
  _os_log_impl(&dword_22B92A000, v16, v23, "Could not create IMMessageItem %@", v26, 0xCu);
  sub_22B95DEF0(v27);
  MEMORY[0x23189ADD0](v27, -1, -1);
  MEMORY[0x23189ADD0](v26, -1, -1);

LABEL_16:
LABEL_17:
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22B9A189C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 48);
  *(v0 + 96) = (*(v0 + 64))(*(v0 + 24), *(v0 + 40), *(v0 + 32));

  return MEMORY[0x2822009F8](sub_22B9A1924, 0, 0);
}

uint64_t sub_22B9A1924()
{
  v1 = *(v0 + 96);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  *(v0 + 104) = v2;
  if (v2)
  {
    v3 = qword_28141ADC8;
    *(v0 + 112) = qword_28141ADC8;
    if (v3)
    {
      v4 = qword_28141ADD0;
      *(v0 + 120) = qword_28141ADD0;
      *(v0 + 128) = *(v4 + 144);
      *(v0 + 136) = (v4 + 144) & 0xFFFFFFFFFFFFLL | 0x3082000000000000;
      v5 = *(v0 + 80);
      v6 = *(v0 + 88);

      return MEMORY[0x2822009F8](sub_22B9A1C58, v5, v6);
    }

    v13 = *(v0 + 96);
    sub_22B952500();
    v14 = swift_allocError();
    swift_willThrow();

    sub_22B975FD8(10, v14, 0, 0);
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v15 = sub_22BA0FEFC();
    sub_22B936CA8(v15, qword_28141AD10);
    v16 = v14;
    v8 = sub_22BA0FEDC();
    v17 = sub_22BA1044C();

    v18 = os_log_type_enabled(v8, v17);
    v19 = *(v0 + 24);
    if (!v18)
    {

      goto LABEL_16;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = v14;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v23;
    *v21 = v23;
    _os_log_impl(&dword_22B92A000, v8, v17, "Could not create IMMessageItem %@", v20, 0xCu);
    sub_22B95DEF0(v21);
    MEMORY[0x23189ADD0](v21, -1, -1);
    MEMORY[0x23189ADD0](v20, -1, -1);
  }

  else
  {

    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v7 = sub_22BA0FEFC();
    sub_22B936CA8(v7, qword_28141AD10);
    v8 = sub_22BA0FEDC();
    v9 = sub_22BA1044C();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 24);
    if (v10)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22B92A000, v8, v9, "Nil result message during IMMessageItem creation", v12, 2u);
      MEMORY[0x23189ADD0](v12, -1, -1);
    }
  }

LABEL_16:
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_22B9A1C58()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 112);
  (*(v0 + 128))(*(v0 + 104));

  return MEMORY[0x2822009F8](sub_22B9A1CCC, 0, 0);
}

uint64_t sub_22B9A1CCC()
{
  v1 = qword_28141ADC8;
  v0[18] = qword_28141ADC8;
  if (v1)
  {
    v2 = qword_28141ADD0;
    v0[19] = qword_28141ADD0;
    v0[20] = *(v2 + 160);
    v0[21] = (v2 + 160) & 0xFFFFFFFFFFFFLL | 0xD00E000000000000;
    v3 = v0[10];
    v4 = v0[11];

    return MEMORY[0x2822009F8](sub_22B9A1F18, v3, v4);
  }

  else
  {
    v5 = v0[12];
    sub_22B952500();
    v6 = swift_allocError();
    swift_willThrow();

    sub_22B975FD8(10, v6, 0, 0);
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v7 = sub_22BA0FEFC();
    sub_22B936CA8(v7, qword_28141AD10);
    v8 = v6;
    v9 = sub_22BA0FEDC();
    v10 = sub_22BA1044C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[3];
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v6;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_22B92A000, v9, v10, "Could not create IMMessageItem %@", v13, 0xCu);
      sub_22B95DEF0(v14);
      MEMORY[0x23189ADD0](v14, -1, -1);
      MEMORY[0x23189ADD0](v13, -1, -1);
    }

    else
    {
    }

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_22B9A1F18()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 144);
  (*(v0 + 160))();

  return MEMORY[0x2822009F8](sub_22B9A1F88, 0, 0);
}

uint64_t sub_22B9A1F88()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B9A1FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_22B9A2014, 0, 0);
}

uint64_t sub_22B9A2014()
{
  v46 = v0;
  v1 = v0[5];
  v2 = v0[6];

  v3 = qword_28141ADC8;
  v0[9] = qword_28141ADC8;
  if (v3)
  {
    v4 = qword_28141ADD0;
    v0[10] = qword_28141ADD0;
    v0[11] = *(v4 + 160);
    v0[12] = (v4 + 160) & 0xFFFFFFFFFFFFLL | 0xD00E000000000000;
    if (qword_281416450 != -1)
    {
      swift_once();
    }

    sub_22BA102EC();
    v5 = sub_22BA1029C();
    v7 = v6;
    v8 = sub_22B9A2588;
LABEL_5:
    v9 = v8;
    v10 = v5;
    v11 = v7;

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  sub_22B952500();
  v12 = swift_allocError();
  swift_willThrow();
  sub_22B975FD8(13, v12, 0, 0);
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v13 = sub_22BA0FEFC();
  sub_22B936CA8(v13, qword_28141AD10);
  v14 = v12;
  v15 = sub_22BA0FEDC();
  v16 = sub_22BA1044C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v12;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_22B92A000, v15, v16, "Could not update stamp: %@", v17, 0xCu);
    sub_22B95DEF0(v18);
    MEMORY[0x23189ADD0](v18, -1, -1);
    MEMORY[0x23189ADD0](v17, -1, -1);

    v21 = v0[8];
    if (!v21)
    {
      goto LABEL_30;
    }
  }

  else
  {

    v21 = v0[8];
    if (!v21)
    {
      goto LABEL_30;
    }
  }

  v22 = qword_28141ADC8;
  v0[13] = qword_28141ADC8;
  if (v22)
  {
    v23 = qword_28141ADD0;
    v0[14] = qword_28141ADD0;
    if (qword_2814161B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v24 = qword_28141ADF8;
    if (*(qword_28141ADF8 + 16) && (v25 = sub_22B990A58(v0[7], v21), (v26 & 1) != 0))
    {
      v27 = *(*(v24 + 56) + 8 * v25);
    }

    else
    {
      v27 = -1;
    }

    v0[15] = v27;
    swift_endAccess();
    v0[16] = *(v23 + 80);
    v0[17] = (v23 + 80) & 0xFFFFFFFFFFFFLL | 0x6675000000000000;
    if (qword_281416450 != -1)
    {
      swift_once();
    }

    sub_22BA102EC();
    v5 = sub_22BA1029C();
    v7 = v28;
    v8 = sub_22B9A2968;
    goto LABEL_5;
  }

  v29 = swift_allocError();
  swift_willThrow();
  sub_22B975FD8(15, v29, 0, 0);
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v30 = v0[6];
  sub_22B936CA8(v13, qword_28141AD10);
  v31 = v30;
  v32 = sub_22BA0FEDC();
  v33 = sub_22BA1044C();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v0[6];
  if (v34)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v45 = v37;
    *v36 = 136315138;
    v38 = [v35 guid];

    if (!v38)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v9, v10, v11);
    }

    v39 = sub_22BA0FFFC();
    v41 = v40;

    v42 = sub_22B99153C(v39, v41, &v45);

    *(v36 + 4) = v42;
    _os_log_impl(&dword_22B92A000, v32, v33, "Error re-associating existing item: %s", v36, 0xCu);
    sub_22B936C4C(v37);
    MEMORY[0x23189ADD0](v37, -1, -1);
    MEMORY[0x23189ADD0](v36, -1, -1);
  }

  else
  {
  }

LABEL_30:
  v43 = v0[1];

  return v43();
}

uint64_t sub_22B9A2588()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 72);
  (*(v0 + 88))();

  return MEMORY[0x2822009F8](sub_22B9A25F8, 0, 0);
}

uint64_t sub_22B9A25F8()
{
  v32 = v0;
  v1 = v0[8];
  if (v1)
  {
    v2 = qword_28141ADC8;
    v0[13] = qword_28141ADC8;
    if (v2)
    {
      v3 = qword_28141ADD0;
      v0[14] = qword_28141ADD0;
      if (qword_2814161B8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v4 = qword_28141ADF8;
      if (*(qword_28141ADF8 + 16) && (v5 = sub_22B990A58(v0[7], v1), (v6 & 1) != 0))
      {
        v7 = *(*(v4 + 56) + 8 * v5);
      }

      else
      {
        v7 = -1;
      }

      v0[15] = v7;
      swift_endAccess();
      v0[16] = *(v3 + 80);
      v0[17] = (v3 + 80) & 0xFFFFFFFFFFFFLL | 0x6675000000000000;
      if (qword_281416450 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v8 = sub_22BA1029C();
      v10 = v9;
      v11 = sub_22B9A2968;
      v12 = v8;
      v13 = v10;

      return MEMORY[0x2822009F8](v11, v12, v13);
    }

    sub_22B952500();
    v14 = swift_allocError();
    swift_willThrow();
    sub_22B975FD8(15, v14, 0, 0);
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v15 = v0[6];
    v16 = sub_22BA0FEFC();
    sub_22B936CA8(v16, qword_28141AD10);
    v17 = v15;
    v18 = sub_22BA0FEDC();
    v19 = sub_22BA1044C();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[6];
    if (v20)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = v23;
      *v22 = 136315138;
      v24 = [v21 guid];

      if (!v24)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v11, v12, v13);
      }

      v25 = sub_22BA0FFFC();
      v27 = v26;

      v28 = sub_22B99153C(v25, v27, &v31);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_22B92A000, v18, v19, "Error re-associating existing item: %s", v22, 0xCu);
      sub_22B936C4C(v23);
      MEMORY[0x23189ADD0](v23, -1, -1);
      MEMORY[0x23189ADD0](v22, -1, -1);
    }

    else
    {
    }
  }

  v29 = v0[1];

  return v29();
}

uint64_t sub_22B9A2968()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 104);
  (*(v0 + 128))(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 120));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B9A29FC()
{
  v1 = v0[2];

  v2 = qword_28141ADC8;
  v0[3] = qword_28141ADC8;
  if (v2)
  {
    v3 = qword_28141ADD0;
    v0[4] = qword_28141ADD0;
    v0[5] = *(v3 + 160);
    v0[6] = (v3 + 160) & 0xFFFFFFFFFFFFLL | 0xD00E000000000000;
    if (qword_281416450 != -1)
    {
      swift_once();
    }

    sub_22BA102EC();
    v5 = sub_22BA1029C();

    return MEMORY[0x2822009F8](sub_22B9A2C8C, v5, v4);
  }

  else
  {
    sub_22B952500();
    v6 = swift_allocError();
    swift_willThrow();
    sub_22B975FD8(11, v6, 0, 0);
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v7 = sub_22BA0FEFC();
    sub_22B936CA8(v7, qword_28141AD10);
    v8 = v6;
    v9 = sub_22BA0FEDC();
    v10 = sub_22BA1044C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v6;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_22B92A000, v9, v10, "Could not update stamp: %@", v11, 0xCu);
      sub_22B95DEF0(v12);
      MEMORY[0x23189ADD0](v12, -1, -1);
      MEMORY[0x23189ADD0](v11, -1, -1);
    }

    else
    {
    }

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_22B9A2C8C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 24);
  (*(v0 + 40))();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B9A2CF4(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B9A2DAC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_22BA0FA5C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_22BA0FA1C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_22B9A2E30(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_22BA0FA5C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_22BA0FA1C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22BA0FC7C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

void sub_22B9A2EAC(unint64_t a1, unint64_t a2, char a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = sub_22BA0FFCC();
    IMDKVPersistValueForKey();

    v17 = sub_22BA0FFCC();
    IMDKVPersistValueForKey();
    v4 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v18 = bswap64(a1);
    v6 = sub_22B99F80C(&v18, &v19);
    v8 = v7;
    v18 = bswap64(a2);
    v9 = sub_22B99F80C(&v18, &v19);
    v11 = v10;
    v12 = sub_22BA0FFCC();
    v13 = sub_22BA0FC8C();
    IMDKVPersistValueForKey();

    v14 = sub_22BA0FFCC();
    v15 = sub_22BA0FC8C();
    IMDKVPersistValueForKey();

    sub_22B9359BC(v9, v11);
    sub_22B9359BC(v6, v8);
    v16 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_22B9A3088()
{
  v0 = sub_22BA0FFCC();
  v1 = IMDKVValueForKey();

  if (!v1)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v12 = sub_22BA0FEFC();
    sub_22B936CA8(v12, qword_28141AD40);
    v13 = sub_22BA0FEDC();
    v14 = sub_22BA1044C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v41 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_22B99153C(0xD000000000000013, 0x800000022BA1DC10, &v41);
      _os_log_impl(&dword_22B92A000, v13, v14, "No row present in kvtable for key name %s", v15, 0xCu);
      sub_22B936C4C(v16);
      MEMORY[0x23189ADD0](v16, -1, -1);
      MEMORY[0x23189ADD0](v15, -1, -1);
    }

    return 0;
  }

  v2 = sub_22BA0FCAC();
  v4 = v3;

  v5 = sub_22BA0FFCC();
  v6 = IMDKVValueForKey();

  if (!v6)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v17 = sub_22BA0FEFC();
    sub_22B936CA8(v17, qword_28141AD40);
    v18 = sub_22BA0FEDC();
    v19 = sub_22BA1044C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v41 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_22B99153C(0xD000000000000013, 0x800000022BA1DC30, &v41);
      _os_log_impl(&dword_22B92A000, v18, v19, "No row present in kvtable for key name %s", v20, 0xCu);
      sub_22B936C4C(v21);
      MEMORY[0x23189ADD0](v21, -1, -1);
      MEMORY[0x23189ADD0](v20, -1, -1);
    }

    sub_22B9359BC(v2, v4);

    return 0;
  }

  v7 = sub_22BA0FCAC();
  v9 = v8;

  v10 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v10 != 2)
    {
      v11 = 0;
      goto LABEL_28;
    }

    v22 = *(v2 + 16);
    v23 = sub_22BA0FA2C();
    if (!v23)
    {
LABEL_49:
      sub_22BA0FA3C();
LABEL_50:
      __break(1u);
LABEL_51:
      sub_22BA0FA3C();
      __break(1u);
      goto LABEL_52;
    }

    v24 = v23;
    v25 = sub_22BA0FA4C();
    if (!__OFSUB__(v22, v25))
    {
      v26 = (v22 - v25 + v24);
      sub_22BA0FA3C();
      if (!v26)
      {
        goto LABEL_50;
      }

LABEL_26:
      v11 = bswap64(*v26);
      goto LABEL_28;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v10)
  {
    v11 = bswap64(v2);
LABEL_28:
    v31 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v31 != 2)
      {
LABEL_41:
        sub_22B9359BC(v7, v9);
        sub_22B9359BC(v2, v4);
        return v11;
      }

      v32 = *(v7 + 16);
      v33 = sub_22BA0FA2C();
      if (!v33)
      {
        goto LABEL_51;
      }

      v34 = v33;
      v35 = sub_22BA0FA4C();
      if (__OFSUB__(v32, v35))
      {
        goto LABEL_46;
      }

      v36 = (v32 - v35 + v34);
      sub_22BA0FA3C();
      if (v36)
      {
LABEL_40:
        v40 = *v36;
        sub_22B9359BC(v7, v9);
        sub_22B9359BC(v2, v4);
        return v11;
      }

      __break(1u);
    }

    else if (!v31)
    {
      goto LABEL_41;
    }

    if (v7 <= v7 >> 32)
    {
      v37 = sub_22BA0FA2C();
      if (!v37)
      {
LABEL_53:
        result = sub_22BA0FA3C();
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v38 = v37;
      v39 = sub_22BA0FA4C();
      if (!__OFSUB__(v7, v39))
      {
        v36 = (v7 - v39 + v38);
        result = sub_22BA0FA3C();
        if (v36)
        {
          goto LABEL_40;
        }

        goto LABEL_54;
      }

      goto LABEL_48;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v2 > v2 >> 32)
  {
    __break(1u);
    goto LABEL_44;
  }

  v27 = sub_22BA0FA2C();
  if (!v27)
  {
LABEL_52:
    sub_22BA0FA3C();
    __break(1u);
    goto LABEL_53;
  }

  v28 = v27;
  v29 = sub_22BA0FA4C();
  if (__OFSUB__(v2, v29))
  {
    goto LABEL_47;
  }

  v26 = (v2 - v29 + v28);
  result = sub_22BA0FA3C();
  if (v26)
  {
    goto LABEL_26;
  }

LABEL_55:
  __break(1u);
  return result;
}

unint64_t sub_22B9A3568()
{
  result = qword_281414B48;
  if (!qword_281414B48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281414B48);
  }

  return result;
}

uint64_t sub_22B9A35B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_22B9A35FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B9A3658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22B9A367C, 0, 0);
}

uint64_t sub_22B9A367C()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22BA172B0;
  sub_22BA082E0(*(v1 + 16));
  v4 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
  v5 = sub_22BA0FFCC();

  v6 = [v4 initWithZoneName_];

  v7 = [v6 zoneID];
  *(v3 + 32) = v7;
  v8 = objc_allocWithZone(MEMORY[0x277CBC3D0]);
  sub_22B951A54(0, &qword_281414B80, 0x277CBC5F8);
  v9 = sub_22BA101DC();

  v10 = [v8 initWithRecordZoneIDs_];
  v0[6] = v10;

  v11 = swift_allocObject();
  v0[7] = v11;
  *(v11 + 16) = 1;
  v12 = (v2 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
  v13 = objc_allocWithZone(MEMORY[0x277CBC4F0]);
  v14 = v10;
  v15 = [v13 init];
  [v15 setQualityOfService_];
  [v15 setAllowsCellularAccess_];
  v16 = v12[3];
  v17 = v12[4];
  sub_22B9358B4(v12, v16);
  v18 = (*(v17 + 8))(v16, v17);
  if (v18)
  {
    v19 = v18;
    [v15 setAllowsCellularAccess_];
    [v15 setXPCActivity_];
    swift_unknownObjectRelease();
  }

  v20 = v0[4];
  [v14 setConfiguration_];

  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v11;
  swift_unknownObjectRetain();

  sub_22BA105FC();
  v22 = swift_task_alloc();
  v0[8] = v22;
  *(v22 + 16) = v14;
  *(v22 + 24) = v11;
  *(v22 + 32) = v27;
  v23 = *(MEMORY[0x277D85A40] + 4);
  v24 = swift_task_alloc();
  v0[9] = v24;
  *v24 = v0;
  v24[1] = sub_22B9A39FC;
  v25 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 11, 0, 0, 0xD000000000000028, 0x800000022BA1DC70, sub_22B9A7030, v22, v25);
}

uint64_t sub_22B9A39FC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_22B9A3B88;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_22B9A3B18;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B9A3B18()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 88);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_22B9A3B88()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  v3 = *(v0 + 8);
  v4 = *(v0 + 80);

  return v3(0);
}

uint64_t sub_22B9A3C04(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22B9A3C24, 0, 0);
}

uint64_t sub_22B9A3C24()
{
  v1 = (v0[3] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 64);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[4] = v7;
  v8 = type metadata accessor for RemoteRecord();
  *v7 = v0;
  v7[1] = sub_22B94FC08;
  v9 = v0[2];

  return (v11)(v9, sub_22B9A3D94, 0, v8, &off_283F57740, ObjectType, v2);
}

uint64_t sub_22B9A3DCC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 40);
  v6 = *(v2 + 48);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22B947814;

  return (sub_22B9A5408)(a1, a2, v7, v6);
}

void sub_22B9A3E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22B951A54(0, &unk_27D8D55F0, 0x277CBC490);
  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22BA172B0;
  sub_22BA082E0(*(v4 + 16));
  v8 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
  v9 = sub_22BA0FFCC();

  v10 = [v8 initWithZoneName_];

  *(v7 + 32) = v10;
  v11 = sub_22BA1062C();
  v12 = (a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
  v13 = objc_allocWithZone(MEMORY[0x277CBC4F0]);
  v14 = v11;
  v15 = [v13 init];
  [v15 setQualityOfService_];
  [v15 setAllowsCellularAccess_];
  v17 = v12[3];
  v16 = v12[4];
  sub_22B9358B4(v12, v17);
  v18 = (*(v16 + 8))(v17, v16);
  if (v18)
  {
    v19 = v18;
    [v15 setAllowsCellularAccess_];
    [v15 setXPCActivity_];
    swift_unknownObjectRelease();
  }

  [v14 setConfiguration_];

  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;

  sub_22BA1061C();
  v21 = (a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase);
  v22 = *(a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 24);
  v23 = *(a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 32);
  sub_22B9358B4(v21, v22);
  (*(v23 + 8))(v14, v22, v23);
}

void sub_22B9A4108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v37 = a3;
  v8 = sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v36 - v12;
  v14 = swift_allocObject();
  v15 = *(a2 + 80);
  *(v14 + 80) = *(a2 + 64);
  *(v14 + 96) = v15;
  v16 = *(a2 + 96);
  v17 = *(a2 + 16);
  *(v14 + 16) = *a2;
  *(v14 + 32) = v17;
  v18 = *(a2 + 48);
  *(v14 + 48) = *(a2 + 32);
  *(v14 + 64) = v18;
  *(v14 + 112) = v16;
  *(v14 + 120) = a3;
  *(v14 + 128) = a4;
  (*(v9 + 16))(v13, a1, v8);
  v19 = *(a2 + 80);
  v44 = *(a2 + 64);
  v45 = v19;
  v46 = *(a2 + 96);
  v20 = *(a2 + 16);
  v40 = *a2;
  v41 = v20;
  v21 = *(a2 + 48);
  v42 = *(a2 + 32);
  v43 = v21;
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v9 + 32))(v24 + v22, v13, v8);
  v25 = v24 + v23;
  v26 = v45;
  *(v25 + 64) = v44;
  *(v25 + 80) = v26;
  *(v25 + 96) = v46;
  v27 = v41;
  *v25 = v40;
  *(v25 + 16) = v27;
  v28 = v43;
  *(v25 + 32) = v42;
  *(v25 + 48) = v28;
  v29 = (v24 + ((v23 + 111) & 0xFFFFFFFFFFFFFFF8));
  v30 = v37;
  v31 = v38;
  *v29 = v37;
  v29[1] = v31;
  sub_22B951748(a2, v39);
  swift_unknownObjectRetain();
  sub_22B951748(a2, v39);
  swift_unknownObjectRetain();
  v32 = sub_22B9A7124(sub_22B9889BC, v14, sub_22B9A703C);

  v33 = (v30 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase);
  v34 = *(v30 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 24);
  v35 = v33[4];
  sub_22B9358B4(v33, v34);
  (*(v35 + 8))(v32, v34, v35);
}

uint64_t sub_22B9A43B4(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v71 - v16;
  if ((a2 & 1) == 0)
  {
    return sub_22BA102BC();
  }

  v76 = a5;
  type metadata accessor for Code(0);
  *&v78 = 26;
  sub_22B9A7424();
  if ((sub_22BA0FA6C() & 1) == 0)
  {
    *&v78 = 28;
    if ((sub_22BA0FA6C() & 1) == 0)
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v30 = sub_22BA0FEFC();
      sub_22B936CA8(v30, qword_28141AD40);
      sub_22B951748(a4, &v78);
      sub_22B930C44(a1);
      v31 = sub_22BA0FEDC();
      v32 = sub_22BA1044C();
      sub_22B930C58(a1);
      if (os_log_type_enabled(v31, v32))
      {
        v75 = v12;
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&v78 = v35;
        *v33 = 136315394;
        v36 = *(a4 + 16);
        if (v36 > 4)
        {
          v63 = 0x800000022BA1C160;
          v64 = 0x800000022BA1C180;
          v65 = 0xD000000000000015;
          if (v36 != 8)
          {
            v65 = 0xD000000000000023;
            v64 = 0x800000022BA1C1A0;
          }

          if (v36 == 7)
          {
            v65 = 0xD000000000000012;
          }

          else
          {
            v63 = v64;
          }

          v66 = 0x800000022BA1C120;
          v67 = 0xD000000000000014;
          if (v36 == 5)
          {
            v67 = 0xD00000000000001CLL;
          }

          else
          {
            v66 = 0x800000022BA1C140;
          }

          if (*(a4 + 16) <= 6u)
          {
            v42 = v67;
          }

          else
          {
            v42 = v65;
          }

          if (*(a4 + 16) <= 6u)
          {
            v43 = v66;
          }

          else
          {
            v43 = v63;
          }
        }

        else
        {
          v37 = 0x616E614D74616863;
          v38 = 0xEF656E6F5A656574;
          v39 = 0x800000022BA1C0C0;
          v40 = 0x800000022BA1C0E0;
          v41 = 0xD000000000000015;
          if (v36 != 3)
          {
            v41 = 0xD000000000000011;
            v40 = 0x800000022BA1C100;
          }

          if (v36 == 2)
          {
            v41 = 0xD000000000000012;
          }

          else
          {
            v39 = v40;
          }

          if (*(a4 + 16))
          {
            v37 = 0xD000000000000010;
            v38 = 0x800000022BA1C0A0;
          }

          if (*(a4 + 16) <= 1u)
          {
            v42 = v37;
          }

          else
          {
            v42 = v41;
          }

          if (*(a4 + 16) <= 1u)
          {
            v43 = v38;
          }

          else
          {
            v43 = v39;
          }
        }

        sub_22B96F8A4(a4);
        v68 = sub_22B99153C(v42, v43, &v78);

        *(v33 + 4) = v68;
        *(v33 + 12) = 2112;
        v69 = a1;
        v70 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 14) = v70;
        *v34 = v70;
        _os_log_impl(&dword_22B92A000, v31, v32, "Failed counting records in %s: %@)", v33, 0x16u);
        sub_22B936BEC(v34, &qword_27D8D4CD0, qword_22BA14360);
        MEMORY[0x23189ADD0](v34, -1, -1);
        sub_22B936C4C(v35);
        MEMORY[0x23189ADD0](v35, -1, -1);
        MEMORY[0x23189ADD0](v33, -1, -1);
      }

      else
      {

        sub_22B96F8A4(a4);
      }

      return sub_22BA102BC();
    }
  }

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v18 = sub_22BA0FEFC();
  sub_22B936CA8(v18, qword_28141AD40);
  sub_22B951748(a4, &v78);
  sub_22B930C44(a1);
  v19 = sub_22BA0FEDC();
  v20 = sub_22BA1046C();
  sub_22B930C58(a1);
  if (os_log_type_enabled(v19, v20))
  {
    v73 = a6;
    v75 = v12;
    v74 = a3;
    v21 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *&v78 = v72;
    *v21 = 136315394;
    v22 = *(a4 + 16);
    if (v22 > 4)
    {
      v44 = 0x800000022BA1C160;
      v45 = 0x800000022BA1C180;
      v46 = 0xD000000000000015;
      if (v22 != 8)
      {
        v46 = 0xD000000000000023;
        v45 = 0x800000022BA1C1A0;
      }

      if (v22 == 7)
      {
        v46 = 0xD000000000000012;
      }

      else
      {
        v44 = v45;
      }

      v47 = 0x800000022BA1C120;
      v48 = 0xD000000000000014;
      if (v22 == 5)
      {
        v48 = 0xD00000000000001CLL;
      }

      else
      {
        v47 = 0x800000022BA1C140;
      }

      if (*(a4 + 16) <= 6u)
      {
        v28 = v48;
      }

      else
      {
        v28 = v46;
      }

      if (*(a4 + 16) <= 6u)
      {
        v29 = v47;
      }

      else
      {
        v29 = v44;
      }
    }

    else
    {
      v23 = 0x616E614D74616863;
      v24 = 0xEF656E6F5A656574;
      v25 = 0x800000022BA1C0C0;
      v26 = 0x800000022BA1C0E0;
      v27 = 0xD000000000000015;
      if (v22 != 3)
      {
        v27 = 0xD000000000000011;
        v26 = 0x800000022BA1C100;
      }

      if (v22 == 2)
      {
        v27 = 0xD000000000000012;
      }

      else
      {
        v25 = v26;
      }

      if (*(a4 + 16))
      {
        v23 = 0xD000000000000010;
        v24 = 0x800000022BA1C0A0;
      }

      if (*(a4 + 16) <= 1u)
      {
        v28 = v23;
      }

      else
      {
        v28 = v27;
      }

      if (*(a4 + 16) <= 1u)
      {
        v29 = v24;
      }

      else
      {
        v29 = v25;
      }
    }

    sub_22B96F8A4(a4);
    v49 = sub_22B99153C(v28, v29, &v78);

    *(v21 + 4) = v49;
    *(v21 + 12) = 2112;
    v50 = a1;
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v51;
    v52 = v71;
    *v71 = v51;
    _os_log_impl(&dword_22B92A000, v19, v20, "Zone not found %s: %@), creating", v21, 0x16u);
    sub_22B936BEC(v52, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v52, -1, -1);
    v53 = v72;
    sub_22B936C4C(v72);
    MEMORY[0x23189ADD0](v53, -1, -1);
    MEMORY[0x23189ADD0](v21, -1, -1);

    a3 = v74;
    v12 = v75;
    a6 = v73;
  }

  else
  {

    sub_22B96F8A4(a4);
  }

  v54 = *(a4 + 80);
  v82 = *(a4 + 64);
  v83 = v54;
  v84 = *(a4 + 96);
  v55 = *(a4 + 16);
  v78 = *a4;
  v79 = v55;
  v56 = *(a4 + 48);
  v80 = *(a4 + 32);
  v81 = v56;
  (*(v13 + 16))(v17, a3, v12);
  v57 = (*(v13 + 80) + 120) & ~*(v13 + 80);
  v58 = swift_allocObject();
  v59 = v83;
  *(v58 + 80) = v82;
  *(v58 + 96) = v59;
  *(v58 + 112) = v84;
  v60 = v79;
  *(v58 + 16) = v78;
  *(v58 + 32) = v60;
  v61 = v81;
  *(v58 + 48) = v80;
  *(v58 + 64) = v61;
  (*(v13 + 32))(v58 + v57, v17, v12);
  sub_22B951748(a4, v77);
  sub_22B9A3E94(v76, a6, sub_22B9A747C, v58);
}

uint64_t sub_22B9A4CA8(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v5 = sub_22BA0FEFC();
    sub_22B936CA8(v5, qword_28141AD40);
    sub_22B951748(a3, &v51);
    sub_22B973C70(a1, 1);
    v6 = sub_22BA0FEDC();
    v7 = sub_22BA1046C();
    sub_22B97721C(a1, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v51 = v10;
      *v8 = 136315394;
      v11 = *(a3 + 16);
      if (v11 > 4)
      {
        v32 = 0x800000022BA1C160;
        v33 = 0x800000022BA1C180;
        v34 = 0xD000000000000015;
        if (v11 != 8)
        {
          v34 = 0xD000000000000023;
          v33 = 0x800000022BA1C1A0;
        }

        if (v11 == 7)
        {
          v34 = 0xD000000000000012;
        }

        else
        {
          v32 = v33;
        }

        v35 = 0x800000022BA1C120;
        v36 = 0xD000000000000014;
        if (v11 == 5)
        {
          v36 = 0xD00000000000001CLL;
        }

        else
        {
          v35 = 0x800000022BA1C140;
        }

        if (*(a3 + 16) <= 6u)
        {
          v17 = v36;
        }

        else
        {
          v17 = v34;
        }

        if (*(a3 + 16) <= 6u)
        {
          v18 = v35;
        }

        else
        {
          v18 = v32;
        }
      }

      else
      {
        v12 = 0x616E614D74616863;
        v13 = 0xEF656E6F5A656574;
        v14 = 0x800000022BA1C0C0;
        v15 = 0x800000022BA1C0E0;
        v16 = 0xD000000000000015;
        if (v11 != 3)
        {
          v16 = 0xD000000000000011;
          v15 = 0x800000022BA1C100;
        }

        if (v11 == 2)
        {
          v16 = 0xD000000000000012;
        }

        else
        {
          v14 = v15;
        }

        if (*(a3 + 16))
        {
          v12 = 0xD000000000000010;
          v13 = 0x800000022BA1C0A0;
        }

        if (*(a3 + 16) <= 1u)
        {
          v17 = v12;
        }

        else
        {
          v17 = v16;
        }

        if (*(a3 + 16) <= 1u)
        {
          v18 = v13;
        }

        else
        {
          v18 = v14;
        }
      }

      sub_22B96F8A4(a3);
      v37 = sub_22B99153C(v17, v18, &v51);

      *(v8 + 4) = v37;
      *(v8 + 12) = 2112;
      v38 = a1;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v39;
      *v9 = v39;
      _os_log_impl(&dword_22B92A000, v6, v7, "Failed to create zone %s %@", v8, 0x16u);
      sub_22B936BEC(v9, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v9, -1, -1);
      sub_22B936C4C(v10);
      MEMORY[0x23189ADD0](v10, -1, -1);
      MEMORY[0x23189ADD0](v8, -1, -1);
    }

    else
    {

      sub_22B96F8A4(a3);
    }

    v51 = 0;
    v52 = 0xE000000000000000;
    sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
    sub_22BA10A2C();
    v40 = v51;
    v41 = v52;
    sub_22B9A7528();
    v42 = swift_allocError();
    *v43 = v40;
    *(v43 + 8) = v41;
    *(v43 + 16) = 2;
    v51 = v42;
    sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
    return sub_22BA102AC();
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v19 = sub_22BA0FEFC();
    sub_22B936CA8(v19, qword_28141AD40);
    sub_22B951748(a3, &v51);
    v20 = sub_22BA0FEDC();
    v21 = sub_22BA1046C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v51 = v23;
      *v22 = 136315138;
      v24 = *(a3 + 16);
      if (v24 > 4)
      {
        v45 = 0x800000022BA1C160;
        v46 = 0x800000022BA1C180;
        v47 = 0xD000000000000015;
        if (v24 != 8)
        {
          v47 = 0xD000000000000023;
          v46 = 0x800000022BA1C1A0;
        }

        if (v24 == 7)
        {
          v47 = 0xD000000000000012;
        }

        else
        {
          v45 = v46;
        }

        v48 = 0x800000022BA1C120;
        v49 = 0xD000000000000014;
        if (v24 == 5)
        {
          v49 = 0xD00000000000001CLL;
        }

        else
        {
          v48 = 0x800000022BA1C140;
        }

        if (*(a3 + 16) <= 6u)
        {
          v30 = v49;
        }

        else
        {
          v30 = v47;
        }

        if (*(a3 + 16) <= 6u)
        {
          v31 = v48;
        }

        else
        {
          v31 = v45;
        }
      }

      else
      {
        v25 = 0x616E614D74616863;
        v26 = 0xEF656E6F5A656574;
        v27 = 0x800000022BA1C0C0;
        v28 = 0x800000022BA1C0E0;
        v29 = 0xD000000000000015;
        if (v24 != 3)
        {
          v29 = 0xD000000000000011;
          v28 = 0x800000022BA1C100;
        }

        if (v24 == 2)
        {
          v29 = 0xD000000000000012;
        }

        else
        {
          v27 = v28;
        }

        if (*(a3 + 16))
        {
          v25 = 0xD000000000000010;
          v26 = 0x800000022BA1C0A0;
        }

        if (*(a3 + 16) <= 1u)
        {
          v30 = v25;
        }

        else
        {
          v30 = v29;
        }

        if (*(a3 + 16) <= 1u)
        {
          v31 = v26;
        }

        else
        {
          v31 = v27;
        }
      }

      sub_22B96F8A4(a3);
      v50 = sub_22B99153C(v30, v31, &v51);

      *(v22 + 4) = v50;
      _os_log_impl(&dword_22B92A000, v20, v21, "Successfully created zone %s", v22, 0xCu);
      sub_22B936C4C(v23);
      MEMORY[0x23189ADD0](v23, -1, -1);
      MEMORY[0x23189ADD0](v22, -1, -1);
    }

    else
    {

      sub_22B96F8A4(a3);
    }

    sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
    return sub_22BA102BC();
  }
}

uint64_t sub_22B9A5314(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *a2;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22B943E68;

  return v8(v4);
}

uint64_t sub_22B9A5408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[80] = a4;
  v4[79] = a3;
  v4[78] = a2;
  v4[77] = a1;
  return MEMORY[0x2822009F8](sub_22B9A5434, 0, 0);
}

uint64_t sub_22B9A5434()
{
  v1 = *(v0 + 632);
  v2 = v1[2];
  *(v0 + 648) = v2;
  if (v2)
  {
    *(v0 + 656) = 0;
    v50 = *(v0 + 616);
    v3 = sub_22B9358B4(v1 + 4, v1[7]);
    v5 = *(v3 + 1);
    v4 = *(v3 + 2);
    *(v0 + 120) = *v3;
    *(v0 + 136) = v5;
    *(v0 + 152) = v4;
    v6 = v3[12];
    v8 = *(v3 + 4);
    v7 = *(v3 + 5);
    *(v0 + 168) = *(v3 + 3);
    *(v0 + 184) = v8;
    *(v0 + 200) = v7;
    *(v0 + 216) = v6;
    v9 = *(v0 + 136);
    *(v0 + 224) = *(v0 + 120);
    *(v0 + 240) = v9;
    v10 = *(v0 + 168);
    *(v0 + 256) = *(v0 + 152);
    *(v0 + 272) = v10;
    v11 = *(v0 + 200);
    *(v0 + 288) = *(v0 + 184);
    *(v0 + 304) = v11;
    *(v0 + 320) = v6;
    v12 = swift_task_alloc();
    *(v0 + 664) = v12;
    *(v12 + 16) = v0 + 224;
    *(v12 + 24) = v50;
    v13 = *(MEMORY[0x277D85A40] + 4);
    v14 = swift_task_alloc();
    *(v0 + 672) = v14;
    *v14 = v0;
    v14[1] = sub_22B9A5A70;
    v15 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v14, 0, 0, 0xD000000000000014, 0x800000022BA1DC50, sub_22B9A6C28, v12, v15);
  }

  else
  {
    *(v0 + 432) = 0;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 688) = 0;
    sub_22B9A6C74(v0 + 400, v0 + 480);
    if (*(v0 + 504))
    {
      sub_22B96FB68((v0 + 480), v0 + 440);
      v16 = sub_22B9358B4((v0 + 440), *(v0 + 464));
      v18 = *(v16 + 1);
      v17 = *(v16 + 2);
      *(v0 + 16) = *v16;
      *(v0 + 32) = v18;
      *(v0 + 48) = v17;
      v20 = *(v16 + 4);
      v19 = *(v16 + 5);
      v21 = *(v16 + 3);
      *(v0 + 112) = v16[12];
      *(v0 + 80) = v20;
      *(v0 + 96) = v19;
      *(v0 + 64) = v21;
      v22 = swift_task_alloc();
      *(v0 + 696) = v22;
      *v22 = v0;
      v22[1] = sub_22B9A6244;
      v23 = *(v0 + 640);
      v24 = *(v0 + 624);
      v25 = *(v0 + 616);

      return sub_22B9A3658(v25, v24, v23);
    }

    else
    {
      sub_22B936BEC(v0 + 480, &qword_27D8D55B0, &qword_22BA178E0);
      v26 = *(v0 + 616);
      v27 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
      *(v0 + 712) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
      v28 = *(*sub_22B9358B4((v26 + v27), *(v26 + v27 + 24)) + 24);
      *(v0 + 720) = *MEMORY[0x277D19A70];
      if ([v28 BOOLForKey_])
      {
        v51 = *(v0 + 616);
        v29 = v51 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase;
        v30 = *(v51 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase);
        *(v0 + 728) = v30;
        v31 = *(v29 + 8);
        sub_22B9349C8(&qword_27D8D55B8, &qword_22BA178E8);
        inited = swift_initStackObject();
        *(v0 + 736) = inited;
        *(inited + 16) = v30;
        *(inited + 24) = v31;
        sub_22B9349C8(&qword_27D8D55C0, qword_22BA178F0);
        v33 = swift_initStackObject();
        *(v33 + 16) = xmmword_22BA13CB0;
        KeyPath = swift_getKeyPath();
        swift_unknownObjectRetain_n();
        v35 = sub_22B9A7818(KeyPath, 2);

        *(v33 + 32) = v35;
        v36 = sub_22B9A7DB0(v33);
        swift_setDeallocating();
        sub_22B936BEC(v33 + 32, &qword_27D8D55C8, &qword_22BA17930);
        sub_22B9349C8(&unk_27D8D55D0, &qword_22BA17938);
        v37 = swift_initStackObject();
        *(v0 + 744) = v37;

        v38 = MEMORY[0x277D84F90];
        *(v37 + 64) = MEMORY[0x277D84F90];
        *(v37 + 16) = v30;
        *(v37 + 24) = v31;
        *(v37 + 32) = 0;
        *(v37 + 40) = 1;
        v39 = swift_allocObject();
        *(v0 + 752) = v39;
        *(v39 + 24) = 0;
        *(v39 + 32) = 0;
        *(v39 + 16) = v36;
        *(v39 + 40) = 1;
        *(v37 + 48) = &unk_22BA17940;
        *(v37 + 56) = v39;
        v40 = swift_allocObject();
        *(v40 + 16) = v51;
        v41 = swift_allocObject();
        *(v41 + 16) = &unk_22BA17950;
        *(v41 + 24) = v40;
        swift_beginAccess();
        swift_unknownObjectRetain();

        v42 = sub_22B97FF5C(0, 1, 1, v38);
        v44 = v42[2];
        v43 = v42[3];
        if (v44 >= v43 >> 1)
        {
          v42 = sub_22B97FF5C((v43 > 1), v44 + 1, 1, v42);
        }

        *(v0 + 760) = v42;
        v42[2] = v44 + 1;
        v45 = &v42[2 * v44];
        v45[4] = &unk_22BA17960;
        v45[5] = v41;
        *(v37 + 64) = v42;
        swift_endAccess();

        v46 = swift_task_alloc();
        *(v0 + 768) = v46;
        *v46 = v0;
        v46[1] = sub_22B9A6840;

        return sub_22B9A853C();
      }

      else
      {
        sub_22B936BEC(v0 + 400, &qword_27D8D55B0, &qword_22BA178E0);
        v47 = *(v0 + 8);
        v48 = *(v0 + 688);

        return v47(v48, 0);
      }
    }
  }
}

uint64_t sub_22B9A5A70()
{
  v2 = *v1;
  v3 = *(*v1 + 672);
  v7 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v4 = sub_22B9A61E0;
  }

  else
  {
    v5 = *(v2 + 664);

    v4 = sub_22B9A5B8C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B9A5B8C()
{
  v1 = *(v0 + 656) + 1;
  if (v1 == *(v0 + 648))
  {
    sub_22B935B38(*(v0 + 632) + 32, v0 + 400);
    *(v0 + 688) = *(v0 + 648);
    sub_22B9A6C74(v0 + 400, v0 + 480);
    if (*(v0 + 504))
    {
      sub_22B96FB68((v0 + 480), v0 + 440);
      v2 = sub_22B9358B4((v0 + 440), *(v0 + 464));
      v4 = *(v2 + 1);
      v3 = *(v2 + 2);
      *(v0 + 16) = *v2;
      *(v0 + 32) = v4;
      *(v0 + 48) = v3;
      v6 = *(v2 + 4);
      v5 = *(v2 + 5);
      v7 = *(v2 + 3);
      *(v0 + 112) = v2[12];
      *(v0 + 80) = v6;
      *(v0 + 96) = v5;
      *(v0 + 64) = v7;
      v8 = swift_task_alloc();
      *(v0 + 696) = v8;
      *v8 = v0;
      v8[1] = sub_22B9A6244;
      v9 = *(v0 + 640);
      v10 = *(v0 + 624);
      v11 = *(v0 + 616);

      return sub_22B9A3658(v11, v10, v9);
    }

    else
    {
      sub_22B936BEC(v0 + 480, &qword_27D8D55B0, &qword_22BA178E0);
      v26 = *(v0 + 616);
      v27 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
      *(v0 + 712) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
      v28 = *(*sub_22B9358B4((v26 + v27), *(v26 + v27 + 24)) + 24);
      *(v0 + 720) = *MEMORY[0x277D19A70];
      if ([v28 BOOLForKey_])
      {
        v50 = *(v0 + 616);
        v29 = v50 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase;
        v30 = *(v50 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase);
        *(v0 + 728) = v30;
        v31 = *(v29 + 8);
        sub_22B9349C8(&qword_27D8D55B8, &qword_22BA178E8);
        inited = swift_initStackObject();
        *(v0 + 736) = inited;
        *(inited + 16) = v30;
        *(inited + 24) = v31;
        sub_22B9349C8(&qword_27D8D55C0, qword_22BA178F0);
        v33 = swift_initStackObject();
        *(v33 + 16) = xmmword_22BA13CB0;
        KeyPath = swift_getKeyPath();
        swift_unknownObjectRetain_n();
        v35 = sub_22B9A7818(KeyPath, 2);

        *(v33 + 32) = v35;
        v36 = sub_22B9A7DB0(v33);
        swift_setDeallocating();
        sub_22B936BEC(v33 + 32, &qword_27D8D55C8, &qword_22BA17930);
        sub_22B9349C8(&unk_27D8D55D0, &qword_22BA17938);
        v37 = swift_initStackObject();
        *(v0 + 744) = v37;

        v38 = MEMORY[0x277D84F90];
        *(v37 + 64) = MEMORY[0x277D84F90];
        *(v37 + 16) = v30;
        *(v37 + 24) = v31;
        *(v37 + 32) = 0;
        *(v37 + 40) = 1;
        v39 = swift_allocObject();
        *(v0 + 752) = v39;
        *(v39 + 24) = 0;
        *(v39 + 32) = 0;
        *(v39 + 16) = v36;
        *(v39 + 40) = 1;
        *(v37 + 48) = &unk_22BA17940;
        *(v37 + 56) = v39;
        v40 = swift_allocObject();
        *(v40 + 16) = v50;
        v41 = swift_allocObject();
        *(v41 + 16) = &unk_22BA17950;
        *(v41 + 24) = v40;
        swift_beginAccess();
        swift_unknownObjectRetain();

        v42 = sub_22B97FF5C(0, 1, 1, v38);
        v44 = v42[2];
        v43 = v42[3];
        if (v44 >= v43 >> 1)
        {
          v42 = sub_22B97FF5C((v43 > 1), v44 + 1, 1, v42);
        }

        *(v0 + 760) = v42;
        v42[2] = v44 + 1;
        v45 = &v42[2 * v44];
        v45[4] = &unk_22BA17960;
        v45[5] = v41;
        *(v37 + 64) = v42;
        swift_endAccess();

        v46 = swift_task_alloc();
        *(v0 + 768) = v46;
        *v46 = v0;
        v46[1] = sub_22B9A6840;

        return sub_22B9A853C();
      }

      else
      {
        sub_22B936BEC(v0 + 400, &qword_27D8D55B0, &qword_22BA178E0);
        v47 = *(v0 + 8);
        v48 = *(v0 + 688);

        return v47(v48, 0);
      }
    }
  }

  else
  {
    *(v0 + 656) = v1;
    v49 = *(v0 + 616);
    v13 = sub_22B9358B4((*(v0 + 632) + 40 * v1 + 32), *(*(v0 + 632) + 40 * v1 + 56));
    v15 = *(v13 + 1);
    v14 = *(v13 + 2);
    *(v0 + 120) = *v13;
    *(v0 + 136) = v15;
    *(v0 + 152) = v14;
    v16 = v13[12];
    v18 = *(v13 + 4);
    v17 = *(v13 + 5);
    *(v0 + 168) = *(v13 + 3);
    *(v0 + 184) = v18;
    *(v0 + 200) = v17;
    *(v0 + 216) = v16;
    v19 = *(v0 + 136);
    *(v0 + 224) = *(v0 + 120);
    *(v0 + 240) = v19;
    v20 = *(v0 + 168);
    *(v0 + 256) = *(v0 + 152);
    *(v0 + 272) = v20;
    v21 = *(v0 + 200);
    *(v0 + 288) = *(v0 + 184);
    *(v0 + 304) = v21;
    *(v0 + 320) = v16;
    v22 = swift_task_alloc();
    *(v0 + 664) = v22;
    *(v22 + 16) = v0 + 224;
    *(v22 + 24) = v49;
    v23 = *(MEMORY[0x277D85A40] + 4);
    v24 = swift_task_alloc();
    *(v0 + 672) = v24;
    *v24 = v0;
    v24[1] = sub_22B9A5A70;
    v25 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v24, 0, 0, 0xD000000000000014, 0x800000022BA1DC50, sub_22B9A6C28, v22, v25);
  }
}

uint64_t sub_22B9A61E0()
{
  v1 = v0[83];

  v2 = v0[85];
  v3 = v0[1];

  return v3();
}

uint64_t sub_22B9A6244(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 696);
  v6 = *v2;
  *(*v2 + 704) = v1;

  if (v1)
  {
    v7 = sub_22B9A6B38;
  }

  else
  {
    *(v4 + 792) = a1 & 1;
    v7 = sub_22B9A6370;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B9A6370()
{
  if (*(v0 + 792))
  {
    v1 = (*(v0 + 616) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
    [*(*sub_22B9358B4(v1 v1[3]) + 24)];
    [*(*sub_22B9358B4(v1 v1[3]) + 24)];
    sub_22B936C4C((v0 + 440));
    v2 = *(v0 + 616);
    v3 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
    *(v0 + 712) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
    v4 = *(*sub_22B9358B4((v2 + v3), *(v2 + v3 + 24)) + 24);
    *(v0 + 720) = *MEMORY[0x277D19A70];
    if ([v4 BOOLForKey_])
    {
      v27 = *(v0 + 616);
      v5 = v27 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase;
      v6 = *(v27 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase);
      *(v0 + 728) = v6;
      v7 = *(v5 + 8);
      sub_22B9349C8(&qword_27D8D55B8, &qword_22BA178E8);
      inited = swift_initStackObject();
      *(v0 + 736) = inited;
      *(inited + 16) = v6;
      *(inited + 24) = v7;
      sub_22B9349C8(&qword_27D8D55C0, qword_22BA178F0);
      v9 = swift_initStackObject();
      *(v9 + 16) = xmmword_22BA13CB0;
      KeyPath = swift_getKeyPath();
      swift_unknownObjectRetain_n();
      v11 = sub_22B9A7818(KeyPath, 2);

      *(v9 + 32) = v11;
      v12 = sub_22B9A7DB0(v9);
      swift_setDeallocating();
      sub_22B936BEC(v9 + 32, &qword_27D8D55C8, &qword_22BA17930);
      sub_22B9349C8(&unk_27D8D55D0, &qword_22BA17938);
      v13 = swift_initStackObject();
      *(v0 + 744) = v13;

      v14 = MEMORY[0x277D84F90];
      *(v13 + 64) = MEMORY[0x277D84F90];
      *(v13 + 16) = v6;
      *(v13 + 24) = v7;
      *(v13 + 32) = 0;
      *(v13 + 40) = 1;
      v15 = swift_allocObject();
      *(v0 + 752) = v15;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0;
      *(v15 + 16) = v12;
      *(v15 + 40) = 1;
      *(v13 + 48) = &unk_22BA17940;
      *(v13 + 56) = v15;
      v16 = swift_allocObject();
      *(v16 + 16) = v27;
      v17 = swift_allocObject();
      *(v17 + 16) = &unk_22BA17950;
      *(v17 + 24) = v16;
      swift_beginAccess();
      swift_unknownObjectRetain();

      v18 = sub_22B97FF5C(0, 1, 1, v14);
      v20 = v18[2];
      v19 = v18[3];
      if (v20 >= v19 >> 1)
      {
        v18 = sub_22B97FF5C((v19 > 1), v20 + 1, 1, v18);
      }

      *(v0 + 760) = v18;
      v18[2] = v20 + 1;
      v21 = &v18[2 * v20];
      v21[4] = &unk_22BA17960;
      v21[5] = v17;
      *(v13 + 64) = v18;
      swift_endAccess();

      v22 = swift_task_alloc();
      *(v0 + 768) = v22;
      *v22 = v0;
      v22[1] = sub_22B9A6840;

      return sub_22B9A853C();
    }

    else
    {
      sub_22B936BEC(v0 + 400, &qword_27D8D55B0, &qword_22BA178E0);
      v25 = *(v0 + 8);
      v26 = *(v0 + 688);

      return v25(v26, 0);
    }
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D19D08] code:3 userInfo:0];
    swift_willThrow();
    sub_22B936BEC(v0 + 400, &qword_27D8D55B0, &qword_22BA178E0);
    sub_22B936C4C((v0 + 440));
    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_22B9A6840(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 768);
  v6 = *v2;
  v4[97] = a1;
  v4[98] = v1;

  v7 = v3[95];
  v8 = v3[94];
  v9 = v3[91];
  swift_unknownObjectRelease();

  if (v1)
  {
    v10 = sub_22B9A6BB4;
  }

  else
  {
    v10 = sub_22B9A69C0;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_22B9A69C0()
{
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v1 = sub_22BA0FEFC();
  sub_22B936CA8(v1, qword_28141AD10);
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1042C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[97];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_22B92A000, v2, v3, "Found %ld records ready to re-import", v5, 0xCu);
    MEMORY[0x23189ADD0](v5, -1, -1);
  }

  v6 = v0[90];
  v7 = v0[89];
  v8 = v0[77];

  [*(*sub_22B9358B4((v8 + v7) *(v8 + v7 + 24)) + 24)];
  sub_22B936BEC((v0 + 50), &qword_27D8D55B0, &qword_22BA178E0);
  v9 = v0[1];
  v10 = v0[86];

  return v9(v10, 0);
}

uint64_t sub_22B9A6B38()
{
  sub_22B936BEC((v0 + 50), &qword_27D8D55B0, &qword_22BA178E0);
  sub_22B936C4C(v0 + 55);
  v1 = v0[88];
  v2 = v0[1];

  return v2();
}

uint64_t sub_22B9A6BB4()
{
  sub_22B936BEC(v0 + 400, &qword_27D8D55B0, &qword_22BA178E0);
  v1 = *(v0 + 784);
  v2 = *(v0 + 8);

  return v2();
}

__n128 sub_22B9A6C28(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = *(v3 + 80);
  v9[4] = *(v3 + 64);
  v9[5] = v5;
  v10 = *(v3 + 96);
  v6 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v6;
  v7 = *(v3 + 48);
  v9[2] = *(v3 + 32);
  v9[3] = v7;
  sub_22B9A4108(a1, v9, v2, v4);
  return result;
}

uint64_t sub_22B9A6C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&qword_27D8D55B0, &qword_22BA178E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B9A6CF0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_22B9A6DB8;

  return sub_22B9A7EE4(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_22B9A6DB8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_22B9A6EB4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B943E68;

  return sub_22B9A3C04(a1, v5);
}

uint64_t sub_22B9A6F5C(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22B945AC8;

  return sub_22B9A5314(a1, a2, v7);
}

uint64_t sub_22B9A703C(void *a1, char a2)
{
  v5 = *(sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v2 + ((v7 + 111) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = v2 + v7;
  v12 = *(v11 + 80);
  v16[4] = *(v11 + 64);
  v16[5] = v12;
  v17 = *(v11 + 96);
  v13 = *(v11 + 16);
  v16[0] = *v11;
  v16[1] = v13;
  v14 = *(v11 + 48);
  v16[2] = *(v11 + 32);
  v16[3] = v14;
  return sub_22B9A43B4(a1, a2 & 1, v2 + v6, v16, v9, v10);
}

id sub_22B9A7124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [objc_opt_self() predicateWithValue_];
  sub_22B951A54(0, &qword_281414AA0, 0x277CBC578);
  v8 = v7;
  v9 = sub_22BA106AC();
  v10 = [objc_allocWithZone(MEMORY[0x277CBC590]) initWithQuery_];
  v11 = *(v4 + 16);
  sub_22BA082E0(v11);
  v12 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
  v13 = sub_22BA0FFCC();

  v14 = [v12 initWithZoneName_];

  v15 = [v14 zoneID];
  [v10 setZoneID_];

  sub_22B9349C8(&qword_27D8D5168, &unk_22BA15230);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22BA13CB0;
  v17 = sub_22BA08430(v11);
  if (v17 <= 2)
  {
    if (!v17)
    {
      v18 = 0x800000022BA1B9C0;
      v19 = 0xD000000000000012;
      goto LABEL_15;
    }

    if (v17 == 1)
    {
      v18 = 0xEF32766465747079;
      v19 = 0x72636E4574616863;
      goto LABEL_15;
    }

    v20 = "MessageEncryptedV3";
    goto LABEL_13;
  }

  if (v17 <= 4)
  {
    if (v17 == 3)
    {
      v18 = 0xEA0000000000746ELL;
      v19 = 0x656D686361747461;
      goto LABEL_15;
    }

    v20 = "recoverableMessage";
LABEL_13:
    v18 = (v20 - 32) | 0x8000000000000000;
    v19 = 0xD000000000000012;
    goto LABEL_15;
  }

  if (v17 == 5)
  {
    v18 = 0xEF31566574616470;
    v19 = 0x556567617373656DLL;
  }

  else
  {
    v18 = 0xE700000000000000;
    v19 = 0x6E776F6E6B6E75;
  }

LABEL_15:
  *(v16 + 32) = v19;
  *(v16 + 40) = v18;
  sub_22BA1048C();
  sub_22B930C20(a1);
  sub_22BA104AC();
  sub_22B930C20(a3);
  sub_22BA1049C();

  return v10;
}

unint64_t sub_22B9A7424()
{
  result = qword_281414BD0;
  if (!qword_281414BD0)
  {
    type metadata accessor for Code(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414BD0);
  }

  return result;
}

uint64_t sub_22B9A747C(void *a1, char a2)
{
  v5 = *(sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460) - 8);
  v6 = *(v2 + 96);
  v7 = (*(v5 + 80) + 120) & ~*(v5 + 80);
  v11[4] = *(v2 + 80);
  v11[5] = v6;
  v12 = *(v2 + 112);
  v8 = *(v2 + 32);
  v11[0] = *(v2 + 16);
  v11[1] = v8;
  v9 = *(v2 + 64);
  v11[2] = *(v2 + 48);
  v11[3] = v9;
  return sub_22B9A4CA8(a1, a2 & 1, v11);
}

unint64_t sub_22B9A7528()
{
  result = qword_27D8D55E8;
  if (!qword_27D8D55E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D55E8);
  }

  return result;
}

void *sub_22B9A758C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];
  sub_22B979210(v0[8]);
  v5 = v0[12];
  sub_22B979210(v0[11]);
  v6 = v0[10];
  v0[10] = 0;

  if (v6)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v7 = *(v6 + 80);
      swift_retain_n();

      v6 = v7;
    }

    while (v7);
  }

  return v0;
}

uint64_t sub_22B9A762C()
{
  sub_22B9A758C();

  return swift_deallocClassInstance();
}

unint64_t sub_22B9A7698()
{
  result = qword_27D8D5608;
  if (!qword_27D8D5608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5608);
  }

  return result;
}

uint64_t ReportCategory.imdCategory.getter(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    result = sub_22BA10C9C();
    __break(1u);
  }

  return result;
}

uint64_t ReportCategory.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_22B9A774C()
{
  result = qword_27D8D5610;
  if (!qword_27D8D5610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5610);
  }

  return result;
}

uint64_t *sub_22B9A77A0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 4;
  v4 = __CFADD__(v3, 3);
  v5 = v3 < 0xFFFFFFFFFFFFFFFDLL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

id sub_22B9A77D0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 statusValue];
  *a2 = result;
  return result;
}

id sub_22B9A7818(uint64_t a1, int a2)
{
  sub_22BA107BC();
  if (v3)
  {
    MEMORY[0x231899730](0x4025203D20, 0xE500000000000000);
    sub_22B9349C8(&qword_27D8D5170, &unk_22BA19630);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_22BA13CB0;
    *(v4 + 56) = MEMORY[0x277D849A8];
    *(v4 + 32) = a2;
    v5 = sub_22BA0FFCC();

    v6 = sub_22BA101DC();

    v7 = [objc_opt_self() predicateWithFormat:v5 argumentArray:v6];

    return v7;
  }

  else
  {
    v9 = [objc_opt_self() predicateWithValue_];

    return v9;
  }
}

void sub_22B9A7968()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_22B9A7818(KeyPath, 0);

  v2 = swift_getKeyPath();
  v3 = sub_22B9A7C48(v2, 0x72636E4574616863, 0xEF32766465747079);

  v4 = swift_getKeyPath();
  v5 = sub_22B9A7C48(v4, 0x656D686361747461, 0xEA0000000000746ELL);

  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22BA17B40;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  v7 = objc_allocWithZone(MEMORY[0x277CCA920]);
  sub_22B9A90E8();
  v8 = v3;
  v9 = v5;
  v10 = sub_22BA101DC();

  v11 = [v7 initWithType:2 subpredicates:v10];

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22BA17B40;
  *(v12 + 32) = v1;
  *(v12 + 40) = v11;
  v13 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v14 = v1;
  v15 = v11;
  v16 = sub_22BA101DC();

  v17 = [v13 initWithType:1 subpredicates:v16];

  qword_28141AD58 = v17;
}

void sub_22B9A7B70(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 recordType];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22BA0FFFC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_22B9A7BD8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_22BA0FFCC();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setRecordType_];
}

id sub_22B9A7C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BA107BC();
  if (v5)
  {
    MEMORY[0x231899730](0x4025203D20, 0xE500000000000000);
    sub_22B9349C8(&qword_27D8D5170, &unk_22BA19630);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22BA13CB0;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 32) = a2;
    *(v6 + 40) = a3;

    v7 = sub_22BA0FFCC();

    v8 = sub_22BA101DC();

    v9 = [objc_opt_self() predicateWithFormat:v7 argumentArray:v8];

    return v9;
  }

  else
  {
    v11 = [objc_opt_self() predicateWithValue_];

    return v11;
  }
}

id sub_22B9A7DB0(uint64_t a1)
{
  v2 = [objc_opt_self() predicateWithValue_];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_22BA17B40;
      *(v6 + 32) = v2;
      *(v6 + 40) = v5;
      v7 = objc_allocWithZone(MEMORY[0x277CCA920]);
      sub_22B9A90E8();
      v8 = v5;
      v9 = sub_22BA101DC();

      v2 = [v7 initWithType:1 subpredicates:v9];

      --v3;
    }

    while (v3);
  }

  return v2;
}

uint64_t sub_22B9A7EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 120) = a6;
  *(v6 + 72) = a4;
  *(v6 + 80) = a5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 48) = a1;
  return MEMORY[0x2822009F8](sub_22B9A7F10, 0, 0);
}

uint64_t sub_22B9A7F10()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v4 = sub_22BA0FFCC();
  v5 = [v3 initWithEntityName_];
  *(v0 + 88) = v5;

  [v5 setPredicate_];
  if (v2)
  {
    v6 = *(v0 + 72);
    v7 = sub_22BA101DC();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + 120);
  [v5 setRelationshipKeyPathsForPrefetching_];

  if ((v8 & 1) == 0)
  {
    [v5 setFetchLimit_];
  }

  v9 = *(v0 + 48);
  v19 = *(v0 + 56);
  ObjectType = swift_getObjectType();
  v11 = *(v19 + 40);
  v18 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  v14 = type metadata accessor for RemoteRecord();
  *v13 = v0;
  v13[1] = sub_22B9A8114;
  v16 = *(v0 + 48);
  v15 = *(v0 + 56);

  return (v18)(v5, v14, &off_283F57740, ObjectType, v15);
}

uint64_t sub_22B9A8114(uint64_t a1, char a2)
{
  v5 = *v3;
  v6 = *(*v3 + 96);
  v7 = *v3;
  *(v5 + 104) = a1;
  *(v5 + 112) = v2;

  if (v2)
  {
    v8 = sub_22B9A84D8;
  }

  else
  {
    *(v5 + 121) = a2;
    v8 = sub_22B9A823C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22B9A823C()
{
  v24 = v0;
  v1 = *(v0 + 104);
  if (*(v0 + 121))
  {
    v2 = v1;
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 104);
    v4 = *(v0 + 64);
    v5 = sub_22BA0FEFC();
    sub_22B936CA8(v5, qword_28141AD40);
    sub_22B9A90D0(v3, 1);
    v6 = v4;
    v7 = sub_22BA0FEDC();
    v8 = sub_22BA1044C();
    sub_22B9A90DC(v3, 1);

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 64);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v10 = 136315394;
      swift_getErrorValue();
      v13 = *(v0 + 16);
      v14 = sub_22B9587B4(*(v0 + 24), *(v0 + 32));
      v16 = sub_22B99153C(v14, v15, &v23);

      *(v10 + 4) = v16;
      *(v10 + 12) = 2112;
      *(v10 + 14) = v9;
      *v11 = v9;
      v17 = v9;
      _os_log_impl(&dword_22B92A000, v7, v8, "Error fetching in QueryBuilder: %s for predicate: %@", v10, 0x16u);
      sub_22B936BEC(v11, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v11, -1, -1);
      sub_22B936C4C(v12);
      MEMORY[0x23189ADD0](v12, -1, -1);
      MEMORY[0x23189ADD0](v10, -1, -1);
    }

    v18 = *(v0 + 104);
    v19 = *(v0 + 88);
    swift_willThrow();
    sub_22B9A90DC(v18, 1);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {

    v22 = *(v0 + 8);

    return v22(v1);
  }
}

uint64_t sub_22B9A84D8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B9A855C()
{
  v1 = *(v0 + 48);
  v2 = v1[7];
  v3 = v1[2];
  v4 = v1[3];
  v8 = (v1[6] + *v1[6]);
  v5 = *(v1[6] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_22B9A865C;

  return v8(v3, v4);
}

uint64_t sub_22B9A865C(uint64_t a1)
{
  v3 = *(*v2 + 56);
  v4 = *v2;
  *(v4 + 64) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22B9A8790, 0, 0);
  }
}

uint64_t sub_22B9A8790()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 64);
  v0[9] = v2;
  v3 = *(v2 + 16);
  v0[10] = v3;

  if (v3)
  {
    v0[11] = 0;
    if (v4[2])
    {
      v5 = v0[8];
      v0[12] = v4[5];
      v6 = v4[4];
      v0[5] = v5;

      v15 = (v6 + *v6);
      v7 = v6[1];
      v8 = swift_task_alloc();
      v0[13] = v8;
      *v8 = v0;
      v8[1] = sub_22B9A8958;

      return v15();
    }

    __break(1u);
    goto LABEL_12;
  }

  v10 = v0[8];

  if (v10 >> 62)
  {
LABEL_12:
    if (v0[8] < 0)
    {
      v14 = v0[8];
    }

    v11 = sub_22BA1080C();
    goto LABEL_8;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v12 = v0[8];

  v13 = v0[1];

  return v13(v11);
}

uint64_t sub_22B9A8958()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 72);

    v6 = sub_22B9A8C40;
  }

  else
  {
    v6 = sub_22B9A8A7C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22B9A8A7C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  if (v2 + 1 == v3)
  {
    v6 = v0[8];
    v5 = v0[9];

    if (v6 >> 62)
    {
      if (v0[8] < 0)
      {
        v17 = v0[8];
      }

      v7 = sub_22BA1080C();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v0[8];

    v9 = v0[1];

    return v9(v7);
  }

  else
  {
    v10 = v0[11] + 1;
    v0[11] = v10;
    v11 = v0[9];
    if (v10 >= *(v11 + 16))
    {
      __break(1u);
    }

    else
    {
      v12 = v0[8];
      v13 = v11 + 16 * v10;
      v0[12] = *(v13 + 40);
      v14 = *(v13 + 32);
      v0[5] = v12;

      v18 = (v14 + *v14);
      v15 = v14[1];
      v16 = swift_task_alloc();
      v0[13] = v16;
      *v16 = v0;
      v16[1] = sub_22B9A8958;

      return v18();
    }
  }

  return result;
}

uint64_t sub_22B9A8C40()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[1];

  return v3();
}

uint64_t sub_22B9A8CA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return MEMORY[0x2822009F8](sub_22B9A8CC4, 0, 0);
}

uint64_t sub_22B9A8CC4()
{
  sub_22B9349C8(&qword_27D8D55B8, &qword_22BA178E8);
  v10 = *(v0 + 160);
  inited = swift_initStackObject();
  *(v0 + 176) = inited;
  *(inited + 16) = v10;
  sub_22B9349C8(&qword_27D8D55C0, qword_22BA178F0);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_22BA13CB0;
  v3 = qword_281414E78;
  swift_unknownObjectRetain();
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_28141AD58;
  v11 = *(v0 + 160);
  *(v2 + 32) = v4;
  v5 = sub_22B9A7DB0(v2);
  swift_setDeallocating();
  sub_22B936BEC(v2 + 32, &qword_27D8D55C8, &qword_22BA17930);
  sub_22B9349C8(&unk_27D8D55D0, &qword_22BA17938);
  v6 = swift_initStackObject();
  *(v0 + 184) = v6;

  *(v6 + 64) = MEMORY[0x277D84F90];
  *(v6 + 16) = v11;
  *(v6 + 32) = 1;
  *(v6 + 40) = 0;
  v7 = swift_allocObject();
  *(v0 + 192) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = xmmword_22BA17B50;
  *(v7 + 40) = 0;
  *(v6 + 48) = &unk_22BA17940;
  *(v6 + 56) = v7;
  swift_unknownObjectRetain();
  v8 = swift_task_alloc();
  *(v0 + 200) = v8;
  *v8 = v0;
  v8[1] = sub_22B9A8EF8;

  return sub_22B9A853C();
}

uint64_t sub_22B9A8EF8(uint64_t a1)
{
  v4 = *(*v2 + 200);
  v5 = *v2;
  v5[26] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B9A905C, 0, 0);
  }

  else
  {
    v6 = v5[24];
    v7 = v5[20];
    swift_unknownObjectRelease();

    v8 = v5[1];

    return v8(a1 > 0);
  }
}

uint64_t sub_22B9A905C()
{
  v1 = v0[24];
  v2 = v0[20];
  swift_unknownObjectRelease();

  v3 = v0[1];
  v4 = v0[26];

  return v3(0);
}

id sub_22B9A90D0(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_22B9A90DC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_22B9A90E8()
{
  result = qword_281414B98;
  if (!qword_281414B98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281414B98);
  }

  return result;
}

uint64_t sub_22B9A915C()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_22B9A7C48(KeyPath, 0x72636E4574616863, 0xEF32766465747079);

  v3 = swift_getKeyPath();
  v4 = sub_22B9A7818(v3, 0);

  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22BA17B40;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
  v6 = objc_allocWithZone(MEMORY[0x277CCA920]);
  sub_22B9A90E8();
  v7 = v2;
  v8 = v4;
  v9 = sub_22BA101DC();

  v10 = [v6 initWithType:1 subpredicates:v9];
  *(v0 + 328) = v10;

  v11 = swift_getKeyPath();
  v12 = sub_22B9A7C48(v11, 0x72636E4574616863, 0xEF32766465747079);

  v13 = swift_getKeyPath();
  v14 = sub_22B9A7818(v13, 1);

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22BA17B40;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v17 = v12;
  v18 = v14;
  v19 = sub_22BA101DC();

  *(v0 + 336) = [v16 initWithType:1 subpredicates:v19];

  if (qword_281416778 != -1)
  {
    swift_once();
  }

  v20 = xmmword_28141AEB0;
  *(v0 + 344) = xmmword_28141AEB0;
  *(v0 + 360) = sub_22B9349C8(&qword_27D8D55B8, &qword_22BA178E8);
  inited = swift_initStackObject();
  *(v0 + 368) = inited;
  *(inited + 16) = v20;
  *(v0 + 376) = sub_22B9349C8(&qword_27D8D55C0, qword_22BA178F0);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_22BA13CB0;
  *(v22 + 32) = v10;
  swift_unknownObjectRetain_n();
  v23 = v10;
  v24 = sub_22B9A7DB0(v22);
  swift_setDeallocating();
  sub_22B936BEC(v22 + 32, &qword_27D8D55C8, &qword_22BA17930);
  *(v0 + 384) = sub_22B9349C8(&unk_27D8D55D0, &qword_22BA17938);
  v25 = swift_initStackObject();
  *(v0 + 392) = v25;

  *(v25 + 64) = MEMORY[0x277D84F90];
  *(v25 + 16) = v20;
  *(v25 + 32) = 0;
  *(v25 + 40) = 1;
  v26 = swift_allocObject();
  *(v0 + 400) = v26;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  *(v26 + 16) = v24;
  *(v26 + 40) = 1;
  *(v25 + 48) = &unk_22BA17C50;
  *(v25 + 56) = v26;
  v27 = swift_task_alloc();
  *(v0 + 408) = v27;
  *v27 = v0;
  v27[1] = sub_22B9A956C;

  return sub_22B9A853C();
}

uint64_t sub_22B9A956C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[38] = v2;
  v4[39] = a1;
  v4[40] = v1;
  v5 = v3[51];
  v10 = *v2;
  v4[52] = v1;

  if (v1)
  {
    v6 = sub_22B9A99F4;
  }

  else
  {
    v7 = v4[50];
    v8 = v4[43];
    swift_unknownObjectRelease();

    v6 = sub_22B9A969C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22B9A969C()
{
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  inited = swift_initStackObject();
  v0[53] = inited;
  *(inited + 16) = v5;
  *(inited + 24) = v4;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_22BA13CB0;
  *(v8 + 32) = v6;
  swift_unknownObjectRetain_n();
  v9 = v6;
  v10 = sub_22B9A7DB0(v8);
  swift_setDeallocating();
  sub_22B936BEC(v8 + 32, &qword_27D8D55C8, &qword_22BA17930);

  v11 = swift_initStackObject();
  v0[54] = v11;
  *(v11 + 64) = MEMORY[0x277D84F90];
  *(v11 + 16) = v5;
  *(v11 + 24) = v4;
  *(v11 + 32) = 0;
  *(v11 + 40) = 1;
  v12 = swift_allocObject();
  v0[55] = v12;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = v10;
  *(v12 + 40) = 1;
  *(v11 + 48) = &unk_22BA17C58;
  *(v11 + 56) = v12;
  v13 = swift_task_alloc();
  v0[56] = v13;
  *v13 = v0;
  v13[1] = sub_22B9A9848;

  return sub_22B9A853C();
}

uint64_t sub_22B9A9848(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;
  *(*v2 + 456) = v1;

  if (v1)
  {
    v7 = sub_22B9A9BA8;
  }

  else
  {
    v8 = v4[55];
    v9 = v4[39];
    v10 = v4[43];
    swift_unknownObjectRelease();

    v4[58] = a1;
    v4[59] = v9;
    v7 = sub_22B9A9988;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B9A9988()
{
  v1 = *(v0 + 328);

  v2 = *(v0 + 8);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);

  return v2(v3, v4);
}

uint64_t sub_22B9A99F4()
{
  v1 = v0[52];
  v2 = v0[50];
  v3 = v0[43];
  swift_unknownObjectRelease();

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v4 = sub_22BA0FEFC();
  sub_22B936CA8(v4, qword_28141AD40);
  v5 = v1;
  v6 = sub_22BA0FEDC();
  v7 = sub_22BA1044C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22B92A000, v6, v7, "Encountered error fetching sync store chat counts for statistics: %@", v8, 0xCu);
    sub_22B936BEC(v9, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);
  }

  v13 = v0[41];
  v12 = v0[42];

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t sub_22B9A9BA8()
{
  v1 = v0[57];
  v2 = v0[55];
  v3 = v0[43];
  swift_unknownObjectRelease();

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v4 = sub_22BA0FEFC();
  sub_22B936CA8(v4, qword_28141AD40);
  v5 = v1;
  v6 = sub_22BA0FEDC();
  v7 = sub_22BA1044C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22B92A000, v6, v7, "Encountered error fetching sync store chat counts for statistics: %@", v8, 0xCu);
    sub_22B936BEC(v9, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);
  }

  v13 = v0[41];
  v12 = v0[42];

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t sub_22B9A9D78()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_22B9A7C48(KeyPath, 0xD000000000000012, 0x800000022BA1B9F0);

  v3 = swift_getKeyPath();
  v4 = sub_22B9A7818(v3, 0);

  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22BA17B40;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
  v6 = objc_allocWithZone(MEMORY[0x277CCA920]);
  sub_22B9A90E8();
  v7 = v2;
  v8 = v4;
  v9 = sub_22BA101DC();

  v10 = [v6 initWithType:1 subpredicates:v9];
  *(v0 + 328) = v10;

  v11 = swift_getKeyPath();
  v12 = sub_22B9A7C48(v11, 0xD000000000000012, 0x800000022BA1B9F0);

  v13 = swift_getKeyPath();
  v14 = sub_22B9A7818(v13, 1);

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22BA17B40;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v17 = v12;
  v18 = v14;
  v19 = sub_22BA101DC();

  *(v0 + 336) = [v16 initWithType:1 subpredicates:v19];

  if (qword_281416778 != -1)
  {
    swift_once();
  }

  v20 = xmmword_28141AEB0;
  *(v0 + 344) = xmmword_28141AEB0;
  *(v0 + 360) = sub_22B9349C8(&qword_27D8D55B8, &qword_22BA178E8);
  inited = swift_initStackObject();
  *(v0 + 368) = inited;
  *(inited + 16) = v20;
  *(v0 + 376) = sub_22B9349C8(&qword_27D8D55C0, qword_22BA178F0);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_22BA13CB0;
  *(v22 + 32) = v10;
  swift_unknownObjectRetain_n();
  v23 = v10;
  v24 = sub_22B9A7DB0(v22);
  swift_setDeallocating();
  sub_22B936BEC(v22 + 32, &qword_27D8D55C8, &qword_22BA17930);
  *(v0 + 384) = sub_22B9349C8(&unk_27D8D55D0, &qword_22BA17938);
  v25 = swift_initStackObject();
  *(v0 + 392) = v25;

  *(v25 + 64) = MEMORY[0x277D84F90];
  *(v25 + 16) = v20;
  *(v25 + 32) = 0;
  *(v25 + 40) = 1;
  v26 = swift_allocObject();
  *(v0 + 400) = v26;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  *(v26 + 16) = v24;
  *(v26 + 40) = 1;
  *(v25 + 48) = &unk_22BA17C38;
  *(v25 + 56) = v26;
  v27 = swift_task_alloc();
  *(v0 + 408) = v27;
  *v27 = v0;
  v27[1] = sub_22B9AA178;

  return sub_22B9A853C();
}

uint64_t sub_22B9AA178(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[38] = v2;
  v4[39] = a1;
  v4[40] = v1;
  v5 = v3[51];
  v10 = *v2;
  v4[52] = v1;

  if (v1)
  {
    v6 = sub_22B9ABB98;
  }

  else
  {
    v7 = v4[50];
    v8 = v4[43];
    swift_unknownObjectRelease();

    v6 = sub_22B9AA2A8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22B9AA2A8()
{
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  inited = swift_initStackObject();
  v0[53] = inited;
  *(inited + 16) = v5;
  *(inited + 24) = v4;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_22BA13CB0;
  *(v8 + 32) = v6;
  swift_unknownObjectRetain_n();
  v9 = v6;
  v10 = sub_22B9A7DB0(v8);
  swift_setDeallocating();
  sub_22B936BEC(v8 + 32, &qword_27D8D55C8, &qword_22BA17930);

  v11 = swift_initStackObject();
  v0[54] = v11;
  *(v11 + 64) = MEMORY[0x277D84F90];
  *(v11 + 16) = v5;
  *(v11 + 24) = v4;
  *(v11 + 32) = 0;
  *(v11 + 40) = 1;
  v12 = swift_allocObject();
  v0[55] = v12;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = v10;
  *(v12 + 40) = 1;
  *(v11 + 48) = &unk_22BA17C40;
  *(v11 + 56) = v12;
  v13 = swift_task_alloc();
  v0[56] = v13;
  *v13 = v0;
  v13[1] = sub_22B9AA454;

  return sub_22B9A853C();
}