uint64_t ImportExport.Report.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ImportExport.Report.init(listNamed:items:children:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 1;
  return result;
}

uint64_t ImportExport.Report.add(value:)()
{
  sub_1A84E652C();
  v1 = *(v0 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A83EEBEC(0, *(v1 + 16) + 1, 1, v1);
    v1 = result;
  }

  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v4 >= v3 >> 1)
  {
    result = sub_1A83EEBEC((v3 > 1), v4 + 1, 1, v1);
    v1 = result;
  }

  *(v1 + 16) = v4 + 1;
  v5 = (v1 + 32 * v4);
  v5[4] = 0;
  v5[5] = 0xE000000000000000;
  v5[6] = 0;
  v5[7] = 0xE000000000000000;
  *(v0 + 16) = v1;
  return result;
}

uint64_t ImportExport.Report.add(key:value:)(uint64_t a1, uint64_t a2)
{
  sub_1A84E652C();
  v5 = *(v2 + 16);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A83EEBEC(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = sub_1A83EEBEC((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  v9 = (v5 + 32 * v8);
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = 0;
  v9[7] = 0xE000000000000000;
  *(v2 + 16) = v5;
  return result;
}

double ImportExport.Report.add(reportNamed:for:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[3];
  v7 = a3[4];
  v8 = sub_1A82471E0(a3, v6);

  return sub_1A8473744(a1, a2, v8, v3, v6, v7);
}

uint64_t ImportExport.Report.add(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = sub_1A82471E0(a1, v2);

  return sub_1A847362C(v4, v1, v2, v3);
}

Swift::Void __swiftcall ImportExport.Report.add(reportNamed:for:)(Swift::String reportNamed, Swift::OpaquePointer a2)
{
  countAndFlagsBits = reportNamed._countAndFlagsBits;
  rawValue = a2._rawValue;
  v38 = 0;
  v4 = a2._rawValue + 64;
  v5 = 1 << *(a2._rawValue + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2._rawValue + 8);
  v8 = (v5 + 63) >> 6;
  object = reportNamed._object;

  v30 = rawValue;

  v9 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
LABEL_5:
    if (v8 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11 - 1;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        v7 = 0;
        v34 = 0u;
        v35 = 0u;
        v9 = v12;
        v33 = 0u;
        goto LABEL_14;
      }

      v7 = *&v4[8 * v10];
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_27:
    v2 = sub_1A83EECF8(0, *(v2 + 2) + 1, 1, v2);
    goto LABEL_23;
  }

  while (1)
  {
    v10 = v9;
LABEL_13:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = v13 | (v10 << 6);
    v15 = (v30[6] + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_1A8244F40(v30[7] + 32 * v14, v32);
    *&v33 = v16;
    *(&v33 + 1) = v17;
    sub_1A8243DDC(v32, &v34);

LABEL_14:
    v36 = v33;
    v37[0] = v34;
    v37[1] = v35;
    rawValue = *(&v33 + 1);
    if (!*(&v33 + 1))
    {
      break;
    }

    v18 = v36;
    sub_1A8243DDC(v37, &v33);
    *&v32[0] = 0;
    *(&v32[0] + 1) = 0xE000000000000000;
    sub_1A84E652C();
    v2 = *(&v32[0] + 1);
    v19 = *&v32[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1A83EEBEC(0, *(v31 + 2) + 1, 1, v31);
    }

    v21 = *(v31 + 2);
    v20 = *(v31 + 3);
    if (v21 >= v20 >> 1)
    {
      v31 = sub_1A83EEBEC((v20 > 1), v21 + 1, 1, v31);
    }

    sub_1A8244788(&v33);
    *(v31 + 2) = v21 + 1;
    v22 = &v31[32 * v21];
    *(v22 + 4) = v18;
    *(v22 + 5) = rawValue;
    *(v22 + 6) = v19;
    *(v22 + 7) = v2;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  LOBYTE(rawValue) = v38;
  v9 = v27;
  v2 = *(v27 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_23:
  v23 = MEMORY[0x1E69E7CC0];
  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_1A83EECF8((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[40 * v25];
  *(v26 + 4) = countAndFlagsBits;
  *(v26 + 5) = object;
  *(v26 + 6) = v31;
  *(v26 + 7) = v23;
  v26[64] = rawValue;
  *(v9 + 24) = v2;
}

uint64_t sub_1A847249C()
{
  v1 = 1701667182;
  v2 = 0x6E6572646C696863;
  if (*v0 != 2)
  {
    v2 = 0x7473694C7369;
  }

  if (*v0)
  {
    v1 = 0x736D657469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A8472508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8473F98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A8472530(uint64_t a1)
{
  v2 = sub_1A8473910();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A847256C(uint64_t a1)
{
  v2 = sub_1A8473910();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.Report.encode(to:)(void *a1)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E8090, &qword_1A8507038);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v20 = v1[3];
  v21 = v11;
  v19[1] = *(v1 + 32);
  v13 = a1[3];
  v12 = a1[4];
  v14 = a1;
  v16 = v15;
  sub_1A82471E0(v14, v13);
  sub_1A8473910();
  sub_1A84E68AC();
  LOBYTE(v23) = 0;
  sub_1A84E66CC();
  if (!v2)
  {
    v17 = v20;
    v23 = v21;
    v22 = 1;
    sub_1A83EA2FC(&qword_1EB2E80A0, &qword_1A8507040);
    sub_1A8473A84(&qword_1EB2E80A8, sub_1A8473964);
    sub_1A84E672C();
    v23 = v17;
    v22 = 2;
    sub_1A83EA2FC(&qword_1EB2E80B8, &qword_1A8507048);
    sub_1A84739B8(&qword_1EB2E80C0, sub_1A8473A30);
    sub_1A84E672C();
    LOBYTE(v23) = 3;
    sub_1A84E66DC();
  }

  return (*(v5 + 8))(v8, v16);
}

uint64_t ImportExport.Report.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A83EA2FC(&qword_1EB2E80D0, &qword_1A8507050);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A8473910();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(a1);
  }

  LOBYTE(v23) = 0;
  v11 = sub_1A84E660C();
  v21 = v12;
  sub_1A83EA2FC(&qword_1EB2E80A0, &qword_1A8507040);
  v22 = 1;
  sub_1A8473A84(&qword_1EB2E80D8, sub_1A8473AFC);
  sub_1A84E666C();
  v20 = v23;
  sub_1A83EA2FC(&qword_1EB2E80B8, &qword_1A8507048);
  v22 = 2;
  sub_1A84739B8(&qword_1EB2E80E8, sub_1A8473B50);
  sub_1A84E666C();
  v19 = v23;
  LOBYTE(v23) = 3;
  v14 = sub_1A84E661C();
  (*(v6 + 8))(v9, v5);
  v15 = v14 & 1;
  v17 = v20;
  v16 = v21;
  *a2 = v11;
  *(a2 + 8) = v16;
  v18 = v19;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v15;

  sub_1A8244788(a1);
}

uint64_t ImportExport.ReportItem.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ImportExport.ReportItem.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1A8472C58()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 7955819;
  }

  *v0;
  return result;
}

uint64_t sub_1A8472C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_1A84E67AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A84E67AC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A8472D60(uint64_t a1)
{
  v2 = sub_1A8473BA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8472D9C(uint64_t a1)
{
  v2 = sub_1A8473BA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ReportItem.encode(to:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E80F8, &qword_1A8507058);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A8473BA4();
  sub_1A84E68AC();
  v16 = 0;
  v12 = v14[3];
  sub_1A84E66CC();
  if (!v12)
  {
    v15 = 1;
    sub_1A84E66CC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ImportExport.ReportItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A83EA2FC(&qword_1EB2E8108, &qword_1A8507060);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A8473BA4();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(a1);
  }

  v21 = 0;
  v11 = sub_1A84E660C();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1A84E660C();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  sub_1A8244788(a1);
}

uint64_t ImportExport.ReportItem.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v5 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v8 = *v0;
    v9 = v0[1];

    MEMORY[0x1AC56A990](8250, 0xE200000000000000);
    MEMORY[0x1AC56A990](v3, v4);
    return v8;
  }

  else
  {
    v6 = v0[3];
  }

  return v3;
}

uint64_t ImportExport.Report.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1A84E646C();

  MEMORY[0x1AC56A990](v1, v2);
  MEMORY[0x1AC56A990](0x3A736D657469203ALL, 0xE900000000000020);
  v5 = *(v3 + 16);
  if (v5)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v5, 0);
    v6 = (v3 + 56);
    do
    {
      v7 = *(v6 - 2);
      v9 = *(v6 - 1);
      v8 = *v6;
      v10 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v10 = *(v6 - 3) & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        v32 = *(v6 - 3);
        swift_bridgeObjectRetain_n();

        MEMORY[0x1AC56A990](8250, 0xE200000000000000);
        MEMORY[0x1AC56A990](v9, v8);

        v9 = v32;
        v8 = v7;
      }

      else
      {
        v11 = *v6;
      }

      v13 = *(v37 + 16);
      v12 = *(v37 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1A83EF534((v12 > 1), v13 + 1, 1);
      }

      *(v37 + 16) = v13 + 1;
      v14 = v37 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v8;
      v6 += 4;
      --v5;
    }

    while (v5);
  }

  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A8407D84();
  v15 = sub_1A84E5D6C();
  v17 = v16;

  MEMORY[0x1AC56A990](v15, v17);

  MEMORY[0x1AC56A990](0x72646C696863202CLL, 0xEC000000203A6E65);
  v18 = *(v4 + 16);
  if (v18)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v19 = sub_1A83EF534(0, v18, 0);
    v20 = v38;
    v21 = (v4 + 64);
    do
    {
      v33 = *(v21 - 4);
      v34 = *(v21 - 24);
      v35 = *(v21 - 1);
      v36 = *v21;
      v19 = ImportExport.Report.description.getter(v19);
      v39 = v20;
      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = v19;
        v27 = v22;
        sub_1A83EF534((v23 > 1), v24 + 1, 1);
        v22 = v27;
        v19 = v26;
        v20 = v39;
      }

      *(v20 + 16) = v24 + 1;
      v25 = v20 + 16 * v24;
      *(v25 + 32) = v19;
      *(v25 + 40) = v22;
      v21 += 40;
      --v18;
    }

    while (v18);
  }

  v28 = sub_1A84E5D6C();
  v30 = v29;

  MEMORY[0x1AC56A990](v28, v30);

  return 0x203A74726F706552;
}

uint64_t sub_1A847355C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  if (!v3)
  {
    v4 = 0;
    v9 = *(v2 + 16);
    if (!v9)
    {
      return v4;
    }

    goto LABEL_9;
  }

  v4 = 0;
  v5 = (v1 + 40);
  do
  {
    v6 = *(v5 - 1);
    v7 = *v5;

    v8 = sub_1A84E5E7C();

    if (v8 > v4)
    {
      v4 = v8;
    }

    v5 += 4;
    --v3;
  }

  while (v3);
  v9 = *(v2 + 16);
  if (v9)
  {
LABEL_9:
    v10 = (v2 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;

      v13 = sub_1A84E5E7C();

      if (v13 > v4)
      {
        v4 = v13;
      }

      v10 += 5;
      --v9;
    }

    while (v9);
  }

  return v4;
}

uint64_t sub_1A847362C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  v11 = (*(a4 + 8))(a3, a4);
  sub_1A8473744(v11, v12, v10, a2, a3, a4);

  return (*(v7 + 8))(v10, a3);
}

double sub_1A8473744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v15, v16);
  v27 = a1;
  *&v28 = a2;
  *(&v28 + 1) = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
  v30 = 0;
  v17 = *(a6 + 16);

  v17(&v27, a5, a6);
  (*(v11 + 8))(v14, a5);
  v18 = v27;
  v26 = v28;
  v19 = v29;
  v20 = v30;
  v21 = *(a4 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1A83EECF8(0, *(v21 + 2) + 1, 1, v21);
  }

  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1A83EECF8((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 2) = v23 + 1;
  v24 = &v21[40 * v23];
  *(v24 + 4) = v18;
  result = *&v26;
  *(v24 + 40) = v26;
  *(v24 + 7) = v19;
  v24[64] = v20;
  *(a4 + 24) = v21;
  return result;
}

unint64_t sub_1A8473910()
{
  result = qword_1EB2E8098;
  if (!qword_1EB2E8098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8098);
  }

  return result;
}

unint64_t sub_1A8473964()
{
  result = qword_1EB2E80B0;
  if (!qword_1EB2E80B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E80B0);
  }

  return result;
}

uint64_t sub_1A84739B8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E80B8, &qword_1A8507048);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A8473A30()
{
  result = qword_1EB2E80C8;
  if (!qword_1EB2E80C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E80C8);
  }

  return result;
}

uint64_t sub_1A8473A84(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E80A0, &qword_1A8507040);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A8473AFC()
{
  result = qword_1EB2E80E0;
  if (!qword_1EB2E80E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E80E0);
  }

  return result;
}

unint64_t sub_1A8473B50()
{
  result = qword_1EB2E80F0;
  if (!qword_1EB2E80F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E80F0);
  }

  return result;
}

unint64_t sub_1A8473BA4()
{
  result = qword_1EB2E8100;
  if (!qword_1EB2E8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8100);
  }

  return result;
}

__n128 sub_1A8473C20(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A8473C34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1A8473C7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A8473CD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1A8473D18(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1A8473D8C()
{
  result = qword_1EB2E8110;
  if (!qword_1EB2E8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8110);
  }

  return result;
}

unint64_t sub_1A8473DE4()
{
  result = qword_1EB2E8118;
  if (!qword_1EB2E8118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8118);
  }

  return result;
}

unint64_t sub_1A8473E3C()
{
  result = qword_1EB2E8120;
  if (!qword_1EB2E8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8120);
  }

  return result;
}

unint64_t sub_1A8473E94()
{
  result = qword_1EB2E8128;
  if (!qword_1EB2E8128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8128);
  }

  return result;
}

unint64_t sub_1A8473EEC()
{
  result = qword_1EB2E8130;
  if (!qword_1EB2E8130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8130);
  }

  return result;
}

unint64_t sub_1A8473F44()
{
  result = qword_1EB2E8138;
  if (!qword_1EB2E8138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8138);
  }

  return result;
}

uint64_t sub_1A8473F98(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7473694C7369 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A84740F4()
{
  v1 = *v0;
  if (v1 == 5)
  {
    return 0;
  }

  sub_1A8474400();
  v4 = v0[1];
  v3 = v0[2];
  v5 = sub_1A84E620C();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7104878;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  sub_1A84E646C();
  sub_1A840D3B0();
  v9 = sub_1A84E635C();
  v11 = v10;

  MEMORY[0x1AC56A990](v9, v11);

  MEMORY[0x1AC56A990](8250, 0xE200000000000000);
  MEMORY[0x1AC56A990](v7, v8);

  MEMORY[0x1AC56A990](10272, 0xE200000000000000);
  v12 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v12);

  MEMORY[0x1AC56A990](543584032, 0xE400000000000000);
  v13 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v13);

  result = MEMORY[0x1AC56A990](8236, 0xE200000000000000);
  if (v3 < v4)
  {
    __break(1u);
  }

  else
  {
    v14 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v14);

    MEMORY[0x1AC56A990](0x696E69616D657220, 0xEC000000202C676ELL);
    v16 = v0[4];
    v15 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v15);

    MEMORY[0x1AC56A990](0x6C6F7365726E7520, 0xEC00000029646576);
    return 0;
  }

  return result;
}

unint64_t sub_1A8474400()
{
  result = qword_1EB2E8050;
  if (!qword_1EB2E8050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2E8050);
  }

  return result;
}

uint64_t sub_1A847444C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && a1[40])
  {
    return (*a1 + 251);
  }

  v3 = *a1;
  if (v3 <= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 6;
  if (v3 < 5)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1A84744A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_1A84744FC(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8158, &qword_1A8507510);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A8474D90();
  sub_1A84E68AC();
  v16[15] = *v3;
  v16[14] = 0;
  sub_1A8474E38();
  sub_1A84E66BC();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = *(v3 + 8);
  v16[13] = 1;
  sub_1A84E671C();
  v12 = *(v3 + 16);
  v16[12] = 2;
  sub_1A84E671C();
  v13 = *(v3 + 24);
  v16[11] = 3;
  sub_1A84E671C();
  v15 = *(v3 + 32);
  v16[10] = 4;
  sub_1A84E671C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1A84746F4()
{
  v1 = *v0;
  v2 = 0x707954746E756F63;
  v3 = 0x6C61746F74;
  v4 = 0x736574656C6564;
  if (v1 != 3)
  {
    v4 = 0x766C6F7365726E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6465636E7973;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A8474790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8474990(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A84747B8(uint64_t a1)
{
  v2 = sub_1A8474D90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84747F4(uint64_t a1)
{
  v2 = sub_1A8474D90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1A8474830@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A8474B48(a1, v6);
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

BOOL sub_1A8474890(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1A84748E0(v5, v7);
}

BOOL sub_1A84748E0(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    if (v3 != 5)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == 5)
    {
      return 0;
    }

    v4 = a1;
    v5 = a2;
    v6 = sub_1A8436500(v2, v3);
    a2 = v5;
    v7 = v6;
    a1 = v4;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3])
  {
    return a1[4] == a2[4];
  }

  return 0;
}

uint64_t sub_1A8474990(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954746E756F63 && a2 == 0xE900000000000065;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465636E7973 && a2 == 0xE600000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61746F74 && a2 == 0xE500000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736574656C6564 && a2 == 0xE700000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x766C6F7365726E75 && a2 == 0xEA00000000006465)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A8474B48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A83EA2FC(&qword_1EB2E8140, &qword_1A8507508);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A8474D90();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(a1);
  }

  v23 = 0;
  sub_1A8474DE4();
  sub_1A84E65FC();
  v11 = v24;
  v22 = 1;
  v12 = sub_1A84E665C();
  v21 = 2;
  v18 = sub_1A84E665C();
  v20 = 3;
  v17 = sub_1A84E665C();
  v19 = 4;
  v13 = sub_1A84E665C();
  (*(v6 + 8))(v9, v5);
  result = sub_1A8244788(a1);
  *a2 = v11;
  v15 = v17;
  v16 = v18;
  *(a2 + 8) = v12;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15;
  *(a2 + 32) = v13;
  return result;
}

unint64_t sub_1A8474D90()
{
  result = qword_1EB2E8148;
  if (!qword_1EB2E8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8148);
  }

  return result;
}

unint64_t sub_1A8474DE4()
{
  result = qword_1EB2E8150;
  if (!qword_1EB2E8150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8150);
  }

  return result;
}

unint64_t sub_1A8474E38()
{
  result = qword_1EB2E8160;
  if (!qword_1EB2E8160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8160);
  }

  return result;
}

unint64_t sub_1A8474EA0()
{
  result = qword_1EB2E8168;
  if (!qword_1EB2E8168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8168);
  }

  return result;
}

unint64_t sub_1A8474EF8()
{
  result = qword_1EB2E8170;
  if (!qword_1EB2E8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8170);
  }

  return result;
}

unint64_t sub_1A8474F50()
{
  result = qword_1EB2E8178;
  if (!qword_1EB2E8178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8178);
  }

  return result;
}

uint64_t sub_1A8474FB0()
{
  v1 = *v0;
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A84750A8()
{
  *v0;
  *v0;
  *v0;
  sub_1A84E5E5C();
}

uint64_t sub_1A847518C()
{
  v1 = *v0;
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A8475280@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1A84754D0();
  *a2 = result;
  return result;
}

void sub_1A84752B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7374616863;
  v5 = 0xEB0000000073746ELL;
  v6 = 0x656D686361747461;
  v7 = 0xEE00736574616470;
  v8 = 0x556567617373656DLL;
  if (v2 != 3)
  {
    v8 = 0xD000000000000013;
    v7 = 0x80000001A852EE20;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x736567617373656DLL;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1A8475378()
{
  result = qword_1EB2E8180;
  if (!qword_1EB2E8180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8180);
  }

  return result;
}

unint64_t sub_1A847547C()
{
  result = qword_1EB2E8188;
  if (!qword_1EB2E8188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8188);
  }

  return result;
}

