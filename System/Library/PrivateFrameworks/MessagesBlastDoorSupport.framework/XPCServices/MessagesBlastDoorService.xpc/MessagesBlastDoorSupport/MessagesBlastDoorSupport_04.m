uint64_t _s14descr1000F0171O17AssociatedMessageVMa()
{
  result = qword_1000FD7B8;
  if (!qword_1000FD7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100077858()
{
  result = qword_1000FD748;
  if (!qword_1000FD748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD748);
  }

  return result;
}

uint64_t sub_1000778AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000778F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007795C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000779BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100077A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C4E94();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100077B1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C4E94();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100077BD8()
{
  sub_1000C4E94();
  if (v0 <= 0x3F)
  {
    sub_100077C80();
    if (v1 <= 0x3F)
    {
      sub_100077CD0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100077C80()
{
  if (!qword_1000FCD00)
  {
    v0 = sub_1000C5854();
    if (!v1)
    {
      atomic_store(v0, &qword_1000FCD00);
    }
  }
}

void sub_100077CD0()
{
  if (!qword_1000FD7C8)
  {
    v0 = sub_1000C54C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1000FD7C8);
    }
  }
}

uint64_t sub_100077D80@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a2;
  v67 = a1;
  v61 = a3;
  v3 = sub_1000124CC(&qword_1000FD810, &unk_1000CF740);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v57 = &v52 - v5;
  v6 = sub_1000C3514();
  v7 = *(v6 - 8);
  v59 = v6;
  v60 = v7;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v58 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v66 = &v52 - v11;
  v12 = sub_1000C2E34();
  v63 = *(v12 - 8);
  v64 = v12;
  v13 = *(v63 + 64);
  __chkstk_darwin(v12);
  v15 = (&v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1000C3054();
  v62 = *(v16 - 8);
  v17 = *(v62 + 64);
  __chkstk_darwin(v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000C4CC4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = (&v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v27 = &v52 - v26;
  v28 = sub_1000C4DB4();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = v20;
  v33 = &v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v27, v67, v32);
  v34 = v68;
  result = sub_1000C4D94();
  if (!v34)
  {
    v55 = v16;
    v56 = v15;
    v68 = v29;
    v67 = v28;
    v36 = v33;
    v37 = v66;
    v38 = sub_1000C4DA4();
    v54 = v36;
    v39 = v38;
    v41 = v40;
    sub_100018C68(v38, v40);
    sub_1000C1D84();
    v42 = v56;
    (*(v63 + 104))(v56, enum case for PosterArchive.PosterKitPosterRole.backdrop(_:), v64);
    PosterArchive.init(posterArchiveData:workingDirectory:role:)(v39, v41, v25, v42, v19);
    v43 = v67;
    v64 = sub_1000C4DA4();
    v65 = v44;
    sub_100078380(v37);
    v45 = v55;
    v46 = v62;
    v47 = *(v62 + 16);
    v48 = v57;
    v53 = v19;
    v47(v57, v19, v55);
    (*(v46 + 56))(v48, 0, 1, v45);
    v49 = v59;
    v50 = v60;
    v51 = v66;
    (*(v60 + 16))(v58, v66, v59);
    sub_1000C1D74();
    sub_100018CD0(v64, v65);
    sub_100018CD0(v39, v41);
    (*(v50 + 8))(v51, v49);
    (*(v62 + 8))(v53, v55);
    return (*(v68 + 8))(v54, v43);
  }

  return result;
}

uint64_t sub_100078380@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = sub_1000C3574();
  v64 = *(v1 - 8);
  v65 = v1;
  v2 = *(v64 + 64);
  v3 = __chkstk_darwin(v1);
  v63 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v58 - v5;
  v7 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v61 = v58 - v9;
  v10 = sub_1000C4D84();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000C20D4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v58 - v18;
  v20 = objc_opt_self();
  isa = sub_1000C1544().super.isa;
  v67 = 0;
  v22 = [v20 propertyListWithData:isa options:0 format:0 error:&v67];

  if (!v22)
  {
    v43 = v67;
    sub_1000C1474();

    return swift_willThrow();
  }

  v23 = v67;
  sub_1000C58C4();
  swift_unknownObjectRelease();
  sub_1000124CC(&qword_1000FC580, &unk_1000C9E50);
  if (!swift_dynamicCast())
  {
    sub_100078FD8();
    swift_allocError();
    *v44 = 1;
    sub_1000C4FC4();
    sub_10007902C(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
LABEL_22:
    sub_1000C4FD4();
    return swift_willThrow();
  }

  v24 = v71;
  if (!v71[2] || (v25 = sub_100099FF8(0xD000000000000013, 0x80000001000D7A90), (v26 & 1) == 0) || (sub_10001D804(v24[7] + 32 * v25, &v67), (swift_dynamicCast() & 1) == 0))
  {

    sub_100078FD8();
    swift_allocError();
    *v45 = 1;
    sub_1000C4FC4();
    sub_10007902C(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    goto LABEL_22;
  }

  v27 = v72;
  v60 = v71;
  v28 = v13;
  (*(v13 + 104))(v19, enum case for ImageHeader.png(_:), v12);
  v29 = v60;
  v59 = v27;
  LOBYTE(v27) = sub_1000C1594();
  v30 = *(v28 + 8);
  v31 = v19;
  v58[1] = v28 + 8;
  v32 = v30;
  v30(v31, v12);
  if (v27)
  {
    v33 = v59;
    if (!v24[2])
    {
      goto LABEL_26;
    }

    v34 = sub_100099FF8(0x636E616E696D756CLL, 0xE900000000000065);
    if ((v35 & 1) == 0 || (sub_10001D804(v24[7] + 32 * v34, &v67), sub_1000146D8(), (swift_dynamicCast() & 1) == 0) || (v36 = v71, [v71 doubleValue], v36, !v24[2]) || (v37 = sub_100099FF8(0x654B686769487369, 0xE900000000000079), (v38 & 1) == 0) || (sub_10001D804(v24[7] + 32 * v37, &v67), (swift_dynamicCast() & 1) == 0))
    {
LABEL_26:

      sub_100078FD8();
      swift_allocError();
      *v51 = 1;
      sub_1000C4FC4();
      sub_10007902C(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      goto LABEL_27;
    }

    v39 = v71;
    [v71 BOOLValue];

    if (v24[2])
    {
      v40 = sub_100099FF8(0xD000000000000013, 0x80000001000D7AD0);
      if (v41)
      {
        sub_10001D804(v24[7] + 32 * v40, &v67);

        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_18:
          sub_100078FD8();
          swift_allocError();
          *v42 = 1;
          sub_1000C4FC4();
          sub_10007902C(&qword_1000FC360, &type metadata accessor for Explosion);
          swift_allocError();
LABEL_27:
          sub_1000C4FD4();
          swift_willThrow();
          return sub_100018CD0(v29, v33);
        }

        if (sub_1000C3024() != 6)
        {
          v69 = &type metadata for Data;
          v70 = &protocol witness table for Data;
          v67 = v29;
          v68 = v33;
          v57 = sub_1000C4D54();
          (*(*(v57 - 8) + 56))(v61, 1, 1, v57);
          sub_100018C68(v29, v33);
          sub_1000C4D64();
          sub_1000C3504();
          return sub_100018CD0(v29, v33);
        }
      }
    }

    goto LABEL_18;
  }

  v47 = v59;
  v48 = v66;
  sub_1000C15A4();
  if (v48)
  {
    v49 = v48;
    v50 = v29;
  }

  else
  {
    sub_100078FD8();
    swift_allocError();
    *v52 = 2;
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_1000C5944(33);

    v67 = 0xD00000000000001FLL;
    v68 = 0x80000001000D7AB0;
    v73._countAndFlagsBits = sub_1000C20C4();
    sub_1000C52E4(v73);

    sub_1000C4FC4();
    sub_10007902C(&qword_1000FC360, &type metadata accessor for Explosion);
    v49 = swift_allocError();
    v50 = v60;
    sub_1000C4FD4();
    swift_willThrow();
    v32(v17, v12);
  }

  v71 = v49;
  swift_errorRetain();
  sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
  v53 = v65;
  if (swift_dynamicCast())
  {

    v55 = v63;
    v54 = v64;
    (*(v64 + 32))(v63, v6, v53);
    sub_100078FD8();
    swift_allocError();
    *v56 = 2;
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_1000C5944(33);

    v67 = 0xD00000000000001FLL;
    v68 = 0x80000001000D7AB0;
    v74._countAndFlagsBits = sub_1000C3564();
    sub_1000C52E4(v74);

    sub_1000C4FC4();
    sub_10007902C(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FD4();
    swift_willThrow();
    sub_100018CD0(v50, v47);
    (*(v54 + 8))(v55, v53);
  }

  else
  {
    sub_100018CD0(v50, v47);
  }
}

unint64_t sub_100078FD8()
{
  result = qword_1000FD818;
  if (!qword_1000FD818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD818);
  }

  return result;
}

uint64_t sub_10007902C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100079088()
{
  result = qword_1000FD820;
  if (!qword_1000FD820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD820);
  }

  return result;
}

unint64_t sub_1000790EC(uint64_t a1)
{
  result = sub_100012610();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100079118()
{
  result = qword_1000FD828;
  if (!qword_1000FD828)
  {
    sub_1000C3BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD828);
  }

  return result;
}

Swift::Int sub_1000791A0()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t MessageEditingDictionary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FD830, &qword_1000CECB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_10007947C();
  sub_1000C5D04();
  v11 = *v3;
  v12 = v3[1];
  v23[15] = 0;
  sub_1000C5AF4();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = *(v3 + 24);
  v23[14] = 1;
  sub_1000C5B24();
  v15 = v3[4];
  v16 = v3[5];
  v23[13] = 2;
  sub_1000C5AF4();
  v17 = v3[8];
  v18 = v3[9];
  v23[12] = 3;
  sub_1000C5AF4();
  v19 = v3[6];
  v20 = *(v3 + 56);
  v23[11] = 4;
  sub_1000C5B24();
  v22 = *(v3 + 57);
  v23[10] = 5;
  sub_1000C5B04();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10007947C()
{
  result = qword_1000FD838;
  if (!qword_1000FD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD838);
  }

  return result;
}

__n128 MessageEditingDictionary.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000798DC(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

MessagesBlastDoorService::MessageEditingDictionary::CodingKeys_optional __swiftcall MessageEditingDictionary.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v5._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._rawValue = &off_1000F1E78;
  v5._object = object;
  v3 = sub_1000C59F4(v2, v5);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t MessageEditingDictionary.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 6778213;
  v2 = 7630949;
  v3 = 29797;
  if (a1 != 4)
  {
    v3 = 29554;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 6910053;
  if (a1 != 1)
  {
    v4 = 6451301;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100079628()
{
  *v0;
  *v0;
  *v0;
  sub_1000C52C4();
}

MessagesBlastDoorService::MessageEditingDictionary::CodingKeys_optional sub_1000796EC@<W0>(Swift::String *a1@<X0>, MessagesBlastDoorService::MessageEditingDictionary::CodingKeys_optional *a2@<X8>)
{
  result.value = MessageEditingDictionary.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_10007971C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6778213;
  v5 = 7630949;
  v6 = 0xE300000000000000;
  v7 = 29797;
  if (v2 != 4)
  {
    v7 = 29554;
  }

  if (v2 != 3)
  {
    v5 = v7;
    v6 = 0xE200000000000000;
  }

  v8 = 6910053;
  if (v2 != 1)
  {
    v8 = 6451301;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1000797A8()
{
  v1 = *v0;
  v2 = 6778213;
  v3 = 7630949;
  v4 = 29797;
  if (v1 != 4)
  {
    v4 = 29554;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 6910053;
  if (v1 != 1)
  {
    v5 = 6451301;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100079864(uint64_t a1)
{
  v2 = sub_10007947C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000798A0(uint64_t a1)
{
  v2 = sub_10007947C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000798DC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FD858, &qword_1000CEEA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_10007947C();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(a1);
  }

  LOBYTE(v43[0]) = 0;
  v11 = sub_1000C5A04();
  v13 = v12;
  v14 = v11;
  LOBYTE(v43[0]) = 1;
  v37 = sub_1000C5A34();
  v52 = v15 & 1;
  LOBYTE(v43[0]) = 2;
  v16 = sub_1000C5A04();
  *(&v36 + 1) = v17;
  *&v36 = v16;
  LOBYTE(v43[0]) = 3;
  v18 = sub_1000C5A04();
  v35 = v19;
  v33 = v18;
  LOBYTE(v43[0]) = 4;
  v34 = 0;
  v32 = sub_1000C5A34();
  v51 = v20 & 1;
  v53 = 5;
  v21 = sub_1000C5A14();
  (*(v6 + 8))(v9, v5);
  v31 = v14;
  *&v38 = v14;
  *(&v38 + 1) = v13;
  *&v39 = v37;
  LODWORD(v34) = v52;
  BYTE8(v39) = v52;
  v22 = v36;
  v40 = v36;
  *&v41 = v32;
  v23 = v51;
  BYTE8(v41) = v51;
  BYTE9(v41) = v21;
  v24 = v33;
  v30 = v21;
  v25 = v35;
  *&v42 = v33;
  *(&v42 + 1) = v35;
  sub_100079F3C(&v38, v43);
  sub_100015F68(a1);
  v43[0] = v31;
  v43[1] = v13;
  v43[2] = v37;
  v44 = v34;
  v45 = v22;
  v46 = v32;
  v47 = v23;
  v48 = v30;
  v49 = v24;
  v50 = v25;
  result = sub_100060438(v43);
  v27 = v41;
  a2[2] = v40;
  a2[3] = v27;
  a2[4] = v42;
  v28 = v39;
  *a2 = v38;
  a2[1] = v28;
  return result;
}

unint64_t sub_100079CD8()
{
  result = qword_1000FD840;
  if (!qword_1000FD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD840);
  }

  return result;
}

unint64_t sub_100079D30()
{
  result = qword_1000FD848;
  if (!qword_1000FD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD848);
  }

  return result;
}

unint64_t sub_100079D88()
{
  result = qword_1000FD850;
  if (!qword_1000FD850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD850);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageEditingDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageEditingDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100079F88@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X8>)
{
  v5 = v3;
  v26 = sub_1000C2074();
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v26);
  v27 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*a1 strokePoints];
  v28 = 0;
  sub_10001D1A8(0, &qword_1000FD868, BlastDoorDrawingStrokePoint_ptr);
  sub_1000C5394();

  v12 = v28;
  if (!v28)
  {
    sub_1000C4FC4();
    sub_100018BFC();
    v5 = swift_allocError();
    goto LABEL_22;
  }

  v23 = v28 & 0xFFFFFFFFFFFFFF8;
  if (v28 >> 62)
  {
    goto LABEL_20;
  }

  v13 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_21:

    sub_1000C4FC4();
    sub_100018BFC();
    v5 = swift_allocError();
LABEL_22:
    sub_1000C4FB4();
    result = swift_willThrow();
LABEL_23:
    *a2 = v5;
    return result;
  }

  while (1)
  {
    v28 = _swiftEmptyArrayStorage;
    result = sub_100045B24(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      break;
    }

    v21 = a3;
    v22 = a2;
    a3 = 0;
    v15 = v28;
    v24 = v8 + 32;
    v25 = v12 & 0xC000000000000001;
    while (1)
    {
      a2 = (a3 + 1);
      if (__OFADD__(a3, 1))
      {
        break;
      }

      if (v25)
      {
        v16 = sub_1000C5954();
      }

      else
      {
        if (a3 >= *(v23 + 16))
        {
          goto LABEL_19;
        }

        v16 = *(v12 + 8 * a3 + 32);
      }

      v17 = v16;
      [v16 location];
      [v17 force];
      [v17 velocity];
      sub_1000C2064();
      if (v3)
      {

        a2 = v22;
        goto LABEL_23;
      }

      v18 = v13;

      v28 = v15;
      v20 = v15[2];
      v19 = v15[3];
      if (v20 >= v19 >> 1)
      {
        sub_100045B24(v19 > 1, v20 + 1, 1);
        v15 = v28;
      }

      v15[2] = v20 + 1;
      (*(v8 + 32))(v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, v27, v26);
      ++a3;
      v13 = v18;
      if (a2 == v18)
      {

        return sub_1000C2044();
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v13 = sub_1000C59A4();
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

void sub_10007A3A4(void *a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a1;
  v66 = a3;
  v65 = a2;
  v58 = a4;
  v4 = sub_1000C27A4();
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  __chkstk_darwin(v4);
  v55 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C3EA4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v59 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C15D4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v61 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000C1614();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000C20B4();
  v60 = *(v17 - 8);
  v18 = *(v60 + 64);
  __chkstk_darwin(v17);
  v20 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000C20A4();
  v62 = *(v21 - 8);
  v22 = *(v62 + 64);
  v23 = __chkstk_darwin(v21);
  v25 = v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v50 - v26;
  sub_1000C5514();
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v28 = sub_1000C56F4();
  sub_1000C1A54();

  if (*(v66 + 2))
  {
    sub_1000C4FC4();
    sub_100018BFC();
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    return;
  }

  v29 = v63;
  v52 = v25;
  v66 = v27;
  v54 = v20;
  v51 = v17;
  v53 = v21;
  v30 = sub_1000C1554();
  v32 = v31;
  v33 = objc_opt_self();
  isa = sub_1000C1544().super.isa;
  v35 = [v33 decodeHandwritingFromData:isa];

  if (v35)
  {
    v36 = [v35 drawing];
    if (v36)
    {
      v37 = v36;
      v65 = v35;
      v38 = [objc_opt_self() decodeDrawingStrokes:v36];
      sub_10001D1A8(0, &qword_1000FD860, BlastDoorDrawingStroke_ptr);
      v39 = sub_1000C53A4();

      sub_10007ACD0(v39);
      if (!v29)
      {

        [v37 canvasBounds];
        [v37 strokesFrame];
        [v37 totalPoints];
        v40 = v66;
        sub_1000C2094();
        v64 = v37;
        v41 = v65;
        v42 = [v65 uuid];
        v50[1] = v16;
        sub_1000C1604();

        v43 = [v41 creationDate];
        sub_1000C15C4();

        v44 = v53;
        (*(v62 + 16))(v52, v40, v53);
        sub_1000C2084();
        sub_1000C5514();
        v45 = sub_1000C56F4();
        sub_1000C1A54();

        sub_1000C3E54();
        v46 = v64;
        v47 = v60;
        v48 = v55;
        (*(v60 + 16))(v55, v54, v51);
        (*(v56 + 104))(v48, enum case for BalloonPlugin.Payload.handwriting(_:), v57);
        sub_1000C4474();
        v49 = v62;
        sub_100018CD0(v30, v32);

        (*(v47 + 8))(v54, v51);
        (*(v49 + 8))(v66, v44);
        return;
      }
    }

    else
    {
      sub_1000C4FC4();
      sub_100018BFC();
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
    }
  }

  else
  {
    sub_1000C4FC4();
    sub_100018BFC();
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
  }

  sub_100018CD0(v30, v32);
}

size_t sub_10007ACD0(unint64_t a1)
{
  v2 = v1;
  v23 = sub_1000C2054();
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v23);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000C59A4())
  {
    v9 = _swiftEmptyArrayStorage;
    if (!i)
    {
      return v9;
    }

    v26 = _swiftEmptyArrayStorage;
    result = sub_10004594C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v11 = 0;
    v9 = v26;
    v21 = i;
    v22 = a1 & 0xC000000000000001;
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = v4 + 32;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v22)
      {
        v13 = sub_1000C5954();
      }

      else
      {
        if (v11 >= *(v19 + 16))
        {
          goto LABEL_19;
        }

        v13 = *(a1 + 8 * v11 + 32);
      }

      v14 = v13;
      v25 = v13;
      sub_100079F88(&v25, &v24, v7);
      if (v2)
      {

        return v9;
      }

      v2 = 0;
      v15 = a1;

      v26 = v9;
      v17 = v9[2];
      v16 = v9[3];
      if (v17 >= v16 >> 1)
      {
        sub_10004594C(v16 > 1, v17 + 1, 1);
        v9 = v26;
      }

      v9[2] = v17 + 1;
      (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17, v7, v23);
      ++v11;
      a1 = v15;
      if (v12 == v21)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

uint64_t *PosterArchive.init(posterArchiveData:workingDirectory:role:)@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a4;
  v55 = a5;
  v62 = sub_1000C3054();
  v54 = *(v62 - 8);
  v8 = *(v54 + 64);
  __chkstk_darwin(v62);
  v60 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C4CF4();
  v58 = *(v10 - 8);
  v59 = v10;
  v11 = *(v58 + 64);
  __chkstk_darwin(v10);
  v57 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000C4CC4();
  v14 = *(v13 - 8);
  v15 = v14[8];
  __chkstk_darwin(v13);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000C1A94();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4C24();
  v23 = v14[2];
  v64 = a3;
  v23(v17, a3, v13);
  sub_100018C68(a1, a2);
  v24 = sub_1000C1A84();
  v56 = sub_1000C5554();
  v25 = os_log_type_enabled(v24, v56);
  v65 = v14;
  if (v25)
  {
    v52 = v18;
    v53 = v13;
    v26 = swift_slowAlloc();
    result = swift_slowAlloc();
    v50 = result;
    v66 = result;
    *v26 = 134218242;
    v28 = a2 >> 62;
    v51 = v24;
    if ((a2 >> 62) > 1)
    {
      v29 = v19;
      if (v28 != 2)
      {
        v30 = 0;
        goto LABEL_13;
      }

      v35 = a1[2];
      v34 = a1[3];
      v36 = __OFSUB__(v34, v35);
      v30 = v34 - v35;
      if (!v36)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else
    {
      v29 = v19;
      if (!v28)
      {
        v30 = BYTE6(a2);
LABEL_13:
        *(v26 + 4) = v30;
        sub_100018CD0(a1, a2);
        *(v26 + 12) = 2080;
        v37 = v57;
        sub_1000C4CB4();
        v38 = sub_1000C4CD4();
        v40 = v39;
        (*(v58 + 8))(v37, v59);
        v41 = v53;
        v59 = v65[1];
        v59(v17, v53);
        v42 = sub_10008AC30(v38, v40, &v66);
        v33 = v41;

        *(v26 + 14) = v42;
        v32 = a2;
        v43 = v51;
        _os_log_impl(&_mh_execute_header, v51, v56, "Creating poster archive with data: (%ld bytes) using working directory: %s", v26, 0x16u);
        sub_100015F68(v50);

        v31 = (*(v29 + 8))(v22, v52);
        goto LABEL_14;
      }
    }

    LODWORD(v30) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return result;
    }

    v30 = v30;
    goto LABEL_13;
  }

  sub_100018CD0(a1, a2);
  v59 = v14[1];
  v59(v17, v13);
  v31 = (*(v19 + 8))(v22, v18);
  v32 = a2;
  v33 = v13;
LABEL_14:
  v44 = v64;
  __chkstk_darwin(v31);
  *(&v50 - 4) = v44;
  *(&v50 - 3) = a1;
  v46 = v62;
  v45 = v63;
  *(&v50 - 2) = v32;
  *(&v50 - 1) = v45;
  v48 = v60;
  v47 = v61;
  sub_1000C4C94();
  sub_100018CD0(a1, v32);
  if (!v47)
  {
    (*(v54 + 32))(v55, v48, v46);
  }

  v49 = sub_1000C2E34();
  (*(*(v49 - 8) + 8))(v45, v49);
  return (v59)(v44, v33);
}

void sub_10007B49C(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v46 = a1;
  v47 = a2;
  v2 = sub_1000C2E34();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  __chkstk_darwin(v2);
  v43 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C1614();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v50 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C3044();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v51 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C3014();
  v48 = *(v11 - 8);
  v49 = v11;
  v12 = *(v48 + 64);
  __chkstk_darwin(v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000C14E4();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = sub_1000C4CF4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000C4244();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  (*(v25 + 104))(&v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for OverridingFileManager.Override.temporaryDirectory(_:));
  sub_1000C4CB4();
  sub_1000C4CE4();
  (*(v18 + 8))(v21, v17);
  v26 = objc_allocWithZone(sub_1000C4254());
  v27 = sub_1000C4234();
  v28 = objc_opt_self();
  v29 = [v28 archiverWithFileManager:v27];
  isa = sub_1000C1544().super.isa;
  v53 = 0;
  v31 = [v29 unarchiveConfigurationFromData:isa error:&v53];

  if (!v31)
  {
    v41 = v53;
    sub_1000C1474();

    swift_willThrow();
    v31 = v29;
    goto LABEL_6;
  }

  v32 = v53;
  v33 = [v31 _path];
  v34 = [v28 serverPathFromPath:v33];

  v35 = v52;
  v36 = sub_10008B184(1752457584, 0xE400000000000000, 0xD000000000000065, 0x80000001000D7BD0, 43, v34);
  if (v35)
  {

    v27 = v29;
LABEL_6:

    goto LABEL_7;
  }

  v37 = v36;

  v38 = [v37 identity];
  v39 = v31;
  sub_10007BED8(v39, v14);
  v31 = v39;
  v40 = v38;
  sub_10007C330(v31, v40, v51);
  v42 = [v40 posterUUID];
  sub_1000C1604();

  [v40 version];
  [v40 supplement];
  (*(v44 + 16))(v43, v46, v45);
  sub_1000C3034();

LABEL_7:
}

uint64_t sub_10007BA90(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a6 & 0x100000000) != 0)
  {
    v6 = result;

    v8._countAndFlagsBits = 58;
    v8._object = 0xE100000000000000;
    sub_1000C52E4(v8);
    v9._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v9);

    v10._countAndFlagsBits = 58;
    v10._object = 0xE100000000000000;
    sub_1000C52E4(v10);
    v11._countAndFlagsBits = v6;
    v11._object = a2;
    sub_1000C52E4(v11);
    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  return result;
}

double sub_10007BBFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    return *&a6;
  }

  v10._countAndFlagsBits = 58;
  v10._object = 0xE100000000000000;
  sub_1000C52E4(v10);
  v11._countAndFlagsBits = sub_1000C5BE4();
  sub_1000C52E4(v11);

  v12._countAndFlagsBits = 58;
  v12._object = 0xE100000000000000;
  sub_1000C52E4(v12);
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  sub_1000C52E4(v13);
  sub_1000C4FC4();
  sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion);
  swift_allocError();
  sub_1000C4FB4();
  swift_willThrow();
  return result;
}

uint64_t sub_10007BD68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 == 6)
  {

    v10._countAndFlagsBits = 58;
    v10._object = 0xE100000000000000;
    sub_1000C52E4(v10);
    v11._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v11);

    v12._countAndFlagsBits = 58;
    v12._object = 0xE100000000000000;
    sub_1000C52E4(v12);
    v13._countAndFlagsBits = a1;
    v13._object = a2;
    sub_1000C52E4(v13);
    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
  }

  return a6;
}

