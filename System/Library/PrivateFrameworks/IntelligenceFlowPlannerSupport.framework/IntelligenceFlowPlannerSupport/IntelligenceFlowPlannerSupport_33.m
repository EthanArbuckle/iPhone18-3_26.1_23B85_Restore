void static RequestContent.SpeechContent.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22C18E58C();
  v7 = sub_22C26EBC4();
  v8 = sub_22BE179D8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE38390();
  v13 = sub_22BE5CE4C(&qword_27D9120C8, &unk_22C2CC910);
  v14 = sub_22BE19448(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE183AC();
  sub_22BEC0508();
  MEMORY[0x28223BE20](v17);
  sub_22BE32374();
  v18 = sub_22BE5CE4C(&qword_27D912F78, &qword_22C2B7F70);
  v19 = sub_22C18DFEC(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v22);
  sub_22BE1C17C();
  v23 = *v3 == *v2 && v3[1] == v2[1];
  if (!v23 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_27;
  }

  v47 = v1;
  v48 = v0;
  v49 = type metadata accessor for RequestContent.SpeechContent(0);
  v24 = v49[5];
  v25 = *(v4 + 48);
  sub_22C18EB68();
  sub_22BE22814();
  sub_22C18EB68();
  sub_22BE22814();
  sub_22BE181B0(v5);
  if (v23)
  {
    sub_22BE181B0(v5 + v25);
    if (v23)
    {
      sub_22C18DC5C(v5, &qword_27D9120C8);
      v26 = v10;
LABEL_17:
      sub_22C18FFA8(v49[6]);
      if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
      {
        goto LABEL_27;
      }

      v34 = v49[7];
      v35 = *(v4 + 48);
      sub_22BE22814();
      sub_22BE22814();
      sub_22BE181B0(v47);
      if (v23)
      {
        sub_22BE181B0(v47 + v35);
        if (v23)
        {
          sub_22C18DC5C(v47, &qword_27D9120C8);
          goto LABEL_27;
        }
      }

      else
      {
        sub_22BE22814();
        sub_22BE181B0(v47 + v35);
        if (!v36)
        {
          sub_22C18EB74();
          v40 = sub_22BE3BD64();
          v41(v40);
          sub_22C18E088();
          sub_22BE20458(v42);
          sub_22BE1B328();
          sub_22C272FD4();
          v43 = *(v26 + 8);
          v44 = sub_22BE3C5E4();
          v43(v44);
          v45 = sub_22BE431C0();
          v43(v45);
          sub_22C18DC5C(v47, &qword_27D9120C8);
          goto LABEL_27;
        }

        v37 = *(v26 + 8);
        v38 = sub_22BE431C0();
        v39(v38);
      }

      v30 = v47;
      goto LABEL_15;
    }

LABEL_14:
    v30 = v5;
LABEL_15:
    sub_22C18DC5C(v30, &qword_27D912F78);
    goto LABEL_27;
  }

  sub_22BE22814();
  sub_22BE181B0(v5 + v25);
  if (v27)
  {
    v28 = sub_22BE3408C();
    v29(v28, v7);
    goto LABEL_14;
  }

  (*(v10 + 32))(v48, v5 + v25, v7);
  sub_22C18E088();
  sub_22BE20458(v31);
  sub_22BE3E79C();
  v46 = sub_22C272FD4();
  v32 = *(v10 + 8);
  v32(v48, v7);
  v33 = v6;
  v26 = v10;
  v32(v33, v7);
  sub_22C18DC5C(v5, &qword_27D9120C8);
  if (v46)
  {
    goto LABEL_17;
  }

LABEL_27:
  sub_22BE1AABC();
}