uint64_t sub_1A84754D0()
{
  v0 = sub_1A84E65AC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1A847551C()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = v0[6];
  v6 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v6 = v0[1] & 0xFFFFFFFFFFFFLL;
  }

  v31 = v0[7];
  if (v6)
  {
    v20 = v0[6];
    v16 = *v0;
    v18 = v0[3];
    v19 = sub_1A84E5D8C();
    v17 = sub_1A84E5D8C();

    v7 = sub_1A84E5D8C();
    v8 = sub_1A84E5D8C();
    v9 = sub_1A84E5D8C();

    v10 = sub_1A84E5D8C();
    v5 = IMDHandleRecordCreate();

    if (!v5)
    {
      sub_1A84E646C();

      LODWORD(v22) = *(v1 + 41);
      *(&v22 + 3) = *(v1 + 11);
      v24 = *(v1 + 4);
      v26 = *(v1 + 5);
      v28 = *(v1 + 6);
      v30 = *(v1 + 7);
      v13 = ImportExport.ParticipantAddress.description.getter();
      MEMORY[0x1AC56A990](v13);

      sub_1A84023CC();
      swift_allocError();
      *v14 = 0xD000000000000019;
      *(v14 + 8) = 0x80000001A8532220;
      *(v14 + 16) = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_1A84E646C();

    LODWORD(v21) = *(v0 + 41);
    *(&v21 + 3) = *(v0 + 11);
    v23 = *(v0 + 4);
    v25 = *(v0 + 5);
    v27 = *(v0 + 6);
    v29 = *(v0 + 7);
    v11 = ImportExport.ParticipantAddress.description.getter();
    MEMORY[0x1AC56A990](v11);

    MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A8532720);
    sub_1A84023CC();
    swift_allocError();
    *v12 = 0xD000000000000019;
    *(v12 + 8) = 0x80000001A8532220;
    *(v12 + 16) = 1;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1A8475A14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A84E5B9C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v84 - v11);
  v102 = [a1 rowID];
  v13 = [a1 guid];
  v101 = sub_1A84E5DBC();
  v15 = v14;

  v16 = [a1 chatIdentifier];
  v100 = sub_1A84E5DBC();
  v18 = v17;

  LODWORD(v98) = [a1 style];
  v19 = [a1 groupID];
  if (v19)
  {
    v20 = v19;
    v99 = sub_1A84E5DBC();
    v104 = v21;
  }

  else
  {
    v99 = 0;
    v104 = 0;
  }

  v22 = [a1 groupName];
  if (v22)
  {
    v23 = v18;
    v24 = v15;
    v25 = v22;
    v97 = sub_1A84E5DBC();
    v103 = v26;

    v15 = v24;
    v18 = v23;
  }

  else
  {
    v97 = 0;
    v103 = 0;
  }

  sub_1A84761F4(v117);
  if (v2)
  {
  }

  v114 = v117[6];
  v115 = v117[7];
  v116 = v117[8];
  v110 = v117[2];
  v111 = v117[3];
  v112 = v117[4];
  v113 = v117[5];
  v108 = v117[0];
  v109 = v117[1];
  sub_1A84764B4();
  v93 = v28;
  v94 = v15;
  v95 = v8;
  v96 = v12;
  v92 = sub_1A8476C64();
  v29 = [a1 serviceName];
  sub_1A84E5DBC();
  v31 = v30;

  LOBYTE(v106[0]) = 0;
  ImportExport.ServiceType.init(for:default:)(v31, v106, &v119);
  v32 = v119;
  v33 = [a1 isFiltered];
  if (v33 >= 5)
  {
    v34 = 0;
  }

  else
  {
    v34 = v33;
  }

  v91 = v34;
  v35 = [a1 lastAddressedHandle];
  if (v35)
  {
    v36 = v35;
    v37 = sub_1A84E5DBC();
    v89 = v38;
    v90 = v37;
  }

  else
  {
    v89 = 0;
    v90 = 0;
  }

  v39 = v96;
  v40 = sub_1A8476D94();
  v87 = v41;
  v88 = v40;
  v42 = sub_1A8477308();
  v85 = v43;
  v86 = v42;
  v44 = [a1 properties];
  v118 = v32;
  if (v44)
  {
    v45 = v44;
    v84 = sub_1A84E5D3C();

    sub_1A847A2F0();
    if (v46)
    {
      goto LABEL_18;
    }

LABEL_21:
    v52 = type metadata accessor for ImportExport.Attachment();
    (*(*(v52 - 8) + 56))(v39, 1, 1, v52);
    goto LABEL_24;
  }

  v84 = 0;
  sub_1A847A2F0();
  if (!v51)
  {
    goto LABEL_21;
  }

LABEL_18:
  v47 = sub_1A84E5D8C();
  v48 = IMDAttachmentRecordCopyAttachmentForGUID();

  if (v48)
  {
    v49 = [objc_allocWithZone(MEMORY[0x1E69A5D98]) initWithRecordRef_];

    v50 = v96;
    sub_1A8492848(v49, v96);
    v83 = type metadata accessor for ImportExport.Attachment();
    (*(*(v83 - 8) + 56))(v50, 0, 1, v83);
  }

  else
  {

    v53 = v96;
    v54 = type metadata accessor for ImportExport.Attachment();
    (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
  }

LABEL_24:
  v55 = v98 == 45;
  v98 = type metadata accessor for ImportExport.Conversation();
  v56 = *(v98 + 84);
  *&v106[0] = 0;
  sub_1A84E5B8C();
  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  sub_1A84E594C();
  v57 = v101;
  *a2 = v102;
  *(a2 + 8) = v57;
  v59 = v99;
  v58 = v100;
  *(a2 + 16) = v94;
  *(a2 + 24) = v58;
  *(a2 + 32) = v18;
  *(a2 + 40) = v55;
  v60 = v104;
  *(a2 + 48) = v59;
  *(a2 + 56) = v60;
  v61 = v103;
  *(a2 + 64) = v97;
  *(a2 + 72) = v61;
  v62 = v115;
  *(a2 + 192) = v114;
  *(a2 + 208) = v62;
  *(a2 + 224) = v116;
  v63 = v111;
  *(a2 + 128) = v110;
  *(a2 + 144) = v63;
  v64 = v113;
  *(a2 + 160) = v112;
  *(a2 + 176) = v64;
  v65 = v109;
  *(a2 + 96) = v108;
  *(a2 + 112) = v65;
  v107 = v93;
  sub_1A8400E7C(&v108, v106);

  sub_1A841D43C(&v107);

  *(a2 + 240) = v107;
  *(a2 + 248) = v92 & 1;
  v66 = v118;
  *(a2 + 272) = v118;
  *(a2 + 273) = v91;
  v67 = v89;
  *(a2 + 280) = v90;
  *(a2 + 288) = v67;
  v68 = v87;
  *(a2 + 296) = v88;
  *(a2 + 304) = v68;
  v69 = v85;
  *(a2 + 312) = v86;
  *(a2 + 320) = v69;
  v70 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  (*(*(v70 - 8) + 8))(a2 + v56, v70);
  *&v106[0] = v84;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v71 = v96;
  sub_1A8415BC8(v96, a2 + *(v98 + 80));
  if ((*(&v109 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (*(&v109 + 1) >= *(v109 + 16))
  {
LABEL_44:
    __break(1u);

    __break(1u);
    return result;
  }

  v72 = (v109 + (*(&v109 + 1) << 7));
  v73 = v72[4];
  v74 = v72[5];
  v75 = v72[3];
  v106[0] = v72[2];
  v106[1] = v75;
  v106[2] = v73;
  v106[3] = v74;
  v76 = v72[6];
  v77 = v72[7];
  v78 = v72[9];
  v106[6] = v72[8];
  v106[7] = v78;
  v106[4] = v76;
  v106[5] = v77;
  v80 = *(&v106[0] + 1);
  v79 = v75;
  sub_1A840243C(v106, &v105);
  sub_1A8400ED8(&v108);

  sub_1A841E128(v106);
  *(a2 + 80) = v80;
  *(a2 + 88) = v79;

  if (v66 > 3)
  {
    if (v66 > 5)
    {
      if (v66 == 6)
      {
        v81 = 0xE300000000000000;
        v82 = 5456722;
      }

      else
      {
        v81 = 0xEC000000534D5365;
        v82 = 0x74696C6C65746153;
      }
    }

    else if (v66 == 4)
    {
      v82 = 5459283;
      v81 = 0xE300000000000000;
    }

    else
    {
      v81 = 0xE800000000000000;
      v82 = 0x656D695465636146;
    }
  }

  else if (v66 > 1)
  {
    if (v66 == 2)
    {
      v81 = 0xE800000000000000;
    }

    else
    {
      v81 = 0xEC0000006574694CLL;
    }

    v82 = 0x6567617373654D69;
  }

  else if (v66)
  {
    v81 = 0xE300000000000000;
    v82 = 7958113;
  }

  else
  {
    v81 = 0xE700000000000000;
    v82 = 0x6E776F6E6B6E75;
  }

  result = sub_1A824B2D4(v71, &qword_1EB2E6F50, &unk_1A8502920);
  *(a2 + 256) = v82;
  *(a2 + 264) = v81;
  return result;
}

uint64_t sub_1A84761F4@<X0>(uint64_t a1@<X8>)
{
  v4 = [v1 accountLogin];
  if (!v4)
  {
    v13 = 0x80000001A8532840;
    sub_1A841D4A8();
    swift_allocError();
    v15 = 0xD00000000000004ALL;
LABEL_9:
    *v14 = v15;
    *(v14 + 8) = v13;
    *(v14 + 16) = 3;
    return swift_willThrow();
  }

  v5 = v4;
  v6 = sub_1A84E5DBC();
  v8 = v7;

  if (qword_1EB2E5948 != -1)
  {
    swift_once();
  }

  v9 = [v1 serviceName];
  sub_1A84E5DBC();
  v11 = v10;

  LOBYTE(v31) = 0;
  ImportExport.ServiceType.init(for:default:)(v11, &v31, &v40);
  sub_1A83FE5E8(v6, v8, &v40, &v41);
  if (v2)
  {
  }

  v30[6] = v47;
  v30[7] = v48;
  v30[2] = v43;
  v30[3] = v44;
  v30[4] = v45;
  v30[5] = v46;
  v30[0] = v41;
  v30[1] = v42;
  v36 = v46;
  v37 = v47;
  v38 = v48;
  v39 = v49;
  v32 = v42;
  v33 = v43;
  v34 = v44;
  v35 = v45;
  v30[8] = v49;
  v31 = v41;
  if (sub_1A84784FC(&v31) == 1)
  {
    v13 = 0x80000001A8532890;
    sub_1A841D4A8();
    swift_allocError();
    v15 = 0xD000000000000047;
    goto LABEL_9;
  }

  v27 = v37;
  v28 = v38;
  v29 = v39;
  v23 = v33;
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v21 = v31;
  v22 = v32;
  v20 = 16;
  v16 = [v1 guid];
  v17 = sub_1A84E5DBC();
  v19 = v18;

  ImportExport.Participant.update(conversationStatusTo:forConversationID:)(&v20, v17, v19, a1);

  return sub_1A824B2D4(v30, &qword_1EB2E8190, &unk_1A8507740);
}

void sub_1A84764B4()
{
  v56 = sub_1A84E5C9C();
  v2 = *(v56 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1A8478BF4();
  v62 = v0;
  v6 = [v0 handleRecords];
  sub_1A8244B68(0, &qword_1EB2E7180, 0x1E69A5DB0);
  v7 = sub_1A84E5FFC();

  if (v7 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A84E654C())
  {
    v57 = v5;
    v5 = 0;
    v61 = v7 & 0xC000000000000001;
    v58 = v7 & 0xFFFFFFFFFFFFFF8;
    v54 = "resses list for: ";
    v55 = "GHIJKLMNOPQRSTUVWXYZ0123456789";
    v53 = (v2 + 8);
    v10 = MEMORY[0x1E69E7CC0];
    *&v8 = 136315394;
    v51 = v8;
    v59 = i;
    v60 = v7;
    if ((v7 & 0xC000000000000001) != 0)
    {
LABEL_4:
      v11 = MEMORY[0x1AC56AF80](v5, v7);
      goto LABEL_7;
    }

    while (v5 < *(v58 + 16))
    {
      v11 = *(v7 + 8 * v5 + 32);
LABEL_7:
      v12 = v11;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        break;
      }

      v63 = v5;
      v64 = v5 + 1;
      if (v65)
      {
        v13 = v65;
        v14 = sub_1A8400C40(v12);
        if (v1)
        {

          return;
        }

        v15 = v14;
        if (v14)
        {

          goto LABEL_16;
        }

        v16 = v57;
        sub_1A84E5C8C();
        v17 = v13;
        v18 = v12;
        v19 = sub_1A84E5C7C();
        v20 = sub_1A84E619C();

        v52 = v20;
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          *&v87[0] = v50;
          *v21 = v51;
          v22 = [v17 guid];
          v47 = v19;
          v23 = v22;
          v24 = sub_1A84E5DBC();
          v49 = v17;
          v25 = v24;
          v27 = v26;

          v28 = sub_1A82446BC(v25, v27, v87);

          *(v21 + 4) = v28;
          *(v21 + 12) = 2112;
          *(v21 + 14) = v18;
          v29 = v48;
          *v48 = v18;
          v30 = v18;
          v31 = v47;
          _os_log_impl(&dword_1A823F000, v47, v52, "Failed to find handle for chat %s with handle record: %@", v21, 0x16u);
          sub_1A824B2D4(v29, &unk_1EB2E9070, &unk_1A8501A90);
          MEMORY[0x1AC56D3F0](v29, -1, -1);
          v32 = v50;
          sub_1A8244788(v50);
          MEMORY[0x1AC56D3F0](v32, -1, -1);
          MEMORY[0x1AC56D3F0](v21, -1, -1);

          (*v53)(v57, v56);
        }

        else
        {

          (*v53)(v16, v56);
        }
      }

      v15 = 0;
LABEL_16:
      v33 = v15;
      v34 = v12;
      sub_1A846C858(v34, v15, v96);
      if (v1)
      {

        return;
      }

      v92 = v96[4];
      v93 = v96[5];
      v94 = v96[6];
      v95 = v96[7];
      v88 = v96[0];
      v89 = v96[1];
      v90 = v96[2];
      v91 = v96[3];
      if (qword_1EB2E5948 != -1)
      {
        swift_once();
      }

      v85[4] = v92;
      v85[5] = v93;
      v85[6] = v94;
      v85[7] = v95;
      v85[0] = v88;
      v85[1] = v89;
      v85[2] = v90;
      v85[3] = v91;
      sub_1A83FEE6C(v85, v86);
      sub_1A841E128(&v88);
      v82 = v86[6];
      v83 = v86[7];
      v84 = v86[8];
      v78 = v86[2];
      v79 = v86[3];
      v80 = v86[4];
      v81 = v86[5];
      v76 = v86[0];
      v77 = v86[1];
      v97 = 16;
      v35 = [v62 guid];
      v36 = sub_1A84E5DBC();
      v38 = v37;

      ImportExport.Participant.update(conversationStatusTo:forConversationID:)(&v97, v36, v38, v87);
      v66[6] = v82;
      v66[7] = v83;
      v66[8] = v84;
      v66[2] = v78;
      v66[3] = v79;
      v66[4] = v80;
      v66[5] = v81;
      v66[0] = v76;
      v66[1] = v77;
      sub_1A8400ED8(v66);

      v73 = v87[6];
      v74 = v87[7];
      v75 = v87[8];
      v69 = v87[2];
      v70 = v87[3];
      v71 = v87[4];
      v72 = v87[5];
      v67 = v87[0];
      v68 = v87[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1A83EF36C(0, *(v10 + 2) + 1, 1, v10);
      }

      v2 = *(v10 + 2);
      v39 = *(v10 + 3);
      if (v2 >= v39 >> 1)
      {
        v10 = sub_1A83EF36C((v39 > 1), v2 + 1, 1, v10);
      }

      *(v10 + 2) = v2 + 1;
      v40 = &v10[144 * v2];
      *(v40 + 2) = v67;
      v41 = v68;
      v42 = v69;
      v43 = v71;
      *(v40 + 5) = v70;
      *(v40 + 6) = v43;
      *(v40 + 3) = v41;
      *(v40 + 4) = v42;
      v44 = v72;
      v45 = v73;
      v46 = v75;
      *(v40 + 9) = v74;
      *(v40 + 10) = v46;
      *(v40 + 7) = v44;
      *(v40 + 8) = v45;
      if (v64 == v59)
      {

        goto LABEL_33;
      }

      v5 = v63 + 1;
      v7 = v60;
      if (v61)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_31:
    ;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_33:
  *&v87[0] = v10;

  sub_1A841D43C(v87);
  if (v1)
  {

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1A8476C64()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 pinnedConversationIdentifiers];

  if (v2)
  {
    v3 = sub_1A84E5FFC();

    v4 = [v0 guid];
    v5 = sub_1A84E5DBC();
    v7 = v6;

    v12[0] = v5;
    v12[1] = v7;
    MEMORY[0x1EEE9AC00](v8);
    v11[2] = v12;
    v9 = sub_1A84ACB08(sub_1A8429618, v11, v3);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1A8476D94()
{
  v1 = v0;
  v2 = sub_1A84E5C9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v58 - v8;
  v10 = [v1 serviceName];
  v11 = sub_1A84E5DBC();
  v13 = v12;

  v14 = *MEMORY[0x1E69A7AD8];
  if (v11 == sub_1A84E5DBC() && v13 == v15)
  {
  }

  else
  {
    v17 = sub_1A84E67AC();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v18 = [v1 domainIdentifiers];
  if (!v18 || (v19 = v18, sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950), v20 = sub_1A84E5D3C(), v19, v21 = *(v20 + 16), , !v21))
  {
    sub_1A84E5C8C();
    v40 = v1;
    v41 = sub_1A84E5C7C();
    v42 = sub_1A84E619C();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v59 = v44;
      *v43 = 136315394;
      v45 = [v40 guid];
      v58 = v2;
      v46 = v45;
      v47 = sub_1A84E5DBC();
      v49 = v48;

      v50 = sub_1A82446BC(v47, v49, &v59);

      *(v43 + 4) = v50;
      *(v43 + 12) = 2080;
      v51 = [v40 serviceName];
      v52 = sub_1A84E5DBC();
      v54 = v53;

      v55 = sub_1A82446BC(v52, v54, &v59);

      *(v43 + 14) = v55;
      _os_log_impl(&dword_1A823F000, v41, v42, "Chat Record: %s has no domainIdentifiers, yet has service name: %s. ", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC56D3F0](v44, -1, -1);
      MEMORY[0x1AC56D3F0](v43, -1, -1);

      (*(v3 + 8))(v7, v58);
      return 0;
    }

    v56 = *(v3 + 8);
    v57 = v7;
LABEL_16:
    v56(v57, v2);
    return 0;
  }

  result = sub_1A8478DF0();
  if (v23)
  {
    return result;
  }

  sub_1A84E5C8C();
  v24 = v1;
  v25 = sub_1A84E5C7C();
  v26 = sub_1A84E619C();

  if (!os_log_type_enabled(v25, v26))
  {

    v56 = *(v3 + 8);
    v57 = v9;
    goto LABEL_16;
  }

  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v59 = v28;
  *v27 = 136315394;
  v29 = [v24 guid];
  v58 = v2;
  v30 = v29;
  v31 = sub_1A84E5DBC();
  v33 = v32;

  v34 = sub_1A82446BC(v31, v33, &v59);

  *(v27 + 4) = v34;
  *(v27 + 12) = 2080;
  v35 = [v24 serviceName];
  v36 = sub_1A84E5DBC();
  v38 = v37;

  v39 = sub_1A82446BC(v36, v38, &v59);

  *(v27 + 14) = v39;
  _os_log_impl(&dword_1A823F000, v25, v26, "Chat Record: %s has no rcsConversationID, yet has service name: %s. ", v27, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1AC56D3F0](v28, -1, -1);
  MEMORY[0x1AC56D3F0](v27, -1, -1);

  (*(v3 + 8))(v9, v58);
  return 0;
}

uint64_t sub_1A8477308()
{
  v1 = v0;
  v2 = sub_1A84E5C9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v57 - v8;
  v10 = [v1 serviceName];
  v11 = sub_1A84E5DBC();
  v13 = v12;

  v14 = *MEMORY[0x1E69A7AD8];
  if (v11 == sub_1A84E5DBC() && v13 == v15)
  {
  }

  else
  {
    v17 = sub_1A84E67AC();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v18 = [v1 domainIdentifiers];
  if (v18)
  {
    v19 = v18;
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    v20 = sub_1A84E5D3C();

    if (*(v20 + 16))
    {
      v21 = sub_1A84799E8();
      if (v22)
      {
        v23 = v21;

        return v23;
      }

      sub_1A84E5C8C();
      v43 = v1;

      v44 = sub_1A84E5C7C();
      v45 = sub_1A84E619C();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v60 = v58;
        *v46 = 136315394;
        v47 = [v43 guid];
        v48 = sub_1A84E5DBC();
        v59 = v2;
        v50 = v49;

        v51 = sub_1A82446BC(v48, v50, &v60);

        *(v46 + 4) = v51;
        *(v46 + 12) = 2080;
        v52 = sub_1A84E5D4C();
        v54 = v53;

        v55 = sub_1A82446BC(v52, v54, &v60);

        *(v46 + 14) = v55;
        _os_log_impl(&dword_1A823F000, v44, v45, "Failed to get RCS rcsGroupURI for chatRecord %s from domainIdentifiers: %s", v46, 0x16u);
        v56 = v58;
        swift_arrayDestroy();
        MEMORY[0x1AC56D3F0](v56, -1, -1);
        MEMORY[0x1AC56D3F0](v46, -1, -1);

        (*(v3 + 8))(v9, v59);
        return 0;
      }

      v41 = *(v3 + 8);
      v42 = v9;
      goto LABEL_16;
    }
  }

  sub_1A84E5C8C();
  v25 = v1;
  v26 = sub_1A84E5C7C();
  v27 = sub_1A84E619C();

  if (!os_log_type_enabled(v26, v27))
  {

    v41 = *(v3 + 8);
    v42 = v7;
LABEL_16:
    v41(v42, v2);
    return 0;
  }

  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v60 = v29;
  *v28 = 136315394;
  v30 = [v25 guid];
  v59 = v2;
  v31 = v30;
  v32 = sub_1A84E5DBC();
  v34 = v33;

  v35 = sub_1A82446BC(v32, v34, &v60);

  *(v28 + 4) = v35;
  *(v28 + 12) = 2080;
  v36 = [v25 serviceName];
  v37 = sub_1A84E5DBC();
  v39 = v38;

  v40 = sub_1A82446BC(v37, v39, &v60);

  *(v28 + 14) = v40;
  _os_log_impl(&dword_1A823F000, v26, v27, "Chat Record: %s has no domainIdentifiers, yet has service name: %s.", v28, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1AC56D3F0](v29, -1, -1);
  MEMORY[0x1AC56D3F0](v28, -1, -1);

  (*(v3 + 8))(v7, v59);
  return 0;
}

void sub_1A84778B8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 canonicalizedURIString];
    sub_1A84E5DBC();

    v3 = sub_1A84E5D8C();
    v4 = [v3 _stripFZIDPrefix];

    if (v4)
    {
      sub_1A84E5DBC();
    }

    else
    {

      sub_1A84E646C();
      MEMORY[0x1AC56A990](0xD000000000000034, 0x80000001A85327F0);
      v6 = [v1 description];
      v7 = sub_1A84E5DBC();
      v9 = v8;

      MEMORY[0x1AC56A990](v7, v9);

      sub_1A841D4A8();
      swift_allocError();
      *v10 = 0;
      *(v10 + 8) = 0xE000000000000000;
      *(v10 + 16) = 3;
      swift_willThrow();
    }
  }

  else
  {
    sub_1A841D4A8();
    swift_allocError();
    *v5 = 0xD00000000000003BLL;
    *(v5 + 8) = 0x80000001A85327B0;
    *(v5 + 16) = 3;
    swift_willThrow();
  }
}

void sub_1A8477A9C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    sub_1A841D4A8();
    swift_allocError();
    *v11 = 0xD000000000000039;
    *(v11 + 8) = 0x80000001A8532770;
    *(v11 + 16) = 3;
    swift_willThrow();
    return;
  }

  v8 = a1;
  sub_1A84778B8(a1);
  if (v4)
  {

    return;
  }

  v77 = a2;
  v79 = v3;
  v83 = v8;
  v84 = a3;
  v12 = *(v3 + 240);
  v13 = *(v12 + 16);
  v14 = &selRef__postMultiWayStateChangedNotification_;
  if (!v13)
  {
LABEL_39:
    v41 = v14;
    v42 = [v77 serviceName];
    sub_1A84E5DBC();
    v44 = v43;

    LOBYTE(v85) = 0;
    ImportExport.ServiceType.init(for:default:)(v44, &v85, &v87);
    v45 = v87;
    v46 = [v77 country];
    if (v46)
    {
      v47 = v46;
      v78 = sub_1A84E5DBC();
      v96 = v48;
    }

    else
    {
      v78 = 0;
      v96 = 0xE000000000000000;
    }

    v49 = v41;
    v51 = *(v79 + 8);
    v50 = *(v79 + 16);

    v52 = sub_1A84E5D8C();
    v53 = [v52 v41 + 3596];

    if (v53)
    {
      v80 = v51;
      v82 = v50;
      v54 = sub_1A84E5DBC();
      v56 = v55;

      v57 = sub_1A84E5D8C();
      v58 = [v57 v49 + 3596];

      if (v58)
      {

        v59 = sub_1A84E5DBC();
        v61 = v60;

        sub_1A83EA2FC(&qword_1EB2E6ED0, &unk_1A8501A80);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1A85013E0;
        *(v62 + 32) = 0;
        *(v62 + 40) = v54;
        *(v62 + 48) = v56;
        *(v62 + 56) = v59;
        *(v62 + 64) = v61;
        *(v62 + 72) = v45;
        v63 = v96;
        *(v62 + 80) = v78;
        *(v62 + 88) = v63;
        *(v62 + 96) = 0u;
        *(v62 + 112) = 0u;
        *(v62 + 128) = 0u;
        *(v62 + 144) = 0u;
        LOBYTE(v85) = 0;
        v76 = v59;
        if (v45 > 3)
        {
          if (v45 > 5)
          {
            if (v45 == 6)
            {
              v64 = 0xE300000000000000;
              v65 = 5456722;
            }

            else
            {
              v64 = 0xEC000000534D5365;
              v65 = 0x74696C6C65746153;
            }
          }

          else if (v45 == 4)
          {
            v65 = 5459283;
            v64 = 0xE300000000000000;
          }

          else
          {
            v64 = 0xE800000000000000;
            v65 = 0x656D695465636146;
          }
        }

        else if (v45 > 1)
        {
          if (v45 == 2)
          {
            v64 = 0xE800000000000000;
          }

          else
          {
            v64 = 0xEC0000006574694CLL;
          }

          v65 = 0x6567617373654D69;
        }

        else if (v45)
        {
          v64 = 0xE300000000000000;
          v65 = 7958113;
        }

        else
        {
          v64 = 0xE700000000000000;
          v65 = 0x6E776F6E6B6E75;
        }

        swift_bridgeObjectRetain_n();

        v66 = v96;

        v67 = v85;
        *v84 = v54;
        *(v84 + 8) = v56;
        *(v84 + 16) = v62;
        *(v84 + 24) = 0;
        *(v84 + 32) = 0;
        *(v84 + 40) = v54;
        *(v84 + 48) = v56;
        *(v84 + 56) = v76;
        *(v84 + 64) = v61;
        *(v84 + 72) = v45;
        *(v84 + 80) = v78;
        *(v84 + 88) = v66;
        *(v84 + 96) = v80;
        *(v84 + 104) = v82;
        *(v84 + 112) = 32;
        *(v84 + 120) = v67;
        *(v84 + 128) = v65;
        *(v84 + 136) = v64;
        return;
      }
    }

    else
    {
LABEL_62:
      __break(1u);
    }

    __break(1u);
    return;
  }

  v15 = 0;
  v16 = v12 + 32;
  v75 = v10;
  v81 = v9;
  v68 = *(v12 + 16);
  v96 = v12 + 32;
  while (1)
  {
    if (v15 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_62;
    }

    v17 = (v16 + 144 * v15);
    v87 = *v17;
    v18 = v17[1];
    v19 = v17[2];
    v20 = v17[4];
    v90 = v17[3];
    v91 = v20;
    v88 = v18;
    v89 = v19;
    v21 = v17[5];
    v22 = v17[6];
    v23 = v17[8];
    v94 = v17[7];
    v95 = v23;
    v92 = v21;
    v93 = v22;
    sub_1A8400E7C(&v87, &v85);
    v24 = sub_1A84E5D8C();
    v25 = [v24 v14[281]];

    if (v25)
    {
      break;
    }

    sub_1A8400ED8(&v87);
LABEL_8:
    if (++v15 == v13)
    {
      goto LABEL_39;
    }
  }

  v26 = sub_1A84E5DBC();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    sub_1A8400ED8(&v87);
    v16 = v96;
    goto LABEL_8;
  }

  v30 = v88;
  v31 = *(v88 + 16);
  if (!v31)
  {

    sub_1A8400ED8(&v87);
LABEL_37:
    v13 = v68;
    v16 = v96;
    goto LABEL_8;
  }

  v69 = BYTE8(v94);
  v73 = *(&v93 + 1);
  v74 = v93;
  v32 = (v88 + 64);
  v72 = v87;
  v70 = v94;
  v71 = *(&v87 + 1);
  while (1)
  {
    v33 = *(v32 - 3);
    v34 = *(v32 - 2);
    v35 = *(v32 - 1);
    v36 = *v32;
    v37 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v37 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (v37)
    {
      v38 = v33 == v26 && v34 == v28;
      if (v38 || (sub_1A84E67AC() & 1) != 0)
      {
        break;
      }
    }

    v39 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v39 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v39)
    {
      v40 = v35 == v26 && v36 == v28;
      if (v40 || (sub_1A84E67AC() & 1) != 0)
      {
        break;
      }
    }

    v32 += 16;
    if (!--v31)
    {

      sub_1A8400ED8(&v87);
      v14 = &selRef__postMultiWayStateChangedNotification_;
      goto LABEL_37;
    }
  }

  v85 = v70;
  v86 = v69;

  ImportExport.Participant.init(id:withParticipantAddresses:selectedAddress:conversationID:conversationStatus:)(v72, v71, v30, v81, v75, v74, v73, &v85, v84);

  sub_1A8400ED8(&v87);
}

