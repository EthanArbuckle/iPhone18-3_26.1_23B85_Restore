void sub_232C239D0()
{
  if (!qword_27DDC7EB8)
  {
    sub_232B27EEC(&qword_27DDC6908, &unk_232CF64D0);
    v0 = sub_232CE9C70();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDC7EB8);
    }
  }
}

uint64_t sub_232C23B0C(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_232C2A520();
  a2(v5, a1);
  return sub_232CEA850();
}

uint64_t sub_232C23B6C(uint64_t a1, void (*a2)(uint64_t))
{
  sub_232C2A520();
  a2(a1);
  sub_232C2A550();

  return sub_232CEA850();
}

uint64_t sub_232C23BBC(uint64_t a1)
{
  sub_232C2A520();
  MEMORY[0x2383925C0](a1);
  return sub_232CEA850();
}

uint64_t sub_232C23BFC()
{
  sub_232C2A520();
  MEMORY[0x2383925C0](0);
  return sub_232CEA850();
}

uint64_t sub_232C23C38(unsigned __int8 a1)
{
  sub_232C2A520();
  MEMORY[0x2383925C0](a1);
  return sub_232CEA850();
}

uint64_t sub_232C23C98(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_232C2A520();
  a3(v4);
  sub_232C2A5D4();
  return sub_232CEA850();
}

uint64_t sub_232C23D28(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_232C2A5A0();
  }

  sub_232CE9E40();
}

uint64_t sub_232C23DC0()
{
  sub_232CE9E40();
}

uint64_t sub_232C23E78()
{
  sub_232CE9E40();
}

uint64_t sub_232C23F1C()
{
  sub_232CE9E40();
}

uint64_t sub_232C24038()
{
  sub_232CE9E40();
}

uint64_t sub_232C240B4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_232CE9E40();
}

uint64_t sub_232C2410C()
{
  sub_232CE9E40();
}

uint64_t sub_232C241FC()
{
  sub_232CE9E40();
}

uint64_t sub_232C24310(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_232CEA820();
  a4(v5);
  sub_232C2A5D4();
  return sub_232CEA850();
}

uint64_t sub_232C243AC()
{
  sub_232CEA820();
  sub_232CE9E40();

  return sub_232CEA850();
}

uint64_t sub_232C2446C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_232CEA820();
  a3(v6, a2);
  return sub_232CEA850();
}

uint64_t sub_232C244B8(uint64_t a1, uint64_t a2)
{
  sub_232CEA820();
  MEMORY[0x2383925C0](a2);
  return sub_232CEA850();
}

uint64_t sub_232C244FC(uint64_t a1, unsigned __int8 a2)
{
  sub_232CEA820();
  MEMORY[0x2383925C0](a2);
  return sub_232CEA850();
}

uint64_t sub_232C24540(uint64_t a1, char a2)
{
  sub_232CEA820();
  if (!a2)
  {
    sub_232C2A5A0();
  }

  sub_232CE9E40();

  return sub_232CEA850();
}

uint64_t sub_232C245DC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_232CEA820();
  a3(a2);
  sub_232C2A550();

  return sub_232CEA850();
}

uint64_t sub_232C24630@<X0>(uint64_t a1@<X8>)
{
  sub_232CE9330();
  v2 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0) + 20);
  if (qword_27DDC63F0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_27DDC7ED0;
}

uint64_t sub_232C246B8@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 1;
  *(a1 + 16) = v1;
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  v2 = a1 + *(type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange(0) + 32);
  return sub_232CE9330();
}

uint64_t sub_232C24784(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C2A400();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_232C24900(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C2A3AC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_232C24998()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5078);
  sub_232B135C4(v0, qword_27DDD5078);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF4C30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "annotationType";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tags";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "range";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "text";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C24BD4()
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_232C2A594();
        sub_232C24C98();
        break;
      case 2:
        sub_232B2F148();
        sub_232CE9460();
        break;
      case 3:
        sub_232B2F148();
        sub_232CE9400();
        break;
      case 4:
        sub_232B2F148();
        sub_232CE94A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232C24D00()
{
  if (!*v0 || (v6 = *v0, v7 = *(v0 + 8), sub_232C2A400(), sub_232C2A588(), result = sub_232CE9570(), !v1))
  {
    if (!*(v0[2] + 16) || (sub_232C2A588(), sub_232C2A594(), result = sub_232CE95A0(), !v1))
    {
      if (!*(v0[3] + 16) || (sub_232C2A588(), sub_232C2A594(), result = sub_232CE9540(), !v1))
      {
        v3 = v0[5];
        v4 = HIBYTE(v3) & 0xF;
        if ((v3 & 0x2000000000000000) == 0)
        {
          v4 = v0[4] & 0xFFFFFFFFFFFFLL;
        }

        if (!v4 || (sub_232C2A588(), result = sub_232CE95C0(), !v1))
        {
          v5 = v0 + *(type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange(0) + 32);
          sub_232B2F148();
          return sub_232CE9320();
        }
      }
    }
  }

  return result;
}

uint64_t sub_232C24E30(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v4 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v4 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v4 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v4 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v4 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v4 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v4 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v4 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v4)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v4 == v5)
  {
LABEL_6:
    if (sub_232B32DC4(a1[2], a2[2]) & 1) != 0 && (sub_232B34EB4(a1[3], a2[3]))
    {
      v6 = a1[4] == a2[4] && a1[5] == a2[5];
      if (v6 || (sub_232CEA750() & 1) != 0)
      {
        v7 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange(0) + 32);
        sub_232CE9340();
        sub_232C2A508();
        sub_232C2A100(v8, v9);
        return sub_232CE9CF0() & 1;
      }
    }
  }

  return 0;
}

uint64_t sub_232C24FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_232C25030(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_232C250A4(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_232C250F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C2A100(&qword_27DDC7F98, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C25198(uint64_t a1)
{
  v2 = sub_232C2A100(&qword_27DDC7F48, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C25260()
{
  sub_232C2A100(&qword_27DDC7F48, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange);

  return sub_232CE9500();
}

uint64_t sub_232C252E0()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5090);
  sub_232B135C4(v0, qword_27DDD5090);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_232CF8A40;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v4 = "unknown";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_232CE95F0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 1;
  *v8 = "css";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "cross";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "dataDetectors";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "html";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "human";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "misc";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "modelOutput";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "wordToken";
  *(v22 + 1) = 9;
  v22[16] = 2;
  v7();
  return sub_232CE9600();
}

uint64_t sub_232C25668()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD50A8);
  sub_232B135C4(v0, qword_27DDD50A8);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_232CFD1D0;
  v4 = v60 + v3 + v1[14];
  *(v60 + v3) = 1;
  *v4 = "detectedEventPolarity";
  *(v4 + 8) = 21;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_232CE95F0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v60 + v3 + v2 + v1[14];
  *(v60 + v3 + v2) = 2;
  *v8 = "reservationIdError";
  *(v8 + 8) = 18;
  *(v8 + 16) = 2;
  v7();
  v9 = (v60 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "reservationId";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v60 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "reservationNameError";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v7();
  v13 = (v60 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "reservationName";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v7();
  v15 = (v60 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "startAddressError";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v60 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "startAddress";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v7();
  v19 = (v60 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "startAddressComponents";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v7();
  v21 = (v60 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "endAddressError";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v60 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "endAddress";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v7();
  v25 = (v60 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "endAddressComponents";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v7();
  v27 = (v60 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "startPlaceError";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v7();
  v29 = (v60 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "startPlace";
  *(v30 + 1) = 10;
  v30[16] = 2;
  v7();
  v31 = (v60 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "endPlaceError";
  *(v32 + 1) = 13;
  v32[16] = 2;
  v7();
  v33 = (v60 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "endPlace";
  *(v34 + 1) = 8;
  v34[16] = 2;
  v7();
  v35 = (v60 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "startDateError";
  *(v36 + 1) = 14;
  v36[16] = 2;
  v7();
  v37 = (v60 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "startDate";
  *(v38 + 1) = 9;
  v38[16] = 2;
  v7();
  v39 = (v60 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "endDateError";
  *(v40 + 1) = 12;
  v40[16] = 2;
  v7();
  v41 = (v60 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "endDate";
  *(v42 + 1) = 7;
  v42[16] = 2;
  v7();
  v43 = (v60 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "hotelNameError";
  *(v44 + 1) = 14;
  v44[16] = 2;
  v7();
  v45 = (v60 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "hotelName";
  *(v46 + 1) = 9;
  v46[16] = 2;
  v7();
  v47 = (v60 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "guestNameError";
  *(v48 + 1) = 14;
  v48[16] = 2;
  v7();
  v49 = (v60 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "guestName";
  *(v50 + 1) = 9;
  v50[16] = 2;
  v7();
  v51 = (v60 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "movieNameError";
  *(v52 + 1) = 14;
  v52[16] = 2;
  v7();
  v53 = (v60 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "movieName";
  *(v54 + 1) = 9;
  v54[16] = 2;
  v7();
  v55 = (v60 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "text";
  *(v56 + 1) = 4;
  v56[16] = 2;
  v7();
  v57 = (v60 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "tags";
  *(v58 + 1) = 4;
  v58[16] = 2;
  v7();
  return sub_232CE9600();
}

uint64_t sub_232C25E10()
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
  swift_allocObject();
  result = sub_232C25E50();
  qword_27DDC7ED0 = result;
  return result;
}

uint64_t sub_232C25E50()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 256;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 40) = 0;
  *(v0 + 64) = 256;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0;
  *(v0 + 96) = 256;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 120) = sub_232CE9C60();
  *(v0 + 128) = 0;
  *(v0 + 136) = 256;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = sub_232CE9C60();
  *(v0 + 168) = 0;
  *(v0 + 176) = 256;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0;
  *(v0 + 184) = 0;
  *(v0 + 208) = 256;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 216) = 0;
  *(v0 + 240) = 256;
  *(v0 + 256) = 0;
  *(v0 + 264) = 0;
  *(v0 + 248) = 0;
  *(v0 + 272) = 256;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  *(v0 + 296) = 0;
  *(v0 + 304) = 256;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0;
  *(v0 + 328) = 0;
  *(v0 + 336) = 256;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  *(v0 + 368) = 256;
  *(v0 + 376) = 0u;
  *(v0 + 392) = 0u;
  *(v0 + 408) = v1;
  return v0;
}

uint64_t sub_232C25F58(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 256;
  *(v1 + 48) = 0;
  *(v1 + 64) = 256;
  *(v1 + 56) = 0;
  *(v1 + 40) = 0;
  *(v1 + 80) = 0;
  *(v1 + 96) = 256;
  *(v1 + 88) = 0;
  *(v1 + 72) = 0;
  *(v1 + 112) = 0;
  *(v1 + 104) = 0;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 120) = sub_232C2A5B4();
  *(v1 + 128) = 0;
  *(v1 + 136) = 256;
  *(v1 + 152) = 0;
  *(v1 + 144) = 0;
  *(v1 + 160) = sub_232C2A5B4();
  *(v1 + 168) = 0;
  *(v1 + 176) = 256;
  *(v1 + 192) = 0;
  *(v1 + 208) = 256;
  *(v1 + 200) = 0;
  *(v1 + 184) = 0;
  *(v1 + 224) = 0;
  *(v1 + 232) = 0;
  *(v1 + 216) = 0;
  *(v1 + 240) = 256;
  *(v1 + 256) = 0;
  *(v1 + 264) = 0;
  *(v1 + 248) = 0;
  *(v1 + 272) = 256;
  *(v1 + 280) = 0;
  *(v1 + 288) = 0;
  *(v1 + 296) = 0;
  *(v1 + 304) = 256;
  *(v1 + 312) = 0;
  *(v1 + 320) = 0;
  *(v1 + 328) = 0;
  *(v1 + 336) = 256;
  *(v1 + 344) = 0;
  *(v1 + 352) = 0;
  *(v1 + 360) = 0;
  *(v1 + 368) = 256;
  *(v1 + 376) = 0u;
  *(v1 + 392) = 0u;
  *(v1 + 408) = v3;
  sub_232B13F74();
  v4 = *(a1 + 16);
  sub_232B13F5C();
  *(v1 + 16) = v4;
  sub_232B13F74();
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  sub_232B13F5C();
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 33) = v7;
  sub_232B13F74();
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  sub_232B13F5C();
  v10 = *(v1 + 48);
  *(v1 + 40) = v9;
  *(v1 + 48) = v8;

  sub_232B13F74();
  v11 = *(a1 + 56);
  LOBYTE(v8) = *(a1 + 64);
  LOBYTE(v10) = *(a1 + 65);
  sub_232B13F5C();
  *(v1 + 56) = v11;
  *(v1 + 64) = v8;
  *(v1 + 65) = v10;
  sub_232B13F74();
  v13 = *(a1 + 72);
  v12 = *(a1 + 80);
  sub_232BC1C58();
  v14 = *(v1 + 80);
  *(v1 + 72) = v13;
  *(v1 + 80) = v12;

  sub_232B13F74();
  v15 = *(a1 + 88);
  LOBYTE(v14) = *(a1 + 96);
  LOBYTE(v13) = *(a1 + 97);
  sub_232BC1C58();
  *(v1 + 88) = v15;
  *(v1 + 96) = v14;
  *(v1 + 97) = v13;
  sub_232B13F74();
  v17 = *(a1 + 104);
  v16 = *(a1 + 112);
  sub_232BC1C58();
  v18 = *(v1 + 112);
  *(v1 + 104) = v17;
  *(v1 + 112) = v16;

  sub_232B13F74();
  v19 = *(a1 + 120);
  sub_232B13F5C();
  v20 = *(v1 + 120);
  *(v1 + 120) = v19;

  sub_232B13F74();
  v21 = *(a1 + 128);
  LOBYTE(v20) = *(a1 + 136);
  LOBYTE(v17) = *(a1 + 137);
  sub_232BC1C58();
  *(v1 + 128) = v21;
  *(v1 + 136) = v20;
  *(v1 + 137) = v17;
  sub_232B13F74();
  v23 = *(a1 + 144);
  v22 = *(a1 + 152);
  sub_232BC1C58();
  v24 = *(v1 + 152);
  *(v1 + 144) = v23;
  *(v1 + 152) = v22;

  sub_232B13F74();
  v25 = *(a1 + 160);
  sub_232B13F5C();
  v26 = *(v1 + 160);
  *(v1 + 160) = v25;

  sub_232B13F74();
  v27 = *(a1 + 168);
  LOBYTE(v26) = *(a1 + 176);
  LOBYTE(v23) = *(a1 + 177);
  sub_232BC1C58();
  *(v1 + 168) = v27;
  *(v1 + 176) = v26;
  *(v1 + 177) = v23;
  sub_232B13F74();
  v29 = *(a1 + 184);
  v28 = *(a1 + 192);
  sub_232BC1C58();
  v30 = *(v1 + 192);
  *(v1 + 184) = v29;
  *(v1 + 192) = v28;

  sub_232B13F74();
  v31 = *(a1 + 200);
  LOBYTE(v30) = *(a1 + 208);
  LOBYTE(v29) = *(a1 + 209);
  sub_232BC1C58();
  *(v1 + 200) = v31;
  *(v1 + 208) = v30;
  *(v1 + 209) = v29;
  sub_232B13F74();
  v33 = *(a1 + 216);
  v32 = *(a1 + 224);
  sub_232BC1C58();
  v34 = *(v1 + 224);
  *(v1 + 216) = v33;
  *(v1 + 224) = v32;

  sub_232B13F74();
  v35 = *(a1 + 232);
  LOBYTE(v34) = *(a1 + 240);
  LOBYTE(v33) = *(a1 + 241);
  sub_232BC1C58();
  *(v1 + 232) = v35;
  *(v1 + 240) = v34;
  *(v1 + 241) = v33;
  sub_232B13F74();
  v37 = *(a1 + 248);
  v36 = *(a1 + 256);
  sub_232BC1C58();
  v38 = *(v1 + 256);
  *(v1 + 248) = v37;
  *(v1 + 256) = v36;

  sub_232B13F74();
  v39 = *(a1 + 264);
  LOBYTE(v38) = *(a1 + 272);
  LOBYTE(v37) = *(a1 + 273);
  sub_232B13F5C();
  *(v1 + 264) = v39;
  *(v1 + 272) = v38;
  *(v1 + 273) = v37;
  sub_232B13F74();
  v41 = *(a1 + 280);
  v40 = *(a1 + 288);
  sub_232B13F5C();
  v42 = *(v1 + 288);
  *(v1 + 280) = v41;
  *(v1 + 288) = v40;

  sub_232B13F74();
  v43 = *(a1 + 296);
  LOBYTE(v42) = *(a1 + 304);
  LOBYTE(v41) = *(a1 + 305);
  sub_232B13F5C();
  *(v1 + 296) = v43;
  *(v1 + 304) = v42;
  *(v1 + 305) = v41;
  sub_232B13F74();
  v45 = *(a1 + 312);
  v44 = *(a1 + 320);
  sub_232B13F5C();
  v46 = *(v1 + 320);
  *(v1 + 312) = v45;
  *(v1 + 320) = v44;

  sub_232B13F74();
  v47 = *(a1 + 328);
  LOBYTE(v46) = *(a1 + 336);
  LOBYTE(v45) = *(a1 + 337);
  sub_232B13F5C();
  *(v1 + 328) = v47;
  *(v1 + 336) = v46;
  *(v1 + 337) = v45;
  sub_232B13F74();
  v49 = *(a1 + 344);
  v48 = *(a1 + 352);
  sub_232B13F5C();
  v50 = *(v1 + 352);
  *(v1 + 344) = v49;
  *(v1 + 352) = v48;

  sub_232B13F74();
  v51 = *(a1 + 360);
  LOBYTE(v50) = *(a1 + 368);
  LOBYTE(v49) = *(a1 + 369);
  sub_232B13F5C();
  *(v1 + 360) = v51;
  *(v1 + 368) = v50;
  *(v1 + 369) = v49;
  sub_232B13F74();
  v53 = *(a1 + 376);
  v52 = *(a1 + 384);
  sub_232B13F5C();
  v54 = *(v1 + 384);
  *(v1 + 376) = v53;
  *(v1 + 384) = v52;

  sub_232B13F74();
  v56 = *(a1 + 392);
  v55 = *(a1 + 400);
  sub_232B13F5C();
  v57 = *(v1 + 400);
  *(v1 + 392) = v56;
  *(v1 + 400) = v55;

  sub_232B13F74();
  v58 = *(a1 + 408);

  sub_232B13F5C();
  v59 = *(v1 + 408);
  *(v1 + 408) = v58;

  return v1;
}

void *sub_232C2665C()
{
  v1 = v0[6];

  v2 = v0[10];

  v3 = v0[14];

  v4 = v0[15];

  v5 = v0[19];

  v6 = v0[20];

  v7 = v0[24];

  v8 = v0[28];

  v9 = v0[32];

  v10 = v0[36];

  v11 = v0[40];

  v12 = v0[44];

  v13 = v0[48];

  v14 = v0[50];

  v15 = v0[51];

  return v0;
}

uint64_t sub_232C266EC()
{
  v0 = sub_232C2665C();

  return MEMORY[0x2821FE8D8](v0, 416, 7);
}

uint64_t initializeBufferWithCopyOfBuffer for DocumentUnderstanding_ClientInterface_FoundInEventResult.FoundInEventResultError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void sub_232C267AC()
{
  sub_232C2687C(319, &qword_2814DF980);
  if (v0 <= 0x3F)
  {
    sub_232C2687C(319, &qword_27DDC7EE8);
    if (v1 <= 0x3F)
    {
      sub_232CE9340();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_232C2687C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_232CEA030();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_232C26920()
{
  result = sub_232CE9340();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_232C269A8()
{
  result = qword_27DDC7F00;
  if (!qword_27DDC7F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7F00);
  }

  return result;
}

unint64_t sub_232C26A00()
{
  result = qword_27DDC7F08;
  if (!qword_27DDC7F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7F08);
  }

  return result;
}

unint64_t sub_232C26A58()
{
  result = qword_27DDC7F10;
  if (!qword_27DDC7F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7F10);
  }

  return result;
}

unint64_t sub_232C26AB0()
{
  result = qword_27DDC7F18;
  if (!qword_27DDC7F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7F18);
  }

  return result;
}

unint64_t sub_232C26B08()
{
  result = qword_27DDC7F20;
  if (!qword_27DDC7F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7F20);
  }

  return result;
}

unint64_t sub_232C26B60()
{
  result = qword_27DDC7F28;
  if (!qword_27DDC7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7F28);
  }

  return result;
}

uint64_t sub_232C26BB4()
{
  v1 = v0;
  v2 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
    swift_allocObject();
    *(v1 + v2) = sub_232C25F58(v5);
  }

  sub_232C2A594();
  return sub_232C26C58();
}

uint64_t sub_232C26C58()
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_232C26FBC();
        break;
      case 2:
        sub_232C27040();
        break;
      case 3:
        sub_232C270D4();
        break;
      case 4:
        sub_232C27158();
        break;
      case 5:
        sub_232C271EC();
        break;
      case 6:
        sub_232C27270();
        break;
      case 7:
        sub_232C27304();
        break;
      case 8:
        sub_232C27388();
        break;
      case 9:
        sub_232C2742C();
        break;
      case 10:
        sub_232C274C0();
        break;
      case 11:
        sub_232C27544();
        break;
      case 12:
        sub_232C275E8();
        break;
      case 13:
        sub_232C2767C();
        break;
      case 14:
        sub_232C27700();
        break;
      case 15:
        sub_232C27794();
        break;
      case 16:
        sub_232C27818();
        break;
      case 17:
        sub_232C278AC();
        break;
      case 18:
        sub_232C27930();
        break;
      case 19:
        sub_232C279C4();
        break;
      case 20:
        sub_232C27A48();
        break;
      case 21:
        sub_232C27ADC();
        break;
      case 22:
        sub_232C27B60();
        break;
      case 23:
        sub_232C27BF4();
        break;
      case 24:
        sub_232C27C78();
        break;
      case 25:
        sub_232C27D0C();
        break;
      case 26:
        sub_232C27D90();
        break;
      case 27:
        sub_232C27E14();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232C26FBC()
{
  swift_beginAccess();
  sub_232CE93C0();
  return swift_endAccess();
}

uint64_t sub_232C27040()
{
  swift_beginAccess();
  sub_232C2A3AC();
  sub_232CE93D0();
  return swift_endAccess();
}

uint64_t sub_232C270D4()
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27158()
{
  swift_beginAccess();
  sub_232C2A3AC();
  sub_232CE93D0();
  return swift_endAccess();
}

uint64_t sub_232C271EC()
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27270()
{
  swift_beginAccess();
  sub_232C2A3AC();
  sub_232CE93D0();
  return swift_endAccess();
}

uint64_t sub_232C27304()
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27388()
{
  swift_beginAccess();
  sub_232CE9310();
  sub_232CE9390();
  return swift_endAccess();
}

uint64_t sub_232C2742C()
{
  swift_beginAccess();
  sub_232C2A3AC();
  sub_232CE93D0();
  return swift_endAccess();
}

uint64_t sub_232C274C0()
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27544()
{
  swift_beginAccess();
  sub_232CE9310();
  sub_232CE9390();
  return swift_endAccess();
}

uint64_t sub_232C275E8()
{
  swift_beginAccess();
  sub_232C2A3AC();
  sub_232CE93D0();
  return swift_endAccess();
}

uint64_t sub_232C2767C()
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27700()
{
  swift_beginAccess();
  sub_232C2A3AC();
  sub_232CE93D0();
  return swift_endAccess();
}

uint64_t sub_232C27794()
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27818()
{
  swift_beginAccess();
  sub_232C2A3AC();
  sub_232CE93D0();
  return swift_endAccess();
}

uint64_t sub_232C278AC()
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27930()
{
  swift_beginAccess();
  sub_232C2A3AC();
  sub_232CE93D0();
  return swift_endAccess();
}

uint64_t sub_232C279C4()
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27A48()
{
  swift_beginAccess();
  sub_232C2A3AC();
  sub_232CE93D0();
  return swift_endAccess();
}

uint64_t sub_232C27ADC()
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27B60()
{
  swift_beginAccess();
  sub_232C2A3AC();
  sub_232CE93D0();
  return swift_endAccess();
}

uint64_t sub_232C27BF4()
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27C78()
{
  swift_beginAccess();
  sub_232C2A3AC();
  sub_232CE93D0();
  return swift_endAccess();
}

uint64_t sub_232C27D0C()
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27D90()
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27E14()
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange(0);
  sub_232C2A100(&qword_27DDC7F48, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange);
  sub_232CE94B0();
  return swift_endAccess();
}

uint64_t sub_232C27EE0()
{
  v2 = *(v0 + *(type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0) + 20));
  sub_232B2F148();
  result = sub_232C27F48(v3);
  if (!v1)
  {
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232C27F48(uint64_t a1)
{
  swift_beginAccess();
  if (*(a1 + 16) != 1 || (result = sub_232CE9560(), !v1))
  {
    result = sub_232C28434(a1);
    if (!v1)
    {
      sub_232C284DC(a1);
      sub_232C28578(a1);
      sub_232C28620(a1);
      sub_232C286BC(a1);
      sub_232C28764(a1);
      swift_beginAccess();
      if (*(*(a1 + 120) + 16))
      {
        sub_232CE9310();

        sub_232CE9520();
      }

      sub_232C28800(a1);
      sub_232C288A8(a1);
      swift_beginAccess();
      if (*(*(a1 + 160) + 16))
      {
        sub_232CE9310();

        sub_232CE9520();
      }

      sub_232C28944(a1);
      sub_232C289EC(a1);
      sub_232C28A88(a1);
      sub_232C28B30(a1);
      sub_232C28BCC(a1);
      sub_232C28C74(a1);
      sub_232C28D10(a1);
      sub_232C28DB8(a1);
      sub_232C28E54(a1);
      sub_232C28EFC(a1);
      sub_232C28F98(a1);
      sub_232C29040(a1);
      sub_232C290DC(a1);
      sub_232C29184(a1);
      sub_232C29220(a1);
      result = swift_beginAccess();
      if (*(*(a1 + 408) + 16))
      {
        type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange(0);
        sub_232C2A100(&qword_27DDC7F48, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange);

        sub_232CE95D0();
      }
    }
  }

  return result;
}

uint64_t sub_232C28434(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 33) & 1) == 0)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 32) & 1;
    sub_232C2A3AC();
    return sub_232CE9570();
  }

  return result;
}

uint64_t sub_232C284DC(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 48))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C28578(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 65) & 1) == 0)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 64) & 1;
    sub_232C2A3AC();
    return sub_232CE9570();
  }

  return result;
}

uint64_t sub_232C28620(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 80))
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 80);

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C286BC(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 97) & 1) == 0)
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 96) & 1;
    sub_232C2A3AC();
    return sub_232CE9570();
  }

  return result;
}

