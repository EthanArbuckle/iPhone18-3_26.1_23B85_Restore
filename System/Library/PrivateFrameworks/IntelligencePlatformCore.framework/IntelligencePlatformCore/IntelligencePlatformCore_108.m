uint64_t sub_1C4D87F98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001C4FC7F20 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x80000001C4FC7F60 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4D881E4(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x6464416C69616D65;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x6D754E656E6F6870;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4D882F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D87F98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D8831C(uint64_t a1)
{
  v2 = sub_1C4D98AD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D88358(uint64_t a1)
{
  v2 = sub_1C4D98AD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D88394()
{
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_entityClass;
  v2 = sub_1C4EFD548();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C448D818(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_source + v0);
  v4 = sub_1C4EFEEF8();
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 8);
  v7 = sub_1C4460780();
  v6(v7);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_emailAddress);
  v8 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_phoneNumber_predicate);
  v6(v8);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_phoneNumber);
  return v0;
}

void sub_1C4D884D0()
{
  sub_1C43FE96C();
  v3 = v0;
  v4 = sub_1C447E4C8();
  v5 = sub_1C43FCDF8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD230();
  v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD1B4();
  v13 = sub_1C456902C(&qword_1EC0C6FB8, &qword_1C4F72060);
  sub_1C43FCDF8(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C440A474();
  v18 = *(v0 + 24);
  v17 = *(v0 + 32);
  v19 = sub_1C441E0A4();
  sub_1C4417F50(v19, v20);
  sub_1C4D98AD4();
  sub_1C4475B58();
  sub_1C4F02BF8();
  v21 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_predicate;
  sub_1C440D164();
  sub_1C47CBF50(v3 + v21, v2);
  sub_1C441AC10();
  sub_1C4D986F0(v22, v23);
  sub_1C447E3F4();
  sub_1C446F170(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
  if (v1)
  {
    v24 = sub_1C4D9A070();
    v25(v24);
  }

  else
  {
    sub_1C44019B0(1);
    sub_1C4EFD548();
    sub_1C442DB0C();
    sub_1C4D986F0(v26, v27);
    sub_1C4480490();
    v28 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_source;
    sub_1C44343BC();
    type metadata accessor for Source();
    sub_1C4420AB8();
    sub_1C4D986F0(v29, v30);
    sub_1C4D9A00C();
    sub_1C4418194();
    v31 = sub_1C445C2C4();
    v32(v31);
    sub_1C4424A5C();
    sub_1C440F0D4();
    v33 = v28[1];
    v33(v17, v4);
    sub_1C4475CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_emailAddress);
    sub_1C4D9A04C();

    sub_1C440D164();
    v34 = sub_1C44D0BC0();
    v35(v34);
    sub_1C440F0D4();
    v36 = sub_1C440BB4C();
    (v33)(v36);
    sub_1C44579C0(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_phoneNumber);
    sub_1C4404084();
    sub_1C4F02738();
    v37 = sub_1C442EE7C();
    v38(v37);
  }

  sub_1C440E3AC();
  sub_1C43FBC80();
}

uint64_t sub_1C4D888FC()
{
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v1, v2, v3, v4);
  sub_1C4EFD1D8();
  v5 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_source;
  if (qword_1EDDFD150 != -1)
  {
    sub_1C44050D8();
    swift_once();
  }

  v6 = type metadata accessor for Source();
  v7 = sub_1C442B738(v6, qword_1EDDFD158);
  sub_1C449ED64(v7, v5 + v0);
  sub_1C4EFE518();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_emailAddress);
  sub_1C4EFE478();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_phoneNumber);
  return v0;
}

void sub_1C4D889F8()
{
  if (!qword_1EDDFA1D0)
  {
    sub_1C4EFEEF8();
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDFA1D0);
    }
  }
}

void sub_1C4D88A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v13 = sub_1C4D9A110();
  v14 = sub_1C43FCDF8(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD230();
  sub_1C4451268(v18);
  v19 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v19);
  v21 = *(v20 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBC74();
  v53 = v23;
  v24 = sub_1C456902C(&qword_1EC0C70B8, &qword_1C4F720F8);
  sub_1C43FCDF8(v24);
  v26 = *(v25 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C4418964();
  v52 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_predicate;
  sub_1C43FCF64();
  sub_1C4D9A130(v28, v29, v30);
  sub_1C4EFD1D8();
  v31 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_source;
  if (qword_1EDDFD150 != -1)
  {
    sub_1C44050D8();
    swift_once();
  }

  v32 = type metadata accessor for Source();
  v33 = sub_1C442B738(v32, qword_1EDDFD158);
  sub_1C449ED64(v33, v31 + v11);
  sub_1C4EFE518();
  v34 = (v11 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_emailAddress);
  *v34 = 0;
  v34[1] = 0;
  sub_1C4EFE478();
  v35 = (v11 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_phoneNumber);
  *v35 = 0;
  v35[1] = 0;
  v36 = v12;
  v37 = v12[3];
  v38 = v12[4];
  v54 = v36;
  sub_1C4417F50(v36, v37);
  sub_1C4D98AD4();
  sub_1C4475550();
  sub_1C4F02BC8();
  if (a10)
  {
  }

  else
  {
    sub_1C4D9A0DC();
    sub_1C441AC10();
    sub_1C4D986F0(v39, v40);
    sub_1C4D9A0D0();
    sub_1C44107C0();
    sub_1C4F02658();
    sub_1C44F1A18();
    sub_1C4414918();
    swift_beginAccess();
    sub_1C449A970(v53, v52);
    swift_endAccess();
    sub_1C445C07C();
    sub_1C4D9A0D0();
    sub_1C44107C0();
    sub_1C4F026C8();
    sub_1C44F1A18();
    sub_1C4414918();
    swift_beginAccess();
    v41 = sub_1C4466E1C();
    v10(v41);
    swift_endAccess();
    v42 = sub_1C442A5AC(4);
    sub_1C4425188(v42, v43);
    sub_1C4462540();
    sub_1C44B9068();
    sub_1C4414918();
    swift_beginAccess();
    v44 = sub_1C4D9A09C();
    v10(v44);
    swift_endAccess();
    v45 = sub_1C442A5AC(6);
    v47 = v46;
    v48 = sub_1C440A3B0();
    v49(v48);
    v50 = v51[1];
    *v51 = v45;
    v51[1] = v47;
  }

  sub_1C440962C(v54);
  sub_1C43FBC80();
}

uint64_t sub_1C4D88EF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4D889CC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4D88F84()
{
  sub_1C43FE628();
  v6 = v5;
  v140 = v7;
  v141 = v8;
  v138 = type metadata accessor for EntityTriple(0);
  v9 = sub_1C43FCDF8(v138);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  v135 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  v136 = v16;
  sub_1C43FD1D0();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v134 - v19;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C4410A24();
  HIDWORD(v139) = *v6;
  i = MEMORY[0x1E69E7CC0];
  v146 = MEMORY[0x1E69E7CC0];
  v142 = v0;
  v22 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_isCurrentUser + 8);
  v137 = v11;
  if (v22)
  {
    v3 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_isCurrentUser);
    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      v24 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_entityIdentifier;
      v25 = sub_1C4EFF0C8();
      sub_1C43FCE50(v25);
      v27 = v142;
      (*(v26 + 16))(v2, v142 + v24);
      v28 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_isCurrentUser_predicate;
      sub_1C440D164();
      v29 = v138;
      v30 = v138[5];
      v31 = sub_1C4EFEEF8();
      sub_1C43FCE50(v31);
      (*(v32 + 16))(v2 + v30, v27 + v28);
      sub_1C449ED64(v27 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_source, v2 + v29[9]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v4 = v33;
      v34 = v2 + v29[6];
      sub_1C4EFF888();
      v35 = v2 + v29[7];
      sub_1C4EFEC38();
      v36 = (v2 + v29[8]);
      *v36 = v3;
      v36[1] = v22;
      sub_1C4475E40(v29[10]);
      *(v2 + v29[11]) = v4;
      sub_1C4488B7C(v29[12]);
      v37 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v37, v38, v39, MEMORY[0x1E69E7CC0]);
      i = v40;
      v3 = *(v40 + 16);
      v41 = *(v40 + 24);
      if (v3 >= v41 >> 1)
      {
        v115 = sub_1C43FCFE8(v41);
        sub_1C44C9240(v115, v3 + 1, 1, i);
        i = v116;
      }

      *(i + 16) = v3 + 1;
      sub_1C4416610();
      sub_1C4A948D8(v2, v42 + v43 * v3);
      v146 = i;
    }
  }

  v44 = *(v142 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_name + 8);
  if (v44)
  {
    v45 = *(v142 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_name);
    v46 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v46 = v45 & 0xFFFFFFFFFFFFLL;
    }

    if (v46)
    {
      v47 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_entityIdentifier;
      v48 = sub_1C4EFF0C8();
      sub_1C43FCE50(v48);
      v50 = v142;
      (*(v49 + 16))(v20, v142 + v47);
      v3 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_name_predicate;
      sub_1C440D164();
      v51 = v138;
      v52 = v138[5];
      v53 = sub_1C4EFEEF8();
      sub_1C43FCE50(v53);
      (*(v54 + 16))(&v20[v52], v50 + v3);
      sub_1C449ED64(v50 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_source, &v20[v51[9]]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v4 = v55;
      v56 = &v20[v51[6]];
      sub_1C4EFF888();
      v57 = &v20[v51[7]];
      sub_1C4EFEC38();
      v58 = &v20[v51[8]];
      *v58 = v45;
      *(v58 + 1) = v44;
      v59 = &v20[v51[10]];
      v60 = v141;
      *v59 = v140;
      *(v59 + 1) = v60;
      *&v20[v51[11]] = v4;
      v20[v51[12]] = BYTE4(v139);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v117 = *(i + 16);
        v118 = sub_1C43FCEC0();
        sub_1C44C9240(v118, v119, v120, i);
        i = v121;
      }

      v62 = *(i + 16);
      v61 = *(i + 24);
      if (v62 >= v61 >> 1)
      {
        v122 = sub_1C43FCFE8(v61);
        sub_1C44C9240(v122, v62 + 1, 1, i);
        i = v123;
      }

      *(i + 16) = v62 + 1;
      sub_1C4416610();
      sub_1C4A948D8(v20, v63 + v64 * v62);
      v146 = i;
    }
  }

  v65 = *(v142 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_url + 8);
  if (v65)
  {
    v66 = *(v142 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_url);
    sub_1C4D9A0B0();
    if (v68)
    {
      v69 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_entityIdentifier;
      v134 = v67;
      v70 = sub_1C4EFF0C8();
      sub_1C43FCE50(v70);
      v72 = v142;
      v73 = v136;
      (*(v71 + 16))(v136, v142 + v69);
      v74 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_url_predicate;
      sub_1C440D164();
      v75 = v138;
      v76 = sub_1C447E290();
      sub_1C43FCE50(v76);
      (*(v77 + 16))(v73 + v3, v72 + v74);
      sub_1C449ED64(v72 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_source, v73 + v75[9]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4416C58();
      sub_1C4EFF888();
      v78 = v73 + v75[7];
      sub_1C4EFEC38();
      v79 = (v73 + v75[8]);
      *v79 = v134;
      v79[1] = v65;
      sub_1C4475E40(v75[10]);
      *(v73 + v75[11]) = v4;
      sub_1C4488B7C(v75[12]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v124 = *(i + 16);
        v125 = sub_1C43FCEC0();
        sub_1C44C9240(v125, v126, v127, i);
        i = v128;
      }

      v81 = *(i + 16);
      v80 = *(i + 24);
      if (v81 >= v80 >> 1)
      {
        sub_1C43FCFE8(v80);
        sub_1C440424C();
        sub_1C44C9240(v129, v130, v131, i);
        i = v132;
      }

      *(i + 16) = v81 + 1;
      sub_1C4416610();
      sub_1C4A948D8(v136, v82 + v83 * v81);
      v146 = i;
    }
  }

  v84 = *(v142 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_hasContactInformation);
  if (v84)
  {
    v85 = *(v142 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_hasContactInformation);
    v86 = sub_1C4428DA0();
    v87 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_entityIdentifier;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    for (i = 0; ; ++i)
    {
      if (v86 == i)
      {

        i = v146;
        goto LABEL_35;
      }

      if ((v84 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C6940F90](i, v84);
      }

      else
      {
        if (i >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v88 = *(v84 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v145 = BYTE4(v139);
      sub_1C4D8D3A8(v140, v141, v142 + v87, &v145, &OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_predicate, &OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_entityClass, &OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_emailAddress, &OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_emailAddress_predicate, &OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_source, &OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_phoneNumber, &OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_phoneNumber_predicate, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);
      if (v1)
      {

        goto LABEL_41;
      }

      sub_1C49D3614(v89);
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v106 = *(i + 16);
    v107 = sub_1C43FCEC0();
    sub_1C44C9240(v107, v108, v109, i);
    i = v110;
    goto LABEL_37;
  }

LABEL_35:
  v86 = v135;
  if (!*(i + 16))
  {
    goto LABEL_41;
  }

  v90 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_entityIdentifier;
  v91 = sub_1C4EFF0C8();
  sub_1C43FCE50(v91);
  v93 = v142;
  (*(v92 + 16))(v86, v142 + v90);
  v94 = v138;
  v95 = v86 + v138[5];
  sub_1C4EFEBB8();
  v96 = v93 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_entityClass;
  sub_1C4EFD2F8();
  sub_1C43FC1CC();
  sub_1C449ED64(v93 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_source, v86 + v94[9]);
  sub_1C4EF9AE8();
  v98 = v97;
  v99 = v86 + v94[6];
  sub_1C4EFF888();
  v100 = v86 + v94[7];
  sub_1C4EFEC38();
  v101 = (v86 + v94[8]);
  *v101 = v96;
  v101[1] = v84;
  sub_1C4475E40(v94[10]);
  *(v86 + v94[11]) = v98;
  sub_1C4488B7C(v94[12]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  v103 = *(i + 16);
  v102 = *(i + 24);
  if (v103 >= v102 >> 1)
  {
    v111 = sub_1C43FFD98(v102);
    sub_1C44C9240(v111, v112, v113, i);
    i = v114;
  }

  *(i + 16) = v103 + 1;
  sub_1C4416610();
  sub_1C4A948D8(v86, v104 + v105 * v103);
LABEL_41:
  sub_1C44109F8();
}

void sub_1C4D89790()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  sub_1C44D4078(v5);
  v6 = sub_1C4F00DD8();
  v7 = sub_1C44410E0(v6);
  v8 = sub_1C43FCDF8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v11);
  v119 = sub_1C4F00DC8();
  v12 = sub_1C43FCDF8(v119);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD230();
  sub_1C43FD2C8(v16);
  v17 = sub_1C4F01188();
  v18 = sub_1C43FCDF8(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD2D8();
  sub_1C43FBE44();
  v128 = sub_1C4EFD548();
  v21 = sub_1C43FCDF8(v128);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C440D100();
  v26 = type metadata accessor for Source();
  v27 = sub_1C43FBCE0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  v32 = (v31 - v30);
  v33 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v33);
  v35 = *(v34 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBC74();
  v126 = v37;
  sub_1C43FBE44();
  v38 = sub_1C4EFF0C8();
  v39 = sub_1C43FCDF8(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD2D8();
  sub_1C444C200(v42);
  v120 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_predicate;
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v43, v44, v45, v46);
  v47 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_entityClass;
  sub_1C4EFD4C8();
  v48 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_source;
  if (qword_1EDDFD150 != -1)
  {
    sub_1C44050D8();
    swift_once();
  }

  v49 = sub_1C442B738(v26, qword_1EDDFD158);
  sub_1C449ED64(v49, v2 + v48);
  sub_1C4EFE5D8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_isCurrentUser);
  sub_1C4EFEBF8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_name);
  sub_1C4EFEBD8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_url);
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_hasContactInformation) = 0;
  v123 = v48;
  sub_1C449ED64(v2 + v48, v32);
  v50 = sub_1C44019BC();
  v38(v50);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v51 = sub_1C4F00978();
  sub_1C442B738(v51, qword_1EDE2DE10);
  v52 = sub_1C440EBA4();
  v38(v52);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v53 = sub_1C4F00968();
  v54 = sub_1C4F01CB8();

  v124 = v47;
  if (os_log_type_enabled(v53, v54))
  {
    swift_slowAlloc();
    v127[0] = sub_1C4488A10();
    *v1 = 136381187;
    v55 = sub_1C441D828(v125, v4, v127);
    sub_1C4485F78(v55);
    sub_1C442DB0C();
    sub_1C4D986F0(v56, v57);
    sub_1C4D9A088();
    sub_1C4F02858();
    v58 = sub_1C4D9A034();
    v59(v58);
    v60 = sub_1C4409A28();
    sub_1C441D828(v60, v61, v62);

    sub_1C4414088();
    sub_1C44579E8(&dword_1C43F8000, v63, v64, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C44753CC();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v65 = sub_1C4462134();
    v66(v65);
  }

  v67 = *v32;
  v68 = v32[1];
  v127[0] = v125;
  v127[1] = v4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v69 = sub_1C4404084();
  MEMORY[0x1C6940010](v69);

  sub_1C4F01178();
  sub_1C442F9C8();
  sub_1C4F01148();
  v71 = v70;
  v72 = sub_1C44018C0();
  v73(v72);
  if (v71 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v74 = sub_1C4F00968();
    v75 = sub_1C4F01CD8();

    if (os_log_type_enabled(v74, v75))
    {
      swift_slowAlloc();
      v76 = sub_1C4415B1C();
      v127[0] = v76;
      *v4 = 136380675;
      v77 = sub_1C440BB4C();
      v80 = sub_1C441D828(v77, v78, v79);

      *(v4 + 4) = v80;
      sub_1C447CEB4(&dword_1C43F8000, v81, v82, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C440962C(v76);
      sub_1C43FBE2C();
      sub_1C4485E14();

      v83 = sub_1C44E7750();
    }

    else
    {

      sub_1C443E05C();
      v83 = v122;
      v84 = v128;
    }

    v101 = v121;
    v102 = (v121)(v83, v84);
    v103 = 1;
  }

  else
  {

    sub_1C44151FC();
    sub_1C4D986F0(v85, v86);
    sub_1C440BB4C();
    sub_1C4F00DB8();
    v87 = sub_1C4409D98();
    sub_1C44344B8(v87, v88);
    v89 = sub_1C4409D98();
    sub_1C4498FD8(v89, v90);
    v91 = sub_1C4409D98();
    sub_1C441DFEC(v91, v92);
    sub_1C440BB4C();
    sub_1C4F00DA8();
    v93 = sub_1C4485C30();
    v94(v93);
    sub_1C446BD80();
    sub_1C4D9A0BC();
    v95();
    v96 = sub_1C4417C80();
    v97(v96);
    sub_1C4507BA8();
    sub_1C441DFEC(v125, v71);
    v98 = sub_1C4425810();
    v99(v98);
    sub_1C443E05C();
    v100 = sub_1C4409A28();
    v101 = v121;
    v102 = (v121)(v100);
    v103 = 0;
  }

  sub_1C445886C(v102, v103);
  sub_1C4482D7C();
  if (v104)
  {
    sub_1C446F170(v126, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C45CF650();
    v105 = sub_1C43FFB2C();
    sub_1C4428F60(v105, v106);
    sub_1C446F170(v2 + v120, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C443E05C();
    v101(v124 + v2, v128);
    sub_1C448D818(v2 + v123);
    sub_1C4425820();
    v108 = *(v107 + 8);
    v110 = sub_1C443E068(v109);
    v108(v110);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_isCurrentUser);
    v111 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_name_predicate);
    v108(v111);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_name);
    v112 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_url_predicate);
    v108(v112);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_url);
    v113 = *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_hasContactInformation);

    sub_1C44417C4();
    v115 = *(v114 + 48);
    v116 = *(v114 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v117 = sub_1C4440EB0();
    v124(v117);
    v118 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_entityIdentifier);
    v124(v118);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4D8A0F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x80000001C4FC81D0 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E65727275437369 && a2 == 0xED00007265735574;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1701667182 && a2 == 0xE400000000000000;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x646572705F6C7275 && a2 == 0xED00006574616369;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 7107189 && a2 == 0xE300000000000000;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000015 && 0x80000001C4FC85C0 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C4F02938();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_1C4D8A470(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x6E65727275437369;
      break;
    case 6:
      result = 0x6572705F656D616ELL;
      break;
    case 7:
      result = 1701667182;
      break;
    case 8:
      result = 0x646572705F6C7275;
      break;
    case 9:
      result = 7107189;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4D8A5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D8A0F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D8A600(uint64_t a1)
{
  v2 = sub_1C4D98B28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D8A63C(uint64_t a1)
{
  v2 = sub_1C4D98B28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D8A678()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_source);
  v7 = sub_1C4EFEEF8();
  sub_1C43FBCE0(v7);
  v9 = *(v8 + 8);
  v10 = sub_1C4460780();
  v9(v10);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_isCurrentUser);
  v11 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_name_predicate);
  v9(v11);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_name);
  v12 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_url_predicate);
  v9(v12);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_url);
  v13 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_hasContactInformation);

  return v0;
}

