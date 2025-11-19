unint64_t sub_1B7CB34B0()
{
  result = qword_1EBA53548;
  if (!qword_1EBA53548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53548);
  }

  return result;
}

unint64_t sub_1B7CB3508()
{
  result = qword_1EBA53550;
  if (!qword_1EBA53550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53550);
  }

  return result;
}

unint64_t sub_1B7CB3560()
{
  result = qword_1EBA53558;
  if (!qword_1EBA53558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53558);
  }

  return result;
}

id IMDPersistenceHelloWorldClass.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IMDPersistenceHelloWorldClass.init()()
{
  v1 = OBJC_IVAR___IMDPersistenceHelloWorldClass_Impl_inner;
  *&v0[v1] = [objc_allocWithZone(sub_1B7CFE250()) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for IMDPersistenceHelloWorldClass();
  return objc_msgSendSuper2(&v3, sel_init);
}

id IMDPersistenceHelloWorldClass.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMDPersistenceHelloWorldClass();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for IMDPersistenceHelloWorld()
{
  result = qword_1EBA53568;
  if (!qword_1EBA53568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7CB3884()
{
  result = sub_1B7CFE230();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B7CB38F0()
{
  v0 = sub_1B7CFE420();
  sub_1B7AED154(v0, qword_1EDBE79D0);
  sub_1B7AD9040(v0, qword_1EDBE79D0);
  sub_1B7CFE3F0();
  return sub_1B7CFE410();
}

uint64_t sub_1B7CB3978()
{
  v1 = *(v0 + 16);
  *v13 = *v0;
  v2 = *(v0 + 32);
  *&v13[16] = v1;
  *&v13[32] = v2;
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v14 = v3;
  v7 = *v13;
  v8 = *&v13[8];
  v9 = *&v13[24];
  v10 = *(&v2 + 1);
  v11 = v3;
  v12 = v4;
  sub_1B7CB51C0(v13, v6);
  type metadata accessor for SQLEntityResultDecoder.KeyedRecordDecoder();

  swift_getWitnessTable();
  return sub_1B7CFF480();
}

uint64_t sub_1B7CB3A5C()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  return sub_1B7CB3978();
}

unint64_t sub_1B7CB3B60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 32);
  if (*(v4 + 16) && (v5 = *(v3 + 16), result = sub_1B7AE11D0(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v4 + 56) + 8 * result);
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *(v5 + 16))
    {
      v9 = v5 + 16 * v8;
      result = *(v9 + 32);
      v10 = *(v9 + 40);
      return result;
    }

    __break(1u);
  }

  else
  {
    sub_1B7CB5388();
    swift_allocError();
    v11[1] = 0;
    v11[2] = 0;
    *v11 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B7CB3C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = sub_1B7CFF890();
  v11 = sub_1B7CB3B60(v9, v10);
  if (v4)
  {
  }

  v14 = v11;
  v15 = v12;

  return sub_1B7C8CBF8(v14, v15, a3, a4);
}

unint64_t sub_1B7CB3CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1B7CB3B60(a1, a2);
  if (!v5)
  {
    return sub_1B7C8CBF8(result, v9, a4, a5);
  }

  return result;
}

uint64_t sub_1B7CB3D00(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(a1 + 16);

  sub_1B7C107FC(&qword_1EBA53600, &qword_1B7D12468);
  sub_1B7CB5440();
  v2 = sub_1B7CFEC50();
  sub_1B7CB54A4(&v5);
  return v2;
}

uint64_t sub_1B7CB3DA8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = sub_1B7CFF890();
  if (*(v3 + 16))
  {
    sub_1B7AE11D0(v6, v7);
    v9 = v8;
  }

  else
  {

    v9 = 0;
  }

  return v9 & 1;
}

unint64_t sub_1B7CB3E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v68 = a1;
  v66 = a4;
  v6 = sub_1B7CFEFF0();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v60 - v8;
  v67 = a3;
  v63 = *(a3 - 8);
  v9 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1B7CFE7C0();
  v12 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v71 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B7CFE5C0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 16);
  v69 = *(a2 + 24);
  v70 = v19;
  v20 = sub_1B7CFF890();
  v22 = v21;
  (*(v15 + 104))(v18, *MEMORY[0x1E697BB70], v14);
  v23 = sub_1B7CFE5B0();
  v25 = v24;
  (*(v15 + 8))(v18, v14);
  if (v20 == v23 && v22 == v25)
  {
  }

  else
  {
    v27 = sub_1B7CFF590();

    if ((v27 & 1) == 0)
    {
      v28 = v68;
      v29 = swift_conformsToProtocol2();
      v30 = sub_1B7CFF890();
      v32 = v31;
      if (v29 && v28)
      {
        v33 = v72;
        v34 = sub_1B7CB3B60(v30, v31);
        if (v33)
        {
        }

        else
        {
          v45 = v34;
          v46 = v35;

          v48 = *(*(v28 - 8) + 64);
          MEMORY[0x1EEE9AC00](v47);
          sub_1B7C8CC4C(v28, v45, v46, v28, v29);
          v49 = v64;
          v50 = v67;
          v51 = swift_dynamicCast();
          v52 = v63;
          v53 = *(v63 + 56);
          if (v51)
          {
            v53(v49, 0, 1, v50);
            v54 = *(v52 + 32);
            v55 = v60;
            v54(v60, v49, v50);
            return (v54)(v66, v55, v50);
          }

          else
          {
            v53(v49, 1, 1, v50);
            (*(v61 + 8))(v49, v62);
            v56 = sub_1B7CFF890();
            v58 = v57;
            sub_1B7CB5388();
            swift_allocError();
            *v59 = v56;
            v59[1] = v58;
            v59[2] = v50;
            return swift_willThrow();
          }
        }
      }

      else
      {
        v43 = v30;
        sub_1B7CB5388();
        swift_allocError();
        *v44 = v43;
        v44[1] = v32;
        v44[2] = v67;
        return swift_willThrow();
      }
    }
  }

  v38 = v72;
  v37 = v73;
  result = sub_1B7CB3CB8(0x4449574F52, 0xE500000000000000, a2, MEMORY[0x1E69E7360], &off_1F2FA8A78);
  if (!v38)
  {
    v39 = *v37;
    v40 = v37[1];
    v41 = v37[5];
    v42 = v37[6];
    sub_1B7CFE7B0();
    return swift_dynamicCast();
  }

  return result;
}

uint64_t sub_1B7CB43EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v5 = sub_1B7CFF890();
  v7 = sub_1B7CB3B60(v5, v6);
  if (v2)
  {

    return v9;
  }

  v10 = v8;
  v11 = v7;

  if (v10 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v10 <= 0x7FFFFFFF)
  {
    v13 = sqlite3_column_type(v11, v10);
    return sub_1B7CD6250(v13) == 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7CB461C(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_1B7CB3D00(a1);
}

uint64_t sub_1B7CB4658(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  return sub_1B7CB3DA8(a1, a2) & 1;
}

uint64_t sub_1B7CB4698(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  return sub_1B7CB43EC(a1, a2) & 1;
}

uint64_t sub_1B7CB46D8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  sub_1B7CB3E14(MEMORY[0x1E69E6370], a1, a2, MEMORY[0x1E69E6370], &off_1F2FA89D8);
  if (!v3)
  {
    v4 = v10;
  }

  return v4 & 1;
}

uint64_t sub_1B7CB474C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  result = sub_1B7CB3E14(MEMORY[0x1E69E6158], a1, a2, MEMORY[0x1E69E6158], &off_1F2FA8B58);
  if (!v3)
  {
    return v5;
  }

  return result;
}

double sub_1B7CB47BC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  sub_1B7CB3E14(MEMORY[0x1E69E63B0], a1, a2, MEMORY[0x1E69E63B0], &off_1F2FA8B38);
  if (!v3)
  {
    return v9;
  }

  return result;
}

float sub_1B7CB482C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  sub_1B7CB3E3C(MEMORY[0x1E69E6448], a2, MEMORY[0x1E69E6448], &v9);
  if (!v3)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1B7CB49FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = v5[1];
  v10 = v5[2];
  v11 = v5[3];
  result = sub_1B7CB3E14(a4, a1, a2, a4, a5);
  if (!v6)
  {
    return v12;
  }

  return result;
}

uint64_t sub_1B7CB4A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = v5[1];
  v10 = v5[2];
  v11 = v5[3];
  result = sub_1B7CB3E14(a4, a1, a2, a4, a5);
  if (!v6)
  {
    return v12;
  }

  return result;
}

uint64_t sub_1B7CB4B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = v5[1];
  v10 = v5[2];
  v11 = v5[3];
  result = sub_1B7CB3E14(a4, a1, a2, a4, a5);
  if (!v6)
  {
    return v12;
  }

  return result;
}

uint64_t sub_1B7CB4B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = v5[1];
  v10 = v5[2];
  v11 = v5[3];
  result = sub_1B7CB3E14(a4, a1, a2, a4, a5);
  if (!v6)
  {
    return v12;
  }

  return result;
}

unint64_t sub_1B7CB4C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  return sub_1B7CB3E3C(a1, a3, a2, a4);
}

uint64_t sub_1B7CB4C80()
{
  result = sub_1B7CFF5C0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B7CB4CD0()
{
  result = sub_1B7CFF5D0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B7CB4D78()
{
  result = sub_1B7CFF600();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B7CB4DC8()
{
  result = sub_1B7CFF5E0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B7CB4F08()
{
  result = sub_1B7CFF610();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B7CB4F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

void sub_1B7CB4FB0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B7CB44AC();
}

void sub_1B7CB5004()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B7CB4508();
}

void sub_1B7CB5048()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B7CB45C0();
}

void sub_1B7CB508C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B7CB4564();
}

__n128 sub_1B7CB50F4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B7CB5118(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1B7CB5160(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7CB5210()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7CB524C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1B7CB5294(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7CB52E4(uint64_t a1, int a2)
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

uint64_t sub_1B7CB532C(uint64_t result, int a2, int a3)
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

unint64_t sub_1B7CB5388()
{
  result = qword_1EBA535F8;
  if (!qword_1EBA535F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA535F8);
  }

  return result;
}

uint64_t sub_1B7CB53DC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = a1[1];

  return sub_1B7CFF8A0();
}

unint64_t sub_1B7CB5440()
{
  result = qword_1EBA53608;
  if (!qword_1EBA53608)
  {
    sub_1B7C1091C(&qword_1EBA53600, &qword_1B7D12468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53608);
  }

  return result;
}

uint64_t sub_1B7CB54A4(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA53610, qword_1B7D12470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7CB550C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7CB555C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B7CB55B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B7CB5600(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v13 + 16);
      v6 = *(v13 + 24);

      if (v7 >= v6 >> 1)
      {
        sub_1B7AECEEC((v6 > 1), v7 + 1, 1);
      }

      *(v13 + 16) = v7 + 1;
      v8 = v13 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v9 = sub_1B7CFEA10();
  v11 = v10;

  MEMORY[0x1B8CADCA0](v9, v11);
}

uint64_t sub_1B7CB573C(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v28[1] = v1;
    v32[0] = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v3, 0);
    v4 = v32[0];
    v28[0] = v2;
    v5 = v2 + 32;
    v6 = v3;
    do
    {
      sub_1B7CB5AD8(v5, v39);
      sub_1B7CB5AD8(v39, &v36);
      v29 = v36;
      v30 = v37;

      MEMORY[0x1B8CADCA0](0x203F203D20, 0xE500000000000000);

      v7 = v29;
      v8 = v30;
      sub_1B7CB5B48(v39);
      sub_1B7AE9168(v38);
      v32[0] = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1B7AECEEC((v9 > 1), v10 + 1, 1);
        v4 = v32[0];
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      v5 += 56;
      --v6;
    }

    while (v6);
    v2 = v28[0];
  }

  v39[0] = v4;
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v12 = sub_1B7CFEA10();
  v14 = v13;

  MEMORY[0x1B8CADCA0](v12, v14);

  v15 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1B7AF5760(0, v3, 0);
    v15 = v35;
    v16 = v2 + 32;
    do
    {
      sub_1B7CB5AD8(v16, v39);
      sub_1B7CB5AD8(v39, &v36);
      v29 = v36;
      v30 = v37;
      sub_1B7AE910C(v38, v31);
      sub_1B7AE90A8(v31, v32);
      sub_1B7CB5B48(&v29);
      sub_1B7CB5B48(v39);
      v35 = v15;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B7AF5760((v17 > 1), v18 + 1, 1);
      }

      v19 = v33;
      v20 = v34;
      v21 = sub_1B7C1542C(v32, v33);
      v22 = *(*(v19 - 8) + 64);
      v23 = MEMORY[0x1EEE9AC00](v21);
      v25 = v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v25, v23);
      sub_1B7CB5BB0(v18, v25, &v35, v19, v20);
      sub_1B7AE9168(v32);
      v15 = v35;
      v16 += 56;
      --v3;
    }

    while (v3);
  }

  return sub_1B7AF3098(v15);
}

void sub_1B7CB5AA0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
}

void sub_1B7CB5AB8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  JUMPOUT(0x1B8CADCA0);
}

__n128 sub_1B7CB5AC4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B7CB5AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA53408, &unk_1B7D114E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7CB5B48(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA53408, &unk_1B7D114E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7CB5BB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1B7C1A14C(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1B7AE910C(&v12, v10 + 40 * a1 + 32);
}

void *sub_1B7CB5C48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = (a1 + 48);
  v4 = *(a1 + 16);
  do
  {
    v6 = *(v3 - 1);
    v5 = *v3;
    v7 = *(v3 - 2);

    MEMORY[0x1B8CADCA0](v7, v6);

    v3 += 3;
    --v4;
  }

  while (v4);
  v9 = (a1 + 48);
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = *v9;
    v12 = *(*v9 + 16);
    v13 = v10[2];
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      break;
    }

    v15 = *(v9 - 1);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v16 = v10[3] >> 1, v16 >= v14))
    {
      if (*(v11 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v17 = v13 + v12;
      }

      else
      {
        v17 = v13;
      }

      result = sub_1B7AE3A9C(result, v17, 1, v10);
      v10 = result;
      v16 = result[3] >> 1;
      if (*(v11 + 16))
      {
LABEL_16:
        if (v16 - v10[2] < v12)
        {
          goto LABEL_25;
        }

        sub_1B7C107FC(&qword_1EBA52460, &qword_1B7D113A0);
        swift_arrayInitWithCopy();

        if (v12)
        {
          v18 = v10[2];
          v19 = __OFADD__(v18, v12);
          v20 = v18 + v12;
          if (v19)
          {
            goto LABEL_26;
          }

          v10[2] = v20;
        }

        goto LABEL_6;
      }
    }

    if (v12)
    {
      goto LABEL_24;
    }

LABEL_6:

    v9 += 3;
    if (!--v1)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1B7CB5E44()
{
  result = qword_1EBA53618;
  if (!qword_1EBA53618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53618);
  }

  return result;
}

unint64_t sub_1B7CB5E9C()
{
  result = qword_1EBA53620;
  if (!qword_1EBA53620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53620);
  }

  return result;
}

unint64_t sub_1B7CB5EF4()
{
  result = qword_1EBA53628;
  if (!qword_1EBA53628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53628);
  }

  return result;
}

unint64_t sub_1B7CB5F4C()
{
  result = qword_1EBA53630;
  if (!qword_1EBA53630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53630);
  }

  return result;
}

uint64_t sub_1B7CB5FA0(uint64_t a1, int a2)
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

uint64_t sub_1B7CB5FE8(uint64_t result, int a2, int a3)
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

uint64_t sub_1B7CB6044(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1B7CFE420();
  v8 = *(v7 - 8);
  v77 = v7;
  v78 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v69 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = v64 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v64 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v64 - v17;
  v19 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = v19;
  v20 = *(a1 + 24);
  v21 = *(a2 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_inspectionReport);

  sub_1B7C9E06C(v20, v21);

  v22 = *(a1 + 16);
  if (!v22)
  {

    goto LABEL_6;
  }

  v23 = *(a2 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_attachmentPathsTable);
  v24 = *(a1 + 16);

  v26 = sub_1B7CDEC04(v25);
  if (v3)
  {

LABEL_6:

    return v4;
  }

  v76 = v26;
  v66 = v22;
  v27 = sub_1B7CDEC04(v22);
  v64[1] = a1;
  v64[2] = a2;
  v64[3] = 0;
  v65 = v2;
  v29 = v27;

  v30 = v77;
  v31 = v76[2];
  v75 = v29;
  if (v31)
  {
    v73 = "rageInspectorCrossCheckReport";
    v74 = "directoryBatchSize";
    sub_1B7CFE410();
    v32 = sub_1B7CFE400();
    v33 = sub_1B7CFEED0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1B7AD5000, v32, v33, "Missing paths in record counter table:", v34, 2u);
      MEMORY[0x1B8CB0E70](v34, -1, -1);
    }

    v71 = *(v78 + 8);
    v72 = (v78 + 8);
    result = v71(v18, v30);
    v36 = v76;
    *&v70 = v76[2];
    if (v70)
    {
      v37 = 0;
      v38 = v76 + 5;
      *&v35 = 136315138;
      v67 = v35;
      while (v37 < v36[2])
      {
        v40 = *(v38 - 1);
        v39 = *v38;
        sub_1B7CFE410();

        v41 = sub_1B7CFE400();
        v42 = sub_1B7CFEED0();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v79 = v44;
          *v43 = v67;
          *(v43 + 4) = sub_1B7AED1B8(v40, v39, &v79);
          _os_log_impl(&dword_1B7AD5000, v41, v42, "%s", v43, 0xCu);
          sub_1B7AE9168(v44);
          v45 = v44;
          v30 = v77;
          MEMORY[0x1B8CB0E70](v45, -1, -1);
          v46 = v43;
          v29 = v75;
          MEMORY[0x1B8CB0E70](v46, -1, -1);
        }

        result = v71(v15, v30);
        ++v37;
        v38 += 2;
        v36 = v76;
        if (v70 == v37)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_30;
    }
  }

LABEL_17:
  if (!v29[2])
  {

    goto LABEL_28;
  }

  v72 = "rageInspectorCrossCheckReport";
  v73 = "directoryBatchSize";
  v47 = v68;
  sub_1B7CFE410();
  v48 = sub_1B7CFE400();
  v49 = sub_1B7CFEED0();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_1B7AD5000, v48, v49, "Missing paths in attachmentStorageInspector attachmentPaths table:", v50, 2u);
    MEMORY[0x1B8CB0E70](v50, -1, -1);
  }

  v51 = *(v78 + 8);
  v78 += 8;
  v74 = v51;
  result = (v51)(v47, v30);
  v53 = v69;
  v71 = v29[2];
  if (!v71)
  {
LABEL_26:

LABEL_28:

    return v65;
  }

  v54 = 0;
  v55 = v29 + 5;
  *&v52 = 136315138;
  v70 = v52;
  while (v54 < v29[2])
  {
    v57 = *(v55 - 1);
    v56 = *v55;
    sub_1B7CFE410();

    v58 = sub_1B7CFE400();
    v59 = sub_1B7CFEED0();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v79 = v61;
      *v60 = v70;
      *(v60 + 4) = sub_1B7AED1B8(v57, v56, &v79);
      _os_log_impl(&dword_1B7AD5000, v58, v59, "%s", v60, 0xCu);
      sub_1B7AE9168(v61);
      v62 = v61;
      v29 = v75;
      MEMORY[0x1B8CB0E70](v62, -1, -1);
      v63 = v60;
      v30 = v77;
      MEMORY[0x1B8CB0E70](v63, -1, -1);
    }

    result = (v74)(v53, v30);
    v54 = (v54 + 1);
    v55 += 2;
    if (v71 == v54)
    {
      goto LABEL_26;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t RecordCounterAttachmentStorageInspectorCrossCheckReport.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t RecordCounterAttachmentStorageInspectorCrossCheckReport.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_1B7CB6804(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18 - v11;
  sub_1B7C108AC(a4, &v18 - v11);
  v13 = sub_1B7CFE120();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    v15 = sub_1B7CFE0A0();
    (*(v14 + 8))(v12, v13);
  }

  v16 = sub_1B7B2710C(a3, v15, a5);

  if (v16)
  {
    sub_1B7AEE088(0, &qword_1EDBE5920, off_1E7CB4FD8);
    v17 = sub_1B7CFECE0();

    a1(v17);
  }

  else
  {
    __break(1u);
  }
}

