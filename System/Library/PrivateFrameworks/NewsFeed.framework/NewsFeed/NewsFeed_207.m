uint64_t sub_1D6DFB198@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D6DFB1F8(uint64_t *a1@<X8>)
{
  v2 = 0x6B636F6C62;
  if (*v1)
  {
    v2 = 0x656E696C6E69;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D6DFB230(uint64_t a1)
{
  *(a1 + 8) = sub_1D6DFB260();
  result = sub_1D6DFB2B4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6DFB260()
{
  result = qword_1EC8966E0;
  if (!qword_1EC8966E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8966E0);
  }

  return result;
}

unint64_t sub_1D6DFB2B4()
{
  result = qword_1EDF26160;
  if (!qword_1EDF26160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26160);
  }

  return result;
}

unint64_t sub_1D6DFB30C()
{
  result = qword_1EC8966E8;
  if (!qword_1EC8966E8)
  {
    sub_1D6DFB364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8966E8);
  }

  return result;
}

void sub_1D6DFB364()
{
  if (!qword_1EC8966F0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8966F0);
    }
  }
}

unint64_t sub_1D6DFB3C4(uint64_t a1)
{
  result = sub_1D6666300();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6DFB3EC(void *a1)
{
  a1[1] = sub_1D6DFB424();
  a1[2] = sub_1D6DFB478();
  result = sub_1D6DFAFE8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6DFB424()
{
  result = qword_1EDF26158;
  if (!qword_1EDF26158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26158);
  }

  return result;
}

unint64_t sub_1D6DFB478()
{
  result = qword_1EDF26170;
  if (!qword_1EDF26170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26170);
  }

  return result;
}

uint64_t sub_1D6DFB558(unint64_t a1)
{
  v1 = a1 >> 60;
  if ((a1 >> 60) > 5)
  {
    if (v1 > 8)
    {
      if (v1 == 9)
      {
        LOBYTE(v2) = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) != 0;
        return v2 & 1;
      }

      if (v1 == 10)
      {
        sub_1D6DFBEBC((a1 & 0xFFFFFFFFFFFFFFFLL) + 16, v39);
        sub_1D6DFBEBC(v39, v41);
        v2 = v42;
        if (v42)
        {
          v4 = v43;
          __swift_project_boxed_opaque_existential_1(v41, v42);
          LOBYTE(v2) = (*(v4 + 40))(v2, v4);
          sub_1D6DFBFDC(v39);
          __swift_destroy_boxed_opaque_existential_1(v41);
        }

        else
        {
          sub_1D6DFBFDC(v39);
          sub_1D6DFBFDC(v41);
        }

        return v2 & 1;
      }

      v31 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v32 = *(v31 + 16);

      v33 = 0;
      while (v32 != v33)
      {
        if (v33 >= *(v31 + 16))
        {
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          return result;
        }

        v34 = v33 + 1;
        *&v39[0] = *(v31 + 8 * v33 + 32);
        result = sub_1D6EE6930(result);
        v33 = v34;
        if (result)
        {
LABEL_55:

          goto LABEL_56;
        }
      }
    }

    else
    {
      if (v1 == 6 || v1 == 7)
      {
        LOBYTE(v2) = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        return v2 & 1;
      }

      v20 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *(v20 + 16);

      v22 = 0;
      while (v21 != v22)
      {
        if (v22 >= *(v20 + 16))
        {
          __break(1u);
          goto LABEL_63;
        }

        v23 = v22 + 1;
        v24 = *(v20 + 8 * v22 + 32);

        v25 = sub_1D6DFB558(v24);

        v22 = v23;
        if (v25)
        {
          goto LABEL_55;
        }
      }
    }

LABEL_59:

    goto LABEL_60;
  }

  if (v1 > 2)
  {
    if (v1 != 3)
    {
      if (v1 == 4)
      {
        LOBYTE(v2) = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) > 0.0 && *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x60) != 254;
      }

      else
      {
        v26 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
        v39[7] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
        v27 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xA0);
        v39[8] = v26;
        v39[9] = v27;
        v40 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xB0);
        v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v39[3] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v39[4] = v28;
        v29 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
        v39[5] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        v39[6] = v29;
        v30 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v39[0] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v39[1] = v30;
        v39[2] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        LOBYTE(v2) = sub_1D60081E0(v39) == 0;
      }

      return v2 & 1;
    }

    v44.origin.x = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v44.origin.y = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v44.size.width = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v44.size.height = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    if (CGRectGetHeight(v44) == 0.0)
    {
      LOBYTE(v2) = sub_1D726337C() ^ 1;
      return v2 & 1;
    }

    goto LABEL_56;
  }

  if (!v1)
  {
    if (*(a1 + 16))
    {

      v35 = sub_1D6DFBB8C(v5);

      LOBYTE(v2) = v35 != 0.0;
      return v2 & 1;
    }

LABEL_56:
    LOBYTE(v2) = 1;
    return v2 & 1;
  }

  if (v1 != 1)
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    if (v6)
    {
      v38 = *(v6 + 16);
      if (v38)
      {

        v8 = 0;
        v9 = v6 + 64;
        v36 = v6;
        while (1)
        {
          if (v8 >= *(v6 + 16))
          {
            goto LABEL_64;
          }

          v12 = *(v9 - 16);
          v13 = v12 >> 61;
          if ((v12 >> 61) > 1)
          {
            break;
          }

          if (v13)
          {
            type metadata accessor for FormatLayoutError();
            sub_1D5D285FC();
            v10 = swift_allocError();
            *v18 = 0x69702074616F6C46;
            v19 = 0xEB000000006C6578;
LABEL_44:
            v18[1] = v19;
            swift_storeEnumTagMultiPayload();

LABEL_31:

            goto LABEL_32;
          }

          if (*(v12 + 16) > 0.0)
          {
            goto LABEL_55;
          }

LABEL_33:
          ++v8;
          v9 += 40;
          if (v38 == v8)
          {
            goto LABEL_59;
          }
        }

        if (v13 == 2)
        {
          type metadata accessor for FormatLayoutError();
          sub_1D5D285FC();
          v10 = swift_allocError();
          *v18 = 0x63732074616F6C46;
          v19 = 0xEC00000064656C61;
          goto LABEL_44;
        }

        if (v13 == 3)
        {
          type metadata accessor for FormatLayoutError();
          sub_1D5D285FC();
          v10 = swift_allocError();
          *v11 = 0xD000000000000011;
          v11[1] = 0x80000001D73C5F20;
          swift_storeEnumTagMultiPayload();

          goto LABEL_31;
        }

        v14 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v37 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        type metadata accessor for FormatLayoutError();
        sub_1D5D285FC();
        v10 = swift_allocError();
        v16 = v15;

        sub_1D7263D4C();

        strcpy(v39, "Float option: ");
        HIBYTE(v39[0]) = -18;
        MEMORY[0x1DA6F9910](v37, v14);
        v6 = v36;

        v17 = *(&v39[0] + 1);
        *v16 = *&v39[0];
        v16[1] = v17;
        swift_storeEnumTagMultiPayload();
LABEL_32:
        swift_willThrow();

        goto LABEL_33;
      }
    }

LABEL_60:
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  LOBYTE(v2) = (~*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) & 0xF000000000000007) != 0;
  return v2 & 1;
}

double sub_1D6DFBB8C(uint64_t a1)
{
  if (*(a1 + 16) == 1 && (*(a1 + 40) & 1) == 0)
  {

    sub_1D6013498();
    v1 = v7;
  }

  else
  {
    type metadata accessor for FormatLayoutError();
    sub_1D5D285FC();
    swift_allocError();
    v4 = v3;
    v5 = sub_1D6936F98(a1);
    MEMORY[0x1DA6F9910](v5);

    *v4 = 0x6E6F697461757145;
    v4[1] = 0xEA0000000000203ALL;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1D6DFBCA0(uint64_t a1)
{
  if (*(a1 + 16) == 1 && (*(a1 + 49) & 1) == 0)
  {
    v2 = *(a1 + 32);
    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = *(a1 + 40);
      type metadata accessor for FormatLayoutError();
      sub_1D5D285FC();
      swift_allocError();
      v10 = v9;
      sub_1D5E04C58(v2, v8, v7, 0);
      sub_1D7263D4C();

      MEMORY[0x1DA6F9910](v2, v8);
      *v10 = 0xD000000000000010;
      v10[1] = 0x80000001D73F3720;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D5E04C68(v2, v8, v7, 0);
    }
  }

  else
  {
    v2 = type metadata accessor for FormatLayoutError();
    sub_1D5D285FC();
    swift_allocError();
    v4 = v3;
    v5 = sub_1D6937104(a1);
    MEMORY[0x1DA6F9910](v5);

    *v4 = 0x6E6F697461757145;
    v4[1] = 0xEA0000000000203ALL;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v2;
}

BOOL sub_1D6DFBE58(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  do
  {
    v3 = v1;
    if (!v1)
    {
      break;
    }

    v4 = *v2++;

    v5 = sub_1D6DFB558(v4);

    v1 = v3 - 1;
  }

  while ((v5 & 1) != 0);
  return v3 == 0;
}

uint64_t sub_1D6DFBEBC(uint64_t a1, uint64_t a2)
{
  sub_1D6DFBF20();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6DFBF20()
{
  if (!qword_1EDF2C330)
  {
    sub_1D6DFBF78();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF2C330);
    }
  }
}

unint64_t sub_1D6DFBF78()
{
  result = qword_1EDF2C338[0];
  if (!qword_1EDF2C338[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDF2C338);
  }

  return result;
}

uint64_t sub_1D6DFBFDC(uint64_t a1)
{
  sub_1D6DFBF20();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1D6DFC074@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D66ED26C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1D6DFC0BC(void *a1)
{
  a1[1] = sub_1D66589E0();
  a1[2] = sub_1D6658F0C();
  result = sub_1D6DFC0F4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6DFC0F4()
{
  result = qword_1EC8966F8;
  if (!qword_1EC8966F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8966F8);
  }

  return result;
}

unint64_t sub_1D6DFC148(uint64_t a1)
{
  result = sub_1D6DFC170();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6DFC170()
{
  result = qword_1EC896700;
  if (!qword_1EC896700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896700);
  }

  return result;
}

void sub_1D6DFC1C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v38 - v14;
  v16 = sub_1D72577EC();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v4;
  v39 = *(v4 + 24);
  (*(v17 + 16))(v21, a2, v16, v19);
  v22 = sub_1D725B4EC();
  if (!v22)
  {
    goto LABEL_7;
  }

  v38[1] = a3;
  v23 = v22;
  v24 = [v22 fetchStartDate];

  if (v24)
  {
    sub_1D72588BC();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = sub_1D725891C();
  v27 = *(v26 - 8);
  (*(v27 + 56))(v11, v25, 1, v26);
  sub_1D5DF42F8(v11, v15);
  if ((*(v27 + 48))(v15, 1, v26) == 1)
  {
    _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v15);
LABEL_7:
    sub_1D72586EC();
    v29 = v28;
    goto LABEL_9;
  }

  sub_1D72586DC();
  v29 = v30;
  (*(v27 + 8))(v15, v26);
LABEL_9:
  v31 = sub_1D725B4CC();
  v32 = sub_1D725B4EC();
  v33 = sub_1D725B4DC();
  v34 = sub_1D725776C();
  if (a4)
  {
    a4 = sub_1D726203C();
  }

  if (v33)
  {
    v35 = sub_1D725828C();
  }

  else
  {
    v35 = 0;
  }

  v36 = objc_allocWithZone(MEMORY[0x1E69B53C0]);
  v37 = [v36 initWithType:v39 URLRequest:v34 operationID:0 requestUUID:a4 startTime:v31 HTTPResponse:v32 metrics:v29 containerName:0 error:v35];

  (*(v17 + 8))(v21, v16);
  [*(v40 + 16) logNetworkEvent_];
}

uint64_t sub_1D6DFC540()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6DFC5A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6DFD8AC();
  *a1 = result;
  return result;
}

size_t sub_1D6DFC6C4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v82 = a3;
  v9 = type metadata accessor for FormatInspectionItem(0);
  v10 = *(v9 - 8);
  *&v12 = MEMORY[0x1EEE9AC00](v9 - 8, v11).n128_u64[0];
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1)
  {
    sub_1D5EC0508(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem);
    v68 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v16 = swift_allocObject();
    v64 = xmmword_1D7273AE0;
    *(v16 + 16) = xmmword_1D7273AE0;
    v34 = *(a2 + 16);
    swift_getObjectType();
    v35 = [v34 displayName];
    v67 = sub_1D726207C();
    *&v66 = v36;

    sub_1D5EC0508(0, &qword_1EC8803C0, sub_1D5E4F38C);
    inited = swift_initStackObject();
    *(inited + 16) = v64;
    v38 = v82[7];
    v75 = v82[6];
    v76 = v38;
    v77 = v82[8];
    v78 = *(v82 + 18);
    v39 = v82[3];
    v71 = v82[2];
    v72 = v39;
    v40 = v82[5];
    v73 = v82[4];
    v74 = v40;
    v41 = v82[1];
    v69 = *v82;
    v70 = v41;
    sub_1D67F97D8(&v69, v34, &v79);
    *(inited + 56) = &type metadata for FormatInspectionGroup;
    *(inited + 64) = &off_1F518B2C0;
    v42 = swift_allocObject();
    *(inited + 32) = v42;
    *(v42 + 48) = v81;
    v43 = v80;
    *(v42 + 16) = v79;
    *(v42 + 32) = v43;
    v44 = sub_1D5F62BFC(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(inited + 32);
    v45 = sub_1D7073500(v44);

    result = sub_1D711AD20(0x746E657645, 0xE500000000000000, v45, v67, v66, (v16 + v68));
    goto LABEL_29;
  }

  if (*a1 == 1)
  {
    sub_1D5EC0508(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem);
    v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v16 = swift_allocObject();
    v66 = xmmword_1D7273AE0;
    *(v16 + 16) = xmmword_1D7273AE0;
    v17 = a4;
    v18 = *(a2 + 16);
    v65 = v4;
    v19 = [objc_msgSend(v18 eventLeagueTag)];
    swift_unknownObjectRelease();
    v20 = sub_1D726207C();
    v67 = v21;
    v68 = v20;

    sub_1D5EC0508(0, &qword_1EC8803C0, sub_1D5E4F38C);
    v22 = swift_initStackObject();
    *(v22 + 16) = v66;
    v23 = v82[7];
    v75 = v82[6];
    v76 = v23;
    v77 = v82[8];
    v78 = *(v82 + 18);
    v24 = v82[3];
    v71 = v82[2];
    v72 = v24;
    v25 = v82[5];
    v73 = v82[4];
    v74 = v25;
    v26 = v82[1];
    v69 = *v82;
    v70 = v26;
    v27 = v18;
    a4 = v17;
    v28 = [v27 eventLeagueTag];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1D67F97D8(&v69, v28, &v79);
    swift_unknownObjectRelease_n();
    *(v22 + 56) = &type metadata for FormatInspectionGroup;
    *(v22 + 64) = &off_1F518B2C0;
    v29 = swift_allocObject();
    *(v22 + 32) = v29;
    *(v29 + 48) = v81;
    v30 = v80;
    *(v29 + 16) = v79;
    *(v29 + 32) = v30;
    v31 = sub_1D5F62BFC(v22);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(v22 + 32);
    v32 = sub_1D7073500(v31);

    result = sub_1D711AD20(0x65756761654CLL, 0xE600000000000000, v32, v68, v67, (v16 + v15));
LABEL_29:
    *a4 = v16;
    return result;
  }

  v46 = [*(a2 + 16) eventCompetitorTags];
  if (!v46)
  {
LABEL_28:
    sub_1D5EC0508(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem);
    v61 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D7273AE0;
    v69 = 0u;
    v70 = 0u;
    result = sub_1D711B5C0(0x74697465706D6F43, 0xEA0000000000726FLL, &v69, (v16 + v61));
    goto LABEL_29;
  }

  v47 = v46;
  sub_1D5EC01D0();
  v48 = sub_1D726267C();

  v49 = v48;
  v50 = v48 & 0xFFFFFFFFFFFFFF8;
  v51 = v48 >> 62;
  if (v51)
  {
    goto LABEL_24;
  }

  v52 = *(v50 + 16);
  if (!v52)
  {
LABEL_27:

    goto LABEL_28;
  }

  while (1)
  {
    v53 = v49;
    *&v69 = MEMORY[0x1E69E7CC0];
    result = sub_1D6997AF0(0, v52 & ~(v52 >> 63), 0);
    if (v52 < 0)
    {
      break;
    }

    v16 = v69;
    v54 = v53;
    v65 = v5;
    v63 = a4;
    *&v66 = v53 & 0xFFFFFFFFFFFFFF8;
    if (v51)
    {
      v55 = sub_1D7263BFC();
      v54 = v53;
    }

    else
    {
      v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v51 = 0;
    v49 = v54 & 0xC000000000000001;
    v67 = v54 & 0xC000000000000001;
    v68 = v55 & ~(v55 >> 63);
    v5 = v54;
    a4 = v52;
    while (v68 != v51)
    {
      if (v67)
      {
        v56 = MEMORY[0x1DA6FB460](v51);
      }

      else
      {
        if (v51 >= *(v66 + 16))
        {
          goto LABEL_23;
        }

        v56 = *(v54 + 8 * v51 + 32);
        swift_unknownObjectRetain();
      }

      sub_1D6DFCDE8(v51, v56, v82, v14);
      swift_unknownObjectRelease();
      *&v69 = v16;
      v58 = *(v16 + 16);
      v57 = *(v16 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_1D6997AF0(v57 > 1, v58 + 1, 1);
        v16 = v69;
      }

      ++v51;
      *(v16 + 16) = v58 + 1;
      sub_1D613ADAC(v14, v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v58);
      v54 = v5;
      if (a4 == v51)
      {

        a4 = v63;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v59 = v49;
    if (!sub_1D7263BFC())
    {
      goto LABEL_27;
    }

    v60 = sub_1D7263BFC();
    v49 = v59;
    v52 = v60;
    if (!v60)
    {

      v16 = MEMORY[0x1E69E7CC0];
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6DFCDE8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  strcpy(v23, "Competitor [");
  BYTE13(v23[0]) = 0;
  HIWORD(v23[0]) = -5120;
  *&v25[0] = a1;
  v7 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v7);

  MEMORY[0x1DA6F9910](93, 0xE100000000000000);
  v8 = v23[0];
  swift_getObjectType();
  v9 = [a2 displayName];
  v10 = sub_1D726207C();
  v12 = v11;

  sub_1D5EC0508(0, &qword_1EC8803C0, sub_1D5E4F38C);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v14 = *(a3 + 112);
  v23[6] = *(a3 + 96);
  v23[7] = v14;
  v23[8] = *(a3 + 128);
  v24 = *(a3 + 144);
  v15 = *(a3 + 48);
  v23[2] = *(a3 + 32);
  v23[3] = v15;
  v16 = *(a3 + 80);
  v23[4] = *(a3 + 64);
  v23[5] = v16;
  v17 = *(a3 + 16);
  v23[0] = *a3;
  v23[1] = v17;
  sub_1D67F97D8(v23, a2, v25);
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v18 = swift_allocObject();
  *(inited + 32) = v18;
  *(v18 + 48) = v26;
  v19 = v25[1];
  *(v18 + 16) = v25[0];
  *(v18 + 32) = v19;
  v20 = sub_1D5F62BFC(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(inited + 32);
  v21 = sub_1D7073500(v20);

  return sub_1D711AD20(v8, *(&v8 + 1), v21, v10, v12, a4);
}

uint64_t _s8NewsFeed24FormatSportsEventBindingV7CommandO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (!(v5 >> 6))
  {
    if (v9 >= 0x40)
    {
LABEL_11:
      sub_1D5E1DE60(v3, v2, v4, v5, sub_1D5E1DA1C);
      sub_1D5E1DE60(v7, v6, v8, v9, sub_1D5E1DA1C);
      sub_1D5E1DE60(v3, v2, v4, v5, sub_1D5E1DE10);
      sub_1D5E1DE60(v7, v6, v8, v9, sub_1D5E1DE10);
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  if (v5 >> 6 == 1)
  {
    if ((v9 & 0xC0) != 0x40)
    {
      goto LABEL_11;
    }

LABEL_6:
    v17 = *a1;
    v18 = v2;
    LOBYTE(v19) = v4;
    v13 = v7;
    v14 = v6;
    LOBYTE(v15) = v8;
    sub_1D5E1DE60(v7, v6, v8, v9, sub_1D5E1DA1C);
    sub_1D5E1DE60(v3, v2, v4, v5, sub_1D5E1DA1C);
    sub_1D5E1DE60(v3, v2, v4, v5, sub_1D5E1DA1C);
    sub_1D5E1DE60(v7, v6, v8, v9, sub_1D5E1DA1C);
    v10 = static FormatTagBinding.Command.== infix(_:_:)(&v17, &v13);
    sub_1D5E1DE60(v3, v2, v4, v5, sub_1D5E1DE10);
    sub_1D5E1DE60(v7, v6, v8, v9, sub_1D5E1DE10);
    sub_1D5E1DE60(v7, v6, v8, v9, sub_1D5E1DE10);
    sub_1D5E1DE60(v3, v2, v4, v5, sub_1D5E1DE10);
    return v10 & 1;
  }

  if ((v9 & 0xC0) != 0x80)
  {
    goto LABEL_11;
  }

  v17 = *a1;
  v18 = v2;
  v19 = v4;
  v20 = v5 & 0x3F;
  v13 = v7;
  v14 = v6;
  v15 = v8;
  v16 = v9 & 0x3F;
  if (v3 != v7)
  {
    goto LABEL_11;
  }

  sub_1D5E1DE60(v3, v6, v8, v9, sub_1D5E1DA1C);
  sub_1D5E1DE60(v3, v2, v4, v5, sub_1D5E1DA1C);
  sub_1D5E1DE60(v3, v2, v4, v5, sub_1D5E1DA1C);
  sub_1D5E1DE60(v3, v6, v8, v9, sub_1D5E1DA1C);
  v11 = static FormatTagBinding.Command.== infix(_:_:)(&v18, &v14);
  sub_1D5E1DE60(v3, v2, v4, v5, sub_1D5E1DE10);
  sub_1D5E1DE60(v3, v6, v8, v9, sub_1D5E1DE10);
  sub_1D5E1DE60(v3, v6, v8, v9, sub_1D5E1DE10);
  sub_1D5E1DE60(v3, v2, v4, v5, sub_1D5E1DE10);
  if ((v11 & 1) == 0)
  {
LABEL_12:
    v10 = 0;
    return v10 & 1;
  }

  v10 = 1;
  return v10 & 1;
}

unint64_t sub_1D6DFD344(uint64_t a1)
{
  result = sub_1D6DFD36C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6DFD36C()
{
  result = qword_1EC896710;
  if (!qword_1EC896710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896710);
  }

  return result;
}

unint64_t sub_1D6DFD3C0(void *a1)
{
  a1[1] = sub_1D666DE84();
  a1[2] = sub_1D66FFCEC();
  result = sub_1D6DFD3F8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6DFD3F8()
{
  result = qword_1EC896728;
  if (!qword_1EC896728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896728);
  }

  return result;
}

uint64_t sub_1D6DFD44C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 25))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 24) & 0x3C | (*(a1 + 24) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6DFD49C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

unint64_t sub_1D6DFD530()
{
  result = qword_1EC896730;
  if (!qword_1EC896730)
  {
    sub_1D6DFD588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896730);
  }

  return result;
}

void sub_1D6DFD588()
{
  if (!qword_1EC896738)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC896738);
    }
  }
}

unint64_t sub_1D6DFD5DC()
{
  result = qword_1EC896740;
  if (!qword_1EC896740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896740);
  }

  return result;
}

unint64_t sub_1D6DFD630()
{
  result = qword_1EC896748;
  if (!qword_1EC896748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896748);
  }

  return result;
}

size_t sub_1D6DFD684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = 0;
  v30 = *(a1 + 144);
  v5 = *(a1 + 112);
  v29[6] = *(a1 + 96);
  v29[7] = v5;
  v29[8] = *(a1 + 128);
  v6 = *(a1 + 48);
  v29[2] = *(a1 + 32);
  v29[3] = v6;
  v7 = *(a1 + 80);
  v29[4] = *(a1 + 64);
  v29[5] = v7;
  v8 = *(a1 + 16);
  v29[0] = *a1;
  v29[1] = v8;
  v9 = *(a2 + 16);
  v27[0] = *a2;
  v27[1] = v9;
  v28 = *(a2 + 32);
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v24 = byte_1F50F7478[v4 + 32];
    result = sub_1D6DFC6C4(&v24, v27, v29, v25);
    v12 = *&v25[0];
    v13 = *(*&v25[0] + 16);
    v14 = v10[2];
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v15 <= v10[3] >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v17 = v14 + v13;
      }

      else
      {
        v17 = v14;
      }

      v10 = sub_1D698BAE0(isUniquelyReferenced_nonNull_native, v17, 1, v10);
      if (*(v12 + 16))
      {
LABEL_13:
        v18 = (v10[3] >> 1) - v10[2];
        result = type metadata accessor for FormatInspectionItem(0);
        if (v18 < v13)
        {
          goto LABEL_20;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v19 = v10[2];
          v20 = __OFADD__(v19, v13);
          v21 = v19 + v13;
          if (v20)
          {
            goto LABEL_21;
          }

          v10[2] = v21;
        }

        goto LABEL_3;
      }
    }

    if (v13)
    {
      goto LABEL_19;
    }

