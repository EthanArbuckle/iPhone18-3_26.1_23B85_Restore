uint64_t sub_24F0B55E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[8] = a1;
  v8[9] = a2;
  sub_24F92B7F8();
  v8[16] = sub_24F92B7E8();
  v10 = sub_24F92B778();
  v8[17] = v10;
  v8[18] = v9;

  return MEMORY[0x2822009F8](sub_24F0B5688, v10, v9);
}

uint64_t sub_24F0B5688()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  v2 = *(v0 + 112);
  *(v0 + 32) = v1;
  *(v0 + 48) = v2;
  type metadata accessor for BootstrapView();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 152) = Strong;
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_24F0B5758;
  v5 = *(v0 + 64);

  return Bootstrap.run(rootViewController:)(v5, Strong);
}

uint64_t sub_24F0B5758()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_24F0B58D8;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_24F0B5874;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24F0B5874()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F0B58D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F0B5948(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v3[2] = v5;
  v3[3] = v6;
  v3[4] = v7;
  v3[5] = v8;
  v3[6] = v9;
  v3[7] = v10;
  v11 = *(type metadata accessor for BootstrapView() - 8);
  v12 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  v3[8] = v13;
  *v13 = v3;
  v13[1] = sub_24E7AF58C;

  return sub_24F0B55E4(a1, v1 + v12, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24F0B5A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v24 - v13;
  v24[0] = v15;
  v24[1] = v16;
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v24[5] = v20;
  v21 = type metadata accessor for BootstrapView();
  (*(a1 + *(v21 + 72)))();
  sub_24E7896B8(v11, a3, a6);
  v22 = *(v9 + 8);
  v22(v11, a3);
  sub_24E7896B8(v14, a3, a6);
  return (v22)(v14, a3);
}

uint64_t sub_24F0B5BD4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(type metadata accessor for BootstrapView() - 8);
  v7 = v0 + ((*(v6 + 80) + 64) & ~*(v6 + 80));

  return sub_24F0B5A78(v7, v1, v2, v3, v4, v5);
}

uint64_t sub_24F0B5C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v41 = a5;
  v42 = a6;
  v44 = a2;
  v45 = a3;
  v46 = a1;
  v47 = a9;
  v39 = a11;
  v40 = a10;
  v48 = a5;
  v49 = a6;
  v50 = a7;
  v51 = a8;
  v52 = a10;
  v53 = a11;
  v14 = type metadata accessor for BootstrapView();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v37 - v17;
  v43 = *(a7 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v37 - v24;
  v27 = (a4 + *(v26 + 76));
  v28 = *v27;
  v37[1] = v27[1];
  v38 = v28;
  (*(v15 + 16))(v18, a4, v14, v23);
  v29 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v30 = swift_allocObject();
  v31 = v42;
  *(v30 + 2) = v41;
  *(v30 + 3) = v31;
  *(v30 + 4) = a7;
  *(v30 + 5) = a8;
  v32 = v39;
  *(v30 + 6) = v40;
  *(v30 + 7) = v32;
  (*(v15 + 32))(&v30[v29], v18, v14);
  v33 = &v30[(v16 + v29 + 7) & 0xFFFFFFFFFFFFFFF8];
  v34 = v45;
  *v33 = v44;
  *(v33 + 1) = v34;

  v38(v46, sub_24F0B8704, v30);

  sub_24E7896B8(v21, a7, v32);
  v35 = *(v43 + 8);
  v35(v21, a7);
  sub_24E7896B8(v25, a7, v32);
  return (v35)(v25, a7);
}

uint64_t sub_24F0B5F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v13 = v4[6];
  v12 = v4[7];
  v14 = *(type metadata accessor for BootstrapView() - 8);
  return sub_24F0B5C98(a1, a2, a3, v4 + ((*(v14 + 80) + 64) & ~*(v14 + 80)), v8, v9, v10, v11, a4, v13, v12);
}

uint64_t sub_24F0B6010(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_24F921738();
  MEMORY[0x28223BE20](v3 - 8);
  type metadata accessor for BootstrapView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000);
  sub_24F926F38();
  sub_24F921718();
  v4 = sub_24F926F48();
  return a2(v4);
}

uint64_t sub_24F0B6120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v52 = a7;
  v53 = a8;
  v49 = a6;
  v50 = a5;
  v51 = a4;
  v48 = a2;
  v59 = a9;
  v16 = sub_24F92B858();
  v57 = *(v16 - 8);
  v58 = v16;
  MEMORY[0x28223BE20](v16);
  v55 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v62 = a3;
  *(&v62 + 1) = a4;
  v63 = a5;
  v64 = a6;
  v65 = a7;
  v66 = a8;
  v18 = type metadata accessor for BootstrapView();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v46 - v20;
  v54 = *(a3 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F923AD8();
  v25 = sub_24F924038();
  v56 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v47 = &v46 - v29;
  v30 = a1;
  v31 = *(a1 + 16);
  v32 = v48;
  v33 = *(v48 + *(v18 + 68));
  v62 = *v30;
  v63 = v31;
  v33(&v62);
  (*(v19 + 16))(v21, v32, v18);
  v34 = (*(v19 + 80) + 64) & ~*(v19 + 80);
  v35 = swift_allocObject();
  v36 = v50;
  v37 = v51;
  *(v35 + 2) = a3;
  *(v35 + 3) = v37;
  v38 = v49;
  *(v35 + 4) = v36;
  *(v35 + 5) = v38;
  v39 = v53;
  *(v35 + 6) = v52;
  *(v35 + 7) = v39;
  (*(v19 + 32))(&v35[v34], v21, v18);
  v40 = v55;
  sub_24F92B818();
  sub_24F9268E8();

  (*(v57 + 8))(v40, v58);
  (*(v54 + 8))(v24, a3);
  v41 = sub_24F0B70E0(&qword_27F211A48, MEMORY[0x277CDD8B0]);
  v60 = v38;
  v61 = v41;
  WitnessTable = swift_getWitnessTable();
  v43 = v47;
  sub_24E7896B8(v27, v25, WitnessTable);
  v44 = *(v56 + 8);
  v44(v27, v25);
  sub_24E7896B8(v43, v25, WitnessTable);
  return (v44)(v43, v25);
}

uint64_t sub_24F0B6594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = *(type metadata accessor for BootstrapView() - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return sub_24F0B6120(a1, v12, v5, v6, v7, v8, v9, v10, a2);
}

uint64_t sub_24F0B6668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  sub_24F92B7F8();
  v7[15] = sub_24F92B7E8();
  v9 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0B670C, v9, v8);
}

uint64_t sub_24F0B670C()
{
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v3 = *(v0 + 104);

  *(v0 + 16) = v5;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  type metadata accessor for BootstrapView();
  sub_24F0B4C1C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F0B67AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[2] = a2;
  v7[14] = a1;
  v7[3] = a3;
  v7[4] = a4;
  v7[5] = a5;
  v7[6] = a6;
  v7[7] = a7;
  v8 = type metadata accessor for BootstrapView();
  v7[21] = v8;
  v9 = *(v8 - 8);
  v7[22] = v9;
  v7[23] = *(v9 + 64);
  v7[24] = swift_task_alloc();
  sub_24F92B7F8();
  v7[25] = sub_24F92B7E8();
  v11 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0B68CC, v11, v10);
}

uint64_t sub_24F0B68CC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 168);
  v4 = *(v0 + 112);
  v12 = *(v0 + 136);
  v13 = *(v0 + 120);
  v11 = *(v0 + 152);

  sub_24F0B4C1C();
  v5 = [objc_opt_self() sharedCoordinator];
  (*(v2 + 16))(v1, v4, v3);
  v6 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 1) = v13;
  *(v7 + 2) = v12;
  *(v7 + 3) = v11;
  (*(v2 + 32))(&v7[v6], v1, v3);
  *(v0 + 96) = sub_24F0B7F34;
  *(v0 + 104) = v7;
  *(v0 + 64) = MEMORY[0x277D85DD0];
  *(v0 + 72) = 1107296256;
  *(v0 + 80) = sub_24EAF8248;
  *(v0 + 88) = &block_descriptor_112;
  v8 = _Block_copy((v0 + 64));

  [v5 registerAppBootstrapHandler_];
  _Block_release(v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24F0B6AA4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[7] = v7;
  v8 = *(type metadata accessor for BootstrapView() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  v1[8] = v10;
  *v10 = v1;
  v10[1] = sub_24F0B87FC;

  return sub_24F0B67AC(v0 + v9, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_24F0B6BC0()
{
  v0 = sub_24F921738();
  MEMORY[0x28223BE20](v0 - 8);
  if (qword_27F210790 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39CA50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  type metadata accessor for BootstrapView();
  sub_24F0B4C1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000);
  sub_24F926F38();
  sub_24F921718();
  return sub_24F926F48();
}

uint64_t BootstrapView.with(rootViewController:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(*(a1 - 8) + 16))(a2, v2, a1);

  return swift_unknownObjectWeakAssign();
}

uint64_t DefaultBootstrapLoadingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v10[0] = sub_24F925408();
  v1 = *(v10[0] - 8);
  MEMORY[0x28223BE20](v10[0]);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238CC8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238CD0);
  sub_24E602068(&qword_27F238CD8, &qword_27F238CD0);
  sub_24F924048();
  sub_24F9253F8();
  sub_24E602068(&qword_27F238CE0, &qword_27F238CC8);
  sub_24F0B70E0(&qword_27F238CE8, MEMORY[0x277CDE2A0]);
  v8 = v10[0];
  sub_24F926038();
  (*(v1 + 8))(v3, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24F0B70E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F0B7128@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v10[0] = sub_24F925408();
  v1 = *(v10[0] - 8);
  MEMORY[0x28223BE20](v10[0]);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238CC8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238CD0);
  sub_24E602068(&qword_27F238CD8, &qword_27F238CD0);
  sub_24F924048();
  sub_24F9253F8();
  sub_24E602068(&qword_27F238CE0, &qword_27F238CC8);
  sub_24F0B70E0(&qword_27F238CE8, MEMORY[0x277CDE2A0]);
  v8 = v10[0];
  sub_24F926038();
  (*(v1 + 8))(v3, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t DefaultBootstrapErrorView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = sub_24F925408();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238CF0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  v10 = *(v1 + 2);
  v13 = *v1;
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DC8);
  sub_24E602068(&qword_27F219DD0, &qword_27F219DC8);
  sub_24F924048();
  sub_24F9253F8();
  sub_24E602068(qword_27F238CF8, &qword_27F238CF0);
  sub_24F0B70E0(&qword_27F238CE8, MEMORY[0x277CDE2A0]);
  sub_24F926038();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24F0B76A0@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = sub_24F925408();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238CF0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  v10 = *(v1 + 2);
  v13 = *v1;
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DC8);
  sub_24E602068(&qword_27F219DD0, &qword_27F219DC8);
  sub_24F924048();
  sub_24F9253F8();
  sub_24E602068(qword_27F238CF8, &qword_27F238CF0);
  sub_24F0B70E0(&qword_27F238CE8, MEMORY[0x277CDE2A0]);
  sub_24F926038();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_24F0B7920()
{
  type metadata accessor for Bootstrap();
  if (v0 <= 0x3F)
  {
    sub_24E6C5550();
    if (v1 <= 0x3F)
    {
      sub_24EA20668();
      if (v2 <= 0x3F)
      {
        sub_24F0B7C70();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F0B79FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Bootstrap();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 68));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 84);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24F0B7B40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Bootstrap();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 68)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 84);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24F0B7C70()
{
  if (!qword_27F229018)
  {
    sub_24F921738();
    v0 = sub_24F926F68();
    if (!v1)
    {
      atomic_store(v0, &qword_27F229018);
    }
  }
}