void sub_1B7CB6C38(uint64_t a1, uint64_t a2)
{
  sub_1B7AEE088(0, &qword_1EDBE5920, off_1E7CB4FD8);
  v3 = sub_1B7CFECC0();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_1B7CB6CB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void, void, void), uint64_t a6)
{
  v70 = a6;
  v71 = a5;
  v92 = a4;
  v85 = a3;
  v79 = a2;
  v78 = type metadata accessor for SQLConnectionConfiguration();
  v7 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1B7CFE4A0();
  v9 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v83 = (&v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  v82 = *MEMORY[0x1E69E8020];
  v80 = (v10 + 8);
  v81 = (v10 + 104);
  v76 = 0x80000001B7D59010;
  v74 = 0x80000001B7D57610;

  v17 = 0;
  v18 = 0x1EBA50000;
  v72 = a1;
  v69 = a1 + 64;
  v68 = v16;
  if (v15)
  {
LABEL_8:
    while (1)
    {
      v20 = __clz(__rbit64(v15)) | (v17 << 6);
      v21 = *(a1 + 56);
      v22 = (*(a1 + 48) + 16 * v20);
      v23 = v22[1];
      v86 = *v22;
      v24 = *(v21 + 8 * v20);
      v25 = *(v24 + 16);
      v93 = v23;

      v73 = v25;
      if (v25)
      {
        break;
      }

LABEL_30:
      v15 &= v15 - 1;

      a1 = v72;
      v12 = v69;
      v16 = v68;
      if (!v15)
      {
        goto LABEL_4;
      }
    }

    v26 = 0;
    v27 = (v24 + 40);
    v75 = v24;
    while (v26 < *(v24 + 16))
    {
      v33 = v18;
      v34 = *v27;
      v89 = *(v27 - 1);
      v90 = v26;
      v87 = v27;
      v88 = v26 == 0;
      swift_bridgeObjectRetain_n();
      IMDEnsureSharedRecordStoreInitialized();
      IMDSharedSqliteDatabase();
      _IMDPersistenceGetThreadedStoreQueue();
      v36 = v35;
      if (!v36)
      {
        goto LABEL_36;
      }

      v38 = v83;
      v37 = v84;
      *v83 = v36;
      (*v81)(v38, v82, v37);
      v39 = sub_1B7CFE4C0();
      (*v80)(v38, v37);
      if ((v39 & 1) == 0)
      {
        goto LABEL_35;
      }

      v40 = CSDBSqliteDatabaseConnectionForWriting();
      if (!v40)
      {
        goto LABEL_37;
      }

      v41 = *(v40 + 8);
      if (!v41)
      {
        goto LABEL_37;
      }

      v42 = *(v78 + 28);
      if (qword_1EBA50ED0 != -1)
      {
        swift_once();
      }

      v43 = sub_1B7CFE420();
      v44 = sub_1B7AD9040(v43, qword_1EBA5DA50);
      v45 = *(v43 - 8);
      v46 = v77;
      (*(v45 + 16))(&v77[v42], v44, v43);
      (*(v45 + 56))(v46 + v42, 0, 1, v43);
      *v46 = 1;
      *(v46 + 8) = 0x4082C00000000000;
      *(v46 + 16) = 256;
      v47 = type metadata accessor for SQLConnection(0);
      v48 = *(v47 + 48);
      v49 = *(v47 + 52);
      v50 = swift_allocObject();
      v51 = (v50 + *(v33 + 3984));
      v52 = MEMORY[0x1E69E7CC8];
      *v51 = MEMORY[0x1E69E7CC8];
      v51[1] = v52;
      v51[2] = 32;
      v50[2] = v41;
      *(v50 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) = 0;
      sub_1B7AE3EA4(v46, v50 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
      sqlite3_busy_timeout(v41, 600000);
      sub_1B7AE3F08(v46);
      v53 = MEMORY[0x1E69E7CC0];
      v97 = MEMORY[0x1E69E7CC0];
      *&v94 = 0x204E49474542;
      *(&v94 + 1) = 0xE600000000000000;

      v91 = v34;

      v54 = v79;

      MEMORY[0x1B8CADCA0](0x4445525245464544, 0xE800000000000000);
      sub_1B7AF3098(v53);
      MEMORY[0x1B8CADCA0](0x4341534E41525420, 0xEC0000004E4F4954);
      v55 = v97;
      sub_1B7AE3B2C(v94, *(&v94 + 1), 0);
      sub_1B7AF3FE4(v55);

      v56 = v91;
      if (!v90)
      {
        sub_1B7CBC774(v85, v92, v86, v93, v50, v89, v91);
      }

      v57 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v59 = v57[2];
      v58 = v57[3];
      v60 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        v57 = sub_1B7AE3A9C((v58 > 1), v59 + 1, 1, v57);
      }

      v95 = MEMORY[0x1E69E6158];
      v96 = &off_1F2FA8B58;
      *&v94 = v89;
      *(&v94 + 1) = v56;
      v57[2] = v60;
      sub_1B7AE910C(&v94, &v57[5 * v59 + 4]);
      v61 = v57[3];
      v62 = v59 + 2;

      if ((v59 + 2) > (v61 >> 1))
      {
        v57 = sub_1B7AE3A9C((v61 > 1), v59 + 2, 1, v57);
      }

      v95 = MEMORY[0x1E69E6158];
      v96 = &off_1F2FA8B58;
      *&v94 = v86;
      *(&v94 + 1) = v93;
      v57[2] = v62;
      sub_1B7AE910C(&v94, &v57[5 * v60 + 4]);
      v63 = v57[3];
      v64 = v59 + 3;
      if ((v59 + 3) > (v63 >> 1))
      {
        v57 = sub_1B7AE3A9C((v63 > 1), v59 + 3, 1, v57);
      }

      v96 = &off_1F2FA89F8;
      v95 = MEMORY[0x1E69E6530];
      *&v94 = v88;
      v57[2] = v64;
      sub_1B7AE910C(&v94, &v57[5 * v62 + 4]);
      v65 = v57[3];
      v66 = v59 + 4;

      if ((v59 + 4) > (v65 >> 1))
      {
        v57 = sub_1B7AE3A9C((v65 > 1), v59 + 4, 1, v57);
      }

      v18 = 0x1EBA50000uLL;
      v95 = MEMORY[0x1E69E6158];
      v96 = &off_1F2FA8B58;
      *&v94 = v85;
      *(&v94 + 1) = v92;
      v57[2] = v66;
      sub_1B7AE910C(&v94, &v57[5 * v64 + 4]);
      sub_1B7AE3B2C(0xD000000000000105, v76, 0);
      sub_1B7AF3FE4(v57);

      sub_1B7AE3B2C(0xD000000000000012, v74, 0);
      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
      swift_bridgeObjectRelease_n();

      swift_setDeallocating();
      if (*(v50 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned))
      {
        sqlite3_close_v2(v50[2]);
      }

      v26 = v90 + 1;
      sub_1B7AE3F08(v50 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
      v28 = v50 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString;
      v29 = *(v50 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);

      v30 = *(v28 + 1);

      v31 = *(*v50 + 12);
      v32 = *(*v50 + 26);
      swift_deallocClassInstance();
      v27 = v87 + 2;
      v24 = v75;
      if (v73 == v26)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        return v71(0, 0, 0, 0, 0);
      }

      v15 = *(v12 + 8 * v19);
      ++v17;
      if (v15)
      {
        v17 = v19;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_1B7CFF340();
  __break(1u);
  return result;
}

void sub_1B7CB7C14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  if (a2)
  {
    v9 = sub_1B7CFEA30();
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (a4)
  {
LABEL_3:
    v8 = sub_1B7CFEA30();
  }

LABEL_4:
  if (a5)
  {
    v10 = sub_1B7CFDEB0();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  (*(a6 + 16))(a6, v9, v8);
}

uint64_t sub_1B7CB7CD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void))
{
  v15 = sub_1B7AE3F68();
  v16 = MEMORY[0x1E69E7CC0];
  v40 = MEMORY[0x1E69E7CC0];
  *&v37 = 0x204E49474542;
  *(&v37 + 1) = 0xE600000000000000;
  v17 = a1;

  v36 = a7;

  MEMORY[0x1B8CADCA0](0x4445525245464544, 0xE800000000000000);
  sub_1B7AF3098(v16);
  MEMORY[0x1B8CADCA0](0x4341534E41525420, 0xEC0000004E4F4954);
  sub_1B7AE3B2C(0x204E49474542, 0xE600000000000000, 0);
  v33 = a5;
  sub_1B7AF3FE4(v40);

  if (a8 == 1)
  {
    v18 = a2;
    sub_1B7CBC774(a4, v33, a6, a7, v15, a2, a3);
    v19 = a3;
  }

  else
  {
    v19 = a3;
    v18 = a2;
  }

  v20 = v19;

  v21 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v23 = v21[2];
  v22 = v21[3];
  v24 = v23 + 1;
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1B7AE3A9C((v22 > 1), v23 + 1, 1, v21);
  }

  v25 = MEMORY[0x1E69E6158];
  v38 = MEMORY[0x1E69E6158];
  v39 = &off_1F2FA8B58;
  *&v37 = v18;
  *(&v37 + 1) = v20;
  v21[2] = v24;
  sub_1B7AE910C(&v37, &v21[5 * v23 + 4]);
  v26 = v21[3];
  v27 = v23 + 2;

  if ((v23 + 2) > (v26 >> 1))
  {
    v21 = sub_1B7AE3A9C((v26 > 1), v23 + 2, 1, v21);
  }

  v38 = v25;
  v39 = &off_1F2FA8B58;
  *&v37 = a6;
  *(&v37 + 1) = v36;
  v21[2] = v27;
  sub_1B7AE910C(&v37, &v21[5 * v24 + 4]);
  v28 = v21[3];
  v29 = v23 + 3;
  if ((v23 + 3) > (v28 >> 1))
  {
    v21 = sub_1B7AE3A9C((v28 > 1), v23 + 3, 1, v21);
  }

  v38 = MEMORY[0x1E69E6530];
  v39 = &off_1F2FA89F8;
  *&v37 = a8;
  v21[2] = v29;
  sub_1B7AE910C(&v37, &v21[5 * v27 + 4]);
  v30 = v21[3];
  v31 = v23 + 4;

  if (v31 > (v30 >> 1))
  {
    v21 = sub_1B7AE3A9C((v30 > 1), v31, 1, v21);
  }

  v38 = v25;
  v39 = &off_1F2FA8B58;
  *&v37 = a4;
  *(&v37 + 1) = v33;
  v21[2] = v31;
  sub_1B7AE910C(&v37, &v21[5 * v29 + 4]);
  sub_1B7AE3B2C(0xD000000000000105, 0x80000001B7D59010, 0);
  sub_1B7AF3FE4(v21);

  sub_1B7AE3B2C(0xD000000000000012, 0x80000001B7D57610, 0);
  sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

  return a9(0);
}

uint64_t sub_1B7CB856C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  sub_1B7AE3F68();

  v12 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = v12[2];
  v13 = v12[3];
  v15 = v14 + 1;
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1B7AE3A9C((v13 > 1), v14 + 1, 1, v12);
  }

  v16 = MEMORY[0x1E69E6158];
  v24 = MEMORY[0x1E69E6158];
  v25 = &off_1F2FA8B58;
  *&v23 = a1;
  *(&v23 + 1) = a2;
  v12[2] = v15;
  sub_1B7AE910C(&v23, &v12[5 * v14 + 4]);
  v17 = v12[3];
  v18 = v14 + 2;

  if ((v14 + 2) > (v17 >> 1))
  {
    v12 = sub_1B7AE3A9C((v17 > 1), v14 + 2, 1, v12);
  }

  v24 = v16;
  v25 = &off_1F2FA8B58;
  *&v23 = a3;
  *(&v23 + 1) = a4;
  v12[2] = v18;
  sub_1B7AE910C(&v23, &v12[5 * v15 + 4]);
  v19 = v12[3];

  if ((v14 + 3) > (v19 >> 1))
  {
    v12 = sub_1B7AE3A9C((v19 > 1), v14 + 3, 1, v12);
  }

  v24 = v16;
  v25 = &off_1F2FA8B58;
  *&v23 = a5;
  *(&v23 + 1) = a6;
  v12[2] = v14 + 3;
  sub_1B7AE910C(&v23, &v12[5 * v18 + 4]);
  sub_1B7AE3B2C(0xD00000000000009BLL, 0x80000001B7D58F70, 0);
  sub_1B7AF3FE4(v12);

  a7(0);
}

void sub_1B7CB898C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void))
{
  sub_1B7AE3F68();

  v9 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1B7AE3A9C((v10 > 1), v11 + 1, 1, v9);
  }

  v13 = MEMORY[0x1E69E6158];
  v18 = MEMORY[0x1E69E6158];
  v19 = &off_1F2FA8B58;
  *&v17 = a1;
  *(&v17 + 1) = a2;
  v9[2] = v12;
  sub_1B7AE910C(&v17, &v9[5 * v11 + 4]);
  v14 = v9[3];

  if ((v11 + 2) > (v14 >> 1))
  {
    v9 = sub_1B7AE3A9C((v14 > 1), v11 + 2, 1, v9);
  }

  v18 = v13;
  v19 = &off_1F2FA8B58;
  *&v17 = a3;
  *(&v17 + 1) = a4;
  v9[2] = v11 + 2;
  sub_1B7AE910C(&v17, &v9[5 * v12 + 4]);
  v15 = sub_1B7AE3B2C(0xD0000000000000B4, 0x80000001B7D58EB0, 0);
  *&v17 = MEMORY[0x1E69E7CC0];

  sub_1B7AF1A7C(v9, v15, &v17, v15);

  a5(v17, 0);
}

void sub_1B7CB8D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id, void))
{
  sub_1B7AE3F68();

  v9 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1B7AE3A9C((v10 > 1), v11 + 1, 1, v9);
  }

  v13 = MEMORY[0x1E69E6158];
  v25 = MEMORY[0x1E69E6158];
  v26 = &off_1F2FA8B58;
  *&v24 = a1;
  *(&v24 + 1) = a2;
  v9[2] = v12;
  sub_1B7AE910C(&v24, &v9[5 * v11 + 4]);
  v14 = v9[3];

  if ((v11 + 2) > (v14 >> 1))
  {
    v9 = sub_1B7AE3A9C((v14 > 1), v11 + 2, 1, v9);
  }

  v25 = v13;
  v26 = &off_1F2FA8B58;
  *&v24 = a3;
  *(&v24 + 1) = a4;
  v9[2] = v11 + 2;
  sub_1B7AE910C(&v24, &v9[5 * v12 + 4]);
  v15 = sub_1B7AE3B2C(0xD00000000000009CLL, 0x80000001B7D58E10, 0);
  *&v24 = MEMORY[0x1E69E7CC0];

  sub_1B7C9513C(v9, v15, &v24, v15);

  if (*(v24 + 16))
  {
    v17 = *(v24 + 32);
    v16 = *(v24 + 40);
    v19 = *(v24 + 48);
    v18 = *(v24 + 56);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v20 = sub_1B7CFEA30();
    if (v18)
    {
      v21 = sub_1B7CFEA30();
    }

    else
    {
      v21 = 0;
    }

    v22 = [objc_allocWithZone(IMDSyncChatSliceRecord) initWithServiceName:v20 ckRecordID:v21];
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {

    v22 = 0;
  }

  a5(v22, 0);
}

void sub_1B7CB91E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  sub_1B7AE3F68();

  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1B7AE3A9C((v7 > 1), v8 + 1, 1, v6);
  }

  v23 = MEMORY[0x1E69E6158];
  v24 = &off_1F2FA8B58;
  *&v22 = a1;
  *(&v22 + 1) = a2;
  v6[2] = v8 + 1;
  sub_1B7AE910C(&v22, &v6[5 * v8 + 4]);
  v9 = sub_1B7AE3B2C(0xD000000000000081, 0x80000001B7D58D80, 0);
  *&v22 = v5;

  sub_1B7C9513C(v6, v9, &v22, v9);

  v10 = v22;
  v11 = *(v22 + 16);
  if (v11)
  {
    *&v22 = v5;
    sub_1B7CFF2C0();
    v12 = (v10 + 56);
    do
    {
      v16 = *(v12 - 3);
      v15 = *(v12 - 2);
      v18 = *(v12 - 1);
      v17 = *v12;
      swift_bridgeObjectRetain_n();

      v19 = sub_1B7CFEA30();
      if (v17)
      {
        v13 = sub_1B7CFEA30();
      }

      else
      {
        v13 = 0;
      }

      v12 += 4;
      [objc_allocWithZone(IMDSyncChatSliceRecord) initWithServiceName:v19 ckRecordID:v13];

      sub_1B7CFF290();
      v14 = *(v22 + 16);
      sub_1B7CFF2D0();
      sub_1B7CFF2E0();
      sub_1B7CFF2A0();
      --v11;
    }

    while (v11);

    v20 = v22;
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  a3(v20, 0);
}

void sub_1B7CB963C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for IMDSyncChatSliceRecord(0);
  v5 = sub_1B7CFECC0();
  if (a2)
  {
    v6 = sub_1B7CFDEB0();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_1B7CB96D4(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, unint64_t))
{
  sub_1B7AE3F68();
  v6 = a1;
  v30 = a4;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v6 = v28)
  {
    v8 = 0;
    v34 = v6 & 0xC000000000000001;
    v33 = v6;
    v31 = v6 & 0xFFFFFFFFFFFFFF8;
    v32 = i;
    while (1)
    {
      if (v34)
      {
        v9 = MEMORY[0x1B8CAE380](v8);
      }

      else
      {
        if (v8 >= *(v31 + 16))
        {
          goto LABEL_21;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v40 = 0xD000000000000046;
      v41 = 0x80000001B7D58BF0;
      v12 = [v9 serviceName];
      v13 = sub_1B7CFEA60();
      v15 = v14;

      v16 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v18 = v16[2];
      v17 = v16[3];
      if (v18 >= v17 >> 1)
      {
        v16 = sub_1B7AE3A9C((v17 > 1), v18 + 1, 1, v16);
      }

      v38 = MEMORY[0x1E69E6158];
      v39 = &off_1F2FA8B58;
      *&v37 = v13;
      *(&v37 + 1) = v15;
      v16[2] = v18 + 1;
      sub_1B7AE910C(&v37, &v16[5 * v18 + 4]);

      v40 = 0xD00000000000004BLL;
      v41 = 0x80000001B7D58D30;
      v19 = [v10 ckRecordID];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1B7CFEA60();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      v25 = v16[2];
      v24 = v16[3];

      if (v25 >= v24 >> 1)
      {
        v16 = sub_1B7AE3A9C((v24 > 1), v25 + 1, 1, v16);
      }

      v38 = sub_1B7C107FC(&qword_1EBA51FB0, &unk_1B7D0FA00);
      v39 = sub_1B7C1547C();
      *&v37 = v21;
      *(&v37 + 1) = v23;
      v16[2] = v25 + 1;
      sub_1B7AE910C(&v37, &v16[5 * v25 + 4]);

      MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
      swift_bridgeObjectRelease_n();
      MEMORY[0x1B8CADCA0](0xD000000000000029, 0x80000001B7D58C40);
      v26 = v16[2];
      v27 = v16[3];

      if (v26 >= v27 >> 1)
      {
        v16 = sub_1B7AE3A9C((v27 > 1), v26 + 1, 1, v16);
      }

      v38 = MEMORY[0x1E69E6158];
      v39 = &off_1F2FA8B58;
      *&v37 = a2;
      *(&v37 + 1) = a3;
      v16[2] = v26 + 1;
      sub_1B7AE910C(&v37, &v16[5 * v26 + 4]);

      MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);

      MEMORY[0x1B8CADCA0](0xD0000000000000B9, 0x80000001B7D58C70);
      sub_1B7AE3B2C(v40, v41, 0);
      sub_1B7AF3FE4(v16);

      ++v8;
      v6 = v33;
      if (v11 == v32)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v28 = v6;
    i = sub_1B7CFF120();
  }

LABEL_23:
  v30(0, v6);
}

void sub_1B7CB9CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *))
{
  sub_1B7AE3F68();
  v36 = *(a1 + 16);
  if (v36)
  {
    v6 = 0;
    v37 = a1 + 32;
    v7 = MEMORY[0x1E69E6158];
    while (1)
    {
      v8 = (v37 + 16 * v6);
      v9 = *v8;
      v10 = v8[1];
      swift_bridgeObjectRetain_n();
      v11 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v13 = v11[2];
      v12 = v11[3];
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v11 = sub_1B7AE3A9C((v12 > 1), v13 + 1, 1, v11);
      }

      v41 = v7;
      v42 = &off_1F2FA8B58;
      *&v40 = v9;
      *(&v40 + 1) = v10;
      v11[2] = v14;
      sub_1B7AE910C(&v40, &v11[5 * v13 + 4]);
      v15 = v11[3];
      v16 = v13 + 2;

      if ((v13 + 2) > (v15 >> 1))
      {
        v11 = sub_1B7AE3A9C((v15 > 1), v16, 1, v11);
      }

      v41 = v7;
      v42 = &off_1F2FA8B58;
      *&v40 = a3;
      *(&v40 + 1) = a4;
      v11[2] = v16;
      sub_1B7AE910C(&v40, &v11[5 * v14 + 4]);
      v17 = *(sub_1B7AE3B2C(0xD00000000000007DLL, 0x80000001B7D58B70, 0) + 2);
      v18 = sqlite3_db_handle(v17);
      if (!v18)
      {
        sub_1B7C95194();
        v21 = swift_allocError();
        *v22 = 0u;
        *(v22 + 16) = 0u;
        *(v22 + 32) = 0u;
        *(v22 + 48) = 0;
        *(v22 + 56) = 4;
LABEL_16:
        swift_willThrow();
        v31 = v21;

        type metadata accessor for SQLConnectionError(0);
        sub_1B7C14C5C();
        v32 = swift_allocError();
        *v33 = 0xD00000000000007DLL;
        v33[1] = 0x80000001B7D58B70;
        v33[2] = v31;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v34 = v32;
        a5(v32);

        return;
      }

      v19 = v18;
      sub_1B7AEA57C(v11);
      do
      {
        v20 = sqlite3_step(v17);
      }

      while (v20 == 100);
      if (v20 != 101)
      {
        break;
      }

      ++v6;
      sqlite3_reset(v17);

      if (v6 == v36)
      {
        goto LABEL_12;
      }
    }

    sub_1B7C95194();
    v21 = swift_allocError();
    v24 = v23;
    if (sqlite3_errmsg(v19))
    {
      v25 = sub_1B7CFEB70();
      v27 = v26;
      v28 = sqlite3_extended_errcode(v19);
      sub_1B7C951E8();
      v29 = swift_allocError();
      *v30 = v28;
      v30[1] = v25;
      v30[2] = v27;
      *v24 = v29;
      *(v24 + 56) = 3;
      goto LABEL_16;
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    a5(0);
  }
}