void sub_1C4D8A81C()
{
  v0 = sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1C4D889F8();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      v4 = sub_1C4EFD548();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        v6 = type metadata accessor for Source();
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = sub_1C4EFEEF8();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1C4D8A9B4()
{
  sub_1C43FE96C();
  v5 = sub_1C447E4C8();
  v6 = sub_1C43FCDF8(v5);
  v55 = v7;
  v56 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  v53 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  v54 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C440D100();
  v14 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FE94C();
  v18 = sub_1C456902C(&qword_1EC0C6FC8, &qword_1C4F72068);
  sub_1C43FCDF8(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C44058BC();
  v24 = *(v0 + 24);
  v25 = *(v0 + 32);
  v26 = sub_1C4409A28();
  sub_1C4417F50(v26, v27);
  sub_1C4D98B28();
  sub_1C4F02BF8();
  sub_1C4EFF0C8();
  sub_1C440B914();
  sub_1C4D986F0(v28, v29);
  v57 = v0;
  sub_1C4F027E8();
  if (v1)
  {
    v30 = *(v20 + 8);
    v31 = sub_1C4409A28();
    v32(v31);
  }

  else
  {
    v33 = v20;
    v34 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_predicate;
    sub_1C44169A0();
    sub_1C47CBF50(v0 + v34, v3);
    sub_1C441AC10();
    sub_1C4D986F0(v35, v36);
    sub_1C4F02778();
    sub_1C446F170(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
    v52 = v18;
    sub_1C446257C(2);
    sub_1C4EFD548();
    sub_1C442DB0C();
    sub_1C4D986F0(v37, v38);
    sub_1C443E220();
    sub_1C4F027E8();
    sub_1C446257C(3);
    type metadata accessor for Source();
    sub_1C4420AB8();
    sub_1C4D986F0(v39, v40);
    sub_1C443E220();
    sub_1C4485C3C();
    sub_1C4F027E8();
    v41 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_isCurrentUser_predicate;
    sub_1C440D164();
    v51 = *(v55 + 16);
    v51(v4, v57 + v41, v56);
    sub_1C4485C3C();
    sub_1C4F027E8();
    v42 = *(v55 + 8);
    v42(v4, v56);
    v43 = *(v57 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_isCurrentUser);
    v44 = *(v57 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_isCurrentUser + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4404084();
    sub_1C4F02738();

    v45 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_name_predicate;
    sub_1C440D164();
    v51(v54, v57 + v45, v56);
    sub_1C445BB9C();
    sub_1C4F027E8();
    v42(v54, v56);
    v46 = *(v57 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_name);
    v47 = *(v57 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_name + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4404084();
    sub_1C4F02738();

    v48 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_url_predicate;
    sub_1C440D164();
    v51(v53, v57 + v48, v56);
    sub_1C43FE79C(8);
    sub_1C4F027E8();
    v42(v53, v56);
    v49 = *(v57 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_url);
    v50 = *(v57 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_url + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4D9A0F0();
    sub_1C4485C3C();
    sub_1C4F02738();
    if (v49)
    {
      (*(v33 + 8))(v2, v52);
    }

    else
    {

      v58 = *(v57 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_hasContactInformation);
      sub_1C456902C(&qword_1EC0C6FD8, &qword_1C4F72070);
      sub_1C4D98B7C();
      sub_1C4414374();
      sub_1C4485C3C();
      sub_1C4F02778();
      (*(v33 + 8))(v2, v52);
    }
  }

  sub_1C43FBC80();
}

void sub_1C4D8B104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  sub_1C445CD30();
  v25 = sub_1C4EFEEF8();
  v26 = sub_1C43FCDF8(v25);
  v89 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD230();
  sub_1C444C200(v32);
  v33 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v33);
  v35 = *(v34 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBC74();
  v83 = v37;
  sub_1C43FBE44();
  v85 = sub_1C4EFF0C8();
  v38 = sub_1C43FCDF8(v85);
  v82 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD2D8();
  v84 = v42;
  v43 = sub_1C456902C(&qword_1EC0C70A8, &qword_1C4F720F0);
  v86 = sub_1C43FCDF8(v43);
  v45 = *(v44 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBC74();
  v90 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_predicate;
  sub_1C43FCF64();
  sub_1C4D9A130(v47, v48, v49);
  v88 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_entityClass;
  sub_1C4EFD4C8();
  v50 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_source;
  if (qword_1EDDFD150 != -1)
  {
    sub_1C44050D8();
    swift_once();
  }

  v51 = type metadata accessor for Source();
  v52 = sub_1C442B738(v51, qword_1EDDFD158);
  v87 = v50;
  sub_1C449ED64(v52, v20 + v50);
  v81 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_isCurrentUser_predicate;
  sub_1C4EFE5D8();
  v53 = v20;
  v54 = (v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_isCurrentUser);
  *v54 = 0;
  v54[1] = 0;
  v55 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_name_predicate;
  sub_1C4EFEBF8();
  v56 = (v53 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_name);
  *v56 = 0;
  v56[1] = 0;
  v57 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_url_predicate;
  sub_1C4EFEBD8();
  v58 = (v53 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_url);
  *v58 = 0;
  v58[1] = 0;
  *(v53 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_hasContactInformation) = 0;
  v59 = v21[4];
  v91 = v21;
  sub_1C4417F50(v21, v21[3]);
  sub_1C4D98B28();
  sub_1C4F02BC8();
  if (v22)
  {
    sub_1C446F170(v53 + v90, &qword_1EC0B9A08, &unk_1C4F107B0);
    v62 = sub_1C4EFD548();
    sub_1C43FD3F8(v62);
    (*(v63 + 8))(v53 + v88);
    sub_1C448D818(v53 + v87);
    v64 = *(v89 + 8);
    v64(v53 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_isCurrentUser_predicate);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_isCurrentUser);
    v64(v53 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_name_predicate);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_name);
    v64(v53 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_url_predicate);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_url);
    v65 = *(v53 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_hasContactInformation);

    sub_1C44417C4();
    v67 = *(v66 + 48);
    v68 = *(v66 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v80 = v57;
    sub_1C440B914();
    sub_1C4D986F0(v60, v61);
    sub_1C4F026C8();
    (*(v82 + 32))(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_entityIdentifier, v84, v85);
    LOBYTE(v92) = 1;
    sub_1C441AC10();
    sub_1C4D986F0(v69, v70);
    sub_1C44401BC();
    sub_1C4F02658();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C449A970(v83, v90);
    swift_endAccess();
    sub_1C4402064(4);
    sub_1C44401BC();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v71 = *(v89 + 40);
    v71(v53 + v81);
    swift_endAccess();
    sub_1C4441360(5);
    v72 = sub_1C4F02618();
    sub_1C4425188(v72, v73);
    sub_1C4402064(6);
    sub_1C44401BC();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v71(v53 + v55);
    swift_endAccess();
    sub_1C4441360(7);
    v74 = sub_1C4F02618();
    sub_1C4418DB0(v74, v75, &a15);
    sub_1C4402064(8);
    sub_1C44401BC();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v71(v53 + v80);
    swift_endAccess();
    sub_1C4441360(9);
    v76 = sub_1C4F02618();
    sub_1C4418DB0(v76, v77, &a13);
    sub_1C456902C(&qword_1EC0C6FD8, &qword_1C4F72070);
    sub_1C4D990F8();
    sub_1C441481C();
    sub_1C44BBF8C();
    sub_1C4F02658();
    v78 = sub_1C43FE5EC();
    v79(v78, v86);
    sub_1C4488620(v92);
  }

  sub_1C440962C(v91);
  sub_1C43FBC80();
}

uint64_t sub_1C4D8B8F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4D8B0D8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4D8B940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v23;
  a20 = v24;
  v210 = v25;
  v211 = v21;
  v27 = v26;
  v206 = v28;
  v213 = v29;
  v30 = sub_1C4EFF0C8();
  v31 = sub_1C43FCDF8(v30);
  v208 = v32;
  v209 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD2D8();
  v36 = sub_1C43FD2C8(v35);
  v204 = type metadata accessor for EntityTriple(v36);
  v37 = sub_1C43FCDF8(v204);
  v205 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FD230();
  sub_1C43FD2C8(v43);
  v207 = sub_1C4EFD548();
  v44 = sub_1C43FCDF8(v207);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBCC4();
  v51 = v50 - v49;
  v52 = sub_1C4EFF8A8();
  v53 = sub_1C43FCDF8(v52);
  v214 = v54;
  v215 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v190 - v58;
  v60 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v61 = sub_1C43FBD18(v60);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v190 - v65;
  v67 = sub_1C4EFEEF8();
  v68 = sub_1C43FCDF8(v67);
  v70 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v68);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v73);
  sub_1C440D100();
  v212 = *v27;
  v74 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_predicate;
  sub_1C44169A0();
  sub_1C47CBF50(v20 + v74, v66);
  if (sub_1C44157D4(v66, 1, v67) == 1)
  {
    sub_1C446F170(v66, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v75 = sub_1C43FFB2C();
    sub_1C4414040(v75, v76);
LABEL_32:
    sub_1C44109F8();
    return;
  }

  v199 = v70;
  v77 = *(v70 + 32);
  v78 = v66;
  v79 = v67;
  v193 = v70 + 32;
  v192 = v77;
  (v77)(v22, v78, v67);
  v80 = *(v46 + 16);
  v194 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_entityClass;
  v80(v51, v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_entityClass, v207);
  v207 = v59;
  sub_1C4EFF838();
  v81 = MEMORY[0x1E69E7CC0];
  v217 = MEMORY[0x1E69E7CC0];
  v82 = v20;
  v83 = *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_eventParticipantType + 8);
  v200 = v22;
  v202 = v67;
  if (!v83)
  {
    v98 = v210;
    v85 = v215;
LABEL_12:
    v95 = v20;
    v100 = v212;
    goto LABEL_13;
  }

  v84 = HIBYTE(v83) & 0xF;
  if ((v83 & 0x2000000000000000) == 0)
  {
    v84 = *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_eventParticipantType) & 0xFFFFFFFFFFFFLL;
  }

  v85 = v215;
  if (!v84)
  {
    v98 = v210;
    goto LABEL_12;
  }

  v86 = v22;
  v87 = *(v208 + 16);
  v88 = v203;
  v191 = *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_eventParticipantType);
  v87(v203, v206, v209);
  v89 = v204;
  v90 = *(v199 + 16);
  v90(v88 + v204[5], v86, v79);
  v91 = v85;
  v92 = v79;
  (*(v214 + 16))(v88 + v89[6], v207, v91);
  v93 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_eventParticipantType_predicate;
  sub_1C440D164();
  v94 = v82 + v93;
  v95 = v82;
  v90(v88 + v89[7], v94, v92);
  sub_1C449ED64(v82 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_source, v88 + v89[9]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v96 = (v88 + v89[8]);
  *v96 = v191;
  v96[1] = v83;
  v97 = (v88 + v89[10]);
  v98 = v210;
  *v97 = v213;
  v97[1] = v98;
  *(v88 + v89[11]) = v99;
  v100 = v212;
  *(v88 + v89[12]) = v212;
  v101 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v101, v102, v103, MEMORY[0x1E69E7CC0]);
  v81 = v104;
  v106 = *(v104 + 16);
  v105 = *(v104 + 24);
  if (v106 >= v105 >> 1)
  {
    v170 = sub_1C43FCFE8(v105);
    sub_1C44C9240(v170, v106 + 1, 1, v81);
    v81 = v171;
  }

  *(v81 + 16) = v106 + 1;
  sub_1C43FBF6C();
  sub_1C447E804();
  sub_1C4A948D8(v203, v107 + v108 * v106);
  v217 = v81;
  v85 = v215;
LABEL_13:
  v109 = *(v95 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_attendeeIdentifier);
  v110 = v213;
  v111 = v199;
  if (!v109)
  {
    goto LABEL_25;
  }

  v216 = v100;

  v112 = v211;
  sub_1C4D88F84();
  if (v112)
  {

    (*(v214 + 8))(v207, v215);
    v114 = *(v111 + 8);
    v115 = sub_1C4460770();
    v116(v115);

    goto LABEL_32;
  }

  v211 = 0;
  if (!*(v113 + 16))
  {

    v98 = v210;
LABEL_24:
    v85 = v215;
LABEL_25:
    v141 = v201;
    v142 = v207;
    if (*(v81 + 16))
    {
      (*(v208 + 16))(v201, v206, v209);
      v143 = v204;
      sub_1C448879C(v204[5]);
      sub_1C4495324(&a14);
      v145 = *(v144 - 256);
      v146();
      v147 = sub_1C448879C(v143[6]);
      v148(v147, v142, v85);
      v149 = v141 + v143[7];
      sub_1C4EFEBB8();
      v150 = sub_1C4EFD2F8();
      v151 = v95;
      v152 = v110;
      v153 = v150;
      v155 = v154;
      sub_1C449ED64(v151 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_source, v141 + v143[9]);
      sub_1C4EF9AE8();
      v156 = (v141 + v143[8]);
      *v156 = v153;
      v156[1] = v155;
      v157 = (v141 + v143[10]);
      *v157 = v152;
      v157[1] = v98;
      *(v141 + v143[11]) = v158;
      sub_1C4488B7C(v143[12]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v172 = *(v81 + 16);
        v173 = sub_1C43FCEC0();
        sub_1C44C9240(v173, v174, v175, v81);
        v81 = v176;
      }

      v160 = *(v81 + 16);
      v159 = *(v81 + 24);
      v161 = v215;
      v162 = v202;
      if (v160 >= v159 >> 1)
      {
        v177 = sub_1C43FF640(v159);
        sub_1C44C9240(v177, v178, v179, v81);
        v81 = v180;
      }

      (*(v214 + 8))(v207, v161);
      (*(v111 + 8))(v200, v162);
      *(v81 + 16) = v160 + 1;
      sub_1C43FBF6C();
      sub_1C447E804();
      sub_1C4A948D8(v141, v163 + v164 * v160);
    }

    else
    {
      v165 = sub_1C44018C0();
      v166(v165, v85);
      v167 = *(v111 + 8);
      v168 = sub_1C4460770();
      v169(v168);
    }

    goto LABEL_32;
  }

  v117 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v117);
  v118 = v196;
  (*(v208 + 16))(v196, v206, v209);
  v119 = *(v111 + 16);
  sub_1C442F834();
  v120 = v202;
  v121();
  (*(v214 + 16))(v198, v207, v215);
  v122 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_predicate;
  sub_1C440D164();
  v123 = v195;
  sub_1C47CBF50(v109 + v122, v195);
  if (sub_1C44157D4(v123, 1, v120) != 1)
  {

    v124 = sub_1C4EFF048();
    sub_1C44410E0(v124);
    v191 = v125;
    v126 = v204;
    v127 = v197;
    sub_1C449ED64(v95 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_source, v197 + v204[9]);
    sub_1C4EF9AE8();
    v129 = v128;
    (*(v208 + 32))(v127, v118, v209);
    v130 = v127 + v126[5];
    sub_1C4495324(&a11);
    v132 = *(v131 - 256);
    v133 = v192;
    v192();
    (*(v214 + 32))(v127 + v126[6], v198, v215);
    (v133)(v127 + v126[7], v123, v132);
    v134 = (v127 + v126[8]);
    v135 = v191;
    *v134 = v203;
    v134[1] = v135;
    v136 = (v127 + v126[10]);
    v98 = v210;
    *v136 = v213;
    v136[1] = v98;
    *(v127 + v126[11]) = v129;
    *(v127 + v126[12]) = v212;
    v81 = v217;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v181 = *(v81 + 16);
      v182 = sub_1C43FCEC0();
      sub_1C44C9240(v182, v183, v184, v81);
      v81 = v185;
    }

    v138 = *(v81 + 16);
    v137 = *(v81 + 24);
    if (v138 >= v137 >> 1)
    {
      v186 = sub_1C43FF640(v137);
      sub_1C44C9240(v186, v187, v188, v81);
      v81 = v189;
    }

    *(v81 + 16) = v138 + 1;
    sub_1C43FBF6C();
    sub_1C447E804();
    sub_1C4A948D8(v197, v139 + v140 * v138);
    v110 = v213;
    goto LABEL_24;
  }

  __break(1u);
}

uint64_t sub_1C4D8C410(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001ELL && 0x80000001C4FC8710 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x80000001C4FC8730 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000012 && 0x80000001C4FC8750 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C4F02938();

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

unint64_t sub_1C4D8C60C(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4D8C6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D8C410(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D8C70C(uint64_t a1)
{
  v2 = sub_1C4D98C30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D8C748(uint64_t a1)
{
  v2 = sub_1C4D98C30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D8C784()
{
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_entityClass;
  v2 = sub_1C4EFD548();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_source);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_eventParticipantType_predicate;
  v5 = sub_1C4EFEEF8();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_eventParticipantType);
  v7 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_attendeeIdentifier);

  return v0;
}

void sub_1C4D8C898()
{
  sub_1C4D889F8();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = type metadata accessor for Source();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_1C4EFEEF8();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1C4D8C9EC()
{
  sub_1C43FE96C();
  v4 = v0;
  v5 = sub_1C447E4C8();
  v6 = sub_1C43FCDF8(v5);
  v41 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD2D8();
  sub_1C4451268(v10);
  v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4422BD8();
  v15 = sub_1C456902C(&qword_1EC0C6FE8, &qword_1C4F72078);
  sub_1C43FCDF8(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FE94C();
  v22 = *(v0 + 24);
  v21 = *(v0 + 32);
  v23 = sub_1C442A90C();
  sub_1C4417F50(v23, v24);
  sub_1C4D98C30();
  sub_1C4F02BF8();
  v25 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_predicate;
  sub_1C44B9068();
  sub_1C440D164();
  sub_1C47CBF50(v4 + v25, v3);
  sub_1C441AC10();
  sub_1C4D986F0(v26, v27);
  sub_1C442F9C8();
  sub_1C4F02778();
  if (v1)
  {
    sub_1C446F170(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
    (*(v17 + 8))(v2, v15);
  }

  else
  {
    v40 = v5;
    v43 = v17;
    sub_1C446F170(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
    v28 = v2;
    sub_1C44019B0(1);
    sub_1C4EFD548();
    sub_1C442DB0C();
    sub_1C4D986F0(v29, v30);
    sub_1C44A3B0C();
    sub_1C4F027E8();
    sub_1C44343BC();
    type metadata accessor for Source();
    sub_1C4420AB8();
    sub_1C4D986F0(v31, v32);
    sub_1C44A3B0C();
    sub_1C44805BC();
    sub_1C4F027E8();
    v33 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_eventParticipantType_predicate;
    sub_1C4418194();
    (*(v41 + 16))(v42, v4 + v33, v40);
    sub_1C43FE79C(3);
    sub_1C4F027E8();
    v34 = sub_1C445AC68();
    v35(v34);
    v36 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_eventParticipantType);
    v37 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_eventParticipantType + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4D9A0F0();
    sub_1C4F02738();

    v44 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_attendeeIdentifier);
    type metadata accessor for EKEventStructs.Person(0);
    sub_1C4441A70();
    sub_1C4D986F0(v38, v39);
    sub_1C4414374();
    sub_1C44BBF8C();
    sub_1C4F02778();
    (*(v43 + 8))(v28, v15);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D8CE64()
{
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v1, v2, v3, v4);
  sub_1C4EFD2D8();
  v5 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_source;
  if (qword_1EDDFD150 != -1)
  {
    sub_1C44050D8();
    swift_once();
  }

  v6 = type metadata accessor for Source();
  v7 = sub_1C442B738(v6, qword_1EDDFD158);
  sub_1C449ED64(v7, v0 + v5);
  sub_1C4EFE9B8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_eventParticipantType);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_attendeeIdentifier) = 0;
  return v0;
}

void sub_1C4D8CF50()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v5 = sub_1C4EFEEF8();
  v6 = sub_1C43FCDF8(v5);
  v40 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD2D8();
  sub_1C4451268(v10);
  v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBC74();
  v43 = v15;
  v16 = sub_1C456902C(&qword_1EC0C70A0, &qword_1C4F720E8);
  sub_1C43FCDF8(v16);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FE94C();
  v41 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_predicate;
  sub_1C43FCF64();
  v44 = v5;
  sub_1C440BAA8(v20, v21, v22, v5);
  sub_1C4EFD2D8();
  v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_source;
  if (qword_1EDDFD150 != -1)
  {
    sub_1C44050D8();
    swift_once();
  }

  v24 = type metadata accessor for Source();
  v25 = sub_1C442B738(v24, qword_1EDDFD158);
  sub_1C449ED64(v25, v2 + v23);
  v26 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_eventParticipantType_predicate;
  sub_1C4EFE9B8();
  v27 = (v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_eventParticipantType);
  *v27 = 0;
  v27[1] = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_attendeeIdentifier) = 0;
  v28 = v4;
  v30 = v4[3];
  v29 = v4[4];
  v31 = v28;
  sub_1C4417F50(v28, v30);
  sub_1C4D98C30();
  sub_1C4F02BC8();
  if (!v1)
  {
    sub_1C441AC10();
    sub_1C4D986F0(v32, v33);
    sub_1C44C04E8();
    sub_1C4F02658();
    sub_1C44B9068();
    sub_1C4414918();
    swift_beginAccess();
    sub_1C449A970(v43, v2 + v41);
    swift_endAccess();
    sub_1C445C07C();
    sub_1C44C04E8();
    sub_1C4F026C8();
    sub_1C44B9068();
    sub_1C4414918();
    swift_beginAccess();
    (*(v40 + 40))(v2 + v26, v42, v44);
    swift_endAccess();
    LOBYTE(v45) = 4;
    v34 = sub_1C4F02618();
    sub_1C4425188(v34, v35);
    type metadata accessor for EKEventStructs.Person(0);
    sub_1C4441A70();
    sub_1C4D986F0(v36, v37);
    sub_1C445FC54();
    sub_1C4F02658();
    v38 = sub_1C442A7C8();
    v39(v38);
    sub_1C4488620(v45);
  }

  sub_1C440962C(v31);
  sub_1C43FBC80();
}

uint64_t sub_1C4D8D358@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4D8CF24(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4D8D3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v178 = v27;
  v183 = v28;
  v184 = v29;
  v193 = v30;
  v185 = v24;
  v31 = v23;
  v33 = v32;
  v188 = v34;
  v190 = v35;
  v191 = v36;
  v189 = type metadata accessor for EntityTriple(0);
  v37 = sub_1C43FCDF8(v189);
  v192 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBFDC();
  v186 = v41;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FD230();
  sub_1C43FD2C8(v44);
  v182 = sub_1C4EFD548();
  v45 = sub_1C43FCDF8(v182);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v195 = sub_1C4EFF8A8();
  v50 = sub_1C43FCDF8(v195);
  v194 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBCC4();
  v56 = (v55 - v54);
  v57 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v57);
  v59 = *(v58 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v175 - v61;
  v63 = sub_1C4EFEEF8();
  v64 = sub_1C43FCDF8(v63);
  v66 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v64);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  v187 = *v33;
  v69 = *v193;
  sub_1C44169A0();
  sub_1C47CBF50(v31 + v69, v62);
  sub_1C440F650(v62);
  if (v70)
  {
    sub_1C446F170(v62, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v71 = sub_1C43FFB2C();
    sub_1C4414040(v71, v72);
  }

  else
  {
    v177 = a22;
    v179 = a21;
    v73 = *(v66 + 32);
    v193 = v63;
    v73(v26, v62, v63);
    v74 = *(v47 + 16);
    v183 = *v183;
    v74(v25, &v183[v31], v182);
    sub_1C4EFF838();
    v75 = (v31 + *v184);
    v76 = v75[1];
    v77 = v56;
    v78 = v66;
    v79 = v26;
    if (!v76)
    {
      goto LABEL_11;
    }

    v80 = *v75;
    v81 = HIBYTE(v76) & 0xF;
    if ((v76 & 0x2000000000000000) == 0)
    {
      v81 = v80 & 0xFFFFFFFFFFFFLL;
    }

    if (v81)
    {
      v175 = v80;
      v82 = sub_1C4EFF0C8();
      sub_1C43FCE50(v82);
      v84 = v180;
      (*(v83 + 16))(v180, v188);
      v85 = v189;
      v86 = v189[5];
      v182 = v78;
      v87 = *(v78 + 16);
      v176 = v79;
      v88 = v193;
      v87(v84 + v86, v79, v193);
      v89 = *(v194 + 16);
      v90 = v84 + v85[6];
      v184 = v77;
      v89(v90, v77, v195);
      sub_1C4459C44();
      v92 = *v91;
      sub_1C440D164();
      v87(v84 + v85[7], v31 + v92, v88);
      sub_1C44AE118();
      v93 = v31;
      sub_1C449ED64(v31 + v94, v84 + v85[9]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v95 = (v84 + v85[8]);
      *v95 = v175;
      v95[1] = v76;
      v96 = (v84 + v85[10]);
      v97 = v191;
      *v96 = v190;
      v96[1] = v97;
      *(v84 + v85[11]) = v98;
      *(v84 + v85[12]) = v187;
      v99 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v99, v100, v101, MEMORY[0x1E69E7CC0]);
      v103 = v102;
      v105 = *(v102 + 16);
      v104 = *(v102 + 24);
      if (v105 >= v104 >> 1)
      {
        sub_1C4424DF4(v104 > 1);
        v103 = v168;
      }

      *(v103 + 16) = v105 + 1;
      sub_1C43FCC40();
      sub_1C4A948D8(v180, v106 + v107 * v105);
      v108 = v184;
      v109 = v93;
      v78 = v182;
      v79 = v176;
    }

    else
    {
LABEL_11:
      v103 = MEMORY[0x1E69E7CC0];
      v109 = v31;
      v108 = v77;
    }

    sub_1C445A9FC();
    v111 = (v109 + *v110);
    v112 = v111[1];
    if (v112)
    {
      v113 = *v111;
      v114 = HIBYTE(v112) & 0xF;
      if ((v112 & 0x2000000000000000) == 0)
      {
        v114 = v113 & 0xFFFFFFFFFFFFLL;
      }

      v115 = v186;
      if (v114)
      {
        v178 = a23;
        v180 = v113;
        v116 = sub_1C4EFF0C8();
        sub_1C43FCE50(v116);
        v118 = v181;
        (*(v117 + 16))(v181, v188);
        v119 = v189;
        v120 = v189[5];
        v121 = v109;
        v122 = v108;
        v182 = v78;
        v123 = *(v78 + 16);
        v176 = v79;
        v124 = v193;
        v123(v118 + v120);
        v125 = sub_1C4486044(v119[6]);
        v184 = v122;
        v126 = v122;
        v109 = v121;
        v127(v125, v126, v195);
        sub_1C4459C44();
        v129 = *v128;
        sub_1C440D164();
        (v123)(v118 + v119[7], v109 + v129, v124);
        sub_1C44AE118();
        sub_1C449ED64(v109 + v130, v118 + v119[9]);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v131 = (v118 + v119[8]);
        *v131 = v180;
        v131[1] = v112;
        v132 = (v118 + v119[10]);
        v133 = v191;
        *v132 = v190;
        v132[1] = v133;
        *(v118 + v119[11]) = v134;
        *(v118 + v119[12]) = v187;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v169 = *(v103 + 16);
          v170 = sub_1C43FCEC0();
          sub_1C44C9240(v170, v171, v172, v103);
          v103 = v173;
        }

        sub_1C440F0B4();
        v108 = v184;
        v78 = v182;
        v79 = v176;
        v115 = v186;
        if (v136)
        {
          sub_1C4424DF4(v135 > 1);
          v103 = v174;
        }

        *(v103 + 16) = v119;
        sub_1C43FCC40();
        sub_1C4A948D8(v181, v137 + v138 * v129);
      }
    }

    else
    {
      v115 = v186;
    }

    if (*(v103 + 16))
    {
      v139 = sub_1C4EFF0C8();
      sub_1C43FCE50(v139);
      (*(v140 + 16))(v115, v188);
      v141 = v189;
      v142 = sub_1C4486044(v189[5]);
      v143(v142, v79, v193);
      v144 = sub_1C4486044(v141[6]);
      v145(v144, v108, v195);
      v146 = v115 + v141[7];
      sub_1C4EFEBB8();
      v147 = sub_1C4EFD2F8();
      v149 = v148;
      sub_1C44AE118();
      sub_1C449ED64(v109 + v150, v115 + v141[9]);
      sub_1C4EF9AE8();
      v151 = (v115 + v141[8]);
      *v151 = v147;
      v151[1] = v149;
      v152 = (v115 + v141[10]);
      v153 = v191;
      *v152 = v190;
      v152[1] = v153;
      *(v115 + v141[11]) = v154;
      *(v115 + v141[12]) = v187;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v162 = *(v103 + 16);
        v163 = sub_1C43FCEC0();
        sub_1C44C9240(v163, v164, v165, v103);
        v103 = v166;
      }

      sub_1C440F0B4();
      if (v136)
      {
        sub_1C4424DF4(v155 > 1);
        v103 = v167;
      }

      v156 = sub_1C444C48C();
      v157(v156);
      (*(v78 + 8))(v79, v193);
      *(v103 + 16) = v147;
      sub_1C43FCC40();
      sub_1C4A948D8(v115, v158 + v159 * v141);
    }

    else
    {
      v160 = sub_1C444C48C();
      v161(v160);
      (*(v78 + 8))(v79, v193);
    }
  }

  sub_1C43FBC80();
}