uint64_t sub_1A84780C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(v3 + 8);
  if (*v3 == a1[12] && v7 == a1[13])
  {
    v11 = 16;
  }

  else
  {
    v9 = *v3;
    v10 = *(v3 + 8);
    if (sub_1A84E67AC())
    {
      v11 = 16;
    }

    else
    {
      v11 = 32;
    }
  }

  v24 = v6;
  v25 = v7;
  v12 = *(v3 + 96);
  v30 = *(v3 + 80);
  v31 = v12;
  v13 = *(v3 + 128);
  v32 = *(v3 + 112);
  v33 = v13;
  v14 = *(v3 + 32);
  v26 = *(v3 + 16);
  v27 = v14;
  v15 = *(v3 + 64);
  v28 = *(v3 + 48);
  v29 = v15;
  ImportExport.Conversation.participantIndex(for:)(&v24);
  v24 = v6;
  v25 = v7;
  v16 = *(v3 + 96);
  v30 = *(v3 + 80);
  v31 = v16;
  v17 = *(v3 + 128);
  v32 = *(v3 + 112);
  v33 = v17;
  v18 = *(v3 + 32);
  v26 = *(v3 + 16);
  v27 = v18;
  v19 = *(v3 + 64);
  v28 = *(v3 + 48);
  v29 = v19;
  v21 = 16;
  if (v20)
  {
    v21 = v11;
  }

  v23 = v21;
  return ImportExport.Participant.update(conversationStatusTo:forConversationID:)(&v23, a1[1], a1[2], a2);
}

void sub_1A84781D4(id a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  if (qword_1EB2E5948 != -1)
  {
    swift_once();
  }

  v6 = [a1 account];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1A84E5DBC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = [a1 serviceName];
  sub_1A84E5DBC();
  v13 = v12;

  LOBYTE(v30) = 0;
  ImportExport.ServiceType.init(for:default:)(v13, &v30, v29);
  v14 = v2[15];
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v2[14];
  if (v14 >= *(v15 + 16))
  {
LABEL_14:
    __break(1u);
    return;
  }

  v16 = v15 + (v14 << 7);
  v17 = *(v16 + 40);
  v18 = *(v16 + 48);

  sub_1A83FE48C(v8, v10, v29, v17, v18);
  if (v4)
  {
  }

  else
  {
    v21 = v20;
    v22 = v19;

    v23 = [a1 serviceName];
    sub_1A84E5DBC();
    v25 = v24;

    LOBYTE(v29[0]) = 0;
    ImportExport.ServiceType.init(for:default:)(v25, v29, &v39);
    sub_1A83FE5E8(v22, v21, &v39, &v30);

    v28[6] = v36;
    v28[7] = v37;
    v28[8] = v38;
    v28[2] = v32;
    v28[3] = v33;
    v28[4] = v34;
    v28[5] = v35;
    v28[0] = v30;
    v28[1] = v31;
    v29[6] = v36;
    v29[7] = v37;
    v29[8] = v38;
    v29[2] = v32;
    v29[3] = v33;
    v29[4] = v34;
    v29[5] = v35;
    v29[0] = v30;
    v29[1] = v31;
    if (sub_1A84784FC(v29) == 1)
    {
      sub_1A841D4A8();
      swift_allocError();
      *v26 = 0xD000000000000022;
      *(v26 + 8) = 0x80000001A8532740;
      *(v26 + 16) = 3;
      swift_willThrow();
    }

    else
    {
      sub_1A84780C8(v2, a2);
      sub_1A824B2D4(v28, &qword_1EB2E8190, &unk_1A8507740);
    }
  }
}

uint64_t sub_1A84784FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A8478514(uint64_t a1)
{
  v69 = sub_1A84E5C9C();
  v71 = *(v69 - 8);
  v3 = *(v71 + 64);
  v4 = MEMORY[0x1EEE9AC00](v69);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v63 - v9;
  v70 = a1;
  if (a1)
  {
    v67 = "GHIJKLMNOPQRSTUVWXYZ0123456789";
    v68 = v8;
    v66 = "resses list for: ";
    sub_1A84E5C8C();
    v11 = v1;
    v12 = sub_1A84E5C7C();
    v13 = sub_1A84E619C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v73 = v15;
      *v14 = 136315394;
      v16 = [v11 guid];
      v17 = sub_1A84E5DBC();
      v19 = v18;

      v20 = sub_1A82446BC(v17, v19, &v73);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2080;
      v21 = [v11 serviceName];
      v22 = sub_1A84E5DBC();
      v24 = v23;

      v25 = sub_1A82446BC(v22, v24, &v73);

      *(v14 + 14) = v25;
      _os_log_impl(&dword_1A823F000, v12, v13, "Domain identifiers for IMDChatRecord: %s: serviceType: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC56D3F0](v15, -1, -1);
      MEMORY[0x1AC56D3F0](v14, -1, -1);
    }

    v26 = *(v71 + 8);
    v71 += 8;
    v65 = v26;
    v26(v10, v69);
    v27 = v70 + 64;
    v28 = 1 << *(v70 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v70 + 64);
    v31 = (v28 + 63) >> 6;

    v33 = 0;
    *&v34 = 136315394;
    v63 = v34;
    v35 = v68;
    if (v30)
    {
      goto LABEL_9;
    }

LABEL_10:
    while (1)
    {
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v36 >= v31)
      {
      }

      v30 = *(v27 + 8 * v36);
      ++v33;
      if (v30)
      {
        while (1)
        {
          v37 = __clz(__rbit64(v30));
          v30 &= v30 - 1;
          v38 = v37 | (v36 << 6);
          v39 = (*(v70 + 48) + 16 * v38);
          v40 = *v39;
          v41 = v39[1];
          v42 = *(*(v70 + 56) + 8 * v38);

          sub_1A84E5C8C();

          v43 = sub_1A84E5C7C();
          v44 = sub_1A84E619C();

          LODWORD(v68) = v44;
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v73 = v64;
            *v45 = v63;
            v46 = sub_1A82446BC(v40, v41, &v73);

            *(v45 + 4) = v46;
            *(v45 + 12) = 2080;
            v72 = v42;
            sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
            sub_1A8407D84();
            v47 = v35;
            v48 = sub_1A84E5D6C();
            v50 = v49;

            v51 = sub_1A82446BC(v48, v50, &v73);

            *(v45 + 14) = v51;
            _os_log_impl(&dword_1A823F000, v43, v68, "%s: %s", v45, 0x16u);
            v52 = v64;
            swift_arrayDestroy();
            MEMORY[0x1AC56D3F0](v52, -1, -1);
            MEMORY[0x1AC56D3F0](v45, -1, -1);

            result = v65(v47, v69);
            v33 = v36;
            v35 = v47;
            if (!v30)
            {
              goto LABEL_10;
            }
          }

          else
          {

            result = v65(v35, v69);
            v33 = v36;
            if (!v30)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v36 = v33;
        }
      }
    }

    __break(1u);
  }

  else
  {
    sub_1A84E5C8C();
    v53 = v1;
    v54 = sub_1A84E5C7C();
    v55 = sub_1A84E619C();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v73 = v57;
      *v56 = 136315138;
      v58 = [v53 guid];
      v59 = sub_1A84E5DBC();
      v61 = v60;

      v62 = sub_1A82446BC(v59, v61, &v73);

      *(v56 + 4) = v62;
      _os_log_impl(&dword_1A823F000, v54, v55, "Domain identifiers are nil for IMDChatRecord: %s", v56, 0xCu);
      sub_1A8244788(v57);
      MEMORY[0x1AC56D3F0](v57, -1, -1);
      MEMORY[0x1AC56D3F0](v56, -1, -1);
    }

    return (*(v71 + 8))(v6, v69);
  }

  return result;
}

uint64_t sub_1A8478BF4()
{
  v1 = v0;
  v10 = 0;
  sub_1A8244B68(0, &qword_1ED767638, 0x1E69E9610);
  v2 = sub_1A84E624C();
  v3 = swift_allocObject();
  *(v3 + 16) = &v10;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1A847AAE0;
  *(v4 + 24) = v3;
  aBlock[4] = sub_1A824C100;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A83EB688;
  aBlock[3] = &unk_1F1B749E8;
  v5 = _Block_copy(aBlock);
  v6 = v1;

  dispatch_sync(v2, v5);

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void sub_1A8478D78(void **a1, void *a2)
{
  v4 = [objc_opt_self() sharedRegistry];
  v5 = sub_1A84009FC(a2);

  v6 = *a1;
  *a1 = v5;
}

uint64_t sub_1A8478DF0()
{
  v1 = v0;
  v2 = sub_1A84E5C9C();
  v3 = *(v2 - 8);
  v123 = v2;
  v124 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v118 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v118 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v118 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v118 - v17;
  v19 = sub_1A84E5DFC();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = [v1 serviceName];
  v22 = sub_1A84E5DBC();
  v24 = v23;

  v25 = *MEMORY[0x1E69A7AD8];
  if (v22 == sub_1A84E5DBC() && v24 == v26)
  {
  }

  else
  {
    v28 = sub_1A84E67AC();

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  v29 = [objc_opt_self() sharedFeatureFlags];
  v30 = [v29 isMissingMessagesEnabled];

  if (!v30)
  {
    v52 = objc_opt_self();
    v53 = [v1 originalGroupID];
    v54 = [v52 __imDataWithHexString_];

    if (!v54)
    {
      return 0;
    }

    v55 = sub_1A84E55FC();
    v57 = v56;

    sub_1A84E5DEC();
    v51 = sub_1A84E5DCC();
    v59 = v58;
    sub_1A83F5994(v55, v57);
    if (!v59)
    {
      return 0;
    }

    return v51;
  }

  v31 = [v1 domainIdentifiers];
  if (!v31)
  {
    sub_1A84E5C8C();
    v61 = v1;
    v62 = sub_1A84E5C7C();
    v63 = sub_1A84E619C();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v125 = v65;
      *v64 = 136315138;
      v66 = [v61 guid];
      v67 = sub_1A84E5DBC();
      v69 = v68;

      v70 = sub_1A82446BC(v67, v69, &v125);

      *(v64 + 4) = v70;
      _os_log_impl(&dword_1A823F000, v62, v63, "Failed to get domain identifiers for IMDChatRecord %s", v64, 0xCu);
      sub_1A8244788(v65);
      MEMORY[0x1AC56D3F0](v65, -1, -1);
      MEMORY[0x1AC56D3F0](v64, -1, -1);
    }

    (*(v124 + 8))(v7, v123);
    return 0;
  }

  v32 = v31;
  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  v33 = sub_1A84E5D3C();

  v34 = *MEMORY[0x1E69A6AE0];
  v35 = sub_1A84E5DBC();
  if (!*(v33 + 16))
  {

    goto LABEL_23;
  }

  v37 = sub_1A824B390(v35, v36);
  v39 = v38;

  if ((v39 & 1) == 0)
  {
LABEL_23:
    sub_1A84E5C8C();
    v71 = v1;
    v72 = sub_1A84E5C7C();
    v73 = sub_1A84E619C();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v125 = v75;
      *v74 = 136315138;
      v76 = [v71 guid];
      v77 = sub_1A84E5DBC();
      v79 = v78;

      v80 = sub_1A82446BC(v77, v79, &v125);

      *(v74 + 4) = v80;
      _os_log_impl(&dword_1A823F000, v72, v73, "Failed to get RCS domain identifiers for IMDChatRecord %s", v74, 0xCu);
      sub_1A8244788(v75);
      MEMORY[0x1AC56D3F0](v75, -1, -1);
      MEMORY[0x1AC56D3F0](v74, -1, -1);
    }

    (*(v124 + 8))(v10, v123);
    goto LABEL_26;
  }

  v40 = *(*(v33 + 56) + 8 * v37);
  if (!v40[2])
  {
    sub_1A84E5C8C();
    v82 = v1;
    v83 = sub_1A84E5C7C();
    v84 = sub_1A84E619C();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v125 = v86;
      *v85 = 136315138;
      v87 = [v82 guid];
      v88 = sub_1A84E5DBC();
      v90 = v89;

      v91 = sub_1A82446BC(v88, v90, &v125);

      *(v85 + 4) = v91;
      _os_log_impl(&dword_1A823F000, v83, v84, "Failed to get latestRCSConversationID for IMDChatRecord %s", v85, 0xCu);
      sub_1A8244788(v86);
      MEMORY[0x1AC56D3F0](v86, -1, -1);
      MEMORY[0x1AC56D3F0](v85, -1, -1);
    }

    (*(v124 + 8))(v13, v123);
LABEL_26:
    v81 = v33;
    goto LABEL_27;
  }

  v42 = v40[4];
  v41 = v40[5];
  v43 = objc_opt_self();

  v44 = sub_1A84E5D8C();
  v45 = [v43 __imDataWithHexString_];

  if (v45)
  {
    v46 = sub_1A84E55FC();
    v48 = v47;

    sub_1A84E5DEC();
    v49 = sub_1A84E5DCC();
    if (!v50)
    {
      sub_1A84E5C8C();

      v104 = v1;
      v105 = sub_1A84E5C7C();
      v106 = sub_1A84E619C();

      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v120 = v106;
        v108 = v107;
        v121 = swift_slowAlloc();
        v125 = v121;
        *v108 = 136315394;
        v109 = [v104 guid];
        v122 = v104;
        v110 = v109;
        v111 = sub_1A84E5DBC();
        v119 = v105;
        v113 = v112;

        v114 = sub_1A82446BC(v111, v113, &v125);

        *(v108 + 4) = v114;
        *(v108 + 12) = 2080;
        v115 = sub_1A82446BC(v42, v41, &v125);

        *(v108 + 14) = v115;
        v116 = v119;
        _os_log_impl(&dword_1A823F000, v119, v120, "Failed to get decode latestRCSConversationID for IMDChatRecord %s for encoded groupID: %s", v108, 0x16u);
        v117 = v121;
        swift_arrayDestroy();
        MEMORY[0x1AC56D3F0](v117, -1, -1);
        MEMORY[0x1AC56D3F0](v108, -1, -1);
      }

      else
      {
      }

      (*(v124 + 8))(v18, v123);
      sub_1A8478514(v33);

      sub_1A83F5994(v46, v48);
      return 0;
    }

    v51 = v49;
    sub_1A83F5994(v46, v48);

    return v51;
  }

  sub_1A84E5C8C();

  v92 = v1;
  v93 = sub_1A84E5C7C();
  v94 = sub_1A84E619C();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v125 = v121;
    *v95 = 136315394;
    v96 = [v92 guid];
    v122 = v92;
    v97 = v96;
    v98 = sub_1A84E5DBC();
    v100 = v99;

    v101 = sub_1A82446BC(v98, v100, &v125);

    *(v95 + 4) = v101;
    *(v95 + 12) = 2080;
    v102 = sub_1A82446BC(v42, v41, &v125);

    *(v95 + 14) = v102;
    _os_log_impl(&dword_1A823F000, v93, v94, "Failed to get encoded latestRCSConversationID for IMDChatRecord %s for encoded groupID: %s", v95, 0x16u);
    v103 = v121;
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v103, -1, -1);
    MEMORY[0x1AC56D3F0](v95, -1, -1);
  }

  else
  {
  }

  (*(v124 + 8))(v16, v123);
  v81 = v33;
