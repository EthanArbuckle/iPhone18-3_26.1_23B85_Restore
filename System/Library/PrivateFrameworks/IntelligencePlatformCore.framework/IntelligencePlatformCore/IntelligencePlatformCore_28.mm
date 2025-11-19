void sub_1C464A118()
{
  sub_1C43FBD3C();
  v12 = sub_1C4418330(v9, v10, v11);
  v75 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v16 = sub_1C4409ACC(v15, v73);
  v17 = sub_1C4412DFC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = sub_1C4416DF8();
  v21 = type metadata accessor for WalletTransactionOrderSourceIngestor(v20);
  v22 = sub_1C44158C8(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C44144E4();
  if (v2)
  {
    sub_1C442493C();
  }

  else
  {
    v26 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v26);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v8 = &dword_1C4F141D0;
    v0 = sub_1C4656BB0();
    sub_1C442C5A4();
    sub_1C4401CBC(v27, v28, &dword_1C4F141D0);
    sub_1C44418D0();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v74);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v29 = sub_1C4F00978();
        sub_1C43FCEE8(v29, qword_1EDE2DE10);
        v30 = sub_1C44623A0();
        sub_1C4430900(v30, v5);
        v31 = sub_1C4F00968();
        sub_1C4F01CD8();
        v32 = sub_1C44016D0();
        if (os_log_type_enabled(v32, v33))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v34 = swift_slowAlloc();
          sub_1C44305A4(v34);
          *v8 = 136315138;
          sub_1C445BD08();
          sub_1C447E868(v5, type metadata accessor for WalletTransactionOrderSourceIngestor);
          v35 = sub_1C44C11FC();
          sub_1C46404C4(v35, v36, v37);
          sub_1C4450608();
          v38 = sub_1C447CB90();
          sub_1C441D828(v38, v3, v39);
          sub_1C4404CE0();

          *(v8 + 4) = v1;
          sub_1C442A8B0(&dword_1C43F8000, v40, v41, "%s failed to update progress token");
          sub_1C440962C(v6);
          v42 = sub_1C4416E14();
          MEMORY[0x1C6942830](v42);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44F1994();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C4458688();
    objc_autoreleasePoolPop(v74);
    sub_1C4466CD8();
  }

  sub_1C443EEB8();
  sub_1C4654608(v43);
  sub_1C445A930();
  if (!v2)
  {
    sub_1C4420C3C(&v76, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v44 = sub_1C43FECAC();
  v45(v44);
  sub_1C4456268();
  if ((v5 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4475460();
  switch(v47)
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        v48 = sub_1C447581C();
        sub_1C43FCE50(v48);
        v50 = *(v49 + 16);
        v51 = sub_1C4488550();
        v52(v51);
        v53 = *(v7 + 24);
        v54 = *(v4 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v55);
        v56 = sub_1C4404144(*(v7 + 20));
        sub_1C4417F8C(v56);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v57 = sub_1C4404CB4();
        sub_1C4412DCC(v57, xmmword_1C4F0D130);
        sub_1C444FC8C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v58 = type metadata accessor for ProgressTokens;
      }

      else
      {
        v59 = sub_1C447581C();
        sub_1C43FCE50(v59);
        v61 = *(v60 + 16);
        v62 = sub_1C447F8DC();
        v63(v62);
        sub_1C4428E54();
        v64 = *(v4 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v65);
        sub_1C4456980();
        v67 = sub_1C442DD98(v66);
        sub_1C4417F8C(v67);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v68 = sub_1C4405904();
        sub_1C44068A0(v68, xmmword_1C4F0D130);
        sub_1C4430900(v6, v69);
        v70 = sub_1C444FC8C();
        sub_1C449498C(v70);
        swift_setDeallocating();
        sub_1C4495394();
        v58 = type metadata accessor for ConstructionProgressTokens;
      }

      sub_1C447E868(v6, v58);
      v71 = sub_1C4404BB0();
      sub_1C441DFEC(v71, v72);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C464A610()
{
  sub_1C43FBD3C();
  v9 = sub_1C4435804(v6, v7, v8);
  v73 = sub_1C43FCDF8(v9);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v13 = sub_1C4409ACC(v12, v71);
  v14 = sub_1C43FCDF8(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = sub_1C4416DF8();
  v18 = type metadata accessor for WalletClassicOrderDeltaSourceIngestor(v17);
  v19 = sub_1C43FBCE0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C4410A24();
  if (v1)
  {
    sub_1C444BFD8();
  }

  else
  {
    v23 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v23);
    v0 = sub_1C4EF93C8();
    v1 = &qword_1EC0BA4A8;
    v4 = sub_1C4475260();
    sub_1C442C5A4();
    sub_1C4401CBC(v24, v25, &dword_1C4F141D0);
    sub_1C4461C04();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v72);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v26 = sub_1C4F00978();
        sub_1C43FCEE8(v26, qword_1EDE2DE10);
        v27 = sub_1C44623A0();
        sub_1C4430900(v27, v3);
        v28 = sub_1C4F00968();
        sub_1C4F01CD8();
        v29 = sub_1C44016D0();
        if (os_log_type_enabled(v29, v30))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v31 = swift_slowAlloc();
          sub_1C44305A4(v31);
          *v4 = 136315138;
          v32 = sub_1C43FE99C();
          sub_1C4430900(v32, v33);
          sub_1C447E868(v3, type metadata accessor for WalletClassicOrderDeltaSourceIngestor);
          v34 = sub_1C44C11FC();
          sub_1C464020C(v34, v35, v36);
          sub_1C4450608();
          v37 = sub_1C447CB90();
          sub_1C441D828(v37, v3, v38);
          sub_1C4404CE0();

          *(v4 + 4) = v0;
          sub_1C442F634(&dword_1C43F8000, v39, v40, "%s failed to update progress token");
          sub_1C440962C(v5);
          v41 = sub_1C4416E14();
          MEMORY[0x1C6942830](v41);
          v42 = sub_1C44068C0();
          MEMORY[0x1C6942830](v42);
        }

        else
        {
          sub_1C44B6748();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C442F8B8();
    objc_autoreleasePoolPop(v72);
  }

  sub_1C4656BA4();
  sub_1C4654A48(v43);
  sub_1C446BC18();
  if (!v1)
  {
    sub_1C4420C3C(&v74, &qword_1EC0BA490, &unk_1C4F53630);
    v0 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v44 = sub_1C440F3CC();
  v45(v44);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v0++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4488918();
  switch(v47)
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44016DC();
      if (v2)
      {
LABEL_18:
        v48 = sub_1C44C0438();
        sub_1C43FCE50(v48);
        v50 = *(v49 + 16);
        v51 = sub_1C440EDB0();
        v52(v51);
        v53 = *(v13 + 24);
        sub_1C441925C();
        sub_1C4656BC8(v54);
        sub_1C440EF68(*(v13 + 20));
        sub_1C441C838();
        v55 = sub_1C44B8F10();
        sub_1C4460A18(v55);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v56 = sub_1C4404CB4();
        sub_1C4412DCC(v56, xmmword_1C4F0D130);
        sub_1C447EF78();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v57 = sub_1C43FFEF0();
      }

      else
      {
        v59 = sub_1C44C0438();
        sub_1C43FCE50(v59);
        v61 = *(v60 + 16);
        v62 = sub_1C4422A44();
        v63(v62);
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C4475344(v64);
        sub_1C442B994(MEMORY[0xE700000000000014]);
        v65 = sub_1C44B8F10();
        sub_1C4460A18(v65);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v66 = sub_1C4405904();
        sub_1C44068A0(v66, xmmword_1C4F0D130);
        sub_1C4430900(v2, v67);
        v68 = sub_1C447EF78();
        sub_1C449498C(v68);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v57 = v2;
      }

      sub_1C447E868(v57, v58);
      v69 = sub_1C43FC0A8();
      sub_1C441DFEC(v69, v70);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C464AAF0()
{
  sub_1C43FBD3C();
  v9 = sub_1C4435804(v6, v7, v8);
  v73 = sub_1C43FCDF8(v9);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v13 = sub_1C4409ACC(v12, v71);
  v14 = sub_1C43FCDF8(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = sub_1C4416DF8();
  v18 = type metadata accessor for WalletTrackedOrderDeltaSourceIngestor(v17);
  v19 = sub_1C43FBCE0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C4410A24();
  if (v1)
  {
    sub_1C444BFD8();
  }

  else
  {
    v23 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v23);
    v0 = sub_1C4EF93C8();
    v1 = &qword_1EC0BA4A8;
    v4 = sub_1C4475260();
    sub_1C442C5A4();
    sub_1C4401CBC(v24, v25, &dword_1C4F141D0);
    sub_1C4461C04();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v72);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v26 = sub_1C4F00978();
        sub_1C43FCEE8(v26, qword_1EDE2DE10);
        v27 = sub_1C44623A0();
        sub_1C4430900(v27, v3);
        v28 = sub_1C4F00968();
        sub_1C4F01CD8();
        v29 = sub_1C44016D0();
        if (os_log_type_enabled(v29, v30))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v31 = swift_slowAlloc();
          sub_1C44305A4(v31);
          *v4 = 136315138;
          v32 = sub_1C43FE99C();
          sub_1C4430900(v32, v33);
          sub_1C447E868(v3, type metadata accessor for WalletTrackedOrderDeltaSourceIngestor);
          v34 = sub_1C44C11FC();
          sub_1C464020C(v34, v35, v36);
          sub_1C4450608();
          v37 = sub_1C447CB90();
          sub_1C441D828(v37, v3, v38);
          sub_1C4404CE0();

          *(v4 + 4) = v0;
          sub_1C442F634(&dword_1C43F8000, v39, v40, "%s failed to update progress token");
          sub_1C440962C(v5);
          v41 = sub_1C4416E14();
          MEMORY[0x1C6942830](v41);
          v42 = sub_1C44068C0();
          MEMORY[0x1C6942830](v42);
        }

        else
        {
          sub_1C44B6748();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C442F8B8();
    objc_autoreleasePoolPop(v72);
  }

  sub_1C4656BA4();
  sub_1C4654E98(v43);
  sub_1C446BC18();
  if (!v1)
  {
    sub_1C4420C3C(&v74, &qword_1EC0BA490, &unk_1C4F53630);
    v0 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v44 = sub_1C440F3CC();
  v45(v44);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v0++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4488918();
  switch(v47)
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44016DC();
      if (v2)
      {
LABEL_18:
        v48 = sub_1C44C0438();
        sub_1C43FCE50(v48);
        v50 = *(v49 + 16);
        v51 = sub_1C440EDB0();
        v52(v51);
        v53 = *(v13 + 24);
        sub_1C441925C();
        sub_1C4656BC8(v54);
        sub_1C440EF68(*(v13 + 20));
        sub_1C441C838();
        v55 = sub_1C44B8F10();
        sub_1C4460A18(v55);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v56 = sub_1C4404CB4();
        sub_1C4412DCC(v56, xmmword_1C4F0D130);
        sub_1C447EF78();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v57 = sub_1C43FFEF0();
      }

      else
      {
        v59 = sub_1C44C0438();
        sub_1C43FCE50(v59);
        v61 = *(v60 + 16);
        v62 = sub_1C4422A44();
        v63(v62);
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C4475344(v64);
        sub_1C442B994(MEMORY[0xE700000000000014]);
        v65 = sub_1C44B8F10();
        sub_1C4460A18(v65);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v66 = sub_1C4405904();
        sub_1C44068A0(v66, xmmword_1C4F0D130);
        sub_1C4430900(v2, v67);
        v68 = sub_1C447EF78();
        sub_1C449498C(v68);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v57 = v2;
      }

      sub_1C447E868(v57, v58);
      v69 = sub_1C43FC0A8();
      sub_1C441DFEC(v69, v70);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C464AFD0()
{
  sub_1C43FBD3C();
  v9 = sub_1C4435804(v6, v7, v8);
  v73 = sub_1C43FCDF8(v9);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v13 = sub_1C4409ACC(v12, v71);
  v14 = sub_1C43FCDF8(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = sub_1C4416DF8();
  v18 = type metadata accessor for WalletTransactionOrderDeltaSourceIngestor(v17);
  v19 = sub_1C43FBCE0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C4410A24();
  if (v1)
  {
    sub_1C444BFD8();
  }

  else
  {
    v23 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v23);
    v0 = sub_1C4EF93C8();
    v1 = &qword_1EC0BA4A8;
    v4 = sub_1C4475260();
    sub_1C442C5A4();
    sub_1C4401CBC(v24, v25, &dword_1C4F141D0);
    sub_1C4461C04();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v72);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v26 = sub_1C4F00978();
        sub_1C43FCEE8(v26, qword_1EDE2DE10);
        v27 = sub_1C44623A0();
        sub_1C4430900(v27, v3);
        v28 = sub_1C4F00968();
        sub_1C4F01CD8();
        v29 = sub_1C44016D0();
        if (os_log_type_enabled(v29, v30))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v31 = swift_slowAlloc();
          sub_1C44305A4(v31);
          *v4 = 136315138;
          v32 = sub_1C43FE99C();
          sub_1C4430900(v32, v33);
          sub_1C447E868(v3, type metadata accessor for WalletTransactionOrderDeltaSourceIngestor);
          v34 = sub_1C44C11FC();
          sub_1C464020C(v34, v35, v36);
          sub_1C4450608();
          v37 = sub_1C447CB90();
          sub_1C441D828(v37, v3, v38);
          sub_1C4404CE0();

          *(v4 + 4) = v0;
          sub_1C442F634(&dword_1C43F8000, v39, v40, "%s failed to update progress token");
          sub_1C440962C(v5);
          v41 = sub_1C4416E14();
          MEMORY[0x1C6942830](v41);
          v42 = sub_1C44068C0();
          MEMORY[0x1C6942830](v42);
        }

        else
        {
          sub_1C44B6748();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C442F8B8();
    objc_autoreleasePoolPop(v72);
  }

  sub_1C4656BA4();
  sub_1C46552E8(v43);
  sub_1C446BC18();
  if (!v1)
  {
    sub_1C4420C3C(&v74, &qword_1EC0BA490, &unk_1C4F53630);
    v0 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v44 = sub_1C440F3CC();
  v45(v44);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v0++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4488918();
  switch(v47)
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44016DC();
      if (v2)
      {
LABEL_18:
        v48 = sub_1C44C0438();
        sub_1C43FCE50(v48);
        v50 = *(v49 + 16);
        v51 = sub_1C440EDB0();
        v52(v51);
        v53 = *(v13 + 24);
        sub_1C441925C();
        sub_1C4656BC8(v54);
        sub_1C440EF68(*(v13 + 20));
        sub_1C441C838();
        v55 = sub_1C44B8F10();
        sub_1C4460A18(v55);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v56 = sub_1C4404CB4();
        sub_1C4412DCC(v56, xmmword_1C4F0D130);
        sub_1C447EF78();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v57 = sub_1C43FFEF0();
      }

      else
      {
        v59 = sub_1C44C0438();
        sub_1C43FCE50(v59);
        v61 = *(v60 + 16);
        v62 = sub_1C4422A44();
        v63(v62);
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C4475344(v64);
        sub_1C442B994(MEMORY[0xE700000000000014]);
        v65 = sub_1C44B8F10();
        sub_1C4460A18(v65);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v66 = sub_1C4405904();
        sub_1C44068A0(v66, xmmword_1C4F0D130);
        sub_1C4430900(v2, v67);
        v68 = sub_1C447EF78();
        sub_1C449498C(v68);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v57 = v2;
      }

      sub_1C447E868(v57, v58);
      v69 = sub_1C43FC0A8();
      sub_1C441DFEC(v69, v70);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C464B4B0()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  v12 = type metadata accessor for ConstructionProgressTokens(v11);
  v68 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v16 = sub_1C4409ACC(v15, v66);
  v17 = sub_1C4412DFC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4416DF8();
  v20 = type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor();
  v21 = sub_1C44101F8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v25 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v25);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v26 = sub_1C4404C28();
    sub_1C456902C(v26, v27);
    sub_1C442C5A4();
    sub_1C4401CBC(v28, v29, &dword_1C4F141D0);
    sub_1C4414180();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v67);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v30 = sub_1C4F00978();
        sub_1C43FCEE8(v30, qword_1EDE2DE10);
        v31 = sub_1C44623A0();
        sub_1C4430900(v31, v3);
        v32 = sub_1C4F00968();
        sub_1C4F01CD8();
        v33 = sub_1C44016D0();
        if (os_log_type_enabled(v33, v34))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v35 = swift_slowAlloc();
          sub_1C44305A4(v35);
          *v5 = 136315138;
          v36 = sub_1C4404BB0();
          sub_1C4430900(v36, v37);
          sub_1C447E868(v3, type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor);
          sub_1C447CD74();
          sub_1C44EF644();
          v38 = sub_1C440CAFC();
          sub_1C447E868(v38, type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor);
          v39 = sub_1C447CB90();
          sub_1C441D828(v39, v4, v40);
          sub_1C44D44F0();
          *(v5 + 4) = v1;
          sub_1C448DFA8(&dword_1C43F8000, v41, v42, "%s failed to update progress token");
          sub_1C440962C(v6);
          v43 = sub_1C4416E14();
          MEMORY[0x1C6942830](v43);
          v44 = sub_1C44068C0();
          MEMORY[0x1C6942830](v44);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v67);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C4655738(v45);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v69, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v46 = sub_1C4402D10();
  v47(v46);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C441E060();
  switch(v49)
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C();
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        v50 = *(v7 + 24);
        v51 = *(v5 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v52);
        sub_1C440EF68(*(v7 + 20));
        sub_1C43FC08C();
        v54 = sub_1C4480738(v53);
        sub_1C4417F8C(v54);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v55 = sub_1C4404CB4();
        sub_1C4412DCC(v55, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v56 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        v58 = *(v5 + 20);
        sub_1C441925C();
        sub_1C445BA70(v59);
        sub_1C4432008();
        v60 = type metadata accessor for PhaseStores();
        sub_1C4417F8C(v60);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v61 = sub_1C4405904();
        sub_1C44068A0(v61, xmmword_1C4F0D130);
        sub_1C4430900(v3, v62);
        v63 = sub_1C4415F88();
        sub_1C449498C(v63);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v56 = v3;
      }

      sub_1C447E868(v56, v57);
      v64 = sub_1C43FD2BC();
      sub_1C441DFEC(v64, v65);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C464B968()
{
  sub_1C43FBD3C();
  v12 = sub_1C4418330(v9, v10, v11);
  v74 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v16 = sub_1C4409ACC(v15, v72);
  v17 = sub_1C4412DFC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4416DF8();
  v20 = type metadata accessor for IdentifierBasedMatcher();
  v21 = sub_1C44158C8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C44144E4();
  if (v2)
  {
    sub_1C442493C();
  }

  else
  {
    v25 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v25);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v8 = &dword_1C4F141D0;
    v0 = sub_1C4656BB0();
    sub_1C442C5A4();
    sub_1C4401CBC(v26, v27, &dword_1C4F141D0);
    sub_1C44418D0();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v73);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v28 = sub_1C4F00978();
        sub_1C43FCEE8(v28, qword_1EDE2DE10);
        v29 = sub_1C44623A0();
        sub_1C4430900(v29, v5);
        v30 = sub_1C4F00968();
        sub_1C4F01CD8();
        v31 = sub_1C44016D0();
        if (os_log_type_enabled(v31, v32))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v33 = swift_slowAlloc();
          sub_1C44305A4(v33);
          *v8 = 136315138;
          sub_1C445BD08();
          sub_1C447E868(v5, type metadata accessor for IdentifierBasedMatcher);
          v34 = sub_1C44C11FC();
          sub_1C4640B2C(v34, v35, v36);
          sub_1C4450608();
          v37 = sub_1C447CB90();
          sub_1C441D828(v37, v3, v38);
          sub_1C4404CE0();

          *(v8 + 4) = v1;
          sub_1C442A8B0(&dword_1C43F8000, v39, v40, "%s failed to update progress token");
          sub_1C440962C(v6);
          v41 = sub_1C4416E14();
          MEMORY[0x1C6942830](v41);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44F1994();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C4458688();
    objc_autoreleasePoolPop(v73);
    sub_1C4466CD8();
  }

  sub_1C443EEB8();
  sub_1C4655B78(v42);
  sub_1C445A930();
  if (!v2)
  {
    sub_1C4420C3C(&v75, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v43 = sub_1C43FECAC();
  v44(v43);
  sub_1C4456268();
  if ((v5 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4475460();
  switch(v46)
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        v47 = sub_1C44CD024();
        sub_1C43FCE50(v47);
        v49 = *(v48 + 16);
        v50 = sub_1C4488550();
        v51(v50);
        v52 = *(v7 + 24);
        v53 = *(v4 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v54);
        v55 = sub_1C4404144(*(v7 + 20));
        sub_1C4417F8C(v55);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v56 = sub_1C4404CB4();
        sub_1C4412DCC(v56, xmmword_1C4F0D130);
        sub_1C444FC8C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v57 = type metadata accessor for ProgressTokens;
      }

      else
      {
        v58 = sub_1C44CD024();
        sub_1C43FCE50(v58);
        v60 = *(v59 + 16);
        v61 = sub_1C447F8DC();
        v62(v61);
        sub_1C4428E54();
        v63 = *(v4 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v64);
        sub_1C44A1D14();
        v66 = sub_1C442DD98(v65);
        sub_1C4417F8C(v66);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v67 = sub_1C4405904();
        sub_1C44068A0(v67, xmmword_1C4F0D130);
        sub_1C4430900(v6, v68);
        v69 = sub_1C444FC8C();
        sub_1C449498C(v69);
        swift_setDeallocating();
        sub_1C4495394();
        v57 = type metadata accessor for ConstructionProgressTokens;
      }

      sub_1C447E868(v6, v57);
      v70 = sub_1C4404BB0();
      sub_1C441DFEC(v70, v71);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C464BE60()
{
  sub_1C43FBD3C();
  v12 = sub_1C4418330(v9, v10, v11);
  v74 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v16 = sub_1C4409ACC(v15, v72);
  v17 = sub_1C4412DFC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4416DF8();
  v20 = type metadata accessor for ShipmentFullFillmentMatcher();
  v21 = sub_1C44158C8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C44144E4();
  if (v2)
  {
    sub_1C442493C();
  }

  else
  {
    v25 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v25);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v8 = &dword_1C4F141D0;
    v0 = sub_1C4656BB0();
    sub_1C442C5A4();
    sub_1C4401CBC(v26, v27, &dword_1C4F141D0);
    sub_1C44418D0();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v73);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v28 = sub_1C4F00978();
        sub_1C43FCEE8(v28, qword_1EDE2DE10);
        v29 = sub_1C44623A0();
        sub_1C4430900(v29, v5);
        v30 = sub_1C4F00968();
        sub_1C4F01CD8();
        v31 = sub_1C44016D0();
        if (os_log_type_enabled(v31, v32))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v33 = swift_slowAlloc();
          sub_1C44305A4(v33);
          *v8 = 136315138;
          sub_1C445BD08();
          sub_1C447E868(v5, type metadata accessor for ShipmentFullFillmentMatcher);
          v34 = sub_1C44C11FC();
          sub_1C4640B2C(v34, v35, v36);
          sub_1C4450608();
          v37 = sub_1C447CB90();
          sub_1C441D828(v37, v3, v38);
          sub_1C4404CE0();

          *(v8 + 4) = v1;
          sub_1C442A8B0(&dword_1C43F8000, v39, v40, "%s failed to update progress token");
          sub_1C440962C(v6);
          v41 = sub_1C4416E14();
          MEMORY[0x1C6942830](v41);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44F1994();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C4458688();
    objc_autoreleasePoolPop(v73);
    sub_1C4466CD8();
  }

  sub_1C443EEB8();
  sub_1C4655FB8(v42);
  sub_1C445A930();
  if (!v2)
  {
    sub_1C4420C3C(&v75, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v43 = sub_1C43FECAC();
  v44(v43);
  sub_1C4456268();
  if ((v5 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4475460();
  switch(v46)
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        v47 = sub_1C44CD024();
        sub_1C43FCE50(v47);
        v49 = *(v48 + 16);
        v50 = sub_1C4488550();
        v51(v50);
        v52 = *(v7 + 24);
        v53 = *(v4 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v54);
        v55 = sub_1C4404144(*(v7 + 20));
        sub_1C4417F8C(v55);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v56 = sub_1C4404CB4();
        sub_1C4412DCC(v56, xmmword_1C4F0D130);
        sub_1C444FC8C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v57 = type metadata accessor for ProgressTokens;
      }

      else
      {
        v58 = sub_1C44CD024();
        sub_1C43FCE50(v58);
        v60 = *(v59 + 16);
        v61 = sub_1C447F8DC();
        v62(v61);
        sub_1C4428E54();
        v63 = *(v4 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v64);
        sub_1C44A1D14();
        v66 = sub_1C442DD98(v65);
        sub_1C4417F8C(v66);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v67 = sub_1C4405904();
        sub_1C44068A0(v67, xmmword_1C4F0D130);
        sub_1C4430900(v6, v68);
        v69 = sub_1C444FC8C();
        sub_1C449498C(v69);
        swift_setDeallocating();
        sub_1C4495394();
        v57 = type metadata accessor for ConstructionProgressTokens;
      }

      sub_1C447E868(v6, v57);
      v70 = sub_1C4404BB0();
      sub_1C441DFEC(v70, v71);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C464C358()
{
  sub_1C43FBD3C();
  v9 = sub_1C4435804(v6, v7, v8);
  v67 = sub_1C43FCDF8(v9);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v13 = sub_1C4409ACC(v12, v65);
  v14 = sub_1C43FCDF8(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4416DF8();
  v17 = type metadata accessor for Deduper();
  v18 = sub_1C43FBCE0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4410A24();
  if (v2)
  {
    v22 = 0;
    v23 = 0xF000000000000000;
  }

  else
  {
    v24 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v24);
    v1 = sub_1C4EF93C8();
    sub_1C4656BB0();
    sub_1C442C5A4();
    sub_1C4401CBC(v25, v26, &dword_1C4F141D0);
    v2 = 0;
    v22 = sub_1C4EF93B8();
    v23 = v41;

    objc_autoreleasePoolPop(v66);
  }

  sub_1C4656BA4();
  sub_1C46563F8(v42);
  sub_1C446BC18();
  if (v2)
  {
    v43 = sub_1C440F3CC();
    v44(v43);
    sub_1C4456268();
    if (v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1C4420C3C(&v69, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v4)
    {
      goto LABEL_11;
    }
  }

  if (__OFADD__(v1++, 1))
  {
    __break(1u);
    sub_1C4419274();
    swift_once();
    v27 = sub_1C4F00978();
    sub_1C43FCEE8(v27, qword_1EDE2DE10);
    v28 = sub_1C44623A0();
    sub_1C4430900(v28, v4);
    v29 = sub_1C4F00968();
    sub_1C4F01CD8();
    v30 = sub_1C44016D0();
    if (os_log_type_enabled(v30, v31))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C440D148();
      v32 = swift_slowAlloc();
      sub_1C44305A4(v32);
      *v13 = 136315138;
      v33 = sub_1C43FE99C();
      sub_1C4430900(v33, v34);
      sub_1C447E868(v4, type metadata accessor for Deduper);
      sub_1C464001C();
      sub_1C4450608();
      v35 = sub_1C447CB90();
      sub_1C441D828(v35, v4, v36);
      sub_1C4404CE0();

      *(v13 + 4) = v3;
      sub_1C442F634(&dword_1C43F8000, v37, v38, "%s failed to update progress token");
      sub_1C440962C(v5);
      v39 = sub_1C4416E14();
      MEMORY[0x1C6942830](v39);
      v40 = sub_1C44068C0();
      MEMORY[0x1C6942830](v40);
    }

    else
    {
      sub_1C44B6748();
    }

    goto LABEL_21;
  }

LABEL_11:
  switch(*(v0 + v17[8]))
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_15;
    case 2:

      goto LABEL_16;
    case 3:
      sub_1C440DF74();
      goto LABEL_15;
    default:
LABEL_15:
      sub_1C443FAEC();
      sub_1C44016DC();
      if (v3)
      {
LABEL_16:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        v46 = v17[5];
        v47 = *(v0 + v17[6]);
        v48 = *(v13 + 24);
        sub_1C441925C();
        sub_1C44EC814(v49);
        *(v5 + *(v13 + 20)) = v47;
        v50 = (v5 + *(v13 + 28));
        *v50 = v22;
        v50[1] = v23;
        *(v5 + *(v13 + 32)) = v1;
        sub_1C446277C(*(v13 + 36));
        v51 = v17[7];
        v52 = sub_1C4457890();
        sub_1C4460A18(v52);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v53 = sub_1C4404CB4();
        sub_1C4412DCC(v53, xmmword_1C4F0D130);
        sub_1C4431E64(v22, v23);
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v54 = sub_1C43FFEF0();
      }

      else
      {
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        v56 = v17[5];
        v57 = *(v0 + v17[6]);
        v58 = v67[6];
        sub_1C441925C();
        sub_1C4656CBC(v59);
        *(v68 + v67[5]) = v57;
        v60 = (v68 + v67[7]);
        *v60 = v22;
        v60[1] = v23;
        *(v68 + v67[8]) = v1;
        *(v68 + v67[9]) = v4 & 1;
        v61 = v17[7];
        v62 = sub_1C4457890();
        sub_1C4460A18(v62);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v63 = sub_1C4405904();
        sub_1C44068A0(v63, xmmword_1C4F0D130);
        sub_1C4430900(v68, v64);
        sub_1C4431E64(v22, v23);
        sub_1C449498C(v63);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v54 = v68;
      }

      sub_1C447E868(v54, v55);
      sub_1C441DFEC(v22, v23);
      break;
  }

LABEL_21:
  sub_1C43FE9F0();
}

uint64_t sub_1C464C86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v19 = a6;
  v20 = a7;
  v18 = a1;
  v7 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  type metadata accessor for GraphTriple(0);
  sub_1C447CB3C(&qword_1EDDFE210, type metadata accessor for GraphTriple);
  sub_1C4EFADF8();
  sub_1C4B4BB78();
  v15 = *(v8 + 8);
  v15(v12, v7);
  sub_1C44F0F4C(v18, v14, v19, v20);
  return (v15)(v14, v7);
}

uint64_t sub_1C464CA28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for HomeMatcher();
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EC0BA570, type metadata accessor for HomeMatcher);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EC0BA570, type metadata accessor for HomeMatcher);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C464CE68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EventMatcher();
  switch(*(v2 + *(v19 + 20)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = v2 + *(v19 + 24);
        v22 = *(v21 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDF8CB8, type metadata accessor for EventMatcher);
        v23 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v23);
        sub_1C44FEF34(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v24 = &unk_1EC0BA4B8;
          v25 = &unk_1C4F16F60;
          v26 = v14;
LABEL_8:
          result = sub_1C4420C3C(v26, v24, v25);
          v32 = v37;
          *(v37 + 32) = 0;
          *v32 = 0u;
          v32[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v33 = v37;
        *(v37 + 24) = v15;
        v33[4] = &off_1F43EE918;
        v34 = sub_1C4422F90(v33);
        v35 = v18;
      }

      else
      {
        v27 = v10;
        v28 = v2 + *(v19 + 24);
        v29 = *(v28 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDF8CB8, type metadata accessor for EventMatcher);
        v30 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v30);
        sub_1C449D50C(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v24 = &unk_1EC0BAC20;
          v25 = &unk_1C4F141E0;
          v26 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v27);
        v36 = v37;
        *(v37 + 24) = v7;
        v36[4] = &off_1F43EE970;
        v34 = sub_1C4422F90(v36);
        v35 = v27;
      }

      return sub_1C449F338(v35, v34);
  }
}

uint64_t sub_1C464D2B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for GroupMatcher();
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDEB620, type metadata accessor for GroupMatcher);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDEB620, type metadata accessor for GroupMatcher);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C464D6F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TopicMatcher();
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDF89E0, type metadata accessor for TopicMatcher);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDF89E0, type metadata accessor for TopicMatcher);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C464DB38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DocumentMatcher();
  switch(*(v2 + *(v19 + 28)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = v2 + *(v19 + 24);
        v22 = *(v21 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EC0BA578, type metadata accessor for DocumentMatcher);
        v23 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v23);
        sub_1C44FEF34(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v24 = &unk_1EC0BA4B8;
          v25 = &unk_1C4F16F60;
          v26 = v14;
LABEL_8:
          result = sub_1C4420C3C(v26, v24, v25);
          v32 = v37;
          *(v37 + 32) = 0;
          *v32 = 0u;
          v32[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v33 = v37;
        *(v37 + 24) = v15;
        v33[4] = &off_1F43EE918;
        v34 = sub_1C4422F90(v33);
        v35 = v18;
      }

      else
      {
        v27 = v10;
        v28 = v2 + *(v19 + 24);
        v29 = *(v28 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EC0BA578, type metadata accessor for DocumentMatcher);
        v30 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v30);
        sub_1C449D50C(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v24 = &unk_1EC0BAC20;
          v25 = &unk_1C4F141E0;
          v26 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v27);
        v36 = v37;
        *(v37 + 24) = v7;
        v36[4] = &off_1F43EE970;
        v34 = sub_1C4422F90(v36);
        v35 = v27;
      }

      return sub_1C449F338(v35, v34);
  }
}