LABEL_3:
    if (++v4 == 3)
    {
      v22 = sub_1D5F62998(v10);

      sub_1D6795150(0x646E616D6D6F43, 0xE700000000000000, 0, 0, v22, v25);

      v23 = v25[1];
      *a3 = v25[0];
      *(a3 + 16) = v23;
      *(a3 + 32) = v26;
      return result;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D6DFD8AC()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6DFD8F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D6DFD96C(uint64_t a1, __int128 *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v41 = a3;
  v9 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FormatCustomItem.Resolved();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 4);
  v18 = *(a2 + 5);
  v19 = a4[1];
  v20 = a4[2];
  v21 = a4[4];
  v47 = a4[3];
  v48 = v20;
  v45 = v19;
  v46 = v21;
  v22 = a4[5];
  v42 = a4[6];
  v43 = a4[7];
  v44 = v22;
  v23 = a1;
  sub_1D5B68374(a1, v5 + 16);
  v24 = *a2;
  *(v5 + 72) = a2[1];
  *(v5 + 56) = v24;
  *(v5 + 88) = v17;
  *(v5 + 96) = v18;
  v25 = v41;
  sub_1D5CED2F0(v41, v12);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1D6719A04(v12, v16);
    v26 = *&v16[*(v13 + 28)];

    sub_1D5D1EC18(v16, type metadata accessor for FormatCustomItem.Resolved);
    v27 = v44;
  }

  else
  {
    sub_1D5D1EC18(v12, type metadata accessor for FormatContentSlotItemObject.Resolved);
    v28 = FormatContentSlotItemObject.Resolved.identifier.getter();
    v30 = v42;
    v27 = v44;
    if (*(v42 + 16))
    {
      v31 = sub_1D5B69D90(v28, v29);
      v33 = v32;

      if (v33)
      {
        v26 = *(*(v30 + 56) + 8 * v31);
      }

      else
      {
        v26 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {

      v26 = MEMORY[0x1E69E7CC0];
    }
  }

  *(v5 + 104) = v26;
  v34 = FormatContentSlotItemObject.Resolved.identifier.getter();
  if (*(v27 + 16))
  {
    v36 = sub_1D5B69D90(v34, v35);
    v38 = v37;

    if (v38)
    {
      v39 = *(*(v27 + 56) + 8 * v36);
    }

    else
    {

      v39 = MEMORY[0x1E69E7CD0];
    }
  }

  else
  {

    v39 = MEMORY[0x1E69E7CD0];
  }

  *(v5 + 112) = v39;
  swift_beginAccess();
  v49 = 1;
  sub_1D726009C();
  swift_endAccess();
  sub_1D5D1EC18(v25, type metadata accessor for FormatContentSlotItemObject.Resolved);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v5;
}

uint64_t sub_1D6DFDCE4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_1D67F58E4(*(v0 + 56), *(v0 + 64));

  v1 = OBJC_IVAR____TtC8NewsFeed26DebugFormatBindingTreeItem__isExpanded;
  sub_1D5EF05B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatBindingTreeItem()
{
  result = qword_1EC896760;
  if (!qword_1EC896760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6DFDDFC()
{
  sub_1D5EF05B8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D6DFDEB0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7463757274736564;
  v4 = 0xEB00000000657669;
  if (v2 != 1)
  {
    v3 = 0x656E696C6E69;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7463757274736564;
  v8 = 0xEB00000000657669;
  if (*a2 != 1)
  {
    v7 = 0x656E696C6E69;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DFDFBC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6DFE064()
{
  sub_1D72621EC();
}

uint64_t sub_1D6DFE0F8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6DFE19C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6DFE4A0();
  *a1 = result;
  return result;
}

void sub_1D6DFE1CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEB00000000657669;
  v5 = 0x7463757274736564;
  if (v2 != 1)
  {
    v5 = 0x656E696C6E69;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D6DFE240(void *a1)
{
  a1[1] = sub_1D6708360();
  a1[2] = sub_1D6708138();
  result = sub_1D6DFE278();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6DFE278()
{
  result = qword_1EC896770;
  if (!qword_1EC896770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896770);
  }

  return result;
}

unint64_t sub_1D6DFE2CC(uint64_t a1)
{
  result = sub_1D6DFE2F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6DFE2F4()
{
  result = qword_1EC896778;
  if (!qword_1EC896778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896778);
  }

  return result;
}

unint64_t sub_1D6DFE348(uint64_t a1)
{
  *(a1 + 8) = sub_1D6DFE378();
  result = sub_1D6DFE3CC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6DFE378()
{
  result = qword_1EC896780;
  if (!qword_1EC896780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896780);
  }

  return result;
}

unint64_t sub_1D6DFE3CC()
{
  result = qword_1EDF11880;
  if (!qword_1EDF11880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11880);
  }

  return result;
}

uint64_t sub_1D6DFE4A0()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t FormatVideoPlayerNode.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 192);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

uint64_t FormatVideoPlayerNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatVideoPlayerNode.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 232);

  return v1;
}

uint64_t FormatVideoPlayerNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

unint64_t FormatVideoPlayerNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

uint64_t FormatVideoPlayerNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

void FormatVideoPlayerNode.overlayContent.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 144);
  *(a1 + 48) = v8;
  sub_1D62B7B54(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t FormatVideoPlayerNode.isLive.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  v5 = *(v1 + 176);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return sub_1D60AFDB4(v2, v3, v4, v5);
}

uint64_t FormatVideoPlayerNode.zIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 184) = a1;
  return result;
}

unint64_t sub_1D6DFE900(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 192);
  sub_1D5EB1500(v2);
  *(v3 + 192) = v2;
  return sub_1D5EB15C4(v4);
}

unint64_t FormatVideoPlayerNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 192);
  *(v1 + 192) = v2;
  return sub_1D5EB15C4(v3);
}

uint64_t FormatVideoPlayerNode.isUserInteractionEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 200) = a1;
  return result;
}

void FormatVideoPlayerNode.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  *a1 = *(v1 + 208);
  *(a1 + 8) = v2;
}

uint64_t sub_1D6DFEA9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 224) = v2;
}

uint64_t FormatVideoPlayerNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 224) = a1;
}

uint64_t sub_1D6DFEB94(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 232) = v3;
  *(v4 + 240) = v2;
}

uint64_t FormatVideoPlayerNode.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 232) = a1;
  *(v2 + 240) = a2;
}

uint64_t FormatVideoPlayerNode.allowsPrerollAds.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 248);
  v4 = *(v1 + 256);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v1 + 264);
  *(a1 + 16) = v5;
  return sub_1D6189668(v3, v4, v5);
}

uint64_t FormatVideoPlayerNode.allowsPrerollAds.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  swift_beginAccess();
  v5 = *(v1 + 248);
  v6 = *(v1 + 256);
  *(v1 + 248) = v2;
  *(v1 + 256) = v3;
  v7 = *(v1 + 264);
  *(v1 + 264) = v4;
  return sub_1D60107F0(v5, v6, v7);
}

uint64_t FormatVideoPlayerNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[34];
  v3 = v1[35];
  v4 = v1[36];
  v5 = v1[37];
  v6 = v1[38];
  v7 = v1[39];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6);
}

uint64_t FormatVideoPlayerNode.__allocating_init(identifier:size:resize:adjustments:style:animation:content:posterContent:posterStyle:overlayContent:isLive:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:selectors:name:allowsPrerollAds:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t a10, uint64_t a11, __int128 *a12, uint64_t a13, uint64_t *a14, char a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21)
{
  v23 = swift_allocObject();
  v24 = *a3;
  v25 = *a4;
  v35 = *a9;
  v36 = *a8;
  v40 = *(a11 + 40);
  v41 = *(a11 + 32);
  v39 = *(a11 + 48);
  v38 = *a12;
  v37 = *(a12 + 2);
  v26 = *(a12 + 24);
  v27 = *a14;
  v44 = *a16;
  v28 = *(a16 + 8);
  v48 = a20[1];
  v49 = *a20;
  v50 = *(a20 + 16);
  *(v23 + 248) = 0u;
  v51 = *(a21 + 40);
  v53 = *(a21 + 32);
  *(v23 + 232) = 0u;
  *(v23 + 264) = -1;
  swift_beginAccess();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  *(v23 + 32) = v24;
  *(v23 + 40) = v25;
  swift_beginAccess();
  *(v23 + 48) = a5;
  *(v23 + 56) = a6;
  *(v23 + 64) = a7;
  *(v23 + 72) = v36;
  *(v23 + 80) = v35;
  *(v23 + 88) = a10;
  v29 = *(a11 + 16);
  *(v23 + 96) = *a11;
  *(v23 + 112) = v29;
  *(v23 + 128) = v41;
  *(v23 + 136) = v40;
  *(v23 + 144) = v39;
  *(v23 + 152) = v38;
  *(v23 + 168) = v37;
  *(v23 + 176) = v26;
  swift_beginAccess();
  *(v23 + 184) = a13;
  swift_beginAccess();
  *(v23 + 192) = v27;
  swift_beginAccess();
  *(v23 + 200) = a15;
  *(v23 + 208) = v44;
  *(v23 + 216) = v28;
  swift_beginAccess();
  *(v23 + 224) = a17;
  swift_beginAccess();
  *(v23 + 232) = a18;
  *(v23 + 240) = a19;

  swift_beginAccess();
  v30 = *(v23 + 248);
  v31 = *(v23 + 256);
  *(v23 + 248) = v49;
  *(v23 + 256) = v48;
  v32 = *(v23 + 264);
  *(v23 + 264) = v50;
  sub_1D60107F0(v30, v31, v32);
  v33 = *(a21 + 16);
  *(v23 + 272) = *a21;
  *(v23 + 288) = v33;
  *(v23 + 304) = v53;
  *(v23 + 312) = v51;
  return v23;
}

uint64_t FormatVideoPlayerNode.init(identifier:size:resize:adjustments:style:animation:content:posterContent:posterStyle:overlayContent:isLive:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:selectors:name:allowsPrerollAds:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t a10, uint64_t a11, __int128 *a12, uint64_t a13, uint64_t *a14, char a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21)
{
  v23 = *a3;
  v24 = *a4;
  v25 = *a8;
  v26 = *a9;
  v37 = *(a11 + 40);
  v38 = *(a11 + 32);
  v36 = *(a11 + 48);
  v35 = *a12;
  v34 = *(a12 + 2);
  v33 = *(a12 + 24);
  v41 = *a14;
  v45 = *a16;
  v44 = *(a16 + 8);
  v48 = a20[1];
  v49 = *a20;
  v50 = *(a20 + 16);
  *(v21 + 248) = 0u;
  *(v21 + 264) = -1;
  *(v21 + 232) = 0u;
  v46 = *(a21 + 40);
  v47 = *(a21 + 32);
  swift_beginAccess();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = v23;
  *(v21 + 40) = v24;
  swift_beginAccess();
  *(v21 + 48) = a5;
  *(v21 + 56) = a6;
  *(v21 + 64) = a7;
  *(v21 + 72) = v25;
  *(v21 + 80) = v26;
  *(v21 + 88) = a10;
  v27 = *(a11 + 16);
  *(v21 + 96) = *a11;
  *(v21 + 112) = v27;
  *(v21 + 128) = v38;
  *(v21 + 136) = v37;
  *(v21 + 144) = v36;
  *(v21 + 152) = v35;
  *(v21 + 168) = v34;
  *(v21 + 176) = v33;
  swift_beginAccess();
  *(v21 + 184) = a13;
  swift_beginAccess();
  *(v21 + 192) = v41;
  swift_beginAccess();
  *(v21 + 200) = a15;
  *(v21 + 208) = v45;
  *(v21 + 216) = v44;
  swift_beginAccess();
  *(v21 + 224) = a17;
  swift_beginAccess();
  *(v21 + 232) = a18;
  *(v21 + 240) = a19;

  swift_beginAccess();
  v28 = *(v21 + 248);
  v29 = *(v21 + 256);
  *(v21 + 248) = v49;
  *(v21 + 256) = v48;
  v30 = *(v21 + 264);
  *(v21 + 264) = v50;
  sub_1D60107F0(v28, v29, v30);
  v31 = *(a21 + 16);
  *(v21 + 272) = *a21;
  *(v21 + 288) = v31;
  *(v21 + 304) = v47;
  *(v21 + 312) = v46;
  return v21;
}

uint64_t FormatVideoPlayerNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 32));

  sub_1D62B7BE0(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  sub_1D60AFE14(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));
  sub_1D5EB15C4(*(v0 + 192));

  sub_1D60107F0(*(v0 + 248), *(v0 + 256), *(v0 + 264));
  sub_1D5EB2398(*(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304));
  return v0;
}