LABEL_27:
  sub_1A8478514(v81);

  return 0;
}

uint64_t sub_1A84799E8()
{
  v1 = v0;
  v87 = sub_1A84E5C9C();
  v81 = *(v87 - 8);
  v2 = *(v81 + 64);
  v3 = MEMORY[0x1EEE9AC00](v87);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v80 = &v79 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v79 - v8;
  v10 = [v1 serviceName];
  v11 = sub_1A84E5DBC();
  v13 = v12;

  v14 = *MEMORY[0x1E69A7AD8];
  if (v11 == sub_1A84E5DBC() && v13 == v15)
  {
  }

  else
  {
    v17 = sub_1A84E67AC();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v18 = [v1 properties];
  if (!v18)
  {
    sub_1A84E5C8C();
    v69 = v1;
    v70 = sub_1A84E5C7C();
    v71 = sub_1A84E619C();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v99 = v73;
      *v72 = 136315138;
      v74 = [v69 guid];
      v75 = sub_1A84E5DBC();
      v77 = v76;

      v78 = sub_1A82446BC(v75, v77, &v99);

      *(v72 + 4) = v78;
      _os_log_impl(&dword_1A823F000, v70, v71, "Failed to get chat properties for IMDChatRecord %s", v72, 0xCu);
      sub_1A8244788(v73);
      MEMORY[0x1AC56D3F0](v73, -1, -1);
      MEMORY[0x1AC56D3F0](v72, -1, -1);
    }

    (*(v81 + 8))(v5, v87);
    return 0;
  }

  v19 = v18;
  v20 = sub_1A84E5D3C();

  *&v92[0] = 0x70756F7247534352;
  *(&v92[0] + 1) = 0xEB00000000495255;
  sub_1A84E641C();
  if (*(v20 + 16) && (v21 = sub_1A8250C0C(&v99), (v22 & 1) != 0))
  {
    sub_1A8244F40(*(v20 + 56) + 32 * v21, &v94);
    sub_1A8250D18(&v99);
    if (swift_dynamicCast())
    {

      return *&v92[0];
    }
  }

  else
  {
    sub_1A8250D18(&v99);
  }

  v85 = "resses list for: ";
  v86 = "GHIJKLMNOPQRSTUVWXYZ0123456789";
  sub_1A84E5C8C();
  v24 = v1;
  v25 = sub_1A84E5C7C();
  v26 = sub_1A84E619C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    LODWORD(v84) = v26;
    v28 = v27;
    v29 = swift_slowAlloc();
    *&v99 = v29;
    *v28 = 136315394;
    v30 = [v24 guid];
    v31 = sub_1A84E5DBC();
    v33 = v32;

    v34 = sub_1A82446BC(v31, v33, &v99);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2080;
    v35 = [v24 serviceName];
    v36 = sub_1A84E5DBC();
    v38 = v37;

    v39 = sub_1A82446BC(v36, v38, &v99);

    *(v28 + 14) = v39;
    _os_log_impl(&dword_1A823F000, v25, v84, "Failed to get chat rcsGroupURI from chatProperties for IMDChatRecord %s, serviceType: %s, properties:", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v29, -1, -1);
    MEMORY[0x1AC56D3F0](v28, -1, -1);
  }

  v40 = v81 + 8;
  v84 = *(v81 + 8);
  result = v84(v9, v87);
  v42 = v80;
  v43 = 0;
  v82 = v20;
  v44 = v20 + 64;
  v45 = 1 << *(v20 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v20 + 64);
  v48 = (v45 + 63) >> 6;
  *&v41 = 136315394;
  v79 = v41;
  v81 = v40;
  if (!v47)
  {
    goto LABEL_22;
  }

  do
  {
    while (1)
    {
      v61 = v43;
LABEL_29:
      v64 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      v65 = v64 | (v61 << 6);
      v66 = v82;
      sub_1A824B334(*(v82 + 48) + 40 * v65, v92);
      sub_1A8244F40(*(v66 + 56) + 32 * v65, v91);
      v94 = v92[0];
      v95 = v92[1];
      *&v96 = v93;
      sub_1A8243DDC(v91, (&v96 + 8));
      v63 = v61;
LABEL_30:
      v101[0] = v96;
      v101[1] = v97;
      v102 = v98;
      v99 = v94;
      v100 = v95;
      if (!*(&v95 + 1))
      {

        return 0;
      }

      v94 = v99;
      v95 = v100;
      *&v96 = *&v101[0];
      sub_1A8243DDC((v101 + 8), v91);
      sub_1A84E5C8C();
      sub_1A824B334(&v94, v92);
      sub_1A8244F40(v91, v90);
      v67 = sub_1A84E5C7C();
      v68 = sub_1A84E619C();
      if (!os_log_type_enabled(v67, v68))
      {
        break;
      }

      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v83 = v63;
      v51 = v50;
      v89 = v50;
      *v49 = v79;
      v52 = sub_1A84E63EC();
      v54 = v53;
      sub_1A8250D18(v92);
      v55 = sub_1A82446BC(v52, v54, &v89);

      *(v49 + 4) = v55;
      *(v49 + 12) = 2080;
      sub_1A8244F40(v90, &v88);
      v56 = sub_1A84E5E0C();
      v58 = v57;
      sub_1A8244788(v90);
      v59 = sub_1A82446BC(v56, v58, &v89);

      *(v49 + 14) = v59;
      _os_log_impl(&dword_1A823F000, v67, v68, "%s:%s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC56D3F0](v51, -1, -1);
      v60 = v49;
      v42 = v80;
      MEMORY[0x1AC56D3F0](v60, -1, -1);

      v84(v42, v87);
      sub_1A8244788(v91);
      result = sub_1A8250D18(&v94);
      v43 = v83;
      if (!v47)
      {
        goto LABEL_22;
      }
    }

    sub_1A8244788(v90);
    sub_1A8250D18(v92);
    v84(v42, v87);
    sub_1A8244788(v91);
    result = sub_1A8250D18(&v94);
    v43 = v63;
  }

  while (v47);
LABEL_22:
  if (v48 <= v43 + 1)
  {
    v62 = v43 + 1;
  }

  else
  {
    v62 = v48;
  }

  v63 = v62 - 1;
  while (1)
  {
    v61 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v61 >= v48)
    {
      v47 = 0;
      v98 = 0;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      goto LABEL_30;
    }

    v47 = *(v44 + 8 * v61);
    ++v43;
    if (v47)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

id sub_1A847A2F0()
{
  result = [v0 properties];
  if (result)
  {
    v2 = result;
    v3 = sub_1A84E5D3C();

    v4 = *MEMORY[0x1E69A6B80];
    v7 = sub_1A84E5DBC();
    sub_1A84E641C();
    if (*(v3 + 16) && (v5 = sub_1A8250C0C(v8), (v6 & 1) != 0))
    {
      sub_1A8244F40(*(v3 + 56) + 32 * v5, v9);
      sub_1A8250D18(v8);

      if (swift_dynamicCast())
      {
        return v7;
      }
    }

    else
    {

      sub_1A8250D18(v8);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1A847A408(void *a1, uint64_t a2)
{
  v30 = a2;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = [objc_opt_self() synchronousDatabase];
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = sub_1A84E5D8C();
  sub_1A8244B68(0, &qword_1EB2E7548, 0x1E696AE18);
  sub_1A83EA2FC(&qword_1EB2E7048, &qword_1A8502980);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A85013E0;
  v27 = a1;
  v10 = *a1;
  v11 = MEMORY[0x1E69E73D8];
  *(v9 + 56) = MEMORY[0x1E69E7360];
  *(v9 + 64) = v11;
  *(v9 + 32) = v10;
  v12 = sub_1A84E614C();
  sub_1A83EA2FC(&qword_1EB2E9060, &qword_1A850A730);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1A8507730;
  v14 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v15 = sub_1A84E5D8C();
  v16 = [v14 initWithKey:v15 ascending:1];

  *(v13 + 32) = v16;
  sub_1A8244B68(0, &qword_1EB2E7550, 0x1E696AEB0);
  v17 = sub_1A84E5FEC();

  aBlock[4] = sub_1A847A804;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A847A80C;
  aBlock[3] = &unk_1F1B74970;
  v18 = _Block_copy(aBlock);

  [v5 fetchMessageRecordsForChatRecordWithGUID:v8 filteredUsingPredicate:v12 sortedUsingDescriptors:v17 limit:v30 completionHandler:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v19 = *(v4 + 16);
  if (!v19)
  {

    return v19;
  }

  if (!(v19 >> 62))
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_14:

    return 0;
  }

  if (v19 < 0)
  {
    v26 = *(v4 + 16);
  }

  result = sub_1A84E654C();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_4:
  v21 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((v19 & 0xC000000000000001) != 0)
  {
LABEL_17:

    v23 = MEMORY[0x1AC56AF80](v21, v19);
    goto LABEL_9;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v21 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v19 + 8 * v21 + 32);

    v23 = v22;
LABEL_9:
    v24 = v23;
    v25 = [v23 rowID];

    *v28 = v25;
    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A847A77C(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v6 = a2;
    result = sub_1A84E654C();
    a2 = v6;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v4 = a2;
  swift_beginAccess();
  v5 = *(v4 + 16);
  *(v4 + 16) = a1;
}

uint64_t sub_1A847A80C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1A8244B68(0, &qword_1EB2E8198, 0x1E69A5DC8);
  v3 = sub_1A84E5FFC();

  v2(v3);
}

uint64_t sub_1A847A890(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 ID];
  v7 = sub_1A84E5DBC();
  v9 = v8;

  if (v7 == a1 && v9 == a2)
  {
    goto LABEL_22;
  }

  v11 = sub_1A84E67AC();

  if ((v11 & 1) == 0)
  {
    v13 = [v3 normalizedID];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1A84E5DBC();
      v17 = v16;

      if (v15 == a1 && v17 == a2)
      {
        goto LABEL_22;
      }

      v18 = sub_1A84E67AC();

      if (v18)
      {
        goto LABEL_6;
      }
    }

    v19 = [v3 _unformattedPhoneNumber];
    if (v19)
    {
      v20 = v19;
      v21 = sub_1A84E5DBC();
      v23 = v22;

      if (v21 == a1 && v23 == a2)
      {
        goto LABEL_22;
      }

      v24 = sub_1A84E67AC();

      if (v24)
      {
        goto LABEL_6;
      }
    }

    v25 = [v3 _formattedPhoneNumber];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1A84E5DBC();
      v29 = v28;

      if (v27 == a1 && v29 == a2)
      {
        goto LABEL_22;
      }

      v30 = sub_1A84E67AC();

      if (v30)
      {
        goto LABEL_6;
      }
    }

    v31 = [v3 originalID];
    if (!v31)
    {
      v12 = 0;
      return v12 & 1;
    }

    v32 = v31;
    v33 = sub_1A84E5DBC();
    v35 = v34;

    if (v33 != a1 || v35 != a2)
    {
      v12 = sub_1A84E67AC();
      goto LABEL_23;
    }

LABEL_22:
    v12 = 1;
LABEL_23:

    return v12 & 1;
  }

LABEL_6:
  v12 = 1;
  return v12 & 1;
}

uint64_t sub_1A847AAF0(char a1)
{
  if (a1 != 5)
  {
    sub_1A84E646C();
    sub_1A840D3B0();
    v2 = sub_1A84E635C();
    v4 = v3;

    MEMORY[0x1AC56A990](v2, v4);

    MEMORY[0x1AC56A990](0xD000000000000010, 0x80000001A85328E0);
    v5 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v5);

    MEMORY[0x1AC56A990](0x202C6C61746F7420, 0xE800000000000000);
    v6 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v6);

    MEMORY[0x1AC56A990](0x6576696C20, 0xE500000000000000);
  }

  return 0;
}

__n128 initializeBufferWithCopyOfBuffer for SyncStoreCounts(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SyncStoreCounts(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && a1[24])
  {
    return (*a1 + 251);
  }

  v3 = *a1;
  if (v3 <= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 6;
  if (v3 < 5)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncStoreCounts(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_1A847ADC0(void *a1, char a2, uint64_t a3)
{
  v13[1] = a3;
  v6 = sub_1A83EA2FC(&qword_1EB2E81B0, &qword_1A8507830);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A847B45C();
  sub_1A84E68AC();
  v17 = a2;
  v16 = 0;
  sub_1A8474E38();
  sub_1A84E66BC();
  if (v3)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v15 = 1;
  sub_1A84E671C();
  v14 = 2;
  sub_1A84E671C();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1A847AF84()
{
  v1 = 0x6C61746F74;
  if (*v0 != 1)
  {
    v1 = 1702259052;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x707954746E756F63;
  }
}

uint64_t sub_1A847AFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A847B158(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A847B000(uint64_t a1)
{
  v2 = sub_1A847B45C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A847B03C(uint64_t a1)
{
  v2 = sub_1A847B45C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A847B078@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A847B274(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

BOOL sub_1A847B0C8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v6 = *(a1 + 1);
  v5 = *(a1 + 2);
  v7 = *a2;
  v9 = *(a2 + 1);
  v8 = *(a2 + 2);
  if (v4 == 5)
  {
    if (v7 != 5 || v6 != v9)
    {
      return 0;
    }

    return v5 == v8;
  }

  if (v7 == 5)
  {
    return 0;
  }

  v12 = sub_1A8436500(v4, v7);
  result = 0;
  if ((v12 & 1) != 0 && v6 == v9)
  {
    return v5 == v8;
  }

  return result;
}

uint64_t sub_1A847B14C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return sub_1A847AAF0(*v0);
}

uint64_t sub_1A847B158(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954746E756F63 && a2 == 0xE900000000000065;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61746F74 && a2 == 0xE500000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702259052 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A847B274(uint64_t *a1)
{
  v2 = sub_1A83EA2FC(&qword_1EB2E81A0, &qword_1A8507828);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A847B45C();
  sub_1A84E689C();
  v10[14] = 0;
  sub_1A8474DE4();
  sub_1A84E65FC();
  v8 = v10[15];
  v10[13] = 1;
  sub_1A84E665C();
  v10[12] = 2;
  sub_1A84E665C();
  (*(v3 + 8))(v6, v2);
  sub_1A8244788(a1);
  return v8;
}

unint64_t sub_1A847B45C()
{
  result = qword_1EB2E81A8;
  if (!qword_1EB2E81A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E81A8);
  }

  return result;
}

unint64_t sub_1A847B4C4()
{
  result = qword_1EB2E81B8;
  if (!qword_1EB2E81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E81B8);
  }

  return result;
}

unint64_t sub_1A847B51C()
{
  result = qword_1EB2E81C0;
  if (!qword_1EB2E81C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E81C0);
  }

  return result;
}

unint64_t sub_1A847B574()
{
  result = qword_1EB2E81C8;
  if (!qword_1EB2E81C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E81C8);
  }

  return result;
}

uint64_t sub_1A847BA20()
{
  v0 = sub_1A84E526C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1A84E525C();
  qword_1EB2E45F0 = result;
  return result;
}

id sub_1A847BA60()
{
  v1 = v0;
  __dst[63] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  v3 = sub_1A84E5D2C();

  __dst[0] = 0;
  v4 = [v2 dataWithJSONObject:v3 options:0 error:__dst];

  v5 = __dst[0];
  if (v4)
  {
    v6 = sub_1A84E55FC();
    v8 = v7;

    if (qword_1EB2E45E8 != -1)
    {
      swift_once();
    }

    sub_1A847C130();
    sub_1A84E524C();
    sub_1A83F5994(v6, v8);
  }

  else
  {
    v9 = v5;
    v10 = sub_1A84E548C();

    swift_willThrow();
    if (qword_1EB2E46B8 != -1)
    {
      swift_once();
    }

    v11 = sub_1A84E5C9C();
    sub_1A824431C(v11, qword_1EB2FEFF8);
    v12 = sub_1A84E5C7C();
    v13 = sub_1A84E619C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1A823F000, v12, v13, "Failed to get data from dictionary. Resetting statistic counts", v14, 2u);
      MEMORY[0x1AC56D3F0](v14, -1, -1);
    }

    if (qword_1EB2E5938 != -1)
    {
      swift_once();
    }

    memcpy(__dst, &qword_1EB2FF028, 0x1F8uLL);
  }

  memcpy(&v1[OBJC_IVAR___IMCloudKitSyncStatistics_statistics], __dst, 0x1F8uLL);
  v17.receiver = v1;
  v17.super_class = IMCloudKitSyncStatistics;
  result = objc_msgSendSuper2(&v17, sel_init);
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t IMCloudKitSyncStatistics.description.getter()
{
  v1 = v0;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [v1 percentSynced];
  v3 = [ObjCClassFromMetadata percentStringFromDouble_];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1A84E5DBC();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1A84E646C();

  v11 = 0xD000000000000014;
  v12 = 0x80000001A8532900;
  MEMORY[0x1AC56A990](v5, v7);

  MEMORY[0x1AC56A990](10, 0xE100000000000000);
  memcpy(__dst, &v1[OBJC_IVAR___IMCloudKitSyncStatistics_statistics], sizeof(__dst));
  v8 = CountStatistics.description.getter();
  MEMORY[0x1AC56A990](v8);

  return v11;
}

void __swiftcall IMCloudKitSyncStatistics.init()(IMCloudKitSyncStatistics *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t sub_1A847C130()
{
  result = qword_1EB2E4628;
  if (!qword_1EB2E4628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E4628);
  }

  return result;
}

__n128 sub_1A847C184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1A847C1A0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && a1[96])
  {
    return (*a1 + 251);
  }

  v3 = *a1;
  if (v3 <= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 6;
  if (v3 < 5)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1A847C1F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

double sub_1A847C260()
{
  LOBYTE(xmmword_1EB2FF2C0) = 5;
  BYTE8(xmmword_1EB2FF2C0) = 5;
  result = 0.0;
  xmmword_1EB2FF2D0 = 0u;
  xmmword_1EB2FF2E0 = 0u;
  LOBYTE(xmmword_1EB2FF2F0) = 5;
  *(&xmmword_1EB2FF2F0 + 1) = 0;
  *&xmmword_1EB2FF300 = 0;
  BYTE8(xmmword_1EB2FF300) = 5;
  xmmword_1EB2FF310 = 0uLL;
  return result;
}

uint64_t sub_1A847C290(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8208, &qword_1A8507A28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A847CD98();
  sub_1A84E68AC();
  LOBYTE(v13) = *v3;
  v16 = 0;
  sub_1A8474E38();
  sub_1A84E66BC();
  if (!v2)
  {
    v11 = *(v3 + 24);
    v13 = *(v3 + 8);
    v14 = v11;
    v15 = *(v3 + 40);
    v16 = 1;
    sub_1A847CEE8();
    sub_1A84E672C();
    v13 = *(v3 + 48);
    *&v14 = *(v3 + 64);
    v16 = 2;
    sub_1A847CF3C();
    sub_1A84E672C();
    v13 = *(v3 + 72);
    *&v14 = *(v3 + 88);
    v16 = 3;
    sub_1A847CF90();
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1A847C4C0()
{
  v1 = 0x707954746E756F63;
  v2 = 0x726F7453636E7973;
  if (*v0 != 2)
  {
    v2 = 0x6F43726576726573;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A847C558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A847C980(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A847C580(uint64_t a1)
{
  v2 = sub_1A847CD98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A847C5BC(uint64_t a1)
{
  v2 = sub_1A847CD98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1A847C5F8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A847CB00(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_1A847C65C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_1A847C790(v9, v10) & 1;
}

uint64_t sub_1A847C6B8()
{
  v11 = *(v0 + 8);
  v12 = *(v0 + 24);
  v13 = *(v0 + 40);
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v10 = sub_1A84740F4();
  MEMORY[0x1AC56A990](10, 0xE100000000000000);
  v7 = sub_1A847AAF0(v5);
  MEMORY[0x1AC56A990](v7);

  MEMORY[0x1AC56A990](10, 0xE100000000000000);
  v8 = sub_1A84953E4(v6, v1, v2);
  MEMORY[0x1AC56A990](v8);

  return v10;
}

uint64_t sub_1A847C790(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1 == 5)
  {
    if (v2 != 5)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == 5)
    {
      return 0;
    }

    v3 = a1;
    v4 = a2;
    v5 = sub_1A8436500(*a1, *a2);
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = a2[8];
  v13 = *(a2 + 2);
  v12 = *(a2 + 3);
  v15 = *(a2 + 4);
  v14 = *(a2 + 5);
  if (*(a1 + 8) == 5)
  {
    v16 = a1;
    result = 0;
    if (v11 != 5 || v8 != v13 || v7 != v12 || v10 != v15 || v9 != v14)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v11 == 5)
  {
    return 0;
  }

  v18 = a1;
  v19 = a2;
  v20 = sub_1A8436500(*(a1 + 8), a2[8]);
  result = 0;
  if ((v20 & 1) != 0 && v8 == v13 && v7 == v12 && v10 == v15)
  {
    a2 = v19;
    v16 = v18;
    if (v9 == v14)
    {
LABEL_19:
      v21 = *(v16 + 48);
      v23 = *(v16 + 56);
      v22 = *(v16 + 64);
      v24 = a2[48];
      v26 = *(a2 + 7);
      v25 = *(a2 + 8);
      if (v21 == 5)
      {
        result = 0;
        if (v24 != 5 || v23 != v26 || v22 != v25)
        {
          return result;
        }

        goto LABEL_28;
      }

      if (v24 != 5)
      {
        v27 = v16;
        v28 = a2;
        v29 = sub_1A8436500(v21, a2[48]);
        result = 0;
        if ((v29 & 1) == 0)
        {
          return result;
        }

        if (v23 != v26)
        {
          return result;
        }

        a2 = v28;
        v16 = v27;
        if (v22 != v25)
        {
          return result;
        }

LABEL_28:
        v30 = *(v16 + 72);
        v32 = *(v16 + 80);
        v31 = *(v16 + 88);
        v33 = a2[72];
        v35 = *(a2 + 10);
        v34 = *(a2 + 11);
        if (v30 == 5)
        {
          if (v33 != 5)
          {
            return 0;
          }
        }

        else if (v33 == 5 || (sub_1A8436500(v30, a2[72]) & 1) == 0)
        {
          return 0;
        }

        if (v32 == v35 && v31 == v34)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1A847C980(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954746E756F63 && a2 == 0xE900000000000065;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8532E50 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7453636E7973 && a2 == 0xEF73746E756F4365 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43726576726573 && a2 == 0xEC00000073746E75)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A847CB00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A83EA2FC(&qword_1EB2E81E0, &qword_1A8507A20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A847CD98();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(a1);
  }

  v26 = 0;
  sub_1A8474DE4();
  sub_1A84E65FC();
  v11 = v22;
  v26 = 1;
  sub_1A847CDEC();
  sub_1A84E666C();
  v12 = v22;
  v20 = v24;
  v21 = v23;
  v26 = 2;
  sub_1A847CE40();
  sub_1A84E666C();
  v25 = v22;
  v18 = *(&v23 + 1);
  v19 = v23;
  v26 = 3;
  sub_1A847CE94();
  sub_1A84E666C();
  (*(v6 + 8))(v9, v5);
  v13 = v22;
  v14 = v23;
  result = sub_1A8244788(a1);
  *a2 = v11;
  *(a2 + 8) = v12;
  v16 = v20;
  *(a2 + 16) = v21;
  *(a2 + 32) = v16;
  *(a2 + 48) = v25;
  v17 = v18;
  *(a2 + 56) = v19;
  *(a2 + 64) = v17;
  *(a2 + 72) = v13;
  *(a2 + 80) = v14;
  return result;
}

unint64_t sub_1A847CD98()
{
  result = qword_1EB2E81E8;
  if (!qword_1EB2E81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E81E8);
  }

  return result;
}

unint64_t sub_1A847CDEC()
{
  result = qword_1EB2E81F0;
  if (!qword_1EB2E81F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E81F0);
  }

  return result;
}

unint64_t sub_1A847CE40()
{
  result = qword_1EB2E81F8;
  if (!qword_1EB2E81F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E81F8);
  }

  return result;
}

unint64_t sub_1A847CE94()
{
  result = qword_1EB2E8200;
  if (!qword_1EB2E8200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8200);
  }

  return result;
}

unint64_t sub_1A847CEE8()
{
  result = qword_1EB2E8210;
  if (!qword_1EB2E8210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8210);
  }

  return result;
}

unint64_t sub_1A847CF3C()
{
  result = qword_1EB2E8218;
  if (!qword_1EB2E8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8218);
  }

  return result;
}

unint64_t sub_1A847CF90()
{
  result = qword_1EB2E8220;
  if (!qword_1EB2E8220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8220);
  }

  return result;
}

unint64_t sub_1A847CFF8()
{
  result = qword_1EB2E8228;
  if (!qword_1EB2E8228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8228);
  }

  return result;
}

unint64_t sub_1A847D050()
{
  result = qword_1EB2E8230;
  if (!qword_1EB2E8230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8230);
  }

  return result;
}

unint64_t sub_1A847D0A8()
{
  result = qword_1EB2E8238;
  if (!qword_1EB2E8238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8238);
  }

  return result;
}

uint64_t MultiplexedDaemonConnection.label.getter()
{
  v1 = *(v0 + OBJC_IVAR___IMMultiplexedDaemonConnection_label);
  v2 = *(v0 + OBJC_IVAR___IMMultiplexedDaemonConnection_label + 8);

  return v1;
}

id sub_1A847D1DC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [objc_opt_self() sharedController];
  v5 = [v4 *a3];

  return v5;
}