unint64_t sub_1C4D8DC60(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 6:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4D8DD4C(uint64_t a1)
{
  v2 = sub_1C4D98C84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D8DD88(uint64_t a1)
{
  v2 = sub_1C4D98C84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D8DDC4()
{
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_entityClass;
  v2 = sub_1C4EFD548();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C448D818(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_source + v0);
  v4 = sub_1C4EFEEF8();
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 8);
  v7 = sub_1C4460780();
  v6(v7);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierId);
  v8 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierType_predicate);
  v6(v8);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierType);
  return v0;
}

void sub_1C4D8DF00()
{
  sub_1C4D889F8();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = type metadata accessor for Source();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_1C4EFEEF8();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1C4D8E04C()
{
  sub_1C43FE96C();
  v3 = v0;
  v4 = sub_1C447E4C8();
  v5 = sub_1C43FCDF8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD230();
  v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD1B4();
  v13 = sub_1C456902C(&qword_1EC0C6FF8, &qword_1C4F72080);
  sub_1C43FCDF8(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C440A474();
  v18 = *(v0 + 24);
  v17 = *(v0 + 32);
  v19 = sub_1C441E0A4();
  sub_1C4417F50(v19, v20);
  sub_1C4D98C84();
  sub_1C4475B58();
  sub_1C4F02BF8();
  v21 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_predicate;
  sub_1C440D164();
  sub_1C47CBF50(v3 + v21, v2);
  sub_1C441AC10();
  sub_1C4D986F0(v22, v23);
  sub_1C447E3F4();
  sub_1C446F170(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
  if (v1)
  {
    v24 = sub_1C4D9A070();
    v25(v24);
  }

  else
  {
    sub_1C44019B0(1);
    sub_1C4EFD548();
    sub_1C442DB0C();
    sub_1C4D986F0(v26, v27);
    sub_1C4480490();
    v28 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_source;
    sub_1C44343BC();
    type metadata accessor for Source();
    sub_1C4420AB8();
    sub_1C4D986F0(v29, v30);
    sub_1C4D9A00C();
    sub_1C4418194();
    v31 = sub_1C445C2C4();
    v32(v31);
    sub_1C4424A5C();
    sub_1C440F0D4();
    v33 = v28[1];
    v33(v17, v4);
    sub_1C4475CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierId);
    sub_1C4D9A04C();

    sub_1C440D164();
    v34 = sub_1C44D0BC0();
    v35(v34);
    sub_1C440F0D4();
    v36 = sub_1C440BB4C();
    (v33)(v36);
    sub_1C44579C0(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierType);
    sub_1C4404084();
    sub_1C4F02738();
    v37 = sub_1C442EE7C();
    v38(v37);
  }

  sub_1C440E3AC();
  sub_1C43FBC80();
}

uint64_t sub_1C4D8E478()
{
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v1, v2, v3, v4);
  sub_1C4EFD258();
  v5 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_source;
  if (qword_1EDDFD150 != -1)
  {
    sub_1C44050D8();
    swift_once();
  }

  v6 = type metadata accessor for Source();
  v7 = sub_1C442B738(v6, qword_1EDDFD158);
  sub_1C449ED64(v7, v5 + v0);
  sub_1C4EFE558();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierId);
  sub_1C4EFE658();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierType);
  return v0;
}

void sub_1C4D8E574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v13 = sub_1C4D9A110();
  v14 = sub_1C43FCDF8(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD230();
  sub_1C4451268(v18);
  v19 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v19);
  v21 = *(v20 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBC74();
  v53 = v23;
  v24 = sub_1C456902C(&qword_1EC0C7098, &qword_1C4F720E0);
  sub_1C43FCDF8(v24);
  v26 = *(v25 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C4418964();
  v52 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_predicate;
  sub_1C43FCF64();
  sub_1C4D9A130(v28, v29, v30);
  sub_1C4EFD258();
  v31 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_source;
  if (qword_1EDDFD150 != -1)
  {
    sub_1C44050D8();
    swift_once();
  }

  v32 = type metadata accessor for Source();
  v33 = sub_1C442B738(v32, qword_1EDDFD158);
  sub_1C449ED64(v33, v31 + v11);
  sub_1C4EFE558();
  v34 = (v11 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierId);
  *v34 = 0;
  v34[1] = 0;
  sub_1C4EFE658();
  v35 = (v11 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierType);
  *v35 = 0;
  v35[1] = 0;
  v36 = v12;
  v37 = v12[3];
  v38 = v12[4];
  v54 = v36;
  sub_1C4417F50(v36, v37);
  sub_1C4D98C84();
  sub_1C4475550();
  sub_1C4F02BC8();
  if (a10)
  {
  }

  else
  {
    sub_1C4D9A0DC();
    sub_1C441AC10();
    sub_1C4D986F0(v39, v40);
    sub_1C4D9A0D0();
    sub_1C44107C0();
    sub_1C4F02658();
    sub_1C44F1A18();
    sub_1C4414918();
    swift_beginAccess();
    sub_1C449A970(v53, v52);
    swift_endAccess();
    sub_1C445C07C();
    sub_1C4D9A0D0();
    sub_1C44107C0();
    sub_1C4F026C8();
    sub_1C44F1A18();
    sub_1C4414918();
    swift_beginAccess();
    v41 = sub_1C4466E1C();
    v10(v41);
    swift_endAccess();
    v42 = sub_1C442A5AC(4);
    sub_1C4425188(v42, v43);
    sub_1C4462540();
    sub_1C44B9068();
    sub_1C4414918();
    swift_beginAccess();
    v44 = sub_1C4D9A09C();
    v10(v44);
    swift_endAccess();
    v45 = sub_1C442A5AC(6);
    v47 = v46;
    v48 = sub_1C440A3B0();
    v49(v48);
    v50 = v51[1];
    *v51 = v45;
    v51[1] = v47;
  }

  sub_1C440962C(v54);
  sub_1C43FBC80();
}

uint64_t sub_1C4D8EA1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4D8E548(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4D8EF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v24;
  a20 = v25;
  v228 = v21;
  v27 = v26;
  v226 = v28;
  v231 = v29;
  v232 = v30;
  v230 = sub_1C4EFF0C8();
  v31 = sub_1C43FCDF8(v230);
  v233 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD2D8();
  v36 = sub_1C43FD2C8(v35);
  v222 = type metadata accessor for EntityTriple(v36);
  v37 = sub_1C43FCDF8(v222);
  v223 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FD230();
  sub_1C43FD2C8(v44);
  v221 = sub_1C4EFD548();
  v45 = sub_1C43FCDF8(v221);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBCC4();
  sub_1C43FD1B4();
  v50 = sub_1C4EFF8A8();
  v234 = sub_1C43FCDF8(v50);
  v235 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v234);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v208 - v55;
  v57 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v58 = sub_1C43FBD18(v57);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v208 - v62;
  v64 = sub_1C4EFEEF8();
  v65 = sub_1C43FCDF8(v64);
  v67 = v66;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v70);
  sub_1C4410A24();
  v229 = *v27;
  v71 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_predicate;
  sub_1C44169A0();
  sub_1C47CBF50(v20 + v71, v63);
  sub_1C440F650(v63);
  if (v72)
  {
    sub_1C446F170(v63, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v73 = sub_1C43FFB2C();
    sub_1C4414040(v73, v74);
LABEL_36:
    sub_1C44109F8();
    return;
  }

  v75 = *(v67 + 32);
  v224 = v22;
  v225 = v64;
  v211 = v67 + 32;
  v210 = v75;
  v75(v22, v63, v64);
  v76 = *(v47 + 16);
  v212 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_entityClass;
  v76(v23, v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_entityClass, v221);
  sub_1C4EFF838();
  v77 = MEMORY[0x1E69E7CC0];
  v237 = MEMORY[0x1E69E7CC0];
  v78 = v20;
  v79 = *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_latitude + 8);
  v80 = v67;
  v221 = v67;
  v227 = v56;
  if (v79 && (v81 = *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_latitude), sub_1C4D9A0B0(), v82))
  {
    v83 = *(v233 + 16);
    v84 = v219;
    sub_1C44D459C();
    v209 = v85;
    v86();
    v87 = v222;
    v88 = *(v67 + 16);
    v89 = v84 + *(v222 + 20);
    sub_1C4495324(&a15);
    v91 = *(v90 - 256);
    v88();
    v92 = *(v87 + 24);
    v93 = *(v235 + 16);
    sub_1C4488298();
    v94();
    v95 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_latitude_predicate;
    v67 = v87;
    v20 = v78;
    sub_1C440D164();
    (v88)(v84 + *(v67 + 28), v78 + v95, v91);
    sub_1C449ED64(v78 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_source, v84 + *(v67 + 36));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    sub_1C44CD0D4();
    *v96 = v209;
    v96[1] = v79;
    sub_1C4485B10();
    sub_1C44A1E00(v97);
    *(v84 + v98) = v99;
    v100 = v229;
    *(v84 + *(v67 + 48)) = v229;
    v101 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4401EC4(v101, v102, v103, MEMORY[0x1E69E7CC0]);
    v77 = v104;
    v106 = *(v104 + 16);
    v105 = *(v104 + 24);
    if (v106 >= v105 >> 1)
    {
      sub_1C43FCFE8(v105);
      sub_1C440424C();
      sub_1C44C9240(v177, v178, v179, v77);
      v77 = v180;
    }

    v23 = v228;
    *(v77 + 16) = v106 + 1;
    sub_1C43FCC40();
    sub_1C4A948D8(v219, v107 + v108 * v106);
    v237 = v77;
    v80 = v221;
  }

  else
  {
    sub_1C44D3E6C();
    v100 = v229;
  }

  v109 = *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_longitude + 8);
  v222 = v20;
  if (v109)
  {
    v110 = *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_longitude);
    sub_1C4D9A0B0();
    if (v112)
    {
      v113 = *(v111 + 16);
      v114 = v220;
      sub_1C44D459C();
      v115();
      v116 = *(v80 + 16);
      v117 = v114 + *(v67 + 20);
      sub_1C4495324(&a15);
      v119 = *(v118 - 256);
      v116();
      sub_1C4486044(*(v67 + 24));
      sub_1C4488298();
      v120();
      sub_1C445A9FC();
      sub_1C440D164();
      v121 = *(v67 + 28);
      sub_1C445A9FC();
      v20 = v222;
      v116();
      v100 = v229;
      v122 = v232;
      sub_1C449ED64(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_source, v114 + *(v67 + 36));
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v123 = (v114 + *(v67 + 32));
      *v123 = v110;
      v123[1] = v109;
      v124 = (v114 + *(v67 + 40));
      *v124 = v231;
      v124[1] = v122;
      *(v114 + *(v67 + 44)) = v125;
      *(v114 + *(v67 + 48)) = v100;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v181 = *(v77 + 16);
        v182 = sub_1C43FCEC0();
        sub_1C44C9240(v182, v183, v184, v77);
        v77 = v185;
      }

      v127 = *(v77 + 16);
      v126 = *(v77 + 24);
      v23 = v228;
      if (v127 >= v126 >> 1)
      {
        sub_1C43FCFE8(v126);
        sub_1C440424C();
        sub_1C44C9240(v186, v187, v188, v77);
        v77 = v189;
      }

      *(v77 + 16) = v127 + 1;
      sub_1C43FCC40();
      sub_1C4A948D8(v220, v128 + v129 * v127);
      v237 = v77;
    }
  }

  v130 = *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_hasLocation);
  v131 = v234;
  if (!v130)
  {
    goto LABEL_28;
  }

  v236 = v100;

  v132 = sub_1C4D8EA6C(v231, v232, &v236);
  if (v23)
  {

    (*(v235 + 8))(v227, v131);
    (*(v221 + 8))(v224, v225);

    goto LABEL_36;
  }

  if (!*(v132 + 16))
  {

LABEL_28:
    v152 = v218;
LABEL_29:
    v157 = v221;
    if (*(v77 + 16))
    {
      (*(v233 + 16))(v152, v226, v230);
      sub_1C448879C(*(v67 + 20));
      sub_1C4495324(&a15);
      v159 = *(v158 - 256);
      v160();
      sub_1C448879C(*(v67 + 24));
      sub_1C4488298();
      v161();
      v162 = v152 + *(v67 + 28);
      sub_1C4EFEBB8();
      v163 = v222;
      v164 = v222 + v212;
      sub_1C4EFD2F8();
      sub_1C43FC1CC();
      sub_1C449ED64(v163 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_source, v152 + *(v67 + 36));
      sub_1C4EF9AE8();
      v165 = (v152 + *(v67 + 32));
      *v165 = v164;
      v165[1] = v131;
      sub_1C44A1E00((v152 + *(v67 + 40)));
      *(v152 + v166) = v167;
      *(v152 + *(v67 + 48)) = v100;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v190 = *(v77 + 16);
        v191 = sub_1C43FCEC0();
        sub_1C44C9240(v191, v192, v193, v77);
        v77 = v194;
      }

      sub_1C440F0B4();
      if (v154)
      {
        v195 = sub_1C43FFD98(v168);
        sub_1C44C9240(v195, v196, v197, v77);
        v77 = v198;
      }

      (*(v235 + 8))(v227, v234);
      v169 = *(v157 + 8);
      v170 = sub_1C4460770();
      v171(v170);
      *(v77 + 16) = v164;
      sub_1C43FCC40();
      sub_1C4A948D8(v152, v172 + v173 * v131);
    }

    else
    {
      (*(v235 + 8))(v227, v131, v230);
      v174 = *(v157 + 8);
      v175 = sub_1C4460770();
      v176(v175);
    }

    goto LABEL_36;
  }

  v133 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v133);
  v134 = *(v233 + 16);
  v135 = v214;
  sub_1C44D459C();
  v136();
  v137 = v225;
  (*(v221 + 16))(v216, v224, v225);
  (*(v235 + 16))(v217, v227, v131);
  v138 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_predicate;
  sub_1C440D164();
  v139 = v130 + v138;
  v140 = v213;
  sub_1C47CBF50(v139, v213);
  if (sub_1C44157D4(v140, 1, v137) != 1)
  {

    v228 = sub_1C4EFF048();
    v220 = v141;
    v142 = v215;
    sub_1C449ED64(v222 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_source, v215 + *(v67 + 36));
    sub_1C4EF9AE8();
    v144 = v143;
    (*(v233 + 32))(v142, v135, v230);
    v145 = v137;
    v146 = v211;
    v147 = v137;
    v148 = v210;
    v210(v142 + *(v67 + 20), v216, v145);
    (*(v235 + 32))(v142 + *(v67 + 24), v217, v131);
    v148(v142 + *(v67 + 28), v140, v147);
    v149 = (v142 + *(v67 + 32));
    v150 = v220;
    *v149 = v228;
    v149[1] = v150;
    sub_1C44A1E00((v142 + *(v67 + 40)));
    *(v142 + v151) = v144;
    v100 = v229;
    *(v142 + *(v67 + 48)) = v229;
    v77 = v237;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v199 = *(v77 + 16);
      v200 = sub_1C43FCEC0();
      sub_1C44C9240(v200, v201, v202, v77);
      v77 = v203;
    }

    v152 = v218;
    sub_1C440F0B4();
    if (v154)
    {
      v204 = sub_1C43FFD98(v153);
      sub_1C44C9240(v204, v205, v206, v77);
      v77 = v207;
    }

    *(v77 + 16) = v146;
    sub_1C43FCC40();
    sub_1C4A948D8(v215, v155 + v156 * v131);
    v131 = v234;
    goto LABEL_29;
  }

  __break(1u);
}