uint64_t FormatVideoPlayerNode.__deallocating_deinit()
{
  FormatVideoPlayerNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6DFF3DC(uint64_t a1, uint64_t a2)
{
  result = sub_1D6E01F4C(&qword_1EC896788, a2, type metadata accessor for FormatVideoPlayerNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6DFF458(void *a1, uint64_t a2)
{
  a1[1] = sub_1D6E01F4C(&qword_1EDF28FE0, a2, type metadata accessor for FormatVideoPlayerNode);
  a1[2] = sub_1D6E01F4C(&qword_1EDF0DEB8, v3, type metadata accessor for FormatVideoPlayerNode);
  result = sub_1D6E01F4C(&qword_1EC896790, v4, type metadata accessor for FormatVideoPlayerNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6DFF504@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D66CEA9C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D6DFF560(uint64_t a1, uint64_t a2)
{
  result = sub_1D6E01F4C(&qword_1EC896798, a2, type metadata accessor for FormatVideoPlayerNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6DFF5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v53 = a5;
  v54 = a8;
  v51 = a2;
  sub_1D6BB646C(0, &qword_1EDF3BEE0, MEMORY[0x1E69D74C0]);
  v50 = v15;
  v52 = *(v15 - 8);
  v16 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v49 = v42 - v18;
  sub_1D6BB646C(0, &qword_1EDF3BF10, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v56 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = (v42 - v22);
  v59 = a1;
  KeyPath = swift_getKeyPath();
  swift_unownedRetainStrong();
  v25 = *(a6 + 32);
  sub_1D5C82CD8(v25);

  v58 = v25;
  v55 = a7;
  v26 = v57;
  sub_1D5BEB9F4(a7, a3, a4, v23);
  sub_1D5C92A8C(v58);
  if (!v26)
  {
    v44 = v16;
    v45 = a3;
    v47 = v23;
    v48 = KeyPath;
    v57 = v20;
    v46 = a4;
    swift_unownedRetainStrong();
    swift_beginAccess();
    v28 = *(a6 + 48);

    v29 = v55;
    v30 = sub_1D618EFB4(v55, v28);
    v42[1] = a9;
    v43 = a10;

    v31 = v51;
    v32 = v52;
    v33 = *(v52 + 16);
    v34 = v49;
    v51 = v30;
    v35 = v50;
    v33(v49, v31, v50);
    v36 = (*(v32 + 80) + 64) & ~*(v32 + 80);
    v44 = (v44 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    v38 = v45;
    v39 = v46;
    *(v37 + 2) = a6;
    *(v37 + 3) = v38;
    v40 = v54;
    *(v37 + 4) = v39;
    *(v37 + 5) = v40;
    *(v37 + 6) = a9;
    *(v37 + 7) = v29;
    (*(v32 + 32))(&v37[v36], v34, v35);
    *&v37[v44] = v43;
    swift_unownedRetain();
    sub_1D5EB563C(0);
    sub_1D6E01F4C(&qword_1EDF3C118, 255, sub_1D5EB563C);

    v41 = v47;
    sub_1D7259B1C();
    (*(v56 + 8))(v41, v57);
  }
}

uint64_t sub_1D6DFF9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t *a9@<X8>, double a10@<D0>, double a11@<D1>, CGFloat a12@<D2>, CGFloat a13@<D3>)
{
  v323 = a8;
  v324 = a9;
  v349 = a5;
  v350 = a7;
  v352 = a6;
  sub_1D6047B58();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v334 = &v309 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v335 = &v309 - v26;
  v27 = type metadata accessor for FormatNodeStateData.Data();
  v331 = *(v27 - 8);
  v332 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  *&v333 = &v309 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = type metadata accessor for FormatVideoPlayerData();
  MEMORY[0x1EEE9AC00](v330, v30);
  v337 = (&v309 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_1D72585BC();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v34);
  v329 = &v309 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v341 = &v309 - v38;
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v336 = &v309 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v328 = (&v309 - v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  v325 = &v309 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v326 = &v309 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v309 - v53;
  swift_unownedRetainStrong();
  v55 = *(a1 + 80);

  *&v367 = v55;
  v338 = a3;
  v339 = a2;
  v348 = a4;
  sub_1D6F7D3CC(a2, a3, a4);
  v57 = v56;

  *&v327 = *(v349 + 32);
  v58 = *(v327 + 32);
  swift_unownedRetainStrong();
  v59 = *(a1 + 88);

  v351 = a1;

  if (!v59)
  {
    v346 = v57;
    goto LABEL_6;
  }

  v60 = v57;
  v61 = *(v59 + 248);
  v62 = *(v59 + 256);
  sub_1D62B5D88(v61);

  if (v61)
  {
    if (v61 == 1)
    {
      v346 = v60;
LABEL_6:
      v347 = v58;
      v340 = v54;
      v321 = v33;
      v322 = v32;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v344 = 0u;
      v345 = 0u;
      v342 = 0u;
      v343 = 0u;
      goto LABEL_16;
    }

    v70 = v348;
    v76 = v378;
    v77 = sub_1D6E7C848(0.0, 0.0, a12, a13, v348, v61);
    v378 = v76;
    if (v76)
    {
LABEL_11:

      sub_1D62B5D44(v61);
    }

    v66 = v77;
    v67 = v78;
    v68 = v79;
    v69 = v80;

    if (!v62)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v66 = 0.0;
    v67 = 0.0;
    v68 = a12;
    v69 = a13;
    v70 = v348;
    if (!v62)
    {
LABEL_13:
      v346 = v60;
      v347 = v58;
      v340 = v54;
      v82 = 0uLL;
      v83 = 0uLL;
      goto LABEL_15;
    }
  }

  v71 = v378;
  *&v72 = sub_1D6E7C848(0.0, 0.0, v68, v69, v70, v62);
  v378 = v71;
  if (v71)
  {
    goto LABEL_11;
  }

  v346 = v60;
  v347 = v58;
  v340 = v54;
  v344 = v74;
  v345 = v72;
  v342 = v73;
  v343 = v75;

  *&v83 = v344;
  *&v82 = v345;
  *(&v82 + 1) = v342;
  *(&v83 + 1) = v343;
LABEL_15:
  v321 = v33;
  v322 = v32;
  v376[0] = v82;
  v376[1] = v83;
  v377 = v62 == 0;
  sub_1D69FD714(v376, &v367, v66, v67, v68, v69);
  sub_1D62B5D44(v61);
  v344 = v368;
  v345 = v367;
  v342 = v370;
  v343 = v369;
  v63 = v371;
  v64 = v372;
  v65 = v373;
LABEL_16:
  v84 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext;
  v85 = v352;
  sub_1D7259F1C();
  v87 = v86;
  v88 = sub_1D7259EBC();
  v89 = type metadata accessor for FormatImageNodeContext();
  v90 = swift_allocObject();
  *(v90 + 16) = a12;
  *(v90 + 24) = a13;
  *(v90 + 32) = v87;
  *(v90 + 40) = v88;
  v91 = v344;
  *(v90 + 48) = v345;
  *(v90 + 64) = v91;
  v92 = v342;
  *(v90 + 80) = v343;
  *(v90 + 96) = v92;
  *(v90 + 112) = v63;
  *(v90 + 120) = v64;
  *(v90 + 128) = v65;
  v93 = v351;
  swift_unownedRetainStrong();
  v94 = *(v93 + 80);

  *&v367 = v94;
  v95 = v378;
  sub_1D6F7D724(v85, v350, v90, v365);
  if (v95)
  {
  }

  *&v345 = v89;

  v347 = v365[0];
  v96 = v348;
  v97 = v340;
  sub_1D6B7C374(*(v348 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v340);
  v320 = v84;
  v98 = v341;
  v99 = type metadata accessor for FeedHeadline(0);
  v346 = *(v99 - 8);
  v100 = v346 + 56;
  *&v344 = *(v346 + 56);
  (v344)(v97, 0, 1, v99);
  v101 = v96 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext;
  LODWORD(v348) = *(v101 + *(type metadata accessor for GroupLayoutContext() + 44));
  v102 = v351;
  swift_unownedRetainStrong();
  v103 = *(v102 + 72);

  *&v367 = v103;
  v104 = v352;
  sub_1D69FA148(v352, v350, v98);
  *&v342 = v100;
  *&v343 = v99;

  swift_unownedRetainStrong();
  v106 = *(v102 + 152);
  v105 = *(v102 + 160);
  v107 = *(v102 + 168);
  LOBYTE(v103) = *(v102 + 176);
  sub_1D60AFDB4(v106, v105, v107, v103);

  *&v367 = v106;
  *(&v367 + 1) = v105;
  if (v103)
  {
    LOBYTE(v368) = v107 & 1;
    sub_1D725A7EC();
    v108 = FormatBoolean.value(contextLayoutOptions:)(v365[0]);
    v109 = v322;
    v378 = 0;
    v111 = v108;

    v112 = v106;
    v113 = v105;
    v114 = v107;
    v115 = 1;
  }

  else
  {
    *&v368 = v107;
    v110 = sub_1D72459C4(v104);
    v109 = v322;
    v378 = 0;
    v111 = v110;
    v112 = v106;
    v113 = v105;
    v114 = v107;
    v115 = 0;
  }

  sub_1D60AFE14(v112, v113, v114, v115);
  v322 = v109;
  v116 = v351;
  swift_unownedRetainStrong();
  v117 = *(v116 + 96);
  v118 = *(v116 + 104);
  v119 = *(v116 + 112);
  v121 = *(v116 + 128);
  v120 = *(v116 + 136);
  v122 = *(v116 + 144);
  v319 = *(v116 + 120);
  sub_1D62B7B54(v117, v118, v119, v319, v121, v120, v122);

  if (v119 == 1)
  {
    LODWORD(v318) = v111;
    LODWORD(v326) = 0;
    v123 = 0;
    v124 = 0;
    *&v342 = 0;
    *&v344 = 0;
    v125 = 0.0;
    *&v345 = 0xC000000000000000;
    v126 = v378;
    v127 = v336;
    v128 = v343;
    v129 = v346;
    goto LABEL_61;
  }

  v314 = v118;
  v315 = v121;
  v316 = v120;
  LODWORD(v317) = v122;
  v363 = v117;
  *&v367 = 0;
  *(&v367 + 1) = 0xE000000000000000;
  v313 = v117;

  sub_1D7263D4C();

  *&v367 = v339;
  *(&v367 + 1) = v338;

  MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73F3870);
  sub_1D6F7D3CC(v367, *(&v367 + 1), v352);

  if (!v119)
  {
    goto LABEL_26;
  }

  v130 = *(v119 + 248);
  v131 = *(v119 + 256);
  if (v130)
  {
    if (v130 == 1)
    {
LABEL_26:
      LODWORD(v318) = v111;
      *&v327 = v119;

      v132 = 0;
      v133 = 0;
      v134 = 0;
      v311 = 0u;
      v312 = 0u;
      v309 = 0u;
      v310 = 0u;
      goto LABEL_36;
    }

    sub_1D62B5D88(v130);

    v139 = v378;
    v140 = sub_1D6E7C848(0.0, 0.0, a12, a13, v352, v130);
    v378 = v139;
    if (v139)
    {
LABEL_32:

      sub_1D62B5D44(v130);

      sub_1D62B7BE0(v313, v314, v119, v319, v315, v316, v317);

      v149 = v340;
LABEL_38:
      v161 = v322;
      v162 = v341;

      (*(v321 + 8))(v162, v161);
      return sub_1D6E02060(v149, sub_1D5B69BE0);
    }

    v135 = v140;
    v136 = v141;
    v137 = v142;
    v138 = v143;
  }

  else
  {

    sub_1D62B5D88(0);
    v135 = 0.0;
    v136 = 0.0;
    v137 = a12;
    v138 = a13;
  }

  if (v131)
  {

    v144 = v378;
    *&v145 = sub_1D6E7C848(0.0, 0.0, v137, v138, v352, v131);
    v378 = v144;
    if (v144)
    {
      goto LABEL_32;
    }

    LODWORD(v318) = v111;
    v327 = v145;
    v311 = v148;
    v312 = v147;
    v310 = v146;

    *&v150 = v327;
    *(&v150 + 1) = v310;
    *&v151 = v312;
    *(&v151 + 1) = v311;
  }

  else
  {
    LODWORD(v318) = v111;
    v150 = 0uLL;
    v151 = 0uLL;
  }

  *&v327 = v119;
  v374[0] = v150;
  v374[1] = v151;
  v375 = v131 == 0;
  sub_1D69FD714(v374, &v367, v135, v136, v137, v138);
  sub_1D62B5D44(v130);
  v311 = v368;
  v312 = v367;
  v309 = v370;
  v310 = v369;
  v134 = v371;
  v133 = v372;
  v132 = v373;
LABEL_36:
  v152 = v352;
  sub_1D7259F1C();
  v154 = v153;
  v155 = sub_1D7259EBC();
  v156 = swift_allocObject();
  *(v156 + 16) = a12;
  *(v156 + 24) = a13;
  *(v156 + 32) = v154;
  *(v156 + 40) = v155;
  v157 = v311;
  *(v156 + 48) = v312;
  *(v156 + 64) = v157;
  v158 = v309;
  *(v156 + 80) = v310;
  *(v156 + 96) = v158;
  *(v156 + 112) = v134;
  *(v156 + 120) = v133;
  *(v156 + 128) = v132;
  v159 = v313;
  *&v367 = v313;

  v160 = v378;
  sub_1D6F7D724(v152, v350, v156, v365);
  v149 = v340;
  if (v160)
  {

    sub_1D62B7BE0(v159, v314, v327, v319, v315, v316, v317);

    goto LABEL_38;
  }

  *&v345 = v365[0];
  *&v367 = v314;
  sub_1D5DEA234(v314);
  v125 = sub_1D6A9D5D4(v152);
  v116 = v351;
  v127 = v336;
  v164 = v325;
  v163 = v326;
  sub_1D5CBF568(v367);
  sub_1D6B7C374(*(v152 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v163);
  v165 = v343;
  (v344)(v163, 0, 1, v343);
  sub_1D6E01FF8(v163, v164, sub_1D5B69BE0);
  if ((*(v346 + 48))(v164, 1, v165) == 1)
  {
    sub_1D6E02060(v164, sub_1D5B69BE0);
  }

  else
  {
    v166 = *(v164 + 40);
    swift_unknownObjectRetain();
    sub_1D6E02060(v164, type metadata accessor for FeedHeadline);
    [v166 videoDuration];
    v168 = v167;
    swift_unknownObjectRelease();
    if (v168 > 0.0)
    {
      if (v168 >= 60.0)
      {
        v169 = 1;
      }

      else
      {
        v169 = 8;
      }

      v170 = v316;
      if (qword_1EC87D810 != -1)
      {
        swift_once();
      }

      v171 = qword_1EC88BBE0;
      [qword_1EC88BBE0 setAllowedUnits_];
      [v171 setZeroFormattingBehavior_];
      if (qword_1EC87D810 != -1)
      {
        swift_once();
      }

      v172 = [v171 stringFromTimeInterval_];
      v116 = v351;
      v163 = v326;
      if (v172)
      {
        v173 = v172;
        *&v342 = sub_1D726207C();
        *&v344 = v174;
      }

      else
      {
        *&v342 = 0;
        *&v344 = 0;
      }

      v175 = v317;
      goto LABEL_54;
    }
  }

  *&v342 = 0;
  *&v344 = 0;
  v175 = v317;
  v170 = v316;
LABEL_54:
  *&v367 = v315;
  *(&v367 + 1) = v170;
  LOBYTE(v368) = v175 & 1;
  sub_1D725A7EC();
  v126 = 0;
  LODWORD(v326) = FormatBoolean.value(contextLayoutOptions:)(v365[0]);
  sub_1D6E02060(v163, sub_1D5B69BE0);

  v123 = v327;
  v128 = v343;
  v129 = v346;
  v176 = v316;
  if (v319)
  {
    v124 = *(v319 + 16);
    swift_beginAccess();
    if (*(*(v124 + 16) + 16))
    {
    }

    else
    {

      v124 = 0;
    }

    v177 = v319;
  }

  else
  {

    v177 = 0;
    v124 = 0;
  }

  sub_1D62B7BE0(v313, v314, v123, v177, v315, v176, v317);
LABEL_61:
  v350 = v124;
  *&v327 = v123;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v178 = *(v116 + 264);
  if (v178 == 255)
  {

    v182 = 2;
  }

  else
  {
    v179 = *(v116 + 248);
    v180 = *(v116 + 256);
    sub_1D5E04CC4(v179);

    v365[0] = v179;
    v365[1] = v180;
    v366 = v178 & 1;
    sub_1D725A7EC();
    v181 = FormatBoolean.value(contextLayoutOptions:)(v363);
    if (v126)
    {

      sub_1D60107F0(v179, v180, v178);
      v126 = 0;
      v182 = 2;
    }

    else
    {
      v183 = v181;

      sub_1D60107F0(v179, v180, v178);
      v182 = v183 & 1;
    }

    v127 = v336;
    v128 = v343;
    v129 = v346;
  }

  v184 = v328;
  sub_1D6E01FF8(v340, v328, sub_1D5B69BE0);
  v185 = *(v129 + 48);
  v186 = v185(v184, 1, v128);
  v378 = v126;
  if (v186 == 1)
  {
    sub_1D6E02060(v184, sub_1D5B69BE0);
    v346 = 0;
    *&v343 = 0;
  }

  else
  {
    v187 = v184[1];
    v346 = *v184;
    *&v343 = v187;

    sub_1D6E02060(v184, type metadata accessor for FeedHeadline);
  }

  v188 = v321;
  v189 = *(v352 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
  v190 = *(v352 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier + 8);
  sub_1D6E01FF8(v340, v127, sub_1D5B69BE0);
  if (v185(v127, 1, v128) == 1)
  {

    sub_1D6E02060(v127, sub_1D5B69BE0);
    v191 = 0;
  }

  else
  {
    v191 = *(v127 + 40);

    swift_unknownObjectRetain();
    sub_1D6E02060(v127, type metadata accessor for FeedHeadline);
  }

  v192 = *(v188 + 16);
  v193 = v329;
  v194 = v188;
  v195 = v322;
  v192(v329, v341, v322);
  v196 = (v182 == 2) | v182;
  v197 = v337;
  v198 = v195;
  v199 = v343;
  *v337 = v346;
  v197[1] = v199;
  v200 = v338;
  v197[2] = v339;
  v197[3] = v200;
  v197[4] = v189;
  v197[5] = v190;
  v197[6] = v191;
  *(v197 + 56) = v348;
  v201 = v330;
  v202 = *(v330 + 36);
  v321 = v194;
  (*(v194 + 32))(v197 + v202, v193, v198);
  *(v197 + v201[10]) = v347;
  *(v197 + v201[11]) = v318 & 1;
  v203 = (v197 + v201[12]);
  *v203 = v345;
  v203[1] = v125;
  v204 = v350;
  *(v203 + 2) = v327;
  *(v203 + 3) = v204;
  *(v203 + 32) = v326 & 1;
  v205 = v344;
  *(v203 + 5) = v342;
  *(v203 + 6) = v205;
  *(v197 + v201[13]) = v196 & 1;
  v206 = v333;
  sub_1D6E01FF8(v197, v333, type metadata accessor for FormatVideoPlayerData);
  v207 = v332;
  swift_storeEnumTagMultiPayload();
  v208 = v335;
  sub_1D6E01FF8(v206, v335, type metadata accessor for FormatNodeStateData.Data);
  (*(v331 + 56))(v208, 0, 1, v207);
  v209 = v334;
  sub_1D6E01FF8(v208, v334, sub_1D6047B58);
  swift_beginAccess();

  swift_bridgeObjectRetain_n();

  sub_1D6D60A18(v209, v339, v200);
  swift_endAccess();
  sub_1D6E02060(v208, sub_1D6047B58);
  sub_1D6E02060(v206, type metadata accessor for FormatNodeStateData.Data);
  v210 = v351;
  v211 = v352;
  v212 = *(v352 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v214 = *(v210 + 16);
  v213 = *(v210 + 24);

  v215 = *(v212 + 40);
  if (v215)
  {
    v363 = *(v212 + 32);
    v364 = v215;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v214, v213);

    v214 = v363;
    v213 = v364;
  }

  swift_unownedRetainStrong();
  swift_beginAccess();
  v216 = *(v210 + 24);
  v329 = *(v210 + 16);

  swift_unownedRetainStrong();
  v217 = *(v210 + 40);

  v349 = v213;
  v330 = v214;
  v347 = v216;
  if (v217)
  {
    v218 = *(v217 + 16);
    swift_beginAccess();
    if (*(*(v218 + 16) + 16))
    {
      *&v342 = v218;

      goto LABEL_80;
    }
  }

  *&v342 = 0;
LABEL_80:
  swift_unownedRetainStrong();
  swift_beginAccess();
  v328 = *(v210 + 184);

  swift_unownedRetainStrong();
  swift_beginAccess();
  v219 = *(v210 + 192);
  sub_1D5EB1500(v219);

  v361 = v219;
  sub_1D615B4A8(v211, v362);
  sub_1D5EB15C4(v361);
  v346 = v362[0];
  swift_unownedRetainStrong();
  swift_beginAccess();
  LODWORD(v326) = *(v210 + 200);

  swift_unownedRetainStrong();
  v325 = *(v210 + 208);
  LODWORD(v320) = *(v210 + 216);

  v220 = sub_1D72583DC();
  v222 = v221;
  v223 = v338;
  v224 = v339;
  v359 = v339;
  v360 = v338;

  MEMORY[0x1DA6F9910](v220, v222);

  v319 = v359;
  *&v343 = v360;
  v359 = v224;
  v360 = v223;
  v225 = v351;

  MEMORY[0x1DA6F9910](0x2D726574736F702DLL, 0xED00006567616D69);
  *&v333 = v359;
  v336 = v360;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v227 = *(v225 + 16);
  v226 = *(v225 + 24);

  v228 = *(v212 + 40);
  v334 = v212;
  if (v228)
  {
    v357 = *(v212 + 32);
    v358 = v228;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v227, v226);

    v227 = v357;
    v226 = v358;
  }

  v348 = swift_allocObject();
  v357 = v227;
  v358 = v226;
  MEMORY[0x1DA6F9910](0x2D726574736F702DLL, 0xED00006567616D69);
  v332 = v357;
  v335 = v358;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v229 = *(v225 + 24);
  v331 = *(v225 + 16);

  v230 = (*(v211 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v232 = *v230;
  v231 = v230[1];
  swift_unownedRetainStrong();
  v233 = *(v225 + 88);

  v234 = v378;
  v235 = sub_1D6FBB580(v233, v211, v232, v231);
  v378 = v234;
  if (v234)
  {

    sub_1D5EB15C4(v346);

    sub_1D6E02060(v337, type metadata accessor for FormatVideoPlayerData);
    (*(v321 + 8))(v341, v322);
LABEL_99:
    sub_1D6E02060(v340, sub_1D5B69BE0);
    return swift_deallocUninitializedObject();
  }

  v236 = v335;
  v318 = v235;

  swift_unownedRetainStrong();
  v237 = *(v225 + 40);

  v317 = v230;
  if (v237)
  {
    v238 = *(v237 + 16);
    swift_beginAccess();
    if (*(*(v238 + 16) + 16))
    {

      goto LABEL_89;
    }
  }

  v238 = 0;
LABEL_89:
  swift_unownedRetainStrong();
  swift_beginAccess();
  LODWORD(v316) = *(v225 + 200);

  swift_unownedRetainStrong();
  v239 = *(v225 + 208);
  v240 = v225;
  v241 = *(v225 + 216);

  swift_unownedRetainStrong();
  swift_beginAccess();
  v242 = *(v240 + 232);
  v243 = *(v240 + 240);

  v315 = type metadata accessor for FormatImageNodeLayoutAttributes();
  v244 = swift_allocObject();
  v245 = v336;
  *(v244 + 16) = v333;
  *(v244 + 24) = v245;
  v246 = v331;
  *(v244 + 32) = v332;
  *(v244 + 40) = v236;
  *(v244 + 48) = v246;
  *(v244 + 56) = v229;
  *(v244 + 64) = a10;
  *(v244 + 72) = a11;
  *(v244 + 80) = a12;
  *(v244 + 88) = a13;
  v247 = v318;
  *(v244 + 96) = v318;
  *(v244 + 104) = v238;
  v333 = xmmword_1D735A320;
  *(v244 + 112) = xmmword_1D735A320;
  *(v244 + 128) = v316;
  *(v244 + 136) = v239;
  *(v244 + 144) = v241;
  *(v244 + 152) = v242;
  *(v244 + 160) = v243;
  *(v244 + 129) = 0;
  if (v247)
  {
    sub_1D6E01F94(0, &qword_1EDF195B8, sub_1D60D65D0, MEMORY[0x1E69E6F90]);
    v248 = swift_allocObject();
    v249 = v318;
    v250 = v248;
    *(v248 + 16) = xmmword_1D7273AE0;
    v251 = *(v249 + 72);
    v252 = v321;
    if ((~v251 & 0xF000000000000007) != 0)
    {
      v255 = &protocol witness table for FormatBackground;
      v254 = &type metadata for FormatBackground;
      v253 = *(v249 + 72);
    }

    else
    {
      v253 = 0;
      v254 = 0;
      v255 = 0;
      *(v248 + 40) = 0;
      *(v248 + 48) = 0;
    }

    *(v248 + 32) = v253;
    *(v248 + 56) = v254;
    *(v248 + 64) = v255;

    sub_1D5D04BD4(v251);
    v256 = sub_1D6E27AC0(v250);
    swift_setDeallocating();
    sub_1D6E02060(v250 + 32, sub_1D60D65D0);
    swift_deallocClassInstance();
  }

  else
  {
    v256 = MEMORY[0x1E69E7CD0];
    v252 = v321;
  }

  *(v244 + 168) = v256;
  v355 = v339;
  v356 = v338;

  MEMORY[0x1DA6F9910](0x6D692D6F676F6C2DLL, 0xEB00000000656761);
  v332 = v355;
  v336 = v356;
  v257 = v351;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v258 = *(v257 + 16);
  v259 = *(v257 + 24);

  v260 = *(v334 + 40);
  if (v260)
  {
    v353 = *(v334 + 32);
    v354 = v260;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v258, v259);

    v258 = v353;
    v259 = v354;
  }

  v353 = v258;
  v354 = v259;
  MEMORY[0x1DA6F9910](0x6D692D6F676F6C2DLL, 0xEB00000000656761);
  v334 = v353;
  v335 = v354;
  v261 = v351;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v262 = *(v261 + 24);
  v331 = *(v261 + 16);

  sub_1D726330C();
  v264 = v263;
  v266 = v265;
  v268 = v267;
  v270 = v269;
  v271 = *v317;
  v272 = v317[1];

  v274 = v378;
  v275 = sub_1D6FBB580(v273, v352, v271, v272);
  v378 = v274;
  if (v274)
  {

    sub_1D5EB15C4(v346);

    sub_1D6E02060(v337, type metadata accessor for FormatVideoPlayerData);
    (*(v252 + 8))(v341, v322);
    goto LABEL_99;
  }

  v276 = v275;

  swift_unownedRetainStrong();
  swift_beginAccess();
  LODWORD(v352) = *(v261 + 200);
  v277 = v350;

  swift_unownedRetainStrong();
  v318 = *(v261 + 208);
  LODWORD(v317) = *(v261 + 216);

  swift_unownedRetainStrong();
  swift_beginAccess();
  v278 = *(v261 + 232);
  v279 = *(v261 + 240);

  v280 = swift_allocObject();
  v281 = v336;
  *(v280 + 16) = v332;
  *(v280 + 24) = v281;
  v282 = v335;
  *(v280 + 32) = v334;
  *(v280 + 40) = v282;
  *(v280 + 48) = v331;
  *(v280 + 56) = v262;
  *(v280 + 64) = v264;
  *(v280 + 72) = v266;
  *(v280 + 80) = v268;
  *(v280 + 88) = v270;
  *(v280 + 96) = v276;
  *(v280 + 104) = v277;
  *(v280 + 112) = v333;
  *(v280 + 128) = v352;
  *(v280 + 136) = v318;
  *(v280 + 144) = v317;
  *(v280 + 152) = v278;
  *(v280 + 160) = v279;
  *(v280 + 129) = 0;
  if (v276)
  {
    sub_1D6E01F94(0, &qword_1EDF195B8, sub_1D60D65D0, MEMORY[0x1E69E6F90]);
    v283 = swift_allocObject();
    v284 = v283;
    *(v283 + 16) = xmmword_1D7273AE0;
    v285 = *(v276 + 72);
    v286 = v340;
    if ((~v285 & 0xF000000000000007) != 0)
    {
      v289 = &protocol witness table for FormatBackground;
      v288 = &type metadata for FormatBackground;
      v287 = *(v276 + 72);
    }

    else
    {
      v287 = 0;
      v288 = 0;
      v289 = 0;
      *(v283 + 40) = 0;
      *(v283 + 48) = 0;
    }

    v292 = v321;
    v291 = v322;
    *(v283 + 32) = v287;
    *(v283 + 56) = v288;
    *(v283 + 64) = v289;

    sub_1D5D04BD4(v285);
    v290 = sub_1D6E27AC0(v284);
    swift_setDeallocating();
    sub_1D6E02060(v284 + 32, sub_1D60D65D0);
    swift_deallocClassInstance();
  }

  else
  {
    v290 = MEMORY[0x1E69E7CD0];
    v292 = v321;
    v291 = v322;
    v286 = v340;
  }

  v293 = v349;

  *(v280 + 168) = v290;
  type metadata accessor for FormatVideoPlayerNodeLayoutAttributes();
  v294 = swift_allocObject();
  *(v294 + 16) = v339;
  v295 = v329;
  v296 = v330;
  *(v294 + 24) = v338;
  *(v294 + 32) = v296;
  *(v294 + 40) = v293;
  *(v294 + 48) = v295;
  *(v294 + 56) = v347;
  *(v294 + 64) = a10;
  *(v294 + 72) = a11;
  *(v294 + 80) = a12;
  *(v294 + 88) = a13;
  v297 = v341;
  v298 = v328;
  *(v294 + 96) = v342;
  *(v294 + 104) = v298;
  *(v294 + 112) = v346;
  *(v294 + 120) = v326;
  *(v294 + 128) = v325;
  *(v294 + 136) = v320;
  v299 = v323;
  v300 = v319;
  *(v294 + 144) = v323;
  *(v294 + 152) = v300;
  *(v294 + 160) = v343;
  *(v294 + 168) = v244;
  if (v299)
  {
    sub_1D6E01F94(0, &qword_1EDF195B8, sub_1D60D65D0, MEMORY[0x1E69E6F90]);
    v301 = swift_allocObject();
    v302 = v301;
    *(v301 + 16) = xmmword_1D7273AE0;
    v303 = *(v299 + 64);
    v304 = v348;
    if ((~v303 & 0xF000000000000007) != 0)
    {
      v307 = &protocol witness table for FormatBackground;
      v306 = &type metadata for FormatBackground;
      v305 = *(v299 + 64);
    }

    else
    {
      v305 = 0;
      v306 = 0;
      v307 = 0;
      *(v301 + 40) = 0;
      *(v301 + 48) = 0;
    }

    *(v301 + 32) = v305;
    *(v301 + 56) = v306;
    *(v301 + 64) = v307;

    sub_1D5D04BD4(v303);
    v308 = sub_1D6E27AC0(v302);
    swift_setDeallocating();
    sub_1D6E02060(v302 + 32, sub_1D60D65D0);
    swift_deallocClassInstance();
    v297 = v341;
  }

  else
  {

    v308 = MEMORY[0x1E69E7CD0];
    v304 = v348;
  }

  sub_1D6E02060(v337, type metadata accessor for FormatVideoPlayerData);
  (*(v292 + 8))(v297, v291);
  result = sub_1D6E02060(v286, sub_1D5B69BE0);
  *(v294 + 176) = v308;
  *(v294 + 184) = v280;
  *(v304 + 16) = v294;
  *v324 = v304 | 0x8000000000000004;
  return result;
}

uint64_t sub_1D6E01E5C@<X0>(unint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1D6BB646C(0, &qword_1EDF3BEE0, MEMORY[0x1E69D74C0]);
  v12 = (*(*(v11 - 8) + 80) + 64) & ~*(*(v11 - 8) + 80);
  return sub_1D6DFF9F0(v5[2], v5[3], v5[4], v5[5], v5[6], v5[7], v5 + v12, *(v5 + ((*(*(v11 - 8) + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2, a3, a4, a5);
}

uint64_t sub_1D6E01F4C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1D6E01F94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6E01FF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6E02060(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id FormatCollectionView.__allocating_init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];

  return v7;
}

unint64_t sub_1D6E0214C()
{
  result = qword_1EDF044D0;
  if (!qword_1EDF044D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF044D0);
  }

  return result;
}

unint64_t sub_1D6E02198()
{
  result = qword_1EDF3B490;
  if (!qword_1EDF3B490)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF3B490);
  }

  return result;
}

uint64_t sub_1D6E021FC(uint64_t a1)
{
  sub_1D6E02258();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6E02258()
{
  if (!qword_1EC8967A0)
  {
    sub_1D6E02198();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8967A0);
    }
  }
}

void sub_1D6E02340(void (*a1)(uint64_t, uint64_t))
{
  v3 = [v1 visibleCells];
  sub_1D6E0214C();
  v4 = sub_1D726267C();

  if (v4 >> 62)
  {
    v5 = sub_1D7263BFC();
    if (v5)
    {
LABEL_3:
      if (v5 < 1)
      {
        __break(1u);
      }

      else
      {
        for (i = 0; i != v5; ++i)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x1DA6FB460](i, v4);
          }

          else
          {
            v9 = *(v4 + 8 * i + 32);
          }

          v10 = v9;
          v14 = v9;
          sub_1D6E02198();
          v11 = v10;
          if (swift_dynamicCast())
          {
            sub_1D5B63F14(v12, v15);
            v7 = v16;
            v8 = v17;
            __swift_project_boxed_opaque_existential_1(v15, v16);
            a1(v7, v8);

            __swift_destroy_boxed_opaque_existential_1(v15);
          }

          else
          {

            v13 = 0;
            memset(v12, 0, sizeof(v12));
            sub_1D6E021FC(v12);
          }
        }
      }

      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }
  }
}

id FormatCollectionView.init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v13.receiver = v5;
  v13.super_class = swift_getObjectType();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_collectionViewLayout_, a1, a2, a3, a4, a5);

  return v11;
}

id FormatCollectionView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FormatCollectionView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id FormatCollectionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FormatCollectionView.shouldMonitorScroll.getter()
{
  v1 = [v0 visibleCells];
  sub_1D6E0214C();
  v2 = sub_1D726267C();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6FB460](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      swift_getObjectType();
      if (swift_conformsToProtocol2() && v6)
      {
        swift_getObjectType();
        v8 = sub_1D725F01C();

        if (v8)
        {
          v9 = 1;
          goto LABEL_19;
        }
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  v9 = 0;
LABEL_19:

  return v9;
}

void FormatCollectionView.blueprintViewportMonitor(_:viewportScrollDataDidChange:)()
{
  v1 = [v0 visibleCells];
  sub_1D6E0214C();
  v2 = sub_1D726267C();

  if (v2 >> 62)
  {
    v3 = sub_1D7263BFC();
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1DA6FB460](i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    swift_getObjectType();
    if (swift_conformsToProtocol2() && v6)
    {
      swift_getObjectType();
      sub_1D725F02C();
    }
  }

LABEL_13:
}

void sub_1D6E02B2C()
{
  v1 = type metadata accessor for FormatOption();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 72);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (v8 < *(v6 + 16))
    {
      if (!((*(v6 + 32 + 8 * v8) >> 59) & 0x1E | (*(v6 + 32 + 8 * v8) >> 2) & 1))
      {
        v10 = swift_projectBox();
        sub_1D5D255FC(v10, v5, type metadata accessor for FormatOption);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D5CEABA0(0, v9[2] + 1, 1, v9);
        }

        v12 = v9[2];
        v11 = v9[3];
        if (v12 >= v11 >> 1)
        {
          v9 = sub_1D5CEABA0(v11 > 1, v12 + 1, 1, v9);
        }

        v9[2] = v12 + 1;
        sub_1D5D247E0(v5, v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12);
      }

      if (v7 == ++v8)
      {
        return;
      }
    }

    __break(1u);
  }
}

void *sub_1D6E02CD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = v6;
  v94 = a5;
  v97 = type metadata accessor for FormatOption();
  v11 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97, v12);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 + 112);
  v91 = v5;
  v100 = v5[9];

  v16 = sub_1D6E035EC();
  sub_1D6985C44(v16);
  v17 = *(v15 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  v92 = v11;
  if (v17)
  {
    v93 = a4;
    v95 = a2;
    v96 = v7;
    *&v99 = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v17, 0);
    v18 = v99;
    v19 = *(v11 + 80);
    v90 = v15;
    v20 = v15 + ((v19 + 32) & ~v19);
    v21 = *(v11 + 72);
    do
    {
      sub_1D5D255FC(v20, v14, type metadata accessor for FormatOption);
      v22 = swift_allocBox();
      sub_1D5D247E0(v14, v23);
      *&v99 = v18;
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D5D24610((v24 > 1), v25 + 1, 1);
        v18 = v99;
      }

      *(v18 + 16) = v25 + 1;
      *(v18 + 8 * v25 + 32) = v22 | 0x8000000000000000;
      v20 += v21;
      --v17;
    }

    while (v17);

    a2 = v95;
    v7 = v96;
    a4 = v93;
  }

  sub_1D6985C44(v18);
  v26 = *(a4 + 56);
  sub_1D678F1E8(v26, &v99);
  v98 = v99;
  type metadata accessor for FormatOptionList();
  swift_allocObject();

  v27 = sub_1D71E2BC8(&v98, a2);
  v28 = v7;
  if (v7)
  {
  }

  v30 = v27[2];

  sub_1D6985C44(v30);
  v31 = sub_1D678F3E8(v26);
  if (v31)
  {
    v32 = *(v31 + 16);
    if (v32)
    {
      v87 = 0;
      v33 = v100;
      v34 = v31 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
      v35 = *(v92 + 72);
      do
      {
        v36 = swift_allocBox();
        sub_1D5D255FC(v34, v37, type metadata accessor for FormatOption);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_1D698F420(0, v33[2] + 1, 1, v33);
        }

        v39 = v33[2];
        v38 = v33[3];
        if (v39 >= v38 >> 1)
        {
          v33 = sub_1D698F420((v38 > 1), v39 + 1, 1, v33);
        }

        v33[2] = v39 + 1;
        v33[v39 + 4] = v36 | 0x8000000000000000;
        v34 += v35;
        --v32;
      }

      while (v32);

      v100 = v33;
      v28 = v87;
    }

    else
    {
    }
  }

  v40 = v91[16];
  if (!v40)
  {
    return v100;
  }

  v96 = *(v40 + 16);
  if (!v96)
  {
    return v100;
  }

  v87 = v28;
  v41 = v91[13];
  v42 = v91[14];
  __swift_project_boxed_opaque_existential_1(v91 + 10, v41);
  *&v99 = 0;
  *(&v99 + 1) = 0xE000000000000000;

  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD00000000000001DLL, 0x80000001D73F3930);
  *&v98 = *(v40 + 16);
  v43 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v43);

  MEMORY[0x1DA6F9910](0xD000000000000019, 0x80000001D73F3950);
  (*(v42 + 16))(v99, *(&v99 + 1), v41, v42);

  type metadata accessor for FormatVariableCollection();
  v44 = swift_allocObject();
  *(v44 + 16) = MEMORY[0x1E69E7CC8];
  type metadata accessor for FormatOptionCollection();
  swift_initStackObject();

  v46 = sub_1D5D2488C(v45, v44);

  *&v98 = v94;

  v86 = v46;
  v48 = sub_1D6F622E0(v47);
  sub_1D5B886D0(v48);

  v49 = 0;
  v95 = v40 + 32;
  v88 = " app config group options";
  v50 = v40;
  v90 = v40;
  while (v49 < *(v50 + 16))
  {
    v56 = (v95 + 24 * v49);
    v57 = v56[1];
    v58 = v56[2];
    if (v57)
    {
      v59 = *v56;
      *&v99 = *v56;
      *(&v99 + 1) = v57;
      swift_bridgeObjectRetain_n();

      if (FormatSelector.matches(_:)(v94))
      {
        swift_bridgeObjectRelease_n();
        v60 = *(v58 + 16);
        if (v60)
        {
          v93 = v49;
          *&v99 = MEMORY[0x1E69E7CC0];
          sub_1D5D24610(0, v60, 0);
          v61 = v99;
          v62 = *(v92 + 80);
          v89 = v58;
          v63 = v58 + ((v62 + 32) & ~v62);
          v64 = *(v92 + 72);
          do
          {
            sub_1D5D255FC(v63, v14, type metadata accessor for FormatOption);
            v65 = swift_allocBox();
            sub_1D5D247E0(v14, v66);
            *&v99 = v61;
            v68 = *(v61 + 16);
            v67 = *(v61 + 24);
            if (v68 >= v67 >> 1)
            {
              sub_1D5D24610((v67 > 1), v68 + 1, 1);
              v61 = v99;
            }

            *(v61 + 16) = v68 + 1;
            *(v61 + 8 * v68 + 32) = v65 | 0x1000000000000000;
            v63 += v64;
            --v60;
          }

          while (v60);

          v50 = v90;
          v49 = v93;
        }

        else
        {

          v61 = MEMORY[0x1E69E7CC0];
        }

        result = sub_1D6985C44(v61);
      }

      else
      {

        v51 = v49;
        v52 = v91[13];
        v53 = v91[14];
        __swift_project_boxed_opaque_existential_1(v91 + 10, v52);
        *&v99 = 0;
        *(&v99 + 1) = 0xE000000000000000;
        sub_1D7263D4C();
        MEMORY[0x1DA6F9910](0xD00000000000003BLL, v88 | 0x8000000000000000);
        MEMORY[0x1DA6F9910](v59, v57);

        v54 = *(v53 + 16);
        v55 = v53;
        v49 = v51;
        v54(v99, *(&v99 + 1), v52, v55);
      }
    }

    else
    {
      v69 = *(v58 + 16);
      if (v69)
      {
        v93 = v49;
        *&v99 = MEMORY[0x1E69E7CC0];

        sub_1D5D24610(0, v69, 0);
        v70 = v99;
        v71 = v58 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
        v72 = *(v92 + 72);
        do
        {
          sub_1D5D255FC(v71, v14, type metadata accessor for FormatOption);
          v73 = swift_allocBox();
          sub_1D5D247E0(v14, v74);
          *&v99 = v70;
          v76 = *(v70 + 16);
          v75 = *(v70 + 24);
          if (v76 >= v75 >> 1)
          {
            sub_1D5D24610((v75 > 1), v76 + 1, 1);
            v70 = v99;
          }

          *(v70 + 16) = v76 + 1;
          *(v70 + 8 * v76 + 32) = v73 | 0x1000000000000000;
          v71 += v72;
          --v69;
        }

        while (v69);

        v49 = v93;
      }

      else
      {
        v70 = MEMORY[0x1E69E7CC0];
      }

      v77 = *(v70 + 16);
      v78 = v100;
      v79 = v100[2];
      v80 = v79 + v77;
      if (__OFADD__(v79, v77))
      {
        goto LABEL_59;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v81 = v78[3] >> 1, v81 < v80))
      {
        if (v79 <= v80)
        {
          v82 = v79 + v77;
        }

        else
        {
          v82 = v79;
        }

        result = sub_1D698F420(result, v82, 1, v78);
        v78 = result;
        v81 = result[3] >> 1;
      }

      v50 = v90;
      if (*(v70 + 16))
      {
        if (v81 - v78[2] < v77)
        {
          goto LABEL_61;
        }

        sub_1D5D24660();
        swift_arrayInitWithCopy();

        if (v77)
        {
          v83 = v78[2];
          v84 = __OFADD__(v83, v77);
          v85 = v83 + v77;
          if (v84)
          {
            goto LABEL_62;
          }

          v78[2] = v85;
        }
      }

      else
      {

        if (v77)
        {
          goto LABEL_60;
        }
      }

      v100 = v78;
    }

    if (++v49 == v96)
    {

      return v100;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

size_t sub_1D6E035EC()
{
  v1 = v0;
  v50 = type metadata accessor for FormatOption();
  v2 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v3);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2CBA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E7CC0];
  v53 = MEMORY[0x1E69E7CC0];
  v12 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
  swift_beginAccess();
  v13 = *(v0 + v12);
  v14 = *(v13 + 16);
  v49 = v2;
  if (v14)
  {
    v47 = v7;
    v48 = v0;
    v52 = v11;

    sub_1D5D24610(0, v14, 0);
    v11 = v52;
    v15 = *(v2 + 80);
    v46[1] = v13;
    v16 = v13 + ((v15 + 32) & ~v15);
    v17 = *(v2 + 72);
    do
    {
      sub_1D5D255FC(v16, v5, type metadata accessor for FormatOption);
      v18 = swift_allocBox();
      sub_1D5D247E0(v5, v19);
      v52 = v11;
      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1D5D24610((v20 > 1), v21 + 1, 1);
        v11 = v52;
      }

      *(v11 + 16) = v21 + 1;
      *(v11 + 8 * v21 + 32) = v18 | 0x4000000000000000;
      v16 += v17;
      --v14;
    }

    while (v14);

    v7 = v47;
    v1 = v48;
  }

  sub_1D6985C44(v11);
  v22 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles;
  swift_beginAccess();
  v23 = *(v1 + v22);
  v24 = *(v23 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v26 = v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v27 = *(v7 + 72);
    v48 = *(v1 + v22);

    v28 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1D5D255FC(v26, v10, sub_1D5C2CBA8);
      v30 = *(v10 + 8);

      result = sub_1D5C8C86C(v10);
      v31 = *(v30 + 16);
      v32 = v28[2];
      v33 = v32 + v31;
      if (__OFADD__(v32, v31))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v33 <= v28[3] >> 1)
      {
        if (*(v30 + 16))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v32 <= v33)
        {
          v34 = v32 + v31;
        }

        else
        {
          v34 = v32;
        }

        result = sub_1D5CEABA0(result, v34, 1, v28);
        v28 = result;
        if (*(v30 + 16))
        {
LABEL_20:
          if ((v28[3] >> 1) - v28[2] < v31)
          {
            goto LABEL_35;
          }

          swift_arrayInitWithCopy();

          if (v31)
          {
            v35 = v28[2];
            v36 = __OFADD__(v35, v31);
            v37 = v35 + v31;
            if (v36)
            {
              goto LABEL_36;
            }

            v28[2] = v37;
          }

          goto LABEL_10;
        }
      }

      if (v31)
      {
        goto LABEL_34;
      }