void sub_10007BED8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = sub_1000C2FF4();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000124CC(&qword_1000FD928, &qword_1000CEF78);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  v15 = sub_1000124CC(&qword_1000FD930, &qword_1000CEF80);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v37 - v20;
  v22 = objc_opt_self();
  v43 = 0;
  v23 = [v22 loadConfiguredPropertiesFromPosterConfiguration:a1 error:&v43];
  if (!v23)
  {
    v28 = v43;
    sub_1000C1474();

    swift_willThrow();
    return;
  }

  v24 = v23;
  v25 = v43;
  v26 = [v24 titleStyleConfiguration];
  if (v26)
  {
    v27 = v26;
    sub_10007F13C(v27, v21);
    if (v2)
    {

      return;
    }

    v39 = a1;

    v29 = 0;
  }

  else
  {
    v39 = a1;
    v29 = 1;
  }

  v30 = sub_1000C2F94();
  v31 = 1;
  (*(*(v30 - 8) + 56))(v21, v29, 1, v30);
  v32 = [v24 renderingConfiguration];
  if (!v32)
  {
    v38 = v12;
    v36 = v40;
    v35 = v41;
LABEL_13:
    (*(v36 + 56))(v14, v31, 1, v35);
    sub_100018F28(v21, v19, &qword_1000FD930, &qword_1000CEF80);
    sub_100018F28(v14, v38, &qword_1000FD928, &qword_1000CEF78);
    sub_1000C3004();

    sub_100018F90(v14, &qword_1000FD928, &qword_1000CEF78);
    v34 = v21;
    goto LABEL_14;
  }

  v33 = v32;
  [v33 isDepthEffectDisabled];
  [v33 areMotionEffectsDisabled];
  sub_1000C2FE4();
  if (!v2)
  {
    v38 = v12;

    v36 = v40;
    v35 = v41;
    (*(v40 + 32))(v14, v7, v41);
    v31 = 0;
    goto LABEL_13;
  }

  v34 = v21;
LABEL_14:
  sub_100018F90(v34, &qword_1000FD930, &qword_1000CEF80);
}

void sub_10007C330(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a1;
  v54 = a3;
  v4 = sub_1000C3044();
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = *(v52 + 64);
  v6 = __chkstk_darwin(v4);
  v57 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v51 = &v45 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v45 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v45 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v45 - v17;
  __chkstk_darwin(v16);
  v20 = &v45 - v19;
  v21 = sub_1000C1A94();
  v56 = *(v21 - 8);
  v22 = *(v56 + 64);
  __chkstk_darwin(v21);
  v55 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  v25 = [a2 provider];
  sub_1000C5224();

  v26 = sub_1000C3024();
  v27 = v58;
  v28 = sub_10007BD68(0x72656469766F7270, 0xEC00000065707954, 0xD000000000000065, 0x80000001000D7BD0, 418, v26);
  if (v27)
  {
  }

  else
  {
    v29 = v28;
    v49 = v20;
    v50 = v21;
    v46 = v18;
    v47 = v15;
    v48 = v12;
    v58 = v24;
    v30 = v55;
    sub_1000C4C24();
    v31 = sub_1000C1A84();
    v32 = sub_1000C5554();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = v29;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v61 = v35;
      *v34 = 136315138;
      v60 = v33;
      v36 = sub_1000C4A84();
      v38 = sub_10008AC30(v36, v37, &v61);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "Unpacking poster from provider: %s", v34, 0xCu);
      sub_100015F68(v35);

      v29 = v33;
    }

    (*(v56 + 8))(v30, v50);
    v39 = v29;
    v40 = v58;
    v41 = v57;
    if (v39 > 2)
    {
      if (v39 == 3)
      {
        v41 = v48;
        sub_100084C24(v59, v48);

        v42 = &enum case for PosterArchive.Provider.gradient(_:);
      }

      else if (v39 == 4)
      {
        v41 = v51;
        sub_100085AA4(v59, v51);

        v42 = &enum case for PosterArchive.Provider.gradientVFX(_:);
      }

      else
      {
        sub_100086594(v59, v57);

        v42 = &enum case for PosterArchive.Provider.dynamic(_:);
      }
    }

    else if (v39)
    {
      if (v39 == 1)
      {
        v41 = v46;
        sub_1000829C4(v59, v46);

        v42 = &enum case for PosterArchive.Provider.memoji(_:);
      }

      else
      {
        v41 = v47;
        sub_1000838D4(v59, v47);

        v42 = &enum case for PosterArchive.Provider.monogram(_:);
      }
    }

    else
    {
      v41 = v49;
      sub_1000810A8(v59, v49);

      v42 = &enum case for PosterArchive.Provider.photos(_:);
    }

    v43 = v52;
    v44 = v53;
    (*(v52 + 104))(v41, *v42, v53);
    (*(v43 + 32))(v54, v41, v44);
  }
}

void sub_10007C820(void *a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v171 = sub_1000C3B04();
  v172 = *(v171 - 8);
  v4 = *(v172 + 64);
  v5 = __chkstk_darwin(v171);
  v137 = v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v138 = v130 - v8;
  v9 = __chkstk_darwin(v7);
  v139 = v130 - v10;
  v11 = __chkstk_darwin(v9);
  v140 = v130 - v12;
  v13 = __chkstk_darwin(v11);
  v141 = v130 - v14;
  v15 = __chkstk_darwin(v13);
  v143 = v130 - v16;
  v17 = __chkstk_darwin(v15);
  v144 = v130 - v18;
  v19 = __chkstk_darwin(v17);
  v145 = v130 - v20;
  v21 = __chkstk_darwin(v19);
  v146 = v130 - v22;
  v23 = __chkstk_darwin(v21);
  v147 = v130 - v24;
  v25 = __chkstk_darwin(v23);
  v148 = v130 - v26;
  v27 = __chkstk_darwin(v25);
  v149 = v130 - v28;
  v29 = __chkstk_darwin(v27);
  v150 = v130 - v30;
  v31 = __chkstk_darwin(v29);
  v151 = v130 - v32;
  v33 = __chkstk_darwin(v31);
  v152 = v130 - v34;
  v35 = __chkstk_darwin(v33);
  v153 = v130 - v36;
  v37 = __chkstk_darwin(v35);
  v154 = v130 - v38;
  v39 = __chkstk_darwin(v37);
  v155 = v130 - v40;
  v41 = __chkstk_darwin(v39);
  v156 = v130 - v42;
  v43 = __chkstk_darwin(v41);
  v157 = v130 - v44;
  v45 = __chkstk_darwin(v43);
  v158 = v130 - v46;
  v47 = __chkstk_darwin(v45);
  v159 = v130 - v48;
  v49 = __chkstk_darwin(v47);
  v160 = v130 - v50;
  v51 = __chkstk_darwin(v49);
  v161 = v130 - v52;
  v53 = __chkstk_darwin(v51);
  v162 = v130 - v54;
  v55 = __chkstk_darwin(v53);
  v163 = v130 - v56;
  v57 = __chkstk_darwin(v55);
  v164 = v130 - v58;
  v59 = __chkstk_darwin(v57);
  v165 = v130 - v60;
  v61 = __chkstk_darwin(v59);
  v166 = v130 - v62;
  v63 = __chkstk_darwin(v61);
  v167 = v130 - v64;
  v65 = __chkstk_darwin(v63);
  v168 = v130 - v66;
  v67 = __chkstk_darwin(v65);
  v169 = v130 - v68;
  v69 = __chkstk_darwin(v67);
  v170 = v130 - v70;
  v71 = __chkstk_darwin(v69);
  v73 = v130 - v72;
  v74 = __chkstk_darwin(v71);
  v76 = v130 - v75;
  v77 = __chkstk_darwin(v74);
  v79 = v130 - v78;
  v80 = __chkstk_darwin(v77);
  v82 = v130 - v81;
  v83 = __chkstk_darwin(v80);
  v85 = v130 - v84;
  v86 = __chkstk_darwin(v83);
  v88 = v130 - v87;
  __chkstk_darwin(v86);
  v90 = v130 - v89;
  v91 = a1;
  sub_10007EA44(v91, 12, v90);
  if (!v2)
  {
    v131 = v73;
    v132 = v76;
    v133 = v79;
    v134 = v82;
    v135 = v85;
    v136 = v90;
    v92 = v91;
    sub_10007EA44(v92, 37, v88);
    v93 = v92;
    sub_10007EA44(v93, 25, v135);
    v94 = v93;
    sub_10007EA44(v94, 26, v134);
    v95 = v94;
    sub_10007EA44(v95, 27, v133);
    v96 = v95;
    sub_10007EA44(v96, 22, v132);
    v97 = v96;
    sub_10007EA44(v97, 33, v131);
    v98 = v97;
    sub_10007EA44(v98, 18, v170);
    v99 = v98;
    sub_10007EA44(v99, 38, v169);
    v130[1] = v88;
    v100 = v99;
    sub_10007EA44(v100, 30, v168);
    v101 = v100;
    sub_10007EA44(v101, 31, v167);
    v102 = v101;
    sub_10007EA44(v102, 11, v166);
    v103 = v102;
    sub_10007EA44(v103, 8, v165);
    v104 = v103;
    sub_10007EA44(v104, 6, v164);
    v105 = v104;
    sub_10007EA44(v105, 23, v163);
    v106 = v105;
    sub_10007EA44(v106, 28, v162);
    v107 = v106;
    sub_10007EA44(v107, 7, v161);
    v108 = v107;
    sub_10007EA44(v108, 24, v160);
    v109 = v108;
    sub_10007EA44(v109, 5, v159);
    v110 = v109;
    sub_10007EA44(v110, 17, v158);
    v111 = v110;
    sub_10007EA44(v111, 32, v157);
    v112 = v111;
    sub_10007EA44(v112, 2, v156);
    v113 = v112;
    sub_10007EA44(v113, 16, v155);
    v114 = v113;
    sub_10007EA44(v114, 29, v154);
    v115 = v114;
    sub_10007EA44(v115, 13, v153);
    v116 = v115;
    sub_10007EA44(v116, 1, v152);
    v117 = v116;
    sub_10007EA44(v117, 0, v151);
    v118 = v117;
    sub_10007EA44(v118, 4, v150);
    v119 = v118;
    sub_10007EA44(v119, 15, v149);
    v120 = v119;
    sub_10007EA44(v120, 10, v148);
    v121 = v120;
    sub_10007EA44(v121, 20, v147);
    v122 = v121;
    sub_10007EA44(v122, 9, v146);
    v123 = v122;
    sub_10007EA44(v123, 19, v145);
    v124 = v123;
    sub_10007EA44(v124, 35, v144);
    v125 = v124;
    sub_10007EA44(v125, 34, v143);
    v126 = v125;
    sub_10007EA44(v126, 36, v141);
    v127 = v126;
    sub_10007EA44(v127, 3, v140);
    v128 = v127;
    sub_10007EA44(v128, 14, v139);
    v129 = v128;
    sub_10007EA44(v129, 21, v138);
    v91 = v129;
    sub_10007EA44(v91, 39, v137);
    sub_1000C3B14();
  }
}

void sub_10007EA44(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v63 = a3;
  v7 = sub_1000C3AD4();
  v69 = *(v7 - 8);
  v70 = v7;
  v8 = *(v69 + 64);
  v9 = __chkstk_darwin(v7);
  v64 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v67 = &v61 - v12;
  __chkstk_darwin(v11);
  v14 = &v61 - v13;
  v15 = sub_1000124CC(&qword_1000FD8B8, &qword_1000CEF20);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v62 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v68 = &v61 - v20;
  __chkstk_darwin(v19);
  v71 = &v61 - v21;
  v22 = sub_1000C3AF4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000124CC(&qword_1000FD8C0, &qword_1000CEF28);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v61 - v29;
  v31 = a1;
  v32 = [v31 presetIdentifierForCategory:a2];
  if (v32)
  {
    v33 = v32;
    v61 = v14;
    v65 = a2;
    sub_1000C5224();

    sub_1000C3AE4();
    v4 = v3;
    if (v3)
    {

      return;
    }

    (*(v23 + 32))(v30, v26, v22);
    (*(v23 + 56))(v30, 0, 1, v22);
    a2 = v65;
    v14 = v61;
  }

  else
  {

    (*(v23 + 56))(v30, 1, 1, v22);
  }

  v66 = v30;
  v34 = v31;
  v35 = [v34 colorPresetForCategory:a2 colorIndex:0];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 name];
    sub_1000C5224();

    [v36 variation];
    sub_1000C3AC4();
    if (v4)
    {

LABEL_19:
      sub_100018F90(v66, &qword_1000FD8C0, &qword_1000CEF28);
      return;
    }

    v65 = 0;
    v38 = a2;

    v41 = v69;
    v40 = v70;
    v42 = v71;
    (*(v69 + 32))(v71, v14, v70);
    v39 = 0;
  }

  else
  {
    v65 = v4;
    v38 = a2;

    v39 = 1;
    v41 = v69;
    v40 = v70;
    v42 = v71;
  }

  v43 = *(v41 + 56);
  (v43)(v42, v39, 1, v40);
  v44 = v34;
  v45 = [v44 colorPresetForCategory:v38 colorIndex:1];
  if (v45)
  {
    v46 = v45;
    v61 = v43;
    v47 = [v45 name];
    sub_1000C5224();

    [v46 variation];
    v48 = v67;
    v49 = v65;
    sub_1000C3AC4();
    v50 = v68;
    v65 = v49;
    if (v49)
    {

      sub_100018F90(v71, &qword_1000FD8B8, &qword_1000CEF20);
      sub_100018F90(v66, &qword_1000FD8C0, &qword_1000CEF28);
      return;
    }

    v40 = v70;
    (*(v69 + 32))(v50, v48, v70);
    v51 = 0;
    v43 = v61;
  }

  else
  {

    v51 = 1;
    v50 = v68;
  }

  (v43)(v50, v51, 1, v40);
  v52 = v44;
  v53 = [v52 colorPresetForCategory:v38 colorIndex:2];
  if (v53)
  {
    v54 = v53;
    v55 = [v53 name];
    sub_1000C5224();

    [v54 variation];
    v57 = v64;
    v56 = v65;
    sub_1000C3AC4();
    if (v56)
    {

      sub_100018F90(v50, &qword_1000FD8B8, &qword_1000CEF20);
      sub_100018F90(v71, &qword_1000FD8B8, &qword_1000CEF20);
      goto LABEL_19;
    }

    v59 = v62;
    v60 = v57;
    v40 = v70;
    (*(v69 + 32))(v62, v60, v70);
    v58 = 0;
  }

  else
  {

    v58 = 1;
    v59 = v62;
  }

  (v43)(v59, v58, 1, v40);
  sub_1000C3AB4();
}

