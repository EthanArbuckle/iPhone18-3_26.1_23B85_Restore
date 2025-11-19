uint64_t sub_2519468DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25194E4A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_25194AB90();
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2519469FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25194E4A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    sub_25194AB90();
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_251946B20()
{
  v1 = (type metadata accessor for PregnancyStripedLinearGauge() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_25194E4A0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  sub_25194AD08(*(v0 + v3 + v1[7]), *(v0 + v3 + v1[7] + 8));
  v6 = v1[8];
  sub_25194AB90();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251946C4C()
{
  sub_25194AD9C();
  sub_25194B874();
  sub_25194C0AC(&qword_27F4684E0, sub_25194AD9C);
  sub_25194C0AC(&qword_27F4684E8, sub_25194B874);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_251946D24()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251946DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25194E5F0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_25194E210();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_251946EB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25194E5F0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_25194E210();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t PregnancyStripedLinearGaugeStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25194E4A0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  KeyPath = swift_getKeyPath();
  v6 = type metadata accessor for PregnancyStripedLinearGauge();
  v7 = a2 + *(v6 + 20);
  *v7 = KeyPath;
  *(v7 + 8) = 0;
  v8 = *(v6 + 24);
  sub_25194A8F0();
  return sub_25194E310();
}

double sub_251948E0C()
{
  v1 = sub_25194E3F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for PregnancyStripedLinearGauge() + 20));
  v7 = *v6;
  if (v6[8] == 1)
  {
    return *v6;
  }

  sub_25194E680();
  v9 = sub_25194E4B0();
  sub_25194E2C0();

  sub_25194E3E0();
  swift_getAtKeyPath();
  sub_25194AD08(v7, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

uint64_t sub_251948F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25194E4A0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  KeyPath = swift_getKeyPath();
  v6 = type metadata accessor for PregnancyStripedLinearGauge();
  v7 = a2 + *(v6 + 20);
  *v7 = KeyPath;
  *(v7 + 8) = 0;
  v8 = *(v6 + 24);
  sub_25194A8F0();
  return sub_25194E310();
}

uint64_t sub_251949020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_25194E670();
  sub_25194E660();
  sub_25194E650();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_25194E5D0();
  a3[1] = v6;
  sub_25194BB34();
  sub_2519491DC(a2, a1, a3 + *(v7 + 44));
  v8 = sub_25194E5C0();
  v10 = v9;
  sub_251949920(&v20);
  *&v30 = v8;
  *(&v30 + 1) = v10;
  v37 = v26;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  v33 = v22;
  v34 = v23;
  v35 = v24;
  v36 = v25;
  v31 = v20;
  v32 = v21;
  sub_25194AE00();
  v12 = (a3 + *(v11 + 36));
  v13 = v39;
  v12[8] = v38;
  v12[9] = v13;
  v12[10] = v40;
  v14 = v35;
  v12[4] = v34;
  v12[5] = v14;
  v15 = v37;
  v12[6] = v36;
  v12[7] = v15;
  v16 = v31;
  *v12 = v30;
  v12[1] = v16;
  v17 = v33;
  v12[2] = v32;
  v12[3] = v17;
  v41[0] = v8;
  v41[1] = v10;
  v48 = v26;
  v49 = v27;
  v50 = v28;
  v51 = v29;
  v44 = v22;
  v45 = v23;
  v46 = v24;
  v47 = v25;
  v42 = v20;
  v43 = v21;
  sub_25194BBCC(&v30, &v19, sub_25194B2DC);
  sub_25194BC34(v41, sub_25194B2DC);
}