LABEL_10:
      v26 += v27;
      if (!--v24)
      {

        v25 = MEMORY[0x1E69E7CC0];
        v38 = v28[2];
        if (!v38)
        {
          goto LABEL_31;
        }

LABEL_25:
        v51 = v25;
        sub_1D5D24610(0, v38, 0);
        v39 = v51;
        v40 = v28 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
        v41 = *(v49 + 72);
        do
        {
          sub_1D5D255FC(v40, v5, type metadata accessor for FormatOption);
          v42 = swift_allocBox();
          sub_1D5D247E0(v5, v43);
          v51 = v39;
          v45 = *(v39 + 16);
          v44 = *(v39 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_1D5D24610((v44 > 1), v45 + 1, 1);
            v39 = v51;
          }

          *(v39 + 16) = v45 + 1;
          *(v39 + 8 * v45 + 32) = v42 | 0xB000000000000000;
          v40 += v41;
          --v38;
        }

        while (v38);

        goto LABEL_32;
      }
    }
  }

  v28 = MEMORY[0x1E69E7CC0];
  v38 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v38)
  {
    goto LABEL_25;
  }

LABEL_31:

  v39 = MEMORY[0x1E69E7CC0];
LABEL_32:
  sub_1D6985C44(v39);
  return v53;
}

void *sub_1D6E03AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v8 = v7;
  v87 = a6;
  v94 = a4;
  v95 = type metadata accessor for FormatOption();
  v12 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v13);
  v15 = v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 80);
  v88 = v6;
  v98 = v6[9];

  v17 = sub_1D6E035EC();
  sub_1D6985C44(v17);
  v18 = *(v16 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  v89 = v12;
  if (v18)
  {
    v91 = a2;
    v92 = v8;
    v93 = a5;
    *&v97 = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v18, 0);
    v19 = v97;
    v20 = *(v12 + 80);
    v90 = v16;
    v21 = v16 + ((v20 + 32) & ~v20);
    v22 = *(v12 + 72);
    do
    {
      sub_1D5D255FC(v21, v15, type metadata accessor for FormatOption);
      v23 = swift_allocBox();
      sub_1D5D247E0(v15, v24);
      *&v97 = v19;
      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1D5D24610((v25 > 1), v26 + 1, 1);
        v19 = v97;
      }

      *(v19 + 16) = v26 + 1;
      *(v19 + 8 * v26 + 32) = v23 | 0x8000000000000004;
      v21 += v22;
      --v18;
    }

    while (v18);

    v8 = v92;
    a5 = v93;
    a2 = v91;
  }

  sub_1D6985C44(v19);
  sub_1D678F1E8(v94, &v97);
  v96 = v97;
  type metadata accessor for FormatOptionList();
  swift_allocObject();

  v27 = sub_1D71E2BC8(&v96, a2);
  if (v8)
  {
  }

  v86[2] = 0;
  v29 = v27[2];

  sub_1D6985C44(v29);
  v30 = *(a5 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    *&v97 = MEMORY[0x1E69E7CC0];
    sub_1D5D24610(0, v30, 0);
    v32 = v97;
    v33 = a5 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
    v34 = *(v89 + 72);
    do
    {
      sub_1D5D255FC(v33, v15, type metadata accessor for FormatOption);
      v35 = swift_allocBox();
      sub_1D5D247E0(v15, v36);
      *&v97 = v32;
      v38 = *(v32 + 16);
      v37 = *(v32 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1D5D24610((v37 > 1), v38 + 1, 1);
        v32 = v97;
      }

      *(v32 + 16) = v38 + 1;
      *(v32 + 8 * v38 + 32) = v35 | 0x3000000000000004;
      v33 += v34;
      --v30;
    }

    while (v30);
    v31 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  sub_1D6985C44(v32);
  v39 = v88[16];
  if (!v39)
  {
    return v98;
  }

  v93 = *(v39 + 16);
  if (!v93)
  {
    return v98;
  }

  v40 = v88[13];
  v41 = v88[14];
  __swift_project_boxed_opaque_existential_1(v88 + 10, v40);
  *&v97 = 0;
  *(&v97 + 1) = 0xE000000000000000;

  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD00000000000001DLL, 0x80000001D73F3930);
  *&v96 = *(v39 + 16);
  v42 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v42);

  MEMORY[0x1DA6F9910](0xD00000000000001ELL, 0x80000001D73F3A80);
  (*(v41 + 16))(v97, *(&v97 + 1), v40, v41);

  type metadata accessor for FormatVariableCollection();
  v43 = swift_allocObject();
  *(v43 + 16) = MEMORY[0x1E69E7CC8];
  type metadata accessor for FormatOptionCollection();
  swift_initStackObject();

  v45 = sub_1D5D2488C(v44, v43);

  *&v96 = v87;

  v86[1] = v45;
  v47 = sub_1D6F622E0(v46);
  result = sub_1D5B886D0(v47);
  v48 = 0;
  v92 = v39 + 32;
  v87 = " app config decoration options";
  v90 = v39;
  while (v48 < *(v39 + 16))
  {
    v53 = (v92 + 24 * v48);
    v54 = v53[1];
    v55 = v53[2];
    if (v54)
    {
      v56 = *v53;
      *&v97 = *v53;
      *(&v97 + 1) = v54;
      v57 = v96;
      swift_bridgeObjectRetain_n();

      if (FormatSelector.matches(_:)(v57))
      {
        swift_bridgeObjectRelease_n();
        v58 = *(v55 + 16);
        if (v58)
        {
          v94 = v48;
          *&v97 = v31;
          sub_1D5D24610(0, v58, 0);
          v59 = v97;
          v60 = *(v89 + 80);
          v91 = v55;
          v61 = v55 + ((v60 + 32) & ~v60);
          v62 = *(v89 + 72);
          do
          {
            sub_1D5D255FC(v61, v15, type metadata accessor for FormatOption);
            v63 = swift_allocBox();
            sub_1D5D247E0(v15, v64);
            *&v97 = v59;
            v66 = *(v59 + 16);
            v65 = *(v59 + 24);
            if (v66 >= v65 >> 1)
            {
              sub_1D5D24610((v65 > 1), v66 + 1, 1);
              v59 = v97;
            }

            *(v59 + 16) = v66 + 1;
            *(v59 + 8 * v66 + 32) = v63 | 0x1000000000000000;
            v61 += v62;
            --v58;
          }

          while (v58);

          v31 = MEMORY[0x1E69E7CC0];
          v39 = v90;
          v48 = v94;
        }

        else
        {

          v59 = v31;
        }

        result = sub_1D6985C44(v59);
      }

      else
      {

        v49 = v88[13];
        v50 = v88[14];
        __swift_project_boxed_opaque_existential_1(v88 + 10, v49);
        *&v97 = 0;
        *(&v97 + 1) = 0xE000000000000000;
        sub_1D7263D4C();
        MEMORY[0x1DA6F9910](0xD000000000000035, v87 | 0x8000000000000000);
        MEMORY[0x1DA6F9910](v56, v54);

        v51 = *(v50 + 16);
        v31 = MEMORY[0x1E69E7CC0];
        v52 = v50;
        v39 = v90;
        v51(v97, *(&v97 + 1), v49, v52);
      }
    }

    else
    {
      v94 = v48;
      v67 = *(v55 + 16);
      if (v67)
      {
        *&v97 = v31;

        v68 = v55;
        sub_1D5D24610(0, v67, 0);
        v69 = v97;
        v70 = *(v89 + 80);
        v91 = v68;
        v71 = v68 + ((v70 + 32) & ~v70);
        v72 = *(v89 + 72);
        do
        {
          sub_1D5D255FC(v71, v15, type metadata accessor for FormatOption);
          v73 = swift_allocBox();
          sub_1D5D247E0(v15, v74);
          *&v97 = v69;
          v76 = *(v69 + 16);
          v75 = *(v69 + 24);
          if (v76 >= v75 >> 1)
          {
            sub_1D5D24610((v75 > 1), v76 + 1, 1);
            v69 = v97;
          }

          *(v69 + 16) = v76 + 1;
          *(v69 + 8 * v76 + 32) = v73 | 0x1000000000000000;
          v71 += v72;
          --v67;
        }

        while (v67);

        v39 = v90;
      }

      else
      {
        v69 = v31;
      }

      v77 = *(v69 + 16);
      v78 = v98;
      v79 = v98[2];
      v80 = v79 + v77;
      if (__OFADD__(v79, v77))
      {
        goto LABEL_56;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v81 = v78[3] >> 1, v81 < v80))
      {
        if (v79 <= v80)
        {
          v82 = v79 + v77;
        }

        else
        {
          v82 = v79;
        }

        result = sub_1D698F420(result, v82, 1, v78);
        v78 = result;
        v81 = result[3] >> 1;
      }

      v48 = v94;
      if (*(v69 + 16))
      {
        if (v81 - v78[2] < v77)
        {
          goto LABEL_58;
        }

        sub_1D5D24660();
        v48 = v94;
        swift_arrayInitWithCopy();

        if (v77)
        {
          v83 = v78[2];
          v84 = __OFADD__(v83, v77);
          v85 = v83 + v77;
          if (v84)
          {
            goto LABEL_59;
          }

          v78[2] = v85;
        }
      }

      else
      {

        if (v77)
        {
          goto LABEL_57;
        }
      }

      v98 = v78;
    }

    if (++v48 == v93)
    {

      return v98;
    }
  }

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

uint64_t sub_1D6E043D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v42 = v4[8];
  v7 = a3[4];
  v8 = a3[5];
  __swift_project_boxed_opaque_existential_1(a3 + 1, v7);
  v9 = *(v8 + 80);

  v10 = v9(v7, v8);
  sub_1D5B886D0(v10);
  swift_beginAccess();

  sub_1D5B886D0(v11);

  sub_1D5B886D0(v12);
  v13 = sub_1D678F664(a3[7]);
  sub_1D5B886D0(v13);
  v14 = 1 << *(a4 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a4 + 64);
  v17 = (v14 + 63) >> 6;

  v19 = 0;
  if (v16)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      return result;
    }

    if (v20 >= v17)
    {
      break;
    }

    v16 = *(a4 + 64 + 8 * v20);
    ++v19;
    if (v16)
    {
      v19 = v20;
      do
      {
LABEL_9:
        v16 &= v16 - 1;

        v21 = sub_1D724F988();
        sub_1D5B886D0(v21);
      }

      while (v16);
      continue;
    }
  }

  v22 = v4[15];
  if (v22)
  {
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = v4[13];
      v25 = v4[14];
      __swift_project_boxed_opaque_existential_1(v4 + 10, v24);
      v40 = 0;
      v41 = 0xE000000000000000;

      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD00000000000001DLL, 0x80000001D73F3930);
      v26 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v26);

      MEMORY[0x1DA6F9910](0xD00000000000001BLL, 0x80000001D73F39B0);
      (*(v25 + 16))(0, 0xE000000000000000, v24, v25);

      v27 = 0;
      v28 = v22 + 32;
      do
      {
        v31 = (v28 + 24 * v27);
        v33 = v31[1];
        v32 = v31[2];
        if (v33)
        {
          v34 = *v31;
          v40 = *v31;
          v41 = v33;
          v35 = v42;

          if (FormatSelector.matches(_:)(v35))
          {

            sub_1D5B87D50(v32);
          }

          else
          {

            v29 = v4[13];
            v30 = v4[14];
            __swift_project_boxed_opaque_existential_1(v4 + 10, v29);
            v40 = 0;
            v41 = 0xE000000000000000;
            sub_1D7263D4C();
            MEMORY[0x1DA6F9910](0xD000000000000032, 0x80000001D73F39D0);
            MEMORY[0x1DA6F9910](v34, v33);

            (*(v30 + 16))(v40, v41, v29, v30);
          }
        }

        else
        {
          v36 = *(v32 + 16);

          if (v36)
          {
            v37 = (v32 + 40);
            do
            {
              v39 = *(v37 - 1);
              v38 = *v37;

              sub_1D5B860D0(&v40, v39, v38);

              v37 += 2;
              --v36;
            }

            while (v36);
          }
        }

        ++v27;
      }

      while (v27 != v23);
    }
  }

  return v42;
}

uint64_t sub_1D6E047F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = v3[8];

  sub_1D5B886D0(v5);
  swift_beginAccess();

  sub_1D5B886D0(v6);

  sub_1D5B886D0(v7);
  v8 = sub_1D678F664(a3);
  sub_1D5B886D0(v8);
  v9 = v3[15];
  if (v9)
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = v3[13];
      v12 = v3[14];
      __swift_project_boxed_opaque_existential_1(v3 + 10, v11);
      v28 = 0;
      v29 = 0xE000000000000000;

      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD00000000000001DLL, 0x80000001D73F3930);
      v13 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v13);

      MEMORY[0x1DA6F9910](0xD000000000000020, 0x80000001D73F3A10);
      (*(v12 + 16))(0, 0xE000000000000000, v11, v12);

      v14 = 0;
      v15 = v9 + 32;
      do
      {
        v18 = (v15 + 24 * v14);
        v20 = v18[1];
        v19 = v18[2];
        if (v20)
        {
          v21 = *v18;
          v28 = *v18;
          v29 = v20;
          v22 = v30;

          if (FormatSelector.matches(_:)(v22))
          {

            sub_1D5B87D50(v19);
          }

          else
          {

            v16 = v3[13];
            v17 = v3[14];
            __swift_project_boxed_opaque_existential_1(v3 + 10, v16);
            v28 = 0;
            v29 = 0xE000000000000000;
            sub_1D7263D4C();
            MEMORY[0x1DA6F9910](0xD000000000000037, 0x80000001D73F3A40);
            MEMORY[0x1DA6F9910](v21, v20);

            (*(v17 + 16))(v28, v29, v16, v17);
          }
        }

        else
        {
          v23 = *(v19 + 16);

          if (v23)
          {
            v24 = (v19 + 40);
            do
            {
              v26 = *(v24 - 1);
              v25 = *v24;

              sub_1D5B860D0(&v28, v26, v25);

              v24 += 2;
              --v23;
            }

            while (v23);
          }
        }

        ++v14;
      }

      while (v14 != v10);
    }
  }

  return v30;
}

uint64_t sub_1D6E04B20()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6E04BE8()
{
  v1 = v0;
  v2 = v0[8];
  v24 = v2;
  v3 = v1[15];
  if (v3 && (v4 = *(v3 + 16)) != 0)
  {
    v5 = v1[13];
    v6 = v1[14];
    __swift_project_boxed_opaque_existential_1(v1 + 10, v5);
    v22 = 0;
    v23 = 0xE000000000000000;

    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD00000000000001DLL, 0x80000001D73F3930);
    v7 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v7);

    MEMORY[0x1DA6F9910](0xD000000000000020, 0x80000001D73F3A10);
    (*(v6 + 16))(0, 0xE000000000000000, v5, v6);

    v8 = 0;
    v9 = v3 + 32;
    do
    {
      v12 = (v9 + 24 * v8);
      v14 = v12[1];
      v13 = v12[2];
      if (v14)
      {
        v15 = *v12;
        v22 = *v12;
        v23 = v14;
        v16 = v24;

        if (FormatSelector.matches(_:)(v16))
        {

          sub_1D5B87D50(v13);
        }

        else
        {

          v10 = v1[13];
          v11 = v1[14];
          __swift_project_boxed_opaque_existential_1(v1 + 10, v10);
          v22 = 0;
          v23 = 0xE000000000000000;
          sub_1D7263D4C();
          MEMORY[0x1DA6F9910](0xD000000000000037, 0x80000001D73F3A40);
          MEMORY[0x1DA6F9910](v15, v14);

          (*(v11 + 16))(v22, v23, v10, v11);
        }
      }

      else
      {
        v17 = *(v13 + 16);

        if (v17)
        {
          v18 = (v13 + 40);
          do
          {
            v20 = *(v18 - 1);
            v19 = *v18;

            sub_1D5B860D0(&v22, v20, v19);

            v18 += 2;
            --v17;
          }

          while (v17);
        }
      }

      ++v8;
    }

    while (v8 != v4);

    return v24;
  }

  else
  {
  }

  return v2;
}

uint64_t FormatNodeState.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return v0;
}

uint64_t FormatNodeState.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t FeedServiceImpressionProcessor.__allocating_init(cursorContainerBlock:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t FeedServiceImpressionProcessor.init(cursorContainerBlock:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t FeedServiceImpressionProcessor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6E05154(uint64_t a1, uint64_t (*a2)(void, uint64_t *, __n128), void (*a3)(void), void (*a4)(uint64_t), int a5)
{
  v32 = a5;
  v38 = a4;
  v43 = a2;
  v44 = a3;
  v41 = *v5;
  v42 = a1;
  v40 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v40, v6);
  v39 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v9);
  v36 = &v31[-v10];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = sub_1D725CE8C();
  v34 = *(v12 - 8);
  v35 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v33 = &v31[-v14];
  v15 = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v45 = v15;
  v46 = AssociatedTypeWitness;
  v47 = v16;
  v48 = AssociatedConformanceWitness;
  v17 = sub_1D725FACC();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v31[-v21];
  v23 = v5[2];
  v45 = v15;
  v46 = AssociatedTypeWitness;
  v47 = v16;
  v48 = AssociatedConformanceWitness;
  v24 = v43(0, &v45, v20);
  v44();
  v25 = v23(v22);
  result = (*(v18 + 8))(v22, v17);
  if ((~v25 & 0xF000000000000007) != 0)
  {
    v27 = v33;
    v38(v24);
    v29 = v35;
    v28 = v36;
    sub_1D725CE7C();
    (*(v34 + 8))(v27, v29);
    v30 = v39;
    (*(*(v41 + 112) + 8))(AssociatedTypeWitness);
    (*(v37 + 8))(v28, AssociatedTypeWitness);
    LODWORD(v28) = swift_getEnumCaseMultiPayload();
    sub_1D5BDDCA8(v30);
    sub_1D61519B4(v25);

    if (v28)
    {
      FeedServiceState.markNonGapOnScreen()();
    }

    else
    {
      FeedServiceState.markGapOnScreen(_:)(v32 & 1);
    }

    sub_1D5BD9F54(v25);
  }

  return result;
}

uint64_t FeedGroupEmitterRuleOutput.result.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 56);
  *(a1 + 16) = v4;
  return sub_1D5EAD0DC(v2, v3, v4);
}

uint64_t sub_1D6E05608(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1D6E05650(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D6E056C0(void *a1)
{
  v3 = v1;
  sub_1D6E05CBC(0, &qword_1EDF02870, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E05C14();
  sub_1D7264B5C();
  v12[15] = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v12[14] = *(v3 + 16);
    v12[13] = 1;
    sub_1D6E05D20();
    sub_1D726443C();
    v12[12] = 2;
    sub_1D72643FC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6E05874()
{
  v1 = 0x746C75736572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7470697263736564;
  }
}

uint64_t sub_1D6E058D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6E05E8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6E05900(uint64_t a1)
{
  v2 = sub_1D6E05C14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E0593C(uint64_t a1)
{
  v2 = sub_1D6E05C14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6E05978@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6E059D8(a1, v6);
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

uint64_t sub_1D6E059D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6E05CBC(0, &qword_1EC8967A8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E05C14();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v14 = v11;
  v23 = 1;
  sub_1D6E05C68();
  sub_1D726431C();
  v21 = v24;
  v22 = 2;
  v15 = sub_1D72642BC();
  v16 = v10;
  v18 = v17;
  (*(v7 + 8))(v16, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v21;
  *(a2 + 24) = v15;
  *(a2 + 32) = v18;
  return result;
}

unint64_t sub_1D6E05C14()
{
  result = qword_1EDF13140;
  if (!qword_1EDF13140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13140);
  }

  return result;
}

unint64_t sub_1D6E05C68()
{
  result = qword_1EC8967B0;
  if (!qword_1EC8967B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8967B0);
  }

  return result;
}

void sub_1D6E05CBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6E05C14();
    v7 = a3(a1, &type metadata for FeedGroupEmitterRuleOutputDescription.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6E05D20()
{
  result = qword_1EDF139F8;
  if (!qword_1EDF139F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF139F8);
  }

  return result;
}

unint64_t sub_1D6E05D88()
{
  result = qword_1EC8967B8;
  if (!qword_1EC8967B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8967B8);
  }

  return result;
}

unint64_t sub_1D6E05DE0()
{
  result = qword_1EDF13130;
  if (!qword_1EDF13130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13130);
  }

  return result;
}

unint64_t sub_1D6E05E38()
{
  result = qword_1EDF13138;
  if (!qword_1EDF13138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13138);
  }

  return result;
}

uint64_t sub_1D6E05E8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73F3B20 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t FormatVideoNodeLayoutAttributes.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatVideoNodeLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatVideoNodeLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

unint64_t FormatVideoNodeLayoutAttributes.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

void FormatVideoNodeLayoutAttributes.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
}

uint64_t sub_1D6E060C0(uint64_t a1)
{
  v2 = sub_1D6E0667C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E060FC(uint64_t a1)
{
  v2 = sub_1D6E0667C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatVideoNodeLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 112));

  return v0;
}

uint64_t FormatVideoNodeLayoutAttributes.__deallocating_deinit()
{
  FormatVideoNodeLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t FormatVideoNodeLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6E06D8C(0, &qword_1EC8967C0, sub_1D6E0667C, &type metadata for FormatVideoNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E0667C();
  sub_1D7264B5C();
  LOBYTE(v14[0]) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    LOBYTE(v14[0]) = 1;
    sub_1D72643FC();
    LOBYTE(v14[0]) = 2;
    sub_1D72643FC();
    swift_beginAccess();
    v12 = *(v3 + 80);
    v14[0] = *(v3 + 64);
    v14[1] = v12;
    v15 = 3;
    type metadata accessor for CGRect(0);
    sub_1D6E0725C(&qword_1EC8801E8, 255, type metadata accessor for CGRect);
    sub_1D726443C();
    *&v14[0] = *(v3 + 96);
    v15 = 4;
    sub_1D5F8F3E0();

    sub_1D72643BC();

    LOBYTE(v14[0]) = 5;
    sub_1D726442C();
    *&v14[0] = *(v3 + 112);
    v15 = 6;
    sub_1D5EB1500(*&v14[0]);
    sub_1D5DF6A60();
    sub_1D726443C();
    sub_1D5EB15C4(*&v14[0]);
    LOBYTE(v14[0]) = 7;
    sub_1D726440C();
    v13 = *(v3 + 136);
    *&v14[0] = *(v3 + 128);
    BYTE8(v14[0]) = v13;
    v15 = 8;
    sub_1D5F8F434();
    sub_1D72643BC();
    *&v14[0] = *(v3 + 144);
    v15 = 9;
    type metadata accessor for FormatVideoNodeStyle();
    sub_1D6E0725C(&qword_1EC887770, 255, type metadata accessor for FormatVideoNodeStyle);
    sub_1D72643BC();
    *&v14[0] = *(v3 + 152);
    v15 = 10;
    sub_1D6E06D8C(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    sub_1D6E06DF4(&qword_1EC881AF0, sub_1D5F8F488);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6E0667C()
{
  result = qword_1EC8967C8;
  if (!qword_1EC8967C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8967C8);
  }

  return result;
}

uint64_t FormatVideoNodeLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatVideoNodeLayoutAttributes.init(from:)(a1);
  return v2;
}

uint64_t FormatVideoNodeLayoutAttributes.init(from:)(void *a1)
{
  sub_1D6E06D8C(0, &qword_1EC8967D0, sub_1D6E0667C, &type metadata for FormatVideoNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v16 = *(v4 - 8);
  v17 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v15 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E0667C();
  v18 = v7;
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v16;
    LOBYTE(v19) = 0;
    *(v1 + 16) = sub_1D72642BC();
    *(v1 + 24) = v9;
    LOBYTE(v19) = 1;
    *(v1 + 32) = sub_1D72642BC();
    *(v1 + 40) = v11;
    LOBYTE(v19) = 2;
    *(v1 + 48) = sub_1D72642BC();
    *(v1 + 56) = v12;
    type metadata accessor for CGRect(0);
    v21 = 3;
    sub_1D6E0725C(&qword_1EDF1A740, 255, type metadata accessor for CGRect);
    sub_1D726431C();
    v13 = v20;
    *(v1 + 64) = v19;
    *(v1 + 80) = v13;
    v21 = 4;
    sub_1D5F8FC50();
    sub_1D726427C();
    *(v1 + 96) = v19;
    LOBYTE(v19) = 5;
    *(v1 + 104) = sub_1D72642FC();
    v21 = 6;
    sub_1D5DF6A0C();
    sub_1D726431C();
    *(v1 + 112) = v19;
    LOBYTE(v19) = 7;
    *(v1 + 120) = sub_1D72642CC() & 1;
    v21 = 8;
    sub_1D5C6F27C();
    sub_1D726427C();
    v14 = BYTE8(v19);
    *(v1 + 128) = v19;
    *(v1 + 136) = v14;
    type metadata accessor for FormatVideoNodeStyle();
    v21 = 9;
    sub_1D6E0725C(&qword_1EDF0EC18, 255, type metadata accessor for FormatVideoNodeStyle);
    sub_1D726427C();
    *(v1 + 144) = v19;
    sub_1D6E06D8C(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    v21 = 10;
    sub_1D6E06DF4(&qword_1EC881B10, sub_1D5F8FD48);
    sub_1D726431C();
    (*(v8 + 8))(v18, v17);
    *(v1 + 152) = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

void sub_1D6E06D8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D6E06DF4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D6E06D8C(255, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6E06FDC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatVideoNodeLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D6E07058(uint64_t a1, uint64_t a2)
{
  sub_1D6E0725C(&qword_1EC8940C8, a2, type metadata accessor for FormatVideoNodeLayoutAttributes);

  return sub_1D725A24C();
}

unint64_t sub_1D6E07158()
{
  result = qword_1EC8967E8;
  if (!qword_1EC8967E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8967E8);
  }

  return result;
}

unint64_t sub_1D6E071B0()
{
  result = qword_1EC8967F0;
  if (!qword_1EC8967F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8967F0);
  }

  return result;
}

unint64_t sub_1D6E07208()
{
  result = qword_1EC8967F8;
  if (!qword_1EC8967F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8967F8);
  }

  return result;
}

uint64_t sub_1D6E0725C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1D6E072D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D7260FEC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D6E088FC();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = a1;
  v25 = a2;
  sub_1D6E089AC(0);
  sub_1D6E08C14(&qword_1EC8968B8, sub_1D6E089AC);
  sub_1D726168C();
  sub_1D7260FDC();
  sub_1D6E08C14(&qword_1EC8968C0, sub_1D6E088FC);
  sub_1D726183C();
  (*(v7 + 8))(v10, v6);
  (*(v13 + 8))(v16, v12);
  v17 = [objc_opt_self() secondaryLabelColor];
  v18 = sub_1D726189C();
  KeyPath = swift_getKeyPath();
  v26 = v18;
  v20 = sub_1D7260EFC();
  sub_1D6E09544();
  v22 = (a3 + *(v21 + 36));
  *v22 = KeyPath;
  v22[1] = v20;
}

uint64_t sub_1D6E07574@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v130 = a1;
  v144 = a3;
  sub_1D5F7BAC0();
  v146 = v4;
  v145 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v159 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v152 = &v128 - v9;
  sub_1D6E09188(0, &qword_1EC8968A8, sub_1D6E09208);
  v158 = v10;
  v143 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v153 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v151 = &v128 - v15;
  sub_1D6E08CE4(0);
  v142 = v16;
  v141 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16, v17);
  v137 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6E09188(0, &qword_1EC896898, sub_1D6E09134);
  v136 = v19;
  v135 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v134 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v140 = &v128 - v24;
  sub_1D6E08DAC();
  v133 = v25;
  v132 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v131 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v139 = &v128 - v30;
  sub_1D6E08CB0(0);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v150 = &v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v128 - v36;
  sub_1D6E09188(0, &qword_1EC896840, sub_1D6E08C5C);
  v157 = v38;
  v149 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v39);
  v156 = &v128 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v155 = &v128 - v43;
  sub_1D6E08B60(0);
  v138 = v44;
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v46);
  v129 = &v128 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68D69A0(0);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v51 = &v128 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DebugFormatEditorLayoutContext();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v54);
  v56 = &v128 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6E08AC8(0);
  MEMORY[0x1EEE9AC00](v57 - 8, v58);
  v148 = &v128 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = &v128 - v62;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  v160 = a2;
  sub_1D72600CC();

  v64 = (*(v53 + 48))(v51, 1, v52);
  v154 = v63;
  if (v64 == 1)
  {
    v65 = v160;

    v66 = sub_1D68D69A0;
    v67 = v51;
  }

  else
  {
    sub_1D6E09750(v51, v56);
    swift_getKeyPath();
    swift_getKeyPath();
    v65 = v160;
    sub_1D72600CC();

    v68 = *(v161 + 16);

    v69 = *(v68 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);

    if (v69 <= 3)
    {
      v70 = v65[2];

      v71 = sub_1D7259CCC();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1D72600CC();

      type metadata accessor for DebugFormatPackageTreeColumn();
      swift_allocObject();
      sub_1D5F3F1F0(v70, v71);
      type metadata accessor for DebugFormatPackageTree();
      sub_1D6E08C14(&qword_1EC885268, type metadata accessor for DebugFormatPackageTree);
      v72 = sub_1D7260F8C();
      v74 = v73;
      sub_1D6E08C14(&qword_1EC8968D8, type metadata accessor for DebugFormatPackageTreeColumn);
      v75 = sub_1D7260F8C();
      v77 = v76;
      v161 = sub_1D726185C();
      v78 = sub_1D726199C();
      v161 = v72;
      v162 = v74;
      v163 = v75;
      v164 = v77;
      v165 = v78;
      sub_1D7260EDC();
      sub_1D6E08F24(0, &qword_1EC896828);
      sub_1D6E08B90();
      v79 = v129;
      v65 = v160;
      v63 = v154;
      sub_1D72617DC();

      sub_1D6E097B4(v56, type metadata accessor for DebugFormatEditorLayoutContext);
      v80 = v138;
      (*(v45 + 32))(v63, v79, v138);
      v81 = v80;
      v82 = 0;
      goto LABEL_7;
    }

    v66 = type metadata accessor for DebugFormatEditorLayoutContext;
    v67 = v56;
  }

  sub_1D6E097B4(v67, v66);
  v82 = 1;
  v81 = v138;
