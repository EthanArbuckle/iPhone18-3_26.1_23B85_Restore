uint64_t sub_1C46DB36C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - v6;
  v8 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for ViewDatabaseArtifact.Property();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 40);
  v19 = *(v18 + 16);
  if (v19)
  {
    v30 = *(v14 + 20);
    v20 = v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v29 = *(v15 + 72);
    do
    {
      sub_1C46DDA60(v20, v17, type metadata accessor for ViewDatabaseArtifact.Property);
      v21 = *(v17 + 1);
      v31 = *v17;
      v22 = a1;
      v23 = sub_1C4EFBE38();
      (*(*(v23 - 8) + 16))(v7, &v17[v30], v23);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C46DDAC0(v17, type metadata accessor for ViewDatabaseArtifact.Property);
      v24 = v23;
      a1 = v22;
      sub_1C440BAA8(v7, 0, 1, v24);
      sub_1C4EFB498();

      sub_1C4420C3C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
      v25 = sub_1C4EFBF38();
      sub_1C440BAA8(v11, 1, 1, v25);
      sub_1C4EFB538();

      sub_1C4420C3C(v11, &unk_1EC0BCAB0, &unk_1C4F111A0);
      v20 += v29;
      --v19;
    }

    while (v19);
  }

  v26 = sub_1C4EFBF38();
  sub_1C440BAA8(v11, 1, 1, v26);
  sub_1C4EFB4A8();
  return sub_1C4420C3C(v11, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C46DB670()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v11 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v11 - v6;
  sub_1C4EFBDD8();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C4420C3C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = sub_1C4EFBF38();
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB538();

  sub_1C4420C3C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB518();

  return sub_1C4420C3C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C46DB83C()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C4EFBE08();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C4420C3C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = sub_1C4EFBF38();
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB538();

  sub_1C4420C3C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C4420C3C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB538();

  sub_1C4420C3C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDC8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C4420C3C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB538();

  sub_1C4420C3C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDC8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  return sub_1C4420C3C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C46DBB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v5 = type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property();
  v25 = *(v5 - 8);
  v26 = v5;
  v6 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v24 - v11;
  v13 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v24 - v15;
  v17 = sub_1C4EFBF38();
  sub_1C440BAA8(v16, 1, 1, v17);
  sub_1C4EFB488();

  sub_1C4420C3C(v16, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  v18 = sub_1C4EFBE38();
  sub_1C440BAA8(v12, 0, 1, v18);
  sub_1C4EFB498();
  sub_1C4420C3C(v12, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v16, 1, 1, v17);
  sub_1C4EFB538();

  sub_1C4420C3C(v16, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDE8();
  sub_1C440BAA8(v12, 0, 1, v18);
  v28 = a1;
  sub_1C4EFB498();
  sub_1C4420C3C(v12, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v16, 1, 1, v17);
  sub_1C4EFB538();

  result = sub_1C4420C3C(v16, &unk_1EC0BCAB0, &unk_1C4F111A0);
  v20 = *(v27 + 16);
  if (v20)
  {
    v21 = v27 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v22 = *(v26 + 20);
    v23 = *(v25 + 72);
    v26 = 0x80000001C4F86760;
    v27 = v22;
    v24[2] = 0x80000001C4F86740;
    v25 = 0x80000001C4F85600;
    do
    {
      sub_1C46DDA60(v21, v8, type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property);
      *v8;
      (*(*(v18 - 8) + 16))(v12, &v8[v27], v18);
      sub_1C46DDAC0(v8, type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property);
      sub_1C440BAA8(v12, 0, 1, v18);
      sub_1C4EFB498();

      result = sub_1C4420C3C(v12, &qword_1EC0B9BB8, &unk_1C4F1DC60);
      v21 += v23;
      --v20;
    }

    while (v20);
  }

  return result;
}

uint64_t sub_1C46DC05C()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1C46DC0AC(char a1)
{
  result = 0x6D614E656C626174;
  switch(a1)
  {
    case 1:
      result = 0x7972657571;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C46DC190@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C46DC05C();
  *a2 = result;
  return result;
}

unint64_t sub_1C46DC1C0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C46DC0AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C46DC208@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C46DC05C();
  *a1 = result;
  return result;
}

uint64_t sub_1C46DC24C(uint64_t a1)
{
  v2 = sub_1C46DD74C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C46DC288(uint64_t a1)
{
  v2 = sub_1C46DD74C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C46DC2C4()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0BB480, &qword_1C4F1FFD0);
  sub_1C43FCDF8(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C46DD74C();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v2);
  }

  else
  {
    LOBYTE(v27) = 0;
    sub_1C43FD564();
    v10 = sub_1C4F02678();
    v25 = v11;
    LOBYTE(v26[0]) = 1;
    sub_1C46DD7A0();
    sub_1C44088F4();
    sub_1C4F026C8();
    v24 = v27;
    v23 = v28;
    sub_1C43FD564();
    v20 = sub_1C4F02678();
    v22 = v12;
    LOBYTE(v27) = 3;
    sub_1C43FD564();
    v19 = sub_1C4F02678();
    v21 = v13;
    sub_1C46DD7F4();
    sub_1C44088F4();
    sub_1C4F02658();
    v14 = sub_1C4406AB8();
    v15(v14);
    v18 = v38;
    v17 = v39;
    v16 = v40;
    v26[0] = v10;
    v26[1] = v25;
    v26[2] = v24;
    v26[3] = v23;
    v26[4] = v20;
    v26[5] = v22;
    v26[6] = v19;
    v26[7] = v21;
    v26[8] = v38;
    v26[9] = v39;
    v26[10] = v40;
    sub_1C46DD848(v26, &v27);
    sub_1C440962C(v2);
    v27 = v10;
    v28 = v25;
    v29 = v24;
    v30 = v23;
    v31 = v20;
    v32 = v22;
    v33 = v19;
    v34 = v21;
    v35 = v18;
    v36 = v17;
    v37 = v16;
    sub_1C46DD880(&v27);
    memcpy(v4, v26, 0x58uLL);
  }

  sub_1C43FBC80();
}

void sub_1C46DC6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v27 = sub_1C456902C(&qword_1EC0BB488, &qword_1C4F1FFD8);
  sub_1C43FCDF8(v27);
  v45 = v28;
  v30 = *(v29 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v45 - v32;
  v34 = v26[4];
  sub_1C4409678(v26, v26[3]);
  sub_1C46DD74C();
  sub_1C4F02BF8();
  v35 = 0;
  v46 = v24;
  while (2)
  {
    v36 = &unk_1F43D8910 + v35++;
    switch(v36[32])
    {
      case 1:
        v44 = v24[3];
        a10 = v24[2];
        v51 = v44;
        *&v49 = a10;
        *(&v49 + 1) = v44;
        v48 = 1;
        sub_1C445FFF0(&a10, v47, &qword_1EC0BB498, &qword_1C4F1FFE8);
        sub_1C445FFF0(&v51, v47, &qword_1EC0BB4A0, &unk_1C4F1FFF0);
        sub_1C46DD988();
        sub_1C43FEE4C();
        sub_1C4F027E8();
        sub_1C4420C3C(&a10, &qword_1EC0BB498, &qword_1C4F1FFE8);
        sub_1C4420C3C(&v51, &qword_1EC0BB4A0, &unk_1C4F1FFF0);
        if (!v21)
        {
          v24 = v46;
          goto LABEL_13;
        }

        goto LABEL_14;
      case 2:
        v39 = v24[4];
        v40 = v24[5];
        v41 = 2;
        goto LABEL_8;
      case 3:
        v42 = v24[6];
        v43 = v24[7];
        v41 = 3;
LABEL_8:
        LOBYTE(v49) = v41;
        goto LABEL_9;
      case 4:
        v52 = *(v24 + 4);
        v53 = v24[10];
        v49 = *(v24 + 4);
        v50 = v24[10];
        v48 = 4;
        sub_1C445FFF0(&v52, v47, &qword_1EC0BB490, &qword_1C4F1FFE0);
        sub_1C456902C(&qword_1EC0BB490, &qword_1C4F1FFE0);
        sub_1C46DD8B0();
        sub_1C43FEE4C();
        sub_1C4F027E8();
        if (!v21)
        {
          sub_1C4420C3C(&v52, &qword_1EC0BB490, &qword_1C4F1FFE0);
LABEL_13:
          if (v35 == 5)
          {
            goto LABEL_14;
          }

          continue;
        }

        sub_1C4420C3C(&v52, &qword_1EC0BB490, &qword_1C4F1FFE0);
LABEL_14:
        (*(v45 + 8))(v33, v27);
        sub_1C43FBC80();
        return;
      default:
        v37 = *v24;
        v38 = v24[1];
        LOBYTE(v49) = 0;
LABEL_9:
        sub_1C4F02798();
        if (v21)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
    }
  }
}

void sub_1C46DC9A8(void *a1@<X8>)
{
  sub_1C46DC2C4();
  if (!v1)
  {
    memcpy(a1, __src, 0x58uLL);
  }
}

uint64_t sub_1C46DCA0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property();
  v6 = sub_1C43FBCE0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4402FBC();
  sub_1C4F02BA8();
  if (!v2)
  {
    sub_1C4418280(v38, v39);
    sub_1C46DDFC8();
    sub_1C4F02898();
    *v10 = v36;
    sub_1C4418280(v38, v39);
    sub_1C4402FBC();
    v12 = sub_1C4F02888();
    v15 = v12;
    v16 = v13;
    v17 = v12 == 0x676E69727473 && v13 == 0xE600000000000000;
    if (v17 || (sub_1C442C81C() & 1) != 0 || (v15 == 1415071060 ? (v18 = v16 == 0xE400000000000000) : (v18 = 0), v18 || (sub_1C442C81C() & 1) != 0))
    {

      sub_1C440A9C4();
      sub_1C4EFBDD8();
LABEL_17:
      sub_1C440962C(v38);
      sub_1C46DE01C(v10, a2);
      return sub_1C440962C(a1);
    }

    v19 = v15 == 7630441 && v16 == 0xE300000000000000;
    if (v19 || (sub_1C442C81C() & 1) != 0 || (v15 == 0x52454745544E49 ? (v20 = v16 == 0xE700000000000000) : (v20 = 0), v20 || (sub_1C442C81C() & 1) != 0 || (v15 == 5525065 ? (v21 = v16 == 0xE300000000000000) : (v21 = 0), v21 || (sub_1C442C81C() & 1) != 0)))
    {

      sub_1C440A9C4();
      sub_1C4EFBE08();
      goto LABEL_17;
    }

    v22 = v15 == 0x74616F6C66 && v16 == 0xE500000000000000;
    if (v22 || (sub_1C442C81C() & 1) != 0 || (v15 == 1279346002 ? (v23 = v16 == 0xE400000000000000) : (v23 = 0), v23 || (sub_1C442C81C() & 1) != 0 || (v15 == 0x454C42554F44 ? (v24 = v16 == 0xE600000000000000) : (v24 = 0), v24 || (sub_1C442C81C() & 1) != 0)))
    {

      sub_1C440A9C4();
      sub_1C4EFBDE8();
      goto LABEL_17;
    }

    v25 = v15 == 1635017060 && v16 == 0xE400000000000000;
    if (v25 || (sub_1C442C81C() & 1) != 0 || (v15 == 1112493122 ? (v26 = v16 == 0xE400000000000000) : (v26 = 0), v26 || (sub_1C442C81C() & 1) != 0))
    {

      sub_1C440A9C4();
      sub_1C4EFBDB8();
      goto LABEL_17;
    }

    v27 = v15 == 7958113 && v16 == 0xE300000000000000;
    if (v27 || (sub_1C442C81C() & 1) != 0 || (v15 == 5852737 ? (v28 = v16 == 0xE300000000000000) : (v28 = 0), v28 || (sub_1C442C81C() & 1) != 0))
    {

      sub_1C440A9C4();
      sub_1C4EFBDA8();
      goto LABEL_17;
    }

    v29 = v15 == 1280266050 && v16 == 0xE400000000000000;
    if (v29 || (sub_1C442C81C() & 1) != 0 || (v15 == 0x4E41454C4F4F42 ? (v30 = v16 == 0xE700000000000000) : (v30 = 0), v30 || (sub_1C442C81C() & 1) != 0))
    {

      sub_1C440A9C4();
      sub_1C4EFBDF8();
      goto LABEL_17;
    }

    v31 = v15 == 0x454D495445544144 && v16 == 0xE800000000000000;
    if (v31 || (sub_1C442C81C() & 1) != 0)
    {

      sub_1C440A9C4();
      sub_1C4EFBE18();
      goto LABEL_17;
    }

    *&v36 = 0;
    *(&v36 + 1) = 0xE000000000000000;
    sub_1C4F02248();

    *&v36 = 0xD000000000000016;
    *(&v36 + 1) = 0x80000001C4F92760;
    MEMORY[0x1C6940010](v15, v16);

    v32 = v36;
    sub_1C450B034();
    swift_allocError();
    *v33 = v32;
    *(v33 + 16) = 0;
    *(v33 + 24) = 0xE000000000000000;
    v34 = v37;
    *(v33 + 32) = v36;
    *(v33 + 48) = v34;
    *(v33 + 64) = 3;
    swift_willThrow();
    sub_1C440962C(v38);
  }

  return sub_1C440962C(a1);
}

uint64_t sub_1C46DCF04(void *a1)
{
  v3 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4F02BD8();
  v8 = *v1;
  sub_1C4418280(v6, v7);
  sub_1C46DE080();
  sub_1C4F028B8();
  if (!v2)
  {
    v4 = &v1[*(type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property() + 20)];
    sub_1C4EFBE28();
    sub_1C4418280(v6, v7);
    sub_1C4F028A8();
  }

  return sub_1C440962C(v6);
}

uint64_t sub_1C46DD00C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C46DD0DC(char a1)
{
  if (a1)
  {
    return 0x736E6D756C6F63;
  }

  else
  {
    return 0x6D614E656C626174;
  }
}

void sub_1C46DD118()
{
  sub_1C43FE96C();
  v13[0] = v1;
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0BB478, &qword_1C4F1FFC8);
  sub_1C43FCDF8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v13 - v10;
  v12 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C46DD610();
  sub_1C4F02BF8();
  sub_1C4F02798();
  if (!v0)
  {
    v13[1] = v13[0];
    sub_1C456902C(&qword_1EC0BB470, &qword_1C4F1FFC0);
    sub_1C46DD6B0(&qword_1EDDDBC30, qword_1EDDDC390);
    sub_1C4F027E8();
  }

  (*(v6 + 8))(v11, v4);
  sub_1C43FBC80();
}

uint64_t sub_1C46DD2D4(uint64_t *a1)
{
  v3 = sub_1C456902C(&qword_1EC0BB468, &qword_1C4F1FFB8);
  sub_1C43FCDF8(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C46DD610();
  sub_1C4F02BC8();
  if (!v1)
  {
    v7 = sub_1C4F02678();
    sub_1C456902C(&qword_1EC0BB470, &qword_1C4F1FFC0);
    sub_1C46DD6B0(&unk_1EDDFA580, &qword_1EDDFA748);
    sub_1C4F026C8();
    v9 = sub_1C44069E0();
    v10(v9);
  }

  sub_1C440962C(a1);
  return v7;
}

uint64_t sub_1C46DD520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C46DD00C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C46DD548(uint64_t a1)
{
  v2 = sub_1C46DD610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C46DD584(uint64_t a1)
{
  v2 = sub_1C46DD610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C46DD5C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C46DD2D4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void sub_1C46DD5F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C46DD118();
}

unint64_t sub_1C46DD610()
{
  result = qword_1EDDFA750;
  if (!qword_1EDDFA750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA750);
  }

  return result;
}

uint64_t type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property()
{
  result = qword_1EDDFA738;
  if (!qword_1EDDFA738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46DD6B0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BB470, &qword_1C4F1FFC0);
    sub_1C46DDA18(a2, type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C46DD74C()
{
  result = qword_1EDDFA6D0;
  if (!qword_1EDDFA6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA6D0);
  }

  return result;
}

unint64_t sub_1C46DD7A0()
{
  result = qword_1EDDFD4E8;
  if (!qword_1EDDFD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD4E8);
  }

  return result;
}

unint64_t sub_1C46DD7F4()
{
  result = qword_1EDDFA6D8;
  if (!qword_1EDDFA6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA6D8);
  }

  return result;
}

unint64_t sub_1C46DD8B0()
{
  result = qword_1EDDDC380;
  if (!qword_1EDDDC380)
  {
    sub_1C4572308(&qword_1EC0BB490, &qword_1C4F1FFE0);
    sub_1C46DD934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDC380);
  }

  return result;
}

unint64_t sub_1C46DD934()
{
  result = qword_1EDDDC388;
  if (!qword_1EDDDC388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDC388);
  }

  return result;
}

unint64_t sub_1C46DD988()
{
  result = qword_1EDDE29B8[0];
  if (!qword_1EDDE29B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE29B8);
  }

  return result;
}

uint64_t sub_1C46DDA18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C46DDA60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C46DDAC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for EntityInteractionHistogramDatabaseTable.Config.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C46DDCF8()
{
  result = sub_1C4EFBE38();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C46DDD78()
{
  result = qword_1EC0BB4A8;
  if (!qword_1EC0BB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB4A8);
  }

  return result;
}

unint64_t sub_1C46DDE14()
{
  result = qword_1EC0BB4C0;
  if (!qword_1EC0BB4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB4C0);
  }

  return result;
}

unint64_t sub_1C46DDE6C()
{
  result = qword_1EDDFD368[0];
  if (!qword_1EDDFD368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFD368);
  }

  return result;
}

unint64_t sub_1C46DDEC4()
{
  result = qword_1EDDFA6C8;
  if (!qword_1EDDFA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA6C8);
  }

  return result;
}

unint64_t sub_1C46DDF1C()
{
  result = qword_1EDDFA758;
  if (!qword_1EDDFA758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA758);
  }

  return result;
}

unint64_t sub_1C46DDF74()
{
  result = qword_1EDDFA760;
  if (!qword_1EDDFA760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA760);
  }

  return result;
}

unint64_t sub_1C46DDFC8()
{
  result = qword_1EDDFB6D8;
  if (!qword_1EDDFB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB6D8);
  }

  return result;
}

uint64_t sub_1C46DE01C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C46DE080()
{
  result = qword_1EDDE8120;
  if (!qword_1EDDE8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE8120);
  }

  return result;
}

uint64_t sub_1C46DE0D8()
{
  v2 = v0;
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  sub_1C4409678((v2 + 136), v4);
  result = (*(*(v3 + 8) + 16))(v4);
  if (!v1)
  {
    v6 = *(v2 + 120);
    v7 = *(v2 + 128);
    sub_1C4409678((v2 + 96), v6);
    (*(v7 + 24))(v6, v7);
    v8 = *(v2 + 16);
    return KeyValueStore.delete(key:)(*(v2 + 24));
  }

  return result;
}

uint64_t sub_1C46DE19C()
{
  sub_1C43FBCD4();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_1C4EF9CD8();
  v1[9] = v3;
  sub_1C43FCF7C(v3);
  v1[10] = v4;
  v6 = *(v5 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C46DE264()
{
  sub_1C43FCF70();
  v1 = v0[13];
  v2 = v0[8];
  v0[5] = 0;
  sub_1C4EF9CC8();

  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1C46DE338;
  v4 = v0[13];
  v5 = v0[8];
  sub_1C440F4D4(v0[7]);

  return sub_1C46D7E2C();
}

uint64_t sub_1C46DE338()
{
  sub_1C43FCF70();
  v2 = *v1;
  v3 = *v1;
  sub_1C43FBDAC();
  *v4 = v3;
  v5 = v2[14];
  *v4 = *v1;
  v3[15] = v0;

  v6 = v2[13];
  v7 = v2[10];
  v8 = v2[9];
  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  if (!v0)
  {
    v3[16] = v10;
    v3[17] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v10(v6, v8);
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C46DE4A8()
{
  v35 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v7 = sub_1C4409678((v0[8] + 136), *(v0[8] + 160));
  sub_1C4EF9C88();
  sub_1C4EF9BE8();
  v2(v5, v6);
  v8 = *v7;
  sub_1C45E025C();
  v9 = v0[17];
  (v0[16])(v0[12], v0[9]);
  if (v3)
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDE2DDE0);
    v11 = v3;
    v12 = sub_1C4F00968();
    v13 = sub_1C4F01CE8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = sub_1C43FD084();
      v15 = sub_1C43FFD34();
      v34 = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v17 = v0[2];
      v16 = v0[3];
      v18 = v0[4];
      v19 = sub_1C4F02A38();
      v21 = sub_1C441D828(v19, v20, &v34);

      *(v14 + 4) = v21;
      sub_1C43FD580(&dword_1C43F8000, v22, v23, "EntityInteractionHistogramViewGenerator: Error pruning eventTracker - %s");
      sub_1C440962C(v15);
      sub_1C43FFD18();
      sub_1C43FBE2C();
    }

    else
    {
    }
  }

  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406758();
    swift_once();
  }

  v24 = sub_1C4F00978();
  sub_1C442B738(v24, qword_1EDE2DDE0);
  v25 = sub_1C4F00968();
  v26 = sub_1C4F01CF8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1C43F8000, v25, v26, "EntityInteractionHistogramViewGenerator: Completed pruning", v27, 2u);
    sub_1C43FBE2C();
  }

  v29 = v0[12];
  v28 = v0[13];
  v30 = v0[11];

  v31 = v0[5];

  sub_1C43FBCF0();

  return v32(v31);
}

uint64_t sub_1C46DE758()
{
  sub_1C43FBCD4();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  sub_1C43FBDA0();
  v5 = v0[15];

  return v4();
}