void sub_2519491DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v78 = a1;
  v73 = a3;
  v3 = *(*(sub_25194E5B0() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v5 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25194B0F8();
  v74 = v6;
  v7 = *(*(v6 - 8) + 64);
  (MEMORY[0x28223BE20])();
  v9 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25194B4A4(0, &qword_27F468408, sub_25194B0F8);
  v76 = v10;
  v11 = *(*(v10 - 8) + 64);
  v12 = (MEMORY[0x28223BE20])();
  v72 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v70 - v15;
  MEMORY[0x28223BE20](v14);
  v77 = v70 - v17;
  v18 = sub_25194E2B0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25194B004();
  v24 = v23;
  v25 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v71 = v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = v70 - v28;
  sub_25194E670();
  v70[1] = sub_25194E660();
  sub_25194E650();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27F468388 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v18, qword_27F468800);
  (*(v19 + 16))(v22, v30, v18);
  v31 = sub_25194E550();
  v32 = &v29[*(v24 + 36)];
  v33 = *MEMORY[0x277CE0118];
  v34 = sub_25194E440();
  v35 = *(*(v34 - 8) + 104);
  v35(v32, v33, v34);
  sub_25194B064();
  *&v32[*(v36 + 36)] = 256;
  *v29 = v31;
  __asm { FMOV            V0.2D, #1.5 }

  *(v29 + 8) = _Q0;
  v35(v5, v33, v34);
  sub_25194BDF4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v43 = objc_opt_self();
  v44 = [v43 bundleForClass_];
  v45 = sub_25194E640();
  v46 = objc_opt_self();
  v47 = [v46 colorNamed:v45 inBundle:v44 compatibleWithTraitCollection:0];

  if (v47)
  {
    v48 = sub_25194E560();
    sub_25194BE40(v5, v9, MEMORY[0x277CE1260]);
    v49 = v74;
    *&v9[*(v74 + 52)] = v48;
    *&v9[*(v49 + 56)] = 256;
    sub_25194E350();
    sub_25194E350();
    sub_251948E0C();
    sub_25194E350();
    sub_25194E5D0();
    sub_25194E340();
    sub_25194BE40(v9, v16, sub_25194B0F8);
    v50 = &v16[*(v76 + 36)];
    v51 = v80;
    *v50 = v79;
    *(v50 + 1) = v51;
    *(v50 + 2) = v81;
    v52 = v16;
    v53 = v77;
    sub_25194BEA8(v52, v77);
    v54 = [v43 bundleForClass_];
    v55 = sub_25194E640();
    v56 = [v46 colorNamed:v55 inBundle:v54 compatibleWithTraitCollection:0];

    if (v56)
    {
      v57 = sub_25194E560();
      sub_25194E350();
      v59 = v58;
      sub_25194E350();
      v61 = v59 - v60;
      sub_25194E490();
      v63 = v62 * v61;
      v64 = v71;
      sub_25194BBCC(v29, v71, sub_25194B004);
      v65 = v72;
      sub_25194BCF0(v53, v72, &qword_27F468408, sub_25194B0F8);
      v66 = v73;
      sub_25194BBCC(v64, v73, sub_25194B004);
      sub_25194AF34();
      v68 = v67;
      sub_25194BCF0(v65, v66 + *(v67 + 48), &qword_27F468408, sub_25194B0F8);
      v69 = v66 + *(v68 + 64);
      *v69 = v57;
      *(v69 + 8) = 256;
      *(v69 + 16) = v63;
      *(v69 + 24) = 0;

      sub_25194BD60(v53, &qword_27F468408, sub_25194B0F8);
      sub_25194BC34(v29, sub_25194B004);

      sub_25194BD60(v65, &qword_27F468408, sub_25194B0F8);
      sub_25194BC34(v64, sub_25194B004);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

__n128 sub_251949920@<Q0>(uint64_t a1@<X8>)
{
  sub_25194E670();
  sub_25194E660();
  sub_25194E650();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25194E350();
  v3 = v2;
  sub_25194E350();
  v5 = v3 - v4;
  sub_25194E490();
  v7 = v6 * v5;
  sub_25194E350();
  v8 = sub_25194E5D0();
  v10 = v9;
  sub_251949EC4(&v17, v7);
  v32 = v23;
  v33 = v24;
  v34 = v25;
  v28 = v19;
  v29 = v20;
  v30 = v21;
  v31 = v22;
  v26 = v17;
  v27 = v18;
  v35[6] = v23;
  v35[7] = v24;
  v35[8] = v25;
  v35[2] = v19;
  v35[3] = v20;
  v35[4] = v21;
  v35[5] = v22;
  v35[0] = v17;
  v35[1] = v18;
  v11 = MEMORY[0x277CE14B8];
  sub_25194BAC4(&v26, &v16, &qword_27F468458, sub_25194B3F0, MEMORY[0x277CE14B8]);
  sub_25194BC94(v35, &qword_27F468458, sub_25194B3F0, v11);

  *a1 = v8;
  *(a1 + 8) = v10;
  v12 = v33;
  *(a1 + 112) = v32;
  *(a1 + 128) = v12;
  *(a1 + 144) = v34;
  v13 = v29;
  *(a1 + 48) = v28;
  *(a1 + 64) = v13;
  v14 = v31;
  *(a1 + 80) = v30;
  *(a1 + 96) = v14;
  result = v27;
  *(a1 + 16) = v26;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_251949AF8@<X0>(uint64_t a1@<X8>)
{
  sub_25194E670();
  sub_25194E660();
  sub_25194E650();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = sub_25194E420();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_25194BA2C();
  sub_251949BC0((a1 + *(v2 + 44)));
}

uint64_t sub_251949BC0@<X0>(char *a1@<X8>)
{
  v28 = a1;
  sub_25194B9C8(0, &qword_27F4684D0, MEMORY[0x277CDE210], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = sub_25194E470();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  sub_25194E670();
  v27 = sub_25194E660();
  sub_25194E650();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25194E480();
  sub_25194E460();
  v16 = v9[2];
  v16(v13, v15, v8);
  v17 = MEMORY[0x277CDE210];
  v18 = MEMORY[0x277D83D88];
  sub_25194BAC4(v7, v5, &qword_27F4684D0, MEMORY[0x277CDE210], MEMORY[0x277D83D88]);
  v26 = v15;
  v19 = v13;
  v20 = v5;
  v21 = v28;
  v16(v28, v19, v8);
  sub_25194B928();
  sub_25194BAC4(v20, &v21[*(v22 + 48)], &qword_27F4684D0, v17, v18);
  sub_25194BC94(v7, &qword_27F4684D0, v17, v18);
  v23 = v9[1];
  v23(v26, v8);
  sub_25194BC94(v20, &qword_27F4684D0, v17, v18);
  v23(v19, v8);
}

uint64_t sub_251949EC4@<X0>(uint64_t a1@<X8>, double a2@<D1>)
{
  sub_25194E670();
  sub_25194E660();
  sub_25194E650();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = sub_25194E540();
  v22 = sub_25194E530();
  v4 = *(type metadata accessor for PregnancyStripedLinearGauge() + 24);
  sub_25194AB90();
  sub_25194E320();
  sub_25194E2F0();
  v5 = *&v51;
  v6 = DWORD2(v51);
  v7 = HIDWORD(v51);
  v8 = v52;
  v9 = v53;
  v10 = sub_25194E5C0();
  v12 = v11;
  sub_25194E320();
  sub_25194E5C0();
  sub_25194E340();
  sub_25194E320();
  v13 = a2 + v35 * -0.5;
  v30[0] = v51;
  v30[1] = v52;
  *&v31 = v53;
  *(&v31 + 1) = v22;
  LOWORD(v32) = 256;
  *(&v32 + 2) = v25;
  WORD3(v32) = v26;
  *(&v32 + 1) = v10;
  *v33 = v12;
  *&v33[40] = v29;
  v15 = v28;
  v14 = v29;
  *&v33[24] = v28;
  v16 = v27;
  *&v33[8] = v27;
  v17 = v52;
  *(a1 + 8) = v51;
  v18 = *&v33[16];
  *(a1 + 72) = *v33;
  v19 = v31;
  *(a1 + 56) = v32;
  *&v33[56] = v13;
  *(a1 + 40) = v19;
  *(a1 + 24) = v17;
  v20 = *&v33[32];
  *(a1 + 120) = *&v33[48];
  *(a1 + 104) = v20;
  v34 = 0;
  *a1 = v23;
  *(a1 + 136) = 0;
  *(a1 + 88) = v18;
  v35 = v5;
  v36 = v6;
  v37 = v7;
  v38 = v8;
  v39 = v9;
  v40 = v22;
  v41 = 256;
  v42 = v25;
  v43 = v26;
  v44 = v10;
  v45 = v12;
  v48 = v14;
  v47 = v15;
  v46 = v16;
  v49 = v13;
  v50 = 0;

  sub_25194BCF0(v30, v24, &qword_27F468468, sub_25194B47C);
  sub_25194BD60(&v35, &qword_27F468468, sub_25194B47C);
}

uint64_t sub_25194A1B4(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_25194BBCC(v1, &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PregnancyStripedLinearGauge);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_25194BE40(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4, type metadata accessor for PregnancyStripedLinearGauge);
  v9 = sub_25194AD14;
  v10 = v5;
  v8 = v1;
  sub_25194AD9C();
  sub_25194B874();
  sub_25194C0AC(&qword_27F4684E0, sub_25194AD9C);
  sub_25194C0AC(&qword_27F4684E8, sub_25194B874);
  sub_25194E520();
}

uint64_t sub_25194A394(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_25194E3B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25194E670();
  sub_25194E660();
  sub_25194E650();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v16 = ceil((a2 + a3) / (a4 + a5));
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = v16;
  if (v16 < 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (v17)
  {
    v18 = 0;
    v19 = *a1;
    v20 = (v11 + 8);
    do
    {
      sub_25194E4E0();
      sub_25194E4C0();
      sub_25194E4D0();
      v24[0] = *&v21[8];
      v24[1] = v22;
      v25 = v23;
      sub_25194E3A0();
      sub_25194E390();
      (*v20)(v14, v10);
      sub_25194C058(v24);
      ++v18;
    }

    while (v17 != v18);
  }
}

uint64_t sub_25194A624()
{
  v1 = sub_25194E430();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v7;
  v9[4] = v8;
  (*(v2 + 104))(v5, *MEMORY[0x277CE00F0], v1);

  return sub_25194E570();
}

uint64_t sub_25194A768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25194BF30();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

double EnvironmentValues.pregnancyStripedFillProgress.getter()
{
  sub_25194A944();
  sub_25194E400();
  return v1;
}

double sub_25194A808@<D0>(double *a1@<X8>)
{
  sub_25194A944();
  sub_25194E400();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_25194A858(uint64_t *a1)
{
  v2 = *a1;
  sub_25194A944();
  return sub_25194E410();
}

uint64_t type metadata accessor for PregnancyStripedLinearGauge()
{
  result = qword_27F4683B0;
  if (!qword_27F4683B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25194A8F0()
{
  result = qword_27F468390;
  if (!qword_27F468390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F468390);
  }

  return result;
}

unint64_t sub_25194A944()
{
  result = qword_27F468398;
  if (!qword_27F468398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F468398);
  }

  return result;
}

uint64_t (*EnvironmentValues.pregnancyStripedFillProgress.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_25194A944();
  sub_25194E400();
  return sub_25194AA34;
}

uint64_t sub_25194AA34(void *a1)
{
  a1[1] = *a1;
  v1 = a1 + 1;
  v3 = v1[1];
  v2 = v1[2];
  return sub_25194E410();
}

uint64_t sub_25194AAA0(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_25194AAF0(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_25194AB90()
{
  if (!qword_27F4683A8)
  {
    sub_25194A8F0();
    v0 = sub_25194E330();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4683A8);
    }
  }
}

void sub_25194AC00()
{
  sub_25194E4A0();
  if (v0 <= 0x3F)
  {
    sub_25194AC9C();
    if (v1 <= 0x3F)
    {
      sub_25194AB90();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25194AC9C()
{
  if (!qword_27F4683C0)
  {
    v0 = sub_25194E2E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4683C0);
    }
  }
}

uint64_t sub_25194AD08(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_25194AD14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for PregnancyStripedLinearGauge() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_251949020(a1, v6, a2);
}

void sub_25194AD9C()
{
  if (!qword_27F4683C8)
  {
    sub_25194AE00();
    sub_25194B740();
    v0 = sub_25194E380();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4683C8);
    }
  }
}

void sub_25194AE00()
{
  if (!qword_27F4683D0)
  {
    sub_25194AE94(255, &qword_27F4683D8, &qword_27F4683E0, sub_25194AF34, &qword_27F468430);
    sub_25194B2DC();
    v0 = sub_25194E3C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4683D0);
    }
  }
}

void sub_25194AE94(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_25194B9C8(255, a3, a4, MEMORY[0x277CE14B8]);
    sub_25194B278(a5, a3, a4);
    v9 = sub_25194E5A0();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_25194AF34()
{
  if (!qword_27F4683E8)
  {
    sub_25194B004();
    sub_25194B4A4(255, &qword_27F468408, sub_25194B0F8);
    sub_25194B4A4(255, &qword_27F468418, sub_25194B1A8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F4683E8);
    }
  }
}

void sub_25194B004()
{
  if (!qword_27F4683F0)
  {
    sub_25194B064();
    v0 = sub_25194E3C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4683F0);
    }
  }
}

void sub_25194B064()
{
  if (!qword_27F4683F8)
  {
    sub_25194E5B0();
    sub_25194C0AC(&qword_27F468400, MEMORY[0x277CE1260]);
    v0 = sub_25194E300();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4683F8);
    }
  }
}

void sub_25194B0F8()
{
  if (!qword_27F468410)
  {
    sub_25194E5B0();
    sub_25194C0AC(&qword_27F468400, MEMORY[0x277CE1260]);
    v0 = sub_25194E2D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F468410);
    }
  }
}