void sub_10007F13C(char *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_1000124CC(&qword_1000FD938, &qword_1000CEF88);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v63 = &v59 - v5;
  v6 = sub_1000124CC(&qword_1000FD940, &qword_1000CEF90);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v69 = &v59 - v8;
  v9 = sub_1000124CC(&qword_1000FD948, &qword_1000CEF98);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v71 = &v59 - v11;
  v12 = sub_1000C2E94();
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = *(v67 + 64);
  __chkstk_darwin(v12);
  v70 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000C2EB4();
  v65 = *(v15 - 8);
  v66 = v15;
  v16 = *(v65 + 64);
  __chkstk_darwin(v15);
  v72 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000C2FB4();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_1000C2FD4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000124CC(&qword_1000FD950, &qword_1000CEFA0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v59 - v27;
  v29 = objc_opt_self();
  v30 = [a1 timeFontConfiguration];
  v31 = [v29 systemTimeFontConfigurationFromTimeFontConfiguration:v30];

  v32 = [a1 groupName];
  v61 = sub_1000C5224();
  v73 = v33;

  if (v31)
  {
    v59 = v21;
    v60 = v20;
    v64 = a1;
    v34 = v31;
    v35 = [v34 timeFontIdentifier];
    sub_1000C5224();

    sub_1000C2FA4();
    [v34 weight];
    [v34 isSystemItem];
    v36 = v74;
    sub_1000C2FC4();
    v74 = v36;
    if (v36)
    {

      return;
    }

    v38 = v59;
    v37 = v60;
    (*(v59 + 32))(v28, v24, v60);
    (*(v38 + 56))(v28, 0, 1, v37);
    a1 = v64;
  }

  else
  {
    (*(v21 + 56))(v28, 1, 1, v20);
  }

  v39 = [a1 preferredTitleAlignment];
  v41 = v69;
  v40 = v70;
  v43 = v71;
  v42 = v72;
  if ((v39 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  sub_1000C2EA4();
  if (([a1 preferredTitleLayout] & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    return;
  }

  sub_1000C2E84();
  v44 = [a1 titleColor];
  if (v44)
  {
    v45 = v44;
    v46 = v74;
    sub_10007F984(v45);
    v74 = v46;
    if (v46)
    {

      (*(v67 + 8))(v40, v68);
      (*(v65 + 8))(v42, v66);
      sub_100018F90(v28, &qword_1000FD950, &qword_1000CEFA0);
      return;
    }

    v64 = v28;

    v47 = 0;
  }

  else
  {
    v64 = v28;
    v47 = 1;
  }

  v48 = sub_1000C2E74();
  v49 = 1;
  (*(*(v48 - 8) + 56))(v43, v47, 1, v48);
  if ([a1 titleContentStyle])
  {
    v50 = swift_unknownObjectRetain();
    v51 = v74;
    sub_10007FB7C(v50, v41);
    v74 = v51;
    if (v51)
    {

      swift_unknownObjectRelease();

      sub_100018F90(v43, &qword_1000FD948, &qword_1000CEF98);
      (*(v67 + 8))(v40, v68);
      (*(v65 + 8))(v42, v66);
      sub_100018F90(v64, &qword_1000FD950, &qword_1000CEFA0);
      return;
    }

    swift_unknownObjectRelease();
    v49 = 0;
  }

  v52 = sub_1000C2F54();
  v53 = 1;
  (*(*(v52 - 8) + 56))(v41, v49, 1, v52);
  v54 = [a1 timeNumberingSystem];
  if (v54)
  {
    v55 = v54;
    sub_1000C5224();

    v56 = v63;
    sub_1000C2F64();
    v53 = 0;
  }

  else
  {
    v56 = v63;
  }

  v57 = sub_1000C2F74();
  (*(*(v57 - 8) + 56))(v56, v53, 1, v57);
  [a1 isUserConfigured];
  [a1 contentsLuminance];
  [a1 isAlternateDateEnabled];
  v58 = v74;
  sub_1000C2F84();

  v74 = v58;
}

void sub_10007F984(void *a1)
{
  v3 = sub_1000C2E54();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_1000C4D24();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = [a1 color];
  v8 = sub_10008B184(0x726F6C6F63, 0xE500000000000000, 0xD000000000000065, 0x80000001000D7BD0, 283, v7);
  if (v1)
  {

LABEL_7:
    return;
  }

  v9 = v8;

  v10 = [v9 CGColor];
  sub_1000C4D14();
  if (([a1 preferredStyle] & 0x8000000000000000) == 0)
  {
    sub_1000C2E44();
    v11 = [a1 localizedName];
    if (v11)
    {
      v12 = v11;
      sub_1000C5224();
    }

    sub_1000C2E64();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_10007FB7C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1000124CC(&qword_1000FD958, &qword_1000CEFA8);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v52 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v51 = &v50 - v7;
  v8 = sub_1000124CC(&qword_1000FD960, &unk_1000CEFB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v50 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v50 - v12;
  v14 = sub_1000C2ED4();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v16);
  v17 = sub_1000C2F54();
  v53 = *(v17 - 8);
  v54 = v17;
  v18 = *(v53 + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v50 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v50 - v26;
  __chkstk_darwin(v25);
  v29 = &v50 - v28;
  v30 = [a1 type];
  if (v30 > 1)
  {
    if (v30 == 2)
    {
      v31 = [objc_opt_self() vibrantMaterialContentStyleForContentStyle:a1];
      v41 = v56;
      v42 = sub_10008B184(0xD000000000000011, 0x80000001000D7EC0, 0xD000000000000065, 0x80000001000D7BD0, 171, v31);
      if (!v41)
      {
        v47 = v42;

        [v47 type];
        sub_1000C2EC4();
        v48 = sub_1000C2EF4();
        (*(*(v48 - 8) + 56))(v13, 1, 1, v48);
        v49 = sub_1000C2F34();
        (*(*(v49 - 8) + 56))(v51, 1, 1, v49);
        sub_1000C2F44();
        swift_unknownObjectRelease();

        v21 = v24;
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    if (v30 != 3)
    {
      goto LABEL_10;
    }

    v35 = [objc_opt_self() vibrantMonochromeContentStyleForContentStyle:a1];
    v36 = v56;
    v37 = sub_10008B184(0xD000000000000011, 0x80000001000D7EC0, 0xD000000000000065, 0x80000001000D7BD0, 174, v35);
    if (!v36)
    {
      v43 = v37;

      [v43 type];
      sub_1000C2EC4();
      v44 = sub_1000C2EF4();
      (*(*(v44 - 8) + 56))(v50, 1, 1, v44);
      v45 = sub_1000C2F34();
      (*(*(v45 - 8) + 56))(v52, 1, 1, v45);
      sub_1000C2F44();
      swift_unknownObjectRelease();

      goto LABEL_19;
    }

LABEL_15:
    swift_unknownObjectRelease();
    return;
  }

  if (!v30)
  {
    v38 = [objc_opt_self() discreteColorsContentStyleForContentStyle:a1];
    v39 = v56;
    v40 = sub_10008B184(0xD000000000000011, 0x80000001000D7EC0, 0xD000000000000065, 0x80000001000D7BD0, 165, v38);
    if (!v39)
    {
      v46 = v40;

      sub_100080338(v46, v29);
      swift_unknownObjectRelease();
      v21 = v29;
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (v30 != 1)
  {
LABEL_10:
    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    goto LABEL_15;
  }

  v31 = [objc_opt_self() gradientContentStyleForContentStyle:a1];
  v32 = v56;
  v33 = sub_10008B184(0xD000000000000011, 0x80000001000D7EC0, 0xD000000000000065, 0x80000001000D7BD0, 168, v31);
  if (v32)
  {
LABEL_14:

    goto LABEL_15;
  }

  v34 = v33;

  sub_10008092C(v34, v27);
  swift_unknownObjectRelease();
  v21 = v27;
LABEL_19:
  (*(v53 + 32))(v55, v21, v54);
}

void sub_100080338(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v56 = sub_1000C4D24();
  v4 = *(v56 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v56);
  v57 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000124CC(&qword_1000FD958, &qword_1000CEFA8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v50 = &v42 - v9;
  v10 = sub_1000124CC(&qword_1000FD960, &unk_1000CEFB0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v42 - v12;
  v14 = sub_1000C2ED4();
  v48 = *(v14 - 8);
  v15 = *(v48 + 64);
  __chkstk_darwin(v14);
  v53 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000C2EF4();
  v49 = *(v17 - 8);
  v18 = *(v49 + 64);
  __chkstk_darwin(v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 isVibrant];
  [a1 allowsVariation];
  [a1 variation];
  sub_1000C2EE4();
  if (!v2)
  {
    v45 = v14;
    v46 = v20;
    v47 = v13;
    [a1 type];
    sub_1000C2EC4();
    v21 = [a1 colors];
    sub_10001D1A8(0, &qword_1000FD968, UIColor_ptr);
    v22 = sub_1000C53A4();

    v23 = v22;
    if (v22 >> 62)
    {
      goto LABEL_21;
    }

    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v25 = v47;
      v26 = v50;
      v27 = v17;
      if (!v24)
      {
        break;
      }

      v28 = v23;
      v43 = v17;
      v44 = a1;
      v58 = _swiftEmptyArrayStorage;
      v55 = v24;
      v23 = sub_100045BF0(0, v24 & ~(v24 >> 63), 0);
      if (v55 < 0)
      {
        __break(1u);
        return;
      }

      v29 = 0;
      v17 = v58;
      v30 = v28;
      v31 = v28 & 0xC000000000000001;
      v52 = v28 & 0xFFFFFFFFFFFFFF8;
      v54 = v4 + 32;
      a1 = v28;
      while (1)
      {
        v32 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v31)
        {
          v33 = sub_1000C5954();
        }

        else
        {
          if (v29 >= *(v52 + 16))
          {
            goto LABEL_20;
          }

          v33 = v30[v29 + 4];
        }

        v34 = v33;
        v35 = [v33 CGColor];
        sub_1000C4D14();

        v58 = v17;
        v37 = *(v17 + 16);
        v36 = *(v17 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_100045BF0(v36 > 1, v37 + 1, 1);
          v17 = v58;
        }

        *(v17 + 16) = v37 + 1;
        v23 = (*(v4 + 32))(v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v37, v57, v56);
        ++v29;
        v30 = a1;
        if (v32 == v55)
        {

          v27 = v43;
          a1 = v44;
          v26 = v50;
          v25 = v47;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v41 = v23;
      v24 = sub_1000C59A4();
      v23 = v41;
    }

LABEL_17:
    v38 = v49;
    v39 = v46;
    (*(v49 + 16))(v25, v46, v27);
    (*(v38 + 56))(v25, 0, 1, v27);
    v40 = sub_1000C2F34();
    (*(*(v40 - 8) + 56))(v26, 1, 1, v40);
    sub_1000C2F44();
    (*(v38 + 8))(v39, v27);
  }
}

void sub_10008092C(id a1@<X0>, unint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1000C4D24();
  v7 = *(v6 - 8);
  v65 = v6;
  v66 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v67 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000124CC(&qword_1000FD958, &qword_1000CEFA8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v52 - v12;
  v14 = sub_1000124CC(&qword_1000FD960, &unk_1000CEFB0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v55 = &v52 - v16;
  v17 = sub_1000C2ED4();
  v53 = *(v17 - 8);
  v54 = v17;
  v18 = *(v53 + 64);
  __chkstk_darwin(v17);
  v62 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000C2F14();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_1000C2F34();
  v58 = *(v22 - 8);
  v59 = v22;
  v23 = *(v58 + 64);
  __chkstk_darwin(v22);
  v63 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 gradientType];
  sub_1000C2F04();
  v25 = [a1 locations];
  sub_10001D1A8(0, &qword_1000FC320, NSNumber_ptr);
  v26 = sub_1000C53A4();

  if (v26 >> 62)
  {
    v27 = sub_1000C59A4();
    v56 = v13;
    v57 = a2;
    if (v27)
    {
      goto LABEL_3;
    }

LABEL_13:

    goto LABEL_14;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v56 = v13;
  v57 = a2;
  if (!v27)
  {
    goto LABEL_13;
  }

LABEL_3:
  v68 = _swiftEmptyArrayStorage;
  sub_100045C34(0, v27 & ~(v27 >> 63), 0);
  if (v27 < 0)
  {
    goto LABEL_32;
  }

  v64 = v2;
  v61 = a1;
  v28 = 0;
  v29 = v68;
  do
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v30 = sub_1000C5954();
    }

    else
    {
      v30 = *(v26 + 8 * v28 + 32);
    }

    v31 = v30;
    [v30 doubleValue];
    v33 = v32;

    v68 = v29;
    v35 = v29[2];
    v34 = v29[3];
    if (v35 >= v34 >> 1)
    {
      sub_100045C34((v34 > 1), v35 + 1, 1);
      v29 = v68;
    }

    ++v28;
    v29[2] = v35 + 1;
    v29[v35 + 4] = v33;
  }

  while (v27 != v28);

  a1 = v61;
  v3 = v64;
LABEL_14:
  [a1 startPoint];
  [a1 endPoint];
  sub_1000C2F24();
  v13 = v3;
  if (v3)
  {
LABEL_36:

    return;
  }

  [a1 type];
  sub_1000C2EC4();
  v36 = [a1 colors];
  sub_10001D1A8(0, &qword_1000FD968, UIColor_ptr);
  a2 = sub_1000C53A4();

  if (a2 >> 62)
  {
    goto LABEL_33;
  }

  v37 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
LABEL_34:

LABEL_35:
    v47 = sub_1000C2EF4();
    (*(*(v47 - 8) + 56))(v55, 1, 1, v47);
    v49 = v58;
    v48 = v59;
    v50 = v56;
    v51 = v63;
    (*(v58 + 16))(v56, v63, v59);
    (*(v49 + 56))(v50, 0, 1, v48);
    sub_1000C2F44();
    (*(v49 + 8))(v51, v48);
    goto LABEL_36;
  }

  while (1)
  {
    v61 = a1;
    v68 = _swiftEmptyArrayStorage;
    sub_100045BF0(0, v37 & ~(v37 >> 63), 0);
    if (v37 < 0)
    {
      break;
    }

    v38 = 0;
    v39 = v68;
    a1 = (a2 & 0xC000000000000001);
    v60 = a2 & 0xFFFFFFFFFFFFFF8;
    v64 = (v66 + 32);
    while (1)
    {
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (a1)
      {
        v41 = sub_1000C5954();
      }

      else
      {
        if (v38 >= *(v60 + 16))
        {
          goto LABEL_31;
        }

        v41 = *(a2 + 8 * v38 + 32);
      }

      v42 = v41;
      v43 = [v41 CGColor];
      sub_1000C4D14();
      if (v13)
      {

        (*(v53 + 8))(v62, v54);
        (*(v58 + 8))(v63, v59);

        return;
      }

      v44 = v37;

      v68 = v39;
      v46 = v39[2];
      v45 = v39[3];
      if (v46 >= v45 >> 1)
      {
        sub_100045BF0(v45 > 1, v46 + 1, 1);
        v39 = v68;
      }

      v39[2] = v46 + 1;
      (*(v66 + 32))(v39 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v46, v67, v65);
      ++v38;
      v37 = v44;
      if (v40 == v44)
      {

        a1 = v61;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v37 = sub_1000C59A4();
    if (!v37)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
}

void sub_1000810A8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v163 = a2;
  v3 = sub_1000C2554();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v168 = &v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1000C42C4();
  v166 = *(v167 - 8);
  v6 = *(v166 + 64);
  v7 = __chkstk_darwin(v167);
  v164 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  *&v159 = &v152 - v10;
  v11 = __chkstk_darwin(v9);
  *&v158 = &v152 - v12;
  __chkstk_darwin(v11);
  v165 = &v152 - v13;
  v14 = sub_1000124CC(&qword_1000FD878, &qword_1000CEEF8);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v162 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v171 = &v152 - v18;
  v19 = sub_1000C1484();
  *&v172 = *(v19 - 8);
  v20 = *(v172 + 64);
  __chkstk_darwin(v19);
  v22 = &v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_1000C2434();
  v170 = *(v169 - 8);
  v23 = *(v170 + 64);
  v24 = __chkstk_darwin(v169);
  v161 = &v152 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v175 = &v152 - v26;
  v173 = sub_1000C24B4();
  v174 = *(v173 - 8);
  v27 = *(v174 + 64);
  v28 = __chkstk_darwin(v173);
  v160 = &v152 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v176 = &v152 - v30;
  v31 = sub_1000C14E4();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v36 = (&v152 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v34);
  v38 = &v152 - v37;
  v39 = [a1 assetDirectory];
  sub_1000C14A4();

  v40 = objc_opt_self();
  sub_1000C1494(v41);
  v43 = v42;
  *&v184 = 0;
  v44 = [v40 loadFromURL:v42 error:&v184];

  if (!v44)
  {
    v50 = v184;
    sub_1000C1474();

    swift_willThrow();
    v51 = *(v32 + 8);
    v52 = v38;
    v53 = v31;
LABEL_5:
    v51(v52, v53);
    return;
  }

  v177 = v38;
  v178 = v31;
  v179 = v32;
  v45 = v184;
  v180 = v44;
  v46 = [v44 media];
  if (v46)
  {
    v47 = v46;
    v48 = a1;
    sub_10001D1A8(0, &qword_1000FD888, PFPosterMedia_ptr);
    v49 = sub_1000C53A4();
  }

  else
  {
    v48 = a1;
    v49 = 0;
  }

  v54 = v181;
  v55 = sub_10008B184(0x616964656DLL, 0xE500000000000000, 0xD000000000000065, 0x80000001000D7BD0, 644, v49);
  v56 = v54;
  if (v54)
  {
    (*(v179 + 8))(v177, v178);

    return;
  }

  v57 = v55;

  if (v57 >> 62)
  {
    if (sub_1000C59A4())
    {
      goto LABEL_11;
    }

LABEL_16:

    v59 = 0;
    goto LABEL_17;
  }

  if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((v57 & 0xC000000000000001) != 0)
  {
    v58 = sub_1000C5954();
  }

  else
  {
    if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    v58 = *(v57 + 32);
  }

  v59 = v58;

LABEL_17:
  v60 = sub_10008B184(0x69662E616964656DLL, 0xEB00000000747372, 0xD000000000000065, 0x80000001000D7BD0, 644, v59);

  sub_10008977C(v60, v176);
  v61 = v48;
  *&v184 = sub_1000C24A4();
  *(&v184 + 1) = v62;
  v63 = v172;
  (*(v172 + 104))(v22, enum case for URL.DirectoryHint.inferFromPath(_:), v19);
  sub_100018D24();
  sub_1000C14D4();
  (*(v63 + 8))(v22, v19);

  sub_100089AEC(v36, v175);
  v48 = v179;
  v64 = v180;
  v65 = [v180 layoutConfiguration];
  if (v65)
  {
    v66 = v65;
    v67 = v171;
    sub_100088A70(v66, v171);

    v68 = 0;
    v64 = v180;
  }

  else
  {
    v68 = 1;
    v67 = v171;
  }

  v69 = sub_1000C2454();
  (*(*(v69 - 8) + 56))(v67, v68, 1, v69);
  v70 = [v64 userInfo];
  if (!v70)
  {
    goto LABEL_28;
  }

  v71 = v70;
  v72 = sub_1000C5194();

  *&v186 = sub_1000C5224();
  *(&v186 + 1) = v73;
  sub_1000C5914();
  if (!*(v72 + 16) || (v74 = sub_10009A124(&v184), (v75 & 1) == 0))
  {

    sub_100046CAC(&v184);
LABEL_28:
    v186 = 0u;
    v187 = 0u;
    goto LABEL_29;
  }

  sub_10001D804(*(v72 + 56) + 32 * v74, &v186);
  sub_100046CAC(&v184);

  if (!*(&v187 + 1))
  {
LABEL_29:
    sub_100018F90(&v186, &qword_1000FC828, &qword_1000CF790);
    v76 = 2;
    goto LABEL_30;
  }

  if (swift_dynamicCast())
  {
    v76 = v184;
  }

  else
  {
    v76 = 2;
  }

LABEL_30:
  v155 = v76;
  v77 = [v64 userInfo];
  if (!v77)
  {
LABEL_41:
    v186 = 0u;
    v187 = 0u;
    goto LABEL_42;
  }

  v78 = v77;
  v79 = sub_1000C5194();

  *&v186 = sub_1000C5224();
  *(&v186 + 1) = v80;
  sub_1000C5914();
  if (!*(v79 + 16) || (v81 = sub_10009A124(&v184), (v82 & 1) == 0))
  {

    sub_100046CAC(&v184);
    goto LABEL_41;
  }

  sub_10001D804(*(v79 + 56) + 32 * v81, &v186);
  sub_100046CAC(&v184);

  if (!*(&v187 + 1))
  {
LABEL_42:
    sub_100018F90(&v186, &qword_1000FC828, &qword_1000CF790);
    v154 = 0;
    v156 = 0;
    goto LABEL_43;
  }

  v83 = swift_dynamicCast();
  v84 = v184;
  if (!v83)
  {
    v84 = 0;
  }

  v154 = v84;
  if (v83)
  {
    v85 = *(&v184 + 1);
  }

  else
  {
    v85 = 0;
  }

  v156 = v85;
LABEL_43:
  v157 = 0;
  v86 = [v64 userInfo];
  if (!v86)
  {
    v186 = 0u;
    v187 = 0u;
    goto LABEL_53;
  }

  v87 = v86;
  v88 = sub_1000C5194();

  v89 = v166;
  v56 = (v166 + 104);
  v90 = v165;
  v91 = v167;
  *&v172 = *(v166 + 104);
  (v172)(v165, enum case for PhotoPosterUserInfoKey.regions(_:), v167);
  v92 = sub_1000C42B4();
  v94 = v93;
  v181 = *(v89 + 8);
  (v181)(v90, v91);
  v182 = v92;
  v183 = v94;
  sub_1000C5914();
  if (!*(v88 + 16) || (v95 = sub_10009A124(&v184), (v96 & 1) == 0))
  {

    sub_100046CAC(&v184);
    v186 = 0u;
    v187 = 0u;
    goto LABEL_53;
  }

  sub_10001D804(*(v88 + 56) + 32 * v95, &v186);
  sub_100046CAC(&v184);

  if (!*(&v187 + 1))
  {
LABEL_53:
    sub_100018F90(&v186, &qword_1000FC828, &qword_1000CF790);
LABEL_54:
    v185 = 0u;
    v184 = 0u;
    sub_100018F90(&v184, &qword_1000FC828, &qword_1000CF790);
    v22 = 0;
    v165 = 0;
    v185 = 0u;
    v184 = 0u;
    v106 = v180;
    goto LABEL_55;
  }

  sub_10001D1A8(0, &qword_1000FC478, NSDictionary_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_54;
  }

  v97 = v184;
  if (!v184)
  {
    goto LABEL_54;
  }

  v153 = v61;
  v98 = v158;
  v99 = v167;
  v100 = v172;
  (v172)(v158, enum case for PhotoPosterUserInfoKey.facesRegion(_:), v167);
  v101 = v97;
  v102 = sub_1000C42B4();
  v104 = v103;
  (v181)(v98, v99);
  *&v186 = v102;
  *(&v186 + 1) = v104;
  v105 = [v101 __swift_objectForKeyedSubscript:sub_1000C5C44()];
  swift_unknownObjectRelease();

  if (v105)
  {
    sub_1000C58C4();
    swift_unknownObjectRelease();
  }

  else
  {
    v186 = 0u;
    v187 = 0u;
  }

  v185 = v187;
  v184 = v186;
  if (*(&v187 + 1))
  {
    sub_1000124CC(&qword_1000FD880, &qword_1000CEF00);
    if (swift_dynamicCast())
    {
      v22 = v186;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    sub_100018F90(&v184, &qword_1000FC828, &qword_1000CF790);
    v22 = 0;
  }

  v118 = v159;
  v119 = v167;
  v100(v159, enum case for PhotoPosterUserInfoKey.petsRegion(_:), v167);
  v56 = v101;
  v120 = sub_1000C42B4();
  v122 = v121;
  (v181)(v118, v119);
  *&v186 = v120;
  *(&v186 + 1) = v122;
  v123 = [v56 __swift_objectForKeyedSubscript:sub_1000C5C44()];
  swift_unknownObjectRelease();
  v165 = v56;

  if (v123)
  {
    sub_1000C58C4();
    swift_unknownObjectRelease();
  }

  else
  {
    v186 = 0u;
    v187 = 0u;
  }

  v61 = v153;
  v106 = v180;
  v185 = v187;
  v184 = v186;
  if (*(&v187 + 1))
  {
    sub_1000124CC(&qword_1000FD880, &qword_1000CEF00);
    if (swift_dynamicCast())
    {
      v19 = v186;
    }

    else
    {
      v19 = 0;
    }

    if (!v22)
    {
      goto LABEL_87;
    }

    goto LABEL_56;
  }

LABEL_55:
  sub_100018F90(&v184, &qword_1000FC828, &qword_1000CF790);
  v19 = 0;
  if (!v22)
  {
LABEL_87:
    v181 = 0;
    goto LABEL_88;
  }

LABEL_56:
  v56 = (v22 & 0xFFFFFFFFFFFFFF8);
  v48 = v61;
  if (!(v22 >> 62))
  {
    v107 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_58;
  }

LABEL_126:
  v107 = sub_1000C59A4();
LABEL_58:
  v108 = 0;
  v181 = _swiftEmptyArrayStorage;
  while (v107 != v108)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      sub_1000C5954();
      v110 = v108 + 1;
      if (__OFADD__(v108, 1))
      {
        goto LABEL_122;
      }
    }

    else
    {
      if (v108 >= v56[2])
      {
        goto LABEL_123;
      }

      v109 = *&v22[8 * v108 + 32];
      v110 = v108 + 1;
      if (__OFADD__(v108, 1))
      {
        goto LABEL_122;
      }
    }

    sub_1000C5624();
    ++v108;
    if ((v190 & 1) == 0)
    {
      v172 = v188;
      v159 = v189;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v181 = sub_100045308(0, *(v181 + 2) + 1, 1, v181);
      }

      v112 = *(v181 + 2);
      v111 = *(v181 + 3);
      v113 = v112 + 1;
      if (v112 >= v111 >> 1)
      {
        *&v158 = v112 + 1;
        v117 = sub_100045308((v111 > 1), v112 + 1, 1, v181);
        v113 = v158;
        v181 = v117;
      }

      v114 = v181;
      *(v181 + 2) = v113;
      v115 = &v114[32 * v112];
      v116 = v159;
      *(v115 + 2) = v172;
      *(v115 + 3) = v116;
      v108 = v110;
    }
  }

  v61 = v48;
  v48 = v179;
  v106 = v180;
LABEL_88:
  v124 = v157;
  if (v19)
  {
    if (v19 >> 62)
    {
      v125 = sub_1000C59A4();
    }

    else
    {
      v125 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = 0;
    *&v172 = _swiftEmptyArrayStorage;
    while (v125 != v22)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        sub_1000C5954();
        v56 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_124;
        }
      }

      else
      {
        if (v22 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_125;
        }

        v126 = *(v19 + 8 * v22 + 32);
        v56 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_124;
        }
      }

      sub_1000C5624();
      ++v22;
      if ((v193 & 1) == 0)
      {
        v159 = v191;
        v158 = v192;
        v127 = v61;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          *&v172 = sub_100045308(0, *(v172 + 16) + 1, 1, v172);
        }

        v129 = *(v172 + 16);
        v128 = *(v172 + 24);
        if (v129 >= v128 >> 1)
        {
          *&v172 = sub_100045308((v128 > 1), v129 + 1, 1, v172);
        }

        v130 = v172;
        *(v172 + 16) = v129 + 1;
        v131 = v130 + 32 * v129;
        v132 = v158;
        *(v131 + 32) = v159;
        *(v131 + 48) = v132;
        v22 = v56;
        v61 = v127;
        v48 = v179;
      }
    }

    v124 = v157;
    v106 = v180;
  }

  else
  {
    *&v172 = 0;
  }

  *&v184 = 0;
  v133 = [v61 loadUserInfoWithError:&v184];
  v134 = v184;
  if (!v133)
  {
    v146 = v184;
    sub_1000C1474();

    swift_willThrow();

    v124 = 0;
    goto LABEL_114;
  }

  v135 = v133;
  v136 = sub_1000C5194();
  v137 = v134;

  if (!v136)
  {
LABEL_114:
    v186 = 0u;
    v187 = 0u;
    goto LABEL_116;
  }

  v157 = v124;
  v138 = v166;
  v139 = v164;
  v140 = v167;
  (*(v166 + 104))(v164, enum case for PhotoPosterUserInfoKey.isForPlayground(_:), v167);
  v141 = sub_1000C42B4();
  v143 = v142;
  (*(v138 + 8))(v139, v140);
  v182 = v141;
  v183 = v143;
  sub_1000C5914();
  if (*(v136 + 16) && (v144 = sub_10009A124(&v184), (v145 & 1) != 0))
  {
    sub_10001D804(*(v136 + 56) + 32 * v144, &v186);
    sub_100046CAC(&v184);

    v124 = v157;
    if (*(&v187 + 1))
    {
      swift_dynamicCast();
      goto LABEL_117;
    }
  }

  else
  {

    sub_100046CAC(&v184);
    v186 = 0u;
    v187 = 0u;
    v124 = v157;
  }

LABEL_116:
  sub_100018F90(&v186, &qword_1000FC828, &qword_1000CF790);
LABEL_117:
  [v106 options];
  [v106 options];
  sub_1000C2544();
  if (v124)
  {

    sub_100018F90(v171, &qword_1000FD878, &qword_1000CEEF8);
    (*(v170 + 8))(v175, v169);
    (*(v174 + 8))(v176, v173);
    v51 = v48[1];
    v52 = v177;
    v53 = v178;
    goto LABEL_5;
  }

  v147 = [v106 identifier];
  v167 = sub_1000C5224();
  v166 = v148;

  v149 = v174;
  (*(v174 + 16))(v160, v176, v173);
  v150 = v170;
  (*(v170 + 16))(v161, v175, v169);
  v151 = v171;
  sub_100018F28(v171, v162, &qword_1000FD878, &qword_1000CEEF8);
  sub_1000C2484();

  sub_100018F90(v151, &qword_1000FD878, &qword_1000CEEF8);
  (*(v150 + 8))(v175, v169);
  (*(v149 + 8))(v176, v173);
  (*(v179 + 8))(v177, v178);
}

void sub_1000829C4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v3 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v116 = &v111 - v5;
  v6 = sub_1000C4D84();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v117 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000124CC(&qword_1000FD8A8, &qword_1000CEF18);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v115 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v124 = &v111 - v13;
  v128 = sub_1000C4B54();
  v130 = *(v128 - 8);
  v14 = *(v130 + 64);
  v15 = __chkstk_darwin(v128);
  v123 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v122 = &v111 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v111 - v20;
  __chkstk_darwin(v19);
  v23 = &v111 - v22;
  v121 = sub_1000C4D24();
  v120 = *(v121 - 8);
  v24 = *(v120 + 64);
  v25 = __chkstk_darwin(v121);
  v119 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v125 = &v111 - v27;
  v28 = sub_1000C4594();
  v126 = *(v28 - 8);
  v29 = *(v126 + 64);
  __chkstk_darwin(v28);
  v129 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000C4384();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v111 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = 0;
  v36 = [a1 loadUserInfoWithError:&v134];
  v37 = v134;
  if (!v36)
  {
    v52 = v134;
    sub_1000C1474();

    swift_willThrow();
    return;
  }

  v38 = v36;
  v114 = v28;
  v131 = a1;
  v39 = sub_1000C5194();
  v40 = v37;

  (*(v32 + 104))(v35, enum case for AvatarPosterUserInfoKey.dataRepresentation(_:), v31);
  v41 = sub_1000C4374();
  v43 = v42;
  (*(v32 + 8))(v35, v31);
  v132 = v41;
  v133 = v43;
  sub_1000C5914();
  if (!*(v39 + 16) || (v44 = sub_10009A124(&v134), (v45 & 1) == 0))
  {

    sub_100046CAC(&v134);
LABEL_9:
    v134 = 0xD000000000000066;
    v135 = 0x80000001000D7CB0;
    v138[0] = 471;
    v139._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v139);

    v140._countAndFlagsBits = 58;
    v140._object = 0xE100000000000000;
    sub_1000C52E4(v140);
    v141._countAndFlagsBits = 0xD000000000000012;
    v141._object = 0x80000001000D7C90;
    sub_1000C52E4(v141);
    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    goto LABEL_10;
  }

  sub_10001D804(*(v39 + 56) + 32 * v44, v138);
  sub_100046CAC(&v134);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v46 = v133;
  if (v133 >> 60 == 15)
  {
    goto LABEL_9;
  }

  v47 = v132;
  v48 = sub_1000C1464();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  sub_1000C1454();
  sub_10008B2F4(&qword_1000FD8B0, &type metadata accessor for AvatarPosterConfiguration);
  v51 = v127;
  sub_1000C1444();
  if (v51)
  {
    sub_100018CBC(v47, v46);

LABEL_10:

    return;
  }

  v112 = v47;
  v113 = v46;

  v53 = sub_1000C4574();
  v54 = v130;
  v55 = v128;
  v127 = *(v130 + 104);
  v127(v23, enum case for MonogramPosterColorDescriptionKey.red(_:), v128);
  v56 = sub_1000C4B44();
  v58 = v57;
  v59 = *(v54 + 8);
  v60 = v55;
  v130 = v54 + 8;
  v61 = v59;
  v59(v23, v60);
  if (*(v53 + 16))
  {
    v62 = sub_100099FF8(v56, v58);
    v64 = v63;

    if (v64)
    {
      v65 = *(*(v53 + 56) + 8 * v62);
    }
  }

  else
  {
  }

  v66 = sub_1000C4574();
  v67 = v128;
  v127(v21, enum case for MonogramPosterColorDescriptionKey.green(_:), v128);
  v68 = sub_1000C4B44();
  v70 = v69;
  v61(v21, v67);
  if (*(v66 + 16))
  {
    v71 = sub_100099FF8(v68, v70);
    v73 = v72;

    if (v73)
    {
      v74 = *(*(v66 + 56) + 8 * v71);
    }
  }

  else
  {
  }

  v75 = sub_1000C4574();
  v76 = v122;
  v77 = v128;
  v127(v122, enum case for MonogramPosterColorDescriptionKey.blue(_:), v128);
  v78 = sub_1000C4B44();
  v80 = v79;
  v61(v76, v77);
  if (*(v75 + 16))
  {
    v81 = sub_100099FF8(v78, v80);
    v83 = v82;

    if (v83)
    {
      v84 = *(*(v75 + 56) + 8 * v81);
    }
  }

  else
  {
  }

  v85 = sub_1000C4574();
  v86 = v123;
  v87 = v128;
  v127(v123, enum case for MonogramPosterColorDescriptionKey.alpha(_:), v128);
  v88 = sub_1000C4B44();
  v90 = v89;
  v61(v86, v87);
  v91 = v125;
  if (*(v85 + 16))
  {
    v92 = sub_100099FF8(v88, v90);
    v94 = v93;

    v95 = v124;
    if (v94)
    {
      v96 = *(*(v85 + 56) + 8 * v92);
    }
  }

  else
  {

    v95 = v124;
  }

  sub_1000C4D04();
  v97 = v129;
  v98 = sub_1000C4554();
  if (v99 >> 60 == 15)
  {
    v134 = 0xD000000000000066;
    v135 = 0x80000001000D7CB0;
    v138[0] = 478;
    v142._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v142);

    v143._countAndFlagsBits = 58;
    v143._object = 0xE100000000000000;
    sub_1000C52E4(v143);
    v144._countAndFlagsBits = 0x6D49726174617661;
    v144._object = 0xEF61746144656761;
    sub_1000C52E4(v144);
    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    sub_100018CBC(v112, v113);

    (*(v120 + 8))(v91, v121);
    (*(v126 + 8))(v97, v114);
  }

  else
  {
    v100 = v98;
    v101 = v99;
    v102 = sub_1000C4564();
    if (v103 >> 60 == 15)
    {
      v104 = 1;
      v105 = v120;
    }

    else
    {
      v106 = v102;
      v107 = v103;
      sub_100018C68(v102, v103);
      sub_10008739C(v106, v107, v95);
      v105 = v120;
      sub_100018CBC(v106, v107);
      v104 = 0;
    }

    v108 = sub_1000C2264();
    (*(*(v108 - 8) + 56))(v95, v104, 1, v108);
    (*(v105 + 16))(v119, v91, v121);
    v136 = &type metadata for Data;
    v137 = &protocol witness table for Data;
    v134 = v100;
    v135 = v101;
    v109 = sub_1000C4D54();
    (*(*(v109 - 8) + 56))(v116, 1, 1, v109);
    sub_100018C68(v100, v101);
    sub_1000C4D64();
    sub_100018F28(v95, v115, &qword_1000FD8A8, &qword_1000CEF18);
    v110 = v129;
    sub_1000C4584();
    sub_1000C2334();
    sub_100018CBC(v112, v113);

    sub_100018CBC(v100, v101);
    sub_100018F90(v95, &qword_1000FD8A8, &qword_1000CEF18);
    (*(v105 + 8))(v91, v121);
    (*(v126 + 8))(v110, v114);
  }
}

void sub_1000838D4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v189 = sub_1000C4B54();
  v194 = *(v189 - 8);
  v4 = *(v194 + 64);
  v5 = __chkstk_darwin(v189);
  v175 = v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v174 = v164 - v8;
  v9 = __chkstk_darwin(v7);
  v173 = v164 - v10;
  v11 = __chkstk_darwin(v9);
  v172 = v164 - v12;
  v13 = __chkstk_darwin(v11);
  v183 = v164 - v14;
  v15 = __chkstk_darwin(v13);
  v182 = v164 - v16;
  v17 = __chkstk_darwin(v15);
  v181 = v164 - v18;
  __chkstk_darwin(v17);
  v180 = v164 - v19;
  v178 = sub_1000C4D24();
  v176 = *(v178 - 8);
  v20 = *(v176 + 64);
  v21 = __chkstk_darwin(v178);
  v171 = v164 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v170 = v164 - v24;
  v25 = __chkstk_darwin(v23);
  v177 = v164 - v26;
  __chkstk_darwin(v25);
  v184 = v164 - v27;
  v28 = sub_1000124CC(&qword_1000FD8C8, &qword_1000CEF30);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v185 = v164 - v30;
  v187 = sub_1000C48D4();
  v186 = *(v187 - 1);
  v31 = v186[8];
  v32 = __chkstk_darwin(v187);
  v34 = (v164 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v32);
  v179 = v164 - v35;
  v36 = sub_1000124CC(&qword_1000FD8D0, &qword_1000CEF38);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v169 = v164 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v42 = v164 - v41;
  __chkstk_darwin(v40);
  v190 = v164 - v43;
  v193 = sub_1000C4934();
  v188 = *(v193 - 8);
  v44 = *(v188 + 64);
  __chkstk_darwin(v193);
  v192 = v164 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1000C4624();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  __chkstk_darwin(v46);
  v50 = v164 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198[0] = 0;
  v51 = [a1 loadUserInfoWithError:v198];
  v52 = v198[0];
  if (!v51)
  {
    v67 = v198[0];
    sub_1000C1474();

    swift_willThrow();
    return;
  }

  v53 = v51;
  v168 = a2;
  v195 = a1;
  v54 = sub_1000C5194();
  v55 = v52;

  (*(v47 + 104))(v50, enum case for MonogramPosterUserInfoKey.dataRepresentation(_:), v46);
  v56 = sub_1000C4614();
  v58 = v57;
  (*(v47 + 8))(v50, v46);
  v196 = v56;
  v197 = v58;
  sub_1000C5914();
  if (!*(v54 + 16) || (v59 = sub_10009A124(v198), (v60 & 1) == 0))
  {

    sub_100046CAC(v198);
LABEL_9:
    v198[0] = 0xD000000000000066;
    v198[1] = 0x80000001000D7CB0;
    v199 = 543;
    v200._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v200);

    v201._countAndFlagsBits = 58;
    v201._object = 0xE100000000000000;
    sub_1000C52E4(v201);
    v202._object = 0x80000001000D7C90;
    v202._countAndFlagsBits = 0xD000000000000012;
    sub_1000C52E4(v202);
    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    goto LABEL_10;
  }

  sub_10001D804(*(v54 + 56) + 32 * v59, &v199);
  sub_100046CAC(v198);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v61 = v197;
  if (v197 >> 60 == 15)
  {
    goto LABEL_9;
  }

  v62 = v196;
  v63 = sub_1000C1464();
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  sub_1000C1454();
  sub_10008B2F4(&qword_1000FD8D8, &type metadata accessor for MonogramPosterConfiguration);
  v66 = v191;
  sub_1000C1444();
  if (v66)
  {
    sub_100018CBC(v62, v61);

LABEL_10:

    return;
  }

  v167 = v62;
  v166 = v61;

  v68 = sub_1000C32C4();
  v69 = *(v68 - 8);
  v70 = *(v69 + 56);
  v71 = v190;
  v191 = v68;
  v165 = v70;
  v164[1] = v69 + 56;
  (v70)(v190, 1, 1);
  v72 = v185;
  sub_1000C48E4();
  v73 = v186;
  v74 = v187;
  if ((v186[6])(v72, 1, v187) == 1)
  {
    sub_100018F90(v72, &qword_1000FD8C8, &qword_1000CEF30);
  }

  else
  {
    v75 = v72;
    v76 = v179;
    (v73[4])(v179, v75, v74);
    (v73[2])(v34, v76, v74);
    sub_1000878E8(v34, v42);
    (v73[1])(v76, v74);
    sub_100018F90(v71, &qword_1000FD8D0, &qword_1000CEF38);
    v165(v42, 0, 1, v191);
    sub_10001D860(v42, v71, &qword_1000FD8D0, &qword_1000CEF38);
  }

  v77 = sub_1000C4914();
  v78 = sub_1000C4904();
  v79 = v194;
  v80 = *(v194 + 104);
  v81 = v180;
  LODWORD(v185) = enum case for MonogramPosterColorDescriptionKey.red(_:);
  v82 = v189;
  v191 = v194 + 104;
  v187 = v80;
  v80(v180);
  v83 = sub_1000C4B44();
  v85 = v84;
  v86 = *(v79 + 8);
  v194 = v79 + 8;
  v186 = v86;
  (v86)(v81, v82);
  if (*(v77 + 16))
  {
    v87 = sub_100099FF8(v83, v85);
    v89 = v88;

    if (v89)
    {
      v90 = *(*(v77 + 56) + 8 * v87);
    }
  }

  else
  {
  }

  v91 = v181;
  LODWORD(v180) = enum case for MonogramPosterColorDescriptionKey.green(_:);
  v187(v181);
  v92 = sub_1000C4B44();
  v94 = v93;
  (v186)(v91, v82);
  if (*(v77 + 16))
  {
    v95 = sub_100099FF8(v92, v94);
    v97 = v96;

    if (v97)
    {
      v98 = *(*(v77 + 56) + 8 * v95);
    }
  }

  else
  {
  }

  v99 = v78;
  v100 = enum case for MonogramPosterColorDescriptionKey.blue(_:);
  v101 = v182;
  (v187)(v182, enum case for MonogramPosterColorDescriptionKey.blue(_:), v82);
  v102 = sub_1000C4B44();
  v104 = v103;
  (v186)(v101, v82);
  if (*(v77 + 16))
  {
    v105 = sub_100099FF8(v102, v104);
    v107 = v106;

    if (v107)
    {
      v108 = *(*(v77 + 56) + 8 * v105);
    }
  }

  else
  {
  }

  v109 = enum case for MonogramPosterColorDescriptionKey.alpha(_:);
  v110 = v183;
  (v187)(v183, enum case for MonogramPosterColorDescriptionKey.alpha(_:), v82);
  v111 = sub_1000C4B44();
  v113 = v112;
  (v186)(v110, v82);
  if (*(v77 + 16))
  {
    v114 = sub_100099FF8(v111, v113);
    v116 = v115;

    if (v116)
    {
      v117 = *(*(v77 + 56) + 8 * v114);
    }
  }

  else
  {
  }

  v118 = v184;
  sub_1000C4D04();
  v119 = v172;
  v120 = v189;
  (v187)(v172, v185, v189);
  v121 = sub_1000C4B44();
  v123 = v122;
  v124 = v119;
  v125 = v99;
  (v186)(v124, v120);
  if (*(v99 + 16))
  {
    v126 = sub_100099FF8(v121, v123);
    v128 = v127;

    if (v128)
    {
      v129 = *(*(v99 + 56) + 8 * v126);
    }
  }

  else
  {
  }

  v130 = v173;
  v131 = v189;
  (v187)(v173, v180, v189);
  v132 = sub_1000C4B44();
  v134 = v133;
  (v186)(v130, v131);
  if (*(v125 + 16))
  {
    v135 = sub_100099FF8(v132, v134);
    v137 = v136;

    if (v137)
    {
      v138 = *(*(v125 + 56) + 8 * v135);
    }
  }

  else
  {
  }

  v139 = v174;
  v140 = v189;
  (v187)(v174, v100, v189);
  v141 = sub_1000C4B44();
  v143 = v142;
  (v186)(v139, v140);
  if (*(v125 + 16))
  {
    v144 = sub_100099FF8(v141, v143);
    v146 = v145;

    if (v146)
    {
      v147 = *(*(v125 + 56) + 8 * v144);
    }
  }

  else
  {
  }

  v148 = v175;
  v149 = v189;
  (v187)(v175, v109, v189);
  v150 = sub_1000C4B44();
  v152 = v151;
  (v186)(v148, v149);
  if (*(v125 + 16))
  {
    v153 = sub_100099FF8(v150, v152);
    v155 = v154;

    v156 = v176;
    v157 = v178;
    if (v155)
    {
      v158 = *(*(v125 + 56) + 8 * v153);
    }
  }

  else
  {

    v156 = v176;
    v157 = v178;
  }

  v159 = v177;
  sub_1000C4D04();
  sub_100018F28(v190, v169, &qword_1000FD8D0, &qword_1000CEF38);
  v160 = *(v156 + 16);
  v160(v170, v118, v157);
  v160(v171, v159, v157);
  v161 = v192;
  sub_1000C4924();
  sub_1000C48F4();
  sub_1000C32D4();
  sub_100018CBC(v167, v166);

  v162 = *(v156 + 8);
  v163 = v178;
  v162(v177, v178);
  v162(v118, v163);
  sub_100018F90(v190, &qword_1000FD8D0, &qword_1000CEF38);
  (*(v188 + 8))(v161, v193);
}

void sub_100084C24(void *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v3 = sub_1000124CC(&qword_1000FD900, &qword_1000CEF60);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v123 = v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v115 - v7;
  v125 = sub_1000C3164();
  v124 = *(v125 - 8);
  v9 = *(v124 + 64);
  v10 = __chkstk_darwin(v125);
  v120 = v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v121 = v115 - v12;
  v13 = sub_1000C4B24();
  v134 = *(v13 - 8);
  v135 = v13;
  v14 = *(v134 + 64);
  v15 = __chkstk_darwin(v13);
  v130 = v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v129 = v115 - v18;
  v19 = __chkstk_darwin(v17);
  v128 = v115 - v20;
  __chkstk_darwin(v19);
  v127 = v115 - v21;
  v22 = sub_1000C4D24();
  v126 = *(v22 - 8);
  v23 = *(v126 + 64);
  v24 = __chkstk_darwin(v22);
  v119 = v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v133 = v115 - v26;
  v27 = sub_1000C45F4();
  v28 = *(v27 - 8);
  v29 = v28[8];
  v30 = __chkstk_darwin(v27);
  v32 = v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = v115 - v33;
  v132 = sub_1000C4704();
  v131 = *(v132 - 8);
  v35 = *(v131 + 64);
  __chkstk_darwin(v132);
  v137 = v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141[0] = 0;
  v37 = [a1 loadUserInfoWithError:v141];
  v38 = v141[0];
  if (v37)
  {
    v39 = v37;
    v117 = v8;
    v116 = v22;
    v136 = a1;
    v40 = sub_1000C5194();
    v41 = v38;

    v118 = v28[13];
    v118(v34, enum case for GradientPosterUserInfoKey.baseColor(_:), v27);
    v42 = sub_1000C45E4();
    v44 = v43;
    v45 = v28[1];
    v45(v34, v27);
    v142 = v42;
    v143 = v44;
    sub_1000C5914();
    if (*(v40 + 16) && (v46 = sub_10009A124(v141), (v47 & 1) != 0))
    {
      sub_10001D804(*(v40 + 56) + 32 * v46, &v142);
      sub_100046CAC(v141);
      sub_1000124CC(&qword_1000FD908, &qword_1000CEF68);
      if (swift_dynamicCast())
      {
        v48 = v139;
      }

      else
      {
        v48 = 0;
      }
    }

    else
    {
      sub_100046CAC(v141);
      v48 = 0;
    }

    v49 = v138;
    v50 = sub_10008B184(0x6F6C6F4365736162, 0xE900000000000072, 0xD000000000000065, 0x80000001000D7BD0, 703, v48);
    if (v49)
    {
      goto LABEL_9;
    }

    v138 = 0;
    v115[1] = v50;

    v118(v32, enum case for GradientPosterUserInfoKey.variant(_:), v27);
    v52 = sub_1000C45E4();
    v54 = v53;
    v45(v32, v27);
    v142 = v52;
    v143 = v54;
    sub_1000C5914();
    if (!*(v40 + 16))
    {
      goto LABEL_19;
    }

    v55 = sub_10009A124(v141);
    if (v56)
    {
      sub_10001D804(*(v40 + 56) + 32 * v55, &v142);
      sub_100046CAC(v141);

      v57 = swift_dynamicCast();
      v58 = v57 ? v139 : 0;
      v59 = v57 ? v140 : 0;
    }

    else
    {
LABEL_19:

      sub_100046CAC(v141);
      v58 = 0;
      v59 = 0;
    }

    v60 = v138;
    v61 = v134;
    sub_10008B33C(0x746E6169726176, 0xE700000000000000, 0xD000000000000065, 0x80000001000D7BD0, 704, v58, v59);
    if (v60)
    {
LABEL_9:
    }

    else
    {
      v138 = 0;

      sub_1000C46E4();
      v62 = sub_1000C46F4();
      v63 = *(v61 + 104);
      v64 = v127;
      v65 = v135;
      v63(v127, enum case for GradientPosterColorDescriptionKey.red(_:), v135);
      v66 = sub_1000C4B14();
      v68 = v67;
      v69 = *(v61 + 8);
      v69(v64, v65);
      if (*(v62 + 16))
      {
        v70 = sub_100099FF8(v66, v68);
        v72 = v71;

        if (v72)
        {
          v73 = *(*(v62 + 56) + 8 * v70);
        }
      }

      else
      {
      }

      v74 = sub_1000C46F4();
      v75 = v128;
      v76 = v135;
      v63(v128, enum case for GradientPosterColorDescriptionKey.green(_:), v135);
      v77 = sub_1000C4B14();
      v79 = v78;
      v69(v75, v76);
      if (*(v74 + 16))
      {
        v80 = sub_100099FF8(v77, v79);
        v82 = v81;

        if (v82)
        {
          v83 = *(*(v74 + 56) + 8 * v80);
        }
      }

      else
      {
      }

      v84 = sub_1000C46F4();
      v85 = v129;
      v86 = v135;
      v63(v129, enum case for GradientPosterColorDescriptionKey.blue(_:), v135);
      v87 = sub_1000C4B14();
      v89 = v88;
      v69(v85, v86);
      if (*(v84 + 16))
      {
        v90 = sub_100099FF8(v87, v89);
        v92 = v91;

        if (v92)
        {
          v93 = *(*(v84 + 56) + 8 * v90);
        }
      }

      else
      {
      }

      v94 = sub_1000C46F4();
      v95 = v130;
      v96 = v135;
      v63(v130, enum case for GradientPosterColorDescriptionKey.alpha(_:), v135);
      v97 = sub_1000C4B14();
      v99 = v98;
      v69(v95, v96);
      if (*(v94 + 16))
      {
        v100 = sub_100099FF8(v97, v99);
        v102 = v101;

        v103 = v136;
        v104 = v117;
        v105 = v133;
        if (v102)
        {
          v106 = *(*(v94 + 56) + 8 * v100);
        }
      }

      else
      {

        v103 = v136;
        v104 = v117;
        v105 = v133;
      }

      v107 = v138;
      sub_1000C4D04();
      v108 = v137;
      if (v107)
      {
        (*(v131 + 8))(v137, v132);
      }

      else
      {
        sub_1000C46D4();
        sub_1000C3154();
        v109 = v123;
        sub_100018F28(v104, v123, &qword_1000FD900, &qword_1000CEF60);
        v110 = v124;
        v111 = v125;
        if ((*(v124 + 48))(v109, 1, v125) == 1)
        {
          sub_100018F90(v109, &qword_1000FD900, &qword_1000CEF60);
          v141[0] = 0xD000000000000066;
          v141[1] = 0x80000001000D7CB0;
          v142 = 715;
          v144._countAndFlagsBits = sub_1000C5BE4();
          sub_1000C52E4(v144);

          v145._countAndFlagsBits = 58;
          v145._object = 0xE100000000000000;
          sub_1000C52E4(v145);
          v146._countAndFlagsBits = 0x746E656964617247;
          v146._object = 0xEF746E6169726156;
          sub_1000C52E4(v146);
          sub_1000C4FC4();
          sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion);
          swift_allocError();
          sub_1000C4FB4();
          swift_willThrow();

          sub_100018F90(v104, &qword_1000FD900, &qword_1000CEF60);
          (*(v126 + 8))(v105, v116);
          (*(v131 + 8))(v108, v132);
        }

        else
        {
          sub_100018F90(v104, &qword_1000FD900, &qword_1000CEF60);
          v112 = v121;
          (*(v110 + 32))(v121, v109, v111);
          v113 = v126;
          v114 = v116;
          (*(v126 + 16))(v119, v105, v116);
          (*(v110 + 16))(v120, v112, v111);
          sub_1000C3174();

          (*(v110 + 8))(v112, v111);
          (*(v113 + 8))(v105, v114);
          (*(v131 + 8))(v137, v132);
        }
      }
    }
  }

  else
  {
    v51 = v141[0];
    sub_1000C1474();

    swift_willThrow();
  }
}

void sub_100085AA4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000C4074();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = 0;
  v10 = [a1 loadUserInfoWithError:&v94];
  v11 = v94;
  if (!v10)
  {
    v25 = v94;
    sub_1000C1474();

LABEL_24:
    swift_willThrow();
LABEL_25:

    return;
  }

  v91 = a2;
  v12 = v10;
  v13 = sub_1000C5194();
  v14 = v11;

  (*(v6 + 104))(v9, enum case for GradientVFXPosterKey.custom(_:), v5);
  v15 = sub_1000C4064();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  v96 = v15;
  v97 = v17;
  sub_1000C5914();
  if (*(v13 + 16) && (v18 = sub_10009A124(&v94), (v19 & 1) != 0))
  {
    sub_10001D804(*(v13 + 56) + 32 * v18, &v96);
    sub_100046CAC(&v94);

    v20 = swift_dynamicCast();
    if (v20)
    {
      v21 = v92;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = v93;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {

    sub_100046CAC(&v94);
    v21 = 0;
    v22 = 0;
  }

  v23 = sub_10008B33C(0x727453726F6C6F63, 0xEB00000000676E69, 0xD000000000000065, 0x80000001000D7BD0, 724, v21, v22);
  if (v2)
  {

    return;
  }

  v26 = v23;
  v27 = v24;

  v94 = v26;
  v95 = v27;
  v96 = 12079;
  v97 = 0xE200000000000000;
  sub_10008B4A8();
  sub_10008B4FC();
  v28 = sub_1000C51C4();

  v30 = v28[2];
  if (v30 != 2)
  {

    v94 = 0;
    v95 = 0xE000000000000000;
    sub_1000C5944(37);

    v94 = 0xD000000000000023;
    v95 = 0x80000001000D7DB0;
    v96 = v30;
    v98._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v98);

    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
LABEL_23:
    sub_1000C4FB4();
    goto LABEL_24;
  }

  v90 = "DKDrawingStrokePoints";
  v32 = v28[4];
  v31 = v28[5];
  v33 = v28[6];
  v34 = v28[7];
  v94 = 47;
  v95 = 0xE100000000000000;
  __chkstk_darwin(v29);
  *&v89[-4] = &v94;

  v36 = sub_10008A468(0x7FFFFFFFFFFFFFFFLL, 1, sub_10008B5C4, &v89[-8], v32, v31, v33, v35);
  if (v28[2] >= 2uLL)
  {
    v37 = v36;
    v38 = v28[8];
    v39 = v28[9];
    v40 = v28[10];
    v41 = v28[11];

    v94 = 47;
    v95 = 0xE100000000000000;
    __chkstk_darwin(v42);
    *&v89[-4] = &v94;
    v43 = sub_10008A468(0x7FFFFFFFFFFFFFFFLL, 1, sub_10008B5C4, &v89[-8], v38, v39, v40, v89);
    v28 = v43;
    v44 = *(v37 + 2);
    if (v44 == 4 && *(v43 + 2) == 4)
    {
      v45 = *(v37 + 4);
      v46 = *(v37 + 5);
      v47 = *(v37 + 6);
      v48 = *(v37 + 7);

      v49 = sub_1000C5474();
      v50 = v90;
      sub_10007BA90(828663154, 0xE400000000000000, 0xD000000000000065, v90 | 0x8000000000000000, 738, v49 | ((HIDWORD(v49) & 1) << 32));
      if (*(v37 + 2) < 2uLL)
      {
        __break(1u);
      }

      else
      {
        v51 = *(v37 + 8);
        v52 = *(v37 + 9);
        v53 = *(v37 + 10);
        v54 = *(v37 + 11);

        v55 = sub_1000C5474();
        sub_10007BA90(0x316E65657267, 0xE600000000000000, 0xD000000000000065, v50 | 0x8000000000000000, 739, v55 | ((HIDWORD(v55) & 1) << 32));
        if (*(v37 + 2) >= 3uLL)
        {
          v56 = *(v37 + 12);
          v57 = *(v37 + 13);
          v58 = *(v37 + 14);
          v59 = *(v37 + 15);

          v60 = sub_1000C5474();
          sub_10007BA90(0x3165756C62, 0xE500000000000000, 0xD000000000000065, v50 | 0x8000000000000000, 740, v60 | ((HIDWORD(v60) & 1) << 32));
          if (*(v37 + 2) < 4uLL)
          {
            __break(1u);
          }

          else
          {
            v62 = *(v37 + 16);
            v63 = *(v37 + 17);
            v64 = *(v37 + 18);
            v65 = *(v37 + 19);

            v66 = sub_1000C5474();
            sub_10007BA90(0x316168706C61, 0xE600000000000000, 0xD000000000000065, v50 | 0x8000000000000000, 741, v66 | ((HIDWORD(v66) & 1) << 32));
            if (v28[2])
            {
              v68 = v28[4];
              v67 = v28[5];
              v69 = v28[6];
              v70 = v28[7];

              v71 = sub_1000C5474();
              sub_10007BA90(845440370, 0xE400000000000000, 0xD000000000000065, v50 | 0x8000000000000000, 744, v71 | ((HIDWORD(v71) & 1) << 32));
              v89[1] = v72;
              if (v28[2] >= 2uLL)
              {
                v74 = v28[8];
                v73 = v28[9];
                v75 = v28[10];
                v76 = v28[11];

                v77 = sub_1000C5474();
                sub_10007BA90(0x326E65657267, 0xE600000000000000, 0xD000000000000065, v50 | 0x8000000000000000, 745, v77 | ((HIDWORD(v77) & 1) << 32));
                v89[0] = v78;
                if (v28[2] >= 3uLL)
                {
                  v80 = v28[12];
                  v79 = v28[13];
                  v81 = v28[14];
                  v82 = v28[15];

                  v83 = sub_1000C5474();
                  sub_10007BA90(0x3265756C62, 0xE500000000000000, 0xD000000000000065, v50 | 0x8000000000000000, 746, v83 | ((HIDWORD(v83) & 1) << 32));
                  goto LABEL_32;
                }

LABEL_39:
                __break(1u);
                goto LABEL_40;
              }

LABEL_38:
              __break(1u);
              goto LABEL_39;
            }
          }

          __break(1u);
          goto LABEL_38;
        }
      }

      __break(1u);
    }

    v94 = 0;
    v95 = 0xE000000000000000;
    sub_1000C5944(60);
    v99._countAndFlagsBits = 0xD00000000000002FLL;
    v99._object = 0x80000001000D7DE0;
    sub_1000C52E4(v99);
    v96 = v44;
    v100._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v100);

    v101._countAndFlagsBits = 0x32726F6C6F63202CLL;
    v101._object = 0xE90000000000003ALL;
    sub_1000C52E4(v101);
    v61 = v28[2];

    v96 = v61;
    v102._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v102);

    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    goto LABEL_23;
  }

  __break(1u);