uint64_t sub_1C464DF88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SoftwareMatcher();
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDF6668, type metadata accessor for SoftwareMatcher);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDF6668, type metadata accessor for SoftwareMatcher);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C464E3C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WalletOrderMatcher();
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDE5900, type metadata accessor for WalletOrderMatcher);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDE5900, type metadata accessor for WalletOrderMatcher);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C464E808@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StandardTransformer();
  switch(*(v2 + *(v19 + 28)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EC0BA560, type metadata accessor for StandardTransformer);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EC0BA560, type metadata accessor for StandardTransformer);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C464EC48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StandardEntityMapper();
  switch(*(v2 + *(v19 + 28)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = v2 + *(v19 + 36);
        v22 = *(v21 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDE4210, type metadata accessor for StandardEntityMapper);
        v23 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v23);
        sub_1C44FEF34(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v24 = &unk_1EC0BA4B8;
          v25 = &unk_1C4F16F60;
          v26 = v14;
LABEL_8:
          result = sub_1C4420C3C(v26, v24, v25);
          v32 = v37;
          *(v37 + 32) = 0;
          *v32 = 0u;
          v32[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v33 = v37;
        *(v37 + 24) = v15;
        v33[4] = &off_1F43EE918;
        v34 = sub_1C4422F90(v33);
        v35 = v18;
      }

      else
      {
        v27 = v10;
        v28 = v2 + *(v19 + 36);
        v29 = *(v28 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDE4210, type metadata accessor for StandardEntityMapper);
        v30 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v30);
        sub_1C449D50C(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v24 = &unk_1EC0BAC20;
          v25 = &unk_1C4F141E0;
          v26 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v27);
        v36 = v37;
        *(v37 + 24) = v7;
        v36[4] = &off_1F43EE970;
        v34 = sub_1C4422F90(v36);
        v35 = v27;
      }

      return sub_1C449F338(v35, v34);
  }
}

uint64_t sub_1C464F098@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EKEventSourceIngestor();
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDE3D10, type metadata accessor for EKEventSourceIngestor);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDE3D10, type metadata accessor for EKEventSourceIngestor);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C464F4D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for INGroupSourceIngestor();
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDE3A50, type metadata accessor for INGroupSourceIngestor);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDE3A50, type metadata accessor for INGroupSourceIngestor);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C464F918@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SGEventSourceIngestor();
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDE33D0, type metadata accessor for SGEventSourceIngestor);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDE33D0, type metadata accessor for SGEventSourceIngestor);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C464FD58@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FAFamilySourceIngestor();
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDE2F38, type metadata accessor for FAFamilySourceIngestor);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDE2F38, type metadata accessor for FAFamilySourceIngestor);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C4650198@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for INPersonSourceIngestor();
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDE2A98, type metadata accessor for INPersonSourceIngestor);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDE2A98, type metadata accessor for INPersonSourceIngestor);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C46505D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PHPersonSourceIngestor();
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDE2990, type metadata accessor for PHPersonSourceIngestor);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDE2990, type metadata accessor for PHPersonSourceIngestor);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C4650A18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LifeEventSourceIngestor(0);
  switch(*(v2 + *(v19 + 28)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = v2 + *(v19 + 20);
        v22 = *(v21 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDE1EA0, type metadata accessor for LifeEventSourceIngestor);
        v23 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v23);
        sub_1C44FEF34(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v24 = &unk_1EC0BA4B8;
          v25 = &unk_1C4F16F60;
          v26 = v14;
LABEL_8:
          result = sub_1C4420C3C(v26, v24, v25);
          v32 = v37;
          *(v37 + 32) = 0;
          *v32 = 0u;
          v32[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v33 = v37;
        *(v37 + 24) = v15;
        v33[4] = &off_1F43EE918;
        v34 = sub_1C4422F90(v33);
        v35 = v18;
      }

      else
      {
        v27 = v10;
        v28 = v2 + *(v19 + 20);
        v29 = *(v28 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDE1EA0, type metadata accessor for LifeEventSourceIngestor);
        v30 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v30);
        sub_1C449D50C(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v24 = &unk_1EC0BAC20;
          v25 = &unk_1C4F141E0;
          v26 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v27);
        v36 = v37;
        *(v37 + 24) = v7;
        v36[4] = &off_1F43EE970;
        v34 = sub_1C4422F90(v36);
        v35 = v27;
      }

      return sub_1C449F338(v35, v34);
  }
}