void sub_25194B1A8()
{
  if (!qword_27F468420)
  {
    sub_25194B224();
    v0 = sub_25194E2D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F468420);
    }
  }
}

unint64_t sub_25194B224()
{
  result = qword_27F468428;
  if (!qword_27F468428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F468428);
  }

  return result;
}

uint64_t sub_25194B278(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_25194B9C8(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25194B2DC()
{
  if (!qword_27F468438)
  {
    sub_25194B4A4(255, &qword_27F468440, sub_25194B364);
    sub_25194B598();
    v0 = sub_25194E450();
    if (!v1)
    {
      atomic_store(v0, &qword_27F468438);
    }
  }
}

void sub_25194B364()
{
  if (!qword_27F468448)
  {
    sub_25194AE94(255, &qword_27F468450, &qword_27F468458, sub_25194B3F0, &qword_27F468480);
    v0 = sub_25194E3C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F468448);
    }
  }
}

void sub_25194B3F0()
{
  if (!qword_27F468460)
  {
    sub_25194B4A4(255, &qword_27F468468, sub_25194B47C);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F468460);
    }
  }
}

void sub_25194B4A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25194E3C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25194B508()
{
  if (!qword_27F468478)
  {
    sub_25194B224();
    v0 = sub_25194E3D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F468478);
    }
  }
}