uint64_t sub_24F0B7CE8()
{
  sub_24F923AD8();
  sub_24F924038();
  sub_24F0B70E0(&qword_27F211A48, MEMORY[0x277CDD8B0]);
  swift_getWitnessTable();
  sub_24F921CF8();
  sub_24F924038();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE010navigationC5StyleyQrqd__AA010NavigationcE0Rd__lFQOyAA0F5StackVyAA0F4PathV011_JetEngine_aB007LoadingC0VyAA4TextVGG_AA0gfcE0VQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  sub_24F925408();
  sub_24E602068(a4, a2);
  sub_24F0B70E0(&qword_27F238CE8, MEMORY[0x277CDE2A0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F0B7F34()
{
  type metadata accessor for BootstrapView();

  return sub_24F0B6BC0();
}

uint64_t block_copy_helper_112(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_2Tm_2()
{
  v1 = type metadata accessor for BootstrapView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(type metadata accessor for Bootstrap() + 20);
  v4 = type metadata accessor for ASKBootstrapV2(0);
  v5 = v4[5];
  v6 = sub_24F92A468();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v3 + v4[7]);
  v7 = v3 + v4[8];
  if (*(v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  if (*(v3 + v4[9]))
  {
  }

  v8 = v4[13];
  v9 = sub_24F91F4A8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v3 + v4[14];
  if (*(v11 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  v12 = v2 + *(v1 + 84);
  v13 = sub_24F921738();
  (*(*(v13 - 8) + 8))(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000);

  MEMORY[0x2530543E0](v2 + *(v1 + 88));
  return swift_deallocObject();
}

uint64_t sub_24F0B82E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[7] = v7;
  v8 = *(type metadata accessor for BootstrapView() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  v1[8] = v10;
  *v10 = v1;
  v10[1] = sub_24E7AF58C;

  return sub_24F0B6668(v0 + v9, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_24F0B8404()
{
  v1 = type metadata accessor for BootstrapView();
  v15 = *(*(v1 - 8) + 80);
  v2 = v0 + ((v15 + 64) & ~v15);

  v3 = v2 + *(type metadata accessor for Bootstrap() + 20);
  v4 = type metadata accessor for ASKBootstrapV2(0);
  v5 = v4[5];
  v6 = sub_24F92A468();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v3 + v4[7]);
  v7 = v3 + v4[8];
  if (*(v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  if (*(v3 + v4[9]))
  {
  }

  v8 = v4[13];
  v9 = sub_24F91F4A8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v3 + v4[14];
  if (*(v11 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  v12 = v2 + *(v1 + 84);
  v13 = sub_24F921738();
  (*(*(v13 - 8) + 8))(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000);

  MEMORY[0x2530543E0](v2 + *(v1 + 88));

  return swift_deallocObject();
}

uint64_t sub_24F0B8704()
{
  v1 = *(type metadata accessor for BootstrapView() - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  return sub_24F0B6010(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t static JSONContext.makeDefaultContext(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720);
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_24F9285B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  MEMORY[0x28223BE20](v16);
  v33 = &v31 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v31 - v19;
  sub_24F92AB98();
  v35 = a1;
  v21 = sub_24F928EF8();
  if (!v36[0])
  {
    v24 = sub_24F92AB18();
    (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
    goto LABEL_5;
  }

  MEMORY[0x2530504F0](v21);

  v22 = sub_24F92AB18();
  v23 = 1;
  if ((*(*(v22 - 8) + 48))(v20, 1, v22) == 1)
  {
LABEL_5:
    v23 = 0;
  }

  sub_24E601704(v20, &qword_27F2330E0);
  sub_24F928EF8();
  v25 = *(v10 + 48);
  if (v25(v8, 1, v9) == 1)
  {
    sub_24F9285A8();
    if (v25(v8, 1, v9) != 1)
    {
      sub_24E601704(v8, &qword_27F2218B0);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  v36[3] = &type metadata for DiagnosticsAdapter;
  v36[4] = sub_24EB3E414();
  sub_24F928548();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226728);
  sub_24F928528();
  (*(v3 + 8))(v5, v32);
  v26 = *(v10 + 8);
  v26(v12, v9);
  __swift_destroy_boxed_opaque_existential_1(v36);
  LOBYTE(v36[0]) = v23;
  if (qword_27F210CB0 != -1)
  {
    swift_once();
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235068);
  __swift_project_value_buffer(v27, qword_27F39D0C8);
  v28 = v33;
  sub_24F928528();
  v26(v15, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);
  sub_24F928EF8();
  if (!v36[0])
  {
    return (*(v10 + 32))(v34, v28, v9);
  }

  if (qword_27F2105F8 != -1)
  {
    swift_once();
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BF38);
  __swift_project_value_buffer(v29, qword_27F39C540);
  sub_24F928528();
  v26(v28, v9);
  return swift_unknownObjectRelease();
}

uint64_t sub_24F0B8D84@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v71 = a3;
  v91 = sub_24F91EF78();
  v82 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v89 = &v67 - v6;
  v98 = sub_24F91EE38();
  v80 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v75 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v88 = &v67 - v9;
  v10 = sub_24F91F138();
  MEMORY[0x28223BE20](v10 - 8);
  v87 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v67 - v13;
  v15 = sub_24F91F008();
  v76 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v86 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v67 - v18;
  MEMORY[0x28223BE20](v20);
  v74 = &v67 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238D80);
  v96 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v100 = &v67 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238D88);
  MEMORY[0x28223BE20](v24 - 8);
  v92 = &v67 - v25;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238D90);
  v69 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v67 - v26;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238D98);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v99 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v67 - v29;
  v93 = sub_24F91EF48();
  v31 = *(v93 - 1);
  MEMORY[0x28223BE20](v93);
  v33 = &v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for LanguageAwareTextView();
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v67 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v37 + 32);
  *&v36[v38] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  v67 = v36;
  swift_storeEnumTagMultiPayload();
  sub_24F91EF68();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_24F0B9B18();
  sub_24F91EF58();

  (*(v31 + 8))(v33, v93);
  v39 = v92;
  v40 = *(v72 + 16);
  v68 = v30;
  v40(v99, v30, v73);
  sub_24E602068(&qword_27F238DA8, &qword_27F238D98);
  sub_24F92B3F8();
  v85 = sub_24E602068(&qword_27F238DB0, &qword_27F238D90);
  sub_24F92C4D8();
  v41 = *(v96 + 48);
  v96 += 48;
  v84 = v41;
  if (v41(v39, 1, v22) != 1)
  {
    ++v82;
    ++v80;
    v93 = (v76 + 32);
    v79 = (v76 + 56);
    v77 = (v76 + 8);
    v99 = MEMORY[0x277D84F90];
    v78 = (v76 + 48);
    v97 = a1;
    v83 = v22;
    v81 = v15;
    v44 = v89;
    while (1)
    {
      sub_24F0B9C14(v39, v100);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D330);
      sub_24E602068(&qword_27F22D340, &qword_27F22D330);
      sub_24F91F058();
      sub_24F91F078();
      v45 = v88;
      sub_24F91EE18();
      sub_24F0BA7A4(&qword_27F225C00, MEMORY[0x277CC8B30]);
      v46 = v98;
      sub_24F92BB88();
      v47 = v19;
      v48 = v14;
      v49 = v90;
      sub_24F92BC08();
      sub_24F0BA7A4(&unk_27F22D350, MEMORY[0x277CC8C20]);
      v50 = v91;
      v51 = sub_24F92AFF8();
      v52 = *v82;
      v53 = v49;
      v14 = v48;
      v19 = v47;
      (*v82)(v53, v50);
      v52(v44, v50);
      v54 = v45;
      v15 = v81;
      (*v80)(v54, v46);
      if ((v51 & 1) == 0)
      {
        sub_24F91EE18();
        sub_24F0BA7A4(&qword_27F238DB8, MEMORY[0x277CC8B30]);
        if (sub_24F92B3B8() == 10 && v55 == 0xE100000000000000)
        {
        }

        else
        {
          v56 = sub_24F92CE08();

          if ((v56 & 1) == 0)
          {
            (*v93)(v14, v47, v15);
            v57 = 0;
            goto LABEL_13;
          }
        }
      }

      (*v77)(v47, v15);
      v57 = 1;
LABEL_13:
      (*v79)(v14, v57, 1, v15);
      sub_24E601704(v100, &qword_27F238D80);
      v58 = (*v78)(v14, 1, v15);
      a1 = v97;
      v59 = v83;
      if (v58 == 1)
      {
        sub_24E601704(v14, &qword_27F215340);
      }

      else
      {
        v60 = *v93;
        v61 = v74;
        (*v93)(v74, v14, v15);
        v60(v86, v61, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = sub_24E619A60(0, *(v99 + 2) + 1, 1, v99);
        }

        v63 = *(v99 + 2);
        v62 = *(v99 + 3);
        v64 = v76;
        if (v63 >= v62 >> 1)
        {
          v66 = sub_24E619A60(v62 > 1, v63 + 1, 1, v99);
          v64 = v76;
          v99 = v66;
        }

        v65 = v99;
        *(v99 + 2) = v63 + 1;
        v60(&v65[((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v63], v86, v15);
        a1 = v97;
      }

      v39 = v92;
      sub_24F92C4D8();
      if (v84(v39, 1, v59) == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v99 = MEMORY[0x277D84F90];
LABEL_3:
  (*(v69 + 8))(v94, v95);
  (*(v72 + 8))(v68, v73);
  v42 = v67;
  *v67 = v99;
  *(v42 + 8) = v70;
  sub_24F0199CC(v42, v71);
  return (*(v76 + 8))(a1, v15);
}

uint64_t type metadata accessor for LanguageAwareTextView()
{
  result = qword_27F238DC8;
  if (!qword_27F238DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F0B9B18()
{
  result = qword_27F238DA0;
  if (!qword_27F238DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238DA0);
  }

  return result;
}

void sub_24F0B9B6C()
{
  sub_24F0B9B18();
  sub_24F91F248();
  __break(1u);
}

uint64_t sub_24F0B9C14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238D80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_24F0B9C84@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238E10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_24F923F78();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F91F008();
  v14 = MEMORY[0x28223BE20](v13);
  (*(v16 + 16))(&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  v17 = sub_24F925DF8();
  v19 = v18;
  v20 = *(a2 + 8);
  v38 = v21;
  v39 = v17;
  v37 = v22;
  if (v20)
  {
    if (v20 == 1)
    {
      sub_24F927618();
    }

    else
    {
      sub_24F927638();
    }
  }

  else
  {
    sub_24F927628();
  }

  sub_24F9242E8();
  v23 = v19 & 1;
  v48 = v19 & 1;
  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();
  sub_24F0B9B18();
  sub_24F91F028();
  v25 = v40;
  if (v40)
  {
    v26 = [v40 baseWritingDirection];

    v27 = MEMORY[0x277CDFA90];
    if (v26 != 1)
    {
      v27 = MEMORY[0x277CDFA88];
    }

    (*(v10 + 104))(v8, *v27, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    type metadata accessor for LanguageAwareTextView();
    sub_24F7699B0(v12);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_24E601704(v8, &qword_27F238E10);
    }
  }

  v28 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238DF0) + 36));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224AE0);
  (*(v10 + 32))(v28 + *(v29 + 28), v12, v9);
  *v28 = v24;
  v30 = v38;
  *a3 = v39;
  *(a3 + 8) = v30;
  *(a3 + 16) = v23;
  v31 = KeyPath;
  *(a3 + 24) = v37;
  v32 = v46;
  *(a3 + 96) = v45;
  *(a3 + 112) = v32;
  *(a3 + 128) = v47;
  v33 = v42;
  *(a3 + 32) = v41;
  *(a3 + 48) = v33;
  result = v44;
  *(a3 + 64) = v43;
  *(a3 + 80) = result;
  *(a3 + 144) = v31;
  *(a3 + 152) = v20;
  return result;
}

uint64_t sub_24F0BA098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  *a2 = sub_24F924C88();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238DE0);
  v9[1] = *v2;
  swift_getKeyPath();
  sub_24F0BA5A4(v2, v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_24F0199CC(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238DE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238DF0);
  sub_24E602068(&qword_27F238DF8, &qword_27F238DE8);
  sub_24F0BA7A4(&qword_27F238E00, MEMORY[0x277CC8C40]);
  sub_24F0BA7EC();
  return sub_24F927228();
}

uint64_t sub_24F0BA2B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24F0BA388(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F0BA438()
{
  sub_24F0BA524(319, &qword_27F238DD8, MEMORY[0x277CC8C40], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_24F0BA524(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F0BA524(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F0BA5A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageAwareTextView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F0BA608()
{
  v1 = (type metadata accessor for LanguageAwareTextView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923F78();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_24F0BA724@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LanguageAwareTextView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  *&result = sub_24F0B9C84(a1, v6, a2).n128_u64[0];
  return result;
}

uint64_t sub_24F0BA7A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F0BA7EC()
{
  result = qword_27F238E08;
  if (!qword_27F238E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238DF0);
    sub_24E631220();
    sub_24E602068(&qword_27F224BE0, &qword_27F224AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238E08);
  }

  return result;
}

uint64_t sub_24F0BA8F0()
{
  sub_24F0BD334();
  sub_24F924868();
  return v1;
}

double sub_24F0BA92C()
{
  type metadata accessor for ShelfGeometryEnvironmentValues();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  v0 = sub_24F924888();
  if (!v0)
  {
    return 0.0;
  }

  v1 = v0;
  swift_getKeyPath();
  sub_24F91FD88();

  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_24F0BAA0C(double a1)
{
  type metadata accessor for ShelfGeometryEnvironmentValues();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  if (sub_24F924888())
  {
  }

  else
  {
    swift_allocObject();
    sub_24F0BCFC8();
    sub_24F924898();
  }

  result = sub_24F924888();
  if (result)
  {
    if (*(result + 16) == a1)
    {
      *(result + 16) = a1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F91FD78();
    }
  }

  return result;
}

double sub_24F0BABCC()
{
  type metadata accessor for ShelfGeometryEnvironmentValues();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  v0 = sub_24F924888();
  if (!v0)
  {
    return 0.0;
  }

  v1 = v0;
  swift_getKeyPath();
  sub_24F91FD88();

  v2 = *(v1 + 32);

  return v2;
}

uint64_t sub_24F0BACAC(double a1)
{
  type metadata accessor for ShelfGeometryEnvironmentValues();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  if (sub_24F924888())
  {
  }

  else
  {
    swift_allocObject();
    sub_24F0BCFC8();
    sub_24F924898();
  }

  result = sub_24F924888();
  if (result)
  {
    if (*(result + 32) == a1)
    {
      *(result + 32) = a1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F91FD78();
    }
  }

  return result;
}

uint64_t sub_24F0BAE6C@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ShelfGeometryEnvironmentValues();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  result = sub_24F924888();
  if (result)
  {
    v3 = result;
    swift_getKeyPath();
    sub_24F91FD88();

    v4 = *(v3 + 49);
    v5 = *(v3 + 50);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_24F0BAF5C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ShelfGeometryEnvironmentValues();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  if (sub_24F924888())
  {
  }

  else
  {
    swift_allocObject();
    sub_24F0BCFC8();
    sub_24F924898();
  }

  result = sub_24F924888();
  if (result)
  {
    v4 = result;
    v5 = *(result + 50);
    if (sub_24F0C8EE8(*(result + 49), v1) & 1) != 0 && (sub_24F0C8EE8(v5, v2))
    {
      *(v4 + 49) = v1;
      *(v4 + 50) = v2;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F91FD78();
    }
  }

  return result;
}

uint64_t sub_24F0BB140@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ShelfGeometryEnvironmentValues();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  result = sub_24F924888();
  if (result)
  {
    v3 = result;
    swift_getKeyPath();
    sub_24F91FD88();

    v4 = *(v3 + 40);
    v5 = *(v3 + 48);
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_24F0BB230(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  type metadata accessor for ShelfGeometryEnvironmentValues();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  if (sub_24F924888())
  {
  }

  else
  {
    swift_allocObject();
    sub_24F0BCFC8();
    sub_24F924898();
  }

  result = sub_24F924888();
  if (result)
  {
    if (*(result + 48))
    {
      if (!v2)
      {
LABEL_7:
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_24F91FD78();
      }
    }

    else
    {
      if (*(result + 40) == v1)
      {
        v5 = v2;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        goto LABEL_7;
      }
    }

    *(result + 40) = v1;
    *(result + 48) = v2;
  }

  return result;
}

uint64_t sub_24F0BB408()
{
  type metadata accessor for ShelfGeometryEnvironmentValues();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  v0 = sub_24F924888();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  swift_getKeyPath();
  sub_24F91FD88();

  v2 = *(v1 + 51);

  return v2;
}

uint64_t sub_24F0BB4E0(unsigned __int8 a1)
{
  type metadata accessor for ShelfGeometryEnvironmentValues();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  if (sub_24F924888())
  {
  }

  else
  {
    swift_allocObject();
    sub_24F0BCFC8();
    sub_24F924898();
  }

  result = sub_24F924888();
  if (result)
  {
    if (*(result + 51) == a1)
    {
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F91FD78();
    }
  }

  return result;
}

uint64_t sub_24F0BB690@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238E58);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - v3;
  type metadata accessor for ShelfGeometryEnvironmentValues();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  v5 = sub_24F924888();
  if (v5)
  {
    v6 = v5;
    swift_getKeyPath();
    v13[1] = v6;
    sub_24F91FD88();

    v7 = OBJC_IVAR____TtC12GameStoreKitP33_E483CAF0DCF2AB3635D5C104C16D5D3830ShelfGeometryEnvironmentValues__gridSpacing;
    swift_beginAccess();
    v8 = sub_24F921998();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v4, v6 + v7, v8);

    (*(v9 + 56))(v4, 0, 1, v8);
    return (*(v9 + 32))(a1, v4, v8);
  }

  else
  {
    v11 = sub_24F921998();
    v12 = *(v11 - 8);
    (*(v12 + 56))(v4, 1, 1, v11);
    sub_24F921958();
    result = (*(v12 + 48))(v4, 1, v11);
    if (result != 1)
    {
      return sub_24F0BDA6C(v4);
    }
  }

  return result;
}

uint64_t sub_24F0BB908(uint64_t a1)
{
  v2 = sub_24F921998();
  v8 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ShelfGeometryEnvironmentValues();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  if (sub_24F924888())
  {
  }

  else
  {
    swift_allocObject();
    sub_24F0BCFC8();
    sub_24F924898();
  }

  if (sub_24F924888())
  {
    (*(v8 + 16))(v4, a1, v2);
    sub_24F0BCCAC(v4);

    return (*(v8 + 8))(a1, v2);
  }

  else
  {
    v6 = *(v8 + 8);

    return v6(a1, v2);
  }
}

double sub_24F0BBAFC()
{
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  sub_24F91FD88();

  return *(v0 + 16);
}

double sub_24F0BBB9C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  sub_24F91FD88();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

void sub_24F0BBC6C(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
    sub_24F91FD78();
  }
}

double sub_24F0BBD84()
{
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  sub_24F91FD88();

  return *(v0 + 24);
}

double sub_24F0BBE24@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  sub_24F91FD88();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

void sub_24F0BBECC(double a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
    sub_24F91FD78();
  }
}

double sub_24F0BBFE4()
{
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  sub_24F91FD88();

  return *(v0 + 32);
}

double sub_24F0BC084@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  sub_24F91FD88();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

void sub_24F0BC154(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
    sub_24F91FD78();
  }
}

uint64_t sub_24F0BC26C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  sub_24F91FD88();

  v4 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_24F0BC31C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  sub_24F91FD88();

  v5 = *(v3 + 48);
  *a2 = *(v3 + 40);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_24F0BC3CC(uint64_t result)
{
  v2 = *result;
  v3 = *(result + 8);
  if (*(v1 + 48))
  {
    if ((*(result + 8) & 1) == 0)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
      sub_24F91FD78();
    }
  }

  else
  {
    if (*(v1 + 40) == v2)
    {
      v5 = *(result + 8);
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t sub_24F0BC4F4@<X0>(_WORD *a1@<X8>)
{
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  sub_24F91FD88();

  *a1 = *(v1 + 49);
  return result;
}

uint64_t sub_24F0BC59C@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  sub_24F91FD88();

  *a2 = *(v3 + 49);
  return result;
}

uint64_t sub_24F0BC644(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 50);
  if (sub_24F0C8EE8(*(v1 + 49), *a1) & 1) != 0 && (result = sub_24F0C8EE8(v4, v3), (result))
  {
    *(v1 + 49) = v2;
    *(v1 + 50) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24F0BC778()
{
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  sub_24F91FD88();

  return *(v0 + 51);
}

uint64_t sub_24F0BC818@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  sub_24F91FD88();

  *a2 = *(v3 + 51);
  return result;
}

uint64_t sub_24F0BC8E8(uint64_t result)
{
  if (*(v1 + 51) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24F0BC9F0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKitP33_E483CAF0DCF2AB3635D5C104C16D5D3830ShelfGeometryEnvironmentValues__gridSpacing;
  swift_beginAccess();
  v4 = sub_24F921998();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_24F0BCAE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKitP33_E483CAF0DCF2AB3635D5C104C16D5D3830ShelfGeometryEnvironmentValues__gridSpacing;
  swift_beginAccess();
  v5 = sub_24F921998();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_24F0BCBE0(uint64_t a1)
{
  v2 = sub_24F921998();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_24F0BCCAC(v5);
}

uint64_t sub_24F0BCCAC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F921998();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12GameStoreKitP33_E483CAF0DCF2AB3635D5C104C16D5D3830ShelfGeometryEnvironmentValues__gridSpacing;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_24F0BD9C4(&qword_27F238E50, MEMORY[0x277D7EB40]);
  v9 = sub_24F92AFF8();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
    sub_24F91FD78();
  }

  return (v10)(a1, v4);
}

uint64_t sub_24F0BCF2C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKitP33_E483CAF0DCF2AB3635D5C104C16D5D3830ShelfGeometryEnvironmentValues__gridSpacing;
  swift_beginAccess();
  v5 = sub_24F921998();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_24F0BCFC8()
{
  v1 = sub_24F921998();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91FDB8();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 1;
  *(v0 + 49) = 0;
  *(v0 + 51) = 0;
  sub_24F921958();
  (*(v2 + 32))(v0 + OBJC_IVAR____TtC12GameStoreKitP33_E483CAF0DCF2AB3635D5C104C16D5D3830ShelfGeometryEnvironmentValues__gridSpacing, v4, v1);
  return v0;
}

uint64_t sub_24F0BD0C4()
{
  v1 = OBJC_IVAR____TtC12GameStoreKitP33_E483CAF0DCF2AB3635D5C104C16D5D3830ShelfGeometryEnvironmentValues__gridSpacing;
  v2 = sub_24F921998();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12GameStoreKitP33_E483CAF0DCF2AB3635D5C104C16D5D3830ShelfGeometryEnvironmentValues___observationRegistrar;
  v4 = sub_24F91FDC8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShelfGeometryEnvironmentValues()
{
  result = qword_27F238E38;
  if (!qword_27F238E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0BD1F4()
{
  result = sub_24F921998();
  if (v1 <= 0x3F)
  {
    result = sub_24F91FDC8();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_24F0BD334()
{
  result = qword_27F238E48;
  if (!qword_27F238E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238E48);
  }

  return result;
}

uint64_t sub_24F0BD388(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F921998();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  swift_getKeyPath();
  v34 = a1;
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  sub_24F91FD88();

  v9 = *(a1 + 16);
  swift_getKeyPath();
  v34 = a2;
  sub_24F91FD88();

  if (v9 != *(a2 + 16))
  {
    goto LABEL_14;
  }

  swift_getKeyPath();
  v34 = a1;
  sub_24F91FD88();

  v10 = *(a1 + 24);
  swift_getKeyPath();
  v34 = a2;
  sub_24F91FD88();

  if (v10 != *(a2 + 24))
  {
    goto LABEL_14;
  }

  swift_getKeyPath();
  v34 = a1;
  sub_24F91FD88();

  v11 = *(a1 + 32);
  swift_getKeyPath();
  v34 = a2;
  sub_24F91FD88();

  if (v11 != *(a2 + 32))
  {
    goto LABEL_14;
  }

  v30 = v4;
  swift_getKeyPath();
  v34 = a1;
  sub_24F91FD88();

  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  swift_getKeyPath();
  v34 = a2;
  sub_24F91FD88();

  v14 = *(a2 + 48);
  if (v13)
  {
    if (!*(a2 + 48))
    {
LABEL_14:
      v26 = 0;
      return v26 & 1;
    }
  }

  else
  {
    if (v12 != *(a2 + 40))
    {
      v14 = 1;
    }

    if (v14)
    {
      goto LABEL_14;
    }
  }

  swift_getKeyPath();
  v34 = a1;
  sub_24F91FD88();

  v15 = *(a1 + 50);
  v16 = *(a1 + 49);
  swift_getKeyPath();
  v34 = a2;
  sub_24F91FD88();

  v17 = *(a2 + 50);
  if ((sub_24F0C8EE8(v16, *(a2 + 49)) & 1) == 0)
  {
    goto LABEL_14;
  }

  if ((sub_24F0C8EE8(v15, v17) & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_getKeyPath();
  v34 = a1;
  sub_24F91FD88();

  v18 = *(a1 + 51);
  swift_getKeyPath();
  v34 = a2;
  sub_24F91FD88();

  if (v18 != *(a2 + 51))
  {
    goto LABEL_14;
  }

  swift_getKeyPath();
  v34 = a1;
  sub_24F91FD88();

  v19 = OBJC_IVAR____TtC12GameStoreKitP33_E483CAF0DCF2AB3635D5C104C16D5D3830ShelfGeometryEnvironmentValues__gridSpacing;
  swift_beginAccess();
  v20 = v32;
  v21 = *(v32 + 16);
  v22 = v30;
  v21(v8, a1 + v19, v30);
  swift_getKeyPath();
  v33 = a2;
  sub_24F91FD88();

  v23 = OBJC_IVAR____TtC12GameStoreKitP33_E483CAF0DCF2AB3635D5C104C16D5D3830ShelfGeometryEnvironmentValues__gridSpacing;
  swift_beginAccess();
  v24 = a2 + v23;
  v25 = v31;
  v21(v31, v24, v22);
  v26 = MEMORY[0x2530472F0](v8, v25);
  v27 = *(v20 + 8);
  v27(v25, v22);
  v27(v8, v22);
  return v26 & 1;
}

uint64_t sub_24F0BD940(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return sub_24F0BC3CC(&v3);
}

uint64_t sub_24F0BD9C4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24F0BDA38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 48) = v2;
}

double sub_24F0BDA4C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

uint64_t sub_24F0BDA6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238E58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GameCenterPlayerProfileAction.playerId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit29GameCenterPlayerProfileAction_playerId);

  return v1;
}

uint64_t GameCenterPlayerProfileAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v32 = *v3;
  v5 = sub_24F9285B8();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v35 = a1;
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v17 = *(v8 + 8);
  v17(v13, v7);
  if (v16)
  {
    v32 = v17;
    v18 = v7;
    v19 = v35;
    v20 = v14 == 0xD000000000000016 && 0x800000024FA6B170 == v16;
    if (v20 || (sub_24F92CE08() & 1) != 0)
    {

      v21 = &v3[OBJC_IVAR____TtC12GameStoreKit29GameCenterPlayerProfileAction_playerId];
      *v21 = 0;
      *(v21 + 1) = 0;
    }

    else
    {
      v25 = &v3[OBJC_IVAR____TtC12GameStoreKit29GameCenterPlayerProfileAction_playerId];
      *v25 = v14;
      v25[1] = v16;
    }

    (*(v8 + 16))(v11, v19, v7);
    v26 = v36;
    v27 = v37;
    v7 = v33;
    v28 = v38;
    (*(v36 + 16))(v33, v38, v37);
    v29 = v34;
    v30 = Action.init(deserializing:using:)(v11, v7);
    if (!v29)
    {
      v7 = v30;
    }

    (*(v26 + 8))(v28, v27);
    v32(v19, v18);
  }

  else
  {
    v22 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v23 = 0x6449726579616C70;
    v24 = v32;
    v23[1] = 0xE800000000000000;
    v23[2] = v24;
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D22530], v22);
    swift_willThrow();
    (*(v36 + 8))(v38, v37);
    v17(v35, v7);
    swift_deallocPartialClassInstance();
  }

  return v7;
}

void *GameCenterPlayerProfileAction.__allocating_init(playerId:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v28[0] = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v28 - v10;
  v12 = sub_24F928AD8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = (v16 + OBJC_IVAR____TtC12GameStoreKit29GameCenterPlayerProfileAction_playerId);
  *v17 = a1;
  v17[1] = a2;
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  (*(v13 + 16))(v15, a3, v12);
  v18 = sub_24F929608();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = (v16 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v19 = 0u;
  v19[1] = 0u;
  v20 = v16 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v32, &v29);
  if (*(&v30 + 1))
  {
    v21 = v30;
    *v20 = v29;
    *(v20 + 1) = v21;
    *(v20 + 4) = v31;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v23 = v6;
    v24 = a3;
    v26 = v25;
    (*(v28[0] + 8))(v8, v23);
    v28[1] = v22;
    v28[2] = v26;
    a3 = v24;
    sub_24F92C7F8();
    sub_24E601704(&v29, &qword_27F235830);
  }

  (*(v13 + 8))(a3, v12);
  sub_24E601704(v32, &qword_27F235830);
  sub_24E65E0D4(v11, v16 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v16[2] = 0xD000000000000021;
  v16[3] = 0x800000024FA6B190;
  v16[4] = 0;
  v16[5] = 0;
  (*(v13 + 32))(v16 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v15, v12);
  return v16;
}

void *GameCenterPlayerProfileAction.init(playerId:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v27[0] = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v27 - v12;
  v14 = sub_24F928AD8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (v4 + OBJC_IVAR____TtC12GameStoreKit29GameCenterPlayerProfileAction_playerId);
  *v18 = a1;
  v18[1] = a2;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  (*(v15 + 16))(v17, a3, v14);
  v19 = sub_24F929608();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = (v4 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v20 = 0u;
  v20[1] = 0u;
  sub_24E65E064(v34, &v28);
  if (*(&v29 + 1))
  {
    v31 = v28;
    v32 = v29;
    v33 = v30;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v23 = v22;
    (*(v27[0] + 8))(v10, v8);
    v27[1] = v21;
    v27[2] = v23;
    sub_24F92C7F8();
    sub_24E601704(&v28, &qword_27F235830);
  }

  (*(v15 + 8))(a3, v14);
  sub_24E601704(v34, &qword_27F235830);
  v24 = v4 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v24 + 4) = v33;
  v25 = v32;
  *v24 = v31;
  *(v24 + 1) = v25;
  sub_24E65E0D4(v13, v4 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v4[2] = 0xD000000000000021;
  v4[3] = 0x800000024FA6B190;
  v4[4] = 0;
  v4[5] = 0;
  (*(v15 + 32))(v4 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v17, v14);
  return v4;
}

uint64_t GameCenterPlayerProfileAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t GameCenterPlayerProfileAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GameCenterPlayerProfileAction()
{
  result = qword_27F238E60;
  if (!qword_27F238E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0BEA50(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for Leaderboard.LeaderboardType(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[14];

  return v15(v16, a2, v14);
}

uint64_t sub_24F0BEBE8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Leaderboard.LeaderboardType(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[14];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for LeaderboardRow()
{
  result = qword_27F238E70;
  if (!qword_27F238E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F0BEDB8()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Leaderboard.LeaderboardType(319);
    if (v1 <= 0x3F)
    {
      sub_24F0BEFB0(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24F0BEFB0(319, &qword_27F2191B0, type metadata accessor for Player, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_24F0BEF60();
          if (v4 <= 0x3F)
          {
            sub_24E61C8D4();
            if (v5 <= 0x3F)
            {
              sub_24F0BEFB0(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_24F0BEF60()
{
  if (!qword_27F2169A8)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2169A8);
    }
  }
}

void sub_24F0BEFB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24F0BF014(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 25705;
    v6 = 0x6B726F77747261;
    v7 = 0x656C746974;
    if (a1 != 3)
    {
      v7 = 0x526C6C617265766FLL;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 1701869940;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    if (a1 == 9)
    {
      v1 = 0x6575676573;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000013;
    }

    v2 = 0xD000000000000010;
    v3 = 0xD000000000000015;
    if (a1 != 6)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24F0BF170(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238FC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F0C22F0();
  sub_24F92D128();
  LOBYTE(v18) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for LeaderboardRow();
    LOBYTE(v18) = 1;
    type metadata accessor for Leaderboard.LeaderboardType(0);
    sub_24F0C250C(&qword_27F238FC8, type metadata accessor for Leaderboard.LeaderboardType);
    sub_24F92CD48();
    LOBYTE(v18) = 2;
    sub_24F9289E8();
    sub_24F0C250C(&qword_27F214060, MEMORY[0x277D21C48]);
    sub_24F92CCF8();
    LOBYTE(v18) = 3;
    sub_24F92CD08();
    LOBYTE(v18) = 4;
    sub_24F92CD38();
    LOBYTE(v18) = 5;
    sub_24F92CD38();
    LOBYTE(v18) = 6;
    sub_24F92CD38();
    v18 = *(v3 + *(v9 + 44));
    v24 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
    sub_24F0C23A8(&qword_27F21BC30, &qword_27F213E28);
    sub_24F92CD48();
    v10 = (v3 + *(v9 + 48));
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v14 = v10[4];
    v15 = v10[5];
    v18 = *v10;
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v24 = 8;
    sub_24E68FE2C(v18, v11);
    sub_24F005230();
    sub_24F92CCF8();
    sub_24E687F7C(v18, v19);
    LOBYTE(v18) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    LOBYTE(v18) = 10;
    sub_24F929608();
    sub_24F0C250C(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F0BF69C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v5 - 8);
  *&v45 = &v42 - v6;
  v7 = type metadata accessor for Leaderboard.LeaderboardType(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238FA8);
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v11 = &v42 - v10;
  v12 = type metadata accessor for LeaderboardRow();
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 24);
  v17 = sub_24F9289E8();
  v18 = *(*(v17 - 8) + 56);
  v54 = v16;
  v18(&v14[v16], 1, 1, v17);
  v19 = &v14[v12[12]];
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  v53 = v19;
  *v19 = 0u;
  v20 = &v14[v12[13]];
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v52 = v20;
  sub_24E61DA68(&v56, v20, qword_27F21B590);
  v21 = v12[14];
  v22 = sub_24F929608();
  v23 = *(*(v22 - 8) + 56);
  v50 = v21;
  v55 = v14;
  v23(&v14[v21], 1, 1, v22);
  v24 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24F0C22F0();
  v47 = v11;
  v25 = v49;
  sub_24F92D108();
  if (v25)
  {
    v26 = v55;
    __swift_destroy_boxed_opaque_existential_1(v51);
    sub_24E601704(v26 + v54, &qword_27F213FB0);
    sub_24E687F7C(*v53, v53[1]);
    sub_24E601704(v52, qword_27F24EC90);
    return sub_24E601704(v26 + v50, &qword_27F213E68);
  }

  else
  {
    *&v42 = v7;
    v49 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v60 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v27 = v57;
    v28 = v55;
    *v55 = v56;
    v28[1] = v27;
    *(v28 + 4) = v58;
    LOBYTE(v56) = 1;
    sub_24F0C250C(&qword_27F238FB8, type metadata accessor for Leaderboard.LeaderboardType);
    sub_24F92CC68();
    sub_24F0C2344(v9, v28 + v49[5]);
    LOBYTE(v56) = 2;
    sub_24F0C250C(&qword_27F214018, MEMORY[0x277D21C48]);
    v29 = v45;
    sub_24F92CC18();
    sub_24E61DA68(v29, v28 + v54, &qword_27F213FB0);
    LOBYTE(v56) = 3;
    v30 = sub_24F92CC28();
    v31 = v49;
    v32 = (v28 + v49[7]);
    *v32 = v30;
    v32[1] = v33;
    LOBYTE(v56) = 4;
    *(v28 + v31[8]) = sub_24F92CC58();
    LOBYTE(v56) = 5;
    *(v28 + v31[9]) = sub_24F92CC58();
    LOBYTE(v56) = 6;
    *(v28 + v31[10]) = sub_24F92CC58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
    v60 = 7;
    sub_24F0C23A8(&qword_27F2196A8, &qword_27F213E38);
    sub_24F92CC68();
    *(v55 + v49[11]) = v56;
    v60 = 8;
    sub_24E688020();
    sub_24F92CC18();
    v35 = v58;
    v34 = v59;
    v36 = v53;
    v37 = *v53;
    v38 = v53[1];
    v45 = v56;
    v42 = v57;
    sub_24E687F7C(v37, v38);
    v39 = v42;
    *v36 = v45;
    *(v36 + 1) = v39;
    v36[4] = v35;
    v36[5] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v60 = 9;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v56, v52, qword_27F24EC90);
    LOBYTE(v56) = 10;
    sub_24F0C250C(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    (*(v46 + 8))(v47, v48);
    v40 = v55;
    sub_24E61DA68(v44, v55 + v50, &qword_27F213E68);
    sub_24F0C2444(v40, v43, type metadata accessor for LeaderboardRow);
    __swift_destroy_boxed_opaque_existential_1(v51);
    return sub_24F0C24AC(v40, type metadata accessor for LeaderboardRow);
  }
}

uint64_t sub_24F0C0178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F0C26E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F0C01A0(uint64_t a1)
{
  v2 = sub_24F0C22F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F0C01DC(uint64_t a1)
{
  v2 = sub_24F0C22F0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24F0C0218@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(v2 + *(a1 + 52), v6, qword_27F24EC90);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

unint64_t sub_24F0C0328()
{
  result = qword_27F238E80;
  if (!qword_27F238E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238E80);
  }

  return result;
}

uint64_t sub_24F0C037C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a1;
  v44 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40);
  MEMORY[0x28223BE20](v42);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238E98);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238EA0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238EA8);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238EB0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  *v7 = sub_24F9249A8();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238EB8);
  sub_24F0C0910(a1, v3, &v7[*(v19 + 44)]);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v7, v11, &qword_27F238E98);
  v20 = &v11[*(v9 + 44)];
  v21 = v52;
  *(v20 + 4) = v51;
  *(v20 + 5) = v21;
  *(v20 + 6) = v53;
  v22 = v48;
  *v20 = v47;
  *(v20 + 1) = v22;
  v23 = v50;
  *(v20 + 2) = v49;
  *(v20 + 3) = v23;
  v24 = v3[4];
  v25 = &v15[*(v13 + 44)];
  v26 = *(sub_24F924258() + 20);
  v27 = *MEMORY[0x277CE0118];
  v28 = sub_24F924B38();
  (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
  *v25 = v24;
  *(v25 + 1) = v24;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CB48);
  v30 = *(v29 + 36);
  v31 = type metadata accessor for GradientBackground(0);
  (*(*(v31 - 8) + 56))(&v25[v30], 1, 1, v31);
  *&v25[*(v29 + 40)] = 0;
  sub_24E6009C8(v11, v15, &qword_27F238EA0);
  v32 = sub_24F927618();
  v34 = v33;
  v43 = v16;
  v35 = &v18[*(v16 + 36)];
  v36 = sub_24E6A4C1C();
  sub_24F924B68();
  v45 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E810);
  v46[0] = &type metadata for GameOverlayViewPredicate;
  v46[1] = v36;
  swift_getOpaqueTypeConformance2();
  sub_24F0C1E88();
  sub_24F927578();
  v37 = &v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238ED8) + 36)];
  *v37 = v32;
  v37[1] = v34;
  sub_24E6009C8(v15, v18, &qword_27F238EA8);
  v38 = type metadata accessor for LeaderboardRow();
  sub_24E60169C(v41 + *(v38 + 52), v46, qword_27F24EC90);
  sub_24E601704(v46, qword_27F21B590);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v39 = sub_24F9248C8();
  __swift_project_value_buffer(v39, qword_27F39F078);
  sub_24F0C1F40();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return sub_24E601704(v18, &qword_27F238EB0);
}

uint64_t sub_24F0C0910@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v42 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F08);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F10);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v19 = type metadata accessor for LeaderboardRow();
  sub_24E60169C(a1 + *(v19 + 24), v18, &qword_27F213FB0);
  v20 = *a2;
  sub_24F927618();
  sub_24F9238C8();
  v21 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F18) + 36)];
  v22 = v44;
  *v21 = v43;
  *(v21 + 1) = v22;
  *(v21 + 2) = v45;
  v23 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F20) + 36)];
  v24 = *(sub_24F924258() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_24F924B38();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  *v23 = v20;
  *(v23 + 1) = v20;
  *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8) + 36)] = 256;
  LOBYTE(v25) = sub_24F925808();
  sub_24F923318();
  v27 = &v18[*(v13 + 44)];
  *v27 = v25;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  *v11 = sub_24F924C98();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F28);
  sub_24F0C0CB8(v41, a2, &v11[*(v32 + 44)]);
  LOBYTE(a2) = sub_24F925858();
  sub_24F923318();
  v33 = &v11[*(v6 + 44)];
  *v33 = a2;
  *(v33 + 1) = v34;
  *(v33 + 2) = v35;
  *(v33 + 3) = v36;
  *(v33 + 4) = v37;
  v33[40] = 0;
  sub_24E60169C(v18, v15, &qword_27F238F10);
  sub_24E60169C(v11, v8, &qword_27F238F08);
  v38 = v42;
  sub_24E60169C(v15, v42, &qword_27F238F10);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F30);
  sub_24E60169C(v8, v38 + *(v39 + 48), &qword_27F238F08);
  sub_24E601704(v11, &qword_27F238F08);
  sub_24E601704(v18, &qword_27F238F10);
  sub_24E601704(v8, &qword_27F238F08);
  return sub_24E601704(v15, &qword_27F238F10);
}

uint64_t sub_24F0C0CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v104 = a2;
  v108 = a3;
  v4 = sub_24F9259C8();
  v97 = *(v4 - 8);
  v98 = v4;
  MEMORY[0x28223BE20](v4);
  v94 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F38);
  MEMORY[0x28223BE20](v96);
  v95 = &v88 - v6;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F40);
  MEMORY[0x28223BE20](v99);
  v103 = &v88 - v7;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F48);
  MEMORY[0x28223BE20](v101);
  v107 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v102 = &v88 - v10;
  MEMORY[0x28223BE20](v11);
  v105 = &v88 - v12;
  v13 = type metadata accessor for LeaderboardTimer();
  MEMORY[0x28223BE20](v13);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F50);
  v91 = *(v16 - 8);
  v92 = v16;
  MEMORY[0x28223BE20](v16);
  v89 = &v88 - v17;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F58);
  v18 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = &v88 - v19;
  v20 = type metadata accessor for Leaderboard.LeaderboardType(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24F91F648();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F60);
  MEMORY[0x28223BE20](v27 - 8);
  v100 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v109 = &v88 - v30;
  v31 = type metadata accessor for LeaderboardRow();
  v32 = v31[5];
  v106 = a1;
  sub_24F0C2444(a1 + v32, v22, type metadata accessor for Leaderboard.LeaderboardType);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0);
  if ((*(*(v33 - 8) + 48))(v22, 1, v33) == 1)
  {
    sub_24F0C24AC(v22, type metadata accessor for Leaderboard.LeaderboardType);
    v34 = 1;
    v35 = v109;
  }

  else
  {
    (*(v24 + 32))(v26, v22, v23);
    sub_24F91F5C8();
    if (v36 <= 0.0)
    {
      (*(v24 + 8))(v26, v23);
      v46 = 1;
      v43 = v91;
      v45 = v92;
      v44 = v90;
    }

    else
    {
      *&v125 = 0x72656D6974;
      *(&v125 + 1) = 0xE500000000000000;
      sub_24F92C7F8();
      (*(v24 + 16))(&v15[v13[5]], v26, v23);
      *&v127 = 0;
      v125 = 0u;
      v126 = 0u;
      v37 = v13[8];
      v38 = sub_24F92A6D8();
      (*(*(v38 - 8) + 56))(&v15[v37], 1, 1, v38);
      v39 = v13[9];
      v40 = sub_24F929608();
      (*(*(v40 - 8) + 56))(&v15[v39], 1, 1, v40);
      v15[v13[6]] = 1;
      v41 = &v15[v13[7]];
      *(v41 + 32) = 0;
      *v41 = 0u;
      *(v41 + 16) = 0u;
      sub_24E61DA68(&v125, v41, qword_27F21B590);
      sub_24E768848();
      v42 = v89;
      sub_24F921D38();
      (*(v24 + 8))(v26, v23);
      sub_24F0C24AC(v15, type metadata accessor for LeaderboardTimer);
      v44 = v90;
      v43 = v91;
      v45 = v92;
      (*(v91 + 32))(v90, v42, v92);
      v46 = 0;
    }

    (*(v43 + 56))(v44, v46, 1, v45);
    v35 = v109;
    sub_24E6009C8(v44, v109, &qword_27F238F58);
    v34 = 0;
  }

  v47 = (*(v18 + 56))(v35, v34, 1, v93);
  MEMORY[0x28223BE20](v47);
  v48 = v106;
  MEMORY[0x28223BE20](v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F68);
  sub_24F0C2178();
  v50 = v95;
  sub_24F926EA8();
  sub_24F9258D8();
  v52 = v97;
  v51 = v98;
  v53 = v94;
  (*(v97 + 104))(v94, *MEMORY[0x277CE0A10], v98);
  v54 = sub_24F9259F8();

  (*(v52 + 8))(v53, v51);
  KeyPath = swift_getKeyPath();
  v56 = (v50 + *(v96 + 36));
  *v56 = KeyPath;
  v56[1] = v54;
  sub_24F0C2204();
  v57 = v103;
  sub_24F9268B8();
  sub_24E601704(v50, &qword_27F238F38);
  v58 = swift_getKeyPath();
  v59 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F90) + 36);
  *v59 = v58;
  *(v59 + 8) = 2;
  *(v59 + 16) = 0;
  LOBYTE(v58) = sub_24F925828();
  sub_24F923318();
  v60 = v57 + *(v99 + 36);
  *v60 = v58;
  *(v60 + 8) = v61;
  *(v60 + 16) = v62;
  *(v60 + 24) = v63;
  *(v60 + 32) = v64;
  *(v60 + 40) = 0;
  sub_24F927628();
  sub_24F9242E8();
  v65 = v102;
  sub_24E6009C8(v57, v102, &qword_27F238F40);
  v66 = (v65 + *(v101 + 36));
  v67 = v130;
  v66[4] = v129;
  v66[5] = v67;
  v66[6] = v131;
  v68 = v126;
  *v66 = v125;
  v66[1] = v68;
  v69 = v128;
  v66[2] = v127;
  v66[3] = v69;
  v70 = v105;
  sub_24E6009C8(v65, v105, &qword_27F238F48);
  v71 = sub_24F9249A8();
  v111 = 1;
  v72 = v31[9];
  v103 = *(v48 + v31[8]);
  v104 = v71;
  v73 = *(v48 + v72);
  v74 = v31[11];
  v101 = *(v48 + v31[10]);
  v102 = v73;
  v75 = *(v48 + v74);
  v110 = 1;

  v76 = v100;
  sub_24E60169C(v109, v100, &qword_27F238F60);
  v77 = v107;
  sub_24E60169C(v70, v107, &qword_27F238F48);
  v78 = v108;
  sub_24E60169C(v76, v108, &qword_27F238F60);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F98);
  sub_24E60169C(v77, v78 + *(v79 + 48), &qword_27F238F48);
  v80 = v78 + *(v79 + 64);
  v81 = v103;
  v82 = v104;
  v112 = v104;
  LOBYTE(v113) = 1;
  v84 = v101;
  v83 = v102;
  *(&v113 + 1) = v103;
  *&v114 = v102;
  *(&v114 + 1) = v101;
  *&v115 = 0;
  BYTE8(v115) = 1;
  v116 = v75;
  v85 = v115;
  *(v80 + 32) = v114;
  *(v80 + 48) = v85;
  *(v80 + 64) = v75;
  v86 = v113;
  *v80 = v112;
  *(v80 + 16) = v86;
  sub_24E60169C(&v112, v117, &qword_27F238FA0);
  sub_24E601704(v70, &qword_27F238F48);
  sub_24E601704(v109, &qword_27F238F60);
  v117[0] = v82;
  v117[1] = 0;
  v118 = 1;
  v119 = v81;
  v120 = v83;
  v121 = v84;
  v122 = 0;
  v123 = 1;
  v124 = v75;
  sub_24E601704(v117, &qword_27F238FA0);
  sub_24E601704(v77, &qword_27F238F48);
  return sub_24E601704(v76, &qword_27F238F60);
}