uint64_t sub_1C46DE7C8()
{
  sub_1C43FBCD4();
  v0[40] = v1;
  v0[41] = v2;
  v0[38] = v3;
  v0[39] = v4;
  v0[37] = v5;
  v6 = sub_1C456902C(&qword_1EC0BB4C8, &qword_1C4F20378);
  v0[42] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v0[43] = swift_task_alloc();
  v8 = sub_1C456902C(&qword_1EC0BB4D0, &unk_1C4F20380);
  v0[44] = v8;
  sub_1C43FCF7C(v8);
  v0[45] = v9;
  v0[46] = *(v10 + 64);
  v0[47] = swift_task_alloc();
  v0[48] = swift_task_alloc();
  v11 = *(*(sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0) - 8) + 64) + 15;
  v0[49] = swift_task_alloc();
  v12 = sub_1C4EFDAB8();
  v0[50] = v12;
  sub_1C43FCF7C(v12);
  v0[51] = v13;
  v15 = *(v14 + 64) + 15;
  v0[52] = swift_task_alloc();
  v16 = sub_1C4EF9CD8();
  v0[53] = v16;
  sub_1C43FCF7C(v16);
  v0[54] = v17;
  v0[55] = *(v18 + 64);
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v0[58] = swift_task_alloc();
  v0[59] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1C46DE9E8()
{
  v89 = v0;
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406758();
    swift_once();
  }

  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v4 = *(v0 + 424);
  v3 = *(v0 + 432);
  v6 = *(v0 + 296);
  v5 = *(v0 + 304);
  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2DDE0);
  v8 = *(v3 + 16);
  v8(v1, v6, v4);
  v85 = v8;
  v8(v2, v5, v4);
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CC8();
  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 464);
  v12 = *(v0 + 472);
  v15 = *(v0 + 424);
  v14 = *(v0 + 432);
  if (v11)
  {
    v16 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *v16 = 136315394;
    sub_1C45C2A2C();
    log = v9;
    v17 = sub_1C4F02858();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_1C441D828(v17, v19, &v87);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = sub_1C4F02858();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_1C441D828(v22, v24, &v87);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_1C43F8000, log, v10, "EntityInteractionHistogramViewGenerator: Starting histogram batched digest from %s to %s", v16, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v13, v15);
    v26(v12, v15);
  }

  v27 = *(v0 + 416);
  v28 = *(v0 + 424);
  v29 = *(v0 + 400);
  v30 = *(v0 + 408);
  v31 = *(v0 + 392);
  v32 = *(v0 + 320);
  v33 = sub_1C4409678((v32 + 136), *(v32 + 160));
  (*(v30 + 104))(v27, *MEMORY[0x1E69A9418], v29);
  sub_1C440BAA8(v31, 1, 1, v28);
  v34 = *v33;
  sub_1C45E1070(v0 + 64);
  v36 = *(v0 + 408);
  v35 = *(v0 + 416);
  v37 = *(v0 + 400);
  sub_1C446F170(*(v0 + 392), &unk_1EC0B84E0, qword_1C4F0D2D0);
  (*(v36 + 8))(v35, v37);
  v38 = *(v0 + 104);
  if (v38 == 255)
  {
    v44 = 0;
  }

  else
  {
    v39 = *(v0 + 456);
    v40 = *(v0 + 424);
    v41 = *(v0 + 296);
    v42 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v42;
    *(v0 + 48) = *(v0 + 96);
    *(v0 + 56) = v38;
    type metadata accessor for BehaviorEvent();
    v85(v39, v41, v40);
    sub_1C45D644C(v0 + 16, v39);
    v44 = v43;
  }

  *(v0 + 480) = v44;
  v45 = *(v0 + 320);
  v46 = *(v0 + 296);
  v47 = *(v0 + 304);
  sub_1C442E860(v32 + 136, v0 + 112);
  v48 = v45[27];
  sub_1C494DA84(v46, v47, v45[10], v45[11], &v87);
  v50 = *(v0 + 448);
  v49 = *(v0 + 456);
  v86 = v44;
  v51 = *(v0 + 432);
  v52 = *(v0 + 440);
  v53 = *(v0 + 424);
  v81 = *(v0 + 376);
  loga = *(v0 + 368);
  v78 = *(v0 + 384);
  v79 = *(v0 + 360);
  v80 = *(v0 + 352);
  v76 = *(v0 + 344);
  v77 = *(v0 + 336);
  v84 = *(v0 + 320);
  v54 = *(v0 + 296);
  v55 = *(v0 + 304);
  v56 = v88;
  v75 = v87;
  *(v0 + 488) = v88;
  sub_1C442E860(v0 + 112, v0 + 152);
  v85(v49, v54, v53);
  v85(v50, v55, v53);
  v57 = *(v51 + 80);
  v58 = (v57 + 56) & ~v57;
  v59 = (v52 + v57 + v58) & ~v57;
  v60 = swift_allocObject();
  sub_1C441D670((v0 + 152), v60 + 16);
  v61 = *(v51 + 32);
  v61(v60 + v58, v49, v53);
  v61(v60 + v59, v50, v53);
  *(v0 + 216) = v75;
  *(v0 + 224) = v56;
  *(v0 + 232) = 100;

  sub_1C456902C(&qword_1EC0BB4D8, &qword_1C4F203A0);
  sub_1C456902C(&qword_1EC0BB4E0, &qword_1C4F203A8);
  sub_1C4401CBC(qword_1EDDE49C0, &qword_1EC0BB4D8, &qword_1C4F203A0);
  sub_1C4F02448();
  sub_1C4401CBC(&qword_1EDDDB820, &qword_1EC0BB4C8, &qword_1C4F20378);
  sub_1C4401CBC(&qword_1EDDE4BA0, &qword_1EC0BB4E0, &qword_1C4F203A8);
  sub_1C4F02598();
  v62 = *(v79 + 32);
  v62(v81, v78, v80);
  v63 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v64 = swift_allocObject();
  *(v0 + 496) = v64;
  v62(v64 + v63, v81, v80);
  *(v0 + 264) = sub_1C46E0738;
  *(v0 + 272) = v64;
  v65 = swift_task_alloc();
  *(v0 + 504) = v65;
  *v65 = v0;
  v65[1] = sub_1C46DF334;
  v66 = *(v0 + 312);
  v67 = *(v0 + 320);
  v68 = *(v0 + 304);
  v69 = sub_1C440F4D4(*(v0 + 296));

  return sub_1C46DF96C(v69, v70, v71, v72, v73, v86);
}

uint64_t sub_1C46DF334()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = v1;
  v3 = *(v1 + 504);
  v9 = *v0;
  *(v2 + 512) = v4;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C46DF428()
{
  v1 = v0[64];
  v3 = v0[61];
  v2 = v0[62];
  v4 = v0[60];
  v5 = v0[41];

  result = sub_1C440962C(v0 + 14);
  if (__OFADD__(*v5, v1))
  {
    __break(1u);
  }

  else
  {
    *v0[41] = *v5 + v1;
    sub_1C443217C();

    sub_1C43FBDA0();

    return v7();
  }

  return result;
}

uint64_t sub_1C46DF51C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a1;
  v5[7] = a3;
  v5[10] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1C46DF548, 0, 0);
}

uint64_t sub_1C46DF548()
{
  sub_1C43FBCD4();
  v1 = *sub_1C4409678(*(v0 + 56), *(*(v0 + 56) + 24));
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_1C46DF5E8;
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = sub_1C440F4D4(*(v0 + 64));

  return sub_1C45DCD40(v5, v6, v7);
}

uint64_t sub_1C46DF5E8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 88);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C46DF6E8()
{
  sub_1C43FCF70();
  **(v0 + 48) = *(v0 + 80);
  sub_1C43FBCF0();
  v3 = v1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return v3();
}

uint64_t sub_1C46DF750()
{
  v22 = v0;
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406758();
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2DDE0);
  v3 = v1;
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CE8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 96);
  if (v6)
  {
    v8 = sub_1C43FD084();
    v9 = sub_1C43FFD34();
    v21 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
    v12 = *(v0 + 32);
    v13 = sub_1C4F02A38();
    v15 = sub_1C441D828(v13, v14, &v21);

    *(v8 + 4) = v15;
    sub_1C43FD580(&dword_1C43F8000, v16, v17, "EntityInteractionHistogramViewGenerator: Error updating eventTracker - %s");
    sub_1C440962C(v9);
    sub_1C43FFD18();
    sub_1C43FBE2C();
  }

  else
  {
  }

  **(v0 + 48) = *(v0 + 80);
  sub_1C43FBCF0();
  v20 = v18;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return v20();
}

uint64_t sub_1C46DF8E4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C46DF908, 0, 0);
}

uint64_t sub_1C46DF908()
{
  sub_1C43FCF70();
  **(v0 + 16) = *(v0 + 24);
  sub_1C43FBCF0();
  v3 = v1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return v3();
}

uint64_t sub_1C46DF96C(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = v6;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 32) = a2;
  *(v7 + 72) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1C46DF99C, 0, 0);
}

uint64_t sub_1C46DF99C()
{
  v1 = *(v0 + 48);
  v2 = *(*(v0 + 64) + 224);
  v3 = swift_task_alloc();
  v12 = *(v0 + 72);
  *(v3 + 16) = v1;
  v4 = sub_1C49BFB70();
  *(v0 + 88) = v4;

  *(v0 + 16) = v12;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_1C46DFAA4;
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = sub_1C440F4D4(*(v0 + 32));

  return sub_1C46113D0(v8, (v0 + 16), v9, v10, v4);
}

uint64_t sub_1C46DFAA4()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  v6 = *(v4 + 96);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v5 + 104) = v0;

  if (!v0)
  {
    *(v5 + 112) = v3;
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C46DFBB8()
{
  v35 = v0;
  v1 = v0[14];
  v2 = v0[11];
  v3 = *(v2 + 16);
  if (v3)
  {
    v29 = v0[14];
    v4 = v0[13];
    v31 = v0[6];
    v5 = (v2 + 40);
    while (1)
    {
      v33 = v3;
      v6 = v0[6];
      v8 = *(v5 - 1);
      v7 = *v5;
      v9 = *(v31 + 24);
      v10 = *(v31 + 32);
      sub_1C4409678(v6, v9);
      sub_1C4408758();
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 16);
      v13 = swift_unknownObjectRetain();
      v12(v13, ObjectType, v7, v9, v10);
      if (v4)
      {
        if (qword_1EDDFA668 != -1)
        {
          sub_1C4406758();
          swift_once();
        }

        v14 = sub_1C4F00978();
        sub_1C442B738(v14, qword_1EDE2DDE0);
        sub_1C4408758();
        swift_unknownObjectRetain();
        v15 = v4;
        v16 = sub_1C4F00968();
        v17 = sub_1C4F01CE8();
        swift_unknownObjectRelease();

        if (!os_log_type_enabled(v16, v17))
        {

          swift_unknownObjectRelease();
          goto LABEL_10;
        }

        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v30 = sub_1C43FFD34();
        v34 = v30;
        *v18 = 136315394;
        swift_getObjectType();
        v20 = (*(v7 + 24))();
        v21 = sub_1C460AEA8(v20);
        v23 = sub_1C441D828(v21, v22, &v34);

        *(v18 + 4) = v23;
        *(v18 + 12) = 2112;
        v24 = v4;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 14) = v25;
        *v19 = v25;
        _os_log_impl(&dword_1C43F8000, v16, v17, "EntityInteractionHistogramViewGenerator: Error updating %s - %@", v18, 0x16u);
        sub_1C446F170(v19, &qword_1EC0BDA00, &qword_1C4F10D30);
        sub_1C43FBE2C();
        sub_1C440962C(v30);
        sub_1C43FBE2C();
        sub_1C43FFD18();
      }

      swift_unknownObjectRelease();
LABEL_10:
      v4 = 0;
      v5 += 2;
      v0 = v32;
      v3 = v33 - 1;
      if (v33 == 1)
      {
        v26 = v32[11];
        v1 = v29;
        break;
      }
    }
  }

  sub_1C43FBCF0();

  return v27(v1);
}

uint64_t sub_1C46DFE78()
{
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406758();
    swift_once();
  }

  v1 = v0[13];
  v24 = sub_1C4F00978();
  sub_1C442B738(v24, qword_1EDE2DDE0);
  v2 = v1;
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CE8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = sub_1C43FD084();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1C43F8000, v3, v4, "EntityInteractionHistogramViewGenerator: Error updating histograms - %@", v7, 0xCu);
    sub_1C446F170(v8, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
  }

  v11 = v0[11];
  v12 = *(v11 + 16);
  if (v12)
  {
    v25 = v0[6];
    v13 = (v11 + 40);
    v26 = v0;
    do
    {
      v27 = v12;
      v15 = *(v13 - 1);
      v14 = *v13;
      v16 = *(v25 + 24);
      v17 = *(v25 + 32);
      sub_1C4409678(v0[6], v16);
      sub_1C4408758();
      ObjectType = swift_getObjectType();
      v19 = *(v17 + 16);
      v20 = swift_unknownObjectRetain();
      v19(v20, ObjectType, v14, v16, v17);
      swift_unknownObjectRelease();
      v13 += 2;
      v0 = v26;
      v12 = v27 - 1;
    }

    while (v27 != 1);
    v21 = v26[11];
  }

  sub_1C43FBCF0();

  return v22(0);
}

void sub_1C46E0240(char *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = a3;
  v5 = sub_1C4EFDAB8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a2[3];
  v12 = a2[4];
  sub_1C4409678(a2, v11);
  v13 = sub_1C4609954(v10);
  v15 = v14;
  (*(v6 + 104))(v9, *MEMORY[0x1E69A9418], v5);
  v16 = v33;
  v17 = (*(v12 + 8))(v13, v9, v13, v15, v11, v12);
  if (v16)
  {
    (*(v6 + 8))(v9, v5);
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v18 = sub_1C4F00978();
    sub_1C442B738(v18, qword_1EDE2DDE0);
    v19 = v16;
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CE8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35 = v24;
      *v22 = 136315394;
      v25 = sub_1C460AEA8(v10);
      v27 = sub_1C441D828(v25, v26, &v35);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2112;
      v28 = v16;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v29;
      *v23 = v29;
      _os_log_impl(&dword_1C43F8000, v20, v21, "EntityInteractionHistogramViewGenerator: Error updating %s - %@", v22, 0x16u);
      sub_1C446F170(v23, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v23, -1, -1);
      sub_1C440962C(v24);
      MEMORY[0x1C6942830](v24, -1, -1);
      MEMORY[0x1C6942830](v22, -1, -1);
    }

    else
    {
    }

    v32 = v34;
    *v34 = 0;
    v32[1] = 0;
  }

  else
  {
    v30 = v17;
    (*(v6 + 8))(v9, v5);
    v31 = v34;
    *v34 = v30;
    v31[1] = v15;
  }
}

uint64_t *sub_1C46E056C()
{
  sub_1C46E07D0((v0 + 2));
  v2 = v0[10];
  v1 = v0[11];

  sub_1C440962C(v0 + 12);
  sub_1C440962C(v0 + 17);
  sub_1C440962C(v0 + 22);
  v3 = v0[27];

  v4 = v0[28];

  return v0;
}

uint64_t sub_1C46E05CC()
{
  sub_1C46E056C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C46E0624(uint64_t a1, void *a2)
{
  v6 = sub_1C4EF9CD8();
  sub_1C43FCF7C(v6);
  v8 = v7;
  v10 = v9;
  v11 = *(v8 + 80);
  v12 = (v11 + 56) & ~v11;
  v13 = (*(v10 + 64) + v11 + v12) & ~v11;
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1C442E8C4;

  return sub_1C46DF51C(a1, a2, v2 + 16, v2 + v12, v2 + v13);
}

uint64_t sub_1C46E0738@<X0>(void *a1@<X8>)
{
  v2 = *(*(sub_1C456902C(&qword_1EC0BB4D0, &unk_1C4F20380) - 8) + 80);

  return sub_1C46F92F4(a1);
}

uint64_t sub_1C46E0824(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, _OWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29 = a7;
  v30 = a8;
  v28 = a6;
  v15 = *(a10 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v27 - v21;
  (*(v15 + 32))(&v27 - v21, v23, a10, v20);
  v24 = swift_allocObject();
  (*(v15 + 16))(v18, v22, a10);
  v25 = sub_1C46E09B8(a1, a2, a3, v18, a5, v28, v29, v30, v24, a10, a11);
  (*(v15 + 8))(v22, a10);
  return v25;
}

uint64_t sub_1C46E09B8(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, _OWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a9 + 160) = a10;
  *(a9 + 168) = a11;
  v19 = sub_1C4422F90((a9 + 136));
  (*(*(a10 - 8) + 32))(v19, a4, a10);
  *(a9 + 80) = a1;
  *(a9 + 88) = a2;
  sub_1C441D670(a3, a9 + 96);
  sub_1C441D670(a5, a9 + 176);
  v20 = a6[1];
  *(a9 + 16) = *a6;
  *(a9 + 32) = v20;
  v21 = a6[3];
  *(a9 + 48) = a6[2];
  *(a9 + 64) = v21;
  *(a9 + 216) = a7;
  *(a9 + 224) = a8;
  return a9;
}

uint64_t OrderByDirection.hashValue.getter()
{
  v1 = *v0;
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v1);
  return sub_1C4F02B68();
}

uint64_t Condition.condition.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C46E0B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9438, &unk_1C4F203C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 Condition.init(_:bindingValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v5;
  *(a4 + 48) = *(a3 + 32);
  return result;
}

uint64_t sub_1C46E0BE8()
{
  v1 = v0;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4F92810);
  MEMORY[0x1C6940010](*(v1 + 88), *(v1 + 96));
  MEMORY[0x1C6940010](0xD000000000000011, 0x80000001C4F92830);
  sub_1C440D164();
  v2 = *(v0 + 48);
  v3 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = MEMORY[0x1E69E6158];
  v5 = MEMORY[0x1C6940380](v3, MEMORY[0x1E69E6158]);
  v7 = v6;

  MEMORY[0x1C6940010](v5, v7);

  MEMORY[0x1C6940010](0x3A6863726165530ALL, 0xE900000000000020);
  v28 = *(v1 + 16);
  v29 = *(v1 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
  v8 = sub_1C4F01198();
  MEMORY[0x1C6940010](v8);

  MEMORY[0x1C6940010](0x737265746C69460ALL, 0xEA0000000000203ALL);
  sub_1C440D164();
  v9 = *(v1 + 40);
  v10 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = MEMORY[0x1C6940380](v10, &type metadata for Condition);
  v13 = v12;

  MEMORY[0x1C6940010](v11, v13);

  MEMORY[0x1C6940010](0x794270756F72670ALL, 0xEA0000000000203ALL);
  sub_1C440D164();
  v14 = *(v1 + 56);
  v15 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v16 = MEMORY[0x1C6940380](v15, v4);
  v18 = v17;

  MEMORY[0x1C6940010](v16, v18);

  MEMORY[0x1C6940010](0x3A676E697661680ALL, 0xE900000000000020);
  sub_1C440D164();
  v19 = *(v1 + 64);
  v20 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v21 = MEMORY[0x1C6940380](v20, &type metadata for Condition);
  v23 = v22;

  MEMORY[0x1C6940010](v21, v23);

  MEMORY[0x1C6940010](0x203A74696D696C0ALL, 0xE800000000000000);
  v26 = *(v1 + 72);
  v27 = *(v1 + 80);
  sub_1C456902C(&qword_1EC0BB4E8, &qword_1C4F203D0);
  v24 = sub_1C4F01198();
  MEMORY[0x1C6940010](v24);

  MEMORY[0x1C6940010](10506, 0xE200000000000000);
  return 0;
}

uint64_t sub_1C46E0EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 32) = MEMORY[0x1E69E7CC0];
  *(v3 + 40) = v4;
  *(v3 + 48) = v4;
  *(v3 + 56) = v4;
  *(v3 + 64) = v4;
  *(v3 + 72) = 0;
  *(v3 + 80) = 1;
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;
  *(v3 + 104) = a3;
  return v3;
}

uint64_t static EntityQuery.read(table:useCase:)(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for EntityQuery();
  swift_allocObject();
  v6 = sub_1C46E0EC8(a1, a2, a3);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = a3;
  return v6;
}

uint64_t sub_1C46E0F64(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 24))
  {
    sub_1C46E198C();
    swift_allocError();
    *v3 = 0xD00000000000005ALL;
    *(v3 + 8) = 0x80000001C4F92850;
    *(v3 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return v2;
}

uint64_t sub_1C46E0FF4()
{
  v1 = v0;
  sub_1C4409B14();
  sub_1C458911C();
  v2 = *(*(v0 + 40) + 16);
  sub_1C4589CD4();
  v3 = *(v0 + 40);
  sub_1C442C838(v2 + 1);
  *(v1 + 40) = v3;
  swift_endAccess();
}

uint64_t sub_1C46E106C()
{
  sub_1C4409B14();
  v0 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C449ADBC(v0);
  swift_endAccess();
}

uint64_t sub_1C46E10C8(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  sub_1C4409B14();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4589174();
  v7 = *(*(v3 + 32) + 16);
  sub_1C4589D24();
  v8 = *(v3 + 32);
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 24 * v7;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 48) = v6;
  *(v3 + 32) = v8;
  swift_endAccess();
}

uint64_t sub_1C46E1168()
{
  v1 = v0;
  sub_1C4409B14();
  sub_1C458911C();
  v2 = *(*(v0 + 64) + 16);
  sub_1C4589CD4();
  v3 = *(v0 + 64);
  sub_1C442C838(v2 + 1);
  *(v1 + 64) = v3;
  swift_endAccess();
}

uint64_t sub_1C46E11E0(uint64_t a1)
{
  *(v1 + 72) = a1;
  *(v1 + 80) = 0;
}

uint64_t sub_1C46E11F0(uint64_t a1, uint64_t a2)
{
  sub_1C4409B14();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4588BAC();
  v5 = *(*(v2 + 56) + 16);
  sub_1C45897E8();
  v6 = *(v2 + 56);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 16 * v5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v2 + 56) = v6;
  swift_endAccess();
}

uint64_t sub_1C46E1284(char a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Configuration();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 || a2)
  {
    sub_1C4F00688();
    v14 = *(v3 + 104);
    static Configuration.intelligenceplatformd.getter();
    v15 = static SQLConnection.createConnection(for:config:)(v14);
    if (v4)
    {
      return sub_1C4467948(v11);
    }

    else
    {
      v16 = v15;
      sub_1C4467948(v11);
      v17 = sub_1C4F005A8();
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      swift_allocObject();

      v20 = sub_1C4F00598();
      *(&v52 + 1) = v17;
      v53 = MEMORY[0x1E69AA790];
      *&v51 = v20;

      sub_1C4F00678();
      sub_1C440962C(&v51);
      v54 = MEMORY[0x1E69E7CC0];
      result = sub_1C4ADB014(v3);
      v21 = result;
      v22 = *(result + 16);
      if (v22)
      {
        v38[1] = v20;
        v43 = result;
        v44 = a2;
        v23 = 0;
        v48 = result + 32;
        v42 = a1 & 1;
        v39 = a3;
        v40 = v16;
        v41 = v22;
        while (v23 < *(v21 + 16))
        {
          v24 = v48 + 32 * v23;
          v25 = *(v24 + 8);
          if (*(v24 + 24) == 1)
          {
            v26 = *(v24 + 8);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4F005F8();
          }

          else
          {
            v27 = *(v24 + 16);
            v28 = *(v27 + 16);
            if (v28)
            {
              v46 = *v24;
              v50 = MEMORY[0x1E69E7CC0];
              v47 = v25;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C459DF48();
              v29 = v27;
              v30 = v50;
              v45 = v29;
              v31 = v29 + 32;
              do
              {
                sub_1C442E860(v31, v49);
                sub_1C456902C(&qword_1EC0B8CB0, &qword_1C4F0E0E8);
                sub_1C456902C(&qword_1EC0B9438, &unk_1C4F203C0);
                swift_dynamicCast();
                v50 = v30;
                v32 = *(v30 + 16);
                if (v32 >= *(v30 + 24) >> 1)
                {
                  sub_1C459DF48();
                  v30 = v50;
                }

                *(v30 + 16) = v32 + 1;
                v33 = v30 + 40 * v32;
                v34 = v51;
                v35 = v52;
                *(v33 + 64) = v53;
                *(v33 + 32) = v34;
                *(v33 + 48) = v35;
                v31 += 40;
                --v28;
              }

              while (v28);

              a3 = v39;
            }

            else
            {
              v37 = *(v24 + 8);
              v36 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            }

            MEMORY[0x1EEE9AC00](v36);
            LOBYTE(v38[-4]) = v42;
            v38[-3] = &v54;
            v38[-2] = v44;
            v38[-1] = a3;
            sub_1C4F00658();

            v22 = v41;
            v21 = v43;
          }

          if (++v23 == v22)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_20:

        return v54;
      }
    }
  }

  else
  {
    sub_1C46E198C();
    swift_allocError();
    *v12 = 0xD000000000000047;
    *(v12 + 8) = 0x80000001C4F92930;
    *(v12 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C46E1738(uint64_t result, char a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v6 = result;
  if (a2)
  {
    while (1)
    {
      result = sub_1C4F006A8();
      if (v4)
      {
        break;
      }

      if ((result & 1) == 0)
      {
        goto LABEL_9;
      }

      v8 = sub_1C4F00698();
      v9 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = *(v9 + 16);
        sub_1C458D244();
        v9 = v13;
        *a3 = v13;
      }

      v11 = *(v9 + 16);
      if (v11 >= *(v9 + 24) >> 1)
      {
        sub_1C458D244();
        v9 = v14;
        *a3 = v14;
      }

      *(v9 + 16) = v11 + 1;
      *(v9 + 8 * v11 + 32) = v8;
    }
  }

  else
  {
LABEL_9:
    if (a4)
    {

      a4(v6);
      return sub_1C44239FC(a4);
    }
  }

  return result;
}

uint64_t sub_1C46E1858(uint64_t a1, uint64_t a2)
{
  result = sub_1C46E1284(0, a1, a2);
  if (!v2)
  {
  }

  return result;
}

uint64_t EntityQuery.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 96);

  return v0;
}

uint64_t EntityQuery.__deallocating_deinit()
{
  EntityQuery.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1C46E198C()
{
  result = qword_1EC0BB4F0;
  if (!qword_1EC0BB4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB4F0);
  }

  return result;
}