unint64_t sub_25194B598()
{
  result = qword_27F468488;
  if (!qword_27F468488)
  {
    sub_25194B4A4(255, &qword_27F468440, sub_25194B364);
    sub_25194B63C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F468488);
  }

  return result;
}

unint64_t sub_25194B63C()
{
  result = qword_27F468490;
  if (!qword_27F468490)
  {
    sub_25194B364();
    sub_25194B6BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F468490);
  }

  return result;
}

unint64_t sub_25194B6BC()
{
  result = qword_27F468498;
  if (!qword_27F468498)
  {
    sub_25194AE94(255, &qword_27F468450, &qword_27F468458, sub_25194B3F0, &qword_27F468480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F468498);
  }

  return result;
}

unint64_t sub_25194B740()
{
  result = qword_27F4684A0;
  if (!qword_27F4684A0)
  {
    sub_25194AE00();
    sub_25194B7F0();
    sub_25194C0AC(&qword_27F4684B0, sub_25194B2DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4684A0);
  }

  return result;
}

unint64_t sub_25194B7F0()
{
  result = qword_27F4684A8;
  if (!qword_27F4684A8)
  {
    sub_25194AE94(255, &qword_27F4683D8, &qword_27F4683E0, sub_25194AF34, &qword_27F468430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4684A8);
  }

  return result;
}