uint64_t sub_24F0C18B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924258();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + 32);
  v9 = *(v8 + 28);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_24F924B38();
  (*(*(v11 - 8) + 104))(&v6[v9], v10, v11);
  *v6 = v7;
  *(v6 + 1) = v7;
  LODWORD(v10) = sub_24F925188();
  sub_24F923658();
  sub_24F0C2444(v6, a2, MEMORY[0x277CDFC08]);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E7F8) + 36);
  v13 = v24;
  *v12 = *&v23[8];
  *(v12 + 16) = v13;
  *(v12 + 32) = v25;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E800);
  *(a2 + *(v14 + 52)) = v10;
  *(a2 + *(v14 + 56)) = 256;
  v15 = sub_24F927618();
  v17 = v16;
  sub_24F0C24AC(v6, MEMORY[0x277CDFC08]);
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E808) + 36));
  *v18 = v15;
  v18[1] = v17;
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E810) + 36);
  v20 = *MEMORY[0x277CE13B8];
  v21 = sub_24F927748();
  return (*(*(v21 - 8) + 104))(a2 + v19, v20, v21);
}

uint64_t sub_24F0C1AD0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LeaderboardRow();
  sub_24E600AEC();

  result = sub_24F925E18();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_24F0C1B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for LeaderboardRow() + 48) + 8))
  {

    v3 = sub_24F926E48();
    result = sub_24F9251C8();
  }

  else
  {
    v3 = 0;
    result = 0;
  }

  *a2 = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24F0C1C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 32);
  sub_24E60169C(a1, v12, &qword_27F213F18);
  v5 = v12[1];
  *a2 = v12[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v13;
  v6 = sub_24F924258();
  *(a2 + 64) = v6;
  *(a2 + 72) = sub_24F0C250C(&qword_27F212868, MEMORY[0x277CDFC08]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a2 + 40));
  v8 = *(v6 + 20);
  v9 = *MEMORY[0x277CE0118];
  v10 = sub_24F924B38();
  result = (*(*(v10 - 8) + 104))(boxed_opaque_existential_1 + v8, v9, v10);
  *boxed_opaque_existential_1 = v4;
  boxed_opaque_existential_1[1] = v4;
  return result;
}