LABEL_32:
  if (v28[2] >= 4uLL)
  {
    v84 = v28[16];
    v85 = v28[17];
    v86 = v28[18];
    v87 = v28[19];

    v88 = sub_1000C5474();
    sub_10007BA90(0x326168706C61, 0xE600000000000000, 0xD000000000000065, v90 | 0x8000000000000000, 747, v88 | ((HIDWORD(v88) & 1) << 32));
    sub_1000C3BF4();
    goto LABEL_25;
  }

LABEL_40:
  __break(1u);
}

void sub_100086594(void *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = sub_1000124CC(&qword_1000FD920, &qword_1000CEF70);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v112 = v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v99 - v7;
  v9 = sub_1000C2814();
  v113 = *(v9 - 8);
  v114 = v9;
  v10 = *(v113 + 64);
  v11 = __chkstk_darwin(v9);
  v108 = v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v109 = v99 - v13;
  v14 = sub_1000124CC(&qword_1000FC608, qword_1000CA058);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v107 = v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v106 = v99 - v19;
  __chkstk_darwin(v18);
  v21 = v99 - v20;
  v22 = sub_1000C44B4();
  v23 = *(v22 - 8);
  v24 = v23[8];
  v25 = __chkstk_darwin(v22);
  v27 = v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = v99 - v28;
  v118 = 0;
  v30 = [a1 loadUserInfoWithError:&v118];
  v31 = v118;
  if (!v30)
  {
    v47 = v118;
    sub_1000C1474();

    swift_willThrow();
    return;
  }

  v32 = v30;
  v104 = v8;
  v111 = v21;
  v115 = a1;
  v33 = sub_1000C5194();
  v34 = v31;

  v105 = v23[13];
  v105(v29, enum case for DynamicPosterUserInfoKey.identifier(_:), v22);
  v35 = sub_1000C44A4();
  v37 = v36;
  v38 = v23[1];
  v38(v29, v22);
  *&v120[0] = v35;
  *(&v120[0] + 1) = v37;
  sub_1000C5914();
  if (*(v33 + 16) && (v39 = sub_10009A124(&v118), (v40 & 1) != 0))
  {
    sub_10001D804(*(v33 + 56) + 32 * v39, v120);
    sub_100046CAC(&v118);
    v41 = swift_dynamicCast();
    if (v41)
    {
      v42 = *&v117[0];
    }

    else
    {
      v42 = 0;
    }

    if (v41)
    {
      v43 = *(&v117[0] + 1);
    }

    else
    {
      v43 = 0;
    }
  }

  else
  {
    sub_100046CAC(&v118);
    v42 = 0;
    v43 = 0;
  }

  v44 = v116;
  v45 = sub_10008B33C(0x696669746E656469, 0xEA00000000007265, 0xD000000000000065, 0x80000001000D7BD0, 757, v42, v43);
  if (v44)
  {

    return;
  }

  v102 = "DKDrawingStrokePoints";
  v103 = v45;
  v116 = v46;

  v48 = sub_1000C4D24();
  v49 = *(v48 - 8);
  v50 = *(v49 + 56);
  v101 = v48;
  v100 = v50;
  v99[1] = v49 + 56;
  (v50)(v111, 1, 1);
  v105(v27, enum case for DynamicPosterUserInfoKey.customColor(_:), v22);
  v51 = sub_1000C44A4();
  v53 = v52;
  v38(v27, v22);
  *&v117[0] = v51;
  *(&v117[0] + 1) = v53;
  sub_1000C5914();
  if (!*(v33 + 16) || (v54 = sub_10009A124(&v118), (v55 & 1) == 0))
  {

    sub_100046CAC(&v118);
LABEL_23:
    v59 = v104;
    v61 = v112;
    v60 = v113;
    sub_1000C2804();
    sub_100018F28(v59, v61, &qword_1000FD920, &qword_1000CEF70);
    v62 = v114;
    if ((*(v60 + 48))(v61, 1, v114) != 1)
    {
      sub_100018F90(v59, &qword_1000FD920, &qword_1000CEF70);
      v63 = v109;
      (*(v60 + 32))(v109, v61, v62);
      (*(v60 + 16))(v108, v63, v62);
      v64 = v111;
      sub_100018F28(v111, v107, &qword_1000FC608, qword_1000CA058);
      sub_1000C2824();

      (*(v60 + 8))(v63, v62);
      v65 = v64;
LABEL_33:
      sub_100018F90(v65, &qword_1000FC608, qword_1000CA058);
      return;
    }

    sub_100018F90(v61, &qword_1000FD920, &qword_1000CEF70);
    v118 = 0xD000000000000066;
    v119 = 0x80000001000D7CB0;
    *&v120[0] = 776;
    v121._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v121);

    v122._countAndFlagsBits = 58;
    v122._object = 0xE100000000000000;
    sub_1000C52E4(v122);
    v123._countAndFlagsBits = 0xD00000000000001BLL;
    v123._object = 0x80000001000D7E10;
    sub_1000C52E4(v123);
    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();

    sub_100018F90(v59, &qword_1000FD920, &qword_1000CEF70);
LABEL_32:
    v65 = v111;
    goto LABEL_33;
  }

  sub_10001D804(*(v33 + 56) + 32 * v54, v117);
  sub_100046CAC(&v118);

  sub_10001D8C8(v117, v120);
  sub_10001D804(v120, &v118);
  v56 = swift_dynamicCast();
  if (v56)
  {
    v57 = *&v117[0];
  }

  else
  {
    v57 = 0;
  }

  if (v56)
  {
    v58 = *(&v117[0] + 1);
  }

  else
  {
    v58 = 0;
  }

  v66 = sub_10008B33C(0x6F436D6F74737563, 0xEB00000000726F6CLL, 0xD000000000000065, v102 | 0x8000000000000000, 761, v57, v58);
  v68 = v67;

  v118 = 47;
  v119 = 0xE100000000000000;
  __chkstk_darwin(v69);
  v99[-2] = &v118;
  v70 = sub_10008A870(0x7FFFFFFFFFFFFFFFLL, 1, sub_10008B550, &v99[-4], v66, v68, v99);
  v71 = v70;
  v72 = v70[2];
  if (v72 != 4)
  {

    v118 = 0;
    v119 = 0xE000000000000000;
    sub_1000C5944(48);

    v118 = 0xD00000000000002ELL;
    v119 = 0x80000001000D7E60;
    *&v117[0] = v72;
    v124._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v124);

    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();

    sub_100015F68(v120);
    goto LABEL_32;
  }

  v73 = v70[4];
  v74 = v70[5];
  v75 = v70[6];
  v76 = v70[7];

  v77 = sub_1000C5454();
  sub_10007BBFC(6579570, 0xE300000000000000, 0xD000000000000065, v102 | 0x8000000000000000, 769, v77, v78 & 1);
  v79 = v111;
  if (v71[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_36;
  }

  v80 = v71[8];
  v81 = v71[9];
  v82 = v71[10];
  v83 = v71[11];

  v84 = sub_1000C5454();
  sub_10007BBFC(0x6E65657267, 0xE500000000000000, 0xD000000000000065, v102 | 0x8000000000000000, 770, v84, v85 & 1);
  if (v71[2] < 3uLL)
  {
LABEL_36:
    __break(1u);
  }

  v86 = v71[12];
  v87 = v71[13];
  v88 = v71[14];
  v89 = v71[15];

  v90 = sub_1000C5454();
  sub_10007BBFC(1702194274, 0xE400000000000000, 0xD000000000000065, v102 | 0x8000000000000000, 771, v90, v91 & 1);
  if (v71[2] >= 4uLL)
  {
    v92 = v71[16];
    v93 = v71[17];
    v94 = v71[18];
    v95 = v71[19];

    v96 = sub_1000C5454();
    sub_10007BBFC(0x6168706C61, 0xE500000000000000, 0xD000000000000065, v102 | 0x8000000000000000, 772, v96, v97 & 1);
    v98 = v106;
    sub_1000C4D04();
    sub_100015F68(v120);
    sub_100018F90(v79, &qword_1000FC608, qword_1000CA058);
    v100(v98, 0, 1, v101);
    sub_10001D860(v98, v79, &qword_1000FC608, qword_1000CA058);
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_10008739C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v5 = sub_1000C3524();
  v20 = *(v5 - 8);
  v21 = v5;
  v6 = *(v20 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (v19 - v10);
  blastdoor_AVTAvatarRecordSerializerGetClass();
  swift_getObjCClassMetadata();
  blastdoor_AVTAvatarRecordRenderingGetClass();
  swift_getObjCClassMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  isa = sub_1000C1544().super.isa;
  v14 = [ObjCClassFromMetadata avatarRecordFromData:isa];

  v15 = [v14 identifier];
  sub_1000C5224();

  v16 = [swift_getObjCClassFromMetadata() avatarDescriptorForRecord:v14];
  v17 = v22;
  sub_1000875D4(v16, v11);
  if (v17)
  {

    swift_unknownObjectRelease();

    return sub_100018CD0(a1, a2);
  }

  else
  {
    (*(v20 + 16))(v9, v11, v21);
    sub_1000C2254();
    (*(v20 + 8))(v11, v21);

    sub_100018CD0(a1, a2);
    return swift_unknownObjectRelease();
  }
}

void sub_1000875D4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000C3BE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v26 = a2;
    v12 = swift_allocBox();
    v25 = v13;
    v14 = [v11 name];
    sub_1000C5224();

    sub_1000C3BD4();
    if (v2)
    {
LABEL_3:
      swift_deallocBox();
      return;
    }

    (*(v6 + 32))(v25, v9, v5);
    v19 = v26;
    *v26 = v12;
    v20 = enum case for AvatarDescriptor.animoji(_:);
    v21 = sub_1000C3524();
    (*(*(v21 - 8) + 104))(v19, v20, v21);
  }

  else
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      sub_1000C3B24();
      v17 = swift_allocBox();
      sub_10007C820(v16, v18);
      if (v2)
      {
        goto LABEL_3;
      }

      *a2 = v17;
      v22 = enum case for AvatarDescriptor.memoji(_:);
      v23 = sub_1000C3524();
      (*(*(v23 - 8) + 104))(a2, v22, v23);
    }

    else
    {
      sub_1000C4FC4();
      sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
    }
  }
}