id sub_1A847D258(SEL *a1)
{
  v2 = [objc_opt_self() sharedController];
  v3 = [v2 *a1];

  return v3;
}

Swift::Void __swiftcall MultiplexedDaemonConnection.waitForSetup()()
{
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1A84E5C9C();
  sub_1A824431C(v1, qword_1ED7679F8);
  v2 = v0;
  v3 = sub_1A84E5C7C();
  v4 = sub_1A84E617C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_1A82446BC(*&v2[OBJC_IVAR___IMMultiplexedDaemonConnection_label], *&v2[OBJC_IVAR___IMMultiplexedDaemonConnection_label + 8], &v14);
    *(v5 + 12) = 2080;
    v7 = *&v2[OBJC_IVAR___IMMultiplexedDaemonConnection_capabilities];
    v8 = IMStringFromClientCapabilities();
    v9 = sub_1A84E5DBC();
    v11 = v10;

    v12 = sub_1A82446BC(v9, v11, &v14);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_1A823F000, v3, v4, "Multiplexed connection %s is waiting for setup with capabilities %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v6, -1, -1);
    MEMORY[0x1AC56D3F0](v5, -1, -1);
  }

  v13 = [objc_opt_self() sharedController];
  [v13 blockUntilConnected];
}

Swift::Void __swiftcall MultiplexedDaemonConnection.invalidate()()
{
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1A84E5C9C();
  sub_1A824431C(v1, qword_1ED7679F8);
  v2 = v0;
  v3 = sub_1A84E5C7C();
  v4 = sub_1A84E617C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1A82446BC(*&v2[OBJC_IVAR___IMMultiplexedDaemonConnection_label], *&v2[OBJC_IVAR___IMMultiplexedDaemonConnection_label + 8], &v8);
    _os_log_impl(&dword_1A823F000, v3, v4, "Multiplexed connection %s was invalidated by caller", v5, 0xCu);
    sub_1A8244788(v6);
    MEMORY[0x1AC56D3F0](v6, -1, -1);
    MEMORY[0x1AC56D3F0](v5, -1, -1);
  }

  v7 = *&v2[OBJC_IVAR___IMMultiplexedDaemonConnection_onInvalidate + 8];
  (*&v2[OBJC_IVAR___IMMultiplexedDaemonConnection_onInvalidate])();
}

id MultiplexedDaemonConnection.__allocating_init(label:capabilities:context:onInvalidate:onDeinit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR___IMMultiplexedDaemonConnection_label];
  *v18 = a1;
  *(v18 + 1) = a2;
  *&v17[OBJC_IVAR___IMMultiplexedDaemonConnection_capabilities] = a3;
  *&v17[OBJC_IVAR___IMMultiplexedDaemonConnection_context] = a4;
  v19 = &v17[OBJC_IVAR___IMMultiplexedDaemonConnection_onInvalidate];
  *v19 = a5;
  *(v19 + 1) = a6;
  v20 = &v17[OBJC_IVAR___IMMultiplexedDaemonConnection_onDeinit];
  *v20 = a7;
  *(v20 + 1) = a8;
  v22.receiver = v17;
  v22.super_class = v8;
  return objc_msgSendSuper2(&v22, sel_init);
}

id MultiplexedDaemonConnection.init(label:capabilities:context:onInvalidate:onDeinit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v18 = &v8[OBJC_IVAR___IMMultiplexedDaemonConnection_label];
  *v18 = a1;
  *(v18 + 1) = a2;
  *&v8[OBJC_IVAR___IMMultiplexedDaemonConnection_capabilities] = a3;
  *&v8[OBJC_IVAR___IMMultiplexedDaemonConnection_context] = a4;
  v19 = &v8[OBJC_IVAR___IMMultiplexedDaemonConnection_onInvalidate];
  *v19 = a5;
  *(v19 + 1) = a6;
  v20 = &v8[OBJC_IVAR___IMMultiplexedDaemonConnection_onDeinit];
  *v20 = a7;
  *(v20 + 1) = a8;
  v22.receiver = v8;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, sel_init);
}

id MultiplexedDaemonConnection.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v4 = *&v0[OBJC_IVAR___IMMultiplexedDaemonConnection_onDeinit];
  v3 = *&v0[OBJC_IVAR___IMMultiplexedDaemonConnection_onDeinit + 8];

  v4(v5);

  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id MultiplexedDaemonConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ImportExport.ImportStatistics.timer.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

__n128 ImportExport.ImportStatistics.expectedCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  result = *(v1 + 40);
  v5 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 ImportExport.ImportStatistics.importedCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  result = *(v1 + 80);
  v5 = *(v1 + 96);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

void *ImportExport.ImportStatistics.remainingCounts.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  v4 = *(v1 + 56);
  v10[0] = *(v1 + 40);
  v10[1] = v4;
  v11 = v3;
  swift_beginAccess();
  v5 = *(v1 + 112);
  v6 = *(v1 + 96);
  v8[0] = *(v1 + 80);
  v8[1] = v6;
  v9 = v5;
  return static ImportExport.RecordCounts.- infix(_:_:)(v10, v8, a1);
}

BOOL ImportExport.ImportStatistics.isEmpty.getter()
{
  swift_beginAccess();
  result = 0;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*(v0 + 40)), vceqzq_s64(*(v0 + 56)))))) & 1) == 0 && !*(v0 + 72))
  {
    swift_beginAccess();
    result = 0;
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*(v0 + 80)), vceqzq_s64(*(v0 + 96)))))) & 1) == 0 && !*(v0 + 112))
    {
      swift_beginAccess();
      return *(v0 + 32) == 0;
    }
  }

  return result;
}

uint64_t ImportExport.ImportStatistics.__allocating_init()()
{
  v0 = swift_allocObject();
  ImportExport.ImportStatistics.init()();
  return v0;
}

uint64_t ImportExport.ImportStatistics.init()()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = sub_1A84E56DC();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  v9(v5, 1, 1, v8);
  v10 = type metadata accessor for ImportExport.Timer();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  v9((v13 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v8);
  v15 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v9((v13 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v8);
  swift_beginAccess();
  sub_1A843E9F0(v7, v13 + v14);
  swift_endAccess();
  swift_beginAccess();
  sub_1A843E9F0(v5, v13 + v15);
  swift_endAccess();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  *(v0 + 16) = 0x3FF199999999999ALL;
  *(v0 + 24) = v13;
  return v0;
}

Swift::Void __swiftcall ImportExport.ImportStatistics.reset()()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v14 - v3;
  swift_beginAccess();
  v5 = *(v0 + 24);
  v6 = sub_1A84E56DC();
  v7 = *(*(v6 - 8) + 56);
  v7(v4, 1, 1, v6);
  v8 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();

  sub_1A843E9F0(v4, v5 + v8);
  swift_endAccess();
  v7(v4, 1, 1, v6);
  v9 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  swift_beginAccess();
  sub_1A843E9F0(v4, v5 + v9);
  swift_endAccess();

  if (qword_1EB2E5980 != -1)
  {
    swift_once();
  }

  v10 = xmmword_1EB2E7F00;
  v14 = unk_1EB2E7F18;
  v15 = *(&xmmword_1EB2E7F00 + 8);
  swift_beginAccess();
  *(v0 + 80) = v10;
  v11 = v15;
  *(v0 + 104) = v14;
  *(v0 + 88) = v11;
  v12 = qword_1EB2E7F20;
  v14 = *&qword_1EB2E7F10;
  v15 = xmmword_1EB2E7F00;
  swift_beginAccess();
  v13 = v15;
  *(v0 + 56) = v14;
  *(v0 + 40) = v13;
  *(v0 + 72) = v12;
  swift_beginAccess();
  *(v0 + 32) = 0;
}

uint64_t sub_1A847E158()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x756F436863746162;
  v4 = 0x6465746365707865;
  if (v1 != 3)
  {
    v4 = 0x646574726F706D69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x72656D6974;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A847E20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A847FA58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A847E234(uint64_t a1)
{
  v2 = sub_1A847E5C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A847E270(uint64_t a1)
{
  v2 = sub_1A847E5C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ImportStatistics.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t ImportExport.ImportStatistics.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t ImportExport.ImportStatistics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8278, &qword_1A8507BD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A847E5C8();
  sub_1A84E68AC();
  v11 = *(v3 + 16);
  LOBYTE(v19) = 0;
  sub_1A84E66EC();
  if (!v2)
  {
    swift_beginAccess();
    *&v19 = *(v3 + 24);
    v22 = 1;
    type metadata accessor for ImportExport.Timer();
    sub_1A84805EC(&qword_1EB2E8288, 255, type metadata accessor for ImportExport.Timer);
    sub_1A84E672C();
    swift_beginAccess();
    v12 = *(v3 + 32);
    LOBYTE(v19) = 2;
    sub_1A84E671C();
    swift_beginAccess();
    v13 = *(v3 + 72);
    v14 = *(v3 + 56);
    v19 = *(v3 + 40);
    v20 = v14;
    v21 = v13;
    v18[8] = 3;
    sub_1A847E61C();
    sub_1A84E672C();
    swift_beginAccess();
    v15 = *(v3 + 112);
    v16 = *(v3 + 96);
    v19 = *(v3 + 80);
    v20 = v16;
    v21 = v15;
    v18[7] = 4;
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1A847E5C8()
{
  result = qword_1EB2E8280;
  if (!qword_1EB2E8280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8280);
  }

  return result;
}

unint64_t sub_1A847E61C()
{
  result = qword_1EB2E8290;
  if (!qword_1EB2E8290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8290);
  }

  return result;
}

uint64_t ImportExport.ImportStatistics.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ImportExport.ImportStatistics.init(from:)(a1);
  return v2;
}

uint64_t ImportExport.ImportStatistics.init(from:)(uint64_t *a1)
{
  v43 = a1;
  *&v42 = *v1;
  v41 = sub_1A83EA2FC(&qword_1EB2E8298, &qword_1A8507BE0);
  v40 = *(v41 - 8);
  v2 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v41);
  *&v45 = &v40 - v3;
  v4 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - v9;
  v11 = sub_1A84E56DC();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  v12(v8, 1, 1, v11);
  v13 = type metadata accessor for ImportExport.Timer();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  v12((v16 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v11);
  v18 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v12((v16 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v11);
  swift_beginAccess();
  v19 = v16 + v17;
  v20 = v43;
  sub_1A843E9F0(v10, v19);
  swift_endAccess();
  swift_beginAccess();
  v21 = v16 + v18;
  v22 = v52;
  sub_1A843E9F0(v8, v21);
  swift_endAccess();
  *(v22 + 24) = v16;
  v23 = (v22 + 24);
  *(v22 + 32) = 0u;
  v24 = (v22 + 32);
  *(v22 + 80) = 0u;
  *(v22 + 48) = 0u;
  *(v22 + 64) = 0u;
  *(v22 + 96) = 0u;
  *(v22 + 112) = 0;
  v25 = v20[4];
  sub_1A82471E0(v20, v20[3]);
  sub_1A847E5C8();
  v26 = v44;
  sub_1A84E689C();
  if (v26)
  {
    v29 = *(v22 + 24);

    swift_deallocPartialClassInstance();
    sub_1A8244788(v20);
  }

  else
  {
    v27 = v40;
    LOBYTE(v48) = 0;
    v28 = v41;
    sub_1A84E662C();
    *(v52 + 16) = v31;
    v51 = 1;
    sub_1A84805EC(&qword_1EB2E82A0, 255, type metadata accessor for ImportExport.Timer);
    sub_1A84E666C();
    v32 = v48;
    swift_beginAccess();
    v33 = *v23;
    *v23 = v32;

    LOBYTE(v48) = 2;
    v34 = sub_1A84E665C();
    swift_beginAccess();
    *v24 = v34;
    v47 = 3;
    sub_1A847EC5C();
    sub_1A84E666C();
    v35 = v50;
    v44 = v48;
    v42 = v49;
    v36 = v52;
    swift_beginAccess();
    *(v36 + 56) = v42;
    *(v36 + 40) = v44;
    *(v36 + 72) = v35;
    v46 = 4;
    v37 = v45;
    sub_1A84E666C();
    (*(v27 + 8))(v37, v28);
    v38 = v50;
    v44 = v49;
    v45 = v48;
    swift_beginAccess();
    v39 = v44;
    *(v36 + 80) = v45;
    *(v36 + 96) = v39;
    *(v36 + 112) = v38;
    sub_1A8244788(v20);
    return v36;
  }

  return v22;
}

unint64_t sub_1A847EC5C()
{
  result = qword_1EB2E82A8;
  if (!qword_1EB2E82A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E82A8);
  }

  return result;
}

uint64_t sub_1A847ED04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = ImportExport.ImportStatistics.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t ImportExport.ImportStatistics.description.getter()
{
  sub_1A84E646C();
  v1 = *v0;
  v2 = sub_1A84E69AC();
  MEMORY[0x1AC56A990](v2);

  MEMORY[0x1AC56A990](0x6F6973726576203ALL, 0xEB00000000203A6ELL);
  v3 = v0[2];
  sub_1A84E60EC();
  MEMORY[0x1AC56A990](2604, 0xE200000000000000);
  v4 = _s6IMCore12ImportExportO0B10StatisticsC19progressDescriptionSSvg_0();
  MEMORY[0x1AC56A990](v4);

  return 0;
}

uint64_t ImportExport.ImportStatistics.format(report:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  *(&v33 + 1) = MEMORY[0x1E69E63B0];
  *&v32 = v4;
  ImportExport.Report.add(key:value:)(0x6E6F6973726556, 0xE700000000000000);
  sub_1A8244788(&v32);
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(&v33 + 1) = MEMORY[0x1E69E6810];
  *&v32 = v5;
  ImportExport.Report.add(key:value:)(0x6F43206863746142, 0xEB00000000746E75);
  sub_1A8244788(&v32);
  swift_beginAccess();
  v6 = *(v2 + 96);
  v32 = *(v2 + 80);
  v33 = v6;
  v34 = *(v2 + 112);
  sub_1A84A8550(0x6465746365707845, 0xEF73746E756F4320, &v32, a1);
  v7 = *(v2 + 96);
  v30[0] = *(v2 + 80);
  v30[1] = v7;
  v31 = *(v2 + 112);
  sub_1A84A8550(0x646574726F706D49, 0xEF73746E756F4320, v30, a1);
  result = swift_beginAccess();
  v9 = *(v2 + 40);
  v10 = *(v2 + 80);
  v11 = __OFSUB__(v9, v10);
  v12 = v9 - v10;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = *(v2 + 88);
  v14 = *(v2 + 48);
  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v16 = *(v2 + 56);
  v17 = *(v2 + 96);
  v11 = __OFSUB__(v16, v17);
  v18 = v16 - v17;
  if (v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = *(v2 + 64);
  v20 = *(v2 + 104);
  v11 = __OFSUB__(v19, v20);
  v21 = v19 - v20;
  if (v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v22 = *(v2 + 72);
  v23 = *(v2 + 112);
  v11 = __OFSUB__(v22, v23);
  v24 = v22 - v23;
  if (!v11)
  {
    *&v26 = v12;
    *(&v26 + 1) = v15;
    v27 = v18;
    v28 = v21;
    v29 = v24;
    sub_1A84A8550(0xD000000000000010, 0x80000001A8532F80, &v26, a1);
    swift_beginAccess();
    v25 = *(v2 + 24);

    ImportExport.Timer.format(report:)(a1);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1A847F12C()
{
  type metadata accessor for ImportExport.ImportStatistics();
  v0 = swift_allocObject();
  result = ImportExport.ImportStatistics.init()();
  qword_1EB2E8270 = v0;
  return result;
}

uint64_t static ImportExport.ImportStatistics.zero.getter()
{
  if (qword_1EB2E59A8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A847F1D0@<X0>(void *a1@<X8>)
{
  if (qword_1EB2E59A8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = qword_1EB2E8270;
}

uint64_t sub_1A847F240@<X0>(void **a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  result = _s6IMCore12ImportExportO0B10StatisticsC1poiyA2E_AEtFZ_0(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A847F270(uint64_t *a1, uint64_t **a2)
{
  v3 = _s6IMCore12ImportExportO0B10StatisticsC1poiyA2E_AEtFZ_0(*a1, *a2);

  *a1 = v3;
  return result;
}

uint64_t sub_1A847F2B8@<X0>(void **a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  result = _s6IMCore12ImportExportO0B10StatisticsC1soiyA2E_AEtFZ_0(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A847F2E8(uint64_t *a1, uint64_t **a2)
{
  v3 = _s6IMCore12ImportExportO0B10StatisticsC1soiyA2E_AEtFZ_0(*a1, *a2);

  *a1 = v3;
  return result;
}

uint64_t ImportExport.ImportStatistics.totalConversationCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 40);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ImportStatistics.totalMessageCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 48);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ImportStatistics.totalAttachmentCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 56);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ImportStatistics.totalParticipantCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 64);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ImportStatistics.conversationCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 80);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ImportStatistics.messageCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 88);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ImportStatistics.attachmentCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 96);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ImportStatistics.participantCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 104);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A847F584()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 40);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A847F5CC()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 48);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A847F614()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 56);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A847F65C()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 64);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A847F6A4()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 72);
}

