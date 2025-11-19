uint64_t sub_232B32DC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_232CEA750() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_232B32E74()
{
  sub_232B33904();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_232B33904()
{
  if (!qword_2814E25E0)
  {
    sub_232CE8D10();
    v0 = sub_232CEA350();
    if (!v1)
    {
      atomic_store(v0, &qword_2814E25E0);
    }
  }
}

void sub_232B3395C()
{
  sub_232B35110();
  sub_232B34F68();
  v5 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult();
  v6 = sub_232B34EF0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_232B34ED4();
  MEMORY[0x28223BE20](v9);
  sub_232B34F20();
  if (v25 && v4 && v3 != v1)
  {
    sub_232B34F08(v10);
    v12 = *(v11 + 72);
    while (1)
    {
      v13 = sub_232B35090();
      sub_232B34E54(v13, v14, v15);
      v16 = sub_232B35128();
      sub_232B34E54(v16, v17, v18);
      v19 = *(v0 + 20);
      sub_232B34F3C();
      if (v22)
      {
        if (!v20 || ((sub_232B2DF50(v21), v25) ? (v25 = v23 == v24) : (v25 = 0), !v25 && (sub_232CEA750() & 1) == 0))
        {
LABEL_24:
          sub_232B34DFC(v2, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult);
          sub_232B35188();
          break;
        }
      }

      else if (v20)
      {
        goto LABEL_24;
      }

      sub_232B34FB8();
      if (v27)
      {
        if (!v26)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_232B34FA4();
        if (v28)
        {
          goto LABEL_24;
        }
      }

      sub_232CE9340();
      sub_232B34EB8();
      sub_232B34348(&qword_27DDC6590, v29);
      v30 = sub_232B34FD0();
      sub_232B34DFC(v2, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult);
      sub_232B35220();
      if (v30)
      {
        sub_232B34F50();
        if (!v25)
        {
          continue;
        }
      }

      break;
    }
  }

  sub_232B35104();
  sub_232B20A00();
}

void sub_232B33B34()
{
  sub_232B35110();
  v6 = sub_232B34F68();
  v7 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(v6);
  v8 = sub_232B34EF0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_232B34ED4();
  MEMORY[0x28223BE20](v11);
  sub_232B34F78();
  v13 = *(v3 + 16);
  if (v13 == *(v0 + 2) && v13 && v3 != v0)
  {
    sub_232B34F08(v12);
    v15 = *(v14 + 72);
    while (1)
    {
      v16 = sub_232B35090();
      sub_232B34E54(v16, v17, v18);
      v19 = sub_232B35128();
      sub_232B34E54(v19, v20, v21);
      sub_232B351C8();
      if (!v22)
      {

        v23 = sub_232C655FC(v0, v5);

        if ((v23 & 1) == 0)
        {
          break;
        }
      }

      sub_232CE9340();
      sub_232B34EB8();
      sub_232B34348(&qword_27DDC6590, v24);
      if ((sub_232B34FD0() & 1) == 0)
      {
        break;
      }

      v0 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity;
      sub_232B34DFC(v1, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);
      sub_232B34DFC(v2, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);
      v4 += v15;
      v3 += v15;
      if (!--v13)
      {
        goto LABEL_11;
      }
    }

    sub_232B34DFC(v1, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);
    sub_232B35188();
  }

LABEL_11:
  sub_232B20A00();
}

void sub_232B33D10()
{
  sub_232B35110();
  v2 = v1;
  v4 = v3;
  v76 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier();
  v5 = sub_232B13F24(v76);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232B20704();
  v75 = v9 - v8;
  v10 = sub_232B124A8(&qword_27DDC6AC0, &unk_232CFBF50);
  sub_232B2D120(v10);
  v12 = *(v11 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v13);
  sub_232B350B8();
  v14 = sub_232B124A8(&qword_27DDC6AC8, qword_232CF6E00);
  sub_232B13F24(v14);
  v16 = *(v15 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v17);
  v19 = &v69 - v18;
  v20 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult();
  v21 = *(*(v20 - 1) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v69 - v26;
  v28 = *(v4 + 16);
  if (v28 != *(v2 + 16) || !v28 || v4 == v2)
  {
LABEL_55:
    sub_232B35104();
    sub_232B20A00();
    return;
  }

  v71 = v14;
  v29 = 0;
  v30 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v69 = v28;
  v70 = v2 + v30;
  v72 = *(v25 + 72);
  v73 = v4 + v30;
  while (1)
  {
    v31 = v72 * v29;
    sub_232B35048();
    sub_232B34E54(v32 + v31, v27, v33);
    if (v29 == v28)
    {
      break;
    }

    v74 = v29;
    sub_232B35048();
    sub_232B34E54(v70 + v31, v23, v34);
    v35 = v20[6];
    v36 = *(v71 + 48);
    sub_232B34D3C(&v27[v35], v19, &qword_27DDC6AC0, &unk_232CFBF50);
    sub_232B34D3C(&v23[v35], &v19[v36], &qword_27DDC6AC0, &unk_232CFBF50);
    v37 = v76;
    sub_232B351B0(v19, 1, v76);
    if (v41)
    {
      sub_232B351B0(&v19[v36], 1, v37);
      if (!v41)
      {
        goto LABEL_52;
      }

      sub_232B13790(v19, &qword_27DDC6AC0, &unk_232CFBF50);
      v38 = v74;
      goto LABEL_22;
    }

    v39 = sub_232B35090();
    sub_232B34D3C(v39, v40, &qword_27DDC6AC0, &unk_232CFBF50);
    sub_232B351B0(&v19[v36], 1, v37);
    if (v41)
    {
      sub_232B34DFC(v0, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
LABEL_52:
      v67 = &qword_27DDC6AC8;
      v68 = qword_232CF6E00;
      goto LABEL_53;
    }

    v42 = v75;
    sub_232B34D9C(&v19[v36], v75, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
    v43 = *v0;
    v44 = *v42;
    if (*(v0 + 8))
    {
      v43 = *v0 != 0;
    }

    if (*(v42 + 8) == 1)
    {
      if (!v44)
      {
        v38 = v74;
        if (v43)
        {
LABEL_49:
          sub_232B34DFC(v42, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
          sub_232B35188();
          v67 = &qword_27DDC6AC0;
          v68 = &unk_232CFBF50;
LABEL_53:
          sub_232B13790(v19, v67, v68);
LABEL_54:
          sub_232B34DFC(v23, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult);
          sub_232B34DFC(v27, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult);
          goto LABEL_55;
        }

        goto LABEL_20;
      }

      v45 = v43 == 1;
    }

    else
    {
      v45 = v43 == v44;
    }

    v38 = v74;
    if (!v45)
    {
      goto LABEL_49;
    }

LABEL_20:
    if (*(v0 + 16) != *(v42 + 16))
    {
      goto LABEL_49;
    }

    v46 = *(v37 + 24);
    sub_232CE9340();
    sub_232B34EB8();
    sub_232B34348(&qword_27DDC6590, v47);
    v48 = sub_232CE9CF0();
    sub_232B34DFC(v42, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
    sub_232B34DFC(v0, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
    sub_232B13790(v19, &qword_27DDC6AC0, &unk_232CFBF50);
    if ((v48 & 1) == 0)
    {
      goto LABEL_54;
    }

LABEL_22:
    v49 = v20[7];
    v50 = *&v23[v49 + 8];
    if (*&v27[v49 + 8])
    {
      if (!v50)
      {
        goto LABEL_54;
      }

      sub_232B2DF50(&v27[v49]);
      v53 = v41 && v51 == v52;
      if (!v53 && (sub_232CEA750() & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (v50)
    {
      goto LABEL_54;
    }

    v54 = v20[8];
    v55 = v27[v54 + 8];
    v56 = v23[v54 + 8];
    if (v55)
    {
      if (!v56)
      {
        goto LABEL_54;
      }
    }

    else
    {
      sub_232B34FA4();
      if (v57)
      {
        goto LABEL_54;
      }
    }

    v58 = *v27;
    v59 = *v23;
    v60 = *(*v27 + 16);
    if (v60 != *(*v23 + 16))
    {
      goto LABEL_54;
    }

    if (v60 && v58 != v59)
    {
      v61 = (v58 + 40);
      v62 = (v59 + 40);
      do
      {
        v63 = *(v61 - 1) == *(v62 - 1) && *v61 == *v62;
        if (!v63 && (sub_232CEA750() & 1) == 0)
        {
          goto LABEL_54;
        }

        v61 += 2;
        v62 += 2;
      }

      while (--v60);
    }

    v64 = v20[5];
    sub_232CE9340();
    sub_232B34EB8();
    sub_232B34348(&qword_27DDC6590, v65);
    v66 = sub_232CE9CF0();
    sub_232B34DFC(v23, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult);
    sub_232B34DFC(v27, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult);
    if (v66)
    {
      v29 = v38 + 1;
      v28 = v69;
      if (v29 != v69)
      {
        continue;
      }
    }

    goto LABEL_55;
  }

  __break(1u);
}

uint64_t sub_232B342F4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return sub_232B351A0();
  }

  if (!v2 || result == a2)
  {
    return sub_232B351A8();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_232B34348(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_232B34390()
{
  sub_232B35110();
  sub_232B34F68();
  v5 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement();
  v6 = sub_232B34EF0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_232B34ED4();
  MEMORY[0x28223BE20](v9);
  sub_232B34F78();
  v11 = *(v2 + 16);
  if (v11 == *(v0 + 16) && v11 && v2 != v0)
  {
    sub_232B34F08(v10);
    v13 = *(v12 + 72);
    while (1)
    {
      v14 = sub_232B35090();
      sub_232B34E54(v14, v15, v16);
      v17 = sub_232B35128();
      sub_232B34E54(v17, v18, v19);
      sub_232B351C8();
      if (!v20)
      {

        v21 = sub_232B4138C(v0, v4);

        if ((v21 & 1) == 0)
        {
          break;
        }
      }

      sub_232CE9340();
      sub_232B34EB8();
      sub_232B34348(&qword_27DDC6590, v22);
      v0 = sub_232B34FD0();
      v4 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement;
      sub_232B34DFC(v1, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement);
      sub_232B35220();
      if (v0)
      {
        v3 += v13;
        v2 += v13;
        if (--v11)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    sub_232B34DFC(v1, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement);
    sub_232B35188();
  }

LABEL_12:
  sub_232B35104();
  sub_232B20A00();
}

uint64_t sub_232B34574(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6AB0, &qword_232CF6DE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B345E4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return sub_232B351A0();
  }

  if (!v2 || result == a2)
  {
    return sub_232B351A8();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_232B34638(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_232CEA610())
  {
    if (a2 >> 62)
    {
      result = sub_232CEA610();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a1 < 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = type metadata accessor for DUDocumentUIElement();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    v13 = a2;
    while (1)
    {
      v14 = v12 - 4;
      v15 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = sub_232B35128();
        v17 = MEMORY[0x2383922C0](v16);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v17 = *(a1 + 8 * v12);
      }

      v18 = v17;
      if (v11)
      {
        v19 = MEMORY[0x2383922C0](v12 - 4, a2);
      }

      else
      {
        if (v14 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v12);
      }

      v20 = v19;
      v21 = sub_232CEA310();

      if (v21)
      {
        ++v12;
        a2 = v13;
        if (v15 != i)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

void sub_232B347F4()
{
  sub_232B35110();
  v5 = sub_232B34F68();
  v6 = type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange(v5);
  v7 = sub_232B34EF0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_232B34ED4();
  MEMORY[0x28223BE20](v10);
  sub_232B34F78();
  v12 = *(v4 + 16);
  if (v12 == *(v1 + 16) && v12 && v4 != v1)
  {
    v13 = 0;
    v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v15 = v4 + v14;
    v16 = v1 + v14;
    v17 = *(v11 + 72);
    v37 = v15;
    while (1)
    {
      sub_232B34E54(v15 + v17 * v13, v3, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange);
      if (v13 == v12)
      {
        break;
      }

      sub_232B34E54(v16 + v17 * v13, v2, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange);
      v18 = *v3;
      v19 = *v2;
      if (*(v2 + 8) == 1)
      {
        switch(v19)
        {
          case 1:
            if (v18 != 1)
            {
              goto LABEL_56;
            }

            goto LABEL_11;
          case 2:
            if (v18 != 2)
            {
              goto LABEL_56;
            }

            goto LABEL_11;
          case 3:
            if (v18 != 3)
            {
              goto LABEL_56;
            }

            goto LABEL_11;
          case 4:
            if (v18 != 4)
            {
              goto LABEL_56;
            }

            goto LABEL_11;
          case 5:
            if (v18 != 5)
            {
              goto LABEL_56;
            }

            goto LABEL_11;
          case 6:
            if (v18 != 6)
            {
              goto LABEL_56;
            }

            goto LABEL_11;
          case 7:
            if (v18 != 7)
            {
              goto LABEL_56;
            }

            goto LABEL_11;
          case 8:
            if (v18 != 8)
            {
              goto LABEL_56;
            }

            goto LABEL_11;
          default:
            if (v18)
            {
              goto LABEL_56;
            }

            goto LABEL_11;
        }
      }

      if (v18 != v19)
      {
LABEL_56:
        sub_232B34DFC(v2, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange);
        sub_232B35188();
        goto LABEL_57;
      }

LABEL_11:
      v20 = v3[2];
      v21 = *(v2 + 16);
      v22 = *(v20 + 16);
      if (v22 != *(v21 + 16))
      {
        goto LABEL_56;
      }

      if (v22)
      {
        v23 = v20 == v21;
      }

      else
      {
        v23 = 1;
      }

      if (!v23)
      {
        v24 = (v20 + 40);
        v25 = (v21 + 40);
        while (v22)
        {
          v26 = *(v24 - 1) == *(v25 - 1) && *v24 == *v25;
          if (!v26 && (sub_232CEA750() & 1) == 0)
          {
            goto LABEL_56;
          }

          v24 += 2;
          v25 += 2;
          if (!--v22)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_59;
      }

LABEL_24:
      v27 = v3[3];
      v28 = *(v2 + 24);
      v29 = *(v27 + 16);
      if (v29 != *(v28 + 16))
      {
        goto LABEL_56;
      }

      if (v29)
      {
        v30 = v27 == v28;
      }

      else
      {
        v30 = 1;
      }

      if (!v30)
      {
        v31 = (v27 + 32);
        v32 = (v28 + 32);
        while (v29)
        {
          if (*v31 != *v32)
          {
            goto LABEL_56;
          }

          ++v31;
          ++v32;
          if (!--v29)
          {
            goto LABEL_33;
          }
        }

LABEL_59:
        __break(1u);
        break;
      }

LABEL_33:
      v33 = v3[4] == *(v2 + 32) && v3[5] == *(v2 + 40);
      if (!v33 && (sub_232CEA750() & 1) == 0)
      {
        goto LABEL_56;
      }

      v34 = *(v0 + 32);
      sub_232CE9340();
      sub_232B34EB8();
      sub_232B34348(&qword_27DDC6590, v35);
      v36 = sub_232CE9CF0();
      sub_232B34DFC(v2, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange);
      sub_232B34DFC(v3, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange);
      if (v36)
      {
        ++v13;
        v15 = v37;
        if (v13 != v12)
        {
          continue;
        }
      }

      goto LABEL_57;
    }

    __break(1u);
  }

  else
  {
LABEL_57:
    sub_232B35104();
    sub_232B20A00();
  }
}

void sub_232B34B54()
{
  sub_232B35110();
  v6 = sub_232B34F68();
  v7 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(v6);
  v8 = sub_232B34EF0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_232B34ED4();
  MEMORY[0x28223BE20](v11);
  sub_232B34F20();
  if (v27 && v5 && v4 != v1)
  {
    sub_232B34F08(v12);
    v14 = *(v13 + 72);
    while (1)
    {
      v15 = sub_232B35090();
      sub_232B34E54(v15, v16, v17);
      v18 = sub_232B35128();
      sub_232B34E54(v18, v19, v20);
      v21 = *(v0 + 20);
      sub_232B34F3C();
      if (v24)
      {
        if (!v22 || ((sub_232B2DF50(v23), v27) ? (v27 = v25 == v26) : (v27 = 0), !v27 && (sub_232CEA750() & 1) == 0))
        {
LABEL_24:
          sub_232B34DFC(v3, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel);
          sub_232B34DFC(v2, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel);
          break;
        }
      }

      else if (v22)
      {
        goto LABEL_24;
      }

      sub_232B34FB8();
      if (v29)
      {
        if (!v28)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_232B34FA4();
        if (v30)
        {
          goto LABEL_24;
        }
      }

      sub_232CE9340();
      sub_232B34EB8();
      sub_232B34348(&qword_27DDC6590, v31);
      v32 = sub_232B34FD0();
      sub_232B34DFC(v3, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel);
      sub_232B34DFC(v2, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel);
      if (v32)
      {
        sub_232B34F50();
        if (!v27)
        {
          continue;
        }
      }

      break;
    }
  }

  sub_232B35104();
  sub_232B20A00();
}

uint64_t sub_232B34D3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_232B124A8(a3, a4);
  sub_232B13F24(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_232B34D9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_232B13F24(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_232B34DFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_232B13F24(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_232B34E54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_232B13F24(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

double sub_232B34FA4()
{
  result = *v1;
  *v0;
  return result;
}

void sub_232B34FB8()
{
  v3 = *(v0 + 24);
  v4 = *(v2 + v3 + 8);
  v5 = *(v1 + v3 + 8);
}

uint64_t sub_232B34FD0()
{

  return sub_232CE9CF0();
}

uint64_t sub_232B34FF0()
{

  return swift_beginAccess();
}

uint64_t sub_232B3509C()
{
  v4 = *(v1 + v0);
  *(v1 + v0) = v2;
}

uint64_t sub_232B350E8()
{
  v4 = *(v0 + v2);
  *(v0 + v2) = v1;
}

uint64_t sub_232B35134()
{
  v4 = v1[1];
  *v1 = v2;
  v1[1] = v0;
}

uint64_t sub_232B35150()
{
  v4 = v2[1];
  *v2 = v0;
  v2[1] = v1;
}

uint64_t sub_232B35188()
{

  return sub_232B34DFC(v1, v0);
}

void sub_232B351C8()
{
  v3 = *(v0 + 20);
  v4 = *(v2 + v3);
  v5 = *(v1 + v3);
}

void sub_232B35214(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_232B35220()
{

  return sub_232B34DFC(v0, v1);
}

id DocumentGradingDocumentFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DocumentGradingDocumentFetcher.init()()
{
  v1 = objc_allocWithZone(type metadata accessor for DUDocumentUpdater());
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding30DocumentGradingDocumentFetcher_documentUpdater] = DUDocumentUpdater.init(client:)(0);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DocumentGradingDocumentFetcher();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_232B352F4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = sub_232CE8C00();
  v2[11] = v4;
  sub_232B27FBC(v4);
  v2[12] = v5;
  v7 = *(v6 + 64) + 15;
  v2[13] = swift_task_alloc();
  v8 = sub_232B124A8(&qword_27DDC6AE0, &unk_232CF6E20);
  v2[14] = v8;
  sub_232B27FBC(v8);
  v2[15] = v9;
  v11 = *(v10 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232B35450, 0, 0);
}

uint64_t sub_232B35450()
{
  if (v0[8])
  {
    v1 = v0[8];
  }

  v2 = *(v0[9] + OBJC_IVAR____TtC21DocumentUnderstanding30DocumentGradingDocumentFetcher_documentUpdater);
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_232B35508;

  return sub_232C6E0C8();
}

uint64_t sub_232B35508(uint64_t a1)
{
  v3 = *(*v2 + 144);
  v4 = *v2;
  v4[19] = a1;

  if (v1)
  {
    v6 = v4[16];
    v5 = v4[17];
    v7 = v4[13];
    v8 = v4[10];

    v9 = v4[1];

    return v9();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_232B35670, 0, 0);
  }
}

void sub_232B35670()
{
  v1 = 0;
  v2 = v0[19];
  v40 = v0[14];
  v41 = v0[15];
  v43 = *(v2 + 16);
  v39 = (v0[12] + 32);
  v42 = MEMORY[0x277D84F90];
  v3 = v2;
  v4 = v2 + 40;
  v38 = v2 + 40;
LABEL_2:
  v5 = (v4 + 16 * v1);
  while (v43 != v1)
  {
    if (v1 >= *(v3 + 16))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 - 1);
    v7 = *v5;
    v8 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_document;
    swift_beginAccess();
    v9 = *(v6 + v8);
    if (v9)
    {
      v11 = v0[10];
      v10 = v0[11];
      v12 = *&v9[OBJC_IVAR____TtC21DocumentUnderstanding10DUDocument_rawDocument];
      v13 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url;
      swift_beginAccess();
      sub_232B35974(v12 + v13, v11);
      if (sub_232B12480(v11, 1, v10) != 1)
      {
        v14 = v0[16];
        v15 = v0[13];
        v16 = v0[11];
        v36 = v16;
        v37 = v0[17];
        v17 = *v39;
        (*v39)(v15, v0[10]);
        v18 = *(v40 + 48);
        v19 = *(v40 + 64);
        *v14 = v9;
        v17(&v14[v18], v15, v36);
        *&v14[v19] = v7;
        sub_232B35A4C(v14, v37);
        v20 = v7;
        v21 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_232B36334(0, *(v42 + 16) + 1, 1, v42);
        }

        v23 = *(v42 + 16);
        v22 = *(v42 + 24);
        if (v23 >= v22 >> 1)
        {
          v42 = sub_232B36334(v22 > 1, v23 + 1, 1, v42);
        }

        ++v1;
        v24 = v0[17];
        *(v42 + 16) = v23 + 1;
        v25 = *(v41 + 80);
        sub_232B37B60();
        sub_232B35A4C(v29, v27 + v26 + *(v28 + 72) * v23);
        v4 = v38;
        goto LABEL_2;
      }

      sub_232B359E4(v0[10]);
    }

    v5 += 2;
    ++v1;
  }

  v30 = v0[19];
  v32 = v0[16];
  v31 = v0[17];
  v33 = v0[13];
  v34 = v0[10];

  v35 = v0[1];

  v35(v42);
}

id DocumentGradingDocumentFetcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DocumentGradingDocumentFetcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232B35974(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B359E4(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232B35A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6AE0, &unk_232CF6E20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_232B35ABC()
{
  sub_232B37B14();
  if (v5)
  {
    sub_232B37A48();
    if (v7 != v8)
    {
      sub_232B37AEC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_232B37ADC(v6);
  if (v2)
  {
    sub_232B124A8(&qword_27DDC6B00, &unk_232CF6E80);
    v9 = sub_232B37B90();
    sub_232B37B78(v9);
    sub_232B37B48();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = sub_232B37BCC();
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v3] <= v11)
    {
      memmove(v11, v12, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

void sub_232B35BAC()
{
  sub_232B37B14();
  if (v7)
  {
    sub_232B37A48();
    if (v9 != v10)
    {
      sub_232B37AEC();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_232B37ABC(v8);
  if (v3)
  {
    sub_232B124A8(&qword_27DDC6C40, &unk_232CF6FD0);
    v4 = 56;
    v11 = swift_allocObject();
    sub_232B37B2C(v11);
    sub_232B37C00();
    *(v3 + 16) = v2;
    *(v3 + 24) = v12;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  sub_232B37BA8();
  if (v1)
  {
    if (v3 != v0 || v5 + 56 * v2 <= v4)
    {
      v14 = sub_232B37B20();
      memmove(v14, v15, v16);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B124A8(&qword_27DDC6C48, &qword_232CF89E0);
    sub_232B37ACC();
    swift_arrayInitWithCopy();
  }
}

void sub_232B35CA8()
{
  sub_232B37B14();
  if (v7)
  {
    sub_232B37A48();
    if (v9 != v10)
    {
      sub_232B37AEC();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_232B37ABC(v8);
  if (v3)
  {
    sub_232B124A8(&qword_27DDC6C30, &qword_232CF6FC0);
    v4 = 24;
    v11 = swift_allocObject();
    sub_232B37B2C(v11);
    sub_232B37C00();
    *(v3 + 16) = v2;
    *(v3 + 24) = v12;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  sub_232B37BA8();
  if (v1)
  {
    if (v3 != v0 || v5 + 24 * v2 <= v4)
    {
      v14 = sub_232B37B20();
      memmove(v14, v15, v16);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B124A8(&qword_27DDC6C38, &qword_232CF6FC8);
    sub_232B37ACC();
    swift_arrayInitWithCopy();
  }
}

void sub_232B35DC8()
{
  sub_232B37BD8();
  if (v6)
  {
    sub_232B37A48();
    if (v11 != v12)
    {
      sub_232B37AEC();
      if (v11)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  else
  {
    v10 = v5;
  }

  v13 = v0[2];
  if (v10 <= v13)
  {
    v14 = v0[2];
  }

  else
  {
    v14 = v10;
  }

  if (v14)
  {
    sub_232B37C38(v4, v5, v6, v7, v8, v9);
    v15 = swift_allocObject();
    sub_232B37B78(v15);
    v15[2] = v13;
    v15[3] = 2 * (v16 / 40);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v3)
  {
    if (v15 != v0 || &v0[5 * v13 + 4] <= v15 + 4)
    {
      v18 = sub_232B37C0C();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    sub_232B124A8(v2, v1);
    sub_232B37C0C();
    swift_arrayInitWithCopy();
  }
}

void sub_232B35ECC()
{
  sub_232B37B14();
  if (v5)
  {
    sub_232B37A48();
    if (v7 != v8)
    {
      sub_232B37AEC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_232B37ABC(v6);
  if (v3)
  {
    sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
    v9 = sub_232B37B90();
    j__malloc_size(v9);
    sub_232B37A58();
    *(v9 + 2) = v2;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_232B35FA0()
{
  sub_232B37A7C();
  if (v4)
  {
    sub_232B37A6C();
    if (v6 != v7)
    {
      sub_232B37B6C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_232B37A8C();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_232B37BB4(v2, v5, &qword_27DDC6B88, &unk_232CF6F10);
  sub_232B37B54();
  v9 = type metadata accessor for FoundInEventDataDetectorsOutput();
  sub_232B13FB4(v9);
  v11 = *(v10 + 80);
  sub_232B37B60();
  if (v1)
  {
    sub_232B37AF8(type metadata accessor for FoundInEventDataDetectorsOutput, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B37A9C();
  }
}

void sub_232B36078()
{
  sub_232B37A7C();
  if (v4)
  {
    sub_232B37A6C();
    if (v6 != v7)
    {
      sub_232B37B6C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_232B37A8C();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_232B37BB4(v2, v5, &qword_27DDC6B28, &unk_232CF6EB0);
  v9 = sub_232B37B54();
  v10 = type metadata accessor for DUStructuredExtractionResult(v9);
  sub_232B13FB4(v10);
  v12 = *(v11 + 80);
  sub_232B37B60();
  if (v1)
  {
    sub_232B37AF8(type metadata accessor for DUStructuredExtractionResult, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B37A9C();
  }
}

void sub_232B36178()
{
  sub_232B37B14();
  if (v5)
  {
    sub_232B37A48();
    if (v7 != v8)
    {
      sub_232B37AEC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_232B37ADC(v6);
  if (v2)
  {
    sub_232B37C38(v9, v10, v11, v12, v13, v14);
    v15 = sub_232B37B90();
    sub_232B37B78(v15);
    sub_232B37B48();
    v15[2] = v3;
    v15[3] = v16;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v17 = sub_232B37BCC();
  if (v1)
  {
    if (v15 != v0 || &v18[8 * v3] <= v17)
    {
      memmove(v17, v18, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v17, v18, 8 * v3);
  }
}

void sub_232B36248()
{
  sub_232B37B14();
  if (v7)
  {
    sub_232B37A48();
    if (v9 != v10)
    {
      sub_232B37AEC();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_232B37ABC(v8);
  if (v3)
  {
    sub_232B124A8(&qword_27DDC6C00, &qword_232CF6F90);
    v11 = sub_232B37B90();
    j__malloc_size(v11);
    sub_232B37A58();
    v11[2] = v2;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  sub_232B37BA8();
  if (v1)
  {
    if (v11 != v0 || v5 + 16 * v2 <= v4)
    {
      v14 = sub_232B37B20();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    sub_232B124A8(&qword_27DDC6C08, &qword_232CF6F98);
    sub_232B37ACC();
    swift_arrayInitWithCopy();
  }
}

size_t sub_232B36334(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_232B37538(v8, v7);
  v10 = *(sub_232B124A8(&qword_27DDC6AE0, &unk_232CF6E20) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_232B3780C(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

uint64_t dispatch thunk of DocumentGradingDocumentFetcher.retrieveDocumentsForGrading(numberOfDocuments:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_232B28D1C;

  return v8(a1);
}

void sub_232B36588()
{
  sub_232B37B14();
  if (v5)
  {
    sub_232B37A48();
    if (v7 != v8)
    {
      sub_232B37AEC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_232B37ADC(v6);
  if (v2)
  {
    sub_232B37C38(v9, v10, v11, v12, v13, v14);
    v15 = sub_232B37B90();
    j__malloc_size(v15);
    sub_232B37A58();
    v15[2] = v3;
    v15[3] = v16;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v17 = sub_232B37BCC();
  if (v1)
  {
    if (v15 != v0 || &v18[16 * v3] <= v17)
    {
      memmove(v17, v18, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v17, v18, 16 * v3);
  }
}

void sub_232B36664()
{
  sub_232B37A7C();
  if (v4)
  {
    sub_232B37A6C();
    if (v6 != v7)
    {
      sub_232B37B6C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_232B37A8C();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_232B37BB4(v2, v5, &qword_27DDC6C60, &unk_232CF6FF0);
  sub_232B37B54();
  v9 = sub_232CE8D10();
  sub_232B13FB4(v9);
  v11 = *(v10 + 80);
  sub_232B37B60();
  if (v1)
  {
    sub_232B37AF8(MEMORY[0x277CC9578], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B37A9C();
  }
}

void sub_232B3673C()
{
  sub_232B37A7C();
  if (v4)
  {
    sub_232B37A6C();
    if (v6 != v7)
    {
      sub_232B37B6C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_232B37A8C();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_232B37BB4(v2, v5, &qword_27DDC6BF0, &qword_232CF6F80);
  sub_232B37B54();
  v9 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult();
  sub_232B13FB4(v9);
  v11 = *(v10 + 80);
  sub_232B37B60();
  if (v1)
  {
    sub_232B37AF8(type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B37A9C();
  }
}

void sub_232B36814()
{
  sub_232B37A7C();
  if (v4)
  {
    sub_232B37A6C();
    if (v6 != v7)
    {
      sub_232B37B6C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_232B37A8C();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_232B37BB4(v2, v5, &qword_27DDC6BE0, &qword_232CF6F70);
  sub_232B37B54();
  v9 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement();
  sub_232B13FB4(v9);
  v11 = *(v10 + 80);
  sub_232B37B60();
  if (v1)
  {
    sub_232B37AF8(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B37A9C();
  }
}

void sub_232B368EC()
{
  sub_232B37A7C();
  if (v4)
  {
    sub_232B37A6C();
    if (v6 != v7)
    {
      sub_232B37B6C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_232B37A8C();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_232B37BB4(v2, v5, &qword_27DDC6BE8, &qword_232CF6F78);
  sub_232B37B54();
  v9 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute();
  sub_232B13FB4(v9);
  v11 = *(v10 + 80);
  sub_232B37B60();
  if (v1)
  {
    sub_232B37AF8(type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B37A9C();
  }
}

void sub_232B369C4()
{
  sub_232B37B14();
  if (v5)
  {
    sub_232B37A48();
    if (v7 != v8)
    {
      sub_232B37AEC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_232B37ADC(v6);
  if (v2)
  {
    sub_232B124A8(&qword_27DDC6B78, &unk_232CF6F00);
    v9 = sub_232B37B90();
    sub_232B37B78(v9);
    sub_232B37B48();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = sub_232B37BCC();
  if (v1)
  {
    if (v9 != v0 || &v12[4 * v3] <= v11)
    {
      memmove(v11, v12, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 4 * v3);
  }
}

void sub_232B36AB4()
{
  sub_232B37A7C();
  if (v4)
  {
    sub_232B37A6C();
    if (v6 != v7)
    {
      sub_232B37B6C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_232B37A8C();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_232B37BB4(v2, v5, &qword_27DDC6B48, &qword_232CF6ED0);
  sub_232B37B54();
  v9 = sub_232CE8AE0();
  sub_232B13FB4(v9);
  v11 = *(v10 + 80);
  sub_232B37B60();
  if (v1)
  {
    sub_232B37AF8(MEMORY[0x277CC8990], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B37A9C();
  }
}

void sub_232B36BB0()
{
  sub_232B37B14();
  if (v5)
  {
    sub_232B37A48();
    if (v7 != v8)
    {
      sub_232B37AEC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_232B37ABC(v6);
  if (v3)
  {
    sub_232B124A8(&qword_27DDC6AF8, &qword_232CF6E78);
    v9 = sub_232B37B90();
    sub_232B37B2C(v9);
    sub_232B37B48();
    v3[2] = v2;
    v3[3] = v10;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v11 = (v3 + 4);
  v12 = (v0 + 32);
  if (v1)
  {
    if (v3 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_232B36C84()
{
  sub_232B37A7C();
  if (v4)
  {
    sub_232B37A6C();
    if (v6 != v7)
    {
      sub_232B37B6C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_232B37A8C();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_232B37BB4(v2, v5, &qword_27DDC6BC8, &qword_232CF6F58);
  sub_232B37B54();
  v9 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult();
  sub_232B13FB4(v9);
  v11 = *(v10 + 80);
  sub_232B37B60();
  if (v1)
  {
    sub_232B37AF8(type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B37A9C();
  }
}

void sub_232B36D5C()
{
  sub_232B37A7C();
  if (v4)
  {
    sub_232B37A6C();
    if (v6 != v7)
    {
      sub_232B37B6C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_232B37A8C();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_232B37BB4(v2, v5, &qword_27DDC6BD0, &qword_232CF6F60);
  v9 = sub_232B37B54();
  v10 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(v9);
  sub_232B13FB4(v10);
  v12 = *(v11 + 80);
  sub_232B37B60();
  if (v1)
  {
    sub_232B37AF8(type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B37A9C();
  }
}

void sub_232B36E34()
{
  sub_232B37A7C();
  if (v4)
  {
    sub_232B37A6C();
    if (v6 != v7)
    {
      sub_232B37B6C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_232B37A8C();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_232B37BB4(v2, v5, &qword_27DDC6BD8, &qword_232CF6F68);
  v9 = sub_232B37B54();
  v10 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(v9);
  sub_232B13FB4(v10);
  v12 = *(v11 + 80);
  sub_232B37B60();
  if (v1)
  {
    sub_232B37AF8(type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B37A9C();
  }
}

void sub_232B36F0C()
{
  sub_232B37B14();
  if (v5)
  {
    sub_232B37A48();
    if (v7 != v8)
    {
      sub_232B37AEC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_232B37ADC(v6);
  if (v2)
  {
    sub_232B124A8(&qword_27DDC6BC0, &qword_232CF6F50);
    v9 = sub_232B37C18();
    sub_232B37B78(v9);
    sub_232B37C00();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = sub_232B37BCC();
  if (v1)
  {
    if (v9 != v0 || &v12[40 * v3] <= v11)
    {
      memmove(v11, v12, 40 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_232B3702C()
{
  sub_232B37BD8();
  if (v6)
  {
    sub_232B37A48();
    if (v11 != v12)
    {
      sub_232B37AEC();
      if (v11)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  else
  {
    v10 = v5;
  }

  v13 = v0[2];
  if (v10 <= v13)
  {
    v14 = v0[2];
  }

  else
  {
    v14 = v10;
  }

  if (v14)
  {
    sub_232B37C38(v4, v5, v6, v7, v8, v9);
    v15 = sub_232B37B90();
    sub_232B37B78(v15);
    sub_232B37B48();
    v15[2] = v13;
    v15[3] = v16;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v3)
  {
    if (v15 != v0 || &v0[v13 + 4] <= v15 + 4)
    {
      v18 = sub_232B37C0C();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    sub_232B124A8(v2, v1);
    sub_232B37C0C();
    swift_arrayInitWithCopy();
  }
}

void sub_232B3711C()
{
  sub_232B37B14();
  if (v7)
  {
    sub_232B37A48();
    if (v9 != v10)
    {
      sub_232B37AEC();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_232B37ABC(v8);
  if (v3)
  {
    sub_232B124A8(&qword_27DDC6B18, &qword_232CF6EA0);
    v11 = sub_232B37B90();
    j__malloc_size(v11);
    sub_232B37A58();
    v11[2] = v2;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  sub_232B37BA8();
  if (v1)
  {
    if (v11 != v0 || v5 + 16 * v2 <= v4)
    {
      v14 = sub_232B37B20();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    sub_232B124A8(&qword_27DDC6B20, &qword_232CF6EA8);
    sub_232B37ACC();
    swift_arrayInitWithCopy();
  }
}

void sub_232B37208()
{
  sub_232B37B14();
  if (v7)
  {
    sub_232B37A48();
    if (v9 != v10)
    {
      sub_232B37AEC();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_232B37ABC(v8);
  if (v3)
  {
    sub_232B124A8(&qword_27DDC6BB0, &qword_232CF6F40);
    v11 = sub_232B37B90();
    sub_232B37B2C(v11);
    sub_232B37B48();
    *(v3 + 16) = v2;
    *(v3 + 24) = v12;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  sub_232B37BA8();
  if (v1)
  {
    if (v3 != v0 || v5 + 32 * v2 <= v4)
    {
      v14 = sub_232B37B20();
      memmove(v14, v15, v16);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B124A8(&qword_27DDC6BB8, &qword_232CF6F48);
    sub_232B37ACC();
    swift_arrayInitWithCopy();
  }
}

void sub_232B372F4()
{
  sub_232B37B14();
  if (v5)
  {
    sub_232B37A48();
    if (v7 != v8)
    {
      sub_232B37AEC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_232B37ADC(v6);
  if (v2)
  {
    sub_232B124A8(&qword_27DDC6BA0, &qword_232CF6F30);
    v9 = sub_232B37C18();
    sub_232B37B78(v9);
    sub_232B37C00();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[5 * v3 + 4] <= v9 + 4)
    {
      v12 = sub_232B37B20();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_232B124A8(&qword_27DDC6BA8, &qword_232CF6F38);
    sub_232B37ACC();
    swift_arrayInitWithCopy();
  }
}

void sub_232B373E4()
{
  sub_232B37B14();
  if (v7)
  {
    sub_232B37A48();
    if (v9 != v10)
    {
      sub_232B37AEC();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_232B37ABC(v8);
  if (v3)
  {
    sub_232B124A8(&qword_27DDC6B90, &qword_232CF6F20);
    v11 = sub_232B37B90();
    j__malloc_size(v11);
    sub_232B37A58();
    v11[2] = v2;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  sub_232B37BA8();
  if (v1)
  {
    if (v11 != v0 || v5 + 16 * v2 <= v4)
    {
      v14 = sub_232B37B20();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    sub_232B124A8(&qword_27DDC6B98, &qword_232CF6F28);
    sub_232B37ACC();
    swift_arrayInitWithCopy();
  }
}

void *sub_232B374D0(uint64_t a1, uint64_t a2)
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

  sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
  v4 = sub_232B37B90();
  j__malloc_size(v4);
  sub_232B37A58();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

size_t sub_232B37538(uint64_t a1, uint64_t a2)
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

  sub_232B124A8(&qword_27DDC6BF8, &qword_232CF6F88);
  v4 = *(sub_232B124A8(&qword_27DDC6AE0, &unk_232CF6E20) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_232B37640(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  sub_232B124A8(a3, a4);
  v8 = sub_232B37B54();
  v9 = a5(v8);
  sub_232B27FBC(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size(v14);
  if (v11)
  {
    if (result - v13 != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_232B37730(uint64_t a1, uint64_t a2)
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

  sub_232B124A8(&qword_27DDC6920, &qword_232CF6520);
  v4 = sub_232B37B90();
  sub_232B37B78(v4);
  v4[2] = a1;
  v4[3] = (2 * (v5 / 8)) | 1;
  return v4;
}

char *sub_232B377A4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_232B37A28(a3, result);
  }

  return result;
}

char *sub_232B377C4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_232B37A28(a3, result);
  }

  return result;
}

char *sub_232B377EC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return sub_232B37A28(a3, result);
  }

  return result;
}

uint64_t sub_232B3780C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_232B124A8(&qword_27DDC6AE0, &unk_232CF6E20), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_232B124A8(&qword_27DDC6AE0, &unk_232CF6E20);

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

char *sub_232B378F8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_232B37A28(a3, result);
  }

  return result;
}

uint64_t sub_232B37930(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v13 = sub_232B37BEC();

    return MEMORY[0x2821FE828](v13, v14, v15, v16);
  }

  else if (a3 != a1)
  {
    v9 = sub_232B37BEC();

    return MEMORY[0x2821FE820](v9, v10, v11, v12);
  }

  return result;
}

char *sub_232B379F8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_232B37A28(a3, result);
  }

  return result;
}

uint64_t sub_232B37A9C()
{

  return swift_arrayInitWithCopy();
}

void sub_232B37ABC(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void sub_232B37ADC(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_232B37AF8@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  return sub_232B37930(v2 + a2, v4, v3 + a2, a1);
}

uint64_t sub_232B37B90()
{

  return swift_allocObject();
}

size_t sub_232B37BB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_232B37640(v5, a2, a3, a4, v4);
}

uint64_t sub_232B37C18()
{

  return swift_allocObject();
}

uint64_t sub_232B37C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return sub_232B124A8(a5, a6);
}

uint64_t type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData()
{
  result = qword_2814E1EB0;
  if (!qword_2814E1EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232B37CC4()
{
  sub_232CE9340();
  if (v0 <= 0x3F)
  {
    sub_232B37D58();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_232B37D58()
{
  if (!qword_2814E1DB0)
  {
    type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData();
    v0 = sub_232CEA350();
    if (!v1)
    {
      atomic_store(v0, &qword_2814E1DB0);
    }
  }
}

uint64_t sub_232B37DB0@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData();
  v3 = a1 + *(v2 + 20);
  sub_232CE9330();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData();

  return sub_232B12504(a1 + v4, 1, 1, v5);
}

uint64_t sub_232B37E1C@<X0>(void *a1@<X8>)
{
  v3 = sub_232B124A8(&qword_27DDC6A98, &qword_232CF6D40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData();
  sub_232B38B18(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData();
  if (sub_232B12480(v6, 1, v8) != 1)
  {
    return sub_232B38BE4(v6, a1);
  }

  sub_232B2E158(a1);
  result = sub_232B12480(v6, 1, v8);
  if (result != 1)
  {
    return sub_232B13790(v6, &qword_27DDC6A98, &qword_232CF6D40);
  }

  return result;
}

uint64_t sub_232B37F18()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4F08);
  sub_232B135C4(v0, qword_27DDD4F08);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF5E60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "htmlString";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "documentEmailData";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232B380E0()
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
      sub_232B38168();
    }

    else if (result == 1)
    {
      sub_232CE94A0();
    }
  }

  return result;
}

uint64_t sub_232B38168()
{
  v0 = *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData() + 24);
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData();
  sub_232B38C48(&qword_27DDC6A10, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);
  return sub_232CE94C0();
}

uint64_t sub_232B3821C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_232CE95C0(), !v1))
  {
    result = sub_232B382E0(v0);
    if (!v1)
    {
      v6 = v0 + *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData() + 20);
      return sub_232CE9320();
    }
  }

  return result;
}

uint64_t sub_232B382E0(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC6A98, &qword_232CF6D40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData();
  sub_232B38B18(a1 + *(v10 + 24), v5);
  if (sub_232B12480(v5, 1, v6) == 1)
  {
    return sub_232B13790(v5, &qword_27DDC6A98, &qword_232CF6D40);
  }

  sub_232B38BE4(v5, v9);
  sub_232B38C48(&qword_27DDC6A10, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);
  sub_232CE95E0();
  return sub_232B38B88(v9);
}

uint64_t sub_232B38480(void *a1, void *a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData();
  v5 = sub_232B13F24(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_232B124A8(&qword_27DDC6A98, &qword_232CF6D40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v29 - v12;
  v14 = sub_232B124A8(&qword_27DDC6C80, &qword_232CF71A8);
  v15 = sub_232B13F24(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  v20 = *a1 == *a2 && a1[1] == a2[1];
  if (!v20 && (sub_232CEA750() & 1) == 0)
  {
    goto LABEL_15;
  }

  v21 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData();
  v22 = *(v21 + 24);
  v23 = *(v14 + 48);
  sub_232B38B18(a1 + v22, v19);
  sub_232B38B18(a2 + v22, &v19[v23]);
  sub_232B38C90(v19);
  if (v20)
  {
    sub_232B38C90(&v19[v23]);
    if (v20)
    {
      sub_232B13790(v19, &qword_27DDC6A98, &qword_232CF6D40);
LABEL_17:
      v27 = *(v21 + 20);
      sub_232CE9340();
      sub_232B38C48(&qword_27DDC6590, MEMORY[0x277D216C8]);
      v25 = sub_232CE9CF0();
      return v25 & 1;
    }

    goto LABEL_14;
  }

  sub_232B38B18(v19, v13);
  sub_232B38C90(&v19[v23]);
  if (v24)
  {
    sub_232B38B88(v13);
LABEL_14:
    sub_232B13790(v19, &qword_27DDC6C80, &qword_232CF71A8);
    goto LABEL_15;
  }

  sub_232B38BE4(&v19[v23], v9);
  v26 = sub_232B2E9D4(v13, v9);
  sub_232B38B88(v9);
  sub_232B38B88(v13);
  sub_232B13790(v19, &qword_27DDC6A98, &qword_232CF6D40);
  if (v26)
  {
    goto LABEL_17;
  }

LABEL_15:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_232B3870C()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData();
  sub_232B38C48(&qword_27DDC6C70, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B387E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B38C48(&qword_27DDC6C88, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B38860@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6330 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD4F08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232B38908(uint64_t a1)
{
  v2 = sub_232B38C48(&qword_27DDC69B8, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B38978()
{
  sub_232B38C48(&qword_27DDC69B8, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData);

  return sub_232CE9500();
}

uint64_t sub_232B38B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6A98, &qword_232CF6D40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B38B88(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232B38BE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B38C48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232B38D08()
{
  v1 = (v0 + OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString);
  sub_232B13F74();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_232B38DD8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString);
  sub_232B13F5C();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_232B38E30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_232B38DD8(v2, v3);
}

void *sub_232B38EF4()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
  sub_232B13F74();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232B38F94(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
  sub_232B13F5C();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_232B38FE4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_232B38F94(v2);
}

id DUDocumentHTMLData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUDocumentHTMLData.init()()
{
  v1 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData] = 0;
  sub_232B13F5C();
  *v1 = xmmword_232CF71B0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DUDocumentHTMLData();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_232B39150(void *a1)
{
  type metadata accessor for DUDocumentHTMLData();
  sub_232B3A3C8();
  sub_232B3A31C(v2, v3, v4);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUDocumentHTMLData.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232B3A3C8();
  sub_232B3A31C(v2, v3, v4);
  sub_232CE98B0();

  v5 = v7;
  if (!v7)
  {
LABEL_5:
    swift_getObjectType();
    sub_232B3A3E0();
    return 0;
  }

  swift_getObjectType();
  sub_232B3A3E0();
  return v5;
}

uint64_t sub_232B393CC@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData();
  v3 = sub_232B2D120(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v8 = v7 - v6;
  sub_232B39C78((v7 - v6));
  v9 = sub_232B39460(v8);
  result = sub_232B124A8(&qword_27DDC6CA8, &unk_232CF71C0);
  a1[3] = result;
  *a1 = v9;
  return result;
}

char *sub_232B39460(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData();
  v3 = sub_232B2D120(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v8 = (v7 - v6);
  v9 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData();
  v10 = sub_232B2D120(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_232B20704();
  v15 = (v14 - v13);
  v16 = [objc_allocWithZone(type metadata accessor for DUDocumentHTMLData()) init];
  sub_232B3A364(a1, v15);
  v18 = *v15;
  v17 = v15[1];
  v19 = &v16[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString];
  sub_232B13F5C();
  v20 = *(v19 + 1);
  *v19 = v18;
  *(v19 + 1) = v17;

  sub_232B37E1C(v8);
  sub_232B3068C();
  v22 = v21;
  sub_232B39EF0(a1);
  sub_232B39EF0(v15);
  v23 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
  sub_232B13F5C();
  v24 = *&v16[v23];
  *&v16[v23] = v22;

  return v16;
}

char *sub_232B395B0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = [objc_allocWithZone(v2) init];
  sub_232B3A364(a1, v11);
  v14 = *v11;
  v13 = v11[1];
  v15 = &v12[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString];
  swift_beginAccess();
  v16 = *(v15 + 1);
  *v15 = v14;
  *(v15 + 1) = v13;

  sub_232B37E1C(v7);
  sub_232B3068C();
  v18 = v17;
  sub_232B39EF0(a1);
  sub_232B39EF0(v11);
  v19 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
  swift_beginAccess();
  v20 = *&v12[v19];
  *&v12[v19] = v18;

  return v12;
}

char *DUDocumentHTMLData.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData();
  v7 = sub_232B2D120(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v12 = (v11 - v10);
  v13 = sub_232B124A8(&qword_27DDC69B0, &qword_232CF6998);
  v14 = sub_232B2D120(v13);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v42[-v18];
  v20 = *(a2 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_232B20704();
  v24 = v23 - v22;
  v25 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData();
  v26 = sub_232B13F24(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_232B20704();
  v31 = (v30 - v29);
  v32 = [objc_allocWithZone(v3) init];
  (*(v20 + 16))(v24, a1, a2);
  if (swift_dynamicCast())
  {
    sub_232B12504(v19, 0, 1, v25);
    sub_232B3A08C(v19, v31, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData);
    v34 = *v31;
    v33 = v31[1];
    v35 = &v32[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString];
    sub_232B13F5C();
    v36 = *(v35 + 1);
    *v35 = v34;
    *(v35 + 1) = v33;

    sub_232B37E1C(v12);
    sub_232B3068C();
    v38 = v37;
    (*(v20 + 8))(a1, a2);
    sub_232B39EF0(v31);
    v39 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
    sub_232B13F5C();
    v40 = *&v32[v39];
    *&v32[v39] = v38;
  }

  else
  {

    sub_232B12504(v19, 1, 1, v25);
    (*(v20 + 8))(a1, a2);
    sub_232B13790(v19, &qword_27DDC69B0, &qword_232CF6998);
    return 0;
  }

  return v32;
}

uint64_t sub_232B39A64(uint64_t a1)
{
  sub_232B3A01C(a1, v18);
  if (!v19)
  {
    sub_232B13790(v18, &qword_27DDC68C8, &qword_232CF6210);
    goto LABEL_17;
  }

  type metadata accessor for DUDocumentHTMLData();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v14 = 0;
    return v14 & 1;
  }

  v2 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString);
  sub_232B13F74();
  v3 = *v2;
  v4 = v2[1];
  v5 = &v17[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString];
  sub_232B13F74();
  v6 = *(v5 + 1);
  if (v4)
  {
    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = v3 == *v5 && v4 == v6;
    if (!v7 && (sub_232CEA750() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v6)
  {
LABEL_16:

    goto LABEL_17;
  }

  v8 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
  sub_232B13F74();
  v9 = *(v1 + v8);
  v10 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
  sub_232B13F74();
  v11 = *&v17[v10];
  if (!v9)
  {
    v16 = v11;

    if (!v11)
    {
      v14 = 1;
      return v14 & 1;
    }

    goto LABEL_17;
  }

  if (!v11)
  {
    goto LABEL_16;
  }

  type metadata accessor for DUDocumentEmailData();
  v12 = v11;
  v13 = v9;
  v14 = sub_232CEA310();

  return v14 & 1;
}

uint64_t sub_232B39C78@<X0>(void *a1@<X8>)
{
  v3 = sub_232B124A8(&qword_27DDC6A98, &qword_232CF6D40);
  v4 = sub_232B2D120(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31[-v7];
  v9 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData();
  v10 = sub_232B13F24(v9);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v31[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v31[-v19];
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v21 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData();
  v22 = a1 + *(v21 + 20);
  sub_232CE9330();
  v23 = *(v21 + 24);
  sub_232B3A400(a1 + v23, 1);
  v24 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString);
  sub_232B13F74();
  v25 = v24[1];
  if (v25)
  {
    *a1 = *v24;
    a1[1] = v25;
  }

  v26 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
  sub_232B13F74();
  v27 = *(v1 + v26);
  if (v27)
  {

    v28 = v27;
    sub_232B31BCC(v18);

    v29 = swift_dynamicCast();
    sub_232B3A400(v8, v29 ^ 1u);
    if (sub_232B12480(v8, 1, v9) != 1)
    {
      sub_232B3A08C(v8, v20, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);
      sub_232B3A08C(v20, v15, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);
      sub_232B13790(a1 + v23, &qword_27DDC6A98, &qword_232CF6D40);
      sub_232B3A08C(v15, a1 + v23, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);
      return sub_232B3A400(a1 + v23, 0);
    }
  }

  else
  {

    sub_232B3A400(v8, 1);
  }

  return sub_232B13790(v8, &qword_27DDC6A98, &qword_232CF6D40);
}

uint64_t sub_232B39EF0(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id DUDocumentHTMLData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUDocumentHTMLData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232B39FF4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232B395B0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232B3A01C(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B3A08C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_232B13F24(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_232B3A31C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_232B3A364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B3A3E0()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_232B3A400(uint64_t a1, uint64_t a2)
{

  return sub_232B12504(a1, a2, 1, v2);
}

uint64_t type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier()
{
  result = qword_27DDC6CB0;
  if (!qword_27DDC6CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232B3A48C()
{
  sub_232CE9340();
  if (v0 <= 0x3F)
  {
    sub_232B28F10();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_232B3A51C()
{
  sub_232CE9330();
  v0 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier();
  sub_232B2DF60(*(v0 + 20));
  sub_232B2DF60(*(v1 + 24));
  sub_232B2DF60(*(v2 + 28));
  sub_232B2DF60(*(v3 + 32));
  sub_232B2DF60(*(v4 + 36));
}

uint64_t sub_232B3A570()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4F20);
  sub_232B135C4(v0, qword_27DDD4F20);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF7250;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "documentNamespace";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "documentId";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "spotlightBundleID";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "spotlightDomainIdentifier";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "spotlightUniqueIdentifier";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232B3A7F0()
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
        sub_232B13EE0();
        sub_232B3A8B0();
        break;
      case 2:
        sub_232B13EE0();
        sub_232B3A914();
        break;
      case 3:
        sub_232B13EE0();
        sub_232B3A978();
        break;
      case 4:
        sub_232B13EE0();
        sub_232B3A9DC();
        break;
      case 5:
        sub_232B13EE0();
        sub_232B3AA40();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232B3AAA4()
{
  v1 = sub_232B13EF4();
  result = sub_232B3AB20(v1);
  if (!v0)
  {
    v3 = sub_232B13EF4();
    sub_232B3AB98(v3);
    v4 = sub_232B13EF4();
    sub_232B3AC10(v4);
    v5 = sub_232B13EF4();
    sub_232B3AC88(v5);
    v6 = sub_232B13EF4();
    sub_232B3AD00(v6);
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232B3AB20(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier();
  v3 = (a1 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B3AB98(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier();
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B3AC10(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier();
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B3AC88(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier();
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B3AD00(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier();
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B3AD78()
{
  v0 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier();
  v1 = v0[5];
  sub_232B2DF3C();
  if (v4)
  {
    if (!v2)
    {
      return 0;
    }

    sub_232B2DF50(v3);
    v7 = v7 && v5 == v6;
    if (!v7 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  v8 = v0[6];
  sub_232B2DF3C();
  if (v11)
  {
    if (!v9)
    {
      return 0;
    }

    sub_232B2DF50(v10);
    v14 = v7 && v12 == v13;
    if (!v14 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v15 = v0[7];
  sub_232B2DF3C();
  if (v18)
  {
    if (!v16)
    {
      return 0;
    }

    sub_232B2DF50(v17);
    v21 = v7 && v19 == v20;
    if (!v21 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v22 = v0[8];
  sub_232B2DF3C();
  if (v25)
  {
    if (!v23)
    {
      return 0;
    }

    sub_232B2DF50(v24);
    v28 = v7 && v26 == v27;
    if (!v28 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v29 = v0[9];
  sub_232B2DF3C();
  if (v32)
  {
    if (v30)
    {
      sub_232B2DF50(v31);
      v35 = v7 && v33 == v34;
      if (v35 || (sub_232CEA750() & 1) != 0)
      {
        goto LABEL_44;
      }
    }
  }

  else if (!v30)
  {
LABEL_44:
    sub_232CE9340();
    sub_232B3B30C(&qword_27DDC6590, MEMORY[0x277D216C8]);
    return sub_232CE9CF0() & 1;
  }

  return 0;
}

uint64_t sub_232B3AF00()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier();
  sub_232B3B30C(&qword_27DDC6CD0, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B3AFD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B3B30C(&qword_27DDC6CE0, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B3B054@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6338 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD4F20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232B3B0FC(uint64_t a1)
{
  v2 = sub_232B3B30C(&qword_27DDC6CC8, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B3B16C()
{
  sub_232B3B30C(&qword_27DDC6CC8, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);

  return sub_232CE9500();
}

uint64_t sub_232B3B30C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232B3B3FC(void *a1)
{
  v2 = (v1 + *a1);
  sub_232B3CAE4();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_232B3B44C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_232B3CAB4(a1, a2, a3);
  v6 = v4[1];
  *v4 = v5;
  v4[1] = v3;
}

uint64_t static DUDocumentIdentifier.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27DDC6CE8 = a1;
  return result;
}

uint64_t sub_232B3B744@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27DDC6CE8;
  return result;
}

uint64_t sub_232B3B790(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27DDC6CE8 = v1;
  return result;
}

id DUDocumentIdentifier.init(documentNamespace:documentID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightBundleID];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v4[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightDomainIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v4[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightUniqueIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v4[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentNamespace];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = &v4[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentID];
  *v9 = a3;
  *(v9 + 1) = a4;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for DUDocumentIdentifier();
  return objc_msgSendSuper2(&v11, sel_init);
}

char *sub_232B3B8E0(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier();
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232B3CA38(a1, v5 - v4);
  v7 = (v6 + v2[5]);
  if (v7[1])
  {
    v8 = *v7;
    v9 = v7[1];
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = (v6 + v2[6]);
  if (v10[1])
  {
    v11 = *v10;
    v12 = v10[1];
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  objc_allocWithZone(type metadata accessor for DUDocumentIdentifier());

  v13 = DUDocumentIdentifier.init(documentNamespace:documentID:)(v8, v9, v11, v12);
  sub_232B3BEC4(a1);
  v14 = (v6 + v2[7]);
  if (v14[1])
  {
    v15 = *v14;
    sub_232B13F08();
    sub_232B3CB04();
  }

  v16 = (v6 + v2[8]);
  if (v16[1])
  {
    v17 = *v16;
    sub_232B13F08();
    sub_232B3CB04();
  }

  v18 = (v6 + v2[9]);
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18;
    v21 = v18[1];

    sub_232B3BEC4(v6);
    v22 = &v13[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightUniqueIdentifier];
    swift_beginAccess();
    v23 = *(v22 + 1);
    *v22 = v20;
    *(v22 + 1) = v19;
  }

  else
  {
    sub_232B3BEC4(v6);
  }

  return v13;
}

char *DUDocumentIdentifier.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6D18, &qword_232CF7420);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v38 - v7;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v13 = v12 - v11;
  v14 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier();
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  sub_232B20704();
  v18 = v17 - v16;
  (*(v9 + 16))(v13, a1, a2);
  if (swift_dynamicCast())
  {
    sub_232B12504(v8, 0, 1, v14);
    sub_232B3BE60(v8, v18);
    v19 = (v18 + v14[5]);
    v20 = v19[1];
    if (v20)
    {
      v21 = *v19;
      v39 = v20;
      v40 = v21;
    }

    else
    {
      v39 = 0xE000000000000000;
      v40 = 0;
    }

    v23 = (v18 + v14[6]);
    if (v23[1])
    {
      v24 = *v23;
      v25 = v23[1];
    }

    else
    {
      v24 = 0;
      v25 = 0xE000000000000000;
    }

    v26 = objc_allocWithZone(type metadata accessor for DUDocumentIdentifier());

    v22 = DUDocumentIdentifier.init(documentNamespace:documentID:)(v40, v39, v24, v25);
    (*(v9 + 8))(a1, a2);
    v27 = (v18 + v14[7]);
    if (v27[1])
    {
      v28 = *v27;
      sub_232B13F08();
      sub_232B3CB04();
    }

    v29 = (v18 + v14[8]);
    if (v29[1])
    {
      v30 = *v29;
      sub_232B13F08();
      sub_232B3CB04();
    }

    v31 = (v18 + v14[9]);
    v32 = v31[1];
    if (v32)
    {
      v33 = *v31;
      v34 = v31[1];

      sub_232B3BEC4(v18);
      v35 = &v22[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightUniqueIdentifier];
      swift_beginAccess();
      v36 = *(v35 + 1);
      *v35 = v33;
      *(v35 + 1) = v32;
    }

    else
    {
      sub_232B3BEC4(v18);
    }
  }

  else
  {
    (*(v9 + 8))(a1, a2);
    sub_232B12504(v8, 1, 1, v14);
    sub_232B3BDF8(v8);
    return 0;
  }

  return v22;
}

uint64_t sub_232B3BDF8(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC6D18, &qword_232CF7420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232B3BE60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B3BEC4(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232B3BF20@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v8 = v7 - v6;
  sub_232CE9330();
  v9 = (v8 + v4[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v8 + v4[8]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v8 + v4[9]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v8 + v4[10]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v8 + v4[11]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentNamespace);
  sub_232B13F74();
  v15 = *v14;
  v16 = v14[1];
  *v9 = v15;
  v9[1] = v16;
  v17 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentID);
  sub_232B13F74();
  v18 = *v17;
  v19 = v17[1];
  *v10 = v18;
  v10[1] = v19;
  v20 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightBundleID);
  sub_232B13F74();
  v21 = v20[1];
  if (v21)
  {
    *v11 = *v20;
    v11[1] = v21;
  }

  v22 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightDomainIdentifier);
  sub_232B13F74();
  v23 = v22[1];
  if (v23)
  {
    *v12 = *v22;
    v12[1] = v23;
  }

  v24 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightUniqueIdentifier);
  sub_232B13F74();
  v25 = v24[1];
  if (v25)
  {
    *v13 = *v24;
    v13[1] = v25;
  }

  sub_232B3BE60(v8, a1);
}

uint64_t sub_232B3C0D8@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232B3BF20(v5 - v4);
  v7 = sub_232B3B8E0(v6);
  result = sub_232B124A8(&qword_27DDC6D20, &qword_232CF7428);
  a1[3] = result;
  *a1 = v7;
  return result;
}

void sub_232B3C1D0(void *a1)
{
  type metadata accessor for DUDocumentIdentifier();
  sub_232B3CA9C();
  sub_232B3C9F0(v2, v3, v4);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUDocumentIdentifier.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232B3CA9C();
  sub_232B3C9F0(v2, v3, v4);
  sub_232CE98B0();

  v5 = v7;
  if (!v7)
  {
LABEL_5:
    swift_getObjectType();
    sub_232B3CB40();
    return 0;
  }

  swift_getObjectType();
  sub_232B3CB40();
  return v5;
}

id DUDocumentIdentifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUDocumentIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUDocumentIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232B3C5B4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232B3B8E0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232B3C9F0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_232B3CA38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B3CAB4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;

  return swift_beginAccess();
}

uint64_t sub_232B3CAE4()
{

  return swift_beginAccess();
}

uint64_t sub_232B3CB04()
{
  v4 = v1[1];
  *v1 = v2;
  v1[1] = v0;
}

uint64_t sub_232B3CB20(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a2;
}

uint64_t sub_232B3CB40()
{

  return swift_deallocPartialClassInstance();
}

uint64_t type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData()
{
  result = qword_2814E1F60;
  if (!qword_2814E1F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232B3CBD4()
{
  sub_232B2E0AC();
  if (v0 <= 0x3F)
  {
    sub_232CE9340();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_232B3CC6C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v1 = MEMORY[0x277D84F90];
  a1[4] = MEMORY[0x277D84F90];
  a1[5] = v1;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  a1[8] = 0;
  a1[9] = 0xE000000000000000;
  v2 = a1 + *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData() + 40);
  return sub_232CE9330();
}

uint64_t sub_232B3CCC0()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4F38);
  sub_232B135C4(v0, qword_27DDD4F38);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF74B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "conversationIdentifier";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "creatorHandle";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "recipientHandles";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "recipientNames";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "attachmentFileName";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "attachmentFilePath";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232B3CF80()
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
      case 2:
      case 5:
      case 6:
        sub_232CE94A0();
        break;
      case 3:
      case 4:
        sub_232CE9460();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232B3D040()
{
  v2 = *v0;
  v3 = v0[1];
  sub_232B2F0F4();
  if (!v4 || (result = sub_232B2F128(), !v1))
  {
    v6 = v0[2];
    v7 = v0[3];
    sub_232B2F0F4();
    if (!v8 || (result = sub_232B2F128(), !v1))
    {
      if (!*(v0[4] + 16) || (result = sub_232B2F108(), !v1))
      {
        if (!*(v0[5] + 16) || (result = sub_232B2F108(), !v1))
        {
          v9 = v0[6];
          v10 = v0[7];
          sub_232B2F0F4();
          if (!v11 || (result = sub_232B2F128(), !v1))
          {
            v12 = v0[8];
            v13 = v0[9];
            sub_232B2F0F4();
            if (!v14 || (result = sub_232B2F128(), !v1))
            {
              v15 = v0 + *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData() + 40);
              return sub_232CE9320();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_232B3D154(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_232CEA750() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_232CEA750() & 1) == 0)
  {
    return 0;
  }

  if ((sub_232B32DC4(a1[4], a2[4]) & 1) == 0 || (sub_232B32DC4(a1[5], a2[5]) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6] == a2[6] && a1[7] == a2[7];
  if (!v6 && (sub_232CEA750() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[8] == a2[8] && a1[9] == a2[9];
  if (!v7 && (sub_232CEA750() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData() + 40);
  sub_232CE9340();
  sub_232B3D7AC(&qword_27DDC6590, MEMORY[0x277D216C8]);
  return sub_232CE9CF0() & 1;
}

uint64_t sub_232B3D294()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData();
  sub_232B3D7AC(&qword_27DDC6D98, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B3D33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_232B3D3B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_232B3D424(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_232B3D478(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B3D7AC(&qword_27DDC6DA8, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B3D4F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6340 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD4F38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232B3D59C(uint64_t a1)
{
  v2 = sub_232B3D7AC(&qword_27DDC69A8, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B3D60C()
{
  sub_232B3D7AC(&qword_27DDC69A8, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData);

  return sub_232CE9500();
}

uint64_t sub_232B3D7AC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_232B3D8A0(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v4)
  {
    sub_232CE9D20();
    sub_232B26CE8();
  }

  else
  {
    a1 = 0;
  }

  return a1;
}

void sub_232B3D91C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_232CE9D50();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_232B3D9B0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_232B3DA8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232B3DA80(v4);
}

id sub_232B3DB1C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a3())
  {
    sub_232CE9FD0();
    sub_232B26CE8();
  }

  else
  {
    a1 = 0;
  }

  return a1;
}

void sub_232B3DBA0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    v6 = sub_232CE9FE0();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  a4(v6);
}

uint64_t sub_232B3DC30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232B3DC24(v4);
}

id DUDocumentMessageData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUDocumentMessageData.init()()
{
  v1 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_conversationIdentifier];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_creatorHandle];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientHandles] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientNames] = 0;
  v3 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFileName];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFilePath];
  v5 = type metadata accessor for DUDocumentMessageData();
  *v4 = 0;
  *(v4 + 1) = 0;
  v7.receiver = v0;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_232B3DEE0(void *a1)
{
  type metadata accessor for DUDocumentMessageData();
  sub_232B3F428();
  sub_232B3F3E0(v2, v3, v4);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUDocumentMessageData.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232B26CE8();
  return DUDocumentMessageData.init(coder:)(v2);
}

uint64_t DUDocumentMessageData.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  sub_232B26CE8();
  swift_getObjectType();
  sub_232B3F428();
  sub_232B3F3E0(v2, v3, v4);
  sub_232CE98B0();

  v5 = v7;
  if (!v7)
  {
LABEL_5:
    swift_getObjectType();
    sub_232B3CB40();
    return 0;
  }

  swift_getObjectType();
  sub_232B3CB40();
  return v5;
}

uint64_t sub_232B3E154@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData();
  v3 = sub_232B2D120(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v8 = v7 - v6;
  sub_232B3EB74(v7 - v6);
  v9 = sub_232B3E1E8(v8);
  result = sub_232B124A8(&qword_27DDC6DE8, &qword_232CF7670);
  a1[3] = result;
  *a1 = v9;
  return result;
}

char *sub_232B3E1E8(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData();
  v3 = sub_232B2D120(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v8 = (v7 - v6);
  v9 = [objc_allocWithZone(type metadata accessor for DUDocumentMessageData()) init];
  sub_232B3ED3C(a1, v8);
  v11 = v8[2];
  v10 = v8[3];
  sub_232B3F45C();
  sub_232B3F440();

  v13 = *v8;
  v12 = v8[1];
  sub_232B3F45C();
  sub_232B3F440();

  v14 = v8[5];
  sub_232B13F5C();
  sub_232B3F478();

  v15 = v8[4];
  sub_232B13F5C();
  sub_232B3F478();

  v17 = v8[6];
  v16 = v8[7];
  sub_232B3F45C();
  sub_232B3F440();

  v19 = v8[8];
  v18 = v8[9];

  sub_232B3EDA0(v8);
  v20 = &v9[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFilePath];
  sub_232B13F5C();
  v21 = *(v20 + 1);
  *v20 = v19;
  *(v20 + 1) = v18;

  return v9;
}

char *sub_232B3E36C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = [objc_allocWithZone(v2) init];
  sub_232B3ED3C(a1, v7);
  v10 = v7[2];
  v9 = v7[3];
  v11 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_creatorHandle];
  swift_beginAccess();
  v12 = *(v11 + 1);
  *v11 = v10;
  *(v11 + 1) = v9;

  v14 = *v7;
  v13 = v7[1];
  v15 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_conversationIdentifier];
  swift_beginAccess();
  v16 = *(v15 + 1);
  *v15 = v14;
  *(v15 + 1) = v13;

  v17 = v7[5];
  v18 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientNames;
  swift_beginAccess();
  v19 = *&v8[v18];
  *&v8[v18] = v17;

  v20 = v7[4];
  v21 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientHandles;
  swift_beginAccess();
  v22 = *&v8[v21];
  *&v8[v21] = v20;

  v24 = v7[6];
  v23 = v7[7];
  v25 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFileName];
  swift_beginAccess();
  v26 = *(v25 + 1);
  *v25 = v24;
  *(v25 + 1) = v23;

  v28 = v7[8];
  v27 = v7[9];

  sub_232B3EDA0(v7);
  v29 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFilePath];
  swift_beginAccess();
  v30 = *(v29 + 1);
  *v29 = v28;
  *(v29 + 1) = v27;

  return v8;
}

char *DUDocumentMessageData.__allocating_init<A>(proto:)()
{
  v1 = v0;
  v2 = sub_232B124A8(&qword_27DDC69A0, &qword_232CF6990);
  v3 = sub_232B2D120(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27[-v6];
  v8 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_232B20704();
  v12 = (v11 - v10);
  v13 = [objc_allocWithZone(v1) init];
  if (swift_dynamicCast())
  {
    sub_232B12504(v7, 0, 1, v8);
    sub_232B3ED3C(v7, v12);
    v15 = v12[2];
    v14 = v12[3];
    sub_232B3F45C();
    sub_232B3F440();

    v17 = *v12;
    v16 = v12[1];
    sub_232B3F45C();
    sub_232B3F440();

    v18 = v12[5];
    sub_232B13F5C();
    sub_232B3F478();

    v19 = v12[4];
    sub_232B13F5C();
    sub_232B3F478();

    v21 = v12[6];
    v20 = v12[7];
    sub_232B3F45C();
    sub_232B3F440();

    v23 = v12[8];
    v22 = v12[9];

    sub_232B3EDA0(v12);
    v24 = &v13[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFilePath];
    sub_232B13F5C();
    v25 = *(v24 + 1);
    *v24 = v23;
    *(v24 + 1) = v22;
  }

  else
  {

    sub_232B12504(v7, 1, 1, v8);
    sub_232B267AC(v7, &qword_27DDC69A0, &qword_232CF6990);
    return 0;
  }

  return v13;
}

uint64_t sub_232B3E820(uint64_t a1)
{
  sub_232B3A01C(a1, v38);
  if (!v39)
  {
    sub_232B267AC(v38, &qword_27DDC68C8, &qword_232CF6210);
    goto LABEL_49;
  }

  type metadata accessor for DUDocumentMessageData();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_49:
    LOBYTE(v32) = 0;
    return v32 & 1;
  }

  v2 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_creatorHandle);
  sub_232B13F74();
  v3 = *v2;
  v4 = v2[1];
  v5 = &v37[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_creatorHandle];
  sub_232B13F74();
  v6 = *(v5 + 1);
  if (v4)
  {
    if (!v6)
    {
      goto LABEL_48;
    }

    v7 = v3 == *v5 && v4 == v6;
    if (!v7 && (sub_232B3F494() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v6)
  {
    goto LABEL_48;
  }

  v8 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_conversationIdentifier);
  sub_232B13F74();
  v9 = *v8;
  v10 = v8[1];
  v11 = &v37[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_conversationIdentifier];
  sub_232B13F74();
  v12 = *(v11 + 1);
  if (v10)
  {
    if (!v12)
    {
      goto LABEL_48;
    }

    v13 = v9 == *v11 && v10 == v12;
    if (!v13 && (sub_232B3F494() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v12)
  {
    goto LABEL_48;
  }

  v14 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientNames;
  sub_232B13F74();
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientNames;
  sub_232B13F74();
  v17 = *&v37[v16];
  if (v15)
  {
    if (!v17 || (sub_232B32DC4(v15, v17) & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v17)
  {
    goto LABEL_48;
  }

  v18 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientHandles;
  sub_232B13F74();
  v19 = *(v1 + v18);
  v20 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientHandles;
  sub_232B13F74();
  v21 = *&v37[v20];
  if (v19)
  {
    if (!v21 || (sub_232B32DC4(v19, v21) & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v21)
  {
    goto LABEL_48;
  }

  v22 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFileName);
  sub_232B13F74();
  v23 = *v22;
  v24 = v22[1];
  v25 = &v37[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFileName];
  sub_232B13F74();
  v26 = *(v25 + 1);
  if (!v24)
  {
    if (!v26)
    {
      goto LABEL_39;
    }

LABEL_48:

    goto LABEL_49;
  }

  if (!v26)
  {
    goto LABEL_48;
  }

  v27 = v23 == *v25 && v24 == v26;
  if (!v27 && (sub_232B3F494() & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_39:
  v28 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFilePath);
  sub_232B13F74();
  v29 = *v28;
  v30 = v28[1];
  v31 = &v37[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFilePath];
  sub_232B13F74();
  v32 = *(v31 + 1);
  if (!v30)
  {
    v36 = *(v31 + 1);

    if (v32)
    {

      goto LABEL_49;
    }

    goto LABEL_54;
  }

  if (v32)
  {
    if (v29 != *v31 || v30 != v32)
    {
      v34 = *(v31 + 1);
      LOBYTE(v32) = sub_232CEA750();
      goto LABEL_46;
    }

LABEL_54:
    LOBYTE(v32) = 1;
    return v32 & 1;
  }

LABEL_46:

  return v32 & 1;
}

uint64_t sub_232B3EB74@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData();
  v4 = sub_232B2D120(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_232B20704();
  v9 = (v8 - v7);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v9[2] = 0;
  v9[3] = 0xE000000000000000;
  v10 = MEMORY[0x277D84F90];
  v9[4] = MEMORY[0x277D84F90];
  v9[5] = v10;
  v9[6] = 0;
  v9[7] = 0xE000000000000000;
  v9[8] = 0;
  v9[9] = 0xE000000000000000;
  v12 = v9 + *(v11 + 48);
  sub_232CE9330();
  v13 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_creatorHandle);
  sub_232B13F74();
  v14 = v13[1];
  if (v14)
  {
    v9[2] = *v13;
    v9[3] = v14;
  }

  v15 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_conversationIdentifier);
  sub_232B13F74();
  v16 = v15[1];
  if (v16)
  {
    *v9 = *v15;
    v9[1] = v16;
  }

  v17 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientNames;
  sub_232B13F74();
  v18 = *(v1 + v17);
  if (v18)
  {
    v9[5] = v18;
  }

  v19 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientHandles;
  sub_232B13F74();
  v20 = *(v1 + v19);
  if (v20)
  {
    v9[4] = v20;
  }

  v21 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFileName);
  sub_232B13F74();
  v22 = v21[1];
  if (v22)
  {
    v9[6] = *v21;
    v9[7] = v22;
  }

  v23 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFilePath);
  sub_232B13F74();
  v24 = v23[1];
  if (v24)
  {
    v9[8] = *v23;
    v9[9] = v24;
  }

  sub_232B3ED3C(v9, a1);
}

uint64_t sub_232B3ED3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B3EDA0(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id DUDocumentMessageData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUDocumentMessageData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232B3EEF0@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232B3E36C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232B3F3E0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_232B3F440()
{
  v4 = v1[1];
  *v1 = v2;
  v1[1] = v0;
}

uint64_t sub_232B3F45C()
{

  return swift_beginAccess();
}

uint64_t sub_232B3F478()
{
  v4 = *(v0 + v2);
  *(v0 + v2) = v1;
}

uint64_t sub_232B3F494()
{

  return sub_232CEA750();
}

BOOL sub_232B3F4B0(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_232B3F504@<X0>(uint64_t a1@<X8>)
{
  sub_232CE9330();
  v2 = *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement() + 20);
  if (qword_27DDC6350 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_27DDC6DF0;
}

uint64_t sub_232B3F580()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4F50);
  sub_232B135C4(v0, qword_27DDD4F50);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_232CF6730;
  v4 = v43 + v3 + v1[14];
  *(v43 + v3) = 1;
  *v4 = "text";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_232CE95F0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v43 + v3 + v2 + v1[14];
  *(v43 + v3 + v2) = 2;
  *v8 = "version";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v43 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "classDescriptor";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v43 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "fontSize";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v43 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "superviewClassNames";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v7();
  v15 = (v43 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "frameInWindow";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v43 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "absoluteOriginOnScreen";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v7();
  v19 = (v43 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "isOnScreen";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v7();
  v21 = (v43 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "isValidForContentExtraction";
  *(v22 + 1) = 27;
  v22[16] = 2;
  v7();
  v23 = (v43 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "frameInWindow_debugX";
  *(v24 + 1) = 20;
  v24[16] = 2;
  v25 = *MEMORY[0x277D21888];
  v7();
  v26 = (v43 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "frameInWindow_debugY";
  *(v27 + 1) = 20;
  v27[16] = 2;
  v7();
  v28 = (v43 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "frameInWindow_debugWidth";
  *(v29 + 1) = 24;
  v29[16] = 2;
  v7();
  v30 = (v43 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "frameInWindow_debugHeight";
  *(v31 + 1) = 25;
  v31[16] = 2;
  v7();
  v32 = (v43 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "absoluteOriginOnScreen_debugX";
  *(v33 + 1) = 29;
  v33[16] = 2;
  v7();
  v34 = (v43 + v3 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "absoluteOriginOnScreen_debugY";
  *(v35 + 1) = 29;
  v35[16] = 2;
  v7();
  v36 = (v43 + v3 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "superviewClassIndices";
  *(v37 + 1) = 21;
  v37[16] = 2;
  v7();
  v38 = (v43 + v3 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "range";
  *(v39 + 1) = 5;
  v39[16] = 2;
  v7();
  v40 = (v43 + v3 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "styleProperties";
  *(v41 + 1) = 15;
  v41[16] = 2;
  v7();
  return sub_232CE9600();
}

void sub_232B3FB58()
{
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
  swift_allocObject();
  sub_232B3FB98();
  qword_27DDC6DF0 = v0;
}

double sub_232B3FB98()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 64) = 0;
  *(v0 + 72) = v1;
  *(v0 + 80) = xmmword_232CF76F0;
  *(v0 + 96) = xmmword_232CF76F0;
  *(v0 + 112) = 0;
  result = 0.0;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = v1;
  *(v0 + 176) = v1;
  *(v0 + 184) = v1;
  return result;
}

uint64_t sub_232B3FBE4(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  *(v1 + 56) = 0xE000000000000000;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 72) = MEMORY[0x277D84F90];
  *(v1 + 80) = xmmword_232CF76F0;
  *(v1 + 96) = xmmword_232CF76F0;
  *(v1 + 112) = 0;
  *(v1 + 152) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 168) = v3;
  *(v1 + 176) = v3;
  *(v1 + 184) = v3;
  sub_232B13F74();
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_232B13F5C();
  *(v1 + 16) = v5;
  *(v1 + 24) = v4;
  sub_232B13F74();
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  sub_232B13F5C();
  *(v1 + 32) = v7;
  *(v1 + 40) = v6;

  sub_232B13F74();
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  sub_232B13F5C();
  v10 = *(v1 + 56);
  *(v1 + 48) = v9;
  *(v1 + 56) = v8;

  sub_232B13F74();
  v11 = *(a1 + 64);
  sub_232B13F5C();
  *(v1 + 64) = v11;
  sub_232B13F74();
  v12 = *(a1 + 72);
  sub_232B13F5C();
  v13 = *(v1 + 72);
  *(v1 + 72) = v12;

  sub_232B13F74();
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  sub_232B13F5C();
  v16 = *(v1 + 80);
  v17 = *(v1 + 88);
  *(v1 + 80) = v14;
  *(v1 + 88) = v15;
  sub_232B41B94(v14, v15);
  sub_232B41BEC(v16, v17);
  sub_232B13F74();
  v18 = *(a1 + 96);
  v19 = *(a1 + 104);
  sub_232B13F5C();
  v20 = *(v1 + 96);
  v21 = *(v1 + 104);
  *(v1 + 96) = v18;
  *(v1 + 104) = v19;
  v22 = sub_232B41C8C();
  sub_232B41B94(v22, v23);
  v24 = sub_232B37B20();
  sub_232B41BEC(v24, v25);
  sub_232B13F74();
  LOBYTE(v18) = *(a1 + 112);
  sub_232B13F5C();
  *(v1 + 112) = v18;
  sub_232B13F74();
  LOBYTE(v18) = *(a1 + 113);
  sub_232B13F5C();
  *(v1 + 113) = v18;
  sub_232B13F74();
  v26 = *(a1 + 120);
  sub_232B13F5C();
  *(v1 + 120) = v26;
  sub_232B13F74();
  v27 = *(a1 + 128);
  sub_232B13F5C();
  *(v1 + 128) = v27;
  sub_232B13F74();
  v28 = *(a1 + 136);
  sub_232B13F5C();
  *(v1 + 136) = v28;
  sub_232B13F74();
  v29 = *(a1 + 144);
  sub_232B13F5C();
  *(v1 + 144) = v29;
  sub_232B13F74();
  v30 = *(a1 + 152);
  sub_232B13F5C();
  *(v1 + 152) = v30;
  sub_232B13F74();
  v31 = *(a1 + 160);
  sub_232B13F5C();
  *(v1 + 160) = v31;
  sub_232B13F74();
  v32 = *(a1 + 168);
  sub_232B13F5C();
  v33 = *(v1 + 168);
  *(v1 + 168) = v32;

  sub_232B13F74();
  v34 = *(a1 + 176);
  sub_232B13F5C();
  v35 = *(v1 + 176);
  *(v1 + 176) = v34;

  sub_232B13F74();
  v36 = *(a1 + 184);

  sub_232B13F5C();
  v37 = *(v1 + 184);
  *(v1 + 184) = v36;

  return v1;
}

void *sub_232B40014()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  sub_232B41BEC(v0[10], v0[11]);
  sub_232B41BEC(v0[12], v0[13]);
  v5 = v0[21];

  v6 = v0[22];

  v7 = v0[23];

  return v0;
}

uint64_t sub_232B40074()
{
  v0 = sub_232B40014();

  return MEMORY[0x2821FE8D8](v0, 192, 7);
}

uint64_t type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement()
{
  result = qword_2814E1A68;
  if (!qword_2814E1A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_232B4013C()
{
  result = sub_232CE9340();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_232B401C0()
{
  v1 = v0;
  v2 = *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement() + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
    swift_allocObject();
    *(v1 + v2) = sub_232B3FBE4(v5);
  }

  return sub_232B40268();
}

uint64_t sub_232B40268()
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
        sub_232B2AB88();
        break;
      case 2:
        sub_232B2AC0C();
        break;
      case 3:
        sub_232B2AC90();
        break;
      case 4:
        sub_232B404D0();
        break;
      case 5:
        sub_232B40554();
        break;
      case 6:
        sub_232B405D8();
        break;
      case 7:
        sub_232B4065C();
        break;
      case 8:
        sub_232B406E0();
        break;
      case 9:
        sub_232B40764();
        break;
      case 10:
        sub_232B407E8();
        break;
      case 11:
        sub_232B4086C();
        break;
      case 12:
        sub_232B408F0();
        break;
      case 13:
        sub_232B40974();
        break;
      case 14:
        sub_232B409F8();
        break;
      case 15:
        sub_232B40A7C();
        break;
      case 16:
        sub_232B40B00();
        break;
      case 17:
        sub_232B40B84();
        break;
      case 18:
        sub_232B40C08();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232B404D0()
{
  swift_beginAccess();
  sub_232CE9480();
  return swift_endAccess();
}

uint64_t sub_232B40554()
{
  swift_beginAccess();
  sub_232CE9460();
  return swift_endAccess();
}

uint64_t sub_232B405D8()
{
  swift_beginAccess();
  sub_232CE9420();
  return swift_endAccess();
}

uint64_t sub_232B4065C()
{
  swift_beginAccess();
  sub_232CE9420();
  return swift_endAccess();
}

uint64_t sub_232B406E0()
{
  swift_beginAccess();
  sub_232CE93C0();
  return swift_endAccess();
}

uint64_t sub_232B40764()
{
  swift_beginAccess();
  sub_232CE93C0();
  return swift_endAccess();
}

uint64_t sub_232B407E8()
{
  swift_beginAccess();
  sub_232CE9480();
  return swift_endAccess();
}

uint64_t sub_232B4086C()
{
  swift_beginAccess();
  sub_232CE9480();
  return swift_endAccess();
}

uint64_t sub_232B408F0()
{
  swift_beginAccess();
  sub_232CE9480();
  return swift_endAccess();
}

uint64_t sub_232B40974()
{
  swift_beginAccess();
  sub_232CE9480();
  return swift_endAccess();
}

uint64_t sub_232B409F8()
{
  swift_beginAccess();
  sub_232CE9480();
  return swift_endAccess();
}

uint64_t sub_232B40A7C()
{
  swift_beginAccess();
  sub_232CE9480();
  return swift_endAccess();
}

uint64_t sub_232B40B00()
{
  swift_beginAccess();
  sub_232CE9400();
  return swift_endAccess();
}

uint64_t sub_232B40B84()
{
  swift_beginAccess();
  sub_232CE9400();
  return swift_endAccess();
}

uint64_t sub_232B40C08()
{
  swift_beginAccess();
  sub_232CE9460();
  return swift_endAccess();
}

uint64_t sub_232B40C8C()
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement();
  result = sub_232B40CF8(*(v0 + *(v2 + 20)));
  if (!v1)
  {
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232B40CF8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = *(a1 + 24);

    sub_232CE95C0();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v6 = *(a1 + 40);
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = *(a1 + 40);

    sub_232CE95C0();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v9 = *(a1 + 56);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = *(a1 + 56);

    sub_232CE95C0();
    if (!v1)
    {

      goto LABEL_16;
    }
  }

LABEL_16:
  swift_beginAccess();
  if (*(a1 + 64) == 0.0 || (result = sub_232CE95B0(), !v1))
  {
    swift_beginAccess();
    if (*(*(a1 + 72) + 16))
    {
      v12 = *(a1 + 72);

      sub_232CE95A0();
      if (v1)
      {
      }
    }

    swift_beginAccess();
    if (!sub_232B3F4B0(*(a1 + 80), *(a1 + 88)))
    {
      v14 = *(a1 + 80);
      v15 = *(a1 + 88);
      sub_232B41B94(v14, v15);
      sub_232CE9580();
      if (v1)
      {
        return sub_232B41BEC(v14, v15);
      }

      sub_232B41BEC(v14, v15);
    }

    swift_beginAccess();
    if (sub_232B3F4B0(*(a1 + 96), *(a1 + 104)) || (v16 = *(a1 + 96), v17 = *(a1 + 104), sub_232B41B94(v16, v17), sub_232CE9580(), result = sub_232B41BEC(v16, v17), !v1))
    {
      swift_beginAccess();
      if (*(a1 + 112) != 1 || (result = sub_232CE9560(), !v1))
      {
        swift_beginAccess();
        if (*(a1 + 113) != 1 || (result = sub_232CE9560(), !v1))
        {
          swift_beginAccess();
          if (*(a1 + 120) == 0.0 || (result = sub_232CE95B0(), !v1))
          {
            swift_beginAccess();
            if (*(a1 + 128) == 0.0 || (result = sub_232CE95B0(), !v1))
            {
              swift_beginAccess();
              if (*(a1 + 136) == 0.0 || (result = sub_232CE95B0(), !v1))
              {
                swift_beginAccess();
                if (*(a1 + 144) == 0.0 || (result = sub_232CE95B0(), !v1))
                {
                  swift_beginAccess();
                  if (*(a1 + 152) == 0.0 || (result = sub_232CE95B0(), !v1))
                  {
                    swift_beginAccess();
                    if (*(a1 + 160) == 0.0 || (result = sub_232CE95B0(), !v1))
                    {
                      swift_beginAccess();
                      if (!*(*(a1 + 168) + 16) || (v18 = *(a1 + 168), , sub_232CE9540(), result = , !v1))
                      {
                        swift_beginAccess();
                        if (!*(*(a1 + 176) + 16) || (v19 = *(a1 + 176), , sub_232CE9540(), result = , !v1))
                        {
                          result = swift_beginAccess();
                          if (*(*(a1 + 184) + 16))
                          {

                            sub_232CE95A0();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_232B412A8(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement() + 20);
  if (*(a1 + v4) != *(a2 + v4))
  {
    v5 = *(a1 + v4);

    v6 = sub_232B41C8C();
    v8 = sub_232B4138C(v6, v7);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  sub_232CE9340();
  sub_232B41C44(&qword_27DDC6590, MEMORY[0x277D216C8]);
  return sub_232CE9CF0() & 1;
}

uint64_t sub_232B4138C(uint64_t a1, uint64_t a2)
{
  sub_232B13F74();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  sub_232B13F74();
  if (v4 != *(a2 + 16) || v5 != *(a2 + 24))
  {
    sub_232B41C8C();
    if ((sub_232CEA750() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  sub_232B13F74();
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  sub_232B13F74();
  if (v7 != *(a2 + 32) || v8 != *(a2 + 40))
  {
    sub_232B41C8C();
    if ((sub_232CEA750() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  sub_232B13F74();
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  sub_232B13F74();
  v12 = v10 == *(a2 + 48) && v11 == *(a2 + 56);
  if (v12 || (sub_232B41C8C(), (sub_232CEA750())) && (sub_232B13F74(), v13 = *(a1 + 64), sub_232B13F74(), v13 == *(a2 + 64)) && (sub_232B13F74(), v14 = *(a1 + 72), sub_232B13F74(), (sub_232B32DC4(v14, *(a2 + 72))))
  {
    sub_232B13F74();
    v15 = *(a1 + 80);
    v16 = *(a1 + 88);
    sub_232B13F74();
    v17 = *(a2 + 80);
    v18 = *(a2 + 88);

    v19 = sub_232B41C8C();
    sub_232B41B94(v19, v20);
    v21 = sub_232B37B20();
    sub_232B41B94(v21, v22);
    v23 = sub_232B41C8C();
    v24 = MEMORY[0x2383909F0](v23);
    v25 = sub_232B37B20();
    sub_232B41BEC(v25, v26);
    v27 = sub_232B41C8C();
    sub_232B41BEC(v27, v28);
    if ((v24 & 1) == 0)
    {
      goto LABEL_33;
    }

    sub_232B13F74();
    v29 = *(a1 + 96);
    v30 = *(a1 + 104);
    sub_232B13F74();
    v31 = *(a2 + 96);
    v32 = *(a2 + 104);
    v33 = sub_232B41C8C();
    sub_232B41B94(v33, v34);
    v35 = sub_232B37B20();
    sub_232B41B94(v35, v36);
    v37 = sub_232B41C8C();
    v38 = MEMORY[0x2383909F0](v37);
    v39 = sub_232B37B20();
    sub_232B41BEC(v39, v40);
    v41 = sub_232B41C8C();
    sub_232B41BEC(v41, v42);
    if ((v38 & 1) == 0)
    {
      goto LABEL_33;
    }

    sub_232B13F74();
    v43 = *(a1 + 112);
    sub_232B13F74();
    if (v43 != *(a2 + 112))
    {
      goto LABEL_33;
    }

    sub_232B13F74();
    v44 = *(a1 + 113);
    sub_232B13F74();
    if (v44 != *(a2 + 113))
    {
      goto LABEL_33;
    }

    sub_232B13F74();
    v45 = *(a1 + 120);
    sub_232B13F74();
    if (v45 != *(a2 + 120))
    {
      goto LABEL_33;
    }

    sub_232B13F74();
    v46 = *(a1 + 128);
    sub_232B13F74();
    if (v46 != *(a2 + 128))
    {
      goto LABEL_33;
    }

    sub_232B13F74();
    v47 = *(a1 + 136);
    sub_232B13F74();
    if (v47 != *(a2 + 136))
    {
      goto LABEL_33;
    }

    sub_232B13F74();
    v48 = *(a1 + 144);
    sub_232B13F74();
    if (v48 != *(a2 + 144))
    {
      goto LABEL_33;
    }

    sub_232B13F74();
    v49 = *(a1 + 152);
    sub_232B13F74();
    if (v49 != *(a2 + 152))
    {
      goto LABEL_33;
    }

    sub_232B13F74();
    v50 = *(a1 + 160);
    sub_232B13F74();
    if (v50 != *(a2 + 160))
    {
      goto LABEL_33;
    }

    sub_232B13F74();
    v51 = *(a1 + 168);
    sub_232B13F74();
    if (sub_232B34EB4(v51, *(a2 + 168)) & 1) != 0 && (sub_232B13F74(), v52 = *(a1 + 176), sub_232B13F74(), (sub_232B34EB4(v52, *(a2 + 176))))
    {
      sub_232B13F74();
      v53 = *(a1 + 184);
      sub_232B13F74();
      v54 = sub_232B32DC4(v53, *(a2 + 184));
    }

    else
    {
LABEL_33:
      v54 = 0;
    }
  }

  else
  {
LABEL_31:
    v54 = 0;
  }

  return v54 & 1;
}

uint64_t sub_232B41788()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement();
  sub_232B41C44(&qword_27DDC6E00, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B41860(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B41C44(&unk_27DDC6E10, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B418DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6348 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD4F50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232B41984(uint64_t a1)
{
  v2 = sub_232B41C44(&qword_27DDC6998, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B419F4()
{
  sub_232B41C44(&qword_27DDC6998, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement);

  return sub_232CE9500();
}

uint64_t sub_232B41B94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_232B41BEC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_232B41C44(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_232B41D44(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v3)
  {
    v4 = sub_232CE9D20();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_232B41DC4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_232CE9D50();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_232B41E58(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_232B41F10(uint64_t *a1)
{
  sub_232B459B0(*a1);
  sub_232B13F74();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

float sub_232B41FE8()
{
  sub_232B459B0(OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_fontSize);
  sub_232B13F74();
  return *v0;
}

uint64_t sub_232B42044(float a1)
{
  sub_232B459B0(OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_fontSize);
  result = sub_232B13F5C();
  *v1 = a1;
  return result;
}

uint64_t sub_232B4212C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232B42120(v4);
}

double sub_232B421C8()
{
  sub_232B459B0(OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow);
  sub_232B13F74();
  result = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  return result;
}

uint64_t sub_232B42228(double a1, double a2, double a3, double a4)
{
  sub_232B459B0(OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow);
  result = sub_232B13F5C();
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

void sub_232B42284(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = sub_232B421C8();
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
}

double sub_232B42350()
{
  sub_232B459B0(OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen);
  sub_232B13F74();
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_232B423AC(double a1, double a2)
{
  sub_232B459B0(OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen);
  result = sub_232B13F5C();
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_232B42490()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen;
  sub_232B13F74();
  return *(v0 + v1);
}

uint64_t sub_232B424F4(char a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen;
  result = sub_232B13F5C();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_232B425B0()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction;
  sub_232B13F74();
  return *(v0 + v1);
}

uint64_t sub_232B42614(char a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction;
  result = sub_232B13F5C();
  *(v1 + v3) = a1;
  return result;
}

id sub_232B426C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a3())
  {
    v3 = sub_232CE9FD0();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_232B42758(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (a3)
  {
    v7 = sub_232CE9FE0();
  }

  else
  {
    v7 = 0;
  }

  v8 = a1;
  a5(v7);
}

uint64_t sub_232B427E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232B427D8(v4);
}

uint64_t sub_232B428B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232B428A8(v4);
}

uint64_t sub_232B42984(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232B42978(v4);
}

uint64_t static DUDocumentUIElement.supportsSecureCoding.setter(char a1)
{
  result = sub_232B13F5C();
  byte_27DDC6E20 = a1;
  return result;
}

uint64_t sub_232B42B04@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27DDC6E20;
  return result;
}

uint64_t sub_232B42B50(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27DDC6E20 = v1;
  return result;
}

id DUDocumentUIElement.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUDocumentUIElement.init()()
{
  v1 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_version];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_classDescriptor];
  *v3 = 0;
  v3[1] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassIndices] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_range] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties] = 0;
  v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen] = 0;
  v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction] = 1;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_fontSize] = -1082130432;
  v4 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow];
  *v4 = 0u;
  v4[1] = 0u;
  v5 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen];
  v6 = type metadata accessor for DUDocumentUIElement();
  *v5 = 0;
  v5[1] = 0;
  v8.receiver = v0;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_232B42D00(void *a1)
{
  type metadata accessor for DUDocumentUIElement();
  sub_232B45A04();
  sub_232B45904(v2, v3, v4);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUDocumentUIElement.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232B45A04();
  sub_232B45904(v2, v3, v4);
  sub_232CE98B0();

  v5 = v7;
  if (!v7)
  {
LABEL_5:
    swift_getObjectType();
    sub_232B45ABC();
    return 0;
  }

  swift_getObjectType();
  sub_232B45ABC();
  return v5;
}

uint64_t sub_232B42F7C@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement();
  v3 = sub_232B2D120(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v8 = v7 - v6;
  sub_232B44618(v7 - v6);
  v9 = sub_232B43010(v8);
  result = sub_232B124A8(&qword_27DDC6E98, &qword_232CF7950);
  a1[3] = result;
  *a1 = v9;
  return result;
}

char *sub_232B43010(uint64_t a1)
{
  v6 = sub_232CE9DA0();
  v7 = sub_232B2D120(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v10 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  sub_232B20704();
  v15 = v14 - v13;
  v16 = [objc_allocWithZone(type metadata accessor for DUDocumentUIElement()) init];
  sub_232B4594C(a1, v15);
  v17 = *(v15 + *(v11 + 28));
  sub_232B13F74();
  v19 = *(v17 + 16);
  v18 = *(v17 + 24);
  sub_232B13F5C();
  sub_232B35134();

  sub_232B13F74();
  v21 = *(v17 + 32);
  v20 = *(v17 + 40);
  sub_232B13F5C();
  sub_232B35134();

  sub_232B13F74();
  v23 = *(v17 + 48);
  v22 = *(v17 + 56);
  sub_232B13F5C();
  sub_232B35134();

  sub_232B13F74();
  *&v1 = *(v17 + 64);
  v24 = &v16[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_fontSize];
  sub_232B13F5C();
  *v24 = v1;
  sub_232B13F74();
  v25 = *(v17 + 72);
  v26 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames;
  sub_232B13F5C();
  v27 = *&v16[v26];
  *&v16[v26] = v25;

  sub_232B13F74();
  v28 = *(v17 + 80);
  v29 = *(v17 + 88);
  v30 = sub_232B45A34();
  sub_232B41B94(v30, v31);
  sub_232CE9D90();
  sub_232B45A34();
  sub_232CE9D70();
  v33 = v32;
  v34 = sub_232B45A34();
  sub_232B41BEC(v34, v35);
  if (v33)
  {
    sub_232B45A9C();
    if (v36)
    {
      v37 = sub_232CE9D20();

      CGRectFromString(v37);
      sub_232B45A88();

      v38 = &v16[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow];
      goto LABEL_6;
    }
  }

  sub_232B13F74();
  v4 = *(v17 + 120);
  sub_232B13F74();
  v1 = *(v17 + 128);
  sub_232B13F74();
  v2 = *(v17 + 136);
  sub_232B13F74();
  v3 = *(v17 + 144);
  v38 = &v16[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow];
LABEL_6:
  sub_232B13F5C();
  *v38 = v4;
  *(v38 + 1) = v1;
  *(v38 + 2) = v2;
  *(v38 + 3) = v3;
  sub_232B13F74();
  v39 = *(v17 + 96);
  v40 = *(v17 + 104);
  sub_232B41B94(v39, v40);
  sub_232CE9D90();
  v41 = sub_232CE9D70();
  v43 = v42;
  sub_232B41BEC(v39, v40);
  if (!v43)
  {
    sub_232B44E50(a1);
LABEL_13:
    sub_232B13F74();
    v49 = *(v17 + 152);
    sub_232B13F74();
    v50 = *(v17 + 160);
    v51 = &v16[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen];
    sub_232B13F5C();
    *v51 = v49;
    *(v51 + 1) = v50;
    v52 = v16;
    goto LABEL_14;
  }

  v44 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v44 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (!v44)
  {
    sub_232B44E50(a1);

    goto LABEL_13;
  }

  v45 = v16;
  v46 = sub_232CE9D20();

  v47 = CGPointFromString(v46);

  sub_232B44E50(a1);
  v48 = &v45[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen];
  sub_232B13F5C();
  *v48 = v47;
LABEL_14:
  sub_232B13F74();
  v53 = *(v17 + 112);
  v54 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen;
  sub_232B13F5C();
  v16[v54] = v53;
  sub_232B13F74();
  v55 = *(v17 + 113);
  v56 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction;
  sub_232B13F5C();
  v16[v56] = v55;
  sub_232B13F74();
  v57 = *(v17 + 168);
  sub_232B13F5C();
  sub_232B45A40();

  sub_232B13F74();
  v58 = *(v17 + 176);
  sub_232B13F5C();
  sub_232B45A40();

  sub_232B13F74();
  v59 = *(v17 + 184);

  sub_232B44E50(v15);
  v60 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties;
  sub_232B13F5C();
  v61 = *&v16[v60];
  *&v16[v60] = v59;

  return v16;
}

char *sub_232B43518(uint64_t a1)
{
  v3 = sub_232CE9DA0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(v1) init];
  sub_232B4594C(a1, v9);
  v11 = *&v9[*(v6 + 28)];
  swift_beginAccess();
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  v14 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text];
  swift_beginAccess();
  v15 = *(v14 + 1);
  *v14 = v13;
  *(v14 + 1) = v12;

  swift_beginAccess();
  v17 = *(v11 + 32);
  v16 = *(v11 + 40);
  v18 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_version];
  swift_beginAccess();
  v19 = *(v18 + 1);
  *v18 = v17;
  *(v18 + 1) = v16;

  swift_beginAccess();
  v21 = *(v11 + 48);
  v20 = *(v11 + 56);
  v22 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_classDescriptor];
  swift_beginAccess();
  v23 = *(v22 + 1);
  *v22 = v21;
  *(v22 + 1) = v20;

  swift_beginAccess();
  v24 = *(v11 + 64);
  v25 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_fontSize];
  swift_beginAccess();
  *v25 = v24;
  swift_beginAccess();
  v26 = *(v11 + 72);
  v27 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames;
  swift_beginAccess();
  v28 = *&v10[v27];
  *&v10[v27] = v26;

  swift_beginAccess();
  v29 = *(v11 + 80);
  v30 = *(v11 + 88);
  sub_232B41B94(v29, v30);
  sub_232CE9D90();
  v31 = sub_232CE9D70();
  v33 = v32;
  sub_232B41BEC(v29, v30);
  if (v33)
  {
    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      v35 = sub_232CE9D20();

      v70 = CGRectFromString(v35);
      x = v70.origin.x;
      y = v70.origin.y;
      width = v70.size.width;
      height = v70.size.height;

      v40 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow];
      goto LABEL_8;
    }
  }

  swift_beginAccess();
  x = *(v11 + 120);
  swift_beginAccess();
  y = *(v11 + 128);
  swift_beginAccess();
  width = *(v11 + 136);
  swift_beginAccess();
  height = *(v11 + 144);
  v40 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow];
LABEL_8:
  swift_beginAccess();
  *v40 = x;
  v40[1] = y;
  v40[2] = width;
  v40[3] = height;
  swift_beginAccess();
  v41 = *(v11 + 96);
  v42 = *(v11 + 104);
  sub_232B41B94(v41, v42);
  sub_232CE9D90();
  v43 = sub_232CE9D70();
  v45 = v44;
  sub_232B41BEC(v41, v42);
  if (!v45)
  {
    sub_232B44E50(a1);
LABEL_15:
    swift_beginAccess();
    v51 = *(v11 + 152);
    swift_beginAccess();
    v52 = *(v11 + 160);
    v53 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen];
    swift_beginAccess();
    *v53 = v51;
    *(v53 + 1) = v52;
    v54 = v10;
    goto LABEL_16;
  }

  v46 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v46 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (!v46)
  {
    sub_232B44E50(a1);

    goto LABEL_15;
  }

  v47 = v10;
  v48 = sub_232CE9D20();

  v49 = CGPointFromString(v48);

  sub_232B44E50(a1);
  v50 = &v47[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen];
  swift_beginAccess();
  *v50 = v49;
LABEL_16:
  swift_beginAccess();
  v55 = *(v11 + 112);
  v56 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen;
  swift_beginAccess();
  v10[v56] = v55;
  swift_beginAccess();
  v57 = *(v11 + 113);
  v58 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction;
  swift_beginAccess();
  v10[v58] = v57;
  swift_beginAccess();
  v59 = *(v11 + 168);
  v60 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassIndices;
  swift_beginAccess();
  v61 = *&v10[v60];
  *&v10[v60] = v59;

  swift_beginAccess();
  v62 = *(v11 + 176);
  v63 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_range;
  swift_beginAccess();
  v64 = *&v10[v63];
  *&v10[v63] = v62;

  swift_beginAccess();
  v65 = *(v11 + 184);

  sub_232B44E50(v9);
  v66 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties;
  swift_beginAccess();
  v67 = *&v10[v66];
  *&v10[v66] = v65;

  return v10;
}

char *DUDocumentUIElement.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v9 = sub_232CE9DA0();
  v10 = sub_232B2D120(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_232B20704();
  v13 = sub_232B124A8(&unk_27DDC6EA0, &unk_232CF7958);
  v14 = sub_232B2D120(v13);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v88 - v18;
  v20 = *(a2 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_232B20704();
  v22 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  sub_232B20704();
  v26 = v25 - v24;
  v27 = [objc_allocWithZone(v2) init];
  v28 = *(v20 + 16);
  v29 = sub_232B45AB0();
  v30(v29);
  if (swift_dynamicCast())
  {
    v88[1] = a1;
    sub_232B12504(v19, 0, 1, v22);
    sub_232B44DEC(v19, v26);
    v31 = *(v22 + 20);
    v89 = v26;
    v32 = *(v26 + v31);
    sub_232B13F74();
    v34 = *(v32 + 16);
    v33 = *(v32 + 24);
    sub_232B13F5C();
    sub_232B45A6C();

    sub_232B13F74();
    v36 = *(v32 + 32);
    v35 = *(v32 + 40);
    sub_232B13F5C();
    sub_232B45A6C();

    sub_232B13F74();
    v38 = *(v32 + 48);
    v37 = *(v32 + 56);
    sub_232B13F5C();
    sub_232B45A6C();

    sub_232B13F74();
    *&v3 = *(v32 + 64);
    v39 = &v27[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_fontSize];
    sub_232B13F5C();
    *v39 = v3;
    sub_232B13F74();
    v40 = *(v32 + 72);
    v41 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames;
    sub_232B13F5C();
    v42 = *&v27[v41];
    *&v27[v41] = v40;

    sub_232B13F74();
    v43 = *(v32 + 80);
    v44 = *(v32 + 88);
    v45 = sub_232B45AB0();
    sub_232B41B94(v45, v46);
    sub_232CE9D90();
    sub_232B45AB0();
    v47 = sub_232CE9D70();
    v49 = v48;
    v50 = sub_232B45AB0();
    sub_232B41BEC(v50, v51);
    if (v49)
    {
      v52 = HIBYTE(v49) & 0xF;
      if ((v49 & 0x2000000000000000) == 0)
      {
        v52 = v47 & 0xFFFFFFFFFFFFLL;
      }

      if (v52)
      {
        v53 = sub_232CE9D20();

        CGRectFromString(v53);
        sub_232B45A88();

        v54 = &v27[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow];
        goto LABEL_10;
      }
    }

    sub_232B13F74();
    v6 = *(v32 + 120);
    sub_232B13F74();
    v3 = *(v32 + 128);
    sub_232B13F74();
    v4 = *(v32 + 136);
    sub_232B13F74();
    v5 = *(v32 + 144);
    v54 = &v27[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow];
LABEL_10:
    sub_232B13F5C();
    *v54 = v6;
    *(v54 + 1) = v3;
    *(v54 + 2) = v4;
    *(v54 + 3) = v5;
    sub_232B13F74();
    v55 = *(v32 + 96);
    v56 = *(v32 + 104);
    v57 = sub_232B45A34();
    sub_232B41B94(v57, v58);
    sub_232CE9D90();
    sub_232B45A34();
    sub_232CE9D70();
    v60 = v59;
    v61 = sub_232B45A34();
    sub_232B41BEC(v61, v62);
    if (v60)
    {
      sub_232B45A9C();
      if (v63)
      {
        v64 = v27;
        v65 = sub_232CE9D20();

        v66 = CGPointFromString(v65);

        v67 = sub_232B45A5C();
        v68(v67);
        v69 = &v64[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen];
        sub_232B13F5C();
        *v69 = v66;
LABEL_16:
        sub_232B13F74();
        v78 = *(v32 + 112);
        v79 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen;
        sub_232B13F5C();
        v27[v79] = v78;
        sub_232B13F74();
        v80 = *(v32 + 113);
        v81 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction;
        sub_232B13F5C();
        v27[v81] = v80;
        sub_232B13F74();
        v82 = *(v32 + 168);
        sub_232B13F5C();
        sub_232B45A40();

        sub_232B13F74();
        v83 = *(v32 + 176);
        sub_232B13F5C();
        sub_232B45A40();

        sub_232B13F74();
        v84 = *(v32 + 184);

        sub_232B44E50(v89);
        v85 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties;
        sub_232B13F5C();
        v86 = *&v27[v85];
        *&v27[v85] = v84;

        return v27;
      }

      v72 = sub_232B45A5C();
      v73(v72);
    }

    else
    {
      v70 = sub_232B45A5C();
      v71(v70);
    }

    sub_232B13F74();
    v74 = *(v32 + 152);
    sub_232B13F74();
    v75 = *(v32 + 160);
    v76 = &v27[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen];
    sub_232B13F5C();
    *v76 = v74;
    *(v76 + 1) = v75;
    v77 = v27;
    goto LABEL_16;
  }

  (*(v20 + 8))(a1, a2);

  sub_232B12504(v19, 1, 1, v22);
  sub_232B267AC(v19, &unk_27DDC6EA0, &unk_232CF7958);
  return 0;
}

uint64_t sub_232B4425C(uint64_t a1)
{
  sub_232B3A01C(a1, v45);
  if (v46)
  {
    type metadata accessor for DUDocumentUIElement();
    if (swift_dynamicCast())
    {
      v2 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text);
      sub_232B13F74();
      v3 = *v2;
      v4 = v2[1];
      v5 = &v44[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text];
      sub_232B13F74();
      v6 = v5[1];
      if (v4)
      {
        if (!v6)
        {
          goto LABEL_41;
        }

        v7 = v3 == *v5 && v4 == v6;
        if (!v7 && (sub_232B3F494() & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else if (v6)
      {
        goto LABEL_41;
      }

      v8 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_version);
      sub_232B13F74();
      v9 = *v8;
      v10 = v8[1];
      v11 = &v44[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_version];
      sub_232B13F74();
      v12 = v11[1];
      if (v10)
      {
        if (!v12)
        {
          goto LABEL_41;
        }

        v13 = v9 == *v11 && v10 == v12;
        if (!v13 && (sub_232B3F494() & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else if (v12)
      {
        goto LABEL_41;
      }

      v14 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_classDescriptor);
      sub_232B13F74();
      v15 = *v14;
      v16 = v14[1];
      v17 = &v44[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_classDescriptor];
      sub_232B13F74();
      v18 = v17[1];
      if (v16)
      {
        if (!v18)
        {
          goto LABEL_41;
        }

        v19 = v15 == *v17 && v16 == v18;
        if (!v19 && (sub_232B3F494() & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else if (v18)
      {
        goto LABEL_41;
      }

      v20 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_fontSize);
      sub_232B459E8();
      v21 = *v20;
      v22 = &v44[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_fontSize];
      sub_232B459E8();
      if (v21 == *v22)
      {
        v23 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames;
        sub_232B13F74();
        v24 = *(v1 + v23);
        v25 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames;
        sub_232B13F74();
        v26 = *&v44[v25];
        if (v24)
        {
          if (!v26 || (sub_232B32DC4(v24, v26) & 1) == 0)
          {
            goto LABEL_41;
          }

LABEL_37:
          v27 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow);
          sub_232B459E8();
          v28 = *v27;
          v29 = v27[1];
          v30 = v27[2];
          v31 = v27[3];
          v32 = &v44[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow];
          sub_232B459E8();
          v47.origin.x = v28;
          v47.origin.y = v29;
          v47.size.width = v30;
          v47.size.height = v31;
          if (CGRectEqualToRect(v47, *v32))
          {
            v33 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen);
            sub_232B459E8();
            v35 = *v33;
            v34 = v33[1];
            v36 = &v44[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen];
            sub_232B459E8();
            if (v35 == *v36 && v34 == v36[1])
            {
              v37 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen;
              sub_232B13F74();
              LODWORD(v37) = *(v1 + v37);
              v38 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen;
              sub_232B13F74();
              if (v37 == v44[v38])
              {
                v41 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction;
                sub_232B13F74();
                v42 = *(v1 + v41);
                v43 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction;
                sub_232B13F74();
                LOBYTE(v43) = v44[v43];

                v39 = v42 ^ v43 ^ 1;
                return v39 & 1;
              }
            }
          }

          goto LABEL_41;
        }

        if (!v26)
        {
          goto LABEL_37;
        }
      }

LABEL_41:
    }
  }

  else
  {
    sub_232B267AC(v45, &qword_27DDC68C8, &qword_232CF6210);
  }

  v39 = 0;
  return v39 & 1;
}

uint64_t sub_232B44618@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v139 = sub_232CE9DA0();
  v141 = *(v139 - 8);
  v4 = *(v141 + 64);
  MEMORY[0x28223BE20](v139);
  sub_232B20704();
  v138 = v6 - v5;
  sub_232CE9330();
  v7 = *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement() + 20);
  if (qword_27DDC6350 != -1)
  {
    swift_once();
  }

  *(a1 + v7) = qword_27DDC6DF0;
  v8 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text);
  sub_232B13F74();
  v9 = v8[1];
  if (v9)
  {
    v10 = *v8;

    v11 = *(a1 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a1 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
      sub_232B45A1C();
      v14 = sub_232B459C0();
      sub_232B459DC(v14);
    }

    sub_232B13F5C();
    v15 = *(v13 + 24);
    *(v13 + 16) = v10;
    *(v13 + 24) = v9;
  }

  else
  {
  }

  v16 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_version);
  sub_232B13F74();
  v17 = v16[1];
  if (v17)
  {
    v18 = *v16;
    v19 = v16[1];

    v20 = *(a1 + v7);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(a1 + v7);
    if ((v21 & 1) == 0)
    {
      type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
      sub_232B45A1C();
      v23 = sub_232B459C0();
      sub_232B459DC(v23);
    }

    sub_232B13F5C();
    v24 = *(v22 + 40);
    *(v22 + 32) = v18;
    *(v22 + 40) = v17;
  }

  v25 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_classDescriptor);
  sub_232B13F74();
  v26 = v25[1];
  if (v26)
  {
    v27 = *v25;
    v28 = v25[1];

    v29 = *(a1 + v7);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(a1 + v7);
    if ((v30 & 1) == 0)
    {
      type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
      sub_232B45A1C();
      v32 = sub_232B459C0();
      sub_232B459DC(v32);
    }

    sub_232B13F5C();
    v33 = *(v31 + 56);
    *(v31 + 48) = v27;
    *(v31 + 56) = v26;
  }

  v34 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames;
  sub_232B13F74();
  v35 = *(v2 + v34);
  if (v35)
  {
    v36 = *(v2 + v34);

    v37 = *(a1 + v7);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(a1 + v7);
    if ((v38 & 1) == 0)
    {
      type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
      sub_232B45A1C();
      v40 = sub_232B459C0();
      sub_232B459DC(v40);
    }

    sub_232B13F5C();
    v41 = *(v39 + 72);
    *(v39 + 72) = v35;
  }

  v42 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_fontSize);
  sub_232B13F74();
  v43 = *v42;
  v44 = *(a1 + v7);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(a1 + v7);
  if ((v45 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
    sub_232B45A1C();
    v47 = sub_232B459C0();
    sub_232B459DC(v47);
  }

  sub_232B13F5C();
  *(v46 + 64) = v43;
  v140 = v2;
  v48 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow);
  sub_232B13F74();
  v49 = NSStringFromCGRect(*v48);
  sub_232CE9D50();

  sub_232CE9D90();
  v50 = sub_232CE9D60();
  v52 = v51;

  v53 = *(v141 + 8);
  v53(v138, v139);
  if (v52 >> 60 != 15)
  {
    v54 = *(a1 + v7);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(a1 + v7);
    if ((v55 & 1) == 0)
    {
      type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
      sub_232B45A1C();
      v57 = sub_232B459C0();
      sub_232B459DC(v57);
    }

    sub_232B13F5C();
    v58 = *(v56 + 80);
    v59 = *(v56 + 88);
    *(v56 + 80) = v50;
    *(v56 + 88) = v52;
    sub_232B41BEC(v58, v59);
  }

  v60 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen);
  sub_232B13F74();
  v61 = NSStringFromCGPoint(*v60);
  sub_232CE9D50();

  sub_232CE9D90();
  v62 = sub_232CE9D60();
  v64 = v63;

  v53(v138, v139);
  if (v64 >> 60 != 15)
  {
    v65 = *(a1 + v7);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v67 = *(a1 + v7);
    if ((v66 & 1) == 0)
    {
      type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
      sub_232B45A1C();
      v68 = sub_232B459C0();
      sub_232B459DC(v68);
    }

    sub_232B13F5C();
    v69 = *(v67 + 96);
    v70 = *(v67 + 104);
    *(v67 + 96) = v62;
    *(v67 + 104) = v64;
    sub_232B41BEC(v69, v70);
  }

  v71 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen;
  sub_232B13F74();
  v72 = *(v2 + v71);
  v73 = *(a1 + v7);
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *(a1 + v7);
  if ((v74 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
    sub_232B45A1C();
    v76 = sub_232B459C0();
    sub_232B459DC(v76);
  }

  sub_232B13F5C();
  *(v75 + 112) = v72;
  v77 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction;
  sub_232B13F74();
  v78 = *(v2 + v77);
  v79 = *(a1 + v7);
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *(a1 + v7);
  if ((v80 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
    sub_232B45A1C();
    v82 = sub_232B459C0();
    sub_232B459DC(v82);
  }

  sub_232B13F5C();
  *(v81 + 113) = v78;
  x = v48->origin.x;
  v84 = *(a1 + v7);
  v85 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *(a1 + v7);
  if ((v85 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
    sub_232B45A1C();
    v87 = sub_232B459C0();
    sub_232B459DC(v87);
  }

  sub_232B13F5C();
  *(v86 + 120) = x;
  y = v48->origin.y;
  v89 = *(a1 + v7);
  v90 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *(a1 + v7);
  if ((v90 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
    sub_232B45A1C();
    v92 = sub_232B459C0();
    sub_232B459DC(v92);
  }

  sub_232B13F5C();
  *(v91 + 128) = y;
  width = v48->size.width;
  v94 = *(a1 + v7);
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *(a1 + v7);
  if ((v95 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
    sub_232B45A1C();
    v97 = sub_232B459C0();
    sub_232B459DC(v97);
  }

  sub_232B13F5C();
  *(v96 + 136) = width;
  height = v48->size.height;
  v99 = *(a1 + v7);
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *(a1 + v7);
  if ((v100 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
    sub_232B45A1C();
    v102 = sub_232B459C0();
    sub_232B459DC(v102);
  }

  sub_232B13F5C();
  *(v101 + 144) = height;
  v103 = v60->x;
  v104 = *(a1 + v7);
  v105 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *(a1 + v7);
  if ((v105 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
    sub_232B45A1C();
    v107 = sub_232B459C0();
    sub_232B459DC(v107);
  }

  sub_232B13F5C();
  *(v106 + 152) = v103;
  v108 = v60->y;
  v109 = *(a1 + v7);
  v110 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *(a1 + v7);
  if ((v110 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
    sub_232B45A1C();
    v112 = sub_232B459C0();
    sub_232B459DC(v112);
  }

  sub_232B13F5C();
  *(v111 + 160) = v108;
  v113 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassIndices;
  sub_232B13F74();
  v114 = *(v2 + v113);
  if (v114)
  {
    v115 = *(v140 + v113);

    v116 = *(a1 + v7);
    v117 = swift_isUniquelyReferenced_nonNull_native();
    v118 = *(a1 + v7);
    if ((v117 & 1) == 0)
    {
      type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
      sub_232B45A1C();
      v119 = sub_232B459C0();
      sub_232B459DC(v119);
    }

    sub_232B13F5C();
    v120 = *(v118 + 168);
    *(v118 + 168) = v114;
  }

  v121 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_range;
  sub_232B13F74();
  v122 = *(v140 + v121);
  if (v122)
  {
    v123 = *(v140 + v121);

    v124 = *(a1 + v7);
    v125 = swift_isUniquelyReferenced_nonNull_native();
    v126 = *(a1 + v7);
    if ((v125 & 1) == 0)
    {
      type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
      sub_232B45A1C();
      v127 = sub_232B459C0();
      sub_232B459DC(v127);
    }

    sub_232B13F5C();
    v128 = *(v126 + 176);
    *(v126 + 176) = v122;
  }

  v129 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties;
  result = sub_232B13F74();
  v131 = *(v140 + v129);
  if (v131)
  {
    v132 = *(v140 + v129);

    v133 = *(a1 + v7);
    v134 = swift_isUniquelyReferenced_nonNull_native();
    v135 = *(a1 + v7);
    if ((v134 & 1) == 0)
    {
      type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
      sub_232B45A1C();
      v136 = sub_232B459C0();
      sub_232B459DC(v136);
    }

    sub_232B13F5C();
    v137 = *(v135 + 184);
    *(v135 + 184) = v131;
  }

  return result;
}

uint64_t sub_232B44DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B44E50(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id DUDocumentUIElement.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUDocumentUIElement();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232B44FAC@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232B43518(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232B45904(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_232B4594C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B459C0()
{

  return sub_232B3FBE4(v0);
}

uint64_t sub_232B459E8()
{

  return swift_beginAccess();
}

uint64_t sub_232B45A1C()
{

  return swift_allocObject();
}

uint64_t sub_232B45A40()
{
  v4 = *(v0 + v2);
  *(v0 + v2) = v1;
}

uint64_t sub_232B45A6C()
{
  v4 = v1[1];
  *v1 = v2;
  v1[1] = v0;
}

uint64_t sub_232B45ABC()
{

  return swift_deallocPartialClassInstance();
}

uint64_t type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate()
{
  result = qword_27DDC6F18;
  if (!qword_27DDC6F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_232B45B50()
{
  sub_232B45D10(319, &qword_27DDC6F28, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute, MEMORY[0x277D83940]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_232CE9340();
    if (v3 <= 0x3F)
    {
      sub_232B45D10(319, &qword_27DDC6F30, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier, MEMORY[0x277D83D88]);
      v1 = v4;
      if (v5 <= 0x3F)
      {
        sub_232B21E3C(319, &qword_2814DFA10);
        v1 = v6;
        if (v7 <= 0x3F)
        {
          sub_232B45D10(319, &qword_27DDC6F38, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document, MEMORY[0x277D83D88]);
          if (v9 > 0x3F)
          {
            return v8;
          }

          else
          {
            sub_232B21E3C(319, &qword_27DDC6840);
            v1 = v10;
            if (v11 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_232B45D10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_232B45D74@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate();
  v3 = a1 + v2[5];
  sub_232CE9330();
  v4 = v2[6];
  v5 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier();
  sub_232B12504(a1 + v4, 1, 1, v5);
  v6 = (a1 + v2[7]);
  *v6 = 0;
  v6[1] = 0;
  v7 = v2[8];
  v8 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  result = sub_232B12504(a1 + v7, 1, 1, v8);
  v10 = (a1 + v2[9]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v2[10]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a1 + v2[11];
  *v12 = 0;
  v12[8] = 1;
  return result;
}

uint64_t sub_232B45E38()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4F68);
  sub_232B135C4(v0, qword_27DDD4F68);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF79E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "documentId";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "documentBody";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 7;
  *v12 = "document";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "associatedFileURL";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 3;
  *v16 = "documentType";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 4;
  *v18 = "documentAttributes";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 5;
  *v20 = "updateTimestamp";
  *(v20 + 1) = 15;
  v20[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232B46138()
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
        sub_232B13EE0();
        sub_232B46218();
        break;
      case 2:
        sub_232B13EE0();
        sub_232B462CC();
        break;
      case 3:
        sub_232B13EE0();
        sub_232B46330();
        break;
      case 4:
        sub_232B13EE0();
        sub_232B46394();
        break;
      case 5:
        sub_232B13EE0();
        sub_232B46434();
        break;
      case 6:
        sub_232B13EE0();
        sub_232B46498();
        break;
      case 7:
        sub_232B13EE0();
        sub_232B464FC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232B46218()
{
  v0 = *(type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate() + 24);
  type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier();
  sub_232B4781C(&qword_27DDC6CC8, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);
  return sub_232CE94C0();
}

uint64_t sub_232B46394()
{
  type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute();
  sub_232B4781C(&qword_27DDC69E8, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);
  return sub_232CE94B0();
}

uint64_t sub_232B464FC()
{
  v0 = *(type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate() + 32);
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  sub_232B4781C(&qword_27DDC6978, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
  return sub_232CE94C0();
}

uint64_t sub_232B465B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_232B46708(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = sub_232B47864();
    sub_232B468DC(v7);
    v8 = sub_232B47864();
    sub_232B46954(v8);
    v9 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute();
      sub_232B4781C(&qword_27DDC69E8, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);
      sub_232CE95D0();
    }

    v10 = sub_232B47864();
    sub_232B469CC(v10);
    v11 = sub_232B47864();
    sub_232B46A44(v11);
    v12 = sub_232B47864();
    sub_232B46ABC(v12, v13, v14, v15);
    v16 = v5 + *(type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate() + 20);
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232B46708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_232B124A8(&qword_27DDC6D18, &qword_232CF7420);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate();
  sub_232B34D3C(a1 + *(v13 + 24), v8, &qword_27DDC6D18, &qword_232CF7420);
  if (sub_232B12480(v8, 1, v9) == 1)
  {
    return sub_232B13790(v8, &qword_27DDC6D18, &qword_232CF7420);
  }

  sub_232B47764(v8, v12, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);
  sub_232B4781C(&qword_27DDC6CC8, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);
  sub_232CE95E0();
  return sub_232B477C4(v12, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);
}

uint64_t sub_232B468DC(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate();
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B46954(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate();
  v3 = (a1 + *(result + 40));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B469CC(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate();
  v3 = (a1 + *(result + 44));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B46A44(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate();
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B46ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_232B124A8(&qword_27DDC6F10, &unk_232CF8420);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate();
  sub_232B34D3C(a1 + *(v13 + 32), v8, &qword_27DDC6F10, &unk_232CF8420);
  if (sub_232B12480(v8, 1, v9) == 1)
  {
    return sub_232B13790(v8, &qword_27DDC6F10, &unk_232CF8420);
  }

  sub_232B47764(v8, v12, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
  sub_232B4781C(&qword_27DDC6978, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
  sub_232CE95E0();
  return sub_232B477C4(v12, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
}

uint64_t sub_232B46C90(void *a1, uint64_t *a2)
{
  v90 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  v4 = sub_232B13F24(v90);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v87 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_232B124A8(&qword_27DDC6F10, &unk_232CF8420) - 8) + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v9);
  v88 = &v86 - v10;
  v89 = sub_232B124A8(&qword_27DDC6F68, &qword_232CF7BA0);
  sub_232B13F24(v89);
  v12 = *(v11 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v13);
  v91 = &v86 - v14;
  v15 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier();
  v16 = sub_232B13F24(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(*(sub_232B124A8(&qword_27DDC6D18, &qword_232CF7420) - 8) + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v22);
  v24 = &v86 - v23;
  v25 = (sub_232B124A8(&qword_27DDC6F70, &qword_232CF7BA8) - 8);
  v26 = *(*v25 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v27);
  v29 = &v86 - v28;
  v92 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate();
  v93 = a1;
  v30 = *(v92 + 24);
  v31 = v25[14];
  sub_232B34D3C(a1 + v30, v29, &qword_27DDC6D18, &qword_232CF7420);
  sub_232B34D3C(a2 + v30, &v29[v31], &qword_27DDC6D18, &qword_232CF7420);
  sub_232B478A8(v29);
  if (v32)
  {
    sub_232B478A8(&v29[v31]);
    if (v32)
    {
      sub_232B13790(v29, &qword_27DDC6D18, &qword_232CF7420);
      goto LABEL_14;
    }

LABEL_9:
    v33 = &qword_27DDC6F70;
    v34 = &qword_232CF7BA8;
    v35 = v29;
LABEL_10:
    sub_232B13790(v35, v33, v34);
    goto LABEL_11;
  }

  sub_232B34D3C(v29, v24, &qword_27DDC6D18, &qword_232CF7420);
  sub_232B478A8(&v29[v31]);
  if (v32)
  {
    sub_232B477C4(v24, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);
    goto LABEL_9;
  }

  sub_232B47764(&v29[v31], v20, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);
  v38 = sub_232B3AD78();
  sub_232B477C4(v20, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);
  sub_232B477C4(v24, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);
  sub_232B13790(v29, &qword_27DDC6D18, &qword_232CF7420);
  if ((v38 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v40 = v92;
  v39 = v93;
  v41 = *(v92 + 28);
  v42 = *(a2 + v41 + 8);
  if (*(v93 + v41 + 8))
  {
    v43 = v91;
    if (!v42)
    {
      goto LABEL_11;
    }

    sub_232B2DF50((v93 + v41));
    v46 = v32 && v44 == v45;
    if (!v46 && (sub_232CEA750() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v43 = v91;
    if (v42)
    {
      goto LABEL_11;
    }
  }

  v47 = v40[8];
  v48 = *(v89 + 48);
  sub_232B34D3C(v39 + v47, v43, &qword_27DDC6F10, &unk_232CF8420);
  sub_232B34D3C(a2 + v47, v43 + v48, &qword_27DDC6F10, &unk_232CF8420);
  v49 = v90;
  if (sub_232B12480(v43, 1, v90) != 1)
  {
    v50 = v88;
    sub_232B34D3C(v43, v88, &qword_27DDC6F10, &unk_232CF8420);
    if (sub_232B12480(v43 + v48, 1, v49) != 1)
    {
      v51 = v43 + v48;
      v52 = v87;
      sub_232B47764(v51, v87, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
      v53 = *(v49 + 20);
      v54 = *(v50 + v53);
      v55 = *(v52 + v53);
      if (v54 == v55 || (, , v56 = sub_232B2C168(v54, v55), , , v56))
      {
        sub_232CE9340();
        sub_232B4787C();
        sub_232B4781C(v57, v58);
        v59 = v88;
        v60 = sub_232CE9CF0();
        sub_232B477C4(v52, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
        sub_232B477C4(v59, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
        sub_232B13790(v43, &qword_27DDC6F10, &unk_232CF8420);
        if ((v60 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_33;
      }

      sub_232B477C4(v52, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
      sub_232B477C4(v88, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
      v33 = &qword_27DDC6F10;
      v34 = &unk_232CF8420;
      goto LABEL_29;
    }

    sub_232B477C4(v50, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
LABEL_28:
    v33 = &qword_27DDC6F68;
    v34 = &qword_232CF7BA0;
LABEL_29:
    v35 = v43;
    goto LABEL_10;
  }

  if (sub_232B12480(v43 + v48, 1, v49) != 1)
  {
    goto LABEL_28;
  }

  sub_232B13790(v43, &qword_27DDC6F10, &unk_232CF8420);
LABEL_33:
  v61 = v40[9];
  sub_232B47894();
  if (v64)
  {
    if (!v62)
    {
      goto LABEL_11;
    }

    sub_232B2DF50(v63);
    v67 = v32 && v65 == v66;
    if (!v67 && (sub_232CEA750() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v62)
  {
    goto LABEL_11;
  }

  v68 = v40[10];
  sub_232B47894();
  if (v71)
  {
    if (!v69)
    {
      goto LABEL_11;
    }

    sub_232B2DF50(v70);
    v74 = v32 && v72 == v73;
    if (!v74 && (sub_232CEA750() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v69)
  {
    goto LABEL_11;
  }

  v75 = *v39;
  v76 = *a2;
  sub_232B32B74();
  if (v77)
  {
    v78 = v40[11];
    v79 = (v39 + v78);
    v80 = *(v39 + v78 + 8);
    v81 = (a2 + v78);
    v82 = *(a2 + v78 + 8);
    if (v80)
    {
      if (v82)
      {
LABEL_59:
        v83 = v40[5];
        sub_232CE9340();
        sub_232B4787C();
        sub_232B4781C(v84, v85);
        v36 = sub_232CE9CF0();
        return v36 & 1;
      }
    }

    else
    {
      if (*v79 != *v81)
      {
        LOBYTE(v82) = 1;
      }

      if ((v82 & 1) == 0)
      {
        goto LABEL_59;
      }
    }
  }

LABEL_11:
  v36 = 0;
  return v36 & 1;
}

uint64_t sub_232B47358()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate();
  sub_232B4781C(&qword_27DDC6F50, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B47430(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B4781C(&qword_27DDC6F60, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B474AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6358 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD4F68);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232B47554(uint64_t a1)
{
  v2 = sub_232B4781C(&qword_27DDC6F48, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B475C4()
{
  sub_232B4781C(&qword_27DDC6F48, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate);

  return sub_232CE9500();
}

uint64_t sub_232B47764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_232B13F24(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_232B477C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_232B13F24(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_232B4781C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232B478C8(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = swift_task_alloc();
  v2[15] = v3;
  *v3 = v2;
  v3[1] = sub_232B47980;

  return sub_232B9A774();
}

uint64_t sub_232B47980()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  sub_232B26B3C();
  *v7 = v6;
  *(v8 + 128) = v0;

  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232B47A7C()
{
  v1 = v0[16];
  v2 = v0[14];
  v0[7] = v0[13];
  v0[8] = v2;
  v0[9] = 4091452;
  v0[10] = 0xE300000000000000;
  v0[11] = 10;
  v0[12] = 0xE100000000000000;
  sub_232B48080();
  v3 = sub_232CEA3B0();
  v5 = v4;
  v6 = v0[5];
  v7 = v0[6];
  sub_232B203C8(v0 + 2, v6);
  v8 = (*(v7 + 8))(v3, v5, v6, v7);

  v9 = sub_232B2040C(v0 + 2);
  v10 = v0[1];
  if (!v1)
  {
    v9 = v8;
  }

  return v10(v9);
}

uint64_t sub_232B47BDC(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = swift_task_alloc();
  v2[15] = v3;
  *v3 = v2;
  v3[1] = sub_232B47C94;

  return sub_232B9E390();
}

uint64_t sub_232B47C94()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  sub_232B26B3C();
  *v7 = v6;
  *(v8 + 128) = v0;

  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232B47D90(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = swift_task_alloc();
  v2[15] = v3;
  *v3 = v2;
  v3[1] = sub_232B47C94;

  return sub_232BE40E8();
}

uint64_t sub_232B47E48(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = swift_task_alloc();
  v2[15] = v3;
  *v3 = v2;
  v3[1] = sub_232B47C94;

  return sub_232B9E390();
}

uint64_t sub_232B47F00()
{
  sub_232B482F8();
  sub_232B482AC();
  v0 = sub_232B482CC(&unk_232CF7BE0);
  v1 = sub_232B482EC(v0);
  *v1 = v2;
  v3 = sub_232B48290(v1);

  return v4(v3);
}

uint64_t sub_232B47F90()
{
  sub_232B26C44();
  v3 = v2;
  sub_232B26C70();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_232B26B3C();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

unint64_t sub_232B48080()
{
  result = qword_2814DFA30;
  if (!qword_2814DFA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DFA30);
  }

  return result;
}

uint64_t sub_232B480D4()
{
  sub_232B482F8();
  sub_232B482AC();
  v0 = sub_232B482CC(&unk_232CF7BF0);
  v1 = sub_232B482EC(v0);
  *v1 = v2;
  v3 = sub_232B48290(v1);

  return v4(v3);
}

uint64_t sub_232B48164()
{
  sub_232B482F8();
  sub_232B482AC();
  v0 = sub_232B482CC(&unk_232CF7C00);
  v1 = sub_232B482EC(v0);
  *v1 = v2;
  v3 = sub_232B48290(v1);

  return v4(v3);
}

uint64_t sub_232B481F4()
{
  sub_232B482F8();
  sub_232B482AC();
  v0 = sub_232B482CC(dword_232CF7C10);
  v1 = sub_232B482EC(v0);
  *v1 = v2;
  v3 = sub_232B48290(v1);

  return v4(v3);
}

uint64_t sub_232B482CC@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

void sub_232B48310(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v42 = MEMORY[0x277D84F90];
    sub_232B649F4(0, v1, 0);
    v3 = v42;
    v4 = sub_232BD3E90(v2);
    v6 = v5;
    v8 = v7;
    v9 = v2 + 56;
    v10 = objc_opt_self();
    v11 = v6;
    v38 = v2;
    v39 = v10;
    v12 = 0;
    v35 = v2 + 64;
    v36 = v1;
    v37 = v2 + 56;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(v2 + 32))
      {
        v13 = v4 >> 6;
        if ((*(v9 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v2 + 36) != v11)
        {
          goto LABEL_26;
        }

        v41 = v8;
        v40 = v11;
        v14 = (*(v2 + 48) + 16 * v4);
        v15 = *v14;
        v16 = v14[1];

        v17 = v3;
        MEMORY[0x238391C30](v15, v16);
        v18 = sub_232CE9D20();

        v19 = [v39 escapedPatternForString_];

        v3 = v17;
        v20 = sub_232CE9D50();
        v22 = v21;

        v24 = *(v3 + 16);
        v23 = *(v3 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_232B649F4(v23 > 1, v24 + 1, 1);
        }

        *(v3 + 16) = v24 + 1;
        v25 = v3 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v22;
        if (v41)
        {
          goto LABEL_30;
        }

        v9 = v37;
        v2 = v38;
        v26 = 1 << *(v38 + 32);
        if (v4 >= v26)
        {
          goto LABEL_27;
        }

        v27 = *(v37 + 8 * v13);
        if ((v27 & (1 << v4)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v38 + 36) != v40)
        {
          goto LABEL_29;
        }

        v28 = v27 & (-2 << (v4 & 0x3F));
        if (v28)
        {
          v26 = __clz(__rbit64(v28)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v29 = v3;
          v30 = v13 << 6;
          v31 = v13 + 1;
          v32 = (v35 + 8 * v13);
          while (v31 < (v26 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              sub_232B48E94(v4, v40, 0);
              v26 = __clz(__rbit64(v33)) + v30;
              goto LABEL_19;
            }
          }

          sub_232B48E94(v4, v40, 0);
LABEL_19:
          v3 = v29;
        }

        if (++v12 == v36)
        {
          return;
        }

        v8 = 0;
        v11 = *(v38 + 36);
        v4 = v26;
        if (v26 < 0)
        {
          break;
        }
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
LABEL_30:
    __break(1u);
  }
}

unint64_t sub_232B485EC(char a1)
{
  result = 2038004089;
  switch(a1)
  {
    case 1:
      result = 0x2D4D4D2D79797979;
      break;
    case 2:
      result = 0x73733A6D6D3A4848;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_232B48690()
{
  result = sub_232C0D410(&unk_28480D620);
  qword_27DDC6F78 = result;
  return result;
}

id sub_232B486B8()
{
  result = [objc_allocWithZone(MEMORY[0x277D04228]) initWithScannerType:0 passiveIntent:1];
  qword_27DDC6F80 = result;
  return result;
}

uint64_t sub_232B486F4(uint64_t a1, unint64_t a2)
{
  v91 = a2;
  v93 = a1;
  v2 = sub_232CE89D0();
  v3 = sub_232B48F0C(v2);
  v85 = v4;
  v86 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v92 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232CE8DD0();
  v96 = sub_232B48F0C(v8);
  v97 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v96);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = MEMORY[0x277D84F90];
  v14 = 10;
  sub_232B649F4(0, 10, 0);
  v15 = v99;
  v16 = objc_opt_self();
  v17 = &unk_28480D588;
  do
  {
    v18 = *(v17 - 1);
    v19 = *v17;

    v20 = sub_232CE9D20();
    v21 = [v16 escapedPatternForString_];

    v22 = sub_232CE9D50();
    v24 = v23;

    v99 = v15;
    v26 = *(v15 + 16);
    v25 = *(v15 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_232B649F4(v25 > 1, v26 + 1, 1);
      v15 = v99;
    }

    *(v15 + 16) = v26 + 1;
    v27 = v15 + 16 * v26;
    *(v27 + 32) = v22;
    *(v27 + 40) = v24;
    v17 += 2;
    --v14;
  }

  while (v14);
  v99 = v15;
  v28 = sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
  v29 = sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0);
  v84 = sub_232B48EC4();
  v31 = v30;

  v32 = sub_232CE8DC0();
  v33 = *(v32 + 16);
  if (v33)
  {
    v88 = v29;
    v89 = v28;
    v90 = v31;
    v99 = MEMORY[0x277D84F90];
    sub_232B649F4(0, v33, 0);
    v34 = v99;
    v35 = *(v97 + 16);
    v36 = *(v97 + 80);
    v87 = v32;
    v37 = v32 + ((v36 + 32) & ~v36);
    v94 = *(v97 + 72);
    v95 = v35;
    v97 += 16;
    v38 = (v97 - 8);
    do
    {
      v39 = v96;
      v95(v13, v37, v96);
      sub_232CE8D70();
      v40 = sub_232CE9DD0();
      v42 = v41;

      (*v38)(v13, v39);
      v99 = v34;
      v44 = *(v34 + 16);
      v43 = *(v34 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_232B649F4(v43 > 1, v44 + 1, 1);
        v34 = v99;
      }

      *(v34 + 16) = v44 + 1;
      v45 = v34 + 16 * v44;
      *(v45 + 32) = v40;
      *(v45 + 40) = v42;
      v37 += v94;
      --v33;
    }

    while (v33);

    v31 = v90;
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
  }

  v46 = sub_232BDC7F4(v34);
  if (qword_27DDC6360 != -1)
  {
    swift_once();
  }

  v48 = sub_232C0A4F4(v47, v46);
  sub_232B48310(v48);
  v50 = v49;

  v99 = v50;
  v51 = sub_232B48EC4();
  v53 = v52;

  v99 = 40;
  v100 = 0xE100000000000000;
  MEMORY[0x238391C30](v51, v53);

  MEMORY[0x238391C30](9257, 0xE200000000000000);
  v54 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v55 = sub_232B48EA0();
  v56 = v92;
  v58 = v55;
  if (v55)
  {
    v98 = 15;
    v99 = v93;
    v100 = v91;

    v59 = sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
    v60 = sub_232B48E4C(&qword_27DDC6F90, &qword_27DDC6F88, &qword_232CFA0B0);
    sub_232B48080();
    v96 = v60;
    v97 = v59;
    sub_232CEA320();
    v61 = sub_232CE9D20();
    v62 = sub_232CE9D20();
    v63 = sub_232B48EE8(v58, sel_stringByReplacingMatchesInString_options_range_withTemplate_);

    v64 = sub_232CE9D50();
    v66 = v65;

    v99 = v64;
    v100 = v66;
    sub_232CE89B0();
    v93 = sub_232CEA3A0();
    v67 = v31;
    v69 = v68;
    v70 = v86;
    v71 = v56;
    v72 = *(v85 + 8);
    v72(v71, v86);

    v99 = 40;
    v100 = 0xE100000000000000;
    MEMORY[0x238391C30](v84, v67);

    MEMORY[0x238391C30](9257, 0xE200000000000000);
    v73 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v74 = sub_232B48EA0();
    v75 = v74;
    v95 = v72;
    if (v74)
    {
      v98 = 15;
      v99 = v93;
      v100 = v69;

      sub_232CEA320();
      v76 = v70;
      v77 = sub_232CE9D20();

      v78 = sub_232CE9D20();
      v79 = sub_232B48EE8(v75, sel_stringByReplacingMatchesInString_options_range_withTemplate_);

      v80 = sub_232CE9D50();
      v82 = v81;

      v99 = v80;
      v100 = v82;
      v83 = v92;
      sub_232CE89B0();
      v93 = sub_232CEA3A0();

      (v95)(v83, v76);
    }

    else
    {
    }
  }

  else
  {
  }

  return v93;
}

uint64_t sub_232B48E4C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_232B48E94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id sub_232B48EA0()
{

  return sub_232BA1978(v0, v1, 1);
}

uint64_t sub_232B48EC4()
{

  return sub_232CE9CD0();
}

id sub_232B48EE8(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_232B48F58(char a1)
{
  sub_232CEA820();
  MEMORY[0x2383925C0](a1 & 1);
  return sub_232CEA850();
}

uint64_t sub_232B48FBC()
{
  v1 = *v0;
  sub_232CEA820();
  MEMORY[0x2383925C0](v1);
  return sub_232CEA850();
}

uint64_t sub_232B49010@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUBackboneEncodingSmolBERToSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_281931808;
  *a1 = result;
  return result;
}

id sub_232B49058()
{
  v1 = sub_232B124A8(&qword_27DDC6FD8, &qword_232CF7CD0);
  v2 = sub_232B4ACFC(v1);
  v50 = v3;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v2);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v51 = &v48 - v10;
  MEMORY[0x28223BE20](v9);
  v52 = &v48 - v11;
  v12 = sub_232CE96F0();
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  v15 = "DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData";
  if (v13)
  {
    v16 = v0;
    v53 = MEMORY[0x277D84F90];
    sub_232B64A14(0, v13, 0);
    v17 = 32;
    v18 = v53;
    v0 = 2139095039;
    while (1)
    {
      v19 = *(v12 + v17);
      if ((LODWORD(v19) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        break;
      }

      if (v19 <= -2147500000.0)
      {
        goto LABEL_27;
      }

      if (v19 >= 2147500000.0)
      {
        goto LABEL_28;
      }

      v53 = v18;
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_232B64A14(v20 > 1, v21 + 1, 1);
        v18 = v53;
      }

      *(v18 + 16) = v21 + 1;
      *(v18 + 4 * v21 + 32) = v19;
      v17 += 4;
      if (!--v13)
      {

        v0 = v16;
        v15 = "DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData";
        v14 = MEMORY[0x277D84F90];
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_11:
  v53 = v18;
  sub_232B124A8(&qword_27DDC6FE0, &qword_232CF7CD8);
  v13 = sub_232B4AAA4(&qword_27DDC6FE8, &qword_27DDC6FE0, &qword_232CF7CD8);
  sub_232CE9A50();
  v22 = sub_232CE96A0();
  v23 = *(v22 + 16);
  if (v23)
  {
    v49 = v0;
    v53 = v14;
    sub_232B64A14(0, v23, 0);
    v0 = 32;
    v24 = v53;
    v25 = *(v15 + 784);
    while (1)
    {
      v26 = *(v22 + v0);
      if ((LODWORD(v26) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        break;
      }

      if (v26 <= v25)
      {
        goto LABEL_30;
      }

      if (v26 >= 2147500000.0)
      {
        goto LABEL_31;
      }

      v53 = v24;
      v28 = *(v24 + 16);
      v27 = *(v24 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_232B64A14(v27 > 1, v28 + 1, 1);
        v24 = v53;
      }

      *(v24 + 16) = v28 + 1;
      *(v24 + 4 * v28 + 32) = v26;
      v0 += 4;
      if (!--v23)
      {

        v0 = v49;
        goto LABEL_21;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    sub_232B4ACC0();
    swift_once();
    v37 = sub_232CE9A30();
    sub_232B135C4(v37, qword_2814E3DA8);
    v38 = v8;
    v39 = sub_232CE9A00();
    v40 = sub_232CEA1C0();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = v8;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_232B02000, v39, v40, "Error building embedding model inputs: %@", v41, 0xCu);
      sub_232B267AC(v42, &qword_27DDC6FD0, &unk_232CFA240);
      v13 = v50;
      sub_232B4ACF0();
      MEMORY[0x238393870]();
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v45 = 0;
    goto LABEL_25;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_21:
  v53 = v24;
  v29 = v51;
  sub_232CE9A50();
  sub_232B124A8(&qword_27DDC6FC0, &unk_232CF7CC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232CF5E60;
  *(inited + 32) = 0x64695F7475706E69;
  *(inited + 40) = 0xE900000000000073;
  v31 = sub_232B4AA60();
  v13 = v50;
  v32 = *(v50 + 16);
  v32(v8, v52, v0);
  *(inited + 48) = sub_232CEA200();
  sub_232B4AD3C();
  *(inited + 72) = v31;
  *(inited + 80) = v33;
  sub_232B4AD28();
  *(inited + 88) = v34;
  v32(v8, v29, v0);
  v35 = sub_232CEA200();
  *(inited + 120) = v31;
  *(inited + 96) = v35;
  sub_232CE9C60();
  v36 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v45 = sub_232C3B328();
LABEL_25:
  v46 = *(v13 + 8);
  v46(v51, v0);
  v46(v52, v0);
  return v45;
}

id sub_232B49694(uint64_t a1)
{
  v4 = sub_232B124A8(&qword_27DDC6FA0, &unk_232CF7CB0);
  v5 = sub_232B4ACFC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = *a1;
  v16 = sub_232CE9D20();
  v17 = [v15 featureValueForName_];

  if (v17)
  {
    v46 = *(a1 + 8);

    sub_232B124A8(&qword_27DDC6FB0, &unk_232CF8840);
    v45 = v1;
    sub_232B4AAA4(&qword_27DDC6FB8, &qword_27DDC6FB0, &unk_232CF8840);
    sub_232CE9A50();
    sub_232B124A8(&qword_27DDC6FC0, &unk_232CF7CC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_232CF5E60;
    *(inited + 32) = 0x676E69646F636E65;
    *(inited + 40) = 0xE800000000000000;
    v19 = sub_232B4AA60();
    *(inited + 48) = v17;
    sub_232B4AD3C();
    *(inited + 72) = v20;
    *(inited + 80) = v21;
    sub_232B4AD28();
    *(inited + 88) = v22;
    (*(v7 + 16))(v12, v14, v2);
    v23 = v17;
    v24 = sub_232CEA200();
    *(inited + 120) = v19;
    *(inited + 96) = v24;
    sub_232CE9C60();
    v25 = objc_allocWithZone(MEMORY[0x277CBFED0]);
    v26 = v45;
    v27 = sub_232C3B328();
    if (v26)
    {
      v28 = v7;
      if (qword_2814DFA50 != -1)
      {
        sub_232B4ACC0();
        swift_once();
      }

      v29 = sub_232CE9A30();
      sub_232B135C4(v29, qword_2814E3DA8);
      v30 = v26;
      v31 = sub_232CE9A00();
      v17 = sub_232CEA1C0();

      v32 = v23;
      if (os_log_type_enabled(v31, v17))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412290;
        v35 = v26;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 4) = v36;
        *v34 = v36;
        _os_log_impl(&dword_232B02000, v31, v17, "Error building encoding model inputs: %@", v33, 0xCu);
        sub_232B267AC(v34, &qword_27DDC6FD0, &unk_232CFA240);
        sub_232B4ACF0();
        MEMORY[0x238393870]();
        sub_232B4ACF0();
        MEMORY[0x238393870]();
      }

      sub_232B4AA0C();
      sub_232B4ACD4();
      swift_allocError();
      *v37 = 1;
      swift_willThrow();

      (*(v28 + 8))(v14, v2);
    }

    else
    {
      v17 = v27;
      (*(v7 + 8))(v14, v2);
    }
  }

  else
  {
    if (qword_2814DFA50 != -1)
    {
      sub_232B4ACC0();
      swift_once();
    }

    v38 = sub_232CE9A30();
    sub_232B135C4(v38, qword_2814E3DA8);
    v39 = sub_232CE9A00();
    v40 = sub_232CEA1C0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_232B02000, v39, v40, "Error extracting encoding output from backbone model", v41, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    sub_232B4AA0C();
    sub_232B4ACD4();
    swift_allocError();
    *v42 = 0;
    swift_willThrow();
  }

  return v17;
}