uint64_t sub_232C28764(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 112))
  {
    v3 = *(a1 + 104);
    v4 = *(a1 + 112);

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C28800(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 137) & 1) == 0)
  {
    v3 = *(a1 + 128);
    v4 = *(a1 + 136) & 1;
    sub_232C2A3AC();
    return sub_232CE9570();
  }

  return result;
}

uint64_t sub_232C288A8(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 152))
  {
    v3 = *(a1 + 144);
    v4 = *(a1 + 152);

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C28944(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 177) & 1) == 0)
  {
    v3 = *(a1 + 168);
    v4 = *(a1 + 176) & 1;
    sub_232C2A3AC();
    return sub_232CE9570();
  }

  return result;
}

uint64_t sub_232C289EC(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 192))
  {
    v3 = *(a1 + 184);
    v4 = *(a1 + 192);

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C28A88(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 209) & 1) == 0)
  {
    v3 = *(a1 + 200);
    v4 = *(a1 + 208) & 1;
    sub_232C2A3AC();
    return sub_232CE9570();
  }

  return result;
}

uint64_t sub_232C28B30(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 224))
  {
    v3 = *(a1 + 216);
    v4 = *(a1 + 224);

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C28BCC(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 241) & 1) == 0)
  {
    v3 = *(a1 + 232);
    v4 = *(a1 + 240) & 1;
    sub_232C2A3AC();
    return sub_232CE9570();
  }

  return result;
}

uint64_t sub_232C28C74(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 256))
  {
    v3 = *(a1 + 248);
    v4 = *(a1 + 256);

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C28D10(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 273) & 1) == 0)
  {
    v3 = *(a1 + 264);
    v4 = *(a1 + 272) & 1;
    sub_232C2A3AC();
    return sub_232CE9570();
  }

  return result;
}

uint64_t sub_232C28DB8(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 288))
  {
    v3 = *(a1 + 280);
    v4 = *(a1 + 288);

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C28E54(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 305) & 1) == 0)
  {
    v3 = *(a1 + 296);
    v4 = *(a1 + 304) & 1;
    sub_232C2A3AC();
    return sub_232CE9570();
  }

  return result;
}

uint64_t sub_232C28EFC(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 320))
  {
    v3 = *(a1 + 312);
    v4 = *(a1 + 320);

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C28F98(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 337) & 1) == 0)
  {
    v3 = *(a1 + 328);
    v4 = *(a1 + 336) & 1;
    sub_232C2A3AC();
    return sub_232CE9570();
  }

  return result;
}

uint64_t sub_232C29040(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 352))
  {
    v3 = *(a1 + 344);
    v4 = *(a1 + 352);

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C290DC(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 369) & 1) == 0)
  {
    v3 = *(a1 + 360);
    v4 = *(a1 + 368) & 1;
    sub_232C2A3AC();
    return sub_232CE9570();
  }

  return result;
}

uint64_t sub_232C29184(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 384))
  {
    v3 = *(a1 + 376);
    v4 = *(a1 + 384);

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C29220(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 400))
  {
    v3 = *(a1 + 392);
    v4 = *(a1 + 400);

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C292BC(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0) + 20);
  if (*(a1 + v4) != *(a2 + v4))
  {
    v5 = *(a1 + v4);

    v6 = sub_232B41C8C();
    v8 = sub_232C29390(v6, v7);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  sub_232CE9340();
  sub_232C2A508();
  sub_232C2A100(v9, v10);
  return sub_232CE9CF0() & 1;
}

