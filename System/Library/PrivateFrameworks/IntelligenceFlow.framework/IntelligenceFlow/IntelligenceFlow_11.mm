uint64_t sub_1DD7C7B88(uint64_t a1)
{
  v2 = sub_1DD803108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C7BC4(uint64_t a1)
{
  v2 = sub_1DD803204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C7C00(uint64_t a1)
{
  v2 = sub_1DD803204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemPrompt.Prompt.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v22;
  a20 = v23;
  a10 = v20;
  v25 = v24;
  v85 = sub_1DD710A9C(&qword_1ECD121E0, &qword_1DD889CA8);
  sub_1DD6DDEAC(v85);
  v27 = *(v26 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD8249DC(v29, v83);
  v30 = sub_1DD710A9C(&qword_1ECD121E8, &qword_1DD889CB0);
  sub_1DD6DF3FC(v30, &a16);
  v32 = *(v31 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD8247DC(v34, v84);
  v35 = type metadata accessor for ParameterConfirmation(0);
  v36 = sub_1DD6DEDE0(v35, &a12);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v39);
  v40 = sub_1DD710A9C(&qword_1ECD121F0, &qword_1DD889CB8);
  sub_1DD6DF3FC(v40, &a11);
  v42 = *(v41 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1DD6E0C6C();
  v45 = sub_1DD6ED230(v44);
  v46 = type metadata accessor for ParameterNeedsValue(v45);
  v47 = sub_1DD6DEDE0(v46, &v89);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1DD702A64();
  v50 = sub_1DD710A9C(&qword_1ECD121F8, &qword_1DD889CC0);
  sub_1DD6DDEAC(v50);
  v52 = *(v51 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1DD6E17C8();
  v54 = type metadata accessor for SystemPrompt.Prompt(0);
  v55 = sub_1DD6DE1C4(v54);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  sub_1DD6E535C();
  v58 = sub_1DD710A9C(&qword_1ECD12200, &qword_1DD889CC8);
  sub_1DD6DDEAC(v58);
  v60 = *(v59 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v61);
  sub_1DD6DE340();
  v62 = v25[3];
  v63 = v25[4];
  sub_1DD6FE770(v25);
  sub_1DD8030B4();
  sub_1DD8256E0();
  sub_1DD875BB0();
  sub_1DD6FAB40();
  sub_1DD6E5870();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6E59B8();
      sub_1DD826920();
      sub_1DD803204();
      sub_1DD8272FC();
      sub_1DD6EFF94(v77);
      sub_1DD6FA420();
      sub_1DD875910();
      sub_1DD6DEC60();
      sub_1DD6E1E84(v78);
      sub_1DD6FAD44();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v79 = sub_1DD6E5DE8(&a10);
      v80(v79);
      goto LABEL_6;
    case 2u:
      sub_1DD6E5B50(&a13);
      sub_1DD826FF0();
      sub_1DD8031B0();
      sub_1DD6EFF94(&a14);
      sub_1DD6FA420();
      sub_1DD875910();
      sub_1DD6E0FE0();
      sub_1DD6E1E84(v68);
      sub_1DD6FAD44();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v69 = sub_1DD6E5DE8(&a15);
      v70(v69);
LABEL_6:
      sub_1DD6E5ABC();
      v81 = sub_1DD824A94();
      v82(v81);
      break;
    case 3u:
      v71 = v21[1];
      v86[0] = *v21;
      v86[1] = v71;
      v72 = v21[3];
      v87[0] = v21[2];
      v87[1] = v72;
      sub_1DD803108();
      sub_1DD6EFF94(&a17);
      sub_1DD6FA420();
      sub_1DD875910();
      sub_1DD80315C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v73 = sub_1DD6E5DE8(&a18);
      v74(v73, v85);
      v75 = sub_1DD824A94();
      v76(v75);
      sub_1DD80040C(v86);
      break;
    default:
      *(v87 + 10) = sub_1DD6FF6B0();
      sub_1DD803258();
      sub_1DD824AB4();
      sub_1DD875910();
      sub_1DD8273B8();
      sub_1DD8032AC();
      sub_1DD827280();
      sub_1DD6DEDD4(&v88);
      v64 = sub_1DD825980();
      v65(v64);
      v66 = sub_1DD824A60();
      v67(v66);
      sub_1DD80043C(v86);
      break;
  }

  sub_1DD825AC0();
  sub_1DD6E0C78();
}

void SystemPrompt.Prompt.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v24;
  a20 = v25;
  sub_1DD7038A0();
  v106 = sub_1DD710A9C(&qword_1ECD12250, &qword_1DD889CD0);
  sub_1DD6DDEAC(v106);
  v27 = *(v26 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD824A38(v29, v100);
  v105 = sub_1DD710A9C(&qword_1ECD12258, &qword_1DD889CD8);
  sub_1DD6DDEAC(v105);
  v31 = *(v30 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD82546C(v33, v101);
  v34 = sub_1DD710A9C(&qword_1ECD12260, &qword_1DD889CE0);
  sub_1DD6DF3FC(v34, &a16);
  v36 = *(v35 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD825428(v38, v102);
  v109 = sub_1DD710A9C(&qword_1ECD12268, &qword_1DD889CE8);
  sub_1DD6DDEAC(v109);
  v40 = *(v39 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1DD824B94(v42, v103);
  v110 = sub_1DD710A9C(&qword_1ECD12270, &qword_1DD889CF0);
  sub_1DD6DDEAC(v110);
  v107 = v43;
  v45 = *(v44 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v46);
  v47 = sub_1DD6E27D4();
  v108 = type metadata accessor for SystemPrompt.Prompt(v47);
  v48 = sub_1DD6DE1C4(v108);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1DD6DE21C();
  sub_1DD6EE8A8();
  MEMORY[0x1EEE9AC00](v51);
  sub_1DD824970();
  MEMORY[0x1EEE9AC00](v52);
  sub_1DD824CC4();
  MEMORY[0x1EEE9AC00](v53);
  sub_1DD6F8C84();
  MEMORY[0x1EEE9AC00](v54);
  sub_1DD6DFF40();
  v55 = v20[3];
  v56 = v20[4];
  v111 = v20;
  sub_1DD70066C();
  sub_1DD8030B4();
  sub_1DD8259BC();
  sub_1DD8270F4();
  if (!v21)
  {
    sub_1DD827308();
    a10 = v23;
    v57 = sub_1DD875900();
    sub_1DD6ED750(v57, 0);
    sub_1DD827598();
    if (!v58)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v65 == v66)
      {
        __break(1u);
        return;
      }

      v67 = *(v64 + v63);
      v68 = sub_1DD826480(v59, v60, v61, v62, v63);
      sub_1DD6ED830(v68);
      sub_1DD8276EC();
      v70 = v69;
      swift_unknownObjectRelease();
      if (v56 == v70 >> 1)
      {
        switch(v67)
        {
          case 1uLL:
            sub_1DD803204();
            sub_1DD6F3128();
            sub_1DD875800();
            type metadata accessor for ParameterNeedsValue(0);
            sub_1DD6DEC60();
            sub_1DD6E1E84(v80);
            sub_1DD6F4500(&a12);
            sub_1DD825CE0();
            sub_1DD8758D0();
            swift_unknownObjectRelease();
            v96 = sub_1DD824890(&a17);
            v97(v96);
            v98 = sub_1DD824F60();
            v99(v98);
            sub_1DD825674();
            swift_storeEnumTagMultiPayload();
            sub_1DD6ED818();
            goto LABEL_15;
          case 2uLL:
            sub_1DD8031B0();
            sub_1DD6F3128();
            sub_1DD825CB0();
            sub_1DD875800();
            type metadata accessor for ParameterConfirmation(0);
            sub_1DD6E0FE0();
            sub_1DD6E1E84(v79);
            sub_1DD825CE0();
            sub_1DD8758D0();
            sub_1DD826B98();
            swift_unknownObjectRelease();
            v81 = sub_1DD8252CC();
            v82(v81);
            v83 = *(v107 + 8);
            v84 = sub_1DD6FAA70();
            v85(v84);
            sub_1DD825C04();
            swift_storeEnumTagMultiPayload();
            sub_1DD6ED818();
LABEL_15:
            sub_1DD6E59B8();
            v95 = v111;
            goto LABEL_16;
          case 3uLL:
            v112.n128_u8[0] = 3;
            sub_1DD803108();
            sub_1DD6F3128();
            sub_1DD825CB0();
            sub_1DD875800();
            sub_1DD803300();
            sub_1DD6F09C4();
            sub_1DD8758D0();
            sub_1DD826330(&a18);
            sub_1DD826B98();
            swift_unknownObjectRelease();
            v86 = *v67;
            v87 = sub_1DD6E6384();
            v88(v87);
            v89 = *(v107 + 8);
            v90 = sub_1DD6FAA70();
            v91(v90);
            sub_1DD826888(&a11, v112, v113);
            *(v107 + 40) = *v114;
            *(v107 + 56) = *&v114[16];
            sub_1DD825C04();
            goto LABEL_14;
          default:
            v112.n128_u8[0] = 0;
            sub_1DD803258();
            sub_1DD6F3128();
            sub_1DD875800();
            sub_1DD803354();
            sub_1DD6E9938();
            sub_1DD8758D0();
            sub_1DD826330(&a15);
            sub_1DD826B98();
            swift_unknownObjectRelease();
            v92 = *v104;
            v93 = sub_1DD826814();
            v94(v93);
            (*(v107 + 8))(a10, v110);
            sub_1DD826888(&a10, v112, v113);
            *(v107 + 40) = *v114;
            *(v107 + 50) = *&v114[10];
            sub_1DD825C04();
LABEL_14:
            swift_storeEnumTagMultiPayload();
            sub_1DD6ED818();
            sub_1DD6E59B8();
            v95 = v111;
LABEL_16:
            sub_1DD6ED818();
            sub_1DD8256C8();
            sub_1DD6E59B8();
            sub_1DD6E1EC8(v95);
            break;
        }

        goto LABEL_10;
      }
    }

    sub_1DD875740();
    sub_1DD6E41BC();
    sub_1DD827740();
    v71 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v22 = v108;
    sub_1DD875810();
    sub_1DD6DF12C();
    v72 = *MEMORY[0x1E69E6AF8];
    sub_1DD824B14();
    v74 = *(v73 + 104);
    v75 = sub_1DD6FEB10();
    v76(v75);
    swift_willThrow();
    swift_unknownObjectRelease();
    v77 = sub_1DD6DEBBC();
    v78(v77, v110);
  }

  sub_1DD6E1EC8(v111);
LABEL_10:
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7C8BC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644970657473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD7C8D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7C8BC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7C8D48(uint64_t a1)
{
  v2 = sub_1DD8033A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C8D84(uint64_t a1)
{
  v2 = sub_1DD8033A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemPrompt.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6F8C0C();
  v3 = sub_1DD710A9C(&qword_1ECD12298, &qword_1DD889CF8);
  sub_1DD6E49A8(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE340();
  sub_1DD6DEAD0();
  sub_1DD8033A8();
  sub_1DD8250D8();
  sub_1DD875BB0();
  sub_1DD825C8C();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v7);
  sub_1DD6F9A4C();
  sub_1DD6E730C();
  sub_1DD8759D0();
  if (!v0)
  {
    v8 = type metadata accessor for SystemPrompt(0);
    sub_1DD825AA8(v8);
    sub_1DD824D48((v1 + v9));
    sub_1DD7055A8();
    sub_1DD875970();
    v10 = *(v2 + 24);
    sub_1DD6E0FF8();
    type metadata accessor for SystemPrompt.Prompt(0);
    sub_1DD700630();
    sub_1DD6E1E84(v11);
    sub_1DD700E54();
    sub_1DD6E730C();
    sub_1DD8759D0();
  }

  v12 = sub_1DD825168();
  v13(v12);
  sub_1DD825790();
  sub_1DD826CF4();
}

void SystemPrompt.init(from:)()
{
  sub_1DD6DED2C();
  v3 = sub_1DD82662C(v2);
  v31 = type metadata accessor for SystemPrompt.Prompt(v3);
  v4 = sub_1DD6DE1C4(v31);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD824734();
  v33 = sub_1DD874820();
  v7 = sub_1DD6DDEAC(v33);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DDEE8();
  sub_1DD826244(v10);
  v32 = sub_1DD710A9C(&qword_1ECD122B0, &qword_1DD889D00);
  sub_1DD6DDEAC(v32);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DEA6C();
  v14 = type metadata accessor for SystemPrompt(0);
  v15 = sub_1DD6DE1C4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6ED3C0();
  v19 = v1[3];
  v18 = v1[4];
  sub_1DD6FE8B0(v1);
  sub_1DD8033A8();
  sub_1DD6E17D8();
  sub_1DD82686C();
  if (v0)
  {
    sub_1DD6E1EC8(v1);
  }

  else
  {
    sub_1DD8265B4();
    sub_1DD6E14DC();
    sub_1DD6E1E84(v20);
    sub_1DD6F9A4C();
    sub_1DD6E4968();
    sub_1DD8758D0();
    v21 = sub_1DD825764();
    v22(v21);
    sub_1DD824CE8();
    sub_1DD6E72A8();
    sub_1DD875870();
    sub_1DD8275F4(v30);
    *v25 = v23;
    v25[1] = v24;
    sub_1DD6E0FF8();
    sub_1DD700630();
    sub_1DD6E1E84(v26);
    sub_1DD827008();
    sub_1DD6E4968();
    sub_1DD8758D0();
    v27 = sub_1DD825780();
    v28(v27);
    v29 = *(v30 + 24);
    sub_1DD6ED818();
    sub_1DD6E59B8();
    sub_1DD825CEC();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v1);
    sub_1DD826B48();
    sub_1DD6E5ABC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t SystemPromptResolution.systemResponseEventId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SystemPromptResolution(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7C9368(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v7 = sub_1DD6EE78C();
  v9 = v8(v7);
  v10 = sub_1DD701458(v9);
  v11 = a3(v10);
  sub_1DD6DF448(v11);
  v13 = *(v12 + 40);

  return v13(v3 + v5, v4);
}

void (*SystemPromptResolution.actionResponseEventId.modify())(uint64_t a1)
{
  v1 = sub_1DD7281CC(0x28uLL);
  sub_1DD82748C(v1);
  v2 = sub_1DD874820();
  *(v0 + 8) = v2;
  sub_1DD6DDEAC(v2);
  v4 = v3;
  *(v0 + 16) = v3;
  *(v0 + 24) = sub_1DD7281CC(*(v5 + 64));
  *(v0 + 32) = *(type metadata accessor for SystemPromptResolution(0) + 20);
  v6 = *(v4 + 16);
  v7 = sub_1DD700660();
  v8(v7);
  return sub_1DD7C94B8;
}

void sub_1DD7C94B8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  (*(*(*a1 + 16) + 40))(**a1 + *(*a1 + 32), v2, *(*a1 + 8));
  free(v2);

  free(v1);
}

uint64_t SystemPromptResolution.userAction.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SystemPromptResolution(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t SystemPromptResolution.statementId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SystemPromptResolution(v0) + 28);
  return sub_1DD6DDF9C();
}

uint64_t SystemPromptResolution.inputModality.getter()
{
  v2 = sub_1DD6E0A5C();
  result = type metadata accessor for SystemPromptResolution(v2);
  v4 = (v1 + *(result + 32));
  v11 = *(v4 + 32) == 2 && ((v5 = *v4, v6 = v4[1], v7 = v4[2] | v4[3], (v8 = v7 | *v4 | v6) == 0) || ((v9 = v7 | v6, v5 == 1) ? (v10 = v9 == 0) : (v10 = 0), v10)) && v8 != 0;
  *v0 = v11;
  return result;
}

uint64_t sub_1DD7C9694@<X0>(_BYTE *a1@<X8>)
{
  result = SystemPromptResolution.inputModality.getter();
  *a1 = v3;
  return result;
}

uint64_t SystemPromptResolution.inputModality.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = v1 + *(type metadata accessor for SystemPromptResolution(0) + 32);
  v4 = sub_1DD6E3AB0();
  result = sub_1DD7FD670(v4, v5, v6, v7, v8);
  *v3 = v2;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 2;
  return result;
}

uint64_t (*SystemPromptResolution.inputModality.modify(void *a1))(uint64_t a1)
{
  v3 = sub_1DD82661C(a1);
  v4 = *(type metadata accessor for SystemPromptResolution(v3) + 32);
  *(v1 + 8) = v4;
  v5 = (v2 + v4);
  v10 = *(v5 + 32) == 2 && ((v6 = *v5, v7 = v5[1] | v5[2] | v5[3], (v8 = v7 | *v5) == 0) || (v6 == 1 ? (v9 = v7 == 0) : (v9 = 0), v9)) && v8 != 0;
  *(v1 + 12) = v10;
  return sub_1DD7C97E0;
}

uint64_t sub_1DD7C97E0(uint64_t a1)
{
  v1 = *a1 + *(a1 + 8);
  v2 = *(a1 + 12);
  result = sub_1DD7FD670(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  *v1 = v2;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 2;
  return result;
}

uint64_t SystemPromptResolution.input.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = type metadata accessor for SystemPromptResolution(v0);
  v2 = sub_1DD8255E0(*(v1 + 32));

  return sub_1DD7FD604(v2, v3, v4, v5, v6);
}

void SystemPromptResolution.input.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v1 + *(type metadata accessor for SystemPromptResolution(0) + 32);
  v4 = sub_1DD6E3AB0();
  sub_1DD7FD670(v4, v5, v6, v7, v8);
  sub_1DD6FEB38();
  *(v3 + 32) = v2;
}

uint64_t SystemPromptResolution.input.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SystemPromptResolution(v0) + 32);
  return sub_1DD6DDF9C();
}

uint64_t SystemPromptResolution.description.getter()
{
  v2 = v0;
  v3 = sub_1DD6FF97C();
  v5 = sub_1DD710A9C(v3, v4);
  sub_1DD6DEA10(v5);
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEA6C();
  sub_1DD8756B0();
  MEMORY[0x1E12B4C10](0xD000000000000026, 0x80000001DD8B62B0);
  sub_1DD825974();
  sub_1DD700E60();
  v9 = sub_1DD874820();
  v10 = sub_1DD6DE1FC(v1, 1, v9);
  if (v11)
  {
    sub_1DD824154(v1, &qword_1ECD0E540);
  }

  else
  {
    MEMORY[0x1E12B41F0](v10);
    sub_1DD6E0540(v9);
    v13 = *(v12 + 8);
    v14 = sub_1DD6E0C60();
    v15(v14);
  }

  v16 = sub_1DD6DDEDC();
  MEMORY[0x1E12B4C10](v16);

  MEMORY[0x1E12B4C10](0xD000000000000019, 0x80000001DD8B62E0);
  v17 = type metadata accessor for SystemPromptResolution(0);
  v18 = v17[5];
  sub_1DD6E14DC();
  sub_1DD6E1E84(v19);
  v20 = sub_1DD875A10();
  MEMORY[0x1E12B4C10](v20);

  MEMORY[0x1E12B4C10](0x634172657375202CLL, 0xEE00203A6E6F6974);
  v21 = v2 + v17[6];
  v22 = SystemPromptResolution.UserAction.description.getter();
  MEMORY[0x1E12B4C10](v22);

  MEMORY[0x1E12B4C10](0x6D6574617473202CLL, 0xEF203A6449746E65);
  v23 = (v2 + v17[7]);
  v26 = *v23;
  v27 = *(v23 + 2);
  v24 = StatementID.description.getter();
  MEMORY[0x1E12B4C10](v24);

  sub_1DD826BA8();
  return 0;
}

__n128 SystemPromptResolution.init(actionEventId:systemResponseEventId:userAction:statementId:input:)()
{
  sub_1DD826D80();
  sub_1DD6E01A0();
  v3 = *v2;
  v4 = *(v2 + 1);
  v25 = *(v2 + 2);
  v26 = *v5;
  v28 = v5[1];
  v6 = v5[2].u8[0];
  v7 = sub_1DD874820();
  sub_1DD6F8CEC(v7);
  v9 = (v0 + v8);
  sub_1DD827380();
  sub_1DD6DEA04();
  sub_1DD807414();
  sub_1DD82583C();
  v11 = *(v10 + 32);
  sub_1DD6FF0E4();
  v12();
  v13 = *(v1 + 24);
  sub_1DD6F3220();
  sub_1DD826B70();
  sub_1DD6E59B8();
  sub_1DD827500();
  *v14 = v3;
  *(v14 + 8) = v4;
  *(v14 + 16) = v25;
  v15.i32[0] = 255;
  v16.i32[0] = v6;
  v17 = vdupq_lane_s32(*&vceqq_s32(v16, v15), 0);
  v27 = vbicq_s8(v26, v17);
  v29 = vbicq_s8(v28, v17);
  if (v6 == 255)
  {
    v18 = 2;
  }

  else
  {
    v18 = v6;
  }

  v19 = sub_1DD6FA3DC();
  sub_1DD7FD670(v19, v20, v21, v22, v23);
  *v9 = v27;
  v9[1] = v29;
  v9[2].i8[0] = v18;
  sub_1DD6F37CC();
  return result;
}

void sub_1DD7C9C70()
{
  sub_1DD6FF8A8();
  sub_1DD6E01A0();
  v15 = *v2;
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v6 = *v5;
  v7 = sub_1DD874820();
  sub_1DD6F8CEC(v7);
  v9 = v0 + v8;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 2;
  sub_1DD6DEA04();
  sub_1DD807414();
  sub_1DD82583C();
  v11 = *(v10 + 32);
  sub_1DD6FF0E4();
  v12();
  v13 = *(v1 + 24);
  sub_1DD6F3220();
  sub_1DD826B70();
  sub_1DD6E59B8();
  sub_1DD827500();
  *v14 = v15;
  *(v14 + 8) = v3;
  *(v14 + 16) = v4;
  sub_1DD7FD670(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32));
  *v9 = v6 & 1;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 2;
  sub_1DD6E58C4();
}

void SystemPromptResolution.init(actionEventId:actionResponseEventId:userAction:statementId:)()
{
  sub_1DD6DEB38();
  sub_1DD6E01A0();
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v5 = sub_1DD874820();
  sub_1DD6F8CEC(v5);
  sub_1DD825BDC(v6);
  sub_1DD6DEA04();
  sub_1DD807414();
  sub_1DD82583C();
  v8 = *(v7 + 32);
  sub_1DD6FF0E4();
  v9();
  v10 = *(v0 + 24);
  sub_1DD6F3220();
  sub_1DD826B70();
  sub_1DD6E59B8();
  sub_1DD827500();
  *v11 = v2;
  *(v11 + 8) = v3;
  *(v11 + 16) = v4;
  sub_1DD6DFED0();
}

void SystemPromptResolution.init(actionEventId:actionResponseEventId:userAction:)()
{
  sub_1DD6E0A5C();
  v1 = sub_1DD874820();
  sub_1DD6F8CEC(v1);
  sub_1DD825BDC(v2);
  sub_1DD6DEA04();
  sub_1DD807414();
  sub_1DD82583C();
  v4 = *(v3 + 32);
  sub_1DD6FF0E4();
  v5();
  v6 = *(v0 + 24);
  sub_1DD6F3220();
  sub_1DD826B70();
  sub_1DD6E59B8();
  sub_1DD827500();
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
}

uint64_t sub_1DD7C9EA0()
{
  sub_1DD6E0A5C();
  v1 = sub_1DD874820();
  v2 = sub_1DD8251B8();
  v5 = sub_1DD70386C(v2, v3, v4, v1);
  v6 = type metadata accessor for SystemPromptResolution(v5);
  sub_1DD825BDC(v6[8]);
  sub_1DD824154(v0, &qword_1ECD0E540);
  v7 = *(v1 - 8);
  v8 = *(v7 + 16);
  sub_1DD6FF0E4();
  v9();
  sub_1DD825D88();
  sub_1DD6E5E68(v10, v11, v12, v13);
  v14 = v0 + v6[5];
  _s16IntelligenceFlow15SessionClientIDVACycfC_0();
  v15 = *(v7 + 8);
  v16 = sub_1DD6FF97C();
  v17(v16);
  v18 = v6[6];
  sub_1DD6F3220();
  sub_1DD826B70();
  result = sub_1DD6E59B8();
  v20 = v0 + v6[7];
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  return result;
}

uint64_t SystemPromptResolution.InputModality.description.getter()
{
  if (*v0)
  {
    result = 0x7365672064616568;
  }

  else
  {
    result = 0x6863756F74;
  }

  *v0;
  return result;
}

uint64_t sub_1DD7C9FE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6863756F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473654764616568 && a2 == 0xEB00000000657275)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7CA0B0(char a1)
{
  if (a1)
  {
    return 0x7473654764616568;
  }

  else
  {
    return 0x6863756F74;
  }
}

uint64_t sub_1DD7CA0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7C9FE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7CA11C(uint64_t a1)
{
  v2 = sub_1DD80341C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CA158(uint64_t a1)
{
  v2 = sub_1DD80341C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CA194(uint64_t a1)
{
  v2 = sub_1DD803470();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CA1D0(uint64_t a1)
{
  v2 = sub_1DD803470();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CA20C(uint64_t a1)
{
  v2 = sub_1DD8034C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CA248(uint64_t a1)
{
  v2 = sub_1DD8034C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemPromptResolution.InputModality.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD826784();
  v2 = sub_1DD710A9C(&qword_1ECD122C0, &qword_1DD889D08);
  sub_1DD6DDEAC(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD82480C(v6, v26);
  v7 = sub_1DD710A9C(&qword_1ECD122C8, &qword_1DD889D10);
  sub_1DD6DDEAC(v7);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6F0A58();
  v11 = sub_1DD710A9C(&qword_1ECD122D0, &qword_1DD889D18);
  sub_1DD6E125C(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E7258();
  v17 = *v0;
  v18 = v1[3];
  v19 = v1[4];
  sub_1DD824CF8(v1);
  sub_1DD80341C();
  sub_1DD7039CC();
  sub_1DD700954();
  sub_1DD875BB0();
  v20 = (v13 + 8);
  if (v17)
  {
    sub_1DD6FF8F4();
    sub_1DD803470();
    sub_1DD824848();
    sub_1DD875910();
    v21 = sub_1DD6DED98();
  }

  else
  {
    sub_1DD8034C4();
    sub_1DD826808();
    sub_1DD824848();
    sub_1DD875910();
    v21 = sub_1DD6E4290();
  }

  v22(v21);
  v23 = *v20;
  v24 = sub_1DD825570();
  v25(v24);
  sub_1DD8268CC();
  sub_1DD6E0C78();
}

void SystemPromptResolution.InputModality.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD826C50(v4);
  v46 = sub_1DD710A9C(&qword_1ECD122F0, &qword_1DD889D20);
  sub_1DD6DDEAC(v46);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E17C8();
  v8 = sub_1DD710A9C(&qword_1ECD122F8, &qword_1DD889D28);
  sub_1DD6DDEAC(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DDFE4();
  v12 = sub_1DD710A9C(&qword_1ECD12300, &qword_1DD889D30);
  sub_1DD6DDEAC(v12);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DEBA0();
  v17 = v2[3];
  v16 = v2[4];
  sub_1DD6E6C94(v2);
  sub_1DD80341C();
  sub_1DD6E4218();
  sub_1DD82718C();
  if (!v1)
  {
    v47 = v2;
    sub_1DD826378();
    v18 = sub_1DD875900();
    sub_1DD6ED750(v18, 0);
    sub_1DD826B7C();
    if (!v19)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v20 == v21)
      {
        __break(1u);
        return;
      }

      v28 = *(v27 + v26);
      v29 = sub_1DD6F43D8(v22, v23, v24, v25, v26);
      sub_1DD6ED830(v29);
      sub_1DD6E0194();
      v31 = v30;
      swift_unknownObjectRelease();
      if (!(v31 >> 1))
      {
        if (v28)
        {
          sub_1DD6FF8F4();
          sub_1DD803470();
          sub_1DD824DB8();
          sub_1DD875800();
          sub_1DD701428();
          swift_unknownObjectRelease();
          v32 = sub_1DD825038();
          v34 = v46;
        }

        else
        {
          sub_1DD8034C4();
          sub_1DD826E4C();
          sub_1DD824DB8();
          sub_1DD875800();
          sub_1DD701428();
          swift_unknownObjectRelease();
          v32 = sub_1DD705C68();
          v34 = v8;
        }

        v33(v32, v34);
        v43 = *(v0 + 8);
        v44 = sub_1DD6E60FC();
        v45(v44);
        sub_1DD826EE8();
        goto LABEL_12;
      }
    }

    sub_1DD875740();
    sub_1DD6E41BC();
    sub_1DD82702C();
    v35 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v3 = &type metadata for SystemPromptResolution.InputModality;
    sub_1DD826378();
    sub_1DD875810();
    sub_1DD6DF100();
    v36 = *MEMORY[0x1E69E6AF8];
    sub_1DD8250B8();
    v38 = *(v37 + 104);
    v39 = sub_1DD826518();
    v40(v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = sub_1DD6E37A0();
    v42(v41);
    v2 = v47;
  }

  sub_1DD6E1EC8(v2);
LABEL_12:
  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t SystemPromptResolution.ResolutionInput.description.getter()
{
  if (*(v0 + 32))
  {
    if (*(v0 + 32) == 1)
    {
      MEMORY[0x1E12B4C10](0x28686365657073, 0xE700000000000000);
      sub_1DD875760();
      sub_1DD826BA8();
      return 0;
    }

    else if (*(v0 + 8) | *v0 | *(v0 + 16) | *(v0 + 24))
    {
      return 0x7365672064616568;
    }

    else
    {
      return 0x6863756F74;
    }
  }

  else
  {
    MEMORY[0x1E12B4C10](0x2874786574, 0xE500000000000000);
    sub_1DD875760();
    sub_1DD826BA8();
    return 0;
  }
}

BOOL static SystemPromptResolution.ResolutionInput.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 1);
  v5 = *(a1 + 32);
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v10 = *(a2 + 32);
  v11 = a1[3];
  v115 = v4;
  if (*(a1 + 32))
  {
    if (v5 == 1)
    {
      if (v10 == 1)
      {
        v116[0] = *a1;
        v116[1] = v2;
        v117 = v4;
        v12 = sub_1DD824B58();
        sub_1DD7FD604(v12, v13, v14, v15, 1);
        v16 = sub_1DD6FDDBC();
        sub_1DD7FD604(v16, v17, v18, v19, v20);
        v21 = sub_1DD824B58();
        sub_1DD7FD604(v21, v22, v23, v24, 1);
        v25 = sub_1DD6FDDBC();
        sub_1DD7FD604(v25, v26, v27, v28, v29);
        v30 = static MessagePayload.RequestContent.SpeechContent.== infix(_:_:)(v116);
        v31 = sub_1DD6FDDBC();
        sub_1DD7FD670(v31, v32, v33, v34, v35);
        v36 = sub_1DD824B58();
        sub_1DD7FD670(v36, v37, v38, v39, 1);
        v40 = sub_1DD824B58();
        sub_1DD7FD670(v40, v41, v42, v43, 1);
        v44 = sub_1DD6FDDBC();
LABEL_22:
        sub_1DD7FD670(v44, v45, v46, v47, v48);
        return v30;
      }

      goto LABEL_27;
    }

    if (v4 | v2 | v3 | v11)
    {
      if (v10 == 2 && v7 == 1 && (v9 | v6 | v8) == 0)
      {
        v30 = 1;
        sub_1DD825850();
        sub_1DD7FD670(v73, v74, v75, v76, v77);
        sub_1DD825850();
        goto LABEL_22;
      }

LABEL_27:
      v79 = sub_1DD824B58();
      sub_1DD7FD604(v79, v80, v81, v82, v10);
      v83 = sub_1DD6E0C60();
      sub_1DD7FD604(v83, v84, v115, v11, v5);
      v85 = sub_1DD6E0C60();
      sub_1DD7FD670(v85, v86, v115, v11, v5);
      v87 = sub_1DD824B58();
      sub_1DD7FD670(v87, v88, v89, v90, v10);
      return 0;
    }

    if (v10 != 2 || (v9 | v6 | v7 | v8) != 0)
    {
      goto LABEL_27;
    }

    sub_1DD825850();
    sub_1DD7FD670(v110, v111, v112, v113, v114);
    sub_1DD825850();
    goto LABEL_31;
  }

  if (*(a2 + 32))
  {
    goto LABEL_27;
  }

  if (v3 == v7 && v2 == v6)
  {
    sub_1DD824AA4();
    sub_1DD7FD604(v92, v93, v94, v95, v96);
    sub_1DD6E0C60();
    sub_1DD82668C();
    sub_1DD7FD604(v97, v98, v99, v100, 0);
    sub_1DD6E0C60();
    sub_1DD82668C();
    sub_1DD7FD670(v101, v102, v103, v104, 0);
    sub_1DD6E0C60();
    sub_1DD824AA4();
LABEL_31:
    sub_1DD7FD670(v105, v106, v107, v108, v109);
    return 1;
  }

  v50 = sub_1DD875A30();
  sub_1DD6E5DB0();
  sub_1DD824AA4();
  sub_1DD7FD604(v51, v52, v53, v54, v55);
  sub_1DD6E0C60();
  sub_1DD705D5C();
  sub_1DD7FD604(v56, v57, v58, v59, v60);
  sub_1DD6E0C60();
  sub_1DD705D5C();
  sub_1DD7FD670(v61, v62, v63, v64, v65);
  sub_1DD6E5DB0();
  sub_1DD824AA4();
  sub_1DD7FD670(v66, v67, v68, v69, v70);
  v30 = 0;
  if (v50)
  {
    return 1;
  }

  return v30;
}

uint64_t sub_1DD7CAC38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6863756F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7473654764616568 && a2 == 0xEB00000000657275;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1954047348 && a2 == 0xE400000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x686365657073 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

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

uint64_t sub_1DD7CAD8C(char a1)
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

uint64_t sub_1DD7CAE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7CAC38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7CAE38(uint64_t a1)
{
  v2 = sub_1DD803518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CAE74(uint64_t a1)
{
  v2 = sub_1DD803518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CAEB0(uint64_t a1)
{
  v2 = sub_1DD803614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CAEEC(uint64_t a1)
{
  v2 = sub_1DD803614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CAF28(uint64_t a1)
{
  v2 = sub_1DD80356C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CAF64(uint64_t a1)
{
  v2 = sub_1DD80356C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CAFA0(uint64_t a1)
{
  v2 = sub_1DD8035C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CAFDC(uint64_t a1)
{
  v2 = sub_1DD8035C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CB018(uint64_t a1)
{
  v2 = sub_1DD803668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CB054(uint64_t a1)
{
  v2 = sub_1DD803668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemPromptResolution.ResolutionInput.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD12308, &qword_1DD889D38);
  sub_1DD6DDEAC(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6E0C6C();
  sub_1DD8268FC(v7);
  v8 = sub_1DD710A9C(&qword_1ECD12310, &qword_1DD889D40);
  sub_1DD6DDEAC(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD824FD8(v12, v37);
  v13 = sub_1DD710A9C(&qword_1ECD12318, &qword_1DD889D48);
  sub_1DD6DDEAC(v13);
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD824FEC(v17, v38);
  v18 = sub_1DD710A9C(&qword_1ECD12320, &qword_1DD889D50);
  sub_1DD6DDEAC(v18);
  v20 = *(v19 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6E7258();
  v22 = sub_1DD710A9C(&qword_1ECD12328, &qword_1DD889D58);
  sub_1DD6DDEAC(v22);
  v24 = *(v23 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6DE340();
  v39 = v0[1];
  v40 = *v0;
  v26 = v0[2];
  v27 = v0[3];
  v28 = *(v0 + 32);
  v29 = v2[3];
  v30 = v2[4];
  sub_1DD6E49C0(v2);
  sub_1DD803518();
  sub_1DD8250D8();
  sub_1DD875BB0();
  if (!v28)
  {
    sub_1DD8035C0();
    sub_1DD824AB4();
    sub_1DD875910();
    sub_1DD6FDFC8();
    sub_1DD825AB4();
    sub_1DD8759D0();
    v35 = sub_1DD824838();
LABEL_8:
    v36(v35);
    v33 = sub_1DD824A60();
    goto LABEL_9;
  }

  if (v28 != 1)
  {
    if (v26 | v39 | v40 | v27)
    {
      sub_1DD803614();
      sub_1DD824AB4();
      sub_1DD875910();
      v35 = sub_1DD6FF900();
    }

    else
    {
      sub_1DD803668();
      sub_1DD824AB4();
      sub_1DD875910();
      v35 = sub_1DD705E24();
    }

    goto LABEL_8;
  }

  sub_1DD80356C();
  sub_1DD8251A8();
  sub_1DD875910();
  sub_1DD7FD784();
  sub_1DD8759D0();
  v31 = sub_1DD824F60();
  v32(v31);
  v33 = sub_1DD825148();
LABEL_9:
  v34(v33);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void SystemPromptResolution.ResolutionInput.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1DD6DED2C();
  sub_1DD7038A0();
  v83 = v11;
  v84 = sub_1DD710A9C(&qword_1ECD12358, &qword_1DD889D60);
  sub_1DD6DDEAC(v84);
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6FF92C(v15, v78);
  v81 = sub_1DD710A9C(&qword_1ECD12360, &qword_1DD889D68);
  sub_1DD6DDEAC(v81);
  v82 = v16;
  v18 = *(v17 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD824A4C(v20, v79);
  v21 = sub_1DD710A9C(&qword_1ECD12368, &qword_1DD889D70);
  sub_1DD6DDEAC(v21);
  v23 = *(v22 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6E9560();
  v25 = sub_1DD710A9C(&qword_1ECD12370, &qword_1DD889D78);
  sub_1DD6DDEAC(v25);
  v27 = *(v26 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6E17C8();
  v29 = sub_1DD710A9C(&qword_1ECD12378, &qword_1DD889D80);
  sub_1DD6DDEAC(v29);
  v31 = *(v30 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6F0A58();
  v33 = v10[3];
  v34 = v10[4];
  v85 = v10;
  sub_1DD824D14(v10);
  sub_1DD803518();
  sub_1DD6EF0F4();
  sub_1DD8274A0();
  sub_1DD875B90();
  v35 = a10;
  if (!a10)
  {
    v36 = sub_1DD875900();
    sub_1DD6ED750(v36, 0);
    sub_1DD826B24();
    v37 = v29;
    if (!v38)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v39 == v40)
      {
        __break(1u);
        return;
      }

      v80 = *(v46 + v45);
      v47 = sub_1DD6F43D8(v41, v42, v43, v44, v45);
      v35 = sub_1DD6ED830(v47);
      v49 = v48;
      v51 = v50;
      swift_unknownObjectRelease();
      if (v49 == v51 >> 1)
      {
        switch(v80)
        {
          case 1:
            sub_1DD803614();
            sub_1DD82499C();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v65 = sub_1DD825950();
            v66(v65);
            v67 = sub_1DD824838();
            v68(v67);
            v57 = 0;
            v58 = 0uLL;
            v59 = 2;
            v56 = 1;
            break;
          case 2:
            sub_1DD826FE4();
            sub_1DD8035C0();
            sub_1DD82499C();
            sub_1DD875800();
            sub_1DD700960();
            sub_1DD6F3128();
            sub_1DD827860();
            sub_1DD826544();
            swift_unknownObjectRelease();
            v69 = *(v82 + 8);
            v70 = sub_1DD825998();
            v71(v70);
            v72 = sub_1DD6E5DB0();
            v73(v72);
            v59 = 0;
            v56 = v86;
            v57 = v87;
            v58 = 0uLL;
            break;
          case 3:
            LOBYTE(v86) = 3;
            sub_1DD80356C();
            sub_1DD82499C();
            sub_1DD875800();
            sub_1DD7FD880();
            sub_1DD6F3128();
            sub_1DD827860();
            sub_1DD826544();
            swift_unknownObjectRelease();
            v74 = sub_1DD6ED80C();
            v75(v74, v84);
            v76 = sub_1DD6E5DB0();
            v77(v76);
            v56 = v86;
            v57 = v87;
            v59 = 1;
            v58 = v88;
            break;
          default:
            sub_1DD803668();
            sub_1DD82499C();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v52 = sub_1DD825950();
            v53(v52, v25);
            v54 = sub_1DD824838();
            v55(v54);
            v56 = 0;
            v57 = 0;
            v58 = 0uLL;
            v59 = 2;
            break;
        }

        *v83 = v56;
        *(v83 + 8) = v57;
        *(v83 + 16) = v58;
        *(v83 + 32) = v59;
        sub_1DD6E1EC8(v85);
        goto LABEL_13;
      }

      v37 = v29;
    }

    sub_1DD875740();
    sub_1DD6E41BC();
    sub_1DD8274C0();
    v60 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v35 = &type metadata for SystemPromptResolution.ResolutionInput;
    sub_1DD875810();
    sub_1DD6DF100();
    v61 = *MEMORY[0x1E69E6AF8];
    sub_1DD824B14();
    (*(v62 + 104))(v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    v63 = sub_1DD824DC8();
    v64(v63, v37);
  }

  sub_1DD6E1EC8(v85);
LABEL_13:
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

uint64_t SystemPromptResolution.UserAction.description.getter()
{
  v1 = sub_1DD874FA0();
  v2 = sub_1DD6E49A8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DE4A8();
  v7 = sub_1DD826C10();
  v8 = type metadata accessor for SystemPromptResolution.UserAction(v7);
  v9 = sub_1DD8247B4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD824734();
  sub_1DD6ED4CC();
  sub_1DD8256C8();
  sub_1DD6E5870();
  sub_1DD6E0F70();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD8274CC();
      v12 = sub_1DD6FF97C();
      v13(v12);
      sub_1DD825714();
      sub_1DD8756B0();
      MEMORY[0x1E12B4C10](0xD000000000000017, 0x80000001DD8B6380);
      sub_1DD875760();
      sub_1DD826BA8();
      v14 = *(v4 + 8);
      v15 = sub_1DD6ED118();
      v16(v15);
      return sub_1DD705564();
    case 3u:
    case 4u:
      v21 = *v0;
      sub_1DD825714();
      sub_1DD8756B0();

      sub_1DD8257F8();
      v18 = sub_1DD875A10();
      goto LABEL_11;
    case 5u:
      v23 = *v0;
      sub_1DD825714();
      sub_1DD8756B0();
      MEMORY[0x1E12B4C10](0xD000000000000015, 0x80000001DD8B6300);
      sub_1DD7C6BC8(v23);
      goto LABEL_12;
    case 6u:
    case 7u:
      return sub_1DD705564();
    default:
      v17 = *v0;
      sub_1DD825714();
      sub_1DD8756B0();

      sub_1DD8257F8();
      if (v17)
      {
        v18 = 1702195828;
      }

      else
      {
        v18 = 0x65736C6166;
      }

      if (v17)
      {
        v19 = 0xE400000000000000;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      v20 = v19;
LABEL_11:
      MEMORY[0x1E12B4C10](v18, v20);

LABEL_12:
      sub_1DD826BA8();
      return sub_1DD705564();
  }
}

void static SystemPromptResolution.UserAction.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v5 = sub_1DD874FA0();
  v6 = sub_1DD6DDEAC(v5);
  v41 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DDEE8();
  v10 = sub_1DD6E9A9C();
  v11 = type metadata accessor for SystemPromptResolution.UserAction(v10);
  v12 = sub_1DD6DE1C4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DE21C();
  v17 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD824C88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6F8C34();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6FF81C();
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6F8C84();
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD8264E0();
  v23 = sub_1DD710A9C(&qword_1ECD12380, &qword_1DD889D88);
  sub_1DD6DEA10(v23);
  v25 = *(v24 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6E17C8();
  v28 = *(v27 + 56);
  sub_1DD6E5870();
  sub_1DD6E5870();
  sub_1DD6DDEFC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6ED4CC();
      sub_1DD701174();
      sub_1DD6E5870();
      if (sub_1DD826DEC() == 1)
      {
        v32 = *(v41 + 32);
        v33 = sub_1DD826A94();
        v34(v33);
        sub_1DD8256EC();
        _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
        v35 = *(v41 + 8);
        v36 = sub_1DD6E60FC();
        v35(v36);
        v37 = sub_1DD825B84();
        v35(v37);
        goto LABEL_15;
      }

      v39 = sub_1DD705E24();
      v40(v39);
      goto LABEL_22;
    case 2u:
      sub_1DD6ED4CC();
      sub_1DD6E5F58();
      sub_1DD6E5870();
      if (sub_1DD826DEC() != 2)
      {
        goto LABEL_22;
      }

      v29 = *v1;
      goto LABEL_18;
    case 3u:
      sub_1DD6ED4CC();
      sub_1DD6E5870();
      if (sub_1DD826DEC() != 3)
      {
        goto LABEL_22;
      }

      v30 = *v4;
      goto LABEL_10;
    case 4u:
      sub_1DD6ED4CC();
      sub_1DD825980();
      sub_1DD6E5870();
      if (sub_1DD826DEC() != 4)
      {
        goto LABEL_22;
      }

      v30 = *v3;
LABEL_10:
      v31 = v30 == *(v0 + v28);
LABEL_15:
      sub_1DD824984();
      sub_1DD6E5ABC();
      goto LABEL_23;
    case 5u:
      sub_1DD6ED4CC();
      sub_1DD705230();
      sub_1DD6E5870();
      if (sub_1DD826DEC() != 5)
      {
        goto LABEL_22;
      }

      v29 = *v17;
      goto LABEL_18;
    case 6u:
      if (sub_1DD826DEC() == 6)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    case 7u:
      if (sub_1DD826DEC() != 7)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    default:
      sub_1DD6ED4CC();
      sub_1DD825974();
      sub_1DD6E5870();
      if (sub_1DD826DEC())
      {
LABEL_22:
        sub_1DD824154(v0, &qword_1ECD12380);
      }

      else
      {
        v29 = *v2;
LABEL_18:
        v38 = v29 ^ *(v0 + v28);
        sub_1DD824984();
        sub_1DD6E5ABC();
      }

LABEL_23:
      sub_1DD6FE01C();
      sub_1DD6DFED0();
      return;
  }
}

uint64_t sub_1DD7CC264(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F436E6F69746361 && a2 == 0xEF64656D7269666ELL;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E55656369766564 && a2 == 0xEE0064656B636F6CLL;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001DD8B6C40 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001DD8B6C60 == a2;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x80000001DD8B6C80 == a2;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001BLL && 0x80000001DD8B6CA0 == a2;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x80000001DD8B6CC0 == a2;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x61436E6F69746361 && a2 == 0xEE0064656C65636ELL)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DD875A30();

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

unint64_t sub_1DD7CC4F8(char a1)
{
  result = 0x6F436E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x6E55656369766564;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x61436E6F69746361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7CC628(uint64_t a1)
{
  v2 = sub_1DD803710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CC664(uint64_t a1)
{
  v2 = sub_1DD803710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CC6A0(uint64_t a1)
{
  v2 = sub_1DD803A04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CC6DC(uint64_t a1)
{
  v2 = sub_1DD803A04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CC720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7CC264(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7CC748(uint64_t a1)
{
  v2 = sub_1DD8036BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CC784(uint64_t a1)
{
  v2 = sub_1DD8036BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CC7C0(uint64_t a1)
{
  v2 = sub_1DD8039B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CC7FC(uint64_t a1)
{
  v2 = sub_1DD8039B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CC838(uint64_t a1)
{
  v2 = sub_1DD803860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CC874(uint64_t a1)
{
  v2 = sub_1DD803860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CC8B0(uint64_t a1)
{
  v2 = sub_1DD803908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CC8EC(uint64_t a1)
{
  v2 = sub_1DD803908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CC928(uint64_t a1)
{
  v2 = sub_1DD8038B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CC964(uint64_t a1)
{
  v2 = sub_1DD8038B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CC9A0(uint64_t a1)
{
  v2 = sub_1DD80395C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CC9DC(uint64_t a1)
{
  v2 = sub_1DD80395C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CCA18(uint64_t a1)
{
  v2 = sub_1DD8037B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CCA54(uint64_t a1)
{
  v2 = sub_1DD8037B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemPromptResolution.UserAction.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = sub_1DD710A9C(&qword_1ECD12388, &qword_1DD889D90);
  sub_1DD6DDEAC(v26);
  v28 = *(v27 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD82495C(v30, v106);
  v31 = sub_1DD710A9C(&qword_1ECD12390, &qword_1DD889D98);
  sub_1DD6DDEAC(v31);
  v33 = *(v32 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD824948(v35, v107);
  v36 = sub_1DD710A9C(&qword_1ECD12398, &qword_1DD889DA0);
  sub_1DD6DDEAC(v36);
  v38 = *(v37 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD824CB0(v40, v108);
  v41 = sub_1DD710A9C(&qword_1ECD123A0, &qword_1DD889DA8);
  sub_1DD6DDEAC(v41);
  v43 = *(v42 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1DD82546C(v45, v109);
  v111 = sub_1DD710A9C(&qword_1ECD123A8, &qword_1DD889DB0);
  sub_1DD6DDEAC(v111);
  v47 = *(v46 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1DD8247DC(v49, v110);
  v112 = sub_1DD710A9C(&qword_1ECD123B0, &qword_1DD889DB8);
  sub_1DD6DDEAC(v112);
  v51 = *(v50 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v52);
  sub_1DD6E0C6C();
  sub_1DD6ED230(v53);
  v54 = sub_1DD874FA0();
  v55 = sub_1DD6DF3FC(v54, &a17);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v58);
  v59 = sub_1DD710A9C(&qword_1ECD123B8, &qword_1DD889DC0);
  sub_1DD6DF3FC(v59, &a12);
  v61 = *(v60 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v62);
  sub_1DD6E7258();
  v63 = sub_1DD710A9C(&qword_1ECD123C0, &qword_1DD889DC8);
  sub_1DD6DDEAC(v63);
  v65 = *(v64 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v66);
  sub_1DD6E17C8();
  v67 = type metadata accessor for SystemPromptResolution.UserAction(0);
  v68 = sub_1DD6DE1C4(v67);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  sub_1DD8247F4();
  v71 = sub_1DD710A9C(&qword_1ECD123C8, &qword_1DD889DD0);
  sub_1DD6DDEAC(v71);
  v113 = v72;
  v74 = *(v73 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v75);
  sub_1DD6DDFE4();
  v76 = v25[3];
  v77 = v25[4];
  sub_1DD824CF8(v25);
  sub_1DD8036BC();
  sub_1DD77E6F4();
  sub_1DD826A7C();
  sub_1DD875BB0();
  sub_1DD6ED4CC();
  sub_1DD6E5870();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6F9BEC(&a16);
      v92 = *(v91 + 32);
      v93 = sub_1DD6F9BF8();
      v94(v93);
      BYTE1(a10) = 2;
      sub_1DD80395C();
      sub_1DD825CA4(&a15);
      sub_1DD6E4968();
      sub_1DD875910();
      sub_1DD6E05D4();
      sub_1DD6E1E84(v95);
      sub_1DD8759D0();
      v96 = sub_1DD8249F4();
      v97(v96);
      v98 = *(v20 + 8);
      v99 = sub_1DD825674();
      v100(v99);
      goto LABEL_11;
    case 2u:
      v84 = *v21;
      BYTE2(a10) = 3;
      sub_1DD803908();
      sub_1DD6EFF94(&a14);
      sub_1DD824AB4();
      sub_1DD875910();
      sub_1DD826654();
      sub_1DD875980();
      goto LABEL_9;
    case 3u:
      v85 = *v21;
      sub_1DD82636C();
      sub_1DD8038B4();
      sub_1DD824AB4();
      sub_1DD875910();
      sub_1DD826654();
      sub_1DD8759B0();
      goto LABEL_9;
    case 4u:
      v83 = *v21;
      BYTE4(a10) = 5;
      sub_1DD803860();
      sub_1DD824AB4();
      sub_1DD875910();
      sub_1DD826654();
      sub_1DD8759B0();
      goto LABEL_9;
    case 5u:
      v101 = *v21;
      sub_1DD82753C();
      sub_1DD8037B8();
      sub_1DD824AB4();
      sub_1DD875910();
      BYTE5(a10) = v101;
      sub_1DD80380C();
      sub_1DD826654();
      sub_1DD8759D0();
LABEL_9:
      v102 = sub_1DD6FE110();
      v103(v102);
      v81 = sub_1DD824A60();
      goto LABEL_12;
    case 6u:
      sub_1DD826E94();
      sub_1DD803710();
      sub_1DD6E4968();
      sub_1DD875910();
      sub_1DD803764();
      sub_1DD8759D0();
      v104 = sub_1DD6FBE88();
      v105(v104);
LABEL_11:
      v81 = sub_1DD6DE58C();
      goto LABEL_12;
    case 7u:
      sub_1DD701464();
      sub_1DD8039B0();
      sub_1DD79A3A4();
      sub_1DD875910();
      v86 = sub_1DD6E1858(&a11);
      v87(v86);
      v88 = *(v113 + 8);
      v89 = sub_1DD6E21D0();
      v90(v89);
      goto LABEL_13;
    default:
      v78 = *v21;
      sub_1DD803A04();
      sub_1DD6E710C();
      sub_1DD875910();
      sub_1DD875980();
      sub_1DD6DEDD4(&a10);
      v79 = sub_1DD825980();
      v80(v79);
      v81 = sub_1DD6FBE88();
LABEL_12:
      v82(v81);
LABEL_13:
      sub_1DD825AC0();
      sub_1DD6E0C78();
      return;
  }
}

void SystemPromptResolution.UserAction.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v26;
  a20 = v27;
  v199 = v20;
  v29 = v28;
  v191 = v30;
  v190 = sub_1DD710A9C(&qword_1ECD12428, &qword_1DD889DD8);
  sub_1DD6DDEAC(v190);
  v192 = v31;
  v33 = *(v32 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD824948(v35, v172);
  v189 = sub_1DD710A9C(&qword_1ECD12430, &qword_1DD889DE0);
  sub_1DD6DDEAC(v189);
  v184 = v36;
  v38 = *(v37 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD824FD8(v40, v172);
  v188 = sub_1DD710A9C(&qword_1ECD12438, &qword_1DD889DE8);
  sub_1DD6DDEAC(v188);
  v183 = v41;
  v43 = *(v42 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1DD824934(v45, v172);
  v187 = sub_1DD710A9C(&qword_1ECD12440, &qword_1DD889DF0);
  sub_1DD6DDEAC(v187);
  v182 = v46;
  v48 = *(v47 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1DD6E5D10(v50, v172);
  v51 = sub_1DD710A9C(&qword_1ECD12448, &qword_1DD889DF8);
  sub_1DD6DF3FC(v51, &a18);
  v181 = v52;
  v54 = *(v53 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v55);
  sub_1DD82486C(v56, v172);
  v57 = sub_1DD710A9C(&qword_1ECD12450, &qword_1DD889E00);
  sub_1DD6DF3FC(v57, &a17);
  v180 = v58;
  v60 = *(v59 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v61);
  sub_1DD824CB0(v62, v172);
  v63 = sub_1DD710A9C(&qword_1ECD12458, &qword_1DD889E08);
  sub_1DD6DF3FC(v63, &a16);
  v185 = v64;
  v66 = *(v65 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v67);
  sub_1DD824FEC(v68, v172);
  v69 = sub_1DD710A9C(&qword_1ECD12460, &qword_1DD889E10);
  sub_1DD6DF3FC(v69, &a15);
  v179 = v70;
  v72 = *(v71 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v73);
  sub_1DD824A38(v74, v172);
  v196 = sub_1DD710A9C(&qword_1ECD12468, &qword_1DD889E18);
  sub_1DD6DDEAC(v196);
  v194 = v75;
  v77 = *(v76 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v78);
  v79 = sub_1DD700BA4();
  v193 = type metadata accessor for SystemPromptResolution.UserAction(v79);
  v80 = sub_1DD6DE1C4(v193);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  sub_1DD6DE21C();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v83);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v84);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v85);
  sub_1DD824CC4();
  MEMORY[0x1EEE9AC00](v86);
  sub_1DD824970();
  MEMORY[0x1EEE9AC00](v87);
  sub_1DD6E61D0();
  MEMORY[0x1EEE9AC00](v88);
  sub_1DD825884();
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v172 - v90;
  v93 = *(v29 + 24);
  v92 = *(v29 + 32);
  v94 = sub_1DD826F54();
  sub_1DD6FE8B0(v94);
  sub_1DD8036BC();
  v195 = v25;
  sub_1DD6EF0F4();
  v95 = v199;
  sub_1DD875B90();
  if (!v95)
  {
    v174 = v23;
    v175 = v24;
    v176 = v21;
    v177 = v22;
    v199 = v91;
    v96 = sub_1DD875900();
    sub_1DD6ED750(v96, 0);
    sub_1DD826908();
    if (!v97)
    {
      sub_1DD6E6120();
      v173 = 0;
      sub_1DD6E42A8();
      if (v104 == v105)
      {
        __break(1u);
        return;
      }

      v106 = *(v103 + v102);
      v107 = sub_1DD6E988C(v98, v99, v100, v101, v102);
      sub_1DD6ED830(v107);
      v109 = v108;
      v111 = v110;
      swift_unknownObjectRelease();
      v112 = v192;
      if (v109 == v111 >> 1)
      {
        v113 = v173;
        switch(v106)
        {
          case 1:
            sub_1DD701464();
            sub_1DD8039B0();
            sub_1DD824DA8();
            sub_1DD875800();
            if (v113)
            {
              goto LABEL_25;
            }

            swift_unknownObjectRelease();
            v129 = sub_1DD702E84(&a14);
            v130(v129, v186);
            v131 = sub_1DD824B44();
            v132(v131);
            swift_storeEnumTagMultiPayload();
            goto LABEL_29;
          case 2:
            BYTE1(a10) = 2;
            sub_1DD80395C();
            sub_1DD824DA8();
            sub_1DD875800();
            if (v113)
            {
              goto LABEL_25;
            }

            sub_1DD874FA0();
            sub_1DD6E05D4();
            sub_1DD6E1E84(v127);
            sub_1DD6F9BEC(&v197);
            sub_1DD825CE0();
            sub_1DD8758D0();
            swift_unknownObjectRelease();
            v141 = sub_1DD6E6CB0(&a9);
            v142(v141);
            v143 = sub_1DD824B44();
            v144(v143);
            swift_storeEnumTagMultiPayload();
            sub_1DD6F3220();
            goto LABEL_28;
          case 3:
            BYTE2(a10) = 3;
            sub_1DD803908();
            sub_1DD824DA8();
            sub_1DD875800();
            if (v113)
            {
              goto LABEL_25;
            }

            sub_1DD826CD0();
            v145 = sub_1DD875880();
            swift_unknownObjectRelease();
            v146 = sub_1DD6E6CB0(&a10);
            v147(v146);
            v148 = sub_1DD824B44();
            v149(v148);
            sub_1DD8263F8(v145 & 1);
            goto LABEL_27;
          case 4:
            sub_1DD82636C();
            sub_1DD8038B4();
            sub_1DD824DA8();
            sub_1DD875800();
            if (v113)
            {
              goto LABEL_25;
            }

            v126 = v187;
            v136 = sub_1DD8758B0();
            swift_unknownObjectRelease();
            v137 = sub_1DD702E84(&a11);
            v138(v137, v126);
            v139 = sub_1DD824B44();
            v140(v139);
            *v176 = v136;
            goto LABEL_27;
          case 5:
            BYTE4(a10) = 5;
            sub_1DD803860();
            sub_1DD824DA8();
            sub_1DD875800();
            if (v113)
            {
              goto LABEL_25;
            }

            sub_1DD826CD0();
            v161 = sub_1DD8758B0();
            swift_unknownObjectRelease();
            v162 = sub_1DD6E6CB0(&a12);
            v163(v162);
            v164 = sub_1DD824B44();
            v165(v164);
            *v178 = v161;
            swift_storeEnumTagMultiPayload();
            sub_1DD6F3220();
            goto LABEL_28;
          case 6:
            sub_1DD82753C();
            sub_1DD8037B8();
            sub_1DD824DA8();
            sub_1DD875800();
            if (v113)
            {
              goto LABEL_25;
            }

            sub_1DD803AAC();
            sub_1DD824AB4();
            sub_1DD8758D0();
            v135 = v194;
            swift_unknownObjectRelease();
            v166 = sub_1DD6E6CB0(&a13);
            v167(v166);
            v168 = *(v135 + 8);
            v169 = sub_1DD8257C8();
            v170(v169);
            sub_1DD8263F8(SBYTE5(a10));
            goto LABEL_27;
          case 7:
            sub_1DD826E94();
            sub_1DD803710();
            sub_1DD824DA8();
            sub_1DD875800();
            if (v113)
            {
              goto LABEL_25;
            }

            sub_1DD803A58();
            sub_1DD6F3128();
            sub_1DD8758D0();
            v128 = v194;
            swift_unknownObjectRelease();
            v150 = *(v112 + 8);
            v151 = sub_1DD705564();
            v152(v151);
            v153 = *(v128 + 8);
            v154 = sub_1DD8257C8();
            v155(v154);
            sub_1DD82633C(v200);
            goto LABEL_27;
          default:
            v200[7] = 0;
            sub_1DD803A04();
            sub_1DD824DA8();
            sub_1DD875800();
            if (v113)
            {
LABEL_25:
              v133 = sub_1DD824B44();
              v134(v133);
              swift_unknownObjectRelease();
              goto LABEL_10;
            }

            sub_1DD826CD0();
            v156 = sub_1DD875880();
            swift_unknownObjectRelease();
            v157 = sub_1DD6E6CB0(&v201);
            v158(v157);
            v159 = sub_1DD824B44();
            v160(v159);
            sub_1DD8263F8(v156 & 1);
LABEL_27:
            swift_storeEnumTagMultiPayload();
            sub_1DD6F3220();
LABEL_28:
            sub_1DD6E59B8();
LABEL_29:
            v171 = v198;
            sub_1DD6F3220();
            sub_1DD6E59B8();
            v125 = v171;
            break;
        }

        goto LABEL_11;
      }
    }

    v114 = v193;
    sub_1DD875740();
    sub_1DD6E41BC();
    v116 = v115;
    v117 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v116 = v114;
    sub_1DD875810();
    sub_1DD6DF12C();
    v118 = *MEMORY[0x1E69E6AF8];
    sub_1DD824B14();
    v120 = *(v119 + 104);
    v121 = sub_1DD6FEB10();
    v122(v121);
    swift_willThrow();
    swift_unknownObjectRelease();
    v123 = sub_1DD824B44();
    v124(v123);
  }

LABEL_10:
  v125 = v198;
LABEL_11:
  sub_1DD6E1EC8(v125);
  sub_1DD6F9B18();
  sub_1DD6E0C78();
}

unint64_t SystemPromptResolution.RequirementResolution.description.getter()
{
  v1 = *v0;
  sub_1DD8756B0();

  sub_1DD826724();
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

  MEMORY[0x1E12B4C10](v2, v3);

  sub_1DD826BA8();
  return 0xD00000000000002ELL;
}

uint64_t sub_1DD7CE0BC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x80000001DD8B6CE0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7CE15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7CE0BC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7CE188(uint64_t a1)
{
  v2 = sub_1DD803B00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CE1C4(uint64_t a1)
{
  v2 = sub_1DD803B00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemPromptResolution.RequirementResolution.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD12480, &qword_1DD889E20);
  sub_1DD6E125C(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEBA0();
  v9 = *v0;
  v10 = v2[3];
  v11 = v2[4];
  sub_1DD6E6C94(v2);
  sub_1DD803B00();
  sub_1DD6E4218();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD875980();
  v12 = *(v5 + 8);
  v13 = sub_1DD6DDEDC();
  v14(v13);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void SystemPromptResolution.RequirementResolution.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD826838();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD12490, &qword_1DD889E28);
  sub_1DD6E125C(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD803B00();
  sub_1DD6FC48C();
  if (!v1)
  {
    sub_1DD6EE778();
    v8 = sub_1DD875880();
    v9 = sub_1DD6DEA2C();
    v10(v9);
    *v3 = v8 & 1;
  }

  sub_1DD6E1EC8(v0);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7CE420(uint64_t a1)
{
  v2 = sub_1DD803B54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CE45C(uint64_t a1)
{
  v2 = sub_1DD803B54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemPromptResolution.stepId.modify()
{
  sub_1DD6DEB38();
  v2 = sub_1DD8263E8();
  v3 = sub_1DD7281CC(v2);
  sub_1DD826698(v3);
  v4 = sub_1DD6ED130();
  v6 = sub_1DD710A9C(v4, v5);
  sub_1DD6DEA10(v6);
  v8 = sub_1DD7281CC(*(v7 + 64));
  v9 = sub_1DD826B54(v8);
  v1[2] = v9;
  sub_1DD6DDEAC(v9);
  v11 = v10;
  v1[3] = v10;
  v13 = sub_1DD7281CC(*(v12 + 64));
  v14 = sub_1DD8276E0(v13);
  v1[5] = sub_1DD7281CC(v14);
  sub_1DD6E87AC();
  sub_1DD82598C();
  sub_1DD700E60();
  sub_1DD824C40();
  if (v15)
  {
    _s16IntelligenceFlow15SessionClientIDVACycfC_0();
    sub_1DD824C40();
    if (!v15)
    {
      sub_1DD824154(v0, &qword_1ECD0E540);
    }
  }

  else
  {
    v16 = *(v11 + 32);
    v17 = sub_1DD824C78();
    v18(v17);
  }

  sub_1DD8275E8();
  sub_1DD6DFED0();
}

uint64_t _s16IntelligenceFlow14ActionResponseV6stepId10Foundation4UUIDVvg_0()
{
  v1 = sub_1DD7029A8();
  v3 = sub_1DD710A9C(v1, v2);
  sub_1DD6DEA10(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD8265FC();
  sub_1DD6F8CC0();
  sub_1DD700E60();
  sub_1DD874820();
  v7 = sub_1DD6E5E30();
  sub_1DD6DE1FC(v7, 1, v0);
  if (v8)
  {
    _s16IntelligenceFlow15SessionClientIDVACycfC_0();
    result = sub_1DD6DE1FC(v0, 1, v0);
    if (!v8)
    {
      return sub_1DD824154(v0, &qword_1ECD0E540);
    }
  }

  else
  {
    sub_1DD6E0540(v0);
    v10 = *(v9 + 32);
    v11 = sub_1DD6DDEFC();
    return v12(v11);
  }

  return result;
}

uint64_t _s16IntelligenceFlow14ActionResponseV6stepId10Foundation4UUIDVvs_0()
{
  sub_1DD824154(v0, &qword_1ECD0E540);
  v1 = sub_1DD874820();
  sub_1DD6DE1C4(v1);
  v3 = *(v2 + 32);
  v4 = sub_1DD6E21D0();
  v5(v4);
  sub_1DD6E09D4();

  return sub_1DD6E5E68(v6, v7, v8, v1);
}

void SystemPromptResolution.eventId.modify()
{
  sub_1DD6DEB38();
  v2 = sub_1DD8263E8();
  v3 = sub_1DD7281CC(v2);
  sub_1DD826698(v3);
  v4 = sub_1DD6ED130();
  v6 = sub_1DD710A9C(v4, v5);
  sub_1DD6DEA10(v6);
  v8 = sub_1DD7281CC(*(v7 + 64));
  v9 = sub_1DD826B54(v8);
  v1[2] = v9;
  sub_1DD6DDEAC(v9);
  v11 = v10;
  v1[3] = v10;
  v13 = sub_1DD7281CC(*(v12 + 64));
  v14 = sub_1DD8276E0(v13);
  v1[5] = sub_1DD7281CC(v14);
  sub_1DD6E87AC();
  sub_1DD82598C();
  sub_1DD700E60();
  sub_1DD824C40();
  if (v15)
  {
    _s16IntelligenceFlow15SessionClientIDVACycfC_0();
    sub_1DD824C40();
    if (!v15)
    {
      sub_1DD824154(v0, &qword_1ECD0E540);
    }
  }

  else
  {
    v16 = *(v11 + 32);
    v17 = sub_1DD824C78();
    v18(v17);
  }

  sub_1DD8275E8();
  sub_1DD6DFED0();
}

void sub_1DD7CE908()
{
  sub_1DD827764();
  v1 = (*v0)[4];
  v2 = (*v0)[5];
  v3 = (*v0)[2];
  v4 = (*v0)[3];
  v6 = **v0;
  v5 = (*v0)[1];
  if (v7)
  {
    v8 = v4[2];
    v9 = (*v0)[4];
    sub_1DD6FF0E4();
    v10();
    sub_1DD824154(v6, &qword_1ECD0E540);
    sub_1DD826A58();
    v11 = sub_1DD8258C4();
    v12(v11);
    sub_1DD826F6C();
    sub_1DD825D88();
    sub_1DD6E5E68(v13, v14, v15, v16);
    v17 = v4[1];
    v18 = sub_1DD6FF97C();
    v19(v18);
  }

  else
  {
    sub_1DD824154(**v0, &qword_1ECD0E540);
    v20 = v4[4];
    sub_1DD6FF0E4();
    v21();
    sub_1DD826F6C();
    sub_1DD825D88();
    sub_1DD6E5E68(v22, v23, v24, v25);
  }

  free(v2);
  free(v1);
  free(v5);
  sub_1DD827720();

  free(v26);
}

uint64_t sub_1DD7CEA20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001DD8B6020 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6974634172657375 && a2 == 0xEA00000000006E6FLL;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7475706E69 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD875A30();

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

unint64_t sub_1DD7CEBD8(char a1)
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

uint64_t sub_1DD7CEC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7CEA20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7CECBC(uint64_t a1)
{
  v2 = sub_1DD803BA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CECF8(uint64_t a1)
{
  v2 = sub_1DD803BA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemPromptResolution.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6E86E0();
  v3 = sub_1DD710A9C(&qword_1ECD124A8, &qword_1DD889E38);
  sub_1DD6E49A8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD803BA8();
  sub_1DD6E1808();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v9);
  sub_1DD6E5FDC();
  sub_1DD875960();
  if (!v0)
  {
    v10 = type metadata accessor for SystemPromptResolution(0);
    sub_1DD825AA8(v10);
    sub_1DD6E5FDC();
    sub_1DD8759D0();
    v11 = v2[6];
    sub_1DD826FE4();
    type metadata accessor for SystemPromptResolution.UserAction(0);
    sub_1DD826280();
    sub_1DD6E1E84(v12);
    sub_1DD8262A4();
    sub_1DD6E9630();
    sub_1DD8759D0();
    v13 = (v1 + v2[7]);
    v14 = *(v13 + 2);
    v25 = *v13;
    v27 = *(v13 + 1);
    sub_1DD7928CC();
    sub_1DD70396C();
    sub_1DD6E5E30();

    sub_1DD8259D4();
    sub_1DD6DE334();
    sub_1DD8759D0();

    v26 = sub_1DD6F8CE0(v2[8]);
    v28 = v16;
    v29 = *(v15 + 16);
    v30 = *(v15 + 24);
    v31 = *(v15 + 32);
    sub_1DD6E70D8();
    sub_1DD7FD604(v17, v18, v19, v20, v21);
    sub_1DD803BFC();
    sub_1DD6E5334();
    sub_1DD8759D0();
    sub_1DD7FD670(v26, v28, v29, v30, v31);
  }

  v22 = *(v5 + 8);
  v23 = sub_1DD6DEA04();
  v24(v23);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void SystemPromptResolution.init(from:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v44 = type metadata accessor for SystemPromptResolution.UserAction(0);
  v5 = sub_1DD6DE1C4(v44);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DDEE8();
  sub_1DD6E9A9C();
  v8 = sub_1DD874820();
  v9 = sub_1DD6DDEAC(v8);
  v45 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD824734();
  v13 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v13);
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6F0A58();
  v46 = sub_1DD710A9C(&qword_1ECD124C8, &qword_1DD889E40);
  sub_1DD6DDEAC(v46);
  v18 = *(v17 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  v20 = sub_1DD6E27D4();
  v21 = type metadata accessor for SystemPromptResolution(v20);
  v22 = sub_1DD6DE1C4(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6E2220();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v25, v26, v27, v8);
  v47 = v21;
  v28 = v2 + *(v21 + 32);
  sub_1DD827380();
  v29 = v4[3];
  v30 = v4[4];
  sub_1DD70066C();
  sub_1DD803BA8();
  sub_1DD8259BC();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD827518();
    sub_1DD6E1EC8(v4);
    sub_1DD824154(v2, &qword_1ECD0E540);
    if (v4)
    {
      v38 = v47[6];
      sub_1DD824984();
      sub_1DD6E5ABC();
      if (!v29)
      {
        goto LABEL_6;
      }
    }

    else if (!v29)
    {
LABEL_6:
      v33 = sub_1DD6FA3DC();
      sub_1DD7FD670(v33, v34, v35, v36, v37);
      goto LABEL_7;
    }

    v32 = *(v2 + v47[7] + 16);

    goto LABEL_6;
  }

  sub_1DD6E14DC();
  sub_1DD6E1E84(v31);
  sub_1DD8275B0();
  sub_1DD875860();
  sub_1DD825674();
  sub_1DD807414();
  v48[0] = 1;
  sub_1DD8275B0();
  sub_1DD8758D0();
  (*(v45 + 32))(v2 + v47[5], v1, v8);
  sub_1DD826FE4();
  sub_1DD826280();
  sub_1DD6E1E84(v39);
  sub_1DD8758D0();
  v40 = v47[6];
  sub_1DD6F3220();
  sub_1DD6E59B8();
  sub_1DD7928CC();
  sub_1DD705D68();
  sub_1DD826E34();
  sub_1DD8758D0();
  v41 = v2 + v47[7];
  *v41 = *v48;
  *(v41 + 8) = *&v48[8];
  sub_1DD6E70D8();
  sub_1DD803C50();
  sub_1DD826E34();
  sub_1DD8758D0();
  v42 = sub_1DD826454();
  v43(v42);
  sub_1DD7FD670(*v28, *(v28 + 8), *(v28 + 16), *(v28 + 24), *(v28 + 32));
  *v28 = *v48;
  *(v28 + 16) = *&v48[16];
  *(v28 + 32) = v49;
  sub_1DD700948();
  sub_1DD6E5870();
  sub_1DD6E1EC8(v4);
  sub_1DD824EB8();
  sub_1DD6E5ABC();
LABEL_7:
  sub_1DD826464();
  sub_1DD6E0C78();
}

uint64_t ActionResponse.exprId.getter()
{
  v0 = type metadata accessor for ActionResponse(0);
  sub_1DD6E9B14(*(v0 + 20));
  return sub_1DD6DDEFC();
}

uint64_t ActionResponse.exprId.setter()
{
  v3 = sub_1DD6ED7A4();
  v4 = type metadata accessor for ActionResponse(v3);
  result = sub_1DD6F43C0(*(v4 + 20));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ActionResponse.exprId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ActionResponse(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7CF608()
{
  v0 = sub_1DD826B18();
  v2 = v1(v0);
  sub_1DD6E9B14(*(v2 + 24));
  return sub_1DD6DDEFC();
}

uint64_t ActionResponse.toolId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ActionResponse(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t ActionResponse.outcome.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ActionResponse(v0) + 28);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7CF758()
{
  v0 = sub_1DD825000();
  v2 = *(v1(v0) + 32);
  sub_1DD826944();
  return sub_1DD6E5870();
}

uint64_t ActionResponse.response.setter()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ActionResponse(v0) + 32);
  sub_1DD82491C();
  sub_1DD826F84();
  return sub_1DD7FFEA0();
}

uint64_t ActionResponse.response.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ActionResponse(v0) + 32);
  return sub_1DD6DDF9C();
}

uint64_t ActionResponse.responseOutput.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = *(type metadata accessor for ActionResponse(v0) + 36);
  return sub_1DD700E60();
}

uint64_t ActionResponse.responseOutput.setter()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ActionResponse(v0) + 36);
  sub_1DD826F84();
  return sub_1DD807414();
}

uint64_t ActionResponse.responseOutput.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ActionResponse(v0) + 36);
  return sub_1DD6DDF9C();
}

uint64_t ActionResponse.clientQueryId.getter()
{
  v0 = type metadata accessor for ActionResponse(0);
  sub_1DD6E9B14(*(v0 + 40));
  return sub_1DD6DDEFC();
}

uint64_t ActionResponse.clientQueryId.setter()
{
  v3 = sub_1DD6ED7A4();
  v4 = type metadata accessor for ActionResponse(v3);
  result = sub_1DD6F43C0(*(v4 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ActionResponse.clientQueryId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ActionResponse(v0) + 40);
  return sub_1DD6DDF9C();
}

void ActionResponse.init(actionEventId:exprId:toolId:outcome:responseOutput:clientQueryId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1DD826D80();
  v53 = v30;
  v52 = v31;
  sub_1DD826C60();
  v33 = v32;
  v34 = sub_1DD874820();
  v37 = sub_1DD6DEA4C(v33, v35, v36, v34);
  v38 = type metadata accessor for ActionResponse(v37);
  v39 = (v33 + v38[5]);
  v40 = v33 + v38[8];
  ResponseManifest.init()();
  v41 = v38[9];
  v42 = type metadata accessor for ResponseOutput(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v43, v44, v45, v42);
  v46 = (v33 + v38[10]);
  sub_1DD807414();
  *v39 = v29;
  v39[1] = v28;
  v47 = (v33 + v38[6]);
  *v47 = v27;
  v47[1] = v52;
  v48 = v38[7];
  sub_1DD6E5FF0();
  sub_1DD6E59B8();
  sub_1DD824154(v33 + v41, &qword_1ECD11B08);
  sub_1DD82477C();
  sub_1DD6E59B8();
  sub_1DD6E09D4();
  sub_1DD6E5E68(v49, v50, v51, v42);
  *v46 = v53;
  v46[1] = a27;
  sub_1DD6F37CC();
}

uint64_t ActionResponse.init(actionEventId:exprId:toolId:outcome:responseOutput:)()
{
  sub_1DD6FF8A8();
  v5 = v4;
  sub_1DD825B54();
  sub_1DD874820();
  v6 = sub_1DD6FF79C();
  v10 = sub_1DD6DEA4C(v6, v7, v8, v9);
  v11 = type metadata accessor for ActionResponse(v10);
  v12 = (v0 + v11[5]);
  v13 = v0 + v11[8];
  ResponseManifest.init()();
  v14 = v11[9];
  type metadata accessor for ResponseOutput(0);
  sub_1DD825310();
  sub_1DD6E5E68(v15, v16, v17, v18);
  sub_1DD6F448C(v11[10]);
  sub_1DD8265C8();
  sub_1DD807414();
  *v12 = v3;
  v12[1] = v2;
  v19 = (v0 + v11[6]);
  *v19 = v1;
  v19[1] = v5;
  v20 = v11[7];
  sub_1DD6E5FF0();
  sub_1DD6E59B8();
  sub_1DD824154(v0 + v14, &qword_1ECD11B08);
  sub_1DD82477C();
  sub_1DD6E59B8();
  sub_1DD825D88();
  sub_1DD6E58C4();

  return sub_1DD6E5E68(v21, v22, v23, v24);
}

void ActionResponse.init(actionEventId:exprId:toolId:outcome:response:)()
{
  sub_1DD6FF8A8();
  sub_1DD825B3C();
  sub_1DD6F9E24();
  sub_1DD874820();
  v6 = sub_1DD6FF79C();
  v10 = sub_1DD6DEA4C(v6, v7, v8, v9);
  v11 = type metadata accessor for ActionResponse(v10);
  v12 = sub_1DD827658(v11);
  v14 = (v0 + v13);
  v15 = *(v12 + 32);
  ResponseManifest.init()();
  v16 = v5[9];
  type metadata accessor for ResponseOutput(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v17, v18, v19, v20);
  sub_1DD6F448C(v5[10]);
  sub_1DD807414();
  *v14 = v4;
  v14[1] = v3;
  v21 = (v0 + v5[6]);
  *v21 = v2;
  v21[1] = v1;
  v22 = v5[7];
  sub_1DD6E5FF0();
  sub_1DD6E59B8();
  sub_1DD82491C();
  sub_1DD7FFEA0();
  sub_1DD6E58C4();
}

void sub_1DD7CFC78()
{
  sub_1DD6DEB38();
  v2 = v1;
  v4 = v3;
  sub_1DD6F9E24();
  v5 = sub_1DD874820();
  sub_1DD6E0C90();
  v9 = sub_1DD70386C(v6, v7, v8, v5);
  v10 = type metadata accessor for ActionResponse(v9);
  v11 = sub_1DD6E0508(v10);
  *v12 = 0;
  v12[1] = 0;
  v13 = *(v11 + 32);
  ResponseManifest.init()();
  v14 = v10[9];
  type metadata accessor for ResponseOutput(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v15, v16, v17, v18);
  sub_1DD6F448C(v10[10]);
  sub_1DD824154(v0, &qword_1ECD0E540);
  sub_1DD6E0540(v5);
  v20 = *(v19 + 32);
  v21 = sub_1DD6ED180();
  v22(v21);
  sub_1DD6E09D4();
  sub_1DD6E5E68(v23, v24, v25, v5);
  v26 = (v0 + v10[6]);
  *v26 = v4;
  v26[1] = v2;
  v27 = v10[7];
  sub_1DD6E5FF0();
  sub_1DD8275C4();
  sub_1DD6E59B8();
  sub_1DD82491C();
  sub_1DD7FFEA0();
  sub_1DD6DFED0();
}

void ActionResponse.stepId.modify()
{
  sub_1DD6DEB38();
  v2 = sub_1DD8263E8();
  v3 = sub_1DD7281CC(v2);
  sub_1DD826698(v3);
  v4 = sub_1DD6ED130();
  v6 = sub_1DD710A9C(v4, v5);
  sub_1DD6DEA10(v6);
  v8 = sub_1DD7281CC(*(v7 + 64));
  v9 = sub_1DD826B54(v8);
  v1[2] = v9;
  sub_1DD6DDEAC(v9);
  v11 = v10;
  v1[3] = v10;
  v13 = sub_1DD7281CC(*(v12 + 64));
  v14 = sub_1DD8276E0(v13);
  v1[5] = sub_1DD7281CC(v14);
  sub_1DD6E87AC();
  sub_1DD82598C();
  sub_1DD700E60();
  sub_1DD824C40();
  if (v15)
  {
    _s16IntelligenceFlow15SessionClientIDVACycfC_0();
    sub_1DD824C40();
    if (!v15)
    {
      sub_1DD824154(v0, &qword_1ECD0E540);
    }
  }

  else
  {
    v16 = *(v11 + 32);
    v17 = sub_1DD824C78();
    v18(v17);
  }

  sub_1DD8275E8();
  sub_1DD6DFED0();
}

void ActionResponse.eventId.modify()
{
  sub_1DD6DEB38();
  v2 = sub_1DD8263E8();
  v3 = sub_1DD7281CC(v2);
  sub_1DD826698(v3);
  v4 = sub_1DD6ED130();
  v6 = sub_1DD710A9C(v4, v5);
  sub_1DD6DEA10(v6);
  v8 = sub_1DD7281CC(*(v7 + 64));
  v9 = sub_1DD826B54(v8);
  v1[2] = v9;
  sub_1DD6DDEAC(v9);
  v11 = v10;
  v1[3] = v10;
  v13 = sub_1DD7281CC(*(v12 + 64));
  v14 = sub_1DD8276E0(v13);
  v1[5] = sub_1DD7281CC(v14);
  sub_1DD6E87AC();
  sub_1DD82598C();
  sub_1DD700E60();
  sub_1DD824C40();
  if (v15)
  {
    _s16IntelligenceFlow15SessionClientIDVACycfC_0();
    sub_1DD824C40();
    if (!v15)
    {
      sub_1DD824154(v0, &qword_1ECD0E540);
    }
  }

  else
  {
    v16 = *(v11 + 32);
    v17 = sub_1DD824C78();
    v18(v17);
  }

  sub_1DD8275E8();
  sub_1DD6DFED0();
}

void ActionResponse.init(actionEventId:exprId:toolId:outcome:responseOutput:)()
{
  sub_1DD6FF8A8();
  sub_1DD825B3C();
  sub_1DD6F9E24();
  sub_1DD874820();
  v6 = sub_1DD6FF79C();
  v10 = sub_1DD6DEA4C(v6, v7, v8, v9);
  v11 = type metadata accessor for ActionResponse(v10);
  v12 = sub_1DD827658(v11);
  v14 = (v0 + v13);
  v15 = v0 + *(v12 + 32);
  ResponseManifest.init()();
  v16 = v5[9];
  type metadata accessor for ResponseOutput(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v17, v18, v19, v20);
  sub_1DD6F448C(v5[10]);
  sub_1DD807414();
  *v14 = v4;
  v14[1] = v3;
  v21 = (v0 + v5[6]);
  *v21 = v2;
  v21[1] = v1;
  v22 = v5[7];
  sub_1DD6E5FF0();
  sub_1DD8275C4();
  sub_1DD6E59B8();
  sub_1DD807414();
  sub_1DD6E58C4();
}

void static ActionOutcome.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v92 = v3;
  v83 = type metadata accessor for ParameterCandidatesNotFound(0);
  v4 = sub_1DD6DE1C4(v83);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDEE8();
  v7 = sub_1DD6E9A9C();
  v85 = type metadata accessor for ParameterNotAllowed(v7);
  v8 = sub_1DD6DE1C4(v85);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DDEE8();
  v11 = sub_1DD6E9A9C();
  v12 = type metadata accessor for ParameterConfirmation(v11);
  v13 = sub_1DD6DEA10(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DDEE8();
  v16 = sub_1DD6E9A9C();
  v17 = type metadata accessor for ParameterNeedsValue(v16);
  v18 = sub_1DD6DEA10(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DDEE8();
  v84 = v21;
  v22 = sub_1DD6E9A9C();
  v23 = type metadata accessor for SnippetStream(v22);
  v24 = sub_1DD6DEA10(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6DDEE8();
  v27 = sub_1DD6E9A9C();
  v28 = type metadata accessor for ActionSuccess(v27);
  v29 = sub_1DD6DEA10(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6DDEE8();
  v32 = sub_1DD6E9A9C();
  v33 = type metadata accessor for ActionOutcome(v32);
  v34 = sub_1DD6DE1C4(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD6DE21C();
  v89 = v37 - v38;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD6F1780();
  v87 = v40;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v41);
  sub_1DD824C88();
  MEMORY[0x1EEE9AC00](v42);
  sub_1DD6F1780();
  v91 = v43;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v44);
  sub_1DD6F1780();
  v90 = v45;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v46);
  sub_1DD6F1780();
  v88 = v47;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v48);
  sub_1DD6F1780();
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v49);
  sub_1DD6F1780();
  v86 = v50;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v51);
  sub_1DD824CC4();
  MEMORY[0x1EEE9AC00](v52);
  sub_1DD825898();
  MEMORY[0x1EEE9AC00](v53);
  sub_1DD824970();
  MEMORY[0x1EEE9AC00](v54);
  sub_1DD826CA0();
  v55 = sub_1DD710A9C(&qword_1ECD124E0, &qword_1DD889E48);
  sub_1DD6DEA10(v55);
  v57 = *(v56 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v58);
  sub_1DD6DE340();
  v60 = v1 + *(v59 + 56);
  sub_1DD6E5870();
  sub_1DD8270D0();
  sub_1DD6E9594();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6E2208();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_56;
      }

      sub_1DD824E40();
      sub_1DD6E59B8();
      sub_1DD825650();
      _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
      sub_1DD6F8CA8();
      goto LABEL_33;
    case 2u:
      sub_1DD6E2208();
      sub_1DD6F4498();
      sub_1DD6E5870();
      if (sub_1DD8266E0() == 2)
      {
        sub_1DD825A10();
        v64 = sub_1DD826A70();
        sub_1DD80043C(v64);
        sub_1DD80043C(v96);
        goto LABEL_61;
      }

      sub_1DD80043C(v96);
      goto LABEL_57;
    case 3u:
      sub_1DD6E2208();
      v65 = v1;
      sub_1DD6E0F70();
      sub_1DD6E5870();
      v67 = *v0;
      v66 = v0[1];
      v68 = v0[2];
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        v1 = v65;
        goto LABEL_57;
      }

      v69 = v92[1];
      v70 = v92[2];
      if (v66)
      {
        if (!v69)
        {
          goto LABEL_66;
        }

        v71 = v67 == *v92 && v66 == v69;
        if (!v71)
        {
          sub_1DD8258C4();
          if ((sub_1DD6FA430() & 1) == 0)
          {
            goto LABEL_66;
          }
        }
      }

      else if (v69)
      {
LABEL_66:

        goto LABEL_68;
      }

      sub_1DD6E0F70();
      sub_1DD716FC0();
      sub_1DD827878();

LABEL_68:
      sub_1DD6E5ABC();
LABEL_63:
      sub_1DD6FE01C();
      sub_1DD6DFED0();
      return;
    case 4u:
      sub_1DD6E2208();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_56;
      }

      sub_1DD824E70();
      sub_1DD6E59B8();
      static ParameterNeedsValue.== infix(_:_:)(v86, v84);
      sub_1DD824E58();
      sub_1DD6E5ABC();
      sub_1DD825650();
      goto LABEL_60;
    case 5u:
      sub_1DD6E2208();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_56;
      }

      sub_1DD824E28();
      sub_1DD6E59B8();
      sub_1DD825650();
      static ParameterConfirmation.== infix(_:_:)();
      sub_1DD82616C();
LABEL_33:
      sub_1DD6E5ABC();
      goto LABEL_60;
    case 6u:
      sub_1DD6E2208();
      sub_1DD6E5870();
      v75 = v88[1];
      v96[0] = *v88;
      v96[1] = v75;
      v76 = v88[3];
      v96[2] = v88[2];
      v96[3] = v76;
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        sub_1DD825DA0();
        v77 = sub_1DD826A70();
        sub_1DD80040C(v77);
        sub_1DD80040C(v96);
        goto LABEL_61;
      }

      sub_1DD80040C(v96);
      goto LABEL_57;
    case 7u:
      sub_1DD6E2208();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_56;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD826498();
      v74 = v71 && v72 == v73;
      if (v74 || (sub_1DD875A30() & 1) != 0)
      {
        sub_1DD8267E4(*(v85 + 20));
        if (_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0())
        {
          sub_1DD6FEB44();
        }
      }

      goto LABEL_45;
    case 8u:
      sub_1DD6E2208();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_56;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD826498();
      v82 = v71 && v80 == v81;
      if (v82 || (sub_1DD875A30() & 1) != 0)
      {
        sub_1DD826568(v83);
        _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
      }

LABEL_45:
      sub_1DD6E5ABC();
      sub_1DD770D4C();
      sub_1DD6E5ABC();
      sub_1DD6DE600();
      goto LABEL_68;
    case 9u:
      sub_1DD6E2208();
      sub_1DD8259E0();
      sub_1DD6E5870();
      if (sub_1DD702B14() == 9)
      {
        sub_1DD825C10();
        v62 = sub_1DD6F9BF8();
        sub_1DD8003E4(v62, v63, v91, v90, v89, v92);
        sub_1DD6FE78C();
        sub_1DD6DE600();
        goto LABEL_62;
      }

      sub_1DD6FE78C();
      v1 = v2;
      goto LABEL_57;
    case 0xAu:
      sub_1DD6E2208();
      sub_1DD6E5870();
      v78 = *v87;
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v79 = *v92;
        sub_1DD6E5C7C();
        sub_1DD7162FC();

        goto LABEL_61;
      }

      goto LABEL_57;
    case 0xBu:
      sub_1DD6E2208();
      sub_1DD6E5870();
      sub_1DD827938(v96);
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        sub_1DD827920(&v95);
        sub_1DD827938(v94);
        sub_1DD827920(v93);
        static ActionFailure.== infix(_:_:)(v94, v93);
        v61 = sub_1DD826A70();
        sub_1DD8003B4(v61);
        sub_1DD8003B4(v96);
        goto LABEL_61;
      }

      sub_1DD8003B4(v96);
      goto LABEL_57;
    default:
      sub_1DD6E2208();
      sub_1DD825C98();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1DD6FADF0();
LABEL_56:
        sub_1DD6E5ABC();
LABEL_57:
        sub_1DD824154(v1, &qword_1ECD124E0);
      }

      else
      {
        sub_1DD7006C0();
        sub_1DD6E59B8();
        sub_1DD825998();
        static ActionSuccess.== infix(_:_:)();
        sub_1DD825D6C();
        sub_1DD6E5ABC();
LABEL_60:
        sub_1DD6E5ABC();
LABEL_61:
        sub_1DD6DE600();
LABEL_62:
        sub_1DD6E5ABC();
      }

      goto LABEL_63;
  }
}

uint64_t sub_1DD7D0AE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x644972707865 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65736E6F70736572 && a2 == 0xEE0074757074754FLL;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x7551746E65696C63 && a2 == 0xED00006449797265)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD875A30();

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

unint64_t sub_1DD7D0D20(char a1)
{
  result = 0x76456E6F69746361;
  switch(a1)
  {
    case 1:
      v3 = 1919973477;
      goto LABEL_4;
    case 2:
      v3 = 1819242356;
LABEL_4:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x644900000000;
      break;
    case 3:
      result = 0x656D6F6374756FLL;
      break;
    case 4:
    case 5:
      result = 0x65736E6F70736572;
      break;
    case 6:
      result = 0x7551746E65696C63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7D0DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7D0AE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7D0E24(uint64_t a1)
{
  v2 = sub_1DD803CA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D0E60(uint64_t a1)
{
  v2 = sub_1DD803CA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionResponse.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  v2 = sub_1DD710A9C(&qword_1ECD124E8, &qword_1DD889E50);
  sub_1DD6E49A8(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD803CA4();
  sub_1DD6E1808();
  sub_1DD825C8C();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v6);
  sub_1DD6F9A4C();
  sub_1DD6E5924();
  sub_1DD875960();
  if (!v0)
  {
    v7 = type metadata accessor for ActionResponse(0);
    sub_1DD82554C(v7);
    sub_1DD8250C8();
    sub_1DD824BDC();
    sub_1DD875920();
    sub_1DD6FE1CC();
    sub_1DD824BDC();
    sub_1DD875970();
    v8 = v1[7];
    sub_1DD6E6174();
    type metadata accessor for ActionOutcome(0);
    sub_1DD705C74();
    sub_1DD6E1E84(v9);
    sub_1DD8265F0();
    sub_1DD6E63A8();
    sub_1DD8759D0();
    v10 = v1[8];
    sub_1DD82636C();
    type metadata accessor for ResponseManifest(0);
    sub_1DD6FAC34();
    sub_1DD6E1E84(v11);
    sub_1DD8265F0();
    sub_1DD6E63A8();
    sub_1DD8759D0();
    v12 = v1[9];
    sub_1DD8267FC();
    type metadata accessor for ResponseOutput(0);
    sub_1DD6F17A8();
    sub_1DD6E1E84(v13);
    sub_1DD8265F0();
    sub_1DD6E63A8();
    sub_1DD875960();
    sub_1DD82595C(v1[10]);
    sub_1DD827548();
    sub_1DD824BDC();
    sub_1DD875920();
  }

  v14 = sub_1DD6EFFB4();
  v15(v14);
  sub_1DD825790();
  sub_1DD826CF4();
}

void ActionResponse.init(from:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v64 = v5;
  v6 = sub_1DD710A9C(&qword_1ECD11B08, &qword_1DD889910);
  sub_1DD6DEA10(v6);
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD824948(v10, v64);
  v11 = type metadata accessor for ResponseManifest(0);
  v12 = sub_1DD6DE1C4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DDEE8();
  v15 = sub_1DD6E9A9C();
  v66 = type metadata accessor for ActionOutcome(v15);
  v16 = sub_1DD6DE1C4(v66);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DDEE8();
  v19 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v19);
  v21 = *(v20 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6FF92C(v23, v65);
  v68 = sub_1DD710A9C(&qword_1ECD12508, &qword_1DD889E58);
  sub_1DD6DDEAC(v68);
  v67 = v24;
  v26 = *(v25 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  v28 = sub_1DD700BA4();
  v29 = type metadata accessor for ActionResponse(v28);
  v30 = sub_1DD6DE1C4(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD6DE4A8();
  sub_1DD700C78();
  v33 = sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v34, v35, v36, v33);
  v37 = (v1 + *(v29 + 32));
  bzero(v37, 0xD9uLL);
  v38 = v11[8];
  type metadata accessor for ResponseVisual.UIType(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v39, v40, v41, v42);
  sub_1DD826754(v11[9]);
  sub_1DD826754(v11[10]);
  *(v37 + v11[11]) = 2;
  *(v37 + v11[12]) = 2;
  v69 = v29;
  v43 = *(v29 + 36);
  v44 = type metadata accessor for ResponseOutput(0);
  v71 = v1;
  sub_1DD6E0C90();
  sub_1DD6E5E68(v45, v46, v47, v44);
  v49 = v4[3];
  v48 = v4[4];
  v70 = v4;
  sub_1DD6E6C94(v4);
  sub_1DD803CA4();
  sub_1DD6EF0F4();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD825AF8();
    sub_1DD6E1EC8(v4);
    sub_1DD824154(v71, &qword_1ECD0E540);

    if (v33)
    {
      sub_1DD8276B0(v69[6]);
    }

    if (v43)
    {
      v51 = v69[7];
      sub_1DD6DE600();
      sub_1DD6E5ABC();
    }

    sub_1DD825E18();
    sub_1DD6E5ABC();
    sub_1DD824154(v71 + v43, &qword_1ECD11B08);
  }

  else
  {
    sub_1DD6E14DC();
    sub_1DD6E1E84(v50);
    sub_1DD6F9A4C();
    sub_1DD826A88();
    sub_1DD875860();
    sub_1DD807414();
    sub_1DD824CE8();
    v52 = sub_1DD875820();
    sub_1DD82692C(v52, v53, v69[5]);
    sub_1DD825178();
    v54 = sub_1DD875870();
    sub_1DD82692C(v54, v55, v69[6]);
    sub_1DD6E6174();
    sub_1DD705C74();
    sub_1DD6E1E84(v56);
    sub_1DD8758D0();
    v57 = v69[7];
    sub_1DD6E5FF0();
    sub_1DD6E59B8();
    sub_1DD82636C();
    sub_1DD6FAC34();
    sub_1DD6E1E84(v58);
    sub_1DD8758D0();
    sub_1DD82491C();
    sub_1DD825C04();
    sub_1DD7FFEA0();
    sub_1DD8267FC();
    sub_1DD6F17A8();
    sub_1DD6E1E84(v59);
    sub_1DD875860();
    sub_1DD807414();
    sub_1DD827548();
    v60 = sub_1DD875820();
    v62 = v61;
    v63 = (v71 + v69[10]);
    (*(v67 + 8))(v2, v68);
    *v63 = v60;
    v63[1] = v62;
    sub_1DD70131C();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v70);
    sub_1DD8259F8();
    sub_1DD6E5ABC();
  }

  sub_1DD703860();
  sub_1DD6E0C78();
}

uint64_t SystemResponse.statementId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SystemResponse(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7D1844()
{
  v3 = sub_1DD6ED7A4();
  v5 = v4(v3);
  result = sub_1DD6F43C0(*(v5 + 24));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SystemResponse.toolId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SystemResponse(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7D18EC()
{
  v0 = sub_1DD825000();
  v2 = *(v1(v0) + 28);
  sub_1DD826944();
  return sub_1DD6E5870();
}

uint64_t sub_1DD7D1958()
{
  v0 = sub_1DD6EE78C();
  v2 = *(v1(v0) + 28);
  sub_1DD8275C4();
  return sub_1DD7FFEA0();
}

uint64_t SystemResponse.outcome.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SystemResponse(v0) + 28);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7D1A2C()
{
  v0 = sub_1DD6F355C();
  v2 = *(v1(v0) + 32);
  return sub_1DD826384();
}

uint64_t SystemResponse.responseOutput.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SystemResponse(v0) + 32);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7D1AD4()
{
  v3 = sub_1DD6ED7A4();
  v5 = v4(v3);
  result = sub_1DD6F43C0(*(v5 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SystemResponse.clientQueryId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SystemResponse(v0) + 36);
  return sub_1DD6DDF9C();
}

uint64_t SystemResponse.interpretedStatementResults.getter()
{
  v1 = *(v0 + *(type metadata accessor for SystemResponse(0) + 40));
}

void SystemResponse.init(responseOutput:clientQueryId:interpretedStatementResults:)()
{
  sub_1DD6DEB38();
  v4 = v3;
  v58 = v5;
  v59 = v6;
  v57 = v7;
  v9 = v8;
  v10 = sub_1DD710A9C(&qword_1ECD12520, &qword_1DD889E60);
  sub_1DD6DEA10(v10);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DEBA0();
  v14 = type metadata accessor for InterpretedStatementResult(0);
  v15 = sub_1DD6DE1C4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6E535C();
  v18 = sub_1DD874820();
  v19 = sub_1DD8251B8();
  v22 = sub_1DD70386C(v19, v20, v21, v18);
  v23 = type metadata accessor for SystemResponse(v22);
  v24 = sub_1DD826354(v23);
  v26 = (v9 + v25);
  *v26 = 0;
  v26[1] = 0;
  v26[2] = 1;
  v27 = *(v24 + 32);
  type metadata accessor for ResponseOutput(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v28, v29, v30, v31);
  v32 = (v9 + v0[9]);
  sub_1DD803D18();
  *v32 = v58;
  v32[1] = v59;
  *(v9 + v0[10]) = v4;
  sub_1DD785EE4(v4, v2);
  sub_1DD6DE1FC(v2, 1, v14);
  if (v33)
  {
    sub_1DD824154(v2, &qword_1ECD12520);
    sub_1DD824154(v9, &qword_1ECD0E540);
    v34 = sub_1DD8251B8();
    sub_1DD6E5E68(v34, v35, v36, v18);
    sub_1DD70148C(*v26, v26[1], v26[2]);
    *v26 = 0;
    v26[1] = 0;
    v26[2] = 1;
    sub_1DD824154(v57, &qword_1ECD11B08);
    sub_1DD826ED0();
    *v37 = 0;
    v37[1] = 0xE000000000000000;
    v38 = v9 + v0[7];
    v39 = sub_1DD825640();
    sub_1DD70148C(v39, v40, v41);
    *v38 = 14;
    *(v38 + 8) = 0u;
    *(v38 + 24) = 0u;
    *(v38 + 40) = 2;
    *(v38 + 41) = *v60;
    *(v38 + 44) = *&v60[3];
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *(v38 + 64) = 1;
    type metadata accessor for StatementOutcome(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1DD700948();
    sub_1DD6E59B8();
    sub_1DD6DEA04();
    sub_1DD803D18();
    v42 = (v1 + v14[6]);
    v44 = *(v42 + 1);
    v43 = *(v42 + 2);
    v45 = *v26;
    v46 = v26[1];
    v47 = v26[2];
    *v26 = *v42;
    v26[1] = v44;
    v26[2] = v43;

    v48 = sub_1DD6F4D4C();
    sub_1DD70148C(v48, v49, v47);
    v50 = sub_1DD8276B0(v14[8]);
    if (v50)
    {
      v52 = *v51;
      v53 = v50;
    }

    else
    {
      v52 = 0;
      v53 = 0xE000000000000000;
    }

    sub_1DD824154(v57, &qword_1ECD11B08);
    sub_1DD826ED0();
    *v54 = v52;
    v54[1] = v53;
    v55 = v14[9];
    v56 = v0[7];
    sub_1DD6ED690();
    sub_1DD6E5870();
    sub_1DD8259F8();
    sub_1DD6E5ABC();
  }

  sub_1DD6DFED0();
}

void ActionFailure.init(failure:)()
{
  sub_1DD826938();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = sub_1DD825640();
  sub_1DD70148C(v4, v5, v6);
  sub_1DD6FEB38();
  *(v0 + 32) = v2;
  *(v0 + 40) = v3;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
}

void SystemResponse.init(actionEventId:statementId:toolId:outcome:responseOutput:clientQueryId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  sub_1DD826D80();
  v41 = v10;
  v42 = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1DD826F78(v18, v22);
  v24 = *(v23 + 16);
  v25 = sub_1DD874820();
  v28 = sub_1DD6DEA4C(v21, v26, v27, v25);
  v29 = type metadata accessor for SystemResponse(v28);
  v30 = sub_1DD825AA8(v29);
  v32 = (v21 + v31);
  *v32 = 0;
  v32[1] = 0;
  v32[2] = 1;
  v33 = *(v30 + 32);
  type metadata accessor for ResponseOutput(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v34, v35, v36, v37);
  v38 = (v21 + v9[9]);
  sub_1DD6ED118();
  sub_1DD803D18();
  sub_1DD70148C(*v32, v32[1], v32[2]);
  *v32 = a9;
  v32[2] = v24;
  v39 = (v21 + v9[6]);
  *v39 = v17;
  v39[1] = v15;
  v40 = v9[7];
  sub_1DD6ED690();
  sub_1DD6E5870();
  sub_1DD75366C();
  sub_1DD803D18();
  *v38 = v41;
  v38[1] = v42;
  sub_1DD824154(v13, &qword_1ECD11B08);
  sub_1DD6E0900();
  sub_1DD6E5ABC();
  sub_1DD824154(v19, &qword_1ECD0E540);
  *(v21 + v9[10]) = MEMORY[0x1E69E7CC0];
  sub_1DD6F37CC();
}

void SystemResponse.init(actionEventId:statementId:toolId:outcome:responseOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  sub_1DD826528();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1DD826F78(v13, v17);
  v19 = *(v18 + 16);
  v20 = sub_1DD874820();
  v23 = sub_1DD6DEA4C(v16, v21, v22, v20);
  v24 = type metadata accessor for SystemResponse(v23);
  v25 = (v16 + v24[5]);
  *v25 = 0;
  v25[1] = 0;
  v25[2] = 1;
  v26 = v24[8];
  type metadata accessor for ResponseOutput(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v27, v28, v29, v30);
  v31 = (v16 + v24[9]);
  *v31 = 0;
  v31[1] = 0;
  sub_1DD6E21D0();
  sub_1DD803D18();
  v32 = sub_1DD700D00();
  sub_1DD70148C(v32, v33, v34);
  *v25 = a9;
  v25[2] = v19;
  v35 = (v16 + v24[6]);
  *v35 = v12;
  v35[1] = v10;
  v36 = v24[7];
  sub_1DD6ED690();
  sub_1DD6E5870();
  sub_1DD807414();
  sub_1DD6E0900();
  sub_1DD6E5ABC();
  sub_1DD824154(v14, &qword_1ECD0E540);
  *(v16 + v24[10]) = MEMORY[0x1E69E7CC0];
  sub_1DD8264FC();
}

uint64_t sub_1DD7D2188(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65736E6F70736572 && a2 == 0xEE0074757074754FLL;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7551746E65696C63 && a2 == 0xED00006449797265;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD00000000000001BLL && 0x80000001DD8B6D00 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD875A30();

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

unint64_t sub_1DD7D23D8(char a1)
{
  result = 0x76456E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x6E656D6574617473;
      break;
    case 2:
      result = 0x64496C6F6F74;
      break;
    case 3:
      result = 0x656D6F6374756FLL;
      break;
    case 4:
      result = 0x65736E6F70736572;
      break;
    case 5:
      result = 0x7551746E65696C63;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7D24D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7D2188(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7D2500(uint64_t a1)
{
  v2 = sub_1DD803D64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D253C(uint64_t a1)
{
  v2 = sub_1DD803D64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemResponse.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6E86E0();
  v3 = sub_1DD710A9C(&qword_1ECD12528, &qword_1DD889E68);
  sub_1DD6E49A8(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD803D64();
  sub_1DD6E1808();
  sub_1DD8269A4();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v7);
  sub_1DD826B3C();
  sub_1DD6E9630();
  sub_1DD875960();
  if (!v0)
  {
    v8 = type metadata accessor for SystemResponse(0);
    sub_1DD825AA8(v8);
    sub_1DD8253B4((v1 + v9));
    sub_1DD826FFC();
    sub_1DD703958(v10, v11, v12);
    sub_1DD70396C();
    sub_1DD6E5334();
    sub_1DD875960();
    v13 = sub_1DD6FE710();
    sub_1DD70148C(v13, v14, v15);
    sub_1DD6F8CE0(v2[6]);
    sub_1DD705DBC();
    sub_1DD875970();
    v16 = v2[7];
    v17 = sub_1DD6FF738(3);
    type metadata accessor for StatementOutcome(v17);
    sub_1DD6DE08C();
    sub_1DD6E1E84(v18);
    sub_1DD8262A4();
    sub_1DD6E9630();
    sub_1DD8759D0();
    v19 = v2[8];
    v20 = sub_1DD6FF738(4);
    type metadata accessor for ResponseOutput(v20);
    sub_1DD6F17A8();
    sub_1DD6E1E84(v21);
    sub_1DD8262A4();
    sub_1DD6E9630();
    sub_1DD875960();
    sub_1DD6F8CE0(v2[9]);
    sub_1DD705DBC();
    sub_1DD875920();
    v24 = *(v1 + v2[10]);
    sub_1DD710A9C(&qword_1ECD12538, &qword_1DD889E70);
    sub_1DD803DB8();
    sub_1DD826298();
    sub_1DD6E9630();
    sub_1DD8759D0();
  }

  v22 = sub_1DD6EFFB4();
  v23(v22);
  sub_1DD826F90();
  sub_1DD826CF4();
}

void SystemResponse.init(from:)()
{
  sub_1DD6DED2C();
  v5 = v4;
  v6 = sub_1DD710A9C(&qword_1ECD11B08, &qword_1DD889910);
  sub_1DD6DEA10(v6);
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD824934(v10, v53);
  v56 = type metadata accessor for StatementOutcome(0);
  v11 = sub_1DD6DE1C4(v56);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6E6200();
  v14 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v14);
  v16 = *(v15 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD824C9C(v18, v54);
  v57 = sub_1DD710A9C(&qword_1ECD12550, &qword_1DD889E78);
  sub_1DD6DDEAC(v57);
  v55 = v19;
  v21 = *(v20 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6DEBA0();
  v23 = type metadata accessor for SystemResponse(0);
  v24 = sub_1DD6DE1C4(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6E535C();
  v27 = sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v28, v29, v30, v27);
  sub_1DD82774C(*(v23 + 20));
  *(v2 + 16) = 1;
  v58 = v23;
  v31 = *(v23 + 32);
  type metadata accessor for ResponseOutput(0);
  v59 = v31;
  sub_1DD825300();
  sub_1DD6E5E68(v32, v33, v34, v35);
  v36 = v5[3];
  v37 = v5[4];
  sub_1DD70066C();
  sub_1DD803D64();
  sub_1DD6E4218();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD825AF8();
    sub_1DD6E1EC8(v5);
    sub_1DD824154(v1, &qword_1ECD0E540);
    v39 = sub_1DD826718();
    sub_1DD70148C(v39, v40, v41);
    if (v0)
    {
      sub_1DD8276B0(v58[6]);
    }

    if (v5)
    {
      v42 = v58[7];
      sub_1DD6E0900();
      sub_1DD6E5ABC();
    }

    sub_1DD824154(v1 + v59, &qword_1ECD11B08);
  }

  else
  {
    LOBYTE(v60) = 0;
    sub_1DD6E14DC();
    sub_1DD6E1E84(v38);
    sub_1DD825A9C();
    sub_1DD875860();
    sub_1DD6E60FC();
    sub_1DD807414();
    sub_1DD6FF8F4();
    sub_1DD705D68();
    sub_1DD6E40F8();
    sub_1DD875860();
    v43 = sub_1DD826718();
    sub_1DD70148C(v43, v44, v45);
    *v2 = v60;
    *(v2 + 16) = v61;
    sub_1DD826730(2);
    v46 = sub_1DD875870();
    sub_1DD8265D4(v46, v47, v58[6]);
    sub_1DD6DE08C();
    sub_1DD6E1E84(v48);
    sub_1DD825A9C();
    sub_1DD8758D0();
    v49 = v58[7];
    sub_1DD6E0B14();
    sub_1DD6E59B8();
    LOBYTE(v60) = 4;
    sub_1DD6F17A8();
    sub_1DD6E1E84(v50);
    sub_1DD825A9C();
    sub_1DD875860();
    sub_1DD807414();
    sub_1DD826730(5);
    v51 = sub_1DD875820();
    sub_1DD82692C(v51, v52, v58[9]);
    sub_1DD710A9C(&qword_1ECD12538, &qword_1DD889E70);
    sub_1DD6FFDDC();
    sub_1DD803E6C();
    sub_1DD6E40F8();
    sub_1DD8758D0();
    (*(v55 + 8))(v3, v57);
    *(v1 + v58[10]) = v60;
    sub_1DD70131C();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v5);
    sub_1DD8259F8();
    sub_1DD6E5ABC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7D2E58()
{
  v0 = sub_1DD6E0A5C();
  v2 = v1(v0);
  v3 = sub_1DD825320(*(v2 + 20));

  return sub_1DD703958(v3, v4, v5);
}

double sub_1DD7D2EB4(__int128 *a1)
{
  v1 = sub_1DD82580C(a1);
  v3 = v2(v1);
  v4 = sub_1DD6E3A44(*(v3 + 20));
  v7 = sub_1DD70148C(v4, v5, v6);
  *&result = sub_1DD82640C(v7, v8, v9, v10, v11, v12, v13, v14, v15).n128_u64[0];
  return result;
}

uint64_t IntermediateSystemResponse.statementId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for IntermediateSystemResponse(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t IntermediateSystemResponse.toolId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for IntermediateSystemResponse(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7D2FF4()
{
  v0 = sub_1DD6F355C();
  v2 = *(v1(v0) + 28);
  return sub_1DD826384();
}

uint64_t IntermediateSystemResponse.responseOutput.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for IntermediateSystemResponse(v0) + 28);
  return sub_1DD6DDF9C();
}

uint64_t IntermediateSystemResponse.clientQueryId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for IntermediateSystemResponse(v0) + 32);
  return sub_1DD6DDF9C();
}

void IntermediateSystemResponse.init(actionEventId:statementId:toolId:responseOutput:clientQueryId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  sub_1DD826528();
  v40 = v10;
  v41 = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1DD826F78(v18, v19);
  v21 = *(v20 + 16);
  v22 = sub_1DD874820();
  v25 = sub_1DD6DEA4C(v17, v23, v24, v22);
  v26 = type metadata accessor for IntermediateSystemResponse(v25);
  v27 = sub_1DD826B0C(v26);
  v29 = (v17 + v28);
  *v29 = 0;
  v29[1] = 0;
  v29[2] = 1;
  v30 = *(v27 + 28);
  type metadata accessor for ResponseOutput(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v31, v32, v33, v34);
  v35 = (v17 + *(v9 + 32));
  sub_1DD825650();
  sub_1DD807414();
  v36 = sub_1DD82676C();
  sub_1DD70148C(v36, v37, v38);
  *v29 = a9;
  v29[2] = v21;
  v39 = (v17 + *(v9 + 24));
  *v39 = v15;
  v39[1] = v13;
  sub_1DD807414();
  *v35 = v40;
  v35[1] = v41;
  sub_1DD8264FC();
}

uint64_t sub_1DD7D31D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65736E6F70736572 && a2 == 0xEE0074757074754FLL;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7551746E65696C63 && a2 == 0xED00006449797265)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD875A30();

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

uint64_t sub_1DD7D338C(char a1)
{
  result = 0x76456E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x6E656D6574617473;
      break;
    case 2:
      result = 0x64496C6F6F74;
      break;
    case 3:
      result = 0x65736E6F70736572;
      break;
    case 4:
      result = 0x7551746E65696C63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7D3458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7D31D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7D3480(uint64_t a1)
{
  v2 = sub_1DD803F20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D34BC(uint64_t a1)
{
  v2 = sub_1DD803F20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void IntermediateSystemResponse.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  v2 = sub_1DD710A9C(&qword_1ECD12568, &qword_1DD889E80);
  sub_1DD6E49A8(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD803F20();
  sub_1DD6E1808();
  sub_1DD8269A4();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v6);
  sub_1DD826B3C();
  sub_1DD6E5924();
  sub_1DD875960();
  if (!v0)
  {
    v7 = type metadata accessor for IntermediateSystemResponse(0);
    sub_1DD8257A8(v7);
    sub_1DD8253B4(v8);
    sub_1DD826FFC();
    sub_1DD703958(v9, v10, v11);
    sub_1DD70396C();
    sub_1DD824DE8();
    sub_1DD875960();
    v12 = sub_1DD6FE710();
    sub_1DD70148C(v12, v13, v14);
    sub_1DD6FE1CC();
    sub_1DD824BDC();
    sub_1DD875970();
    v15 = *(v1 + 28);
    v16 = sub_1DD6FF738(3);
    type metadata accessor for ResponseOutput(v16);
    sub_1DD6F17A8();
    sub_1DD6E1E84(v17);
    sub_1DD8265F0();
    sub_1DD6E63A8();
    sub_1DD875960();
    sub_1DD82595C(*(v1 + 32));
    sub_1DD824BDC();
    sub_1DD875920();
  }

  v18 = sub_1DD6EFFB4();
  v19(v18);
  sub_1DD825790();
  sub_1DD826CF4();
}

void IntermediateSystemResponse.init(from:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v49 = v5;
  v6 = sub_1DD710A9C(&qword_1ECD11B08, &qword_1DD889910);
  sub_1DD6DEA10(v6);
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD824948(v10, v49);
  v11 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v11);
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD82495C(v15, v50);
  v16 = sub_1DD710A9C(&qword_1ECD12578, &qword_1DD889E88);
  v17 = sub_1DD6DDEAC(v16);
  v51 = v18;
  v52 = v17;
  v20 = *(v19 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6DDFE4();
  v22 = type metadata accessor for IntermediateSystemResponse(0);
  v23 = sub_1DD6DE1C4(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6E535C();
  v26 = sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v27, v28, v29, v26);
  sub_1DD82774C(*(v22 + 20));
  *(v2 + 16) = 1;
  v53 = v22;
  v30 = *(v22 + 28);
  v31 = type metadata accessor for ResponseOutput(0);
  v54 = v30;
  sub_1DD6E0C90();
  sub_1DD6E5E68(v32, v33, v34, v31);
  v36 = *(v4 + 24);
  v35 = *(v4 + 32);
  v37 = sub_1DD826F54();
  sub_1DD6FE770(v37);
  sub_1DD803F20();
  sub_1DD77E6F4();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v55);
    sub_1DD824154(v1, &qword_1ECD0E540);
    v39 = sub_1DD826718();
    sub_1DD70148C(v39, v40, v41);
    sub_1DD824154(v1 + v54, &qword_1ECD11B08);
  }

  else
  {
    LOBYTE(v56) = 0;
    sub_1DD6E14DC();
    sub_1DD6E1E84(v38);
    sub_1DD825A9C();
    sub_1DD8258D0();
    sub_1DD875860();
    sub_1DD807414();
    sub_1DD6FF8F4();
    sub_1DD705D68();
    sub_1DD6E40F8();
    sub_1DD79A3A4();
    sub_1DD875860();
    v42 = sub_1DD826718();
    sub_1DD70148C(v42, v43, v44);
    *v2 = v56;
    *(v2 + 16) = v57;
    sub_1DD826730(2);
    v45 = sub_1DD875870();
    sub_1DD8265D4(v45, v46, *(v53 + 24));
    sub_1DD6F17A8();
    sub_1DD6E1E84(v47);
    sub_1DD825A9C();
    sub_1DD875860();
    sub_1DD807414();
    sub_1DD826730(4);
    sub_1DD875820();
    sub_1DD825CD4();
    v48 = (v1 + *(v53 + 32));
    (*(v51 + 8))(v4, v52);
    *v48 = v31;
    v48[1] = v51;
    sub_1DD70131C();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v55);
    sub_1DD8259F8();
    sub_1DD6E5ABC();
  }

  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t IntermediateSystemResponseRendered.statementId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for IntermediateSystemResponseRendered(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t IntermediateSystemResponseRendered.toolId.getter()
{
  v0 = type metadata accessor for IntermediateSystemResponseRendered(0);
  sub_1DD6E9B14(*(v0 + 24));
  return sub_1DD6DDEFC();
}

uint64_t IntermediateSystemResponseRendered.toolId.setter()
{
  v3 = sub_1DD6ED7A4();
  v4 = type metadata accessor for IntermediateSystemResponseRendered(v3);
  result = sub_1DD6F43C0(*(v4 + 24));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntermediateSystemResponseRendered.toolId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for IntermediateSystemResponseRendered(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t IntermediateSystemResponseRendered.renderedResponse.setter()
{
  v2 = sub_1DD6DE290();
  result = type metadata accessor for IntermediateSystemResponseRendered(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t IntermediateSystemResponseRendered.renderedResponse.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for IntermediateSystemResponseRendered(v0) + 28);
  return sub_1DD6DDF9C();
}

__n128 IntermediateSystemResponseRendered.init(actionEventId:statementId:toolId:renderedResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  sub_1DD6FF8A8();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1DD826F78(v17, v18);
  v20 = *(v19 + 16);
  v21 = sub_1DD874820();
  v24 = sub_1DD6DEA4C(v16, v22, v23, v21);
  v25 = type metadata accessor for IntermediateSystemResponseRendered(v24);
  v26 = (v16 + v25[5]);
  *v26 = 0;
  v26[1] = 0;
  v26[2] = 1;
  v27 = (v16 + v25[6]);
  sub_1DD7029A8();
  sub_1DD807414();
  sub_1DD70148C(*v26, v26[1], v26[2]);
  *v26 = a9;
  v26[2] = v20;
  *v27 = v14;
  v27[1] = v12;
  *(v16 + v25[7]) = v10;
  sub_1DD6E58C4();
  return result;
}

uint64_t sub_1DD7D3E20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x80000001DD8B6D20 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

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

unint64_t sub_1DD7D3F88(char a1)
{
  result = 0x76456E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x6E656D6574617473;
      break;
    case 2:
      result = 0x64496C6F6F74;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7D4028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7D3E20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7D4050(uint64_t a1)
{
  v2 = sub_1DD803F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D408C(uint64_t a1)
{
  v2 = sub_1DD803F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void IntermediateSystemResponseRendered.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  v3 = sub_1DD710A9C(&qword_1ECD12580, &qword_1DD889E90);
  sub_1DD6E49A8(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD803F74();
  sub_1DD6E1808();
  sub_1DD8269A4();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v7);
  sub_1DD826B3C();
  sub_1DD6E5924();
  sub_1DD875960();
  if (!v0)
  {
    v8 = type metadata accessor for IntermediateSystemResponseRendered(0);
    sub_1DD8257A8(v8);
    sub_1DD8253B4(v9);
    sub_1DD826FFC();
    sub_1DD703958(v10, v11, v12);
    sub_1DD70396C();
    sub_1DD824DE8();
    sub_1DD875960();
    v13 = sub_1DD6FE710();
    sub_1DD70148C(v13, v14, v15);
    sub_1DD6FE1CC();
    sub_1DD824BDC();
    sub_1DD875920();
    v16 = *(v1 + *(v2 + 28));
    sub_1DD824DE8();
    sub_1DD875980();
  }

  v17 = sub_1DD6EFFB4();
  v18(v17);
  sub_1DD825790();
  sub_1DD826CF4();
}

void IntermediateSystemResponseRendered.init(from:)()
{
  sub_1DD6DED2C();
  *&v42 = v0;
  v3 = v2;
  v40 = v4;
  v5 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v5);
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E9924(v9, v40);
  v10 = sub_1DD710A9C(&qword_1ECD12590, &qword_1DD889E98);
  sub_1DD6DDEAC(v10);
  v41 = v11;
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6E7258();
  v15 = type metadata accessor for IntermediateSystemResponseRendered(0);
  v16 = sub_1DD6DE1C4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E535C();
  sub_1DD874820();
  sub_1DD825310();
  sub_1DD6E5E68(v19, v20, v21, v22);
  v23 = (v1 + v15[5]);
  *v23 = 0;
  v23[1] = 0;
  v23[2] = 1;
  v24 = v3[3];
  v25 = v3[4];
  sub_1DD6E49C0(v3);
  sub_1DD803F74();
  sub_1DD7039CC();
  sub_1DD827908();
  if (v0)
  {
    sub_1DD6E1EC8(v3);
    sub_1DD824154(v1, &qword_1ECD0E540);
    v31 = sub_1DD82676C();
    sub_1DD70148C(v31, v32, v33);
  }

  else
  {
    sub_1DD6E14DC();
    sub_1DD6E1E84(v26);
    sub_1DD825A9C();
    sub_1DD6EE298();
    sub_1DD875860();
    sub_1DD807414();
    sub_1DD6FF8F4();
    sub_1DD705D68();
    sub_1DD6E40F8();
    sub_1DD6F09C4();
    sub_1DD875860();
    sub_1DD703E0C();
    v27 = sub_1DD82676C();
    sub_1DD70148C(v27, v28, v29);
    *v23 = v42;
    v23[2] = 1;
    sub_1DD826730(2);
    sub_1DD6EE298();
    v30 = sub_1DD875820();
    sub_1DD8265D4(v30, v34, v15[6]);
    sub_1DD826730(v35);
    sub_1DD6EE298();
    v36 = sub_1DD875880();
    v37 = *(v41 + 8);
    v38 = sub_1DD6E594C();
    v39(v38);
    *(v1 + v15[7]) = v36 & 1;
    sub_1DD70131C();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v3);
    sub_1DD8259F8();
    sub_1DD6E5ABC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t InterpretedStatementResult.resultStatementID.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = type metadata accessor for InterpretedStatementResult(v0);
  sub_1DD825B6C(*(v1 + 20));
}

void InterpretedStatementResult.resultStatementID.setter(unsigned int *a1)
{
  v2 = sub_1DD826BD0(a1);
  v3 = *(v1 + *(type metadata accessor for InterpretedStatementResult(v2) + 20) + 16);

  sub_1DD826EAC();
}

uint64_t InterpretedStatementResult.resultStatementID.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for InterpretedStatementResult(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7D4690()
{
  v0 = sub_1DD6E0A5C();
  v2 = v1(v0);
  sub_1DD825B6C(*(v2 + 24));
}

void sub_1DD7D46EC(unsigned int *a1)
{
  v2 = sub_1DD826BD0(a1);
  v4 = *(v1 + *(v3(v2) + 24) + 16);

  sub_1DD826EAC();
}

uint64_t InterpretedStatementResult.originProgramStatementID.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for InterpretedStatementResult(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7D4788()
{
  v0 = sub_1DD6E0A5C();
  v2 = v1(v0);
  sub_1DD825B6C(*(v2 + 28));
}

void sub_1DD7D47E4(unsigned int *a1)
{
  v2 = sub_1DD826BD0(a1);
  v4 = *(v1 + *(v3(v2) + 28) + 16);

  sub_1DD826EAC();
}

uint64_t InterpretedStatementResult.originTaskStatementID.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for InterpretedStatementResult(v0) + 28);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7D4880()
{
  v0 = sub_1DD826B18();
  v2 = v1(v0);
  sub_1DD6E9B14(*(v2 + 32));
  return sub_1DD6DDEFC();
}

uint64_t sub_1DD7D48CC()
{
  v3 = sub_1DD6ED7A4();
  v5 = v4(v3);
  result = sub_1DD6F43C0(*(v5 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t InterpretedStatementResult.toolId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for InterpretedStatementResult(v0) + 32);
  return sub_1DD6DDF9C();
}

uint64_t InterpretedStatementResult.outcome.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = *(type metadata accessor for InterpretedStatementResult(v0) + 36);
  sub_1DD6ED690();
  return sub_1DD6E5870();
}

uint64_t InterpretedStatementResult.outcome.setter()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for InterpretedStatementResult(v0) + 36);
  sub_1DD824E88();
  sub_1DD826F84();
  return sub_1DD7FFEA0();
}

uint64_t InterpretedStatementResult.outcome.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for InterpretedStatementResult(v0) + 36);
  return sub_1DD6DDF9C();
}

uint64_t InterpretedStatementResult.init(actionEventId:resultStatementID:originProgramStatementID:toolId:outcome:)()
{
  sub_1DD826528();
  v26 = v0;
  v25 = v1;
  v3 = v2;
  v5 = *v4;
  v6 = *(v4 + 1);
  v7 = *(v4 + 2);
  v9 = *v8;
  v11 = *(v8 + 1);
  v10 = *(v8 + 2);
  sub_1DD874820();
  v12 = sub_1DD6FF79C();
  v16 = sub_1DD6DEA4C(v12, v13, v14, v15);
  v17 = type metadata accessor for InterpretedStatementResult(v16);
  v18 = (v3 + v17[8]);
  sub_1DD8258C4();
  sub_1DD807414();
  v19 = v3 + v17[5];
  *v19 = v5;
  *(v19 + 8) = v6;
  *(v19 + 16) = v7;
  v20 = v3 + v17[6];
  *v20 = v9;
  *(v20 + 8) = v11;
  *(v20 + 16) = v10;
  v21 = v3 + v17[7];
  *v21 = v9;
  *(v21 + 8) = v11;
  *(v21 + 16) = v10;
  *v18 = v25;
  v18[1] = v26;
  v22 = v17[9];
  sub_1DD6E0B14();
  sub_1DD6E59B8();
  sub_1DD8264FC();
}

void InterpretedStatementResult.init(actionEventId:resultStatementID:originProgramStatementID:originTaskStatementID:toolId:outcome:)()
{
  sub_1DD826D80();
  v28 = v0;
  v27 = v1;
  v3 = v2;
  v5 = *v4;
  v6 = *(v4 + 1);
  v7 = *(v4 + 2);
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = *(v8 + 2);
  v26 = *v12;
  v24 = *(v12 + 2);
  v25 = *(v12 + 1);
  sub_1DD874820();
  v13 = sub_1DD6FF79C();
  v17 = sub_1DD6DEA4C(v13, v14, v15, v16);
  v18 = type metadata accessor for InterpretedStatementResult(v17);
  v19 = (v3 + v18[8]);
  sub_1DD6F4498();
  sub_1DD807414();
  v20 = v3 + v18[5];
  *v20 = v5;
  *(v20 + 8) = v6;
  *(v20 + 16) = v7;
  v21 = v3 + v18[6];
  *v21 = v9;
  *(v21 + 8) = v10;
  *(v21 + 16) = v11;
  v22 = v3 + v18[7];
  *v22 = v26;
  *(v22 + 8) = v25;
  *(v22 + 16) = v24;
  *v19 = v27;
  v19[1] = v28;
  v23 = v18[9];
  sub_1DD6E0B14();
  sub_1DD6E59B8();
  sub_1DD6F37CC();
}

void static InterpretedStatementResult.== infix(_:_:)()
{
  sub_1DD6DEB38();
  sub_1DD6ED7A4();
  v2 = sub_1DD874820();
  v3 = sub_1DD6DDEAC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6E535C();
  v8 = sub_1DD6ED130();
  v10 = sub_1DD710A9C(v8, v9);
  sub_1DD6DEA10(v10);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DEBA0();
  v14 = sub_1DD710A9C(&qword_1ECD10E30, &qword_1DD889238);
  sub_1DD6DEA10(v14);
  v16 = *(v15 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DE340();
  v19 = *(v18 + 56);
  sub_1DD6FF97C();
  sub_1DD82598C();
  sub_1DD700E60();
  sub_1DD82598C();
  sub_1DD700E60();
  sub_1DD6E26E4(v1);
  if (v20)
  {
    sub_1DD6E26E4(v1 + v19);
    if (v20)
    {
      sub_1DD824154(v1, &qword_1ECD0E540);
      goto LABEL_11;
    }

LABEL_9:
    sub_1DD824154(v1, &qword_1ECD10E30);
    goto LABEL_53;
  }

  sub_1DD6EFF74();
  sub_1DD700E60();
  sub_1DD6E26E4(v1 + v19);
  if (v20)
  {
    v21 = *(v5 + 8);
    v22 = sub_1DD8258C4();
    v23(v22);
    goto LABEL_9;
  }

  v24 = sub_1DD8252A0();
  v25(v24);
  sub_1DD6E14DC();
  sub_1DD6E1E84(v26);
  sub_1DD6E60FC();
  v27 = sub_1DD8750F0();
  v28 = *(v5 + 8);
  v29 = sub_1DD770D4C();
  v28(v29);
  v30 = sub_1DD8258C4();
  v28(v30);
  sub_1DD824154(v1, &qword_1ECD0E540);
  if ((v27 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_11:
  v31 = type metadata accessor for InterpretedStatementResult(0);
  sub_1DD825240((v0 + *(v31 + 20)));
  if (!v20)
  {
    goto LABEL_53;
  }

  v34 = v32;
  sub_1DD826E58(v33);
  if (!v37)
  {
    if (v35)
    {
      goto LABEL_53;
    }

LABEL_22:
    sub_1DD825240((v0 + v34[6]));
    if (!v20)
    {
      goto LABEL_53;
    }

    sub_1DD826E58(v41);
    if (v44)
    {
      if (!v42)
      {
        goto LABEL_53;
      }

      sub_1DD825B9C(v43);
      v47 = v20 && v45 == v46;
      if (!v47 && (sub_1DD875A30() & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (v42)
    {
      goto LABEL_53;
    }

    sub_1DD825240((v0 + v34[7]));
    if (!v20)
    {
      goto LABEL_53;
    }

    sub_1DD826E58(v48);
    if (v51)
    {
      if (!v49)
      {
        goto LABEL_53;
      }

      sub_1DD825B9C(v50);
      v54 = v20 && v52 == v53;
      if (!v54 && (sub_1DD875A30() & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (v49)
    {
      goto LABEL_53;
    }

    v55 = v34[8];
    sub_1DD6E8898();
    if (v58)
    {
      if (!v56)
      {
        goto LABEL_53;
      }

      sub_1DD824D88(v57);
      v61 = v20 && v59 == v60;
      if (!v61 && (sub_1DD875A30() & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (v56)
    {
      goto LABEL_53;
    }

    sub_1DD826E64(v34[9]);
    static StatementOutcome.== infix(_:_:)();
    goto LABEL_53;
  }

  if (v35)
  {
    sub_1DD825B9C(v36);
    v40 = v20 && v38 == v39;
    if (v40 || (sub_1DD875A30() & 1) != 0)
    {
      goto LABEL_22;
    }
  }

LABEL_53:
  sub_1DD6DFED0();
}

uint64_t sub_1DD7D4EFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001DD8B6D40 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x80000001DD8B6D60 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001DD8B6D80 == a2;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD875A30();

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

unint64_t sub_1DD7D50F0(char a1)
{
  result = 0x76456E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x64496C6F6F74;
      break;
    case 5:
      result = 0x656D6F6374756FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7D51C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7D4EFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7D51F0(uint64_t a1)
{
  v2 = sub_1DD803FC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D522C(uint64_t a1)
{
  v2 = sub_1DD803FC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InterpretedStatementResult.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  v2 = sub_1DD710A9C(&qword_1ECD12598, &qword_1DD889EA0);
  sub_1DD6E49A8(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD803FC8();
  sub_1DD6E1808();
  sub_1DD8269A4();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v6);
  sub_1DD826B3C();
  sub_1DD6E5924();
  sub_1DD875960();
  if (!v0)
  {
    v7 = type metadata accessor for InterpretedStatementResult(0);
    sub_1DD8257A8(v7);
    v9 = *(v8 + 2);
    v15 = *v8;
    v16 = *(v8 + 1);
    sub_1DD826FFC();
    sub_1DD70396C();

    sub_1DD825048();
    sub_1DD6E72A8();
    sub_1DD8759D0();

    sub_1DD6FE2B4(v1[6]);

    sub_1DD825048();
    sub_1DD6E72A8();
    sub_1DD8759D0();

    sub_1DD6FE2B4(v1[7]);

    sub_1DD825048();
    sub_1DD6E72A8();
    sub_1DD8759D0();

    sub_1DD82595C(v1[8]);
    sub_1DD824BDC();
    sub_1DD875920();
    v10 = v1[9];
    v11 = sub_1DD6FF738(5);
    type metadata accessor for StatementOutcome(v11);
    sub_1DD6DE08C();
    sub_1DD6E1E84(v12);
    sub_1DD6E63A8();
    sub_1DD8759D0();
  }

  v13 = sub_1DD6EFFB4();
  v14(v13);
  sub_1DD825790();
  sub_1DD826CF4();
}

void InterpretedStatementResult.init(from:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = type metadata accessor for StatementOutcome(0);
  v5 = sub_1DD6DE1C4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E535C();
  v8 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6E7258();
  v12 = sub_1DD710A9C(&qword_1ECD125A8, &qword_1DD889EA8);
  sub_1DD6DDEAC(v12);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6E17C8();
  v39 = type metadata accessor for InterpretedStatementResult(0);
  v16 = sub_1DD6DE1C4(v39);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD824734();
  sub_1DD874820();
  v19 = v1;
  sub_1DD825300();
  sub_1DD6E5E68(v20, v21, v22, v23);
  v24 = *(v3 + 24);
  v25 = *(v3 + 32);
  v26 = sub_1DD826F54();
  sub_1DD824D14(v26);
  sub_1DD803FC8();
  sub_1DD826F60();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1874();
    sub_1DD6E1EC8(v40);
    sub_1DD824154(v19, &qword_1ECD0E540);
    if (v3)
    {
      v28 = *(v19 + v39[7] + 16);
    }
  }

  else
  {
    LOBYTE(v41) = 0;
    sub_1DD6E14DC();
    sub_1DD6E1E84(v27);
    sub_1DD825A9C();
    sub_1DD826348();
    sub_1DD875860();
    sub_1DD8256EC();
    sub_1DD807414();
    sub_1DD6FF8F4();
    sub_1DD705D68();
    sub_1DD6E40F8();
    sub_1DD8257E0();
    sub_1DD8758D0();
    v29 = v19 + v39[5];
    sub_1DD700E1C(v41);
    sub_1DD6EFF88();
    sub_1DD6E40F8();
    sub_1DD8257E0();
    sub_1DD8758D0();
    v30 = v19 + v39[6];
    sub_1DD700E1C(v41);
    sub_1DD7928CC();
    sub_1DD6E40F8();
    sub_1DD8257E0();
    sub_1DD8758D0();
    v31 = v19 + v39[7];
    sub_1DD700E1C(v41);
    sub_1DD826730(4);
    v32 = sub_1DD875820();
    v33 = (v19 + v39[8]);
    *v33 = v32;
    v33[1] = v34;
    sub_1DD6DE08C();
    sub_1DD6E1E84(v35);
    sub_1DD825A9C();
    sub_1DD8257E0();
    sub_1DD8758D0();
    v36 = sub_1DD825B2C();
    v37(v36);
    v38 = v39[9];
    sub_1DD6E0B14();
    sub_1DD6E59B8();
    sub_1DD700948();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v40);
    sub_1DD6E5ABC();
  }

  sub_1DD826464();
  sub_1DD6E0C78();
}

void static ActionSuccess.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v4 = v3;
  v6 = v5;
  v196 = type metadata accessor for ActionSuccess.FollowUpAction(0);
  v7 = sub_1DD6DE1C4(v196);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD702A64();
  v10 = sub_1DD710A9C(&qword_1ECD125B0, &qword_1DD889EB0);
  sub_1DD6DEA10(v10);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD824948(v14, v191);
  v15 = sub_1DD710A9C(&qword_1ECD125B8, &qword_1DD889EB8);
  sub_1DD6DE1C4(v15);
  v17 = *(v16 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DE340();
  v19 = type metadata accessor for ActionSuccess.UndoContext(0);
  v20 = sub_1DD6DE1C4(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD8247F4();
  v23 = sub_1DD710A9C(&qword_1ECD125C0, &qword_1DD889EC0);
  sub_1DD6DEA10(v23);
  v25 = *(v24 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD82660C();
  v27 = sub_1DD710A9C(&qword_1ECD125C8, &qword_1DD889EC8);
  sub_1DD6DE1C4(v27);
  v29 = *(v28 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD6F0A58();
  sub_1DD6E60FC();
  if ((_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    goto LABEL_32;
  }

  v192 = v1;
  v31 = type metadata accessor for ActionSuccess(0);
  v198 = v4;
  v32 = *(v31 + 20);
  v33 = v6;
  v34 = *(v27 + 48);
  v193 = v31;
  v194 = v33;
  sub_1DD8257D4();
  sub_1DD700E60();
  v35 = v4;
  sub_1DD827158();
  sub_1DD6DE1FC(v2, 1, v19);
  if (!v36)
  {
    sub_1DD700E60();
    sub_1DD6DE1FC(v2 + v34, 1, v19);
    if (!v36)
    {
      sub_1DD6E59B8();
      sub_1DD703A24();
      v38 = _s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0();
      if (v38)
      {
        sub_1DD826E04(*(v19 + 20));
        v41 = v36 && v39 == v40;
        if (v41 || (sub_1DD875A30() & 1) != 0)
        {
          sub_1DD826E04(*(v19 + 24));
          v44 = v36 && v42 == v43;
          if (v44 || (sub_1DD875A30() & 1) != 0)
          {
            sub_1DD8261FC();
            sub_1DD6E5ABC();
            sub_1DD6ED118();
            sub_1DD6E5ABC();
            goto LABEL_23;
          }
        }
      }

      sub_1DD8261FC();
      sub_1DD6E5ABC();
      sub_1DD6ED118();
      sub_1DD6E5ABC();
      v37 = &qword_1ECD125C0;
LABEL_30:
      v49 = v2;
LABEL_31:
      sub_1DD824154(v49, v37);
      goto LABEL_32;
    }

    sub_1DD6E5ABC();
LABEL_10:
    v37 = &qword_1ECD125C8;
    goto LABEL_30;
  }

  sub_1DD6DE1FC(v2 + v34, 1, v19);
  if (!v36)
  {
    goto LABEL_10;
  }

LABEL_23:
  sub_1DD824154(v2, &qword_1ECD125C0);
  v46 = v193;
  v45 = v194;
  if (*(v194 + v193[6]) != *(v4 + v193[6]))
  {
    goto LABEL_32;
  }

  v47 = v193[7];
  v48 = *(v15 + 48);
  sub_1DD82557C();
  sub_1DD700E60();
  sub_1DD82557C();
  sub_1DD700E60();
  sub_1DD6DE1FC(v0, 1, v196);
  if (v36)
  {
    sub_1DD6DE1FC(v0 + v48, 1, v196);
    if (v36)
    {
      sub_1DD824154(v0, &qword_1ECD125B0);
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  sub_1DD700E60();
  sub_1DD6DE1FC(v0 + v48, 1, v196);
  if (v50)
  {
    sub_1DD8259F8();
    sub_1DD6E5ABC();
LABEL_36:
    v37 = &qword_1ECD125B8;
    v49 = v0;
    goto LABEL_31;
  }

  sub_1DD6E3A2C();
  sub_1DD6E59B8();
  v51 = sub_1DD6E0C60();
  static ActionSuccess.FollowUpAction.ExecutableAction.== infix(_:_:)(v51, v52, v53, v54, v55, v56, v57, v58, v192, v193, v194, v195, v196, v198, v199, v200, v201, v202);
  v60 = v59;
  sub_1DD6E5ABC();
  sub_1DD770D4C();
  sub_1DD6E5ABC();
  sub_1DD824154(v0, &qword_1ECD125B0);
  if ((v60 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_38:
  if (*(v45 + v46[8]) != *(v35 + v46[8]))
  {
    goto LABEL_32;
  }

  v61 = v46[9];
  v62 = *(v35 + v61 + 8);
  if (*(v45 + v61 + 8))
  {
    if (!v62)
    {
      goto LABEL_32;
    }

    sub_1DD824D88((v45 + v61));
    v65 = v36 && v63 == v64;
    if (!v65 && (sub_1DD875A30() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v62)
  {
    goto LABEL_32;
  }

  v66 = v46[10];
  v67 = v45 + v66;
  v69 = *(v45 + v66);
  v68 = *(v45 + v66 + 8);
  v71 = *(v45 + v66 + 16);
  v70 = *(v67 + 24);
  v72 = *(v67 + 32);
  v73 = (v35 + v66);
  v74 = *v73;
  v75 = v73[1];
  v76 = v73[2];
  v77 = v73[3];
  v78 = *(v73 + 32);
  if (v71 == 1)
  {
    v79 = sub_1DD6E0F70();
    sub_1DD703958(v79, v80, 1);
    if (v76 == 1)
    {
      v81 = sub_1DD825B90();
      sub_1DD703958(v81, v82, 1);
      v83 = sub_1DD6E0F70();
      sub_1DD70148C(v83, v84, 1);
      goto LABEL_56;
    }

    sub_1DD825B90();
    sub_1DD826C30();
    sub_1DD703958(v93, v94, v95);
    goto LABEL_54;
  }

  v204[0] = v69;
  v204[1] = v68;
  v204[2] = v71;
  v204[3] = v70;
  v205 = v72;
  if (v76 == 1)
  {
    v85 = sub_1DD6F3544();
    sub_1DD703958(v85, v86, v87);
    v88 = sub_1DD825B90();
    sub_1DD703958(v88, v89, 1);
    v90 = sub_1DD6F3544();
    sub_1DD703958(v90, v91, v92);

LABEL_54:
    v96 = sub_1DD6F3544();
    sub_1DD70148C(v96, v97, v98);
    sub_1DD825B90();
    sub_1DD826C30();
    sub_1DD70148C(v99, v100, v101);
    goto LABEL_32;
  }

  LODWORD(v199) = v74;
  v200 = v75;
  v201 = v76;
  v202 = v77;
  v203 = v78 & 1;
  v197 = static AncestorID.== infix(_:_:)(v204, &v199);
  v102 = sub_1DD6F3544();
  sub_1DD703958(v102, v103, v104);
  sub_1DD825B90();
  sub_1DD826C30();
  sub_1DD703958(v105, v106, v107);
  v108 = sub_1DD6F3544();
  sub_1DD703958(v108, v109, v110);

  v111 = sub_1DD6F3544();
  sub_1DD70148C(v111, v112, v113);
  if (v197)
  {
LABEL_56:
    v114 = v193[11];
    v115 = v194 + v114;
    v117 = *(v194 + v114);
    v116 = *(v194 + v114 + 8);
    v118 = *(v194 + v114 + 16);
    v119 = (v198 + v114);
    v120 = v119[2];
    if (v118 == 1)
    {
      v121 = sub_1DD6E87AC();
      sub_1DD703958(v121, v122, 1);
      if (v120 == 1)
      {
        v123 = sub_1DD8258AC();
        v125 = sub_1DD700DE0(v123, v124, 1);
        sub_1DD70148C(v125, v126, 1);
        goto LABEL_32;
      }

      v135 = sub_1DD701470();
      sub_1DD703958(v135, v136, v137);
      goto LABEL_62;
    }

    if (v120 == 1)
    {
      v127 = sub_1DD6F8CC0();
      sub_1DD703958(v127, v128, v129);
      v130 = sub_1DD8258AC();
      sub_1DD703958(v130, v131, 1);
      v132 = sub_1DD6F8CC0();
      sub_1DD703958(v132, v133, v134);

LABEL_62:
      v138 = sub_1DD6F8CC0();
      sub_1DD70148C(v138, v139, v140);
      v141 = sub_1DD701470();
LABEL_75:
      sub_1DD70148C(v141, v142, v143);
      goto LABEL_32;
    }

    if (v117 == *v119)
    {
      if (!v118)
      {
        v171 = sub_1DD6E87AC();
        sub_1DD703958(v171, v172, 0);
        v162 = 0;
        if (!v120)
        {
          v173 = sub_1DD8258AC();
          v175 = sub_1DD700DE0(v173, v174, 0);
          sub_1DD703958(v175, v176, 0);
          v177 = sub_1DD8258AC();
          v179 = 0;
          goto LABEL_79;
        }

LABEL_73:
        v163 = sub_1DD701470();
        v166 = sub_1DD700DE0(v163, v164, v165);
        sub_1DD703958(v166, v167, v162);
        v168 = sub_1DD701470();
        sub_1DD70148C(v168, v169, v170);
        goto LABEL_74;
      }

      if (v120)
      {
        if (v116 != v119[1] || v118 != v120)
        {
          v145 = *(v115 + 8);
          sub_1DD6E65D0();
          v146 = sub_1DD875A30();
          v147 = sub_1DD6F8CC0();
          sub_1DD703958(v147, v148, v149);
          v150 = sub_1DD701470();
          sub_1DD703958(v150, v151, v152);
          v153 = sub_1DD6F8CC0();
          sub_1DD703958(v153, v154, v155);
          v156 = sub_1DD701470();
          sub_1DD70148C(v156, v157, v158);
          if (v146)
          {
            goto LABEL_80;
          }

LABEL_74:

          v141 = sub_1DD6F8CC0();
          goto LABEL_75;
        }

        v180 = sub_1DD6F8CC0();
        sub_1DD703958(v180, v181, v182);
        v183 = sub_1DD6DDEFC();
        sub_1DD703958(v183, v184, v118);
        v185 = sub_1DD6F8CC0();
        sub_1DD703958(v185, v186, v187);
        v177 = sub_1DD6DDEFC();
        v179 = v118;
LABEL_79:
        sub_1DD70148C(v177, v178, v179);
LABEL_80:

        v188 = sub_1DD6F8CC0();
        sub_1DD70148C(v188, v189, v190);
        goto LABEL_32;
      }
    }

    v159 = sub_1DD6F8CC0();
    sub_1DD703958(v159, v160, v161);
    v162 = v118;
    goto LABEL_73;
  }

LABEL_32:
  sub_1DD6DFED0();
}

uint64_t sub_1DD7D61E4(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:
  v8 = sub_1DD6DDEFC();

  return v9(v8);
}

BOOL static ParameterNotAllowed.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1DD6E1FC0(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for ParameterNotAllowed(0);
  sub_1DD6F4D70(v5);
  if ((_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  sub_1DD826CC0(*(v5 + 24));
  return v4;
}

uint64_t static ParameterCandidatesNotFound.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1DD6E1FC0(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for ParameterCandidatesNotFound(0);
  sub_1DD6F4D70(v5);

  return _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
}

BOOL static ActionRequirement.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v93 = *a1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 40);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = v12 & 0x30;
  switch((v6 >> 4) & 3)
  {
    case 1u:
      if (v13 != 16)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    case 2u:
      if (v13 != 32)
      {
        goto LABEL_15;
      }

LABEL_14:
      sub_1DD826348();
      sub_1DD8003E4(v30, v31, v32, v33, v34, v35);
      v36 = sub_1DD824FC4();
      sub_1DD8003E4(v36, v37, v38, v39, v11, v12);
      v29 = v8 == v93;
      break;
    case 3u:
      v20 = v13 == 48 && (v7 | v8 | v10 | v9 | v11) == 0;
      if (!v20 || v12 != 48)
      {
        goto LABEL_15;
      }

      sub_1DD826348();
      sub_1DD8003E4(v21, v22, v23, v24, v25, v26);
      v27 = sub_1DD6F09E0();
      sub_1DD8003E4(v27, v28, 0, v9, v11, 0x30u);
      v29 = 1;
      break;
    default:
      if ((v12 & 0x30) != 0)
      {
        sub_1DD826348();
        sub_1DD80402C(v14, v15, v16, v17, v18, v19);
LABEL_15:
        v92 = v9;
        v40 = sub_1DD824FC4();
        v42 = v41;
        v44 = v43;
        sub_1DD80401C(v40, v45, v46, v47, v11, v12);
        sub_1DD826348();
        sub_1DD8003E4(v48, v49, v50, v51, v42, v44);
        v52 = sub_1DD6DEA04();
        sub_1DD8003E4(v52, v53, v10, v92, v11, v12);
        v29 = 0;
      }

      else
      {
        v96[0] = *a1;
        v96[1] = v2;
        v96[2] = v3;
        v96[3] = v4;
        v96[4] = v5;
        v97 = v6;
        v94[0] = v8;
        v94[1] = v7;
        v94[2] = v10;
        v94[3] = v9;
        v94[4] = v11;
        v95 = v12;
        v55 = sub_1DD824FC4();
        v91 = v56;
        v90 = v57;
        sub_1DD80401C(v55, v58, v59, v60, v11, v12);
        sub_1DD6F4498();
        sub_1DD826348();
        sub_1DD80401C(v61, v62, v63, v64, v91, v90);
        sub_1DD6F4498();
        sub_1DD826348();
        sub_1DD80401C(v65, v66, v67, v68, v91, v90);
        v69 = sub_1DD824FC4();
        sub_1DD80401C(v69, v70, v71, v72, v11, v12);
        v73 = v11;
        v29 = static SystemRequirement.== infix(_:_:)(v96, v94);
        sub_1DD826348();
        sub_1DD8003E4(v74, v75, v76, v77, v91, v90);
        v78 = sub_1DD824FC4();
        sub_1DD8003E4(v78, v79, v80, v81, v73, v12);
        v82 = sub_1DD824FC4();
        sub_1DD8003E4(v82, v83, v84, v85, v73, v12);
        sub_1DD826348();
        sub_1DD8003E4(v86, v87, v88, v89, v91, v90);
      }

      break;
  }

  return v29;
}

void static ValueDisambiguation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DD7162FC();
}

uint64_t static ActionFailure.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v115 = *(a1 + 48);
  v117 = *(a1 + 56);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v113 = *(a2 + 48);
  v111 = *(a2 + 56);
  v107 = *(a1 + 64);
  v109 = *(a2 + 64);
  v9 = *(a1 + 40);
  v10 = *(a2 + 40);
  v120 = *(a1 + 8);
  v121 = *a1;
  v125 = *(a1 + 32);
  LOBYTE(v126) = v9;
  LOBYTE(v123) = v10;
  sub_1DD702AB4();
  sub_1DD804044(v11, v12, v13, v14, v15, v9);
  sub_1DD7029A8();
  sub_1DD6FF6A4();
  sub_1DD804044(v16, v17, v18, v19, v8, v10);
  static ActionFailure.Failure.== infix(_:_:)(&v124, &v122, v20, v21, v22, v23, v24, v25, v107, v109, v111, v113, v115, v117, v125, v120, v121, v4, v5, v6, v7, v8, v123, v121, v120, v2, v3, v125, v126, v127, v128, v129, v130, v131);
  v27 = v26;
  sub_1DD7029A8();
  sub_1DD6FF6A4();
  sub_1DD8040A4(v28, v29, v30, v31, v8, v10);
  sub_1DD702AB4();
  sub_1DD8040A4(v32, v33, v34, v35, v119, v9);
  if ((v27 & 1) == 0)
  {
    return 0;
  }

  if (v108 != 1)
  {
    if (v110 == 1)
    {
      v43 = sub_1DD6F8CC0();
      sub_1DD703958(v43, v44, v45);
      v46 = sub_1DD6EFF74();
      sub_1DD703958(v46, v47, 1);
      v48 = sub_1DD6F8CC0();
      sub_1DD703958(v48, v49, v50);

LABEL_8:
      v54 = sub_1DD6F8CC0();
      sub_1DD70148C(v54, v55, v56);
      v57 = sub_1DD6E6218();
LABEL_21:
      sub_1DD70148C(v57, v58, v59);
      return 0;
    }

    if (v116 == v114)
    {
      if (!v108)
      {
        v87 = sub_1DD6E87AC();
        sub_1DD703958(v87, v88, 0);
        v77 = 0;
        if (!v110)
        {
          v89 = sub_1DD6EFF74();
          v91 = sub_1DD700DE0(v89, v90, 0);
          sub_1DD703958(v91, v92, 0);
          v93 = sub_1DD6EFF74();
          v95 = 0;
          goto LABEL_27;
        }

LABEL_19:
        v78 = sub_1DD6E6218();
        v81 = sub_1DD700DE0(v78, v79, v80);
        sub_1DD703958(v81, v82, v77);
        v83 = sub_1DD6E6218();
        sub_1DD70148C(v83, v84, v85);
        goto LABEL_20;
      }

      if (v110)
      {
        if (v118 != v112 || v108 != v110)
        {
          sub_1DD705564();
          sub_1DD827050();
          v61 = sub_1DD875A30();
          v62 = sub_1DD6F8CC0();
          sub_1DD703958(v62, v63, v64);
          v65 = sub_1DD6E6218();
          sub_1DD703958(v65, v66, v67);
          v68 = sub_1DD6F8CC0();
          sub_1DD703958(v68, v69, v70);
          v71 = sub_1DD6E6218();
          sub_1DD70148C(v71, v72, v73);
          if (v61)
          {
            goto LABEL_28;
          }

LABEL_20:

          v57 = sub_1DD6F8CC0();
          goto LABEL_21;
        }

        v96 = sub_1DD6F8CC0();
        sub_1DD703958(v96, v97, v98);
        v99 = sub_1DD6F4498();
        sub_1DD703958(v99, v100, v108);
        v101 = sub_1DD6F8CC0();
        sub_1DD703958(v101, v102, v103);
        v93 = sub_1DD6F4498();
        v95 = v108;
LABEL_27:
        sub_1DD70148C(v93, v94, v95);
LABEL_28:

        v104 = sub_1DD6F8CC0();
        sub_1DD70148C(v104, v105, v106);
        return 1;
      }
    }

    v74 = sub_1DD6F8CC0();
    sub_1DD703958(v74, v75, v76);
    v77 = v108;
    goto LABEL_19;
  }

  v36 = sub_1DD6E87AC();
  sub_1DD703958(v36, v37, 1);
  if (v110 != 1)
  {
    v51 = sub_1DD6E6218();
    sub_1DD703958(v51, v52, v53);
    goto LABEL_8;
  }

  v38 = 1;
  v39 = sub_1DD6EFF74();
  v41 = sub_1DD700DE0(v39, v40, 1);
  sub_1DD70148C(v41, v42, 1);
  return v38;
}

uint64_t sub_1DD7D68DC(uint64_t a1)
{
  v2 = sub_1DD80459C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6918(uint64_t a1)
{
  v2 = sub_1DD80459C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D6954(uint64_t a1)
{
  v2 = sub_1DD8042A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6990(uint64_t a1)
{
  v2 = sub_1DD8042A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D69CC(uint64_t a1)
{
  v2 = sub_1DD804104();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6A08(uint64_t a1)
{
  v2 = sub_1DD804104();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D6A44(uint64_t a1)
{
  v2 = sub_1DD804158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6A80(uint64_t a1)
{
  v2 = sub_1DD804158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D6ABC(uint64_t a1)
{
  v2 = sub_1DD804350();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6AF8(uint64_t a1)
{
  v2 = sub_1DD804350();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D6B34(uint64_t a1)
{
  v2 = sub_1DD80444C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6B70(uint64_t a1)
{
  v2 = sub_1DD80444C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D6BAC(uint64_t a1)
{
  v2 = sub_1DD8043F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6BE8(uint64_t a1)
{
  v2 = sub_1DD8043F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D6C24(uint64_t a1)
{
  v2 = sub_1DD8044A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6C60(uint64_t a1)
{
  v2 = sub_1DD8044A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D6C9C(uint64_t a1)
{
  v2 = sub_1DD8043A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6CD8(uint64_t a1)
{
  v2 = sub_1DD8043A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D6D14(uint64_t a1)
{
  v2 = sub_1DD8045F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6D50(uint64_t a1)
{
  v2 = sub_1DD8045F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D6D8C(uint64_t a1)
{
  v2 = sub_1DD804644();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6DC8(uint64_t a1)
{
  v2 = sub_1DD804644();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D6E04(uint64_t a1)
{
  v2 = sub_1DD8044F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6E40(uint64_t a1)
{
  v2 = sub_1DD8044F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D6E7C(uint64_t a1)
{
  v2 = sub_1DD804200();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6EB8(uint64_t a1)
{
  v2 = sub_1DD804200();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionOutcome.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v23;
  a20 = v24;
  sub_1DD8272E8();
  v25 = sub_1DD710A9C(&qword_1ECD125D0, &qword_1DD889ED0);
  sub_1DD6DF3FC(v25, &a16);
  v205[1] = v26;
  v28 = *(v27 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD8247DC(v30, v189);
  v31 = sub_1DD710A9C(&qword_1ECD125D8, &qword_1DD889ED8);
  sub_1DD6DF3FC(v31, &a13);
  v203 = v32;
  v34 = *(v33 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD824AFC(v36, v190);
  v37 = sub_1DD710A9C(&qword_1ECD125E0, &qword_1DD889EE0);
  sub_1DD6DF3FC(v37, &a11);
  v201 = v38;
  v40 = *(v39 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1DD825454(v42, v191);
  v43 = sub_1DD710A9C(&qword_1ECD125E8, &qword_1DD889EE8);
  sub_1DD6DF3FC(v43, &v213[8]);
  v197 = v44;
  v46 = *(v45 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1DD6E0C6C();
  v49 = sub_1DD6ED230(v48);
  v50 = type metadata accessor for ParameterCandidatesNotFound(v49);
  v51 = sub_1DD6DEDE0(v50, &v213[4]);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v54);
  v55 = sub_1DD710A9C(&qword_1ECD125F0, &qword_1DD889EF0);
  sub_1DD6DF3FC(v55, &v213[3]);
  v57 = *(v56 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v58);
  sub_1DD6E0C6C();
  v60 = sub_1DD6ED230(v59);
  v61 = type metadata accessor for ParameterNotAllowed(v60);
  v62 = sub_1DD6DEDE0(v61, &v211[64]);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v65);
  v66 = sub_1DD710A9C(&qword_1ECD125F8, &qword_1DD889EF8);
  sub_1DD6DF3FC(v66, &v212);
  v68 = *(v67 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v69);
  sub_1DD8253E0(v70, v192);
  v71 = sub_1DD710A9C(&qword_1ECD12600, &qword_1DD889F00);
  sub_1DD6DF3FC(v71, &v211[40]);
  v73 = *(v72 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v74);
  sub_1DD6E0C6C();
  v76 = sub_1DD6ED230(v75);
  v77 = type metadata accessor for ParameterConfirmation(v76);
  v78 = sub_1DD6DEDE0(v77, &v211[8]);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v81);
  v82 = sub_1DD710A9C(&qword_1ECD12608, &qword_1DD889F08);
  sub_1DD6DF3FC(v82, v211);
  v84 = *(v83 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v85);
  sub_1DD6E0C6C();
  v87 = sub_1DD6ED230(v86);
  v88 = type metadata accessor for ParameterNeedsValue(v87);
  v89 = sub_1DD6DEDE0(v88, &v207);
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v92);
  v93 = sub_1DD710A9C(&qword_1ECD12610, &qword_1DD889F10);
  sub_1DD6DF3FC(v93, &v206);
  v95 = *(v94 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v96);
  sub_1DD8253C8(v97, v193);
  v98 = sub_1DD710A9C(&qword_1ECD12618, &qword_1DD889F18);
  sub_1DD6DF3FC(v98, v205);
  v100 = *(v99 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v101);
  sub_1DD8254B0(v102, v194);
  v103 = sub_1DD710A9C(&qword_1ECD12620, &qword_1DD889F20);
  sub_1DD6DF3FC(v103, &v201);
  v105 = *(v104 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v106);
  sub_1DD6E0C6C();
  v108 = sub_1DD6ED230(v107);
  v109 = type metadata accessor for SnippetStream(v108);
  v110 = sub_1DD6DEDE0(v109, &v197);
  v112 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v110);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v113);
  v114 = sub_1DD710A9C(&qword_1ECD12628, &qword_1DD889F28);
  sub_1DD6DF3FC(v114, &v196);
  v116 = *(v115 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v117);
  sub_1DD6E17C8();
  v118 = type metadata accessor for ActionSuccess(0);
  v119 = sub_1DD6DE1C4(v118);
  v121 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v119);
  sub_1DD6E6200();
  v122 = type metadata accessor for ActionOutcome(0);
  v123 = sub_1DD8247B4(v122);
  v125 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v123);
  sub_1DD8247F4();
  v126 = sub_1DD710A9C(&qword_1ECD12630, &qword_1DD889F30);
  v209 = sub_1DD6DDEAC(v126);
  v210 = v127;
  v129 = *(v128 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v130);
  sub_1DD6DDFE4();
  v131 = v20[3];
  v132 = v20[4];
  sub_1DD824D14(v20);
  sub_1DD804104();
  v208 = v21;
  sub_1DD77E6F4();
  sub_1DD8268F0();
  sub_1DD875BB0();
  sub_1DD6E2208();
  sub_1DD827328();
  sub_1DD6E5870();
  sub_1DD825998();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6E5B50(&v198);
      sub_1DD826920();
      sub_1DD8045F0();
      sub_1DD6E1828(&v199);
      sub_1DD6E70E4();
      sub_1DD6E1E84(v170);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v201);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v171 = sub_1DD6FC4B0(&v200);
      v172(v171);
      goto LABEL_15;
    case 2u:
      sub_1DD826790();
      sub_1DD80459C();
      sub_1DD6E1828(&v202);
      sub_1DD826D08();
      sub_1DD6E374C(v205);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v156 = sub_1DD6FC4B0(&v203);
      v157(v156);
      v158 = sub_1DD6DE58C();
      v159(v158);
      sub_1DD80043C(v213);
      goto LABEL_17;
    case 3u:
      v161 = *v22;
      v160 = v22[1];
      v162 = v22[2];
      sub_1DD826AA0();
      sub_1DD8044F4();
      sub_1DD825CA4(&v204);
      sub_1DD6FF7A8();
      sub_1DD82708C();
      v213[0] = v161;
      v213[1] = v160;
      v213[2] = v162;
      sub_1DD804548();
      sub_1DD6E374C(&v206);
      sub_1DD826A40();
      v163 = sub_1DD8249F4();
      v164(v163);
      v165 = sub_1DD824838();
      v166(v165);

      goto LABEL_13;
    case 4u:
      sub_1DD6E5B50(&v208);
      sub_1DD827560();
      sub_1DD8044A0();
      sub_1DD6E1828(&v209);
      sub_1DD6DEC60();
      sub_1DD6E1E84(v142);
      sub_1DD6FAD44();
      sub_1DD6E374C(v211);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v143 = sub_1DD6FC4B0(&v210);
      v144(v143);
      goto LABEL_15;
    case 5u:
      sub_1DD6E5B50(&v211[16]);
      sub_1DD827554();
      sub_1DD80444C();
      sub_1DD6E1828(&v211[24]);
      sub_1DD6E0FE0();
      sub_1DD6E1E84(v173);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v211[40]);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v174 = sub_1DD6FC4B0(&v211[32]);
      v175(v174);
      goto LABEL_15;
    case 6u:
      sub_1DD6FF108();
      sub_1DD8043F8();
      sub_1DD6E1828(&v211[48]);
      sub_1DD827798();
      sub_1DD6E374C(&v212);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v176 = sub_1DD6FC4B0(&v211[56]);
      v177(v176);
      v178 = sub_1DD6DE58C();
      v179(v178);
      sub_1DD80040C(v213);
      goto LABEL_17;
    case 7u:
      sub_1DD6E5B50(v213);
      sub_1DD700930();
      sub_1DD8043A4();
      sub_1DD6E1828(&v213[1]);
      sub_1DD824904();
      sub_1DD6E1E84(v167);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v213[3]);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v168 = sub_1DD6FC4B0(&v213[2]);
      v169(v168);
      goto LABEL_15;
    case 8u:
      sub_1DD6E5B50(&v213[5]);
      sub_1DD827348();
      sub_1DD804350();
      sub_1DD6E1828(&v213[6]);
      sub_1DD8248EC();
      sub_1DD6E1E84(v186);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v213[8]);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v187 = sub_1DD6FC4B0(&v213[7]);
      v188(v187);
LABEL_15:
      sub_1DD6E5ABC();
      v136 = sub_1DD6DE58C();
      goto LABEL_16;
    case 9u:
      sub_1DD8267B4();
      sub_1DD8042A8();
      sub_1DD8256D4(&v214);
      sub_1DD6E9938();
      sub_1DD827830();
      sub_1DD8266A8();
      v145 = v202;
      sub_1DD8256BC();
      sub_1DD8759D0();
      v146 = sub_1DD702E84(&a10);
      v147(v146, v145);
      v148 = *(v210 + 8);
      v149 = sub_1DD6E6378();
      v150(v149);
      sub_1DD827328();
      sub_1DD82731C();
      sub_1DD8267F0();
      sub_1DD8003E4(v151, v152, v153, v154, v155, v118);
      goto LABEL_17;
    case 0xAu:
      v180 = *v22;
      sub_1DD827354();
      sub_1DD804200();
      sub_1DD8272FC();
      sub_1DD6F9BEC(v181);
      sub_1DD6F3128();
      sub_1DD826AAC();
      v213[0] = v180;
      sub_1DD804254();
      sub_1DD8255D0(&a13);
      sub_1DD8759D0();
      v182 = sub_1DD6DF174(&a12);
      v183(v182);
      v184 = sub_1DD824A60();
      v185(v184);
LABEL_13:

      goto LABEL_17;
    case 0xBu:
      memcpy(v213, v22, sizeof(v213));
      v211[0] = 11;
      sub_1DD804158();
      sub_1DD6E1828(&a14);
      memcpy(v211, v213, sizeof(v211));
      sub_1DD8041AC();
      sub_1DD6E374C(&a16);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v138 = sub_1DD6FC4B0(&a15);
      v139(v138);
      v140 = sub_1DD6DE58C();
      v141(v140);
      sub_1DD8003B4(v213);
      goto LABEL_17;
    default:
      sub_1DD6E6378();
      sub_1DD6E59B8();
      LOBYTE(v213[0]) = 0;
      sub_1DD804644();
      sub_1DD6F3128();
      sub_1DD826AAC();
      sub_1DD6E41D4();
      sub_1DD6E1E84(v133);
      sub_1DD6FAC4C(&v196);
      sub_1DD827280();
      sub_1DD6DEDD4(&v195);
      v134 = sub_1DD825C04();
      v135(v134);
      sub_1DD6FADF0();
      sub_1DD6E5ABC();
      v136 = sub_1DD824A60();
LABEL_16:
      v137(v136);
LABEL_17:
      sub_1DD825AC0();
      sub_1DD6E0C78();
      return;
  }
}

void ActionOutcome.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v26;
  a20 = v27;
  sub_1DD7038A0();
  v225 = v28;
  v29 = sub_1DD710A9C(&qword_1ECD126D8, &qword_1DD889F38);
  sub_1DD6DF3FC(v29, &a11);
  v215 = v30;
  v32 = *(v31 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD825428(v34, v204);
  v35 = sub_1DD710A9C(&qword_1ECD126E0, &qword_1DD889F40);
  sub_1DD6DF3FC(v35, &a10);
  v224 = v36;
  v38 = *(v37 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD824B94(v40, v205);
  v41 = sub_1DD710A9C(&qword_1ECD126E8, &qword_1DD889F48);
  sub_1DD6DF3FC(v41, &v237);
  v43 = *(v42 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1DD6E0C6C();
  sub_1DD826F24(v45);
  v46 = sub_1DD710A9C(&qword_1ECD126F0, &qword_1DD889F50);
  sub_1DD6DF3FC(v46, &v236);
  v48 = *(v47 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1DD825410(v50, v206);
  v51 = sub_1DD710A9C(&qword_1ECD126F8, &qword_1DD889F58);
  sub_1DD6DF3FC(v51, &v235[24]);
  v53 = *(v52 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v54);
  sub_1DD8249DC(v55, v207);
  v56 = sub_1DD710A9C(&qword_1ECD12700, &qword_1DD889F60);
  sub_1DD6DF3FC(v56, &v235[16]);
  v58 = *(v57 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1DD825480(v60, v208);
  v61 = sub_1DD710A9C(&qword_1ECD12708, &qword_1DD889F68);
  sub_1DD6DF3FC(v61, &v235[8]);
  v63 = *(v62 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v64);
  sub_1DD705DF0(v65, v209);
  v66 = sub_1DD710A9C(&qword_1ECD12710, &qword_1DD889F70);
  sub_1DD6DF3FC(v66, &v234.n128_i64[1]);
  v68 = *(v67 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v69);
  sub_1DD824934(v70, v210);
  v71 = sub_1DD710A9C(&qword_1ECD12718, &qword_1DD889F78);
  sub_1DD6DF3FC(v71, &v234);
  v73 = *(v72 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v74);
  sub_1DD824CB0(v75, v211);
  v76 = sub_1DD710A9C(&qword_1ECD12720, &qword_1DD889F80);
  sub_1DD6DF3FC(v76, &v233.n128_i64[1]);
  v78 = *(v77 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v79);
  sub_1DD8247DC(v80, v212);
  v81 = sub_1DD710A9C(&qword_1ECD12728, &qword_1DD889F88);
  sub_1DD6DF3FC(v81, &v233);
  v83 = *(v82 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v84);
  sub_1DD824FB0(v85);
  v86 = sub_1DD710A9C(&qword_1ECD12730, &qword_1DD889F90);
  sub_1DD6DF3FC(v86, &v231);
  v88 = *(v87 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v89);
  sub_1DD825498(v90, v213);
  v231 = sub_1DD710A9C(&qword_1ECD12738, &qword_1DD889F98);
  sub_1DD6DDEAC(v231);
  v226 = v91;
  v93 = *(v92 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v94);
  v95 = sub_1DD700BA4();
  v230 = type metadata accessor for ActionOutcome(v95);
  v96 = sub_1DD6DE1C4(v230);
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v96);
  sub_1DD6DE21C();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v99);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v100);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v101);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v102);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v103);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v104);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v105);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v106);
  sub_1DD824970();
  MEMORY[0x1EEE9AC00](v107);
  sub_1DD825884();
  MEMORY[0x1EEE9AC00](v108);
  sub_1DD6F8C34();
  MEMORY[0x1EEE9AC00](v109);
  sub_1DD824CC4();
  MEMORY[0x1EEE9AC00](v110);
  sub_1DD6DEBEC();
  v111 = v20[3];
  v112 = v20[4];
  v232 = v20;
  sub_1DD70066C();
  sub_1DD804104();
  v229 = v24;
  sub_1DD6EF0F4();
  sub_1DD8270F4();
  if (!v21)
  {
    v113 = sub_1DD8262EC();
    sub_1DD6ED750(v113, 0);
    sub_1DD826908();
    if (!v114)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v121 == v122)
      {
        __break(1u);
        return;
      }

      v123 = *(v120 + v119);
      v124 = sub_1DD6E988C(v115, v116, v117, v118, v119);
      sub_1DD6ED830(v124);
      sub_1DD8276EC();
      v126 = v125;
      swift_unknownObjectRelease();
      if (v112 == v126 >> 1)
      {
        v127 = v224;
        switch(v123)
        {
          case 1:
            sub_1DD826920();
            sub_1DD8045F0();
            sub_1DD825CBC(&a13);
            sub_1DD82499C();
            sub_1DD875800();
            type metadata accessor for SnippetStream(0);
            sub_1DD825D04();
            sub_1DD6E70E4();
            sub_1DD6E1E84(v150);
            sub_1DD6F4500(&v217);
            sub_1DD826D30();
            sub_1DD825820();
            v181 = sub_1DD6FFA00(&v220);
            v182(v181, v25);
            v183 = sub_1DD824838();
            v184(v183);
            swift_storeEnumTagMultiPayload();
            sub_1DD6E5FF0();
            goto LABEL_39;
          case 2:
            sub_1DD826FF0();
            sub_1DD80459C();
            sub_1DD825CBC(&a14);
            sub_1DD8247C8();
            sub_1DD875800();
            sub_1DD803354();
            sub_1DD6E9938();
            sub_1DD827860();
            sub_1DD8248A0(&v232);
            swift_unknownObjectRelease();
            v164 = *v126;
            v165 = sub_1DD6E6378();
            v166(v165);
            v167 = sub_1DD825290();
            v168(v167);
            sub_1DD826888(&v215, v233, v234);
            MEMORY[0x20] = *v235;
            MEMORY[0x2A] = *&v235[10];
            sub_1DD825C04();
            goto LABEL_35;
          case 3:
            sub_1DD826AA0();
            sub_1DD8044F4();
            sub_1DD8247C8();
            sub_1DD875800();
            sub_1DD804794();
            sub_1DD824A28();
            sub_1DD825CB0();
            sub_1DD8758D0();
            sub_1DD6FF0D8();
            sub_1DD825820();
            v169 = sub_1DD6FAC78(&v221);
            v170(v169);
            v171 = sub_1DD8252F0();
            v172(v171);
            sub_1DD6FE2CC(v234.n128_u64[0], v233);
            goto LABEL_35;
          case 4:
            sub_1DD827560();
            sub_1DD8044A0();
            v23 = v231;
            sub_1DD8257E0();
            sub_1DD875800();
            type metadata accessor for ParameterNeedsValue(0);
            sub_1DD825D04();
            sub_1DD6DEC60();
            sub_1DD6E1E84(v152);
            sub_1DD6EFF94(&v227);
            sub_1DD825734();
            sub_1DD8758D0();
            if (v123)
            {
              swift_unknownObjectRelease();
              v129 = sub_1DD824890(&v222);
              v131 = v127;
              goto LABEL_28;
            }

            sub_1DD825820();
            v156 = sub_1DD824890(&v222);
            v157(v156, v127);
            v158 = sub_1DD825704();
            v159(v158, v23);
            swift_storeEnumTagMultiPayload();
            sub_1DD6E5FF0();
LABEL_36:
            sub_1DD827250();
            v199 = v232;
            goto LABEL_40;
          case 5:
            sub_1DD827554();
            sub_1DD80444C();
            sub_1DD825698(&a15);
            sub_1DD8247C8();
            sub_1DD875800();
            type metadata accessor for ParameterConfirmation(0);
            sub_1DD825D04();
            sub_1DD6E0FE0();
            sub_1DD6E1E84(v151);
            sub_1DD702944(&v228);
            sub_1DD824AC4();
            sub_1DD6DEB0C();
            sub_1DD8758D0();
            sub_1DD6FF0D8();
            sub_1DD825820();
            v185 = sub_1DD6FAC78(&v223);
            v186(v185);
            v187 = sub_1DD825A90();
            v188(v187, v231);
            sub_1DD826AD4();
            goto LABEL_38;
          case 6:
            v233.n128_u8[0] = 6;
            sub_1DD8043F8();
            sub_1DD825698(&a16);
            sub_1DD8247C8();
            sub_1DD875800();
            sub_1DD803300();
            sub_1DD824A28();
            sub_1DD825CB0();
            sub_1DD8758D0();
            sub_1DD8248A0(v235);
            swift_unknownObjectRelease();
            v189 = *v126;
            v190 = sub_1DD825674();
            v191(v190);
            v192 = sub_1DD825290();
            v193(v192);
            sub_1DD82641C();
            goto LABEL_35;
          case 7:
            sub_1DD700930();
            sub_1DD8043A4();
            sub_1DD825698(&a17);
            sub_1DD82499C();
            sub_1DD875800();
            type metadata accessor for ParameterNotAllowed(0);
            sub_1DD825D04();
            sub_1DD824904();
            sub_1DD6E1E84(v148);
            sub_1DD702944(&v229);
            sub_1DD825734();
            sub_1DD8758D0();
            if (v123)
            {
              swift_unknownObjectRelease();
              v149 = &v224;
              goto LABEL_31;
            }

            sub_1DD825820();
            v173 = sub_1DD6FFA00(&v224);
            v174(v173, v127);
            v175 = sub_1DD824838();
            v176(v175);
            sub_1DD826AD4();
            goto LABEL_38;
          case 8:
            sub_1DD827348();
            sub_1DD804350();
            sub_1DD825698(&a18);
            sub_1DD82499C();
            sub_1DD875800();
            type metadata accessor for ParameterCandidatesNotFound(0);
            sub_1DD825D04();
            sub_1DD8248EC();
            sub_1DD6E1E84(v153);
            sub_1DD702944(&v230);
            sub_1DD825734();
            sub_1DD8758D0();
            if (v123)
            {
              swift_unknownObjectRelease();
              v149 = &v225;
LABEL_31:
              v154 = sub_1DD6FFA00(v149);
              v155(v154, v127);
              v138 = sub_1DD824838();
              goto LABEL_11;
            }

            sub_1DD825820();
            v200 = sub_1DD6FFA00(&v225);
            v201(v200, v224);
            v202 = sub_1DD824838();
            v203(v202);
            sub_1DD826AD4();
LABEL_38:
            swift_storeEnumTagMultiPayload();
            sub_1DD6E5FF0();
            goto LABEL_39;
          case 9:
            v233.n128_u8[0] = 9;
            sub_1DD8042A8();
            sub_1DD8247C8();
            sub_1DD875800();
            sub_1DD804740();
            sub_1DD824A28();
            sub_1DD825CB0();
            sub_1DD8758D0();
            sub_1DD6FF0D8();
            sub_1DD825820();
            v160 = sub_1DD6FAC78(&v226);
            v161(v160);
            v162 = sub_1DD8252F0();
            v163(v162);
            sub_1DD8260E8();
            goto LABEL_35;
          case 10:
            sub_1DD827354();
            sub_1DD804200();
            sub_1DD6E3A54();
            sub_1DD8247C8();
            sub_1DD875800();
            sub_1DD8046EC();
            sub_1DD824A28();
            sub_1DD8265E4();
            sub_1DD8758D0();
            sub_1DD6FF0D8();
            sub_1DD825820();
            v194 = *(v224 + 8);
            v195 = sub_1DD6EFF74();
            v196(v195);
            v197 = sub_1DD8252F0();
            v198(v197);
            *v214 = v233.n128_u64[0];
            sub_1DD826850();
            swift_storeEnumTagMultiPayload();
            sub_1DD6E5FF0();
            goto LABEL_36;
          case 11:
            v233.n128_u8[0] = 11;
            sub_1DD804158();
            sub_1DD8247C8();
            sub_1DD875800();
            sub_1DD804698();
            sub_1DD824A28();
            sub_1DD825CB0();
            sub_1DD8758D0();
            sub_1DD8248A0(&a9);
            swift_unknownObjectRelease();
            v141 = *v126;
            v142 = sub_1DD825674();
            v143(v142);
            v144 = sub_1DD825290();
            v145(v144);
            v146 = sub_1DD82633C(&v218);
            memcpy(v146, v147, 0x48uLL);
            sub_1DD826850();
LABEL_35:
            swift_storeEnumTagMultiPayload();
            sub_1DD6E5FF0();
            goto LABEL_39;
          default:
            v233.n128_u8[0] = 0;
            sub_1DD804644();
            sub_1DD825CBC(&a12);
            v23 = v231;
            sub_1DD8257E0();
            sub_1DD875800();
            type metadata accessor for ActionSuccess(0);
            sub_1DD825D04();
            sub_1DD6E41D4();
            sub_1DD6E1E84(v128);
            sub_1DD825CA4(&v216);
            sub_1DD824AC4();
            sub_1DD8758D0();
            if (v123)
            {
              swift_unknownObjectRelease();
              v129 = sub_1DD6FA9F4(&v219);
              v131 = v22;
LABEL_28:
              v130(v129, v131);
              v138 = sub_1DD825704();
              goto LABEL_10;
            }

            swift_unknownObjectRelease();
            v177 = sub_1DD6FA9F4(&v219);
            v178(v177, v22);
            v179 = sub_1DD825704();
            v180(v179, v23);
            swift_storeEnumTagMultiPayload();
            sub_1DD6E5FF0();
LABEL_39:
            sub_1DD827250();
            v199 = v232;
LABEL_40:
            sub_1DD6E5FF0();
            sub_1DD8256C8();
            sub_1DD6E59B8();
            sub_1DD6E1EC8(v199);
            sub_1DD8273AC();
            break;
        }

        goto LABEL_13;
      }
    }

    sub_1DD875740();
    sub_1DD6E41BC();
    v132 = sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    sub_1DD827778(v132);
    sub_1DD6DF12C();
    v133 = *MEMORY[0x1E69E6AF8];
    sub_1DD824B14();
    v135 = *(v134 + 104);
    v136 = sub_1DD6FEB10();
    v137(v136);
    swift_willThrow();
    swift_unknownObjectRelease();
    v138 = sub_1DD6DEBBC();
LABEL_10:
    v140 = v23;
LABEL_11:
    v139(v138, v140);
  }

  sub_1DD6E1EC8(v232);
LABEL_13:
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7D91C0(uint64_t a1)
{
  v2 = sub_1DD804ADC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D91FC(uint64_t a1)
{
  v2 = sub_1DD804ADC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D9238(uint64_t a1)
{
  v2 = sub_1DD804890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D9274(uint64_t a1)
{
  v2 = sub_1DD804890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D92B0(uint64_t a1)
{
  v2 = sub_1DD702954();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D92EC(uint64_t a1)
{
  v2 = sub_1DD702954();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D9328(uint64_t a1)
{
  v2 = sub_1DD8047E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D9364(uint64_t a1)
{
  v2 = sub_1DD8047E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D93A0(uint64_t a1)
{
  v2 = sub_1DD8048E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D93DC(uint64_t a1)
{
  v2 = sub_1DD8048E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D9418(uint64_t a1)
{
  v2 = sub_1DD8049E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D9454(uint64_t a1)
{
  v2 = sub_1DD8049E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D9490(uint64_t a1)
{
  v2 = sub_1DD80498C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D94CC(uint64_t a1)
{
  v2 = sub_1DD80498C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D9508(uint64_t a1)
{
  v2 = sub_1DD804A34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D9544(uint64_t a1)
{
  v2 = sub_1DD804A34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D9580(uint64_t a1)
{
  v2 = sub_1DD804938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D95BC(uint64_t a1)
{
  v2 = sub_1DD804938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D95F8(uint64_t a1)
{
  v2 = sub_1DD804B30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D9634(uint64_t a1)
{
  v2 = sub_1DD804B30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D9670(uint64_t a1)
{
  v2 = sub_1DD702AC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D96AC(uint64_t a1)
{
  v2 = sub_1DD702AC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D96E8(uint64_t a1)
{
  v2 = sub_1DD804A88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D9724(uint64_t a1)
{
  v2 = sub_1DD804A88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D9760(uint64_t a1)
{
  v2 = sub_1DD80483C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D979C(uint64_t a1)
{
  v2 = sub_1DD80483C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StatementID.name.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t StatementID.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

unint64_t StatementID.description.getter()
{
  v1 = *v0;
  if (*(v0 + 2))
  {
    MEMORY[0x1E12B4C10](*(v0 + 1));
  }

  sub_1DD8756B0();

  sub_1DD826724();
  v2 = sub_1DD875A10();
  MEMORY[0x1E12B4C10](v2);

  v3 = sub_1DD6ED118();
  MEMORY[0x1E12B4C10](v3);

  sub_1DD826BA8();
  return 0xD000000000000013;
}

uint64_t sub_1DD7D9968(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7D9A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7D9968(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7D9A54(uint64_t a1)
{
  v2 = sub_1DD70614C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D9A90(uint64_t a1)
{
  v2 = sub_1DD70614C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StatementID.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1DD875B50();
  if (!v3)
  {
    return sub_1DD875B40();
  }

  sub_1DD875B40();
  sub_1DD6E21D0();

  return _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t StatementID.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1DD6DEDA4();
  sub_1DD875B50();
  sub_1DD875B40();
  if (v3)
  {
    sub_1DD827170();
  }

  return sub_1DD875B60();
}

void StatementID.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD826838();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD128A8, &qword_1DD88A078);
  sub_1DD6E125C(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD70614C();
  sub_1DD6FC48C();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD825188();
    sub_1DD6F178C();
    v8 = sub_1DD8758E0();
    sub_1DD824CE8();
    sub_1DD6EE778();
    v9 = sub_1DD875820();
    v11 = v10;
    v12 = sub_1DD6DEA2C();
    v13(v12);
    *v3 = v8;
    *(v3 + 8) = v9;
    *(v3 + 16) = v11;

    sub_1DD824F80();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7D9DAC@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  return sub_1DD6EECF8(*(v1 + 2), a1);
}

void sub_1DD7D9DBC(unsigned int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(v1 + 16);

  sub_1DD826EAC();
}

uint64_t AncestorID.index.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t AncestorID.index.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

__n128 AncestorID.init(statementId:index:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  result = *(a1 + 8);
  *(a4 + 8) = result;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3 & 1;
  return result;
}

unint64_t AncestorID.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 32);
  sub_1DD8756B0();

  sub_1DD826724();
  v6 = StatementID.description.getter();
  MEMORY[0x1E12B4C10](v6);

  MEMORY[0x1E12B4C10](0x3A7865646E69202CLL, 0xE900000000000020);
  sub_1DD710A9C(&qword_1ECD0E858, &qword_1DD88A080);
  v7 = sub_1DD875180();
  MEMORY[0x1E12B4C10](v7);

  sub_1DD826BA8();
  return 0xD000000000000018;
}

uint64_t sub_1DD7D9F70(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *(a1 + 8) == *(a2 + 8) && v3 == v6;
    if (!v9 && (sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v7)
    {
      v11 = v8;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1DD7DA014(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7DA0DC(char a1)
{
  if (a1)
  {
    return 0x7865646E69;
  }

  else
  {
    return 0x6E656D6574617473;
  }
}

uint64_t sub_1DD7DA120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DA014(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7DA148(uint64_t a1)
{
  v2 = sub_1DD804B84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DA184(uint64_t a1)
{
  v2 = sub_1DD804B84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DD7DA1F4()
{
  sub_1DD6DED2C();
  v21 = v2;
  v4 = v3;
  v6 = sub_1DD825C68(v3, v5);
  v8 = sub_1DD710A9C(v6, v7);
  sub_1DD6E49A8(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DEA6C();
  v12 = *v0;
  v13 = *(v0 + 2);
  v19 = *(v0 + 3);
  v20 = *(v0 + 1);
  v22 = *(v0 + 32);
  v15 = v4[3];
  v14 = v4[4];
  v16 = sub_1DD6E49C0(v4);
  v21(v16);
  sub_1DD826F3C();

  sub_1DD875BB0();
  sub_1DD70396C();
  sub_1DD826748();
  sub_1DD8256BC();
  sub_1DD8759D0();

  if (!v1)
  {
    sub_1DD702E94();
    sub_1DD705DBC();
    sub_1DD875950();
  }

  v17 = sub_1DD6DE58C();
  v18(v17);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

uint64_t AncestorID.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 32);
  sub_1DD875B50();
  if (v3)
  {
    sub_1DD875B40();
    sub_1DD6E58E0();
    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
    if (v5)
    {
      return sub_1DD875B40();
    }
  }

  else
  {
    sub_1DD875B40();
    if (v5)
    {
      return sub_1DD875B40();
    }
  }

  sub_1DD875B40();
  return MEMORY[0x1E12B5570](v4);
}

uint64_t AncestorID.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 32);
  sub_1DD6DEDA4();
  sub_1DD875B50();
  sub_1DD875B40();
  if (v3)
  {
    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  }

  sub_1DD875B40();
  if (!v5)
  {
    sub_1DD6FA750();
  }

  return sub_1DD875B60();
}

void sub_1DD7DA4B8()
{
  sub_1DD6DED2C();
  v4 = v3;
  sub_1DD825A04();
  v21 = v5;
  v8 = sub_1DD825C68(v6, v7);
  v22 = sub_1DD710A9C(v8, v9);
  sub_1DD6DDEAC(v22);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DDFE4();
  v15 = v0[3];
  v16 = v0[4];
  v17 = sub_1DD6E7320(v0);
  v4(v17);
  sub_1DD827014();
  sub_1DD825680();
  sub_1DD875B90();
  if (v2)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD705D68();
    sub_1DD6E40F8();
    sub_1DD705C28();
    sub_1DD8758D0();
    sub_1DD702E94();
    sub_1DD6FAE18();
    v18 = sub_1DD875850();
    v20 = v19;
    (*(v11 + 8))(v1, v22);
    *v21 = v23;
    *(v21 + 8) = v24;
    *(v21 + 16) = v25;
    *(v21 + 24) = v18;
    *(v21 + 32) = v20 & 1;

    sub_1DD826950();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7DA6A8()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 32);
  sub_1DD875B20();
  AncestorID.hash(into:)();
  return sub_1DD875B60();
}

uint64_t ActionSuccess.appLaunched.setter()
{
  v2 = sub_1DD6DE290();
  result = type metadata accessor for ActionSuccess(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t (*ActionSuccess.appLaunched.modify(void *a1))(uint64_t result)
{
  v3 = sub_1DD82661C(a1);
  v4 = *(type metadata accessor for ActionSuccess(v3) + 24);
  *(v1 + 8) = v4;
  *(v1 + 12) = *(v2 + v4);
  return sub_1DD7DA7BC;
}

uint64_t ActionSuccess.undoContext.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ActionSuccess(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t ActionSuccess.didShowInAppResult.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ActionSuccess(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t ActionSuccess.followUpAction.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ActionSuccess(v0) + 28);
  return sub_1DD6DDF9C();
}

uint64_t ActionSuccess.shouldOpen.setter()
{
  v2 = sub_1DD6DE290();
  result = type metadata accessor for ActionSuccess(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t ActionSuccess.shouldOpen.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ActionSuccess(v0) + 32);
  return sub_1DD6DDF9C();
}

uint64_t ActionSuccess.inAppSearchString.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ActionSuccess(v0) + 36);
  return sub_1DD6DDF9C();
}

uint64_t ActionSuccess.ancestorId.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = type metadata accessor for ActionSuccess(v0);
  v2 = sub_1DD8255E0(*(v1 + 40));

  return sub_1DD703958(v2, v3, v4);
}

void ActionSuccess.ancestorId.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v1 + *(type metadata accessor for ActionSuccess(0) + 40);
  v4 = sub_1DD6E3AB0();
  sub_1DD70148C(v4, v5, v6);
  sub_1DD6FEB38();
  *(v3 + 32) = v2;
}

uint64_t ActionSuccess.ancestorId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ActionSuccess(v0) + 40);
  return sub_1DD6DDF9C();
}

double ActionSuccess.concludesStreamingStatementID.setter(__int128 *a1)
{
  v1 = sub_1DD82580C(a1);
  v2 = type metadata accessor for ActionSuccess(v1);
  v3 = sub_1DD6E3A44(*(v2 + 44));
  v6 = sub_1DD70148C(v3, v4, v5);
  *&result = sub_1DD82640C(v6, v7, v8, v9, v10, v11, v12, v13, v14).n128_u64[0];
  return result;
}

uint64_t ActionSuccess.concludesStreamingStatementID.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ActionSuccess(v0) + 44);
  return sub_1DD6DDF9C();
}

__n128 ActionSuccess.init(returnValue:didShowInAppResult:undoContext:followUpAction:shouldOpen:inAppSearchString:concludesStreamingStatementID:ancestorId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int128 *a35)
{
  sub_1DD826DB8();
  v71 = v36;
  v69 = v37;
  v68 = v38;
  v40 = v39;
  v42 = v41;
  v73 = *v43;
  v72 = *(v43 + 2);
  v75 = *(a35 + 32);
  v44 = type metadata accessor for ActionSuccess(0);
  v45 = v44[5];
  sub_1DD827950();
  v74 = *a35;
  v70 = a35[1];
  sub_1DD6E0C90();
  sub_1DD6E5E68(v46, v47, v48, v49);
  v50 = v44[7];
  type metadata accessor for ActionSuccess.FollowUpAction(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v51, v52, v53, v54);
  v55 = (v42 + v44[9]);
  v56 = v42 + v44[10];
  *v56 = 0;
  *(v56 + 8) = 0;
  *(v56 + 16) = xmmword_1DD8890D0;
  *(v56 + 32) = 0;
  sub_1DD82774C(v44[11]);
  *(v35 + 16) = 1;
  v57 = sub_1DD874FA0();
  sub_1DD6DF448(v57);
  v59 = *(v58 + 32);
  v60 = sub_1DD700B4C();
  v61(v60);
  *(v42 + v44[6]) = v40;
  sub_1DD807414();
  sub_1DD807414();
  *(v42 + v44[8]) = v68;
  *v55 = v69;
  v55[1] = v71;
  v62 = sub_1DD826718();
  sub_1DD70148C(v62, v63, v64);
  *v35 = v73;
  *(v35 + 16) = v72;
  v65 = *(v56 + 24);
  v66 = *(v56 + 32);
  sub_1DD70148C(*v56, *(v56 + 8), *(v56 + 16));
  *v56 = v74;
  *(v56 + 16) = v70;
  *(v56 + 32) = v75;
  sub_1DD826D9C();
  return result;
}

void ActionSuccess.init(returnValue:didShowInAppResult:undoContext:followUpAction:shouldOpen:)()
{
  sub_1DD826528();
  v29[0] = v1;
  v3 = v2;
  v4 = sub_1DD6F9E24();
  v5 = type metadata accessor for ActionSuccess(v4);
  v6 = v5[5];
  sub_1DD827950();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v7, v8, v9, v10);
  v11 = v5[7];
  type metadata accessor for ActionSuccess.FollowUpAction(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v12, v13, v14, v15);
  v16 = (v0 + v5[9]);
  v17 = v0 + v5[10];
  *v17 = 0;
  *(v17 + 8) = 0;
  sub_1DD8273A0(xmmword_1DD8890D0);
  v18 = (v0 + v5[11]);
  *v18 = 0;
  v18[1] = 0;
  v18[2] = 1;
  v19 = sub_1DD874FA0();
  sub_1DD6DF448(v19);
  v21 = *(v20 + 32);
  v22 = sub_1DD6ED180();
  v23(v22);
  *(v0 + v5[6]) = v3;
  sub_1DD807414();
  sub_1DD807414();
  *(v0 + v5[8]) = v29[0];
  *v16 = 0;
  v16[1] = 0;
  v24 = sub_1DD82676C();
  sub_1DD70148C(v24, v25, v26);
  *v18 = 0;
  v18[1] = 0;
  v18[2] = 1;
  v27 = *(v17 + 24);
  v28 = *(v17 + 32);
  sub_1DD70148C(*v17, *(v17 + 8), *(v17 + 16));
  *v17 = 0;
  *(v17 + 8) = 0;
  sub_1DD8273A0(xmmword_1DD8890D0);
  sub_1DD8264FC();
}

__n128 ActionSuccess.init(returnValue:didShowInAppResult:undoContext:followUpAction:)()
{
  sub_1DD826528();
  v2 = v1;
  v3 = sub_1DD6E0A5C();
  v4 = type metadata accessor for ActionSuccess(v3);
  v5 = v4[5];
  sub_1DD827950();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v6, v7, v8, v9);
  v10 = v4[7];
  type metadata accessor for ActionSuccess.FollowUpAction(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v11, v12, v13, v14);
  v15 = (v0 + v4[9]);
  v16 = v0 + v4[10];
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = xmmword_1DD8890D0;
  *(v16 + 32) = 0;
  v17 = (v0 + v4[11]);
  *v17 = 0;
  v17[1] = 0;
  v17[2] = 1;
  v18 = sub_1DD874FA0();
  sub_1DD6DF448(v18);
  v20 = *(v19 + 32);
  v21 = sub_1DD825C04();
  v22(v21);
  *(v0 + v4[6]) = v2;
  sub_1DD807414();
  sub_1DD807414();
  *(v0 + v4[8]) = 0;
  *v15 = 0;
  v15[1] = 0;
  v23 = sub_1DD827044();
  sub_1DD70148C(v23, v24, v25);
  *v17 = 0;
  v17[1] = 0;
  v17[2] = 1;
  v26 = sub_1DD6FA3DC();
  sub_1DD70148C(v26, v27, v28);
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = xmmword_1DD8890D0;
  *(v16 + 32) = 0;
  sub_1DD8264FC();
  return result;
}

void ActionSuccess.init(returnValue:appLaunched:)()
{
  sub_1DD6DEB38();
  v45 = v1;
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD125B0, &qword_1DD889EB0);
  sub_1DD6DEA10(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEBA0();
  v8 = sub_1DD710A9C(&qword_1ECD125C0, &qword_1DD889EC0);
  sub_1DD6DEA10(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1DD700BA4();
  v13 = type metadata accessor for ActionSuccess.UndoContext(v12);
  sub_1DD6E0C90();
  v17 = sub_1DD70386C(v14, v15, v16, v13);
  type metadata accessor for ActionSuccess.FollowUpAction(v17);
  sub_1DD826F3C();
  sub_1DD6E0C90();
  v21 = sub_1DD70386C(v18, v19, v20, v0);
  v22 = type metadata accessor for ActionSuccess(v21);
  v23 = v22[5];
  sub_1DD6E0C90();
  sub_1DD6E5E68(v24, v25, v26, v13);
  v27 = v22[7];
  sub_1DD6E0C90();
  sub_1DD6E5E68(v28, v29, v30, v0);
  v31 = (v3 + v22[9]);
  v32 = v3 + v22[10];
  *v32 = 0;
  *(v32 + 8) = 0;
  *(v32 + 16) = xmmword_1DD8890D0;
  *(v32 + 32) = 0;
  v33 = v3 + v22[11];
  sub_1DD6F3588();
  v34 = sub_1DD874FA0();
  sub_1DD6DF448(v34);
  v36 = *(v35 + 32);
  v37 = sub_1DD8258AC();
  v38(v37);
  *(v3 + v22[6]) = v45;
  sub_1DD807414();
  sub_1DD807414();
  *(v3 + v22[8]) = 0;
  *v31 = 0;
  v31[1] = 0;
  v39 = sub_1DD700D00();
  sub_1DD70148C(v39, v40, v41);
  sub_1DD6F3588();
  v42 = sub_1DD6E3AB0();
  sub_1DD70148C(v42, v43, v44);
  *v32 = 0;
  *(v32 + 8) = 0;
  *(v32 + 16) = xmmword_1DD8890D0;
  *(v32 + 32) = 0;
  sub_1DD6DFED0();
}

uint64_t ActionSuccess.UndoContext.bundleIdentifier.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ActionSuccess.UndoContext(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t ActionSuccess.UndoContext.actionDescription.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ActionSuccess.UndoContext(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t ActionSuccess.UndoContext.init(token:bundleIdentifier:actionDescription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DD8257B8();
  v10 = v9;
  v11 = sub_1DD874820();
  sub_1DD6DF448(v11);
  v13 = *(v12 + 32);
  v14 = sub_1DD6DDEDC();
  v15(v14);
  result = type metadata accessor for ActionSuccess.UndoContext(0);
  v17 = (v10 + *(result + 20));
  *v17 = v6;
  v17[1] = v5;
  v18 = (v10 + *(result + 24));
  *v18 = a4;
  v18[1] = a5;
  return result;
}

uint64_t static ActionSuccess.UndoContext.== infix(_:_:)()
{
  sub_1DD6E1F34();
  if ((_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v1 = type metadata accessor for ActionSuccess.UndoContext(0);
  sub_1DD826354(v1);
  sub_1DD824820(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  sub_1DD824820(*(v0 + 24));
  if (v5 && v6 == v7)
  {
    return 1;
  }

  return sub_1DD875A30();
}

uint64_t sub_1DD7DB338(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001DD8B5FE0 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x80000001DD8B6E40 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD7DB450(char a1)
{
  if (!a1)
  {
    return 0x6E656B6F74;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0xD000000000000011;
}

uint64_t sub_1DD7DB4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DB338(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7DB4D8(uint64_t a1)
{
  v2 = sub_1DD804BD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DB514(uint64_t a1)
{
  v2 = sub_1DD804BD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionSuccess.UndoContext.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  v1 = sub_1DD710A9C(&qword_1ECD128C8, &qword_1DD88A098);
  sub_1DD6E49A8(v1);
  v3 = *(v2 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD804BD8();
  sub_1DD6E1808();
  sub_1DD825C8C();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v5);
  sub_1DD6F9A4C();
  sub_1DD6E5924();
  sub_1DD8759D0();
  if (!v0)
  {
    v6 = type metadata accessor for ActionSuccess.UndoContext(0);
    sub_1DD82554C(v6);
    sub_1DD8250C8();
    sub_1DD824BDC();
    sub_1DD875970();
    sub_1DD6FE1CC();
    sub_1DD824BDC();
    sub_1DD875970();
  }

  v7 = sub_1DD6EFFB4();
  v8(v7);
  sub_1DD825790();
  sub_1DD826CF4();
}

void ActionSuccess.UndoContext.init(from:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v5 = sub_1DD874820();
  v6 = sub_1DD6DDEAC(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DDEE8();
  sub_1DD8268E4(v9);
  v33 = sub_1DD710A9C(&qword_1ECD128D8, &qword_1DD88A0A0);
  sub_1DD6DDEAC(v33);
  v31 = v10;
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1DD6E27D4();
  v15 = type metadata accessor for ActionSuccess.UndoContext(v14);
  v16 = sub_1DD6DE1C4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E535C();
  v20 = v4[3];
  v19 = v4[4];
  sub_1DD824794();
  sub_1DD804BD8();
  sub_1DD8259BC();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v4);
  }

  else
  {
    v30 = v15;
    sub_1DD6E14DC();
    sub_1DD6E1E84(v21);
    sub_1DD6F9A4C();
    sub_1DD8758D0();
    sub_1DD8274CC();
    v22(v1, v32, v5);
    sub_1DD824CE8();
    v23 = sub_1DD875870();
    v24 = (v1 + *(v15 + 20));
    *v24 = v23;
    v24[1] = v25;
    sub_1DD825178();
    v26 = sub_1DD875870();
    v28 = v27;
    (*(v31 + 8))(v2, v33);
    v29 = (v1 + *(v30 + 24));
    *v29 = v26;
    v29[1] = v28;
    sub_1DD70131C();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v4);
    sub_1DD8259F8();
    sub_1DD6E5ABC();
  }

  sub_1DD826464();
  sub_1DD6E0C78();
}

uint64_t ActionSuccess.FollowUpAction.action.getter()
{
  sub_1DD6FAAAC();
  sub_1DD825FF8();
  return sub_1DD6E5870();
}

uint64_t ActionSuccess.FollowUpAction.ExecutableAction.LinkAction.bundleIdentifier.setter()
{
  sub_1DD6DE304();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ActionSuccess.FollowUpAction.ExecutableAction.LinkAction.linkAction.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = *(type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(v0) + 20);
  v2 = sub_1DD710A9C(&qword_1ECD128E0, &qword_1DD88A0A8);
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 16);
  v5 = sub_1DD6FE878();

  return v6(v5);
}

uint64_t ActionSuccess.FollowUpAction.ExecutableAction.LinkAction.linkAction.setter()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(v0) + 20);
  v2 = sub_1DD710A9C(&qword_1ECD128E0, &qword_1DD88A0A8);
  sub_1DD6DF448(v2);
  v4 = *(v3 + 40);
  v5 = sub_1DD6E26D8();

  return v6(v5);
}

uint64_t ActionSuccess.FollowUpAction.ExecutableAction.LinkAction.linkAction.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t ActionSuccess.FollowUpAction.ExecutableAction.LinkAction.linkShowOutputActionOptions.setter()
{
  v2 = sub_1DD6DE290();
  result = type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t ActionSuccess.FollowUpAction.ExecutableAction.LinkAction.linkShowOutputActionOptions.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t ActionSuccess.FollowUpAction.ExecutableAction.LinkAction.init(bundleIdentifier:linkAction:linkShowOutputActionOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(0);
  v9 = *(v8 + 20);
  v10 = sub_1DD710A9C(&qword_1ECD128E0, &qword_1DD88A0A8);
  sub_1DD6DF448(v10);
  result = (*(v11 + 32))(&a5[v9], a3);
  *&a5[*(v8 + 24)] = a4;
  return result;
}

BOOL static ActionSuccess.FollowUpAction.ExecutableAction.LinkAction.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1DD6E1FC0(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(0) + 20);
  sub_1DD804C4C(0, &qword_1EE018CE0, 0x1E69AC640);
  if ((sub_1DD874FD0() & 1) == 0)
  {
    return 0;
  }

  sub_1DD827334();
  return v4;
}

uint64_t sub_1DD7DBDC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001DD8B5FE0 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x697463416B6E696CLL && a2 == 0xEA00000000006E6FLL;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001BLL && 0x80000001DD8B6E60 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD7DBEE8(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x697463416B6E696CLL;
  }

  return 0xD00000000000001BLL;
}

uint64_t sub_1DD7DBF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DBDC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7DBF84(uint64_t a1)
{
  v2 = sub_1DD804C8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DBFC0(uint64_t a1)
{
  v2 = sub_1DD804C8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionSuccess.FollowUpAction.ExecutableAction.LinkAction.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  v3 = sub_1DD710A9C(&qword_1ECD128E8, &qword_1DD88A0B0);
  sub_1DD6E49A8(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD804C8C();
  sub_1DD6E1808();
  v7 = *v1;
  v8 = v1[1];
  sub_1DD705FD8();
  sub_1DD824BDC();
  sub_1DD875970();
  if (!v0)
  {
    v9 = type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(0);
    sub_1DD82553C(v9);
    sub_1DD710A9C(&qword_1ECD128E0, &qword_1DD88A0A8);
    sub_1DD804CE0(&unk_1ECD128F8);
    sub_1DD8265F0();
    sub_1DD6E63A8();
    sub_1DD8759D0();
    v10 = *(v1 + *(v2 + 24));
    sub_1DD6E0FF8();
    sub_1DD824DE8();
    sub_1DD8759C0();
  }

  v11 = sub_1DD6EFFB4();
  v12(v11);
  sub_1DD825790();
  sub_1DD826CF4();
}

void ActionSuccess.FollowUpAction.ExecutableAction.LinkAction.init(from:)()
{
  sub_1DD6DED2C();
  v5 = v4;
  v25 = sub_1DD710A9C(&qword_1ECD128E0, &qword_1DD88A0A8);
  sub_1DD6DDEAC(v25);
  v23 = v6;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E17C8();
  v26 = sub_1DD710A9C(&qword_1ECD12900, &qword_1DD88A0B8);
  sub_1DD6DDEAC(v26);
  v24 = v10;
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1DD700BA4();
  v15 = type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(v14);
  v16 = sub_1DD6DE1C4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD824734();
  v19 = v5[3];
  v20 = v5[4];
  sub_1DD824CF8(v5);
  sub_1DD804C8C();
  sub_1DD6EF0F4();
  sub_1DD875B90();
  if (v1)
  {
    sub_1DD6E1EC8(v5);
  }

  else
  {
    sub_1DD8259A4();
    *v2 = sub_1DD875870();
    v2[1] = v21;
    sub_1DD6DEC54();
    sub_1DD804CE0(&unk_1ECD12908);
    sub_1DD705C1C();
    sub_1DD826C90();
    sub_1DD8758D0();
    (*(v23 + 32))(v2 + *(v15 + 20), v0, v25);
    sub_1DD825178();
    v22 = sub_1DD8758C0();
    (*(v24 + 8))(v3, v26);
    *(v2 + *(v15 + 24)) = v22;
    sub_1DD70131C();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v5);
    sub_1DD8259F8();
    sub_1DD6E5ABC();
  }

  sub_1DD6F9B18();
  sub_1DD6E0C78();
}

void static ActionSuccess.FollowUpAction.ExecutableAction.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1DD827764();
  a17 = v19;
  a18 = v20;
  v21 = type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(0);
  v22 = sub_1DD6DE1C4(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6DE21C();
  sub_1DD825724();
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&a9 - v26);
  v28 = sub_1DD710A9C(&qword_1ECD12910, &qword_1DD88A0C0);
  sub_1DD6DEA10(v28);
  v30 = *(v29 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6DEBA0();
  v33 = *(v32 + 56);
  sub_1DD6E5870();
  sub_1DD6E5870();
  sub_1DD6E59B8();
  sub_1DD6E59B8();
  v34 = *v27 == *v18 && v27[1] == v18[1];
  if (v34 || (sub_1DD875A30() & 1) != 0)
  {
    v35 = *(v21 + 20);
    sub_1DD804C4C(0, &qword_1EE018CE0, 0x1E69AC640);
    if (sub_1DD874FD0())
    {
      sub_1DD827334();
    }
  }

  sub_1DD6E5ABC();
  sub_1DD705564();
  sub_1DD6E5ABC();
  sub_1DD827720();
}

uint64_t sub_1DD7DC698(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x697463416B6E696CLL && a2 == 0xEA00000000006E6FLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7DC738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DC698(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7DC764(uint64_t a1)
{
  v2 = sub_1DD804D2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DC7A0(uint64_t a1)
{
  v2 = sub_1DD804D2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7DC7DC(uint64_t a1)
{
  v2 = sub_1DD804D80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DC818(uint64_t a1)
{
  v2 = sub_1DD804D80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionSuccess.FollowUpAction.ExecutableAction.encode(to:)()
{
  sub_1DD6DED2C();
  v1 = v0;
  v26 = sub_1DD710A9C(&qword_1ECD12918, &qword_1DD88A0C8);
  sub_1DD6DDEAC(v26);
  v3 = v2;
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE340();
  v7 = type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction(0);
  v8 = sub_1DD6DEA10(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD702A64();
  v11 = sub_1DD710A9C(&qword_1ECD12920, &qword_1DD88A0D0);
  sub_1DD6DDEAC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6F0A58();
  v18 = v1[3];
  v17 = v1[4];
  sub_1DD6FE8B0(v1);
  sub_1DD804D2C();
  sub_1DD6EF0F4();
  sub_1DD827620();
  sub_1DD875BB0();
  sub_1DD825FF8();
  sub_1DD6E5870();
  sub_1DD804D80();
  sub_1DD6FE82C();
  sub_1DD875910();
  type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(0);
  sub_1DD825F68();
  sub_1DD6E1E84(v19);
  sub_1DD6FAD44();
  sub_1DD8759D0();
  sub_1DD6E5ABC();
  v20 = *(v3 + 8);
  v21 = sub_1DD6E0F70();
  v22(v21);
  v23 = *(v13 + 8);
  v24 = sub_1DD825674();
  v25(v24);
  sub_1DD825AC0();
  sub_1DD6E0C78();
}

void ActionSuccess.FollowUpAction.ExecutableAction.init(from:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v39 = type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction(0);
  v4 = sub_1DD6DE1C4(v39);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6E535C();
  v7 = sub_1DD710A9C(&qword_1ECD12940, &qword_1DD88A0D8);
  sub_1DD6E49A8(v7);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DEBA0();
  v11 = sub_1DD710A9C(&qword_1ECD12948, &qword_1DD88A0E0);
  sub_1DD6DDEAC(v11);
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DDFE4();
  v15 = v3[3];
  v16 = v3[4];
  sub_1DD6E6C94(v3);
  sub_1DD804D2C();
  sub_1DD77E6F4();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (!v1)
  {
    v17 = sub_1DD875900();
    sub_1DD6ED750(v17, 0);
    sub_1DD827758();
    if (v18)
    {
      goto LABEL_9;
    }

    sub_1DD825138();
    if (v19 == v20)
    {
      __break(1u);
      return;
    }

    sub_1DD6ED830(v21 + 1);
    v23 = v22;
    v25 = v24;
    swift_unknownObjectRelease();
    if (v23 != v25 >> 1)
    {
LABEL_9:
      v26 = sub_1DD875740();
      sub_1DD6E41BC();
      v28 = v27;
      v29 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
      *v28 = v39;
      sub_1DD875810();
      sub_1DD6DF100();
      v30 = *MEMORY[0x1E69E6AF8];
      sub_1DD6E0540(v26);
      (*(v31 + 104))(v28);
      swift_willThrow();
      swift_unknownObjectRelease();
      v32 = sub_1DD824F60();
      v33(v32);
    }

    else
    {
      sub_1DD804D80();
      sub_1DD8258DC();
      sub_1DD6F178C();
      sub_1DD875800();
      type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(0);
      sub_1DD825F68();
      sub_1DD6E1E84(v34);
      sub_1DD82557C();
      sub_1DD826118();
      sub_1DD8758D0();
      swift_unknownObjectRelease();
      v35 = sub_1DD705E24();
      v36(v35, v0);
      v37 = sub_1DD825A90();
      v38(v37, v11);
      sub_1DD824ED0();
      sub_1DD6E59B8();
    }
  }

  sub_1DD6E1EC8(v3);
  sub_1DD826464();
  sub_1DD6E0C78();
}