uint64_t sub_1A847F6E4()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 80);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A847F72C()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 88);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A847F774()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 96);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A847F7BC()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 104);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A847F804()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 112);
}

uint64_t sub_1A847F844()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 24);
}

BOOL _s6IMCore12ImportExportO0B10StatisticsC2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v4 = *(a1 + 24);
  swift_beginAccess();
  v5 = *(a2 + 24);

  v6 = _s6IMCore12ImportExportO5TimerC2eeoiySbAE_AEtFZ_0(v4, v5);

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v7 = *(a1 + 32);
  swift_beginAccess();
  if (v7 != *(a2 + 32))
  {
    return 0;
  }

  swift_beginAccess();
  v8 = *(a1 + 72);
  v11 = *(a1 + 56);
  v13 = *(a1 + 40);
  swift_beginAccess();
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v13, *(a2 + 40)), vceqq_s64(v11, *(a2 + 56))))) & 1) != 0 && v8 == *(a2 + 72))
  {
    swift_beginAccess();
    v10 = *(a1 + 112);
    v12 = *(a1 + 96);
    v14 = *(a1 + 80);
    swift_beginAccess();
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v14, *(a2 + 80)), vceqq_s64(v12, *(a2 + 96))))))
    {
      return v10 == *(a2 + 112);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1A847FA58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656D6974 && a2 == 0xE500000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F436863746162 && a2 == 0xEA0000000000746ELL || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465746365707865 && a2 == 0xEE0073746E756F43 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646574726F706D69 && a2 == 0xEE0073746E756F43)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t _s6IMCore12ImportExportO0B10StatisticsC1poiyA2E_AEtFZ_0(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v67 - v10;
  swift_beginAccess();
  v12 = a1[3];
  swift_beginAccess();
  v13 = a1[4];
  result = swift_beginAccess();
  v15 = a2[4];
  v16 = __CFADD__(v13, v15);
  v17 = v13 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_14;
  }

  v78 = v9;
  v79 = v17;
  v80 = v12;
  swift_beginAccess();
  v18 = a1[5];
  v19 = a1[6];
  v21 = a1[7];
  v20 = a1[8];
  v22 = a1[9];
  result = swift_beginAccess();
  v23 = a2[5];
  v24 = v18 + v23;
  if (__OFADD__(v18, v23))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25 = a2[6];
  v26 = v19 + v25;
  if (__OFADD__(v19, v25))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27 = a2[7];
  v28 = __OFADD__(v21, v27);
  v29 = v21 + v27;
  if (v28)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v30 = a2[8];
  v31 = v20 + v30;
  if (__OFADD__(v20, v30))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v32 = a2[9];
  v28 = __OFADD__(v22, v32);
  v33 = v22 + v32;
  if (v28)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v74 = v33;
  v75 = v31;
  v76 = v26;
  v77 = v24;
  swift_beginAccess();
  v34 = a1[10];
  v35 = a1[11];
  v37 = a1[12];
  v36 = a1[13];
  v38 = a1[14];
  result = swift_beginAccess();
  v39 = a2[10];
  v40 = v34 + v39;
  if (__OFADD__(v34, v39))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v41 = a2[11];
  v42 = v35 + v41;
  if (__OFADD__(v35, v41))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v43 = a2[12];
  v44 = v37 + v43;
  if (__OFADD__(v37, v43))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v45 = a2[13];
  v46 = v36 + v45;
  if (__OFADD__(v36, v45))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v47 = a2[14];
  v28 = __OFADD__(v38, v47);
  v48 = v38 + v47;
  if (!v28)
  {
    v68 = v40;
    v69 = v42;
    v70 = v44;
    v71 = v46;
    v73 = v48;
    v49 = swift_allocObject();
    v50 = sub_1A84E56DC();
    v51 = *(*(v50 - 8) + 56);
    v72 = v29;
    v51(v11, 1, 1, v50);
    v52 = v78;
    v51(v78, 1, 1, v50);
    v53 = type metadata accessor for ImportExport.Timer();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    v56 = swift_allocObject();
    v57 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
    v51((v56 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v50);
    v58 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
    v51((v56 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v50);
    swift_beginAccess();
    v59 = v80;

    sub_1A843E9F0(v11, v56 + v57);
    swift_endAccess();
    swift_beginAccess();
    sub_1A843E9F0(v52, v56 + v58);
    swift_endAccess();
    *(v49 + 24) = v56;
    *(v49 + 48) = 0u;
    *(v49 + 64) = 0u;
    *(v49 + 96) = 0u;
    *(v49 + 112) = 0;
    *(v49 + 80) = 0u;
    *(v49 + 32) = 0u;
    swift_beginAccess();
    *(v49 + 24) = v59;

    swift_beginAccess();
    *(v49 + 32) = v79;
    swift_beginAccess();
    v60 = v69;
    *(v49 + 80) = v68;
    v61 = v70;
    v62 = v71;
    *(v49 + 88) = v60;
    *(v49 + 96) = v61;
    v63 = v73;
    *(v49 + 104) = v62;
    *(v49 + 112) = v63;
    swift_beginAccess();
    v64 = v76;
    *(v49 + 40) = v77;
    *(v49 + 48) = v64;
    v65 = v74;
    v66 = v75;
    *(v49 + 56) = v72;
    *(v49 + 64) = v66;
    *(v49 + 72) = v65;
    *(v49 + 16) = 0x3FF199999999999ALL;
    return v49;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t _s6IMCore12ImportExportO0B10StatisticsC1soiyA2E_AEtFZ_0(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v67 - v10;
  swift_beginAccess();
  v12 = a1[3];
  swift_beginAccess();
  v13 = a1[4];
  result = swift_beginAccess();
  v15 = a2[4];
  v16 = v13 >= v15;
  v17 = v13 - v15;
  if (!v16)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v78 = v9;
  v79 = v17;
  v80 = v12;
  swift_beginAccess();
  v18 = a1[5];
  v19 = a1[6];
  v21 = a1[7];
  v20 = a1[8];
  v22 = a1[9];
  result = swift_beginAccess();
  v23 = a2[5];
  v24 = v18 - v23;
  if (__OFSUB__(v18, v23))
  {
    goto LABEL_14;
  }

  v25 = a2[6];
  v26 = v19 - v25;
  if (__OFSUB__(v19, v25))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27 = a2[7];
  v28 = __OFSUB__(v21, v27);
  v29 = v21 - v27;
  if (v28)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v30 = a2[8];
  v31 = v20 - v30;
  if (__OFSUB__(v20, v30))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v32 = a2[9];
  v28 = __OFSUB__(v22, v32);
  v33 = v22 - v32;
  if (v28)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v74 = v33;
  v75 = v31;
  v76 = v26;
  v77 = v24;
  swift_beginAccess();
  v34 = a1[10];
  v35 = a1[11];
  v37 = a1[12];
  v36 = a1[13];
  v38 = a1[14];
  result = swift_beginAccess();
  v39 = a2[10];
  v40 = v34 - v39;
  if (__OFSUB__(v34, v39))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v41 = a2[11];
  v42 = v35 - v41;
  if (__OFSUB__(v35, v41))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v43 = a2[12];
  v44 = v37 - v43;
  if (__OFSUB__(v37, v43))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v45 = a2[13];
  v46 = v36 - v45;
  if (__OFSUB__(v36, v45))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v47 = a2[14];
  v28 = __OFSUB__(v38, v47);
  v48 = v38 - v47;
  if (!v28)
  {
    v68 = v40;
    v69 = v42;
    v70 = v44;
    v71 = v46;
    v73 = v48;
    v49 = swift_allocObject();
    v50 = sub_1A84E56DC();
    v51 = *(*(v50 - 8) + 56);
    v72 = v29;
    v51(v11, 1, 1, v50);
    v52 = v78;
    v51(v78, 1, 1, v50);
    v53 = type metadata accessor for ImportExport.Timer();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    v56 = swift_allocObject();
    v57 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
    v51((v56 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v50);
    v58 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
    v51((v56 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v50);
    swift_beginAccess();
    v59 = v80;

    sub_1A843E9F0(v11, v56 + v57);
    swift_endAccess();
    swift_beginAccess();
    sub_1A843E9F0(v52, v56 + v58);
    swift_endAccess();
    *(v49 + 24) = v56;
    *(v49 + 48) = 0u;
    *(v49 + 64) = 0u;
    *(v49 + 96) = 0u;
    *(v49 + 112) = 0;
    *(v49 + 80) = 0u;
    *(v49 + 32) = 0u;
    swift_beginAccess();
    *(v49 + 24) = v59;

    swift_beginAccess();
    *(v49 + 32) = v79;
    swift_beginAccess();
    v60 = v69;
    *(v49 + 80) = v68;
    v61 = v70;
    v62 = v71;
    *(v49 + 88) = v60;
    *(v49 + 96) = v61;
    v63 = v73;
    *(v49 + 104) = v62;
    *(v49 + 112) = v63;
    swift_beginAccess();
    v64 = v76;
    *(v49 + 40) = v77;
    *(v49 + 48) = v64;
    v65 = v74;
    v66 = v75;
    *(v49 + 56) = v72;
    *(v49 + 64) = v66;
    *(v49 + 72) = v65;
    *(v49 + 16) = 0x3FF199999999999ALL;
    return v49;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1A84804FC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1A84805EC(&qword_1EB2E82B0, a2, type metadata accessor for ImportExport.ImportStatistics);
  result = sub_1A84805EC(&qword_1EB2E82B8, v3, type metadata accessor for ImportExport.ImportStatistics);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A84805EC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1A848069C()
{
  result = qword_1EB2E82C8;
  if (!qword_1EB2E82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E82C8);
  }

  return result;
}

unint64_t sub_1A84806F4()
{
  result = qword_1EB2E82D0;
  if (!qword_1EB2E82D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E82D0);
  }

  return result;
}

unint64_t sub_1A848074C()
{
  result = qword_1EB2E82D8;
  if (!qword_1EB2E82D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E82D8);
  }

  return result;
}

uint64_t ImportExport.Importer.importStatistics.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t ImportExport.Importer.progress.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  a1[3] = type metadata accessor for ImportExport.ImportStatistics();
  a1[4] = &protocol witness table for ImportExport.ImportStatistics;
  *a1 = v3;
}

uint64_t ImportExport.Importer.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for ImportExport.ImportStatistics();
  swift_allocObject();
  v1 = ImportExport.ImportStatistics.init()();
  v2 = MEMORY[0x1E69E7CD0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t ImportExport.Importer.init()()
{
  type metadata accessor for ImportExport.ImportStatistics();
  swift_allocObject();
  v1 = ImportExport.ImportStatistics.init()();
  v2 = MEMORY[0x1E69E7CD0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t ImportExport.Importer.begin(withExpectedCounts:)(uint64_t *a1)
{
  v2 = v1;
  v28 = sub_1A84E5C9C();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  v29 = a1[4];
  sub_1A84E5C8C();
  v12 = sub_1A84E5C7C();
  v13 = sub_1A84E617C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = v10;
    v15 = v14;
    v25 = swift_slowAlloc();
    v35 = v25;
    *v15 = 136315138;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1A84E646C();

    strcpy(v36, "RecordCounts: ");
    HIBYTE(v36[1]) = -18;
    v30 = v9;
    v31 = v8;
    v32 = v11;
    v33 = v27;
    v34 = v29;
    v16 = ImportExport.RecordCounts.displayDescription.getter();
    v26 = v11;
    v17 = v8;
    v18 = v2;
    v19 = v9;
    MEMORY[0x1AC56A990](v16);

    v20 = sub_1A82446BC(v36[0], v36[1], &v35);

    *(v15 + 4) = v20;
    v9 = v19;
    v2 = v18;
    v8 = v17;
    v11 = v26;
    _os_log_impl(&dword_1A823F000, v12, v13, "Beginning importing with expected count: %s", v15, 0xCu);
    v21 = v25;
    sub_1A8244788(v25);
    MEMORY[0x1AC56D3F0](v21, -1, -1);
    v22 = v15;
    v10 = v27;
    MEMORY[0x1AC56D3F0](v22, -1, -1);
  }

  (*(v4 + 8))(v7, v28);
  swift_beginAccess();
  v23 = *(v2 + 16);
  result = swift_beginAccess();
  v23[5] = v9;
  v23[6] = v8;
  v23[7] = v11;
  v23[8] = v10;
  v23[9] = v29;
  return result;
}

uint64_t ImportExport.Importer.import(messageBatch:)(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  v4 = type metadata accessor for ImportExport.MessageBatch();
  v3[32] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v6 = type metadata accessor for ImportExport.ImportedMessageBatch();
  v3[35] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v8 = sub_1A84E5C9C();
  v3[39] = v8;
  v9 = *(v8 - 8);
  v3[40] = v9;
  v10 = *(v9 + 64) + 15;
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v11 = *(*(sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00) - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A8480D48, 0, 0);
}

uint64_t sub_1A8480D48()
{
  v80 = v0;
  v1 = v0[45];
  v2 = v0[31];
  swift_beginAccess();
  v3 = *(v2 + 16);
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v4 + v5, v1);
  v6 = sub_1A84E56DC();
  v7 = *(*(v6 - 8) + 48);
  LODWORD(v5) = v7(v1, 1, v6);
  sub_1A824B2D4(v1, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v5 == 1)
  {
    goto LABEL_2;
  }

  v10 = v0[44];
  v11 = *(v2 + 16);
  swift_beginAccess();
  v12 = *(v11 + 24);
  v13 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v12 + v13, v10);
  v14 = v7(v10, 1, v6);
  v15 = v0[44];
  if (v14 == 1)
  {
    sub_1A824B2D4(v0[44], &qword_1EB2E6F48, &unk_1A8501F00);
  }

  else
  {
    v16 = v0[43];

    sub_1A824B2D4(v15, &qword_1EB2E6F48, &unk_1A8501F00);
    v17 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
    swift_beginAccess();
    sub_1A843ED60(v12 + v17, v16);

    v18 = v7(v16, 1, v6);
    sub_1A824B2D4(v16, &qword_1EB2E6F48, &unk_1A8501F00);
    if (v18 != 1)
    {
LABEL_2:
      v8 = *(v2 + 16);
      swift_beginAccess();
      v9 = *(v8 + 24);

      ImportExport.Timer.start()();
    }
  }

  v19 = v0[31];
  sub_1A8441B3C(v0[30], v0[29]);
  v20 = *(v2 + 16);
  result = swift_beginAccess();
  v22 = *(v20 + 32);
  v23 = __CFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    v25 = v0[42];
    v26 = v0[37];
    v27 = v0[38];
    v29 = v0[35];
    v28 = v0[36];
    v30 = v0[29];
    *(v20 + 32) = v24;
    v31 = v30 + *(v29 + 20);
    v32 = *(v31 + 32);
    v71 = *(v31 + 16);
    v72 = *v31;
    swift_beginAccess();
    v74[0] = v72;
    v74[1] = v71;
    v75 = v32;
    v33 = *(v20 + 112);
    v34 = *(v20 + 96);
    v77 = *(v20 + 80);
    v78 = v34;
    v79 = v33;
    static ImportExport.RecordCounts.+ infix(_:_:)(&v77, v74, (v20 + 80));
    sub_1A84E5C8C();
    sub_1A8483510(v30, v27, type metadata accessor for ImportExport.ImportedMessageBatch);
    sub_1A8483510(v30, v26, type metadata accessor for ImportExport.ImportedMessageBatch);
    sub_1A8483510(v30, v28, type metadata accessor for ImportExport.ImportedMessageBatch);
    v35 = sub_1A84E5C7C();
    v36 = sub_1A84E617C();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[42];
    v39 = v0[39];
    v40 = v0[40];
    v42 = v0[37];
    v41 = v0[38];
    v43 = v0[36];
    if (v37)
    {
      v70 = v36;
      v44 = v0[32];
      v73 = v0[39];
      v45 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v76 = v69;
      *v45 = 134218498;
      v46 = *(*(v41 + *(v44 + 20)) + 16);
      sub_1A8483578(v41, type metadata accessor for ImportExport.ImportedMessageBatch);
      *(v45 + 4) = v46;
      *(v45 + 12) = 2080;
      v47 = ImportExport.Conversation.description.getter();
      v49 = v48;
      sub_1A8483578(v42, type metadata accessor for ImportExport.ImportedMessageBatch);
      v50 = sub_1A82446BC(v47, v49, &v76);

      *(v45 + 14) = v50;
      *(v45 + 22) = 2080;
      v51 = v43 + *(v29 + 20);
      v52 = *(v51 + 32);
      *&v77 = 0;
      *(&v77 + 1) = 0xE000000000000000;
      v67 = *(v51 + 16);
      v68 = *v51;
      sub_1A84E646C();

      strcpy(v74, "RecordCounts: ");
      HIBYTE(v74[0]) = -18;
      v77 = v68;
      v78 = v67;
      v79 = v52;
      v53 = ImportExport.RecordCounts.displayDescription.getter();
      MEMORY[0x1AC56A990](v53);

      v54 = v74[0];
      sub_1A8483578(v43, type metadata accessor for ImportExport.ImportedMessageBatch);
      v55 = sub_1A82446BC(v54, *(&v54 + 1), &v76);

      *(v45 + 24) = v55;
      _os_log_impl(&dword_1A823F000, v35, v70, "Importing %ld messages into chat: %s: %s", v45, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC56D3F0](v69, -1, -1);
      MEMORY[0x1AC56D3F0](v45, -1, -1);

      (*(v40 + 8))(v38, v73);
    }

    else
    {
      sub_1A8483578(v0[38], type metadata accessor for ImportExport.ImportedMessageBatch);

      sub_1A8483578(v43, type metadata accessor for ImportExport.ImportedMessageBatch);
      sub_1A8483578(v42, type metadata accessor for ImportExport.ImportedMessageBatch);
      (*(v40 + 8))(v38, v39);
    }

    v57 = v0[44];
    v56 = v0[45];
    v59 = v0[42];
    v58 = v0[43];
    v60 = v0[41];
    v62 = v0[37];
    v61 = v0[38];
    v63 = v0[36];
    v65 = v0[33];
    v64 = v0[34];

    v66 = v0[1];

    return v66();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ImportExport.Importer.finish()()
{
  v1 = sub_1A84E5C9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6IMCore12ImportExportO8ImporterC32sendReloadNotificationToMessagesyyFZ_0();
  sub_1A84E5C8C();

  v6 = sub_1A84E5C7C();
  v7 = sub_1A84E617C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v18 = v2;
    v9 = v8;
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    swift_beginAccess();
    v11 = *(v0 + 16);

    v12 = ImportExport.ImportStatistics.description.getter();
    v17 = v1;
    v14 = v13;

    v15 = sub_1A82446BC(v12, v14, &v19);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_1A823F000, v6, v7, "Finished import: %s", v9, 0xCu);
    sub_1A8244788(v10);
    MEMORY[0x1AC56D3F0](v10, -1, -1);
    MEMORY[0x1AC56D3F0](v9, -1, -1);

    (*(v18 + 8))(v5, v17);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }
}

unint64_t sub_1A8481938()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1A8481974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A8533060 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A8533080 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A84E67AC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1A8481A58(uint64_t a1)
{
  v2 = sub_1A848378C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8481A94(uint64_t a1)
{
  v2 = sub_1A848378C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.Importer.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t ImportExport.Importer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t ImportExport.Importer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E82E0, &qword_1A8507EB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A848378C();
  sub_1A84E68AC();
  swift_beginAccess();
  v14 = *(v3 + 16);
  LOBYTE(v13) = 0;
  type metadata accessor for ImportExport.ImportStatistics();
  sub_1A84837E0(&qword_1EB2E82B8);
  sub_1A84E672C();
  if (!v2)
  {
    swift_beginAccess();
    v13 = *(v3 + 24);
    v12[7] = 1;
    sub_1A83EA2FC(&qword_1EB2E82F0, &qword_1A8507EC0);
    sub_1A8483824(&qword_1EB2E82F8);
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ImportExport.Importer.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ImportExport.Importer.init(from:)(a1);
  return v2;
}

void *ImportExport.Importer.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8300, &qword_1A8507EC8);
  v18 = *(v5 - 8);
  v19 = v5;
  v6 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  type metadata accessor for ImportExport.ImportStatistics();
  swift_allocObject();
  v1[2] = ImportExport.ImportStatistics.init()();
  v9 = v1 + 2;
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A848378C();
  v11 = v20;
  sub_1A84E689C();
  if (v11)
  {
    v15 = v1[2];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v22 = 0;
    sub_1A84837E0(&qword_1EB2E82B0);
    v12 = v19;
    sub_1A84E666C();
    v13 = v23;
    swift_beginAccess();
    v14 = *v9;
    *v9 = v13;

    sub_1A83EA2FC(&qword_1EB2E82F0, &qword_1A8507EC0);
    v21 = 1;
    sub_1A8483824(&qword_1EB2E8308);
    sub_1A84E666C();
    (*(v18 + 8))(v8, v12);
    v2[3] = v23;
  }

  sub_1A8244788(a1);
  return v2;
}

void *sub_1A8482064@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = ImportExport.Importer.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1A84820E0()
{
  v1 = *v0;
  if (v1 == 4)
  {
    v2 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = v2;
  }

  if (v1 == 1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xD000000000000016;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    result = v4;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_1A8482180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A84842F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A84821A8(uint64_t a1)
{
  v2 = sub_1A8483890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84821E4(uint64_t a1)
{
  v2 = sub_1A8483890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8482220(uint64_t a1)
{
  v2 = sub_1A8483938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A848225C(uint64_t a1)
{
  v2 = sub_1A8483938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8482298(uint64_t a1)
{
  v2 = sub_1A84838E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84822D4(uint64_t a1)
{
  v2 = sub_1A84838E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A848231C(uint64_t a1)
{
  v2 = sub_1A84839E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8482358(uint64_t a1)
{
  v2 = sub_1A84839E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8482394(uint64_t a1)
{
  v2 = sub_1A8483A88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84823D0(uint64_t a1)
{
  v2 = sub_1A8483A88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A848240C(uint64_t a1)
{
  v2 = sub_1A848398C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8482448(uint64_t a1)
{
  v2 = sub_1A848398C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8482484(uint64_t a1)
{
  v2 = sub_1A8483A34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84824C0(uint64_t a1)
{
  v2 = sub_1A8483A34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ImportError.encode(to:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E8310, &qword_1A8507ED0);
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v39 - v5;
  v6 = sub_1A83EA2FC(&qword_1EB2E8318, &qword_1A8507ED8);
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v39 - v8;
  v9 = sub_1A83EA2FC(&qword_1EB2E8320, &qword_1A8507EE0);
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v39 - v11;
  v12 = sub_1A83EA2FC(&qword_1EB2E8328, &qword_1A8507EE8);
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v39 - v14;
  v15 = sub_1A83EA2FC(&qword_1EB2E8330, &qword_1A8507EF0);
  v43 = *(v15 - 8);
  v44 = v15;
  v16 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v42 = &v39 - v17;
  v18 = sub_1A83EA2FC(&qword_1EB2E8338, &qword_1A8507EF8);
  v40 = *(v18 - 8);
  v41 = v18;
  v19 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v39 - v20;
  v22 = sub_1A83EA2FC(&qword_1EB2E8340, &qword_1A8507F00);
  v57 = *(v22 - 8);
  v58 = v22;
  v23 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v39 - v24;
  v26 = *v1;
  v27 = *(v1 + 8);
  v28 = *(v1 + 16);
  v29 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A8483890();
  sub_1A84E68AC();
  if (!v28)
  {
    v63 = 4;
    sub_1A8483938();
    v30 = v51;
    v31 = v58;
    sub_1A84E669C();
    v32 = v53;
    sub_1A84E66CC();
    v33 = v52;
    goto LABEL_5;
  }

  if (v28 == 1)
  {
    v64 = 5;
    sub_1A84838E4();
    v30 = v54;
    v31 = v58;
    sub_1A84E669C();
    v32 = v56;
    sub_1A84E66CC();
    v33 = v55;
LABEL_5:
    (*(v33 + 8))(v30, v32);
    return (*(v57 + 8))(v25, v31);
  }

  if (v26 > 1)
  {
    if (v26 ^ 2 | v27)
    {
      v62 = 3;
      sub_1A848398C();
      v36 = v48;
      v35 = v58;
      sub_1A84E669C();
      v38 = v49;
      v37 = v50;
    }

    else
    {
      v61 = 2;
      sub_1A84839E0();
      v36 = v45;
      v35 = v58;
      sub_1A84E669C();
      v38 = v46;
      v37 = v47;
    }

    goto LABEL_13;
  }

  if (v26 | v27)
  {
    v60 = 1;
    sub_1A8483A34();
    v36 = v42;
    v35 = v58;
    sub_1A84E669C();
    v38 = v43;
    v37 = v44;
LABEL_13:
    (*(v38 + 8))(v36, v37);
    return (*(v57 + 8))(v25, v35);
  }

  v59 = 0;
  sub_1A8483A88();
  v35 = v58;
  sub_1A84E669C();
  (*(v40 + 8))(v21, v41);
  return (*(v57 + 8))(v25, v35);
}

uint64_t ImportExport.ImportError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v69 = sub_1A83EA2FC(&qword_1EB2E8380, &qword_1A8507F08);
  v72 = *(v69 - 8);
  v3 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v76 = &v59 - v4;
  v5 = sub_1A83EA2FC(&qword_1EB2E8388, &qword_1A8507F10);
  v70 = *(v5 - 8);
  v71 = v5;
  v6 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v59 - v7;
  v68 = sub_1A83EA2FC(&qword_1EB2E8390, &qword_1A8507F18);
  v65 = *(v68 - 8);
  v8 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v75 = &v59 - v9;
  v10 = sub_1A83EA2FC(&qword_1EB2E8398, &qword_1A8507F20);
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v59 - v12;
  v13 = sub_1A83EA2FC(&qword_1EB2E83A0, &qword_1A8507F28);
  v63 = *(v13 - 8);
  v64 = v13;
  v14 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v59 - v15;
  v17 = sub_1A83EA2FC(&qword_1EB2E83A8, &qword_1A8507F30);
  v62 = *(v17 - 8);
  v18 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v59 - v19;
  v21 = sub_1A83EA2FC(&qword_1EB2E83B0, &unk_1A8507F38);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v59 - v24;
  v26 = a1[3];
  v27 = a1[4];
  v79 = a1;
  sub_1A82471E0(a1, v26);
  sub_1A8483890();
  v28 = v78;
  sub_1A84E689C();
  if (!v28)
  {
    v29 = v20;
    v60 = v17;
    v30 = v16;
    v32 = v75;
    v31 = v76;
    v78 = v22;
    v33 = v77;
    v61 = v21;
    v34 = sub_1A84E668C();
    v35 = (2 * *(v34 + 16)) | 1;
    v80 = v34;
    v81 = v34 + 32;
    v82 = 0;
    v83 = v35;
    v36 = sub_1A8400988();
    if (v36 == 6 || v82 != v83 >> 1)
    {
      v41 = sub_1A84E64BC();
      swift_allocError();
      v43 = v42;
      v44 = *(sub_1A83EA2FC(&qword_1EB2E7110, &qword_1A8502A20) + 48);
      *v43 = &type metadata for ImportExport.ImportError;
      v45 = v61;
      sub_1A84E65CC();
      sub_1A84E64AC();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
      swift_willThrow();
      (*(v78 + 8))(v25, v45);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v36 > 2u)
      {
        v47 = v78;
        if (v36 == 3)
        {
          v84 = 3;
          sub_1A848398C();
          v52 = v61;
          sub_1A84E65BC();
          (*(v65 + 8))(v32, v68);
          (*(v47 + 8))(v25, v52);
          swift_unknownObjectRelease();
          v38 = 0;
          v39 = 2;
          v40 = 3;
        }

        else
        {
          v48 = v61;
          if (v36 == 4)
          {
            v84 = 4;
            sub_1A8483938();
            v49 = v73;
            sub_1A84E65BC();
            v50 = v71;
            v40 = sub_1A84E660C();
            v38 = v57;
            (*(v70 + 8))(v49, v50);
            (*(v47 + 8))(v25, v48);
            swift_unknownObjectRelease();
            v39 = 0;
          }

          else
          {
            v84 = 5;
            sub_1A84838E4();
            sub_1A84E65BC();
            v55 = v69;
            v40 = sub_1A84E660C();
            v56 = v31;
            v38 = v58;
            (*(v72 + 8))(v56, v55);
            (*(v47 + 8))(v25, v48);
            swift_unknownObjectRelease();
            v39 = 1;
          }
        }
      }

      else if (v36)
      {
        if (v36 == 1)
        {
          v84 = 1;
          sub_1A8483A34();
          v37 = v61;
          sub_1A84E65BC();
          (*(v63 + 8))(v30, v64);
          (*(v78 + 8))(v25, v37);
          swift_unknownObjectRelease();
          v38 = 0;
          v39 = 2;
          v40 = 1;
        }

        else
        {
          v84 = 2;
          sub_1A84839E0();
          v53 = v74;
          v54 = v61;
          sub_1A84E65BC();
          (*(v66 + 8))(v53, v67);
          (*(v78 + 8))(v25, v54);
          swift_unknownObjectRelease();
          v38 = 0;
          v40 = 2;
          v39 = 2;
        }
      }

      else
      {
        v84 = 0;
        sub_1A8483A88();
        v51 = v61;
        sub_1A84E65BC();
        (*(v62 + 8))(v29, v60);
        (*(v78 + 8))(v25, v51);
        swift_unknownObjectRelease();
        v40 = 0;
        v38 = 0;
        v39 = 2;
      }

      *v33 = v40;
      *(v33 + 8) = v38;
      *(v33 + 16) = v39;
    }
  }

  return sub_1A8244788(v79);
}

uint64_t sub_1A8483510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A8483578(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s6IMCore12ImportExportO8ImporterC32sendReloadNotificationToMessagesyyFZ_0()
{
  v0 = sub_1A84E5C9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  v6 = sub_1A84E5D8C();
  CFNotificationCenterPostNotification(v5, v6, 0, 0, 1u);

  sub_1A84E5C8C();
  v7 = sub_1A84E5C7C();
  v8 = sub_1A84E617C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1A823F000, v7, v8, "Sent reload notification to Messages processes...", v9, 2u);
    MEMORY[0x1AC56D3F0](v9, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_1A848378C()
{
  result = qword_1EB2E82E8;
  if (!qword_1EB2E82E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E82E8);
  }

  return result;
}

uint64_t sub_1A84837E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ImportExport.ImportStatistics();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A8483824(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E82F0, &qword_1A8507EC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A8483890()
{
  result = qword_1EB2E8348;
  if (!qword_1EB2E8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8348);
  }

  return result;
}

unint64_t sub_1A84838E4()
{
  result = qword_1EB2E8350;
  if (!qword_1EB2E8350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8350);
  }

  return result;
}

unint64_t sub_1A8483938()
{
  result = qword_1EB2E8358;
  if (!qword_1EB2E8358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8358);
  }

  return result;
}

unint64_t sub_1A848398C()
{
  result = qword_1EB2E8360;
  if (!qword_1EB2E8360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8360);
  }

  return result;
}

unint64_t sub_1A84839E0()
{
  result = qword_1EB2E8368;
  if (!qword_1EB2E8368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8368);
  }

  return result;
}

unint64_t sub_1A8483A34()
{
  result = qword_1EB2E8370;
  if (!qword_1EB2E8370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8370);
  }

  return result;
}

unint64_t sub_1A8483A88()
{
  result = qword_1EB2E8378;
  if (!qword_1EB2E8378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8378);
  }

  return result;
}

uint64_t sub_1A8483B54(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1A8483B70(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1A8483C1C()
{
  result = qword_1EB2E83B8;
  if (!qword_1EB2E83B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E83B8);
  }

  return result;
}

unint64_t sub_1A8483C74()
{
  result = qword_1EB2E83C0;
  if (!qword_1EB2E83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E83C0);
  }

  return result;
}

unint64_t sub_1A8483CCC()
{
  result = qword_1EB2E83C8;
  if (!qword_1EB2E83C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E83C8);
  }

  return result;
}

unint64_t sub_1A8483D24()
{
  result = qword_1EB2E83D0;
  if (!qword_1EB2E83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E83D0);
  }

  return result;
}

unint64_t sub_1A8483D7C()
{
  result = qword_1EB2E83D8;
  if (!qword_1EB2E83D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E83D8);
  }

  return result;
}

unint64_t sub_1A8483DD4()
{
  result = qword_1EB2E83E0;
  if (!qword_1EB2E83E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E83E0);
  }

  return result;
}

unint64_t sub_1A8483E2C()
{
  result = qword_1EB2E83E8;
  if (!qword_1EB2E83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E83E8);
  }

  return result;
}

unint64_t sub_1A8483E84()
{
  result = qword_1EB2E83F0;
  if (!qword_1EB2E83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E83F0);
  }

  return result;
}

unint64_t sub_1A8483EDC()
{
  result = qword_1EB2E83F8;
  if (!qword_1EB2E83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E83F8);
  }

  return result;
}

unint64_t sub_1A8483F34()
{
  result = qword_1EB2E8400;
  if (!qword_1EB2E8400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8400);
  }

  return result;
}

unint64_t sub_1A8483F8C()
{
  result = qword_1EB2E8408;
  if (!qword_1EB2E8408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8408);
  }

  return result;
}

unint64_t sub_1A8483FE4()
{
  result = qword_1EB2E8410;
  if (!qword_1EB2E8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8410);
  }

  return result;
}