void static RequestContent.SystemPromptResolution.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE23708();
  v1 = sub_22C26E1D4();
  v2 = sub_22BE179D8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE17CBC();
  v7 = sub_22BE1AEE4();
  v9 = sub_22BE5CE4C(v7, v8);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1B01C();
  v13 = sub_22BE5CE4C(&qword_27D90A8E8, &qword_22C288AF8);
  sub_22BE19448(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE25CD0();
  v18 = *(v17 + 56);
  sub_22BE324FC();
  sub_22BE3D108();
  sub_22BE22814();
  sub_22BE3D108();
  sub_22BE22814();
  sub_22BE181B0(v0);
  if (v19)
  {
    sub_22BE181B0(v0 + v18);
    if (v19)
    {
      sub_22C18DC5C(v0, &qword_27D9082F0);
      goto LABEL_11;
    }

LABEL_9:
    sub_22C18DC5C(v0, &qword_27D90A8E8);
LABEL_15:
    v32 = 0;
    goto LABEL_16;
  }

  sub_22BE29454();
  sub_22BE22814();
  sub_22BE181B0(v0 + v18);
  if (v19)
  {
    v20 = *(v4 + 8);
    v21 = sub_22BE36680();
    v22(v21);
    goto LABEL_9;
  }

  sub_22C18EB74();
  v23 = sub_22BE3BD64();
  v24(v23);
  sub_22BE18B28();
  sub_22BE20458(v25);
  sub_22BE25C08();
  v26 = sub_22C272FD4();
  v27 = *(v4 + 8);
  v28 = sub_22BE3C5E4();
  v27(v28);
  v29 = sub_22BE36680();
  v27(v29);
  sub_22C18DC5C(v0, &qword_27D9082F0);
  if ((v26 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v30 = type metadata accessor for RequestContent.SystemPromptResolution(0);
  sub_22C18F344(v30[5]);
  if ((sub_22C26E1B4() & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_22C18F344(v30[6]);
  static RequestContent.SystemPromptResolution.UserAction.== infix(_:_:)();
  if ((v31 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_22C18F344(v30[7]);
  if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_22C18F344(v30[8]);
  static RequestContent.SystemPromptResolution.ResolutionInput.== infix(_:_:)();
LABEL_16:
  sub_22BE1C1DC(v32);
  sub_22BE1AABC();
}

uint64_t sub_22C13B944(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1886352499 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1954047348 && a2 == 0xE400000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x686365657073 && a2 == 0xE600000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x800000022C2DA920 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_22C13BAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C13B944(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C13BAD0(uint64_t a1)
{
  v2 = sub_22BE39F14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13BB0C(uint64_t a1)
{
  v2 = sub_22BE39F14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13BB48(uint64_t a1)
{
  v2 = sub_22C174BB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13BB84(uint64_t a1)
{
  v2 = sub_22C174BB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13BBC0(uint64_t a1)
{
  v2 = sub_22C174C0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13BBFC(uint64_t a1)
{
  v2 = sub_22C174C0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13BC38(uint64_t a1)
{
  v2 = sub_22C174C60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13BC74(uint64_t a1)
{
  v2 = sub_22C174C60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13BCB0(uint64_t a1)
{
  v2 = sub_22BE39F98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13BCEC(uint64_t a1)
{
  v2 = sub_22BE39F98();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestContent.init(from:)()
{
  sub_22BE19130();
  sub_22C18F874();
  v6 = sub_22BE5CE4C(&qword_27D912FE0, &qword_22C2B7FA0);
  sub_22BE179D8(v6);
  v98 = v7;
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE34034(v11, v91);
  v12 = sub_22BE5CE4C(&qword_27D912FE8, &qword_22C2B7FA8);
  sub_22BE179D8(v12);
  v97 = v13;
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE2BA30(v17, v92);
  v18 = sub_22BE5CE4C(&qword_27D912FF0, &qword_22C2B7FB0);
  sub_22BE179D8(v18);
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE2C638(v22, v93);
  v100 = sub_22BE5CE4C(&qword_27D912FF8, &qword_22C2B7FB8);
  sub_22BE179D8(v100);
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE33FF0(v26, v94);
  v27 = sub_22BE5CE4C(&qword_27D913000, &qword_22C2B7FC0);
  v99 = sub_22BE179D8(v27);
  v29 = *(v28 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE1B01C();
  v101 = type metadata accessor for RequestContent(0);
  v31 = sub_22BE18000(v101);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v34);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v35);
  sub_22BE18094();
  MEMORY[0x28223BE20](v36);
  sub_22BE23858();
  MEMORY[0x28223BE20](v37);
  sub_22BE32374();
  v39 = v0[3];
  v38 = v0[4];
  v102 = v0;
  sub_22C18E560(v0);
  sub_22BE39F14();
  sub_22BE232E4();
  sub_22C274214();
  if (!v103)
  {
    v95 = v3;
    v96 = v2;
    sub_22BEC0924();
    v40 = sub_22C273ED4();
    sub_22BE7C5C4(v40, 0);
    sub_22C18F638();
    if (!v41)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v48 == v49)
      {
        __break(1u);
        return;
      }

      v50 = *(v47 + v46);
      v51 = sub_22BE3A464(v42, v43, v44, v45, v46);
      sub_22BE7C5C0(v51);
      v53 = v52;
      v55 = v54;
      swift_unknownObjectRelease();
      if (v53 == v55 >> 1)
      {
        v56 = v4;
        switch(v50)
        {
          case 1:
            sub_22BE38948();
            sub_22BE39F98();
            sub_22C18E6FC();
            sub_22C273DE4();
            type metadata accessor for RequestContent.TextContent(0);
            sub_22BE3F4B0();
            sub_22BE20458(v69);
            v1 = v5;
            sub_22C18F904();
            sub_22C18E924();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            sub_22BE363F8();
            v85 = sub_22BE2565C();
            v86(v85);
            v87 = sub_22C18E53C();
            v88(v87);
            sub_22C18F970();
            swift_storeEnumTagMultiPayload();
            v84 = v102;
            v56 = v4;
            break;
          case 2:
            sub_22C18F59C();
            sub_22C174C0C();
            sub_22C18F928();
            sub_22C18E6FC();
            sub_22C273DE4();
            type metadata accessor for RequestContent.SpeechContent(0);
            sub_22BE3CAF4();
            sub_22BE20458(v67);
            v1 = v96;
            sub_22C18F904();
            sub_22BE489D4();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v70 = *(v97 + 8);
            v71 = sub_22BE1B73C();
            v72(v71);
            v73 = sub_22C18E53C();
            v74(v73);
            sub_22C18F970();
            goto LABEL_14;
          case 3:
            sub_22BEE9478();
            sub_22C174BB8();
            sub_22C18E6FC();
            sub_22C273DE4();
            type metadata accessor for RequestContent.SystemPromptResolution(0);
            sub_22BE34158();
            sub_22BE20458(v68);
            sub_22C18F904();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v75 = *(v98 + 8);
            v76 = sub_22BE1B73C();
            v77(v76);
            v78 = sub_22C18E53C();
            v79(v78);
            sub_22C18F970();
LABEL_14:
            swift_storeEnumTagMultiPayload();
            v84 = v102;
            break;
          default:
            sub_22C174C60();
            sub_22C18E6FC();
            sub_22C273DE4();
            sub_22C174D08();
            sub_22BE261D0();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v80 = sub_22BE1A194();
            v81(v80, v100);
            v82 = sub_22C18F5D4();
            v83(v82, v99);
            v1 = v95;
            sub_22C18F970();
            swift_storeEnumTagMultiPayload();
            v84 = v102;
            break;
        }

        sub_22C171FA8(v1, v56);
        v89 = sub_22BE196A8();
        sub_22C171FA8(v89, v90);
        sub_22BE26B64(v84);
        goto LABEL_10;
      }
    }

    sub_22C273B34();
    sub_22BE196B4();
    v58 = v57;
    v59 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v58 = v101;
    sub_22BEC0924();
    sub_22C273DF4();
    sub_22BE1A918();
    v60 = *MEMORY[0x277D84160];
    sub_22BE18994();
    v62 = *(v61 + 104);
    v63 = sub_22BE38608();
    v64(v63);
    swift_willThrow();
    swift_unknownObjectRelease();
    v65 = sub_22C18E53C();
    v66(v65);
  }

  sub_22BE26B64(v102);
LABEL_10:
  sub_22BE22978();
  sub_22BE18478();
}

uint64_t sub_22C13C5AC(uint64_t a1)
{
  v2 = sub_22C174D5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13C5E8(uint64_t a1)
{
  v2 = sub_22C174D5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13C6F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C13C7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C13C6F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C13C7E8(uint64_t a1)
{
  v2 = sub_22BE3A3F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13C824(uint64_t a1)
{
  v2 = sub_22BE3A3F8();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestContent.TextContent.init(from:)()
{
  sub_22BE19130();
  sub_22C18F0F4();
  v24 = v4;
  v25 = sub_22C26E684();
  v5 = sub_22BE179D8(v25);
  v23 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE188B0();
  v26 = sub_22BE5CE4C(&qword_27D913040, &qword_22C2B7FD8);
  sub_22BE179D8(v26);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE1AED0();
  v13 = type metadata accessor for RequestContent.TextContent(v12);
  v14 = sub_22BE18000(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE1955C();
  v17 = v0[3];
  v18 = v0[4];
  sub_22C18E560(v0);
  sub_22BE3A3F8();
  sub_22BE489BC();
  sub_22C18FF90();
  sub_22C274214();
  if (v2)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18EA24();
    sub_22BE285D4();
    *v1 = sub_22C273E64();
    v1[1] = v19;
    sub_22BE33FE4();
    sub_22BE18F44();
    sub_22BE20458(v20);
    sub_22C18E9A0();
    sub_22BE285D4();
    sub_22C273EB4();
    v21 = sub_22C18F1E4();
    v22(v21, v26);
    (*(v23 + 32))(v1 + *(v13 + 20), v3, v25);
    sub_22BE1A964(v1, v24);
    sub_22BE26B64(v0);
    sub_22BE355E4();
    sub_22C171FFC();
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22C13CB78()
{
  v0 = sub_22BE27BE8();
  v2 = *(v1(v0) + 20);
  return sub_22BFBFC6C();
}

uint64_t RequestContent.SpeechContent.speechPackage.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for RequestContent.SpeechContent(v0) + 20);
  return sub_22BE18504();
}

uint64_t sub_22C13CC1C()
{
  v3 = sub_22BE3E7BC();
  v5 = *(v4(v3) + 24);
  v6 = v0(0);
  v7 = sub_22BE18000(v6);
  v9 = *(v8 + 16);

  return v9(v2, v1 + v5, v7);
}

uint64_t sub_22C13CCBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6150686365657073 && a2 == 0xED00006567616B63;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000013 && 0x800000022C2DA900 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_22C13CE28(char a1)
{
  result = 1954047348;
  switch(a1)
  {
    case 1:
      result = 0x6150686365657073;
      break;
    case 2:
      result = 0x6E656D6574617473;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C13CEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C13CCBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C13CEEC(uint64_t a1)
{
  v2 = sub_22C174DB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13CF28(uint64_t a1)
{
  v2 = sub_22C174DB0();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestContent.SpeechContent.encode(to:)()
{
  sub_22BE19130();
  sub_22BE22950();
  v2 = sub_22BE5CE4C(&qword_27D913048, &qword_22C2B7FE0);
  sub_22BE1BF18(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22C174DB0();
  sub_22BE25524();
  v6 = *v1;
  v7 = v1[1];
  sub_22C18E9AC();
  sub_22BE36628();
  sub_22C273F54();
  if (!v0)
  {
    v8 = type metadata accessor for RequestContent.SpeechContent(0);
    v9 = v8[5];
    sub_22BE323A4();
    sub_22C26EBC4();
    sub_22C18E088();
    sub_22BE20458(v10);
    sub_22BE3EAFC();
    sub_22C273F34();
    v15 = v8[6];
    sub_22BE200EC();
    sub_22C26E684();
    sub_22BE18F44();
    sub_22BE20458(v11);
    sub_22BE196CC();
    sub_22C273FA4();
    v12 = v8[7];
    sub_22BE3EAFC();
    sub_22C273F34();
  }

  v13 = sub_22BE47E18();
  v14(v13);
  sub_22BE467E4();
  sub_22BE18478();
}

void RequestContent.SpeechContent.init(from:)()
{
  sub_22BE19130();
  v4 = v3;
  sub_22C18FEC4(v5);
  v44 = sub_22C26E684();
  v6 = sub_22BE179D8(v44);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v42 = v9;
  v10 = sub_22BE5CE4C(&qword_27D9120C8, &unk_22C2CC910);
  v11 = sub_22BE19448(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE183AC();
  MEMORY[0x28223BE20](v14);
  sub_22BE25A90();
  v15 = sub_22BE5CE4C(&qword_27D913060, &qword_22C2B7FE8);
  sub_22BE179D8(v15);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1B01C();
  v19 = type metadata accessor for RequestContent.SpeechContent(0);
  v20 = sub_22BE18000(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE1955C();
  v43 = v23;
  sub_22C18F32C(v23);
  sub_22C26EBC4();
  v24 = v2;
  sub_22BE3AE2C();
  sub_22BE19DC4(v25, v26, v27, v28);
  v30 = v4[3];
  v29 = v4[4];
  sub_22BE41E84(v4);
  sub_22C174DB0();
  sub_22BE232E4();
  sub_22C274214();
  if (v1)
  {
    sub_22BE26B64(v4);
    sub_22C18DC5C(v24 + v0, &qword_27D9120C8);
  }

  else
  {
    sub_22C18EA24();
    *v24 = sub_22C273E64();
    v24[1] = v31;
    sub_22BE33FE4();
    sub_22C18E088();
    sub_22BE20458(v32);
    sub_22C18EA30();
    sub_22C273E44();
    sub_22C18FCC8();
    sub_22BE2343C();
    sub_22BE200EC();
    sub_22BE18F44();
    sub_22BE20458(v33);
    sub_22C18F614();
    sub_22C273EB4();
    v34 = *(v43 + 24);
    sub_22C18FFB4();
    v36(v24 + v35, v42, v44);
    sub_22C18E900();
    sub_22C18EA30();
    sub_22C273E44();
    v37 = sub_22C18F1C4();
    v38(v37);
    v39 = *(v43 + 28);
    sub_22BE424BC();
    v40 = sub_22BE19EBC();
    sub_22BE1A964(v40, v41);
    sub_22BE26B64(v4);
    sub_22BE41104();
    sub_22C171FFC();
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22C13D698(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v7 = sub_22BE2021C();
  v9 = v8(v7);
  v10 = sub_22BE341A4(v9);
  v11 = a3(v10);
  sub_22BE1834C(v11);
  v13 = *(v12 + 40);

  return v13(v3 + v5, v4);
}

uint64_t RequestContent.SystemPromptResolution.systemResponseEventId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for RequestContent.SystemPromptResolution(v0) + 20);
  return sub_22BE18504();
}

uint64_t sub_22C13D778()
{
  v0 = sub_22BE3E7BC();
  v2 = v1(v0);
  v3 = sub_22C18FCA4(*(v2 + 24));
  return sub_22BE1A964(v3, v4);
}

uint64_t sub_22C13D7E4()
{
  v2 = sub_22BE2021C();
  v4 = v3(v2);
  return sub_22C172628(v1, v0 + *(v4 + 24));
}

uint64_t RequestContent.SystemPromptResolution.userAction.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for RequestContent.SystemPromptResolution(v0) + 24);
  return sub_22BE18504();
}

uint64_t RequestContent.SystemPromptResolution.statementId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for RequestContent.SystemPromptResolution(v0) + 28);
  return sub_22BE18504();
}

uint64_t RequestContent.SystemPromptResolution.input.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = *(type metadata accessor for RequestContent.SystemPromptResolution(v0) + 32);
  sub_22BE1C200();
  v3 = sub_22BE25438(v2);
  return sub_22BE1A964(v3, v4);
}

uint64_t RequestContent.SystemPromptResolution.input.setter()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for RequestContent.SystemPromptResolution(v0) + 32);
  sub_22C18E354();
  v2 = sub_22C18F880();
  return sub_22C172628(v2, v3);
}

uint64_t RequestContent.SystemPromptResolution.input.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for RequestContent.SystemPromptResolution(v0) + 32);
  return sub_22BE18504();
}

void RequestContent.SystemPromptResolution.ResolutionInput.description.getter()
{
  sub_22BE3C358();
  v2 = type metadata accessor for RequestContent.SpeechContent(0);
  v3 = sub_22BE18000(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE197B8();
  v6 = type metadata accessor for RequestContent.TextContent(0);
  v7 = sub_22BE18000(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17CBC();
  v10 = type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
  v11 = sub_22BE18000(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE1955C();
  sub_22BE1C200();
  v14 = sub_22BE1B73C();
  sub_22BE1A964(v14, v15);
  sub_22BE18240();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE1BB68();
      sub_22C171FA8(v1, v0);
      MEMORY[0x2318AB8D0](0x28686365657073, 0xE700000000000000);
      sub_22C273C24();
      v19 = sub_22C18E830();
      MEMORY[0x2318AB8D0](v19);
      sub_22BE41104();
      goto LABEL_4;
    case 2u:
    case 3u:
      break;
    default:
      sub_22C18DFA8();
      v16 = sub_22BE1B5E0();
      sub_22C171FA8(v16, v17);
      MEMORY[0x2318AB8D0](0x2874786574, 0xE500000000000000);
      sub_22C273C24();
      v18 = sub_22C18E830();
      MEMORY[0x2318AB8D0](v18);
      sub_22BE355E4();
LABEL_4:
      sub_22C171FFC();
      break;
  }

  sub_22BE36680();
  sub_22BE267B8();
}

void static RequestContent.SystemPromptResolution.ResolutionInput.== infix(_:_:)()
{
  sub_22BE19460();
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for RequestContent.SpeechContent(0);
  v9 = sub_22BE19448(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17CBC();
  v32 = type metadata accessor for RequestContent.TextContent(0);
  v12 = sub_22BE18000(v32);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE2379C();
  v15 = type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
  v16 = sub_22BE18000(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v19);
  sub_22BE181E4();
  v20 = sub_22BE5CE4C(&qword_27D913070, &qword_22C2B7FF0);
  sub_22BE19448(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE1B72C();
  v25 = *(v24 + 56);
  sub_22BE1A964(v7, v0);
  sub_22BE1A964(v5, v0 + v25);
  sub_22BE1A6BC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE1C200();
      v28 = sub_22BE37490();
      sub_22BE1A964(v28, v29);
      if (sub_22C1901A4() != 1)
      {
        sub_22BE41104();
        goto LABEL_11;
      }

      sub_22BE1BB68();
      sub_22C171FA8(v0 + v25, v2);
      sub_22BE25C08();
      static RequestContent.SpeechContent.== infix(_:_:)();
      sub_22C171FFC();
      sub_22BE38970();
      sub_22C171FFC();
      sub_22C18E070();
      sub_22C171FFC();
      goto LABEL_21;
    case 2u:
      if (sub_22C1901A4() != 2)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    case 3u:
      if (sub_22C1901A4() == 3)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    default:
      sub_22BE1C200();
      v26 = sub_22BE3CC34();
      sub_22BE1A964(v26, v27);
      if (sub_22C1901A4())
      {
        sub_22BE355E4();
LABEL_11:
        sub_22C171FFC();
LABEL_12:
        sub_22C18DC5C(v0, &qword_27D913070);
      }

      else
      {
        sub_22C18DFA8();
        sub_22C171FA8(v0 + v25, v1);
        v30 = *v3 == *v1 && v3[1] == v1[1];
        if (v30 || (sub_22C274014()) && (v31 = *(v32 + 20), (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0()))
        {
          sub_22C18EB38();
          sub_22C171FFC();
          sub_22BE232C8();
          sub_22C171FFC();
LABEL_20:
          sub_22C18E070();
          sub_22C171FFC();
        }

        else
        {
          sub_22C18EB38();
          sub_22C171FFC();
          sub_22BE232C8();
          sub_22C171FFC();
          sub_22C18E070();
          sub_22C171FFC();
        }
      }

LABEL_21:
      sub_22BE1B1B8();
      sub_22BE1AABC();
      return;
  }
}

uint64_t sub_22C13DE8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6863756F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7473654764616568 && a2 == 0xEB00000000657275;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1954047348 && a2 == 0xE400000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x686365657073 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_22C13DFE0(char a1)
{
  result = 0x6863756F74;
  switch(a1)
  {
    case 1:
      result = 0x7473654764616568;
      break;
    case 2:
      result = 1954047348;
      break;
    case 3:
      result = 0x686365657073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C13E064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C13DE8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C13E08C(uint64_t a1)
{
  v2 = sub_22C174E04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13E0C8(uint64_t a1)
{
  v2 = sub_22C174E04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13E104(uint64_t a1)
{
  v2 = sub_22C174F00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13E140(uint64_t a1)
{
  v2 = sub_22C174F00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13E17C(uint64_t a1)
{
  v2 = sub_22C174E58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13E1B8(uint64_t a1)
{
  v2 = sub_22C174E58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13E1F4(uint64_t a1)
{
  v2 = sub_22C174EAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13E230(uint64_t a1)
{
  v2 = sub_22C174EAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13E26C(uint64_t a1)
{
  v2 = sub_22C174F54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13E2A8(uint64_t a1)
{
  v2 = sub_22C174F54();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestContent.SystemPromptResolution.ResolutionInput.encode(to:)()
{
  sub_22BE19130();
  v58 = v0;
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D913078, &qword_22C2B7FF8);
  sub_22BE179D8(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE181D0(v8, v52);
  v56 = type metadata accessor for RequestContent.SpeechContent(0);
  v9 = sub_22BE18000(v56);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  sub_22BE3FF7C(v12);
  v13 = sub_22BE5CE4C(&qword_27D913080, &qword_22C2B8000);
  sub_22BE179D8(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE33FF0(v17, v53);
  v54 = type metadata accessor for RequestContent.TextContent(0);
  v18 = sub_22BE18000(v54);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  v55 = v21;
  v22 = sub_22BE5CE4C(&qword_27D913088, &qword_22C2B8008);
  sub_22BE179D8(v22);
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE2C64C();
  v26 = sub_22BE5CE4C(&qword_27D913090, &qword_22C2B8010);
  sub_22BE179D8(v26);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1A8B4();
  v30 = type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
  v31 = sub_22BE29F40(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE17CBC();
  v34 = sub_22BE5CE4C(&qword_27D913098, &qword_22C2B8018);
  sub_22BE179D8(v34);
  v36 = *(v35 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE23E58();
  v38 = v3[3];
  v39 = v3[4];
  sub_22C18E560(v3);
  sub_22C174E04();
  sub_22BE3CCD4();
  sub_22C18FF90();
  sub_22C274234();
  sub_22BE1C200();
  sub_22BE1A964(v58, v1);
  sub_22BE1AB74();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22C171FA8(v1, v57);
      sub_22BEE9478();
      sub_22C174E58();
      sub_22BE42748();
      sub_22C273EE4();
      sub_22BE3CAF4();
      sub_22BE20458(v49);
      sub_22BE35E54();
      sub_22C18FB28();
      v50 = sub_22BE38A68();
      v51(v50);
      sub_22BE41104();
      sub_22C171FFC();
      v43 = sub_22BE2B7E8();
      goto LABEL_7;
    case 2u:
      sub_22C174F54();
      sub_22BE3788C();
      sub_22C273EE4();
      sub_22BE363F8();
      v45 = sub_22BE196A8();
      goto LABEL_5;
    case 3u:
      sub_22BE38948();
      sub_22C174F00();
      sub_22BE3788C();
      sub_22C273EE4();
      v45 = sub_22C11FDE0();
LABEL_5:
      v46(v45);
      sub_22BE1B940();
      v47 = sub_22BE3C968();
      v48(v47);
      break;
    default:
      sub_22C171FA8(v1, v55);
      sub_22C18F59C();
      sub_22C174EAC();
      sub_22BE27168();
      sub_22C273EE4();
      sub_22BE3F4B0();
      sub_22BE20458(v40);
      sub_22BE35E54();
      sub_22C273FA4();
      v41 = sub_22BE35B0C();
      v42(v41);
      sub_22BE355E4();
      sub_22C171FFC();
      v43 = sub_22C18E474();
LABEL_7:
      v44(v43);
      break;
  }

  sub_22BE22978();
  sub_22BE18478();
}

void RequestContent.SystemPromptResolution.ResolutionInput.init(from:)()
{
  sub_22BE19130();
  sub_22C18F874();
  v92 = v5;
  v95 = sub_22BE5CE4C(&qword_27D9130C8, &qword_22C2B8020);
  sub_22BE179D8(v95);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE181D0(v9, v87);
  v10 = sub_22BE5CE4C(&qword_27D9130D0, &qword_22C2B8028);
  sub_22BE179D8(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE34034(v14, v88);
  v94 = sub_22BE5CE4C(&qword_27D9130D8, &qword_22C2B8030);
  sub_22BE179D8(v94);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE2BA30(v18, v89);
  v19 = sub_22BE5CE4C(&qword_27D9130E0, &qword_22C2B8038);
  sub_22BE179D8(v19);
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE2C638(v23, v90);
  v24 = sub_22BE5CE4C(&qword_27D9130E8, &qword_22C2B8040);
  sub_22BE179D8(v24);
  v93 = v25;
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  v29 = sub_22BE24FD8();
  v30 = type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(v29);
  v31 = sub_22BE29F40(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v34);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v35);
  sub_22BE1C17C();
  v36 = v1[3];
  v37 = v1[4];
  v96 = v1;
  v38 = sub_22BE1A8C4();
  sub_22BE26950(v38, v39);
  sub_22C174E04();
  sub_22BE3CCD4();
  sub_22C274214();
  if (!v97)
  {
    v40 = sub_22C273ED4();
    sub_22BE7C5C4(v40, 0);
    if (v42 != v41 >> 1)
    {
      sub_22BE32C78();
      if (v49 == v50)
      {
        __break(1u);
        return;
      }

      v91 = *(v48 + v47);
      v51 = sub_22C18F7D4(v43, v44, v45, v46, v47);
      sub_22BE7C5C0(v51);
      v53 = v52;
      v55 = v54;
      swift_unknownObjectRelease();
      if (v53 == v55 >> 1)
      {
        switch(v91)
        {
          case 1:
            sub_22BE38948();
            sub_22C174F00();
            sub_22BE38FAC();
            sub_22C19018C();
            swift_unknownObjectRelease();
            v73 = sub_22BE1B5F8();
            v74(v73, v94);
            v75 = sub_22C18E3C8();
            v76(v75);
            v60 = v4;
            sub_22BE3E8FC();
            goto LABEL_14;
          case 2:
            sub_22C18F59C();
            sub_22C174EAC();
            sub_22BE38FAC();
            sub_22C19018C();
            type metadata accessor for RequestContent.TextContent(0);
            sub_22BE3F4B0();
            sub_22BE20458(v71);
            sub_22C18E69C();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v77 = sub_22BE38A68();
            v78(v77);
            v79 = *(v93 + 8);
            v80 = sub_22C18F91C();
            v81(v80);
            goto LABEL_15;
          case 3:
            sub_22BEE9478();
            sub_22C174E58();
            sub_22C19018C();
            type metadata accessor for RequestContent.SpeechContent(0);
            sub_22BE3CAF4();
            sub_22BE20458(v72);
            v3 = v2;
            sub_22BE489D4();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v82 = sub_22BE2399C();
            v83(v82, v95);
            v84 = *(v93 + 8);
            v85 = sub_22C18F91C();
            v86(v85);
LABEL_15:
            swift_storeEnumTagMultiPayload();
            sub_22C18E36C();
            v60 = v4;
            sub_22C171FA8(v3, v4);
            break;
          default:
            sub_22C174F54();
            sub_22BE38FAC();
            sub_22C19018C();
            swift_unknownObjectRelease();
            v56 = sub_22BE1B5F8();
            v57(v56);
            v58 = sub_22C18E3C8();
            v59(v58);
            v60 = v4;
            sub_22BE3E8FC();
LABEL_14:
            swift_storeEnumTagMultiPayload();
            break;
        }

        sub_22C18E36C();
        sub_22C171FA8(v60, v92);
        sub_22BE26B64(v96);
        goto LABEL_10;
      }
    }

    sub_22C273B34();
    sub_22BE196B4();
    v62 = v61;
    v63 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v62 = v0;
    sub_22C273DF4();
    sub_22C18FE8C();
    sub_22BE1B198();
    v64 = *MEMORY[0x277D84160];
    sub_22BE18994();
    v66 = *(v65 + 104);
    v67 = sub_22BE38608();
    v68(v67);
    swift_willThrow();
    swift_unknownObjectRelease();
    v69 = sub_22BE3408C();
    v70(v69, v24);
  }

  sub_22BE26B64(v96);
LABEL_10:
  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t RequestContent.SystemPromptResolution.UserAction.description.getter()
{
  v1 = sub_22C272874();
  v2 = sub_22BE1BF18(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE38390();
  v7 = type metadata accessor for RequestContent.SystemPromptResolution.UserAction(0);
  v8 = sub_22BE18000(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE18DFC();
  sub_22BE23DA0();
  v11 = sub_22BE336E8();
  sub_22BE1A964(v11, v12);
  sub_22BE1B328();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE27C14();
      v16 = sub_22BE324FC();
      v17(v16);
      sub_22C18E4D0();
      sub_22C273AA4();
      sub_22C18F8D4();
      sub_22C18F694();
      MEMORY[0x2318AB8D0](v18 | 7, v19 | 0x8000000000000000);
      sub_22C273C24();
      v20 = sub_22C18E830();
      MEMORY[0x2318AB8D0](v20);
      v21 = *(v4 + 8);
      v22 = sub_22BE1B5EC();
      v23(v22);
      return sub_22BE1A8C4();
    case 3u:
      v13 = *v0;
      sub_22C18E4D0();
      sub_22C273AA4();

      sub_22BE25A74();
      sub_22C18F694();
      v14 = sub_22C273FD4();
      goto LABEL_11;
    case 4u:
      v26 = *v0;
      sub_22C18E4D0();
      sub_22C273AA4();
      sub_22C18F8D4();
      MEMORY[0x2318AB8D0](0xD000000000000015, 0x800000022C2DBBC0);
      sub_22C11FF78(v26);
      goto LABEL_13;
    case 5u:
      return sub_22BE1A8C4();
    default:
      v24 = *v0;
      sub_22C18E4D0();
      sub_22C273AA4();

      sub_22BE25A74();
      sub_22C18F694();
      if (v24)
      {
        v14 = 1702195828;
      }

      else
      {
        v14 = 0x65736C6166;
      }

      if (v24)
      {
        v25 = 0xE400000000000000;
      }

      else
      {
        v25 = 0xE500000000000000;
      }

      v15 = v25;
LABEL_11:
      MEMORY[0x2318AB8D0](v14, v15);

LABEL_13:
      v27 = sub_22C18E830();
      MEMORY[0x2318AB8D0](v27);
      return sub_22BE1A8C4();
  }
}

void static RequestContent.SystemPromptResolution.UserAction.== infix(_:_:)()
{
  sub_22BE19460();
  v55 = v4;
  sub_22BE33690();
  v5 = sub_22C272874();
  v6 = sub_22BE179D8(v5);
  v53 = v7;
  v54 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v52 = v10;
  v11 = sub_22BE183BC();
  v12 = type metadata accessor for RequestContent.SystemPromptResolution.UserAction(v11);
  v13 = sub_22BE18000(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE183AC();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v20);
  sub_22BE18094();
  MEMORY[0x28223BE20](v21);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v22);
  v24 = &v52 - v23;
  v25 = sub_22BE5CE4C(&qword_27D9130F0, &qword_22C2B8048);
  sub_22BE19448(v25);
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE1B72C();
  v30 = *(v29 + 56);
  sub_22BE1A964(v1, v0);
  sub_22BE1A964(v55, v0 + v30);
  sub_22BE33FD8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE23DA0();
      v42 = sub_22BE37490();
      sub_22BE1A964(v42, v43);
      if (sub_22BE34140() == 1)
      {
        v44 = v53;
        sub_22BE47DF4();
        v45 = sub_22C18FE14();
        v46(v45);
        sub_22BE1AB1C();
        sub_22C272844();
        v47 = *(v44 + 8);
        v48 = sub_22BE1B328();
        v47(v48);
        v49 = sub_22BE25C08();
        v47(v49);
        goto LABEL_14;
      }

      v50 = sub_22BE39058();
      v51(v50);
      goto LABEL_16;
    case 2u:
      sub_22BE23DA0();
      v36 = sub_22BE41FB4();
      sub_22BE1A964(v36, v37);
      if (sub_22BE34140() != 2)
      {
        goto LABEL_16;
      }

      v33 = *v3;
      goto LABEL_8;
    case 3u:
      sub_22BE23DA0();
      v39 = sub_22BE29264();
      sub_22BE1A964(v39, v40);
      if (sub_22BE34140() != 3)
      {
        goto LABEL_16;
      }

      v41 = *v2 == *(v0 + v30);
LABEL_14:
      sub_22BE48E4C();
      sub_22C171FFC();
      goto LABEL_17;
    case 4u:
      sub_22BE23DA0();
      v34 = sub_22BE1A6BC();
      sub_22BE1A964(v34, v35);
      if (sub_22BE34140() != 4)
      {
        goto LABEL_16;
      }

      v33 = *v18;
      goto LABEL_8;
    case 5u:
      if (sub_22BE34140() == 5)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    default:
      sub_22BE23DA0();
      v31 = sub_22BE19454();
      sub_22BE1A964(v31, v32);
      if (sub_22BE34140())
      {
LABEL_16:
        sub_22C18DC5C(v0, &qword_27D9130F0);
      }

      else
      {
        v33 = *v24;
LABEL_8:
        v38 = v33 ^ *(v0 + v30);
        sub_22BE48E4C();
        sub_22C171FFC();
      }

LABEL_17:
      sub_22BE1B1B8();
      sub_22BE1AABC();
      return;
  }
}

uint64_t sub_22C13F640(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F436E6F69746361 && a2 == 0xEF64656D7269666ELL;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x800000022C2D96D0 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x800000022C2D96F0 == a2;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001BLL && 0x800000022C2D9710 == a2;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x800000022C2D9730 == a2;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x61436E6F69746361 && a2 == 0xEE0064656C65636ELL)
          {

            return 5;
          }

          else
          {
            v11 = sub_22C274014();

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

unint64_t sub_22C13F848(char a1)
{
  result = 0x6F436E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x61436E6F69746361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C13F934(uint64_t a1)
{
  v2 = sub_22C174FFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13F970(uint64_t a1)
{
  v2 = sub_22C174FFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13F9AC(uint64_t a1)
{
  v2 = sub_22C175248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13F9E8(uint64_t a1)
{
  v2 = sub_22C175248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13FA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C13F640(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C13FA54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C13F840();
  *a1 = result;
  return result;
}

uint64_t sub_22C13FA7C(uint64_t a1)
{
  v2 = sub_22C174FA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13FAB8(uint64_t a1)
{
  v2 = sub_22C174FA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13FAF4(uint64_t a1)
{
  v2 = sub_22C17514C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13FB30(uint64_t a1)
{
  v2 = sub_22C17514C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13FB6C(uint64_t a1)
{
  v2 = sub_22C1751A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13FBA8(uint64_t a1)
{
  v2 = sub_22C1751A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13FBE4(uint64_t a1)
{
  v2 = sub_22C1751F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13FC20(uint64_t a1)
{
  v2 = sub_22C1751F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13FC5C(uint64_t a1)
{
  v2 = sub_22C1750A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13FC98(uint64_t a1)
{
  v2 = sub_22C1750A4();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestContent.SystemPromptResolution.UserAction.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v24;
  a20 = v25;
  v98 = v20;
  v27 = v26;
  v28 = sub_22BE5CE4C(&qword_27D9130F8, &qword_22C2B8050);
  sub_22BE179D8(v28);
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE29200(v32);
  v33 = sub_22BE5CE4C(&qword_27D913100, &qword_22C2B8058);
  v96 = sub_22BE179D8(v33);
  v35 = *(v34 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE2C638(v37, v90);
  v38 = sub_22BE5CE4C(&qword_27D913108, &qword_22C2B8060);
  v95 = sub_22BE179D8(v38);
  v40 = *(v39 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22C18E504(v42);
  v93 = sub_22BE5CE4C(&qword_27D913110, &qword_22C2B8068);
  sub_22BE179D8(v93);
  v44 = *(v43 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v45);
  sub_22BE1A174();
  sub_22BF0AFA0(v46);
  v94 = sub_22BE5CE4C(&qword_27D913118, &qword_22C2B8070);
  sub_22BE179D8(v94);
  v48 = *(v47 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v49);
  sub_22BE1A174();
  sub_22BE183BC();
  v50 = sub_22C272874();
  v51 = sub_22BE179D8(v50);
  v91 = v52;
  v92 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22BE28FD8();
  v55 = sub_22BE5CE4C(&qword_27D913120, &qword_22C2B8078);
  sub_22BE179D8(v55);
  v57 = *(v56 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v58);
  v59 = sub_22BE3100C();
  v60 = type metadata accessor for RequestContent.SystemPromptResolution.UserAction(v59);
  v61 = sub_22C18DFEC(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22BE19338();
  v97 = sub_22BE5CE4C(&qword_27D913128, &qword_22C2B8080);
  sub_22BE179D8(v97);
  v65 = *(v64 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v66);
  sub_22BE25CD0();
  v67 = *(v27 + 24);
  v68 = *(v27 + 32);
  v69 = sub_22BE18944();
  sub_22BE26950(v69, v70);
  sub_22C174FA8();
  sub_22BEC046C();
  sub_22C274234();
  sub_22BE23DA0();
  sub_22BE1A964(v98, v22);
  sub_22BE1B18C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE47DF4();
      v83(v23, v22, v92);
      sub_22C1751F4();
      v84 = v97;
      sub_22C18E550();
      sub_22C273EE4();
      sub_22BE18720();
      sub_22BE20458(v85);
      sub_22C273FA4();
      sub_22BE363F8();
      v86 = sub_22BE392D4();
      v87(v86);
      (*(v91 + 8))(v23, v92);
      goto LABEL_9;
    case 2u:
      v79 = *v22;
      sub_22C1751A0();
      sub_22BE261D0();
      sub_22C273EE4();
      v78 = v93;
      sub_22C18F834();
      sub_22C273F64();
      goto LABEL_6;
    case 3u:
      v80 = *v22;
      sub_22C18E900();
      sub_22C17514C();
      sub_22BE261D0();
      sub_22C273EE4();
      v78 = v95;
      sub_22C18F834();
      sub_22C273F94();
      goto LABEL_6;
    case 4u:
      v77 = *v22;
      sub_22C1750A4();
      sub_22BE261D0();
      sub_22C273EE4();
      sub_22C1750F8();
      v78 = v96;
      sub_22C18F834();
      sub_22C273FA4();
LABEL_6:
      v81 = sub_22BE39058();
      v82(v81, v78);
      v74 = sub_22BE38A68();
      break;
    case 5u:
      sub_22C18F67C();
      sub_22C174FFC();
      v84 = v97;
      sub_22C18E550();
      sub_22C273EE4();
      sub_22C175050();
      sub_22C18FD0C();
      sub_22C273FA4();
      v88 = sub_22BE39058();
      v89(v88, v21);
LABEL_9:
      v74 = sub_22C18E418();
      v76 = v84;
      break;
    default:
      v71 = *v22;
      sub_22C175248();
      sub_22C18E6C4();
      sub_22C273EE4();
      sub_22C273F64();
      v72 = sub_22BE194B4(&a18);
      v73(v72, v55);
      v74 = sub_22C18E418();
      v76 = v97;
      break;
  }

  v75(v74, v76);
  sub_22BEE94B0();
  sub_22BE18478();
}

void RequestContent.SystemPromptResolution.UserAction.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22BE19130();
  a21 = v28;
  a22 = v29;
  sub_22C18F874();
  v170 = v30;
  v164 = sub_22BE5CE4C(&qword_27D913178, &qword_22C2B8088);
  sub_22BE179D8(v164);
  v171 = v31;
  v33 = *(v32 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE2C638(v35, v153);
  v163 = sub_22BE5CE4C(&qword_27D913180, &qword_22C2B8090);
  sub_22BE179D8(v163);
  v169 = v36;
  v38 = *(v37 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE33FF0(v40, v153);
  v162 = sub_22BE5CE4C(&qword_27D913188, &qword_22C2B8098);
  sub_22BE179D8(v162);
  v168 = v41;
  v43 = *(v42 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v44);
  sub_22C18E344(v45);
  v46 = sub_22BE5CE4C(&qword_27D913190, &qword_22C2B80A0);
  sub_22BE18910(v46, &a18);
  v167 = v47;
  v49 = *(v48 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v50);
  sub_22C18E504(v51);
  v52 = sub_22BE5CE4C(&qword_27D913198, &qword_22C2B80A8);
  sub_22BE18910(v52, &a20);
  v166 = v53;
  v55 = *(v54 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v56);
  sub_22BE20168(v57, v153);
  v58 = sub_22BE5CE4C(&qword_27D9131A0, &qword_22C2B80B0);
  sub_22BE18910(v58, &a19);
  v165 = v59;
  v61 = *(v60 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v62);
  sub_22BE3C048(v63, v153);
  v174 = sub_22BE5CE4C(&qword_27D9131A8, &qword_22C2B80B8);
  sub_22BE179D8(v174);
  v173 = v64;
  v66 = *(v65 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v67);
  sub_22BE25CD0();
  v172 = type metadata accessor for RequestContent.SystemPromptResolution.UserAction(0);
  v68 = sub_22BE18000(v172);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v71);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v72);
  sub_22BE23858();
  MEMORY[0x28223BE20](v73);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v74);
  sub_22BE27A50();
  MEMORY[0x28223BE20](v75);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v76);
  v78 = &v153 - v77;
  v79 = v23[3];
  v80 = v23[4];
  v175 = v23;
  sub_22BE31088(v23);
  sub_22C174FA8();
  sub_22BEC046C();
  v81 = v176;
  sub_22C274214();
  if (!v81)
  {
    v155 = v24;
    v159 = v27;
    v156 = v26;
    v157 = v22;
    v158 = v78;
    v82 = v174;
    v176 = v25;
    v83 = sub_22C273ED4();
    sub_22BE7C5C4(v83, 0);
    if (v85 != v84 >> 1)
    {
      sub_22BE38A18();
      v154 = 0;
      sub_22BE3E9D8();
      if (v92 == v93)
      {
        __break(1u);
        return;
      }

      v94 = v82;
      v153 = *(v91 + v90);
      v95 = sub_22C18F7D4(v86, v87, v88, v89, v90);
      sub_22BE7C5C0(v95);
      v97 = v96;
      v99 = v98;
      swift_unknownObjectRelease();
      v100 = v171;
      v101 = v159;
      if (v97 == v99 >> 1)
      {
        v102 = v154;
        switch(v153)
        {
          case 1:
            sub_22C1751F4();
            sub_22BE1B934();
            sub_22C273DE4();
            if (v102)
            {
              v116 = sub_22BE1A194();
              v117(v116, v94);
              swift_unknownObjectRelease();
              goto LABEL_9;
            }

            sub_22C272874();
            sub_22BE18720();
            sub_22BE20458(v118);
            sub_22BE3C6E0(&a13);
            v119 = v161;
            sub_22BE27B84();
            sub_22BE36514();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v140 = sub_22BE3408C();
            v141(v140, v119);
            sub_22BE37778();
            v142(v176, v94);
            swift_storeEnumTagMultiPayload();
            sub_22BE3E31C();
            goto LABEL_19;
          case 2:
            sub_22C1751A0();
            sub_22BE1B934();
            sub_22BE36514();
            sub_22C273DE4();
            sub_22BE37B14(&a18);
            v125 = sub_22C273E74();
            swift_unknownObjectRelease();
            sub_22BE363F8();
            v126 = sub_22BE3CEF4();
            v127(v126);
            v128 = sub_22BE3408C();
            v129(v128, v94);
            *v101 = v125 & 1;
            sub_22C18F704();
            goto LABEL_18;
          case 3:
            sub_22C18E900();
            sub_22C17514C();
            sub_22BE1B934();
            sub_22C18F6A0();
            sub_22BE36514();
            v130 = sub_22C273EA4();
            swift_unknownObjectRelease();
            v131 = sub_22C18E474();
            v132(v131);
            sub_22BE37778();
            v133 = sub_22BE3CC34();
            v134(v133);
            *v156 = v130;
            sub_22C18F704();
            goto LABEL_18;
          case 4:
            sub_22C1750A4();
            sub_22BE1B934();
            sub_22C18F6A0();
            sub_22C1752F0();
            sub_22BE27168();
            sub_22BE36514();
            sub_22C273EB4();
            v115 = v173;
            swift_unknownObjectRelease();
            v120 = sub_22C18E474();
            v121(v120);
            v122 = *(v115 + 8);
            v123 = sub_22BE3CC34();
            v124(v123);
            *v160 = a12;
            sub_22C18F704();
            goto LABEL_18;
          case 5:
            sub_22C18F67C();
            sub_22C174FFC();
            sub_22BE1B934();
            sub_22C18F6A0();
            sub_22C17529C();
            sub_22BE27168();
            sub_22BE36514();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v143 = *(v100 + 8);
            v144 = sub_22BE33BE8();
            v145(v144);
            sub_22BE37778();
            v146 = sub_22BE3CC34();
            v147(v146);
            sub_22C18F704();
            goto LABEL_18;
          default:
            sub_22C175248();
            sub_22BE1B934();
            sub_22C18F6A0();
            sub_22BE37B14(&a19);
            sub_22BE36514();
            v135 = sub_22C273E74();
            swift_unknownObjectRelease();
            v136 = sub_22C18E474();
            v137(v136);
            sub_22BE37778();
            v138 = sub_22BE3CC34();
            v139(v138);
            *v155 = v135 & 1;
            sub_22C18F704();
LABEL_18:
            swift_storeEnumTagMultiPayload();
            sub_22BE3E31C();
LABEL_19:
            sub_22BE22944(&a14);
            sub_22C171FA8(v148, v149);
            v150 = v175;
            sub_22BE3E31C();
            v151 = sub_22BE1B73C();
            sub_22C171FA8(v151, v152);
            v114 = v150;
            break;
        }

        goto LABEL_10;
      }
    }

    v103 = v172;
    sub_22C273B34();
    sub_22BE196B4();
    v105 = v104;
    v106 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v105 = v103;
    sub_22C273DF4();
    sub_22BE1A918();
    v107 = *MEMORY[0x277D84160];
    sub_22BE18994();
    v109 = *(v108 + 104);
    v110 = sub_22BE38608();
    v111(v110);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_22BE37778();
    v112 = sub_22BE1B73C();
    v113(v112);
  }

LABEL_9:
  v114 = v175;
LABEL_10:
  sub_22BE26B64(v114);
  sub_22BE467E4();
  sub_22BE18478();
}

unint64_t RequestContent.SystemPromptResolution.RequirementResolution.description.getter()
{
  v1 = *v0;
  sub_22C273AA4();

  sub_22BE25A74();
  if (v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x2318AB8D0](v2, v3);

  v4 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v4);
  return 0xD00000000000002ELL;
}

uint64_t sub_22C140FDC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x800000022C2D96A0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C14107C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C140FDC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C1410A8(uint64_t a1)
{
  v2 = sub_22C175344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1410E4(uint64_t a1)
{
  v2 = sub_22C175344();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestContent.SystemPromptResolution.RequirementResolution.encode(to:)()
{
  sub_22BE19130();
  v2 = v1;
  v3 = sub_22BE5CE4C(&qword_27D9131C0, &qword_22C2B80C0);
  sub_22BE1A3D8(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1B01C();
  v7 = *v0;
  v8 = v2[3];
  v9 = v2[4];
  sub_22BE3C0A8(v2);
  sub_22C175344();
  sub_22BE232E4();
  sub_22BE2BC6C();
  sub_22C274234();
  sub_22C18F374();
  sub_22C273F64();
  v10 = sub_22BE17B24();
  v11(v10);
  sub_22BE22978();
  sub_22BE18478();
}

void RequestContent.SystemPromptResolution.RequirementResolution.init(from:)()
{
  sub_22BE19130();
  v3 = v2;
  v5 = v4;
  v6 = sub_22BE5CE4C(&qword_27D9131D0, &qword_22C2B80C8);
  sub_22BE1A3D8(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE234F4();
  sub_22BE3763C();
  sub_22C175344();
  sub_22BE48270();
  sub_22BE2BC6C();
  sub_22C274214();
  if (!v0)
  {
    v10 = sub_22C273E74();
    v11 = sub_22C18E894();
    v12(v11, v1);
    *v5 = v10 & 1;
  }

  sub_22BE26B64(v3);
  sub_22BE467E4();
  sub_22BE18478();
}

uint64_t sub_22C14134C(uint64_t a1)
{
  v2 = sub_22C175398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C141388(uint64_t a1)
{
  v2 = sub_22C175398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C141408(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x800000022C2D9870 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6974634172657375 && a2 == 0xEA00000000006E6FLL;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7475706E69 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_22C274014();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_22C1415C0(char a1)
{
  result = 0x76456E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0x6974634172657375;
      break;
    case 3:
      result = 0x6E656D6574617473;
      break;
    case 4:
      result = 0x7475706E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C141694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C141408(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1416BC(uint64_t a1)
{
  v2 = sub_22C1753EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1416F8(uint64_t a1)
{
  v2 = sub_22C1753EC();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestContent.SystemPromptResolution.encode(to:)()
{
  sub_22BE19130();
  sub_22BE22950();
  v2 = sub_22BE5CE4C(&qword_27D9131E8, &qword_22C2B80D8);
  sub_22BE1BF18(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22C1753EC();
  sub_22BE25524();
  sub_22C18E810();
  sub_22C26E1D4();
  sub_22BE18B28();
  sub_22BE20458(v6);
  sub_22BE3EAFC();
  sub_22C273F34();
  if (!v0)
  {
    v7 = type metadata accessor for RequestContent.SystemPromptResolution(0);
    sub_22C18E864(v7);
    sub_22BE3EAFC();
    sub_22C273FA4();
    v8 = v1[6];
    sub_22BE200EC();
    type metadata accessor for RequestContent.SystemPromptResolution.UserAction(0);
    sub_22BE3BBAC();
    sub_22BE20458(v9);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273FA4();
    v10 = v1[7];
    sub_22C18E900();
    sub_22C26E684();
    sub_22BE18F44();
    sub_22BE20458(v11);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273FA4();
    v12 = v1[8];
    sub_22C18FDB8();
    type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
    sub_22BE308AC();
    sub_22BE20458(v13);
    sub_22C18FDD8();
    sub_22BE196CC();
    sub_22C273FA4();
  }

  v14 = sub_22BE47E18();
  v15(v14);
  sub_22BE467E4();
  sub_22BE18478();
}

void RequestContent.SystemPromptResolution.init(from:)()
{
  sub_22BE19130();
  v7 = v6;
  v62 = v8;
  v9 = type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
  v10 = sub_22BE18000(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v63 = v13;
  sub_22BE183BC();
  v14 = sub_22C26E684();
  v15 = sub_22BE179D8(v14);
  v67 = v16;
  v68 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE17A44();
  v64 = v19;
  v20 = sub_22BE183BC();
  v65 = type metadata accessor for RequestContent.SystemPromptResolution.UserAction(v20);
  v21 = sub_22BE18000(v65);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE17A44();
  sub_22BE183BC();
  v24 = sub_22C26E1D4();
  v25 = sub_22BE1A3D8(v24);
  v69 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE1955C();
  v29 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v29);
  v31 = *(v30 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE23E58();
  v70 = sub_22BE5CE4C(&qword_27D913208, &qword_22C2B80E0);
  sub_22BE179D8(v70);
  v66 = v33;
  v35 = *(v34 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  v37 = sub_22BE3100C();
  v38 = type metadata accessor for RequestContent.SystemPromptResolution(v37);
  v39 = sub_22BE29F40(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BE19338();
  sub_22BE3AE2C();
  sub_22BE19DC4(v42, v43, v44, v45);
  v71 = v0;
  v72 = v0[8];
  swift_storeEnumTagMultiPayload();
  v46 = v7[3];
  v47 = v7[4];
  v48 = sub_22BE18944();
  sub_22BE26950(v48, v49);
  sub_22C1753EC();
  sub_22BE23550();
  sub_22C274214();
  if (v1)
  {
    sub_22C18E934();
    sub_22BE26B64(v7);
    sub_22C18DC5C(v4, &qword_27D9082F0);
    if (v2)
    {
      (*(v69 + 8))(v4 + v71[5], v3);
      if (!v7)
      {
LABEL_5:
        if (!v46)
        {
LABEL_7:
          sub_22C18E070();
          goto LABEL_8;
        }

LABEL_6:
        (*(v67 + 8))(v4 + v71[7], v68);
        goto LABEL_7;
      }
    }

    else if (!v7)
    {
      goto LABEL_5;
    }

    v51 = v71[6];
    sub_22BE48E4C();
    sub_22C171FFC();
    if (!v46)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_22BE18B28();
  sub_22BE20458(v50);
  sub_22C18F97C();
  sub_22C273E44();
  sub_22BE1824C();
  sub_22BE2343C();
  sub_22BE33FE4();
  sub_22C18F97C();
  sub_22C273EB4();
  v52 = v71[5];
  sub_22C18FFB4();
  v54(v4 + v53, v5, v3);
  sub_22BE200EC();
  sub_22BE3BBAC();
  sub_22BE20458(v55);
  sub_22C18F614();
  sub_22C273EB4();
  v56 = v71[6];
  sub_22BE3E31C();
  v57 = sub_22C18FCC8();
  sub_22C171FA8(v57, v58);
  sub_22C18E900();
  sub_22BE18F44();
  sub_22BE20458(v59);
  sub_22C273EB4();
  (*(v67 + 32))(v4 + v71[7], v64, v68);
  sub_22C18FDB8();
  sub_22BE308AC();
  sub_22BE20458(v60);
  sub_22C273EB4();
  (*(v66 + 8))(v2, v70);
  sub_22C18E354();
  sub_22C172628(v63, v4 + v72);
  v61 = sub_22C1088E8();
  sub_22BE1A964(v61, v62);
  sub_22BE26B64(v7);
  sub_22C18E000();
LABEL_8:
  sub_22C171FFC();
  sub_22BE34134();
  sub_22BE18478();
}

uint64_t ExternalAgentRequest.rewriteMetadataEventID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ExternalAgentRequest(v0) + 20);
  return sub_22BE18504();
}

uint64_t ExternalAgentRequest.rewriteMetadataInlined.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for ExternalAgentRequest(v0);
  sub_22C18F4EC(v1);
  v3 = sub_22C18FDC4(v2);

  return sub_22BE3820C(v3, v4);
}

__n128 ExternalAgentRequest.rewriteMetadataInlined.setter(__int128 *a1)
{
  v3 = sub_22C18FE64(a1);
  v4 = (v2 + *(type metadata accessor for ExternalAgentRequest(v3) + 24));
  v5 = v4[2];
  sub_22BE37808(*v4, v4[1]);
  result = v7;
  *v4 = v7;
  v4[2] = v1;
  return result;
}

uint64_t ExternalAgentRequest.rewriteMetadataInlined.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ExternalAgentRequest(v0) + 24);
  return sub_22BE18504();
}

void ExternalAgentRequest.init(query:statementId:queryRewriteMetadataEventId:queryRewriteMetadataInlined:)()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_22BE18040();
  v12 = sub_22BE5CE4C(v10, v11);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE19E64();
  v16 = v1[2];
  sub_22BE37808(*v1, v1[1]);
  v17 = sub_22BE35838();
  sub_22C18DC5C(v17, v18);
  *v9 = v7;
  v9[1] = v5;
  v19 = type metadata accessor for RequestContent.TextContent(0);
  sub_22C18FA90(v19);
  v20 = sub_22C26E684();
  sub_22BE1834C(v20);
  (*(v21 + 32))(v1 + v9, v3);
  type metadata accessor for RequestContent(0);
  swift_storeEnumTagMultiPayload();
  sub_22C26E1D4();
  sub_22BE3AE2C();
  v26 = sub_22C18F17C(v22, v23, v24, v25);
  v27 = type metadata accessor for ExternalAgentRequest(v26);
  v28 = *(v27 + 20);
  sub_22BE3AE2C();
  sub_22BE19DC4(v29, v30, v31, v32);
  v33 = (v9 + *(v27 + 24));
  *v33 = 0;
  v33[1] = 0;
  v33[2] = 0;
  sub_22BE3BD64();
  sub_22BE2343C();
  v34 = v33[2];
  sub_22BE37808(*v33, v33[1]);
  *v33 = 0;
  v33[1] = 0;
  v33[2] = 0;
  sub_22BE1AABC();
}

void ExternalAgentRequest.init(speech:statementId:rewriteMetadataEventID:rewriteMetadataInlined:)()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_22BE2590C();
  v12 = sub_22BE5CE4C(v10, v11);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE23E58();
  v42 = *v1;
  sub_22C18F934(*(v1 + 2));
  v16 = sub_22C26EBC4();
  sub_22BE1A140();
  v20 = sub_22C18F17C(v17, v18, v19, v16);
  v21 = type metadata accessor for RequestContent.SpeechContent(v20);
  v22 = v21[7];
  sub_22BE1A140();
  sub_22BE19DC4(v23, v24, v25, v16);
  v26 = v21[5];
  sub_22BE1A140();
  sub_22BE19DC4(v27, v28, v29, v16);
  *v9 = v7;
  *(v9 + 1) = v5;
  sub_22C18FCEC();
  sub_22BE2343C();
  v30 = v21[6];
  v31 = sub_22C26E684();
  sub_22BE1834C(v31);
  (*(v32 + 32))(&v9[v30], v3);
  type metadata accessor for RequestContent(0);
  sub_22BE1ACEC();
  swift_storeEnumTagMultiPayload();
  v33 = type metadata accessor for ExternalAgentRequest(0);
  v34 = *(v33 + 20);
  sub_22C26E1D4();
  sub_22BE1A140();
  sub_22BE19DC4(v35, v36, v37, v38);
  v39 = &v9[*(v33 + 24)];
  *v39 = 0;
  v39[1] = 0;
  v39[2] = 0;
  sub_22BE2343C();
  v40 = v39[2];
  sub_22BE37808(*v39, v39[1]);
  *v39 = v42;
  v39[2] = v41;
  sub_22BE1AABC();
}

uint64_t sub_22C14243C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x800000022C2DBE30 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000016 && 0x800000022C2DA870 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22C14255C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C14243C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C142584(uint64_t a1)
{
  v2 = sub_22BE39770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1425C0(uint64_t a1)
{
  v2 = sub_22BE39770();

  return MEMORY[0x2821FE720](a1, v2);
}

void ExternalAgentRequest.init(from:)()
{
  sub_22BE19130();
  v3 = v2;
  v35 = v4;
  v5 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A8B4();
  v36 = type metadata accessor for RequestContent(0);
  v9 = sub_22BE18000(v36);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v37 = v12;
  v38 = sub_22BE5CE4C(&qword_27D913228, &qword_22C2B80F0);
  sub_22BE179D8(v38);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE24FD8();
  v17 = type metadata accessor for ExternalAgentRequest(v16);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE18DFC();
  v20 = *(v18 + 28);
  v21 = sub_22C26E1D4();
  v39 = v20;
  sub_22BE1A140();
  sub_22BE19DC4(v22, v23, v24, v21);
  v25 = (v1 + *(v18 + 32));
  *v25 = 0;
  v25[1] = 0;
  v25[2] = 0;
  v27 = v3[3];
  v26 = v3[4];
  sub_22BE2018C(v3);
  sub_22BE39770();
  sub_22BE3CCD4();
  sub_22C274214();
  if (v0)
  {
    sub_22BE26B64(v3);
    sub_22C18DC5C(v1 + v39, &qword_27D9082F0);
    v29 = v25[2];
    sub_22BE37808(*v25, v25[1]);
  }

  else
  {
    sub_22BE35880();
    sub_22BE20458(v28);
    sub_22C18F958();
    sub_22C18E59C();
    sub_22C273EB4();
    sub_22BE250EC();
    sub_22C171FA8(v37, v1);
    LOBYTE(v40) = 1;
    sub_22BE18B28();
    sub_22BE20458(v30);
    sub_22C18F958();
    sub_22C18E59C();
    sub_22C273E44();
    sub_22BE2343C();
    sub_22BE39E24();
    sub_22C173BC4();
    sub_22BE27168();
    sub_22BE36514();
    sub_22C273E44();
    sub_22C18FDFC();
    v31 = sub_22BE33BE8();
    v32(v31);
    v33 = v25[2];
    sub_22BE37808(*v25, v25[1]);
    *v25 = v40;
    v25[2] = v41;
    v34 = sub_22BE29370();
    sub_22BE1A964(v34, v35);
    sub_22BE26B64(v3);
    sub_22C0E9830();
    sub_22C171FFC();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void static RequestPrescribedPlan.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v27;
  a20 = v28;
  v124 = v29;
  v125 = v30;
  v31 = type metadata accessor for RequestPrescribedPlan.OpenTool(0);
  v32 = sub_22BE290A0(v31, &a18);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE17A44();
  v121 = v35;
  v36 = sub_22BE183BC();
  v37 = type metadata accessor for RequestPrescribedPlan(v36);
  v38 = sub_22BE18000(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BE17B98();
  v122 = v41;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v42);
  sub_22BE19490();
  v123 = v43;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v44);
  sub_22BE18094();
  MEMORY[0x28223BE20](v45);
  sub_22BE27A50();
  MEMORY[0x28223BE20](v46);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v47);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v48);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v49);
  sub_22BE2EDB8();
  v50 = sub_22BE5CE4C(&qword_27D913230, &qword_22C2B80F8);
  sub_22BE19448(v50);
  v52 = *(v51 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v53);
  sub_22BE23E58();
  v55 = v25 + *(v54 + 56);
  sub_22BE1A964(v124, v25);
  sub_22BE1A964(v125, v55);
  sub_22C0B1B94();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE23214();
      v100 = sub_22BE33BE8();
      sub_22BE1A964(v100, v101);
      v103 = *v21;
      v102 = v21[1];
      sub_22BE18040();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_36;
      }

      v104 = *v55;
      v105 = *(v55 + 8);
      if (v103 != v104 || v102 != v105)
      {
        sub_22BE200D4();
        sub_22C274014();
      }

      goto LABEL_45;
    case 2u:
      sub_22BE23214();
      v77 = sub_22BF6AC14();
      sub_22BE1A964(v77, v78);
      v79 = v22[1];
      v80 = v22[4];
      sub_22BE18040();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_35;
      }

      v81 = v22[3];
      v82 = *(v22 + 16);
      v83 = *v22;
      goto LABEL_27;
    case 3u:
      sub_22BE23214();
      v84 = sub_22BE1824C();
      sub_22BE1A964(v84, v85);
      v86 = v23[1];
      v87 = v23[4];
      v88 = v23[6];
      sub_22BE18040();
      if (swift_getEnumCaseMultiPayload() != 3)
      {

LABEL_35:

LABEL_36:

        goto LABEL_37;
      }

      v89 = v23[5];
      v90 = v23[3];
      v91 = *(v23 + 16);
      v92 = *v23;
      v93 = *v55;
      v94 = *(v55 + 8);
      v95 = *(v55 + 16);
      v96 = *(v55 + 24);
      v97 = *(v55 + 48);
      v132 = v92;
      v133 = v86;
      v134 = v91;
      v135 = v90;
      v136 = v87;
      v137 = v89;
      v138 = v88;
      v126 = v93;
      v127 = v94;
      LOBYTE(v128) = v95;
      v129 = v96;
      v130 = *(v55 + 32);
      v131 = v97;
      static RequestPrescribedPlan.ConvertTool.== infix(_:_:)();

LABEL_28:

LABEL_29:

      sub_22C18E058();
      sub_22C171FFC();
      break;
    case 4u:
      sub_22BE23214();
      v65 = sub_22BE3C968();
      sub_22BE1A964(v65, v66);
      v67 = v20[1];
      v68 = v20[4];
      sub_22BE18040();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_35;
      }

      v69 = v20[3];
      v70 = *(v20 + 16);
      v71 = *v20;
      v72 = *v55;
      v73 = *(v55 + 8);
      v74 = *(v55 + 16);
      v75 = *(v55 + 24);
      v76 = *(v55 + 32);
      v132 = v71;
      v133 = v67;
      v134 = v70;
      v135 = v69;
      v136 = v68;
      v126 = v72;
      v127 = v73;
      LOBYTE(v128) = v74;
      v129 = v75;
      *&v130 = v76;
      static RequestPrescribedPlan.DisplayTool.== infix(_:_:)(&v132, &v126);

      goto LABEL_29;
    case 5u:
      sub_22BE23214();
      v107 = sub_22BE3E79C();
      sub_22BE1A964(v107, v108);
      v79 = v26[1];
      v80 = v26[4];
      sub_22BE18040();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_35;
      }

      v81 = v26[3];
      v82 = *(v26 + 16);
      v83 = *v26;
LABEL_27:
      v109 = *v55;
      v110 = *(v55 + 8);
      v111 = *(v55 + 16);
      v112 = *(v55 + 24);
      v113 = *(v55 + 32);
      v132 = v83;
      v133 = v79;
      v134 = v82;
      v135 = v81;
      v136 = v80;
      v126 = v109;
      v127 = v110;
      LOBYTE(v128) = v111;
      v129 = v112;
      *&v130 = v113;
      static RequestPrescribedPlan.DisplayTool.== infix(_:_:)(&v132, &v126);

      goto LABEL_28;
    case 6u:
      sub_22BE23214();
      sub_22BE1A964(v25, v123);
      sub_22BE18040();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v114 = sub_22BE431F0();
        sub_22C171FA8(v114, v121);
        sub_22BE29454();
        if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
        {
          sub_22BE2ED7C(&a18);
          v116 = *(v123 + v115);
          v117 = *(v123 + v115 + 8);
          v118 = (v121 + v115);
          v119 = *v118;
          v120 = *(v118 + 8);
        }

        sub_22BE3D514();
        sub_22C171FFC();
        sub_22BE3D514();
        sub_22C171FFC();
LABEL_45:
        sub_22C18E058();
        sub_22C171FFC();
      }

      else
      {
        sub_22BE3D514();
        sub_22C171FFC();
LABEL_37:
        sub_22C18DC5C(v25, &qword_27D913230);
      }

      break;
    case 7u:
      sub_22BE23214();
      sub_22BE1A964(v25, v122);
      v98 = *v122;
      sub_22BE18040();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_37;
      }

      v99 = *(v55 + 8);
      if (*(v122 + 8))
      {
        *(v55 + 8);
      }

      else
      {
        *v55;
      }

      goto LABEL_45;
    default:
      sub_22BE23214();
      v56 = sub_22BF0AFB8();
      sub_22BE1A964(v56, v57);
      v59 = *v24;
      v58 = v24[1];
      v60 = *(v24 + 16);
      v61 = *(v24 + 17);
      sub_22BE18040();
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_36;
      }

      v62 = *(v55 + 16);
      v63 = *(v55 + 17);
      if (v59 == *v55 && v58 == *(v55 + 8))
      {
      }

      else
      {
        sub_22BE1AB74();
        sub_22BE3C8EC();
        sub_22BE417C8();
      }

      goto LABEL_45;
  }

  sub_22BE1B1B8();
  sub_22BE1AABC();
}

uint64_t static RequestPrescribedPlan.SearchTool.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_22C18E738(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 17);
  v6 = *(v2 + 16);
  v7 = *(v2 + 17);
  if (v1 == *v2 && *(v3 + 8) == *(v2 + 8))
  {
    if (v4 != v6)
    {
      return 0;
    }

    return v5 ^ v7 ^ 1u;
  }

  sub_22C274014();
  result = sub_22C18FA30();
  if ((v10 & 1) != 0 && ((v4 ^ v6) & 1) == 0)
  {
    return v5 ^ v7 ^ 1u;
  }

  return result;
}

void static RequestPrescribedPlan.ConvertTool.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22C18E738(v0);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  v9 = *(v2 + 16);
  v11 = *(v2 + 24);
  v10 = *(v2 + 32);
  v13 = *(v2 + 40);
  v12 = *(v2 + 48);
  if (v1 == *v2 && *(v3 + 8) == *(v2 + 8))
  {
    if (v4 != v9)
    {
      goto LABEL_25;
    }
  }

  else
  {
    sub_22C274014();
    sub_22C18FA30();
    if (v15 & 1) == 0 || ((v4 ^ v9))
    {
      goto LABEL_25;
    }
  }

  if (v6)
  {
    if (!v10)
    {
      goto LABEL_25;
    }

    if (v5 != v11 || v6 != v10)
    {
      sub_22BE29454();
      if ((sub_22C274014() & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  else if (v10)
  {
    goto LABEL_25;
  }

  if (v8 && v12 && (v7 != v13 || v8 != v12))
  {
    sub_22BE19454();
    sub_22C18F3BC();
  }

LABEL_25:
  sub_22BE1AABC();
}

uint64_t sub_22C143184(uint64_t a1)
{
  v1 = sub_22C18E738(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v2 + 16);
  v9 = *(v2 + 24);
  v8 = *(v2 + 32);
  if (v1 == *v2 && *(v3 + 8) == *(v2 + 8))
  {
    if (v4 != v7)
    {
      return 0;
    }

    goto LABEL_9;
  }

  sub_22C274014();
  result = sub_22C18FA30();
  if ((v12 & 1) != 0 && ((v4 ^ v7) & 1) == 0)
  {
LABEL_9:
    if (v6)
    {
      if (v8)
      {
        if (v5 == v9 && v6 == v8)
        {
          return 1;
        }

        sub_22BE19454();
        if (sub_22C18F3BC())
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t static RequestPrescribedPlan.OpenTool.== infix(_:_:)()
{
  sub_22BE18378();
  if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for RequestPrescribedPlan.OpenTool(0) + 20);
  v3 = *(v1 + v2 + 8);
  v4 = *(v0 + v2 + 8);
  if (v3)
  {
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_22BE35DEC();
    if (v6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t static RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_22C1432C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F54686372616573 && a2 == 0xEA00000000006C6FLL;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x800000022C2DA7B0 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C6F6F5474786574 && a2 == 0xE800000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x54747265766E6F63 && a2 == 0xEB000000006C6F6FLL;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x5479616C70736964 && a2 == 0xEB000000006C6F6FLL;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6764656C776F6E6BLL && a2 == 0xED00006C6F6F5465;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C6F6F546E65706FLL && a2 == 0xE800000000000000;
              if (v11 || (sub_22C274014() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000025 && 0x800000022C2DA810 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_22C274014();

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

uint64_t sub_22C143558(char a1)
{
  result = 0x6F54686372616573;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      v3 = 1954047348;
      goto LABEL_10;
    case 3:
      result = 0x54747265766E6F63;
      break;
    case 4:
      result = 0x5479616C70736964;
      break;
    case 5:
      result = 0x6764656C776F6E6BLL;
      break;
    case 6:
      v3 = 1852141679;
LABEL_10:
      result = v3 | 0x6C6F6F5400000000;
      break;
    case 7:
      result = 0xD000000000000025;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C14365C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1432C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C143684(uint64_t a1)
{
  v2 = sub_22C175440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1436C0(uint64_t a1)
{
  v2 = sub_22C175440();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1436FC(uint64_t a1)
{
  v2 = sub_22C1756E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C143738(uint64_t a1)
{
  v2 = sub_22C1756E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C143774(uint64_t a1)
{
  v2 = sub_22C175638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1437B0(uint64_t a1)
{
  v2 = sub_22C175638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1437EC(uint64_t a1)
{
  v2 = sub_22C175590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C143828(uint64_t a1)
{
  v2 = sub_22C175590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C143864(uint64_t a1)
{
  v2 = sub_22C175830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1438A0(uint64_t a1)
{
  v2 = sub_22C175830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1438DC(uint64_t a1)
{
  v2 = sub_22C175494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C143918(uint64_t a1)
{
  v2 = sub_22C175494();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C143954(uint64_t a1)
{
  v2 = sub_22C17553C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C143990(uint64_t a1)
{
  v2 = sub_22C17553C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1439CC(uint64_t a1)
{
  v2 = sub_22C1758D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C143A08(uint64_t a1)
{
  v2 = sub_22C1758D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C143A44(uint64_t a1)
{
  v2 = sub_22C175788();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C143A80(uint64_t a1)
{
  v2 = sub_22C175788();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestPrescribedPlan.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v24;
  a20 = v25;
  a10 = v21;
  v124 = v20;
  v27 = v26;
  v28 = sub_22BE5CE4C(&qword_27D913238, &qword_22C2B8100);
  v122 = sub_22BE179D8(v28);
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE1A174();
  sub_22BEC07BC(v32);
  v121 = sub_22BE5CE4C(&qword_27D913240, &qword_22C2B8108);
  sub_22BE179D8(v121);
  v34 = *(v33 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE1A174();
  v36 = sub_22BE183BC();
  v119 = type metadata accessor for RequestPrescribedPlan.OpenTool(v36);
  v37 = sub_22BE18000(v119);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22BE17A44();
  v120 = v40;
  v41 = sub_22BE5CE4C(&qword_27D913248, &qword_22C2B8110);
  v118 = sub_22BE179D8(v41);
  v43 = *(v42 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v44);
  sub_22BE39404(v45);
  v46 = sub_22BE5CE4C(&qword_27D913250, &qword_22C2B8118);
  sub_22BE18910(v46, &a17);
  v48 = *(v47 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v49);
  sub_22C18E4F0(v50);
  v51 = sub_22BE5CE4C(&qword_27D913258, &qword_22C2B8120);
  sub_22BE18910(v51, &a14);
  v53 = *(v52 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v54);
  sub_22BE1A174();
  sub_22BE190A8(v55);
  v56 = sub_22BE5CE4C(&qword_27D913260, &qword_22C2B8128);
  sub_22BE18910(v56, &a11);
  v58 = *(v57 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v59);
  sub_22BE1A174();
  sub_22BE190A8(v60);
  v61 = sub_22BE5CE4C(&qword_27D913268, &qword_22C2B8130);
  sub_22BE18910(v61, &v129);
  v63 = *(v62 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v64);
  sub_22BE1B72C();
  v65 = sub_22BE5CE4C(&qword_27D913270, &qword_22C2B8138);
  sub_22BE1A3D8(v65);
  v67 = *(v66 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v68);
  v69 = sub_22BE24FD8();
  v70 = type metadata accessor for RequestPrescribedPlan(v69);
  v71 = sub_22C18DFEC(v70);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  sub_22BE19338();
  v74 = sub_22BE5CE4C(&qword_27D913278, &qword_22C2B8140);
  v126 = sub_22BE179D8(v74);
  v76 = *(v75 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v77);
  sub_22BE19E64();
  v79 = v27[3];
  v78 = v27[4];
  sub_22BE41E84(v27);
  sub_22C175440();
  sub_22BE23550();
  sub_22C18FCB0();
  sub_22C274234();
  sub_22BE23214();
  sub_22BE1A964(v124, v23);
  sub_22BE1B18C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v106 = *v23;
      v105 = *(v23 + 8);
      sub_22C175830();
      sub_22C18E7F8();
      sub_22C273EE4();
      sub_22C175884();
      sub_22C18FF08(&v129);
      sub_22C273FA4();
      sub_22BE1B5D4(&v128);
      v107 = sub_22BE1B62C();
      v108(v107);
      v109 = sub_22BE2399C();
      v110(v109, v126);
      goto LABEL_11;
    case 2u:
      sub_22C18F824();
      sub_22C175788();
      sub_22BE28C80(&a9);
      sub_22BE42748();
      sub_22C273EE4();
      sub_22C18F814();
      sub_22C1757DC();
      sub_22BEC0400(&a11);
      sub_22C19021C();
      v88 = &a10;
      goto LABEL_5;
    case 3u:
      v90 = *(v23 + 8);
      v125 = *v23;
      v123 = *(v23 + 16);
      v92 = *(v23 + 24);
      v91 = *(v23 + 32);
      v94 = *(v23 + 40);
      v93 = *(v23 + 48);
      sub_22C1756E0();
      sub_22BE351B8(&a12);
      sub_22C18E7F8();
      sub_22C273EE4();
      v127 = v94;
      v128 = v93;
      sub_22C175734();
      sub_22C18FF08(&a14);
      sub_22C273FA4();
      v95 = sub_22BE3A530(&a13);
      v96(v95, v90);
      sub_22BE270B0();
      v97 = sub_22BE37490();
      v98(v97);

      goto LABEL_11;
    case 4u:
      sub_22C18F824();
      sub_22C175638();
      sub_22BE28C80(&a15);
      sub_22BE42748();
      sub_22C273EE4();
      sub_22C18F814();
      sub_22C17568C();
      sub_22BEC0400(&a17);
      sub_22C19021C();
      v88 = &a16;
LABEL_5:
      v89 = *(v88 - 32);
      goto LABEL_10;
    case 5u:
      sub_22C18F824();
      sub_22C175590();
      sub_22BE28C80(&a18);
      sub_22BE42748();
      sub_22C273EE4();
      sub_22C18F814();
      sub_22C1755E4();
      v22 = v118;
      sub_22C19021C();
LABEL_10:
      v111 = sub_22C11FDE0();
      v112(v111, v22);
      v113 = sub_22BE2B7E8();
      v114(v113);

      goto LABEL_11;
    case 6u:
      sub_22C171FA8(v23, v120);
      sub_22C17553C();
      sub_22BE3788C();
      sub_22C273EE4();
      sub_22C18EFA0();
      sub_22BE20458(v115);
      sub_22BE35E54();
      sub_22BE31290();
      sub_22C273FA4();
      v116 = sub_22BE35B0C();
      v117(v116);
      sub_22BE3D514();
      sub_22C171FFC();
      v103 = sub_22BE25EE4();
      goto LABEL_13;
    case 7u:
      v99 = *v23;
      v100 = *(v23 + 8);
      sub_22C175494();
      sub_22BE1B934();
      sub_22C273EE4();
      sub_22C1754E8();
      sub_22C190174();
      v101 = sub_22BE28D70();
      v102(v101, v122);
      v103 = sub_22BE35B0C();
LABEL_13:
      v104(v103);
      break;
    default:
      v81 = *v23;
      v80 = *(v23 + 8);
      v82 = *(v23 + 16);
      v83 = *(v23 + 17);
      sub_22C1758D8();
      sub_22C273EE4();
      sub_22C17592C();
      sub_22C273FA4();
      sub_22BE1B5D4(&v127);
      v84 = sub_22BF6AC14();
      v85(v84);
      v86 = sub_22C11FDE0();
      v87(v86, v126);
LABEL_11:

      break;
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void RequestPrescribedPlan.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v24;
  a20 = v25;
  a10 = v21;
  v27 = v26;
  v171 = v28;
  v29 = sub_22BE5CE4C(&qword_27D913308, &qword_22C2B8148);
  sub_22BE18910(v29, &a16);
  v173 = v30;
  v32 = *(v31 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE1A174();
  v34 = sub_22BE5CE4C(&qword_27D913310, &qword_22C2B8150);
  sub_22BE18910(v34, &a15);
  v172 = v35;
  v37 = *(v36 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE1A174();
  v39 = sub_22BE5CE4C(&qword_27D913318, &qword_22C2B8158);
  sub_22BE18910(v39, &a14);
  v41 = *(v40 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v42);
  sub_22BE1A174();
  v43 = sub_22BE5CE4C(&qword_27D913320, &qword_22C2B8160);
  sub_22BE18910(v43, &a13);
  v45 = *(v44 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v46);
  sub_22BE1A174();
  sub_22BF0AFA0(v47);
  v48 = sub_22BE5CE4C(&qword_27D913328, &qword_22C2B8168);
  sub_22BE18910(v48, &a12);
  v50 = *(v49 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v51);
  sub_22BE2C638(v52, v163);
  v53 = sub_22BE5CE4C(&qword_27D913330, &qword_22C2B8170);
  sub_22BE18910(v53, &a11);
  v55 = *(v54 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v56);
  sub_22BE33FF0(v57, v164);
  v58 = sub_22BE5CE4C(&qword_27D913338, &qword_22C2B8178);
  sub_22BE18910(v58, &a10);
  v60 = *(v59 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v61);
  sub_22BE39404(v62);
  v63 = sub_22BE5CE4C(&qword_27D913340, &qword_22C2B8180);
  sub_22BE18910(v63, &a9);
  v65 = *(v64 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v66);
  sub_22BE44798(v67);
  v68 = sub_22BE5CE4C(&qword_27D913348, &qword_22C2B8188);
  sub_22BE179D8(v68);
  v175 = v69;
  v71 = *(v70 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v72);
  v73 = sub_22BE3100C();
  v174 = type metadata accessor for RequestPrescribedPlan(v73);
  v74 = sub_22BE18000(v174);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v77);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v78);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v79);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v80);
  sub_22BE18094();
  MEMORY[0x28223BE20](v81);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v82);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v83);
  sub_22BE27A50();
  MEMORY[0x28223BE20](v84);
  sub_22BE181E4();
  v86 = *(v27 + 24);
  v85 = *(v27 + 32);
  v87 = sub_22C18FE2C();
  sub_22BE3C0A8(v87);
  sub_22C175440();
  sub_22BE23550();
  v88 = a10;
  sub_22C274214();
  if (!v88)
  {
    v165 = v20;
    a10 = v22;
    v89 = sub_22C273ED4();
    sub_22BE7C5C4(v89, 0);
    if (v91 == v90 >> 1)
    {
      v92 = v175;
    }

    else
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v95 == v96)
      {
        __break(1u);
        return;
      }

      v97 = *(v94 + v93);
      sub_22BE7C5C0(v93 + 1);
      v99 = v98;
      v101 = v100;
      swift_unknownObjectRelease();
      if (v99 == v101 >> 1)
      {
        switch(v97)
        {
          case 1:
            LOBYTE(v178) = 1;
            sub_22C175830();
            sub_22BE236D4(&a18);
            sub_22C18E5EC();
            sub_22C175B24();
            sub_22BE1B934();
            sub_22C190204();
            sub_22C18F398();
            swift_unknownObjectRelease();
            v146 = sub_22BE2C65C(v180);
            v147(v146);
            v148 = sub_22BE1B264();
            v149(v148);
            v150 = v179;
            v142 = v23;
            *v23 = v178;
            v23[1] = v150;
            sub_22C18F4D4();
            goto LABEL_20;
          case 2:
            sub_22C175788();
            sub_22C18E5EC();
            sub_22C175AD0();
            v142 = v167;
            sub_22BE3788C();
            sub_22C190204();
            sub_22C18F398();
            swift_unknownObjectRelease();
            v121 = sub_22BE3D13C(&v181);
            v122(v121);
            v123 = sub_22BE1B264();
            v124(v123);
            sub_22C18F8F8();
            sub_22C18E524(v125);
            sub_22C18F4D4();
            goto LABEL_20;
          case 3:
            sub_22C1756E0();
            sub_22C18E5EC();
            sub_22C175A7C();
            v142 = v168;
            sub_22BE3788C();
            sub_22BE285D4();
            sub_22C273EB4();
            sub_22C18F398();
            swift_unknownObjectRelease();
            v126 = sub_22BE19698(&v182);
            v127(v126);
            v128 = sub_22BE1B264();
            v129(v128);
            sub_22C18F8F8();
            sub_22C18E524(v130);
            *(v168 + 40) = v183;
            sub_22C18F4D4();
            goto LABEL_20;
          case 4:
            sub_22C175638();
            sub_22C18E5EC();
            sub_22C175A28();
            v142 = v169;
            sub_22C18E550();
            sub_22C273EB4();
            sub_22C18F398();
            swift_unknownObjectRelease();
            sub_22BE1B5D4(&v183);
            v116 = sub_22BE200D4();
            v117(v116);
            v118 = sub_22BE1B264();
            v119(v118);
            sub_22C18F8F8();
            sub_22C18E524(v120);
            sub_22C18F4D4();
            goto LABEL_20;
          case 5:
            sub_22C175590();
            sub_22C18E5EC();
            sub_22C1759D4();
            v142 = v170;
            sub_22C18E550();
            sub_22C273EB4();
            sub_22C18F398();
            swift_unknownObjectRelease();
            sub_22BE1B5D4(&v183 + 8);
            v151 = sub_22BE200D4();
            v152(v151);
            v153 = sub_22BE1B264();
            v154(v153);
            sub_22C18F8F8();
            sub_22C18E524(v155);
            sub_22C18F4D4();
            goto LABEL_20;
          case 6:
            sub_22C17553C();
            sub_22C18E5EC();
            type metadata accessor for RequestPrescribedPlan.OpenTool(0);
            sub_22C18EFA0();
            sub_22BE20458(v114);
            sub_22C18EBD4();
            sub_22BE236D4(v115);
            sub_22BE489D4();
            sub_22BE285D4();
            sub_22C273EB4();
            sub_22C18F398();
            swift_unknownObjectRelease();
            v157 = *(v172 + 8);
            v158 = sub_22BE2684C();
            v159(v158);
            v160 = sub_22BE1B264();
            v161(v160);
            swift_storeEnumTagMultiPayload();
            sub_22BE3A270();
            v162 = v176;
            goto LABEL_21;
          case 7:
            LOBYTE(v178) = 7;
            sub_22C175494();
            sub_22C18E5EC();
            sub_22C175980();
            sub_22BE3788C();
            sub_22C190204();
            sub_22C18F398();
            swift_unknownObjectRelease();
            v131 = *(v173 + 8);
            v132 = sub_22BE291B0();
            v133(v132);
            v134 = sub_22BE1B264();
            v135(v134);
            v136 = v179;
            v142 = v166;
            *v166 = v178;
            *(v166 + 8) = v136;
            sub_22C18F4D4();
            goto LABEL_20;
          default:
            sub_22C1758D8();
            sub_22BE236D4(&a17);
            sub_22C18E5EC();
            sub_22C175B78();
            sub_22BE1B934();
            sub_22C190204();
            sub_22C18F398();
            swift_unknownObjectRelease();
            v137 = sub_22BE2C65C(&v179);
            v138(v137);
            v139 = sub_22BE1B264();
            v140(v139);
            sub_22C18F8F8();
            v141 = v180[1];
            v142 = v165;
            *v165 = v143;
            *(v165 + 8) = v144;
            *(v165 + 16) = v145;
            *(v165 + 17) = v141;
            sub_22C18F4D4();
LABEL_20:
            swift_storeEnumTagMultiPayload();
            sub_22BE3A270();
            v162 = v142;
LABEL_21:
            v156 = a10;
            sub_22C171FA8(v162, a10);
            sub_22BE3A270();
            sub_22C171FA8(v156, v171);
            v113 = v177;
            break;
        }

        goto LABEL_12;
      }

      v92 = v175;
    }

    sub_22C273B34();
    sub_22BE196B4();
    v103 = v102;
    v104 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v103 = v174;
    sub_22C273DF4();
    sub_22BE1A918();
    v105 = *MEMORY[0x277D84160];
    sub_22BE18994();
    v107 = *(v106 + 104);
    v108 = sub_22BE38608();
    v109(v108);
    swift_willThrow();
    swift_unknownObjectRelease();
    v110 = *(v92 + 8);
    v111 = sub_22BE3E8FC();
    v112(v111);
  }

  v113 = v177;
LABEL_12:
  sub_22BE26B64(v113);
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t RequestPrescribedPlan.SearchTool.query.setter()
{
  sub_22BE1A8A8();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_22C14529C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x800000022C2D3850 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001CLL && 0x800000022C2D3870 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22C1453B4(char a1)
{
  if (!a1)
  {
    return 0x7972657571;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 0xD00000000000001CLL;
}

uint64_t sub_22C145414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C14529C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C14543C(uint64_t a1)
{
  v2 = sub_22C175BCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C145478(uint64_t a1)
{
  v2 = sub_22C175BCC();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestPrescribedPlan.SearchTool.encode(to:)()
{
  sub_22BE19130();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D913390, &qword_22C2B8190);
  sub_22BE1A3D8(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE19E64();
  v8 = *v0;
  v9 = v0[1];
  v15 = *(v0 + 16);
  v14 = *(v0 + 17);
  v10 = v3[3];
  v11 = v3[4];
  sub_22BE31088(v3);
  sub_22C175BCC();
  sub_22BE23550();
  sub_22C274234();
  sub_22C18E9AC();
  sub_22BE3E79C();
  sub_22C18F5FC();
  sub_22C273F54();
  if (!v1)
  {
    sub_22BE33FE4();
    sub_22BE39020();
    sub_22C273F64();
    sub_22BE200EC();
    sub_22BE39020();
    sub_22C273F64();
  }

  v12 = sub_22C18E748();
  v13(v12);
  sub_22BE35D48();
  sub_22BE18478();
}

void RequestPrescribedPlan.SearchTool.init(from:)()
{
  sub_22BE19130();
  sub_22C18F140();
  v5 = v4;
  v6 = sub_22BE5CE4C(&qword_27D9133A0, &qword_22C2B8198);
  sub_22BE1A3D8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE234F4();
  sub_22BE3763C();
  sub_22C175BCC();
  sub_22BE33A2C();
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18EA24();
    sub_22BE416D4();
    sub_22C273E64();
    sub_22C18F4BC();
    sub_22BE2315C();
    sub_22BE416D4();
    v16 = sub_22C273E74();
    sub_22BE200EC();
    sub_22BE416D4();
    v12 = sub_22C273E74();
    v13 = *(v8 + 8);
    v14 = sub_22BE33560();
    v15(v14);
    *v5 = v3;
    *(v5 + 8) = v2;
    *(v5 + 16) = v16 & 1;
    *(v5 + 17) = v12 & 1;

    sub_22BE26B64(v0);
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t sub_22C1457F0(uint64_t a1)
{
  v2 = sub_22C175C20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14582C(uint64_t a1)
{
  v2 = sub_22C175C20();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestPrescribedPlan.LowConfidenceKnowledgeTool.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F3A4();
  v0 = sub_22BE5CE4C(&qword_27D9133A8, &qword_22C2B81A0);
  sub_22BE1A3D8(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1B01C();
  sub_22BE3AD08();
  sub_22C175C20();
  sub_22BE3A014();
  sub_22C18E100();
  sub_22C273F54();
  v4 = sub_22BE35CD8();
  v5(v4);
  sub_22BE22978();
  sub_22BE18478();
}

void __swiftcall RequestPrescribedPlan.TextTool.init(query:isExplicit:)(IntelligenceFlowPlannerSupport::RequestPrescribedPlan::TextTool *__return_ptr retstr, Swift::String query, Swift::Bool isExplicit)
{
  retstr->partner.value._countAndFlagsBits = 0;
  retstr->partner.value._object = 0;
  sub_22C18FB10(query._countAndFlagsBits, query._object, isExplicit, retstr);
}

uint64_t sub_22C1459FC(uint64_t a1)
{
  v2 = sub_22C175C74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C145A38(uint64_t a1)
{
  v2 = sub_22C175C74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RequestPrescribedPlan.ConvertTool.query.setter()
{
  sub_22BE1A8A8();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RequestPrescribedPlan.ConvertTool.partner.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_22BE19454();
}

uint64_t RequestPrescribedPlan.ConvertTool.partner.setter()
{
  sub_22BE1A8A8();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t RequestPrescribedPlan.ConvertTool.directInvocationClient.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_22BE19454();
}

uint64_t RequestPrescribedPlan.ConvertTool.directInvocationClient.setter()
{
  sub_22BE1A8A8();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

void __swiftcall RequestPrescribedPlan.ConvertTool.init(query:isExplicit:)(IntelligenceFlowPlannerSupport::RequestPrescribedPlan::ConvertTool *__return_ptr retstr, Swift::String query, Swift::Bool isExplicit)
{
  retstr->directInvocationClient = 0u;
  retstr->partner = 0u;
  sub_22C18FB10(query._countAndFlagsBits, query._object, isExplicit, retstr);
}

void __swiftcall RequestPrescribedPlan.ConvertTool.init(query:isExplicit:partner:)(IntelligenceFlowPlannerSupport::RequestPrescribedPlan::ConvertTool *__return_ptr retstr, Swift::String query, Swift::Bool isExplicit, Swift::String_optional partner)
{
  retstr->directInvocationClient.value._countAndFlagsBits = 0;
  retstr->directInvocationClient.value._object = 0;
  _s30IntelligenceFlowPlannerSupport21RequestPrescribedPlanO11DisplayToolV5query10isExplicit7partnerAESS_SbSSSgtcfC_0(query._countAndFlagsBits, query._object, isExplicit, partner.value._countAndFlagsBits, partner.value._object, retstr);
}

uint64_t sub_22C145CAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x63696C7078457369 && a2 == 0xEA00000000007469;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72656E74726170 && a2 == 0xE700000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000016 && 0x800000022C2DA790 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_22C145E10(char a1)
{
  result = 0x7972657571;
  switch(a1)
  {
    case 1:
      result = 0x63696C7078457369;
      break;
    case 2:
      result = 0x72656E74726170;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C145EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C145CAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C145EC8(uint64_t a1)
{
  v2 = sub_22C175CC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C145F04(uint64_t a1)
{
  v2 = sub_22C175CC8();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestPrescribedPlan.ConvertTool.encode(to:)()
{
  sub_22BE19130();
  sub_22C18FEB8();
  v2 = sub_22BE5CE4C(&qword_27D9133D8, &qword_22C2B81C0);
  sub_22BE179D8(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE19E64();
  sub_22C18FEA4();
  v9 = *(v0 + 48);
  v10 = *(v0 + 40);
  v6 = sub_22C18FE98();
  sub_22BE25318(v6);
  sub_22C175CC8();
  sub_22BE23550();
  sub_22BEE94BC();
  sub_22C274234();
  sub_22C18E9AC();
  sub_22C18E494();
  sub_22C273F54();
  if (!v1)
  {
    sub_22BE33FE4();
    sub_22BE39020();
    sub_22C273F64();
    sub_22BE200EC();
    sub_22BE3E79C();
    sub_22C18E514();
    sub_22C273EF4();
    sub_22C18E900();
    sub_22C18E494();
    sub_22C273EF4();
  }

  v7 = sub_22C18E748();
  v8(v7);
  sub_22BE35D48();
  sub_22BE18478();
}

void RequestPrescribedPlan.ConvertTool.init(from:)()
{
  sub_22BE19130();
  sub_22C18F140();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D9133E8, &qword_22C2B81C8);
  sub_22BE1A3D8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1A8B4();
  v10 = v0[3];
  v11 = v0[4];
  sub_22BE31088(v0);
  sub_22C175CC8();
  sub_22BEE939C();
  sub_22C274214();
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18EA24();
    sub_22C18E5BC();
    v12 = sub_22C273E64();
    v14 = v13;
    sub_22BE2315C();
    sub_22C18E5BC();
    v25 = sub_22C273E74();
    sub_22BE200EC();
    sub_22C18E5BC();
    v23 = sub_22C273E04();
    v24 = v15;
    sub_22C18E900();
    sub_22C18E5BC();
    v16 = sub_22C273E04();
    v18 = v17;
    v19 = *(v6 + 8);
    v22 = v16;
    v20 = sub_22BE38FD8();
    v21(v20);
    *v3 = v12;
    *(v3 + 8) = v14;
    *(v3 + 16) = v25 & 1;
    *(v3 + 24) = v23;
    *(v3 + 32) = v24;
    *(v3 + 40) = v22;
    *(v3 + 48) = v18;

    sub_22C18E8D8();
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t RequestPrescribedPlan.DisplayTool.query.setter()
{
  sub_22BE1A8A8();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RequestPrescribedPlan.DisplayTool.partner.setter()
{
  sub_22BE1A8A8();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t sub_22C1463B4(uint64_t a1)
{
  v2 = sub_22C175D1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1463F0(uint64_t a1)
{
  v2 = sub_22C175D1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C146514()
{
  sub_22BE18378();
  v3 = v1 == 0x7972657571 && v2 == 0xE500000000000000;
  if (v3 || (sub_22BE2BC78() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x63696C7078457369 && v0 == 0xEA00000000007469;
    if (v5 || (sub_22BE2BC78() & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0x72656E74726170 && v0 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      sub_22BE2BC78();
      sub_22BE417C8();
      if (v1)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22C146604(uint64_t a1)
{
  v2 = sub_22C175D70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C146640(uint64_t a1)
{
  v2 = sub_22C175D70();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22C1466B0()
{
  sub_22BE19130();
  v16 = v1;
  v3 = v2;
  v5 = sub_22BE34074(v2, v4);
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE179D8(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE19E64();
  sub_22C18FEA4();
  v11 = v3[3];
  v12 = v3[4];
  v13 = sub_22C18E560(v3);
  v16(v13);
  sub_22C274234();
  sub_22C18E9AC();
  sub_22C18E494();
  sub_22C273F54();
  if (!v0)
  {
    sub_22BE33FE4();
    sub_22BE39020();
    sub_22C273F64();
    sub_22BE200EC();
    sub_22C18E494();
    sub_22C273EF4();
  }

  v14 = sub_22C18E748();
  v15(v14);
  sub_22BE35D48();
  sub_22BE18478();
}

void sub_22C146820()
{
  sub_22BE19130();
  v4 = v3;
  sub_22C18F0F4();
  v22 = v5;
  v8 = sub_22BE34074(v6, v7);
  v23 = sub_22BE5CE4C(v8, v9);
  sub_22BE179D8(v23);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE234F4();
  v15 = v0[3];
  v16 = v0[4];
  v17 = sub_22BE25318(v0);
  v4(v17);
  sub_22BEE94BC();
  sub_22C274214();
  if (v2)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18E4BC();
    sub_22C273E64();
    sub_22C18F4BC();
    sub_22BE2315C();
    sub_22BE23070();
    v24 = sub_22C273E74();
    sub_22BE200EC();
    sub_22BE23070();
    v18 = sub_22C273E04();
    v20 = v19;
    v21 = v18;
    (*(v11 + 8))(v1, v23);
    *v22 = v15;
    *(v22 + 8) = 0;
    *(v22 + 16) = v24 & 1;
    *(v22 + 24) = v21;
    *(v22 + 32) = v20;

    sub_22C18E8D8();
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t RequestPrescribedPlan.OpenTool.elementAtIndex.getter()
{
  v1 = (v0 + *(type metadata accessor for RequestPrescribedPlan.OpenTool(0) + 20));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

void RequestPrescribedPlan.OpenTool.elementAtIndex.setter()
{
  v0 = sub_22BE2021C();
  v1 = type metadata accessor for RequestPrescribedPlan.OpenTool(v0);
  sub_22BE1AC84(*(v1 + 20));
}

uint64_t RequestPrescribedPlan.OpenTool.elementAtIndex.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for RequestPrescribedPlan.OpenTool(v0) + 20);
  return sub_22BE18504();
}

uint64_t sub_22C146ADC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000022C2D9390 == a2;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x41746E656D656C65 && a2 == 0xEE007865646E4974)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C146BB4(char a1)
{
  if (a1)
  {
    return 0x41746E656D656C65;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_22C146C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C146ADC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C146C2C(uint64_t a1)
{
  v2 = sub_22C175DC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C146C68(uint64_t a1)
{
  v2 = sub_22C175DC4();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestPrescribedPlan.OpenTool.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  v2 = sub_22BE5CE4C(&qword_27D913420, &qword_22C2B81F0);
  sub_22BE1BF18(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22C175DC4();
  sub_22BE25524();
  sub_22C18E810();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v6);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    v7 = (v1 + *(type metadata accessor for RequestPrescribedPlan.OpenTool(0) + 20));
    v8 = *v7;
    v9 = *(v7 + 8);
    sub_22BE42570();
    sub_22C273F24();
  }

  v10 = sub_22BE37A10();
  v11(v10);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void RequestPrescribedPlan.OpenTool.init(from:)()
{
  sub_22BE19130();
  sub_22C18F0B0();
  sub_22C18F934(v3);
  v4 = sub_22C26E684();
  v5 = sub_22BE179D8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE28FD8();
  v28 = sub_22BE5CE4C(&qword_27D913430, &qword_22C2B81F8);
  sub_22BE179D8(v28);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE24FD8();
  v12 = type metadata accessor for RequestPrescribedPlan.OpenTool(v11);
  v13 = sub_22BE18000(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE18DFC();
  v17 = v0[3];
  v16 = v0[4];
  sub_22BE3C0A8(v0);
  sub_22C175DC4();
  sub_22BE3CCD4();
  sub_22C18F8EC();
  sub_22C274214();
  if (v2)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22BE18F44();
    sub_22BE20458(v18);
    sub_22BEE92A4();
    sub_22BE362A8();
    sub_22C273EB4();
    sub_22BE286F0();
    sub_22C18F9C4();
    v19();
    sub_22BE2315C();
    sub_22BE36350();
    v20 = sub_22C273E34();
    v22 = v21;
    v23 = v1 + *(v12 + 20);
    v24 = sub_22BEE9178();
    v25(v24, v28);
    *v23 = v20;
    *(v23 + 8) = v22 & 1;
    v26 = sub_22BE29370();
    sub_22BE1A964(v26, v27);
    sub_22BE26B64(v0);
    sub_22BE3D514();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.elementAtIndex.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.elementAtIndex.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_22C1470DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x41746E656D656C65 && a2 == 0xEE007865646E4974)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C147184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1470DC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C1471B0(uint64_t a1)
{
  v2 = sub_22C175E18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1471EC(uint64_t a1)
{
  v2 = sub_22C175E18();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F3A4();
  v2 = sub_22BE5CE4C(&qword_27D913438, &qword_22C2B8200);
  sub_22BE1A3D8(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1B01C();
  v6 = *v0;
  v7 = *(v0 + 8);
  v8 = v1[3];
  v9 = v1[4];
  sub_22BE25318(v1);
  sub_22C175E18();
  sub_22BE3A014();
  sub_22BE31290();
  sub_22C273F24();
  v10 = sub_22BE35CD8();
  v11(v10);
  sub_22BE22978();
  sub_22BE18478();
}

void RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.init(from:)()
{
  sub_22BE19130();
  sub_22C18E778();
  v3 = sub_22BE5CE4C(&qword_27D913448, &qword_22C2B8208);
  sub_22BE1A3D8(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1B01C();
  sub_22BE3763C();
  sub_22C175E18();
  sub_22BE18878();
  if (!v1)
  {
    sub_22C18F368();
    v7 = sub_22C273E34();
    v9 = v8;
    v10 = sub_22BE17B24();
    v11(v10);
    *v2 = v7;
    *(v2 + 8) = v9 & 1;
  }

  sub_22BE26B64(v0);
  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t sub_22C14746C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C1474F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C14746C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C147524(uint64_t a1)
{
  v2 = sub_22C175E6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C147560(uint64_t a1)
{
  v2 = sub_22C175E6C();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestSuggestedInvocation.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F3A4();
  v0 = sub_22BE5CE4C(&qword_27D913450, &qword_22C2B8210);
  sub_22BE1A3D8(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1B01C();
  sub_22BE3AD08();
  sub_22C175E6C();
  sub_22BE3A014();
  sub_22C18E100();
  sub_22C273F54();
  v4 = sub_22BE35CD8();
  v5(v4);
  sub_22BE22978();
  sub_22BE18478();
}

uint64_t ProgramStatement.expression.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ProgramStatement(v0) + 20);
  return sub_22BE18504();
}

uint64_t ProgramStatement.isRoot.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for ProgramStatement(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t ProgramStatement.isRoot.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ProgramStatement(v0) + 24);
  return sub_22BE18504();
}

uint64_t ProgramStatement.isExpanded.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for ProgramStatement(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t ProgramStatement.isExpanded.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ProgramStatement(v0) + 28);
  return sub_22BE18504();
}

uint64_t ProgramStatement.canonicalIndex.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for ProgramStatement(v2);
  v4 = v1 + *(result + 32);
  *v4 = v0;
  *(v4 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t ProgramStatement.canonicalIndex.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ProgramStatement(v0) + 32);
  return sub_22BE18504();
}

void ProgramStatement.executionSupportType.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for ProgramStatement(v0);
  sub_22C18F688(*(v1 + 36));
}

uint64_t ProgramStatement.executionSupportType.setter(unsigned __int8 *a1)
{
  v3 = sub_22C18F9E8(a1);
  result = type metadata accessor for ProgramStatement(v3);
  *(v2 + *(result + 36)) = v1;
  return result;
}

uint64_t ProgramStatement.executionSupportType.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ProgramStatement(v0) + 36);
  return sub_22BE18504();
}

uint64_t sub_22C147A30@<X0>(uint64_t *a1@<X8>)
{
  result = ProgramStatement.ExecutionSupportType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22C147C1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6973736572707865 && a2 == 0xEA00000000006E6FLL;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746F6F527369 && a2 == 0xE600000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x646E617078457369 && a2 == 0xEA00000000006465;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6163696E6F6E6163 && a2 == 0xEE007865646E496CLL;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000014 && 0x800000022C2D9370 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_22C274014();

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

unint64_t sub_22C147E1C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6973736572707865;
      break;
    case 2:
      result = 0x746F6F527369;
      break;
    case 3:
      result = 0x646E617078457369;
      break;
    case 4:
      result = 0x6163696E6F6E6163;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C147EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C147C1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C147F10(uint64_t a1)
{
  v2 = sub_22C175EC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C147F4C(uint64_t a1)
{
  v2 = sub_22C175EC0();

  return MEMORY[0x2821FE720](a1, v2);
}

void ProgramStatement.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  v3 = sub_22BE5CE4C(&qword_27D913468, &qword_22C2B8220);
  sub_22BE1BF18(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22C175EC0();
  sub_22BE25524();
  sub_22C18E810();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v7);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    v8 = type metadata accessor for ProgramStatement(0);
    v9 = sub_22BE335C0(v8);
    type metadata accessor for Expression(v9);
    sub_22C18EE2C();
    sub_22BE20458(v10);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273FA4();
    v11 = *(v1 + v2[6]);
    sub_22BE200EC();
    sub_22C18E17C();
    sub_22C273F04();
    v12 = *(v1 + v2[7]);
    sub_22C18E900();
    sub_22C18E17C();
    sub_22C273F04();
    v13 = (v1 + v2[8]);
    v14 = *v13;
    v18 = *(v13 + 4);
    sub_22C18E17C();
    sub_22C273F44();
    v17 = *(v1 + v2[9]);
    sub_22C175F14();
    sub_22C18E17C();
    sub_22C273F34();
  }

  v15 = sub_22BE37A10();
  v16(v15);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void ProgramStatement.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11)
{
  sub_22BE19130();
  sub_22C18F874();
  v14 = type metadata accessor for Expression(0);
  v15 = sub_22BE18000(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE28FD8();
  v18 = sub_22C26E684();
  v19 = sub_22BE1A3D8(v18);
  v54 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE19338();
  v23 = sub_22BE5CE4C(&qword_27D913488, &unk_22C2B8228);
  v24 = sub_22BE179D8(v23);
  v50 = v25;
  v51 = v24;
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE234F4();
  v29 = type metadata accessor for ProgramStatement(0);
  v30 = sub_22BE18000(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE179EC();
  v52 = v33;
  v53 = v35 - v34;
  v36 = v33[9];
  *(v35 - v34 + v36) = 2;
  v38 = v11[3];
  v37 = v11[4];
  sub_22BE25318(v11);
  sub_22C175EC0();
  sub_22BE48270();
  sub_22C274214();
  if (v55)
  {
    sub_22BE26B64(v11);
  }

  else
  {
    sub_22BE18F44();
    sub_22BE20458(v39);
    sub_22BEE92A4();
    sub_22C18FCEC();
    sub_22C273EB4();
    v40 = *(v54 + 32);
    v41 = sub_22BE29454();
    v42(v41);
    sub_22BE33FE4();
    sub_22C18EE2C();
    sub_22BE20458(v43);
    sub_22C18E9A0();
    sub_22BE27168();
    sub_22C273EB4();
    v44 = v52[5];
    sub_22BE3ED9C();
    sub_22C171FA8(v13, v53 + v45);
    sub_22BE200EC();
    *(v53 + v52[6]) = sub_22C273E14();
    sub_22C18E900();
    *(v53 + v52[7]) = sub_22C273E14();
    sub_22C18FDB8();
    v46 = sub_22C273E54();
    v47 = v53 + v52[8];
    *v47 = v46;
    *(v47 + 4) = BYTE4(v46) & 1;
    sub_22C175F68();
    sub_22C273E44();
    (*(v50 + 8))(v12, v51);
    *(v53 + v36) = a11;
    v48 = sub_22BE29370();
    sub_22BE1A964(v48, v49);
    sub_22BE26B64(v11);
    sub_22C0E9830();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t ProgramStatement.hash(into:)()
{
  sub_22BE17BC4();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v0);
  sub_22BE44750();

  return sub_22C272EE4();
}

uint64_t ProgramStatement.hashValue.getter()
{
  sub_22BE25DAC();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v0);
  sub_22C272EE4();
  return sub_22C2741A4();
}

uint64_t sub_22C148704()
{
  sub_22C274154();
  sub_22C26E684();
  sub_22BE20458(&qword_28107F2F0);
  sub_22C272EE4();
  return sub_22C2741A4();
}

uint64_t ToolParameterValue.typedValue.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for ToolParameterValue(v0);
  v2 = sub_22BE19448(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE38390();
  sub_22BE39344();
  v5 = sub_22BE18040();
  sub_22BE1A964(v5, v6);
  v7 = sub_22C272874();
  sub_22BE1834C(v7);
  v9 = *(v8 + 32);
  v10 = sub_22BE33FD8();
  return v11(v10);
}

uint64_t static ToolParameterValue.== infix(_:_:)()
{
  sub_22BE18378();
  v3 = sub_22BE5CE4C(&qword_27D909098, &qword_22C27FCB0);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1AEF0();
  v8 = *(v7 + 56);
  sub_22BE1A964(v1, v2);
  sub_22C18FAF4();
  sub_22C272844();
  sub_22BE17BC4();
  v9 = sub_22C272874();
  sub_22BE18000(v9);
  v11 = *(v10 + 8);
  v11(v2 + v8, v9);
  v12 = sub_22BE1804C();
  (v11)(v12);
  return v0 & 1;
}

uint64_t sub_22C148908(uint64_t a1)
{
  v2 = sub_22C175FDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C148944(uint64_t a1)
{
  v2 = sub_22C175FDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C148980(uint64_t a1)
{
  v2 = sub_22C176030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1489BC(uint64_t a1)
{
  v2 = sub_22C176030();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolParameterValue.encode(to:)()
{
  sub_22BE19130();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D9134A0, &qword_22C2B8238);
  sub_22BE179D8(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE3100C();
  v9 = type metadata accessor for ToolParameterValue(v8);
  v10 = sub_22BE19448(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE1955C();
  v13 = sub_22BE5CE4C(&qword_27D9134A8, &qword_22C2B8240);
  sub_22BE179D8(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1A8B4();
  v20 = v3[3];
  v19 = v3[4];
  sub_22BE41E84(v3);
  sub_22C175FDC();
  sub_22BEE939C();
  v21 = v4;
  sub_22C274234();
  sub_22BE39344();
  v22 = sub_22C18F9B8();
  sub_22BE1A964(v22, v23);
  sub_22C176030();
  sub_22C18E7F8();
  sub_22C273EE4();
  v24 = sub_22C272874();
  sub_22BE18720();
  sub_22BE20458(v25);
  sub_22BE35E54();
  sub_22C18F5FC();
  sub_22C273FA4();
  sub_22BE1BC24(v24);
  (*(v26 + 8))(v0, v24);
  v27 = sub_22BE2399C();
  v28(v27, v21);
  (*(v15 + 8))(v1, v13);
  sub_22BEE94B0();
  sub_22BE18478();
}

void ToolParameterValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v13 = sub_22C18E850(v12);
  v51 = type metadata accessor for ToolParameterValue(v13);
  v14 = sub_22BE18000(v51);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE17CBC();
  v17 = sub_22BE5CE4C(&qword_27D9134C0, &qword_22C2B8248);
  sub_22BE1BF18(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1B01C();
  v21 = sub_22BE5CE4C(&qword_27D9134C8, &qword_22C2B8250);
  sub_22BE179D8(v21);
  v23 = *(v22 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE234F4();
  v25 = v10[3];
  v26 = v10[4];
  sub_22BE3C0A8(v10);
  sub_22C175FDC();
  sub_22BE48270();
  sub_22BE2BC6C();
  sub_22C274214();
  if (a10)
  {
    goto LABEL_12;
  }

  v27 = sub_22C18F100();
  sub_22BE7C5C4(v27, 0);
  sub_22C18F644();
  if (!v28)
  {
    sub_22BE41798();
    if (v29 == v30)
    {
      __break(1u);
      return;
    }

    v32 = sub_22BE3D6C4(v31);
    sub_22BE7C5C0(v32);
    sub_22C18F14C();
    sub_22C18FFE4();
    if (v28)
    {
      sub_22C176030();
      sub_22BE25CA0();
      sub_22C273DE4();
      if (v11)
      {
        v33 = sub_22BE1A194();
        v34(v33, v21);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_22C272874();
        sub_22BE18720();
        sub_22BE20458(v44);
        sub_22BE377D8();
        sub_22C18F218();
        swift_unknownObjectRelease();
        v45 = sub_22C18E144();
        v46(v45);
        v47 = sub_22BE391A4();
        v48(v47);
        sub_22C18E314();
        v49 = sub_22C18F964();
        sub_22C171FA8(v49, v50);
      }

      goto LABEL_12;
    }

    sub_22C18FEFC();
  }

  v35 = sub_22C273B34();
  sub_22BE196B4();
  sub_22C18FA9C();
  v36 = sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
  sub_22C18E674(v36);
  sub_22BE1B198();
  v37 = *MEMORY[0x277D84160];
  sub_22BE1BC24(v35);
  v39 = *(v38 + 104);
  v40 = sub_22C18F298();
  v41(v40);
  swift_willThrow();
  swift_unknownObjectRelease();
  v42 = sub_22C18E3C8();
  v43(v42);
LABEL_12:
  sub_22BE26B64(v10);
  sub_22C18F0A4();
  sub_22BE18478();
}

uint64_t GlobalToolIdentifier.toolId.setter()
{
  sub_22BE1A8A8();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GlobalToolIdentifier.deviceIdsId.setter()
{
  sub_22BE1A8A8();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_22C1490B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656369766564 && a2 == 0xEB00000000644973;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x800000022C2D94E0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22C1491C8(char a1)
{
  if (!a1)
  {
    return 0x64496C6F6F74;
  }

  if (a1 == 1)
  {
    return 0x6449656369766564;
  }

  return 0xD000000000000015;
}

uint64_t sub_22C149230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1490B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C149258(uint64_t a1)
{
  v2 = sub_22C176084();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C149294(uint64_t a1)
{
  v2 = sub_22C176084();

  return MEMORY[0x2821FE720](a1, v2);
}

void GlobalToolIdentifier.encode(to:)()
{
  sub_22BE19130();
  sub_22BE3FF70();
  v3 = sub_22BE5CE4C(&qword_27D9134D0, &qword_22C2B8258);
  sub_22BE179D8(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  v8 = *v0;
  v7 = v0[1];
  v13 = v0[3];
  v14 = v0[2];
  v15 = *(v0 + 32);
  v9 = v2[3];
  v10 = v2[4];
  sub_22BE2018C(v2);
  sub_22C176084();
  sub_22BE25524();
  sub_22C18E9AC();
  sub_22BE2684C();
  sub_22C18F5FC();
  sub_22C273F54();
  if (!v1)
  {
    sub_22C18E4E0();
    sub_22C18E514();
    sub_22C273EF4();
    sub_22BE200EC();
    sub_22BE39020();
    sub_22C273F64();
  }

  v11 = sub_22C18E748();
  v12(v11);
  sub_22BE35D48();
  sub_22BE18478();
}

uint64_t GlobalToolIdentifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_22C272F44();
  sub_22C274174();
  if (v4)
  {
    sub_22BE232C8();
    sub_22C272F44();
  }

  return sub_22C274174();
}

uint64_t GlobalToolIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_22BE25DAC();
  sub_22C272F44();
  sub_22C274174();
  if (v4)
  {
    sub_22C18FBF8();
  }

  sub_22C274174();
  return sub_22C2741A4();
}

void GlobalToolIdentifier.init(from:)()
{
  sub_22BE19130();
  sub_22C18F140();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D9134E0, &unk_22C2B8260);
  sub_22BE1A3D8(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A8B4();
  v8 = v0[3];
  v9 = v0[4];
  sub_22BE2018C(v0);
  sub_22C176084();
  sub_22BEE939C();
  sub_22C1901D4();
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18EA24();
    sub_22C18E5BC();
    v10 = sub_22C273E64();
    v19 = v11;
    sub_22BE2315C();
    sub_22C18E5BC();
    v12 = sub_22C273E04();
    v14 = v13;
    v18 = v12;
    sub_22BE200EC();
    sub_22C18E5BC();
    v15 = sub_22C273E74();
    v16 = sub_22BE19E54();
    v17(v16);
    *v3 = v10;
    *(v3 + 8) = v19;
    *(v3 + 16) = v18;
    *(v3 + 24) = v14;
    *(v3 + 32) = v15 & 1;

    sub_22BE26B64(v0);
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t sub_22C14970C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = *(v0 + 32);
  sub_22C274154();
  GlobalToolIdentifier.hash(into:)();
  return sub_22C2741A4();
}

uint64_t Action.bundleId.getter()
{
  v0 = type metadata accessor for Action(0);
  sub_22BE36160(*(v0 + 20));
  return sub_22BE19454();
}

uint64_t Action.bundleId.setter()
{
  v3 = sub_22BE23708();
  v4 = type metadata accessor for Action(v3);
  sub_22C18EA48(*(v4 + 20));

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Action.bundleId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Action(v0) + 20);
  return sub_22BE18504();
}

uint64_t Action.isConfirmed.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for Action(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t Action.isConfirmed.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Action(v0) + 24);
  return sub_22BE18504();
}

uint64_t Action.parameterValues.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Action(v0) + 28);
  return sub_22BE18504();
}

uint64_t Action.planEventId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Action(v0) + 32);
  return sub_22BE18504();
}

uint64_t Action.tool.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for Action(v0);
  sub_22C18E8AC(*(v1 + 36));
}

void Action.tool.setter()
{
  sub_22C190048();
  v2 = sub_22C18E9C8(v1);
  v3 = type metadata accessor for Action(v2);
  sub_22C18EA48(*(v3 + 36));
  v4 = *(v0 + 24);

  sub_22C18F2EC(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  sub_22C190034();
}

uint64_t Action.tool.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Action(v0) + 36);
  return sub_22BE18504();
}

__n128 Action.init(statementId:tool:bundleId:parameterValues:isConfirmed:planEventId:)()
{
  sub_22C190018();
  v27 = v0;
  v28 = v1;
  v26 = v2;
  v25 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v24 = *v10;
  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  v13 = *(v10 + 32);
  v14 = type metadata accessor for Action(0);
  v15 = (v9 + v14[5]);
  v16 = (v9 + v14[8]);
  v17 = sub_22C26E684();
  sub_22BE1834C(v17);
  v19 = *(v18 + 32);
  v20 = sub_22BE196A8();
  v21(v20);
  v22 = v9 + v14[9];
  *v22 = v24;
  *(v22 + 16) = v12;
  *(v22 + 24) = v11;
  *(v22 + 32) = v13;
  *v15 = v7;
  v15[1] = v5;
  *(v9 + v14[7]) = v25;
  *(v9 + v14[6]) = v26;
  *v16 = v27;
  v16[1] = v28;
  sub_22C18FFFC();
  return result;
}

void Action.init(statementId:toolId:bundleId:deviceId:parameterValues:isConfirmed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  sub_22C0E9E48();
  v42 = v27;
  v43 = v28;
  v30 = v29;
  v32 = v31;
  sub_22BE3F3E4();
  v33 = type metadata accessor for Action(0);
  v34 = (v26 + v33[5]);
  v35 = (v26 + v33[8]);
  v36 = sub_22C26E684();
  *v35 = 0;
  v35[1] = 0;
  sub_22BE18000(v36);
  v38 = *(v37 + 32);
  v39 = sub_22BE180C8();
  v40(v39);
  sub_22C18FF20(v33[9]);
  *(v41 + 16) = v32;
  *(v41 + 24) = v30;
  *(v41 + 32) = 0;
  *v34 = v25;
  v34[1] = v42;
  *(v26 + v33[7]) = v43;
  *(v26 + v33[6]) = a25;
  sub_22BE3E534();
}

void Action.init(statementId:toolId:bundleId:deviceId:parameterValues:isConfirmed:planEventId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29)
{
  sub_22C190018();
  v46 = v31;
  v47 = v32;
  v45 = v33;
  v35 = v34;
  sub_22BE3F3E4();
  v36 = type metadata accessor for Action(0);
  v37 = (v30 + v36[5]);
  v38 = (v30 + v36[8]);
  v39 = sub_22C26E684();
  sub_22BE1834C(v39);
  v41 = *(v40 + 32);
  v42 = sub_22BE180C8();
  v43(v42);
  sub_22C18FF20(v36[9]);
  *(v44 + 16) = v35;
  *(v44 + 24) = v45;
  *(v44 + 32) = 0;
  *v37 = v29;
  v37[1] = v46;
  *(v30 + v36[7]) = v47;
  *(v30 + v36[6]) = a27;
  *v38 = a28;
  v38[1] = a29;
  sub_22C18FFFC();
}

uint64_t Action.ParameterValue.value.getter()
{
  sub_22BE1B7A4();
  sub_22BE39344();
  return sub_22BE1A964(v0, v1);
}

uint64_t Action.ParameterValue.promptSelection.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Action.ParameterValue(v0) + 20);
  return sub_22BE18504();
}

uint64_t Action.ParameterValue.init(value:promptSelection:)()
{
  v0 = sub_22BE28634();
  v1 = type metadata accessor for Action.ParameterValue(v0);
  sub_22BE341A4(v1);
  sub_22C26F7C4();
  sub_22BE1A140();
  sub_22BE19DC4(v2, v3, v4, v5);
  sub_22C18E314();
  v6 = sub_22BE18040();
  sub_22C171FA8(v6, v7);
  return sub_22BE2343C();
}

void static Action.ParameterValue.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22C18E58C();
  v2 = sub_22C26F7C4();
  v3 = sub_22BE179D8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE197B8();
  v6 = sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE19E64();
  v10 = sub_22BE5CE4C(&off_27D909090, &qword_22C2B8270);
  sub_22C18DFEC(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE389B4();
  if (static ToolParameterValue.== infix(_:_:)())
  {
    v14 = *(type metadata accessor for Action.ParameterValue(0) + 20);
    v15 = *(v1 + 48);
    sub_22BE3D108();
    sub_22BE22814();
    sub_22BE3D108();
    sub_22BE22814();
    sub_22BE181B0(v0);
    if (!v16)
    {
      sub_22BE191CC();
      sub_22BE22814();
      sub_22BE181B0(v0 + v15);
      if (!v16)
      {
        v19 = sub_22BE38638();
        v20(v19);
        sub_22BE4171C();
        sub_22BE20458(v21);
        sub_22BE1AB74();
        sub_22C272FD4();
        v22 = off_27D909090;
        v23 = sub_22BE19454();
        v22(v23);
        v24 = sub_22BE3C5E4();
        v22(v24);
        sub_22C18DC5C(v0, &qword_27D909088);
        goto LABEL_11;
      }

      v17 = sub_22BE2399C();
      v18(v17, v2);
LABEL_10:
      sub_22C18DC5C(v0, &off_27D909090);
      goto LABEL_11;
    }

    sub_22BE181B0(v0 + v15);
    if (!v16)
    {
      goto LABEL_10;
    }

    sub_22C18DC5C(v0, &qword_27D909088);
  }

LABEL_11:
  sub_22BE1AABC();
}

uint64_t sub_22C14A0B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x655374706D6F7270 && a2 == 0xEF6E6F697463656CLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C14A184(char a1)
{
  if (a1)
  {
    return 0x655374706D6F7270;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_22C14A1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C14A0B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C14A1F4(uint64_t a1)
{
  v2 = sub_22C1760D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14A230(uint64_t a1)
{
  v2 = sub_22C1760D8();

  return MEMORY[0x2821FE720](a1, v2);
}

void Action.ParameterValue.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  v1 = sub_22BE5CE4C(&qword_27D9134E8, &qword_22C2B8278);
  sub_22BE1BF18(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE25CD0();
  sub_22BE23094();
  sub_22C1760D8();
  sub_22BE33B8C();
  v5 = sub_22C18E810();
  type metadata accessor for ToolParameterValue(v5);
  sub_22C18EC40();
  sub_22BE20458(v6);
  sub_22BEE92A4();
  sub_22BE31254();
  sub_22C273FA4();
  if (!v0)
  {
    v7 = *(type metadata accessor for Action.ParameterValue(0) + 20);
    sub_22BE323A4();
    sub_22C26F7C4();
    sub_22BE4171C();
    sub_22BE20458(v8);
    sub_22C18EA18();
    sub_22BE31254();
    sub_22C273F34();
  }

  v9 = sub_22BE37508();
  v10(v9);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void Action.ParameterValue.init(from:)()
{
  sub_22BE19130();
  v3 = v2;
  v36 = v4;
  v5 = sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
  sub_22BE19448(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE1AED0();
  v10 = type metadata accessor for ToolParameterValue(v9);
  v11 = sub_22BE18000(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  sub_22BE3668C(v14);
  v38 = sub_22BE5CE4C(&qword_27D913508, &qword_22C2B8280);
  sub_22BE179D8(v38);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  v18 = sub_22BE24FD8();
  v19 = type metadata accessor for Action.ParameterValue(v18);
  v20 = sub_22BE19448(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE19338();
  v24 = *(v23 + 28);
  sub_22C26F7C4();
  sub_22BE3AE2C();
  sub_22BE19DC4(v25, v26, v27, v28);
  v29 = v3[3];
  v30 = v3[4];
  sub_22BE2018C(v3);
  sub_22C1760D8();
  sub_22BE3CCD4();
  sub_22C18E60C();
  sub_22C274214();
  if (v0)
  {
    sub_22BE26B64(v3);
    sub_22C18DC5C(v1 + v24, &qword_27D909088);
  }

  else
  {
    sub_22C18EC40();
    sub_22BE20458(v31);
    sub_22BEE92A4();
    sub_22BE36350();
    sub_22C273EB4();
    sub_22C18E314();
    sub_22C171FA8(v37, v1);
    sub_22BE33FE4();
    sub_22BE4171C();
    sub_22BE20458(v32);
    sub_22C18E9A0();
    sub_22BE362A8();
    sub_22C273E44();
    v33 = sub_22BEE9178();
    v34(v33, v38);
    sub_22C18FCC8();
    sub_22BE2343C();
    v35 = sub_22C1088E8();
    sub_22BE1A964(v35, v36);
    sub_22BE26B64(v3);
    sub_22C0E9848();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t sub_22C14A6D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7269666E6F437369 && a2 == 0xEB0000000064656DLL;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6574656D61726170 && a2 == 0xEF7365756C615672;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6576456E616C70 && a2 == 0xEB00000000644974;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 1819242356 && a2 == 0xE400000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_22C274014();

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

uint64_t sub_22C14A8D8(char a1)
{
  result = 0x6E656D6574617473;
  switch(a1)
  {
    case 1:
      result = 0x6449656C646E7562;
      break;
    case 2:
      result = 0x7269666E6F437369;
      break;
    case 3:
      result = 0x6574656D61726170;
      break;
    case 4:
      result = 0x6E6576456E616C70;
      break;
    case 5:
      result = 1819242356;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C14A9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C14A6D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C14AA00(uint64_t a1)
{
  v2 = sub_22C17612C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14AA3C(uint64_t a1)
{
  v2 = sub_22C17612C();

  return MEMORY[0x2821FE720](a1, v2);
}

void Action.encode(to:)()
{
  sub_22BE2BB34();
  sub_22C18E9F8();
  v3 = sub_22BE5CE4C(&qword_27D913520, &qword_22C2B8288);
  sub_22BE1BF18(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22C17612C();
  sub_22BE25524();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v7);
  sub_22C18F958();
  sub_22BE41644();
  sub_22C273FA4();
  if (!v0)
  {
    v8 = type metadata accessor for Action(0);
    sub_22C18E864(v8);
    sub_22C11FDEC(v9);
    sub_22BE1BB58();
    sub_22C273EF4();
    v10 = *(v1 + v2[6]);
    sub_22BE1C270();
    sub_22C273F64();
    sub_22BE32460(v2[7]);
    sub_22BEE9478();
    sub_22BE5CE4C(&qword_27D913530, &qword_22C2B8290);
    sub_22C176180();
    sub_22BE41644();
    sub_22C273FA4();
    sub_22C11FDEC(v2[8]);
    sub_22BE1BB58();
    sub_22C273EF4();
    sub_22C18F490(v2[9]);
    sub_22C18F67C();
    sub_22BEB9C9C();
    sub_22C18F35C();

    sub_22C18EBC8();
    sub_22BE1C270();
    sub_22C273FA4();
  }

  v11 = sub_22BE37A10();
  v12(v11);
  sub_22BEE93D4();
}

void Action.init(from:)()
{
  sub_22BE19130();
  v2 = v1;
  v3 = sub_22C26E684();
  v4 = sub_22BE179D8(v3);
  v33 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE294E0();
  v34 = sub_22BE5CE4C(&qword_27D913548, &qword_22C2B8298);
  sub_22BE179D8(v34);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE1AED0();
  v31 = type metadata accessor for Action(v11);
  v12 = sub_22BE18000(v31);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE17A44();
  sub_22BE3FF7C(v15);
  v17 = v2[3];
  v16 = v2[4];
  sub_22C18E560(v2);
  sub_22C17612C();
  sub_22BE489BC();
  sub_22C18FF9C();
  sub_22C274214();
  if (v0)
  {
    sub_22BE26B64(v2);
  }

  else
  {
    LOBYTE(v35) = 0;
    sub_22BE18F44();
    sub_22BE20458(v18);
    sub_22C18FDF0();
    sub_22C18F0E8();
    sub_22C273EB4();
    v19 = *(v33 + 32);
    v20 = sub_22BE354DC();
    v21(v20);
    sub_22C18F620(1);
    sub_22C18F0E8();
    v22 = sub_22C273E04();
    sub_22C18FA48(v22, v23, v31[5]);
    sub_22C18F620(2);
    sub_22C18F0E8();
    *(v32 + v31[6]) = sub_22C273E74() & 1;
    sub_22BE5CE4C(&qword_27D913530, &qword_22C2B8290);
    sub_22BEE9478();
    sub_22C17623C();
    sub_22BE40660();
    sub_22C18F0E8();
    sub_22C273EB4();
    *(v32 + v31[7]) = v35;
    sub_22C18F620(4);
    sub_22C18F0E8();
    v24 = sub_22C273E04();
    sub_22C18FA48(v24, v25, v31[8]);
    sub_22C18F67C();
    sub_22BEB9D44();
    sub_22BE40660();
    sub_22C18F0E8();
    sub_22C273EB4();
    v26 = sub_22C18E944();
    v27(v26);
    v28 = v32 + v31[9];
    sub_22C18F234(v35);
    v29 = sub_22BE1AB74();
    sub_22BE1A964(v29, v30);
    sub_22BE26B64(v2);
    sub_22BE1C3A4();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t ActionCancellation.cancelledActionStatementId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ActionCancellation(v0) + 20);
  return sub_22BE18504();
}

uint64_t ActionCancellation.init(statementId:cancelledActionStatementId:)()
{
  sub_22BE28634();
  v2 = sub_22C26E684();
  sub_22BE1A140();
  sub_22BE19DC4(v3, v4, v5, v2);
  sub_22BE18040();
  sub_22BE2343C();
  v6 = *(type metadata accessor for ActionCancellation(0) + 20);
  sub_22C18FA78();
  v9 = *(v8 + 32);

  return v9(v1 + v7, v0, v2);
}

uint64_t sub_22C14B2AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000022C2DA750 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C14B380(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0x6E656D6574617473;
  }
}

uint64_t sub_22C14B3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C14B2AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C14B3F4(uint64_t a1)
{
  v2 = sub_22C1762F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14B430(uint64_t a1)
{
  v2 = sub_22C1762F8();

  return MEMORY[0x2821FE720](a1, v2);
}

void ActionCancellation.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  v1 = sub_22BE5CE4C(&qword_27D913560, &qword_22C2B82A0);
  sub_22BE1BF18(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE25CD0();
  sub_22BE23094();
  sub_22C1762F8();
  sub_22BE33B8C();
  sub_22C18E810();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v5);
  sub_22BE38608();
  sub_22C18E60C();
  sub_22BE26108();
  sub_22C273F34();
  if (!v0)
  {
    v6 = *(type metadata accessor for ActionCancellation(0) + 20);
    sub_22C18E60C();
    sub_22BE26108();
    sub_22C273FA4();
  }

  v7 = sub_22BE37508();
  v8(v7);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void ActionCancellation.init(from:)()
{
  sub_22BE19130();
  v5 = v4;
  sub_22C18F934(v6);
  v7 = sub_22C26E684();
  v8 = sub_22BE1A3D8(v7);
  v39 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE294E0();
  v12 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE20168(v16, v39);
  v17 = sub_22BE5CE4C(&qword_27D913570, &qword_22C2B82A8);
  v41 = sub_22BE179D8(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  v21 = sub_22BE1AED0();
  v22 = type metadata accessor for ActionCancellation(v21);
  v23 = sub_22BE18000(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE1955C();
  sub_22BE3AE2C();
  sub_22BE19DC4(v26, v27, v28, v29);
  v30 = v5[3];
  v31 = v5[4];
  v32 = sub_22BE260B8();
  sub_22BE26950(v32, v33);
  sub_22C1762F8();
  sub_22BE489BC();
  sub_22C274214();
  if (v0)
  {
    sub_22BE26B64(v5);
    sub_22C18DC5C(v2, &qword_27D907240);
  }

  else
  {
    sub_22BE18F44();
    sub_22BE20458(v34);
    sub_22C18FF9C();
    sub_22BE385D8();
    sub_22C273E44();
    sub_22BE1B18C();
    sub_22BE2343C();
    sub_22BE33FE4();
    sub_22C18FF9C();
    sub_22BE385D8();
    sub_22C273EB4();
    v35 = sub_22C11FDE0();
    v36(v35, v41);
    (*(v40 + 32))(v2 + *(v22 + 20), v3, v1);
    v37 = sub_22C18F91C();
    sub_22BE1A964(v37, v38);
    sub_22BE26B64(v5);
    sub_22BE291DC();
    sub_22C171FFC();
  }

  sub_22C18F0A4();
  sub_22BE18478();
}

uint64_t sub_22C14B91C()
{
  v0 = sub_22BE2BB48();
  v2 = v1(v0);
  sub_22BE36160(*(v2 + 20));
  return sub_22BE19454();
}

uint64_t ClientAction.toolId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ClientAction(v0) + 20);
  return sub_22BE18504();
}

uint64_t ClientAction.parameters.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ClientAction(v0) + 24);
  return sub_22BE18504();
}

uint64_t sub_22C14BA30()
{
  v0 = sub_22BE2BB48();
  v2 = v1(v0);
  sub_22BE36160(*(v2 + 28));
  return sub_22BE19454();
}

uint64_t ClientAction.clientQueryId.setter()
{
  v3 = sub_22BE23708();
  v4 = type metadata accessor for ClientAction(v3);
  sub_22C18EA48(*(v4 + 28));

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ClientAction.clientQueryId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ClientAction(v0) + 28);
  return sub_22BE18504();
}

uint64_t sub_22C14BAF8()
{
  v0 = sub_22BE2BB48();
  v2 = v1(v0);
  sub_22BE36160(*(v2 + 32));
  return sub_22BE19454();
}

uint64_t sub_22C14BB44()
{
  v3 = sub_22BE23708();
  v5 = v4(v3);
  sub_22C18EA48(*(v5 + 32));

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ClientAction.planEventId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ClientAction(v0) + 32);
  return sub_22BE18504();
}

uint64_t ClientAction.shimParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for ClientAction(0) + 36));
}

uint64_t ClientAction.shimParameters.setter()
{
  v2 = sub_22BE17BC4();
  v3 = *(type metadata accessor for ClientAction(v2) + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t ClientAction.shimParameters.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ClientAction(v0) + 36);
  return sub_22BE18504();
}

void ClientAction.init(statementId:toolId:parameters:clientQueryId:planEventId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v20;
  a20 = v21;
  v86 = v22;
  v87 = v23;
  v84 = v24;
  v85 = v25;
  v27 = v26;
  v82 = v28;
  v81 = v29;
  v31 = v30;
  v83 = v32;
  v93 = sub_22C272874();
  v33 = sub_22BE179D8(v93);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE17A44();
  v92 = v38;
  sub_22BE183BC();
  v39 = sub_22C26E684();
  v40 = sub_22BE179D8(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE179EC();
  v79 = v45 - v44;
  v80 = v46;
  (*(v43 + 16))();
  sub_22BE5CE4C(&qword_27D913578, &unk_22C2B82B0);
  v47 = sub_22C273D04();
  v48 = 0;
  v94 = v27;
  v50 = *(v27 + 64);
  v49 = v27 + 64;
  v51 = *(v49 - 32);
  sub_22BE185B4();
  v54 = v53 & v52;
  v88 = (v55 + 63) >> 6;
  v89 = v49;
  v90 = v56 + 8;
  v91 = v56;
  v57 = v35;
  if (v54)
  {
    while (1)
    {
      v58 = __clz(__rbit64(v54));
      v95 = (v54 - 1) & v54;
LABEL_8:
      v61 = v58 | (v48 << 6);
      v62 = (*(v94 + 48) + 16 * v61);
      v96 = v62[1];
      v97 = *v62;
      v63 = v57[2];
      v49 = v92;
      v63(v92, *(v94 + 56) + v57[9] * v61, v93);
      sub_22BE5CE4C(&qword_27D907590, &qword_22C275618);
      v64 = *(type metadata accessor for ClientAction.ShimParameter(0) - 8);
      v65 = *(v64 + 72);
      v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_22C275160;
      v63(v67 + v66, v92, v93);
      swift_storeEnumTagMultiPayload();
      v68 = v57[1];

      v69 = sub_22BE291B0();
      v68(v69);
      *(v90 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
      v47 = v91;
      v70 = (v91[6] + 16 * v61);
      *v70 = v97;
      v70[1] = v96;
      *(v91[7] + 8 * v61) = v67;
      v71 = v91[2];
      v72 = __OFADD__(v71, 1);
      v73 = v71 + 1;
      if (v72)
      {
        break;
      }

      v91[2] = v73;
      v54 = v95;
      if (!v95)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v59 = v48;
    while (1)
    {
      v48 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      if (v48 >= v88)
      {
        sub_22BE236D4(&a15);
        (*(v74 + 8))(v31, v80);
        v75 = type metadata accessor for ClientAction(0);
        v76 = (v83 + v75[7]);
        v77 = (v83 + v75[8]);
        (*(v49 + 32))(v83, v79, v80);
        v78 = (v83 + v75[5]);
        *v78 = v81;
        v78[1] = v82;
        *(v83 + v75[6]) = v94;
        *(v83 + v75[9]) = v47;
        *v76 = v84;
        v76[1] = v85;
        *v77 = v86;
        v77[1] = v87;
        sub_22BE1AABC();
        return;
      }

      v60 = *(v89 + 8 * v48);
      ++v59;
      if (v60)
      {
        v58 = __clz(__rbit64(v60));
        v95 = (v60 - 1) & v60;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void ClientAction.init(statementId:toolId:parameters:shimParameters:clientQueryId:planEventId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_22C0E9E48();
  v41 = v27;
  v42 = v28;
  v40 = v29;
  v31 = v30;
  sub_22BE3F3E4();
  v32 = type metadata accessor for ClientAction(0);
  v33 = (v26 + v32[7]);
  v34 = (v26 + v32[8]);
  v35 = sub_22C26E684();
  sub_22BE1834C(v35);
  v37 = *(v36 + 32);
  v38 = sub_22BE180C8();
  v39(v38);
  sub_22C18FF20(v32[5]);
  *(v26 + v32[6]) = v25;
  *(v26 + v32[9]) = v31;
  *v33 = v40;
  v33[1] = v41;
  *v34 = v42;
  v34[1] = a25;
  sub_22BE3E534();
}

void ClientAction.init(statementId:toolId:shimParameters:clientQueryId:planEventId:)()
{
  sub_22C0E9E48();
  v22 = v3;
  v23 = v4;
  v21 = v5;
  v7 = v6;
  sub_22C18FDA4();
  v9 = v8;
  sub_22C14C214(v10);
  v11 = sub_22BE2021C();
  v12 = type metadata accessor for ClientAction(v11);
  v13 = (v9 + v12[7]);
  v14 = (v9 + v12[8]);
  v15 = sub_22C26E684();
  sub_22BE1834C(v15);
  v17 = *(v16 + 32);
  v18 = sub_22BE191C0();
  v19(v18);
  v20 = (v9 + v12[5]);
  *v20 = v2;
  v20[1] = v1;
  *(v9 + v12[6]) = 0;
  *(v9 + v12[9]) = v0;
  *v13 = v7;
  v13[1] = v21;
  *v14 = v22;
  v14[1] = v23;
  sub_22BE3E534();
}

uint64_t sub_22C14C214(uint64_t a1)
{
  v2 = type metadata accessor for ClientAction.ShimParameter(0);
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v2);
  v52 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v46 - v7;
  v9 = sub_22C272874();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v48 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = &v46 - v14;
  v16 = a1 + 64;
  v15 = *(a1 + 64);
  v51 = MEMORY[0x277D84F98];
  v57 = MEMORY[0x277D84F98];
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v15;
  v20 = (v17 + 63) >> 6;
  v47 = v13;
  v50 = (v13 + 32);

  v22 = 0;
  while (1)
  {
    v23 = v22;
    if (!v19)
    {
      break;
    }

LABEL_9:
    v24 = __clz(__rbit64(v19)) | (v22 << 6);
    v25 = *(a1 + 56);
    v26 = (*(a1 + 48) + 16 * v24);
    v27 = v26[1];
    v55 = *v26;
    v56 = v27;
    v28 = *(v25 + 8 * v24);
    if (*(v28 + 16))
    {
      v29 = a1;
      v30 = v52;
      sub_22BE1A964(v28 + ((*(v53 + 80) + 32) & ~*(v53 + 80)), v52);
      if (!swift_getEnumCaseMultiPayload())
      {
        (*v50)(v8, v30, v9);
        sub_22BE19DC4(v8, 0, 1, v9);

        a1 = v29;
        goto LABEL_15;
      }

      sub_22C171FFC();
      a1 = v29;
    }

    else
    {
    }

    sub_22BE19DC4(v8, 1, 1, v9);

LABEL_15:
    v19 &= v19 - 1;
    if (sub_22BE1AEA8(v8, 1, v9) == 1)
    {

      result = sub_22C18DC5C(v8, &qword_27D907400);
    }

    else
    {
      v31 = *v50;
      (*v50)(v49, v8, v9);
      v46 = v31;
      v31(v48, v49, v9);
      if (v51[3] <= v51[2])
      {
        sub_22C250478();
      }

      v32 = v57;
      v33 = *(v57 + 40);
      sub_22C274154();
      sub_22C272F44();
      result = sub_22C2741A4();
      v34 = v32 + 64;
      v51 = v32;
      v35 = -1 << *(v32 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v32 + 64 + 8 * (v36 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v35) >> 6;
        while (++v37 != v40 || (v39 & 1) == 0)
        {
          v41 = v37 == v40;
          if (v37 == v40)
          {
            v37 = 0;
          }

          v39 |= v41;
          v42 = *(v34 + 8 * v37);
          if (v42 != -1)
          {
            v38 = __clz(__rbit64(~v42)) + (v37 << 6);
            goto LABEL_28;
          }
        }

        goto LABEL_31;
      }

      v38 = __clz(__rbit64((-1 << v36) & ~*(v32 + 64 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
      *(v34 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      v43 = v51;
      v44 = (v51[6] + 16 * v38);
      v45 = v56;
      *v44 = v55;
      v44[1] = v45;
      result = v46(v43[7] + *(v47 + 72) * v38, v48, v9);
      ++v43[2];
    }
  }

  while (1)
  {
    v22 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v22 >= v20)
    {

      return v51;
    }

    v19 = *(v16 + 8 * v22);
    ++v23;
    if (v19)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void static ClientAction.ShimParameter.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE33690();
  v5 = sub_22C272874();
  v6 = sub_22BE179D8(v5);
  v52 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v10 = sub_22BE183BC();
  v11 = type metadata accessor for ClientAction.ShimParameter(v10);
  v12 = sub_22BE18000(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE183AC();
  sub_22BEC0508();
  MEMORY[0x28223BE20](v15);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v16);
  sub_22BE28EF4();
  MEMORY[0x28223BE20](v17);
  sub_22BE1C17C();
  v18 = sub_22BE5CE4C(&qword_27D913580, &qword_22C2B82C0);
  sub_22BE19448(v18);
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE1B72C();
  v23 = v0 + *(v22 + 56);
  sub_22BE1A964(v2, v0);
  v24 = sub_22BE25C08();
  sub_22BE1A964(v24, v25);
  sub_22BE33FD8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE3BF68();
      v42 = sub_22BE19454();
      sub_22BE1A964(v42, v43);
      v45 = *v1;
      v44 = v1[1];
      sub_22BE1C2A0();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_22;
      }

      if (v45 != *v23 || v44 != *(v23 + 8))
      {
        sub_22BE431C0();
        sub_22BE3C8EC();
      }

      goto LABEL_29;
    case 2u:
      sub_22BE3BF68();
      v30 = sub_22BE29264();
      sub_22BE1A964(v30, v31);
      v32 = v3[1];
      v33 = v3[4];
      sub_22BE1C2A0();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_21;
      }

      v59 = *v3;
      v60 = *(v3 + 16);
      v61 = *(v3 + 17);
      v62 = v3[3];
      v53 = *v23;
      v54 = *(v23 + 8);
      v55 = *(v23 + 16);
      v56 = *(v23 + 17);
      v57 = *(v23 + 24);
      v58 = *(v23 + 32);
      static PersonQuery.== infix(_:_:)();

      goto LABEL_30;
    case 3u:
      sub_22BE3BF68();
      v34 = sub_22BE41FB4();
      sub_22BE1A964(v34, v35);
      v37 = *v4;
      v36 = v4[1];
      v38 = v4[2];
      sub_22BE1C2A0();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v39 = *(v23 + 8);
        v40 = *(v23 + 16);
        if (v36)
        {
          if (!v39)
          {
            goto LABEL_27;
          }

          if (v37 != *v23 || v36 != v39)
          {
            sub_22BE35838();
            if ((sub_22BE3C8EC() & 1) == 0)
            {
              goto LABEL_27;
            }
          }
        }

        else if (v39)
        {
LABEL_27:

          goto LABEL_30;
        }

        sub_22BE1AB1C();
        sub_22BE96740();

LABEL_29:

LABEL_30:
        sub_22BE3C694();
      }

      else
      {
LABEL_21:

LABEL_22:

LABEL_23:
        sub_22C18DC5C(v0, &qword_27D913580);
      }

      sub_22BE1B1B8();
      sub_22BE1AABC();
      return;
    default:
      sub_22BE3BF68();
      v26 = sub_22BE1A6BC();
      sub_22BE1A964(v26, v27);
      sub_22BE1C2A0();
      if (swift_getEnumCaseMultiPayload())
      {
        v28 = sub_22BEC0304();
        v29(v28);
        goto LABEL_23;
      }

      sub_22C18F338();
      v47 = sub_22BE25C08();
      v48(v47);
      sub_22C272844();
      v49 = *(v52 + 8);
      v50 = sub_22BE25C08();
      v49(v50);
      v51 = sub_22BE392D4();
      v49(v51);
      goto LABEL_30;
  }
}

void static PersonQuery.== infix(_:_:)()
{
  sub_22BE3C358();
  v2 = v1;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 17);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 17);
  v12 = *(v2 + 24);
  v11 = *(v2 + 32);
  if (v3)
  {
    if (!v8)
    {
      goto LABEL_29;
    }

    v13 = *v0 == *v2 && v3 == v8;
    if (!v13 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v8)
  {
    goto LABEL_29;
  }

  if (v4 == 4)
  {
    if (v9 != 4 || ((v5 ^ v10) & 1) != 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v9 == 4)
    {
      goto LABEL_29;
    }

    v14 = v4 == 3 ? v9 == 3 : v4 == v9;
    v15 = !v14;
    if ((v15 | v5 ^ v10))
    {
      goto LABEL_29;
    }
  }

  if (v7 && v11 && (v6 != v12 || v7 != v11))
  {
    sub_22BE19454();
    sub_22C18F3BC();
  }

LABEL_29:
  sub_22BE267B8();
}

void static ClientAction.PhotosCandidates.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (!v3)
  {
    if (v5)
    {
      return;
    }

    goto LABEL_8;
  }

  if (v5)
  {
    v7 = *a1 == *a2 && v3 == v5;
    if (v7 || (sub_22C274014() & 1) != 0)
    {
LABEL_8:
      sub_22BE19454();

      sub_22BE96740();
    }
  }
}

uint64_t sub_22C14CCE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465766C6F736572 && a2 == 0xE800000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7551676E69727473 && a2 == 0xEB00000000797265;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x75516E6F73726570 && a2 == 0xEB00000000797265;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x800000022C2DA5C0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_22C14CE54(char a1)
{
  result = 0x6465766C6F736572;
  switch(a1)
  {
    case 1:
      v3 = 0x676E69727473;
      goto LABEL_4;
    case 2:
      v3 = 0x6E6F73726570;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7551000000000000;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C14CEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C14CCE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C14CF0C(uint64_t a1)
{
  v2 = sub_22C17636C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14CF48(uint64_t a1)
{
  v2 = sub_22C17636C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C14CF84(uint64_t a1)
{
  v2 = sub_22C176468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14CFC0(uint64_t a1)
{
  v2 = sub_22C176468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C14CFFC(uint64_t a1)
{
  v2 = sub_22C1763C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14D038(uint64_t a1)
{
  v2 = sub_22C1763C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C14D074(uint64_t a1)
{
  v2 = sub_22C1765B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14D0B0(uint64_t a1)
{
  v2 = sub_22C1765B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C14D0EC(uint64_t a1)
{
  v2 = sub_22C176510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14D128(uint64_t a1)
{
  v2 = sub_22C176510();

  return MEMORY[0x2821FE720](a1, v2);
}

void ClientAction.ShimParameter.encode(to:)()
{
  sub_22BE19130();
  v75 = v0;
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D913588, &qword_22C2B82C8);
  v73 = sub_22BE179D8(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE33FF0(v8, v70);
  v9 = sub_22BE5CE4C(&qword_27D913590, &qword_22C2B82D0);
  sub_22BE179D8(v9);
  v72 = v10;
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1A174();
  v14 = sub_22BE5CE4C(&qword_27D913598, &qword_22C2B82D8);
  sub_22BE179D8(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1A174();
  v18 = sub_22BE5CE4C(&qword_27D9135A0, &qword_22C2B82E0);
  sub_22BE179D8(v18);
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE234F4();
  v22 = sub_22C272874();
  v23 = sub_22BE179D8(v22);
  v71 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE197B8();
  v27 = type metadata accessor for ClientAction.ShimParameter(0);
  v28 = sub_22BE18000(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE188B0();
  v31 = sub_22BE5CE4C(&qword_27D9135A8, &qword_22C2B82E8);
  v76 = sub_22BE179D8(v31);
  v33 = *(v32 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE25CD0();
  v35 = v3[3];
  v36 = v3[4];
  sub_22BE31088(v3);
  sub_22C17636C();
  sub_22BEC046C();
  sub_22C274234();
  sub_22BE3BF68();
  sub_22BE1A964(v75, v1);
  sub_22BE33BE8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v65 = *v1;
      v64 = *(v1 + 8);
      sub_22C18F9DC();
      sub_22C176510();
      sub_22C18E6C4();
      sub_22C273EE4();
      sub_22C176564();
      sub_22C190174();
      v66 = sub_22C18E3C8();
      v67(v66);
      v68 = sub_22BE336B4();
      v69(v68, v76);
      goto LABEL_6;
    case 2u:
      v47 = *(v1 + 8);
      v74 = *v1;
      v48 = *(v1 + 16);
      v49 = *(v1 + 17);
      v51 = *(v1 + 24);
      v50 = *(v1 + 32);
      sub_22C18F8BC();
      sub_22C176468();
      sub_22C18E6C4();
      sub_22C273EE4();
      sub_22C1764BC();
      sub_22C273FA4();
      v52 = *(v72 + 8);
      v53 = sub_22BE37490();
      v54(v53);
      v55 = sub_22BE336B4();
      v56(v55, v76);

      goto LABEL_6;
    case 3u:
      v58 = *v1;
      v57 = *(v1 + 8);
      v59 = *(v1 + 16);
      sub_22C18F940();
      sub_22C1763C0();
      sub_22C18E6C4();
      sub_22C273EE4();
      sub_22C176414();
      sub_22C273FA4();
      v60 = sub_22BEC0304();
      v61(v60, v73);
      v62 = sub_22BE336B4();
      v63(v62, v76);

LABEL_6:

      break;
    default:
      sub_22C18F458();
      v37 = sub_22BE29264();
      v38(v37);
      sub_22C1765B8();
      sub_22BE261D0();
      sub_22C273EE4();
      sub_22BE18720();
      sub_22BE20458(v39);
      sub_22C190174();
      v40 = sub_22BE32D8C();
      v41(v40);
      v42 = *(v71 + 8);
      v43 = sub_22BE1A6BC();
      v44(v43);
      v45 = sub_22BE38A68();
      v46(v45);
      break;
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void ClientAction.ShimParameter.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v114 = v28;
  v113 = sub_22BE5CE4C(&qword_27D9135F0, &qword_22C2B82F0);
  sub_22BE179D8(v113);
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22C18E344(v32);
  v33 = sub_22BE5CE4C(&qword_27D9135F8, &qword_22C2B82F8);
  sub_22BE179D8(v33);
  v35 = *(v34 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22C18E504(v37);
  v38 = sub_22BE5CE4C(&qword_27D913600, &qword_22C2B8300);
  sub_22BE179D8(v38);
  v40 = *(v39 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE1A174();
  v110 = sub_22BE5CE4C(&qword_27D913608, &qword_22C2B8308);
  sub_22BE179D8(v110);
  v43 = *(v42 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v44);
  sub_22BE1A174();
  sub_22BEC07BC(v45);
  v46 = sub_22BE5CE4C(&qword_27D913610, &qword_22C2B8310);
  v112 = sub_22BE179D8(v46);
  v48 = *(v47 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v49);
  v50 = sub_22BE1AED0();
  v111 = type metadata accessor for ClientAction.ShimParameter(v50);
  v51 = sub_22BE18000(v111);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22BE183AC();
  sub_22BE27A50();
  MEMORY[0x28223BE20](v54);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v55);
  sub_22BE23858();
  MEMORY[0x28223BE20](v56);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v57);
  sub_22BE26800();
  v59 = v27[3];
  v58 = v27[4];
  sub_22BE203C8();
  sub_22C17636C();
  sub_22BE489BC();
  sub_22C274214();
  if (!v21)
  {
    v109 = v20;
    v60 = v113;
    v61 = sub_22C273ED4();
    sub_22BE7C5C4(v61, 0);
    if (v63 != v62 >> 1)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v70 == v71)
      {
        __break(1u);
        return;
      }

      v108 = *(v69 + v68);
      v72 = sub_22C18F7D4(v64, v65, v66, v67, v68);
      sub_22BE7C5C0(v72);
      v74 = v73;
      v76 = v75;
      swift_unknownObjectRelease();
      if (v74 == v76 >> 1)
      {
        switch(v108)
        {
          case 1:
            sub_22C18F9DC();
            sub_22C176510();
            sub_22BE27168();
            sub_22C18F0E8();
            sub_22C273DE4();
            sub_22C1766B4();
            sub_22BE42748();
            sub_22C273EB4();
            sub_22C18F7A4();
            swift_unknownObjectRelease();
            v102 = sub_22BE2B7E8();
            v103(v102);
            v104 = sub_22C18E758();
            v105(v104);
            v60 = v23;
            *v23 = v115;
            goto LABEL_14;
          case 2:
            sub_22C18F8BC();
            sub_22C176468();
            sub_22BE27168();
            sub_22C18F0E8();
            sub_22C273DE4();
            sub_22C176660();
            sub_22BE42748();
            sub_22C273EB4();
            sub_22C18F7A4();
            swift_unknownObjectRelease();
            v89 = sub_22BE2B7E8();
            v90(v89);
            v91 = sub_22C18E758();
            v92(v91);
            sub_22C18F470(v116, v115);
            goto LABEL_14;
          case 3:
            sub_22C18F940();
            sub_22C1763C0();
            sub_22BE27168();
            sub_22C18F0E8();
            sub_22C273DE4();
            sub_22C17660C();
            sub_22BE42748();
            sub_22C273EB4();
            sub_22C18F7A4();
            swift_unknownObjectRelease();
            v93 = sub_22BE2B7E8();
            v94(v93);
            v95 = sub_22C18E758();
            v96(v95);
            v60 = v109;
            *v109 = v115;
            v109[1].n128_u64[0] = v116;
LABEL_14:
            swift_storeEnumTagMultiPayload();
            sub_22C18E1FC();
            sub_22C171FA8(v60, v22);
            v101 = v27;
            break;
          default:
            sub_22C1765B8();
            sub_22BE27168();
            sub_22C18F0E8();
            sub_22C273DE4();
            sub_22C272874();
            sub_22BE18720();
            sub_22BE20458(v77);
            sub_22BE1C1A4(&a17);
            sub_22BE36350();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v97 = sub_22BE2B7E8();
            v98(v97);
            v99 = sub_22C11FDE0();
            v100(v99, v112);
            swift_storeEnumTagMultiPayload();
            sub_22C18E1FC();
            sub_22C171FA8(v114, v22);
            v101 = v27;
            break;
        }

        sub_22C18E1FC();
        v106 = sub_22BE336E8();
        sub_22C171FA8(v106, v107);
        v88 = v101;
        goto LABEL_10;
      }
    }

    sub_22C273B34();
    sub_22BE196B4();
    v79 = v78;
    v80 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v79 = v111;
    sub_22C273DF4();
    sub_22BE1A918();
    v81 = *MEMORY[0x277D84160];
    sub_22BE18994();
    v83 = *(v82 + 104);
    v84 = sub_22BE38608();
    v85(v84);
    swift_willThrow();
    swift_unknownObjectRelease();
    v86 = sub_22C11FDE0();
    v87(v86, v112);
  }

  v88 = v27;
LABEL_10:
  sub_22BE26B64(v88);
  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t sub_22C14E000(uint64_t a1, uint64_t a2)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C14E08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C14E000(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C14E0B8(uint64_t a1)
{
  v2 = sub_22C176708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14E0F4(uint64_t a1)
{
  v2 = sub_22C176708();

  return MEMORY[0x2821FE720](a1, v2);
}

void ClientAction.StringQuery.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F3A4();
  v0 = sub_22BE5CE4C(&qword_27D913630, &qword_22C2B8318);
  sub_22BE1A3D8(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1B01C();
  sub_22BE3AD08();
  sub_22C176708();
  sub_22BE3A014();
  sub_22C18E100();
  sub_22C273F54();
  v4 = sub_22BE35CD8();
  v5(v4);
  sub_22BE22978();
  sub_22BE18478();
}

uint64_t ClientAction.PhotosCandidates.searchQuery.setter()
{
  sub_22BE1A8A8();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ClientAction.PhotosCandidates.assetEntities.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_22C14E334(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7551686372616573 && a2 == 0xEB00000000797265;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E457465737361 && a2 == 0xED00007365697469)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C14E408(char a1)
{
  if (a1)
  {
    return 0x746E457465737361;
  }

  else
  {
    return 0x7551686372616573;
  }
}

uint64_t sub_22C14E45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C14E334(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C14E484(uint64_t a1)
{
  v2 = sub_22C17675C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14E4C0(uint64_t a1)
{
  v2 = sub_22C17675C();

  return MEMORY[0x2821FE720](a1, v2);
}

void ClientAction.PhotosCandidates.encode(to:)()
{
  sub_22BE19130();
  sub_22C18FEB8();
  v2 = sub_22BE5CE4C(&qword_27D913648, &unk_22C2B8328);
  sub_22BE1BF18(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE19E64();
  v6 = *v0;
  v7 = v0[1];
  v11 = v0[2];
  v8 = sub_22C18FE98();
  sub_22BE25318(v8);
  sub_22C17675C();
  sub_22BE23550();
  sub_22BEE94BC();
  sub_22C274234();
  sub_22C18E4A8();
  sub_22BE1BB58();
  sub_22C273EF4();
  if (!v1)
  {
    sub_22BE33FE4();
    sub_22BE5CE4C(&qword_27D90B9D8, &qword_22C2904E0);
    sub_22C1767B0();
    sub_22C18F608();
    sub_22BE41644();
    sub_22C273FA4();
  }

  v9 = sub_22BE25EE4();
  v10(v9);
  sub_22BE35D48();
  sub_22BE18478();
}

void ClientAction.PhotosCandidates.init(from:)()
{
  sub_22BE19130();
  sub_22C18F140();
  v2 = sub_22BE5CE4C(&qword_27D913658, &qword_22C2B8338);
  sub_22BE179D8(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE234F4();
  sub_22BE3763C();
  sub_22C17675C();
  sub_22BE33A2C();
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18E4BC();
    sub_22C273E04();
    sub_22C18F4BC();
    sub_22BE5CE4C(&qword_27D90B9D8, &qword_22C2904E0);
    sub_22BE33FE4();
    sub_22C176864();
    sub_22C18E128();
    sub_22BE23070();
    sub_22C273EB4();
    v6 = sub_22BE17B54();
    v7(v6);
    sub_22C18F564();

    sub_22C18E8D8();
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t sub_22C14E788(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7551746E65696C63 && a2 == 0xED00006449797265;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6576456E616C70 && a2 == 0xEB00000000644974;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x617261506D696873 && a2 == 0xEE0073726574656DLL)
          {

            return 5;
          }

          else
          {
            v11 = sub_22C274014();

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

uint64_t sub_22C14E990(char a1)
{
  result = 0x6E656D6574617473;
  switch(a1)
  {
    case 1:
      result = 0x64496C6F6F74;
      break;
    case 2:
      result = 0x6574656D61726170;
      break;
    case 3:
      result = 0x7551746E65696C63;
      break;
    case 4:
      result = 0x6E6576456E616C70;
      break;
    case 5:
      result = 0x617261506D696873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C14EA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C14E788(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C14EAC4(uint64_t a1)
{
  v2 = sub_22C176918();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14EB00(uint64_t a1)
{
  v2 = sub_22C176918();

  return MEMORY[0x2821FE720](a1, v2);
}

void ClientAction.encode(to:)()
{
  sub_22BE2BB34();
  sub_22C18E9F8();
  v3 = sub_22BE5CE4C(&qword_27D913660, &unk_22C2B8340);
  sub_22BE1BF18(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22C176918();
  sub_22BE25524();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v7);
  sub_22BE41644();
  sub_22C273FA4();
  if (!v0)
  {
    v8 = type metadata accessor for ClientAction(0);
    sub_22C18E864(v8);
    sub_22C11FDEC(v9);
    sub_22BF0AF1C();
    sub_22BE1BB58();
    sub_22C273F54();
    v12 = *(v1 + v2[6]);
    sub_22BE5CE4C(&qword_27D907D80, &qword_22C277E58);
    sub_22BE860DC();
    sub_22BE37DD4();
    sub_22BE41644();
    sub_22C273FA4();
    sub_22C11FDEC(v2[7]);
    sub_22BE1BB58();
    sub_22C273EF4();
    sub_22C11FDEC(v2[8]);
    sub_22BE1BB58();
    sub_22C273EF4();
    v13 = *(v1 + v2[9]);
    sub_22BE5CE4C(&qword_27D913670, &qword_22C2B8350);
    sub_22C176A20();
    sub_22BE37DD4();
    sub_22BE41644();
    sub_22C273FA4();
  }

  v10 = sub_22BE37A10();
  v11(v10);
  sub_22BEE93D4();
}

void ClientAction.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v12 = v11;
  sub_22C18F8A4(v13);
  v14 = sub_22C26E684();
  v15 = sub_22BE179D8(v14);
  v45 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE294E0();
  v46 = sub_22BE5CE4C(&qword_27D913690, &qword_22C2B8358);
  sub_22BE179D8(v46);
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  v22 = sub_22BE1AED0();
  v43 = type metadata accessor for ClientAction(v22);
  v23 = sub_22BE18000(v43);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE17A44();
  sub_22BE3668C(v26);
  v28 = v12[3];
  v27 = v12[4];
  sub_22BE31088(v12);
  sub_22C176918();
  sub_22BE489BC();
  sub_22C274214();
  if (v10)
  {
    sub_22BE26B64(v12);
  }

  else
  {
    LOBYTE(a10) = 0;
    sub_22BE18F44();
    sub_22BE20458(v29);
    sub_22C273EB4();
    v30 = *(v45 + 32);
    v31 = sub_22BE354DC();
    v32(v31);
    sub_22C18E9E0(1);
    v33 = sub_22C273E64();
    sub_22C18FA48(v33, v34, v43[5]);
    sub_22BE5CE4C(&qword_27D907D80, &qword_22C277E58);
    sub_22C18F8C8();
    sub_22BE862F8();
    sub_22BE35E60();
    sub_22C1900BC();
    *(v44 + v43[6]) = a10;
    sub_22C18E9E0(3);
    v35 = sub_22C273E04();
    sub_22C18FA48(v35, v36, v43[7]);
    sub_22C18E9E0(4);
    v37 = sub_22C273E04();
    sub_22C18FA48(v37, v38, v43[8]);
    sub_22BE5CE4C(&qword_27D913670, &qword_22C2B8350);
    sub_22C176A20();
    sub_22BE35E60();
    sub_22C1900BC();
    v39 = sub_22BE416AC();
    v40(v39);
    *(v44 + v43[9]) = a10;
    v41 = sub_22BE1AB74();
    sub_22BE1A964(v41, v42);
    sub_22BE26B64(v12);
    sub_22BE268B8();
    sub_22C171FFC();
  }

  sub_22BE35D48();
  sub_22BE18478();
}

uint64_t PersonQuery.id.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_22BE19454();
}

uint64_t PersonQuery.Handle.init(personValue:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_22C2727B4();
  v5 = [v4 personHandle];

  if (v5)
  {
    v6 = [v5 type];

    v7 = sub_22C2727C4();
    sub_22BE18000(v7);
    result = (*(v8 + 8))(a1);
    if (v6 == 2)
    {
      v10 = 0;
    }

    else
    {
      v10 = 3;
    }

    if (v6 == 1)
    {
      v10 = 1;
    }
  }

  else
  {
    v11 = sub_22C2727C4();
    sub_22BE18000(v11);
    result = (*(v12 + 8))(a1);
    v10 = 3;
  }

  *a2 = v10;
  return result;
}

uint64_t sub_22C14F400(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6F6870 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C69616D65 && a2 == 0xE500000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656D697465636166 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22C14F510(char a1)
{
  if (!a1)
  {
    return 0x656E6F6870;
  }

  if (a1 == 1)
  {
    return 0x6C69616D65;
  }

  return 0x656D697465636166;
}

uint64_t sub_22C14F568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C14F400(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C14F590(uint64_t a1)
{
  v2 = sub_22C176B40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14F5CC(uint64_t a1)
{
  v2 = sub_22C176B40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C14F608(uint64_t a1)
{
  v2 = sub_22C176BE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14F644(uint64_t a1)
{
  v2 = sub_22C176BE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C14F680(uint64_t a1)
{
  v2 = sub_22C176B94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14F6BC(uint64_t a1)
{
  v2 = sub_22C176B94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C14F6F8(uint64_t a1)
{
  v2 = sub_22C176C3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14F734(uint64_t a1)
{
  v2 = sub_22C176C3C();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonQuery.Handle.Kind.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F4C8();
  v2 = sub_22BE5CE4C(&qword_27D9136B0, &qword_22C2B8360);
  sub_22BE179D8(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE20168(v6, v30);
  v7 = sub_22BE5CE4C(&qword_27D9136B8, &qword_22C2B8368);
  sub_22BE179D8(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE181D0(v11, v31);
  v12 = sub_22BE5CE4C(&qword_27D9136C0, &qword_22C2B8370);
  sub_22BE179D8(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE19E64();
  v16 = sub_22BE5CE4C(&qword_27D9136C8, &qword_22C2B8378);
  sub_22BE1A3D8(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE234F4();
  v22 = *v0;
  v24 = v1[3];
  v23 = v1[4];
  sub_22BE31088(v1);
  sub_22C176B40();
  sub_22BE48270();
  sub_22C274234();
  if (v22)
  {
    if (v22 == 1)
    {
      sub_22BE33FE4();
      sub_22C176BE8();
    }

    else
    {
      sub_22BE39E24();
      sub_22C176B94();
    }

    sub_22C18E484();
    sub_22C273EE4();
  }

  else
  {
    sub_22C176C3C();
    sub_22C18E484();
    sub_22C273EE4();
  }

  v25 = sub_22BE2399C();
  v26(v25);
  v27 = *(v18 + 8);
  v28 = sub_22BE33560();
  v29(v28);
  sub_22C18FEDC();
  sub_22BE18478();
}

uint64_t sub_22C14FA54()
{
  v1 = *v0;
  sub_22BE25DAC();
  v2 = sub_22BEC03B0();
  MEMORY[0x2318AC860](v2);
  return sub_22C2741A4();
}

void PersonQuery.Handle.Kind.init(from:)()
{
  sub_22BE19130();
  v3 = v2;
  v63 = v4;
  v65 = sub_22BE5CE4C(&qword_27D9136F0, &qword_22C2B8380);
  sub_22BE179D8(v65);
  v64 = v5;
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  sub_22BE3BF90(v9);
  v10 = sub_22BE5CE4C(&qword_27D9136F8, &qword_22C2B8388);
  sub_22BE179D8(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE25CD0();
  v14 = sub_22BE5CE4C(&qword_27D913700, &qword_22C2B8390);
  sub_22BE179D8(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE23E58();
  v18 = sub_22BE5CE4C(&qword_27D913708, &qword_22C2B8398);
  sub_22BE1BF18(v18);
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE1B01C();
  v23 = v3[3];
  v22 = v3[4];
  sub_22BE41E84(v3);
  sub_22C176B40();
  sub_22BE232E4();
  sub_22BE40618();
  sub_22C274214();
  if (!v1)
  {
    v66 = v3;
    v24 = sub_22C273ED4();
    sub_22BE7C5C4(v24, 0);
    sub_22C18F638();
    if (!v25)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v32 == v33)
      {
        __break(1u);
        return;
      }

      v34 = *(v31 + v30);
      v35 = sub_22BE3A464(v26, v27, v28, v29, v30);
      sub_22BE7C5C0(v35);
      sub_22C18FFD8();
      v37 = v36;
      swift_unknownObjectRelease();
      if (v22 == v37 >> 1)
      {
        if (v34)
        {
          if (v34 == 1)
          {
            sub_22BE33FE4();
            sub_22C176BE8();
            sub_22C18F928();
            sub_22BE3788C();
            sub_22C273DE4();
            v38 = v63;
            swift_unknownObjectRelease();
            v50 = sub_22BE1B5F8();
            v51(v50);
            v52 = sub_22C18E758();
            v53(v52);
          }

          else
          {
            sub_22BE39E24();
            sub_22C176B94();
            sub_22BE3788C();
            sub_22C273DE4();
            v38 = v63;
            swift_unknownObjectRelease();
            v58 = *(v64 + 8);
            v59 = sub_22BE2684C();
            v60(v59);
            v61 = sub_22C18F5D4();
            v62(v61, v0);
          }
        }

        else
        {
          sub_22C176C3C();
          sub_22BE3788C();
          sub_22C273DE4();
          swift_unknownObjectRelease();
          v54 = sub_22BE2399C();
          v55(v54, v14);
          v56 = sub_22C11FDE0();
          v57(v56, v0);
          v38 = v63;
        }

        *v38 = v34;
        sub_22BE26B64(v66);
        goto LABEL_11;
      }
    }

    v39 = sub_22C273B34();
    sub_22BE196B4();
    v41 = v40;
    v42 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v41 = &type metadata for PersonQuery.Handle.Kind;
    sub_22C273DF4();
    sub_22BE1B198();
    v43 = *MEMORY[0x277D84160];
    sub_22BE1BC24(v39);
    v45 = *(v44 + 104);
    v46 = sub_22C18FE14();
    v47(v46);
    swift_willThrow();
    swift_unknownObjectRelease();
    v48 = sub_22BE39058();
    v49(v48, v0);
    v3 = v66;
  }

  sub_22BE26B64(v3);
LABEL_11:
  sub_22BE34134();
  sub_22BE18478();
}

uint64_t static PersonQuery.Handle.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    if (v3 != 3)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_22C150010(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C15009C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C150010(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C1500C8(uint64_t a1)
{
  v2 = sub_22C176C90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C150104(uint64_t a1)
{
  v2 = sub_22C176C90();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonQuery.Handle.encode(to:)()
{
  sub_22BE19130();
  v2 = v1;
  v3 = sub_22BE5CE4C(&qword_27D913710, &qword_22C2B83A0);
  sub_22BE179D8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1B01C();
  v9 = *v0;
  v10 = v2[3];
  v11 = v2[4];
  sub_22BE2018C(v2);
  sub_22C176C90();
  sub_22BE194D0();
  sub_22C176CE4();
  sub_22C18F374();
  sub_22C273F34();
  v12 = *(v5 + 8);
  v13 = sub_22BE25C08();
  v14(v13);
  sub_22BE22978();
  sub_22BE18478();
}

void PersonQuery.Handle.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_22BE19130();
  sub_22C18E778();
  v16 = sub_22BE5CE4C(&qword_27D913728, &qword_22C2B83A8);
  sub_22BE1A3D8(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1B01C();
  sub_22BE3763C();
  sub_22C176C90();
  sub_22BE18878();
  if (!v14)
  {
    sub_22C176D38();
    sub_22BE1B934();
    sub_22C18F368();
    sub_22C273E44();
    v20 = sub_22BE17B24();
    v21(v20);
    *v15 = a13;
  }

  sub_22BE26B64(v13);
  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t sub_22C150344(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1699574633 && a2 == 0xE400000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 25705 && a2 == 0xE200000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_22C150490(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656C646E6168;
      break;
    case 2:
      result = 1699574633;
      break;
    case 3:
      result = 25705;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C15052C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C150344(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C150554(uint64_t a1)
{
  v2 = sub_22C176D8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C150590(uint64_t a1)
{
  v2 = sub_22C176D8C();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonQuery.encode(to:)()
{
  sub_22BE19130();
  sub_22BE3FF70();
  v3 = sub_22BE5CE4C(&qword_27D913738, &qword_22C2B83B0);
  sub_22BE179D8(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  v8 = *v0;
  v7 = v0[1];
  v15 = *(v0 + 17);
  v16 = *(v0 + 16);
  v13 = v0[4];
  v14 = v0[3];
  v9 = v2[3];
  v10 = v2[4];
  sub_22BE2018C(v2);
  sub_22C176D8C();
  sub_22BE25524();
  sub_22C18E9AC();
  sub_22BE2684C();
  sub_22C18F5FC();
  sub_22C273EF4();
  if (!v1)
  {
    sub_22BE38948();
    sub_22C176DE0();
    sub_22BE26258();
    sub_22BE39020();
    sub_22C273F34();
    sub_22C18EAFC();
    sub_22BE39020();
    sub_22C273F64();
    sub_22BE3418C();
    sub_22C18E494();
    sub_22C273EF4();
  }

  v11 = sub_22C18E748();
  v12(v11);
  sub_22BE35D48();
  sub_22BE18478();
}

void PersonQuery.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_22BE19130();
  sub_22C18F140();
  v17 = v16;
  v18 = sub_22BE5CE4C(&qword_27D913750, &qword_22C2B83B8);
  sub_22BE1A3D8(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE234F4();
  sub_22BE3763C();
  sub_22C176D8C();
  sub_22BE33A2C();
  if (v13)
  {
    sub_22BE26B64(v12);
  }

  else
  {
    sub_22C18EA24();
    sub_22BE416D4();
    sub_22C273E04();
    sub_22C18F4BC();
    sub_22BE38948();
    sub_22C176E34();
    sub_22C18FA0C();
    sub_22BE1B934();
    sub_22BE23070();
    sub_22C273E44();
    sub_22C18EAFC();
    sub_22BE416D4();
    v31 = sub_22C273E74();
    sub_22BE3418C();
    sub_22BE416D4();
    v24 = sub_22C273E04();
    v26 = v25;
    v27 = *(v20 + 8);
    v30 = v24;
    v28 = sub_22BE33560();
    v29(v28);
    *v17 = v15;
    *(v17 + 8) = v14;
    *(v17 + 16) = a12;
    *(v17 + 17) = v31 & 1;
    *(v17 + 24) = v30;
    *(v17 + 32) = v26;

    sub_22C18E8D8();
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t QueryStep.context.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for QueryStep(v0) + 20);
  return sub_22BE18504();
}

uint64_t QueryStep.payload.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for QueryStep(v0) + 24);
  return sub_22BE18504();
}

uint64_t QueryStep.isAuthenticated.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for QueryStep(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t QueryStep.isAuthenticated.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for QueryStep(v0) + 28);
  return sub_22BE18504();
}

void QueryStep.init(statementId:context:payload:isAuthenticated:)()
{
  sub_22BE3C358();
  v2 = v1;
  v4 = v3;
  v5 = sub_22C0E9824();
  Step = type metadata accessor for QueryStep(v5);
  v7 = Step[5];
  v8 = type metadata accessor for ActionParameterContext(0);
  sub_22C0E966C(v0 + v7, v9, v10, v8);
  v11 = sub_22C26E684();
  sub_22BE1834C(v11);
  v13 = *(v12 + 32);
  v14 = sub_22BE336E8();
  v15(v14);
  sub_22BE2343C();
  v16 = Step[6];
  sub_22BE259B0();
  sub_22C171FA8(v4, v0 + v17);
  *(v0 + Step[7]) = v2;
  sub_22BE267B8();
}

void static QueryPayload.== infix(_:_:)()
{
  sub_22BE19460();
  v70 = v5;
  v7 = v6;
  v67 = type metadata accessor for QueryPayload.IdentifierQuery(0);
  v8 = sub_22BE18000(v67);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE17A44();
  v69 = v11;
  v12 = sub_22BE183BC();
  v66 = type metadata accessor for QueryPayload.StringQuery(v12);
  v13 = sub_22BE18000(v66);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  v68 = v16;
  v17 = sub_22BE183BC();
  Payload = type metadata accessor for QueryPayload(v17);
  v19 = sub_22BE18000(Payload);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE183AC();
  sub_22BE28EF4();
  MEMORY[0x28223BE20](v22);
  sub_22BE23858();
  MEMORY[0x28223BE20](v23);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v24);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v25);
  v27 = (&v65 - v26);
  v28 = sub_22BE5CE4C(&qword_27D913760, &qword_22C2B83C0);
  sub_22BE19448(v28);
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE1B72C();
  v33 = v0 + *(v32 + 56);
  sub_22BE1A964(v7, v0);
  sub_22BE1A964(v70, v33);
  sub_22BE3CC34();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE35C34();
      v52 = sub_22BE1B62C();
      sub_22BE1A964(v52, v53);
      v54 = v3[1];
      v55 = v3[4];
      sub_22BF6AC14();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v56 = v3[3];
        v57 = *(v3 + 17);
        v58 = *(v3 + 16);
        v59 = *v33;
        v60 = *(v33 + 8);
        v61 = *(v33 + 16);
        v62 = *(v33 + 17);
        v63 = *(v33 + 24);
        v64 = *(v33 + 32);
        v77 = *v3;
        v78 = v54;
        v79 = v58;
        v80 = v57;
        v81 = v56;
        v82 = v55;
        v71 = v59;
        v72 = v60;
        v73 = v61;
        v74 = v62;
        v75 = v63;
        v76 = v64;
        static PersonQuery.== infix(_:_:)();

        goto LABEL_20;
      }

      goto LABEL_24;
    case 2u:
      sub_22BE35C34();
      v41 = sub_22BE37490();
      sub_22BE1A964(v41, v42);
      sub_22BF6AC14();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_22C0E9848();
LABEL_22:
        sub_22C171FFC();
        goto LABEL_25;
      }

      v43 = v68;
      sub_22C171FA8(v33, v68);
      sub_22BE38970();
      if (sub_22C272954())
      {
        v44 = *(v66 + 20);
        v45 = *(v2 + v44);
        v46 = *(v2 + v44 + 8);
        v47 = (v43 + v44);
        if (v45 != *v47 || v46 != v47[1])
        {
          sub_22C274014();
        }
      }

      sub_22C18EACC();
      sub_22C171FFC();
LABEL_28:
      sub_22C171FFC();
      sub_22C18E040();
      sub_22C171FFC();
      break;
    case 3u:
      sub_22BE35C34();
      v49 = sub_22BE1A6BC();
      sub_22BE1A964(v49, v50);
      sub_22BF6AC14();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_22;
      }

      v51 = v69;
      sub_22C171FA8(v33, v69);
      if (sub_22C272954())
      {
        sub_22BE9693C(*(v4 + *(v67 + 20)), *(v51 + *(v67 + 20)));
      }

      sub_22C18EAB4();
      sub_22C171FFC();
      goto LABEL_28;
    case 4u:
      sub_22BE35C34();
      v37 = sub_22BE19454();
      sub_22BE1A964(v37, v38);
      v39 = *v1;
      sub_22BF6AC14();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_5;
      }

      goto LABEL_24;
    default:
      sub_22BE35C34();
      v34 = sub_22BE33FD8();
      sub_22BE1A964(v34, v35);
      v36 = *v27;
      sub_22BF6AC14();
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_24:

LABEL_25:
        sub_22C18DC5C(v0, &qword_27D913760);
      }

      else
      {
LABEL_5:
        v40 = *v33;
        sub_22BE191CC();
        sub_22BEA6844();

LABEL_20:

        sub_22C18E040();
        sub_22C171FFC();
      }

      break;
  }

  sub_22BE1B1B8();
  sub_22BE1AABC();
}