unint64_t sub_1C46E1A1C()
{
  result = qword_1EC0BB4F8;
  if (!qword_1EC0BB4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB4F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OrderByDirection(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C46E1B48(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C46E1D84(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1C46E1DC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1C46E1E44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C456902C(&qword_1EC0BB690, &qword_1C4F20BF0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C4402FE0();
  v8 = type metadata accessor for EntityRelevanceDataCollection(v7);
  sub_1C4405A7C(*(v8 + 28));
  type metadata accessor for EntityRelevanceEntityInformation(0);
  sub_1C440A6F0(v1);
  if (!v9)
  {
    return sub_1C46ECFD4(v1, a1);
  }

  sub_1C46E1F30(a1);
  result = sub_1C440A6F0(v1);
  if (!v9)
  {
    return sub_1C4420C3C(v1, &qword_1EC0BB690, &qword_1C4F20BF0);
  }

  return result;
}

void sub_1C46E1F30(uint64_t a1@<X8>)
{
  sub_1C4F00318();
  v2 = type metadata accessor for EntityRelevanceEntityInformation(0);
  v3 = a1 + *(v2 + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  sub_1C4401738(*(v2 + 24));
  sub_1C441C954(*(v4 + 28));
  sub_1C441C954(*(v5 + 32));
  sub_1C441C954(*(v6 + 36));
  sub_1C4401738(*(v7 + 40));
  sub_1C4401738(*(v8 + 44));
}

uint64_t sub_1C46E1FA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C456902C(&qword_1EC0BB688, &unk_1C4F20AB0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C4402FE0();
  v8 = type metadata accessor for EntityRelevanceDataCollection(v7);
  sub_1C4405A7C(*(v8 + 32));
  v9 = type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0);
  sub_1C440A6F0(v1);
  if (v10)
  {
    sub_1C4F00318();
    v11 = *(v9 + 20);
    if (qword_1EC0B6928 != -1)
    {
      sub_1C44332C4();
    }

    *(a1 + v11) = qword_1EC0BB500;
    v12 = sub_1C44157D4(v1, 1, v9);

    if (v12 != 1)
    {
      return sub_1C4420C3C(v1, &qword_1EC0BB688, &unk_1C4F20AB0);
    }
  }

  else
  {
    sub_1C4411B58();
    return sub_1C46ECFD4(v1, a1);
  }

  return result;
}

uint64_t sub_1C46E20C4@<X0>(uint64_t a1@<X8>)
{
  sub_1C4F00318();
  v2 = *(type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0) + 20);
  if (qword_1EC0B6928 != -1)
  {
    sub_1C44332C4();
  }

  *(a1 + v2) = qword_1EC0BB500;
}

uint64_t sub_1C46E2130()
{
  v2 = sub_1C4403FC0();
  v3 = *(type metadata accessor for EntityRelevanceDataCollection(v2) + 32);
  sub_1C4420C3C(v1 + v3, &qword_1EC0BB688, &unk_1C4F20AB0);
  sub_1C4411B58();
  sub_1C46ECFD4(v0, v1 + v3);
  v4 = type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0);

  return sub_1C440BAA8(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C46E21B0@<X0>(uint64_t a1@<X8>)
{
  sub_1C4F00318();
  v2 = type metadata accessor for EntityRelevanceDataCollection(0);
  sub_1C4401738(v2[5]);
  sub_1C4401738(*(v3 + 24));
  v5 = *(v4 + 28);
  v6 = type metadata accessor for EntityRelevanceEntityInformation(0);
  sub_1C440BAA8(a1 + v5, 1, 1, v6);
  v7 = v2[8];
  v8 = type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0);
  result = sub_1C440BAA8(a1 + v7, 1, 1, v8);
  v10 = a1 + v2[9];
  *v10 = 0;
  *(v10 + 8) = 1;
  return result;
}

uint64_t sub_1C46E2558@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = *(v2 + *(type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0) + 20));
  v12 = *a1;
  swift_beginAccess();
  sub_1C446C964(v11 + v12, v10, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440A6F0(v10);
  if (!v14)
  {
    return sub_1C46ECFD4(v10, a2);
  }

  v15 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v15;
  a2[2] = v15;
  v16 = a2 + *(v13 + 28);
  sub_1C4F00318();
  v17 = *(v13 + 32);
  v18 = type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C440BAA8(a2 + v17, 1, 1, v18);
  result = sub_1C440A6F0(v10);
  if (!v14)
  {
    return sub_1C4420C3C(v10, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  return result;
}

uint64_t sub_1C46E26C4(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = *(type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0) + 20);
  v13 = *(v2 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v2 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = type metadata accessor for EntityRelevanceEntityRelevanceFeatures._StorageClass(0);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v19 = sub_1C4425064();
    v15 = sub_1C46E55D0(v19);
    *(v4 + v12) = v15;
  }

  sub_1C46ECFD4(a1, v11);
  v20 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v11, 0, 1, v20);
  v21 = *a2;
  swift_beginAccess();
  sub_1C46ED080(v11, v15 + v21);
  return swift_endAccess();
}

uint64_t sub_1C46E27F4()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151BC8);
  sub_1C442B738(v0, qword_1EC151BC8);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F13950;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "deviceID";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "collectionID";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "entityInformation";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "entityRelevanceFeatures";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "protoVersion";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C46E2A74()
{
  sub_1C4411B70();
  while (1)
  {
    sub_1C43FE99C();
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C4406AC8();
        sub_1C46E2B34();
        break;
      case 2:
        sub_1C4419408();
        sub_1C4417018();
        sub_1C46E3E74();
        break;
      case 3:
        sub_1C4406AC8();
        sub_1C46E2B98();
        break;
      case 4:
        sub_1C4406AC8();
        sub_1C46E2C4C();
        break;
      case 6:
        sub_1C4419408();
        sub_1C4417018();
        sub_1C46E3F84();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C46E2B98()
{
  v0 = *(type metadata accessor for EntityRelevanceDataCollection(0) + 28);
  type metadata accessor for EntityRelevanceEntityInformation(0);
  sub_1C46ECC80(&qword_1EC0BB648, type metadata accessor for EntityRelevanceEntityInformation);
  return sub_1C4F003F8();
}

uint64_t sub_1C46E2C4C()
{
  v0 = *(type metadata accessor for EntityRelevanceDataCollection(0) + 32);
  type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0);
  sub_1C46ECC80(&qword_1EC0BB628, type metadata accessor for EntityRelevanceEntityRelevanceFeatures);
  return sub_1C4F003F8();
}

uint64_t sub_1C46E2D00()
{
  sub_1C4405A6C();
  v1 = sub_1C43FEE60();
  result = sub_1C46E2D7C(v1);
  if (!v0)
  {
    sub_1C4419408();
    sub_1C43FEE74();
    sub_1C46E41C0();
    v3 = sub_1C43FEE60();
    sub_1C46E2DF4(v3, v4, v5, v6);
    v7 = sub_1C43FEE60();
    sub_1C46E2FC8(v7, v8, v9, v10);
    sub_1C4419408();
    sub_1C43FEE74();
    sub_1C46E431C(v11, v12, v13, v14, v15);
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C46E2D7C(uint64_t a1)
{
  result = type metadata accessor for EntityRelevanceDataCollection(0);
  v3 = (a1 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1C4F00498();
  }

  return result;
}

uint64_t sub_1C46E2DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BB690, &qword_1C4F20BF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for EntityRelevanceEntityInformation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EntityRelevanceDataCollection(0);
  sub_1C446C964(a1 + *(v13 + 28), v8, &qword_1EC0BB690, &qword_1C4F20BF0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB690, &qword_1C4F20BF0);
  }

  sub_1C46ECFD4(v8, v12);
  sub_1C46ECC80(&qword_1EC0BB648, type metadata accessor for EntityRelevanceEntityInformation);
  sub_1C4F004B8();
  return sub_1C46ED02C();
}

uint64_t sub_1C46E2FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BB688, &unk_1C4F20AB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EntityRelevanceDataCollection(0);
  sub_1C446C964(a1 + *(v13 + 32), v8, &qword_1EC0BB688, &unk_1C4F20AB0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB688, &unk_1C4F20AB0);
  }

  sub_1C46ECFD4(v8, v12);
  sub_1C46ECC80(&qword_1EC0BB628, type metadata accessor for EntityRelevanceEntityRelevanceFeatures);
  sub_1C4F004B8();
  return sub_1C46ED02C();
}

uint64_t sub_1C46E319C(uint64_t a1, uint64_t a2)
{
  v90 = type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0);
  v5 = sub_1C43FBCE0(v90);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v88 = v9 - v8;
  v10 = sub_1C456902C(&qword_1EC0BB688, &unk_1C4F20AB0);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v89 = &v85 - v14;
  v15 = sub_1C456902C(&qword_1EC0BB6A8, &qword_1C4F20AD0);
  sub_1C43FBCE0(v15);
  v17 = *(v16 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  v19 = sub_1C4402FE0();
  v20 = type metadata accessor for EntityRelevanceEntityInformation(v19);
  v21 = sub_1C43FBCE0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v26 = v25 - v24;
  v27 = sub_1C456902C(&qword_1EC0BB690, &qword_1C4F20BF0);
  sub_1C43FBD18(v27);
  v29 = *(v28 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v85 - v31;
  v33 = sub_1C456902C(&qword_1EC0BB6B0, &qword_1C4F20AD8);
  sub_1C43FBCE0(v33);
  v35 = *(v34 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v85 - v37;
  v39 = type metadata accessor for EntityRelevanceDataCollection(0);
  v40 = v39[5];
  sub_1C4409BE8();
  if (v43)
  {
    if (!v41)
    {
      goto LABEL_37;
    }

    sub_1C4402FD0(v42);
    v46 = v46 && v44 == v45;
    if (!v46 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v41)
  {
    goto LABEL_37;
  }

  v47 = v39[6];
  sub_1C4409BE8();
  if (v50)
  {
    if (!v48)
    {
      goto LABEL_37;
    }

    sub_1C4402FD0(v49);
    v53 = v46 && v51 == v52;
    if (!v53 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v48)
  {
    goto LABEL_37;
  }

  v85 = v2;
  v87 = a2;
  v54 = v39[7];
  v55 = *(v33 + 48);
  v86 = a1;
  sub_1C4426AB8(a1 + v54, v38);
  sub_1C4426AB8(v87 + v54, &v38[v55]);
  sub_1C4414160(v38);
  if (v46)
  {
    sub_1C4414160(&v38[v55]);
    if (v46)
    {
      sub_1C4420C3C(v38, &qword_1EC0BB690, &qword_1C4F20BF0);
      goto LABEL_29;
    }

LABEL_27:
    v57 = &qword_1EC0BB6B0;
    v58 = &qword_1C4F20AD8;
    v59 = v38;
LABEL_36:
    sub_1C4420C3C(v59, v57, v58);
    goto LABEL_37;
  }

  sub_1C446C964(v38, v32, &qword_1EC0BB690, &qword_1C4F20BF0);
  sub_1C4414160(&v38[v55]);
  if (v56)
  {
    sub_1C46ED02C();
    goto LABEL_27;
  }

  sub_1C46ECFD4(&v38[v55], v26);
  v60 = sub_1C46E448C();
  sub_1C46ED02C();
  sub_1C46ED02C();
  sub_1C4420C3C(v38, &qword_1EC0BB690, &qword_1C4F20BF0);
  if ((v60 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_29:
  v61 = v39[8];
  v62 = *(v15 + 48);
  v63 = v85;
  sub_1C4426AB8(v86 + v61, v85);
  v64 = v87 + v61;
  v65 = v87;
  sub_1C4426AB8(v64, v63 + v62);
  v66 = v90;
  if (sub_1C44157D4(v63, 1, v90) != 1)
  {
    v67 = v89;
    sub_1C446C964(v63, v89, &qword_1EC0BB688, &unk_1C4F20AB0);
    if (sub_1C44157D4(v63 + v62, 1, v66) != 1)
    {
      sub_1C4411B58();
      v70 = v88;
      sub_1C46ECFD4(v63 + v62, v88);
      v71 = *(v66 + 20);
      if (*(v67 + v71) == *(v70 + v71) || (v72 = *(v67 + v71), , , v73 = sub_1C43FBC98(), v75 = sub_1C46E7638(v73, v74), , , v75))
      {
        sub_1C4F00328();
        sub_1C441F7E8();
        sub_1C46ECC80(v76, v77);
        v78 = sub_1C4F010B8();
        sub_1C46ED02C();
        sub_1C46ED02C();
        sub_1C4420C3C(v63, &qword_1EC0BB688, &unk_1C4F20AB0);
        v65 = v87;
        if ((v78 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_42;
      }

      sub_1C46ED02C();
      sub_1C46ED02C();
      v57 = &qword_1EC0BB688;
      v58 = &unk_1C4F20AB0;
      goto LABEL_35;
    }

    sub_1C46ED02C();
LABEL_34:
    v57 = &qword_1EC0BB6A8;
    v58 = &qword_1C4F20AD0;
LABEL_35:
    v59 = v63;
    goto LABEL_36;
  }

  if (sub_1C44157D4(v63 + v62, 1, v66) != 1)
  {
    goto LABEL_34;
  }

  sub_1C4420C3C(v63, &qword_1EC0BB688, &unk_1C4F20AB0);
LABEL_42:
  v79 = v39[9];
  v80 = *(v86 + v79 + 8);
  v81 = *(v65 + v79 + 8);
  if (v80)
  {
    if (v81)
    {
      goto LABEL_46;
    }
  }

  else
  {
    sub_1C43FD5A0();
    if ((v82 & 1) == 0)
    {
LABEL_46:
      sub_1C4F00328();
      sub_1C441F7E8();
      sub_1C46ECC80(v83, v84);
      v68 = sub_1C4F010B8();
      return v68 & 1;
    }
  }

LABEL_37:
  v68 = 0;
  return v68 & 1;
}

uint64_t sub_1C46E3830(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C46ECC80(&qword_1EC0BB680, type metadata accessor for EntityRelevanceDataCollection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C46E38D0()
{
  sub_1C46ECC80(&qword_1EC0BB668, type metadata accessor for EntityRelevanceDataCollection);

  return sub_1C4F00428();
}

uint64_t sub_1C46E3998()
{
  sub_1C46ECC80(&qword_1EC0BB668, type metadata accessor for EntityRelevanceDataCollection);

  return sub_1C4F00438();
}

uint64_t sub_1C46E3A18()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151BE0);
  sub_1C442B738(v0, qword_1EC151BE0);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0F830;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "entityType";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityIdentifier";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "featurizationDate";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isRelevant";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "numberOfInteractions";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "queryName";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "metadata";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C46E3D18()
{
  sub_1C4411B70();
  while (1)
  {
    sub_1C43FE99C();
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C4406AC8();
        sub_1C46E3E10();
        break;
      case 2:
        sub_1C4406AC8();
        sub_1C46E3E74();
        break;
      case 3:
        sub_1C4406AC8();
        sub_1C46E3EBC();
        break;
      case 4:
        sub_1C4406AC8();
        sub_1C46E3F20();
        break;
      case 5:
        sub_1C4406AC8();
        sub_1C46E3F84();
        break;
      case 6:
        sub_1C4406AC8();
        sub_1C46E3FCC();
        break;
      case 7:
        sub_1C4406AC8();
        sub_1C46E4030();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C46E3E74()
{
  sub_1C4412FE0();
  v1 = v0(0);
  sub_1C4404E24(*(v1 + 24));
  return sub_1C4F003D8();
}

uint64_t sub_1C46E3F84()
{
  sub_1C4412FE0();
  v1 = v0(0);
  sub_1C4404E24(*(v1 + 36));
  return sub_1C4F003B8();
}

uint64_t sub_1C46E4094()
{
  sub_1C4405A6C();
  v1 = sub_1C43FEE60();
  result = sub_1C46E4148(v1);
  if (!v0)
  {
    sub_1C43FEE60();
    sub_1C46E41C0();
    v3 = sub_1C43FEE60();
    sub_1C46E422C(v3);
    v4 = sub_1C43FEE60();
    sub_1C46E42A4(v4);
    v5 = sub_1C43FEE60();
    sub_1C46E431C(v5, v6, v7, v8, v9);
    v10 = sub_1C43FEE60();
    sub_1C46E439C(v10);
    v11 = sub_1C43FEE60();
    sub_1C46E4414(v11);
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C46E4148(uint64_t a1)
{
  result = type metadata accessor for EntityRelevanceEntityInformation(0);
  v3 = (a1 + *(result + 20));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C4F00478();
  }

  return result;
}

uint64_t sub_1C46E41C0()
{
  sub_1C4412FE0();
  result = v1(0);
  v3 = (v0 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1C4F00498();
  }

  return result;
}

uint64_t sub_1C46E422C(uint64_t a1)
{
  result = type metadata accessor for EntityRelevanceEntityInformation(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C4F00488();
  }

  return result;
}

uint64_t sub_1C46E42A4(uint64_t a1)
{
  result = type metadata accessor for EntityRelevanceEntityInformation(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C4F00478();
  }

  return result;
}

uint64_t sub_1C46E431C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 36));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    sub_1C4417018();
    return sub_1C4F00478();
  }

  return result;
}

uint64_t sub_1C46E439C(uint64_t a1)
{
  result = type metadata accessor for EntityRelevanceEntityInformation(0);
  v3 = (a1 + *(result + 40));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1C4F00498();
  }

  return result;
}

uint64_t sub_1C46E4414(uint64_t a1)
{
  result = type metadata accessor for EntityRelevanceEntityInformation(0);
  v3 = (a1 + *(result + 44));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1C4F00498();
  }

  return result;
}

uint64_t sub_1C46E448C()
{
  v0 = sub_1C43FBE94();
  v1 = type metadata accessor for EntityRelevanceEntityInformation(v0);
  sub_1C4408908(v1[5]);
  if (v3)
  {
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    sub_1C43FD5A0();
    if (v4)
    {
      return 0;
    }
  }

  v5 = v1[6];
  sub_1C440891C();
  if (v8)
  {
    if (!v6)
    {
      return 0;
    }

    sub_1C4402FD0(v7);
    v11 = v11 && v9 == v10;
    if (!v11 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  sub_1C4408908(v1[7]);
  if (v15)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v13 != *v14)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  sub_1C4408908(v1[8]);
  if (v17)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    sub_1C43FD5A0();
    if (v18)
    {
      return 0;
    }
  }

  sub_1C4408908(v1[9]);
  if (v20)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    sub_1C43FD5A0();
    if (v21)
    {
      return 0;
    }
  }

  v22 = v1[10];
  sub_1C440891C();
  if (v25)
  {
    if (!v23)
    {
      return 0;
    }

    sub_1C4402FD0(v24);
    v28 = v11 && v26 == v27;
    if (!v28 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v29 = v1[11];
  sub_1C440891C();
  if (v32)
  {
    if (!v30)
    {
      return 0;
    }

    sub_1C4402FD0(v31);
    v35 = v11 && v33 == v34;
    if (!v35 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }

LABEL_44:
    sub_1C4F00328();
    sub_1C441F7E8();
    sub_1C46ECC80(v36, v37);
    sub_1C43FD5B4();
    return sub_1C4F010B8() & 1;
  }

  if (!v30)
  {
    goto LABEL_44;
  }

  return 0;
}

uint64_t sub_1C46E4668(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C46ECC80(&qword_1EC0BB6D0, type metadata accessor for EntityRelevanceEntityInformation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C46E4708()
{
  sub_1C46ECC80(&qword_1EC0BB648, type metadata accessor for EntityRelevanceEntityInformation);

  return sub_1C4F00428();
}

uint64_t sub_1C46E47D0()
{
  sub_1C46ECC80(&qword_1EC0BB648, type metadata accessor for EntityRelevanceEntityInformation);

  return sub_1C4F00438();
}

uint64_t sub_1C46E4850()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151BF8);
  sub_1C442B738(v0, qword_1EC151BF8);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1C4F20630;
  v4 = v72 + v3 + v1[14];
  *(v72 + v3) = 1;
  *v4 = "behaviorPopularityGivenContext_coarseGeoHash";
  *(v4 + 8) = 44;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1C4F004C8();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v72 + v3 + v2 + v1[14];
  *(v72 + v3 + v2) = 2;
  *v8 = "behaviorPopularityGivenContext_coarseTimeOfDay";
  *(v8 + 8) = 46;
  *(v8 + 16) = 2;
  v7();
  v9 = (v72 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "behaviorPopularityGivenContext_dayOfWeek";
  *(v10 + 1) = 40;
  v10[16] = 2;
  v7();
  v11 = (v72 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "behaviorPopularityGivenContext_loi";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v7();
  v13 = (v72 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "behaviorPopularityGivenContext_specificGeoHash";
  *(v14 + 1) = 46;
  v14[16] = 2;
  v7();
  v15 = (v72 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "behaviorPopularityGivenContext_wifi";
  *(v16 + 1) = 35;
  v16[16] = 2;
  v7();
  v17 = (v72 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "behaviorPopularityGivenSequence";
  *(v18 + 1) = 31;
  v18[16] = 2;
  v73 = *MEMORY[0x1E69AADC8];
  v7();
  v19 = (v72 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "contextPopularityGivenBehavior_coarseGeoHash";
  *(v20 + 1) = 44;
  v20[16] = 2;
  v7();
  v21 = (v72 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "contextPopularityGivenBehavior_coarseTimeOfDay";
  *(v22 + 1) = 46;
  v22[16] = 2;
  v7();
  v23 = (v72 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "contextPopularityGivenBehavior_dayOfWeek";
  *(v24 + 1) = 40;
  v24[16] = 2;
  v7();
  v25 = (v72 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "contextPopularityGivenBehavior_loi";
  *(v26 + 1) = 34;
  v26[16] = 2;
  v7();
  v27 = (v72 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "contextPopularityGivenBehavior_specificGeoHash";
  *(v28 + 1) = 46;
  v28[16] = 2;
  v7();
  v29 = (v72 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "contextPopularityGivenBehavior_wifi";
  *(v30 + 1) = 35;
  v30[16] = 2;
  v7();
  v31 = (v72 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "dailyDoseL1Error";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v7();
  v33 = (v72 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "dailyDoseL2Error";
  *(v34 + 1) = 16;
  v34[16] = 2;
  v7();
  v35 = (v72 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "lastExecutionAge";
  *(v36 + 1) = 16;
  v36[16] = 2;
  v7();
  v37 = (v72 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "longTermTrendingPopularity";
  *(v38 + 1) = 26;
  v38[16] = 2;
  v7();
  v39 = (v72 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "medianTimeIntervalBetweenExecution";
  *(v40 + 1) = 34;
  v40[16] = 2;
  v7();
  v41 = (v72 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "posteriorProbabilityGivenContext_coarseGeoHash";
  *(v42 + 1) = 46;
  v42[16] = 2;
  v7();
  v43 = (v72 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "posteriorProbabilityGivenContext_coarseGeoHash_coarseTimeOfDay";
  *(v44 + 1) = 62;
  v44[16] = 2;
  v7();
  v45 = (v72 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "posteriorProbabilityGivenContext_coarseTimeOfDay";
  *(v46 + 1) = 48;
  v46[16] = 2;
  v7();
  v47 = (v72 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "posteriorProbabilityGivenContext_coarseTimeOfDay_dayOfWeek";
  *(v48 + 1) = 58;
  v48[16] = 2;
  v7();
  v49 = (v72 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "posteriorProbabilityGivenContext_coarseTimeOfDay_specificGeoHash";
  *(v50 + 1) = 64;
  v50[16] = 2;
  v7();
  v51 = (v72 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "posteriorProbabilityGivenContext_coarseTimeOfDay_wifi";
  *(v52 + 1) = 53;
  v52[16] = 2;
  v7();
  v53 = (v72 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "posteriorProbabilityGivenContext_dayOfWeek";
  *(v54 + 1) = 42;
  v54[16] = 2;
  v7();
  v55 = (v72 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "posteriorProbabilityGivenContext_dayOfWeekSpecificGeoHash";
  *(v56 + 1) = 57;
  v56[16] = 2;
  v7();
  v57 = (v72 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "posteriorProbabilityGivenContext_dayOfWeek_wifi";
  *(v58 + 1) = 47;
  v58[16] = 2;
  v7();
  v59 = (v72 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "posteriorProbabilityGivenContext_loi";
  *(v60 + 1) = 36;
  v60[16] = 2;
  v7();
  v61 = (v72 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "posteriorProbabilityGivenContext_specificGeoHash";
  *(v62 + 1) = 48;
  v62[16] = 2;
  v7();
  v63 = (v72 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "posteriorProbabilityGivenContext_wifi";
  *(v64 + 1) = 37;
  v64[16] = 2;
  v7();
  v65 = (v72 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "sequencePopularityGivenBehavior";
  *(v66 + 1) = 31;
  v66[16] = 2;
  v7();
  v67 = (v72 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 32;
  *v68 = "shortTermTrendingPopularity";
  *(v68 + 1) = 27;
  v68[16] = 2;
  v7();
  v69 = (v72 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "trendingPopularity";
  *(v70 + 1) = 18;
  v70[16] = 2;
  v7();
  return sub_1C4F004D8();
}

uint64_t sub_1C46E51C0()
{
  v0 = type metadata accessor for EntityRelevanceEntityRelevanceFeatures._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C46E5200();
  qword_1EC0BB500 = result;
  return result;
}

uint64_t sub_1C46E5200()
{
  v1 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseGeoHash;
  v2 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v0 + v1, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseTimeOfDay, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextDayOfWeek, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextLoi, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextSpecificGeoHash, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextWifi, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenSequence, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseGeoHash, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseTimeOfDay, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorDayOfWeek, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorLoi, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorSpecificGeoHash, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorWifi, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL1Error, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL2Error, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__lastExecutionAge, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__longTermTrendingPopularity, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__medianTimeIntervalBetweenExecution, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHash, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHashCoarseTimeOfDay, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDay, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayDayOfWeek, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDaySpecificGeoHash, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayWifi, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeek, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekSpecificGeoHash, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekWifi, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextLoi, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextSpecificGeoHash, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextWifi, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__sequencePopularityGivenBehavior, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__shortTermTrendingPopularity, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__trendingPopularity, 1, 1, v2);
  return v0;
}

uint64_t sub_1C46E55D0(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v75 - v5;
  v7 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseGeoHash;
  v8 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseTimeOfDay;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseTimeOfDay, 1, 1, v8);
  v10 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextDayOfWeek;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextDayOfWeek, 1, 1, v8);
  v76 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextLoi;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextLoi, 1, 1, v8);
  v77 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextSpecificGeoHash;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextSpecificGeoHash, 1, 1, v8);
  v78 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextWifi;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextWifi, 1, 1, v8);
  v79 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenSequence;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenSequence, 1, 1, v8);
  v80 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseGeoHash;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseGeoHash, 1, 1, v8);
  v81 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseTimeOfDay;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseTimeOfDay, 1, 1, v8);
  v82 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorDayOfWeek;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorDayOfWeek, 1, 1, v8);
  v83 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorLoi;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorLoi, 1, 1, v8);
  v84 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorSpecificGeoHash;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorSpecificGeoHash, 1, 1, v8);
  v85 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorWifi;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorWifi, 1, 1, v8);
  v86 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL1Error;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL1Error, 1, 1, v8);
  v87 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL2Error;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL2Error, 1, 1, v8);
  v88 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__lastExecutionAge;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__lastExecutionAge, 1, 1, v8);
  v89 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__longTermTrendingPopularity;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__longTermTrendingPopularity, 1, 1, v8);
  v90 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__medianTimeIntervalBetweenExecution;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__medianTimeIntervalBetweenExecution, 1, 1, v8);
  v91 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHash;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHash, 1, 1, v8);
  v92 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHashCoarseTimeOfDay;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHashCoarseTimeOfDay, 1, 1, v8);
  v93 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDay;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDay, 1, 1, v8);
  v94 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayDayOfWeek;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayDayOfWeek, 1, 1, v8);
  v95 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDaySpecificGeoHash;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDaySpecificGeoHash, 1, 1, v8);
  v96 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayWifi;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayWifi, 1, 1, v8);
  v97 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeek;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeek, 1, 1, v8);
  v98 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekSpecificGeoHash;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekSpecificGeoHash, 1, 1, v8);
  v99 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekWifi;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekWifi, 1, 1, v8);
  v100 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextLoi;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextLoi, 1, 1, v8);
  v101 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextSpecificGeoHash;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextSpecificGeoHash, 1, 1, v8);
  v102 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextWifi;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextWifi, 1, 1, v8);
  v103 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__sequencePopularityGivenBehavior;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__sequencePopularityGivenBehavior, 1, 1, v8);
  v104 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__shortTermTrendingPopularity;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__shortTermTrendingPopularity, 1, 1, v8);
  v105 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__trendingPopularity;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__trendingPopularity, 1, 1, v8);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseGeoHash;
  swift_beginAccess();
  sub_1C446C964(a1 + v11, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v7);
  swift_endAccess();
  v12 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseTimeOfDay;
  swift_beginAccess();
  sub_1C446C964(a1 + v12, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v9);
  swift_endAccess();
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextDayOfWeek;
  swift_beginAccess();
  sub_1C446C964(a1 + v13, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v10);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextLoi;
  swift_beginAccess();
  sub_1C446C964(a1 + v14, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v15 = v76;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v15);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextSpecificGeoHash;
  swift_beginAccess();
  sub_1C446C964(a1 + v16, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v17 = v77;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v17);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextWifi;
  swift_beginAccess();
  sub_1C446C964(a1 + v18, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v19 = v78;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v19);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenSequence;
  swift_beginAccess();
  sub_1C446C964(a1 + v20, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v21 = v79;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v21);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseGeoHash;
  swift_beginAccess();
  sub_1C446C964(a1 + v22, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v23 = v80;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v23);
  swift_endAccess();
  v24 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseTimeOfDay;
  swift_beginAccess();
  sub_1C446C964(a1 + v24, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v25 = v81;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v25);
  swift_endAccess();
  v26 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorDayOfWeek;
  swift_beginAccess();
  sub_1C446C964(a1 + v26, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v27 = v82;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v27);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorLoi;
  swift_beginAccess();
  sub_1C446C964(a1 + v28, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v29 = v83;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v29);
  swift_endAccess();
  v30 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorSpecificGeoHash;
  swift_beginAccess();
  sub_1C446C964(a1 + v30, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v31 = v84;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v31);
  swift_endAccess();
  v32 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorWifi;
  swift_beginAccess();
  sub_1C446C964(a1 + v32, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v33 = v85;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v33);
  swift_endAccess();
  v34 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL1Error;
  swift_beginAccess();
  sub_1C446C964(a1 + v34, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v35 = v86;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v35);
  swift_endAccess();
  v36 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL2Error;
  swift_beginAccess();
  sub_1C446C964(a1 + v36, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v37 = v87;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v37);
  swift_endAccess();
  v38 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__lastExecutionAge;
  swift_beginAccess();
  sub_1C446C964(a1 + v38, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v39 = v88;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v39);
  swift_endAccess();
  v40 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__longTermTrendingPopularity;
  swift_beginAccess();
  sub_1C446C964(a1 + v40, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v41 = v89;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v41);
  swift_endAccess();
  v42 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__medianTimeIntervalBetweenExecution;
  swift_beginAccess();
  sub_1C446C964(a1 + v42, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v43 = v90;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v43);
  swift_endAccess();
  v44 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHash;
  swift_beginAccess();
  sub_1C446C964(a1 + v44, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v45 = v91;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v45);
  swift_endAccess();
  v46 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHashCoarseTimeOfDay;
  swift_beginAccess();
  sub_1C446C964(a1 + v46, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v47 = v92;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v47);
  swift_endAccess();
  v48 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDay;
  swift_beginAccess();
  sub_1C446C964(a1 + v48, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v49 = v93;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v49);
  swift_endAccess();
  v50 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayDayOfWeek;
  swift_beginAccess();
  sub_1C446C964(a1 + v50, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v51 = v94;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v51);
  swift_endAccess();
  v52 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDaySpecificGeoHash;
  swift_beginAccess();
  sub_1C446C964(a1 + v52, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v53 = v95;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v53);
  swift_endAccess();
  v54 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayWifi;
  swift_beginAccess();
  sub_1C446C964(a1 + v54, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v55 = v96;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v55);
  swift_endAccess();
  v56 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeek;
  swift_beginAccess();
  sub_1C446C964(a1 + v56, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v57 = v97;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v57);
  swift_endAccess();
  v58 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekSpecificGeoHash;
  swift_beginAccess();
  sub_1C446C964(a1 + v58, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v59 = v98;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v59);
  swift_endAccess();
  v60 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekWifi;
  swift_beginAccess();
  sub_1C446C964(a1 + v60, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v61 = v99;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v61);
  swift_endAccess();
  v62 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextLoi;
  swift_beginAccess();
  sub_1C446C964(a1 + v62, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v63 = v100;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v63);
  swift_endAccess();
  v64 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextSpecificGeoHash;
  swift_beginAccess();
  sub_1C446C964(a1 + v64, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v65 = v101;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v65);
  swift_endAccess();
  v66 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextWifi;
  swift_beginAccess();
  sub_1C446C964(a1 + v66, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v67 = v102;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v67);
  swift_endAccess();
  v68 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__sequencePopularityGivenBehavior;
  swift_beginAccess();
  sub_1C446C964(a1 + v68, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v69 = v103;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v69);
  swift_endAccess();
  v70 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__shortTermTrendingPopularity;
  swift_beginAccess();
  sub_1C446C964(a1 + v70, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v71 = v104;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v71);
  swift_endAccess();
  v72 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__trendingPopularity;
  swift_beginAccess();
  sub_1C446C964(a1 + v72, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);

  v73 = v105;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v73);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C46E666C()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseGeoHash, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseTimeOfDay, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextDayOfWeek, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextLoi, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextSpecificGeoHash, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextWifi, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenSequence, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseGeoHash, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseTimeOfDay, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorDayOfWeek, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorLoi, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorSpecificGeoHash, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorWifi, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL1Error, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL2Error, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__lastExecutionAge, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__longTermTrendingPopularity, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__medianTimeIntervalBetweenExecution, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHash, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHashCoarseTimeOfDay, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDay, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayDayOfWeek, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDaySpecificGeoHash, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayWifi, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeek, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekSpecificGeoHash, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekWifi, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextLoi, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextSpecificGeoHash, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextWifi, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__sequencePopularityGivenBehavior, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__shortTermTrendingPopularity, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__trendingPopularity, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return v0;
}

uint64_t sub_1C46E69BC()
{
  v0 = *sub_1C46E666C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1C46E6A38()
{
  sub_1C46ED23C(319, &qword_1EDDF8B70, type metadata accessor for FeatureValue);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C46E6B20()
{
  v1 = v0;
  v2 = *(type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for EntityRelevanceEntityRelevanceFeatures._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_1C4425064();
    *(v1 + v2) = sub_1C46E55D0(v9);
  }

  sub_1C4417018();
  return sub_1C46E6BC0();
}

uint64_t sub_1C46E6BC0()
{
  while (1)
  {
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
        sub_1C46E6DD4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C46E6DD4()
{
  sub_1C4412FE0();
  v1 = *v0;
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C440E120();
  sub_1C46ECC80(v2, v3);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C46E6E8C()
{
  sub_1C4405A6C();
  v2 = *(v0 + *(type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0) + 20));
  sub_1C43FEE74();
  result = sub_1C46E6EE4(v3, v4, v5, v6);
  if (!v1)
  {
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C46E6EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseGeoHash, 1);
  if (!v4)
  {
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseTimeOfDay, 2);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextDayOfWeek, 3);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextLoi, 4);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextSpecificGeoHash, 5);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextWifi, 6);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenSequence, 7);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseGeoHash, 8);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseTimeOfDay, 9);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorDayOfWeek, 10);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorLoi, 11);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorSpecificGeoHash, 12);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorWifi, 13);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL1Error, 14);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL2Error, 15);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__lastExecutionAge, 16);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__longTermTrendingPopularity, 17);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__medianTimeIntervalBetweenExecution, 18);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHash, 19);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHashCoarseTimeOfDay, 20);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDay, 21);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayDayOfWeek, 22);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDaySpecificGeoHash, 23);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayWifi, 24);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeek, 25);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekSpecificGeoHash, 26);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekWifi, 27);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextLoi, 28);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextSpecificGeoHash, 29);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextWifi, 30);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__sequencePopularityGivenBehavior, 31);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__shortTermTrendingPopularity, 32);
    return sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__trendingPopularity, 33);
  }

  return result;
}