unint64_t sub_1A848403C()
{
  result = qword_1EB2E8418;
  if (!qword_1EB2E8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8418);
  }

  return result;
}

unint64_t sub_1A8484094()
{
  result = qword_1EB2E8420;
  if (!qword_1EB2E8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8420);
  }

  return result;
}

unint64_t sub_1A84840EC()
{
  result = qword_1EB2E8428;
  if (!qword_1EB2E8428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8428);
  }

  return result;
}

unint64_t sub_1A8484144()
{
  result = qword_1EB2E8430;
  if (!qword_1EB2E8430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8430);
  }

  return result;
}

unint64_t sub_1A848419C()
{
  result = qword_1EB2E8438;
  if (!qword_1EB2E8438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8438);
  }

  return result;
}

unint64_t sub_1A84841F4()
{
  result = qword_1EB2E8440;
  if (!qword_1EB2E8440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8440);
  }

  return result;
}

unint64_t sub_1A848424C()
{
  result = qword_1EB2E8448;
  if (!qword_1EB2E8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8448);
  }

  return result;
}

unint64_t sub_1A84842A4()
{
  result = qword_1EB2E8450;
  if (!qword_1EB2E8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8450);
  }

  return result;
}

uint64_t sub_1A84842F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x80000001A85330A0 == a2;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A85330C0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A85330E0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8531170 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A8533100 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8530940 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t ImportExport.ArchiveImporter.archiveManifest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveManifest;
  swift_beginAccess();
  return sub_1A845AFD8(v1 + v3, a1);
}

uint64_t ImportExport.ArchiveImporter.archiveImporterStatistics.getter()
{
  v1 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveImporterStatistics;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t ImportExport.ArchiveImporter.importStatistics.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_importer);
  swift_beginAccess();
  v2 = *(v1 + 16);
}

uint64_t ImportExport.ArchiveImporter.progress.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_importer);
  swift_beginAccess();
  v4 = *(v3 + 16);
  a1[3] = type metadata accessor for ImportExport.ImportStatistics();
  a1[4] = &protocol witness table for ImportExport.ImportStatistics;
  *a1 = v4;
}

uint64_t ImportExport.ArchiveImporter.__allocating_init(withArchiveManifest:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ImportExport.ArchiveImporter.init(withArchiveManifest:)(a1);
  return v5;
}

uint64_t ImportExport.ArchiveImporter.init(withArchiveManifest:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveImporterStatistics;
  type metadata accessor for ImportExport.ArchiveImporterStatistics();
  v5 = swift_allocObject();
  type metadata accessor for ImportExport.ImportStatistics();
  swift_allocObject();
  v6 = ImportExport.ImportStatistics.init()();
  v7 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  *(v1 + v4) = v5;
  sub_1A845AFD8(a1, v1 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveManifest);
  type metadata accessor for ImportExport.Importer();
  v8 = swift_allocObject();
  swift_allocObject();
  v9 = ImportExport.ImportStatistics.init()();
  sub_1A845B03C(a1);
  v10 = MEMORY[0x1E69E7CD0];
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_importer) = v8;
  return v2;
}

void *ImportExport.ArchiveImporter.makeAsyncIterator()()
{
  type metadata accessor for ImportExport.ArchiveImportIterator();
  v1 = swift_allocObject();
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v1[2] = v0;
  v1[3] = v2;

  return v1;
}

uint64_t static ImportExport.ArchiveImporter.readArchiveManifest(fromFileURL:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A8484828, 0, 0);
}

uint64_t sub_1A8484828()
{
  static ImportExport.ArchiveManifest.read(fromFileURL:)(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1A84848A4()
{
  v1 = 0x726574726F706D69;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4D65766968637261;
  }
}

uint64_t sub_1A8484910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8485630(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A8484938(uint64_t a1)
{
  v2 = sub_1A84852D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8484974(uint64_t a1)
{
  v2 = sub_1A84852D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ArchiveImporter.deinit()
{
  sub_1A845B03C(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveManifest);
  v1 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_importer);

  v2 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveImporterStatistics);

  return v0;
}

uint64_t ImportExport.ArchiveImporter.__deallocating_deinit()
{
  sub_1A845B03C(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveManifest);
  v1 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_importer);

  v2 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveImporterStatistics);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ImportExport.ArchiveImporter.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImportExport.ArchiveManifest(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A83EA2FC(&qword_1EB2E8458, &qword_1A8508888);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  v13 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84852D8();
  sub_1A84E68AC();
  v14 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveManifest;
  swift_beginAccess();
  sub_1A845AFD8(v2 + v14, v7);
  LOBYTE(v20) = 0;
  sub_1A8485374(&qword_1EB2E7DC0, type metadata accessor for ImportExport.ArchiveManifest);
  v15 = v18;
  sub_1A84E672C();
  sub_1A845B03C(v7);
  if (!v15)
  {
    v20 = *(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_importer);
    LOBYTE(v21) = 1;
    type metadata accessor for ImportExport.Importer();
    sub_1A8485374(&qword_1EB2E8468, type metadata accessor for ImportExport.Importer);
    sub_1A84E672C();
    v16 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveImporterStatistics;
    swift_beginAccess();
    v21 = *(v2 + v16);
    v19 = 2;
    type metadata accessor for ImportExport.ArchiveImporterStatistics();
    sub_1A8485374(&qword_1EB2E8470, type metadata accessor for ImportExport.ArchiveImporterStatistics);
    sub_1A84E672C();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t ImportExport.ArchiveImporter.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ImportExport.ArchiveImporter.init(from:)(a1);
  return v5;
}

uint64_t *ImportExport.ArchiveImporter.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v32 = *v1;
  v33 = v2;
  v5 = type metadata accessor for ImportExport.ArchiveManifest(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1A83EA2FC(&qword_1EB2E8478, &qword_1A8508890);
  v29 = *(v31 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v28 - v9;
  v11 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveImporterStatistics;
  type metadata accessor for ImportExport.ArchiveImporterStatistics();
  v12 = swift_allocObject();
  type metadata accessor for ImportExport.ImportStatistics();
  swift_allocObject();
  v13 = ImportExport.ImportStatistics.init()();
  v14 = MEMORY[0x1E69E7CC0];
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v1 + v11) = v12;
  v16 = a1[3];
  v15 = a1[4];
  v34 = a1;
  sub_1A82471E0(a1, v16);
  sub_1A84852D8();
  v17 = v33;
  sub_1A84E689C();
  if (v17)
  {
    v21 = *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveImporterStatistics);

    v22 = *(*v1 + 48);
    v23 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v33 = v11;
    v18 = v29;
    LOBYTE(v35) = 0;
    sub_1A8485374(&qword_1EB2E7DC8, type metadata accessor for ImportExport.ArchiveManifest);
    v19 = v30;
    v20 = v31;
    sub_1A84E666C();
    sub_1A845B0B8(v19, v1 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveManifest);
    type metadata accessor for ImportExport.Importer();
    LOBYTE(v36) = 1;
    sub_1A8485374(&qword_1EB2E8480, type metadata accessor for ImportExport.Importer);
    sub_1A84E666C();
    *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_importer) = v35;
    LOBYTE(v35) = 2;
    sub_1A8485374(&qword_1EB2E8488, type metadata accessor for ImportExport.ArchiveImporterStatistics);
    sub_1A84E666C();
    (*(v18 + 8))(v10, v20);
    v25 = v36;
    v26 = v33;
    swift_beginAccess();
    v27 = *(v3 + v26);
    *(v3 + v26) = v25;
  }

  sub_1A8244788(v34);
  return v3;
}

void *sub_1A848520C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ImportExport.ArchiveImportIterator();
  result = swift_allocObject();
  result[5] = 0;
  result[6] = 0;
  result[4] = 0;
  v5 = MEMORY[0x1E69E7CC0];
  result[2] = v3;
  result[3] = v5;
  *a1 = result;
  return result;
}

uint64_t *sub_1A848525C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = ImportExport.ArchiveImporter.init(from:)(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

unint64_t sub_1A84852D8()
{
  result = qword_1EB2E8460;
  if (!qword_1EB2E8460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8460);
  }

  return result;
}