uint64_t sub_1B7CBA210(unint64_t a1, void (*a2)(void))
{
  sub_1B7AE3F68();
  v28 = a2;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7CFF120())
  {
    v5 = 0;
    v32 = a1 & 0xC000000000000001;
    v31 = a1;
    v29 = a1 & 0xFFFFFFFFFFFFFF8;
    v30 = i;
    while (1)
    {
      if (v32)
      {
        v6 = MEMORY[0x1B8CAE380](v5, a1);
      }

      else
      {
        if (v5 >= *(v29 + 16))
        {
          goto LABEL_21;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v36 = 0xD000000000000043;
      v37 = 0x80000001B7D58A60;
      v9 = [v6 guid];
      v10 = sub_1B7CFEA60();
      v12 = v11;

      v13 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v15 = v13[2];
      v14 = v13[3];
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1B7AE3A9C((v14 > 1), v15 + 1, 1, v13);
      }

      v34 = MEMORY[0x1E69E6158];
      v35 = &off_1F2FA8B58;
      *&v33 = v10;
      *(&v33 + 1) = v12;
      v13[2] = v15 + 1;
      sub_1B7AE910C(&v33, &v13[5 * v15 + 4]);

      v36 = 0xD000000000000048;
      v37 = 0x80000001B7D58AB0;
      v16 = [v7 ckRecordID];
      if (v16)
      {
        v17 = v16;
        v18 = sub_1B7CFEA60();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      v21 = v13[2];
      v22 = v13[3];

      if (v21 >= v22 >> 1)
      {
        v13 = sub_1B7AE3A9C((v22 > 1), v21 + 1, 1, v13);
      }

      v34 = sub_1B7C107FC(&qword_1EBA51FB0, &unk_1B7D0FA00);
      v35 = sub_1B7C1547C();
      *&v33 = v18;
      *(&v33 + 1) = v20;
      v13[2] = v21 + 1;
      sub_1B7AE910C(&v33, &v13[5 * v21 + 4]);

      MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
      swift_bridgeObjectRelease_n();
      MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
      v23 = [v7 rawDate];
      v25 = v13[2];
      v24 = v13[3];
      if (v25 >= v24 >> 1)
      {
        v26 = v23;
        v13 = sub_1B7AE3A9C((v24 > 1), v25 + 1, 1, v13);
        v23 = v26;
      }

      v35 = &off_1F2FA8A78;
      v34 = MEMORY[0x1E69E7360];
      *&v33 = v23;
      v13[2] = v25 + 1;
      sub_1B7AE910C(&v33, &v13[5 * v25 + 4]);
      MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
      MEMORY[0x1B8CADCA0](15145, 0xE200000000000000);
      sub_1B7AE3B2C(v36, v37, 0);
      sub_1B7AF3FE4(v13);

      ++v5;
      a1 = v31;
      if (v8 == v30)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:
  v28(0);
}

uint64_t sub_1B7CBA7D0(uint64_t a1, void (*a2)(char *, char *))
{
  sub_1B7AE3F68();
  v4 = MEMORY[0x1E69E7CC0];
  v25[1] = 0xE000000000000000;
  v26 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1B8CADCA0](0xD00000000000002DLL, 0x80000001B7D589D0);
  v5 = sub_1B7AF5664(a1);
  sub_1B7AF57A0(v5);

  MEMORY[0x1B8CADCA0](0xD000000000000035, 0x80000001B7D58A00);
  v6 = sub_1B7AF5664(a1);
  sub_1B7AF57A0(v6);

  MEMORY[0x1B8CADCA0](0xD000000000000017, 0x80000001B7D58A40);
  v7 = sub_1B7AF5664(a1);
  sub_1B7AF57A0(v7);

  v8 = sub_1B7AE3B2C(0, 0xE000000000000000, 0);
  v25[0] = v4;

  sub_1B7C95168(v26, v8, v25, v8);
  v24 = a2;

  swift_bridgeObjectRelease_n();
  v9 = *(v25[0] + 16);
  if (v9)
  {
    v10 = (v25[0] + 56);
    v11 = MEMORY[0x1E69E7CC0];
    v12 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v16 = *(v10 - 2);
      if (v16)
      {
        v17 = *(v10 - 3);
        v18 = *(v10 - 2);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1B7AF182C(0, *(v11 + 2) + 1, 1, v11);
        }

        v20 = *(v11 + 2);
        v19 = *(v11 + 3);
        v21 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          v14 = sub_1B7AF182C((v19 > 1), v20 + 1, 1, v11);
          v11 = v14;
        }

        else
        {
          v14 = v11;
        }
      }

      else
      {
        v16 = *v10;
        if (!*v10)
        {
          goto LABEL_9;
        }

        v17 = *(v10 - 1);
        v22 = *v10;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1B7AF182C(0, *(v12 + 2) + 1, 1, v12);
        }

        v20 = *(v12 + 2);
        v23 = *(v12 + 3);
        v21 = v20 + 1;
        if (v20 >= v23 >> 1)
        {
          v14 = sub_1B7AF182C((v23 > 1), v20 + 1, 1, v12);
          v12 = v14;
        }

        else
        {
          v14 = v12;
        }
      }

      *(v14 + 2) = v21;
      v15 = &v14[16 * v20];
      *(v15 + 4) = v17;
      *(v15 + 5) = v16;
LABEL_9:
      v10 += 4;
      if (!--v9)
      {
        goto LABEL_4;
      }
    }
  }

  v11 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
LABEL_4:

  v24(v11, v12);
}

void sub_1B7CBACE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B7CFECC0();
  v5 = sub_1B7CFECC0();
  (*(a3 + 16))(a3, v4, v5);
}

uint64_t sub_1B7CBAD6C(uint64_t a1, void *a2, void (*a3)(uint64_t, void))
{
  sub_1B7AE3F68();
  v6 = a2;
  v7 = sub_1B7CBC43C(a1);

  v8 = sub_1B7CBC00C(v7);

  v9 = sub_1B7CBBEE8(v8);

  a3(v9, 0);
}

void sub_1B7CBAFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7AEE088(0, &qword_1EDBE5920, off_1E7CB4FD8);
  v5 = sub_1B7CFECC0();
  if (a2)
  {
    v6 = sub_1B7CFDEB0();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_1B7CBB070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void))
{
  sub_1B7AE3F68();
  v10 = sub_1B7CBB39C(a1, a2, a3, a4);
  v12 = v11;
  v14 = v13;

  v15 = sub_1B7AE3B2C(v10, v12, 0);
  v16 = MEMORY[0x1E69E7CC0];
  v30 = MEMORY[0x1E69E7CC0];

  sub_1B7AF1A7C(v14, v15, &v30, v15);

  swift_bridgeObjectRelease_n();
  v17 = v30;
  v30 = v16;
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = v17 + 40;
    v29 = a5;
    do
    {
      v21 = (v20 + 16 * v19);
      v22 = v19;
      while (1)
      {
        if (v22 >= *(v17 + 16))
        {
          __break(1u);
          return;
        }

        v24 = *(v21 - 1);
        v23 = *v21;

        v25 = sub_1B7CFEA30();
        v26 = IMDChatRecordCopyChatForGUID(v25);

        if (v26)
        {
          break;
        }

LABEL_5:
        ++v22;
        v21 += 2;
        if (v18 == v22)
        {
          a5 = v29;
          goto LABEL_14;
        }
      }

      v27 = [objc_allocWithZone(IMDChatRecord) initWithRecordRef_];

      if (!v27)
      {
        goto LABEL_5;
      }

      MEMORY[0x1B8CADDF0]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v28 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1B7CFED00();
      }

      v19 = v22 + 1;
      sub_1B7CFED40();
      a5 = v29;
      v16 = v30;
      v20 = v17 + 40;
    }

    while (v18 - 1 != v22);
  }

LABEL_14:

  a5(v16, 0);
}

void *sub_1B7CBB39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B7CBB700(a1);
  v32 = v9;
  v33 = v8;
  v34 = v10;
  if (a3)
  {

    v11 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1B7AE3A9C((v12 > 1), v13 + 1, 1, v11);
    }

    v36 = MEMORY[0x1E69E6158];
    v37 = &off_1F2FA8B58;
    *&v35 = a2;
    *(&v35 + 1) = a3;
    v11[2] = v13 + 1;
    sub_1B7AE910C(&v35, &v11[5 * v13 + 4]);
    sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7D0A7B0;
    *(inited + 32) = 0xD00000000000001ALL;
    v15 = inited + 32;
    *(inited + 40) = 0x80000001B7D58790;
    *(inited + 48) = v11;
    v31 = sub_1B7CB5C48(inited);
    v17 = v16;
    v19 = v18;
    swift_setDeallocating();
    sub_1B7C3D308(v15);
  }

  else
  {
    v31 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    v17 = 0xE000000000000000;
  }

  v20 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v22 = v20[2];
  v21 = v20[3];
  if (v22 >= v21 >> 1)
  {
    v20 = sub_1B7AE3A9C((v21 > 1), v22 + 1, 1, v20);
  }

  v36 = MEMORY[0x1E69E7360];
  v37 = &off_1F2FA8A78;
  *&v35 = a4;
  v20[2] = v22 + 1;
  sub_1B7AE910C(&v35, &v20[5 * v22 + 4]);
  v23 = *(a1 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  v25 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v27 = v25[2];
  v26 = v25[3];
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1B7AE3A9C((v26 > 1), v27 + 1, 1, v25);
  }

  v36 = MEMORY[0x1E69E6530];
  v37 = &off_1F2FA89F8;
  *&v35 = v23;
  v25[2] = v27 + 1;
  sub_1B7AE910C(&v35, &v25[5 * v27 + 4]);
  sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_1B7D126F0;
  *(v28 + 32) = 0xD00000000000002ELL;
  *(v28 + 40) = 0x80000001B7D586E0;
  *(v28 + 48) = v24;
  *(v28 + 56) = v33;
  *(v28 + 64) = v32;
  *(v28 + 72) = v34;
  *(v28 + 80) = 10528;
  *(v28 + 88) = 0xE200000000000000;
  *(v28 + 96) = v24;
  *(v28 + 104) = v31;
  *(v28 + 112) = v17;
  *(v28 + 120) = v19;
  *(v28 + 128) = 0xD000000000000012;
  *(v28 + 136) = 0x80000001B7D58710;
  *(v28 + 144) = v20;
  *(v28 + 152) = 0xD00000000000005BLL;
  *(v28 + 160) = 0x80000001B7D58730;
  *(v28 + 168) = v25;
  *(v28 + 176) = 2107680;
  *(v28 + 184) = 0xE300000000000000;
  *(v28 + 192) = v24;
  v29 = sub_1B7CB5C48(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v29;
}

uint64_t sub_1B7CBB700(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  v39 = *(a1 + 16);
  if (v39)
  {
    v2 = 0;
    v38 = a1 + 32;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v40 = v3;
      v41 = v2;
      v4 = *(v38 + 8 * v2);
      v47 = 0;
      v48 = 0xE000000000000000;
      v46 = v1;

      MEMORY[0x1B8CADCA0](0xD000000000000067, 0x80000001B7D587B0);
      v5 = *(v4 + 16);
      if (v5)
      {
        v45 = v1;
        sub_1B7AF5760(0, v5, 0);
        v6 = v45;
        v7 = (v4 + 40);
        do
        {
          v9 = *(v7 - 1);
          v8 = *v7;
          v45 = v6;
          v11 = v6[2];
          v10 = v6[3];

          if (v11 >= v10 >> 1)
          {
            sub_1B7AF5760((v10 > 1), v11 + 1, 1);
            v6 = v45;
          }

          v43 = MEMORY[0x1E69E6158];
          v44 = &off_1F2FA8B58;
          *&v42 = v9;
          *(&v42 + 1) = v8;
          v6[2] = v11 + 1;
          sub_1B7AE910C(&v42, &v6[5 * v11 + 4]);
          v7 += 2;
          --v5;
        }

        while (v5);

        v1 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v6 = v1;
      }

      sub_1B7AF3098(v12);
      *&v42 = 2107424;
      *(&v42 + 1) = 0xE300000000000000;
      v45 = sub_1B7AF7F10(0x3F, 0xE100000000000000, v6[2]);
      sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
      sub_1B7C81070(&qword_1EDBE3020, &unk_1EBA525A0, "D\r\b");
      v13 = sub_1B7CFEA10();
      v15 = v14;

      MEMORY[0x1B8CADCA0](v13, v15);

      MEMORY[0x1B8CADCA0](2107680, 0xE300000000000000);
      MEMORY[0x1B8CADCA0](v42, *(&v42 + 1));

      MEMORY[0x1B8CADCA0](10506, 0xE200000000000000);
      v16 = v47;
      v17 = v48;
      v18 = v46;
      sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B7D0A7B0;
      *(inited + 32) = v16;
      v20 = inited + 32;
      *(inited + 40) = v17;
      *(inited + 48) = v18;
      v21 = sub_1B7C81328(inited);
      v23 = v22;
      v25 = v24;
      swift_setDeallocating();
      sub_1B7C3D308(v20);
      v3 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1B7CA23F8(0, *(v40 + 2) + 1, 1, v40);
      }

      v27 = *(v3 + 2);
      v26 = *(v3 + 3);
      if (v27 >= v26 >> 1)
      {
        v3 = sub_1B7CA23F8((v26 > 1), v27 + 1, 1, v3);
      }

      v2 = v41 + 1;
      *(v3 + 2) = v27 + 1;
      v28 = &v3[24 * v27];
      *(v28 + 4) = v21;
      *(v28 + 5) = v23;
      *(v28 + 6) = v25;
    }

    while (v41 + 1 != v39);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v29 = sub_1B7C81328(v3);
  v31 = v30;
  v33 = v32;

  sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_1B7D0A7B0;
  *(v34 + 32) = v29;
  v35 = v34 + 32;
  *(v34 + 40) = v31;
  *(v34 + 48) = v33;
  v36 = sub_1B7C81328(v34);
  swift_setDeallocating();
  sub_1B7C3D308(v35);
  return v36;
}

id sub_1B7CBBC58(id *a1)
{
  v1 = [*a1 canonicalizedURIString];
  if (!v1)
  {
    sub_1B7CFEA60();
    v1 = sub_1B7CFEA30();
  }

  v2 = sub_1B7CFECC0();
  v3 = _IMDCoreSpotlightCNContactForAddressWithAdditionalPropertyKeys(v1, v2);

  v4 = [objc_opt_self() isCNContactAKnownContact_];
  return v4;
}

void sub_1B7CBBE10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1B7CBBEE8(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1B7CFF120();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1B7AEC374(v2, 0);

    v1 = sub_1B7CD9D84(&v5, (v3 + 32), v2, v1);
    sub_1B7AEC4CC();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1B7CBBF98(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B8CADF40](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1B7C5E7E4(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1B7CBC00C(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B7CFF120())
  {
    v4 = sub_1B7AEE088(0, &qword_1EDBE5920, off_1E7CB4FD8);
    v5 = sub_1B7CBC9EC();
    result = MEMORY[0x1B8CADF40](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1B8CAE380](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1B7C5EA6C(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1B7CFF120();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

__CFString *sub_1B7CBC14C(unint64_t a1, uint64_t a2)
{
  v3 = v2;

  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = v7[2];
  v8 = v7[3];
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
LABEL_18:
    v7 = sub_1B7AE3A9C((v8 > 1), v10, 1, v7);
  }

  v19 = MEMORY[0x1E69E6158];
  v20 = &off_1F2FA8B58;
  *&v18 = a1;
  *(&v18 + 1) = a2;
  v7[2] = v10;
  sub_1B7AE910C(&v18, &v7[5 * v9 + 4]);
  v11 = sub_1B7AE3B2C(0xD0000000000000F3, 0x80000001B7D58820, 0);
  if (!v3)
  {
    v12 = v11;
    *&v18 = v6;

    sub_1B7AF1A7C(v7, v12, &v18, v12);
    v21 = 0;

    v7 = v18;
    *&v18 = v6;
    v10 = v7[2];
    if (!v10)
    {
      goto LABEL_15;
    }

    a2 = 0;
    v13 = v7 + 5;
    while (1)
    {
      v9 = &v13[2 * a2];
      a1 = a2;
      while (1)
      {
        v8 = v7[2];
        if (a1 >= v8)
        {
          __break(1u);
          goto LABEL_18;
        }

        v15 = *(v9 - 8);
        v14 = *v9;

        v3 = sub_1B7CFEA30();
        a2 = IMDChatRecordCopyChatForGUID(v3);

        if (a2)
        {
          break;
        }

LABEL_8:
        ++a1;
        v9 += 16;
        if (v10 == a1)
        {
          goto LABEL_15;
        }
      }

      v3 = [objc_allocWithZone(IMDChatRecord) initWithRecordRef_];

      if (!v3)
      {
        goto LABEL_8;
      }

      MEMORY[0x1B8CADDF0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1B7CFED00();
      }

      a2 = a1 + 1;
      sub_1B7CFED40();
      v13 = v7 + 5;
      v6 = v18;
      if (v10 - 1 == a1)
      {
LABEL_15:

        return v6;
      }
    }
  }

  v6 = v3;

  return v6;
}

uint64_t sub_1B7CBC43C(uint64_t a1)
{
  v2 = v1;
  v36 = *(a1 + 16);
  if (!v36)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v35 = a1 + 32;
  while (1)
  {
    v6 = (v35 + 16 * v3);
    v8 = *v6;
    v7 = v6[1];

    v9 = v8;
    v10 = v2;
    v11 = sub_1B7CBC14C(v9, v7);
    if (v2)
    {

      return v4;
    }

    v12 = v11;

    v13 = v12 >> 62;
    v14 = v12 >> 62 ? sub_1B7CFF120() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v4 >> 62;
    if (v4 >> 62)
    {
      v33 = sub_1B7CFF120();
      v17 = v33 + v14;
      if (__OFADD__(v33, v14))
      {
LABEL_35:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = v16 + v14;
      if (__OFADD__(v16, v14))
      {
        goto LABEL_35;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v15)
      {
        goto LABEL_17;
      }

      v18 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v17 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = v14;
        goto LABEL_19;
      }
    }

    else
    {
      if (v15)
      {
LABEL_17:
        sub_1B7CFF120();
        goto LABEL_18;
      }

      v18 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v20 = *(v18 + 16);
LABEL_18:
    v19 = v14;
    result = sub_1B7CFF250();
    v4 = result;
    v18 = result & 0xFFFFFFFFFFFFFF8;
LABEL_19:
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    if (v13)
    {
      break;
    }

    v23 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_3;
    }

LABEL_23:
    if (((v22 >> 1) - v21) < v19)
    {
      goto LABEL_40;
    }

    v39 = v19;
    v37 = v4;
    v25 = v18 + 8 * v21 + 32;
    v34 = v18;
    if (v13)
    {
      if (v23 < 1)
      {
        goto LABEL_42;
      }

      sub_1B7C81070(&qword_1EBA53650, &qword_1EBA53648, &unk_1B7D12700);
      for (i = 0; i != v23; ++i)
      {
        sub_1B7C107FC(&qword_1EBA53648, &unk_1B7D12700);
        v27 = sub_1B7CCCC60(v38, i, v12);
        v29 = *v28;
        (v27)(v38, 0);
        *(v25 + 8 * i) = v29;
      }
    }

    else
    {
      sub_1B7AEE088(0, &qword_1EDBE5920, off_1E7CB4FD8);
      swift_arrayInitWithCopy();
    }

    v4 = v37;
    v2 = v10;
    if (v39 >= 1)
    {
      v30 = *(v34 + 16);
      v31 = __OFADD__(v30, v39);
      v32 = v30 + v39;
      if (v31)
      {
        goto LABEL_41;
      }

      *(v34 + 16) = v32;
    }

LABEL_4:
    if (++v3 == v36)
    {
      return v4;
    }
  }

  v24 = v18;
  result = sub_1B7CFF120();
  v18 = v24;
  v23 = result;
  if (result)
  {
    goto LABEL_23;
  }

LABEL_3:

  if (v19 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1B7CBC774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  v11 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = v11[2];
  v12 = v11[3];
  v14 = v13 + 1;
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1B7AE3A9C((v12 > 1), v13 + 1, 1, v11);
  }

  v15 = MEMORY[0x1E69E6158];
  v24 = MEMORY[0x1E69E6158];
  v25 = &off_1F2FA8B58;
  *&v23 = a1;
  *(&v23 + 1) = a2;
  v11[2] = v14;
  sub_1B7AE910C(&v23, &v11[5 * v13 + 4]);
  v16 = v11[3];
  v17 = v13 + 2;

  if ((v13 + 2) > (v16 >> 1))
  {
    v11 = sub_1B7AE3A9C((v16 > 1), v13 + 2, 1, v11);
  }

  v24 = v15;
  v25 = &off_1F2FA8B58;
  *&v23 = a3;
  *(&v23 + 1) = a4;
  v11[2] = v17;
  sub_1B7AE910C(&v23, &v11[5 * v14 + 4]);
  v18 = v11[3];

  if ((v13 + 3) > (v18 >> 1))
  {
    v11 = sub_1B7AE3A9C((v18 > 1), v13 + 3, 1, v11);
  }

  v24 = v15;
  v25 = &off_1F2FA8B58;
  *&v23 = a6;
  *(&v23 + 1) = a7;
  v11[2] = v13 + 3;
  sub_1B7AE910C(&v23, &v11[5 * v17 + 4]);
  v19 = v26;
  sub_1B7AE3B2C(0xD0000000000000A3, 0x80000001B7D59120, 0);
  if (!v19)
  {
    sub_1B7AF3FE4(v11);
  }
}

unint64_t sub_1B7CBC9EC()
{
  result = qword_1EBA53640;
  if (!qword_1EBA53640)
  {
    sub_1B7AEE088(255, &qword_1EDBE5920, off_1E7CB4FD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53640);
  }

  return result;
}

uint64_t sub_1B7CBCAC8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B7CBCB28()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B7CBCBBC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B7CBCC44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B7CBCCB4()
{
  v1 = *(sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];

  sub_1B7CB6804(v3, v4, v6, v0 + v2, v5);
}

uint64_t static IMDChatQueriesGroupNameAndPhotoHelper.shouldDisplayGroupNameAndPhoto(with:handles:)()
{
  sub_1B7CFE300();
  sub_1B7CBCE40();
  return sub_1B7CFE2F0() & 1;
}

unint64_t sub_1B7CBCE40()
{
  result = qword_1EBA53638;
  if (!qword_1EBA53638)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA53638);
  }

  return result;
}

id IMDChatQueriesGroupNameAndPhotoHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IMDChatQueriesGroupNameAndPhotoHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMDChatQueriesGroupNameAndPhotoHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id IMDChatQueriesGroupNameAndPhotoHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMDChatQueriesGroupNameAndPhotoHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B7CBD01C()
{
  if ((v0[1] & 1) != 0 || (v3 = [objc_opt_self() sharedFeatureFlags], v4 = objc_msgSend(v3, sel_isMissingMessagesEnabled), v3, v4))
  {
    v5 = *v0;
    if (qword_1EDBE3F50 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for ChatLookupRecord();
    sub_1B7CBD928(&qword_1EDBE3F90, type metadata accessor for ChatLookupRecord);
    v7 = sub_1B7CC1208(v6);
    if (v7)
    {
      sub_1B7C2EBBC(v7, 0x797469726F697270, 0xE800000000000000);
      if (v1)
      {
LABEL_7:

        return;
      }

      v2 = 0xD0000000000000E8;

      sub_1B7AE3B2C(0xD00000000000037CLL, 0x80000001B7D592E0, 0);
      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

      sub_1B7AE3B2C(0xD000000000000348, 0x80000001B7D59660, 0);
      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

      sub_1B7AE3B2C(0xD00000000000033ELL, 0x80000001B7D599B0, 0);
      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

      sub_1B7AE3B2C(0xD000000000000372, 0x80000001B7D59CF0, 0);
      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

      sub_1B7AE3B2C(0xD000000000000345, 0x80000001B7D5A070, 0);
      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

      sub_1B7AE3B2C(0xD000000000000357, 0x80000001B7D5A3C0, 0);
      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

      sub_1B7AE3B2C(0xD0000000000000E8, 0x80000001B7D5A720, 0);
      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      __break(1u);
    }

    sub_1B7CD2F6C(1, v2 - 215, 0x80000001B7D53FD0);
    goto LABEL_7;
  }
}

BOOL sub_1B7CBD6D0()
{
  v1 = type metadata accessor for SQLConnectionError(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v15;

  v5 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1B7AE3A9C((v6 > 1), v7 + 1, 1, v5);
  }

  v12 = MEMORY[0x1E69E6158];
  v13 = &off_1F2FA8B58;
  *&v11 = 0xD000000000000011;
  *(&v11 + 1) = 0x80000001B7D53FD0;
  v5[2] = v7 + 1;
  sub_1B7AE910C(&v11, &v5[5 * v7 + 4]);
  sub_1B7AF45D8(0xD000000000000029, 0x80000001B7D51060, v5, 0, &v14);
  if (!v0)
  {

    return v15 < 1;
  }

  *&v11 = v0;
  v8 = v0;
  sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    return v9;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1B7C19DBC(v4);
    goto LABEL_9;
  }

  return 1;
}

uint64_t sub_1B7CBD928(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t initializeBufferWithCopyOfBuffer for MergedChatMigrator.MigrationError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1B7CBD984(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7CBD9CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7CBDA28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB8, type metadata accessor for ChatLookupRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord);
  sub_1B7CFE770();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B7CBDB30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB8, type metadata accessor for ChatLookupRecord);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7CBDC04()
{
  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB8, type metadata accessor for ChatLookupRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord);
  sub_1B7CFE770();

  return v0;
}

uint64_t sub_1B7CBDD00()
{
  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord);
  sub_1B7CFE790();
}

uint64_t sub_1B7CBDDB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB8, type metadata accessor for ChatLookupRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord);
  sub_1B7CBF28C(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  v4 = sub_1B7CFE760();

  *a2 = v4;
  return result;
}

