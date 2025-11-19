uint64_t AppleMusicEventEntryView.latestSongEventId()()
{
  v1 = *(v0 + 16);
  sub_1ABA7E2C0();
  return sub_1ABAEF83C(v2);
}

uint64_t AppleMusicEventEntryView.earliestSongEventId()()
{
  v1 = *(v0 + 16);
  sub_1ABA7E2C0();
  return sub_1ABAEF83C(v2);
}

uint64_t AppleMusicEventEntryView.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AppleMusicEventEntryView.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1ABAEB984@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1ABAD219C(&qword_1EB4D1DE8, &unk_1ABF34848);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  sub_1ABAD219C(&qword_1EB4D12D0, &unk_1ABF347E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1ABF34740;
  v12 = sub_1ABF22174();
  v13 = MEMORY[0x1E699FDA8];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  sub_1ABA93DC0((v11 + 32));
  if (qword_1ED86CF78 != -1)
  {
    swift_once();
  }

  v14 = sub_1ABF22D14();
  sub_1ABA7AA24(v14, qword_1EB549598);
  if (a1)
  {
    sub_1ABF22974();
  }

  else
  {
    sub_1ABF22964();
  }

  sub_1ABAE8970();
  sub_1ABF221B4();

  sub_1ABAEFF5C(a2, &v16, &qword_1EB4D1D88);
  if (!v17)
  {
    return sub_1ABAB08B8(&v16, &qword_1EB4D1D88, &unk_1ABF347C0);
  }

  sub_1ABA946C0(&v16, v18);
  sub_1ABAB47C4(&qword_1EB4D1DF0, &qword_1EB4D1DE8, &unk_1ABF34848);
  sub_1ABF225A4();
  sub_1ABA84B54(v18);
  (*(v7 + 8))(a3, v6);
  return (*(v7 + 32))(a3, v10, v6);
}

uint64_t sub_1ABAEBC14@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1ABAD219C(&qword_1EB4D1DC0, &unk_1ABF34820);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  sub_1ABAD219C(&qword_1EB4D12D0, &unk_1ABF347E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1ABF34740;
  v12 = sub_1ABF22174();
  v13 = MEMORY[0x1E699FDA8];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  sub_1ABA93DC0((v11 + 32));
  if (qword_1ED86CF78 != -1)
  {
    swift_once();
  }

  v14 = sub_1ABF22D14();
  sub_1ABA7AA24(v14, qword_1EB549598);
  if (a1)
  {
    sub_1ABF22974();
  }

  else
  {
    sub_1ABF22964();
  }

  sub_1ABAEFD08();
  sub_1ABF221B4();

  sub_1ABAEFF5C(a2, &v16, &qword_1EB4D1D88);
  if (!v17)
  {
    return sub_1ABAB08B8(&v16, &qword_1EB4D1D88, &unk_1ABF347C0);
  }

  sub_1ABA946C0(&v16, v18);
  sub_1ABAB47C4(&qword_1EB4D1DC8, &qword_1EB4D1DC0, &unk_1ABF34820);
  sub_1ABF225A4();
  sub_1ABA84B54(v18);
  (*(v7 + 8))(a3, v6);
  return (*(v7 + 32))(a3, v10, v6);
}