void sub_1C4D8FBD0()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  sub_1C44D4078(v5);
  v113 = sub_1C4F00DD8();
  v6 = sub_1C43FCDF8(v113);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v9);
  v115 = sub_1C4F00DC8();
  v10 = sub_1C43FCDF8(v115);
  v114 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  sub_1C43FD2C8(v15);
  v16 = sub_1C4F01188();
  v17 = sub_1C43FCDF8(v16);
  v120 = v18;
  v121 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD2D8();
  v119 = v21;
  sub_1C43FBE44();
  v129 = sub_1C4EFD548();
  v22 = sub_1C43FCDF8(v129);
  v127 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  v28 = v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C440D100();
  v30 = type metadata accessor for Source();
  v31 = sub_1C43FBCE0(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBCC4();
  v36 = (v35 - v34);
  v37 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v37);
  v39 = *(v38 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBC74();
  v126 = v41;
  sub_1C43FBE44();
  v42 = sub_1C4EFF0C8();
  v43 = sub_1C43FCDF8(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FD2D8();
  v116 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_predicate;
  v117 = sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v46, v47, v48, v49);
  v50 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_entityClass;
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  v51 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_source;
  if (qword_1EDDFD150 != -1)
  {
    sub_1C44050D8();
    swift_once();
  }

  v52 = sub_1C442B738(v30, qword_1EDDFD158);
  sub_1C449ED64(v52, v2 + v51);
  sub_1C4EFEBF8();
  v53 = (v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_name);
  *v53 = 0;
  v53[1] = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_hasLatLong) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_identifier) = 0;
  v123 = v51;
  sub_1C449ED64(v2 + v51, v36);
  v54 = *(v127 + 16);
  v54(v1, v2 + v50, v129);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v55 = sub_1C4F00978();
  sub_1C442B738(v55, qword_1EDE2DE10);
  v109 = v54;
  v54(v28, v1, v129);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v56 = sub_1C4F00968();
  v57 = sub_1C4F01CB8();

  v124 = v50;
  v122 = v2;
  if (os_log_type_enabled(v56, v57))
  {
    swift_slowAlloc();
    v128[0] = sub_1C4488A10();
    *v1 = 136381187;
    v58 = sub_1C441D828(v125, v4, v128);
    sub_1C4485F78(v58);
    sub_1C442DB0C();
    sub_1C4D986F0(v59, v60);
    sub_1C4F02858();
    v2 = v61;
    v118 = *(v127 + 8);
    v118(v28, v129);
    v62 = sub_1C4409A28();
    sub_1C441D828(v62, v63, v64);

    sub_1C4414088();
    _os_log_impl(&dword_1C43F8000, v56, v57, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v1, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v118 = *(v127 + 8);
    v118(v28, v129);
  }

  v65 = *v36;
  v66 = v36[1];
  v128[0] = v125;
  v128[1] = v4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v67 = sub_1C4404084();
  MEMORY[0x1C6940010](v67);

  sub_1C4F01178();
  sub_1C442F9C8();
  sub_1C4F01148();
  v69 = v68;
  (*(v120 + 8))(v119, v121);
  if (v69 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v70 = sub_1C4F00968();
    v71 = sub_1C4F01CD8();

    if (os_log_type_enabled(v70, v71))
    {
      swift_slowAlloc();
      v72 = sub_1C4415B1C();
      v128[0] = v72;
      *v2 = 136380675;
      v73 = sub_1C440BB4C();
      v76 = sub_1C441D828(v73, v74, v75);

      *(v2 + 4) = v76;
      sub_1C447CEB4(&dword_1C43F8000, v77, v78, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C440962C(v72);
      sub_1C43FBE2C();
      sub_1C4485E14();

      v79 = sub_1C44E7750();
    }

    else
    {

      sub_1C443E05C();
      v79 = v1;
      v80 = v129;
    }

    v96 = v118;
    v97 = (v118)(v79, v80);
    v98 = 1;
  }

  else
  {

    sub_1C44151FC();
    sub_1C4D986F0(v81, v82);
    sub_1C440BB4C();
    sub_1C4F00DB8();
    v83 = sub_1C4409D98();
    sub_1C44344B8(v83, v84);
    v85 = sub_1C4409D98();
    sub_1C4498FD8(v85, v86);
    v87 = sub_1C4409D98();
    sub_1C441DFEC(v87, v88);
    sub_1C440BB4C();
    sub_1C4F00DA8();
    v89 = sub_1C4485C30();
    v90(v89, v113);
    v109(v110, v1, v129);
    (*(v114 + 16))(v111, v112, v115);
    sub_1C4EFF028();
    v91 = sub_1C4409D98();
    sub_1C441DFEC(v91, v92);
    v93 = sub_1C4425810();
    v94(v93);
    sub_1C443E05C();
    v95 = sub_1C4409A28();
    v96 = v118;
    v97 = (v118)(v95);
    v98 = 0;
  }

  sub_1C445886C(v97, v98);
  sub_1C4482D7C();
  if (v99)
  {
    sub_1C446F170(v126, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C45CF650();
    v100 = sub_1C43FFB2C();
    sub_1C4428F60(v100, v101);
    sub_1C446F170(v122 + v116, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C443E05C();
    v96(v124 + v122, v129);
    sub_1C448D818(v122 + v123);
    (*(*(v117 - 8) + 8))(v122 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_name_predicate);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_name);
    v102 = *(v122 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_hasLatLong);

    v103 = *(v122 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_identifier);

    sub_1C44417C4();
    v105 = *(v104 + 48);
    v106 = *(v104 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v107 = sub_1C4440EB0();
    v124(v107);
    v108 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_entityIdentifier);
    v124(v108);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4D905B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F4C74614C736168 && a2 == 0xEA0000000000676ELL;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C4F02938();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4D90850(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0x6F4C74614C736168;
      break;
    case 7:
      result = 0x696669746E656469;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4D90958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D905B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D90980(uint64_t a1)
{
  v2 = sub_1C4D98CD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D909BC(uint64_t a1)
{
  v2 = sub_1C4D98CD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D909F8()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_source);
  v7 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_name_predicate;
  v8 = sub_1C4EFEEF8();
  sub_1C43FD3F8(v8);
  (*(v9 + 8))(v0 + v7);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_name);
  v10 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_hasLatLong);

  v11 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_identifier);

  return v0;
}

void sub_1C4D90B50()
{
  v0 = sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1C4D889F8();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      v4 = sub_1C4EFD548();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        v6 = type metadata accessor for Source();
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = sub_1C4EFEEF8();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1C4D90CE0()
{
  sub_1C43FE96C();
  v55 = v1;
  v4 = sub_1C447E4C8();
  v5 = sub_1C43FCDF8(v4);
  v53 = v6;
  v54 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  v15 = sub_1C456902C(&qword_1EC0C7008, &qword_1C4F72088);
  sub_1C43FCDF8(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C440A474();
  v22 = *(v0 + 24);
  v21 = *(v0 + 32);
  v23 = sub_1C441E0A4();
  sub_1C4417F50(v23, v24);
  sub_1C4D98CD8();
  sub_1C4475B58();
  sub_1C4F02BF8();
  v58 = 0;
  sub_1C4EFF0C8();
  sub_1C440B914();
  sub_1C4D986F0(v25, v26);
  v27 = v55;
  sub_1C4F027E8();
  if (v27)
  {
    v28 = *(v17 + 8);
    v29 = v3;
    v30 = v15;
  }

  else
  {
    v52 = v2;
    v55 = v17;
    v31 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_predicate;
    sub_1C440D164();
    sub_1C47CBF50(v0 + v31, v14);
    v57 = 1;
    sub_1C441AC10();
    sub_1C4D986F0(v32, v33);
    v34 = v54;
    sub_1C4475550();
    sub_1C4F02778();
    sub_1C446F170(v14, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44343BC();
    sub_1C4EFD548();
    sub_1C442DB0C();
    sub_1C4D986F0(v35, v36);
    sub_1C4456A24();
    sub_1C4F027E8();
    sub_1C44019B0(3);
    type metadata accessor for Source();
    sub_1C4420AB8();
    sub_1C4D986F0(v37, v38);
    sub_1C4F027E8();
    v39 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_name_predicate;
    sub_1C4418194();
    v40 = v53;
    v41 = v0 + v39;
    v42 = v52;
    (*(v53 + 16))(v52, v41, v34);
    sub_1C43FE79C(4);
    sub_1C4475550();
    sub_1C4F027E8();
    (*(v40 + 8))(v42, v34);
    v43 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_name);
    v44 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_name + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4D9A0F0();
    sub_1C4F02738();

    v59 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_hasLatLong);
    v56 = 6;
    type metadata accessor for EKEventStructs.LocationRelationshipType(0);
    sub_1C440FFD4();
    sub_1C4D986F0(v45, v46);
    sub_1C4414374();
    sub_1C44805BC();
    sub_1C4F02778();
    v47 = v55;
    v60 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_identifier);
    v56 = 7;
    type metadata accessor for EKEventStructs.IdentifierRelationshipType(0);
    sub_1C448E16C();
    sub_1C4D986F0(v48, v49);
    sub_1C4414374();
    sub_1C4456A24();
    sub_1C4F02778();
    v50 = *(v47 + 8);
    v29 = sub_1C442A90C();
  }

  v28(v29, v30);
  sub_1C43FBC80();
}

void sub_1C4D9124C()
{
  sub_1C43FE96C();
  sub_1C445CD30();
  v3 = sub_1C4EFEEF8();
  v4 = sub_1C43FCDF8(v3);
  v57 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FD2D8();
  v51 = v8;
  v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBC74();
  v53 = v13;
  sub_1C43FBE44();
  v55 = sub_1C4EFF0C8();
  v14 = sub_1C43FCDF8(v55);
  v52 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD2D8();
  v54 = v18;
  v19 = sub_1C456902C(&qword_1EC0C7090, &qword_1C4F720D8);
  sub_1C43FCDF8(v19);
  v21 = *(v20 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C44058BC();
  v58 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_predicate;
  sub_1C43FCF64();
  v59 = v3;
  sub_1C440BAA8(v23, v24, v25, v3);
  v56 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_entityClass;
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  v26 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_source;
  if (qword_1EDDFD150 != -1)
  {
    sub_1C44050D8();
    swift_once();
  }

  v27 = type metadata accessor for Source();
  v28 = sub_1C442B738(v27, qword_1EDDFD158);
  sub_1C449ED64(v28, v0 + v26);
  v29 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_name_predicate;
  sub_1C4EFEBF8();
  v30 = (v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_name);
  *v30 = 0;
  v30[1] = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_hasLatLong) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_identifier) = 0;
  v31 = v1[4];
  sub_1C4417F50(v1, v1[3]);
  sub_1C4D98CD8();
  sub_1C4F02BC8();
  if (v2)
  {
    sub_1C446F170(v0 + v58, &qword_1EC0B9A08, &unk_1C4F107B0);
    v34 = sub_1C4EFD548();
    sub_1C43FD3F8(v34);
    (*(v35 + 8))(v0 + v56);
    sub_1C448D818(v0 + v26);
    (*(v57 + 8))(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_name_predicate, v59);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_name);
    v36 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_hasLatLong);

    v37 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_identifier);

    sub_1C44417C4();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1C440B914();
    sub_1C4D986F0(v32, v33);
    sub_1C441BD40();
    sub_1C4F026C8();
    (*(v52 + 32))(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_entityIdentifier, v54, v55);
    LOBYTE(v60) = 1;
    sub_1C441AC10();
    sub_1C4D986F0(v41, v42);
    sub_1C441BD40();
    sub_1C4F02658();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C449A970(v53, v0 + v58);
    swift_endAccess();
    sub_1C4402064(4);
    sub_1C441BD40();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    (*(v57 + 40))(v0 + v29, v51, v59);
    swift_endAccess();
    sub_1C441867C(5);
    sub_1C441BD40();
    v43 = sub_1C4F02618();
    sub_1C4425188(v43, v44);
    type metadata accessor for EKEventStructs.LocationRelationshipType(0);
    sub_1C440FFD4();
    sub_1C4D986F0(v45, v46);
    sub_1C441481C();
    sub_1C44BBF8C();
    sub_1C4F02658();
    sub_1C4488620(v60);

    type metadata accessor for EKEventStructs.IdentifierRelationshipType(0);
    sub_1C448E16C();
    sub_1C4D986F0(v47, v48);
    sub_1C441481C();
    sub_1C44BBF8C();
    sub_1C4F02658();
    v49 = sub_1C440F0F4();
    v50(v49);
    sub_1C4488620(v60);
  }

  sub_1C440962C(v1);
  sub_1C43FBC80();
}

uint64_t sub_1C4D918D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4D91220(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4D91920(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001C4FC8890 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x80000001C4FC88B0 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x7461636F4C736168 && a2 == 0xEB000000006E6F69)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C4F02938();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4D91BB0(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x656475746974616CLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x64757469676E6F6CLL;
      break;
    case 7:
      result = 0x7461636F4C736168;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4D91CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D91920(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D91CDC(uint64_t a1)
{
  v2 = sub_1C4D98D2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D91D18(uint64_t a1)
{
  v2 = sub_1C4D98D2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D91D54()
{
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_entityClass;
  v2 = sub_1C4EFD548();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_source);
  v4 = sub_1C4EFEEF8();
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 8);
  v7 = sub_1C4460780();
  v6(v7);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_latitude);
  v8 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_longitude_predicate);
  v6(v8);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_longitude);
  v9 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_hasLocation);

  return v0;
}

void sub_1C4D91EA0()
{
  sub_1C4D889F8();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = type metadata accessor for Source();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_1C4EFEEF8();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1C4D91FF8()
{
  sub_1C43FE96C();
  v67 = v1;
  v3 = v0;
  v4 = sub_1C447E4C8();
  v5 = sub_1C43FCDF8(v4);
  v65 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v63 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD230();
  v64 = v11;
  v12 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FE94C();
  v16 = sub_1C456902C(&qword_1EC0C7018, &qword_1C4F72090);
  sub_1C43FCDF8(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  v25 = *(v0 + 24);
  v24 = *(v0 + 32);
  v26 = sub_1C441E0A4();
  sub_1C4417F50(v26, v27);
  sub_1C4D98D2C();
  sub_1C4F02BF8();
  v28 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_predicate;
  sub_1C44F1A18();
  sub_1C440D164();
  v66 = v3;
  sub_1C47CBF50(v3 + v28, v2);
  v71 = 0;
  sub_1C441AC10();
  sub_1C4D986F0(v29, v30);
  v68 = v16;
  v31 = v67;
  sub_1C4F02778();
  if (v31)
  {
    sub_1C446F170(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    (*(v18 + 8))(v23, v68);
  }

  else
  {
    v67 = v18;
    sub_1C446F170(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44019B0(1);
    sub_1C4EFD548();
    sub_1C442DB0C();
    sub_1C4D986F0(v32, v33);
    v34 = v66;
    v35 = v23;
    sub_1C4F027E8();
    sub_1C44343BC();
    type metadata accessor for Source();
    sub_1C4420AB8();
    sub_1C4D986F0(v36, v37);
    sub_1C44805BC();
    sub_1C4F027E8();
    v38 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_latitude_predicate;
    sub_1C4418194();
    v39 = v65;
    v40 = *(v65 + 16);
    v41 = v34 + v38;
    v42 = v64;
    v40(v64, v41, v4);
    sub_1C4424A5C();
    sub_1C4F027E8();
    v62 = v40;
    v43 = *(v39 + 8);
    v43(v42, v4);
    v44 = v4;
    v45 = *(v66 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_latitude);
    v46 = *(v66 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_latitude + 8);
    v70 = 4;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44805BC();
    sub_1C4F02738();
    if (v45)
    {
      v47 = sub_1C44018C0();
      v48(v47);
    }

    else
    {
      v65 = v39 + 8;

      v49 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_longitude_predicate;
      v50 = v66;
      sub_1C440D164();
      v51 = v63;
      v62(v63, v50 + v49, v44);
      sub_1C43FE79C(5);
      sub_1C4F027E8();
      v43(v51, v44);
      v52 = v66;
      v53 = *(v66 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_longitude);
      v54 = *(v66 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_longitude + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4D9A0F0();
      sub_1C44805BC();
      sub_1C4F02738();
      v55 = v67;
      if (!v53)
      {

        v72 = *(v52 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_hasLocation);
        v69 = 7;
        type metadata accessor for EKEventStructs.Place(0);
        sub_1C442AD50();
        sub_1C4D986F0(v56, v57);
        sub_1C4414374();
        sub_1C4456A24();
        sub_1C4F02778();
        v58 = *(v55 + 8);
        v59 = sub_1C442A90C();
        v60(v59);
        goto LABEL_4;
      }

      (*(v67 + 8))(v35, v68);
    }
  }

LABEL_4:
  sub_1C43FBC80();
}

uint64_t sub_1C4D925B8()
{
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v1, v2, v3, v4);
  sub_1C4EFD1F8();
  v5 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_source;
  if (qword_1EDDFD150 != -1)
  {
    sub_1C44050D8();
    swift_once();
  }

  v6 = type metadata accessor for Source();
  v7 = sub_1C442B738(v6, qword_1EDDFD158);
  sub_1C449ED64(v7, v0 + v5);
  sub_1C4EFEDD8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_latitude);
  sub_1C4EFEEB8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_longitude);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_hasLocation) = 0;
  return v0;
}

void sub_1C4D926C0()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = sub_1C4EFEEF8();
  v5 = sub_1C43FCDF8(v4);
  v48 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v47 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD230();
  v50 = v11;
  v12 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBC74();
  v51 = v16;
  v17 = sub_1C456902C(&qword_1EC0C7088, &qword_1C4F720D0);
  v53 = sub_1C43FCDF8(v17);
  v19 = *(v18 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBC74();
  v49 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_predicate;
  sub_1C43FCF64();
  v52 = v4;
  sub_1C440BAA8(v21, v22, v23, v4);
  sub_1C4EFD1F8();
  v24 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_source;
  if (qword_1EDDFD150 != -1)
  {
    sub_1C44050D8();
    swift_once();
  }

  v25 = type metadata accessor for Source();
  v26 = sub_1C442B738(v25, qword_1EDDFD158);
  sub_1C449ED64(v26, v0 + v24);
  v27 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_latitude_predicate;
  sub_1C4EFEDD8();
  v28 = (v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_latitude);
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_longitude_predicate;
  sub_1C4EFEEB8();
  v30 = (v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_longitude);
  *v30 = 0;
  v30[1] = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_hasLocation) = 0;
  v31 = v3;
  v32 = v3[3];
  v33 = v3[4];
  v54 = v31;
  sub_1C4417F50(v31, v32);
  sub_1C4D98D2C();
  sub_1C4475550();
  sub_1C4F02BC8();
  if (v1)
  {

    v34 = v54;
  }

  else
  {
    v46 = v29;
    sub_1C441AC10();
    sub_1C4D986F0(v35, v36);
    sub_1C4F02658();
    v34 = v54;
    sub_1C4414918();
    swift_beginAccess();
    sub_1C449A970(v51, v0 + v49);
    swift_endAccess();
    sub_1C445C07C();
    sub_1C4F026C8();
    sub_1C44B9068();
    sub_1C4414918();
    swift_beginAccess();
    v37 = *(v48 + 40);
    v37(v0 + v27, v50, v52);
    swift_endAccess();
    v38 = sub_1C44A83EC(4);
    sub_1C4425188(v38, v39);
    LOBYTE(v55) = 5;
    sub_1C4F026C8();
    sub_1C44B9068();
    sub_1C4414918();
    swift_beginAccess();
    v37(v0 + v46, v47, v52);
    swift_endAccess();
    v40 = sub_1C44A83EC(6);
    sub_1C4425188(v40, v41);
    type metadata accessor for EKEventStructs.Place(0);
    sub_1C442AD50();
    sub_1C4D986F0(v42, v43);
    sub_1C445FC54();
    sub_1C4F02658();
    v44 = sub_1C441E0F0();
    v45(v44, v53);
    sub_1C4488620(v55);
  }

  sub_1C440962C(v34);
  sub_1C43FBC80();
}

uint64_t sub_1C4D92C0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4D92694(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4D92C5C()
{
  sub_1C43FE96C();
  v4 = v1;
  v6 = v5;
  v237 = type metadata accessor for EntityTriple(0);
  v7 = sub_1C43FCDF8(v237);
  v234 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD230();
  sub_1C43FD2C8(v17);
  v18 = sub_1C4EFD548();
  v19 = sub_1C44410E0(v18);
  v20 = sub_1C43FCDF8(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v27 = v26 - v25;
  v239 = sub_1C4EFF8A8();
  v28 = sub_1C43FCDF8(v239);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  sub_1C43FD1B4();
  v31 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v31);
  v33 = *(v32 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C4418964();
  v35 = sub_1C4EFEEF8();
  v36 = sub_1C43FCDF8(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  v235 = *v6;
  v41 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_predicate;
  sub_1C44169A0();
  sub_1C47CBF50(v4 + v41, v0);
  sub_1C440F650(v0);
  if (v42)
  {
    sub_1C446F170(v0, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v43 = sub_1C43FFB2C();
    sub_1C4414040(v43, v44);
  }

  else
  {
    v236 = v3;
    (*(v38 + 32))(v3, v0, v35);
    v46 = *(v22 + 16);
    v45 = v22 + 16;
    v46(v27, v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_entityClass);
    sub_1C4EFF838();
    sub_1C4D99FD8(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_startTime);
    v233 = v2;
    v238 = v35;
    v48 = v38;
    v232 = v38;
    if (v27 && (sub_1C4404978(v47), v49))
    {
      v50 = sub_1C4EFF0C8();
      sub_1C43FCE50(v50);
      v52 = *(v51 + 16);
      v38 = v225;
      sub_1C442F834();
      v53();
      sub_1C44A3D24();
      v54 = *(v48 + 16);
      sub_1C447F774();
      v54();
      v55 = *(v48 + 24);
      sub_1C4415E24();
      v57(v225 + v56, v3, v239);
      v58 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_startTime_predicate;
      sub_1C440D164();
      (v54)(v225 + *(v48 + 28), v4 + v58, v45);
      sub_1C449ED64(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_source, v225 + *(v48 + 36));
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v59 = (v225 + *(v48 + 32));
      *v59 = v0;
      v59[1] = v27;
      sub_1C43FF9E4((v225 + *(v48 + 40)));
      *(v225 + *(v48 + 44)) = v60;
      *(v225 + *(v48 + 48)) = v235;
      v61 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v61, v62, v63, MEMORY[0x1E69E7CC0]);
      v65 = v64;
      v27 = *(v64 + 16);
      v66 = *(v64 + 24);
      v0 = v27 + 1;
      if (v27 >= v66 >> 1)
      {
        v176 = sub_1C43FF640(v66);
        sub_1C44C9240(v176, v177, v178, v65);
        v65 = v179;
      }

      v67 = v234;
      sub_1C4432F30();
      sub_1C4A948D8(v225, v68);
      v2 = v233;
      v48 = v232;
    }

    else
    {
      v65 = MEMORY[0x1E69E7CC0];
      v67 = v234;
    }

    sub_1C4D99FD8(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedStartTime);
    if (v27)
    {
      sub_1C43FF988(v69);
      if (v70)
      {
        v71 = sub_1C4EFF0C8();
        sub_1C43FCE50(v71);
        v73 = *(v72 + 16);
        v74 = sub_1C4427000();
        v75(v74);
        sub_1C44A3D24();
        v38 = v48 + 16;
        v76 = *(v48 + 16);
        sub_1C447F774();
        v76();
        v77 = *(v48 + 24);
        sub_1C4415E24();
        v79(v0 + v78, v67, v239);
        v80 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedStartTime_predicate;
        sub_1C440D164();
        (v76)(v0 + *(v48 + 28), v4 + v80, v45);
        sub_1C449ED64(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_source, v0 + *(v48 + 36));
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44AE934((v0 + *(v48 + 32)));
        sub_1C43FF9E4((v0 + *(v48 + 40)));
        *(v0 + *(v48 + 44)) = v81;
        *(v0 + *(v48 + 48)) = v235;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v180 = *(v65 + 16);
          v181 = sub_1C43FCEC0();
          sub_1C44C9240(v181, v182, v183, v65);
          v65 = v184;
        }

        sub_1C4402054();
        v2 = v233;
        v48 = v232;
        if (v83)
        {
          v185 = sub_1C43FF640(v82);
          sub_1C44C9240(v185, v186, v187, v65);
          v65 = v188;
        }

        sub_1C4432F30();
        sub_1C4A948D8(v226, v84);
      }
    }

    sub_1C4D99FD8(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_endTime);
    if (v27)
    {
      sub_1C43FF988(v85);
      if (v86)
      {
        v87 = sub_1C4EFF0C8();
        sub_1C43FCE50(v87);
        v89 = *(v88 + 16);
        v90 = sub_1C4427000();
        v91(v90);
        v92 = sub_1C440EB74();
        (v38)(v92);
        v93 = sub_1C4406384();
        v94(v93);
        sub_1C440E3C8();
        sub_1C440D164();
        v95 = sub_1C44356B8();
        (v38)(v95);
        sub_1C44628C8(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_source);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44CD0D4();
        sub_1C44AE934(v96);
        sub_1C4485B10();
        sub_1C43FF9E4(v97);
        sub_1C440C1A0(v98);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v189 = *(v65 + 16);
          v190 = sub_1C43FCEC0();
          sub_1C44C9240(v190, v191, v192, v65);
          v65 = v193;
        }

        sub_1C4402054();
        v2 = v233;
        v48 = v232;
        if (v83)
        {
          v194 = sub_1C43FF640(v99);
          sub_1C44C9240(v194, v195, v196, v65);
          v65 = v197;
        }

        sub_1C4432F30();
        sub_1C4A948D8(v227, v100);
      }
    }

    sub_1C4D99FD8(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedEndTime);
    if (v27)
    {
      sub_1C43FF988(v101);
      if (v102)
      {
        v103 = sub_1C4EFF0C8();
        sub_1C43FCE50(v103);
        v105 = *(v104 + 16);
        v106 = sub_1C4427000();
        v107(v106);
        v108 = sub_1C440EB74();
        (v38)(v108);
        v109 = sub_1C4406384();
        v110(v109);
        sub_1C440E3C8();
        sub_1C440D164();
        v111 = sub_1C44356B8();
        (v38)(v111);
        sub_1C44628C8(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_source);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44CD0D4();
        sub_1C44AE934(v112);
        sub_1C4485B10();
        sub_1C43FF9E4(v113);
        sub_1C440C1A0(v114);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v198 = *(v65 + 16);
          v199 = sub_1C43FCEC0();
          sub_1C44C9240(v199, v200, v201, v65);
          v65 = v202;
        }

        sub_1C4402054();
        v2 = v233;
        v48 = v232;
        if (v83)
        {
          v203 = sub_1C43FF640(v115);
          sub_1C44C9240(v203, v204, v205, v65);
          v65 = v206;
        }

        sub_1C4432F30();
        sub_1C4A948D8(v228, v116);
      }
    }

    sub_1C4D99FD8(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_occurrenceDate);
    if (v27)
    {
      sub_1C43FF988(v117);
      if (v118)
      {
        v119 = sub_1C4EFF0C8();
        sub_1C43FCE50(v119);
        v121 = *(v120 + 16);
        v122 = sub_1C4427000();
        v123(v122);
        v124 = sub_1C440EB74();
        (v38)(v124);
        v125 = sub_1C4406384();
        v126(v125);
        sub_1C440E3C8();
        sub_1C440D164();
        v127 = sub_1C44356B8();
        (v38)(v127);
        sub_1C44628C8(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_source);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44CD0D4();
        sub_1C44AE934(v128);
        sub_1C4485B10();
        sub_1C43FF9E4(v129);
        sub_1C440C1A0(v130);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v207 = *(v65 + 16);
          v208 = sub_1C43FCEC0();
          sub_1C44C9240(v208, v209, v210, v65);
          v65 = v211;
        }

        sub_1C4402054();
        v2 = v233;
        v48 = v232;
        if (v83)
        {
          v212 = sub_1C43FF640(v131);
          sub_1C44C9240(v212, v213, v214, v65);
          v65 = v215;
        }

        sub_1C4432F30();
        sub_1C4A948D8(v229, v132);
      }
    }

    sub_1C4D99FD8(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedOccurrenceDate);
    if (v27)
    {
      sub_1C43FF988(v133);
      if (v134)
      {
        v135 = sub_1C4EFF0C8();
        sub_1C43FCE50(v135);
        v137 = *(v136 + 16);
        v138 = sub_1C4427000();
        v139(v138);
        v140 = sub_1C440EB74();
        (v38)(v140);
        v141 = sub_1C4406384();
        v142(v141);
        sub_1C440E3C8();
        sub_1C440D164();
        v143 = sub_1C44356B8();
        (v38)(v143);
        sub_1C44628C8(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_source);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44CD0D4();
        sub_1C44AE934(v144);
        sub_1C4485B10();
        sub_1C43FF9E4(v145);
        sub_1C440C1A0(v146);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v216 = *(v65 + 16);
          v217 = sub_1C43FCEC0();
          sub_1C44C9240(v217, v218, v219, v65);
          v65 = v220;
        }

        sub_1C4402054();
        v2 = v233;
        v48 = v232;
        if (v83)
        {
          v221 = sub_1C43FF640(v147);
          sub_1C44C9240(v221, v222, v223, v65);
          v65 = v224;
        }

        sub_1C4432F30();
        sub_1C4A948D8(v230, v148);
      }
    }

    if (*(v65 + 16))
    {
      v149 = sub_1C4EFF0C8();
      sub_1C43FCE50(v149);
      v151 = *(v150 + 16);
      sub_1C442F834();
      v152();
      (*(v48 + 16))(v231 + v237[5], v236, v238);
      v153 = v237[6];
      sub_1C4415E24();
      v155(v231 + v154, v2, v239);
      v156 = v231 + v237[7];
      sub_1C4EFEBB8();
      v157 = sub_1C4EFD2F8();
      v159 = v158;
      sub_1C449ED64(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_source, v231 + v237[9]);
      sub_1C4EF9AE8();
      v160 = (v231 + v237[8]);
      *v160 = v157;
      v160[1] = v159;
      sub_1C43FF9E4((v231 + v237[10]));
      *(v231 + v237[11]) = v161;
      *(v231 + v237[12]) = v235;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v168 = *(v65 + 16);
        v169 = sub_1C43FCEC0();
        sub_1C44C9240(v169, v170, v171, v65);
        v65 = v172;
      }

      sub_1C4402054();
      if (v83)
      {
        v173 = sub_1C43FF640(v162);
        sub_1C44C9240(v173, v174, v175, v65);
      }

      v163 = sub_1C444C48C();
      v164(v163);
      (*(v48 + 8))(v236, v238);
      sub_1C4432F30();
      sub_1C4A948D8(v231, v165);
    }

    else
    {
      v166 = sub_1C444C48C();
      v167(v166);
      (*(v48 + 8))(v236, v238);
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D939C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001C4FC7CA0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001ALL && 0x80000001C4FC7CE0 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000001C4FC7D00 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x80000001C4FC7CC0 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x656D6954646E65 && a2 == 0xE700000000000000;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000018 && 0x80000001C4FC7D20 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x4564657475706D69 && a2 == 0xEE00656D6954646ELL;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000018 && 0x80000001C4FC8970 == a2;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6E6572727563636FLL && a2 == 0xEE00657461446563;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD00000000000001FLL && 0x80000001C4FC89A0 == a2;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000015 && 0x80000001C4F99CE0 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_1C4F02938();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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
    }
  }
}