uint64_t sub_1A8485374(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ImportExport.ArchiveImporter()
{
  result = qword_1EB2E8498;
  if (!qword_1EB2E8498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A8485410()
{
  result = type metadata accessor for ImportExport.ArchiveManifest(319);
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

unint64_t sub_1A848552C()
{
  result = qword_1EB2E84A8;
  if (!qword_1EB2E84A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E84A8);
  }

  return result;
}

unint64_t sub_1A8485584()
{
  result = qword_1EB2E84B0;
  if (!qword_1EB2E84B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E84B0);
  }

  return result;
}

unint64_t sub_1A84855DC()
{
  result = qword_1EB2E84B8;
  if (!qword_1EB2E84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E84B8);
  }

  return result;
}

uint64_t sub_1A8485630(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4D65766968637261 && a2 == 0xEF74736566696E61;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726574726F706D69 && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A85331A0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A8485758()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1A84E684C();
  sub_1A84E5E5C();
  MEMORY[0x1AC56B350](v3);
  return sub_1A84E687C();
}

uint64_t sub_1A84857BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1A84E5E5C();
  return MEMORY[0x1AC56B350](v3);
}

uint64_t sub_1A84857F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1A84E684C();
  sub_1A84E5E5C();
  MEMORY[0x1AC56B350](v3);
  return sub_1A84E687C();
}

BOOL sub_1A8485854(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1A84E67AC();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

char *sub_1A84858B0(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___IMPersistentTaskMonitor_changeHandler];
  *v5 = 0;
  v5[1] = 0;
  *&v2[OBJC_IVAR___IMPersistentTaskMonitor_notificationObserver] = 0;
  v6 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  *&v2[OBJC_IVAR___IMPersistentTaskMonitor_id] = v6;
  v7 = sub_1A83EC580(MEMORY[0x1E69E7CC0]);
  sub_1A83EA2FC(&qword_1EB2E8560, &qword_1A8508B00);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v7;
  *&v2[OBJC_IVAR___IMPersistentTaskMonitor_state] = v8;
  sub_1A83EA2FC(&qword_1EB2E8568, qword_1A8508B08);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *&v2[OBJC_IVAR___IMPersistentTaskMonitor_derivedState] = v9;
  v10 = *v5;
  v11 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_1A8242AE8(a1);
  sub_1A8245638(v10);
  v27.receiver = v2;
  v27.super_class = IMPersistentTaskMonitor;
  v12 = objc_msgSendSuper2(&v27, sel_init);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 sharedController];
  v16 = [v15 remoteDaemon];

  v17 = [*&v14[OBJC_IVAR___IMPersistentTaskMonitor_id] UUIDString];
  if (!v17)
  {
    sub_1A84E5DBC();
    v17 = sub_1A84E5D8C();
  }

  [v16 addPersistentTaskExecutorMonitor:v14 withID:v17];
  swift_unknownObjectRelease();

  v18 = [objc_opt_self() defaultCenter];
  v19 = [objc_opt_self() mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  v26[4] = sub_1A8487010;
  v26[5] = v20;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 1107296256;
  v26[2] = sub_1A8485CD8;
  v26[3] = &unk_1F1B752B8;
  v21 = _Block_copy(v26);
  v22 = v14;

  v23 = [v18 addObserverForName:@"__kIMDaemonDidConnectNotification" object:0 queue:v19 usingBlock:v21];
  sub_1A8245638(a1);
  _Block_release(v21);

  v24 = *&v22[OBJC_IVAR___IMPersistentTaskMonitor_notificationObserver];
  *&v22[OBJC_IVAR___IMPersistentTaskMonitor_notificationObserver] = v23;

  swift_unknownObjectRelease();
  return v22;
}

void sub_1A8485BF0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() sharedController];
  v4 = [v3 remoteDaemon];

  v5 = [*(a2 + OBJC_IVAR___IMPersistentTaskMonitor_id) UUIDString];
  if (!v5)
  {
    sub_1A84E5DBC();
    v6 = sub_1A84E5D8C();

    v5 = v6;
  }

  v7 = v5;
  [v4 addPersistentTaskExecutorMonitor:a2 withID:?];
  swift_unknownObjectRelease();
}

uint64_t sub_1A8485CD8(uint64_t a1)
{
  v2 = sub_1A84E535C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1A84E533C();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_1A8485E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A8244B68(0, &unk_1EB2E45D8, 0x1E69A81C8);
  v4 = sub_1A84E5FEC();
  v5 = sub_1A84E5FEC();
  (*(a3 + 16))(a3, v4, v5);
}

void sub_1A8485EEC()
{
  v1 = *(v0 + OBJC_IVAR___IMPersistentTaskMonitor_state);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 24));
  v2 = 0;
  sub_1A8486E9C((v1 + 16), &v28);
  os_unfair_lock_unlock((v1 + 24));

  v3 = 0;
  v4 = 0;
  v5 = v28 + 64;
  v26 = 0;
  v27 = v28;
  v6 = 1 << *(v28 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v28 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v4;
LABEL_9:
    v11 = *(*(v27 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v8)))));
    v12 = [v11 taskReports];
    if (v12)
    {
      v13 = v12;
      sub_1A8244B68(0, &qword_1EB2E4618, 0x1E69A81D0);
      v14 = sub_1A84E5FFC();

      if (v14 >> 62)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
      if (MEMORY[0x1E69E7CC0] >> 62)
      {
LABEL_15:
        v15 = sub_1A84E654C();
        goto LABEL_12;
      }
    }

    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
    v8 &= v8 - 1;
    if (v15)
    {
      v24 = v2;
      v25 = v3;
      if (v15 < 1)
      {
        goto LABEL_41;
      }

      for (i = 0; i != v15; ++i)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1AC56AF80](i, v14);
        }

        else
        {
          v17 = *(v14 + 8 * i + 32);
        }

        v18 = v17;
        v19 = [v17 flag];
        if (v19 == 1)
        {
          v23 = [v18 count];

          v21 = __OFADD__(v26, v23);
          v26 += v23;
          if (v21)
          {
            goto LABEL_39;
          }
        }

        else if (v19 == 2)
        {
          v22 = [v18 count];

          v21 = __OFADD__(v26, v22);
          v26 += v22;
          if (v21)
          {
            goto LABEL_40;
          }
        }

        else if (v19 == 3)
        {
          v20 = [v18 count];

          v21 = __OFADD__(v25, v20);
          v25 += v20;
          if (v21)
          {
            goto LABEL_38;
          }
        }

        else
        {
        }
      }

      v4 = v10;
      v2 = v24;
      v3 = v25;
    }

    else
    {

      v4 = v10;
    }
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t sub_1A84861F8()
{

  swift_getAtKeyPath();

  return v1;
}

uint64_t sub_1A8486248()
{
  v1 = (v0 + OBJC_IVAR___IMPersistentTaskMonitor_changeHandler);
  v2 = *(v0 + OBJC_IVAR___IMPersistentTaskMonitor_changeHandler);
  v3 = *(v0 + OBJC_IVAR___IMPersistentTaskMonitor_changeHandler + 8);
  *v1 = 0;
  v1[1] = 0;
  sub_1A8245638(v2);
  v4 = [objc_opt_self() sharedController];
  v5 = [v4 remoteDaemon];

  v6 = [*(v0 + OBJC_IVAR___IMPersistentTaskMonitor_id) UUIDString];
  if (!v6)
  {
    sub_1A84E5DBC();
    v6 = sub_1A84E5D8C();
  }

  [v5 removePersistentTaskExecutorMonitorWithID_];
  swift_unknownObjectRelease();

  v7 = OBJC_IVAR___IMPersistentTaskMonitor_notificationObserver;
  v8 = *(v0 + OBJC_IVAR___IMPersistentTaskMonitor_notificationObserver);
  if (v8)
  {
    v9 = objc_opt_self();
    swift_unknownObjectRetain();
    v10 = [v9 defaultCenter];
    [v10 removeObserver_];
    swift_unknownObjectRelease();

    v11 = *(v0 + v7);
  }

  *(v0 + v7) = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_1A84863EC(unint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v5 = *(v2 + OBJC_IVAR___IMPersistentTaskMonitor_state);
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  v7 = sub_1A83EC580(v4);

  v8 = sub_1A8486EE0(v7, a1, v6, &v15);
  swift_bridgeObjectRelease_n();
  *(v5 + 16) = v8;
  os_unfair_lock_unlock((v5 + 24));
  v9 = *(v2 + OBJC_IVAR___IMPersistentTaskMonitor_derivedState);
  os_unfair_lock_lock((v9 + 32));
  sub_1A8487130((v9 + 16));
  os_unfair_lock_unlock((v9 + 32));
  v10 = v2 + OBJC_IVAR___IMPersistentTaskMonitor_changeHandler;
  v11 = *(v2 + OBJC_IVAR___IMPersistentTaskMonitor_changeHandler);
  v12 = v15;
  if (v11)
  {
    v13 = *(v10 + 8);

    v11(a1, v12);
    sub_1A8245638(v11);
  }
}

void sub_1A8486508(uint64_t *a1, id *a2, uint64_t a3, void *a4)
{
  v7 = *a2;
  v8 = [*a2 groupName];
  v9 = sub_1A84E5DBC();
  v11 = v10;

  v12 = [v7 lane];

  v13 = v7;
  v14 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *a1;
  sub_1A848DEF8(v13, v9, v11, v12, isUniquelyReferenced_nonNull_native);

  *a1 = v25;
  if (*(a3 + 16))
  {
    v16 = sub_1A8489F0C(v9, v11, v12);
    v18 = v17;

    if (v18)
    {
      v19 = *(*(a3 + 56) + 8 * v16);
      sub_1A8244B68(0, &unk_1EB2E45D8, 0x1E69A81C8);
      v20 = v19;
      if ((sub_1A84E631C() & 1) == 0)
      {
        v21 = v13;
        MEMORY[0x1AC56AAD0]();
        if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v24 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1A84E601C();
        }

        sub_1A84E603C();
      }

      return;
    }
  }

  else
  {
  }

  v22 = v13;
  MEMORY[0x1AC56AAD0]();
  if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v23 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1A84E601C();
  }

  sub_1A84E603C();
}

uint64_t sub_1A8486728(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___IMPersistentTaskMonitor_state);
  os_unfair_lock_lock((v3 + 24));
  v4 = a1;
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v41 = v4;
  v39 = v1;
  if (v5)
  {
    if (v5 >= 1)
    {
      v6 = 0;
      v40 = v4 & 0xC000000000000001;
      while (1)
      {
        if (v40)
        {
          v9 = MEMORY[0x1AC56AF80](v6);
        }

        else
        {
          v9 = *(v4 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = [v10 groupName];
        v12 = sub_1A84E5DBC();
        v14 = v13;

        v15 = [v10 lane];
        v16 = *(v3 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = *(v3 + 16);
        v1 = v42;
        *(v3 + 16) = 0x8000000000000000;
        v18 = sub_1A8489F0C(v12, v14, v15);
        v19 = v1[2];
        v20 = (v4 & 1) == 0;
        v21 = __OFADD__(v19, v20);
        v22 = v19 + v20;
        if (v21)
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          v37 = v4;
          v38 = sub_1A84E654C();
          v4 = v37;
          v5 = v38;
          goto LABEL_3;
        }

        v23 = v4;
        if (v1[3] < v22)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_16;
        }

        v27 = v18;
        sub_1A848F450();
        v18 = v27;
        v1 = v42;
        if (v23)
        {
LABEL_6:
          v7 = v1[7];
          v8 = *(v7 + 8 * v18);
          *(v7 + 8 * v18) = v10;

          goto LABEL_7;
        }

LABEL_17:
        v1[(v18 >> 6) + 8] |= 1 << v18;
        v24 = (v1[6] + 24 * v18);
        *v24 = v12;
        v24[1] = v14;
        v24[2] = v15;
        *(v1[7] + 8 * v18) = v10;
        v25 = v1[2];
        v21 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v21)
        {
          goto LABEL_30;
        }

        v1[2] = v26;
LABEL_7:
        ++v6;
        *(v3 + 16) = v1;
        v4 = v41;
        if (v5 == v6)
        {
          goto LABEL_22;
        }
      }

      sub_1A848C23C(v22, isUniquelyReferenced_nonNull_native);
      v18 = sub_1A8489F0C(v12, v14, v15);
      if ((v23 & 1) != (v4 & 1))
      {
        goto LABEL_34;
      }

LABEL_16:
      v1 = v42;
      if (v23)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_33;
  }

  v1 = *(v3 + 16);
LABEL_22:
  v28 = v1[2];
  if (!v28)
  {
    v31 = v4;
    v29 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  v29 = sub_1A84D83B0(v1[2], 0);
  v30 = sub_1A84D8590(&v42, v29 + 4, v28, v1);

  sub_1A8267334();
  if (v30 == v28)
  {
    v31 = v41;
LABEL_26:
    os_unfair_lock_unlock((v3 + 24));
    v32 = *(v39 + OBJC_IVAR___IMPersistentTaskMonitor_derivedState);
    MEMORY[0x1EEE9AC00](v33);
    os_unfair_lock_lock((v32 + 32));
    sub_1A8486E04((v32 + 16));
    os_unfair_lock_unlock((v32 + 32));
    v34 = *(v39 + OBJC_IVAR___IMPersistentTaskMonitor_changeHandler);
    if (v34)
    {
      v35 = *(v39 + OBJC_IVAR___IMPersistentTaskMonitor_changeHandler + 8);

      v34(v29, v31);
      sub_1A8245638(v34);
    }
  }

LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1A84E67EC();
  __break(1u);
  return result;
}

uint64_t sub_1A8486AC4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1A8244B68(0, &unk_1EB2E45D8, 0x1E69A81C8);
  v6 = sub_1A84E5FFC();
  v7 = a1;
  a4(v6);
}

uint64_t sub_1A8486B7C()
{
  v1 = *(v0 + OBJC_IVAR___IMPersistentTaskMonitor_derivedState);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 32));
  sub_1A8487118((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 32));

  return v3;
}

uint64_t sub_1A8486C44()
{
  v1 = *(v0 + OBJC_IVAR___IMPersistentTaskMonitor_derivedState);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 32));
  sub_1A8486D6C((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 32));

  return v3;
}

uint64_t sub_1A8486DBC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1A8486E04(void *a1)
{
  v3 = *(v1 + 16);
  sub_1A8485EEC();
  *a1 = v4;
  a1[1] = v5;
}

unint64_t sub_1A8486E40()
{
  result = qword_1EB2E4610;
  if (!qword_1EB2E4610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E4610);
  }

  return result;
}

uint64_t sub_1A8486E9C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

id sub_1A8486EE0(id result, unint64_t a2, uint64_t a3, void *a4)
{
  v14 = result;
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v11)
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1AC56AF80](j, a2);
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        result = *(a2 + 8 * j + 32);
      }

      v9 = result;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = result;
      sub_1A8486508(&v14, &v13, a3, a4);

      if (v4)
      {
      }

      if (v10 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v11 = result;
    i = sub_1A84E654C();
  }

  return result;
}

uint64_t sub_1A8487018(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1A8487060(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A84870C4()
{
  result = qword_1EB2E4600;
  if (!qword_1EB2E4600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E4600);
  }

  return result;
}

Swift::Void __swiftcall IMChat.refreshSupportEncryptionStatus()()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedController];
  IMServiceReachabilityController.accountsForQuerying.getter();
  v3 = v2;

  v82 = sub_1A83EBA20(MEMORY[0x1E69E7CC0]);
  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    goto LABEL_58;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = MEMORY[0x1E69A7AD8];
  if (v5)
  {
    v7 = 0;
    v84 = v3 & 0xC000000000000001;
    v78 = v0;
    v80 = v3;
LABEL_5:
    v0 = v7;
    while (1)
    {
      if (v84)
      {
        v9 = MEMORY[0x1AC56AF80](v0, v3);
      }

      else
      {
        if (v0 >= *(v4 + 16))
        {
          goto LABEL_57;
        }

        v9 = *(v3 + 8 * v0 + 32);
      }

      v10 = v9;
      v7 = v0 + 1;
      if (__OFADD__(v0, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        v5 = sub_1A84E654C();
        goto LABEL_3;
      }

      v11 = [v9 serviceName];
      if (!v11)
      {
        break;
      }

      v12 = v11;
      v13 = sub_1A84E5DBC();
      v15 = v14;

      v16 = *v6;
      v17 = sub_1A84E5DBC();
      if (!v15)
      {
        goto LABEL_7;
      }

      v19 = v13 == v17 && v15 == v18;
      if (v19)
      {
      }

      else
      {
        v20 = sub_1A84E67AC();

        if ((v20 & 1) == 0)
        {

          goto LABEL_8;
        }
      }

      v21 = v5;
      v22 = v6;
      v23 = [v10 serviceName];
      if (!v23)
      {
        goto LABEL_65;
      }

      v24 = v23;
      v25 = sub_1A84E5DBC();
      v27 = v26;

      v28 = [v10 uniqueID];
      if (v28)
      {
        v32 = v28;
        v76 = sub_1A84E5DBC();
        v77 = v33;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85 = v82;
        v36 = sub_1A824B390(v25, v27);
        v37 = v82[2];
        v38 = (v35 & 1) == 0;
        v39 = v37 + v38;
        if (__OFADD__(v37, v38))
        {
          goto LABEL_63;
        }

        if (v82[3] >= v39)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v53 = v35;
            sub_1A848F2D8();
            v35 = v53;
          }
        }

        else
        {
          v83 = v35;
          sub_1A848BF7C(v39, isUniquelyReferenced_nonNull_native);
          v40 = sub_1A824B390(v25, v27);
          v42 = v41 & 1;
          v35 = v83;
          if ((v83 & 1) != v42)
          {
            goto LABEL_66;
          }

          v36 = v40;
        }

        v0 = v78;
        v82 = v85;
        if (v35)
        {
          v46 = (v85[7] + 16 * v36);
          v47 = v46[1];
          *v46 = v76;
          v46[1] = v77;
        }

        else
        {
          v85[(v36 >> 6) + 8] |= 1 << v36;
          v48 = (v85[6] + 16 * v36);
          *v48 = v25;
          v48[1] = v27;
          v49 = (v85[7] + 16 * v36);
          *v49 = v76;
          v49[1] = v77;
          v50 = v85[2];
          v51 = __OFADD__(v50, 1);
          v52 = v50 + 1;
          if (v51)
          {
            goto LABEL_64;
          }

          v85[2] = v52;
        }

        v6 = v22;
LABEL_41:
        v5 = v21;
        v19 = v7 == v21;
        v3 = v80;
        if (v19)
        {
          goto LABEL_45;
        }

        goto LABEL_5;
      }

      v29 = sub_1A824B390(v25, v27);
      v31 = v30;

      if (v31)
      {
        v43 = v82;
        v6 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A848F2D8();
          v43 = v82;
        }

        v44 = *(*(v43 + 48) + 16 * v29 + 8);

        v45 = *(*(v43 + 56) + 16 * v29 + 8);

        v82 = v43;
        sub_1A848D064(v29, v43);

        v0 = v78;
        goto LABEL_41;
      }

      v6 = v22;
      v5 = v21;
      v3 = v80;
LABEL_8:
      ++v0;
      if (v7 == v5)
      {
        v0 = v78;
        goto LABEL_45;
      }
    }

    v8 = *v6;
    sub_1A84E5DBC();
LABEL_7:

    goto LABEL_8;
  }

LABEL_45:

  v54 = [v0 sharedController];
  v55 = [v54 reachabilityContextForChat_];

  sub_1A83EA2FC(&unk_1EB2E8DC0, &qword_1A8500C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A85013E0;
  v57 = *v6;
  *(inited + 32) = sub_1A84E5DBC();
  *(inited + 40) = v58;
  sub_1A848FD30(inited);
  swift_setDeallocating();
  sub_1A848FE98(inited + 32);
  v59 = sub_1A84E610C();

  [v55 setPreconditionsIgnoredForServices_];

  v60 = [v0 sharedController];
  v61 = [v79 participants];
  sub_1A8244B68(0, &qword_1EB2E4760, off_1E780DA00);
  v62 = sub_1A84E5FFC();

  if (!(v62 >> 62))
  {
    v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v63)
    {
      goto LABEL_47;
    }

LABEL_60:

    v65 = MEMORY[0x1E69E7CC0];
LABEL_61:
    v75 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1A8454F90(v65, v82, v55, v60, v75);

    return;
  }

  v63 = sub_1A84E654C();
  if (!v63)
  {
    goto LABEL_60;
  }

LABEL_47:
  v86 = MEMORY[0x1E69E7CC0];
  sub_1A83EF534(0, v63 & ~(v63 >> 63), 0);
  if ((v63 & 0x8000000000000000) == 0)
  {
    v81 = v60;
    v64 = 0;
    v65 = v86;
    do
    {
      if ((v62 & 0xC000000000000001) != 0)
      {
        v66 = MEMORY[0x1AC56AF80](v64, v62);
      }

      else
      {
        v66 = *(v62 + 8 * v64 + 32);
      }

      v67 = v66;
      v68 = [v67 ID];
      v69 = sub_1A84E5DBC();
      v71 = v70;

      v73 = *(v86 + 16);
      v72 = *(v86 + 24);
      if (v73 >= v72 >> 1)
      {
        sub_1A83EF534((v72 > 1), v73 + 1, 1);
      }

      ++v64;
      *(v86 + 16) = v73 + 1;
      v74 = v86 + 16 * v73;
      *(v74 + 32) = v69;
      *(v74 + 40) = v71;
    }

    while (v63 != v64);

    v60 = v81;
    goto LABEL_61;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  sub_1A84E67EC();
  __break(1u);
}