uint64_t sub_1ABAEBEA4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1ABAD219C(&qword_1EB4D1D90, &unk_1ABF347D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  sub_1ABAD219C(&qword_1EB4D12D0, &unk_1ABF347E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1ABF34740;
  v12 = sub_1ABF22174();
  v13 = MEMORY[0x1E699FDA8];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  sub_1ABA93DC0((v11 + 32));
  if (qword_1ED86CF78 != -1)
  {
    swift_once();
  }

  v14 = sub_1ABF22D14();
  sub_1ABA7AA24(v14, qword_1EB549598);
  if (a1)
  {
    sub_1ABF22974();
  }

  else
  {
    sub_1ABF22964();
  }

  sub_1ABAEFA70();
  sub_1ABF221B4();

  sub_1ABAEFF5C(a2, &v16, &qword_1EB4D1D88);
  if (!v17)
  {
    return sub_1ABAB08B8(&v16, &qword_1EB4D1D88, &unk_1ABF347C0);
  }

  sub_1ABA946C0(&v16, v18);
  sub_1ABAB47C4(&qword_1EB4CF710, &qword_1EB4D1D90, &unk_1ABF347D0);
  sub_1ABF225A4();
  sub_1ABA84B54(v18);
  (*(v7 + 8))(a3, v6);
  return (*(v7 + 32))(a3, v10, v6);
}

uint64_t sub_1ABAEC134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t))
{
  v7 = a1;
  v8 = sub_1ABAF00D4(a1, a2, a3);
  v10 = sub_1ABAD219C(v8, v9);
  v11 = sub_1ABA7BB64(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v23 - v16;
  a5(v7 & 1, a2);
  sub_1ABAD219C(&qword_1EB4DB3F0, &unk_1ABF4C7B0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1ABF34740;
  if (qword_1EB4CED30 != -1)
  {
    swift_once();
  }

  v19 = sub_1ABF22D14();
  sub_1ABA7AA24(v19, qword_1EB549868);
  v20 = MEMORY[0x1E69A0038];
  *(v18 + 56) = v19;
  *(v18 + 64) = v20;
  sub_1ABA93DC0((v18 + 32));
  sub_1ABA7D08C(v19);
  (*(v21 + 16))();
  sub_1ABF22904();

  return (*(v13 + 8))(v17, v10);
}

uint64_t sub_1ABAEC2F4(uint64_t a1, int a2)
{
  v35 = a1;
  LODWORD(v34) = a2;
  v33 = *v2;
  v3 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v33 - v5;
  v7 = sub_1ABAD219C(&qword_1EB4D1A80, &qword_1ABF33C10);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  v15 = v2[3];
  v16 = v2[4];
  swift_getObjectType();
  v37 = v34 & 1;
  v38 = v35;
  v39 = v33;
  sub_1ABAD219C(&qword_1EB4D1E08, &qword_1ABF34868);
  v17 = v36;
  sub_1ABF22454();
  if (!v17)
  {
    v36 = v8;
    v18 = *(v41 + 16);
    v34 = v41;
    if (v18)
    {
      v35 = v7;
      v19 = (v41 + 56);
      v16 = MEMORY[0x1E69E7CC0];
      do
      {
        v20 = *(v19 - 3);
        v21 = *(v19 - 2);
        if (*v19)
        {
          v22 = 1;
        }

        else
        {
          v23 = *(v19 - 1);
          sub_1ABF21E04();
          v22 = 0;
        }

        v24 = sub_1ABF21EB4();
        sub_1ABA7B9B4(v6, v22, 1, v24);
        sub_1ABC6C238();
        v25 = v40;
        v26 = v35;
        v27 = v12 + *(v35 + 36);
        sub_1ABF21E04();
        sub_1ABAF0010(v6, v12 + *(v26 + 40), &qword_1EB4D9BF0);
        *v12 = v25;
        sub_1ABAF0010(v12, v14, &qword_1EB4D1A80);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = *(v16 + 16);
          sub_1ABAD9340();
          v16 = v30;
        }

        v28 = *(v16 + 16);
        if (v28 >= *(v16 + 24) >> 1)
        {
          sub_1ABAD9340();
          v16 = v31;
        }

        *(v16 + 16) = v28 + 1;
        sub_1ABAF0010(v14, v16 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v28, &qword_1EB4D1A80);
        v19 += 32;
        --v18;
      }

      while (v18);
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }
  }

  return v16;
}

uint64_t sub_1ABAEC698(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v4 = *v2;
  v5 = sub_1ABAD219C(&qword_1EB4D18F8, &qword_1ABF33A88);
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = v2[3];
  v13 = v2[4];
  swift_getObjectType();
  v32 = a2 & 1;
  v33 = v29;
  v34 = v4;
  sub_1ABAD219C(&qword_1EB4D1DD8, &qword_1ABF34838);
  v14 = v30;
  sub_1ABF22454();
  if (!v14)
  {
    v15 = *(v36 + 16);
    v30 = v36;
    if (v15)
    {
      v16 = (v36 + 48);
      a2 = MEMORY[0x1E69E7CC0];
      do
      {
        v18 = *(v16 - 1);
        v17 = *v16;
        sub_1ABC4A730(&v35, *(v16 - 2));
        v19 = v35;
        v20 = v8 + *(v5 + 36);
        sub_1ABF21E04();
        v21 = v8 + *(v5 + 40);
        sub_1ABF21E04();
        *v8 = v19;
        sub_1ABAF0010(v8, v11, &qword_1EB4D18F8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = *(a2 + 16);
          sub_1ABADABC8();
          a2 = v25;
        }

        v22 = *(a2 + 16);
        v23 = v31;
        if (v22 >= *(a2 + 24) >> 1)
        {
          sub_1ABADABC8();
          v23 = v31;
          a2 = v26;
        }

        *(a2 + 16) = v22 + 1;
        sub_1ABAF0010(v11, a2 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v22, &qword_1EB4D18F8);
        v16 += 3;
        --v15;
      }

      while (v15);
    }

    else
    {
      a2 = MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

uint64_t sub_1ABAEC980(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v4 = *v2;
  v5 = sub_1ABAD219C(&qword_1EB4D1388, &qword_1ABF33510);
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = v2[3];
  v13 = v2[4];
  swift_getObjectType();
  v33 = a2 & 1;
  v34 = v30;
  v35 = v4;
  sub_1ABAD219C(&qword_1EB4D1DA8, &qword_1ABF34808);
  v14 = v31;
  sub_1ABF22454();
  if (!v14)
  {
    v15 = *(v37 + 16);
    v31 = v37;
    if (v15)
    {
      v16 = (v37 + 48);
      a2 = MEMORY[0x1E69E7CC0];
      do
      {
        v17 = *(v16 - 2);
        v19 = *(v16 - 1);
        v18 = *v16;
        sub_1ABC4A730(&v36);
        v20 = v36;
        v21 = v8 + *(v5 + 36);
        sub_1ABF21E04();
        v22 = v8 + *(v5 + 40);
        sub_1ABF21E04();
        *v8 = v20;
        sub_1ABAF0010(v8, v11, &qword_1EB4D1388);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = *(a2 + 16);
          sub_1ABADC518();
          a2 = v26;
        }

        v23 = *(a2 + 16);
        v24 = v32;
        if (v23 >= *(a2 + 24) >> 1)
        {
          sub_1ABADC518();
          v24 = v32;
          a2 = v27;
        }

        *(a2 + 16) = v23 + 1;
        sub_1ABAF0010(v11, a2 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v23, &qword_1EB4D1388);
        v16 += 3;
        --v15;
      }

      while (v15);
    }

    else
    {
      a2 = MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

uint64_t sub_1ABAECC68(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_1ABAD219C(&qword_1EB4D1DE8, &unk_1ABF34848);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  sub_1ABAEB984(a2 & 1, a3, v12 - v8);
  sub_1ABAB47C4(&qword_1EB4D1E00, &qword_1EB4D1DE8, &unk_1ABF34848);
  sub_1ABAE891C();
  v10 = sub_1ABF22234();
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t sub_1ABAECDC4(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_1ABAD219C(&qword_1EB4D1DC0, &unk_1ABF34820);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  sub_1ABAEBC14(a2 & 1, a3, v12 - v8);
  sub_1ABAB47C4(&qword_1EB4CF708, &qword_1EB4D1DC0, &unk_1ABF34820);
  sub_1ABAEFDE0();
  v10 = sub_1ABF22234();
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t sub_1ABAECF20(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_1ABAD219C(&qword_1EB4D1D90, &unk_1ABF347D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  sub_1ABAEBEA4(a2 & 1, a3, v12 - v8);
  sub_1ABAB47C4(&qword_1EB4CF718, &qword_1EB4D1D90, &unk_1ABF347D0);
  sub_1ABAEFBB0();
  v10 = sub_1ABF22234();
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t sub_1ABAED07C(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *), uint64_t a5)
{
  v45 = a5;
  v46 = a4;
  v42 = a3;
  v43 = a1;
  v6 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v41 - v8;
  v41 = sub_1ABAD219C(&qword_1EB4D1A80, &qword_1ABF33C10);
  v10 = *(*(v41 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v41);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v41 - v14;
  v16 = sub_1ABAD219C(&qword_1EB4D1DE8, &unk_1ABF34848);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v41 - v19;
  sub_1ABAEB984(a2 & 1, v42, &v41 - v19);
  sub_1ABAB47C4(&qword_1EB4D1E00, &qword_1EB4D1DE8, &unk_1ABF34848);
  sub_1ABAE891C();
  v21 = v44;
  v22 = sub_1ABF22224();
  result = (*(v17 + 8))(v20, v16);
  if (!v21)
  {
    v43 = v22;
    v44 = v15;
    v31 = v41;
    while (1)
    {
      sub_1ABE7EB54(result, v24, v25, v26, v27, v28, v29, v30, v41, v42, v43, v44, SBYTE1(v44));
      if (v49)
      {
        break;
      }

      v32 = v31;
      if (v48)
      {
        v33 = 1;
      }

      else
      {
        sub_1ABF21E04();
        v33 = 0;
      }

      v34 = sub_1ABF21EB4();
      sub_1ABA7B9B4(v9, v33, 1, v34);
      sub_1ABC6C238();
      v35 = v47;
      v31 = v32;
      v36 = v13 + *(v32 + 36);
      sub_1ABF21E04();
      v37 = v9;
      sub_1ABAF0010(v9, v13 + *(v32 + 40), &qword_1EB4D9BF0);
      *v13 = v35;
      v38 = v13;
      v39 = v13;
      v40 = v44;
      sub_1ABAF0010(v39, v44, &qword_1EB4D1A80);
      LOBYTE(v47) = 0;
      v46(v40, &v47);
      result = sub_1ABAB08B8(v40, &qword_1EB4D1A80, &qword_1ABF33C10);
      if (v47)
      {
        break;
      }

      v13 = v38;
      v9 = v37;
    }
  }

  return result;
}

void sub_1ABAED424(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *), uint64_t a5)
{
  v61 = a4;
  v62 = a5;
  v60 = sub_1ABAD219C(&qword_1EB4D18F8, &qword_1ABF33A88);
  v8 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v51 - v11;
  v12 = sub_1ABAD219C(&qword_1EB4D1DC0, &unk_1ABF34820);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v51 - v15;
  sub_1ABAEBC14(a2 & 1, a3, &v51 - v15);
  sub_1ABAB47C4(&qword_1EB4CF708, &qword_1EB4D1DC0, &unk_1ABF34820);
  sub_1ABAEFDE0();
  v17 = sub_1ABF22224();
  v18 = (*(v13 + 8))(v16, v12);
  if (v5)
  {
    return;
  }

  v57 = 181;
  v56 = 1844;
  v55 = 3396;
  v53 = xmmword_1ABF34750;
  v54 = v17;
  while (1)
  {
    sub_1ABE7EED0(v18, v19, v20, v21, v22, v23, v24, v25, v51, v52, v53, SBYTE8(v53));
    if (v68)
    {
LABEL_22:

      return;
    }

    v26 = v65;
    EntityClass.init(intValue:)(SHIBYTE(v65), &v65);
    if (!v66)
    {
      sub_1ABAEFC04();
      v47 = swift_allocError();
      *v48 = v53;
      v48[1] = 0u;
      v48[2] = 0u;
      v48[3] = 0u;
      *(v48 + 57) = 0u;
      goto LABEL_20;
    }

    if (v57 < 55)
    {
      break;
    }

    if (!_Records_GDEntityClass_records)
    {
      goto LABEL_27;
    }

    if (*(_Records_GDEntityClass_records + 0x518) >= v56)
    {
      goto LABEL_25;
    }

    if (*(_Records_GDEntityClass_records + 0x520) >= v55)
    {
      goto LABEL_26;
    }

    v72 = v66;
    v63 = v26;
    if (!_Records_GDEntityClass_classIds[0])
    {
      goto LABEL_29;
    }

    v64 = v65;
    v28 = v67;
    v27 = v68;
    v29 = v69;
    v30 = *(_Records_GDEntityClass_records + 0x510);
    v31 = sub_1ABF23DD4();
    if (!_Records_GDEntityClass_labels)
    {
      goto LABEL_28;
    }

    v33 = v31;
    v34 = v32;
    v35 = sub_1ABF23DD4();
    v70[0] = v33;
    v70[1] = v34;
    v70[2] = v35;
    v70[3] = v36;
    v71 = v30;
    if (v35 == v28 && v27 == v36)
    {
      goto LABEL_17;
    }

    v38 = v35;
    v39 = v36;
    if (sub_1ABF25054())
    {
      goto LABEL_17;
    }

    v65 = v64;
    v66 = v72;
    v67 = v28;
    v68 = v27;
    v69 = v29;
    HIDWORD(v52) = v29;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    LODWORD(v52) = v40;
    v41 = BYTE4(v52);

    if (v52)
    {
LABEL_17:
      sub_1ABA88934(v70);
      sub_1ABAA8FA8(v64, v72);
      v43 = v59;
      v42 = v60;
      v44 = &v59[*(v60 + 36)];
      sub_1ABF21E04();
      v45 = v43 + *(v42 + 40);
      sub_1ABF21E04();
      *v43 = v63;
      v46 = v58;
      sub_1ABAF0010(v43, v58, &qword_1EB4D18F8);
      LOBYTE(v65) = 0;
      v61(v46, &v65);
      v18 = sub_1ABAB08B8(v46, &qword_1EB4D18F8, &qword_1ABF33A88);
      if (v65)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1ABAEFC04();
      v47 = swift_allocError();
      *v49 = v33;
      *(v49 + 8) = v34;
      *(v49 + 16) = v38;
      *(v49 + 24) = v39;
      *(v49 + 32) = v30;
      v50 = v72;
      *(v49 + 40) = v64;
      *(v49 + 48) = v50;
      *(v49 + 56) = v28;
      *(v49 + 64) = v27;
      *(v49 + 72) = v41;
LABEL_20:
      swift_willThrow();
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_1ABAED938(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *), uint64_t a5)
{
  v61 = a4;
  v62 = a5;
  v60 = sub_1ABAD219C(&qword_1EB4D1388, &qword_1ABF33510);
  v8 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v51 - v11;
  v12 = sub_1ABAD219C(&qword_1EB4D1D90, &unk_1ABF347D0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v51 - v15;
  sub_1ABAEBEA4(a2 & 1, a3, &v51 - v15);
  sub_1ABAB47C4(&qword_1EB4CF718, &qword_1EB4D1D90, &unk_1ABF347D0);
  sub_1ABAEFBB0();
  v17 = sub_1ABF22224();
  v18 = (*(v13 + 8))(v16, v12);
  if (v5)
  {
    return;
  }

  v57 = 181;
  v56 = 1844;
  v55 = 3396;
  v53 = xmmword_1ABF34750;
  v54 = v17;
  while (1)
  {
    sub_1ABE7F1E8(v18, v19, v20, v21, v22, v23, v24, v25, v51, v52, v53, SBYTE8(v53));
    if (v68)
    {
LABEL_22:

      return;
    }

    v26 = v65;
    EntityClass.init(intValue:)(SHIBYTE(v65), &v65);
    if (!v66)
    {
      sub_1ABAEFC04();
      v47 = swift_allocError();
      *v48 = v53;
      v48[1] = 0u;
      v48[2] = 0u;
      v48[3] = 0u;
      *(v48 + 57) = 0u;
      goto LABEL_20;
    }

    if (v57 < 55)
    {
      break;
    }

    if (!_Records_GDEntityClass_records)
    {
      goto LABEL_27;
    }

    if (*(_Records_GDEntityClass_records + 0x518) >= v56)
    {
      goto LABEL_25;
    }

    if (*(_Records_GDEntityClass_records + 0x520) >= v55)
    {
      goto LABEL_26;
    }

    v72 = v66;
    v63 = v26;
    if (!_Records_GDEntityClass_classIds[0])
    {
      goto LABEL_29;
    }

    v64 = v65;
    v28 = v67;
    v27 = v68;
    v29 = v69;
    v30 = *(_Records_GDEntityClass_records + 0x510);
    v31 = sub_1ABF23DD4();
    if (!_Records_GDEntityClass_labels)
    {
      goto LABEL_28;
    }

    v33 = v31;
    v34 = v32;
    v35 = sub_1ABF23DD4();
    v70[0] = v33;
    v70[1] = v34;
    v70[2] = v35;
    v70[3] = v36;
    v71 = v30;
    if (v35 == v28 && v27 == v36)
    {
      goto LABEL_17;
    }

    v38 = v35;
    v39 = v36;
    if (sub_1ABF25054())
    {
      goto LABEL_17;
    }

    v65 = v64;
    v66 = v72;
    v67 = v28;
    v68 = v27;
    v69 = v29;
    HIDWORD(v52) = v29;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    LODWORD(v52) = v40;
    v41 = BYTE4(v52);

    if (v52)
    {
LABEL_17:
      sub_1ABA88934(v70);
      sub_1ABAA8FA8(v64, v72);
      v43 = v59;
      v42 = v60;
      v44 = &v59[*(v60 + 36)];
      sub_1ABF21E04();
      v45 = v43 + *(v42 + 40);
      sub_1ABF21E04();
      *v43 = v63;
      v46 = v58;
      sub_1ABAF0010(v43, v58, &qword_1EB4D1388);
      LOBYTE(v65) = 0;
      v61(v46, &v65);
      v18 = sub_1ABAB08B8(v46, &qword_1EB4D1388, &qword_1ABF33510);
      if (v65)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1ABAEFC04();
      v47 = swift_allocError();
      *v49 = v33;
      *(v49 + 8) = v34;
      *(v49 + 16) = v38;
      *(v49 + 24) = v39;
      *(v49 + 32) = v30;
      v50 = v72;
      *(v49 + 40) = v64;
      *(v49 + 48) = v50;
      *(v49 + 56) = v28;
      *(v49 + 64) = v27;
      *(v49 + 72) = v41;
LABEL_20:
      swift_willThrow();
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1ABAEDE4C()
{
  sub_1ABA951EC();
  v2 = sub_1ABAD219C(&qword_1EB4D1A80, &qword_1ABF33C10);
  sub_1ABAA16C4(v2);
  result = sub_1ABAABC4C();
  if (v1)
  {
    return sub_1ABAB08B8(v0, &qword_1EB4D1DF8, &unk_1ABF34858);
  }

  return result;
}

uint64_t sub_1ABAEDEE4()
{
  sub_1ABA951EC();
  v2 = sub_1ABAD219C(&qword_1EB4D18F8, &qword_1ABF33A88);
  sub_1ABAA16C4(v2);
  result = sub_1ABAABC4C();
  if (v1)
  {
    return sub_1ABAB08B8(v0, &qword_1EB4D1DD0, &qword_1ABF34830);
  }

  return result;
}

uint64_t sub_1ABAEDF7C()
{
  sub_1ABA951EC();
  v2 = sub_1ABAD219C(&qword_1EB4D1388, &qword_1ABF33510);
  sub_1ABAA16C4(v2);
  result = sub_1ABAABC4C();
  if (v1)
  {
    return sub_1ABAB08B8(v0, &qword_1EB4D1DB8, &qword_1ABF34818);
  }

  return result;
}

uint64_t sub_1ABAEE014(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v12 = sub_1ABAF00D4(a1, a2, a3);
  sub_1ABAB08B8(v12, v13, v14);
  sub_1ABAEFF5C(a1, a3, a6);
  v15 = sub_1ABAD219C(a6, a7);
  result = sub_1ABA7B9B4(a3, 0, 1, v15);
  *a2 = 1;
  return result;
}

uint64_t sub_1ABAEE224()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = *v0;
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
  result = sub_1ABF22454();
  if (!v1)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1ABAEE4A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  sub_1ABAA1B70();
  v6 = v5;
  sub_1ABF21E14();
  v25[3] = sub_1ABF22D14();
  v25[4] = MEMORY[0x1E69A0050];
  v7 = sub_1ABA93DC0(v25);
  if (v6)
  {
    if (qword_1EB4CED40 != -1)
    {
      v7 = sub_1ABA7D06C();
    }

    v8 = qword_1EB549488;
  }

  else
  {
    if (qword_1ED86CF78 != -1)
    {
      v7 = sub_1ABA8EEC4();
    }

    v8 = qword_1EB549598;
  }

  sub_1ABA7ED20(v7, v8);
  v10 = *(v9 + 16);
  v11 = sub_1ABAA1258();
  v12(v11);
  v26[3] = sub_1ABA7ABA4();
  v26[4] = MEMORY[0x1E699FE60];
  v13 = sub_1ABA93DC0(v26);
  v21 = sub_1ABA95FD4(v13, v14, v15, v16, v17, v18, v19, v20, v23, v24[0], v24[1], v24[2], v24[3], v24[4], v25[0]);
  a4(v21);
  sub_1ABA84B54(v24);
  sub_1ABA84B54(v25);
  sub_1ABA83588();
  sub_1ABAEE224();
  sub_1ABA96BC4();
  sub_1ABAB08B8(v26, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABAEE6B8()
{
  sub_1ABAA1B70();
  v0(v2);
  sub_1ABA83588();
  sub_1ABAEE224();
  sub_1ABA96BC4();
  sub_1ABAB08B8(v2, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABAEE884()
{
  sub_1ABAA1944();
  sub_1ABAEE224();
  sub_1ABA96BC4();
  sub_1ABAB08B8(&v1, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABAEE934(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, uint64_t))
{
  v23[1] = a1;
  v12 = sub_1ABAD219C(&unk_1EB4D59C0, &unk_1ABF70750);
  v13 = sub_1ABA7BB64(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v19 = v23 - v18;
  sub_1ABAEC134(a2 & 1, a3, a5, a6, a7);
  sub_1ABA7D098();
  sub_1ABAB47C4(v20, &unk_1EB4D59C0, &unk_1ABF70750);
  sub_1ABAA98EC();
  v21 = sub_1ABF22274();
  (*(v15 + 8))(v19, v12);
  return v21;
}

uint64_t sub_1ABAEEA94(char a1, uint64_t a2)
{
  sub_1ABF21E14();
  v6 = v5;
  v7 = a2 + *(sub_1ABAD219C(&unk_1EB4D59D0, &qword_1ABF6DFE0) + 36);
  sub_1ABF21E14();
  if (v6 > v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  *&v12[5] = v6;
  *&v12[6] = v8;
  v7 = sub_1ABF22D14();
  v12[3] = v7;
  v12[4] = MEMORY[0x1E69A0050];
  v2 = sub_1ABA93DC0(v12);
  if (a1)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v9 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    swift_once();
  }

  v9 = qword_1EB549598;
LABEL_8:
  v10 = sub_1ABA7AA24(v7, v9);
  (*(*(v7 - 8) + 16))(v2, v10, v7);
  v13[3] = sub_1ABF22424();
  v13[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v13);
  sub_1ABAD219C(&unk_1EB4D59E0, &qword_1ABF34800);
  sub_1ABF24614();
  sub_1ABA84B54(v12);
  sub_1ABAEEEC4();
  return sub_1ABAB08B8(v13, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABAEECAC(char a1, uint64_t a2)
{
  sub_1ABF21E14();
  v6 = v5;
  v7 = a2 + *(sub_1ABAD219C(&unk_1EB4D59D0, &qword_1ABF6DFE0) + 36);
  sub_1ABF21E14();
  if (v6 > v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  *&v12[5] = v6;
  *&v12[6] = v8;
  v7 = sub_1ABF22D14();
  v12[3] = v7;
  v12[4] = MEMORY[0x1E69A0050];
  v2 = sub_1ABA93DC0(v12);
  if (a1)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v9 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    swift_once();
  }

  v9 = qword_1EB549598;
LABEL_8:
  v10 = sub_1ABA7AA24(v7, v9);
  (*(*(v7 - 8) + 16))(v2, v10, v7);
  v13[3] = sub_1ABF22424();
  v13[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v13);
  sub_1ABAD219C(&unk_1EB4D59E0, &qword_1ABF34800);
  sub_1ABF24614();
  sub_1ABA84B54(v12);
  sub_1ABAEEEC4();
  return sub_1ABAB08B8(v13, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABAEEEC4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *v0;
  swift_getObjectType();
  return sub_1ABF22454();
}

uint64_t sub_1ABAEEF8C(char a1, uint64_t a2)
{
  sub_1ABF21E14();
  v6 = v5;
  v7 = a2 + *(sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0) + 36);
  sub_1ABF21E14();
  if (v6 > v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  *&v12[5] = v6;
  *&v12[6] = v8;
  v7 = sub_1ABF22D14();
  v12[3] = v7;
  v12[4] = MEMORY[0x1E69A0050];
  v2 = sub_1ABA93DC0(v12);
  if (a1)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v9 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    swift_once();
  }

  v9 = qword_1EB549598;
LABEL_8:
  v10 = sub_1ABA7AA24(v7, v9);
  (*(*(v7 - 8) + 16))(v2, v10, v7);
  v13[3] = sub_1ABF22424();
  v13[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v13);
  sub_1ABAD219C(&qword_1EB4D1DA0, &unk_1ABF347F0);
  sub_1ABF23BA4();
  sub_1ABA84B54(v12);
  sub_1ABAEEEC4();
  return sub_1ABAB08B8(v13, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABAEF1A4(char a1, uint64_t a2)
{
  sub_1ABF21E14();
  v6 = v5;
  v7 = a2 + *(sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0) + 36);
  sub_1ABF21E14();
  if (v6 > v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  *&v12[5] = v6;
  *&v12[6] = v8;
  v7 = sub_1ABF22D14();
  v12[3] = v7;
  v12[4] = MEMORY[0x1E69A0050];
  v2 = sub_1ABA93DC0(v12);
  if (a1)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v9 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    swift_once();
  }

  v9 = qword_1EB549598;
LABEL_8:
  v10 = sub_1ABA7AA24(v7, v9);
  (*(*(v7 - 8) + 16))(v2, v10, v7);
  v13[3] = sub_1ABF22424();
  v13[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v13);
  sub_1ABAD219C(&qword_1EB4D1DA0, &unk_1ABF347F0);
  sub_1ABF23BA4();
  sub_1ABA84B54(v12);
  sub_1ABAEEEC4();
  return sub_1ABAB08B8(v13, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABAEF3BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void, uint64_t))
{
  v25[2] = a1;
  v25[0] = a4;
  v25[1] = a5;
  v13 = sub_1ABAD219C(&unk_1EB4D59C0, &unk_1ABF70750);
  v14 = sub_1ABA7BB64(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v20 = v25 - v19;
  sub_1ABAEC134(a2 & 1, a3, a7, a8, a9);
  sub_1ABA7D098();
  sub_1ABAB47C4(v21, &unk_1EB4D59C0, &unk_1ABF70750);
  sub_1ABAA98EC();
  v22 = v25[3];
  sub_1ABF22264();
  result = (*(v16 + 8))(v20, v13);
  if (!v22)
  {
    v24 = v25[0];
    do
    {
      sub_1ABE7EC84();
      if (v27)
      {
        break;
      }

      v28 = 0;
      v24(&v26, &v28);
    }

    while ((v28 & 1) == 0);
  }

  return result;
}

uint64_t sub_1ABAEF5D0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t (*a3)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a1 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = *v6++;
    a2(&v13, v8);
    v9 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = a3(0, *(v7 + 16) + 1, 1, v7);
    }

    v11 = *(v7 + 16);
    v10 = *(v7 + 24);
    if (v11 >= v10 >> 1)
    {
      v7 = a3(v10 > 1, v11 + 1, 1, v7);
    }

    *(v7 + 16) = v11 + 1;
    *(v7 + 8 * v11 + 32) = v9;
    --v3;
  }

  while (v3);
  return v7;
}

void sub_1ABAEF6E4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t), uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr))
{
  a6(&v9);
  if (v6)
  {
  }

  else
  {
    a3(&v9, a2);
  }
}

uint64_t sub_1ABAEF83C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1ABAE9F4C();
  if (!v1)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
  }

  return result;
}

void sub_1ABAEF89C(uint64_t a1, _BYTE *a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr))
{
  a4(&v7);
  if (v4)
  {
  }

  else
  {
    *a3 = v7;
    *(a3 + 8) = 0;
    *a2 = 1;
  }
}

uint64_t sub_1ABAEF8FC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1ABAECC68(a1, a2 & 1, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1ABAEF92C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1ABAEE934(a1, a2 & 1, a3, a4, &qword_1EB4D1DE8, &unk_1ABF34848, sub_1ABAEB984);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1ABAEF9B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1ABAECDC4(a1, a2 & 1, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1ABAEF9E0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1ABAEE934(a1, a2 & 1, a3, a4, &qword_1EB4D1DC0, &unk_1ABF34820, sub_1ABAEBC14);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

unint64_t sub_1ABAEFA70()
{
  result = qword_1EB4CF108;
  if (!qword_1EB4CF108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF108);
  }

  return result;
}

uint64_t sub_1ABAEFAC4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1ABAEE934(a1, a2 & 1, a3, a4, &qword_1EB4D1D90, &unk_1ABF347D0, sub_1ABAEBEA4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1ABAEFB18@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1ABAECF20(a1, a2 & 1, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

unint64_t sub_1ABAEFBB0()
{
  result = qword_1EB4CF100;
  if (!qword_1EB4CF100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF100);
  }

  return result;
}

unint64_t sub_1ABAEFC04()
{
  result = qword_1EB4CFA88;
  if (!qword_1EB4CFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFA88);
  }

  return result;
}

unint64_t sub_1ABAEFD08()
{
  result = qword_1EB4CEDC8;
  if (!qword_1EB4CEDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEDC8);
  }

  return result;
}

unint64_t sub_1ABAEFDE0()
{
  result = qword_1EB4CEDC0;
  if (!qword_1EB4CEDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEDC0);
  }

  return result;
}

uint64_t sub_1ABAEFF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ABAF00D4(a1, a2, a3);
  v7 = sub_1ABAD219C(v5, v6);
  sub_1ABA7D08C(v7);
  (*(v8 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1ABAEFFE8()
{
  sub_1ABA82DA0();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v3();
}

uint64_t sub_1ABAF0010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ABAF00D4(a1, a2, a3);
  v7 = sub_1ABAD219C(v5, v6);
  sub_1ABA7D08C(v7);
  (*(v8 + 32))(a2, a1);
  return a2;
}

uint64_t ViewService.appleMusicEventView()()
{
  type metadata accessor for AppleMusicEventView();
  sub_1ABA7D028();
  v1 = swift_allocObject();
  AppleMusicEventView.init(viewService:)(v0);
  return v1;
}

uint64_t AppleMusicEventView.__allocating_init(viewService:)(void *a1)
{
  sub_1ABA7D028();
  v2 = swift_allocObject();
  AppleMusicEventView.init(viewService:)(a1);
  return v2;
}

uint64_t *AppleMusicEventView.init(viewService:)(void *a1)
{
  v3 = v1;
  v5 = *v3;
  type metadata accessor for AppleMusicEventEntryView();
  sub_1ABA7D028();
  swift_allocObject();
  v6 = AppleMusicEventEntryView.init(viewService:)(a1);
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = v6;
    sub_1ABAD219C(&qword_1EB4D1E18, &qword_1ABF34880);
    sub_1ABA7D028();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v3[2] = v8;
  }

  return v3;
}

uint64_t AppleMusicEventView.songEvents<A>(from:order:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1ABA805D8();
  sub_1ABA8EEE4();
  v11 = sub_1ABAF0C8C(v9, v10);
  return sub_1ABC2D7B8(v8, a1, a2 & 1, v8, a3, v11, a4);
}

uint64_t AppleMusicEventView.songEvents<A>(whose:in:from:order:)(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  return sub_1ABAF03A4(a1, a2, a3, a4, a5, a6, sub_1ABC2D880);
}

{
  return sub_1ABAF03A4(a1, a2, a3, a4, a5, a6, sub_1ABC2D8B8);
}

{
  return sub_1ABAF03A4(a1, a2, a3, a4, a5, a6, sub_1ABC2D8F0);
}

{
  return sub_1ABAF03A4(a1, a2, a3, a4, a5, a6, sub_1ABC2D928);
}

{
  return sub_1ABAF03A4(a1, a2, a3, a4, a5, a6, sub_1ABC2D960);
}

uint64_t sub_1ABAF03A4(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, char *, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *a1;
  v13 = sub_1ABA805D8();
  v19 = v12;
  sub_1ABA8EEE4();
  v16 = sub_1ABAF0C8C(v14, v15);
  return a7(v13, &v19, a2, a3, a4 & 1, v13, a5, v16, a6);
}

uint64_t AppleMusicEventView.songEvents<A>(overlapping:from:order:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  return sub_1ABAF0548(a1, a2, a3, a4, a5, sub_1ABC2DA70);
}

{
  return sub_1ABAF0548(a1, a2, a3, a4, a5, sub_1ABC2DAA4);
}

{
  return sub_1ABAF0548(a1, a2, a3, a4, a5, sub_1ABC2DAD8);
}

{
  return sub_1ABAF0548(a1, a2, a3, a4, a5, sub_1ABC2DB0C);
}

{
  return sub_1ABAF0548(a1, a2, a3, a4, a5, sub_1ABC2DB40);
}

uint64_t sub_1ABAF0548(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = sub_1ABA805D8();
  sub_1ABA8EEE4();
  v14 = sub_1ABAF0C8C(v12, v13);
  return a6(v11, a1, a2, a3 & 1, v11, a4, v14, a5);
}

uint64_t AppleMusicEventView.enumerateSongEvents<A>(from:order:using:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1ABA805D8();
  sub_1ABA8EEE4();
  v17 = sub_1ABAF0C8C(v15, v16);
  return sub_1ABC2DC44(v14, a1, a2 & 1, a3, a4, v14, a5, v17, a6, a7);
}

uint64_t AppleMusicEventView.enumerateSongEvents<A>(whose:in:from:order:using:)(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return sub_1ABAF07B0(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC2DD20);
}

{
  return sub_1ABAF07B0(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC2DD54);
}

{
  return sub_1ABAF07B0(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC2DD88);
}

{
  return sub_1ABAF07B0(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC2DDBC);
}

{
  return sub_1ABAF07B0(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC2DDF0);
}

uint64_t sub_1ABAF07B0(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, char *, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = *a1;
  v16 = sub_1ABA805D8();
  v23 = v15;
  sub_1ABA8EEE4();
  v19 = sub_1ABAF0C8C(v17, v18);
  return a10(v16, &v23, a2, a3, a4 & 1, a5, a6, v16, a7, v19, a8, a9);
}

uint64_t AppleMusicEventView.enumerateSongEvents<A>(overlapping:from:order:using:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return sub_1ABAF0990(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC2DF10);
}

{
  return sub_1ABAF0990(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC2DF44);
}

{
  return sub_1ABAF0990(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC2DF78);
}

{
  return sub_1ABAF0990(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC2DFAC);
}

{
  return sub_1ABAF0990(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC2DFE0);
}

uint64_t sub_1ABAF0990(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16 = sub_1ABA805D8();
  sub_1ABA8EEE4();
  v19 = sub_1ABAF0C8C(v17, v18);
  return a9(v16, a1, a2, a3 & 1, a4, a5, v16, a6, v19, a7, a8);
}

uint64_t sub_1ABAF0B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = sub_1ABA805D8();
  sub_1ABA8EEE4();
  v11 = sub_1ABAF0C8C(v9, v10);
  return a4(v8, a1, v8, a2, v11, a3);
}

uint64_t AppleMusicEventView.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AppleMusicEventView.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_1ABA7D028();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABAF0C8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1ABAF0D14(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for KnosisQueryParam();

  v2 = sub_1ABF239C4();
  v3 = 0;
  v4 = v1 + 56;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 56);
  v87 = (v5 + 63) >> 6;
  v88 = v1;
LABEL_4:
  while (2)
  {
    while (2)
    {
      v89 = v2;
      while (1)
      {
        if (!v7)
        {
          while (1)
          {
            v8 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
              break;
            }

            if (v8 >= v87)
            {

              return v2;
            }

            v7 = *(v4 + 8 * v8);
            ++v3;
            if (v7)
            {
              v3 = v8;
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

LABEL_10:
        v9 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v10 = (*(v88 + 48) + ((v3 << 11) | (32 * v9)));
        v12 = *v10;
        v11 = v10[1];
        v13 = v10[2];
        v14 = v10[3];
        v90[0] = *v10;
        v90[1] = v11;
        v90[3] = 95;
        v90[4] = 0xE100000000000000;
        sub_1ABAE28EC();

        v15 = v90;
        v16 = sub_1ABF24884();
        if (v16[2] < 2uLL)
        {
          break;
        }

        if (!v16[2])
        {
          goto LABEL_41;
        }

        v2 = v89;
        if (!*(v89 + 16) || (v17 = v16[4], v18 = v16[5], , sub_1ABA94FC8(v17, v18), v15 = v19, , (v15 & 1) == 0))
        {
          v33 = v16[4];
          v34 = v16[5];

          sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
          v35 = swift_allocObject();
          sub_1ABA7D0B0(v35, v36, v37, v38, v39, v40, v41, v42, v81, v84, v43);
          v44 = v33;
          swift_allocObject();
          v85 = sub_1ABE75D28(v15);
          swift_isUniquelyReferenced_nonNull_native();
          v90[0] = v89;
          v45 = sub_1ABA94FC8(v33, v34);
          if (!__OFADD__(*(v89 + 16), (v46 & 1) == 0))
          {
            v47 = v45;
            v48 = v46;
            sub_1ABAD219C(&qword_1EB4D1E20, &unk_1ABF34900);
            if (sub_1ABA8060C())
            {
              v49 = sub_1ABA94FC8(v33, v34);
              if ((v48 & 1) != (v50 & 1))
              {
                goto LABEL_46;
              }

              v47 = v49;
            }

            v51 = v90[0];
            if (v48)
            {
              v52 = *(v90[0] + 56);
              v53 = *(v52 + 8 * v47);
              sub_1ABA7ED48(v52, v82, v85);

              v2 = v51;
              goto LABEL_4;
            }

            sub_1ABA8EEFC(v90[0] + 8 * (v47 >> 6));
            v71 = (v51[6] + 16 * v47);
            *v71 = v44;
            v71[1] = v34;
            sub_1ABA7ED48(v51[7], v82, v85);
            v72 = v51[2];
            v73 = __OFADD__(v72, 1);
            v74 = v72 + 1;
            if (!v73)
            {
              v2 = v51;
              v51[2] = v74;
              goto LABEL_4;
            }

            goto LABEL_44;
          }

LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v20 = v16[4];
        v21 = v16[5];

        if (*(v89 + 16))
        {
          v22 = sub_1ABA94FC8(v20, v21);
          v24 = v23;

          if (v24)
          {
            v25 = *(*(v89 + 56) + 8 * v22);
            swift_beginAccess();
            v26 = *(v25 + 16);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v25 + 16) = v26;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v30 = *(v26 + 16);
              sub_1ABAAA4F4();
              v26 = v31;
              *(v25 + 16) = v31;
            }

            v28 = *(v26 + 16);
            if (v28 >= *(v26 + 24) >> 1)
            {
              sub_1ABAAA4F4();
              v26 = v32;
            }

            *(v26 + 16) = v28 + 1;
            v29 = v26 + 16 * v28;
            *(v29 + 32) = v13;
            *(v29 + 40) = v14;
            *(v25 + 16) = v26;
            swift_endAccess();

            v2 = v89;
          }

          else
          {
          }
        }

        else
        {
        }
      }

      sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
      v54 = swift_allocObject();
      sub_1ABA7D0B0(v54, v55, v56, v57, v58, v59, v60, v61, v81, v84, v62);
      swift_allocObject();
      v86 = sub_1ABE75D28(v90);
      swift_isUniquelyReferenced_nonNull_native();
      v90[0] = v89;
      v63 = sub_1ABA94FC8(v12, v11);
      if (__OFADD__(*(v89 + 16), (v64 & 1) == 0))
      {
        goto LABEL_43;
      }

      v65 = v63;
      v66 = v64;
      sub_1ABAD219C(&qword_1EB4D1E20, &unk_1ABF34900);
      if (sub_1ABA8060C())
      {
        v67 = sub_1ABA94FC8(v12, v11);
        if ((v66 & 1) != (v68 & 1))
        {
          goto LABEL_46;
        }

        v65 = v67;
      }

      if (v66)
      {

        v2 = v90[0];
        v69 = *(v90[0] + 56);
        v70 = *(v69 + 8 * v65);
        sub_1ABA7ED48(v69, v83, v86);

        continue;
      }

      break;
    }

    sub_1ABA8EEFC(v90[0] + 8 * (v65 >> 6));
    v76 = (*(v75 + 48) + 16 * v65);
    *v76 = v12;
    v76[1] = v11;
    sub_1ABA7ED48(*(v75 + 56), v83, v86);
    v78 = *(v77 + 16);
    v73 = __OFADD__(v78, 1);
    v79 = v78 + 1;
    if (!v73)
    {
      v2 = v77;
      *(v77 + 16) = v79;
      continue;
    }

    break;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABAF12A8(uint64_t a1)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 88) = xmmword_1ABF34940;
  *(a1 + 104) = 0;
  return 0;
}

unint64_t sub_1ABAF12D4(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x1E69E7CC0];
  v91 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  if (*(a2 + 32))
  {

    v4 = sub_1ABB454DC(v5);
  }

  v82 = v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_79;
  }

  while (1)
  {
    v6 = *(v4 + 16);
    v89 = v4 + 32;
    v90 = v6;
    sub_1ABAF1EB0(&v89);
    v7 = *(v4 + 16);
    v86 = v4;
    if (v7 >= 2)
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = sub_1ABE713BC();
    v29 = isUniquelyReferenced_nonNull_native;
    v30 = 0;
    v4 = *(isUniquelyReferenced_nonNull_native + 16);
    v31 = isUniquelyReferenced_nonNull_native + 40;
    v83 = isUniquelyReferenced_nonNull_native + 40;
    v85 = MEMORY[0x1E69E7CC0];
LABEL_15:
    for (i = (v31 + 16 * v30); ; i += 2)
    {
      if (v4 == v30)
      {

        sub_1ABD7E104(v85);
        goto LABEL_71;
      }

      if (v30 >= *(v29 + 16))
      {
        break;
      }

      v33 = *(i - 1);
      a2 = *i;
      MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
      if ((a2 & 0x1000000000000000) == 0)
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v89 = v33;
          v90 = a2 & 0xFFFFFFFFFFFFFFLL;

          if (v33 < 0x21u && ((0x100003E01uLL >> v33) & 1) != 0)
          {
            goto LABEL_28;
          }

LABEL_26:
          v35 = _swift_stdlib_strtod_clocale();
          if (!v35)
          {
            goto LABEL_28;
          }

          v36 = *v35 == 0;
LABEL_29:
          v88 = v36;
          goto LABEL_30;
        }

        if ((v33 & 0x1000000000000000) != 0)
        {
          v34 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          if (v34 >= 0x21 || ((0x100003E01uLL >> v34) & 1) == 0)
          {
            goto LABEL_26;
          }

LABEL_28:
          v36 = 0;
          goto LABEL_29;
        }
      }

      sub_1ABA7ED54();
      sub_1ABF24A74();
LABEL_30:

      if (v88)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ABA8062C(isUniquelyReferenced_nonNull_native, v37, v38, v85);
          v85 = isUniquelyReferenced_nonNull_native;
        }

        v39 = *(v85 + 16);
        a2 = v39 + 1;
        if (v39 >= *(v85 + 24) >> 1)
        {
          sub_1ABAD91B4();
          v85 = isUniquelyReferenced_nonNull_native;
        }

        ++v30;
        v31 = v83;
        *(v85 + 16) = a2;
        *(v85 + 8 * v39 + 32) = 0;
        goto LABEL_15;
      }

      ++v30;
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    sub_1ABD8EE6C(v4);
    v4 = v80;
  }

  v8 = (v4 + 40);
  v9 = -v7;
  v10 = -1;
  while (1)
  {
    v11 = *(v4 + 16);
    if (v9 + v10 == -1)
    {
      break;
    }

    if (++v10 >= v11)
    {
      goto LABEL_78;
    }

    v12 = v8 + 2;
    v13 = *(v8 - 1);
    v14 = *v8;

    v15 = sub_1ABE713BC();

    v16 = *(v15 + 16);

    v8 = v12;
    v4 = v86;
    if (v16 >= 2)
    {

      if (qword_1ED86E458 != -1)
      {
        sub_1ABA7D0C4();
        swift_once();
      }

      v17 = sub_1ABF237F4();
      sub_1ABA7AA24(v17, qword_1ED86E460);

      v18 = sub_1ABF237D4();
      v19 = sub_1ABF24664();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *v20 = 136315394;
        v21 = (*(*v82 + 224))();
        v23 = sub_1ABADD6D8(v21, v22, &v89);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2080;
        v24 = sub_1ABE71478();
        v26 = sub_1ABADD6D8(v24, v25, &v89);

        *(v20 + 14) = v26;
        _os_log_impl(&dword_1ABA78000, v18, v19, "multiple array arguments are provided to %s: %s.", v20, 0x16u);
        swift_arrayDestroy();
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }

      sub_1ABAF2860();
      swift_allocError();
      *v27 = 0xD00000000000003DLL;
      *(v27 + 8) = 0x80000001ABF86850;
      *(v27 + 16) = 4;
      swift_willThrow();
      return a2;
    }
  }

  if (v11)
  {
    v40 = (v86 + 40);
    v84 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v41 = *(v40 - 1);
      v42 = *v40;

      v43 = sub_1ABE713BC();

      v45 = *(v43 + 16);
      if (v45)
      {
        break;
      }

LABEL_67:
      v40 += 2;
      if (!--v11)
      {
        goto LABEL_70;
      }
    }

    v46 = (v43 + 16 + 16 * v45);
    v48 = *v46;
    v47 = v46[1];
    MEMORY[0x1EEE9AC00](v44);
    if ((v47 & 0x1000000000000000) != 0)
    {
      goto LABEL_69;
    }

    if ((v47 & 0x2000000000000000) != 0)
    {
      v89 = v48;
      v90 = v47 & 0xFFFFFFFFFFFFFFLL;

      if (v48 < 0x21u && ((0x100003E01uLL >> v48) & 1) != 0)
      {
        goto LABEL_53;
      }

LABEL_51:
      v50 = _swift_stdlib_strtod_clocale();
      if (!v50)
      {
        goto LABEL_53;
      }

      v51 = *v50 == 0;
LABEL_54:
      v88 = v51;
    }

    else
    {
      if ((v48 & 0x1000000000000000) != 0)
      {
        v49 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

        if (v49 >= 0x21 || ((0x100003E01uLL >> v49) & 1) == 0)
        {
          goto LABEL_51;
        }

LABEL_53:
        v51 = 0;
        goto LABEL_54;
      }

LABEL_69:

      sub_1ABA7ED54();
      sub_1ABF24A74();
    }

    if (v88)
    {

      v52 = swift_isUniquelyReferenced_nonNull_native();
      if ((v52 & 1) == 0)
      {
        sub_1ABA8062C(v52, v53, v54, v84);
        v84 = v64;
      }

      v55 = *(v84 + 16);
      if (v55 >= *(v84 + 24) >> 1)
      {
        sub_1ABAD91B4();
        v84 = v65;
      }

      *(v84 + 16) = v55 + 1;
      *(v84 + 8 * v55 + 32) = 0;
      v91 = v84;
    }

    else
    {
      if (qword_1ED86E458 != -1)
      {
        sub_1ABA7D0C4();
        swift_once();
      }

      v56 = sub_1ABF237F4();
      sub_1ABA7AA24(v56, qword_1ED86E460);

      v57 = sub_1ABF237D4();
      v58 = sub_1ABF24664();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v89 = v60;
        *v59 = 136315138;
        v61 = *v46;
        v62 = v46[1];

        v63 = sub_1ABADD6D8(v61, v62, &v89);

        *(v59 + 4) = v63;
        _os_log_impl(&dword_1ABA78000, v57, v58, "can't convert %s to Double during usage of arithmetic operator", v59, 0xCu);
        sub_1ABA84B54(v60);
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }

      else
      {
      }
    }

    goto LABEL_67;
  }

LABEL_70:

LABEL_71:
  type metadata accessor for ResultGraph();
  v66 = swift_allocObject();
  v67 = MEMORY[0x1E69E7CC0];
  *(v66 + 16) = sub_1ABF239C4();
  *(v66 + 24) = v67;
  if (*(v91 + 16))
  {
    (*(*v82 + 240))(v91);

    v68 = sub_1ABF24314();
    v70 = v69;
    v71 = sub_1ABF24314();
    v73 = v72;
    v87 = v68;
    v89 = v68;
    v90 = v70;

    MEMORY[0x1AC5A9410](126, 0xE100000000000000);

    MEMORY[0x1AC5A9410](126, 0xE100000000000000);

    MEMORY[0x1AC5A9410](v71, v73);

    v74 = v89;
    v75 = v90;
    sub_1ABAD8758();
    a2 = v76;
    v77 = *(v76 + 16);
    if (v77 >= *(v76 + 24) >> 1)
    {
      sub_1ABAD8758();
      a2 = v81;
    }

    *(a2 + 16) = v77 + 1;
    v78 = (a2 + 88 * v77);
    v78[4] = v74;
    v78[5] = v75;
    v78[6] = 0;
    v78[7] = v87;
    v78[8] = v70;
    v78[9] = 0;
    v78[10] = 0;
    v78[11] = 0xE000000000000000;
    v78[12] = v71;
    v78[13] = v73;
    v78[14] = MEMORY[0x1E69E7CC0];
    LOBYTE(v89) = 0;
    sub_1ABE489A8(a2, &v89);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return a2;
}

uint64_t sub_1ABAF1D84()
{
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v1 = (*(*v0 + 224))();
  v3 = v2;
  v4 = (*(*v0 + 232))();
  v6 = v5;
  memcpy(v8, (v0 + 16), sizeof(v8));
  *(v0 + 16) = v1;
  *(v0 + 24) = v3;
  *(v0 + 32) = &unk_1F208E488;
  *(v0 + 40) = 115;
  *(v0 + 48) = 0xE100000000000000;
  *(v0 + 56) = 1;
  *(v0 + 64) = v4;
  *(v0 + 72) = v6;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1ABAE4AA8(v8);

  return v0;
}

uint64_t sub_1ABAF1EB0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABAF206C(v7, v8, a1, v4);
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
    return sub_1ABAF1FA4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ABAF1FA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1ABF25054();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ABAF206C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1ABF25054();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1ABF25054()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1ABF25054() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_1ABAD8820();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1ABAD8820();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1ABAF26A0((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1ABAF2574(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_1ABAF2574(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1ABAF26A0((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1ABAF26A0(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1ABAC9278(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1ABF25054() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1ABAC9278(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1ABF25054() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

unint64_t sub_1ABAF2860()
{
  result = qword_1EB4D1E28;
  if (!qword_1EB4D1E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1E28);
  }

  return result;
}

uint64_t sub_1ABAF28CC()
{
  if (qword_1ED870B58 != -1)
  {
    sub_1ABA8EF40();
  }

  v0 = off_1ED870B60;
  os_unfair_lock_lock(off_1ED870B60 + 6);
  v1 = *(v0 + 2);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);

  os_unfair_lock_unlock(v0 + 6);
  v3(&byte_1ED870B78);
}

uint64_t static AssetRegistry.createCreateBackend.getter()
{
  if (qword_1ED870B58 != -1)
  {
    sub_1ABA8EF40();
  }

  v0 = off_1ED870B60;
  os_unfair_lock_lock(off_1ED870B60 + 6);
  v1 = *(v0 + 2);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  os_unfair_lock_unlock(v0 + 6);
  return v2;
}

uint64_t static AssetRegistry.createBackend.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED870B70 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED870B80;
  v2 = unk_1ED870B88;
  v4 = byte_1ED870B90;
  v5 = qword_1ED870B98;
  v6 = unk_1ED870BA0;
  *a1 = byte_1ED870B78;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
}

uint64_t sub_1ABAF2A60()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1ABAF2A98()
{
  _s20_CreateCreateBackendCMa();
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1ABAF2B10;
  *(v0 + 24) = 0;
  sub_1ABAD219C(&qword_1EB4D1E30, &unk_1ABF349D0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  off_1ED870B60 = result;
  return result;
}

void sub_1ABAF2B10(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = sub_1ABAF7588;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = sub_1ABAF7624;
  *(a1 + 40) = 0;
}

uint64_t sub_1ABAF2B48(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return static AssetRegistry.createCreateBackend.setter(v1);
}

uint64_t static AssetRegistry.createCreateBackend.setter(uint64_t a1)
{
  if (qword_1ED870B58 != -1)
  {
    a1 = sub_1ABA8EF40();
  }

  v1 = off_1ED870B60;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v1 + 6);
  sub_1ABAF2C60(v1 + 2);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1ABAF2C20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
}

uint64_t (*static AssetRegistry.createCreateBackend.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if (qword_1ED870B58 != -1)
  {
    sub_1ABA8EF40();
  }

  v3 = off_1ED870B60;
  os_unfair_lock_lock(off_1ED870B60 + 6);
  v4 = *(v3 + 2);
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);

  os_unfair_lock_unlock(v3 + 6);
  *a1 = v6;
  a1[1] = v5;
  return sub_1ABAF2D10;
}

uint64_t sub_1ABAF2D10(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return static AssetRegistry.createCreateBackend.setter(*a1);
  }

  v4 = a1[1];

  static AssetRegistry.createCreateBackend.setter(v3);
}

void *AssetRegistry.CreateBackend.init<A, B>(createRemoteBackend:createRemoteWritableBackend:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(a7 + 16))(&v22 + 1, a5, a7);
  v16 = BYTE1(v22);
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v17[5] = a8;
  v17[6] = a1;
  v17[7] = a2;
  (*(*(a8 + 8) + 16))(&v22, a6);
  v18 = v22;
  result = swift_allocObject();
  result[2] = a5;
  result[3] = a6;
  result[4] = a7;
  result[5] = a8;
  result[6] = a3;
  result[7] = a4;
  *a9 = v16;
  *(a9 + 8) = sub_1ABAF2FA0;
  *(a9 + 16) = v17;
  *(a9 + 24) = v18;
  *(a9 + 32) = sub_1ABAF30AC;
  *(a9 + 40) = result;
  return result;
}

uint64_t sub_1ABAF2EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v13(v10);
  if (!v4)
  {
    a4[3] = a2;
    a4[4] = a3;
    v15 = sub_1ABA93DC0(a4);
    return (*(v8 + 32))(v15, v12, a2);
  }

  return result;
}

uint64_t sub_1ABAF2FA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[5];
  v5 = v2[6];
  v6 = v2[7];
  return sub_1ABAF2EB8(a1, v2[2], v2[4], a2);
}

uint64_t sub_1ABAF2FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v10();
  if (!v4)
  {
    a4[3] = a2;
    a4[4] = a3;
    v14 = sub_1ABA93DC0(a4);
    return (*(v8 + 32))(v14, v12, a2);
  }

  return result;
}

uint64_t sub_1ABAF30AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[7];
  return sub_1ABAF2FC4(v1[6], v1[3], v1[5], a1);
}

_BYTE *AssetRegistry.CreateBackend.init(remoteBackendType:createRemoteBackend:remoteWritableBackendType:createRemoteWritableBackend:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a4;
  *a7 = *result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = v7;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

__n128 sub_1ABAF3110(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1ABAF3124(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1ABAF3164(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1ABAF31C0()
{
  type metadata accessor for TrialAssetManager();
  v1 = 0;
  return TrialAssetManager.__allocating_init(refreshPolicy:)(&v1);
}

uint64_t sub_1ABAF3210()
{
  if (v0[5])
  {
    v1 = v0[5];
  }

  else
  {
    v2 = v0;
    v3 = v0[4];
    v4 = v2[3];
    v7 = v2[2];

    v1 = v4(&v7);

    v5 = v2[5];
    v2[5] = v1;
  }

  return v1;
}

void *sub_1ABAF329C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t sub_1ABAF32CC()
{
  sub_1ABAF329C();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABAF32FC(uint64_t *a1)
{
  type metadata accessor for TrialAssetManager();
  v3 = *a1;

  return TrialAssetManager.__allocating_init(refreshPolicy:)(&v3);
}

uint64_t AssetRegistry.TrialAssetManagerPolicy.PersistentInfo.init(refreshPolicy:createTrialAssetManager:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  *a4 = *a1;
  type metadata accessor for AssetRegistry.TrialAssetManagerPolicy.PersistentInfo.PersistentContent();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = 0;
  sub_1ABAD219C(&qword_1EB4D1E38, &qword_1ABF349E0);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = v8;
  a4[1] = v9;
}

uint64_t AssetRegistry.TrialAssetManagerPolicy.PersistentInfo.trialAssetManager.getter()
{
  v1 = *(v0 + 8);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = sub_1ABAF3210();
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t AssetRegistry.trialAssetManagerPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 72);
  *(a1 + 16) = v4;
  return sub_1ABAF3440(v2, v3, v4);
}

uint64_t sub_1ABAF3440(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 && a3 != 2)
  {
    if (a3 != 1)
    {
      return result;
    }
  }
}

uint64_t (*sub_1ABAF34A4())(uint64_t)
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  if (*(v0 + 72))
  {
    v3 = *(v0 + 56);
    if (*(v0 + 72) != 1)
    {

      return v1;
    }

    os_unfair_lock_lock((v2 + 24));
    v4 = *(v2 + 16);
    v5 = sub_1ABAF3210();
    os_unfair_lock_unlock((v2 + 24));
    v6 = v1;
    v7 = v2;
    v8 = 1;
  }

  else
  {
    v9 = *(v0 + 64);

    v5 = v1(v10);
    v6 = v1;
    v7 = v2;
    v8 = 0;
  }

  sub_1ABAFC7DC(v6, v7, v8);
  return v5;
}

uint64_t AssetRegistry.__allocating_init(parameters:trialAssetManagerPolicy:)(__int16 *a1, __int128 *a2)
{
  v3 = *a2;
  v4 = *(a2 + 16);
  v9 = *a1;
  if (qword_1ED870B70 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v7 = v3;
  v8 = v4;
  return sub_1ABAF35F8(&v9, qword_1ED870B80, unk_1ED870B88, &v7, v2);
}

uint64_t sub_1ABAF35F8(__int16 *a1, void (*a2)(__int128 *__return_ptr, uint64_t *, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v9 = *a4;
  v8 = *(a4 + 8);
  v10 = *(a4 + 16);
  if (v7 < 0)
  {
    LOBYTE(v25[0]) = v7 & 1;
    v27 = BYTE1(v7) & 1;
    a2(&v28, v25, &v27);
    if (!v5)
    {
      v18 = v29;
      v19 = v30;
      v20 = sub_1ABA93E20(&v28, v29);
      v25[0] = v9;
      v25[1] = v8;
      v26 = v10;
      v21 = *(*(v18 - 8) + 64);
      MEMORY[0x1EEE9AC00](v20);
      v23 = v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v23);
      a5 = sub_1ABA94614(v23, v25, a5, v18, v19[1]);
      sub_1ABA84B54(&v28);
      return a5;
    }

    goto LABEL_5;
  }

  v11 = type metadata accessor for AssetRegistryLocalBackendBasic();
  v12 = sub_1ABF217F4();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_1ABF217E4();
  v16 = sub_1ABB0B8BC(v15, v15);
  if (v5)
  {
LABEL_5:
    sub_1ABAFC7DC(v9, v8, v10);
    return a5;
  }

  v29 = v11;
  v30 = &off_1F207D3C8;
  *&v28 = v16;
  a5 = swift_allocObject();
  sub_1ABA946C0(&v28, a5 + 16);
  *(a5 + 56) = v9;
  *(a5 + 64) = v8;
  *(a5 + 72) = v10;
  return a5;
}

void AssetRegistry.assetEntry(for:in:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0[5];
  v10 = v0[6];
  sub_1ABA93E20(v0 + 2, v9);
  (*(v10 + 8))(v8, v6, v4, v2, v9, v10);
  sub_1ABA7BC90();
}

uint64_t AssetRegistry.asset(for:in:)()
{
  sub_1ABA7BBF8();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v7 = type metadata accessor for TrialAssetManager.Asset(0);
  v1[12] = v7;
  sub_1ABA7AB80(v7);
  v9 = *(v8 + 64);
  v1[13] = sub_1ABA96BDC();
  v1[14] = swift_task_alloc();
  v10 = sub_1ABF21C24();
  v1[15] = v10;
  sub_1ABA7BBD0(v10);
  v1[16] = v11;
  v13 = *(v12 + 64);
  v1[17] = sub_1ABA7E314();
  v14 = sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  sub_1ABA7AB80(v14);
  v16 = *(v15 + 64);
  v1[18] = sub_1ABA7E314();
  v17 = sub_1ABF21CF4();
  v1[19] = v17;
  sub_1ABA7BBD0(v17);
  v1[20] = v18;
  v20 = *(v19 + 64);
  v1[21] = sub_1ABA7E314();
  v21 = type metadata accessor for AssetRegistryAsset(0);
  v1[22] = v21;
  sub_1ABA7AB80(v21);
  v23 = *(v22 + 64);
  v1[23] = sub_1ABA7E314();
  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABAF39F0()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = v1[6];
  sub_1ABA93E20(v1 + 2, v1[5]);
  v7 = *(v6 + 8);
  sub_1ABA96BD0();
  v8();
  *(v0 + 192) = v65;
  *(v0 + 200) = v66;
  v17 = v68 | (v69 << 16);
  *(v0 + 258) = v69;
  *(v0 + 256) = v68;
  *(v0 + 208) = v67;
  *(v0 + 216) = v70;
  *(v0 + 224) = v71;
  if ((v68 & 0x80) == 0)
  {
    if (v68)
    {
      v18 = *(v0 + 168);
      sub_1ABAA3414();
      sub_1ABAF7FD8();
      AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.localURL.getter();
      v19 = sub_1ABA8FE0C();
      sub_1ABAF7FB8(v19, v20, v21, v22);
    }

    else
    {
      *(v0 + 16) = v65;
      *(v0 + 24) = v66;
      *(v0 + 32) = 47;
      *(v0 + 40) = 0xE100000000000000;
      v24 = sub_1ABA8FE0C();
      sub_1ABAF8040(v24, v25, v26, v27);
      sub_1ABAAA4A0();
      sub_1ABAAA44C();
      if ((sub_1ABF23B44() & 1) == 0)
      {
        sub_1ABAF8054();
        sub_1ABA7D104();
        swift_allocError();
        *v54 = 0;
        swift_willThrow();
        v55 = sub_1ABA8FE0C();
        sub_1ABAF7FB8(v55, v56, v57, v58);

        v59 = sub_1ABA8FE0C();
        sub_1ABAF7FB8(v59, v60, v61, v62);
        v9 = *(v0 + 184);
        v10 = *(v0 + 168);
        v12 = *(v0 + 136);
        v11 = *(v0 + 144);
        v14 = *(v0 + 104);
        v13 = *(v0 + 112);

        sub_1ABA7BBE0();
LABEL_2:
        sub_1ABAA0280();

        __asm { BRAA            X1, X16 }
      }

      v29 = *(v0 + 144);
      v28 = *(v0 + 152);
      v30 = *(v0 + 128);
      v31 = *(v0 + 136);
      v63 = *(v0 + 120);
      v64 = *(v0 + 168);
      sub_1ABA7ED8C();
      sub_1ABA7B9B4(v32, v33, v34, v35);
      (*(v30 + 104))(v31, *MEMORY[0x1E6968F70], v63);
      sub_1ABF21CD4();
    }

    v37 = *(v0 + 176);
    v36 = *(v0 + 184);
    v38 = *(v0 + 48);
    (*(*(v0 + 160) + 32))(v36, *(v0 + 168), *(v0 + 152));
    v39 = v36 + *(v37 + 20);
    *v39 = v65;
    *(v39 + 8) = v66;
    *(v39 + 16) = v67;
    *(v39 + 26) = BYTE2(v17);
    *(v39 + 24) = v68;
    *(v39 + 32) = v70;
    *(v39 + 40) = v71;
    sub_1ABA83598((v36 + *(v37 + 24)));
    sub_1ABAF7FE4(v36, v38, v40);
    v41 = *(v0 + 176);
    v42 = *(v0 + 184);
    sub_1ABA88588();
    sub_1ABA7B9B4(*(v0 + 48), 0, 1, v43);

    sub_1ABA7BBE0();
    goto LABEL_2;
  }

  v23 = *(v0 + 88);

  *(v0 + 232) = sub_1ABAF34A4();
  *(v0 + 262) = v65;
  *(v0 + 263) = v68 & 1;
  *(v0 + 260) = v17 >> 8;

  v44 = swift_task_alloc();
  *(v0 + 240) = v44;
  *v44 = v0;
  v44[1] = sub_1ABAF3DE8;
  v45 = *(v0 + 112);
  sub_1ABAA3414();
  sub_1ABAA0280();

  return TrialAssetManager.asset(for:in:assetType:downloadOptions:)(v46, v47, v48, v49, v50, v51);
}

uint64_t sub_1ABAF3DE8()
{
  sub_1ABA7BC10();
  v3 = v2;
  v4 = *(v2 + 240);
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 248) = v0;

  if (v0)
  {
    v7 = *(v3 + 258);
    sub_1ABAF7FB8(*(v3 + 192), *(v3 + 200), *(v3 + 208), *(v3 + 256));
  }

  else
  {
    v8 = *(v3 + 256) | (*(v3 + 258) << 16);
    v10 = *(v3 + 200);
    v9 = *(v3 + 208);
    v11 = *(v3 + 192);
    sub_1ABA8B0B0();
    sub_1ABA8B0B0();
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABAF3F28()
{
  v1 = *(v0 + 232);
  v23 = *(v0 + 224);
  v22 = *(v0 + 256);
  v2 = *(v0 + 258);
  v3 = *(v0 + 208);
  v21 = *(v0 + 216);
  v20 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  v9 = *(v0 + 96);
  v10 = *(v0 + 48);

  sub_1ABA94734();
  sub_1ABAF7FE4(v7, v8, v11);
  (*(v6 + 32))(v10, v8, v5);
  v12 = v10 + *(v4 + 20);
  *v12 = v20;
  *(v12 + 16) = v3;
  *(v12 + 26) = v2;
  *(v12 + 24) = v22;
  *(v12 + 32) = v21;
  *(v12 + 40) = v23;
  v13 = *(v8 + *(v9 + 24) + 32);
  v14 = v10 + *(v4 + 24);
  sub_1ABAB2AA8(*(v8 + *(v9 + 20)));
  v15 = *(v0 + 176);
  v16 = *(v0 + 184);
  sub_1ABA88588();
  sub_1ABA7B9B4(*(v0 + 48), 0, 1, v17);

  sub_1ABA7BBE0();

  return v18();
}

uint64_t sub_1ABAF4098()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  *(v0 + 258);
  v3 = *(v0 + 256);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 192);

  v7 = sub_1ABA805B4();
  sub_1ABAF7FB8(v7, v8, v4, v3);
  v9 = sub_1ABA805B4();
  sub_1ABAF7FB8(v9, v10, v4, v3);

  v11 = *(v0 + 248);
  v12 = *(v0 + 184);
  sub_1ABA88588();

  sub_1ABA7BBE0();

  return v13();
}

void AssetRegistry.locallyAvailableAsset(for:in:)()
{
  sub_1ABA7BCA8();
  v2 = v0;
  v127 = v3;
  v128 = v4;
  v126 = v5;
  v7 = v6;
  v123 = v8;
  v119 = type metadata accessor for TrialAssetManager.Asset(0);
  v9 = sub_1ABA7BBB0(v119);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v117 = v13 - v12;
  v14 = type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo(0);
  v15 = sub_1ABA7AB80(v14);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v118 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v125 = &v114 - v20;
  v21 = sub_1ABF21C24();
  v22 = sub_1ABA7BB64(v21);
  v121 = v23;
  v122 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7BC58();
  v120 = v27 - v26;
  v28 = sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  sub_1ABA7AB80(v28);
  v30 = *(v29 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  v32 = sub_1ABF21CF4();
  v33 = sub_1ABA7BB64(v32);
  v124 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7BC58();
  v39 = v38 - v37;
  v40 = type metadata accessor for AssetRegistryAsset(0);
  v41 = sub_1ABA7BBB0(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA7BC58();
  v46 = v45 - v44;
  v47 = v2[5];
  v48 = v2[6];
  sub_1ABA93E20(v2 + 2, v47);
  (*(v48 + 8))(v130, v7, v126, v127, v128, v47, v48);
  if (!v1)
  {
    v127 = v40;
    v128 = v39;
    v136 = v46;
    v49 = v125;
    v126 = v32;
    v50 = v130[0];
    v51 = v130[1];
    v52 = v131;
    v53 = v132 | (v133 << 16);
    v54 = v135;
    v116 = v134;
    if ((v132 & 0x80) != 0)
    {

      sub_1ABAF34A4();
      LOBYTE(v130[0]) = v50;
      LOBYTE(v129[0]) = v53 & 1;

      v137 = v53;
      v72 = v51;
      TrialAssetManager.locallyAvailableAsset(for:in:assetType:)(v51, v52, v130, v129, v73, v74, v75, v76, v114, v115, SWORD2(v115), SBYTE6(v115), HIBYTE(v115), v116, v117, v118, v119, v120, v121, v122, v123, v124, v125);

      v92 = sub_1ABA956F0();
      sub_1ABAF7FB8(v92, v93, v94, v53);
      v95 = sub_1ABA956F0();
      sub_1ABAF7FB8(v95, v96, v97, v53);
      v98 = v118;
      sub_1ABAF7FE4(v49, v118, type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo);
      v99 = v119;
      v100 = v72;
      if (sub_1ABA7E1E0(v98, 1, v119) == 1)
      {
        v101 = sub_1ABA7D0F8();
        sub_1ABAF7FB8(v101, v102, v52, v137);

        v90 = 1;
        v88 = v123;
        v85 = v127;
      }

      else
      {
        sub_1ABA94734();
        v103 = v117;
        sub_1ABAF7FE4(v98, v117, v104);
        v105 = *(v124 + 32);
        v115 = v54;
        v106 = v99;
        v88 = v123;
        v105(v123, v103, v126);
        v90 = 0;
        v85 = v127;
        v107 = v88 + *(v127 + 20);
        *v107 = v50;
        *(v107 + 8) = v100;
        *(v107 + 16) = v52;
        *(v107 + 26) = BYTE2(v137);
        *(v107 + 24) = v137;
        v108 = v115;
        *(v107 + 32) = v116;
        *(v107 + 40) = v108;
        v109 = *(v106 + 20);
        v110 = v103 + *(v106 + 24);
        v111 = v88 + *(v85 + 24);
        v112 = *(v110 + 16);
        *(v111 + 8) = *v110;
        v113 = *(v110 + 32);
        *v111 = *(v103 + v109);
        *(v111 + 24) = v112;
        *(v111 + 40) = v113;
      }

      goto LABEL_10;
    }

    v115 = v135;
    if (v132)
    {
      LOBYTE(v130[0]) &= 1u;
      v55 = v131;
      sub_1ABA826A8();
      sub_1ABAF7FD8();
      v56 = v128;
      AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.localURL.getter();
      v57 = v51;
      v58 = sub_1ABA826A8();
      sub_1ABAF7FB8(v58, v59, v55, v53);
      v60 = v124;
      v61 = v136;
      v125 = v57;
      v83 = v126;
      v84 = v115;
LABEL_9:
      (*(v60 + 32))(v61, v56, v83);
      v85 = v127;
      v86 = v61 + *(v127 + 20);
      v87 = v125;
      *v86 = v50;
      *(v86 + 8) = v87;
      *(v86 + 16) = v55;
      *(v86 + 26) = BYTE2(v53);
      *(v86 + 24) = v53;
      *(v86 + 32) = v116;
      *(v86 + 40) = v84;
      sub_1ABA83598((v61 + *(v85 + 24)));
      v88 = v123;
      sub_1ABAF7FE4(v61, v123, v89);
      v90 = 0;
LABEL_10:
      sub_1ABA7B9B4(v88, v90, 1, v85);
      v91 = type metadata accessor for AssetRegistryAssetLocalAvailabilityInfo(0);
      sub_1ABA7B9B4(v88, 0, 1, v91);
      goto LABEL_11;
    }

    v129[0] = 47;
    v129[1] = 0xE100000000000000;
    sub_1ABA826A8();
    sub_1ABA972BC();
    sub_1ABAF8040(v62, v63, v64, v65);
    sub_1ABAAA4A0();
    sub_1ABAAA44C();
    v125 = v51;
    v66 = sub_1ABF23B44();
    v60 = v124;
    v61 = v136;
    if (v66)
    {
      sub_1ABA7ED8C();
      v83 = v126;
      sub_1ABA7B9B4(v67, v68, v69, v126);
      v70 = *MEMORY[0x1E6968F70];
      v71 = *(v121 + 104);
      v121 = v52;
      v71(v120, v70, v122);
      v56 = v128;
      sub_1ABF21CD4();
      v84 = v115;
      v55 = v121;
      goto LABEL_9;
    }

    sub_1ABAF8054();
    sub_1ABA7D104();
    swift_allocError();
    *v77 = 0;
    swift_willThrow();
    v78 = v125;
    sub_1ABA972BC();
    sub_1ABAF7FB8(v79, v80, v81, v82);

    sub_1ABAF7FB8(v50, v78, v52, v53);
  }

LABEL_11:
  sub_1ABA7BC90();
}

uint64_t AssetRegistry.assets(for:)()
{
  sub_1ABA7BBF8();
  v1[111] = v0;
  v1[110] = v2;
  v3 = type metadata accessor for TrialAssetManager.Asset(0);
  v1[112] = v3;
  sub_1ABA7AB80(v3);
  v5 = *(v4 + 64);
  v1[113] = sub_1ABA7E314();
  v6 = sub_1ABAD219C(&qword_1EB4DBB00, &qword_1ABF34A00);
  v1[114] = v6;
  sub_1ABA7BBD0(v6);
  v1[115] = v7;
  v9 = *(v8 + 64);
  v1[116] = sub_1ABA96BDC();
  v1[117] = swift_task_alloc();
  v1[118] = swift_task_alloc();
  v10 = sub_1ABAD219C(&qword_1EB4D1E50, &qword_1ABF34A08);
  sub_1ABA7AB80(v10);
  v12 = *(v11 + 64);
  v1[119] = sub_1ABA96BDC();
  v1[120] = swift_task_alloc();
  v13 = sub_1ABF21C24();
  v1[121] = v13;
  sub_1ABA7BBD0(v13);
  v1[122] = v14;
  v16 = *(v15 + 64);
  v1[123] = sub_1ABA7E314();
  v17 = sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  sub_1ABA7AB80(v17);
  v19 = *(v18 + 64);
  v1[124] = sub_1ABA7E314();
  v20 = sub_1ABF21CF4();
  v1[125] = v20;
  sub_1ABA7BBD0(v20);
  v1[126] = v21;
  v23 = *(v22 + 64);
  v1[127] = sub_1ABA96BDC();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v24 = type metadata accessor for AssetRegistryAsset(0);
  v1[130] = v24;
  sub_1ABA7AB80(v24);
  v26 = *(v25 + 64);
  v1[131] = sub_1ABA7E314();
  v27 = sub_1ABAD219C(&qword_1EB4D1E58, &qword_1ABF34A10);
  v1[132] = v27;
  sub_1ABA7BBD0(v27);
  v1[133] = v28;
  v30 = *(v29 + 64);
  v1[134] = sub_1ABA96BDC();
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

void sub_1ABAF4B18()
{
  v402 = v0;
  v358 = (v0 + 664);
  v359 = (v0 + 728);
  v360 = (v0 + 632);
  v352 = (v0 + 696);
  v375 = v0 + 864;
  v341 = *(v0 + 1064);
  v344 = *(v0 + 1040);
  v1 = *(v0 + 1008);
  v2 = *(v0 + 976);
  v361 = *(v0 + 888);
  v3 = *(v0 + 880);
  sub_1ABAD219C(&qword_1EB4D1E60, &qword_1ABF34A18);
  *(v0 + 856) = sub_1ABF239C4();
  v4 = sub_1ABAD219C(&qword_1EB4D1E68, &qword_1ABF34A20);
  sub_1ABAD219C(&qword_1EB4D1E70, &qword_1ABF34A28);
  sub_1ABAF80C8();
  v335 = v4;
  *(v0 + 864) = sub_1ABF239C4();
  v6 = v3 + 64;
  v5 = *(v3 + 64);
  v7 = *(v3 + 32);
  sub_1ABAB57FC();
  v10 = v9 & v8;
  v12 = (63 - v11) >> 6;
  v343 = *MEMORY[0x1E6968F70];
  v342 = (v2 + 104);
  v353 = (v1 + 32);
  v336 = (v1 + 8);
  v337 = (v1 + 16);
  v345 = v3;

  v14 = 0;
  v369 = v0;
  v339 = v12;
  v340 = v3 + 64;
  if (!v10)
  {
    while (1)
    {
LABEL_3:
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_119;
      }

      if (v15 >= v12)
      {
        break;
      }

      v10 = *(v6 + 8 * v15);
      ++v14;
      if (v10)
      {
        goto LABEL_6;
      }
    }

    v247 = *(v0 + 880);

    v248 = *(v0 + 864);
    *(v0 + 1104) = v248;
    if (*(v248 + 16))
    {
      v249 = *(v0 + 888);
      *(v0 + 1112) = sub_1ABAF34A4();
      v262 = *(v248 + 32);
      *(v0 + 1205) = v262;
      v263 = 1 << v262;
      if (v263 < 64)
      {
        v264 = ~(-1 << v263);
      }

      else
      {
        v264 = -1;
      }

      v265 = v264 & *(v248 + 64);

      v266 = 0;
      if (v265)
      {
        while (1)
        {
          v267 = *(v0 + 1104);
LABEL_97:
          *(v0 + 1128) = v266;
          *(v0 + 1120) = v265;
          v269 = sub_1ABAA27C0(v266);
          v271 = -1 << v270;
          v272 = -(-1 << v270) < 64 ? ~(-1 << -v271) : -1;
          v273 = v272 & *(v269 + 64);

          if (v273)
          {
            goto LABEL_120;
          }

          v274 = 0;
          while (((63 - v271) >> 6) - 1 != v274)
          {
            v275 = v274 + 1;
            if (*(v13 + 8 * v274++ + 72))
            {
              goto LABEL_121;
            }
          }

          v266 = *(v0 + 1128);
          v265 = (*(v0 + 1120) - 1) & *(v0 + 1120);
          if (!v265)
          {
            goto LABEL_93;
          }
        }
      }

      while (1)
      {
LABEL_93:
        v268 = v266 + 1;
        if (__OFADD__(v266, 1))
        {
          goto LABEL_139;
        }

        if (v268 >= (((1 << *(v0 + 1205)) + 63) >> 6))
        {
          break;
        }

        v265 = *(*(v0 + 1104) + 8 * v268 + 64);
        ++v266;
        if (v265)
        {
          v266 = v268;
          goto LABEL_97;
        }
      }

      v277 = *(v0 + 1112);
      v278 = *(v0 + 1104);
    }

    v250 = *(v0 + 1096);
    v251 = *(v0 + 1088);
    v252 = *(v0 + 1080);
    v253 = *(v0 + 1072);
    v254 = *(v0 + 1048);
    v255 = *(v0 + 1032);
    v256 = *(v0 + 1024);
    v257 = *(v0 + 1016);
    v258 = *(v0 + 992);
    v259 = *(v0 + 984);
    v373 = *(v0 + 960);
    v376 = *(v0 + 952);
    v379 = *(v0 + 944);
    v383 = *(v0 + 936);
    v386 = *(v0 + 928);
    v389 = *(v0 + 904);
    v392 = *(v0 + 856);

    sub_1ABA82A20();
    sub_1ABAFF5CC();

    __asm { BRAA            X2, X16 }
  }

LABEL_2:
  v15 = v14;
LABEL_6:
  v16 = *(v0 + 1056);
  v346 = v15;
  v347 = (v10 - 1) & v10;
  v17 = __clz(__rbit64(v10)) | (v15 << 6);
  v18 = (*(v345 + 48) + 16 * v17);
  v20 = *v18;
  v19 = v18[1];
  v21 = *(*(v345 + 56) + 8 * v17);

  sub_1ABF239C4();
  v22 = *(v0 + 856);
  swift_isUniquelyReferenced_nonNull_native();
  v395 = v22;
  v378 = v20;
  v388 = v19;
  sub_1ABAFBB14();
  v23 = 0;
  *(v0 + 856) = v395;
  v24 = *(v21 + 56);
  v25 = *(v21 + 32);
  sub_1ABAB57FC();
  v29 = v28 & v27;
  v31 = (63 - v30) >> 6;
  v363 = v26;
  v364 = v21;
  v362 = v31;
LABEL_7:
  if (v29)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v32 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v32 >= v31)
    {

      v14 = v346;
      v10 = v347;
      v12 = v339;
      v6 = v340;
      if (!v347)
      {
        goto LABEL_3;
      }

      goto LABEL_2;
    }

    v29 = *(v26 + 8 * v32);
    ++v23;
    if (v29)
    {
      v23 = v32;
LABEL_12:
      v33 = (*(v21 + 48) + ((v23 << 10) | (16 * __clz(__rbit64(v29)))));
      v35 = *v33;
      v34 = v33[1];
      v36 = v361[5];
      v37 = v361[6];
      sub_1ABA93E20(v361 + 2, v36);
      v43 = *(v37 + 8);

      v370 = v35;
      v38 = v35;
      v385 = v34;
      v39 = v29;
      v43(&v395, v38, v34, v378, v388, v36, v37);
      v29 = (v39 - 1) & v39;
      v40 = v395;
      v41 = v396;
      v42 = v397;
      LODWORD(v43) = v398 | (v399 << 16);
      v366 = v400;
      v391 = v401;
      v365 = v43 >> 16;
      if ((v398 & 0x80) != 0)
      {
        v372 = v395;
        v382 = v396;
        v368 = (v39 - 1) & v39;
        v53 = *v375;
        v54 = *(*v375 + 16);

        v55 = v43 >> 8;
        if (v54)
        {
          sub_1ABAF8618(v43 >> 8);
          if (v56)
          {
            v57 = v372;
LABEL_33:
            if (v53[2])
            {
              v85 = sub_1ABAF8618(v55);
              if (v86)
              {
                if (*(*(v53[7] + 8 * v85) + 16))
                {

                  sub_1ABA7ED68();
                  sub_1ABAF85A0(v57, v87, sub_1ABAF98C8);
                  v89 = v88;

                  if (v89)
                  {
                    goto LABEL_51;
                  }
                }
              }
            }

            v90 = sub_1ABAF7148(v360, v55);
            v92 = v90;
            if (!*v91)
            {
              goto LABEL_50;
            }

            v93 = v91;
            v350 = v90;
            v354 = v43;
            sub_1ABAD219C(&qword_1EB4D1E98, &qword_1ABF34A40);
            v94 = sub_1ABF239C4();
            v95 = *v93;
            swift_isUniquelyReferenced_nonNull_native();
            v395 = *v93;
            *v93 = 0x8000000000000000;
            sub_1ABA7ED68();
            sub_1ABAF85A0(v57, v96, sub_1ABAF98C8);
            sub_1ABA7BC80();
            if (!__OFADD__(v99, v100))
            {
              v101 = v97;
              v102 = v98;
              sub_1ABAD219C(&qword_1EB4D1EA0, &qword_1ABF34A48);
              sub_1ABA8C914();
              v103 = sub_1ABF24C64();
              v104 = v395;
              if (v103)
              {
                sub_1ABA7ED68();
                sub_1ABAF85A0(v372, v105, sub_1ABAF98C8);
                sub_1ABAA3404();
                if (!v71)
                {
                  goto LABEL_115;
                }

                v101 = v106;
              }

              if (v102)
              {
                v107 = v104[7];
                v108 = *(v107 + 8 * v101);
                *(v107 + 8 * v101) = v94;

                goto LABEL_49;
              }

              sub_1ABA7D110(&v104[v101 >> 6]);
              *(v104[6] + v101) = v372;
              *(v104[7] + 8 * v101) = v94;
              v130 = v104[2];
              v73 = __OFADD__(v130, 1);
              v131 = v130 + 1;
              if (!v73)
              {
                v104[2] = v131;
LABEL_49:
                v132 = *v93;
                *v93 = v104;

                v0 = v369;
                LOWORD(v43) = v354;
                v57 = v372;
                v92 = v350;
LABEL_50:
                v92();
LABEL_51:
                v133 = sub_1ABAF7148(v358, v55);
                if (!*v134)
                {

                  sub_1ABAA3B90();
                  sub_1ABAF7FB8(v155, v156, v157, v158);
                  v159 = sub_1ABA8C520();
                  (v133)(v159);
                  sub_1ABAA3B90();
                  sub_1ABAF7FB8(v160, v161, v162, v163);
                  goto LABEL_65;
                }

                v135 = sub_1ABAF71AC(v352, v57);
                v137 = v135;
                if (!*v136)
                {

                  v164 = sub_1ABA8C520();
                  (v137)(v164);
                  sub_1ABAA3B90();
                  sub_1ABAF7FB8(v165, v166, v167, v168);
                  v133();
                  sub_1ABAA3B90();
                  sub_1ABAF7FB8(v169, v170, v171, v172);
                  goto LABEL_65;
                }

                v138 = v136;
                v351 = v135;
                v355 = v133;

                sub_1ABAA3B90();
                sub_1ABAF8040(v139, v140, v141, v142);
                v143 = v43;
                sub_1ABAF8040(v57, v382, v42, v43);

                v144 = *v138;
                swift_isUniquelyReferenced_nonNull_native();
                v395 = *v138;
                *v138 = 0x8000000000000000;
                sub_1ABA8EF60();
                v145 = v42;
                sub_1ABA94F58(v382, v42, v146, sub_1ABA955E8);
                sub_1ABA7BC80();
                if (!__OFADD__(v149, v150))
                {
                  v151 = v147;
                  v152 = v148;
                  sub_1ABAD219C(&qword_1EB4D1EA8, &qword_1ABF34A50);
                  sub_1ABA8C914();
                  if (sub_1ABF24C64())
                  {
                    sub_1ABA8EF60();
                    sub_1ABA94F58(v382, v42, v153, sub_1ABA955E8);
                    sub_1ABAA3404();
                    if (!v71)
                    {
                      goto LABEL_115;
                    }

                    v151 = v154;
                  }

                  if (v152)
                  {
                    sub_1ABAF7FB8(v372, v382, v42, v143);
                    v173 = v42;
                    v174 = v395;
                    v175 = (v395[7] + 88 * v151);
                    memcpy((v0 + 16), v175, 0x58uLL);
                    *v175 = v378;
                    v175[1] = v388;
                    v175[2] = v370;
                    v175[3] = v385;
                    *(v175 + 32) = v143 & 1;
                    v175[5] = v372;
                    v175[6] = v382;
                    v175[7] = v173;
                    *(v175 + 66) = v365;
                    *(v175 + 32) = v143;
                    v175[9] = v366;
                    v175[10] = v391;
                    sub_1ABAFC73C(v0 + 16, &qword_1EB4D1E98);
                    goto LABEL_64;
                  }

                  v174 = v395;
                  sub_1ABA963C8(&v395[v151 >> 6]);
                  v176 = (v174[6] + 16 * v151);
                  *v176 = v382;
                  v176[1] = v177;
                  v178 = v174[7] + 88 * v151;
                  *v178 = v378;
                  *(v178 + 8) = v388;
                  *(v178 + 16) = v370;
                  *(v178 + 24) = v385;
                  *(v178 + 32) = v179;
                  *(v178 + 40) = v372;
                  *(v178 + 48) = v382;
                  *(v178 + 56) = v177;
                  *(v178 + 66) = v365;
                  *(v178 + 64) = v143;
                  *(v178 + 72) = v366;
                  *(v178 + 80) = v391;
                  v180 = v174[2];
                  v73 = __OFADD__(v180, 1);
                  v181 = v180 + 1;
                  if (!v73)
                  {
                    v174[2] = v181;
                    v173 = v145;
LABEL_64:
                    v182 = *v138;
                    *v138 = v174;

                    v351();
                    v355();
                    v183 = sub_1ABA82DAC();
                    sub_1ABAF7FB8(v183, v184, v173, v143);
                    v185 = sub_1ABA82DAC();
                    sub_1ABAF7FB8(v185, v186, v173, v143);
LABEL_65:

                    v26 = v363;
                    v21 = v364;
                    v31 = v362;
                    v29 = v368;
                    goto LABEL_7;
                  }

LABEL_143:
                  __break(1u);
LABEL_144:
                  __break(1u);
                  return;
                }

LABEL_138:
                __break(1u);
LABEL_139:
                __break(1u);
LABEL_140:
                __break(1u);
LABEL_141:
                __break(1u);
              }

              __break(1u);
              goto LABEL_143;
            }

LABEL_137:
            __break(1u);
            goto LABEL_138;
          }
        }

        v58 = v42;
        v59 = v43;
        sub_1ABAD219C(&qword_1EB4D1E88, &qword_1ABF34A30);
        sub_1ABA94588();
        v60 = sub_1ABF239C4();
        swift_isUniquelyReferenced_nonNull_native();
        v395 = v53;
        v61 = v43 >> 8;
        sub_1ABAF8618(v43 >> 8);
        sub_1ABA7BC80();
        if (__OFADD__(v64, v65))
        {
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        v66 = v62;
        v67 = v63;
        sub_1ABAD219C(&qword_1EB4D1E90, &qword_1ABF34A38);
        sub_1ABA8C914();
        v68 = sub_1ABF24C64();
        v53 = v395;
        if (v68)
        {
          sub_1ABAF8618(v61);
          sub_1ABAA3404();
          v70 = v369;
          v57 = v372;
          if (!v71)
          {
            goto LABEL_115;
          }

          v66 = v69;
          if ((v67 & 1) == 0)
          {
LABEL_27:
            sub_1ABA7D110(&v53[v66 >> 6]);
            *(v53[6] + 2 * v66) = v61;
            *(v53[7] + 8 * v66) = v60;
            v72 = v53[2];
            v73 = __OFADD__(v72, 1);
            v74 = v72 + 1;
            if (v73)
            {
              goto LABEL_140;
            }

            v53[2] = v74;
LABEL_32:
            *v375 = v53;
            LOWORD(v43) = v59;
            v42 = v58;
            v55 = v61;
            v0 = v70;
            goto LABEL_33;
          }
        }

        else
        {
          v70 = v369;
          v57 = v372;
          if ((v67 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        v83 = v53[7];
        v84 = *(v83 + 8 * v66);
        *(v83 + 8 * v66) = v60;

        goto LABEL_32;
      }

      sub_1ABAF7FD8();
      v44 = sub_1ABAF70D4(v359, v378, v388);
      v45 = v44;
      v371 = v46;
      v47 = v40;
      if (!*v46)
      {

        v75 = sub_1ABA931C8();
        sub_1ABAF7FB8(v75, v76, v77, v78);
        (v45)(v359, 0);
        v79 = sub_1ABA931C8();
        sub_1ABAF7FB8(v79, v80, v81, v82);

        v31 = v362;
        v26 = v363;
        v21 = v364;
        goto LABEL_7;
      }

      v349 = v44;
      v367 = v29;
      v381 = v41;
      if ((v43 & 1) == 0)
      {
        *(v0 + 824) = v40;
        *(v0 + 832) = v41;
        *(v0 + 840) = 47;
        *(v0 + 848) = 0xE100000000000000;
        v109 = sub_1ABA931C8();
        sub_1ABAF8040(v109, v110, v111, v112);
        v113 = sub_1ABA931C8();
        sub_1ABAF8040(v113, v114, v115, v116);
        sub_1ABAAA4A0();
        sub_1ABAAA44C();

        if (sub_1ABF23B44())
        {
          v117 = *(v0 + 1032);
          v118 = *(v0 + 1000);
          v119 = *(v0 + 992);
          v120 = *(v0 + 984);
          v121 = v42;
          v122 = *(v0 + 968);
          sub_1ABA7ED8C();
          sub_1ABA7B9B4(v123, v124, v125, v126);
          (*v342)(v120, v343, v122);
          sub_1ABA82DAC();
          sub_1ABF21CD4();
          v127 = sub_1ABA82DAC();
          sub_1ABAF7FB8(v127, v128, v121, v43);
          v129 = *v353;
          goto LABEL_70;
        }

        v280 = sub_1ABA931C8();
        sub_1ABAF7FB8(v280, v281, v282, v283);

        sub_1ABAF8054();
        sub_1ABA7D104();
        swift_allocError();
        *v284 = 0;
        swift_willThrow();
LABEL_112:
        v285 = *(v369 + 880);
        v286 = sub_1ABA931C8();
        sub_1ABAF7FB8(v286, v287, v288, v289);

        v290 = sub_1ABA931C8();
        sub_1ABAF7FB8(v290, v291, v292, v293);
        v349();
        v294 = sub_1ABA931C8();
        sub_1ABAF7FB8(v294, v295, v296, v297);

        v298 = *(v369 + 856);

        v299 = *(v369 + 1096);
        sub_1ABAB5C10();
        v374 = *(v369 + 984);
        v377 = *(v369 + 960);
        v380 = *(v369 + 952);
        v384 = *(v369 + 944);
        v387 = *(v369 + 936);
        v390 = *(v369 + 928);
        v393 = *(v369 + 904);
        v300 = *(v369 + 864);

        sub_1ABA7BBE0();
        sub_1ABAFF5CC();

        __asm { BRAA            X1, X16 }
      }

      *(v0 + 792) = v41;
      *(v0 + 800) = v42;
      *(v0 + 808) = 47;
      *(v0 + 816) = 0xE100000000000000;
      v48 = sub_1ABA931C8();
      sub_1ABAF8040(v48, v49, v50, v51);
      sub_1ABAAA4A0();
      sub_1ABAAA44C();

      if (sub_1ABF23B44())
      {
        sub_1ABAFC69C();
        sub_1ABA7D104();
        swift_allocError();
        *v279 = 0;
LABEL_111:
        swift_willThrow();

        goto LABEL_112;
      }

      if (v40)
      {
        v52 = &qword_1ED870630;
        if (qword_1ED870628 != -1)
        {
          swift_once();
          v52 = &qword_1ED870630;
        }
      }

      else
      {
        v52 = &qword_1ED871EA8;
        if (qword_1ED871EA0 != -1)
        {
          swift_once();
          v52 = &qword_1ED871EA8;
        }
      }

      v187 = [*v52 resourceURL];
      if (!v187)
      {
        sub_1ABAFC5D8();
        sub_1ABA7D104();
        swift_allocError();
        goto LABEL_111;
      }

      v188 = v187;
      v338 = *(v369 + 1032);
      v189 = *(v369 + 1024);
      v356 = v43;
      v190 = *(v369 + 1016);
      v191 = *(v369 + 1000);
      v192 = *(v369 + 992);
      v193 = *(v369 + 984);
      v121 = v42;
      v194 = *(v369 + 968);
      sub_1ABF21CA4();

      v195 = *v353;
      (*v353)(v189, v190, v191);
      v43 = v189;
      (*v337)(v192, v189, v191);
      v196 = sub_1ABAB1000();
      sub_1ABA7B9B4(v196, v197, v198, v191);
      (*v342)(v193, v343, v194);

      v41 = v381;
      v0 = v369;
      sub_1ABF21CD4();
      (*v336)(v43, v191);
      v199 = sub_1ABA82DAC();
      LOWORD(v43) = v356;
      sub_1ABAF7FB8(v199, v200, v121, v356);
      v129 = v195;
LABEL_70:
      v201 = *(v0 + 1096);
      v357 = *(v0 + 1088);
      v202 = *(v0 + 1056);
      v203 = *(v0 + 1048);
      v204 = *(v0 + 1040);
      v129(v203, *(v0 + 1032), *(v0 + 1000));
      v205 = v203 + *(v344 + 20);
      *v205 = v47;
      *(v205 + 8) = v41;
      v348 = v121;
      *(v205 + 16) = v121;
      *(v205 + 26) = v365;
      *(v205 + 24) = v43;
      *(v205 + 32) = v366;
      *(v205 + 40) = v391;
      sub_1ABA83598((v203 + *(v344 + 24)));
      sub_1ABAF7FE4(v203, v201, v206);
      v207 = sub_1ABAB1000();
      sub_1ABA7B9B4(v207, v208, v209, v204);
      swift_storeEnumTagMultiPayload();
      sub_1ABAFC6F0(v201, v357, &qword_1EB4D1E58, &qword_1ABF34A10);
      v210 = *v371;
      swift_isUniquelyReferenced_nonNull_native();
      v395 = *v371;
      *v371 = 0x8000000000000000;
      sub_1ABA8EF60();
      sub_1ABA94F58(v370, v385, v211, sub_1ABA955E8);
      sub_1ABA7BC80();
      if (__OFADD__(v214, v215))
      {
        goto LABEL_136;
      }

      v216 = v212;
      v217 = v213;
      sub_1ABAD219C(&qword_1EB4D1EB8, &qword_1ABF34A58);
      sub_1ABA8C914();
      if (sub_1ABF24C64())
      {
        sub_1ABA8EF60();
        sub_1ABA94F58(v370, v385, v218, sub_1ABA955E8);
        sub_1ABA905B0();
        v220 = v369;
        if (!v71)
        {
LABEL_115:
          sub_1ABAFF5CC();

          sub_1ABF25104();
          return;
        }

        v216 = v219;
      }

      else
      {
        v220 = v369;
      }

      v221 = *(v220 + 1088);
      v0 = v220;
      if (v217)
      {

        v223 = v395;
        v231 = sub_1ABAFF5F4(v222, v224, v225, v226, v227, v228, v229, v230, v335, v336, v337, v338, v339, v340, v341);
        sub_1ABAFC62C(v231, v232);
        goto LABEL_80;
      }

      v223 = v395;
      sub_1ABA963C8(&v395[v216 >> 6]);
      v233 = (v223[6] + 16 * v216);
      *v233 = v370;
      v233[1] = v385;
      v242 = sub_1ABAFF5F4(v234, v235, v236, v237, v238, v239, v240, v241, v335, v336, v337, v338, v339, v340, v341);
      sub_1ABAFC6F0(v242, v243, &qword_1EB4D1E58, &qword_1ABF34A10);
      v244 = v223[2];
      v73 = __OFADD__(v244, 1);
      v245 = v244 + 1;
      if (v73)
      {
        goto LABEL_141;
      }

      v223[2] = v245;
LABEL_80:
      v246 = *v371;
      *v371 = v223;

      v349();
      sub_1ABAF7FB8(v47, v381, v348, v43);

      v31 = v362;
      v26 = v363;
      v29 = v367;
      v21 = v364;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  v275 = 0;
LABEL_121:
  sub_1ABA95FE4(v13, v275);
  v394 = v304;
  v307 = *(v306 + 8 * v305);
  *(v0 + 1160) = v307;
  v308 = sub_1ABAD219C(&qword_1EB4D1EC8, &qword_1ABF34A60);
  v309 = sub_1ABF24D24();
  v310 = 0;
  sub_1ABA8B830(v309);
  sub_1ABAA03C4();
  v313 = v312 & v311;
  v315 = (v314 + 63) >> 6;
  v317 = v316 + 64;
  if ((v312 & v311) != 0)
  {
    do
    {
      v318 = __clz(__rbit64(v313));
      v313 &= v313 - 1;
LABEL_128:
      v321 = v318 | (v310 << 6);
      v322 = (*(v307 + 48) + 16 * v321);
      v324 = *v322;
      v323 = v322[1];
      LOBYTE(v322) = *(*(v307 + 56) + 88 * v321 + 32);
      *(v317 + ((v321 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v321;
      v325 = (v309[6] + 16 * v321);
      *v325 = v324;
      v325[1] = v323;
      *(v309[7] + v321) = v322;
      v326 = v309[2];
      v73 = __OFADD__(v326, 1);
      v327 = v326 + 1;
      if (v73)
      {
        goto LABEL_144;
      }

      v309[2] = v327;
    }

    while (v313);
  }

  v319 = v310;
  while (1)
  {
    v310 = v319 + 1;
    if (__OFADD__(v319, 1))
    {
      __break(1u);
      goto LABEL_135;
    }

    if (v310 >= v315)
    {
      break;
    }

    v320 = *(v308 + 8 * v310);
    ++v319;
    if (v320)
    {
      v318 = __clz(__rbit64(v320));
      v313 = (v320 - 1) & v320;
      goto LABEL_128;
    }
  }

  v328 = *(v369 + 1200);
  *(v369 + 1204) = v394;
  *(v369 + 1202) = v328;

  v329 = swift_task_alloc();
  *(v369 + 1176) = v329;
  *v329 = v369;
  sub_1ABAA3754(v329);
  v330 = *(v369 + 1112);
  sub_1ABAFF5CC();

  TrialAssetManager.assets(for:in:downloadOptions:)(v331, v332, v333);
}

uint64_t sub_1ABAF6188()
{
  sub_1ABA7BC10();
  v3 = v2;
  v4 = v2[147];
  v11 = *v1;
  v3[148] = v5;
  v3[149] = v0;

  if (v0)
  {
    v6 = v3[146];
    v7 = v3[145];
    v8 = v3[107];
  }

  else
  {
    v9 = v3[146];
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

void sub_1ABAF62C8()
{
  v1 = 0;
  v184 = (v0 + 872);
  v2 = *(v0 + 1184);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v195 = *(v0 + 1184);
  v6 = -1;
  v7 = -1 << *(v195 + 32);
  v199 = v4;
  v201 = *(v0 + 1160);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v197 = v9;
  if ((v6 & v3) == 0)
  {
LABEL_5:
    while (1)
    {
      v10 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        v74 = *(v0 + 952);
        sub_1ABAD219C(&qword_1EB4D1ED0, &qword_1ABF34A68);
        sub_1ABA7ED8C();
        sub_1ABA7B9B4(v75, v76, v77, v78);
        v8 = 0;
        goto LABEL_10;
      }

      v8 = *(v4 + 8 * v10);
      ++v1;
      if (v8)
      {
        v1 = v10;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  while (1)
  {
    v10 = v1;
LABEL_9:
    v11 = *(v0 + 952);
    v12 = *(v0 + 944);
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v10 << 6);
    v15 = (*(v195 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_1ABAFC790(*(v195 + 56) + *(*(v0 + 920) + 72) * v14, v12, &qword_1EB4DBB00, &qword_1ABF34A00);
    v18 = sub_1ABAD219C(&qword_1EB4D1ED0, &qword_1ABF34A68);
    v19 = *(v18 + 48);
    *v11 = v17;
    v11[1] = v16;
    sub_1ABAFC6F0(v12, v11 + v19, &qword_1EB4DBB00, &qword_1ABF34A00);
    v20 = sub_1ABAB1000();
    sub_1ABA7B9B4(v20, v21, v22, v18);

LABEL_10:
    v23 = *(v0 + 960);
    sub_1ABAFC6F0(*(v0 + 952), v23, &qword_1EB4D1E50, &qword_1ABF34A08);
    v24 = sub_1ABAD219C(&qword_1EB4D1ED0, &qword_1ABF34A68);
    if (sub_1ABA7E1E0(v23, 1, v24) == 1)
    {
      break;
    }

    v25 = *(v0 + 960);
    v26 = *v25;
    v27 = v25[1];
    sub_1ABAFC6F0(v25 + *(v24 + 48), *(v0 + 936), &qword_1EB4DBB00, &qword_1ABF34A00);
    if (!*(v201 + 16))
    {
      goto LABEL_23;
    }

    v28 = *(v0 + 1160);
    sub_1ABA8EF60();
    sub_1ABA94F58(v26, v27, v29, sub_1ABA955E8);
    if ((v30 & 1) == 0)
    {
      goto LABEL_23;
    }

    v190 = v26;
    sub_1ABAB525C();
    memcpy((v0 + 104), (v32 + v31 * v33), 0x58uLL);
    v187 = *(v0 + 104);
    v193 = *(v0 + 112);
    v34 = *(v0 + 128);
    v35 = *(v0 + 144);
    v36 = *(v0 + 152);
    v37 = *(v0 + 160);
    *(v0 + 170);
    v38 = *(v0 + 168);
    v39 = *(v0 + 184);
    sub_1ABAFC790(v0 + 104, v0 + 192, &qword_1EB4D1E98, &qword_1ABF34A40);
    v40 = sub_1ABA826A8();
    sub_1ABAF7FB8(v40, v41, v37, v38);

    if (!*(v201 + 16) || (v42 = *(v0 + 1160), sub_1ABA8EF60(), sub_1ABA94F58(v190, v27, v43, sub_1ABA955E8), (v44 & 1) == 0))
    {
LABEL_30:

      goto LABEL_23;
    }

    sub_1ABAB525C();
    memcpy((v0 + 280), (v46 + v45 * v47), 0x58uLL);
    v48 = *(v0 + 288);
    v185 = *(v0 + 296);
    v186 = *(v0 + 304);
    v49 = *(v0 + 320);
    v50 = *(v0 + 328);
    v51 = *(v0 + 336);
    *(v0 + 346);
    v52 = *(v0 + 344);
    v53 = *(v0 + 360);
    sub_1ABAFC790(v0 + 280, v0 + 368, &qword_1EB4D1E98, &qword_1ABF34A40);
    sub_1ABAF7FB8(v49, v50, v51, v52);

    if (!*(v201 + 16))
    {

LABEL_23:

      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v79 = sub_1ABF237F4();
      sub_1ABA7AA24(v79, qword_1ED871B40);
      v80 = sub_1ABF237D4();
      v81 = sub_1ABF24674();
      v82 = os_log_type_enabled(v80, v81);
      v83 = *(v0 + 936);
      if (v82)
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_1ABA78000, v80, v81, "domainId or assetId not found in trialAssetsToGet", v84, 2u);
        MEMORY[0x1AC5AB8B0](v84, -1, -1);
      }

      v85 = v83;
      goto LABEL_28;
    }

    v54 = *(v0 + 1160);
    sub_1ABA8EF60();
    v56 = sub_1ABA94F58(v190, v27, v55, sub_1ABA955E8);
    v58 = v57;

    if ((v58 & 1) == 0)
    {
      goto LABEL_30;
    }

    sub_1ABAB525C();
    memcpy((v0 + 456), (v59 + v56 * v60), 0x58uLL);
    v61 = *(v0 + 464);
    v62 = *(v0 + 480);
    v64 = *(v0 + 496);
    v63 = *(v0 + 504);
    v65 = *(v0 + 512);
    v66 = *(v0 + 520) | (*(v0 + 522) << 16);
    v182 = *(v0 + 528);
    v183 = *(v0 + 536);
    sub_1ABAFC790(v0 + 456, v0 + 544, &qword_1EB4D1E98, &qword_1ABF34A40);

    v67 = sub_1ABAF70D4((v0 + 760), v187, v193);
    v191 = v68;
    if (*v68)
    {
      v179 = v66;
      v180 = v64;
      v181 = v63;
      v188 = v65;
      v69 = *(v0 + 912);
      sub_1ABAFC790(*(v0 + 936), *(v0 + 928), &qword_1EB4DBB00, &qword_1ABF34A00);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v71 = *(v0 + 1080);
      v72 = *(v0 + 1056);
      v178 = v67;
      if (EnumCaseMultiPayload == 1)
      {
        v73 = *(v0 + 928);
        sub_1ABAF7FB8(v64, v181, v65, v66);

        *v71 = *v73;
      }

      else
      {
        v86 = *(v0 + 1040);
        v87 = *(v0 + 1008);
        v88 = *(v0 + 1000);
        v89 = *(v0 + 928);
        v90 = *(v0 + 904);
        v91 = *(v0 + 896);
        sub_1ABA94734();
        sub_1ABAF7FE4(v92, v90, v93);
        (*(v87 + 32))(v71, v90, v88);
        v94 = v71 + *(v86 + 20);
        *v94 = v180;
        *(v94 + 1) = v181;
        *(v94 + 2) = v188;
        v94[26] = BYTE2(v179);
        *(v94 + 12) = v179;
        *(v94 + 4) = v182;
        *(v94 + 5) = v183;
        v95 = *(v90 + *(v91 + 24) + 32);
        v96 = v71 + *(v86 + 24);
        sub_1ABAB2AA8(*(v90 + *(v91 + 20)));
        v97 = sub_1ABAB1000();
        sub_1ABA7B9B4(v97, v98, v99, v86);
      }

      swift_storeEnumTagMultiPayload();
      sub_1ABAFC6F0(*(v0 + 1080), *(v0 + 1072), &qword_1EB4D1E58, &qword_1ABF34A10);
      v100 = *v191;
      swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 872) = *v191;
      *v191 = 0x8000000000000000;
      sub_1ABA8EF60();
      v102 = sub_1ABA94F58(v185, v186, v101, sub_1ABA955E8);
      sub_1ABA7D0D8(v102, v103);
      if (v106)
      {
        goto LABEL_83;
      }

      v107 = v104;
      v108 = v105;
      sub_1ABAD219C(&qword_1EB4D1EB8, &qword_1ABF34A58);
      if (sub_1ABF24C64())
      {
        v109 = *v184;
        sub_1ABA8EF60();
        v111 = sub_1ABA94F58(v185, v186, v110, sub_1ABA955E8);
        if ((v108 & 1) != (v112 & 1))
        {
          goto LABEL_78;
        }

        v107 = v111;
      }

      v113 = *(v0 + 1072);
      v114 = *(v0 + 1064);
      if (v108)
      {

        v115 = *v184;
        v116 = sub_1ABA8BA44();
        sub_1ABAFC62C(v116, v117);
      }

      else
      {
        v115 = *v184;
        sub_1ABA7D110(*v184 + 8 * (v107 >> 6));
        v118 = (*(v115 + 48) + 16 * v107);
        *v118 = v185;
        v118[1] = v119;
        v120 = sub_1ABA8BA44();
        sub_1ABAFC6F0(v120, v121, &qword_1EB4D1E58, &qword_1ABF34A10);
        v122 = *(v115 + 16);
        v106 = __OFADD__(v122, 1);
        v123 = v122 + 1;
        if (v106)
        {
          goto LABEL_84;
        }

        *(v115 + 16) = v123;
      }

      v124 = *v191;
      *v191 = v115;

      v67 = v178;
    }

    else
    {

      sub_1ABAF7FB8(v64, v63, v65, v66);
    }

    v67();
    v125 = *(v0 + 936);

    v85 = v125;
LABEL_28:
    sub_1ABAFC73C(v85, &qword_1EB4DBB00);
    v9 = v197;
    v4 = v199;
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v126 = *(v0 + 1184);
  v127 = *(v0 + 1160);

  v128 = *(v0 + 1152);
  if (((*(v0 + 1144) - 1) & *(v0 + 1144)) != 0)
  {
LABEL_58:
    v130 = *(v0 + 1136);
LABEL_59:
    sub_1ABA95FE4(v130, v128);
    v202 = v140;
    v143 = *(v142 + 8 * v141);
    *(v0 + 1160) = v143;
    v144 = sub_1ABAD219C(&qword_1EB4D1EC8, &qword_1ABF34A60);
    v145 = sub_1ABF24D24();
    v146 = 0;
    sub_1ABA8B830(v145);
    sub_1ABAA03C4();
    v149 = v148 & v147;
    v151 = (v150 + 63) >> 6;
    v153 = v152 + 64;
    if ((v148 & v147) != 0)
    {
      while (1)
      {
        v154 = __clz(__rbit64(v149));
        v149 &= v149 - 1;
LABEL_66:
        v157 = v154 | (v146 << 6);
        v158 = (*(v143 + 48) + 16 * v157);
        v160 = *v158;
        v159 = v158[1];
        LOBYTE(v158) = *(*(v143 + 56) + 88 * v157 + 32);
        *(v153 + ((v157 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v157;
        v161 = (v145[6] + 16 * v157);
        *v161 = v160;
        v161[1] = v159;
        *(v145[7] + v157) = v158;
        v162 = v145[2];
        v106 = __OFADD__(v162, 1);
        v163 = v162 + 1;
        if (v106)
        {
          break;
        }

        v145[2] = v163;

        if (!v149)
        {
          goto LABEL_61;
        }
      }

LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      return;
    }

LABEL_61:
    v155 = v146;
    while (1)
    {
      v146 = v155 + 1;
      if (__OFADD__(v155, 1))
      {
        goto LABEL_76;
      }

      if (v146 >= v151)
      {
        v164 = *(v0 + 1200);
        *(v0 + 1204) = v202;
        *(v0 + 1202) = v164;

        v165 = swift_task_alloc();
        *(v0 + 1176) = v165;
        *v165 = v0;
        sub_1ABAA3754();
        v166 = *(v0 + 1112);
        sub_1ABA8B618();

        TrialAssetManager.assets(for:in:downloadOptions:)(v167, v168, v169);
        return;
      }

      v156 = *(v144 + 8 * v146);
      ++v155;
      if (v156)
      {
        v154 = __clz(__rbit64(v156));
        v149 = (v156 - 1) & v156;
        goto LABEL_66;
      }
    }
  }

  while (1)
  {
    v129 = v128 + 1;
    if (__OFADD__(v128, 1))
    {
      break;
    }

    v130 = *(v0 + 1136);
    if (v129 >= (((1 << *(v0 + 1206)) + 63) >> 6))
    {

      v131 = *(v0 + 1128);
      v132 = (*(v0 + 1120) - 1) & *(v0 + 1120);
      if (!v132)
      {
        while (1)
        {
          v134 = v131 + 1;
          if (__OFADD__(v131, 1))
          {
            break;
          }

          if (v134 >= (((1 << *(v0 + 1205)) + 63) >> 6))
          {
            v171 = *(v0 + 1112);
            v172 = *(v0 + 1104);

            v173 = *(v0 + 1096);
            sub_1ABAB5C10();
            v174 = *(v0 + 984);
            v189 = *(v0 + 960);
            v192 = *(v0 + 952);
            v194 = *(v0 + 944);
            v196 = *(v0 + 936);
            v198 = *(v0 + 928);
            v200 = *(v0 + 904);
            v203 = *(v0 + 856);

            sub_1ABA82A20();
            sub_1ABA8B618();

            __asm { BRAA            X2, X16 }
          }

          v132 = *(*(v0 + 1104) + 8 * v134 + 64);
          ++v131;
          if (v132)
          {
            v131 = v134;
            goto LABEL_54;
          }
        }

        __break(1u);
        goto LABEL_82;
      }

      v133 = *(v0 + 1104);
LABEL_54:
      *(v0 + 1128) = v131;
      *(v0 + 1120) = v132;
      v135 = sub_1ABAA27C0(v131);
      v137 = 1 << v136;
      if (v137 < 64)
      {
        v138 = ~(-1 << v137);
      }

      else
      {
        v138 = -1;
      }

      v139 = v138 & *(v135 + 64);

      v128 = 0;
      if (v139)
      {
        goto LABEL_58;
      }
    }

    else
    {
      ++v128;
      if (*(v130 + 8 * v129 + 64))
      {
        v128 = v129;
        goto LABEL_59;
      }
    }
  }

LABEL_77:
  __break(1u);
LABEL_78:
  sub_1ABA8B618();

  sub_1ABF25104();
}

void sub_1ABAF6EF8()
{
  v1 = v0[142];
  v2 = v0[139];
  v3 = v0[138];

  v23 = v0[149];
  v4 = v0[137];
  v5 = v0[136];
  v6 = v0[135];
  v7 = v0[134];
  v8 = v0[131];
  v9 = v0[129];
  v10 = v0[128];
  v11 = v0[127];
  v12 = v0[124];
  v16 = v0[123];
  v17 = v0[120];
  v18 = v0[119];
  v19 = v0[118];
  v20 = v0[117];
  v21 = v0[116];
  v22 = v0[113];
  v13 = v0[108];

  sub_1ABA7BBE0();
  sub_1ABAA0280();

  __asm { BRAA            X1, X16 }
}

uint64_t (*sub_1ABAF7064(void *a1))()
{
  v2 = sub_1ABAFDD10(0x28uLL);
  *a1 = v2;
  sub_1ABA96BD0();
  v2[4] = sub_1ABAFE134(v3, v4, v5);
  return sub_1ABAFF5B4;
}

uint64_t (*sub_1ABAF70D4(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_1ABAFDD10(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1ABAFE2F0(v6, a2, a3);
  return sub_1ABAFF5B4;
}

uint64_t (*sub_1ABAF7148(void *a1, int a2))()
{
  v4 = sub_1ABAFDD10(0x28uLL);
  *a1 = v4;
  v4[4] = sub_1ABAFE260(v4, a2);
  return sub_1ABAFF5B4;
}

uint64_t (*sub_1ABAF71AC(void *a1, uint64_t a2))()
{
  v4 = sub_1ABAFDD10(0x28uLL);
  *a1 = v4;
  v4[4] = sub_1ABAFE1CC(v4, a2);
  return sub_1ABAF7210;
}

void sub_1ABAF7214(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = sub_1ABA8C520();
  v4(v3);

  free(v1);
}

uint64_t AssetRegistry.deinit()
{
  sub_1ABA84B54((v0 + 16));
  sub_1ABAFC7DC(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  return v0;
}

uint64_t AssetRegistry.__deallocating_deinit()
{
  sub_1ABA84B54((v0 + 16));
  sub_1ABAFC7DC(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_1ABAF72F0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1ABA7FDA0;

  return AssetRegistry.asset(for:in:)();
}

uint64_t sub_1ABAF73BC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1ABAF7454;

  return AssetRegistry.assets(for:)();
}

uint64_t sub_1ABAF7454()
{
  sub_1ABA7BBF8();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_1ABA7BBC0();
  *v7 = v6;

  sub_1ABA82A20();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1ABAF7588@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  if (*a1)
  {
    v5 = type metadata accessor for InferenceSupportRemoteBackendXPC();
    v9 = v4;
    result = sub_1ABD4E658(v5, &v9);
    v7 = &off_1F207B058;
  }

  else
  {
    v5 = sub_1ABAD219C(&qword_1EB4D2040, &qword_1ABF35230);
    v8 = v4;
    result = sub_1ABB0CFA4(&v8);
    v7 = &off_1F20959E0;
  }

  a3[3] = v5;
  a3[4] = v7;
  *a3 = result;
  return result;
}

uint64_t sub_1ABAF7624@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(GDXPCAssetRegistryService) init];
  v3 = sub_1ABF21854();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_1ABF21844();
  v7 = sub_1ABF217F4();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_1ABF217E4();
  v11 = sub_1ABAD219C(&qword_1EB4D2038, &qword_1ABF35228);
  v12 = swift_allocObject();
  sub_1ABAD219C(&qword_1EB4D2040, &qword_1ABF35230);
  swift_allocObject();
  result = sub_1ABB0DD94(1, v2, v6, v10);
  *(v12 + 16) = result;
  a1[3] = v11;
  a1[4] = &protocol witness table for AssetRegistryRemoteWritableBackendXPC<A>;
  *a1 = v12;
  return result;
}

uint64_t sub_1ABAF7744(uint64_t a1)
{
  v2 = sub_1ABAFC844();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABAF7780(uint64_t a1)
{
  v2 = sub_1ABAFC844();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetRegistryParameters.LocalOptions.encode(to:)(void *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D1ED8, &qword_1ABF34A70);
  sub_1ABA7BB64(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v8 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABAFC844();
  sub_1ABF252E4();
  v9 = *(v4 + 8);
  v10 = sub_1ABA7D0F8();
  return v11(v10);
}

uint64_t AssetRegistryParameters.RemoteEndpointType.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t sub_1ABAF79A8()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t sub_1ABAF7A00(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x80000001ABF86A40 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t _s20IntelligencePlatform34LocationEmbedderInferenceInterfaceO6ErrorsO8RunErrorO9hashValueSivg_0()
{
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](0);
  return sub_1ABF25294();
}

uint64_t sub_1ABAF7AE4()
{
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](0);
  return sub_1ABF25294();
}

uint64_t sub_1ABAF7B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABAF7A00(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABAF7B54(uint64_t a1)
{
  v2 = sub_1ABAFC898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABAF7B90(uint64_t a1)
{
  v2 = sub_1ABAFC898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetRegistryParameters.RemoteOptions.encode(to:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4D1EE8, &qword_1ABF34A78);
  sub_1ABA7BB64(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v9 = *v0;
  v10 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABAFC898();
  sub_1ABF252E4();
  sub_1ABF24F44();
  v11 = *(v5 + 8);
  v12 = sub_1ABA805B4();
  v13(v12);
  sub_1ABA7BC90();
}

void AssetRegistryParameters.RemoteOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1ABAD219C(&qword_1EB4D1EF8, &qword_1ABF34A80);
  sub_1ABA7BB64(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  v35 = v24[4];
  sub_1ABA93E20(v24, v24[3]);
  sub_1ABAFC898();
  sub_1ABF252C4();
  if (!v20)
  {
    v36 = sub_1ABF24E24();
    (*(v29 + 8))(v34, v27);
    *v26 = v36 & 1;
  }

  sub_1ABA84B54(v24);
  sub_1ABA7BC90();
}

uint64_t AssetRegistryAsset.url.getter()
{
  v0 = sub_1ABF21CF4();
  sub_1ABA7BBB0(v0);
  v2 = *(v1 + 16);
  v3 = sub_1ABA7D000();

  return v4(v3);
}

uint64_t AssetRegistryAsset.assetEntry.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AssetRegistryAsset(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 26);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 26) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  sub_1ABAF8040(v4, v5, v6, v8);
}

uint64_t AssetRegistryAsset.metadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AssetRegistryAsset(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_1ABAFC8EC(v4, v5, v6);
}

uint64_t AssetRegistryAsset.Metadata.TrialMetadata.experimentIdentifiers.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_1ABAFC95C(v2, v3);
}

uint64_t sub_1ABAF7FB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 < 0)
  {
  }

  else
  {
    return sub_1ABAF7FCC();
  }
}

uint64_t sub_1ABAF7FE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1ABA7BBB0(v4);
  v6 = *(v5 + 32);
  v7 = sub_1ABA7D000();
  v8(v7);
  return a2;
}

uint64_t sub_1ABAF8040(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 < 0)
  {
  }

  else
  {
    return sub_1ABAF7FD8();
  }
}

unint64_t sub_1ABAF8054()
{
  result = qword_1EB4D1E48;
  if (!qword_1EB4D1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1E48);
  }

  return result;
}

unint64_t sub_1ABAF80C8()
{
  result = qword_1EB4D1E78;
  if (!qword_1EB4D1E78)
  {
    sub_1ABAE2850(&qword_1EB4D1E68, &qword_1ABF34A20);
    sub_1ABAF814C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1E78);
  }

  return result;
}

unint64_t sub_1ABAF814C()
{
  result = qword_1EB4D1E80;
  if (!qword_1EB4D1E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1E80);
  }

  return result;
}

unint64_t sub_1ABAF81A8()
{
  sub_1ABA8E098();
  sub_1ABF25234();
  MEMORY[0x1AC5AA8D0](v0);
  sub_1ABF25294();
  v1 = sub_1ABA7ED80();

  return sub_1ABAF8BB8(v1, v2);
}

unint64_t sub_1ABAF8208()
{
  sub_1ABA8E098();
  sub_1ABF25234();
  v1 = *v0;
  v2 = v0[1];
  sub_1ABF23D34();
  sub_1ABF25294();
  v3 = sub_1ABA7ED80();

  return sub_1ABAF8C18(v3, v4);
}

unint64_t sub_1ABAF8268()
{
  sub_1ABA90C64();
  sub_1ABB10A40();
  v0 = sub_1ABA895D4();

  return sub_1ABAF8CC8(v0, v1);
}

unint64_t sub_1ABAF82A0(uint64_t a1, char a2)
{
  sub_1ABAB59CC();
  sub_1ABF25254();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x1AC5AA8D0](a1);
  }

  v4 = sub_1ABF25294();

  return sub_1ABAF8E60(a1, a2 & 1, v4);
}

unint64_t sub_1ABAF8328()
{
  sub_1ABA8E098();
  sub_1ABF25234();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1ABF23D34();
  sub_1ABF25294();
  v3 = sub_1ABA7ED80();

  return sub_1ABAF8EE4(v3, v4);
}

unint64_t sub_1ABAF83B4()
{
  sub_1ABA8E098();
  sub_1ABF25234();
  CodableLocation.hash(into:)();
  sub_1ABF25294();
  v0 = sub_1ABA7ED80();

  return sub_1ABAF92A0(v0, v1);
}

unint64_t sub_1ABAF8414(unsigned __int8 a1)
{
  sub_1ABAB59CC();
  sub_1ABF25264();
  v2 = sub_1ABF25294();
  return sub_1ABAFA604(a1, v2);
}

unint64_t sub_1ABAF84E4()
{
  sub_1ABA8E098();
  sub_1ABF25234();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v8 = *(v0 + 2);
  v9 = *(v0 + 3);
  v10 = *(v0 + 64);
  sub_1ABF23D34();
  sub_1ABF23D34();
  ViewService.DefaultResolverInteractionsView.CandidateType.hash(into:)();
  sub_1ABF25294();
  v5 = sub_1ABA7ED80();

  return sub_1ABAF96B8(v5, v6);
}

uint64_t sub_1ABAF85A0(uint64_t a1, void (*a2)(_BYTE *, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1ABAB59CC();
  a2(v8, a1);
  v5 = sub_1ABF25294();

  return a3(a1, v5);
}

unint64_t sub_1ABAF8618(int a1)
{
  v3 = *(v1 + 40);
  sub_1ABF25234();
  sub_1ABAFF27C(v6, a1);
  v4 = sub_1ABF25294();

  return sub_1ABAF9BE4(a1, v4);
}

unint64_t sub_1ABAF8684()
{
  sub_1ABA8E098();
  sub_1ABF25234();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 33);
  sub_1ABF23D34();
  sub_1ABF25254();
  if (v3 != 2)
  {
    MEMORY[0x1AC5AA8A0](v3 & 1);
  }

  sub_1ABF25294();
  v4 = sub_1ABA7ED80();

  return sub_1ABAF9D80(v4, v5);
}

unint64_t sub_1ABAF8714(char a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1ABB11118();

  return sub_1ABAF9E74(a1 & 1, v4);
}

unint64_t sub_1ABAF8758()
{
  sub_1ABA9FCD0();
  v1 = *(v0 + 40);
  sub_1ABF23C04();
  sub_1ABF25234();
  sub_1ABF23D34();
  sub_1ABF25294();

  sub_1ABA8AEA4();

  return sub_1ABAF9FBC(v2, v3);
}

unint64_t sub_1ABAF87E4()
{
  sub_1ABA7ABC0();
  v1 = sub_1ABF249D4();

  return sub_1ABAFA0B4(v0, v1);
}

unint64_t sub_1ABAF8820(char a1)
{
  sub_1ABAB59CC();
  sub_1ABBAE824(a1);
  sub_1ABF23D34();

  v2 = sub_1ABF25294();

  return sub_1ABAFA178(a1, v2);
}

unint64_t sub_1ABAF88A0(unsigned int a1)
{
  MEMORY[0x1AC5AA870](*(v1 + 40), a1, 4);
  v2 = sub_1ABA895D4();

  return sub_1ABAFA408(v2, v3);
}

void sub_1ABAF88E4()
{
  sub_1ABA7ABC0();
  sub_1ABF247A4();
  sub_1ABAFA664();
}

unint64_t sub_1ABAF892C(double a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1ABF25224();

  return sub_1ABAFA468(v4, a1);
}

void sub_1ABAF8978()
{
  sub_1ABA9FCD0();
  sub_1ABA8E098();
  sub_1ABF25234();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1ABF23D34();
  sub_1ABF23D34();
  sub_1ABF23D34();
  sub_1ABF25294();
  v7 = sub_1ABA7ED80();
  sub_1ABAFA4C4(v7, v8);
  sub_1ABA8AEA4();
}

void sub_1ABAF89FC()
{
  sub_1ABA7ABC0();
  sub_1ABF247A4();
  sub_1ABAFA664();
}

unint64_t sub_1ABAF8A44()
{
  sub_1ABA90C64();
  sub_1ABB114F4();
  v0 = sub_1ABA895D4();

  return sub_1ABAFA720(v0, v1);
}

unint64_t sub_1ABAF8A7C()
{
  sub_1ABA9FCD0();
  sub_1ABAB59CC();
  sub_1ABF23D34();
  sub_1ABF23D34();
  sub_1ABF25294();
  sub_1ABA805B4();
  sub_1ABA8AEA4();

  return sub_1ABAFA88C(v0, v1, v2, v3, v4);
}

void sub_1ABAF8B70()
{
  sub_1ABA7ABC0();
  sub_1ABF247A4();
  sub_1ABAFA664();
}

unint64_t sub_1ABAF8BB8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1ABAF8C18(void *a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = (*(v2 + 48) + 40 * i);
    v7 = *v6 == *a1 && v6[1] == a1[1];
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1ABAF8CC8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x7463614670696B73;
          v8 = 0xEF7265646E655273;
        }

        else
        {
          v7 = 0xD000000000000013;
          v8 = 0x80000001ABF7EBE0;
        }
      }

      else
      {
        v8 = 0xE700000000000000;
        v7 = 0x73736572646461;
      }

      if (a1)
      {
        v9 = a1 == 1 ? 0x7463614670696B73 : 0xD000000000000013;
        v10 = a1 == 1 ? 0xEF7265646E655273 : 0x80000001ABF7EBE0;
      }

      else
      {
        v10 = 0xE700000000000000;
        v9 = 0x73736572646461;
      }

      if (v7 == v9 && v8 == v10)
      {
        break;
      }

      v12 = sub_1ABF25054();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1ABAF8E60(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      if (*(v8 + 8))
      {
        if (a2)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && *v8 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1ABAF8EE4(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = *(v2 + 48) + 40 * i;
    v7 = *(v6 + 16) == *(a1 + 16) && *(v6 + 24) == *(a1 + 24);
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1ABAF8F94(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE400000000000000;
      v8 = 1701736302;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000010;
          v7 = 0x80000001ABF7EE20;
          break;
        case 2:
          v7 = 0xE700000000000000;
          v8 = 0x7865646E496F6ELL;
          break;
        case 3:
          v9 = 0x47746E657665;
          goto LABEL_11;
        case 4:
          v8 = 0x79676F6C6F746E6FLL;
          v7 = 0xED00007865646E49;
          break;
        case 5:
          v8 = 0x49747865746E6F63;
          v7 = 0xEC0000007865646ELL;
          break;
        case 6:
          v9 = 0x476C61636F6CLL;
LABEL_11:
          v8 = v9 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
          v7 = 0xEF7865646E496870;
          break;
        case 7:
          v8 = 0xD00000000000001ALL;
          v7 = 0x80000001ABF7EE80;
          break;
        case 8:
          v8 = 0xD000000000000018;
          v7 = 0x80000001ABF7EEA0;
          break;
        default:
          break;
      }

      v10 = 0xE400000000000000;
      v11 = 1701736302;
      switch(a1)
      {
        case 1:
          v11 = 0xD000000000000010;
          v10 = 0x80000001ABF7EE20;
          break;
        case 2:
          v10 = 0xE700000000000000;
          v11 = 0x7865646E496F6ELL;
          break;
        case 3:
          v12 = 0x47746E657665;
          goto LABEL_21;
        case 4:
          v11 = 0x79676F6C6F746E6FLL;
          v10 = 0xED00007865646E49;
          break;
        case 5:
          v11 = 0x49747865746E6F63;
          v10 = 0xEC0000007865646ELL;
          break;
        case 6:
          v12 = 0x476C61636F6CLL;
LABEL_21:
          v11 = v12 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
          v10 = 0xEF7865646E496870;
          break;
        case 7:
          v11 = 0xD00000000000001ALL;
          v10 = 0x80000001ABF7EE80;
          break;
        case 8:
          v11 = 0xD000000000000018;
          v10 = 0x80000001ABF7EEA0;
          break;
        default:
          break;
      }

      if (v8 == v11 && v7 == v10)
      {
        break;
      }

      v14 = sub_1ABF25054();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1ABAF92A0(double *a1, uint64_t a2)
{
  v5 = type metadata accessor for CodableLocation();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *a1;
    v14 = *(v7 + 72);
    do
    {
      sub_1ABAFEEF4(*(v2 + 48) + v14 * v11, v9);
      if (*v9 == v13 && v9[1] == a1[1] && v9[2] == a1[2] && v9[3] == a1[3] && v9[4] == a1[4] && v9[5] == a1[5] && v9[6] == a1[6])
      {
        v15 = *(v5 + 44);
        v16 = sub_1ABF21E54();
        sub_1ABAFEF58(v9);
        if (v16)
        {
          return v11;
        }
      }

      else
      {
        sub_1ABAFEF58(v9);
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1ABAF9470(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    do
    {
      v10 = *(v4 + 48) + 24 * v6;
      v11 = *(v10 + 16);
      v12 = *v10 == a1 && *(v10 + 8) == a2;
      if (v12 || (sub_1ABF25054() & 1) != 0)
      {
        v13 = 0xE500000000000000;
        v14 = 0x44495F474BLL;
        switch(v11)
        {
          case 1:
            v14 = 0x61746164696B6957;
            v13 = 0xEB0000000044495FLL;
            break;
          case 2:
            v13 = 0xE700000000000000;
            v14 = 0x44495F6D616441;
            break;
          case 3:
            v13 = 0xE600000000000000;
            v14 = 0x44495F434D55;
            break;
          case 4:
            v13 = 0xE800000000000000;
            v14 = 0x44495F7374617453;
            break;
          default:
            break;
        }

        v15 = 0xE500000000000000;
        v16 = 0x44495F474BLL;
        switch(a3)
        {
          case 1:
            v16 = 0x61746164696B6957;
            v15 = 0xEB0000000044495FLL;
            break;
          case 2:
            v15 = 0xE700000000000000;
            v16 = 0x44495F6D616441;
            break;
          case 3:
            v15 = 0xE600000000000000;
            v16 = 0x44495F434D55;
            break;
          case 4:
            v15 = 0xE800000000000000;
            v16 = 0x44495F7374617453;
            break;
          default:
            break;
        }

        if (v14 == v16 && v13 == v15)
        {

          return v6;
        }

        v18 = sub_1ABF25054();

        if (v18)
        {
          return v6;
        }
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1ABAF96B8(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v20 = ~v3;
    v5 = a1[1];
    v6 = a1[2];
    v24 = v6;
    v25 = *a1;
    v23 = a1[3];
    v7 = *(a1 + 3);
    v35 = *(a1 + 2);
    v36 = v7;
    v37 = *(a1 + 64);
    do
    {
      v8 = *(v22 + 48) + 72 * v4;
      v9 = *(v8 + 16);
      v10 = *(v8 + 24);
      v11 = *(v8 + 32);
      v12 = *(v8 + 40);
      v14 = *(v8 + 48);
      v13 = *(v8 + 56);
      v15 = *(v8 + 64);
      v16 = *v8 == v25 && *(v8 + 8) == v5;
      if (v16 || (sub_1ABF25054() & 1) != 0)
      {
        v17 = v9 == v24 && v10 == v23;
        if (v17 || (sub_1ABF25054() & 1) != 0)
        {
          v30 = v11;
          v31 = v12;
          v32 = v14;
          v33 = v13;
          v34 = v15;
          v27 = v35;
          v28 = v36;
          v29 = v37;

          sub_1ABAFF488(v11, v12, v14, v13, v15);
          sub_1ABAFF488(v11, v12, v14, v13, v15);
          sub_1ABAFF4E8(&v35, v26);
          v18 = static ViewService.DefaultResolverInteractionsView.CandidateType.== infix(_:_:)(&v30, &v27);
          sub_1ABAFF544(v27, *(&v27 + 1), v28, *(&v28 + 1), v29);
          sub_1ABAFF544(v30, v31, v32, v33, v34);

          sub_1ABAFF544(v11, v12, v14, v13, v15);
          if (v18)
          {
            break;
          }
        }
      }

      v4 = (v4 + 1) & v20;
    }

    while (((*(v21 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1ABAF98C8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEB00000000474946;
      v8 = 0x4E4F435F4452454ELL;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD00000000000001FLL;
          v7 = 0x80000001ABF7EC50;
          break;
        case 2:
          v8 = 0xD000000000000028;
          v7 = 0x80000001ABF7EC70;
          break;
        case 3:
          v8 = 0xD000000000000020;
          v7 = 0x80000001ABF7ECA0;
          break;
        case 4:
          v8 = 0xD00000000000001CLL;
          v7 = 0x80000001ABF7ECD0;
          break;
        case 5:
          v8 = 0xD00000000000002ELL;
          v7 = 0x80000001ABF7ECF0;
          break;
        case 6:
          v8 = 0xD00000000000001DLL;
          v7 = 0x80000001ABF7ED20;
          break;
        case 7:
          v8 = 0xD00000000000001FLL;
          v7 = 0x80000001ABF7ED40;
          break;
        case 8:
          break;
        default:
          v8 = 0xD000000000000022;
          v7 = 0x80000001ABF7EC20;
          break;
      }

      v9 = 0x4E4F435F4452454ELL;
      v10 = 0xEB00000000474946;
      switch(a1)
      {
        case 1:
          v9 = 0xD00000000000001FLL;
          v10 = 0x80000001ABF7EC50;
          break;
        case 2:
          v9 = 0xD000000000000028;
          v10 = 0x80000001ABF7EC70;
          break;
        case 3:
          v9 = 0xD000000000000020;
          v10 = 0x80000001ABF7ECA0;
          break;
        case 4:
          v9 = 0xD00000000000001CLL;
          v10 = 0x80000001ABF7ECD0;
          break;
        case 5:
          v9 = 0xD00000000000002ELL;
          v10 = 0x80000001ABF7ECF0;
          break;
        case 6:
          v9 = 0xD00000000000001DLL;
          v10 = 0x80000001ABF7ED20;
          break;
        case 7:
          v9 = 0xD00000000000001FLL;
          v10 = 0x80000001ABF7ED40;
          break;
        case 8:
          break;
        default:
          v9 = 0xD000000000000022;
          v10 = 0x80000001ABF7EC20;
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_1ABF25054();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1ABAF9BE4(int a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    v7 = a1;
    if ((a1 & 0x100) != 0)
    {
      v8 = 0x6974657263736964;
    }

    else
    {
      v8 = 0xD000000000000010;
    }

    if ((a1 & 0x100) != 0)
    {
      v9 = 0xED00007972616E6FLL;
    }

    else
    {
      v9 = 0x80000001ABF86150;
    }

    do
    {
      v10 = *(*(v2 + 48) + 2 * v4);
      if (*(*(v2 + 48) + 2 * v4) == 2)
      {
        if (v7 == 2)
        {
          return v4;
        }
      }

      else if (v7 != 2 && ((v10 ^ a1) & 1) == 0)
      {
        if ((v10 & 0x100) != 0)
        {
          v11 = 0x6974657263736964;
        }

        else
        {
          v11 = 0xD000000000000010;
        }

        if ((v10 & 0x100) != 0)
        {
          v12 = 0xED00007972616E6FLL;
        }

        else
        {
          v12 = 0x80000001ABF86150;
        }

        if (v11 == v8 && v12 == v9)
        {

          return v4;
        }

        v14 = sub_1ABF25054();

        if (v14)
        {
          return v4;
        }
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1ABAF9D80(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *(a1 + 33);
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = *(v2 + 48);
    do
    {
      v11 = v10 + 40 * v5;
      v12 = *(v11 + 33);
      v13 = *(v11 + 16) == v9 && *(v11 + 24) == v8;
      if (v13 || (sub_1ABF25054() & 1) != 0)
      {
        if (v12 == 2)
        {
          if (v7 == 2)
          {
            return v5;
          }
        }

        else if (v7 != 2 && ((v12 ^ v7) & 1) == 0)
        {
          return v5;
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1ABAF9E74(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x7241746E65746E69;
    }

    else
    {
      v6 = 0x79676F6C6F746E6FLL;
    }

    if (a1)
    {
      v7 = 0xE900000000000067;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x7241746E65746E69 : 0x79676F6C6F746E6FLL;
      v9 = *(*(v2 + 48) + v4) ? 0xE900000000000067 : 0xE800000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1ABF25054();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1ABAF9FBC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_1ABF23C04();
    v8 = v7;
    if (v6 == sub_1ABF23C04() && v8 == v9)
    {

      return i;
    }

    v11 = sub_1ABF25054();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_1ABAFA0B4(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1ABAFDC04(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1AC5AA040](v8, a1);
    sub_1ABAFDC60(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1ABAFA178(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEA00000000006572;
      v8 = 0x6F63536369706F74;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000001ABF7F1E0;
          break;
        case 2:
          v8 = 0xD00000000000001ALL;
          v7 = 0x80000001ABF7F200;
          break;
        case 3:
          v8 = 0xD000000000000016;
          v7 = 0x80000001ABF7F220;
          break;
        case 4:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000001ABF7F240;
          break;
        case 5:
          v8 = 0xD000000000000017;
          v7 = 0x80000001ABF7F260;
          break;
        case 6:
          break;
        default:
          v8 = 0xD000000000000012;
          v7 = 0x80000001ABF7F1C0;
          break;
      }

      v9 = 0x6F63536369706F74;
      v10 = 0xEA00000000006572;
      switch(a1)
      {
        case 1:
          v9 = 0xD00000000000001BLL;
          v10 = 0x80000001ABF7F1E0;
          break;
        case 2:
          v9 = 0xD00000000000001ALL;
          v10 = 0x80000001ABF7F200;
          break;
        case 3:
          v9 = 0xD000000000000016;
          v10 = 0x80000001ABF7F220;
          break;
        case 4:
          v9 = 0xD00000000000001BLL;
          v10 = 0x80000001ABF7F240;
          break;
        case 5:
          v9 = 0xD000000000000017;
          v10 = 0x80000001ABF7F260;
          break;
        case 6:
          break;
        default:
          v9 = 0xD000000000000012;
          v10 = 0x80000001ABF7F1C0;
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_1ABF25054();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1ABAFA408(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1ABAFA468(uint64_t a1, double a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_1ABAFA4C4(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v6 = *a1;
    v5 = a1[1];
    v21 = a1[3];
    v22 = a1[2];
    v7 = a1[4];
    v8 = a1[5];
    v9 = *(v2 + 48);
    do
    {
      v10 = (v9 + 48 * v4);
      v12 = v10[2];
      v11 = v10[3];
      v13 = v10[4];
      v14 = v10[5];
      v15 = *v10 == v6 && v10[1] == v5;
      if (v15 || (sub_1ABF25054() & 1) != 0)
      {
        v16 = v12 == v22 && v11 == v21;
        if (v16 || (sub_1ABF25054() & 1) != 0)
        {
          v17 = v13 == v7 && v14 == v8;
          if (v17 || (sub_1ABF25054() & 1) != 0)
          {
            break;
          }
        }
      }

      v4 = (v4 + 1) & v19;
    }

    while (((*(v20 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1ABAFA604(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

void sub_1ABAFA664()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v2 = v0 + 64;
  v3 = ~(-1 << *(v0 + 32));
  for (i = v4 & v3; ((1 << i) & *(v2 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_1ABA96BD0();
    sub_1ABAFF390(v6, v7, v8);
    v9 = *(*(v1 + 48) + 8 * i);
    v10 = sub_1ABF247B4();

    if (v10)
    {
      break;
    }
  }

  sub_1ABA7BC1C();
}

unint64_t sub_1ABAFA720(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE700000000000000;
          v8 = 0x796C68746E6F6DLL;
        }

        else
        {
          v7 = 0xE600000000000000;
          v8 = 0x6C61756E6E61;
        }
      }

      else
      {
        v7 = 0xE600000000000000;
        v8 = 0x796C6B656577;
      }

      if (a1)
      {
        v9 = a1 == 1 ? 0x796C68746E6F6DLL : 0x6C61756E6E61;
        v10 = a1 == 1 ? 0xE700000000000000 : 0xE600000000000000;
      }

      else
      {
        v10 = 0xE600000000000000;
        v9 = 0x796C6B656577;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_1ABF25054();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1ABAFA88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_1ABF25054() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_1ABF25054() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1ABAFA988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v24 = ~v5;
    do
    {
      v8 = *(v4 + 48) + 24 * v6;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      v12 = sub_1ABF23C04();
      v14 = v13;
      if (v12 == sub_1ABF23C04() && v14 == v15)
      {

        v19 = v9;
      }

      else
      {
        v17 = sub_1ABF25054();

        v18 = v9;

        if ((v17 & 1) == 0)
        {

          goto LABEL_21;
        }
      }

      if (v11)
      {
        if (a3)
        {
          if (v10 == a2 && v11 == a3)
          {

            return v6;
          }

          v21 = sub_1ABF25054();

          if (v21)
          {
            return v6;
          }
        }

        else
        {
        }
      }

      else
      {

        if (!a3)
        {
          return v6;
        }
      }

LABEL_21:
      v6 = (v6 + 1) & v24;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_1ABAFAB44(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v28 = a1[4];
  v29 = a1[5];
  v9 = *v2;
  v10 = sub_1ABAF8328();
  sub_1ABA7D0D8(v10, v11);
  if (v14)
  {
    __break(1u);
LABEL_12:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  v15 = v12;
  v16 = v13;
  sub_1ABAD219C(&qword_1EB4D1F88, &qword_1ABF35178);
  if (sub_1ABA8B454())
  {
    v17 = *v3;
    sub_1ABAF8328();
    sub_1ABA905B0();
    if (!v19)
    {
      goto LABEL_12;
    }

    v15 = v18;
  }

  if (v16)
  {
    v20 = (*(*v3 + 56) + 48 * v15);
    v21 = v20[3];
    v22 = v20[5];
    *v20 = v6;
    v20[1] = v5;
    v20[2] = v8;
    v20[3] = v7;
    v20[4] = v28;
    v20[5] = v29;
  }

  else
  {
    v31 = v6;
    v32 = v5;
    v33 = v8;
    v34 = v7;
    v35 = v28;
    v36 = v29;
    v24 = sub_1ABA7D0EC();
    sub_1ABAFC3FC(v24, v25, v26, v27);
    return sub_1ABAFF06C(a2, v30);
  }
}

uint64_t sub_1ABAFACA8()
{
  sub_1ABAA00E4();
  sub_1ABA8064C();
  sub_1ABA8EF60();
  v5 = sub_1ABAFF60C(v2, v3, v4, sub_1ABA955E8);
  sub_1ABA7D0D8(v5, v6);
  if (v7)
  {
    __break(1u);
LABEL_13:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  sub_1ABA9771C();
  sub_1ABAD219C(&qword_1EB4D1F60, &unk_1ABF35150);
  if (sub_1ABA83EEC())
  {
    v8 = *v0;
    sub_1ABA8EF60();
    v9 = sub_1ABA7D0EC();
    sub_1ABA94F58(v9, v10, v11, v12);
    sub_1ABA814EC();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    v14 = *(*v0 + 56);
    sub_1ABA82A00();

    return sub_1ABAFDCB4(v15, v16);
  }

  else
  {
    v19 = sub_1ABA8E60C();
    sub_1ABAFC4A8(v19, v20, v21, v22, v23);
    sub_1ABA82A00();
  }
}

uint64_t sub_1ABAFADB8()
{
  sub_1ABA7E2A8();
  sub_1ABAA0A1C();
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  v10 = sub_1ABAA06A0(v6, v9);
  v11 = sub_1ABAF8474(v10);
  sub_1ABA7D0D8(v11, v12);
  if (v13)
  {
    __break(1u);
LABEL_14:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  sub_1ABA8BC34();
  sub_1ABAD219C(&qword_1EB4D1F58, &unk_1ABF35140);
  if (sub_1ABA97424())
  {
    v14 = *v1;
    v15 = sub_1ABA82DB8();
    sub_1ABAF8474(v15);
    sub_1ABAA3404();
    if (!v17)
    {
      goto LABEL_14;
    }

    v3 = v16;
  }

  if (v2)
  {
    v18 = *(*v1 + 56);
    v19 = *(v18 + 8 * v3);
    *(v18 + 8 * v3) = v7;
    sub_1ABA7BC1C();
  }

  else
  {
    sub_1ABAA3414();
    sub_1ABAFC468(v22, v23, v24, v5, v7, v25);
    sub_1ABA7BC1C();
  }
}

_OWORD *sub_1ABAFAEC0()
{
  sub_1ABAA00E4();
  v6 = sub_1ABA979A4(v4, v5);
  v7 = sub_1ABAC92C0(v6);
  sub_1ABA7D0D8(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  sub_1ABAFF5E8();
  sub_1ABAD219C(&qword_1EB4D1FB8, &qword_1ABF351A8);
  if (sub_1ABA9924C())
  {
    v10 = *v1;
    sub_1ABAC92C0(v0);
    sub_1ABA905B0();
    if (!v12)
    {
      goto LABEL_14;
    }

    v3 = v11;
  }

  if (v2)
  {
    sub_1ABA84B54((*(*v1 + 56) + 32 * v3));
    sub_1ABA7D000();
    sub_1ABA82A00();

    return sub_1ABAFF238(v13, v14);
  }

  else
  {
    sub_1ABA96BD0();
    sub_1ABA82A00();

    return sub_1ABAFC4E8(v17, v18, v19, v20);
  }
}

void sub_1ABAFAFA0()
{
  sub_1ABAA00E4();
  sub_1ABAA4858();
  sub_1ABA7ED68();
  v6 = sub_1ABAF85A0(v1, v5, sub_1ABAF98C8);
  sub_1ABA7D0D8(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_12:
    sub_1ABF25104();
    __break(1u);
    return;
  }

  sub_1ABAFF5E8();
  sub_1ABAD219C(&qword_1EB4D2030, &qword_1ABF35220);
  if (sub_1ABA9924C())
  {
    v9 = *v2;
    sub_1ABA7ED68();
    sub_1ABAF85A0(v1, v10, sub_1ABAF98C8);
    sub_1ABA905B0();
    if (!v12)
    {
      goto LABEL_12;
    }

    v4 = v11;
  }

  v13 = *v2;
  if (v3)
  {
    v14 = *(v13 + 56);
    v15 = *(v14 + 8 * v4);
    *(v14 + 8 * v4) = v0;
    sub_1ABA82A00();
  }

  else
  {
    sub_1ABAFDF20(v4, v1, v0, v13);
    sub_1ABA82A00();
  }
}

uint64_t sub_1ABAFB0A4()
{
  sub_1ABA7E2A8();
  sub_1ABAA0A1C();
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  sub_1ABA8EF60();
  v9 = sub_1ABA82DB8();
  v13 = sub_1ABA94F58(v9, v10, v11, v12);
  sub_1ABA7D0D8(v13, v14);
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  sub_1ABA8BC34();
  sub_1ABAD219C(&unk_1EB4D33F0, &qword_1ABF35190);
  if (sub_1ABA97424())
  {
    v16 = *v1;
    sub_1ABA8EF60();
    v17 = sub_1ABA82DB8();
    sub_1ABA94F58(v17, v18, v19, v20);
    sub_1ABAA3404();
    if (!v22)
    {
      goto LABEL_14;
    }

    v3 = v21;
  }

  if (v2)
  {
    v23 = (*(*v1 + 56) + 16 * v3);
    v24 = v23[1];
    *v23 = v7;
    v23[1] = v5;
    sub_1ABA7BC1C();
  }

  else
  {
    sub_1ABAA3414();
    sub_1ABAFDB84(v27, v28, v29, v7, v5, v30);
    sub_1ABA7BC1C();
  }
}

unint64_t sub_1ABAFB1D8()
{
  sub_1ABAA00E4();
  v7 = sub_1ABA979A4(v5, v6);
  v8 = sub_1ABAC92C0(v7);
  sub_1ABA7D0D8(v8, v9);
  if (v10)
  {
    __break(1u);
LABEL_14:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  sub_1ABAFF5E8();
  sub_1ABAD219C(&qword_1EB4D1F50, &qword_1ABF35138);
  if (sub_1ABA9924C())
  {
    v11 = *v2;
    sub_1ABAC92C0(v1);
    sub_1ABA905B0();
    if (!v13)
    {
      goto LABEL_14;
    }

    v4 = v12;
  }

  if (v3)
  {
    v14 = *(*v2 + 56);
    v15 = *(v14 + 8 * v4);
    *(v14 + 8 * v4) = v0;
    sub_1ABA82A00();
  }

  else
  {
    sub_1ABA96BD0();
    sub_1ABA82A00();

    return sub_1ABAFDBC0(v18, v19, v20, v21);
  }
}

unint64_t sub_1ABAFB2B0(char a1, float a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1ABAF8820(a1);
  sub_1ABA7D0D8(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  sub_1ABAD219C(&qword_1EB4D2000, &qword_1ABF351F0);
  result = sub_1ABA8B454();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v3;
  result = sub_1ABAF8820(a1);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_11:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  v12 = result;
LABEL_5:
  v17 = *v3;
  if (v13)
  {
    *(v17[7] + 4 * v12) = a2;
  }

  else
  {

    return sub_1ABAFDD44(v12, a1, v17, a2);
  }

  return result;
}

void sub_1ABAFB3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA8B234();
  a23 = v29;
  a24 = v30;
  sub_1ABAA5690(v31, v32);
  sub_1ABAF8978();
  sub_1ABA7D0D8(v33, v34);
  if (v35)
  {
    __break(1u);
LABEL_12:
    sub_1ABF25104();
    __break(1u);
    return;
  }

  sub_1ABA82A14();
  sub_1ABAD219C(&qword_1EB4D1FC8, &qword_1ABF4E1A0);
  if (sub_1ABA9924C())
  {
    v36 = *v26;
    sub_1ABAF8978();
    sub_1ABA814EC();
    if (!v38)
    {
      goto LABEL_12;
    }

    v27 = v37;
  }

  if (v28)
  {
    v39 = *(*v26 + 56);
    v40 = *(v39 + 8 * v27);
    *(v39 + 8 * v27) = v25;
    sub_1ABAB5424();
  }

  else
  {
    v43 = sub_1ABA82DB8();
    sub_1ABAFDD88(v43, v44, v25, v45);
    sub_1ABAFF334(v24, &a9);
    sub_1ABAB5424();
  }
}

uint64_t sub_1ABAFB478()
{
  sub_1ABAA00E4();
  sub_1ABA8064C();
  sub_1ABA8EF60();
  v5 = sub_1ABAFF60C(v2, v3, v4, sub_1ABA955E8);
  sub_1ABA7D0D8(v5, v6);
  if (v7)
  {
    __break(1u);
LABEL_13:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  sub_1ABA9771C();
  sub_1ABAD219C(&qword_1EB4D2008, &qword_1ABF351F8);
  if (sub_1ABA83EEC())
  {
    v8 = *v0;
    sub_1ABA8EF60();
    v9 = sub_1ABA7D0EC();
    sub_1ABA94F58(v9, v10, v11, v12);
    sub_1ABA814EC();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    v14 = *(*v0 + 56);
    sub_1ABA82A00();

    return sub_1ABAFF3D0(v15, v16);
  }

  else
  {
    v19 = sub_1ABA8E60C();
    sub_1ABAFDDD0(v19, v20, v21, v22, v23);
    sub_1ABA82A00();
  }
}

uint64_t sub_1ABAFB5AC()
{
  sub_1ABA7E2A8();
  sub_1ABA8064C();
  sub_1ABA8EF60();
  v5 = sub_1ABAFF60C(v2, v3, v4, sub_1ABA955E8);
  sub_1ABA7D0D8(v5, v6);
  if (v7)
  {
    __break(1u);
LABEL_13:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  sub_1ABA9771C();
  v8 = sub_1ABA82DAC();
  sub_1ABAD219C(v8, v9);
  v10 = sub_1ABA83EEC();
  if (v10)
  {
    v14 = *v0;
    sub_1ABA8EF60();
    v15 = sub_1ABA7D0EC();
    sub_1ABA94F58(v15, v16, v17, v18);
    sub_1ABA814EC();
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_1ABA826F0(v10, v11, v12, v13, *v0);
    sub_1ABA7BC1C();
  }

  else
  {
    v22 = sub_1ABA8E60C();
    sub_1ABAFDEF4(v22, v23, v24, v25, v26);
    sub_1ABA7BC1C();
  }
}

void sub_1ABAFB6C0()
{
  sub_1ABA7E2A8();
  sub_1ABA8064C();
  sub_1ABA8EF60();
  v5 = sub_1ABAFF60C(v2, v3, v4, sub_1ABA955E8);
  sub_1ABA7D0D8(v5, v6);
  if (v7)
  {
    __break(1u);
LABEL_13:
    sub_1ABF25104();
    __break(1u);
    return;
  }

  sub_1ABA9771C();
  v8 = sub_1ABA82DAC();
  sub_1ABAD219C(v8, v9);
  v10 = sub_1ABA83EEC();
  if (v10)
  {
    v14 = *v0;
    sub_1ABA8EF60();
    v15 = sub_1ABA7D0EC();
    sub_1ABA94F58(v15, v16, v17, v18);
    sub_1ABA814EC();
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_1ABA826F0(v10, v11, v12, v13, *v0);
    sub_1ABA7BC1C();
  }

  else
  {
    v22 = sub_1ABA8E60C();
    sub_1ABAFDEF4(v22, v23, v24, v25, v26);
    sub_1ABA7BC1C();
  }
}

void sub_1ABAFB7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA8B234();
  a23 = v29;
  a24 = v30;
  sub_1ABA979A4(v31, v32);
  v33 = sub_1ABAF8328();
  sub_1ABA7D0D8(v33, v34);
  if (v35)
  {
    __break(1u);
LABEL_12:
    sub_1ABF25104();
    __break(1u);
    return;
  }

  sub_1ABA82A14();
  sub_1ABAD219C(&qword_1EB4D2010, &qword_1ABF35200);
  if (sub_1ABA9924C())
  {
    v36 = *v26;
    sub_1ABAF8328();
    sub_1ABA814EC();
    if (!v38)
    {
      goto LABEL_12;
    }

    v27 = v37;
  }

  if (v28)
  {
    v39 = *(*v26 + 56) + 48 * v27;
    v40 = *(v39 + 8);
    v41 = *(v39 + 16);
    v42 = *(v39 + 40);
    v43 = v24[1];
    *v39 = *v24;
    *(v39 + 16) = v43;
    *(v39 + 32) = v24[2];

    swift_unknownObjectRelease();
    sub_1ABAB5424();
  }

  else
  {
    sub_1ABA96BD0();
    sub_1ABAFC3FC(v45, v46, v47, v48);
    sub_1ABAFF06C(v25, &a10);
    sub_1ABAB5424();
  }
}

uint64_t sub_1ABAFB8D4()
{
  sub_1ABAA00E4();
  sub_1ABAA4858();
  sub_1ABAA2F84();
  v5 = sub_1ABAF85A0(v0, v4, sub_1ABAF8F94);
  sub_1ABA7D0D8(v5, v6);
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  sub_1ABAFF5E8();
  sub_1ABAD219C(&qword_1EB4D1FC0, &unk_1ABF351B0);
  if (sub_1ABA9924C())
  {
    v8 = *v1;
    sub_1ABAA2F84();
    sub_1ABAF85A0(v0, v9, sub_1ABAF8F94);
    sub_1ABA905B0();
    if (!v11)
    {
      goto LABEL_14;
    }

    v3 = v10;
  }

  if (v2)
  {
    sub_1ABA84B54((*(*v1 + 56) + 40 * v3));
    sub_1ABA7D000();
    sub_1ABA82A00();

    return sub_1ABA946C0(v12, v13);
  }

  else
  {
    sub_1ABA82A00();

    return sub_1ABAFDE3C(v16, v17, v18, v19);
  }
}

uint64_t sub_1ABAFB9F0()
{
  sub_1ABAA00E4();
  sub_1ABA8064C();
  sub_1ABA8EF60();
  v5 = sub_1ABAFF60C(v2, v3, v4, sub_1ABA955E8);
  sub_1ABA7D0D8(v5, v6);
  if (v7)
  {
    __break(1u);
LABEL_13:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  sub_1ABA9771C();
  sub_1ABAD219C(&qword_1EB4D1FA8, &qword_1ABF35198);
  if (sub_1ABA83EEC())
  {
    v8 = *v0;
    sub_1ABA8EF60();
    v9 = sub_1ABA7D0EC();
    sub_1ABA94F58(v9, v10, v11, v12);
    sub_1ABA814EC();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    v14 = *(*v0 + 56);
    sub_1ABA82A00();

    return sub_1ABAFF180(v15, v16);
  }

  else
  {
    v19 = sub_1ABA8E60C();
    sub_1ABAFDEA8(v19, v20, v21, v22, v23);
    sub_1ABA82A00();
  }
}

uint64_t sub_1ABAFBB14()
{
  sub_1ABA7E2A8();
  sub_1ABA8064C();
  sub_1ABA8EF60();
  v5 = sub_1ABAFF60C(v2, v3, v4, sub_1ABA955E8);
  sub_1ABA7D0D8(v5, v6);
  if (v7)
  {
    __break(1u);
LABEL_13:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  sub_1ABA9771C();
  v8 = sub_1ABA82DAC();
  sub_1ABAD219C(v8, v9);
  v10 = sub_1ABA83EEC();
  if (v10)
  {
    v14 = *v0;
    sub_1ABA8EF60();
    v15 = sub_1ABA7D0EC();
    sub_1ABA94F58(v15, v16, v17, v18);
    sub_1ABA814EC();
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_1ABA826F0(v10, v11, v12, v13, *v0);
    sub_1ABA7BC1C();
  }

  else
  {
    v22 = sub_1ABA8E60C();
    sub_1ABAFDEF4(v22, v23, v24, v25, v26);
    sub_1ABA7BC1C();
  }
}

void sub_1ABAFBC28()
{
  sub_1ABAA00E4();
  sub_1ABAA4858();
  v5 = sub_1ABAAFEB4();
  sub_1ABA7D0D8(v5, v6);
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_1ABF25104();
    __break(1u);
    return;
  }

  sub_1ABA82A14();
  sub_1ABAD219C(&qword_1EB4D1FE0, &qword_1ABF351D0);
  if (sub_1ABA9924C())
  {
    v8 = *v2;
    sub_1ABAAFEB4();
    sub_1ABA814EC();
    if (!v10)
    {
      goto LABEL_12;
    }

    v3 = v9;
  }

  v11 = *v2;
  if (v4)
  {
    v12 = *(v11 + 56);
    v13 = *(v12 + 8 * v3);
    *(v12 + 8 * v3) = v0;
    sub_1ABA82A00();
  }

  else
  {
    sub_1ABAFDF20(v3, v1, v0, v11);
    sub_1ABA82A00();
  }
}

void sub_1ABAFBCFC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = v3;
  v10 = *v3;
  sub_1ABA8EF60();
  v14 = sub_1ABA94F58(v11, v12, v13, sub_1ABA955E8);
  sub_1ABA7D0D8(v14, v15);
  if (v16)
  {
    __break(1u);
LABEL_12:
    sub_1ABF25104();
    __break(1u);
    return;
  }

  sub_1ABAFF5E8();
  sub_1ABAD219C(&qword_1EB4D1FD8, &qword_1ABF4ACE0);
  if (sub_1ABA9924C())
  {
    v17 = *v6;
    sub_1ABA8EF60();
    sub_1ABA94F58(a1, a2, v18, sub_1ABA955E8);
    sub_1ABA905B0();
    if (!v20)
    {
      goto LABEL_12;
    }

    v5 = v19;
  }

  if (v4)
  {
    *(*(*v6 + 56) + 8 * v5) = a3;
  }

  else
  {
    sub_1ABA96BD0();
    sub_1ABAFDF54(v21, v22, v23, v24);
  }
}

void sub_1ABAFBE2C()
{
  sub_1ABAA0A1C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  sub_1ABA8EF60();
  v11 = sub_1ABA82DB8();
  v15 = sub_1ABA94F58(v11, v12, v13, v14);
  sub_1ABA7D0D8(v15, v16);
  if (v17)
  {
    __break(1u);
LABEL_12:
    sub_1ABF25104();
    __break(1u);
    return;
  }

  sub_1ABA8BC34();
  sub_1ABAD219C(&qword_1EB4D1FE8, &qword_1ABF351D8);
  if (sub_1ABA97424())
  {
    v18 = *v1;
    sub_1ABA8EF60();
    v19 = sub_1ABA82DB8();
    sub_1ABA94F58(v19, v20, v21, v22);
    sub_1ABAA3404();
    if (!v24)
    {
      goto LABEL_12;
    }

    v3 = v23;
  }

  if (v2)
  {
    v25 = *(*v1 + 56) + 24 * v3;
    *v25 = v9;
    *(v25 + 8) = v7;
    *(v25 + 16) = v5 & 1;
    sub_1ABA8B438();
  }

  else
  {
    sub_1ABAA3414();
    sub_1ABAFDF8C(v26, v27, v28, v7, v29, v30);
    sub_1ABA8B438();
  }
}

void sub_1ABAFBF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA8B234();
  a23 = v28;
  a24 = v29;
  sub_1ABAA5690(v30, v31);
  sub_1ABAF8978();
  sub_1ABA7D0D8(v32, v33);
  if (v34)
  {
    __break(1u);
LABEL_11:
    sub_1ABF25104();
    __break(1u);
    return;
  }

  sub_1ABA82A14();
  sub_1ABAD219C(&qword_1EB4D1F68, &unk_1ABF4C450);
  if (sub_1ABA9924C())
  {
    v35 = *v26;
    sub_1ABAF8978();
    sub_1ABA814EC();
    if (!v36)
    {
      goto LABEL_11;
    }
  }

  if (v27)
  {
    v37 = *(*v26 + 56);
    sub_1ABAB5424();

    sub_1ABAFF010(v38, v39);
  }

  else
  {
    v41 = sub_1ABA82DB8();
    sub_1ABAFE00C(v41, v42, v25, v43);
    sub_1ABAFEFB4(v24, &a9);
    sub_1ABAB5424();
  }
}

void sub_1ABAFC060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA8B234();
  a23 = v29;
  a24 = v30;
  sub_1ABAA5690(v31, v32);
  v33 = sub_1ABAF8208();
  sub_1ABA7D0D8(v33, v34);
  if (v35)
  {
    __break(1u);
LABEL_12:
    sub_1ABF25104();
    __break(1u);
    return;
  }

  sub_1ABA82A14();
  sub_1ABAD219C(&qword_1EB4D1FB0, &qword_1ABF351A0);
  if (sub_1ABA9924C())
  {
    v36 = *v26;
    sub_1ABAF8208();
    sub_1ABA814EC();
    if (!v38)
    {
      goto LABEL_12;
    }

    v27 = v37;
  }

  if (v28)
  {
    v39 = *(*v26 + 56);
    v40 = *(v39 + 8 * v27);
    *(v39 + 8 * v27) = v25;
    sub_1ABAB5424();
  }

  else
  {
    v42 = sub_1ABA82DB8();
    sub_1ABAFC3B4(v42, v43, v25, v44);
    sub_1ABAFF1DC(v24, &a10);
    sub_1ABAB5424();
  }
}

uint64_t sub_1ABAFC138()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *v0;
  sub_1ABAA06A0(v10, v8);
  v13 = sub_1ABAF8A7C();
  sub_1ABA7D0D8(v13, v14);
  if (v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v15;
  v19 = v16;
  sub_1ABAD219C(&qword_1EB4D1F90, &qword_1ABF35180);
  if ((sub_1ABF24C64() & 1) == 0)
  {
    goto LABEL_5;
  }

  v20 = *v1;
  v21 = sub_1ABAF8A7C();
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_13:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *v1;
  if (v19)
  {
    v24 = v23[7];
    sub_1ABA7BC1C();

    return sub_1ABAFF0C8(v25, v26);
  }

  else
  {
    sub_1ABAFE074(v18, v9, v7, v5, v3, v11, v23);

    sub_1ABA7BC1C();
  }
}

void sub_1ABAFC280(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v11 = *v4;
  v12 = sub_1ABAA06A0(a1, a2);
  v13 = sub_1ABAF8B08(v12);
  sub_1ABA7D0D8(v13, v14);
  if (v15)
  {
    __break(1u);
LABEL_14:
    sub_1ABF25104();
    __break(1u);
    return;
  }

  sub_1ABA9771C();
  sub_1ABAD219C(&qword_1EB4D2048, &qword_1ABF35238);
  if (sub_1ABA83EEC())
  {
    v16 = *v7;
    sub_1ABAF8B08(a2);
    sub_1ABA814EC();
    if (!v18)
    {
      goto LABEL_14;
    }

    v6 = v17;
  }

  v19 = *v7;
  if (v5)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v6);
    *(v20 + 8 * v6) = a1;
  }

  else
  {
    sub_1ABAFE0E4(v6, a2, a3, a4, a1, v19);

    v22 = a2;
  }
}

void sub_1ABAFC3B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1ABAA3F2C(a1, a2, a3, a4);
  v7 = v6 + 40 * v4;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  *(v7 + 32) = *(v8 + 32);
  *(*(v5 + 56) + 8 * v4) = v10;
  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_1ABA82DC4(v5, v13);
  }
}

unint64_t sub_1ABAFC3FC(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  v6 = (a4[7] + 48 * result);
  v7 = a3[1];
  *v6 = *a3;
  v6[1] = v7;
  v6[2] = a3[2];
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void sub_1ABAFC468(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_1ABAA0E6C(a1, a2, a3, a4, a5, a6);
  v9 = v8 + 24 * v6;
  *v9 = v10;
  *(v9 + 8) = v11;
  *(v9 + 16) = v12;
  *(*(v7 + 56) + 8 * v6) = v13;
  v14 = *(v7 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    sub_1ABA96F48(v7, v16);
  }
}

void sub_1ABAFC4A8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1ABA7E2E4(a1, a2, a3, a4, a5);
  v8 = v7 + 40 * v5;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(v9 + 32);
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_1ABAB6578(v6, v13);
  }
}

_OWORD *sub_1ABAFC4E8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1ABAFF238(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1ABAFC550(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1ABAFC594(unint64_t result, __int16 a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 2 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1ABAFC5D8()
{
  result = qword_1EB4D1EB0;
  if (!qword_1EB4D1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1EB0);
  }

  return result;
}

uint64_t sub_1ABAFC62C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1E58, &qword_1ABF34A10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABAFC69C()
{
  result = qword_1EB4D1EC0;
  if (!qword_1EB4D1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1EC0);
  }

  return result;
}

uint64_t sub_1ABAFC6F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1ABA7BCC0(a1, a2, a3, a4);
  sub_1ABA7BBB0(v5);
  v7 = *(v6 + 32);
  v8 = sub_1ABA7D000();
  v9(v8);
  return v4;
}

uint64_t sub_1ABAFC73C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1ABAA06A0(a1, a2);
  v5 = sub_1ABAD219C(v3, v4);
  sub_1ABA7BBB0(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_1ABAFC790(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1ABA7BCC0(a1, a2, a3, a4);
  sub_1ABA7BBB0(v5);
  v7 = *(v6 + 16);
  v8 = sub_1ABA7D000();
  v9(v8);
  return v4;
}

uint64_t sub_1ABAFC7DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 && a3 != 2)
  {
    if (a3 != 1)
    {
      return result;
    }
  }
}

unint64_t sub_1ABAFC844()
{
  result = qword_1EB4D1EE0;
  if (!qword_1EB4D1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1EE0);
  }

  return result;
}

unint64_t sub_1ABAFC898()
{
  result = qword_1EB4D1EF0;
  if (!qword_1EB4D1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1EF0);
  }

  return result;
}

uint64_t sub_1ABAFC8EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_1ABAFC95C(a2, a3);
  }

  return result;
}

uint64_t sub_1ABAFC95C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1ABAFC9CC()
{
  result = qword_1EB4D1F00;
  if (!qword_1EB4D1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1F00);
  }

  return result;
}

unint64_t sub_1ABAFCA20()
{
  result = qword_1EB4D1F08;
  if (!qword_1EB4D1F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1F08);
  }

  return result;
}

unint64_t sub_1ABAFCA78()
{
  result = qword_1EB4D1F10;
  if (!qword_1EB4D1F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1F10);
  }

  return result;
}

uint64_t sub_1ABAFCAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABAFCB34()
{
  result = qword_1EB4D1F18;
  if (!qword_1EB4D1F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1F18);
  }

  return result;
}

unint64_t sub_1ABAFCB88()
{
  result = qword_1EB4D1F20;
  if (!qword_1EB4D1F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1F20);
  }

  return result;
}

uint64_t sub_1ABAFCC04()
{
  v0 = type metadata accessor for AssetRegistryAsset(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t dispatch thunk of AssetRegistryProtocol.asset(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 16);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_1ABA7FDA0;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of AssetRegistryProtocol.assets(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1ABAFCEF0;
  sub_1ABA96BD0();

  return v8();
}

uint64_t sub_1ABAFCEF0()
{
  sub_1ABA7BBF8();
  v2 = v1;
  sub_1ABA7BC10();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_1ABA7BBC0();
  *v6 = v5;

  sub_1ABA82A20();

  return v7(v2);
}

__n128 initializeBufferWithCopyOfBuffer for VisualUnderstandingStreamingGallery.ClusterResult(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1ABAFD060(uint64_t a1, unsigned int a2)
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

uint64_t sub_1ABAFD0A0(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 _s6ClauseV16ComparisonClauseVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1ABAFD100(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1ABAFD140(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for AssetRegistryParameters(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x3FFF)
  {
    if (a2 + 49153 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 49153 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 49154;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0xFE | (*a1 >> 15) | (*a1 >> 1) & 0x3F00) ^ 0x3FFF;
  if (v5 >= 0x3FFE)
  {
    v5 = -1;
  }

  return v5 + 1;
}

uint64_t storeEnumTagSinglePayload for AssetRegistryParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49153 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 49153 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3FFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3FFE)
  {
    v6 = ((a2 - 0x3FFF) >> 16) + 1;
    *result = a2 - 0x3FFF;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          v7 = ((-a2 >> 1) & 0x1FFF) - (a2 << 13);
          *result = (4 * v7) & 0xFE00 | (2 * (v7 & 0x7F));
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetRegistryRemoteBackendType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetRegistryParameters.RemoteEndpointType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetRegistryParameters.RemoteOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}