unint64_t sub_1C4D93E44(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6D69547472617473;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x656D6954646E65;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0x4564657475706D69;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0x6E6572727563636FLL;
      break;
    case 13:
      result = 0xD00000000000001FLL;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4D94024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D939C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D9404C(uint64_t a1)
{
  v2 = sub_1C4D98D80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D94088(uint64_t a1)
{
  v2 = sub_1C4D98D80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D940C4()
{
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_entityClass;
  v2 = sub_1C4EFD548();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_source);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_startTime_predicate;
  v5 = sub_1C4EFEEF8();
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 8);
  v7(v0 + v4, v5);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_startTime);
  v8 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedStartTime_predicate);
  (v7)(v8);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedStartTime);
  v9 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_endTime_predicate);
  (v7)(v9);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_endTime);
  v10 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedEndTime_predicate);
  (v7)(v10);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedEndTime);
  v11 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_occurrenceDate_predicate);
  (v7)(v11);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_occurrenceDate);
  v12 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedOccurrenceDate_predicate);
  (v7)(v12);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedOccurrenceDate);
  return v0;
}

void sub_1C4D94294()
{
  sub_1C4D889F8();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = type metadata accessor for Source();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_1C4EFEEF8();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1C4D943F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v24;
  a20 = v25;
  v26 = v20;
  v27 = sub_1C447E4C8();
  v28 = sub_1C43FCDF8(v27);
  v104 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD230();
  v103 = v37;
  v38 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v38);
  v40 = *(v39 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C440A474();
  v42 = sub_1C456902C(&qword_1EC0C7028, &qword_1C4F72098);
  sub_1C43FCDF8(v42);
  v44 = v43;
  v46 = *(v45 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C4422BD8();
  v49 = *(v20 + 24);
  v48 = *(v20 + 32);
  v50 = sub_1C442A90C();
  sub_1C4417F50(v50, v51);
  sub_1C4D98D80();
  sub_1C4F02BF8();
  v52 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_predicate;
  sub_1C44169A0();
  sub_1C47CBF50(v26 + v52, v22);
  sub_1C441AC10();
  sub_1C4D986F0(v53, v54);
  sub_1C4F02778();
  if (v21)
  {
    sub_1C446F170(v22, &qword_1EC0B9A08, &unk_1C4F107B0);
    (*(v44 + 8))(v23, v42);
  }

  else
  {
    v102 = v27;
    sub_1C446F170(v22, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C446257C(1);
    sub_1C4EFD548();
    sub_1C442DB0C();
    sub_1C4D986F0(v55, v56);
    sub_1C441F1D8();
    sub_1C4F027E8();
    sub_1C446257C(2);
    type metadata accessor for Source();
    sub_1C4420AB8();
    sub_1C4D986F0(v57, v58);
    sub_1C4F027E8();
    v59 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_startTime_predicate;
    sub_1C440D164();
    v60 = *(v104 + 16);
    v60(v103, v26 + v59, v102);
    sub_1C4F027E8();
    v101 = v60;
    v61 = *(v104 + 8);
    (v61)(v103, v102);
    v62 = *(v26 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_startTime);
    v63 = *(v26 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_startTime + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C444B44C();
    v65 = *(v64 - 256);
    sub_1C441F1D8();
    sub_1C4F02738();
    if (v62)
    {
      goto LABEL_6;
    }

    sub_1C440D164();
    v68 = sub_1C4428A58(&a13);
    v101(v68);
    sub_1C441D4FC();
    v70 = *(v69 - 256);
    sub_1C441F1D8();
    sub_1C4F027E8();
    sub_1C4459C44();
    v71();
    v72 = *(v26 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedStartTime);
    v73 = *(v26 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedStartTime + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C444B44C();
    v75 = *(v74 - 256);
    sub_1C441F1D8();
    sub_1C4F02738();
    if (v72)
    {
LABEL_6:
      sub_1C44434C0();
      v66 = sub_1C4418180();
    }

    else
    {

      sub_1C440D164();
      v76 = sub_1C4428A58(&a12);
      v101(v76);
      sub_1C441D4FC();
      v78 = *(v77 - 256);
      sub_1C441F1D8();
      sub_1C4F027E8();
      sub_1C4410EB4();
      v61();
      sub_1C440CE9C(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_endTime);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C444B44C();
      v80 = *(v79 - 256);
      sub_1C441F1D8();
      sub_1C4F02738();

      sub_1C440D164();
      v81 = sub_1C4428A58(&a11);
      v101(v81);
      sub_1C441F1D8();
      sub_1C4F027E8();
      (v61)(v26, v102);
      sub_1C440CE9C(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedEndTime);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C444B44C();
      v83 = *(v82 - 256);
      sub_1C441F1D8();
      sub_1C4F02738();

      sub_1C440D164();
      v84 = sub_1C44889F0(&a10);
      v85(v84);
      sub_1C441D4FC();
      v87 = *(v86 - 256);
      sub_1C441F1D8();
      sub_1C4F027E8();
      v88 = sub_1C445020C(&a10);
      v89(v88);
      sub_1C440CE9C(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_occurrenceDate);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C444B44C();
      v91 = *(v90 - 256);
      sub_1C441F1D8();
      sub_1C4F02738();

      v92 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedOccurrenceDate_predicate;
      sub_1C440D164();
      v93 = sub_1C44889F0(&a9);
      v94(v93);
      HIBYTE(a10) = 13;
      sub_1C441D4FC();
      v96 = *(v95 - 256);
      sub_1C441F1D8();
      sub_1C4F027E8();
      v97 = sub_1C445020C(&a9);
      v98(v97);
      sub_1C440CE9C(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedOccurrenceDate);
      HIBYTE(a10) = 14;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C444B44C();
      v100 = *(v99 - 256);
      sub_1C441F1D8();
      sub_1C4F02738();
      sub_1C44434C0();
      v66 = v92;
    }

    v67(v66);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D94D34()
{
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v1, v2, v3, v4);
  sub_1C4EFD168();
  v5 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_source;
  if (qword_1EDDFD150 != -1)
  {
    sub_1C44050D8();
    swift_once();
  }

  v6 = type metadata accessor for Source();
  v7 = sub_1C442B738(v6, qword_1EDDFD158);
  sub_1C449ED64(v7, v0 + v5);
  sub_1C4EFEEE8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_startTime);
  sub_1C4EFE7B8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedStartTime);
  sub_1C4EFECE8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_endTime);
  sub_1C4EFE668();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedEndTime);
  sub_1C4EFE698();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_occurrenceDate);
  sub_1C4EFEA38();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedOccurrenceDate);
  return v0;
}

void sub_1C4D94EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = sub_1C4EFEEF8();
  v27 = sub_1C43FCDF8(v26);
  v80 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD230();
  v82 = v36;
  v37 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v37);
  v39 = *(v38 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBC74();
  sub_1C4451268(v41);
  v85 = sub_1C456902C(&qword_1EC0C7080, &qword_1C4F720C8);
  sub_1C43FCDF8(v85);
  v43 = *(v42 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBC74();
  v81 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_predicate;
  sub_1C43FCF64();
  v84 = v26;
  sub_1C440BAA8(v45, v46, v47, v26);
  sub_1C4EFD168();
  v48 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_source;
  if (qword_1EDDFD150 != -1)
  {
    sub_1C44050D8();
    swift_once();
  }

  v49 = type metadata accessor for Source();
  v50 = sub_1C442B738(v49, qword_1EDDFD158);
  sub_1C449ED64(v50, v20 + v48);
  v79 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_startTime_predicate;
  sub_1C4EFEEE8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_startTime);
  sub_1C4EFE7B8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedStartTime);
  sub_1C4EFECE8();
  v51 = (v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_endTime);
  *v51 = 0;
  v51[1] = 0;
  sub_1C4EFE668();
  v52 = (v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedEndTime);
  *v52 = 0;
  v52[1] = 0;
  sub_1C4EFE698();
  v53 = (v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_occurrenceDate);
  *v53 = 0;
  v53[1] = 0;
  v54 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedOccurrenceDate_predicate;
  sub_1C4EFEA38();
  v55 = (v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedOccurrenceDate);
  *v55 = 0;
  v55[1] = 0;
  v56 = v25;
  v58 = v25[3];
  v57 = v25[4];
  v86 = v56;
  sub_1C4417F50(v56, v58);
  sub_1C4D98D80();
  sub_1C4F02BC8();
  if (v21)
  {
  }

  else
  {
    sub_1C441AC10();
    sub_1C4D986F0(v59, v60);
    sub_1C442F9C8();
    sub_1C4F02658();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C449A970(v83, v20 + v81);
    swift_endAccess();
    sub_1C4402064(3);
    sub_1C442F9C8();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v61 = *(v80 + 40);
    (v61)(v20 + v79, v82, v84);
    swift_endAccess();
    sub_1C441867C(4);
    v62 = sub_1C4F02618();
    sub_1C4425188(v62, v63);
    sub_1C4402064(5);
    sub_1C4440E9C();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C440EF00();
    v61();
    swift_endAccess();
    sub_1C441867C(6);
    v64 = sub_1C4F02618();
    sub_1C4425188(v64, v65);
    sub_1C4402064(7);
    sub_1C4440E9C();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C440EF00();
    v61();
    swift_endAccess();
    sub_1C441867C(8);
    v66 = sub_1C4F02618();
    sub_1C4418DB0(v66, v67, &a15);
    sub_1C4402064(9);
    sub_1C4440E9C();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C440EF00();
    v61();
    swift_endAccess();
    sub_1C441867C(10);
    v68 = sub_1C4F02618();
    sub_1C4418DB0(v68, v69, &a14);
    sub_1C4402064(11);
    sub_1C4440E9C();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4488298();
    v61();
    swift_endAccess();
    v70 = sub_1C44752FC(12);
    sub_1C4418DB0(v70, v71, &a13);
    sub_1C4402064(13);
    sub_1C4410EB4();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    (v61)(v20 + v54, v78, v84);
    swift_endAccess();
    v72 = sub_1C44752FC(14);
    v74 = v73;
    v75 = sub_1C4401D04();
    v76(v75, v85);
    v77 = v55[1];
    *v55 = v72;
    v55[1] = v74;
  }

  sub_1C440962C(v86);
  sub_1C440E3AC();
  sub_1C43FBC80();
}

uint64_t sub_1C4D956BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4D94E74(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4D95784(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t), uint64_t *a4)
{
  v10 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C440A474();
  v14 = *a1;
  v15 = *(v4 + *a1);
  if (v15)
  {
    v16 = MEMORY[0x1E69E7CC0];
    v28 = MEMORY[0x1E69E7CC0];
    v17 = a2(v15);
    if (v17)
    {
      v18 = v17;
      if (v17 < 1)
      {
        __break(1u);
        return;
      }

      v26 = v14;
      v27 = v4;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      for (i = 0; i != v18; ++i)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x1C6940F90](i, v15);
        }

        else
        {
          v20 = *(v15 + 8 * i + 32);
        }

        a3(v21);
        v22 = sub_1C4EFEEF8();
        sub_1C440BAA8(v5, 0, 1, v22);
        v23 = *a4;
        sub_1C43FCCA0();
        swift_beginAccess();
        sub_1C449A970(v5, v20 + v23);
        v24 = swift_endAccess();
        MEMORY[0x1C6940330](v24);
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C4F016D8();
        }

        sub_1C4F01748();
      }

      v16 = v28;

      v14 = v26;
      v4 = v27;
    }

    v25 = *(v4 + v14);
    *(v4 + v14) = v16;
  }
}

uint64_t sub_1C4D95950(void *a1, void (*a2)(uint64_t), uint64_t *a3)
{
  v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  result = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *(v3 + *a1);
  if (v14)
  {

    a2(v15);
    v16 = sub_1C4EFEEF8();
    sub_1C440BAA8(v13, 0, 1, v16);
    v17 = *a3;
    sub_1C4414918();
    swift_beginAccess();
    sub_1C449A970(v13, v14 + v17);
    swift_endAccess();
  }

  return result;
}

void sub_1C4D95A40()
{
  sub_1C43FE96C();
  v3 = v0;
  v5 = v4;
  sub_1C44D4078(v6);
  v7 = sub_1C4F00DD8();
  v8 = sub_1C44410E0(v7);
  v9 = sub_1C43FCDF8(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v12);
  v119 = sub_1C4F00DC8();
  v13 = sub_1C43FCDF8(v119);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD230();
  sub_1C43FD2C8(v17);
  v18 = sub_1C4F01188();
  v19 = sub_1C43FCDF8(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD2D8();
  sub_1C43FBE44();
  v128 = sub_1C4EFD548();
  v22 = sub_1C43FCDF8(v128);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C440D100();
  v27 = type metadata accessor for Source();
  v28 = sub_1C43FBCE0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  sub_1C43FD1B4();
  v31 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v31);
  v33 = *(v32 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBC74();
  v126 = v35;
  sub_1C43FBE44();
  v36 = sub_1C4EFF0C8();
  v37 = sub_1C43FCDF8(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD2D8();
  sub_1C444C200(v40);
  v120 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_predicate;
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v41, v42, v43, v44);
  v45 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_entityClass;
  sub_1C4EFCF28();
  v46 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_source;
  if (qword_1EDDFD150 != -1)
  {
    sub_1C44050D8();
    swift_once();
  }

  v47 = sub_1C442B738(v27, qword_1EDDFD158);
  sub_1C449ED64(v47, v3 + v46);
  sub_1C4EFEBF8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_name);
  sub_1C4EFEDC8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_isAllDay);
  sub_1C4EFEBD8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_url);
  sub_1C4EFE9E8();
  *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_virtualConferenceURL) = 0;
  *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasOrganizer) = 0;
  *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasAttendee) = 0;
  *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasLocationRelationship) = 0;
  *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_identifier) = 0;
  *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasDate) = 0;
  v123 = v46;
  sub_1C449ED64(v3 + v46, v1);
  v48 = sub_1C44019BC();
  v36(v48);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v49 = sub_1C4F00978();
  sub_1C442B738(v49, qword_1EDE2DE10);
  v50 = sub_1C440EBA4();
  v36(v50);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v51 = sub_1C4F00968();
  v52 = sub_1C4F01CB8();

  v124 = v45;
  if (os_log_type_enabled(v51, v52))
  {
    swift_slowAlloc();
    v127[0] = sub_1C4488A10();
    *v2 = 136381187;
    v53 = sub_1C441D828(v125, v5, v127);
    sub_1C4485F78(v53);
    sub_1C442DB0C();
    sub_1C4D986F0(v54, v55);
    sub_1C4D9A088();
    v56 = v5;
    v57 = sub_1C4F02858();
    v59 = v58;
    v60 = sub_1C4D9A034();
    v61(v60);
    sub_1C441D828(v57, v59, v127);
    v5 = v56;

    sub_1C4414088();
    sub_1C44579E8(&dword_1C43F8000, v62, v63, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C44753CC();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v64 = sub_1C4462134();
    v65(v64);
  }

  v66 = *v1;
  v67 = v1[1];
  v127[0] = v125;
  v127[1] = v5;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v68 = sub_1C4404084();
  MEMORY[0x1C6940010](v68);

  sub_1C4F01178();
  sub_1C442F9C8();
  v69 = sub_1C4F01148();
  v71 = v70;
  v72 = sub_1C44018C0();
  v73(v72);
  if (v71 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v74 = sub_1C4F00968();
    v75 = sub_1C4F01CD8();

    if (os_log_type_enabled(v74, v75))
    {
      swift_slowAlloc();
      v76 = sub_1C4415B1C();
      v127[0] = v76;
      *v71 = 136380675;
      v77 = sub_1C440BB4C();
      v80 = sub_1C441D828(v77, v78, v79);

      *(v71 + 4) = v80;
      sub_1C447CEB4(&dword_1C43F8000, v81, v82, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C440962C(v76);
      sub_1C4485E14();
      sub_1C43FBE2C();

      v83 = sub_1C44E7750();
    }

    else
    {

      sub_1C443E05C();
      v83 = v122;
      v84 = v128;
    }

    v94 = v121;
    v95 = (v121)(v83, v84);
    v96 = 1;
  }

  else
  {

    sub_1C44151FC();
    sub_1C4D986F0(v85, v86);
    sub_1C440BB4C();
    sub_1C4F00DB8();
    sub_1C44344B8(v69, v71);
    sub_1C4498FD8(v69, v71);
    sub_1C441DFEC(v69, v71);
    sub_1C440BB4C();
    sub_1C4F00DA8();
    v87 = sub_1C442A7C8();
    v88(v87);
    sub_1C446BD80();
    sub_1C4D9A0BC();
    v89();
    v90 = sub_1C4417C80();
    v91(v90);
    sub_1C4507BA8();
    sub_1C441DFEC(v125, v71);
    v92 = sub_1C4425810();
    v93(v92);
    sub_1C443E05C();
    v94 = v121;
    v95 = (v121)(v118, v128);
    v96 = 0;
  }

  sub_1C445886C(v95, v96);
  sub_1C4482D7C();
  if (v97)
  {
    sub_1C446F170(v126, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C45CF650();
    v98 = sub_1C43FFB2C();
    sub_1C4428F60(v98, v99);
    sub_1C446F170(v3 + v120, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C443E05C();
    v94(v124 + v3, v128);
    sub_1C448D818(v3 + v123);
    sub_1C4425820();
    v101 = *(v100 + 8);
    v103 = sub_1C443E068(v102);
    v101(v103);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_name);
    v104 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_isAllDay_predicate);
    v101(v104);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_isAllDay);
    v105 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_url_predicate);
    v101(v105);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_url);
    v106 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_virtualConferenceURL_predicate);
    v101(v106);
    v107 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_virtualConferenceURL);

    v108 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasOrganizer);

    v109 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasAttendee);

    v110 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasLocationRelationship);

    v111 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_identifier);

    v112 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasDate);

    sub_1C44417C4();
    v114 = *(v113 + 48);
    v115 = *(v113 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v116 = sub_1C4440EB0();
    v124(v116);
    v117 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_entityIdentifier);
    v124(v117);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4D96468(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x80000001C4FC8A00 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7961446C6C417369 && a2 == 0xE800000000000000;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x646572705F6C7275 && a2 == 0xED00006574616369;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 7107189 && a2 == 0xE300000000000000;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD00000000000001ELL && 0x80000001C4FC8A20 == a2;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000014 && 0x80000001C4FC8A40 == a2;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6E6167724F736168 && a2 == 0xEC00000072657A69;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6E65747441736168 && a2 == 0xEB00000000656564;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000017 && 0x80000001C4FC85A0 == a2;
                              if (v19 || (sub_1C4F02938() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
                                if (v20 || (sub_1C4F02938() & 1) != 0)
                                {

                                  return 15;
                                }

                                else if (a1 == 0x65746144736168 && a2 == 0xE700000000000000)
                                {

                                  return 16;
                                }

                                else
                                {
                                  v22 = sub_1C4F02938();

                                  if (v22)
                                  {
                                    return 16;
                                  }

                                  else
                                  {
                                    return 17;
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
        }
      }
    }
  }
}

unint64_t sub_1C4D96998(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x7961446C6C417369;
      break;
    case 8:
      result = 0x646572705F6C7275;
      break;
    case 9:
      result = 7107189;
      break;
    case 10:
      result = 0xD00000000000001ELL;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0x6E6167724F736168;
      break;
    case 13:
      result = 0x6E65747441736168;
      break;
    case 14:
      result = 0xD000000000000017;
      break;
    case 15:
      result = 0x696669746E656469;
      break;
    case 16:
      result = 0x65746144736168;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4D96B9C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4D96BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D96468(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D96C18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4D96990();
  *a1 = result;
  return result;
}

uint64_t sub_1C4D96C40(uint64_t a1)
{
  v2 = sub_1C4D98DD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D96C7C(uint64_t a1)
{
  v2 = sub_1C4D98DD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D96CB8()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_source);
  v7 = sub_1C4EFEEF8();
  sub_1C43FBCE0(v7);
  v9 = *(v8 + 8);
  v10 = sub_1C4460780();
  v9(v10);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_name);
  v11 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_isAllDay_predicate);
  v9(v11);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_isAllDay);
  v12 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_url_predicate);
  v9(v12);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_url);
  v13 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_virtualConferenceURL_predicate);
  v9(v13);
  v14 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_virtualConferenceURL);

  v15 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasOrganizer);

  v16 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasAttendee);

  v17 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasLocationRelationship);

  v18 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_identifier);

  v19 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasDate);

  return v0;
}

uint64_t sub_1C4D96E9C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