uint64_t sub_1C46E73A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v25[1] = a6;
  v25[2] = a3;
  v25[7] = a4;
  v8 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  v14 = type metadata accessor for FeatureValue(0);
  v15 = sub_1C43FBCE0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  v21 = *a5;
  swift_beginAccess();
  sub_1C446C964(a1 + v21, v13, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v13, 1, v14) == 1)
  {
    return sub_1C4420C3C(v13, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C46ECFD4(v13, v20);
  sub_1C440E120();
  sub_1C46ECC80(v23, v24);
  sub_1C4F004B8();
  return sub_1C46ED02C();
}

uint64_t sub_1C46E7568(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5 = *(type metadata accessor for EntityRelevanceEntityRelevanceFeatures(v4) + 20);
  v6 = *(v2 + v5);
  v7 = *(a2 + v5);
  if (v6 != v7)
  {
    v8 = *(v2 + v5);

    v9 = sub_1C46E7638(v6, v7);

    if (!v9)
    {
      return 0;
    }
  }

  sub_1C4F00328();
  sub_1C441F7E8();
  sub_1C46ECC80(v10, v11);
  sub_1C43FD5B4();
  return sub_1C4F010B8() & 1;
}

BOOL sub_1C46E7638(uint64_t a1, uint64_t a2)
{
  v651 = type metadata accessor for FeatureValue(0);
  v4 = *(*(v651 - 8) + 64);
  MEMORY[0x1EEE9AC00](v651);
  v648 = (&v553 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v650 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  v6 = *(*(v650 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v650);
  v600 = &v553 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v599 = &v553 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v596 = &v553 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v593 = &v553 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v591 = &v553 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v588 = &v553 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v585 = &v553 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v583 = &v553 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v580 = &v553 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v577 = &v553 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v574 = &v553 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v571 = &v553 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v568 = &v553 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v565 = &v553 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v562 = &v553 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v559 = &v553 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v604 = &v553 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v607 = &v553 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v610 = &v553 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v613 = &v553 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v616 = &v553 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v619 = &v553 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v623 = &v553 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v622 = &v553 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v626 = &v553 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v629 = &v553 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v632 = &v553 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v635 = &v553 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v638 = &v553 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v641 = &v553 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v644 = &v553 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v647 = &v553 - v70;
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v553 - v71;
  v73 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v74 = *(*(v73 - 8) + 64);
  v75 = MEMORY[0x1EEE9AC00](v73 - 8);
  v598 = &v553 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x1EEE9AC00](v75);
  v597 = &v553 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v595 = &v553 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v594 = &v553 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v592 = &v553 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v590 = &v553 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v589 = &v553 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v587 = &v553 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v586 = &v553 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  v584 = &v553 - v94;
  v95 = MEMORY[0x1EEE9AC00](v93);
  v582 = &v553 - v96;
  v97 = MEMORY[0x1EEE9AC00](v95);
  v581 = &v553 - v98;
  v99 = MEMORY[0x1EEE9AC00](v97);
  v579 = &v553 - v100;
  v101 = MEMORY[0x1EEE9AC00](v99);
  v578 = &v553 - v102;
  v103 = MEMORY[0x1EEE9AC00](v101);
  v576 = &v553 - v104;
  v105 = MEMORY[0x1EEE9AC00](v103);
  v575 = &v553 - v106;
  v107 = MEMORY[0x1EEE9AC00](v105);
  v573 = &v553 - v108;
  v109 = MEMORY[0x1EEE9AC00](v107);
  v572 = &v553 - v110;
  v111 = MEMORY[0x1EEE9AC00](v109);
  v570 = &v553 - v112;
  v113 = MEMORY[0x1EEE9AC00](v111);
  v569 = &v553 - v114;
  v115 = MEMORY[0x1EEE9AC00](v113);
  v567 = &v553 - v116;
  v117 = MEMORY[0x1EEE9AC00](v115);
  v566 = &v553 - v118;
  v119 = MEMORY[0x1EEE9AC00](v117);
  v564 = &v553 - v120;
  v121 = MEMORY[0x1EEE9AC00](v119);
  v563 = &v553 - v122;
  v123 = MEMORY[0x1EEE9AC00](v121);
  v561 = &v553 - v124;
  v125 = MEMORY[0x1EEE9AC00](v123);
  v560 = &v553 - v126;
  v127 = MEMORY[0x1EEE9AC00](v125);
  v558 = &v553 - v128;
  v129 = MEMORY[0x1EEE9AC00](v127);
  v557 = &v553 - v130;
  v131 = MEMORY[0x1EEE9AC00](v129);
  v556 = &v553 - v132;
  v133 = MEMORY[0x1EEE9AC00](v131);
  v555 = &v553 - v134;
  v135 = MEMORY[0x1EEE9AC00](v133);
  v554 = &v553 - v136;
  v137 = MEMORY[0x1EEE9AC00](v135);
  v553 = &v553 - v138;
  v139 = MEMORY[0x1EEE9AC00](v137);
  v601 = &v553 - v140;
  v141 = MEMORY[0x1EEE9AC00](v139);
  v602 = &v553 - v142;
  v143 = MEMORY[0x1EEE9AC00](v141);
  v603 = &v553 - v144;
  v145 = MEMORY[0x1EEE9AC00](v143);
  v605 = &v553 - v146;
  v147 = MEMORY[0x1EEE9AC00](v145);
  v606 = &v553 - v148;
  v149 = MEMORY[0x1EEE9AC00](v147);
  v608 = &v553 - v150;
  v151 = MEMORY[0x1EEE9AC00](v149);
  v609 = &v553 - v152;
  v153 = MEMORY[0x1EEE9AC00](v151);
  v611 = &v553 - v154;
  v155 = MEMORY[0x1EEE9AC00](v153);
  v612 = &v553 - v156;
  v157 = MEMORY[0x1EEE9AC00](v155);
  v614 = &v553 - v158;
  v159 = MEMORY[0x1EEE9AC00](v157);
  v615 = &v553 - v160;
  v161 = MEMORY[0x1EEE9AC00](v159);
  v617 = &v553 - v162;
  v163 = MEMORY[0x1EEE9AC00](v161);
  v618 = &v553 - v164;
  v165 = MEMORY[0x1EEE9AC00](v163);
  v621 = &v553 - v166;
  v167 = MEMORY[0x1EEE9AC00](v165);
  v620 = &v553 - v168;
  v169 = MEMORY[0x1EEE9AC00](v167);
  v625 = &v553 - v170;
  v171 = MEMORY[0x1EEE9AC00](v169);
  v624 = &v553 - v172;
  v173 = MEMORY[0x1EEE9AC00](v171);
  v628 = &v553 - v174;
  v175 = MEMORY[0x1EEE9AC00](v173);
  v627 = &v553 - v176;
  v177 = MEMORY[0x1EEE9AC00](v175);
  v631 = &v553 - v178;
  v179 = MEMORY[0x1EEE9AC00](v177);
  v630 = &v553 - v180;
  v181 = MEMORY[0x1EEE9AC00](v179);
  v634 = &v553 - v182;
  v183 = MEMORY[0x1EEE9AC00](v181);
  v633 = &v553 - v184;
  v185 = MEMORY[0x1EEE9AC00](v183);
  v637 = &v553 - v186;
  v187 = MEMORY[0x1EEE9AC00](v185);
  v636 = &v553 - v188;
  v189 = MEMORY[0x1EEE9AC00](v187);
  v640 = &v553 - v190;
  v191 = MEMORY[0x1EEE9AC00](v189);
  v639 = &v553 - v192;
  v193 = MEMORY[0x1EEE9AC00](v191);
  v643 = &v553 - v194;
  v195 = MEMORY[0x1EEE9AC00](v193);
  v642 = &v553 - v196;
  v197 = MEMORY[0x1EEE9AC00](v195);
  v646 = &v553 - v198;
  v199 = MEMORY[0x1EEE9AC00](v197);
  v645 = &v553 - v200;
  v201 = MEMORY[0x1EEE9AC00](v199);
  v649 = &v553 - v202;
  v203 = MEMORY[0x1EEE9AC00](v201);
  v205 = &v553 - v204;
  MEMORY[0x1EEE9AC00](v203);
  v207 = &v553 - v206;
  v208 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseGeoHash;
  swift_beginAccess();
  sub_1C446C964(a1 + v208, v207, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v209 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseGeoHash;
  swift_beginAccess();
  v210 = *(v650 + 48);
  sub_1C446C964(v207, v72, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v211 = &v72[v210];
  v212 = v72;
  v213 = v651;
  sub_1C446C964(a2 + v209, v211, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v212, 1, v213) == 1)
  {

    sub_1C4420C3C(v207, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v214 = a2;
    v215 = a1;
    if (sub_1C44157D4(v212 + v210, 1, v213) == 1)
    {
      sub_1C4420C3C(v212, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      v216 = v650;
      goto LABEL_8;
    }

LABEL_6:
    v217 = v212;
LABEL_58:
    sub_1C4420C3C(v217, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_59;
  }

  sub_1C446C964(v212, v205, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v212 + v210, 1, v213) == 1)
  {

    sub_1C4420C3C(v207, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
    goto LABEL_6;
  }

  v218 = v212 + v210;
  v219 = v212;
  v220 = v648;
  sub_1C46ECFD4(v218, v648);

  v221 = sub_1C47E3504(v205, v220);
  v216 = v650;
  sub_1C46ED02C();
  sub_1C4420C3C(v207, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v214 = a2;
  v215 = a1;
  sub_1C46ED02C();
  sub_1C4420C3C(v219, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v221 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_8:
  v222 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseTimeOfDay;
  swift_beginAccess();
  v223 = v649;
  sub_1C446C964(v215 + v222, v649, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v224 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseTimeOfDay;
  swift_beginAccess();
  v225 = *(v216 + 48);
  v226 = v647;
  sub_1C446C964(v223, v647, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v214 + v224, v226 + v225, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v226, 1, v651) == 1)
  {
    sub_1C4420C3C(v223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v226 + v225, 1, v651) != 1)
    {
      goto LABEL_57;
    }

    sub_1C4420C3C(v226, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v227 = v645;
    sub_1C446C964(v226, v645, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v226 + v225, 1, v651) == 1)
    {
      sub_1C4420C3C(v649, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_56:
      sub_1C46ED02C();
      goto LABEL_57;
    }

    v228 = v226 + v225;
    v229 = v648;
    sub_1C46ECFD4(v228, v648);
    v230 = sub_1C47E3504(v227, v229);
    sub_1C46ED02C();
    sub_1C4420C3C(v649, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
    sub_1C4420C3C(v226, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v230 & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  v231 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextDayOfWeek;
  swift_beginAccess();
  v232 = v646;
  sub_1C446C964(v215 + v231, v646, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v233 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextDayOfWeek;
  swift_beginAccess();
  v234 = *(v216 + 48);
  v226 = v644;
  sub_1C446C964(v232, v644, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v214 + v233, v226 + v234, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v226, 1, v651) == 1)
  {
    sub_1C4420C3C(v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v226 + v234, 1, v651) != 1)
    {
      goto LABEL_57;
    }

    sub_1C4420C3C(v226, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v235 = v642;
    sub_1C446C964(v226, v642, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v226 + v234, 1, v651) == 1)
    {
      v236 = v646;
      goto LABEL_55;
    }

    v237 = v226 + v234;
    v238 = v648;
    sub_1C46ECFD4(v237, v648);
    v239 = sub_1C47E3504(v235, v238);
    sub_1C46ED02C();
    sub_1C4420C3C(v646, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
    sub_1C4420C3C(v226, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v239 & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  v240 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextLoi;
  swift_beginAccess();
  v241 = v216;
  v242 = v643;
  sub_1C446C964(v215 + v240, v643, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v243 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextLoi;
  swift_beginAccess();
  v244 = *(v241 + 48);
  v226 = v641;
  sub_1C446C964(v242, v641, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v214 + v243, v226 + v244, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v226, 1, v651) == 1)
  {
    sub_1C4420C3C(v242, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v226 + v244, 1, v651) != 1)
    {
      goto LABEL_57;
    }

    sub_1C4420C3C(v226, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v245 = v639;
    sub_1C446C964(v226, v639, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v226 + v244, 1, v651) == 1)
    {
      v236 = v643;
      goto LABEL_55;
    }

    v246 = v226 + v244;
    v247 = v648;
    sub_1C46ECFD4(v246, v648);
    v248 = sub_1C47E3504(v245, v247);
    sub_1C46ED02C();
    sub_1C4420C3C(v643, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
    sub_1C4420C3C(v226, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v248 & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  v249 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextSpecificGeoHash;
  swift_beginAccess();
  v250 = v640;
  sub_1C446C964(v215 + v249, v640, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v251 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextSpecificGeoHash;
  swift_beginAccess();
  v252 = v650;
  v253 = *(v650 + 48);
  v226 = v638;
  sub_1C446C964(v250, v638, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v214 + v251, v226 + v253, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v226, 1, v651) == 1)
  {
    sub_1C4420C3C(v250, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v226 + v253, 1, v651) != 1)
    {
      goto LABEL_57;
    }

    sub_1C4420C3C(v226, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v254 = v636;
    sub_1C446C964(v226, v636, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v226 + v253, 1, v651) == 1)
    {
      v236 = v640;
      goto LABEL_55;
    }

    v255 = v648;
    sub_1C46ECFD4(v226 + v253, v648);
    v256 = sub_1C47E3504(v254, v255);
    sub_1C46ED02C();
    sub_1C4420C3C(v640, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
    sub_1C4420C3C(v226, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v256 & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  v257 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextWifi;
  swift_beginAccess();
  v258 = v637;
  sub_1C446C964(v215 + v257, v637, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v259 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextWifi;
  swift_beginAccess();
  v260 = *(v252 + 48);
  v226 = v635;
  sub_1C446C964(v258, v635, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v214 + v259, v226 + v260, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v226, 1, v651) == 1)
  {
    sub_1C4420C3C(v258, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v226 + v260, 1, v651) != 1)
    {
      goto LABEL_57;
    }

    sub_1C4420C3C(v226, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v261 = v633;
    sub_1C446C964(v226, v633, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v226 + v260, 1, v651) == 1)
    {
      v236 = v637;
      goto LABEL_55;
    }

    v262 = v648;
    sub_1C46ECFD4(v226 + v260, v648);
    v263 = sub_1C47E3504(v261, v262);
    sub_1C46ED02C();
    sub_1C4420C3C(v637, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
    sub_1C4420C3C(v226, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v263 & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  v264 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenSequence;
  swift_beginAccess();
  v265 = v634;
  sub_1C446C964(v215 + v264, v634, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v266 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenSequence;
  swift_beginAccess();
  v267 = *(v252 + 48);
  v226 = v632;
  sub_1C446C964(v265, v632, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v214 + v266, v226 + v267, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v226, 1, v651) != 1)
  {
    v268 = v630;
    sub_1C446C964(v226, v630, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v226 + v267, 1, v651) != 1)
    {
      v269 = v648;
      sub_1C46ECFD4(v226 + v267, v648);
      v270 = sub_1C47E3504(v268, v269);
      sub_1C46ED02C();
      sub_1C4420C3C(v634, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C46ED02C();
      sub_1C4420C3C(v226, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      if ((v270 & 1) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_44;
    }

    v236 = v634;
LABEL_55:
    sub_1C4420C3C(v236, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    goto LABEL_56;
  }

  sub_1C4420C3C(v265, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v226 + v267, 1, v651) != 1)
  {
    goto LABEL_57;
  }

  sub_1C4420C3C(v226, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_44:
  v271 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseGeoHash;
  swift_beginAccess();
  v272 = v631;
  sub_1C446C964(v215 + v271, v631, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v273 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseGeoHash;
  swift_beginAccess();
  v274 = *(v252 + 48);
  v226 = v629;
  sub_1C446C964(v272, v629, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v214 + v273, v226 + v274, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v226, 1, v651) == 1)
  {
    sub_1C4420C3C(v272, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v226 + v274, 1, v651) == 1)
    {
      sub_1C4420C3C(v226, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_50;
    }

LABEL_57:
    v217 = v226;
    goto LABEL_58;
  }

  v275 = v627;
  sub_1C446C964(v226, v627, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v226 + v274, 1, v651) == 1)
  {
    v236 = v631;
    goto LABEL_55;
  }

  v276 = v648;
  sub_1C46ECFD4(v226 + v274, v648);
  v277 = sub_1C47E3504(v275, v276);
  sub_1C46ED02C();
  sub_1C4420C3C(v631, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v226, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v277 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_50:
  v278 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseTimeOfDay;
  swift_beginAccess();
  v279 = v628;
  sub_1C446C964(v215 + v278, v628, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v280 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseTimeOfDay;
  swift_beginAccess();
  v281 = *(v252 + 48);
  v226 = v626;
  sub_1C446C964(v279, v626, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v214 + v280, v226 + v281, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v226, 1, v651) == 1)
  {
    sub_1C4420C3C(v279, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v226 + v281, 1, v651) == 1)
    {
      sub_1C4420C3C(v226, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_62;
    }

    goto LABEL_57;
  }

  v282 = v624;
  sub_1C446C964(v226, v624, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v226 + v281, 1, v651) == 1)
  {
    v236 = v628;
    goto LABEL_55;
  }

  v284 = v648;
  sub_1C46ECFD4(v226 + v281, v648);
  v285 = sub_1C47E3504(v282, v284);
  sub_1C46ED02C();
  sub_1C4420C3C(v628, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v226, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v285 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_62:
  v286 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorDayOfWeek;
  swift_beginAccess();
  v287 = v625;
  sub_1C446C964(v215 + v286, v625, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v288 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorDayOfWeek;
  swift_beginAccess();
  v289 = *(v252 + 48);
  v290 = v622;
  sub_1C446C964(v287, v622, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v214 + v288, v290 + v289, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v290, 1, v651) == 1)
  {
    sub_1C4420C3C(v625, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v291 = v651;
    if (sub_1C44157D4(v290 + v289, 1, v651) == 1)
    {
      sub_1C4420C3C(v290, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  v292 = v620;
  sub_1C446C964(v290, v620, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v291 = v651;
  if (sub_1C44157D4(v290 + v289, 1, v651) == 1)
  {
    sub_1C4420C3C(v625, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_67:
    v217 = v290;
    goto LABEL_58;
  }

  v293 = v290 + v289;
  v294 = v648;
  sub_1C46ECFD4(v293, v648);
  v295 = sub_1C47E3504(v292, v294);
  sub_1C46ED02C();
  sub_1C4420C3C(v625, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v290, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v295 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_69:
  v296 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorLoi;
  swift_beginAccess();
  v297 = v215;
  v298 = v215 + v296;
  v299 = v621;
  sub_1C446C964(v298, v621, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v300 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorLoi;
  swift_beginAccess();
  v301 = *(v650 + 48);
  v302 = v299;
  v303 = v623;
  sub_1C446C964(v302, v623, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v649 = v214;
  sub_1C446C964(v214 + v300, v303 + v301, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v303, 1, v291) == 1)
  {
    sub_1C4420C3C(v621, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v623 + v301, 1, v291) == 1)
    {
      sub_1C4420C3C(v623, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_76;
    }

LABEL_74:
    v305 = v623;
LABEL_222:
    sub_1C4420C3C(v305, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_59;
  }

  v304 = v623;
  sub_1C446C964(v623, v618, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v304 + v301, 1, v291) == 1)
  {
    sub_1C4420C3C(v621, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
    goto LABEL_74;
  }

  v306 = v623;
  v307 = v623 + v301;
  v308 = v648;
  sub_1C46ECFD4(v307, v648);
  v309 = sub_1C47E3504(v618, v308);
  sub_1C46ED02C();
  sub_1C4420C3C(v621, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v306, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v309 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_76:
  v310 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorSpecificGeoHash;
  swift_beginAccess();
  v311 = v617;
  sub_1C446C964(v297 + v310, v617, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v312 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorSpecificGeoHash;
  v313 = v649;
  swift_beginAccess();
  v314 = *(v650 + 48);
  v315 = v311;
  v316 = v619;
  sub_1C446C964(v315, v619, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v313 + v312, v316 + v314, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v316, 1, v291) == 1)
  {
    sub_1C4420C3C(v617, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v619 + v314, 1, v291) == 1)
    {
      sub_1C4420C3C(v619, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  v317 = v619;
  sub_1C446C964(v619, v615, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v317 + v314, 1, v291) == 1)
  {
    sub_1C4420C3C(v617, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_81:
    v305 = v619;
    goto LABEL_222;
  }

  v318 = v619;
  v319 = v619 + v314;
  v320 = v648;
  sub_1C46ECFD4(v319, v648);
  v321 = sub_1C47E3504(v615, v320);
  sub_1C46ED02C();
  sub_1C4420C3C(v617, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v318, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v321 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_83:
  v322 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorWifi;
  swift_beginAccess();
  v323 = v614;
  sub_1C446C964(v297 + v322, v614, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v324 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorWifi;
  v325 = v649;
  swift_beginAccess();
  v326 = *(v650 + 48);
  v327 = v323;
  v328 = v616;
  sub_1C446C964(v327, v616, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v325 + v324, v328 + v326, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v328, 1, v291) == 1)
  {
    sub_1C4420C3C(v614, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v616 + v326, 1, v291) == 1)
    {
      sub_1C4420C3C(v616, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_90;
    }

    goto LABEL_88;
  }

  v329 = v616;
  sub_1C446C964(v616, v612, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v329 + v326, 1, v291) == 1)
  {
    sub_1C4420C3C(v614, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_88:
    v305 = v616;
    goto LABEL_222;
  }

  v330 = v616;
  v331 = v616 + v326;
  v332 = v648;
  sub_1C46ECFD4(v331, v648);
  v333 = sub_1C47E3504(v612, v332);
  sub_1C46ED02C();
  sub_1C4420C3C(v614, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v330, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v333 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_90:
  v334 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL1Error;
  swift_beginAccess();
  v335 = v611;
  sub_1C446C964(v297 + v334, v611, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v336 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL1Error;
  v337 = v649;
  swift_beginAccess();
  v338 = *(v650 + 48);
  v339 = v335;
  v340 = v613;
  sub_1C446C964(v339, v613, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v337 + v336, v340 + v338, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v340, 1, v291) == 1)
  {
    sub_1C4420C3C(v611, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v613 + v338, 1, v291) == 1)
    {
      sub_1C4420C3C(v613, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_97;
    }

    goto LABEL_95;
  }

  v341 = v613;
  sub_1C446C964(v613, v609, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v341 + v338, 1, v291) == 1)
  {
    sub_1C4420C3C(v611, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_95:
    v305 = v613;
    goto LABEL_222;
  }

  v342 = v613;
  v343 = v613 + v338;
  v344 = v648;
  sub_1C46ECFD4(v343, v648);
  v345 = sub_1C47E3504(v609, v344);
  sub_1C46ED02C();
  sub_1C4420C3C(v611, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v342, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v345 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_97:
  v346 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL2Error;
  swift_beginAccess();
  v347 = v608;
  sub_1C446C964(v297 + v346, v608, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v348 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL2Error;
  v349 = v649;
  swift_beginAccess();
  v350 = *(v650 + 48);
  v351 = v347;
  v352 = v610;
  sub_1C446C964(v351, v610, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v349 + v348, v352 + v350, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v352, 1, v291) == 1)
  {
    sub_1C4420C3C(v608, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v610 + v350, 1, v291) == 1)
    {
      sub_1C4420C3C(v610, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_104;
    }

    goto LABEL_102;
  }

  v353 = v610;
  sub_1C446C964(v610, v606, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v353 + v350, 1, v291) == 1)
  {
    sub_1C4420C3C(v608, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_102:
    v305 = v610;
    goto LABEL_222;
  }

  v354 = v610;
  v355 = v610 + v350;
  v356 = v648;
  sub_1C46ECFD4(v355, v648);
  v357 = sub_1C47E3504(v606, v356);
  sub_1C46ED02C();
  sub_1C4420C3C(v608, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v354, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v357 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_104:
  v358 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__lastExecutionAge;
  swift_beginAccess();
  v359 = v605;
  sub_1C446C964(v297 + v358, v605, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v360 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__lastExecutionAge;
  v361 = v649;
  swift_beginAccess();
  v362 = *(v650 + 48);
  v363 = v607;
  sub_1C446C964(v359, v607, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v361 + v360, v363 + v362, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v363, 1, v291) == 1)
  {
    sub_1C4420C3C(v605, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v607 + v362, 1, v291) == 1)
    {
      sub_1C4420C3C(v607, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_111;
    }

    goto LABEL_109;
  }

  v364 = v607;
  sub_1C446C964(v607, v603, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v364 + v362, 1, v291) == 1)
  {
    sub_1C4420C3C(v605, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_109:
    v305 = v607;
    goto LABEL_222;
  }

  v365 = v607;
  v366 = v648;
  sub_1C46ECFD4(v607 + v362, v648);
  v367 = sub_1C47E3504(v603, v366);
  sub_1C46ED02C();
  sub_1C4420C3C(v605, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v365, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v367 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_111:
  v368 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__longTermTrendingPopularity;
  swift_beginAccess();
  v369 = v602;
  sub_1C446C964(v297 + v368, v602, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v370 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__longTermTrendingPopularity;
  v371 = v649;
  swift_beginAccess();
  v372 = *(v650 + 48);
  v373 = v604;
  sub_1C446C964(v369, v604, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v371 + v370, v373 + v372, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v373, 1, v291) == 1)
  {
    sub_1C4420C3C(v602, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v604 + v372, 1, v291) == 1)
    {
      sub_1C4420C3C(v604, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_118;
    }

    goto LABEL_116;
  }

  v374 = v604;
  sub_1C446C964(v604, v601, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v374 + v372, 1, v291) == 1)
  {
    sub_1C4420C3C(v602, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_116:
    v305 = v604;
    goto LABEL_222;
  }

  v375 = v604;
  v376 = v648;
  sub_1C46ECFD4(v604 + v372, v648);
  v377 = sub_1C47E3504(v601, v376);
  sub_1C46ED02C();
  sub_1C4420C3C(v602, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v375, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v377 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_118:
  v378 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__medianTimeIntervalBetweenExecution;
  swift_beginAccess();
  v379 = v553;
  sub_1C446C964(v297 + v378, v553, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v380 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__medianTimeIntervalBetweenExecution;
  v381 = v649;
  swift_beginAccess();
  v382 = *(v650 + 48);
  v383 = v379;
  v384 = v559;
  sub_1C446C964(v383, v559, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v381 + v380, v384 + v382, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v384, 1, v291) == 1)
  {
    sub_1C4420C3C(v553, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v559 + v382, 1, v291) == 1)
    {
      sub_1C4420C3C(v559, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_125;
    }

    goto LABEL_123;
  }

  v385 = v559;
  sub_1C446C964(v559, v554, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v385 + v382, 1, v291) == 1)
  {
    sub_1C4420C3C(v553, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_123:
    v305 = v559;
    goto LABEL_222;
  }

  v386 = v559;
  v387 = v648;
  sub_1C46ECFD4(v559 + v382, v648);
  v388 = sub_1C47E3504(v554, v387);
  sub_1C46ED02C();
  sub_1C4420C3C(v553, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v386, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v388 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_125:
  v389 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHash;
  swift_beginAccess();
  v390 = v555;
  sub_1C446C964(v297 + v389, v555, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v391 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHash;
  v392 = v649;
  swift_beginAccess();
  v393 = *(v650 + 48);
  v394 = v390;
  v395 = v562;
  sub_1C446C964(v394, v562, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v392 + v391, v395 + v393, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v395, 1, v291) == 1)
  {
    sub_1C4420C3C(v555, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v562 + v393, 1, v291) == 1)
    {
      sub_1C4420C3C(v562, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_132;
    }

    goto LABEL_130;
  }

  v396 = v562;
  sub_1C446C964(v562, v556, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v396 + v393, 1, v291) == 1)
  {
    sub_1C4420C3C(v555, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_130:
    v305 = v562;
    goto LABEL_222;
  }

  v397 = v562;
  v398 = v648;
  sub_1C46ECFD4(v562 + v393, v648);
  v399 = sub_1C47E3504(v556, v398);
  sub_1C46ED02C();
  sub_1C4420C3C(v555, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v397, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v399 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_132:
  v400 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHashCoarseTimeOfDay;
  swift_beginAccess();
  v401 = v557;
  sub_1C446C964(v297 + v400, v557, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v402 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHashCoarseTimeOfDay;
  v403 = v649;
  swift_beginAccess();
  v404 = *(v650 + 48);
  v405 = v401;
  v406 = v565;
  sub_1C446C964(v405, v565, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v403 + v402, v406 + v404, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v406, 1, v291) == 1)
  {
    sub_1C4420C3C(v557, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v565 + v404, 1, v291) == 1)
    {
      sub_1C4420C3C(v565, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_139;
    }

    goto LABEL_137;
  }

  v407 = v565;
  sub_1C446C964(v565, v558, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v407 + v404, 1, v291) == 1)
  {
    sub_1C4420C3C(v557, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_137:
    v305 = v565;
    goto LABEL_222;
  }

  v408 = v565;
  v409 = v648;
  sub_1C46ECFD4(v565 + v404, v648);
  v410 = sub_1C47E3504(v558, v409);
  sub_1C46ED02C();
  sub_1C4420C3C(v557, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v408, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v410 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_139:
  v411 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDay;
  swift_beginAccess();
  v412 = v560;
  sub_1C446C964(v297 + v411, v560, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v413 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDay;
  v414 = v649;
  swift_beginAccess();
  v415 = *(v650 + 48);
  v416 = v412;
  v417 = v568;
  sub_1C446C964(v416, v568, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v414 + v413, v417 + v415, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v417, 1, v291) == 1)
  {
    sub_1C4420C3C(v560, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v568 + v415, 1, v291) == 1)
    {
      sub_1C4420C3C(v568, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_146;
    }

    goto LABEL_144;
  }

  v418 = v568;
  sub_1C446C964(v568, v561, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v418 + v415, 1, v291) == 1)
  {
    sub_1C4420C3C(v560, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_144:
    v305 = v568;
    goto LABEL_222;
  }

  v419 = v568;
  v420 = v648;
  sub_1C46ECFD4(v568 + v415, v648);
  v421 = sub_1C47E3504(v561, v420);
  sub_1C46ED02C();
  sub_1C4420C3C(v560, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v419, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v421 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_146:
  v422 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayDayOfWeek;
  swift_beginAccess();
  v423 = v563;
  sub_1C446C964(v297 + v422, v563, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v424 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayDayOfWeek;
  v425 = v649;
  swift_beginAccess();
  v426 = *(v650 + 48);
  v427 = v423;
  v428 = v571;
  sub_1C446C964(v427, v571, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v425 + v424, v428 + v426, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v428, 1, v291) == 1)
  {
    sub_1C4420C3C(v563, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v571 + v426, 1, v291) == 1)
    {
      sub_1C4420C3C(v571, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_153;
    }

    goto LABEL_151;
  }

  v429 = v571;
  sub_1C446C964(v571, v564, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v429 + v426, 1, v291) == 1)
  {
    sub_1C4420C3C(v563, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_151:
    v305 = v571;
    goto LABEL_222;
  }

  v430 = v571;
  v431 = v648;
  sub_1C46ECFD4(v571 + v426, v648);
  v432 = sub_1C47E3504(v564, v431);
  sub_1C46ED02C();
  sub_1C4420C3C(v563, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v430, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v432 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_153:
  v433 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDaySpecificGeoHash;
  swift_beginAccess();
  v434 = v566;
  sub_1C446C964(v297 + v433, v566, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v435 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDaySpecificGeoHash;
  v436 = v649;
  swift_beginAccess();
  v437 = *(v650 + 48);
  v438 = v434;
  v439 = v574;
  sub_1C446C964(v438, v574, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v436 + v435, v439 + v437, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v439, 1, v291) == 1)
  {
    sub_1C4420C3C(v566, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v574 + v437, 1, v291) == 1)
    {
      sub_1C4420C3C(v574, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_160;
    }

    goto LABEL_158;
  }

  v440 = v574;
  sub_1C446C964(v574, v567, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v440 + v437, 1, v291) == 1)
  {
    sub_1C4420C3C(v566, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_158:
    v305 = v574;
    goto LABEL_222;
  }

  v441 = v574;
  v442 = v648;
  sub_1C46ECFD4(v574 + v437, v648);
  v443 = sub_1C47E3504(v567, v442);
  sub_1C46ED02C();
  sub_1C4420C3C(v566, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v441, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v443 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_160:
  v444 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayWifi;
  swift_beginAccess();
  v445 = v569;
  sub_1C446C964(v297 + v444, v569, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v446 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayWifi;
  v447 = v649;
  swift_beginAccess();
  v448 = *(v650 + 48);
  v449 = v445;
  v450 = v577;
  sub_1C446C964(v449, v577, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v447 + v446, v450 + v448, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v450, 1, v291) == 1)
  {
    sub_1C4420C3C(v569, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v577 + v448, 1, v291) == 1)
    {
      sub_1C4420C3C(v577, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_167;
    }

    goto LABEL_165;
  }

  v451 = v577;
  sub_1C446C964(v577, v570, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v451 + v448, 1, v291) == 1)
  {
    sub_1C4420C3C(v569, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_165:
    v305 = v577;
    goto LABEL_222;
  }

  v452 = v577;
  v453 = v648;
  sub_1C46ECFD4(v577 + v448, v648);
  v454 = sub_1C47E3504(v570, v453);
  sub_1C46ED02C();
  sub_1C4420C3C(v569, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v452, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v454 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_167:
  v455 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeek;
  swift_beginAccess();
  v456 = v572;
  sub_1C446C964(v297 + v455, v572, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v457 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeek;
  v458 = v649;
  swift_beginAccess();
  v459 = *(v650 + 48);
  v460 = v456;
  v461 = v580;
  sub_1C446C964(v460, v580, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v458 + v457, v461 + v459, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v461, 1, v291) == 1)
  {
    sub_1C4420C3C(v572, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v580 + v459, 1, v291) == 1)
    {
      sub_1C4420C3C(v580, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_174;
    }

    goto LABEL_172;
  }

  v462 = v580;
  sub_1C446C964(v580, v573, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v462 + v459, 1, v291) == 1)
  {
    sub_1C4420C3C(v572, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_172:
    v305 = v580;
    goto LABEL_222;
  }

  v463 = v580;
  v464 = v648;
  sub_1C46ECFD4(v580 + v459, v648);
  v465 = sub_1C47E3504(v573, v464);
  sub_1C46ED02C();
  sub_1C4420C3C(v572, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v463, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v465 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_174:
  v466 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekSpecificGeoHash;
  swift_beginAccess();
  v467 = v575;
  sub_1C446C964(v297 + v466, v575, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v468 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekSpecificGeoHash;
  v469 = v649;
  swift_beginAccess();
  v470 = *(v650 + 48);
  v471 = v467;
  v472 = v583;
  sub_1C446C964(v471, v583, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v469 + v468, v472 + v470, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v472, 1, v291) == 1)
  {
    sub_1C4420C3C(v575, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v583 + v470, 1, v291) == 1)
    {
      sub_1C4420C3C(v583, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_181;
    }

    goto LABEL_179;
  }

  v473 = v583;
  sub_1C446C964(v583, v576, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v473 + v470, 1, v291) == 1)
  {
    sub_1C4420C3C(v575, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_179:
    v305 = v583;
    goto LABEL_222;
  }

  v474 = v583;
  v475 = v648;
  sub_1C46ECFD4(v583 + v470, v648);
  v476 = sub_1C47E3504(v576, v475);
  sub_1C46ED02C();
  sub_1C4420C3C(v575, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v474, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v476 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_181:
  v477 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekWifi;
  swift_beginAccess();
  v478 = v578;
  sub_1C446C964(v297 + v477, v578, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v479 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekWifi;
  v480 = v649;
  swift_beginAccess();
  v481 = *(v650 + 48);
  v482 = v478;
  v483 = v585;
  sub_1C446C964(v482, v585, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v480 + v479, v483 + v481, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v483, 1, v291) == 1)
  {
    sub_1C4420C3C(v578, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v585 + v481, 1, v291) == 1)
    {
      sub_1C4420C3C(v585, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_188;
    }

    goto LABEL_186;
  }

  v484 = v585;
  sub_1C446C964(v585, v579, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v484 + v481, 1, v291) == 1)
  {
    sub_1C4420C3C(v578, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_186:
    v305 = v585;
    goto LABEL_222;
  }

  v485 = v585;
  v486 = v648;
  sub_1C46ECFD4(v585 + v481, v648);
  v487 = sub_1C47E3504(v579, v486);
  sub_1C46ED02C();
  sub_1C4420C3C(v578, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v485, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v487 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_188:
  v488 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextLoi;
  swift_beginAccess();
  v489 = v581;
  sub_1C446C964(v297 + v488, v581, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v490 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextLoi;
  v491 = v649;
  swift_beginAccess();
  v492 = *(v650 + 48);
  v493 = v489;
  v494 = v588;
  sub_1C446C964(v493, v588, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v491 + v490, v494 + v492, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v494, 1, v291) == 1)
  {
    sub_1C4420C3C(v581, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v588 + v492, 1, v291) == 1)
    {
      sub_1C4420C3C(v588, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_195;
    }

    goto LABEL_193;
  }

  v495 = v588;
  sub_1C446C964(v588, v582, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v495 + v492, 1, v291) == 1)
  {
    sub_1C4420C3C(v581, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_193:
    v305 = v588;
    goto LABEL_222;
  }

  v496 = v588;
  v497 = v648;
  sub_1C46ECFD4(v588 + v492, v648);
  v498 = sub_1C47E3504(v582, v497);
  sub_1C46ED02C();
  sub_1C4420C3C(v581, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v496, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v498 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_195:
  v499 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextSpecificGeoHash;
  swift_beginAccess();
  v500 = v584;
  sub_1C446C964(v297 + v499, v584, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v501 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextSpecificGeoHash;
  v502 = v649;
  swift_beginAccess();
  v503 = *(v650 + 48);
  v504 = v500;
  v505 = v591;
  sub_1C446C964(v504, v591, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v502 + v501, v505 + v503, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v505, 1, v291) == 1)
  {
    sub_1C4420C3C(v584, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v591 + v503, 1, v291) == 1)
    {
      sub_1C4420C3C(v591, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_202;
    }

    goto LABEL_200;
  }

  v506 = v591;
  sub_1C446C964(v591, v586, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v506 + v503, 1, v291) == 1)
  {
    sub_1C4420C3C(v584, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_200:
    v305 = v591;
    goto LABEL_222;
  }

  v507 = v591;
  v508 = v648;
  sub_1C46ECFD4(v591 + v503, v648);
  v509 = sub_1C47E3504(v586, v508);
  sub_1C46ED02C();
  sub_1C4420C3C(v584, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v507, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v509 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_202:
  v510 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextWifi;
  swift_beginAccess();
  v511 = v587;
  sub_1C446C964(v297 + v510, v587, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v512 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextWifi;
  v513 = v649;
  swift_beginAccess();
  v514 = *(v650 + 48);
  v515 = v511;
  v516 = v593;
  sub_1C446C964(v515, v593, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v513 + v512, v516 + v514, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v516, 1, v291) == 1)
  {
    sub_1C4420C3C(v587, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v593 + v514, 1, v291) == 1)
    {
      sub_1C4420C3C(v593, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_209;
    }

    goto LABEL_207;
  }

  v517 = v593;
  sub_1C446C964(v593, v589, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v517 + v514, 1, v291) == 1)
  {
    sub_1C4420C3C(v587, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_207:
    v305 = v593;
    goto LABEL_222;
  }

  v518 = v593;
  v519 = v648;
  sub_1C46ECFD4(v593 + v514, v648);
  v520 = sub_1C47E3504(v589, v519);
  sub_1C46ED02C();
  sub_1C4420C3C(v587, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v518, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v520 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_209:
  v521 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__sequencePopularityGivenBehavior;
  swift_beginAccess();
  v522 = v590;
  sub_1C446C964(v297 + v521, v590, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v523 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__sequencePopularityGivenBehavior;
  v524 = v649;
  swift_beginAccess();
  v525 = *(v650 + 48);
  v526 = v522;
  v527 = v596;
  sub_1C446C964(v526, v596, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v524 + v523, v527 + v525, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v527, 1, v291) == 1)
  {
    sub_1C4420C3C(v590, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v596 + v525, 1, v291) == 1)
    {
      sub_1C4420C3C(v596, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_216;
    }

    goto LABEL_214;
  }

  v528 = v596;
  sub_1C446C964(v596, v592, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v528 + v525, 1, v291) == 1)
  {
    sub_1C4420C3C(v590, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_214:
    v305 = v596;
    goto LABEL_222;
  }

  v529 = v596;
  v530 = v648;
  sub_1C46ECFD4(v596 + v525, v648);
  v531 = sub_1C47E3504(v592, v530);
  sub_1C46ED02C();
  sub_1C4420C3C(v590, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v529, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v531 & 1) == 0)
  {
LABEL_59:

    return 0;
  }

LABEL_216:
  v532 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__shortTermTrendingPopularity;
  swift_beginAccess();
  v533 = v594;
  sub_1C446C964(v297 + v532, v594, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v534 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__shortTermTrendingPopularity;
  v535 = v649;
  swift_beginAccess();
  v536 = *(v650 + 48);
  v537 = v533;
  v538 = v599;
  sub_1C446C964(v537, v599, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v535 + v534, v538 + v536, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v538, 1, v291) == 1)
  {
    sub_1C4420C3C(v594, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v599 + v536, 1, v291) == 1)
    {
      sub_1C4420C3C(v599, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_225;
    }

    goto LABEL_221;
  }

  v539 = v599;
  sub_1C446C964(v599, v595, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v539 + v536, 1, v291) == 1)
  {
    sub_1C4420C3C(v594, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_221:
    v305 = v599;
    goto LABEL_222;
  }

  v540 = v599;
  v541 = v648;
  sub_1C46ECFD4(v599 + v536, v648);
  v542 = sub_1C47E3504(v595, v541);
  sub_1C46ED02C();
  sub_1C4420C3C(v594, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v540, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v542 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_225:
  v543 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__trendingPopularity;
  swift_beginAccess();
  v544 = v597;
  sub_1C446C964(v297 + v543, v597, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v545 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__trendingPopularity;
  v546 = v649;
  swift_beginAccess();
  v547 = *(v650 + 48);
  v548 = v600;
  sub_1C446C964(v544, v600, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v546 + v545, v548 + v547, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v548, 1, v291) != 1)
  {
    v549 = v600;
    sub_1C446C964(v600, v598, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v549 + v547, 1, v291) == 1)
    {

      sub_1C4420C3C(v597, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C46ED02C();
      goto LABEL_230;
    }

    v550 = v600;
    v551 = v648;
    sub_1C46ECFD4(v600 + v547, v648);
    v552 = sub_1C47E3504(v598, v551);

    sub_1C46ED02C();
    sub_1C4420C3C(v597, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
    sub_1C4420C3C(v550, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    return (v552 & 1) != 0;
  }

  sub_1C4420C3C(v597, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v600 + v547, 1, v291) != 1)
  {
LABEL_230:
    sub_1C4420C3C(v600, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    return 0;
  }

  sub_1C4420C3C(v600, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return 1;
}

uint64_t sub_1C46EC768(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C4F02AF8();
  a1(0);
  sub_1C46ECC80(a2, a3);
  sub_1C4F00FE8();
  return sub_1C4F02B68();
}

uint64_t sub_1C46EC810()
{
  v0 = sub_1C4F00328();
  sub_1C43FBCE0(v0);
  v2 = *(v1 + 16);
  v3 = sub_1C43FBC98();

  return v4(v3);
}

uint64_t sub_1C46EC86C()
{
  sub_1C4403FC0();
  v2 = sub_1C4F00328();
  v3 = sub_1C43FBCE0(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t sub_1C46EC8F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C46ECC80(&qword_1EC0BB6D8, type metadata accessor for EntityRelevanceEntityRelevanceFeatures);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C46EC998@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4F004E8();
  v6 = sub_1C442B738(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1C46ECA34()
{
  sub_1C46ECC80(&qword_1EC0BB628, type metadata accessor for EntityRelevanceEntityRelevanceFeatures);

  return sub_1C4F00428();
}

uint64_t sub_1C46ECAFC()
{
  sub_1C46ECC80(&qword_1EC0BB628, type metadata accessor for EntityRelevanceEntityRelevanceFeatures);

  return sub_1C4F00438();
}

uint64_t sub_1C46ECB78()
{
  sub_1C4F02AF8();
  sub_1C4F00FE8();
  return sub_1C4F02B68();
}

uint64_t sub_1C46ECC80(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1C4425064();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C46ECFD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 32);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C46ED02C()
{
  v1 = sub_1C4403FC0();
  v3 = v2(v1);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C46ED080(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C46ED118()
{
  sub_1C4F00328();
  if (v0 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDFEAB0);
    if (v1 <= 0x3F)
    {
      sub_1C46ED23C(319, &qword_1EC0BB6F0, type metadata accessor for EntityRelevanceEntityInformation);
      if (v2 <= 0x3F)
      {
        sub_1C46ED23C(319, &qword_1EC0BB6F8, type metadata accessor for EntityRelevanceEntityRelevanceFeatures);
        if (v3 <= 0x3F)
        {
          sub_1C44FCC6C(319, &qword_1EDDFCDC0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C46ED23C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1C4425064();
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C46ED2B4()
{
  v0 = sub_1C4F00328();
  if (v1 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDFCDC0);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_1C44FCC6C(319, &qword_1EDDFEAB0);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_1C44FCC6C(319, &qword_1EDDF05D8);
        if (v7 > 0x3F)
        {
          return v6;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

uint64_t sub_1C46ED3FC()
{
  result = sub_1C4F00328();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for EntityRelevanceEntityRelevanceFeatures._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C46ED494(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v12 = *(a1 + 2);
  *(v6 + 16) = xmmword_1C4F20B40;
  *(v6 + 32) = 0x80000001C4F93790;
  *(v6 + 40) = 3;
  *(v6 + 48) = 0;
  *(v6 + 56) = v11;
  *(v6 + 72) = v12;
  *(v6 + 80) = *(a1 + 24);
  sub_1C46EF150(a2, v6 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionTask_viewConfig, _s10ViewConfigVMa);
  v13 = (v6 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionTask_name);
  *v13 = a3;
  v13[1] = a4;
  v14 = (v6 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionTask_sessionID);
  *v14 = a5;
  v14[1] = a6;
  return v6;
}

uint64_t sub_1C46ED560()
{
  v1[15] = v0;
  v2 = type metadata accessor for EntityRelevanceDataCollection(0);
  v1[16] = v2;
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64) + 15;
  v1[17] = swift_task_alloc();
  v5 = _s6ConfigVMa();
  v1[18] = v5;
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64) + 15;
  v1[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46ED61C, 0, 0);
}

uint64_t sub_1C46ED61C()
{
  v57 = v0;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDDFECB8);

  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v56 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1C441D828(*(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionTask_name), *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionTask_name + 8), &v56);
    _os_log_impl(&dword_1C43F8000, v3, v4, "%s: Running Entity Relevance data collection.", v6, 0xCu);
    sub_1C440962C(v7);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[15] + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionTask_viewConfig;
  sub_1C4438D00(v8);
  v11 = (v8 + *(v9 + 72));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v0[20] = v14;
  v15 = v11[3];
  sub_1C46EEF1C(v12, v13);
  sub_1C46EF1B0(v8, _s6ConfigVMa);
  if (v13)
  {
    v16 = *(v0[15] + 88);
    v0[21] = v16;
    swift_retain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = sub_1C4F00F28();
    sub_1C470336C(v16, v12, v13, v14, v17, v0 + 2);
    sub_1C4703650();

    sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
    v23 = sub_1C4EFDAB8();
    v24 = *(v23 - 8);
    v25 = *(v24 + 72);
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1C4F0D480;
    v28 = *(v24 + 104);
    v28(v27 + v26, *MEMORY[0x1E69A9468], v23);
    v28(v27 + v26 + v25, *MEMORY[0x1E69A9460], v23);
    v28(v27 + v26 + 2 * v25, *MEMORY[0x1E69A9418], v23);
    v28(v27 + v26 + 3 * v25, *MEMORY[0x1E69A9458], v23);
    v29 = *(v0[6] + 16);
    v30 = swift_task_alloc();
    *(v30 + 16) = v0 + 2;
    *(v30 + 24) = v27;
    v0[22] = sub_1C49A52FC(sub_1C46EEFC0, v30);
    swift_setDeallocating();
    sub_1C49E1558();

    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v0[23] = sub_1C442B738(v2, qword_1EDE2DDE0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v31 = sub_1C4F00968();
    v32 = sub_1C4F01CC8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = sub_1C4428DA0();

      _os_log_impl(&dword_1C43F8000, v31, v32, "EntityRelevanceDataCollection Fetched: %ld rows", v33, 0xCu);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }

    v34 = v0[22];
    v35 = sub_1C4428DA0();
    v36 = v0[22];
    if (v35)
    {
      v37 = v36 & 0xC000000000000001;
      sub_1C4431590(0, (v36 & 0xC000000000000001) == 0);
      v38 = v0[22];
      if (v37)
      {
        v39 = MEMORY[0x1C6940F90](0, v38);
      }

      else
      {
        v39 = *(v38 + 32);
      }

      v0[24] = v39;
      v0[25] = 1;
      v40 = v0[15];
      sub_1C46EE0B4(v39, v0[20], v0[17]);
      v0[26] = 0;
      v47 = v0[16];
      v46 = v0[17];
      v48 = v0[15];
      sub_1C4F00518();
      v0[27] = sub_1C4F00508();
      v0[13] = v47;
      v0[14] = sub_1C46EF030();
      v49 = sub_1C4422F90(v0 + 10);
      sub_1C441301C(v49);
      v50 = *(v48 + 24);
      v51 = *(v48 + 32);
      v52 = *(MEMORY[0x1E69C5B28] + 4);
      v55 = (*MEMORY[0x1E69C5B28] + MEMORY[0x1E69C5B28]);
      v53 = swift_task_alloc();
      v0[28] = v53;
      *v53 = v0;
      v54 = sub_1C440019C(v53);

      return v55(v54);
    }

    v42 = v0[20];
    v41 = v0[21];
    v43 = v0[19];
    v44 = v0[17];
    v45 = v0[22];

    sub_1C46EEFDC((v0 + 2));

    sub_1C43FBDA0();
  }

  else
  {
    sub_1C46EEF6C();
    swift_allocError();
    *v18 = 0xD00000000000002ALL;
    v18[1] = 0x80000001C4F936F0;
    v18[2] = 0;
    v18[3] = 0xE000000000000000;
    swift_willThrow();
    v19 = v0[19];
    v20 = v0[17];

    sub_1C43FBDA0();
  }

  return v21();
}

uint64_t sub_1C46EDD00()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v5 = *v0;

  sub_1C440962C((v1 + 80));

  return MEMORY[0x1EEE6DFA0](sub_1C46EDE20, 0, 0);
}

uint64_t sub_1C46EDE20()
{
  v1 = v0[23];
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "EntityRelevanceDataCollection: message logged to PET2", v4, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v5 = v0[24];
  v6 = v0[17];

  sub_1C4411B84();
  sub_1C46EF1B0(v6, v7);
  v8 = v0[25];
  v9 = v0[26];
  v10 = v0[22];
  v11 = sub_1C4428DA0();
  v12 = v0[22];
  if (v8 == v11)
  {
    v13 = v0[20];
    v14 = v0[21];
    v15 = v0[19];
    v16 = v0[17];
    v17 = v0[22];

    sub_1C46EEFDC((v0 + 2));

    sub_1C43FBDA0();
LABEL_10:

    return v18();
  }

  v19 = v12 & 0xC000000000000001;
  sub_1C4431590(v8, (v12 & 0xC000000000000001) == 0);
  v20 = v0[22];
  if (v19)
  {
    result = MEMORY[0x1C6940F90](v8, v20);
    v21 = result;
  }

  else
  {
    v21 = *(v20 + 8 * v8 + 32);
  }

  v0[24] = v21;
  v0[25] = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    return result;
  }

  v23 = v0[15];
  sub_1C46EE0B4(v21, v0[20], v0[17]);
  v0[26] = v9;
  if (v9)
  {
    v25 = v0[21];
    v24 = v0[22];
    v26 = v0[20];

    sub_1C46EEFDC((v0 + 2));
    v27 = v0[19];
    v28 = v0[17];

    sub_1C43FBDA0();
    goto LABEL_10;
  }

  v30 = v0[16];
  v29 = v0[17];
  v31 = v0[15];
  sub_1C4F00518();
  v0[27] = sub_1C4F00508();
  v0[13] = v30;
  v0[14] = sub_1C46EF030();
  v32 = sub_1C4422F90(v0 + 10);
  sub_1C441301C(v32);
  v33 = *(v31 + 24);
  v34 = *(v31 + 32);
  v35 = *(MEMORY[0x1E69C5B28] + 4);
  v38 = (*MEMORY[0x1E69C5B28] + MEMORY[0x1E69C5B28]);
  v36 = swift_task_alloc();
  v0[28] = v36;
  *v36 = v0;
  v37 = sub_1C440019C();

  return v38(v37);
}

void sub_1C46EE0B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a1;
  v4 = v3;
  v76 = a2;
  v6 = type metadata accessor for FeatureValue(0);
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EntityRelevanceEntityInformation(0);
  v12 = sub_1C43FBCE0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4F00318();
  v17 = type metadata accessor for EntityRelevanceDataCollection(0);
  v18 = (a3 + v17[5]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (a3 + v17[6]);
  *v19 = 0;
  v19[1] = 0;
  v20 = v17[7];
  sub_1C440BAA8(a3 + v20, 1, 1, v11);
  v21 = v17[8];
  v22 = type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0);
  sub_1C440BAA8(a3 + v21, 1, 1, v22);
  v23 = a3 + v17[9];
  *v23 = 1;
  *(v23 + 8) = 0;
  v71 = v4;
  v24 = *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionTask_sessionID + 8);
  *v19 = *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionTask_sessionID);
  v19[1] = v24;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C493CBD4();
  if ((v25 & 1) == 0)
  {
    sub_1C4417024();
    sub_1C44321A4(v11[5]);
    sub_1C4406ADC();
    sub_1C442C85C();
  }

  sub_1C493CA4C();
  if (v26)
  {
    sub_1C4402FF4();
    v27 = &v16[v11[6]];
    v28 = *(v27 + 1);

    *v27 = 1;
    *(v27 + 1) = a3;
    sub_1C46EF088(a3 + v20);
    sub_1C4406ADC();
    sub_1C442C85C();
  }

  sub_1C493CC98();
  if ((v29 & 1) == 0)
  {
    sub_1C4417024();
    sub_1C44321A4(v11[7]);
    sub_1C4406ADC();
    sub_1C442C85C();
  }

  sub_1C493CBD4();
  if ((v30 & 1) == 0)
  {
    sub_1C4417024();
    sub_1C44321A4(v11[8]);
    sub_1C4406ADC();
    sub_1C442C85C();
  }

  sub_1C493CBD4();
  if ((v31 & 1) == 0)
  {
    sub_1C4417024();
    sub_1C44321A4(v11[9]);
    sub_1C4406ADC();
    sub_1C442C85C();
  }

  sub_1C493CA4C();
  if (v32)
  {
    sub_1C4402FF4();
    v33 = &v16[v11[10]];
    v34 = *(v33 + 1);

    *v33 = 1;
    *(v33 + 1) = a3;
    sub_1C46EF088(a3 + v20);
    sub_1C4406ADC();
    sub_1C442C85C();
  }

  sub_1C493CA4C();
  if (v35)
  {
    sub_1C4402FF4();
    v36 = &v16[v11[11]];
    v37 = *(v36 + 1);

    *v36 = 1;
    *(v36 + 1) = a3;
    sub_1C46EF088(a3 + v20);
    sub_1C4406ADC();
    sub_1C442C85C();
  }

  v72 = a3;
  v38 = v76 + 56;
  v39 = 1 << *(v76 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v76 + 56);
  v42 = (v39 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v43 = 0;
  *&v44 = 136315138;
  v69 = v44;
  v45 = v74;
  while (v41)
  {
LABEL_23:
    v47 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v48 = (*(v76 + 48) + ((v43 << 10) | (16 * v47)));
    v49 = *v48;
    v50 = v48[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v51 = COERCE_DOUBLE(sub_1C493CC98());
    if (v52)
    {
      v53 = NAN;
    }

    else
    {
      v53 = v51;
    }

    v54 = sub_1C46EE6D0();
    v55 = sub_1C4663248(v49, v50, v54);

    if (v55 == 1)
    {
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406758();
        swift_once();
      }

      v56 = sub_1C4F00978();
      sub_1C442B738(v56, qword_1EDE2DDE0);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v57 = sub_1C4F00968();
      v58 = sub_1C4F01CD8();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v74 = v45;
        v60 = v59;
        v61 = swift_slowAlloc();
        v70 = v57;
        v62 = v61;
        v77 = v61;
        *v60 = v69;
        v63 = sub_1C441D828(v49, v50, &v77);

        *(v60 + 4) = v63;
        v64 = v58;
        v65 = v70;
        _os_log_impl(&dword_1C43F8000, v70, v64, "EntityRelevanceDataCollection: %s does not have keypath defined", v60, 0xCu);
        sub_1C440962C(v62);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        v45 = v74;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }
    }

    else
    {

      v66 = v73;
      if (v55)
      {
        if (v53 == INFINITY)
        {
          v53 = 0.0;
        }

        v67 = [objc_opt_self() featureValueWithDouble_];
        sub_1C46D43EC(*(v71 + 40), *(v71 + 48), v66);
        if (v45)
        {

          sub_1C4634004(v55);

          sub_1C4411B84();
          sub_1C46EF1B0(v72, v68);
          return;
        }

        swift_setAtWritableKeyPath();
        sub_1C4634004(v55);
      }
    }
  }

  while (1)
  {
    v46 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v46 >= v42)
    {

      return;
    }

    v41 = *(v38 + 8 * v46);
    ++v43;
    if (v41)
    {
      v43 = v46;
      goto LABEL_23;
    }
  }

  __break(1u);
}

uint64_t sub_1C46EE6D0()
{
  sub_1C456902C(&qword_1EC0BB738, &qword_1C4F20BF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F20630;
  sub_1C43FBDF0();
  *(v1 + 32) = 0xD00000000000002CLL;
  *(v1 + 40) = v2;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 48) = v3;
  *(inited + 56) = 0xD00000000000002ELL;
  *(inited + 64) = v4;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 72) = v5;
  *(inited + 80) = 0xD000000000000028;
  *(inited + 88) = v6;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 96) = v7;
  *(inited + 104) = 0xD000000000000022;
  *(inited + 112) = v8;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 120) = v9;
  *(inited + 128) = 0xD00000000000002ELL;
  *(inited + 136) = v10;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 144) = v11;
  *(inited + 152) = 0xD000000000000023;
  *(inited + 160) = v12;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 168) = v13;
  *(inited + 176) = 0xD00000000000001FLL;
  *(inited + 184) = v14;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 192) = v15;
  *(inited + 200) = 0xD00000000000002CLL;
  *(inited + 208) = v16;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 216) = v17;
  *(inited + 224) = 0xD00000000000002ELL;
  *(inited + 232) = v18;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 240) = v19;
  *(inited + 248) = 0xD000000000000028;
  *(inited + 256) = v20;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 264) = v21;
  *(inited + 272) = 0xD000000000000022;
  *(inited + 280) = v22;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 288) = v23;
  *(inited + 296) = 0xD00000000000002ELL;
  *(inited + 304) = v24;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 312) = v25;
  *(inited + 320) = 0xD000000000000023;
  *(inited + 328) = v26;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 336) = v27;
  *(inited + 344) = 0xD000000000000010;
  *(inited + 352) = v28;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 360) = v29;
  *(inited + 368) = 0xD000000000000010;
  *(inited + 376) = v30;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 384) = v31;
  *(inited + 392) = 0xD000000000000010;
  *(inited + 400) = v32;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 408) = v33;
  *(inited + 416) = 0xD00000000000001ALL;
  *(inited + 424) = v34;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 432) = v35;
  *(inited + 440) = 0xD000000000000022;
  *(inited + 448) = v36;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 456) = v37;
  *(inited + 464) = 0xD00000000000002ELL;
  *(inited + 472) = v38;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 480) = v39;
  *(inited + 488) = 0xD00000000000003ELL;
  *(inited + 496) = v40;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 504) = v41;
  *(inited + 512) = 0xD000000000000030;
  *(inited + 520) = v42;
  *(inited + 528) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 536) = 0xD00000000000003ALL;
  *(inited + 544) = v43;
  *(inited + 552) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 560) = 0xD000000000000040;
  *(inited + 568) = v44;
  *(inited + 576) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 584) = 0xD000000000000035;
  *(inited + 592) = v45;
  *(inited + 600) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 608) = 0xD00000000000002ALL;
  *(inited + 616) = v46;
  *(inited + 624) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 632) = 0xD00000000000003ALL;
  *(inited + 640) = v47;
  *(inited + 648) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 656) = 0xD00000000000002FLL;
  *(inited + 664) = v48;
  *(inited + 672) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 680) = 0xD000000000000024;
  *(inited + 688) = v49;
  *(inited + 696) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 704) = 0xD000000000000030;
  *(inited + 712) = v50;
  *(inited + 720) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 728) = 0xD000000000000025;
  *(inited + 736) = v51;
  *(inited + 744) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 752) = 0xD00000000000001FLL;
  *(inited + 760) = v52;
  *(inited + 768) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 776) = 0xD00000000000001BLL;
  *(inited + 784) = v53;
  *(inited + 792) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 800) = 0xD000000000000012;
  *(inited + 808) = v54;
  *(inited + 816) = swift_getKeyPath();
  sub_1C456902C(&qword_1EC0BB740, qword_1C4F21440);
  return sub_1C4F00F28();
}

uint64_t sub_1C46EEC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = a5(0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  sub_1C46EF0F0(a1, &v17 - v14, a6);
  return a7(v15);
}

uint64_t sub_1C46EED0C()
{
  v1 = *(v0 + 32);

  sub_1C46B6868(*(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 64);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  sub_1C46EF1B0(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionTask_viewConfig, _s10ViewConfigVMa);
  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionTask_name + 8);

  v6 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionTask_sessionID + 8);

  return v0;
}

uint64_t sub_1C46EEDB0()
{
  sub_1C46EED0C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntityRelevanceDataCollectionTask()
{
  result = qword_1EC0BB720;
  if (!qword_1EC0BB720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46EEE5C()
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C46EEF1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

unint64_t sub_1C46EEF6C()
{
  result = qword_1EC0BB730;
  if (!qword_1EC0BB730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB730);
  }

  return result;
}

void sub_1C46EEFC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1C4704784();
}

unint64_t sub_1C46EF030()
{
  result = qword_1EC0BB668;
  if (!qword_1EC0BB668)
  {
    type metadata accessor for EntityRelevanceDataCollection(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB668);
  }

  return result;
}

uint64_t sub_1C46EF088(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BB690, &qword_1C4F20BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C46EF0F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C46EF150(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C46EF1B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C46EF218(uint64_t *a1)
{
  v2 = *(sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B004(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1C46F36AC(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_1C46EF2CC(uint64_t a1, void *a2)
{
  v4 = sub_1C4EF9CD8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = *(a1 + 16);
  v24 = a1;
  v25 = v9;
  v28 = a2;
  v27 = a2 + 7;
  v11 = (v10 + 16);
  v23 = v10;
  v12 = (v10 + 8);
  while (v8 != v25)
  {
    v26 = v8;
    if (v28[2])
    {
      v13 = *(v23 + 72);
      v14 = v24 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + v13 * v26;
      v15 = v28;
      v16 = v28[5];
      sub_1C46F4CA0(&qword_1EC0B90D0, MEMORY[0x1E6969530]);
      v17 = sub_1C4F00FD8();
      v18 = ~(-1 << *(v15 + 32));
      while (1)
      {
        v19 = v17 & v18;
        if (((*(v27 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          break;
        }

        (*v11)(v7, v28[6] + v19 * v13, v4);
        sub_1C46F4CA0(&qword_1EC0B9D00, MEMORY[0x1E6969530]);
        v20 = sub_1C4F010B8();
        (*v12)(v7, v4);
        v17 = v19 + 1;
        if (v20)
        {

          return v26;
        }
      }
    }

    v8 = v26 + 1;
  }

  return 0;
}

uint64_t sub_1C46EF548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v13[1] = *a1;
  v14[0] = v4;
  *(v14 + 9) = *(a1 + 25);
  sub_1C45D5A24(a2);
  v5 = sub_1C45D2400();
  v7 = v6;
  v8 = *(a1 + 48);
  v13[0] = *(a1 + 56);
  v9 = type metadata accessor for EntityRelevanceInteractionGroundTruth();
  v10 = (a2 + v9[5]);
  *v10 = v5;
  v10[1] = v7;
  *(a2 + v9[6]) = v8;
  *(a2 + v9[7]) = *(a1 + 56);
  return sub_1C4460108(v13, &v12, &qword_1EC0C2BD0, &qword_1C4F0FF50);
}

void sub_1C46EF6D8()
{
  sub_1C4F02248();
  sub_1C440BC44();
  MEMORY[0x1C6940010](0xD00000000000001CLL);
  v13 = v0[2];
  sub_1C4F02858();
  sub_1C4434FA0();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  v1 = v0[3];
  sub_1C441F800();
  sub_1C4434FA0();

  sub_1C44001D4();
  sub_1C441601C();
  v2 = v0[4];
  sub_1C441F800();
  sub_1C4434FA0();

  sub_1C44001D4();
  sub_1C441601C();
  v3 = v0[5];
  sub_1C441F800();
  sub_1C4434FA0();

  sub_1C44001D4();
  sub_1C441601C();
  v4 = v0[6];
  sub_1C441F800();
  sub_1C4434FA0();

  sub_1C44001D4();
  sub_1C441601C();
  v5 = v0[7];
  sub_1C441F800();
  sub_1C4434FA0();

  sub_1C44001D4();
  MEMORY[0x1C6940010](0xD00000000000001CLL);
  v6 = v0[10];
  v7 = sub_1C441F800();
  MEMORY[0x1C6940010](v7);

  sub_1C440BC44();
  MEMORY[0x1C6940010](0xD000000000000018);
  v8 = v0[11];
  sub_1C441F800();
  sub_1C4434FA0();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  v9 = v0[12];
  v10 = sub_1C441F800();
  MEMORY[0x1C6940010](v10);

  sub_1C44001D4();
  MEMORY[0x1C6940010](0xD000000000000018);
  v11 = v0[8];
  sub_1C4F01A28();
  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  v12 = v0[9];
  sub_1C4F01A28();
  sub_1C441E1E0();
}

uint64_t sub_1C46EF970(uint64_t a1)
{
  result = sub_1C4EFDAB8();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1C46EFAB8(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(*v4 + 128);
  type metadata accessor for EntityRelevanceEvaluationIntermediateResults();
  swift_allocObject();
  *(v4 + v10) = sub_1C46F5D48(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  *(v4 + *(*v4 + 136)) = MEMORY[0x1E69E7CC0];
  v11 = qword_1EC0BB748;
  v12 = sub_1C4EFDAB8();
  (*(*(v12 - 8) + 32))(v5 + v11, a1, v12);
  *(v5 + *(*v5 + 104)) = a2;
  sub_1C441D670(a3, v5 + *(*v5 + 112));
  *(v5 + *(*v5 + 120)) = a4;
  return v5;
}

uint64_t sub_1C46EFC24()
{
  sub_1C43FBCD4();
  v1[18] = v2;
  v1[19] = v0;
  v1[20] = *v0;
  v3 = type metadata accessor for EntityRelevanceInteractionGroundTruth();
  v1[21] = v3;
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64) + 15;
  v1[22] = swift_task_alloc();
  v6 = sub_1C456902C(&qword_1EC0BB838, &qword_1C4F216D0);
  v1[23] = v6;
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64) + 15;
  v1[24] = swift_task_alloc();
  v9 = sub_1C456902C(&qword_1EC0BB840, &qword_1C4F216D8);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  v1[25] = sub_1C43FE604();
  v1[26] = swift_task_alloc();
  v12 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v1[27] = v12;
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64);
  v1[28] = sub_1C43FE604();
  v1[29] = swift_task_alloc();
  v15 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v1[30] = v15;
  sub_1C43FBD18(v15);
  v17 = *(v16 + 64);
  v1[31] = sub_1C43FE604();
  v1[32] = swift_task_alloc();
  v18 = sub_1C4EF9CD8();
  v1[33] = v18;
  v19 = *(v18 - 8);
  sub_1C4404280();
  v1[34] = v20;
  v22 = *(v21 + 64);
  v1[35] = sub_1C43FE604();
  v1[36] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v23, v24, v25);
}

uint64_t sub_1C46EFE18()
{
  v66 = v0;
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[18];
  v4 = v0[19];
  v63 = v0[30];
  v5 = *(v63 + 36);
  v6 = *(*v4 + 136);
  sub_1C4588DCC();
  v7 = *(*(v4 + v6) + 16);
  sub_1C45899BC();
  v8 = *(v4 + v6);
  *(v8 + 16) = v7 + 1;
  v9 = *(v2 + 16);
  v9(v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v7, v3 + v5, v1);
  *(v4 + v6) = v8;
  type metadata accessor for EntityRelevanceAggregatedEvaluation();
  inited = swift_initStackObject();
  v0[37] = inited;
  *(inited + 16) = 0u;
  *(inited + 32) = 0u;
  *(inited + 48) = 0u;
  *(inited + 64) = 0u;
  *(inited + 80) = 0u;
  *(inited + 96) = 0;
  sub_1C4EF9B78();
  if (v11 > 0.0)
  {
    v13 = v0[35];
    v12 = v0[36];
    v14 = v0[33];
    v15 = v0[18];
    v16 = v0[19];
    sub_1C4EF9BE8();
    sub_1C4EF9BE8();
    v17 = *(*v16 + 104);
    sub_1C46F4CA0(&qword_1EDDFCD70, MEMORY[0x1E6969530]);
    if (sub_1C4F01088())
    {
      v18 = v0[35];
      v19 = v0[33];
      v20 = v0[34];
      v21 = v9;
      v22 = v0[32];
      v23 = v0[28];
      v24 = v0[29];
      v25 = v0[27];
      v61 = v0[20];
      v62 = v0[19];
      v21(v24, v0[36], v19);
      v21(v24 + *(v25 + 48), v18, v19);
      sub_1C4460108(v24, v23, &qword_1EC0B84B0, qword_1C4F0CDE0);
      v60 = *(v25 + 48);
      v26 = *(v20 + 32);
      v26(v22, v23, v19);
      v27 = *(v20 + 8);
      v0[38] = v27;
      v0[39] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v27(v23 + v60, v19);
      sub_1C44CDA30(v24, v23, &qword_1EC0B84B0, qword_1C4F0CDE0);
      v26(v22 + *(v63 + 36), v23 + *(v25 + 48), v19);
      v28 = sub_1C43FBC98();
      (v27)(v28);
      v30 = *(v61 + 80);
      v29 = *(v61 + 88);
      v31 = *(v29 + 24);
      sub_1C4404280();
      v64 = (v32 + *v32);
      v34 = *(v33 + 4);
      v35 = swift_task_alloc();
      v0[40] = v35;
      v36 = sub_1C456902C(&qword_1EC0BB848, &unk_1C4F216F0);
      *v35 = v0;
      v35[1] = sub_1C46F04C0;
      v37 = v0[32];
      v38 = v0[19];

      return (v64)(v0 + 17, v37, &unk_1C4F216E8, v38, v36, v30, v29);
    }

    __break(1u);
    goto LABEL_14;
  }

  if (qword_1EDDFA668 != -1)
  {
LABEL_14:
    sub_1C4406758();
    swift_once();
  }

  v40 = v0[31];
  v41 = v0[18];
  v42 = sub_1C4F00978();
  sub_1C442B738(v42, qword_1EDE2DDE0);
  sub_1C4460108(v41, v40, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v43 = sub_1C4F00968();
  v44 = sub_1C4F01CE8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = v0[33];
    v46 = v0[31];
    v47 = sub_1C43FD084();
    sub_1C43FEC60();
    v48 = swift_slowAlloc();
    v65 = v48;
    *v47 = 136315138;
    v0[15] = 0;
    v0[16] = 0xE000000000000000;
    sub_1C4F02438();
    MEMORY[0x1C6940010](3026478, 0xE300000000000000);
    v49 = *(v63 + 36);
    sub_1C4F02438();
    v50 = v0[15];
    v51 = v0[16];
    sub_1C4420C3C(v46, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v52 = sub_1C441D828(v50, v51, &v65);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_1C43F8000, v43, v44, "EntityRelevanceEvaluationDigestTask - unexpected date range with lower and upper bound the same: %s", v47, 0xCu);
    sub_1C440962C(v48);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
    v53 = v0[31];

    sub_1C4420C3C(v53, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  }

  v54 = v0[20];
  v55 = v0[18];
  v56 = *(v54 + 80);
  v57 = *(v54 + 88);
  type metadata accessor for EntityRelevanceEvaluationDigestTask.EntityRelevanceEvaluationDigestTaskError();
  swift_getWitnessTable();
  swift_allocError();
  sub_1C4460108(v55, v58, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  swift_willThrow();

  sub_1C43FEEA8();

  sub_1C43FBDA0();

  return v59();
}

uint64_t sub_1C46F04C0()
{
  v2 = *v1;
  sub_1C43FBE64();
  *v4 = v3;
  v5 = *(v2 + 320);
  *v4 = *v1;
  *(v3 + 328) = v0;

  sub_1C4420C3C(*(v2 + 256), &qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C46F05FC()
{
  v87 = v1;
  v3 = v1[19];
  v86[0] = v1[17];
  v4 = v86;
  sub_1C4BCFBCC();
  v5 = sub_1C4C527AC(*(v3 + *(*v3 + 120)), v86[0]);
  v9 = (v8 >> 1) - v7;
  if (__OFSUB__(v8 >> 1, v7))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v2 = v5;
  v3 = v6;
  v0 = v7;
  v4 = v8;
  *(v1[37] + 96) = v9;
  if (v8)
  {
    sub_1C4F02998();
    swift_unknownObjectRetain_n();
    v11 = swift_dynamicCastClass();
    if (!v11)
    {
      swift_unknownObjectRelease();
      v11 = MEMORY[0x1E69E7CC0];
    }

    v12 = *(v11 + 16);

    if (v12 == v9)
    {
      v10 = swift_dynamicCastClass();
      if (!v10)
      {
        swift_unknownObjectRelease();
        v10 = MEMORY[0x1E69E7CC0];
      }

      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_3:
  sub_1C461871C(v2, v3, v0, v4);
LABEL_9:
  v0 = v1[41];
  v86[0] = v10;
  sub_1C46EF218(v86);
  if (v0)
  {
    sub_1C443FBAC();
  }

  v3 = 0;
  v15 = v1[23];
  v83 = v86[0];
  v84 = v1[21];
  v16 = *(v86[0] + 16);
  v17 = (v1[19] + *(*v1[19] + 112));
  for (i = 0.0; ; i = i + v49 / (v34 + 1))
  {
    do
    {
      if (v3 == v16)
      {
        v19 = 1;
        v2 = v16;
      }

      else
      {
        if (v3 >= *(v83 + 16))
        {
          goto LABEL_49;
        }

        v20 = v1[24];
        v21 = v1[25];
        v22 = *(sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00) - 8);
        sub_1C4404280();
        v24 = *(v23 + 80);
        sub_1C4404280();
        v28 = v26 + *(v25 + 72) * v27;
        v29 = *(v15 + 48);
        *v20 = v27;
        sub_1C4460108(v28, v20 + v29, &qword_1EC0B89E0, &qword_1C4F0DE00);
        sub_1C44CDA30(v20, v21, &qword_1EC0BB838, &qword_1C4F216D0);
        v19 = 0;
        v2 = v3 + 1;
      }

      v31 = v1[25];
      v30 = v1[26];
      v32 = v1[23];
      sub_1C440BAA8(v31, v19, 1, v32);
      sub_1C44CDA30(v31, v30, &qword_1EC0BB840, &qword_1C4F216D8);
      if (sub_1C44157D4(v30, 1, v32) == 1)
      {
        v66 = v1[38];
        v65 = v1[39];
        v68 = v1[36];
        v67 = v1[37];
        v69 = v1[35];
        v71 = v1[32];
        v70 = v1[33];
        v72 = v1[31];
        v78 = v1[29];
        v79 = v1[28];
        v80 = v1[26];
        v81 = v1[25];
        v82 = v1[24];
        v85 = v1[22];
        v73 = v1[19];

        *(v67 + 72) = i / *(v67 + 80);
        sub_1C43FC20C();
        v75 = *(v73 + *(v74 + 128));

        sub_1C46F50BC(v67);

        swift_unknownObjectRelease();

        v66(v69, v70);
        v66(v68, v70);

        sub_1C43FBDA0();
        sub_1C443FBAC();

        __asm { BRAA            X1, X16 }
      }

      v33 = v1[26];
      v3 = v1[22];
      v34 = *v33;
      v0 = (v33 + *(v15 + 48));
      v4 = &qword_1C4F0DE00;
      v35 = sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00);
      sub_1C46F4D94(v0 + *(v35 + 28), v3);
      v36 = *(sub_1C4409678(v17, v17[3]) + 1);
      v37 = *v0;
      sub_1C4420C3C(v0, &qword_1EC0B89E0, &qword_1C4F0DE00);
      if (v36 < v37)
      {
        v38 = v1[37];
        v39 = *(v38 + 24);
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_50;
        }

        *(v38 + 24) = v41;
      }

      v42 = v1[37];
      v43 = v1[22];
      v3 = *(v43 + *(v84 + 24));
      v44 = *(v42 + 88);
      v40 = __OFADD__(v44, v3);
      v45 = v44 + v3;
      if (v40)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      *(v42 + 88) = v45;
      result = sub_1C46F4DF8(v43, type metadata accessor for EntityRelevanceInteractionGroundTruth);
      v46 = v3 < 1;
      v3 = v2;
    }

    while (v46);
    v47 = v1[37];
    v48 = *(v47 + 80);
    v40 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v40)
    {
      break;
    }

    *(v47 + 80) = v49;
    if (v36 < v37)
    {
      v50 = v1[37];
      v51 = *(v50 + 16);
      v40 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v40)
      {
        goto LABEL_58;
      }

      *(v50 + 16) = v52;
    }

    if (v34 <= 0)
    {
      v53 = v1[37];
      v54 = *(v53 + 32);
      v40 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v40)
      {
        goto LABEL_59;
      }

      *(v53 + 32) = v55;
LABEL_35:
      v56 = v1[37];
      v57 = *(v56 + 40);
      v40 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (v40)
      {
        goto LABEL_57;
      }

      *(v56 + 40) = v58;
      goto LABEL_37;
    }

    if (v34 == 1)
    {
      goto LABEL_35;
    }

    if (v34 > 3)
    {
      if (v34 > 7)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

LABEL_37:
    v59 = v1[37];
    v60 = *(v59 + 48);
    v40 = __OFADD__(v60, 1);
    v61 = v60 + 1;
    if (v40)
    {
      goto LABEL_56;
    }

    *(v59 + 48) = v61;
LABEL_39:
    v62 = v1[37];
    v63 = *(v62 + 56);
    v40 = __OFADD__(v63, 1);
    v64 = v63 + 1;
    if (v40)
    {
      goto LABEL_55;
    }

    *(v62 + 56) = v64;
LABEL_41:
    if (v49 == 1)
    {
      *(v1[37] + 64) = 1.0 / (v34 + 1.0) + *(v1[37] + 64);
    }

    if (__OFADD__(v34, 1))
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1C46F0BBC()
{
  v2 = v0[38];
  v1 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[35];
  v6 = v0[33];

  v2(v5, v6);
  v2(v4, v6);
  v9 = v0[41];
  sub_1C43FEEA8();

  sub_1C43FBDA0();

  return v7();
}

uint64_t sub_1C46F0CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C46F0CD8, 0, 0);
}

uint64_t sub_1C46F0CD8()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1C456902C(&qword_1EC0BB850, &qword_1C4F21700);
  sub_1C456902C(&qword_1EC0BB858, &qword_1C4F21708);
  sub_1C4401CBC(&qword_1EC0BB860, &qword_1EC0BB850, &qword_1C4F21700);
  v0[5] = sub_1C4EFBD88();
  v3 = sub_1C4409678((v2 + *(*v2 + 112)), *(v2 + *(*v2 + 112) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_1C46F0E5C;
  v9 = sub_1C4402120();
  v10.n128_u64[0] = v5;

  return (sub_1C46F27FC)(v9, v10);
}

uint64_t sub_1C46F0E5C()
{
  sub_1C43FBCD4();
  v1 = *v0;
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 48);
  *v3 = *v0;
  *(v2 + 56) = v6;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C46F0F50()
{
  sub_1C43FBCD4();
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[2];

  *v3 = v1;
  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C46F0FB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C456902C(&qword_1EC0BB888, &qword_1C4F21730);
  v5 = *(v4 + 32);
  v6 = *(a1 + *(v4 + 28));
  v7 = sub_1C456902C(&qword_1EC0BB858, &qword_1C4F21708);
  sub_1C46F4D94(a1 + v5, a2 + *(v7 + 28));
  *a2 = v6;
  return swift_unknownObjectRetain();
}

char *sub_1C46F1040()
{
  v1 = *v0;
  v2 = qword_1EC0BB748;
  v3 = sub_1C4EFDAB8();
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(&v0[v2]);
  sub_1C43FC20C();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v5 + 104)]);
  sub_1C43FC20C();
  sub_1C440962C(&v0[*(v6 + 112)]);
  sub_1C43FC20C();
  v8 = *&v0[*(v7 + 128)];

  sub_1C43FC20C();
  v10 = *&v0[*(v9 + 136)];

  return v0;
}

uint64_t sub_1C46F116C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C46F1200;

  return sub_1C46EFC24();
}

uint64_t sub_1C46F1200()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1C43FBE64();
  *v3 = v2;

  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C46F12E8()
{
  v1 = (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager____lazy_storage___savedStateKey);
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager____lazy_storage___savedStateKey + 8))
  {
    v2 = *v1;
    v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager____lazy_storage___savedStateKey + 8);
  }

  else
  {
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD000000000000025, 0x80000001C4F93C70);
    v4 = sub_1C4409678((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_model), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_model + 24));
    v5 = v4[2];
    v6 = v4[3];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v5, v6);

    MEMORY[0x1C6940010](95, 0xE100000000000000);
    sub_1C4EFDAB8();
    sub_1C44321C4();
    sub_1C46F4CA0(v7, v8);
    v9 = sub_1C4F02858();
    MEMORY[0x1C6940010](v9);

    MEMORY[0x1C6940010](95, 0xE100000000000000);
    if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_queryName + 8))
    {
      v10 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_queryName);
      v11 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_queryName + 8);
    }

    else
    {
      v11 = 0xE300000000000000;
      v10 = 7104878;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v10, v11);

    MEMORY[0x1C6940010](0x745364657661535FLL, 0xEB00000000657461);
    v12 = v1[1];
    *v1 = 0;
    v1[1] = 0xE000000000000000;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t sub_1C46F14C4(uint64_t a1)
{
  v2 = v1;
  v76 = a1;
  v3 = sub_1C4EF9CD8();
  v4 = sub_1C43FFAE0(v3, &v83);
  v74 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = (&v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1C4EFDAB8();
  v11 = sub_1C43FFAE0(v10, &v84);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406758();
    swift_once();
  }

  v18 = sub_1C4F00978();
  sub_1C442B738(v18, qword_1EDE2DDE0);
  sub_1C4425070();
  v73 = v1;
  v19 = sub_1C4F00968();
  v20 = sub_1C4F01CB8();

  v21 = os_log_type_enabled(v19, v20);
  v79 = v9;
  if (v21)
  {
    v72 = v20;
    sub_1C43FEC60();
    v22 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v80[0] = v71;
    *v22 = 136315650;
    v23 = sub_1C4409678((v1 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_model), *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_model + 24));
    v25 = v23[2];
    v24 = v23[3];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v26 = sub_1C441D828(v25, v24, v80);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    sub_1C44321C4();
    sub_1C46F4CA0(v27, v28);
    v29 = v77;
    v30 = sub_1C4F02858();
    v32 = sub_1C441D828(v30, v31, v80);

    *(v22 + 14) = v32;
    *(v22 + 22) = 2080;
    v33 = &qword_1EC0BB000;
    if (*(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_queryName + 8))
    {
      v34 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_queryName);
      v35 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_queryName + 8);
    }

    else
    {
      v35 = 0xE300000000000000;
      v34 = 7104878;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v36 = sub_1C441D828(v34, v35, v80);

    *(v22 + 24) = v36;
    _os_log_impl(&dword_1C43F8000, v19, v72, "Running model %s for %s and %s", v22, 0x20u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
    v33 = &qword_1EC0BB000;

    v29 = v77;
  }

  v37 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_databaseTable + 16);
  v82[0] = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_databaseTable);
  v82[1] = v37;
  v38 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_databaseTable + 48);
  v82[2] = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_databaseTable + 32);
  v82[3] = v38;
  v39 = (v2 + v33[257]);
  v40 = *v39;
  v41 = v39[1];
  v42 = OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_entityType;
  v43 = *(v13 + 16);
  v43(v17, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_entityType, v29);
  v44 = type metadata accessor for HistoricalFeatureDatabaseTrainingSetProvider(0);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v47 = sub_1C470740C(v82, v40, v41, v17);
  v43(v17, v2 + v42, v29);
  sub_1C442E860(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_model, v81);
  v48 = sub_1C456902C(qword_1EC0BB890, &qword_1C4F21738);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  sub_1C46F4E90(v82, v80);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v51 = sub_1C46EFAB8(v17, v47, v81, 10);
  v52 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_kvStore);
  sub_1C46F12E8();
  v53 = v78;
  v54 = sub_1C4598E54();
  if (v53)
  {

    v55 = v79;
  }

  else
  {
    v60 = v54;

    v55 = v79;
    if (v60)
    {
      if (*(v60 + 16))
      {

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v64 = sub_1C4F00968();
        v65 = sub_1C4F01CB8();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          sub_1C43FEC60();
          v79 = swift_slowAlloc();
          v80[0] = v79;
          *v66 = 136315394;
          *(v66 + 4) = sub_1C441D828(*(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_name), *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_name + 8), v80);
          *(v66 + 12) = 2048;
          *(v66 + 14) = *(v60 + 16);

          _os_log_impl(&dword_1C43F8000, v64, v65, "%s: Found saved state with %ld points. Will resume.", v66, 0x16u);
          sub_1C440962C(v79);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
        }

        v67 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager____lazy_storage___savedStateKey);
        v68 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager____lazy_storage___savedStateKey + 8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v69._countAndFlagsBits = v67;
        v69._object = v68;
        KeyValueStore.delete(key:)(v69);
        if (v70)
        {

          return v51;
        }

LABEL_16:
        v61 = (v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_currentInvocation);
        v63 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_currentInvocation);
        v62 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_currentInvocation + 8);
        *v61 = v51;
        v61[1] = v60;

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C46F4E50(v63);
        return v51;
      }
    }
  }

  v56 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_duration);
  result = sub_1C4EF9BE8();
  v58 = v56 / 300.0;
  if (COERCE__INT64(fabs(v56 / 300.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v58 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v58 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((v58 & 0x8000000000000000) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v71 - 2) = v55;
    *(&v71 - 1) = v2;
    sub_1C45DA250();
    v60 = v59;

    (*(v74 + 8))(v55, v75);
    goto LABEL_16;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1C46F1C64()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_currentInvocation);
  if (!v1)
  {
    return 0;
  }

  v6 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_currentInvocation + 8);
  v2 = *(v1 + *(*v1 + 136));
  sub_1C46F366C(v1);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4598054();
  v4 = v3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C46F47D8(&v6, v4);
  if (*(v6 + 16) < result)
  {
    __break(1u);
  }

  else
  {
    sub_1C4C075A0();

    return v6;
  }

  return result;
}

void sub_1C46F1D44()
{
  v1 = sub_1C46F1C64();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_kvStore);
    sub_1C46F12E8();
    sub_1C495C28C();

    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDE2DDE0);
    sub_1C4425070();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CB8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      sub_1C43FEC60();
      v20 = swift_slowAlloc();
      *v10 = 136315394;
      *(v10 + 4) = sub_1C4405AB8(OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_name, v14, oslog, v18);
      *(v10 + 12) = 2048;
      v11 = *(v2 + 16);

      *(v10 + 14) = v11;

      _os_log_impl(&dword_1C43F8000, v8, v9, "%s: Saved data collection state with %ld remaining points.", v10, 0x16u);
      sub_1C440962C(v20);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    goto LABEL_15;
  }

  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406758();
    swift_once();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2DDE0);
  sub_1C4425070();
  osloga = sub_1C4F00968();
  v5 = sub_1C4F01CB8();

  if (os_log_type_enabled(osloga, v5))
  {
    v6 = sub_1C43FD084();
    sub_1C43FEC60();
    v19 = swift_slowAlloc();
    *v6 = 136315138;
    *(v6 + 4) = sub_1C4405AB8(OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_name, v14, osloga, v18);
    _os_log_impl(&dword_1C43F8000, oslogb, v5, "%s: Skipping persisting state for deferral since no sample task has been created.", v6, 0xCu);
    sub_1C440962C(v19);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

LABEL_15:
    sub_1C441E1E0();
    return;
  }

  sub_1C441E1E0();
}

void sub_1C46F2180()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_currentInvocation);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_currentInvocation + 8);
    v3 = *(v1 + *(*v1 + 128));
    swift_retain_n();
    sub_1C46F366C(v1);
    sub_1C46F52FC(v3, v9);
    sub_1C46F54F8();
    v4 = sub_1C4409678((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_model), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_model + 24));
    v5 = v4[2];
    v6 = v4[3];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01108();

    swift_isUniquelyReferenced_nonNull_native();
    sub_1C44684D4();
    sub_1C4EFDAA8();
    sub_1C4F01B58();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C44684D4();
    if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_queryName + 8))
    {
      v7 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_queryName);
      v8 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_queryName + 8);
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01108();

    swift_isUniquelyReferenced_nonNull_native();
    sub_1C44684D4();
    sub_1C4F00288();
    sub_1C4F00268();
  }
}

uint64_t sub_1C46F23E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_kvStore);
  v2._countAndFlagsBits = sub_1C46F12E8();
  KeyValueStore.delete(key:)(v2);
}