uint64_t sub_1000878E8@<X0>(void (*a1)(char *, void, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v3 = sub_1000C4834();
  v120 = *(v3 - 8);
  v121 = v3;
  v4 = *(v120 + 64);
  __chkstk_darwin(v3);
  v122 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C3264();
  v7 = *(v6 - 8);
  v118 = v6;
  v119 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v123 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1000C4894();
  v108 = *(v109 - 8);
  v10 = *(v108 + 64);
  v11 = __chkstk_darwin(v109);
  v106 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v104 = &v95 - v14;
  v15 = __chkstk_darwin(v13);
  v103 = &v95 - v16;
  __chkstk_darwin(v15);
  v102 = &v95 - v17;
  v18 = sub_1000C4D24();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v105 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000124CC(&qword_1000FD8E0, &qword_1000CEF40);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v110 = &v95 - v23;
  v111 = sub_1000C4754();
  v116 = *(v111 - 8);
  v24 = *(v116 + 64);
  __chkstk_darwin(v111);
  v107 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000124CC(&qword_1000FD8E8, &qword_1000CEF48);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v95 - v28;
  v30 = sub_1000C47A4();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000124CC(&qword_1000FD8F0, &qword_1000CEF50);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v101 = &v95 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v98 = &v95 - v40;
  __chkstk_darwin(v39);
  v42 = &v95 - v41;
  v43 = sub_1000124CC(&qword_1000FD8F8, &qword_1000CEF58);
  v44 = *(*(v43 - 8) + 64);
  v45 = __chkstk_darwin(v43 - 8);
  v100 = &v95 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v49 = &v95 - v48;
  __chkstk_darwin(v47);
  v51 = &v95 - v50;
  v52 = sub_1000C32A4();
  v53 = *(v52 - 8);
  v54 = *(v53 + 56);
  v115 = v51;
  v112 = v54;
  v99 = v53 + 56;
  v54(v51, 1, 1, v52);
  v55 = sub_1000C3284();
  v56 = *(v55 - 8);
  v57 = *(v56 + 56);
  v114 = v42;
  v97 = v55;
  v96 = v57;
  v95 = v56 + 56;
  (v57)(v42, 1, 1);
  sub_1000C4844();
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_100018F90(v29, &qword_1000FD8E8, &qword_1000CEF48);
  }

  else
  {
    (*(v31 + 32))(v34, v29, v30);
    sub_1000C4784();
    sub_1000C4794();
    sub_1000C4774();
    v58 = v117;
    sub_1000C3294();
    if (v58)
    {
      v59 = sub_1000C48D4();
      (*(*(v59 - 8) + 8))(a1, v59);
      (*(v31 + 8))(v34, v30);
LABEL_20:
      sub_100018F90(v114, &qword_1000FD8F0, &qword_1000CEF50);
      v93 = v115;
      return sub_100018F90(v93, &qword_1000FD8F8, &qword_1000CEF58);
    }

    v117 = 0;
    (*(v31 + 8))(v34, v30);
    v60 = v115;
    sub_100018F90(v115, &qword_1000FD8F8, &qword_1000CEF58);
    v112(v49, 0, 1, v52);
    sub_10001D860(v49, v60, &qword_1000FD8F8, &qword_1000CEF58);
  }

  v61 = v110;
  v112 = a1;
  sub_1000C4764();
  v62 = v116;
  v63 = v111;
  v64 = (*(v116 + 48))(v61, 1, v111);
  v66 = v121;
  v65 = v122;
  if (v64 == 1)
  {
    sub_100018F90(v61, &qword_1000FD8E0, &qword_1000CEF40);
    v67 = v117;
    goto LABEL_8;
  }

  v78 = v107;
  (*(v62 + 32))(v107, v61, v63);
  sub_1000C4744();
  v79 = v102;
  sub_1000C4724();
  sub_1000C4854();
  v80 = v62;
  v81 = *(v108 + 8);
  v82 = v109;
  v81(v79, v109);
  v83 = v103;
  sub_1000C4724();
  sub_1000C4874();
  v81(v83, v82);
  v84 = v104;
  sub_1000C4724();
  sub_1000C4864();
  v81(v84, v82);
  v85 = v106;
  sub_1000C4724();
  sub_1000C4884();
  v81(v85, v82);
  v86 = v117;
  sub_1000C4D04();
  v67 = v86;
  if (v86)
  {
    v87 = sub_1000C48D4();
    (*(*(v87 - 8) + 8))(v112, v87);
    (*(v80 + 8))(v78, v63);
    goto LABEL_20;
  }

  sub_1000C4714();
  sub_1000C4734();
  v88 = v98;
  sub_1000C3274();
  (*(v116 + 8))(v78, v63);
  v94 = v114;
  sub_100018F90(v114, &qword_1000FD8F0, &qword_1000CEF50);
  v96(v88, 0, 1, v97);
  v65 = v122;
  sub_10001D860(v88, v94, &qword_1000FD8F0, &qword_1000CEF50);
LABEL_8:
  v68 = sub_1000C48A4();
  v111 = sub_1000C48B4();
  v69 = sub_1000C48C4();
  v70 = *(v69 + 16);
  if (!v70)
  {
LABEL_15:

    v90 = v115;
    sub_100018F28(v115, v100, &qword_1000FD8F8, &qword_1000CEF58);
    v91 = v114;
    sub_100018F28(v114, v101, &qword_1000FD8F0, &qword_1000CEF50);
    sub_1000C32B4();
    v92 = sub_1000C48D4();
    (*(*(v92 - 8) + 8))(v112, v92);
    sub_100018F90(v91, &qword_1000FD8F0, &qword_1000CEF50);
    v93 = v90;
    return sub_100018F90(v93, &qword_1000FD8F8, &qword_1000CEF58);
  }

  v110 = v68;
  v125 = _swiftEmptyArrayStorage;
  v116 = v70;
  v117 = v69;
  sub_100045BAC(0, v70, 0);
  result = v117;
  v72 = 0;
  v73 = v125;
  v74 = v117 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
  v75 = (v120 + 8);
  while (v72 < *(result + 16))
  {
    (*(v120 + 16))(v65, v74 + *(v120 + 72) * v72, v66);
    sub_1000886C0(&v124, v123);
    if (v67)
    {

      v89 = sub_1000C48D4();
      (*(*(v89 - 8) + 8))(v112, v89);
      (*v75)(v65, v66);
      sub_100018F90(v114, &qword_1000FD8F0, &qword_1000CEF50);
      sub_100018F90(v115, &qword_1000FD8F8, &qword_1000CEF58);
    }

    v67 = 0;
    (*v75)(v65, v66);
    v125 = v73;
    v77 = v73[2];
    v76 = v73[3];
    if (v77 >= v76 >> 1)
    {
      sub_100045BAC(v76 > 1, v77 + 1, 1);
      v73 = v125;
    }

    ++v72;
    v73[2] = v77 + 1;
    (*(v119 + 32))(v73 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v77, v123, v118);
    result = v117;
    v66 = v121;
    v65 = v122;
    if (v116 == v72)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000886C0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v38 = a1;
  v33 = a2;
  v35 = sub_1000C4894();
  v37 = *(v35 - 8);
  v2 = *(v37 + 64);
  v3 = __chkstk_darwin(v35);
  v36 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v34 = v29 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = v29 - v8;
  __chkstk_darwin(v7);
  v11 = v29 - v10;
  v12 = sub_1000C4D24();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000C5094();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000C47B4();
  sub_1000C47E4();
  sub_1000C47E4();
  v22 = v39;
  result = sub_1000C5084();
  if (v22)
  {
    *v38 = v22;
  }

  else
  {
    v31 = v16;
    v32 = v20;
    v30 = v17;
    v29[1] = v21;
    sub_1000C47D4();
    sub_1000C4854();
    v39 = v15;
    v24 = *(v37 + 8);
    v25 = v11;
    v26 = v35;
    v24(v25, v35);
    sub_1000C47D4();
    sub_1000C4874();
    v24(v9, v26);
    v27 = v34;
    sub_1000C47D4();
    sub_1000C4864();
    v24(v27, v26);
    v28 = v36;
    sub_1000C47D4();
    sub_1000C4884();
    v24(v28, v26);
    sub_1000C4D04();
    sub_1000C47C4();
    sub_1000C4814();
    sub_1000C47F4();
    sub_1000C4824();
    sub_1000C4804();
    return sub_1000C3254();
  }

  return result;
}

void sub_100088A70(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32[2] = a2;
  v4 = sub_1000124CC(&qword_1000FD890, &qword_1000CEF08);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v32 - v6;
  v8 = sub_1000C2474();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v32 - v14;
  __chkstk_darwin(v13);
  v17 = v32 - v16;
  v18 = [a1 portraitConfiguration];
  [v18 screenSize];
  v36 = v19;
  v35 = v20;
  [v18 screenScale];
  v34 = v21;
  [v18 timeRect];
  [v18 inactiveTimeRect];
  [v18 parallaxPadding];
  sub_1000C2464();
  if (v2)
  {
  }

  else
  {
    v36 = v7;

    v22 = v33;
    v32[0] = *(v33 + 32);
    (v32[0])(v17, v15, v8);
    v23 = [a1 landscapeConfiguration];
    if (v23)
    {
      v24 = v23;
      [v24 screenSize];
      v34 = v26;
      v35 = v25;
      [v24 screenScale];
      v32[1] = v27;
      [v24 timeRect];
      [v24 inactiveTimeRect];
      [v24 parallaxPadding];
      v28 = v12;
      sub_1000C2464();
      v29 = a1;

      v30 = v36;
      (v32[0])(v36, v28, v8);
      v31 = 0;
    }

    else
    {
      v29 = a1;
      v31 = 1;
      v30 = v36;
    }

    (*(v22 + 56))(v30, v31, 1, v8);
    sub_1000C2444();
  }
}

void sub_100088E78(void *a1)
{
  v2 = sub_1000C24D4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_1000C2514();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1000124CC(&qword_1000FD8A0, &qword_1000CEF10);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v36 - v8;
  [a1 imageSize];
  v36[20] = v11;
  v36[21] = v10;
  [a1 deviceResolution];
  v36[18] = v13;
  v36[19] = v12;
  [a1 parallaxPadding];
  v36[16] = v15;
  v36[17] = v14;
  [a1 visibleFrame];
  v36[14] = v17;
  v36[15] = v16;
  v36[12] = v19;
  v36[13] = v18;
  [a1 inactiveFrame];
  v36[10] = v21;
  v36[11] = v20;
  v36[8] = v23;
  v36[9] = v22;
  [a1 timeFrame];
  v36[6] = v25;
  v36[7] = v24;
  v36[5] = v26;
  v36[4] = v27;
  v28 = [a1 clockLayerOrder];
  if (v28)
  {
    v29 = v28;
    sub_1000C5224();
    sub_1000C24E4();

    v30 = sub_1000C24F4();
    (*(*(v30 - 8) + 56))(v9, 0, 1, v30);
  }

  else
  {
    v31 = sub_1000C24F4();
    (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
  }

  [a1 clockIntersection];
  sub_1000C2504();
  [a1 layoutVariant];
  sub_1000C24C4();
  [a1 hasTopEdgeContact];
  [a1 spatialVisibleFrame];
  v36[3] = v32;
  v36[2] = v33;
  v36[1] = v34;
  v36[0] = v35;
  [a1 spatialAdaptiveFrame];
  [a1 adaptiveTimeFrame];
  [a1 salientContentFrame];
  sub_1000C2524();
}

void sub_100089288(CVPixelBufferRef a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v4 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v46[-v6];
  v8 = sub_1000C4D84();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v46[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1000C1A94();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v46[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = [(__CVBuffer *)a1 image];
  v18 = sub_10008B184(0x6567616D69, 0xE500000000000000, 0xD000000000000065, 0x80000001000D7BD0, 618, v17);
  if (v2)
  {
  }

  else
  {
    v51 = v13;
    v19 = v18;

    sub_1000C4C24();
    v52 = v19;
    v20 = a1;
    v21 = sub_1000C1A84();
    v22 = sub_1000C5554();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v48 = v21;
      v24 = v23;
      v49 = swift_slowAlloc();
      v54 = v49;
      *v24 = 134218754;
      v25 = v52;
      *(v24 + 4) = CVPixelBufferGetWidth(v52);
      *(v24 + 12) = 2048;
      *(v24 + 14) = CVPixelBufferGetHeight(v25);

      v50 = v11;
      *(v24 + 22) = 2080;
      [(__CVBuffer *)v20 frame];
      v55 = v26;
      v56 = v27;
      v57 = v28;
      v58 = v29;
      LOBYTE(v59) = 0;
      type metadata accessor for CGRect(0);
      v30 = sub_1000C4A84();
      v31 = v20;
      v33 = sub_10008AC30(v30, v32, &v54);
      v47 = v22;
      v34 = v33;

      *(v24 + 24) = v34;
      *(v24 + 32) = 2080;
      v35 = [(__CVBuffer *)v20 identifier];
      v36 = sub_1000C5224();
      v38 = v37;

      v39 = sub_10008AC30(v36, v38, &v54);

      *(v24 + 34) = v39;
      v20 = v31;
      v40 = v48;
      _os_log_impl(&_mh_execute_header, v48, v47, "Creating parallax image layer using image: (width: %ld, height: %ld) frame: %s identifier: %s", v24, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v51 + 8))(v16, v12);
    type metadata accessor for CVBuffer(0);
    v58 = v41;
    v59 = &protocol witness table for CVBufferRef;
    v42 = v52;
    v55 = v52;
    v43 = sub_1000C4D54();
    (*(*(v43 - 8) + 56))(v7, 1, 1, v43);
    a1 = v42;
    sub_1000C4D64();
    v44 = v20;
    [(__CVBuffer *)v44 frame];
    [(__CVBuffer *)v44 zPosition];
    v45 = [(__CVBuffer *)v44 identifier];

    sub_1000C5224();
    sub_1000C2404();
  }
}

void sub_10008977C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_1000C2574();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C1A94();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4C24();
  v12 = a1;
  v13 = sub_1000C1A84();
  v14 = sub_1000C5554();

  v15 = &MBDHTMLToSuper_MENTION_Frame__classData;
  v16 = &MBDHTMLToSuper_MENTION_Frame__classData;
  if (os_log_type_enabled(v13, v14))
  {
    v17 = swift_slowAlloc();
    v34 = v2;
    v18 = v17;
    v33 = swift_slowAlloc();
    v39 = v33;
    *v18 = 136315394;
    v37 = [v12 mediaType];
    v38 = 0;
    type metadata accessor for PFPosterMediaType(0);
    v19 = sub_1000C4A84();
    v32 = v7;
    v21 = sub_10008AC30(v19, v20, &v39);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    v22 = [v12 subpath];
    v23 = sub_1000C5224();
    v25 = v24;

    v26 = v23;
    v15 = &MBDHTMLToSuper_MENTION_Frame__classData;
    v27 = sub_10008AC30(v26, v25, &v39);
    v16 = &MBDHTMLToSuper_MENTION_Frame__classData;

    *(v18 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v13, v14, "Unpacking photos poster media with type: %s at subpath: %s", v18, 0x16u);
    swift_arrayDestroy();

    (*(v8 + 8))(v11, v32);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  [v12 v15[28].name];
  sub_1000C2564();
  v28 = [v12 assetUUID];
  if (v28)
  {
    v29 = v28;
    sub_1000C5224();
  }

  v30 = [v12 v16[28].base_prots];
  sub_1000C5224();

  [v12 version];
  sub_1000C2494();
}

void sub_100089AEC(_UNKNOWN **a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_1000C2414();
  v4 = *(v3 - 8);
  v70 = v3;
  v71 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v72 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C2534();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v65 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C14E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000C1A94();
  v69 = *(v15 - 8);
  v16 = *(v69 + 64);
  __chkstk_darwin(v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4C24();
  (*(v11 + 16))(v14, a1, v10);
  v19 = sub_1000C1A84();
  v20 = sub_1000C5554();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v66 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v68 = v11;
    v24 = v23;
    v73 = v23;
    *v22 = 136315138;
    sub_10008B2F4(&qword_1000FC778, &type metadata accessor for URL);
    v25 = sub_1000C5BE4();
    v63 = v15;
    v26 = v10;
    v28 = v27;
    v29 = v14;
    v30 = *(v68 + 8);
    v30(v29, v26);
    v31 = sub_10008AC30(v25, v28, &v73);
    v10 = v26;

    *(v22 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v19, v20, "Loading layer stack from URL: %s", v22, 0xCu);
    sub_100015F68(v24);
    v11 = v68;

    a1 = v66;

    (*(v69 + 8))(v18, v63);
  }

  else
  {

    v32 = v14;
    v30 = *(v11 + 8);
    v30(v32, v10);
    (*(v69 + 8))(v18, v15);
  }

  v33 = objc_opt_self();
  sub_1000C1494(v34);
  v36 = v35;
  v73 = 0;
  v37 = [v33 loadCompoundLayerStackFromWallpaperURL:v35 options:0x1FFFFLL error:&v73];

  if (!v37)
  {
    v42 = v73;
    sub_1000C1474();

    swift_willThrow();
    v30(a1, v10);
    return;
  }

  v38 = v73;
  v39 = [v37 portraitLayerStack];
  v40 = v67;
  v41 = sub_10008B184(0xD000000000000012, 0x80000001000D7C40, 0xD000000000000065, 0x80000001000D7BD0, 682, v39);
  if (v40)
  {
    v30(a1, v10);

    return;
  }

  v60 = v37;
  v61 = v30;
  v63 = v10;
  v43 = v41;

  v44 = [v43 layers];
  sub_10001D1A8(0, &qword_1000FD898, PFParallaxLayer_ptr);
  v45 = sub_1000C53A4();

  v73 = _swiftEmptyArrayStorage;
  v46 = v45 & 0xFFFFFFFFFFFFFF8;
  if (v45 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000C59A4())
  {
    v62 = v43;
    v68 = v11;
    v66 = a1;
    if (i)
    {
      v48 = 0;
      v11 = v45 & 0xC000000000000001;
      v69 = _swiftEmptyArrayStorage;
      a1 = &_s9BlastDoor41IMBalloonLayoutInfoSecondarySubcaptionKeySSvg_ptr;
      do
      {
        v43 = v48;
        while (1)
        {
          if (v11)
          {
            v49 = sub_1000C5954();
          }

          else
          {
            if (v43 >= *(v46 + 16))
            {
              goto LABEL_40;
            }

            v49 = *(v45 + 8 * v43 + 32);
          }

          v50 = v49;
          v48 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v43;
          if (v48 == i)
          {
            goto LABEL_26;
          }
        }

        sub_1000C5384();
        if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v69 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1000C53B4();
        }

        sub_1000C53D4();
        v69 = v73;
      }

      while (v48 != i);
    }

    else
    {
      v69 = _swiftEmptyArrayStorage;
    }

LABEL_26:

    v51 = v69;
    v52 = v66;
    if (v69 >> 62)
    {
      break;
    }

    v45 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v53 = v63;
    if (!v45)
    {
      goto LABEL_45;
    }

LABEL_28:
    v73 = _swiftEmptyArrayStorage;
    sub_100045B68(0, v45 & ~(v45 >> 63), 0);
    if (v45 < 0)
    {
      __break(1u);
    }

    v54 = 0;
    v43 = v73;
    a1 = (v51 & 0xC000000000000001);
    v67 = v51 & 0xFFFFFFFFFFFFFF8;
    v11 = v71 + 32;
    while (1)
    {
      v46 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (a1)
      {
        v55 = sub_1000C5954();
      }

      else
      {
        if (v54 >= *(v67 + 16))
        {
          goto LABEL_42;
        }

        v55 = *(v51 + 8 * v54 + 32);
      }

      sub_100089288(v55, v72);
      v73 = v43;
      v57 = *(v43 + 16);
      v56 = *(v43 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_100045B68(v56 > 1, v57 + 1, 1);
        v43 = v73;
      }

      *(v43 + 16) = v57 + 1;
      (*(v71 + 32))(v43 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v57, v72, v70);
      ++v54;
      v51 = v69;
      if (v46 == v45)
      {

        v52 = v66;
        v53 = v63;
        goto LABEL_46;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

  v45 = sub_1000C59A4();
  v53 = v63;
  if (v45)
  {
    goto LABEL_28;
  }

LABEL_45:

LABEL_46:
  v58 = v62;
  sub_100088E78([v62 layout]);
  LODWORD(v72) = [v58 depthEnabled];
  [v58 parallaxDisabled];
  [v58 clockAreaLuminance];
  [v58 settlingEffectEnabled];
  [v58 spatialPhotoEnabled];
  sub_1000C2424();
  v61(v52, v53);
}

char *sub_10008A468@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a8@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v16 = v9;
  v12 = a6;
  v17 = a5 >> 14;
  v13 = a6 >> 14;
  if (a1 && v17 != v13)
  {
    v8 = a4;
    v15 = _swiftEmptyArrayStorage;
    v10 = a5;
    do
    {
      v18 = v10 >> 14;
      if (v10 >> 14 == v13)
      {
        break;
      }

      v40 = a1;
      v47 = v16;
      v42 = v15;
      v15 = a7;
      while (1)
      {
        while (1)
        {
          v46[0] = sub_1000C5884();
          v46[1] = v19;
          v20 = v47;
          v21 = a3(v46);
          v47 = v20;
          if (v20)
          {

            return v15;
          }

          v22 = v21;

          if (v22)
          {
            break;
          }

          v15 = a7;
          v18 = sub_1000C5864() >> 14;
          if (v18 == v13)
          {
            v15 = v42;
            goto LABEL_28;
          }
        }

        result = v10;
        if (v10 >> 14 != v18 || (a2 & 1) == 0)
        {
          break;
        }

        v15 = a7;
        v10 = sub_1000C5864();
        v18 = v10 >> 14;
        if (v10 >> 14 == v13)
        {
          v15 = v42;
          goto LABEL_28;
        }
      }

      if (v18 < v10 >> 14)
      {
        __break(1u);
        return result;
      }

      v43 = sub_1000C5894();
      v38 = v25;
      v39 = v24;
      v37 = v26;
      v15 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_10004540C(0, *(v42 + 2) + 1, 1, v42);
      }

      v28 = *(v15 + 2);
      v27 = *(v15 + 3);
      if (v28 >= v27 >> 1)
      {
        v15 = sub_10004540C((v27 > 1), v28 + 1, 1, v15);
      }

      *(v15 + 2) = v28 + 1;
      v29 = &v15[32 * v28];
      *(v29 + 4) = v43;
      *(v29 + 5) = v39;
      *(v29 + 6) = v38;
      *(v29 + 7) = v37;
      v10 = sub_1000C5864();
      a1 = v40;
      v16 = v47;
    }

    while (*(v15 + 2) != v40);
LABEL_28:
    if (v10 >> 14 == v13 && (a2 & 1) != 0)
    {

      return v15;
    }

    if (v13 >= v10 >> 14)
    {
      v8 = sub_1000C5894();
      v10 = v33;
      v12 = v34;
      v13 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
LABEL_34:
      v11 = v14 + 1;
      if (v14 < a8 >> 1)
      {
LABEL_35:
        *(v15 + 2) = v11;
        v36 = &v15[32 * v14];
        *(v36 + 4) = v8;
        *(v36 + 5) = v10;
        *(v36 + 6) = v12;
        *(v36 + 7) = v13;
        return v15;
      }

LABEL_38:
      v15 = sub_10004540C((a8 > 1), v11, 1, v15);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v15 = sub_10004540C(0, *(v15 + 2) + 1, 1, v15);
    goto LABEL_33;
  }

  if (v17 != v13 || (a2 & 1) == 0)
  {
    if (v13 >= v17)
    {
      v8 = sub_1000C5894();
      v10 = v30;
      v12 = v31;
      v13 = v32;

      v15 = sub_10004540C(0, 1, 1, _swiftEmptyArrayStorage);
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10008A870@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = sub_1000C5374();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_10004540C(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_10004540C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1000C5354();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1000C52D4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1000C52D4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1000C5374();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_10004540C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1000C5374();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_10004540C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_10004540C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1000C52D4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10008AC30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10008ACFC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001D804(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100015F68(v11);
  return v7;
}

unint64_t sub_10008ACFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10008AE08(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1000C5984();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10008AE08(uint64_t a1, unint64_t a2)
{
  v4 = sub_10008AE54(a1, a2);
  sub_10008AF84(&off_1000F1100);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10008AE54(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100099F84(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000C5984();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000C52F4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100099F84(v10, 0);
        result = sub_1000C5924();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10008AF84(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10008B070(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_10008B070(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000124CC(&qword_1000FD870, &qword_1000CEEF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_10008B164(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_10007B49C(v1[5], a1);
}

uint64_t sub_10008B184(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a6)
  {

    v9._countAndFlagsBits = 58;
    v9._object = 0xE100000000000000;
    sub_1000C52E4(v9);
    v10._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v10);

    v11._countAndFlagsBits = 58;
    v11._object = 0xE100000000000000;
    sub_1000C52E4(v11);
    v12._countAndFlagsBits = a1;
    v12._object = a2;
    sub_1000C52E4(v12);
    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
  }

  return a6;
}

uint64_t sub_10008B2F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008B33C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a7)
  {

    v10._countAndFlagsBits = 58;
    v10._object = 0xE100000000000000;
    sub_1000C52E4(v10);
    v11._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v11);

    v12._countAndFlagsBits = 58;
    v12._object = 0xE100000000000000;
    sub_1000C52E4(v12);
    v13._countAndFlagsBits = a1;
    v13._object = a2;
    sub_1000C52E4(v13);
    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
  }

  return a6;
}

unint64_t sub_10008B4A8()
{
  result = qword_1000FD910;
  if (!qword_1000FD910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD910);
  }

  return result;
}

unint64_t sub_10008B4FC()
{
  result = qword_1000FD918;
  if (!qword_1000FD918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD918);
  }

  return result;
}

uint64_t sub_10008B56C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1000C5C04() & 1;
  }
}

uint64_t sub_10008B5E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000124CC(&qword_1000FD728, &qword_1000CEA50);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v40 - v5;
  v7 = type metadata accessor for MessageDictionary();
  v8 = (v1 + v7[37]);
  v9 = v8[1];
  if (v9 && (v10 = (v1 + v7[38]), v11 = v10[1], v11 >> 60 != 15))
  {
    v49 = a1;
    v50 = v9;
    v48 = *v8;
    v16 = *v10;
    v17 = (v1 + v7[41]);
    v18 = v17[1];
    v44 = v6;
    if (v18)
    {
      if (*v17 == 5457241 && v18 == 0xE300000000000000)
      {
        v47 = 1;
      }

      else
      {
        v20 = v7;
        v47 = sub_1000C5C04();
        v7 = v20;
      }
    }

    else
    {
      v47 = 0;
    }

    v21 = v7[39];
    v22 = (v1 + v7[40]);
    if (*(v22 + 8))
    {
      v23 = 0;
    }

    else
    {
      v23 = *v22;
    }

    v24 = *(v1 + v21 + 8);
    v45 = *(v1 + v21);
    v46 = v23;
    v25 = (v1 + v7[43]);
    v26 = *v25;
    v27 = v25[1];
    v28 = (v1 + v7[42]);
    v29 = *v28;
    v30 = v28[1];
    v31 = (v1 + v7[44]);
    v32 = v31[1];
    v41 = *v31;
    v33 = (v1 + v7[46]);
    v34 = v33[1];
    v42 = *v33;
    v43 = v24;
    sub_100018C54(v16, v11);
    sub_100018C54(v16, v11);

    sub_100018C54(v26, v27);
    sub_100018C54(v29, v30);
    sub_100018C54(v41, v32);
    sub_100018C54(v42, v34);
    v35 = v44;
    sub_1000C3FC4();
    sub_100018CBC(v16, v11);
    v36 = sub_1000C3FD4();
    v37 = *(v36 - 8);
    v38 = *(v37 + 56);
    v38(v35, 0, 1, v36);
    v39 = v49;
    (*(v37 + 32))(v49, v35, v36);
    return (v38)(v39, 0, 1, v36);
  }

  else
  {
    sub_100014F70();
    v12 = sub_1000C5714();
    sub_1000C5554();
    sub_1000C1A44();

    v13 = sub_1000C3FD4();
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 1, 1, v13);
  }
}

uint64_t sub_10008BA60(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FD728, &qword_1000CEA50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008BB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v100 = a2;
  v93 = a3;
  v104 = sub_1000C3574();
  v105 = *(v104 - 8);
  v4 = *(v105 + 64);
  v5 = __chkstk_darwin(v104);
  v106 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v103 = &v88 - v7;
  v8 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v95 = &v88 - v10;
  v102 = sub_1000C4D84();
  v101 = *(v102 - 8);
  v11 = *(v101 + 64);
  v12 = __chkstk_darwin(v102);
  v92 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v99 = &v88 - v15;
  v16 = __chkstk_darwin(v14);
  v98 = &v88 - v17;
  __chkstk_darwin(v16);
  v91 = &v88 - v18;
  v97 = sub_1000C1A94();
  v96 = *(v97 - 8);
  v19 = *(v96 + 64);
  __chkstk_darwin(v97);
  v94 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1000C20D4();
  v108 = *(v107 - 8);
  v21 = *(v108 + 8);
  v22 = __chkstk_darwin(v107);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v88 - v25;
  v27 = sub_1000C4CC4();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000C4DB4();
  v109 = *(v32 - 8);
  v33 = *(v109 + 64);
  v34 = __chkstk_darwin(v32);
  v36 = &v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v88 - v37;
  v110 = "create NicknameInformation";
  (*(v28 + 16))(v31, a1, v27);
  v39 = v111;
  sub_1000C4D94();
  if (v39)
  {
    v118 = v39;
    swift_errorRetain();
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    sub_10008CE38();
    if (swift_dynamicCast())
    {

      v40 = v117;
      v41 = [v117 domain];
      v42 = sub_1000C5224();
      v44 = v43;

      v112 = v42;
      v113 = v44;
      v119._countAndFlagsBits = 45;
      v119._object = 0xE100000000000000;
      sub_1000C52E4(v119);
      v116 = [v40 code];
      v120._countAndFlagsBits = sub_1000C5BE4();
      sub_1000C52E4(v120);

      sub_1000C4FC4();
      sub_10008CE84(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
    }

    else
    {

      swift_getErrorValue();
      swift_getDynamicType();
      sub_1000C5D34();
      sub_1000C4FC4();
      sub_10008CE84(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
    }
  }

  v90 = v24;
  v45 = v108;
  v46 = v107;
  (*(v109 + 32))(v38, v36, v32);
  v47 = sub_1000C4DA4();
  v111 = v32;
  v49 = v47;
  v50 = v48;
  v88 = 0;
  v89 = v38;
  v51 = v45;
  v52 = *(v45 + 13);
  v53 = v26;
  v52(v26, enum case for ImageHeader.png(_:), v46);
  v54 = sub_1000C1594();
  v55 = v49;
  v58 = *(v51 + 1);
  v56 = v51 + 8;
  v57 = v58;
  v58(v53, v46);
  if ((v54 & 1) == 0)
  {
    v108 = v56;
    v102 = v55;
    v70 = v94;
    sub_1000C4C44();
    v71 = sub_1000C1A84();
    v72 = sub_1000C5514();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "Failing watch face since image header was incorrect", v73, 2u);
    }

    (*(v96 + 8))(v70, v97);
    v74 = v90;
    v75 = v88;
    sub_1000C15A4();
    if (v75)
    {
      v76 = v75;
    }

    else
    {
      v112 = 0;
      v113 = 0xE000000000000000;
      sub_1000C5944(33);

      v112 = 0xD00000000000001FLL;
      v113 = 0x80000001000D7AB0;
      v123._countAndFlagsBits = sub_1000C20C4();
      sub_1000C52E4(v123);

      sub_1000C4FC4();
      sub_10008CE84(&qword_1000FC360, &type metadata accessor for Explosion);
      v76 = swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      v57(v74, v46);
    }

    v82 = v89;
    v118 = v76;
    swift_errorRetain();
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    v83 = v103;
    v84 = v104;
    v85 = swift_dynamicCast();
    v86 = v105;
    v87 = v106;
    if (v85)
    {

      (*(v86 + 32))(v87, v83, v84);
      v108 = "oor.WatchfacePreview";
      v112 = 0;
      v113 = 0xE000000000000000;
      sub_1000C5944(33);

      v112 = 0xD00000000000001FLL;
      v113 = 0x80000001000D7AB0;
      v124._countAndFlagsBits = sub_1000C3564();
      sub_1000C52E4(v124);

      sub_1000C4FC4();
      sub_10008CE84(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      sub_100018CD0(v102, v50);
      (*(v86 + 8))(v87, v84);
      (*(v109 + 8))(v82, v111);
    }

    else
    {
      (*(v109 + 8))(v82, v111);
      sub_100018CD0(v102, v50);
    }
  }

  v114 = &type metadata for Data;
  v115 = &protocol witness table for Data;
  v112 = v55;
  v113 = v50;
  v59 = sub_1000C4D54();
  (*(*(v59 - 8) + 56))(v95, 1, 1, v59);
  sub_100018C68(v55, v50);
  v60 = v99;
  sub_1000C4D64();
  sub_1000C3B94();
  v61 = v98;
  v62 = v88;
  sub_1000C4D44();
  if (!v62)
  {
    v77 = v101;
    v110 = v50;
    v78 = *(v101 + 8);
    v79 = v102;
    v78(v60, v102);
    v80 = v91;
    (*(v77 + 32))(v91, v61, v79);
    (*(v77 + 16))(v92, v80, v79);
    sub_1000C3BA4();
    sub_100018CD0(v55, v110);
    v78(v80, v79);
    return (*(v109 + 8))(v89, v111);
  }

  v63 = v55;
  v64 = v50;
  (*(v101 + 8))(v60, v102);
  v118 = v62;
  swift_errorRetain();
  sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
  sub_10008CE38();
  if (swift_dynamicCast())
  {

    v65 = v117;
    v66 = [v117 domain];
    v67 = sub_1000C5224();
    v69 = v68;

    v112 = v67;
    v113 = v69;
    v121._countAndFlagsBits = 45;
    v121._object = 0xE100000000000000;
    sub_1000C52E4(v121);
    v116 = [v65 code];
    v122._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v122);

    sub_1000C4FC4();
    sub_10008CE84(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();

    sub_100018CD0(v63, v64);
    (*(v109 + 8))(v89, v111);
  }

  swift_getErrorValue();
  swift_getDynamicType();
  sub_1000C5D34();
  sub_1000C4FC4();
  sub_10008CE84(&qword_1000FC360, &type metadata accessor for Explosion);
  swift_allocError();
  sub_1000C4FB4();
  swift_willThrow();

  sub_100018CD0(v63, v50);
  return (*(v109 + 8))(v89, v111);
}

unint64_t sub_10008CE38()
{
  result = qword_1000FD978;
  if (!qword_1000FD978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000FD978);
  }

  return result;
}

uint64_t sub_10008CE84(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_10008CECC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10008CEE8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t sub_10008CF44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10008CFB8(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FD990, &qword_1000CF0C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_10008D8C0();
  sub_1000C5D04();
  v19 = *v3;
  v18[7] = 0;
  sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
  sub_100015FB4(&qword_1000FC380);
  sub_1000C5B44();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = v3[1];
  v12 = v3[2];
  v18[6] = 1;
  sub_1000C5AF4();
  v13 = v3[3];
  v14 = v3[4];
  v18[5] = 2;
  sub_1000C5AF4();
  v16 = v3[5];
  v17 = *(v3 + 48);
  v18[4] = 3;
  sub_1000C5B74();
  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_10008D1D8()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_10008D270()
{
  *v0;
  *v0;
  *v0;
  sub_1000C52C4();
}

Swift::Int sub_10008D2F4()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_10008D388@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008D570(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10008D3B8(uint64_t *a1@<X8>)
{
  v2 = 0xE100000000000000;
  v3 = 112;
  v4 = 0xE100000000000000;
  v5 = 110;
  if (*v1 != 2)
  {
    v5 = 7630191;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 6580583;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10008D40C()
{
  v1 = 112;
  v2 = 110;
  if (*v0 != 2)
  {
    v2 = 7630191;
  }

  if (*v0)
  {
    v1 = 6580583;
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

uint64_t sub_10008D45C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008D570(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10008D490(uint64_t a1)
{
  v2 = sub_10008D8C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008D4CC(uint64_t a1)
{
  v2 = sub_10008D8C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10008D508@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10008D5BC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_10008D570(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F1F28;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10008D5BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FD980, &unk_1000CF0B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_10008D8C0();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(a1);
  }

  sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
  v30 = 0;
  sub_100015FB4(&qword_1000FC3A8);
  sub_1000C5A54();
  v11 = v31;
  v29 = 1;
  v12 = sub_1000C5A04();
  v26 = v13;
  v24 = v12;
  v28 = 2;
  v23 = sub_1000C5A04();
  v25 = v14;
  v27 = 3;
  v15 = sub_1000C5A84();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_100015F68(a1);
  v20 = v24;
  *a2 = v11;
  *(a2 + 8) = v20;
  v21 = v23;
  *(a2 + 16) = v26;
  *(a2 + 24) = v21;
  *(a2 + 32) = v25;
  *(a2 + 40) = v15;
  *(a2 + 48) = v18 & 1;
  return result;
}

unint64_t sub_10008D8C0()
{
  result = qword_1000FD988;
  if (!qword_1000FD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD988);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadReceiptDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReadReceiptDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10008DA68()
{
  result = qword_1000FD998;
  if (!qword_1000FD998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD998);
  }

  return result;
}

unint64_t sub_10008DAC0()
{
  result = qword_1000FD9A0;
  if (!qword_1000FD9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD9A0);
  }

  return result;
}

unint64_t sub_10008DB18()
{
  result = qword_1000FD9A8;
  if (!qword_1000FD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD9A8);
  }

  return result;
}

uint64_t sub_10008DB6C()
{
  sub_1000C52C4();
}

uint64_t sub_10008DC70(uint64_t a1, char a2)
{
  v2 = *&aSait_0[8 * a2];
  sub_1000C52C4();
}

Swift::Int sub_10008DCB0()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

Swift::Int sub_10008DD80(uint64_t a1, char a2)
{
  sub_1000C5CB4();
  v3 = *&aSait_0[8 * a2];
  sub_1000C52C4();

  return sub_1000C5CD4();
}

Swift::Int sub_10008DDDC()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t SyndicationActionDictionary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FD9B0, &qword_1000CF220);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25[-v8];
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_10008E248();
  sub_1000C5D04();
  v11 = v3[1];
  LOBYTE(v29) = 0;
  sub_1000C5BC4();
  if (!v2)
  {
    v12 = *(v3 + 2);
    v13 = v3[24];
    LOBYTE(v29) = 1;
    sub_1000C5B74();
    v14 = *(v3 + 4);
    v15 = v3[40];
    LOBYTE(v29) = 2;
    sub_1000C5B74();
    v16 = v3[2];
    LOBYTE(v29) = 3;
    sub_1000C5BC4();
    v17 = *(v3 + 1);
    LOBYTE(v29) = 4;
    sub_1000C5BD4();
    v18 = *(v3 + 6);
    v19 = *(v3 + 7);
    LOBYTE(v29) = 5;
    sub_1000C5AF4();
    v20 = *(v3 + 5);
    v21 = *(v3 + 7);
    v35 = *(v3 + 6);
    v36 = v21;
    v22 = *(v3 + 5);
    v34[0] = *(v3 + 4);
    v34[1] = v22;
    v30 = v20;
    v31 = v35;
    v32 = *(v3 + 7);
    v37 = v3[128];
    v33 = v3[128];
    v29 = v34[0];
    v28 = 6;
    sub_100016020(v34, v26);
    sub_10008E29C();
    sub_1000C5BB4();
    v26[2] = v31;
    v26[3] = v32;
    v27 = v33;
    v26[1] = v30;
    v26[0] = v29;
    sub_100016058(v26);
    v23 = *v3;
    v25[15] = 7;
    sub_1000C5BC4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10008E248()
{
  result = qword_1000FD9B8;
  if (!qword_1000FD9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD9B8);
  }

  return result;
}

unint64_t sub_10008E29C()
{
  result = qword_1000FD9C0;
  if (!qword_1000FD9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD9C0);
  }

  return result;
}

__n128 SyndicationActionDictionary.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10008E4D0(a1, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9;
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_10008E3C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s24MessagesBlastDoorService27SyndicationActionDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10008E424@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = _s24MessagesBlastDoorService27SyndicationActionDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10008E458(uint64_t a1)
{
  v2 = sub_10008E248();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008E494(uint64_t a1)
{
  v2 = sub_10008E248();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10008E4D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FD9E0, &unk_1000CF428);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v72 = a1;
  sub_10001530C(a1, v10);
  sub_10008E248();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(v72);
  }

  v45[0] = 0;
  v12 = sub_1000C5AD4();
  v45[0] = 1;
  v35 = sub_1000C5A84();
  v71 = v13 & 1;
  v45[0] = 2;
  v34 = sub_1000C5A84();
  v70 = v14 & 1;
  v45[0] = 3;
  v33 = sub_1000C5AD4();
  v45[0] = 4;
  v32 = sub_1000C5AE4();
  v45[0] = 5;
  *&v31 = sub_1000C5A04();
  *(&v31 + 1) = v15;
  v59 = 6;
  sub_10008EBBC();
  sub_1000C5AC4();
  v67 = v62;
  v68 = v63;
  v69 = v64;
  v65 = v60;
  v66 = v61;
  v58 = 7;
  v30 = 0;
  v16 = sub_1000C5AD4();
  v17 = *(v6 + 8);
  v18 = v16;
  v29 = v16;
  v17(v9, v5);
  LOBYTE(v36) = v18;
  BYTE1(v36) = v12;
  BYTE2(v36) = v33;
  v19 = *(&v31 + 1);
  v20 = v34;
  *(&v36 + 1) = v32;
  *&v37 = v35;
  LODWORD(v30) = v71;
  BYTE8(v37) = v71;
  *&v38 = v34;
  v21 = v70;
  BYTE8(v38) = v70;
  v22 = v31;
  v39 = v31;
  v42 = v67;
  v43 = v68;
  v44 = v69;
  v41 = v66;
  v40 = v65;
  sub_10008EC10(&v36, v45);
  sub_100015F68(v72);
  v45[0] = v29;
  v45[1] = v12;
  v45[2] = v33;
  v46 = v32;
  v47 = v35;
  v48 = v30;
  v49 = v20;
  v50 = v21;
  v51 = v22;
  v52 = v19;
  v55 = v67;
  v56 = v68;
  v57 = v69;
  v53 = v65;
  v54 = v66;
  result = sub_100057D70(v45);
  v24 = v43;
  *(a2 + 96) = v42;
  *(a2 + 112) = v24;
  *(a2 + 128) = v44;
  v25 = v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = v25;
  v26 = v41;
  *(a2 + 64) = v40;
  *(a2 + 80) = v26;
  v27 = v37;
  *a2 = v36;
  *(a2 + 16) = v27;
  return result;
}

uint64_t _s24MessagesBlastDoorService27SyndicationActionDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F1FA8;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10008E990()
{
  result = qword_1000FD9C8;
  if (!qword_1000FD9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD9C8);
  }

  return result;
}

unint64_t sub_10008E9E8()
{
  result = qword_1000FD9D0;
  if (!qword_1000FD9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD9D0);
  }

  return result;
}

unint64_t sub_10008EA40()
{
  result = qword_1000FD9D8;
  if (!qword_1000FD9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD9D8);
  }

  return result;
}

__n128 sub_10008EA94(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10008EAC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 129))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_10008EB24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

unint64_t sub_10008EBBC()
{
  result = qword_1000FD9E8;
  if (!qword_1000FD9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD9E8);
  }

  return result;
}

uint64_t SyndicationActionDictionary.messagePartRange()()
{
  if (*(v0 + 24) & 1) != 0 || (*(v0 + 40))
  {
    result = sub_1000C1324();
    if (result)
    {
      return 0;
    }

    __break(1u);
    goto LABEL_16;
  }

  v2 = *(v0 + 32);
  if (*(v0 + 16) >= 0x7FFFFFFFFFFFFFFFuLL)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = *(v0 + 16);
  }

  result = sub_1000C1324();
  if (v3 == result)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = v3;
  if (v2 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = v2;
  }

  if (__OFADD__(v3, v4))
  {
    goto LABEL_17;
  }

  if (v3 + v4 < 0)
  {
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_10008ECDC()
{
  v48 = sub_1000C4184();
  v0 = *(v48 - 8);
  v1 = *(v0 + 64);
  v2 = __chkstk_darwin(v48);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v47 = &v38 - v5;
  v6 = sub_1000124CC(&qword_1000FD9F0, &qword_1000CF478);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v38 - v8;
  v10 = sub_1000C41D4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v46 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v38 - v16;
  sub_1000C4E04();
  v18 = sub_1000C3D24();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100018F90(v17, &qword_1000FC3B0, &qword_1000C9780);
    v20 = _swiftEmptyArrayStorage;
LABEL_18:
    v37 = v20[2];

    return v37 != 0;
  }

  v21 = sub_1000C3D04();
  result = (*(v19 + 8))(v17, v18);
  v49 = *(v21 + 16);
  if (!v49)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_17:

    goto LABEL_18;
  }

  v23 = v11;
  v24 = 0;
  v25 = v21 + 32;
  v26 = (v23 + 56);
  v44 = (v23 + 8);
  v45 = (v23 + 32);
  v42 = (v0 + 88);
  v43 = (v0 + 32);
  v41 = enum case for FileTransferAttribute.AttachmentSubtype.sticker(_:);
  v20 = _swiftEmptyArrayStorage;
  v40 = (v0 + 8);
  v39 = v4;
  while (v24 < *(v21 + 16))
  {
    sub_100018DA8(v25, v51);
    sub_100018DA8(v51, v50);
    sub_1000124CC(&qword_1000FC950, &qword_1000CB6A8);
    v27 = swift_dynamicCast();
    v28 = *v26;
    if (v27)
    {
      v28(v9, 0, 1, v10);
      v29 = v46;
      (*v45)(v46, v9, v10);
      v30 = v21;
      v31 = v47;
      sub_1000C4194();
      (*v44)(v29, v10);
      v32 = v31;
      v21 = v30;
      v33 = v48;
      (*v43)(v4, v32, v48);
      LODWORD(v29) = (*v42)(v4, v33);
      (*v40)(v4, v33);
      if (v29 == v41)
      {
        sub_100018E0C(v51, v50);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100045B04(0, v20[2] + 1, 1);
          v20 = v52;
        }

        v36 = v20[2];
        v35 = v20[3];
        if (v36 >= v35 >> 1)
        {
          sub_100045B04((v35 > 1), v36 + 1, 1);
          v20 = v52;
        }

        v20[2] = v36 + 1;
        result = sub_100018E0C(v50, &v20[5 * v36 + 4]);
        v4 = v39;
        goto LABEL_7;
      }
    }

    else
    {
      v28(v9, 1, 1, v10);
      sub_100018F90(v9, &qword_1000FD9F0, &qword_1000CF478);
    }

    result = sub_100015F68(v51);
LABEL_7:
    ++v24;
    v25 += 40;
    if (v49 == v24)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t Optional.tryUnwrap(_:file:line:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21 = a5;
  v22._countAndFlagsBits = a1;
  v22._object = a2;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v16, v15);
  v17 = *(a6 + 16);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v14, 1, v17) != 1)
  {
    return (*(v18 + 32))(a7, v14, v17);
  }

  (*(v11 + 8))(v14, a6);
  v23 = a3;
  v24 = a4;

  v26._countAndFlagsBits = 58;
  v26._object = 0xE100000000000000;
  sub_1000C52E4(v26);
  v25 = v21;
  v27._countAndFlagsBits = sub_1000C5BE4();
  sub_1000C52E4(v27);

  v28._countAndFlagsBits = 58;
  v28._object = 0xE100000000000000;
  sub_1000C52E4(v28);
  sub_1000C52E4(v22);
  sub_1000C4FC4();
  sub_100018BFC();
  swift_allocError();
  sub_1000C4FB4();
  return swift_willThrow();
}

unint64_t sub_10008F480(uint64_t a1)
{
  result = sub_1000129AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008F4AC()
{
  result = qword_1000FD9F8;
  if (!qword_1000FD9F8)
  {
    sub_1000C42A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD9F8);
  }

  return result;
}

unint64_t sub_10008F548()
{
  result = qword_1000FDA00;
  if (!qword_1000FDA00)
  {
    sub_1000C1FD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDA00);
  }

  return result;
}

uint64_t sub_10008F5A0@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v80 = sub_1000C1A94();
  v73 = *(v80 - 8);
  v1 = v73[8];
  __chkstk_darwin(v80);
  v84 = v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1000C1F84();
  v68 = *(v72 - 8);
  v3 = *(v68 + 64);
  __chkstk_darwin(v72);
  v71 = (v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1000C1C04();
  v6 = *(v5 - 8);
  v82 = v5;
  v83 = v6;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = (v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v85 = v60 - v11;
  v64 = sub_1000C1C74();
  v63 = *(v64 - 8);
  v12 = *(v63 + 64);
  __chkstk_darwin(v64);
  v67 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C5274();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_1000C14E4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000C4CF4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4CB4();
  sub_1000C4CE4();
  (*(v22 + 8))(v25, v21);
  sub_1000C5254();
  v26 = v81;
  sub_1000C51E4();
  if (v26)
  {
    return (*(v17 + 8))(v20, v16);
  }

  v28 = v73;
  (*(v17 + 8))(v20, v16);
  sub_1000C1AA4();
  result = sub_1000C1C54();
  v79 = *(result + 16);
  if (v79)
  {
    v29 = 0;
    v30 = v83;
    v77 = result + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v76 = v83 + 16;
    v75 = v83 + 88;
    v74 = enum case for StyleSheet.Rule.qualified(_:);
    v66 = enum case for StyleSheet.Rule.atKeyword(_:);
    v81 = (v83 + 8);
    v70 = (v83 + 96);
    v60[0] = enum case for StyleSheet.Rule.atKeyword(_:);
    v62 = (v68 + 104);
    v69 = (v28 + 1);
    v60[1] = enum case for StyleSheet.Rule.qualified(_:);
    v61 = v68 + 32;
    v73 = _swiftEmptyArrayStorage;
    v31 = v80;
    v32 = v82;
    v78 = result;
    while (1)
    {
      if (v29 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v33 = *(v30 + 16);
      v34 = v85;
      v33(v85, v77 + *(v30 + 72) * v29, v32);
      v33(v10, v34, v32);
      v35 = (*(v30 + 88))(v10, v32);
      if (v35 == v74)
      {
        break;
      }

      if (v35 == v66)
      {
        (*v70)(v10, v32);
        v40 = *v10;
        v41 = v10[1];
        v43 = v10[2];
        v42 = v10[3];
        v49 = sub_10008FEA4(v10[4]);

        v50 = v71;
        *v71 = v40;
        v50[1] = v41;
        v50[2] = v43;
        v50[3] = v42;
        v50[4] = v49;
        goto LABEL_15;
      }

      sub_100092B9C();
      swift_allocError();
      *v44 = 0;
      swift_willThrow();
      (*v81)(v10, v32);
      v45 = v84;
      sub_1000C4C34();
      v46 = sub_1000C1A84();
      v47 = sub_1000C5514();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "Failed to unpack rule from LinkPresentation StyleSheet", v48, 2u);

        (*v69)(v84, v31);
      }

      else
      {

        (*v69)(v45, v31);
      }

      v32 = v82;
      (*v81)(v85, v82);
LABEL_7:
      ++v29;
      result = v78;
      v30 = v83;
      if (v79 == v29)
      {
        goto LABEL_21;
      }
    }

    (*v70)(v10, v32);
    v36 = *v10;
    v37 = v10[1];
    v38 = sub_10008FEA4(v10[2]);

    v39 = v71;
    *v71 = v36;
    v39[1] = v37;
    v39[2] = v38;
LABEL_15:
    (*v62)();
    v51 = v73;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v82;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v51 = sub_100045540(0, v51[2] + 1, 1, v51);
    }

    v31 = v80;
    v54 = v51[2];
    v53 = v51[3];
    v73 = v51;
    if (v54 >= v53 >> 1)
    {
      v73 = sub_100045540(v53 > 1, v54 + 1, 1, v73);
    }

    (*v81)();
    v55 = v72;
    v56 = v73;
    v73[2] = v54 + 1;
    (*(v68 + 32))(v56 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v54, v71, v55);
    goto LABEL_7;
  }

  v73 = _swiftEmptyArrayStorage;
LABEL_21:

  if (!v73[2])
  {
  }

  v57 = v64;
  v58 = v63;
  v59 = v67;
  sub_1000C1FB4();
  return (*(v58 + 8))(v59, v57);
}