unint64_t sub_24F0C1DC8()
{
  result = qword_27F238E90;
  if (!qword_27F238E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238E90);
  }

  return result;
}

unint64_t sub_24F0C1E88()
{
  result = qword_27F238EC0;
  if (!qword_27F238EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E810);
    sub_24E602068(&qword_27F238EC8, &qword_27F238ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238EC0);
  }

  return result;
}

unint64_t sub_24F0C1F40()
{
  result = qword_27F238EE0;
  if (!qword_27F238EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238EB0);
    sub_24F0C1FF8();
    sub_24E602068(&qword_27F238F00, &qword_27F238ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238EE0);
  }

  return result;
}

unint64_t sub_24F0C1FF8()
{
  result = qword_27F238EE8;
  if (!qword_27F238EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238EA8);
    sub_24F0C20B0();
    sub_24E602068(&qword_27F22E7A8, &qword_27F21CB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238EE8);
  }

  return result;
}

unint64_t sub_24F0C20B0()
{
  result = qword_27F238EF0;
  if (!qword_27F238EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238EA0);
    sub_24E602068(&qword_27F238EF8, &qword_27F238E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238EF0);
  }

  return result;
}

unint64_t sub_24F0C2178()
{
  result = qword_27F238F70;
  if (!qword_27F238F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238F68);
    sub_24F005644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238F70);
  }

  return result;
}

unint64_t sub_24F0C2204()
{
  result = qword_27F238F78;
  if (!qword_27F238F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238F38);
    sub_24E602068(&qword_27F238F80, &qword_27F238F88);
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238F78);
  }

  return result;
}

unint64_t sub_24F0C22F0()
{
  result = qword_27F238FB0;
  if (!qword_27F238FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238FB0);
  }

  return result;
}

uint64_t sub_24F0C2344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Leaderboard.LeaderboardType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F0C23A8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F247240);
    sub_24F0C250C(a2, type metadata accessor for Player);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F0C2444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F0C24AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F0C250C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F0C2574()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238EB0);
  sub_24F0C1F40();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F0C25DC()
{
  result = qword_27F238FD0;
  if (!qword_27F238FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238FD0);
  }

  return result;
}

unint64_t sub_24F0C2634()
{
  result = qword_27F238FD8;
  if (!qword_27F238FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238FD8);
  }

  return result;
}

unint64_t sub_24F0C268C()
{
  result = qword_27F238FE0;
  if (!qword_27F238FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238FE0);
  }

  return result;
}

uint64_t sub_24F0C26E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x526C6C617265766FLL && a2 == 0xEB000000006B6E61 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA6B230 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA6B250 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA6B270 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA459C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

id JSONObject.appStoreColor.getter()
{
  v0 = sub_24F928388();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F928328();
  result = 0;
  if ((v4 & 1) == 0)
  {
    sub_24F928398();
    sub_24F0C2BD4();
    sub_24F928248();
    (*(v1 + 8))(v3, v0);
    if (v8 > 1u)
    {
      if (v8 == 2)
      {
        return sub_24F0C343C();
      }
    }

    else if (v8)
    {
      return sub_24F0C31CC();
    }

    sub_24F928348();
    if (v6)
    {
      sub_24E77ACC8();
      return sub_24F92C398();
    }

    else
    {
      return sub_24F0C2F50();
    }
  }

  return result;
}

unint64_t sub_24F0C2BD4()
{
  result = qword_27F238FE8;
  if (!qword_27F238FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238FE8);
  }

  return result;
}