uint64_t sub_1B7CBDEEC()
{
  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB8, type metadata accessor for ChatLookupRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord);
  sub_1B7CBF28C(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  v0 = sub_1B7CFE760();

  return v0;
}

uint64_t sub_1B7CBE024()
{
  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord);
  sub_1B7CBF28C(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7CFE780();
}

uint64_t sub_1B7CBE0FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB8, type metadata accessor for ChatLookupRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord);
  sub_1B7CFE770();

  *a2 = v4;
  return result;
}

uint64_t sub_1B7CBE208(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB8, type metadata accessor for ChatLookupRecord);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7CBE2CC()
{
  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB8, type metadata accessor for ChatLookupRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord);
  sub_1B7CFE770();

  return v0;
}

uint64_t sub_1B7CBE3D0()
{
  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord);
  sub_1B7CFE790();
}

uint64_t *sub_1B7CBE478(__int128 *a1)
{
  type metadata accessor for ChatLookupRecord();
  v1[5] = sub_1B7C107FC(qword_1EBA53678, &unk_1B7D12A60);
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord);
  v1[6] = swift_getOpaqueTypeConformance2();
  sub_1B7C1A14C(v1 + 2);
  sub_1B7CFE720();
  v3 = v1[6];
  sub_1B7AE9124(v1 + 2, v1[5]);
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7CFE1F0();
  swift_beginAccess();
  sub_1B7AE9168(v1 + 2);
  sub_1B7AE910C(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t sub_1B7CBE5F0()
{
  sub_1B7AE9168(v0 + 2);
  v1 = OBJC_IVAR____TtC14IMDPersistence16ChatLookupRecord___observationRegistrar;
  v2 = sub_1B7CFE200();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChatLookupRecord()
{
  result = qword_1EDBE3F80;
  if (!qword_1EDBE3F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7CBE6E8()
{
  result = sub_1B7CFE200();
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

uint64_t sub_1B7CBE7A8()
{
  v0 = *aChatLookup_0;

  return v0;
}

uint64_t sub_1B7CBE7E0(__int128 *a1)
{
  v2 = type metadata accessor for ChatLookupRecord();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_1B7CBE478(a1);
  return v5;
}

void (*sub_1B7CBE824(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1B7AE90A8(v1 + 16, v4);
  return sub_1B7C1E23C;
}

uint64_t sub_1B7CBE8B8()
{
  v1 = *v0;
  sub_1B7CFF7C0();
  type metadata accessor for ChatLookupRecord();
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord);
  sub_1B7CFE750();
  return sub_1B7CFF800();
}

uint64_t sub_1B7CBE944()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1B7CFE750();
}

uint64_t sub_1B7CBE99C()
{
  sub_1B7CFF7C0();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1B7CFE750();
  return sub_1B7CFF800();
}

uint64_t sub_1B7CBEA04()
{
  v1 = *v0;
  type metadata accessor for ChatLookupRecord();
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord);
  return sub_1B7CFE740();
}

uint64_t sub_1B7CBEA80(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1B7CBEC9C(uint64_t a1)
{
  result = sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7CBECF4()
{
  v31 = sub_1B7CFE850();
  v0 = *(v31 - 8);
  v1 = v0;
  v2 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B7CFE7D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C107FC(&qword_1EBA52050, &qword_1B7D0AF40);
  v9 = *(v0 + 72);
  v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B7D127A0;
  swift_getKeyPath();
  v35 = 0u;
  v36 = 0u;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  sub_1B7CFE840();
  swift_getKeyPath();
  v35 = 0u;
  v36 = 0u;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  sub_1B7CFE840();
  swift_getKeyPath();
  v35 = 0u;
  v36 = 0u;
  (*(v5 + 104))(v8, *MEMORY[0x1E697BCD8], v4);
  v12 = sub_1B7CFE800();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = MEMORY[0x1E69E7CC0];
  v16 = sub_1B7CFE810();
  *(&v33 + 1) = v12;
  v34 = sub_1B7CBF28C(qword_1EDBE3A20, MEMORY[0x1E697BCF0]);
  *&v32 = v16;
  sub_1B7CFE840();
  swift_getKeyPath();
  *(&v36 + 1) = MEMORY[0x1E69E6530];
  *&v35 = 0;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  sub_1B7CFE840();
  swift_getKeyPath();
  v35 = 0u;
  v36 = 0u;
  sub_1B7C107FC(&qword_1EBA53668, &unk_1B7D12A48);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B7D0A7B0;
  sub_1B7C107FC(&qword_1EBA52060, &qword_1B7D0AFD0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B7D0AD40;
  *(v18 + 32) = swift_getKeyPath();
  *(v18 + 40) = swift_getKeyPath();
  *(v17 + 32) = v18;
  v19 = v30;
  v20 = sub_1B7C107FC(&qword_1EBA53670, &qword_1B7D12A58);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_1B7CFE890();
  *(&v33 + 1) = v20;
  v34 = sub_1B7CBF1F0();
  *&v32 = v23;
  sub_1B7CFE840();
  v24 = sub_1B7CA2198(0, 1, 1, v15);
  v26 = v24[2];
  v25 = v24[3];
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1B7CA2198(v25 > 1, v26 + 1, 1, v24);
  }

  v24[2] = v26 + 1;
  v27 = v24 + v10 + v26 * v9;
  v28 = v24;
  (*(v1 + 32))(v27, v19, v31);
  *&v32 = v11;
  sub_1B7C50CF0(v28);
  return v32;
}

unint64_t sub_1B7CBF1F0()
{
  result = qword_1EDBE3A18;
  if (!qword_1EDBE3A18)
  {
    sub_1B7C1091C(&qword_1EBA53670, &qword_1B7D12A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBE3A18);
  }

  return result;
}

uint64_t sub_1B7CBF254()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7CBE3D0();
}

uint64_t sub_1B7CBF270()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7CBE024();
}

uint64_t sub_1B7CBF28C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7CBF2D4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B7CBDD00();
}

uint64_t sub_1B7CBF2FC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B7CBDD00();
}

uint64_t sub_1B7CBF324()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  type metadata accessor for RecordEncoder.KeyedRecordEncoder();
  swift_unknownObjectRetain();

  swift_getWitnessTable();
  return sub_1B7CFF530();
}

uint64_t sub_1B7CBF3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(sub_1B7CBF490(a2, a3) + 40);

  v4 = sub_1B7CFF890();
  if (*(v3 + 16))
  {
    v6 = sub_1B7AE11D0(v4, v5);
    v8 = v7;

    if (v8)
    {
      v9 = *(*(v3 + 56) + 8 * v6);

      return v9;
    }
  }

  else
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7CBF490(uint64_t a1, uint64_t a2)
{
  if (qword_1EDBE3AE0 != -1)
  {
    swift_once();
  }

  v3 = off_1EDBE3AE8;

  os_unfair_lock_lock(v3 + 8);
  v4 = sub_1B7AE9FE4(a2, v3 + 2);
  os_unfair_lock_unlock(v3 + 8);

  return v4;
}

uint64_t sub_1B7CBF51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = v5[2];
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  v12 = sub_1B7CBF3C8(a2, *v5, v5[1]);
  v13 = (*(a5 + 16))(a4, a5);
  return IMDRecordSetInteger(v8, v12, v13);
}

void sub_1B7CBF5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = v5[2];
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  v12 = sub_1B7CBF3C8(a2, *v5, v5[1]);
  (*(a5 + 16))(a4, a5);
  v13 = sub_1B7CFF7A0();
  IMDRecordSetObject(v8, v12, v13);
}

void sub_1B7CBF658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = v5[2];
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  v12 = sub_1B7CBF3C8(a2, *v5, v5[1]);
  (*(a5 + 16))(a4, a5);
  v13 = sub_1B7CFEA30();

  IMDRecordSetObject(v8, v12, v13);
}

uint64_t sub_1B7CBF708(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[2];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = sub_1B7CBF3C8(a1, *v2, v2[1]);
  return IMDRecordSetObject(v3, v7, 0);
}

void sub_1B7CBF918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[0] = a1;
  v4[1] = a2;
  sub_1B7CBF658(v4, a3, a4, MEMORY[0x1E69E6158], &off_1F2FA6550);
}

uint64_t sub_1B7CBFC14()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_1B7CBFD94()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7CBFDD0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B7CFE5C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = sub_1B7CFF890();
  v12 = v11;
  (*(v4 + 104))(v7, *MEMORY[0x1E697BB70], v3);
  v13 = sub_1B7CFE5B0();
  v15 = v14;
  (*(v4 + 8))(v7, v3);
  if (v10 == v13 && v12 == v15)
  {
  }

  else
  {
    v17 = sub_1B7CFF590();

    if ((v17 & 1) == 0)
    {
      sub_1B7CBFF6C();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_1B7CBFF6C()
{
  result = qword_1EBA53700;
  if (!qword_1EBA53700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53700);
  }

  return result;
}

unint64_t sub_1B7CBFFD4()
{
  result = qword_1EBA53708;
  if (!qword_1EBA53708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53708);
  }

  return result;
}