uint64_t sub_1C46F2440()
{
  sub_1C46F4DF8(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_config, type metadata accessor for Configuration);
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_model));
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_databaseTable + 8);
  v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_databaseTable + 24);
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_databaseTable + 32);
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_databaseTable + 40);
  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_databaseTable + 48);
  v6 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_databaseTable + 56);

  v7 = OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_entityType;
  v8 = sub_1C4EFDAB8();
  sub_1C43FBCE0(v8);
  (*(v9 + 8))(v0 + v7);
  v10 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_kvStore);

  v11 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_queryName + 8);

  v12 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_name + 8);

  v13 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager____lazy_storage___savedStateKey + 8);

  v14 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_currentInvocation + 8);
  sub_1C46F4E50(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_currentInvocation));
  return v0;
}

uint64_t sub_1C46F259C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntityRelevanceEvaluationTaskManager()
{
  result = qword_1EC0BB828;
  if (!qword_1EC0BB828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46F264C()
{
  result = type metadata accessor for Configuration();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1C4EFDAB8();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1C46F275C(uint64_t a1)
{
  v3 = *v1;
  result = sub_1C46F14C4(a1);
  if (v2)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1C46F27FC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = sub_1C4EFFF78();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = sub_1C4EFFF58();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = sub_1C456902C(&qword_1EC0BB868, &unk_1C4F22980);
  v2[14] = v12;
  v13 = *(v12 - 8);
  v2[15] = v13;
  v14 = *(v13 + 64) + 15;
  v2[16] = swift_task_alloc();
  v15 = *(*(sub_1C456902C(&qword_1EC0BB870, &qword_1C4F21720) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v16 = sub_1C456902C(&qword_1EC0BB858, &qword_1C4F21708);
  v2[18] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46F2A68, 0, 0);
}

uint64_t sub_1C46F2A68()
{
  v0[20] = MEMORY[0x1E69E7CC0];
  v1 = v0[17];
  v2 = v0[2];
  sub_1C456902C(&dword_1EC0BB878, &dword_1C4F21728);
  sub_1C442C87C();
  sub_1C4401CBC(v3, &dword_1EC0BB878, &dword_1C4F21728);
  sub_1C4EFBD68();
  sub_1C4410B38();
  if (v4)
  {
    sub_1C4420C3C(v2, &qword_1EC0BB870, &qword_1C4F21720);
    v5 = v0[20];
    sub_1C43FD5C0();

    v6 = sub_1C440F530();

    return v7(v6);
  }

  else
  {
    v9 = v0[19];
    v10 = v0[13];
    v11 = sub_1C4402120();
    sub_1C44CDA30(v11, v12, v13, v14);
    v15 = *v9;
    swift_unknownObjectRetain();
    sub_1C4EFFF48();
    v16 = *(MEMORY[0x1E69A9BD8] + 4);
    v17 = swift_task_alloc();
    v18 = sub_1C4408930(v17);
    *v18 = v19;
    v20 = sub_1C4406B08(v18);

    return MEMORY[0x1EEE13C40](v20);
  }
}

uint64_t sub_1C46F2D08()
{
  v2 = *v1;
  sub_1C43FBE64();
  *v4 = v3;
  v5 = v2[21];
  *v4 = *v1;
  *(v3 + 176) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C46F2E68()
{
  v51 = v0[18];
  v52 = v0[19];
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v53 = v0[6];
  v54 = v0[20];
  v8 = v0[4];
  sub_1C4EFEF58();
  sub_1C4EFFF68();
  v10 = v9;
  (*(v5 + 8))(v4, v6);
  v11 = sub_1C4EFEF68();
  (*(v2 + 8))(v1, v3);
  sub_1C46F4D94(v52 + *(v51 + 28), v7 + *(v8 + 28));
  *v7 = v10;
  *(v7 + *(v8 + 32)) = v11;
  sub_1C4460108(v7, v53, &qword_1EC0B89E0, &qword_1C4F0DE00);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v0[20];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v47 = *(v13 + 16);
    v48 = v0[20];
    sub_1C458D2F8();
    v13 = v49;
  }

  v14 = *(v13 + 16);
  if (v14 >= *(v13 + 24) >> 1)
  {
    sub_1C458D2F8();
    v13 = v50;
  }

  v15 = v0[19];
  v16 = v0[6];
  v17 = v0[5];
  sub_1C4420C3C(v0[7], &qword_1EC0B89E0, &qword_1C4F0DE00);
  sub_1C4420C3C(v15, &qword_1EC0BB858, &qword_1C4F21708);
  *(v13 + 16) = v14 + 1;
  sub_1C44CDA30(v16, v13 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v14, &qword_1EC0B89E0, &qword_1C4F0DE00);
  v18 = v0[22];
  v0[20] = v13;
  v19 = v0[17];
  v20 = v0[2];
  sub_1C456902C(&dword_1EC0BB878, &dword_1C4F21728);
  sub_1C442C87C();
  sub_1C4401CBC(v21, &dword_1EC0BB878, &dword_1C4F21728);
  sub_1C4EFBD68();
  if (v18)
  {
    v22 = v0[20];

    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v23 = sub_1C4F00978();
    sub_1C442DE98(v23, qword_1EDE2DDE0);
    v24 = sub_1C4F00968();
    v25 = sub_1C4F01CD8();

    if (os_log_type_enabled(v24, v25))
    {
      sub_1C43FD084();
      v26 = sub_1C4405A9C();
      dword_1EC0BB878 = 138412290;
      v27 = v18;
      *algn_1EC0BB87C = _swift_stdlib_bridgeErrorToNSError();
      *v26 = *algn_1EC0BB87C;
      sub_1C4403014(&dword_1C43F8000, v28, v29, "EntityRelevanceMLModel: Unable to read feature vectors from database: %@");
      sub_1C4420C3C(v26, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    goto LABEL_14;
  }

  sub_1C4410B38();
  if (v30)
  {
    sub_1C4420C3C(v20, &qword_1EC0BB870, &qword_1C4F21720);
    v31 = v0[20];
LABEL_14:
    sub_1C43FD5C0();

    v32 = sub_1C440F530();

    return v33(v32);
  }

  v35 = v0[19];
  v36 = v0[13];
  v37 = sub_1C4402120();
  sub_1C44CDA30(v37, v38, v39, v40);
  v41 = *v35;
  swift_unknownObjectRetain();
  sub_1C4EFFF48();
  v42 = *(MEMORY[0x1E69A9BD8] + 4);
  v43 = swift_task_alloc();
  v44 = sub_1C4408930(v43);
  *v44 = v45;
  v46 = sub_1C4406B08();

  return MEMORY[0x1EEE13C40](v46);
}

uint64_t sub_1C46F32A8()
{
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406758();
    swift_once();
  }

  v1 = v0[22];
  v2 = sub_1C4F00978();
  sub_1C442DE98(v2, qword_1EDE2DDE0);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CD8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[22];
  if (v5)
  {
    v7 = sub_1C43FD084();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1C43F8000, v3, v4, "EntityRelevanceMLModel: Unable to generate prediction for entity: %@", v7, 0xCu);
    sub_1C4420C3C(v8, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  sub_1C4420C3C(v0[19], &qword_1EC0BB858, &qword_1C4F21708);
  v11 = v0[17];
  v12 = v0[2];
  sub_1C456902C(&dword_1EC0BB878, &dword_1C4F21728);
  sub_1C442C87C();
  sub_1C4401CBC(v13, &dword_1EC0BB878, &dword_1C4F21728);
  sub_1C4EFBD68();
  sub_1C4410B38();
  if (v14)
  {
    sub_1C4420C3C(v12, &qword_1EC0BB870, &qword_1C4F21720);
    v15 = v0[20];
    sub_1C43FD5C0();

    v16 = sub_1C440F530();

    return v17(v16);
  }

  else
  {
    v19 = v0[19];
    v20 = v0[13];
    v21 = sub_1C4402120();
    sub_1C44CDA30(v21, v22, v23, v24);
    v25 = *v19;
    swift_unknownObjectRetain();
    sub_1C4EFFF48();
    v26 = *(MEMORY[0x1E69A9BD8] + 4);
    v27 = swift_task_alloc();
    v28 = sub_1C4408930(v27);
    *v28 = v29;
    v30 = sub_1C4406B08();

    return MEMORY[0x1EEE13C40](v30);
  }
}

uint64_t sub_1C46F366C(uint64_t result)
{
  if (result)
  {

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C46F36AC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4F02828();
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
        sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00);
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C46F3A3C(v8, v9, a1, v4);
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
    return sub_1C46F37F4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C46F37F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00);
  v8 = *(*(v37 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v37);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v29 - v13);
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = (&v29 - v17);
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
    while (2)
    {
      v34 = v21;
      v35 = a3;
      v32 = v24;
      v33 = v23;
      v25 = v23;
      do
      {
        sub_1C4460108(v24, v18, &qword_1EC0B89E0, &qword_1C4F0DE00);
        sub_1C4460108(v21, v14, &qword_1EC0B89E0, &qword_1C4F0DE00);
        v26 = *v18;
        v27 = *v14;
        sub_1C4420C3C(v14, &qword_1EC0B89E0, &qword_1C4F0DE00);
        result = sub_1C4420C3C(v18, &qword_1EC0B89E0, &qword_1C4F0DE00);
        if (v27 >= v26)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return result;
        }

        sub_1C44CDA30(v24, v11, &qword_1EC0B89E0, &qword_1C4F0DE00);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1C44CDA30(v11, v21, &qword_1EC0B89E0, &qword_1C4F0DE00);
        v21 += v22;
        v24 += v22;
      }

      while (!__CFADD__(v25++, 1));
      a3 = v35 + 1;
      v21 = v34 + v30;
      v23 = v33 - 1;
      v24 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C46F3A3C(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v112 = a1;
  v125 = sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00);
  v120 = *(v125 - 8);
  v6 = *(v120 + 64);
  v7 = MEMORY[0x1EEE9AC00](v125);
  v115 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v124 = &v109 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v126 = (&v109 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v109 - v13);
  v122 = a3;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v19 = *v112;
    if (!*v112)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v101 = v17 + 16;
      v102 = *(v17 + 2);
      while (v102 >= 2)
      {
        if (!*v122)
        {
          goto LABEL_139;
        }

        v103 = v17;
        v104 = &v17[16 * v102];
        v105 = *v104;
        v17 = &v101[2 * v102];
        v106 = *(v17 + 1);
        v107 = v123;
        sub_1C46F4358(*v122 + *(v120 + 72) * *v104, *v122 + *(v120 + 72) * *v17, *v122 + *(v120 + 72) * v106, v19);
        v123 = v107;
        if (v107)
        {
          break;
        }

        if (v106 < v105)
        {
          goto LABEL_127;
        }

        if (v102 - 2 >= *v101)
        {
          goto LABEL_128;
        }

        *v104 = v105;
        *(v104 + 1) = v106;
        v108 = *v101 - v102;
        if (*v101 < v102)
        {
          goto LABEL_129;
        }

        v102 = *v101 - 1;
        sub_1C461950C(v17 + 16, v108, v17);
        *v101 = v102;
        v17 = v103;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v17 = sub_1C46194F4(v17);
    goto LABEL_103;
  }

  v109 = a4;
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  v116 = (&v109 - v13);
  while (1)
  {
    v18 = v16;
    v19 = v16 + 1;
    if (v16 + 1 < v15)
    {
      v111 = v17;
      v20 = *v122;
      v21 = *(v120 + 72);
      v22 = v16 + 1;
      v19 = *v122 + v21 * v19;
      v119 = v15;
      sub_1C4460108(v19, v14, &qword_1EC0B89E0, &qword_1C4F0DE00);
      v23 = v126;
      sub_1C4460108(v20 + v21 * v18, v126, &qword_1EC0B89E0, &qword_1C4F0DE00);
      v24 = *v14;
      v25 = *v23;
      sub_1C4420C3C(v23, &qword_1EC0B89E0, &qword_1C4F0DE00);
      sub_1C4420C3C(v14, &qword_1EC0B89E0, &qword_1C4F0DE00);
      v26 = v119;
      v110 = v18;
      v27 = v18 + 2;
      v121 = v21;
      v28 = v20 + v21 * (v18 + 2);
      while (1)
      {
        v29 = v27;
        if (v22 + 1 >= v26)
        {
          break;
        }

        ++v22;
        sub_1C4460108(v28, v14, &qword_1EC0B89E0, &qword_1C4F0DE00);
        v30 = v126;
        sub_1C4460108(v19, v126, &qword_1EC0B89E0, &qword_1C4F0DE00);
        v31 = *v14;
        v32 = *v30;
        sub_1C4420C3C(v30, &qword_1EC0B89E0, &qword_1C4F0DE00);
        sub_1C4420C3C(v14, &qword_1EC0B89E0, &qword_1C4F0DE00);
        v26 = v119;
        v28 += v121;
        v19 += v121;
        v27 = v29 + 1;
        if (v25 < v24 == v32 >= v31)
        {
          goto LABEL_9;
        }
      }

      v22 = v26;
LABEL_9:
      v17 = v111;
      if (v25 >= v24)
      {
        v19 = v22;
LABEL_30:
        v18 = v110;
        goto LABEL_31;
      }

      v18 = v110;
      if (v22 < v110)
      {
        goto LABEL_133;
      }

      v19 = v22;
      if (v110 < v22)
      {
        if (v26 >= v29)
        {
          v33 = v29;
        }

        else
        {
          v33 = v26;
        }

        v34 = v121 * (v33 - 1);
        v35 = v22;
        v36 = v121 * v33;
        v37 = v110 * v121;
        v38 = v110;
        do
        {
          if (v38 != --v35)
          {
            v39 = *v122;
            if (!*v122)
            {
              goto LABEL_140;
            }

            sub_1C44CDA30(v39 + v37, v115, &qword_1EC0B89E0, &qword_1C4F0DE00);
            v40 = v37 < v34 || v39 + v37 >= (v39 + v36);
            if (v40)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v37 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C44CDA30(v115, v39 + v34, &qword_1EC0B89E0, &qword_1C4F0DE00);
          }

          ++v38;
          v34 -= v121;
          v36 -= v121;
          v37 += v121;
        }

        while (v38 < v35);
        v17 = v111;
        v19 = v22;
        goto LABEL_30;
      }
    }

LABEL_31:
    v41 = v122[1];
    if (v19 < v41)
    {
      if (__OFSUB__(v19, v18))
      {
        goto LABEL_132;
      }

      if (v19 - v18 < v109)
      {
        break;
      }
    }

LABEL_47:
    if (v19 < v18)
    {
      goto LABEL_131;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v98 = *(v17 + 2);
      sub_1C458A358();
      v17 = v99;
    }

    v55 = *(v17 + 2);
    v56 = v55 + 1;
    if (v55 >= *(v17 + 3) >> 1)
    {
      sub_1C458A358();
      v17 = v100;
    }

    *(v17 + 2) = v56;
    v57 = &v17[16 * v55 + 32];
    v58 = v121;
    *v57 = v18;
    *(v57 + 1) = v58;
    v119 = *v112;
    if (!v119)
    {
      goto LABEL_141;
    }

    if (v55)
    {
      v59 = v17 + 32;
      while (1)
      {
        v60 = v56 - 1;
        v61 = &v59[16 * v56 - 16];
        v62 = &v17[16 * v56];
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v63 = *(v17 + 4);
          v64 = *(v17 + 5);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_68:
          if (v66)
          {
            goto LABEL_118;
          }

          v78 = *v62;
          v77 = *(v62 + 1);
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_121;
          }

          v82 = *(v61 + 1);
          v83 = v82 - *v61;
          if (__OFSUB__(v82, *v61))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v80, v83))
          {
            goto LABEL_126;
          }

          if (v80 + v83 >= v65)
          {
            if (v65 < v83)
            {
              v60 = v56 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v56 < 2)
        {
          goto LABEL_120;
        }

        v85 = *v62;
        v84 = *(v62 + 1);
        v73 = __OFSUB__(v84, v85);
        v80 = v84 - v85;
        v81 = v73;
LABEL_83:
        if (v81)
        {
          goto LABEL_123;
        }

        v87 = *v61;
        v86 = *(v61 + 1);
        v73 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v73)
        {
          goto LABEL_125;
        }

        if (v88 < v80)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v60 - 1 >= v56)
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
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v122)
        {
          goto LABEL_138;
        }

        v92 = v17;
        v93 = &v59[16 * v60 - 16];
        v94 = *v93;
        v17 = v60;
        v19 = &v59[16 * v60];
        v95 = *(v19 + 8);
        v96 = v123;
        sub_1C46F4358(*v122 + *(v120 + 72) * *v93, *v122 + *(v120 + 72) * *v19, *v122 + *(v120 + 72) * v95, v119);
        v123 = v96;
        if (v96)
        {
          goto LABEL_111;
        }

        if (v95 < v94)
        {
          goto LABEL_113;
        }

        v97 = *(v92 + 2);
        if (v17 > v97)
        {
          goto LABEL_114;
        }

        *v93 = v94;
        *(v93 + 1) = v95;
        if (v17 >= v97)
        {
          goto LABEL_115;
        }

        v56 = v97 - 1;
        sub_1C461950C((v19 + 16), v97 - 1 - v17, v19);
        v17 = v92;
        *(v92 + 2) = v97 - 1;
        v14 = v116;
        if (v97 <= 2)
        {
          goto LABEL_97;
        }
      }

      v67 = &v59[16 * v56];
      v68 = *(v67 - 8);
      v69 = *(v67 - 7);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_116;
      }

      v72 = *(v67 - 6);
      v71 = *(v67 - 5);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_117;
      }

      v74 = *(v62 + 1);
      v75 = v74 - *v62;
      if (__OFSUB__(v74, *v62))
      {
        goto LABEL_119;
      }

      v73 = __OFADD__(v65, v75);
      v76 = v65 + v75;
      if (v73)
      {
        goto LABEL_122;
      }

      if (v76 >= v70)
      {
        v90 = *v61;
        v89 = *(v61 + 1);
        v73 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v73)
        {
          goto LABEL_130;
        }

        if (v65 < v91)
        {
          v60 = v56 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v16 = v121;
    v15 = v122[1];
    if (v121 >= v15)
    {
      goto LABEL_101;
    }
  }

  v42 = v18 + v109;
  if (__OFADD__(v18, v109))
  {
    goto LABEL_134;
  }

  if (v42 >= v41)
  {
    v42 = v122[1];
  }

  if (v42 < v18)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v19 == v42)
  {
    goto LABEL_47;
  }

  v110 = v18;
  v111 = v17;
  v43 = *v122;
  v44 = *(v120 + 72);
  v45 = *v122 + v44 * (v19 - 1);
  v46 = -v44;
  v47 = v18 - v19;
  v113 = v44;
  v114 = v42;
  v48 = v43 + v19 * v44;