void sub_1C4D96F20()
{
  v0 = sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1C4D889F8();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      v4 = sub_1C4EFD548();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        v6 = type metadata accessor for Source();
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = sub_1C4EFEEF8();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1C4D970C4()
{
  sub_1C43FE96C();
  v73 = v0;
  v5 = sub_1C447E4C8();
  v70 = sub_1C43FCDF8(v5);
  v71 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v70);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  v69 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v66 - v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4410A24();
  v15 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v15);
  v17 = *(v16 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C440A474();
  v19 = sub_1C456902C(&qword_1EC0C7038, &unk_1C4F720A0);
  sub_1C43FCDF8(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FE94C();
  v25 = *(v0 + 24);
  v26 = *(v0 + 32);
  v27 = sub_1C4409A28();
  sub_1C4417F50(v27, v28);
  sub_1C4D98DD4();
  v29 = v19;
  v30 = v73;
  sub_1C4F02BF8();
  v79 = 0;
  sub_1C4EFF0C8();
  sub_1C440B914();
  sub_1C4D986F0(v31, v32);
  sub_1C4F027E8();
  if (v1)
  {
    (*(v21 + 8))(v4, v29);
  }

  else
  {
    v68 = v2;
    v67 = v13;
    v33 = v71;
    v72 = v21;
    v34 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_predicate;
    sub_1C44169A0();
    sub_1C47CBF50(v30 + v34, v3);
    v78 = 1;
    sub_1C441AC10();
    v37 = sub_1C4D986F0(v35, v36);
    v38 = v70;
    sub_1C4475550();
    sub_1C44107B4();
    sub_1C4F02778();
    v66[2] = v37;
    sub_1C446F170(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C446257C(2);
    sub_1C4EFD548();
    sub_1C442DB0C();
    sub_1C4D986F0(v39, v40);
    sub_1C4D99FE4();
    sub_1C446257C(3);
    type metadata accessor for Source();
    sub_1C4420AB8();
    sub_1C4D986F0(v41, v42);
    sub_1C4D99FE4();
    v44 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_name_predicate;
    sub_1C440D164();
    v45 = v30 + v44;
    v46 = v68;
    v47 = *(v33 + 16);
    v47(v68, v45, v38);
    v77 = 4;
    v66[1] = v29;
    sub_1C4D9A07C();
    sub_1C4F027E8();
    v66[0] = v47;
    v48 = v46;
    v49 = *(v33 + 8);
    v49(v48, v38);
    sub_1C44264DC(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_name);
    v77 = 5;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44107B4();
    sub_1C4F02738();
    v68 = v49;
    v71 = v33 + 8;

    sub_1C440D164();
    v50 = v67;
    sub_1C445A9FC();
    v51();
    sub_1C445BB9C();
    sub_1C4D9A07C();
    sub_1C44107B4();
    sub_1C4F027E8();
    v52 = v50;
    v53 = v68;
    v68(v52, v38);
    sub_1C44264DC(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_isAllDay);
    v76 = 7;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44107B4();
    sub_1C4F02738();

    sub_1C440D164();
    v54 = v69;
    sub_1C445A9FC();
    v55();
    v75 = 8;
    sub_1C4D9A07C();
    sub_1C44107B4();
    sub_1C4F027E8();
    v53(v54, v38);
    sub_1C44264DC(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_url);
    v75 = 9;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44107B4();
    sub_1C4F02738();

    sub_1C440D164();
    sub_1C445A9FC();
    v56();
    sub_1C43FE79C(10);
    sub_1C4D9A07C();
    sub_1C44107B4();
    sub_1C4F027E8();
    sub_1C440E3C8();
    v57();
    sub_1C44026F4(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_virtualConferenceURL);
    HIBYTE(v74) = 11;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443CFE8(&qword_1EDDFA578);
    sub_1C442C21C();
    sub_1C44026F4(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasOrganizer);
    HIBYTE(v74) = 12;
    type metadata accessor for EKEventStructs.ParticipationRelationshipType(0);
    sub_1C4422C4C();
    sub_1C4D986F0(v58, v59);
    sub_1C442C21C();
    sub_1C44026F4(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasAttendee);
    HIBYTE(v74) = 13;
    sub_1C456902C(&qword_1EC0C7048, &qword_1C4F720B0);
    sub_1C4D98E28();
    sub_1C442C21C();
    sub_1C44026F4(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasLocationRelationship);
    HIBYTE(v74) = 14;
    type metadata accessor for EKEventStructs.LocationRelationshipType(0);
    sub_1C440FFD4();
    sub_1C4D986F0(v60, v61);
    sub_1C442C21C();
    sub_1C44026F4(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_identifier);
    HIBYTE(v74) = 15;
    sub_1C456902C(&qword_1EC0C7058, &qword_1C4F720B8);
    sub_1C4D98EDC();
    sub_1C442C21C();
    sub_1C44026F4(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasDate);
    HIBYTE(v74) = 16;
    type metadata accessor for EKEventStructs.DateRelationshipType(0);
    sub_1C441B644();
    sub_1C4D986F0(v62, v63);
    sub_1C4414374();
    sub_1C44107B4();
    sub_1C4F02778();
    v64 = *(v72 + 8);
    v65 = sub_1C441E0A4();
    v43(v65);
  }

  sub_1C440E3AC();
  sub_1C43FBC80();
}

uint64_t sub_1C4D97A78(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  a2(a1);
  return v7;
}

void sub_1C4D97AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  a22 = v25;
  a23 = v26;
  v27 = v23;
  v29 = v28;
  v109 = *v27;
  v30 = sub_1C4EFEEF8();
  v31 = sub_1C43FCDF8(v30);
  v110 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD230();
  sub_1C444C200(v38);
  v39 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v39);
  v41 = *(v40 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBC74();
  v104 = v43;
  sub_1C43FBE44();
  v105 = sub_1C4EFF0C8();
  v44 = sub_1C43FCDF8(v105);
  v103 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FD2D8();
  v106 = sub_1C456902C(&qword_1EC0C7068, &qword_1C4F720C0);
  sub_1C43FCDF8(v106);
  v49 = *(v48 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBC74();
  v111 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_predicate;
  sub_1C43FCF64();
  sub_1C4D9A130(v51, v52, v53);
  v108 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_entityClass;
  sub_1C4EFCF28();
  v54 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_source;
  if (qword_1EDDFD150 != -1)
  {
    sub_1C44050D8();
    swift_once();
  }

  v55 = type metadata accessor for Source();
  v56 = sub_1C442B738(v55, qword_1EDDFD158);
  v107 = v54;
  sub_1C449ED64(v56, &v27[v54]);
  v102 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_name_predicate;
  sub_1C4EFEBF8();
  v57 = &v27[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_name];
  *v57 = 0;
  *(v57 + 1) = 0;
  sub_1C4EFEDC8();
  v58 = &v27[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_isAllDay];
  *v58 = 0;
  *(v58 + 1) = 0;
  sub_1C4EFEBD8();
  v59 = &v27[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_url];
  *v59 = 0;
  *(v59 + 1) = 0;
  sub_1C4EFE9E8();
  *&v27[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_virtualConferenceURL] = 0;
  *&v27[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasOrganizer] = 0;
  *&v27[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasAttendee] = 0;
  *&v27[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasLocationRelationship] = 0;
  *&v27[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_identifier] = 0;
  v113 = v27;
  *&v27[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasDate] = 0;
  v60 = v29[3];
  v61 = v29[4];
  v112 = v29;
  v62 = sub_1C4409A28();
  sub_1C4417F50(v62, v63);
  sub_1C4D98DD4();
  sub_1C4F02BC8();
  if (v24)
  {
    sub_1C446F170(&v113[v111], &qword_1EC0B9A08, &unk_1C4F107B0);
    v66 = sub_1C4EFD548();
    sub_1C43FD3F8(v66);
    (*(v67 + 8))(&v113[v108]);
    sub_1C448D818(&v113[v107]);
    v68 = *(v110 + 8);
    v68(&v113[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_name_predicate]);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_name);
    v68(&v113[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_isAllDay_predicate]);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_isAllDay);
    v68(&v113[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_url_predicate]);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_url);
    v68(&v113[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_virtualConferenceURL_predicate]);
    v69 = *&v113[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_virtualConferenceURL];

    v70 = *&v113[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasOrganizer];

    v71 = *&v113[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasAttendee];

    v72 = *&v113[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasLocationRelationship];

    v73 = *&v113[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_identifier];

    v74 = *&v113[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasDate];

    sub_1C44417C4();
    v76 = *(v75 + 48);
    v77 = *(v75 + 52);
    swift_deallocPartialClassInstance();
    v101 = v112;
  }

  else
  {
    sub_1C440B914();
    sub_1C4D986F0(v64, v65);
    sub_1C4F026C8();
    v78 = *(v103 + 32);
    v79 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_entityIdentifier);
    v80(v79);
    LOBYTE(v114) = 1;
    sub_1C441AC10();
    sub_1C4D986F0(v81, v82);
    sub_1C442565C();
    sub_1C4F02658();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C449A970(v104, &v113[v111]);
    swift_endAccess();
    sub_1C4402064(4);
    sub_1C442565C();
    sub_1C441BF88();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v83 = *(v110 + 40);
    v83(&v113[v102]);
    swift_endAccess();
    sub_1C4441360(5);
    sub_1C441BF88();
    v84 = sub_1C4F02618();
    sub_1C4418DB0(v84, v85, &a20);
    sub_1C4402064(6);
    sub_1C442565C();
    sub_1C441BF88();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v86 = sub_1C444C0C8();
    v83(v86);
    swift_endAccess();
    sub_1C4441360(7);
    sub_1C441BF88();
    v87 = sub_1C4F02618();
    sub_1C4425188(v87, v88);
    sub_1C4402064(8);
    sub_1C442565C();
    sub_1C441BF88();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v89 = sub_1C444C0C8();
    v83(v89);
    swift_endAccess();
    sub_1C4441360(9);
    sub_1C441BF88();
    v90 = sub_1C4F02618();
    sub_1C4418DB0(v90, v91, &a9);
    sub_1C4402064(10);
    sub_1C442565C();
    sub_1C441BF88();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v92 = sub_1C444C0C8();
    v83(v92);
    swift_endAccess();
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    a13 = 11;
    sub_1C443CFE8(&qword_1EDDFEA58);
    sub_1C441481C();
    sub_1C441BF88();
    sub_1C4F02658();
    sub_1C441E968(v114);

    type metadata accessor for EKEventStructs.ParticipationRelationshipType(0);
    a13 = 12;
    sub_1C4422C4C();
    sub_1C4D986F0(v93, v94);
    sub_1C441481C();
    sub_1C44554F0();
    sub_1C441E968(v114);

    sub_1C456902C(&qword_1EC0C7048, &qword_1C4F720B0);
    a13 = 13;
    sub_1C4D98F90();
    sub_1C441481C();
    sub_1C44554F0();
    sub_1C441E968(v114);

    type metadata accessor for EKEventStructs.LocationRelationshipType(0);
    a13 = 14;
    sub_1C440FFD4();
    sub_1C4D986F0(v95, v96);
    sub_1C441481C();
    sub_1C44554F0();
    sub_1C441E968(v114);

    sub_1C456902C(&qword_1EC0C7058, &qword_1C4F720B8);
    a13 = 15;
    sub_1C4D99044();
    sub_1C441481C();
    sub_1C44554F0();
    sub_1C441E968(v114);

    type metadata accessor for EKEventStructs.DateRelationshipType(0);
    a13 = 16;
    sub_1C441B644();
    sub_1C4D986F0(v97, v98);
    sub_1C441481C();
    sub_1C44BBF8C();
    sub_1C4F02658();
    v99 = sub_1C43FE5EC();
    v100(v99, v106);
    sub_1C4488620(v114);

    v101 = v29;
  }

  sub_1C440962C(v101);
  sub_1C43FBC80();
}

uint64_t sub_1C4D9861C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4D97A4C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4D9866C(uint64_t a1)
{
  *(a1 + 8) = sub_1C4D986F0(&qword_1EC0C6F38, type metadata accessor for EKEventStructs.CalendarEvent);
  result = sub_1C4D986F0(&qword_1EC0C6F40, type metadata accessor for EKEventStructs.CalendarEvent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D986F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4D98738(uint64_t a1)
{
  *(a1 + 8) = sub_1C4D986F0(&qword_1EC0C6F48, type metadata accessor for EKEventStructs.DateRelationshipType);
  result = sub_1C4D986F0(&qword_1EC0C6F50, type metadata accessor for EKEventStructs.DateRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D987BC(uint64_t a1)
{
  *(a1 + 8) = sub_1C4D986F0(&qword_1EC0C6F58, type metadata accessor for EKEventStructs.LocationRelationshipType);
  result = sub_1C4D986F0(&qword_1EC0C6F60, type metadata accessor for EKEventStructs.LocationRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D98840(uint64_t a1)
{
  *(a1 + 8) = sub_1C4D986F0(&qword_1EC0C6F68, type metadata accessor for EKEventStructs.Place);
  result = sub_1C4D986F0(&qword_1EC0C6F70, type metadata accessor for EKEventStructs.Place);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D988C4(uint64_t a1)
{
  *(a1 + 8) = sub_1C4D986F0(&qword_1EC0C6F78, type metadata accessor for EKEventStructs.IdentifierRelationshipType);
  result = sub_1C4D986F0(&qword_1EC0C6F80, type metadata accessor for EKEventStructs.IdentifierRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D98948(uint64_t a1)
{
  *(a1 + 8) = sub_1C4D986F0(&qword_1EC0C6F88, type metadata accessor for EKEventStructs.ParticipationRelationshipType);
  result = sub_1C4D986F0(&qword_1EC0C6F90, type metadata accessor for EKEventStructs.ParticipationRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D989CC(uint64_t a1)
{
  *(a1 + 8) = sub_1C4D986F0(&qword_1EC0C6F98, type metadata accessor for EKEventStructs.Person);
  result = sub_1C4D986F0(&qword_1EC0C6FA0, type metadata accessor for EKEventStructs.Person);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D98A50(uint64_t a1)
{
  *(a1 + 8) = sub_1C4D986F0(&qword_1EC0C6FA8, type metadata accessor for EKEventStructs.AddressRelationshipType);
  result = sub_1C4D986F0(&qword_1EC0C6FB0, type metadata accessor for EKEventStructs.AddressRelationshipType);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4D98AD4()
{
  result = qword_1EC0C6FC0;
  if (!qword_1EC0C6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6FC0);
  }

  return result;
}

unint64_t sub_1C4D98B28()
{
  result = qword_1EC0C6FD0;
  if (!qword_1EC0C6FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6FD0);
  }

  return result;
}

unint64_t sub_1C4D98B7C()
{
  result = qword_1EC0C6FE0;
  if (!qword_1EC0C6FE0)
  {
    sub_1C4572308(&qword_1EC0C6FD8, &qword_1C4F72070);
    sub_1C4D986F0(&qword_1EC0C6FB0, type metadata accessor for EKEventStructs.AddressRelationshipType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6FE0);
  }

  return result;
}

unint64_t sub_1C4D98C30()
{
  result = qword_1EC0C6FF0;
  if (!qword_1EC0C6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6FF0);
  }

  return result;
}

unint64_t sub_1C4D98C84()
{
  result = qword_1EC0C7000;
  if (!qword_1EC0C7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7000);
  }

  return result;
}

unint64_t sub_1C4D98CD8()
{
  result = qword_1EC0C7010;
  if (!qword_1EC0C7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7010);
  }

  return result;
}

unint64_t sub_1C4D98D2C()
{
  result = qword_1EC0C7020;
  if (!qword_1EC0C7020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7020);
  }

  return result;
}

unint64_t sub_1C4D98D80()
{
  result = qword_1EC0C7030;
  if (!qword_1EC0C7030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7030);
  }

  return result;
}

unint64_t sub_1C4D98DD4()
{
  result = qword_1EC0C7040;
  if (!qword_1EC0C7040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7040);
  }

  return result;
}

unint64_t sub_1C4D98E28()
{
  result = qword_1EC0C7050;
  if (!qword_1EC0C7050)
  {
    sub_1C4572308(&qword_1EC0C7048, &qword_1C4F720B0);
    sub_1C4D986F0(&qword_1EC0C6F90, type metadata accessor for EKEventStructs.ParticipationRelationshipType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7050);
  }

  return result;
}

unint64_t sub_1C4D98EDC()
{
  result = qword_1EC0C7060;
  if (!qword_1EC0C7060)
  {
    sub_1C4572308(&qword_1EC0C7058, &qword_1C4F720B8);
    sub_1C4D986F0(&qword_1EC0C6F80, type metadata accessor for EKEventStructs.IdentifierRelationshipType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7060);
  }

  return result;
}

unint64_t sub_1C4D98F90()
{
  result = qword_1EC0C7070;
  if (!qword_1EC0C7070)
  {
    sub_1C4572308(&qword_1EC0C7048, &qword_1C4F720B0);
    sub_1C4D986F0(&qword_1EC0C6F88, type metadata accessor for EKEventStructs.ParticipationRelationshipType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7070);
  }

  return result;
}

unint64_t sub_1C4D99044()
{
  result = qword_1EC0C7078;
  if (!qword_1EC0C7078)
  {
    sub_1C4572308(&qword_1EC0C7058, &qword_1C4F720B8);
    sub_1C4D986F0(&qword_1EC0C6F78, type metadata accessor for EKEventStructs.IdentifierRelationshipType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7078);
  }

  return result;
}

unint64_t sub_1C4D990F8()
{
  result = qword_1EC0C70B0;
  if (!qword_1EC0C70B0)
  {
    sub_1C4572308(&qword_1EC0C6FD8, &qword_1C4F72070);
    sub_1C4D986F0(&qword_1EC0C6FA8, type metadata accessor for EKEventStructs.AddressRelationshipType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C70B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EKEventStructs.CalendarEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EKEventStructs.CalendarEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EKEventStructs.DateRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C4D993FC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EKEventStructs.ParticipationRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EKEventStructs.Person.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C4D996A0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4D99780()
{
  result = qword_1EC0C70C0;
  if (!qword_1EC0C70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C70C0);
  }

  return result;
}

unint64_t sub_1C4D997D8()
{
  result = qword_1EC0C70C8;
  if (!qword_1EC0C70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C70C8);
  }

  return result;
}

unint64_t sub_1C4D99830()
{
  result = qword_1EC0C70D0;
  if (!qword_1EC0C70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C70D0);
  }

  return result;
}

unint64_t sub_1C4D99888()
{
  result = qword_1EC0C70D8;
  if (!qword_1EC0C70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C70D8);
  }

  return result;
}

unint64_t sub_1C4D998E0()
{
  result = qword_1EC0C70E0;
  if (!qword_1EC0C70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C70E0);
  }

  return result;
}

unint64_t sub_1C4D99938()
{
  result = qword_1EC0C70E8;
  if (!qword_1EC0C70E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C70E8);
  }

  return result;
}

unint64_t sub_1C4D99990()
{
  result = qword_1EC0C70F0;
  if (!qword_1EC0C70F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C70F0);
  }

  return result;
}

unint64_t sub_1C4D999E8()
{
  result = qword_1EC0C70F8;
  if (!qword_1EC0C70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C70F8);
  }

  return result;
}

unint64_t sub_1C4D99A40()
{
  result = qword_1EC0C7100;
  if (!qword_1EC0C7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7100);
  }

  return result;
}

unint64_t sub_1C4D99A98()
{
  result = qword_1EC0C7108;
  if (!qword_1EC0C7108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7108);
  }

  return result;
}

unint64_t sub_1C4D99AF0()
{
  result = qword_1EC0C7110;
  if (!qword_1EC0C7110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7110);
  }

  return result;
}

unint64_t sub_1C4D99B48()
{
  result = qword_1EC0C7118;
  if (!qword_1EC0C7118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7118);
  }

  return result;
}

unint64_t sub_1C4D99BA0()
{
  result = qword_1EC0C7120;
  if (!qword_1EC0C7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7120);
  }

  return result;
}

unint64_t sub_1C4D99BF8()
{
  result = qword_1EC0C7128;
  if (!qword_1EC0C7128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7128);
  }

  return result;
}

unint64_t sub_1C4D99C50()
{
  result = qword_1EC0C7130;
  if (!qword_1EC0C7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7130);
  }

  return result;
}

unint64_t sub_1C4D99CA8()
{
  result = qword_1EC0C7138;
  if (!qword_1EC0C7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7138);
  }

  return result;
}

unint64_t sub_1C4D99D00()
{
  result = qword_1EC0C7140;
  if (!qword_1EC0C7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7140);
  }

  return result;
}

unint64_t sub_1C4D99D58()
{
  result = qword_1EC0C7148;
  if (!qword_1EC0C7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7148);
  }

  return result;
}

unint64_t sub_1C4D99DB0()
{
  result = qword_1EC0C7150;
  if (!qword_1EC0C7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7150);
  }

  return result;
}

unint64_t sub_1C4D99E08()
{
  result = qword_1EC0C7158;
  if (!qword_1EC0C7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7158);
  }

  return result;
}

unint64_t sub_1C4D99E60()
{
  result = qword_1EC0C7160;
  if (!qword_1EC0C7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7160);
  }

  return result;
}

unint64_t sub_1C4D99EB8()
{
  result = qword_1EC0C7168;
  if (!qword_1EC0C7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7168);
  }

  return result;
}

unint64_t sub_1C4D99F10()
{
  result = qword_1EC0C7170;
  if (!qword_1EC0C7170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7170);
  }

  return result;
}

unint64_t sub_1C4D99F68()
{
  result = qword_1EC0C7178;
  if (!qword_1EC0C7178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7178);
  }

  return result;
}

uint64_t sub_1C4D99FC8@<X0>(void *a1@<X8>)
{
  result = *(v2 - 216);
  *a1 = *(v2 - 224);
  a1[1] = result;
  v4 = *(v1 + 44);
  return result;
}

uint64_t sub_1C4D99FE4()
{

  return sub_1C4F027E8();
}

uint64_t sub_1C4D9A00C()
{

  return sub_1C4F027E8();
}

uint64_t sub_1C4D9A034()
{
  result = v0;
  *(v1 - 208) = *(*(v1 - 112) + 8);
  return result;
}

uint64_t sub_1C4D9A04C()
{
  v2 = *(v0 - 160);

  return sub_1C4F02738();
}

uint64_t sub_1C4D9A09C()
{
  result = v0 + v1;
  v4 = *(v2 - 168);
  return result;
}

void sub_1C4D9A0DC()
{
  *(v5 - 72) = v1;
  *(v5 - 192) = v0;
  *(v5 - 184) = v3;
  *(v5 - 208) = v2;
  *(v5 - 200) = v4;
  *(v5 - 104) = 0;
}

uint64_t sub_1C4D9A0FC()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 296);
  return result;
}

uint64_t sub_1C4D9A110()
{
  *(v1 - 72) = v0;

  return sub_1C4EFEEF8();
}

uint64_t sub_1C4D9A130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 - 136) = v3;

  return sub_1C440BAA8(a1, a2, a3, v3);
}