uint64_t sub_232C29390(uint64_t a1, uint64_t a2)
{
  sub_232B13F74();
  v4 = *(a1 + 16);
  sub_232B13F74();
  if (v4 != *(a2 + 16))
  {
    goto LABEL_2;
  }

  sub_232B13F74();
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 33);
  v10 = sub_232B13F74();
  v12 = *(a2 + 33);
  if (v9)
  {
    if ((*(a2 + 33) & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else
  {
    if (*(a2 + 33))
    {
      goto LABEL_2;
    }

    v13 = *(a2 + 32);
    if (!sub_232C2A4EC(v10, v11, *(a2 + 24)))
    {
      goto LABEL_2;
    }
  }

  sub_232B13F74();
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  sub_232B13F74();
  v16 = *(a2 + 48);
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_2;
    }

    v17 = v14 == *(a2 + 40) && v15 == v16;
    if (!v17 && (sub_232C2A4D0() & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else if (v16)
  {
    goto LABEL_2;
  }

  sub_232B13F74();
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  v20 = *(a1 + 65);
  v21 = sub_232B13F74();
  v23 = *(a2 + 65);
  if (v20)
  {
    if ((*(a2 + 65) & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else
  {
    if (*(a2 + 65))
    {
      goto LABEL_2;
    }

    v24 = *(a2 + 64);
    if (!sub_232C2A4EC(v21, v22, *(a2 + 56)))
    {
      goto LABEL_2;
    }
  }

  sub_232B13F74();
  v25 = *(a1 + 72);
  v26 = *(a1 + 80);
  sub_232B13F74();
  v27 = *(a2 + 80);
  if (v26)
  {
    if (!v27)
    {
      goto LABEL_2;
    }

    v28 = v25 == *(a2 + 72) && v26 == v27;
    if (!v28 && (sub_232C2A4D0() & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else if (v27)
  {
    goto LABEL_2;
  }

  sub_232B13F74();
  v29 = *(a1 + 88);
  v30 = *(a1 + 96);
  v31 = *(a1 + 97);
  v32 = sub_232B13F74();
  v34 = *(a2 + 97);
  if (v31)
  {
    if ((*(a2 + 97) & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else
  {
    if (*(a2 + 97))
    {
      goto LABEL_2;
    }

    v35 = *(a2 + 96);
    if (!sub_232C2A4EC(v32, v33, *(a2 + 88)))
    {
      goto LABEL_2;
    }
  }

  sub_232B13F74();
  v36 = *(a1 + 104);
  v37 = *(a1 + 112);
  sub_232B13F74();
  v38 = *(a2 + 112);
  if (v37)
  {
    if (!v38)
    {
      goto LABEL_2;
    }

    v39 = v36 == *(a2 + 104) && v37 == v38;
    if (!v39 && (sub_232C2A4D0() & 1) == 0)
    {
      goto LABEL_2;
    }

LABEL_46:
    sub_232B13F74();
    v40 = *(a1 + 120);
    sub_232B13F74();
    v41 = *(a2 + 120);

    v42 = sub_232B41C8C();
    sub_232B3223C(v42, v43);
    v45 = v44;

    if (v45)
    {
      sub_232B13F74();
      v46 = *(a1 + 128);
      v47 = *(a1 + 136);
      v48 = *(a1 + 137);
      v49 = sub_232B13F74();
      v51 = *(a2 + 137);
      if (v48)
      {
        if ((*(a2 + 137) & 1) == 0)
        {
          goto LABEL_169;
        }
      }

      else
      {
        if (*(a2 + 137))
        {
          goto LABEL_169;
        }

        v52 = *(a2 + 136);
        if (!sub_232C2A4EC(v49, v50, *(a2 + 128)))
        {
          goto LABEL_169;
        }
      }

      sub_232B13F74();
      v53 = *(a1 + 144);
      v54 = *(a1 + 152);
      sub_232B13F74();
      v55 = *(a2 + 152);
      if (v54)
      {
        if (!v55)
        {
          goto LABEL_169;
        }

        v56 = v53 == *(a2 + 144) && v54 == v55;
        if (!v56 && (sub_232C2A4D0() & 1) == 0)
        {
          goto LABEL_169;
        }
      }

      else if (v55)
      {
        goto LABEL_169;
      }

      sub_232B13F74();
      v57 = *(a1 + 160);
      sub_232B13F74();
      v58 = *(a2 + 160);

      v59 = sub_232B41C8C();
      sub_232B3223C(v59, v60);
      v62 = v61;

      if (v62)
      {
        sub_232B13F74();
        v63 = *(a1 + 168);
        v64 = *(a1 + 176);
        v65 = *(a1 + 177);
        v66 = sub_232B13F74();
        v68 = *(a2 + 177);
        if (v65)
        {
          if ((*(a2 + 177) & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else
        {
          if (*(a2 + 177))
          {
            goto LABEL_169;
          }

          v69 = *(a2 + 176);
          if (!sub_232C2A4EC(v66, v67, *(a2 + 168)))
          {
            goto LABEL_169;
          }
        }

        sub_232B13F74();
        v70 = *(a1 + 184);
        v71 = *(a1 + 192);
        sub_232B13F74();
        v72 = *(a2 + 192);
        if (v71)
        {
          if (!v72)
          {
            goto LABEL_169;
          }

          v73 = v70 == *(a2 + 184) && v71 == v72;
          if (!v73 && (sub_232C2A4D0() & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else if (v72)
        {
          goto LABEL_169;
        }

        sub_232B13F74();
        v74 = *(a1 + 200);
        v75 = *(a1 + 208);
        v76 = *(a1 + 209);
        v77 = sub_232B13F74();
        v79 = *(a2 + 209);
        if (v76)
        {
          if ((*(a2 + 209) & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else
        {
          if (*(a2 + 209))
          {
            goto LABEL_169;
          }

          v80 = *(a2 + 208);
          if (!sub_232C2A4EC(v77, v78, *(a2 + 200)))
          {
            goto LABEL_169;
          }
        }

        sub_232B13F74();
        v81 = *(a1 + 216);
        v82 = *(a1 + 224);
        sub_232B13F74();
        v83 = *(a2 + 224);
        if (v82)
        {
          if (!v83)
          {
            goto LABEL_169;
          }

          v84 = v81 == *(a2 + 216) && v82 == v83;
          if (!v84 && (sub_232C2A4D0() & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else if (v83)
        {
          goto LABEL_169;
        }

        sub_232B13F74();
        v85 = *(a1 + 232);
        v86 = *(a1 + 240);
        v87 = *(a1 + 241);
        v88 = sub_232B13F74();
        v90 = *(a2 + 241);
        if (v87)
        {
          if ((*(a2 + 241) & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else
        {
          if (*(a2 + 241))
          {
            goto LABEL_169;
          }

          v91 = *(a2 + 240);
          if (!sub_232C2A4EC(v88, v89, *(a2 + 232)))
          {
            goto LABEL_169;
          }
        }

        sub_232B13F74();
        v92 = *(a1 + 248);
        v93 = *(a1 + 256);
        sub_232B13F74();
        v94 = *(a2 + 256);
        if (v93)
        {
          if (!v94)
          {
            goto LABEL_169;
          }

          v95 = v92 == *(a2 + 248) && v93 == v94;
          if (!v95 && (sub_232C2A4D0() & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else if (v94)
        {
          goto LABEL_169;
        }

        sub_232B13F74();
        v96 = *(a1 + 264);
        v97 = *(a1 + 272);
        v98 = *(a1 + 273);
        v99 = sub_232B13F74();
        v101 = *(a2 + 273);
        if (v98)
        {
          if ((*(a2 + 273) & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else
        {
          if (*(a2 + 273))
          {
            goto LABEL_169;
          }

          v102 = *(a2 + 272);
          if (!sub_232C2A4EC(v99, v100, *(a2 + 264)))
          {
            goto LABEL_169;
          }
        }

        sub_232B13F74();
        v103 = *(a1 + 280);
        v104 = *(a1 + 288);
        sub_232B13F74();
        v105 = *(a2 + 288);
        if (v104)
        {
          if (!v105)
          {
            goto LABEL_169;
          }

          v106 = v103 == *(a2 + 280) && v104 == v105;
          if (!v106 && (sub_232C2A4D0() & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else if (v105)
        {
          goto LABEL_169;
        }

        sub_232B13F74();
        v107 = *(a1 + 296);
        v108 = *(a1 + 304);
        v109 = *(a1 + 305);
        v110 = sub_232B13F74();
        v112 = *(a2 + 305);
        if (v109)
        {
          if ((*(a2 + 305) & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else
        {
          if (*(a2 + 305))
          {
            goto LABEL_169;
          }

          v113 = *(a2 + 304);
          if (!sub_232C2A4EC(v110, v111, *(a2 + 296)))
          {
            goto LABEL_169;
          }
        }

        sub_232B13F74();
        v114 = *(a1 + 312);
        v115 = *(a1 + 320);
        sub_232B13F74();
        v116 = *(a2 + 320);
        if (v115)
        {
          if (!v116)
          {
            goto LABEL_169;
          }

          v117 = v114 == *(a2 + 312) && v115 == v116;
          if (!v117 && (sub_232C2A4D0() & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else if (v116)
        {
          goto LABEL_169;
        }

        sub_232B13F74();
        v118 = *(a1 + 328);
        v119 = *(a1 + 336);
        v120 = *(a1 + 337);
        v121 = sub_232B13F74();
        v123 = *(a2 + 337);
        if (v120)
        {
          if ((*(a2 + 337) & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else
        {
          if (*(a2 + 337))
          {
            goto LABEL_169;
          }

          v124 = *(a2 + 336);
          if (!sub_232C2A4EC(v121, v122, *(a2 + 328)))
          {
            goto LABEL_169;
          }
        }

        sub_232B13F74();
        v125 = *(a1 + 344);
        v126 = *(a1 + 352);
        sub_232B13F74();
        v127 = *(a2 + 352);
        if (v126)
        {
          if (!v127)
          {
            goto LABEL_169;
          }

          v128 = v125 == *(a2 + 344) && v126 == v127;
          if (!v128 && (sub_232C2A4D0() & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else if (v127)
        {
          goto LABEL_169;
        }

        sub_232B13F74();
        v129 = *(a1 + 360);
        v130 = *(a1 + 368);
        v131 = *(a1 + 369);
        v132 = sub_232B13F74();
        v134 = *(a2 + 369);
        if (v131)
        {
          if ((*(a2 + 369) & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else
        {
          if (*(a2 + 369))
          {
            goto LABEL_169;
          }

          v135 = *(a2 + 368);
          if (!sub_232C2A4EC(v132, v133, *(a2 + 360)))
          {
            goto LABEL_169;
          }
        }

        sub_232B13F74();
        v136 = *(a1 + 376);
        v137 = *(a1 + 384);
        sub_232B13F74();
        v138 = *(a2 + 384);
        if (v137)
        {
          if (!v138)
          {
            goto LABEL_169;
          }

          v139 = v136 == *(a2 + 376) && v137 == v138;
          if (!v139 && (sub_232C2A4D0() & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else if (v138)
        {
          goto LABEL_169;
        }

        sub_232B13F74();
        v140 = *(a1 + 392);
        v141 = *(a1 + 400);
        sub_232B13F74();
        v142 = *(a2 + 400);
        if (v141)
        {
          if (!v142)
          {
            goto LABEL_169;
          }

          v143 = v140 == *(a2 + 392) && v141 == v142;
          if (!v143 && (sub_232C2A4D0() & 1) == 0)
          {
            goto LABEL_169;
          }

LABEL_167:
          sub_232B13F74();
          v144 = *(a1 + 408);
          sub_232B13F74();
          v145 = *(a2 + 408);

          sub_232B41C8C();
          sub_232B347F4();
          v5 = v146;

          return v5 & 1;
        }

        if (!v142)
        {
          goto LABEL_167;
        }
      }
    }

LABEL_169:

    goto LABEL_2;
  }

  if (!v38)
  {
    goto LABEL_46;
  }

LABEL_2:
  v5 = 0;
  return v5 & 1;
}

uint64_t sub_232C29B94(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_232C2A520();
  a1(0);
  sub_232C2A100(a2, a3);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C29C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C2A100(&qword_27DDC7F88, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C29D04(uint64_t a1)
{
  v2 = sub_232C2A100(&qword_27DDC77A8, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C29DCC()
{
  sub_232C2A100(&qword_27DDC77A8, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult);

  return sub_232CE9500();
}

uint64_t sub_232C29E4C()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD50C0);
  sub_232B135C4(v0, qword_27DDD50C0);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF8180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ErrorUnknown";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ErrorUnableToResolveCandidates";
  *(v10 + 1) = 30;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ErrorUnableToPredictCandidates";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C2A100(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232C2A310(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_232B27EEC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_232C2A3AC()
{
  result = qword_27DDC7F90;
  if (!qword_27DDC7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7F90);
  }

  return result;
}

unint64_t sub_232C2A400()
{
  result = qword_27DDC7FA0;
  if (!qword_27DDC7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7FA0);
  }

  return result;
}

unint64_t sub_232C2A454()
{
  result = qword_27DDC7FA8;
  if (!qword_27DDC7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7FA8);
  }

  return result;
}

uint64_t sub_232C2A4D0()
{

  return sub_232CEA750();
}

BOOL sub_232C2A4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_232BAE054(v3, v4 & 1, a3);
}

uint64_t sub_232C2A520()
{

  return sub_232CEA820();
}

uint64_t sub_232C2A550()
{

  return sub_232CE9E40();
}

uint64_t sub_232C2A574(uint64_t result, __int16 a2)
{
  *v2 = result;
  *(v2 + 8) = a2;
  *(v2 + 9) = HIBYTE(a2) & 1;
  return result;
}

uint64_t sub_232C2A5B4()
{

  return sub_232CE9C60();
}

uint64_t sub_232C2A5D4()
{

  return sub_232CE9C90();
}

void FrozenNLEmbeddingVectorRetrieval.init(embeddingAssetURL:embeddingMetadataURL:)(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v213 = a3;
  v214 = a2;
  v221[4] = *MEMORY[0x277D85DE8];
  v216 = sub_232CE9A30();
  v4 = sub_232B48F0C(v216);
  v211 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_232B20714();
  v205 = v8;
  sub_232B20600();
  MEMORY[0x28223BE20](v9);
  sub_232B20628();
  v212 = v10;
  sub_232B20600();
  MEMORY[0x28223BE20](v11);
  sub_232B20628();
  v203 = v12;
  sub_232B20600();
  MEMORY[0x28223BE20](v13);
  sub_232B20628();
  v201 = v14;
  sub_232B20600();
  MEMORY[0x28223BE20](v15);
  sub_232B20628();
  v206 = v16;
  sub_232B20600();
  MEMORY[0x28223BE20](v17);
  sub_232B20628();
  v207 = v18;
  sub_232B20600();
  MEMORY[0x28223BE20](v19);
  v204 = v192 - v20;
  v199 = sub_232CE9DA0();
  v21 = sub_232B48F0C(v199);
  v200 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  sub_232B20704();
  v198 = v26 - v25;
  v27 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v208 = v192 - v29;
  v30 = sub_232CE8C00();
  v31 = sub_232B48F0C(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  sub_232B20714();
  v217 = v36;
  sub_232B20600();
  MEMORY[0x28223BE20](v37);
  sub_232B20628();
  *&v202 = v38;
  sub_232B20600();
  MEMORY[0x28223BE20](v39);
  sub_232B20628();
  v209 = v40;
  sub_232B20600();
  v42 = MEMORY[0x28223BE20](v41);
  v44 = v192 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = v192 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = v192 - v49;
  MEMORY[0x28223BE20](v48);
  v52 = v192 - v51;
  sub_232C2B8F0();
  v215 = v33;
  v54 = *(v33 + 16);
  v53 = v33 + 16;
  v55 = a1;
  v56 = a1;
  v57 = v30;
  (v54)(v52, v56, v30);
  v58 = sub_232C2B934(v52);
  v194 = v47;
  v196 = v54;
  v197 = v44;
  v195 = v50;
  v212 = v58;
  v210 = v55;
  v59 = v214;
  v60 = v208;
  sub_232B35974(v214, v208);
  v61 = v30;
  if (sub_232B12480(v60, 1, v30) == 1)
  {
    sub_232B267AC(v60, &qword_27DDC6AD8, &unk_232CF82F0);
    sub_232B124A8(&qword_27DDC7FB8, &unk_232CFD918);
    v62 = sub_232CE9C60();
    sub_232B267AC(v59, &qword_27DDC6AD8, &unk_232CF82F0);
    (*(v215 + 8))(v210, v30);
LABEL_3:
    v63 = v213;
    *v213 = v212;
    v63[1] = v62;
LABEL_9:
    v83 = *MEMORY[0x277D85DE8];
    return;
  }

  v64 = v195;
  (*(v215 + 32))(v195, v60, v57);
  sub_232B124A8(&qword_27DDC7FB8, &unk_232CFD918);
  v65 = sub_232CE9C60();
  v66 = sub_232CE8C20();
  v193 = v65;
  v220 = 100;
  v84 = v66;
  v86 = v85;
  v87 = objc_opt_self();
  v88 = sub_232CE8C50();
  v221[0] = 0;
  v89 = [v87 propertyListWithData:v88 options:0 format:&v220 error:v221];

  if (!v89)
  {
    v165 = v221[0];

    v166 = sub_232CE8B30();

    swift_willThrow();
    sub_232B41BEC(v84, v86);
    v67 = v205;
    sub_232CE9A20();
    v68 = v166;
    v69 = sub_232CE9A00();
    v70 = sub_232CEA1C0();

    v71 = os_log_type_enabled(v69, v70);
    v72 = v210;
    if (v71)
    {
      v73 = sub_232BC1F80();
      v74 = v61;
      v75 = swift_slowAlloc();
      *v73 = 138412290;
      v76 = v166;
      v77 = _swift_stdlib_bridgeErrorToNSError();
      *(v73 + 4) = v77;
      *v75 = v77;
      sub_232C2C6E0(&dword_232B02000, v78, v79, "Encountered an error reading embedding metadata plist: %@");
      sub_232B267AC(v75, &qword_27DDC6FD0, &unk_232CFA240);
      v61 = v74;
      sub_232BA6A84();
      sub_232BA6A84();
    }

    sub_232B267AC(v59, &qword_27DDC6AD8, &unk_232CF82F0);
    v80 = *(v215 + 8);
    v80(v72, v61);
    sub_232C2C6B8();
    v81(v67, v216);
    v80(v64, v61);
    goto LABEL_8;
  }

  v192[5] = v84;
  v192[6] = v86;
  v90 = v221[0];
  sub_232CEA420();
  swift_unknownObjectRelease();
  sub_232B124A8(&qword_27DDC75A8, &qword_232CFA518);
  if (!swift_dynamicCast())
  {

    sub_232CE9A20();
    v167 = v202;
    v168 = v210;
    (v196)(v202, v210, v57);
    v169 = sub_232CE9A00();
    v170 = sub_232CEA1C0();
    if (os_log_type_enabled(v169, v170))
    {
      sub_232BC1F80();
      v171 = sub_232C2C658();
      v221[0] = v171;
      *v61 = 136315138;
      sub_232CE8B60();
      v173 = v172;
      v174 = *(v215 + 8);
      v174(v167, v61);
      v175 = sub_232C2C6AC();
      v177 = sub_232BAD2D4(v175, v173, v176);

      *(v61 + 4) = v177;
      sub_232C2C700(&dword_232B02000, v169, v170, "Could not read metadata array while parsing %s");
      sub_232B2040C(v171);
      sub_232BA6A84();
      sub_232BA6A84();
      sub_232C2C5E0();

      sub_232B267AC(v214, &qword_27DDC6AD8, &unk_232CF82F0);
      v174(v210, v61);
      sub_232C2C6B8();
      v178(v203, v216);
      v174(v195, v61);
    }

    else
    {
      sub_232C2C5E0();

      sub_232B267AC(v59, &qword_27DDC6AD8, &unk_232CF82F0);
      v179 = *(v215 + 8);
      v179(v168, v61);
      v179(v167, v61);
      sub_232C2C6B8();
      v180(v203, v216);
      v179(v64, v61);
    }

LABEL_8:

    v82 = v213;
    *v213 = 0;
    v82[1] = 0;
    goto LABEL_9;
  }

  v92 = *(v218 + 16);
  v208 = v53;
  if (!v92)
  {

    v94 = v210;
LABEL_54:
    v181 = v201;
    sub_232CE9A20();
    v182 = v193;

    v183 = sub_232CE9A00();
    v184 = sub_232CEA1A0();
    v185 = sub_232C22080(v184);
    v186 = v195;
    if (v185)
    {
      v187 = sub_232BC1F80();
      *v187 = 134217984;
      *(v187 + 4) = v182[2];

      sub_232C2C6E0(&dword_232B02000, v188, v189, "Done constructing embedding metadata dictionary from plist.  Found %ld items");
      sub_232BA6A84();
      sub_232C2C5E0();
    }

    else
    {
      sub_232C2C5E0();
    }

    sub_232B267AC(v214, &qword_27DDC6AD8, &unk_232CF82F0);
    v190 = *(v215 + 8);
    v190(v94, v61);
    sub_232C2C6B8();
    v191(v181, v216);
    v190(v186, v61);
    v62 = v193;
    goto LABEL_3;
  }

  v192[4] = v218;
  v93 = v218 + 32;
  v205 = v215 + 8;
  v203 = v211 + 8;
  v192[3] = v200 + 8;
  *&v91 = 136315138;
  v202 = v91;
  v95 = v209;
  v94 = v210;
  v97 = v206;
  v96 = v207;
  v98 = v197;
  v99 = v196;
  while (1)
  {
    v217 = v92;
    sub_232B204B4(v93, v221);
    sub_232B124A8(&qword_27DDC7668, &unk_232CFA950);
    sub_232C2C684();
    if (swift_dynamicCast())
    {
      break;
    }

    sub_232CE9A20();
    sub_232C2C674();
    v99();
    v117 = sub_232CE9A00();
    v118 = sub_232CEA1C0();
    if (sub_232C22080(v118))
    {
      sub_232BC1F80();
      v119 = sub_232C2C658();
      *v61 = sub_232C2C600(v119).n128_u32[0];
      v120 = sub_232CE8B60();
      v94 = v121;
      sub_232C2C598();
      v122(v209, v61);
      v123 = sub_232C2C6AC();
      sub_232BAD2D4(v123, v94, v124);
      sub_232C2C6C4();
      *(v61 + 4) = v120;
      sub_232C2C700(&dword_232B02000, v117, v118, "Encountered a malformed metadata record while parsing %s.  Skipping");
      sub_232C2C614();
      v95 = v209;
      sub_232BA6A84();
    }

    else
    {

      sub_232C2C598();
      v136(v95, v61);
    }

    sub_232C2C5A8(&v222);
    v137(v97, v216);
    v96 = v207;
LABEL_31:
    v98 = v197;
LABEL_34:
    v93 += 32;
    v92 = v217 - 1;
    if (v217 == 1)
    {

      goto LABEL_54;
    }
  }

  v100 = v218;
  if (!*(v218 + 16) || (v101 = sub_232B1F160(0x695F64726F636572, 0xE900000000000064), (v102 & 1) == 0) || (sub_232B204B4(*(v100 + 56) + 32 * v101, v221), sub_232C2C684(), (swift_dynamicCast() & 1) == 0))
  {

    sub_232CE9A20();
    sub_232C2C674();
    v99();
    v125 = v98;
    v126 = sub_232CE9A00();
    v127 = v61;
    v128 = sub_232CEA1C0();
    if (sub_232C22080(v128))
    {
      v129 = sub_232BC1F80();
      v130 = swift_slowAlloc();
      *v129 = sub_232C2C600(v130).n128_u32[0];
      v131 = sub_232CE8B60();
      v94 = v132;
      sub_232C2C598();
      v133(v125, v127);
      v134 = sub_232C2C6AC();
      sub_232BAD2D4(v134, v94, v135);
      sub_232C2C6C4();
      *(v129 + 4) = v131;
      _os_log_impl(&dword_232B02000, v126, v128, "Encountered a malformed metadata record while parsing %s.  Skipping", v129, 0xCu);
      sub_232C2C614();
      v96 = v207;
      sub_232BA6A84();
    }

    else
    {

      sub_232C2C598();
      v138(v125, v127);
    }

    sub_232C2C5A8(&v222);
    v139(v96, v216);
    v61 = v127;
    v95 = v209;
    v98 = v125;
    v99 = v196;
    goto LABEL_34;
  }

  v103 = v219;
  if (!*(v100 + 16))
  {

    v105 = v204;
    goto LABEL_39;
  }

  v200 = v218;
  v104 = sub_232B1F160(0x645F64726F636572, 0xEB00000000617461);
  v105 = v204;
  if ((v106 & 1) == 0)
  {

LABEL_38:

LABEL_39:
    sub_232CE9A20();
    v140 = v194;
    sub_232C2C674();
    v99();
    v141 = v105;
    v142 = sub_232CE9A00();
    v143 = sub_232CEA1C0();
    if (os_log_type_enabled(v142, v143))
    {
      sub_232BC1F80();
      v144 = sub_232C2C658();
      *v61 = sub_232C2C600(v144).n128_u32[0];
      v145 = sub_232CE8B60();
      v94 = v146;
      sub_232C2C598();
      v147(v140, v61);
      v148 = sub_232C2C6AC();
      sub_232BAD2D4(v148, v94, v149);
      sub_232C2C6C4();
      *(v61 + 4) = v145;
      sub_232C2C700(&dword_232B02000, v142, v143, "Encountered a malformed metadata record while parsing %s.  Skipping");
      sub_232C2C614();
      v95 = v209;
      sub_232BA6A84();

      sub_232C2C5A8(&v222);
      v151 = v204;
    }

    else
    {

      sub_232C2C598();
      v152 = sub_232C2C64C();
      v153(v152);
      sub_232C2C5A8(&v222);
      v151 = v141;
    }

    v150(v151, v216);
    v96 = v207;
    v98 = v197;
    goto LABEL_34;
  }

  sub_232B204B4(*(v100 + 56) + 32 * v104, v221);

  sub_232C2C684();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_38;
  }

  v107 = v198;
  sub_232CE9D90();
  v192[1] = sub_232CE9D60();
  v192[2] = v108;

  sub_232C2C5A8(&v219);
  v109(v107, v199);
  v110 = v193;
  swift_isUniquelyReferenced_nonNull_native();
  v221[0] = v110;
  v111 = sub_232B1F160(v200, v103);
  if (__OFADD__(v110[2], (v112 & 1) == 0))
  {
    __break(1u);
LABEL_59:
    __break(1u);
  }

  v113 = v111;
  v114 = v112;
  sub_232B124A8(&qword_27DDC7FC0, &qword_232CFD928);
  if ((sub_232CEA5C0() & 1) == 0)
  {
    v96 = v207;
    goto LABEL_44;
  }

  v115 = sub_232B1F160(v200, v103);
  v96 = v207;
  if ((v114 & 1) == (v116 & 1))
  {
    v113 = v115;
LABEL_44:
    v95 = v209;
    v154 = v221[0];
    v193 = v221[0];
    if (v114)
    {
      v155 = (*(v221[0] + 7) + 16 * v113);
      v156 = *v155;
      v157 = v155[1];
      sub_232C2C694(v155);
      sub_232BB6018(v158, v159);
    }

    else
    {
      *(v221[0] + (v113 >> 6) + 8) |= 1 << v113;
      v160 = (v154[6] + 16 * v113);
      *v160 = v200;
      v160[1] = v103;
      sub_232C2C694((v154[7] + 16 * v113));
      v162 = *(v161 + 16);
      v163 = __OFADD__(v162, 1);
      v164 = v162 + 1;
      if (v163)
      {
        goto LABEL_59;
      }

      *(v161 + 16) = v164;
    }

    v94 = v210;
    v97 = v206;
    goto LABEL_31;
  }

  sub_232CEA7A0();
  __break(1u);
}

unint64_t sub_232C2B8F0()
{
  result = qword_27DDC7FB0;
  if (!qword_27DDC7FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDC7FB0);
  }

  return result;
}

id sub_232C2B934(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_232CE8B90();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() embeddingWithContentsOfURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_232CE8C00();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_232CE8B30();

    swift_willThrow();
    v9 = sub_232CE8C00();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t FrozenNLEmbeddingVectorRetrieval.fetchNeighborsForVector(vector:distanceLimit:countLimit:)(uint64_t a1)
{
  v2 = *v1;
  v12 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  if (v3)
  {
    v11 = MEMORY[0x277D84F90];
    sub_232B64A58(0, v3, 0);
    v5 = (a1 + 32);
    v6 = *(v11 + 16);
    do
    {
      v7 = *v5;
      v8 = *(v11 + 24);
      if (v6 >= v8 >> 1)
      {
        v9 = sub_232BC1BBC(v8);
        sub_232B64A58(v9, v6 + 1, 1);
      }

      *(v11 + 16) = v6 + 1;
      *(v11 + 8 * v6 + 32) = v7;
      ++v5;
      ++v6;
      --v3;
    }

    while (v3);
  }

  MEMORY[0x28223BE20](a1);
  sub_232CEA120();

  return v12;
}

BOOL sub_232C2BBE4(uint64_t a1, uint64_t a2, double a3, float a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v8 = a3;
  if (v8 <= a4)
  {
    v13 = *(a6 + 16);

    if (v13)
    {
      v14 = sub_232B1F160(a1, a2);
      if (v15)
      {
        v16 = (*(a6 + 56) + 16 * v14);
        v13 = *v16;
        v17 = v16[1];
        sub_232C05E58(*v16, v17);
LABEL_7:
        sub_232BAD0CC();
        v18 = *(*a7 + 16);
        sub_232BAD218(v18);
        v19 = *a7;
        *(v19 + 16) = v18 + 1;
        v20 = v19 + 40 * v18;
        *(v20 + 32) = a1;
        *(v20 + 40) = a2;
        *(v20 + 48) = v13;
        *(v20 + 56) = v17;
        *(v20 + 64) = v8;
        return v8 <= a4;
      }

      v13 = 0;
    }

    v17 = 0xF000000000000000;
    goto LABEL_7;
  }

  return v8 <= a4;
}

uint64_t static FrozenNLEmbeddingVectorRetrieval.writeMetadataPlistForRecords(records:destinationURL:)(uint64_t a1)
{
  v44[21] = *MEMORY[0x277D85DE8];
  v2 = sub_232CE9DA0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_232B20704();
  v4 = *(a1 + 16);
  if (v4)
  {
    v44[0] = MEMORY[0x277D84F90];
    sub_232B64C28(0, v4, 0);
    v5 = v44[0];
    v6 = (a1 + 64);
    do
    {
      v8 = *(v6 - 4);
      v7 = *(v6 - 3);
      v10 = *(v6 - 2);
      v9 = *(v6 - 1);
      v11 = *v6;
      sub_232B124A8(&qword_27DDC77D8, &unk_232CFD930);
      if (v11 >> 60 == 15)
      {
        inited = swift_initStackObject();
        sub_232C2C5B4(inited, &v46);
        *(v13 + 56) = v7;
        swift_bridgeObjectRetain_n();

        v14 = sub_232C2C64C();
        sub_232C05E58(v14, v15);
        v16 = sub_232CE9C60();
      }

      else
      {
        v17 = swift_initStackObject();
        sub_232C2C5B4(v17, &v45);
        v18[7] = v7;
        v18[8] = 0x645F64726F636572;
        v18[9] = 0xEB00000000617461;
        swift_bridgeObjectRetain_n();

        v19 = sub_232C2C64C();
        sub_232C05E58(v19, v20);
        v21 = sub_232C2C64C();
        sub_232C05E58(v21, v22);
        sub_232CE9D90();
        sub_232C2C64C();
        v23 = sub_232CE9D70();
        if (v24)
        {
          v25 = v23;
        }

        else
        {
          v25 = 0;
        }

        v26 = 0xE000000000000000;
        if (v24)
        {
          v26 = v24;
        }

        v17[5].n128_u64[0] = v25;
        v17[5].n128_u64[1] = v26;
        v16 = sub_232CE9C60();
        v27 = sub_232C2C64C();
        sub_232BB6018(v27, v28);
      }

      v29 = sub_232C2C64C();
      sub_232BB6018(v29, v30);
      v44[0] = v5;
      v32 = v5[2];
      v31 = v5[3];
      if (v32 >= v31 >> 1)
      {
        v33 = sub_232BC1BBC(v31);
        sub_232B64C28(v33, v32 + 1, 1);
        v5 = v44[0];
      }

      v6 += 5;
      v5[2] = v32 + 1;
      v5[v32 + 4] = v16;
      --v4;
    }

    while (v4);
  }

  v34 = objc_opt_self();
  sub_232B124A8(&qword_27DDC6B40, &qword_232CF6EC8);
  v35 = sub_232CE9FD0();

  v44[0] = 0;
  v36 = [v34 dataWithPropertyList:v35 format:100 options:0 error:v44];

  v37 = v44[0];
  if (v36)
  {
    v38 = sub_232CE8C80();
    v40 = v39;

    sub_232CE8C90();
    result = sub_232B41BEC(v38, v40);
  }

  else
  {
    v42 = v37;
    sub_232CE8B30();

    result = swift_willThrow();
  }

  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static FrozenNLEmbeddingVectorRetrieval.writeEmbeddingtoolFileForRecords(records:destinationURL:)(uint64_t a1)
{
  v2 = sub_232CE9DA0();
  v3 = sub_232B48F0C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v10 = v9 - v8;
  v11 = *(a1 + 16);
  if (v11)
  {
    v46 = v9 - v8;
    v47 = v5;
    v48 = v2;
    v55 = MEMORY[0x277D84F90];
    sub_232B649F4(0, v11, 0);
    v12 = 0;
    v13 = v55;
    v49 = a1 + 32;
    v50 = v11;
    do
    {
      v54 = v12;
      v14 = (v49 + 40 * v12);
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      v19 = v14[4];
      v20 = *(v17 + 16);
      v52 = *v14;
      v53 = v19;
      if (v20)
      {
        v51 = v13;

        sub_232C05E58(v18, v19);
        v56 = MEMORY[0x277D84F90];

        sub_232B649F4(0, v20, 0);
        v21 = 32;
        do
        {
          v22 = *(v17 + v21);
          sub_232B124A8(&qword_27DDC6910, &unk_232CFA100);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_232CF6460;
          *(v23 + 56) = MEMORY[0x277D83A90];
          *(v23 + 64) = MEMORY[0x277D83B08];
          *(v23 + 32) = v22;
          v24 = sub_232CE9D80();
          v26 = v25;
          v28 = *(v56 + 16);
          v27 = *(v56 + 24);
          if (v28 >= v27 >> 1)
          {
            v30 = sub_232BC1BBC(v27);
            sub_232B649F4(v30, v28 + 1, 1);
          }

          *(v56 + 16) = v28 + 1;
          v29 = v56 + 16 * v28;
          *(v29 + 32) = v24;
          *(v29 + 40) = v26;
          v21 += 4;
          --v20;
        }

        while (v20);

        v13 = v51;
        v31 = v16;
      }

      else
      {

        sub_232C05E58(v18, v19);

        v31 = v16;
      }

      sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
      sub_232B27E88();
      v32 = sub_232CE9CD0();
      v34 = v33;

      sub_232B124A8(&qword_27DDC6910, &unk_232CFA100);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_232CF5E60;
      v36 = MEMORY[0x277D837D0];
      *(v35 + 56) = MEMORY[0x277D837D0];
      v37 = sub_232B27F34();
      *(v35 + 32) = v52;
      *(v35 + 40) = v31;
      *(v35 + 96) = v36;
      *(v35 + 104) = v37;
      *(v35 + 64) = v37;
      *(v35 + 72) = v32;
      *(v35 + 80) = v34;
      v38 = sub_232CE9D80();
      v40 = v39;

      sub_232BB6018(v18, v53);
      v42 = *(v13 + 16);
      v41 = *(v13 + 24);
      if (v42 >= v41 >> 1)
      {
        v44 = sub_232BC1BBC(v41);
        sub_232B649F4(v44, v42 + 1, 1);
      }

      v12 = v54 + 1;
      *(v13 + 16) = v42 + 1;
      v43 = v13 + 16 * v42;
      *(v43 + 32) = v38;
      *(v43 + 40) = v40;
    }

    while (v54 + 1 != v50);
    v5 = v47;
    v2 = v48;
    v10 = v46;
  }

  sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
  sub_232B27E88();
  sub_232CE9CD0();

  sub_232CE9D90();
  sub_232B48080();
  sub_232CEA3E0();
  (*(v5 + 8))(v10, v2);
}

uint64_t sub_232C2C50C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232C2C54C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_232C2C5B4@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a2 - 256);
  a1[1] = result;
  a1[2].n128_u64[0] = 0x695F64726F636572;
  a1[2].n128_u64[1] = 0xE900000000000064;
  a1[3].n128_u64[0] = v2;
  return result;
}

uint64_t sub_232C2C5E0()
{
  v2 = *(v0 - 392);
  v3 = *(v0 - 384);

  return sub_232B41BEC(v2, v3);
}

void sub_232C2C614()
{
  sub_232B2040C(v0);
  v2 = *(v1 - 256);

  JUMPOUT(0x238393870);
}

uint64_t sub_232C2C658()
{

  return swift_slowAlloc();
}

void sub_232C2C694(void *a1@<X8>)
{
  v2 = *(v1 - 416);
  *a1 = *(v1 - 424);
  a1[1] = v2;
}

uint64_t sub_232C2C6C4()
{
  v2 = *(v0 - 224);
}

void sub_232C2C6E0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_232C2C700(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_232C2C718(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_232C2C7B0();
}

uint64_t sub_232C2C758()
{
  v1 = (v0 + OBJC_IVAR____TtC21DocumentUnderstanding14GenerationTask_context);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_232C2C7B0()
{
  sub_232C2E03C();
  v3 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding14GenerationTask_context);
  swift_beginAccess();
  v4 = v3[1];
  *v3 = v2;
  v3[1] = v0;
}

id GenerationTask.__allocating_init(context:)()
{
  sub_232C2E03C();
  v3 = objc_allocWithZone(v1);
  return GenerationTask.init(context:)(v2, v0);
}

id GenerationTask.init(context:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding14GenerationTask_tgSession] = 0;
  v3 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding14GenerationTask_context];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for GenerationTask();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_232C2C920()
{
  sub_232B26C44();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_232C2C9AC;

  return sub_232C2CA98(v1, 48);
}

uint64_t sub_232C2C9AC()
{
  sub_232B26C44();
  v2 = v1;
  sub_232B26C70();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_232B26B3C();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_232C2CA98(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = v2;
  return sub_232B512BC();
}

uint64_t sub_232C2CAAC()
{
  v1 = (v0[6] + OBJC_IVAR____TtC21DocumentUnderstanding14GenerationTask_context);
  swift_beginAccess();
  v2 = *v1;
  v0[7] = v1[1];

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  sub_232C2E048(v3);

  return sub_232C2D560();
}

uint64_t sub_232C2CB78()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;
  *(v8 + 72) = v6;
  *(v8 + 80) = v7;

  v9 = sub_232B5138C();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232C2CC80()
{
  sub_232B26C44();
  v1 = v0[9];
  v2 = v0[10];
  sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_232CF6460;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = v0[1];

  return v4();
}

uint64_t sub_232C2CD08(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return sub_232B512BC();
}

uint64_t sub_232C2CD1C()
{
  sub_232B26C44();
  v1 = swift_task_alloc();
  v0[3].i64[0] = v1;
  v1[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  v0[3].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_232C2CE0C;
  v4 = MEMORY[0x277D837D0];

  return MEMORY[0x2822007B8](&v0[1], 0, 0, 0xD000000000000015, 0x8000000232D09B80, sub_232C2DF90, v1, v4);
}

uint64_t sub_232C2CE0C()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;

  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_232C2CF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232B124A8(&qword_27DDC7FD8, &unk_232CFDA10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = aBlock - v10;
  v12 = *(a2 + OBJC_IVAR____TtC21DocumentUnderstanding14GenerationTask_tgSession);
  if (v12)
  {
    (*(v7 + 16))(v11, a1, v6, v9);
    v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v14 = swift_allocObject();
    (*(v7 + 32))(v14 + v13, v11, v6);
    aBlock[4] = sub_232C2DF98;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_232C2D4BC;
    aBlock[3] = &unk_284813248;
    v15 = _Block_copy(aBlock);
    v16 = v12;

    [v16 executeOperation:a3 callback:v15];
    _Block_release(v15);
  }

  else
  {
    __break(1u);
  }
}

void sub_232C2D100(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_232CE9A30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v40 - v12;
  if (a2)
  {
    sub_232CE9A20();
    v14 = a2;
    v15 = sub_232CE9A00();
    v16 = sub_232CEA1C0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = a2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_232B02000, v15, v16, "Error while calling execute in TextGenerationInference: %@", v17, 0xCu);
      sub_232BDB890(v18);
      MEMORY[0x238393870](v18, -1, -1);
      MEMORY[0x238393870](v17, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
LABEL_5:
    v41 = 0;
    v42 = 0xE000000000000000;
LABEL_17:
    sub_232B124A8(&qword_27DDC7FD8, &unk_232CFDA10);
    sub_232CEA060();
    return;
  }

  if (!a1)
  {
    sub_232CE9A20();
    v37 = sub_232CE9A00();
    v38 = sub_232CEA1C0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_232B02000, v37, v38, "Empty response object returned from TextGenerationInference", v39, 2u);
      MEMORY[0x238393870](v39, -1, -1);
    }

    (*(v7 + 8))(v13, v6);
    goto LABEL_5;
  }

  v21 = sub_232B26B10(a1);
  v22 = MEMORY[0x277D84F90];
  if (!v21)
  {
LABEL_16:
    v41 = v22;
    sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
    sub_232B27E88();
    v34 = sub_232CE9CD0();
    v36 = v35;

    v41 = v34;
    v42 = v36;
    goto LABEL_17;
  }

  v23 = v21;
  v40[1] = a3;
  v41 = MEMORY[0x277D84F90];
  sub_232B649F4(0, v21 & ~(v21 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    v22 = v41;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x2383922C0](v24, a1);
      }

      else
      {
        v25 = *(a1 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = [v25 text];
      v28 = sub_232CE9D50();
      v30 = v29;

      v41 = v22;
      v32 = *(v22 + 16);
      v31 = *(v22 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_232B649F4(v31 > 1, v32 + 1, 1);
        v22 = v41;
      }

      ++v24;
      *(v22 + 16) = v32 + 1;
      v33 = v22 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
    }

    while (v23 != v24);
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_232C2D4BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_232BA4DEC(0, &qword_27DDC7FE0, 0x277D6F2E0);
    v4 = sub_232CE9FE0();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_232C2D560()
{
  sub_232B26C44();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_232CE89D0();
  v1[7] = v4;
  v5 = *(v4 - 8);
  v1[8] = v5;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v7 = sub_232CE9A30();
  v1[10] = v7;
  v8 = *(v7 - 8);
  v1[11] = v8;
  v9 = *(v8 + 64) + 15;
  v1[12] = swift_task_alloc();
  v10 = sub_232B5138C();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_232C2D674()
{
  v1 = v0[12];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  sub_232BA4DEC(0, &qword_27DDC7FE8, 0x277D6F2E8);

  v5 = sub_232C2DAF8();
  v0[13] = v5;
  v6 = [objc_allocWithZone(MEMORY[0x277D6F2C8]) initWithPrompt_];
  v0[14] = v6;
  [v6 setProduceOutputStream_];
  v7 = [objc_allocWithZone(MEMORY[0x277D6F2F0]) init];
  v8 = *(v3 + OBJC_IVAR____TtC21DocumentUnderstanding14GenerationTask_tgSession);
  *(v3 + OBJC_IVAR____TtC21DocumentUnderstanding14GenerationTask_tgSession) = v7;

  v9 = [objc_allocWithZone(MEMORY[0x277D6F2D0]) init];
  v0[15] = v9;
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  [v9 setMaxWordCount_];

  [v6 setOutputConstraint_];
  sub_232CE9A20();
  v11 = sub_232CE9A00();
  v12 = sub_232CEA1B0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_232B02000, v11, v12, "TextGeneration operation created", v13, 2u);
    MEMORY[0x238393870](v13, -1, -1);
  }

  v15 = v0[11];
  v14 = v0[12];
  v16 = v0[10];

  (*(v15 + 8))(v14, v16);
  v17 = swift_task_alloc();
  v0[16] = v17;
  *v17 = v0;
  v18 = sub_232C2E048(v17);

  return sub_232C2CD08(v18);
}

uint64_t sub_232C2D8B4()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  v3 = *(v1 + 128);
  v10 = *v0;
  *(v2 + 136) = v4;
  *(v2 + 144) = v5;

  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232C2D9A4()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v0[2] = v1;
    v5 = v0[14];
    v4 = v0[15];
    v6 = v0[13];
    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[7];
    v0[3] = v2;
    sub_232CE89B0();
    sub_232B48080();
    v10 = sub_232CEA3A0();
    v12 = v11;

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v14 = v0[14];
    v13 = v0[15];
    v15 = v0[13];
    v16 = v0[18];

    v12 = 0x8000000232D09BC0;
    v10 = 0xD00000000000001ALL;
  }

  v17 = v0[12];
  v18 = v0[9];

  v19 = v0[1];

  return v19(v10, v12);
}

id sub_232C2DAF8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_232CE9D20();

  v2 = [v0 initWithInstructionText_];

  return v2;
}

id GenerationTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GenerationTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerationTask();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of GenerationTask.perform(model:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x98);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_232C2E038;

  return v8(a1);
}

uint64_t dispatch thunk of GenerationTask.perform(model:numTokens:)()
{
  sub_232C2E03C();
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xA0);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_232C2C9AC;

  return v8(v2, v0);
}

void sub_232C2DF98()
{
  sub_232C2E03C();
  v3 = *(sub_232B124A8(&qword_27DDC7FD8, &unk_232CFDA10) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_232C2D100(v2, v0, v4);
}

uint64_t sub_232C2E020(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_232C2E048(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 48);
  return v2;
}

id DUDocumentGlobals.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_232C2EA20(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_232C2EAB8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_232C2EB20(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_232CE8C50();
  v6 = [v4 initWithData_];

  sub_232B41BEC(a1, a2);
  return v6;
}

unint64_t sub_232C2ED90()
{
  result = qword_27DDC7FF0;
  if (!qword_27DDC7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7FF0);
  }

  return result;
}

void sub_232C2EDE4()
{
  sub_232BA66A0();
  v168 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v6);
  v8 = *(v7 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v9);
  sub_232B2D108();
  v167 = v10;
  sub_232B554F0();
  v11 = sub_232CE9DA0();
  v12 = sub_232B2D120(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v166 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v16);
  v18 = *(v17 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v19);
  sub_232B2D108();
  v172 = v20;
  sub_232B554F0();
  v21 = sub_232CE9A30();
  v22 = sub_232B48F0C(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  sub_232B3516C();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  sub_232C31C18();
  v31 = sub_232CE9A00();
  v32 = sub_232CEA1A0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = sub_232BA73DC();
    sub_232C31D84(v33);
    _os_log_impl(&dword_232B02000, v31, v32, "(HarvestingDocumentNormalization) Normalizing mail content", v3, 2u);
    sub_232BA6A84();
  }

  v34 = *(v24 + 8);
  v34(v0, v21);
  v35 = objc_allocWithZone(MEMORY[0x277CF19B8]);
  sub_232B41B94(v5, v3);
  v36 = sub_232C31950(v5, v3);
  if (!v36)
  {
    sub_232CE9A20();
    v152 = sub_232CE9A00();
    v153 = sub_232CEA1C0();
    if (sub_232BC1E54(v153))
    {
      v154 = sub_232BA73DC();
      sub_232C31D84(v154);
      sub_232C31DC4(&dword_232B02000, v155, v156, "HarvestingDocumentNormalization: Failed to initialize mail content from serialized protobuf");
      sub_232BA6A84();
    }

    v34(v29, v21);
    sub_232C2ED90();
    sub_232B4EC24();
    *v157 = 0xD00000000000005BLL;
    v157[1] = 0x8000000232D09E10;
    swift_willThrow();
LABEL_25:
    sub_232C31D50();
    sub_232BA6688();
    return;
  }

  v37 = v36;
  v38 = sub_232C31B34(v36, &selRef_domainId);
  v171 = v38;
  v40 = v39;
  v41 = [v37 uniqueId];
  v42 = sub_232CE9D50();
  v170 = v42;
  v44 = v43;

  sub_232C31CB0();
  sub_232CEA4F0();
  MEMORY[0x238391C30](0x3A6C69616D65, 0xE600000000000000);
  MEMORY[0x238391C30](0xD000000000000014, 0x8000000232D09E70);
  sub_232C31CC0();
  v174 = v38;
  v175 = v40;
  sub_232B124A8(&qword_27DDC77E8, &qword_232CFAA68);
  sub_232C31E1C();
  sub_232C31CC0();
  MEMORY[0x238391C30](v42, v44);
  v45 = objc_allocWithZone(type metadata accessor for DUDocumentIdentifier());
  v46 = sub_232C31C48(0xD000000000000028);
  v47 = &v46[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightBundleID];
  sub_232C31BEC();
  v48 = *(v47 + 1);
  *v47 = 0xD000000000000014;
  *(v47 + 1) = 0x8000000232D09E70;
  v165 = 0x8000000232D09E70;

  v49 = &v46[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightDomainIdentifier];
  sub_232C31BEC();
  v50 = *(v49 + 1);
  *v49 = v171;
  *(v49 + 1) = v40;
  v164 = v40;

  v162 = v46;
  sub_232C31BEC();
  sub_232C31CE4();

  v51 = [objc_allocWithZone(type metadata accessor for DURawDocument()) init];
  v52 = [v37 messageIdentifier];
  sub_232CE9D50();
  sub_232C31D78();

  v53 = &v51[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_identifier];
  sub_232C31BEC();
  v54 = *(v53 + 1);
  *v53 = "com.apple.mobilemail";
  *(v53 + 1) = 0x8000000232D09E70;

  v55 = [v37 subject];
  sub_232CE9D50();
  sub_232C31D78();

  v56 = &v51[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline];
  sub_232C31BEC();
  v57 = *(v56 + 1);
  *v56 = "com.apple.mobilemail";
  *(v56 + 1) = 0x8000000232D09E70;

  sub_232C31B34(v37, &selRef_textContent);
  sub_232C31CD8();
  v58 = &v51[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
  sub_232B13F5C();
  v59 = *(v58 + 1);
  *v58 = v56;
  *(v58 + 1) = "com.apple.mobilemail";

  sub_232BC8B00([v37 fromHandle], &selRef_name);
  sub_232C31CD8();
  v60 = &v51[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_creator];
  sub_232B13F5C();
  v61 = *(v60 + 1);
  *v60 = v56;
  *(v60 + 1) = "com.apple.mobilemail";

  [v37 absoluteTimestamp];
  v62 = v172;
  sub_232CE8CA0();
  v63 = sub_232CE8D10();
  sub_232B351FC();
  sub_232B12504(v64, v65, v66, v63);
  v67 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated;
  swift_beginAccess();
  v161 = v51;
  sub_232C31A5C(v62, &v51[v67], &qword_27DDC6A80, &qword_232CF6D30);
  swift_endAccess();
  v68 = [objc_allocWithZone(type metadata accessor for DUDocumentEmailData()) init];
  v69 = [v37 subject];
  v70 = sub_232CE9D50();
  v72 = v71;

  v73 = &v68[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_subject];
  sub_232B13F5C();
  v74 = v73[1];
  *v73 = v70;
  v73[1] = v72;

  v75 = [v37 fromHandle];
  v76 = [v75 handle];

  v77 = sub_232CE9D50();
  v79 = v78;

  v80 = &v68[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail];
  sub_232B13F5C();
  v81 = v80[1];
  *v80 = v77;
  v80[1] = v79;

  [v37 absoluteTimestamp];
  sub_232CE8CA0();
  sub_232B351FC();
  v160 = v63;
  sub_232B12504(v82, v83, v84, v63);
  v85 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
  swift_beginAccess();
  v159 = v68;
  sub_232C31A5C(v62, &v68[v85], &qword_27DDC6A80, &qword_232CF6D30);
  swift_endAccess();
  v169 = v37;
  v86 = [v37 headers];
  sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
  v87 = sub_232CE9C40();

  sub_232B124A8(&qword_27DDC77D0, &unk_232CFAA50);
  v88 = sub_232CEA630();
  v89 = v88;
  v90 = 0;
  v92 = v87 + 64;
  v91 = *(v87 + 64);
  v176 = v87;
  v93 = 1 << *(v87 + 32);
  v94 = -1;
  if (v93 < 64)
  {
    v94 = ~(-1 << v93);
  }

  v95 = v94 & v91;
  v96 = (v93 + 63) >> 6;
  v173 = v88 + 64;
  if ((v94 & v91) == 0)
  {
LABEL_8:
    v98 = v90;
    while (1)
    {
      v90 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v90 >= v96)
      {
        break;
      }

      v99 = *(v92 + 8 * v90);
      ++v98;
      if (v99)
      {
        v97 = __clz(__rbit64(v99));
        v95 = (v99 - 1) & v99;
        goto LABEL_13;
      }
    }

    v113 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers;
    v114 = v159;
    sub_232B13F5C();
    v115 = *&v114[v113];
    *&v114[v113] = v89;

    v116 = [objc_allocWithZone(type metadata accessor for DUDocumentHTMLData()) init];
    v117 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
    sub_232B13F5C();
    v118 = *&v116[v117];
    *&v116[v117] = v114;
    v177 = v114;

    v119 = sub_232C319F8(v169);
    if (v120 >> 60 != 15)
    {
      v121 = v119;
      v122 = v120;
      sub_232CE9D90();
      sub_232CE9D70();
      sub_232C31D78();
      sub_232BB6018(v121, v122);
      v123 = &v116[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString];
      sub_232B13F5C();
      v124 = *(v123 + 1);
      *v123 = v118;
      *(v123 + 1) = v114;
    }

    v125 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
    v126 = v161;
    sub_232B13F5C();
    v127 = *&v126[v125];
    *&v126[v125] = v116;
    v128 = v116;

    v129 = objc_allocWithZone(type metadata accessor for DUDocument());
    v130 = v126;
    v131 = DUDocument.init(rawDocument:maxLength:)(v130, 5120);
    sub_232CE8C00();
    v132 = v167;
    sub_232B55484();
    sub_232B12504(v133, v134, v135, v136);
    v137 = v172;
    sub_232B55484();
    sub_232B12504(v138, v139, v140, v160);
    v141 = objc_allocWithZone(type metadata accessor for DUDocumentUpdate());
    v142 = v162;
    v143 = v131;
    sub_232C31C38();
    DUDocumentUpdate.init(documentID:documentBody:document:associatedFileURL:documentType:updateTimestamp:documentAttributes:)(v144, v145, v146, v147, v132, 1818845549, 0xE400000000000000, v137, 0);
    v148 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
    v149 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    v150 = sub_232C318A4(v170, v163, v171, v164, v148);
    v151 = sub_232CE9D20();
    [v150 setBundleID_];

    goto LABEL_25;
  }

  while (1)
  {
    v97 = __clz(__rbit64(v95));
    v95 &= v95 - 1;
LABEL_13:
    v100 = v97 | (v90 << 6);
    v101 = (*(v176 + 48) + 16 * v100);
    v103 = *v101;
    v102 = v101[1];
    v104 = *(*(v176 + 56) + 8 * v100);
    if (v104[2])
    {
      v106 = v104[4];
      v105 = v104[5];
    }

    else
    {
      v106 = 0;
      v107 = 0xE000000000000000;
    }

    *(v173 + ((v100 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v100;
    v108 = (v89[6] + 16 * v100);
    *v108 = v103;
    v108[1] = v102;
    v109 = (v89[7] + 16 * v100);
    *v109 = v106;
    v109[1] = v107;
    v110 = v89[2];
    v111 = __OFADD__(v110, 1);
    v112 = v110 + 1;
    if (v111)
    {
      break;
    }

    v89[2] = v112;

    if (!v95)
    {
      goto LABEL_8;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_232C2F964()
{
  sub_232BA66A0();
  v169 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v6);
  v8 = *(v7 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v9);
  sub_232B2D108();
  v174 = v10;
  v11 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v12 = sub_232B2D120(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_232B3516C();
  v168 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v180 = &v160 - v18;
  sub_232B554F0();
  v19 = sub_232CE9A30();
  v20 = sub_232B48F0C(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_232B3516C();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  sub_232C31C18();
  v29 = sub_232CE9A00();
  v30 = sub_232CEA1A0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = sub_232BA73DC();
    v175 = v22;
    sub_232C31D84(v31);
    _os_log_impl(&dword_232B02000, v29, v30, "(HarvestingDocumentNormalization) Normalizing message content", v3, 2u);
    v22 = v175;
    sub_232BA6A84();
  }

  v32 = *(v22 + 8);
  v32(v0, v19);
  v33 = objc_allocWithZone(MEMORY[0x277CF19C8]);
  sub_232B41B94(v5, v3);
  v34 = sub_232C31950(v5, v3);
  if (v34)
  {
    v35 = v34;
    v36 = sub_232C31B34(v34, &selRef_domainId);
    v172 = v36;
    v38 = v37;
    v39 = [v35 uniqueId];
    v40 = sub_232CE9D50();
    v171 = v40;
    v42 = v41;

    sub_232C31CB0();
    sub_232CEA4F0();
    MEMORY[0x238391C30](0x3A6567617373656DLL, 0xE800000000000000);
    MEMORY[0x238391C30](0xD000000000000013, 0x8000000232D09F20);
    sub_232C31CC0();
    v176 = v36;
    v177 = v38;
    sub_232B124A8(&qword_27DDC77E8, &qword_232CFAA68);
    sub_232C31E1C();
    sub_232C31CC0();
    MEMORY[0x238391C30](v40, v42);
    v43 = v178;
    v44 = v179;
    v45 = objc_allocWithZone(type metadata accessor for DUDocumentIdentifier());
    v46 = DUDocumentIdentifier.init(documentNamespace:documentID:)(0xD000000000000028, 0x8000000232D09E90, v43, v44);
    v47 = &v46[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightBundleID];
    v48 = 1;
    sub_232C31BEC();
    v49 = *(v47 + 1);
    *v47 = 0xD000000000000013;
    *(v47 + 1) = 0x8000000232D09F20;
    v166 = 0x8000000232D09F20;

    sub_232C31BEC();
    sub_232C31CE4();

    v163 = v46;
    v50 = &v46[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightUniqueIdentifier];
    sub_232C31BEC();
    v51 = *(v50 + 1);
    v52 = v171;
    *v50 = v171;
    *(v50 + 1) = v42;
    swift_bridgeObjectRetain_n();

    v53 = [objc_allocWithZone(type metadata accessor for DURawDocument()) init];
    v54 = &v53[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_identifier];
    sub_232C31BEC();
    v55 = v54[1];
    *v54 = v52;
    v54[1] = v42;
    v164 = v42;
    v56 = v53;

    v57 = [v35 content];
    sub_232CE9D50();
    sub_232C31D78();

    v58 = &v53[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
    sub_232C31BEC();
    v59 = *(v58 + 1);
    *v58 = v53;
    *(v58 + 1) = v52;

    sub_232BC8B00([v35 fromHandle], &selRef_name);
    sub_232C31CD8();
    v60 = &v53[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_creator];
    sub_232B13F5C();
    v61 = *(v60 + 1);
    *v60 = v58;
    *(v60 + 1) = v53;

    v62 = [v35 URL];
    if (v62)
    {
      v63 = v62;
      v64 = v180;
      sub_232CE8BB0();

      v48 = 0;
    }

    else
    {
      v64 = v180;
    }

    v162 = sub_232CE8C00();
    sub_232B12504(v64, v48, 1, v162);
    v71 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url;
    sub_232C31C94();
    sub_232C31A5C(v64, &v56[v71], &qword_27DDC6AD8, &unk_232CF82F0);
    swift_endAccess();
    [v35 absoluteTimestamp];
    v72 = v174;
    sub_232CE8CA0();
    sub_232CE8D10();
    sub_232B351FC();
    v161 = v73;
    sub_232B12504(v74, v75, v76, v73);
    v77 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated;
    sub_232C31C94();
    sub_232C31A5C(v72, &v56[v77], &qword_27DDC6A80, &qword_232CF6D30);
    swift_endAccess();
    v78 = [objc_allocWithZone(type metadata accessor for DUDocumentMessageData()) init];
    v79 = [v35 fromHandle];
    v80 = [v79 handle];

    sub_232CE9D50();
    sub_232C31CD8();

    v81 = &v78[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_creatorHandle];
    sub_232B13F5C();
    v82 = *(v81 + 1);
    *v81 = v79;
    *(v81 + 1) = v64;

    v83 = [v35 conversationId];
    v84 = sub_232CE9D50();
    v86 = v85;

    v170 = v78;
    v87 = &v78[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_conversationIdentifier];
    sub_232C31BEC();
    v88 = v87[1];
    *v87 = v84;
    v87[1] = v86;

    v89 = sub_232C31AC4(v35);
    v167 = v35;
    if (v89)
    {
      v90 = v89;
      v160 = v56;
      v91 = sub_232B26B10(v89);
      v92 = 0;
      v181 = v90 & 0xC000000000000001;
      v175 = v90 & 0xFFFFFFFFFFFFFF8;
      v173 = MEMORY[0x277D84F90];
      while (v91 != v92)
      {
        if (v181)
        {
          v93 = MEMORY[0x2383922C0](v92, v90);
        }

        else
        {
          if (v92 >= *(v175 + 16))
          {
            goto LABEL_47;
          }

          v93 = *(v90 + 8 * v92 + 32);
        }

        v94 = v93;
        v95 = v92 + 1;
        if (__OFADD__(v92, 1))
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          return;
        }

        v96 = sub_232C31B34(v93, &selRef_name);
        v98 = v97;

        ++v92;
        if (v98)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v102 = *(v173 + 16);
            sub_232B35ECC();
            v173 = v103;
          }

          v99 = *(v173 + 16);
          if (v99 >= *(v173 + 24) >> 1)
          {
            sub_232B35ECC();
            v173 = v104;
          }

          v100 = v173;
          *(v173 + 16) = v99 + 1;
          v101 = v100 + 16 * v99;
          *(v101 + 32) = v96;
          *(v101 + 40) = v98;
          v92 = v95;
        }
      }

      v105 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientNames;
      v106 = v170;
      sub_232B13F5C();
      v107 = *&v106[v105];
      *&v106[v105] = v173;

      v108 = 0;
      v109 = MEMORY[0x277D84F90];
      while (v91 != v108)
      {
        if (v181)
        {
          v110 = MEMORY[0x2383922C0](v108, v90);
        }

        else
        {
          if (v108 >= *(v175 + 16))
          {
            goto LABEL_49;
          }

          v110 = *(v90 + 8 * v108 + 32);
        }

        v111 = v110;
        if (__OFADD__(v108, 1))
        {
          goto LABEL_48;
        }

        v112 = [v110 handle];
        sub_232CE9D50();
        sub_232C31CD8();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = *(v109 + 16);
          sub_232B35ECC();
          v109 = v116;
        }

        v113 = *(v109 + 16);
        if (v113 >= *(v109 + 24) >> 1)
        {
          sub_232B35ECC();
          v109 = v117;
        }

        *(v109 + 16) = v113 + 1;
        v114 = v109 + 16 * v113;
        *(v114 + 32) = v105;
        *(v114 + 40) = v106;
        ++v108;
      }

      v118 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientHandles;
      v119 = v170;
      sub_232B13F5C();
      v120 = *&v119[v118];
      *&v119[v118] = v109;

      v35 = v167;
      v56 = v160;
    }

    else
    {
      v119 = v170;
    }

    v121 = [v35 attachment];
    v122 = v121;
    if (v121)
    {
      v123 = [v121 filename];

      v122 = sub_232CE9D50();
      v125 = v124;
    }

    else
    {
      v125 = 0;
    }

    v126 = &v119[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFileName];
    sub_232B13F5C();
    v127 = *(v126 + 1);
    *v126 = v122;
    *(v126 + 1) = v125;

    v128 = [v35 attachment];
    if (v128)
    {
      v129 = sub_232BC8B00(v128, &selRef_path);
      v131 = v130;
    }

    else
    {
      v129 = 0;
      v131 = 0;
    }

    v132 = &v119[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFilePath];
    sub_232B13F5C();
    v133 = v132[1];
    *v132 = v129;
    v132[1] = v131;

    v134 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
    sub_232B13F5C();
    v135 = *&v56[v134];
    *&v56[v134] = v119;
    v136 = v119;

    v137 = objc_allocWithZone(type metadata accessor for DUDocument());
    v138 = v56;
    v139 = DUDocument.init(rawDocument:maxLength:)(v138, 5120);
    v140 = v168;
    sub_232B55484();
    sub_232B12504(v141, v142, v143, v162);
    v144 = v174;
    sub_232B55484();
    sub_232B12504(v145, v146, v147, v161);
    v148 = objc_allocWithZone(type metadata accessor for DUDocumentUpdate());
    v149 = v163;
    v150 = v139;
    sub_232C31C38();
    DUDocumentUpdate.init(documentID:documentBody:document:associatedFileURL:documentType:updateTimestamp:documentAttributes:)(v151, v152, v153, v154, v140, v155, 0xE700000000000000, v144, 0);
    v156 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
    v157 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    v158 = sub_232C318A4(v171, v164, v172, v165, v156);
    v159 = sub_232CE9D20();
    [v158 setBundleID_];
  }

  else
  {
    sub_232CE9A20();
    v65 = sub_232CE9A00();
    v66 = sub_232CEA1C0();
    if (sub_232BC1E54(v66))
    {
      v67 = sub_232BA73DC();
      sub_232C31D84(v67);
      sub_232C31DC4(&dword_232B02000, v68, v69, "HarvestingDocumentNormalization: Failed to initialize message content from serialized protobuf");
      sub_232BA6A84();
    }

    v32(v27, v19);
    sub_232C2ED90();
    sub_232B4EC24();
    *v70 = 0xD00000000000005ELL;
    v70[1] = 0x8000000232D09EC0;
    swift_willThrow();
  }

  sub_232C31D50();
  sub_232BA6688();
}

void sub_232C3057C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_232BA66A0();
  a19 = v21;
  a20 = v22;
  sub_232C31D90();
  v23 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v23);
  v25 = *(v24 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v26);
  sub_232B2D108();
  v116 = v27;
  v28 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v28);
  v30 = *(v29 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v31);
  sub_232B2D108();
  v115 = v32;
  sub_232B554F0();
  v33 = sub_232CE9A30();
  v34 = sub_232B48F0C(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  sub_232B3516C();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  sub_232C31C18();
  v43 = sub_232CE9A00();
  v44 = sub_232CEA1A0();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = sub_232BA73DC();
    *v45 = 0;
    _os_log_impl(&dword_232B02000, v43, v44, "(HarvestingDocumentNormalization) Normalizing note content", v45, 2u);
    sub_232BA6A84();
  }

  v46 = *(v36 + 8);
  v46(v20, v33);
  v47 = objc_allocWithZone(MEMORY[0x277CF1A00]);
  v48 = sub_232BA5ED4();
  sub_232B41B94(v48, v49);
  v50 = sub_232BA5ED4();
  v52 = sub_232C31950(v50, v51);
  if (v52)
  {
    v53 = v52;
    v54 = sub_232C31B34(v52, &selRef_domainId);
    v117 = v55;
    v56 = [v53 uniqueId];
    v57 = sub_232CE9D50();
    v59 = v58;

    MEMORY[0x238391C30](0x3A65746F6ELL, 0xE500000000000000);
    sub_232C31D08();
    sub_232C31CC0();
    sub_232B124A8(&qword_27DDC77E8, &qword_232CFAA68);
    sub_232C31E1C();
    sub_232C31CC0();
    MEMORY[0x238391C30](v57, v59);
    v60 = objc_allocWithZone(type metadata accessor for DUDocumentIdentifier());
    v61 = sub_232C31C48(0xD000000000000028);
    v62 = &v61[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightBundleID];
    v63 = v61;
    sub_232C31BEC();
    v64 = *(v62 + 1);
    *v62 = 0xD000000000000015;
    *(v62 + 1) = v46;

    v65 = &v63[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightDomainIdentifier];
    v114 = v63;
    sub_232C31BEC();
    v66 = v65[1];
    *v65 = v54;
    v65[1] = v117;

    v67 = &v63[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightUniqueIdentifier];
    sub_232C31BEC();
    v68 = v67[1];
    *v67 = v57;
    v67[1] = v59;
    swift_bridgeObjectRetain_n();

    v69 = [objc_allocWithZone(type metadata accessor for DURawDocument()) init];
    v70 = &v69[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_identifier];
    sub_232B13F5C();
    v71 = v70[1];
    *v70 = v57;
    v70[1] = v59;

    v72 = sub_232C31B34(v53, &selRef_title);
    v74 = v73;
    v75 = &v69[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline];
    sub_232B13F5C();
    v76 = v75[1];
    *v75 = v72;
    v75[1] = v74;

    v77 = [v53 content];
    v78 = sub_232CE9D50();
    v80 = v79;

    v81 = &v69[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
    sub_232B13F5C();
    v82 = v81[1];
    *v81 = v78;
    v81[1] = v80;

    [v53 absoluteTimestamp];
    sub_232CE8CA0();
    v83 = sub_232CE8D10();
    sub_232B351FC();
    sub_232B12504(v84, v85, v86, v83);
    v87 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated;
    sub_232C31C94();
    sub_232C31A5C(v115, &v69[v87], &qword_27DDC6A80, &qword_232CF6D30);
    swift_endAccess();
    v88 = objc_allocWithZone(type metadata accessor for DUDocument());
    v89 = v69;
    v90 = DUDocument.init(rawDocument:maxLength:)(v89, 5120);
    sub_232CE8C00();
    sub_232B55484();
    sub_232B12504(v91, v92, v93, v94);
    sub_232B55484();
    sub_232B12504(v95, v96, v97, v83);
    v98 = objc_allocWithZone(type metadata accessor for DUDocumentUpdate());
    v99 = v114;
    v100 = v90;
    sub_232C31C38();
    DUDocumentUpdate.init(documentID:documentBody:document:associatedFileURL:documentType:updateTimestamp:documentAttributes:)(v101, v102, v103, v104, v116, v105, 0xE500000000000000, v115, 0);
    [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
    v106 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    v107 = sub_232C31C68(&a12);
    v108 = sub_232CE9D20();
    [v107 setBundleID_];
  }

  else
  {
    sub_232CE9A20();
    v109 = sub_232CE9A00();
    v110 = sub_232CEA1C0();
    if (sub_232BC1E54(v110))
    {
      *sub_232BA73DC() = 0;
      sub_232C31DA4(&dword_232B02000, v111, v112, "HarvestingDocumentNormalization: Failed to initialize note content from serialized protobuf");
      sub_232BA6A84();
    }

    v46(v41, v33);
    sub_232C31E04();
    sub_232B4EC24();
    *v113 = 0xD00000000000005BLL;
    v113[1] = v33;
    swift_willThrow();
  }

  sub_232C31D64();
  sub_232BA6688();
}

void sub_232C30C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_232BA66A0();
  a19 = v21;
  a20 = v22;
  sub_232C31D90();
  v23 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v23);
  v25 = *(v24 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v26);
  sub_232B2D108();
  v115 = v27;
  v28 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v28);
  v30 = *(v29 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v31);
  sub_232B2D108();
  v114 = v32;
  sub_232B554F0();
  v33 = sub_232CE9A30();
  v34 = sub_232B48F0C(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  sub_232B3516C();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  sub_232C31C18();
  v43 = sub_232CE9A00();
  v44 = sub_232CEA1A0();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = sub_232BA73DC();
    *v45 = 0;
    _os_log_impl(&dword_232B02000, v43, v44, "(HarvestingDocumentNormalization) Normalizing reminder content", v45, 2u);
    sub_232BA6A84();
  }

  v46 = *(v36 + 8);
  v46(v20, v33);
  v47 = objc_allocWithZone(MEMORY[0x277CF1A70]);
  v48 = sub_232BA5ED4();
  sub_232B41B94(v48, v49);
  v50 = sub_232BA5ED4();
  v52 = sub_232C31950(v50, v51);
  if (v52)
  {
    v53 = v52;
    v54 = sub_232C31B34(v52, &selRef_domainId);
    v116 = v55;
    v56 = [v53 uniqueId];
    v57 = sub_232CE9D50();
    v59 = v58;

    sub_232C31CB0();
    sub_232CEA4F0();
    MEMORY[0x238391C30](0x7265646E696D6572, 0xE90000000000003ALL);
    sub_232C31D08();
    sub_232C31CC0();
    sub_232B124A8(&qword_27DDC77E8, &qword_232CFAA68);
    sub_232C31E1C();
    sub_232C31CC0();
    MEMORY[0x238391C30](v57, v59);
    v60 = objc_allocWithZone(type metadata accessor for DUDocumentIdentifier());
    v61 = sub_232C31C48(0xD000000000000028);
    v62 = &v61[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightBundleID];
    v63 = v61;
    sub_232C31BEC();
    v64 = *(v62 + 1);
    *v62 = 0xD000000000000013;
    *(v62 + 1) = v46;

    v65 = &v63[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightDomainIdentifier];
    v113 = v63;
    sub_232C31BEC();
    v66 = v65[1];
    *v65 = v54;
    v65[1] = v116;

    v67 = &v63[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightUniqueIdentifier];
    sub_232C31BEC();
    v68 = v67[1];
    *v67 = v57;
    v67[1] = v59;
    swift_bridgeObjectRetain_n();

    v69 = [objc_allocWithZone(type metadata accessor for DURawDocument()) init];
    v70 = &v69[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_identifier];
    sub_232B13F5C();
    v71 = v70[1];
    *v70 = v57;
    v70[1] = v59;

    v72 = sub_232C31B34(v53, &selRef_title);
    v74 = v73;
    v75 = &v69[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline];
    sub_232B13F5C();
    v76 = v75[1];
    *v75 = v72;
    v75[1] = v74;

    v77 = sub_232C31B34(v53, &selRef_notes);
    v79 = v78;
    v80 = &v69[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
    sub_232B13F5C();
    v81 = v80[1];
    *v80 = v77;
    v80[1] = v79;

    [v53 absoluteTimestamp];
    sub_232CE8CA0();
    v82 = sub_232CE8D10();
    sub_232B351FC();
    sub_232B12504(v83, v84, v85, v82);
    v86 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated;
    sub_232C31C94();
    sub_232C31A5C(v114, &v69[v86], &qword_27DDC6A80, &qword_232CF6D30);
    swift_endAccess();
    v87 = objc_allocWithZone(type metadata accessor for DUDocument());
    v88 = v69;
    v89 = DUDocument.init(rawDocument:maxLength:)(v88, 5120);
    sub_232CE8C00();
    sub_232B55484();
    sub_232B12504(v90, v91, v92, v93);
    sub_232B55484();
    sub_232B12504(v94, v95, v96, v82);
    v97 = objc_allocWithZone(type metadata accessor for DUDocumentUpdate());
    v98 = v113;
    v99 = v89;
    sub_232C31C38();
    DUDocumentUpdate.init(documentID:documentBody:document:associatedFileURL:documentType:updateTimestamp:documentAttributes:)(v100, v101, v102, v103, v115, 0x7265646E696D6572, v104, v114, 0);
    [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
    v105 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    v106 = sub_232C31C68(&a13);
    v107 = sub_232CE9D20();
    [v106 setBundleID_];
  }

  else
  {
    sub_232CE9A20();
    v108 = sub_232CE9A00();
    v109 = sub_232CEA1C0();
    if (sub_232BC1E54(v109))
    {
      *sub_232BA73DC() = 0;
      sub_232C31DA4(&dword_232B02000, v110, v111, "HarvestingDocumentNormalization: Failed to initialize reminder content from serialized protobuf");
      sub_232BA6A84();
    }

    v46(v41, v33);
    sub_232C31E04();
    sub_232B4EC24();
    *v112 = 0xD00000000000005FLL;
    v112[1] = v33;
    swift_willThrow();
  }

  sub_232C31D64();
  sub_232BA6688();
}

void sub_232C312B0()
{
  sub_232BA66A0();
  v73 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v6);
  v8 = *(v7 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v9);
  sub_232B2D108();
  v72 = v10;
  v11 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v11);
  v13 = *(v12 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v14);
  sub_232B2D108();
  v71 = v15;
  sub_232B554F0();
  v78 = sub_232CE9A30();
  v16 = sub_232B48F0C(v78);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_232B3516C();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v70 - v25;
  MEMORY[0x28223BE20](v27);
  sub_232C31C18();
  v28 = sub_232CE9A00();
  v29 = sub_232CEA1A0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = sub_232BA73DC();
    *v30 = 0;
    _os_log_impl(&dword_232B02000, v28, v29, "(HarvestingDocumentNormalization) Normalizing file content", v30, 2u);
    sub_232BA6A84();
  }

  v31 = *(v18 + 8);
  v31(v0, v78);
  type metadata accessor for DUDocument();
  sub_232BA4DEC(0, &qword_27DDC6E90, 0x277CBEA90);
  sub_232B41B94(v5, v3);
  sub_232C2EB20(v5, v3);
  sub_232C31B94();
  sub_232CE98B0();
  v32 = v76;
  if (v76)
  {
    v33 = sub_232B5821C();
    if (!v34)
    {
      goto LABEL_9;
    }

    v35 = v33;
    v36 = v34;

    v37 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v37 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v37)
    {
      v76 = 0;
      v77 = 0xE000000000000000;
      MEMORY[0x238391C30](0x3A656C6966, 0xE500000000000000);
      v74 = sub_232B582D0();
      v75 = v38;
      sub_232B124A8(&qword_27DDC77E8, &qword_232CFAA68);
      sub_232CEA5B0();

      v39 = v76;
      v40 = v77;
      v41 = objc_allocWithZone(type metadata accessor for DUDocumentIdentifier());
      v42 = DUDocumentIdentifier.init(documentNamespace:documentID:)(0xD000000000000028, 0x8000000232D09E90, v39, v40);
      sub_232CE8C00();
      v43 = v71;
      sub_232B55484();
      sub_232B12504(v44, v45, v46, v47);
      sub_232CE8D10();
      v48 = v72;
      sub_232B55484();
      sub_232B12504(v49, v50, v51, v52);
      v53 = objc_allocWithZone(type metadata accessor for DUDocumentUpdate());
      v54 = v42;
      v55 = v32;
      DUDocumentUpdate.init(documentID:documentBody:document:associatedFileURL:documentType:updateTimestamp:documentAttributes:)(v54, 0, 0, v32, v43, 0x73656C6966, 0xE500000000000000, v48, 0);
      v56 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
      v57 = objc_allocWithZone(MEMORY[0x277CC34B0]);
      sub_232C318A4(0, 0, 0, 0, v56);
    }

    else
    {
LABEL_9:
      sub_232CE9A20();
      v58 = sub_232CE9A00();
      v59 = sub_232CEA1C0();
      if (os_log_type_enabled(v58, v59))
      {
        *sub_232BA73DC() = 0;
        sub_232C31DE4(&dword_232B02000, v60, v61, "HarvestingDocumentNormalization: nil or empty text when initializing document from serialized Data");
        sub_232BA6A84();
      }

      v31(v26, v78);
      sub_232C31E04();
      v62 = sub_232B4EC24();
      sub_232C31D2C(v62, v63);
    }
  }

  else
  {
    sub_232CE9A20();
    v64 = sub_232CE9A00();
    v65 = sub_232CEA1C0();
    if (os_log_type_enabled(v64, v65))
    {
      *sub_232BA73DC() = 0;
      sub_232C31DE4(&dword_232B02000, v66, v67, "HarvestingDocumentNormalization: Failed to initialize document from serialized Data");
      sub_232BA6A84();
    }

    v31(v23, v78);
    sub_232C31E04();
    v68 = sub_232B4EC24();
    sub_232C31D2C(v68, v69);
  }

  sub_232BA6688();
}

id HarvestingDocumentNormalization.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HarvestingDocumentNormalization.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HarvestingDocumentNormalization();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HarvestingDocumentNormalization.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HarvestingDocumentNormalization();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_232C318A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_232CE9D20();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_232CE9D20();

LABEL_6:
  v10 = [v5 initWithUniqueIdentifier:v8 domainIdentifier:v9 attributeSet:a5];

  return v10;
}

id sub_232C31950(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_232CE8C50();
    sub_232BB6018(a1, a2);
  }

  v6 = [v2 initWithProtoData_];

  return v6;
}

uint64_t sub_232C319F8(void *a1)
{
  v1 = [a1 htmlContent];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_232CE8C80();

  return v3;
}

uint64_t sub_232C31A5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_232B124A8(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_232C31AC4(void *a1)
{
  v1 = [a1 toHandles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_232BA4DEC(0, &qword_2814DF928, 0x277CF19E8);
  v3 = sub_232CE9FE0();

  return v3;
}

uint64_t sub_232C31B34(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_232CE9D50();

  return v4;
}

unint64_t sub_232C31B94()
{
  result = qword_27DDC7FF8;
  if (!qword_27DDC7FF8)
  {
    type metadata accessor for DUDocument();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7FF8);
  }

  return result;
}

uint64_t sub_232C31BEC()
{

  return swift_beginAccess();
}

uint64_t sub_232C31C18()
{

  return sub_232CE9A20();
}

id sub_232C31C48(uint64_t a1)
{

  return DUDocumentIdentifier.init(documentNamespace:documentID:)(a1, v3 | 0x8000000000000000, v1, v2);
}

id sub_232C31C68@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 - 256);
  v6 = *(v3 - 296);
  v7 = *(v3 - 72);

  return sub_232C318A4(v5, v1, v6, v7, v2);
}

uint64_t sub_232C31C94()
{

  return swift_beginAccess();
}

void sub_232C31CC0()
{

  JUMPOUT(0x238391C30);
}

uint64_t sub_232C31CE4()
{
  v4 = v1[1];
  *v1 = *(v0 + 96);
  v1[1] = v2;
  *(v0 + 40) = v2;
}

void sub_232C31D08()
{
  *(v1 - 288) = v0;

  JUMPOUT(0x238391C30);
}

uint64_t sub_232C31D2C(uint64_t a1, void *a2)
{
  *a2 = 0xD000000000000043;
  a2[1] = v2;

  return swift_willThrow();
}

void sub_232C31DA4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_232C31DC4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_232C31DE4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

unint64_t sub_232C31E04()
{

  return sub_232C2ED90();
}

uint64_t sub_232C31E1C()
{

  return sub_232CEA5B0();
}

_BYTE *storeEnumTagSinglePayload for IntelligencePlatform(_BYTE *result, int a2, int a3)
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

unint64_t sub_232C31EE4()
{
  result = qword_27DDC8000;
  if (!qword_27DDC8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC8000);
  }

  return result;
}

uint64_t sub_232C31F38()
{
  sub_232CEA820();
  MEMORY[0x2383925C0](0);
  return sub_232CEA850();
}

uint64_t type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse()
{
  result = qword_27DDC8008;
  if (!qword_27DDC8008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232C32020()
{
  sub_232B2E0AC();
  if (v0 <= 0x3F)
  {
    sub_232CE9340();
    if (v1 <= 0x3F)
    {
      sub_232C320BC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_232C320BC()
{
  if (!qword_27DDC67E8)
  {
    type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
    v0 = sub_232CEA350();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDC67E8);
    }
  }
}

uint64_t sub_232C32114@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse();
  v3 = a1 + *(v2 + 20);
  sub_232CE9330();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();

  return sub_232B12504(a1 + v4, 1, 1, v5);
}

uint64_t sub_232C32184()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD50D8);
  sub_232B135C4(v0, qword_27DDD50D8);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF5E60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "languageTags";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "responseDebugInfo";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C3234C()
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_232C323D4();
    }

    else if (result == 1)
    {
      sub_232CE9460();
    }
  }

  return result;
}

uint64_t sub_232C323D4()
{
  v0 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse() + 24);
  type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  sub_232C32DF0(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  return sub_232CE94C0();
}

uint64_t sub_232C32488()
{
  if (!*(*v0 + 16) || (result = sub_232CE95A0(), !v1))
  {
    result = sub_232C32540(v0);
    if (!v1)
    {
      v3 = v0 + *(type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse() + 20);
      return sub_232CE9320();
    }
  }

  return result;
}

uint64_t sub_232C32540(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse();
  sub_232B21B7C(a1 + *(v10 + 24), v5);
  if (sub_232B12480(v5, 1, v6) == 1)
  {
    return sub_232B13790(v5, &qword_27DDC67C8, &unk_232CF5E70);
  }

  sub_232B21BEC(v5, v9);
  sub_232C32DF0(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232CE95E0();
  return sub_232B21C50(v9);
}

uint64_t sub_232C326E0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v5 = sub_232B13F24(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v40 - v12;
  v14 = sub_232B124A8(&qword_27DDC6828, &unk_232CF6030);
  v15 = sub_232B13F24(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  if ((sub_232B32DC4(*a1, *a2) & 1) == 0)
  {
    goto LABEL_24;
  }

  v20 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse();
  v21 = *(v20 + 24);
  v22 = *(v14 + 48);
  sub_232B21B7C(a1 + v21, v19);
  sub_232B21B7C(a2 + v21, &v19[v22]);
  sub_232B13FF0(v19);
  if (v27)
  {
    sub_232B13FF0(&v19[v22]);
    if (v27)
    {
      sub_232B13790(v19, &qword_27DDC67C8, &unk_232CF5E70);
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  sub_232B21B7C(v19, v13);
  sub_232B13FF0(&v19[v22]);
  if (v27)
  {
    sub_232B21C50(v13);
LABEL_11:
    v28 = &qword_27DDC6828;
    v29 = &unk_232CF6030;
LABEL_23:
    sub_232B13790(v19, v28, v29);
LABEL_24:
    v26 = 0;
    return v26 & 1;
  }

  sub_232B21BEC(&v19[v22], v9);
  v30 = *(v4 + 20);
  v31 = &v13[v30];
  v32 = *&v13[v30 + 8];
  v33 = &v9[v30];
  v34 = *(v33 + 1);
  if (!v32)
  {
    if (!v34)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (!v34 || (*v31 == *v33 ? (v35 = v32 == v34) : (v35 = 0), !v35 && (sub_232CEA750() & 1) == 0))
  {
LABEL_22:
    sub_232B21C50(v9);
    sub_232B21C50(v13);
    v28 = &qword_27DDC67C8;
    v29 = &unk_232CF5E70;
    goto LABEL_23;
  }

LABEL_19:
  sub_232CE9340();
  sub_232C32E38();
  sub_232C32DF0(v36, v37);
  v38 = sub_232CE9CF0();
  sub_232B21C50(v9);
  sub_232B21C50(v13);
  sub_232B13790(v19, &qword_27DDC67C8, &unk_232CF5E70);
  if ((v38 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_7:
  v23 = *(v20 + 20);
  sub_232CE9340();
  sub_232C32E38();
  sub_232C32DF0(v24, v25);
  v26 = sub_232CE9CF0();
  return v26 & 1;
}

uint64_t sub_232C329E4()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse();
  sub_232C32DF0(&qword_27DDC8020, type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C32ABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C32DF0(&qword_27DDC8030, type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C32B38@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6400 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD50D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232C32BE0(uint64_t a1)
{
  v2 = sub_232C32DF0(&qword_27DDC7840, type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C32C50()
{
  sub_232C32DF0(&qword_27DDC7840, type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse);

  return sub_232CE9500();
}

uint64_t sub_232C32DF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_232C32EA0()
{
  result = qword_27DDC8038;
  if (!qword_27DDC8038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC8038);
  }

  return result;
}

unint64_t sub_232C32F08()
{
  result = qword_27DDC8040;
  if (!qword_27DDC8040)
  {
    sub_232B27EEC(&qword_27DDC8048, &qword_232CFDE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC8040);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AvailableModelsForTextGenerationFramework(_BYTE *result, int a2, int a3)
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

uint64_t sub_232C33068(uint64_t a1, uint64_t *a2)
{
  v3 = sub_232CE9A30();
  sub_232B135FC(v3, a2);
  sub_232B135C4(v3, a2);
  return sub_232CE9A10();
}

uint64_t sub_232C330E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_232CE8B90();
  v4 = CGPDFDocumentCreateWithURL(v3);

  if (v4)
  {
    v5 = sub_232C331CC(v4, a2);

    return v5;
  }

  else
  {
    sub_232C33178();
    swift_allocError();
    return swift_willThrow();
  }
}

unint64_t sub_232C33178()
{
  result = qword_27DDC8050;
  if (!qword_27DDC8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC8050);
  }

  return result;
}

uint64_t sub_232C331CC(CGPDFDocument *a1, uint64_t a2)
{
  v4 = sub_232CE9A30();
  v25 = *(v4 - 8);
  v26 = v4;
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  NumberOfPages = CGPDFDocumentGetNumberOfPages(a1);
  v8 = [objc_allocWithZone(MEMORY[0x277CCAB68]) init];
  for (i = 1; ; ++i)
  {
    if (NumberOfPages < i || [v8 length] >= a2)
    {
      return sub_232CE9DB0();
    }

    v10 = CGPDFDocumentGetPage(a1, i);
    if (!v10)
    {
      v19 = v24;
      sub_232CE9A20();
      v20 = sub_232CE9A00();
      v21 = sub_232CEA1C0();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 134217984;
        *(v22 + 4) = i;
        _os_log_impl(&dword_232B02000, v20, v21, "Error while reading page %ld in PDF", v22, 0xCu);
        MEMORY[0x238393870](v22, -1, -1);
      }

      (*(v25 + 8))(v19, v26);
      return sub_232CE9DB0();
    }

    v11 = v10;
    v12 = CGPDFPageCopyString();
    result = sub_232CE9D50();
    if (__OFADD__(i, 1))
    {
      break;
    }

    v15 = result;
    v16 = v14;

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      [v8 appendString_];
      v18 = v12;
    }

    else
    {
      v18 = v11;
      v11 = v12;
    }
  }

  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for PDFNormalizationError(_BYTE *result, int a2, int a3)
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

unint64_t sub_232C334BC()
{
  result = qword_27DDC8058;
  if (!qword_27DDC8058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC8058);
  }

  return result;
}

uint64_t sub_232C33510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t))
{
  while (1)
  {
    v13 = a1;
    a5(&v13, a3, a4);
    if (v5 || a2 == a1)
    {
      break;
    }

    if (__OFADD__(a1++, 1))
    {
      __break(1u);
    }
  }
}

uint64_t sub_232C335A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  v25 = v6;
  while (1)
  {
    v7 = sub_232CEA720();
    MEMORY[0x238391C30](v7);

    v8 = 0.0;
    if (*(v6 + 16))
    {
      v9 = sub_232B20520(a1);
      if (v10)
      {
        v8 = *(*(v6 + 56) + 8 * v9);
      }
    }

    v11 = *a3;
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *a3;
    v27 = *a3;
    v13 = sub_232B1F160(0xD000000000000017, 0x8000000232D02A20);
    if (__OFADD__(v12[2], (v14 & 1) == 0))
    {
      break;
    }

    v15 = v13;
    v16 = v14;
    sub_232B124A8(&qword_27DDC67B8, &unk_232CFE0C0);
    if (sub_232CEA5C0())
    {
      v17 = sub_232B1F160(0xD000000000000017, 0x8000000232D02A20);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_20;
      }

      v15 = v17;
    }

    if (v16)
    {
      *(v27[7] + 8 * v15) = v8;
    }

    else
    {
      v27[(v15 >> 6) + 8] |= 1 << v15;
      v19 = (v27[6] + 16 * v15);
      *v19 = 0xD000000000000017;
      v19[1] = 0x8000000232D02A20;
      *(v27[7] + 8 * v15) = v8;
      v20 = v27[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_19;
      }

      v27[2] = v22;
    }

    *a3 = v27;

    v6 = v25;
    if (a2 == a1)
    {
      return sub_232C3B64C(a4);
    }

    v21 = __OFADD__(a1++, 1);
    if (v21)
    {
      __break(1u);
      return sub_232C3B64C(a4);
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

uint64_t sub_232C337C8(uint64_t a1, void *a2, void *a3)
{
  v4 = a1;
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = 0;
  v36 = a1 + 56;

  v34 = a2;
  v35 = v9;
  while (v8)
  {
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = (*(v4 + 48) + ((v10 << 10) | (16 * v12)));
    v14 = *v13;
    v15 = v13[1];

    v16 = sub_232CE9D20();
    v17 = [a2 featureValueForName_];

    if (v17)
    {
      [v17 doubleValue];
      v19 = v18;

      v20 = *a3;
      swift_isUniquelyReferenced_nonNull_native();
      v39 = *a3;
      v21 = v14;
      v22 = sub_232B1F160(v14, v15);
      if (__OFADD__(v39[2], (v23 & 1) == 0))
      {
        goto LABEL_23;
      }

      v24 = v22;
      v25 = v23;
      sub_232B124A8(&qword_27DDC67B8, &unk_232CFE0C0);
      if (sub_232CEA5C0())
      {
        v26 = v21;
        v27 = sub_232B1F160(v21, v15);
        v5 = v36;
        if ((v25 & 1) != (v28 & 1))
        {
          goto LABEL_25;
        }

        v24 = v27;
      }

      else
      {
        v5 = v36;
        v26 = v21;
      }

      v9 = v35;
      if (v25)
      {
        *(v39[7] + 8 * v24) = v19;
      }

      else
      {
        v39[(v24 >> 6) + 8] |= 1 << v24;
        v29 = (v39[6] + 16 * v24);
        *v29 = v26;
        v29[1] = v15;
        *(v39[7] + 8 * v24) = v19;
        v30 = v39[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_24;
        }

        v39[2] = v32;
      }

      *a3 = v39;

      v4 = v37;
      a2 = v34;
    }

    else
    {

      v4 = v37;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      swift_unknownObjectRelease();
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

int64_t sub_232C33A68(uint64_t a1, unint64_t a2)
{
  result = sub_232B26B10(a2);
  if (!a1)
  {
    goto LABEL_124;
  }

  v5 = result;
  v6 = sub_232C3B6A0(0, result, a1);
  v47 = MEMORY[0x277D84F90];
  result = sub_232B64C48(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = a2 >> 62;
    v43 = a1;
    v45 = v5;
    if (v6)
    {
      v42 = sub_232B26B10(a2);
      v41 = sub_232B26B10(a2);
      result = sub_232B26B10(a2);
      v39 = v6;
      v40 = result;
      v8 = 0;
      v9 = 0;
      v46 = a2 & 0xC000000000000001;
      while (1)
      {
        v10 = v5 >= v9;
        if (a1 > 0)
        {
          v10 = v9 >= v5;
        }

        if (v10)
        {
          goto LABEL_112;
        }

        if (__OFADD__(v9, a1))
        {
          v11 = ((v9 + a1) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v11 = v9 + a1;
        }

        if (__OFADD__(v9, a1))
        {
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
          goto LABEL_125;
        }

        if (v42 >= v9 + a1)
        {
          v12 = v9 + a1;
        }

        else
        {
          v12 = v42;
        }

        if (v12 < v9)
        {
          goto LABEL_114;
        }

        if (v41 < v9)
        {
          goto LABEL_115;
        }

        if (v9 < 0)
        {
          goto LABEL_116;
        }

        if (v40 < v12)
        {
          goto LABEL_117;
        }

        if (!v46 || v9 == v12)
        {

          if (!v7)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v9 >= v12)
          {
            goto LABEL_122;
          }

          sub_232BA4DEC(0, &qword_27DDC7068, 0x277CBFED0);

          result = v9;
          do
          {
            v13 = result + 1;
            sub_232CEA520();
            result = v13;
          }

          while (v12 != v13);
          if (!v7)
          {
LABEL_25:
            v14 = (2 * v12) | 1;
            goto LABEL_28;
          }
        }

        result = sub_232CEA620();
        v9 = v15;
LABEL_28:
        v16 = v14 >> 1;
        if ((v14 & 1) == 0)
        {
          v17 = v16 - v9;
          if (__OFSUB__(v16, v9))
          {
            goto LABEL_121;
          }

          if (v17)
          {
            goto LABEL_31;
          }

LABEL_38:
          v18 = MEMORY[0x277D84F90];
          goto LABEL_42;
        }

        sub_232CEA770();
        swift_unknownObjectRetain_n();
        v19 = swift_dynamicCastClass();
        if (!v19)
        {
          swift_unknownObjectRelease();
          v19 = MEMORY[0x277D84F90];
        }

        v20 = *(v19 + 16);

        v17 = v16 - v9;
        if (__OFSUB__(v16, v9))
        {
          goto LABEL_123;
        }

        if (v20 != v17)
        {
          result = swift_unknownObjectRelease();
          a1 = v43;
          if (!v17)
          {
            goto LABEL_38;
          }

LABEL_31:
          if (v17 < 1)
          {
            v18 = MEMORY[0x277D84F90];
          }

          else
          {
            sub_232B124A8(&qword_27DDC6920, &qword_232CF6520);
            v18 = swift_allocObject();
            result = j__malloc_size(v18);
            v18[2] = v17;
            v18[3] = (2 * ((result - 32) / 8)) | 1;
          }

          if (v9 == v16)
          {
            goto LABEL_127;
          }

          sub_232BA4DEC(0, &qword_27DDC7068, 0x277CBFED0);
          swift_arrayInitWithCopy();
LABEL_42:
          result = swift_unknownObjectRelease();
          goto LABEL_43;
        }

        v18 = swift_dynamicCastClass();
        result = swift_unknownObjectRelease();
        a1 = v43;
        if (!v18)
        {
          goto LABEL_38;
        }

LABEL_43:
        v22 = *(v47 + 16);
        v21 = *(v47 + 24);
        if (v22 >= v21 >> 1)
        {
          result = sub_232B64C48((v21 > 1), v22 + 1, 1);
        }

        ++v8;
        *(v47 + 16) = v22 + 1;
        *(v47 + 8 * v22 + 32) = v18;
        v9 = v11;
        v7 = a2 >> 62;
        v5 = v45;
        if (v8 == v39)
        {
          v23 = a2 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_50;
        }
      }
    }

    v11 = 0;
    v23 = a2 & 0xFFFFFFFFFFFFFF8;
    v46 = a2 & 0xC000000000000001;
LABEL_50:
    v44 = v23;
    while (1)
    {
      v24 = v5 >= v11;
      if (a1 > 0)
      {
        v24 = v11 >= v5;
      }

      if (v24)
      {
        return v47;
      }

      v25 = v11 + a1;
      if (__OFADD__(v11, a1))
      {
        v26 = ((v11 + a1) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v26 = v11 + a1;
      }

      if (__OFADD__(v11, a1))
      {
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      if (v7)
      {
        result = sub_232CEA610();
        if (result >= v25)
        {
          v28 = v11 + a1;
        }

        else
        {
          v28 = result;
        }

        v27 = v44;
        if (v28 < v11)
        {
          goto LABEL_107;
        }

        result = sub_232CEA610();
      }

      else
      {
        v27 = v44;
        result = *(v44 + 16);
        if (result >= v25)
        {
          v28 = v11 + a1;
        }

        else
        {
          v28 = *(v44 + 16);
        }

        if (v28 < v11)
        {
          goto LABEL_107;
        }
      }

      if (result < v11)
      {
        goto LABEL_108;
      }

      if (v11 < 0)
      {
        goto LABEL_109;
      }

      if (v7)
      {
        result = sub_232CEA610();
      }

      else
      {
        result = *(v27 + 16);
      }

      if (result < v28)
      {
        goto LABEL_110;
      }

      if (v28 < 0)
      {
        goto LABEL_111;
      }

      if (!v46 || v11 == v28)
      {

        if (!v7)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v11 >= v28)
        {
          goto LABEL_119;
        }

        sub_232BA4DEC(0, &qword_27DDC7068, 0x277CBFED0);

        result = v11;
        do
        {
          v29 = result + 1;
          sub_232CEA520();
          result = v29;
        }

        while (v28 != v29);
        if (!v7)
        {
LABEL_76:
          v30 = (2 * v28) | 1;
          goto LABEL_79;
        }
      }

      result = sub_232CEA620();
      v11 = v31;
LABEL_79:
      v32 = v30 >> 1;
      if ((v30 & 1) == 0)
      {
        v33 = v32 - v11;
        if (__OFSUB__(v32, v11))
        {
          goto LABEL_118;
        }

        if (v33)
        {
          goto LABEL_82;
        }

LABEL_99:
        v34 = MEMORY[0x277D84F90];
        goto LABEL_100;
      }

      sub_232CEA770();
      swift_unknownObjectRetain_n();
      v35 = swift_dynamicCastClass();
      if (!v35)
      {
        swift_unknownObjectRelease();
        v35 = MEMORY[0x277D84F90];
      }

      v36 = *(v35 + 16);

      v33 = v32 - v11;
      if (__OFSUB__(v32, v11))
      {
        goto LABEL_120;
      }

      if (v36 != v33)
      {
        result = swift_unknownObjectRelease();
        if (!v33)
        {
          goto LABEL_99;
        }

LABEL_82:
        if (v33 < 1)
        {
          v34 = MEMORY[0x277D84F90];
        }

        else
        {
          sub_232B124A8(&qword_27DDC6920, &qword_232CF6520);
          v34 = swift_allocObject();
          result = j__malloc_size(v34);
          v34[2] = v33;
          v34[3] = (2 * ((result - 32) / 8)) | 1;
        }

        if (v11 == v32)
        {
          goto LABEL_126;
        }

        sub_232BA4DEC(0, &qword_27DDC7068, 0x277CBFED0);
        swift_arrayInitWithCopy();
LABEL_100:
        v7 = a2 >> 62;
        v5 = v45;
        goto LABEL_101;
      }

      v34 = swift_dynamicCastClass();
      result = swift_unknownObjectRelease();
      v7 = a2 >> 62;
      v5 = v45;
      if (v34)
      {
        goto LABEL_102;
      }

      v34 = MEMORY[0x277D84F90];
LABEL_101:
      result = swift_unknownObjectRelease();
LABEL_102:
      v38 = *(v47 + 16);
      v37 = *(v47 + 24);
      if (v38 >= v37 >> 1)
      {
        result = sub_232B64C48((v37 > 1), v38 + 1, 1);
      }

      *(v47 + 16) = v38 + 1;
      *(v47 + 8 * v38 + 32) = v34;
      v11 = v26;
      a1 = v43;
    }
  }

LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
  return result;
}

uint64_t sub_232C3414C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x8000000232D0A250 == a2;
  if (v3 || (sub_232CEA750() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000232D0A270 == a2;
    if (v6 || (sub_232CEA750() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736563614678616DLL && a2 == 0xE800000000000000;
      if (v7 || (sub_232CEA750() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7A69536863746162 && a2 == 0xE900000000000065;
        if (v8 || (sub_232CEA750() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x8000000232D0A290 == a2;
          if (v9 || (sub_232CEA750() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6B6361426B6F6F6CLL && a2 == 0xEF73726165596E49)
          {

            return 5;
          }

          else
          {
            v11 = sub_232CEA750();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_232C34354(char a1)
{
  result = 0x736563614678616DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 0x7A69536863746162;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x6B6361426B6F6F6CLL;
      break;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

uint64_t sub_232C34430(void *a1)
{
  v3 = v1;
  v5 = sub_232B124A8(&qword_27DDC8070, &unk_232CFE0A0);
  sub_232B48F0C(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v10);
  v12 = &v21[-v11];
  v13 = a1[4];
  sub_232B203C8(a1, a1[3]);
  sub_232C3B2D4();
  sub_232CEA880();
  v14 = *v3;
  v21[15] = 0;
  sub_232C3BBCC();
  sub_232CEA6E0();
  if (!v2)
  {
    v15 = v3[1];
    v21[14] = 1;
    sub_232C3BBCC();
    sub_232CEA6F0();
    v16 = v3[2];
    v21[13] = 2;
    sub_232C3BBCC();
    sub_232CEA6F0();
    v17 = v3[3];
    v21[12] = 3;
    sub_232C3BBCC();
    sub_232CEA6F0();
    v18 = v3[4];
    v21[11] = 4;
    sub_232C3BBCC();
    sub_232CEA6E0();
    v19 = v3[5];
    v21[10] = 5;
    sub_232C3BBCC();
    sub_232CEA6E0();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_232C3460C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_232B124A8(&qword_27DDC8060, &qword_232CFE098);
  sub_232B48F0C(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = a1[4];
  sub_232B203C8(a1, a1[3]);
  sub_232C3B2D4();
  sub_232CEA870();
  if (v2)
  {
    return sub_232B2040C(a1);
  }

  v29 = 0;
  sub_232C3BA00();
  sub_232CEA6B0();
  v15 = v14;
  v28 = 1;
  sub_232C3BA00();
  v16 = sub_232CEA6C0();
  v27 = 2;
  sub_232C3BA00();
  v17 = sub_232CEA6C0();
  v26 = 3;
  sub_232C3BA00();
  v23 = sub_232CEA6C0();
  v25 = 4;
  sub_232C3BA00();
  sub_232CEA6B0();
  v19 = v18;
  v24 = 5;
  sub_232C3BA00();
  sub_232CEA6B0();
  v21 = v20;
  (*(v7 + 8))(v12, v5);
  result = sub_232B2040C(a1);
  *a2 = v15;
  a2[1] = v16;
  a2[2] = v17;
  a2[3] = v23;
  a2[4] = v19;
  a2[5] = v21;
  return result;
}

uint64_t sub_232C34840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232C3414C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232C34868(uint64_t a1)
{
  v2 = sub_232C3B2D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232C348A4(uint64_t a1)
{
  v2 = sub_232C3B2D4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_232C348E0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_232C3460C(a1, v6);
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

uint64_t sub_232C3493C()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    v2 = v0;
    v3 = sub_232CE8B10();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v1 = sub_232CE8B00();
    v6 = *(v2 + 160);
    *(v2 + 160) = v1;
  }

  return v1;
}

uint64_t sub_232C349B0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  type metadata accessor for DUTrialAssetLoader();
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  swift_allocObject();
  *(v0 + 96) = sub_232C14534();
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 1;
  *(v0 + 160) = 0;
  sub_232C34AAC();
  sub_232C351E4();
  sub_232C356F8();
  v1 = *(v0 + 24);
  v2 = *(v0 + 152);
  v3 = *(v0 + 48);
  v6[0] = *(v0 + 32);
  v6[1] = v3;
  v7[0] = *(v0 + 64);
  *(v7 + 9) = *(v0 + 73);
  *(v0 + 32) = v1;
  *(v0 + 40) = *(v0 + 104);
  *(v0 + 56) = *(v0 + 120);
  *(v0 + 72) = *(v0 + 136);
  *(v0 + 88) = v2;
  v4 = v1;
  sub_232B267AC(v6, &qword_27DDC80A0, &unk_232CFE0E8);
  return v0;
}

void sub_232C34AAC()
{
  sub_232B35110();
  v100[1] = *MEMORY[0x277D85DE8];
  v2 = sub_232CE9A30();
  v3 = sub_232B48F0C(v2);
  v98 = v4;
  v99 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B3516C();
  v96 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  sub_232C3BA64();
  MEMORY[0x28223BE20](v10);
  v19 = sub_232C3BCAC(v11, v12, v13, v14, v15, v16, v17, v18, v94[0]);
  v20 = sub_232B48F0C(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_232B20704();
  v27 = v26 - v25;
  v28 = *(*(sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0) - 8) + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v29);
  v31 = v94 - v30;
  v32 = sub_232CE8C00();
  v33 = sub_232B48F0C(v32);
  v97 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  sub_232B3516C();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = v94 - v41;
  MEMORY[0x28223BE20](v43);
  v94[0] = v0;
  v44 = *(v0 + 96);
  LOBYTE(v100[0]) = 0;
  v45 = sub_232C14684();
  if (!v45)
  {
    sub_232CE9A20();
    v53 = sub_232CE9A00();
    v54 = sub_232CEA1C0();
    if (sub_232BA6EB8(v54))
    {
      v55 = sub_232BA73DC();
      sub_232C3BCD0(v55);
      sub_232C3BA74();
      sub_232C3BD78(v56, v57, v58, v59);
      sub_232C3BAA0();
    }

    sub_232C3BC20();
    v60(v1);
    goto LABEL_14;
  }

  v95 = v45;
  sub_232C3B410(v45);
  if (v46)
  {
    sub_232B12504(v31, 1, 1, v32);
    (*(v22 + 104))(v27, *MEMORY[0x277CC91D8], v19);
    sub_232CE8BE0();
    v47 = objc_opt_self();
    v48 = sub_232CE8B90();
    v100[0] = 0;
    v49 = [v47 compileModelAtURL:v48 error:v100];

    v50 = v100[0];
    if (v49)
    {
      sub_232CE8BB0();
      v51 = v50;

      sub_232BA4DEC(0, &qword_2814DF8D0, 0x277CBFF20);
      v52 = v97;
      (*(v97 + 16))(v39, v42, v32);
      v81 = sub_232C3508C(v39);
      v82 = *(v52 + 8);
      v82(v42, v32);
      v83 = *(v94[0] + 16);
      *(v94[0] + 16) = v81;

      v84 = v94[1];
      sub_232CE9A20();
      v85 = sub_232CE9A00();
      v86 = sub_232CEA1A0();
      if (sub_232BA6EB8(v86))
      {
        v88 = sub_232BA73DC();
        sub_232BD4280(v88);
        sub_232C3BA24(&dword_232B02000, v89, v90, "Loaded autonaming model from trial successfully");
        sub_232BA66EC();
      }

      sub_232C3BC20();
      v91(v84);
      v92 = sub_232B35090();
      (v82)(v92);
    }

    else
    {
      v61 = v100[0];
      v62 = sub_232CE8B30();

      swift_willThrow();
      v63 = v97;
      v64 = v96;
      sub_232CE9A20();
      v65 = v62;
      v66 = sub_232CE9A00();
      v67 = sub_232CEA1C0();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = sub_232BC1F80();
        v69 = sub_232C3BD90();
        *v68 = 138412290;
        v70 = v62;
        v71 = _swift_stdlib_bridgeErrorToNSError();
        *(v68 + 4) = v71;
        *v69 = v71;
        sub_232C3BD58();
        _os_log_impl(v72, v73, v74, v75, v76, 0xCu);
        sub_232B267AC(v69, &qword_27DDC6FD0, &unk_232CFA240);
        sub_232BA6A84();
        sub_232B26D28();
      }

      sub_232C3BC20();
      v77(v64);
      v78 = *(v63 + 8);
      v79 = sub_232B35090();
      v80(v79);
    }

LABEL_14:
    v93 = *MEMORY[0x277D85DE8];
    sub_232B20A00();
    return;
  }

  __break(1u);
}

id sub_232C3508C(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_232CE8B90();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_232CE8C00();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_232CE8B30();

    swift_willThrow();
    v9 = sub_232CE8C00();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_232C351E4()
{
  sub_232B35110();
  v56[0] = v0;
  v2 = sub_232CE9A30();
  v3 = sub_232B48F0C(v2);
  v60 = v4;
  v61 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B3516C();
  v59 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v18 = sub_232C3BCAC(v10, v11, v12, v13, v14, v15, v16, v17, v0);
  v19 = sub_232B48F0C(v18);
  v57 = v20;
  v58 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_232B20704();
  v25 = v24 - v23;
  v26 = *(*(sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0) - 8) + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v27);
  v29 = v56 - v28;
  v30 = sub_232CE8C00();
  v31 = sub_232B48F0C(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  sub_232B3516C();
  sub_232C3BA64();
  MEMORY[0x28223BE20](v36);
  v38 = v56 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = v56 - v40;
  v42 = [objc_opt_self() topDirectory];
  v43 = sub_232CE9D50();

  v44 = v30;
  sub_232CE8BD0();

  if (sub_232B12480(v29, 1, v30) == 1)
  {
    sub_232B267AC(v29, &qword_27DDC6AD8, &unk_232CF82F0);
    v45 = v59;
    sub_232CE9A20();
    v46 = sub_232CE9A00();
    sub_232CEA1C0();
    sub_232C3BC08();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = sub_232BA73DC();
      *v48 = 0;
      _os_log_impl(&dword_232B02000, v46, v43, "Couldn't initialize stats db URL in PoemAggregationHandler", v48, 2u);
      sub_232BA6A84();
    }

    sub_232C3BC20();
    v49(v45);
  }

  else
  {
    v62 = 0xD000000000000014;
    v63 = 0x8000000232D0A230;
    v51 = v57;
    v50 = v58;
    (*(v57 + 104))(v25, *MEMORY[0x277CC91D8], v58);
    sub_232B48080();
    sub_232CE8BF0();
    (*(v51 + 8))(v25, v50);
    v52 = *(v33 + 8);
    v52(v29, v30);
    (*(v33 + 32))(v41, v38, v30);
    (*(v33 + 16))(v1, v41, v30);
    v53 = objc_allocWithZone(type metadata accessor for PoemStatsDatabase());
    v54 = PoemStatsDatabase.init(dbURL:isFrozen:)(v1, 0);
    v52(v41, v44);
    v55 = *(v56[0] + 24);
    *(v56[0] + 24) = v54;
  }

  sub_232B20A00();
}

void sub_232C356F8()
{
  sub_232B35110();
  v2 = v0;
  v3 = sub_232CE9A30();
  v4 = sub_232B48F0C(v3);
  v58 = v5;
  v59 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_232B3516C();
  v56[1] = v8 - v9;
  MEMORY[0x28223BE20](v10);
  sub_232C3BA64();
  MEMORY[0x28223BE20](v11);
  sub_232C3BD10();
  MEMORY[0x28223BE20](v12);
  v56[0] = v56 - v13;
  v14 = sub_232CE8B40();
  v15 = sub_232B48F0C(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_232B20704();
  v22 = v21 - v20;
  v23 = *(*(sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0) - 8) + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v24);
  v26 = v56 - v25;
  v60 = sub_232CE8C00();
  v27 = sub_232B48F0C(v60);
  v57 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  sub_232B20704();
  v33 = v32 - v31;
  v34 = *(v0 + 96);
  LOBYTE(v61) = 0;
  v35 = sub_232C14684();
  if (!v35)
  {
    sub_232CE9A20();
    v38 = sub_232CE9A00();
    v39 = sub_232CEA1C0();
    if (sub_232BA6EB8(v39))
    {
      v40 = sub_232BA73DC();
      sub_232C3BCD0(v40);
      sub_232C3BA74();
      sub_232C3BD78(v41, v42, v43, v44);
      sub_232C3BAA0();
    }

    (*(v58 + 8))(v1, v59);
    goto LABEL_10;
  }

  v36 = v35;
  sub_232C3B410(v35);
  if (v37)
  {
    sub_232B12504(v26, 1, 1, v60);
    (*(v17 + 104))(v22, *MEMORY[0x277CC91D8], v14);
    sub_232C3BD44();
    sub_232CE8BE0();
    v45 = sub_232CE8C20();
    v47 = v46;
    sub_232C3493C();
    sub_232C3B740();
    sub_232CE8AF0();

    v48 = v62;
    *(v2 + 104) = v61;
    *(v2 + 120) = v48;
    *(v2 + 136) = v63;
    *(v2 + 152) = 0;
    v49 = v56[0];
    sub_232CE9A20();
    v50 = sub_232CE9A00();
    v51 = sub_232CEA1A0();
    if (sub_232BA6EB8(v51))
    {
      v53 = sub_232BA73DC();
      sub_232BD4280(v53);
      sub_232C3BA24(&dword_232B02000, v54, v55, "Loaded autonaming config file from trial successfully");
      sub_232BA66EC();
    }

    sub_232B41BEC(v45, v47);

    (*(v58 + 8))(v49, v59);
    (*(v57 + 8))(v33, v60);
LABEL_10:
    sub_232B20A00();
    return;
  }

  __break(1u);
}

uint64_t sub_232C35C4C(uint64_t a1, char a2)
{
  v5 = sub_232CE9A30();
  v6 = sub_232B48F0C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_232B3516C();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v38 - v15 + 112;
  if (!*(v2 + 16))
  {
    sub_232CE9A20();
    v21 = sub_232CE9A00();
    sub_232CEA1C0();
    sub_232C3BC08();
    if (os_log_type_enabled(v21, v22))
    {
      *sub_232BA73DC() = 0;
      sub_232C3BD58();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      sub_232B26D28();
    }

    (*(v8 + 8))(v13, v5);
    return MEMORY[0x277D84F90];
  }

  sub_232C36768();
  sub_232C35F4C(v17);
  sub_232C3A1F8();
  if (*(v2 + 152))
  {

    sub_232CE9A20();
    v18 = sub_232CE9A00();
    sub_232CEA1C0();
    sub_232C3BC08();
    if (os_log_type_enabled(v18, v19))
    {
      *sub_232BA73DC() = 0;
      sub_232C3BC90(&dword_232B02000, v20, a1, "Unable to aggregate on conversations because the configuration wasn't loaded");
      sub_232BA6A84();
    }

    (*(v8 + 8))(v16, v5);
    return MEMORY[0x277D84F90];
  }

  v29 = *(v2 + 104);
  v30 = *(v2 + 48);
  v38[0] = *(v2 + 32);
  v38[1] = v30;
  v39[0] = *(v2 + 64);
  *(v39 + 9) = *(v2 + 73);
  if (*&v38[0] == 1)
  {
    sub_232BA5C94();
    sub_232C4BB54();
    v28 = v31;
  }

  else
  {
    v40 = *&v38[0];
    v41 = *(v2 + 40);
    v42 = *(v2 + 56);
    v43 = *(v2 + 72);
    v44 = *(v2 + 88);
    sub_232C3BB9C();
    if ((a2 & 1) == 0)
    {
      v32 = sub_232BA5C94();
      v34 = sub_232C3BEEC(v32, v33, a1);
      sub_232C3CB94(v34);
    }

    sub_232BA5C94();
    sub_232C4BB54();
    v28 = v35;
    sub_232B267AC(v38, &qword_27DDC80A0, &unk_232CFE0E8);
  }

  return v28;
}

void sub_232C35F4C(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v66[0] = MEMORY[0x277D84F90];
    v4 = MEMORY[0x277D84F90];
    v5 = sub_232B26B10(a1);
    v63 = v2;
    for (i = 0; v5 != i; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2383922C0](i, a1);
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_73;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = v7;
      if (__OFADD__(i, 1))
      {
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
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        return;
      }

      v68 = v7;
      sub_232C364E8(&v68, v63, &v67);

      if (v67)
      {
        MEMORY[0x238391D50]();
        v9 = *((v66[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v66[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v9 >> 1)
        {
          sub_232BC1BBC(v9);
          sub_232CEA000();
        }

        sub_232CEA020();
        v4 = v66[0];
      }
    }

    v10 = sub_232B26B10(v4);
    if (v10)
    {
      v11 = v10;
      v66[0] = MEMORY[0x277D84F90];
      sub_232B64C68(0, v10 & ~(v10 >> 63), 0);
      if (v11 < 0)
      {
        goto LABEL_84;
      }

      v12 = 0;
      v64 = v4 & 0xC000000000000001;
      v13 = v66[0];
      v58 = v4 + 32;
      v60 = v4 & 0xFFFFFFFFFFFFFF8;
      do
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_77;
        }

        if (v64)
        {
          v15 = MEMORY[0x2383922C0]();
        }

        else
        {
          if (v12 >= *(v60 + 16))
          {
            goto LABEL_83;
          }

          v15 = *(v58 + 8 * v12);
          swift_unknownObjectRetain();
        }

        v16 = [v15 count];
        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_78;
        }

        v17 = v16;
        if (v16)
        {
          v18 = v11;
          v19 = v13;
          v68 = MEMORY[0x277D84F90];
          sub_232CEA580();
          v20 = 0;
          do
          {
            v21 = v20 + 1;
            v22 = [v15 featuresAtIndex_];
            sub_232CEA560();
            v23 = v68[2];
            sub_232CEA590();
            sub_232B35090();
            sub_232CEA5A0();
            sub_232CEA570();
            v20 = v21;
          }

          while (v17 != v21);
          swift_unknownObjectRelease();
          v24 = v68;
          v13 = v19;
          v11 = v18;
        }

        else
        {
          swift_unknownObjectRelease();
          v24 = MEMORY[0x277D84F90];
        }

        v66[0] = v13;
        v26 = *(v13 + 16);
        v25 = *(v13 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_232BC1BBC(v25);
          sub_232BC1E24();
          sub_232B64C68(v27, v28, v29);
          v13 = v66[0];
        }

        *(v13 + 16) = v26 + 1;
        *(v13 + 8 * v26 + 32) = v24;
        v12 = v14;
      }

      while (v14 != v11);
    }

    else
    {

      v13 = MEMORY[0x277D84F90];
    }

    v30 = 0;
    v31 = MEMORY[0x277D84F90];
    v61 = v13 + 32;
    v62 = *(v13 + 16);
    v59 = v13;
    while (1)
    {
      if (v30 == v62)
      {

        return;
      }

      if (v30 >= *(v13 + 16))
      {
        goto LABEL_74;
      }

      v32 = *(v61 + 8 * v30);
      if (v32 >> 62)
      {
        if (v32 < 0)
        {
          v54 = *(v61 + 8 * v30);
        }

        v33 = sub_232CEA610();
      }

      else
      {
        v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v34 = v31 >> 62;
      if (v31 >> 62)
      {
        v35 = sub_232CEA610();
      }

      else
      {
        v35 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v36 = v35 + v33;
      if (__OFADD__(v35, v33))
      {
        goto LABEL_75;
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v34)
      {
        goto LABEL_48;
      }

      v37 = v31 & 0xFFFFFFFFFFFFFF8;
      if (v36 > *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_47;
      }

LABEL_50:
      ++v30;
      v39 = *(v37 + 16);
      v40 = (*(v37 + 24) >> 1) - v39;
      v41 = v37 + 8 * v39;
      v65 = v37;
      if (v32 >> 62)
      {
        v43 = sub_232CEA610();
        if (!v43)
        {
          goto LABEL_64;
        }

        v44 = v43;
        v45 = sub_232CEA610();
        if (v40 < v45)
        {
          goto LABEL_81;
        }

        if (v44 < 1)
        {
          goto LABEL_82;
        }

        v55 = v45;
        v56 = v30;
        v57 = v31;
        v46 = v41 + 32;
        sub_232C3B474();
        for (j = 0; j != v44; ++j)
        {
          sub_232B124A8(&qword_27DDC6B10, &unk_232CF8910);
          v48 = sub_232B4D400(v66, j, v32);
          v50 = *v49;
          swift_unknownObjectRetain();
          v48(v66, 0);
          *(v46 + 8 * j) = v50;
        }

        v30 = v56;
        v31 = v57;
        v42 = v55;
LABEL_60:

        v13 = v59;
        if (v42 < v33)
        {
          goto LABEL_76;
        }

        if (v42 > 0)
        {
          v51 = *(v65 + 16);
          v52 = __OFADD__(v51, v42);
          v53 = v51 + v42;
          if (v52)
          {
            goto LABEL_79;
          }

          *(v65 + 16) = v53;
        }
      }

      else
      {
        v42 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v42)
        {
          if (v40 < v42)
          {
            goto LABEL_80;
          }

          sub_232B124A8(&qword_27DDC8078, &unk_232CFE0B0);
          swift_arrayInitWithCopy();
          goto LABEL_60;
        }

LABEL_64:

        v13 = v59;
        if (v33 > 0)
        {
          goto LABEL_76;
        }
      }
    }

    if (v34)
    {
LABEL_48:
      sub_232CEA610();
    }

    else
    {
      v37 = v31 & 0xFFFFFFFFFFFFFF8;
LABEL_47:
      v38 = *(v37 + 16);
    }

    v31 = sub_232CEA540();
    v37 = v31 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_50;
  }
}

id sub_232C364E8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = sub_232CE9A30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v27[0] = 0;
  v13 = [a2 predictionsFromBatch:v12 error:{v27, v9}];
  v14 = v27[0];
  if (v13)
  {
    *a3 = v13;
    result = v14;
    v16 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v17 = v27[0];
    v18 = sub_232CE8B30();

    swift_willThrow();
    sub_232CE9A20();
    v19 = v18;
    v20 = sub_232CE9A00();
    v21 = sub_232CEA1C0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v18;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_232B02000, v20, v21, "Error while inference in PoemAggregationModel: %@", v22, 0xCu);
      sub_232B267AC(v23, &qword_27DDC6FD0, &unk_232CFA240);
      MEMORY[0x238393870](v23, -1, -1);
      MEMORY[0x238393870](v22, -1, -1);
    }

    else
    {
    }

    result = (*(v7 + 8))(v11, v6);
    *a3 = 0;
    v26 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_232C36768()
{
  sub_232B35110();
  *&v71 = v0;
  DWORD1(v70) = v1;
  v3 = v2;
  v68 = sub_232CE9A30();
  v4 = sub_232B48F0C(v68);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_232B20704();
  *(&v71 + 1) = v10 - v9;
  sub_232B13F74();
  v69 = v3;
  v11 = *(v3 + 56);
  v12 = MEMORY[0x277D84F90];
  v86 = MEMORY[0x277D84F90];
  v14 = v11 + 64;
  v13 = *(v11 + 64);
  v15 = *(v11 + 32);
  sub_232B34F88();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  *(&v67 + 1) = v6 + 8;
  *(&v70 + 1) = v21;
  swift_bridgeObjectRetain_n();
  v22 = 0;
  *&v23 = 138412290;
  v66 = v23;
  v63 = v12;
  v65 = v12;
  while (v18)
  {
LABEL_7:
    v25 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v26 = v25 | (v22 << 6);
    v27 = (*(*(&v70 + 1) + 48) + 16 * v26);
    v28 = *v27;
    v29 = v27[1];
    v30 = (*(*(&v70 + 1) + 56) + 88 * v26);
    memcpy(v87, v30, 0x58uLL);
    memcpy(v83, v30, sizeof(v83));
    v84[0] = v28;
    v84[1] = v29;
    memcpy(v85, v83, sizeof(v85));

    sub_232C3B5F0(v87, &v73);
    sub_232C36CD8();
    sub_232BC243C(v31, v32, v33, v34, v35, v36, v37, v38, v63, v65, v66, *(&v66 + 1), v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83[0], v83[1], v83[2], v83[3], v83[4], v83[5]);

    v39 = objc_allocWithZone(MEMORY[0x277CBFED0]);
    sub_232C3B328();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_232C3BD64(isUniquelyReferenced_nonNull_native, v41, v42, v65);
      sub_232B35ECC();
      v65 = v49;
    }

    v44 = *(v65 + 16);
    v43 = *(v65 + 24);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      sub_232BC1BBC(v43);
      v64 = v50;
      sub_232B35ECC();
      v45 = v64;
      v65 = v51;
    }

    *(v65 + 16) = v45;
    v46 = v65 + 16 * v44;
    *(v46 + 32) = v28;
    *(v46 + 40) = v29;
    v47 = sub_232B267AC(v84, &qword_27DDC8098, &qword_232CFE0E0);
    MEMORY[0x238391D50](v47);
    v48 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v48 >> 1)
    {
      sub_232BC1BBC(v48);
      sub_232CEA000();
    }

    sub_232CEA020();
    v63 = v86;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      return;
    }

    if (v24 >= v20)
    {
      break;
    }

    v18 = *(v14 + 8 * v24);
    ++v22;
    if (v18)
    {
      v22 = v24;
      goto LABEL_7;
    }
  }

  if (*(v71 + 152))
  {
    v52 = 32;
  }

  else
  {
    v52 = *(v71 + 128);
  }

  v53 = sub_232C33A68(v52, v63);

  v54 = *(v53 + 16);
  if (v54)
  {
    v84[0] = MEMORY[0x277D84F90];
    sub_232CEA580();
    v55 = 32;
    do
    {
      v56 = *(v53 + v55);
      if (v56 >> 62)
      {
        if (v56 < 0)
        {
          v61 = *(v53 + v55);
        }

        v62 = *(v53 + v55);

        sub_232B124A8(&qword_27DDC8078, &unk_232CFE0B0);
        sub_232CEA600();
      }

      else
      {
        v57 = *(v53 + v55);
        swift_bridgeObjectRetain_n();
        sub_232CEA760();
      }

      v58 = objc_allocWithZone(MEMORY[0x277CBFEB0]);
      sub_232B124A8(&qword_27DDC8078, &unk_232CFE0B0);
      v59 = sub_232CE9FD0();

      [v58 initWithFeatureProviderArray_];

      sub_232CEA560();
      v60 = *(v84[0] + 16);
      sub_232CEA590();
      sub_232CEA5A0();
      sub_232CEA570();
      v55 += 8;
      --v54;
    }

    while (v54);
  }

  sub_232B20A00();
}

void sub_232C36CD8()
{
  sub_232C3BDC0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_232CE9A30();
  v8 = sub_232B48F0C(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_232B20704();
  v15 = v14 - v13;
  v64[0] = sub_232CE9C60();
  if (*(v0 + 152))
  {
    sub_232CE9A20();
    v16 = sub_232CE9A00();
    sub_232CEA1A0();
    sub_232C3BC08();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = sub_232BA73DC();
      *v18 = 0;
      _os_log_impl(&dword_232B02000, v16, v4, "Unable to create a feature map because the configuration wasn't loaded", v18, 2u);
      sub_232B26D28();
    }

    (*(v10 + 8))(v15, v7);
LABEL_40:
    sub_232C3BDE4();
    return;
  }

  v62 = v2;
  v59 = v0;
  v19 = *(v0 + 120);
  v20 = sub_232C459C0();
  if (v19 >= 1)
  {
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v27 = v23;

    sub_232C3B5F0(v6, v63);
    v28 = 1;
    while (1)
    {
      v63[0] = v28;
      sub_232C373B0(v63, v4, v26, v27, v64, v6);
      if (v19 == v28)
      {
        break;
      }

      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        break;
      }
    }

    sub_232C3B64C(v6);
    sub_232B13F74();
    v30 = *(v4 + 48);

    v60 = v24;
    v31 = sub_232B1DFEC(v24, v25, v30);
    v33 = v32;

    if (v33)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = v31;
    }

    sub_232BA5C94();
    v35 = v25;
    v36 = sub_232C45ADC();
    v61 = *(*(v4 + 48) + 16);
    v37 = v61;
    sub_232B13F74();
    v38 = *(*(v4 + 64) + 16);
    v39 = sub_232C45BFC();
    v41 = v40;
    sub_232C431B4();
    swift_isUniquelyReferenced_nonNull_native();
    sub_232C3B9A4();
    sub_232C3BDA8(0x61727563636F6F63, 0xEF746E632065636ELL);
    sub_232C3BB1C();
    swift_isUniquelyReferenced_nonNull_native();
    sub_232C3B9A4();
    v42 = sub_232B209B4();
    sub_232B1F66C(v42, 0xEA0000000000746ELL, v34);
    sub_232C3BB1C();
    swift_isUniquelyReferenced_nonNull_native();
    sub_232C3B9A4();
    v43 = sub_232B20980();
    sub_232B1F66C(v43, 0xE900000000000074, v36);
    sub_232C3BB1C();
    swift_isUniquelyReferenced_nonNull_native();
    sub_232C3B9A4();
    sub_232C3BDA8(0xD000000000000012, 0x8000000232D027C0);
    sub_232C3BB1C();
    swift_isUniquelyReferenced_nonNull_native();
    sub_232C3B9A4();
    sub_232C3BDA8(0xD000000000000013, 0x8000000232D027E0);
    v64[0] = v63[0];
    if (v41)
    {
      if (v39 == v60 && v41 == v35)
      {
      }

      else
      {
        sub_232CEA750();
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_232C3B9A4();
    sub_232C3BDA8(0x6F20656369766564, 0xEC00000072656E77);
    sub_232C3BB1C();
    if (v38)
    {
      v45 = v36 / v38;
    }

    else
    {
      v45 = 0.0;
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_232C3B9A4();
    v46 = sub_232B207EC();
    sub_232B1F66C(v46, v47, v45);
    sub_232C3BB1C();
    if (v61)
    {
      v48 = v34 / v37;
    }

    else
    {
      v48 = 0.0;
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_232C3B9A4();
    sub_232B1F66C(0xD000000000000011, 0x8000000232D02800, v48);
    sub_232C3BB1C();
    swift_isUniquelyReferenced_nonNull_native();
    sub_232C3B9A4();
    v49 = sub_232B20728();
    sub_232B1F66C(v49 & 0xFFFFFFFFFFFFLL | 0x6E20000000000000, 0xEC00000073656D61, v37);
    sub_232C3BB1C();
    v64[0] = v63;
    swift_isUniquelyReferenced_nonNull_native();
    sub_232C3B9A4();
    v50 = sub_232B20728();
    sub_232B1F66C(v50 & 0xFFFFFFFFFFFFLL | 0x6620000000000000, 0xEC00000073656361, v38);
    if ((v62 & 1) != 0 && (v51 = *(v59 + 24)) != 0)
    {
      v52 = v51;
      v53 = sub_232C45710();
      v55 = v54;

      if (v55)
      {
        sub_232C419E8(v53, v55, v26, v27, v63);
        sub_232C41624(v53, v55);

        v56 = sub_232BA5C94();
        sub_232C4181C(v56, v57, v58);

        if (v64[2])
        {
        }

        if (v64[9])
        {
        }

        if (v63[1])
        {
        }

        sub_232C377E8();
      }

      else
      {
      }
    }

    else
    {
    }

    goto LABEL_40;
  }

  __break(1u);
}

uint64_t sub_232C373B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v11 = *a1;
  result = swift_beginAccess();
  v13 = *(a2 + 64);
  if (*(v13 + 16))
  {

    v14 = sub_232B1F160(a3, a4);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);

      v17 = sub_232CEA720();
      MEMORY[0x238391C30](v17);

      if (*(v16 + 16) && (v18 = sub_232B20520(v11), (v19 & 1) != 0))
      {
        v20 = *(*(v16 + 56) + 8 * v18);

        v21 = v20;
      }

      else
      {

        v21 = 0.0;
      }

      v22 = *a5;
      swift_isUniquelyReferenced_nonNull_native();
      v47 = *a5;
      sub_232B1F66C(0x746E635F65636166, 0xE90000000000005FLL, v21);
      *a5 = v47;

      v23 = sub_232CEA720();
      MEMORY[0x238391C30](v23);

      v24 = a6[3];
      v25 = 0.0;
      v26 = 0.0;
      if (*(v24 + 16))
      {
        v27 = sub_232B20520(v11);
        if (v28)
        {
          v26 = *(*(v24 + 56) + 8 * v27);
        }
      }

      v29 = *a5;
      swift_isUniquelyReferenced_nonNull_native();
      v48 = *a5;
      sub_232B1F66C(0xD00000000000001ALL, 0x8000000232D029C0, v26);
      *a5 = v48;

      v30 = sub_232CEA720();
      MEMORY[0x238391C30](v30);

      v31 = a6[4];
      if (*(v31 + 16))
      {
        v32 = sub_232B20520(v11);
        if (v33)
        {
          v25 = *(*(v31 + 56) + 8 * v32);
        }
      }

      v34 = *a5;
      swift_isUniquelyReferenced_nonNull_native();
      v49 = *a5;
      sub_232B1F66C(0xD00000000000001CLL, 0x8000000232D029E0, v25);
      *a5 = v49;

      v35 = sub_232CEA720();
      MEMORY[0x238391C30](v35);

      v36 = *a6;
      v37 = 0.0;
      v38 = 0.0;
      if (*(*a6 + 16))
      {
        v39 = sub_232B20520(v11);
        if (v40)
        {
          v38 = *(*(v36 + 56) + 8 * v39);
        }
      }

      v41 = *a5;
      swift_isUniquelyReferenced_nonNull_native();
      v50 = *a5;
      sub_232B1F66C(0xD00000000000001ALL, 0x8000000232D02A00, v38);
      *a5 = v50;

      v42 = sub_232CEA720();
      MEMORY[0x238391C30](v42);

      v43 = a6[2];
      if (*(v43 + 16))
      {
        v44 = sub_232B20520(v11);
        if (v45)
        {
          v37 = *(*(v43 + 56) + 8 * v44);
        }
      }

      v46 = *a5;
      swift_isUniquelyReferenced_nonNull_native();
      v51 = *a5;
      sub_232B1F66C(0xD00000000000001BLL, 0x8000000232D02A40, v37);
      *a5 = v51;
    }
  }

  return result;
}

void sub_232C377E8()
{
  sub_232C3BDC0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_232CE9A30();
  v10 = sub_232B48F0C(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_232B20704();
  v135 = v2;
  if (*(v0 + 152))
  {

    sub_232CE9A20();
    v15 = sub_232CE9A00();
    v16 = sub_232CEA1A0();
    if (sub_232BA6EB8(v16))
    {
      v17 = sub_232BA73DC();
      sub_232BD4280(v17);
      sub_232C3BA24(&dword_232B02000, v18, v19, "Unable to update feature map because the configuration wasn't loaded");
      sub_232BA66EC();
    }

    v20 = *(v12 + 8);
    v21 = sub_232B35090();
    v22(v21);
    goto LABEL_66;
  }

  v23 = *(v0 + 120);
  if (v8)
  {
    v24 = *(v8 + 16);

    v25 = 0.0;
    if (v24)
    {
      v26 = sub_232C3BBD8();
      v28 = sub_232B1F160(v26, v27);
      if (v29)
      {
        v25 = *(*(v8 + 56) + 8 * v28);
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    v30 = sub_232C3BBD8();
    sub_232B1F160(v30, v31);
    v32 = *(v2 + 16);
    sub_232C3BD38();
    if (__OFADD__(v35, v36))
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v37 = v33;
    v38 = v34;
    sub_232B124A8(&qword_27DDC67B8, &unk_232CFE0C0);
    if (sub_232CEA5C0())
    {
      v39 = sub_232C3BBD8();
      v41 = sub_232B1F160(v39, v40);
      if ((v38 & 1) != (v42 & 1))
      {
        goto LABEL_74;
      }

      v37 = v41;
    }

    if ((v38 & 1) == 0)
    {
      sub_232B6479C(v37, 0x6320797469746E65, 0xEA0000000000746ELL, v2);
    }

    *(*(v2 + 56) + 8 * v37) = v25 + *(*(v2 + 56) + 8 * v37);
    if (*(v8 + 16))
    {
      sub_232C3BADC();
      v44 = sub_232B1F160(0x6E20657571696E75, v43);
      if (v45)
      {
        v46 = *(*(v8 + 56) + 8 * v44);
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_232C3BADC();
    v47 = sub_232C3BC14();
    sub_232B1F66C(0x6E20657571696E75, v48, v47);
    v135 = v2;
  }

  else
  {
  }

  sub_232C3BCFC();
  if (!v6)
  {
    goto LABEL_41;
  }

  if (v23 < 1)
  {
    goto LABEL_69;
  }

  sub_232C33510(1, v23, &v135, v6, sub_232C38008);
  v49 = 0.0;
  if (*(v6 + 16))
  {
    v50 = sub_232C3BBF8();
    v52 = sub_232B1F160(v50, v51);
    if (v53)
    {
      v49 = *(*(v6 + 56) + 8 * v52);
    }
  }

  v54 = v135;
  swift_isUniquelyReferenced_nonNull_native();
  v55 = sub_232C3BBF8();
  sub_232B1F160(v55, v56);
  v57 = *(v54 + 16);
  sub_232C3BD38();
  if (__OFADD__(v60, v61))
  {
    goto LABEL_70;
  }

  v62 = v58;
  v63 = v59;
  sub_232B124A8(&qword_27DDC67B8, &unk_232CFE0C0);
  if (sub_232CEA5C0())
  {
    v64 = sub_232B20980();
    v65 = sub_232B1F160(v64, 0xE900000000000074);
    if ((v63 & 1) != (v66 & 1))
    {
      goto LABEL_74;
    }

    v62 = v65;
  }

  v135 = v54;
  if ((v63 & 1) == 0)
  {
    sub_232B6479C(v62, 0x6E63206567616D69, 0xE900000000000074, v54);
  }

  *(*(v54 + 56) + 8 * v62) = v49 + *(*(v54 + 56) + 8 * v62);
  v67 = 0;
  if (*(v6 + 16))
  {
    sub_232C3BA90();
    v70 = sub_232B1F160(v68, v69);
    if (v71)
    {
      v67 = *(*(v6 + 56) + 8 * v70);
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_232C3BA90();
  sub_232B1F160(v72, v73);
  v75 = v74;
  v76 = *(v54 + 16);
  sub_232C3BD38();
  if (__OFADD__(v78, v79))
  {
    goto LABEL_72;
  }

  v80 = v77;
  v2 = v54;
  if (sub_232CEA5C0())
  {
    sub_232C3BA90();
    v83 = sub_232B1F160(v81, v82);
    if ((v75 & 1) != (v84 & 1))
    {
      goto LABEL_74;
    }

    v80 = v83;
  }

  v135 = v54;
  if ((v75 & 1) == 0)
  {
    sub_232B6479C(v80, 0x6620657571696E75, 0xEC00000073656361, v54);
  }

  *(*(v54 + 56) + 8 * v80) = v67;
  sub_232C3BCFC();
LABEL_41:
  if (*(v2 + 16))
  {
    v85 = sub_232B209B4();
    v86 = sub_232B1F160(v85, 0xEA0000000000746ELL);
    if (v87)
    {
      v88 = *(*(v2 + 56) + 8 * v86);
    }

    if (*(v2 + 16))
    {
      v89 = sub_232C3BBF8();
      v91 = sub_232B1F160(v89, v90);
      if (v92)
      {
        v93 = *(*(v2 + 56) + 8 * v91);
      }

      if (*(v2 + 16))
      {
        sub_232B20728();
        sub_232C3BA90();
        v96 = sub_232B1F160(v94, v95);
        if (v97)
        {
          v98 = *(*(v2 + 56) + 8 * v96);
        }

        if (*(v2 + 16))
        {
          sub_232B20728();
          sub_232C3BADC();
          v101 = sub_232B1F160(v99, v100);
          if (v102)
          {
            v103 = *(*(v2 + 56) + 8 * v101);
          }
        }
      }
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  v104 = sub_232C3BC14();
  sub_232B1F66C(v105, v106, v104);
  swift_isUniquelyReferenced_nonNull_native();
  v107 = sub_232C3BC14();
  sub_232B1F66C(v108, v109, v107);
  swift_isUniquelyReferenced_nonNull_native();
  sub_232B207EC();
  v110 = sub_232C3BC14();
  sub_232B1F66C(v111, v112, v110);
  swift_isUniquelyReferenced_nonNull_native();
  v113 = sub_232C3BC14();
  sub_232B1F66C(0xD000000000000011, v114, v113);
  v135 = v2;
  if (!v4)
  {
    sub_232C3BC50();
LABEL_66:
    v134 = 0;
LABEL_67:
    sub_232B0D210(v134);
    sub_232C3BDE4();
    return;
  }

  if (v23 < 1)
  {
    goto LABEL_71;
  }

  sub_232C33510(1, v23, &v135, v4, sub_232C3822C);
  v115 = 0.0;
  if (*(v4 + 16))
  {
    v116 = sub_232BA5C94();
    v118 = sub_232B1F160(v116, v117);
    if (v119)
    {
      v115 = *(*(v4 + 56) + 8 * v118);
    }
  }

  v120 = v135;
  swift_isUniquelyReferenced_nonNull_native();
  v121 = sub_232BA5C94();
  sub_232B1F160(v121, v122);
  v123 = *(v120 + 16);
  sub_232C3BD38();
  if (__OFADD__(v126, v127))
  {
    goto LABEL_73;
  }

  v128 = v124;
  v129 = v125;
  sub_232B124A8(&qword_27DDC67B8, &unk_232CFE0C0);
  if ((sub_232CEA5C0() & 1) == 0)
  {
LABEL_62:
    if ((v129 & 1) == 0)
    {
      sub_232B6479C(v128, 0x61727563636F6F63, 0xEF746E632065636ELL, v120);
    }

    *(*(v120 + 56) + 8 * v128) = v115 + *(*(v120 + 56) + 8 * v128);
    sub_232C3BC50();
    v134 = sub_232C3B988;
    goto LABEL_67;
  }

  v130 = sub_232BA5C94();
  v132 = sub_232B1F160(v130, v131);
  if ((v129 & 1) == (v133 & 1))
  {
    v128 = v132;
    goto LABEL_62;
  }

LABEL_74:
  sub_232CEA7A0();
  __break(1u);
}

void sub_232C38008(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = sub_232CEA720();
  MEMORY[0x238391C30](v6);

  strcpy(v23, "face_cntface_cnt_");
  v7 = sub_232CEA720();
  WORD1(v23[2]) = 0;
  HIDWORD(v23[2]) = -385875968;
  MEMORY[0x238391C30](v7);

  if (*(a3 + 16))
  {
    v8 = sub_232B1F160(v23[1], v23[2]);
    v10 = v9;

    v11 = 0.0;
    if (v10)
    {
      v11 = *(*(a3 + 56) + 8 * v8);
    }
  }

  else
  {

    v11 = 0.0;
  }

  v12 = *a2;
  swift_isUniquelyReferenced_nonNull_native();
  v23[1] = *a2;
  v13 = v23[1];
  *a2 = 0x8000000000000000;
  v14 = v23[0];
  v15 = sub_232B1F160(v23[0], 0xE90000000000005FLL);
  if (__OFADD__(*(v13 + 16), (v16 & 1) == 0))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v15;
  v18 = v16;
  sub_232B124A8(&qword_27DDC67B8, &unk_232CFE0C0);
  if (sub_232CEA5C0())
  {
    v19 = sub_232B1F160(v23[0], 0xE90000000000005FLL);
    if ((v18 & 1) == (v20 & 1))
    {
      v17 = v19;
      goto LABEL_9;
    }

LABEL_14:
    sub_232CEA7A0();
    __break(1u);
    return;
  }

LABEL_9:
  v21 = *a2;
  *a2 = v23[1];

  v22 = *a2;
  if (v18)
  {
  }

  else
  {
    sub_232B6479C(v17, v14, 0xE90000000000005FLL, *a2);
  }

  *(*(v22 + 56) + 8 * v17) = v11 + *(*(v22 + 56) + 8 * v17);
}

void sub_232C3822C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = sub_232CEA720();
  MEMORY[0x238391C30](v6);

  v7 = sub_232CEA720();
  MEMORY[0x238391C30](v7);

  if (*(a3 + 16))
  {
    v8 = sub_232B1F160(0xD00000000000001ALL, 0x8000000232D029C0);
    v10 = v9;

    v11 = 0.0;
    if (v10)
    {
      v11 = *(*(a3 + 56) + 8 * v8);
    }
  }

  else
  {

    v11 = 0.0;
  }

  v70 = a3;
  v12 = *a2;
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *a2;
  v71 = *a2;
  *a2 = 0x8000000000000000;
  v14 = sub_232B1F160(0xD00000000000001ALL, 0x8000000232D029C0);
  if (__OFADD__(*(v13 + 16), (v15 & 1) == 0))
  {
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v16 = v14;
  v17 = v15;
  sub_232B124A8(&qword_27DDC67B8, &unk_232CFE0C0);
  if (sub_232CEA5C0())
  {
    v18 = sub_232B1F160(0xD00000000000001ALL, 0x8000000232D029C0);
    if ((v17 & 1) != (v19 & 1))
    {
      goto LABEL_50;
    }

    v16 = v18;
  }

  v20 = *a2;
  *a2 = v71;

  v21 = *a2;
  if (v17)
  {
  }

  else
  {
    sub_232B6479C(v16, 0xD00000000000001ALL, 0x8000000232D029C0, *a2);
  }

  *(*(v21 + 56) + 8 * v16) = v11 + *(*(v21 + 56) + 8 * v16);
  v22 = sub_232CEA720();
  MEMORY[0x238391C30](v22);

  v23 = sub_232CEA720();
  MEMORY[0x238391C30](v23);

  if (*(v70 + 16))
  {
    v24 = sub_232B1F160(0xD00000000000001CLL, 0x8000000232D029E0);
    v26 = v25;

    v27 = 0.0;
    if (v26)
    {
      v27 = *(*(v70 + 56) + 8 * v24);
    }
  }

  else
  {

    v27 = 0.0;
  }

  v28 = *a2;
  swift_isUniquelyReferenced_nonNull_native();
  v29 = *a2;
  v72 = *a2;
  *a2 = 0x8000000000000000;
  v30 = sub_232B1F160(0xD00000000000001CLL, 0x8000000232D029E0);
  v32 = v31;
  if (__OFADD__(*(v29 + 16), (v31 & 1) == 0))
  {
    goto LABEL_47;
  }

  v33 = v30;
  if (sub_232CEA5C0())
  {
    v34 = sub_232B1F160(0xD00000000000001CLL, 0x8000000232D029E0);
    if ((v32 & 1) != (v35 & 1))
    {
      goto LABEL_50;
    }

    v33 = v34;
  }

  v36 = *a2;
  *a2 = v72;

  v37 = *a2;
  if (v32)
  {
  }

  else
  {
    sub_232B6479C(v33, 0xD00000000000001CLL, 0x8000000232D029E0, *a2);
  }

  *(*(v37 + 56) + 8 * v33) = v27 + *(*(v37 + 56) + 8 * v33);
  v38 = sub_232CEA720();
  MEMORY[0x238391C30](v38);

  v39 = sub_232CEA720();
  MEMORY[0x238391C30](v39);

  if (*(v70 + 16))
  {
    v40 = sub_232B1F160(0xD00000000000001ALL, 0x8000000232D02A00);
    v42 = v41;

    v43 = 0.0;
    if (v42)
    {
      v43 = *(*(v70 + 56) + 8 * v40);
    }
  }

  else
  {

    v43 = 0.0;
  }

  v44 = *a2;
  swift_isUniquelyReferenced_nonNull_native();
  v45 = *a2;
  v73 = *a2;
  *a2 = 0x8000000000000000;
  v46 = sub_232B1F160(0xD00000000000001ALL, 0x8000000232D02A00);
  v48 = v47;
  if (__OFADD__(*(v45 + 16), (v47 & 1) == 0))
  {
    goto LABEL_48;
  }

  v49 = v46;
  if (sub_232CEA5C0())
  {
    v50 = sub_232B1F160(0xD00000000000001ALL, 0x8000000232D02A00);
    if ((v48 & 1) != (v51 & 1))
    {
      goto LABEL_50;
    }

    v49 = v50;
  }

  v52 = *a2;
  *a2 = v73;

  v53 = *a2;
  if (v48)
  {
  }

  else
  {
    sub_232B6479C(v49, 0xD00000000000001ALL, 0x8000000232D02A00, *a2);
  }

  *(*(v53 + 56) + 8 * v49) = v43 + *(*(v53 + 56) + 8 * v49);
  v54 = sub_232CEA720();
  MEMORY[0x238391C30](v54);

  v55 = sub_232CEA720();
  MEMORY[0x238391C30](v55);

  if (*(v70 + 16))
  {
    v56 = sub_232B1F160(0xD00000000000001BLL, 0x8000000232D02A40);
    v58 = v57;

    v59 = 0.0;
    if (v58)
    {
      v59 = *(*(v70 + 56) + 8 * v56);
    }
  }

  else
  {

    v59 = 0.0;
  }

  v60 = *a2;
  swift_isUniquelyReferenced_nonNull_native();
  v61 = *a2;
  v74 = *a2;
  *a2 = 0x8000000000000000;
  v62 = sub_232B1F160(0xD00000000000001BLL, 0x8000000232D02A40);
  v64 = v63;
  if (__OFADD__(*(v61 + 16), (v63 & 1) == 0))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v65 = v62;
  if (sub_232CEA5C0())
  {
    v66 = sub_232B1F160(0xD00000000000001BLL, 0x8000000232D02A40);
    if ((v64 & 1) == (v67 & 1))
    {
      v65 = v66;
      goto LABEL_42;
    }

LABEL_50:
    sub_232CEA7A0();
    __break(1u);
    return;
  }

LABEL_42:
  v68 = *a2;
  *a2 = v74;

  v69 = *a2;
  if (v64)
  {
  }

  else
  {
    sub_232B6479C(v65, 0xD00000000000001BLL, 0x8000000232D02A40, *a2);
  }

  *(*(v69 + 56) + 8 * v65) = v59 + *(*(v69 + 56) + 8 * v65);
}

void sub_232C3893C()
{
  sub_232B35110();
  v2 = v1;
  v3 = sub_232CE9A30();
  v4 = sub_232B48F0C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_232B3516C();
  MEMORY[0x28223BE20](v9);
  sub_232C3BD24();
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  if (*(v0 + 152))
  {
    sub_232CE9A20();
    v15 = sub_232CE9A00();
    v16 = sub_232CEA1C0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = sub_232BA73DC();
      *v17 = 0;
      _os_log_impl(&dword_232B02000, v15, v16, "Unable to aggregate stats on conversation because the configuration wasn't loaded", v17, 2u);
      sub_232BA6A84();
    }

    v18 = *(v6 + 8);
    v19 = sub_232BA5C94();
    v20(v19);
LABEL_28:
    sub_232B20A00();
  }

  else
  {
    v85 = &v84 - v12;
    v86 = v14;
    v87 = v13;
    v89 = v6;
    v88 = v3;
    sub_232C3BB28();
    sub_232B13F74();
    v21 = v2[2];
    v23 = *(v21 + 64);
    v22 = v21 + 64;
    v24 = *(v2[2] + 32);
    sub_232B34F88();
    v27 = v26 & v25;
    v29 = (v28 + 63) >> 6;
    v92 = v30;
    swift_bridgeObjectRetain_n();
    v31 = 0;
    v91 = v22;
    v90 = v29;
    if (!v27)
    {
      goto LABEL_7;
    }

    while (2)
    {
      v32 = v31;
LABEL_10:
      v33 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v34 = *(v92[7] + ((v32 << 9) | (8 * v33)));
      sub_232B13F74();
      v35 = *(v34 + 32);
      v36 = sub_232B26B10(v35);

      for (i = 0; v36 != i; ++i)
      {
        if ((v35 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2383922C0](i, v35);
        }

        else
        {
          if (i >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v38 = *(v35 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v39 = sub_232C3BD44();
        sub_232C3902C(v39, v40, v41, v42, v43);
      }

      v31 = v32;
      v22 = v91;
      v29 = v90;
      if (v27)
      {
        continue;
      }

      break;
    }

LABEL_7:
    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v32 >= v29)
      {

        v44 = v85;
        sub_232CE9A20();

        v45 = sub_232CE9A00();
        v46 = sub_232CEA1B0();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = sub_232BC1F80();
          v48 = swift_slowAlloc();
          v93[0] = v48;
          *v47 = 136315138;
          sub_232B13F74();
          v49 = v2[8];

          sub_232B124A8(&qword_27DDC8090, &qword_232CFE0D8);
          v50 = sub_232CE9C50();
          v52 = v51;

          v53 = sub_232BAD2D4(v50, v52, v93);

          *(v47 + 4) = v53;
          _os_log_impl(&dword_232B02000, v45, v46, "Distinct images with counts: %s", v47, 0xCu);
          sub_232B2040C(v48);
          sub_232BA6A84();
          sub_232BA6A84();
        }

        v54 = *(v89 + 8);
        v55 = v88;
        v54(v44, v88);
        v56 = v86;
        sub_232CE9A20();

        v57 = sub_232CE9A00();
        v58 = sub_232CEA1B0();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = sub_232BC1F80();
          v92 = swift_slowAlloc();
          v93[0] = v92;
          *v59 = 136315138;
          sub_232B13F74();
          v60 = v2[6];

          v61 = sub_232CE9C50();
          v62 = v55;
          v63 = v54;
          v65 = v64;

          v66 = sub_232BAD2D4(v61, v65, v93);
          v54 = v63;
          v55 = v62;

          *(v59 + 4) = v66;
          _os_log_impl(&dword_232B02000, v57, v58, "Distinct entities with counts: %s", v59, 0xCu);
          sub_232B2040C(v92);
          sub_232BA6A84();
          sub_232BA6A84();

          sub_232C3BBE8();
          v67 = v56;
          v68 = v62;
        }

        else
        {

          sub_232C3BBE8();
          v67 = v56;
          v68 = v55;
        }

        v54(v67, v68);
        v69 = v87;
        sub_232CE9A20();

        v70 = sub_232CE9A00();
        v71 = sub_232CEA1B0();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = sub_232BC1F80();
          v73 = swift_slowAlloc();
          v94 = v73;
          *v72 = 136315138;
          sub_232B13F74();
          v74 = v2[7];

          v75 = sub_232CE9C50();
          v77 = v76;

          v78 = sub_232BAD2D4(v75, v77, &v94);

          *(v72 + 4) = v78;
          sub_232C3BD58();
          _os_log_impl(v79, v80, v81, v82, v83, 0xCu);
          sub_232B2040C(v73);
          sub_232BA6A84();
          sub_232B26D28();
        }

        sub_232C3BBE8();
        v54(v69, v55);
        goto LABEL_28;
      }

      v27 = *(v22 + 8 * v32);
      ++v31;
      if (v27)
      {
        goto LABEL_10;
      }
    }

LABEL_31:
    __break(1u);
  }
}