uint64_t DatabaseInspectorAttachmentStorageInspectorCrossCheckReport.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t DatabaseInspectorAttachmentStorageInspectorCrossCheckReport.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StorageInspectionFileRecord()
{
  result = qword_1EBA53718;
  if (!qword_1EBA53718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7CC0160(void *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA53740, &qword_1B7D12F08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7CC0DDC();
  sub_1B7CFF830();
  v11 = *v3;
  v12 = *(v3 + 8);
  v19[15] = 0;
  sub_1B7CFF4D0();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v19[14] = 1;
    sub_1B7CFF4E0();
    v15 = *(v3 + 32);
    v19[13] = 2;
    sub_1B7CFF4B0();
    v16 = v3[5];
    v19[12] = 3;
    sub_1B7CFF520();
    v17 = *(type metadata accessor for StorageInspectionFileRecord() + 32);
    v19[11] = 4;
    sub_1B7CFDFF0();
    sub_1B7CC0EF0(&qword_1EBA52AB8, MEMORY[0x1E6968FB0]);
    sub_1B7CFF500();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B7CC03C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1B7CFDFF0();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7C107FC(&qword_1EBA53730, &qword_1B7D12F00);
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for StorageInspectionFileRecord();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v28 = a1;
  sub_1B7AE9124(a1, v16);
  sub_1B7CC0DDC();
  sub_1B7CFF820();
  if (v2)
  {
    return sub_1B7AE9168(v28);
  }

  v23 = v12;
  v19 = v26;
  v18 = v27;
  v33 = 0;
  *v15 = sub_1B7CFF410();
  v15[8] = v20 & 1;
  v32 = 1;
  *(v15 + 2) = sub_1B7CFF420();
  *(v15 + 3) = v21;
  v31 = 2;
  v15[32] = sub_1B7CFF3F0();
  v30 = 3;
  *(v15 + 5) = sub_1B7CFF460();
  v29 = 4;
  sub_1B7CC0EF0(&qword_1EBA52A78, MEMORY[0x1E6968FB0]);
  sub_1B7CFF440();
  (*(v19 + 8))(v11, v18);
  (*(v24 + 32))(&v15[*(v23 + 32)], v7, v4);
  sub_1B7CC0E30(v15, v25);
  sub_1B7AE9168(v28);
  return sub_1B7CC0E94(v15);
}

uint64_t sub_1B7CC0758()
{
  v1 = *v0;
  v2 = 0x4449776F72;
  v3 = 0x6165677275507369;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 7107189;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1752457584;
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

uint64_t sub_1B7CC07EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7CC1050(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7CC0814(uint64_t a1)
{
  v2 = sub_1B7CC0DDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7CC0850(uint64_t a1)
{
  v2 = sub_1B7CC0DDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7CC08BC()
{
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD000000000000023, 0x80000001B7D5A9C0);
  if (v0[1])
  {
    v1 = 0xE300000000000000;
    v2 = 7104878;
  }

  else
  {
    v17 = *v0;
    sub_1B7C2617C();
    v2 = sub_1B7CFF090();
    v1 = v3;
  }

  MEMORY[0x1B8CADCA0](v2, v1);

  MEMORY[0x1B8CADCA0](0x203A68746170202CLL, 0xE800000000000000);
  MEMORY[0x1B8CADCA0](v0[2], v0[3]);
  MEMORY[0x1B8CADCA0](0x677275507369202CLL, 0xEF203A656C626165);
  v4 = *(v0 + 32);
  v5 = 1702195828;
  if ((v4 & 1) == 0)
  {
    v5 = 0x65736C6166;
  }

  v6 = 0xE500000000000000;
  if (v4)
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == 2)
  {
    v7 = 0x6E776F6E6B6E75;
  }

  else
  {
    v7 = v5;
  }

  if (v4 == 2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = v6;
  }

  MEMORY[0x1B8CADCA0](v7, v8);

  MEMORY[0x1B8CADCA0](0x426C61746F74202CLL, 0xEE00203A73657479);
  v9 = v0[5];
  v10 = objc_opt_self();
  v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  v12 = [v10 stringFromHugeNumber_];

  v13 = sub_1B7CFEA60();
  v15 = v14;

  MEMORY[0x1B8CADCA0](v13, v15);

  MEMORY[0x1B8CADCA0](10537, 0xE200000000000000);
  return 0;
}

uint64_t sub_1B7CC0AF0()
{
  sub_1B7CFF7C0();
  if (*(v0 + 8) == 1)
  {
    sub_1B7CFF7E0();
  }

  else
  {
    v1 = *v0;
    sub_1B7CFF7E0();
    MEMORY[0x1B8CAE930](v1);
  }

  return sub_1B7CFF800();
}

uint64_t sub_1B7CC0B60()
{
  if (*(v0 + 8) == 1)
  {
    return sub_1B7CFF7E0();
  }

  v2 = *v0;
  sub_1B7CFF7E0();
  return MEMORY[0x1B8CAE930](v2);
}

uint64_t sub_1B7CC0BB0()
{
  sub_1B7CFF7C0();
  if (*(v0 + 8) == 1)
  {
    sub_1B7CFF7E0();
  }

  else
  {
    v1 = *v0;
    sub_1B7CFF7E0();
    MEMORY[0x1B8CAE930](v1);
  }

  return sub_1B7CFF800();
}

BOOL sub_1B7CC0C1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v2;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    v5 = a1;
    v6 = a2;
    v7 = sub_1B7CFF590();
    a2 = v6;
    v8 = v7;
    a1 = v5;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else
  {
    v2 = 0;
    if (v10 == 2 || ((v10 ^ v9) & 1) != 0)
    {
      return v2;
    }
  }

  return *(a1 + 40) == *(a2 + 40);
}

void sub_1B7CC0D14()
{
  sub_1B7C6715C(319, &qword_1EBA529E0);
  if (v0 <= 0x3F)
  {
    sub_1B7C6715C(319, &qword_1EBA53728);
    if (v1 <= 0x3F)
    {
      sub_1B7CFDFF0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1B7CC0DDC()
{
  result = qword_1EBA53738;
  if (!qword_1EBA53738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53738);
  }

  return result;
}

uint64_t sub_1B7CC0E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageInspectionFileRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7CC0E94(uint64_t a1)
{
  v2 = type metadata accessor for StorageInspectionFileRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7CC0EF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B7CC0F4C()
{
  result = qword_1EBA53748;
  if (!qword_1EBA53748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53748);
  }

  return result;
}

unint64_t sub_1B7CC0FA4()
{
  result = qword_1EBA53750;
  if (!qword_1EBA53750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53750);
  }

  return result;
}

unint64_t sub_1B7CC0FFC()
{
  result = qword_1EBA53758;
  if (!qword_1EBA53758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53758);
  }

  return result;
}

uint64_t sub_1B7CC1050(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B7CFF590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6165677275507369 && a2 == 0xEB00000000656C62 || (sub_1B7CFF590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7D5A9F0 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B7CFF590();

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

uint64_t sub_1B7CC1208(uint64_t a1)
{
  v2 = *(v1 + 40);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_1B7AFEA28(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(v2 + 56) + 8 * v3);
}

uint64_t sub_1B7CC124C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_1B7CC12C0(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = sub_1B7C107FC(&qword_1EBA52030, &unk_1B7D13080);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v41 - v5;
  v7 = sub_1B7C107FC(&qword_1EBA52038, &qword_1B7D0AD18);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - v10;
  v55 = sub_1B7C107FC(&qword_1EBA52040, &qword_1B7D13090);
  v12 = *(v55 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v41 - v14;
  v15 = *(a1 + 16);
  if (v15)
  {
    v47 = v11;
    v48 = v7;
    v57 = MEMORY[0x1E69E7CC0];
    sub_1B7AE8FB4(0, v15, 0);
    v16 = v57;
    v45 = (v8 + 48);
    v46 = "IMDMessageQueryStrings";
    v43 = (v8 + 8);
    v44 = (v8 + 32);
    v41 = v8;
    v42 = (v12 + 8);
    v17 = (a1 + 40);
    v49 = v6;
    while (1)
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      v20 = *(*v17 + 8);
      if (!sub_1B7CFE8A0())
      {
        break;
      }

      v53 = v15;
      v21 = sub_1B7CFE880();
      v51 = v22;
      v52 = v21;
      v23 = (*(v19 + 16))(v18, v19);
      v25 = v24;
      sub_1B7CFE310();
      sub_1B7CFE320();
      v26 = v16;
      v27 = v48;
      if ((*v45)(v6, 1, v48) == 1)
      {
        sub_1B7C1D5F8(v6);
        break;
      }

      v28 = v47;
      (*v44)(v47, v6, v27);
      swift_getKeyPath();
      sub_1B7CFE330();

      if ((v25 & 0x2000000000000000) != 0)
      {
        v29 = HIBYTE(v25) & 0xF;
      }

      else
      {
        v29 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v56[2] == v23 && v56[3] == v25 && v56[0] >> 16 == 0 && v56[1] >> 16 == v29)
      {

        (*v43)(v28, v27);
      }

      else
      {
        v33 = sub_1B7CFF560();

        (*v43)(v28, v27);
        if ((v33 & 1) == 0)
        {
          break;
        }
      }

      (*v42)(v54, v55);

      v16 = v26;
      v57 = v26;
      v35 = *(v26 + 16);
      v34 = *(v26 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1B7AE8FB4((v34 > 1), v35 + 1, 1);
        v16 = v57;
      }

      *(v16 + 16) = v35 + 1;
      v36 = (v16 + 32 * v35);
      v37 = v51;
      v36[4] = v52;
      v36[5] = v37;
      v36[6] = v23;
      v36[7] = v25;
      v17 += 2;
      v15 = v53 - 1;
      v6 = v49;
      if (v53 == 1)
      {
        goto LABEL_26;
      }
    }

    sub_1B7CFF340();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_26:
      sub_1B7C107FC(&qword_1EBA53410, &qword_1B7D11578);
      v38 = sub_1B7CFF380();
    }

    else
    {
      v38 = MEMORY[0x1E69E7CC8];
    }

    v56[0] = v38;

    sub_1B7AEBFC4(v39, 1, v56);

    return v56[0];
  }

  return result;
}

void *sub_1B7CC1854()
{
  v1 = v0;
  v0[2] = 0;
  type metadata accessor for ExportableDatabaseRecordCountReport();
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 344) = MEMORY[0x1E69E7CC0];
  StorageInspectionCountReport.init()();
  v0[3] = v4;
  type metadata accessor for StorageInspectionDatabaseContext();
  v5 = swift_allocObject();
  v5[1] = vdupq_n_s64(0x64uLL);
  v5[2].i64[0] = v3;
  v0[4] = v5;
  type metadata accessor for StorageInspectionFileRecordTable();
  swift_allocObject();
  v6 = sub_1B7C74D3C(0xD000000000000015, 0x80000001B7D54E80, 2);
  v7 = v0[2];
  v0[2] = v6;

  if (qword_1EBA515D8 != -1)
  {
    swift_once();
  }

  v8 = *(qword_1EBA5DAF0 + OBJC_IVAR____TtC14IMDPersistence29StorageInspectorReportManager_report);
  v9 = v0[3];
  v10 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_exportableDatabaseRecordCountReport;
  swift_beginAccess();
  v11 = *&v8[v10];
  *&v8[v10] = v9;
  v12 = v8;

  return v1;
}

uint64_t sub_1B7CC19C0()
{
  v2 = v1;
  v13[7] = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 24);
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = &unk_1F2FA1FA8;

  if (*(v0 + 16))
  {
    v6 = qword_1EBA515F0;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = off_1EBA52D08;
    v8 = objc_autoreleasePoolPush();
    swift_beginAccess();
    IMDSqlOperationBeginTransaction(v7 + 2);
    v13[0] = 0;
    IMDSqlOperationGetError((v7 + 2), v13);
    v9 = v13[0];
    swift_endAccess();
    if (v9)
    {
      swift_willThrow();
      v9;
LABEL_13:
      objc_autoreleasePoolPop(v8);

      goto LABEL_14;
    }

    sub_1B7C740BC();
    if (!v2)
    {
      sub_1B7CDD1FC();
      swift_beginAccess();
      IMDSqlOperationCommitTransaction(v7 + 2);
      v13[0] = 0;
      IMDSqlOperationGetError((v7 + 2), v13);
      v10 = v13[0];
      swift_endAccess();
      if (!v10)
      {
        goto LABEL_13;
      }

      swift_willThrow();
      v2 = v10;
    }

    if (v7[4] && (swift_beginAccess(), IMDSqlOperationRevertTransaction(v7 + 2), v13[0] = 0, IMDSqlOperationGetError((v7 + 2), v13), v11 = v13[0], swift_endAccess(), v11))
    {
      swift_willThrow();
      v11;
    }

    else
    {
      swift_willThrow();
    }

    goto LABEL_13;
  }

LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7CC1BDC()
{
  v2 = v1;
  v3 = v0;
  v4 = 0;
  v26 = *MEMORY[0x1E69E9840];
  while (1)
  {
    if (qword_1EBA515F0 != -1)
    {
      swift_once();
    }

    v5 = off_1EBA52D08;
    v6 = objc_autoreleasePoolPush();
    v7 = sub_1B7CFEA30();
    swift_beginAccess();
    IMDSqlOperationStartQuery(v5 + 2, v7);
    swift_endAccess();

    swift_beginAccess();
    v23 = 0;
    IMDSqlOperationGetError((v5 + 2), &v23);
    v8 = v23;
    swift_endAccess();
    if (v8)
    {
      swift_willThrow();
      v18 = v8;
      goto LABEL_22;
    }

    sub_1B7C8F070(v5, v4, &v24);
    if (v1)
    {
      goto LABEL_15;
    }

    v9 = v24;
    v10 = v25;
    swift_beginAccess();
    IMDSqlOperationFinishQuery((v5 + 2));
    v23 = 0;
    IMDSqlOperationGetError((v5 + 2), &v23);
    v11 = v23;
    swift_endAccess();
    if (v11)
    {
      swift_willThrow();
      v2 = v11;
LABEL_15:
      swift_beginAccess();
      IMDSqlOperationFinishQuery((v5 + 2));
      goto LABEL_19;
    }

    objc_autoreleasePoolPop(v6);
    if (v10)
    {
      goto LABEL_23;
    }

    v4 = v9 + 1;
    if (v9 == -1)
    {
      __break(1u);
LABEL_25:
      __break(1u);
    }

    v12 = v3[3];
    swift_beginAccess();
    v13 = *(v12 + 24);
    v14 = __CFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_25;
    }

    *(v12 + 24) = v15;
    v6 = objc_autoreleasePoolPush();
    swift_beginAccess();
    IMDSqlOperationBeginTransaction(v5 + 2);
    v23 = 0;
    IMDSqlOperationGetError((v5 + 2), &v23);
    v16 = v23;
    swift_endAccess();
    if (v16)
    {
      swift_willThrow();
      v19 = v16;
      goto LABEL_22;
    }

    sub_1B7CC257C(v3, v9);
    swift_beginAccess();
    IMDSqlOperationCommitTransaction(v5 + 2);
    v23 = 0;
    IMDSqlOperationGetError((v5 + 2), &v23);
    v17 = v23;
    swift_endAccess();
    if (v17)
    {
      break;
    }

    objc_autoreleasePoolPop(v6);
  }

  swift_willThrow();
  v2 = v17;
  if (!v5[4])
  {
    goto LABEL_21;
  }

  swift_beginAccess();
  IMDSqlOperationRevertTransaction(v5 + 2);
LABEL_19:
  v23 = 0;
  IMDSqlOperationGetError((v5 + 2), &v23);
  v20 = v23;
  swift_endAccess();
  if (v20)
  {
    swift_willThrow();
    v20;

    goto LABEL_22;
  }

LABEL_21:
  swift_willThrow();
LABEL_22:
  objc_autoreleasePoolPop(v6);
LABEL_23:
  v21 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1B7CC1F40(void *a1@<X8>)
{
  v3 = v1;
  v5 = *v1;
  v6 = sub_1B7CFDFF0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v57 - v21;
  v23 = qword_1EBA5DB00;
  if (qword_1EBA5DB00)
  {
    v62 = v20;
    v63 = v18;
    v64 = v19;
    v66 = v2;
    v24 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_options;
    swift_beginAccess();
    if ((*(v23 + v24) & 8) != 0)
    {
      v25 = v1[2];
      if (v25)
      {
        v58 = a1;
        v26 = qword_1EBA515D8;
        v27 = v25;
        v60 = v23;
        v61 = v27;

        if (v26 != -1)
        {
          swift_once();
        }

        sub_1B7C81520();
        v59 = v28;
        sub_1B7C4F08C(v10);
        sub_1B7CFDF60();
        v29 = v64;
        v30 = *(v64 + 8);
        v31 = v10;
        v32 = v63;
        v30(v31, v63);
        sub_1B7CFDF60();
        v30(v13, v32);
        sub_1B7CFDF70();
        v33 = v16;
        v34 = v29;
        v30(v33, v32);
        v35 = type metadata accessor for StorageInspectorReportFile();
        v36 = *(v35 + 48);
        v37 = *(v35 + 52);
        v38 = swift_allocObject();
        v39 = (v38 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile____lazy_storage___path);
        *v39 = 0;
        v39[1] = 0;
        *(v38 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_fileHandle) = 0;
        v40 = *(v29 + 32);
        v40(v38 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_pathURL, v22, v32);

        v65[0] = 0;
        v41 = v61;

        v42 = v66;
        sub_1B7C96F08(v38, v41, v65, 50);
        v66 = v42;
        if (v42)
        {
          swift_setDeallocating();
          v43 = *sub_1B7C95D64();
          v44 = *(v43 + 48);
          v45 = *(v43 + 52);
          swift_deallocClassInstance();

          return;
        }

        v46 = v3[3];
        (*(v34 + 16))(v62, v38 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_pathURL, v32);
        swift_beginAccess();
        v47 = *(v46 + 344);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v46 + 344) = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v47 = sub_1B7CA1D44(0, v47[2] + 1, 1, v47);
          *(v46 + 344) = v47;
        }

        a1 = v58;
        v50 = v47[2];
        v49 = v47[3];
        v51 = v64;
        if (v50 >= v49 >> 1)
        {
          v56 = sub_1B7CA1D44(v49 > 1, v50 + 1, 1, v47);
          v51 = v64;
          v47 = v56;
        }

        v47[2] = v50 + 1;
        (v40)(v47 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v50);
        *(v46 + 344) = v47;

        swift_setDeallocating();
        v52 = *sub_1B7C95D64();
        v53 = *(v52 + 48);
        v54 = *(v52 + 52);
        swift_deallocClassInstance();
      }
    }
  }

  v55 = v3[3];
  a1[3] = type metadata accessor for ExportableDatabaseRecordCountReport();
  a1[4] = &protocol witness table for StorageInspectionCountReport;
  *a1 = v55;
}

uint64_t sub_1B7CC245C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_1B7CC24EC()
{
  v1 = *v0;
  sub_1B7CC1BDC();
  return 1;
}

uint64_t sub_1B7CC2538()
{
  if (*(*v0 + 16))
  {

    sub_1B7C740BC();
  }

  return result;
}

uint64_t sub_1B7CC257C(void *a1, sqlite3_int64 a2)
{
  v5 = a1[4];
  v6 = a1[2];

  sub_1B7C8F304(a2, v6, v31);

  if (!v2)
  {
    v8 = a1[3];
    v9 = v31[4];
    result = swift_beginAccess();
    v10 = v8[42];
    v11 = v10 + v9;
    if (__CFADD__(v10, v9))
    {
      __break(1u);
    }

    else
    {
      v8[42] = v11;
      if (v11 >= v10)
      {
        v12 = v8[39];
        if (!__CFADD__(v12, v9))
        {
          v8[39] = v12 + v9;
          v13 = v31[0];
          if (!v31[0])
          {
            goto LABEL_18;
          }

          result = swift_beginAccess();
          v14 = v8[5];
          v15 = __CFADD__(v14, v13);
          v16 = v14 + v13;
          if (!v15)
          {
            v8[5] = v16;
            v17 = v31[1];
            result = swift_beginAccess();
            v18 = v8[16];
            v19 = v18 + v17;
            if (!__CFADD__(v18, v17))
            {
              v8[16] = v19;
              if (v19 >= v18)
              {
                v20 = v8[13];
                if (!__CFADD__(v20, v17))
                {
                  v8[13] = v20 + v17;
                  v21 = v31[2];
                  result = swift_beginAccess();
                  v22 = v8[12];
                  v23 = v22 + v21;
                  if (!__CFADD__(v22, v21))
                  {
                    v8[12] = v23;
                    if (v23 >= v22)
                    {
                      v24 = v8[9];
                      if (!__CFADD__(v24, v21))
                      {
                        v8[9] = v24 + v21;
                        v25 = v31[3];
                        v26 = v8 + 17;
                        result = swift_beginAccess();
                        v27 = v8[20];
                        v28 = v27 + v25;
                        if (!__CFADD__(v27, v25))
                        {
                          v8[20] = v28;
                          if (v28 >= v27)
                          {
                            v29 = *v26 + v25;
                            if (!__CFADD__(*v26, v25))
                            {
                              goto LABEL_19;
                            }

                            __break(1u);
LABEL_18:
                            v26 = v8 + 4;
                            result = swift_beginAccess();
                            v30 = v8[4];
                            v15 = __CFADD__(v30, 1);
                            v29 = v30 + 1;
                            if (!v15)
                            {
LABEL_19:
                              *v26 = v29;
                              return result;
                            }

LABEL_33:
                            __break(1u);
                            return result;
                          }

LABEL_32:
                          __break(1u);
                          goto LABEL_33;
                        }

LABEL_31:
                        __break(1u);
                        goto LABEL_32;
                      }

LABEL_30:
                      __break(1u);
                      goto LABEL_31;
                    }

LABEL_29:
                    __break(1u);
                    goto LABEL_30;
                  }

LABEL_28:
                  __break(1u);
                  goto LABEL_29;
                }

LABEL_27:
                __break(1u);
                goto LABEL_28;
              }

LABEL_26:
              __break(1u);
              goto LABEL_27;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1B7CC2774()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

int64x2_t *sub_1B7CC27D0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v2[2].i64[1] = a1;
  v2[3].i64[0] = a2;
  type metadata accessor for StorageInspectionChatVerificationTable();
  swift_allocObject();

  v6 = sub_1B7C73A90(1952540771, 0xE400000000000000, a1, a2, 0);
  v2[3].i64[1] = sub_1B7C74E30(v6, v7, 1952540771, 0xE400000000000000, 0);
  type metadata accessor for StorageInspectionMessageVerificationTable();
  swift_allocObject();
  v8 = sub_1B7C73A90(0x6567617373656DLL, 0xE700000000000000, a1, a2, 0);
  v2[4].i64[0] = sub_1B7C74E30(v8, v9, 0x6567617373656DLL, 0xE700000000000000, 0);
  type metadata accessor for StorageInspectionVerificationTable();
  swift_allocObject();
  v10 = sub_1B7C73A90(0x656C646E6168, 0xE600000000000000, a1, a2, 0);
  v2[4].i64[1] = sub_1B7C74E30(v10, v11, 0x656C646E6168, 0xE600000000000000, 0);
  type metadata accessor for StorageInspectionAttachmentVerificationTable();
  swift_allocObject();
  v12 = sub_1B7C73A90(0x656D686361747461, 0xEA0000000000746ELL, a1, a2, 0);
  v2[5].i64[0] = sub_1B7C74E30(v12, v13, 0x656D686361747461, 0xEA0000000000746ELL, 0);
  type metadata accessor for StorageInspectionJoinVerificationTable();
  *(swift_allocObject() + 64) = &unk_1F2FA1E48;
  v14 = sub_1B7C73A90(0xD000000000000011, 0x80000001B7D4E240, a1, a2, 0);
  v2[5].i64[1] = sub_1B7C74E30(v14, v15, 0xD000000000000011, 0x80000001B7D4E240, 0);
  *(swift_allocObject() + 64) = &unk_1F2FA1E88;
  v16 = sub_1B7C73A90(0xD000000000000010, 0x80000001B7D4E260, a1, a2, 0);
  v2[6].i64[0] = sub_1B7C74E30(v16, v17, 0xD000000000000010, 0x80000001B7D4E260, 0);
  *(swift_allocObject() + 64) = &unk_1F2FA1EC8;
  v18 = sub_1B7C73A90(0xD000000000000017, 0x80000001B7D4E280, a1, a2, 0);
  v2[6].i64[1] = sub_1B7C74E30(v18, v19, 0xD000000000000017, 0x80000001B7D4E280, 0);
  type metadata accessor for StorageInspectionDeletedMessagesVerificationTable();
  swift_allocObject();
  v20 = sub_1B7C73A90(0xD000000000000010, 0x80000001B7D4E2A0, a1, a2, 0);
  v2[7].i64[0] = sub_1B7C74E30(v20, v21, 0xD000000000000010, 0x80000001B7D4E2A0, 0);
  *(swift_allocObject() + 64) = &unk_1F2FA1F08;
  v22 = sub_1B7C73A90(0xD00000000000001DLL, 0x80000001B7D4E2C0, a1, a2, 0);
  v24 = v23;

  v25 = sub_1B7C74E30(v22, v24, 0xD00000000000001DLL, 0x80000001B7D4E2C0, 0);
  v3[7].i64[1] = v25;
  sub_1B7C107FC(&qword_1EBA52060, &qword_1B7D0AFD0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B7D13120;
  v27 = v3[4].i64[0];
  *(v26 + 32) = v3[3].i64[1];
  *(v26 + 40) = v27;
  v28 = v3[5].i64[0];
  *(v26 + 48) = v3[4].i64[1];
  *(v26 + 56) = v28;
  v29 = v3[6].i64[0];
  *(v26 + 64) = v3[5].i64[1];
  *(v26 + 72) = v29;
  v30 = v3[7].i64[0];
  *(v26 + 80) = v3[6].i64[1];
  *(v26 + 88) = v30;
  *(v26 + 96) = v25;
  v3[8].i64[0] = v26;
  v3[1] = vdupq_n_s64(0x64uLL);
  v3[2].i64[0] = MEMORY[0x1E69E7CC0];

  return v3;
}

void sub_1B7CC2C18()
{
  v2 = *(v0 + 128);
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7CFF120())
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1B8CAE380](v4, v2);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_14;
      }

LABEL_7:
      if (qword_1EBA515F0 != -1)
      {
        swift_once();
      }

      sub_1B7CFF210();

      MEMORY[0x1B8CADCA0](*(v5 + 16), *(v5 + 24));
      MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
      SqlOperation.execute(_:_:)(0xD000000000000015, 0x80000001B7D54D80, 0);

      if (!v1)
      {
        ++v4;
        if (v6 != i)
        {
          continue;
        }
      }

      return;
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    v5 = *(v2 + 8 * v4 + 32);

    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void sub_1B7CC2DDC()
{
  v2 = v1;
  v3 = *(v0 + 128);
  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7CFF120())
  {
    v5 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1B8CAE380](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_17;
      }

LABEL_7:
      if (qword_1EBA515F0 != -1)
      {
        swift_once();
      }

      sub_1B7CFF210();

      MEMORY[0x1B8CADCA0](v6[2], v6[3]);
      MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
      SqlOperation.execute(_:_:)(0xD000000000000015, 0x80000001B7D54D80, 0);
      if (v2)
      {

        return;
      }

      v9 = (*(*v6 + 152))(v8);
      (*(*v6 + 160))(v9);
      v2 = 0;

      ++v5;
      if (v7 == i)
      {
        return;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v6 = *(v3 + 8 * v5 + 32);

    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }
}

uint64_t sub_1B7CC3020()
{
  v1 = v0[6];

  v2 = v0[7];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[11];

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[14];

  v10 = v0[15];

  v11 = v0[16];
}

void *sub_1B7CC3098()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[10];

  v7 = v0[11];

  v8 = v0[12];

  v9 = v0[13];

  v10 = v0[14];

  v11 = v0[15];

  v12 = v0[16];

  return v0;
}

uint64_t sub_1B7CC3110()
{
  sub_1B7CC3098();

  return swift_deallocClassInstance();
}

void sub_1B7CC3168()
{
  v1 = v0;
  v2 = sub_1B7CFE420();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7CFE410();

  v7 = sub_1B7CFE400();
  v8 = sub_1B7CFEED0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = v3;
    v10 = v9;
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    v12 = sub_1B7CC3A60();
    v14 = sub_1B7AED1B8(v12, v13, &v19);
    v17 = v2;
    v15 = v14;

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1B7AD5000, v7, v8, "Preparing to run storage inspectors: %s", v10, 0xCu);
    sub_1B7AE9168(v11);
    MEMORY[0x1B8CB0E70](v11, -1, -1);
    MEMORY[0x1B8CB0E70](v10, -1, -1);

    (*(v18 + 8))(v6, v17);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v16 = objc_autoreleasePoolPush();
  sub_1B7CC3BD4(v1, &v19);
  objc_autoreleasePoolPop(v16);
}

uint64_t sub_1B7CC33C4()
{
  v2 = v1;
  v3 = sub_1B7CFE420();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = *(v0 + 16);
  v9 = *(result + 16);
  if (v9)
  {
    v10 = result + 32;
    v35 = "StorageInspectorScheduler";
    v36 = "directoryBatchSize";
    v34 = (v4 + 8);
    v28[1] = result;

    *&v11 = 136315394;
    v29 = v11;
    v30 = v7;
    v31 = v3;
    do
    {
      sub_1B7AE90A8(v10, v38);
      v12 = v39;
      v13 = v40;
      sub_1B7AE9124(v38, v39);
      v14 = v2;
      (*(v13 + 48))(v12, v13);
      if (v2)
      {
        v2 = 0;
        sub_1B7CFE410();
        sub_1B7AE90A8(v38, v37);
        v15 = v14;
        v16 = sub_1B7CFE400();
        v17 = sub_1B7CFEEF0();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v41 = v32;
          *v18 = v29;
          v33 = 0;
          sub_1B7AE9124(v37, v37[3]);
          v20 = sub_1B7C81520();
          v22 = v21;
          sub_1B7AE9168(v37);
          v23 = sub_1B7AED1B8(v20, v22, &v41);
          v3 = v31;

          *(v18 + 4) = v23;
          v2 = v33;
          *(v18 + 12) = 2112;
          v24 = v14;
          v25 = _swift_stdlib_bridgeErrorToNSError();
          *(v18 + 14) = v25;
          *v19 = v25;
          _os_log_impl(&dword_1B7AD5000, v16, v17, "Error cleaning up verifier %s: %@", v18, 0x16u);
          sub_1B7AEE190(v19, &qword_1EBA521E0, &unk_1B7D0CE60);
          MEMORY[0x1B8CB0E70](v19, -1, -1);
          v26 = v32;
          sub_1B7AE9168(v32);
          MEMORY[0x1B8CB0E70](v26, -1, -1);
          v27 = v18;
          v7 = v30;
          MEMORY[0x1B8CB0E70](v27, -1, -1);

          (*v34)(v7, v3);
        }

        else
        {

          (*v34)(v7, v3);
          sub_1B7AE9168(v37);
        }
      }

      else
      {
        v2 = 0;
      }

      sub_1B7AE9168(v38);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_1B7CC3764()
{
  swift_beginAccess();
  sub_1B7CC5114(v0 + 32, v8);
  v2 = v8[3];
  sub_1B7AEE190(v8, &qword_1EBA52988, &unk_1B7D132D0);
  if (!v2)
  {
    swift_beginAccess();
    if (!*(*(v0 + 24) + 16))
    {
      v4 = 1;
      return v4 & 1;
    }

    sub_1B7CC3CEC();
    if (v1)
    {
      return v4 & 1;
    }
  }

  sub_1B7CC5114(v0 + 32, &v6);
  if (v7)
  {
    sub_1B7AE910C(&v6, v8);
    v3 = objc_autoreleasePoolPush();
    sub_1B7CC471C(v0, v8, &v6);
    objc_autoreleasePoolPop(v3);
    sub_1B7AE9168(v8);
    if (!v1)
    {
      v4 = 0;
    }
  }

  else
  {
    sub_1B7AEE190(&v6, &qword_1EBA52988, &unk_1B7D132D0);
    v4 = 0;
  }

  return v4 & 1;
}

void sub_1B7CC38A0(void (*a1)(void *, void))
{
  v3 = objc_autoreleasePoolPush();
  (*(*v1 + 224))();
  swift_beginAccess();
  swift_beginAccess();
  while (1)
  {
    sub_1B7CC5114((v1 + 4), v9);
    v4 = v9[3];
    sub_1B7AEE190(v9, &qword_1EBA52988, &unk_1B7D132D0);
    if (!v4)
    {
      break;
    }

LABEL_6:
    sub_1B7CC5114((v1 + 4), &v7);
    if (v8)
    {
      sub_1B7AE910C(&v7, v9);
      v5 = objc_autoreleasePoolPush();
      sub_1B7CC471C(v1, v9, &v7);
      objc_autoreleasePoolPop(v5);
      sub_1B7AE9168(v9);
    }

    else
    {
      sub_1B7AEE190(&v7, &qword_1EBA52988, &unk_1B7D132D0);
    }
  }

  if (*(v1[3] + 16))
  {
    sub_1B7CC3CEC();
    goto LABEL_6;
  }

  v6 = objc_autoreleasePoolPush();
  sub_1B7CC412C(v1, a1);
  objc_autoreleasePoolPop(v6);
  objc_autoreleasePoolPop(v3);
}

uint64_t sub_1B7CC3A60()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];

    sub_1B7AECEEC(0, v2, 0);
    v3 = v14;
    v4 = v1 + 32;
    do
    {
      sub_1B7AE90A8(v4, v13);
      sub_1B7AE9124(v13, v13[3]);
      v5 = sub_1B7C81520();
      v7 = v6;
      sub_1B7AE9168(v13);
      v14 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1B7AECEEC((v8 > 1), v9 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v9 + 1;
      v10 = v3 + 16 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v7;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v13[0] = v3;
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v11 = sub_1B7CFEA10();

  return v11;
}

uint64_t sub_1B7CC3BD4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v5 = *(a1 + 16);
  v6 = *(v5 + 16);

  if (!v6)
  {
  }

  v8 = 0;
  v9 = v5 + 32;
  while (v8 < *(v5 + 16))
  {
    sub_1B7AE90A8(v9, v12);
    v10 = v13;
    v11 = v14;
    sub_1B7AE9124(v12, v13);
    (*(v11 + 16))(v10, v11);
    if (v2)
    {
      sub_1B7AE9168(v12);

      *a2 = v2;
      return result;
    }

    ++v8;
    result = sub_1B7AE9168(v12);
    v9 += 40;
    if (v6 == v8)
    {
    }
  }

  __break(1u);
  return result;
}

void sub_1B7CC3CEC()
{
  v1 = v0;
  v2 = sub_1B7CFE420();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v7 = *(v0 + 24);
  if (!*(v7 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1B7AE90A8(v7 + 32, v24);
  sub_1B7C90848(0, 1);
  swift_endAccess();
  swift_beginAccess();
  sub_1B7CC5184(v24, v0 + 32);
  swift_endAccess();
  *(v0 + 72) = 0;
  sub_1B7CC5114(v0 + 32, v24);
  v8 = v25;
  if (!v25)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v26;
  v10 = sub_1B7AE9124(v24, v25);
  v11 = *(v8 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v15, v13);
  v16 = *(v9 + 8);
  StorageInspectionLoggable.logger.getter();
  (*(v11 + 8))(v15, v8);
  v17 = sub_1B7CFE400();
  v18 = sub_1B7CFEED0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1B7AD5000, v17, v18, "Beginning inspection...", v19, 2u);
    MEMORY[0x1B8CB0E70](v19, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_1B7AE9168(v24);
  v20 = objc_autoreleasePoolPush();
  sub_1B7CC5114(v1 + 32, v24);
  v21 = v25;
  if (v25)
  {
    v22 = v26;
    sub_1B7AE9124(v24, v25);
    (*(v22 + 24))(v21, v22);
    sub_1B7AE9168(v24);
    objc_autoreleasePoolPop(v20);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1B7CC412C(uint64_t a1, void (*a2)(void *, void))
{
  v5 = sub_1B7CFE420();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a1 + 248))(v22, v8);
  if (v2)
  {
  }

  else
  {
    v11 = sub_1B7AEE190(v22, &qword_1EBA53770, &qword_1B7D132C8);
    (*(*a1 + 256))(v11);
    v22[6] = 0;
    if (qword_1EBA515D8 != -1)
    {
      swift_once();
    }

    v12 = *(qword_1EBA5DAF0 + OBJC_IVAR____TtC14IMDPersistence29StorageInspectorReportManager_report);
    v13 = v12;
    a2(v12, 0);

    sub_1B7CFE410();

    v14 = sub_1B7CFE400();
    v15 = sub_1B7CFEED0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22[0] = v17;
      *v16 = 136315138;
      v18 = sub_1B7CC3A60();
      v20 = sub_1B7AED1B8(v18, v19, v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1B7AD5000, v14, v15, "Finished running all inspectors: %s", v16, 0xCu);
      sub_1B7AE9168(v17);
      MEMORY[0x1B8CB0E70](v17, -1, -1);
      MEMORY[0x1B8CB0E70](v16, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
  }
}

uint64_t sub_1B7CC4438(uint64_t a1, void *a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v10 = sub_1B7CFE420();
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = *(v33 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a1 + 256))(v12);
  if (v4)
  {

    v5 = 0;
  }

  sub_1B7CFE410();
  v15 = a2;

  v16 = sub_1B7CFE400();
  v17 = sub_1B7CFEEF0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31[1] = v5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v31[2] = a4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v32 = a3;
    v23 = v22;
    v35 = v22;
    *v19 = 138412546;
    v24 = a2;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v25;
    *v21 = v25;
    *(v19 + 12) = 2080;
    v26 = sub_1B7CC3A60();
    v28 = sub_1B7AED1B8(v26, v27, &v35);

    *(v19 + 14) = v28;
    _os_log_impl(&dword_1B7AD5000, v16, v17, "Inspection failed with error: %@ for inspectors: %s", v19, 0x16u);
    sub_1B7AEE190(v21, &qword_1EBA521E0, &unk_1B7D0CE60);
    MEMORY[0x1B8CB0E70](v21, -1, -1);
    sub_1B7AE9168(v23);
    v29 = v23;
    a3 = v32;
    MEMORY[0x1B8CB0E70](v29, -1, -1);
    MEMORY[0x1B8CB0E70](v19, -1, -1);
  }

  (*(v33 + 8))(v14, v34);
  return a3(0, a2);
}

uint64_t sub_1B7CC471C(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t))
{
  v7 = sub_1B7CFDFF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B7CFE420();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v62 - v18;
  v20 = *(a1 + 72);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
    goto LABEL_23;
  }

  v79 = a3;
  v72 = v16;
  v73 = v17;
  v69 = v8;
  v70 = v7;
  *(a1 + 72) = v22;
  v23 = a2[4];
  sub_1B7AE9124(a2, a2[3]);
  v24 = *(v23 + 8);
  StorageInspectionLoggable.logger.getter();

  v25 = sub_1B7CFE400();
  v26 = sub_1B7CFEED0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v12;
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = *(a1 + 72);

    _os_log_impl(&dword_1B7AD5000, v25, v26, "Inspecting batch #%ld...", v28, 0xCu);
    v29 = v28;
    v12 = v27;
    MEMORY[0x1B8CB0E70](v29, -1, -1);
  }

  else
  {
  }

  v32 = *(v12 + 8);
  v31 = v12 + 8;
  v30 = v32;
  v32(v19, v11);
  v33 = a2[3];
  v34 = a2[4];
  sub_1B7AE9124(a2, v33);
  result = (*(v34 + 32))(v33, v34);
  if (v3)
  {
    *v79 = v3;
    return result;
  }

  if (result)
  {
    v36 = a2[3];
    v37 = a2[4];
    sub_1B7AE9124(a2, v36);
    (*(v37 + 40))(&v74, v36, v37);
    v79 = v30;
    v65 = 0;
    v68 = v11;
    if (!v75)
    {
      sub_1B7AEE190(&v74, &qword_1EBA53770, &qword_1B7D132C8);
      goto LABEL_18;
    }

    v63 = a1;
    sub_1B7AE910C(&v74, &v76);
    v38 = *(&v77 + 1);
    v39 = v78;
    sub_1B7AE9124(&v76, *(&v77 + 1));
    v64 = StorageInspectionReport.reportLines.getter(v38, v39);
    v41 = *(v64 + 16);
    v42 = v73;
    if (v41)
    {
      v43 = (v64 + 40);
      *&v40 = 136315138;
      v66 = v40;
      v67 = v31;
      do
      {
        v45 = *(v43 - 1);
        v44 = *v43;
        v46 = a2[4];
        sub_1B7AE9124(a2, a2[3]);
        v47 = *(v46 + 8);

        StorageInspectionLoggable.logger.getter();

        v48 = sub_1B7CFE400();
        v49 = sub_1B7CFEED0();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *&v74 = v51;
          *v50 = v66;
          v52 = sub_1B7AED1B8(v45, v44, &v74);

          *(v50 + 4) = v52;
          _os_log_impl(&dword_1B7AD5000, v48, v49, "%s", v50, 0xCu);
          sub_1B7AE9168(v51);
          MEMORY[0x1B8CB0E70](v51, -1, -1);
          v53 = v50;
          v42 = v73;
          MEMORY[0x1B8CB0E70](v53, -1, -1);
        }

        else
        {
        }

        v11 = v68;
        v79(v42, v68);
        v43 += 2;
        --v41;
      }

      while (v41);
    }

    if (qword_1EBA515D8 == -1)
    {
LABEL_16:
      v54 = v71;
      sub_1B7C4F4C8(&v76, a2, v71);
      (*(v69 + 8))(v54, v70);
      sub_1B7AE9168(&v76);
      a1 = v63;
LABEL_18:
      v55 = a2[4];
      sub_1B7AE9124(a2, a2[3]);
      v56 = *(v55 + 8);
      v57 = v72;
      StorageInspectionLoggable.logger.getter();
      v58 = sub_1B7CFE400();
      v59 = sub_1B7CFEED0();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_1B7AD5000, v58, v59, "Finished Inspection.", v60, 2u);
        v61 = v60;
        v11 = v68;
        MEMORY[0x1B8CB0E70](v61, -1, -1);
      }

      v79(v57, v11);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
      swift_beginAccess();
      sub_1B7CC5184(&v76, a1 + 32);
      return swift_endAccess();
    }

LABEL_23:
    swift_once();
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1B7CC4D7C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_1B7AEE190(v0 + 32, &qword_1EBA52988, &unk_1B7D132D0);

  return swift_deallocClassInstance();
}