LABEL_7:
  (*(v45 + 56))(v63, v82, 1, v81);
  v83 = type metadata accessor for DebugFormatPackageTree();
  v84 = sub_1D6E08C14(&qword_1EC885268, type metadata accessor for DebugFormatPackageTree);
  v161 = sub_1D7260F8C();
  v162 = v85;
  sub_1D7260EDC();
  sub_1D6E08C5C();
  sub_1D72617DC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v86 = *(v161 + 16);

  v87 = *(v86 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);

  v147 = v37;
  if (v87 > 3)
  {

    v107 = 1;
  }

  else
  {
    v166 = &unk_1F5119998;
    swift_getKeyPath();
    v88 = swift_allocObject();
    *(v88 + 16) = v130;
    *(v88 + 24) = v65;
    sub_1D5B5CFF8(0, &unk_1EDF3C820, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    sub_1D6E08E90(0, &qword_1EC896870, &qword_1EC896878, &type metadata for DebugFormatPackageTreeColumnView, sub_1D6E08F84);
    sub_1D6E090B8();
    sub_1D6E08F24(255, &qword_1EC896878);
    v90 = v89;
    v91 = sub_1D6E08F84();

    v161 = v90;
    v162 = v91;
    swift_getOpaqueTypeConformance2();
    v92 = v139;
    sub_1D72619DC();
    v161 = sub_1D7260F8C();
    v162 = v93;
    sub_1D7260EDC();
    sub_1D6E09134();
    v94 = v140;
    sub_1D72617DC();

    v130 = v84;
    v95 = v132;
    v96 = *(v132 + 16);
    v97 = v131;
    v98 = v133;
    v96(v131, v92, v133);
    v99 = v135;
    v129 = *(v135 + 16);
    v138 = v83;
    v100 = v134;
    v101 = v94;
    v102 = v136;
    (v129)(v134, v101, v136);
    v103 = v137;
    v96(v137, v97, v98);
    sub_1D6E08D18();
    (v129)(v103 + *(v104 + 48), v100, v102);
    v105 = *(v99 + 8);
    v105(v140, v102);
    v106 = *(v95 + 8);
    v106(v139, v98);
    v105(v100, v102);
    v106(v97, v98);
    v37 = v147;
    sub_1D5DC7AC0(v103, v147);
    v107 = 0;
  }

  (*(v141 + 56))(v37, v107, 1, v142);
  v161 = sub_1D7260F8C();
  v162 = v108;
  sub_1D7260EDC();
  sub_1D6E09208();
  v109 = v151;
  sub_1D72617DC();

  v161 = 0;
  LOBYTE(v162) = 1;
  sub_1D7260EDC();
  v110 = v152;
  sub_1D72617DC();
  v111 = v148;
  sub_1D6E09680(v154, v148, sub_1D6E08AC8);
  v160 = *(v149 + 16);
  (v160)(v156, v155, v157);
  v142 = sub_1D6E08CB0;
  v112 = v150;
  sub_1D6E09680(v37, v150, sub_1D6E08CB0);
  v113 = v143;
  v141 = *(v143 + 16);
  v114 = v153;
  (v141)(v153, v109, v158);
  v115 = v145;
  v140 = *(v145 + 16);
  v116 = v110;
  v117 = v146;
  (v140)(v159, v116, v146);
  v118 = v111;
  v119 = v144;
  sub_1D6E09680(v118, v144, sub_1D6E08AC8);
  sub_1D6E089E0();
  v121 = v120;
  (v160)(v119 + v120[12], v156, v157);
  sub_1D6E09680(v112, v119 + v121[16], v142);
  v122 = v158;
  (v141)(v119 + v121[20], v114, v158);
  (v140)(v119 + v121[24], v159, v117);
  v123 = *(v115 + 8);
  v123(v152, v117);
  v124 = *(v113 + 8);
  v124(v151, v122);
  sub_1D6E096E8(v147, sub_1D6E08CB0);
  v125 = *(v149 + 8);
  v126 = v157;
  v125(v155, v157);
  sub_1D6E096E8(v154, sub_1D6E08AC8);
  v123(v159, v117);
  v124(v153, v158);
  sub_1D6E096E8(v150, sub_1D6E08CB0);
  v125(v156, v126);
  return sub_1D6E096E8(v148, sub_1D6E08AC8);
}

uint64_t sub_1D6E086EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a3 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D72600CC();

  type metadata accessor for DebugFormatPackageTreeColumn();
  swift_allocObject();
  sub_1D5F3F1F0(v4, v3);
  type metadata accessor for DebugFormatPackageTree();
  sub_1D6E08C14(&qword_1EC885268, type metadata accessor for DebugFormatPackageTree);
  sub_1D7260F8C();
  sub_1D6E08C14(&qword_1EC8968D8, type metadata accessor for DebugFormatPackageTreeColumn);
  sub_1D7260F8C();
  sub_1D726185C();
  sub_1D726199C();
  sub_1D7260EDC();
  sub_1D6E08F24(0, &qword_1EC896878);
  sub_1D6E08F84();
  sub_1D72617DC();
}

void sub_1D6E088FC()
{
  if (!qword_1EC896800)
  {
    sub_1D6E089AC(255);
    sub_1D6E08C14(&qword_1EC8968B8, sub_1D6E089AC);
    v0 = sub_1D726169C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC896800);
    }
  }
}

void sub_1D6E089E0()
{
  if (!qword_1EC896810)
  {
    sub_1D6E08AC8(255);
    sub_1D6E09188(255, &qword_1EC896840, sub_1D6E08C5C);
    sub_1D6E08CB0(255);
    sub_1D6E09188(255, &qword_1EC8968A8, sub_1D6E09208);
    sub_1D5F7BAC0();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC896810);
    }
  }
}

void sub_1D6E08AFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D6E08BC0()
{
  result = qword_1EC896838;
  if (!qword_1EC896838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896838);
  }

  return result;
}

uint64_t sub_1D6E08C14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D6E08C5C()
{
  result = qword_1EC896848;
  if (!qword_1EC896848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896848);
  }

  return result;
}

void sub_1D6E08D18()
{
  if (!qword_1EC896860)
  {
    sub_1D6E08DAC();
    sub_1D6E09188(255, &qword_1EC896898, sub_1D6E09134);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC896860);
    }
  }
}

void sub_1D6E08DAC()
{
  if (!qword_1EC896868)
  {
    sub_1D5B5CFF8(255, &unk_1EDF3C820, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    sub_1D6E08E90(255, &qword_1EC896870, &qword_1EC896878, &type metadata for DebugFormatPackageTreeColumnView, sub_1D6E08F84);
    sub_1D6E090B8();
    v0 = sub_1D72619FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC896868);
    }
  }
}

void sub_1D6E08E90(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    sub_1D6E08F24(255, a3);
    a5();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v8)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1D6E08F24(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1D5F260A0();
    v3 = sub_1D726101C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1D6E08FB4(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D6E08F24(255, a2);
    a4();
    sub_1D6E08C14(&qword_1EC8811A8, sub_1D5F260A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6E09064()
{
  result = qword_1EC896888;
  if (!qword_1EC896888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896888);
  }

  return result;
}

unint64_t sub_1D6E090B8()
{
  result = qword_1EC896890;
  if (!qword_1EC896890)
  {
    sub_1D5B5CFF8(255, &unk_1EDF3C820, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896890);
  }

  return result;
}

unint64_t sub_1D6E09134()
{
  result = qword_1EC8968A0;
  if (!qword_1EC8968A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8968A0);
  }

  return result;
}

void sub_1D6E09188(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1D6E09208()
{
  result = qword_1EC8968B0;
  if (!qword_1EC8968B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8968B0);
  }

  return result;
}

uint64_t sub_1D6E09264@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a1 = v3;
  return result;
}

uint64_t sub_1D6E092E4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

uint64_t sub_1D6E09360()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();
}

uint64_t sub_1D6E093DC(uint64_t a1)
{
  sub_1D68D69A0(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v11 - v8;
  sub_1D6C8B21C(a1, &v11 - v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D6C8B21C(v9, v5);

  sub_1D72600DC();
  return sub_1D6E097B4(v9, sub_1D68D69A0);
}

uint64_t sub_1D6E094EC@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1DA6F87C0]();
  *a1 = result;
  return result;
}

void sub_1D6E09544()
{
  if (!qword_1EC8968C8)
  {
    sub_1D6E095AC();
    sub_1D6C2E5F4();
    v0 = sub_1D726101C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8968C8);
    }
  }
}

void sub_1D6E095AC()
{
  if (!qword_1EC8968D0)
  {
    sub_1D6E088FC();
    sub_1D7260FEC();
    sub_1D6E08C14(&qword_1EC8968C0, sub_1D6E088FC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC8968D0);
    }
  }
}