void *sub_10008FEA4(uint64_t a1)
{
  v16 = sub_1000C1F74();
  v3 = *(v16 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v16);
  v6 = (v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = *(sub_1000C1BF4() - 8);
  v15[1] = v3 + 32;
  v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  v11 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_1000900A8(v9, v6);
    if (v1)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_100045518(0, v11[2] + 1, 1, v11);
    }

    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_100045518(v12 > 1, v13 + 1, 1, v11);
    }

    v11[2] = v13 + 1;
    (*(v3 + 32))(v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v6, v16);
    v9 += v10;
    if (!--v7)
    {
      return v11;
    }
  }

  return v11;
}

uint64_t sub_1000900A8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v125 = a2;
  v126 = a1;
  v2 = sub_1000124CC(&qword_1000FDA10, &qword_1000CF550);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v110 = &v106 - v4;
  v5 = sub_1000124CC(&qword_1000FDA18, &qword_1000CF558);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v112 = &v106 - v7;
  v8 = sub_1000C1F04();
  v108 = *(v8 - 8);
  v109 = v8;
  v9 = *(v108 + 64);
  __chkstk_darwin(v8);
  v107 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1000C1B34();
  v111 = *(v113 - 8);
  v11 = *(v111 + 64);
  __chkstk_darwin(v113);
  v114 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000C1BD4();
  v116 = *(v13 - 8);
  v117 = v13;
  v14 = *(v116 + 64);
  __chkstk_darwin(v13);
  v115 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000C1BE4();
  v120 = *(v16 - 8);
  v121 = v16;
  v17 = *(v120 + 64);
  v18 = __chkstk_darwin(v16);
  v118 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v119 = &v106 - v20;
  v21 = sub_1000C1C64();
  v123 = *(v21 - 8);
  v124 = v21;
  v22 = *(v123 + 64);
  __chkstk_darwin(v21);
  v122 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000124CC(&qword_1000FDA20, &qword_1000CF560);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v28 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v106 - v29;
  v31 = sub_1000C1C44();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v36 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v106 - v37;
  v39 = sub_1000C1BF4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  v43 = &v106 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v40 + 16))(v43, v126, v39);
  v44 = (*(v40 + 88))(v43, v39);
  if (v44 == enum case for StyleSheet.Rule.Declaration.invalid(_:))
  {
    (*(v40 + 96))(v43, v39);
    v45 = *(v43 + 2);
    v46 = *(v43 + 3);
    v47 = v125;
    *v125 = *v43;
    *(v47 + 2) = v45;
    *(v47 + 3) = v46;
    v48 = &enum case for StyleSheet.Rule.Declaration.invalid(_:);
LABEL_13:
    v59 = *v48;
    v60 = sub_1000C1F74();
    return (*(*(v60 - 8) + 104))(v47, v59, v60);
  }

  if (v44 == enum case for StyleSheet.Rule.Declaration.color(_:))
  {
    (*(v40 + 96))(v43, v39);
    (*(v32 + 32))(v38, v43, v31);
    sub_1000C1C14();
    sub_1000C1C34();
    sub_1000C1C24();
    v47 = v125;
    sub_1000C1F94();
    (*(v32 + 8))(v38, v31);
    v48 = &enum case for StyleSheet.Rule.Declaration.color(_:);
    goto LABEL_13;
  }

  if (v44 == enum case for StyleSheet.Rule.Declaration.backgroundColor(_:))
  {
    (*(v40 + 96))(v43, v39);
    sub_100092BF0(v43, v30);
    sub_100018F28(v30, v28, &qword_1000FDA20, &qword_1000CF560);
    if ((*(v32 + 48))(v28, 1, v31) == 1)
    {
      sub_100018F90(v30, &qword_1000FDA20, &qword_1000CF560);
      sub_100018F90(v28, &qword_1000FDA20, &qword_1000CF560);
      v49 = sub_1000C1FA4();
      v47 = v125;
      (*(*(v49 - 8) + 56))(v125, 1, 1, v49);
    }

    else
    {
      (*(v32 + 32))(v36, v28, v31);
      sub_1000C1C14();
      sub_1000C1C34();
      sub_1000C1C24();
      v47 = v125;
      sub_1000C1F94();
      (*(v32 + 8))(v36, v31);
      sub_100018F90(v30, &qword_1000FDA20, &qword_1000CF560);
      v58 = sub_1000C1FA4();
      (*(*(v58 - 8) + 56))(v47, 0, 1, v58);
    }

    v48 = &enum case for StyleSheet.Rule.Declaration.backgroundColor(_:);
    goto LABEL_13;
  }

  if (v44 == enum case for StyleSheet.Rule.Declaration.textAlign(_:))
  {
    (*(v40 + 96))(v43, v39);
    v51 = v122;
    v50 = v123;
    v52 = v124;
    (*(v123 + 32))(v122, v43, v124);
    v53 = (*(v50 + 88))(v51, v52);
    if (v53 != enum case for StyleSheet.TextAlign.left(_:))
    {
      v72 = v125;
      if (v53 == enum case for StyleSheet.TextAlign.center(_:))
      {
        v73 = enum case for StyleSheet.TextAlign.center(_:);
        v74 = sub_1000C1FC4();
        (*(*(v74 - 8) + 104))(v72, v73, v74);
      }

      else
      {
        v81 = enum case for StyleSheet.TextAlign.right(_:);
        v82 = v53;
        v83 = sub_1000C1FC4();
        v84 = *(*(v83 - 8) + 104);
        if (v82 != v81)
        {
          v84(v72, enum case for StyleSheet.TextAlign.left(_:), v83);
          v90 = enum case for StyleSheet.Rule.Declaration.textAlign(_:);
          v91 = sub_1000C1F74();
          (*(*(v91 - 8) + 104))(v72, v90, v91);
          return (*(v50 + 8))(v51, v52);
        }

        v84(v72, enum case for StyleSheet.TextAlign.right(_:), v83);
      }

      v85 = enum case for StyleSheet.Rule.Declaration.textAlign(_:);
      v86 = sub_1000C1F74();
      return (*(*(v86 - 8) + 104))(v72, v85, v86);
    }

    v54 = enum case for StyleSheet.TextAlign.left(_:);
    v55 = sub_1000C1FC4();
    v56 = v125;
    (*(*(v55 - 8) + 104))(v125, v54, v55);
    v57 = &enum case for StyleSheet.Rule.Declaration.textAlign(_:);
    goto LABEL_34;
  }

  v62 = v127;
  if (v44 == enum case for StyleSheet.Rule.Declaration.font(_:))
  {
    (*(v40 + 96))(v43, v39);
    v64 = v119;
    v63 = v120;
    v65 = v121;
    (*(v120 + 32))(v119, v43, v121);
    v66 = v118;
    (*(v63 + 16))(v118, v64, v65);
    v67 = (*(v63 + 88))(v66, v65);
    if (v67 == enum case for StyleSheet.Font.specified(_:))
    {
      (*(v63 + 96))(v66, v65);
      v69 = v115;
      v68 = v116;
      v70 = v66;
      v71 = v117;
      (*(v116 + 32))(v115, v70, v117);
      v56 = v125;
      sub_1000910C0(v125);
      if (v62)
      {
        (*(v68 + 8))(v69, v71);
        return (*(v63 + 8))(v64, v65);
      }

      (*(v68 + 8))(v69, v71);
      (*(v63 + 8))(v64, v65);
      v92 = enum case for StyleSheet.Font.specified(_:);
      v93 = sub_1000C1F64();
      (*(*(v93 - 8) + 104))(v56, v92, v93);
      v57 = &enum case for StyleSheet.Rule.Declaration.font(_:);
      goto LABEL_34;
    }

    if (v67 == enum case for StyleSheet.Font.system(_:))
    {
      (*(v63 + 96))(v66, v65);
      v75 = v111;
      v76 = v114;
      v77 = v66;
      v78 = v113;
      (*(v111 + 32))(v114, v77, v113);
      v79 = v110;
      (*(v75 + 16))(v110, v76, v78);
      (*(v75 + 56))(v79, 0, 1, v78);
      v80 = v112;
      sub_1000914D4(v79, v112);
      v127 = v62;
      if (v62)
      {
        sub_100018F90(v79, &qword_1000FDA10, &qword_1000CF550);
        (*(v75 + 8))(v76, v78);
        return (*(v63 + 8))(v64, v65);
      }

      else
      {
        sub_100018F90(v79, &qword_1000FDA10, &qword_1000CF550);
        v97 = v108;
        v96 = v109;
        if ((*(v108 + 48))(v80, 1, v109) == 1)
        {
          sub_100018F90(v80, &qword_1000FDA18, &qword_1000CF558);
          sub_100092B9C();
          swift_allocError();
          *v98 = 7;
          swift_willThrow();
          (*(v75 + 8))(v114, v78);
          return (*(v63 + 8))(v64, v65);
        }

        else
        {
          (*(v75 + 8))(v114, v78);
          (*(v63 + 8))(v64, v65);
          v99 = *(v97 + 32);
          v100 = v107;
          v99(v107, v80, v96);
          v101 = v125;
          v99(v125, v100, v96);
          v102 = enum case for StyleSheet.Font.system(_:);
          v103 = sub_1000C1F64();
          (*(*(v103 - 8) + 104))(v101, v102, v103);
          v104 = enum case for StyleSheet.Rule.Declaration.font(_:);
          v105 = sub_1000C1F74();
          return (*(*(v105 - 8) + 104))(v101, v104, v105);
        }
      }
    }

    else
    {
      sub_100092B9C();
      swift_allocError();
      *v88 = 2;
      swift_willThrow();
      v89 = *(v63 + 8);
      v89(v64, v65);
      return (v89)(v66, v65);
    }
  }

  else
  {
    if (v44 == enum case for StyleSheet.Rule.Declaration.backgroundImage(_:))
    {
      (*(v40 + 96))(v43, v39);
      v56 = v125;
      *v125 = *v43;
      v57 = &enum case for StyleSheet.Rule.Declaration.backgroundImage(_:);
LABEL_34:
      v94 = *v57;
      v95 = sub_1000C1F74();
      return (*(*(v95 - 8) + 104))(v56, v94, v95);
    }

    sub_100092B9C();
    swift_allocError();
    *v87 = 1;
    swift_willThrow();
    return (*(v40 + 8))(v43, v39);
  }
}