uint64_t sub_24F0C2C28(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x64656D616ELL;
  if (v2 != 1)
  {
    v4 = 0x63696D616E7964;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 6449010;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x64656D616ELL;
  if (*a2 != 1)
  {
    v8 = 0x63696D616E7964;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6449010;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0C2D1C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0C2DB4()
{
  sub_24F92B218();
}

uint64_t sub_24F0C2E38()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0C2ECC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F0C4160();
  *a1 = result;
  return result;
}

void sub_24F0C2EFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x64656D616ELL;
  if (v2 != 1)
  {
    v5 = 0x63696D616E7964;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6449010;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_24F0C2F50()
{
  v0 = sub_24F928388();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v29 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v29 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  sub_24F928398();
  v13 = sub_24F928308();
  v15 = v14;
  v16 = *(v1 + 8);
  v16(v12, v0);
  if (v15)
  {
    return 0;
  }

  sub_24F928398();
  v17 = sub_24F928308();
  v19 = v18;
  v16(v10, v0);
  if (v19)
  {
    return 0;
  }

  sub_24F928398();
  v20 = sub_24F928308();
  v22 = v21;
  v16(v7, v0);
  if (v22)
  {
    return 0;
  }

  v24 = *&v20;
  sub_24F928398();
  v25 = COERCE_DOUBLE(sub_24F928308());
  v27 = v26;
  v16(v4, v0);
  if (v27)
  {
    v28 = 1.0;
  }

  else
  {
    v28 = v25;
  }

  return [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*&v13 green:*&v17 blue:v24 alpha:v28];
}

id sub_24F0C31CC()
{
  v0 = sub_24F928388();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928398();
  sub_24F0C41AC();
  sub_24F928248();
  v4 = *(v1 + 8);
  v4(v3, v0);
  if (v12 <= 1u)
  {
    if (v12)
    {
      v5 = &selRef_whiteColor;
    }

    else
    {
      v5 = &selRef_blackColor;
    }

    return [objc_opt_self() *v5];
  }

  if (v12 == 2)
  {
    v5 = &selRef_clearColor;
    return [objc_opt_self() *v5];
  }

  sub_24F928398();
  sub_24F0C4200();
  sub_24F928248();
  v4(v3, v0);
  if (v11 != 9)
  {
    return sub_24F0C33E4(v11);
  }

  sub_24F928398();
  sub_24F0C4254();
  sub_24F928248();
  v4(v3, v0);
  if (v10 == 10)
  {
    return 0;
  }

  v7 = sub_24F0C3DC8(v10);
  v8 = v7;
  return v7;
}

id sub_24F0C33E4(char a1)
{
  v1 = [objc_opt_self() *off_27968E898[a1]];

  return v1;
}

uint64_t sub_24F0C343C()
{
  v0 = sub_24F928388();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  v7 = sub_24F928398();
  v8 = JSONObject.appStoreColor.getter(v7);
  v9 = *(v1 + 8);
  v9(v6, v0);
  if (v8)
  {
    v10 = sub_24F928398();
    v11 = JSONObject.appStoreColor.getter(v10);
    v9(v4, v0);
    if (v11)
    {
      sub_24E77ACC8();
      if (sub_24F92C408())
      {
      }

      else
      {
        v12 = v8;
        v13 = v11;
        return sub_24F92C388();
      }
    }
  }

  return v8;
}

unint64_t sub_24F0C3600()
{
  result = qword_27F238FF0;
  if (!qword_27F238FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238FF0);
  }

  return result;
}

uint64_t sub_24F0C3654(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x65526D6574737973;
    v6 = 0x6C426D6574737973;
    if (a1 != 2)
    {
      v6 = 0x724F6D6574737973;
    }

    if (a1)
    {
      v5 = 0x72476D6574737973;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x75506D6574737973;
    v2 = 0x72476D6574737973;
    if (a1 != 7)
    {
      v2 = 0x72426D6574737973;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x65596D6574737973;
    if (a1 != 4)
    {
      v3 = 0x69506D6574737973;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_24F0C37AC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0x7972616974726574;
    v5 = 0x616E726574617571;
    if (a1 != 8)
    {
      v5 = 0x4C746C7561666564;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0x547972616D697270;
    if (a1 != 5)
    {
      v6 = 0x7261646E6F636573;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x746E6954707061;
    v2 = 0xD000000000000015;
    if (a1 == 3)
    {
      v2 = 0xD00000000000001BLL;
    }

    if (a1 == 2)
    {
      v2 = 0xD000000000000013;
    }

    if (a1)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F0C3928(char *a1, char *a2)
{
  if (*&aBlack_1[8 * *a1] == *&aBlack_1[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_24F92CE08();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_24F0C3990()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0C39EC()
{
  sub_24F92B218();
}

uint64_t sub_24F0C3A2C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0C3A84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F0C407C();
  *a1 = result;
  return result;
}

uint64_t sub_24F0C3ADC()
{
  sub_24F92D068();
  sub_24F202FBC();
  return sub_24F92D0B8();
}

uint64_t sub_24F0C3B2C()
{
  sub_24F92D068();
  sub_24F202FBC();
  return sub_24F92D0B8();
}

uint64_t sub_24F0C3B70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F0C40C8();
  *a1 = result;
  return result;
}

uint64_t sub_24F0C3BA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F0C3654(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24F0C3BCC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_24F0C37AC(*a1);
  v5 = v4;
  if (v3 == sub_24F0C37AC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F0C3C54()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F0C37AC(v1);
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0C3CB8()
{
  sub_24F0C37AC(*v0);
  sub_24F92B218();
}

uint64_t sub_24F0C3D0C()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F0C37AC(v1);
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0C3D6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F0C4114();
  *a1 = result;
  return result;
}

unint64_t sub_24F0C3D9C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24F0C37AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24F0C3DC8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      if (a1 == 5)
      {
        if (qword_27F210438 != -1)
        {
          swift_once();
        }

        v1 = &qword_27F22BEB8;
      }

      else
      {
        if (qword_27F210440 != -1)
        {
          swift_once();
        }

        v1 = &qword_27F22BEC0;
      }
    }

    else if (a1 == 7)
    {
      if (qword_27F210448 != -1)
      {
        swift_once();
      }

      v1 = &qword_27F22BEC8;
    }

    else if (a1 == 8)
    {
      if (qword_27F210450 != -1)
      {
        swift_once();
      }

      v1 = &qword_27F22BED0;
    }

    else
    {
      if (qword_27F210458 != -1)
      {
        swift_once();
      }

      v1 = &qword_27F22BED8;
    }
  }

  else if (a1 <= 1u)
  {
    if (a1)
    {
      if (qword_27F210410 != -1)
      {
        swift_once();
      }

      v1 = &qword_27F22BE90;
    }

    else
    {
      if (qword_27F210408 != -1)
      {
        swift_once();
      }

      v1 = &qword_27F22BE88;
    }
  }

  else if (a1 == 2)
  {
    if (qword_27F210418 != -1)
    {
      swift_once();
    }

    v1 = &qword_27F22BE98;
  }

  else if (a1 == 3)
  {
    if (qword_27F210420 != -1)
    {
      swift_once();
    }

    v1 = &qword_27F22BEA0;
  }

  else
  {
    if (qword_27F210428 != -1)
    {
      swift_once();
    }

    v1 = &qword_27F22BEA8;
  }

  return *v1;
}

uint64_t sub_24F0C407C()
{
  v0 = sub_24F92CB88();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24F0C40C8()
{
  v0 = sub_24F92CB88();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24F0C4114()
{
  v0 = sub_24F92CB88();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24F0C4160()
{
  v0 = sub_24F92CB88();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24F0C41AC()
{
  result = qword_27F238FF8;
  if (!qword_27F238FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238FF8);
  }

  return result;
}

unint64_t sub_24F0C4200()
{
  result = qword_27F239000;
  if (!qword_27F239000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239000);
  }

  return result;
}

unint64_t sub_24F0C4254()
{
  result = qword_27F239008;
  if (!qword_27F239008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239008);
  }

  return result;
}

unint64_t sub_24F0C42DC()
{
  result = qword_27F239010;
  if (!qword_27F239010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239010);
  }

  return result;
}

unint64_t sub_24F0C4334()
{
  result = qword_27F239018;
  if (!qword_27F239018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239018);
  }

  return result;
}

unint64_t sub_24F0C438C()
{
  result = qword_27F239020;
  if (!qword_27F239020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239020);
  }

  return result;
}

uint64_t ArcadeOfferLabelPresenter.offerLabelText.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_24F0C442C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[7] = a1;
  v2[8] = a2;

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = v2[10];
    ObjectType = swift_getObjectType();
    v8 = v2[7];
    v9 = v2[8];
    v10 = *(v6 + 8);

    v10(v8, v9, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall ArcadeOfferLabelPresenter.update(ignoringCache:)(Swift::Bool ignoringCache)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = v1[10];
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v4 = v1[7];
    v5 = v1[8];
    v6 = *(v2 + 8);

    v6(v4, v5, ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

uint64_t ArcadeOfferLabelPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[10] = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = v2[10];
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v6 = v2[7];
    v7 = v2[8];
    v8 = *(v4 + 8);

    v8(v6, v7, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void (*ArcadeOfferLabelPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 80);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24F0C4784;
}

void sub_24F0C4784(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 80) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[5];
      v5 = v4[10];
      ObjectType = swift_getObjectType();
      swift_beginAccess();
      v7 = v4[7];
      v8 = v4[8];
      v9 = *(v5 + 8);

      v9(v7, v8, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t ArcadeOfferLabelPresenter.__allocating_init(subscribedText:nonsubscribedText:subscriptionManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = swift_allocObject();
  ArcadeOfferLabelPresenter.init(subscribedText:nonsubscribedText:subscriptionManager:)(a1, a2, a3, a4, a5);
  return v10;
}

void *ArcadeOfferLabelPresenter.init(subscribedText:nonsubscribedText:subscriptionManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v5[7] = 0;
  v5[10] = 0;
  v5[8] = 0;
  swift_unknownObjectWeakInit();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = *&a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock];
  v13 = a5;

  [v12 lock];
  sub_24F213714(v5, sub_24F0C4BE8, v11, v13);
  [v12 unlock];

  v14 = &v13[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[8];
  sub_24EB6CE50(v15, v16);

  sub_24EB6CE70(v15, v16);
  v17 = 4;
  if ((v16 & 0xC0) == 0x80)
  {
    v17 = 2;
  }

  v18 = 5;
  if ((v16 & 0xC0) == 0x80)
  {
    v18 = 3;
  }

  v19 = v5[v18];
  v20 = v5[v17];
  swift_beginAccess();
  v5[7] = v20;
  v5[8] = v19;

  return v5;
}

uint64_t sub_24F0C4ADC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F0C4B14(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = 32;
      if ((v1 & 0xC0) == 0x80)
      {
        v4 = 16;
      }

      v5 = 40;
      if ((v1 & 0xC0) == 0x80)
      {
        v5 = 24;
      }

      v6 = *(Strong + v4);
      v7 = *(Strong + v5);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    sub_24F0C442C(v6, v7);
  }

  return result;
}

uint64_t ArcadeOfferLabelPresenter.deinit()
{
  v1 = *(v0 + 48);
  v2 = *&v1[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock];
  v3 = v1;
  [v2 lock];
  swift_beginAccess();
  sub_24E98A534(0, v0);
  swift_endAccess();
  [v2 unlock];

  sub_24E883630(v0 + 72);
  return v0;
}

uint64_t ArcadeOfferLabelPresenter.__deallocating_deinit()
{
  ArcadeOfferLabelPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F0C4CF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_24F0C4D3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24F0C442C(v1, v2);
}

uint64_t sub_24F0C4D7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 80);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24F0C4DCC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return ArcadeOfferLabelPresenter.view.setter(v2, v1);
}

UIFont __swiftcall FontSource.font(withDesign:compatibleWith:)(UIFontDescriptorSystemDesign withDesign, UITraitCollection compatibleWith)
{
  v3 = v2;
  v6 = sub_24F922378();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F922118();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v14, v3, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == *MEMORY[0x277D22620])
  {
    (*(v11 + 96))(v14, v10);
    v16 = *v14;
    v17 = objc_opt_self();
    v18 = [v17 preferredFontForTextStyle:v16 compatibleWithTraitCollection:compatibleWith.super.isa];
    v19 = [v18 fontDescriptor];
    v20 = [v19 fontDescriptorWithDesign_];

    if (v20)
    {
      v21 = [v17 fontWithDescriptor:v20 size:0.0];

      return v21;
    }
  }

  else
  {
    if (v15 != *MEMORY[0x277D22618])
    {
      v26 = [objc_opt_self() preferredFontForTextStyle_];
      (*(v11 + 8))(v14, v10);
      return v26;
    }

    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    v23 = sub_24F922368();
    v24 = [v23 fontDescriptorWithDesign_];

    if (v24)
    {
      v25 = [objc_opt_self() fontWithDescriptor:v24 size:0.0];

      (*(v7 + 8))(v9, v6);
      return v25;
    }

    sub_24E6C065C();
    v18 = MEMORY[0x253051BF0](v9, compatibleWith.super.isa);
    (*(v7 + 8))(v9, v6);
  }

  return v18;
}

Swift::Void __swiftcall AppStateController.clearWaiting(for:)(GameStoreKit::AdamId a1)
{
  v2 = *(a1.underlyingAdamID._countAndFlagsBits + 8);
  v3[0] = *a1.underlyingAdamID._countAndFlagsBits;
  v3[1] = v2;
  (*(v1 + 72))(v3, 1, a1.underlyingAdamID._object);
}

Swift::Bool __swiftcall AppStateController.isLocalApplication(for:)(GameStoreKit::AdamId a1)
{
  v2 = *(a1.underlyingAdamID._countAndFlagsBits + 8);
  v4[0] = *a1.underlyingAdamID._countAndFlagsBits;
  v4[1] = v2;
  return (*(v1 + 88))(v4, 0, a1.underlyingAdamID._object) & 1;
}

uint64_t dispatch thunk of AppStateController.refreshUpdateRegistry(for:externalVersionId:buyParams:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 80) + **(a6 + 80));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_24E614970;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AppStateController.fetchBetaAppBundleVersion(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 104) + **(a3 + 104));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24EF44694;

  return v9(a1, a2, a3);
}

double sub_24F0C56A8@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B830);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v5 = inited;
  *(inited + 32) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B838);
  v6 = type metadata accessor for CardLeaderboardView.LayoutMetrics.ChartStyle.BarMark(0);
  v7 = *(*(v6 - 1) + 72);
  v8 = *(*(v6 - 1) + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24F93A400;
  v50 = (v8 + 32) & ~v8;
  v44 = v9;
  v10 = v9 + v50;
  if (qword_27F210DA8 != -1)
  {
    swift_once();
  }

  v11 = qword_27F39D340;

  v47 = a2;
  v12 = sub_24EFED180(a2 & 1);
  if (qword_27F210DB0 != -1)
  {
    swift_once();
  }

  v13 = sub_24F9234D8();
  v14 = __swift_project_value_buffer(v13, qword_27F39D348);
  *v10 = 0x4050000000000000;
  *(v10 + 8) = v11;
  *(v10 + 16) = xmmword_24F9B4960;
  *(v10 + 32) = v12;
  v43 = v14;
  v15 = *(*(v13 - 8) + 16);
  v15(v10 + v6[9]);
  *(v10 + v6[10]) = 0x404A000000000000;
  v16 = (v10 + v6[11]);
  __asm { FMOV            V1.2D, #6.0 }

  v42 = _Q1;
  *v16 = xmmword_24F9B4930;
  v16[1] = _Q1;
  v22 = qword_27F210DB8;
  v46 = v11;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_27F39D360;
  v24 = qword_27F210DC0;
  swift_retain_n();
  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_27F39D368;
  v26 = qword_27F210DC8;
  swift_retain_n();
  if (v26 != -1)
  {
    swift_once();
  }

  v27 = v10 + v7;
  v41 = __swift_project_value_buffer(v13, qword_27F39D370);
  *v27 = 0x404C000000000000;
  *(v27 + 8) = v23;
  *(v27 + 16) = xmmword_24F9C7670;
  *(v27 + 32) = v25;
  v28 = v23;
  v29 = v15;
  (v15)(v27 + v6[9], v41, v13);
  *(v27 + v6[10]) = 0x4046000000000000;
  v30 = (v27 + v6[11]);
  *v30 = xmmword_24F9B4930;
  v30[1] = v42;
  *(v5 + 40) = v44;
  *(v5 + 48) = xmmword_24F9C7680;
  *(v5 + 64) = 0x4024000000000000;
  *(v5 + 72) = 3;
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_24F9479A0;
  v31 = v45 + v50;

  v32 = sub_24EFED180(v47 & 1);
  *v31 = 0x4048000000000000;
  *(v31 + 8) = v46;
  *(v31 + 16) = xmmword_24F9B4940;
  *(v31 + 32) = v32;
  (v15)(v45 + v50 + v6[9], v43, v13);
  *(v31 + v6[10]) = 0x4044000000000000;
  v33 = (v45 + v50 + v6[11]);
  __asm { FMOV            V1.2D, #4.0 }

  v51 = _Q1;
  *v33 = xmmword_24F98C8C0;
  v33[1] = _Q1;
  v35 = v31 + v7;
  *v35 = 0x4045000000000000;
  *(v35 + 8) = v28;
  *(v35 + 16) = xmmword_24F9C7670;
  *(v35 + 32) = v25;
  v29(v31 + v7 + v6[9], v41, v13);
  *(v35 + v6[10]) = 0x4041000000000000;
  v36 = (v31 + v7 + v6[11]);
  *v36 = xmmword_24F98C8C0;
  v36[1] = v51;
  v37 = v31 + 2 * v7;
  *v37 = 0x4045000000000000;
  *(v37 + 8) = v28;
  *(v37 + 16) = xmmword_24F9C7670;
  *(v37 + 32) = v25;
  v29(v37 + v6[9], v41, v13);
  *(v37 + v6[10]) = 0x4041000000000000;
  v38 = (v37 + v6[11]);
  *v38 = xmmword_24F98C8C0;
  v38[1] = v51;
  *(v5 + 80) = v45;
  *(v5 + 88) = xmmword_24F9C7690;
  *(v5 + 104) = 0x4024000000000000;
  v39 = sub_24E60E620(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B840);
  swift_arrayDestroy();
  *a3 = v39;
  *(a3 + 8) = 3;
  *(a3 + 16) = 1;
  *(a3 + 17) = a1 & 1;
  *(a3 + 18) = v52;
  *(a3 + 22) = v53;
  *(a3 + 24) = xmmword_24F98C8E0;
  result = 0.05;
  *(a3 + 40) = xmmword_24F98C8F0;
  *(a3 + 56) = 1;
  return result;
}

double PersonalizableModel.makeMSOPersonalizedModel(with:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_24F0C5C5C(unint64_t a1)
{
  v10 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_14:
    v2 = sub_24F92C738();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x253052270](v3, a1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_11:
            __break(1u);
LABEL_12:
            v7 = v10;
            goto LABEL_16;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_14;
          }

          v4 = *(a1 + 8 * v3 + 32);

          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_11;
          }
        }

        v6 = *(v4 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles);

        sub_24EA0B130(v6);
        ++v3;
        if (v5 == v2)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_16:
  v8 = sub_24F45DB90(v7);

  return v8;
}