uint64_t sub_1D6E09680(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6E096E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6E09750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatEditorLayoutContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6E097B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D6E09814()
{
  result = qword_1EC8968E0;
  if (!qword_1EC8968E0)
  {
    sub_1D6E09544();
    sub_1D6E088FC();
    sub_1D7260FEC();
    sub_1D6E08C14(&qword_1EC8968C0, sub_1D6E088FC);
    swift_getOpaqueTypeConformance2();
    sub_1D6E08C14(&qword_1EC88D210, sub_1D6C2E5F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8968E0);
  }

  return result;
}

unint64_t UIAccessibilityContrast.isDarkerSystemColorsEnabled.getter(unint64_t result)
{
  if (result >= 2)
  {
    return UIAccessibilityDarkerSystemColorsEnabled();
  }

  return result;
}

uint64_t UIAccessibilityContrast.description.getter(uint64_t a1)
{
  v1 = 1751607656;
  v2 = 0x6E776F6E6B6E75;
  if (!a1)
  {
    v2 = 0x6C616D726F6ELL;
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  if (a1 == -1)
  {
    return 0x6669636570736E75;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D6E099E4()
{
  v1 = *v0;
  v2 = 1751607656;
  v3 = 0x6E776F6E6B6E75;
  if (!*v0)
  {
    v3 = 0x6C616D726F6ELL;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1 == -1)
  {
    return 0x6669636570736E75;
  }

  else
  {
    return v2;
  }
}

Class FormatColor.color.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1 >> 60;
  if (v3 <= 5)
  {
    if (v3 <= 2)
    {
      if (!v3)
      {
        v22 = *(v2 + 16);
        v23 = *(v2 + 24);
        sub_1D5C0B9F0();

        v24._countAndFlagsBits = v22;
        v24._object = v23;
        return UIColor.init(hex:)(v24).super.isa;
      }

      v4 = v2 & 0xFFFFFFFFFFFFFFFLL;
      if (v3 == 1)
      {
        v5 = *(v4 + 24);
        v6 = *(v4 + 32);
        LOBYTE(v38[0]) = *(v4 + 16);
        result = FormatSystemColor.color.getter();
        if (v6)
        {
          return result;
        }

        v8 = 1.0;
        if (v5 <= 1.0)
        {
          v8 = v5;
        }

        if (v8 < 0.0)
        {
          v8 = 0.0;
        }
      }

      else
      {
        v32 = *(v4 + 24);
        v33 = *(v4 + 32);
        LOBYTE(v38[0]) = *(v4 + 16);
        result = FormatFixedColor.color.getter();
        if (v33)
        {
          return result;
        }

        v8 = 1.0;
        if (v32 <= 1.0)
        {
          v8 = v32;
        }

        if (v8 < 0.0)
        {
          v8 = 0.0;
        }
      }

      v34 = result;
      v31 = [(objc_class *)result colorWithAlphaComponent:v8, v38[0]];

      return v31;
    }

    if (v3 == 3)
    {
      v25 = v2 & 0xFFFFFFFFFFFFFFFLL;
      v27 = *(v25 + 16);
      v26 = *(v25 + 24);
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = v26;
      v29 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v38[4] = sub_1D6E0CE90;
      v38[5] = v28;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 1107296256;
      v38[2] = sub_1D6E0CD34;
      v38[3] = &block_descriptor_100;
      v30 = _Block_copy(v38);

      v31 = [v29 initWithDynamicProvider_];
      _Block_release(v30);

      return v31;
    }

    if (v3 == 4)
    {
      goto LABEL_21;
    }

    v35 = v2 & 0xFFFFFFFFFFFFFFFLL;
    v36 = *(v35 + 16);
    if (*(v35 + 32))
    {
      v37 = 1.0;
    }

    else
    {
      v37 = *(v35 + 24);
    }

    v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v15 = sel_initWithWhite_alpha_;
    v16 = v36;
    v17 = v37;

    return [v14 v15];
  }

  if (v3 > 8)
  {
    if (v3 == 9)
    {
      v21 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    }

    else
    {
      v21 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    }

    v38[0] = v21;
    return FormatColor.color.getter(a1);
  }

  if ((v3 - 7) >= 2)
  {
    v9 = v2 & 0xFFFFFFFFFFFFFFFLL;
    if (*(v9 + 48))
    {
      v10 = 1.0;
    }

    else
    {
      v10 = *(v9 + 40);
    }

    v11 = *(v9 + 16) / 255.0;
    v12 = *(v9 + 24) / 255.0;
    v13 = *(v9 + 32) / 255.0;
    v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v15 = sel_initWithRed_green_blue_alpha_;
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = v10;

    return [v14 v15];
  }

LABEL_21:
  v20 = [objc_opt_self() clearColor];

  return v20;
}

uint64_t static FormatColor.system(_:alpha:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  result = swift_allocObject();
  *(result + 16) = v7;
  *(result + 24) = a2;
  *(result + 32) = a3 & 1;
  *a4 = result | 0x1000000000000000;
  return result;
}

void *sub_1D6E09E48(uint64_t a1, unint64_t *a2)
{
  v4 = type metadata accessor for FormatInspectionItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  *&v316 = &v285 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EA74B8();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v315 = (&v285 - v15);
  v16 = *(a1 + 112);
  v339 = *(a1 + 96);
  v340 = v16;
  v341 = *(a1 + 128);
  v342 = *(a1 + 144);
  v17 = *(a1 + 48);
  v335 = *(a1 + 32);
  v336 = v17;
  v18 = *(a1 + 80);
  v337 = *(a1 + 64);
  v338 = v18;
  v19 = *(a1 + 16);
  v333 = *a1;
  v334 = v19;
  v20 = *a2;
  if ((~*a2 & 0xF000000000000007) == 0)
  {
    sub_1D5EF032C();
    v21 = swift_allocObject();
    v316 = xmmword_1D7273AE0;
    *(v21 + 16) = xmmword_1D7273AE0;
    sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v316;
    sub_1D711F844(1701869908, 0xE400000000000000, 1701736270, 0xE400000000000000, (v23 + v22));
    (*(v5 + 56))(v23 + v22, 0, 1, v4);
    sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v23, &v320);
    swift_setDeallocating();
    sub_1D6180C78(v23 + v22);
LABEL_49:
    swift_deallocClassInstance();
    *(v21 + 56) = &type metadata for FormatInspectionGroup;
    *(v21 + 64) = &off_1F518B2C0;
    v208 = swift_allocObject();
    *(v21 + 32) = v208;
    v209 = v321;
    *(v208 + 16) = v320;
    *(v208 + 32) = v209;
    *(v208 + 48) = v322;
    v129 = sub_1D7073500(v21);
    swift_setDeallocating();
    sub_1D5F10AA0(v21 + 32);
    swift_deallocClassInstance();
    return v129;
  }

  v24 = v20 >> 60;
  v311 = v4;
  v313 = v9;
  v314 = v5;
  if ((v20 >> 60) <= 5)
  {
    if (v24 <= 2)
    {
      if (v24)
      {
        v25 = v20 & 0xFFFFFFFFFFFFFFFLL;
        *&v316 = *(v25 + 24);
        LODWORD(v315) = *(v25 + 32);
        v26 = *(v25 + 16);
        if (v24 == 1)
        {
          sub_1D5EF032C();
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1D7273AE0;
          sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
          v27 = *(v10 + 72);
          v28 = (*(v10 + 80) + 32) & ~*(v10 + 80);
          v29 = 2 * v27;
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_1D7279970;
          v31 = (v30 + v28);
          sub_1D711F844(1701869908, 0xE400000000000000, 0x6D6574737953, 0xE600000000000000, v31);
          v32 = *(v314 + 56);
          v33 = v311;
          v32(v31, 0, 1, v311);
          sub_1D711FD08(1701667150, 0xE400000000000000, v26, v31 + v27);
        }

        else
        {
          sub_1D5EF032C();
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1D7273AE0;
          sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
          v27 = *(v10 + 72);
          v151 = (*(v10 + 80) + 32) & ~*(v10 + 80);
          v29 = 2 * v27;
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_1D7279970;
          v31 = (v30 + v151);
          sub_1D711F844(1701869908, 0xE400000000000000, 0x6465786946, 0xE500000000000000, v31);
          v32 = *(v314 + 56);
          v33 = v311;
          v32(v31, 0, 1, v311);
          sub_1D711FFFC(1701667150, 0xE400000000000000, v26, v31 + v27);
        }

        v32((v31 + v27), 0, 1, v33);
        sub_1D711A80C(0x6168706C41, 0xE500000000000000, v316, v315, (v31 + v29));
        v32((v31 + v29), 0, 1, v33);
        goto LABEL_47;
      }

      v95 = *(v20 + 24);
      *&v316 = *(v20 + 16);
      sub_1D5EF032C();
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1D7273AE0;
      sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      v96 = *(v10 + 72);
      v97 = v5;
      v98 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_1D7270C10;
      v100 = (v99 + v98);

      sub_1D711F844(1701869908, 0xE400000000000000, 7890248, 0xE300000000000000, v100);
      v101 = *(v97 + 56);
      v101(v100, 0, 1, v4);
      sub_1D711F844(7890248, 0xE300000000000000, v316, v95, (v100 + v96));
      v101((v100 + v96), 0, 1, v4);
      sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v99, &v320);
      swift_setDeallocating();
LABEL_48:
      swift_arrayDestroy();
      goto LABEL_49;
    }

    v52 = v20 & 0xFFFFFFFFFFFFFFFLL;
    if (v24 == 3)
    {
      v111 = *(v52 + 16);
      v310 = *(v52 + 24);
      sub_1D5EF032C();
      *&v316 = swift_allocObject();
      *(v316 + 16) = xmmword_1D7273AE0;
      sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      v112 = *(v10 + 72);
      v113 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v309 = (2 * v112);
      v114 = swift_allocObject();
      v315 = v114;
      *(v114 + 16) = xmmword_1D7279970;
      v115 = (v114 + v113);

      v312 = v111;

      sub_1D711F844(1701869908, 0xE400000000000000, 0x65746E4972657355, 0xED00006563616672, v115);
      v116 = *(v5 + 56);
      v116(v115, 0, 1, v4);
      v117 = v115 + v112;
      v118 = *(v4 + 24);
      *&v117[v118] = v111;
      v119 = type metadata accessor for FormatInspectionItem.Value(0);
      v314 = v5 + 56;
      v120 = v119;
      swift_storeEnumTagMultiPayload();
      v121 = *(*(v120 - 8) + 56);
      v121(&v117[v118], 0, 1, v120);
      *v117 = xmmword_1D735AE50;
      *(v117 + 2) = 0;
      *(v117 + 3) = 0;
      v122 = &v117[*(v4 + 28)];
      *v122 = 0;
      *(v122 + 1) = 0;
      v122[16] = -1;
      v116(v117, 0, 1, v4);
      v123 = &v309[v115];
      v124 = *(v4 + 24);
      *&v309[v115 + v124] = v310;
      swift_storeEnumTagMultiPayload();
      v121(&v123[v124], 0, 1, v120);
      *v123 = xmmword_1D735AE60;
      *(v123 + 2) = 0;
      *(v123 + 3) = 0;
      v125 = &v123[*(v4 + 28)];
      *v125 = 0;
      *(v125 + 1) = 0;
      v125[16] = -1;
      v116(v123, 0, 1, v4);

      sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v315, &v320);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v126 = v316;
      *(v316 + 56) = &type metadata for FormatInspectionGroup;
      *(v126 + 64) = &off_1F518B2C0;
      v127 = swift_allocObject();
      *(v126 + 32) = v127;
      v128 = v321;
      *(v127 + 16) = v320;
      *(v127 + 32) = v128;
      *(v127 + 48) = v322;
      v129 = sub_1D7073500(v126);
      swift_setDeallocating();
      sub_1D5F10AA0(v126 + 32);
      swift_deallocClassInstance();

      return v129;
    }

    if (v24 != 4)
    {
      v202 = *(v52 + 16);
      *&v316 = *(v52 + 24);
      LODWORD(v315) = *(v52 + 32);
      sub_1D5EF032C();
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1D7273AE0;
      sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      v203 = v4;
      v204 = *(v10 + 72);
      v205 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1D7279970;
      v206 = (v30 + v205);
      sub_1D711F844(1701869908, 0xE400000000000000, 0x6C61637379617247, 0xE900000000000065, v206);
      v207 = *(v5 + 56);
      v207(v206, 0, 1, v203);
      sub_1D711A80C(0x6574696857, 0xE500000000000000, v202, 0, (v206 + v204));
      v207((v206 + v204), 0, 1, v203);
      sub_1D711A80C(0x6168706C41, 0xE500000000000000, v316, v315, (v206 + 2 * v204));
      v207((v206 + 2 * v204), 0, 1, v203);
LABEL_47:
      sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v30, &v320);
      swift_setDeallocating();
      goto LABEL_48;
    }

    v53 = *(v52 + 16);
    *&v316 = *(v52 + 24);
    sub_1D5EF032C();
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1D7273AE0;
    sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    v55 = *(v10 + 72);
    v56 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1D7279970;
    v315 = v57;
    v58 = (v57 + v56);

    sub_1D711F844(1701869908, 0xE400000000000000, 0x65737365636F7250, 0xE900000000000064, v58);
    v60 = *(v5 + 56);
    v59 = v5 + 56;
    (v60)(v58, 0, 1, v4);
    v312 = v58;
    v61 = &v55[v58];
    v62 = *(v4 + 24);
    v63 = v53;
    *&v61[v62] = v53;
    v64 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v64 - 8) + 56))(&v61[v62], 0, 1, v64);
    *v61 = xmmword_1D72EBCC0;
    *(v61 + 2) = 0;
    *(v61 + 3) = 0;
    v65 = &v61[*(v4 + 28)];
    *v65 = 0;
    *(v65 + 1) = 0;
    v65[16] = -1;
    v310 = v60;
    (v60)(v61, 0, 1, v4);
    v66 = v316;
    v67 = *(v316 + 16);
    if (v67)
    {
      v307 = v55;
      *&v308 = v54;
      v314 = v59;
      *&v330 = MEMORY[0x1E69E7CC0];
      v309 = v63;

      sub_1D6997EC0(0, v67, 0);
      v68 = v330;
      v69 = (v66 + 32);
      do
      {
        v70 = *v69++;
        v326 = v339;
        v327 = v340;
        v328 = v341;
        v329 = v342;
        v322 = v335;
        v323 = v336;
        v324 = v337;
        v325 = v338;
        v320 = v333;
        v321 = v334;
        v317[0] = v70;
        sub_1D5ECF0E0(v70);
        sub_1D5ECF0E0(v70);
        v71 = sub_1D5EF4424(&v320, v317);
        sub_1D5EF5F6C(v317[0]);
        sub_1D5ECF11C(v70);
        *&v330 = v68;
        v73 = *(v68 + 16);
        v72 = *(v68 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_1D6997EC0((v72 > 1), v73 + 1, 1);
          v68 = v330;
        }

        *(&v321 + 1) = &type metadata for FormatInspection;
        *&v322 = &off_1F51E3FD0;
        *&v320 = v71;
        *(v68 + 16) = v73 + 1;
        sub_1D5B63F14(&v320, v68 + 40 * v73 + 32);
        --v67;
      }

      while (v67);
      v4 = v311;
      v55 = v307;
      v54 = v308;
    }

    else
    {

      v68 = MEMORY[0x1E69E7CC0];
    }

    v263 = v312 + 2 * v55;
    v264 = sub_1D5F62BFC(v68);

    v265 = sub_1D7073500(v264);

    sub_1D711AD20(0x6F737365636F7250, 0xEA00000000007372, v265, 0, 0, v263);
    (v310)(v263, 0, 1, v4);
    sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v315, &v320);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v54 + 56) = &type metadata for FormatInspectionGroup;
    *(v54 + 64) = &off_1F518B2C0;
    v266 = swift_allocObject();
    *(v54 + 32) = v266;
    v267 = v321;
    *(v266 + 16) = v320;
    *(v266 + 32) = v267;
    *(v266 + 48) = v322;
    v51 = sub_1D7073500(v54);
    swift_setDeallocating();
    sub_1D5F10AA0(v54 + 32);
    swift_deallocClassInstance();
    goto LABEL_79;
  }

  if (v24 > 8)
  {
    if (v24 == 9)
    {
      v130 = v20 & 0xFFFFFFFFFFFFFFFLL;
      v131 = *(v130 + 16);
      *&v316 = *(v130 + 24);
      v132 = *(v130 + 32);
      v306 = *(v130 + 48);
      v133 = *(v130 + 40);
      sub_1D5EF032C();
      v310 = swift_allocObject();
      v308 = xmmword_1D7273AE0;
      *(v310 + 1) = xmmword_1D7273AE0;
      sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      v309 = *(v10 + 72);
      v134 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v135 = swift_allocObject();
      *(v135 + 16) = xmmword_1D7270C10;
      v136 = (v135 + v134);
      v137 = v131;
      v315 = v131;
      v138 = v131;
      v139 = v316;
      v312 = v132;
      sub_1D5F58038(v138, v316, v132, v133);

      sub_1D711F844(1701869908, 0xE400000000000000, 0x676E69646E6942, 0xE700000000000000, v136);
      v314 = *(v5 + 56);
      (v314)(v136, 0, 1, v4);
      *&v320 = sub_1D5F4D374(v137, v139, v132, v133);
      sub_1D5BBE0A8();
      sub_1D5BB0AB8();
      v307 = sub_1D7261F3C();
      v141 = v140;

      sub_1D6E0CED0(0, &qword_1EC8803C0, MEMORY[0x1E69E6F90]);
      v142 = swift_allocObject();
      *(v142 + 16) = v308;
      v143 = v306;
      *&v320 = v306;

      v144 = sub_1D6E09E48(&v333, &v320);
      sub_1D5C84FF4(v143);
      *(v142 + 56) = &type metadata for FormatInspection;
      *(v142 + 64) = &off_1F51E3FD0;
      *(v142 + 32) = v144;
      v145 = sub_1D5F62BFC(v142);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(v142 + 32);
      swift_deallocClassInstance();
      v146 = sub_1D7073500(v145);

      v147 = v309;
      sub_1D711AD20(0x676E69646E6942, 0xE700000000000000, v146, v307, v141, &v309[v136]);
      (v314)(&v147[v136], 0, 1, v311);
      sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v135, &v320);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v148 = v310;
      *(v310 + 7) = &type metadata for FormatInspectionGroup;
      v148[8] = &off_1F518B2C0;
      v149 = swift_allocObject();
      v148[4] = v149;
      v150 = v321;
      *(v149 + 16) = v320;
      *(v149 + 32) = v150;
      *(v149 + 48) = v322;
      v51 = sub_1D7073500(v148);
      swift_setDeallocating();
      sub_1D5F10AA0((v148 + 4));
      swift_deallocClassInstance();
      sub_1D5F57FEC(v315, v316, v312, v133);
LABEL_80:

      return v51;
    }

    if (v24 == 10)
    {
      v74 = (v20 & 0xFFFFFFFFFFFFFFFLL);
      v75 = v74[2];
      v76 = v74[3];
      v77 = v74[4];
      sub_1D5EF032C();
      v315 = swift_allocObject();
      *(v315 + 1) = xmmword_1D7273AE0;
      sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      v78 = *(v10 + 72);
      v79 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v80 = swift_allocObject();
      *(v80 + 1) = xmmword_1D7279970;
      v312 = v80;
      v81 = (v80 + v79);
      *&v316 = v77;

      sub_1D711F844(1701869908, 0xE400000000000000, 0x65737365636F7250, 0xE900000000000064, v81);
      v83 = *(v5 + 56);
      v82 = v5 + 56;
      (v83)(v81, 0, 1, v4);
      v310 = v81;
      v84 = v78 + v81;
      v85 = *(v4 + 24);
      *&v84[v85] = v75;
      v86 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v86 - 8) + 56))(&v84[v85], 0, 1, v86);
      *v84 = xmmword_1D72EBCC0;
      *(v84 + 2) = 0;
      *(v84 + 3) = 0;
      v87 = &v84[*(v4 + 28)];
      *v87 = 0;
      *(v87 + 1) = 0;
      v87[16] = -1;
      v309 = v83;
      (v83)(v84, 0, 1, v4);
      v88 = *(v76 + 2);
      if (v88)
      {
        v306 = v78;
        v314 = v82;
        *&v330 = MEMORY[0x1E69E7CC0];
        *&v308 = v75;

        sub_1D6997EC0(0, v88, 0);
        v89 = v330;
        v307 = v76;
        v90 = (v76 + 32);
        do
        {
          v91 = *v90++;
          v326 = v339;
          v327 = v340;
          v328 = v341;
          v329 = v342;
          v322 = v335;
          v323 = v336;
          v324 = v337;
          v325 = v338;
          v320 = v333;
          v321 = v334;
          v317[0] = v91;
          sub_1D5ECF0E0(v91);
          sub_1D5ECF0E0(v91);
          v92 = sub_1D5EF4424(&v320, v317);
          sub_1D5EF5F6C(v317[0]);
          sub_1D5ECF11C(v91);
          *&v330 = v89;
          v94 = *(v89 + 16);
          v93 = *(v89 + 24);
          if (v94 >= v93 >> 1)
          {
            sub_1D6997EC0((v93 > 1), v94 + 1, 1);
            v89 = v330;
          }

          *(&v321 + 1) = &type metadata for FormatInspection;
          *&v322 = &off_1F51E3FD0;
          *&v320 = v92;
          *(v89 + 16) = v94 + 1;
          sub_1D5B63F14(&v320, v89 + 40 * v94 + 32);
          --v88;
        }

        while (v88);
        v4 = v311;
        v78 = v306;
      }

      else
      {

        v89 = MEMORY[0x1E69E7CC0];
      }

      v268 = &v310[2 * v78];
      v269 = sub_1D5F62BFC(v89);

      v270 = sub_1D7073500(v269);

      sub_1D711AD20(0x6F737365636F7250, 0xEA00000000007372, v270, 0, 0, v268);
      (v309)(v268, 0, 1, v4);
      sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v312, &v320);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v271 = v315;
      v315[7] = &type metadata for FormatInspectionGroup;
      *(v271 + 64) = &off_1F518B2C0;
      v272 = swift_allocObject();
      *(v271 + 32) = v272;
      v273 = v321;
      *(v272 + 16) = v320;
      *(v272 + 32) = v273;
      *(v272 + 48) = v322;
      v51 = sub_1D7073500(v271);
      swift_setDeallocating();
      sub_1D5F10AA0(v271 + 32);
      swift_deallocClassInstance();
    }

    else
    {
      *&v296 = v14;
      v211 = (v20 & 0xFFFFFFFFFFFFFFFLL);
      v212 = v211[2];
      v289 = v211[3];
      v213 = v211[4];
      sub_1D5EF032C();
      v214 = swift_allocObject();
      *(v214 + 16) = xmmword_1D7273AE0;
      sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      v215 = *(v10 + 72);
      v216 = *(v10 + 80);
      v217 = (v216 + 32) & ~v216;
      v299 = v216;
      *&v300 = v218;
      v219 = swift_allocObject();
      *(v219 + 16) = xmmword_1D7279970;
      v287 = v219;
      v288 = v213;
      v298 = v217;
      v220 = (v219 + v217);

      sub_1D711F844(1701869908, 0xE400000000000000, 0x726F7463656C6553, 0xE800000000000000, v220);
      v221 = *(v5 + 56);
      (v221)(v220, 0, 1, v4);
      v286 = v220;
      v222 = v220 + v215;
      v223 = *(v4 + 24);
      v290 = v212;
      *&v222[v223] = v212;
      v224 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      v225 = *(v224 - 8);
      v226 = *(v225 + 56);
      v297 = v224;
      *&v295 = v226;
      v310 = (v225 + 56);
      v226(&v222[v223], 0, 1, v224);
      v294 = xmmword_1D735AE40;
      *v222 = xmmword_1D735AE40;
      *(v222 + 2) = 0;
      *(v222 + 3) = 0;
      v227 = &v222[*(v4 + 28)];
      *v227 = 0;
      *(v227 + 1) = 0;
      v227[16] = -1;
      v301 = v221;
      v302 = v5 + 56;
      (v221)(v222, 0, 1, v4);
      v228 = v289;
      v229 = *(v289 + 16);
      if (v229)
      {
        v230 = v5;
        v285 = v214;
        *&v330 = MEMORY[0x1E69E7CC0];

        sub_1D6997EC0(0, v229, 0);
        v231 = v330;
        v293 = v215;
        v232 = 2 * v215;
        v309 = (v230 + 48);
        v233 = (v228 + 48);
        v291 = xmmword_1D731B700;
        v292 = v232;
        do
        {
          v307 = v231;
          *&v308 = v229;
          v234 = *(v233 - 2);
          v312 = *(v233 - 1);
          v235 = v312;
          v306 = v233;
          v303 = *v233;
          v236 = v298;
          v305 = swift_allocObject();
          v237 = v305 + v236;
          v238 = (v305 + v236 + *(v4 + 24));
          *v238 = v234;
          v238[1] = v235;
          v239 = v4;
          v240 = v297;
          swift_storeEnumTagMultiPayload();
          v241 = v295;
          (v295)(v238, 0, 1, v240);
          *v237 = v291;
          *(v237 + 16) = 0;
          *(v237 + 24) = 0;
          v242 = v237 + *(v239 + 28);
          *v242 = 0;
          *(v242 + 8) = 0;
          *(v242 + 16) = -1;
          v243 = v301;
          (v301)(v237, 0, 1, v239);
          v244 = v237 + v293;
          v245 = *(v239 + 24);
          *(v237 + v293 + v245) = v303;
          swift_storeEnumTagMultiPayload();
          v246 = v240;
          v4 = v239;
          v241(v244 + v245, 0, 1, v246);
          v247 = v309;
          *v244 = v294;
          *(v244 + 16) = 0;
          *(v244 + 24) = 0;
          v248 = v244 + *(v239 + 28);
          *v248 = 0;
          *(v248 + 8) = 0;
          *(v248 + 16) = -1;
          v243(v244, 0, 1, v239);
          swift_retain_n();
          swift_bridgeObjectRetain_n();
          v304 = v237;
          v249 = v315;
          sub_1D6795424(v237, v315);
          v250 = v296;
          sub_1D5CAD784(v249, v296, sub_1D5EA74B8);
          v251 = *v247;
          if ((*v247)(v250, 1, v4) == 1)
          {
            sub_1D6180C78(v250);
            v252 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            sub_1D5CAD784(v250, v316, type metadata accessor for FormatInspectionItem);
            v252 = MEMORY[0x1E69E7CC0];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v252 = sub_1D698BAE0(0, *(MEMORY[0x1E69E7CC0] + 16) + 1, 1, MEMORY[0x1E69E7CC0]);
            }

            v254 = v252[2];
            v253 = v252[3];
            if (v254 >= v253 >> 1)
            {
              v252 = sub_1D698BAE0(v253 > 1, v254 + 1, 1, v252);
            }

            v252[2] = v254 + 1;
            sub_1D5CAD784(v316, v252 + ((*(v314 + 80) + 32) & ~*(v314 + 80)) + *(v314 + 72) * v254, type metadata accessor for FormatInspectionItem);
            v4 = v311;
          }

          v255 = v315;
          sub_1D6795424(v244, v315);
          sub_1D5CAD784(v255, v250, sub_1D5EA74B8);
          if (v251(v250, 1, v4) == 1)
          {
            sub_1D6180C78(v250);
            v256 = v306;
            v231 = v307;
          }

          else
          {
            sub_1D5CAD784(v250, v316, type metadata accessor for FormatInspectionItem);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v252 = sub_1D698BAE0(0, v252[2] + 1, 1, v252);
            }

            v256 = v306;
            v258 = v252[2];
            v257 = v252[3];
            if (v258 >= v257 >> 1)
            {
              v252 = sub_1D698BAE0(v257 > 1, v258 + 1, 1, v252);
            }

            v252[2] = v258 + 1;
            sub_1D5CAD784(v316, v252 + ((*(v314 + 80) + 32) & ~*(v314 + 80)) + *(v314 + 72) * v258, type metadata accessor for FormatInspectionItem);
            v231 = v307;
          }

          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();

          *&v330 = v231;
          v260 = *(v231 + 2);
          v259 = *(v231 + 3);
          if (v260 >= v259 >> 1)
          {
            sub_1D6997EC0((v259 > 1), v260 + 1, 1);
            v231 = v330;
          }

          v233 = v256 + 3;
          *(&v321 + 1) = &type metadata for FormatInspectionGroup;
          *&v322 = &off_1F518B2C0;
          v261 = swift_allocObject();
          *&v320 = v261;
          v261[2] = 0;
          v261[3] = 0xE000000000000000;
          v261[4] = 0;
          v261[5] = 0;
          v261[6] = v252;
          *(v231 + 2) = v260 + 1;
          sub_1D5B63F14(&v320, &v231[40 * v260 + 32]);
          v229 = v308 - 1;
          v262 = v292;
        }

        while (v308 != 1);

        v214 = v285;
      }

      else
      {
        v262 = 2 * v215;

        v231 = MEMORY[0x1E69E7CC0];
      }

      v280 = sub_1D5F62BFC(v231);

      v281 = sub_1D7073500(v280);

      v282 = v286;
      sub_1D711AD20(0x726F7463656C6553, 0xE900000000000073, v281, 0, 0, v286 + v262);
      (v301)(v282 + v262, 0, 1, v4);
      sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v287, &v320);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v214 + 56) = &type metadata for FormatInspectionGroup;
      *(v214 + 64) = &off_1F518B2C0;
      v283 = swift_allocObject();
      *(v214 + 32) = v283;
      v284 = v321;
      *(v283 + 16) = v320;
      *(v283 + 32) = v284;
      *(v283 + 48) = v322;
      v51 = sub_1D7073500(v214);
      swift_setDeallocating();
      sub_1D5F10AA0(v214 + 32);
      swift_deallocClassInstance();
    }

LABEL_79:

    goto LABEL_80;
  }

  if (v24 == 6)
  {
    v102 = v20 & 0xFFFFFFFFFFFFFFFLL;
    v103 = v4;
    v104 = *(v102 + 16);
    v310 = *(v102 + 24);
    v105 = *(v102 + 40);
    v312 = *(v102 + 32);
    *&v316 = v105;
    LODWORD(v315) = *(v102 + 48);
    sub_1D5EF032C();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D7273AE0;
    sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    v106 = *(v10 + 72);
    v107 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v108 = 4 * v106;
    v109 = swift_allocObject();
    *(v109 + 16) = xmmword_1D7279960;
    sub_1D711F844(1701869908, 0xE400000000000000, 1094862674, 0xE400000000000000, (v109 + v107));
    v110 = *(v5 + 56);
    v110(v109 + v107, 0, 1, v103);
    sub_1D711A80C(6579538, 0xE300000000000000, v104, 0, (v109 + v107 + v106));
    v110(v109 + v107 + v106, 0, 1, v103);
    sub_1D711A80C(0x6E65657247, 0xE500000000000000, v310, 0, (v109 + v107 + 2 * v106));
    v110(v109 + v107 + 2 * v106, 0, 1, v103);
    v106 *= 3;
    sub_1D711A80C(1702194242, 0xE400000000000000, v312, 0, (v109 + v107 + v106));
    v110(v109 + v107 + v106, 0, 1, v103);
    sub_1D711A80C(0x6168706C41, 0xE500000000000000, v316, v315, (v109 + v107 + v108));
    v110(v109 + v107 + v108, 0, 1, v103);
    sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v109, &v320);
    swift_setDeallocating();
    goto LABEL_48;
  }

  if (v24 != 7)
  {
    v152 = v20 & 0xFFFFFFFFFFFFFFFLL;
    v153 = *(v152 + 16);
    *&v294 = *(v152 + 24);
    sub_1D5EF032C();
    v293 = swift_allocObject();
    *(v293 + 16) = xmmword_1D7273AE0;
    sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    v154 = *(v10 + 72);
    v155 = *(v10 + 80);
    v156 = (v155 + 32) & ~v155;
    v302 = v155;
    v303 = v157;
    v158 = swift_allocObject();
    *(v158 + 16) = xmmword_1D7279970;
    v292 = v158;
    v301 = v156;
    v159 = (v158 + v156);

    sub_1D711F844(1701869908, 0xE400000000000000, 0x726F7463656C6553, 0xE800000000000000, v159);
    v161 = *(v5 + 56);
    v160 = v5 + 56;
    v161(v159, 0, 1, v4);
    *&v291 = v159;
    v162 = v159 + v154;
    v163 = *(v4 + 24);
    v164 = v153;
    *&v162[v163] = v153;
    v165 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    v166 = *(v165 - 8);
    v167 = *(v166 + 56);
    v306 = (v166 + 56);
    v307 = v167;
    (v167)(&v162[v163], 0, 1, v165);
    v300 = xmmword_1D735AE40;
    *v162 = xmmword_1D735AE40;
    *(v162 + 2) = 0;
    *(v162 + 3) = 0;
    v168 = &v162[*(v4 + 28)];
    *v168 = 0;
    *(v168 + 1) = 0;
    v168[16] = -1;
    v304 = v161;
    v161(v162, 0, 1, v4);
    v169 = v294;
    v170 = *(v294 + 16);
    if (v170)
    {
      v298 = v165;
      v314 = v160;
      v319 = MEMORY[0x1E69E7CC0];
      v290 = v164;

      *&v316 = v170;
      sub_1D6997EC0(0, v170, 0);
      v171 = v319;
      v299 = v154;
      v172 = 2 * v154;
      v173 = (v169 + 48);
      v296 = xmmword_1D7270C10;
      v295 = xmmword_1D731B700;
      v174 = v307;
      v297 = v172;
      do
      {
        v315 = v171;
        v175 = *(v173 - 2);
        v176 = *(v173 - 1);
        v309 = v173;
        v177 = *v173;
        v178 = v301;
        v179 = swift_allocObject();
        *(v179 + 16) = v296;
        v310 = v179;
        v180 = &v178[v179];
        *&v318 = v175;
        *(&v318 + 1) = v176;
        v312 = v176;
        if (v176)
        {
          v305 = v177;
          sub_1D5B49474(0, &qword_1EDF3C5D0);
          swift_bridgeObjectRetain_n();
          swift_retain_n();
          v181 = swift_dynamicCast();
          *&v308 = v177 & 0xFFFFFFFFFFFFFFFLL;
          if (v181)
          {
            v182 = v311;
            v183 = *(v311 + 24);
            *&v180[v183] = v330;
            v184 = v298;
            swift_storeEnumTagMultiPayload();
            (v307)(&v180[v183], 0, 1, v184);
            *v180 = v295;
            *(v180 + 2) = 0;
            *(v180 + 3) = 0;
            v185 = &v180[*(v182 + 28)];
            *v185 = 0;
            *(v185 + 1) = 0;
            v185[16] = -1;
          }

          else
          {
            *(&v331 + 1) = &type metadata for FormatSelector;
            v332 = sub_1D6E0CF40();
            v330 = v318;
            sub_1D5B63F14(&v330, v317);
            v182 = v311;
            v188 = &v180[*(v311 + 24)];
            v189 = __swift_project_boxed_opaque_existential_1(v317, v317[3]);
            v190 = v189[1];
            *v188 = *v189;
            *(v188 + 1) = v190;
            v184 = v298;
            swift_storeEnumTagMultiPayload();
            (v307)(v188, 0, 1, v184);
            *v180 = v295;
            *(v180 + 2) = 0;
            *(v180 + 3) = 0;
            v191 = &v180[*(v182 + 28)];
            *v191 = 0;
            *(v191 + 1) = 0;
            v191[16] = -1;

            __swift_destroy_boxed_opaque_existential_1(v317);
          }

          v187 = v299;
          v177 = v305;
        }

        else
        {
          v182 = v311;
          v184 = v298;
          (v174)(&v180[*(v311 + 24)], 1, 1, v298);
          *v180 = v295;
          *(v180 + 2) = 0;
          *(v180 + 3) = 0;
          v186 = &v180[*(v182 + 28)];
          *v186 = 0;
          *(v186 + 1) = 0;
          v186[16] = -1;
          *&v308 = v177 & 0xFFFFFFFFFFFFFFFLL;
          swift_retain_n();
          v187 = v299;
        }

        v192 = v304;
        v304(v180, 0, 1, v182);
        v193 = &v180[v187];
        v194 = *(v182 + 24);
        *&v193[v194] = v177;
        swift_storeEnumTagMultiPayload();
        v195 = &v193[v194];
        v174 = v307;
        (v307)(v195, 0, 1, v184);
        *v193 = v300;
        *(v193 + 2) = 0;
        *(v193 + 3) = 0;
        v196 = &v193[*(v182 + 28)];
        *v196 = 0;
        *(v196 + 1) = 0;
        v196[16] = -1;
        v192(v193, 0, 1, v182);
        sub_1D6795150(0, 0xE000000000000000, 0, 0, v310, &v320);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();

        v171 = v315;
        v319 = v315;
        v198 = v315[2];
        v197 = v315[3];
        if (v198 >= v197 >> 1)
        {
          sub_1D6997EC0((v197 > 1), v198 + 1, 1);
          v171 = v319;
        }

        v173 = (v309 + 24);
        *(&v331 + 1) = &type metadata for FormatInspectionGroup;
        v332 = &off_1F518B2C0;
        v199 = swift_allocObject();
        *&v330 = v199;
        v200 = v321;
        *(v199 + 16) = v320;
        *(v199 + 32) = v200;
        *(v199 + 48) = v322;
        *(v171 + 16) = v198 + 1;
        sub_1D5B63F14(&v330, v171 + 40 * v198 + 32);
        *&v316 = v316 - 1;
        v201 = v297;
      }

      while (v316);

      v4 = v311;
    }

    else
    {
      v201 = 2 * v154;

      v171 = MEMORY[0x1E69E7CC0];
    }

    v274 = sub_1D5F62BFC(v171);

    v275 = sub_1D7073500(v274);

    v276 = v291;
    sub_1D711AD20(0x726F7463656C6553, 0xE900000000000073, v275, 0, 0, (v291 + v201));
    v304((v276 + v201), 0, 1, v4);
    sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v292, &v330);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v277 = v293;
    *(v293 + 56) = &type metadata for FormatInspectionGroup;
    *(v277 + 64) = &off_1F518B2C0;
    v278 = swift_allocObject();
    *(v277 + 32) = v278;
    v279 = v331;
    *(v278 + 16) = v330;
    *(v278 + 32) = v279;
    *(v278 + 48) = v332;
    v51 = sub_1D7073500(v277);
    swift_setDeallocating();
    sub_1D5F10AA0(v277 + 32);
    swift_deallocClassInstance();

    goto LABEL_80;
  }

  v34 = v20 & 0xFFFFFFFFFFFFFFFLL;
  v35 = *(v34 + 16);
  v36 = *(v34 + 24);
  v310 = *(v34 + 32);
  v37 = *(v34 + 40);
  sub_1D5EF032C();
  v315 = swift_allocObject();
  *(v315 + 1) = xmmword_1D7273AE0;
  sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  *&v316 = *(v10 + 72);
  v38 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1D7270C10;
  v40 = v39 + v38;
  v41 = v310;
  sub_1D5F58038(v35, v36, v310, v37);
  sub_1D711F844(1701869908, 0xE400000000000000, 0x676E69646E6942, 0xE700000000000000, (v39 + v38));
  v42 = *(v314 + 56);
  v314 += 56;
  v312 = v42;
  (v42)(v39 + v38, 0, 1, v311);
  v43 = sub_1D5F4D374(v35, v36, v41, v37);
  sub_1D5F57FEC(v35, v36, v41, v37);
  *&v320 = v43;
  sub_1D5BBE0A8();
  sub_1D5BB0AB8();
  v44 = sub_1D7261F3C();
  v46 = v45;

  v47 = v316;
  sub_1D711F844(1752457552, 0xE400000000000000, v44, v46, (v40 + v316));
  (v312)(v40 + v47, 0, 1, v311);
  sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v39, &v320);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v48 = v315;
  v315[7] = &type metadata for FormatInspectionGroup;
  *(v48 + 64) = &off_1F518B2C0;
  v49 = swift_allocObject();
  *(v48 + 32) = v49;
  v50 = v321;
  *(v49 + 16) = v320;
  *(v49 + 32) = v50;
  *(v49 + 48) = v322;
  v51 = sub_1D7073500(v48);
  swift_setDeallocating();
  sub_1D5F10AA0(v48 + 32);
  swift_deallocClassInstance();
  return v51;
}

uint64_t sub_1D6E0CAE0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *v1 >> 60;
  if (v4 <= 8)
  {
    if ((v4 - 4) >= 5 && v4 >= 3)
    {
      v18 = v3 & 0xFFFFFFFFFFFFFFFLL;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = swift_allocObject();
      v26[1] = v19;
      v26[2] = v20;

      v23 = sub_1D6E0CAE0(v26, v22);
      sub_1D6E0CAE0(&v25, v23);

      v24 = v25;
      *(v21 + 16) = v26[0];
      *(v21 + 24) = v24;
      *a1 = v21 | 0x3000000000000000;
    }

    else
    {
      *a1 = v3;
    }
  }

  else
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFFLL;
    if (v4 == 9)
    {
      v12 = *(v5 + 16);
      v13 = *(v5 + 24);
      v14 = *(v5 + 32);
      v15 = *(v5 + 40);
      v16 = swift_allocObject();
      *(v16 + 16) = v12;
      *(v16 + 24) = v13;
      *(v16 + 32) = v14;
      *(v16 + 40) = v15;
      *a1 = v16 | 0x7000000000000000;

      return sub_1D5F58038(v12, v13, v14, v15);
    }

    else
    {
      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v4 == 10)
      {
        v8 = swift_allocObject();
        *(v8 + 16) = v7;
        *(v8 + 24) = v6;
        v9 = v8 | 0x4000000000000000;
      }

      else
      {
        v17 = swift_allocObject();
        *(v17 + 16) = v7;
        *(v17 + 24) = v6;
        v9 = v17 | 0x8000000000000000;
      }

      *a1 = v9;
    }
  }

  return result;
}