uint64_t sub_1C4650E68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SGContactSourceIngestor();
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = v2 + *(v19 + 20);
        v22 = *(v21 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDE1C60, type metadata accessor for SGContactSourceIngestor);
        v23 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v23);
        sub_1C44FEF34(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v24 = &unk_1EC0BA4B8;
          v25 = &unk_1C4F16F60;
          v26 = v14;
LABEL_8:
          result = sub_1C4420C3C(v26, v24, v25);
          v32 = v37;
          *(v37 + 32) = 0;
          *v32 = 0u;
          v32[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v33 = v37;
        *(v37 + 24) = v15;
        v33[4] = &off_1F43EE918;
        v34 = sub_1C4422F90(v33);
        v35 = v18;
      }

      else
      {
        v27 = v10;
        v28 = v2 + *(v19 + 20);
        v29 = *(v28 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDE1C60, type metadata accessor for SGContactSourceIngestor);
        v30 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v30);
        sub_1C449D50C(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v24 = &unk_1EC0BAC20;
          v25 = &unk_1C4F141E0;
          v26 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v27);
        v36 = v37;
        *(v37 + 24) = v7;
        v36[4] = &off_1F43EE970;
        v34 = sub_1C4422F90(v36);
        v35 = v27;
      }

      return sub_1C449F338(v35, v34);
  }
}

uint64_t sub_1C46512B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ScreenTimeSourceIngestor();
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDE1928, type metadata accessor for ScreenTimeSourceIngestor);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDE1928, type metadata accessor for ScreenTimeSourceIngestor);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C46516F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CNContactDeltaSourceIngestor(0);
  switch(*(v2 + *(v19 + 28)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = v2 + *(v19 + 20);
        v22 = *(v21 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDF22C0, type metadata accessor for CNContactDeltaSourceIngestor);
        v23 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v23);
        sub_1C44FEF34(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v24 = &unk_1EC0BA4B8;
          v25 = &unk_1C4F16F60;
          v26 = v14;
LABEL_8:
          result = sub_1C4420C3C(v26, v24, v25);
          v32 = v37;
          *(v37 + 32) = 0;
          *v32 = 0u;
          v32[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v33 = v37;
        *(v37 + 24) = v15;
        v33[4] = &off_1F43EE918;
        v34 = sub_1C4422F90(v33);
        v35 = v18;
      }

      else
      {
        v27 = v10;
        v28 = v2 + *(v19 + 20);
        v29 = *(v28 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDF22C0, type metadata accessor for CNContactDeltaSourceIngestor);
        v30 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v30);
        sub_1C449D50C(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v24 = &unk_1EC0BAC20;
          v25 = &unk_1C4F141E0;
          v26 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v27);
        v36 = v37;
        *(v37 + 24) = v7;
        v36[4] = &off_1F43EE970;
        v34 = sub_1C4422F90(v36);
        v35 = v27;
      }

      return sub_1C449F338(v35, v34);
  }
}

uint64_t sub_1C4651B48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LSBundleRecordSourceIngestor();
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDDFDD0, type metadata accessor for LSBundleRecordSourceIngestor);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDDFDD0, type metadata accessor for LSBundleRecordSourceIngestor);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C4651F88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WalletEmailOrderSourceIngestor(0);
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDDEDB0, type metadata accessor for WalletEmailOrderSourceIngestor);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDDEDB0, type metadata accessor for WalletEmailOrderSourceIngestor);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C46523C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BMAppleMusicEventSourceIngestor(0);
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDDEB08, type metadata accessor for BMAppleMusicEventSourceIngestor);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDDEB08, type metadata accessor for BMAppleMusicEventSourceIngestor);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C4652808@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for HKEmergencyContactSourceIngestor();
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDDDE88, type metadata accessor for HKEmergencyContactSourceIngestor);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDDDE88, type metadata accessor for HKEmergencyContactSourceIngestor);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C4652C48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PGRelationshipFullSourceIngestor();
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = v2 + *(v19 + 20);
        v22 = *(v21 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDDDDD0, type metadata accessor for PGRelationshipFullSourceIngestor);
        v23 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v23);
        sub_1C44FEF34(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v24 = &unk_1EC0BA4B8;
          v25 = &unk_1C4F16F60;
          v26 = v14;
LABEL_8:
          result = sub_1C4420C3C(v26, v24, v25);
          v32 = v37;
          *(v37 + 32) = 0;
          *v32 = 0u;
          v32[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v33 = v37;
        *(v37 + 24) = v15;
        v33[4] = &off_1F43EE918;
        v34 = sub_1C4422F90(v33);
        v35 = v18;
      }

      else
      {
        v27 = v10;
        v28 = v2 + *(v19 + 20);
        v29 = *(v28 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDDDDD0, type metadata accessor for PGRelationshipFullSourceIngestor);
        v30 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v30);
        sub_1C449D50C(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v24 = &unk_1EC0BAC20;
          v25 = &unk_1C4F141E0;
          v26 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v27);
        v36 = v37;
        *(v37 + 24) = v7;
        v36[4] = &off_1F43EE970;
        v34 = sub_1C4422F90(v36);
        v35 = v27;
      }

      return sub_1C449F338(v35, v34);
  }
}

uint64_t sub_1C4653098@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WalletClassicOrderSourceIngestor(0);
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDDDBE8, type metadata accessor for WalletClassicOrderSourceIngestor);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDDDBE8, type metadata accessor for WalletClassicOrderSourceIngestor);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C46534D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WalletTrackedOrderSourceIngestor(0);
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDDDB30, type metadata accessor for WalletTrackedOrderSourceIngestor);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDDDB30, type metadata accessor for WalletTrackedOrderSourceIngestor);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C4653918@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FutureLifeEventDeltaSourceIngestor();
  switch(*(v2 + *(v19 + 20)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = v2 + *(v19 + 24);
        v22 = *(v21 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDDD2B8, type metadata accessor for FutureLifeEventDeltaSourceIngestor);
        v23 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v23);
        sub_1C44FEF34(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v24 = &unk_1EC0BA4B8;
          v25 = &unk_1C4F16F60;
          v26 = v14;
LABEL_8:
          result = sub_1C4420C3C(v26, v24, v25);
          v32 = v37;
          *(v37 + 32) = 0;
          *v32 = 0u;
          v32[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v33 = v37;
        *(v37 + 24) = v15;
        v33[4] = &off_1F43EE918;
        v34 = sub_1C4422F90(v33);
        v35 = v18;
      }

      else
      {
        v27 = v10;
        v28 = v2 + *(v19 + 24);
        v29 = *(v28 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDDD2B8, type metadata accessor for FutureLifeEventDeltaSourceIngestor);
        v30 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v30);
        sub_1C449D50C(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v24 = &unk_1EC0BAC20;
          v25 = &unk_1C4F141E0;
          v26 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v27);
        v36 = v37;
        *(v37 + 24) = v7;
        v36[4] = &off_1F43EE970;
        v34 = sub_1C4422F90(v36);
        v35 = v27;
      }

      return sub_1C449F338(v35, v34);
  }
}

uint64_t sub_1C4653D68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WalletEmailOrderDeltaSourceIngestor(0);
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = v2 + *(v19 + 20);
        v22 = *(v21 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDDCE80, type metadata accessor for WalletEmailOrderDeltaSourceIngestor);
        v23 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v23);
        sub_1C44FEF34(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v24 = &unk_1EC0BA4B8;
          v25 = &unk_1C4F16F60;
          v26 = v14;
LABEL_8:
          result = sub_1C4420C3C(v26, v24, v25);
          v32 = v37;
          *(v37 + 32) = 0;
          *v32 = 0u;
          v32[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v33 = v37;
        *(v37 + 24) = v15;
        v33[4] = &off_1F43EE918;
        v34 = sub_1C4422F90(v33);
        v35 = v18;
      }

      else
      {
        v27 = v10;
        v28 = v2 + *(v19 + 20);
        v29 = *(v28 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDDCE80, type metadata accessor for WalletEmailOrderDeltaSourceIngestor);
        v30 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v30);
        sub_1C449D50C(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v24 = &unk_1EC0BAC20;
          v25 = &unk_1C4F141E0;
          v26 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v27);
        v36 = v37;
        *(v37 + 24) = v7;
        v36[4] = &off_1F43EE970;
        v34 = sub_1C4422F90(v36);
        v35 = v27;
      }

      return sub_1C449F338(v35, v34);
  }
}

uint64_t sub_1C46541B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BMAppleMusicEventDeltaSourceIngestor(0);
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = v2 + *(v19 + 20);
        v22 = *(v21 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDF1190, type metadata accessor for BMAppleMusicEventDeltaSourceIngestor);
        v23 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v23);
        sub_1C44FEF34(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v24 = &unk_1EC0BA4B8;
          v25 = &unk_1C4F16F60;
          v26 = v14;
LABEL_8:
          result = sub_1C4420C3C(v26, v24, v25);
          v32 = v37;
          *(v37 + 32) = 0;
          *v32 = 0u;
          v32[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v33 = v37;
        *(v37 + 24) = v15;
        v33[4] = &off_1F43EE918;
        v34 = sub_1C4422F90(v33);
        v35 = v18;
      }

      else
      {
        v27 = v10;
        v28 = v2 + *(v19 + 20);
        v29 = *(v28 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDF1190, type metadata accessor for BMAppleMusicEventDeltaSourceIngestor);
        v30 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v30);
        sub_1C449D50C(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v24 = &unk_1EC0BAC20;
          v25 = &unk_1C4F141E0;
          v26 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v27);
        v36 = v37;
        *(v37 + 24) = v7;
        v36[4] = &off_1F43EE970;
        v34 = sub_1C4422F90(v36);
        v35 = v27;
      }

      return sub_1C449F338(v35, v34);
  }
}

uint64_t sub_1C4654608@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WalletTransactionOrderSourceIngestor(0);
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDDCA88, type metadata accessor for WalletTransactionOrderSourceIngestor);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDDCA88, type metadata accessor for WalletTransactionOrderSourceIngestor);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C4654A48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WalletClassicOrderDeltaSourceIngestor(0);
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = v2 + *(v19 + 20);
        v22 = *(v21 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDDC7A0, type metadata accessor for WalletClassicOrderDeltaSourceIngestor);
        v23 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v23);
        sub_1C44FEF34(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v24 = &unk_1EC0BA4B8;
          v25 = &unk_1C4F16F60;
          v26 = v14;
LABEL_8:
          result = sub_1C4420C3C(v26, v24, v25);
          v32 = v37;
          *(v37 + 32) = 0;
          *v32 = 0u;
          v32[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v33 = v37;
        *(v37 + 24) = v15;
        v33[4] = &off_1F43EE918;
        v34 = sub_1C4422F90(v33);
        v35 = v18;
      }

      else
      {
        v27 = v10;
        v28 = v2 + *(v19 + 20);
        v29 = *(v28 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDDC7A0, type metadata accessor for WalletClassicOrderDeltaSourceIngestor);
        v30 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v30);
        sub_1C449D50C(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v24 = &unk_1EC0BAC20;
          v25 = &unk_1C4F141E0;
          v26 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v27);
        v36 = v37;
        *(v37 + 24) = v7;
        v36[4] = &off_1F43EE970;
        v34 = sub_1C4422F90(v36);
        v35 = v27;
      }

      return sub_1C449F338(v35, v34);
  }
}

uint64_t sub_1C4654E98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WalletTrackedOrderDeltaSourceIngestor(0);
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = v2 + *(v19 + 20);
        v22 = *(v21 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDDC6E8, type metadata accessor for WalletTrackedOrderDeltaSourceIngestor);
        v23 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v23);
        sub_1C44FEF34(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v24 = &unk_1EC0BA4B8;
          v25 = &unk_1C4F16F60;
          v26 = v14;
LABEL_8:
          result = sub_1C4420C3C(v26, v24, v25);
          v32 = v37;
          *(v37 + 32) = 0;
          *v32 = 0u;
          v32[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v33 = v37;
        *(v37 + 24) = v15;
        v33[4] = &off_1F43EE918;
        v34 = sub_1C4422F90(v33);
        v35 = v18;
      }

      else
      {
        v27 = v10;
        v28 = v2 + *(v19 + 20);
        v29 = *(v28 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDDC6E8, type metadata accessor for WalletTrackedOrderDeltaSourceIngestor);
        v30 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v30);
        sub_1C449D50C(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v24 = &unk_1EC0BAC20;
          v25 = &unk_1C4F141E0;
          v26 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v27);
        v36 = v37;
        *(v37 + 24) = v7;
        v36[4] = &off_1F43EE970;
        v34 = sub_1C4422F90(v36);
        v35 = v27;
      }

      return sub_1C449F338(v35, v34);
  }
}

uint64_t sub_1C46552E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WalletTransactionOrderDeltaSourceIngestor(0);
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = v2 + *(v19 + 20);
        v22 = *(v21 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDDC360, type metadata accessor for WalletTransactionOrderDeltaSourceIngestor);
        v23 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v23);
        sub_1C44FEF34(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v24 = &unk_1EC0BA4B8;
          v25 = &unk_1C4F16F60;
          v26 = v14;
LABEL_8:
          result = sub_1C4420C3C(v26, v24, v25);
          v32 = v37;
          *(v37 + 32) = 0;
          *v32 = 0u;
          v32[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v33 = v37;
        *(v37 + 24) = v15;
        v33[4] = &off_1F43EE918;
        v34 = sub_1C4422F90(v33);
        v35 = v18;
      }

      else
      {
        v27 = v10;
        v28 = v2 + *(v19 + 20);
        v29 = *(v28 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDDC360, type metadata accessor for WalletTransactionOrderDeltaSourceIngestor);
        v30 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v30);
        sub_1C449D50C(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v24 = &unk_1EC0BAC20;
          v25 = &unk_1C4F141E0;
          v26 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v27);
        v36 = v37;
        *(v37 + 24) = v7;
        v36[4] = &off_1F43EE970;
        v34 = sub_1C4422F90(v36);
        v35 = v27;
      }

      return sub_1C449F338(v35, v34);
  }
}

uint64_t sub_1C4655738@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor();
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EC0BA628, type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EC0BA628, type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C4655B78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for IdentifierBasedMatcher();
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDF3BC0, type metadata accessor for IdentifierBasedMatcher);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDF3BC0, type metadata accessor for IdentifierBasedMatcher);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C4655FB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ShipmentFullFillmentMatcher();
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EC0BA568, type metadata accessor for ShipmentFullFillmentMatcher);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EC0BA568, type metadata accessor for ShipmentFullFillmentMatcher);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C46563F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Deduper();
  switch(*(v2 + *(v19 + 32)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = v2 + *(v19 + 28);
        v22 = *(v21 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDDC090, type metadata accessor for Deduper);
        v23 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v23);
        sub_1C44FEF34(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v24 = &unk_1EC0BA4B8;
          v25 = &unk_1C4F16F60;
          v26 = v14;
LABEL_8:
          result = sub_1C4420C3C(v26, v24, v25);
          v32 = v37;
          *(v37 + 32) = 0;
          *v32 = 0u;
          v32[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v33 = v37;
        *(v37 + 24) = v15;
        v33[4] = &off_1F43EE918;
        v34 = sub_1C4422F90(v33);
        v35 = v18;
      }

      else
      {
        v27 = v10;
        v28 = v2 + *(v19 + 28);
        v29 = *(v28 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDDC090, type metadata accessor for Deduper);
        v30 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v30);
        sub_1C449D50C(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v24 = &unk_1EC0BAC20;
          v25 = &unk_1C4F141E0;
          v26 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v27);
        v36 = v37;
        *(v37 + 24) = v7;
        v36[4] = &off_1F43EE970;
        v34 = sub_1C4422F90(v36);
        v35 = v27;
      }

      return sub_1C449F338(v35, v34);
  }
}