void sub_1C4D9A148()
{
  sub_1C43FE96C();
  v1 = v0;
  v124 = v2;
  v4 = v3;
  v5 = sub_1C4F00DD8();
  v6 = sub_1C43FCDF8(v5);
  v115 = v7;
  v116 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD2D8();
  v113 = v10;
  sub_1C43FBE44();
  v11 = sub_1C4F00DC8();
  v12 = sub_1C43FCDF8(v11);
  v117 = v13;
  v118 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  v112 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD230();
  v114 = v18;
  sub_1C43FBE44();
  v19 = sub_1C4F01188();
  v20 = sub_1C43FCDF8(v19);
  v120 = v21;
  v121 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD2D8();
  v119 = v24;
  sub_1C43FBE44();
  v25 = sub_1C4EFD548();
  v26 = sub_1C43FCDF8(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBFDC();
  v109 = v31;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FD230();
  v34 = v33;
  sub_1C43FBE44();
  v35 = sub_1C4EFF0C8();
  v36 = sub_1C43FCDF8(v35);
  v110 = v37;
  v111 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FD230();
  v106 = v41;
  v42 = sub_1C43FBE44();
  v43 = type metadata accessor for FAFamilyStructs.GroupOfHumans(v42);
  v44 = v43[5];
  sub_1C4EFEEF8();
  v108 = v44;
  sub_1C43FCF64();
  sub_1C440BAA8(v45, v46, v47, v48);
  v49 = v43[6];
  sub_1C4EFCF48();
  v50 = v4;
  v51 = v4 + v43[7];
  if (qword_1EDDFED38 != -1)
  {
    sub_1C4432F50();
  }

  v52 = type metadata accessor for Source();
  sub_1C442B738(v52, qword_1EDDFD0F0);
  sub_1C441AC28();
  v127 = v51;
  sub_1C448D30C(v53, v51, v54);
  v55 = v43[8];
  type metadata accessor for FAFamilyStructs.IdentifierRelationshipType(0);
  v105 = v55;
  sub_1C43FCF64();
  sub_1C440BAA8(v56, v57, v58, v59);
  v60 = v43[9];
  type metadata accessor for FAFamilyStructs.GroupRelationshipType(0);
  v104 = v60;
  sub_1C43FCF64();
  sub_1C440BAA8(v61, v62, v63, v64);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v65 = sub_1C4F00978();
  sub_1C442B738(v65, qword_1EDE2DE10);
  v103 = *(v28 + 16);
  v103(v34, v50 + v49, v25);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v66 = sub_1C4F00968();
  v67 = sub_1C4F01CB8();

  v122 = v49;
  v123 = v25;
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    *v68 = 136381187;
    *(v68 + 4) = sub_1C441D828(v124, v1, &v125);
    *(v68 + 12) = 2080;
    sub_1C4420AD0();
    sub_1C44CD3A0(v69, v70);
    v71 = sub_1C4F02858();
    v72 = v25;
    v73 = v50;
    v75 = v74;
    v102 = *(v28 + 8);
    v102(v34, v72);
    v76 = sub_1C441D828(v71, v75, &v125);
    v50 = v73;

    *(v68 + 14) = v76;
    v77 = v124;
    *(v68 + 22) = 1024;
    *(v68 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v66, v67, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v68, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v102 = *(v28 + 8);
    v102(v34, v25);
    v77 = v124;
  }

  v78 = *v127;
  v79 = v127[1];
  v125 = v77;
  v126 = v1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v78, v79);

  v80 = v125;
  v81 = v126;
  sub_1C4F01178();
  sub_1C4F01148();
  v83 = v82;
  (*(v120 + 8))(v119, v121);
  if (v83 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v84 = sub_1C4F00968();
    v85 = sub_1C4F01CD8();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v125 = v87;
      *v86 = 136380675;
      v88 = sub_1C441D828(v80, v81, &v125);

      *(v86 + 4) = v88;
      _os_log_impl(&dword_1C43F8000, v84, v85, "Source: failed to encode identifier as UTF8 data: %{private}s", v86, 0xCu);
      sub_1C440962C(v87);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    sub_1C45CF650();
    sub_1C43FFB2C();
    sub_1C43FE7A8(v100, 5);
    sub_1C4420C3C(v50 + v108, &qword_1EC0B9A08, &unk_1C4F107B0);
    v102(v50 + v122, v123);
    sub_1C4409450();
    sub_1C4DA1E58(v127, v101);
    sub_1C4420C3C(v50 + v105, &qword_1EC0BD1B8, &unk_1C4F2D460);
    sub_1C4420C3C(v50 + v104, &qword_1EC0BD1B0, &unk_1C4F72950);
  }

  else
  {

    sub_1C440CEB0();
    sub_1C44CD3A0(v89, v90);
    sub_1C43FE99C();
    sub_1C4F00DB8();
    v91 = sub_1C4404044();
    sub_1C44344B8(v91, v92);
    v93 = sub_1C4404044();
    sub_1C4498FD8(v93, v94);
    v95 = sub_1C4404044();
    sub_1C441DFEC(v95, v96);
    sub_1C43FE99C();
    sub_1C4F00DA8();
    (*(v115 + 8))(v113, v116);
    v103(v109, v50 + v122, v123);
    (*(v117 + 16))(v112, v114, v118);
    sub_1C43FE99C();
    sub_1C4EFF028();
    v97 = sub_1C4404044();
    sub_1C441DFEC(v97, v98);
    (*(v117 + 8))(v114, v118);
    v99 = *(v110 + 32);
    v99(v106, v107, v111);
    v99(v50, v106, v111);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D9AA14(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C44042B0();
  v9 = *(type metadata accessor for FAFamilyStructs.GroupOfHumans(v8) + 32);
  sub_1C44D7768(a1, v2 + v9, &qword_1EC0BD1B8, &unk_1C4F2D460);
  v10 = type metadata accessor for FAFamilyStructs.IdentifierRelationshipType(0);
  if (sub_1C44157D4(v2 + v9, 1, v10))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BD1B8, &unk_1C4F2D460);
  }

  sub_1C4EFE308();
  sub_1C4420C3C(a1, &qword_1EC0BD1B8, &unk_1C4F2D460);
  v12 = sub_1C4EFEEF8();
  sub_1C440CBF4(v12);
  return sub_1C444088C(v1, v2 + v9, &qword_1EC0B9A08, &unk_1C4F107B0);
}

void sub_1C4D9AB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v160 = v20;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = sub_1C4F00DD8();
  v30 = sub_1C43FCDF8(v29);
  v161 = v31;
  v162 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FD2D8();
  v157 = v34;
  sub_1C43FBE44();
  v35 = sub_1C4F00DC8();
  v36 = sub_1C43FCDF8(v35);
  v163 = v37;
  v164 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBFDC();
  v156 = v40;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD230();
  v158 = v42;
  sub_1C43FBE44();
  v43 = sub_1C4F01188();
  v44 = sub_1C43FCDF8(v43);
  v166 = v45;
  v167 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FD2D8();
  v165 = v48;
  sub_1C43FBE44();
  v170 = sub_1C4EFD548();
  v49 = sub_1C43FCDF8(v170);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBFDC();
  v153 = v54;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v141 - v56;
  v58 = sub_1C4EFF0C8();
  v59 = sub_1C43FCDF8(v58);
  v154 = v60;
  v155 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBFDC();
  v151 = v63;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C43FD230();
  v150 = v65;
  v66 = sub_1C43FBE44();
  v67 = type metadata accessor for FAFamilyStructs.Person(v66);
  v68 = v67[5];
  v69 = sub_1C4EFEEF8();
  v152 = v68;
  sub_1C43FCF64();
  sub_1C440BAA8(v70, v71, v72, v69);
  v73 = v67[6];
  sub_1C4EFD4C8();
  v74 = (v28 + v67[7]);
  if (qword_1EDDFED38 != -1)
  {
    sub_1C4432F50();
  }

  v75 = type metadata accessor for Source();
  sub_1C442B738(v75, qword_1EDDFD0F0);
  sub_1C441AC28();
  sub_1C448D30C(v76, v74, v77);
  sub_1C442AA98(v67[8]);
  sub_1C4EFEE68();
  sub_1C4401738(v67[9]);
  sub_1C442AA98(v67[10]);
  sub_1C4EFE2C8();
  sub_1C4401738(v67[11]);
  sub_1C442AA98(v67[12]);
  sub_1C4EFEBF8();
  sub_1C4401738(v67[13]);
  sub_1C442AA98(v67[14]);
  sub_1C4EFEBA8();
  sub_1C4401738(v67[15]);
  sub_1C442AA98(v67[16]);
  sub_1C4EFE788();
  sub_1C4401738(v67[17]);
  sub_1C442AA98(v67[18]);
  sub_1C4EFE5D8();
  sub_1C4401738(v67[19]);
  sub_1C442AA98(v67[20]);
  sub_1C4EFEE18();
  sub_1C4401738(v67[21]);
  *(v28 + v67[22]) = 0;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v78 = sub_1C4F00978();
  v79 = sub_1C442B738(v78, qword_1EDE2DE10);
  v80 = *(v51 + 16);
  v168 = v73;
  v148 = v51 + 16;
  v147 = v80;
  v80(v57, v28 + v73, v170);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v145 = v79;
  v81 = sub_1C4F00968();
  v82 = sub_1C4F01CB8();

  v83 = os_log_type_enabled(v81, v82);
  v159 = v51;
  if (v83)
  {
    v84 = swift_slowAlloc();
    v149 = v26;
    v85 = v84;
    v86 = swift_slowAlloc();
    v144 = v74;
    v143 = v86;
    v169[0] = v86;
    *v85 = 136381187;
    *(v85 + 4) = sub_1C441D828(v149, v24, v169);
    *(v85 + 12) = 2080;
    sub_1C4420AD0();
    sub_1C44CD3A0(v87, v88);
    v142 = v82;
    v89 = v24;
    v90 = sub_1C4F02858();
    v91 = v69;
    v93 = v92;
    v146 = *(v51 + 8);
    v146(v57, v170);
    v94 = sub_1C441D828(v90, v93, v169);
    v69 = v91;
    v24 = v89;

    *(v85 + 14) = v94;
    *(v85 + 22) = 1024;
    *(v85 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v81, v142, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v85, 0x1Cu);
    swift_arrayDestroy();
    v74 = v144;
    sub_1C43FBE2C();
    v26 = v149;
    sub_1C43FBE2C();
  }

  else
  {

    v146 = *(v51 + 8);
    v146(v57, v170);
  }

  v95 = *v74;
  v96 = v74[1];
  v169[0] = v26;
  v169[1] = v24;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v95, v96);

  sub_1C4F01178();
  sub_1C4F01148();
  v98 = v97;
  v99 = sub_1C44018C0();
  v100(v99);
  if (v98 >> 60 == 15)
  {
    v101 = v74;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v102 = sub_1C4F00968();
    v103 = sub_1C4F01CD8();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v169[0] = v105;
      *v104 = 136380675;
      v106 = sub_1C43FE99C();
      v109 = sub_1C441D828(v106, v107, v108);

      *(v104 + 4) = v109;
      _os_log_impl(&dword_1C43F8000, v102, v103, "Source: failed to encode identifier as UTF8 data: %{private}s", v104, 0xCu);
      sub_1C440962C(v105);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    sub_1C45CF650();
    sub_1C43FFB2C();
    sub_1C43FE7A8(v131, 5);
    sub_1C4420C3C(v28 + v152, &qword_1EC0B9A08, &unk_1C4F107B0);
    v146((v28 + v168), v170);
    sub_1C4409450();
    sub_1C4DA1E58(v101, v132);
    v133 = *(*(v69 - 8) + 8);
    v134 = sub_1C4401918(&a18);
    v133(v134);
    v135 = sub_1C4401918(&a16);
    v133(v135);
    v136 = sub_1C4401918(&a15);
    v133(v136);
    v137 = sub_1C4401918(&a14);
    v133(v137);
    v138 = sub_1C4401918(&a13);
    v133(v138);
    v139 = sub_1C4401918(&a12);
    v133(v139);
    v140 = sub_1C4401918(&a11);
    v133(v140);
  }

  else
  {

    sub_1C440CEB0();
    sub_1C44CD3A0(v110, v111);
    sub_1C43FE99C();
    sub_1C4F00DB8();
    v112 = sub_1C43FD018();
    sub_1C44344B8(v112, v113);
    v114 = sub_1C43FD018();
    v115 = v160;
    sub_1C4498FD8(v114, v116);
    v167 = v115;
    v117 = sub_1C43FD018();
    sub_1C441DFEC(v117, v118);
    v119 = v158;
    sub_1C43FE99C();
    sub_1C4F00DA8();
    v120 = *(v161 + 8);
    v121 = sub_1C440CAF0();
    v122(v121);
    v147(v153, v28 + v168, v170);
    v124 = v163;
    v123 = v164;
    (*(v163 + 16))(v156, v119, v164);
    v125 = v151;
    sub_1C440CAF0();
    sub_1C4EFF028();
    v126 = sub_1C43FD018();
    sub_1C441DFEC(v126, v127);
    (*(v124 + 8))(v119, v123);
    v128 = v155;
    v129 = *(v154 + 32);
    v130 = v150;
    v129(v150, v125, v155);
    v129(v28, v130, v128);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D9B4D8(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C44042B0();
  v9 = *(type metadata accessor for FAFamilyStructs.GroupOfHumans(v8) + 36);
  sub_1C44D7768(a1, v2 + v9, &qword_1EC0BD1B0, &unk_1C4F72950);
  v10 = type metadata accessor for FAFamilyStructs.GroupRelationshipType(0);
  if (sub_1C44157D4(v2 + v9, 1, v10))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BD1B0, &unk_1C4F72950);
  }

  sub_1C4EFEAB8();
  sub_1C4420C3C(a1, &qword_1EC0BD1B0, &unk_1C4F72950);
  v12 = sub_1C4EFEEF8();
  sub_1C440CBF4(v12);
  return sub_1C444088C(v1, v2 + v9, &qword_1EC0B9A08, &unk_1C4F107B0);
}

void sub_1C4D9B5E4()
{
  sub_1C43FE628();
  v85 = v1;
  v86 = v3;
  v4 = v0;
  v6 = v5;
  v87 = v7;
  v8 = type metadata accessor for EntityTriple(0);
  v81[0] = sub_1C43FCDF8(v8);
  v81[1] = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v81[0]);
  sub_1C43FD2D8();
  v83 = v12;
  v13 = sub_1C456902C(&qword_1EC0BD1B0, &unk_1C4F72950);
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1C4428F80();
  v18 = sub_1C43FBCE0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD2D8();
  v82 = v21;
  v22 = sub_1C456902C(&qword_1EC0BD1B8, &unk_1C4F2D460);
  sub_1C43FBD18(v22);
  v24 = *(v23 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v81 - v26;
  v28 = type metadata accessor for FAFamilyStructs.IdentifierRelationshipType(0);
  v29 = sub_1C43FBCE0(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBCC4();
  v34 = v33 - v32;
  v35 = *v6;
  v90 = MEMORY[0x1E69E7CC0];
  v84 = type metadata accessor for FAFamilyStructs.GroupOfHumans(0);
  sub_1C445FFA8(v4 + v84[8], v27, &qword_1EC0BD1B8, &unk_1C4F2D460);
  if (sub_1C44157D4(v27, 1, v28) == 1)
  {
    sub_1C4420C3C(v27, &qword_1EC0BD1B8, &unk_1C4F2D460);
    v36 = v85;
    v37 = v86;
  }

  else
  {
    sub_1C44DD8B0(v27, v34, type metadata accessor for FAFamilyStructs.IdentifierRelationshipType);
    v88 = v35;
    sub_1C4435D90();
    v37 = v86;
    v38 = v85;
    sub_1C4D9C330();
    v36 = v38;
    if (v38)
    {
      sub_1C441F1E8();
      sub_1C4DA1E58(v34, v40);
      goto LABEL_17;
    }

    sub_1C49D3614(v39);
    sub_1C441F1E8();
    sub_1C4DA1E58(v34, v41);
  }

  sub_1C445FFA8(v4 + v84[9], v2, &qword_1EC0BD1B0, &unk_1C4F72950);
  if (sub_1C44157D4(v2, 1, v17) == 1)
  {
    sub_1C4420C3C(v2, &qword_1EC0BD1B0, &unk_1C4F72950);
  }

  else
  {
    v42 = v82;
    sub_1C44DD8B0(v2, v82, type metadata accessor for FAFamilyStructs.GroupRelationshipType);
    v89 = v35;
    sub_1C4D9FE44();
    if (v36)
    {
      sub_1C4404990();
      sub_1C4DA1E58(v42, v44);

      goto LABEL_17;
    }

    sub_1C49D3614(v43);
    sub_1C4404990();
    sub_1C4DA1E58(v42, v45);
  }

  v46 = v90;
  v47 = v83;
  if (*(v90 + 16))
  {
    v48 = sub_1C4EFF0C8();
    sub_1C43FCE50(v48);
    (*(v49 + 16))(v47, v4);
    v50 = v81[0];
    v51 = v47 + *(v81[0] + 20);
    sub_1C4EFEBB8();
    v52 = v84;
    v53 = v84[6];
    LODWORD(v86) = v35;
    v54 = sub_1C4EFD2F8();
    v56 = v55;
    v57 = v52[7];
    v58 = v50[9];
    sub_1C441AC28();
    sub_1C448D30C(v4 + v59, v47 + v60, v61);
    sub_1C4EF9AE8();
    v63 = v62;
    v64 = v47 + v50[6];
    sub_1C4EFF888();
    v65 = v47 + v50[7];
    sub_1C4EFEC38();
    v66 = (v47 + v50[8]);
    *v66 = v54;
    v66[1] = v56;
    v67 = (v47 + v50[10]);
    *v67 = v87;
    v67[1] = v37;
    *(v47 + v50[11]) = v63;
    *(v47 + v50[12]) = v86;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v74 = *(v46 + 16);
      v75 = sub_1C43FCEC0();
      sub_1C44C9240(v75, v76, v77, v46);
      v46 = v78;
    }

    v69 = *(v46 + 16);
    v68 = *(v46 + 24);
    if (v69 >= v68 >> 1)
    {
      v79 = sub_1C43FCFE8(v68);
      sub_1C44C9240(v79, v69 + 1, 1, v46);
      v46 = v80;
    }

    *(v46 + 16) = v69 + 1;
    sub_1C43FCC58();
    v71 = *(v70 + 72);
    sub_1C440838C();
    sub_1C44DD8B0(v47, v72, v73);
  }

LABEL_17:
  sub_1C44109F8();
}