uint64_t PersonalizableModel.needsClientPersonalization.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(&v5);
  if (v5)
  {
    v2 = sub_24F92CE08();

    v3 = v2 ^ 1;
  }

  else
  {

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t PersonalizableModel.unpersonalized.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  (*(a2 + 24))(&v10);
  if (v11)
  {
    return sub_24E612C80(&v10, a3);
  }

  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v9 = *(*(a1 - 8) + 16);

  return v9(boxed_opaque_existential_1, v3, a1);
}

uint64_t PersonalizableModel.personalized(with:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  (*(a3 + 16))(&v23, a2, a3);
  if (v23 == 1)
  {
    v17 = v8;
    v18 = v9;
    v19 = v10;
    v20 = v11;
    v12 = *(a3 + 32);
    sub_24EBDFD34(v8, v9);
    v12(&v21, &v17, a2, a3);
    sub_24EBDFDB8(v17, v18);
    if (v22)
    {
      return sub_24E612C80(&v21, a4);
    }
  }

  v14 = *(a3 + 8);
  a4[3] = a2;
  a4[4] = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v16 = *(*(a2 - 8) + 16);

  return v16(boxed_opaque_existential_1, v4, a2);
}

GameStoreKit::PersonalizationStyle_optional __swiftcall PersonalizationStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

uint64_t PersonalizationStyle.rawValue.getter()
{
  if (*v0)
  {
    return 7304045;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_24F0C60BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7304045;
  }

  else
  {
    v3 = 1701736302;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7304045;
  }

  else
  {
    v5 = 1701736302;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F0C6154()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0C61C8()
{
  sub_24F92B218();
}

uint64_t sub_24F0C6228()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0C6298@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

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

void sub_24F0C62F8(uint64_t *a1@<X8>)
{
  v2 = 1701736302;
  if (*v1)
  {
    v2 = 7304045;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_24F0C632C()
{
  result = qword_27F239028;
  if (!qword_27F239028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239028);
  }

  return result;
}

uint64_t sub_24F0C63E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B28);
  v1 = sub_24F92A878();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93FC20;
  v6 = (v5 + v4);
  v17 = v0[1];
  *v6 = 7041889;
  v6[1] = 0xE300000000000000;
  v6[2] = v17;
  v7 = *(v2 + 104);
  (v7)(v6, *MEMORY[0x277D22448], v1);
  v8 = (v6 + v3);
  v16 = v0[2];
  *v8 = 0xD000000000000013;
  v8[1] = 0x800000024FA6B370;
  v8[2] = v16;
  v7();
  v9 = (v6 + 2 * v3);
  v10 = v0[3];
  *v9 = 0x6B6F54616964656DLL;
  v9[1] = 0xEA00000000006E65;
  v9[2] = v10;
  v7();
  sub_24E615E00((v0 + 4), v6 + 3 * v3);
  (v7)(v6 + 3 * v3, *MEMORY[0x277D22460], v1);
  v11 = v17;
  v12 = v16;
  v13 = v10;

  sub_24EA0B7B0(v14);
  return v5;
}

uint64_t sub_24F0C65E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_24F0C662C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double Annotation.id.getter@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1 + 112, v5, qword_27F22B2E0);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t Annotation.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Annotation.summary.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Annotation.leadingText.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t Annotation.init(id:title:summary:items:items_V3:shouldAlwaysPresentExpanded:linkAction:expandAction:leadingArtwork:leadingText:prefersSmallLeadingArtwork:expandedArtwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16)
{
  v21 = a16;
  v22 = a15;
  v48 = a5;
  v49 = a14;
  v46 = a4;
  v47 = a13;
  v44 = a3;
  v45 = a12;
  v42 = a2;
  v43 = a11;
  v41 = a10;
  v23 = sub_24F91F6B8();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v52, &qword_27F235830);
  if (*(&v53 + 1))
  {
    v27 = v53;
    *(a9 + 112) = v52;
    *(a9 + 128) = v27;
    *(a9 + 144) = v54;
  }

  else
  {
    sub_24F91F6A8();
    v28 = sub_24F91F668();
    v40 = a15;
    v29 = a8;
    v30 = v28;
    v39 = a6;
    v32 = v31;
    (*(v24 + 8))(v26, v23);
    v50 = v30;
    v51 = v32;
    a8 = v29;
    v22 = v40;
    v21 = a16;
    a6 = v39;
    sub_24F92C7F8();
    sub_24E601704(&v52, &qword_27F235830);
  }

  result = sub_24E601704(a1, &qword_27F235830);
  v34 = v44;
  *a9 = v42;
  *(a9 + 8) = v34;
  v35 = v48;
  *(a9 + 16) = v46;
  *(a9 + 24) = v35;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8 & 1;
  v36 = v43;
  *(a9 + 56) = v41;
  *(a9 + 64) = v36;
  v37 = v47;
  *(a9 + 72) = v45;
  *(a9 + 80) = v37;
  *(a9 + 88) = v49;
  *(a9 + 96) = v22 & 1;
  *(a9 + 104) = v21;
  return result;
}

uint64_t Annotation.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v75 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v71 - v5;
  v99 = sub_24F9285B8();
  v82 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v79 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F91F6B8();
  v78 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v74 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v72 = &v71 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v71 = &v71 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v71 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v71 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v71 - v24;
  v81 = a1;
  sub_24F928398();
  v26 = sub_24F928348();
  if (v27)
  {
    v84 = v26;
    v85 = v27;
  }

  else
  {
    sub_24F91F6A8();
    v28 = sub_24F91F668();
    v30 = v29;
    (*(v78 + 8))(v9, v7);
    v84 = v28;
    v85 = v30;
  }

  sub_24F92C7F8();
  v31 = *(v11 + 8);
  v32 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v25, v10);
  v33 = v31;
  v97[0] = v86;
  v97[1] = v87;
  v98 = v88;
  v34 = v81;
  sub_24F928398();
  v35 = sub_24F928348();
  v37 = v36;
  v33(v23, v10);
  v38 = v83;
  if (v37)
  {
    v89[0] = v35;
    v89[1] = v37;
    sub_24F928398();
    v39 = sub_24F928348();
    v41 = v40;
    v33(v20, v10);
    v89[2] = v39;
    v89[3] = v41;
    sub_24F928398();
    v42 = *(v82 + 16);
    v43 = v38;
    v78 = v82 + 16;
    v77 = v42;
    v42(v79, v38, v99);
    type metadata accessor for AnnotationItem();
    sub_24F0C830C(&qword_27F239030, type metadata accessor for AnnotationItem);
    v89[4] = sub_24F92B698();
    v44 = v71;
    sub_24F928398();
    v45 = v73;
    sub_24F9282B8();
    v46 = v45;
    v33(v44, v10);
    v47 = sub_24F92AC28();
    v48 = *(v47 - 8);
    v49 = (*(v48 + 48))(v46, 1, v47);
    if (v49 == 1)
    {
      sub_24E601704(v46, &qword_27F2213B0);
      v50 = MEMORY[0x277D84F90];
    }

    else
    {
      MEMORY[0x28223BE20](v49);
      v71 = v10;
      v54 = v46;
      *(&v71 - 2) = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239038);
      v55 = v80;
      v50 = sub_24F92ABB8();
      v80 = v55;
      v34 = v81;
      v56 = v54;
      v10 = v71;
      (*(v48 + 8))(v56, v47);
    }

    v89[5] = v50;
    v57 = v72;
    sub_24F928398();
    v58 = sub_24F928278();
    v33(v57, v10);
    v90 = v58 & 1;
    type metadata accessor for Action();
    sub_24F928398();
    v59 = static Action.tryToMakeInstance(byDeserializing:using:)(v20, v43);
    v33(v20, v10);
    v91 = v59;
    sub_24F928398();
    v60 = static Action.tryToMakeInstance(byDeserializing:using:)(v20, v43);
    v33(v20, v10);
    v92 = v60;
    type metadata accessor for Artwork();
    sub_24F928398();
    v76 = v32;
    v73 = v33;
    v61 = v79;
    v62 = v10;
    v77(v79, v43, v99);
    v81 = sub_24F0C830C(&qword_27F219660, type metadata accessor for Artwork);
    sub_24F929548();
    sub_24F928398();
    v63 = sub_24F928348();
    v64 = v34;
    v66 = v65;
    v67 = v73;
    (v73)(v20, v10);
    v93 = v63;
    v94 = v66;
    v68 = v74;
    sub_24F928398();
    LOBYTE(v63) = sub_24F928278();
    v67(v68, v10);
    v95 = v63 & 1;
    sub_24F928398();
    v69 = v83;
    v70 = v99;
    v77(v61, v83, v99);
    sub_24F929548();
    v67(v64, v62);
    v96 = v86;
    sub_24EA4AD18(v89, v75);
    (*(v82 + 8))(v69, v70);
    return sub_24EA4AD74(v89);
  }

  else
  {
    v51 = sub_24F92AC38();
    sub_24F0C830C(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v52 = 0x656C746974;
    v52[1] = 0xE500000000000000;
    v52[2] = &type metadata for Annotation;
    (*(*(v51 - 8) + 104))(v52, *MEMORY[0x277D22530], v51);
    swift_willThrow();
    v33(v34, v10);
    (*(v82 + 8))(v38, v99);
    return sub_24E601704(v97, qword_27F22B2E0);
  }
}

uint64_t sub_24F0C74E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  boxed_opaque_existential_1 = a2;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  v120 = v5;
  v121 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v103 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v104 = &v102 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v107 = &v102 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v111 = &v102 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v112 = &v102 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v114 = &v102 - v18;
  MEMORY[0x28223BE20](v17);
  v115 = &v102 - v19;
  v20 = sub_24F928388();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v102 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v105 = &v102 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v106 = &v102 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v109 = &v102 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v108 = &v102 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v110 = &v102 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v102 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v102 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = (&v102 - v41);
  MEMORY[0x28223BE20](v40);
  v44 = &v102 - v43;
  v119 = a1;
  sub_24F928398();
  v45 = sub_24F928348();
  v47 = v46;
  v118 = v21;
  v49 = v21[1];
  v48 = (v21 + 1);
  v50 = v44;
  v51 = v20;
  v116 = v49;
  result = (v49)(v50, v20);
  if (!v47)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v113 = a3;
  if (v45 == 0x656C62616B6E696CLL && v47 == 0xEC00000074786554 || (sub_24F92CE08() & 1) != 0)
  {
    v112 = v48;

    (v118[2])(v42, v119, v20);
    v53 = v120;
    v54 = v121;
    v119 = v51;
    v55 = *(v121 + 16);
    v56 = v115;
    v55(v115, boxed_opaque_existential_1, v120);
    v57 = type metadata accessor for LinkableTextAnnotationItem(0);
    v58 = v113;
    v111 = v57;
    v113[3] = v57;
    *(v58 + 32) = sub_24F0C830C(&qword_27F239070, type metadata accessor for LinkableTextAnnotationItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
    sub_24F91F6A8();
    v118 = v42;
    sub_24F928398();
    v59 = v114;
    v55(v114, v56, v53);
    type metadata accessor for LinkableText();
    swift_allocObject();
    v60 = v122;
    v61 = LinkableText.init(deserializing:using:)(v39, v59);
    if (v60)
    {
      (*(v54 + 8))(v56, v53);
      v116(v118, v119);
      v62 = sub_24F91F6B8();
      (*(*(v62 - 8) + 8))(boxed_opaque_existential_1, v62);
      v63 = v60;
LABEL_7:

      result = __swift_deallocate_boxed_opaque_existential_2(v58);
      *(v58 + 32) = 0;
      *v58 = 0u;
      *(v58 + 16) = 0u;
      return result;
    }

    v64 = v61;
    (*(v54 + 8))(v56, v53);
    result = (v116)(v118, v119);
    *(boxed_opaque_existential_1 + *(v111 + 5)) = v64;
    return result;
  }

  v65 = v121;
  if (v45 == 0x6E6F74747562 && v47 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    (v118[2])(v36, v119, v20);
    v66 = v112;
    (*(v65 + 16))(v112, boxed_opaque_existential_1, v120);
    v67 = type metadata accessor for ButtonAnnotationItem(0);
    v68 = v113;
    v113[3] = v67;
    *(v68 + 32) = sub_24F0C830C(&qword_27F239068, type metadata accessor for ButtonAnnotationItem);
    v69 = __swift_allocate_boxed_opaque_existential_1(v68);
    v70 = v122;
    result = ButtonAnnotationItem.init(deserializing:using:)(v36, v66, v69);
    if (v70)
    {

      result = __swift_deallocate_boxed_opaque_existential_2(v68);
      *(v68 + 32) = 0;
      *v68 = 0u;
      *(v68 + 16) = 0u;
    }

    return result;
  }

  v71 = v120;
  if (v45 == 0x7269615074786574 && v47 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    v72 = v110;
    (v118[2])(v110, v119, v20);
    v73 = v111;
    (*(v65 + 16))(v111, boxed_opaque_existential_1, v71);
    v74 = type metadata accessor for TextPairAnnotationItem(0);
    v75 = v113;
    v113[3] = v74;
    *(v75 + 32) = sub_24F0C830C(&qword_27F239060, type metadata accessor for TextPairAnnotationItem);
    v76 = __swift_allocate_boxed_opaque_existential_1(v75);
    v77 = v122;
    result = TextPairAnnotationItem.init(deserializing:using:)(v72, v73, v76);
    if (!v77)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v45 == 0x726563617073 && v47 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    v78 = v108;
    (v118[2])(v108, v119, v20);
    v79 = type metadata accessor for SpacerAnnotationItem(0);
    v80 = v113;
    v113[3] = v79;
    v80[4] = sub_24F0C830C(&qword_27F239058, type metadata accessor for SpacerAnnotationItem);
    v81 = __swift_allocate_boxed_opaque_existential_1(v80);
    sub_24F91F6A8();
    v82 = v109;
    sub_24F928398();
    sub_24EFF916C();
    sub_24F928208();
    v83 = v116;
    v116(v82, v20);
    result = v83(v78, v20);
    *(v81 + *(v79 + 20)) = v123;
    return result;
  }

  if (v45 == 0xD000000000000011 && 0x800000024FA6B3D0 == v47 || (sub_24F92CE08() & 1) != 0)
  {

    v84 = v106;
    (v118[2])(v106, v119, v20);
    v85 = v107;
    (*(v65 + 16))(v107, boxed_opaque_existential_1, v71);
    v86 = type metadata accessor for TextEncapsulationAnnotationItem(0);
    v75 = v113;
    v113[3] = v86;
    *(v75 + 32) = sub_24F0C830C(&qword_27F239050, type metadata accessor for TextEncapsulationAnnotationItem);
    v87 = __swift_allocate_boxed_opaque_existential_1(v75);
    v77 = v122;
    result = TextEncapsulationAnnotationItem.init(deserializing:using:)(v84, v85, v87);
    if (!v77)
    {
      return result;
    }

LABEL_19:

    result = __swift_deallocate_boxed_opaque_existential_2(v75);
    *(v75 + 32) = 0;
    *v75 = 0u;
    *(v75 + 16) = 0u;
    return result;
  }

  if (v45 == 0x6B726F77747261 && v47 == 0xE700000000000000)
  {

    v88 = v105;
  }

  else
  {
    v89 = sub_24F92CE08();

    v88 = v105;
    if ((v89 & 1) == 0)
    {
      v101 = v113;
      v113[4] = 0;
      *v101 = 0u;
      *(v101 + 1) = 0u;
      return result;
    }
  }

  v90 = v119;
  v91 = v118[2];
  v119 = v20;
  v91(v88, v90, v20);
  v92 = *(v65 + 16);
  v93 = v104;
  v92(v104, boxed_opaque_existential_1, v71);
  v94 = type metadata accessor for ArtworkAnnotationItem(0);
  v58 = v113;
  boxed_opaque_existential_1 = v94;
  v113[3] = v94;
  *(v58 + 32) = sub_24F0C830C(&qword_27F239048, type metadata accessor for ArtworkAnnotationItem);
  v118 = __swift_allocate_boxed_opaque_existential_1(v58);
  sub_24F91F6A8();
  type metadata accessor for Artwork();
  v95 = v102;
  sub_24F928398();
  v96 = v103;
  v92(v103, v93, v71);
  v97 = v122;
  v98 = Artwork.__allocating_init(deserializing:using:)(v95, v96);
  if (v97)
  {
    (*(v121 + 8))(v93, v71);
    v116(v105, v119);
    v99 = sub_24F91F6B8();
    (*(*(v99 - 8) + 8))(v118, v99);
    v63 = v97;
    goto LABEL_7;
  }

  v100 = v98;
  (*(v121 + 8))(v93, v71);
  result = (v116)(v105, v119);
  *(v118 + *(boxed_opaque_existential_1 + 5)) = v100;
  return result;
}