uint64_t static FormatColor.fixed(_:alpha:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  result = swift_allocObject();
  *(result + 16) = v7;
  *(result + 24) = a2;
  *(result + 32) = a3 & 1;
  *a4 = result | 0x2000000000000000;
  return result;
}

id sub_1D6E0CD34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_1D6E0CD9C(uint64_t a1)
{
  v2 = FormatColor.color.getter(a1);
  v3 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v4 = [(objc_class *)v2 resolvedColorWithTraitCollection:v3];

  return v4;
}

unint64_t sub_1D6E0CE98(uint64_t a1)
{
  result = sub_1D5B5706C();
  *(a1 + 8) = result;
  return result;
}

void sub_1D6E0CED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5B49474(255, &qword_1EC880AD0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6E0CF40()
{
  result = qword_1EC8968E8;
  if (!qword_1EC8968E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8968E8);
  }

  return result;
}

uint64_t static FeedEngagementBanner.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (sub_1D72646CC() & 1) != 0)
  {
    type metadata accessor for FeedEngagementBanner();

    JUMPOUT(0x1DA6F36F0);
  }

  return 0;
}

uint64_t FeedEngagementBanner.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedEngagementBanner.engagementBanner.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedEngagementBanner() + 20);
  v4 = sub_1D725C08C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedEngagementBanner.traits.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for FeedEngagementBanner();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t FeedEngagementBanner.layoutDirection.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for FeedEngagementBanner();
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t FeedEngagementBanner.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedEngagementBanner() + 32));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1D5BF2DDC(v4, v5);
}

uint64_t FeedEngagementBanner.init(identifier:engagementBanner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for FeedEngagementBanner();
  *&a4[v8[6]] = 0x80000;
  v9 = &a4[v8[7]];
  *v9 = 0;
  v9[8] = 1;
  *&a4[v8[8]] = xmmword_1D72F40F0;
  *a4 = a1;
  *(a4 + 1) = a2;
  v10 = v8[5];
  v11 = sub_1D725C08C();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a4[v10], a3, v11);
}

uint64_t sub_1D6E0D26C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(result + 28));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a2 = v4;
  *(a2 + 8) = v3;
  return result;
}

uint64_t FeedEngagementBanner.cacheIdentifier.getter()
{
  v1 = sub_1D725C09C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[1];
  v9[0] = *v0;
  v9[1] = v6;

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  type metadata accessor for FeedEngagementBanner();
  sub_1D725C06C();
  sub_1D6E0D6C0(&qword_1EDF175E0, MEMORY[0x1E69B56E8]);
  v7 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v7);

  (*(v2 + 8))(v5, v1);
  return v9[0];
}

uint64_t FeedEngagementBanner.hashValue.getter()
{
  sub_1D7264A0C();
  type metadata accessor for FeedEngagementBanner();
  sub_1D6E0D6C0(&qword_1EC8968F0, type metadata accessor for FeedEngagementBanner);
  sub_1D7261E8C();
  return sub_1D7264A5C();
}

uint64_t sub_1D6E0D468(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D6E0D6C0(&qword_1EC896900, type metadata accessor for FeedEngagementBanner);

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t sub_1D6E0D4E4(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (sub_1D72646CC() & 1) != 0)
  {

    JUMPOUT(0x1DA6F36F0);
  }

  return 0;
}

uint64_t sub_1D6E0D568(uint64_t a1)
{
  result = sub_1D6E0D6C0(&qword_1EDF14748, type metadata accessor for FeedEngagementBanner);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D6E0D6C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static FeedPartOfDay.partOfDay(for:)@<X0>(BOOL *a1@<X8>)
{
  result = sub_1D7258E1C();
  *a1 = (result & 1) == 0;
  return result;
}

NewsFeed::FeedPartOfDay_optional __swiftcall FeedPartOfDay.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedPartOfDay.rawValue.getter()
{
  if (*v0)
  {
    return 0x746867696ELL;
  }

  else
  {
    return 7954788;
  }
}

uint64_t sub_1D6E0D7EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746867696ELL;
  }

  else
  {
    v3 = 7954788;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x746867696ELL;
  }

  else
  {
    v5 = 7954788;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

unint64_t sub_1D6E0D88C()
{
  result = qword_1EC896908;
  if (!qword_1EC896908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896908);
  }

  return result;
}

uint64_t sub_1D6E0D8E0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6E0D958()
{
  sub_1D72621EC();
}