LABEL_40:
  v121 = v19;
  v117 = v48;
  v118 = v47;
  v49 = v48;
  v119 = v45;
  while (1)
  {
    sub_1C4460108(v49, v14, &qword_1EC0B89E0, &qword_1C4F0DE00);
    v50 = v126;
    sub_1C4460108(v45, v126, &qword_1EC0B89E0, &qword_1C4F0DE00);
    v51 = *v14;
    v52 = *v50;
    sub_1C4420C3C(v50, &qword_1EC0B89E0, &qword_1C4F0DE00);
    sub_1C4420C3C(v14, &qword_1EC0B89E0, &qword_1C4F0DE00);
    if (v52 >= v51)
    {
LABEL_45:
      v19 = v121 + 1;
      v45 = v119 + v113;
      v47 = v118 - 1;
      v48 = v117 + v113;
      if (v121 + 1 == v114)
      {
        v19 = v114;
        v18 = v110;
        v17 = v111;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v43)
    {
      break;
    }

    v53 = v124;
    sub_1C44CDA30(v49, v124, &qword_1EC0B89E0, &qword_1C4F0DE00);
    swift_arrayInitWithTakeFrontToBack();
    sub_1C44CDA30(v53, v45, &qword_1EC0B89E0, &qword_1C4F0DE00);
    v45 += v46;
    v49 += v46;
    v40 = __CFADD__(v47++, 1);
    if (v40)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}