double Annotation.clickSender.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_24F0C81D8()
{
  result = qword_27F239040;
  if (!qword_27F239040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239040);
  }

  return result;
}

double sub_24F0C822C@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1 + 112, v5, qword_27F22B2E0);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double sub_24F0C829C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1 + 112, v5, qword_27F22B2E0);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_24F0C830C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F0C8354(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x65526D6574737973;
  if (a1 <= 3u)
  {
    v4 = 0x6C426D6574737973;
    v5 = 0xEA00000000006575;
    if (a1 != 2)
    {
      v4 = 0x724F6D6574737973;
      v5 = 0xEC00000065676E61;
    }

    v8 = 0x72476D6574737973;
    v9 = 0xEB000000006E6565;
    if (!a1)
    {
      v8 = 0x65526D6574737973;
      v9 = 0xE900000000000064;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = 0x75506D6574737973;
    v5 = 0xEC000000656C7072;
    v6 = 0x72476D6574737973;
    v7 = 0xEA00000000007961;
    if (a1 != 7)
    {
      v6 = 0x72426D6574737973;
      v7 = 0xEB000000006E776FLL;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x65596D6574737973;
    v9 = 0xEC000000776F6C6CLL;
    if (a1 != 4)
    {
      v8 = 0x69506D6574737973;
      v9 = 0xEA00000000006B6ELL;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0xEB000000006E6565;
        if (v11 != 0x72476D6574737973)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      goto LABEL_40;
    }

    if (a2 == 2)
    {
      v13 = 0x6C426D6574737973;
      v14 = 25973;
LABEL_31:
      v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      if (v11 != v13)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v15 = 0x724F6D6574737973;
    v16 = 1701277281;
LABEL_37:
    v2 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v11 != v15)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v2 = 0xEA00000000006B6ELL;
      if (v11 != 0x69506D6574737973)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v15 = 0x65596D6574737973;
    v16 = 2003790956;
    goto LABEL_37;
  }

  if (a2 == 6)
  {
    v15 = 0x75506D6574737973;
    v16 = 1701605490;
    goto LABEL_37;
  }

  if (a2 == 7)
  {
    v13 = 0x72476D6574737973;
    v14 = 31073;
    goto LABEL_31;
  }

  v3 = 0x72426D6574737973;
  v2 = 0xEB000000006E776FLL;
LABEL_40:
  if (v11 != v3)
  {
LABEL_44:
    v17 = sub_24F92CE08();
    goto LABEL_45;
  }

LABEL_41:
  if (v12 != v2)
  {
    goto LABEL_44;
  }

  v17 = 1;
LABEL_45:

  return v17 & 1;
}

uint64_t sub_24F0C8648(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 1802658148;
    }

    else
    {
      v5 = 0x746867696CLL;
    }

    if (v4 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6574696877;
    }

    else
    {
      v5 = 0x6974616D6F747561;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE900000000000063;
    }
  }

  v7 = 0xE400000000000000;
  v8 = 1802658148;
  if (a2 != 2)
  {
    v8 = 0x746867696CLL;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x6574696877;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0C8768(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7265746E6563;
    }

    else
    {
      v3 = 1952867692;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x7468676972;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x656966697473756ALL;
    }

    else
    {
      v3 = 0x657A696C61636F6CLL;
    }

    v4 = 0xE900000000000064;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x7265746E6563;
    }

    else
    {
      v8 = 1952867692;
    }

    if (a2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v3 != v8)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0x656966697473756ALL;
    if (a2 != 3)
    {
      v5 = 0x657A696C61636F6CLL;
    }

    if (a2 == 2)
    {
      v6 = 0x7468676972;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE900000000000064;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  if (v4 != v7)
  {
LABEL_34:
    v9 = sub_24F92CE08();
    goto LABEL_35;
  }

  v9 = 1;
LABEL_35:

  return v9 & 1;
}

uint64_t sub_24F0C88E4(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 2u)
  {
    v2 = 0xE800000000000000;
    v3 = 0xE700000000000000;
    v6 = 0x656C6369747261;
    if (a1 != 1)
    {
      v6 = 0x6E6F6974706163;
      v3 = 0xE700000000000000;
    }

    v4 = a1 == 0;
    if (a1)
    {
      v5 = v6;
    }

    else
    {
      v5 = 0x647261646E617473;
    }
  }

  else if (a1 > 4u)
  {
    v2 = 0x800000024FA43CA0;
    v3 = 0x800000024FA43D70;
    v4 = a1 == 5;
    if (a1 == 5)
    {
      v5 = 0xD00000000000001BLL;
    }

    else
    {
      v5 = 0xD000000000000011;
    }
  }

  else
  {
    v2 = 0x800000024FA43D50;
    v3 = 0x800000024FA43BB0;
    v4 = a1 == 3;
    if (a1 == 3)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xD000000000000012;
    }
  }

  if (v4)
  {
    v7 = v2;
  }

  else
  {
    v7 = v3;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v12 = 0xE700000000000000;
      if (a2 == 1)
      {
        if (v5 != 0x656C6369747261)
        {
          goto LABEL_38;
        }
      }

      else if (v5 != 0x6E6F6974706163)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v5 != 0x647261646E617473)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    if (a2 > 4u)
    {
      v8 = 0x800000024FA43CA0;
      v9 = 0x800000024FA43D70;
      v10 = a2 == 5;
      if (a2 == 5)
      {
        v11 = 0xD00000000000001BLL;
      }

      else
      {
        v11 = 0xD000000000000011;
      }
    }

    else
    {
      v8 = 0x800000024FA43D50;
      v9 = 0x800000024FA43BB0;
      v10 = a2 == 3;
      if (a2 == 3)
      {
        v11 = 0xD000000000000010;
      }

      else
      {
        v11 = 0xD000000000000012;
      }
    }

    if (v10)
    {
      v12 = v8;
    }

    else
    {
      v12 = v9;
    }

    if (v5 != v11)
    {
      goto LABEL_38;
    }
  }

  if (v7 != v12)
  {
LABEL_38:
    v13 = sub_24F92CE08();
    goto LABEL_39;
  }

  v13 = 1;
LABEL_39:

  return v13 & 1;
}

uint64_t sub_24F0C8AE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7368801;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656461637261;
    }

    else
    {
      v4 = 0x7041656461637261;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE900000000000070;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7275507070416E69;
    }

    else
    {
      v4 = 7368801;
    }

    if (v3)
    {
      v5 = 0xED00006573616863;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x656461637261;
  if (a2 != 2)
  {
    v8 = 0x7041656461637261;
    v7 = 0xE900000000000070;
  }

  if (a2)
  {
    v2 = 0x7275507070416E69;
    v6 = 0xED00006573616863;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0C8C34(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x657461647075;
    }

    else
    {
      v4 = 0x6C6C6174736E69;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x65726F74736572;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x68636E75616CLL;
  }

  else
  {
    v4 = 0x7369747265766461;
    v3 = 0xE900000000000065;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x657461647075;
    }

    else
    {
      v9 = 0x6C6C6174736E69;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x68636E75616CLL;
    if (a2 != 3)
    {
      v6 = 0x7369747265766461;
      v5 = 0xE900000000000065;
    }

    if (a2 == 2)
    {
      v7 = 0x65726F74736572;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_24F92CE08();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_24F0C8DB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E6564646968;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xE500000000000000;
      v4 = 0x6E776F6873;
    }

    else
    {
      v4 = 0xD000000000000011;
      v5 = 0x800000024FA43CF0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0x6E6564646968;
    }

    if (v3)
    {
      v5 = 0x800000024FA43CD0;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0x6E776F6873;
  v7 = 0x800000024FA43CF0;
  if (a2 == 2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  v8 = 0x800000024FA43CD0;
  if (a2)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0C8EE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = a1;
  v5 = 0xD000000000000019;
  v6 = 0xE700000000000000;
  if (a1 == 5)
  {
    v6 = 0x800000024FA43830;
  }

  else
  {
    v5 = 0x79616C7265766FLL;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656C626164616572;
  if (a1 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x800000024FA43810;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1701736302;
  if (a1 != 1)
  {
    v10 = 0x647261646E617473;
    v9 = 0xE800000000000000;
  }

  if (!a1)
  {
    v10 = 0x6974616D6F747561;
    v9 = 0xE900000000000063;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE400000000000000;
        if (v11 != 1701736302)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x647261646E617473)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x800000024FA43830;
        if (v11 != 0xD000000000000019)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x79616C7265766FLL)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x656C626164616572)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0xD000000000000012;
    v2 = 0x800000024FA43810;
  }

  if (v11 != v3)
  {
LABEL_37:
    v13 = sub_24F92CE08();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

uint64_t sub_24F0C90F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "nowPlayingFeatureEntryPoints";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "gmented_nav_2024A";
      v4 = 0xD000000000000012;
    }

    else
    {
      v5 = "bootstrap_v2_2024C";
      v4 = 0xD000000000000019;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000021;
    }

    else
    {
      v4 = 0xD00000000000001DLL;
    }

    if (v3)
    {
      v5 = "force_display_lockup_ordinals";
    }

    else
    {
      v5 = "nowPlayingFeatureEntryPoints";
    }
  }

  if (a2 > 1u)
  {
    v2 = "gmented_nav_2024A";
    v6 = "bootstrap_v2_2024C";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000012;
    }

    else
    {
      v8 = 0xD000000000000019;
    }
  }

  else
  {
    v6 = "force_display_lockup_ordinals";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000021;
    }

    else
    {
      v8 = 0xD00000000000001DLL;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_24F92CE08();
  }

  return v10 & 1;
}

uint64_t sub_24F0C9224(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000013;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x7265764F656D6167;
    }

    else
    {
      v4 = 0x736572746C6F6DLL;
    }

    if (v3)
    {
      v5 = 0xED0000495579616CLL;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x800000024FA43510;
    v4 = 0xD000000000000018;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v4 = 0xD00000000000001CLL;
    }

    if (v3 == 3)
    {
      v5 = 0x800000024FA43530;
    }

    else
    {
      v5 = 0x800000024FA43550;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7265764F656D6167;
    }

    else
    {
      v9 = 0x736572746C6F6DLL;
    }

    if (a2)
    {
      v8 = 0xED0000495579616CLL;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v6 = 0x800000024FA43550;
    if (a2 == 3)
    {
      v6 = 0x800000024FA43530;
    }

    else
    {
      v2 = 0xD00000000000001CLL;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000018;
    }

    else
    {
      v7 = v2;
    }

    if (a2 == 2)
    {
      v8 = 0x800000024FA43510;
    }

    else
    {
      v8 = v6;
    }

    if (v4 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v5 != v8)
  {
LABEL_37:
    v10 = sub_24F92CE08();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_24F0C93B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000746567;
  v3 = 0xD000000000000018;
  v4 = a1;
  if (a1 <= 4u)
  {
    v15 = 0x800000024FA43390;
    v16 = 0xD000000000000029;
    v17 = 0x800000024FA433C0;
    v18 = 0xD000000000000031;
    if (a1 != 3)
    {
      v18 = 0xD00000000000002DLL;
      v17 = 0x800000024FA43400;
    }

    if (a1 != 2)
    {
      v16 = v18;
      v15 = v17;
    }

    v19 = 0x800000024FA43370;
    v20 = 0xD00000000000001CLL;
    if (!a1)
    {
      v20 = 0x6469577961646F74;
      v19 = 0xEB00000000746567;
    }

    if (a1 <= 1u)
    {
      v13 = v20;
    }

    else
    {
      v13 = v16;
    }

    if (v4 <= 1)
    {
      v14 = v19;
    }

    else
    {
      v14 = v15;
    }
  }

  else
  {
    v5 = 0x800000024FA434A0;
    v6 = 0x800000024FA434C0;
    if (a1 == 9)
    {
      v7 = 0xD000000000000019;
    }

    else
    {
      v7 = 0xD000000000000018;
    }

    if (a1 != 9)
    {
      v6 = 0x800000024FA434E0;
    }

    if (a1 == 8)
    {
      v8 = 0xD000000000000018;
    }

    else
    {
      v8 = v7;
    }

    if (a1 != 8)
    {
      v5 = v6;
    }

    v9 = 0x800000024FA43430;
    v10 = 0xD000000000000020;
    v11 = 0x800000024FA43460;
    v12 = 0xD00000000000001CLL;
    if (a1 != 6)
    {
      v12 = 0xD000000000000010;
      v11 = 0x800000024FA43480;
    }

    if (a1 != 5)
    {
      v10 = v12;
      v9 = v11;
    }

    if (a1 <= 7u)
    {
      v13 = v10;
    }

    else
    {
      v13 = v8;
    }

    if (v4 <= 7)
    {
      v14 = v9;
    }

    else
    {
      v14 = v5;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v21 = "today_tab_largest_ax_support";
LABEL_53:
        v2 = (v21 - 32) | 0x8000000000000000;
        v3 = 0xD00000000000001CLL;
        goto LABEL_57;
      }

      v3 = 0x6469577961646F74;
    }

    else if (a2 == 2)
    {
      v2 = 0x800000024FA43390;
      v3 = 0xD000000000000029;
    }

    else if (a2 == 3)
    {
      v2 = 0x800000024FA433C0;
      v3 = 0xD000000000000031;
    }

    else
    {
      v2 = 0x800000024FA43400;
      v3 = 0xD00000000000002DLL;
    }
  }

  else
  {
    if (a2 > 7u)
    {
      if (a2 == 8)
      {
        v22 = "mini_today_cards_product";
      }

      else
      {
        if (a2 == 9)
        {
          v2 = 0x800000024FA434C0;
          v3 = 0xD000000000000019;
          goto LABEL_57;
        }

        v22 = "mini_today_cards_article";
      }

      v2 = (v22 - 32) | 0x8000000000000000;
      goto LABEL_57;
    }

    if (a2 != 5)
    {
      if (a2 != 6)
      {
        v2 = 0x800000024FA43480;
        v3 = 0xD000000000000010;
        goto LABEL_57;
      }

      v21 = "arcade_hero_video_page_timer";
      goto LABEL_53;
    }

    v2 = 0x800000024FA43430;
    v3 = 0xD000000000000020;
  }

LABEL_57:
  if (v13 == v3 && v14 == v2)
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_24F92CE08();
  }

  return v23 & 1;
}