uint64_t sub_1D6E0D9BC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6E0DA30@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D6E0DA90(uint64_t *a1@<X8>)
{
  v2 = 7954788;
  if (*v1)
  {
    v2 = 0x746867696ELL;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D6E0DB84()
{
  result = qword_1EC896910;
  if (!qword_1EC896910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896910);
  }

  return result;
}

uint64_t static ContextMenuItem.openRecipes(recipeContext:)(uint64_t *a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (qword_1EDF3ACD0 != -1)
  {
    swift_once();
  }

  v11[1] = v7;

  swift_unknownObjectRetain();
  sub_1D6E0DE00();
  if (qword_1EDF1BBE8 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDF1BBF0;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v11[0] = v7;
  swift_allocObject();
  v9 = v8;
  return sub_1D725D3AC();
}

uint64_t static Commands.Recipes.openRecipe.getter()
{
  if (qword_1EDF3ACD0 != -1)
  {
    swift_once();
  }
}

id sub_1D6E0DE00()
{
  result = [*v0 recipeIDs];
  if (result)
  {
    v2 = result;
    v3 = sub_1D726267C();

    v4 = *(v3 + 16);

    if (v4)
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v6 = [objc_opt_self() bundleForClass_];
      v7 = sub_1D725811C();

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D6E0DFB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatThumbnail();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D6E0E018()
{
  result = qword_1EDF043D8;
  if (!qword_1EDF043D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF043D8);
  }

  return result;
}

uint64_t sub_1D6E0E064(uint64_t a1)
{
  v2 = type metadata accessor for FormatThumbnail();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6E0E0C0(uint64_t a1)
{
  sub_1D5C25D84(0, &qword_1EDF17F30, MEMORY[0x1E69D6430], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6E0E15C(void *a1)
{
  v3 = v1;
  sub_1D6E13148(0, &qword_1EC8969D0, sub_1D6E130F4, &type metadata for H12_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E130F4();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6E12A4C(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D6CBA34C(0, &qword_1EC894A88, &type metadata for HMultiLayoutItem, MEMORY[0x1E69E62F8]);
    sub_1D6CBA8E0(&qword_1EC894B38, sub_1D67490D8);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6E0E3B8(uint64_t a1)
{
  v2 = sub_1D6E130F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E0E3F4(uint64_t a1)
{
  v2 = sub_1D6E130F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6E0E430@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6E12E40(a1, v6);
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

uint64_t sub_1D6E0E490()
{
  sub_1D6E12B0C();

  return sub_1D725A24C();
}

uint64_t sub_1D6E0E50C@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6E13148(0, &qword_1EC894B08, sub_1D6CBA51C, &type metadata for HMultiLayoutItem, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D6E0E5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a2;
  v49 = a1;
  v50 = a3;
  v42 = sub_1D725895C();
  v6 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GroupLayoutContext();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v13;
  v14 = type metadata accessor for GroupLayoutBindingContext();
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = *v3;
  v43 = *v3;
  v18 = *(v3 + 1);
  v19 = v3[16];
  v40 = type metadata accessor for GroupLayoutBindingContext;
  v20 = a1;
  v21 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3F40(v20, v21, type metadata accessor for GroupLayoutBindingContext);
  sub_1D5BE3F40(a2, v13, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v39 = sub_1D725893C();
  v38 = v22;
  (*(v6 + 8))(v9, v42);
  v60 = &type metadata for H12_V1;
  v42 = sub_1D5ECE13C();
  v61 = v42;
  v57[0] = v17;
  v58 = v18;
  v59 = v19;
  type metadata accessor for GroupLayoutKey();
  v23 = swift_allocObject();
  sub_1D5BEE8A0(v18, v19);
  v55 = sub_1D7264C5C();
  v56 = v24;
  v53 = 95;
  v54 = 0xE100000000000000;
  v51 = 45;
  v52 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v25 = sub_1D7263A6C();
  v27 = v26;

  *(v23 + 16) = v25;
  *(v23 + 24) = v27;
  v28 = (v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v29 = v38;
  *v28 = v39;
  v28[1] = v29;
  sub_1D5B68374(v57, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v30 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA89C(v21, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, v40);
  (*(v44 + 56))(v23 + v30, 0, 1, v45);
  v31 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA89C(v41, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v47 + 56))(v23 + v31, 0, 1, v48);
  __swift_destroy_boxed_opaque_existential_1(v57);
  v32 = type metadata accessor for H12_V1.Bound();
  v33 = v50;
  v50[3] = v32;
  v33[4] = sub_1D6E12A4C(&qword_1EC896928, type metadata accessor for H12_V1.Bound);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  v35 = v42;
  boxed_opaque_existential_1[4] = &type metadata for H12_V1;
  boxed_opaque_existential_1[5] = v35;
  *(boxed_opaque_existential_1 + 8) = v43;
  boxed_opaque_existential_1[2] = v18;
  *(boxed_opaque_existential_1 + 24) = v19;
  sub_1D5BE3F40(v46, boxed_opaque_existential_1 + *(v32 + 24), type metadata accessor for GroupLayoutContext);
  sub_1D5BEE8A0(v18, v19);
  result = sub_1D6C555B4(0, 0, 0, 0, 0);
  *boxed_opaque_existential_1 = v23;
  *(boxed_opaque_existential_1 + *(v32 + 28)) = result;
  return result;
}

uint64_t sub_1D6E0EA60@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D725A36C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + *(type metadata accessor for H12_V1.Bound() + 28));
  v29 = v1;
  v24 = sub_1D5FBD90C(sub_1D6E12A94, v28, v9);
  *&v31 = v24;
  sub_1D6CBA34C(0, &qword_1EC894A60, &type metadata for HGroupLayoutContext, MEMORY[0x1E69E62F8]);
  v11 = v10;
  sub_1D5BD4AA4(&qword_1EC894A68, &qword_1EC894A60, &type metadata for HGroupLayoutContext);
  v25 = v11;
  v12 = sub_1D7262C1C();
  v13 = *MEMORY[0x1E69D7130];
  v14 = sub_1D7259D1C();
  (*(*(v14 - 8) + 104))(v8, v13, v14);
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7370], v4);
  v26 = v12;
  v27 = v2;
  sub_1D6E12C3C(0, &qword_1EC896948, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  sub_1D725A4CC();

  sub_1D725A4DC();
  v15 = v33;
  v16 = MEMORY[0x1E69E62F8];
  sub_1D6CBA34C(0, &qword_1EC894A88, &type metadata for HMultiLayoutItem, MEMORY[0x1E69E62F8]);
  sub_1D5BD4AA4(&qword_1EC894A90, &qword_1EC894A60, &type metadata for HGroupLayoutContext);
  sub_1D5BD4AA4(&qword_1EC894A98, &qword_1EC894A88, &type metadata for HMultiLayoutItem);
  v22 = v32;
  v23 = v31;
  v30 = v15;
  *&v31 = v24;

  v17 = sub_1D725C00C();

  *a1 = 0;
  v18 = v23;
  *(a1 + 24) = v22;
  *(a1 + 8) = v18;
  *&v31 = v17;
  sub_1D6CBA34C(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes, v16);
  sub_1D5BD4AA4(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v19 = sub_1D72623BC();

  v21 = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = v19;
  *(a1 + 48) = v21;
  return result;
}

uint64_t sub_1D6E0EE88@<X0>(uint64_t a1@<X0>, id *a2@<X1>, void *a3@<X8>)
{
  v287 = a3;
  v286 = sub_1D725891C();
  v6 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286, v7);
  v284 = &v274 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EF9748(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v274 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v278 = &v274 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v274 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v277 = &v274 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v274 - v25;
  sub_1D5F76E40(a1, &v320);
  if (v336)
  {
    if (v336 != 1)
    {
      v302 = v326;
      v303[0] = v327[0];
      v303[1] = v327[1];
      v304 = v328;
      v298 = v322;
      v299 = v323;
      v300 = v324;
      v301 = v325;
      v296 = v320;
      v297 = v321;
      v137 = *a2;
      sub_1D5EE5AF8(&v296, &v288);
      v138 = a2 + *(type metadata accessor for H12_V1.Bound() + 24);
      v139 = type metadata accessor for GroupLayoutContext();
      v140 = *(*&v138[*(v139 + 40)] + 16);
      v141 = *&v138[*(v139 + 32)];
      sub_1D5B68374(v140 + 16, &v305);
      sub_1D5B68374(v140 + 56, v319);
      v142 = v141 * *(v140 + 96);
      type metadata accessor for FeedLayoutStylerFactory();
      v143 = swift_allocObject();
      sub_1D5B63F14(&v305, v143 + 16);
      sub_1D5B63F14(v319, v143 + 56);
      *(v143 + 96) = v142;

      FeedLayoutStylerFactory.styler()(&v308);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(v143 + 16);
      __swift_destroy_boxed_opaque_existential_1(v143 + 56);
      swift_deallocClassInstance();
      v144 = v287;
      CoverChannelViewLayout.Context.init(key:model:styler:)(v137, &v288, &v308, v287);
      result = sub_1D5EE5B54(&v296);
      *(v144 + 392) = 1;
      return result;
    }

    v275 = v12;
    v276 = v3;
    v302 = v326;
    v303[0] = v327[0];
    *(v303 + 9) = *(v327 + 9);
    v298 = v322;
    v299 = v323;
    v300 = v324;
    v301 = v325;
    v296 = v320;
    v297 = v321;
    v294 = v334;
    v295[0] = *v335;
    *(v295 + 9) = *&v335[9];
    v290 = v330;
    v291 = v331;
    v292 = v332;
    v293 = v333;
    v288 = v328;
    v289 = v329;
    v280 = *a2;
    v27 = v280;
    v28 = a2 + *(type metadata accessor for H12_V1.Bound() + 24);
    v29 = type metadata accessor for GroupLayoutContext();
    v30 = *(*&v28[*(v29 + 40)] + 16);
    v31 = *&v28[*(v29 + 32)];
    sub_1D5B68374(v30 + 16, &v305);
    sub_1D5B68374(v30 + 56, &v316);
    v32 = v31 * *(v30 + 96);
    type metadata accessor for FeedLayoutStylerFactory();
    v33 = swift_allocObject();
    sub_1D5B63F14(&v305, v33 + 16);
    sub_1D5B63F14(&v316, v33 + 56);
    *(v33 + 96) = v32;
    sub_1D5ECF2C4(&v296, &v308);
    sub_1D6CBA14C(&v288, &v308, &qword_1EDF34E30, &type metadata for FeedIssue);
    FeedLayoutStylerFactory.styler()(v319);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(v33 + 16);
    __swift_destroy_boxed_opaque_existential_1(v33 + 56);
    swift_deallocClassInstance();
    v34 = v300;
    v35 = v287;
    *(v287 + 11) = v301;
    v36 = v303[0];
    *(v35 + 13) = v302;
    *(v35 + 15) = v36;
    *(v35 + 129) = *(v303 + 9);
    v37 = v296;
    *(v35 + 3) = v297;
    v38 = v299;
    *(v35 + 5) = v298;
    *(v35 + 7) = v38;
    *(v35 + 9) = v34;
    *(v35 + 1) = v37;
    v39 = v292;
    *(v35 + 29) = v293;
    v40 = v295[0];
    *(v35 + 31) = v294;
    *(v35 + 33) = v40;
    *(v35 + 273) = *(v295 + 9);
    v41 = v288;
    *(v35 + 21) = v289;
    v42 = v291;
    *(v35 + 23) = v290;
    *(v35 + 25) = v42;
    *(v35 + 27) = v39;
    *v35 = v27;
    *(v35 + 19) = v41;
    sub_1D5B68374(v319, (v35 + 37));
    sub_1D5B68374(v319, &v316);
    v281 = *(v6 + 56);
    v282 = v6 + 56;
    v281(v26, 1, 1, v286);
    v43 = swift_allocObject();
    v285 = v6;
    v283 = v26;
    v44 = v43;
    v45 = v303[0];
    v43[7] = v302;
    v43[8] = v45;
    *(v43 + 137) = *(v303 + 9);
    v46 = v299;
    v43[3] = v298;
    v43[4] = v46;
    v47 = v301;
    v43[5] = v300;
    v43[6] = v47;
    v48 = v297;
    v43[1] = v296;
    v43[2] = v48;
    sub_1D5EF9748(0, &qword_1EDF34760, sub_1D5BAA1F0, type metadata accessor for CachedText);
    v277 = v49;
    v50 = swift_allocObject();
    *(v50 + 2) = 0xC04E000000000000;
    v51 = v318;
    __swift_project_boxed_opaque_existential_1(&v316, v317);
    v314 = v302;
    v315[0] = v303[0];
    *(v315 + 9) = *(v303 + 9);
    v310 = v298;
    v311 = v299;
    v312 = v300;
    v313 = v301;
    v308 = v296;
    v309 = v297;
    sub_1D5ECF2C4(&v296, &v305);
    sub_1D5ECF2C4(&v296, &v305);

    v52 = sub_1D6CAFA6C();
    v53 = (*(v51 + 80))(v52);

    *&v50[*(*v50 + 120)] = v53;
    *&v50[*(*v50 + 136)] = v53;
    v54 = v53;
    v55 = v284;
    sub_1D725890C();
    v56 = *(*v50 + 128);
    v57 = v286;
    v58 = *(v285 + 32);
    v285 += 32;
    v279 = v58;
    v58(&v50[v56], v55, v286);
    v280 = objc_opt_self();
    LOBYTE(v55) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v316);
    v50[qword_1EDF347F8] = v55;
    v59 = v283;
    sub_1D5DF42F8(v283, &v50[qword_1EDF347F0]);
    v60 = swift_allocObject();
    v60[2] = sub_1D5EF97AC;
    v60[3] = v44;
    v60[4] = v54;
    *(v50 + 3) = sub_1D5EF97B4;
    *(v50 + 4) = v60;
    v35[42] = v50;
    sub_1D5B68374(v319, &v316);
    v281(v59, 1, 1, v57);
    v61 = swift_allocObject();
    v62 = v303[0];
    v61[7] = v302;
    v61[8] = v62;
    *(v61 + 137) = *(v303 + 9);
    v63 = v299;
    v61[3] = v298;
    v61[4] = v63;
    v64 = v301;
    v61[5] = v300;
    v61[6] = v64;
    v65 = v297;
    v61[1] = v296;
    v61[2] = v65;
    v66 = swift_allocObject();
    *(v66 + 2) = 0xC04E000000000000;
    v67 = v318;
    __swift_project_boxed_opaque_existential_1(&v316, v317);
    v314 = v302;
    v315[0] = v303[0];
    *(v315 + 9) = *(v303 + 9);
    v310 = v298;
    v311 = v299;
    v312 = v300;
    v313 = v301;
    v308 = v296;
    v309 = v297;
    sub_1D5ECF2C4(&v296, &v305);
    v68 = sub_1D6CAFA6C();
    v69 = (*(v67 + 88))(v68);

    *&v66[*(*v66 + 120)] = v69;
    *&v66[*(*v66 + 136)] = v69;
    v70 = v69;
    v71 = v284;
    sub_1D725890C();
    v72 = v286;
    v279(&v66[*(*v66 + 128)], v71, v286);
    LOBYTE(v71) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v316);
    v66[qword_1EDF347F8] = v71;
    sub_1D5DF42F8(v283, &v66[qword_1EDF347F0]);
    v73 = swift_allocObject();
    v73[2] = sub_1D5EF97C0;
    v73[3] = v61;
    v73[4] = v70;
    *(v66 + 3) = sub_1D5EF9FF8;
    *(v66 + 4) = v73;
    v35[43] = v66;
    sub_1D5B68374(v319, &v305);
    v281(v278, 1, 1, v72);
    v74 = swift_allocObject();
    v75 = v303[0];
    v74[7] = v302;
    v74[8] = v75;
    *(v74 + 137) = *(v303 + 9);
    v76 = v299;
    v74[3] = v298;
    v74[4] = v76;
    v77 = v301;
    v74[5] = v300;
    v74[6] = v77;
    v78 = v297;
    v74[1] = v296;
    v74[2] = v78;
    v79 = swift_allocObject();
    *(v79 + 2) = 0xC04E000000000000;
    v81 = v306;
    v80 = v307;
    __swift_project_boxed_opaque_existential_1(&v305, v306);
    if (v301 == 1 || !v302)
    {
      v146 = v296;
      sub_1D5ECF2C4(&v296, &v308);
      v147 = [v146 coverDate];
      sub_1D726207C();
    }

    else
    {
      sub_1D5ECF2C4(&v296, &v308);
    }

    v148 = sub_1D726213C();
    v150 = v149;

    v151 = (*(v80 + 96))(v148, v150, v81, v80);

    *&v79[*(*v79 + 120)] = v151;
    *&v79[*(*v79 + 136)] = v151;
    v152 = v151;
    v153 = v284;
    sub_1D725890C();
    v154 = v153;
    v155 = v286;
    v279(&v79[*(*v79 + 128)], v154, v286);
    LOBYTE(v150) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v79[qword_1EDF347F8] = v150;
    sub_1D5DF42F8(v278, &v79[qword_1EDF347F0]);
    v156 = swift_allocObject();
    v156[2] = sub_1D5EF97C8;
    v156[3] = v74;
    v156[4] = v152;
    *(v79 + 3) = sub_1D5EF9FF8;
    *(v79 + 4) = v156;
    v287[44] = v79;
    sub_1D5B68374(v319, &v305);
    v281(v275, 1, 1, v155);
    v157 = swift_allocObject();
    v158 = v303[0];
    v157[7] = v302;
    v157[8] = v158;
    *(v157 + 137) = *(v303 + 9);
    v159 = v299;
    v157[3] = v298;
    v157[4] = v159;
    v160 = v301;
    v157[5] = v300;
    v157[6] = v160;
    v161 = v297;
    v157[1] = v296;
    v157[2] = v161;
    v162 = swift_allocObject();
    *(v162 + 2) = 0xC04E000000000000;
    v163 = BYTE8(v297);
    v164 = v307;
    __swift_project_boxed_opaque_existential_1(&v305, v306);
    if (v163 == 2)
    {
      LOBYTE(v316) = 2;
      sub_1D5ECF2C4(&v296, &v308);
      v165 = sub_1D6CAFB7C();
      v166 = (*(v164 + 96))(v165);
    }

    else
    {
      LOBYTE(v316) = v163;
      sub_1D5ECF2C4(&v296, &v308);
      v188 = sub_1D6CAFB7C();
      v166 = (*(v164 + 104))(v188);
    }

    v189 = v166;

    *&v162[*(*v162 + 120)] = v189;
    *&v162[*(*v162 + 136)] = v189;
    v190 = v189;
    v191 = v284;
    sub_1D725890C();
    v192 = v286;
    v279(&v162[*(*v162 + 128)], v191, v286);
    LOBYTE(v191) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v162[qword_1EDF347F8] = v191;
    sub_1D5DF42F8(v275, &v162[qword_1EDF347F0]);
    v193 = swift_allocObject();
    v193[2] = sub_1D5EF97D0;
    v193[3] = v157;
    v193[4] = v190;
    *(v162 + 3) = sub_1D5EF9FF8;
    *(v162 + 4) = v193;
    v287[45] = v162;
    sub_1D5B68374(v319, &v308);
    v281(v283, 1, 1, v192);
    v194 = swift_allocObject();
    *(v194 + 2) = 0xC04E000000000000;
    v195 = *(&v309 + 1);
    v196 = v310;
    __swift_project_boxed_opaque_existential_1(&v308, *(&v309 + 1));
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v278 = ObjCClassFromMetadata;
    v275 = objc_opt_self();
    v198 = [v275 bundleForClass_];
    sub_1D725811C();

    v199 = sub_1D726213C();
    v201 = v200;

    v202 = (*(v196 + 112))(v199, v201, v195, v196);

    *&v194[*(*v194 + 120)] = v202;
    *&v194[*(*v194 + 136)] = v202;
    v203 = v202;
    v204 = v284;
    sub_1D725890C();
    v205 = v286;
    v279(&v194[*(*v194 + 128)], v204, v286);
    LOBYTE(v204) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v308);
    v194[qword_1EDF347F8] = v204;
    v206 = v283;
    sub_1D5DF42F8(v283, &v194[qword_1EDF347F0]);
    v207 = swift_allocObject();
    v207[2] = sub_1D6EAD6D0;
    v207[3] = 0;
    v207[4] = v203;
    *(v194 + 3) = sub_1D5EF9FF8;
    *(v194 + 4) = v207;
    v287[46] = v194;
    sub_1D5B68374(v319, &v308);
    v208 = v205;
    v281(v206, 1, 1, v205);
    v209 = swift_allocObject();
    *(v209 + 2) = 0xC04E000000000000;
    v210 = *(&v309 + 1);
    v211 = v310;
    __swift_project_boxed_opaque_existential_1(&v308, *(&v309 + 1));
    v212 = [v275 bundleForClass_];
    sub_1D725811C();

    v213 = sub_1D726213C();
    v215 = v214;

    v216 = (*(v211 + 120))(v213, v215, v210, v211);

    *&v209[*(*v209 + 120)] = v216;
    *&v209[*(*v209 + 136)] = v216;
    v217 = v216;
    v218 = v284;
    sub_1D725890C();
    v219 = v208;
    v220 = v208;
    v221 = v279;
    v279(&v209[*(*v209 + 128)], v218, v220);
    LOBYTE(v213) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v308);
    v209[qword_1EDF347F8] = v213;
    v222 = v283;
    sub_1D5DF42F8(v283, &v209[qword_1EDF347F0]);
    v223 = swift_allocObject();
    v223[2] = sub_1D6EAD7F8;
    v223[3] = 0;
    v223[4] = v217;
    *(v209 + 3) = sub_1D5EF9FF8;
    *(v209 + 4) = v223;
    v287[47] = v209;
    sub_1D5B68374(v319, &v305);
    v281(v222, 1, 1, v219);
    v224 = swift_allocObject();
    v225 = v303[0];
    v224[7] = v302;
    v224[8] = v225;
    *(v224 + 137) = *(v303 + 9);
    v226 = v299;
    v224[3] = v298;
    v224[4] = v226;
    v227 = v301;
    v224[5] = v300;
    v224[6] = v227;
    v228 = v297;
    v224[1] = v296;
    v224[2] = v228;
    sub_1D5EF97E0();
    v229 = swift_allocObject();
    *(v229 + 2) = 0xC04E000000000000;
    sub_1D5ECF2C4(&v296, &v308);
    sub_1D6EAD930(&v296, &v308);
    sub_1D5ECF320(&v296);
    v230 = v308;
    *&v229[*(*v229 + 120)] = v308;
    *&v229[*(*v229 + 136)] = v230;
    swift_bridgeObjectRetain_n();
    sub_1D725890C();
    v221(&v229[*(*v229 + 128)], v218, v219);
    LOBYTE(v222) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v229[qword_1EDF347F8] = v222;
    sub_1D5DF42F8(v283, &v229[qword_1EDF347F0]);
    v231 = swift_allocObject();
    *(v231 + 16) = sub_1D5EF97D8;
    *(v231 + 24) = v224;
    *(v231 + 32) = v230;
    *(v229 + 3) = sub_1D5EF98AC;
    *(v229 + 4) = v231;
    sub_1D5ECF320(&v296);
    sub_1D6CBA1CC(&v288, &qword_1EDF34E30, &type metadata for FeedIssue);
  }

  else
  {
    v275 = v19;
    v276 = v3;
    v302 = v326;
    v303[0] = v327[0];
    *(v303 + 9) = *(v327 + 9);
    v298 = v322;
    v299 = v323;
    v300 = v324;
    v301 = v325;
    v296 = v320;
    v297 = v321;
    v82 = *a2;
    sub_1D5D62850(&v288);
    v83 = a2 + *(type metadata accessor for H12_V1.Bound() + 24);
    v84 = type metadata accessor for GroupLayoutContext();
    v85 = *(*&v83[*(v84 + 40)] + 16);
    v86 = *&v83[*(v84 + 32)];
    sub_1D5B68374(v85 + 16, &v305);
    sub_1D5B68374(v85 + 56, &v316);
    v87 = v86 * *(v85 + 96);
    type metadata accessor for FeedLayoutStylerFactory();
    v88 = swift_allocObject();
    sub_1D5B63F14(&v305, v88 + 16);
    sub_1D5B63F14(&v316, v88 + 56);
    *(v88 + 96) = v87;
    sub_1D5ECF2C4(&v296, &v308);
    FeedLayoutStylerFactory.styler()(v319);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(v88 + 16);
    __swift_destroy_boxed_opaque_existential_1(v88 + 56);
    swift_deallocClassInstance();
    v89 = v300;
    v90 = v287;
    *(v287 + 11) = v301;
    v91 = v303[0];
    *(v90 + 13) = v302;
    *(v90 + 15) = v91;
    *(v90 + 129) = *(v303 + 9);
    v92 = v296;
    *(v90 + 3) = v297;
    v93 = v299;
    *(v90 + 5) = v298;
    *(v90 + 7) = v93;
    *(v90 + 9) = v89;
    *(v90 + 1) = v92;
    v94 = v292;
    *(v90 + 29) = v293;
    v95 = v295[0];
    *(v90 + 31) = v294;
    *(v90 + 33) = v95;
    *(v90 + 273) = *(v295 + 9);
    v96 = v288;
    *(v90 + 21) = v289;
    v97 = v291;
    *(v90 + 23) = v290;
    *(v90 + 25) = v97;
    *(v90 + 27) = v94;
    *v90 = v82;
    *(v90 + 19) = v96;
    sub_1D5B68374(v319, (v90 + 37));
    sub_1D5B68374(v319, &v316);
    v281 = *(v6 + 56);
    v282 = v6 + 56;
    v281(v26, 1, 1, v286);
    v98 = swift_allocObject();
    v285 = v6;
    v283 = v26;
    v99 = v98;
    v100 = v303[0];
    v98[7] = v302;
    v98[8] = v100;
    *(v98 + 137) = *(v303 + 9);
    v101 = v299;
    v98[3] = v298;
    v98[4] = v101;
    v102 = v301;
    v98[5] = v300;
    v98[6] = v102;
    v103 = v297;
    v98[1] = v296;
    v98[2] = v103;
    sub_1D5EF9748(0, &qword_1EDF34760, sub_1D5BAA1F0, type metadata accessor for CachedText);
    v278 = v104;
    v105 = swift_allocObject();
    *(v105 + 2) = 0xC04E000000000000;
    v106 = v318;
    __swift_project_boxed_opaque_existential_1(&v316, v317);
    v314 = v302;
    v315[0] = v303[0];
    *(v315 + 9) = *(v303 + 9);
    v310 = v298;
    v311 = v299;
    v312 = v300;
    v313 = v301;
    v308 = v296;
    v309 = v297;
    sub_1D5ECF2C4(&v296, &v305);
    sub_1D5ECF2C4(&v296, &v305);

    v107 = sub_1D6CAFA6C();
    v108 = (*(v106 + 80))(v107);

    *&v105[*(*v105 + 120)] = v108;
    *&v105[*(*v105 + 136)] = v108;
    v109 = v108;
    v110 = v284;
    sub_1D725890C();
    v111 = *(*v105 + 128);
    v112 = v286;
    v113 = *(v285 + 32);
    v285 += 32;
    v279 = v113;
    v113(&v105[v111], v110, v286);
    v280 = objc_opt_self();
    LOBYTE(v110) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v316);
    v105[qword_1EDF347F8] = v110;
    v114 = v283;
    sub_1D5DF42F8(v283, &v105[qword_1EDF347F0]);
    v115 = swift_allocObject();
    v115[2] = sub_1D6CBAA8C;
    v115[3] = v99;
    v115[4] = v109;
    *(v105 + 3) = sub_1D5EF9FF8;
    *(v105 + 4) = v115;
    v90[42] = v105;
    sub_1D5B68374(v319, &v316);
    v281(v114, 1, 1, v112);
    v116 = swift_allocObject();
    v117 = v303[0];
    v116[7] = v302;
    v116[8] = v117;
    *(v116 + 137) = *(v303 + 9);
    v118 = v299;
    v116[3] = v298;
    v116[4] = v118;
    v119 = v301;
    v116[5] = v300;
    v116[6] = v119;
    v120 = v297;
    v116[1] = v296;
    v116[2] = v120;
    v121 = swift_allocObject();
    *(v121 + 2) = 0xC04E000000000000;
    v122 = v318;
    __swift_project_boxed_opaque_existential_1(&v316, v317);
    v314 = v302;
    v315[0] = v303[0];
    *(v315 + 9) = *(v303 + 9);
    v310 = v298;
    v311 = v299;
    v312 = v300;
    v313 = v301;
    v308 = v296;
    v309 = v297;
    sub_1D5ECF2C4(&v296, &v305);
    v123 = sub_1D6CAFA6C();
    v124 = (*(v122 + 88))(v123);

    *&v121[*(*v121 + 120)] = v124;
    *&v121[*(*v121 + 136)] = v124;
    v125 = v124;
    v126 = v284;
    sub_1D725890C();
    v127 = v286;
    v279(&v121[*(*v121 + 128)], v126, v286);
    LOBYTE(v126) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v316);
    v121[qword_1EDF347F8] = v126;
    sub_1D5DF42F8(v283, &v121[qword_1EDF347F0]);
    v128 = swift_allocObject();
    v128[2] = sub_1D6CBAA90;
    v128[3] = v116;
    v128[4] = v125;
    *(v121 + 3) = sub_1D5EF9FF8;
    *(v121 + 4) = v128;
    v90[43] = v121;
    sub_1D5B68374(v319, &v305);
    v281(v277, 1, 1, v127);
    v129 = swift_allocObject();
    v130 = v303[0];
    v129[7] = v302;
    v129[8] = v130;
    *(v129 + 137) = *(v303 + 9);
    v131 = v299;
    v129[3] = v298;
    v129[4] = v131;
    v132 = v301;
    v129[5] = v300;
    v129[6] = v132;
    v133 = v297;
    v129[1] = v296;
    v129[2] = v133;
    v134 = swift_allocObject();
    *(v134 + 2) = 0xC04E000000000000;
    v135 = v306;
    v136 = v307;
    v274 = __swift_project_boxed_opaque_existential_1(&v305, v306);
    if (v301 == 1 || !v302)
    {
      v167 = v296;
      sub_1D5ECF2C4(&v296, &v308);
      v168 = [v167 coverDate];
      sub_1D726207C();
    }

    else
    {
      sub_1D5ECF2C4(&v296, &v308);
    }

    v169 = v275;
    v170 = sub_1D726213C();
    v172 = v171;

    v173 = (*(v136 + 96))(v170, v172, v135, v136);

    *&v134[*(*v134 + 120)] = v173;
    *&v134[*(*v134 + 136)] = v173;
    v174 = v173;
    v175 = v284;
    sub_1D725890C();
    v176 = v286;
    v279(&v134[*(*v134 + 128)], v175, v286);
    LOBYTE(v175) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v134[qword_1EDF347F8] = v175;
    sub_1D5DF42F8(v277, &v134[qword_1EDF347F0]);
    v177 = swift_allocObject();
    v177[2] = sub_1D6CBAA94;
    v177[3] = v129;
    v177[4] = v174;
    *(v134 + 3) = sub_1D5EF9FF8;
    *(v134 + 4) = v177;
    v287[44] = v134;
    sub_1D5B68374(v319, &v305);
    v281(v169, 1, 1, v176);
    v178 = swift_allocObject();
    v179 = v303[0];
    v178[7] = v302;
    v178[8] = v179;
    *(v178 + 137) = *(v303 + 9);
    v180 = v299;
    v178[3] = v298;
    v178[4] = v180;
    v181 = v301;
    v178[5] = v300;
    v178[6] = v181;
    v182 = v297;
    v178[1] = v296;
    v178[2] = v182;
    v183 = swift_allocObject();
    *(v183 + 2) = 0xC04E000000000000;
    v184 = BYTE8(v297);
    v185 = v307;
    __swift_project_boxed_opaque_existential_1(&v305, v306);
    if (v184 == 2)
    {
      LOBYTE(v316) = 2;
      sub_1D5ECF2C4(&v296, &v308);
      v186 = sub_1D6CAFB7C();
      v187 = (*(v185 + 96))(v186);
    }

    else
    {
      LOBYTE(v316) = v184;
      sub_1D5ECF2C4(&v296, &v308);
      v232 = sub_1D6CAFB7C();
      v187 = (*(v185 + 104))(v232);
    }

    v233 = v187;

    *&v183[*(*v183 + 120)] = v233;
    *&v183[*(*v183 + 136)] = v233;
    v234 = v233;
    v235 = v284;
    sub_1D725890C();
    v236 = v286;
    v279(&v183[*(*v183 + 128)], v235, v286);
    LOBYTE(v235) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v183[qword_1EDF347F8] = v235;
    sub_1D5DF42F8(v275, &v183[qword_1EDF347F0]);
    v237 = swift_allocObject();
    v237[2] = sub_1D6CBAA98;
    v237[3] = v178;
    v237[4] = v234;
    *(v183 + 3) = sub_1D5EF9FF8;
    *(v183 + 4) = v237;
    v287[45] = v183;
    sub_1D5B68374(v319, &v308);
    v281(v283, 1, 1, v236);
    v238 = swift_allocObject();
    *(v238 + 2) = 0xC04E000000000000;
    v239 = *(&v309 + 1);
    v240 = v310;
    __swift_project_boxed_opaque_existential_1(&v308, *(&v309 + 1));
    type metadata accessor for Localized();
    v241 = swift_getObjCClassFromMetadata();
    v277 = v241;
    v275 = objc_opt_self();
    v242 = [v275 bundleForClass_];
    sub_1D725811C();

    v243 = sub_1D726213C();
    v245 = v244;

    v246 = (*(v240 + 112))(v243, v245, v239, v240);

    *&v238[*(*v238 + 120)] = v246;
    *&v238[*(*v238 + 136)] = v246;
    v247 = v246;
    v248 = v284;
    sub_1D725890C();
    v249 = v286;
    v279(&v238[*(*v238 + 128)], v248, v286);
    LOBYTE(v248) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v308);
    v238[qword_1EDF347F8] = v248;
    v250 = v283;
    sub_1D5DF42F8(v283, &v238[qword_1EDF347F0]);
    v251 = swift_allocObject();
    v251[2] = sub_1D6EAD6D0;
    v251[3] = 0;
    v251[4] = v247;
    *(v238 + 3) = sub_1D5EF9FF8;
    *(v238 + 4) = v251;
    v287[46] = v238;
    sub_1D5B68374(v319, &v308);
    v281(v250, 1, 1, v249);
    v252 = swift_allocObject();
    *(v252 + 2) = 0xC04E000000000000;
    v253 = *(&v309 + 1);
    v254 = v310;
    __swift_project_boxed_opaque_existential_1(&v308, *(&v309 + 1));
    v255 = [v275 bundleForClass_];
    sub_1D725811C();

    v256 = sub_1D726213C();
    v258 = v257;

    v259 = (*(v254 + 120))(v256, v258, v253, v254);

    *&v252[*(*v252 + 120)] = v259;
    *&v252[*(*v252 + 136)] = v259;
    v260 = v259;
    v261 = v284;
    sub_1D725890C();
    v262 = v286;
    v263 = v279;
    v279(&v252[*(*v252 + 128)], v261, v286);
    LOBYTE(v256) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v308);
    v252[qword_1EDF347F8] = v256;
    v264 = v283;
    sub_1D5DF42F8(v283, &v252[qword_1EDF347F0]);
    v265 = swift_allocObject();
    v265[2] = sub_1D6EAD7F8;
    v265[3] = 0;
    v265[4] = v260;
    *(v252 + 3) = sub_1D5EF9FF8;
    *(v252 + 4) = v265;
    v287[47] = v252;
    sub_1D5B68374(v319, &v305);
    v281(v264, 1, 1, v262);
    v266 = swift_allocObject();
    v267 = v303[0];
    v266[7] = v302;
    v266[8] = v267;
    *(v266 + 137) = *(v303 + 9);
    v268 = v299;
    v266[3] = v298;
    v266[4] = v268;
    v269 = v301;
    v266[5] = v300;
    v266[6] = v269;
    v270 = v297;
    v266[1] = v296;
    v266[2] = v270;
    sub_1D5EF97E0();
    v229 = swift_allocObject();
    *(v229 + 2) = 0xC04E000000000000;
    sub_1D5ECF2C4(&v296, &v308);
    sub_1D6EAD930(&v296, &v308);
    sub_1D5ECF320(&v296);
    v271 = v308;
    *&v229[*(*v229 + 120)] = v308;
    *&v229[*(*v229 + 136)] = v271;
    swift_bridgeObjectRetain_n();
    sub_1D725890C();
    v263(&v229[*(*v229 + 128)], v261, v262);
    LOBYTE(v261) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v229[qword_1EDF347F8] = v261;
    sub_1D5DF42F8(v283, &v229[qword_1EDF347F0]);
    v272 = swift_allocObject();
    *(v272 + 16) = sub_1D6CBAA9C;
    *(v272 + 24) = v266;
    *(v272 + 32) = v271;
    *(v229 + 3) = sub_1D6CBAA88;
    *(v229 + 4) = v272;
    sub_1D5ECF320(&v296);
  }

  result = __swift_destroy_boxed_opaque_existential_1(v319);
  v273 = v287;
  v287[48] = v229;
  *(v273 + 392) = 0;
  return result;
}

void sub_1D6E11418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  sub_1D6E13148(0, &qword_1EC896960, sub_1D6E12AB8, &type metadata for H12_V1.Layout, MEMORY[0x1E69D74B0]);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v21 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = a2 + 32;
    v27 = *MEMORY[0x1E69D7460];
    v26 = *(v8 + 104);
    v25 = *MEMORY[0x1E69D7098];
    v29 = v8 + 104;
    v24 = (v8 + 8);
    v23 = xmmword_1D7273AE0;
    v28 = a1;
    v22 = v6;
    do
    {
      v12 += 8;
      v31 = a1;
      v26(v10, v27, v6);
      sub_1D6E12B60();
      sub_1D6E13148(0, &qword_1EC896970, sub_1D6E12AB8, &type metadata for H12_V1.Layout, MEMORY[0x1E69D70D8]);
      v14 = v13;
      v15 = *(v13 - 8);
      v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = v23;
      v18 = (*(v15 + 104))(v17 + v16, v25, v14);
      MEMORY[0x1EEE9AC00](v18, v19);
      v20 = MEMORY[0x1E69D7150];
      sub_1D6E12C3C(0, &qword_1EC896978, MEMORY[0x1E69D7150]);
      sub_1D6E12BF8(&qword_1EC896980, &qword_1EC896978, v20);

      a1 = v28;
      v6 = v22;
      sub_1D72599EC();

      (*v24)(v10, v6);
      --v11;
    }

    while (v11);
  }
}

void sub_1D6E11778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104 = a3;
  v118 = a1;
  v102 = sub_1D725A34C();
  v4 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v5);
  v105 = &v96[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D6E13148(0, &qword_1EC896960, sub_1D6E12AB8, &type metadata for H12_V1.Layout, MEMORY[0x1E69D74B0]);
  v123 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v117 = &v96[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v103 = &v96[-v13];
  v14 = sub_1D725A36C();
  MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v96[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(a2 + 16);
  if (!v19)
  {
    return;
  }

  v20 = 0;
  v21 = a2 + 32;
  v109 = *MEMORY[0x1E69D7378];
  v108 = (v16 + 104);
  v116 = *MEMORY[0x1E69D7200];
  v22 = *MEMORY[0x1E69D7208];
  v114 = *MEMORY[0x1E69D7468];
  v115 = v22;
  v113 = (v8 + 104);
  v112 = *MEMORY[0x1E69D7050];
  v111 = *MEMORY[0x1E69D7080];
  v107 = (v8 + 8);
  v98 = (v4 + 8);
  v99 = (v4 + 104);
  v97 = *MEMORY[0x1E69D7350];
  v100 = *MEMORY[0x1E69D7340];
  v110 = xmmword_1D7273AE0;
  v101 = v14;
  v119 = &v96[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  while (1)
  {
    v120 = v21;
    v121 = v19;
    sub_1D6CB9EB0(v21, v133);
    v122 = v20;
    if ((v134 & 1) == 0)
    {
      memcpy(v124, v133, 0x188uLL);
      if ((BYTE8(v124[3]) & 0x10) != 0)
      {
        v23 = v104 + *(type metadata accessor for H12_V1.Bound() + 24);
        v24 = type metadata accessor for GroupLayoutContext();
        v25 = *(*(v23 + *(v24 + 40)) + 24);
        v27 = MEMORY[0x1EEE9AC00](v24, v26);
        *&v96[-32] = v124;
        *&v96[-24] = v25;
        v94 = v28;
      }

      else
      {
        v73 = v104 + *(type metadata accessor for H12_V1.Bound() + 24);
        v74 = type metadata accessor for GroupLayoutContext();
        v75 = *(*(v73 + *(v74 + 40)) + 24);
        v27 = MEMORY[0x1EEE9AC00](v74, v76);
        v94 = v124;
        v95 = v75;
      }

      (*v108)(v18, v109, v14, v27);
      sub_1D5EF94BC();
      swift_allocObject();

      v106 = sub_1D725A4CC();

      v125 = v118;
      swift_getKeyPath();
      sub_1D5EF9444();
      v30 = v29;
      v31 = swift_allocBox();
      v33 = v32;
      v34 = *(v30 + 48);
      sub_1D725993C();
      v35 = swift_allocBox();
      sub_1D725992C();
      *v33 = v35;
      v36 = sub_1D725A09C();
      v37 = *(*(v36 - 8) + 104);
      v37(v33, v116, v36);
      v37((v33 + v34), v115, v36);
      v38 = v103;
      *v103 = v31;
      (*v113)(v38, v114, v123);
      sub_1D6E12B60();
      sub_1D6E13148(0, &qword_1EC896970, sub_1D6E12AB8, &type metadata for H12_V1.Layout, MEMORY[0x1E69D70D8]);
      v40 = v39;
      v41 = *(v39 - 8);
      v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = v110;
      sub_1D6E13148(0, &qword_1EC896988, sub_1D6E12AB8, &type metadata for H12_V1.Layout, MEMORY[0x1E69D7078]);
      (*(*(v44 - 8) + 104))(v43 + v42, v112, v44);
      (*(v41 + 104))(v43 + v42, v111, v40);
      v45 = MEMORY[0x1E69D6F38];
      sub_1D6E12C3C(0, &qword_1EC896990, MEMORY[0x1E69D6F38]);
      v47 = v46;
      v48 = sub_1D6E12BF8(&qword_1EC896998, &qword_1EC896990, v45);
      v94 = v47;
      v95 = v48;
      v20 = v122;
      sub_1D7259B0C();

      (*v107)(v38, v123);
      sub_1D5EF93F0(v124);
      v14 = v101;
      goto LABEL_5;
    }

    v124[12] = *&v133[192];
    v124[13] = *&v133[208];
    v124[14] = *&v133[224];
    *&v124[15] = *&v133[240];
    v124[8] = *&v133[128];
    v124[9] = *&v133[144];
    v124[10] = *&v133[160];
    v124[11] = *&v133[176];
    v124[4] = *&v133[64];
    v124[5] = *&v133[80];
    v124[6] = *&v133[96];
    v124[7] = *&v133[112];
    v124[0] = *v133;
    v124[1] = *&v133[16];
    v124[2] = *&v133[32];
    v124[3] = *&v133[48];
    v132 = v118;
    swift_getKeyPath();
    sub_1D5EF9444();
    v50 = v49;
    v51 = swift_allocBox();
    v53 = v52;
    v54 = *(v50 + 48);
    sub_1D725993C();
    v55 = swift_allocBox();
    sub_1D725992C();
    *v53 = v55;
    v56 = sub_1D725A09C();
    v57 = *(*(v56 - 8) + 104);
    v57(v53, v116, v56);
    v57((v53 + v54), v115, v56);
    *v117 = v51;
    (*v113)();
    sub_1D6E12B60();
    sub_1D6E13148(0, &qword_1EC896970, sub_1D6E12AB8, &type metadata for H12_V1.Layout, MEMORY[0x1E69D70D8]);
    v59 = v58;
    v60 = *(v58 - 8);
    v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = v110;
    sub_1D6E13148(0, &qword_1EC896988, sub_1D6E12AB8, &type metadata for H12_V1.Layout, MEMORY[0x1E69D7078]);
    (*(*(v63 - 8) + 104))(v62 + v61, v112, v63);
    (*(v60 + 104))(v62 + v61, v111, v59);
    v64 = *(&v124[11] + 1);
    v65 = *&v124[12];
    __swift_project_boxed_opaque_existential_1(&v124[10], *(&v124[11] + 1));
    v66 = (*(v65 + 48))(v64, v65);
    v67 = *(&v124[11] + 1);
    v68 = *&v124[12];
    __swift_project_boxed_opaque_existential_1(&v124[10], *(&v124[11] + 1));
    v69 = (*(v68 + 56))(v67, v68);
    sub_1D6CBA14C(&v124[5] + 8, &v125, &qword_1EDF13058, &type metadata for FeedTag.Overrides);
    if (v126 == 1)
    {
      v70 = &v125;
      v71 = &qword_1EDF13058;
      v72 = &type metadata for FeedTag.Overrides;
LABEL_18:
      sub_1D6CBA1CC(v70, v71, v72);
      v78 = v100;
      v20 = v122;
      goto LABEL_19;
    }

    sub_1D6CBA14C(v127, v128, &unk_1EC880A80, &type metadata for FeedTag.Overrides.Image);
    sub_1D5EED280(&v125);
    if (!v129)
    {
      v70 = v128;
      v71 = &unk_1EC880A80;
      v72 = &type metadata for FeedTag.Overrides.Image;
      goto LABEL_18;
    }

    v77 = v131;
    sub_1D5EED4FC(v128);
    v78 = v100;
    v20 = v122;
    if ((v77 & 1) == 0)
    {
      break;
    }

LABEL_19:
    v81 = v105;
    v82 = v102;
    v83 = (*v99)(v105, v78, v102);
    v85 = MEMORY[0x1EEE9AC00](v83, v84);
    *&v96[-32] = v81;
    *&v96[-24] = v66 + v69 + v69;
    v94 = v124;
    (*v108)(v119, v109, v14, v85);
    sub_1D6CBA24C();
    swift_allocObject();
    sub_1D725A4CC();
    (*v98)(v81, v82);
    v86 = MEMORY[0x1E69D6F38];
    sub_1D6E12C3C(0, &qword_1EC896990, MEMORY[0x1E69D6F38]);
    v88 = v87;
    v89 = sub_1D6E12BF8(&qword_1EC896998, &qword_1EC896990, v86);
    v94 = v88;
    v95 = v89;
    v90 = v117;
    sub_1D7259B0C();

    (*v107)(v90, v123);
    sub_1D6CB9F0C(v124);
LABEL_5:
    v21 = v120 + 400;
    v19 = v121 - 1;
    v18 = v119;
    if (v121 == 1)
    {
      return;
    }
  }

  sub_1D6CBA14C(&v124[5] + 8, &v125, &qword_1EDF13058, &type metadata for FeedTag.Overrides);
  if (v126 != 1)
  {
    sub_1D6CBA14C(v127, v128, &unk_1EC880A80, &type metadata for FeedTag.Overrides.Image);
    sub_1D5EED280(&v125);
    if (!v129)
    {
      v91 = &unk_1EC880A80;
      v92 = &type metadata for FeedTag.Overrides.Image;
      v93 = v128;
      goto LABEL_23;
    }

    v79 = v130;
    v80 = v131;
    sub_1D5EED4FC(v128);
    if (v80)
    {
      goto LABEL_24;
    }

    *v105 = v79;
    v78 = v97;
    goto LABEL_19;
  }

  v91 = &qword_1EDF13058;
  v92 = &type metadata for FeedTag.Overrides;
  v93 = &v125;
LABEL_23:
  sub_1D6CBA1CC(v93, v91, v92);
LABEL_24:
  __break(1u);
}

uint64_t sub_1D6E125A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1D725895C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CB9EB0(a2, v41);
  memcpy(v42, a3, sizeof(v42));
  if ((v41[392] & 1) == 0)
  {
    sub_1D6CB9EB0(v41, v39);
    memcpy(v40, a3, 0x181uLL);
    if (sub_1D67480B8(v40) != 1)
    {
      v37 = nullsub_1();
      v38 = swift_allocObject();
      memcpy((v38 + 16), v39, 0x188uLL);
      memcpy((v38 + 408), v37, 0x180uLL);
      *(v38 + 792) = a1;
      v31 = v38 | 0x5000000000000000;
      goto LABEL_9;
    }

    nullsub_1();
    sub_1D5EF93F0(v39);
LABEL_7:
    v32 = swift_allocObject();
    sub_1D725894C();
    v33 = sub_1D725893C();
    v35 = v34;
    (*(v9 + 8))(v12, v8);
    *(v32 + 16) = v33;
    *(v32 + 24) = v35;
    *a4 = v32;
    return sub_1D6CB9F60(v41);
  }

  sub_1D6CB9EB0(v41, v39);
  memcpy(v40, a3, 0x181uLL);
  if (sub_1D67480B8(v40) != 1)
  {
    nullsub_1();
    sub_1D6CB9F0C(v39);
    goto LABEL_7;
  }

  v13 = nullsub_1();
  v14 = swift_allocObject();
  v15 = v39[13];
  *(v14 + 208) = v39[12];
  *(v14 + 224) = v15;
  *(v14 + 240) = v39[14];
  *(v14 + 256) = *&v39[15];
  v16 = v39[9];
  *(v14 + 144) = v39[8];
  *(v14 + 160) = v16;
  v17 = v39[11];
  *(v14 + 176) = v39[10];
  *(v14 + 192) = v17;
  v18 = v39[5];
  *(v14 + 80) = v39[4];
  *(v14 + 96) = v18;
  v19 = v39[7];
  *(v14 + 112) = v39[6];
  *(v14 + 128) = v19;
  v20 = v39[1];
  *(v14 + 16) = v39[0];
  *(v14 + 32) = v20;
  v21 = v39[3];
  *(v14 + 48) = v39[2];
  *(v14 + 64) = v21;
  v22 = *v13;
  v23 = v13[1];
  v24 = v13[3];
  *(v14 + 296) = v13[2];
  *(v14 + 312) = v24;
  *(v14 + 264) = v22;
  *(v14 + 280) = v23;
  v25 = v13[4];
  v26 = v13[5];
  v27 = v13[7];
  *(v14 + 360) = v13[6];
  *(v14 + 376) = v27;
  *(v14 + 328) = v25;
  *(v14 + 344) = v26;
  v28 = v13[8];
  v29 = v13[9];
  v30 = v13[11];
  *(v14 + 424) = v13[10];
  *(v14 + 440) = v30;
  *(v14 + 392) = v28;
  *(v14 + 408) = v29;
  *(v14 + 456) = a1;
  v31 = v14 | 0x6000000000000000;
LABEL_9:
  *a4 = v31;
  return sub_1D6CBA01C(v41);
}