uint64_t sub_1000910C0@<X0>(uint64_t a1@<X8>)
{
  v35[1] = a1;
  v2 = sub_1000124CC(&qword_1000FDA28, &qword_1000CF568);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v38 = v35 - v4;
  v5 = sub_1000124CC(&qword_1000FDA30, &qword_1000CF570);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v37 = v35 - v7;
  v8 = sub_1000124CC(&qword_1000FDA38, &qword_1000CF578);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v36 = v35 - v10;
  v11 = sub_1000124CC(&qword_1000FDA40, &qword_1000CF580);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v35 - v13;
  v15 = sub_1000124CC(&qword_1000FDA48, &qword_1000CF588);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v35 - v17;
  v19 = sub_1000124CC(&qword_1000FDA50, &qword_1000CF590);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = v35 - v21;
  v23 = sub_1000124CC(&qword_1000FDA58, &qword_1000CF598);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = v35 - v25;
  v27 = sub_1000124CC(&qword_1000FDA60, &qword_1000CF5A0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = v35 - v29;
  sub_1000C1B84();
  sub_10009181C(v26, v30);
  result = sub_100018F90(v26, &qword_1000FDA58, &qword_1000CF598);
  if (!v1)
  {
    v33 = v36;
    v32 = v37;
    v34 = v38;
    sub_1000C1BB4();
    sub_10009213C(v18, v22);
    sub_100018F90(v18, &qword_1000FDA48, &qword_1000CF588);
    sub_1000C1B94();
    sub_100092484(v33, v14);
    sub_100018F90(v33, &qword_1000FDA38, &qword_1000CF578);
    sub_1000C1BC4();
    sub_1000927CC(v34, v32);
    sub_100018F90(v34, &qword_1000FDA28, &qword_1000CF568);
    sub_1000C1BA4();
    return sub_1000C1F54();
  }

  return result;
}

uint64_t sub_1000914D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000124CC(&qword_1000FDA18, &qword_1000CF558);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_1000124CC(&qword_1000FDA10, &qword_1000CF550);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - v10;
  v12 = sub_1000C1B34();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018F28(a1, v11, &qword_1000FDA10, &qword_1000CF550);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100018F90(v11, &qword_1000FDA10, &qword_1000CF550);
    v17 = sub_1000C1F04();
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    sub_1000C1B24();
    sub_1000C1EF4();
    v19 = sub_1000C1F04();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v7, 1, v19) == 1)
    {
      sub_100018F90(v7, &qword_1000FDA18, &qword_1000CF558);
      sub_100092B9C();
      swift_allocError();
      *v21 = 7;
      swift_willThrow();
      return (*(v13 + 8))(v16, v12);
    }

    else
    {
      (*(v13 + 8))(v16, v12);
      (*(v20 + 32))(a2, v7, v19);
      return (*(v20 + 56))(a2, 0, 1, v19);
    }
  }
}