uint64_t sub_24F0C96A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6778480;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1667851624;
    }

    else
    {
      v4 = 7496556;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1734701162;
    }

    else
    {
      v4 = 6778480;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE400000000000000;
  v8 = 1667851624;
  if (a2 != 2)
  {
    v8 = 7496556;
    v7 = 0xE300000000000000;
  }

  if (a2)
  {
    v2 = 1734701162;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0C97AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  if (a1 <= 3u)
  {
    v4 = 0x800000024FA43300;
    v5 = 0xD000000000000016;
    if (a1 != 2)
    {
      v5 = 0x646E756F72;
      v4 = 0xE500000000000000;
    }

    v8 = 0x526465646E756F72;
    v9 = 0xEB00000000746365;
    if (!a1)
    {
      v8 = 0x6669636570736E75;
      v9 = 0xEB00000000646569;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = 0xE300000000000000;
    v5 = 7364969;
    v6 = 0xE600000000000000;
    v7 = 0x746365527674;
    if (a1 != 7)
    {
      v7 = 0x656E726F64616E75;
      v6 = 0xE900000000000064;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0xD000000000000010;
    v9 = 0x800000024FA43320;
    if (a1 != 4)
    {
      v8 = 1819044208;
      v9 = 0xE400000000000000;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x800000024FA43300;
        if (v11 != 0xD000000000000016)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x646E756F72)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2)
    {
      v2 = 0xEB00000000746365;
      if (v11 != 0x526465646E756F72)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0x800000024FA43320;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v11 != 1819044208)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2 == 6)
    {
      v2 = 0xE300000000000000;
      if (v11 != 7364969)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    if (a2 == 7)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x746365527674)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v3 = 0x656E726F64616E75;
    v2 = 0xE900000000000064;
  }

  if (v11 != v3)
  {
LABEL_45:
    v13 = sub_24F92CE08();
    goto LABEL_46;
  }

LABEL_42:
  if (v12 != v2)
  {
    goto LABEL_45;
  }

  v13 = 1;
LABEL_46:

  return v13 & 1;
}

uint64_t sub_24F0C9A58(char a1, char a2)
{
  if (qword_24F9C7A30[a1] == qword_24F9C7A30[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_24F92CE08();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_24F0C9AC0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000061696465;
  v3 = 0x4D746375646F7270;
  v4 = a1;
  v5 = 0x800000024FA432A0;
  v6 = 1701736302;
  if (a1 == 5)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v7 = 0x6365537961646F74;
  v8 = 0xEC0000006E6F6974;
  if (a1 == 3)
  {
    v7 = 0x4D746375646F7270;
    v8 = 0xEC00000061696465;
  }

  if (a1 <= 4u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (a1 > 4u)
  {
    v8 = v5;
  }

  v10 = 0x800000024FA43220;
  v11 = 0xD000000000000027;
  v12 = 0x800000024FA43250;
  v13 = 0xD00000000000001CLL;
  if (v4 != 1)
  {
    v13 = 0xD000000000000018;
    v12 = 0x800000024FA43270;
  }

  if (v4)
  {
    v11 = v13;
    v10 = v12;
  }

  if (v4 <= 2)
  {
    v14 = v11;
  }

  else
  {
    v14 = v9;
  }

  if (v4 <= 2)
  {
    v15 = v10;
  }

  else
  {
    v15 = v8;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x800000024FA43220;
      if (v14 != 0xD000000000000027)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    if (a2 == 1)
    {
      v2 = 0x800000024FA43250;
      if (v14 != 0xD00000000000001CLL)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v2 = 0x800000024FA43270;
    v3 = 0xD000000000000018;
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x800000024FA432A0;
        if (v14 != 0xD000000000000015)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v14 != 1701736302)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }

    if (a2 != 3)
    {
      v2 = 0xEC0000006E6F6974;
      if (v14 != 0x6365537961646F74)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }
  }

  if (v14 != v3)
  {
LABEL_40:
    v16 = sub_24F92CE08();
    goto LABEL_41;
  }

LABEL_37:
  if (v15 != v2)
  {
    goto LABEL_40;
  }

  v16 = 1;
LABEL_41:

  return v16 & 1;
}

uint64_t sub_24F0C9CBC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x726F6C6F43656E6FLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C6F436565726874;
    }

    else
    {
      v4 = 0x6F6C6F4372756F66;
    }

    if (v3 == 2)
    {
      v5 = 0xEA0000000000726FLL;
    }

    else
    {
      v5 = 0xE900000000000072;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x726F6C6F436F7774;
    }

    else
    {
      v4 = 0x726F6C6F43656E6FLL;
    }

    v5 = 0xE800000000000000;
  }

  v6 = 0x6C6F436565726874;
  v7 = 0xEA0000000000726FLL;
  if (a2 != 2)
  {
    v6 = 0x6F6C6F4372756F66;
    v7 = 0xE900000000000072;
  }

  if (a2)
  {
    v2 = 0x726F6C6F436F7774;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE800000000000000;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_24F92CE08();
  }

  return v10 & 1;
}

uint64_t sub_24F0C9E10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x7461526F54706174;
  v4 = a1;
  v5 = 0xD000000000000014;
  v6 = 0x800000024FA431C0;
  if (a1 != 5)
  {
    v5 = 0x6567617373656DLL;
    v6 = 0xE700000000000000;
  }

  v7 = 0x676E697461526F6ELL;
  v8 = 0xE900000000000073;
  if (a1 != 3)
  {
    v7 = 0x52746375646F7270;
    v8 = 0xED00007765697665;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
  }

  else
  {
    v7 = v5;
  }

  v9 = 0x6974615272617473;
  v10 = 0xEB0000000073676ELL;
  if (a1 != 1)
  {
    v9 = 0xD000000000000014;
    v10 = 0x800000024FA431A0;
  }

  if (!a1)
  {
    v9 = 0x7461526F54706174;
    v10 = 0xE900000000000065;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEB0000000073676ELL;
        if (v11 != 0x6974615272617473)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0x800000024FA431A0;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x800000024FA431C0;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x6567617373656DLL)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xE900000000000073;
      if (v11 != 0x676E697461526F6ELL)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0x52746375646F7270;
    v2 = 0xED00007765697665;
  }

  if (v11 != v3)
  {
LABEL_37:
    v13 = sub_24F92CE08();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

uint64_t sub_24F0CA050(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746553746F6ELL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6E4974706FLL;
    }

    else
    {
      v4 = 0x64696C61766E69;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x74754F74706FLL;
    }

    else
    {
      v4 = 0x746553746F6ELL;
    }

    v5 = 0xE600000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x6E4974706FLL;
  if (a2 != 2)
  {
    v7 = 0x64696C61766E69;
    v6 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x74754F74706FLL;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE600000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_24F92CE08();
  }

  return v10 & 1;
}

uint64_t sub_24F0CA180(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xEF68746469576C61;
  if (a1 != 2)
  {
    v4 = 0xEE00657A69536C61;
  }

  v5 = 0xD000000000000010;
  if (a1)
  {
    v3 = 0x800000024FA43100;
  }

  else
  {
    v5 = 0x6574756C6F736261;
  }

  if (a1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E6F697463617266;
  }

  if (v2 <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v9 = 0xEF68746469576C61;
    }

    else
    {
      v9 = 0xEE00657A69536C61;
    }

    if (v6 != 0x6E6F697463617266)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (a2)
    {
      v8 = 0xD000000000000010;
    }

    else
    {
      v8 = 0x6574756C6F736261;
    }

    if (a2)
    {
      v9 = 0x800000024FA43100;
    }

    else
    {
      v9 = 0xE800000000000000;
    }

    if (v6 != v8)
    {
      goto LABEL_27;
    }
  }

  if (v7 != v9)
  {
LABEL_27:
    v10 = sub_24F92CE08();
    goto LABEL_28;
  }

  v10 = 1;
LABEL_28:

  return v10 & 1;
}

uint64_t sub_24F0CA2F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007364;
  v3 = 0xD000000000000010;
  v4 = 0x416564756C636E69;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = 0x416564756C636E69;
    }

    if (v5 == 2)
    {
      v7 = 0x800000024FA430D0;
    }

    else
    {
      v7 = 0xEA00000000007364;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (v5)
    {
      v7 = 0x800000024FA430B0;
    }

    else
    {
      v7 = 0x800000024FA43090;
    }
  }

  if (a2 == 2)
  {
    v4 = 0xD000000000000017;
    v2 = 0x800000024FA430D0;
  }

  v8 = 0x800000024FA430B0;
  if (a2)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v8 = 0x800000024FA43090;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CA424(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 5459817;
    }

    else
    {
      v3 = 7105633;
    }

    v2 = 0xE300000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0xE500000000000000;
    v3 = 0x534F63616DLL;
  }

  else if (a1 == 3)
  {
    v2 = 0xE400000000000000;
    v3 = 1397716596;
  }

  else
  {
    v2 = 0xE800000000000000;
    v3 = 0x534F6E6F69736976;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 5459817;
    }

    else
    {
      v8 = 7105633;
    }

    v7 = 0xE300000000000000;
    if (v3 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0xE400000000000000;
    v5 = 1397716596;
    if (a2 != 3)
    {
      v5 = 0x534F6E6F69736976;
      v4 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v6 = 0x534F63616DLL;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = v4;
    }

    if (v3 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v2 != v7)
  {
LABEL_28:
    v9 = sub_24F92CE08();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_24F0CA580(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000676ELL;
  v3 = 0x696461654C706F74;
  v4 = a1;
  v5 = 0x654C6D6F74746F62;
  v6 = 0xED0000676E696461;
  if (a1 != 6)
  {
    v5 = 0x676E696461656CLL;
    v6 = 0xE700000000000000;
  }

  v7 = 0x72546D6F74746F62;
  v8 = 0xEE00676E696C6961;
  if (a1 != 4)
  {
    v7 = 0x6D6F74746F62;
    v8 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6C69617254706F74;
  v10 = 0xEB00000000676E69;
  if (a1 != 2)
  {
    v9 = 0x676E696C69617274;
    v10 = 0xE800000000000000;
  }

  v11 = 0xE300000000000000;
  v12 = 7368564;
  if (!a1)
  {
    v12 = 0x696461654C706F74;
    v11 = 0xEA0000000000676ELL;
  }

  if (a1 <= 1u)
  {
    v9 = v12;
    v10 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xED0000676E696461;
        if (v13 != 0x654C6D6F74746F62)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v13 != 0x676E696461656CLL)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEE00676E696C6961;
      if (v13 != 0x72546D6F74746F62)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x6D6F74746F62)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEB00000000676E69;
        if (v13 != 0x6C69617254706F74)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0xE800000000000000;
      v3 = 0x676E696C69617274;
    }

    else if (a2)
    {
      v2 = 0xE300000000000000;
      if (v13 != 7368564)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_24F92CE08();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_24F0CA810(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x74726F6873;
    }

    else
    {
      v4 = 0x746C7561666564;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D756964656DLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1735290732;
  }

  else
  {
    v4 = 0x6169766572626261;
    v3 = 0xEB00000000646574;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x74726F6873;
    }

    else
    {
      v9 = 0x746C7561666564;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1735290732;
    if (a2 != 3)
    {
      v6 = 0x6169766572626261;
      v5 = 0xEB00000000646574;
    }

    if (a2 == 2)
    {
      v7 = 0x6D756964656DLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_24F92CE08();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_24F0CA98C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "newToMajorOSVersion";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "achievementDetails";
      v4 = 0xD000000000000010;
    }

    else
    {
      v5 = "playNowLargeCard";
      v4 = 0xD000000000000013;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0xD000000000000014;
    }

    if (v3)
    {
      v5 = "achievementsListGrid";
    }

    else
    {
      v5 = "newToMajorOSVersion";
    }
  }

  if (a2 > 1u)
  {
    v2 = "achievementDetails";
    v6 = "playNowLargeCard";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000010;
    }

    else
    {
      v8 = 0xD000000000000013;
    }
  }

  else
  {
    v6 = "achievementsListGrid";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000012;
    }

    else
    {
      v8 = 0xD000000000000014;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_24F92CE08();
  }

  return v10 & 1;
}

uint64_t sub_24F0CAAB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657461;
  v3 = 0x44657361656C6572;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 1701667182;
    }

    else
    {
      v5 = 0x79726F6765746163;
    }

    if (v4 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x616470557473616CLL;
    }

    else
    {
      v5 = 0x44657361656C6572;
    }

    if (v4)
    {
      v6 = 0xEB00000000646574;
    }

    else
    {
      v6 = 0xEB00000000657461;
    }
  }

  v7 = 0xE400000000000000;
  v8 = 1701667182;
  if (a2 != 2)
  {
    v8 = 0x79726F6765746163;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = 0x616470557473616CLL;
    v2 = 0xEB00000000646574;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CAC00(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7105633;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x73756C50656E696ELL;
    }

    else
    {
      v4 = 0x6C5065766C657774;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEA00000000007375;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x73756C5072756F66;
    }

    else
    {
      v4 = 7105633;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x73756C50656E696ELL;
  if (a2 != 2)
  {
    v8 = 0x6C5065766C657774;
    v7 = 0xEA00000000007375;
  }

  if (a2)
  {
    v2 = 0x73756C5072756F66;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CAD44(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000065726F7453;
  v3 = 0x7070416F5477656ELL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x686374615777656ELL;
      v6 = 0xEF676E6972696150;
    }

    else
    {
      v6 = 0x800000024FA42E60;
      v5 = 0xD000000000000013;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0x7070416F5477656ELL;
    }

    if (v4)
    {
      v6 = 0x800000024FA42E30;
    }

    else
    {
      v6 = 0xED000065726F7453;
    }
  }

  v7 = 0x686374615777656ELL;
  v8 = 0x800000024FA42E60;
  if (a2 == 2)
  {
    v8 = 0xEF676E6972696150;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (a2)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000024FA42E30;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CAEB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006563696F68;
  v3 = 0x4373726F74696465;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x72656469766964;
  if (a1 != 5)
  {
    v6 = 0x6867696C68676968;
    v5 = 0xEF74786554646574;
  }

  v7 = 0x6974615272617473;
  v8 = 0xEA0000000000676ELL;
  if (a1 != 3)
  {
    v7 = 0x6562614C74786574;
    v8 = 0xE90000000000006CLL;
  }

  if (a1 > 4u)
  {
    v9 = v5;
  }

  else
  {
    v6 = v7;
    v9 = v8;
  }

  v10 = 0xD000000000000011;
  v11 = 0x800000024FA42DD0;
  v12 = 0x7469576567616D69;
  v13 = 0xEE006C6562614C68;
  if (a1 == 1)
  {
    v12 = 0x4373726F74696465;
    v13 = 0xED00006563696F68;
  }

  if (a1)
  {
    v10 = v12;
    v11 = v13;
  }

  if (a1 <= 2u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (v4 <= 2)
  {
    v15 = v11;
  }

  else
  {
    v15 = v9;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x800000024FA42DD0;
      if (v14 != 0xD000000000000011)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    if (a2 != 1)
    {
      v2 = 0xEE006C6562614C68;
      if (v14 != 0x7469576567616D69)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE700000000000000;
        if (v14 != 0x72656469766964)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xEF74786554646574;
        if (v14 != 0x6867696C68676968)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xEA0000000000676ELL;
      if (v14 != 0x6974615272617473)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0x6562614C74786574;
    v2 = 0xE90000000000006CLL;
  }

  if (v14 != v3)
  {
LABEL_37:
    v16 = sub_24F92CE08();
    goto LABEL_38;
  }

LABEL_34:
  if (v15 != v2)
  {
    goto LABEL_37;
  }

  v16 = 1;
LABEL_38:

  return v16 & 1;
}

uint64_t sub_24F0CB114(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x65706F6C65766564;
  v5 = 0xE900000000000072;
  v6 = 0xE500000000000000;
  v7 = 0x6369736162;
  if (a1 != 4)
  {
    v7 = 0x746E657645707061;
    v6 = 0xED000079726F7453;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x697463656C6C6F63;
  v9 = 0xEA00000000006E6FLL;
  if (a1 != 1)
  {
    v8 = 0x79726F7473;
    v9 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x79726F6765746163;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE900000000000072;
      if (v10 != 0x65706F6C65766564)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6369736162)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xED000079726F7453;
      if (v10 != 0x746E657645707061)
      {
LABEL_34:
        v13 = sub_24F92CE08();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEA00000000006E6FLL;
      if (v10 != 0x697463656C6C6F63)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x79726F7473)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x79726F6765746163)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_24F0CB314(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x676E696C69617274;
  if (a1 != 5)
  {
    v6 = 0x654C726142706F74;
    v5 = 0xED0000676E696461;
  }

  v7 = 0x617069636E697270;
  v8 = 0xE90000000000006CLL;
  if (a1 != 3)
  {
    v7 = 0x7254726142706F74;
    v8 = 0xEE00676E696C6961;
  }

  if (a1 > 4u)
  {
    v9 = v5;
  }

  else
  {
    v6 = v7;
    v9 = v8;
  }

  v10 = 0xD000000000000012;
  v11 = 0x800000024FA42CC0;
  if (a1 != 1)
  {
    v10 = 0x636341656772616CLL;
    v11 = 0xEE0079726F737365;
  }

  if (!a1)
  {
    v10 = 0x6974616D6F747561;
    v11 = 0xE900000000000063;
  }

  if (a1 <= 2u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 2)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x800000024FA42CC0;
        if (v12 != 0xD000000000000012)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xEE0079726F737365;
        if (v12 != 0x636341656772616CLL)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE800000000000000;
        if (v12 != 0x676E696C69617274)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xED0000676E696461;
        if (v12 != 0x654C726142706F74)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xE90000000000006CLL;
      if (v12 != 0x617069636E697270)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0x7254726142706F74;
    v2 = 0xEE00676E696C6961;
  }

  if (v12 != v3)
  {
LABEL_37:
    v14 = sub_24F92CE08();
    goto LABEL_38;
  }

LABEL_34:
  if (v13 != v2)
  {
    goto LABEL_37;
  }

  v14 = 1;
LABEL_38:

  return v14 & 1;
}