uint64_t sub_1C465686C(uint64_t a1)
{
  result = sub_1C447CB3C(&qword_1EDDF0D50, type metadata accessor for Blocker);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C46568C4(uint64_t a1)
{
  result = sub_1C447CB3C(&qword_1EDDF0D60, type metadata accessor for Blocker);
  *(a1 + 8) = result;
  return result;
}

void sub_1C4656944()
{
  type metadata accessor for Configuration();
  if (v0 <= 0x3F)
  {
    sub_1C4EFD548();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Source();
      if (v2 <= 0x3F)
      {
        type metadata accessor for PhaseStores();
        if (v3 <= 0x3F)
        {
          sub_1C4656A88(319, &qword_1EDDF0638, &qword_1EC0BA480, &qword_1C4F141A8);
          if (v4 <= 0x3F)
          {
            sub_1C4656A88(319, &qword_1EDDF0648, &qword_1EC0BA488, &unk_1C4F141B0);
            if (v5 <= 0x3F)
            {
              type metadata accessor for StateStore();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C4656A88(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1C4572308(a3, a4);
    v5 = sub_1C4F017A8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C4656BB0()
{

  return sub_1C456902C(v0, v1);
}

uint64_t sub_1C4656BC8@<X0>(uint64_t a1@<X8>)
{

  return sub_1C4430900(v1, v2 + a1);
}

uint64_t sub_1C4656BE0()
{
  v3 = *(v0 + *(v1 + 24));

  return sub_1C448D934(v3);
}

uint64_t sub_1C4656C04()
{

  return sub_1C4EF93B8();
}

uint64_t sub_1C4656C24()
{

  return sub_1C4F024A8();
}

void sub_1C4656C44()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4656C64@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1) = *(v2 - 132) & 1;

  return type metadata accessor for PhaseStores();
}

void sub_1C4656C84(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t sub_1C4656CA4()
{
  v3 = *(v0 + *(v1 + 24));

  return sub_1C448D934(v3);
}

uint64_t sub_1C4656CBC@<X0>(uint64_t a1@<X8>)
{

  return sub_1C4430900(v2 + v1, v3 + a1);
}

uint64_t sub_1C4656CD4(uint64_t a1, _BYTE *a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v5 = type metadata accessor for Fuser();
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  v8 = type metadata accessor for Linker();
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v11 = type metadata accessor for Source();
  *(v3 + 128) = v11;
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v14 = type metadata accessor for PhaseStores();
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 185) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C4656E00, 0, 0);
}

uint64_t sub_1C4656E00()
{
  switch(*(v0 + 185))
  {
    case 2:

      goto LABEL_4;
    default:
      v1 = sub_1C4F02938();

      if (v1)
      {
LABEL_4:
        v2 = *(v0 + 96);
        v3 = type metadata accessor for BMAppleMusicEventDeltaSourceIngestor(0);
        *(v0 + 40) = v3;
        *(v0 + 48) = sub_1C4657494(&qword_1EDDF1198, type metadata accessor for BMAppleMusicEventDeltaSourceIngestor);
        v4 = sub_1C4422F90((v0 + 16));
        v5 = v3[5];
        sub_1C4419288();
        sub_1C4471750(v2, v6 + v7, v8);
        v9 = qword_1EDDFD268;
        v10 = 2;
        v11 = v4;
      }

      else
      {
        v12 = *(v0 + 96);
        v3 = type metadata accessor for BMAppleMusicEventSourceIngestor(0);
        *(v0 + 40) = v3;
        *(v0 + 48) = sub_1C4657494(&qword_1EDDDEB10, type metadata accessor for BMAppleMusicEventSourceIngestor);
        v11 = sub_1C4422F90((v0 + 16));
        sub_1C4419288();
        sub_1C4471750(v12, v11, v13);
        v4 = (v11 + v3[5]);
        v9 = qword_1EDDFD268;
        v10 = 1;
      }

      if (v9 != -1)
      {
        sub_1C4404CEC();
      }

      v14 = *(v0 + 160);
      v15 = *(v0 + 96);
      sub_1C442B738(*(v0 + 128), &qword_1EDDFD270);
      sub_1C44068F0();
      sub_1C4471750(v16, v4, v17);
      *(v11 + v3[6]) = v10;
      v18 = v11 + v3[7];
      _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
      sub_1C4419288();
      sub_1C4471750(v15, v14, v19);
      if (qword_1EDDFD268 != -1)
      {
        sub_1C4404CEC();
      }

      v20 = *(v0 + 185);
      v21 = *(v0 + 144);
      v22 = *(v0 + 152);
      v23 = *(v0 + 136);
      v24 = *(v0 + 96);
      v25 = sub_1C442B738(*(v0 + 128), &qword_1EDDFD270);
      *(v0 + 168) = v25;
      sub_1C4471750(v25, v21, type metadata accessor for Source);
      sub_1C442E860(v0 + 16, v0 + 56);
      sub_1C4471750(v25, v23, type metadata accessor for Source);
      sub_1C4419288();
      sub_1C4471750(v24, v22, v26);
      *(v0 + 184) = v20;
      v27 = swift_task_alloc();
      *(v0 + 176) = v27;
      *v27 = v0;
      v27[1] = sub_1C4657140;
      v28 = *(v0 + 152);
      v29 = *(v0 + 136);
      v30 = *(v0 + 120);

      return Linker.init(source:stores:pipelineType:)();
  }
}

uint64_t sub_1C4657140()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C465723C, 0, 0);
}

uint64_t sub_1C465723C()
{
  v24 = v0;
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 185);
  v4 = *(v0 + 152);
  v5 = *(v0 + 136);
  v6 = *(v0 + 112);
  v20 = *(v0 + 144);
  v21 = *(v0 + 120);
  v7 = *(v0 + 96);
  v22 = *(v0 + 104);
  sub_1C44068F0();
  sub_1C4471750(v8, v5, v9);
  sub_1C4419288();
  sub_1C4471750(v7, v4, v10);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44857CC(v7);
  sub_1C440962C((v0 + 16));
  v23 = v3;
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  v13 = sub_1C4418280(v0 + 56, v12);
  v14 = *(v12 - 8);
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  (*(v14 + 16))(v16, v13, v12);
  v17 = sub_1C4487AD8(v2, v20, v16, v21, v6, &v23, v22, v12, v11);
  sub_1C440962C((v0 + 56));

  v18 = *(v0 + 8);

  return v18(v17);
}

uint64_t type metadata accessor for BMAppleMusicEventPhase()
{
  result = qword_1EDDF4018;
  if (!qword_1EDDF4018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4657494(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C46575C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      result = sub_1C4EFD548();
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4657674()
{
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

__objc2_prot **sub_1C465777C(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v4 = v3;
  v218 = a2;
  v208 = a1;
  v6 = sub_1C456902C(&qword_1EC0BA698, &qword_1C4F145D8);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v200 - v10);
  v12 = sub_1C4EF9648();
  v13 = sub_1C43FCDF8(v12);
  v219 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2D8();
  v217 = v17;
  sub_1C43FBE44();
  v222 = sub_1C4EF9F88();
  v18 = sub_1C43FCDF8(v222);
  v216 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD2D8();
  v221 = v22;
  sub_1C43FBE44();
  v220 = sub_1C4EF9CD8();
  v23 = sub_1C43FCDF8(v220);
  v215 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD2D8();
  v214 = v27;
  v28 = sub_1C43FBE44();
  v226 = type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType(v28);
  v29 = sub_1C43FBCE0(v226);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v200 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1C456902C(&qword_1EC0BA6A0, &qword_1C4F145E0);
  sub_1C43FBD18(v34);
  v36 = *(v35 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v37);
  v213 = (&v200 - v38);
  v39 = sub_1C456902C(&qword_1EC0BA6A8, &qword_1C4F145E8);
  sub_1C43FBD18(v39);
  v41 = *(v40 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v42);
  v211 = &v200 - v43;
  v44 = sub_1C43FBE44();
  v212 = type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType(v44);
  v45 = sub_1C43FBCE0(v212);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FD2D8();
  v225 = v48;
  v49 = sub_1C456902C(&qword_1EC0BA6B0, &unk_1C4F145F0);
  sub_1C43FBD18(v49);
  v51 = *(v50 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v200 - v53;
  v210 = type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType(0);
  v55 = sub_1C43FBCE0(v210);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FD2D8();
  v224 = v58;
  v59 = sub_1C456902C(&qword_1EC0BA6B8, &unk_1C4F70150);
  sub_1C43FBD18(v59);
  v61 = *(v60 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v62);
  v209 = &v200 - v63;
  v64 = sub_1C43FBE44();
  v65 = type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType(v64);
  v66 = sub_1C43FBCE0(v65);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FD2D8();
  v223 = v69;
  v70 = sub_1C43FBE44();
  v227 = type metadata accessor for BMAppleMusicEventStructs.Song(v70);
  v71 = sub_1C43FBCE0(v227);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  sub_1C43FD2D8();
  v228 = v74;
  v75 = sub_1C43FBE44();
  v76 = type metadata accessor for BMAppleMusicEventStructs.Event(v75);
  v77 = sub_1C43FBCE0(v76);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  sub_1C43FD2D8();
  v230 = v80;
  v81 = *a3;
  v82 = sub_1C465B638(v4, &selRef_iTunesSubscriptionIdentifier);
  if (v83)
  {
    v84 = v83;
    v201 = v54;
    HIDWORD(v202) = v81;
    v204 = v12;
    v205 = v33;
    v203 = v11;
    v11 = &off_1E81F1000;
    v207 = v4;
    v85 = v82;
    [v4 playbackState];
    v86 = sub_1C4657674();
    v88 = v87;
    v206 = v85;
    v231 = v85;
    v232 = v84;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v86, v88);

    v89 = v231;
    v90 = v232;
    v91 = sub_1C4F019E8();
    v93 = v92;
    v231 = v89;
    v232 = v90;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v91, v93);

    if (qword_1EDDE92C8 != -1)
    {
      swift_once();
    }

    v94 = type metadata accessor for SourceIdPrefix();
    sub_1C442B738(v94, qword_1EDDE92D0);
    String.base64EncodedSHA(withPrefix:)();
    v96 = v95;
    v98 = v97;

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v99 = v229;
    v100 = v230;
    sub_1C4D62E98(v96, v98, v101, v102, v103, v104, v105, v106, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211);
    if (v99)
    {
    }

    else
    {
      v229 = v96;
      v108 = sub_1C442B9BC();
      [v108 v109];
      v110 = sub_1C4657674();
      v111 = v100;
      v112 = v110;
      v114 = v113;
      v115 = (v111 + *(v76 + 36));
      v116 = v115[1];

      *v115 = v112;
      v115[1] = v114;
      if (qword_1EDDE9280 != -1)
      {
        swift_once();
      }

      sub_1C442B738(v94, qword_1EDDE9288);
      String.base64EncodedSHA(withPrefix:)();
      sub_1C4D637D4(v117, v118, v119, v120, v121, v122, v123, v124, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211);
      v125 = v227;
      v200 = v98;
      v126 = v207;
      sub_1C465B638(v207, &selRef_title);
      sub_1C440D158();
      sub_1C441C85C(v125[9]);
      *v115 = v114;
      v115[1] = v94;
      sub_1C465B638(v126, &selRef_artist);
      sub_1C440D158();
      sub_1C441C85C(v125[13]);
      *v115 = v114;
      v115[1] = v94;
      sub_1C465B638(v126, &selRef_iTunesArtistIdentifier);
      sub_1C440D158();
      sub_1C441C85C(v125[15]);
      *v115 = v114;
      v115[1] = v94;
      sub_1C465B638(v126, &selRef_album);
      sub_1C440D158();
      sub_1C441C85C(v125[19]);
      *v115 = v114;
      v115[1] = v94;
      sub_1C465B638(v126, &selRef_iTunesAlbumIdentifier);
      sub_1C440D158();
      sub_1C441C85C(v125[17]);
      *v115 = v114;
      v115[1] = v94;
      sub_1C4A4B4D8(v126);
      sub_1C440D158();
      sub_1C441C85C(v125[11]);
      *v115 = v114;
      v115[1] = v94;
      v127 = sub_1C4EFEEF8();
      v128 = v223;
      sub_1C44331C4();
      v129 = v128 + v65[5];
      sub_1C4EFD258();
      v130 = v65[6];
      if (qword_1EDDFD268 != -1)
      {
        swift_once();
      }

      v131 = type metadata accessor for Source();
      v132 = sub_1C442B738(v131, &qword_1EDDFD270);
      sub_1C465B694(v132, v128 + v130);
      v133 = v128 + v65[7];
      sub_1C4EFE558();
      v134 = v65[9];
      v135 = (v128 + v65[8]);
      sub_1C4EFE658();
      v136 = v65[10];
      *v135 = v206;
      v135[1] = v84;
      *(v128 + v136) = xmmword_1C4F14410;
      v137 = v209;
      sub_1C465B694(v128, v209);
      v138 = sub_1C43FC024();
      sub_1C440BAA8(v138, v139, v140, v65);
      v141 = v228;
      sub_1C4D641D0(v137);
      v142 = v224;
      sub_1C440BAA8(v224, 1, 1, v127);
      v143 = v210;
      v144 = v142 + v210[5];
      sub_1C4EFD208();
      sub_1C465B694(v132, v142 + v143[6]);
      v145 = v142 + v143[7];
      sub_1C4EFEE08();
      v146 = (v142 + v143[8]);
      v147 = sub_1C442B9BC();
      LODWORD(v231) = [v147 v148];
      *v146 = sub_1C4F02858();
      v146[1] = v149;
      v150 = v201;
      sub_1C465B694(v142, v201);
      v151 = sub_1C43FC024();
      sub_1C440BAA8(v151, v152, v153, v143);
      sub_1C4D642C0(v150);
      v154 = v225;
      sub_1C44331C4();
      v155 = v212;
      v156 = v154 + *(v212 + 5);
      sub_1C4EFD178();
      sub_1C465B694(v132, v154 + *(v155 + 24));
      v157 = v227;
      sub_1C440BAA8(v154 + *(v155 + 28), 1, 1, v227);
      v158 = v211;
      sub_1C465B694(v141, v211);
      v159 = sub_1C43FC024();
      sub_1C440BAA8(v159, v160, v161, v157);
      sub_1C4D643B0(v158);
      v162 = v213;
      sub_1C465B694(v154, v213);
      v163 = sub_1C43FC024();
      sub_1C440BAA8(v163, v164, v165, v155);
      sub_1C4D644D0(v162);
      v166 = v205;
      sub_1C44331C4();
      v167 = v226;
      v168 = v166 + v226[5];
      sub_1C4EFD168();
      sub_1C465B694(v132, v166 + v167[6]);
      v169 = v166 + v167[7];
      sub_1C4EFEEE8();
      v170 = v167[9];
      v227 = (v166 + v167[8]);
      sub_1C4EFECE8();
      v171 = (v166 + v167[10]);
      *v171 = 0;
      v171[1] = 0;
      v212 = v171;
      v172 = v166 + v167[11];
      sub_1C4EFE7B8();
      v173 = v167[13];
      v213 = (v166 + v167[12]);
      sub_1C4EFE668();
      v174 = (v166 + v167[14]);
      *v174 = 0;
      v174[1] = 0;
      v175 = v214;
      sub_1C4EF9AC8();
      v176 = v221;
      sub_1C4EF9F58();
      if (qword_1EDDF4920 != -1)
      {
        swift_once();
      }

      v177 = v217;
      v211 = qword_1EDE2D428;
      sub_1C4EF9EA8();
      v178 = sub_1C44CDAD4();
      v180 = v179;
      v219 = *(v219 + 8);
      (v219)(v177, v204);
      v181 = v216 + 8;
      v216 = *(v216 + 8);
      (v216)(v176, v222);
      v215 = *(v215 + 8);
      (v215)(v175, v220);
      v182 = v227;
      *v227 = v178;
      *(v182 + 1) = v180;
      v183 = sub_1C4F019E8();
      v184 = v213;
      *v213 = v183;
      v184[1] = v185;
      if ((v218 & 1) == 0)
      {
        *v174 = sub_1C4F019E8();
        v174[1] = v186;
        sub_1C4EF9AC8();
        v187 = v221;
        sub_1C4EF9F58();
        sub_1C4EF9EA8();
        v188 = sub_1C44CDAD4();
        v190 = v189;
        (v219)(v177, v204);
        (v216)(v187, v222);
        (v215)(v175, v220);
        v191 = v212;
        *v212 = v188;
        *(v191 + 8) = v190;
      }

      sub_1C4410A34();
      sub_1C465B694(v192, v181);
      v193 = sub_1C43FC024();
      sub_1C440BAA8(v193, v194, v195, v226);
      v196 = v230;
      sub_1C4D645C0(v181);
      LOBYTE(v231) = BYTE4(v202);
      sub_1C4D646B0();
      v11 = v198;
      sub_1C440DF90();

      sub_1C4416E24();
      sub_1C4402D60();
      sub_1C43FD2EC();
      sub_1C4432038();
      sub_1C442C5C0();
      sub_1C465B5E0(v196, v199);
    }
  }

  else
  {
    sub_1C465B58C();
    swift_allocError();
    *v107 = 0;
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_1C4658494()
{
  sub_1C467D22C();
  if (v5)
  {
    v1 = 0;
  }

  else
  {
    v1 = v4;
  }

  v2 = type metadata accessor for BMAppleMusicEventDeltaSourceIngestor(0);
  return sub_1C4658E70(v1, v5, *(v0 + *(v2 + 24)));
}

uint64_t sub_1C46584FC(uint64_t a1, int a2, uint64_t a3)
{
  v77 = a3;
  v5 = type metadata accessor for BMAppleMusicEventSourceIngestor(0);
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v63 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v61 - v11;
  sub_1C43FBDBC();
  v12 = swift_allocObject();
  v75 = v12;
  *(v12 + 16) = 0;
  v70 = v12 + 16;
  sub_1C43FBDBC();
  v13 = swift_allocObject();
  v74 = v13;
  *(v13 + 16) = 0;
  v14 = (v13 + 16);
  sub_1C43FBDBC();
  v15 = swift_allocObject();
  v73 = v15;
  *(v15 + 16) = 0;
  v69 = v15 + 16;
  v64 = a1;
  v67 = a2;
  if (a2)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = *&a1;
  }

  sub_1C43FBDBC();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = (v17 + 16);
  v19 = swift_allocObject();
  v72 = v19;
  *(v19 + 16) = 0;
  v65 = (v19 + 16);
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v20 = sub_1C4F00978();
  v68 = sub_1C442B738(v20, qword_1EDE2DE10);
  v21 = sub_1C4F00968();
  v22 = sub_1C4F01CF8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = v16;
    _os_log_impl(&dword_1C43F8000, v21, v22, "Ingesting now playing using time stamp: %f", v23, 0xCu);
    sub_1C43FBE2C();
  }

  sub_1C43FBDBC();
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = (v24 + 16);
  v26 = type metadata accessor for PhaseStores();
  v27 = *(v76 + *(v26 + 24));
  MEMORY[0x1EEE9AC00](v26);
  *(&v61 - 10) = v16;
  *(&v61 - 9) = v28;
  *(&v61 - 8) = v24;
  *(&v61 - 7) = v75;
  *(&v61 - 6) = v17;
  *(&v61 - 5) = v73;
  *(&v61 - 32) = v77;
  v29 = v72;
  *(&v61 - 3) = v74;
  *(&v61 - 2) = v29;
  v30 = v71;
  GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C465B560, (&v61 - 12));
  if (v30)
  {

LABEL_12:
    sub_1C4410A34();
LABEL_13:
    sub_1C4404D0C(v76);
    sub_1C442B9BC();
  }

  v62 = 0;
  v71 = v24;
  sub_1C440D164();
  v31 = *v25;
  if (*v25)
  {
    v32 = *v25;
    swift_willThrow();
    v33 = v31;

    goto LABEL_12;
  }

  v35 = v69;
  switch(v77)
  {
    case 2:

      goto LABEL_17;
    default:
      v36 = sub_1C4F02938();

      if ((v36 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_17:
      sub_1C440D164();
      if (!*v14 && (v67 & 1) == 0)
      {
        v37 = sub_1C4F00968();
        v38 = sub_1C4F01CF8();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_1C43F8000, v37, v38, "Skipping ingestion for BMAppleMusicEventDelta as event must have been processed already", v39, 2u);
          sub_1C43FBE2C();
        }

        sub_1C4410A34();
        sub_1C4405930();
        goto LABEL_32;
      }

LABEL_22:
      sub_1C440D164();
      v40 = *v18;
      if (!v40)
      {
        goto LABEL_27;
      }

      sub_1C440D164();
      v41 = *v35;
      v81[0] = v77;
      v42 = v40;
      v43 = v62;
      sub_1C465777C(0, 1, v81);
      if (v43)
      {

        sub_1C4410A34();
        goto LABEL_13;
      }

      v62 = 0;
      sub_1C4B46D4C();

      result = swift_beginAccess();
      if (!__OFADD__(*v14, 1))
      {
        ++*v14;
LABEL_27:
        v44 = v66;
        v45 = v65;
        sub_1C440D164();
        if (*v45)
        {
          sub_1C4412E14();
          sub_1C465B694(v76, v44);
          v46 = sub_1C4F00968();
          v47 = sub_1C4F01CD8();
          os_log_type_enabled(v46, v47);
          sub_1C4405930();
          if (v48)
          {
            v49 = 0x61746C6564;
            v50 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            v80 = v69;
            *v50 = 136315394;
            v78 = 0;
            v79 = 0xE000000000000000;
            sub_1C4F02248();

            v78 = 0x6E696C657069503CLL;
            v79 = 0xEF203A6570795465;
            v51 = 0xE500000000000000;
            switch(v77)
            {
              case 1:
                v51 = 0xE400000000000000;
                v49 = 1819047270;
                break;
              case 2:
                break;
              case 3:
                v49 = 0x69686374614D6F74;
                v51 = 0xEA0000000000676ELL;
                break;
              default:
                v51 = 0xE700000000000000;
                v49 = 0x6E776F6E6B6E75;
                break;
            }

            MEMORY[0x1C6940010](v49, v51);

            MEMORY[0x1C6940010](62, 0xE100000000000000);
            v54 = sub_1C441D828(v78, v79, &v80);

            *(v50 + 4) = v54;
            *(v50 + 12) = 2080;
            sub_1C4412E14();
            v55 = v63;
            sub_1C465B694(v44, v63);
            sub_1C465B5E0(v44, type metadata accessor for BMAppleMusicEventSourceIngestor);
            v56 = sub_1C464065C();
            v58 = v57;
            sub_1C465B5E0(v55, type metadata accessor for BMAppleMusicEventSourceIngestor);
            v59 = sub_1C441D828(v56, v58, &v80);

            *(v50 + 14) = v59;
            _os_log_impl(&dword_1C43F8000, v46, v47, "Unable to commit %s for : %s", v50, 0x16u);
            swift_arrayDestroy();
            sub_1C43FBE2C();
            sub_1C43FBE2C();

            sub_1C4410A34();
            sub_1C4405930();
          }

          else
          {
            sub_1C465B5E0(v44, type metadata accessor for BMAppleMusicEventSourceIngestor);

            sub_1C4410A34();
          }

          sub_1C465B58C();
          swift_allocError();
          *v60 = 1;
          swift_willThrow();

          goto LABEL_13;
        }

        sub_1C440D164();
        v52 = *v35;
        sub_1C4410A34();
        sub_1C4405930();
LABEL_32:
        v53 = v76;
        sub_1C4647A00();

        sub_1C4404D0C(v53);
        sub_1C442B9BC();
      }

      __break(1u);
      return result;
  }
}

uint64_t sub_1C4658E70(uint64_t a1, int a2, uint64_t a3)
{
  v75 = a3;
  v6 = type metadata accessor for BMAppleMusicEventDeltaSourceIngestor(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v60 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v59 - v10;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v67 = (v11 + 16);
  v12 = swift_allocObject();
  v72 = v12;
  *(v12 + 16) = 0;
  v68 = (v12 + 16);
  v13 = swift_allocObject();
  v71 = v13;
  *(v13 + 16) = 0;
  v66 = v13 + 16;
  v61 = a1;
  v64 = a2;
  if (a2)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = *&a1;
  }

  v15 = swift_allocObject();
  v69 = v15;
  *(v15 + 16) = 0;
  v16 = (v15 + 16);
  v17 = swift_allocObject();
  v70 = v17;
  *(v17 + 16) = 0;
  v63 = (v17 + 16);
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v74 = v11;
  v18 = sub_1C4F00978();
  v65 = sub_1C442B738(v18, qword_1EDE2DE10);
  v19 = sub_1C4F00968();
  v20 = sub_1C4F01CF8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = v14;
    _os_log_impl(&dword_1C43F8000, v19, v20, "Ingesting now playing using time stamp: %f", v21, 0xCu);
    MEMORY[0x1C6942830](v21, -1, -1);
  }

  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = v73;
  v24 = v73 + *(v6 + 20);
  v25 = type metadata accessor for PhaseStores();
  v26 = *(v24 + *(v25 + 24));
  MEMORY[0x1EEE9AC00](v25);
  *(&v59 - 10) = v14;
  *(&v59 - 9) = v23;
  *(&v59 - 8) = v22;
  v27 = v69;
  *(&v59 - 7) = v74;
  *(&v59 - 6) = v27;
  *(&v59 - 5) = v71;
  *(&v59 - 32) = v75;
  v28 = v70;
  *(&v59 - 3) = v72;
  *(&v59 - 2) = v28;
  GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C465B71C, (&v59 - 12));
  if (v3)
  {

LABEL_12:
    v31 = v68;
    goto LABEL_13;
  }

  swift_beginAccess();
  v29 = *(v22 + 16);
  if (v29)
  {
    swift_willThrow();
    v30 = v29;

    goto LABEL_12;
  }

  v31 = v68;
  v33 = v66;
  switch(v75)
  {
    case 2:

      goto LABEL_18;
    default:
      v34 = sub_1C4F02938();

      if ((v34 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_18:
      swift_beginAccess();
      if (!*v31 && (v64 & 1) == 0)
      {
        v35 = sub_1C4F00968();
        v36 = sub_1C4F01CF8();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_1C43F8000, v35, v36, "Skipping ingestion for BMAppleMusicEventDelta as event must have been processed already", v37, 2u);
          MEMORY[0x1C6942830](v37, -1, -1);
        }

        goto LABEL_31;
      }

LABEL_23:
      swift_beginAccess();
      v38 = *v16;
      if (v38)
      {
        swift_beginAccess();
        v39 = *v33;
        v79[0] = v75;
        v40 = v38;
        sub_1C465777C(0, 1, v79);
        sub_1C4B46D4C();

        result = swift_beginAccess();
        if (__OFADD__(*v31, 1))
        {
          __break(1u);
          return result;
        }

        ++*v31;
      }

      v41 = v63;
      swift_beginAccess();
      if ((*v41 & 1) == 0)
      {
        swift_beginAccess();
        v48 = *v33;
LABEL_31:
        v49 = v73;
        sub_1C4649C38();

        sub_1C465A008(v49, v75, v31, v67);
      }

      v42 = v62;
      sub_1C465B694(v73, v62);
      v43 = sub_1C4F00968();
      v44 = sub_1C4F01CD8();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = 0x61746C6564;
        v46 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v78 = v66;
        *v46 = 136315394;
        v76 = 0;
        v77 = 0xE000000000000000;
        sub_1C4F02248();

        v76 = 0x6E696C657069503CLL;
        v77 = 0xEF203A6570795465;
        v47 = 0xE500000000000000;
        switch(v75)
        {
          case 1:
            v47 = 0xE400000000000000;
            v45 = 1819047270;
            break;
          case 2:
            break;
          case 3:
            v45 = 0x69686374614D6F74;
            v47 = 0xEA0000000000676ELL;
            break;
          default:
            v47 = 0xE700000000000000;
            v45 = 0x6E776F6E6B6E75;
            break;
        }

        MEMORY[0x1C6940010](v45, v47);

        MEMORY[0x1C6940010](62, 0xE100000000000000);
        v50 = sub_1C441D828(v76, v77, &v78);

        *(v46 + 4) = v50;
        *(v46 + 12) = 2080;
        v51 = v62;
        v52 = v60;
        sub_1C465B694(v62, v60);
        sub_1C465B5E0(v51, type metadata accessor for BMAppleMusicEventDeltaSourceIngestor);
        v53 = sub_1C4640354();
        v55 = v54;
        sub_1C465B5E0(v52, type metadata accessor for BMAppleMusicEventDeltaSourceIngestor);
        v56 = sub_1C441D828(v53, v55, &v78);

        *(v46 + 14) = v56;
        _os_log_impl(&dword_1C43F8000, v43, v44, "Unable to commit %s for : %s", v46, 0x16u);
        v57 = v66;
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v57, -1, -1);
        MEMORY[0x1C6942830](v46, -1, -1);
      }

      else
      {
        sub_1C465B5E0(v42, type metadata accessor for BMAppleMusicEventDeltaSourceIngestor);
      }

      sub_1C465B58C();
      swift_allocError();
      *v58 = 1;
      swift_willThrow();

LABEL_13:
      sub_1C465A008(v73, v75, v31, v67);
  }
}