void sub_1B7CC4DF8(uint64_t a1, uint64_t a2)
{
  v5 = objc_autoreleasePoolPush();
  sub_1B7CC3168();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  aBlock[4] = sub_1B7CC50C8;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7AE14D0;
  aBlock[3] = &unk_1F2F9F9B0;
  v7 = _Block_copy(aBlock);

  IMDPersistencePerformBlock(v7, 0, v8);
  _Block_release(v7);
  objc_autoreleasePoolPop(v5);
}

void sub_1B7CC4F38(uint64_t a1, void (*a2)(void *, void), uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (sub_1B7CC3764())
  {
    v7 = swift_allocObject();
    v7[2] = a1;
    v7[3] = a2;
    v7[4] = a3;
    aBlock[4] = sub_1B7CC5200;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B7AE14D0;
    aBlock[3] = &unk_1F2FA8060;
    v8 = _Block_copy(aBlock);

    IMDPersistencePerformBlock(v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    sub_1B7CC412C(a1, a2);
    objc_autoreleasePoolPop(v10);
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t sub_1B7CC50D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B7CC5114(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA52988, &unk_1B7D132D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7CC5184(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA52988, &unk_1B7D132D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7CC5204()
{
  sub_1B7CFF7C0();
  v1 = *v0;
  v2 = v0[1];
  sub_1B7CFEB10();
  if (v0[2])
  {
    v5 = v0[2];
    sub_1B7CFF7E0();
    sub_1B7CFE960();
    sub_1B7CC7098(&qword_1EBA53458, MEMORY[0x1E697BD38]);
    sub_1B7CFE9C0();
  }

  else
  {
    sub_1B7CFF7E0();
  }

  v3 = *(type metadata accessor for MessageStoreConfiguration(0) + 24);
  sub_1B7CFDFF0();
  sub_1B7CC7098(&qword_1EBA529C0, MEMORY[0x1E6968FB0]);
  sub_1B7CFE9C0();
  return sub_1B7CFF800();
}

uint64_t sub_1B7CC5338(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1B7CC5388(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_1B7CFEB10();
  if (v2[2])
  {
    v8 = v2[2];
    sub_1B7CFF7E0();
    sub_1B7CFE960();
    sub_1B7CC7098(&qword_1EBA53458, MEMORY[0x1E697BD38]);
    sub_1B7CFE9C0();
  }

  else
  {
    sub_1B7CFF7E0();
  }

  v6 = *(a2 + 24);
  sub_1B7CFDFF0();
  sub_1B7CC7098(&qword_1EBA529C0, MEMORY[0x1E6968FB0]);
  return sub_1B7CFE9C0();
}

uint64_t sub_1B7CC54A4(uint64_t a1, uint64_t a2)
{
  sub_1B7CFF7C0();
  v4 = *v2;
  v5 = v2[1];
  sub_1B7CFEB10();
  if (v2[2])
  {
    v8 = v2[2];
    sub_1B7CFF7E0();
    sub_1B7CFE960();
    sub_1B7CC7098(&qword_1EBA53458, MEMORY[0x1E697BD38]);
    sub_1B7CFE9C0();
  }

  else
  {
    sub_1B7CFF7E0();
  }

  v6 = *(a2 + 24);
  sub_1B7CFDFF0();
  sub_1B7CC7098(&qword_1EBA529C0, MEMORY[0x1E6968FB0]);
  sub_1B7CFE9C0();
  return sub_1B7CFF800();
}

uint64_t sub_1B7CC55CC(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v33 = a2;
  v3 = sub_1B7CFE1B0();
  v30 = sub_1B7CFEFF0();
  v4 = *(v30 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v7 = &v27 - v6;
  v8 = sub_1B7CFE710();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v27 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v29 = a2;
  sub_1B7CFE580();
  sub_1B7CFE570();
  sub_1B7CFE700();
  v28 = *(v9 + 8);
  v28(v17, v8);
  v18 = (*(*(v3 - 8) + 48))(v7, 1, v3);
  (*(v4 + 8))(v7, v30);
  if (v18 == 1)
  {
    sub_1B7CFE570();
    v19 = sub_1B7CFE6F0();
    v20 = v28;
    v28(v14, v8);
    v32 = v19;
    sub_1B7CFDD30();
    sub_1B7CFED70();
    swift_getWitnessTable();
    v21 = sub_1B7CFEE60();

    if (v21)
    {
      v22 = v27;
      sub_1B7CFE570();
      sub_1B7CFE6D0();
      v20(v22, v8);
      v23 = MEMORY[0x1E697BB50];
    }

    else
    {
      v23 = MEMORY[0x1E697BB48];
    }
  }

  else
  {
    v23 = MEMORY[0x1E697BB58];
  }

  v24 = sub_1B7CFE540();
  sub_1B7CC7098(&qword_1EBA537D0, MEMORY[0x1E697BB60]);
  swift_allocError();
  (*(*(v24 - 8) + 104))(v25, *v23, v24);
  return swift_willThrow();
}

uint64_t sub_1B7CC59A0(uint64_t a1)
{
  v2 = v1;
  v61 = sub_1B7CFE7C0();
  v4 = *(v61 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v59 = v51 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v51 - v10;
  v12 = sub_1B7CFE6C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = CSDBSharedRecordStore();
  if (!v63)
  {
    sub_1B7CC7344();
    swift_allocError();
    *v35 = 0;
    return swift_willThrow();
  }

  v51[1] = sub_1B7C107FC(&qword_1EBA53520, &qword_1B7D11EE0);
  v51[2] = a1;
  result = sub_1B7CFE5F0();
  v58 = *(result + 16);
  if (v58)
  {
    v18 = 0;
    v52 = (v4 + 8);
    v53 = (v4 + 16);
    v55 = v13 + 16;
    v56 = (v13 + 8);
    v19 = MEMORY[0x1E69E7CC8];
    v54 = v16;
    v57 = result;
    while (1)
    {
      if (v18 >= *(result + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v20 = *(v13 + 16);
      v20(v16, result + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v18, v12);
      v65 = v12;
      v66 = sub_1B7CC7098(&qword_1EBA53500, MEMORY[0x1E697BC08]);
      v21 = sub_1B7C1A14C(v64);
      v20(v21, v16, v12);
      sub_1B7CC5FCC(v64, v63, v11);
      if (v2)
      {
        break;
      }

      ++v18;
      sub_1B7AE9168(v64);
      v62 = 0;
      v22 = v59;
      sub_1B7CFE6B0();
      v23 = v13;
      v24 = v12;
      v25 = v60;
      v26 = v11;
      v27 = v11;
      v28 = v61;
      (*v53)(v60, v26, v61);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64[0] = v19;
      v30 = v25;
      v12 = v24;
      v13 = v23;
      sub_1B7CA61DC(v30, v22, isUniquelyReferenced_nonNull_native);
      v31 = *v52;
      v32 = v22;
      v2 = v62;
      (*v52)(v32, v28);
      v33 = v27;
      v34 = v28;
      v11 = v27;
      v16 = v54;
      v31(v33, v34);
      (*v56)(v16, v12);
      v19 = v64[0];
      result = v57;
      if (v58 == v18)
      {
        goto LABEL_10;
      }
    }

    (*v56)(v16, v12);

LABEL_23:

    return sub_1B7AE9168(v64);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC8];
LABEL_10:
    v62 = v19;

    result = sub_1B7CFE5E0();
    v36 = result;
    v37 = *(result + 16);
    if (v37)
    {
      v38 = 0;
      while (v38 < *(v36 + 16))
      {
        v39 = v36 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v38;
        v65 = v12;
        v66 = sub_1B7CC7098(&qword_1EBA53500, MEMORY[0x1E697BC08]);
        v40 = sub_1B7C1A14C(v64);
        (*(v13 + 16))(v40, v39, v12);
        sub_1B7CC64CC(v64, v63);
        if (v2)
        {
LABEL_21:

          goto LABEL_23;
        }

        ++v38;
        result = sub_1B7AE9168(v64);
        if (v37 == v38)
        {
          goto LABEL_15;
        }
      }

LABEL_25:
      __break(1u);
    }

    else
    {
LABEL_15:

      result = sub_1B7CFE5D0();
      v41 = result;
      v42 = *(result + 16);
      if (!v42)
      {
LABEL_20:

        v46 = *(v67 + 16);
        v47 = *(v67 + 24);

        sub_1B7C24BE0(MEMORY[0x1E69E7CC0]);
        v48 = sub_1B7C107FC(&qword_1EBA53510, &unk_1B7D134C0);
        v49 = *(v48 + 48);
        v50 = *(v48 + 52);
        swift_allocObject();
        return sub_1B7CFE5A0();
      }

      v43 = 0;
      while (v43 < *(v41 + 16))
      {
        v44 = v41 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v43;
        v65 = v12;
        v66 = sub_1B7CC7098(&qword_1EBA53500, MEMORY[0x1E697BC08]);
        v45 = sub_1B7C1A14C(v64);
        (*(v13 + 16))(v45, v44, v12);
        sub_1B7CC69B0(v64, v63);
        if (v2)
        {
          goto LABEL_21;
        }

        ++v43;
        result = sub_1B7AE9168(v64);
        if (v42 == v43)
        {
          goto LABEL_20;
        }
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7CC5FCC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v4 = v3;
  v42 = a3;
  v6 = sub_1B7CFE7C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 32);

  v12 = sub_1B7CFE820();

  v13 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7CFE550();
  v14 = sub_1B7CFE7A0();
  v16 = v15;
  (*(v7 + 8))(v10, v6);
  if (!*(v12 + 16))
  {

    goto LABEL_9;
  }

  v17 = sub_1B7AE11D0(v14, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_9:

    sub_1B7CC7344();
    swift_allocError();
    *v32 = 2;
    return swift_willThrow();
  }

  v20 = *(*(v12 + 56) + 8 * v17);

  if (qword_1EDBE3AE0 != -1)
  {
    swift_once();
  }

  v21 = off_1EDBE3AE8;

  os_unfair_lock_lock(v21 + 8);
  v22 = sub_1B7AE9FE4(v20, v21 + 2);
  os_unfair_lock_unlock(v21 + 8);

  v41[1] = v22;
  v23 = *(v22 + 16);
  result = CSDBRecordCreate();
  if (result)
  {
    v25 = result;
    v26 = type metadata accessor for RecordEncoder();
    v27 = swift_allocObject();
    v28 = MEMORY[0x1E69E7CC0];
    v27[4] = MEMORY[0x1E69E7CC0];

    swift_unknownObjectRetain();
    v27[5] = sub_1B7C249D0(v28);
    v27[2] = v25;
    v27[3] = v20;
    v29 = a1[4];
    sub_1B7AE9124(a1, a1[3]);
    v45[3] = v26;
    v45[4] = sub_1B7CC7098(&qword_1EBA537C8, type metadata accessor for RecordEncoder);
    v45[0] = v27;
    v30 = *(v29 + 16);

    v31 = v44;
    sub_1B7CFE9A0();
    if (v31)
    {

      swift_unknownObjectRelease();
      return sub_1B7AE9168(v45);
    }

    else
    {
      sub_1B7AE9168(v45);
      swift_unknownObjectRetain();
      CSDBRecordStoreAddRecord();
      if (CSDBRecordSaveStore())
      {
        ID = CSDBRecordGetID();
        swift_unknownObjectRelease();
        v34 = *(v4 + 16);
        v35 = *(v4 + 24);

        sub_1B7CFE880();
        v44 = ID;
        v45[0] = ID;
        v36 = v42;
        sub_1B7CFE7B0();

        v38 = OBJC_IVAR____TtC14IMDPersistence12MessageStore_recordIdentifierByPersistentIdentifier;
        swift_beginAccess();
        v39 = *(v4 + v38);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = *(v4 + v38);
        *(v4 + v38) = 0x8000000000000000;
        sub_1B7CA63C0(v44, v36, isUniquelyReferenced_nonNull_native);
        *(v4 + v38) = v46;
        swift_endAccess();

        return swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        sub_1B7CC7344();
        swift_allocError();
        *v37 = 1;
        swift_willThrow();

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7CC64CC(void *a1, void *a2)
{
  v45[2] = a2;
  v4 = sub_1B7CFE7C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v49 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v45 - v9;
  v47 = v2;
  v11 = *(v2 + 32);

  v12 = sub_1B7CFE820();

  v14 = a1[3];
  v13 = a1[4];
  v45[0] = a1;
  sub_1B7AE9124(a1, v14);
  sub_1B7CFE550();
  v15 = sub_1B7CFE7A0();
  v17 = v16;
  v46 = *(v5 + 8);
  v46(v10, v4);
  if (!*(v12 + 16))
  {

    goto LABEL_13;
  }

  v18 = sub_1B7AE11D0(v15, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_13:

    sub_1B7CC7344();
    swift_allocError();
    *v41 = 2;
    return swift_willThrow();
  }

  v21 = *(*(v12 + 56) + 8 * v18);

  if (qword_1EDBE3AE0 != -1)
  {
    swift_once();
  }

  v22 = off_1EDBE3AE8;

  os_unfair_lock_lock(v22 + 8);
  v23 = sub_1B7AE9FE4(v21, v22 + 2);
  os_unfair_lock_unlock(v22 + 8);

  v24 = v49;
  sub_1B7CFE550();
  v25 = OBJC_IVAR____TtC14IMDPersistence12MessageStore_recordIdentifierByPersistentIdentifier;
  v26 = v47;
  swift_beginAccess();
  v27 = *(v26 + v25);
  if (!*(v27 + 16) || (v28 = sub_1B7C40430(v24), (v29 & 1) == 0))
  {
    swift_endAccess();
    v46(v24, v4);
    sub_1B7CC7344();
    swift_allocError();
    v43 = 3;
    goto LABEL_15;
  }

  v30 = *(*(v27 + 56) + 8 * v28);
  swift_endAccess();
  result = (v46)(v24, v4);
  if (v30 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v30 <= 0x7FFFFFFF)
  {
    v32 = *(v23 + 16);
    v33 = CSDBRecordStoreCopyInstanceOfClassWithUID();
    if (v33)
    {
      v34 = v33;
      v35 = type metadata accessor for RecordEncoder();
      v36 = swift_allocObject();
      v37 = MEMORY[0x1E69E7CC0];
      v36[4] = MEMORY[0x1E69E7CC0];

      swift_unknownObjectRetain();
      v36[5] = sub_1B7C249D0(v37);
      v36[2] = v34;
      v36[3] = v21;
      v38 = v45[0][4];
      sub_1B7AE9124(v45[0], v45[0][3]);
      v48[3] = v35;
      v48[4] = sub_1B7CC7098(&qword_1EBA537C8, type metadata accessor for RecordEncoder);
      v48[0] = v36;
      v39 = *(v38 + 16);

      v40 = v45[1];
      sub_1B7CFE9A0();
      if (v40)
      {

        swift_unknownObjectRelease();
        return sub_1B7AE9168(v48);
      }

      sub_1B7AE9168(v48);
      if ((CSDBRecordSaveStore() & 1) == 0)
      {
        sub_1B7CC7344();
        swift_allocError();
        *v44 = 1;
        swift_willThrow();
      }

      swift_unknownObjectRelease();
    }

    sub_1B7CC7344();
    swift_allocError();
    v43 = 5;
LABEL_15:
    *v42 = v43;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7CC69B0(void *a1, uint64_t a2)
{
  v34[2] = a2;
  v4 = sub_1B7CFE7C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v37 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v34 - v9;
  v36 = v2;
  v11 = *(v2 + 32);

  v12 = sub_1B7CFE820();

  v13 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7CFE550();
  v14 = sub_1B7CFE7A0();
  v16 = v15;
  v35 = *(v5 + 8);
  v35(v10, v4);
  if (!*(v12 + 16))
  {

    goto LABEL_12;
  }

  v17 = sub_1B7AE11D0(v14, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_12:

    sub_1B7CC7344();
    swift_allocError();
    *v31 = 2;
    return swift_willThrow();
  }

  v20 = *(*(v12 + 56) + 8 * v17);

  if (qword_1EDBE3AE0 != -1)
  {
    swift_once();
  }

  v21 = off_1EDBE3AE8;

  os_unfair_lock_lock(v21 + 8);
  v34[0] = sub_1B7AE9FE4(v20, v21 + 2);
  os_unfair_lock_unlock(v21 + 8);

  v22 = v37;
  sub_1B7CFE550();
  v23 = OBJC_IVAR____TtC14IMDPersistence12MessageStore_recordIdentifierByPersistentIdentifier;
  v24 = v36;
  swift_beginAccess();
  v25 = *(v24 + v23);
  if (!*(v25 + 16) || (v26 = sub_1B7C40430(v22), (v27 & 1) == 0))
  {
    swift_endAccess();
    v35(v22, v4);
    sub_1B7CC7344();
    swift_allocError();
    *v32 = 4;
    swift_willThrow();
  }

  v28 = *(*(v25 + 56) + 8 * v26);
  swift_endAccess();
  result = (v35)(v22, v4);
  if (v28 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v28 <= 0x7FFFFFFF)
  {
    v30 = *(v34[0] + 16);
    CSDBRecordStoreRemoveRecordOfClassWithUID();
    if (CSDBRecordSaveStore())
    {
    }

    sub_1B7CC7344();
    swift_allocError();
    *v33 = 1;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7CC6D74()
{
  v1 = v0[3];

  v2 = v0[4];

  sub_1B7CC7510(v0 + OBJC_IVAR____TtC14IMDPersistence12MessageStore_configuration);
  v3 = *(v0 + OBJC_IVAR____TtC14IMDPersistence12MessageStore_recordIdentifierByPersistentIdentifier);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B7CC6E20()
{
  result = type metadata accessor for MessageStoreConfiguration(319);
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

void sub_1B7CC6F1C()
{
  sub_1B7CC6FB0();
  if (v0 <= 0x3F)
  {
    sub_1B7CFDFF0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B7CC6FB0()
{
  if (!qword_1EBA53798)
  {
    sub_1B7CFE960();
    v0 = sub_1B7CFEFF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA53798);
    }
  }
}

uint64_t sub_1B7CC7098(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7CC71CC(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC14IMDPersistence12MessageStore_recordIdentifierByPersistentIdentifier;
  *(v5 + v6) = sub_1B7C24E00(MEMORY[0x1E69E7CC0]);
  result = sub_1B7CC74AC(a1, v5 + OBJC_IVAR____TtC14IMDPersistence12MessageStore_configuration);
  v8 = *(a1 + 16);
  if (v8)
  {
    v5[4] = v8;
    v9 = *(type metadata accessor for MessageStoreConfiguration(0) + 24);

    v5[2] = sub_1B7CFDEF0();
    v5[3] = v10;
    IMDEnsureSharedRecordStoreInitialized();
    sub_1B7CC7510(a1);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B7CC7344()
{
  result = qword_1EBA537C0;
  if (!qword_1EBA537C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA537C0);
  }

  return result;
}

uint64_t sub_1B7CC7398(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B7CFF590() & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = a2[2];
  if (a1[2])
  {
    v11 = a1[2];
    if (v5)
    {
      v10 = a2[2];
      sub_1B7CFE960();
      sub_1B7CC7098(qword_1EBA53460, MEMORY[0x1E697BD38]);

      v6 = sub_1B7CFEA20();

      if (v6)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v8 = 0;
    return v8 & 1;
  }

  if (v5)
  {
    goto LABEL_11;
  }

LABEL_9:
  v7 = *(type metadata accessor for MessageStoreConfiguration(0) + 24);
  v8 = sub_1B7CFDFA0();
  return v8 & 1;
}

uint64_t sub_1B7CC74AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageStoreConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7CC7510(uint64_t a1)
{
  v2 = type metadata accessor for MessageStoreConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B7CC7580()
{
  result = qword_1EBA537D8;
  if (!qword_1EBA537D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA537D8);
  }

  return result;
}

void sub_1B7CC75D4()
{
  if (MEMORY[0x1E695A838])
  {
    sub_1B7CFE060();
    sub_1B7CC7998(MEMORY[0x1E69E7CC0]);
    sub_1B7CFEFA0();
  }
}

uint64_t sub_1B7CC7718(void *a1)
{
  v9 = a1;
  v1 = sub_1B7CFE120();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7CFEA60();
  sub_1B7CFEA60();
  sub_1B7CFEA60();
  sub_1B7CFE0F0();
  v6 = v9;
  sub_1B7CC75D4();

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1B7CC7884(void *a1)
{
  sub_1B7CFEA60();
  sub_1B7CFEA60();
  if (MEMORY[0x1E695A838])
  {
    v2 = a1;
    sub_1B7CC7998(MEMORY[0x1E69E7CC0]);
    sub_1B7CFEFA0();
  }
}

unint64_t sub_1B7CC7998(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA537E0, &qword_1B7D13590);
    v3 = sub_1B7CFF380();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7CC7AA8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1B7AE11D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B7C255E0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B7CC7AA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA537E8, &unk_1B7D13598);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1B7CC7B18(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = sub_1B7CFEA30();
  v4 = sub_1B7CFECC0();
  v5 = _IMDCoreSpotlightCNContactForAddressWithAdditionalPropertyKeys(v3, v4);

  v6 = [objc_opt_self() isCNContactAKnownContact_];
  return v6;
}

IMDGroupNameAndPhotoHelper __swiftcall IMDGroupNameAndPhotoHelper.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMDGroupNameAndPhotoHelper()
{
  result = qword_1EBA537F0;
  if (!qword_1EBA537F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA537F0);
  }

  return result;
}

uint64_t sub_1B7CC7D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = v4[1];
  v11 = *(v10 + 16);
  if (!*v4)
  {
    if (v11)
    {
      v13 = 0;
      v18 = (v10 + 40);
      while (1)
      {
        v19 = *(v18 - 1) == a3 && *v18 == a4;
        if (v19 || (sub_1B7CFF590() & 1) != 0)
        {
          break;
        }

        ++v13;
        v18 += 2;
        if (v11 == v13)
        {
          goto LABEL_13;
        }
      }

      if (!a1)
      {
        v17 = 0;
LABEL_29:
        sub_1B7CC9C24(v13, v17);

        sub_1B7CC9DA0(v13);
      }

      goto LABEL_23;
    }

LABEL_13:
    if (a1)
    {
      sub_1B7AECF3C(a3, a4);

      v22 = v4[2];
      v20 = v4 + 2;
      v21 = v22;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v20 = v22;
      if ((result & 1) == 0)
      {
        result = sub_1B7C312A8(0, *(v21 + 16) + 1, 1);
        v21 = *v20;
      }

      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_1B7C312A8((v24 > 1), v25 + 1, 1);
        v21 = *v20;
      }

      *(v21 + 16) = v25 + 1;
      v26 = v21 + 16 * v25;
      *(v26 + 32) = a1;
      *(v26 + 40) = a2;
      *v20 = v21;
    }

    else
    {
    }

    return result;
  }

  v12 = *v4;

  v13 = sub_1B7CCA9A0(a3, a4, v10 + 32, v11, (v9 + 16));
  v15 = v14;
  v17 = v16;

  if (v15)
  {
    goto LABEL_13;
  }

  if (!a1)
  {
    goto LABEL_29;
  }

LABEL_23:
  v27 = v4[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B7CCA014(v27);
    v27 = result;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < v27[2])
  {
    v28 = &v27[2 * v13];
    v29 = v28[5];
    v28[4] = a1;
    v28[5] = a2;

    v4[2] = v27;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7CC7F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v8 + 16);
  if (*v3)
  {
    v10 = *v3;

    v11 = sub_1B7CCA9A0(a2, a3, v8 + 32, v9, (v7 + 16));
    v13 = v12;
    v15 = v14;

    if ((v13 & 1) == 0)
    {

      if (!a1)
      {
        goto LABEL_25;
      }

LABEL_19:
      v22 = v3[2];
      v20 = v3 + 2;
      v21 = v22;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v20 = v22;
      if ((result & 1) == 0)
      {
        result = sub_1B7CCA028(v21);
        v21 = result;
        *v20 = result;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v11 < *(v21 + 16))
      {
        v23 = v21 + 8 * v11;
        v24 = *(v23 + 32);
        *(v23 + 32) = a1;
        swift_unknownObjectRelease();
        return sub_1B7CFF2A0();
      }

      __break(1u);
      return result;
    }
  }

  else if (v9)
  {
    v11 = 0;
    v16 = (v8 + 40);
    while (1)
    {
      v17 = *(v16 - 1) == a2 && *v16 == a3;
      if (v17 || (sub_1B7CFF590() & 1) != 0)
      {
        break;
      }

      ++v11;
      v16 += 2;
      if (v9 == v11)
      {
        goto LABEL_13;
      }
    }

    if (!a1)
    {
      v15 = 0;
LABEL_25:
      sub_1B7CC9C24(v11, v15);

      sub_1B7CC9EB0(v11);
      goto LABEL_26;
    }

    goto LABEL_19;
  }

LABEL_13:
  if (a1)
  {
    sub_1B7AECF3C(a2, a3);

    swift_unknownObjectRetain();
    sub_1B7CFF290();
    v18 = *(v3[2] + 16);
    sub_1B7CFF2D0();
    sub_1B7CFF2E0();
    sub_1B7CFF2A0();
LABEL_26:

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1B7CC8184(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v6 + 16);
  if (!*v2)
  {
    if (v7)
    {
      v9 = 0;
      for (i = (v6 + 40); ; i += 2)
      {
        v15 = *(i - 1) == a1 && *i == a2;
        if (v15 || (sub_1B7CFF590() & 1) != 0)
        {
          break;
        }

        if (v7 == ++v9)
        {
          return 0;
        }
      }

      v13 = 0;
      goto LABEL_14;
    }

    return 0;
  }

  v8 = *v2;

  v9 = sub_1B7CCA9A0(a1, a2, v6 + 32, v7, (v5 + 16));
  v11 = v10;
  v13 = v12;

  if (v11)
  {
    return 0;
  }

LABEL_14:
  sub_1B7CC9C24(v9, v13);

  return sub_1B7CC9DA0(v9);
}

uint64_t sub_1B7CC827C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v6 + 16);
  if (!*v2)
  {
    if (v7)
    {
      v9 = 0;
      for (i = (v6 + 40); ; i += 2)
      {
        v15 = *(i - 1) == a1 && *i == a2;
        if (v15 || (sub_1B7CFF590() & 1) != 0)
        {
          break;
        }

        if (v7 == ++v9)
        {
          return 0;
        }
      }

      v13 = 0;
      goto LABEL_14;
    }

    return 0;
  }

  v8 = *v2;

  v9 = sub_1B7CCA9A0(a1, a2, v6 + 32, v7, (v5 + 16));
  v11 = v10;
  v13 = v12;

  if (v11)
  {
    return 0;
  }

LABEL_14:
  sub_1B7CC9C24(v9, v13);

  return sub_1B7CC9EB0(v9);
}

id sub_1B7CC8370()
{
  result = [objc_allocWithZone(IMDSpotlightActivityPublisher) init];
  qword_1EBA50CB0 = result;
  return result;
}

void __swiftcall IMDSpotlightActivityPublisher.init()(IMDSpotlightActivityPublisher *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1B7CC8490(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = *(a1 + OBJC_IVAR___IMDSpotlightActivityPublisher_monitors);
  swift_getKeyPath();

  os_unfair_lock_lock((v3 + 40));
  sub_1B7CCBDC0((v3 + 16), v10);
  os_unfair_lock_unlock((v3 + 40));

  v4 = sub_1B7CCAF40(v10[1], v10[2]);

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7CFF120())
  {
    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B8CAE380](v6, v4);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      a2(v7);
      swift_unknownObjectRelease();
      ++v6;
      if (v8 == i)
      {
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v7 = *(v4 + 8 * v6 + 32);
    swift_unknownObjectRetain();
    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_1B7CC8620()
{

  swift_getAtKeyPath();

  return v1;
}

void sub_1B7CC8714(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (qword_1EBA50EA8 != -1)
  {
    swift_once();
  }

  v7 = sub_1B7CFE420();
  sub_1B7AD9040(v7, qword_1EBA5DA08);

  v8 = sub_1B7CFE400();
  v9 = sub_1B7CFEEE0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1B7AED1B8(a2, a3, &aBlock);
    _os_log_impl(&dword_1B7AD5000, v8, v9, "Adding activity monitor %s", v10, 0xCu);
    sub_1B7AE9168(v11);
    MEMORY[0x1B8CB0E70](v11, -1, -1);
    MEMORY[0x1B8CB0E70](v10, -1, -1);
  }

  v12 = *&v4[OBJC_IVAR___IMDSpotlightActivityPublisher_monitors];
  MEMORY[0x1EEE9AC00](v13);
  os_unfair_lock_lock(v12 + 10);
  sub_1B7CCBC50();
  os_unfair_lock_unlock(v12 + 10);
  v14 = [objc_opt_self() currentConnection];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 __imdp_persistenceServiceListener];
    if (v16)
    {

      aBlock = 0;
      v22 = 0xE000000000000000;
      sub_1B7CFF210();

      aBlock = 0xD000000000000012;
      v22 = 0x80000001B7D5B0C0;
      MEMORY[0x1B8CADCA0](a2, a3);
      v17 = sub_1B7CFEA30();

      v18 = swift_allocObject();
      v18[2] = v4;
      v18[3] = a2;
      v18[4] = a3;
      v25 = sub_1B7CCBCA8;
      v26 = v18;
      aBlock = MEMORY[0x1E69E9820];
      v22 = 1107296256;
      v23 = sub_1B7AE14D0;
      v24 = &unk_1F2FA8190;
      v19 = _Block_copy(&aBlock);

      v20 = v4;

      [v15 __imdp_registerCleanupHandlerWithID_usingBlock_];
      _Block_release(v19);

      v15 = v17;
    }
  }
}

void sub_1B7CC8AA4(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  if (qword_1EBA50EA8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B7CFE420();
  sub_1B7AD9040(v8, qword_1EBA5DA08);

  v9 = sub_1B7CFE400();
  v10 = sub_1B7CFEEE0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1B7AED1B8(a1, a2, &v24);
    _os_log_impl(&dword_1B7AD5000, v9, v10, "Removing activity monitor %s", v11, 0xCu);
    sub_1B7AE9168(v12);
    MEMORY[0x1B8CB0E70](v12, -1, -1);
    MEMORY[0x1B8CB0E70](v11, -1, -1);
  }

  v13 = *(v4 + OBJC_IVAR___IMDSpotlightActivityPublisher_monitors);
  MEMORY[0x1EEE9AC00](v14);
  os_unfair_lock_lock(v13 + 10);
  sub_1B7CCBBF4(&v24);
  os_unfair_lock_unlock(v13 + 10);
  v15 = v24;
  if ((a3 & 1) == 0)
  {
    v16 = [objc_opt_self() currentConnection];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 __imdp_persistenceServiceListener];
      if (v18)
      {

        v24 = 0;
        v25 = 0xE000000000000000;
        sub_1B7CFF210();

        v24 = 0xD000000000000012;
        v25 = 0x80000001B7D5B0C0;
        MEMORY[0x1B8CADCA0](a1, a2);
        v19 = sub_1B7CFEA30();

        [v17 __imdp_unregisterCleanupHandlerWithID_];

        v17 = v19;
      }
    }
  }

  if ((v15 & 1) == 0)
  {

    v20 = sub_1B7CFE400();
    v21 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1B7AED1B8(a1, a2, &v24);
      _os_log_impl(&dword_1B7AD5000, v20, v21, "Asked to remove activity monitor %s but it was not registered", v22, 0xCu);
      sub_1B7AE9168(v23);
      MEMORY[0x1B8CB0E70](v23, -1, -1);
      MEMORY[0x1B8CB0E70](v22, -1, -1);
    }
  }
}

id IMDSpotlightActivityPublisher.init()()
{
  *&v0[OBJC_IVAR___IMDSpotlightActivityPublisher_queue] = 0;
  v1 = OBJC_IVAR___IMDSpotlightActivityPublisher_monitors;
  v2 = sub_1B7CCB988(MEMORY[0x1E69E7CC0]);
  v4 = v3;
  v6 = v5;
  sub_1B7C107FC(&unk_1EBA53808, &qword_1B7D135A8);
  v7 = swift_allocObject();
  *(v7 + 40) = 0;
  *(v7 + 16) = v2;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  *&v0[v1] = v7;
  v9.receiver = v0;
  v9.super_class = IMDSpotlightActivityPublisher;
  return objc_msgSendSuper2(&v9, sel_init);
}

void sub_1B7CC9008(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1B7CFECC0();
  v8 = sub_1B7CFEA30();
  [a1 searchableItemsDidUpdateWithIdentifiers:v7 forDomainIdentifier:v8 context:a5];
}

void sub_1B7CC91D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1B7CFECC0();
  if (a4)
  {
    v7 = sub_1B7CFEA30();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [a1 searchableItemsDeletedWithIdentifiers:v6 forDomainIdentifier:? context:?];
}

void sub_1B7CC93B0(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    v3 = sub_1B7CFF120();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    goto LABEL_34;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v30 = (v2 & 0xC000000000000001);
  v7 = MEMORY[0x1E69E7CC0];
  v28 = v3;
  v29 = v2;
  do
  {
    if (v30)
    {
      v8 = MEMORY[0x1B8CAE380](v4, v2);
    }

    else
    {
      v8 = *(v2 + 8 * v4 + 32);
    }

    v9 = v8;
    v10 = [v8 domainIdentifier];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1B7CFEA60();
      v14 = v13;

      v15 = [v9 uniqueIdentifier];
      v16 = sub_1B7CFEA60();
      v18 = v17;

      if (v6)
      {
        if (v5 == v12 && v6 == v14 || (sub_1B7CFF590() & 1) != 0 || !*(v7 + 2))
        {
        }

        else
        {
          v19 = sub_1B7CFECC0();
          v20 = sub_1B7CFEA30();
          [v26 searchableItemsDidUpdateWithIdentifiers:v19 forDomainIdentifier:v20 context:a2];

          v7 = MEMORY[0x1E69E7CC0];
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1B7AF182C(0, *(v7 + 2) + 1, 1, v7);
      }

      v22 = *(v7 + 2);
      v21 = *(v7 + 3);
      if (v22 >= v21 >> 1)
      {
        v7 = sub_1B7AF182C((v21 > 1), v22 + 1, 1, v7);
      }

      *(v7 + 2) = v22 + 1;
      v23 = &v7[16 * v22];
      *(v23 + 4) = v16;
      *(v23 + 5) = v18;
      v5 = v12;
      v6 = v14;
      v3 = v28;
      v2 = v29;
    }

    else
    {
    }

    ++v4;
  }

  while (v3 != v4);
  if (*(v7 + 2))
  {
    v24 = sub_1B7CFECC0();
    if (v6)
    {
      v25 = v24;
      v31 = sub_1B7CFEA30();
      [v26 searchableItemsDidUpdateWithIdentifiers:v25 forDomainIdentifier:v31 context:a2];

      return;
    }

LABEL_34:
    __break(1u);
    return;
  }
}

void sub_1B7CC970C(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    v3 = sub_1B7CFF120();
    v2 = a1;
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v28 = v2 & 0xC000000000000001;
    v7 = MEMORY[0x1E69E7CC0];
    v29 = v3;
    v30 = v2;
    do
    {
      if (v28)
      {
        v8 = MEMORY[0x1B8CAE380](v4);
      }

      else
      {
        v8 = *(v2 + 8 * v4 + 32);
      }

      v9 = v8;
      v10 = [v8 proposedIdentifier];
      v11 = sub_1B7CFEA60();
      v13 = v12;

      v14 = [v9 proposedDomain];
      v15 = sub_1B7CFEA60();
      v17 = v16;

      if (v6)
      {
        v18 = v5 == v15 && v6 == v17;
        if (v18 || (sub_1B7CFF590() & 1) != 0 || !*(v7 + 2))
        {
        }

        else
        {
          v19 = sub_1B7CFECC0();
          v20 = sub_1B7CFEA30();
          [v26 searchableItemsDeletedWithIdentifiers:v19 forDomainIdentifier:v20 context:a2];

          v7 = MEMORY[0x1E69E7CC0];
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1B7AF182C(0, *(v7 + 2) + 1, 1, v7);
      }

      v22 = *(v7 + 2);
      v21 = *(v7 + 3);
      if (v22 >= v21 >> 1)
      {
        v7 = sub_1B7AF182C((v21 > 1), v22 + 1, 1, v7);
      }

      ++v4;

      *(v7 + 2) = v22 + 1;
      v23 = &v7[16 * v22];
      *(v23 + 4) = v11;
      *(v23 + 5) = v13;
      v5 = v15;
      v6 = v17;
      v2 = v30;
    }

    while (v29 != v4);
    v24 = sub_1B7CFECC0();
    v31 = sub_1B7CFEA30();
    [v26 searchableItemsDeletedWithIdentifiers:v24 forDomainIdentifier:v31 context:a2];
  }
}

uint64_t sub_1B7CC9A0C(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, id))
{
  sub_1B7AEE088(0, a5, a6);
  v10 = sub_1B7CFECE0();
  v11 = a4;
  v12 = a1;
  a7(v10, v11);
}

uint64_t sub_1B7CC9AA4(uint64_t a1)
{
  v2 = v1;
  v6 = v1[1];
  v4 = v1 + 1;
  v5 = v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if ((result & 1) == 0)
  {
    result = sub_1B7C31320(0, *(v5 + 16) + 1, 1);
    v5 = *v4;
  }

  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (v9 >= v8 >> 1)
  {
    result = sub_1B7C31320((v8 > 1), v9 + 1, 1);
    v5 = *v4;
  }

  *(v5 + 16) = v9 + 1;
  *(v5 + 8 * v9 + 32) = a1;
  v2[1] = v5;
  v10 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    if (MEMORY[0x1B8CAD4E0](*(v10 + 16) & 0x3FLL) > v9)
    {
      v11 = *v2;
      result = swift_isUniquelyReferenced_native();
      v12 = *v2;
      if ((result & 1) == 0)
      {
        if (!v12)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v13 = *v2;
        v14 = sub_1B7CFE3C0();

        *v2 = v14;
        v12 = v14;
      }

      if (v12)
      {
        v15 = *(v12 + 16);
        v16 = *(*v4 + 16) + ~(*(v12 + 24) >> 6);
        return sub_1B7CFE360();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v9 < 0xF)
  {
    return result;
  }

  return sub_1B7CC9F3C(sub_1B7CCA8B0);
}

unint64_t sub_1B7CC9C24(int64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return sub_1B7CC9E28(a1);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= MEMORY[0x1B8CAD4F0]())
  {
LABEL_16:
    v13 = sub_1B7CC9E28(a1);
    sub_1B7CC9F3C(sub_1B7CCA780);
    return v13;
  }

  v8 = *v2;
  result = swift_isUniquelyReferenced_native();
  v10 = *v2;
  if ((result & 1) == 0)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = *v2;
    v12 = sub_1B7CFE3C0();

    *v2 = v12;
    v10 = v12;
  }

  if (v10)
  {

    result = sub_1B7CCA03C(a2, (v10 + 16), v10 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_1B7CCA234(a1, a1 + 1, v4, (v10 + 16));

      return sub_1B7CC9E28(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B7CC9DA0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B7CCA014(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    v9 = v7[5];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1B7CC9E28(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B7CCA000(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1B7CC9EB0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_1B7CCA028(v3);
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    sub_1B7CFF2A0();
    return v8;
  }

  return result;
}

uint64_t sub_1B7CC9F3C(void *(*a1)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v3 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v4 = *(v3 + 24) & 0x3FLL;
  }

  else
  {
    v4 = 0;
  }

  v5 = v1[1];
  v6 = *(v5 + 16);
  if (v4 || v6 >= 0x10)
  {
    v8 = MEMORY[0x1B8CAD510](v6);
    if (v4 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    v7 = sub_1B7CCA6A0(v5, v9, 0, v4, a1);
  }

  else
  {
    v7 = 0;
  }

  *v1 = v7;
  return result;
}

unint64_t sub_1B7CCA03C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v23 = sub_1B7CFE340();
  sub_1B7CFE390();
  if (v23)
  {
    v7 = sub_1B7CFE350();
    while (1)
    {
      result = sub_1B7CFE370();
      if (v10)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_21;
      }

      v12 = *a2;
      v13 = v11 + 16 * result;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      sub_1B7CFF7C0();

      sub_1B7CFEB10();
      v16 = sub_1B7CFF800();

      v17 = 1 << *a2;
      v18 = v17 - 1;
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_22;
      }

      v19 = v18 & v16;
      if (v6 >= v7)
      {
        break;
      }

      if (v19 < v7)
      {
        goto LABEL_14;
      }

LABEL_15:
      v20 = sub_1B7CFE370();
      if ((v21 & 1) == 0)
      {
        v8 = ((v18 & ((v20 - (a2[1] >> 6)) >> 63)) + v20 - (a2[1] >> 6)) ^ v18;
      }

      v6 = a1;
      sub_1B7CFE360();
LABEL_5:
      sub_1B7CFE390();
    }

    if (v19 < v7)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (v6 < v19)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  return sub_1B7CFE360();
}

uint64_t sub_1B7CCA234(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_58;
  }

  if (v5 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if (result < (v9 - v5) / 2)
    {
      result = MEMORY[0x1B8CAD4E0](*a4 & 0x3F);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v9 < v8)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v10 = a3;

        if (v8)
        {
          v11 = 0;
          while (1)
          {
            v12 = (v10 + 32 + 16 * v11);
            v13 = *v12;
            v14 = v12[1];
            v15 = *a4;
            sub_1B7CFF7C0();

            sub_1B7CFEB10();
            result = sub_1B7CFF800();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1B7CFE340())
            {
              while (1)
              {
                v16 = sub_1B7CFE370();
                if ((v17 & 1) == 0 && v16 == v11)
                {
                  break;
                }

                sub_1B7CFE390();
              }
            }

            result = v11 + v5;
            if (__OFADD__(v11, v5))
            {
              goto LABEL_55;
            }

            ++v11;
            sub_1B7CFE380();

            if (v11 == v8)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      sub_1B7CFE340();
      v24 = sub_1B7CFE370();
      if ((v25 & 1) != 0 || v24 >= v8)
      {
LABEL_33:
        result = sub_1B7CFE390();
LABEL_18:
        v18 = a4[1];
        if (__OFSUB__(v18 >> 6, v5))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v19 = 1 << *a4;
        v20 = __OFSUB__(v19, 1);
        v21 = v19 - 1;
        if (v20)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v22 = (v21 & (((v18 >> 6) - v5) >> 63)) + (v18 >> 6) - v5;
        if (v22 < v21)
        {
          v21 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v22 - v21) << 6);
        return result;
      }

      if (!__OFADD__(v24, v5))
      {
        sub_1B7CFE380();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      sub_1B7CFE340();
      v26 = sub_1B7CFE370();
      if ((v27 & 1) == 0 && v26 >= v4)
      {
        v20 = __OFSUB__(v26, v5);
        result = v26 - v5;
        if (v20)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_1B7CFE380();
      }

      return sub_1B7CFE390();
    }

    v4 = a2;
    v23 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = MEMORY[0x1B8CAD4E0](*a4 & 0x3F);
    if (v23 >= result / 3)
    {
      goto LABEL_39;
    }

    if (v9 < v4)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v4 < 0)
    {
LABEL_65:
      __break(1u);
      return result;
    }

    if (v9 != v4)
    {
      do
      {
        v28 = (a3 + 32 + 16 * v4);
        v29 = *v28;
        v30 = v28[1];
        v31 = *a4;
        sub_1B7CFF7C0();

        sub_1B7CFEB10();
        result = sub_1B7CFF800();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_1B7CFE340())
        {
          while (1)
          {
            v32 = sub_1B7CFE370();
            if ((v33 & 1) == 0 && v32 == v4)
            {
              break;
            }

            sub_1B7CFE390();
          }
        }

        sub_1B7CFE380();
      }

      while (++v4 != v9);
    }
  }

  return result;
}

uint64_t sub_1B7CCA6A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v8 = *(a1 + 16);
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = MEMORY[0x1B8CAD510](v8);
  result = 0;
  if (v10 <= v9)
  {
    v10 = v9;
  }

  if (v10 <= a4)
  {
    v10 = a4;
  }

  if (v10 >= 5)
  {
    v12 = MEMORY[0x1B8CAD520](v10, a4);
    sub_1B7CCA728(a1, v12 + 16, v12 + 32, a5);
    return v12;
  }

  return result;
}

uint64_t sub_1B7CCA780(uint64_t result, uint64_t a2, uint64_t *a3)
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
        sub_1B7CFF7C0();

        sub_1B7CFEB10();
        result = sub_1B7CFF800();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v10 = sub_1B7CFE340();

        if (v10)
        {
          while (1)
          {
            sub_1B7CFE390();
          }
        }

        result = sub_1B7CFE380();
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

uint64_t sub_1B7CCA8B0(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = result;
      v6 = 0;
      while (1)
      {
        v7 = *(v5 + 8 * v6);
        v8 = *a3;
        result = sub_1B7CFF7B0();
        if (__OFSUB__(1 << v8, 1))
        {
          break;
        }

        if (sub_1B7CFE340())
        {
          while (1)
          {
            sub_1B7CFE390();
          }
        }

        result = sub_1B7CFE380();
        if (++v6 == a2)
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

uint64_t sub_1B7CCA9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  sub_1B7CFF7C0();
  sub_1B7CFEB10();
  result = sub_1B7CFF800();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1B7CFE340();
    result = sub_1B7CFE370();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (sub_1B7CFF590())
          {
            break;
          }

          sub_1B7CFE390();
          result = sub_1B7CFE370();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

uint64_t sub_1B7CCAAEC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1B7CFF120();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1B7AEC374(v3, 0);
  sub_1B7CCAD78(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1B7CCAB80(uint64_t result, char a2, void (*a3)(void), void *(*a4)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  if (result < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v7 = v4;
  v9 = result;
  v12 = v4[1];
  v10 = v4 + 1;
  v11 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v12;
  if (isUniquelyReferenced_nonNull_native && v9 <= *(v11 + 24) >> 1)
  {
    v14 = *v7;
    if (*v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v11 + 16) > v9)
    {
      v18 = *(v11 + 16);
    }

    a3();
    v11 = *v10;
    v14 = *v7;
    if (*v7)
    {
LABEL_5:
      swift_beginAccess();
      v15 = *(v14 + 16) & 0x3FLL;
      v16 = MEMORY[0x1B8CAD510](v9);
      if (a2)
      {
        v17 = v16;
        if (v15 >= v16)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v20 = v16;
        swift_beginAccess();
        v16 = v20;
        v17 = *(v14 + 24) & 0x3FLL;
        if (v15 >= v16)
        {
          goto LABEL_19;
        }
      }

LABEL_15:
      if (v17 <= v16)
      {
        v19 = v16;
      }

      else
      {
        v19 = v17;
      }

      goto LABEL_29;
    }
  }

  v16 = MEMORY[0x1B8CAD510](v9);
  v15 = 0;
  if (a2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v16 > 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  v21 = *(v11 + 16);
  if (v17 <= v16)
  {
    v22 = v16;
  }

  else
  {
    v22 = v17;
  }

  result = MEMORY[0x1B8CAD510](*(v11 + 16));
  if (result <= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = result;
  }

  if (v23 < v15)
  {
    if (v17 <= v23)
    {
      v19 = v23;
    }

    else
    {
      v19 = v17;
    }

LABEL_29:
    v24 = sub_1B7CCA6A0(v11, v19, 0, v17, a4);

    *v7 = v24;
    return result;
  }

  if (!v14 || (v25 = *v7, result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v26 = *v7;
    if (*v7)
    {
      goto LABEL_34;
    }

LABEL_38:
    if (!v17)
    {
      return result;
    }

    __break(1u);
    goto LABEL_40;
  }

  if (!*v7)
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v27 = *v7;
  v26 = sub_1B7CFE3C0();

  *v7 = v26;
  if (!v26)
  {
    goto LABEL_38;
  }

LABEL_34:
  result = swift_beginAccess();
  if ((*(v26 + 24) & 0x3FLL) != v17)
  {
    *(v26 + 24) = *(v26 + 24) & 0xFFFFFFFFFFFFFFC0 | v17 & 0x3F;
  }

  return result;
}

uint64_t sub_1B7CCAD78(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7CFF120();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1B7CFF120();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7C81070(&qword_1EBA53848, &qword_1EBA53840, &qword_1B7D135E0);
          for (i = 0; i != v6; ++i)
          {
            sub_1B7C107FC(&qword_1EBA53840, &qword_1B7D135E0);
            v9 = sub_1B7CCCCE8(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1B7C107FC(&qword_1EBA53838, &qword_1B7D135D8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7CCAF40(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1B7CFF2C0();
  if (v4)
  {
    v5 = (a2 + 32);
    v6 = *(a1 + 16);

    while (v6)
    {
      v8 = *v5++;
      swift_unknownObjectRetain();
      sub_1B7CFF290();
      v9 = *(v10 + 16);
      sub_1B7CFF2D0();
      sub_1B7CFF2E0();
      result = sub_1B7CFF2A0();
      --v6;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_7:

    return v10;
  }

  return result;
}