unint64_t sub_1C4D9BAF8(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 6:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4D9BBDC()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  v1 = sub_1C456902C(&qword_1EC0C7220, &qword_1C4F72C48);
  sub_1C43FCDF8(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4DA2800();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB24();
  sub_1C44CD3A0(v7, v8);
  sub_1C4433AB4();
  sub_1C4F02778();
  if (!v0)
  {
    v20 = type metadata accessor for FAFamilyStructs.IdentifierRelationshipType(0);
    v9 = v20[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420AD0();
    sub_1C44CD3A0(v10, v11);
    sub_1C443F014();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v12 = v20[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C4412A64();
    sub_1C44CD3A0(v13, v14);
    sub_1C443F014();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v15 = v20[7];
    sub_1C4433AB4();
    sub_1C4F027E8();
    sub_1C4404338(v20[8]);
    sub_1C4402150();
    sub_1C4F02738();
    v16 = v20[9];
    sub_1C4433AB4();
    sub_1C4F027E8();
    sub_1C4404338(v20[10]);
    sub_1C4402150();
    sub_1C4F02738();
  }

  v17 = *(v3 + 8);
  v18 = sub_1C43FD024();
  v19(v18);
  sub_1C43FBC80();
}

void sub_1C4D9BE54()
{
  sub_1C43FE96C();
  v5 = sub_1C4495DCC(v4);
  v6 = sub_1C43FCDF8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD230();
  v10 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBC74();
  v14 = sub_1C456902C(&qword_1EC0C7210, &qword_1C4F72C40);
  v52 = sub_1C43FCDF8(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBC74();
  v18 = sub_1C43FBE44();
  v19 = type metadata accessor for FAFamilyStructs.IdentifierRelationshipType(v18);
  v20 = sub_1C43FBCE0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C43FCF64();
  sub_1C440BAA8(v23, v24, v25, v5);
  v26 = v1 + v19[5];
  sub_1C4EFD258();
  v27 = v19[6];
  if (qword_1EDDFED38 != -1)
  {
    sub_1C4432F50();
  }

  v28 = type metadata accessor for Source();
  sub_1C442B738(v28, qword_1EDDFD0F0);
  sub_1C441AC28();
  sub_1C448D30C(v29, v1 + v27, v30);
  v31 = v19[7];
  sub_1C4EFE558();
  sub_1C447CCF8();
  sub_1C4EFE658();
  sub_1C4495330();
  sub_1C4DA2800();
  sub_1C44BBD38();
  if (v0)
  {
    v48 = v2;
  }

  else
  {
    sub_1C4460C1C();
    sub_1C442DB24();
    sub_1C44CD3A0(v32, v33);
    sub_1C44147D8();
    sub_1C4F02658();
    v34 = sub_1C440CAF0();
    sub_1C444088C(v34, v35, v36, v37);
    sub_1C44147D8();
    sub_1C4F026C8();
    v38 = sub_1C4440B50();
    v3(v38);
    sub_1C43FE664();
    *v50 = sub_1C4F02618();
    v50[1] = v39;
    sub_1C44147D8();
    sub_1C43FE664();
    sub_1C4F026C8();
    v40 = sub_1C445C08C();
    v41(v40);
    sub_1C43FE664();
    v43 = sub_1C4F02618();
    v45 = v44;
    v46 = sub_1C44343CC();
    v47(v46, v52);
    *v49 = v43;
    v49[1] = v45;
    sub_1C448D30C(v1, v51, type metadata accessor for FAFamilyStructs.IdentifierRelationshipType);
    v48 = v53;
  }

  sub_1C440962C(v48);
  sub_1C441F1E8();
  sub_1C4DA1E58(v1, v42);
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4D9C25C(uint64_t a1)
{
  v2 = sub_1C4DA2800();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D9C298(uint64_t a1)
{
  v2 = sub_1C4DA2800();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D9C330()
{
  sub_1C43FE96C();
  v141 = v3;
  v143 = v2;
  v4 = v0;
  v147 = v5;
  v145 = v6;
  v146 = v7;
  v144 = type metadata accessor for EntityTriple(0);
  v8 = sub_1C43FCDF8(v144);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v138 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  v137 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  v136 = v15;
  sub_1C43FBE44();
  v139 = sub_1C4EFD548();
  v16 = sub_1C43FCDF8(v139);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v23 = v22 - v21;
  v150 = sub_1C4EFF8A8();
  v24 = sub_1C43FCDF8(v150);
  v149 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v30 = v29 - v28;
  v31 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v31);
  v33 = *(v32 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C441B2EC();
  v35 = sub_1C4EFEEF8();
  v36 = sub_1C43FCDF8(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBCC4();
  v43 = v42 - v41;
  v148 = *v147;
  v45 = v44;
  sub_1C445FFA8(v4, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
  if (sub_1C44157D4(v1, 1, v45) == 1)
  {
    sub_1C4420C3C(v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    sub_1C43FFB2C();
    sub_1C43FE7A8(v46, 2);
  }

  else
  {
    (*(v38 + 32))(v43, v1, v45);
    v47 = v141(0);
    (*(v18 + 16))(v23, v4 + *(v47 + 20), v139);
    sub_1C4EFF838();
    v140 = v4;
    v142 = v47;
    v48 = (v4 + *(v47 + 32));
    v49 = v48[1];
    v50 = v30;
    v135 = v30;
    v51 = v38;
    if (!v49)
    {
      goto LABEL_10;
    }

    v52 = *v48;
    v53 = HIBYTE(v49) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v53 = v52 & 0xFFFFFFFFFFFFLL;
    }

    if (v53)
    {
      v54 = sub_1C4EFF0C8();
      sub_1C43FCE50(v54);
      (*(v55 + 16))(v136, v143);
      v56 = *(v38 + 16);
      v56(v136 + v144[5], v43, v45);
      (*(v149 + 16))(v136 + v144[6], v50, v150);
      v56(v136 + v144[7], v4 + v142[7], v45);
      v57 = v142[6];
      v58 = v144[9];
      sub_1C441AC28();
      sub_1C448D30C(v4 + v59, v136 + v60, v61);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v62 = (v136 + v144[8]);
      *v62 = v52;
      v62[1] = v49;
      v63 = (v136 + v144[10]);
      *v63 = v145;
      v63[1] = v146;
      *(v136 + v144[11]) = v64;
      *(v136 + v144[12]) = v148;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44C9240(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v66 = v65;
      v68 = *(v65 + 16);
      v67 = *(v65 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_1C44C9240(v67 > 1, v68 + 1, 1, v65);
        v66 = v128;
      }

      *(v66 + 16) = v68 + 1;
      sub_1C43FBF6C();
      v70 = *(v69 + 72);
      sub_1C440838C();
      sub_1C44DD8B0(v136, v71, v72);
      v50 = v135;
    }

    else
    {
LABEL_10:
      v66 = MEMORY[0x1E69E7CC0];
    }

    v73 = (v4 + v142[10]);
    v74 = v73[1];
    if (!v74)
    {
      goto LABEL_20;
    }

    v75 = *v73;
    v76 = HIBYTE(v74) & 0xF;
    if ((v74 & 0x2000000000000000) == 0)
    {
      v76 = v75 & 0xFFFFFFFFFFFFLL;
    }

    if (v76)
    {
      v77 = sub_1C4EFF0C8();
      sub_1C43FCE50(v77);
      (*(v78 + 16))(v137, v143);
      v79 = *(v51 + 16);
      v79(v137 + v144[5]);
      (*(v149 + 16))(v137 + v144[6], v50, v150);
      (v79)(v137 + v144[7], v140 + v142[9], v45);
      v4 = v140;
      v80 = v142[6];
      v81 = v144[9];
      sub_1C441AC28();
      sub_1C448D30C(v140 + v82, v137 + v83, v84);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v85 = (v137 + v144[8]);
      *v85 = v75;
      v85[1] = v74;
      v86 = (v137 + v144[10]);
      *v86 = v145;
      v86[1] = v146;
      *(v137 + v144[11]) = v87;
      *(v137 + v144[12]) = v148;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v129 = *(v66 + 16);
        v130 = sub_1C43FCEC0();
        sub_1C44C9240(v130, v131, v132, v66);
        v66 = v133;
      }

      v89 = *(v66 + 16);
      v88 = *(v66 + 24);
      v90 = v138;
      if (v89 >= v88 >> 1)
      {
        sub_1C44C9240(v88 > 1, v89 + 1, 1, v66);
        v66 = v134;
      }

      *(v66 + 16) = v89 + 1;
      sub_1C43FBF6C();
      v92 = *(v91 + 72);
      sub_1C440838C();
      sub_1C44DD8B0(v137, v93, v94);
      v50 = v135;
    }

    else
    {
LABEL_20:
      v90 = v138;
    }

    if (*(v66 + 16))
    {
      v95 = sub_1C4EFF0C8();
      sub_1C43FCE50(v95);
      (*(v96 + 16))(v90, v143);
      v97 = v43;
      (*(v51 + 16))(v90 + v144[5], v43, v45);
      (*(v149 + 16))(v90 + v144[6], v50, v150);
      v98 = v90 + v144[7];
      sub_1C4EFEBB8();
      v99 = sub_1C4EFD2F8();
      v101 = v100;
      v102 = v142[6];
      v103 = v144[9];
      sub_1C441AC28();
      sub_1C448D30C(v4 + v104, v90 + v105, v106);
      sub_1C4EF9AE8();
      v107 = (v90 + v144[8]);
      *v107 = v99;
      v107[1] = v101;
      v108 = (v90 + v144[10]);
      *v108 = v145;
      v108[1] = v146;
      *(v90 + v144[11]) = v109;
      *(v90 + v144[12]) = v148;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v119 = *(v66 + 16);
        v120 = sub_1C43FCEC0();
        sub_1C44C9240(v120, v121, v122, v66);
        v66 = v123;
      }

      v110 = *(v66 + 16);
      if (v110 >= *(v66 + 24) >> 1)
      {
        sub_1C4460700();
        sub_1C44C9240(v124, v125, v126, v66);
        v66 = v127;
      }

      v111 = sub_1C43FEBB4();
      v112(v111);
      (*(v51 + 8))(v97, v45);
      *(v66 + 16) = v110 + 1;
      sub_1C43FBF6C();
      v114 = *(v113 + 72);
      sub_1C440838C();
      sub_1C44DD8B0(v90, v115, v116);
    }

    else
    {
      v117 = sub_1C43FEBB4();
      v118(v117);
      (*(v51 + 8))(v43, v45);
    }
  }

  sub_1C43FBC80();
}

unint64_t sub_1C4D9CBCC(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x6464416C69616D65;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x6D754E656E6F6870;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4D9CCBC()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  v1 = sub_1C456902C(&qword_1EC0C71F0, &qword_1C4F72C28);
  sub_1C43FCDF8(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4DA2758();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB24();
  sub_1C44CD3A0(v7, v8);
  sub_1C4433AB4();
  sub_1C4F02778();
  if (!v0)
  {
    v20 = type metadata accessor for FAFamilyStructs.AddressRelationshipType(0);
    v9 = v20[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420AD0();
    sub_1C44CD3A0(v10, v11);
    sub_1C443F014();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v12 = v20[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C4412A64();
    sub_1C44CD3A0(v13, v14);
    sub_1C443F014();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v15 = v20[7];
    sub_1C4433AB4();
    sub_1C4F027E8();
    sub_1C4404338(v20[8]);
    sub_1C4402150();
    sub_1C4F02738();
    v16 = v20[9];
    sub_1C4433AB4();
    sub_1C4F027E8();
    sub_1C4404338(v20[10]);
    sub_1C4402150();
    sub_1C4F02738();
  }

  v17 = *(v3 + 8);
  v18 = sub_1C43FD024();
  v19(v18);
  sub_1C43FBC80();
}

void sub_1C4D9CF34()
{
  sub_1C43FE96C();
  v5 = sub_1C4495DCC(v4);
  v6 = sub_1C43FCDF8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD230();
  v10 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBC74();
  v14 = sub_1C456902C(&qword_1EC0C71E0, &qword_1C4F72C20);
  v53 = sub_1C43FCDF8(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBC74();
  v18 = sub_1C43FBE44();
  v19 = type metadata accessor for FAFamilyStructs.AddressRelationshipType(v18);
  v20 = sub_1C43FBCE0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C43FCF64();
  sub_1C440BAA8(v23, v24, v25, v5);
  v26 = v1 + v19[5];
  sub_1C4EFD1D8();
  v27 = v19[6];
  if (qword_1EDDFED38 != -1)
  {
    sub_1C4432F50();
  }

  v28 = type metadata accessor for Source();
  sub_1C442B738(v28, qword_1EDDFD0F0);
  sub_1C441AC28();
  sub_1C448D30C(v29, v1 + v27, v30);
  v31 = v19[7];
  sub_1C4EFE518();
  sub_1C447CCF8();
  sub_1C4EFE478();
  sub_1C4495330();
  sub_1C4DA2758();
  sub_1C44BBD38();
  if (v0)
  {
    v49 = v2;
  }

  else
  {
    sub_1C4460C1C();
    sub_1C442DB24();
    sub_1C44CD3A0(v32, v33);
    sub_1C44147D8();
    sub_1C4F02658();
    v34 = sub_1C440CAF0();
    sub_1C444088C(v34, v35, v36, v37);
    sub_1C44147D8();
    sub_1C4F026C8();
    v38 = sub_1C4440B50();
    v3(v38);
    sub_1C43FE664();
    *v51 = sub_1C4F02618();
    v51[1] = v39;
    sub_1C44147D8();
    sub_1C43FE664();
    sub_1C4F026C8();
    v40 = sub_1C445C08C();
    v41(v40);
    sub_1C43FE664();
    v43 = sub_1C4F02618();
    v45 = v44;
    v46 = sub_1C44343CC();
    v47(v46, v53);
    *v50 = v43;
    v50[1] = v45;
    sub_1C442EE90();
    sub_1C448D30C(v1, v52, v48);
    v49 = v54;
  }

  sub_1C440962C(v49);
  sub_1C440EBD0();
  sub_1C4DA1E58(v1, v42);
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4D9D314(uint64_t a1)
{
  v2 = sub_1C4DA2758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D9D350(uint64_t a1)
{
  v2 = sub_1C4DA2758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D9D3E8()
{
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for FAFamilyStructs.AddressRelationshipType(v6);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C43FBD08();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v34 - v14;
  v16 = *(type metadata accessor for FAFamilyStructs.Person(0) + 88);
  result = *(v1 + v16);
  if (result)
  {
    v18 = *(result + 16);
    if (v18)
    {
      v35 = v16;
      v36 = v1;
      v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v34[1] = result;
      v20 = result + v19;
      v21 = *(v8 + 72);
      v22 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C448D30C(v20, v15, type metadata accessor for FAFamilyStructs.AddressRelationshipType);
        sub_1C4EFEA18();
        v23 = sub_1C4EFEEF8();
        sub_1C440CBF4(v23);
        sub_1C444088C(v0, v15, &qword_1EC0B9A08, &unk_1C4F107B0);
        sub_1C448D30C(v15, v12, type metadata accessor for FAFamilyStructs.AddressRelationshipType);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = *(v22 + 16);
          v28 = sub_1C43FCEC0();
          sub_1C458D4BC(v28, v29, v30, v22);
          v22 = v31;
        }

        v25 = *(v22 + 16);
        v24 = *(v22 + 24);
        if (v25 >= v24 >> 1)
        {
          v32 = sub_1C43FCFE8(v24);
          sub_1C458D4BC(v32, v25 + 1, 1, v22);
          v22 = v33;
        }

        *(v22 + 16) = v25 + 1;
        sub_1C44DD8B0(v12, v22 + v19 + v25 * v21, type metadata accessor for FAFamilyStructs.AddressRelationshipType);
        sub_1C440EBD0();
        sub_1C4DA1E58(v15, v26);
        v20 += v21;
        --v18;
      }

      while (v18);

      v16 = v35;
      v1 = v36;
    }

    else
    {

      v22 = MEMORY[0x1E69E7CC0];
    }

    *(v1 + v16) = v22;
  }

  return result;
}

void sub_1C4D9D644()
{
  sub_1C43FE628();
  v5 = v2;
  v6 = v1;
  v8 = v7;
  v334 = v9;
  v335 = v10;
  v11 = type metadata accessor for FAFamilyStructs.AddressRelationshipType(0);
  v330 = *(v11 - 8);
  v12 = *(v330 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1C43FD2D8();
  v331 = v13;
  v14 = sub_1C43FBE44();
  v15 = type metadata accessor for EntityTriple(v14);
  v327 = sub_1C43FCDF8(v15);
  v328 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v327);
  sub_1C43FBD08();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  v329 = v23;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  v323 = v25;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  v322 = v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  v321 = v29;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  v320 = v31;
  sub_1C43FD1D0();
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v319 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v319 - v36;
  v333 = *v8;
  v38 = type metadata accessor for FAFamilyStructs.Person(0);
  v325 = v2;
  v326 = v38;
  v39 = (v1 + *(v38 + 36));
  v40 = v39[1];
  v324 = v21;
  if (!v40)
  {
    goto LABEL_8;
  }

  v3 = *v39;
  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    v42 = sub_1C4EFF0C8();
    sub_1C43FCE50(v42);
    (*(v43 + 16))(v37, v1);
    v44 = v326;
    v0 = v327;
    v45 = v326[8];
    v46 = *(v327 + 20);
    v47 = sub_1C4EFEEF8();
    sub_1C43FCE50(v47);
    (*(v48 + 16))(&v37[v46], v6 + v45);
    v49 = v44[7];
    v50 = *(v0 + 36);
    sub_1C441AC28();
    sub_1C448D30C(v6 + v51, &v37[v52], v53);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    sub_1C4414830();
    sub_1C4EFF888();
    v54 = &v37[*(v0 + 28)];
    sub_1C4EFEC38();
    v55 = &v37[*(v0 + 32)];
    *v55 = v3;
    *(v55 + 1) = v40;
    sub_1C4415214(&v37[*(v0 + 40)]);
    *&v37[v56] = v4;
    sub_1C4422C64();
    v37[v57] = v58;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44C9240(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v60 = v59;
    v62 = *(v59 + 16);
    v61 = *(v59 + 24);
    v3 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      v255 = sub_1C4405AF4(v61);
      sub_1C44C9240(v255, v256, v257, v258);
      v60 = v259;
    }

    *(v60 + 16) = v3;
    sub_1C43FCC58();
    v332 = v63;
    v66 = v63 + v64 + *(v65 + 72) * v62;
    sub_1C440838C();
    sub_1C44DD8B0(v37, v67, v68);
    v5 = v325;
    v69 = v326;
    v21 = v324;
  }

  else
  {
LABEL_8:
    v332 = MEMORY[0x1E69E7CC0];
    v69 = v326;
  }

  sub_1C4462588(v69[11]);
  if (v37)
  {
    sub_1C442632C(v70);
    if (v71)
    {
      v72 = v69;
      v73 = v5;
      v74 = sub_1C4EFF0C8();
      sub_1C43FCE50(v74);
      (*(v75 + 16))(v35, v6);
      v76 = v72[10];
      v77 = v327;
      v78 = *(v327 + 20);
      v79 = sub_1C4EFEEF8();
      sub_1C43FCE50(v79);
      (*(v80 + 16))(&v35[v78], v6 + v76);
      v81 = v72[7];
      v82 = v77[9];
      sub_1C441AC28();
      sub_1C448D30C(v6 + v83, &v35[v84], v85);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4414830();
      sub_1C4EFF888();
      v86 = &v35[v77[7]];
      sub_1C4EFEC38();
      v87 = &v35[v77[8]];
      *v87 = v3;
      *(v87 + 1) = v37;
      sub_1C4415214(&v35[v77[10]]);
      *&v35[v88] = v4;
      sub_1C4422C64();
      v35[v89] = v90;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v0 = v332;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v260 = *(v0 + 16);
        v261 = sub_1C43FCEC0();
        sub_1C44C9240(v261, v262, v263, v0);
        v0 = v264;
      }

      v37 = *(v0 + 16);
      v91 = *(v0 + 24);
      v332 = v0;
      v3 = (v37 + 1);
      v5 = v73;
      v21 = v324;
      if (v37 >= v91 >> 1)
      {
        v265 = sub_1C4405AF4(v91);
        sub_1C44C9240(v265, v266, v267, v332);
        v332 = v268;
      }

      v69 = v326;
      sub_1C444AEA8();
      sub_1C4417CAC();
      sub_1C440838C();
      sub_1C44DD8B0(v35, v92, v93);
    }
  }

  sub_1C4462588(v69[13]);
  if (v37)
  {
    sub_1C442632C(v94);
    if (v95)
    {
      v96 = sub_1C4EFF0C8();
      sub_1C43FCE50(v96);
      v98 = *(v97 + 16);
      v99 = sub_1C440DE18();
      v100(v99);
      v101 = v69[12];
      v102 = sub_1C44143E4();
      sub_1C43FCE50(v102);
      v104 = *(v103 + 16);
      v105 = sub_1C44588A4();
      v106(v105);
      v107 = v69[7];
      v108 = *(v0 + 36);
      sub_1C441AC28();
      sub_1C447CED4(v109, v110);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4414830();
      sub_1C4EFF888();
      sub_1C4485E34();
      sub_1C44304BC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v269 = *(v332 + 16);
        v270 = sub_1C43FCEC0();
        sub_1C44C9240(v270, v271, v272, v273);
        v332 = v274;
      }

      sub_1C441BF94();
      v5 = v325;
      if (v112)
      {
        v275 = sub_1C4405AF4(v111);
        sub_1C44C9240(v275, v276, v277, v332);
        v332 = v278;
      }

      sub_1C444AEA8();
      sub_1C4417CAC();
      sub_1C440838C();
      sub_1C44DD8B0(v320, v113, v114);
    }
  }

  sub_1C4462588(v69[15]);
  if (v37)
  {
    sub_1C442632C(v115);
    if (v116)
    {
      v117 = sub_1C4EFF0C8();
      sub_1C43FCE50(v117);
      v119 = v321;
      (*(v118 + 16))(v321, v6);
      v120 = v69[14];
      v121 = sub_1C44143E4();
      sub_1C43FCE50(v121);
      (*(v122 + 16))(&v35[v119], v6 + v120);
      v123 = v69[7];
      v124 = *(v0 + 36);
      sub_1C441AC28();
      sub_1C448D30C(v6 + v125, v119 + v126, v127);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4414830();
      sub_1C4EFF888();
      v128 = v119 + *(v0 + 28);
      sub_1C4EFEC38();
      v129 = (v119 + *(v0 + 32));
      *v129 = v3;
      v129[1] = v37;
      sub_1C4415214((v119 + *(v0 + 40)));
      *(v119 + v130) = v4;
      sub_1C4422C64();
      *(v119 + v131) = v132;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v279 = *(v332 + 16);
        v280 = sub_1C43FCEC0();
        sub_1C44C9240(v280, v281, v282, v283);
        v332 = v284;
      }

      sub_1C441BF94();
      v21 = v324;
      if (v112)
      {
        v285 = sub_1C4405AF4(v133);
        sub_1C44C9240(v285, v286, v287, v332);
        v332 = v288;
      }

      sub_1C444AEA8();
      sub_1C4417CAC();
      sub_1C440838C();
      sub_1C44DD8B0(v321, v134, v135);
    }
  }

  sub_1C4462588(v69[17]);
  if (v37)
  {
    sub_1C442632C(v136);
    if (v137)
    {
      v138 = sub_1C4EFF0C8();
      sub_1C43FCE50(v138);
      v140 = *(v139 + 16);
      v141 = sub_1C440DE18();
      v142(v141);
      v143 = v69[16];
      v144 = sub_1C44143E4();
      sub_1C43FCE50(v144);
      v146 = *(v145 + 16);
      v147 = sub_1C44588A4();
      v148(v147);
      v149 = v69[7];
      v150 = *(v0 + 36);
      sub_1C441AC28();
      sub_1C447CED4(v151, v152);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4414830();
      sub_1C4EFF888();
      sub_1C4485E34();
      sub_1C44304BC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v289 = *(v332 + 16);
        v290 = sub_1C43FCEC0();
        sub_1C44C9240(v290, v291, v292, v293);
        v332 = v294;
      }

      sub_1C441BF94();
      v5 = v325;
      if (v112)
      {
        v295 = sub_1C4405AF4(v153);
        sub_1C44C9240(v295, v296, v297, v332);
        v332 = v298;
      }

      sub_1C444AEA8();
      sub_1C4417CAC();
      sub_1C440838C();
      sub_1C44DD8B0(v322, v154, v155);
    }
  }

  sub_1C4462588(v69[19]);
  if (v37)
  {
    sub_1C442632C(v156);
    if (v157)
    {
      v158 = sub_1C4EFF0C8();
      sub_1C43FCE50(v158);
      v160 = *(v159 + 16);
      v161 = sub_1C440DE18();
      v162(v161);
      v163 = v69[18];
      v164 = sub_1C44143E4();
      sub_1C43FCE50(v164);
      v166 = *(v165 + 16);
      v167 = sub_1C44588A4();
      v168(v167);
      v169 = v69[7];
      v170 = *(v0 + 36);
      sub_1C441AC28();
      sub_1C447CED4(v171, v172);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4414830();
      sub_1C4EFF888();
      sub_1C4485E34();
      sub_1C44304BC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v299 = *(v332 + 16);
        v300 = sub_1C43FCEC0();
        sub_1C44C9240(v300, v301, v302, v303);
        v332 = v304;
      }

      sub_1C441BF94();
      v5 = v325;
      if (v112)
      {
        v305 = sub_1C4405AF4(v173);
        sub_1C44C9240(v305, v306, v307, v332);
        v332 = v308;
      }

      sub_1C444AEA8();
      sub_1C4417CAC();
      sub_1C440838C();
      sub_1C44DD8B0(v323, v174, v175);
    }
  }

  sub_1C4462588(v69[21]);
  if (v37)
  {
    sub_1C442632C(v176);
    if (v177)
    {
      v178 = sub_1C4EFF0C8();
      sub_1C43FCE50(v178);
      v180 = *(v179 + 16);
      v181 = sub_1C440DE18();
      v182(v181);
      v183 = v69[20];
      v184 = sub_1C44143E4();
      sub_1C43FCE50(v184);
      v186 = *(v185 + 16);
      v187 = sub_1C44588A4();
      v188(v187);
      v189 = v69[7];
      v190 = *(v0 + 36);
      sub_1C441AC28();
      sub_1C447CED4(v191, v192);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4414830();
      sub_1C4EFF888();
      sub_1C4485E34();
      sub_1C44304BC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v309 = *(v332 + 16);
        v310 = sub_1C43FCEC0();
        sub_1C44C9240(v310, v311, v312, v313);
        v332 = v314;
      }

      sub_1C441BF94();
      v5 = v325;
      if (v112)
      {
        v315 = sub_1C4405AF4(v193);
        sub_1C44C9240(v315, v316, v317, v332);
        v332 = v318;
      }

      sub_1C444AEA8();
      sub_1C43FBF6C();
      v195 = *(v194 + 72);
      sub_1C440838C();
      sub_1C44DD8B0(v196, v197, v198);
    }
  }

  v199 = *(v6 + v69[22]);
  if (v199)
  {
    v200 = v5;
    v329 = v6;
    v201 = 0;
    v202 = *(v199 + 16);
    v203 = v331;
    v21 = v332;
    while (1)
    {
      if (v202 == v201)
      {
        v332 = v21;
        v21 = v324;
        v6 = v329;
        v69 = v326;
        goto LABEL_71;
      }

      if (v201 >= *(v199 + 16))
      {
        break;
      }

      sub_1C43FBF6C();
      v205 = *(v204 + 72);
      sub_1C442EE90();
      sub_1C448D30C(v206, v203, v207);
      v336 = v333;
      sub_1C44225E4();
      sub_1C4D9C330();
      if (v200)
      {
        sub_1C440EBD0();
        sub_1C4DA1E58(v203, v244);

        goto LABEL_78;
      }

      v209 = v208;
      sub_1C440EBD0();
      sub_1C4DA1E58(v203, v210);
      v211 = *(v209 + 16);
      v212 = *(v21 + 16);
      v213 = v212 + v211;
      if (__OFADD__(v212, v211))
      {
        goto LABEL_80;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v213 > *(v21 + 24) >> 1)
      {
        if (v212 <= v213)
        {
          v215 = v212 + v211;
        }

        else
        {
          v215 = v212;
        }

        sub_1C44C9240(isUniquelyReferenced_nonNull_native, v215, 1, v21);
        v21 = v216;
      }

      v203 = v331;
      if (*(v209 + 16))
      {
        v217 = *(v21 + 16);
        if ((*(v21 + 24) >> 1) - v217 < v211)
        {
          goto LABEL_82;
        }

        v218 = v21 + ((*(v328 + 80) + 32) & ~*(v328 + 80)) + *(v328 + 72) * v217;
        swift_arrayInitWithCopy();

        if (v211)
        {
          v219 = *(v21 + 16);
          v220 = __OFADD__(v219, v211);
          v221 = v219 + v211;
          if (v220)
          {
            goto LABEL_83;
          }

          *(v21 + 16) = v221;
        }
      }

      else
      {

        if (v211)
        {
          goto LABEL_81;
        }
      }

      ++v201;
    }

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
    v245 = *(v332 + 16);
    v246 = sub_1C43FCEC0();
    sub_1C44C9240(v246, v247, v248, v249);
    v332 = v250;
    goto LABEL_73;
  }

LABEL_71:
  if (!*(v332 + 16))
  {
    goto LABEL_78;
  }

  v222 = sub_1C4EFF0C8();
  sub_1C43FCE50(v222);
  (*(v223 + 16))(v21, v6);
  v224 = v327;
  v225 = v21 + *(v327 + 20);
  sub_1C4EFEBB8();
  v226 = v6 + v69[6];
  v227 = sub_1C4EFD2F8();
  v229 = v228;
  v230 = v69[7];
  v231 = v224[9];
  sub_1C441AC28();
  sub_1C448D30C(v6 + v232, v21 + v233, v234);
  sub_1C4EF9AE8();
  sub_1C4414830();
  sub_1C4EFF888();
  v235 = v21 + v224[7];
  sub_1C4EFEC38();
  v236 = (v21 + v224[8]);
  *v236 = v227;
  v236[1] = v229;
  sub_1C4415214((v21 + v224[10]));
  *(v21 + v237) = v4;
  sub_1C4422C64();
  *(v21 + v238) = v239;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_84;
  }

LABEL_73:
  v241 = *(v332 + 16);
  v240 = *(v332 + 24);
  if (v241 >= v240 >> 1)
  {
    sub_1C43FCFE8(v240);
    sub_1C4460700();
    sub_1C44C9240(v251, v252, v253, v332);
    v332 = v254;
  }

  *(v332 + 16) = v241 + 1;
  sub_1C4417CAC();
  sub_1C440838C();
  sub_1C44DD8B0(v21, v242, v243);
LABEL_78:
  sub_1C44109F8();
}