void sub_25194B874()
{
  if (!qword_27F4684B8)
  {
    sub_25194B9C8(255, &qword_27F4684C0, sub_25194B928, MEMORY[0x277CE14B8]);
    sub_25194B278(&qword_27F4684D8, &qword_27F4684C0, sub_25194B928);
    v0 = sub_25194E590();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4684B8);
    }
  }
}

void sub_25194B928()
{
  if (!qword_27F4684C8)
  {
    sub_25194E470();
    sub_25194B9C8(255, &qword_27F4684D0, MEMORY[0x277CDE210], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4684C8);
    }
  }
}

void sub_25194B9C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25194BA2C()
{
  if (!qword_27F4684F0)
  {
    sub_25194B9C8(255, &qword_27F4684C0, sub_25194B928, MEMORY[0x277CE14B8]);
    v0 = sub_25194E360();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4684F0);
    }
  }
}

uint64_t sub_25194BAC4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_25194B9C8(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_25194BB34()
{
  if (!qword_27F4684F8)
  {
    sub_25194B9C8(255, &qword_27F4683E0, sub_25194AF34, MEMORY[0x277CE14B8]);
    v0 = sub_25194E360();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4684F8);
    }
  }
}

uint64_t sub_25194BBCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25194BC34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25194BC94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_25194B9C8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_25194BCF0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_25194B4A4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25194BD60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_25194B4A4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_25194BDF4()
{
  result = qword_27F468500;
  if (!qword_27F468500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F468500);
  }

  return result;
}