uint64_t sub_10009181C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v81 = a1;
  v80 = a2;
  v2 = sub_1000124CC(&qword_1000FDA68, &qword_1000CF5A8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v78 = &v67 - v4;
  v79 = sub_1000C1EB4();
  v77 = *(v79 - 8);
  v5 = *(v77 + 64);
  __chkstk_darwin(v79);
  v73 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C1AE4();
  v75 = *(v7 - 8);
  v76 = v7;
  v8 = *(v75 + 64);
  __chkstk_darwin(v7);
  v74 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000124CC(&qword_1000FDA70, &qword_1000CF5B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v67 - v12;
  v14 = sub_1000C1ED4();
  v71 = *(v14 - 8);
  v72 = v14;
  v15 = *(v71 + 64);
  __chkstk_darwin(v14);
  v68 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000C1B04();
  v69 = *(v17 - 8);
  v70 = v17;
  v18 = *(v69 + 64);
  __chkstk_darwin(v17);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000124CC(&qword_1000FDA58, &qword_1000CF598);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v67 - v23;
  v25 = sub_1000C1B14();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v30 = (&v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v32 = &v67 - v31;
  sub_100018F28(v81, v24, &qword_1000FDA58, &qword_1000CF598);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_100018F90(v24, &qword_1000FDA58, &qword_1000CF598);
    v33 = sub_1000C1EE4();
    return (*(*(v33 - 8) + 56))(v80, 1, 1, v33);
  }

  (*(v26 + 32))(v32, v24, v25);
  (*(v26 + 16))(v30, v32, v25);
  v35 = (*(v26 + 88))(v30, v25);
  if (v35 == enum case for StyleSheet.Font.Size.specified(_:))
  {
    (*(v26 + 96))(v30, v25);
    v36 = *v30;
    v37 = sub_1000124CC(&qword_1000FDA78, &qword_1000CF5B8);
    v39 = v74;
    v38 = v75;
    v40 = v30 + *(v37 + 48);
    v41 = v76;
    (*(v75 + 32))(v74, v40, v76);
    sub_1000C1AD4();
    v42 = v78;
    sub_1000C1EA4();
    v43 = v77;
    v44 = v79;
    if ((*(v77 + 48))(v42, 1, v79) == 1)
    {
      sub_100018F90(v42, &qword_1000FDA68, &qword_1000CF5A8);
      sub_100092B9C();
      swift_allocError();
      *v45 = 4;
      swift_willThrow();
      (*(v38 + 8))(v39, v41);
      return (*(v26 + 8))(v32, v25);
    }

    (*(v38 + 8))(v39, v41);
    (*(v26 + 8))(v32, v25);
    v52 = *(v43 + 32);
    v53 = v73;
    v52(v73, v42, v44);
    v54 = *(sub_1000124CC(&qword_1000FDA80, &unk_1000CF5C0) + 48);
    v55 = v80;
    *v80 = v36;
    v52(&v55[v54], v53, v44);
    v56 = enum case for StyleSheet.Font.Size.specified(_:);
    v57 = sub_1000C1EE4();
    v58 = *(v57 - 8);
    (*(v58 + 104))(v55, v56, v57);
    return (*(v58 + 56))(v55, 0, 1, v57);
  }

  else if (v35 == enum case for StyleSheet.Font.Size.absolute(_:))
  {
    (*(v26 + 96))(v30, v25);
    v46 = v69;
    v47 = v30;
    v48 = v70;
    (*(v69 + 32))(v20, v47, v70);
    sub_1000C1AF4();
    sub_1000C1EC4();
    v50 = v71;
    v49 = v72;
    if ((*(v71 + 48))(v13, 1, v72) == 1)
    {
      sub_100018F90(v13, &qword_1000FDA70, &qword_1000CF5B0);
      sub_100092B9C();
      swift_allocError();
      *v51 = 3;
      swift_willThrow();
      (*(v46 + 8))(v20, v48);
      return (*(v26 + 8))(v32, v25);
    }

    (*(v46 + 8))(v20, v48);
    (*(v26 + 8))(v32, v25);
    v61 = *(v50 + 32);
    v62 = v68;
    v61(v68, v13, v49);
    v63 = v80;
    v61(v80, v62, v49);
    v64 = enum case for StyleSheet.Font.Size.absolute(_:);
    v65 = sub_1000C1EE4();
    v66 = *(v65 - 8);
    (*(v66 + 104))(v63, v64, v65);
    return (*(v66 + 56))(v63, 0, 1, v65);
  }

  else
  {
    sub_100092B9C();
    swift_allocError();
    *v59 = 5;
    swift_willThrow();
    v60 = *(v26 + 8);
    v60(v32, v25);
    return (v60)(v30, v25);
  }
}

uint64_t sub_10009213C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000124CC(&qword_1000FDA50, &qword_1000CF590);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_1000124CC(&qword_1000FDA48, &qword_1000CF588);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - v10;
  v12 = sub_1000C1B54();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018F28(a1, v11, &qword_1000FDA48, &qword_1000CF588);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100018F90(v11, &qword_1000FDA48, &qword_1000CF588);
    v17 = sub_1000C1F24();
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    sub_1000C1B44();
    sub_1000C1F14();
    v19 = sub_1000C1F24();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v7, 1, v19) == 1)
    {
      sub_100018F90(v7, &qword_1000FDA50, &qword_1000CF590);
      sub_100092B9C();
      swift_allocError();
      *v21 = 9;
      swift_willThrow();
      return (*(v13 + 8))(v16, v12);
    }

    else
    {
      (*(v13 + 8))(v16, v12);
      (*(v20 + 32))(a2, v7, v19);
      return (*(v20 + 56))(a2, 0, 1, v19);
    }
  }
}

uint64_t sub_100092484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000124CC(&qword_1000FDA40, &qword_1000CF580);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_1000124CC(&qword_1000FDA38, &qword_1000CF578);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - v10;
  v12 = sub_1000C1AC4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018F28(a1, v11, &qword_1000FDA38, &qword_1000CF578);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100018F90(v11, &qword_1000FDA38, &qword_1000CF578);
    v17 = sub_1000C1E94();
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    sub_1000C1AB4();
    sub_1000C1E84();
    v19 = sub_1000C1E94();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v7, 1, v19) == 1)
    {
      sub_100018F90(v7, &qword_1000FDA40, &qword_1000CF580);
      sub_100092B9C();
      swift_allocError();
      *v21 = 9;
      swift_willThrow();
      return (*(v13 + 8))(v16, v12);
    }

    else
    {
      (*(v13 + 8))(v16, v12);
      (*(v20 + 32))(a2, v7, v19);
      return (*(v20 + 56))(a2, 0, 1, v19);
    }
  }
}

uint64_t sub_1000927CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000124CC(&qword_1000FDA30, &qword_1000CF570);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_1000124CC(&qword_1000FDA28, &qword_1000CF568);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - v10;
  v12 = sub_1000C1B74();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018F28(a1, v11, &qword_1000FDA28, &qword_1000CF568);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100018F90(v11, &qword_1000FDA28, &qword_1000CF568);
    v17 = sub_1000C1F44();
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    sub_1000C1B64();
    sub_1000C1F34();
    v19 = sub_1000C1F44();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v7, 1, v19) == 1)
    {
      sub_100018F90(v7, &qword_1000FDA30, &qword_1000CF570);
      sub_100092B9C();
      swift_allocError();
      *v21 = 8;
      swift_willThrow();
      return (*(v13 + 8))(v16, v12);
    }

    else
    {
      (*(v13 + 8))(v16, v12);
      (*(v20 + 32))(a2, v7, v19);
      return (*(v20 + 56))(a2, 0, 1, v19);
    }
  }
}

unint64_t sub_100092B9C()
{
  result = qword_1000FDA08;
  if (!qword_1000FDA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDA08);
  }

  return result;
}

uint64_t sub_100092BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FDA20, &qword_1000CF560);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for StyleSheetUnpackerErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StyleSheetUnpackerErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}