uint64_t sub_1C46598BC()
{
  sub_1C4658494();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4659958(uint64_t a1)
{
  v2 = *(a1 + 20);
  sub_1C440A794();
  return sub_1C465B694(v1 + v3, v4);
}

uint64_t sub_1C46599C4()
{
  sub_1C4659984();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4659A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C4EFD548();
  v6 = sub_1C43FBCE0(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_1C4659AA8(uint64_t a1)
{
  v2 = *(a1 + 20);
  sub_1C4411948();
  return sub_1C465B694(v1 + v3, v4);
}

uint64_t sub_1C4659AF8(uint64_t a1)
{
  result = sub_1C4659BA8(qword_1EDDDEB18, type metadata accessor for BMAppleMusicEventSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4659B50(uint64_t a1)
{
  result = sub_1C4659BA8(&qword_1EDDDEB00, type metadata accessor for BMAppleMusicEventSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4659BA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4659BF0(uint64_t a1)
{
  result = sub_1C4659BA8(qword_1EDDF11A0, type metadata accessor for BMAppleMusicEventDeltaSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4659C48(uint64_t a1)
{
  result = sub_1C4659BA8(&unk_1EDDF1180, type metadata accessor for BMAppleMusicEventDeltaSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4659CA0(uint64_t a1, char a2, void *a3, uint64_t *a4)
{
  v8 = type metadata accessor for Pipeline.StatusStore();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C465B694(a1, v12);
  v12[*(v9 + 28)] = a2;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C465B5E0(v12, type metadata accessor for Pipeline.StatusStore);
  switch(a2)
  {
    case 1:

      break;
    default:
      sub_1C4F02938();

      break;
  }

  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v14 = sub_1C4F01108();

  *(inited + 48) = v14;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  v15 = sub_1C4F01108();

  *(inited + 72) = v15;
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  swift_beginAccess();
  v16 = *a3;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  swift_beginAccess();
  v17 = *a4;
  swift_beginAccess();
  result = v17 - *a3;
  if (__OFSUB__(v17, *a3))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4468200();
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

uint64_t sub_1C465A008(uint64_t a1, char a2, void *a3, uint64_t *a4)
{
  v8 = type metadata accessor for Pipeline.StatusStore();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BMAppleMusicEventDeltaSourceIngestor(0);
  sub_1C465B694(a1 + *(v13 + 20), v12);
  v12[*(v9 + 28)] = a2;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C465B5E0(v12, type metadata accessor for Pipeline.StatusStore);
  switch(a2)
  {
    case 1:

      break;
    default:
      sub_1C4F02938();

      break;
  }

  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v15 = sub_1C4F01108();

  *(inited + 48) = v15;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  v16 = sub_1C4F01108();

  *(inited + 72) = v16;
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  swift_beginAccess();
  v17 = *a3;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  swift_beginAccess();
  v18 = *a4;
  swift_beginAccess();
  result = v18 - *a3;
  if (__OFSUB__(v18, *a3))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4468200();
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

uint64_t sub_1C465A37C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v59 = a9;
  v58 = a8;
  v56 = a2;
  v57 = a7;
  v54 = a1;
  v55 = a6;
  v51 = a4;
  v52 = a5;
  v60 = a10;
  v53 = a11;
  v12 = type metadata accessor for BMAppleMusicEventSourceIngestor(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v46 - v20;
  sub_1C4EF9AC8();
  v22 = sub_1C4EF9CD8();
  sub_1C440BAA8(v21, 0, 1, v22);
  sub_1C440BAA8(v19, 1, 1, v22);
  v23 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v24 = sub_1C457A86C(v21, v19, 0, 0, 0);
  v50 = v24;
  v25 = [BiomeLibrary() Media];
  swift_unknownObjectRelease();
  v26 = [v25 NowPlaying];
  swift_unknownObjectRelease();
  v27 = [v26 publisherWithOptions_];
  v49 = v27;

  v65 = sub_1C465AE0C;
  v66 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v46[1] = &v63;
  v63 = sub_1C45AF9C8;
  v64 = &unk_1F43E5D40;
  v28 = _Block_copy(&aBlock);
  v48 = [v27 filterWithIsIncluded_];
  _Block_release(v28);
  v65 = nullsub_1;
  v66 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1C44405F8;
  v64 = &unk_1F43E5D68;
  v47 = _Block_copy(&aBlock);
  v29 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C465B694(a3, v29);
  v30 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v31 = (v14 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v46[0] = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 31) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  sub_1C465B78C(v29, v36 + v30);
  *(v36 + v31) = v51;
  v37 = v53;
  *(v36 + v32) = v52;
  *(v36 + v33) = v55;
  v38 = v36 + v46[0];
  *v38 = v57;
  *(v38 + 8) = v58;
  v39 = (v36 + v34);
  v40 = v56;
  *v39 = v54;
  v39[1] = v40;
  *(v36 + v35) = v60;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v37;
  v65 = sub_1C465B6F0;
  v66 = v36;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1C45AF9C8;
  v64 = &unk_1F43E5DB8;
  v41 = _Block_copy(&aBlock);

  v43 = v47;
  v42 = v48;
  v44 = [v48 sinkWithCompletion:v47 shouldContinue:v41];

  _Block_release(v41);
  _Block_release(v43);

  result = swift_beginAccess();
  *v59 = *(v37 + 16);
  return result;
}

uint64_t sub_1C465A8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v59 = a9;
  v58 = a8;
  v56 = a2;
  v57 = a7;
  v54 = a1;
  v55 = a6;
  v51 = a4;
  v52 = a5;
  v60 = a10;
  v53 = a11;
  v12 = type metadata accessor for BMAppleMusicEventDeltaSourceIngestor(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v46 - v20;
  sub_1C4EF9AC8();
  v22 = sub_1C4EF9CD8();
  sub_1C440BAA8(v21, 0, 1, v22);
  sub_1C440BAA8(v19, 1, 1, v22);
  v23 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v24 = sub_1C457A86C(v21, v19, 0, 0, 0);
  v50 = v24;
  v25 = [BiomeLibrary() Media];
  swift_unknownObjectRelease();
  v26 = [v25 NowPlaying];
  swift_unknownObjectRelease();
  v27 = [v26 publisherWithOptions_];
  v49 = v27;

  v65 = sub_1C465AE0C;
  v66 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v46[1] = &v63;
  v63 = sub_1C45AF9C8;
  v64 = &unk_1F43E5DE0;
  v28 = _Block_copy(&aBlock);
  v48 = [v27 filterWithIsIncluded_];
  _Block_release(v28);
  v65 = nullsub_1;
  v66 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1C44405F8;
  v64 = &unk_1F43E5E08;
  v47 = _Block_copy(&aBlock);
  v29 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C465B694(a3, v29);
  v30 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v31 = (v14 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v46[0] = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 31) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  sub_1C465B78C(v29, v36 + v30);
  *(v36 + v31) = v51;
  v37 = v53;
  *(v36 + v32) = v52;
  *(v36 + v33) = v55;
  v38 = v36 + v46[0];
  *v38 = v57;
  *(v38 + 8) = v58;
  v39 = (v36 + v34);
  v40 = v56;
  *v39 = v54;
  v39[1] = v40;
  *(v36 + v35) = v60;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v37;
  v65 = sub_1C465B7E8;
  v66 = v36;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1C45AF9C8;
  v64 = &unk_1F43E5E58;
  v41 = _Block_copy(&aBlock);

  v43 = v47;
  v42 = v48;
  v44 = [v48 sinkWithCompletion:v47 shouldContinue:v41];

  _Block_release(v41);
  _Block_release(v43);

  result = swift_beginAccess();
  *v59 = *(v37 + 16);
  return result;
}

uint64_t sub_1C465AE0C(void *a1)
{
  v1 = [a1 eventBody];
  if (!v1)
  {
    goto LABEL_25;
  }

  v2 = v1;
  v3 = sub_1C45122F8(v1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  if (v3 == 0x6C7070612E6D6F63 && v5 == 0xEF636973754D2E65)
  {
  }

  else
  {
    v7 = sub_1C4F02938();

    if ((v7 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v8 = sub_1C465B638(v2, &selRef_iTunesSubscriptionIdentifier);
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = v8;
  v11 = v9;

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    goto LABEL_24;
  }

  v13 = sub_1C465B638(v2, &selRef_title);
  if (v14)
  {
    if (v13 == 0xE2676E6964616F4CLL && v14 == 0xAA0000000000A680)
    {

LABEL_24:

LABEL_25:
      v17 = 0;
      return v17 & 1;
    }

    v16 = sub_1C4F02938();

    v17 = v16 ^ 1;
  }

  else
  {

    v17 = 1;
  }

  return v17 & 1;
}

uint64_t sub_1C465AF7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, void (*a8)(uint64_t), uint64_t a9, uint64_t a10)
{
  v16 = objc_autoreleasePoolPush();
  sub_1C4ACEF2C();
  swift_beginAccess();
  v17 = *(a3 + 16);
  if (v17)
  {
    goto LABEL_8;
  }

  v18 = [a1 eventBody];
  if (!v18)
  {
    goto LABEL_8;
  }

  v38 = v18;
  result = swift_beginAccess();
  v20 = *(a4 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v22;
    swift_beginAccess();
    v23 = *(a5 + 16);
    if (!v23)
    {
      swift_beginAccess();
      v27 = v38;
      *(a5 + 16) = v38;
      v28 = v38;
LABEL_7:
      [a1 timestamp];
      v32 = v31;

      swift_beginAccess();
      *(a6 + 16) = v32;
LABEL_8:
      objc_autoreleasePoolPop(v16);
      return v17 == 0;
    }

    v37 = a8;
    swift_beginAccess();
    v24 = *(a6 + 16);
    v25 = v23;
    [a1 timestamp];
    v40[0] = a7;
    sub_1C465777C(v26, 0, v40);
    sub_1C4812140();
    v30 = v29;

    v37(v30);

    swift_beginAccess();
    v33 = *(a5 + 16);
    *(a5 + 16) = v38;
    v34 = v38;

    result = swift_beginAccess();
    v35 = *(a10 + 16);
    v21 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (!v21)
    {
      *(a10 + 16) = v36;
      v27 = v38;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C465B268(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, void (*a8)(uint64_t), uint64_t a9, uint64_t a10)
{
  v16 = objc_autoreleasePoolPush();
  sub_1C4ACF26C();
  swift_beginAccess();
  v17 = *(a3 + 16);
  if (v17)
  {
    goto LABEL_8;
  }

  v18 = [a1 eventBody];
  if (!v18)
  {
    goto LABEL_8;
  }

  v38 = v18;
  result = swift_beginAccess();
  v20 = *(a4 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v22;
    swift_beginAccess();
    v23 = *(a5 + 16);
    if (!v23)
    {
      swift_beginAccess();
      v27 = v38;
      *(a5 + 16) = v38;
      v28 = v38;
LABEL_7:
      [a1 timestamp];
      v32 = v31;

      swift_beginAccess();
      *(a6 + 16) = v32;
LABEL_8:
      objc_autoreleasePoolPop(v16);
      return v17 == 0;
    }

    v37 = a8;
    swift_beginAccess();
    v24 = *(a6 + 16);
    v25 = v23;
    [a1 timestamp];
    v40[0] = a7;
    sub_1C465777C(v26, 0, v40);
    sub_1C4812140();
    v30 = v29;

    v37(v30);

    swift_beginAccess();
    v33 = *(a5 + 16);
    *(a5 + 16) = v38;
    v34 = v38;

    result = swift_beginAccess();
    v35 = *(a10 + 16);
    v21 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (!v21)
    {
      *(a10 + 16) = v36;
      v27 = v38;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C465B58C()
{
  result = qword_1EC0BABD0;
  if (!qword_1EC0BABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BABD0);
  }

  return result;
}

uint64_t sub_1C465B5E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C465B638(void *a1, SEL *a2)
{
  v3 = [a1 *a2];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1C4F01138();
  sub_1C440D158();

  return v2;
}

uint64_t sub_1C465B694(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C465B78C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C465B814(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, void, uint64_t, void, void, void, void, uint64_t, void))
{
  v6 = *(a2(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 31) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v3 + v8);
  v14 = *(v3 + v10);
  v15 = v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = *(v3 + v12);
  return a3(a1, v3 + v7, v13, *(v3 + v9), v14, *v15, *(v15 + 8), *(v3 + v11), *(v3 + v11 + 8), v16, *(v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8))) & 1;
}

BOOL sub_1C465B984(unsigned __int8 a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = *v4++;
    v10 = v7;
    v9 = a1;
  }

  while ((static ActivityType.== infix(_:_:)(&v10, &v9) & 1) == 0);
  return v5 != 0;
}

void sub_1C465B9EC()
{
  sub_1C43FBD3C();
  v23 = v1;
  v24 = v2;
  v3 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for Source();
  v10 = sub_1C43FBCE0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FC0C8();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v23 - v14);
  for (i = 1; ; i = v17)
  {
    if (qword_1EDDFA6A8 != -1)
    {
      swift_once();
    }

    if (qword_1EDE2DCF0 < i)
    {
      goto LABEL_26;
    }

    sub_1C449E530(i, v8);
    if (sub_1C44157D4(v8, 1, v9) == 1)
    {
      break;
    }

    sub_1C4471DEC();
    v18 = i - 1;
    if (__OFSUB__(i, 1))
    {
      goto LABEL_27;
    }

    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_28;
    }

    v19 = v18 > 0x40;
    if (v18 >= 0x40)
    {
      v20 = 0;
    }

    else
    {
      v20 = 1 << v18;
    }

    if (v19)
    {
      v20 = 0;
    }

    if ((v20 & v24) < 1)
    {
      sub_1C447E8C0(v0, type metadata accessor for Source);
    }

    else
    {
      sub_1C4471DEC();
      if (*v15 == *v23 && v15[1] == v23[1])
      {
        sub_1C441C138();
LABEL_26:
        sub_1C43FE9F0();
        return;
      }

      v22 = sub_1C4F02938();
      sub_1C441C138();
      if (v22)
      {
        goto LABEL_26;
      }
    }

LABEL_24:
    ;
  }

  sub_1C4420C3C(v8, &unk_1EC0C0760, &qword_1C4F170D0);
  v17 = i + 1;
  if (!__OFADD__(i, 1))
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_1C465BC24()
{
  sub_1C43FBD3C();
  v2 = v1;
  LODWORD(v47) = v3;
  v37 = sub_1C4EFF0C8();
  v4 = sub_1C43FCDF8(v37);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v45 = v10 - v9;
  v11 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v12 = sub_1C43FBD18(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FC0C8();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v36 - v16;
  sub_1C46C3564(v2, v49);
  v18 = v49[1];
  v39 = v6;
  v40 = v49[0];
  v19 = v51;
  v20 = v52;
  v36[1] = v50;
  v21 = (v50 + 64) >> 6;
  v38 = v6 + 16;
  v43 = (v6 + 32);
  v44 = v53;
  v42 = (v6 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v22 = v20;
  v23 = v37;

  v41 = v47 & 1;
  while (1)
  {
    v24 = v22;
    v25 = v19;
    v46 = v22;
    v47 = v19;
    if (!v22)
    {
      break;
    }

LABEL_6:
    v26 = (v24 - 1) & v24;
    (*(v39 + 16))(v17, *(v40 + 48) + *(v39 + 72) * (__clz(__rbit64(v24)) | (v25 << 6)), v23);
    v27 = 0;
    v19 = v25;
LABEL_7:
    sub_1C440BAA8(v17, v27, 1, v23);
    v28 = sub_1C43FD018();
    sub_1C44CDA30(v28, v29, &unk_1EC0BA0E0, &qword_1C4F105A0);
    if (sub_1C44157D4(v0, 1, v23) != 1)
    {
      v30 = *v43;
      v31 = v17;
      v32 = v45;
      v33 = sub_1C43FD018();
      v34(v33);
      v44(&v48, v32);
      v35 = v32;
      v17 = v31;
      v22 = v26;
      (*v42)(v35, v23);
      if (v48 != v41)
      {
        continue;
      }
    }

    sub_1C449BB0C();

    sub_1C43FE9F0();
    return;
  }

  while (1)
  {
    v25 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v25 >= v21)
    {
      v26 = 0;
      v27 = 1;
      goto LABEL_7;
    }

    v24 = *(v18 + 8 * v25);
    ++v19;
    if (v24)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

void sub_1C465BEF8()
{
  sub_1C442F0C4();
  v1 = v0;
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    if (v3-- == 0)
    {
      break;
    }

    sub_1C4AD6BCC(*v4);
    v7 = v6;
    v9 = v8;
    sub_1C4AD6BCC(v1);
    if (v7 == v11 && v9 == v10)
    {

      break;
    }

    sub_1C4405814();
    v13 = sub_1C4F02938();

    ++v4;
  }

  while ((v13 & 1) == 0);
  sub_1C4422220();
}

BOOL sub_1C465BFB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1C465BFDC(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return sub_1C4462378();
  }

  v2 = sub_1C457AA2C(a1);
  if (v3)
  {
    return sub_1C4434EAC(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C465C024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return sub_1C4462378();
  }

  v3 = sub_1C445FAA8(a1, a2);
  if (v4)
  {
    return sub_1C4434EAC(v3);
  }

  else
  {
    return 0;
  }
}

void sub_1C465C06C(uint64_t a1, uint64_t a2)
{
  sub_1C446BE60(a1, a2);
  v5 = 0uLL;
  if (v6)
  {
    v7 = v4;
    v8 = sub_1C457AC14(v3);
    if (v9)
    {
      v10 = 0;
      v11 = (*(v7 + 56) + 32 * v8);
      v5 = *v11;
      v12 = v11[1];
    }

    else
    {
      v10 = 1;
      v12 = 0uLL;
      v5 = 0uLL;
    }
  }

  else
  {
    v10 = 1;
    v12 = 0uLL;
  }

  *v2 = v5;
  *(v2 + 16) = v12;
  *(v2 + 32) = v10;
}

uint64_t sub_1C465C0D4(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return sub_1C4462378();
  }

  v2 = sub_1C457AC14(a1);
  if (v3)
  {
    return sub_1C4434EAC(v2);
  }

  else
  {
    return 0;
  }
}

double sub_1C465C11C(uint64_t a1, uint64_t a2)
{
  sub_1C446BE60(a1, a2);
  if (!v3)
  {
    return sub_1C442A3B4();
  }

  v4 = sub_1C457AA70(v2);
  if ((v5 & 1) == 0)
  {
    return sub_1C442A3B4();
  }

  v6 = sub_1C442EAC4(v4);

  sub_1C442B870(v6, v7);
  return result;
}

uint64_t sub_1C465C188(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1C457AE68();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1C4434540(v2);
  v5 = *v4;
  v6 = v4[1];
  return swift_unknownObjectRetain();
}

uint64_t sub_1C465C1D4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1C457AAB4();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1C4434540(v2);
  v5 = *v4;
  sub_1C46631DC(*v4, *(v4 + 8));
  return v5;
}

uint64_t sub_1C465C230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = sub_1C445FAA8(a1, a2);
    if (v5)
    {
      v6 = 0;
      v7 = *(*(a3 + 56) + 2 * v4);
    }

    else
    {
      v7 = 0;
      v6 = 1;
    }
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  return v7 | (v6 << 16);
}

void sub_1C465C2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C441DC98(a1, a2, a3);
  if (v7 && (v8 = v6, v9 = sub_1C445FAA8(v4, v5), (v10 & 1) != 0))
  {
    sub_1C4460108(*(v8 + 56) + 32 * v9, v3, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    v3[3] = 1;
  }
}

double sub_1C465C324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C441DC98(a1, a2, a3);
  if (v7 && (v8 = v6, v9 = sub_1C445FAA8(v4, v5), (v10 & 1) != 0))
  {
    v11 = *(v8 + 56) + 48 * v9;

    sub_1C4609884(v11, v3);
  }

  else
  {
    result = 0.0;
    v3[1] = 0u;
    v3[2] = 0u;
    *v3 = 0u;
  }

  return result;
}

uint64_t sub_1C465C3A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (*(a2 + 16) && (v3 = a3(), (v4 & 1) != 0))
  {
    sub_1C4434540(v3);
    v6 = *v5;
    v7 = v5[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C4455358();
  }

  return sub_1C43FBC98();
}

uint64_t sub_1C465C424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return sub_1C4462378();
  }

  v3 = a3();
  if (v4)
  {
    return sub_1C4434EAC(v3);
  }

  else
  {
    return 0;
  }
}

double sub_1C465C4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C441DC98(a1, a2, a3);
  if (!v5)
  {
    return sub_1C442A3B4();
  }

  v6 = sub_1C445FAA8(v3, v4);
  if ((v7 & 1) == 0)
  {
    return sub_1C442A3B4();
  }

  v8 = sub_1C442EAC4(v6);

  sub_1C442B870(v8, v9);
  return result;
}

void sub_1C465C50C()
{
  sub_1C442F0C4();
  sub_1C446BE60(v1, v2);
  if (v5 && (v6 = v4, v7 = sub_1C457EB4C(v3), (v8 & 1) != 0))
  {
    v9 = *(v6 + 56) + 48 * v7;
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    v14 = *(v9 + 32);
    v15 = *(v9 + 40);
    sub_1C45D7F78(*v9, v11, v12, v13, v14, v15);
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = -1;
  }

  *v0 = v10;
  *(v0 + 8) = v11;
  *(v0 + 16) = v12;
  *(v0 + 24) = v13;
  *(v0 + 32) = v14;
  *(v0 + 40) = v15;
  sub_1C4422220();
}

uint64_t sub_1C465C5B0(uint64_t a1, uint64_t a2)
{
  sub_1C446BE60(a1, a2);
  if (v3 && (v4 = v2, sub_1C44E3664(), (v5 & 1) != 0))
  {
    v6 = *(v4 + 56);
    v7 = type metadata accessor for EntityMatch(0);
    sub_1C43FBCE0(v7);
    v9 = *(v8 + 72);
    sub_1C46631E8();
    v10 = sub_1C442DDD0();
  }

  else
  {
    type metadata accessor for EntityMatch(0);
    v10 = sub_1C4412BF8();
  }

  return sub_1C440BAA8(v10, v11, v12, v13);
}

uint64_t sub_1C465C650(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1C44E3664();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1C4434540(v2);
  result = *v4;
  v6 = v4[1];
  return result;
}

uint64_t sub_1C465C6B0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v2 = sub_1C457AF68(), (v3 & 1) != 0))
  {
    sub_1C447E2D4(v2);
    v5 = *(v4 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C4455358();
  }

  return sub_1C43FBC98();
}

uint64_t sub_1C465C70C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return sub_1C4462378();
  }

  sub_1C44E3664();
  if (v3)
  {
    return sub_1C4434EAC(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C465C754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 1;
  }

  v3 = sub_1C445FAA8(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 1;
  }

  sub_1C4414964(v3);
}

double sub_1C465C7A0(uint64_t a1, uint64_t a2)
{
  sub_1C446BE60(a1, a2);
  if (!v2)
  {
    return sub_1C442A3B4();
  }

  sub_1C457AB64();
  if ((v4 & 1) == 0)
  {
    return sub_1C442A3B4();
  }

  v5 = sub_1C442EAC4(v3);

  sub_1C442B870(v5, v6);
  return result;
}

uint64_t sub_1C465C7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1C445FAA8(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_1C4434540(v3);
  result = *v5;
  v7 = v5[1];
  return result;
}

uint64_t sub_1C465C848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  v5 = sub_1C457EB3C(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_1C4414964(v5);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C465C8A8@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1C457EB3C(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = sub_1C4EFF8A8();
    sub_1C43FBCE0(v8);
    (*(v9 + 16))(a2, v7 + *(v9 + 72) * v6, v8);
    v10 = sub_1C442DDD0();
  }

  else
  {
    sub_1C4EFF8A8();
    v10 = sub_1C4412BF8();
  }

  return sub_1C440BAA8(v10, v11, v12, v13);
}

uint64_t sub_1C465C964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_1C441DC98(a1, a2, a3);
  if (v9 && (v10 = v8, v11 = sub_1C445FAA8(v6, v7), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = a4(0);
    sub_1C43FBCE0(v15);
    (*(v16 + 16))(v4, v14 + *(v16 + 72) * v13, v15);
    v17 = sub_1C442DDD0();
  }

  else
  {
    a4(0);
    v17 = sub_1C4412BF8();
  }

  return sub_1C440BAA8(v17, v18, v19, v20);
}

uint64_t sub_1C465CA18(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v2 = sub_1C457EB4C(a1), (v3 & 1) != 0))
  {
    sub_1C4434540(v2);
    v5 = *v4;
    v6 = v4[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C4455358();
  }

  return sub_1C43FBC98();
}

uint64_t sub_1C465CA64(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1C457EB4C(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1C4414964(v2);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C465CAB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_1C4414964(v3);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

double sub_1C465CB00(uint64_t a1, uint64_t a2)
{
  sub_1C446BE60(a1, a2);
  if (!v2)
  {
    return sub_1C442A3B4();
  }

  v3 = sub_1C457EB50();
  if ((v4 & 1) == 0)
  {
    return sub_1C442A3B4();
  }

  v5 = sub_1C442EAC4(v3);

  sub_1C442B870(v5, v6);
  return result;
}

double sub_1C465CB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C441DC98(a1, a2, a3);
  if (v6 && (sub_1C445FAA8(v4, v5), (v7 & 1) != 0))
  {
    sub_1C44141A0();
    sub_1C4460108(v9 + v8 * v10, v3, &qword_1EC0B9038, &unk_1C4F231C0);
  }

  else
  {
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *&result = 1;
    *(v3 + 24) = xmmword_1C4F14630;
  }

  return result;
}

double sub_1C465CBBC(uint64_t a1, uint64_t a2)
{
  sub_1C446BE60(a1, a2);
  if (v4 && (sub_1C457B724(v3), (v5 & 1) != 0))
  {
    sub_1C44141A0();
    sub_1C442E860(v7 + v6 * v8, v2);
  }

  else
  {
    *(v2 + 32) = 0;
    return sub_1C442A3B4();
  }

  return result;
}

uint64_t sub_1C465CC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1C445FAA8(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_1C4414964(v3);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C465CC6C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1C457A9F0();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1C4414964(v2);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C465CCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1C445FAA8(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_1C4414964(v3);
}

void sub_1C465CD38(uint64_t a1)
{
  sub_1C43FEAE0(a1);
  if (v2)
  {
    sub_1C456902C(&qword_1EC0BA6F8, &qword_1C4F14658);
    v4 = sub_1C4404D2C();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v5 = 1 << *(v1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v1 + 64);
  sub_1C44016F4();
  v8 = v4 + 64;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    sub_1C44601BC(__clz(__rbit64(v7)) | (v9 << 6));
    v13 = *(v12 + 8 * v11);
    v28 = *v14;
    v29 = v14[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = v13;
    swift_dynamicCast();
    v16 = *(v4 + 40);
    v17 = sub_1C4F02178() & ~(-1 << *(v4 + 32));
    if (((-1 << v17) & ~*(v8 + 8 * (v17 >> 6))) == 0)
    {
      sub_1C43FFBF0();
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        if (*(v8 + 8 * v19) != -1)
        {
          sub_1C43FCF98();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    sub_1C43FFC04();
LABEL_21:
    v7 &= v7 - 1;
    *(v8 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    sub_1C444FCAC(v18, v25, v26, v27);
    *(v24 + 8 * v23) = v15;
    ++*(v4 + 16);
  }

  while (v7);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v3)
    {

      return;
    }

    v7 = *(v1 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1C465CF34(uint64_t a1)
{
  sub_1C43FEAE0(a1);
  if (v2)
  {
    sub_1C456902C(&qword_1EC0BA858, &qword_1C4F14760);
    v3 = sub_1C4404D2C();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = *(v1 + 64);
  v5 = *(v1 + 32);
  sub_1C43FD030();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  sub_1C4418354();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = 0;
  while (v8)
  {
    v12 = v11;
LABEL_10:
    sub_1C43FE644();
    sub_1C44601BC(v13 | (v12 << 6));
    v16 = *v14;
    v15 = v14[1];
    v19 = *(v18 + 8 * v17);
    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v20 = v19;
    sub_1C456902C(&qword_1EC0BA860, &unk_1C4F1EF30);
    sub_1C445BF00();
    v21 = sub_1C43FD018();
    v23 = sub_1C445FAA8(v21, v22);
    if (v24)
    {
      sub_1C4414510();
      v26 = v25[1];
      *v25 = v16;
      v25[1] = v15;

      v27 = *(v3 + 56);
      v28 = *(v27 + 8 * v23);
      *(v27 + 8 * v23) = v35;

      v11 = v12;
    }

    else
    {
      sub_1C441D17C();
      if (v29)
      {
        goto LABEL_17;
      }

      sub_1C4404D48();
      sub_1C442FC18(v30);
      v32 = (v31 + 16 * v23);
      *v32 = v16;
      v32[1] = v15;
      *(*(v3 + 56) + 8 * v23) = v35;
      sub_1C442F124();
      if (v34)
      {
        goto LABEL_18;
      }

      *(v3 + 16) = v33;
      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v8 = *(v1 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C465D0F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C456902C(&unk_1EC0C47B0, &qword_1C4F14670);
    v1 = sub_1C4404D2C();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  sub_1C43FD030();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  sub_1C4418354();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_10:
    sub_1C43FFB74();
    v12 = v11 | (v10 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_1C442E860(*(a1 + 56) + v12 * v16, v45);
    *&v44 = v14;
    *(&v44 + 1) = v15;
    v41 = v44;
    v42[0] = v45[0];
    v42[1] = v45[1];
    v43 = v46;
    v17 = v44;
    sub_1C441D670(v42, v33);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
    sub_1C456902C(&qword_1EC0B9038, &unk_1C4F231C0);
    swift_dynamicCast();
    v38 = v35;
    v39 = v36;
    v40 = v37;
    v34 = v35;
    v35 = v36;
    *&v36 = v37;
    v18 = sub_1C445FAA8(v17, *(&v17 + 1));
    if (v19)
    {
      sub_1C4414510();
      v21 = *(v20 + 8);
      *v20 = v17;

      sub_1C44141A0();
      sub_1C44408D4(&v34, v22 + v18 * v23, &qword_1EC0B9038, &unk_1C4F231C0);
      v9 = v10;
    }

    else
    {
      sub_1C441D17C();
      if (v24)
      {
        goto LABEL_17;
      }

      *(v31 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_1C4414510();
      *v25 = v17;
      v26 = *(v1 + 56) + 40 * v18;
      v27 = v34;
      v28 = v35;
      *(v26 + 32) = v36;
      *v26 = v27;
      *(v26 + 16) = v28;
      sub_1C442F124();
      if (v30)
      {
        goto LABEL_18;
      }

      *(v1 + 16) = v29;
      v9 = v10;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v6 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C465D378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_1C447F4E4();
  a33 = v37;
  a34 = v38;
  sub_1C43FEAE0(v39);
  if (v35)
  {
    sub_1C456902C(&qword_1EC0B86B8, &unk_1C4F58C00);
    v40 = sub_1C4404D2C();
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC8];
  }

  v41 = *(v34 + 64);
  v42 = *(v34 + 32);
  sub_1C43FD030();
  v45 = v44 & v43;
  sub_1C44016F4();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v46 = 0;
  while (v45)
  {
    v47 = v46;
LABEL_10:
    v48 = __clz(__rbit64(v45));
    v45 &= v45 - 1;
    sub_1C44601BC(v48 | (v47 << 6));
    v51 = *v49;
    v50 = v49[1];
    v54 = *(v53 + 8 * v52);
    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v55 = v54;
    swift_dynamicCast();
    sub_1C44482AC(&a13, &a17);
    sub_1C44482AC(&a17, &a20);
    sub_1C44482AC(&a20, &a16);
    v56 = sub_1C445FAA8(v51, v50);
    if (v57)
    {
      sub_1C445C128();
      v58 = (*(v40 + 56) + 32 * v56);
      sub_1C440962C(v58);
      sub_1C44482AC(&a16, v58);
      v46 = v47;
    }

    else
    {
      sub_1C441D17C();
      if (v59)
      {
        goto LABEL_17;
      }

      sub_1C4404D48();
      sub_1C442FC18(v60);
      sub_1C4440CDC(v61);
      sub_1C44482AC(&a16, v62);
      sub_1C442F124();
      if (v64)
      {
        goto LABEL_18;
      }

      *(v40 + 16) = v63;
      v46 = v47;
    }
  }

  while (1)
  {
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v47 >= v36)
    {

      sub_1C449DA64();
      return;
    }

    v45 = *(v34 + 64 + 8 * v47);
    ++v46;
    if (v45)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

unint64_t sub_1C465D560(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C456902C(&qword_1EC0BA970, &qword_1C4F14838);
    v1 = sub_1C4F02558();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = 0;
  for (i = &qword_1EC0BCD10; v4; i = v15)
  {
    v9 = v7;
LABEL_11:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v27 = *(*(a1 + 56) + 8 * v11);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(i, &qword_1C4F0C8C0);
    v15 = i;
    swift_dynamicCast();
    v31 = v29;
    v32 = v30;
    v28 = v29;
    v29 = v30;
    result = sub_1C445FAA8(v14, v13);
    v16 = result;
    if (v17)
    {
      v18 = (v1[6] + 16 * result);
      v19 = v18[1];
      *v18 = v14;
      v18[1] = v13;

      result = sub_1C44408D4(&v28, v1[7] + 32 * v16, v15, &qword_1C4F0C8C0);
    }

    else
    {
      if (v1[2] >= v1[3])
      {
        goto LABEL_20;
      }

      *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = (v1[6] + 16 * result);
      *v20 = v14;
      v20[1] = v13;
      v21 = (v1[7] + 32 * result);
      v22 = v29;
      *v21 = v28;
      v21[1] = v22;
      v23 = v1[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_21;
      }

      v1[2] = v25;
    }

    v7 = v9;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1C465D7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_1C447F4E4();
  a33 = v37;
  a34 = v38;
  sub_1C43FEAE0(v39);
  if (v35)
  {
    sub_1C456902C(&qword_1EC0B86B8, &unk_1C4F58C00);
    v40 = sub_1C4404D2C();
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC8];
  }

  v41 = *(v34 + 64);
  v42 = *(v34 + 32);
  sub_1C43FD030();
  v45 = v44 & v43;
  sub_1C44BBDD0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v46 = 0;
  while (v45)
  {
    v47 = v46;
LABEL_10:
    sub_1C43FFB74();
    v49 = (v47 << 10) | (16 * v48);
    v50 = (*(v34 + 48) + v49);
    v52 = *v50;
    v51 = v50[1];
    v53 = (*(v34 + 56) + v49);
    v65 = *v53;
    v66 = v53[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_dynamicCast();
    sub_1C44482AC(&a13, &a17);
    sub_1C44482AC(&a17, &a20);
    sub_1C44482AC(&a20, &a16);
    v54 = sub_1C445FAA8(v52, v51);
    if (v55)
    {
      sub_1C441B334();
      v57 = v56[1];
      *v56 = v52;
      v56[1] = v51;

      v58 = (*(v40 + 56) + 32 * v54);
      sub_1C440962C(v58);
      sub_1C44482AC(&a16, v58);
      v46 = v47;
    }

    else
    {
      sub_1C441D17C();
      if (v59)
      {
        goto LABEL_17;
      }

      sub_1C440BBAC();
      *(v40 + 64 + v60) |= v61;
      sub_1C441B334();
      *v62 = v52;
      v62[1] = v51;
      sub_1C44482AC(&a16, (*(v40 + 56) + 32 * v54));
      sub_1C442F124();
      if (v64)
      {
        goto LABEL_18;
      }

      *(v40 + 16) = v63;
      v46 = v47;
    }
  }

  while (1)
  {
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v47 >= v36)
    {

      sub_1C449DA64();
      return;
    }

    v45 = *(v34 + 64 + 8 * v47);
    ++v46;
    if (v45)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C465D9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_1C447F4E4();
  a32 = v34;
  a33 = v35;
  v67 = v36;
  if (*(v36 + 16))
  {
    sub_1C456902C(&unk_1EC0C47B0, &qword_1C4F14670);
    v37 = sub_1C4404D2C();
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC8];
  }

  v38 = *(v67 + 64);
  v39 = *(v67 + 32);
  sub_1C43FD030();
  v42 = v41 & v40;
  sub_1C44016F4();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v43 = 0;
  while (v42)
  {
    v44 = v43;
LABEL_10:
    sub_1C43FE644();
    v46 = (v44 << 10) | (16 * v45);
    v47 = (*(v67 + 48) + v46);
    v49 = *v47;
    v48 = v47[1];
    v50 = (*(v67 + 56) + v46);
    v68 = *v50;
    v69 = v50[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0B9038, &unk_1C4F231C0);
    swift_dynamicCast();
    a19 = a14;
    a20 = a15;
    a21 = a16;
    a13 = a14;
    a14 = a15;
    *&a15 = a16;
    v51 = sub_1C445FAA8(v49, v48);
    v52 = v51;
    if (v53)
    {
      v54 = (*(v37 + 48) + 16 * v51);
      v55 = v54[1];
      *v54 = v49;
      v54[1] = v48;

      sub_1C44141A0();
      sub_1C44408D4(&a13, v56 + v52 * v57, &qword_1EC0B9038, &unk_1C4F231C0);
      v43 = v44;
    }

    else
    {
      sub_1C441D17C();
      if (v58)
      {
        goto LABEL_17;
      }

      *(v37 + 64 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
      v59 = (*(v37 + 48) + 16 * v52);
      *v59 = v49;
      v59[1] = v48;
      sub_1C44141A0();
      v62 = v60 + v52 * v61;
      v63 = a13;
      v64 = a14;
      *(v62 + 32) = a15;
      *v62 = v63;
      *(v62 + 16) = v64;
      sub_1C442F124();
      if (v66)
      {
        goto LABEL_18;
      }

      *(v37 + 16) = v65;
      v43 = v44;
    }
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v44 >= v33)
    {

      sub_1C449DA64();
      return;
    }

    v42 = *(v67 + 64 + 8 * v44);
    ++v43;
    if (v42)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C465DBBC()
{
  sub_1C44158A0();
  sub_1C43FEAE0(v3);
  if (v1)
  {
    sub_1C456902C(&qword_1EC0BA8B0, &qword_1C4F14798);
    v4 = sub_1C4404D2C();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v5 = *(v0 + 64);
  v6 = *(v0 + 32);
  sub_1C43FD030();
  v9 = v8 & v7;
  sub_1C44BBDD0();
  sub_1C4418354();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = 0;
  while (v9)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_1C44601BC(v12 | (v11 << 6));
    v15 = *v13;
    v14 = v13[1];
    v18 = *(v17 + 8 * v16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v19 = sub_1C445FAA8(v15, v14);
    if (v20)
    {
      sub_1C441B334();
      v22 = v21[1];
      *v21 = v15;
      v21[1] = v14;

      v23 = (*(v4 + 56) + 16 * v19);
      v24 = *v23;
      *v23 = v18;
      v23[1] = &off_1F43EF890;
      swift_unknownObjectRelease();
      v10 = v11;
    }

    else
    {
      sub_1C441D17C();
      if (v25)
      {
        goto LABEL_17;
      }

      sub_1C440BBAC();
      sub_1C442FC18(v26);
      v28 = (v27 + 16 * v19);
      *v28 = v15;
      v28[1] = v14;
      v29 = (*(v4 + 56) + 16 * v19);
      *v29 = v18;
      v29[1] = &off_1F43EF890;
      sub_1C442F124();
      if (v31)
      {
        goto LABEL_18;
      }

      *(v4 + 16) = v30;
      v10 = v11;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v2)
    {

      sub_1C4410198();
      return;
    }

    v9 = *(v0 + 64 + 8 * v11);
    ++v10;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C465DD4C(uint64_t a1)
{
  sub_1C43FEAE0(a1);
  if (v2)
  {
    sub_1C456902C(&qword_1EC0BA768, &qword_1C4F146A0);
    v4 = sub_1C4404D2C();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v5 = 1 << *(v1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v1 + 64);
  sub_1C44BBDD0();
  v8 = v4 + 64;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    sub_1C44601BC(__clz(__rbit64(v7)) | (v9 << 6));
    v13 = *v11;
    v12 = v11[1];
    sub_1C442B870(v15 + 32 * v14, v41);
    *&v40 = v13;
    *(&v40 + 1) = v12;
    v38[2] = v40;
    v39[0] = v41[0];
    v39[1] = v41[1];
    v38[0] = v40;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_dynamicCast();
    sub_1C44482AC(v39, v33);
    v34 = v27;
    v35 = v29;
    v36 = v31;
    sub_1C44482AC(v33, v37);
    v28 = v34;
    v30 = v35;
    v32 = v36;
    sub_1C44482AC(v37, v38);
    v16 = *(v4 + 40);
    v17 = sub_1C4F02178() & ~(-1 << *(v4 + 32));
    if (((-1 << v17) & ~*(v8 + 8 * (v17 >> 6))) == 0)
    {
      sub_1C43FFBF0();
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        if (*(v8 + 8 * v18) != -1)
        {
          sub_1C43FCF98();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    sub_1C43FFC04();
LABEL_21:
    v7 &= v7 - 1;
    sub_1C44064EC();
    *(v8 + v22) |= v23;
    sub_1C444FCAC(v24, v28, v30, v32);
    sub_1C44482AC(v38, (v26 + 32 * v25));
    ++*(v4 + 16);
  }

  while (v7);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v3)
    {

      return;
    }

    v7 = *(v1 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1C465DFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_1C4EF9CD8();
  v103 = sub_1C43FCDF8(v24);
  v104 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v103);
  sub_1C43FBCC4();
  v102 = v29 - v28;
  v101 = sub_1C456902C(&qword_1EC0BA810, &qword_1C4F14738);
  sub_1C43FBCE0(v101);
  v31 = *(v30 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  v100 = v88 - v33;
  v99 = sub_1C456902C(&qword_1EC0BA818, &qword_1C4F14740);
  sub_1C43FBCE0(v99);
  v35 = *(v34 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  v98 = v88 - v37;
  v97 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FCDF8(v97);
  v89 = v38;
  v40 = *(v39 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v41);
  v43 = v88 - v42;
  v96 = sub_1C456902C(&qword_1EC0BA820, &unk_1C4F613D0);
  v44 = sub_1C43FBCE0(v96);
  v46 = *(v45 + 64);
  v47 = MEMORY[0x1EEE9AC00](v44);
  v94 = v88 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v93 = v88 - v49;
  v105 = v23;
  if (*(v23 + 16))
  {
    sub_1C456902C(&qword_1EC0BA828, &qword_1C4F14748);
    v50 = sub_1C4404D2C();
  }

  else
  {
    v50 = MEMORY[0x1E69E7CC8];
  }

  v51 = v105 + 64;
  v52 = 1 << *(v105 + 32);
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  else
  {
    v53 = -1;
  }

  v54 = v53 & *(v105 + 64);
  v55 = (v52 + 63) >> 6;
  v91 = v104 + 16;
  v90 = v104 + 32;
  v88[4] = 0x80000001C4F879A0;
  v88[3] = 0x80000001C4F87980;
  v88[2] = 0x80000001C4F87960;
  v88[1] = 0x80000001C4F87940;
  v56 = v50 + 64;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v57 = 0;
  v95 = v43;
  v92 = v50;
  if (v54)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v58 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    if (v58 >= v55)
    {

      sub_1C43FE9F0();
      return;
    }

    v54 = *(v51 + 8 * v58);
    ++v57;
    if (v54)
    {
      v57 = v58;
LABEL_12:
      v59 = __clz(__rbit64(v54));
      v54 &= v54 - 1;
      v60 = v59 | (v57 << 6);
      v61 = v104;
      v62 = *(*(v105 + 48) + v60);
      v63 = v96;
      v64 = v93;
      v65 = v103;
      (*(v104 + 16))(&v93[*(v96 + 48)], *(v105 + 56) + *(v104 + 72) * v60, v103);
      *v64 = v62;
      v66 = v64;
      v67 = v94;
      sub_1C44CDA30(v66, v94, &qword_1EC0BA820, &unk_1C4F613D0);
      v68 = *(v63 + 48);
      v69 = v100;
      v70 = *(v101 + 48);
      *v100 = *v67;
      (*(v61 + 32))(v102, &v67[v68], v65);
      swift_dynamicCast();
      v71 = v98;
      v72 = *(v99 + 48);
      *v98 = *v69;
      sub_1C44CDA30(&v69[v70], &v71[v72], &unk_1EC0B84E0, qword_1C4F0D2D0);
      v73 = *v71;
      v74 = &v71[v72];
      v75 = v95;
      sub_1C44CDA30(v74, v95, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v76 = v92;
      v77 = *(v92 + 40);
      sub_1C4F02AF8();
      switch(v73)
      {
        case 1:
          v78 = &a11;
          goto LABEL_17;
        case 2:
          v78 = &a12;
          goto LABEL_17;
        case 3:
          v78 = &a13;
          goto LABEL_17;
        case 4:
        case 5:
          goto LABEL_18;
        default:
          v78 = &a10;
LABEL_17:
          v79 = *(v78 - 32);
LABEL_18:
          sub_1C4F01298();

          v80 = sub_1C4F02B68() & ~(-1 << *(v76 + 32));
          if (((-1 << v80) & ~*(v56 + 8 * (v80 >> 6))) != 0)
          {
            sub_1C43FFC04();
          }

          else
          {
            sub_1C43FFBF0();
            do
            {
              if (++v81 == v83 && (v82 & 1) != 0)
              {
                goto LABEL_31;
              }

              v84 = v81 == v83;
              if (v81 == v83)
              {
                v81 = 0;
              }

              v82 |= v84;
            }

            while (*(v56 + 8 * v81) == -1);
            sub_1C43FCF98();
          }

          sub_1C44064EC();
          *(v56 + v85) |= v86;
          *(*(v76 + 48) + v87) = v73;
          sub_1C44CDA30(v75, *(v76 + 56) + *(v89 + 72) * v87, &unk_1EC0B84E0, qword_1C4F0D2D0);
          ++*(v76 + 16);
          if (!v54)
          {
            continue;
          }

          goto LABEL_12;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1C465E5D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1C43FEAE0(a1);
  if (v4)
  {
    sub_1C456902C(&qword_1EC0B86B8, &unk_1C4F58C00);
    v6 = sub_1C4404D2C();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v7 = *(v3 + 64);
  v8 = *(v3 + 32);
  sub_1C43FD030();
  v11 = v10 & v9;
  sub_1C44016F4();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = 0;
  while (v11)
  {
    v13 = v12;
LABEL_10:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    sub_1C44601BC(v14 | (v13 << 6));
    v17 = *v15;
    v16 = v15[1];
    v31 = *(v19 + 8 * v18);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(a2, a3);
    swift_dynamicCast();
    sub_1C44482AC(&v32, v34);
    sub_1C44482AC(v34, v35);
    sub_1C44482AC(v35, &v33);
    v20 = sub_1C445FAA8(v17, v16);
    if (v21)
    {
      sub_1C445C128();
      v22 = (v6[7] + 32 * v20);
      sub_1C440962C(v22);
      sub_1C44482AC(&v33, v22);
      v12 = v13;
    }

    else
    {
      sub_1C441D17C();
      if (v23)
      {
        goto LABEL_17;
      }

      sub_1C4404D48();
      *(v6 + v25 + 64) |= v24 << v20;
      sub_1C4440CDC(v6[6]);
      sub_1C44482AC(&v33, v26);
      sub_1C442F124();
      if (v28)
      {
        goto LABEL_18;
      }

      v6[2] = v27;
      v12 = v13;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v5)
    {

      return;
    }

    v11 = *(v3 + 64 + 8 * v13);
    ++v12;
    if (v11)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C465E7E0()
{
  sub_1C44158A0();
  sub_1C43FEAE0(v3);
  if (v1)
  {
    sub_1C456902C(&qword_1EC0BA880, &unk_1C4F21960);
    v4 = sub_1C4404D2C();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v5 = *(v0 + 64);
  v6 = *(v0 + 32);
  sub_1C43FD030();
  v9 = v8 & v7;
  sub_1C44BBDD0();
  sub_1C4418354();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = 0;
  while (v9)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_1C44601BC(v12 | (v11 << 6));
    v15 = *v13;
    v14 = v13[1];
    v18 = *(v17 + 8 * v16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v19 = v18;
    v20 = sub_1C4405814();
    v22 = sub_1C445FAA8(v20, v21);
    if (v23)
    {
      sub_1C441B334();
      v25 = v24[1];
      *v24 = v15;
      v24[1] = v14;

      v26 = *(v4 + 56);
      v27 = *(v26 + 8 * v22);
      *(v26 + 8 * v22) = v19;

      v10 = v11;
    }

    else
    {
      sub_1C441D17C();
      if (v28)
      {
        goto LABEL_17;
      }

      sub_1C440BBAC();
      sub_1C442FC18(v29);
      v31 = (v30 + 16 * v22);
      *v31 = v15;
      v31[1] = v14;
      *(*(v4 + 56) + 8 * v22) = v19;
      sub_1C442F124();
      if (v33)
      {
        goto LABEL_18;
      }

      *(v4 + 16) = v32;
      v10 = v11;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v2)
    {

      sub_1C4410198();
      return;
    }

    v9 = *(v0 + 64 + 8 * v11);
    ++v10;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C465E94C(uint64_t a1)
{
  sub_1C43FEAE0(a1);
  if (v2)
  {
    sub_1C456902C(&qword_1EC0BA7B0, &qword_1C4F146E0);
    v3 = sub_1C4404D2C();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = *(v1 + 64);
  v5 = *(v1 + 32);
  sub_1C43FD030();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  sub_1C4418354();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = 0;
  while (v8)
  {
    v12 = v11;
LABEL_10:
    sub_1C43FE644();
    sub_1C44601BC(v13 | (v12 << 6));
    v16 = *v14;
    v15 = v14[1];
    v33 = *(v18 + 8 * v17);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0BA7B8, &qword_1C4F627A0);
    sub_1C456902C(&unk_1EC0C5D60, &unk_1C4F5BC70);
    sub_1C445BF00();
    v19 = sub_1C43FD018();
    v21 = sub_1C445FAA8(v19, v20);
    if (v22)
    {
      sub_1C4414510();
      v24 = v23[1];
      *v23 = v16;
      v23[1] = v15;

      v25 = *(v3 + 56);
      v26 = *(v25 + 8 * v21);
      *(v25 + 8 * v21) = v34;

      v11 = v12;
    }

    else
    {
      sub_1C441D17C();
      if (v27)
      {
        goto LABEL_17;
      }

      sub_1C4404D48();
      sub_1C442FC18(v28);
      v30 = (v29 + 16 * v21);
      *v30 = v16;
      v30[1] = v15;
      *(*(v3 + 56) + 8 * v21) = v34;
      sub_1C442F124();
      if (v32)
      {
        goto LABEL_18;
      }

      *(v3 + 16) = v31;
      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v8 = *(v1 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C465EB08()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C4EFEEF8();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v28 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v28 - v17;
  v19 = 0;
  v29 = v4;
  v30 = v2;
  v21 = *(v4 + 56);
  v20 = v4 + 56;
  v22 = *(v20 - 24);
  sub_1C43FD030();
  v25 = v24 & v23;
  sub_1C44016F4();
  v28[2] = v8 + 32;
  v28[3] = v8 + 16;
  v28[1] = v8 + 8;
  while (v25)
  {
    v26 = v19;
LABEL_7:
    v27 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    (*(v8 + 16))(v18, *(v29 + 48) + *(v8 + 72) * (v27 | (v26 << 6)), v5);
    (*(v8 + 32))(v13, v18, v5);
    sub_1C44CB508();
    (*(v8 + 8))(v16, v5);
  }

  while (1)
  {
    v26 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v26 >= v0)
    {

      sub_1C43FE9F0();
      return;
    }

    v25 = *(v20 + 8 * v26);
    ++v19;
    if (v25)
    {
      v19 = v26;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1C465ED98()
{
  sub_1C43FBD3C();
  v27[1] = v0;
  v28 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8(0);
  v27[0] = *(v9 - 8);
  v10 = *(v27[0] + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1C43FC0C8();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = 0;
  v29 = v5;
  v16 = *(v7 + 56);
  v17 = *(v7 + 32);
  sub_1C43FD030();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  if ((v19 & v18) != 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      sub_1C43FE9F0();
      return;
    }

    v20 = *(v7 + 56 + 8 * v23);
    ++v15;
    if (v20)
    {
      v15 = v23;
      do
      {
LABEL_7:
        v20 &= v20 - 1;
        v24 = *(v7 + 48);
        v25 = *(v27[0] + 72);
        sub_1C46631E8();
        sub_1C4471DEC();
        v26 = sub_1C43FD018();
        v28(v26);
        sub_1C447E8C0(v14, v3);
      }

      while (v20);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_1C465EF40(void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v49 = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  v10 = &qword_1C4F0C8C0;
  v47 = v4;
  for (i = v8; v7; v8 = i)
  {
    v11 = v9;
LABEL_8:
    v12 = __clz(__rbit64(v7)) | (v11 << 6);
    v13 = (*(v49 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1C4460108(*(v49 + 56) + 32 * v12, &v58, &qword_1EC0BCD10, v10);
    v50 = v58;
    v51 = v59;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v52 = v14;
    if (!v14)
    {
      goto LABEL_39;
    }

    v7 &= v7 - 1;
    v58 = v50;
    v59 = v51;
    if (a1[2])
    {
      v16 = sub_1C445FAA8(v15, v14);
      if (v17)
      {
        sub_1C4460108(a1[7] + 32 * v16, &v54, &qword_1EC0BCD10, v10);
        v56 = v54;
        v57 = v55;
        if (*(&v55 + 1))
        {
          v18 = v15;
          v19 = sub_1C456902C(&qword_1EC0BA6D0, &qword_1C4F14648);
          if (swift_dynamicCast())
          {
            sub_1C4460108(&v58, &v56, &qword_1EC0BCD10, v10);
            if (*(&v57 + 1))
            {
              if (swift_dynamicCast())
              {
                v20 = sub_1C465EF40(v53, v54);

                *&v56 = v20;
                *(&v57 + 1) = v19;
                swift_isUniquelyReferenced_nonNull_native();
                *&v54 = a1;
                v21 = sub_1C445FAA8(v18, v52);
                if (__OFADD__(a1[2], (v22 & 1) == 0))
                {
                  goto LABEL_43;
                }

                v23 = v21;
                v24 = v22;
                sub_1C456902C(&qword_1EC0BA6D8, &qword_1C4F14650);
                if (sub_1C4F02458())
                {
                  v25 = sub_1C445FAA8(v18, v52);
                  if ((v24 & 1) != (v26 & 1))
                  {
                    goto LABEL_45;
                  }

                  v23 = v25;
                  if ((v24 & 1) == 0)
                  {
LABEL_19:
                    a1 = v54;
                    *(v54 + 8 * (v23 >> 6) + 64) |= 1 << v23;
                    v27 = (a1[6] + 16 * v23);
                    *v27 = v18;
                    v27[1] = v52;
                    v28 = (a1[7] + 32 * v23);
                    v29 = v57;
                    *v28 = v56;
                    v28[1] = v29;
                    v10 = &qword_1C4F0C8C0;
                    sub_1C4420C3C(&v58, &qword_1EC0BCD10, &qword_1C4F0C8C0);
                    v30 = a1[2];
                    v31 = __OFADD__(v30, 1);
                    v32 = v30 + 1;
                    if (v31)
                    {
                      goto LABEL_44;
                    }

LABEL_34:
                    a1[2] = v32;
                    goto LABEL_35;
                  }
                }

                else if ((v24 & 1) == 0)
                {
                  goto LABEL_19;
                }

                a1 = v54;
                v10 = &qword_1C4F0C8C0;
                sub_1C44408D4(&v56, *(v54 + 56) + 32 * v23, &qword_1EC0BCD10, &qword_1C4F0C8C0);
                v41 = &qword_1C4F0C8C0;
                goto LABEL_32;
              }

              v10 = &qword_1C4F0C8C0;
            }

            else
            {

              sub_1C4420C3C(&v56, &qword_1EC0BCD10, v10);
            }
          }

          v15 = v18;
        }

        else
        {
          sub_1C4420C3C(&v56, &qword_1EC0BCD10, v10);
        }
      }
    }

    v33 = v10;
    sub_1C4460108(&v58, &v56, &qword_1EC0BCD10, v10);
    swift_isUniquelyReferenced_nonNull_native();
    *&v54 = a1;
    v34 = v15;
    v35 = sub_1C445FAA8(v15, v14);
    if (__OFADD__(a1[2], (v36 & 1) == 0))
    {
      goto LABEL_41;
    }

    v37 = v35;
    v38 = v36;
    sub_1C456902C(&qword_1EC0BA6D8, &qword_1C4F14650);
    if (sub_1C4F02458())
    {
      v39 = sub_1C445FAA8(v34, v14);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_45;
      }

      v37 = v39;
    }

    v4 = v47;
    if ((v38 & 1) == 0)
    {
      a1 = v54;
      *(v54 + 8 * (v37 >> 6) + 64) |= 1 << v37;
      v42 = (a1[6] + 16 * v37);
      *v42 = v34;
      v42[1] = v14;
      v43 = (a1[7] + 32 * v37);
      v44 = v57;
      *v43 = v56;
      v43[1] = v44;
      v10 = v33;
      sub_1C4420C3C(&v58, &qword_1EC0BCD10, v33);
      v45 = a1[2];
      v31 = __OFADD__(v45, 1);
      v32 = v45 + 1;
      if (v31)
      {
        goto LABEL_42;
      }

      goto LABEL_34;
    }

    a1 = v54;
    v10 = v33;
    sub_1C44408D4(&v56, *(v54 + 56) + 32 * v37, &qword_1EC0BCD10, v33);
    v41 = v33;
LABEL_32:
    sub_1C4420C3C(&v58, &qword_1EC0BCD10, v41);
LABEL_35:
    v9 = v11;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
LABEL_39:

      return a1;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void BMContextualUnderstandingSoundAnalysis.asHierarchicalDictionary()()
{
  sub_1C43FBD3C();
  sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
  sub_1C4F00F28();
  v0 = BMContextualUnderstandingSoundAnalysis.asFlatDictionary()();
  v1 = sub_1C4F00F28();
  v3 = v0 + 64;
  v2 = *(v0 + 64);
  v4 = *(v0 + 32);
  sub_1C43FD030();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = 0;
  v104 = v1;
  v97 = v9;
  v98 = v0 + 64;
  if (!v7)
  {
    goto LABEL_2;
  }

  do
  {
LABEL_6:
    v99 = v7;
    v100 = v10;
    v12 = *(v0 + 56);
    v13 = (*(v0 + 48) + 16 * (__clz(__rbit64(v7)) | (v10 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1C443F580();
    sub_1C4460108(v16, v17, v18, v19);
    v101 = v109;
    v102 = v110;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!v14)
    {
LABEL_58:

      sub_1C43FE9F0();
      return;
    }

    v109 = v101;
    v110 = v102;
    v107 = v15;
    v108 = v14;
    v20 = *(v1 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v20)
    {
      v21 = v14;
      v22 = sub_1C445FAA8(v15, v14);
      if (v23)
      {
        sub_1C4434540(v22);
        v14 = *v24;
        v1 = v24[1];
        swift_bridgeObjectRetain_n();
        goto LABEL_12;
      }
    }

    else
    {
      v21 = v14;
    }

    sub_1C4416730();
LABEL_12:
    v25 = sub_1C4F00F28();
    v26 = v14 == 1953460082 && v1 == 0xE400000000000000;
    if (v26)
    {
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v27 = sub_1C4461C24();

      if ((v27 & 1) == 0)
      {
        v103 = v0;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        swift_beginAccess();
        v28 = v21;
        while (1)
        {
          v29 = v1;
          v30 = v14;
          sub_1C456902C(&qword_1EC0BA6C8, &qword_1C4F14640);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1C4F0D130;
          *(inited + 32) = v15;
          *(inited + 40) = v28;
          sub_1C443F580();
          sub_1C4460108(v32, v33, v34, v35);
          v36 = sub_1C4F00F28();
          v37 = sub_1C456902C(&qword_1EC0BA6D0, &qword_1C4F14648);
          *&v105 = v36;
          *(&v106 + 1) = v37;
          swift_isUniquelyReferenced_nonNull_native();
          v38 = sub_1C445FAA8(v14, v29);
          if (__OFADD__(v25[2], (v39 & 1) == 0))
          {
            goto LABEL_60;
          }

          v40 = v38;
          v41 = v39;
          v14 = sub_1C456902C(&qword_1EC0BA6D8, &qword_1C4F14650);
          if (sub_1C4F02458())
          {
            v42 = sub_1C442A8D0();
            sub_1C445FAA8(v42, v43);
            sub_1C43FED0C();
            if (!v26)
            {
              goto LABEL_64;
            }

            v40 = v44;
          }

          if (v41)
          {
            v45 = v25[7];
            sub_1C443F580();
            sub_1C44408D4(v46, v47, v48, v49);
          }

          else
          {
            sub_1C4401D38(&v25[v40 >> 6]);
            v50 = (v25[6] + 16 * v40);
            *v50 = v30;
            v50[1] = v29;
            v51 = (v25[7] + 32 * v40);
            v52 = v106;
            *v51 = v105;
            v51[1] = v52;
            v53 = v25[2];
            v54 = __OFADD__(v53, 1);
            v55 = v53 + 1;
            if (v54)
            {
              goto LABEL_63;
            }

            v25[2] = v55;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          }

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v56 = sub_1C445FAA8(v15, v28);
          v58 = v57;

          if (v58)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v59 = v25[3];
            sub_1C4F02458();
            v60 = *(v25[6] + 16 * v56 + 8);

            v61 = (v25[7] + 32 * v56);
            v62 = v61[1];
            v105 = *v61;
            v106 = v62;
            sub_1C4F02478();
          }

          else
          {
            v105 = 0uLL;
            *&v106 = 0;
            *(&v106 + 1) = 1;
          }

          sub_1C4420C3C(&v105, &qword_1EC0BA6E0, &unk_1C4F5E2C0);
          v107 = v30;
          v108 = v29;

          if (!v25[2])
          {
            goto LABEL_61;
          }

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v63 = sub_1C442A8D0();
          sub_1C445FAA8(v63, v64);
          if ((v65 & 1) == 0)
          {
            goto LABEL_62;
          }

          v66 = v25[7];
          sub_1C443F580();
          sub_1C4460108(v67, v68, v69, v70);
          sub_1C4420C3C(&v109, &qword_1EC0BCD10, &qword_1C4F0C8C0);
          v109 = v105;
          v110 = v106;
          if (!*(v104 + 16))
          {
            goto LABEL_67;
          }

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v71 = sub_1C442A8D0();
          v1 = v104;
          sub_1C445FAA8(v71, v72);
          v74 = v73;

          if (v74)
          {
            if (*(v104 + 16) && (_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), v75 = sub_1C442A8D0(), v77 = sub_1C445FAA8(v75, v76), v1 = v78, , (v1 & 1) != 0))
            {
              v79 = (*(v104 + 56) + 16 * v77);
              v14 = *v79;
              v1 = v79[1];
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            }

            else
            {
              sub_1C4416730();
            }

            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          }

          else
          {
LABEL_67:
            if (qword_1EDDFECB0 != -1)
            {
              swift_once();
            }

            v80 = sub_1C4F00978();
            sub_1C442B738(v80, qword_1EDDFECB8);
            v81 = sub_1C4F00968();
            v1 = sub_1C4F01CD8();
            if (os_log_type_enabled(v81, v1))
            {
              v82 = swift_slowAlloc();
              v83 = swift_slowAlloc();
              *&v105 = v83;
              *v82 = 136315138;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v84 = sub_1C442A8D0();
              v87 = sub_1C441D828(v84, v85, v86);

              *(v82 + 4) = v87;
              _os_log_impl(&dword_1C43F8000, v81, v1, "Soundname: %s is not contained in hierarchy dictionary", v82, 0xCu);
              sub_1C440962C(v83);
              MEMORY[0x1C6942830](v83, -1, -1);
              MEMORY[0x1C6942830](v82, -1, -1);
            }

            sub_1C4416730();
          }

          if (v14 == 1953460082 && v1 == 0xE400000000000000)
          {
            break;
          }

          v89 = sub_1C4461C24();

          v15 = v30;
          v28 = v29;
          if (v89)
          {

LABEL_53:
            v15 = v30;
            v21 = v29;
            v0 = v103;
            goto LABEL_54;
          }
        }

        swift_bridgeObjectRelease_n();
        goto LABEL_53;
      }
    }

LABEL_54:
    if (!v25[2])
    {
      sub_1C456902C(&qword_1EC0BA6C8, &qword_1C4F14640);
      v90 = swift_initStackObject();
      *(v90 + 16) = xmmword_1C4F0D130;
      *(v90 + 32) = v15;
      *(v90 + 40) = v21;
      sub_1C443F580();
      sub_1C4460108(v91, v92, v93, v94);
      sub_1C4F00F28();
    }

    v7 = (v99 - 1) & v99;
    v95 = sub_1C44191B8();
    sub_1C465EF40(v95, v96);

    sub_1C4420C3C(&v109, &qword_1EC0BCD10, &qword_1C4F0C8C0);

    v1 = v104;
    v9 = v97;
    v3 = v98;
    v10 = v100;
  }

  while (v7);
LABEL_2:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_58;
    }

    v7 = *(v3 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_6;
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
  sub_1C4F029F8();
  __break(1u);
}