uint64_t sub_25194BE40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25194BEA8(uint64_t a1, uint64_t a2)
{
  sub_25194B4A4(0, &qword_27F468408, sub_25194B0F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25194BF30()
{
  result = qword_27F468508;
  if (!qword_27F468508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F468508);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25194BF98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25194BFE0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_25194C0AC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25194C0F4()
{
  if (!qword_27F468518)
  {
    v0 = sub_25194E580();
    if (!v1)
    {
      atomic_store(v0, &qword_27F468518);
    }
  }
}

void sub_25194C188()
{
  sub_25194BDF4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_25194E640();
  v3 = [objc_opt_self() colorNamed:v2 inBundle:v1 compatibleWithTraitCollection:0];

  if (!v3)
  {
    __break(1u);
  }
}

void static UIColor.pregnancyDarkGreen.getter()
{
  sub_25194BDF4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_25194E640();
  v3 = [objc_opt_self() colorNamed:v2 inBundle:v1 compatibleWithTraitCollection:0];

  if (!v3)
  {
    __break(1u);
  }
}

void static UIColor.pregnancyGreenPrediction.getter()
{
  sub_25194BDF4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_25194E640();
  v3 = [objc_opt_self() colorNamed:v2 inBundle:v1 compatibleWithTraitCollection:0];

  if (v3)
  {
    [v3 colorWithAlphaComponent_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t PregnancyModeTimelineViewModel.currentDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PregnancyModeTimelineViewModel() + 20);
  v4 = sub_25194E210();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PregnancyModeTimelineViewModel()
{
  result = qword_2811124F0;
  if (!qword_2811124F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id PregnancyModeTimelineViewModel.pregnancySample.getter()
{
  v1 = *(v0 + *(type metadata accessor for PregnancyModeTimelineViewModel() + 24));

  return v1;
}

uint64_t PregnancyModeTimelineViewModel.pregnancyStartDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PregnancyModeTimelineViewModel() + 28);
  v4 = sub_25194E210();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PregnancyModeTimelineViewModel.estimatedDueDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PregnancyModeTimelineViewModel() + 32);
  v4 = sub_25194E210();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PregnancyModeTimelineViewModel.init(currentDay:pregnancySample:estimatedDueDate:today:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v91 = a4;
  v99 = a1;
  v100 = a3;
  sub_25194D030();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v83 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v87 = v81 - v12;
  v97 = sub_25194E220();
  v95 = *(v97 - 8);
  v13 = *(v95 + 64);
  MEMORY[0x28223BE20](v97);
  v15 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_25194E290();
  v98 = *(v90 - 8);
  v16 = *(v98 + 64);
  MEMORY[0x28223BE20](v90);
  v18 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25194E210();
  v89 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v82 = v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v86 = v81 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = v81 - v26;
  v28 = sub_25194E5F0();
  v92 = *(v28 - 8);
  v93 = v28;
  (*(v92 + 16))(a5, a1);
  v29 = type metadata accessor for PregnancyModeTimelineViewModel();
  v30 = v29[8];
  v96 = v20;
  v31 = *(v20 + 16);
  v31(a5 + v30, v100, v19);
  *(a5 + v29[6]) = a2;
  v32 = [a2 startDate];
  v81[1] = v29[7];
  sub_25194E1F0();

  v33 = v95;
  v34 = v97;
  (*(v95 + 104))(v15, *MEMORY[0x277CC9830], v97);
  sub_25194E230();
  (*(v33 + 8))(v15, v34);
  sub_25194E5E0();
  v35 = v98 + 8;
  v36 = *(v98 + 8);
  v37 = v90;
  v36(v18, v90);
  v38 = v29[5];
  v39 = v35;
  v94 = v29;
  v95 = a5;
  v40 = v91;
  v41 = v89;
  v84 = v31;
  v85 = v20 + 16;
  v31(a5 + v38, v27, v89);
  v42 = v41;
  sub_25194E270();
  v88 = sub_25194E260();
  v43 = v37;
  v44 = v36;
  v36(v18, v43);
  v97 = v27;
  v45 = v43;
  if ((sub_25194E1C0() & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_25194E270();
  v46 = v87;
  sub_25194D088(v87);
  v36(v18, v43);
  v47 = v96;
  v48 = *(v96 + 48);
  v49 = v48(v46, 1, v42);
  v98 = v39;
  if (v49 == 1)
  {
    v50 = v47;
    v51 = v86;
    v84(v86, v40, v42);
    v52 = v51;
    v47 = v50;
    if (v48(v46, 1, v42) != 1)
    {
      sub_25194D394(v46);
    }
  }

  else
  {
    v52 = v86;
    (*(v47 + 32))(v86, v46, v42);
  }

  sub_25194DE84(&qword_27F468528, MEMORY[0x277CC9578]);
  v53 = v52;
  v54 = sub_25194E610();
  v55 = *(v47 + 8);
  v55(v53, v42);
  if (v54)
  {
    v55(v40, v42);
    v55(v100, v42);
    (*(v92 + 8))(v99, v93);
    result = (v55)(v97, v42);
    v57 = 0.92;
    v58 = 0.945;
    v59 = v95;
  }

  else
  {
LABEL_8:
    v60 = v42;
    v61 = v96;
    sub_25194E270();
    v62 = v97;
    v63 = sub_25194E260();
    v44(v18, v45);
    if (v63 & v88)
    {
      v64 = *(v61 + 8);
      v64(v40, v60);
      v64(v100, v60);
      (*(v92 + 8))(v99, v93);
      result = (v64)(v62, v60);
      v58 = 1.0;
      v57 = 1.0;
      v59 = v95;
    }

    else
    {
      sub_25194E270();
      v65 = v45;
      v66 = v83;
      sub_25194D088(v83);
      v44(v18, v65);
      v67 = *(v61 + 48);
      v68 = v60;
      if (v67(v66, 1, v60) == 1)
      {
        v69 = v82;
        v70 = v40;
        v84(v82, v40, v60);
        v71 = v67(v66, 1, v60);
        v59 = v95;
        if (v71 != 1)
        {
          sub_25194D394(v66);
        }
      }

      else
      {
        v70 = v40;
        v69 = v82;
        (*(v61 + 32))(v82, v66, v60);
        v59 = v95;
      }

      v72 = sub_25194E1D0();
      v73 = *(v61 + 8);
      v73(v69, v68);
      v74 = v97;
      if (v72 & 1) != 0 && (sub_25194DE84(&qword_27F468528, MEMORY[0x277CC9578]), (sub_25194E610()))
      {
        v73(v70, v68);
        v73(v100, v68);
        (*(v92 + 8))(v99, v93);
        result = (v73)(v74, v68);
        v57 = 0.92;
        v58 = 0.945;
      }

      else
      {
        sub_25194DE84(&qword_27F468528, MEMORY[0x277CC9578]);
        if (sub_25194E620())
        {
          v73(v70, v68);
          v73(v100, v68);
          (*(v92 + 8))(v99, v93);
          result = (v73)(v74, v68);
          v58 = 0.0;
          v57 = 0.0;
        }

        else
        {
          v75 = v100;
          sub_25194E1B0();
          v77 = v76;
          sub_25194E1B0();
          v79 = v78;
          v73(v70, v68);
          v73(v75, v68);
          (*(v92 + 8))(v99, v93);
          result = (v73)(v74, v68);
          v58 = v79 / v77;
          if (v79 / v77 <= 0.003)
          {
            v58 = 0.003;
          }

          if (v58 > 1.0)
          {
            v58 = 1.0;
          }

          v57 = v58;
        }
      }
    }
  }

  v80 = v94;
  *(v59 + v94[9]) = v58;
  *(v59 + v80[10]) = v57;
  return result;
}

void sub_25194D030()
{
  if (!qword_27F468520)
  {
    sub_25194E210();
    v0 = sub_25194E6B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F468520);
    }
  }
}

uint64_t sub_25194D088@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_25194E280();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25194D030();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25194E210();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v24 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  v17 = *MEMORY[0x277CC9968];
  v23 = v2[13];
  v23(v5, v17, v1);
  sub_25194E250();
  v18 = v2[1];
  v25 = v1;
  v18(v5, v1);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_25194D394(v9);
    return (*(v11 + 56))(v26, 1, 1, v10);
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    v20 = v24;
    sub_25194E240();
    v21 = v25;
    v23(v5, *MEMORY[0x277CC99A8], v25);
    sub_25194E250();
    v18(v5, v21);
    v22 = *(v11 + 8);
    v22(v20, v10);
    return (v22)(v16, v10);
  }
}

uint64_t sub_25194D394(uint64_t a1)
{
  sub_25194D030();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PregnancyModeTimelineViewModel.startDateShorthandText.getter()
{
  v23 = sub_25194E170();
  v0 = *(v23 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v23);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25194E190();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25194E1A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v22 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v22 - v18;
  v22[1] = *(type metadata accessor for PregnancyModeTimelineViewModel() + 28);
  MEMORY[0x253087420]();
  sub_25194E180();
  sub_25194E150();
  (*(v5 + 8))(v8, v4);
  v20 = *(v10 + 8);
  v20(v14, v9);
  sub_25194E160();
  sub_25194E140();
  (*(v0 + 8))(v3, v23);
  v20(v17, v9);
  sub_25194DE84(&qword_27F468530, MEMORY[0x277CC9428]);
  sub_25194E200();
  v20(v19, v9);
  return v24;
}

uint64_t PregnancyModeTimelineViewModel.estimatedDueDateShorthandText.getter()
{
  v23 = sub_25194E170();
  v0 = *(v23 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v23);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25194E190();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25194E1A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v22 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v22 - v18;
  v22[1] = *(type metadata accessor for PregnancyModeTimelineViewModel() + 32);
  MEMORY[0x253087420]();
  sub_25194E180();
  sub_25194E150();
  (*(v5 + 8))(v8, v4);
  v20 = *(v10 + 8);
  v20(v14, v9);
  sub_25194E160();
  sub_25194E140();
  (*(v0 + 8))(v3, v23);
  v20(v17, v9);
  sub_25194DE84(&qword_27F468530, MEMORY[0x277CC9428]);
  sub_25194E200();
  v20(v19, v9);
  return v24;
}

uint64_t PregnancyModeTimelineViewModel.hash(into:)()
{
  v1 = v0;
  sub_25194E5F0();
  sub_25194DE84(&qword_27F468538, MEMORY[0x277CCB6A8]);
  sub_25194E600();
  v2 = type metadata accessor for PregnancyModeTimelineViewModel();
  v3 = v2[5];
  sub_25194E210();
  sub_25194DE84(&qword_27F468540, MEMORY[0x277CC9578]);
  sub_25194E600();
  v4 = *(v1 + v2[6]);
  sub_25194E6A0();
  v5 = v1 + v2[7];
  sub_25194E600();
  v6 = v1 + v2[8];
  sub_25194E600();
  v7 = *(v1 + v2[9]);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x2530879C0](*&v7);
  v8 = *(v1 + v2[10]);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  return MEMORY[0x2530879C0](*&v8);
}

uint64_t PregnancyModeTimelineViewModel.hashValue.getter()
{
  sub_25194E6C0();
  PregnancyModeTimelineViewModel.hash(into:)();
  return sub_25194E6E0();
}

uint64_t sub_25194DB9C()
{
  sub_25194E6C0();
  PregnancyModeTimelineViewModel.hash(into:)();
  return sub_25194E6E0();
}

uint64_t sub_25194DBE0()
{
  sub_25194E6C0();
  PregnancyModeTimelineViewModel.hash(into:)();
  return sub_25194E6E0();
}

BOOL _s23HealthMenstrualCyclesUI30PregnancyModeTimelineViewModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_25194E5F0();
  sub_25194DE84(&qword_27F468550, MEMORY[0x277CCB6A8]);
  if ((sub_25194E630() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PregnancyModeTimelineViewModel();
  v5 = v4[5];
  if ((sub_25194E1E0() & 1) == 0)
  {
    return 0;
  }

  sub_25194DECC(0, &qword_27F468558, 0x277D82BB8);
  v6 = v4[6];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (sub_25194E690() & 1) != 0 && (v9 = v4[7], (sub_25194E1E0()) && (v10 = v4[8], (sub_25194E1E0()) && *(a1 + v4[9]) == *(a2 + v4[9]))
  {
    return *(a1 + v4[10]) == *(a2 + v4[10]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25194DDB8()
{
  result = sub_25194E5F0();
  if (v1 <= 0x3F)
  {
    result = sub_25194E210();
    if (v2 <= 0x3F)
    {
      result = sub_25194DECC(319, &qword_2811124E8, 0x277CCD0B0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25194DE84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25194DECC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_25194DF48()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F468560 = result;
  return result;
}

uint64_t sub_25194DFA0()
{
  v0 = sub_25194E2B0();
  __swift_allocate_value_buffer(v0, qword_27F468800);
  __swift_project_value_buffer(v0, qword_27F468800);
  if (qword_27F468380 != -1)
  {
    swift_once();
  }

  v1 = qword_27F468560;
  return sub_25194E2A0();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}